void sub_26A55926C(uint64_t a1, __n128 a2)
{
  v4 = type metadata accessor for TableManager.CardSectionTableDefinition(0);
  OUTLINED_FUNCTION_46();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_41();
  v39 = v7 - v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AD238, &unk_26A872B60);
  OUTLINED_FUNCTION_46();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_19();
  v36 = v9;
  OUTLINED_FUNCTION_92();
  MEMORY[0x28223BE20](v10);
  v12 = &v34 - v11;
  v41 = swift_allocBox();
  v14 = v13;
  __swift_storeEnumTagSinglePayload(v13, 1, 1, v4);
  v15 = swift_allocObject();
  sub_26A84ACC8();
  OUTLINED_FUNCTION_5_16();
  sub_26A55E600(v16, v17, MEMORY[0x277CC9600]);
  v42 = v4;
  v18 = sub_26A8516A8();
  v40 = v15;
  *(v15 + 16) = v18;
  v34 = v15 + 16;
  v19 = sub_26A73670C();

  v43 = v14;
  swift_beginAccess();
  v20 = 0;
  v21 = a1 & 0xC000000000000001;
  v22 = a1 & 0xFFFFFFFFFFFFFF8;
  v37 = a1;
  v38 = v2;
  v35 = v12;
  while (1)
  {
    if (v19 == v20)
    {

      sub_26A55BF30(v41, v40);
      OUTLINED_FUNCTION_20_4();
      swift_beginAccess();

      return;
    }

    if (v21)
    {
      v23 = MEMORY[0x26D6644E0](v20, a1);
    }

    else
    {
      if (v20 >= *(v22 + 16))
      {
        goto LABEL_24;
      }

      v23 = *(a1 + 8 * v20 + 32);
    }

    v24 = v23;
    if (__OFADD__(v20, 1))
    {
      break;
    }

    v25 = sub_26A55B980(v23);
    v27 = v26;

    if (v27 != 2 || v25)
    {
      if (v27 == 1)
      {
        v29 = v36;
        sub_26A4D7E54();
        v30 = v42;
        if (__swift_getEnumTagSinglePayload(v29, 1, v42) == 1)
        {
          v31 = v39;
          sub_26A55BA0C(0, v41, v40, v39);
          if (__swift_getEnumTagSinglePayload(v29, 1, v30) != 1)
          {
            sub_26A4DBD10(v29, &qword_2803AD238, &unk_26A872B60);
          }
        }

        else
        {
          v31 = v39;
          sub_26A55E5AC();
        }

        v32 = *(v30 + 32);
        v33 = v25;
        MEMORY[0x26D663CE0]();
        if (*((*(v31 + v32) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v31 + v32) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_26A851B08();
        }

        sub_26A851B28();

        v12 = v35;
        sub_26A55E5AC();
        __swift_storeEnumTagSinglePayload(v12, 0, 1, v30);
        sub_26A55E6C8(v12, v43);
        a1 = v37;
      }

      else if (v27)
      {
      }

      else
      {
        v28 = v25;
        sub_26A55BA0C(v25, v41, v40, v12);

        __swift_storeEnumTagSinglePayload(v12, 0, 1, v42);
        sub_26A55E6C8(v12, v43);
      }
    }

    ++v20;
  }

  __break(1u);
LABEL_24:
  __break(1u);
}

void *sub_26A559684(uint64_t a1)
{
  v2 = sub_26A84ACC8();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v56 = &v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = type metadata accessor for TableManager.CardSectionTableDefinition(0);
  v55 = *(v52 - 8);
  MEMORY[0x28223BE20](v52);
  v48 = &v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v54 = &v41 - v7;
  MEMORY[0x28223BE20](v8);
  v51 = &v41 - v9;
  v10 = 0;
  v11 = MEMORY[0x277D84F98];
  v57 = MEMORY[0x277D84F98];
  v53 = a1;
  v14 = *(a1 + 64);
  v13 = a1 + 64;
  v12 = v14;
  v15 = 1 << *(v13 - 32);
  v16 = -1;
  if (v15 < 64)
  {
    v16 = ~(-1 << v15);
  }

  v17 = v16 & v12;
  v18 = (v15 + 63) >> 6;
  v50 = (v3 + 16);
  v46 = v3 + 32;
  v47 = v3;
  v45 = (v3 + 8);
  v44 = xmmword_26A8570D0;
  v49 = v2;
  while (v17)
  {
LABEL_9:
    sub_26A55E738();
    v20 = v54;
    sub_26A55E5AC();
    (*v50)(v56, &v20[*(v52 + 24)], v2);
    v22 = sub_26A5485E4();
    v23 = v11[2];
    v24 = (v21 & 1) == 0;
    v25 = v23 + v24;
    if (__OFADD__(v23, v24))
    {
      goto LABEL_23;
    }

    v26 = v21;
    if (v11[3] < v25)
    {
      sub_26A71C6DC(v25, 1);
      v11 = v57;
      v27 = sub_26A5485E4();
      if ((v26 & 1) != (v28 & 1))
      {
        goto LABEL_25;
      }

      v22 = v27;
    }

    v17 &= v17 - 1;
    if (v26)
    {
      (*v45)(v56, v2);
      v29 = v11[7];
      sub_26A55E5AC();
      v30 = *(v29 + 8 * v22);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v29 + 8 * v22) = v30;
      v43 = v29;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_26A7A1BBC();
        v30 = v38;
        *(v29 + 8 * v22) = v38;
      }

      v32 = *(v30 + 16);
      v33 = v32 + 1;
      if (v32 >= *(v30 + 24) >> 1)
      {
        v42 = v32 + 1;
        sub_26A7A1BBC();
        v33 = v42;
        v30 = v39;
        *(v43 + 8 * v22) = v39;
      }

      *(v30 + 16) = v33;
      sub_26A55E5AC();
      v2 = v49;
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AD258, &unk_26A8849D0);
      v34 = swift_allocObject();
      *(v34 + 16) = v44;
      v2 = v49;
      sub_26A55E5AC();
      v11[(v22 >> 6) + 8] |= 1 << v22;
      (*(v47 + 32))(v11[6] + *(v47 + 72) * v22, v56, v2);
      *(v11[7] + 8 * v22) = v34;
      v35 = v11[2];
      v36 = __OFADD__(v35, 1);
      v37 = v35 + 1;
      if (v36)
      {
        goto LABEL_24;
      }

      v11[2] = v37;
    }
  }

  while (1)
  {
    v19 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v19 >= v18)
    {

      return v11;
    }

    v17 = *(v13 + 8 * v19);
    ++v10;
    if (v17)
    {
      v10 = v19;
      goto LABEL_9;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  result = sub_26A852618();
  __break(1u);
  return result;
}

void sub_26A559B7C(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = type metadata accessor for TableManager.CardSectionTableDefinition(0);
  v6 = *(a1 + *(v5 + 28));
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AD250, &unk_26A85D980);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_26A8570D0;
    *(v7 + 32) = v6;
  }

  else
  {
    v7 = MEMORY[0x277D84F90];
  }

  v8 = *(a1 + *(v5 + 32));
  v9 = sub_26A73670C();
  v10 = MEMORY[0x277D84F90];
  if (!v9)
  {
LABEL_16:
    v22 = v7;
    sub_26A614C40(v10);
    MEMORY[0x28223BE20](v16);
    v18[2] = a1;
    v17 = sub_26A4F9088(sub_26A55E6A8, v18, v7);

    *a2 = v17;
    return;
  }

  v11 = v9;
  v22 = MEMORY[0x277D84F90];
  sub_26A7DD068(0, v9 & ~(v9 >> 63), 0);
  if (v11 < 0)
  {
    goto LABEL_19;
  }

  v19 = v7;
  v20 = a1;
  v21 = a2;
  v12 = 0;
  v10 = v22;
  while (1)
  {
    if ((v8 & 0xC000000000000001) != 0)
    {
      v13 = MEMORY[0x26D6644E0](v12, v8);
      swift_unknownObjectRelease();
      goto LABEL_12;
    }

    if ((v12 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v12 >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_18;
    }

    v13 = *(v8 + 8 * v12 + 32);
LABEL_12:
    v22 = v10;
    v15 = *(v10 + 16);
    v14 = *(v10 + 24);
    if (v15 >= v14 >> 1)
    {
      sub_26A7DD068(v14 > 1, v15 + 1, 1);
      v10 = v22;
    }

    ++v12;
    *(v10 + 16) = v15 + 1;
    *(v10 + 8 * v15 + 32) = v13;
    if (v11 == v12)
    {
      a1 = v20;
      a2 = v21;
      v7 = v19;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_18:
  __break(1u);
LABEL_19:
  __break(1u);
}

uint64_t sub_26A559D74@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = *a1;
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB670, &unk_26A8849C0) + 48);
  *a3 = v5;
  v7 = sub_26A84ACC8();
  return (*(*(v7 - 8) + 16))(&a3[v6], a2, v7);
}

id sub_26A559E0C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v72 = a2;
  v75 = a3;
  v68 = type metadata accessor for ResolvedTableLayout(0);
  OUTLINED_FUNCTION_46();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_41();
  v67 = v7 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AD200, &unk_26A85D880);
  OUTLINED_FUNCTION_79(v8);
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v9);
  v70 = &v66 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AD238, &unk_26A872B60);
  OUTLINED_FUNCTION_79(v11);
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v12);
  v14 = &v66 - v13;
  v15 = type metadata accessor for TableManager.CardSectionTableDefinition(0);
  OUTLINED_FUNCTION_46();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_41();
  v73 = v18 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AC1D8, &unk_26A85AAC0);
  OUTLINED_FUNCTION_79(v19);
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v20);
  v22 = &v66 - v21;
  v23 = sub_26A84ACC8();
  OUTLINED_FUNCTION_15();
  v74 = v24;
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_41();
  v76 = v27 - v26;
  v71 = type metadata accessor for TableRowViewModel(0);
  OUTLINED_FUNCTION_15();
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_19();
  v69 = v29;
  OUTLINED_FUNCTION_92();
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_20_4();
  swift_beginAccess();
  if (*(v3[5] + 16))
  {
    sub_26A5484D4(a1);
    if (v31)
    {
      sub_26A55E738();
      return sub_26A55E5AC();
    }
  }

  sub_26A50782C(a1, v3[3]);
  v33 = v23;
  if (__swift_getEnumTagSinglePayload(v22, 1, v23) == 1)
  {
    v34 = &qword_2803AC1D8;
    v35 = &unk_26A85AAC0;
    v36 = v22;
LABEL_9:
    sub_26A4DBD10(v36, v34, v35);
    sub_26A4E353C();
    v42 = swift_allocError();
    OUTLINED_FUNCTION_19_5(v42, v43);
    return a1;
  }

  v37 = v74;
  v38 = v76;
  (*(v74 + 32))(v76, v22, v33);
  v39 = v3[2];
  sub_26A507910(v38, v39);
  if (__swift_getEnumTagSinglePayload(v14, 1, v15) == 1)
  {
    v40 = OUTLINED_FUNCTION_14_6();
    v41(v40);
    v34 = &qword_2803AD238;
    v35 = &unk_26A872B60;
    v36 = v14;
    goto LABEL_9;
  }

  v44 = v73;
  sub_26A55E5AC();
  v45 = v77;
  sub_26A55A444(v44, v72);
  if (!v45)
  {
    v46 = v70;
    sub_26A5077EC(a1, v3[5]);
    if (__swift_getEnumTagSinglePayload(v46, 1, v71) != 1)
    {
      v52 = v69;
      sub_26A55E5AC();
      if (*(v39 + 16) < 0xDuLL)
      {
        sub_26A55E648(v44, type metadata accessor for TableManager.CardSectionTableDefinition);
        v64 = OUTLINED_FUNCTION_14_6();
        v65(v64);
      }

      else
      {
        v53 = v3;
        v54 = *(*(v52 + *(v71 + 40)) + 16);

        v55 = v67;
        sub_26A84ACB8();
        v56 = v68;
        v57 = v55 + *(v68 + 20);
        *v57 = v54;
        *(v57 + 8) = 2;
        *(v55 + *(v56 + 24)) = 0;
        sub_26A73AF84(v55);
        swift_getKeyPath();
        swift_getKeyPath();
        sub_26A84EC18();

        OUTLINED_FUNCTION_6_18();
        sub_26A55E648(v73, v58);
        (*(v37 + 8))(v76, v33);
        v59 = v55 + *(v56 + 20);
        v60 = *v59;
        v61 = *(v59 + 8);

        sub_26A55E648(v55, type metadata accessor for ResolvedTableLayout);
        v62 = v53[8];
        v53[8] = v60;
        v63 = *(v53 + 72);
        *(v53 + 72) = v61;
        sub_26A55C6D4(v62, v63);
      }

      return sub_26A55E5AC();
    }

    sub_26A4DBD10(v46, &qword_2803AD200, &unk_26A85D880);
    sub_26A4E353C();
    v47 = swift_allocError();
    OUTLINED_FUNCTION_19_5(v47, v48);
    v49 = a1;
  }

  sub_26A55E648(v44, type metadata accessor for TableManager.CardSectionTableDefinition);
  v50 = OUTLINED_FUNCTION_14_6();
  return v51(v50);
}

uint64_t sub_26A55A444(uint64_t a1, uint64_t a2)
{
  v138 = type metadata accessor for TableRowViewModel(0);
  OUTLINED_FUNCTION_15();
  v136 = v5;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_19();
  v143 = v7;
  OUTLINED_FUNCTION_92();
  MEMORY[0x28223BE20](v8);
  v137 = &v124 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AD200, &unk_26A85D880);
  OUTLINED_FUNCTION_79(v10);
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v11);
  v13 = &v124 - v12;
  v14 = type metadata accessor for TableManager.CardSectionTableDefinition(0);
  v15 = *(a1 + *(v14 + 28));
  if (v15 && (v16 = [v15 cells]) != 0)
  {
    v17 = v16;
    sub_26A4EC5B0(0, &qword_2803AD208, 0x277D4C148);
    v18 = sub_26A851A98();
  }

  else
  {
    v18 = 0;
  }

  sub_26A55AF80(v18, a2);
  v20 = v19;

  if (v2)
  {
    return result;
  }

  v132 = a2;
  if (v20)
  {
    v22 = v20;
  }

  else
  {
    v22 = MEMORY[0x277D84F90];
  }

  if (v15)
  {
    v23 = [v15 compact_cells];
    if (v23)
    {
      v24 = v23;
      sub_26A4EC5B0(0, &qword_2803AD208, 0x277D4C148);
      v25 = sub_26A851A98();
    }

    else
    {
      v25 = 0;
    }
  }

  else
  {
    v25 = 0;
  }

  sub_26A55AF80(v25, v132);
  v26 = 0;
  v135 = v27;

  v131 = *(a1 + *(v14 + 32));
  v28 = sub_26A73670C();
  *(&v142 + 1) = v22;
  v30 = MEMORY[0x277D84F90];
  v125 = v13;
  v127 = v15;
  v126 = v14;
  if (!v28)
  {
    v140 = MEMORY[0x277D84F90];
LABEL_31:
    v51 = sub_26A55B26C(v29);
    if (v15)
    {
      v53 = [v15 separatorStyle] != 1;
    }

    else
    {
      v53 = 1;
    }

    LODWORD(v141) = v53;
    v54 = a1;
    v55 = v140[2];
    v56 = MEMORY[0x277D84F90];
    *&v142 = v51;
    if (v55)
    {
      v133 = v26;
      *&v144 = MEMORY[0x277D84F90];
      v57 = v140;
      v58 = OUTLINED_FUNCTION_24_5();
      sub_26A7DCF60(v58, v59, v60);
      v61 = v144;
      v62 = v57 + 5;
      v63 = v55;
      do
      {
        v64 = *v62;
        *&v144 = v61;
        v66 = *(v61 + 16);
        v65 = *(v61 + 24);

        if (v66 >= v65 >> 1)
        {
          OUTLINED_FUNCTION_15_6();
          sub_26A7DCF60(v67, v68, v69);
          v61 = v144;
        }

        *(v61 + 16) = v66 + 1;
        *(v61 + 8 * v66 + 32) = v64;
        v62 += 3;
        --v63;
      }

      while (v63);
      *&v144 = MEMORY[0x277D84F90];
      v70 = OUTLINED_FUNCTION_24_5();
      sub_26A7DCF40(v70, v71, v72);
      v73 = v144;
      v74 = v140 + 6;
      do
      {
        v76 = *v74;
        v74 += 3;
        v75 = v76;
        *&v144 = v73;
        v78 = *(v73 + 16);
        v77 = *(v73 + 24);

        if (v78 >= v77 >> 1)
        {
          OUTLINED_FUNCTION_15_6();
          sub_26A7DCF40(v79, v80, v81);
          v73 = v144;
        }

        *(v73 + 16) = v78 + 1;
        *(v73 + 8 * v78 + 32) = v75;
        --v55;
      }

      while (v55);
      v26 = v133;
      v56 = MEMORY[0x277D84F90];
    }

    else
    {
      v73 = MEMORY[0x277D84F90];
      v61 = MEMORY[0x277D84F90];
    }

    sub_26A55B70C(v52);
    v83 = v82;
    v84 = v127;
    if (v127)
    {
      v85 = [v127 should_repeat_header_in_flow_layout] != 1;
    }

    else
    {
      v85 = 0;
    }

    v144 = v142;
    *&v145 = 0;
    BYTE8(v145) = v141;
    *&v146 = v61;
    *(&v146 + 1) = v73;
    v86 = *(&v142 + 1);
    LOBYTE(v147) = v83 & 1;
    BYTE1(v147) = v85;
    *(&v147 + 1) = v56;
    v148[2] = v146;
    v148[3] = v147;
    v148[0] = v142;
    v148[1] = v145;
    v87 = *(v126 + 24);

    v88 = v54 + v87;
    v89 = v139;
    v90 = sub_26A55B870(v88, v148);
    sub_26A55E484(&v144);
    v134 = v90;
    v133 = v26;
    if (v84)
    {
      v91 = v84;
      v92 = v135;

      v93 = v91;
      v94 = v125;
      sub_26A84ACB8();
      v95 = v138;
      *(v94 + *(v138 + 20)) = v56;
      *(v94 + v95[6]) = v56;
      *(v94 + v95[7]) = v86;
      *(v94 + v95[8]) = v92;
      *(v94 + v95[9]) = 1;
      *(v94 + v95[10]) = v90;
      *(v94 + v95[11]) = 6;
      *(v94 + v95[12]) = 0;
      v96 = v94 + v95[13];
      *v96 = 0;
      *(v96 + 8) = 1;
      __swift_storeEnumTagSinglePayload(v94, 0, 1, v95);
      OUTLINED_FUNCTION_25_7();

      sub_26A558598(v94, v93);
      swift_endAccess();
    }

    v97 = 0;
    v98 = v140;
    v99 = v140 + 6;
    while (1)
    {
      v100 = v98[2];
      if (v97 == v100)
      {
      }

      if (v97 >= v100)
      {
        break;
      }

      v101 = *(v99 - 2);
      v102 = *(v99 - 1);
      v141 = v99;
      v103 = *v99;

      v104 = v101;

      LODWORD(v142) = [v104 scale_to_fit];
      v105 = [v104 vertical_alignment];
      if (v105 >= 7)
      {
        v106 = 6;
      }

      else
      {
        v106 = 0x5040302010006uLL >> (8 * v105);
      }

      v107 = v135;

      v108 = v104;

      v109 = v137;
      sub_26A84ACB8();
      v110 = v138;
      *&v109[*(v138 + 20)] = v102;
      *&v109[v110[6]] = v103;
      *&v109[v110[7]] = *(&v142 + 1);
      *&v109[v110[8]] = v107;
      v109[v110[9]] = 0;
      *&v109[v110[10]] = v134;
      v109[v110[11]] = v106;
      v109[v110[12]] = v142;
      v111 = &v109[v110[13]];
      *&v142 = v97;
      *v111 = v97;
      v111[8] = 0;
      OUTLINED_FUNCTION_25_7();
      OUTLINED_FUNCTION_4_15();
      sub_26A55E5AC();

      swift_isUniquelyReferenced_nonNull_native();
      v149 = *(v89 + 40);
      v112 = v149;
      *(v89 + 40) = 0x8000000000000000;
      v113 = sub_26A5484D4(v108);
      if (__OFADD__(*(v112 + 16), (v114 & 1) == 0))
      {
        goto LABEL_68;
      }

      v115 = v113;
      v116 = v114;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B1D70, &qword_26A86E720);
      if (sub_26A8523E8())
      {
        v117 = sub_26A5484D4(v108);
        if ((v116 & 1) != (v118 & 1))
        {
          goto LABEL_73;
        }

        v115 = v117;
      }

      v98 = v140;
      v119 = v149;
      if (v116)
      {
        OUTLINED_FUNCTION_17_4();
        sub_26A55E4D8(v143, v120);
      }

      else
      {
        *(v149 + 8 * (v115 >> 6) + 64) |= 1 << v115;
        *(*(v119 + 48) + 8 * v115) = v108;
        OUTLINED_FUNCTION_17_4();
        OUTLINED_FUNCTION_4_15();
        sub_26A55E5AC();
        v121 = *(v119 + 16);
        v122 = __OFADD__(v121, 1);
        v123 = v121 + 1;
        if (v122)
        {
          goto LABEL_69;
        }

        *(v119 + 16) = v123;
      }

      v89 = v139;
      *(v139 + 40) = v119;

      swift_endAccess();

      v99 = v141 + 3;
      v97 = v142 + 1;
    }

    __break(1u);
LABEL_68:
    __break(1u);
LABEL_69:
    __break(1u);
LABEL_70:
    __break(1u);
LABEL_71:
    __break(1u);
    goto LABEL_72;
  }

  v31 = v28;
  v124 = a1;
  *&v144 = MEMORY[0x277D84F90];
  sub_26A7DCF80(0, v28 & ~(v28 >> 63), 0);
  if ((v31 & 0x8000000000000000) == 0)
  {
    v32 = 0;
    v130 = v131 & 0xC000000000000001;
    v33 = v144;
    v128 = v131 & 0xFFFFFFFFFFFFFF8;
    v129 = v31;
    v34 = 0;
    while (1)
    {
      v35 = (v32 + 1);
      if (__OFADD__(v32, 1))
      {
        goto LABEL_70;
      }

      v140 = v33;
      *&v142 = v32;
      if (v130)
      {
        v36 = MEMORY[0x26D6644E0]();
      }

      else
      {
        if (v32 >= *(v128 + 16))
        {
          goto LABEL_71;
        }

        v36 = *(v131 + 8 * v32 + 32);
      }

      v37 = v36;
      v38 = sub_26A4EC1C4(v36, &selRef_cells, &qword_2803AD208, 0x277D4C148);
      v39 = v132;
      sub_26A55AF80(v38, v132);
      if (v34)
      {
      }

      v41 = v40;
      v141 = v35;

      v42 = v30;
      if (v41)
      {
        v30 = v41;
      }

      v43 = sub_26A4EC1C4(v37, &selRef_compact_cells, &qword_2803AD208, 0x277D4C148);
      sub_26A55AF80(v43, v39);
      v45 = v44;
      v134 = v37;
      v133 = 0;

      v33 = v140;
      *&v144 = v140;
      v46 = v140[2];
      if (v46 >= v140[3] >> 1)
      {
        OUTLINED_FUNCTION_15_6();
        sub_26A7DCF80(v48, v49, v50);
        v33 = v144;
      }

      v33[2] = v46 + 1;
      v47 = &v33[3 * v46];
      v47[4] = v134;
      v47[5] = v30;
      v47[6] = v45;
      v32 = v142 + 1;
      v34 = v133;
      v30 = v42;
      if (v141 == v129)
      {
        v26 = v133;
        v140 = v33;
        a1 = v124;
        v15 = v127;
        goto LABEL_31;
      }
    }
  }

LABEL_72:
  __break(1u);
LABEL_73:
  result = sub_26A852618();
  __break(1u);
  return result;
}

void sub_26A55AF80(unint64_t a1, uint64_t a2)
{
  v3 = v2;
  v29 = a2;
  v5 = type metadata accessor for TableCell(0);
  v28 = *(v5 - 8);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v23 - v9;
  if (a1)
  {
    v24 = a1 & 0xFFFFFFFFFFFFFF8;
    if (a1 >> 62)
    {
      goto LABEL_27;
    }

    for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_26A852168())
    {
      v31 = MEMORY[0x277D84F90];
      sub_26A7DCEC8(0, i & ~(i >> 63), 0);
      if (i < 0)
      {
        __break(1u);
        return;
      }

      v12 = 0;
      v13 = 0;
      v14 = v31;
      v26 = a1;
      v27 = a1 & 0xC000000000000001;
      v25 = i;
      while (1)
      {
        v15 = v12 + 1;
        if (__OFADD__(v12, 1))
        {
          break;
        }

        if (v27)
        {
          v16 = MEMORY[0x26D6644E0](v12, a1);
        }

        else
        {
          if (v12 >= *(v24 + 16))
          {
            goto LABEL_26;
          }

          v16 = *(a1 + 8 * v12 + 32);
        }

        v17 = v16;
        v18 = v29;

        sub_26A82EB20(v17, v13, v18, v7);
        if (v3)
        {

          return;
        }

        v30 = 0;
        v3 = v10;
        v10 = v7;
        v19 = [v17 column_span];
        if (v19)
        {
          v7 = v19;
          a1 = [v19 integerValue];
        }

        else
        {
          a1 = 1;
        }

        v20 = __OFADD__(v13, a1);
        v13 += a1;
        if (v20)
        {
          goto LABEL_25;
        }

        v7 = v10;
        v10 = v3;
        sub_26A55E5AC();
        v31 = v14;
        v22 = *(v14 + 16);
        v21 = *(v14 + 24);
        if (v22 >= v21 >> 1)
        {
          sub_26A7DCEC8(v21 > 1, v22 + 1, 1);
          v14 = v31;
        }

        *(v14 + 16) = v22 + 1;
        sub_26A55E5AC();
        ++v12;
        a1 = v26;
        v3 = v30;
        if (v15 == v25)
        {
          return;
        }
      }

      __break(1u);
LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
LABEL_27:
      ;
    }
  }
}

