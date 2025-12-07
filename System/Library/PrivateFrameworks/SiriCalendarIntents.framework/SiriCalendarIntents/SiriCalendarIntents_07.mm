uint64_t sub_2665E5D28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v128 = a3;
  v123 = a2;
  EventDayComparator = type metadata accessor for FindEventDayComparator(0);
  OUTLINED_FUNCTION_18_2();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_1_0();
  v110 = (v6 - v5);
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007ECD8, &unk_266676C30);
  OUTLINED_FUNCTION_18_2();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_10_5();
  v108 = v8 - v9;
  OUTLINED_FUNCTION_12_7();
  MEMORY[0x28223BE20](v10);
  v107 = &v100 - v11;
  v106 = _s17DayEventGroupingsV8GroupingVMa(0);
  OUTLINED_FUNCTION_3_0();
  v105 = v12;
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_1_0();
  v112 = v15 - v14;
  v118 = sub_266668E68();
  OUTLINED_FUNCTION_3_0();
  v17 = v16;
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_1_0();
  v117 = v20 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007D140, &qword_26666F140);
  MEMORY[0x28223BE20](v21 - 8);
  OUTLINED_FUNCTION_10_5();
  v24 = v22 - v23;
  MEMORY[0x28223BE20](v25);
  v27 = &v100 - v26;
  v28 = sub_266668D38();
  OUTLINED_FUNCTION_3_0();
  v30 = v29;
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_10_5();
  v116 = v32 - v33;
  OUTLINED_FUNCTION_12_7();
  MEMORY[0x28223BE20](v34);
  v115 = &v100 - v35;
  OUTLINED_FUNCTION_12_7();
  MEMORY[0x28223BE20](v36);
  v119 = &v100 - v37;
  OUTLINED_FUNCTION_12_7();
  MEMORY[0x28223BE20](v38);
  v40 = &v100 - v39;
  v41 = sub_2665C485C();
  v121 = v28;
  v124 = v30;
  v104 = v41;
  v102 = a1;
  if (!v41)
  {
    v44 = MEMORY[0x277D84F98];
LABEL_40:
    v27 = *(v44 + 16);
    v73 = MEMORY[0x277D84F90];
    if (v27)
    {
      v135 = MEMORY[0x277D84F90];
      sub_266633B60(0, v27, 0);
      v73 = v135;
      v76 = sub_2666395B0(v44);
      v77 = 0;
      v78 = v44 + 64;
      v125 = (v30 + 16);
      v126 = v44 + 64;
      v122 = (v30 + 32);
      v119 = v74;
      v120 = v27;
      v118 = v44 + 72;
      while ((v76 & 0x8000000000000000) == 0 && v76 < 1 << *(v44 + 32))
      {
        if ((*(v78 + 8 * (v76 >> 6)) & (1 << v76)) == 0)
        {
          goto LABEL_64;
        }

        if (*(v44 + 36) != v74)
        {
          goto LABEL_65;
        }

        v131 = 1 << v76;
        v132 = v76 >> 6;
        v129 = v77;
        v130 = v74;
        LODWORD(v127) = v75;
        v79 = *(v44 + 48) + *(v30 + 72) * v76;
        v80 = *(v30 + 16);
        v133 = v73;
        v81 = v107;
        v80(v107, v79, v28);
        v82 = *(*(v44 + 56) + 8 * v76);
        v83 = *(v30 + 32);
        v84 = v108;
        v83(v108, v81, v28);
        *(v84 + *(v109 + 48)) = v82;
        v85 = v28;
        v86 = v112;
        v80(v112, v84, v85);
        v134 = v82;
        v87 = v110;
        v80(&v110[*(EventDayComparator + 20)], v84, v85);
        *v87 = 0;

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007E548, &qword_266674B08);
        sub_2665E8124();
        sub_2665E8188();
        v73 = v133;
        v88 = sub_26666C438();
        sub_2665E81E0(v87, type metadata accessor for FindEventDayComparator);
        *(v86 + *(v106 + 20)) = v88;
        sub_26656CAEC(v84, &qword_28007ECD8, &unk_266676C30);
        v135 = v73;
        v90 = *(v73 + 16);
        v89 = *(v73 + 24);
        v27 = v90 + 1;
        if (v90 >= v89 >> 1)
        {
          sub_266633B60(v89 > 1, v90 + 1, 1);
          v86 = v112;
          v73 = v135;
        }

        *(v73 + 16) = v27;
        sub_2665E8238(v86, v73 + ((*(v105 + 80) + 32) & ~*(v105 + 80)) + *(v105 + 72) * v90);
        v91 = 1 << *(v44 + 32);
        v78 = v126;
        if (v76 >= v91)
        {
          goto LABEL_66;
        }

        v92 = *(v126 + 8 * v132);
        if ((v92 & v131) == 0)
        {
          goto LABEL_67;
        }

        if (*(v44 + 36) != v130)
        {
          goto LABEL_68;
        }

        v93 = v92 & (-2 << (v76 & 0x3F));
        if (v93)
        {
          v91 = __clz(__rbit64(v93)) | v76 & 0x7FFFFFFFFFFFFFC0;
          v28 = v121;
          v30 = v124;
        }

        else
        {
          v94 = v132 << 6;
          v95 = v132 + 1;
          v96 = (v118 + 8 * v132);
          v28 = v121;
          v30 = v124;
          while (v95 < (v91 + 63) >> 6)
          {
            v98 = *v96++;
            v97 = v98;
            v94 += 64;
            ++v95;
            if (v98)
            {
              sub_2665E829C(v76, v130, v127 & 1);
              v91 = __clz(__rbit64(v97)) + v94;
              goto LABEL_58;
            }
          }

          sub_2665E829C(v76, v130, v127 & 1);
        }

LABEL_58:
        v75 = 0;
        v77 = v129 + 1;
        v76 = v91;
        v74 = v119;
        v27 = v120;
        if (v129 + 1 == v120)
        {
          goto LABEL_59;
        }
      }

      goto LABEL_63;
    }

LABEL_59:
    v135 = v73;

    sub_2665E6F78(&v135);

    sub_26656CAEC(v128, &qword_28007D140, &qword_26666F140);
    sub_26656CAEC(v123, &qword_28007D140, &qword_26666F140);

    return v135;
  }

  v42 = 0;
  v103 = a1 & 0xC000000000000001;
  v101 = a1 & 0xFFFFFFFFFFFFFF8;
  v100 = a1 + 32;
  v133 = v30 + 16;
  v125 = (v30 + 32);
  v43 = (v30 + 8);
  v114 = (v17 + 8);
  v44 = MEMORY[0x277D84F98];
  v127 = v27;
  v120 = v24;
  while (1)
  {
    if (v103)
    {
      v45 = MEMORY[0x266788B60](v42, v102);
    }

    else
    {
      if (v42 >= *(v101 + 16))
      {
        goto LABEL_70;
      }

      v45 = *(v100 + 8 * v42);
    }

    v122 = v45;
    v46 = __OFADD__(v42, 1);
    v47 = v42 + 1;
    if (v46)
    {
      goto LABEL_69;
    }

    v113 = v47;
    sub_2665ECAC4();
    v49 = v48;
    v130 = *(v48 + 16);
    if (v130)
    {
      break;
    }

LABEL_37:

    v42 = v113;
    if (v113 == v104)
    {
      goto LABEL_40;
    }
  }

  v50 = 0;
  v129 = v48 + ((*(v30 + 80) + 32) & ~*(v30 + 80));
  v126 = v48;
  while (v50 < *(v49 + 16))
  {
    v131 = *(v30 + 72);
    v132 = *(v30 + 16);
    (v132)(v40, v129 + v131 * v50, v28);
    sub_26655E020(v128, v27);
    if (__swift_getEnumTagSinglePayload(v27, 1, v28) == 1)
    {
      sub_26656CAEC(v27, &qword_28007D140, &qword_26666F140);
    }

    else
    {
      v51 = v119;
      (*v125)(v119, v27, v28);
      v52 = sub_266668C98();
      v53 = *v43;
      v54 = v51;
      v49 = v126;
      (*v43)(v54, v28);
      if (v52)
      {
        v53(v40, v28);
        goto LABEL_35;
      }
    }

    sub_26655E020(v123, v24);
    if (__swift_getEnumTagSinglePayload(v24, 1, v28) == 1)
    {
      sub_26656CAEC(v24, &qword_28007D140, &qword_26666F140);
LABEL_19:
      if (*(v44 + 16) && (v60 = sub_2665C5488(v40), (v61 & 1) != 0))
      {
        v135 = *(*(v44 + 56) + 8 * v60);
      }

      else
      {
        v135 = MEMORY[0x277D84F90];
      }

      v27 = v122;
      MEMORY[0x2667887C0]();
      if (*((v135 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v135 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_26666C4B8();
      }

      sub_26666C4E8();
      swift_isUniquelyReferenced_nonNull_native();
      v134 = v44;
      v62 = sub_2665C5488(v40);
      if (__OFADD__(*(v44 + 16), (v63 & 1) == 0))
      {
        goto LABEL_61;
      }

      v64 = v62;
      v27 = v63;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007ECE0, &qword_266676C40);
      if (sub_26666C908())
      {
        v65 = sub_2665C5488(v40);
        v28 = v121;
        if ((v27 & 1) != (v66 & 1))
        {
          goto LABEL_71;
        }

        v64 = v65;
      }

      else
      {
        v28 = v121;
      }

      v44 = v134;
      if (v27)
      {

        v67 = OUTLINED_FUNCTION_4_28();
        v68(v67);
      }

      else
      {
        *(v134 + 8 * (v64 >> 6) + 64) |= 1 << v64;
        (v132)(*(v44 + 48) + v64 * v131, v40, v28);
        v69 = OUTLINED_FUNCTION_4_28();
        v70(v69);
        v71 = *(v44 + 16);
        v46 = __OFADD__(v71, 1);
        v72 = v71 + 1;
        if (v46)
        {
          goto LABEL_62;
        }

        *(v44 + 16) = v72;
      }

      v30 = v124;
      v24 = v120;
LABEL_35:
      v27 = v127;
      goto LABEL_36;
    }

    v55 = v115;
    (*v125)(v115, v24, v28);
    v56 = v117;
    sub_266668E28();
    v57 = v116;
    sub_266668DA8();
    (*v114)(v56, v118);
    LOBYTE(v56) = sub_266668CA8();
    v58 = *v43;
    (*v43)(v57, v28);
    v59 = v55;
    v49 = v126;
    v58(v59, v28);
    if ((v56 & 1) == 0)
    {
      goto LABEL_19;
    }

    v58(v40, v28);
    v27 = v127;
    v30 = v124;
LABEL_36:
    if (v130 == ++v50)
    {
      goto LABEL_37;
    }
  }

  __break(1u);
LABEL_61:
  __break(1u);
LABEL_62:
  __break(1u);
LABEL_63:
  __break(1u);
LABEL_64:
  __break(1u);
LABEL_65:
  __break(1u);
LABEL_66:
  __break(1u);
LABEL_67:
  __break(1u);
LABEL_68:
  __break(1u);
LABEL_69:
  __break(1u);
LABEL_70:
  __break(1u);
LABEL_71:
  sub_26666CB08();
  __break(1u);

  __break(1u);
  return result;
}

uint64_t sub_2665E693C@<X0>(uint64_t a1@<X0>, void *a2@<X2>, uint64_t a3@<X8>)
{
  v7 = sub_266668D38();
  OUTLINED_FUNCTION_3_0();
  v9 = v8;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_1_0();
  v13 = v12 - v11;
  (*(v9 + 16))(v12 - v11, a1, v7);
  _s17DayEventGroupingsV8GroupingVMa(0);
  sub_2665C24BC();
  if (v3)
  {
    result = (*(v9 + 8))(v13, v7);
    *a2 = v3;
  }

  else
  {
    v16 = v14;
    (*(v9 + 32))(a3, v13, v7);
    result = type metadata accessor for Snippet.EventGroup(0);
    *(a3 + *(result + 20)) = v16;
  }

  return result;
}

uint64_t sub_2665E6AA4(uint64_t a1, uint64_t a2)
{
  if ((sub_266668CD8() & 1) == 0)
  {
    return 0;
  }

  v4 = *(_s17DayEventGroupingsV8GroupingVMa(0) + 20);
  v5 = *(a1 + v4);
  v6 = *(a2 + v4);

  return sub_2665E6D54(v5, v6);
}

uint64_t sub_2665E6B04(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  if ((sub_2665E6B74(a1, a3) & 1) == 0)
  {
    return 0;
  }

  return sub_2665E6D54(a2, a4);
}

uint64_t sub_2665E6B74(uint64_t a1, uint64_t a2)
{
  v4 = _s17DayEventGroupingsV8GroupingVMa(0);
  v5 = MEMORY[0x28223BE20](v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v10 = &v18 - v9;
  v11 = *(a1 + 16);
  if (v11 != *(a2 + 16))
  {
LABEL_11:
    v16 = 0;
    return v16 & 1;
  }

  if (v11 && a1 != a2)
  {
    v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
    v13 = a1 + v12;
    v14 = a2 + v12;
    v15 = *(v8 + 72);
    while (1)
    {
      sub_2665E6F14(v13, v10);
      sub_2665E6F14(v14, v7);
      if ((sub_266668CD8() & 1) == 0)
      {
        break;
      }

      v16 = sub_2665E6D54(*&v10[*(v4 + 20)], *&v7[*(v4 + 20)]);
      sub_2665E81E0(v7, _s17DayEventGroupingsV8GroupingVMa);
      sub_2665E81E0(v10, _s17DayEventGroupingsV8GroupingVMa);
      if (v16)
      {
        v14 += v15;
        v13 += v15;
        if (--v11)
        {
          continue;
        }
      }

      return v16 & 1;
    }

    sub_2665E81E0(v7, _s17DayEventGroupingsV8GroupingVMa);
    sub_2665E81E0(v10, _s17DayEventGroupingsV8GroupingVMa);
    goto LABEL_11;
  }

  v16 = 1;
  return v16 & 1;
}

uint64_t sub_2665E6D54(unint64_t a1, unint64_t a2)
{
  v4 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_36;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_26666C768())
  {
    if (a2 >> 62)
    {
      result = sub_26666C768();
    }

    else
    {
      result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (i != result)
    {
      v20 = 0;
      return v20 & 1;
    }

    if (!i)
    {
      goto LABEL_31;
    }

    v7 = a1 & 0xFFFFFFFFFFFFFF8;
    v8 = (a1 & 0xFFFFFFFFFFFFFF8) + 32;
    if ((a1 & 0x8000000000000000) != 0)
    {
      v7 = a1;
    }

    if (v4)
    {
      v8 = v7;
    }

    v9 = a2 & 0xFFFFFFFFFFFFFF8;
    v10 = (a2 & 0xFFFFFFFFFFFFFF8) + 32;
    v21 = a2 & 0xFFFFFFFFFFFFFF8;
    if ((a2 & 0x8000000000000000) != 0)
    {
      v9 = a2;
    }

    if (a2 >> 62)
    {
      v10 = v9;
    }

    if (v8 == v10)
    {
LABEL_31:
      v20 = 1;
      return v20 & 1;
    }

    if (i < 0)
    {
      break;
    }

    v4 = sub_26656CC50();
    v11 = a2 & 0xC000000000000001;
    v12 = 4;
    v13 = a2;
    while (1)
    {
      v14 = v12 - 4;
      v15 = v12 - 3;
      if (__OFADD__(v12 - 4, 1))
      {
        break;
      }

      if ((a1 & 0xC000000000000001) != 0)
      {
        v16 = MEMORY[0x266788B60](v12 - 4, a1);
      }

      else
      {
        if (v14 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_34;
        }

        v16 = *(a1 + 8 * v12);
      }

      v17 = v16;
      if (v11)
      {
        v18 = MEMORY[0x266788B60](v12 - 4, a2);
      }

      else
      {
        if (v14 >= *(v21 + 16))
        {
          goto LABEL_35;
        }

        v18 = *(a2 + 8 * v12);
      }

      v19 = v18;
      v20 = sub_26666C678();

      if (v20)
      {
        ++v12;
        a2 = v13;
        if (v15 != i)
        {
          continue;
        }
      }

      return v20 & 1;
    }

    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    ;
  }

  __break(1u);
  return result;
}

uint64_t sub_2665E6F14(uint64_t a1, uint64_t a2)
{
  v4 = _s17DayEventGroupingsV8GroupingVMa(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2665E6F78(uint64_t *a1)
{
  v2 = *(_s17DayEventGroupingsV8GroupingVMa(0) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_26655E0A8(v3);
    v3 = v4;
  }

  v5 = *(v3 + 16);
  v7[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v7[1] = v5;
  result = sub_2665E7020(v7);
  *a1 = v3;
  return result;
}

uint64_t sub_2665E7020(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_26666CA98();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        _s17DayEventGroupingsV8GroupingVMa(0);
        v6 = sub_26666C4D8();
        *(v6 + 16) = v5;
      }

      v7 = *(_s17DayEventGroupingsV8GroupingVMa(0) - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_2665E7360(v8, v9, a1, v4);
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
    return sub_2665E7150(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_2665E7150(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v34 = _s17DayEventGroupingsV8GroupingVMa(0);
  v8 = MEMORY[0x28223BE20](v34);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v26 - v12;
  result = MEMORY[0x28223BE20](v11);
  v17 = &v26 - v16;
  v28 = a2;
  if (a3 != a2)
  {
    v18 = *a4;
    v19 = *(v15 + 72);
    v20 = *a4 + v19 * (a3 - 1);
    v21 = -v19;
    v22 = a1 - a3;
    v33 = v18;
    v27 = v19;
    v23 = v18 + v19 * a3;
    while (2)
    {
      v31 = v20;
      v32 = a3;
      v29 = v23;
      v30 = v22;
      do
      {
        sub_2665E6F14(v23, v17);
        sub_2665E6F14(v20, v13);
        v24 = sub_266668CA8();
        sub_2665E81E0(v13, _s17DayEventGroupingsV8GroupingVMa);
        result = sub_2665E81E0(v17, _s17DayEventGroupingsV8GroupingVMa);
        if ((v24 & 1) == 0)
        {
          break;
        }

        if (!v33)
        {
          __break(1u);
          return result;
        }

        sub_2665E8238(v23, v10);
        swift_arrayInitWithTakeFrontToBack();
        result = sub_2665E8238(v10, v20);
        v20 += v21;
        v23 += v21;
      }

      while (!__CFADD__(v22++, 1));
      a3 = v32 + 1;
      v20 = v31 + v27;
      v22 = v30 - 1;
      v23 = v29 + v27;
      if (v32 + 1 != v28)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

void sub_2665E7360(uint64_t *a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v6 = v4;
  v98 = a1;
  v112 = _s17DayEventGroupingsV8GroupingVMa(0);
  v107 = *(v112 - 8);
  v9 = MEMORY[0x28223BE20](v112);
  v102 = &v95 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v111 = &v95 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v113 = &v95 - v14;
  MEMORY[0x28223BE20](v13);
  v16 = &v95 - v15;
  v109 = a3;
  v17 = a3[1];
  if (v17 < 1)
  {
    v19 = MEMORY[0x277D84F90];
LABEL_101:
    v5 = *v98;
    if (!*v98)
    {
      goto LABEL_142;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_103:
      v89 = v19 + 16;
      v90 = *(v19 + 2);
      for (i = v19; v90 >= 2; v19 = i)
      {
        if (!*v109)
        {
          goto LABEL_139;
        }

        v91 = &v19[16 * v90];
        v92 = *v91;
        v19 = &v89[2 * v90];
        v93 = *(v19 + 1);
        sub_2665E7BD0(*v109 + *(v107 + 72) * *v91, *v109 + *(v107 + 72) * *v19, *v109 + *(v107 + 72) * v93, v5);
        if (v6)
        {
          break;
        }

        if (v93 < v92)
        {
          goto LABEL_127;
        }

        if (v90 - 2 >= *v89)
        {
          goto LABEL_128;
        }

        *v91 = v92;
        *(v91 + 1) = v93;
        v94 = *v89 - v90;
        if (*v89 < v90)
        {
          goto LABEL_129;
        }

        v90 = *v89 - 1;
        sub_26655DB10(v19 + 16, v94, v19);
        *v89 = v90;
      }

LABEL_111:

      return;
    }

LABEL_136:
    v19 = sub_26655DAFC(v19);
    goto LABEL_103;
  }

  v97 = a4;
  v18 = 0;
  v19 = MEMORY[0x277D84F90];
  v103 = &v95 - v15;
  while (1)
  {
    v20 = v18++;
    i = v19;
    v99 = v20;
    if (v18 < v17)
    {
      v21 = *v109;
      v5 = *(v107 + 72);
      v22 = v20;
      v23 = *v109 + v5 * v18;
      v106 = v17;
      sub_2665E6F14(v23, v16);
      v24 = v113;
      sub_2665E6F14(v21 + v5 * v22, v113);
      LODWORD(v105) = sub_266668CA8();
      sub_2665E81E0(v24, _s17DayEventGroupingsV8GroupingVMa);
      sub_2665E81E0(v16, _s17DayEventGroupingsV8GroupingVMa);
      v25 = v106;
      v26 = v22 + 2;
      v108 = v5;
      v19 = (v21 + v5 * (v22 + 2));
      while (1)
      {
        v27 = v26;
        if (++v18 >= v25)
        {
          break;
        }

        sub_2665E6F14(v19, v16);
        v5 = v113;
        sub_2665E6F14(v23, v113);
        v28 = sub_266668CA8() & 1;
        sub_2665E81E0(v5, _s17DayEventGroupingsV8GroupingVMa);
        sub_2665E81E0(v16, _s17DayEventGroupingsV8GroupingVMa);
        v19 += v108;
        v23 += v108;
        v26 = v27 + 1;
        v25 = v106;
        if ((v105 & 1) != v28)
        {
          goto LABEL_9;
        }
      }

      v18 = v25;
LABEL_9:
      if (v105)
      {
        v20 = v99;
        if (v18 < v99)
        {
          goto LABEL_133;
        }

        if (v99 >= v18)
        {
          v19 = i;
          goto LABEL_32;
        }

        v96 = v6;
        if (v25 >= v27)
        {
          v29 = v27;
        }

        else
        {
          v29 = v25;
        }

        v30 = v108 * (v29 - 1);
        v31 = v99;
        v32 = v108 * v29;
        v33 = v99 * v108;
        v34 = v18;
        v19 = i;
        do
        {
          if (v31 != --v34)
          {
            v5 = *v109;
            if (!*v109)
            {
              goto LABEL_140;
            }

            sub_2665E8238(v5 + v33, v102);
            v35 = v33 < v30 || v5 + v33 >= v5 + v32;
            if (v35)
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v33 != v30)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            sub_2665E8238(v102, v5 + v30);
            v19 = i;
          }

          ++v31;
          v30 -= v108;
          v32 -= v108;
          v33 += v108;
        }

        while (v31 < v34);
        v6 = v96;
      }

      else
      {
        v19 = i;
      }

      v20 = v99;
    }

LABEL_32:
    v36 = v109[1];
    if (v18 < v36)
    {
      if (__OFSUB__(v18, v20))
      {
        goto LABEL_132;
      }

      if (v18 - v20 < v97)
      {
        break;
      }
    }

LABEL_48:
    if (v18 < v20)
    {
      goto LABEL_131;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_2665C627C();
      v19 = v87;
    }

    v46 = *(v19 + 2);
    v47 = v46 + 1;
    if (v46 >= *(v19 + 3) >> 1)
    {
      sub_2665C627C();
      v19 = v88;
    }

    *(v19 + 2) = v47;
    v48 = v19 + 32;
    v49 = &v19[16 * v46 + 32];
    *v49 = v99;
    *(v49 + 1) = v18;
    v108 = *v98;
    if (!v108)
    {
      goto LABEL_141;
    }

    v50 = v16;
    if (v46)
    {
      i = v19;
      while (1)
      {
        v51 = v47 - 1;
        v52 = &v48[16 * v47 - 16];
        v53 = &v19[16 * v47];
        if (v47 >= 4)
        {
          break;
        }

        if (v47 == 3)
        {
          v54 = *(v19 + 4);
          v55 = *(v19 + 5);
          v64 = __OFSUB__(v55, v54);
          v56 = v55 - v54;
          v57 = v64;
LABEL_69:
          if (v57)
          {
            goto LABEL_118;
          }

          v69 = *v53;
          v68 = *(v53 + 1);
          v70 = __OFSUB__(v68, v69);
          v71 = v68 - v69;
          v72 = v70;
          if (v70)
          {
            goto LABEL_121;
          }

          v73 = *(v52 + 1);
          v74 = v73 - *v52;
          if (__OFSUB__(v73, *v52))
          {
            goto LABEL_124;
          }

          if (__OFADD__(v71, v74))
          {
            goto LABEL_126;
          }

          if (v71 + v74 >= v56)
          {
            if (v56 < v74)
            {
              v51 = v47 - 2;
            }

            goto LABEL_91;
          }

          goto LABEL_84;
        }

        if (v47 < 2)
        {
          goto LABEL_120;
        }

        v76 = *v53;
        v75 = *(v53 + 1);
        v64 = __OFSUB__(v75, v76);
        v71 = v75 - v76;
        v72 = v64;
LABEL_84:
        if (v72)
        {
          goto LABEL_123;
        }

        v78 = *v52;
        v77 = *(v52 + 1);
        v64 = __OFSUB__(v77, v78);
        v79 = v77 - v78;
        if (v64)
        {
          goto LABEL_125;
        }

        if (v79 < v71)
        {
          goto LABEL_98;
        }

LABEL_91:
        if (v51 - 1 >= v47)
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
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
LABEL_134:
          __break(1u);
          goto LABEL_135;
        }

        if (!*v109)
        {
          goto LABEL_138;
        }

        v83 = &v48[16 * v51 - 16];
        v84 = *v83;
        v5 = v51;
        v19 = &v48[16 * v51];
        v85 = *(v19 + 1);
        sub_2665E7BD0(*v109 + *(v107 + 72) * *v83, *v109 + *(v107 + 72) * *v19, *v109 + *(v107 + 72) * v85, v108);
        if (v6)
        {
          goto LABEL_111;
        }

        if (v85 < v84)
        {
          goto LABEL_113;
        }

        v6 = *(i + 2);
        if (v5 > v6)
        {
          goto LABEL_114;
        }

        *v83 = v84;
        *(v83 + 1) = v85;
        if (v5 >= v6)
        {
          goto LABEL_115;
        }

        v47 = v6 - 1;
        sub_26655DB10(v19 + 16, v6 - 1 - v5, v19);
        v19 = i;
        *(i + 2) = v6 - 1;
        v86 = v6 > 2;
        v6 = 0;
        v50 = v103;
        if (!v86)
        {
          goto LABEL_98;
        }
      }

      v58 = &v48[16 * v47];
      v59 = *(v58 - 8);
      v60 = *(v58 - 7);
      v64 = __OFSUB__(v60, v59);
      v61 = v60 - v59;
      if (v64)
      {
        goto LABEL_116;
      }

      v63 = *(v58 - 6);
      v62 = *(v58 - 5);
      v64 = __OFSUB__(v62, v63);
      v56 = v62 - v63;
      v57 = v64;
      if (v64)
      {
        goto LABEL_117;
      }

      v65 = *(v53 + 1);
      v66 = v65 - *v53;
      if (__OFSUB__(v65, *v53))
      {
        goto LABEL_119;
      }

      v64 = __OFADD__(v56, v66);
      v67 = v56 + v66;
      if (v64)
      {
        goto LABEL_122;
      }

      if (v67 >= v61)
      {
        v81 = *v52;
        v80 = *(v52 + 1);
        v64 = __OFSUB__(v80, v81);
        v82 = v80 - v81;
        if (v64)
        {
          goto LABEL_130;
        }

        if (v56 < v82)
        {
          v51 = v47 - 2;
        }

        goto LABEL_91;
      }

      goto LABEL_69;
    }

LABEL_98:
    v17 = v109[1];
    v16 = v50;
    if (v18 >= v17)
    {
      goto LABEL_101;
    }
  }

  v37 = v20 + v97;
  if (__OFADD__(v20, v97))
  {
    goto LABEL_134;
  }

  if (v37 >= v36)
  {
    v37 = v109[1];
  }

  if (v37 < v20)
  {
LABEL_135:
    __break(1u);
    goto LABEL_136;
  }

  if (v18 == v37)
  {
    goto LABEL_48;
  }

  v96 = v6;
  v38 = *v109;
  v39 = *(v107 + 72);
  v5 = *v109 + v39 * (v18 - 1);
  v40 = -v39;
  v41 = v20 - v18;
  v100 = v39;
  v101 = v37;
  v42 = v38 + v18 * v39;
LABEL_41:
  v108 = v18;
  v104 = v42;
  v105 = v41;
  v106 = v5;
  while (1)
  {
    sub_2665E6F14(v42, v16);
    v43 = v113;
    sub_2665E6F14(v5, v113);
    v44 = sub_266668CA8();
    sub_2665E81E0(v43, _s17DayEventGroupingsV8GroupingVMa);
    sub_2665E81E0(v16, _s17DayEventGroupingsV8GroupingVMa);
    if ((v44 & 1) == 0)
    {
LABEL_46:
      v18 = v108 + 1;
      v5 = v106 + v100;
      v41 = v105 - 1;
      v42 = v104 + v100;
      if (v108 + 1 == v101)
      {
        v18 = v101;
        v6 = v96;
        v19 = i;
        v20 = v99;
        goto LABEL_48;
      }

      goto LABEL_41;
    }

    if (!v38)
    {
      break;
    }

    v45 = v111;
    sub_2665E8238(v42, v111);
    swift_arrayInitWithTakeFrontToBack();
    sub_2665E8238(v45, v5);
    v5 += v40;
    v42 += v40;
    v35 = __CFADD__(v41++, 1);
    if (v35)
    {
      goto LABEL_46;
    }
  }

  __break(1u);
LABEL_138:
  __break(1u);
LABEL_139:
  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
LABEL_142:
  __break(1u);
}

uint64_t sub_2665E7BD0(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v55 = _s17DayEventGroupingsV8GroupingVMa(0);
  v8 = MEMORY[0x28223BE20](v55);
  v56 = &v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v8);
  v12 = &v48 - v11;
  v14 = *(v13 + 72);
  if (!v14)
  {
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
    return result;
  }

  v15 = a2 - a1;
  v16 = a2 - a1 == 0x8000000000000000 && v14 == -1;
  if (v16)
  {
    goto LABEL_60;
  }

  v17 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v14 == -1)
  {
    goto LABEL_61;
  }

  v19 = v15 / v14;
  v59 = a1;
  v58 = a4;
  v20 = v17 / v14;
  if (v15 / v14 >= v17 / v14)
  {
    sub_2665C72F4(a2, v17 / v14, a4);
    v29 = a4 + v20 * v14;
    v30 = -v14;
    v31 = v29;
    v51 = a1;
    v52 = v30;
LABEL_36:
    v32 = a2 + v30;
    v33 = a3;
    v49 = v31;
    v53 = a2 + v30;
    v54 = a2;
    while (1)
    {
      if (v29 <= a4)
      {
        v59 = v54;
        v57 = v31;
        goto LABEL_58;
      }

      if (v54 <= a1)
      {
        break;
      }

      v50 = v31;
      v34 = a4;
      v35 = v33 + v30;
      v36 = v29 + v30;
      v37 = v29;
      v38 = v33;
      sub_2665E6F14(v29 + v30, v12);
      v39 = v12;
      v40 = v56;
      sub_2665E6F14(v32, v56);
      v41 = sub_266668CA8();
      v42 = v40;
      v12 = v39;
      sub_2665E81E0(v42, _s17DayEventGroupingsV8GroupingVMa);
      sub_2665E81E0(v39, _s17DayEventGroupingsV8GroupingVMa);
      if (v41)
      {
        v44 = v38 < v54 || v35 >= v54;
        a4 = v34;
        if (v44)
        {
          v45 = v53;
          swift_arrayInitWithTakeFrontToBack();
          v31 = v50;
          a1 = v51;
          a3 = v35;
          a2 = v45;
          v30 = v52;
          v29 = v37;
        }

        else
        {
          v31 = v50;
          v16 = v38 == v54;
          v30 = v52;
          v46 = v53;
          a3 = v35;
          a2 = v53;
          v29 = v37;
          a1 = v51;
          if (!v16)
          {
            v47 = v50;
            swift_arrayInitWithTakeBackToFront();
            v29 = v37;
            a2 = v46;
            v31 = v47;
          }
        }

        goto LABEL_36;
      }

      v43 = v38 < v37 || v35 >= v37;
      a4 = v34;
      if (v43)
      {
        swift_arrayInitWithTakeFrontToBack();
        v33 = v35;
        v29 = v36;
        v31 = v36;
        v30 = v52;
        v32 = v53;
        a1 = v51;
      }

      else
      {
        v31 = v36;
        v16 = v37 == v38;
        v33 = v35;
        v29 = v36;
        v30 = v52;
        v32 = v53;
        a1 = v51;
        if (!v16)
        {
          swift_arrayInitWithTakeBackToFront();
          v33 = v35;
          v29 = v36;
          v31 = v36;
        }
      }
    }

    v59 = v54;
    v57 = v49;
  }

  else
  {
    sub_2665C72F4(a1, v15 / v14, a4);
    v54 = a4 + v19 * v14;
    v57 = v54;
    while (a4 < v54 && a2 < a3)
    {
      v22 = a3;
      sub_2665E6F14(a2, v12);
      v23 = a2;
      v24 = v56;
      sub_2665E6F14(a4, v56);
      v25 = sub_266668CA8();
      sub_2665E81E0(v24, _s17DayEventGroupingsV8GroupingVMa);
      sub_2665E81E0(v12, _s17DayEventGroupingsV8GroupingVMa);
      if (v25)
      {
        a2 = v23 + v14;
        v26 = a1 < v23 || a1 >= a2;
        v27 = v23;
        if (v26)
        {
          swift_arrayInitWithTakeFrontToBack();
          a3 = v22;
        }

        else
        {
          a3 = v22;
          if (a1 != v27)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }
      }

      else
      {
        if (a1 < a4 || a1 >= a4 + v14)
        {
          swift_arrayInitWithTakeFrontToBack();
          a2 = v23;
          a3 = v22;
        }

        else
        {
          a2 = v23;
          a3 = v22;
          if (a1 != a4)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v58 = a4 + v14;
        a4 += v14;
      }

      a1 += v14;
      v59 = a1;
    }
  }

LABEL_58:
  sub_2665E8044(&v59, &v58, &v57);
  return 1;
}

uint64_t sub_2665E8044(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *a3;
  result = _s17DayEventGroupingsV8GroupingVMa(0);
  v7 = *(*(result - 8) + 72);
  if (!v7)
  {
    __break(1u);
LABEL_20:
    __break(1u);
    return result;
  }

  if (v5 - v4 == 0x8000000000000000 && v7 == -1)
  {
    goto LABEL_20;
  }

  v9 = v4 + (v5 - v4) / v7 * v7;
  if (v3 < v4 || v3 >= v9)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v3 != v4)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

unint64_t sub_2665E8124()
{
  result = qword_28007ECE8;
  if (!qword_28007ECE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28007E548, &qword_266674B08);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007ECE8);
  }

  return result;
}

unint64_t sub_2665E8188()
{
  result = qword_28007ECF0;
  if (!qword_28007ECF0)
  {
    type metadata accessor for FindEventDayComparator(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007ECF0);
  }

  return result;
}

uint64_t sub_2665E81E0(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_18_2();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_2665E8238(uint64_t a1, uint64_t a2)
{
  v4 = _s17DayEventGroupingsV8GroupingVMa(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2665E829C(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

unint64_t sub_2665E82C0(char a1)
{
  result = 0x656C746954746573;
  switch(a1)
  {
    case 1:
      return result;
    case 2:
      result = 0xD000000000000010;
      break;
    case 3:
      result = 0x7461636F4C746573;
      break;
    case 4:
      result = 0x6974726150646461;
      break;
    case 5:
      result = 0xD000000000000012;
      break;
    case 6:
      result = 0xD000000000000014;
      break;
    default:
      result = 0xD000000000000015;
      break;
  }

  return result;
}

uint64_t sub_2665E83C0(char a1)
{
  v2 = sub_26666B0B8();
  OUTLINED_FUNCTION_7(v2);
  v3 = sub_26666B0A8();
  v4 = sub_26666AF28();
  OUTLINED_FUNCTION_7(v4);
  sub_26666AF18();
  sub_26666B038();
  switch(a1)
  {
    case 1:
      v7 = sub_26666A738();
      OUTLINED_FUNCTION_7(v7);
      sub_26666A728();
      sub_26666A408();
      goto LABEL_7;
    case 2:
      v5 = sub_26666AF78();
      OUTLINED_FUNCTION_7(v5);
      sub_26666AF68();
      sub_26666AEE8();
      goto LABEL_7;
    case 3:
      v6 = sub_26666AFD8();
      OUTLINED_FUNCTION_7(v6);
      sub_26666AFC8();
      sub_26666AEF8();
LABEL_7:

      goto LABEL_8;
    case 4:
    case 5:
    case 6:

      return 0;
    default:
LABEL_8:

      return v3;
  }
}

uint64_t sub_2665E8520(char a1)
{
  v1 = MEMORY[0x277D84F90];
  switch(a1)
  {
    case 1:
      v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007E610, &qword_266677630);
      v1 = OUTLINED_FUNCTION_9_16(v2);
      *(v1 + 16) = xmmword_26666EED0;
      if (qword_28007CE58 != -1)
      {
        goto LABEL_15;
      }

      goto LABEL_5;
    case 2:
      v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007E610, &qword_266677630);
      v1 = OUTLINED_FUNCTION_9_16(v10);
      *(v1 + 16) = xmmword_26666EED0;
      if (qword_28007CE50 != -1)
      {
        swift_once();
      }

      v4 = &qword_28007ECF8;
      v5 = &qword_266676C58;
      v6 = &unk_28007ED00;
      goto LABEL_12;
    case 3:
      v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007E610, &qword_266677630);
      v1 = OUTLINED_FUNCTION_9_16(v3);
      *(v1 + 16) = xmmword_26666EED0;
      if (qword_28007CE60 != -1)
      {
LABEL_15:
        swift_once();
      }

LABEL_5:
      v4 = &qword_28007ED10;
      v5 = &qword_26667A0A0;
      v6 = &qword_28007ED18;
LABEL_12:
      v8 = sub_2665E8798(v4, v5, v6);
      goto LABEL_13;
    case 4:
      v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007E610, &qword_266677630);
      v1 = OUTLINED_FUNCTION_9_16(v7);
      *(v1 + 16) = xmmword_26666EED0;
      if (qword_28007CE80 != -1)
      {
        swift_once();
      }

      v8 = sub_2665E88C8(type metadata accessor for CalendarEventAttendeeOntologyNode);
LABEL_13:
      *(v1 + 32) = v8;
      *(v1 + 40) = v9;
      break;
    default:
      return v1;
  }

  return v1;
}

uint64_t sub_2665E8798(uint64_t *a1, uint64_t *a2, unint64_t *a3)
{
  OUTLINED_FUNCTION_3_28();

  OUTLINED_FUNCTION_1_31();
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  sub_2665E8B40(a3, a1, a2);
  sub_26666A1D8();

  v6 = OUTLINED_FUNCTION_0_30();
  sub_2665E89D0(v6);
  sub_26666C6C8();

  v7 = OUTLINED_FUNCTION_0_30();
  sub_2665E8A54(v7);
  OUTLINED_FUNCTION_7_20();

  sub_26666C3B8();

  MEMORY[0x266788710]();

  return v9;
}

uint64_t sub_2665E88C8(uint64_t (*a1)(void))
{
  OUTLINED_FUNCTION_3_28();

  OUTLINED_FUNCTION_1_31();
  a1(0);
  sub_26666A1D8();

  v2 = OUTLINED_FUNCTION_0_30();
  sub_2665E89D0(v2);
  sub_26666C6C8();

  v3 = OUTLINED_FUNCTION_0_30();
  sub_2665E8A54(v3);
  OUTLINED_FUNCTION_7_20();

  sub_26666C3B8();

  MEMORY[0x266788710]();

  return v5;
}

uint64_t sub_2665E89D0(uint64_t result)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_5_21();
    OUTLINED_FUNCTION_8_18(v1, v2);
    sub_26666C428();
    OUTLINED_FUNCTION_2_28();
    return OUTLINED_FUNCTION_6_16();
  }

  return result;
}

unint64_t sub_2665E8A54(unint64_t result)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_5_21();
    if ((v4 & 0x2000000000000000) != 0)
    {
      v6 = v5;
    }

    else
    {
      v6 = v1 & 0xFFFFFFFFFFFFLL;
    }

    v7 = 7;
    if (((v4 >> 60) & ((v1 & 0x800000000000000) == 0)) != 0)
    {
      v7 = 11;
    }

    v8 = v7 | (v6 << 16);
    result = OUTLINED_FUNCTION_8_18(v2, v3);
    if (v9)
    {
      result = v8;
    }

    if (4 * v6 >= result >> 14)
    {
      sub_26666C428();
      OUTLINED_FUNCTION_2_28();
      return OUTLINED_FUNCTION_6_16();
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_2665E8AEC()
{
  result = qword_28007ED08;
  if (!qword_28007ED08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007ED08);
  }

  return result;
}

uint64_t sub_2665E8B40(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_2_28()
{
}

uint64_t OUTLINED_FUNCTION_3_28()
{
  *(v1 - 56) = v0;

  return sub_26666C7E8();
}

unint64_t OUTLINED_FUNCTION_7_20()
{

  return sub_2665E8AEC();
}

uint64_t OUTLINED_FUNCTION_8_18(uint64_t a1, uint64_t a2)
{

  return MEMORY[0x2821FBE10](15, a2, v4, v3, v2);
}

uint64_t OUTLINED_FUNCTION_9_16(uint64_t a1)
{

  return swift_allocObject();
}

uint64_t sub_2665E8CC4(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  v42 = a1;
  v43 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28007F810, &unk_26667C710);
  v5 = OUTLINED_FUNCTION_3_3(v4);
  MEMORY[0x28223BE20](v5);
  v7 = &v37 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007ED70, &qword_266671CC0);
  v9 = OUTLINED_FUNCTION_3_3(v8);
  MEMORY[0x28223BE20](v9);
  v11 = &v37 - v10;
  v44 = sub_26666C228();
  v12 = *(v44 - 8);
  v13 = MEMORY[0x28223BE20](v44);
  v40 = &v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = a3(v13);
  v16 = result;
  v17 = 0;
  v18 = result + 40;
  v19 = *(result + 16);
  v38 = v12;
  v39 = (v12 + 32);
  v41 = MEMORY[0x277D84F90];
LABEL_2:
  for (i = (v18 + 16 * v17); ; i += 2)
  {
    if (v19 == v17)
    {

      return v41;
    }

    if (v17 >= *(v16 + 16))
    {
      break;
    }

    if (*(i - 1))
    {
      v21 = *i;
      ObjectType = swift_getObjectType();
      sub_26666C1B8();
      OUTLINED_FUNCTION_7_6();
      __swift_storeEnumTagSinglePayload(v23, v24, v25, v26);
      swift_unknownObjectRetain();
      sub_26662D34C(v7, ObjectType, v21, v11);
      swift_unknownObjectRelease();
      sub_26656CAEC(v7, &unk_28007F810, &unk_26667C710);
      if (__swift_getEnumTagSinglePayload(v11, 1, v44) != 1)
      {
        v30 = *v39;
        (*v39)(v40, v11, v44);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_2665C6994();
          v41 = v35;
        }

        v32 = *(v41 + 16);
        if (v32 >= *(v41 + 24) >> 1)
        {
          sub_2665C6994();
          v41 = v36;
        }

        ++v17;
        v33 = v40;
        v34 = v41;
        *(v41 + 16) = v32 + 1;
        result = (v30)(v34 + ((*(v38 + 80) + 32) & ~*(v38 + 80)) + *(v38 + 72) * v32, v33, v44);
        goto LABEL_2;
      }
    }

    else
    {
      OUTLINED_FUNCTION_7_6();
      __swift_storeEnumTagSinglePayload(v27, v28, v29, v44);
    }

    result = sub_26656CAEC(v11, &qword_28007ED70, &qword_266671CC0);
    ++v17;
  }

  __break(1u);
  return result;
}

