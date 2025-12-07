_BYTE *storeEnumTagSinglePayload for SummarizationXPCServer.Entitlement(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
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
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *a1)
{
  v1 = a1;
  if ((*(*(a1[3] - 8) + 82) & 2) != 0)
  {
    *a1 = swift_allocBox();
    return v2;
  }

  return v1;
}

uint64_t sub_231D1C6C0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_231D1C708()
{
  OUTLINED_FUNCTION_29();
  v1 = sub_231E10EC0();
  OUTLINED_FUNCTION_6(v1);
  v2 = sub_231E0FE00();
  OUTLINED_FUNCTION_47(v2);
  v3 = swift_task_alloc();
  *(v0 + 16) = v3;
  *v3 = v0;
  v3[1] = sub_231CBFF60;

  return sub_231D18B54();
}

char *sub_231D1C82C(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_231D1C9AC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_231D1C84C()
{
  OUTLINED_FUNCTION_34_4();
  swift_task_alloc();
  OUTLINED_FUNCTION_58_0();
  *(v0 + 16) = v1;
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_11_10(v1);

  return sub_231D1BC04(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_231D1C8FC()
{
  OUTLINED_FUNCTION_34_4();
  swift_task_alloc();
  OUTLINED_FUNCTION_58_0();
  *(v0 + 16) = v1;
  *v1 = v2;
  OUTLINED_FUNCTION_11_10(v1);

  return sub_231D1BEA0();
}

char *sub_231D1C9AC(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74AB0, &unk_231E1C220);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 8);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[8 * v8] <= v12)
    {
      memmove(v12, v13, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 8 * v8);
  }

  return v10;
}

void type metadata accessor for CFError()
{
  if (!qword_27DD74AC0)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_27DD74AC0);
    }
  }
}

uint64_t OUTLINED_FUNCTION_7_10()
{
}

uint64_t OUTLINED_FUNCTION_33_6@<X0>(int a1@<W8>)
{
  if (a1 == 1)
  {
    return v1 + 5;
  }

  else
  {
    return v1;
  }
}

uint64_t OUTLINED_FUNCTION_37_3()
{
}

uint64_t sub_231D1CBD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_231E11670();
  OUTLINED_FUNCTION_24();
  MEMORY[0x28223BE20](v4);
  (*(v6 + 16))(&v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a3);
  result = sub_231E11640();
  if (v8)
  {
    sub_231D1CCB4(result, v8);
  }

  return result;
}

uint64_t sub_231D1CCB4(uint64_t a1, char *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&dword_27DD74AD0, &qword_231E16C40);
  MEMORY[0x28223BE20](v4 - 8);
  v150 = &v135 - v5;
  v155 = sub_231E10470();
  OUTLINED_FUNCTION_24();
  v151 = v6;
  v8 = MEMORY[0x28223BE20](v7);
  v157 = &v135 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v156 = &v135 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74AD8, &unk_231E1C258);
  MEMORY[0x28223BE20](v11 - 8);
  v154 = (&v135 - v12);
  v160 = sub_231E0F4A0();
  OUTLINED_FUNCTION_24();
  v14 = v13;
  MEMORY[0x28223BE20](v15);
  v159 = &v135 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_231D1DBA8();

  v153 = a1;
  v158 = a2;
  v17 = sub_231D1DBEC(a1, a2);
  v18 = [v17 newStringAccumulatorWithOptions:17 lengthLimit:sub_231E0F410()];
  v19 = swift_allocObject();
  *(v19 + 16) = v18;
  v169 = sub_231D1DC60;
  v170 = v19;
  aBlock = MEMORY[0x277D85DD0];
  v166 = 1107296256;
  v167 = sub_231D1DD14;
  v168 = &block_descriptor_1;
  v20 = _Block_copy(&aBlock);
  v21 = v170;
  swift_unknownObjectRetain();

  [v17 setFoundMessageBodyElementBlock_];
  _Block_release(v20);
  v146 = v17;
  [v17 parse];
  v145 = v18;
  v22 = [v18 accumulatedString];
  sub_231E11620();
  OUTLINED_FUNCTION_3_12();

  aBlock = v21;
  v166 = v17;
  v163 = 0x5D2E2E2E5BLL;
  v164 = 0xE500000000000000;
  v161 = sub_231CE11D8();
  v23 = sub_231E11C20();

  v24 = *(v23 + 16);
  v148 = v14;
  if (v24)
  {
    v25 = (v14 + 8);
    v26 = (v23 + 40);
    v162 = MEMORY[0x277D84F90];
    do
    {
      v27 = *v26;
      aBlock = *(v26 - 1);
      v166 = v27;

      v28 = v159;
      sub_231E0F490();
      v29 = sub_231E11C30();
      v31 = v30;
      (*v25)(v28, v160);

      v32 = HIBYTE(v31) & 0xF;
      if ((v31 & 0x2000000000000000) == 0)
      {
        v32 = v29 & 0xFFFFFFFFFFFFLL;
      }

      if (v32)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v37 = OUTLINED_FUNCTION_0_1();
          v162 = sub_231CE0B9C(v37, v38, v39, v40);
        }

        v34 = *(v162 + 2);
        v33 = *(v162 + 3);
        if (v34 >= v33 >> 1)
        {
          v41 = OUTLINED_FUNCTION_2_12(v33);
          v162 = sub_231CE0B9C(v41, v34 + 1, 1, v162);
        }

        v35 = v162;
        *(v162 + 2) = v34 + 1;
        v36 = &v35[16 * v34];
        *(v36 + 4) = v29;
        *(v36 + 5) = v31;
      }

      else
      {
      }

      v26 += 2;
      --v24;
    }

    while (v24);
  }

  else
  {
    v162 = MEMORY[0x277D84F90];
  }

  v42 = v158;

  v43 = sub_231D1DBEC(v153, v42);
  v44 = [objc_allocWithZone(MEMORY[0x277D070B8]) init];
  [v43 addSubparser_];
  v45 = [v43 newStringAccumulatorWithOptions:33 lengthLimit:sub_231E0F410()];
  v46 = [v43 newStringAccumulatorWithOptions:33 lengthLimit:sub_231E0F410()];
  v47 = swift_allocObject();
  *(v47 + 16) = v45;
  *(v47 + 24) = v46;
  v169 = sub_231D1DF88;
  v170 = v47;
  aBlock = MEMORY[0x277D85DD0];
  v166 = 1107296256;
  v167 = sub_231D1DD8C;
  v168 = &block_descriptor_6;
  v48 = _Block_copy(&aBlock);
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();

  [v44 setFoundTextBlock_];
  _Block_release(v48);
  v49 = swift_allocObject();
  *(v49 + 16) = v46;
  v169 = sub_231D1DFB8;
  v170 = v49;
  aBlock = MEMORY[0x277D85DD0];
  v166 = 1107296256;
  v167 = sub_231D1DD14;
  v168 = &block_descriptor_12;
  v50 = _Block_copy(&aBlock);
  v51 = v170;
  swift_unknownObjectRetain();

  v143 = v44;
  [v44 setFoundWhitespaceBlock_];
  _Block_release(v50);
  v144 = v43;
  [v43 parse];
  v142 = v45;
  v52 = [v45 accumulatedString];
  v140 = sub_231E11620();
  v139 = v53;

  v141 = v46;
  p_aBlock = [v46 accumulatedString];
  v55 = sub_231E11620();
  v57 = v56;

  v58 = *(v162 + 2);
  v59 = HIBYTE(v57) & 0xF;
  if (!v58)
  {
    v92 = v55 & 0xFFFFFFFFFFFFLL;
    v158 = MEMORY[0x277D84F90];
    v64 = 15;
    goto LABEL_37;
  }

  v60 = v55 & 0xFFFFFFFFFFFFLL;
  v137 = HIBYTE(v57) & 0xF;
  v136 = v55 & 0xFFFFFFFFFFFFLL;
  if ((v57 & 0x2000000000000000) != 0)
  {
    v60 = HIBYTE(v57) & 0xF;
  }

  v61 = 4 * v60;
  v138 = v57 >> 60;
  v62 = 7;
  if (((v57 >> 60) & ((v55 & 0x800000000000000) == 0)) != 0)
  {
    v62 = 11;
  }

  v152 = (v62 | (v60 << 16));
  v149 = (v148 + 8);
  v63 = v162 + 40;
  v158 = MEMORY[0x277D84F90];
  v64 = 15;
  v153 = 4 * v60;
  do
  {
    if (v61 < v64 >> 14)
    {
      goto LABEL_34;
    }

    v65 = *(v63 - 1);
    v66 = *v63;
    v67 = v55;
    aBlock = v55;
    v166 = v57;
    v68 = v57;
    v163 = v65;
    v164 = v66;
    v69 = sub_231E0F9B0();
    v70 = v154;
    __swift_storeEnumTagSinglePayload(v154, 1, 1, v69);

    p_aBlock = &aBlock;
    sub_231E11C50();
    OUTLINED_FUNCTION_3_12();
    v72 = v71;
    sub_231D1DFCC(v70);

    if ((v72 & 1) != 0 || &aBlock >> 14 < v64 >> 14)
    {
      v57 = v68;
LABEL_32:
      v55 = v67;
      goto LABEL_33;
    }

    v55 = v67;
    v57 = v68;
    v73 = sub_231E117C0();
    if ((v73 ^ v74) >= 0x4000)
    {
      aBlock = v73;
      v166 = v74;
      v167 = v75;
      v168 = v76;
      v77 = v159;
      sub_231E0F490();
      sub_231D1E034();
      v78 = sub_231E11C30();
      v80 = v79;
      (*v149)(v77, v160);

      aBlock = v78;
      v166 = v80;
      p_aBlock = sub_231E117B0();
      v82 = v81;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v87 = OUTLINED_FUNCTION_0_1();
        v158 = sub_231CE0B9C(v87, v88, v89, v90);
      }

      v84 = *(v158 + 2);
      v83 = *(v158 + 3);
      if (v84 >= v83 >> 1)
      {
        v91 = OUTLINED_FUNCTION_2_12(v83);
        v158 = sub_231CE0B9C(v91, v84 + 1, 1, v158);
      }

      v85 = v158;
      *(v158 + 2) = v84 + 1;
      v86 = &v85[16 * v84];
      *(v86 + 4) = p_aBlock;
      *(v86 + 5) = v82;
      v64 = v51;
      goto LABEL_32;
    }

    v64 = v51;
LABEL_33:
    v61 = v153;
LABEL_34:
    v63 += 16;
    --v58;
  }

  while (v58);
  v59 = v137;
  v92 = v136;
LABEL_37:
  if ((v57 & 0x2000000000000000) != 0)
  {
    v93 = v59;
  }

  else
  {
    v93 = v92;
  }

  if (4 * v93 >= v64 >> 14)
  {
    sub_231E117C0();
    OUTLINED_FUNCTION_3_12();
    v98 = v97;
    v100 = v99;

    MEMORY[0x23837CBB0](p_aBlock, v51, v98, v100);
    OUTLINED_FUNCTION_3_12();

    aBlock = p_aBlock;
    v166 = v51;
    v101 = v159;
    sub_231E0F490();
    v102 = sub_231E11C30();
    v104 = v103;
    v95 = v148;
    (*(v148 + 8))(v101, v160);

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      goto LABEL_67;
    }

    goto LABEL_43;
  }

  v94 = *(v158 + 2);
  v95 = v148;
  v96 = v162;
LABEL_46:
  if (*(v96 + 2) == v94)
  {
    if (v94)
    {
      v109 = 0;
      v154 = (v95 + 8);
      v152 = (v151 + 16);
      v149 = (v151 + 8);
      v148 = v151 + 32;
      v110 = v96 + 40;
      v111 = v158 + 40;
      v112 = MEMORY[0x277D84F90];
      v153 = v94;
      while (1)
      {
        v113 = *v111;
        aBlock = *(v111 - 1);
        v166 = v113;

        v104 = v159;
        sub_231E0F490();
        v102 = sub_231E11C30();
        v115 = v114;
        (*v154)(v104, v160);

        v116 = HIBYTE(v115) & 0xF;
        if ((v115 & 0x2000000000000000) == 0)
        {
          v116 = v102 & 0xFFFFFFFFFFFFLL;
        }

        if (v116)
        {
          if (v109 >= *(v162 + 2))
          {
            __break(1u);
LABEL_66:
            __break(1u);
LABEL_67:
            v130 = OUTLINED_FUNCTION_0_1();
            v158 = sub_231CE0B9C(v130, v131, v132, v133);
LABEL_43:
            v106 = *(v158 + 2);
            v105 = *(v158 + 3);
            v94 = v106 + 1;
            v96 = v162;
            if (v106 >= v105 >> 1)
            {
              v134 = OUTLINED_FUNCTION_2_12(v105);
              v158 = sub_231CE0B9C(v134, v106 + 1, 1, v158);
            }

            v107 = v158;
            *(v158 + 2) = v94;
            v108 = &v107[16 * v106];
            *(v108 + 4) = v102;
            *(v108 + 5) = v104;
            goto LABEL_46;
          }

          if (v109 >= *(v158 + 2))
          {
            goto LABEL_66;
          }

          v117 = sub_231E0F950();
          __swift_storeEnumTagSinglePayload(v150, 1, 1, v117);

          v118 = v156;
          v119 = v155;
          sub_231E10460();
          (*v152)(v157, v118, v119);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v123 = OUTLINED_FUNCTION_0_1();
            v112 = sub_231D1DE9C(v123, v124, v125, v112);
          }

          v94 = v153;
          v121 = v112[2];
          v120 = v112[3];
          if (v121 >= v120 >> 1)
          {
            v126 = OUTLINED_FUNCTION_2_12(v120);
            v112 = sub_231D1DE9C(v126, v121 + 1, 1, v112);
          }

          v95 = v151;
          v122 = v155;
          (*(v151 + 8))(v156, v155);
          v112[2] = v121 + 1;
          (*(v95 + 32))(v112 + ((*(v95 + 80) + 32) & ~*(v95 + 80)) + *(v95 + 72) * v121, v157, v122);
        }

        ++v109;
        v110 += 16;
        v111 += 16;
        if (v94 == v109)
        {
          swift_unknownObjectRelease();
          swift_unknownObjectRelease();
          swift_unknownObjectRelease();

          goto LABEL_64;
        }
      }
    }

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
  }

  else
  {

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
  }

  v112 = MEMORY[0x277D84F90];
LABEL_64:
  v127 = v147;
  OUTLINED_FUNCTION_4_12((v147 + 2), &aBlock);
  v127[2] = v112;

  OUTLINED_FUNCTION_4_12((v127 + 3), &v163);
  v128 = v139;
  v127[3] = v140;
  v127[4] = v128;
}

unint64_t sub_231D1DBA8()
{
  result = qword_27DD74AE0;
  if (!qword_27DD74AE0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27DD74AE0);
  }

  return result;
}

id sub_231D1DBEC(uint64_t a1, uint64_t a2)
{
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v3 = sub_231E115F0();

  v4 = [v2 initWithHTML_];

  return v4;
}

void sub_231D1DC60(void *a1)
{
  v3 = *(v1 + 16);
  if ([a1 valueForAttributes_])
  {
    [v3 appendInnerTextWithConsumableNode_];
    v4 = sub_231E115F0();
    [v3 appendCustomEntityWithTag:0 stringRepresentation:v4];
  }
}

uint64_t sub_231D1DD14(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);

  v3 = swift_unknownObjectRetain();
  v2(v3);

  return swift_unknownObjectRelease();
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_231D1DD8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a1 + 32);

  v7 = swift_unknownObjectRetain();
  v6(v7, a3, a4);

  return swift_unknownObjectRelease();
}

uint64_t sub_231D1DE08()
{

  return v0;
}

uint64_t sub_231D1DE30()
{
  sub_231D1DE08();

  return swift_deallocClassInstance();
}

void *sub_231D1DE64()
{
  result = swift_allocObject();
  result[2] = MEMORY[0x277D84F90];
  result[3] = 0;
  result[4] = 0xE000000000000000;
  return result;
}

void *sub_231D1DE9C(void *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 16);
  v9 = sub_231D1E0AC(v8, v7);
  v10 = *(sub_231E10470() - 8);
  if (v5)
  {
    v11 = (*(v10 + 80) + 32) & ~*(v10 + 80);
    sub_231D1E1A8(a4 + v11, v8, v9 + v11);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v9;
}

id sub_231D1DF88(id result, uint64_t a2)
{
  if (a2)
  {
    if (a2 != 1)
    {
      return result;
    }

    v3 = (v2 + 24);
  }

  else
  {
    v3 = (v2 + 16);
  }

  return [*v3 appendInnerTextWithConsumableNode_];
}

uint64_t sub_231D1DFCC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74AD8, &unk_231E1C258);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_231D1E034()
{
  result = qword_27DD74B50;
  if (!qword_27DD74B50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD74B50);
  }

  return result;
}

void *sub_231D1E0AC(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74B60, &qword_231E1C298);
  v4 = *(sub_231E10470() - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v7);
  if (v5)
  {
    if ((result - v6) != 0x8000000000000000 || v5 != -1)
    {
      v7[2] = a1;
      v7[3] = 2 * ((result - v6) / v5);
      return v7;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_231D1E1A8(unint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a3 < a1 || (result = sub_231E10470(), a1 + *(*(result - 8) + 72) * a2 <= a3))
  {
    sub_231E10470();

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (a3 != a1)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

void sub_231D1E298(void *a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v7 = objc_autoreleasePoolPush();
  sub_231D1E30C(v3, a1, a2 & 1, a3);

  objc_autoreleasePoolPop(v7);
}

uint64_t sub_231D1E30C@<X0>(void *a1@<X0>, void *a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v107 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&dword_27DD74AD0, &qword_231E16C40);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = v92 - v8;
  v106 = sub_231E0F950();
  OUTLINED_FUNCTION_24();
  v103 = v10;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_139();
  v102 = v12;
  MEMORY[0x28223BE20](v13);
  v108 = v92 - v14;
  v15 = sub_231E10E30();
  OUTLINED_FUNCTION_24();
  v17 = v16;
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_139();
  v97 = v19;
  MEMORY[0x28223BE20](v20);
  v22 = v92 - v21;
  v23 = [a1 attributeSet];
  v24 = sub_231CC33AC(v23, &selRef_uniqueIdentifier);
  if (v25)
  {
    v96 = v17;
    v100 = v25;
    v98 = v24;
    sub_231DF3D04(0, a2);
    v104 = v26;
    sub_231DF3D04(1, a2);
    v105 = v27;
    v28 = [a1 attributeSet];
    if (a3)
    {
      v29 = &selRef_contentSnippet;
    }

    else
    {
      v29 = &selRef_textContentNoCopy;
    }

    v99 = sub_231CC1488(v28, v29);
    v101 = v30;
    v31 = [v23 isCommunicationNotification];
    v32 = a1;
    if (v31)
    {
      v33 = v31;
      v34 = [v31 BOOLValue];

      if (v34)
      {
        if (*(v104 + 16))
        {
          v35 = sub_231CC6C88(a2, v105);

          v105 = v35;
        }
      }
    }

    v42 = sub_231CC33AC(v23, &selRef_creator);
    v44 = v43;
    v45 = sub_231DE8A04(1);
    v47 = v46;
    if (v44)
    {
      if (v42 == v45 && v44 == v46)
      {
      }

      else
      {
        v49 = sub_231E12100();

        if ((v49 & 1) == 0)
        {
          goto LABEL_33;
        }
      }

      v50 = sub_231D1ED44(v23);
      if (v51 >> 60 != 15)
      {
        v52 = v50;
        v53 = v51;
        v47 = sub_231CC1784(0, &qword_27DD74520, 0x277CCAAC8);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74528, &unk_231E16F80);
        v54 = swift_allocObject();
        *(v54 + 16) = xmmword_231E1C2A0;
        *(v54 + 32) = sub_231CC1784(0, &qword_27DD74B68, 0x277CBEAC0);
        *(v54 + 40) = sub_231CC1784(0, &qword_27DD74B70, 0x277CBEA60);
        *(v54 + 48) = sub_231CC1784(0, &qword_2814CBD70, 0x277CCABB0);
        *(v54 + 56) = sub_231CC1784(0, &qword_2814CAEA8, 0x277CCACA8);
        v55 = v109;
        sub_231E11B00();
        if (v55)
        {

          sub_231CF4340(v52, v53);

          v109 = 0;
          goto LABEL_33;
        }

        v109 = 0;

        if (v111)
        {
          v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74B78, &qword_231E1C2B0);
          if ((OUTLINED_FUNCTION_2_13(v56, v57, v58, v56) & 1) == 0)
          {
LABEL_32:
            sub_231CF4340(v52, v53);
            goto LABEL_33;
          }

          v47 = v112;
          sub_231D1352C(0xD00000000000001DLL, 0x8000000231E325D0, v112, &v110);

          if (v111)
          {
            if (OUTLINED_FUNCTION_2_13(v59, v60, v61, MEMORY[0x277D839B0]) && (v112 & 1) != 0)
            {
              v95 = v52;
              v99 = a1;

              v62 = sub_231CB4EEC();
              v63 = v96;
              v47 = v97;
              v64 = *(v96 + 16);
              v101 = v15;
              v64(v97, v62, v15);
              v65 = v100;

              v66 = sub_231E10E10();
              v67 = sub_231E11AB0();

              LODWORD(v94) = v67;
              if (os_log_type_enabled(v66, v67))
              {
                v68 = swift_slowAlloc();
                v93 = v53;
                v69 = v68;
                v47 = swift_slowAlloc();
                *&v110 = v47;
                *v69 = 136315138;
                *(v69 + 4) = sub_231CB5000(v98, v65, &v110);
                _os_log_impl(&dword_231CAE000, v66, v94, "Setting body of 'Loading' notification from Mail (id: %s) to an empty string for summarization purposes", v69, 0xCu);
                __swift_destroy_boxed_opaque_existential_0(v47);
                MEMORY[0x23837E1D0](v47, -1, -1);
                v70 = v69;
                v53 = v93;
                MEMORY[0x23837E1D0](v70, -1, -1);

                (*(v63 + 8))(v97, v101);
              }

              else
              {

                (*(v63 + 8))(v47, v101);
              }

              v32 = v99;
              sub_231CF4340(v95, v53);
              v99 = 0;
              v101 = 0xE000000000000000;
              goto LABEL_33;
            }

            goto LABEL_32;
          }
        }

        sub_231CF4340(v52, v53);
        sub_231CE1118(&v110, &dword_27DD741E0, &qword_231E15D70);
      }
    }

    else
    {
    }

LABEL_33:
    v71 = v32;
    v72 = sub_231CC33AC(v23, &selRef_domainIdentifier);
    v96 = v73;
    v97 = v72;
    v74 = sub_231CC33AC(v23, &selRef_bundleID);
    v94 = v75;
    v95 = v74;
    v76 = [v23 contentCreationDate];
    if (v76)
    {
      v77 = v76;
      v78 = v102;
      sub_231E0F910();

      v47 = (v103 + 32);
      v79 = *(v103 + 32);
      v80 = v78;
      v81 = v106;
      v79(v9, v80, v106);
      __swift_storeEnumTagSinglePayload(v9, 0, 1, v81);
      v79(v108, v9, v81);
    }

    else
    {
      v82 = v106;
      __swift_storeEnumTagSinglePayload(v9, 1, 1, v106);
      sub_231E0F920();
      if (__swift_getEnumTagSinglePayload(v9, 1, v82) != 1)
      {
        sub_231CE1118(v9, &dword_27DD74AD0, &qword_231E16C40);
      }
    }

    v106 = sub_231CC33AC(v23, &selRef_creator);
    v103 = v83;
    v102 = sub_231CC33AC(v23, &selRef_title);
    v93 = v84;
    v92[1] = sub_231CC33AC(v23, &selRef_subtitle);
    v92[0] = v85;
    sub_231CC33AC(v23, &selRef_threadIdentifier);
    v86 = [v23 isGroupThread];
    if (v86)
    {
      OUTLINED_FUNCTION_3_13(v86);
    }

    v87 = [v23 notificationTimeSensitive];
    if (v87)
    {
      OUTLINED_FUNCTION_3_13(v87);
    }

    v88 = [v23 notificationCritical];
    if (v88)
    {
      OUTLINED_FUNCTION_3_13(v88);
    }

    v89 = [v23 isCommunicationNotification];
    if (v89)
    {
      OUTLINED_FUNCTION_3_13(v89);
    }

    [v71 isUpdate];
    sub_231D2E5A0();
    v41 = v107;
    sub_231E10A10();

    v40 = 0;
    goto LABEL_46;
  }

  v36 = sub_231CB4EEC();
  (*(v17 + 16))(v22, v36, v15);
  v37 = sub_231E10E10();
  v38 = sub_231E11AE0();
  if (os_log_type_enabled(v37, v38))
  {
    v39 = swift_slowAlloc();
    *v39 = 0;
    _os_log_impl(&dword_231CAE000, v37, v38, "No unique identifier while creating notification entity", v39, 2u);
    MEMORY[0x23837E1D0](v39, -1, -1);
  }

  (*(v17 + 8))(v22, v15);
  v40 = 1;
  v41 = v107;
LABEL_46:
  v90 = sub_231E10A30();
  return __swift_storeEnumTagSinglePayload(v41, v40, 1, v90);
}

uint64_t sub_231D1ED44(void *a1)
{
  v1 = [a1 extraData];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_231E0F840();

  return v3;
}

id OUTLINED_FUNCTION_3_13(void *a1)
{

  return [a1 (v1 + 1144)];
}

uint64_t sub_231D1EDC0()
{
  result = sub_231E11620();
  qword_2814CE610 = result;
  *algn_2814CE618 = v1;
  return result;
}