void *sub_26A55B26C(__n128 a1)
{
  v2 = type metadata accessor for TableManager.CardSectionTableDefinition(0);
  v3 = v1 + *(v2 + 24);
  v4 = *(v3 + *(type metadata accessor for TableManager.ColumnDefinitions(0) + 20));
  if (v4)
  {
    if (v4 >> 62)
    {
      goto LABEL_66;
    }

    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    goto LABEL_4;
  }

  v37 = *(v1 + *(v2 + 32));
  swift_getKeyPath();
  v38 = sub_26A73670C();
  v39 = v37 & 0xC000000000000001;
  swift_bridgeObjectRetain_n();
  v40 = 0;
  while (1)
  {
    if (v38 == v40)
    {
      v50 = 0;
LABEL_48:
      swift_bridgeObjectRelease_n();

      v67 = 0;
      v68 = 769;
      v69 = 0;
      v70 = 1;
      v71 = 0;
      v72 = 1;
      return sub_26A7991F4(&v67, v50);
    }

    if (v39)
    {
      v41 = MEMORY[0x26D6644E0](v40, v37);
    }

    else
    {
      if (v40 >= *((v37 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_62;
      }

      v41 = *(v37 + 8 * v40 + 32);
    }

    v42 = v40 + 1;
    if (__OFADD__(v40, 1))
    {
      break;
    }

    v43 = v41;
    OUTLINED_FUNCTION_26_2(v43, v44, v45, v46, v47, v48, v49);

    ++v40;
    if ((v68 & 1) == 0)
    {
      v50 = v67;
      v51 = sub_26A73670C();
      while (v51 != v42)
      {
        if (v39)
        {
          v52 = MEMORY[0x26D6644E0](v42, v37);
        }

        else
        {
          if ((v42 & 0x8000000000000000) != 0)
          {
            goto LABEL_64;
          }

          if (v42 >= *((v37 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_65;
          }

          v52 = *(v37 + 8 * v42 + 32);
        }

        v53 = v42 + 1;
        if (__OFADD__(v42, 1))
        {
          goto LABEL_63;
        }

        v54 = v52;
        OUTLINED_FUNCTION_26_2(v54, v55, v56, v57, v58, v59, v60);

        ++v42;
        if ((v68 & 1) == 0)
        {
          if (v50 <= v67)
          {
            v50 = v67;
          }

          v42 = v53;
        }
      }

      goto LABEL_48;
    }
  }

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
  v5 = sub_26A852168();
LABEL_4:
  v6 = MEMORY[0x277D84F90];
  if (!v5)
  {
    return v6;
  }

  v67 = MEMORY[0x277D84F90];
  result = sub_26A7DCF20(0, v5 & ~(v5 >> 63), 0);
  if ((v5 & 0x8000000000000000) == 0)
  {
    v8 = 0;
    v62 = v4;
    v63 = v4 & 0xC000000000000001;
    v6 = v67;
    v61 = v5;
    do
    {
      if (v63)
      {
        v9 = MEMORY[0x26D6644E0](v8, v4);
      }

      else
      {
        v9 = *(v4 + 8 * v8 + 32);
      }

      v10 = v9;
      v11 = [v9 content];
      if (v11)
      {
        v12 = v11;
        v13 = [v11 size_percent];
        v14 = v13;
        if (v13)
        {
          [v13 doubleValue];
          v16 = v15;
        }

        else
        {
          v16 = 0;
        }

        v22 = [v12 horizontal_alignment];
        if (v22 - 1 >= 3)
        {
          v23 = 768;
        }

        else
        {
          v23 = (v22 - 1) << 8;
        }

        v24 = [v12 drop_order];
        v25 = v24;
        v64 = v23;
        if (v24)
        {
          v65 = [v24 integerValue];
        }

        else
        {
          v65 = 0;
        }

        v26 = [v12 should_drop_in_flow_layout];
        v27 = [v12 equal_size_column_group];
        v28 = v27;
        if (v27)
        {
          v19 = [v27 integerValue];
        }

        else
        {
          v19 = 0;
        }

        v29 = v25 == 0;
        v30 = v14 == 0;
        v31 = [v12 disable_truncation];

        if (v26)
        {
          v32 = 256;
        }

        else
        {
          v32 = 0;
        }

        if (v31)
        {
          v33 = 256;
        }

        else
        {
          v33 = 0;
        }

        v17 = v64 | v30;
        v21 = v32 | v29;
        if (v28)
        {
          v20 = v33;
        }

        else
        {
          v20 = v33 + 1;
        }

        v67 = v6;
        v5 = v61;
        v4 = v62;
        v18 = v65;
      }

      else
      {

        v17 = 0;
        v18 = 0;
        v19 = 0;
        v20 = 0;
        v67 = v6;
        v16 = 0;
        v21 = 512;
      }

      v35 = *(v6 + 16);
      v34 = *(v6 + 24);
      if (v35 >= v34 >> 1)
      {
        v66 = v18;
        sub_26A7DCF20((v34 > 1), v35 + 1, 1);
        v18 = v66;
        v6 = v67;
      }

      *(v6 + 16) = v35 + 1;
      v36 = v6 + 48 * v35;
      *(v36 + 32) = v16;
      ++v8;
      *(v36 + 40) = v17;
      *(v36 + 48) = v18;
      *(v36 + 56) = v21;
      *(v36 + 64) = v19;
      *(v36 + 72) = v20;
    }

    while (v5 != v8);
    return v6;
  }

  __break(1u);
  return result;
}

void sub_26A55B70C(__n128 a1)
{
  v2 = *(v1 + *(type metadata accessor for TableManager.CardSectionTableDefinition(0) + 32));
  swift_getKeyPath();
  v3 = sub_26A73670C();
  swift_bridgeObjectRetain_n();
  for (i = 0; ; ++i)
  {
    if (v3 == i)
    {

      swift_bridgeObjectRelease_n();
      sub_26A55C554(v8);
      return;
    }

    if ((v2 & 0xC000000000000001) != 0)
    {
      v5 = MEMORY[0x26D6644E0](i, v2);
    }

    else
    {
      if (i >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_16;
      }

      v5 = *(v2 + 8 * i + 32);
    }

    if (__OFADD__(i, 1))
    {
      break;
    }

    v6 = v5;
    swift_getAtKeyPath();

    if (v9)
    {
      if (sub_26A65F708())
      {
      }

      else
      {
        v7 = sub_26A65F764();

        if (!v7)
        {

          swift_bridgeObjectRelease_n();
          return;
        }
      }
    }
  }

  __break(1u);
LABEL_16:
  __break(1u);
}

char *sub_26A55B870(uint64_t a1, _OWORD *a2)
{
  v3 = v2;
  OUTLINED_FUNCTION_20_4();
  swift_beginAccess();
  v5 = *(v2 + 48);
  if (!*(v5 + 16))
  {
    goto LABEL_5;
  }

  v6 = sub_26A5485E4();
  if ((v7 & 1) == 0)
  {

LABEL_5:
    type metadata accessor for TableLayoutManager(0);
    swift_allocObject();
    sub_26A55E428(a2, v11);
    v8 = sub_26A73B03C(a2);
    swift_beginAccess();

    swift_isUniquelyReferenced_nonNull_native();
    v10 = *(v3 + 48);
    sub_26A6551A4();
    *(v3 + 48) = v10;
    swift_endAccess();
    return v8;
  }

  v8 = *(*(v5 + 56) + 8 * v6);

  return v8;
}

void *sub_26A55B980(void *a1)
{
  ObjectType = swift_getObjectType();
  if (ObjectType != sub_26A4EC5B0(0, &qword_2815804A0, 0x277D4C158) && ObjectType != sub_26A4EC5B0(0, &qword_2815804B0, 0x277D4C160))
  {
    return 0;
  }

  v3 = a1;
  return a1;
}

id sub_26A55BA0C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v41 = a1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AD260, &qword_26A85D990);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v39 - v8;
  v10 = type metadata accessor for TableManager.ColumnDefinitions(0);
  MEMORY[0x28223BE20](v10);
  v12 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AC1D8, &unk_26A85AAC0);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v40 = &v39 - v17;
  v18 = swift_projectBox();
  sub_26A55BF30(a2, a3);
  if (v41)
  {
    v19 = sub_26A4EC1C4(v41, &selRef_columns, &qword_2803AD268, 0x277D4C150);
    if (v19)
    {
      v20 = v19;
      v21 = type metadata accessor for TableManager.CardSectionTableDefinition(0);
      v22 = v21[5];
      v23 = sub_26A84ACC8();
      __swift_storeEnumTagSinglePayload(a4 + v22, 1, 1, v23);
      *(a4 + v21[6] + *(v10 + 20)) = v20;
      sub_26A84ACB8();
      sub_26A84ACB8();
      v24 = v41;
      *(a4 + v21[7]) = v41;
      v25 = MEMORY[0x277D84F90];
      *(a4 + v21[8]) = MEMORY[0x277D84F90];
      v26 = v21[9];
      goto LABEL_17;
    }
  }

  swift_beginAccess();
  v27 = type metadata accessor for TableManager.CardSectionTableDefinition(0);
  if (__swift_getEnumTagSinglePayload(v18, 1, v27))
  {
    v28 = sub_26A84ACC8();
    __swift_storeEnumTagSinglePayload(v15, 1, 1, v28);
LABEL_7:
    v30 = v10;
    v31 = v9;
    v32 = v12;
    swift_beginAccess();
    v33 = 1;
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v18, 1, v27);
    v35 = sub_26A84ACC8();
    v36 = v35;
    if (!EnumTagSinglePayload)
    {
      (*(*(v35 - 8) + 16))(v40, v18, v35);
      v33 = 0;
    }

    __swift_storeEnumTagSinglePayload(v40, v33, 1, v36);
    v12 = v32;
    v9 = v31;
    v10 = v30;
    if (__swift_getEnumTagSinglePayload(v15, 1, v36) != 1)
    {
      sub_26A4DBD10(v15, &qword_2803AC1D8, &unk_26A85AAC0);
    }

    goto LABEL_12;
  }

  sub_26A4D7E54();
  v29 = sub_26A84ACC8();
  if (__swift_getEnumTagSinglePayload(v15, 1, v29) == 1)
  {
    goto LABEL_7;
  }

  v37 = v40;
  (*(*(v29 - 8) + 32))(v40, v15, v29);
  __swift_storeEnumTagSinglePayload(v37, 0, 1, v29);
LABEL_12:
  swift_beginAccess();
  if (__swift_getEnumTagSinglePayload(v18, 1, v27))
  {
    __swift_storeEnumTagSinglePayload(v9, 1, 1, v10);
    *&v12[*(v10 + 20)] = 0;
    sub_26A84ACB8();
    if (__swift_getEnumTagSinglePayload(v9, 1, v10) != 1)
    {
      sub_26A4DBD10(v9, &qword_2803AD260, &qword_26A85D990);
    }
  }

  else
  {
    sub_26A55E738();
    __swift_storeEnumTagSinglePayload(v9, 0, 1, v10);
    sub_26A55E5AC();
  }

  sub_26A84ACB8();
  sub_26A4D7EA8();
  sub_26A55E5AC();
  v24 = v41;
  *(a4 + v27[7]) = v41;
  v25 = MEMORY[0x277D84F90];
  *(a4 + v27[8]) = MEMORY[0x277D84F90];
  v26 = v27[9];
LABEL_17:
  *(a4 + v26) = v25;

  return v24;
}

uint64_t sub_26A55BF30(uint64_t a1, uint64_t a2)
{
  v41 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AC1D8, &unk_26A85AAC0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = v37 - v3;
  v5 = sub_26A84ACC8();
  v40 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v38 = v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v39 = v37 - v8;
  MEMORY[0x28223BE20](v9);
  v11 = v37 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AD238, &unk_26A872B60);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = v37 - v16;
  v18 = type metadata accessor for TableManager.CardSectionTableDefinition(0);
  v37[1] = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v20 = v37 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_projectBox();
  swift_beginAccess();
  sub_26A4D7E54();
  if (__swift_getEnumTagSinglePayload(v17, 1, v18) == 1)
  {
    v21 = &qword_2803AD238;
    v22 = &unk_26A872B60;
    v23 = v17;
    return sub_26A4DBD10(v23, v21, v22);
  }

  sub_26A55E5AC();
  v24 = v40;
  v25 = *(v40 + 16);
  v25(v11, v20, v5);
  sub_26A55E738();
  __swift_storeEnumTagSinglePayload(v14, 0, 1, v18);
  swift_beginAccess();
  sub_26A5587FC(v14, v11);
  swift_endAccess();
  sub_26A4D7E54();
  if (__swift_getEnumTagSinglePayload(v4, 1, v5) == 1)
  {
    sub_26A55E648(v20, type metadata accessor for TableManager.CardSectionTableDefinition);
    v21 = &qword_2803AC1D8;
    v22 = &unk_26A85AAC0;
    v23 = v4;
    return sub_26A4DBD10(v23, v21, v22);
  }

  v27 = v39;
  (*(v24 + 32))(v39, v4, v5);
  v28 = v38;
  v25(v38, v27, v5);
  swift_beginAccess();
  v29 = sub_26A695B10(v42);
  v31 = v30;
  if (!__swift_getEnumTagSinglePayload(v30, 1, v18))
  {
    v32 = *(v18 + 36);
    sub_26A72A668();
    v33 = v24;
    v34 = *(*(v31 + v32) + 16);
    sub_26A72A6F4(v34);
    v35 = *(v31 + v32);
    v27 = v39;
    *(v35 + 16) = v34 + 1;
    v24 = v33;
    sub_26A55E738();
  }

  (v29)(v42, 0);
  swift_endAccess();
  v36 = *(v24 + 8);
  v36(v28, v5);
  v36(v27, v5);
  return sub_26A55E648(v20, type metadata accessor for TableManager.CardSectionTableDefinition);
}

void sub_26A55C44C(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 cells];
  if (v3)
  {
    v4 = v3;
    sub_26A4EC5B0(0, &qword_2803AD208, 0x277D4C148);
    v5 = sub_26A851A98();
  }

  else
  {
    v5 = 0;
  }

  *a2 = v5;
}

void sub_26A55C4CC(uint64_t *a1, void **a2)
{
  v2 = *a2;
  if (*a1)
  {
    sub_26A4EC5B0(0, &qword_2803AD208, 0x277D4C148);
    v3 = sub_26A851A88();
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  [v2 setCells_];
}

uint64_t sub_26A55C554(__n128 a1)
{
  v2 = *(v1 + *(type metadata accessor for TableManager.CardSectionTableDefinition(0) + 28));
  if (!v2)
  {
    goto LABEL_9;
  }

  v3 = [v2 cells];
  if (!v3)
  {
    goto LABEL_9;
  }

  v4 = v3;
  sub_26A4EC5B0(0, &qword_2803AD208, 0x277D4C148);
  v5 = sub_26A851A98();

  if (!sub_26A73670C())
  {

LABEL_9:
    v12 = 0;
    return v12 & 1;
  }

  sub_26A736710();
  if ((v5 & 0xC000000000000001) != 0)
  {
    v6 = MEMORY[0x26D6644E0](0, v5);
  }

  else
  {
    v6 = *(v5 + 32);
  }

  v7 = v6;

  v8 = [v7 column_span];
  if (v8)
  {
    v9 = v8;
    v10 = [v8 integerValue];

    v11 = v10 < 2;
  }

  else
  {
    v11 = 1;
  }

  v13 = sub_26A65F708();

  v12 = (v13 ^ 1) & v11;
  return v12 & 1;
}

uint64_t TableManager.deinit()
{

  sub_26A55C6D4(*(v0 + 64), *(v0 + 72));
  return v0;
}

uint64_t sub_26A55C6D4(uint64_t result, char a2)
{
  if (a2 != -1)
  {
  }

  return v2;
}

uint64_t TableManager.__deallocating_deinit()
{
  TableManager.deinit();

  return MEMORY[0x2821FE8D8](v0, 73, 7);
}

id TableManager.preCacheCellApproximations(for:builderContext:)(void *a1, uint64_t a2)
{
  v5 = type metadata accessor for TableRowViewModel(0);
  v6 = OUTLINED_FUNCTION_79(v5);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_41();
  v9 = v8 - v7;
  result = sub_26A559E0C(a1, a2, v8 - v7);
  if (!v2)
  {
    objc_opt_self();
    v11 = swift_dynamicCastObjCClass();
    if (v11)
    {
      v12 = v11;
      v34 = 0;
      v13 = a1;
      v14 = sub_26A4EC1C4(v12, &selRef_cells, &qword_2803AD208, 0x277D4C148);
      if (v14)
      {
        v15 = v14;
        MEMORY[0x28223BE20](v14);
        OUTLINED_FUNCTION_8_14();
        *(v16 - 16) = v9;
        *(v16 - 8) = &v34;
        sub_26A55CF30(sub_26A55DE58, v17, v15);
      }

      v18 = sub_26A4EC1C4(v12, &selRef_compact_cells, &qword_2803AD208, 0x277D4C148);
      if (!v18)
      {
        goto LABEL_17;
      }

      v19 = v18;
      v20 = sub_26A73670C();
      if (v20)
      {
        v33 = 0;
        MEMORY[0x28223BE20](v20);
        OUTLINED_FUNCTION_8_14();
        *(v22 - 16) = v9;
        *(v22 - 8) = &v33;
        v23 = sub_26A55DFF0;
LABEL_8:
        sub_26A55CF30(v23, v21, v19);

        return sub_26A55E648(v9, type metadata accessor for TableRowViewModel);
      }
    }

    else
    {
      objc_opt_self();
      v24 = swift_dynamicCastObjCClass();
      if (!v24)
      {
        return sub_26A55E648(v9, type metadata accessor for TableRowViewModel);
      }

      v25 = v24;
      v13 = a1;
      if ([v25 scale_to_fit])
      {
        goto LABEL_17;
      }

      v34 = 0;
      v26 = sub_26A4EC1C4(v25, &selRef_cells, &qword_2803AD208, 0x277D4C148);
      if (v26)
      {
        v27 = v26;
        MEMORY[0x28223BE20](v26);
        OUTLINED_FUNCTION_8_14();
        *(v28 - 16) = v9;
        *(v28 - 8) = &v34;
        sub_26A55CF30(sub_26A55DE20, v29, v27);
      }

      v30 = sub_26A4EC1C4(v25, &selRef_compact_cells, &qword_2803AD208, 0x277D4C148);
      if (!v30)
      {
LABEL_17:

        return sub_26A55E648(v9, type metadata accessor for TableRowViewModel);
      }

      v19 = v30;
      v31 = sub_26A73670C();
      if (v31)
      {
        v33 = 0;
        MEMORY[0x28223BE20](v31);
        OUTLINED_FUNCTION_8_14();
        *(v32 - 16) = v9;
        *(v32 - 8) = &v33;
        v23 = sub_26A55DE3C;
        goto LABEL_8;
      }
    }

    goto LABEL_17;
  }

  return result;
}

uint64_t sub_26A55CA3C(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  type metadata accessor for TableRowViewModel(0);
  v4 = sub_26A55CB10();
  v5 = *a3;
  v6 = sub_26A55CEBC();
  swift_beginAccess();
  sub_26A69662C(v5, v6, v4);
  swift_endAccess();
  result = sub_26A55CEBC();
  if (__OFADD__(*a3, result))
  {
    __break(1u);
  }

  else
  {
    *a3 += result;
  }

  return result;
}

double sub_26A55CB10()
{
  v1 = [v0 text];
  v2 = 0.0;
  if (v1)
  {
    v3 = v1;
    v4 = sub_26A7364C8(v1);
    if (v4)
    {
      v5 = v4;
      v46 = 0;
      v47 = 0xE000000000000000;
      v6 = sub_26A73670C();
      if (v6)
      {
        v7 = v6;
        v40 = v3;
        v41 = v0;
        v8 = 0;
        v44 = v5;
        v45 = v5 & 0xC000000000000001;
        v42 = (v5 + 32);
        v43 = v5 & 0xFFFFFFFFFFFFFF8;
        while (1)
        {
          if (v45)
          {
            v9 = MEMORY[0x26D6644E0](v8, v5);
          }

          else
          {
            if (v8 >= *(v43 + 16))
            {
              goto LABEL_51;
            }

            v9 = *&v42[8 * v8];
          }

          v10 = v9;
          if (__OFADD__(v8++, 1))
          {
            __break(1u);
LABEL_50:
            __break(1u);
LABEL_51:
            __break(1u);
LABEL_52:
            v25 = MEMORY[0x26D6644E0](0, v0);
            goto LABEL_34;
          }

          v12 = sub_26A589524(v9);
          if (v12)
          {
            break;
          }

LABEL_22:

          if (v8 == v7)
          {

            v20 = v46;
            v21 = v47;
            v0 = v41;
            goto LABEL_28;
          }
        }

        v13 = v12;
        if (v12 >> 62)
        {
          v14 = sub_26A852168();
          if (v14)
          {
            goto LABEL_13;
          }
        }

        else
        {
          v14 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v14)
          {
LABEL_13:
            if (v14 < 1)
            {
              goto LABEL_50;
            }

            for (i = 0; i != v14; ++i)
            {
              if ((v13 & 0xC000000000000001) != 0)
              {
                v16 = MEMORY[0x26D6644E0](i, v13);
              }

              else
              {
                v16 = *(v13 + 8 * i + 32);
              }

              v17 = v16;
              v18 = sub_26A58945C(v16);
              if (v19)
              {
                v0 = &v46;
                MEMORY[0x26D663B00](v18);
              }
            }
          }
        }

        v5 = v44;
        goto LABEL_22;
      }

      v20 = 0;
      v21 = 0xE000000000000000;
LABEL_28:
      v22 = sub_26A55D3D0(v20, v21);

      v2 = v22 + 0.0;
    }

    else
    {
    }
  }

  v23 = [v0 visual];
  if (v23)
  {
    v5 = v23;
    v24 = sub_26A7E0200(v23);
    if (v24)
    {
      v0 = v24;
      if (!sub_26A73670C())
      {
        goto LABEL_44;
      }

      sub_26A736710();
      if ((v0 & 0xC000000000000001) != 0)
      {
        goto LABEL_52;
      }

      v25 = *(v0 + 32);
LABEL_34:
      v26 = v25;

      v27 = [v26 image_element];

      if (v27)
      {
        v28 = sub_26A55DF78(v27);
        if (v28)
        {
          v29 = v28;
          if (sub_26A73670C())
          {
            sub_26A736710();
            if ((v29 & 0xC000000000000001) != 0)
            {
              v30 = MEMORY[0x26D6644E0](0, v29);
            }

            else
            {
              v30 = *(v29 + 32);
            }

            v31 = v30;

            v32 = [v31 url];
            if (v32 && (v33 = v32, v34 = [v32 aspect_ratio], v33, v34) && (v35 = objc_msgSend(v34, sel_width), v34, v35))
            {
              [v35 floatValue];
              v37 = v36;

              v38 = v37;
            }

            else
            {

              v38 = 60.0;
            }

            return v2 + v38;
          }

LABEL_44:

          return v2;
        }
      }
    }
  }

  return v2;
}

uint64_t sub_26A55CEBC()
{
  v1 = [v0 column_span];
  if (!v1)
  {
    sub_26A4EC5B0(0, &qword_28157D7D0, 0x277CCABB0);
    v1 = sub_26A851FD8();
  }

  v2 = sub_26A851D58();

  return v2;
}

void sub_26A55CF30(void (*a1)(id *), uint64_t a2, uint64_t a3)
{
  v6 = sub_26A73670C();
  for (i = 0; v6 != i; ++i)
  {
    if ((a3 & 0xC000000000000001) != 0)
    {
      v8 = MEMORY[0x26D6644E0](i, a3);
    }

    else
    {
      if (i >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_12;
      }

      v8 = *(a3 + 8 * i + 32);
    }

    v9 = v8;
    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_12:
      __break(1u);
      return;
    }

    v10 = v8;
    a1(&v10);

    if (v3)
    {
      return;
    }
  }
}

uint64_t (*sub_26A55D008(uint64_t (*result)(uint64_t *, uint64_t), uint64_t a2, uint64_t a3))(uint64_t *, uint64_t)
{
  v4 = result;
  v5 = (a3 + 40);
  v6 = *(a3 + 16) + 1;
  do
  {
    if (!--v6)
    {
      break;
    }

    v7 = v5 + 56;
    v8 = *(v5 + 5);
    v9 = v5[16];
    v10 = *(v5 + 1);
    v11 = *v5;
    v12 = *(v5 - 1);
    v13 = v11;
    v14 = v10;
    v15 = v9;
    v16 = *(v5 + 24);
    v17 = v8;
    result = v4(&v12, a2);
    v5 = v7;
  }

  while (!v3);
  return result;
}

uint64_t sub_26A55D098(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  type metadata accessor for TableRowViewModel(0);
  v4 = sub_26A55CB10();
  v5 = *a3;
  v6 = sub_26A55CEBC();
  swift_beginAccess();
  sub_26A69662C(v5, v6, v4);
  swift_endAccess();
  result = sub_26A55CEBC();
  if (__OFADD__(*a3, result))
  {
    __break(1u);
  }

  else
  {
    *a3 += result;
  }

  return result;
}

uint64_t sub_26A55D170(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v4 = sub_26A55CB10();
  v5 = *a3;
  v6 = sub_26A55CEBC();
  sub_26A6253D0(v5, v6, v4);
  result = sub_26A55CEBC();
  if (__OFADD__(*a3, result))
  {
    __break(1u);
  }

  else
  {
    *a3 += result;
  }

  return result;
}

uint64_t sub_26A55D1FC(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  type metadata accessor for TableRowViewModel(0);
  v4 = sub_26A55CB10();
  v5 = *a3;
  v6 = sub_26A55CEBC();
  swift_beginAccess();
  sub_26A69662C(v5, v6, v4);
  swift_endAccess();
  result = sub_26A55CEBC();
  if (__OFADD__(*a3, result))
  {
    __break(1u);
  }

  else
  {
    *a3 += result;
  }

  return result;
}

Swift::Void __swiftcall TableManager.preLayoutApproximation(with:)(CGSize with)
{
  height = with.height;
  width = with.width;
  OUTLINED_FUNCTION_20_4();
  swift_beginAccess();
  v4 = *(v1 + 48) + 64;
  OUTLINED_FUNCTION_11_9();
  v7 = v6 & v5;
  v9 = (v8 + 63) >> 6;

  v10 = 0;
  if (v7)
  {
    goto LABEL_7;
  }

  while (1)
  {
    v11 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v11 >= v9)
    {

      return;
    }

    v7 = *(v4 + 8 * v11);
    ++v10;
    if (v7)
    {
      v10 = v11;
      do
      {
LABEL_7:
        v7 &= v7 - 1;

        sub_26A73B330(width, height);
      }

      while (v7);
      continue;
    }
  }

  __break(1u);
}

double sub_26A55D3D0(uint64_t a1, uint64_t a2)
{
  v2 = [objc_opt_self() preferredFontForTextStyle_];
  v3 = sub_26A851788();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AD220, &unk_26A85D940);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26A8570D0;
  v5 = *MEMORY[0x277D740A8];
  *(inited + 32) = *MEMORY[0x277D740A8];
  *(inited + 64) = sub_26A4EC5B0(0, &qword_2803AD228, 0x277D74300);
  *(inited + 40) = v2;
  type metadata accessor for Key(0, v6, v7, v8);
  sub_26A55E600(&qword_2803A9490, type metadata accessor for Key, &unk_26A85533C);
  v9 = v5;
  v10 = v2;
  v11 = sub_26A8516A8();
  v12 = sub_26A55DE74(1, v11, 0, v3, 1.79769313e308, 1.79769313e308);
  v14 = v13;
  v16 = v15;
  v18 = v17;

  v21.origin.x = v12;
  v21.origin.y = v14;
  v21.size.width = v16;
  v21.size.height = v18;
  Width = CGRectGetWidth(v21);

  return Width;
}

void sub_26A55D578(uint64_t a1, void (*a2)(uint64_t *__return_ptr, _BYTE *), uint64_t a3, int a4, void *a5)
{
  v66 = a5;
  LODWORD(v61) = a4;
  v72 = a2;
  v64 = sub_26A84ACC8();
  v7 = *(v64 - 8);
  MEMORY[0x28223BE20](v64);
  v63 = &v56[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v73 = type metadata accessor for TableManager.CardSectionTableDefinition(0);
  v69 = *(v73 - 8);
  MEMORY[0x28223BE20](v73);
  v71 = &v56[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AD238, &unk_26A872B60);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v56[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v13);
  v15 = &v56[-v14];
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AD240, &unk_26A85D960);
  MEMORY[0x28223BE20](v16 - 8);
  v68 = &v56[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v18);
  v20 = &v56[-v19];
  v21 = a1 + 64;
  v22 = -1 << *(a1 + 32);
  if (-v22 < 64)
  {
    v23 = ~(-1 << -v22);
  }

  else
  {
    v23 = -1;
  }

  v24 = v23 & *(a1 + 64);
  v60 = -1 << *(a1 + 32);
  v25 = (63 - v22) >> 6;
  v59 = v7;
  v62 = (v7 + 32);
  v70 = a1;

  v74 = a3;

  v26 = 0;
  v27 = 0;
  v28 = 0;
  v67 = v20;
  while (1)
  {
    while (1)
    {
      if (!v27)
      {
        goto LABEL_8;
      }

      v29 = *(v27 + 16);
      if (v28 != v29)
      {
        break;
      }

      v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB670, &unk_26A8849C0);
      v31 = v68;
      __swift_storeEnumTagSinglePayload(v68, 1, 1, v30);
      sub_26A4DBD10(v31, &qword_2803AD240, &unk_26A85D960);
LABEL_8:
      if (!v24)
      {
        while (1)
        {
          v32 = v26 + 1;
          if (__OFADD__(v26, 1))
          {
            break;
          }

          if (v32 >= v25)
          {
            v24 = 0;
            v33 = 1;
            goto LABEL_14;
          }

          v24 = *(v21 + 8 * v32);
          ++v26;
          if (v24)
          {
            v26 = v32;
            goto LABEL_13;
          }
        }

        __break(1u);
LABEL_34:

LABEL_32:
        sub_26A55E6A0();

        return;
      }

LABEL_13:
      v24 &= v24 - 1;
      sub_26A55E738();
      v33 = 0;
LABEL_14:
      v34 = v73;
      __swift_storeEnumTagSinglePayload(v15, v33, 1, v73);
      sub_26A4D7EA8();
      if (__swift_getEnumTagSinglePayload(v12, 1, v34) == 1)
      {

        v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB670, &unk_26A8849C0);
        __swift_storeEnumTagSinglePayload(v67, 1, 1, v55);
        goto LABEL_32;
      }

      v35 = v71;
      sub_26A55E5AC();
      v72(v75, v35);
      sub_26A55E648(v35, type metadata accessor for TableManager.CardSectionTableDefinition);
      v36 = v75[0];

      v28 = 0;
      v27 = v36;
    }

    if (v28 >= v29)
    {
      break;
    }

    v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB670, &unk_26A8849C0);
    v37 = v68;
    sub_26A4D7E54();
    __swift_storeEnumTagSinglePayload(v37, 0, 1, v65);
    v38 = v67;
    sub_26A4D7EA8();
    if (__swift_getEnumTagSinglePayload(v38, 1, v65) == 1)
    {
      goto LABEL_34;
    }

    v39 = *(v65 + 48);
    v65 = *v38;
    v77 = v65;
    v58 = *v62;
    v58(v63, v38 + v39, v64);
    v40 = *v66;
    v42 = sub_26A5484D4(v65);
    v43 = v40[2];
    v44 = (v41 & 1) == 0;
    v45 = (v43 + v44);
    if (__OFADD__(v43, v44))
    {
      goto LABEL_36;
    }

    if (v40[3] >= v45)
    {
      if (v61)
      {
        if (v41)
        {
          goto LABEL_29;
        }
      }

      else
      {
        v57 = v41;
        v61 = v42;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AD248, &unk_26A85D970);
        sub_26A8523F8();
        v42 = v61;
        if (v57)
        {
          goto LABEL_29;
        }
      }
    }

    else
    {
      v57 = v41;
      sub_26A71C43C(v45, v61 & 1);
      v46 = sub_26A5484D4(v65);
      if ((v57 & 1) != (v47 & 1))
      {
        goto LABEL_38;
      }

      v42 = v46;
      if (v57)
      {
LABEL_29:
        v53 = swift_allocError();
        swift_willThrow();
        v76[0] = v53;
        v54 = v53;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AC088, &qword_26A85A650);
        if ((swift_dynamicCast() & 1) == 0)
        {
          (*(v59 + 8))(v63, v64);

          sub_26A55E6A0();

          return;
        }

        goto LABEL_39;
      }
    }

    v48 = *v66;
    *(*v66 + 8 * (v42 >> 6) + 64) |= 1 << v42;
    v49 = v64;
    *(v48[6] + 8 * v42) = v65;
    v58((v48[7] + *(v59 + 72) * v42), v63, v49);
    v50 = v48[2];
    v51 = __OFADD__(v50, 1);
    v52 = v50 + 1;
    if (v51)
    {
      goto LABEL_37;
    }

    ++v28;
    v48[2] = v52;
    LODWORD(v61) = 1;
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  sub_26A852618();
  __break(1u);
LABEL_39:
  v75[0] = 0;
  v75[1] = 0xE000000000000000;
  sub_26A852248();
  MEMORY[0x26D663B00](0xD00000000000001BLL, 0x800000026A88BAC0);
  sub_26A8523D8();
  MEMORY[0x26D663B00](39, 0xE100000000000000);
  sub_26A852418();
  __break(1u);
}