uint64_t sub_2665E8FEC()
{
  OUTLINED_FUNCTION_14();
  v1[3] = v2;
  v1[4] = v0;
  v1[2] = v3;
  v4 = sub_2666695E8();
  v1[5] = v4;
  OUTLINED_FUNCTION_3_1(v4);
  v1[6] = v5;
  v1[7] = OUTLINED_FUNCTION_19();
  v6 = OUTLINED_FUNCTION_31();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_2665E9094()
{
  if (qword_28156C150 != -1)
  {
    OUTLINED_FUNCTION_1_1(&qword_28156C150);
  }

  v1 = sub_26666C168();
  __swift_project_value_buffer(v1, qword_28156D7E8);
  v2 = sub_26666C148();
  v3 = sub_26666C618();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    OUTLINED_FUNCTION_4_0(&dword_266549000, v5, v6, "[UpdateEvent HandleIntentStrategy] makeIntentExecutionBehavior");
    MEMORY[0x266789690](v4, -1, -1);
  }

  v7 = v0[4];
  v8 = v0[3];

  v9 = *v7;
  sub_26655A1C8();

  v10 = v9;
  v11 = v8;
  sub_2666695D8();
  sub_266669608();
  v12 = sub_2666695F8();
  v13 = OUTLINED_FUNCTION_15_2();
  v14(v13);

  v15 = v0[1];

  return v15(v12);
}

uint64_t sub_2665E9218()
{
  OUTLINED_FUNCTION_14();
  v1[33] = v2;
  v1[34] = v0;
  v1[32] = v3;
  v4 = type metadata accessor for Snippet(0);
  v1[35] = v4;
  OUTLINED_FUNCTION_3_3(v4);
  v1[36] = swift_task_alloc();
  v1[37] = swift_task_alloc();
  v1[38] = swift_task_alloc();
  v1[39] = swift_task_alloc();
  v5 = sub_266669CA8();
  v1[40] = v5;
  OUTLINED_FUNCTION_3_1(v5);
  v1[41] = v6;
  v1[42] = OUTLINED_FUNCTION_19();
  v7 = sub_266669708();
  v1[43] = v7;
  OUTLINED_FUNCTION_3_1(v7);
  v1[44] = v8;
  v1[45] = swift_task_alloc();
  v1[46] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007D330, &unk_26666EEA0);
  OUTLINED_FUNCTION_3_3(v9);
  v1[47] = OUTLINED_FUNCTION_19();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28007DE20, &unk_26666EAE0);
  OUTLINED_FUNCTION_3_3(v10);
  v1[48] = OUTLINED_FUNCTION_19();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007D338, &qword_26666EEB0);
  OUTLINED_FUNCTION_3_3(v11);
  v1[49] = OUTLINED_FUNCTION_19();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28007DE30, &unk_26666EAF0);
  OUTLINED_FUNCTION_3_3(v12);
  v1[50] = swift_task_alloc();
  v1[51] = swift_task_alloc();
  v1[52] = swift_task_alloc();
  v1[53] = swift_task_alloc();
  v1[54] = swift_task_alloc();
  v1[55] = swift_task_alloc();
  v13 = type metadata accessor for Snippet.Event(0);
  OUTLINED_FUNCTION_3_3(v13);
  v1[56] = OUTLINED_FUNCTION_19();
  v14 = sub_2666699C8();
  v1[57] = v14;
  OUTLINED_FUNCTION_3_1(v14);
  v1[58] = v15;
  v1[59] = OUTLINED_FUNCTION_19();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28007D130, &unk_266671DF0);
  OUTLINED_FUNCTION_3_3(v16);
  v1[60] = OUTLINED_FUNCTION_19();
  v17 = OUTLINED_FUNCTION_31();

  return MEMORY[0x2822009F8](v17, v18, v19);
}

uint64_t sub_2665E94FC()
{
  v0[61] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28007ED40, &qword_266676DC0);
  v2 = sub_266669B58();
  v3 = [v2 updatedEvent];
  v0[62] = v3;

  if (!v3)
  {
    if (qword_28156C150 != -1)
    {
      OUTLINED_FUNCTION_1_1(&qword_28156C150);
    }

    v16 = sub_26666C168();
    __swift_project_value_buffer(v16, qword_28156D7E8);
    v17 = sub_26666C148();
    v18 = sub_26666C608();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      OUTLINED_FUNCTION_4_0(&dword_266549000, v20, v21, "[UpdateEvent HandleIntentStrategy] Unexpectedly found nil for updatedEvent in intent response");
      MEMORY[0x266789690](v19, -1, -1);
    }

    sub_26656CBFC();
    swift_allocError();
    *v22 = 0u;
    *(v22 + 16) = 0u;
    *(v22 + 32) = 2;
    swift_willThrow();
    OUTLINED_FUNCTION_13_10();

    OUTLINED_FUNCTION_24_1();
    OUTLINED_FUNCTION_47_0();

    __asm { BRAA            X1, X16 }
  }

  v4 = sub_266669B68();
  v0[63] = v4;
  v5 = sub_26659A2F8(v4);
  v6 = MEMORY[0x277D84F90];
  if (v5)
  {
    v7 = v5;
    v49 = v4;
    v50 = MEMORY[0x277D84F90];
    v8 = sub_2665C485C();
    v9 = 0;
    v4 = (v7 & 0xC000000000000001);
    while (1)
    {
      if (v8 == v9)
      {
        v12 = v0[34];

        v13 = swift_task_alloc();
        *(v13 + 16) = v12 + 48;
        sub_2665511FC(sub_266557CC8, v13, v50);
        v6 = v14;

        v4 = v49;
        goto LABEL_15;
      }

      if (v4)
      {
        v10 = MEMORY[0x266788B60](v9, v7);
      }

      else
      {
        if (v9 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_51;
        }

        v10 = *(v7 + 8 * v9 + 32);
      }

      if (__OFADD__(v9, 1))
      {
        break;
      }

      v1 = v10;
      v11 = sub_266580A7C();

      if (v11)
      {
        sub_26666C868();
        sub_26666C8A8();
        sub_26666C8B8();
        sub_26666C878();
      }

      else
      {
      }

      ++v9;
    }

    __break(1u);
LABEL_51:
    __break(1u);
    goto LABEL_52;
  }

LABEL_15:
  v0[64] = v6;
  sub_26659A290(v4);
  if (v15)
  {

    LODWORD(v1) = 1;
  }

  else if (sub_26659A2F8(v4) && (v25 = sub_2665C485C(), , v25 >= 1))
  {
    v26 = sub_26659A2F8(v4);
    if (v26)
    {
      v27 = sub_2665C485C();
    }

    else
    {
      v27 = 0;
    }

    v28 = sub_2665C485C();
    if (v26)
    {
      v29 = v27 == v28;
    }

    else
    {
      v29 = 0;
    }

    LODWORD(v1) = !v29;
  }

  else
  {
    LODWORD(v1) = 0;
  }

  if (qword_28156C150 != -1)
  {
LABEL_52:
    OUTLINED_FUNCTION_1_1(&qword_28156C150);
  }

  v30 = v4;
  v31 = sub_26666C168();
  __swift_project_value_buffer(v31, qword_28156D7E8);
  v32 = sub_26666C148();
  v33 = sub_26666C618();
  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    *v34 = 67109120;
    *(v34 + 4) = v1;
    _os_log_impl(&dword_266549000, v32, v33, "[UpdateEvent HandleIntentStrategy] titleUpdated: %{BOOL}d", v34, 8u);
    MEMORY[0x266789690](v34, -1, -1);
  }

  v35 = v0[34];

  type metadata accessor for CalendarEventConcept(0);
  sub_26655358C(v35 + 48, (v0 + 2));
  v0[65] = sub_2665CA7F4(v3, v0 + 2);
  v36 = v30;
  v37 = [v30 setDateTimeRange];
  if (v37)
  {
    v38 = v37;
    sub_26666BB78();
    v39 = sub_2665CAB68(v38);
  }

  else
  {
    v39 = 0;
  }

  v0[66] = v39;
  if (v1 && (v40 = sub_266669B58(), v41 = [v40 updatedEvent], v40, v41) && (sub_2665EB2E8(v41), v42))
  {
    sub_26666C358();

    v43 = 0;
  }

  else
  {
    v43 = 1;
  }

  v44 = v0[60];
  v45 = sub_26666BDA8();
  __swift_storeEnumTagSinglePayload(v44, v43, 1, v45);
  sub_26666BD58();
  v0[67] = sub_2665CAF44([v36 setLocation]);
  v46 = swift_task_alloc();
  v0[68] = v46;
  *v46 = v0;
  v46[1] = sub_2665E9B68;
  OUTLINED_FUNCTION_47_0();

  return sub_266592864();
}

uint64_t sub_2665E9B68()
{
  v2 = *v1;
  OUTLINED_FUNCTION_5_0();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_11_2();
  *v5 = v4;
  v2[69] = v6;
  v2[70] = v0;

  sub_26656CAEC(v2[60], &unk_28007D130, &unk_266671DF0);
  if (v0)
  {

    v7 = sub_2665EB014;
  }

  else
  {

    v7 = sub_2665E9D34;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_2665E9D34()
{
  v1 = sub_266669B58();
  sub_2666699B8();
  if (qword_28007CE30 != -1)
  {
    swift_once();
  }

  v2 = v0[70];
  v3 = v0[62];
  v4 = v0[34];
  sub_26666A0F8();
  sub_266669908();
  sub_2665E8CC4(0xD000000000000013, 0x800000026667D670, sub_2665C50C4);
  sub_2666698E8();

  sub_26655358C(v4 + 8, (v0 + 7));
  v5 = v3;
  sub_2665AAA8C(v5, (v0 + 7), v6, v7, v8, v9, v10, v11, v109, v111, v113, v115, v117, v119, v121, v123, v125, v127, v129, v131);
  v12 = v0[69];
  if (v2)
  {
    v14 = v0[62];
    v13 = v0[63];
    (*(v0[58] + 8))(v0[59], v0[57]);

    OUTLINED_FUNCTION_24_1();
    OUTLINED_FUNCTION_47_0();

    __asm { BRAA            X1, X16 }
  }

  v17 = v0[58];
  v19 = v0[56];
  v18 = v0[57];
  v20 = v0[55];
  v112 = v0[54];
  v114 = v0[59];
  v116 = v0[48];
  v118 = v0[47];
  v120 = v0[46];
  v122 = v0[45];
  v21 = v0[44];
  v124 = v0[43];
  v126 = v0[42];
  v128 = v0[53];
  v22 = v0[35];
  v130 = v0[34];
  v132 = v0[49];
  v23 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_28007ED50, &qword_266673CA0) + 48);
  sub_2665A68A8(v19, v20, type metadata accessor for Snippet.Event);
  v24 = sub_2665C485C();

  *(v20 + v23) = v24 != 0;
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v20, 0, 1, v22);
  OUTLINED_FUNCTION_7_6();
  __swift_storeEnumTagSinglePayload(v25, v26, v27, v22);
  (*(v17 + 16))(v132, v114, v18);
  __swift_storeEnumTagSinglePayload(v132, 0, 1, v18);
  sub_26666BB08();
  OUTLINED_FUNCTION_7_6();
  __swift_storeEnumTagSinglePayload(v28, v29, v30, v31);
  sub_266669788();
  OUTLINED_FUNCTION_7_6();
  __swift_storeEnumTagSinglePayload(v32, v33, v34, v35);
  sub_2666696A8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28007DE50, &unk_26666E360);
  v36 = swift_allocObject();
  v0[71] = v36;
  *(v36 + 16) = xmmword_26666E050;
  *(v36 + 32) = v12;
  v37 = *(v21 + 16);
  v38 = v12;
  v37(v122, v120, v124);
  v39 = swift_task_alloc();
  *(v39 + 16) = 0;
  *(v39 + 24) = 0;
  *(v39 + 32) = 0;
  *(v39 + 40) = v36;
  *(v39 + 48) = v132;
  *(v39 + 56) = 2;
  *(v39 + 64) = v116;
  *(v39 + 72) = v118;
  *(v39 + 80) = 514;
  sub_266669BC8();

  sub_26656CA7C(v20, v128);
  if (__swift_getEnumTagSinglePayload(v128, 1, v22) == 1)
  {
    v40 = v0 + 53;
    goto LABEL_11;
  }

  sub_26656630C(v0[53], v0[39]);
  v41 = OUTLINED_FUNCTION_15_2();
  sub_26656CA7C(v41, v42);
  if (OUTLINED_FUNCTION_26_7() == 1)
  {
    v40 = v0 + 52;
    OUTLINED_FUNCTION_3_18();
    sub_2665A6908(v43, v44);
LABEL_11:
    sub_26656CAEC(*v40, &unk_28007DE30, &unk_26666EAF0);
    v45 = OUTLINED_FUNCTION_15_2();
    sub_26656CA7C(v45, v46);
    v47 = OUTLINED_FUNCTION_26_7();
    v48 = v0[51];
    v49 = v0[35];
    if (v47 == 1)
    {
      sub_26656CAEC(v48, &unk_28007DE30, &unk_26666EAF0);
      v50 = OUTLINED_FUNCTION_15_2();
      sub_26656CA7C(v50, v51);
      if (OUTLINED_FUNCTION_26_7() == 1)
      {
        v52 = sub_26656CAEC(v0[50], &unk_28007DE30, &unk_26666EAF0);
        OUTLINED_FUNCTION_19_15(v52, v53, v54, v55, v56, v57, v58, v59, v110, v112, v114, v116, v118, v120, v122, v124, v126, v128, v130);
        swift_task_alloc();
        OUTLINED_FUNCTION_23_1();
        v0[75] = v60;
        *v60 = v61;
        v60[1] = sub_2665EAD84;
        OUTLINED_FUNCTION_47_0();

        return MEMORY[0x2821BB488](v62);
      }

      else
      {
        v93 = v0[35];
        v92 = v0[36];
        v94 = sub_26656630C(v0[50], v92);
        OUTLINED_FUNCTION_19_15(v94, v95, v96, v97, v98, v99, v100, v101, v110, v112, v114, v116, v118, v120, v122, v124, v126, v128, v130);
        v0[15] = v93;
        v0[16] = sub_26656CBA4();
        __swift_allocate_boxed_opaque_existential_1(v0 + 12);
        OUTLINED_FUNCTION_2_16();
        sub_2665A68A8(v92, v102, v103);
        swift_task_alloc();
        OUTLINED_FUNCTION_23_1();
        v0[74] = v104;
        *v104 = v105;
        v104[1] = sub_2665EAAE4;
        OUTLINED_FUNCTION_47_0();

        return MEMORY[0x2821BB478](v106);
      }
    }

    else
    {
      v64 = v0[37];
      v65 = sub_26656630C(v48, v64);
      OUTLINED_FUNCTION_19_15(v65, v66, v67, v68, v69, v70, v71, v72, v110, v112, v114, v116, v118, v120, v122, v124, v126, v128, v130);
      v0[20] = v49;
      v0[21] = sub_26656CBA4();
      __swift_allocate_boxed_opaque_existential_1(v0 + 17);
      OUTLINED_FUNCTION_2_16();
      sub_2665A68A8(v64, v73, v74);
      swift_task_alloc();
      OUTLINED_FUNCTION_23_1();
      v0[73] = v75;
      *v75 = v76;
      v75[1] = sub_2665EA844;
      OUTLINED_FUNCTION_47_0();

      return MEMORY[0x2821BB468](v77);
    }
  }

  v80 = v0[38];
  v79 = v0[39];
  v81 = v0[34];
  v82 = v0[35];
  sub_26656630C(v0[52], v80);
  __swift_project_boxed_opaque_existential_1((v130 + 96), *(v81 + 120));
  v0[25] = v82;
  v83 = sub_26656CBA4();
  v0[26] = v83;
  __swift_allocate_boxed_opaque_existential_1(v0 + 22);
  OUTLINED_FUNCTION_2_16();
  v85 = v84;
  sub_2665A68A8(v79, v86, v84);
  v0[30] = v82;
  v0[31] = v83;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 27);
  sub_2665A68A8(v80, boxed_opaque_existential_1, v85);
  swift_task_alloc();
  OUTLINED_FUNCTION_23_1();
  v0[72] = v88;
  *v88 = v89;
  v88[1] = sub_2665EA57C;
  OUTLINED_FUNCTION_47_0();

  return MEMORY[0x2821BB460](v90);
}