uint64_t sub_231D1EDF0()
{
  OUTLINED_FUNCTION_18();
  v1[15] = v2;
  v1[16] = v0;
  v1[14] = v3;
  v4 = _s14descr2846EFBA1C23InMemoryMailResultCacheC6ResultVMa(0);
  OUTLINED_FUNCTION_47(v4);
  v1[17] = OUTLINED_FUNCTION_55();
  v5 = sub_231E10E30();
  v1[18] = v5;
  OUTLINED_FUNCTION_6(v5);
  v1[19] = v6;
  v1[20] = OUTLINED_FUNCTION_69();
  v1[21] = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_10();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_231D1EEC4()
{
  v2 = sub_231D1F600();
  if (v2 != 31)
  {
    v38 = v2;
    sub_231DC4C1C();
    v39 = OUTLINED_FUNCTION_73_0();
    v40(v39);

    v41 = sub_231E10E10();
    sub_231E11AF0();
    OUTLINED_FUNCTION_148_0();
    v42 = os_log_type_enabled(v41, v1);
    v43 = *(v0 + 168);
    v45 = *(v0 + 144);
    v44 = *(v0 + 152);
    v46 = MEMORY[0x277D84F70];
    if (v42)
    {
      v98 = *(v0 + 168);
      v47 = OUTLINED_FUNCTION_98_0();
      *&v99 = OUTLINED_FUNCTION_68();
      *v47 = 136446466;
      v48 = sub_231DDB1E8();
      OUTLINED_FUNCTION_175(v48, v49, v50, v51, v52, v53);
      OUTLINED_FUNCTION_117_0();
      OUTLINED_FUNCTION_66_3();
      sub_231CC8F48(v38);
      OUTLINED_FUNCTION_175(v54, v55, v56, v57, v58, v59);
      OUTLINED_FUNCTION_117_0();
      *(v47 + 14) = v46;
      OUTLINED_FUNCTION_53_1(&dword_231CAE000, v60, v61, "%{public}s Invalid (%s)");
      swift_arrayDestroy();
      OUTLINED_FUNCTION_31_1();
      OUTLINED_FUNCTION_14();

      (*(v44 + 8))(v98, v45);
    }

    else
    {

      (*(v44 + 8))(v43, v45);
    }

    v62 = [**(v0 + 128) attributeSet];
    sub_231DF7374();
    v63 = sub_231E115F0();

    v64 = [v62 attributeForKey_];

    if (v64)
    {
      sub_231E11C80();
      swift_unknownObjectRelease();
    }

    else
    {
      v99 = 0u;
      v100 = 0u;
    }

    *(v0 + 16) = v99;
    *(v0 + 32) = v100;
    if (*(v0 + 40))
    {
      if (swift_dynamicCast())
      {
        v66 = *(v0 + 104);
        v65 = *(v0 + 112);
        if (v65)
        {
          v67 = *(v0 + 96);
          v68 = *(v0 + 136);
          v69 = *(v65 + 144);
          sub_231CC3610(0, 0, 128, v68);
          type metadata accessor for SpotlightWriter();
          v70 = sub_231DE8A04(1);
          sub_231CD6294(v70, v71, v67, v66);
          v73 = v72;
          v75 = v74;

          (*(*v69 + 128))(v68, v73, v75);

          sub_231CB4E90(v68);
        }

        else
        {
        }
      }
    }

    else
    {
      sub_231CE1118(v0 + 16, &dword_27DD741E0, &qword_231E15D70);
    }

    v93 = *(v0 + 120);
    v94 = OBJC_IVAR____TtC22ProactiveSummarization22SummarizationAnalytics_invalidReason;
    OUTLINED_FUNCTION_4_12(v93 + OBJC_IVAR____TtC22ProactiveSummarization22SummarizationAnalytics_invalidReason, v0 + 48);
    *(v93 + v94) = v38;
LABEL_25:

    OUTLINED_FUNCTION_8_8();
    OUTLINED_FUNCTION_107_1();

    __asm { BRAA            X2, X16 }
  }

  v3 = sub_231D1FB54();
  *(v0 + 176) = v3;
  *(v0 + 200) = v4;
  if (v4 == -1)
  {
    goto LABEL_25;
  }

  v5 = v3;
  v6 = v4;
  sub_231CB4EEC();
  v7 = OUTLINED_FUNCTION_41_4();
  v8(v7);

  v9 = OUTLINED_FUNCTION_6_11();
  sub_231D26064(v9, v10, v11);
  v12 = sub_231E10E10();
  v13 = sub_231E11AF0();

  v14 = OUTLINED_FUNCTION_6_11();
  sub_231CBA16C(v14, v15, v16);
  v17 = os_log_type_enabled(v12, v13);
  v18 = *(v0 + 152);
  v19 = *(v0 + 144);
  if (v17)
  {
    v97 = *(v0 + 160);
    v20 = OUTLINED_FUNCTION_98_0();
    OUTLINED_FUNCTION_68();
    *v20 = 136446466;
    v21 = sub_231DDB1E8();
    OUTLINED_FUNCTION_175(v21, v22, v23, v24, v25, v26);
    OUTLINED_FUNCTION_93_2();
    *(v20 + 4) = v19;
    *(v20 + 12) = 2080;
    v27 = OUTLINED_FUNCTION_6_11();
    sub_231CFFD6C(v27, v28, v29);
    OUTLINED_FUNCTION_175(v30, v31, v32, v33, v34, v35);
    OUTLINED_FUNCTION_93_2();
    *(v20 + 14) = v19;
    OUTLINED_FUNCTION_59_4(&dword_231CAE000, v36, v37, "%{public}s Ineligible (%s");
    OUTLINED_FUNCTION_92_1();
    OUTLINED_FUNCTION_30_4();
    OUTLINED_FUNCTION_31_1();

    (*(v18 + 8))(v97, v19);
  }

  else
  {

    v76 = OUTLINED_FUNCTION_67_3();
    v78(v76, v77);
  }

  v79 = *(v0 + 112);
  v80 = *(v0 + 120) + OBJC_IVAR____TtC22ProactiveSummarization22SummarizationAnalytics_ineligibleReason;
  OUTLINED_FUNCTION_4_12(v80, v0 + 72);
  *v80 = v5;
  *(v80 + 8) = 0;
  *(v80 + 16) = v6;
  v81 = OUTLINED_FUNCTION_6_11();
  sub_231CC3500(v81, v82, v83);
  OUTLINED_FUNCTION_94_2();
  if (!v79)
  {
    v90 = OUTLINED_FUNCTION_6_11();
    sub_231CBA16C(v90, v91, v92);
    goto LABEL_25;
  }

  v84 = *(v0 + 112);
  v85 = swift_task_alloc();
  *(v0 + 184) = v85;
  v86 = *(v0 + 120);
  *(v85 + 16) = v84;
  *(v85 + 24) = v5;
  *(v85 + 32) = 0;
  *(v85 + 40) = v6;
  *(v85 + 48) = v86;

  v87 = swift_task_alloc();
  *(v0 + 192) = v87;
  *v87 = v0;
  v87[1] = sub_231D1F45C;
  OUTLINED_FUNCTION_13_0();
  OUTLINED_FUNCTION_107_1();

  return sub_231DDB61C();
}

void sub_231D1F45C()
{
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_21();
  v3 = v2;
  OUTLINED_FUNCTION_7_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_4();
  *v6 = v5;

  if (v0)
  {
  }

  else
  {
    sub_231CBA16C(*(v3 + 176), 0, *(v3 + 200));

    OUTLINED_FUNCTION_12_0();

    MEMORY[0x2822009F8](v7, v8, v9);
  }
}

uint64_t sub_231D1F588()
{
  OUTLINED_FUNCTION_18();

  OUTLINED_FUNCTION_18_6();

  return v0(0);
}

uint64_t sub_231D1F600()
{
  v64 = sub_231E0F950();
  OUTLINED_FUNCTION_24();
  v62 = v2;
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_4_1();
  v6 = v5 - v4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&dword_27DD74AD0, &qword_231E16C40);
  v8 = OUTLINED_FUNCTION_47(v7);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_3();
  v61 = v9 - v10;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_110_2();
  MEMORY[0x28223BE20](v12);
  v63 = &v59 - v13;
  v60 = v0;
  v14 = *v0;
  v15 = [*v0 attributeSet];
  v16 = [v14 uniqueIdentifier];
  sub_231E11620();

  v17 = PSUMailAttachmentSpotlightPrefix();
  sub_231E11620();

  OUTLINED_FUNCTION_140_0();
  v18 = sub_231E11780();

  if (v18 & 1) != 0 || (v19 = [v14 uniqueIdentifier], sub_231E11620(), v19, v20 = PSUMailRichLinkSpotlightPrefix(), sub_231E11620(), OUTLINED_FUNCTION_102_1(), v20, LOBYTE(v20) = sub_231E11780(), , , (v20))
  {

    return 6;
  }

  v22 = [v15 mailDateReceived];
  if (v22)
  {
    v23 = v22;
    sub_231E0F910();

    v24 = *(v62 + 32);
    v25 = v64;
    (v24)(v1, v6, v64);
    OUTLINED_FUNCTION_15_7();
    __swift_storeEnumTagSinglePayload(v26, v27, v28, v25);
    v29 = v63;
    (v24)(v63, v1, v25);
    OUTLINED_FUNCTION_15_7();
    __swift_storeEnumTagSinglePayload(v30, v31, v32, v25);
  }

  else
  {
    v33 = 1;
    v34 = OUTLINED_FUNCTION_83_1();
    v25 = v64;
    __swift_storeEnumTagSinglePayload(v34, v35, 1, v64);
    v36 = [v15 contentCreationDate];
    v29 = v63;
    if (v36)
    {
      v37 = v36;
      v24 = v61;
      sub_231E0F910();

      v33 = 0;
    }

    else
    {
      v24 = v61;
    }

    __swift_storeEnumTagSinglePayload(v24, v33, 1, v25);
    v38 = OUTLINED_FUNCTION_25();
    sub_231D26298(v38, v39);
    v40 = OUTLINED_FUNCTION_83_1();
    if (__swift_getEnumTagSinglePayload(v40, v41, v25) != 1)
    {
      sub_231CE1118(v1, &dword_27DD74AD0, &qword_231E16C40);
    }
  }

  if (__swift_getEnumTagSinglePayload(v29, 1, v25) == 1)
  {

    sub_231CE1118(v29, &dword_27DD74AD0, &qword_231E16C40);
    return 1;
  }

  sub_231CE1118(v29, &dword_27DD74AD0, &qword_231E16C40);
  v42 = sub_231D26114(v15);
  if (!v42)
  {

    return 3;
  }

  v43 = v42;
  result = sub_231CBA138(v42);
  if (!result)
  {

    return 3;
  }

  if ((v43 & 0xC000000000000001) != 0)
  {
    MEMORY[0x23837D2A0](0, v43);
    swift_unknownObjectRelease();
  }

  else if (!*((v43 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
    return result;
  }

  if ((*(v60 + 9) & 1) == 0)
  {
    sub_231D26240(v15, &selRef_accountIdentifier);
    if (!v54)
    {

      return 2;
    }

    v55 = [v15 isNew];
    if (v55)
    {
      v24 = v55;
      v56 = [v55 BOOLValue];

      if ((v56 & 1) == 0)
      {

        return 24;
      }
    }
  }

  v44 = sub_231D26240(v15, &selRef_textContentNoCopy);
  if (v45)
  {
    v46 = v44;
    v24 = v45;

    v47 = HIBYTE(v24) & 0xF;
    if ((v24 & 0x2000000000000000) == 0)
    {
      v47 = v46 & 0xFFFFFFFFFFFFLL;
    }

    if (v47)
    {
      goto LABEL_33;
    }
  }

  sub_231D26174(v15);
  if (v48 >> 60 != 15 && (OUTLINED_FUNCTION_104_2(), v51 = sub_231D203B4(v49, v50), v52 = OUTLINED_FUNCTION_25(), sub_231CF4340(v52, v53), !v51))
  {
LABEL_33:
    OUTLINED_FUNCTION_77_0();
    if ([v15 v57] == 1)
    {

      return 4;
    }

    else
    {
      v58 = [v15 (v24 + 3521)];

      if (v58 == 4)
      {
        return 4;
      }

      else
      {
        return 31;
      }
    }
  }

  else
  {

    return 5;
  }
}

uint64_t sub_231D1FB54()
{
  v2 = sub_231E0F950();
  OUTLINED_FUNCTION_24();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_4_1();
  v8 = v7 - v6;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&dword_27DD74AD0, &qword_231E16C40);
  v10 = OUTLINED_FUNCTION_47(v9);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_3();
  v13 = v11 - v12;
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_110_2();
  v16 = MEMORY[0x28223BE20](v15);
  v18 = v44 - v17;
  MEMORY[0x28223BE20](v16);
  v20 = v44 - v19;
  v21 = [*v0 attributeSet];
  v22 = v21;
  if (*(v0 + 9))
  {
    goto LABEL_2;
  }

  v26 = sub_231CE122C(v21, &selRef_mailboxIdentifiers);
  if (!v26)
  {
    goto LABEL_11;
  }

  v27 = v26;
  v44[0] = v4;
  if (qword_2814CD4F0 != -1)
  {
    v26 = OUTLINED_FUNCTION_44_5(&qword_2814CD4F0);
  }

  v45[0] = qword_2814CE610;
  v45[1] = *algn_2814CE618;
  MEMORY[0x28223BE20](v26);
  v44[-2] = v45;
  v28 = sub_231D162D0(sub_231D163AC, &v44[-4], v27);

  if (!v28)
  {
LABEL_11:

    return 0;
  }

  v29 = [v22 isFromMe];
  if (v29)
  {
    v30 = v29;
    v31 = [v29 BOOLValue];

    if (v31)
    {

      return 2;
    }
  }

  v42 = [v22 isLikelyJunk];
  v43 = [v42 BOOLValue];

  v4 = v44[0];
  if (!v43)
  {
LABEL_2:
    v23 = [v22 mailDateReceived];
    if (v23)
    {
      v24 = v23;
      sub_231E0F910();

      v25 = 0;
    }

    else
    {
      v25 = 1;
    }

    __swift_storeEnumTagSinglePayload(v18, v25, 1, v2);
    sub_231D26298(v18, v20);
    if (__swift_getEnumTagSinglePayload(v20, 1, v2))
    {
      sub_231CE1118(v20, &dword_27DD74AD0, &qword_231E16C40);
      v33 = [v22 contentCreationDate];
      if (v33)
      {
        v34 = v33;
        sub_231E0F910();

        v35 = 0;
      }

      else
      {
        v35 = 1;
      }

      __swift_storeEnumTagSinglePayload(v13, v35, 1, v2);
      v36 = OUTLINED_FUNCTION_83();
      sub_231D26298(v36, v37);
      v38 = OUTLINED_FUNCTION_83_1();
      if (__swift_getEnumTagSinglePayload(v38, v39, v2))
      {

        sub_231CE1118(v1, &dword_27DD74AD0, &qword_231E16C40);
        return 5;
      }

      v20 = v1;
    }

    (*(v4 + 16))(v8, v20, v2);
    sub_231CE1118(v20, &dword_27DD74AD0, &qword_231E16C40);
    sub_231E0F870();
    (*(v4 + 8))(v8, v2);
    sub_231E0F880();
    sub_231D11D54();

    OUTLINED_FUNCTION_76_1();
    if (!(!v41 & v40))
    {
      return 0;
    }

    return 5;
  }

  return 3;
}

uint64_t sub_231D1FFA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 712) = a7;
  *(v7 + 704) = a6;
  *(v7 + 409) = a5;
  *(v7 + 696) = a4;
  *(v7 + 688) = a3;
  *(v7 + 680) = a2;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t sub_231D1FFCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10, uint64_t a11, char a12)
{
  v13 = *(v12 + 712);
  v14 = *(v12 + 409);
  OUTLINED_FUNCTION_1_13();
  v15 = OUTLINED_FUNCTION_83();
  sub_231CC3500(v15, v16, v14);
  v17 = OUTLINED_FUNCTION_83();
  sub_231CD2A28(v17, v18, v19, v20, v21, v22, v23, v24, v25);
  v26 = OUTLINED_FUNCTION_83();
  sub_231CC3500(v26, v27, v14);
  v28 = OUTLINED_FUNCTION_83();
  sub_231CD2A90(v28, v29, v30, v31, 2, v32, v33, v34, v35);
  v36.n128_f64[0] = sub_231DDBF28();
  OUTLINED_FUNCTION_15_8(v36);
  v37 = *v13;
  v38 = [*v13 attributeSet];
  sub_231DF7374();
  v39 = sub_231E115F0();

  v40 = [v38 attributeForKey_];

  if (v40)
  {
    sub_231E11C80();
    swift_unknownObjectRelease();
  }

  else
  {
    v58 = 0u;
    v59 = 0u;
  }

  *(v12 + 632) = v58;
  *(v12 + 648) = v59;
  if (*(v12 + 656))
  {
    if (swift_dynamicCast())
    {
      v41 = *(v12 + 672);
    }

    else
    {
      v41 = 0;
    }
  }

  else
  {
    sub_231CE1118(v12 + 632, &dword_27DD741E0, &qword_231E15D70);
    v41 = 0;
  }

  *(v12 + 720) = v41;
  v42 = [v37 uniqueIdentifier];
  sub_231E11620();
  v44 = v43;

  *(v12 + 728) = v44;
  sub_231D261D8([v37 attributeSet], &selRef_domainIdentifier);
  *(v12 + 736) = v45;
  swift_task_alloc();
  OUTLINED_FUNCTION_58_0();
  *(v12 + 744) = v46;
  *v46 = v47;
  v46[1] = sub_231D20278;
  OUTLINED_FUNCTION_11_3();
  OUTLINED_FUNCTION_107_1();

  return sub_231CD4CF4(v48, v49, v50, v51, v52, v53, v54, v55, a9, a10, a11, a12);
}

uint64_t sub_231D20278()
{
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_21();
  v2 = v1;
  OUTLINED_FUNCTION_7_0();
  *v3 = v2;
  v4 = *v0;
  OUTLINED_FUNCTION_4();
  *v5 = v4;

  sub_231CC4F5C(v2 + 16);
  OUTLINED_FUNCTION_14_0();

  return v6();
}

BOOL sub_231D203B4(uint64_t a1, unint64_t a2)
{
  v2 = 0;
  v3 = 0;
  switch(a2 >> 62)
  {
    case 1uLL:
      v3 = a1;
      v2 = a1 >> 32;
      break;
    case 2uLL:
      v3 = *(a1 + 16);
      v2 = *(a1 + 24);
      break;
    case 3uLL:
      return v3 == v2;
    default:
      v3 = 0;
      v2 = BYTE6(a2);
      break;
  }

  return v3 == v2;
}

uint64_t sub_231D20408()
{
  OUTLINED_FUNCTION_18();
  v1[11] = v2;
  v1[12] = v0;
  v1[9] = v3;
  v1[10] = v4;
  OUTLINED_FUNCTION_106_2(v5);
  v6 = sub_231E10E30();
  v1[13] = v6;
  OUTLINED_FUNCTION_6(v6);
  v1[14] = v7;
  v1[15] = OUTLINED_FUNCTION_69();
  v1[16] = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_10();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_231D204BC()
{
  v3 = sub_231D20C54();
  if (v3 != 31)
  {
    v7 = v3;
    sub_231DC4C1C();
    v8 = OUTLINED_FUNCTION_73_0();
    v9(v8);

    v10 = sub_231E10E10();
    sub_231E11AF0();
    OUTLINED_FUNCTION_148_0();
    v11 = os_log_type_enabled(v10, v1);
    v12 = v0[16];
    v14 = v0[13];
    v13 = v0[14];
    if (v11)
    {
      v34 = v0[16];
      v15 = OUTLINED_FUNCTION_98_0();
      OUTLINED_FUNCTION_68();
      *v15 = 136446466;
      v16 = sub_231DDB1E8();
      OUTLINED_FUNCTION_175(v16, v17, v18, v19, v20, v21);
      OUTLINED_FUNCTION_117_0();
      OUTLINED_FUNCTION_66_3();
      sub_231CC8F48(v7);
      OUTLINED_FUNCTION_175(v22, v23, v24, v25, v26, v27);
      OUTLINED_FUNCTION_117_0();
      *(v15 + 14) = v2;
      OUTLINED_FUNCTION_53_1(&dword_231CAE000, v28, v29, "%{public}s Invalid (%s)");
      swift_arrayDestroy();
      OUTLINED_FUNCTION_31_1();
      OUTLINED_FUNCTION_14();

      (*(v13 + 8))(v34, v14);
    }

    else
    {

      (*(v13 + 8))(v12, v14);
    }

    v30 = v0[9];
    v31 = OBJC_IVAR____TtC22ProactiveSummarization22SummarizationAnalytics_invalidReason;
    OUTLINED_FUNCTION_4_12(v30 + OBJC_IVAR____TtC22ProactiveSummarization22SummarizationAnalytics_invalidReason, (v0 + 2));
    *(v30 + v31) = v7;

    OUTLINED_FUNCTION_18_6();
    OUTLINED_FUNCTION_35();

    __asm { BRAA            X2, X16 }
  }

  v4 = swift_task_alloc();
  v0[17] = v4;
  *v4 = v0;
  v4[1] = sub_231D206E0;
  OUTLINED_FUNCTION_35();

  return sub_231D211E0();
}

uint64_t sub_231D206E0()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_15();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 144) = v3;
  *(v1 + 152) = v4;
  *(v1 + 176) = v5;

  v6 = OUTLINED_FUNCTION_10();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

void sub_231D20ABC()
{
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_21();
  v3 = v2;
  OUTLINED_FUNCTION_7_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_4();
  *v6 = v5;

  if (v0)
  {
  }

  else
  {
    sub_231CBA16C(*(v3 + 144), *(v3 + 152), *(v3 + 176));

    OUTLINED_FUNCTION_12_0();

    MEMORY[0x2822009F8](v7, v8, v9);
  }
}

uint64_t sub_231D20BE8()
{
  OUTLINED_FUNCTION_18();

  OUTLINED_FUNCTION_18_6();

  return v0(0);
}

uint64_t sub_231D20C54()
{
  v1 = sub_231E0FD90();
  OUTLINED_FUNCTION_24();
  v3 = v2;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_4_1();
  v7 = v6 - v5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74458, &qword_231E15D38);
  v9 = OUTLINED_FUNCTION_47(v8);
  MEMORY[0x28223BE20](v9);
  v11 = &v60 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&dword_27DD74AD0, &qword_231E16C40);
  v13 = OUTLINED_FUNCTION_47(v12);
  MEMORY[0x28223BE20](v13);
  v15 = &v60 - v14;
  v16 = [*v0 attributeSet];
  sub_231D26240(v16, &selRef_domainIdentifier);
  if (!v17)
  {

    return 8;
  }

  v18 = sub_231D26240(v16, &selRef_domainIdentifier);
  if (!v19)
  {
    goto LABEL_21;
  }

  if (v18 == 0xD000000000000010 && v19 == 0x8000000231E321D0)
  {
  }

  else
  {
    v21 = sub_231E12100();

    if ((v21 & 1) == 0)
    {
      goto LABEL_21;
    }
  }

  v23 = sub_231D26240(v16, &selRef_messageType);
  v25 = v24;
  v26 = sub_231E11620();
  if (!v25)
  {

    goto LABEL_19;
  }

  if (v23 == v26 && v25 == v27)
  {

    goto LABEL_21;
  }

  OUTLINED_FUNCTION_101_1();
  v29 = sub_231E12100();

  if ((v29 & 1) == 0)
  {
LABEL_19:

    return 9;
  }

LABEL_21:
  v30 = [v16 contentCreationDate];
  if (!v30)
  {

    v43 = sub_231E0F950();
    __swift_storeEnumTagSinglePayload(v15, 1, 1, v43);
    sub_231CE1118(v15, &dword_27DD74AD0, &qword_231E16C40);
    return 10;
  }

  v31 = v30;
  sub_231E0F910();

  sub_231E0F950();
  OUTLINED_FUNCTION_15_7();
  __swift_storeEnumTagSinglePayload(v32, v33, v34, v35);
  sub_231CE1118(v15, &dword_27DD74AD0, &qword_231E16C40);
  v36 = sub_231D26114(v16);
  if (!v36)
  {

    return 11;
  }

  v37 = v36;
  result = sub_231CBA138(v36);
  if (!result)
  {

    return 11;
  }

  if ((v37 & 0xC000000000000001) != 0)
  {
    MEMORY[0x23837D2A0](0, v37);
    swift_unknownObjectRelease();
  }

  else if (!*((v37 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
    return result;
  }

  if (*(v0 + 9))
  {
    v38 = sub_231D26240(v16, &selRef_textContentNoCopy);
    if (!v39)
    {
      goto LABEL_59;
    }

    v40 = v38;
    v41 = v39;

    v42 = HIBYTE(v41) & 0xF;
    if ((v41 & 0x2000000000000000) == 0)
    {
      v42 = v40 & 0xFFFFFFFFFFFFLL;
    }

    if (!v42)
    {
      goto LABEL_59;
    }

    goto LABEL_43;
  }

  sub_231D26240(v16, &selRef_textContentNoCopy);
  if (v44)
  {

    goto LABEL_38;
  }

  v51 = sub_231CE122C(v16, &selRef_attachmentPaths);
  if (!v51)
  {
    goto LABEL_59;
  }

  v52 = *(v51 + 16);

  if (!v52)
  {
    goto LABEL_59;
  }

  v53 = sub_231CE122C(v16, &selRef_attachmentTypes);
  if (v53)
  {
    if (*(v53 + 16))
    {
    }
  }

  sub_231E0FDA0();
  v55 = OUTLINED_FUNCTION_83_1();
  if (__swift_getEnumTagSinglePayload(v55, v56, v1) == 1)
  {
    sub_231CE1118(v11, &qword_27DD74458, &qword_231E15D38);
    goto LABEL_38;
  }

  sub_231E0FD50();
  v57 = sub_231E0FD80();
  v58 = *(v3 + 8);
  v58(v7, v1);
  v59 = OUTLINED_FUNCTION_37_0();
  (v58)(v59);
  if (v57)
  {
LABEL_59:

    return 12;
  }

LABEL_38:
  v45 = [v16 isNew];
  if (v45)
  {
    v46 = v45;
    v47 = [v45 BOOLValue];

    if ((v47 & 1) == 0)
    {

      return 23;
    }
  }

  v48 = [v16 messageRead];
  if (v48)
  {
    v49 = v48;
    v50 = [v48 BOOLValue];

    if (v50)
    {

      return 26;
    }
  }

LABEL_43:
  if (OUTLINED_FUNCTION_88_2() == 1)
  {

    return 13;
  }

  else
  {
    v54 = OUTLINED_FUNCTION_88_2();

    if (v54 == 4)
    {
      return 13;
    }

    else
    {
      return 31;
    }
  }
}

uint64_t sub_231D211E0()
{
  OUTLINED_FUNCTION_18();
  v1[3] = v2;
  v1[4] = v0;
  v1[2] = v3;
  v4 = sub_231E0F950();
  v1[5] = v4;
  OUTLINED_FUNCTION_6(v4);
  v1[6] = v5;
  v1[7] = OUTLINED_FUNCTION_69();
  v6 = swift_task_alloc();
  OUTLINED_FUNCTION_106_2(v6);
  v7 = sub_231E10400();
  v1[9] = v7;
  OUTLINED_FUNCTION_6(v7);
  v1[10] = v8;
  v1[11] = OUTLINED_FUNCTION_55();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74510, &qword_231E1E2D0);
  OUTLINED_FUNCTION_47(v9);
  v1[12] = OUTLINED_FUNCTION_55();
  v10 = sub_231E106A0();
  v1[13] = v10;
  OUTLINED_FUNCTION_6(v10);
  v1[14] = v11;
  v1[15] = OUTLINED_FUNCTION_55();
  v12 = OUTLINED_FUNCTION_10();

  return MEMORY[0x2822009F8](v12, v13, v14);
}

uint64_t sub_231D21354()
{
  v4 = v0[4];
  v5 = *v4;
  v6 = [*v4 attributeSet];
  v7 = v6;
  v0[16] = v6;
  if (*(v4 + 9))
  {
    goto LABEL_2;
  }

  sub_231D26240(v6, &selRef_messageType);
  OUTLINED_FUNCTION_103_1();
  sub_231E11620();
  v13 = v12;
  if (v4)
  {
    OUTLINED_FUNCTION_100_2();
    v17 = v17 && v4 == v13;
    if (v17)
    {

LABEL_18:

      goto LABEL_19;
    }

    OUTLINED_FUNCTION_33_7(v14, v15, v16);
    OUTLINED_FUNCTION_118_2();

    if (v2)
    {
      goto LABEL_18;
    }
  }

  else
  {
  }

  v18 = [v7 isFromMe];
  if (v18)
  {
    v19 = v18;
    v20 = [v18 BOOLValue];

    if (v20)
    {
      goto LABEL_18;
    }
  }

  v21 = [v7 isLikelyJunk];
  v22 = [v21 BOOLValue];

  if (v22)
  {
    goto LABEL_18;
  }

  v26 = [v7 messageRead];
  if (v26)
  {
    v27 = v26;
    v28 = [v26 BOOLValue];

    if (v28)
    {
      goto LABEL_18;
    }
  }

  v1 = v0[12];
  v29 = v0[13];
  v30 = v0[3];
  v31 = OUTLINED_FUNCTION_155();
  sub_231D164A4(v30, v31 & 1, v1);
  v32 = OUTLINED_FUNCTION_83_1();
  if (__swift_getEnumTagSinglePayload(v32, v33, v29) == 1)
  {
    sub_231CE1118(v0[12], &qword_27DD74510, &qword_231E1E2D0);
    v7 = v0[16];
LABEL_2:
    v8 = [v7 contentCreationDate];
    v9 = v0[16];
    if (v8)
    {
      OUTLINED_FUNCTION_115_1();

      v10 = OUTLINED_FUNCTION_25();
      v11(v10);
      sub_231E0F870();
      sub_231E0F880();
      sub_231D11D54();

      (*(v3 + 8))(v5, v1);
      OUTLINED_FUNCTION_76_1();
    }

    else
    {
    }

LABEL_19:

    v23 = OUTLINED_FUNCTION_87_2();

    return v24(v23);
  }

  v34 = v0[2];
  (*(v0[14] + 32))(v0[15], v0[12], v0[13]);
  v35 = v34[3];
  v36 = v34[4];
  __swift_project_boxed_opaque_existential_0(v34, v35);
  v37 = sub_231E10570();
  v39 = v38;
  v0[17] = v38;
  sub_231E104F0();
  v40 = sub_231E10500();
  v43 = (*(v36 + 8) + **(v36 + 8));
  v41 = swift_task_alloc();
  v0[18] = v41;
  *v41 = v0;
  v41[1] = sub_231D217C4;
  v42 = v0[11];

  return v43(v37, v39, v42, v40, v35, v36);
}

uint64_t sub_231D217C4()
{
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_15();
  *v2 = v1;
  v3 = *v0;
  OUTLINED_FUNCTION_4();
  *v4 = v3;
  *(v6 + 152) = v5;

  v7 = OUTLINED_FUNCTION_25();
  v8(v7);
  v9 = OUTLINED_FUNCTION_10();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_231D21920()
{
  OUTLINED_FUNCTION_57_0();
  v4 = *(v1 + 152);
  (*(*(v1 + 112) + 8))(*(v1 + 120), *(v1 + 104));
  v5 = *(v1 + 128);
  if (v4 == 1)
  {
  }

  else
  {
    v6 = [v5 contentCreationDate];
    v7 = *(v1 + 128);
    if (v6)
    {
      OUTLINED_FUNCTION_115_1();

      v8 = OUTLINED_FUNCTION_25();
      v9(v8);
      sub_231E0F870();
      sub_231E0F880();
      sub_231D11D54();

      (*(v3 + 8))(v0, v2);
      OUTLINED_FUNCTION_76_1();
    }

    else
    {
    }
  }

  v10 = OUTLINED_FUNCTION_87_2();

  return v11(v10);
}

uint64_t sub_231D21A90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7)
{
  *(v7 + 664) = a7;
  *(v7 + 409) = a6;
  *(v7 + 656) = a5;
  *(v7 + 648) = a4;
  *(v7 + 640) = a3;
  *(v7 + 632) = a2;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t sub_231D21AB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  OUTLINED_FUNCTION_57_0();
  v11 = **(v10 + 632);
  sub_231D261D8([v11 attributeSet], &selRef_ownerIdentifier);
  if (v12)
  {
    OUTLINED_FUNCTION_104_2();
  }

  else
  {
    v13 = [v11 uniqueIdentifier];
    sub_231E11620();
    OUTLINED_FUNCTION_104_2();
  }

  *(v10 + 672) = v9;
  sub_231D261D8([v11 attributeSet], &selRef_ownerIdentifier);
  if (v14)
  {

    v15 = 0;
  }

  else
  {
    sub_231D261D8([v11 attributeSet], &selRef_domainIdentifier);
    v15 = v16;
  }

  *(v10 + 680) = v15;
  v17 = *(v10 + 409);
  OUTLINED_FUNCTION_1_13();
  v18 = OUTLINED_FUNCTION_101_1();
  sub_231CC3500(v18, v19, v17);
  v20 = OUTLINED_FUNCTION_101_1();
  sub_231CD2A28(v20, v21, v22, v23, v24, v25, v26, v27, v28);
  v29 = OUTLINED_FUNCTION_101_1();
  sub_231CC3500(v29, v30, v17);
  v31 = OUTLINED_FUNCTION_101_1();
  sub_231CD2A90(v31, v32, v33, v34, 2, v35, v36, v37, v38);
  v39.n128_f64[0] = sub_231DDBF28();
  OUTLINED_FUNCTION_15_8(v39);
  swift_task_alloc();
  OUTLINED_FUNCTION_58_0();
  *(v10 + 688) = v40;
  *v40 = v41;
  v40[1] = sub_231D21CA8;
  OUTLINED_FUNCTION_101_2();
  OUTLINED_FUNCTION_11_3();
  OUTLINED_FUNCTION_44();

  return sub_231CD58D0(v42, v43, v44, v45, v46, v47, v48, v49, a9);
}

uint64_t sub_231D21CA8()
{
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_21();
  v2 = v1;
  OUTLINED_FUNCTION_7_0();
  *v3 = v2;
  v4 = *v0;
  OUTLINED_FUNCTION_4();
  *v5 = v4;

  sub_231CC4F5C(v2 + 16);
  OUTLINED_FUNCTION_14_0();

  return v6();
}

uint64_t sub_231D21DC8()
{
  OUTLINED_FUNCTION_50_0();
  v1[9] = v2;
  v1[10] = v0;
  OUTLINED_FUNCTION_106_2(v3);
  v4 = sub_231E10E30();
  v1[11] = v4;
  OUTLINED_FUNCTION_6(v4);
  v1[12] = v5;
  v1[13] = swift_task_alloc();
  v1[14] = swift_task_alloc();
  v6 = swift_task_alloc();
  v1[15] = v6;
  *v6 = v1;
  v6[1] = sub_231D21ED8;
  OUTLINED_FUNCTION_37_0();

  return sub_231D224D4();
}

uint64_t sub_231D21ED8()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_15();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 152) = v3;

  v4 = OUTLINED_FUNCTION_10();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

void sub_231D22344()
{
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_21();
  v3 = v2;
  OUTLINED_FUNCTION_7_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_4();
  *v6 = v5;

  if (v0)
  {
  }

  else
  {
    sub_231CBA16C(*(v3 + 128), 0, *(v3 + 153));

    OUTLINED_FUNCTION_12_0();

    MEMORY[0x2822009F8](v7, v8, v9);
  }
}

uint64_t sub_231D22470()
{
  OUTLINED_FUNCTION_18();

  OUTLINED_FUNCTION_18_6();

  return v0(0);
}