double sub_26A55DE74(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, double a5, double a6)
{
  type metadata accessor for Key(0, a2, a3, a4);
  sub_26A55E600(&qword_2803A9490, type metadata accessor for Key, &unk_26A85533C);
  v11 = sub_26A851688();

  [a4 boundingRectWithSize:a1 options:v11 attributes:a3 context:{a5, a6}];
  v13 = v12;

  return v13;
}

uint64_t sub_26A55DF78(void *a1)
{
  v2 = [a1 sources];

  if (!v2)
  {
    return 0;
  }

  sub_26A4EC5B0(0, &qword_28157D878, 0x277D4BFF8);
  v3 = sub_26A851A98();

  return v3;
}

void sub_26A55E0B0(uint64_t a1)
{
  sub_26A84ACC8();
  if (v1 <= 0x3F)
  {
    sub_26A55E2B4(319, &qword_281580AA8, MEMORY[0x277CC95F0], MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      type metadata accessor for TableManager.ColumnDefinitions(319);
      if (v3 <= 0x3F)
      {
        sub_26A55E24C(319, &qword_2803AD1D8, &qword_2815804A0, 0x277D4C158, MEMORY[0x277D83D88]);
        if (v4 <= 0x3F)
        {
          sub_26A55E24C(319, &qword_2803AD1E0, &qword_2815804B0, 0x277D4C160, MEMORY[0x277D83940]);
          if (v5 <= 0x3F)
          {
            sub_26A55E2B4(319, &qword_2803AD1E8, type metadata accessor for TableManager.CardSectionTableDefinition, MEMORY[0x277D83940]);
            if (v6 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_26A55E24C(uint64_t a1, unint64_t *a2, unint64_t *a3, void *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_26A4EC5B0(255, a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_26A55E2B4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_26A55E340(uint64_t a1)
{
  sub_26A84ACC8();
  if (v1 <= 0x3F)
  {
    sub_26A55E3C4(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_26A55E3C4(uint64_t a1)
{
  if (!qword_2803AD1F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AD1F8, &qword_26A85D878);
    v1 = sub_26A852068();
    if (!v2)
    {
      atomic_store(v1, &qword_2803AD1F0);
    }
  }
}

uint64_t sub_26A55E4D8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TableRowViewModel(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_26A55E548()
{
  result = qword_2803AD210;
  if (!qword_2803AD210)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AD218, &qword_26A85D890);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803AD210);
  }

  return result;
}

uint64_t sub_26A55E5AC()
{
  OUTLINED_FUNCTION_145();
  v1(0);
  OUTLINED_FUNCTION_46();
  v2 = OUTLINED_FUNCTION_211();
  v3(v2);
  return v0;
}

uint64_t sub_26A55E600(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_26A55E648(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_46();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_26A55E6C8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AD238, &unk_26A872B60);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_26A55E738()
{
  OUTLINED_FUNCTION_145();
  v1(0);
  OUTLINED_FUNCTION_46();
  v2 = OUTLINED_FUNCTION_211();
  v3(v2);
  return v0;
}

uint64_t OUTLINED_FUNCTION_16_6()
{

  return sub_26A84ACC8();
}

uint64_t OUTLINED_FUNCTION_19_5(uint64_t a1, uint64_t a2)
{
  *a2 = v2;
  *(a2 + 8) = 0;
  *(a2 + 16) = 2;

  return swift_willThrow();
}

uint64_t OUTLINED_FUNCTION_25_7()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_26_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{

  return swift_getAtKeyPath();
}

uint64_t OUTLINED_FUNCTION_27_4(uint64_t a1)
{

  return sub_26A4DBD10(a1, v1, v2);
}

uint64_t sub_26A55E970@<X0>(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = a2;
  *a4 = sub_26A84FBF8();
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AD2B0, &qword_26A85DB08);
  return sub_26A55E9DC(v5, a3, a4 + *(v7 + 44));
}

uint64_t sub_26A55E9DC@<X0>(char a1@<W1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v76 = a3;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AD2B8, &qword_26A85DB10);
  MEMORY[0x28223BE20](v74);
  v6 = &v54 - v5;
  v7 = sub_26A84F588();
  v66 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v61 = &v54 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AD2C0, &qword_26A85DB18);
  v62 = *(v9 - 8);
  v63 = v9;
  MEMORY[0x28223BE20](v9);
  v58 = &v54 - v10;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AD2C8, &qword_26A85DB20);
  v64 = *(v57 - 8);
  MEMORY[0x28223BE20](v57);
  v65 = &v54 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v77 = &v54 - v13;
  v60 = sub_26A8512C8();
  v59 = *(v60 - 8);
  MEMORY[0x28223BE20](v60);
  v71 = &v54 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v54 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AD2D0, &qword_26A85DB28);
  MEMORY[0x28223BE20](v18 - 8);
  v20 = (&v54 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v21);
  v69 = &v54 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AD2D8, &unk_26A85DB30);
  v24 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v72 = &v54 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x28223BE20](v26);
  v75 = v24;
  v28 = *(v24 + 16);
  v70 = &v54 - v29;
  v73 = v30;
  v67 = v28;
  v68 = v24 + 16;
  v28(v27);
  v79 = a1;
  v80 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AC190, &qword_26A85A9E0);
  sub_26A851058();
  if (v78)
  {
    v31 = 1;
    v32 = v69;
  }

  else
  {
    v56 = v6;
    v55 = v17;
    sub_26A8512B8();
    v33 = swift_allocObject();
    *(v33 + 16) = a1 & 1;
    *(v33 + 24) = a2;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AD2E0, &qword_26A85DB40);
    sub_26A55FD04();
    v34 = v58;
    sub_26A8510D8();
    v35 = v61;
    sub_26A84F578();
    sub_26A4DBCC8(&qword_2803AD300, &qword_2803AD2C0, &qword_26A85DB18, MEMORY[0x277CDF028]);
    sub_26A55FDBC();
    v36 = v63;
    sub_26A850978();
    v66[1](v35, v7);
    (*(v62 + 8))(v34, v36);
    v37 = v59;
    v38 = *(v59 + 16);
    v39 = v71;
    v40 = v60;
    v38(v71, v17, v60);
    v41 = v57;
    v43 = v64;
    v42 = v65;
    v66 = v20;
    v63 = *(v64 + 16);
    v63(v65, v77, v57);
    v44 = v56;
    v38(v56, v39, v40);
    v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AD308, &qword_26A85DB50);
    v63(&v44[*(v45 + 48)], v42, v41);
    v20 = v66;
    v46 = *(v43 + 8);
    v46(v77, v41);
    v47 = *(v37 + 8);
    v47(v55, v40);
    v46(v42, v41);
    v47(v71, v40);
    v32 = v69;
    sub_26A496E44();
    v31 = 0;
  }

  __swift_storeEnumTagSinglePayload(v32, v31, 1, v74);
  v49 = v72;
  v48 = v73;
  v50 = v70;
  v51 = v67;
  (v67)(v72, v70, v73);
  sub_26A496EA4();
  (v51)(v76, v49, v48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AD310, &qword_26A85DB58);
  sub_26A496EA4();
  sub_26A496F04(v32);
  v52 = *(v75 + 8);
  v52(v50, v48);
  sub_26A496F04(v20);
  return (v52)(v49, v48);
}

void *sub_26A55F1E0@<X0>(uint64_t a2@<X8>)
{
  v3 = sub_26A84FC18();
  v17 = 0;
  sub_26A55F2F0(__src);
  memcpy(__dst, __src, sizeof(__dst));
  memcpy(v19, __src, 0x159uLL);
  sub_26A4EF6D0();
  sub_26A4DBD10(v19, &qword_2803AD318, &qword_26A85DB60);
  memcpy(&v16[7], __dst, 0x159uLL);
  v4 = v17;
  v5 = sub_26A850248();
  sub_26A84ED48();
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  *a2 = v3;
  *(a2 + 8) = 0;
  *(a2 + 16) = v4;
  result = memcpy((a2 + 17), v16, 0x160uLL);
  *(a2 + 376) = v5;
  *(a2 + 384) = v7;
  *(a2 + 392) = v9;
  *(a2 + 400) = v11;
  *(a2 + 408) = v13;
  *(a2 + 416) = 0;
  return result;
}

void *sub_26A55F2F0@<X0>(uint64_t a2@<X8>)
{
  v3 = sub_26A84FA78();
  v28 = 1;
  sub_26A55F4E8(__src);
  memcpy(__dst, __src, sizeof(__dst));
  memcpy(v31, __src, sizeof(v31));
  sub_26A4EF6D0();
  sub_26A4DBD10(v31, &qword_2803AD320, &qword_26A85DB68);
  memcpy(&v26[7], __dst, 0x60uLL);
  v4 = sub_26A850498();
  KeyPath = swift_getKeyPath();
  v6 = sub_26A84FED8();
  sub_26A851468();
  sub_26A84F628();
  memcpy(&v27[4], __src, 0x70uLL);
  v7 = sub_26A850238();
  sub_26A84ED48();
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v28 = 0;
  v16 = sub_26A8502A8();
  sub_26A84ED48();
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v23;
  *a2 = v3;
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  memcpy((a2 + 17), v26, 0x67uLL);
  *(a2 + 120) = KeyPath;
  *(a2 + 128) = v4;
  *(a2 + 136) = v6;
  result = memcpy((a2 + 140), v27, 0x74uLL);
  *(a2 + 256) = v7;
  *(a2 + 264) = v9;
  *(a2 + 272) = v11;
  *(a2 + 280) = v13;
  *(a2 + 288) = v15;
  *(a2 + 296) = 0;
  *(a2 + 304) = v16;
  *(a2 + 312) = v18;
  *(a2 + 320) = v20;
  *(a2 + 328) = v22;
  *(a2 + 336) = v24;
  *(a2 + 344) = 0;
  return result;
}

double sub_26A55F4E8@<D0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AC918, &qword_26A85DBA0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v27[-v3];
  v5 = sub_26A84FB58();
  MEMORY[0x28223BE20](v5 - 8);
  sub_26A84FB48();
  sub_26A84FB38();
  sub_26A850F08();
  v6 = *MEMORY[0x277CE1020];
  v7 = sub_26A850F68();
  (*(*(v7 - 8) + 104))(v4, v6, v7);
  __swift_storeEnumTagSinglePayload(v4, 0, 1, v7);
  sub_26A850F38();

  sub_26A4DBD10(v4, &qword_2803AC918, &qword_26A85DBA0);
  sub_26A84FB18();

  sub_26A84FB38();
  sub_26A84FB78();
  v8 = sub_26A850878();
  v10 = v9;
  LOBYTE(v6) = v11;
  sub_26A850E58();
  v12 = sub_26A8506A8();
  v14 = v13;
  v16 = v15;
  v18 = v17;

  sub_26A4EC448(v8, v10, v6 & 1);

  v19 = MEMORY[0x277D84F90];
  v20 = sub_26A850718();
  v22 = v21;
  v28 = v16 & 1;
  v27[16] = v16 & 1;
  v24 = v23 & 1;
  v27[8] = v23 & 1;
  v27[0] = 0;
  *a1 = v12;
  *(a1 + 8) = v14;
  *(a1 + 16) = v16 & 1;
  *(a1 + 24) = v18;
  *(a1 + 32) = v20;
  *(a1 + 40) = v21;
  *(a1 + 48) = v23 & 1;
  *(a1 + 56) = v25;
  *(a1 + 64) = 0xD000000000000011;
  *(a1 + 72) = 0x800000026A88BEE0;
  *(a1 + 80) = 0;
  *(a1 + 88) = v19;
  sub_26A4EF6C0(v12, v14, v16 & 1);

  sub_26A4EF6C0(v20, v22, v24);

  sub_26A4EF6C0(0xD000000000000011, 0x800000026A88BEE0, 0);

  sub_26A4EC448(0xD000000000000011, 0x800000026A88BEE0, 0);

  sub_26A4EC448(v20, v22, v24);

  sub_26A4EC448(v12, v14, v28);

  return result;
}

uint64_t sub_26A55F878@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AD288, &qword_26A85DA68);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v17[-v6];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AD290, &qword_26A85DA70);
  MEMORY[0x28223BE20](v8);
  MEMORY[0x28223BE20](v9);
  v11 = &v17[-v10];
  sub_26A55FAD8();
  if (sub_26A551A34(0))
  {
    v17[15] = 0;
    sub_26A851048();
    v12 = v17[16];
    v13 = v18;
    (*(v5 + 16))(v11, a1, v4);
    v14 = &v11[*(v8 + 36)];
    *v14 = v12;
    *(v14 + 1) = v13;
    sub_26A4EF6D0();
    sub_26A55FB1C();
    v15 = sub_26A851248();
    result = sub_26A4DBD10(v11, &qword_2803AD290, &qword_26A85DA70);
  }

  else
  {
    (*(v5 + 16))(v7, a1, v4);
    sub_26A4DBCC8(&qword_2803AD298, &qword_2803AD288, &qword_26A85DA68, MEMORY[0x277CE04B0]);
    result = sub_26A851248();
    v15 = result;
  }

  *a2 = v15;
  return result;
}

unint64_t sub_26A55FAD8()
{
  result = qword_28157D860;
  if (!qword_28157D860)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_28157D860);
  }

  return result;
}

unint64_t sub_26A55FB1C()
{
  result = qword_2803AD2A0;
  if (!qword_2803AD2A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AD290, &qword_26A85DA70);
    sub_26A4DBCC8(&qword_2803AD298, &qword_2803AD288, &qword_26A85DA68, MEMORY[0x277CE04B0]);
    sub_26A55FBD4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803AD2A0);
  }

  return result;
}

unint64_t sub_26A55FBD4()
{
  result = qword_2803AD2A8;
  if (!qword_2803AD2A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803AD2A8);
  }

  return result;
}

uint64_t sub_26A55FC28(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 16))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_26A55FC7C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

unint64_t sub_26A55FD04()
{
  result = qword_2803AD2E8;
  if (!qword_2803AD2E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AD2E0, &qword_26A85DB40);
    sub_26A4DBCC8(&qword_2803AD2F0, &qword_2803AD2F8, &qword_26A85DB48, MEMORY[0x277CE1198]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803AD2E8);
  }

  return result;
}

unint64_t sub_26A55FDBC()
{
  result = qword_28157FD68;
  if (!qword_28157FD68)
  {
    sub_26A84F588();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28157FD68);
  }

  return result;
}

uint64_t sub_26A55FE24(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x277D84F90];
  if (v2)
  {
    v8 = MEMORY[0x277D84F90];
    sub_26A8522F8();
    v4 = a1 + 32;
    do
    {
      sub_26A50429C(v4, v6);
      v5 = v7;
      __swift_project_boxed_opaque_existential_1(v6, v7);
      View.eraseToAnyView()(v5);
      __swift_destroy_boxed_opaque_existential_1(v6);
      sub_26A8522C8();
      sub_26A852308();
      sub_26A852318();
      sub_26A8522D8();
      v4 += 40;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for AnyViewBuilder(_BYTE *result, int a2, int a3)
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

uint64_t type metadata accessor for VisualizationLayout(uint64_t a1)
{
  result = qword_2803AD338;
  if (!qword_2803AD338)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_26A560024(uint64_t a1)
{
  sub_26A4EEA20();
  if (v1 <= 0x3F)
  {
    sub_26A5601D0(319, &qword_2803A9218, type metadata accessor for VRXIdiom, MEMORY[0x277CDF468]);
    if (v2 <= 0x3F)
    {
      sub_26A5601D0(319, &qword_2803A9230, MEMORY[0x277CDFA28], MEMORY[0x277CDF468]);
      if (v3 <= 0x3F)
      {
        sub_26A84BD28();
        if (v4 <= 0x3F)
        {
          sub_26A5601D0(319, &qword_2803AD348, MEMORY[0x277D62DF0], MEMORY[0x277D83D88]);
          if (v5 <= 0x3F)
          {
            sub_26A5601D0(319, &qword_2803AD350, MEMORY[0x277D62ED0], MEMORY[0x277D83D88]);
            if (v6 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_26A5601D0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

double sub_26A560250()
{
  v1 = sub_26A84F988();
  OUTLINED_FUNCTION_15();
  v3 = v2;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_41();
  v7 = v6 - v5;
  v8 = *v0;
  if (v0[8] == 1)
  {
    return *v0;
  }

  sub_26A851EA8();
  v10 = sub_26A8501F8();
  OUTLINED_FUNCTION_55(v10, &dword_26A48D000, v11, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", v12, v13, MEMORY[0x277D84F90]);

  sub_26A84F978();
  swift_getAtKeyPath();
  sub_26A49035C(v8, 0);
  (*(v3 + 8))(v7, v1);
  return v14;
}

uint64_t sub_26A560378()
{
  v1 = sub_26A84F988();
  OUTLINED_FUNCTION_15();
  v3 = v2;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_41();
  v7 = v6 - v5;
  v8 = *(v0 + 16);
  if ((*(v0 + 24) & 1) == 0)
  {

    sub_26A851EA8();
    v9 = sub_26A8501F8();
    OUTLINED_FUNCTION_55(v9, &dword_26A48D000, v10, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", v11, v12, MEMORY[0x277D84F90]);

    sub_26A84F978();
    swift_getAtKeyPath();
    sub_26A49035C(v8, 0);
    (*(v3 + 8))(v7, v1);
    return v14;
  }

  return v8;
}

uint64_t sub_26A560498@<X0>(uint64_t a1@<X8>)
{
  v39 = a1;
  v2 = sub_26A84BAB8();
  OUTLINED_FUNCTION_15();
  v35 = v3;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_41();
  v34 = v6 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91C8, &unk_26A856820);
  MEMORY[0x28223BE20](v7 - 8);
  OUTLINED_FUNCTION_6_0();
  v38 = v8 - v9;
  MEMORY[0x28223BE20](v10);
  v12 = &v34 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91C0, &unk_26A854CB0);
  MEMORY[0x28223BE20](v13 - 8);
  OUTLINED_FUNCTION_6_0();
  v37 = v14 - v15;
  MEMORY[0x28223BE20](v16);
  v18 = &v34 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B3800, &unk_26A856760);
  MEMORY[0x28223BE20](v19 - 8);
  OUTLINED_FUNCTION_6_0();
  v22 = v20 - v21;
  MEMORY[0x28223BE20](v23);
  v25 = &v34 - v24;
  type metadata accessor for VisualizationLayout(0);
  sub_26A561928();
  v41 = 0u;
  v42 = 0u;
  v43 = 1;
  v36 = sub_26A560378();
  sub_26A72003C(v18);
  v26 = sub_26A84F3A8();
  __swift_storeEnumTagSinglePayload(v18, 0, 1, v26);
  v40 = v1;
  sub_26A561928();
  if (__swift_getEnumTagSinglePayload(v22, 1, v2) == 1)
  {
    sub_26A4E2544(v22, &qword_2803B3800, &unk_26A856760);
    v27 = type metadata accessor for ActionType(0);
    v28 = v12;
    v29 = 1;
  }

  else
  {
    v30 = v34;
    v31 = *(v35 + 32);
    v31(v34, v22, v2);
    v31(v12, v30, v2);
    v32 = type metadata accessor for ActionType(0);
    swift_storeEnumTagMultiPayload();
    v28 = v12;
    v29 = 0;
    v27 = v32;
  }

  __swift_storeEnumTagSinglePayload(v28, v29, 1, v27);
  sub_26A561928();
  sub_26A561928();
  sub_26A4C6F28();
  sub_26A4E2544(v12, &qword_2803A91C8, &unk_26A856820);
  sub_26A4E2544(v18, &qword_2803A91C0, &unk_26A854CB0);
  return sub_26A4E2544(v25, &qword_2803B3800, &unk_26A856760);
}

uint64_t sub_26A560894@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A9410, &unk_26A8569B0);
  v5 = v4 - 8;
  MEMORY[0x28223BE20](v4);
  v7 = &v13 - v6;
  *v7 = sub_26A84FC08();
  *(v7 + 1) = 0x4014000000000000;
  v7[16] = 0;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AD358, &unk_26A85DC30);
  sub_26A5609E8(a1, &v7[*(v8 + 44)]);
  *&v7[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A9420, &qword_26A8555A0) + 36)] = 256;
  v9 = sub_26A850248();
  v10 = &v7[*(v5 + 44)];
  *v10 = v9;
  *(v10 + 8) = 0u;
  *(v10 + 24) = 0u;
  v10[40] = 1;
  v11 = type metadata accessor for VisualizationLayout(0);
  sub_26A4DE49C(*(a1 + *(v11 + 44)), *(a1 + *(v11 + 44) + 8));
  sub_26A4E2544(v7, &qword_2803A9410, &unk_26A8569B0);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A93B8, &qword_26A855380);
  *(a2 + *(result + 36)) = 1;
  return result;
}

uint64_t sub_26A5609E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v117 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AA838, &unk_26A856770);
  MEMORY[0x28223BE20](v3 - 8);
  v113 = &v103 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v109 = &v103 - v6;
  v110 = type metadata accessor for TextPropertyView(0);
  MEMORY[0x28223BE20](v110);
  v105 = &v103 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v104 = &v103 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AD360, &unk_26A85DE70);
  MEMORY[0x28223BE20](v10 - 8);
  v116 = &v103 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v115 = &v103 - v13;
  MEMORY[0x28223BE20](v14);
  v111 = &v103 - v15;
  MEMORY[0x28223BE20](v16);
  v114 = &v103 - v17;
  MEMORY[0x28223BE20](v18);
  v108 = &v103 - v19;
  MEMORY[0x28223BE20](v20);
  v120 = &v103 - v21;
  v22 = sub_26A84B058();
  v23 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v25 = &v103 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v28 = &v103 - v27;
  v29 = type metadata accessor for VisualPropertyView(0);
  v30 = (v29 - 8);
  MEMORY[0x28223BE20](v29);
  v32 = &v103 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AD368, &qword_26A85DC40);
  MEMORY[0x28223BE20](v106);
  v112 = &v103 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v34);
  v36 = &v103 - v35;
  MEMORY[0x28223BE20](v37);
  v119 = &v103 - v38;
  v118 = type metadata accessor for VisualizationLayout(0);
  v39 = *(v118 + 28);
  v40 = sub_26A84BD28();
  (*(*(v40 - 8) + 16))(v32, a1 + v39, v40);
  v41 = &v32[v30[7]];
  *v41 = swift_getKeyPath();
  v41[9] = 0;
  swift_unknownObjectWeakInit();
  v42 = &v32[v30[8]];
  *v42 = swift_getKeyPath();
  v42[8] = 0;
  v43 = &v32[v30[9]];
  *v43 = swift_getKeyPath();
  v43[8] = 0;
  v44 = v30[10];
  *&v32[v44] = swift_getKeyPath();
  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A93D0, &qword_26A856F10);
  swift_storeEnumTagMultiPayload();
  v45 = &v32[v30[11]];
  LOBYTE(v121) = 0;
  sub_26A851048();
  v46 = __src[1];
  *v45 = __src[0];
  *(v45 + 1) = v46;
  sub_26A560250();
  v47 = sub_26A560378();
  VRXIdiom.idiom.getter(v47, v28);
  (*(v23 + 104))(v25, *MEMORY[0x277D62A20], v22);
  sub_26A56187C();
  sub_26A851A48();
  sub_26A851A48();
  v48 = *(v23 + 8);
  v48(v25, v22);
  v48(v28, v22);
  sub_26A851448();
  sub_26A84F628();
  sub_26A56197C();
  memcpy(&v36[*(v106 + 36)], __src, 0x70uLL);
  sub_26A5618D4();
  v49 = v109;
  sub_26A561928();
  v50 = sub_26A84B888();
  if (__swift_getEnumTagSinglePayload(v49, 1, v50) == 1)
  {
    sub_26A4E2544(v49, &qword_2803AA838, &unk_26A856770);
    v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AD378, &qword_26A85DCF0);
    v52 = v108;
    v53 = 1;
  }

  else
  {
    v54 = *(v50 - 8);
    v55 = v104;
    (*(v54 + 16))(v104, v49, v50);
    v56 = v110;
    v57 = &v55[*(v110 + 20)];
    *v57 = swift_getKeyPath();
    v57[8] = 0;
    v58 = v56[6];
    *&v55[v58] = swift_getKeyPath();
    swift_storeEnumTagMultiPayload();
    v59 = &v55[v56[7]];
    *v59 = swift_getKeyPath();
    v59[8] = 0;
    v60 = &v55[v56[8]];
    *v60 = swift_getKeyPath();
    *(v60 + 1) = 0;
    v60[16] = 0;
    *(v60 + 3) = swift_getKeyPath();
    v60[32] = 0;
    v61 = type metadata accessor for ActionHandler(0);
    v62 = v61[6];
    *&v60[v62] = swift_getKeyPath();
    swift_storeEnumTagMultiPayload();
    v63 = &v60[v61[7]];
    *v63 = swift_getKeyPath();
    *(v63 + 1) = 0;
    v63[16] = 0;
    v64 = &v60[v61[8]];
    *v64 = swift_getKeyPath();
    v64[8] = 0;
    v65 = &v60[v61[9]];
    *v65 = swift_getKeyPath();
    v65[8] = 0;
    v66 = &v60[v61[10]];
    *v66 = swift_getKeyPath();
    v66[9] = 0;
    swift_unknownObjectWeakInit();
    v67 = v61[11];
    v68 = type metadata accessor for StandardActionHandler(0);
    __swift_storeEnumTagSinglePayload(&v60[v67], 1, 1, v68);
    sub_26A4E2544(&v60[v67], &qword_2803B3910, &qword_26A855580);
    __swift_storeEnumTagSinglePayload(&v60[v67], 1, 1, v68);
    (*(v54 + 8))(v49, v50);
    v69 = sub_26A850408();
    KeyPath = swift_getKeyPath();
    v71 = v108;
    sub_26A56197C();
    v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AD378, &qword_26A85DCF0);
    v72 = &v71[*(v51 + 36)];
    *v72 = KeyPath;
    v72[1] = v69;
    v52 = v71;
    v53 = 0;
  }

  __swift_storeEnumTagSinglePayload(v52, v53, 1, v51);
  v73 = v113;
  sub_26A5618D4();
  sub_26A561928();
  if (__swift_getEnumTagSinglePayload(v73, 1, v50) == 1)
  {
    sub_26A4E2544(v73, &qword_2803AA838, &unk_26A856770);
    v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AD378, &qword_26A85DCF0);
    v75 = v111;
    v76 = 1;
  }

  else
  {
    v77 = *(v50 - 8);
    v78 = v105;
    (*(v77 + 16))(v105, v73, v50);
    v79 = v110;
    v80 = &v78[*(v110 + 20)];
    *v80 = swift_getKeyPath();
    v80[8] = 0;
    v81 = v79[6];
    *&v78[v81] = swift_getKeyPath();
    swift_storeEnumTagMultiPayload();
    v82 = &v78[v79[7]];
    *v82 = swift_getKeyPath();
    v82[8] = 0;
    v83 = &v78[v79[8]];
    *v83 = swift_getKeyPath();
    *(v83 + 1) = 0;
    v83[16] = 0;
    *(v83 + 3) = swift_getKeyPath();
    v83[32] = 0;
    v84 = type metadata accessor for ActionHandler(0);
    v85 = v84[6];
    *&v83[v85] = swift_getKeyPath();
    swift_storeEnumTagMultiPayload();
    v86 = &v83[v84[7]];
    *v86 = swift_getKeyPath();
    *(v86 + 1) = 0;
    v86[16] = 0;
    v87 = &v83[v84[8]];
    *v87 = swift_getKeyPath();
    v87[8] = 0;
    v88 = &v83[v84[9]];
    *v88 = swift_getKeyPath();
    v88[8] = 0;
    v89 = &v83[v84[10]];
    *v89 = swift_getKeyPath();
    v89[9] = 0;
    swift_unknownObjectWeakInit();
    v90 = v84[11];
    v91 = type metadata accessor for StandardActionHandler(0);
    __swift_storeEnumTagSinglePayload(&v83[v90], 1, 1, v91);
    sub_26A4E2544(&v83[v90], &qword_2803B3910, &qword_26A855580);
    __swift_storeEnumTagSinglePayload(&v83[v90], 1, 1, v91);
    (*(v77 + 8))(v73, v50);
    v92 = sub_26A8502F8();
    v93 = swift_getKeyPath();
    v94 = v111;
    sub_26A56197C();
    v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AD378, &qword_26A85DCF0);
    v95 = &v94[*(v74 + 36)];
    *v95 = v93;
    v95[1] = v92;
    v75 = v94;
    v76 = 0;
  }

  __swift_storeEnumTagSinglePayload(v75, v76, 1, v74);
  v96 = v114;
  sub_26A5618D4();
  v97 = v119;
  v98 = v112;
  sub_26A561928();
  v99 = v120;
  v100 = v115;
  sub_26A561928();
  v101 = v116;
  sub_26A561928();
  sub_26A561928();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AD380, &qword_26A85DCF8);
  sub_26A561928();
  sub_26A561928();
  sub_26A4E2544(v96, &qword_2803AD360, &unk_26A85DE70);
  sub_26A4E2544(v99, &qword_2803AD360, &unk_26A85DE70);
  sub_26A4E2544(v97, &qword_2803AD368, &qword_26A85DC40);
  sub_26A4E2544(v101, &qword_2803AD360, &unk_26A85DE70);
  sub_26A4E2544(v100, &qword_2803AD360, &unk_26A85DE70);
  return sub_26A4E2544(v98, &qword_2803AD368, &qword_26A85DC40);
}

unint64_t sub_26A56187C()
{
  result = qword_2803AD370;
  if (!qword_2803AD370)
  {
    sub_26A84B058();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803AD370);
  }

  return result;
}

uint64_t sub_26A5618D4()
{
  OUTLINED_FUNCTION_145();
  __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_5_0();
  (*(v4 + 32))(v0, v1);
  return v0;
}

uint64_t sub_26A561928()
{
  OUTLINED_FUNCTION_145();
  __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_5_0();
  (*(v4 + 16))(v0, v1);
  return v0;
}

uint64_t sub_26A56197C()
{
  OUTLINED_FUNCTION_145();
  v2(0);
  OUTLINED_FUNCTION_5_0();
  (*(v3 + 32))(v0, v1);
  return v0;
}