uint64_t sub_2665EA57C()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_5_1();
  v2 = v1;
  OUTLINED_FUNCTION_11_2();
  *v3 = v2;
  v4 = *v0;
  OUTLINED_FUNCTION_5_0();
  *v5 = v4;

  __swift_destroy_boxed_opaque_existential_1((v2 + 216));
  __swift_destroy_boxed_opaque_existential_1((v2 + 176));
  v6 = OUTLINED_FUNCTION_31();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_2665EA844()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_5_1();
  v2 = v1;
  OUTLINED_FUNCTION_11_2();
  *v3 = v2;
  v4 = *v0;
  OUTLINED_FUNCTION_5_0();
  *v5 = v4;

  __swift_destroy_boxed_opaque_existential_1((v2 + 136));
  v6 = OUTLINED_FUNCTION_31();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_2665EAAE4()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_5_1();
  v2 = v1;
  OUTLINED_FUNCTION_11_2();
  *v3 = v2;
  v4 = *v0;
  OUTLINED_FUNCTION_5_0();
  *v5 = v4;

  __swift_destroy_boxed_opaque_existential_1((v2 + 96));
  v6 = OUTLINED_FUNCTION_31();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_2665EAD84()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_5_1();
  v1 = *v0;
  OUTLINED_FUNCTION_5_0();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_31();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_2665EB014()
{
  v1 = *(v0 + 496);

  OUTLINED_FUNCTION_13_10();

  OUTLINED_FUNCTION_24_1();

  return v2();
}

uint64_t sub_2665EB144()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_26656CD98;

  return sub_2665E9218();
}

uint64_t sub_2665EB1EC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_26657A00C;

  return sub_2665E8FEC();
}

unint64_t sub_2665EB294()
{
  result = qword_28007ED30;
  if (!qword_28007ED30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007ED30);
  }

  return result;
}

uint64_t sub_2665EB2E8(void *a1)
{
  v2 = [a1 title];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_26666C308();

  return v3;
}

uint64_t OUTLINED_FUNCTION_0_31()
{
  result = v0[42];
  v3 = v0[38];
  *(v1 - 104) = v0[39];
  *(v1 - 96) = v3;
  v4 = v0[36];
  *(v1 - 88) = v0[37];
  *(v1 - 80) = v4;
  return result;
}

uint64_t OUTLINED_FUNCTION_1_32(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{

  return sub_2665A6908(a13, type metadata accessor for Snippet.Event);
}

uint64_t OUTLINED_FUNCTION_8_19()
{

  return sub_26656CAEC(v1, v0, v2);
}

uint64_t OUTLINED_FUNCTION_9_17()
{

  return sub_26656CAEC(v0, v1, v2);
}

uint64_t OUTLINED_FUNCTION_13_10()
{
}

void *OUTLINED_FUNCTION_19_15(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  v21 = *(v19 + 120);

  return __swift_project_boxed_opaque_existential_1((a19 + 96), v21);
}

uint64_t OUTLINED_FUNCTION_26_7()
{

  return __swift_getEnumTagSinglePayload(v0, 1, v1);
}

uint64_t OUTLINED_FUNCTION_31_5(uint64_t a1, uint64_t *a2, uint64_t *a3)
{

  return sub_26656CAEC(v3, a2, a3);
}

uint64_t OUTLINED_FUNCTION_33_4(uint64_t a1, uint64_t *a2, uint64_t *a3)
{

  return sub_26656CAEC(v3, a2, a3);
}

void sub_2665EB4F8()
{
  OUTLINED_FUNCTION_28_0();
  v69 = v0;
  v4 = v3;
  v5 = sub_266668D38();
  OUTLINED_FUNCTION_3_0();
  v73 = v6;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_10_5();
  v70 = v8 - v9;
  OUTLINED_FUNCTION_12_7();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_16_13();
  v11 = sub_266668EB8();
  OUTLINED_FUNCTION_3_0();
  v13 = v12;
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_10_5();
  v75 = v15 - v16;
  OUTLINED_FUNCTION_12_7();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_25_8();
  v76 = sub_266668E68();
  OUTLINED_FUNCTION_3_0();
  v72 = v18;
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_10_5();
  v74 = v20 - v21;
  OUTLINED_FUNCTION_12_7();
  MEMORY[0x28223BE20](v22);
  v24 = &v63 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28007DC90, &qword_266676EB0);
  v26 = OUTLINED_FUNCTION_3_3(v25);
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_10_5();
  v71 = v27 - v28;
  OUTLINED_FUNCTION_12_7();
  MEMORY[0x28223BE20](v29);
  v31 = &v63 - v30;
  sub_26659A29C(v4, &selRef_appEntityIdentifier);
  if (v32)
  {
    v68 = sub_26666C2F8();
  }

  else
  {
    v68 = 0;
  }

  v33 = v4;
  sub_2665EF644(v33, &selRef_title);
  if (v34)
  {
    v67 = sub_26666C2F8();
  }

  else
  {
    v67 = 0;
  }

  sub_266668E58();
  sub_266668EA8();
  v35 = [v33 startDate];
  if (!v35)
  {
    __break(1u);
    goto LABEL_21;
  }

  v36 = v35;
  sub_266668CE8();

  sub_266668DD8();
  v66 = *(v13 + 8);
  v66(v2, v11);
  v72 = *(v72 + 8);
  (v72)(v24, v76);
  v63 = v11;
  v64 = v5;
  v65 = *(v73 + 1);
  v65(v1, v5);
  v37 = sub_266668B08();
  v73 = v31;
  __swift_storeEnumTagSinglePayload(v31, 0, 1, v37);
  v38 = v74;
  sub_266668E58();
  v39 = v75;
  sub_266668EA8();
  v40 = [v33 endDate];
  if (!v40)
  {
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
    return;
  }

  v41 = v40;
  v42 = v33;
  v43 = v70;
  sub_266668CE8();

  v44 = v71;
  OUTLINED_FUNCTION_34_2();
  sub_266668DD8();
  v66(v39, v63);
  (v72)(v38, v76);
  v65(v43, v64);
  __swift_storeEnumTagSinglePayload(v44, 0, 1, v37);
  v45 = sub_266560FA8();
  [v42 isAllDay];
  sub_266552C44(0, &qword_28007D740, 0x277CCABB0);
  v46 = sub_26666C658();
  v47 = objc_allocWithZone(MEMORY[0x277CD3B68]);
  v48 = sub_26660B270(v73, v44, v45, 0, 0, v46);
  v49 = v42;
  if (sub_2665EF6AC(v49))
  {
    v50 = OUTLINED_FUNCTION_25();
    sub_2666680AC(v50, v51);
    v53 = v52;

    v78 = v53;
    v77 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007ED88, &qword_266676EB8);
    sub_2665EF724();
    sub_2665EF788();
    sub_26666C438();

    sub_266552C44(0, &qword_28007D748, 0x277CD3BE8);
    v54 = sub_26666C488();
  }

  else
  {
    v54 = 0;
  }

  if ([v49 hasPredictedLocation])
  {
    v55 = 0;
  }

  else
  {
    sub_266552C44(0, &qword_28007F370, 0x277CBFC40);
    v55 = sub_266586830(v49);
  }

  v56 = [v49 calendar];

  if (!v56)
  {
    goto LABEL_22;
  }

  [v56 type];

  v57 = sub_26666C658();
  sub_266561234();
  if (v58)
  {
    v59 = sub_26666C2F8();
  }

  else
  {
    v59 = 0;
  }

  v60 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v62 = v67;
  v61 = v68;
  [v60 initWithEventIdentifier:v68 title:v67 dateTimeRange:v48 participants:v54 location:v55 isContactBirthday:v57 calendarPunchoutURI:v59];

  OUTLINED_FUNCTION_27_0();
}

void sub_2665EBB74()
{
  OUTLINED_FUNCTION_28_0();
  v1 = v0;
  LOBYTE(v3) = v2;
  v4 = v2;
  sub_266668D38();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_1_0();
  v10 = v9 - v8;
  if (v4 == 4)
  {

    goto LABEL_43;
  }

  v82 = v7;
  v83 = v6;
  v85 = MEMORY[0x277D84F90];
  v11 = sub_2665C485C();
  for (i = 0; ; ++i)
  {
    if (v11 == i)
    {
      v11 = v85;
      v86 = v85;
      if (!sub_2665C485C())
      {
        goto LABEL_43;
      }

      switch(v3)
      {
        case 1:

          goto LABEL_19;
        case 3:
          OUTLINED_FUNCTION_24();
          goto LABEL_18;
        default:
LABEL_18:
          v17 = sub_26666CAC8();

          if (v17)
          {
LABEL_19:
            OUTLINED_FUNCTION_39_0();
            if (!v18)
            {
              goto LABEL_85;
            }

            goto LABEL_21;
          }

          break;
      }

      v35 = v3;
      switch(v3)
      {
        case 0:
          v36 = v3;

          goto LABEL_46;
        case 1:
        case 2:
          goto LABEL_45;
        case 3:
          OUTLINED_FUNCTION_24();
LABEL_45:
          v36 = v35;
          v46 = sub_26666CAC8();

          if ((v46 & 1) == 0)
          {
            goto LABEL_57;
          }

LABEL_46:
          if (!sub_2665C485C())
          {
LABEL_57:
            switch(v36)
            {
              case 0:
              case 1:
              case 3:
                v53 = sub_26666CAC8();

                if (v53)
                {
                  goto LABEL_60;
                }

                goto LABEL_72;
              case 2:

LABEL_60:
                v54 = sub_2665C6028(v85);
                if (!v54)
                {
LABEL_72:
                  OUTLINED_FUNCTION_39_0();
                  if (v18)
                  {
LABEL_74:
                    v67 = sub_26666C168();
                    v68 = OUTLINED_FUNCTION_22_4(v67, qword_28156D7E8);
                    v69 = sub_26666C5F8();
                    if (os_log_type_enabled(v68, v69))
                    {
                      v70 = swift_slowAlloc();
                      v71 = swift_slowAlloc();
                      v85 = v71;
                      *v70 = 136315138;
                      v84 = v3;
                      v72 = sub_26666C318();
                      v74 = sub_2665BFC90(v72, v73, &v85);

                      *(v70 + 4) = v74;
                      _os_log_impl(&dword_266549000, v68, v69, "#filterByReference Encountered ordinal attribute that we don't handle yet: %s. Logging and moving on.", v70, 0xCu);
                      __swift_destroy_boxed_opaque_existential_1(v71);
                      OUTLINED_FUNCTION_4_1();
                      OUTLINED_FUNCTION_4_1();
                    }

                    goto LABEL_43;
                  }

LABEL_101:
                  OUTLINED_FUNCTION_1_1(&qword_28156C150);
                  goto LABEL_74;
                }

                v24 = v54;
                OUTLINED_FUNCTION_39_0();
                if (!v18)
                {
                  goto LABEL_103;
                }

                goto LABEL_63;
              default:
                goto LABEL_107;
            }
          }

          v21 = (v85 & 0xC000000000000001);
          OUTLINED_FUNCTION_20_13();
          sub_2665C4864();
          if ((v85 & 0xC000000000000001) != 0)
          {
            goto LABEL_96;
          }

          v47 = *(v85 + 32);
          break;
        default:
          goto LABEL_107;
      }

LABEL_49:
      v3 = v47;
      OUTLINED_FUNCTION_39_0();
      if (!v18)
      {
        OUTLINED_FUNCTION_1_1(&qword_28156C150);
      }

      v48 = sub_26666C168();
      v49 = OUTLINED_FUNCTION_22_4(v48, qword_28156D7E8);
      v50 = sub_26666C5E8();
      if (OUTLINED_FUNCTION_7_2(v50))
      {
        v51 = OUTLINED_FUNCTION_20();
        *v51 = 0;
        _os_log_impl(&dword_266549000, v49, v50, "#filterByReference Filtering for first event(s)", v51, 2u);
        OUTLINED_FUNCTION_4_1();
      }

      if (sub_2665C485C())
      {
        if (sub_2665C485C())
        {
          OUTLINED_FUNCTION_20_13();
          sub_2665C4864();
          if (v21)
          {
            v52 = MEMORY[0x266788B60](0, v11);
          }

          else
          {
            v52 = *(v11 + 32);
          }

          v75 = v52;
          if (sub_2665C485C())
          {
            if (sub_26654E0EC() >= 1)
            {
              if (!__OFSUB__(sub_2665C485C(), 1))
              {
                sub_2665C4868();
                sub_266600784(0, 1, 0);
                v76 = v86;

                sub_2665EE358(v3, v76, v1, v77, v78, v79, v80, v81);
                goto LABEL_82;
              }

              goto LABEL_100;
            }

LABEL_99:
            __break(1u);
LABEL_100:
            __break(1u);
            goto LABEL_101;
          }

LABEL_106:
          __break(1u);
LABEL_107:
          JUMPOUT(0);
        }
      }

      else
      {
        __break(1u);
      }

      __break(1u);
      goto LABEL_99;
    }

    if ((v1 & 0xC000000000000001) != 0)
    {
      v13 = MEMORY[0x266788B60](i, v1);
    }

    else
    {
      if (i >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_84;
      }

      v13 = *(v1 + 8 * i + 32);
    }

    if (__OFADD__(i, 1))
    {
      break;
    }

    v14 = v13;
    sub_2665ED9D0();
    v16 = v15;

    if (v16)
    {
      sub_26666C868();
      sub_26666C8A8();
      sub_26666C8B8();
      sub_26666C878();
    }

    else
    {
    }
  }

  __break(1u);
LABEL_84:
  __break(1u);
LABEL_85:
  OUTLINED_FUNCTION_1_1(&qword_28156C150);
LABEL_21:
  v19 = sub_26666C168();
  v20 = OUTLINED_FUNCTION_22_4(v19, qword_28156D7E8);
  v21 = sub_26666C618();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = OUTLINED_FUNCTION_20();
    *v22 = 0;
    _os_log_impl(&dword_266549000, v20, v21, "[filterByReference] Filtering for next event", v22, 2u);
    OUTLINED_FUNCTION_4_1();
  }

  v23 = sub_266668CF8();
  v24 = &v82;
  MEMORY[0x28223BE20](v23);
  *(&v82 - 2) = v10;
  *(&v82 - 1) = 0x408C200000000000;
  sub_26656A4A4(sub_2665EF854, (&v82 - 4), v11);
  if (v25)
  {
    v21 = v25;
    sub_2665EF0C8(&v86, v21);
    v27 = v26;
    v28 = sub_2665C485C();
    v24 = v28 - v27;
    if (v28 < v27)
    {
      __break(1u);
    }

    else if ((v27 & 0x8000000000000000) == 0)
    {
      v11 = v28;
      if (sub_26654E0EC() >= v28)
      {
        v29 = __OFSUB__(0, v24);
        v24 = -v24;
        if (!v29)
        {
          if (!__OFADD__(sub_2665C485C(), v24))
          {
            sub_2665C4868();
            sub_266600784(v27, v11, 0);
            sub_2665EE358(v21, v86, v1, v30, v31, v32, v33, v34);

            goto LABEL_42;
          }

LABEL_90:
          __break(1u);
LABEL_91:
          __break(1u);
          goto LABEL_92;
        }

LABEL_89:
        __break(1u);
        goto LABEL_90;
      }

LABEL_88:
      __break(1u);
      goto LABEL_89;
    }

    __break(1u);
    goto LABEL_88;
  }

  v37 = sub_26666C148();
  v38 = sub_26666C5F8();
  if (OUTLINED_FUNCTION_7_2(v38))
  {
    v21 = OUTLINED_FUNCTION_20();
    *v21 = 0;
    _os_log_impl(&dword_266549000, v37, v38, "[filterByReference] Ordinal filter did not find anything, using first element", v21, 2u);
    OUTLINED_FUNCTION_4_1();
  }

  if (!sub_2665C485C())
  {
    goto LABEL_91;
  }

  if (sub_2665C485C())
  {
    OUTLINED_FUNCTION_20_13();
    sub_2665C4864();
    if ((v11 & 0xC000000000000001) == 0)
    {
      v39 = *(v11 + 32);
      goto LABEL_38;
    }
  }

  else
  {
LABEL_92:
    __break(1u);
  }

  v39 = MEMORY[0x266788B60](0, v11);
LABEL_38:
  v40 = v39;
  if (!sub_2665C485C())
  {
    __break(1u);
LABEL_103:
    OUTLINED_FUNCTION_1_1(&qword_28156C150);
LABEL_63:
    v55 = sub_26666C168();
    v56 = OUTLINED_FUNCTION_22_4(v55, qword_28156D7E8);
    v57 = sub_26666C5E8();
    if (OUTLINED_FUNCTION_7_2(v57))
    {
      v58 = OUTLINED_FUNCTION_20();
      *v58 = 0;
      _os_log_impl(&dword_266549000, v56, v57, "#filterByReference Filtering for last event(s)", v58, 2u);
      OUTLINED_FUNCTION_4_1();
    }

    if (sub_2665C485C())
    {
      if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v11 & 0x8000000000000000) != 0 || (v11 & 0x4000000000000000) != 0)
      {
        v11 = sub_2665A1DCC();
      }

      v59 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v59)
      {
        v60 = v59 - 1;
        v61 = *((v11 & 0xFFFFFFFFFFFFFF8) + 8 * v60 + 0x20);
        *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10) = v60;

        sub_2665EE358(v24, v11, v1, v62, v63, v64, v65, v66);
LABEL_82:

        goto LABEL_43;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_106;
  }

  if (sub_26654E0EC() < 1)
  {
    __break(1u);
LABEL_95:
    __break(1u);
LABEL_96:
    v47 = MEMORY[0x266788B60](0, v11);
    goto LABEL_49;
  }

  if (__OFSUB__(sub_2665C485C(), 1))
  {
    goto LABEL_95;
  }

  sub_2665C4868();
  sub_266600784(0, 1, 0);
  sub_2665EE358(v40, v86, v1, v41, v42, v43, v44, v45);

LABEL_42:

  (*(v82 + 8))(v10, v83);
LABEL_43:
  OUTLINED_FUNCTION_27_0();
}

uint64_t sub_2665EC4D0(uint64_t a1, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v2)
  {
    return sub_26666C408();
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2665EC590@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v5 = *(a1 + 16);
  v6 = a2(0);
  v7 = v6;
  if (v5)
  {
    (*(*(v6 - 8) + 16))(a3, a1 + ((*(*(v6 - 8) + 80) + 32) & ~*(*(v6 - 8) + 80)), v6);
    v8 = 0;
  }

  else
  {
    v8 = 1;
  }

  return __swift_storeEnumTagSinglePayload(a3, v8, 1, v7);
}

uint64_t sub_2665EC694@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X1>, void (*a3)(void)@<X2>, uint64_t a4@<X8>)
{
  v7 = *(a1 + 16);
  v8 = a2(0);
  v9 = v8;
  if (v7)
  {
    sub_2665EF7DC(a1 + ((*(*(v8 - 8) + 80) + 32) & ~*(*(v8 - 8) + 80)), a4, a3);
    v10 = 0;
  }

  else
  {
    v10 = 1;
  }

  return __swift_storeEnumTagSinglePayload(a4, v10, 1, v9);
}

uint64_t INCalendarEvent.id.getter()
{
  result = sub_26659A29C(v0, &selRef_eventIdentifier);
  if (!v2)
  {
    return 0x3E6C696E3CLL;
  }

  return result;
}

void sub_2665EC78C(uint64_t (*a1)(id *), uint64_t a2, uint64_t a3)
{
  v14[2] = MEMORY[0x277D84F90];
  v6 = sub_2665C485C();
  v7 = 0;
  v8 = a3 & 0xC000000000000001;
  v12 = a3;
  v13 = a3 & 0xFFFFFFFFFFFFFF8;
  while (1)
  {
    if (v6 == v7)
    {

      return;
    }

    if (v8)
    {
      v9 = MEMORY[0x266788B60](v7, a3);
    }

    else
    {
      if (v7 >= *(v13 + 16))
      {
        goto LABEL_16;
      }

      v9 = *(a3 + 8 * v7 + 32);
    }

    v10 = v9;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    v14[0] = v9;
    v11 = a1(v14);
    if (v3)
    {

      return;
    }

    if (v11)
    {
      sub_26666C868();
      sub_26666C8A8();
      a3 = v12;
      sub_26666C8B8();
      sub_26666C878();
    }

    else
    {
    }

    ++v7;
  }

  __break(1u);
LABEL_16:
  __break(1u);
}

uint64_t sub_2665EC908(uint64_t a1)
{
  if (sub_2665EC938())
  {
    v1 = 0;
  }

  else
  {
    v1 = sub_2665ECA68() ^ 1;
  }

  return v1 & 1;
}

id sub_2665EC938()
{
  v1 = [v0 dateTimeRange];
  v2 = v1;
  if (v1)
  {
    v3 = [v1 allDay];

    if (v3)
    {
      v2 = [v3 BOOLValue];
    }

    else
    {
      return 0;
    }
  }

  return v2;
}

uint64_t sub_2665EC9BC(uint64_t a1)
{
  v2 = v1;
  v4 = sub_2665B0ECC(v2);
  if (!v4)
  {
    return MEMORY[0x277D84F90];
  }

  v5 = v4;
  MEMORY[0x28223BE20](v4);
  v9[2] = a1;
  sub_2665C90F0(sub_2665EF838, v9, v5);
  v7 = v6;

  return v7;
}

id sub_2665ECA68()
{
  v1 = [v0 isContactBirthday];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = [v1 BOOLValue];

  return v3;
}

void sub_2665ECAC4()
{
  OUTLINED_FUNCTION_28_0();
  v4 = v0;
  v5 = sub_266668E68();
  OUTLINED_FUNCTION_3_0();
  v52 = v6;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_1_0();
  v51 = v9 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007D140, &qword_26666F140);
  v11 = OUTLINED_FUNCTION_3_3(v10);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_10_5();
  v14 = v12 - v13;
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_0_27();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_27_9();
  MEMORY[0x28223BE20](v17);
  v19 = &v48 - v18;
  v20 = sub_266668D38();
  OUTLINED_FUNCTION_3_0();
  v53 = v21;
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_10_5();
  v50 = v23 - v24;
  OUTLINED_FUNCTION_12_7();
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_16_13();
  v26 = [v4 dateTimeRange];
  if (!v26)
  {
    OUTLINED_FUNCTION_6_17(v19);
LABEL_8:
    v31 = v19;
LABEL_18:
    sub_26656CAEC(v31, &qword_28007D140, &qword_26666F140);
    goto LABEL_19;
  }

  v27 = v26;
  v49 = v5;
  v28 = [v26 startDate];

  if (v28)
  {
    sub_266668CE8();

    v29 = 0;
  }

  else
  {
    v29 = 1;
  }

  OUTLINED_FUNCTION_8_20(v3, v29);
  sub_2665EF8D0(v3, v19, &qword_28007D140, &qword_26666F140);
  OUTLINED_FUNCTION_3_29(v19);
  if (v30)
  {
    goto LABEL_8;
  }

  v32 = v19;
  v33 = *(v53 + 32);
  v33(v2, v32, v20);
  v34 = [v4 dateTimeRange];
  if (!v34)
  {
    v38 = OUTLINED_FUNCTION_9_18();
    v39(v38);
    OUTLINED_FUNCTION_6_17(v1);
LABEL_17:
    v31 = v1;
    goto LABEL_18;
  }

  v35 = v34;
  v36 = [v34 endDate];

  if (v36)
  {
    sub_266668CE8();

    v37 = 0;
  }

  else
  {
    v37 = 1;
  }

  v40 = v49;
  v41 = v53;
  OUTLINED_FUNCTION_8_20(v14, v37);
  sub_2665EF8D0(v14, v1, &qword_28007D140, &qword_26666F140);
  OUTLINED_FUNCTION_3_29(v1);
  if (v30)
  {
    v42 = OUTLINED_FUNCTION_9_18();
    v43(v42);
    goto LABEL_17;
  }

  v44 = v50;
  v33(v50, v1, v20);
  v45 = v51;
  sub_266668E28();
  sub_266644110(v2, v44, v45);
  (*(v52 + 8))(v45, v40);
  v46 = *(v41 + 8);
  v46(v44, v20);
  v47 = OUTLINED_FUNCTION_9_18();
  (v46)(v47);
LABEL_19:
  OUTLINED_FUNCTION_27_0();
}