uint64_t sub_231D224D4()
{
  OUTLINED_FUNCTION_18();
  v1[8] = v2;
  v1[9] = v0;
  v1[6] = v3;
  v1[7] = v4;
  v5 = sub_231E10E30();
  v1[10] = v5;
  OUTLINED_FUNCTION_6(v5);
  v1[11] = v6;
  v1[12] = OUTLINED_FUNCTION_69();
  v1[13] = swift_task_alloc();
  v1[14] = swift_task_alloc();
  v1[15] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&dword_27DD74AD0, &qword_231E16C40);
  OUTLINED_FUNCTION_47(v7);
  v1[16] = OUTLINED_FUNCTION_55();
  v8 = OUTLINED_FUNCTION_10();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_231D225CC()
{
  OUTLINED_FUNCTION_57_0();
  v2 = **(v0 + 72);
  *(v0 + 136) = v2;
  v3 = [v2 attributeSet];
  *(v0 + 144) = v3;
  v4 = [v3 contentCreationDate];
  v5 = *(v0 + 128);
  if (!v4)
  {

    v18 = sub_231E0F950();
    __swift_storeEnumTagSinglePayload(v5, 1, 1, v18);
    sub_231CE1118(v5, &dword_27DD74AD0, &qword_231E16C40);
    goto LABEL_10;
  }

  v6 = v4;
  sub_231E0F910();

  sub_231E0F950();
  OUTLINED_FUNCTION_15_7();
  __swift_storeEnumTagSinglePayload(v7, v8, v9, v10);
  sub_231CE1118(v5, &dword_27DD74AD0, &qword_231E16C40);
  sub_231D26240(v3, &selRef_creator);
  OUTLINED_FUNCTION_103_1();
  sub_231DE8A04(0);
  v12 = v11;
  v13 = &off_278947000;
  if (!v5)
  {

LABEL_14:
    sub_231D26240(v3, &selRef_creator);
    OUTLINED_FUNCTION_103_1();
    sub_231DE8A04(1);
    v22 = v21;
    if (!v5)
    {

      goto LABEL_28;
    }

    OUTLINED_FUNCTION_100_2();
    if (!v17 || v5 != v22)
    {
      OUTLINED_FUNCTION_33_7(v23, v24, v25);
      OUTLINED_FUNCTION_118_2();

      if ((v1 & 1) == 0)
      {
        goto LABEL_28;
      }

      goto LABEL_22;
    }

    goto LABEL_21;
  }

  OUTLINED_FUNCTION_100_2();
  v17 = v17 && v5 == v12;
  if (!v17)
  {
    OUTLINED_FUNCTION_33_7(v14, v15, v16);
    OUTLINED_FUNCTION_118_2();

    if (v1)
    {
      goto LABEL_22;
    }

    goto LABEL_14;
  }

LABEL_21:

LABEL_22:
  if (OUTLINED_FUNCTION_116_2() == 5 && [v3 urgencyStatus] == 5)
  {
    v27 = *(v0 + 72);
    v28 = swift_task_alloc();
    *(v0 + 152) = v28;
    *(v28 + 16) = *(v0 + 48);
    *(v28 + 32) = v27;
    v29 = swift_task_alloc();
    *(v0 + 160) = v29;
    *v29 = v0;
    v29[1] = sub_231D22E40;
    OUTLINED_FUNCTION_13_0();
    OUTLINED_FUNCTION_44();

    return sub_231DDB61C();
  }

LABEL_28:
  sub_231D26240(v3, &selRef_creator);
  OUTLINED_FUNCTION_103_1();
  sub_231DE8A04(0);
  v33 = v32;
  if (v5)
  {
    OUTLINED_FUNCTION_100_2();
    if (v17 && v5 == v33)
    {

LABEL_45:
      v63 = [v2 uniqueIdentifier];
      sub_231E11620();
      OUTLINED_FUNCTION_64_1();

      *(v0 + 304) = v33;
      OUTLINED_FUNCTION_116_2();
      v64 = swift_task_alloc();
      *(v0 + 312) = v64;
      *v64 = v0;
      v64[1] = sub_231D237DC;
      OUTLINED_FUNCTION_44();

      return sub_231CDAAA0();
    }

    OUTLINED_FUNCTION_33_7(v34, v35, v36);
    OUTLINED_FUNCTION_118_2();

    if (v1)
    {
      goto LABEL_45;
    }
  }

  else
  {
  }

  v38 = sub_231CE122C(v3, &selRef_contentTypeTree);
  v39 = &off_278947000;
  if (v38)
  {
    v40 = v38;
    v41 = sub_231D26240(v3, &selRef_creator);
    if (v42)
    {
      v1 = v41;
      v43 = v42;
      v44 = sub_231CC7E14();
      v45 = v44[1];
      *(v0 + 32) = *v44;
      *(v0 + 40) = v45;
      v46 = swift_task_alloc();
      *(v46 + 16) = v0 + 32;

      v47 = sub_231D162D0(sub_231D266B0, v46, v40);

      if (v47 && (v48 = OUTLINED_FUNCTION_83(), sub_231D24924(v48, v49, v50)))
      {
        v39 = &off_278947000;
        v51 = [v2 protection];
        *(v0 + 168) = v51;
        if (v51)
        {
          v52 = v51;

          v53 = v52;
          v54 = OUTLINED_FUNCTION_83();
          sub_231D5EF7C(v54, v55, v1, v43, v56, 0);
          OUTLINED_FUNCTION_64_1();
          *(v0 + 176) = v57;
          *(v0 + 184) = v58;
          *(v0 + 192) = v59;
          v60 = [v2 uniqueIdentifier];
          sub_231E11620();
          OUTLINED_FUNCTION_102_1();

          *(v0 + 200) = v46;
          [v3 summarizationStatus];
          v61 = swift_task_alloc();
          *(v0 + 208) = v61;
          *v61 = v0;
          v61[1] = sub_231D22FE4;
          OUTLINED_FUNCTION_44();

          return sub_231CDBBEC();
        }

        v13 = &off_278947000;
      }

      else
      {
        v13 = &off_278947000;
        v39 = &off_278947000;
      }
    }
  }

  v66 = sub_231D26240(*(v0 + 144), &selRef_creator);
  v68 = v67;
  v69 = sub_231DE8A04(1);
  if (v68)
  {
    if (v66 == v69 && v68 == v70)
    {

LABEL_68:
      v93 = [*(v0 + 136) uniqueIdentifier];
      sub_231E11620();
      OUTLINED_FUNCTION_64_1();

      *(v0 + 280) = v66;
      OUTLINED_FUNCTION_116_2();
      v94 = swift_task_alloc();
      *(v0 + 288) = v94;
      *v94 = v0;
      OUTLINED_FUNCTION_3_14(v94);
      OUTLINED_FUNCTION_44();

      return sub_231CDC75C();
    }

    v66 = OUTLINED_FUNCTION_90_2(v66, v70, v69);

    if (v66)
    {
      goto LABEL_68;
    }
  }

  else
  {
  }

  if (!sub_231CE122C(*(v0 + 144), &selRef_contentTypeTree))
  {
    goto LABEL_72;
  }

  sub_231D26240(*(v0 + 144), &selRef_creator);
  if (!v72 || (OUTLINED_FUNCTION_105_2(), v73 = sub_231CC7F78(), v74 = OUTLINED_FUNCTION_97_2(v73), v74[2] = v0 + 16, , v75 = OUTLINED_FUNCTION_7_11(), v78 = sub_231D162D0(v75, v76, v77), , , , !v78) || (v79 = OUTLINED_FUNCTION_59_0(), !sub_231D24924(v79, v80, v81)) || (v82 = [*(v0 + 136) v39[450]], (*(v0 + 224) = v82) == 0))
  {

LABEL_72:
    [*(v0 + 144) *(v13 + 373)];
    OUTLINED_FUNCTION_86_2();
    if (!v17)
    {
      OUTLINED_FUNCTION_116_2();
    }

LABEL_10:
    OUTLINED_FUNCTION_47_4();

    OUTLINED_FUNCTION_8_8();
    OUTLINED_FUNCTION_44();

    __asm { BRAA            X2, X16 }
  }

  OUTLINED_FUNCTION_95_2();
  v83 = OUTLINED_FUNCTION_29_4(v78);
  OUTLINED_FUNCTION_17_7(v83, v84, v85, v86);
  v87 = [v74 uniqueIdentifier];
  sub_231E11620();
  v88 = v13;
  v90 = v89;

  *(v0 + 256) = v90;
  [v1 v88 + 3521];
  v91 = swift_task_alloc();
  *(v0 + 264) = v91;
  *v91 = v0;
  OUTLINED_FUNCTION_2_14(v91);
  OUTLINED_FUNCTION_44();

  return sub_231CDDFEC();
}

void sub_231D22E40()
{
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_21();
  v3 = v2;
  OUTLINED_FUNCTION_7_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_4();
  *v6 = v5;

  if (v0)
  {
  }

  else
  {

    OUTLINED_FUNCTION_12_0();

    MEMORY[0x2822009F8](v7, v8, v9);
  }
}

uint64_t sub_231D22F5C()
{
  OUTLINED_FUNCTION_29();

  OUTLINED_FUNCTION_49_5();

  OUTLINED_FUNCTION_18_6();

  return v1(30);
}

uint64_t sub_231D22FE4()
{
  OUTLINED_FUNCTION_29();
  v3 = v2;
  OUTLINED_FUNCTION_21();
  v5 = v4;
  OUTLINED_FUNCTION_7_0();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_4();
  *v8 = v7;
  *(v5 + 216) = v0;

  if (!v0)
  {

    *(v5 + 328) = v3 & 1;
  }

  OUTLINED_FUNCTION_12_0();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_231D230F8()
{
  OUTLINED_FUNCTION_57_0();
  v3 = *(v0 + 328);
  v5 = *(v0 + 184);
  v4 = *(v0 + 192);

  if (v3)
  {

    goto LABEL_3;
  }

  v8 = sub_231D26240(*(v0 + 144), &selRef_creator);
  v10 = v9;
  v11 = sub_231DE8A04(1);
  if (v10)
  {
    v13 = v8 == v11 && v10 == v12;
    if (v13)
    {

LABEL_23:
      v33 = *(v0 + 144);
      v34 = [*(v0 + 136) uniqueIdentifier];
      sub_231E11620();
      OUTLINED_FUNCTION_64_1();

      *(v0 + 280) = v8;
      [v33 summarizationStatus];
      v35 = swift_task_alloc();
      *(v0 + 288) = v35;
      *v35 = v0;
      OUTLINED_FUNCTION_3_14(v35);
      OUTLINED_FUNCTION_44();

      return sub_231CDC75C();
    }

    v8 = OUTLINED_FUNCTION_90_2(v8, v12, v11);

    if (v8)
    {
      goto LABEL_23;
    }
  }

  else
  {
  }

  if (!sub_231CE122C(*(v0 + 144), &selRef_contentTypeTree))
  {
LABEL_27:
    OUTLINED_FUNCTION_77_0();
    [v37 v38];
    OUTLINED_FUNCTION_86_2();
    if (!v13)
    {
      OUTLINED_FUNCTION_117_2();
    }

LABEL_3:
    OUTLINED_FUNCTION_47_4();

    OUTLINED_FUNCTION_8_8();
    OUTLINED_FUNCTION_44();

    __asm { BRAA            X2, X16 }
  }

  sub_231D26240(*(v0 + 144), &selRef_creator);
  if (!v14 || (OUTLINED_FUNCTION_105_2(), v15 = sub_231CC7F78(), v16 = OUTLINED_FUNCTION_97_2(v15), v16[2] = v0 + 16, , v17 = OUTLINED_FUNCTION_7_11(), v20 = sub_231D162D0(v17, v18, v19), , , , !v20) || (v21 = OUTLINED_FUNCTION_59_0(), !sub_231D24924(v21, v22, v23)) || (v24 = [*(v0 + 136) protection], (*(v0 + 224) = v24) == 0))
  {

    goto LABEL_27;
  }

  OUTLINED_FUNCTION_95_2();
  v25 = OUTLINED_FUNCTION_29_4(v20);
  OUTLINED_FUNCTION_17_7(v25, v26, v27, v28);
  v29 = [v16 uniqueIdentifier];
  sub_231E11620();
  OUTLINED_FUNCTION_102_1();

  *(v0 + 256) = v2;
  [v1 summarizationStatus];
  v30 = swift_task_alloc();
  *(v0 + 264) = v30;
  *v30 = v0;
  OUTLINED_FUNCTION_2_14(v30);
  OUTLINED_FUNCTION_44();

  return sub_231CDDFEC();
}

uint64_t sub_231D23448()
{
  OUTLINED_FUNCTION_29();
  v3 = v2;
  OUTLINED_FUNCTION_21();
  v5 = v4;
  OUTLINED_FUNCTION_7_0();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_4();
  *v8 = v7;
  *(v5 + 272) = v0;

  if (!v0)
  {

    *(v5 + 329) = v3 & 1;
  }

  OUTLINED_FUNCTION_12_0();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_231D2355C()
{
  OUTLINED_FUNCTION_50_0();
  v1 = *(v0 + 329);
  v3 = *(v0 + 240);
  v2 = *(v0 + 248);
  v4 = *(v0 + 232);

  if (v1 == 1)
  {
  }

  else
  {
    OUTLINED_FUNCTION_77_0();
    [v5 v6];
    OUTLINED_FUNCTION_86_2();
    if (!v7)
    {
      OUTLINED_FUNCTION_117_2();
    }
  }

  OUTLINED_FUNCTION_47_4();

  v8 = OUTLINED_FUNCTION_8_8();

  return v9(v8);
}

uint64_t sub_231D23650()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_21();
  v3 = v2;
  OUTLINED_FUNCTION_7_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_4();
  *v6 = v5;
  *(v3 + 296) = v0;

  if (v0)
  {
    v7 = sub_231D23F80;
  }

  else
  {

    v7 = sub_231D23754;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_231D23754()
{
  OUTLINED_FUNCTION_29();

  OUTLINED_FUNCTION_49_5();

  OUTLINED_FUNCTION_18_6();

  return v1(17);
}

uint64_t sub_231D237DC()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_21();
  v3 = v2;
  OUTLINED_FUNCTION_7_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_4();
  *v6 = v5;
  *(v3 + 320) = v0;

  if (v0)
  {
    v7 = sub_231D23968;
  }

  else
  {

    v7 = sub_231D238E0;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_231D238E0()
{
  OUTLINED_FUNCTION_29();

  OUTLINED_FUNCTION_49_5();

  OUTLINED_FUNCTION_18_6();

  return v1(16);
}

uint64_t sub_231D23B08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_50();
  a23 = v26;
  a24 = v27;
  OUTLINED_FUNCTION_51_0();
  a22 = v24;
  v28 = *(v24 + 216);
  v29 = *(v24 + 192);
  v30 = *(v24 + 184);
  v31 = *(v24 + 88);

  sub_231DC4C1C();
  v32 = OUTLINED_FUNCTION_108_2();
  v33(v32);

  v34 = v28;
  v35 = sub_231E10E10();
  sub_231E11AD0();

  v36 = OUTLINED_FUNCTION_177();
  v37 = *(v24 + 216);
  v38 = *(v24 + 112);
  v39 = *(v24 + 80);
  v40 = *(v24 + 88);
  if (v36)
  {
    a10 = *(v24 + 168);
    a11 = *(v24 + 112);
    OUTLINED_FUNCTION_98_0();
    OUTLINED_FUNCTION_109();
    v31 = OUTLINED_FUNCTION_50_3();
    a12 = v31;
    *v30 = 136446466;
    v41 = sub_231DDB1E8();
    sub_231CB5000(v41, v42, &a12);
    a9 = v39;

    OUTLINED_FUNCTION_27_3();
    v43 = _swift_stdlib_bridgeErrorToNSError();
    OUTLINED_FUNCTION_81_2(v43);
    OUTLINED_FUNCTION_26_3(&dword_231CAE000, v44, v45, "%{public}s Unable to transfer summarization attributes from message to notification; error: %{public}@");
    sub_231CE1118(v25, &qword_27DD74D30, &unk_231E13480);
    OUTLINED_FUNCTION_30_4();
    __swift_destroy_boxed_opaque_existential_0(v31);
    OUTLINED_FUNCTION_31_1();
    OUTLINED_FUNCTION_14();

    v46 = *(v40 + 8);
    v40 += 8;
    v46(v38, v39);
  }

  else
  {

    v47 = OUTLINED_FUNCTION_25_4();
    v49(v47, v48);
  }

  v50 = sub_231D26240(*(v24 + 144), &selRef_creator);
  v52 = v51;
  v53 = sub_231DE8A04(1);
  if (v52)
  {
    v55 = v50 == v53 && v52 == v54;
    if (v55)
    {

LABEL_21:
      v76 = *(v24 + 144);
      v77 = [*(v24 + 136) uniqueIdentifier];
      sub_231E11620();
      OUTLINED_FUNCTION_64_1();

      *(v24 + 280) = v40;
      [v76 summarizationStatus];
      v78 = swift_task_alloc();
      *(v24 + 288) = v78;
      *v78 = v24;
      OUTLINED_FUNCTION_3_14(v78);
      OUTLINED_FUNCTION_37();

      return sub_231CDC75C();
    }

    v56 = OUTLINED_FUNCTION_90_2(v50, v54, v53);

    if (v56)
    {
      goto LABEL_21;
    }
  }

  else
  {
  }

  if (sub_231CE122C(*(v24 + 144), &selRef_contentTypeTree))
  {
    sub_231D26240(*(v24 + 144), &selRef_creator);
    if (v57)
    {
      OUTLINED_FUNCTION_105_2();
      v58 = sub_231CC7F78();
      v59 = OUTLINED_FUNCTION_97_2(v58);
      v59[2] = v24 + 16;

      v60 = OUTLINED_FUNCTION_7_11();
      v63 = sub_231D162D0(v60, v61, v62);

      if (v63)
      {
        v64 = OUTLINED_FUNCTION_59_0();
        if (sub_231D24924(v64, v65, v66))
        {
          v67 = [*(v24 + 136) protection];
          *(v24 + 224) = v67;
          if (v67)
          {
            OUTLINED_FUNCTION_95_2();
            v68 = OUTLINED_FUNCTION_29_4(v63);
            OUTLINED_FUNCTION_17_7(v68, v69, v70, v71);
            v72 = [v59 uniqueIdentifier];
            sub_231E11620();
            OUTLINED_FUNCTION_102_1();

            *(v24 + 256) = v31;
            [v37 summarizationStatus];
            v73 = swift_task_alloc();
            *(v24 + 264) = v73;
            *v73 = v24;
            OUTLINED_FUNCTION_2_14(v73);
            OUTLINED_FUNCTION_37();

            return sub_231CDDFEC();
          }
        }
      }
    }
  }

  OUTLINED_FUNCTION_77_0();
  [v80 v81];
  OUTLINED_FUNCTION_86_2();
  if (!v55)
  {
    OUTLINED_FUNCTION_117_2();
  }

  OUTLINED_FUNCTION_47_4();

  OUTLINED_FUNCTION_8_8();
  OUTLINED_FUNCTION_37();

  return v84(v82, v83, v84, v85, v86, v87, v88, v89, a9, a10, a11, a12, a13, a14, a15, a16);
}

uint64_t sub_231D24318()
{
  v1 = sub_231E0F950();
  OUTLINED_FUNCTION_24();
  v3 = v2;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_3();
  MEMORY[0x28223BE20](v5);
  v6 = [OUTLINED_FUNCTION_107_2() attributeSet];
  v7 = [v6 contentCreationDate];
  if (v7)
  {
    v8 = v7;
    sub_231E0F910();

    v9 = OUTLINED_FUNCTION_80_0();
    v10(v9);
    sub_231E0F870();
    sub_231E0F880();
    sub_231D11D54();

    (*(v3 + 8))(v0, v1);
    OUTLINED_FUNCTION_76_1();
    if (!(!v12 & v11))
    {
      return 0;
    }
  }

  else
  {
  }

  return 13;
}

uint64_t sub_231D24488(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 664) = a7;
  *(v7 + 656) = a6;
  *(v7 + 409) = a5;
  *(v7 + 648) = a4;
  *(v7 + 640) = a3;
  *(v7 + 632) = a2;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t sub_231D244B0()
{
  OUTLINED_FUNCTION_50_0();
  v1 = *(v0 + 664);
  v2 = *(v0 + 409);
  OUTLINED_FUNCTION_1_13();
  v3 = OUTLINED_FUNCTION_37_0();
  sub_231CC3500(v3, v4, v2);
  v5 = OUTLINED_FUNCTION_36_3();
  sub_231CD2A28(v5, v6, v7, v8, v9, v10, v11, v12, v13);
  v14 = OUTLINED_FUNCTION_37_0();
  sub_231CC3500(v14, v15, v2);
  v16 = OUTLINED_FUNCTION_36_3();
  sub_231CD2A90(v16, v17, v18, v19, 2, v20, v21, v22, v23);
  v24.n128_f64[0] = sub_231DDBF28();
  OUTLINED_FUNCTION_15_8(v24);
  v25 = *v1;
  sub_231D261D8([*v1 attributeSet], &selRef_ownerIdentifier);
  if (v26)
  {
    v27 = v26;
  }

  else
  {
    v28 = [v25 uniqueIdentifier];
    sub_231E11620();
    v27 = v29;
  }

  *(v0 + 672) = v27;
  swift_task_alloc();
  OUTLINED_FUNCTION_58_0();
  *(v0 + 680) = v30;
  *v30 = v31;
  v30[1] = sub_231D24614;
  OUTLINED_FUNCTION_101_2();

  return sub_231CD45F4();
}

uint64_t sub_231D24614()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_21();
  v2 = v1;
  OUTLINED_FUNCTION_7_0();
  *v3 = v2;
  v4 = *v0;
  OUTLINED_FUNCTION_4();
  *v5 = v4;

  sub_231CC4F5C(v2 + 16);

  OUTLINED_FUNCTION_14_0();

  return v6();
}

uint64_t sub_231D24710(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[81] = a4;
  v4[80] = a3;
  v4[79] = a2;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t sub_231D2472C()
{
  OUTLINED_FUNCTION_29();
  v2 = v1[81];
  OUTLINED_FUNCTION_1_13();
  v3 = OUTLINED_FUNCTION_112_2();
  sub_231CD2A28(v3, v4, v5, v6, v7, v8, v9, v10, v11);
  v12 = OUTLINED_FUNCTION_112_2();
  sub_231CD2A90(v12, v13, v14, v15, 2, v16, v17, v18, v19);
  v20.n128_f64[0] = sub_231DDBF28();
  OUTLINED_FUNCTION_15_8(v20);
  v21 = [*v2 uniqueIdentifier];
  sub_231E11620();
  OUTLINED_FUNCTION_104_2();

  v1[82] = v0;
  swift_task_alloc();
  OUTLINED_FUNCTION_58_0();
  v1[83] = v22;
  *v22 = v23;
  v22[1] = sub_231D24828;
  OUTLINED_FUNCTION_101_2();

  return sub_231CD45F4();
}

uint64_t sub_231D24828()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_21();
  v2 = v1;
  OUTLINED_FUNCTION_7_0();
  *v3 = v2;
  v4 = *v0;
  OUTLINED_FUNCTION_4();
  *v5 = v4;

  sub_231CC4F5C(v2 + 16);
  OUTLINED_FUNCTION_14_0();

  return v6();
}

BOOL sub_231D24924(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  sub_231E12220();
  sub_231E116E0();
  v6 = sub_231E12250();
  v7 = ~(-1 << *(a3 + 32));
  do
  {
    v8 = v6 & v7;
    v9 = (1 << (v6 & v7)) & *(a3 + 56 + (((v6 & v7) >> 3) & 0xFFFFFFFFFFFFFF8));
    v10 = v9 != 0;
    if (!v9)
    {
      break;
    }

    v11 = (*(a3 + 48) + 16 * v8);
    if (*v11 == a1 && v11[1] == a2)
    {
      break;
    }

    v13 = sub_231E12100();
    v6 = v8 + 1;
  }

  while ((v13 & 1) == 0);
  return v10;
}

uint64_t sub_231D24A10()
{
  OUTLINED_FUNCTION_29();
  v0[5] = v1;
  v2 = sub_231E10E30();
  v0[6] = v2;
  OUTLINED_FUNCTION_6(v2);
  v0[7] = v3;
  v0[8] = OUTLINED_FUNCTION_55();
  v4 = swift_task_alloc();
  v0[9] = v4;
  *v4 = v0;
  v4[1] = sub_231D24B00;

  return sub_231D24D90();
}

uint64_t sub_231D24B00()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_15();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 80) = v3;

  v4 = OUTLINED_FUNCTION_10();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

void sub_231D24BEC(uint64_t a1)
{
  if (*(v1 + 80) != 31)
  {
    sub_231DC4C1C();
    v2 = OUTLINED_FUNCTION_10_8();
    v3(v2);

    v4 = sub_231E10E10();
    v5 = sub_231E11AF0();

    if (os_log_type_enabled(v4, v5))
    {
      v6 = *(v1 + 56);
      v30 = *(v1 + 48);
      v31 = *(v1 + 64);
      v7 = OUTLINED_FUNCTION_98_0();
      OUTLINED_FUNCTION_68();
      *v7 = 136446466;
      v8 = sub_231DDB1E8();
      OUTLINED_FUNCTION_175(v8, v9, v10, v11, v12, v13);
      OUTLINED_FUNCTION_117_0();
      OUTLINED_FUNCTION_57_3();
      v20 = OUTLINED_FUNCTION_175(v14, v15, v16, v17, v18, v19);

      *(v7 + 14) = v20;
      OUTLINED_FUNCTION_56_5(&dword_231CAE000, v21, v22, "%{public}s Invalid (%s)");
      OUTLINED_FUNCTION_91_2();
      OUTLINED_FUNCTION_14();
      OUTLINED_FUNCTION_11();

      (*(v6 + 8))(v31, v30);
    }

    else
    {

      v23 = OUTLINED_FUNCTION_140_0();
      v24(v23);
    }

    v25 = *(v1 + 80);
    v26 = *(v1 + 40);
    v27 = OBJC_IVAR____TtC22ProactiveSummarization22SummarizationAnalytics_invalidReason;
    OUTLINED_FUNCTION_55_2();
    *(v26 + v27) = v25;
  }

  OUTLINED_FUNCTION_8_8();
  OUTLINED_FUNCTION_35();

  __asm { BRAA            X2, X16 }
}

uint64_t sub_231D24D90()
{
  OUTLINED_FUNCTION_18();
  v1[3] = v2;
  v1[4] = v0;
  v1[2] = v3;
  v4 = sub_231E10E30();
  v1[5] = v4;
  OUTLINED_FUNCTION_6(v4);
  v1[6] = v5;
  v1[7] = OUTLINED_FUNCTION_55();
  v6 = OUTLINED_FUNCTION_10();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_231D24E38()
{
  v1 = **(v0 + 32);
  v2 = [v1 attributeSet];
  *(v0 + 64) = v2;
  v3 = sub_231CE122C(v2, &selRef_providerDataTypeIdentifiers);
  *(v0 + 72) = v3;
  if (v3)
  {
    v4 = v3;
  }

  else
  {
    v4 = MEMORY[0x277D84F90];
  }

  if (*(v4 + 16) < 2uLL || OUTLINED_FUNCTION_88_2() && OUTLINED_FUNCTION_88_2() != 5)
  {

LABEL_24:

    v18 = OUTLINED_FUNCTION_8_8();

    return v19(v18);
  }

  v5 = sub_231D26240(v2, &selRef_creator);
  v7 = v6;
  v8 = sub_231DE8A04(0);
  if (!v7)
  {

LABEL_23:

    goto LABEL_24;
  }

  if (v5 == v8 && v7 == v9)
  {
  }

  else
  {
    v11 = sub_231E12100();

    if ((v11 & 1) == 0)
    {
      goto LABEL_22;
    }
  }

  sub_231D26240(v2, &selRef_threadIdentifier);
  *(v0 + 80) = v12;
  if (!v12)
  {
LABEL_22:

    goto LABEL_23;
  }

  v13 = [v1 uniqueIdentifier];
  sub_231E11620();
  v15 = v14;

  *(v0 + 88) = v15;
  v16 = swift_task_alloc();
  *(v0 + 96) = v16;
  *v16 = v0;
  v16[1] = sub_231D250B8;

  return sub_231CDEC1C();
}

uint64_t sub_231D250B8()
{
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_7_0();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 104) = v0;

  OUTLINED_FUNCTION_12_0();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_231D2521C()
{
  OUTLINED_FUNCTION_18();

  OUTLINED_FUNCTION_18_6();

  return v1(22);
}

uint64_t sub_231D25400()
{
  OUTLINED_FUNCTION_18();
  v1[9] = v2;
  v1[10] = v0;
  OUTLINED_FUNCTION_106_2(v3);
  v4 = sub_231E10E30();
  v1[11] = v4;
  OUTLINED_FUNCTION_6(v4);
  v1[12] = v5;
  v1[13] = swift_task_alloc();
  v1[14] = swift_task_alloc();
  v6 = swift_task_alloc();
  v1[15] = v6;
  *v6 = v1;
  v6[1] = sub_231D254EC;

  return sub_231D25A84();
}

uint64_t sub_231D254EC()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_15();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 152) = v3;

  v4 = OUTLINED_FUNCTION_10();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

void sub_231D25958()
{
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_21();
  v3 = v2;
  OUTLINED_FUNCTION_7_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_4();
  *v6 = v5;

  if (v0)
  {
  }

  else
  {
    sub_231CBA16C(*(v3 + 128), 0, *(v3 + 153));

    OUTLINED_FUNCTION_12_0();

    MEMORY[0x2822009F8](v7, v8, v9);
  }
}

uint64_t sub_231D25A84()
{
  OUTLINED_FUNCTION_18();
  v1[4] = v0;
  v2 = sub_231E0F4A0();
  v1[5] = v2;
  OUTLINED_FUNCTION_6(v2);
  v1[6] = v3;
  v1[7] = OUTLINED_FUNCTION_55();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&dword_27DD74AD0, &qword_231E16C40);
  OUTLINED_FUNCTION_47(v4);
  v1[8] = OUTLINED_FUNCTION_55();
  v5 = OUTLINED_FUNCTION_10();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_231D25B54()
{
  v1 = [**(v0 + 32) attributeSet];
  v2 = [v1 contentCreationDate];
  v3 = *(v0 + 64);
  if (v2)
  {
    v4 = v2;
    sub_231E0F910();

    sub_231E0F950();
    OUTLINED_FUNCTION_15_7();
    __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
    sub_231CE1118(v3, &dword_27DD74AD0, &qword_231E16C40);
    if (OUTLINED_FUNCTION_88_2() == 1 || OUTLINED_FUNCTION_88_2() == 4 || (v10 = sub_231D26240(v1, &selRef_transcribedTextContent), !v11))
    {
    }

    else
    {
      v13 = *(v0 + 48);
      v12 = *(v0 + 56);
      v14 = *(v0 + 40);
      *(v0 + 16) = v10;
      *(v0 + 24) = v11;
      sub_231E0F480();
      sub_231CE11D8();
      sub_231E11C30();

      (*(v13 + 8))(v12, v14);
    }
  }

  else
  {

    v9 = sub_231E0F950();
    __swift_storeEnumTagSinglePayload(v3, 1, 1, v9);
    sub_231CE1118(v3, &dword_27DD74AD0, &qword_231E16C40);
  }

  v15 = OUTLINED_FUNCTION_8_8();

  return v16(v15);
}

uint64_t sub_231D25D5C()
{
  v1 = sub_231E0F950();
  OUTLINED_FUNCTION_24();
  v3 = v2;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_3();
  MEMORY[0x28223BE20](v5);
  v6 = [OUTLINED_FUNCTION_107_2() attributeSet];
  v7 = [v6 contentCreationDate];
  if (v7)
  {
    v8 = v7;
    sub_231E0F910();

    v9 = OUTLINED_FUNCTION_80_0();
    v10(v9);
    sub_231E0F870();
    sub_231E0F880();
    sub_231D11D54();

    (*(v3 + 8))(v0, v1);
    OUTLINED_FUNCTION_76_1();
    if (!(!v12 & v11))
    {
      return 0;
    }
  }

  else
  {
  }

  return 53;
}

uint64_t sub_231D25ECC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 664) = a7;
  *(v7 + 656) = a6;
  *(v7 + 409) = a5;
  *(v7 + 648) = a4;
  *(v7 + 640) = a3;
  *(v7 + 632) = a2;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t sub_231D25EF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  OUTLINED_FUNCTION_57_0();
  v10 = *(v9 + 664);
  v11 = *(v9 + 409);
  v12 = *(v9 + 640);
  OUTLINED_FUNCTION_1_13();
  v13 = OUTLINED_FUNCTION_37_0();
  sub_231CC3500(v13, v14, v11);
  v15 = OUTLINED_FUNCTION_36_3();
  sub_231CD2A28(v15, v16, v17, v18, v19, v20, v21, v22, v23);
  sub_231CD2A90(54, 0, 0x10Du, (v9 + 536), 2, v24, v25, v26, v9 + 288);
  v27.n128_f64[0] = sub_231DDBF28();
  OUTLINED_FUNCTION_15_8(v27);
  v28 = *v10;
  v29 = [*v10 uniqueIdentifier];
  sub_231E11620();
  OUTLINED_FUNCTION_64_1();

  *(v9 + 672) = v12;
  sub_231D26240(v28, &selRef_domainIdentifier);
  *(v9 + 680) = v30;
  swift_task_alloc();
  OUTLINED_FUNCTION_58_0();
  *(v9 + 688) = v31;
  *v31 = v32;
  v31[1] = sub_231D266CC;
  OUTLINED_FUNCTION_101_2();
  OUTLINED_FUNCTION_44();

  return sub_231CD545C(v33, v34, v35, v36, v37, v38, v39, v40, a9);
}

uint64_t sub_231D26064(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 != 0xFF)
  {
    return sub_231CC3500(a1, a2, a3);
  }

  return a1;
}