unint64_t sub_26A5619D0()
{
  result = qword_2803AD388;
  if (!qword_2803AD388)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803A93C8, &qword_26A855480);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803AD388);
  }

  return result;
}

uint64_t type metadata accessor for SummaryItemPairTitleView(uint64_t a1)
{
  result = qword_2803AD390;
  if (!qword_2803AD390)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_26A561AA8(uint64_t a1)
{
  sub_26A561B1C(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_26A561B1C(uint64_t a1)
{
  if (!qword_2803AD348)
  {
    sub_26A84B888();
    v1 = sub_26A852068();
    if (!v2)
    {
      atomic_store(v1, &qword_2803AD348);
    }
  }
}

uint64_t sub_26A561B90@<X0>(uint64_t a1@<X8>)
{
  v18[3] = a1;
  v18[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AD3A0, &qword_26A85DE50);
  OUTLINED_FUNCTION_46();
  MEMORY[0x28223BE20](v3);
  v18[2] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AD3A8, &qword_26A85DE58);
  OUTLINED_FUNCTION_46();
  MEMORY[0x28223BE20](v4);
  v6 = v18 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AA838, &unk_26A856770);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = v18 - v11;
  MEMORY[0x28223BE20](v13);
  v15 = v18 - v14;
  sub_26A4EF6D0();
  sub_26A84B888();
  OUTLINED_FUNCTION_2_16(v15);
  sub_26A4DBD10(v15, &qword_2803AA838, &unk_26A856770);
  if (v2 == 1)
  {
    type metadata accessor for SummaryItemPairTitleView(0);
    sub_26A4EF6D0();
    OUTLINED_FUNCTION_2_16(v12);
    sub_26A4DBD10(v12, &qword_2803AA838, &unk_26A856770);
    sub_26A4EF6D0();
    OUTLINED_FUNCTION_2_16(v9);
    sub_26A4DBD10(v9, &qword_2803AA838, &unk_26A856770);
    swift_storeEnumTagMultiPayload();
    sub_26A562974();
    return sub_26A84FDF8();
  }

  else
  {
    *v6 = sub_26A84FC08();
    *(v6 + 1) = 0;
    v6[16] = 0;
    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AD3B8, &unk_26A85DE60);
    sub_26A561EA8(v1, &v6[*(v17 + 44)]);
    sub_26A4EF6D0();
    swift_storeEnumTagMultiPayload();
    sub_26A562974();
    sub_26A84FDF8();
    return sub_26A4DBD10(v6, &qword_2803AD3A8, &qword_26A85DE58);
  }
}

uint64_t sub_26A561EA8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v81 = a2;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AD3C0, &qword_26A861BF0);
  MEMORY[0x28223BE20](v77);
  v82 = &v72 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v79 = &v72 - v5;
  v6 = type metadata accessor for SimpleItemStandardLayout(0);
  MEMORY[0x28223BE20](v6);
  v80 = &v72 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v72 - v9;
  MEMORY[0x28223BE20](v11);
  v78 = &v72 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AA838, &unk_26A856770);
  MEMORY[0x28223BE20](v13 - 8);
  v75 = &v72 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v72 - v16;
  MEMORY[0x28223BE20](v18);
  v20 = &v72 - v19;
  v21 = type metadata accessor for TextPropertyView(0);
  MEMORY[0x28223BE20](v21);
  v23 = &v72 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AD360, &unk_26A85DE70);
  MEMORY[0x28223BE20](v24 - 8);
  v76 = &v72 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v28 = &v72 - v27;
  MEMORY[0x28223BE20](v29);
  v83 = &v72 - v30;
  sub_26A4EF6D0();
  v31 = sub_26A84B888();
  if (__swift_getEnumTagSinglePayload(v20, 1, v31) == 1)
  {
    sub_26A4DBD10(v20, &qword_2803AA838, &unk_26A856770);
    v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AD378, &qword_26A85DCF0);
    v33 = v28;
    v34 = 1;
  }

  else
  {
    v72 = *(v31 - 8);
    (*(v72 + 16))(v23, v20, v31);
    v35 = v21[5];
    v74 = a1;
    v36 = &v23[v35];
    *v36 = swift_getKeyPath();
    v36[8] = 0;
    v37 = v21[6];
    *&v23[v37] = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A93D0, &qword_26A856F10);
    swift_storeEnumTagMultiPayload();
    v38 = &v23[v21[7]];
    *v38 = swift_getKeyPath();
    v38[8] = 0;
    v39 = &v23[v21[8]];
    *v39 = swift_getKeyPath();
    *(v39 + 1) = 0;
    v39[16] = 0;
    *(v39 + 3) = swift_getKeyPath();
    v39[32] = 0;
    v40 = type metadata accessor for ActionHandler(0);
    v73 = v17;
    v41 = v40[6];
    *&v39[v41] = swift_getKeyPath();
    swift_storeEnumTagMultiPayload();
    v42 = &v39[v40[7]];
    *v42 = swift_getKeyPath();
    *(v42 + 1) = 0;
    v42[16] = 0;
    v43 = &v39[v40[8]];
    *v43 = swift_getKeyPath();
    v43[8] = 0;
    v44 = &v39[v40[9]];
    *v44 = swift_getKeyPath();
    v44[8] = 0;
    v45 = &v39[v40[10]];
    *v45 = swift_getKeyPath();
    v45[9] = 0;
    swift_unknownObjectWeakInit();
    v46 = v40[11];
    v47 = type metadata accessor for StandardActionHandler(0);
    __swift_storeEnumTagSinglePayload(&v39[v46], 1, 1, v47);
    sub_26A4DBD10(&v39[v46], &qword_2803B3910, &qword_26A855580);
    v48 = &v39[v46];
    v17 = v73;
    __swift_storeEnumTagSinglePayload(v48, 1, 1, v47);
    (*(v72 + 8))(v20, v31);
    v49 = sub_26A8504A8();
    KeyPath = swift_getKeyPath();
    sub_26A562AFC();
    v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AD378, &qword_26A85DCF0);
    v51 = &v28[*(v32 + 36)];
    *v51 = KeyPath;
    v51[1] = v49;
    v33 = v28;
    v34 = 0;
  }

  __swift_storeEnumTagSinglePayload(v33, v34, 1, v32);
  sub_26A5629D8(v28, v83);
  type metadata accessor for SummaryItemPairTitleView(0);
  sub_26A4EF6D0();
  if (__swift_getEnumTagSinglePayload(v17, 1, v31) == 1)
  {
    sub_26A4DBD10(v17, &qword_2803AA838, &unk_26A856770);
    v52 = 0;
  }

  else
  {
    v52 = TextProperty.asAnyView()();
    (*(*(v31 - 8) + 8))(v17, v31);
  }

  v53 = v75;
  sub_26A4EF6D0();
  if (__swift_getEnumTagSinglePayload(v53, 1, v31) == 1)
  {
    sub_26A4DBD10(v53, &qword_2803AA838, &unk_26A856770);
    v54 = 0;
  }

  else
  {
    v54 = TextProperty.asAnyView()();
    (*(*(v31 - 8) + 8))(v53, v31);
  }

  if (qword_2803A89D0 != -1)
  {
    swift_once();
  }

  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AADC8, &qword_26A85B990);
  __swift_project_value_buffer(v55, qword_2803D1900);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AC908, &qword_26A864570);
  sub_26A4EF6D0();
  sub_26A6AEE74(__src);
  memcpy(v10, __src, 0xBFuLL);
  sub_26A562A48();
  v56 = &v10[v6[5]];
  *v56 = swift_getKeyPath();
  v56[8] = 0;
  v57 = v6[6];
  *&v10[v57] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91A8, &qword_26A857040);
  swift_storeEnumTagMultiPayload();
  v58 = &v10[v6[7]];
  v84 = 0x403E000000000000;
  sub_26A851048();
  v59 = v86;
  *v58 = v85;
  *(v58 + 1) = v59;
  *&v10[v6[8]] = v52;
  *&v10[v6[9]] = v54;
  *&v10[v6[10]] = 0;
  *&v10[v6[11]] = 0;
  *&v10[v6[12]] = 0;
  *&v10[v6[13]] = 0;
  v10[v6[14]] = 0;
  v60 = v78;
  sub_26A562AFC();
  v61 = v79;
  sub_26A8512B8();
  LOBYTE(v58) = sub_26A8502A8();
  sub_26A84ED48();
  v62 = v61 + *(v77 + 36);
  *v62 = v58;
  *(v62 + 8) = v63;
  *(v62 + 16) = v64;
  *(v62 + 24) = v65;
  *(v62 + 32) = v66;
  *(v62 + 40) = 0;
  v67 = v83;
  v68 = v76;
  sub_26A4EF6D0();
  v69 = v80;
  sub_26A562A48();
  v70 = v82;
  sub_26A4EF6D0();
  sub_26A4EF6D0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AD3C8, &qword_26A85DEE0);
  sub_26A562A48();
  sub_26A4EF6D0();
  sub_26A4DBD10(v61, &qword_2803AD3C0, &qword_26A861BF0);
  sub_26A562AA0(v60);
  sub_26A4DBD10(v67, &qword_2803AD360, &unk_26A85DE70);
  sub_26A4DBD10(v70, &qword_2803AD3C0, &qword_26A861BF0);
  sub_26A562AA0(v69);
  return sub_26A4DBD10(v68, &qword_2803AD360, &unk_26A85DE70);
}

unint64_t sub_26A562974()
{
  result = qword_2803AD3B0;
  if (!qword_2803AD3B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AD3A8, &qword_26A85DE58);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803AD3B0);
  }

  return result;
}

uint64_t sub_26A5629D8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AD360, &unk_26A85DE70);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_26A562A48()
{
  OUTLINED_FUNCTION_145();
  v2(0);
  OUTLINED_FUNCTION_46();
  (*(v3 + 16))(v0, v1);
  return v0;
}

uint64_t sub_26A562AA0(uint64_t a1)
{
  v2 = type metadata accessor for SimpleItemStandardLayout(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_26A562AFC()
{
  OUTLINED_FUNCTION_145();
  v2(0);
  OUTLINED_FUNCTION_46();
  (*(v3 + 32))(v0, v1);
  return v0;
}

unint64_t sub_26A562B54()
{
  result = qword_2803AD3D0;
  if (!qword_2803AD3D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AD3D8, &unk_26A85E040);
    sub_26A562974();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803AD3D0);
  }

  return result;
}

uint64_t type metadata accessor for PrimaryHeaderStandardLayout(uint64_t a1)
{
  result = qword_2803AD568;
  if (!qword_2803AD568)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_26A562C74(uint64_t a1)
{
  sub_26A4E5DC4(319, &qword_2803A9218, type metadata accessor for VRXIdiom);
  if (v1 <= 0x3F)
  {
    sub_26A52DEC8(319, &qword_2803AB788, MEMORY[0x277D839B0], MEMORY[0x277CDF468]);
    if (v2 <= 0x3F)
    {
      sub_26A52DEC8(319, &qword_2803AD578, &type metadata for PrimaryHeaderStandardLayout.Constants, type metadata accessor for EnvironmentConstant);
      if (v3 <= 0x3F)
      {
        sub_26A4E5DC4(319, &qword_2803A9230, MEMORY[0x277CDFA28]);
        if (v4 <= 0x3F)
        {
          sub_26A52DEC8(319, &qword_2803B3840, MEMORY[0x277D839B0], MEMORY[0x277CE10B8]);
          if (v5 <= 0x3F)
          {
            sub_26A52DEC8(319, &qword_2803A9240, MEMORY[0x277CE11C8], MEMORY[0x277D83D88]);
            if (v6 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

uint64_t sub_26A562E2C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 360))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 40);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_26A562E6C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 328) = 0u;
    *(result + 344) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 360) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 40) = (a2 - 1);
      return result;
    }

    *(result + 360) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_26A562F34@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AD580, &qword_26A85E238);
  OUTLINED_FUNCTION_46();
  MEMORY[0x28223BE20](v3);
  v5 = &v12 - v4;
  sub_26A5630D0(v1, &v12 - v4);
  sub_26A56411C();
  sub_26A850AF8();
  sub_26A4DBD10(v5, &qword_2803AD580, &qword_26A85E238);
  v6 = swift_allocObject();
  *(v6 + 16) = sub_26A68CCD4;
  *(v6 + 24) = 0;
  v7 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AD600, &qword_26A85E278) + 36);
  *(v7 + 16) = swift_getKeyPath();
  *(v7 + 24) = 0;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91D8, &qword_26A8575D0);
  v9 = *(v8 + 40);
  *(v7 + v9) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A9190, &unk_26A854C50);
  swift_storeEnumTagMultiPayload();
  v10 = v7 + *(v8 + 44);
  result = swift_getKeyPath();
  *v10 = result;
  *(v10 + 8) = 0;
  *v7 = sub_26A4D1F7C;
  *(v7 + 8) = v6;
  return result;
}

uint64_t sub_26A5630D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v44 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AD5F8, &qword_26A85E270);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v36 - v4;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AD5E8, &qword_26A85E268);
  MEMORY[0x28223BE20](v37);
  v38 = &v36 - v6;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AD5D8, &qword_26A85E260);
  MEMORY[0x28223BE20](v43);
  v39 = &v36 - v7;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AD608, &qword_26A85E308);
  MEMORY[0x28223BE20](v40);
  v42 = &v36 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AD5C8, &qword_26A85E258);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v36 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AD5B8, &qword_26A85E250);
  MEMORY[0x28223BE20](v12);
  v14 = &v36 - v13;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AD5A8, &qword_26A85E248);
  MEMORY[0x28223BE20](v41);
  v16 = &v36 - v15;
  v17 = sub_26A84F3A8();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = &v36 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for PrimaryHeaderStandardLayout(0);
  sub_26A72003C(v20);
  v21 = sub_26A84F388();
  (*(v18 + 8))(v20, v17);
  if (v21)
  {
    v22 = sub_26A84FC08();
    v23 = *(a1 + 224);
    *v11 = v22;
    *(v11 + 1) = v23;
    v11[16] = 0;
    v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AD618, &qword_26A85E318);
    sub_26A5639C8(a1, &v11[*(v24 + 44)]);
    sub_26A851458();
    sub_26A84F628();
    sub_26A4DBDB4(v11, v14, &qword_2803AD5C8, &qword_26A85E258);
    memcpy(&v14[*(v12 + 36)], __src, 0x70uLL);
    sub_26A4DBDB4(v14, v16, &qword_2803AD5B8, &qword_26A85E250);
    v25 = v42;
    *&v16[*(v41 + 36)] = 256;
    v26 = &qword_2803AD5A8;
    v27 = &qword_26A85E248;
    sub_26A4DBD68(v16, v25, &qword_2803AD5A8, &qword_26A85E248);
    swift_storeEnumTagMultiPayload();
    sub_26A56433C(&qword_2803AD5A0, &qword_2803AD5A8, &qword_26A85E248, sub_26A564284);
    sub_26A56433C(&qword_2803AD5D0, &qword_2803AD5D8, &qword_26A85E260, sub_26A5643C0);
    sub_26A84FDF8();
    v28 = v16;
  }

  else
  {
    v29 = sub_26A84FA58();
    v30 = *(a1 + 224);
    *v5 = v29;
    *(v5 + 1) = v30;
    v5[16] = 0;
    v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AD610, &qword_26A85E310);
    sub_26A5639C8(a1, &v5[*(v31 + 44)]);
    sub_26A851458();
    sub_26A84F628();
    v32 = v38;
    sub_26A4DBDB4(v5, v38, &qword_2803AD5F8, &qword_26A85E270);
    memcpy((v32 + *(v37 + 36)), __src, 0x70uLL);
    v33 = v39;
    sub_26A4DBDB4(v32, v39, &qword_2803AD5E8, &qword_26A85E268);
    v34 = v42;
    *(v33 + *(v43 + 36)) = 256;
    v26 = &qword_2803AD5D8;
    v27 = &qword_26A85E260;
    sub_26A4DBD68(v33, v34, &qword_2803AD5D8, &qword_26A85E260);
    swift_storeEnumTagMultiPayload();
    sub_26A56433C(&qword_2803AD5A0, &qword_2803AD5A8, &qword_26A85E248, sub_26A564284);
    sub_26A56433C(&qword_2803AD5D0, &qword_2803AD5D8, &qword_26A85E260, sub_26A5643C0);
    sub_26A84FDF8();
    v28 = v33;
  }

  return sub_26A4DBD10(v28, v26, v27);
}

uint64_t sub_26A563754@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_26A84B1D8();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AAFA0, &unk_26A85D4D0);
  OUTLINED_FUNCTION_46();
  MEMORY[0x28223BE20](v8);
  v10 = (&v23 - v9);
  v11 = *(v1 + *(type metadata accessor for PrimaryHeaderStandardLayout(0) + 52));
  if (v11)
  {
    (*(v4 + 104))(v6, *MEMORY[0x277D62B38], v3);
    KeyPath = swift_getKeyPath();
    v13 = (v10 + *(v7 + 36));
    v14 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AA440, &qword_26A856F40) + 28);
    (*(v4 + 32))(v13 + v14, v6, v3);
    __swift_storeEnumTagSinglePayload(v13 + v14, 0, 1, v3);
    *v13 = KeyPath;
    *v10 = v11;
    v15 = swift_getKeyPath();
    sub_26A4DBDB4(v10, a1, &qword_2803AAFA0, &unk_26A85D4D0);
    v16 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB308, &qword_26A8584C0) + 36);
    *v16 = v15;
    *(v16 + 8) = 1;
    v17 = swift_getKeyPath();
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB2E0, &qword_26A8583F0);
    v19 = a1 + *(v18 + 36);
    *v19 = v17;
    *(v19 + 8) = 0;
    v20 = a1;
    v21 = 0;
  }

  else
  {
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB2E0, &qword_26A8583F0);
    v20 = a1;
    v21 = 1;
  }

  __swift_storeEnumTagSinglePayload(v20, v21, 1, v18);
}

uint64_t sub_26A5639C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AD620, &qword_26A85E320);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v12[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v7);
  v9 = &v12[-v8];
  sub_26A563754(&v12[-v8]);
  v13[0] = sub_26A84FC08();
  v13[1] = 0;
  LOBYTE(v13[2]) = 0;
  sub_26A563BD4(a1, &v13[3]);
  sub_26A851458();
  sub_26A84F628();
  memcpy(v12, v13, 0x4F9uLL);
  memcpy(v13, v12, sizeof(v13));
  OUTLINED_FUNCTION_3_17(v9, v6);
  sub_26A4DBD68(v13, v12, &qword_2803AD628, &qword_26A85E328);
  OUTLINED_FUNCTION_3_17(v6, a2);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AD630, &qword_26A85E330);
  sub_26A4DBD68(v12, a2 + *(v10 + 48), &qword_2803AD628, &qword_26A85E328);
  sub_26A4DBD10(v13, &qword_2803AD628, &qword_26A85E328);
  sub_26A4DBD10(v9, &qword_2803AD620, &qword_26A85E320);
  sub_26A4DBD10(v12, &qword_2803AD628, &qword_26A85E328);
  return sub_26A4DBD10(v6, &qword_2803AD620, &qword_26A85E320);
}

uint64_t sub_26A563BD4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_26A84FC08();
  v5 = *(a1 + 256);
  v43[0] = v4;
  v43[1] = v5;
  v44 = 0;
  sub_26A563E4C(a1, v45);
  v6 = *(a1 + *(type metadata accessor for PrimaryHeaderStandardLayout(0) + 44));
  if (v6)
  {
    sub_26A4DBD68(a1 + 424, &v34[12] + 8, &qword_2803AA880, &unk_26A8567F0);
    sub_26A6AEE74(__src);
    memcpy(v34 + 8, __src, 0xBFuLL);
    v36 = 0;
    *(&v35 + 1) = sub_26A80A810;
    *&v34[0] = v6;

    v7 = sub_26A850258();
    sub_26A84ED48();
    *(&v9 + 1) = v8;
    *(&v11 + 1) = v10;
    v12 = v34[0];
    v13 = v34[1];
    v14 = v34[2];
    v15 = v34[3];
    v16 = v34[4];
    v17 = v34[5];
    v18 = v34[6];
    v19 = v34[7];
    v20 = v34[8];
    v21 = v34[9];
    v22 = v34[10];
    v23 = v34[11];
    v24 = v34[12];
    v25 = v34[13];
    v26 = v34[14];
    v27 = v34[15];
    v28 = v34[16];
    v29 = v35;
    v30 = v36;
    v31 = v7;
    v33[0] = 0;
  }

  else
  {
    v30 = 0;
    v31 = 0;
    v12 = 0uLL;
    v13 = 0uLL;
    v14 = 0uLL;
    v33[0] = 0;
    v15 = 0uLL;
    v16 = 0uLL;
    v17 = 0uLL;
    v18 = 0uLL;
    v19 = 0uLL;
    v20 = 0uLL;
    v21 = 0uLL;
    v22 = 0uLL;
    v23 = 0uLL;
    v24 = 0uLL;
    v25 = 0uLL;
    v26 = 0uLL;
    v27 = 0uLL;
    v28 = 0uLL;
    v29 = 0uLL;
    v9 = 0uLL;
    v11 = 0uLL;
  }

  v37[0] = v12;
  v37[1] = v13;
  v37[2] = v14;
  v37[3] = v15;
  v37[4] = v16;
  v37[5] = v17;
  v37[6] = v18;
  v37[7] = v19;
  v37[8] = v20;
  v37[9] = v21;
  v37[10] = v22;
  v37[11] = v23;
  v37[12] = v24;
  v37[13] = v25;
  v37[14] = v26;
  v37[15] = v27;
  v37[16] = v28;
  v37[17] = v29;
  v38 = v30;
  v39 = v31;
  v40 = v9;
  v41 = v11;
  v42 = v33[0];
  sub_26A4DBD68(v43, v34, &qword_2803AD638, &qword_26A85E338);
  sub_26A4DBD68(v37, v33, &qword_2803AA890, &unk_26A85E340);
  sub_26A4DBD68(v34, a2, &qword_2803AD638, &qword_26A85E338);
  sub_26A4DBD68(v33, a2 + 912, &qword_2803AA890, &unk_26A85E340);
  sub_26A4DBD10(v37, &qword_2803AA890, &unk_26A85E340);
  sub_26A4DBD10(v43, &qword_2803AD638, &qword_26A85E338);
  sub_26A4DBD10(v33, &qword_2803AA890, &unk_26A85E340);
  return sub_26A4DBD10(v34, &qword_2803AD638, &qword_26A85E338);
}

uint64_t sub_26A563E4C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for PrimaryHeaderStandardLayout(0);
  v5 = *(a1 + v4[12]);
  if (v5)
  {
    sub_26A4DBD68(a1 + 504, &v15[25], &qword_2803AA880, &unk_26A8567F0);
    sub_26A6AEE74(__src);
    memcpy(&v15[1], __src, 0xBFuLL);
    v15[0] = v5;
    v6 = sub_26A80A810;
  }

  else
  {
    bzero(v15, 0x118uLL);
    v6 = 0;
  }

  v15[35] = v6;
  v15[36] = 0;
  memcpy(__dst, v15, sizeof(__dst));
  v7 = *(a1 + v4[9]);
  sub_26A4DBD68(a1 + 264, &v15[25], &qword_2803AA880, &unk_26A8567F0);

  sub_26A6AEE74(v18);
  memcpy(&v15[1], v18, 0xBFuLL);
  v15[36] = 0;
  v15[35] = sub_26A80A810;
  v15[0] = v7;
  v8 = *(a1 + v4[10]);
  if (v8)
  {
    sub_26A4DBD68(a1 + 344, &v13[25], &qword_2803AA880, &unk_26A8567F0);

    sub_26A6AEE74(v19);
    memcpy(&v13[1], v19, 0xBFuLL);
    v13[0] = v8;
    v9 = sub_26A80A810;
  }

  else
  {
    bzero(v13, 0x118uLL);

    v9 = 0;
  }

  v13[35] = v9;
  v13[36] = 0;
  memcpy(v14, v13, sizeof(v14));
  sub_26A4DBD68(__dst, v13, &qword_2803AA888, &qword_26A857920);
  sub_26A4DBD68(v15, v12, &qword_2803A99A0, &unk_26A856800);
  sub_26A4DBD68(v14, v11, &qword_2803AA888, &qword_26A857920);
  sub_26A4DBD68(v13, a2, &qword_2803AA888, &qword_26A857920);
  sub_26A4DBD68(v12, a2 + 296, &qword_2803A99A0, &unk_26A856800);
  sub_26A4DBD68(v11, a2 + 592, &qword_2803AA888, &qword_26A857920);

  sub_26A4DBD10(v14, &qword_2803AA888, &qword_26A857920);
  sub_26A4DBD10(v15, &qword_2803A99A0, &unk_26A856800);
  sub_26A4DBD10(__dst, &qword_2803AA888, &qword_26A857920);
  sub_26A4DBD10(v11, &qword_2803AA888, &qword_26A857920);
  sub_26A4DBD10(v12, &qword_2803A99A0, &unk_26A856800);
  return sub_26A4DBD10(v13, &qword_2803AA888, &qword_26A857920);
}

unint64_t sub_26A56411C()
{
  result = qword_2803AD588;
  if (!qword_2803AD588)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AD580, &qword_26A85E238);
    sub_26A5641A0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803AD588);
  }

  return result;
}

unint64_t sub_26A5641A0()
{
  result = qword_2803AD590;
  if (!qword_2803AD590)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AD598, &qword_26A85E240);
    sub_26A56433C(&qword_2803AD5A0, &qword_2803AD5A8, &qword_26A85E248, sub_26A564284);
    sub_26A56433C(&qword_2803AD5D0, &qword_2803AD5D8, &qword_26A85E260, sub_26A5643C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803AD590);
  }

  return result;
}

unint64_t sub_26A564284()
{
  result = qword_2803AD5B0;
  if (!qword_2803AD5B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AD5B8, &qword_26A85E250);
    sub_26A4DBCC8(&qword_2803AD5C0, &qword_2803AD5C8, &qword_26A85E258, MEMORY[0x277CE1198]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803AD5B0);
  }

  return result;
}

uint64_t sub_26A56433C(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_26A5643C0()
{
  result = qword_2803AD5E0;
  if (!qword_2803AD5E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AD5E8, &qword_26A85E268);
    sub_26A4DBCC8(&qword_2803AD5F0, &qword_2803AD5F8, &qword_26A85E270, MEMORY[0x277CE1138]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803AD5E0);
  }

  return result;
}