void static INCalendarEvent.< infix(_:_:)()
{
  OUTLINED_FUNCTION_28_0();
  v4 = v3;
  v6 = v5;
  v7 = sub_266668D38();
  OUTLINED_FUNCTION_3_0();
  v100 = v8;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_10_5();
  OUTLINED_FUNCTION_26_6();
  v11 = MEMORY[0x28223BE20](v10);
  v13 = &v96 - v12;
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v96 - v15;
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_27_9();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_0_27();
  MEMORY[0x28223BE20](v18);
  v20 = &v96 - v19;
  v21 = [v6 dateTimeRange];
  if (v21)
  {
    v101 = v21;
    v99 = [v4 dateTimeRange];
    if (v99)
    {
      v97 = v4;
      v98 = v7;
      v22 = v101;
      v23 = [v101 startDate];
      if (v23)
      {
        v24 = v23;
        sub_266668CE8();

        v25 = v99;
        v26 = [v99 startDate];
        if (v26)
        {
          v27 = v26;
          sub_266668CE8();

          v28 = v98;
          if (qword_28156C150 != -1)
          {
            OUTLINED_FUNCTION_1_1(&qword_28156C150);
          }

          v29 = sub_26666C168();
          v30 = OUTLINED_FUNCTION_22_4(v29, qword_28156D7E8);
          v31 = sub_26666C5E8();
          if (OUTLINED_FUNCTION_7_2(v31))
          {
            v32 = OUTLINED_FUNCTION_20();
            OUTLINED_FUNCTION_28_7(v32);
            _os_log_impl(&dword_266549000, v30, v31, "#INCalendarEvent comparator comparing lhs startDate and rhs startDate.", v27, 2u);
            OUTLINED_FUNCTION_4_1();
          }

          sub_266668CA8();
          v33 = *(v100 + 8);
          v33(v0, v28);
          v33(v20, v28);
          goto LABEL_69;
        }

        v47 = [v25 rTitle];
        v39 = v98;
        if (v47)
        {
          v48 = v47;
          sub_266668CE8();

          if (qword_28156C150 != -1)
          {
            OUTLINED_FUNCTION_1_1(&qword_28156C150);
          }

          v49 = sub_26666C168();
          v50 = OUTLINED_FUNCTION_22_4(v49, qword_28156D7E8);
          v51 = sub_26666C5E8();
          if (OUTLINED_FUNCTION_7_2(v51))
          {
            v52 = OUTLINED_FUNCTION_20();
            OUTLINED_FUNCTION_28_7(v52);
            OUTLINED_FUNCTION_7_21(&dword_266549000, v53, v54, "#INCalendarEvent comparator comparing lhs startDate and rhs endDate.");
            OUTLINED_FUNCTION_4_1();
          }

          sub_266668CA8();
          v46 = *(v100 + 8);
          v46(v2, v39);
          v55 = v20;
          goto LABEL_32;
        }

        (*(v100 + 8))(v20, v98);

        goto LABEL_35;
      }

      v34 = [v22 endDate];
      if (!v34)
      {

LABEL_36:
        v4 = v97;
        goto LABEL_37;
      }

      v35 = v34;
      sub_266668CE8();

      v36 = v99;
      v37 = [v99 startDate];
      if (v37)
      {
        v38 = v37;
        sub_266668CE8();

        v39 = v98;
        if (qword_28156C150 != -1)
        {
          OUTLINED_FUNCTION_1_1(&qword_28156C150);
        }

        v40 = sub_26666C168();
        v41 = OUTLINED_FUNCTION_22_4(v40, qword_28156D7E8);
        v42 = sub_26666C5E8();
        if (OUTLINED_FUNCTION_7_2(v42))
        {
          v43 = OUTLINED_FUNCTION_20();
          OUTLINED_FUNCTION_28_7(v43);
          OUTLINED_FUNCTION_7_21(&dword_266549000, v44, v45, "#INCalendarEvent comparator comparing lhs endDate and rhs startDate.");
          OUTLINED_FUNCTION_4_1();
        }

        sub_266668CA8();
        v46 = *(v100 + 8);
        v46(v13, v39);
      }

      else
      {
        v56 = [v36 rTitle];
        v39 = v98;
        v57 = v36;
        if (!v56)
        {
          v65 = OUTLINED_FUNCTION_9_18();
          v66(v65);

LABEL_35:
          goto LABEL_36;
        }

        v58 = v56;
        sub_266668CE8();

        if (qword_28156C150 != -1)
        {
          OUTLINED_FUNCTION_1_1(&qword_28156C150);
        }

        v59 = sub_26666C168();
        v60 = OUTLINED_FUNCTION_22_4(v59, qword_28156D7E8);
        v61 = sub_26666C5E8();
        if (OUTLINED_FUNCTION_7_2(v61))
        {
          v62 = OUTLINED_FUNCTION_20();
          OUTLINED_FUNCTION_28_7(v62);
          OUTLINED_FUNCTION_7_21(&dword_266549000, v63, v64, "#INCalendarEvent comparator comparing lhs endDate and rhs endDate.");
          OUTLINED_FUNCTION_4_1();
        }

        sub_266668CA8();
        v46 = *(v100 + 8);
        v46(v1, v39);
      }

      v55 = v16;
LABEL_32:
      v46(v55, v39);
      goto LABEL_69;
    }
  }

LABEL_37:
  v67 = sub_26659A29C(v6, &selRef_title);
  if (v68)
  {
    v69 = sub_2665EC4D0(v67, v68);
    v71 = v70;

    if (v71)
    {
      v72 = sub_26659A29C(v4, &selRef_title);
      if (v73)
      {
        v74 = sub_2665EC4D0(v72, v73);
        v76 = v75;

        if (v76)
        {
          if (qword_28156C150 != -1)
          {
            OUTLINED_FUNCTION_1_1(&qword_28156C150);
          }

          v77 = sub_26666C168();
          v78 = OUTLINED_FUNCTION_22_4(v77, qword_28156D7E8);
          v79 = sub_26666C5E8();
          if (!OUTLINED_FUNCTION_7_2(v79))
          {
            goto LABEL_57;
          }

          v80 = OUTLINED_FUNCTION_20();
          *v80 = 0;
          v81 = "#INCalendarEvent comparator comparing alphabetically by title.";
LABEL_56:
          _os_log_impl(&dword_266549000, v78, v79, v81, v80, 2u);
          OUTLINED_FUNCTION_4_1();
LABEL_57:

          if (v69 != v74 || v71 != v76)
          {
            sub_26666CAC8();
          }

          goto LABEL_69;
        }
      }
    }
  }

  v82 = [v6 location];
  if (v82)
  {
    v83 = sub_2665EF644(v82, &selRef_name);
    if (v84)
    {
      v69 = sub_2665EC4D0(v83, v84);
      v71 = v85;

      if (v71)
      {
        v86 = [v4 location];
        if (v86)
        {
          v87 = sub_2665EF644(v86, &selRef_name);
          if (v88)
          {
            v74 = sub_2665EC4D0(v87, v88);
            v76 = v89;

            if (v76)
            {
              if (qword_28156C150 != -1)
              {
                OUTLINED_FUNCTION_1_1(&qword_28156C150);
              }

              v90 = sub_26666C168();
              v78 = OUTLINED_FUNCTION_22_4(v90, qword_28156D7E8);
              v79 = sub_26666C5E8();
              if (!OUTLINED_FUNCTION_7_2(v79))
              {
                goto LABEL_57;
              }

              v80 = OUTLINED_FUNCTION_20();
              *v80 = 0;
              v81 = "#INCalendarEvent comparator comparing alphabetically by location name.";
              goto LABEL_56;
            }
          }
        }
      }
    }
  }

  if (qword_28156C150 != -1)
  {
    OUTLINED_FUNCTION_1_1(&qword_28156C150);
  }

  v92 = sub_26666C168();
  v93 = OUTLINED_FUNCTION_22_4(v92, qword_28156D7E8);
  v94 = sub_26666C5F8();
  if (os_log_type_enabled(v93, v94))
  {
    v95 = OUTLINED_FUNCTION_20();
    *v95 = 0;
    _os_log_impl(&dword_266549000, v93, v94, "#INCalendarEvent comparator could not find parameters necessary for sorting - dateTimeRange, title, nor location name. Returning true.", v95, 2u);
    OUTLINED_FUNCTION_4_1();
  }

LABEL_69:
  OUTLINED_FUNCTION_27_0();
}

void sub_2665ED754(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_28_0();
  a19 = v21;
  a20 = v22;
  v23 = v20;
  v24 = sub_266668E68();
  OUTLINED_FUNCTION_3_0();
  v26 = v25;
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_1_0();
  v30 = v29 - v28;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007D140, &qword_26666F140);
  v32 = OUTLINED_FUNCTION_3_3(v31);
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_10_5();
  v35 = v33 - v34;
  MEMORY[0x28223BE20](v36);
  v38 = &a9 - v37;
  v39 = sub_266668D38();
  OUTLINED_FUNCTION_3_0();
  v41 = v40;
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_1_0();
  v45 = v44 - v43;
  v46 = [v23 dateTimeRange];
  if (!v46)
  {
    OUTLINED_FUNCTION_6_17(v38);
LABEL_8:
    sub_26656CAEC(v38, &qword_28007D140, &qword_26666F140);
    goto LABEL_9;
  }

  v47 = v46;
  v48 = [v46 startDate];

  if (v48)
  {
    sub_266668CE8();

    v49 = 0;
  }

  else
  {
    v49 = 1;
  }

  OUTLINED_FUNCTION_8_20(v35, v49);
  sub_2665EF8D0(v35, v38, &qword_28007D140, &qword_26666F140);
  OUTLINED_FUNCTION_3_29(v38);
  if (v50)
  {
    goto LABEL_8;
  }

  (*(v41 + 32))(v45, v38, v39);
  sub_266668E58();
  sub_266668DB8();
  (*(v26 + 8))(v30, v24);
  v51 = OUTLINED_FUNCTION_9_18();
  v52(v51);
LABEL_9:
  OUTLINED_FUNCTION_27_0();
}

void sub_2665ED9D0()
{
  OUTLINED_FUNCTION_28_0();
  v4 = v0;
  v5 = sub_266668E68();
  OUTLINED_FUNCTION_3_0();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_1_0();
  v11 = v10 - v9;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007D140, &qword_26666F140);
  v13 = OUTLINED_FUNCTION_3_3(v12);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_10_5();
  OUTLINED_FUNCTION_26_6();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_16_13();
  v15 = sub_266668D38();
  OUTLINED_FUNCTION_3_0();
  v34 = v16;
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_10_5();
  v20 = v18 - v19;
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_0_27();
  MEMORY[0x28223BE20](v22);
  v24 = &v33 - v23;
  v25 = [v4 dateTimeRange];
  if (!v25)
  {
    OUTLINED_FUNCTION_6_17(v2);
LABEL_8:
    sub_26656CAEC(v2, &qword_28007D140, &qword_26666F140);
    goto LABEL_9;
  }

  v26 = v25;
  v33 = v5;
  v27 = v7;
  v28 = [v25 startDate];

  if (v28)
  {
    sub_266668CE8();

    v29 = 0;
  }

  else
  {
    v29 = 1;
  }

  OUTLINED_FUNCTION_8_20(v3, v29);
  sub_2665EF8D0(v3, v2, &qword_28007D140, &qword_26666F140);
  OUTLINED_FUNCTION_3_29(v2);
  if (v30)
  {
    goto LABEL_8;
  }

  v31 = v34;
  (*(v34 + 32))(v24, v2, v15);
  sub_266668E58();
  sub_266668CF8();
  sub_266668DA8();
  v32 = *(v31 + 8);
  v32(v20, v15);
  (*(v27 + 8))(v11, v33);
  sub_2665EF878();
  sub_26666C298();
  v32(v1, v15);
  v32(v24, v15);
LABEL_9:
  OUTLINED_FUNCTION_27_0();
}

void sub_2665EDCDC()
{
  OUTLINED_FUNCTION_28_0();
  v4 = v0;
  v6 = v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28007DC90, &qword_266676EB0);
  v8 = OUTLINED_FUNCTION_3_3(v7);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_10_5();
  OUTLINED_FUNCTION_0_27();
  v10 = MEMORY[0x28223BE20](v9);
  v12 = &v41 - v11;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_26_6();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_25_8();
  v14 = sub_266668B08();
  OUTLINED_FUNCTION_3_0();
  v16 = v15;
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_10_5();
  v20 = v18 - v19;
  MEMORY[0x28223BE20](v21);
  v23 = &v41 - v22;
  v24 = [v4 dateTimeRange];
  if (!v24)
  {
    OUTLINED_FUNCTION_6_17(v2);
LABEL_8:
    v29 = v2;
LABEL_17:
    sub_26656CAEC(v29, &unk_28007DC90, &qword_266676EB0);
    goto LABEL_18;
  }

  v25 = v24;
  v42 = v6;
  v26 = [v24 startDateComponents];

  if (v26)
  {
    sub_266668A28();

    v27 = 0;
  }

  else
  {
    v27 = 1;
  }

  OUTLINED_FUNCTION_8_20(v3, v27);
  sub_2665EF8D0(v3, v2, &unk_28007DC90, &qword_266676EB0);
  OUTLINED_FUNCTION_3_29(v2);
  if (v28)
  {
    goto LABEL_8;
  }

  v30 = v16;
  v31 = *(v16 + 32);
  v31(v23, v2, v14);
  v32 = [v42 dateTimeRange];
  if (!v32)
  {
    OUTLINED_FUNCTION_6_17(v12);
LABEL_16:
    v36 = OUTLINED_FUNCTION_34_2();
    v37(v36);
    v29 = v12;
    goto LABEL_17;
  }

  v33 = v32;
  v34 = [v32 startDateComponents];

  if (v34)
  {
    sub_266668A28();

    v35 = 0;
  }

  else
  {
    v35 = 1;
  }

  OUTLINED_FUNCTION_8_20(v1, v35);
  sub_2665EF8D0(v1, v12, &unk_28007DC90, &qword_266676EB0);
  OUTLINED_FUNCTION_3_29(v12);
  if (v28)
  {
    goto LABEL_16;
  }

  v31(v20, v12, v14);
  sub_266645504(v20);
  v38 = *(v30 + 8);
  v39 = OUTLINED_FUNCTION_9_18();
  v38(v39);
  v40 = OUTLINED_FUNCTION_34_2();
  v38(v40);
LABEL_18:
  OUTLINED_FUNCTION_27_0();
}

uint64_t sub_2665EE038(void **a1, uint64_t a2, double a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007D140, &qword_26666F140);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v8 = v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = v28 - v9;
  v11 = sub_266668D38();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v13);
  v18 = v28 - v17;
  v19 = *a1;
  if ((sub_2665EC908(v16) & 1) == 0)
  {
    goto LABEL_9;
  }

  v20 = [v19 dateTimeRange];
  if (!v20)
  {
    __swift_storeEnumTagSinglePayload(v10, 1, 1, v11);
LABEL_8:
    sub_26656CAEC(v10, &qword_28007D140, &qword_26666F140);
LABEL_9:
    v24 = 0;
    return v24 & 1;
  }

  v21 = v20;
  v28[1] = v3;
  v22 = [v20 startDate];

  if (v22)
  {
    sub_266668CE8();

    v23 = 0;
  }

  else
  {
    v23 = 1;
  }

  __swift_storeEnumTagSinglePayload(v8, v23, 1, v11);
  sub_2665EF8D0(v8, v10, &qword_28007D140, &qword_26666F140);
  if (__swift_getEnumTagSinglePayload(v10, 1, v11) == 1)
  {
    goto LABEL_8;
  }

  (*(v12 + 32))(v18, v10, v11);
  sub_2665EF878();
  if (sub_26666C298())
  {
    sub_266668C78();
    v26 = sub_26666C298();
    v27 = *(v12 + 8);
    v27(v15, v11);
    v27(v18, v11);
    v24 = v26 ^ 1;
  }

  else
  {
    (*(v12 + 8))(v18, v11);
    v24 = 1;
  }

  return v24 & 1;
}

unint64_t sub_2665EE358(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a2;
  i = a1;
  sub_2665ED754(a1, a2, a3, a4, a5, a6, a7, a8, v78, v80, v82, v84, v85, v87, v89, v91, v93, v95, v97, v101);
  k = &unk_26666E000;
  v11 = MEMORY[0x277D84F90];
  if (v12)
  {
    if (qword_28156C150 != -1)
    {
LABEL_102:
      swift_once();
    }

    v13 = sub_26666C168();
    __swift_project_value_buffer(v13, qword_28156D7E8);
    v14 = sub_26666C148();
    v15 = sub_26666C5E8();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_266549000, v14, v15, "#filterByReference Found event starting today", v16, 2u);
      MEMORY[0x266789690](v16, -1, -1);
    }

    v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28007DE50, &unk_26666E360);
    inited = swift_initStackObject();
    v83 = *(k + 80);
    *(inited + 16) = v83;
    *(inited + 32) = i;
    v98 = MEMORY[0x277D84F90];
    k = sub_2665C485C();
    v18 = i;
    for (i = 0; k != i; ++i)
    {
      if ((v8 & 0xC000000000000001) != 0)
      {
        v19 = MEMORY[0x266788B60](i, v8);
      }

      else
      {
        if (i >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_92;
        }

        v19 = *(v8 + 8 * i + 32);
      }

      if (__OFADD__(i, 1))
      {
        __break(1u);
        goto LABEL_91;
      }

      v20 = v19;
      sub_2665ED754(v20, v21, v22, v23, v24, v25, v26, v27, v79, v81, v83, *(&v83 + 1), v86, v88, v90, v92, v94, v96, v98, v102);
      v29 = v28;

      if (v29)
      {
        sub_26666C868();
        sub_26666C8A8();
        sub_26666C8B8();
        sub_26666C878();
      }

      else
      {
      }
    }

    sub_2665C288C(v98);
    v8 = inited;
    i = sub_2665C485C();
    k = 0;
    v39 = inited & 0xC000000000000001;
    while (i != k)
    {
      if (v39)
      {
        v40 = MEMORY[0x266788B60](k, v8);
      }

      else
      {
        if (k >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_99;
        }

        v40 = *(v8 + 8 * k + 32);
      }

      v41 = v40;
      if (__OFADD__(k, 1))
      {
        goto LABEL_98;
      }

      if ((sub_2665EC938() & 1) == 0)
      {

        v71 = sub_26666C148();
        v72 = sub_26666C5E8();
        if (os_log_type_enabled(v71, v72))
        {
          v73 = swift_slowAlloc();
          *v73 = 0;
          _os_log_impl(&dword_266549000, v71, v72, "#filterByReference Returning single timed event today", v73, 2u);
          MEMORY[0x266789690](v73, -1, -1);
        }

        v49 = swift_allocObject();
        *(v49 + 16) = v83;
        *(v49 + 32) = v41;
        return v49;
      }

      ++k;
    }

    v56 = sub_26666C148();
    v57 = sub_26666C5E8();
    if (os_log_type_enabled(v56, v57))
    {
      v58 = swift_slowAlloc();
      *v58 = 0;
      _os_log_impl(&dword_266549000, v56, v57, "#filterByReference Returning all events today", v58, 2u);
      MEMORY[0x266789690](v58, -1, -1);
    }

    v59 = 0;
    v100 = MEMORY[0x277D84F90];
    while (i != v59)
    {
      if (v39)
      {
        v60 = MEMORY[0x266788B60](v59, v8);
      }

      else
      {
        if (v59 >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_101;
        }

        v60 = *(v8 + 8 * v59 + 32);
      }

      if (__OFADD__(v59, 1))
      {
        goto LABEL_100;
      }

      v61 = v60;
      sub_2665ED754(v61, v62, v63, v64, v65, v66, v67, v68, v79, v81, v83, *(&v83 + 1), v86, v88, v90, v92, v94, v96, v100, v102);
      v70 = v69;

      if (v70)
      {
        sub_26666C868();
        sub_26666C8A8();
        sub_26666C8B8();
        sub_26666C878();
      }

      else
      {
      }

      ++v59;
    }

    return v100;
  }

  else
  {
    if (qword_28156C150 != -1)
    {
      swift_once();
    }

    v30 = sub_26666C168();
    __swift_project_value_buffer(v30, qword_28156D7E8);
    v31 = sub_26666C148();
    v32 = sub_26666C5E8();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      _os_log_impl(&dword_266549000, v31, v32, "#filterByReference Getting events occurring on subsequent day", v33, 2u);
      MEMORY[0x266789690](v33, -1, -1);
    }

    v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28007DE50, &unk_26666E360);
    v34 = swift_initStackObject();
    *(v34 + 16) = xmmword_26666E050;
    *(v34 + 32) = i;
    k = sub_2665C485C();
    i = i;
    for (j = 0; k != j; ++j)
    {
      if ((v8 & 0xC000000000000001) != 0)
      {
        v36 = MEMORY[0x266788B60](j, v8);
      }

      else
      {
        if (j >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_93;
        }

        v36 = *(v8 + 8 * j + 32);
      }

      v37 = v36;
      if (__OFADD__(j, 1))
      {
LABEL_91:
        __break(1u);
LABEL_92:
        __break(1u);
LABEL_93:
        __break(1u);
LABEL_94:
        __break(1u);
LABEL_95:
        __break(1u);
LABEL_96:
        __break(1u);
LABEL_97:
        __break(1u);
LABEL_98:
        __break(1u);
LABEL_99:
        __break(1u);
LABEL_100:
        __break(1u);
LABEL_101:
        __break(1u);
        goto LABEL_102;
      }

      sub_2665EDCDC();
      if (v38)
      {
        sub_26666C868();
        sub_26666C8A8();
        sub_26666C8B8();
        sub_26666C878();
      }

      else
      {
      }
    }

    sub_2665C288C(v11);
    v8 = v34;
    v42 = MEMORY[0x277D84F90];
    v99 = MEMORY[0x277D84F90];
    i = sub_2665C485C();
    v43 = 0;
    v44 = v8 & 0xC000000000000001;
    while (i != v43)
    {
      if (v44)
      {
        v45 = MEMORY[0x266788B60](v43, v8);
      }

      else
      {
        if (v43 >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_95;
        }

        v45 = *(v8 + 8 * v43 + 32);
      }

      k = v45;
      if (__OFADD__(v43, 1))
      {
        goto LABEL_94;
      }

      if (sub_2665EC938())
      {
      }

      else
      {
        sub_26666C868();
        sub_26666C8A8();
        sub_26666C8B8();
        sub_26666C878();
      }

      ++v43;
    }

    for (k = 0; i != k; ++k)
    {
      if (v44)
      {
        v46 = MEMORY[0x266788B60](k, v8);
      }

      else
      {
        if (k >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_97;
        }

        v46 = *(v8 + 8 * k + 32);
      }

      if (__OFADD__(k, 1))
      {
        goto LABEL_96;
      }

      v47 = v46;
      v48 = sub_2665EC938();

      if (v48)
      {
        sub_26666C868();
        sub_26666C8A8();
        sub_26666C8B8();
        sub_26666C878();
      }

      else
      {
      }
    }

    v49 = v42;
    if (sub_2665C485C())
    {
      sub_2665C4864();
      if ((v99 & 0xC000000000000001) != 0)
      {
        v50 = MEMORY[0x266788B60](0, v99);
      }

      else
      {
        v50 = *(v99 + 32);
      }

      v51 = v50;

      v52 = sub_26666C148();
      v53 = sub_26666C5E8();
      if (os_log_type_enabled(v52, v53))
      {
        v54 = swift_slowAlloc();
        *v54 = 0;
        _os_log_impl(&dword_266549000, v52, v53, "#filterByReference Returning timed event + all day events", v54, 2u);
        MEMORY[0x266789690](v54, -1, -1);
      }

      v55 = swift_allocObject();
      *(v55 + 16) = xmmword_26666E050;
      *(v55 + 32) = v51;
      v100 = v55;
      sub_2665C288C(v49);
      return v100;
    }

    v74 = sub_26666C148();
    v75 = sub_26666C5E8();
    if (os_log_type_enabled(v74, v75))
    {
      v76 = swift_slowAlloc();
      *v76 = 0;
      _os_log_impl(&dword_266549000, v74, v75, "#filterByReference Returning all day events", v76, 2u);
      MEMORY[0x266789690](v76, -1, -1);
    }
  }

  return v49;
}

BOOL sub_2665EEC64(unint64_t a1)
{
  if (a1 >> 62)
  {
    goto LABEL_20;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_26666C768())
  {
    OUTLINED_FUNCTION_20_13();
    sub_2665C4864();
    if ((a1 & 0xC000000000000001) != 0)
    {
      MEMORY[0x266788B60](0, a1);
    }

    else
    {
      v7 = *(a1 + 32);
    }

    OUTLINED_FUNCTION_21_7();
    while (1)
    {
      v8 = i == v2;
      if (i == v2)
      {
LABEL_15:
        v10 = v1;
LABEL_17:

        return v8;
      }

      if ((a1 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x266788B60](v2, a1);
      }

      else
      {
        if (v2 >= *(v20 + 16))
        {
          goto LABEL_19;
        }

        v9 = *(a1 + 8 * v2 + 32);
      }

      v10 = v9;
      if (__OFADD__(v2, 1))
      {
        break;
      }

      if ((sub_2665EC938() & 1) != 0 || (v11 = [v1 (v4 + 677)], v12 = OUTLINED_FUNCTION_23_10(), sub_2665D4DEC(v12, v3), v14 = v13, v3, v12, (v14 & 1) == 0))
      {

        goto LABEL_17;
      }

      v15 = [v1 (v4 + 677)];
      v16 = OUTLINED_FUNCTION_23_10();
      sub_2665D4DF8(v16, v3);
      v18 = v17;

      ++v2;
      if ((v18 & 1) == 0)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    ;
  }

  return 0;
}

BOOL sub_2665EEE04(unint64_t a1)
{
  if (a1 >> 62)
  {
    goto LABEL_19;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_26666C768())
  {
    OUTLINED_FUNCTION_20_13();
    sub_2665C4864();
    if ((a1 & 0xC000000000000001) != 0)
    {
      MEMORY[0x266788B60](0, a1);
    }

    else
    {
      v7 = *(a1 + 32);
    }

    OUTLINED_FUNCTION_21_7();
    while (1)
    {
      v8 = i == v2;
      if (i == v2)
      {
        goto LABEL_16;
      }

      if ((a1 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x266788B60](v2, a1);
      }

      else
      {
        if (v2 >= *(v16 + 16))
        {
          goto LABEL_18;
        }

        v9 = *(a1 + 8 * v2 + 32);
      }

      v10 = v9;
      if (__OFADD__(v2, 1))
      {
        break;
      }

      if (sub_2665EC938())
      {

LABEL_16:
        return v8;
      }

      v11 = [v1 (v4 + 677)];
      v12 = OUTLINED_FUNCTION_23_10();
      sub_2665D4DEC(v12, v3);
      v14 = v13;

      ++v2;
      if ((v14 & 1) == 0)
      {
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    ;
  }

  return 0;
}

uint64_t sub_2665EEF64()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007E638, &unk_266676EC0);
  sub_2666697B8();
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_26666EED0;
  sub_26659A29C(v0, &selRef_title);
  if (qword_28007CE58 != -1)
  {
    swift_once();
  }

  sub_26666A1C8();
  sub_266669798();
  return v1;
}

uint64_t sub_2665EF09C@<X0>(uint64_t *a1@<X8>)
{
  result = INCalendarEvent.id.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

void sub_2665EF0C8(unint64_t *a1, void *a2)
{
  v4 = *a1;
  v5 = a2;
  v6 = sub_2665EF3A4(v4, v5);
  v8 = v6;
  if (v2)
  {
    goto LABEL_50;
  }

  if (v7)
  {
    sub_2665C485C();
LABEL_50:

    return;
  }

  v32 = a1;
  v9 = v6 + 1;
  if (!__OFADD__(v6, 1))
  {
    while (1)
    {
      if (v4 >> 62)
      {
        v10 = sub_26666C768();
      }

      else
      {
        v10 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (v9 == v10)
      {
        goto LABEL_50;
      }

      if ((v4 & 0xC000000000000001) != 0)
      {
        v11 = MEMORY[0x266788B60](v9, v4);
      }

      else
      {
        if ((v9 & 0x8000000000000000) != 0)
        {
          __break(1u);
LABEL_52:
          __break(1u);
LABEL_53:
          __break(1u);
LABEL_54:
          __break(1u);
LABEL_55:
          __break(1u);
LABEL_56:
          __break(1u);
LABEL_57:
          __break(1u);
LABEL_58:
          __break(1u);
          goto LABEL_59;
        }

        if (v9 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_52;
        }

        v11 = *(v4 + 8 * v9 + 32);
      }

      v12 = v11;
      v13 = sub_26659A29C(v11, &selRef_eventIdentifier);
      v15 = v14;
      v16 = sub_26659A29C(v5, &selRef_eventIdentifier);
      v18 = v17;
      if (!v15)
      {
        break;
      }

      if (!v17)
      {

LABEL_23:

        goto LABEL_24;
      }

      if (v13 == v16 && v15 == v17)
      {

        goto LABEL_43;
      }

      v20 = sub_26666CAC8();

      if (v20)
      {
        goto LABEL_43;
      }

LABEL_24:
      if (v8 != v9)
      {
        if ((v4 & 0xC000000000000001) != 0)
        {
          v21 = MEMORY[0x266788B60](v8, v4);
          v22 = MEMORY[0x266788B60](v9, v4);
        }

        else
        {
          if ((v8 & 0x8000000000000000) != 0)
          {
            goto LABEL_56;
          }

          v23 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v8 >= v23)
          {
            goto LABEL_57;
          }

          if (v9 >= v23)
          {
            goto LABEL_58;
          }

          v24 = *(v4 + 32 + 8 * v9);
          v21 = *(v4 + 32 + 8 * v8);
          v22 = v24;
        }

        v25 = v22;
        if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v4 & 0x8000000000000000) != 0 || (v4 & 0x4000000000000000) != 0)
        {
          v4 = sub_2665A1DCC();
          v26 = (v4 >> 62) & 1;
        }

        else
        {
          LODWORD(v26) = 0;
        }

        v27 = v4 & 0xFFFFFFFFFFFFFF8;
        v28 = *((v4 & 0xFFFFFFFFFFFFFF8) + 8 * v8 + 0x20);
        *((v4 & 0xFFFFFFFFFFFFFF8) + 8 * v8 + 0x20) = v25;

        if ((v4 & 0x8000000000000000) != 0 || v26)
        {
          v4 = sub_2665A1DCC();
          v27 = v4 & 0xFFFFFFFFFFFFFF8;
          if ((v9 & 0x8000000000000000) != 0)
          {
LABEL_49:
            __break(1u);
            goto LABEL_50;
          }
        }

        else if ((v9 & 0x8000000000000000) != 0)
        {
          goto LABEL_49;
        }

        if (v9 >= *(v27 + 16))
        {
          goto LABEL_55;
        }

        v29 = v27 + 8 * v9;
        v30 = *(v29 + 32);
        *(v29 + 32) = v21;

        *v32 = v4;
      }

      v31 = __OFADD__(v8++, 1);
      if (v31)
      {
        goto LABEL_54;
      }

LABEL_43:
      v31 = __OFADD__(v9++, 1);
      if (v31)
      {
        goto LABEL_53;
      }
    }

    if (!v18)
    {
      goto LABEL_43;
    }

    goto LABEL_23;
  }

LABEL_59:
  __break(1u);
}

uint64_t sub_2665EF3A4(uint64_t a1, void *a2)
{
  result = sub_2665C485C();
  v16 = result;
  v4 = 0;
  while (1)
  {
    if (v16 == v4)
    {

      return 0;
    }

    if ((a1 & 0xC000000000000001) == 0)
    {
      break;
    }

    v5 = MEMORY[0x266788B60](v4, a1);
LABEL_6:
    v6 = v5;
    v7 = sub_26659A29C(v5, &selRef_eventIdentifier);
    v9 = v8;
    v10 = sub_26659A29C(a2, &selRef_eventIdentifier);
    if (!v9)
    {
      if (!v11)
      {

        return v4;
      }

LABEL_16:

      goto LABEL_17;
    }

    if (!v11)
    {
      goto LABEL_16;
    }

    if (v7 == v10 && v9 == v11)
    {

      return v4;
    }

    v13 = sub_26666CAC8();

    if (v13)
    {

      return v4;
    }

LABEL_17:
    if (__OFADD__(v4++, 1))
    {
      goto LABEL_25;
    }
  }

  if (v4 < *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v5 = *(a1 + 8 * v4 + 32);
    goto LABEL_6;
  }

  __break(1u);
LABEL_25:
  __break(1u);
  return result;
}