uint64_t sub_231D26078()
{
  OUTLINED_FUNCTION_50_0();
  OUTLINED_FUNCTION_70_2();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_38(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_14_5(v1);
  OUTLINED_FUNCTION_43_6();

  return sub_231D1FFA4(v3, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_231D26114(void *a1)
{
  v1 = [a1 authors];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  sub_231D26668();
  v3 = sub_231E11870();

  return v3;
}

uint64_t sub_231D26174(void *a1)
{
  v1 = [a1 HTMLContentDataNoCopy];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_231E0F840();

  return v3;
}

uint64_t sub_231D261D8(void *a1, SEL *a2)
{
  v3 = [a1 *a2];

  if (v3)
  {
    sub_231E11620();
  }

  return OUTLINED_FUNCTION_140_0();
}

uint64_t sub_231D26240(void *a1, SEL *a2)
{
  v2 = [a1 *a2];
  if (v2)
  {
    v3 = v2;
    sub_231E11620();
    OUTLINED_FUNCTION_105_2();
  }

  return OUTLINED_FUNCTION_59_0();
}

uint64_t sub_231D26298(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&dword_27DD74AD0, &qword_231E16C40);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_231D26308()
{
  OUTLINED_FUNCTION_50_0();
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  v3 = *(v0 + 56);
  v4 = *(v0 + 48);
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_38(v5);
  *v6 = v7;
  v8 = OUTLINED_FUNCTION_14_5(v6);

  return sub_231D21A90(v8, v9, v10, v1, v2, v4, v3);
}

uint64_t sub_231D263B8()
{
  OUTLINED_FUNCTION_50_0();
  OUTLINED_FUNCTION_70_2();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_38(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_14_5(v1);
  OUTLINED_FUNCTION_43_6();

  return sub_231D24488(v3, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_231D26454()
{
  OUTLINED_FUNCTION_50_0();
  OUTLINED_FUNCTION_70_2();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_38(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_14_5(v1);
  OUTLINED_FUNCTION_43_6();

  return sub_231D25ECC(v3, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_231D264F0()
{
  OUTLINED_FUNCTION_29();
  v1 = *(v0 + 32);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_38(v2);
  *v3 = v4;
  v5 = OUTLINED_FUNCTION_14_5(v3);

  return sub_231D24710(v5, v6, v7, v1);
}

uint64_t sub_231D26584()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_21();
  v1 = *v0;
  OUTLINED_FUNCTION_4();
  *v2 = v1;

  v3 = *(v1 + 8);

  return v3();
}

unint64_t sub_231D26668()
{
  result = qword_2814CAEB8;
  if (!qword_2814CAEB8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2814CAEB8);
  }

  return result;
}

double OUTLINED_FUNCTION_1_13()
{
  *(v0 + 536) = 0;
  *(v0 + 544) = 1;
  result = 0.0;
  *(v0 + 552) = 0u;
  *(v0 + 568) = 0u;
  *(v0 + 584) = 0u;
  *(v0 + 600) = 0u;
  *(v0 + 616) = 0u;
  return result;
}

void OUTLINED_FUNCTION_17_7(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[29] = a2;
  v4[30] = a3;
  v4[31] = a4;
}

void OUTLINED_FUNCTION_26_3(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0x16u);
}

id OUTLINED_FUNCTION_27_3()
{
  *(v2 + 4) = v0;
  *(v2 + 12) = 2114;

  return v1;
}

uint64_t OUTLINED_FUNCTION_33_7(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_231E12100();
}

uint64_t OUTLINED_FUNCTION_44_5(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_47_4()
{
}

uint64_t OUTLINED_FUNCTION_49_5()
{
}

uint64_t OUTLINED_FUNCTION_50_3()
{

  return swift_slowAlloc();
}

__n128 OUTLINED_FUNCTION_53_5(__n128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __n128 a11, uint64_t a9, uint64_t a10, __n128 a12)
{
  *(v14 + 136) = a1;
  a1[1].n128_u64[0] = v15;
  *(&a1[1] + 8) = v13;
  a1[2].n128_u8[8] = v12;
  result = a12;
  a1[3] = a12;
  return result;
}

uint64_t OUTLINED_FUNCTION_54_4()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_55_2()
{

  return swift_beginAccess();
}

void OUTLINED_FUNCTION_56_5(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0x16u);
}

void OUTLINED_FUNCTION_57_3()
{
  *(v0 + 4) = v2;
  *(v0 + 12) = 2080;

  sub_231CC8F48(v1);
}

void OUTLINED_FUNCTION_59_4(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0x16u);
}

uint64_t OUTLINED_FUNCTION_60_3()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_63_2()
{
}

uint64_t OUTLINED_FUNCTION_81_2(uint64_t result)
{
  *(v1 + 14) = result;
  *v2 = result;
  return result;
}

id OUTLINED_FUNCTION_88_2()
{

  return [v0 (v1 + 3521)];
}

uint64_t OUTLINED_FUNCTION_90_2(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_231E12100();
}

uint64_t OUTLINED_FUNCTION_91_2()
{

  return swift_arrayDestroy();
}

uint64_t OUTLINED_FUNCTION_92_1()
{

  return swift_arrayDestroy();
}

uint64_t OUTLINED_FUNCTION_93_2()
{
}

uint64_t OUTLINED_FUNCTION_94_2()
{

  return sub_231CBA16C(v0, v1, v2);
}

uint64_t OUTLINED_FUNCTION_95_2()
{
}

uint64_t OUTLINED_FUNCTION_96_2(uint64_t a1)
{

  return sub_231DC4C1C();
}

uint64_t OUTLINED_FUNCTION_97_2(void *a1)
{
  v3 = a1[1];
  *(v1 + 16) = *a1;
  *(v1 + 24) = v3;

  return swift_task_alloc();
}

uint64_t OUTLINED_FUNCTION_111_2(uint64_t result, uint64_t a2, char a3)
{
  *(v3 + 128) = result;
  *(v3 + 153) = a3;
  return result;
}

uint64_t OUTLINED_FUNCTION_115_1()
{

  return sub_231E0F910();
}

id OUTLINED_FUNCTION_116_2()
{

  return [v0 (v1 + 3521)];
}

id OUTLINED_FUNCTION_117_2()
{

  return [v1 (v0 + 3521)];
}

uint64_t OUTLINED_FUNCTION_118_2()
{
}

uint64_t sub_231D26C98()
{
  v0 = sub_231E118B0();
  *(v0 + 16) = 32;
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0u;
  if (SecRandomCopyBytes(*MEMORY[0x277CDC540], 0x20uLL, (v0 + 32)))
  {

    v2 = 0;
    v3 = 0xF000000000000000;
  }

  else
  {
    v2 = sub_231D26D40(v0 + 32, *(v0 + 16));
    v3 = v4;
  }

  qword_27DD8BDB0 = v2;
  qword_27DD8BDB8 = v3;
  return result;
}

unint64_t sub_231D26D40(uint64_t a1, unint64_t a2)
{
  result = 0;
  if (a1 && a2)
  {
    if (a2 <= 14)
    {
      return sub_231E0F790();
    }

    else
    {
      sub_231E0F560();
      swift_allocObject();
      sub_231E0F520();
      if (a2 >= 0x7FFFFFFF)
      {
        sub_231E0F7E0();
        result = swift_allocObject();
        *(result + 16) = 0;
        *(result + 24) = a2;
      }

      else
      {
        return a2 << 32;
      }
    }
  }

  return result;
}

uint64_t sub_231D26DF0(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_231CF4400(result, a2);
  }

  return result;
}

unint64_t sub_231D26E04(uint64_t a1, uint64_t a2)
{
  v70 = *MEMORY[0x277D85DE8];
  v2 = sub_231E114D0();
  OUTLINED_FUNCTION_24();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_4_1();
  v8 = v7 - v6;
  v9 = sub_231E11500();
  OUTLINED_FUNCTION_24();
  v11 = v10;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_4_1();
  v65 = v14 - v13;
  v15 = sub_231E11670();
  OUTLINED_FUNCTION_24();
  v17 = v16;
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_4_1();
  v21 = v20 - v19;
  sub_231E11660();
  v22 = sub_231E11630();
  v24 = v23;
  (*(v17 + 8))(v21, v15);
  if (v24 >> 60 != 15)
  {
    v26 = v24;
    if (qword_27DD829B8 != -1)
    {
      goto LABEL_50;
    }

    while (1)
    {
      v54 = v22;
      swift_beginAccess();
      v27 = qword_27DD8BDB8;
      if (qword_27DD8BDB8 >> 60 == 15)
      {
        v25 = 0xD000000000000010;
        sub_231CF4340(v22, v26);
        return v25;
      }

      v53 = v11;
      v28 = qword_27DD8BDB0;
      sub_231CF4400(qword_27DD8BDB0, qword_27DD8BDB8);
      sub_231E114F0();
      sub_231CF4400(v22, v26);
      sub_231D27708(v22, v26, v65);
      sub_231CF4340(v22, v26);
      sub_231CF4400(v28, v27);
      sub_231D27708(v28, v27, v65);
      v51 = v28;
      v52 = v27;
      sub_231CF4340(v28, v27);
      sub_231E114E0();
      sub_231E114C0();
      v29 = v68;
      v11 = v69;
      v30 = v69 >> 62;
      v31 = MEMORY[0x277D84F90];
      v64 = BYTE6(v69);
      switch(v69 >> 62)
      {
        case 1uLL:
          v50 = v26;
          if (__OFSUB__(HIDWORD(v68), v68))
          {
            goto LABEL_52;
          }

          v26 = HIDWORD(v68) - v68;
LABEL_11:
          if (!v26)
          {
            goto LABEL_41;
          }

          v61 = HIDWORD(v68);
          v67[0] = MEMORY[0x277D84F90];
          v22 = v67;
          sub_231CC686C(0, v26 & ~(v26 >> 63), 0);
          v63 = v29;
          v49 = v2;
          v48 = v4;
          v47 = v9;
          v46 = v8;
          if (v30)
          {
            if (v30 == 2)
            {
              v8 = *(v29 + 16);
            }

            else
            {
              v8 = v29;
            }
          }

          else
          {
            v8 = 0;
          }

          if (v26 < 0)
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
          }

          v31 = v67[0];
          v62 = v29 >> 32;
          v59 = v29 >> 16;
          v60 = v29 >> 8;
          v57 = v29 >> 40;
          v58 = v29 >> 24;
          v56 = HIWORD(v29);
          v55 = HIBYTE(v29);
          v66 = v29;
          break;
        case 2uLL:
          v50 = v26;
          v33 = *(v68 + 16);
          v32 = *(v68 + 24);
          v26 = v32 - v33;
          if (!__OFSUB__(v32, v33))
          {
            goto LABEL_11;
          }

          goto LABEL_53;
        case 3uLL:
          goto LABEL_42;
        default:
          v50 = v26;
          v26 = BYTE6(v69);
          goto LABEL_11;
      }

      while (1)
      {
        if (v30 == 1)
        {
          if (v8 < v63 || v8 >= v62)
          {
            goto LABEL_46;
          }

          v35 = sub_231E0F530();
          if (!v35)
          {
            goto LABEL_54;
          }

          v2 = v35;
          v22 = v11 & 0x3FFFFFFFFFFFFFFFLL;
          v36 = sub_231E0F550();
          v37 = v8 - v36;
          if (__OFSUB__(v8, v36))
          {
            goto LABEL_48;
          }

          goto LABEL_36;
        }

        if (!v30)
        {
          if (v8 >= v64)
          {
            goto LABEL_45;
          }

          LOBYTE(v68) = v29;
          BYTE1(v68) = v60;
          BYTE2(v68) = v59;
          BYTE3(v68) = v58;
          BYTE4(v68) = v61;
          BYTE5(v68) = v57;
          BYTE6(v68) = v56;
          HIBYTE(v68) = v55;
          LOWORD(v69) = v11;
          BYTE2(v69) = BYTE2(v11);
          BYTE3(v69) = BYTE3(v11);
          BYTE4(v69) = BYTE4(v11);
          BYTE5(v69) = BYTE5(v11);
          v22 = *(&v68 + v8);
          goto LABEL_37;
        }

        if (v8 < *(v29 + 16))
        {
          break;
        }

        if (v8 >= *(v29 + 24))
        {
          goto LABEL_47;
        }

        v38 = sub_231E0F530();
        if (!v38)
        {
          goto LABEL_55;
        }

        v2 = v38;
        v22 = v11 & 0x3FFFFFFFFFFFFFFFLL;
        v39 = sub_231E0F550();
        v37 = v8 - v39;
        if (__OFSUB__(v8, v39))
        {
          goto LABEL_49;
        }

LABEL_36:
        v22 = *(v2 + v37);
LABEL_37:
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74B80, &unk_231E1C350);
        v40 = swift_allocObject();
        *(v40 + 16) = xmmword_231E138E0;
        *(v40 + 56) = MEMORY[0x277D84B78];
        *(v40 + 64) = MEMORY[0x277D84BC0];
        *(v40 + 32) = v22;
        v2 = sub_231E11650();
        v4 = v41;
        v67[0] = v31;
        v43 = *(v31 + 16);
        v42 = *(v31 + 24);
        v9 = v43 + 1;
        if (v43 >= v42 >> 1)
        {
          v22 = v67;
          sub_231CC686C((v42 > 1), v43 + 1, 1);
          v31 = v67[0];
        }

        *(v31 + 16) = v9;
        v44 = v31 + 16 * v43;
        *(v44 + 32) = v2;
        *(v44 + 40) = v4;
        ++v8;
        --v26;
        v29 = v66;
        if (!v26)
        {
          v2 = v49;
          v4 = v48;
          v9 = v47;
          v8 = v46;
LABEL_41:
          v26 = v50;
LABEL_42:
          v68 = v31;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74460, &qword_231E1C990);
          sub_231D2781C();
          v25 = sub_231E11580();
          sub_231CF4354(v29, v11);
          sub_231CF4340(v51, v52);
          sub_231CF4340(v54, v26);

          (*(v4 + 8))(v8, v2);
          (*(v53 + 8))(v65, v9);
          return v25;
        }
      }

      __break(1u);
LABEL_45:
      __break(1u);
LABEL_46:
      __break(1u);
LABEL_47:
      __break(1u);
LABEL_48:
      __break(1u);
LABEL_49:
      __break(1u);
LABEL_50:
      OUTLINED_FUNCTION_0_17(&qword_27DD829B8);
    }
  }

  return 0xD000000000000012;
}

uint64_t sub_231D27548@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = sub_231D27588(8uLL, a1, a2);
  result = sub_231D2761C(v4, v5, v6, v7);
  *a3 = result;
  a3[1] = v9;
  return result;
}

unint64_t sub_231D27588(unint64_t result, uint64_t a2, uint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v5 = result;
    if (a2)
    {
      v6 = a3 - a2;
    }

    else
    {
      v6 = 0;
    }

    result = sub_231D27AD4(0, v6, a2, a3);
    if (!v5 || result >= v5)
    {
      result = sub_231D27AA8(0, v5, a2, a3);
      v6 = result;
    }

    if ((v6 & 0x8000000000000000) == 0)
    {
      return 0;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_231D2761C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74B88, &qword_231E1C380);
  v12[3] = v8;
  v12[4] = sub_231D278D8();
  v9 = swift_allocObject();
  v12[0] = v9;
  v9[2] = a1;
  v9[3] = a2;
  v9[4] = a3;
  v9[5] = a4;
  __swift_project_boxed_opaque_existential_0(v12, v8);
  sub_231E12210();
  __swift_destroy_boxed_opaque_existential_0(v12);
  return v11;
}

void sub_231D27708(uint64_t a1, unint64_t a2, uint64_t a3)
{
  switch(a2 >> 62)
  {
    case 1uLL:
      v7 = a1 >> 32;
      if (a1 >> 32 < a1)
      {
        goto LABEL_11;
      }

      a1 = a1;
      v6 = v7;
      goto LABEL_9;
    case 2uLL:
      v5 = *(a1 + 24);
      a1 = *(a1 + 16);
      v6 = v5;
LABEL_9:
      sub_231D279F8(a1, v6);
      if (v3)
      {
        goto LABEL_10;
      }

      return;
    case 3uLL:
      a1 = 0;
      v4 = 0;
      goto LABEL_5;
    default:
      v4 = a2 & 0xFFFFFFFFFFFFFFLL;
LABEL_5:
      sub_231D27954(a1, v4);
      if (v3)
      {
LABEL_10:

        __break(1u);
LABEL_11:
        __break(1u);
      }

      return;
  }
}

uint64_t sub_231D277A4@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  if (!result)
  {
    goto LABEL_4;
  }

  v4 = a2 - result;
  if (a2 == result)
  {
    result = 0;
LABEL_4:
    v5 = 0xC000000000000000;
    goto LABEL_5;
  }

  if (v4 <= 14)
  {
    result = sub_231E0F790();
    v5 = v7 & 0xFFFFFFFFFFFFFFLL;
  }

  else if (v4 >= 0x7FFFFFFF)
  {
    result = MEMORY[0x23837ACB0]();
    v5 = v8 | 0x8000000000000000;
  }

  else
  {
    result = MEMORY[0x23837ACD0]();
    v5 = v6 | 0x4000000000000000;
  }

LABEL_5:
  *a3 = result;
  a3[1] = v5;
  return result;
}

unint64_t sub_231D2781C()
{
  result = qword_2814CAF78;
  if (!qword_2814CAF78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DD74460, &qword_231E1C990);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814CAF78);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_231D278D8()
{
  result = qword_27DD74B90;
  if (!qword_27DD74B90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DD74B88, &qword_231E1C380);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD74B90);
  }

  return result;
}

uint64_t sub_231D27954(uint64_t a1, uint64_t a2)
{
  sub_231E11500();
  sub_231D27B08();
  return sub_231E11490();
}

uint64_t sub_231D279F8(uint64_t a1, uint64_t a2)
{
  result = sub_231E0F530();
  if (!result || (result = sub_231E0F550(), !__OFSUB__(a1, result)))
  {
    if (!__OFSUB__(a2, a1))
    {
      sub_231E0F540();
      sub_231E11500();
      sub_231D27B08();
      return sub_231E11490();
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_231D27AA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = __OFADD__(a1, a2);
  result = a1 + a2;
  if (v4)
  {
    __break(1u);
LABEL_8:
    __break(1u);
    return result;
  }

  v6 = a4 - a3;
  if (!a3)
  {
    v6 = 0;
  }

  if (result < 0 || v6 < result)
  {
    goto LABEL_8;
  }

  return result;
}

uint64_t sub_231D27AD4(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 - a3;
  if (!a3)
  {
    v4 = 0;
  }

  if (result < 0 || v4 < result)
  {
    __break(1u);
  }

  else if ((a2 & 0x8000000000000000) == 0 && v4 >= a2)
  {
    return a2 - result;
  }

  __break(1u);
  return result;
}

unint64_t sub_231D27B08()
{
  result = qword_27DD74B98;
  if (!qword_27DD74B98)
  {
    sub_231E11500();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD74B98);
  }

  return result;
}

void sub_231D27B64(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 a4)
{
  v6 = objc_autoreleasePoolPush();
  v7 = OUTLINED_FUNCTION_18_0();
  sub_231D27BEC(v7, v8, a4, v9, a3, v10);

  objc_autoreleasePoolPop(v6);
}

void sub_231D27BEC(void *a1@<X0>, void *a2@<X1>, unsigned __int8 a3@<W2>, int a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v425 = a5;
  LODWORD(v424) = a4;
  v422 = a6;
  LODWORD(v423) = a3;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74A78, &unk_231E1E3E0);
  v10 = OUTLINED_FUNCTION_47(v9);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_6_12(&v380 - v11);
  v399 = sub_231E10070();
  OUTLINED_FUNCTION_24();
  v398 = v12;
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_6_12(v15 - v14);
  v413 = sub_231E10470();
  OUTLINED_FUNCTION_24();
  v414 = v16;
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_6_12(v19 - v18);
  v415 = sub_231E10400();
  OUTLINED_FUNCTION_24();
  v407 = v20;
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_139();
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_25_5();
  OUTLINED_FUNCTION_6_12(v23);
  v426 = sub_231E0F950();
  OUTLINED_FUNCTION_24();
  v404 = v24;
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_4_1();
  v403 = v27 - v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&dword_27DD74AD0, &qword_231E16C40);
  v29 = OUTLINED_FUNCTION_47(v28);
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_139();
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_10_0();
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_10_0();
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_10_0();
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_25_5();
  OUTLINED_FUNCTION_6_12(v34);
  v386 = sub_231E0FA50();
  OUTLINED_FUNCTION_24();
  v385 = v35;
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_4_1();
  v39 = v38 - v37;
  v387 = sub_231E10DB0();
  OUTLINED_FUNCTION_24();
  v384 = v40;
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_6_12(v43 - v42);
  v427 = sub_231E10E30();
  OUTLINED_FUNCTION_24();
  v418 = v44;
  MEMORY[0x28223BE20](v45);
  OUTLINED_FUNCTION_139();
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v46);
  OUTLINED_FUNCTION_10_0();
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v47);
  OUTLINED_FUNCTION_10_0();
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v48);
  OUTLINED_FUNCTION_10_0();
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v49);
  OUTLINED_FUNCTION_10_0();
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v50);
  OUTLINED_FUNCTION_10_0();
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v51);
  OUTLINED_FUNCTION_10_0();
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v52);
  OUTLINED_FUNCTION_25_5();
  OUTLINED_FUNCTION_6_12(v53);
  v54 = sub_231E11670();
  v55 = OUTLINED_FUNCTION_47(v54);
  MEMORY[0x28223BE20](v55);
  OUTLINED_FUNCTION_4_1();
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD73F98, &unk_231E170E0);
  v57 = OUTLINED_FUNCTION_47(v56);
  MEMORY[0x28223BE20](v57);
  OUTLINED_FUNCTION_139();
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v58);
  OUTLINED_FUNCTION_10_0();
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v59);
  OUTLINED_FUNCTION_10_0();
  OUTLINED_FUNCTION_9();
  v61 = MEMORY[0x28223BE20](v60);
  v63 = &v380 - v62;
  MEMORY[0x28223BE20](v61);
  OUTLINED_FUNCTION_25_5();
  v430 = v64;
  sub_231E10210();
  OUTLINED_FUNCTION_24();
  v432 = v65;
  v433 = v66;
  MEMORY[0x28223BE20](v65);
  OUTLINED_FUNCTION_139();
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v67);
  OUTLINED_FUNCTION_25_5();
  v438 = v68;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&dword_27DD73FA0, &dword_231E13460);
  v70 = OUTLINED_FUNCTION_47(v69);
  MEMORY[0x28223BE20](v70);
  OUTLINED_FUNCTION_139();
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v71);
  v73 = &v380 - v72;
  v74 = [a1 attributeSet];
  sub_231DF3D04(0, a2);
  v429 = v73;
  sub_231D177B0(v75, v73);

  sub_231DF3D04(1, a2);
  v421 = v76;
  sub_231DF3D04(2, a2);
  v420 = v77;
  sub_231DF3D04(3, a2);
  v419 = v78;
  v431 = v74;
  v408 = sub_231CC33AC(v74, &selRef_bundleID);
  v80 = v79;
  v81 = MEMORY[0x277D42280];
  v82 = MEMORY[0x277D42278];
  v417 = a1;
  if (v423 != 1)
  {
    v410 = v79;
    v80 = sub_231D2A448([a1 attributeSet]);
    v90 = v89;
    v63 = sub_231D2A4B8([a1 attributeSet]);
    v92 = v91;
    if (v424)
    {

      v83 = v431;
      v93 = [v431 contentSnippet];
      v87 = v426;
      if (v93)
      {
        v94 = v93;
        v95 = sub_231E11620();
        v80 = v96;
        v97 = OUTLINED_FUNCTION_15_9();
        sub_231CF4340(v97, v98);

        v99 = v438;
        *v438 = v95;
        v99[1] = v80;
        OUTLINED_FUNCTION_24_4();
      }

      else
      {
        v131 = OUTLINED_FUNCTION_15_9();
        sub_231CF4340(v131, v132);
        OUTLINED_FUNCTION_24_4();
        v100 = v438;
      }

      v101(v100);
      v125 = v430;
      OUTLINED_FUNCTION_14_6();
      OUTLINED_FUNCTION_41_5();
      goto LABEL_28;
    }

    v120 = sub_231CE227C(v408, v410);
    v83 = v431;
    if (v120)
    {
      OUTLINED_FUNCTION_14_6();
      if (v90)
      {
        v121 = OUTLINED_FUNCTION_15_9();
        sub_231CF4340(v121, v122);
        v123 = v438;
        *v438 = v80;
        v123[1] = v90;
        OUTLINED_FUNCTION_24_4();
      }

      else
      {
        if (v92 >> 60 == 15)
        {
          OUTLINED_FUNCTION_30_5();
          OUTLINED_FUNCTION_31_4();
          OUTLINED_FUNCTION_32_4();

          sub_231CB4EEC();
          OUTLINED_FUNCTION_0_18();
          v147 = v382;
          v148 = v81;
          v149 = v427;
          v150(v382);

          v151 = sub_231E10E10();
          sub_231E11AD0();

          if (OUTLINED_FUNCTION_33_8())
          {
            OUTLINED_FUNCTION_9_1();
            v152 = OUTLINED_FUNCTION_13_8();
            *&v437[0] = v152;
            *v82 = 136446210;
            v153 = sub_231DE2398(v148);
            v155 = sub_231CB5000(v153, v154, v437);

            *(v82 + 1) = v155;
            OUTLINED_FUNCTION_8_9(&dword_231CAE000, v156, v157, "%{public}s Unable to create MailEntity, plain text body or HTML body not provided");
            __swift_destroy_boxed_opaque_existential_0(v152);
            OUTLINED_FUNCTION_30();
            OUTLINED_FUNCTION_12_8();

            (*(v63 + 1))(v147, v427);
          }

          else
          {

            (*(v63 + 1))(v147, v149);
          }

          goto LABEL_73;
        }

        sub_231E11660();
        OUTLINED_FUNCTION_15_9();
        sub_231E11640();
        if (!v320 || (type metadata accessor for EmailFrameworkMailFetcher(), OUTLINED_FUNCTION_18_0(), v321 = sub_231CBBDA0(), v80 = v322, , !v80))
        {
          v327 = sub_231CB4EEC();
          v328 = v381;
          v329 = v427;
          (*(v418 + 16))(v381, v327, v427);

          v330 = sub_231E10E10();
          v331 = sub_231E11AD0();

          if (os_log_type_enabled(v330, v331))
          {
            v332 = OUTLINED_FUNCTION_9_1();
            v333 = swift_slowAlloc();
            *&v437[0] = v333;
            *v332 = 136446210;
            v334 = sub_231DE2398(v81);
            v81 = sub_231CB5000(v334, v335, v437);

            *(v332 + 4) = v81;
            OUTLINED_FUNCTION_14_6();
            _os_log_impl(&dword_231CAE000, v330, v331, "%{public}s First attempt at HTML parsing failed, falling back to old parsing approach", v332, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v333);
            OUTLINED_FUNCTION_12_8();
            OUTLINED_FUNCTION_30();

            (*(v418 + 8))(v381, v427);
          }

          else
          {

            (*(v418 + 8))(v328, v329);
          }

          v356 = type metadata accessor for QuotedRegionHtmlParser();
          v357 = sub_231D1DE64();
          sub_231DC5114(v357, v358);
          v359 = v384;
          v360 = OUTLINED_FUNCTION_28_3();
          v362 = *(v361 - 256);
          v364 = v363(v360);
          MEMORY[0x28223BE20](v364);
          OUTLINED_FUNCTION_43_7("QuotedRegions.Parsing", v365, v366, sub_231D2A528);
          v428 = v6;
          v367 = *(v359 + 8);
          v80 = v359 + 8;
          v367(v356, v362);
          swift_beginAccess();
          v368 = v357[4];
          v369 = v438;
          *v438 = v357[3];
          v369[1] = v368;
          (*(v433 + 104))();

          if (v81)
          {
            sub_231DDABDC();
          }

          v370 = OUTLINED_FUNCTION_15_9();
          sub_231CF4340(v370, v371);

          v125 = v430;
          OUTLINED_FUNCTION_41_5();
          goto LABEL_23;
        }

        v323 = OUTLINED_FUNCTION_15_9();
        sub_231CF4340(v323, v324);
        v325 = v438;
        *v438 = v321;
        v325[1] = v80;
        OUTLINED_FUNCTION_24_4();
      }

      v124();
      v125 = v430;
    }

    else
    {
      v129 = OUTLINED_FUNCTION_15_9();
      sub_231CF4340(v129, v130);

      (*(v433 + 104))(v438, *v82, v432);
      v125 = v430;
      OUTLINED_FUNCTION_14_6();
    }

    OUTLINED_FUNCTION_41_5();
LABEL_23:
    v87 = v426;
LABEL_28:
    sub_231E10290();
    OUTLINED_FUNCTION_105();
    __swift_storeEnumTagSinglePayload(v133, v134, v135, v136);
    goto LABEL_41;
  }

  *&v435 = 0;
  if (v424)
  {
    v83 = v431;
    v84 = sub_231CC33AC(v431, &selRef_contentSnippet);
    v86 = v433;
    v87 = v426;
    if (v85)
    {
      v88 = v438;
      *v438 = v84;
      v88[1] = v85;
      (*(v86 + 104))(v88, *v81, v432);
    }

    else
    {
      (*(v433 + 104))(v438, *v82, v432);
    }

    v125 = v430;
    OUTLINED_FUNCTION_14_6();
    goto LABEL_37;
  }

  v437[0] = 0uLL;
  v83 = v431;
  sub_231D26174(v431);
  v87 = v426;
  if (v102 >> 60 == 15 || (v103 = objc_allocWithZone(MEMORY[0x277D41E10]), v104 = OUTLINED_FUNCTION_18_0(), sub_231CF4400(v104, v105), OUTLINED_FUNCTION_18_0(), v106 = sub_231E0F820(), v107 = [v103 initWithData:v106 encoding:4], v106, v83 = v431, v108 = OUTLINED_FUNCTION_18_0(), sub_231CF4340(v108, v109), v110 = OUTLINED_FUNCTION_18_0(), sub_231CF4340(v110, v111), !v107))
  {
    v107 = 0;
    v437[0] = 0uLL;
    OUTLINED_FUNCTION_14_6();
    goto LABEL_19;
  }

  v112 = [v107 quotedRegions];
  sub_231E0FA30();

  v113 = sub_231E0FA40();
  (*(v385 + 8))(v39, v386);
  OUTLINED_FUNCTION_14_6();
  if ((v113 & 1) == 0)
  {
    sub_231DC5114(v114, v115);
    v158 = v384;
    v159 = OUTLINED_FUNCTION_28_3();
    v161 = v160(v159);
    v424 = &v380;
    MEMORY[0x28223BE20](v161);
    OUTLINED_FUNCTION_43_7("QuotedRegions.Parsing", v162, v163, sub_231D2A418);
    v428 = v6;
    (*(v158 + 8))(v113, v387);
    v119 = *(&v437[0] + 1);
    if (*(&v437[0] + 1))
    {
      goto LABEL_35;
    }

LABEL_19:
    v126 = sub_231CC33AC(v83, &selRef_textContentNoCopy);
    if (!v127)
    {
      OUTLINED_FUNCTION_30_5();
      OUTLINED_FUNCTION_31_4();
      OUTLINED_FUNCTION_32_4();

      sub_231CB4EEC();
      OUTLINED_FUNCTION_0_18();
      v137 = v389;
      v138 = v427;
      v139(v389);

      v140 = v137;
      v141 = sub_231E10E10();
      sub_231E11AD0();
      OUTLINED_FUNCTION_37_5();
      if (OUTLINED_FUNCTION_33_8())
      {
        v142 = OUTLINED_FUNCTION_9_1();
        v143 = swift_slowAlloc();
        v434 = v143;
        *v142 = 136446210;
        v144 = sub_231DE2398(v81);
        v146 = sub_231CB5000(v144, v145, &v434);

        *(v142 + 4) = v146;
        _os_log_impl(&dword_231CAE000, v141, v140, "%{public}s Unable to create MailEntity, plain text body missing and HTML body either missing or failed to parse", v142, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v143);
        OUTLINED_FUNCTION_30();
        OUTLINED_FUNCTION_30();

        (*(v63 + 1))(v389, v427);
      }

      else
      {

        (*(v63 + 1))(v137, v138);
      }

      sub_231CC154C(v429, &dword_27DD73FA0, &dword_231E13460);
      sub_231E10340();
      OUTLINED_FUNCTION_105();
      __swift_storeEnumTagSinglePayload(v271, v272, v273, v274);

      return;
    }

    v128 = v126;
    v119 = v127;

    goto LABEL_36;
  }

  v116 = [v107 textContent];
  v117 = sub_231E11620();
  v119 = v118;

  *&v437[0] = v117;
  *(&v437[0] + 1) = v119;
  v87 = v426;
  if (!v119)
  {
    goto LABEL_19;
  }