void *sub_26A564478()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AD640, qword_26A85E3D8);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_26A85E050;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AADE0, &unk_26A857190);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26A8570D0;
  if (qword_28157E758 != -1)
  {
    swift_once();
  }

  v2 = OUTLINED_FUNCTION_2_17(&qword_281588968);
  sub_26A4E324C(v2, v3);
  sub_26A621A9C(inited);
  *(v0 + 32) = v4;
  v5 = sub_26A851438();
  v7 = v6;
  if (qword_2803A9060 != -1)
  {
    swift_once();
  }

  sub_26A4DBD68(&unk_2803D2990, v0 + 80, &qword_2803AA880, &unk_26A8567F0);
  if (qword_2803A9088 != -1)
  {
    swift_once();
  }

  v8 = sub_26A4DBD68(&unk_2803D2B20, v0 + 160, &qword_2803AA880, &unk_26A8567F0);
  if (qword_28157E6A0 != -1)
  {
    v8 = swift_once();
  }

  *(v0 + 40) = 0x4024000000000000;
  *(v0 + 48) = v5;
  *(v0 + 56) = v7;
  *(v0 + 64) = xmmword_26A85E060;
  v9 = OUTLINED_FUNCTION_4_16(v8, v0 + 240);
  OUTLINED_FUNCTION_4_16(v9, v0 + 320);
  v10 = swift_initStackObject();
  *(v10 + 16) = xmmword_26A8570D0;
  if (qword_28157E738 != -1)
  {
    swift_once();
  }

  v11 = OUTLINED_FUNCTION_2_17(&qword_281588938);
  sub_26A4E324C(v11, v12);
  sub_26A621A9C(v10);
  *(v0 + 400) = v13;
  v14 = sub_26A851458();
  v16 = v15;
  if (qword_28157E6C0 != -1)
  {
    swift_once();
  }

  sub_26A4DBD68(&unk_2815888E8, v0 + 448, &qword_2803AA880, &unk_26A8567F0);
  if (qword_28157E6A8 != -1)
  {
    swift_once();
  }

  *(v0 + 408) = 0x4020000000000000;
  *(v0 + 416) = v14;
  *(v0 + 432) = 0;
  *(v0 + 440) = 0;
  *(v0 + 424) = v16;
  v17 = OUTLINED_FUNCTION_3_17(&unk_281588848, v0 + 528);
  v18 = OUTLINED_FUNCTION_1_18(v17, v0 + 608);
  OUTLINED_FUNCTION_1_18(v18, v0 + 688);
  v19 = swift_initStackObject();
  *(v19 + 16) = xmmword_26A8570D0;
  if (qword_28157E780 != -1)
  {
    swift_once();
  }

  v20 = qword_281588998;
  *(v19 + 32) = qword_281588998;
  v21 = byte_2815889A0;
  *(v19 + 40) = byte_2815889A0;
  sub_26A4E324C(v20, v21);
  sub_26A621A9C(v19);
  *(v0 + 768) = v22;
  v23 = sub_26A851438();
  v25 = v24;
  if (qword_2803A9058 != -1)
  {
    swift_once();
  }

  *(v0 + 776) = 0x4034000000000000;
  *(v0 + 784) = v23;
  *(v0 + 792) = v25;
  __asm { FMOV            V0.2D, #12.0 }

  *(v0 + 800) = _Q0;
  OUTLINED_FUNCTION_3_17(&unk_2803D2940, v0 + 816);
  v31 = OUTLINED_FUNCTION_3_17(&unk_2803D2B20, v0 + 896);
  v32 = OUTLINED_FUNCTION_1_18(v31, v0 + 976);
  OUTLINED_FUNCTION_1_18(v32, v0 + 1056);
  v33 = swift_initStackObject();
  *(v33 + 16) = xmmword_26A857110;
  v34 = qword_281588998;
  *(v33 + 32) = qword_281588998;
  v35 = byte_2815889A0;
  *(v33 + 40) = byte_2815889A0;
  *(v33 + 48) = 1;
  *(v33 + 56) = 3;
  *(v33 + 64) = 1;
  *(v33 + 72) = 5;
  sub_26A4E324C(v34, v35);
  sub_26A621A9C(v33);
  *(v0 + 1136) = v36;
  v37 = sub_26A851438();
  *(v0 + 1144) = 0x4034000000000000;
  *(v0 + 1152) = v37;
  *(v0 + 1160) = v38;
  *(v0 + 1168) = xmmword_26A85E070;
  OUTLINED_FUNCTION_3_17(&unk_2803D2940, v0 + 1184);
  v39 = OUTLINED_FUNCTION_3_17(&unk_2803D2B20, v0 + 1264);
  v40 = OUTLINED_FUNCTION_1_18(v39, v0 + 1344);
  OUTLINED_FUNCTION_1_18(v40, v0 + 1424);
  v41 = swift_initStackObject();
  *(v41 + 16) = xmmword_26A8570F0;
  if (qword_28157E760 != -1)
  {
    swift_once();
  }

  v42 = OUTLINED_FUNCTION_2_17(&qword_281588978);
  *(v41 + 48) = 1;
  *(v41 + 56) = 3;
  sub_26A4E324C(v42, v43);
  sub_26A621A9C(v41);
  *(v0 + 1504) = v44;
  v45 = sub_26A851438();
  v47 = v46;
  sub_26A4DBD68(&unk_2803D2990, v0 + 1552, &qword_2803AA880, &unk_26A8567F0);
  v48 = sub_26A4DBD68(&unk_2803D2B20, v0 + 1632, &qword_2803AA880, &unk_26A8567F0);
  if (qword_28157E6B0 != -1)
  {
    v48 = swift_once();
  }

  *(v0 + 1512) = 0x4024000000000000;
  *(v0 + 1520) = v45;
  *(v0 + 1528) = v47;
  *(v0 + 1536) = 0u;
  v49 = OUTLINED_FUNCTION_4_16(v48, v0 + 1712);
  OUTLINED_FUNCTION_4_16(v49, v0 + 1792);
  v50 = swift_initStackObject();
  *(v50 + 16) = xmmword_26A8570F0;
  v51 = qword_281588968;
  *(v50 + 32) = qword_281588968;
  v52 = byte_281588970;
  *(v50 + 40) = byte_281588970;
  *(v50 + 48) = 1;
  *(v50 + 56) = 3;
  sub_26A4E324C(v51, v52);
  sub_26A621A9C(v50);
  *(v0 + 1872) = v53;
  v54 = sub_26A851438();
  v56 = v55;
  sub_26A4DBD68(&unk_2815888E8, v0 + 1920, &qword_2803AA880, &unk_26A8567F0);
  if (qword_2803A9018 != -1)
  {
    swift_once();
  }

  *(v0 + 1880) = 0x4024000000000000;
  *(v0 + 1888) = v54;
  *(v0 + 1896) = v56;
  *(v0 + 1904) = 0u;
  OUTLINED_FUNCTION_5_17(&unk_2803D2760, v0 + 2000);
  OUTLINED_FUNCTION_5_17(&unk_281588898, v0 + 2080);
  OUTLINED_FUNCTION_5_17(&unk_281588898, v0 + 2160);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B1D80, &qword_26A8593E0);
  sub_26A4DBCC8(&qword_28157D8B8, &qword_2803B1D80, &qword_26A8593E0, MEMORY[0x277D83B58]);
  v57 = sub_26A8516A8();
  sub_26A851438();
  OUTLINED_FUNCTION_5_17(&unk_2803D2990, &v59);
  OUTLINED_FUNCTION_5_17(&unk_2803D2B20, &v60);
  OUTLINED_FUNCTION_5_17(&unk_2815887F8, &v61);
  OUTLINED_FUNCTION_5_17(&unk_2815887F8, &v62);
  return sub_26A80E124(v57);
}

unint64_t sub_26A564C68()
{
  result = qword_2803AD648;
  if (!qword_2803AD648)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AD600, &qword_26A85E278);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AD580, &qword_26A85E238);
    sub_26A56411C();
    swift_getOpaqueTypeConformance2();
    sub_26A4DBCC8(qword_28157DD90, &qword_2803A91D8, &qword_26A8575D0, &unk_26A869CC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803AD648);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_1_18(uint64_t a1, uint64_t a2)
{

  return sub_26A4DBD68(v4, a2, v2, v3);
}

uint64_t OUTLINED_FUNCTION_2_17@<X0>(uint64_t *a1@<X8>)
{
  result = *a1;
  *(v1 + 32) = *a1;
  *(v1 + 40) = *(a1 + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_3_17(uint64_t a1, uint64_t a2)
{

  return sub_26A4DBD68(a1, a2, v2, v3);
}

uint64_t OUTLINED_FUNCTION_4_16(uint64_t a1, uint64_t a2)
{

  return sub_26A4DBD68(v2, a2, v3, v4);
}

uint64_t OUTLINED_FUNCTION_5_17(uint64_t a1, uint64_t a2)
{

  return sub_26A4DBD68(a1, a2, v2, v3);
}

BOOL sub_26A564E00()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AAD50, &unk_26A857890);
  *&v2 = MEMORY[0x28223BE20](v1 - 8).n128_u64[0];
  v4 = &v9 - v3;
  v5 = [v0 thumbnail];
  if (v5)
  {
    RFVisualProperty.asVisualProperty()();

    v6 = sub_26A84BD28();
    v7 = 0;
  }

  else
  {
    v6 = sub_26A84BD28();
    v7 = 1;
  }

  __swift_storeEnumTagSinglePayload(v4, v7, 1, v6);
  sub_26A565064(v4);
  return v5 != 0;
}

void sub_26A564ED8(uint64_t a1@<X8>)
{
  v3 = [v1 thumbnail];
  if (v3)
  {
    v4 = v3;
    v7[3] = sub_26A84BD28();
    v7[4] = &protocol witness table for VisualProperty;
    __swift_allocate_boxed_opaque_existential_1(v7);
    RFVisualProperty.asVisualProperty()();
    ReferenceLogoView.init(thumbnail:)(v7, a1);
  }

  else
  {
    sub_26A4E353C();
    swift_allocError();
    *v5 = v1;
    *(v5 + 8) = &unk_287B13438;
    *(v5 + 16) = 0;
    swift_willThrow();
    v6 = v1;
  }
}

unint64_t sub_26A56500C()
{
  result = qword_2803AD650;
  if (!qword_2803AD650)
  {
    type metadata accessor for ReferenceLogoView(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803AD650);
  }

  return result;
}

uint64_t sub_26A565064(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AAD50, &unk_26A857890);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_26A5650CC@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  sub_26A4D7E54();
  *(a3 + 264) = a1;
  *(a3 + 272) = a2;
}

uint64_t sub_26A565134@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t *a3@<X4>, uint64_t *a4@<X5>, uint64_t a5@<X8>)
{
  sub_26A4D7E54();
  v10 = a5 + *(__swift_instantiateConcreteTypeFromMangledNameV2(a3, a4) + 36);
  *v10 = a1;
  *(v10 + 8) = a2;
}

uint64_t sub_26A5651B0@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  sub_26A4D7E54();
  *(a3 + 176) = a1;
  *(a3 + 184) = a2;
}

uint64_t ComponentStack.init(content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = swift_getKeyPath();
  *(a3 + 8) = 0;
  *(a3 + 16) = swift_getKeyPath();
  *(a3 + 24) = 0;
  result = sub_26A565D4C(0);
  *(a3 + 32) = result & 1;
  *(a3 + 40) = v7;
  *(a3 + 48) = a1;
  *(a3 + 56) = a2;
  return result;
}

uint64_t sub_26A565288(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    return *(a1 + 8 * v1 + 24);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_26A5652AC(uint64_t a1)
{
  if (*(a1 + 16))
  {
  }

  return OUTLINED_FUNCTION_211();
}

uint64_t sub_26A5652F0(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 0;
  }

  if (result >= a2)
  {
    __break(1u);
    return result;
  }

  return a2 - 1;
}

uint64_t sub_26A565334@<X0>(uint64_t a1@<X8>)
{
  sub_26A8507A8();
  OUTLINED_FUNCTION_14_7();
  sub_26A56D48C();
  if (sub_26A851DB8())
  {
    sub_26A850798();
    v2 = OUTLINED_FUNCTION_24_2();

    return __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
  }

  else
  {
    sub_26A851DD8();
    OUTLINED_FUNCTION_14_7();
    sub_26A56D48C();
    sub_26A851708();
    v7 = sub_26A851E18();
    v9 = v8;
    v10 = sub_26A850798();
    OUTLINED_FUNCTION_46();
    (*(v11 + 16))(a1, v9, v10);
    v7(v12, 0);
    return __swift_storeEnumTagSinglePayload(a1, 0, 1, v10);
  }
}

uint64_t sub_26A5654C4@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v4 = *(a1 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = a2(0);
    OUTLINED_FUNCTION_46();
    (*(v8 + 16))(a3, a1 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v6, v7);
    v9 = a3;
    v10 = 0;
    v11 = 1;
    v12 = v7;
  }

  else
  {
    a2(0);
    v9 = OUTLINED_FUNCTION_24_2();
  }

  return __swift_storeEnumTagSinglePayload(v9, v10, v11, v12);
}

uint64_t sub_26A565580@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2 = *(result + 16);
  if (v2)
  {
    v3 = (result + 56 * v2);
    v2 = *(v3 - 3);
    v4 = *(v3 - 16);
    v5 = *(v3 - 1);
    v6 = *v3;
    v7 = *(v3 + 8);
    v8 = *(v3 + 3);
  }

  else
  {
    v5 = 0;
    v6 = 0;
    v8 = 0;
    v7 = 0uLL;
    v4 = 3;
  }

  *a2 = v2;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5;
  *(a2 + 24) = v6;
  *(a2 + 32) = v7;
  *(a2 + 48) = v8;
  return result;
}

uint64_t sub_26A5655D4@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v6 = v5;
  sub_26A851048();
  v15 = __dst[0];
  v16 = __dst[1];
  KeyPath = swift_getKeyPath();
  v18 = 0;
  swift_unknownObjectWeakInit();
  v19 = swift_getKeyPath();
  v20 = 0;
  v21 = 0;
  v22 = swift_getKeyPath();
  v23 = 0;
  v24 = 0;
  v25 = swift_getKeyPath();
  v26 = 0;
  v27 = swift_getKeyPath();
  v28 = 0;
  memcpy(__dst, v6, 0x61uLL);
  v29 = swift_getKeyPath();
  v30 = a3;
  v31 = a4;
  v32 = swift_getKeyPath();
  v33 = a1;
  v12 = swift_getKeyPath();
  sub_26A4D7E54();

  sub_26A5650CC(v12, a2, a5);

  return sub_26A4D6FD8();
}

uint64_t sub_26A565768@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v21 = a2;
  v20 = a5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AD918, &qword_26A85F340);
  v9 = v8 - 8;
  MEMORY[0x28223BE20](v8);
  v11 = &v20 - v10;
  v12 = &v20 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AD920, &qword_26A85F348) + 36) - v10;
  v22 = 0;
  sub_26A851048();
  v13 = v24;
  *v12 = v23;
  *(v12 + 1) = v13;
  *(v12 + 2) = swift_getKeyPath();
  v12[25] = 0;
  swift_unknownObjectWeakInit();
  *(v12 + 5) = swift_getKeyPath();
  *(v12 + 6) = 0;
  v12[56] = 0;
  *(v12 + 8) = swift_getKeyPath();
  *(v12 + 9) = 0;
  v12[80] = 0;
  *(v12 + 11) = swift_getKeyPath();
  v12[96] = 0;
  *(v12 + 13) = swift_getKeyPath();
  v12[112] = 0;
  sub_26A4D7E54();
  KeyPath = swift_getKeyPath();
  v15 = &v11[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AD928, &qword_26A85F350) + 36)];
  *v15 = KeyPath;
  v15[1] = a3;
  v15[2] = a4;
  v16 = swift_getKeyPath();
  v17 = &v11[*(v9 + 44)];
  *v17 = v16;
  v17[1] = a1;
  v18 = swift_getKeyPath();

  sub_26A565134(v18, v21, &qword_2803AD840, &qword_26A85F0E0, v20);

  return sub_26A4D6FD8();
}

uint64_t sub_26A56599C@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v21 = a2;
  v20 = a5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AD8D0, &qword_26A85F240);
  v9 = v8 - 8;
  MEMORY[0x28223BE20](v8);
  v11 = &v20 - v10;
  v12 = &v20 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AD8D8, &qword_26A85F248) + 36) - v10;
  v22 = 0;
  sub_26A851048();
  v13 = v24;
  *v12 = v23;
  *(v12 + 1) = v13;
  *(v12 + 2) = swift_getKeyPath();
  v12[25] = 0;
  swift_unknownObjectWeakInit();
  *(v12 + 5) = swift_getKeyPath();
  *(v12 + 6) = 0;
  v12[56] = 0;
  *(v12 + 8) = swift_getKeyPath();
  *(v12 + 9) = 0;
  v12[80] = 0;
  *(v12 + 11) = swift_getKeyPath();
  v12[96] = 0;
  *(v12 + 13) = swift_getKeyPath();
  v12[112] = 0;
  sub_26A4D7E54();
  KeyPath = swift_getKeyPath();
  v15 = &v11[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AD8E0, &qword_26A85F318) + 36)];
  *v15 = KeyPath;
  v15[1] = a3;
  v15[2] = a4;
  v16 = swift_getKeyPath();
  v17 = &v11[*(v9 + 44)];
  *v17 = v16;
  v17[1] = a1;
  v18 = swift_getKeyPath();

  sub_26A565134(v18, v21, &qword_2803AD8B0, &qword_26A85F198, v20);

  return sub_26A4D6FD8();
}

uint64_t sub_26A565BD0@<X0>(char a2@<W1>, void *a5@<X4>, uint64_t a7@<X8>)
{
  sub_26A851048();
  swift_getKeyPath();
  swift_unknownObjectWeakInit();
  swift_getKeyPath();
  swift_getKeyPath();
  swift_getKeyPath();
  swift_getKeyPath();
  swift_getKeyPath();
  swift_getKeyPath();
  KeyPath = swift_getKeyPath();

  v10 = a5;
  sub_26A5651B0(KeyPath, a2, a7);

  return sub_26A4D6FD8();
}

uint64_t sub_26A565D88()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AC190, &qword_26A85A9E0);
  sub_26A851058();
  return v1;
}

uint64_t sub_26A565DE0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AC190, &qword_26A85A9E0);
  sub_26A851078();
  return v1;
}

void ComponentStack.body.getter()
{
  OUTLINED_FUNCTION_28_0();
  v2 = v1;
  v108 = v3;
  v4 = type metadata accessor for RFButtonStyle(0);
  MEMORY[0x28223BE20](v4);
  v107 = &v75 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v110 = v2;
  v6 = *(v2 + 16);
  v7 = *(v2 + 24);
  v8 = OUTLINED_FUNCTION_39_2();
  v101 = v6;
  v94 = v7;
  v11 = type metadata accessor for ComponentStack.SeparatorAddingLayout(v8, v9, v7, v10);
  OUTLINED_FUNCTION_5_18();
  WitnessTable = swift_getWitnessTable();
  v98 = v11;
  v12 = sub_26A84F1A8();
  OUTLINED_FUNCTION_15();
  v106 = v13;
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_82();
  v103 = v15;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_2803B31B0, &unk_26A858ED0);
  v99 = v12;
  v16 = sub_26A84F4F8();
  OUTLINED_FUNCTION_15();
  v105 = v17;
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_82();
  v102 = v19;
  OUTLINED_FUNCTION_4_17();
  v133 = swift_getWitnessTable();
  v134 = v7;
  OUTLINED_FUNCTION_3_18();
  v20 = swift_getWitnessTable();
  v97 = v20;
  OUTLINED_FUNCTION_3_11();
  v88 = sub_26A4D7DCC();
  v131 = v20;
  v132 = v88;
  OUTLINED_FUNCTION_58();
  v109 = v21;
  v22 = swift_getWitnessTable();
  OUTLINED_FUNCTION_1_19();
  v23 = sub_26A56D48C();
  *&v117 = v16;
  *(&v117 + 1) = v4;
  v90 = v16;
  v91 = v23;
  v92 = v22;
  v93 = v4;
  *&v118 = v22;
  *(&v118 + 1) = v23;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  OUTLINED_FUNCTION_15();
  v96 = v25;
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_82();
  v89 = v27;
  *&v117 = v16;
  *(&v117 + 1) = v4;
  *&v118 = v22;
  *(&v118 + 1) = v23;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  *&v117 = OpaqueTypeMetadata2;
  *(&v117 + 1) = OpaqueTypeConformance2;
  v84 = OpaqueTypeMetadata2;
  v85 = OpaqueTypeConformance2;
  v29 = OpaqueTypeConformance2;
  v30 = swift_getOpaqueTypeMetadata2();
  OUTLINED_FUNCTION_15();
  v100 = v31;
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_82();
  v87 = v33;
  v82 = v30;
  v34 = sub_26A84F4F8();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AD658, &qword_26A879950);
  OUTLINED_FUNCTION_39_2();
  v35 = sub_26A84F4F8();
  *&v117 = OpaqueTypeMetadata2;
  *(&v117 + 1) = v29;
  v95 = swift_getOpaqueTypeConformance2();
  v129 = v95;
  v130 = v88;
  OUTLINED_FUNCTION_38_2();
  v36 = swift_getWitnessTable();
  OUTLINED_FUNCTION_17_5();
  v37 = sub_26A4D7DCC();
  v127 = v36;
  v128 = v37;
  v81 = v36;
  v38 = swift_getWitnessTable();
  *&v117 = v35;
  *(&v117 + 1) = v34;
  *&v118 = v38;
  *(&v118 + 1) = v36;
  v79 = type metadata accessor for RequestHostBackgroundModifier(255, &v117);
  OUTLINED_FUNCTION_39_2();
  v80 = sub_26A84F4F8();
  v86 = sub_26A84FE08();
  OUTLINED_FUNCTION_15();
  v88 = v39;
  MEMORY[0x28223BE20](v40);
  v78 = &v75 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v42);
  v83 = &v75 - v43;
  v44 = v0[1];
  v135 = *v0;
  v136 = v44;
  v46 = *v0;
  v45 = v0[1];
  v137 = v0[2];
  v47 = *(v0 + 7);
  v76 = *(v0 + 6);
  v77 = v47;
  v122 = v46;
  v123 = v45;
  v124 = v0[2];
  v125 = v76;
  v126 = v47;
  v48 = sub_26A565DE0();
  v75 = v49;
  LOBYTE(v29) = v50;
  v51 = v101;
  v52 = v94;
  v53 = sub_26A566644();
  LOBYTE(v34) = v54;
  v55 = sub_26A566668();
  LOBYTE(v16) = v56;
  v57 = sub_26A56668C();
  sub_26A5666B0(v53, v34 & 1, v55, v16 & 1, v57, v58 & 1, v48, v75, &v117, v29 & 1, 0, 1, v51, v52);
  v59 = v103;
  v60 = v76;
  sub_26A84F1B8();
  swift_getKeyPath();
  LOBYTE(v117) = 1;
  v61 = v99;
  sub_26A8509A8();

  (*(v106 + 8))(v59, v61);
  static PrimitiveButtonStyle<>.rfButton.getter(v107);
  v62 = v89;
  sub_26A850978();
  sub_26A56C018();
  v63 = OUTLINED_FUNCTION_38_2();
  v64(v63);
  v65 = v87;
  v66 = v84;
  sub_26A850AF8();
  (*(v96 + 8))(v62, v66);
  v117 = v135;
  v118 = v136;
  v119 = v137;
  v120 = v60;
  v121 = v77;
  sub_26A565D88();
  v111 = v51;
  v112 = v52;
  OUTLINED_FUNCTION_11_10();
  v67 = swift_getWitnessTable();
  v115 = v81;
  v116 = v67;
  v68 = swift_getWitnessTable();
  v69 = v82;
  v70 = v95;
  View.if<A>(_:transform:)();
  (*(v100 + 8))(v65, v69);
  v113 = v68;
  v114 = v70;
  OUTLINED_FUNCTION_6_14();
  v71 = v86;
  swift_getWitnessTable();
  v72 = v83;
  OUTLINED_FUNCTION_38_2();
  sub_26A80757C();
  v73 = *(v88 + 8);
  v74 = OUTLINED_FUNCTION_38_2();
  v73(v74);
  sub_26A80757C();
  (v73)(v72, v71);
  OUTLINED_FUNCTION_27_0();
}

uint64_t sub_26A5666B0@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, char a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14)
{
  *a9 = a1;
  *(a9 + 8) = a2 & 1;
  *(a9 + 16) = swift_getKeyPath();
  *(a9 + 24) = 0;
  *(a9 + 32) = swift_getKeyPath();
  *(a9 + 40) = 0;
  *(a9 + 48) = swift_getKeyPath();
  *(a9 + 56) = 0;
  if (qword_28157E660 != -1)
  {
    swift_once();
  }

  v19 = unk_281588768;
  v35 = xmmword_281588758;
  v36 = unk_281588768;
  v20 = xmmword_281588778;
  v21 = xmmword_281588788;
  v37 = xmmword_281588778;
  v38 = xmmword_281588788;
  *(a9 + 288) = xmmword_281588758;
  *(a9 + 304) = v19;
  *(a9 + 320) = v20;
  *(a9 + 336) = v21;
  v29 = v38;
  v30 = v37;
  sub_26A4D7E54();
  sub_26A6AEE74(__src);
  memcpy((a9 + 64), __src, 0xBFuLL);
  *(a9 + 256) = v30;
  *(a9 + 272) = v29;
  if (qword_2803A8D08 != -1)
  {
    swift_once();
  }

  v22 = *(&xmmword_2803D2028 + 1);
  v23 = qword_2803D2038;
  v24 = unk_2803D2040;
  v25 = qword_2803D2048;
  *(a9 + 552) = xmmword_2803D2028;
  *(a9 + 560) = v22;
  *(a9 + 568) = v23;
  *(a9 + 576) = v24;
  *(a9 + 584) = v25;

  sub_26A6AEE74(v34);
  memcpy((a9 + 352), v34, 0xBFuLL);
  *(a9 + 544) = v25;
  *(a9 + 592) = swift_getKeyPath();
  *(a9 + 600) = 0;
  *(a9 + 608) = a3;
  *(a9 + 616) = a4 & 1;
  *(a9 + 624) = a5;
  *(a9 + 632) = a6 & 1;
  *(a9 + 640) = a7;
  *(a9 + 648) = a8;
  *(a9 + 656) = a10 & 1;
  result = sub_26A567338(a11, a12 & 1);
  *(a9 + 664) = result;
  *(a9 + 672) = v27 & 1;
  *(a9 + 680) = v28;
  return result;
}

uint64_t sub_26A5668F8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_26A5D765C();
  *a1 = result & 1;
  return result;
}

uint64_t sub_26A566950@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, uint64_t a5@<X3>)
{
  v23 = a1;
  v24 = a4;
  type metadata accessor for ComponentStack.SeparatorAddingLayout(255, a2, a3, a5);
  swift_getWitnessTable();
  sub_26A84F1A8();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_2803B31B0, &unk_26A858ED0);
  sub_26A84F4F8();
  type metadata accessor for RFButtonStyle(255);
  WitnessTable = swift_getWitnessTable();
  v35 = a3;
  v7 = swift_getWitnessTable();
  v22 = sub_26A4D7DCC();
  v32 = v7;
  v33 = v22;
  v21[1] = MEMORY[0x277CDFAD8];
  v8 = swift_getWitnessTable();
  v9 = sub_26A56D48C();
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v30 = v8;
  v31 = v9;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v28 = OpaqueTypeMetadata2;
  v29 = OpaqueTypeConformance2;
  swift_getOpaqueTypeMetadata2();
  v12 = sub_26A84F4F8();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = v21 - v14;
  swift_getKeyPath();
  v27 = 1;
  v28 = OpaqueTypeMetadata2;
  v29 = OpaqueTypeConformance2;
  v16 = swift_getOpaqueTypeConformance2();
  sub_26A8509A8();

  v28 = sub_26A850DF8();
  v17 = swift_allocObject();
  *(v17 + 16) = a2;
  *(v17 + 24) = a3;
  v18 = swift_allocObject();
  *(v18 + 16) = a2;
  *(v18 + 24) = a3;
  v25 = v16;
  v26 = v22;
  v19 = swift_getWitnessTable();
  View.requestHostBackground<A, B>(_:accepted:denied:)(sub_26A56D4D0, v17, sub_26A56D300, v18, v12, v12, v12, v24, v19, v19, v19);

  sub_26A550014(v28);
  return (*(v13 + 8))(v15, v12);
}

uint64_t sub_26A566D24@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, uint64_t a5@<X3>)
{
  type metadata accessor for ComponentStack.SeparatorAddingLayout(255, a2, a3, a5);
  OUTLINED_FUNCTION_5_18();
  swift_getWitnessTable();
  sub_26A84F1A8();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_2803B31B0, &unk_26A858ED0);
  sub_26A84F4F8();
  type metadata accessor for RFButtonStyle(255);
  OUTLINED_FUNCTION_4_17();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_3_18();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_3_11();
  sub_26A4D7DCC();
  OUTLINED_FUNCTION_58();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_1_19();
  sub_26A56D48C();
  OUTLINED_FUNCTION_12_7();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  sub_26A84F4F8();
  OUTLINED_FUNCTION_46();
  return (*(v7 + 16))(a4, a1);
}

uint64_t sub_26A566F04()
{
  v1 = sub_26A84F988();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  if ((*(v0 + 8) & 1) == 0)
  {

    sub_26A851EA8();
    v6 = sub_26A8501F8();
    sub_26A84EA78();

    sub_26A84F978();
    swift_getAtKeyPath();
    sub_26A49035C(v5, 0);
    (*(v2 + 8))(v4, v1);
    return v8[1];
  }

  return v5;
}

uint64_t sub_26A567048()
{
  v1 = sub_26A84F988();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v8[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = *(v0 + 608);
  if (*(v0 + 616) != 1)
  {

    sub_26A851EA8();
    v6 = sub_26A8501F8();
    sub_26A84EA78();

    sub_26A84F978();
    swift_getAtKeyPath();
    sub_26A49035C(v5, 0);
    (*(v2 + 8))(v4, v1);
    LOBYTE(v5) = v8[15];
  }

  return v5 & 1;
}

uint64_t sub_26A567190()
{
  v1 = sub_26A84F988();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v8[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = *(v0 + 624);
  if (*(v0 + 632) != 1)
  {

    sub_26A851EA8();
    v6 = sub_26A8501F8();
    sub_26A84EA78();

    sub_26A84F978();
    swift_getAtKeyPath();
    sub_26A49035C(v5, 0);
    (*(v2 + 8))(v4, v1);
    LOBYTE(v5) = v8[15];
  }

  return v5 & 1;
}

uint64_t sub_26A567338(uint64_t a1, char a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB3B8, &qword_26A858510);
  sub_26A851048();
  return v3;
}

uint64_t sub_26A567390()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AD8C8, &unk_26A86D5A0);
  sub_26A851058();
  return v1;
}

uint64_t sub_26A567460@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v67 = a3;
  v68 = a1;
  v5 = sub_26A84F988();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v60 = &v57 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = sub_26A84FF08();
  v63 = *(v70 - 8);
  MEMORY[0x28223BE20](v70);
  v69 = &v57 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v57 - v10;
  v12 = sub_26A84FF28();
  v62 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v14 = &v57 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AD7E8, &qword_26A85F088);
  MEMORY[0x28223BE20](v61);
  v16 = &v57 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v57 - v18;
  memcpy(v75, v3, 0x2B0uLL);
  memcpy(v74, v3, sizeof(v74));
  v20 = sub_26A566F04();
  v21 = sub_26A61B05C(v20, &unk_287B133E0);
  v65 = v5;
  v66 = a2;
  v64 = v6;
  if (!v21)
  {
    v59 = v16;
    (*(v62 + 16))(v14, v68, v12);
    sub_26A56D48C();
    v58 = v14;
    sub_26A851998();
    v22 = *(v61 + 36);
    sub_26A56D48C();
    v23 = (v63 + 16);
    v24 = (v63 + 8);
    while (1)
    {
      sub_26A851DD8();
      if (*&v19[v22] == v74[0])
      {
        break;
      }

      v25 = sub_26A851E18();
      v26 = v70;
      (*v23)(v11);
      (v25)(v74, 0);
      sub_26A851DE8();
      LOBYTE(v25) = sub_26A630D34();
      (*v24)(v11, v26);
      if ((v25 & 1) == 0)
      {
        sub_26A4D6FD8();
        v5 = v65;
        a2 = v66;
        v6 = v64;
        v14 = v58;
        v16 = v59;
        goto LABEL_12;
      }
    }

    sub_26A4D6FD8();
    memcpy(v74, v75, sizeof(v74));
    a2 = v66;
    if (sub_26A567048())
    {
      v27 = 1;
      LODWORD(v70) = 1;
LABEL_17:
      v6 = v64;
      v5 = v65;
      goto LABEL_22;
    }

    v76 = v75[3];
    v28 = v75[2];
    v75[86] = v75[2];
    v6 = v64;
    v5 = v65;
    if ((v75[3] & 1) == 0)
    {

      sub_26A851EA8();
      v29 = sub_26A8501F8();
      sub_26A84EA78();

      v30 = v60;
      sub_26A84F978();
      swift_getAtKeyPath();
      sub_26A4D6FD8();
      (*(v6 + 8))(v30, v5);
      v28 = v71[0];
    }

    v14 = v58;
    v16 = v59;
    if (v28 == 2)
    {
      v27 = 1;
      LODWORD(v70) = 1;
      goto LABEL_22;
    }
  }