uint64_t sub_2665EF594(uint64_t a1)
{
  result = sub_2665EF5D8(&qword_28007ED80, &protocol conformance descriptor for INCalendarEvent);
  *(a1 + 24) = result;
  return result;
}

uint64_t sub_2665EF5D8(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_266552C44(255, &qword_28156C110, 0x277CD3AD8);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2665EF644(void *a1, SEL *a2)
{
  v3 = [a1 *a2];

  if (v3)
  {
    sub_26666C308();
  }

  return OUTLINED_FUNCTION_34_2();
}

uint64_t sub_2665EF6AC(void *a1)
{
  v2 = [a1 attendees];

  if (!v2)
  {
    return 0;
  }

  sub_266552C44(0, &unk_28007DC70, 0x277CC5A70);
  v3 = sub_26666C498();

  return v3;
}

unint64_t sub_2665EF724()
{
  result = qword_28007ED90;
  if (!qword_28007ED90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28007ED88, &qword_266676EB8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007ED90);
  }

  return result;
}

unint64_t sub_2665EF788()
{
  result = qword_28007ED98;
  if (!qword_28007ED98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007ED98);
  }

  return result;
}

uint64_t sub_2665EF7DC(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_18_2();
  v4 = OUTLINED_FUNCTION_25();
  v5(v4);
  return a2;
}

unint64_t sub_2665EF878()
{
  result = qword_28007EDA0[0];
  if (!qword_28007EDA0[0])
  {
    sub_266668D38();
    result = swift_getWitnessTable();
    atomic_store(result, qword_28007EDA0);
  }

  return result;
}

uint64_t sub_2665EF8D0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_18_2();
  v5 = OUTLINED_FUNCTION_25();
  v6(v5);
  return a2;
}

uint64_t OUTLINED_FUNCTION_6_17(uint64_t a1)
{

  return __swift_storeEnumTagSinglePayload(a1, 1, 1, v1);
}

void OUTLINED_FUNCTION_7_21(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v6, a4, v4, 2u);
}

uint64_t OUTLINED_FUNCTION_8_20(uint64_t a1, uint64_t a2)
{

  return __swift_storeEnumTagSinglePayload(a1, a2, 1, v2);
}

uint64_t OUTLINED_FUNCTION_22_4(uint64_t a1, uint64_t a2)
{
  __swift_project_value_buffer(a1, a2);

  return sub_26666C148();
}

id OUTLINED_FUNCTION_23_10()
{

  return [v0 (v1 + 677)];
}

uint64_t sub_2665EFA68()
{
  v1 = sub_266669368();
  OUTLINED_FUNCTION_3_0();
  v3 = v2;
  MEMORY[0x28223BE20](v4);
  v6 = &v16[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_266669E58();
  OUTLINED_FUNCTION_3_0();
  v9 = v8;
  MEMORY[0x28223BE20](v10);
  v12 = &v16[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __swift_project_boxed_opaque_existential_1(v0, v0[3]);
  sub_266669DF8();
  sub_26659AC88(v12, v16);
  (*(v9 + 8))(v12, v7);
  if (v16[40] == 255)
  {
    sub_266560930(v16);
    return 0;
  }

  v13 = sub_266553878();
  sub_266553988(v16);
  if (v13 == 2)
  {
    return 0;
  }

  sub_2665AA6C4(v13);
  v14 = sub_2666692F8();
  (*(v3 + 8))(v6, v1);
  return v14;
}

id sub_2665EFC38()
{
  v1 = [v0 _metadata];
  if (v1)
  {
    v2 = v1;
    sub_26666BA48();
    v3 = sub_26666BA38();
    if (v3)
    {
      sub_26666BA18();

      sub_2666695B8();
      v5 = v4;

      if (v5)
      {
        v3 = sub_26666C2F8();
      }

      else
      {
        v3 = 0;
      }
    }

    [v2 setIntentId_];
  }

  return v7;
}

uint64_t sub_2665EFD84(void (*a1)(char *, char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v29 = a8;
  v38 = a1;
  v39 = a2;
  v10 = *(a5 - 8);
  MEMORY[0x28223BE20](a1);
  v40 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v42 = *(AssociatedTypeWitness - 8);
  v12 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v14 = &v27 - v13;
  MEMORY[0x28223BE20](v12);
  v36 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = swift_getAssociatedTypeWitness();
  v30 = *(v16 - 8);
  v31 = v16;
  MEMORY[0x28223BE20](v16);
  v18 = &v27 - v17;
  v19 = sub_26666C598();
  if (!v19)
  {
    return sub_26666C4C8();
  }

  v41 = v19;
  v45 = sub_26666C8D8();
  v32 = sub_26666C8E8();
  sub_26666C888();
  result = sub_26666C588();
  if ((v41 & 0x8000000000000000) == 0)
  {
    v27 = v10;
    v28 = a5;
    v21 = 0;
    v33 = (v42 + 16);
    v34 = (v42 + 8);
    v35 = v8;
    while (!__OFADD__(v21, 1))
    {
      v42 = v21 + 1;
      v22 = sub_26666C5B8();
      v23 = v14;
      v24 = v14;
      v25 = AssociatedTypeWitness;
      (*v33)(v23);
      v22(v44, 0);
      v26 = v43;
      v38(v24, v40);
      if (v26)
      {
        (*v34)(v24, v25);
        (*(v30 + 8))(v18, v31);

        return (*(v27 + 32))(v29, v40, v28);
      }

      v43 = 0;
      (*v34)(v24, v25);
      sub_26666C8C8();
      result = sub_26666C5A8();
      ++v21;
      v14 = v24;
      if (v42 == v41)
      {
        (*(v30 + 8))(v18, v31);
        return v45;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_2665F0210(void *a1, unint64_t *a2, void *a3, uint64_t *a4, uint64_t *a5)
{
  OUTLINED_FUNCTION_6_18(a1);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007EE60, &unk_266677260);
  OUTLINED_FUNCTION_38_1(v10, v11, v12);
  OUTLINED_FUNCTION_33_5();
  v20[0] = sub_266552C44(0, a2, a3);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  OUTLINED_FUNCTION_38_1(v13, v14, v15);
  sub_2665764F4(a1, v20);
  if (OUTLINED_FUNCTION_20_14())
  {

    return v19;
  }

  else
  {
    sub_26656CBFC();
    OUTLINED_FUNCTION_19_16();
    v17 = swift_allocError();
    return OUTLINED_FUNCTION_37_1(v17, v18);
  }
}

uint64_t sub_2665F0314(void *a1)
{
  v21[0] = OUTLINED_FUNCTION_6_18(a1);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007EE60, &unk_266677260);
  OUTLINED_FUNCTION_50_0(v2, v3, v4, v5, v6, v7, v8, v9, v21[0]);
  OUTLINED_FUNCTION_33_5();
  v21[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007E538, &unk_266674AF8);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007EE68, &qword_266677270);
  OUTLINED_FUNCTION_50_0(v10, v11, v12, v13, v14, v15, v16, v17, v21[0]);
  sub_2665764F4(a1, v21);
  if (OUTLINED_FUNCTION_20_14())
  {

    return v21[5];
  }

  else
  {
    sub_26656CBFC();
    OUTLINED_FUNCTION_19_16();
    v19 = swift_allocError();
    return OUTLINED_FUNCTION_37_1(v19, v20);
  }
}

uint64_t sub_2665F044C(void *a1)
{
  OUTLINED_FUNCTION_6_18(a1);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007EE60, &unk_266677260);
  OUTLINED_FUNCTION_38_1(v1, v2, v3);
  OUTLINED_FUNCTION_33_5();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007EE70, &qword_266677278);
  v7 = OUTLINED_FUNCTION_38_1(v4, v5, v6);
  OUTLINED_FUNCTION_47_2(v7, v8, v9, v10);
  if (OUTLINED_FUNCTION_20_14())
  {

    return v14;
  }

  else
  {
    sub_26656CBFC();
    OUTLINED_FUNCTION_19_16();
    v12 = swift_allocError();
    return OUTLINED_FUNCTION_13_11(v12, v13);
  }
}

uint64_t sub_2665F0564(void *a1)
{
  v22[0] = OUTLINED_FUNCTION_6_18(a1);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007EE60, &unk_266677260);
  OUTLINED_FUNCTION_50_0(v2, v3, v4, v5, v6, v7, v8, v9, v22[0]);
  OUTLINED_FUNCTION_33_5();
  v22[0] = MEMORY[0x277D839B0];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007EE90, &qword_266677298);
  OUTLINED_FUNCTION_50_0(v10, v11, v12, v13, v14, v15, v16, v17, v22[0]);
  sub_2665764F4(a1, v22);
  if (OUTLINED_FUNCTION_20_14())
  {

    v18 = v23;
  }

  else
  {
    sub_26656CBFC();
    OUTLINED_FUNCTION_19_16();
    v19 = swift_allocError();
    OUTLINED_FUNCTION_13_11(v19, v20);
  }

  return v18 & 1;
}

uint64_t sub_2665F0658(void *a1)
{
  OUTLINED_FUNCTION_6_18(a1);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007EE60, &unk_266677260);
  OUTLINED_FUNCTION_38_1(v1, v2, v3);
  OUTLINED_FUNCTION_33_5();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007EE98, &qword_2666772A0);
  v7 = OUTLINED_FUNCTION_38_1(v4, v5, v6);
  OUTLINED_FUNCTION_47_2(v7, v8, v9, v10);
  if (OUTLINED_FUNCTION_20_14())
  {

    return v14;
  }

  else
  {
    sub_26656CBFC();
    OUTLINED_FUNCTION_19_16();
    v12 = swift_allocError();
    return OUTLINED_FUNCTION_13_11(v12, v13);
  }
}

uint64_t sub_2665F0738@<X0>(char *a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v111 = a3;
  v104 = a2;
  v83 = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007EE30, &unk_266677230);
  MEMORY[0x28223BE20](v5 - 8);
  v95 = &v82 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28007F810, &unk_26667C710);
  MEMORY[0x28223BE20](v7 - 8);
  v98 = &v82 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007ED70, &qword_266671CC0);
  MEMORY[0x28223BE20](v9 - 8);
  v97 = &v82 - v10;
  v99 = sub_26666C228();
  v85 = *(v99 - 8);
  v11 = MEMORY[0x28223BE20](v99);
  v84 = &v82 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v82 = &v82 - v13;
  v96 = sub_266669738();
  v103 = *(v96 - 8);
  MEMORY[0x28223BE20](v96);
  v15 = &v82 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = sub_2666699C8();
  v86 = *(v87 - 8);
  MEMORY[0x28223BE20](v87);
  v17 = &v82 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_266663398();
  sub_266669928();
  if (qword_28007CE30 != -1)
  {
LABEL_55:
    swift_once();
  }

  sub_2665E8748();
  sub_266669978();
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007E610, &qword_266677630);
  v18 = swift_allocObject();
  v94 = xmmword_26666EED0;
  *(v18 + 16) = xmmword_26666EED0;
  v105 = sub_26666C338();
  v106 = v19;
  v109 = 32;
  v110 = 0xE100000000000000;
  v107 = 95;
  v108 = 0xE100000000000000;
  v91 = sub_266595F88();
  sub_26666C6F8();

  v105 = sub_2666312CC(2);
  v106 = v20;
  MEMORY[0x266788710](0x2E65756C61562ELL, 0xE700000000000000);
  v21 = sub_26666C338();
  MEMORY[0x266788710](v21);

  v22 = v106;
  *(v18 + 32) = v105;
  *(v18 + 40) = v22;
  v93 = v17;
  sub_266669948();
  v100 = a1;
  sub_2665F5ED8(a1);
  v24 = *(v23 + 16);
  v25 = MEMORY[0x277D84F90];
  v92 = MEMORY[0x277D84F90];
  v89 = v23;
  if (v24)
  {
    v26 = *(v103 + 16);
    v27 = v23 + ((*(v103 + 80) + 32) & ~*(v103 + 80));
    v101 = *(v103 + 72);
    v102 = v26;
    v103 += 16;
    v28 = (v103 - 8);
    v29 = v95;
    v30 = v96;
    do
    {
      (v102)(v15, v27, v30);
      sub_266669718();
      v31 = sub_2666697B8();
      if (__swift_getEnumTagSinglePayload(v29, 1, v31) == 1)
      {
        (*v28)(v15, v30);
        sub_266594028(v29, &qword_28007EE30, &unk_266677230);
      }

      else
      {
        v32 = sub_2666697A8();
        v33 = v30;
        v35 = v34;
        (*v28)(v15, v33);
        (*(*(v31 - 8) + 8))(v29, v31);
        if (v35)
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_2665C6350();
            v25 = v38;
          }

          v36 = *(v25 + 16);
          if (v36 >= *(v25 + 24) >> 1)
          {
            sub_2665C6350();
            v25 = v39;
          }

          *(v25 + 16) = v36 + 1;
          v37 = v25 + 16 * v36;
          *(v37 + 32) = v32;
          *(v37 + 40) = v35;
          v29 = v95;
        }

        v30 = v96;
      }

      v27 += v101;
      --v24;
    }

    while (v24);
  }

  v40 = sub_2665F6310(v25);
  inited = swift_initStackObject();
  *(inited + 16) = v94;
  if (qword_28007CE38 != -1)
  {
    swift_once();
  }

  *(inited + 32) = sub_2665E8760();
  *(inited + 40) = v42;
  sub_2665F63D0(v40, inited);

  swift_setDeallocating();
  sub_266639138();
  a1 = v93;
  sub_2666699A8();
  v43 = swift_allocObject();
  *(v43 + 16) = v94;
  v105 = sub_26666C338();
  v106 = v44;
  v109 = 32;
  v110 = 0xE100000000000000;
  v107 = 95;
  v108 = 0xE100000000000000;
  v15 = sub_26666C6F8();

  v105 = sub_2666312CC(2);
  v106 = v45;
  MEMORY[0x266788710](0x2E65756C61562ELL, 0xE700000000000000);
  v46 = sub_26666C338();
  MEMORY[0x266788710](v46);

  v47 = v106;
  *(v43 + 32) = v105;
  *(v43 + 40) = v47;
  sub_266669998();
  sub_2666698F8();
  v105 = MEMORY[0x277D84F90];
  v48 = v100;
  v17 = sub_2665C485C();
  v49 = 0;
  v50 = v48 & 0xC000000000000001;
  v51 = v48 & 0xFFFFFFFFFFFFFF8;
  while (v17 != v49)
  {
    if (v50)
    {
      v52 = MEMORY[0x266788B60](v49, v48);
    }

    else
    {
      if (v49 >= *((v48 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_52;
      }

      v52 = *&v48[8 * v49 + 32];
    }

    v53 = v52;
    a1 = v49 + 1;
    if (__OFADD__(v49, 1))
    {
      __break(1u);
LABEL_52:
      __break(1u);
LABEL_53:
      __break(1u);
LABEL_54:
      __break(1u);
      goto LABEL_55;
    }

    v15 = (v104)(v52);

    ++v49;
    if (v15)
    {
      MEMORY[0x2667887C0]();
      if (*((v105 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v105 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_26666C4B8();
      }

      sub_26666C4E8();
      v92 = v105;
      v49 = a1;
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007ECA0, &qword_266677240);
  v54 = *(sub_26666A058() - 8);
  v55 = (*(v54 + 80) + 32) & ~*(v54 + 80);
  v56 = swift_allocObject();
  *(v56 + 16) = v94;
  v57 = v88;
  sub_26664F374(v92, v56 + v55);
  v15 = v57;
  if (v57)
  {

    *(v56 + 16) = 0;

    return (*(v86 + 8))(v93, v87);
  }

  else
  {
    v101 = 0;

    sub_266669918();
    sub_26666C1E8();
    swift_allocObject();
    v111 = sub_26666C1D8();
    v59 = 0;
    v104 = "alendar.directInvocation";
    v102 = (v85 + 32);
    v103 = MEMORY[0x277D84F90];
    while (v17 != v59)
    {
      if (v50)
      {
        v60 = MEMORY[0x266788B60](v59, v100);
      }

      else
      {
        if (v59 >= *(v51 + 16))
        {
          goto LABEL_54;
        }

        v60 = *&v100[8 * v59 + 32];
      }

      a1 = v60;
      v61 = v59 + 1;
      if (__OFADD__(v59, 1))
      {
        goto LABEL_53;
      }

      v15 = v98;
      sub_26666C1C8();
      v62 = sub_26666C1B8();
      __swift_storeEnumTagSinglePayload(v15, 0, 1, v62);
      v63 = v97;
      sub_2665F1AD8(0xD000000000000013, v104 | 0x8000000000000000, v15, sub_26662D850, sub_26658160C, &qword_28007D148, 0x277CD3E90, v64, v82, v83, v84, v85, v86, v87, v88, v89, v90, v91, v92, v93);
      sub_266594028(v15, &unk_28007F810, &unk_26667C710);

      if (__swift_getEnumTagSinglePayload(v63, 1, v99) == 1)
      {
        sub_266594028(v63, &qword_28007ED70, &qword_266671CC0);
        ++v59;
      }

      else
      {
        a1 = v102;
        v65 = *v102;
        v15 = v82;
        v66 = v63;
        v67 = v99;
        (*v102)(v82, v66, v99);
        v65(v84, v15, v67);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_2665C6994();
          v103 = v70;
        }

        v68 = *(v103 + 16);
        if (v68 >= *(v103 + 24) >> 1)
        {
          sub_2665C6994();
          v103 = v71;
        }

        v69 = v103;
        *(v103 + 16) = v68 + 1;
        v65(v69 + ((*(v85 + 80) + 32) & ~*(v85 + 80)) + *(v85 + 72) * v68, v84, v99);
        v59 = v61;
      }
    }

    v72 = v93;
    sub_2666698E8();
    if (qword_28156C150 != -1)
    {
      swift_once();
    }

    v73 = sub_26666C168();
    __swift_project_value_buffer(v73, qword_28156D7E8);
    v74 = sub_26666C148();
    v75 = sub_26666C618();
    if (os_log_type_enabled(v74, v75))
    {
      v76 = swift_slowAlloc();
      *v76 = 134217984;
      swift_beginAccess();
      v77 = sub_2666698D8();
      if (v77)
      {
        v78 = v77;
        swift_endAccess();
        v79 = *(v78 + 16);
      }

      else
      {
        swift_endAccess();
        v79 = -1;
      }

      *(v76 + 4) = v79;
      _os_log_impl(&dword_266549000, v74, v75, "Donating %ld rrEntities", v76, 0xCu);
      MEMORY[0x266789690](v76, -1, -1);
    }

    swift_beginAccess();
    v80 = v86;
    v81 = v87;
    (*(v86 + 16))(v83, v72, v87);
    return (*(v80 + 8))(v72, v81);
  }
}

uint64_t sub_2665F15B8(uint64_t (*a1)(void), uint64_t (*a2)(uint64_t), void (*a3)(void, BOOL, uint64_t))
{
  v6 = sub_266669EE8();
  OUTLINED_FUNCTION_3_0();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_1_0();
  v12 = v11 - v10;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007D2F8, &unk_266677220);
  OUTLINED_FUNCTION_3_3(v13);
  OUTLINED_FUNCTION_6_3();
  MEMORY[0x28223BE20](v14);
  v16 = &v23 - v15;
  a1(0);
  sub_266669E78();
  v17 = sub_266669ED8();
  (*(v8 + 8))(v12, v6);
  sub_2665EC518(v17, v16);

  v18 = sub_266669F98();
  if (__swift_getEnumTagSinglePayload(v16, 1, v18) == 1)
  {
    sub_266594028(v16, &qword_28007D2F8, &unk_266677220);
    return 0;
  }

  v19 = sub_266669F28();
  OUTLINED_FUNCTION_4_5();
  (*(v20 + 8))(v16, v18);
  if (!a2(v19))
  {

    return 0;
  }

  a3(0, (v19 & 0xC000000000000001) == 0, v19);
  if ((v19 & 0xC000000000000001) != 0)
  {
    v21 = MEMORY[0x266788B60](0, v19);
  }

  else
  {
    v21 = *(v19 + 32);
  }

  return v21;
}

void sub_2665F1AD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_28_0();
  a19 = v21;
  a20 = v22;
  v24 = v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28007F810, &unk_26667C710);
  OUTLINED_FUNCTION_3_3(v25);
  OUTLINED_FUNCTION_6_3();
  MEMORY[0x28223BE20](v26);
  sub_2665F65F8(v24, &a9 - v27);
  v20;

  sub_2665F57FC();
  OUTLINED_FUNCTION_27_0();
}

void sub_2665F1BB0()
{
  OUTLINED_FUNCTION_28_0();
  v84 = v1;
  v79 = sub_266669E48();
  OUTLINED_FUNCTION_3_0();
  v81 = v2;
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_10_5();
  v78 = (v4 - v5);
  MEMORY[0x28223BE20](v6);
  v80 = &v77 - v7;
  v8 = sub_266669E58();
  OUTLINED_FUNCTION_3_0();
  v10 = v9;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_10_5();
  v14 = (v12 - v13);
  MEMORY[0x28223BE20](v15);
  v17 = &v77 - v16;
  __swift_project_boxed_opaque_existential_1((v0 + 64), *(v0 + 88));
  sub_266669DF8();
  v82 = v0;
  v18 = sub_2665F2200(v0);
  v83 = sub_266567A00(v17, v18, v19);
  v21 = v20;
  v22 = (v10 + 8);
  v23 = *(v10 + 8);
  v23(v17, v8);

  if (!v21)
  {
    if (qword_28156C150 != -1)
    {
      OUTLINED_FUNCTION_1_1(&qword_28156C150);
    }

    v45 = sub_26666C168();
    OUTLINED_FUNCTION_11_4(v45, qword_28156D7E8);
    v46 = sub_26666C148();
    v47 = sub_26666C618();
    if (OUTLINED_FUNCTION_52_0(v47))
    {
      v48 = OUTLINED_FUNCTION_20();
      OUTLINED_FUNCTION_15(v48);
      OUTLINED_FUNCTION_43_2();
      _os_log_impl(v49, v50, v51, v52, (v10 + 8), 2u);
      OUTLINED_FUNCTION_10();
    }

    sub_2666697C8();
    v53 = v83;
    v54 = 0;
    goto LABEL_20;
  }

  if (v21 != 1)
  {
    if (qword_28156C150 != -1)
    {
      OUTLINED_FUNCTION_1_1(&qword_28156C150);
    }

    v55 = sub_26666C168();
    OUTLINED_FUNCTION_11_4(v55, qword_28156D7E8);

    v56 = sub_26666C148();
    v57 = sub_26666C618();
    v58 = v83;
    sub_2665695F8(v83, v21);
    if (os_log_type_enabled(v56, v57))
    {
      v59 = OUTLINED_FUNCTION_21();
      v60 = OUTLINED_FUNCTION_13_0();
      v85[0] = v60;
      *v59 = 136315138;
      *(v59 + 4) = sub_2665BFC90(v58, v21, v85);
      OUTLINED_FUNCTION_43_2();
      _os_log_impl(v61, v62, v63, v64, v59, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v60);
      OUTLINED_FUNCTION_4_1();
      OUTLINED_FUNCTION_4_1();
    }

    v65 = v82;
    v66 = *(v82 + 144);
    v67 = *(v82 + 152);
    *(v82 + 144) = v58;
    *(v65 + 152) = v21;
    v68 = *(v65 + 160);
    *(v65 + 160) = 0;

    sub_2665F673C(v66, v67, v68);
    sub_2666697D8();
    v53 = v58;
    v54 = v21;
LABEL_20:
    sub_2665695F8(v53, v54);
    goto LABEL_28;
  }

  sub_266669DF8();
  if ((*(v10 + 88))(v14, v8) == *MEMORY[0x277D5C150])
  {
    (*(v10 + 96))(v14, v8);
    v25 = v80;
    v24 = v81;
    v22 = v79;
    (*(v81 + 32))(v80, v14, v79);
    v26 = v78;
    (*(v24 + 16))(v78, v25, v22);
    v27 = sub_2665E1640(v26);
    if (v29 != -1)
    {
      v30 = v27;
      v31 = v28;
      v32 = v29;
      if (qword_28156C150 != -1)
      {
        OUTLINED_FUNCTION_1_1(&qword_28156C150);
      }

      v33 = sub_26666C168();
      OUTLINED_FUNCTION_11_4(v33, qword_28156D7E8);
      sub_2665F6834(v30, v31, v32 & 1);
      v34 = sub_26666C148();
      v35 = sub_26666C618();
      sub_2665F6844(v30, v31, v32);
      if (os_log_type_enabled(v34, v35))
      {
        v36 = OUTLINED_FUNCTION_21();
        v37 = OUTLINED_FUNCTION_13_0();
        v87 = v37;
        *v36 = 136315138;
        v85[0] = v30;
        v85[1] = v31;
        v86 = v32 & 1;
        sub_2665F6834(v30, v31, v32 & 1);
        v38 = sub_26666C318();
        v40 = sub_2665BFC90(v38, v39, &v87);
        v25 = v80;

        *(v36 + 4) = v40;
        _os_log_impl(&dword_266549000, v34, v35, "[ParticipantDisambiguationFlowStrategy] selected contact via ui: %s", v36, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v37);
        v24 = v81;
        OUTLINED_FUNCTION_4_1();
        OUTLINED_FUNCTION_4_1();
      }

      v41 = v82;
      v42 = *(v82 + 144);
      v43 = *(v82 + 152);
      *(v82 + 144) = v30;
      *(v41 + 152) = v31;
      v44 = *(v41 + 160);
      *(v41 + 160) = v32 & 1 | 0x40;
      sub_2665F673C(v42, v43, v44);
      sub_2666697D8();
      (*(v24 + 8))(v25, v22);
      goto LABEL_28;
    }

    (*(v24 + 8))(v25, v22);
  }

  else
  {
    v23(v14, v8);
  }

  if (qword_28156C150 != -1)
  {
    OUTLINED_FUNCTION_1_1(&qword_28156C150);
  }

  v69 = sub_26666C168();
  OUTLINED_FUNCTION_11_4(v69, qword_28156D7E8);
  v70 = sub_26666C148();
  v71 = sub_26666C618();
  if (OUTLINED_FUNCTION_52_0(v71))
  {
    v72 = OUTLINED_FUNCTION_20();
    OUTLINED_FUNCTION_15(v72);
    OUTLINED_FUNCTION_43_2();
    _os_log_impl(v73, v74, v75, v76, v22, 2u);
    OUTLINED_FUNCTION_10();
  }

  sub_2666697E8();
LABEL_28:
  OUTLINED_FUNCTION_27_0();
}

uint64_t sub_2665F2240(uint64_t a1, uint64_t a2)
{
  v3[8] = a2;
  v3[9] = v2;
  v3[7] = a1;
  v3[10] = *v2;
  return OUTLINED_FUNCTION_1_12(sub_2665F2284);
}

uint64_t sub_2665F2284()
{
  if (qword_28156C150 != -1)
  {
    OUTLINED_FUNCTION_1_1(&qword_28156C150);
  }

  v2 = sub_26666C168();
  OUTLINED_FUNCTION_11_4(v2, qword_28156D7E8);
  v3 = sub_26666C148();
  v4 = sub_26666C618();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = OUTLINED_FUNCTION_20();
    OUTLINED_FUNCTION_15(v5);
    _os_log_impl(&dword_266549000, v3, v4, "[ParticipantDisambiguationFlowStrategy] Creating disambiguation items", v0, 2u);
    OUTLINED_FUNCTION_10();
  }

  sub_266669CE8();
  v6 = sub_266669CC8();
  v7 = [v6 disambiguationItems];

  v8 = sub_26666C498();
  v1[5] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007EE58, &qword_266677258);
  v1[2] = v8;
  sub_2665F0314(v1 + 2);
  v9 = v1[9];
  v10 = v1[7];
  __swift_destroy_boxed_opaque_existential_1(v1 + 2);
  sub_26655358C(v9 + 104, (v1 + 2));
  sub_266660A28(v1 + 2, v10);
  OUTLINED_FUNCTION_5_3();

  return v11();
}