LABEL_35:
  v128 = *&v437[0];

LABEL_36:
  v164 = v438;
  *v438 = v128;
  v164[1] = v119;
  OUTLINED_FUNCTION_24_4();
  v165();

  v125 = v430;
LABEL_37:
  if (v435)
  {
    *v63 = v435;
    v166 = *MEMORY[0x277D42290];
    v167 = sub_231E10290();
    OUTLINED_FUNCTION_12();
    (*(v168 + 104))(v63, v166, v167);
    v169 = v63;
    v170 = 0;
    v171 = 1;
    v172 = v167;
  }

  else
  {
    sub_231E10290();
    OUTLINED_FUNCTION_105();
  }

  __swift_storeEnumTagSinglePayload(v169, v170, v171, v172);
  sub_231CB37DC(v63, v125, &qword_27DD73F98, &unk_231E170E0);
LABEL_41:
  v173 = sub_231CC33AC(v83, &selRef_uniqueIdentifier);
  if (!v174)
  {
    OUTLINED_FUNCTION_30_5();
    OUTLINED_FUNCTION_31_4();
    OUTLINED_FUNCTION_32_4();

    sub_231CB4EEC();
    OUTLINED_FUNCTION_0_18();
    v183 = OUTLINED_FUNCTION_5_13();
    v184(v183);

    v185 = sub_231E10E10();
    sub_231E11AE0();
    OUTLINED_FUNCTION_37_5();
    if (OUTLINED_FUNCTION_33_8())
    {
      OUTLINED_FUNCTION_9_1();
      v186 = OUTLINED_FUNCTION_13_8();
      OUTLINED_FUNCTION_27_4(v186);
      v187 = OUTLINED_FUNCTION_38_4(4.8751e-34);
      v189 = v87;
      v190 = v83;
      v191 = OUTLINED_FUNCTION_36_4(v187, v188);

      *(v125 + 4) = v191;
      OUTLINED_FUNCTION_8_9(&dword_231CAE000, v192, v193, "%{public}s Unable to create MailEntity, no unique identifier");
      OUTLINED_FUNCTION_17_0();
      OUTLINED_FUNCTION_12_8();

      (*(v63 + 1))(v411, v189);
      goto LABEL_68;
    }

    goto LABEL_69;
  }

  v175 = v174;
  v423 = v173;
  v411 = sub_231CC33AC(v83, &selRef_accountIdentifier);
  v424 = v176;
  v177 = sub_231CC33AC(v417, &selRef_bundleID);
  v179 = v178;
  v180 = sub_231CC7B14();
  if (!v179)
  {
    goto LABEL_53;
  }

  if (v177 == *v180 && v179 == v180[1])
  {

    goto LABEL_52;
  }

  v182 = sub_231E12100();

  if (v182)
  {
LABEL_52:
    if (v424)
    {
      goto LABEL_53;
    }

    OUTLINED_FUNCTION_30_5();
    OUTLINED_FUNCTION_31_4();
    OUTLINED_FUNCTION_32_4();

    sub_231CB4EEC();
    OUTLINED_FUNCTION_0_18();
    v205 = OUTLINED_FUNCTION_5_13();
    v206(v205);

    v185 = sub_231E10E10();
    sub_231E11AE0();
    OUTLINED_FUNCTION_37_5();
    if (OUTLINED_FUNCTION_33_8())
    {
      OUTLINED_FUNCTION_9_1();
      v207 = OUTLINED_FUNCTION_13_8();
      OUTLINED_FUNCTION_27_4(v207);
      v208 = OUTLINED_FUNCTION_38_4(4.8751e-34);
      OUTLINED_FUNCTION_36_4(v208, v209);
      OUTLINED_FUNCTION_34_5();
      *(v125 + 4) = v83;
      OUTLINED_FUNCTION_8_9(&dword_231CAE000, v210, v211, "%{public}s Unable to create MailEntity, no account identifier");
      OUTLINED_FUNCTION_17_0();
      OUTLINED_FUNCTION_12_8();

      (*(v175 + 8))(v402, v87);
      goto LABEL_68;
    }

LABEL_69:

    v239 = OUTLINED_FUNCTION_19_5();
    v240(v239);
    sub_231CC154C(v125, &qword_27DD73F98, &unk_231E170E0);
    v241 = OUTLINED_FUNCTION_39_3();
LABEL_72:
    v242(v241);
LABEL_73:
    sub_231CC154C(v429, &dword_27DD73FA0, &dword_231E13460);
    OUTLINED_FUNCTION_42_5();
    OUTLINED_FUNCTION_105();
    __swift_storeEnumTagSinglePayload(v245, v246, v247, v248);
    return;
  }

LABEL_53:
  v194 = [v83 mailDateReceived];
  v195 = &off_278947000;
  if (v194)
  {
    v196 = v194;
    v197 = v81;
    v198 = v403;
    sub_231E0F910();

    v199 = *(v404 + 32);
    v200 = v416;
    v199(v416, v198, v87);
    OUTLINED_FUNCTION_35_4(v200, 0);
    v195 = v409;
    v199(v409, v200, v87);
    v201 = v195;
    v202 = OUTLINED_FUNCTION_21_4();
    __swift_storeEnumTagSinglePayload(v202, v203, v204, v87);
    OUTLINED_FUNCTION_26_4();
  }

  else
  {
    v212 = 1;
    OUTLINED_FUNCTION_105();
    __swift_storeEnumTagSinglePayload(v213, v214, v215, v87);
    v216 = [v83 contentCreationDate];
    if (v216)
    {
      v195 = v216;
      v197 = v81;
      v217 = v391;
      sub_231E0F910();

      v212 = 0;
      OUTLINED_FUNCTION_26_4();
    }

    else
    {
      v197 = v81;
      OUTLINED_FUNCTION_26_4();
      v217 = v391;
    }

    OUTLINED_FUNCTION_35_4(v217, v212);
    v201 = v409;
    sub_231CB37DC(v217, v409, &dword_27DD74AD0, &qword_231E16C40);
    v218 = v416;
    if (__swift_getEnumTagSinglePayload(v416, 1, v87) != 1)
    {
      sub_231CC154C(v218, &dword_27DD74AD0, &qword_231E16C40);
    }
  }

  if (__swift_getEnumTagSinglePayload(v201, 1, v87) == 1)
  {

    OUTLINED_FUNCTION_30_5();
    OUTLINED_FUNCTION_31_4();
    OUTLINED_FUNCTION_32_4();

    sub_231CC154C(v201, &dword_27DD74AD0, &qword_231E16C40);
    sub_231CB4EEC();
    OUTLINED_FUNCTION_0_18();
    v219 = OUTLINED_FUNCTION_5_13();
    v220(v219);

    v221 = sub_231E10E10();
    sub_231E11AE0();

    v222 = OUTLINED_FUNCTION_33_8();
    v223 = v431;
    if (!v222)
    {

      v243 = OUTLINED_FUNCTION_19_5();
      v244(v243);
      v238 = v125;
      goto LABEL_71;
    }

    OUTLINED_FUNCTION_9_1();
    v224 = OUTLINED_FUNCTION_13_8();
    OUTLINED_FUNCTION_27_4(v224);
    v225 = OUTLINED_FUNCTION_38_4(4.8751e-34);
    OUTLINED_FUNCTION_36_4(v225, v226);
    OUTLINED_FUNCTION_34_5();
    *(v125 + 4) = v223;
    OUTLINED_FUNCTION_8_9(&dword_231CAE000, v227, v228, "%{public}s Unable to create MailEntity, no date");
    OUTLINED_FUNCTION_17_0();
    OUTLINED_FUNCTION_12_8();

    (*(v175 + 8))(v80, v427);
LABEL_68:
    v238 = v430;
LABEL_71:
    sub_231CC154C(v238, &qword_27DD73F98, &unk_231E170E0);
    v241 = OUTLINED_FUNCTION_20_6();
    goto LABEL_72;
  }

  sub_231CC154C(v201, &dword_27DD74AD0, &qword_231E16C40);
  v229 = v400;
  sub_231CC6A58(v429, v400, &dword_27DD73FA0, &dword_231E13460);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v229, 1, v195);
  v83 = v431;
  if (EnumTagSinglePayload == 1)
  {

    OUTLINED_FUNCTION_30_5();
    OUTLINED_FUNCTION_31_4();
    OUTLINED_FUNCTION_32_4();

    sub_231CC154C(v229, &dword_27DD73FA0, &dword_231E13460);
    sub_231CB4EEC();
    OUTLINED_FUNCTION_0_18();
    v231 = OUTLINED_FUNCTION_5_13();
    v232(v231);

    v185 = sub_231E10E10();
    sub_231E11AF0();
    OUTLINED_FUNCTION_37_5();
    if (OUTLINED_FUNCTION_33_8())
    {
      OUTLINED_FUNCTION_9_1();
      v233 = OUTLINED_FUNCTION_13_8();
      OUTLINED_FUNCTION_27_4(v233);
      v234 = OUTLINED_FUNCTION_38_4(4.8751e-34);
      OUTLINED_FUNCTION_36_4(v234, v235);
      OUTLINED_FUNCTION_34_5();
      *(v125 + 4) = v83;
      OUTLINED_FUNCTION_8_9(&dword_231CAE000, v236, v237, "%{public}s Unable to create MailEntity, missing sender handle");
      OUTLINED_FUNCTION_17_0();
      OUTLINED_FUNCTION_12_8();

      (*(v175 + 8))(v392, v87);
      goto LABEL_68;
    }

    goto LABEL_69;
  }

  (*(v407 + 32))(v406, v229, v195);
  v249 = v125;
  v250 = v390;
  sub_231CC6A58(v249, v390, &qword_27DD73F98, &unk_231E170E0);
  v251 = sub_231E10290();
  v252 = __swift_getEnumTagSinglePayload(v250, 1, v251);
  v410 = v80;
  v389 = v175;
  if (v252 != 1)
  {
    v253 = v383;
    sub_231CC6A58(v250, v383, &qword_27DD73F98, &unk_231E170E0);
    v254 = *(v251 - 8);
    v255 = (*(v254 + 88))(v253, v251);
    if (v255 != *MEMORY[0x277D42288] && v255 == *MEMORY[0x277D42290])
    {
      (*(v254 + 96))(v253, v251);
      v306 = *v253;
      v307 = *(*v253 + 16);
      if (v307)
      {
        *&v437[0] = MEMORY[0x277D84F90];
        sub_231CC686C(0, v307, 0);
        v308 = *&v437[0];
        v416 = *(v414 + 16);
        v309 = (*(v414 + 80) + 32) & ~*(v414 + 80);
        v404 = v306;
        v310 = v306 + v309;
        v409 = *(v414 + 72);
        v414 += 16;
        v311 = (v414 - 8);
        do
        {
          v312 = v412;
          v313 = v413;
          v416(v412, v310, v413);
          v314 = sub_231E10450();
          v316 = v315;
          (*v311)(v312, v313);
          *&v437[0] = v308;
          v318 = *(v308 + 16);
          v317 = *(v308 + 24);
          if (v318 >= v317 >> 1)
          {
            sub_231CC686C((v317 > 1), v318 + 1, 1);
            v308 = *&v437[0];
          }

          *(v308 + 16) = v318 + 1;
          v319 = v308 + 16 * v318;
          *(v319 + 32) = v314;
          *(v319 + 40) = v316;
          v310 += v409;
          --v307;
        }

        while (v307);

        v326 = v432;
        OUTLINED_FUNCTION_14_6();
        OUTLINED_FUNCTION_41_5();
        v175 = v389;
      }

      else
      {
        v326 = v432;

        v308 = MEMORY[0x277D84F90];
      }

      v336 = sub_231DC3C70(v308);

      v195 = v438;
      sub_231E10200();
      if (v337)
      {
        v195 = v337;
        v338 = sub_231E116F0();
      }

      else
      {
        v338 = 0;
      }

      v83 = v431;
      OUTLINED_FUNCTION_26_4();
      v258 = v326;
      v339 = v338 + v336;
      v340 = v426;
      if (__OFADD__(v338, v336))
      {
        __break(1u);
        return;
      }

      v250 = v390;
      if (!v339)
      {

        OUTLINED_FUNCTION_30_5();
        OUTLINED_FUNCTION_31_4();
        OUTLINED_FUNCTION_32_4();

        sub_231CB4EEC();
        OUTLINED_FUNCTION_0_18();
        v341 = OUTLINED_FUNCTION_5_13();
        v342(v341);

        v343 = sub_231E10E10();
        sub_231E11AF0();
        OUTLINED_FUNCTION_37_5();
        if (OUTLINED_FUNCTION_33_8())
        {
          OUTLINED_FUNCTION_9_1();
          v344 = OUTLINED_FUNCTION_13_8();
          OUTLINED_FUNCTION_27_4(v344);
          v345 = OUTLINED_FUNCTION_38_4(4.8751e-34);
          v347 = v175;
          v348 = v83;
          v349 = OUTLINED_FUNCTION_36_4(v345, v346);

          *(v250 + 4) = v349;
          OUTLINED_FUNCTION_8_9(&dword_231CAE000, v350, v351, "%{public}s Unable to create MailEntity, empty");
          OUTLINED_FUNCTION_17_0();
          v250 = v390;
          OUTLINED_FUNCTION_30();

          (*(v347 + 8))(v380, v340);
          v352 = OUTLINED_FUNCTION_7_12();
          v353(v352);
          sub_231CC154C(v430, &qword_27DD73F98, &unk_231E170E0);
          v354 = OUTLINED_FUNCTION_20_6();
        }

        else
        {

          v372 = OUTLINED_FUNCTION_19_5();
          v373(v372);
          v374 = OUTLINED_FUNCTION_7_12();
          v375(v374);
          sub_231CC154C(v430, &qword_27DD73F98, &unk_231E170E0);
          v354 = OUTLINED_FUNCTION_39_3();
        }

        v355(v354);
        sub_231CC154C(v429, &dword_27DD73FA0, &dword_231E13460);
        OUTLINED_FUNCTION_42_5();
        OUTLINED_FUNCTION_105();
        __swift_storeEnumTagSinglePayload(v376, v377, v378, v379);
        sub_231CC154C(v250, &qword_27DD73F98, &unk_231E170E0);
        return;
      }

      goto LABEL_81;
    }

    v257 = *(v254 + 8);
    v195 = (v254 + 8);
    v257(v253, v251);
    OUTLINED_FUNCTION_26_4();
  }

  v258 = v432;
LABEL_81:
  sub_231CC154C(v250, &qword_27DD73F98, &unk_231E170E0);
  [v83 mailCategories];
  sub_231E10060();
  v426 = sub_231CC33AC(v83, &selRef_domainIdentifier);
  v425 = v259;
  v260 = v411;
  if (!v424)
  {
    v260 = 0;
  }

  v418 = v260;
  if (v424)
  {
    v261 = v424;
  }

  else
  {
    v261 = 0xE000000000000000;
  }

  v424 = v261;
  v416 = sub_231CE122C(v83, &selRef_accountHandles);
  (*(v407 + 16))(v396, v406, v195);
  v262 = sub_231CC33AC(v83, &selRef_subject);
  if (v263)
  {
    v264 = v262;
  }

  else
  {
    v264 = 0;
  }

  v414 = v264;
  if (v263)
  {
    v265 = v263;
  }

  else
  {
    v265 = 0xE000000000000000;
  }

  v413 = v265;
  (*(v433 + 16))(v393, v438, v258);
  v266 = [v83 isPartiallyDownloaded];
  v267 = v395;
  v268 = v417;
  if (v266)
  {
    v269 = OUTLINED_FUNCTION_23_5(v266);

    v270 = v269 ^ 1;
  }

  else
  {
    v270 = 1;
  }

  LODWORD(v412) = v270;
  v275 = sub_231CE122C(v83, &selRef_mailboxIdentifiers);
  v276 = MEMORY[0x277D84F90];
  if (v275)
  {
    v276 = v275;
  }

  v411 = v276;
  v427 = sub_231D2E5A0();
  v409 = sub_231CC33AC(v83, &selRef_mailConversationID);
  v404 = v277;
  v278 = [v83 contentCreationDate];
  if (v278)
  {
    v279 = v278;
    v280 = v394;
    sub_231E0F910();

    v281 = 0;
  }

  else
  {
    v281 = 1;
    v280 = v394;
  }

  v282 = 1;
  OUTLINED_FUNCTION_35_4(v280, v281);
  v283 = [v83 mailDateReceived];
  if (v283)
  {
    v284 = v283;
    sub_231E0F910();

    v282 = 0;
  }

  OUTLINED_FUNCTION_35_4(v267, v282);
  v285 = v399;
  (*(v398 + 16))(v397, v405, v399);
  v286 = OUTLINED_FUNCTION_21_4();
  __swift_storeEnumTagSinglePayload(v286, v287, v288, v285);
  v289 = [v83 isNew];
  if (v289)
  {
    LODWORD(v403) = OUTLINED_FUNCTION_23_5(v289);
  }

  else
  {
    LODWORD(v403) = 2;
  }

  v290 = [v83 isTwoFactorCode];
  if (v290)
  {
    LODWORD(v402) = OUTLINED_FUNCTION_23_5(v290);
  }

  else
  {
    LODWORD(v402) = 2;
  }

  v291 = [v83 isFromMe];
  if (v291)
  {
    v401 = OUTLINED_FUNCTION_23_5(v291);
  }

  else
  {
    v401 = 2;
  }

  LODWORD(v400) = OUTLINED_FUNCTION_23_5([v83 isLikelyJunk]);

  v292 = [v83 mailRead];
  if (v292)
  {
    LODWORD(v392) = OUTLINED_FUNCTION_23_5(v292);
  }

  else
  {
    LODWORD(v392) = 2;
  }

  v293 = [v83 mailVIP];
  if (v293)
  {
    LODWORD(v391) = OUTLINED_FUNCTION_23_5(v293);
  }

  else
  {
    LODWORD(v391) = 2;
  }

  v294 = [v83 mailFlagged];
  if (v294)
  {
    LODWORD(v390) = OUTLINED_FUNCTION_23_5(v294);
  }

  else
  {
    LODWORD(v390) = 2;
  }

  [v268 isUpdate];
  sub_231DF7374();
  v295 = sub_231E115F0();

  v296 = [v83 attributeForKey_];

  if (v296)
  {
    sub_231E11C80();
    swift_unknownObjectRelease();
  }

  else
  {
    v435 = 0u;
    v436 = 0u;
  }

  v437[0] = v435;
  v437[1] = v436;
  if (*(&v436 + 1))
  {
    swift_dynamicCast();
  }

  else
  {
    sub_231CC154C(v437, &dword_27DD741E0, &qword_231E15D70);
  }

  [v83 protectionClass];
  v297 = v430;
  sub_231CC6A58(v430, v388, &qword_27DD73F98, &unk_231E170E0);
  sub_231E10310();

  (*(v398 + 8))(v405, v399);
  v298 = OUTLINED_FUNCTION_7_12();
  v299(v298);
  sub_231CC154C(v297, &qword_27DD73F98, &unk_231E170E0);
  v300 = OUTLINED_FUNCTION_20_6();
  v301(v300);
  sub_231CC154C(v429, &dword_27DD73FA0, &dword_231E13460);
  sub_231E10340();
  v302 = OUTLINED_FUNCTION_21_4();
  __swift_storeEnumTagSinglePayload(v302, v303, v304, v305);
}

uint64_t sub_231D2A11C(void *a1, uint64_t a2, uint64_t *a3, void *a4)
{
  v8 = sub_231E11670();
  OUTLINED_FUNCTION_24();
  v10 = v9;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_4_1();
  v14 = v13 - v12;
  type metadata accessor for QuotedRegionHtmlParser();
  v15 = sub_231D1DE64();
  sub_231D26174(a1);
  if (v16 >> 60 == 15)
  {
  }

  else
  {
    sub_231E11660();
    v18 = OUTLINED_FUNCTION_83();
    sub_231D1CBD0(v18, v19, v14);
    (*(v10 + 8))(v14, v8);
    swift_beginAccess();
    *a2 = v15[2];

    if (*a2 && *(*a2 + 16))
    {
      v20 = OUTLINED_FUNCTION_83();
      sub_231CF4340(v20, v21);
      swift_beginAccess();
      v23 = v15[3];
      v22 = v15[4];

      *a3 = v23;
      a3[1] = v22;
    }

    else if (a4)
    {
      v24 = [a4 textContent];
      v25 = sub_231E11620();
      v27 = v26;
      v28 = OUTLINED_FUNCTION_83();
      sub_231CF4340(v28, v29);

      *a3 = v25;
      a3[1] = v27;
    }

    else
    {
      v30 = OUTLINED_FUNCTION_83();
      sub_231CF4340(v30, v31);

      *a3 = 0;
      a3[1] = 0;
    }
  }
}

uint64_t sub_231D2A344(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_231E11670();
  OUTLINED_FUNCTION_24();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_4_1();
  v11 = v10 - v9;
  sub_231E11660();
  sub_231D1CBD0(a2, a3, v11);
  return (*(v7 + 8))(v11, v5);
}

uint64_t sub_231D2A448(void *a1)
{
  v2 = [a1 textContentNoCopy];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_231E11620();

  return v3;
}

uint64_t sub_231D2A4B8(void *a1)
{
  v2 = [a1 HTMLContentDataNoCopy];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_231E0F840();

  return v3;
}

void OUTLINED_FUNCTION_8_9(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

void OUTLINED_FUNCTION_12_8()
{

  JUMPOUT(0x23837E1D0);
}

uint64_t OUTLINED_FUNCTION_13_8()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_31_4()
{
}

uint64_t OUTLINED_FUNCTION_32_4()
{
}

BOOL OUTLINED_FUNCTION_33_8()
{

  return os_log_type_enabled(v0, v1);
}

uint64_t OUTLINED_FUNCTION_34_5()
{
}

uint64_t OUTLINED_FUNCTION_35_4(uint64_t a1, uint64_t a2)
{

  return __swift_storeEnumTagSinglePayload(a1, a2, 1, v2);
}

unint64_t OUTLINED_FUNCTION_36_4(uint64_t a1, unint64_t a2)
{

  return sub_231CB5000(a1, a2, (v2 - 128));
}

uint64_t OUTLINED_FUNCTION_37_5()
{
}

uint64_t OUTLINED_FUNCTION_38_4(float a1)
{
  *v1 = a1;

  return sub_231DE2398(v2);
}

uint64_t OUTLINED_FUNCTION_42_5()
{

  return sub_231E10340();
}

uint64_t OUTLINED_FUNCTION_43_7(const char *a1, void x1_0, void x2_0, void (*a2)(void))
{

  return sub_231DC58D0(a1, 21, 2, a2);
}

uint64_t sub_231D2A754()
{
  OUTLINED_FUNCTION_18();
  v0[2] = v1;
  v0[3] = v2;
  v3 = sub_231E0FD90();
  v0[4] = v3;
  OUTLINED_FUNCTION_6(v3);
  v0[5] = v4;
  v0[6] = swift_task_alloc();
  v0[7] = swift_task_alloc();
  v0[8] = swift_task_alloc();
  v0[9] = swift_task_alloc();
  v5 = sub_231E0F780();
  v0[10] = v5;
  OUTLINED_FUNCTION_6(v5);
  v0[11] = v6;
  v0[12] = swift_task_alloc();
  v0[13] = swift_task_alloc();
  v0[14] = swift_task_alloc();
  v0[15] = swift_task_alloc();
  v7 = sub_231E10E30();
  v0[16] = v7;
  OUTLINED_FUNCTION_6(v7);
  v0[17] = v8;
  v0[18] = swift_task_alloc();
  v0[19] = swift_task_alloc();
  v0[20] = swift_task_alloc();
  v0[21] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_231D2A91C, 0, 0);
}