LABEL_12:
  memcpy(v74, v75, sizeof(v74));
  v31 = sub_26A566F04();
  if (sub_26A61B05C(v31, &unk_287B13068))
  {
    (*(v62 + 16))(v14, v68, v12);
    sub_26A56D48C();
    sub_26A851998();
    v32 = *(v61 + 36);
    sub_26A56D48C();
    v33 = (v63 + 16);
    v34 = (v63 + 8);
    v36 = v69;
    v35 = v70;
    while (1)
    {
      sub_26A851DD8();
      if (*&v16[v32] == v71[0])
      {
        break;
      }

      v37 = sub_26A851E18();
      (*v33)(v36);
      (v37)(v71, 0);
      sub_26A851DE8();
      LOBYTE(v37) = sub_26A630D34();
      (*v34)(v36, v35);
      if (v37)
      {
        sub_26A4D6FD8();
        LODWORD(v70) = 0;
        v27 = 1;
        a2 = v66;
        goto LABEL_17;
      }
    }

    sub_26A4D6FD8();
    v5 = v65;
    a2 = v66;
    v6 = v64;
  }

  v78 = v75[7];
  v27 = v75[6];
  v77 = v75[6];
  if (LOBYTE(v75[7]) != 1)
  {

    sub_26A851EA8();
    v38 = sub_26A8501F8();
    sub_26A84EA78();

    v39 = v60;
    sub_26A84F978();
    swift_getAtKeyPath();
    sub_26A4D6FD8();
    (*(v6 + 8))(v39, v5);
    v27 = v74[0];
  }

  LODWORD(v70) = 0;
LABEL_22:
  memcpy(v74, v75, sizeof(v74));
  v40 = sub_26A566F04();
  v41 = v75[2];
  v79 = v75[2];
  v80 = v75[3];
  if (LOBYTE(v75[3]) == 1)
  {
    v73 = v75[2];
  }

  else
  {

    sub_26A851EA8();
    v42 = sub_26A8501F8();
    sub_26A84EA78();

    v43 = v60;
    sub_26A84F978();
    swift_getAtKeyPath();
    sub_26A4D6FD8();
    (*(v6 + 8))(v43, v5);
    v41 = v73;
  }

  memcpy(v71, v75, sizeof(v71));
  v44 = sub_26A567190();
  v45 = a2;
  if (qword_2803A8CE0 != -1)
  {
    swift_once();
  }

  v46 = xmmword_2803D1FA8;
  v47 = qword_2803D1FB8;
  v48 = unk_2803D1FC0;
  v49 = qword_2803D1FC8;

  sub_26A6AEE74(v72);
  v72[24] = v49;
  *&v72[25] = v46;
  v72[27] = v47;
  v72[28] = v48;
  v72[29] = v49;
  v50 = v67;
  memcpy(v67, v72, 0xF0uLL);
  v50[30] = v40;
  v50[31] = v41;
  *(v50 + 256) = v44 & 1;
  v51 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AD808, &qword_26A85F0A0) + 44);
  sub_26A4D7E54();
  v52 = *(v45 + 16);
  v53 = *(v45 + 24);
  sub_26A567EDC(v68, v75, v27 & 1, v52, v53, v50 + v51);
  sub_26A4D6FD8();
  v54 = swift_allocObject();
  *(v54 + 16) = v52;
  *(v54 + 24) = v53;
  memcpy((v54 + 32), v75, 0x2B0uLL);
  *(v54 + 720) = v70;
  v55 = (v50 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AD818, &unk_26A85F0B0) + 36));
  *v55 = sub_26A56B62C;
  v55[1] = v54;
  v55[2] = 0;
  v55[3] = 0;
  return (*(*(v45 - 8) + 16))(v71, v75, v45);
}

uint64_t sub_26A567EDC@<X0>(uint64_t a1@<X0>, const void *a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v102 = a5;
  v100 = a3;
  v97 = a6;
  v9 = sub_26A84FF28();
  v91 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v88 = v10;
  v90 = &v80 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AD820, &qword_26A85F0C0);
  v95 = *(v11 - 8);
  v96 = v11;
  MEMORY[0x28223BE20](v11);
  v94 = &v80 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v93 = &v80 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AD828, &qword_26A85F0C8);
  MEMORY[0x28223BE20](v15 - 8);
  v86 = (&v80 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v17);
  v82 = &v80 - v18;
  MEMORY[0x28223BE20](v19);
  v21 = &v80 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AD830, &qword_26A85F0D0);
  v23 = v22 - 8;
  MEMORY[0x28223BE20](v22);
  v25 = &v80 - v24;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AD838, &qword_26A85F0D8);
  MEMORY[0x28223BE20](v81);
  v98 = &v80 - v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AD840, &qword_26A85F0E0);
  MEMORY[0x28223BE20](v27 - 8);
  v85 = &v80 - v28;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AD848, &qword_26A85F0E8);
  MEMORY[0x28223BE20](v84);
  v89 = &v80 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v83 = &v80 - v31;
  MEMORY[0x28223BE20](v32);
  v101 = &v80 - v33;
  sub_26A56D48C();
  sub_26A851DF8();
  v92 = a2;
  memcpy(v104, a2, 0x2B0uLL);
  v99 = a4;
  v87 = type metadata accessor for ComponentStack.SeparatorAddingLayout(0, a4, v102, v34);
  sub_26A5689A8(0, v35, a1, v100);
  v36 = &v25[*(v23 + 44)];
  *v36 = v37;
  *(v36 + 1) = v38;
  v36[16] = v39 & 1;
  KeyPath = swift_getKeyPath();
  v104[0] = 1;
  v41 = v9;
  v42 = a1;
  sub_26A551EA4(v21);
  v43 = sub_26A84FF08();
  if (__swift_getEnumTagSinglePayload(v21, 1, v43) == 1)
  {
    sub_26A4D6FD8();
    v44 = 74;
  }

  else
  {
    sub_26A56BEB0();
    sub_26A84FF18();
    v44 = v104[0];
    (*(*(v43 - 8) + 8))(v21, v43);
  }

  v45 = v98;
  sub_26A4D7EA8();
  v46 = &v45[*(v81 + 36)];
  *v46 = KeyPath;
  v46[8] = v44;
  v104[0] = 0;
  v47 = v82;
  v48 = v41;
  v49 = v42;
  sub_26A551EA4(v82);
  if (__swift_getEnumTagSinglePayload(v47, 1, v43) == 1)
  {
    sub_26A4D6FD8();
    v50 = 74;
  }

  else
  {
    sub_26A56BEB0();
    sub_26A84FF18();
    v50 = LOBYTE(v104[0]);
    (*(*(v43 - 8) + 8))(v47, v43);
  }

  v51 = v86;
  v104[0] = 0;
  sub_26A551EA4(v86);
  if (__swift_getEnumTagSinglePayload(v51, 1, v43) == 1)
  {
    sub_26A4D6FD8();
    v52 = 0;
    v53 = 0;
  }

  else
  {
    sub_26A56BE5C();
    sub_26A84FF18();
    v52 = v104[0];
    v53 = v104[1];
    (*(*(v43 - 8) + 8))(v51, v43);
  }

  sub_26A565768(0, v50, v52, v53, v85);

  sub_26A4D6FD8();
  v54 = swift_allocObject();
  v55 = v102;
  v54[2] = v99;
  v54[3] = v55;
  v56 = v92;
  memcpy(v54 + 4, v92, 0x2B0uLL);
  v57 = v83;
  sub_26A4D7EA8();
  v58 = &v57[*(v84 + 36)];
  *v58 = sub_26A56B63C;
  *(v58 + 1) = v54;
  sub_26A4D7EA8();
  memcpy(v104, v56, 0x2B0uLL);
  v59 = v87;
  v86 = *(*(v87 - 8) + 16);
  (v86)(v103, v56, v87);
  v60 = sub_26A56924C(v49, v59);
  sub_26A56BA4C(v60);
  v62 = v61;

  v103[0] = v62;
  v98 = swift_getKeyPath();
  v64 = v90;
  v63 = v91;
  (*(v91 + 16))(v90, v49, v48);
  v65 = (*(v63 + 80) + 720) & ~*(v63 + 80);
  v66 = v48;
  v67 = v65 + v88;
  v68 = swift_allocObject();
  v69 = v102;
  *(v68 + 2) = v99;
  *(v68 + 3) = v69;
  memcpy(v68 + 32, v56, 0x2B0uLL);
  (*(v63 + 32))(&v68[v65], v64, v66);
  v68[v67] = v100 & 1;
  v70 = swift_allocObject();
  *(v70 + 16) = sub_26A56BD8C;
  *(v70 + 24) = v68;
  (v86)(v104, v56, v59);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AD850, &qword_26A85F158);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AD858, &qword_26A85F160);
  sub_26A4D7DCC();
  sub_26A4D7DCC();
  v71 = v93;
  sub_26A8512F8();
  sub_26A4D7E54();
  v73 = v94;
  v72 = v95;
  v74 = *(v95 + 16);
  v75 = v96;
  v74(v94, v71, v96);
  v76 = v97;
  sub_26A4D7E54();
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AD870, &qword_26A85F168);
  v74((v76 + *(v77 + 48)), v73, v75);
  v78 = *(v72 + 8);
  v78(v71, v75);
  sub_26A4D6FD8();
  v78(v73, v75);
  return sub_26A4D6FD8();
}

void sub_26A5689A8(uint64_t a1, __n128 a2, uint64_t a3, int a4)
{
  v45 = a4;
  v6 = sub_26A84FF08();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_26A84F988();
  v43 = *(v10 - 8);
  v44 = v10;
  MEMORY[0x28223BE20](v10);
  v42 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AD828, &qword_26A85F0C8);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v36 - v16;
  if (__OFSUB__(a1, 1))
  {
    __break(1u);
LABEL_34:
    __break(1u);
    return;
  }

  v47 = *(v4 + 16);
  v46 = *(v4 + 24);
  v39 = *(v4 + 32);
  v38 = *(v4 + 40);
  v37 = *(v4 + 41);
  v54 = a1 - 1;
  sub_26A84FF28();
  sub_26A56D48C();
  sub_26A551EA4(v17);
  if (__swift_getEnumTagSinglePayload(v17, 1, v6) == 1)
  {
    sub_26A4D6FD8();
    v18 = 74;
  }

  else
  {
    sub_26A56BEB0();
    sub_26A84FF18();
    v18 = v54;
    (*(v7 + 8))(v17, v6);
  }

  if (__OFADD__(a1, 1))
  {
    goto LABEL_34;
  }

  v41 = v18;
  v54 = a1 + 1;
  sub_26A551EA4(v14);
  if (__swift_getEnumTagSinglePayload(v14, 1, v6) == 1)
  {
    sub_26A4D6FD8();
    v40 = 74;
  }

  else
  {
    sub_26A56BEB0();
    sub_26A84FF18();
    v40 = v54;
    (*(v7 + 8))(v14, v6);
  }

  v19 = v47;
  if ((v46 & 1) == 0)
  {
    v20 = v47;

    sub_26A851EA8();
    v21 = sub_26A8501F8();
    sub_26A84EA78();

    v22 = v42;
    sub_26A84F978();
    swift_getAtKeyPath();
    sub_26A49035C(v20, 0);
    (*(v43 + 8))(v22, v44);
    v19 = v54;
  }

  sub_26A84FF38();
  sub_26A56C06C();
  sub_26A84FF18();
  v23 = v56;
  if (v56 == 2)
  {
    sub_26A56C0C0();
    sub_26A84FF18();
    v24 = v52;
    if (v52)
    {
      v25 = v53;
      v50[0] = v41;
      v50[1] = v40;
      v51 = v19;
      v52(&v48, v50);
      sub_26A4C24DC(v24, v25);
      (*(v7 + 8))(v9, v6);
      v23 = v49;
      goto LABEL_17;
    }

    v23 = byte_2803B3190;
  }

  (*(v7 + 8))(v9, v6);
LABEL_17:
  v26 = v45;
  if ((v45 & 1) == 0 || (sub_26A851D88(), sub_26A851DD8(), sub_26A851DC8() != 1))
  {
    sub_26A56D48C();
    sub_26A851D78();
    v27 = sub_26A5652F0(v54, v55);
    if ((v28 & 1) != 0 || ((v27 == a1) & v23) == 0)
    {
      sub_26A851D78();
      return;
    }

    if ((v26 & 1) == 0)
    {
      if (v37)
      {
        v29 = v39;
        v54 = v39;
        LOBYTE(v55) = v38 & 1;
        if ((v38 & 1) == 0)
        {
          return;
        }
      }

      else
      {
        v30 = v39;

        sub_26A851EA8();
        v31 = sub_26A8501F8();
        sub_26A84EA78();

        v32 = v42;
        sub_26A84F978();
        swift_getAtKeyPath();
        sub_26A4F5724(v30, v38, 0);
        (*(v43 + 8))(v32, v44);
        v29 = v54;
        if (v55 != 1)
        {
          return;
        }
      }

      v33 = v47;
      if (v29)
      {
        if ((v46 & 1) == 0)
        {

          sub_26A851EA8();
          v34 = sub_26A8501F8();
          sub_26A84EA78();

          v35 = v42;
          sub_26A84F978();
          swift_getAtKeyPath();
          sub_26A49035C(v33, 0);
          (*(v43 + 8))(v35, v44);
        }
      }
    }
  }
}

_BYTE *sub_26A569158(_BYTE *result, const void *a2, uint64_t a3, uint64_t a4)
{
  if (*result == 1)
  {
    v14 = v4;
    v15 = v5;
    memcpy(v12, a2, sizeof(v12));
    v10 = type metadata accessor for ComponentStack.SeparatorAddingLayout(0, a3, a4, v9);
    v11 = *(v10 - 8);
    (*(v11 + 16))(__dst, a2, v10);
    sub_26A5673F4(0, 0);
    memcpy(__dst, v12, sizeof(__dst));
    return (*(v11 + 8))(__dst, v10);
  }

  return result;
}

uint64_t sub_26A56924C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v17 = a2;
  v5 = sub_26A84FF28();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AD8F0, &qword_26A85F328);
  MEMORY[0x28223BE20](v9);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AD8F8, &qword_26A85F330);
  MEMORY[0x28223BE20](v10);
  memcpy(v21, v3, 0x2B0uLL);
  (*(v6 + 16))(v8, a1, v5);
  sub_26A56D48C();
  sub_26A851E08();
  sub_26A56D48C();
  sub_26A4D7DCC();
  sub_26A8525F8();
  sub_26A4D6FD8();
  v19[1] = *(v17 + 16);
  v20 = v21;
  v18[2] = sub_26A56BFEC;
  v18[3] = v19;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AD890, &qword_26A85F178);
  v12 = sub_26A4D7DCC();
  v14 = sub_26A56A99C(sub_26A56BFF8, v18, v10, v11, MEMORY[0x277D84A98], v12, MEMORY[0x277D84AC0], v13);
  sub_26A4D6FD8();
  return v14;
}

uint64_t sub_26A56959C@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, const void *a4@<X3>, uint64_t a5@<X4>, int a6@<W5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v137 = a7;
  v138 = a8;
  LODWORD(v130) = a6;
  v131 = a5;
  v139 = a4;
  v141 = a3;
  v135 = a1;
  v119 = a9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AD828, &qword_26A85F0C8);
  MEMORY[0x28223BE20](v10 - 8);
  v115 = &v107 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v111 = &v107 - v13;
  MEMORY[0x28223BE20](v14);
  v123 = &v107 - v15;
  MEMORY[0x28223BE20](v16);
  v122 = &v107 - v17;
  v129 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AD898, &qword_26A85F180);
  MEMORY[0x28223BE20](v129);
  v142 = &v107 - v18;
  v121 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AD8A0, &qword_26A85F188);
  MEMORY[0x28223BE20](v121);
  v136 = &v107 - v19;
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AD8A8, &qword_26A85F190);
  MEMORY[0x28223BE20](v109);
  v133 = &v107 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AD8B0, &qword_26A85F198);
  MEMORY[0x28223BE20](v21 - 8);
  v114 = &v107 - v22;
  v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AD8B8, &qword_26A85F1A0);
  MEMORY[0x28223BE20](v113);
  v118 = &v107 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v112 = &v107 - v25;
  MEMORY[0x28223BE20](v26);
  v116 = &v107 - v27;
  v127 = type metadata accessor for Separator(0);
  MEMORY[0x28223BE20](v127);
  v117 = &v107 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v128 = &v107 - v30;
  MEMORY[0x28223BE20](v31);
  v140 = &v107 - v32;
  v33 = sub_26A84BBF8();
  v34 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v126 = &v107 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v36);
  v143 = &v107 - v37;
  v38 = sub_26A84FF08();
  v39 = *(v38 - 8);
  MEMORY[0x28223BE20](v38);
  v41 = &v107 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AD890, &qword_26A85F178);
  v43 = v42 - 8;
  MEMORY[0x28223BE20](v42);
  v45 = &v107 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = MEMORY[0x28223BE20](v46);
  v49 = &v107 - v48;
  v124 = *(v39 + 16);
  v125 = v39 + 16;
  v124(&v107 - v48, a2, v38, v47);
  v50 = &v49[*(v43 + 56)];
  v108 = *(v34 + 16);
  v108(v50, v141, v33);
  v110 = v49;
  sub_26A4D7E54();
  v51 = *(v43 + 56);
  v144 = v39;
  v145 = v38;
  v52 = v39;
  v53 = v41;
  (*(v52 + 32))(v41, v45, v38);
  v132 = v34;
  v54 = *(v34 + 32);
  v141 = v33;
  result = v54(v143, &v45[v51], v33);
  v56 = (v135 + 1);
  if (__OFADD__(v135, 1))
  {
    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
    return result;
  }

  v135 = v53;
  v57 = v139;
  memcpy(v146, v139, 0x2B0uLL);
  v59 = type metadata accessor for ComponentStack.SeparatorAddingLayout(0, v137, v138, v58);
  v120 = v56;
  v134 = v59;
  v60 = sub_26A56A2F4(v56);
  v61 = v57;
  v62 = v126;
  v63 = v141;
  if (v60)
  {
    (*(v132 + 104))(v126, *MEMORY[0x277D62F38], v141);
  }

  else
  {
    v108(v126, v143, v141);
  }

  v64 = v144;
  v65 = v127;
  v66 = v128;
  v67 = &v128[*(v127 + 20)];
  *v67 = swift_getKeyPath();
  v67[8] = 0;
  v68 = *(v65 + 24);
  *(v66 + v68) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB430, &qword_26A85B010);
  swift_storeEnumTagMultiPayload();
  v69.n128_f64[0] = (v54)(v66, v62, v63);
  sub_26A56BF04(v66, v140, v69);
  memcpy(v146, v61, 0x2B0uLL);
  v70 = v120;
  sub_26A5689A8(v120, v71, v131, v130 & 1);
  v73 = v72;
  v75 = v74;
  LOBYTE(v68) = v76;
  v77 = v142;
  v78 = v145;
  (v124)(v142, v135, v145);
  v79 = &v77[*(v129 + 36)];
  *v79 = v73;
  *(v79 + 1) = v75;
  v79[16] = v68 & 1;
  result = swift_getKeyPath();
  if (__OFSUB__(v70, 1))
  {
    goto LABEL_21;
  }

  v130 = result;
  v80 = v64;
  v146[0] = v70 - 1;
  sub_26A84FF28();
  sub_26A56D48C();
  v81 = v122;
  sub_26A551EA4(v122);
  if (__swift_getEnumTagSinglePayload(v81, 1, v78) == 1)
  {
    sub_26A4D6FD8();
    v82 = 74;
    v83 = v123;
    v84 = v64;
  }

  else
  {
    sub_26A56BEB0();
    v85 = v81;
    sub_26A84FF18();
    v82 = v146[0];
    v84 = v80;
    (*(v80 + 8))(v85, v78);
    v83 = v123;
  }

  v86 = v136;
  sub_26A4D7EA8();
  v87 = &v86[*(v121 + 36)];
  *v87 = v130;
  v87[8] = v82;
  result = swift_getKeyPath();
  if (__OFADD__(v70, 1))
  {
    goto LABEL_22;
  }

  v88 = result;
  v146[0] = v70 + 1;
  sub_26A551EA4(v83);
  v89 = v145;
  if (__swift_getEnumTagSinglePayload(v83, 1, v145) == 1)
  {
    sub_26A4D6FD8();
    v90 = 74;
  }

  else
  {
    sub_26A56BEB0();
    sub_26A84FF18();
    v90 = v146[0];
    (*(v84 + 8))(v83, v89);
  }

  v91 = v115;
  v92 = v133;
  sub_26A4D7EA8();
  v93 = &v92[*(v109 + 36)];
  *v93 = v88;
  v93[8] = v90;
  v146[0] = v70;
  v94 = v111;
  sub_26A551EA4(v111);
  if (__swift_getEnumTagSinglePayload(v94, 1, v89) == 1)
  {
    sub_26A4D6FD8();
    v95 = 74;
    v96 = v144;
  }

  else
  {
    sub_26A56BEB0();
    sub_26A84FF18();
    v97 = v94;
    v95 = LOBYTE(v146[0]);
    v96 = v144;
    (*(v144 + 8))(v97, v89);
  }

  v146[0] = v70;
  sub_26A551EA4(v91);
  if (__swift_getEnumTagSinglePayload(v91, 1, v89) == 1)
  {
    sub_26A4D6FD8();
    v98 = 0;
    v99 = 0;
  }

  else
  {
    sub_26A56BE5C();
    sub_26A84FF18();
    v98 = v146[0];
    v99 = v146[1];
    (*(v96 + 8))(v91, v89);
  }

  v101 = v137;
  v100 = v138;
  sub_26A56599C(v70, v95, v98, v99, v114);

  sub_26A4D6FD8();
  v102 = swift_allocObject();
  v102[2] = v101;
  v102[3] = v100;
  v103 = v70;
  v104 = v139;
  memcpy(v102 + 4, v139, 0x2B0uLL);
  v102[90] = v103;
  v105 = v112;
  sub_26A4D7EA8();
  v106 = &v105[*(v113 + 36)];
  *v106 = sub_26A56BFDC;
  *(v106 + 1) = v102;
  sub_26A4D7EA8();
  sub_26A56D2AC();
  sub_26A4D7E54();
  sub_26A56D2AC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AD8C0, &unk_26A85F230);
  sub_26A4D7E54();
  (*(*(v134 - 8) + 16))(v146, v104);
  sub_26A4D6FD8();
  sub_26A56C018();
  (*(v132 + 8))(v143, v141);
  (*(v144 + 8))(v135, v145);
  sub_26A4D6FD8();
  sub_26A4D6FD8();
  return sub_26A56C018();
}

uint64_t sub_26A56A2F4(uint64_t a1)
{
  memcpy(v10, v1, sizeof(v10));
  v3 = sub_26A566F04();
  if (!sub_26A61B05C(v3, &unk_287B13068) || (_UISolariumEnabled() & 1) == 0)
  {
    return 0;
  }

  memcpy(v10, v1, sizeof(v10));
  result = sub_26A567390();
  if ((v5 & 1) == 0 && result == a1)
  {
    return 1;
  }

  v6 = __OFSUB__(a1, 1);
  v7 = a1 - 1;
  if (v6)
  {
    __break(1u);
  }

  else
  {
    memcpy(v10, v1, sizeof(v10));
    v8 = v7 == sub_26A567390();
    return v8 & ~v9;
  }

  return result;
}

_BYTE *sub_26A56A3D4(_BYTE *result, const void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (*result == 1)
  {
    v16 = v5;
    v17 = v6;
    memcpy(v14, a2, sizeof(v14));
    v12 = type metadata accessor for ComponentStack.SeparatorAddingLayout(0, a4, a5, v11);
    v13 = *(v12 - 8);
    (*(v13 + 16))(__dst, a2, v12);
    sub_26A5673F4(a3, 0);
    memcpy(__dst, v14, sizeof(__dst));
    return (*(v13 + 8))(__dst, v12);
  }

  return result;
}

uint64_t sub_26A56A4CC(uint64_t *a1, uint64_t (*a2)(uint64_t, char *, char *))
{
  v3 = *a1;
  v4 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AD888, &qword_26A85F170) + 48);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AD890, &qword_26A85F178);
  return a2(v3, v4, &v4[*(v5 + 48)]);
}

uint64_t sub_26A56A558(void *__src, char a2, uint64_t a3, uint64_t a4)
{
  memcpy(v12, __src, sizeof(v12));
  v9 = type metadata accessor for ComponentStack.SeparatorAddingLayout(0, a3, a4, v8);
  v10 = *(v9 - 8);
  (*(v10 + 16))(__dst, __src, v9);
  sub_26A5672D8(a2);
  memcpy(__dst, v12, sizeof(__dst));
  return (*(v10 + 8))(__dst, v9);
}

uint64_t sub_26A56A640(uint64_t a1, __n128 a2, uint64_t a3, uint64_t a4, uint64_t a5, const void *a6, uint64_t a7, uint64_t a8)
{
  v14 = sub_26A84FF08();
  (*(*(v14 - 8) + 16))(a1, a5, v14);
  memcpy(v17, a6, sizeof(v17));
  type metadata accessor for ComponentStack.SeparatorAddingLayout(0, a7, a8, v15);
  return sub_26A56A70C(a3);
}

uint64_t sub_26A56A70C@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for SeparatorsConfig(0);
  MEMORY[0x28223BE20](v2);
  v4 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for SeparatorConfig(0);
  v6 = v5 - 8;
  MEMORY[0x28223BE20](v5);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v18 - v10;
  sub_26A605C00(v4);
  sub_26A56D2AC();
  sub_26A56C018();
  sub_26A605C00(v4);
  sub_26A56D2AC();
  sub_26A56C018();
  v12 = *(v6 + 28);
  v13 = v11[v12];
  if (v13 == v8[v12])
  {
    v14 = sub_26A84BBE8();
    v13 = v14 < sub_26A84BBE8();
  }

  if (v13)
  {
    v15 = v11;
  }

  else
  {
    v15 = v8;
  }

  sub_26A56C018();
  v16 = sub_26A84BBF8();
  return (*(*(v16 - 8) + 32))(a1, v15, v16);
}

uint64_t sub_26A56A910@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(uint64_t, uint64_t, uint64_t, uint64_t)@<X1>, uint64_t a3@<X8>)
{
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AD910, &qword_26A85F338) + 48);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AD890, &qword_26A85F178);
  return a2(a3, a3 + *(v7 + 48), a1, a1 + v6);
}

uint64_t sub_26A56A99C(void (*a1)(char *, char *), uint64_t a2, uint64_t a3, char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v42 = a8;
  v9 = v8;
  v56 = a2;
  v57 = a4;
  v55 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v50 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v43 = a5;
  v44 = &v38 - v14;
  v41 = *(a5 - 8);
  MEMORY[0x28223BE20](v15);
  v53 = &v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v51 = &v38 - v18;
  v19 = sub_26A852068();
  v39 = *(v19 - 8);
  v40 = v19;
  MEMORY[0x28223BE20](v19);
  v21 = &v38 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v24 = &v38 - v23;
  MEMORY[0x28223BE20](v25);
  v52 = &v38 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v49 = *(a3 - 8);
  MEMORY[0x28223BE20](v28);
  v48 = &v38 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = a6;
  v58 = swift_getAssociatedTypeWitness();
  v45 = *(v58 - 8);
  MEMORY[0x28223BE20](v58);
  v31 = &v38 - v30;
  v32 = sub_26A8519A8();
  v59 = sub_26A852338();
  v54 = sub_26A852348();
  sub_26A8522E8();
  (*(v49 + 16))(v48, v46, a3);
  v57 = v31;
  v49 = a3;
  result = sub_26A851998();
  if (v32 < 0)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v32)
  {
    v34 = (v50 + 8);
    swift_getAssociatedConformanceWitness();
    while (1)
    {
      sub_26A852098();
      result = __swift_getEnumTagSinglePayload(v24, 1, AssociatedTypeWitness);
      if (result == 1)
      {
        goto LABEL_17;
      }

      v55(v24, v51);
      if (v9)
      {
        (*(v45 + 8))(v57, v58);

        (*(v41 + 32))(v42, v51, v43);
        return (*v34)(v24, AssociatedTypeWitness);
      }

      v9 = 0;
      (*v34)(v24, AssociatedTypeWitness);
      sub_26A852328();
      if (!--v32)
      {
        goto LABEL_9;
      }
    }
  }

  swift_getAssociatedConformanceWitness();
LABEL_9:
  v35 = (v50 + 32);
  v36 = (v50 + 8);
  v37 = v44;
  while (1)
  {
    sub_26A852098();
    if (__swift_getEnumTagSinglePayload(v21, 1, AssociatedTypeWitness) == 1)
    {
      (*(v45 + 8))(v57, v58);
      (*(v39 + 8))(v21, v40);
      return v59;
    }

    (*v35)(v37, v21, AssociatedTypeWitness);
    v55(v37, v53);
    if (v9)
    {
      break;
    }

    v9 = 0;
    (*v36)(v37, AssociatedTypeWitness);
    sub_26A852328();
  }

  (*v36)(v37, AssociatedTypeWitness);
  (*(v45 + 8))(v57, v58);

  return (*(v41 + 32))(v42, v53, v43);
}

uint64_t sub_26A56B02C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x282130608](a1, a2, a3, a4, a5, WitnessTable);
}

uint64_t SnippetBody.init(content:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t SnippetBody.body.getter(uint64_t a1)
{
  v3 = *v1;
  v2 = v1[1];
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);

  ComponentStack.init(content:)(v3, v2, &v15);
  v7 = type metadata accessor for ComponentStack(0, v4, v5, v6);
  OUTLINED_FUNCTION_15_7();
  swift_getWitnessTable();
  sub_26A80757C();
  v14[0] = v15;
  v14[1] = v16;
  v14[2] = v17;
  v14[3] = v18;
  v8 = *(*(v7 - 8) + 8);
  v8(v14, v7);
  sub_26A80757C();
  v15 = v10;
  v16 = v11;
  v17 = v12;
  v18 = v13;
  return v8(&v15, v7);
}