uint64_t sub_2665F2434()
{
  OUTLINED_FUNCTION_14();
  v1[11] = v2;
  v1[12] = v0;
  v1[9] = v3;
  v1[10] = v4;
  v1[8] = v5;
  v6 = sub_266669E18();
  v1[13] = v6;
  OUTLINED_FUNCTION_3_1(v6);
  v1[14] = v7;
  v1[15] = OUTLINED_FUNCTION_19();
  v8 = OUTLINED_FUNCTION_31();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_2665F24E0()
{
  v37 = v0;
  if (qword_28156C150 != -1)
  {
    OUTLINED_FUNCTION_1_1(&qword_28156C150);
  }

  v1 = v0[14];
  v2 = v0[15];
  v3 = v0[13];
  v4 = v0[9];
  v5 = sub_26666C168();
  __swift_project_value_buffer(v5, qword_28156D7E8);
  (*(v1 + 16))(v2, v4, v3);
  v6 = sub_26666C148();
  v7 = sub_26666C618();
  v8 = os_log_type_enabled(v6, v7);
  v9 = v0[14];
  v10 = v0[15];
  v11 = v0[13];
  if (v8)
  {
    v12 = OUTLINED_FUNCTION_21();
    v13 = OUTLINED_FUNCTION_13_0();
    v36 = v13;
    *v12 = 136315138;
    sub_2665B934C();
    v14 = sub_26666CAA8();
    v16 = v15;
    (*(v9 + 8))(v10, v11);
    v17 = sub_2665BFC90(v14, v16, &v36);

    *(v12 + 4) = v17;
    _os_log_impl(&dword_266549000, v6, v7, "Got Input of %s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v13);
    OUTLINED_FUNCTION_4_1();
    OUTLINED_FUNCTION_4_1();
  }

  else
  {

    (*(v9 + 8))(v10, v11);
  }

  v18 = v0[12];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007EE48, &qword_266677250);
  v19 = sub_266669B88();
  sub_26655358C(v18 + 104, (v0 + 3));
  v0[2] = v19;
  if (*(v19 + 16) && (*(v19 + 56) & 1) == 0)
  {
    sub_266660EBC();
    v0[16] = v33;
    swift_task_alloc();
    OUTLINED_FUNCTION_23_1();
    v0[17] = v34;
    *v34 = v35;
    v34[1] = sub_2665F27F4;
    OUTLINED_FUNCTION_27_10();

    return sub_2665F29E8();
  }

  else
  {
    v20 = sub_26666C148();
    v21 = sub_26666C608();
    if (OUTLINED_FUNCTION_9(v21))
    {
      v22 = OUTLINED_FUNCTION_20();
      OUTLINED_FUNCTION_15(v22);
      OUTLINED_FUNCTION_2_29();
      _os_log_impl(v23, v24, v25, v26, v27, v28);
      OUTLINED_FUNCTION_10();
    }

    sub_26656CBFC();
    OUTLINED_FUNCTION_19_16();
    v29 = swift_allocError();
    OUTLINED_FUNCTION_9_19(v29, v30);
    sub_2665F6770((v0 + 2));

    OUTLINED_FUNCTION_24_1();

    return v31();
  }
}

uint64_t sub_2665F27F4()
{
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_11_2();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 144) = v0;

  OUTLINED_FUNCTION_4_14();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_2665F291C()
{
  OUTLINED_FUNCTION_14();
  sub_2665F6770(v0 + 16);

  OUTLINED_FUNCTION_5_3();

  return v1();
}

uint64_t sub_2665F2980()
{
  OUTLINED_FUNCTION_14();
  sub_2665F6770(v0 + 16);

  OUTLINED_FUNCTION_24_1();

  return v1();
}

uint64_t sub_2665F29E8()
{
  OUTLINED_FUNCTION_14();
  v1[12] = v2;
  v1[13] = v0;
  v1[10] = v3;
  v1[11] = v4;
  v5 = *v0;
  v1[14] = *v0;
  v1[15] = *(v5 + 80);
  v6 = sub_266669A28();
  v1[16] = v6;
  OUTLINED_FUNCTION_3_1(v6);
  v1[17] = v7;
  v1[18] = OUTLINED_FUNCTION_19();
  v8 = sub_266669AE8();
  v1[19] = v8;
  OUTLINED_FUNCTION_3_1(v8);
  v1[20] = v9;
  v1[21] = OUTLINED_FUNCTION_19();
  v10 = OUTLINED_FUNCTION_31();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_2665F2B20()
{
  v71 = v0;
  v1 = v0[13];
  v2 = *(v1 + 144);
  v3 = *(v1 + 160);
  if (!(v3 >> 6))
  {
    v4 = *(v1 + 152);
    v0[9] = v0[11];
    v5 = swift_task_alloc();
    *(v5 + 16) = v2;
    *(v5 + 24) = v4;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007EE38, &qword_266677248);
    sub_2665F67E4(&qword_28007EE50, MEMORY[0x277D83970]);
    sub_26666C448();

    if (v0[5])
    {
      v69 = v0[5];
      OUTLINED_FUNCTION_24_8();
      goto LABEL_8;
    }

    if (qword_28156C150 != -1)
    {
      OUTLINED_FUNCTION_1_1(&qword_28156C150);
    }

    v35 = sub_26666C168();
    OUTLINED_FUNCTION_11_4(v35, qword_28156D7E8);

    v26 = sub_26666C148();
    v36 = sub_26666C608();
    OUTLINED_FUNCTION_24_8();
    if (!os_log_type_enabled(v26, v36))
    {

      OUTLINED_FUNCTION_24_8();
      goto LABEL_24;
    }

    v37 = OUTLINED_FUNCTION_21();
    v38 = OUTLINED_FUNCTION_13_0();
    v70[0] = v38;
    *v37 = 136315138;
    v39 = sub_2665BFC90(v2, v4, v70);
    OUTLINED_FUNCTION_24_8();
    *(v37 + 4) = v39;
    OUTLINED_FUNCTION_45_2();
    _os_log_impl(v40, v41, v42, v43, v44, v45);
    __swift_destroy_boxed_opaque_existential_1(v38);
    OUTLINED_FUNCTION_4_1();
    goto LABEL_22;
  }

  if (v3 >> 6 != 1)
  {
    if (qword_28156C150 != -1)
    {
      OUTLINED_FUNCTION_1_1(&qword_28156C150);
    }

    v25 = sub_26666C168();
    OUTLINED_FUNCTION_11_4(v25, qword_28156D7E8);
    v26 = sub_26666C148();
    v27 = sub_26666C608();
    if (!OUTLINED_FUNCTION_9(v27))
    {
      goto LABEL_23;
    }

    v28 = OUTLINED_FUNCTION_20();
    OUTLINED_FUNCTION_15(v28);
    OUTLINED_FUNCTION_2_29();
LABEL_17:
    _os_log_impl(v29, v30, v31, v32, v33, v34);
LABEL_22:
    OUTLINED_FUNCTION_10();
LABEL_23:

    goto LABEL_24;
  }

  if ((v3 & 1) == 0)
  {
LABEL_24:
    sub_26656CBFC();
    OUTLINED_FUNCTION_19_16();
    v46 = swift_allocError();
    OUTLINED_FUNCTION_9_19(v46, v47);
    goto LABEL_31;
  }

  sub_2665957F8(v2, &type metadata for ParticipantResolutionUtil.ConsolidatedPerson, (v0 + 2));
  if (!v0[2])
  {
    if (qword_28156C150 != -1)
    {
      OUTLINED_FUNCTION_1_1(&qword_28156C150);
    }

    v61 = sub_26666C168();
    OUTLINED_FUNCTION_11_4(v61, qword_28156D7E8);
    v26 = sub_26666C148();
    v62 = sub_26666C608();
    if (!OUTLINED_FUNCTION_9(v62))
    {
      goto LABEL_23;
    }

    v63 = OUTLINED_FUNCTION_21();
    *v63 = 134217984;
    *(v63 + 4) = v2;
    OUTLINED_FUNCTION_45_2();
    goto LABEL_17;
  }

  v69 = v0[2];
LABEL_8:
  v7 = v0[14];
  v6 = v0[15];
  sub_266669CE8();
  v8 = sub_266669CB8();
  v9 = *(v7 + 96);
  v10 = (*(v9 + 16))(v6, v9);

  if (v10)
  {
    if (sub_2665C485C())
    {
      sub_2665C4864();
      if ((v10 & 0xC000000000000001) != 0)
      {
        v11 = MEMORY[0x266788B60](0, v10);
      }

      else
      {
        v11 = *(v10 + 32);
      }

      v12 = v11;
      v13 = v0[20];
      v14 = v0[21];
      v67 = v0[16];
      v68 = v0[17];
      v64 = v0[19];
      v65 = v0[15];
      v66 = v0[18];

      v15 = sub_266552C44(0, &qword_28007D148, 0x277CD3E90);
      v16 = sub_26666C488();
      [v12 setAlternatives_];

      v17 = sub_266669CB8();
      sub_266669CD8();
      v18 = sub_266669AC8();
      v20 = v19;
      (*(v13 + 8))(v14, v64);
      (*(v9 + 24))(v12, v18, v20 & 1, v65, v9);

      v21 = v0[8];
      v70[3] = v15;
      v70[0] = v12;
      v22 = v12;
      v23 = v21;
      sub_266669A18();
      sub_266669B18();

      (*(v68 + 8))(v66, v67);

      OUTLINED_FUNCTION_5_3();
      goto LABEL_32;
    }
  }

  if (qword_28156C150 != -1)
  {
    OUTLINED_FUNCTION_1_1(&qword_28156C150);
  }

  v48 = sub_26666C168();
  OUTLINED_FUNCTION_11_4(v48, qword_28156D7E8);
  v49 = sub_26666C148();
  v50 = sub_26666C608();
  if (OUTLINED_FUNCTION_9(v50))
  {
    v51 = OUTLINED_FUNCTION_20();
    OUTLINED_FUNCTION_15(v51);
    OUTLINED_FUNCTION_2_29();
    _os_log_impl(v52, v53, v54, v55, v56, v57);
    OUTLINED_FUNCTION_10();
  }

  sub_26656CBFC();
  OUTLINED_FUNCTION_19_16();
  v58 = swift_allocError();
  OUTLINED_FUNCTION_9_19(v58, v59);

LABEL_31:

  OUTLINED_FUNCTION_24_1();
LABEL_32:

  return v24();
}

uint64_t sub_2665F3144(id *a1, uint64_t a2, uint64_t a3)
{
  v5 = [*a1 contactIdentifier];
  if (v5)
  {
    v6 = v5;
    v7 = sub_26666C308();
    v9 = v8;

    if (v7 == a2 && v9 == a3)
    {
      v11 = 1;
    }

    else
    {
      v11 = sub_26666CAC8();
    }
  }

  else
  {
    v11 = 0;
  }

  return v11 & 1;
}

uint64_t sub_2665F31F4(uint64_t a1, uint64_t a2)
{
  v3[9] = a2;
  v3[10] = v2;
  v3[8] = a1;
  return OUTLINED_FUNCTION_1_12(sub_2665F3210);
}

uint64_t sub_2665F3210()
{
  OUTLINED_FUNCTION_11();
  v1 = v0[10];
  v2 = *(v1 + 144);
  v3 = *(v1 + 152);
  *(v1 + 144) = 0;
  *(v1 + 152) = 0;
  v4 = *(v1 + 160);
  *(v1 + 160) = 0x80;
  sub_2665F673C(v2, v3, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007EE48, &qword_266677250);
  v5 = sub_266669B88();
  sub_26655358C(v1 + 104, (v0 + 3));
  v0[2] = v5;
  if (*(v5 + 16) && (*(v5 + 56) & 1) == 0)
  {
    sub_266660EBC();
    v0[11] = v9;
    swift_task_alloc();
    OUTLINED_FUNCTION_23_1();
    v0[12] = v10;
    *v10 = v11;
    v10[1] = sub_2665F3384;
    OUTLINED_FUNCTION_27_10();

    return sub_2665F36C4();
  }

  else
  {
    v0[14] = sub_266660FD4();
    swift_task_alloc();
    OUTLINED_FUNCTION_23_1();
    v0[15] = v6;
    *v6 = v7;
    v6[1] = sub_2665F34F4;
    OUTLINED_FUNCTION_27_10();

    return sub_2665F3E0C();
  }
}

uint64_t sub_2665F3384()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_11_2();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_5_0();
  *v5 = v4;
  *(v6 + 104) = v0;

  OUTLINED_FUNCTION_4_14();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_2665F349C()
{
  OUTLINED_FUNCTION_14();
  sub_2665F6770(v0 + 16);
  OUTLINED_FUNCTION_5_3();

  return v1();
}

uint64_t sub_2665F34F4()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_11_2();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_5_0();
  *v5 = v4;
  *(v6 + 128) = v0;

  OUTLINED_FUNCTION_4_14();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_2665F360C()
{
  OUTLINED_FUNCTION_14();
  sub_2665F6770(v0 + 16);
  OUTLINED_FUNCTION_24_1();

  return v1();
}

uint64_t sub_2665F3668()
{
  OUTLINED_FUNCTION_14();
  sub_2665F6770(v0 + 16);
  OUTLINED_FUNCTION_24_1();

  return v1();
}

uint64_t sub_2665F36C4()
{
  OUTLINED_FUNCTION_14();
  v1[4] = v2;
  v1[5] = v0;
  v1[3] = v3;
  v4 = sub_266669708();
  OUTLINED_FUNCTION_3_3(v4);
  v1[6] = OUTLINED_FUNCTION_19();
  v5 = sub_266669CA8();
  v1[7] = v5;
  OUTLINED_FUNCTION_3_1(v5);
  v1[8] = v6;
  v1[9] = OUTLINED_FUNCTION_19();
  v7 = sub_2666699C8();
  v1[10] = v7;
  OUTLINED_FUNCTION_3_1(v7);
  v1[11] = v8;
  v1[12] = OUTLINED_FUNCTION_19();
  v9 = OUTLINED_FUNCTION_31();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_2665F37D8()
{
  if (qword_28156C150 != -1)
  {
    OUTLINED_FUNCTION_1_1(&qword_28156C150);
  }

  v1 = sub_26666C168();
  OUTLINED_FUNCTION_11_4(v1, qword_28156D7E8);
  v2 = sub_26666C148();
  v3 = sub_26666C618();
  if (OUTLINED_FUNCTION_9(v3))
  {
    v4 = OUTLINED_FUNCTION_20();
    OUTLINED_FUNCTION_15(v4);
    OUTLINED_FUNCTION_2_29();
    _os_log_impl(v5, v6, v7, v8, v9, v10);
    OUTLINED_FUNCTION_10();
  }

  v11 = v0[12];
  v12 = v0[4];
  v13 = v0[5];

  v0[2] = v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007EE38, &qword_266677248);
  v15 = sub_266552C44(0, &qword_28007D148, 0x277CD3E90);
  v16 = sub_2665F67E4(&qword_28007EE40, MEMORY[0x277D83988]);
  v18 = sub_2665EFD84(sub_2665F3DB4, 0, v14, v15, MEMORY[0x277D84A98], v16, MEMORY[0x277D84AC0], v17);
  v0[13] = v18;
  sub_2665F0738(v18, sub_2665F6718, v13, v11);
  v19 = v0[12];
  v20 = v0[5];
  sub_2666696C8();
  *(swift_task_alloc() + 16) = v19;
  sub_266669BC8();

  v21 = v20[6];
  v22 = v20[7];
  __swift_project_boxed_opaque_existential_1(v20 + 3, v21);
  MEMORY[0x266788710](46, 0xE100000000000000);
  MEMORY[0x266788710](0xD000000000000021, 0x800000026667EE40);
  v0[14] = 0x800000026667D640;
  swift_task_alloc();
  OUTLINED_FUNCTION_23_1();
  v0[15] = v23;
  *v23 = v24;
  v23[1] = sub_2665F3AFC;
  v25 = v0[9];
  v26 = v0[3];

  return MEMORY[0x2821B9200](v26, v18, 0xD000000000000028, 0x800000026667D640, v25, v21, v22);
}

uint64_t sub_2665F3AFC()
{
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_11_2();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 128) = v0;

  OUTLINED_FUNCTION_4_14();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_2665F3C54()
{
  (*(v0[8] + 8))(v0[9], v0[7]);
  v1 = OUTLINED_FUNCTION_31_1();
  v2(v1);

  OUTLINED_FUNCTION_5_3();

  return v3();
}

uint64_t sub_2665F3D08()
{
  OUTLINED_FUNCTION_11();
  (*(v0[8] + 8))(v0[9], v0[7]);
  v1 = OUTLINED_FUNCTION_31_1();
  v2(v1);

  OUTLINED_FUNCTION_24_1();

  return v3();
}

id sub_2665F3DB4@<X0>(void **a1@<X0>, void **a2@<X8>)
{
  v2 = *a1;
  *a2 = *a1;
  return v2;
}

uint64_t sub_2665F3E0C()
{
  OUTLINED_FUNCTION_14();
  v1[3] = v2;
  v1[4] = v0;
  v1[2] = v3;
  v4 = sub_266669708();
  OUTLINED_FUNCTION_3_3(v4);
  v1[5] = OUTLINED_FUNCTION_19();
  v5 = sub_266669CA8();
  v1[6] = v5;
  OUTLINED_FUNCTION_3_1(v5);
  v1[7] = v6;
  v1[8] = OUTLINED_FUNCTION_19();
  v7 = sub_2666699C8();
  v1[9] = v7;
  OUTLINED_FUNCTION_3_1(v7);
  v1[10] = v8;
  v1[11] = OUTLINED_FUNCTION_19();
  v9 = OUTLINED_FUNCTION_31();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_2665F3F20()
{
  if (qword_28156C150 != -1)
  {
    OUTLINED_FUNCTION_1_1(&qword_28156C150);
  }

  v1 = sub_26666C168();
  OUTLINED_FUNCTION_11_4(v1, qword_28156D7E8);
  v2 = sub_26666C148();
  v3 = sub_26666C618();
  if (OUTLINED_FUNCTION_9(v3))
  {
    v4 = OUTLINED_FUNCTION_20();
    OUTLINED_FUNCTION_15(v4);
    OUTLINED_FUNCTION_2_29();
    _os_log_impl(v5, v6, v7, v8, v9, v10);
    OUTLINED_FUNCTION_10();
  }

  v11 = v0[11];
  v13 = v0[3];
  v12 = v0[4];

  sub_2665F0738(v13, sub_2665F65F0, v12, v11);
  v14 = v0[11];
  v15 = v0[4];
  sub_2666696C8();
  *(swift_task_alloc() + 16) = v14;
  sub_266669BC8();

  v16 = v15[6];
  v17 = v15[7];
  __swift_project_boxed_opaque_existential_1(v15 + 3, v16);
  MEMORY[0x266788710](46, 0xE100000000000000);
  MEMORY[0x266788710](0xD000000000000021, 0x800000026667EE40);
  v0[12] = 0x800000026667D640;
  swift_task_alloc();
  OUTLINED_FUNCTION_23_1();
  v0[13] = v18;
  *v18 = v19;
  v18[1] = sub_2665F4194;
  v20 = v0[8];
  v21 = v0[2];
  v22 = v0[3];

  return MEMORY[0x2821B9218](v21, v22, 0xD000000000000028, 0x800000026667D640, v20, v16, v17);
}

uint64_t sub_2665F4194()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_11_2();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_5_0();
  *v5 = v4;
  *(v6 + 112) = v0;

  OUTLINED_FUNCTION_4_14();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_2665F42AC()
{
  (*(v0[7] + 8))(v0[8], v0[6]);
  v1 = OUTLINED_FUNCTION_31_1();
  v2(v1);

  OUTLINED_FUNCTION_5_3();

  return v3();
}

uint64_t sub_2665F4360()
{
  OUTLINED_FUNCTION_11();
  (*(v0[7] + 8))(v0[8], v0[6]);
  v1 = OUTLINED_FUNCTION_31_1();
  v2(v1);

  OUTLINED_FUNCTION_24_1();

  return v3();
}

uint64_t sub_2665F4434(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007D338, &qword_26666EEB0);
  OUTLINED_FUNCTION_3_3(v3);
  OUTLINED_FUNCTION_6_3();
  MEMORY[0x28223BE20](v4);
  v6 = &v10 - v5;
  sub_266669C28();
  sub_266669C58();
  v7 = sub_2666699C8();
  OUTLINED_FUNCTION_4_5();
  (*(v8 + 16))(v6, a2, v7);
  __swift_storeEnumTagSinglePayload(v6, 0, 1, v7);
  return sub_266669C38();
}

uint64_t sub_2665F4510()
{
  v1 = 0;
  switch(*(v0 + 16))
  {
    case 1:
      if (!sub_2665F15B8(MEMORY[0x277D5F258], sub_2665C485C, sub_2665C4864))
      {
        return 0;
      }

      sub_26666ABF8();

      if (v13)
      {

        goto LABEL_13;
      }

      sub_26666AC08();

      goto LABEL_10;
    case 2:
      return v1;
    case 3:
      if (!sub_2665F15B8(MEMORY[0x277D5F348], sub_2665C485C, sub_2665C4864))
      {
        return 0;
      }

      sub_26666A808();
      break;
    default:
      if (!sub_2665F15B8(MEMORY[0x277D5F240], sub_2665C485C, sub_2665C4864))
      {
        return 0;
      }

      sub_26666A658();
      break;
  }

LABEL_10:
  if (!v13)
  {
    return 0;
  }

LABEL_13:

  v2 = sub_26666A9D8();

  if (v2)
  {
    if (sub_2665C485C())
    {
      sub_2665C4864();
      if ((v2 & 0xC000000000000001) != 0)
      {
        MEMORY[0x266788B60](0, v2);
      }

      else
      {
      }

      sub_26666A3D8();

      v3 = sub_26666A918();

      if (v3)
      {
        v1 = sub_26666A218();

        goto LABEL_26;
      }
    }

    else
    {
    }
  }

  if (!sub_26666A468())
  {

    return 0;
  }

  v4 = sub_26666A9C8();
  OUTLINED_FUNCTION_7(v4);
  v5 = sub_26666A9B8();
  sub_26666AE98();

  sub_2665C1900(v6);
  sub_26666A7C8();

  if (qword_28156C150 != -1)
  {
    OUTLINED_FUNCTION_1_1(&qword_28156C150);
  }

  v7 = sub_26666C168();
  OUTLINED_FUNCTION_11_4(v7, qword_28156D7E8);
  v8 = sub_26666C148();
  v9 = sub_26666C618();
  if (os_log_type_enabled(v8, v9))
  {
    *OUTLINED_FUNCTION_20() = 0;
    OUTLINED_FUNCTION_21_6(&dword_266549000, v10, v11, "Hoisting list position from Common_CalendarEvent into empty Common_Person");
    OUTLINED_FUNCTION_4_1();
  }

  v1 = MEMORY[0x2667869C0](v5);

LABEL_26:

  return v1;
}

void sub_2665F48AC()
{
  OUTLINED_FUNCTION_28_0();
  v44 = v0;
  v2 = v1;
  v4 = v3;
  v5 = sub_266668BE8();
  OUTLINED_FUNCTION_3_0();
  v43 = v6;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_1_0();
  v10 = v9 - v8;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007D160, &qword_26666E0B0);
  v12 = OUTLINED_FUNCTION_3_3(v11);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_10_5();
  v15 = v13 - v14;
  MEMORY[0x28223BE20](v16);
  v18 = &v42 - v17;
  v19 = sub_26666AF28();
  OUTLINED_FUNCTION_7(v19);
  v20 = sub_26666AF18();
  v21 = sub_26666ADB8();
  OUTLINED_FUNCTION_7(v21);
  sub_26666ADA8();
  v22 = sub_26666A9C8();
  OUTLINED_FUNCTION_7(v22);
  sub_26666A9B8();
  sub_26666AD98();

  v45 = v20;
  sub_26666AED8();

  if ((v2 & 1) == 0)
  {
    v23 = [v4 nameComponents];
    if (v23)
    {
      v24 = v23;
      sub_266668BB8();

      v25 = 0;
    }

    else
    {
      v25 = 1;
    }

    __swift_storeEnumTagSinglePayload(v15, v25, 1, v5);
    sub_266567590(v15, v18);
    if (!__swift_getEnumTagSinglePayload(v18, 1, v5))
    {
      v33 = v43;
      (*(v43 + 16))(v10, v18, v5);
      sub_266594028(v18, &qword_28007D160, &qword_26666E0B0);
      sub_266668BD8();
      (*(v33 + 8))(v10, v5);
      sub_26666A9A8();

      goto LABEL_14;
    }

    sub_266594028(v18, &qword_28007D160, &qword_26666E0B0);
  }

  v26 = [v4 personHandle];
  if (v26)
  {
    v27 = v26;
    v28 = sub_26666AE38();
    OUTLINED_FUNCTION_7(v28);
    sub_26666AE28();
    v29 = [v27 label];
    if (v29)
    {
      v30 = v29;
      sub_26666C308();
      sub_26666AE08();
    }

    v31 = [v27 value];
    if (v31)
    {
      v32 = v31;
      sub_26666C308();

      sub_26666AE18();
    }

    sub_26666A988();
  }

LABEL_14:
  switch(*(v44 + 16))
  {
    case 1:
      v41 = sub_26666B0B8();
      OUTLINED_FUNCTION_7(v41);
      sub_26666B0A8();
      OUTLINED_FUNCTION_28_8();
      sub_26666B038();
      goto LABEL_23;
    case 2:
      if (qword_28156C150 != -1)
      {
        OUTLINED_FUNCTION_1_1(&qword_28156C150);
      }

      v35 = sub_26666C168();
      OUTLINED_FUNCTION_11_4(v35, qword_28156D7E8);
      v36 = sub_26666C148();
      v37 = sub_26666C608();
      if (os_log_type_enabled(v36, v37))
      {
        *OUTLINED_FUNCTION_20() = 0;
        OUTLINED_FUNCTION_21_6(&dword_266549000, v38, v39, "[ParticipantDisambiguationFlowStrategy] Unexpected .deleteEvent intent action");
        OUTLINED_FUNCTION_4_1();
      }

      goto LABEL_24;
    case 3:
      v40 = sub_26666B0E8();
      OUTLINED_FUNCTION_7(v40);
      sub_26666B0D8();
      OUTLINED_FUNCTION_28_8();
      sub_26666AC38();
      goto LABEL_23;
    default:
      v34 = sub_26666B058();
      OUTLINED_FUNCTION_7(v34);
      sub_26666B048();
      OUTLINED_FUNCTION_28_8();
      sub_26666AB08();
LABEL_23:

LABEL_24:
      OUTLINED_FUNCTION_27_0();
      return;
  }
}

uint64_t sub_2665F4D58()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 24));
  __swift_destroy_boxed_opaque_existential_1((v0 + 64));
  __swift_destroy_boxed_opaque_existential_1((v0 + 104));
  sub_2665F673C(*(v0 + 144), *(v0 + 152), *(v0 + 160));
  return v0;
}

uint64_t sub_2665F4D94()
{
  sub_2665F4D58();

  return MEMORY[0x2821FE8D8](v0, 161, 7);
}

uint64_t sub_2665F4DE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t get_enum_tag_for_layout_string_19SiriCalendarIntents37ParticipantDisambiguationFlowStrategyC5StateOyxq__G(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = v1;
  v3 = v1 >> 6;
  if (v2 >= 0)
  {
    return v3;
  }

  else
  {
    return (*a1 + 2);
  }
}

uint64_t sub_2665F4E3C(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7E && *(a1 + 17))
    {
      v2 = *a1 + 125;
    }

    else
    {
      v2 = ((*(a1 + 16) >> 6) & 0xFFFFFF83 | (4 * ((*(a1 + 16) >> 1) & 0x1F))) ^ 0x7F;
      if (v2 >= 0x7D)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return v2 + 1;
}

uint64_t sub_2665F4E88(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7D)
  {
    *(result + 16) = 0;
    *result = a2 - 126;
    *(result + 8) = 0;
    if (a3 >= 0x7E)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7E)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = 0;
      *(result + 16) = 2 * (((-a2 >> 2) & 0x1F) - 32 * a2);
    }
  }

  return result;
}

uint64_t sub_2665F4EEC(uint64_t result, unsigned int a2)
{
  if (a2 < 2)
  {
    v2 = *(result + 16) & 1 | (a2 << 6);
  }

  else
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    v2 = 0x80;
  }

  *(result + 16) = v2;
  return result;
}

void sub_2665F4F30(uint64_t a1, uint64_t *a2)
{
  type metadata accessor for ParticipantDisambiguationFlowStrategy(0, a2[10], a2[11], a2[12]);

  JUMPOUT(0x266785450);
}

uint64_t sub_2665F4FB8(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_26656CD98;

  return sub_2665F2240(a1, a2);
}

uint64_t sub_2665F5064()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_26656CD98;

  return sub_2665F2434();
}

uint64_t sub_2665F5128(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_26656C894;

  return sub_2665F31F4(a1, a2);
}

uint64_t sub_2665F51D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  v12 = type metadata accessor for ParticipantDisambiguationFlowStrategy(0, a4[10], a4[11], a4[12]);
  *v11 = v5;
  v11[1] = sub_26656CD98;

  return MEMORY[0x2821B9F38](a1, a2, a3, v12, a5);
}

uint64_t sub_2665F52B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  v12 = type metadata accessor for ParticipantDisambiguationFlowStrategy(0, a4[10], a4[11], a4[12]);
  *v11 = v5;
  v11[1] = sub_26656CD98;

  return MEMORY[0x2821B9F48](a1, a2, a3, v12, a5);
}

uint64_t sub_2665F539C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  v10 = type metadata accessor for ParticipantDisambiguationFlowStrategy(0, a3[10], a3[11], a3[12]);
  *v9 = v4;
  v9[1] = sub_26656CD98;

  return MEMORY[0x2821B9F40](a1, a2, v10, a4);
}

uint64_t sub_2665F5470(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  v10 = type metadata accessor for ParticipantDisambiguationFlowStrategy(0, a3[10], a3[11], a3[12]);
  *v9 = v4;
  v9[1] = sub_26656CD98;

  return MEMORY[0x2821B9F58](a1, a2, v10, a4);
}

uint64_t sub_2665F5544(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v5 = type metadata accessor for ParticipantDisambiguationFlowStrategy(0, a2[10], a2[11], a2[12]);

  return MEMORY[0x2821B9F50](a1, v5, a3);
}