uint64_t sub_231D2A91C()
{
  v59 = v0;
  v1 = v0[21];
  v2 = v0[16];
  v3 = v0[17];
  v4 = v0[15];
  v5 = v0[10];
  v6 = v0[11];
  v7 = v0[5];
  v54 = v0[4];
  v56 = v0[9];
  v9 = v0[2];
  v8 = v0[3];
  v10 = sub_231CB4EEC();
  v0[22] = v10;
  v11 = *(v3 + 16);
  v0[23] = v11;
  v0[24] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v11(v1, v10, v2);
  v12 = *(v6 + 16);
  v0[25] = v12;
  v0[26] = (v6 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v12(v4, v9, v5);
  v13 = *(v7 + 16);
  v0[27] = v13;
  v0[28] = (v7 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v13(v56, v8, v54);
  v14 = sub_231E10E10();
  v55 = sub_231E11AF0();
  v15 = os_log_type_enabled(v14, v55);
  v16 = v0[21];
  v17 = v0[17];
  v57 = v0[16];
  v18 = v0[11];
  v19 = v0[9];
  v21 = v0[4];
  v20 = v0[5];
  if (v15)
  {
    v53 = v0[17];
    v22 = swift_slowAlloc();
    v58 = OUTLINED_FUNCTION_68();
    *v22 = 136643075;
    OUTLINED_FUNCTION_0_19();
    sub_231D2C3CC(v23, v24, MEMORY[0x277CC9290]);
    log = v14;
    v52 = v16;
    v25 = sub_231E120D0();
    v27 = v26;
    v50 = v21;
    v28 = v19;
    v29 = *(v18 + 8);
    v30 = OUTLINED_FUNCTION_48();
    v29(v30);
    v31 = sub_231CB5000(v25, v27, &v58);

    *(v22 + 4) = v31;
    *(v22 + 12) = 2082;
    OUTLINED_FUNCTION_1_14();
    sub_231D2C3CC(v32, v33, MEMORY[0x277D855A8]);
    sub_231E120D0();
    v34 = *(v20 + 8);
    v34(v28, v50);
    v35 = OUTLINED_FUNCTION_48();
    v38 = sub_231CB5000(v35, v36, v37);

    *(v22 + 14) = v38;
    _os_log_impl(&dword_231CAE000, log, v55, "Requesting caption for attachment: %{sensitive}s; type: %{public}s", v22, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_30();
    OUTLINED_FUNCTION_30();

    v39 = *(v53 + 8);
    v39(v52, v57);
  }

  else
  {

    v34 = *(v20 + 8);
    v34(v19, v21);
    v29 = *(v18 + 8);
    v40 = OUTLINED_FUNCTION_48();
    v29(v40);
    v39 = *(v17 + 8);
    v39(v16, v57);
  }

  v0[30] = v29;
  v0[31] = v34;
  v0[29] = v39;
  v41 = [objc_allocWithZone(MEMORY[0x277D26858]) initWithModelType:4 safetyType:1];
  v0[32] = v41;
  v0[33] = [objc_opt_self() service];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD73FB0, &qword_231E23560);
  v42 = swift_allocObject();
  v0[34] = v42;
  *(v42 + 16) = xmmword_231E13420;
  *(v42 + 32) = v41;
  v43 = v41;
  v44 = sub_231E0F740();
  v46 = v45;
  v0[35] = v45;
  v47 = swift_task_alloc();
  v0[36] = v47;
  *v47 = v0;
  v47[1] = sub_231D2AD44;
  v48 = v0[2];

  return sub_231D2B9A8(v42, v48, v44, v46);
}

uint64_t sub_231D2AD44()
{
  v2 = *v1;
  OUTLINED_FUNCTION_4();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 296) = v0;

  if (v0)
  {
    v4 = *(v2 + 256);

    v5 = sub_231D2B598;
  }

  else
  {

    v5 = sub_231D2AEA0;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_231D2AEA0()
{
  v95 = v0;
  v1 = sub_231D2C414(*(v0 + 256));
  if (!v1)
  {
LABEL_12:
    v91 = *(v0 + 216);
    v39 = *(v0 + 200);
    v40 = *(v0 + 104);
    v41 = *(v0 + 80);
    v42 = *(v0 + 56);
    v44 = *(v0 + 24);
    v43 = *(v0 + 32);
    v45 = *(v0 + 16);
    (*(v0 + 184))(*(v0 + 152), *(v0 + 176), *(v0 + 128));
    v39(v40, v45, v41);
    v91(v42, v44, v43);
    v46 = sub_231E10E10();
    v85 = sub_231E11AD0();
    v93 = v46;
    v47 = os_log_type_enabled(v46, v85);
    v48 = *(v0 + 240);
    v89 = *(v0 + 256);
    v49 = *(v0 + 232);
    v50 = *(v0 + 128);
    if (v47)
    {
      v81 = *(v0 + 264);
      v83 = *(v0 + 152);
      v51 = swift_slowAlloc();
      v94 = OUTLINED_FUNCTION_68();
      *v51 = 136643075;
      OUTLINED_FUNCTION_0_19();
      sub_231D2C3CC(v52, v53, MEMORY[0x277CC9290]);
      v79 = v50;
      v80 = v49;
      v54 = sub_231E120D0();
      v56 = v55;
      v57 = OUTLINED_FUNCTION_48();
      v48(v57);
      v58 = sub_231CB5000(v54, v56, &v94);

      *(v51 + 4) = v58;
      *(v51 + 12) = 2082;
      OUTLINED_FUNCTION_1_14();
      sub_231D2C3CC(v59, v60, MEMORY[0x277D855A8]);
      sub_231E120D0();
      v61 = OUTLINED_FUNCTION_10_9();
      v62(v61);
      v63 = OUTLINED_FUNCTION_48();
      v66 = sub_231CB5000(v63, v64, v65);

      *(v51 + 14) = v66;
      _os_log_impl(&dword_231CAE000, v93, v85, "Did not retrieve caption for attachment: %{sensitive}s; type: %{public}s", v51, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_30();
      OUTLINED_FUNCTION_30();

      v80(v83, v79);
    }

    else
    {

      v67 = OUTLINED_FUNCTION_10_9();
      v68(v67);
      v69 = OUTLINED_FUNCTION_48();
      v48(v69);
      v70 = OUTLINED_FUNCTION_9_8();
      v49(v70, v50);
    }

    v92 = 0;
    v90 = 0;
    goto LABEL_16;
  }

  v2 = v1;
  result = sub_231CBA138(v1);
  if (!result)
  {

    goto LABEL_12;
  }

  if ((v2 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x23837D2A0](0, v2);
  }

  else
  {
    if (!*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v4 = *(v2 + 32);
  }

  v5 = v4;

  objc_opt_self();
  v6 = swift_dynamicCastObjCClass();
  if (!v6 || (v7 = sub_231D2C48C(v6), !v8))
  {

    goto LABEL_12;
  }

  v88 = v5;
  v90 = v8;
  v92 = v7;
  v86 = *(v0 + 216);
  v9 = *(v0 + 200);
  v10 = *(v0 + 112);
  v11 = *(v0 + 80);
  v12 = *(v0 + 64);
  v14 = *(v0 + 24);
  v13 = *(v0 + 32);
  v15 = *(v0 + 16);
  (*(v0 + 184))(*(v0 + 160), *(v0 + 176), *(v0 + 128));
  v9(v10, v15, v11);
  v86(v12, v14, v13);
  v16 = sub_231E10E10();
  v78 = sub_231E11AF0();
  log = v16;
  v17 = os_log_type_enabled(v16, v78);
  v82 = *(v0 + 264);
  v84 = *(v0 + 256);
  v18 = *(v0 + 240);
  v19 = *(v0 + 232);
  v20 = *(v0 + 160);
  v21 = *(v0 + 128);
  v22 = *(v0 + 32);
  if (v17)
  {
    v77 = *(v0 + 128);
    v23 = swift_slowAlloc();
    v94 = OUTLINED_FUNCTION_68();
    *v23 = 136643075;
    OUTLINED_FUNCTION_0_19();
    sub_231D2C3CC(v24, v25, MEMORY[0x277CC9290]);
    v75 = v20;
    v76 = v19;
    v26 = sub_231E120D0();
    v28 = v27;
    v29 = OUTLINED_FUNCTION_12_9();
    v18(v29);
    v30 = sub_231CB5000(v26, v28, &v94);

    *(v23 + 4) = v30;
    *(v23 + 12) = 2082;
    OUTLINED_FUNCTION_1_14();
    sub_231D2C3CC(v31, v32, MEMORY[0x277D855A8]);
    v33 = sub_231E120D0();
    v35 = v34;
    v36 = OUTLINED_FUNCTION_9_8();
    v37(v36, v22);
    v38 = sub_231CB5000(v33, v35, &v94);

    *(v23 + 14) = v38;
    _os_log_impl(&dword_231CAE000, log, v78, "Retrieved caption for attachment: %{sensitive}s; type: %{public}s", v23, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_30();
    OUTLINED_FUNCTION_30();

    v76(v75, v77);
  }

  else
  {

    v72 = OUTLINED_FUNCTION_9_8();
    v73(v72, v22);
    v74 = OUTLINED_FUNCTION_12_9();
    v18(v74);
    v19(v20, v21);
  }

LABEL_16:

  OUTLINED_FUNCTION_34();

  return v71(v92, v90);
}

uint64_t sub_231D2B598()
{
  v54 = v0;
  v1 = *(v0 + 256);
  v51 = *(v0 + 296);
  v49 = *(v0 + 216);
  v48 = *(v0 + 200);
  v2 = *(v0 + 184);
  v3 = *(v0 + 176);
  v4 = *(v0 + 144);
  v5 = *(v0 + 128);
  v6 = *(v0 + 96);
  v7 = *(v0 + 80);
  v45 = *(v0 + 48);
  v47 = *(v0 + 32);
  v43 = *(v0 + 24);
  v8 = *(v0 + 16);

  v2(v4, v3, v5);
  v48(v6, v8, v7);
  v49(v45, v43, v47);
  v9 = v51;
  v10 = sub_231E10E10();
  v11 = sub_231E11AD0();

  v52 = v10;
  v12 = os_log_type_enabled(v10, v11);
  v13 = *(v0 + 240);
  v50 = *(v0 + 296);
  v14 = *(v0 + 232);
  v15 = *(v0 + 144);
  v16 = *(v0 + 128);
  if (v12)
  {
    v46 = *(v0 + 128);
    v17 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    v53 = OUTLINED_FUNCTION_68();
    *v17 = 136643331;
    OUTLINED_FUNCTION_0_19();
    sub_231D2C3CC(v18, v19, MEMORY[0x277CC9290]);
    v42 = v15;
    v44 = v14;
    v20 = sub_231E120D0();
    v22 = v21;
    v23 = OUTLINED_FUNCTION_12_9();
    v13(v23);
    v24 = sub_231CB5000(v20, v22, &v53);

    *(v17 + 4) = v24;
    *(v17 + 12) = 2082;
    OUTLINED_FUNCTION_1_14();
    sub_231D2C3CC(v25, v26, MEMORY[0x277D855A8]);
    v27 = sub_231E120D0();
    v29 = v28;
    v30 = OUTLINED_FUNCTION_11_11();
    v31(v30);
    v32 = sub_231CB5000(v27, v29, &v53);

    *(v17 + 14) = v32;
    *(v17 + 22) = 2112;
    v33 = v50;
    v34 = _swift_stdlib_bridgeErrorToNSError();
    *(v17 + 24) = v34;
    *v41 = v34;
    _os_log_impl(&dword_231CAE000, v52, v11, "Failed to retrieve caption for attachment: %{sensitive}s; type: %{public}s; error: %@", v17, 0x20u);
    sub_231CC340C(v41);
    OUTLINED_FUNCTION_30();
    swift_arrayDestroy();
    OUTLINED_FUNCTION_30();
    OUTLINED_FUNCTION_30();

    v44(v42, v46);
  }

  else
  {

    v35 = OUTLINED_FUNCTION_11_11();
    v36(v35);
    v37 = OUTLINED_FUNCTION_12_9();
    v13(v37);
    v38 = OUTLINED_FUNCTION_9_8();
    v14(v38, v16);
  }

  OUTLINED_FUNCTION_34();

  return v39(0, 0);
}

uint64_t sub_231D2B9A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[9] = a4;
  v5[10] = v4;
  v5[7] = a2;
  v5[8] = a3;
  v5[6] = a1;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t sub_231D2B9C4()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 80);
  v3 = *(v0 + 64);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74BA8, &qword_231E1C420);
  v9 = *(v0 + 48);
  inited = swift_initStackObject();
  *(v0 + 88) = inited;
  *(inited + 24) = 0;
  *(inited + 16) = 0;
  *(inited + 20) = 1;
  v5 = swift_task_alloc();
  *(v0 + 96) = v5;
  *(v5 + 16) = inited;
  *(v5 + 24) = v2;
  *(v5 + 32) = v9;
  *(v5 + 48) = v3;
  *(v5 + 56) = v1;
  v6 = swift_task_alloc();
  *(v0 + 104) = v6;
  *(v6 + 16) = inited;
  *(v6 + 24) = v2;
  v7 = swift_task_alloc();
  *(v0 + 112) = v7;
  *v7 = v0;
  v7[1] = sub_231D2BB20;

  return MEMORY[0x282200830](v7);
}

uint64_t sub_231D2BB20()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_21();
  v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_4();
  *v5 = v4;
  *(v3 + 120) = v0;

  if (v0)
  {
    v6 = sub_231D2BC34;
  }

  else
  {

    v6 = OUTLINED_FUNCTION_9_7;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_231D2BC34()
{
  OUTLINED_FUNCTION_18();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_231D2BC9C()
{
  OUTLINED_FUNCTION_18();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_231D2BD34;

  return sub_231D2A754();
}

uint64_t sub_231D2BD34()
{
  OUTLINED_FUNCTION_18();
  v2 = v1;
  v4 = v3;
  OUTLINED_FUNCTION_21();
  v5 = *v0;
  OUTLINED_FUNCTION_4();
  *v6 = v5;

  OUTLINED_FUNCTION_34();

  return v7(v4, v2);
}

uint64_t sub_231D2BE24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[6] = a6;
  v7[7] = a7;
  v7[4] = a4;
  v7[5] = a5;
  v7[2] = a2;
  v7[3] = a3;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t sub_231D2BE40()
{
  v2 = *(v0 + 48);
  v1 = *(v0 + 56);
  v3 = swift_task_alloc();
  *(v0 + 64) = v3;
  v4 = *(v0 + 32);
  *(v3 + 16) = *(v0 + 16);
  *(v3 + 32) = v4;
  *(v3 + 48) = v2;
  *(v3 + 56) = v1;
  v5 = swift_task_alloc();
  *(v0 + 72) = v5;
  *v5 = v0;
  v5[1] = sub_231D2BF3C;

  return MEMORY[0x2822008A0](v5);
}

uint64_t sub_231D2BF3C()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_21();
  v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_4();
  *v5 = v4;
  *(v3 + 80) = v0;

  if (v0)
  {
    v6 = sub_231D2C0C0;
  }

  else
  {

    v6 = sub_231D2C048;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_231D2C048()
{
  OUTLINED_FUNCTION_18();
  v1 = *(v0 + 16);
  os_unfair_lock_lock((v1 + 24));
  *(v1 + 16) = 0;
  *(v1 + 20) = 1;
  os_unfair_lock_unlock((v1 + 24));
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_231D2C0C0()
{
  OUTLINED_FUNCTION_18();

  v1 = *(v0 + 8);

  return v1();
}

void sub_231D2C120(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7)
{
  v21 = a2;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74BB0, &qword_231E234D0);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v20 - v12;
  sub_231CC1784(0, &qword_2814CAF50, 0x277D26878);
  v14 = sub_231E11850();
  v15 = sub_231E0F720();
  if (a6)
  {
    a6 = sub_231E115F0();
  }

  (*(v11 + 16))(v13, a7, v10);
  v16 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v17 = swift_allocObject();
  (*(v11 + 32))(v17 + v16, v13, v10);
  aBlock[4] = sub_231D2C704;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_231D2C354;
  aBlock[3] = &block_descriptor_2;
  v18 = _Block_copy(aBlock);

  v19 = [v21 performRequests:v14 onImageURL:v15 withIdentifier:a6 completionHandler:v18];
  _Block_release(v18);

  *a1 = v19;
  *(a1 + 4) = 0;
}

void sub_231D2C354(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);

  v6 = a3;
  v5(a2, a3);
}

uint64_t sub_231D2C3CC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_231D2C414(void *a1)
{
  v2 = [a1 results];

  if (!v2)
  {
    return 0;
  }

  sub_231CC1784(0, &qword_27DD74BA0, 0x277D26880);
  v3 = sub_231E11870();

  return v3;
}

uint64_t sub_231D2C48C(void *a1)
{
  v1 = [a1 caption];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_231E11620();

  return v3;
}

uint64_t sub_231D2C500()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v7 = v0[6];
  v6 = v0[7];
  v8 = swift_task_alloc();
  *(v1 + 16) = v8;
  *v8 = v1;
  v8[1] = sub_231D26584;

  return sub_231D2BE24(v8, v2, v3, v4, v5, v7, v6);
}

void sub_231D2C5C0()
{
  v1 = *(v0 + 16);
  os_unfair_lock_lock(v1 + 6);
  sub_231D2C614(&v1[4]._os_unfair_lock_opaque);
  os_unfair_lock_unlock(v1 + 6);
}

unsigned int *sub_231D2C614(unsigned int *result)
{
  v2 = result;
  if ((result[1] & 1) == 0)
  {
    result = [*(v1 + 16) cancelRequestID_];
  }

  *v2 = 0;
  *(v2 + 4) = 1;
  return result;
}

void sub_231D2C664()
{
  v1 = *(v0 + 16);
  os_unfair_lock_lock(v1 + 6);
  sub_231D2C6D0(&v1[4]);
  os_unfair_lock_unlock(v1 + 6);
}

uint64_t sub_231D2C704(uint64_t a1, void *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74BB0, &qword_231E234D0);
  if (!a2)
  {
    return sub_231E11940();
  }

  v3 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74BB0, &qword_231E234D0);
  return sub_231E11930();
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_231D2C7E0(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_231D2C800(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = a2 - 1;
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

  *(result + 4) = v3;
  return result;
}

void type metadata accessor for os_unfair_lock_s()
{
  if (!qword_2814CBDB0)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_2814CBDB0);
    }
  }
}

uint64_t sub_231D2C8B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, __int128 *a3@<X2>, void *a4@<X8>)
{
  *a4 = a1;
  a4[1] = a2;
  return sub_231CB6D84(a3, (a4 + 2));
}

uint64_t sub_231D2C8C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[4] = a4;
  v5[5] = v4;
  v5[2] = a1;
  v5[3] = a3;
  v6 = sub_231E0F950();
  v5[6] = v6;
  v5[7] = *(v6 - 8);
  v5[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_231D2C984, 0, 0);
}

uint64_t sub_231D2C984()
{
  if (sub_231D2CF78(1, v0[4], sub_231D2D37C, &type metadata for SummarizationManager.Option, sub_231D2D3D0) || (v1 = sub_231E108E0(), v1 == 2) || (v1 & 1) == 0)
  {
    OUTLINED_FUNCTION_2_15();
    goto LABEL_8;
  }

  v2 = sub_231E10910();
  v4 = v3;
  v0[9] = v3;
  if (!v3)
  {
    goto LABEL_8;
  }

  v5 = v2;
  sub_231DAA834(v2, v3);
  v7 = v6;
  type metadata accessor for AssetManager();
  sub_231D45490();
  v9 = sub_231D2CF78(v7, v8, sub_231D2D2D4, &type metadata for AppCategoryID, sub_231D2D328);

  if (v9)
  {
LABEL_6:

LABEL_8:

    v10 = OUTLINED_FUNCTION_0_20();

    return v11(v10);
  }

  sub_231D45834();
  v14 = sub_231D24924(v5, v4, v13);

  if (v14)
  {
    goto LABEL_8;
  }

  v15 = v0[2];
  v16 = *v15;
  v17 = *(*v15 + 16);
  sub_231E109B0();
  if (v18)
  {
    v19 = sub_231E116F0();
  }

  else
  {
    v19 = 0;
  }

  sub_231E10920();
  sub_231D14A1C();
  v21 = v20;

  v22 = v19 + v21;
  if (__OFADD__(v19, v21))
  {
    __break(1u);
    goto LABEL_34;
  }

  result = sub_231DC3C70(v16);
  v23 = __OFADD__(v22, result);
  v24 = v22 + result;
  if (v23)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  result = sub_231DC3C70(*(v0[2] + 8));
  v25 = v24 + result;
  if (__OFADD__(v24, result))
  {
LABEL_35:
    __break(1u);
    return result;
  }

  if (v17)
  {
LABEL_20:

    OUTLINED_FUNCTION_2_15();
    goto LABEL_8;
  }

  v26 = sub_231CC8B18();
  if (v27)
  {
    v26 = sub_231D11754();
  }

  if (v25 < v26)
  {
    goto LABEL_6;
  }

  v28 = sub_231E10A00();
  if (v29)
  {
    v30 = v28;
    v31 = v29;
    v32 = sub_231E108E0();
    if (v32 == 2 || (v32 & 1) == 0)
    {
    }

    else
    {
      v34 = v0[7];
      v33 = v0[8];
      v42 = v0[6];
      v35 = v0[2];
      v36 = v35[5];
      v37 = v35[6];
      __swift_project_boxed_opaque_existential_0(v35 + 2, v36);
      sub_231D11E04();
      sub_231E0F8F0();
      v38 = (*(v37 + 16))(v30, v31, v5, v4, v33, v36, v37);

      v28 = (*(v34 + 8))(v33, v42);
      if (v38)
      {
        goto LABEL_20;
      }
    }
  }

  v39 = v0[3];
  sub_231DB0818(v28);
  v43 = (*(*v39 + 136) + **(*v39 + 136));
  v40 = swift_task_alloc();
  v0[10] = v40;
  *v40 = v0;
  v40[1] = sub_231D2CDFC;
  v41 = v0[8];

  return v43(v5, v4, v41, 0);
}

uint64_t sub_231D2CDFC()
{
  OUTLINED_FUNCTION_1_15();
  v1 = v0[8];
  v2 = v0[7];
  v3 = v0[6];

  (*(v2 + 8))(v1, v3);

  v4 = OUTLINED_FUNCTION_0_20();

  return v5(v4);
}

BOOL sub_231D2CF78(char a1, uint64_t a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(void))
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  a3();
  v7 = sub_231E11550();
  v8 = ~(-1 << *(a2 + 32));
  do
  {
    v9 = v7 & v8;
    v10 = (1 << (v7 & v8)) & *(a2 + 56 + (((v7 & v8) >> 3) & 0xFFFFFFFFFFFFFF8));
    v11 = v10 != 0;
    if (!v10)
    {
      break;
    }

    a5();
    v12 = sub_231E115D0();
    v7 = v9 + 1;
  }

  while ((v12 & 1) == 0);
  return v11;
}

uint64_t sub_231D2D07C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = sub_231D2D128;

  return sub_231D2C8C0(a1, v9, a3, a4);
}

uint64_t sub_231D2D128()
{
  OUTLINED_FUNCTION_1_15();

  v0 = OUTLINED_FUNCTION_0_20();

  return v1(v0);
}

__n128 __swift_memcpy56_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_231D2D238(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 56))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_231D2D278(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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
      *result = (a2 - 1);
      return result;
    }

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_231D2D2D4()
{
  result = qword_2814CB790;
  if (!qword_2814CB790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814CB790);
  }

  return result;
}

unint64_t sub_231D2D328()
{
  result = qword_2814CB788;
  if (!qword_2814CB788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814CB788);
  }

  return result;
}

unint64_t sub_231D2D37C()
{
  result = qword_2814CBBA8;
  if (!qword_2814CBBA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814CBBA8);
  }

  return result;
}

unint64_t sub_231D2D3D0()
{
  result = qword_2814CBBA0;
  if (!qword_2814CBBA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814CBBA0);
  }

  return result;
}

uint64_t sub_231D2D43C()
{
  v0 = swift_allocObject();
  *(v0 + 16) = [objc_allocWithZone(MEMORY[0x277D1F4C0]) init];
  return v0;
}

uint64_t sub_231D2D48C()
{
  v1 = sub_231E10DB0();
  v0[2] = v1;
  v0[3] = *(v1 - 8);
  v0[4] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_231D2D548, 0, 0);
}

uint64_t sub_231D2D548(uint64_t a1, uint64_t a2)
{
  v4 = v2[3];
  v3 = v2[4];
  v5 = v2[2];
  v6 = sub_231DC4F9C(a1, a2);
  (*(v4 + 16))(v3, v6, v5);
  sub_231DC58D0("Mail.KnownSenderResolution", 26, 2, nullsub_1);
  (*(v4 + 8))(v3, v5);

  v7 = v2[1];

  return v7(2);
}

uint64_t sub_231D2D63C()
{

  return swift_deallocClassInstance();
}

uint64_t sub_231D2D674()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_231CC2A9C;

  return sub_231D2D48C();
}

uint64_t sub_231D2D724(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[9] = a4;
  v5[10] = v4;
  v5[7] = a2;
  v5[8] = a3;
  v5[6] = a1;
  return MEMORY[0x2822009F8](sub_231D2D74C, 0, 0);
}

uint64_t sub_231D2D74C()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 56);
  v3 = swift_task_alloc();
  *(v0 + 88) = v3;
  *(v3 + 16) = *(v0 + 64);
  *(v3 + 32) = v1;
  *(v3 + 40) = v2;
  v4 = swift_task_alloc();
  *(v0 + 96) = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74BB8, &qword_231E1E1C0);
  *v4 = v0;
  v4[1] = sub_231D2D848;

  return sub_231DDB61C();
}

void sub_231D2D848()
{
  v2 = *v1;
  OUTLINED_FUNCTION_4();
  *v3 = v2;

  if (v0)
  {
  }

  else
  {

    MEMORY[0x2822009F8](sub_231D2D97C, 0, 0);
  }
}

uint64_t sub_231D2D97C()
{
  v1 = *(v0 + 48);
  sub_231E10780();
  sub_231E10770();
  sub_231D14B68();
  v3 = v2;

  v4 = v3 & 1;
  v5 = OBJC_IVAR____TtC22ProactiveSummarization22SummarizationAnalytics_captioningResult;
  swift_beginAccess();
  *(v1 + v5) = v4;
  OUTLINED_FUNCTION_19();

  return v6();
}

uint64_t sub_231D2DA38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v6 = sub_231E107F0();
  v5[7] = v6;
  v5[8] = *(v6 - 8);
  v5[9] = swift_task_alloc();
  v5[10] = swift_task_alloc();
  v5[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_231D2DB18, 0, 0);
}

uint64_t sub_231D2DB18()
{
  v1 = sub_231E10770();
  *(v0 + 96) = v1;
  v2 = *(v1 + 16);
  *(v0 + 104) = v2;
  if (v2)
  {
    v3 = 0;
    v4 = *(v0 + 64);
    v5 = *(v4 + 80);
    *(v0 + 160) = v5;
    v6 = *(v4 + 72);
    *(v0 + 112) = v6;
    v7 = *(v4 + 16);
    *(v0 + 120) = v7;
    v8 = MEMORY[0x277D84F90];
    while (1)
    {
      *(v0 + 136) = v3;
      *(v0 + 144) = v8;
      *(v0 + 128) = 0;
      v7(*(v0 + 88), v1 + ((v5 + 32) & ~v5) + v6 * v3, *(v0 + 56));
      if (sub_231D14050() && sub_231D1265C() >= 1)
      {
        break;
      }

      v9 = OUTLINED_FUNCTION_3_15();
      v10(v9);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v8 = OUTLINED_FUNCTION_1_16();
      }

      v12 = v8[2];
      v11 = v8[3];
      if (v12 >= v11 >> 1)
      {
        v13 = sub_231D2E2AC((v11 > 1), v12 + 1, 1, v8);
      }

      else
      {
        v13 = v8;
      }

      v15 = *(v0 + 64);
      v14 = *(v0 + 72);
      v17 = *(v0 + 104);
      v16 = *(v0 + 112);
      v18 = *(v0 + 56);
      v19 = *(v0 + 136) + 1;
      v20 = (*(v0 + 160) + 32) & ~*(v0 + 160);
      (*(v15 + 8))(*(v0 + 88), v18);
      v13[2] = v12 + 1;
      v21 = v13 + v20;
      v8 = v13;
      (*(v15 + 32))(&v21[v16 * v12], v14, v18);
      if (v19 == v17)
      {
        goto LABEL_12;
      }

      v3 = *(v0 + 136) + 1;
      v6 = *(v0 + 112);
      v7 = *(v0 + 120);
      LOBYTE(v5) = *(v0 + 160);
      v1 = *(v0 + 96);
    }

    v24 = swift_task_alloc();
    *(v0 + 152) = v24;
    *v24 = v0;
    v25 = OUTLINED_FUNCTION_0_21(v24);

    return sub_231D140EC(v25, v26);
  }

  else
  {
LABEL_12:

    OUTLINED_FUNCTION_5_14();

    OUTLINED_FUNCTION_19();

    return v22();
  }
}

uint64_t sub_231D2DD94()
{
  v1 = *v0;
  OUTLINED_FUNCTION_4();
  *v2 = v1;

  return MEMORY[0x2822009F8](sub_231D2DE88, 0, 0);
}

uint64_t sub_231D2DE88()
{
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v2 = *(v0 + 144);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = OUTLINED_FUNCTION_1_16();
  }

  v4 = *(v2 + 2);
  v3 = *(v2 + 3);
  v5 = v4 + 1;
  if (v4 >= v3 >> 1)
  {
    v2 = sub_231D2E2AC((v3 > 1), v4 + 1, 1, v2);
  }

  v6 = (v0 + 80);
  v22 = *(v0 + 128) + 1;
  while (1)
  {
    v23 = *v6;
    v8 = *(v0 + 104);
    v7 = *(v0 + 112);
    v9 = *(v0 + 56);
    v10 = *(v0 + 64);
    v11 = *(v0 + 136) + 1;
    v12 = (*(v0 + 160) + 32) & ~*(v0 + 160);
    (*(v10 + 8))(*(v0 + 88), v9);
    *(v2 + 2) = v5;
    (*(v10 + 32))(&v2[v12 + v7 * v4], v23, v9);
    if (v11 == v8)
    {
      break;
    }

    v13 = *(v0 + 136) + 1;
    *(v0 + 136) = v13;
    *(v0 + 144) = v2;
    *(v0 + 128) = v22;
    (*(v0 + 120))(*(v0 + 88), *(v0 + 96) + ((*(v0 + 160) + 32) & ~*(v0 + 160)) + *(v0 + 112) * v13, *(v0 + 56));
    if (sub_231D14050() && v22 < sub_231D1265C())
    {
      v19 = swift_task_alloc();
      *(v0 + 152) = v19;
      *v19 = v0;
      v20 = OUTLINED_FUNCTION_0_21(v19);

      return sub_231D140EC(v20, v21);
    }

    v14 = OUTLINED_FUNCTION_3_15();
    v15(v14);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v2 = OUTLINED_FUNCTION_1_16();
    }

    v4 = *(v2 + 2);
    v16 = *(v2 + 3);
    v5 = v4 + 1;
    v6 = (v0 + 72);
    if (v4 >= v16 >> 1)
    {
      v2 = sub_231D2E2AC((v16 > 1), v4 + 1, 1, v2);
      v6 = (v0 + 72);
    }
  }

  OUTLINED_FUNCTION_5_14();

  OUTLINED_FUNCTION_19();

  return v17();
}

uint64_t sub_231D2E104(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_231D2E1C4;

  return sub_231D2DA38(a1, v7, v6, v4, v5);
}

uint64_t sub_231D2E1C4()
{
  v1 = *v0;
  OUTLINED_FUNCTION_4();
  *v2 = v1;

  OUTLINED_FUNCTION_19();

  return v3();
}

void *sub_231D2E2AC(void *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 16);
  v9 = sub_231D2E398(v8, v7);
  v10 = *(sub_231E107F0() - 8);
  if (v5)
  {
    v11 = (*(v10 + 80) + 32) & ~*(v10 + 80);
    sub_231D2E494(a4 + v11, v8, v9 + v11);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v9;
}

void *sub_231D2E398(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74BC0, &qword_231E1C578);
  v4 = *(sub_231E107F0() - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v7);
  if (v5)
  {
    if ((result - v6) != 0x8000000000000000 || v5 != -1)
    {
      v7[2] = a1;
      v7[3] = 2 * ((result - v6) / v5);
      return v7;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_231D2E494(unint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a3 < a1 || (result = sub_231E107F0(), a1 + *(*(result - 8) + 72) * a2 <= a3))
  {
    sub_231E107F0();

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (a3 != a1)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

void *OUTLINED_FUNCTION_1_16()
{
  v2 = *(v0 + 16) + 1;

  return sub_231D2E2AC(0, v2, 1, v0);
}

void *sub_231D2E5A0()
{
  v1 = v0;
  v2 = sub_231E10E30();
  OUTLINED_FUNCTION_24();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  v7 = &v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74458, &qword_231E15D38);
  MEMORY[0x28223BE20](v8 - 8);
  v60 = &v50 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74A70, &qword_231E1C0B8);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v50 - v11;
  v13 = sub_231E107F0();
  OUTLINED_FUNCTION_24();
  v51 = v14;
  MEMORY[0x28223BE20](v15);
  v59 = &v50 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_231CE1178([v0 attributeSet], &selRef_attachmentPaths);
  v18 = MEMORY[0x277D84F90];
  if (v17)
  {
    v19 = v17;
  }

  else
  {
    v19 = MEMORY[0x277D84F90];
  }

  v20 = sub_231CE1178([v1 attributeSet], &selRef_attachmentNames);
  if (v20)
  {
    v21 = v20;
  }

  else
  {
    v21 = v18;
  }

  v22 = sub_231CE1178([v1 attributeSet], &selRef_attachmentTypes);
  if (v22)
  {
    v23 = v22;
  }

  else
  {
    v23 = v18;
  }

  v24 = v23;
  result = sub_231CE1178([v1 attributeSet], &selRef_attachmentCaptions);
  if (result)
  {
    v26 = result;
  }

  else
  {
    v26 = v18;
  }

  v52 = v26;
  v61 = v19;
  v62 = v21;
  v27 = *(v19 + 16);
  if (v27 != *(v21 + 16) || v27 != *(v24 + 16))
  {

    v39 = sub_231DC4C74();
    (*(v4 + 16))(v7, v39, v2);
    v40 = v1;
    v41 = sub_231E10E10();
    v42 = sub_231E11AD0();

    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      v65 = v44;
      *v43 = 136315138;
      v45 = [v40 uniqueIdentifier];
      v46 = sub_231E11620();
      v48 = v47;

      v49 = sub_231CB5000(v46, v48, &v65);

      *(v43 + 4) = v49;
      _os_log_impl(&dword_231CAE000, v41, v42, "Mismatched attachment attributes for item with id: %s", v43, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v44);
      MEMORY[0x23837E1D0](v44, -1, -1);
      MEMORY[0x23837E1D0](v43, -1, -1);
    }

    (*(v4 + 8))(v7, v2);
    return MEMORY[0x277D84F90];
  }

  if (!v27)
  {

    v30 = MEMORY[0x277D84F90];
LABEL_37:

    return v30;
  }

  v28 = 0;
  v29 = 0;
  v58 = *(v52 + 16);
  v53 = (v51 + 32);
  v30 = MEMORY[0x277D84F90];
  v56 = v13;
  v57 = v12;
  v54 = v27;
  v55 = v24;
  while (1)
  {
    v64 = v30;
    if (v58 != v27)
    {
LABEL_23:
      v63 = 0;
      goto LABEL_24;
    }

    if (v29 >= *(v52 + 16))
    {
      break;
    }

    v31 = *(v52 + v28 + 40);
    v32 = HIBYTE(v31) & 0xF;
    if ((v31 & 0x2000000000000000) == 0)
    {
      v32 = *(v52 + v28 + 32) & 0xFFFFFFFFFFFFLL;
    }

    if (!v32)
    {
      goto LABEL_23;
    }

    v63 = *(v52 + v28 + 32);

LABEL_24:
    v33 = sub_231E0FD90();
    __swift_storeEnumTagSinglePayload(v60, 1, 1, v33);

    v34 = v57;
    sub_231E107C0();
    v35 = v56;
    if (__swift_getEnumTagSinglePayload(v34, 1, v56) == 1)
    {
      result = sub_231D2EBEC(v34);
      v30 = v64;
    }

    else
    {
      v36 = *v53;
      (*v53)(v59, v34, v35);
      v30 = v64;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v30 = sub_231D2E2AC(0, v30[2] + 1, 1, v30);
      }

      v38 = v30[2];
      v37 = v30[3];
      if (v38 >= v37 >> 1)
      {
        v30 = sub_231D2E2AC((v37 > 1), v38 + 1, 1, v30);
      }

      v30[2] = v38 + 1;
      result = (v36)(v30 + ((*(v51 + 80) + 32) & ~*(v51 + 80)) + *(v51 + 72) * v38, v59, v35);
    }

    ++v29;
    v28 += 16;
    v27 = v54;
    if (v54 == v29)
    {

      goto LABEL_37;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_231D2EBEC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74A70, &qword_231E1C0B8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_231D2EC54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v10 = swift_allocObject();
  *(v10 + 16) = 0;
  v21 = sub_231D2EE2C;
  v22 = 0;
  v17 = MEMORY[0x277D85DD0];
  v18 = 1107296256;
  v19 = sub_231D2F010;
  v20 = &block_descriptor_3;
  v11 = _Block_copy(&v17);
  v12 = swift_allocObject();
  v12[2] = a3;
  v12[3] = a4;
  v12[4] = a1;
  v12[5] = a2;
  v12[6] = v10;
  v21 = sub_231D2F090;
  v22 = v12;
  v17 = MEMORY[0x277D85DD0];
  v18 = 1107296256;
  v19 = sub_231D2F250;
  v20 = &block_descriptor_6_0;
  v13 = _Block_copy(&v17);

  v14 = [a5 sinkWithCompletion:v11 shouldContinue:v13];
  _Block_release(v13);
  _Block_release(v11);

  swift_beginAccess();
  v15 = *(v10 + 16);

  return v15;
}

id sub_231D2EE2C(void *a1)
{
  v2 = sub_231E10E30();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [a1 error];
  if (result)
  {
    v7 = result;
    v8 = sub_231CB4EEC();
    (*(v3 + 16))(v5, v8, v2);
    v9 = v7;
    v10 = sub_231E10E10();
    v11 = sub_231E11AD0();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      *v12 = 138412290;
      v14 = v9;
      v15 = _swift_stdlib_bridgeErrorToNSError();
      *(v12 + 4) = v15;
      *v13 = v15;
      _os_log_impl(&dword_231CAE000, v10, v11, "Could not scan app intent stream to find recent user-initiated interactions: %@", v12, 0xCu);
      sub_231CC340C(v13);
      MEMORY[0x23837E1D0](v13, -1, -1);
      MEMORY[0x23837E1D0](v12, -1, -1);
    }

    else
    {
      v14 = v10;
      v10 = v9;
    }

    return (*(v3 + 8))(v5, v2);
  }

  return result;
}