uint64_t sub_26A56B30C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_26A56B348(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 64))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 48);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_26A56B388(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 48) = (a2 - 1);
      return result;
    }

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_26A56B3D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_26A56B42C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_26A56B47C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 688))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 288);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_26A56B4BC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 680) = 0;
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 664) = 0u;
    *(result + 648) = 0u;
    *(result + 632) = 0u;
    *(result + 616) = 0u;
    *(result + 600) = 0u;
    *(result + 584) = 0u;
    *(result + 568) = 0u;
    *(result + 552) = 0u;
    *(result + 536) = 0u;
    *(result + 520) = 0u;
    *(result + 504) = 0u;
    *(result + 488) = 0u;
    *(result + 472) = 0u;
    *(result + 456) = 0u;
    *(result + 440) = 0u;
    *(result + 424) = 0u;
    *(result + 408) = 0u;
    *(result + 392) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 688) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 288) = (a2 - 1);
      return result;
    }

    *(result + 688) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_26A56B648(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = 0;
  v5 = 0;
  v6 = MEMORY[0x277D84F90];
  v7 = *(result + 16);
  v8 = MEMORY[0x277D84F90] + 32;
  v9 = (result + 32);
  while (v7 != v5)
  {
    v27 = *v9;
    v28 = v9[1];
    v29 = v9[2];
    v30 = v9[3];
    if (v4)
    {
      result = OUTLINED_FUNCTION_44_1(result, a2, a3, a4);
      v10 = v6;
    }

    else
    {
      OUTLINED_FUNCTION_19_6();
      if (v11)
      {
        goto LABEL_26;
      }

      OUTLINED_FUNCTION_18_6();
      if (v11 ^ v14 | v13)
      {
        v15 = 1;
      }

      else
      {
        v15 = v12;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AD958, &qword_26A85F368);
      v10 = swift_allocObject();
      v16 = _swift_stdlib_malloc_size(v10);
      v20 = (v16 - 32) / 72;
      v10[2] = v15;
      v10[3] = 2 * v20;
      v21 = v6[3] >> 1;
      v8 = &v10[9 * v21 + 4];
      v4 = (v20 & 0x7FFFFFFFFFFFFFFFLL) - v21;
      if (v6[2])
      {
        v22 = v10 < v6 || v10 + 4 >= &v6[9 * v21 + 4];
        v23 = 9 * v21;
        if (!v22 && v10 == v6)
        {
          OUTLINED_FUNCTION_44_1(v16, v17, v18, v19);
        }

        else
        {
          OUTLINED_FUNCTION_44_1(v16, v17, v18, v19);
          memmove(v10 + 4, v6 + 4, 8 * v23);
        }

        v6[2] = 0;
      }

      else
      {
        OUTLINED_FUNCTION_44_1(v16, v17, v18, v19);
      }
    }

    v14 = __OFSUB__(v4--, 1);
    if (v14)
    {
      __break(1u);
LABEL_26:
      __break(1u);
      goto LABEL_27;
    }

    *v8 = v5;
    *(v8 + 56) = v30;
    *(v8 + 40) = v29;
    *(v8 + 24) = v28;
    *(v8 + 8) = v27;
    v8 += 72;
    v9 += 4;
    ++v5;
    v6 = v10;
  }

  v24 = v6[3];
  if (v24 < 2)
  {
    return;
  }

  v25 = v24 >> 1;
  v14 = __OFSUB__(v25, v4);
  v26 = v25 - v4;
  if (!v14)
  {
    v6[2] = v26;
    return;
  }

LABEL_27:
  __break(1u);
}

void sub_26A56B810()
{
  OUTLINED_FUNCTION_28_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803ACBE0, &qword_26A85C180);
  OUTLINED_FUNCTION_15();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_8_15();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_6_19(v6, v7, v8, v9, v10, v11, v12, v13, v27);
  v14 = MEMORY[0x277D84F90];
  OUTLINED_FUNCTION_31_4(v15);
  while (1)
  {
    if (v28 == v1)
    {
      if (v14[3] >= 2uLL)
      {
        OUTLINED_FUNCTION_32_3();
        if (v25)
        {
          goto LABEL_31;
        }

        v14[2] = v26;
      }

      OUTLINED_FUNCTION_27_0();
      return;
    }

    v16 = type metadata accessor for AnyComponentViewConverter(0);
    OUTLINED_FUNCTION_2_5(v16);
    *v2 = v1;
    sub_26A56D2AC();
    OUTLINED_FUNCTION_21_4();
    if (!v0)
    {
      OUTLINED_FUNCTION_19_6();
      if (v17)
      {
        goto LABEL_28;
      }

      OUTLINED_FUNCTION_18_6();
      v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AD978, &qword_26A85F390);
      v19 = OUTLINED_FUNCTION_30_3(v18);
      v20 = _swift_stdlib_malloc_size(v19);
      if (!&qword_26A85C180)
      {
        goto LABEL_29;
      }

      if (v20 - v3 == 0x8000000000000000 && (&qword_26A85C180 + 1) == 0)
      {
        goto LABEL_30;
      }

      OUTLINED_FUNCTION_20_5(v20 - v3);
      if (v22)
      {
        OUTLINED_FUNCTION_41_4();
        v24 = !v24 || v3 >= v23;
        if (v24)
        {
          OUTLINED_FUNCTION_37_5();
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (v19 != v14)
        {
          OUTLINED_FUNCTION_37_5();
          swift_arrayInitWithTakeBackToFront();
        }

        v14[2] = 0;
      }

      OUTLINED_FUNCTION_43_1();
    }

    v25 = __OFSUB__(v0--, 1);
    if (v25)
    {
      break;
    }

    OUTLINED_FUNCTION_42_2();
    OUTLINED_FUNCTION_28_3();
  }

  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
}

void sub_26A56BA4C(uint64_t a1)
{
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AD888, &qword_26A85F170);
  MEMORY[0x28223BE20](v32);
  v3 = (&v28 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v4);
  v5 = 0;
  v6 = 0;
  v33 = v7;
  v28 = *(v7 + 80);
  v8 = MEMORY[0x277D84F90];
  v29 = (v28 + 32) & ~v28;
  v30 = a1;
  v9 = MEMORY[0x277D84F90] + v29;
  v31 = *(a1 + 16);
  while (v31 != v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AD890, &qword_26A85F178);
    *v3 = v6;
    sub_26A4D7E54();
    sub_26A4D7EA8();
    if (v5)
    {
      v10 = v8;
    }

    else
    {
      v11 = v8[3];
      if (((v11 >> 1) + 0x4000000000000000) < 0)
      {
        goto LABEL_32;
      }

      v12 = v11 & 0xFFFFFFFFFFFFFFFELL;
      if (v12 <= 1)
      {
        v13 = 1;
      }

      else
      {
        v13 = v12;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AD8E8, &qword_26A85F320);
      v14 = *(v33 + 72);
      v15 = v29;
      v10 = swift_allocObject();
      v16 = _swift_stdlib_malloc_size(v10);
      if (!v14)
      {
        goto LABEL_33;
      }

      v17 = v16 - v15;
      if (v16 - v15 == 0x8000000000000000 && v14 == -1)
      {
        goto LABEL_34;
      }

      v19 = v17 / v14;
      v10[2] = v13;
      v10[3] = 2 * (v17 / v14);
      v20 = v10 + v15;
      v21 = v8[3];
      v22 = (v21 >> 1) * v14;
      if (v8[2])
      {
        if (v10 < v8 || v20 >= v8 + v29 + v22)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (v10 != v8)
        {
          swift_arrayInitWithTakeBackToFront();
        }

        v8[2] = 0;
      }

      v9 = &v20[v22];
      v5 = (v19 & 0x7FFFFFFFFFFFFFFFLL) - (v21 >> 1);
    }

    v24 = __OFSUB__(v5--, 1);
    if (v24)
    {
      __break(1u);
LABEL_32:
      __break(1u);
LABEL_33:
      __break(1u);
LABEL_34:
      __break(1u);
      goto LABEL_35;
    }

    sub_26A4D7EA8();
    v9 += *(v33 + 72);
    ++v6;
    v8 = v10;
  }

  v25 = v8[3];
  if (v25 < 2)
  {
    return;
  }

  v26 = v25 >> 1;
  v24 = __OFSUB__(v26, v5);
  v27 = v26 - v5;
  if (!v24)
  {
    v8[2] = v27;
    return;
  }

LABEL_35:
  __break(1u);
}

uint64_t sub_26A56BD8C@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v9 = v4[2];
  v10 = v4[3];
  v11 = sub_26A84FF28();
  OUTLINED_FUNCTION_2_5(v11);
  v14 = v4 + ((*(v12 + 80) + 720) & ~*(v12 + 80));
  v15 = *(v14 + *(v13 + 64));

  return sub_26A56959C(a1, a2, a3, v4 + 4, v14, v15, v9, v10, a4);
}

unint64_t sub_26A56BE5C()
{
  result = qword_2803AD878;
  if (!qword_2803AD878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803AD878);
  }

  return result;
}

unint64_t sub_26A56BEB0()
{
  result = qword_2803AD880;
  if (!qword_2803AD880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803AD880);
  }

  return result;
}

uint64_t sub_26A56BF04(uint64_t a1, uint64_t a2, __n128 a3)
{
  v5 = type metadata accessor for Separator(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t objectdestroyTm_3()
{
  OUTLINED_FUNCTION_196();
  OUTLINED_FUNCTION_9_14();

  OUTLINED_FUNCTION_10_10();

  OUTLINED_FUNCTION_22_6();

  return swift_deallocObject();
}

uint64_t sub_26A56C018()
{
  OUTLINED_FUNCTION_196();
  v1(0);
  OUTLINED_FUNCTION_46();
  (*(v2 + 8))(v0);
  return v0;
}

unint64_t sub_26A56C06C()
{
  result = qword_2803AD930;
  if (!qword_2803AD930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803AD930);
  }

  return result;
}

unint64_t sub_26A56C0C0()
{
  result = qword_2803AD938;
  if (!qword_2803AD938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803AD938);
  }

  return result;
}

void sub_26A56C114(uint64_t a1)
{
  v2 = sub_26A73670C();
  v3 = 0;
  v4 = 0;
  v5 = a1 & 0xC000000000000001;
  v6 = MEMORY[0x277D84F90];
  v7 = (MEMORY[0x277D84F90] + 32);
  v8 = a1 & 0xFFFFFFFFFFFFFF8;
  v29 = a1 & 0xFFFFFFFFFFFFFF8;
  v30 = a1;
  while (v2 != v3)
  {
    if (v5)
    {
      v9 = MEMORY[0x26D6644E0](v3, a1);
    }

    else
    {
      if (v3 >= *(v8 + 16))
      {
        goto LABEL_29;
      }

      v9 = *(a1 + 8 * v3 + 32);
    }

    v10 = v9;
    if (__OFADD__(v3, 1))
    {
      __break(1u);
LABEL_29:
      __break(1u);
LABEL_30:
      __break(1u);
LABEL_31:
      __break(1u);
      goto LABEL_32;
    }

    if (!v4)
    {
      OUTLINED_FUNCTION_19_6();
      if (v11)
      {
        goto LABEL_31;
      }

      v12 = v2;
      v13 = v5;
      OUTLINED_FUNCTION_18_6();
      if (v11 ^ v16 | v15)
      {
        v17 = 1;
      }

      else
      {
        v17 = v14;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AD980, &qword_26A85F398);
      v18 = OUTLINED_FUNCTION_29_6();
      _swift_stdlib_malloc_size(v18);
      OUTLINED_FUNCTION_34_4();
      v21 = v19 / v20;
      v18[2] = v17;
      v18[3] = 2 * (v19 / v20);
      v22 = (v18 + 4);
      v23 = v6[3];
      v24 = v23 >> 1;
      if (v6[2])
      {
        if (v18 != v6 || v22 >= &v6[2 * v24 + 4])
        {
          memmove(v18 + 4, v6 + 4, 16 * v24);
        }

        v6[2] = 0;
      }

      v7 = (v22 + 16 * v24);
      v4 = (v21 & 0x7FFFFFFFFFFFFFFFLL) - (v23 >> 1);

      v6 = v18;
      v5 = v13;
      v2 = v12;
      v8 = v29;
      a1 = v30;
    }

    v16 = __OFSUB__(v4--, 1);
    if (v16)
    {
      goto LABEL_30;
    }

    *v7 = v3;
    v7[1] = v10;
    v7 += 2;
    ++v3;
  }

  v26 = v6[3];
  if (v26 < 2)
  {
    return;
  }

  v27 = v26 >> 1;
  v16 = __OFSUB__(v27, v4);
  v28 = v27 - v4;
  if (!v16)
  {
    v6[2] = v28;
    return;
  }

LABEL_32:
  __break(1u);
}

void sub_26A56C2B8()
{
  OUTLINED_FUNCTION_28_0();
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AD9B8, &qword_26A85F480);
  OUTLINED_FUNCTION_15();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_8_15();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_6_19(v8, v9, v10, v11, v12, v13, v14, v15, v39);
  v16 = MEMORY[0x277D84F90];
  v40 = v17;
  v18 = (MEMORY[0x277D84F90] + v17);
  v41 = *(v4 + 16);
  while (1)
  {
    if (v41 == v1)
    {
      if (v16[3] >= 2uLL)
      {
        OUTLINED_FUNCTION_32_3();
        if (v27)
        {
          goto LABEL_35;
        }

        v16[2] = v38;
      }

      OUTLINED_FUNCTION_27_0();
      return;
    }

    sub_26A84E898();
    OUTLINED_FUNCTION_46();
    v20 = *(v19 + 16);
    v21 = v4 + ((*(v19 + 80) + 32) & ~*(v19 + 80)) + *(v19 + 72) * v1;
    v22 = *(v5 + 48);
    *v2 = v1;
    v20(&v2[v22], v21);
    OUTLINED_FUNCTION_21_4();
    if (v0)
    {
      v23 = v16;
    }

    else
    {
      OUTLINED_FUNCTION_19_6();
      if (v24)
      {
        goto LABEL_32;
      }

      v25 = v4;
      OUTLINED_FUNCTION_18_6();
      if (v24 ^ v27 | v32)
      {
        v28 = 1;
      }

      else
      {
        v28 = v26;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AD9C0, &qword_26A85F488);
      v29 = *(v42 + 72);
      v23 = swift_allocObject();
      v30 = _swift_stdlib_malloc_size(v23);
      if (!v29)
      {
        goto LABEL_33;
      }

      v31 = v30 - v40;
      v32 = v30 - v40 == 0x8000000000000000 && v29 == -1;
      if (v32)
      {
        goto LABEL_34;
      }

      v33 = v31 / v29;
      v23[2] = v28;
      v23[3] = 2 * (v31 / v29);
      v34 = v23 + v40;
      v35 = v16[3];
      v36 = (v35 >> 1) * v29;
      if (v16[2])
      {
        if (v23 < v16 || v34 >= v16 + v40 + v36)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (v23 != v16)
        {
          swift_arrayInitWithTakeBackToFront();
        }

        v16[2] = 0;
      }

      v18 = &v34[v36];
      v0 = (v33 & 0x7FFFFFFFFFFFFFFFLL) - (v35 >> 1);

      v4 = v25;
    }

    v27 = __OFSUB__(v0--, 1);
    if (v27)
    {
      break;
    }

    sub_26A4D7EA8();
    v18 += *(v42 + 72);
    ++v1;
    v16 = v23;
  }

  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
}

void sub_26A56C548(unint64_t a1, unint64_t a2)
{
  v5 = sub_26A73670C();
  v6 = sub_26A73670C();
  if (v6 >= v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = v6;
  }

  if (v7)
  {
    if (v7 <= 0)
    {
      v8 = MEMORY[0x277D84F90];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AD950, &qword_26A85F360);
      v8 = OUTLINED_FUNCTION_29_6();
      _swift_stdlib_malloc_size(v8);
      OUTLINED_FUNCTION_34_4();
      v8[2] = v7;
      v8[3] = 2 * (v9 / v10);
    }
  }

  else
  {
    v8 = MEMORY[0x277D84F90];
  }

  v11 = v8[3];

  if (v7 < 0)
  {
LABEL_73:
    __break(1u);
LABEL_74:
    __break(1u);
LABEL_75:

    __break(1u);
    return;
  }

  v12 = v8 + 4;
  v13 = v11 >> 1;
  v53 = a2;
  v58 = a1;
  if (v7)
  {
    v54 = v8;
    v14 = a1;
    v59 = sub_26A73670C();
    v15 = sub_26A73670C();
    v16 = 0;
    v61 = v14 & 0xC000000000000001;
    v2 = (v14 & 0xFFFFFFFFFFFFFF8);
    v56 = v14 + 32;
    v17 = a2 & 0xC000000000000001;
    v18 = a2 & 0xFFFFFFFFFFFFFF8;
    v19 = a2 + 32;
    v20 = v7;
    v13 -= v7;
    v21 = v2;
    while (v59 != v16)
    {
      if (v61)
      {
        v22 = MEMORY[0x26D6644E0](v16, v58);
      }

      else
      {
        if (v16 >= v2[2])
        {
          goto LABEL_71;
        }

        v22 = *(v56 + 8 * v16);
      }

      v2 = v22;
      if (v15 == v16)
      {
        goto LABEL_75;
      }

      if (v17)
      {
        v23 = MEMORY[0x26D6644E0](v16, v53);
      }

      else
      {
        if (v16 >= *(v18 + 16))
        {
          goto LABEL_66;
        }

        v23 = *(v19 + 8 * v16);
      }

      ++v16;
      *v12 = v2;
      v12[1] = v23;
      v12 += 2;
      v2 = v21;
      if (v20 == v16)
      {
        a2 = v53;
        a1 = v58;
        v7 = v20;
        v24 = v17;
        v8 = v54;
        goto LABEL_26;
      }
    }

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
    __break(1u);
LABEL_72:
    __break(1u);
    goto LABEL_73;
  }

  v2 = (a1 & 0xFFFFFFFFFFFFFF8);
  v61 = a1 & 0xC000000000000001;
  v18 = a2 & 0xFFFFFFFFFFFFFF8;
  v24 = a2 & 0xC000000000000001;
LABEL_26:
  v60 = v18;
  v52 = v24;
  v25 = v7 + 4;
  v57 = a1 >> 62;
  v55 = a2 >> 62;
  while (1)
  {
    v26 = v57 ? sub_26A852168() : v2[2];
    v27 = v25 - 4;
    if (v25 - 4 == v26)
    {
      break;
    }

    if (v61)
    {
      v28 = MEMORY[0x26D6644E0](v25 - 4, a1);
    }

    else
    {
      if (v27 >= v2[2])
      {
        goto LABEL_68;
      }

      v28 = *(a1 + 8 * v25);
    }

    v29 = v28;
    if (__OFADD__(v27, 1))
    {
      goto LABEL_67;
    }

    if (v55)
    {
      v30 = sub_26A852168();
    }

    else
    {
      v30 = *(v60 + 16);
    }

    if (v27 == v30)
    {

      break;
    }

    if (v24)
    {
      v31 = MEMORY[0x26D6644E0](v25 - 4, a2);
    }

    else
    {
      if (v27 >= *(v60 + 16))
      {
        goto LABEL_69;
      }

      v31 = *(a2 + 8 * v25);
    }

    v32 = v31;
    if (!v13)
    {
      OUTLINED_FUNCTION_19_6();
      if (v33)
      {
        goto LABEL_72;
      }

      OUTLINED_FUNCTION_18_6();
      if (v33 ^ v36 | v35)
      {
        v37 = 1;
      }

      else
      {
        v37 = v34;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AD950, &qword_26A85F360);
      v38 = OUTLINED_FUNCTION_29_6();
      _swift_stdlib_malloc_size(v38);
      OUTLINED_FUNCTION_34_4();
      v41 = v39 / v40;
      v38[2] = v37;
      v38[3] = 2 * (v39 / v40);
      v42 = v8;
      v43 = (v38 + 4);
      v44 = v8[3];
      v45 = v44 >> 1;
      if (v42[2])
      {
        v46 = v2;
        v47 = v42;
        if (v38 != v42 || v43 >= &v42[2 * v45 + 4])
        {
          memmove(v38 + 4, v42 + 4, 16 * v45);
        }

        v47[2] = 0;
        v2 = v46;
        v24 = v52;
      }

      v12 = (v43 + 16 * v45);
      v13 = (v41 & 0x7FFFFFFFFFFFFFFFLL) - (v44 >> 1);

      v8 = v38;
      a2 = v53;
      a1 = v58;
    }

    v36 = __OFSUB__(v13--, 1);
    if (v36)
    {
      goto LABEL_70;
    }

    *v12 = v29;
    v12[1] = v32;
    v12 += 2;
    ++v25;
  }

  v49 = v8[3];
  if (v49 >= 2)
  {
    v50 = v49 >> 1;
    v36 = __OFSUB__(v50, v13);
    v51 = v50 - v13;
    if (!v36)
    {
      v8[2] = v51;
      return;
    }

    goto LABEL_74;
  }
}

void sub_26A56C934(uint64_t result)
{
  v1 = 0;
  v2 = 0;
  v3 = MEMORY[0x277D84F90];
  v4 = *(result + 16);
  v5 = MEMORY[0x277D84F90] + 32;
  v6 = (result + 73);
  v24 = v4;
  while (v4 != v2)
  {
    v7 = *(v6 - 41);
    v8 = *(v6 - 25);
    v9 = *(v6 - 1);
    v10 = *v6;
    v27 = v8;
    v28 = *(v6 - 33);
    v25 = *(v6 - 9);
    v26 = *(v6 - 17);
    if (v1)
    {
      OUTLINED_FUNCTION_45_2(v7, *(v6 - 33), v8, *(v6 - 17), *(v6 - 9));
      v11 = v3;
      goto LABEL_20;
    }

    OUTLINED_FUNCTION_19_6();
    if (v12)
    {
      goto LABEL_27;
    }

    OUTLINED_FUNCTION_18_6();
    if (v12 ^ v15 | v14)
    {
      v16 = 1;
    }

    else
    {
      v16 = v13;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AD9C8, &qword_26A85F490);
    v11 = swift_allocObject();
    v17 = (_swift_stdlib_malloc_size(v11) - 32) / 56;
    v11[2] = v16;
    v11[3] = 2 * v17;
    v18 = v3[3] >> 1;
    v19 = 7 * v18;
    v1 = (v17 & 0x7FFFFFFFFFFFFFFFLL) - v18;
    v5 = &v11[7 * v18 + 4];
    if (!v3[2])
    {
      OUTLINED_FUNCTION_45_2(v7, v28, v27, v26, v25);

      v4 = v24;
      goto LABEL_20;
    }

    if (v11 < v3 || v11 + 4 >= &v3[v19 + 4])
    {
      OUTLINED_FUNCTION_45_2(v7, v28, v27, v26, v25);
    }

    else
    {
      OUTLINED_FUNCTION_45_2(v7, v28, v27, v26, v25);
      if (v11 == v3)
      {
        goto LABEL_19;
      }
    }

    memmove(v11 + 4, v3 + 4, v19 * 8);
LABEL_19:
    v3[2] = 0;

    v4 = v24;
LABEL_20:
    v15 = __OFSUB__(v1--, 1);
    if (v15)
    {
      __break(1u);
LABEL_27:
      __break(1u);
      goto LABEL_28;
    }

    *v5 = v2;
    *(v5 + 8) = v7;
    *(v5 + 16) = v28;
    *(v5 + 24) = v27;
    *(v5 + 32) = v26;
    *(v5 + 40) = v25;
    *(v5 + 48) = v9;
    *(v5 + 49) = v10;
    v5 += 56;
    v6 += 48;
    ++v2;
    v3 = v11;
  }

  v21 = v3[3];
  if (v21 < 2)
  {
    return;
  }

  v22 = v21 >> 1;
  v15 = __OFSUB__(v22, v1);
  v23 = v22 - v1;
  if (!v15)
  {
    v3[2] = v23;
    return;
  }

LABEL_28:
  __break(1u);
}

void sub_26A56CB40()
{
  OUTLINED_FUNCTION_28_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AD968, &qword_26A85F378);
  OUTLINED_FUNCTION_15();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_8_15();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_6_19(v6, v7, v8, v9, v10, v11, v12, v13, v27);
  v14 = MEMORY[0x277D84F90];
  OUTLINED_FUNCTION_31_4(v15);
  while (1)
  {
    if (v28 == v1)
    {
      if (v14[3] >= 2uLL)
      {
        OUTLINED_FUNCTION_32_3();
        if (v25)
        {
          goto LABEL_31;
        }

        v14[2] = v26;
      }

      OUTLINED_FUNCTION_27_0();
      return;
    }

    v16 = type metadata accessor for RichTextView.Tokenizer.Token(0);
    OUTLINED_FUNCTION_2_5(v16);
    *v2 = v1;
    sub_26A56D2AC();
    OUTLINED_FUNCTION_21_4();
    if (!v0)
    {
      OUTLINED_FUNCTION_19_6();
      if (v17)
      {
        goto LABEL_28;
      }

      OUTLINED_FUNCTION_18_6();
      v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AD970, &unk_26A85F380);
      v19 = OUTLINED_FUNCTION_30_3(v18);
      v20 = _swift_stdlib_malloc_size(v19);
      if (!&qword_26A85F378)
      {
        goto LABEL_29;
      }

      if (v20 - v3 == 0x8000000000000000 && (&qword_26A85F378 + 1) == 0)
      {
        goto LABEL_30;
      }

      OUTLINED_FUNCTION_20_5(v20 - v3);
      if (v22)
      {
        OUTLINED_FUNCTION_41_4();
        v24 = !v24 || v3 >= v23;
        if (v24)
        {
          OUTLINED_FUNCTION_37_5();
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (v19 != v14)
        {
          OUTLINED_FUNCTION_37_5();
          swift_arrayInitWithTakeBackToFront();
        }

        v14[2] = 0;
      }

      OUTLINED_FUNCTION_43_1();
    }

    v25 = __OFSUB__(v0--, 1);
    if (v25)
    {
      break;
    }

    OUTLINED_FUNCTION_42_2();
    OUTLINED_FUNCTION_28_3();
  }

  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
}

void sub_26A56CD7C()
{
  OUTLINED_FUNCTION_28_0();
  v0 = 0;
  v1 = 0;
  v2 = MEMORY[0x277D84F90];
  v4 = *(v3 + 16);
  v5 = (MEMORY[0x277D84F90] + 32);
  v6 = v3 + 32;
  while (1)
  {
    if (v4 == v1)
    {
      v18 = v2[3];
      if (v18 >= 2)
      {
        v19 = v18 >> 1;
        v12 = __OFSUB__(v19, v0);
        v20 = v19 - v0;
        if (v12)
        {
          goto LABEL_27;
        }

        v2[2] = v20;
      }

      OUTLINED_FUNCTION_27_0();
      return;
    }

    v7 = *(v6 + 8 * v1);
    if (v0)
    {

      v8 = v2;
    }

    else
    {
      OUTLINED_FUNCTION_19_6();
      if (v9)
      {
        goto LABEL_26;
      }

      OUTLINED_FUNCTION_18_6();
      v13 = (v9 ^ v12) | v11 ? 1 : v10;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AD960, &qword_26A85F370);
      v8 = OUTLINED_FUNCTION_29_6();
      v14 = (_swift_stdlib_malloc_size(v8) - 32) / 16;
      v8[2] = v13;
      v8[3] = 2 * v14;
      v15 = v8 + 4;
      v16 = v2[3] >> 1;
      v5 = &v8[2 * v16 + 4];
      v0 = (v14 & 0x7FFFFFFFFFFFFFFFLL) - v16;
      if (v2[2])
      {
        if (v8 != v2 || v15 >= &v2[2 * v16 + 4])
        {
          memmove(v15, v2 + 4, 16 * v16);
        }

        v2[2] = 0;
      }

      else
      {
      }
    }

    v12 = __OFSUB__(v0--, 1);
    if (v12)
    {
      break;
    }

    *v5 = v1;
    v5[1] = v7;
    v5 += 2;
    ++v1;
    v2 = v8;
  }

  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
}

void sub_26A56CED0()
{
  OUTLINED_FUNCTION_28_0();
  v1 = v0;
  v2 = 0;
  v3 = 0;
  v5 = v4 >> 1;
  v7 = v6 + 8 * v0;
  v8 = v0 - (v4 >> 1);
  v9 = MEMORY[0x277D84F90];
  for (i = (MEMORY[0x277D84F90] + 32); ; i += 2)
  {
    if (!(v8 + v2))
    {
      v24 = v9[3];
      if (v24 >= 2)
      {
        v25 = v24 >> 1;
        v16 = __OFSUB__(v25, v3);
        v26 = v25 - v3;
        if (v16)
        {
          goto LABEL_31;
        }

        v9[2] = v26;
      }

      OUTLINED_FUNCTION_27_0();
      return;
    }

    if (v1 + v2 >= v5)
    {
      break;
    }

    if (__OFADD__(v2, 1))
    {
      goto LABEL_28;
    }

    v11 = *(v7 + 8 * v2);
    if (v3)
    {

      v12 = v9;
    }

    else
    {
      OUTLINED_FUNCTION_19_6();
      if (v13)
      {
        goto LABEL_30;
      }

      OUTLINED_FUNCTION_18_6();
      if (v13 ^ v16 | v15)
      {
        v17 = 1;
      }

      else
      {
        v17 = v14;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AD960, &qword_26A85F370);
      v12 = OUTLINED_FUNCTION_29_6();
      _swift_stdlib_malloc_size(v12);
      OUTLINED_FUNCTION_34_4();
      v20 = v18 / v19;
      v12[2] = v17;
      v12[3] = 2 * v20;
      v21 = v12 + 4;
      v22 = v9[3] >> 1;
      i = &v12[2 * v22 + 4];
      v3 = (v20 & 0x7FFFFFFFFFFFFFFFLL) - v22;
      if (v9[2])
      {
        if (v12 != v9 || v21 >= &v9[2 * v22 + 4])
        {
          memmove(v21, v9 + 4, 16 * v22);
        }

        v9[2] = 0;
      }

      else
      {
      }
    }

    v16 = __OFSUB__(v3--, 1);
    if (v16)
    {
      goto LABEL_29;
    }

    *i = v2;
    i[1] = v11;
    ++v2;
    v9 = v12;
  }

  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
}