uint64_t sub_2665F55A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6)
{
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  v14 = type metadata accessor for ParticipantDisambiguationFlowStrategy(0, a5[10], a5[11], a5[12]);
  *v13 = v6;
  v13[1] = sub_26656CD98;

  return MEMORY[0x2821BBB18](a1, a2, a3, a4, v14, a6);
}

uint64_t sub_2665F568C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6, uint64_t a7)
{
  v15 = swift_task_alloc();
  *(v7 + 16) = v15;
  v16 = type metadata accessor for ParticipantDisambiguationFlowStrategy(0, a6[10], a6[11], a6[12]);
  *v15 = v7;
  v15[1] = sub_26656CD98;

  return MEMORY[0x2821BBB20](a1, a2, a3, a4, a5, v16, a7);
}

unint64_t sub_2665F57A8()
{
  result = qword_28007EE28;
  if (!qword_28007EE28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007EE28);
  }

  return result;
}

void sub_2665F57FC()
{
  OUTLINED_FUNCTION_28_0();
  v1 = v0;
  v40 = v2;
  v41 = v3;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28007F810, &unk_26667C710);
  OUTLINED_FUNCTION_3_3(v12);
  OUTLINED_FUNCTION_6_3();
  MEMORY[0x28223BE20](v13);
  v15 = &v39 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007ED70, &qword_266671CC0);
  OUTLINED_FUNCTION_3_3(v16);
  OUTLINED_FUNCTION_6_3();
  v18 = MEMORY[0x28223BE20](v17);
  v20 = &v39 - v19;
  if (v7(v18))
  {
    v5(v11);
    v39 = v9;
    sub_2665F65F8(v9, v15);
    sub_266552C44(0, v40, v1);
    sub_26666C1F8();
    sub_266594028(v39, &unk_28007F810, &unk_26667C710);
    v32 = sub_26666C228();
    __swift_storeEnumTagSinglePayload(v20, 0, 1, v32);
    if (!__swift_getEnumTagSinglePayload(v20, 1, v32))
    {
      OUTLINED_FUNCTION_4_5();
      v38 = v41;
      (*(v37 + 32))(v41, v20, v32);
      v35 = v38;
      v36 = 0;
      v34 = v32;
      goto LABEL_12;
    }

    v29 = &qword_28007ED70;
    v30 = &qword_266671CC0;
    v31 = v20;
  }

  else
  {

    if (qword_28156C150 != -1)
    {
      OUTLINED_FUNCTION_1_1(&qword_28156C150);
    }

    v21 = sub_26666C168();
    OUTLINED_FUNCTION_11_4(v21, qword_28156D7E8);
    v22 = sub_26666C148();
    v23 = sub_26666C618();
    if (OUTLINED_FUNCTION_52_0(v23))
    {
      v24 = OUTLINED_FUNCTION_20();
      *v24 = 0;
      OUTLINED_FUNCTION_43_2();
      _os_log_impl(v25, v26, v27, v28, v24, 2u);
      OUTLINED_FUNCTION_4_1();
    }

    v29 = &unk_28007F810;
    v30 = &unk_26667C710;
    v31 = v9;
  }

  sub_266594028(v31, v29, v30);
  v34 = sub_26666C228();
  v35 = v41;
  v36 = 1;
LABEL_12:
  __swift_storeEnumTagSinglePayload(v35, v36, 1, v34);
  OUTLINED_FUNCTION_27_0();
}

void sub_2665F5AE4()
{
  OUTLINED_FUNCTION_28_0();
  v1 = v0;
  v37 = sub_2666697B8();
  OUTLINED_FUNCTION_3_0();
  v3 = v2;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_1_0();
  v38 = v6 - v5;
  sub_266669D18();
  OUTLINED_FUNCTION_3_0();
  v33 = v8;
  v34 = v7;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_1_0();
  v35 = v10 - v9;
  v41 = MEMORY[0x277D84F90];
  v11 = sub_2665C485C();
  v12 = 0;
  v13 = 0;
  v14 = v1 & 0xC000000000000001;
  v39 = v1 & 0xFFFFFFFFFFFFFF8;
  while (v11 != v12)
  {
    if (v14)
    {
      v15 = MEMORY[0x266788B60](v12, v1);
    }

    else
    {
      if (v12 >= *(v39 + 16))
      {
        goto LABEL_26;
      }

      v15 = *(v1 + 8 * v12 + 32);
    }

    v16 = v15;
    if (__OFADD__(v12, 1))
    {
      __break(1u);
LABEL_26:
      __break(1u);
LABEL_27:
      __break(1u);
LABEL_28:
      __break(1u);
      goto LABEL_29;
    }

    v40 = v15;
    v17 = sub_2665EEF64();
    MEMORY[0x28223BE20](v17);
    *(&v31 - 2) = &v40;
    sub_2665C22F0();
    v19 = v18;

    sub_2665C28A4(v19);
    ++v12;
  }

  v13 = v41;
  if (qword_28007CE70 == -1)
  {
    goto LABEL_10;
  }

LABEL_29:
  swift_once();
LABEL_10:
  sub_26666A1C8();
  sub_266669CF8();
  v20 = sub_2665C485C();
  if (!v20)
  {
    goto LABEL_24;
  }

  v21 = v20;
  v41 = MEMORY[0x277D84F90];
  sub_266633988(0, v20 & ~(v20 >> 63), 0);
  if ((v21 & 0x8000000000000000) == 0)
  {
    v32 = v13;
    v22 = 0;
    v23 = v41;
    v36 = v3 + 32;
    v13 = v21;
    do
    {
      if (v14)
      {
        v24 = MEMORY[0x266788B60](v22, v1);
      }

      else
      {
        if ((v22 & 0x8000000000000000) != 0)
        {
          goto LABEL_27;
        }

        if (v22 >= *(v39 + 16))
        {
          goto LABEL_28;
        }

        v24 = *(v1 + 8 * v22 + 32);
      }

      v25 = v24;
      INCalendarEvent.id.getter();
      if (qword_28007CE78 != -1)
      {
        OUTLINED_FUNCTION_11_16();
        swift_once();
      }

      sub_26666A1C8();
      v26 = v38;
      sub_266669798();

      v41 = v23;
      v28 = *(v23 + 16);
      v27 = *(v23 + 24);
      if (v28 >= v27 >> 1)
      {
        sub_266633988(v27 > 1, v28 + 1, 1);
        v26 = v38;
        v23 = v41;
      }

      ++v22;
      *(v23 + 16) = v28 + 1;
      (*(v3 + 32))(v23 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v28, v26, v37);
    }

    while (v21 != v22);
    v13 = v32;
LABEL_24:
    v29 = v35;
    v30 = sub_266669D08();

    (*(v33 + 8))(v29, v34);
    v41 = v13;
    sub_2665C28A4(v30);
    OUTLINED_FUNCTION_27_0();
    return;
  }

  __break(1u);
}

void sub_2665F5ED8(uint64_t a1)
{
  v32 = sub_2666697B8();
  v2 = *(v32 - 8);
  MEMORY[0x28223BE20](v32);
  v33 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_266669D18();
  v28 = *(v4 - 8);
  v29 = v4;
  MEMORY[0x28223BE20](v4);
  v30 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = MEMORY[0x277D84F90];
  v6 = sub_2665C485C();
  v7 = 0;
  v8 = 0;
  v9 = a1 & 0xC000000000000001;
  v34 = a1 & 0xFFFFFFFFFFFFFF8;
  while (v6 != v7)
  {
    if (v9)
    {
      v10 = MEMORY[0x266788B60](v7, a1);
    }

    else
    {
      if (v7 >= *(v34 + 16))
      {
        goto LABEL_26;
      }

      v10 = *(a1 + 8 * v7 + 32);
    }

    v11 = v10;
    if (__OFADD__(v7, 1))
    {
      __break(1u);
LABEL_26:
      __break(1u);
LABEL_27:
      __break(1u);
LABEL_28:
      __break(1u);
      goto LABEL_29;
    }

    v35 = v10;
    v12 = sub_266580ECC();
    MEMORY[0x28223BE20](v12);
    *(&v26 - 2) = &v35;
    sub_2665C22F0();
    v14 = v13;

    sub_2665C28A4(v14);
    ++v7;
  }

  v8 = v36;
  if (qword_28007CE70 == -1)
  {
    goto LABEL_10;
  }

LABEL_29:
  swift_once();
LABEL_10:
  sub_26666A1C8();
  sub_266669CF8();
  v15 = sub_2665C485C();
  if (!v15)
  {
    goto LABEL_24;
  }

  v16 = v15;
  v36 = MEMORY[0x277D84F90];
  sub_266633988(0, v15 & ~(v15 >> 63), 0);
  if ((v16 & 0x8000000000000000) == 0)
  {
    v27 = v8;
    v17 = 0;
    v18 = v36;
    v31 = v2 + 32;
    v8 = v16;
    do
    {
      if (v9)
      {
        v19 = MEMORY[0x266788B60](v17, a1);
      }

      else
      {
        if ((v17 & 0x8000000000000000) != 0)
        {
          goto LABEL_27;
        }

        if (v17 >= *(v34 + 16))
        {
          goto LABEL_28;
        }

        v19 = *(a1 + 8 * v17 + 32);
      }

      v20 = v19;
      INPerson.id.getter();
      if (qword_28007CE78 != -1)
      {
        swift_once();
      }

      sub_26666A1C8();
      v21 = v33;
      sub_266669798();

      v36 = v18;
      v23 = *(v18 + 16);
      v22 = *(v18 + 24);
      if (v23 >= v22 >> 1)
      {
        sub_266633988(v22 > 1, v23 + 1, 1);
        v21 = v33;
        v18 = v36;
      }

      ++v17;
      *(v18 + 16) = v23 + 1;
      (*(v2 + 32))(v18 + ((*(v2 + 80) + 32) & ~*(v2 + 80)) + *(v2 + 72) * v23, v21, v32);
    }

    while (v16 != v17);
    v8 = v27;
LABEL_24:
    v24 = v30;
    v25 = sub_266669D08();

    (*(v28 + 8))(v24, v29);
    v36 = v8;
    sub_2665C28A4(v25);
    return;
  }

  __break(1u);
}

uint64_t sub_2665F6310(uint64_t a1)
{
  result = MEMORY[0x2667888B0](*(a1 + 16), MEMORY[0x277D837D0], MEMORY[0x277D837E0]);
  v3 = 0;
  v9 = result;
  v4 = *(a1 + 16);
  for (i = (a1 + 40); ; i += 2)
  {
    if (v4 == v3)
    {

      return v9;
    }

    if (v3 >= *(a1 + 16))
    {
      break;
    }

    ++v3;
    v7 = *(i - 1);
    v6 = *i;

    sub_26660B960(&v8, v7, v6);
  }

  __break(1u);
  return result;
}

uint64_t sub_2665F63D0(uint64_t result, uint64_t a2)
{
  if (__OFADD__(*(a2 + 16), *(result + 16)))
  {
    __break(1u);
  }

  else
  {
    sub_2665C6350();
    v5 = v2;

    sub_2665C2988(v3);

    sub_2665C28D0(v4);
    return v5;
  }

  return result;
}

uint64_t sub_2665F6458(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  v6 = sub_2666697B8();
  OUTLINED_FUNCTION_3_0();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_1_0();
  v12 = v11 - v10;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007EE30, &unk_266677230);
  OUTLINED_FUNCTION_3_3(v13);
  OUTLINED_FUNCTION_6_3();
  v15 = MEMORY[0x28223BE20](v14);
  v17 = &v19 - v16;
  a4(v15);
  if (qword_28007CE78 != -1)
  {
    OUTLINED_FUNCTION_11_16();
    swift_once();
  }

  sub_26666A1C8();
  sub_266669798();
  __swift_storeEnumTagSinglePayload(v17, 0, 1, v6);
  (*(v8 + 16))(v12, a1, v6);
  return sub_266669728();
}

uint64_t sub_2665F65F8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28007F810, &unk_26667C710);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2665F673C(uint64_t result, uint64_t a2, unsigned __int8 a3)
{
  if (a3 >> 6 == 1)
  {
    return sub_2665F6760(result, a2, a3 & 1);
  }

  if (!(a3 >> 6))
  {
  }

  return result;
}

uint64_t sub_2665F6760(uint64_t a1, uint64_t a2, char a3)
{
  if ((a3 & 1) == 0)
  {
  }

  return result;
}

uint64_t sub_2665F67E4(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28007EE38, &qword_266677248);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2665F6834(uint64_t a1, uint64_t a2, char a3)
{
  if ((a3 & 1) == 0)
  {
  }

  return result;
}

uint64_t sub_2665F6844(uint64_t result, uint64_t a2, char a3)
{
  if (a3 != -1)
  {
    return sub_2665F6760(result, a2, a3 & 1);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_6_18(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);

  return swift_getDynamicType();
}

uint64_t OUTLINED_FUNCTION_9_19(uint64_t a1, uint64_t a2)
{
  *a2 = 0u;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 2;

  return swift_willThrow();
}

uint64_t OUTLINED_FUNCTION_13_11(uint64_t a1, uint64_t a2)
{
  *a2 = v3;
  *(a2 + 8) = v2;
  *(a2 + 16) = v5;
  *(a2 + 24) = v4;
  *(a2 + 32) = 0;

  return swift_willThrow();
}

uint64_t OUTLINED_FUNCTION_20_14()
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_24_8()
{

  return sub_2665F673C(v0, v2, v1);
}

uint64_t OUTLINED_FUNCTION_37_1(uint64_t a1, uint64_t a2)
{
  *a2 = v3;
  *(a2 + 8) = v2;
  *(a2 + 16) = v5;
  *(a2 + 24) = v4;
  *(a2 + 32) = 0;

  return swift_willThrow();
}

uint64_t OUTLINED_FUNCTION_38_1(uint64_t a1, uint64_t a2, uint64_t a3, ...)
{

  return sub_26666C318();
}

uint64_t OUTLINED_FUNCTION_47_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);

  return sub_2665764F4(v4, va);
}

uint64_t OUTLINED_FUNCTION_50_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  return sub_26666C318();
}

uint64_t sub_2665F6A34(uint64_t a1)
{
  result = sub_26655EC10(319, &qword_28007E348, &protocol descriptor for ConfirmationParsing);
  if (v2 <= 0x3F)
  {
    result = sub_26655EC10(319, qword_28156CBE0, &protocol descriptor for EventProviding);
    if (v3 <= 0x3F)
    {
      result = sub_26655EC10(319, &qword_28156D140, MEMORY[0x277D5BA10]);
      if (v4 <= 0x3F)
      {
        result = type metadata accessor for CommonCATsSimple(319);
        if (v5 <= 0x3F)
        {
          result = sub_26655EC10(319, &qword_28007E350, MEMORY[0x277D5BE28]);
          if (v6 <= 0x3F)
          {
            result = sub_266669A88();
            if (v7 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
              return 0;
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_2665F6BA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 16) = a3;
  *(v4 + 24) = v3;
  OUTLINED_FUNCTION_4_14();
  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_2665F6BCC()
{
  v1 = *(v0 + 24);
  __swift_project_boxed_opaque_existential_1((v1 + 80), *(v1 + 104));
  if (sub_266669658())
  {
    LOBYTE(v2) = 0;
  }

  else
  {
    __swift_project_boxed_opaque_existential_1((v1 + 80), *(v1 + 104));
    v2 = sub_266669698() ^ 1;
  }

  v3 = *(v0 + 8);

  return v3(v2 & 1);
}

uint64_t sub_2665F6CDC()
{
  OUTLINED_FUNCTION_14();
  v3 = v2;
  v1[21] = v2;
  v1[22] = v0;
  v1[19] = v4;
  v1[20] = v5;
  v1[18] = v6;
  v7 = sub_266669E18();
  v1[23] = v7;
  OUTLINED_FUNCTION_3_1(v7);
  v1[24] = v8;
  v1[25] = OUTLINED_FUNCTION_19();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007DD40, &qword_266672600);
  OUTLINED_FUNCTION_3_3(v9);
  v1[26] = OUTLINED_FUNCTION_19();
  v1[27] = *(v3 + 16);
  v10 = sub_266669CE8();
  v1[28] = v10;
  OUTLINED_FUNCTION_3_1(v10);
  v1[29] = v11;
  v1[30] = OUTLINED_FUNCTION_19();
  v12 = sub_266669AE8();
  v1[31] = v12;
  OUTLINED_FUNCTION_3_1(v12);
  v1[32] = v13;
  v1[33] = swift_task_alloc();
  v1[34] = swift_task_alloc();
  v14 = sub_266669E58();
  v1[35] = v14;
  OUTLINED_FUNCTION_3_1(v14);
  v1[36] = v15;
  v1[37] = OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_4_14();

  return MEMORY[0x2822009F8](v16, v17, v18);
}

uint64_t sub_2665F6EBC()
{
  v113 = v0;
  v2 = *(v0 + 288);
  v1 = *(v0 + 296);
  v3 = *(v0 + 280);
  __swift_project_boxed_opaque_existential_1(*(v0 + 176), *(*(v0 + 176) + 24));
  sub_266669DF8();
  v4 = sub_266561674(v1, v0 + 16);
  (*(v2 + 8))(v1, v3, v4);
  v5 = *(v0 + 16);
  if (v5 == 2)
  {
    sub_2665B92F8(v0 + 16);
    goto LABEL_5;
  }

  if (v5 == 3)
  {
    sub_266557D74(v0 + 16, &qword_28007E368, &unk_266673E30);
LABEL_5:
    if (qword_28156C150 != -1)
    {
      OUTLINED_FUNCTION_1_1(&qword_28156C150);
    }

    v7 = *(v0 + 192);
    v6 = *(v0 + 200);
    v8 = *(v0 + 184);
    v9 = *(v0 + 152);
    v10 = sub_26666C168();
    __swift_project_value_buffer(v10, qword_28156D7E8);
    (*(v7 + 16))(v6, v9, v8);
    v11 = sub_26666C148();
    v12 = sub_26666C5F8();
    if (os_log_type_enabled(v11, v12))
    {
      v14 = *(v0 + 192);
      v13 = *(v0 + 200);
      v15 = *(v0 + 184);
      v16 = OUTLINED_FUNCTION_21();
      v17 = swift_slowAlloc();
      v112[0] = v17;
      *v16 = 136315138;
      sub_266669DF8();
      v18 = sub_26666C318();
      v20 = v19;
      (*(v14 + 8))(v13, v15);
      v21 = sub_2665BFC90(v18, v20, v112);

      *(v16 + 4) = v21;
      _os_log_impl(&dword_266549000, v11, v12, "[ConfirmParticipantStrategy] Did not get ConfirmationTask from parse: %s", v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v17);
      OUTLINED_FUNCTION_9_5();
      OUTLINED_FUNCTION_4_1();
    }

    else
    {
      v23 = *(v0 + 192);
      v22 = *(v0 + 200);
      v24 = *(v0 + 184);

      (*(v23 + 8))(v22, v24);
    }

    sub_26656CBFC();
    v25 = swift_allocError();
    OUTLINED_FUNCTION_9_19(v25, v26);
LABEL_12:

    OUTLINED_FUNCTION_24_1();
    goto LABEL_13;
  }

  sub_266557D74(v0 + 24, &unk_28007D200, &qword_26666FD20);
  v27 = sub_266669CC8();
  v28 = [v27 itemToConfirm];

  sub_26666C718();
  swift_unknownObjectRelease();
  v29 = sub_2665F01D8((v0 + 72));
  __swift_destroy_boxed_opaque_existential_1((v0 + 72));
  v32 = *(v0 + 248);
  v33 = *(v0 + 256);
  if (v5)
  {
    v34 = *(v0 + 264);
    sub_266669CD8();
    v35 = sub_266669AC8();
    v37 = v36;
    v108 = *(v33 + 8);
    v108(v34, v32);
    if ((v37 & 1) != 0 || (v38 = *(v0 + 216), v39 = *(v0 + 168), v40 = sub_266669CB8(), v41 = *(v39 + 32), v42 = (*(v41 + 16))(v38, v41), v40, !v42))
    {
      if (qword_28156C150 != -1)
      {
        OUTLINED_FUNCTION_1_1(&qword_28156C150);
      }

      v81 = *(v0 + 232);
      v82 = *(v0 + 240);
      v83 = *(v0 + 224);
      v84 = *(v0 + 160);
      v85 = sub_26666C168();
      __swift_project_value_buffer(v85, qword_28156D7E8);
      (*(v81 + 16))(v82, v84, v83);
      v86 = sub_26666C148();
      v87 = sub_26666C608();
      if (os_log_type_enabled(v86, v87))
      {
        v88 = *(v0 + 272);
        v89 = *(v0 + 240);
        v111 = v29;
        v90 = *(v0 + 232);
        v105 = *(v0 + 224);
        v107 = *(v0 + 248);
        v91 = OUTLINED_FUNCTION_21();
        v92 = swift_slowAlloc();
        v112[0] = v92;
        *v91 = 136315138;
        sub_266669CD8();
        v93 = sub_266669AC8();
        v95 = v94;
        v108(v88, v107);
        *(v0 + 104) = v93;
        *(v0 + 112) = v95 & 1;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007DF58, &qword_2666729B8);
        v96 = sub_26666C318();
        v98 = v97;
        (*(v90 + 8))(v89, v105);
        v29 = v111;
        v99 = sub_2665BFC90(v96, v98, v112);

        *(v91 + 4) = v99;
        _os_log_impl(&dword_266549000, v86, v87, "[ConfirmParticipantStrategy] could not find participant on intent for current multicardinalIndex: %s", v91, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v92);
        OUTLINED_FUNCTION_4_1();
        OUTLINED_FUNCTION_9_5();
      }

      else
      {
        v101 = *(v0 + 232);
        v100 = *(v0 + 240);
        v102 = *(v0 + 224);

        (*(v101 + 8))(v100, v102);
      }

      sub_26656CBFC();
      v103 = swift_allocError();
      OUTLINED_FUNCTION_9_19(v103, v104);

      goto LABEL_12;
    }

    sub_2665C4864();
    v110 = v29;
    if ((v42 & 0xC000000000000001) != 0)
    {
      v43 = MEMORY[0x266788B60](v35, v42);
    }

    else
    {
      v43 = *(v42 + 8 * v35 + 32);
    }

    v44 = v43;
    v45 = *(v0 + 272);
    v46 = *(v0 + 248);
    v106 = *(v0 + 216);

    sub_266552C44(0, &qword_28007D148, 0x277CD3E90);
    v47 = sub_26666C488();
    [v44 setAlternatives:v47];

    v48 = sub_266669CB8();
    sub_266669CD8();
    v49 = sub_266669AC8();
    v51 = v50;
    v108(v45, v46);
    (*(v41 + 24))(v44, v49, v51 & 1, v106, v41);

    v52 = qword_28156C150;
    v53 = *(v0 + 120);
    if (v52 != -1)
    {
      OUTLINED_FUNCTION_1_1(&qword_28156C150);
    }

    v54 = sub_26666C168();
    __swift_project_value_buffer(v54, qword_28156D7E8);
    v55 = sub_26666C148();
    v56 = sub_26666C618();
    if (os_log_type_enabled(v55, v56))
    {
      v57 = swift_slowAlloc();
      *v57 = 0;
      _os_log_impl(&dword_266549000, v55, v56, "[ConfirmParticipantStrategy] Rejected participant, removed matches but kept skeleton", v57, 2u);
      OUTLINED_FUNCTION_4_1();
    }
  }

  else
  {
    v58 = *(v0 + 272);
    v109 = *(v0 + 216);
    v59 = *(v0 + 168);
    v60 = sub_266669CB8();
    sub_266669CD8();
    v61 = sub_266669AC8();
    v63 = v62;
    (*(v33 + 8))(v58, v32);
    v110 = v29;
    (*(*(v59 + 32) + 24))(v29, v61, v63 & 1, v109);

    v64 = qword_28156C150;
    v53 = *(v0 + 136);
    if (v64 != -1)
    {
      OUTLINED_FUNCTION_1_1(&qword_28156C150);
    }

    v65 = sub_26666C168();
    __swift_project_value_buffer(v65, qword_28156D7E8);
    v44 = sub_26666C148();
    v66 = sub_26666C618();
    if (os_log_type_enabled(v44, v66))
    {
      v67 = swift_slowAlloc();
      *v67 = 0;
      _os_log_impl(&dword_266549000, v44, v66, "[ConfirmParticipantStrategy] Confirmed participant.", v67, 2u);
      OUTLINED_FUNCTION_9_5();
    }
  }

  if (qword_28156C150 != -1)
  {
    OUTLINED_FUNCTION_1_1(&qword_28156C150);
  }

  v68 = sub_26666C168();
  __swift_project_value_buffer(v68, qword_28156D7E8);
  v69 = v53;
  v70 = sub_26666C148();
  v71 = sub_26666C618();

  if (os_log_type_enabled(v70, v71))
  {
    v72 = OUTLINED_FUNCTION_21();
    v73 = swift_slowAlloc();
    v112[0] = v73;
    *v72 = 136315138;
    *(v0 + 128) = v69;
    v74 = v69;
    swift_getWitnessTable();
    v75 = sub_26666C328();
    v77 = sub_2665BFC90(v75, v76, v112);

    *(v72 + 4) = v77;
    _os_log_impl(&dword_266549000, v70, v71, "[ConfirmParticipantStrategy] Updated intent: %s", v72, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v73);
    OUTLINED_FUNCTION_4_1();
    OUTLINED_FUNCTION_9_5();
  }

  v78 = *(v0 + 208);
  v79 = sub_266669AF8();
  v80 = MEMORY[0x277D5BED0];
  if ((v5 & 1) == 0)
  {
    v80 = MEMORY[0x277D5BED8];
  }

  (*(*(v79 - 8) + 104))(v78, *v80, v79);
  __swift_storeEnumTagSinglePayload(v78, 0, 1, v79);
  sub_266669B98();

  OUTLINED_FUNCTION_24_1();
LABEL_13:

  return v30();
}

uint64_t sub_2665F7968()
{
  OUTLINED_FUNCTION_14();
  v1[48] = v2;
  v1[49] = v0;
  v1[46] = v3;
  v1[47] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007D330, &unk_26666EEA0);
  OUTLINED_FUNCTION_3_3(v5);
  v1[50] = OUTLINED_FUNCTION_19();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28007DE20, &unk_26666EAE0);
  OUTLINED_FUNCTION_3_3(v6);
  v1[51] = OUTLINED_FUNCTION_19();
  v7 = sub_266669708();
  v1[52] = v7;
  OUTLINED_FUNCTION_3_1(v7);
  v1[53] = v8;
  v1[54] = OUTLINED_FUNCTION_19();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007D338, &qword_26666EEB0);
  OUTLINED_FUNCTION_3_3(v9);
  v1[55] = OUTLINED_FUNCTION_19();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28007DE30, &unk_26666EAF0);
  OUTLINED_FUNCTION_3_3(v10);
  v1[56] = swift_task_alloc();
  v1[57] = swift_task_alloc();
  v11 = type metadata accessor for Snippet.Event(0);
  OUTLINED_FUNCTION_3_3(v11);
  v1[58] = OUTLINED_FUNCTION_19();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007E360, &unk_2666773F0);
  OUTLINED_FUNCTION_3_3(v12);
  v1[59] = OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_4_14();

  return MEMORY[0x2822009F8](v13, v14, v15);
}

uint64_t sub_2665F7B24()
{
  sub_266669CE8();
  v1 = sub_266669CC8();
  v2 = [v1 itemToConfirm];

  sub_26666C718();
  swift_unknownObjectRelease();
  v3 = sub_2665F01D8(v0 + 42);
  v0[60] = v3;
  __swift_destroy_boxed_opaque_existential_1(v0 + 42);
  if (qword_28156C150 != -1)
  {
    OUTLINED_FUNCTION_1_1(&qword_28156C150);
  }

  v6 = sub_26666C168();
  __swift_project_value_buffer(v6, qword_28156D7E8);
  v7 = v3;
  v8 = sub_26666C148();
  v9 = sub_26666C618();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = OUTLINED_FUNCTION_21();
    v11 = swift_slowAlloc();
    *v10 = 138412290;
    *(v10 + 4) = v7;
    *v11 = v7;
    v12 = v7;
    _os_log_impl(&dword_266549000, v8, v9, "[ConfirmParticipantStrategy] Making prompt to confirm participant: %@", v10, 0xCu);
    sub_266557D74(v11, &unk_28007DCA0, &qword_26666E370);
    OUTLINED_FUNCTION_4_1();
    OUTLINED_FUNCTION_4_1();
  }

  v13 = sub_266669CB8();
  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    v14 = sub_2665826C4();

    v15 = v14;