void sub_231D2F010(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

uint64_t block_copy_helper_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_231D2F090(void *a1)
{
  v2 = v1[2];
  v3 = v1[3];
  v5 = v1[4];
  v4 = v1[5];
  v6 = v1[6];
  v7 = [a1 eventBody];
  if (!v7)
  {
    return 1;
  }

  v8 = v7;
  v9 = sub_231CC33AC(v7, &selRef_bundleID);
  if (!v10)
  {
    goto LABEL_26;
  }

  if (v9 == v2 && v10 == v3)
  {
  }

  else
  {
    v12 = sub_231E12100();

    if ((v12 & 1) == 0)
    {
      goto LABEL_26;
    }
  }

  if ([v8 interactionDirection] != 2)
  {
    goto LABEL_26;
  }

  v13 = sub_231CC33AC(v8, &selRef_intentClass);
  if (!v14)
  {
    goto LABEL_26;
  }

  if (v13 == 0xD000000000000013 && v14 == 0x8000000231E32780)
  {
  }

  else
  {
    v16 = sub_231E12100();

    if ((v16 & 1) == 0)
    {
      goto LABEL_26;
    }
  }

  v17 = sub_231CC33AC(v8, &selRef_groupIdentifier);
  if (!v18)
  {
LABEL_26:

    return 1;
  }

  if (v17 == v5 && v18 == v4)
  {

LABEL_30:
    swift_beginAccess();
    result = 0;
    *(v6 + 16) = 1;
    return result;
  }

  v20 = sub_231E12100();

  if (v20)
  {
    goto LABEL_30;
  }

  return 1;
}

uint64_t sub_231D2F250(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  LOBYTE(v3) = v3();

  return v3 & 1;
}

uint64_t sub_231D2F2D4(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = swift_allocObject();
  OUTLINED_FUNCTION_301();
  sub_231D2F338(v6, v7, v8, a4);
  return v5;
}

uint64_t sub_231D2F338(void *__src, __int128 *a2, __int128 *a3, char a4)
{
  v5 = v4;
  memcpy((v5 + 16), __src, 0x80uLL);
  type metadata accessor for SpotlightReader();
  sub_231CE10BC(__src, &v11);
  *(v5 + 144) = sub_231DF7564();
  sub_231CB6D84(a2, v5 + 152);
  sub_231CB6D84(a3, v5 + 192);
  *(v5 + 232) = a4;
  return v5;
}

uint64_t sub_231D2F3D8()
{
  OUTLINED_FUNCTION_18();
  v1[57] = v2;
  v1[58] = v0;
  v1[56] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74510, &qword_231E1E2D0);
  OUTLINED_FUNCTION_47(v4);
  v1[59] = OUTLINED_FUNCTION_55();
  v5 = sub_231E106A0();
  v1[60] = v5;
  OUTLINED_FUNCTION_6(v5);
  v1[61] = v6;
  v1[62] = OUTLINED_FUNCTION_55();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74BC8, &qword_231E1C5D0);
  v1[63] = v7;
  OUTLINED_FUNCTION_6(v7);
  v1[64] = v8;
  v1[65] = OUTLINED_FUNCTION_55();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74BD0, &qword_231E1C5D8);
  v1[66] = v9;
  OUTLINED_FUNCTION_6(v9);
  v1[67] = v10;
  v1[68] = OUTLINED_FUNCTION_55();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74BD8, &unk_231E1C5E0);
  v1[69] = v11;
  OUTLINED_FUNCTION_6(v11);
  v1[70] = v12;
  v1[71] = OUTLINED_FUNCTION_55();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74BE0, &qword_231E1CC20);
  OUTLINED_FUNCTION_47(v13);
  v1[72] = OUTLINED_FUNCTION_55();
  v14 = sub_231E10A30();
  v1[73] = v14;
  OUTLINED_FUNCTION_6(v14);
  v1[74] = v15;
  v1[75] = OUTLINED_FUNCTION_55();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74BE8, &qword_231E1C5F0);
  v1[76] = v16;
  OUTLINED_FUNCTION_6(v16);
  v1[77] = v17;
  v1[78] = OUTLINED_FUNCTION_55();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74BF0, &qword_231E1C5F8);
  v1[79] = v18;
  OUTLINED_FUNCTION_6(v18);
  v1[80] = v19;
  v1[81] = OUTLINED_FUNCTION_55();
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74BF8, &unk_231E1C600);
  v1[82] = v20;
  OUTLINED_FUNCTION_6(v20);
  v1[83] = v21;
  v1[84] = OUTLINED_FUNCTION_55();
  v22 = sub_231E0FA50();
  v1[85] = v22;
  OUTLINED_FUNCTION_6(v22);
  v1[86] = v23;
  v1[87] = OUTLINED_FUNCTION_55();
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74C00, &unk_231E203C0);
  OUTLINED_FUNCTION_47(v24);
  v1[88] = OUTLINED_FUNCTION_55();
  v25 = sub_231E10010();
  v1[89] = v25;
  OUTLINED_FUNCTION_6(v25);
  v1[90] = v26;
  v1[91] = OUTLINED_FUNCTION_69();
  v1[92] = swift_task_alloc();
  v1[93] = swift_task_alloc();
  v1[94] = swift_task_alloc();
  v1[95] = swift_task_alloc();
  v27 = sub_231E10290();
  v1[96] = v27;
  OUTLINED_FUNCTION_6(v27);
  v1[97] = v28;
  v1[98] = OUTLINED_FUNCTION_55();
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD73F98, &unk_231E170E0);
  OUTLINED_FUNCTION_47(v29);
  v1[99] = OUTLINED_FUNCTION_69();
  v1[100] = swift_task_alloc();
  v30 = sub_231E10210();
  v1[101] = v30;
  OUTLINED_FUNCTION_6(v30);
  v1[102] = v31;
  v1[103] = OUTLINED_FUNCTION_69();
  v1[104] = swift_task_alloc();
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74580, &qword_231E17110);
  OUTLINED_FUNCTION_47(v32);
  v1[105] = OUTLINED_FUNCTION_55();
  v33 = sub_231E10D10();
  v1[106] = v33;
  OUTLINED_FUNCTION_6(v33);
  v1[107] = v34;
  v1[108] = OUTLINED_FUNCTION_55();
  v35 = sub_231E10340();
  v1[109] = v35;
  OUTLINED_FUNCTION_6(v35);
  v1[110] = v36;
  v1[111] = OUTLINED_FUNCTION_69();
  v1[112] = swift_task_alloc();
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74C08, &unk_231E1C610);
  v1[113] = v37;
  OUTLINED_FUNCTION_6(v37);
  v1[114] = v38;
  v1[115] = OUTLINED_FUNCTION_69();
  v1[116] = swift_task_alloc();
  v39 = sub_231E10CF0();
  v1[117] = v39;
  OUTLINED_FUNCTION_6(v39);
  v1[118] = v40;
  v1[119] = OUTLINED_FUNCTION_55();
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74470, &qword_231E17120);
  OUTLINED_FUNCTION_47(v41);
  v1[120] = OUTLINED_FUNCTION_69();
  v1[121] = swift_task_alloc();
  v1[122] = swift_task_alloc();
  v1[123] = swift_task_alloc();
  v1[124] = swift_task_alloc();
  v1[125] = swift_task_alloc();
  v42 = sub_231E106F0();
  v1[126] = v42;
  OUTLINED_FUNCTION_6(v42);
  v1[127] = v43;
  v1[128] = OUTLINED_FUNCTION_69();
  v1[129] = swift_task_alloc();
  v1[130] = swift_task_alloc();
  v1[131] = swift_task_alloc();
  v1[132] = swift_task_alloc();
  v44 = sub_231E0FE20();
  v1[133] = v44;
  OUTLINED_FUNCTION_6(v44);
  v1[134] = v45;
  v1[135] = OUTLINED_FUNCTION_69();
  v1[136] = swift_task_alloc();
  v1[137] = swift_task_alloc();
  v1[138] = swift_task_alloc();
  v1[139] = swift_task_alloc();
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74C10, &qword_231E1C620);
  v1[140] = v46;
  OUTLINED_FUNCTION_6(v46);
  v1[141] = v47;
  v1[142] = OUTLINED_FUNCTION_69();
  v1[143] = swift_task_alloc();
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74C18, &qword_231E1C628);
  v1[144] = v48;
  OUTLINED_FUNCTION_6(v48);
  v1[145] = v49;
  v1[146] = OUTLINED_FUNCTION_69();
  v1[147] = swift_task_alloc();
  v50 = sub_231E0FF70();
  v1[148] = v50;
  OUTLINED_FUNCTION_6(v50);
  v1[149] = v51;
  v1[150] = OUTLINED_FUNCTION_55();
  v52 = sub_231E0FE90();
  v1[151] = v52;
  OUTLINED_FUNCTION_6(v52);
  v1[152] = v53;
  v1[153] = OUTLINED_FUNCTION_55();
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74C20, &unk_231E1C630);
  OUTLINED_FUNCTION_47(v54);
  v1[154] = OUTLINED_FUNCTION_69();
  v1[155] = swift_task_alloc();
  v55 = sub_231E10C90();
  v1[156] = v55;
  OUTLINED_FUNCTION_6(v55);
  v1[157] = v56;
  v1[158] = OUTLINED_FUNCTION_69();
  v1[159] = swift_task_alloc();
  v1[160] = swift_task_alloc();
  v1[161] = swift_task_alloc();
  v57 = sub_231E10E30();
  v1[162] = v57;
  OUTLINED_FUNCTION_6(v57);
  v1[163] = v58;
  v1[164] = OUTLINED_FUNCTION_69();
  v1[165] = swift_task_alloc();
  v1[166] = swift_task_alloc();
  v1[167] = swift_task_alloc();
  v1[168] = swift_task_alloc();
  v1[169] = swift_task_alloc();
  v1[170] = swift_task_alloc();
  v1[171] = swift_task_alloc();
  v1[172] = swift_task_alloc();
  v1[173] = swift_task_alloc();
  v1[174] = swift_task_alloc();
  v59 = sub_231E10CC0();
  v1[175] = v59;
  OUTLINED_FUNCTION_6(v59);
  v1[176] = v60;
  v1[177] = OUTLINED_FUNCTION_69();
  v1[178] = swift_task_alloc();
  v1[179] = swift_task_alloc();
  v1[180] = swift_task_alloc();
  v61 = OUTLINED_FUNCTION_10();

  return MEMORY[0x2822009F8](v61, v62, v63);
}

uint64_t sub_231D2FF20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_57_0();
  v15 = v14[176];
  v16 = v14[174];
  v17 = v14[163];
  v18 = v14[162];
  v19 = *(v15 + 16);
  v14[181] = v19;
  v14[182] = (v15 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  OUTLINED_FUNCTION_263();
  v19();
  v14[183] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74E20, &qword_231E13890);
  v20 = swift_allocObject();
  v14[184] = v20;
  *(v20 + 16) = xmmword_231E1C5A0;
  OUTLINED_FUNCTION_101_3();
  *(v22 + 32) = v21 + 1;
  *(v22 + 40) = v23;
  OUTLINED_FUNCTION_171_0();
  *(v24 + 48) = v25;
  *(v24 + 56) = v26;
  OUTLINED_FUNCTION_171_0();
  *(v28 + 64) = v27 + 9;
  *(v28 + 72) = v29;
  OUTLINED_FUNCTION_171_0();
  v31[10] = v30 - 5;
  v31[11] = v32;
  v31[12] = v30 - 2;
  v31[13] = 0x8000000231E327C0;
  OUTLINED_FUNCTION_171_0();
  *(v33 + 112) = v34;
  *(v33 + 120) = v35;
  OUTLINED_FUNCTION_171_0();
  *(v37 + 128) = v36 - 4;
  *(v37 + 136) = v38;
  OUTLINED_FUNCTION_171_0();
  *(v40 + 144) = v39 + 5;
  *(v40 + 152) = v41;
  OUTLINED_FUNCTION_171_0();
  *(v42 + 160) = v43;
  *(v42 + 168) = v44;
  OUTLINED_FUNCTION_171_0();
  *(v45 + 176) = v46;
  *(v45 + 184) = v47;
  OUTLINED_FUNCTION_171_0();
  *(v49 + 192) = v48 - 7;
  *(v49 + 200) = v50;
  *(v20 + 208) = sub_231E11620();
  *(v20 + 216) = v51;
  *(v20 + 224) = sub_231E11620();
  *(v20 + 232) = v52;
  *(v20 + 240) = sub_231E11620();
  *(v20 + 248) = v53;
  *(v20 + 256) = sub_231E11620();
  *(v20 + 264) = v54;
  *(v20 + 272) = sub_231E11620();
  *(v20 + 280) = v55;
  *(v20 + 288) = sub_231E11620();
  *(v20 + 296) = v56;
  *(v20 + 304) = sub_231E11620();
  *(v20 + 312) = v57;
  *(v20 + 320) = sub_231E11620();
  *(v20 + 328) = v58;
  *(v20 + 336) = sub_231E11620();
  *(v20 + 344) = v59;
  *(v20 + 352) = sub_231E11620();
  *(v20 + 360) = v60;
  *(v20 + 368) = sub_231E11620();
  *(v20 + 376) = v61;
  *(v20 + 384) = sub_231E11620();
  *(v20 + 392) = v62;
  *(v20 + 400) = sub_231E11620();
  *(v20 + 408) = v63;
  *(v20 + 416) = sub_231E11620();
  *(v20 + 424) = v64;
  *(v20 + 432) = sub_231E11620();
  *(v20 + 440) = v65;
  *(v20 + 448) = sub_231E11620();
  *(v20 + 456) = v66;
  *(v20 + 464) = sub_231E11620();
  *(v20 + 472) = v67;
  *(v20 + 480) = sub_231E11620();
  *(v20 + 488) = v68;
  *(v20 + 496) = sub_231E11620();
  *(v20 + 504) = v69;
  *(v20 + 512) = sub_231E11620();
  *(v20 + 520) = v70;
  *(v20 + 528) = sub_231E11620();
  *(v20 + 536) = v71;
  *(v20 + 544) = sub_231E11620();
  *(v20 + 552) = v72;
  *(v20 + 560) = sub_231E11620();
  *(v20 + 568) = v73;
  *(v20 + 576) = sub_231E11620();
  *(v20 + 584) = v74;
  *(v20 + 592) = sub_231E11620();
  *(v20 + 600) = v75;
  *(v20 + 608) = sub_231E11620();
  *(v20 + 616) = v76;
  *(v20 + 624) = sub_231E11620();
  *(v20 + 632) = v77;
  *(v20 + 640) = sub_231E11620();
  *(v20 + 648) = v78;
  *(v20 + 656) = sub_231E11620();
  *(v20 + 664) = v79;
  *(v20 + 672) = sub_231E11620();
  *(v20 + 680) = v80;
  *(v20 + 688) = sub_231E11620();
  *(v20 + 696) = v81;
  *(v20 + 704) = sub_231E11620();
  *(v20 + 712) = v82;
  *(v20 + 720) = sub_231E11620();
  *(v20 + 728) = v83;
  *(v20 + 736) = sub_231E11620();
  *(v20 + 744) = v84;
  *(v20 + 752) = sub_231E11620();
  *(v20 + 760) = v85;
  *(v20 + 768) = sub_231E11620();
  *(v20 + 776) = v86;
  *(v20 + 784) = sub_231E11620();
  *(v20 + 792) = v87;
  *(v20 + 800) = sub_231E11620();
  *(v20 + 808) = v88;
  *(v20 + 816) = sub_231E11620();
  *(v20 + 824) = v89;
  *(v20 + 832) = sub_231E11620();
  *(v20 + 840) = v90;
  *(v20 + 848) = sub_231E11620();
  *(v20 + 856) = v91;
  *(v20 + 864) = sub_231E11620();
  *(v20 + 872) = v92;
  *(v20 + 880) = sub_231E11620();
  *(v20 + 888) = v93;
  *(v20 + 896) = sub_231E11620();
  *(v20 + 904) = v94;
  *(v20 + 912) = sub_231E11620();
  *(v20 + 920) = v95;
  *(v20 + 928) = sub_231E11620();
  *(v20 + 936) = v96;
  *(v20 + 944) = sub_231E11620();
  *(v20 + 952) = v97;
  *(v20 + 960) = sub_231E11620();
  *(v20 + 968) = v98;
  *(v20 + 976) = sub_231E11620();
  *(v20 + 984) = v99;
  *(v20 + 992) = sub_231E11620();
  *(v20 + 1000) = v100;
  *(v20 + 1008) = sub_231E11620();
  *(v20 + 1016) = v101;
  *(v20 + 1024) = sub_231E11620();
  *(v20 + 1032) = v102;
  *(v20 + 1040) = sub_231E11620();
  *(v20 + 1048) = v103;
  *(v20 + 1056) = sub_231E11620();
  *(v20 + 1064) = v104;
  *(v20 + 1072) = sub_231E11620();
  *(v20 + 1080) = v105;
  *(v20 + 1088) = sub_231E11620();
  *(v20 + 1096) = v106;
  *(v20 + 1104) = sub_231E11620();
  *(v20 + 1112) = v107;
  *(v20 + 1120) = sub_231E11620();
  *(v20 + 1128) = v108;
  *(v20 + 1136) = sub_231E11620();
  *(v20 + 1144) = v109;
  *(v20 + 1152) = sub_231E11620();
  *(v20 + 1160) = v110;
  *(v20 + 1168) = sub_231E11620();
  *(v20 + 1176) = v111;
  *(v20 + 1184) = sub_231E11620();
  *(v20 + 1192) = v112;
  *(v20 + 1200) = sub_231E11620();
  *(v20 + 1208) = v113;
  *(v20 + 1216) = sub_231E11620();
  *(v20 + 1224) = v114;
  *(v20 + 1232) = sub_231E11620();
  *(v20 + 1240) = v115;
  *(v20 + 1248) = sub_231E11620();
  *(v20 + 1256) = v116;
  *(v20 + 1264) = sub_231E11620();
  *(v20 + 1272) = v117;
  *(v20 + 1280) = sub_231E11620();
  *(v20 + 1288) = v118;
  *(v20 + 1296) = sub_231E11620();
  *(v20 + 1304) = v119;
  *(v20 + 1312) = sub_231E11620();
  *(v20 + 1320) = v120;
  *(v20 + 1328) = sub_231E11620();
  *(v20 + 1336) = v121;
  *(v20 + 1344) = sub_231E11620();
  *(v20 + 1352) = v122;
  *(v20 + 1360) = sub_231E11620();
  *(v20 + 1368) = v123;
  *(v20 + 1376) = sub_231E11620();
  *(v20 + 1384) = v124;
  *(v20 + 1392) = sub_231E11620();
  *(v20 + 1400) = v125;
  *(v20 + 1408) = sub_231E11620();
  *(v20 + 1416) = v126;
  *(v20 + 1424) = sub_231E11620();
  *(v20 + 1432) = v127;
  *(v20 + 1440) = sub_231E11620();
  *(v20 + 1448) = v128;
  *(v20 + 1456) = sub_231E11620();
  *(v20 + 1464) = v129;
  *(v20 + 1472) = sub_231E11620();
  *(v20 + 1480) = v130;
  *(v20 + 1488) = sub_231E11620();
  *(v20 + 1496) = v131;
  v132 = v14;
  *(v20 + 1504) = sub_231E11620();
  *(v20 + 1512) = v133;
  *(v20 + 1520) = sub_231E11620();
  *(v20 + 1528) = v134;
  *(v20 + 1536) = sub_231E11620();
  *(v20 + 1544) = v135;
  v136 = sub_231CB4EEC();
  v14[185] = v136;
  v137 = *(v17 + 16);
  v14[186] = v137;
  v14[187] = (v17 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v137(v16, v136, v18);
  OUTLINED_FUNCTION_263();
  v19();
  v138 = sub_231E10E10();
  v139 = sub_231E11AF0();
  v140 = os_log_type_enabled(v138, v139);
  v141 = v14[175];
  v142 = v14[174];
  v143 = v132[163];
  v144 = v132[162];
  if (v140)
  {
    v237 = v132;
    v145 = OUTLINED_FUNCTION_9_1();
    v234 = v144;
    v146 = OUTLINED_FUNCTION_67();
    v238 = v146;
    *v145 = 136315138;
    v233 = v142;
    v147 = sub_231E10C80();
    v231 = v139;
    v149 = v148;
    v150 = OUTLINED_FUNCTION_302();
    v151(v150);
    v152 = sub_231CB5000(v147, v149, &v238);

    *(v145 + 4) = v152;
    _os_log_impl(&dword_231CAE000, v138, v231, "ModelInputContentBuilder: Handling request: %s", v145, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v146);
    OUTLINED_FUNCTION_30();
    v132 = v237;
    OUTLINED_FUNCTION_30();

    v153 = *(v143 + 8);
    v153(v233, v234);
  }

  else
  {

    v154 = OUTLINED_FUNCTION_302();
    v155(v154);
    v153 = *(v143 + 8);
    v153(v142, v144);
  }

  v132[189] = v141;
  v132[188] = v153;
  v156 = v132[157];
  sub_231E10CA0();
  v132[190] = *(v156 + 88);
  v132[191] = (v156 + 88) & 0xFFFFFFFFFFFFLL | 0xA3B5000000000000;
  v157 = OUTLINED_FUNCTION_33();
  v159 = v158(v157);
  v160 = *MEMORY[0x277D424D8];
  *(v132 + 480) = *MEMORY[0x277D424D8];
  if (v159 == v160)
  {
    v161 = v132[161];
    v162 = v132[156];
    v163 = v132[155];
    v164 = *(v132[157] + 96);
    v132[192] = v164;
    v164(v161, v162);
    v166 = *v161;
    v165 = v161[1];
    sub_231E10CB0();
    v167 = sub_231E10D50();
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v163, 1, v167);
    v169 = v132[155];
    if (EnumTagSinglePayload == 1)
    {
      sub_231CC154C(v132[155], &qword_27DD74C20, &unk_231E1C630);
LABEL_18:
      v193 = swift_allocObject();
      v132[198] = v193;
      *(v193 + 16) = xmmword_231E138E0;
      *(v193 + 32) = v166;
      *(v193 + 40) = v165;
      v194 = swift_task_alloc();
      v132[199] = v194;
      *v194 = v132;
      OUTLINED_FUNCTION_144_1(v194);
      OUTLINED_FUNCTION_299();
LABEL_34:
      OUTLINED_FUNCTION_44();

      return sub_231DFA704();
    }

    v184 = sub_231E10D40();
    OUTLINED_FUNCTION_56_6();
    (*(v185 + 8))(v169, v167);
    if (v184 == 2 || (v184 & 1) == 0)
    {
      goto LABEL_18;
    }

    type metadata accessor for SpotlightWriter();
    v186 = OUTLINED_FUNCTION_112_3();
    sub_231CDBB24(v186, v165);
    if (v187)
    {
      v188 = v187;

      v165 = v188;
    }

    v132[193] = v165;
    v189 = swift_task_alloc();
    v132[194] = v189;
    *v189 = v132;
    v189[1] = sub_231D313F0;
    OUTLINED_FUNCTION_57();
    OUTLINED_FUNCTION_44();

    return sub_231DFB0B0(v190, v191);
  }

  else
  {
    if (v159 != *MEMORY[0x277D424C8])
    {
      if (v159 == *MEMORY[0x277D424E0])
      {
        v195 = v132[161];
        v196 = v132[156];
        v197 = v132[154];
        v198 = *(v132[157] + 96);
        v132[207] = v198;
        v198(v195, v196);
        v200 = *v195;
        v199 = v195[1];
        sub_231E10CB0();
        v201 = sub_231E10D50();
        if (__swift_getEnumTagSinglePayload(v197, 1, v201) == 1)
        {
          sub_231CC154C(v132[154], &qword_27DD74C20, &unk_231E1C630);
        }

        else
        {
          v211 = sub_231E10D40();
          OUTLINED_FUNCTION_56_6();
          v212 = OUTLINED_FUNCTION_207();
          v213(v212);
          if (v211 != 2 && (v211 & 1) != 0)
          {
            type metadata accessor for SpotlightWriter();
            v214 = sub_231CDBB24(v200, v199);
            if (v215)
            {
              v216 = v214;
              v217 = v215;

              v200 = v216;
              v199 = v217;
            }
          }
        }

        v218 = OUTLINED_FUNCTION_304();
        v132[208] = v218;
        *(v218 + 16) = xmmword_231E138E0;
        *(v218 + 32) = v200;
        *(v218 + 40) = v199;
        v209 = swift_task_alloc();
        v132[209] = v209;
        *v209 = v132;
        v210 = sub_231D36158;
      }

      else
      {
        if (v159 != *MEMORY[0x277D424C0] && v159 != *MEMORY[0x277D424D0])
        {
          v220 = v132[180];
          v221 = v132[56];

          sub_231D3EA58(v220, v221);
          v222 = OUTLINED_FUNCTION_140_0();
          v141(v222);
          v223 = OUTLINED_FUNCTION_70();
          v224(v223);
          OUTLINED_FUNCTION_1_17();
          OUTLINED_FUNCTION_49_6();
          OUTLINED_FUNCTION_106_3();

          OUTLINED_FUNCTION_88_3();
          OUTLINED_FUNCTION_44();

          __asm { BRAA            X1, X16 }
        }

        v203 = v132[161];
        v204 = v132[156];
        v205 = *(v132[157] + 96);
        v132[203] = v205;
        v205(v203, v204);
        v207 = *v203;
        v206 = v203[1];
        v208 = OUTLINED_FUNCTION_304();
        v132[204] = v208;
        *(v208 + 16) = xmmword_231E138E0;
        *(v208 + 32) = v207;
        *(v208 + 40) = v206;
        v209 = swift_task_alloc();
        v132[205] = v209;
        *v209 = v132;
        v210 = sub_231D33F88;
      }

      v209[1] = v210;
      OUTLINED_FUNCTION_150_1();
      goto LABEL_34;
    }

    v170 = v132[161];
    v171 = v132[157];
    v172 = v132[156];
    v173 = v132[152];
    v227 = v132[151];
    v228 = v132[153];
    v174 = v132[150];
    v175 = v141;
    v176 = v132[149];
    v232 = v132[143];
    v177 = v132[141];
    v229 = v132[148];
    v230 = v132[140];
    v236 = v132[132];
    v178 = v132[127];
    v235 = v132[126];
    (v175)(v132[180], v132[175]);

    (*(v171 + 96))(v170, v172);
    v179 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74C28, &unk_231E1C640) + 48);
    (*(v173 + 32))(v228, v170, v227);
    (*(v176 + 32))(v174, v170 + v179, v229);
    (*(v177 + 104))(v232, *MEMORY[0x277D42408], v230);
    sub_231E0FF60();
    (*(v178 + 104))(v236, *MEMORY[0x277D423A8], v235);
    v180 = swift_task_alloc();
    v132[201] = v180;
    *v180 = v132;
    v180[1] = sub_231D337F0;
    OUTLINED_FUNCTION_44();

    return sub_231D72FA0(v181);
  }
}

uint64_t sub_231D313F0()
{
  OUTLINED_FUNCTION_50_0();
  v3 = v2;
  v5 = v4;
  v6 = *v1;
  OUTLINED_FUNCTION_4();
  *v7 = v6;
  *v7 = *v1;
  v6[195] = v0;

  if (v0)
  {
    v8 = OUTLINED_FUNCTION_42_6();
    v9(v8);
  }

  else
  {

    v6[196] = v3;
    v6[197] = v5;
  }

  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_106();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_231D3154C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_50_0();
  v13 = v12[197];
  v14 = v12[196];
  v15 = swift_allocObject();
  v12[198] = v15;
  *(v15 + 16) = xmmword_231E138E0;
  *(v15 + 32) = v13;
  *(v15 + 40) = v14;
  v16 = swift_task_alloc();
  v12[199] = v16;
  *v16 = v12;
  OUTLINED_FUNCTION_144_1(v16);
  OUTLINED_FUNCTION_155_2();
  OUTLINED_FUNCTION_106();

  return sub_231DFA704();
}