void sub_26A56D040(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 16);

  v6 = 0;
  v7 = MEMORY[0x277D84F90];
  v8 = (MEMORY[0x277D84F90] + 32);
  v9 = 4;
  v27 = a3;
  for (i = a2; v5; a2 = i)
  {
    v10 = v9 - 4;
    v11 = *(a2 + 16);
    if (v9 - 4 == v11)
    {
      break;
    }

    if (v9 - 4 >= v11)
    {
      __break(1u);
LABEL_29:
      __break(1u);
LABEL_30:
      __break(1u);
LABEL_31:
      __break(1u);
      goto LABEL_32;
    }

    v12 = *(a3 + 16);
    if (v10 == v12)
    {
      break;
    }

    if (v10 >= v12)
    {
      goto LABEL_29;
    }

    v13 = *(a1 + 8 * v9);
    v14 = *(a2 + 8 * v9);
    v15 = *(a3 + 8 * v9);
    if (v6)
    {

      v16 = v7;
    }

    else
    {
      OUTLINED_FUNCTION_19_6();
      if (v17)
      {
        goto LABEL_31;
      }

      OUTLINED_FUNCTION_18_6();
      if (v17 ^ v20 | v19)
      {
        v21 = 1;
      }

      else
      {
        v21 = v18;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AD948, &qword_26A85F358);
      v16 = OUTLINED_FUNCTION_29_6();
      v22 = (_swift_stdlib_malloc_size(v16) - 32) / 32;
      v16[2] = v21;
      v16[3] = 2 * v22;
      v23 = v16 + 4;
      v24 = v7[3] >> 1;
      v8 = &v16[4 * v24 + 4];
      v6 = (v22 & 0x7FFFFFFFFFFFFFFFLL) - v24;
      if (v7[2])
      {
        if (v16 != v7 || v23 >= &v7[4 * v24 + 4])
        {
          memmove(v23, v7 + 4, 32 * v24);
        }

        v7[2] = 0;
      }

      else
      {
      }
    }

    v20 = __OFSUB__(v6--, 1);
    if (v20)
    {
      goto LABEL_30;
    }

    *v8 = v10;
    v8[1] = v13;
    v8[2] = v14;
    v8[3] = v15;
    v8 += 4;
    --v5;
    ++v9;
    v7 = v16;
    a3 = v27;
  }

  if (v7[3] >= 2uLL)
  {
    OUTLINED_FUNCTION_32_3();
    if (v20)
    {
LABEL_32:
      __break(1u);
    }

    else
    {
      v7[2] = v26;
    }
  }
}

uint64_t sub_26A56D2AC()
{
  OUTLINED_FUNCTION_145();
  v1(0);
  OUTLINED_FUNCTION_46();
  v2 = OUTLINED_FUNCTION_211();
  v3(v2);
  return v0;
}

unint64_t sub_26A56D31C()
{
  result = qword_2803AD988;
  if (!qword_2803AD988)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AD818, &unk_26A85F0B0);
    sub_26A56D3A8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803AD988);
  }

  return result;
}

unint64_t sub_26A56D3A8()
{
  result = qword_2803AD990;
  if (!qword_2803AD990)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AD808, &qword_26A85F0A0);
    sub_26A4D7DCC();
    sub_26A4D7DCC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803AD990);
  }

  return result;
}

unint64_t sub_26A56D48C()
{
  OUTLINED_FUNCTION_196();
  result = *v2;
  if (!result)
  {
    v1(255);
    result = swift_getWitnessTable();
    atomic_store(result, v0);
  }

  return result;
}

void OUTLINED_FUNCTION_6_19(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  *(v11 - 96) = v10;
  *(v11 - 88) = &a9 - v9;
  *(v11 - 120) = *(v10 + 80);
}

uint64_t OUTLINED_FUNCTION_9_14()
{
  sub_26A49035C(*(v0 + 32), *(v0 + 40));
  sub_26A49035C(*(v0 + 48), *(v0 + 56));
  sub_26A4F5724(*(v0 + 64), *(v0 + 72), *(v0 + 73));
  sub_26A49035C(*(v0 + 80), *(v0 + 88));
  sub_26A49035C(*(v0 + 96), *(v0 + 104));
  sub_26A49035C(*(v0 + 112), *(v0 + 120));
  sub_26A49035C(*(v0 + 128), *(v0 + 136));
  sub_26A49035C(*(v0 + 144), *(v0 + 152));
  sub_26A49035C(*(v0 + 160), *(v0 + 168));
  sub_26A49035C(*(v0 + 176), *(v0 + 184));
  sub_26A49035C(*(v0 + 192), *(v0 + 200));
  sub_26A49035C(*(v0 + 208), *(v0 + 216));
  sub_26A49035C(*(v0 + 224), *(v0 + 232));
  sub_26A49035C(*(v0 + 240), *(v0 + 248));
}

uint64_t OUTLINED_FUNCTION_10_10()
{
  sub_26A49035C(*(v0 + 384), *(v0 + 392));
  sub_26A49035C(*(v0 + 400), *(v0 + 408));
  sub_26A49035C(*(v0 + 416), *(v0 + 424));
  sub_26A49035C(*(v0 + 432), *(v0 + 440));
  sub_26A49035C(*(v0 + 448), *(v0 + 456));
  sub_26A49035C(*(v0 + 464), *(v0 + 472));
  sub_26A49035C(*(v0 + 480), *(v0 + 488));
  sub_26A49035C(*(v0 + 496), *(v0 + 504));
  sub_26A49035C(*(v0 + 512), *(v0 + 520));
  sub_26A49035C(*(v0 + 528), *(v0 + 536));
}

uint64_t OUTLINED_FUNCTION_21_4()
{

  return sub_26A4D7EA8();
}

uint64_t OUTLINED_FUNCTION_22_6()
{
  sub_26A49035C(*(v0 + 624), *(v0 + 632));
  sub_26A49035C(*(v0 + 640), *(v0 + 648));
  sub_26A49035C(*(v0 + 656), *(v0 + 664));
}

uint64_t OUTLINED_FUNCTION_29_6()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_30_3(uint64_t a1)
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_42_2()
{

  return sub_26A4D7EA8();
}

uint64_t OUTLINED_FUNCTION_43_1()
{
}

uint64_t OUTLINED_FUNCTION_44_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va1, a4);
  va_start(va, a4);
  v6 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);

  return sub_26A56D250(va1, va);
}

void OUTLINED_FUNCTION_45_2(uint64_t a1, uint64_t a2, char a3, uint64_t a4, void *a5)
{

  sub_26A5064E8(a1, a2, a3, a4, a5, v5, v6);
}

uint64_t sub_26A56D934()
{
  sub_26A56D9B4();
  result = sub_26A84FC28();
  qword_28157FC80 = result;
  return result;
}

uint64_t static HorizontalAlignment.separatorLeading.getter()
{
  if (qword_28157FC78 != -1)
  {
    swift_once();
  }

  return qword_28157FC80;
}

unint64_t sub_26A56D9B4()
{
  result = qword_28157FC70;
  if (!qword_28157FC70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28157FC70);
  }

  return result;
}

uint64_t type metadata accessor for StepSliderControlView(uint64_t a1)
{
  result = qword_2803AD9E0;
  if (!qword_2803AD9E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_26A56DA8C(uint64_t a1)
{
  result = sub_26A84E8B8();
  if (v2 <= 0x3F)
  {
    result = sub_26A84E8C8();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

double sub_26A56DB2C()
{
  v1 = type metadata accessor for StepSliderControlView(0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1 - 8);
  sub_26A56EBC4(v0, v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_26A851BD8();
  v4 = sub_26A851BC8();
  v5 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v6 = swift_allocObject();
  v7 = MEMORY[0x277D85700];
  *(v6 + 16) = v4;
  *(v6 + 24) = v7;
  sub_26A56EC28(v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v6 + v5);
  sub_26A56EBC4(v0, v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = sub_26A851BC8();
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = v7;
  sub_26A56EC28(v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v9 + v5);
  sub_26A851278();
  return *&v11[3];
}

uint64_t sub_26A56DCC4(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = type metadata accessor for StepSliderControlView(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AC090, &qword_26A85A690);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v21 - v11;
  v13 = *a1;
  v14 = sub_26A851C18();
  __swift_storeEnumTagSinglePayload(v12, 1, 1, v14);
  sub_26A56EBC4(a4, v9);
  sub_26A851BD8();
  v15 = sub_26A851BC8();
  v16 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v17 = (v8 + v16 + 7) & 0xFFFFFFFFFFFFFFF8;
  v18 = swift_allocObject();
  v19 = MEMORY[0x277D85700];
  *(v18 + 16) = v15;
  *(v18 + 24) = v19;
  sub_26A56EC28(v9, v18 + v16);
  *(v18 + v17) = v13;
  sub_26A7FEEA0(0, 0, v12, &unk_26A85F598, v18);
}

uint64_t sub_26A56DE78(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 24) = a1;
  *(v5 + 16) = a5;
  sub_26A851BD8();
  *(v5 + 32) = sub_26A851BC8();
  *(v5 + 40) = sub_26A851B78();
  *(v5 + 48) = v6;

  return MEMORY[0x2822009F8](sub_26A56DF14);
}

uint64_t sub_26A56DF14()
{
  v1 = *(v0 + 24);
  result = type metadata accessor for StepSliderControlView(0);
  if ((*&v1 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (v1 <= -9.22337204e18)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v1 >= 9.22337204e18)
  {
LABEL_9:
    __break(1u);
    return result;
  }

  v4 = (*MEMORY[0x277CFA498] + MEMORY[0x277CFA498]);
  v3 = swift_task_alloc();
  *(v0 + 56) = v3;
  *v3 = v0;
  v3[1] = sub_26A56E018;

  return v4(v1);
}

uint64_t sub_26A56E018()
{
  *(*v1 + 64) = v0;

  if (v0)
  {
    v2 = sub_26A56E1B8;
  }

  else
  {
    v2 = sub_26A56E154;
  }

  return MEMORY[0x2822009F8](v2);
}

uint64_t sub_26A56E154()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_26A56E1B8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_26A56E21C()
{
  v0 = sub_26A84E898();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v15 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_26A56DB2C();
  v15[1] = v5;
  v15[2] = v6;
  *&v15[3] = v4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803ADA20, &unk_26A85F580);
  MEMORY[0x26D6634C0](v15, v7);
  v8 = *v15;
  v9 = v15[0];

  if ((v9 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (v8 <= -9.22337204e18)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (v8 >= 9.22337204e18)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v11 = v8;
  result = sub_26A84E8A8();
  if (v8 < 0)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (*(result + 16) <= v11)
  {
LABEL_14:
    __break(1u);
    return result;
  }

  (*(v1 + 16))(v3, result + ((*(v1 + 80) + 32) & ~*(v1 + 80)) + *(v1 + 72) * v11, v0);

  v12 = sub_26A84E878();
  if (v13)
  {
    v14 = v12;
  }

  else
  {
    v14 = 0x3E726F7272453CLL;
  }

  (*(v1 + 8))(v3, v0);
  return v14;
}

double sub_26A56E410@<D0>(uint64_t a1@<X8>)
{
  sub_26A84E848();
  *a1 = sub_26A84FBF8();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AD9F0, &qword_26A85F558);
  sub_26A56E4D4((a1 + *(v2 + 44)));

  v3 = sub_26A850248();
  v4 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AD9F8, &qword_26A85F560) + 36);
  *v4 = v3;
  result = 0.0;
  *(v4 + 8) = 0u;
  *(v4 + 24) = 0u;
  *(v4 + 40) = 1;
  return result;
}

void sub_26A56E4D4(char *a3@<X8>)
{
  v57 = a3;
  v4 = sub_26A84FB58();
  MEMORY[0x28223BE20](v4 - 8);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803ADA00, &qword_26A85F568);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v53 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v53 - v9;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803ADA08, &qword_26A85F570);
  v54 = *(v56 - 8);
  MEMORY[0x28223BE20](v56);
  v55 = &v53 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v58 = &v53 - v13;
  v14 = sub_26A56DB2C();
  v16 = v15;
  v18 = v17;
  v19 = v14;
  v20 = *(sub_26A84E8A8() + 16);

  if (v20)
  {
    v53 = &v53;
    v22 = MEMORY[0x28223BE20](v21).n128_u64[0];
    v70 = v16;
    v71 = v18;
    v72 = v19;
    v69 = v22;
    v67 = 0x3FF0000000000000;
    v68 = 0;
    v23 = sub_26A84E8A8();
    sub_26A7DBCA4(v23, v10);

    v24 = sub_26A84E898();
    if (__swift_getEnumTagSinglePayload(v10, 1, v24) == 1)
    {
      sub_26A56EB08(v10);
    }

    else
    {
      v25 = sub_26A84E878();
      v27 = v26;
      (*(*(v24 - 8) + 8))(v10, v24);
      if (v27)
      {
        goto LABEL_6;
      }
    }

    v25 = 0;
    v27 = 0xE000000000000000;
LABEL_6:
    v63 = v25;
    v64 = v27;
    sub_26A53ACC8();
    v63 = sub_26A850898();
    v64 = v28;
    v65 = v29 & 1;
    v66 = v30;
    v31 = sub_26A84E8A8();
    sub_26A56531C(v31, v7);

    if (__swift_getEnumTagSinglePayload(v7, 1, v24) == 1)
    {
      sub_26A56EB08(v7);
    }

    else
    {
      v32 = sub_26A84E878();
      v34 = v33;
      (*(*(v24 - 8) + 8))(v7, v24);
      if (v34)
      {
LABEL_10:
        v59 = v32;
        v60 = v34;
        v59 = sub_26A850898();
        v60 = v35;
        v61 = v36 & 1;
        v62 = v37;
        sub_26A56EB70();
        v38 = v58;
        sub_26A8511A8();
        sub_26A84FB48();
        sub_26A84FB38();
        sub_26A56E21C();
        sub_26A84FB28();

        sub_26A84FB38();
        sub_26A84FB78();
        v39 = sub_26A850878();
        v41 = v40;
        v43 = v42;
        v45 = v44;
        v46 = v54;
        v47 = *(v54 + 16);
        v49 = v55;
        v48 = v56;
        v47(v55, v38, v56);
        v50 = v57;
        v47(v57, v49, v48);
        v51 = &v50[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803ADA18, &qword_26A85F578) + 48)];
        *v51 = v39;
        *(v51 + 1) = v41;
        v43 &= 1u;
        v51[16] = v43;
        *(v51 + 3) = v45;
        sub_26A4EF6C0(v39, v41, v43);
        v52 = *(v46 + 8);

        v52(v58, v48);
        sub_26A4EC448(v39, v41, v43);

        v52(v49, v48);
        return;
      }
    }

    v32 = 0;
    v34 = 0xE000000000000000;
    goto LABEL_10;
  }

  __break(1u);
}

uint64_t sub_26A56EA90@<X0>(uint64_t a3@<X8>)
{
  sub_26A53ACC8();

  result = sub_26A850898();
  *a3 = result;
  *(a3 + 8) = v5;
  *(a3 + 16) = v6 & 1;
  *(a3 + 24) = v7;
  return result;
}

uint64_t sub_26A56EB08(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803ADA00, &qword_26A85F568);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_26A56EB70()
{
  result = qword_2803ADA10;
  if (!qword_2803ADA10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803ADA10);
  }

  return result;
}

uint64_t sub_26A56EBC4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StepSliderControlView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26A56EC28(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StepSliderControlView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

double sub_26A56EC8C@<D0>(double *a1@<X8>)
{
  type metadata accessor for StepSliderControlView(0);
  result = sub_26A84E838();
  *a1 = result;
  return result;
}

uint64_t objectdestroyTm_4()
{
  type metadata accessor for StepSliderControlView(0);
  OUTLINED_FUNCTION_6_3();
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  swift_unknownObjectRelease();
  sub_26A84E8B8();
  OUTLINED_FUNCTION_1_4();
  (*(v3 + 8))(v0 + v2);

  return swift_deallocObject();
}

uint64_t sub_26A56EDCC(uint64_t *a1)
{
  v3 = *(type metadata accessor for StepSliderControlView(0) - 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));

  return sub_26A56DCC4(a1, v4, v5, v6);
}

uint64_t sub_26A56EE40(uint64_t a1)
{
  v4 = *(type metadata accessor for StepSliderControlView(0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_26A557454;

  return sub_26A56DE78(v8, a1, v6, v7, v1 + v5);
}

unint64_t sub_26A56EF60()
{
  result = qword_2803ADA28;
  if (!qword_2803ADA28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AD9F8, &qword_26A85F560);
    sub_26A56EFEC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803ADA28);
  }

  return result;
}

unint64_t sub_26A56EFEC()
{
  result = qword_2803ADA30;
  if (!qword_2803ADA30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803ADA38, &unk_26A85F5A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803ADA30);
  }

  return result;
}

uint64_t sub_26A56F050()
{
  v1 = sub_26A84F988();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v9[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = v0 + *(type metadata accessor for SummaryItemShortNumberView(0) + 20);
  v6 = *v5;
  if (*(v5 + 8) != 1)
  {

    sub_26A851EA8();
    v7 = sub_26A8501F8();
    sub_26A84EA78();

    sub_26A84F978();
    swift_getAtKeyPath();
    sub_26A49035C(v6, 0);
    (*(v2 + 8))(v4, v1);
    LOBYTE(v6) = v9[15];
  }

  return v6 & 1;
}

uint64_t sub_26A56F1A8@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_26A84F988();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A9190, &unk_26A854C50);
  MEMORY[0x28223BE20](v7);
  v9 = &v13 - v8;
  v10 = type metadata accessor for SummaryItemShortNumberView(0);
  sub_26A4DBD68(v1 + *(v10 + 24), v9, &unk_2803A9190, &unk_26A854C50);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_26A4DBDB4(v9, a1, &qword_2803A91C8, &unk_26A856820);
  }

  sub_26A851EA8();
  v12 = sub_26A8501F8();
  sub_26A84EA78();

  sub_26A84F978();
  swift_getAtKeyPath();

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_26A56F390()
{
  v1 = sub_26A84F988();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = v0 + *(type metadata accessor for SummaryItemShortNumberView(0) + 28);
  v6 = *v5;
  if ((*(v5 + 8) & 1) == 0)
  {

    sub_26A851EA8();
    v7 = sub_26A8501F8();
    sub_26A84EA78();

    sub_26A84F978();
    swift_getAtKeyPath();
    sub_26A49035C(v6, 0);
    (*(v2 + 8))(v4, v1);
    return v9[1];
  }

  return v6;
}

uint64_t sub_26A56F4E4@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_26A84F988();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91A8, &qword_26A857040);
  MEMORY[0x28223BE20](v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for SummaryItemShortNumberView(0);
  sub_26A4DBD68(v1 + *(v10 + 32), v9, &qword_2803A91A8, &qword_26A857040);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_26A84F3A8();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    sub_26A851EA8();
    v13 = sub_26A8501F8();
    sub_26A84EA78();

    sub_26A84F978();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t SummaryItemShortNumberView.init(number:text2:text1:text3:text4:text5:text6:thumbnail:)@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v12 = type metadata accessor for SummaryItemShortNumberView(0);
  OUTLINED_FUNCTION_46();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_41();
  v16 = (v15 - v14);
  if (qword_28157E670 != -1)
  {
    OUTLINED_FUNCTION_146(&qword_28157E670);
  }

  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B3890, &unk_26A856670);
  v18 = __swift_project_value_buffer(v17, qword_281588798);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91A0, &qword_26A854C60);
  v20 = &v16[*(v19 + 32)];
  sub_26A4DBD68(v18, v20, &qword_2803B3890, &unk_26A856670);
  sub_26A6AEE74(__src);
  memcpy(v16, __src, 0xBFuLL);
  sub_26A4DB4E0(v20 + *(v17 + 36), &v16[*(v19 + 28)]);
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_162(KeyPath);
  v22 = v12[6];
  *&v16[v22] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A9190, &unk_26A854C50);
  swift_storeEnumTagMultiPayload();
  v23 = swift_getKeyPath();
  OUTLINED_FUNCTION_162(v23);
  v24 = v12[8];
  *&v16[v24] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91A8, &qword_26A857040);
  swift_storeEnumTagMultiPayload();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v25 = OUTLINED_FUNCTION_15_0();
  *&v16[v12[9]] = v26(v25);
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  v27 = OUTLINED_FUNCTION_15_0();
  *&v16[v12[10]] = v28(v27);
  sub_26A4DBD68(a3, v50, &qword_2803A91B8, &qword_26A8575C0);
  OUTLINED_FUNCTION_10_11();
  if (&unk_26A856670)
  {
    v29 = OUTLINED_FUNCTION_1_20();
    v30(v29);
    OUTLINED_FUNCTION_23_0();
  }

  else
  {
    sub_26A4DBD10(v50, &qword_2803A91B8, &qword_26A8575C0);
    v24 = 0;
  }

  *&v16[v12[11]] = v24;
  sub_26A4DBD68(a4, v50, &qword_2803A91B8, &qword_26A8575C0);
  OUTLINED_FUNCTION_10_11();
  if (&unk_26A856670)
  {
    v31 = OUTLINED_FUNCTION_1_20();
    v32(v31);
    OUTLINED_FUNCTION_23_0();
  }

  else
  {
    sub_26A4DBD10(v50, &qword_2803A91B8, &qword_26A8575C0);
    v24 = 0;
  }

  *&v16[v12[12]] = v24;
  sub_26A4DBD68(a5, v50, &qword_2803A91B8, &qword_26A8575C0);
  OUTLINED_FUNCTION_10_11();
  if (&unk_26A856670)
  {
    v33 = OUTLINED_FUNCTION_1_20();
    v34(v33);
    OUTLINED_FUNCTION_23_0();
  }

  else
  {
    sub_26A4DBD10(v50, &qword_2803A91B8, &qword_26A8575C0);
    v24 = 0;
  }

  *&v16[v12[13]] = v24;
  sub_26A4DBD68(a6, v50, &qword_2803A91B8, &qword_26A8575C0);
  OUTLINED_FUNCTION_10_11();
  if (&unk_26A856670)
  {
    v35 = OUTLINED_FUNCTION_1_20();
    v36(v35);
    OUTLINED_FUNCTION_23_0();
  }

  else
  {
    sub_26A4DBD10(v50, &qword_2803A91B8, &qword_26A8575C0);
    v24 = 0;
  }

  *&v16[v12[14]] = v24;
  sub_26A4DBD68(a7, v50, &qword_2803A91B8, &qword_26A8575C0);
  OUTLINED_FUNCTION_10_11();
  if (&unk_26A856670)
  {
    v37 = OUTLINED_FUNCTION_1_20();
    v38(v37);
    OUTLINED_FUNCTION_23_0();
  }

  else
  {
    sub_26A4DBD10(v50, &qword_2803A91B8, &qword_26A8575C0);
    v24 = 0;
  }

  *&v16[v12[15]] = v24;
  sub_26A4DBD68(a8, v50, &qword_2803A91B8, &qword_26A8575C0);
  OUTLINED_FUNCTION_10_11();
  if (&unk_26A856670)
  {
    v39 = OUTLINED_FUNCTION_1_20();
    v41 = v40(v39);
    OUTLINED_FUNCTION_20_0(a8);
    OUTLINED_FUNCTION_20_0(a7);
    OUTLINED_FUNCTION_20_0(a6);
    OUTLINED_FUNCTION_20_0(a5);
    OUTLINED_FUNCTION_20_0(a4);
    OUTLINED_FUNCTION_20_0(a3);
    __swift_destroy_boxed_opaque_existential_1(v50);
  }

  else
  {
    OUTLINED_FUNCTION_18_0(a8);
    OUTLINED_FUNCTION_18_0(a7);
    OUTLINED_FUNCTION_18_0(a6);
    OUTLINED_FUNCTION_18_0(a5);
    OUTLINED_FUNCTION_18_0(a4);
    OUTLINED_FUNCTION_18_0(a3);
    OUTLINED_FUNCTION_18_0(v50);
    v41 = 0;
  }

  *&v16[v12[16]] = v41;
  sub_26A57333C(v16, a9);
  __swift_destroy_boxed_opaque_existential_1(a2);
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t type metadata accessor for SummaryItemShortNumberView(uint64_t a1)
{
  result = qword_2803ADAF8;
  if (!qword_2803ADAF8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t SummaryItemShortNumberView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91C0, &unk_26A854CB0);
  OUTLINED_FUNCTION_79(v3);
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v4);
  v6 = &v20[-v5];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91C8, &unk_26A856820);
  OUTLINED_FUNCTION_79(v7);
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v8);
  sub_26A56F1A8(&v20[-v9]);
  v22 = 0u;
  v23 = 0u;
  v24 = 1;
  sub_26A56F390();
  sub_26A56F4E4(v6);
  sub_26A84F3A8();
  OUTLINED_FUNCTION_22_0();
  __swift_storeEnumTagSinglePayload(v10, v11, v12, v13);
  v21 = v1;
  sub_26A4C6F98();
  v14 = swift_allocObject();
  *(v14 + 16) = sub_26A68CCBC;
  *(v14 + 24) = 0;
  v15 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803ADAE0, &unk_26A85F660) + 36);
  *(v15 + 16) = swift_getKeyPath();
  *(v15 + 24) = 0;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91D8, &qword_26A8575D0);
  v17 = *(v16 + 40);
  *(v15 + v17) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A9190, &unk_26A854C50);
  swift_storeEnumTagMultiPayload();
  v18 = v15 + *(v16 + 44);
  *v18 = swift_getKeyPath();
  *(v18 + 8) = 0;
  *v15 = sub_26A4D1F7C;
  *(v15 + 8) = v14;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803ADAE8, &qword_26A85F698);
  *(a1 + *(result + 36)) = 9;
  return result;
}

uint64_t sub_26A56FEF0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v44 = a2;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AA1A0, &qword_26A855DA0);
  MEMORY[0x28223BE20](v43);
  v38 = (v35 - v3);
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803ADB20, &unk_26A85F740);
  MEMORY[0x28223BE20](v41);
  v42 = v35 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AA190, &qword_26A855D98);
  MEMORY[0x28223BE20](v5 - 8);
  v36 = (v35 - v6);
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AA180, &qword_26A855D90);
  MEMORY[0x28223BE20](v39);
  v37 = v35 - v7;
  v8 = sub_26A84F3A8();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AA170, &qword_26A855D88);
  MEMORY[0x28223BE20](v12);
  v40 = v35 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803ADB28, &unk_26A85F750);
  MEMORY[0x28223BE20](v14);
  v16 = v35 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AA160, &qword_26A855D80);
  MEMORY[0x28223BE20](v17);
  v19 = v35 - v18;
  if (sub_26A56F050())
  {
    v20 = sub_26A84FA78();
    v21 = *(a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91A0, &qword_26A854C60) + 28));
    *v19 = v20;
    *(v19 + 1) = v21;
    v19[16] = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803ADB38, &qword_26A85F768);
    sub_26A5710A0(a1);
    v22 = &qword_2803AA160;
    v23 = &qword_26A855D80;
    sub_26A4DBD68(v19, v16, &qword_2803AA160, &qword_26A855D80);
    swift_storeEnumTagMultiPayload();
    sub_26A4DBCC8(&qword_2803AA158, &qword_2803AA160, &qword_26A855D80, MEMORY[0x277CE1138]);
    sub_26A4D70E4();
    sub_26A84FDF8();
    v24 = v19;
  }

  else
  {
    v35[0] = v14;
    v35[1] = v17;
    sub_26A56F4E4(v11);
    v25 = sub_26A84F388();
    (*(v9 + 8))(v11, v8);
    if (v25)
    {
      v26 = sub_26A84FC08();
      v27 = *(a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91A0, &qword_26A854C60) + 28));
      v28 = v36;
      *v36 = v26;
      *(v28 + 8) = v27;
      *(v28 + 16) = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803ADB30, &qword_26A85F760);
      sub_26A571978(a1);
      sub_26A851458();
      sub_26A84F628();
      v29 = v37;
      sub_26A4DBDB4(v28, v37, &qword_2803AA190, &qword_26A855D98);
      memcpy((v29 + *(v39 + 36)), __src, 0x70uLL);
      v30 = &qword_2803AA180;
      v31 = &qword_26A855D90;
      sub_26A4DBD68(v29, v42, &qword_2803AA180, &qword_26A855D90);
    }

    else
    {
      v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91A0, &qword_26A854C60);
      v29 = v38;
      *v38 = *(a1 + *(v33 + 28));
      *(v29 + 8) = 0;
      sub_26A5705DC(a1);
      v30 = &qword_2803AA1A0;
      v31 = &qword_26A855DA0;
      sub_26A4DBD68(v29, v42, &qword_2803AA1A0, &qword_26A855DA0);
    }

    swift_storeEnumTagMultiPayload();
    sub_26A4D7170();
    sub_26A4D7228();
    v32 = v40;
    sub_26A84FDF8();
    sub_26A4DBD10(v29, v30, v31);
    v22 = &qword_2803AA170;
    v23 = &qword_26A855D88;
    sub_26A4DBD68(v32, v16, &qword_2803AA170, &qword_26A855D88);
    swift_storeEnumTagMultiPayload();
    sub_26A4DBCC8(&qword_2803AA158, &qword_2803AA160, &qword_26A855D80, MEMORY[0x277CE1138]);
    sub_26A4D70E4();
    sub_26A84FDF8();
    v24 = v32;
  }

  return sub_26A4DBD10(v24, v22, v23);
}