LABEL_11:
    v0[61] = v15;
    v16 = v0[49];
    type metadata accessor for CalendarEventConcept(0);
    v17 = v16 + 80;
    sub_26655358C(v16 + 80, (v0 + 17));
    v18 = sub_2665CA7F4(v15, v0 + 17);
    v0[62] = v18;
    v0[63] = *(v16 + 120);
    v0[64] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28007DE50, &unk_26666E360);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_26666E050;
    *(inited + 32) = v7;
    v20 = swift_task_alloc();
    *(v20 + 16) = v17;
    v21 = v7;

    sub_2665511FC(sub_266557CC8, v20, inited);
    v23 = v22;
    v0[65] = v22;
    swift_setDeallocating();
    sub_26663919C();

    v24 = swift_task_alloc();
    v0[66] = v24;
    *v24 = v0;
    v24[1] = sub_2665F8170;

    return sub_2665D7F9C(v18, v23);
  }

  v25 = sub_266669CB8();
  objc_opt_self();
  v26 = swift_dynamicCastObjCClass();
  if (v26)
  {
    v27 = [v26 targetEventIdentifier];
    if (v27)
    {
      v28 = v27;
      v29 = sub_26666C308();
      v31 = v30;
    }

    else
    {
      v29 = 0;
      v31 = 0;
    }

    v32 = *__swift_project_boxed_opaque_existential_1((v0[49] + 40), *(v0[49] + 64));
    v0[5] = type metadata accessor for EventProvider();
    v0[6] = &off_287806290;
    v0[2] = v32;
    sub_26655358C((v0 + 2), (v0 + 7));

    __swift_destroy_boxed_opaque_existential_1(v0 + 2);
    if (v31)
    {
      __swift_project_boxed_opaque_existential_1(v0 + 7, v0[10]);

      v33 = sub_26655A8B4();
      v34 = sub_26665140C(v29, v31, v33);

      swift_bridgeObjectRelease_n();
      __swift_destroy_boxed_opaque_existential_1(v0 + 7);
      if (v34)
      {
        sub_266552C44(0, &qword_28156C110, 0x277CD3AD8);
        v35 = v34;
        sub_2665EB4F8();
        v37 = v36;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28007DE50, &unk_26666E360);
        v38 = swift_initStackObject();
        *(v38 + 16) = xmmword_26666E050;
        *(v38 + 32) = v7;
        v39 = v37;
        v40 = v7;
        v15 = v39;
        sub_266580C38(v38);
        swift_setDeallocating();
        sub_26663919C();
        sub_266552C44(0, &qword_28007D748, 0x277CD3BE8);
        v41 = sub_26666C488();

        v42 = sub_26666C2F8();
        [v15 setValue:v41 forKeyPath:v42];

        goto LABEL_11;
      }
    }

    else
    {
      __swift_destroy_boxed_opaque_existential_1(v0 + 7);
    }
  }

  v43 = sub_26666C148();
  v44 = sub_26666C5F8();
  if (os_log_type_enabled(v43, v44))
  {
    v45 = swift_slowAlloc();
    *v45 = 0;
    _os_log_impl(&dword_266549000, v43, v44, "[ConfirmParticipantStrategy] Unexpected intent!", v45, 2u);
    OUTLINED_FUNCTION_4_1();
  }

  sub_26656CBFC();
  v46 = swift_allocError();
  OUTLINED_FUNCTION_9_19(v46, v47);

  OUTLINED_FUNCTION_6_19();

  OUTLINED_FUNCTION_24_1();

  return v4();
}

uint64_t sub_2665F8170()
{
  v2 = *v1;
  OUTLINED_FUNCTION_5_0();
  *v3 = v2;
  *(v2 + 536) = v4;
  *(v2 + 544) = v0;

  if (v0)
  {
  }

  OUTLINED_FUNCTION_4_14();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_2665F82B8()
{
  v1 = *(v0 + 544);
  v2 = *(v0 + 488);
  v3 = *(v0 + 392);
  type metadata accessor for Snippet.ComposeEventModel(0);
  OUTLINED_FUNCTION_7_6();
  __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
  sub_26655358C(v3 + 40, v0 + 216);
  v8 = v2;
  sub_2665AAA8C(v8, v0 + 216, v9, v10, v11, v12, v13, v14, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v0);
  if (v1)
  {
    v15 = *(v0 + 536);
    v16 = *(v0 + 488);
    v17 = *(v0 + 472);
    v18 = *(v0 + 480);

    sub_266557D74(v17, &qword_28007E360, &unk_2666773F0);
    OUTLINED_FUNCTION_13_12();

    OUTLINED_FUNCTION_24_1();
    OUTLINED_FUNCTION_26();

    __asm { BRAA            X1, X16 }
  }

  v21 = *(v0 + 472);
  v22 = *(v0 + 480);
  v23 = *(v0 + 456);
  v24 = *(v0 + 464);
  v25 = *(v0 + 392);
  sub_26666B098();
  swift_allocObject();
  *(v0 + 552) = sub_26666B088();
  sub_26655358C(v25 + 128, v0 + 256);
  v26 = *(v0 + 280);
  *(v0 + 560) = v26;
  *(v0 + 576) = __swift_project_boxed_opaque_existential_1((v0 + 256), v26);
  v27 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007D328, &unk_266677400) + 48);
  sub_2665B5F10(v24, v23);
  sub_2665F927C(v21, v23 + v27);
  v28 = type metadata accessor for Snippet(0);
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v23, 0, 1, v28);
  OUTLINED_FUNCTION_7_6();
  __swift_storeEnumTagSinglePayload(v29, v30, v31, v28);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26666E050;
  *(inited + 32) = v22;
  v33 = swift_task_alloc();
  *(v33 + 16) = v25 + 80;
  v34 = v22;
  sub_2665511FC(sub_2665F92EC, v33, inited);
  *(v0 + 584) = v35;
  swift_setDeallocating();
  sub_26663919C();

  v36 = swift_task_alloc();
  *(v0 + 592) = v36;
  *v36 = v0;
  v36[1] = sub_2665F85A0;
  OUTLINED_FUNCTION_26();

  return sub_2665D7F9C(v37, v38);
}

uint64_t sub_2665F85A0()
{
  v2 = *v1;
  OUTLINED_FUNCTION_5_0();
  *v3 = v2;
  v2[75] = v4;
  v2[76] = v0;

  if (v0)
  {
    v6 = v2[56];
    v5 = v2[57];

    sub_266557D74(v6, &unk_28007DE30, &unk_26666EAF0);
    sub_266557D74(v5, &unk_28007DE30, &unk_26666EAF0);
  }

  else
  {
  }

  OUTLINED_FUNCTION_4_14();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_2665F8730(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9, char a10, __int16 a11, __int128 a12, uint64_t a13, uint64_t a14)
{
  v15 = *(v14 + 608);
  sub_266662A60(*(v14 + 552), *(v14 + 440));
  if (v15)
  {
    v16 = *(v14 + 536);
    v17 = *(v14 + 488);
    v18 = *(v14 + 480);
    v41 = *(v14 + 472);
    v20 = *(v14 + 456);
    v19 = *(v14 + 464);
    v21 = *(v14 + 448);

    sub_266557D74(v21, &unk_28007DE30, &unk_26666EAF0);
    sub_266557D74(v20, &unk_28007DE30, &unk_26666EAF0);
    sub_2665AE46C(v19);
    sub_266557D74(v41, &qword_28007E360, &unk_2666773F0);
    __swift_destroy_boxed_opaque_existential_1((v14 + 256));
    OUTLINED_FUNCTION_13_12();

    OUTLINED_FUNCTION_24_1();

    return v22();
  }

  else
  {
    v24 = *(v14 + 440);
    v25 = sub_2666699C8();
    __swift_storeEnumTagSinglePayload(v24, 0, 1, v25);
    sub_2666696B8();
    sub_26666BB08();
    OUTLINED_FUNCTION_7_6();
    __swift_storeEnumTagSinglePayload(v26, v27, v28, v29);
    sub_266669788();
    OUTLINED_FUNCTION_7_6();
    __swift_storeEnumTagSinglePayload(v30, v31, v32, v33);
    sub_26656CFC4();
    v34 = swift_task_alloc();
    *(v14 + 616) = v34;
    *v34 = v14;
    v34[1] = sub_2665F89C8;
    v35 = *(v14 + 600);
    v37 = *(v14 + 448);
    v36 = *(v14 + 456);
    v39 = *(v14 + 432);
    v38 = *(v14 + 440);
    v40 = *(v14 + 368);

    return sub_2665643AC(v40, v36, v37, v35, 0, 0, v38, v39, a9, a10, a11, a12, a13, a14);
  }
}

uint64_t sub_2665F89C8()
{
  v1 = *(*v0 + 600);
  v15 = *(*v0 + 456);
  v2 = *(*v0 + 448);
  v3 = *(*v0 + 440);
  v4 = *(*v0 + 432);
  v5 = *(*v0 + 424);
  v6 = *(*v0 + 416);
  v7 = *(*v0 + 408);
  v8 = *(*v0 + 400);
  v9 = *v0;
  OUTLINED_FUNCTION_5_0();
  *v10 = v9;

  sub_266557D74(v8, &qword_28007D330, &unk_26666EEA0);
  sub_266557D74(v7, &unk_28007DE20, &unk_26666EAE0);
  (*(v5 + 8))(v4, v6);
  sub_266557D74(v3, &qword_28007D338, &qword_26666EEB0);
  sub_266557D74(v2, &unk_28007DE30, &unk_26666EAF0);
  sub_266557D74(v15, &unk_28007DE30, &unk_26666EAF0);
  OUTLINED_FUNCTION_4_14();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

void sub_2665F8C28()
{
  v1 = *(v0 + 488);
  v3 = *(v0 + 472);
  v2 = *(v0 + 480);
  v4 = *(v0 + 464);

  sub_2665AE46C(v4);
  sub_266557D74(v3, &qword_28007E360, &unk_2666773F0);
  __swift_destroy_boxed_opaque_existential_1((v0 + 256));

  OUTLINED_FUNCTION_24_1();
  OUTLINED_FUNCTION_26();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_2665F8D40()
{
  v1 = *(v0 + 480);

  OUTLINED_FUNCTION_6_19();

  OUTLINED_FUNCTION_24_1();

  return v2();
}

uint64_t sub_2665F8E04()
{
  v1 = *(v0 + 488);
  v2 = *(v0 + 472);
  v3 = *(v0 + 480);
  v4 = *(v0 + 464);

  sub_2665AE46C(v4);
  sub_266557D74(v2, &qword_28007E360, &unk_2666773F0);
  __swift_destroy_boxed_opaque_existential_1((v0 + 256));
  OUTLINED_FUNCTION_6_19();

  OUTLINED_FUNCTION_24_1();

  return v5();
}

uint64_t sub_2665F8F08@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 64);
  v5 = sub_266669A88();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_2665F8F80()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2665B93A4;

  return sub_2665F6CDC();
}

uint64_t sub_2665F9040(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = swift_task_alloc();
  *(v3 + 16) = v5;
  *v5 = v3;
  v5[1] = sub_2665B8910;

  return sub_2665F6BA0(v5, v6, a3);
}

uint64_t sub_2665F90D4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2665B8AC0;

  return sub_2665F7968();
}

uint64_t sub_2665F9184(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = sub_2665B93A4;

  return MEMORY[0x2821B9E18](a1, a2, a3, a4, a5, a6);
}

uint64_t sub_2665F927C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007E360, &unk_2666773F0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t OUTLINED_FUNCTION_6_19()
{
}

uint64_t OUTLINED_FUNCTION_13_12()
{
}

uint64_t DIPromptForTitle.title.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t sub_2665F93E8(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x656C746974 && a2 == 0xE500000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_26666CAC8();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_2665F9474@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2665F93E8(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_2665F94A0(uint64_t a1)
{
  v2 = sub_2665F9694();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2665F94DC(uint64_t a1)
{
  v2 = sub_2665F9694();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t static DIPromptForTitle.__derived_struct_equals(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    if (a4)
    {
      v4 = a1 == a3 && a2 == a4;
      if (v4 || (sub_26666CAC8() & 1) != 0)
      {
        return 1;
      }
    }
  }

  else if (!a4)
  {
    return 1;
  }

  return 0;
}

uint64_t DIPromptForTitle.encode(to:)(void *a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007EF28, &qword_266677420);
  OUTLINED_FUNCTION_3_0();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  v8 = &v10 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2665F9694();
  sub_26666CBE8();
  sub_26666CA18();
  return (*(v5 + 8))(v8, v3);
}

unint64_t sub_2665F9694()
{
  result = qword_28007EF30;
  if (!qword_28007EF30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007EF30);
  }

  return result;
}

void *DIPromptForTitle.init(from:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007EF38, &qword_266677428);
  OUTLINED_FUNCTION_3_0();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  v8 = &v11 - v7;
  v9 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2665F9694();
  sub_26666CBD8();
  if (!v1)
  {
    v9 = sub_26666C988();
    (*(v5 + 8))(v8, v3);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v9;
}

void *sub_2665F9844@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  result = DIPromptForTitle.init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
  }

  return result;
}

unint64_t sub_2665F98A4(void *a1)
{
  a1[1] = sub_266563E34();
  a1[2] = sub_2665F98DC();
  result = sub_2665F9930();
  a1[3] = result;
  return result;
}

unint64_t sub_2665F98DC()
{
  result = qword_28007EF40;
  if (!qword_28007EF40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007EF40);
  }

  return result;
}

unint64_t sub_2665F9930()
{
  result = qword_28007EF48;
  if (!qword_28007EF48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007EF48);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for DIPromptForTitle.CodingKeys(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

unint64_t sub_2665F9A44()
{
  result = qword_28007EF50;
  if (!qword_28007EF50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007EF50);
  }

  return result;
}

unint64_t sub_2665F9A9C()
{
  result = qword_28007EF58;
  if (!qword_28007EF58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007EF58);
  }

  return result;
}

unint64_t sub_2665F9AF4()
{
  result = qword_28007EF60;
  if (!qword_28007EF60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007EF60);
  }

  return result;
}

uint64_t sub_2665F9B7C(uint64_t a1)
{
  v1[160] = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007D140, &qword_26666F140);
  OUTLINED_FUNCTION_3_3(v2);
  v1[161] = OUTLINED_FUNCTION_19();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007EF68, &qword_266677648);
  v1[162] = v3;
  v1[163] = *(v3 - 8);
  v1[164] = OUTLINED_FUNCTION_19();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007EF70, &unk_266677650);
  v1[165] = v4;
  OUTLINED_FUNCTION_3_3(v4);
  v1[166] = OUTLINED_FUNCTION_19();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007EF78, &qword_26667B710);
  v1[167] = v5;
  OUTLINED_FUNCTION_3_3(v5);
  v1[168] = OUTLINED_FUNCTION_19();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007EF80, &qword_266677660);
  v1[169] = v6;
  v1[170] = *(v6 - 8);
  v1[171] = swift_task_alloc();
  v1[172] = swift_task_alloc();
  v7 = type metadata accessor for TaskParser(0);
  v1[173] = v7;
  OUTLINED_FUNCTION_3_3(v7);
  v1[174] = OUTLINED_FUNCTION_19();
  v8 = sub_26666BE18();
  OUTLINED_FUNCTION_3_3(v8);
  v1[175] = OUTLINED_FUNCTION_19();

  return MEMORY[0x2822009F8](sub_2665F9D84, 0, 0);
}

uint64_t sub_2665F9D84(uint64_t a1)
{
  v2 = *(v1 + 1392);
  v3 = *(v1 + 1384);
  v4 = *(v1 + 1280);
  sub_266669638();
  sub_266669E68();
  type metadata accessor for CommonCATsSimple(0);
  sub_26666BE08();
  v5 = sub_26666BDD8();
  *(v1 + 1408) = v5;
  __swift_project_boxed_opaque_existential_1((v1 + 864), *(v1 + 888));
  sub_266669648();
  v6 = (v2 + v3[5]);
  v6[3] = type metadata accessor for CalendarDateTimeResolver(0);
  v6[4] = &off_28780BA58;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v6);
  boxed_opaque_existential_1[3] = &type metadata for AceUserLocationProvider;
  boxed_opaque_existential_1[4] = &off_28780A9C8;
  OUTLINED_FUNCTION_4();
  v8 = swift_allocObject();
  *boxed_opaque_existential_1 = v8;
  sub_2665524C0(v1 + 824, v8 + 16);
  sub_266668D88();
  sub_26666B548();
  v9 = (v2 + v3[6]);
  v10 = type metadata accessor for CalendarContactResolver(0);
  v9[3] = v10;
  v9[4] = &off_287809148;
  *(__swift_allocate_boxed_opaque_existential_1(v9) + *(v10 + 20)) = 0;
  sub_26666B338();
  sub_26666C068();
  v11 = sub_26666C058();
  v12 = (v2 + v3[7]);
  v12[3] = &type metadata for CalendarReferenceResolver;
  v12[4] = &off_28780BAC8;
  *v12 = v11;
  v13 = v4[3];
  v14 = v4[4];
  v61 = v4;
  __swift_project_boxed_opaque_existential_1(v4, v13);
  LODWORD(v9) = (*(v14 + 16))(v13, v14);
  v15 = objc_allocWithZone(_s13IntentHandlerCMa_1());
  v16 = sub_26660F0D0(v9);
  *(v1 + 928) = v3;
  *(v1 + 936) = &off_287808308;
  v17 = __swift_allocate_boxed_opaque_existential_1((v1 + 904));
  sub_266552BE0(v2, v17);
  sub_26655358C(v1 + 864, v1 + 944);
  v18 = qword_28156CD28;
  v58 = v16;
  if (v18 != -1)
  {
    swift_once();
  }

  v54 = *(v1 + 1384);
  v55 = *(v1 + 1392);
  v19 = *(v1 + 1376);
  v56 = *(v1 + 1360);
  v57 = *(v1 + 1368);
  v62 = *(v1 + 1352);
  v20 = *(v1 + 1344);
  v21 = *(v1 + 1328);
  v59 = *(v1 + 1280);
  v60 = *(v1 + 1288);
  v22 = qword_28156D828;
  *(v1 + 1008) = type metadata accessor for EventProvider();
  *(v1 + 1016) = &off_287806290;
  *(v1 + 984) = v22;
  sub_2666699F8();
  OUTLINED_FUNCTION_0_33();
  v24 = v23;
  swift_allocObject();

  v25 = sub_2666699E8();
  *(v1 + 1048) = v24;
  *(v1 + 1056) = MEMORY[0x277D5BD58];
  *(v1 + 1024) = v25;
  type metadata accessor for CreateEventCATsSimple(0);
  sub_26666BE08();
  v26 = sub_26666BDD8();
  *(v1 + 1088) = &type metadata for SiriCalendarFeatureManager;
  *(v1 + 1096) = &protocol witness table for SiriCalendarFeatureManager;
  sub_266552C44(0, &qword_28007DE60, 0x277CD3B20);
  sub_266552C44(0, &qword_28007F240, 0x277CD3B28);

  sub_2666694A8();
  *(v1 + 1416) = sub_26666BE38();
  OUTLINED_FUNCTION_2_30();
  sub_26666BE28();
  sub_2666693C8();

  sub_266669458();
  sub_26655358C(v1 + 1024, v1 + 552);
  sub_26655358C(v1 + 944, v1 + 592);
  *(v1 + 536) = v26;
  *(v1 + 544) = v5;
  sub_2665FB0C0(v1 + 536, v1 + 632);
  v27 = swift_allocObject();
  memcpy((v27 + 16), (v1 + 632), 0x60uLL);

  v52 = v19;
  sub_266669478();
  sub_26655358C(v1 + 904, v1 + 1104);
  v20[3] = &unk_287806408;
  v20[4] = &off_2878064B0;
  OUTLINED_FUNCTION_4();
  v28 = swift_allocObject();
  *v20 = v28;
  sub_266552D2C(v1 + 1104, v28 + 16);
  sub_26655358C(v1 + 984, (v20 + 5));
  sub_26655358C(v1 + 944, (v20 + 10));
  sub_26655358C(v1 + 1024, (v20 + 15));
  v20[24] = &type metadata for SiriCalendarFeatureManager;
  v20[25] = &protocol witness table for SiriCalendarFeatureManager;
  v20[20] = v5;

  sub_266669A78();
  *(v1 + 40) = &unk_287806408;
  *(v1 + 48) = &off_2878064B0;
  OUTLINED_FUNCTION_4();
  v29 = swift_allocObject();
  *(v1 + 16) = v29;
  sub_266552D2C(v1 + 1104, v29 + 16);
  sub_26655358C(v1 + 904, v1 + 56);
  sub_26655358C(v1 + 984, v1 + 96);
  sub_26655358C(v1 + 944, v1 + 136);
  sub_26655358C(v1 + 1024, v1 + 176);
  *(v1 + 216) = v5;
  sub_26655358C(v1 + 904, v1 + 224);
  sub_26655358C(v1 + 944, v1 + 264);
  sub_26655358C(v1 + 1024, v1 + 320);
  sub_26655358C(v1 + 1064, v1 + 360);
  v53 = v26;
  *(v1 + 304) = v26;
  *(v1 + 312) = v5;
  sub_26655358C(v1 + 904, v1 + 1144);
  sub_2665FB124();
  swift_retain_n();

  v30 = sub_266669398();
  v32 = v31;
  v33 = swift_allocObject();
  *(v33 + 16) = v30;
  *(v33 + 24) = v32;
  v34 = *(v1 + 1160);
  *(v33 + 32) = *(v1 + 1144);
  *(v33 + 48) = v34;
  *(v33 + 64) = *(v1 + 1176);
  sub_266669438();
  sub_26666BD78();
  sub_26666BD68();
  v35 = sub_26666BE78();
  OUTLINED_FUNCTION_0_33();
  swift_allocObject();
  OUTLINED_FUNCTION_2_30();
  v36 = sub_26666BE68();
  v37 = sub_26666C058();
  *(v1 + 1208) = &type metadata for CalendarReferenceResolver;
  *(v1 + 1216) = &off_28780BAC8;
  *(v1 + 1184) = v37;
  sub_26655358C(v1 + 944, v1 + 1224);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007EF90, &qword_266677668);
  v38 = swift_allocObject();
  v39 = MEMORY[0x277D56578];
  *(v38 + 48) = v35;
  *(v38 + 56) = v39;
  *(v38 + 24) = v36;
  *(v38 + 88) = &type metadata for DisambiguationResponseParser;
  *(v38 + 96) = &off_287806688;
  OUTLINED_FUNCTION_4();
  v40 = swift_allocObject();
  *(v38 + 64) = v40;
  sub_26656CCE8(v1 + 1184, v40 + 16);
  *(v38 + 144) = 0;
  *(v38 + 152) = 0;
  *(v38 + 160) = 0x80;
  *(v38 + 16) = 0;
  sub_26654B7D8((v1 + 1224), v38 + 104);
  sub_26656CD44(v1 + 1184);
  *(v1 + 1264) = v38;
  sub_26655369C(&qword_28007EF98, &qword_28007EF90, &qword_266677668, &unk_266677178);
  sub_2666693E8();
  sub_266669498();
  v21[3] = &unk_287806408;
  v21[4] = &off_2878064B0;
  OUTLINED_FUNCTION_4();
  v41 = swift_allocObject();
  *v21 = v41;
  sub_266552D2C(v1 + 1104, v41 + 16);
  sub_26655358C(v1 + 984, (v21 + 5));
  sub_26655358C(v1 + 944, (v21 + 10));
  sub_26655358C(v1 + 1024, (v21 + 16));
  v21[15] = v5;
  sub_266669A78();
  sub_266649918(v20, v1 + 16, v21);
  sub_266669488();
  sub_26655358C(v1 + 944, v1 + 416);
  sub_26655358C(v1 + 984, v1 + 456);
  OUTLINED_FUNCTION_0_33();
  v43 = v42;
  swift_allocObject();
  v44 = sub_2666699E8();
  *(v1 + 520) = v43;
  *(v1 + 528) = MEMORY[0x277D5BD58];
  *(v1 + 496) = v44;
  *(v1 + 400) = v58;
  *(v1 + 408) = v53;
  sub_2665FB184();
  sub_2666693B8();
  sub_266669448();

  sub_2665FB1D8(v1 + 224);
  sub_266552F34(v1 + 1104);
  sub_2665FB22C(v1 + 536);
  __swift_destroy_boxed_opaque_existential_1((v1 + 944));
  __swift_destroy_boxed_opaque_existential_1((v1 + 1064));
  __swift_destroy_boxed_opaque_existential_1((v1 + 1024));
  __swift_destroy_boxed_opaque_existential_1((v1 + 984));
  __swift_destroy_boxed_opaque_existential_1((v1 + 904));
  sub_2665FB280(v1 + 400);
  sub_266557D74(v21, &qword_28007EF70, &unk_266677650);
  sub_266557D74(v1 + 16, &qword_28007EFA8, &qword_266677670);
  sub_266557D74(v20, &qword_28007EF78, &qword_26667B710);
  *(v1 + 752) = v54;
  *(v1 + 760) = &off_287808308;
  v45 = __swift_allocate_boxed_opaque_existential_1((v1 + 728));
  sub_266552BE0(v55, v45);
  *(v1 + 768) = v58;
  sub_2665FB2D4(v1 + 728, v1 + 776);
  (*(v56 + 16))(v57, v52, v62);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007EFB0, &qword_266677678);
  OUTLINED_FUNCTION_0_33();
  swift_allocObject();
  sub_2666694B8();
  sub_2665FB330();
  sub_266669808();
  v47 = v61[3];
  v46 = v61[4];
  __swift_project_boxed_opaque_existential_1(v59, v47);
  v48 = sub_266668D38();
  __swift_storeEnumTagSinglePayload(v60, 1, 1, v48);
  v49 = swift_task_alloc();
  *(v1 + 1424) = v49;
  *v49 = v1;
  v49[1] = sub_2665FA840;
  v50 = *(v1 + 1288);

  return sub_266668604(v50, v47, v46);
}

uint64_t sub_2665FA840(uint64_t a1)
{
  v2 = *(*v1 + 1288);
  *(*v1 + 1432) = a1;

  sub_266557D74(v2, &qword_28007D140, &qword_26666F140);

  return MEMORY[0x2822009F8](sub_2665FA970, 0, 0);
}

uint64_t sub_2665FA970()
{
  v1 = v0[179];
  v12 = v0[174];
  v11 = v0[172];
  v2 = v0[170];
  v10 = v0[169];
  v3 = v0[164];
  v4 = v0[163];
  v5 = v0[162];
  OUTLINED_FUNCTION_2_30();
  sub_26666BE28();
  v6 = sub_2666697F8();

  v0[159] = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007EFC0, &qword_266677680);
  sub_26655369C(&qword_28007EFC8, &qword_28007EFC0, &qword_266677680, MEMORY[0x277D5B820]);
  v7 = sub_266669528();

  (*(v4 + 8))(v3, v5);
  sub_2665FB384((v0 + 91));
  (*(v2 + 8))(v11, v10);
  sub_266553128(v12);
  sub_266553184((v0 + 103));

  __swift_destroy_boxed_opaque_existential_1(v0 + 108);

  v8 = v0[1];

  return v8(v7);
}

unint64_t sub_2665FAB78(uint64_t a1, uint64_t a2)
{
  v2 = sub_26666C958();

  if (v2 >= 4)
  {
    return 4;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_2665FABC4(char a1)
{
  result = 0x656C746974;
  switch(a1)
  {
    case 1:
      result = 0x656D695465746164;
      break;
    case 2:
      result = 0x6E6F697461636F6CLL;
      break;
    case 3:
      result = 0x7069636974726170;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_2665FAC7C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_2665FAB78(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_2665FACAC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2665FABC4(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_2665FACD8(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007DFC8, &unk_266677850);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26666EED0;
  *(inited + 32) = sub_26666C308();
  *(inited + 40) = v3;

  v4 = sub_26666C318();
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 48) = v4;
  *(inited + 56) = v5;
  return sub_26666C258();
}

uint64_t sub_2665FAD98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 == a3 && a2 == a4)
  {
    return 1;
  }

  else
  {
    return sub_26666CAC8();
  }
}

uint64_t sub_2665FADB4(uint64_t a1)
{
  v2 = sub_2665FB580();

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t sub_2665FADF0(uint64_t a1)
{
  v2 = sub_2665FB580();

  return MEMORY[0x28211F4A8](a1, v2);
}

uint64_t sub_2665FAE58(unsigned __int8 a1)
{
  if (a1 - 2 < 2)
  {
    return MEMORY[0x277D84F90];
  }

  if (a1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007E610, &qword_266677630);
    v1 = swift_allocObject();
    *(v1 + 16) = xmmword_26666EED0;
    if (qword_28007CE50 != -1)
    {
      swift_once();
    }

    v2 = sub_2665E877C();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007E610, &qword_266677630);
    v1 = swift_allocObject();
    *(v1 + 16) = xmmword_26666EED0;
    if (qword_28007CE58 != -1)
    {
      swift_once();
    }

    v2 = sub_2665E88AC();
  }

  *(v1 + 32) = v2;
  *(v1 + 40) = v3;
  return v1;
}

uint64_t sub_2665FAF68(char a1)
{
  sub_26666B058();
  OUTLINED_FUNCTION_0_33();
  swift_allocObject();
  v2 = sub_26666B048();
  sub_26666AF28();
  OUTLINED_FUNCTION_0_33();
  swift_allocObject();
  sub_26666AF18();
  sub_26666AB08();
  switch(a1)
  {
    case 1:
      sub_26666AF78();
      OUTLINED_FUNCTION_0_33();
      swift_allocObject();
      sub_26666AF68();
      sub_26666AB88();
      OUTLINED_FUNCTION_0_33();
      swift_allocObject();
      sub_26666AB78();
      sub_26666AF38();

      sub_26666AEE8();

      break;
    case 2:
    case 3:

      v2 = 0;
      break;
    default:
      sub_26666AF08();

      break;
  }

  return v2;
}