uint64_t sub_231D31620()
{
  OUTLINED_FUNCTION_29();
  v2 = *v1;
  OUTLINED_FUNCTION_4();
  *v3 = v2;
  v2[31] = v1;
  v2[32] = v4;
  v2[33] = v0;
  OUTLINED_FUNCTION_223();
  *v5 = *v1;
  v2[200] = v0;

  OUTLINED_FUNCTION_223();
  if (v0)
  {
    v6 = OUTLINED_FUNCTION_42_6();
    v7(v6);
  }

  OUTLINED_FUNCTION_31();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_231D31768(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_142();
  OUTLINED_FUNCTION_57_0();
  v19 = *(v14 + 1600);
  v20 = *(v14 + 256);
  OUTLINED_FUNCTION_269(*(v14 + 1536));
  v22 = sub_231D3EE08(v21);
  OUTLINED_FUNCTION_272(v22);
  if (!v12)
  {
    v66 = OUTLINED_FUNCTION_31_5();
    v67(v66);

    OUTLINED_FUNCTION_147_1();
    (v18)();
    v68 = OUTLINED_FUNCTION_186();
    v69(v68);
    v70 = sub_231E10E10();
    v71 = sub_231E11AD0();
    OUTLINED_FUNCTION_230(v71);
    OUTLINED_FUNCTION_62_1();
    if (v72)
    {
      v73 = OUTLINED_FUNCTION_9_1();
      v74 = OUTLINED_FUNCTION_67();
      OUTLINED_FUNCTION_232(v74);
      *v73 = 136446210;
      sub_231E10C80();
      v75 = OUTLINED_FUNCTION_86_3();
      (v15)(v75);
      v76 = OUTLINED_FUNCTION_259();
      sub_231CB5000(v76, v77, v78);
      OUTLINED_FUNCTION_112_3();

      *(v73 + 4) = v16;
      OUTLINED_FUNCTION_3_7();
      _os_log_impl(v79, v80, v81, v82, v83, 0xCu);
      OUTLINED_FUNCTION_8_0();
      OUTLINED_FUNCTION_11();

      v84 = OUTLINED_FUNCTION_251();
      v85(v84);
    }

    else
    {

      v110 = OUTLINED_FUNCTION_91_3();
      (v15)(v110);
      v111 = OUTLINED_FUNCTION_245();
      (v13)(v111);
    }

    *(v14 + 344) = OUTLINED_FUNCTION_278();
    *(v14 + 352) = v112;
    OUTLINED_FUNCTION_78_1();
    OUTLINED_FUNCTION_277();
    OUTLINED_FUNCTION_276(v113, v114, v115, MEMORY[0x277D84698], MEMORY[0x277D846A8]);
    v116 = *(v14 + 352);
    *v15 = *(v14 + 344);
    *(v15 + 8) = v116;
    v117 = *MEMORY[0x277D42140];
    sub_231E0FDE0();
    OUTLINED_FUNCTION_6_0();
    v119 = *(v118 + 104);
    v120 = v15;
LABEL_17:
    v121 = v117;
LABEL_18:
    v119(v120, v121);
    goto LABEL_74;
  }

  v23 = OUTLINED_FUNCTION_28_4();
  OUTLINED_FUNCTION_191(v23, *MEMORY[0x277D421D8]);
  v25 = v24();
  v26 = OUTLINED_FUNCTION_84_2(v25, *MEMORY[0x277D423A8]);
  v27(v26);
  v28 = sub_231E0F5F0();
  OUTLINED_FUNCTION_48_5(v28);
  v29 = OUTLINED_FUNCTION_255();
  v31 = v30(v29);
  if (v31 != v690)
  {
    if (v31 == *MEMORY[0x277D424C8])
    {
      OUTLINED_FUNCTION_87_3();
      OUTLINED_FUNCTION_35_5();
      OUTLINED_FUNCTION_85_2();
      v86();

      v87 = OUTLINED_FUNCTION_80();
      v693(v87);
      OUTLINED_FUNCTION_69_3();
      (v18)();
      v88 = sub_231E10E10();
      sub_231E11AE0();
      OUTLINED_FUNCTION_205();
      if (os_log_type_enabled(v88, v89))
      {
        v90 = OUTLINED_FUNCTION_16_1();
        OUTLINED_FUNCTION_226(v90);
        OUTLINED_FUNCTION_219(&dword_231CAE000, v91, v92, "Programmer Error: mailManualSummary should not reach here");
        OUTLINED_FUNCTION_49_2();
      }

      v93 = *(v14 + 1504);
      OUTLINED_FUNCTION_25_6();
      OUTLINED_FUNCTION_83_2();
      v94 = OUTLINED_FUNCTION_252();
      v93(v94);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74C28, &unk_231E1C640);

      v95 = OUTLINED_FUNCTION_48();
      sub_231CC154C(v95, v96, &qword_231E17120);
      OUTLINED_FUNCTION_131_1();
      sub_231CC154C(v97, v98, v99);
      OUTLINED_FUNCTION_131_1();
      sub_231CC154C(v100, v101, v102);
      (*(v13 + 8))();
      v103 = OUTLINED_FUNCTION_229();
      v104(v103);
      OUTLINED_FUNCTION_76_2();
      *v16 = v105;
      v16[1] = 0x8000000231E32860;
      sub_231E0FDE0();
      OUTLINED_FUNCTION_6_0();
      v106 = OUTLINED_FUNCTION_233();
      v107(v106);
      v108 = OUTLINED_FUNCTION_180();
      v109(v108);
      goto LABEL_73;
    }

    OUTLINED_FUNCTION_177_0();
    v125 = v125 || v122 == v123;
    if (!v125 && v122 != v124)
    {
      v127 = *(v14 + 1440);
      v128 = *(v14 + 1256);
      v689 = *(v14 + 1248);
      v691 = *(v14 + 1280);
      OUTLINED_FUNCTION_25_6();
      OUTLINED_FUNCTION_107_3();

      sub_231D3EA58(v127, v12);

      OUTLINED_FUNCTION_284();
      v129 = OUTLINED_FUNCTION_57();
      sub_231CC154C(v129, v130, &qword_231E17120);
      v131 = OUTLINED_FUNCTION_48();
      sub_231CC154C(v131, v132, &qword_231E17120);
      (*(v18 + 8))();
      v133 = OUTLINED_FUNCTION_229();
      v134(v133);
      v135 = OUTLINED_FUNCTION_175_0();
      v136(v135);
      v119 = *(v128 + 8);
      v121 = v689;
      v120 = v691;
      goto LABEL_18;
    }
  }

  v32 = OUTLINED_FUNCTION_92_2();
  v33(v32);
  OUTLINED_FUNCTION_208();
  v694 = v12;
  if (v19 >= 2)
  {
    OUTLINED_FUNCTION_66_4();
    v34 = OUTLINED_FUNCTION_231();
    v35(v34);

    v36 = sub_231E10E10();
    v37 = sub_231E11AE0();

    os_log_type_enabled(v36, v37);
    OUTLINED_FUNCTION_184();
    if (v38)
    {
      OUTLINED_FUNCTION_9_1();
      OUTLINED_FUNCTION_151_1();
      v695 = swift_slowAlloc();
      v39 = OUTLINED_FUNCTION_90_3(4.8149e-34);
      *(v12 + 4) = sub_231CB5000(v39, v12, v40);
      OUTLINED_FUNCTION_182(&dword_231CAE000, v41, v37, "Found more than one item for the spotlight id: %s. Continuing anyway using only the first item.");
      __swift_destroy_boxed_opaque_existential_0(v695);
      OUTLINED_FUNCTION_30();
      OUTLINED_FUNCTION_49_2();
    }

    v42 = OUTLINED_FUNCTION_113_2();
    v17(v42);
  }

  OUTLINED_FUNCTION_183();
  v43 = [v692 attributeSet];
  *(v14 + 1704) = v43;
  v44 = v43;
  v45 = [v44 summarizationContentTopic];
  sub_231D41110(v45);

  v46 = &qword_27DD74470;
  OUTLINED_FUNCTION_143_1();
  sub_231CC154C(v47, v48, v49);
  OUTLINED_FUNCTION_131_1();
  sub_231D42DEC(v50, v51, v52, &qword_231E17120);
  OUTLINED_FUNCTION_273([v44 summarizationContentTopLine]);

  v53 = OUTLINED_FUNCTION_80();
  sub_231CC154C(v53, v54, &qword_231E17120);
  OUTLINED_FUNCTION_209();
  sub_231D42DEC(v55, v56, v57, &qword_231E17120);
  OUTLINED_FUNCTION_273([v44 summarizationContentSynopsis]);

  OUTLINED_FUNCTION_143_1();
  sub_231CC154C(v58, v59, v60);
  v61 = OUTLINED_FUNCTION_116_3();
  sub_231D42DEC(v61, v62, &qword_27DD74470, &qword_231E17120);
  v63 = [v44 isUrgent];
  if (v63)
  {
    v64 = v63;
    v65 = [v63 BOOLValue];
  }

  else
  {
    v65 = 2;
  }

  *(v14 + 1924) = v65;
  v137 = OUTLINED_FUNCTION_100_3();
  v138 = OUTLINED_FUNCTION_82();
  v140 = [v138 v139];

  if (v140)
  {
    OUTLINED_FUNCTION_275();
    swift_unknownObjectRelease();
  }

  else
  {
    OUTLINED_FUNCTION_152_0();
  }

  OUTLINED_FUNCTION_172_0();
  v144 = MEMORY[0x277D84F70];
  if (v145)
  {
    OUTLINED_FUNCTION_216(v141, v142, v143, MEMORY[0x277D837D0]);
    OUTLINED_FUNCTION_228();
    if (v125)
    {
      v147 = 0;
    }
  }

  else
  {
    sub_231CC154C(v14 + 56, &dword_27DD741E0, &qword_231E15D70);
    OUTLINED_FUNCTION_227();
  }

  *(v14 + 1720) = v147;
  *(v14 + 1712) = v146;
  v148 = OUTLINED_FUNCTION_100_3();
  v149 = OUTLINED_FUNCTION_82();
  v151 = [v149 v150];

  if (v151)
  {
    OUTLINED_FUNCTION_275();
    swift_unknownObjectRelease();
  }

  else
  {
    OUTLINED_FUNCTION_152_0();
  }

  OUTLINED_FUNCTION_174_0();
  if (v155)
  {
    OUTLINED_FUNCTION_215(v152, v153, v154, MEMORY[0x277D837D0]);
    OUTLINED_FUNCTION_228();
  }

  else
  {
    sub_231CC154C(v14 + 88, &dword_27DD741E0, &qword_231E15D70);
    OUTLINED_FUNCTION_227();
  }

  *(v14 + 1744) = OUTLINED_FUNCTION_274(v156);
  *(v14 + 1752) = v157;
  sub_231CE22E0([v44 summarizationStatus]);
  OUTLINED_FUNCTION_79_1();
  if (!v125 & v158)
  {
    v159 = OUTLINED_FUNCTION_40_4();
    v144(v159);
    v160 = OUTLINED_FUNCTION_127_1();
    v161(v160);
  }

  else
  {
    OUTLINED_FUNCTION_192();
    v144 = v162;
    sub_231CE2318(v163, v164, v162, &qword_27DD74470);
    v165 = OUTLINED_FUNCTION_116_3();
    sub_231CB6F48(v165, v166, v144);
    v167 = OUTLINED_FUNCTION_40_4();
    v144(v167);
  }

  v168 = OUTLINED_FUNCTION_77_1();
  v169(v168);
  sub_231DE8E10([v44 urgencyStatus]);
  OUTLINED_FUNCTION_80_1();
  if (!v125 & v158)
  {
    v173 = OUTLINED_FUNCTION_40_4();
    v144(v173);
    v174 = OUTLINED_FUNCTION_128_1();
    v175(v174);
  }

  else
  {
    OUTLINED_FUNCTION_222(v170, v171, v172);
    OUTLINED_FUNCTION_281();
    v176 = OUTLINED_FUNCTION_40_4();
    v144(v176);
  }

  v177 = OUTLINED_FUNCTION_75_1();
  v178(v177);
  v179 = [v44 summarizedIdentifiers];
  v180 = MEMORY[0x277D84FA0];
  if (v179)
  {
    OUTLINED_FUNCTION_58_5();
    v46 = sub_231E11870();

    v695 = v180;

    v182 = OUTLINED_FUNCTION_271(v181);
    OUTLINED_FUNCTION_214(v182);

    sub_231E10CA0();
    v183 = OUTLINED_FUNCTION_70();
    if ((unk_231E15000)(v183) != v17)
    {
      v194 = OUTLINED_FUNCTION_167_0();
      v195(v194);
      v196 = swift_task_alloc();
      *(v14 + 1784) = v196;
      *v196 = v14;
      OUTLINED_FUNCTION_30_6(v196);
      OUTLINED_FUNCTION_95_3();

      return sub_231D3EE84();
    }

    OUTLINED_FUNCTION_217();

    v184 = OUTLINED_FUNCTION_140_0();
    v185(v184);
  }

  else
  {
    OUTLINED_FUNCTION_140_1();
    v186 = OUTLINED_FUNCTION_59_0();
    (off_278947000)(v186);

    v44 = sub_231E10E10();
    v187 = sub_231E11AF0();

    os_log_type_enabled(v44, v187);
    OUTLINED_FUNCTION_169_0();
    if (v188)
    {
      OUTLINED_FUNCTION_9_1();
      v688 = v148;
      OUTLINED_FUNCTION_151_1();
      v189 = swift_slowAlloc();
      OUTLINED_FUNCTION_232(v189);
      v190 = OUTLINED_FUNCTION_90_3(4.8149e-34);
      v17 = sub_231CB5000(v190, v694, v191);

      *(v148 + 4) = v17;
      OUTLINED_FUNCTION_182(&dword_231CAE000, v192, v187, "Entity with spotlightIdentifier: %s had no summarized identifiers. No need to query spotlight again.");
      OUTLINED_FUNCTION_8_0();
      OUTLINED_FUNCTION_49_2();
    }

    else
    {
    }

    v193 = OUTLINED_FUNCTION_82_0();
    (v148)(v193);
    v180 = v692;
    v199 = v692;
    OUTLINED_FUNCTION_270(v199, v200, v201, MEMORY[0x277D84F90]);
    OUTLINED_FUNCTION_164_0();
    if (v158)
    {
      v531 = OUTLINED_FUNCTION_44_6(v206);
      v202 = sub_231D41480(v531, v532, v533, v534);
      v205 = v202;
    }

    OUTLINED_FUNCTION_115_2(v202, v203, v204, v205);
  }

  OUTLINED_FUNCTION_241();
  v207 = MEMORY[0x277D84F90];
  OUTLINED_FUNCTION_163_0(v208, v209, v210, v211);
  do
  {
    OUTLINED_FUNCTION_238(v212);
    if (v125)
    {
      break;
    }

    OUTLINED_FUNCTION_161_0();
  }

  while (!v125);
  OUTLINED_FUNCTION_73_2(v213, v214, v215, v216);
  v217 = OUTLINED_FUNCTION_25();
  v218 = (unk_231E15000)(v217);
  if (v218 == v17)
  {
    v219 = *(v14 + 1696);
    OUTLINED_FUNCTION_21_5();
    OUTLINED_FUNCTION_57_4();
    v220();
    v221 = v207 + 1;
    v222 = OUTLINED_FUNCTION_25();
    v223(v222);
    v224 = sub_231D27B60();
    OUTLINED_FUNCTION_105_3(v224);
    OUTLINED_FUNCTION_154_1(v46);
    if (!v125)
    {
      v278 = OUTLINED_FUNCTION_93_3();
      v279(v278);
      if (v219[232])
      {
        if (v219[232] == 1)
        {
          OUTLINED_FUNCTION_283();
          v280 = OUTLINED_FUNCTION_18_7();
          OUTLINED_FUNCTION_41_6(v280 + 8);
          v281 = swift_task_alloc();
          *(v14 + 1864) = v281;
          *v281 = v14;
          OUTLINED_FUNCTION_7_13(v281);
          OUTLINED_FUNCTION_95_3();

          __asm { BRAA            X3, X16 }
        }

        OUTLINED_FUNCTION_283();
        v371 = OUTLINED_FUNCTION_18_7();
        OUTLINED_FUNCTION_41_6(v371 + 16);
        v372 = swift_task_alloc();
        *(v14 + 1888) = v372;
        *v372 = v14;
        OUTLINED_FUNCTION_7_13(v372);
        OUTLINED_FUNCTION_95_3();

        __asm { BRAA            X3, X16 }
      }

      if ([*(v14 + 1704) summarizedIdentifiers])
      {
        OUTLINED_FUNCTION_239();
        sub_231E11870();

        v367 = OUTLINED_FUNCTION_271(v366);

        v368 = sub_231D3F7BC(v367);
        *(v14 + 1832) = v368;
        *(v14 + 1840) = v180;
        OUTLINED_FUNCTION_101_3();
        v369 = sub_231E115F0();
        v370 = [v219 attributeForKey_];

        if (v370)
        {
          OUTLINED_FUNCTION_308();
          swift_unknownObjectRelease();
        }

        else
        {
          OUTLINED_FUNCTION_152_0();
        }

        OUTLINED_FUNCTION_173_0();
        if (v476)
        {
          v477 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74C98, &qword_231E1C6A8);
          if (OUTLINED_FUNCTION_165(v477))
          {
            OUTLINED_FUNCTION_237();
            if (v478)
            {
              OUTLINED_FUNCTION_160_0();
              OUTLINED_FUNCTION_114_0();
              if (v125)
              {
                v479 = OUTLINED_FUNCTION_33_9((*(v14 + 464) + 192));
                OUTLINED_FUNCTION_41_6(v479 + 24);
                v480 = swift_task_alloc();
                *(v14 + 1856) = v480;
                *v480 = v14;
                OUTLINED_FUNCTION_13_9(v480);
                OUTLINED_FUNCTION_50_4();
                OUTLINED_FUNCTION_122_1();
                OUTLINED_FUNCTION_95_3();

                __asm { BRAA            X4, X16 }
              }

              OUTLINED_FUNCTION_3_16();

              OUTLINED_FUNCTION_195();
              OUTLINED_FUNCTION_71_3();
              sub_231CC154C(v512, v513, v514);
              OUTLINED_FUNCTION_71_3();
              sub_231CC154C(v515, v516, v517);
              OUTLINED_FUNCTION_71_3();
              sub_231CC154C(v518, v519, v520);
              v521 = OUTLINED_FUNCTION_12_10();
              v522(v521);
              v523 = OUTLINED_FUNCTION_20_7();
              v524(v523);
              OUTLINED_FUNCTION_101_3();
              v526 = (v525 + 48);
            }

            else
            {
              OUTLINED_FUNCTION_3_16();

              OUTLINED_FUNCTION_195();
              OUTLINED_FUNCTION_71_3();
              sub_231CC154C(v498, v499, v500);
              OUTLINED_FUNCTION_71_3();
              sub_231CC154C(v501, v502, v503);
              OUTLINED_FUNCTION_71_3();
              sub_231CC154C(v504, v505, v506);
              v507 = OUTLINED_FUNCTION_12_10();
              v508(v507);
              v509 = OUTLINED_FUNCTION_20_7();
              v510(v509);
              OUTLINED_FUNCTION_101_3();
              v526 = (v511 + 5);
            }

            off_278947000 = v526;
            off_278947008 = v369;
            sub_231E0FDE0();
            OUTLINED_FUNCTION_6_0();
            v527 = OUTLINED_FUNCTION_233();
            v528(v527);
            v529 = OUTLINED_FUNCTION_202();
            v530(v529);
            goto LABEL_74;
          }

          OUTLINED_FUNCTION_99_2();
        }

        else
        {
          OUTLINED_FUNCTION_99_2();

          sub_231CC154C(v14 + 120, &dword_27DD741E0, &qword_231E15D70);
        }

        OUTLINED_FUNCTION_34_6();

        v483 = OUTLINED_FUNCTION_48();
        sub_231CC154C(v483, v484, &qword_231E17120);
        OUTLINED_FUNCTION_150_1();
        sub_231CC154C(v485, v486, v487);
        OUTLINED_FUNCTION_150_1();
        sub_231CC154C(v488, v489, v490);
        v491 = OUTLINED_FUNCTION_234();
        v492(v491);
        v493 = OUTLINED_FUNCTION_158_0();
        v494(v493);
        OUTLINED_FUNCTION_101_3();
        *v369 = v495 + 7;
        v369[1] = 0x8000000231E32910;
        sub_231E0FDE0();
        OUTLINED_FUNCTION_6_0();
        v496 = OUTLINED_FUNCTION_102_0();
        v497(v496);
        (off_278947008)(v694);
      }

      else
      {
        OUTLINED_FUNCTION_27_5();

        OUTLINED_FUNCTION_294();
        OUTLINED_FUNCTION_69_3();
        sub_231CC154C(v400, v401, v402);
        OUTLINED_FUNCTION_69_3();
        sub_231CC154C(v403, v404, v405);
        OUTLINED_FUNCTION_69_3();
        sub_231CC154C(v406, v407, v408);
        v409 = OUTLINED_FUNCTION_12_10();
        v410(v409);
        v411 = OUTLINED_FUNCTION_20_7();
        v412(v411);
        OUTLINED_FUNCTION_101_3();
        OUTLINED_FUNCTION_296(v413);
        sub_231E0FDE0();
        OUTLINED_FUNCTION_6_0();
        v414 = OUTLINED_FUNCTION_102_0();
        v415(v414);
        v416 = OUTLINED_FUNCTION_202();
        v417(v416);
      }

LABEL_74:
      OUTLINED_FUNCTION_0_22();
      OUTLINED_FUNCTION_6_13();
      OUTLINED_FUNCTION_23_6(v269);

      OUTLINED_FUNCTION_19();
      OUTLINED_FUNCTION_95_3();

      return v271(v270, v271, v272, v273, v274, v275, v276, v277, a9, a10, a11, a12);
    }

    OUTLINED_FUNCTION_52_5();

    sub_231CC154C(v20, &qword_27DD74580, &qword_231E17110);
    v225 = OUTLINED_FUNCTION_67_4();
    (v221)(v225);
    v226 = v694;
    v227 = sub_231E10E10();
    v228 = sub_231E11AD0();

    if (OUTLINED_FUNCTION_85())
    {
      OUTLINED_FUNCTION_72_2();
      v229 = OUTLINED_FUNCTION_199();
      OUTLINED_FUNCTION_298(v229);
      LODWORD(off_278947000) = 136315138;
      v230 = [v17 uniqueIdentifier];
      sub_231E11620();
      OUTLINED_FUNCTION_192();

      v231 = OUTLINED_FUNCTION_116_3();
      sub_231CB5000(v231, v232, v233);
      OUTLINED_FUNCTION_307();
      *(&off_278947000 + 4) = v230;
      OUTLINED_FUNCTION_159_0();
      _os_log_impl(v234, v235, v236, v237, v238, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v46);
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_30();

      v239 = OUTLINED_FUNCTION_236();
      v240(v239);
    }

    else
    {
      OUTLINED_FUNCTION_218();
      v311 = OUTLINED_FUNCTION_25();
      v228(v311);
    }

    v696 = OUTLINED_FUNCTION_38_5();
    v697 = v312;
    OUTLINED_FUNCTION_78_1();
    OUTLINED_FUNCTION_280();
    v313 = [&unk_231E15000 uniqueIdentifier];
    sub_231E11620();
    OUTLINED_FUNCTION_268();

    v314 = OUTLINED_FUNCTION_70();
    MEMORY[0x23837CC20](v314);

    OUTLINED_FUNCTION_69_3();
    sub_231CC154C(v315, v316, v317);
    OUTLINED_FUNCTION_69_3();
    sub_231CC154C(v318, v319, v320);
    OUTLINED_FUNCTION_69_3();
    sub_231CC154C(v321, v322, v323);
    v324 = OUTLINED_FUNCTION_36_5();
    (v692)(v324);
    v325 = OUTLINED_FUNCTION_43_8();
    v326(v325);
    *v226 = v696;
    v226[1] = v697;
    v117 = *MEMORY[0x277D42140];
    sub_231E0FDE0();
    OUTLINED_FUNCTION_6_0();
    v119 = *(v327 + 104);
    v120 = v226;
    goto LABEL_17;
  }

  if (v218 == *MEMORY[0x277D424C8])
  {
    v241 = OUTLINED_FUNCTION_29_5();
    v242(v241);

    v243 = OUTLINED_FUNCTION_116_3();
    v688(v243);
    v244 = OUTLINED_FUNCTION_67_4();
    v690(v244);
    v245 = sub_231E10E10();
    sub_231E11AD0();
    OUTLINED_FUNCTION_205();
    if (os_log_type_enabled(v245, v246))
    {
      v247 = OUTLINED_FUNCTION_16_1();
      OUTLINED_FUNCTION_226(v247);
      OUTLINED_FUNCTION_220(&dword_231CAE000, v248, v249, "Programmer Error: mailManualSummary should not reach here");
      OUTLINED_FUNCTION_49_2();
    }

    OUTLINED_FUNCTION_24_5();
    v250 = OUTLINED_FUNCTION_235();
    v20(v250);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74C28, &unk_231E1C640);

    v251 = OUTLINED_FUNCTION_48();
    sub_231CC154C(v251, v252, &qword_231E17120);
    OUTLINED_FUNCTION_153_1();
    sub_231CC154C(v253, v254, v255);
    OUTLINED_FUNCTION_153_1();
    sub_231CC154C(v256, v257, v258);
    v259 = OUTLINED_FUNCTION_157_0();
    v687(v259);
    v260 = OUTLINED_FUNCTION_156_2();
    v261(v260);
    OUTLINED_FUNCTION_76_2();
    *v207 = v262;
    v207[1] = 0x8000000231E32860;
    sub_231E0FDE0();
    OUTLINED_FUNCTION_6_0();
    v263 = OUTLINED_FUNCTION_267();
    v264(v263);
    v265 = OUTLINED_FUNCTION_247();
    v266(v265);
LABEL_73:
    v267 = OUTLINED_FUNCTION_179_0();
    v268(v267);
    goto LABEL_74;
  }

  if (v218 != *MEMORY[0x277D424E0])
  {
    if (v218 == *MEMORY[0x277D424C0] || v218 == *MEMORY[0x277D424D0])
    {
      v329 = OUTLINED_FUNCTION_19_6();
      v330(v329);
      v331 = OUTLINED_FUNCTION_246();
      v332(v331);
      v333 = v44 + 13;
      v334 = OUTLINED_FUNCTION_123_1();
      v335(v334);
      v336 = OUTLINED_FUNCTION_250();
      v337(v336);
      v338 = OUTLINED_FUNCTION_249();
      v339(v338);
      v340 = v692[2];
      if (v340)
      {
        OUTLINED_FUNCTION_26_5();
        OUTLINED_FUNCTION_265();
        v342 = v341;
        sub_231D41D3C(v343, v344, v345);
        OUTLINED_FUNCTION_248();
        LODWORD(v684) = *MEMORY[0x277D423E0];
        v683 = *MEMORY[0x277D423F0];
        v346 = (v342 + 48);
        OUTLINED_FUNCTION_254(*MEMORY[0x277D423F8]);
        do
        {
          v347 = *(v346 - 1);
          if (*v346)
          {
            v348 = OUTLINED_FUNCTION_61_4();
            v349(v348);
          }

          else
          {
            v350 = *(v14 + 584);
            v351 = *(v14 + 576);
            v352 = *(v346 - 2);
            v353 = OUTLINED_FUNCTION_65_3();
            sub_231D1E298(v353, 1, v351);
            OUTLINED_FUNCTION_141_1();
            if (v125)
            {
              sub_231CC154C(*(v14 + 576), &qword_27DD74BE0, &qword_231E1CC20);
              v333 = [v333 uniqueIdentifier];
              sub_231E11620();
              OUTLINED_FUNCTION_102_1();
              v354 = OUTLINED_FUNCTION_54_0();
              sub_231D42B30(v354, v355, 0);

              v359 = OUTLINED_FUNCTION_60_4();
            }

            else
            {
              v356 = OUTLINED_FUNCTION_68_4();
              v347(v356);
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74C60, &qword_231E1C680);
              v357 = OUTLINED_FUNCTION_178_0();
              v347(v357);
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74C68, &qword_231E1C688);
              OUTLINED_FUNCTION_6_0();
              (*(v358 + 104))(v351 + v350, v684);
              v359 = OUTLINED_FUNCTION_81_3();
              v361 = v683;
            }

            v360(v359, v361, v694);
          }

          OUTLINED_FUNCTION_176_0();
          if (v158)
          {
            v365 = OUTLINED_FUNCTION_2_12(v362);
            OUTLINED_FUNCTION_282(v365);
          }

          v363 = OUTLINED_FUNCTION_46_4();
          v364(v363);
          v346 += 24;
          --v340;
        }

        while (v340);
      }

      OUTLINED_FUNCTION_14_7();
      OUTLINED_FUNCTION_155_2();
      sub_231D42F54(v418, v419, v420, v421);
      OUTLINED_FUNCTION_155_2();
      sub_231D42F54(v422, v423, v424, v425);
      v426 = OUTLINED_FUNCTION_139_0();
      v434 = OUTLINED_FUNCTION_118_3(v426, v427, v428, v429, v430, v431, v432, v433, v535, v538, v541, v544, v547, v550, v553, v556, v559, v562, v565, v568, v571, v574, v577, v580, v583, v586, v589, v592, v595, v598, v601, v604, v607, v610, v613, v616, v619, v622, v625, v628, v631, v634, v637, v640, v643, v646, v649);
      v435(v434);
      OUTLINED_FUNCTION_15_10();
      v438 = sub_231D42B40(v436, v437, MEMORY[0x277D42420]);
      v446 = OUTLINED_FUNCTION_37_6(v438, v439, v440, v441, v442, v443, v444, v445, v536, v539, v542, v545, v548, v551, v554, v557, v560, v563, v566, v569, v572, v575, v578, v581, v584, v587, v590, v593, v596, v599, v602, v605, v608, v611, v614, v617, v620, v623, v626, v629, v632, v635, v638, v641, v644, v647, v650, v652, v654, v656, v658, v660, v662, v664, v666, v668, v670, v672, v674, v675, v676, v677);
      v454 = OUTLINED_FUNCTION_54_5(v446, v447, v448, v449, v450, v451, v452, v453, v537, v540, v543, v546, v549, v552, v555, v558, v561, v564, v567, v570, v573, v576, v579, v582, v585, v588, v591, v594, v597, v600, v603, v606, v609, v612, v615, v618, v621, v624, v627, v630, v633, v636, v639, v642, v645, v648, v651, v653, v655, v657, v659, v661, v663, v665, v667, v669, v671, v673);
      v455(v454);
      v456 = OUTLINED_FUNCTION_162();
      v457(v456);
      sub_231E10D00();

      v458 = OUTLINED_FUNCTION_59_0();
      v459(v458);
      OUTLINED_FUNCTION_134_1();
      sub_231CC154C(v460, v461, v462);
      OUTLINED_FUNCTION_134_1();
      sub_231CC154C(v463, v464, v465);
      OUTLINED_FUNCTION_134_1();
      sub_231CC154C(v466, v467, v468);
      v469 = OUTLINED_FUNCTION_36_5();
      (v692)(v469);
      v470 = OUTLINED_FUNCTION_43_8();
      v471(v470);
      v472 = OUTLINED_FUNCTION_8_10();
      v473(v472);
      sub_231E0FE10();
      OUTLINED_FUNCTION_6_0();
      v474 = OUTLINED_FUNCTION_48();
      v475(v474);
      sub_231E0FDE0();
      OUTLINED_FUNCTION_6_0();
      v120 = OUTLINED_FUNCTION_48();
    }

    else
    {
      OUTLINED_FUNCTION_22_5();

      sub_231D3EA58(v180, &off_278947000);

      OUTLINED_FUNCTION_69_3();
      sub_231CC154C(v375, v376, v377);
      OUTLINED_FUNCTION_69_3();
      sub_231CC154C(v378, v379, v380);
      OUTLINED_FUNCTION_69_3();
      sub_231CC154C(v381, v382, v383);
      v384 = OUTLINED_FUNCTION_59_5();
      v686(v384);
      v385 = OUTLINED_FUNCTION_32_5();
      v690(v385);
      v386 = OUTLINED_FUNCTION_119_1();
      v387(v386);
      v120 = OUTLINED_FUNCTION_243();
    }

    goto LABEL_18;
  }

  OUTLINED_FUNCTION_21_5();
  OUTLINED_FUNCTION_189();
  v284();
  v285 = OUTLINED_FUNCTION_48();
  v286(v285);
  v287 = v692[2];
  if (v287)
  {
    v288 = *(v14 + 512);
    v289 = OUTLINED_FUNCTION_26_5();
    OUTLINED_FUNCTION_279(v289);
    OUTLINED_FUNCTION_256();
    v682 = *MEMORY[0x277D423E0];
    v681 = *MEMORY[0x277D423F0];
    v290 = (v288 + 104);
    v291 = &off_278947030;
    OUTLINED_FUNCTION_253(*MEMORY[0x277D423F8]);
    do
    {
      v292 = *(v291 - 2);
      if (*v291)
      {
        v293 = OUTLINED_FUNCTION_64_2();
        v294(v293);
      }

      else
      {
        v295 = *(v14 + 472);
        v296 = v292;
        v297 = OUTLINED_FUNCTION_55_3();
        sub_231D164A4(v297, v298, v299);
        OUTLINED_FUNCTION_142_1();
        if (v125)
        {
          sub_231CC154C(*(v14 + 472), &qword_27DD74510, &qword_231E1E2D0);
          v290 = [v290 uniqueIdentifier];
          sub_231E11620();
          OUTLINED_FUNCTION_185();

          v304 = OUTLINED_FUNCTION_63_3();
        }

        else
        {
          v300 = OUTLINED_FUNCTION_70_3();
          (v292)(v300);
          v301 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74C48, &qword_231E1C670) + 48);
          v302 = OUTLINED_FUNCTION_109_2();
          (v292)(v302);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74C50, &qword_231E1C678);
          OUTLINED_FUNCTION_6_0();
          (*(v303 + 104))(v295 + v301, v682);
          v304 = OUTLINED_FUNCTION_89_2();
          v306 = v681;
        }

        v305(v304, v306, v694);
      }

      OUTLINED_FUNCTION_188();
      if (v158)
      {
        v310 = OUTLINED_FUNCTION_2_12(v307);
        OUTLINED_FUNCTION_221(v310);
        v290 = v207;
        v207 = v695;
      }

      v308 = OUTLINED_FUNCTION_47_5();
      v309(v308);
      v291 += 24;
      --v287;
    }

    while (v287);
  }

  else
  {

    v207 = MEMORY[0x277D84F90];
  }

  *(v14 + 416) = v207;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74C30, &qword_231E1C650);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74C38, &qword_231E1C658);
  OUTLINED_FUNCTION_151_1();
  v388 = swift_task_alloc();
  OUTLINED_FUNCTION_190(v388);
  swift_task_alloc();
  OUTLINED_FUNCTION_58_0();
  *(v14 + 1912) = v389;
  *v389 = v390;
  OUTLINED_FUNCTION_9_9(v389);
  OUTLINED_FUNCTION_45_2();
  OUTLINED_FUNCTION_44();

  return MEMORY[0x282200600](v391, v392, v393, v394, v395, v396, v397, v398, a9, a10, a11, a12);
}