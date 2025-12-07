uint64_t sub_26A711404(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  swift_getKeyPath();
  sub_26A8509A8();
}

uint64_t sub_26A7114C8(uint64_t a1, char *a2, uint64_t a3)
{
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AF688, &qword_26A87B530);
  sub_26A84F4F8();
  sub_26A84FE08();
  sub_26A5C9C88(&qword_2803AF680, &qword_2803AF688, &qword_26A87B530);
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_26A8509A8();
}

uint64_t sub_26A711614(void (*a1)(void), uint64_t a2)
{
  a1();
  sub_26A84F998();
  return v3;
}

uint64_t sub_26A7116C4(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AF688, &qword_26A87B530);
  sub_26A84F4F8();
  sub_26A84FE08();
  sub_26A84F4F8();
  sub_26A84FE08();
  sub_26A5C9C88(&qword_2803AF680, &qword_2803AF688, &qword_26A87B530);
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_26A8509A8();
}

uint64_t sub_26A71186C()
{
  sub_26A7118F0();
  sub_26A84F998();
  return v1;
}

unint64_t sub_26A7118F0()
{
  result = qword_2803B5868;
  if (!qword_2803B5868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B5868);
  }

  return result;
}

unint64_t sub_26A711944()
{
  result = qword_2803B5870;
  if (!qword_2803B5870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B5870);
  }

  return result;
}

unint64_t sub_26A711998()
{
  result = qword_2803B5878;
  if (!qword_2803B5878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B5878);
  }

  return result;
}

uint64_t sub_26A711A10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_26A711A74();

  return MEMORY[0x282130D40](a1, a2, a3, a4, v8);
}

unint64_t sub_26A711A74()
{
  result = qword_2803B5880;
  if (!qword_2803B5880)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B5888, &qword_26A87B6E8);
    sub_26A711AF8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B5880);
  }

  return result;
}

unint64_t sub_26A711AF8()
{
  result = qword_2803B5890;
  if (!qword_2803B5890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B5890);
  }

  return result;
}

unint64_t sub_26A711B4C()
{
  result = qword_2803AFAE0;
  if (!qword_2803AFAE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AFAE8, &qword_26A8676A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803AFAE0);
  }

  return result;
}

uint64_t IntentsUISlot.init(_:fallback:)@<X0>(uint64_t a1@<X0>, void (*a2)(void *__return_ptr)@<X1>, void *a3@<X8>)
{
  *a3 = a1;
  a2(v6);
  v4 = v7;
  __swift_project_boxed_opaque_existential_1(v6, v7);
  a3[1] = View.eraseToAnyView()(v4);
  return __swift_destroy_boxed_opaque_existential_1(v6);
}

uint64_t static IntentsUISlotBuilder.buildExpression(_:)(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B5898, &qword_26A87B6F0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_26A8570D0;
  *(v3 + 32) = v1;
  *(v3 + 40) = v2;

  return v3;
}

void static IntentsUISlotBuilder.buildBlock(_:)(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = (a1 + 32);
  v3 = MEMORY[0x277D84F90];
  if (v1)
  {
    while (1)
    {
      v4 = *v2;
      v5 = *(*v2 + 16);
      v6 = *(v3 + 16);
      if (__OFADD__(v6, v5))
      {
        break;
      }

      if (!swift_isUniquelyReferenced_nonNull_native() || v6 + v5 > *(v3 + 24) >> 1)
      {
        sub_26A7A24AC();
        v3 = v7;
      }

      if (*(v4 + 16))
      {
        if ((*(v3 + 24) >> 1) - *(v3 + 16) < v5)
        {
          goto LABEL_16;
        }

        swift_arrayInitWithCopy();

        if (v5)
        {
          v8 = *(v3 + 16);
          v9 = __OFADD__(v8, v5);
          v10 = v8 + v5;
          if (v9)
          {
            goto LABEL_17;
          }

          *(v3 + 16) = v10;
        }
      }

      else
      {

        if (v5)
        {
          goto LABEL_15;
        }
      }

      ++v2;
      if (!--v1)
      {
        return;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
  }
}

BOOL IntentsUISlot.isWildCardSlot.getter()
{
  v1 = *v0;
  if (!*(*v0 + 16))
  {
    return 1;
  }

  v3 = *(v1 + 32);
  v2 = *(v1 + 40);
  v4 = v3 & 0xFFFFFFFFFFFFLL;
  if ((v2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(v2) & 0xF;
  }

  else
  {
    v5 = v4;
  }

  return v5 == 0;
}

uint64_t static IntentsUISlotBuilder.buildOptional(_:)(uint64_t a1)
{
  if (a1)
  {
    v1 = a1;
  }

  else
  {
    v1 = MEMORY[0x277D84F90];
  }

  return v1;
}

_BYTE *storeEnumTagSinglePayload for IntentsUISlotBuilder(_BYTE *result, int a2, int a3)
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

id sub_26A711F3C@<X0>(char *a1@<X8>)
{
  v2 = v1;
  v4 = [v1 number];
  if (v4)
  {
    v5 = v4;
    RFTextProperty.asPartialText()(v159);
    v6 = [v1 unit];
    if (v6)
    {
      v7 = v6;
      *(&v157 + 1) = &type metadata for PartialText;
      v158 = &protocol witness table for PartialText;
      OUTLINED_FUNCTION_1_9();
      v156[0] = swift_allocObject();
      RFTextProperty.asPartialText()(v156[0] + 16);
    }

    else
    {
      v158 = 0;
      v157 = 0u;
      *v156 = 0u;
    }

    v10 = sub_26A54AB40(v2, &selRef_text_2);
    if (v10)
    {
      v11 = v10;
      *(&v154 + 1) = &type metadata for PartialText;
      v155 = &protocol witness table for PartialText;
      OUTLINED_FUNCTION_1_9();
      v153[0] = swift_allocObject();
      sub_26A735084(v11, v153[0] + 16);
    }

    else
    {
      v155 = 0;
      v154 = 0u;
      *v153 = 0u;
    }

    v12 = sub_26A54AB40(v2, &selRef_text_3);
    if (v12)
    {
      v13 = v12;
      *(&v151 + 1) = &type metadata for PartialText;
      v152 = &protocol witness table for PartialText;
      OUTLINED_FUNCTION_1_9();
      v150[0] = swift_allocObject();
      sub_26A735084(v13, v150[0] + 16);
    }

    else
    {
      v152 = 0;
      v151 = 0u;
      *v150 = 0u;
    }

    v14 = [v2 text_4];
    if (v14)
    {
      v15 = v14;
      *(&v148 + 1) = &type metadata for PartialText;
      v149 = &protocol witness table for PartialText;
      OUTLINED_FUNCTION_1_9();
      v147[0] = swift_allocObject();
      RFTextProperty.asPartialText()(v147[0] + 16);
    }

    else
    {
      v149 = 0;
      v148 = 0u;
      *v147 = 0u;
    }

    v16 = [v2 text_5];
    if (v16)
    {
      v17 = v16;
      *(&v145 + 1) = &type metadata for PartialText;
      v146 = &protocol witness table for PartialText;
      OUTLINED_FUNCTION_1_9();
      v144[0] = swift_allocObject();
      RFTextProperty.asPartialText()(v144[0] + 16);
    }

    else
    {
      v146 = 0;
      v145 = 0u;
      *v144 = 0u;
    }

    if (qword_2803A8A80 != -1)
    {
      swift_once();
    }

    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB6F0, &qword_26A86A0B0);
    v19 = __swift_project_value_buffer(v18, qword_2803D1A70);
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB6F8, &qword_26A858D30);
    v21 = &a1[*(v20 + 32)];
    sub_26A4EA070(v19, v21, &qword_2803AB6F0, &qword_26A86A0B0);
    sub_26A6AEE74(__src);
    memcpy(a1, __src, 0xBFuLL);
    sub_26A60E54C(&v21[*(v18 + 36)], &a1[*(v20 + 28)]);
    v22 = type metadata accessor for FactItemHeroNumberView(0);
    v23 = &a1[v22[5]];
    if (qword_28157E660 != -1)
    {
      swift_once();
    }

    *v134 = xmmword_281588758;
    v135 = unk_281588768;
    *v136 = xmmword_281588778;
    v137 = xmmword_281588788;
    *v138 = xmmword_281588758;
    v139 = unk_281588768;
    *v140 = xmmword_281588778;
    v141 = xmmword_281588788;
    *v96 = xmmword_281588788;
    v99 = xmmword_281588778;
    sub_26A4EA070(v134, __dst, &qword_2803A91B0, &unk_26A854CA0);
    sub_26A6AEE74(v142);
    memcpy(v23, v142, 0xC0uLL);
    *(v23 + 12) = v99;
    *(v23 + 13) = *v96;
    v24 = v139;
    *(v23 + 14) = *v138;
    *(v23 + 15) = v24;
    v25 = v141;
    *(v23 + 16) = *v140;
    *(v23 + 17) = v25;
    v26 = &a1[v22[6]];
    *v26 = swift_getKeyPath();
    v26[8] = 0;
    v27 = v22[7];
    *&a1[v27] = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A9190, &unk_26A854C50);
    swift_storeEnumTagMultiPayload();
    v28 = v22[8];
    *&a1[v28] = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91A8, &qword_26A857040);
    swift_storeEnumTagMultiPayload();
    v29 = memcpy(__dst, v159, 0xFAuLL);
    OUTLINED_FUNCTION_2_76(v29, v30, v31, v32, v33, v34, v35, v36, v96[0], v96[1], v99, *(&v99 + 1), v102[0], v102[1], v102[2], v103, v104, v105, v106, v107, v108, v109, v110, v111, v112, v113, v114, v115, v116, v117, v118, v119, v120, v121, v122, v123, v124, v125, v126, v127, v128, v129, v130, v131, v132[0]);
    sub_26A4EC458(__dst, v102);
    sub_26A4EC4B4();
    *&a1[v22[9]] = sub_26A851248();
    sub_26A4EA070(v156, v132, &qword_2803A91B8, &qword_26A8575C0);
    if (v133)
    {
      __swift_project_boxed_opaque_existential_1(v132, v133);
      v37 = OUTLINED_FUNCTION_16_5();
      v39 = v38(v37);
      OUTLINED_FUNCTION_3_69(v39, v40, v41, v42, v43, v44, v45, v46, v97, v98, v100, v101, v102[0], v102[1], v102[2], v103, v104, v105, v106, v107, v108, v109, v110, v111, v112, v113, v114, v115, v116, v117, v118, v119, v120, v121, v122, v123, v124, v125, v126, v127, v128, v129, v130, v131);
    }

    else
    {
      sub_26A537648(v132);
      v28 = 0;
    }

    *&a1[v22[10]] = v28;
    sub_26A4EA070(v153, v132, &qword_2803A91B8, &qword_26A8575C0);
    if (v133)
    {
      __swift_project_boxed_opaque_existential_1(v132, v133);
      v47 = OUTLINED_FUNCTION_16_5();
      v49 = v48(v47);
      OUTLINED_FUNCTION_3_69(v49, v50, v51, v52, v53, v54, v55, v56, v97, v98, v100, v101, v102[0], v102[1], v102[2], v103, v104, v105, v106, v107, v108, v109, v110, v111, v112, v113, v114, v115, v116, v117, v118, v119, v120, v121, v122, v123, v124, v125, v126, v127, v128, v129, v130, v131);
    }

    else
    {
      sub_26A537648(v132);
      v28 = 0;
    }

    *&a1[v22[11]] = v28;
    sub_26A4EA070(v150, v132, &qword_2803A91B8, &qword_26A8575C0);
    if (v133)
    {
      __swift_project_boxed_opaque_existential_1(v132, v133);
      v57 = OUTLINED_FUNCTION_16_5();
      v59 = v58(v57);
      OUTLINED_FUNCTION_3_69(v59, v60, v61, v62, v63, v64, v65, v66, v97, v98, v100, v101, v102[0], v102[1], v102[2], v103, v104, v105, v106, v107, v108, v109, v110, v111, v112, v113, v114, v115, v116, v117, v118, v119, v120, v121, v122, v123, v124, v125, v126, v127, v128, v129, v130, v131);
    }

    else
    {
      sub_26A537648(v132);
      v28 = 0;
    }

    *&a1[v22[12]] = v28;
    sub_26A4EA070(v147, v132, &qword_2803A91B8, &qword_26A8575C0);
    if (v133)
    {
      __swift_project_boxed_opaque_existential_1(v132, v133);
      v67 = OUTLINED_FUNCTION_16_5();
      v69 = v68(v67);
      OUTLINED_FUNCTION_3_69(v69, v70, v71, v72, v73, v74, v75, v76, v97, v98, v100, v101, v102[0], v102[1], v102[2], v103, v104, v105, v106, v107, v108, v109, v110, v111, v112, v113, v114, v115, v116, v117, v118, v119, v120, v121, v122, v123, v124, v125, v126, v127, v128, v129, v130, v131);
    }

    else
    {
      sub_26A537648(v132);
      v28 = 0;
    }

    *&a1[v22[13]] = v28;
    v77 = sub_26A4EA070(v144, v102, &qword_2803A91B8, &qword_26A8575C0);
    if (v103)
    {
      __swift_project_boxed_opaque_existential_1(v102, v103);
      v85 = OUTLINED_FUNCTION_16_5();
      v87 = v86(v85);

      OUTLINED_FUNCTION_2_76(v88, v89, v90, v91, v92, v93, v94, v95, v97, v98, v100, v101, v102[0], v102[1], v102[2], v103, v104, v105, v106, v107, v108, v109, v110, v111, v112, v113, v114, v115, v116, v117, v118, v119, v120, v121, v122, v123, v124, v125, v126, v127, v128, v129, v130, v131, v132[0]);
      sub_26A4EC508(v132);
      sub_26A537648(v144);
      sub_26A537648(v147);
      sub_26A537648(v150);
      sub_26A537648(v153);
      sub_26A537648(v156);
      result = __swift_destroy_boxed_opaque_existential_1(v102);
    }

    else
    {
      OUTLINED_FUNCTION_2_76(v77, v78, v79, v80, v81, v82, v83, v84, v97, v98, v100, v101, v102[0], v102[1], v102[2], 0, v104, v105, v106, v107, v108, v109, v110, v111, v112, v113, v114, v115, v116, v117, v118, v119, v120, v121, v122, v123, v124, v125, v126, v127, v128, v129, v130, v131, v132[0]);
      sub_26A4EC508(v132);

      sub_26A537648(v144);
      sub_26A537648(v147);
      sub_26A537648(v150);
      sub_26A537648(v153);
      sub_26A537648(v156);
      result = sub_26A537648(v102);
      v87 = 0;
    }

    *&a1[v22[14]] = v87;
  }

  else
  {
    sub_26A4E353C();
    swift_allocError();
    *v8 = v1;
    *(v8 + 8) = &unk_287B137F8;
    *(v8 + 16) = 0;
    swift_willThrow();
    return v1;
  }

  return result;
}

unint64_t sub_26A7126B0()
{
  result = qword_2803B0C20;
  if (!qword_2803B0C20)
  {
    type metadata accessor for FactItemHeroNumberView(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B0C20);
  }

  return result;
}

void *OUTLINED_FUNCTION_2_76(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t __dst)
{

  return memcpy(&__dst, &STACK[0x548], 0xFAuLL);
}

uint64_t OUTLINED_FUNCTION_3_69(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, ...)
{
  va_start(va, a44);

  return __swift_destroy_boxed_opaque_existential_1(va);
}

uint64_t PrimaryHeaderRichView.init(text1:text2:text3:text4:thumbnail:addTint:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X8>)
{
  v11 = type metadata accessor for PrimaryHeaderRichView(0);
  OUTLINED_FUNCTION_46();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_41();
  v15 = (v14 - v13);
  if (qword_28157E660 != -1)
  {
    OUTLINED_FUNCTION_3(&qword_28157E660);
  }

  v43[0] = xmmword_281588758;
  v43[1] = unk_281588768;
  v43[2] = xmmword_281588778;
  v43[3] = xmmword_281588788;
  v44 = xmmword_281588758;
  v45 = unk_281588768;
  v46 = xmmword_281588778;
  v47 = xmmword_281588788;
  v38 = xmmword_281588778;
  v36 = xmmword_281588788;
  sub_26A4DBD68(v43, v48, &qword_2803A91B0, &unk_26A854CA0);
  sub_26A6AEE74(v48);
  memcpy(v15, v48, 0xC0uLL);
  v15[12] = v38;
  v15[13] = v36;
  v16 = v45;
  v15[14] = v44;
  v15[15] = v16;
  v17 = v47;
  v15[16] = v46;
  v15[17] = v17;
  v18 = v11[5];
  *(v15 + v18) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A9190, &unk_26A854C50);
  swift_storeEnumTagMultiPayload();
  v19 = v15 + v11[6];
  *v19 = swift_getKeyPath();
  v19[8] = 0;
  v20 = v11[7];
  *(v15 + v20) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91A8, &qword_26A857040);
  swift_storeEnumTagMultiPayload();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v21 = OUTLINED_FUNCTION_0_77();
  *(v15 + v11[8]) = v22(v21);
  sub_26A4DBD68(a2, v41, &qword_2803A91B8, &qword_26A8575C0);
  if (v42)
  {
    __swift_project_boxed_opaque_existential_1(v41, v42);
    v23 = OUTLINED_FUNCTION_0_77();
    v25 = v24(v23);
    __swift_destroy_boxed_opaque_existential_1(v41);
  }

  else
  {
    sub_26A4DBD10(v41, &qword_2803A91B8, &qword_26A8575C0);
    v25 = 0;
  }

  *(v15 + v11[9]) = v25;
  sub_26A4DBD68(a3, v41, &qword_2803A91B8, &qword_26A8575C0);
  if (v42)
  {
    __swift_project_boxed_opaque_existential_1(v41, v42);
    v26 = OUTLINED_FUNCTION_0_77();
    v28 = v27(v26);
    __swift_destroy_boxed_opaque_existential_1(v41);
  }

  else
  {
    sub_26A4DBD10(v41, &qword_2803A91B8, &qword_26A8575C0);
    v28 = 0;
  }

  *(v15 + v11[10]) = v28;
  sub_26A4DBD68(a4, v41, &qword_2803A91B8, &qword_26A8575C0);
  if (v42)
  {
    __swift_project_boxed_opaque_existential_1(v41, v42);
    v29 = OUTLINED_FUNCTION_0_77();
    v31 = v30(v29);
    __swift_destroy_boxed_opaque_existential_1(v41);
  }

  else
  {
    sub_26A4DBD10(v41, &qword_2803A91B8, &qword_26A8575C0);
    v31 = 0;
  }

  *(v15 + v11[11]) = v31;
  sub_26A4DBD68(a5, v41, &qword_2803A91B8, &qword_26A8575C0);
  if (v42)
  {
    __swift_project_boxed_opaque_existential_1(v41, v42);
    v32 = OUTLINED_FUNCTION_0_77();
    v34 = v33(v32);
    OUTLINED_FUNCTION_18_25(a5);
    OUTLINED_FUNCTION_18_25(a4);
    OUTLINED_FUNCTION_18_25(a3);
    OUTLINED_FUNCTION_18_25(a2);
    __swift_destroy_boxed_opaque_existential_1(v41);
  }

  else
  {
    OUTLINED_FUNCTION_13_34(a5);
    OUTLINED_FUNCTION_13_34(a4);
    OUTLINED_FUNCTION_13_34(a3);
    OUTLINED_FUNCTION_13_34(a2);
    OUTLINED_FUNCTION_13_34(v41);
    v34 = 0;
  }

  *(v15 + v11[12]) = v34;
  *(v15 + v11[13]) = a6 & 1;
  sub_26A712BD8(v15, a7);
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t type metadata accessor for PrimaryHeaderRichView(uint64_t a1)
{
  result = qword_2803B58C0;
  if (!qword_2803B58C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_26A712BD8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PrimaryHeaderRichView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_26A712C3C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_26A84F988();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A9190, &unk_26A854C50);
  MEMORY[0x28223BE20](v7);
  v9 = &v13 - v8;
  v10 = type metadata accessor for PrimaryHeaderRichView(0);
  sub_26A4DBD68(v1 + *(v10 + 20), v9, &unk_2803A9190, &unk_26A854C50);
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

uint64_t sub_26A712E24()
{
  v1 = sub_26A84F988();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = v0 + *(type metadata accessor for PrimaryHeaderRichView(0) + 24);
  v6 = *v5;
  if ((*(v5 + 8) & 1) == 0)
  {

    sub_26A851EA8();
    v7 = sub_26A8501F8();
    sub_26A84EA78();

    sub_26A84F978();
    swift_getAtKeyPath();
    sub_26A4D82E8(v6, 0);
    (*(v2 + 8))(v4, v1);
    return v9[1];
  }

  return v6;
}

uint64_t sub_26A712F78@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_26A84F988();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91A8, &qword_26A857040);
  MEMORY[0x28223BE20](v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for PrimaryHeaderRichView(0);
  sub_26A4DBD68(v1 + *(v10 + 28), v9, &qword_2803A91A8, &qword_26A857040);
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

uint64_t PrimaryHeaderRichView.init(text1:text2:text3:text4:thumbnail:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v11 = type metadata accessor for PrimaryHeaderRichView(0);
  OUTLINED_FUNCTION_46();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_41();
  v15 = (v14 - v13);
  v38 = a1;
  sub_26A50429C(a1, v46);
  OUTLINED_FUNCTION_5_17(a2, v45);
  OUTLINED_FUNCTION_5_17(a3, v44);
  OUTLINED_FUNCTION_5_17(a4, v43);
  OUTLINED_FUNCTION_5_17(a5, v42);
  if (qword_28157E660 != -1)
  {
    OUTLINED_FUNCTION_3(&qword_28157E660);
  }

  v47[0] = xmmword_281588758;
  v47[1] = unk_281588768;
  v47[2] = xmmword_281588778;
  v47[3] = xmmword_281588788;
  v48 = xmmword_281588758;
  v49 = unk_281588768;
  v50 = xmmword_281588778;
  v51 = xmmword_281588788;
  v36 = xmmword_281588788;
  v37 = xmmword_281588778;
  sub_26A4DBD68(v47, v52, &qword_2803A91B0, &unk_26A854CA0);
  sub_26A6AEE74(v52);
  memcpy(v15, v52, 0xC0uLL);
  v15[12] = v37;
  v15[13] = v36;
  v16 = v49;
  v15[14] = v48;
  v15[15] = v16;
  v17 = v51;
  v15[16] = v50;
  v15[17] = v17;
  v18 = v11[5];
  *(v15 + v18) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A9190, &unk_26A854C50);
  swift_storeEnumTagMultiPayload();
  v19 = v15 + v11[6];
  *v19 = swift_getKeyPath();
  v19[8] = 0;
  v20 = v11[7];
  *(v15 + v20) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91A8, &qword_26A857040);
  swift_storeEnumTagMultiPayload();
  __swift_project_boxed_opaque_existential_1(v46, v46[3]);
  v21 = OUTLINED_FUNCTION_1_80();
  *(v15 + v11[8]) = v22(v21);
  sub_26A4DBD68(v45, v40, &qword_2803A91B8, &qword_26A8575C0);
  if (v41)
  {
    __swift_project_boxed_opaque_existential_1(v40, v41);
    v23 = OUTLINED_FUNCTION_1_80();
    v25 = v24(v23);
    __swift_destroy_boxed_opaque_existential_1(v40);
  }

  else
  {
    sub_26A4DBD10(v40, &qword_2803A91B8, &qword_26A8575C0);
    v25 = 0;
  }

  *(v15 + v11[9]) = v25;
  sub_26A4DBD68(v44, v40, &qword_2803A91B8, &qword_26A8575C0);
  if (v41)
  {
    __swift_project_boxed_opaque_existential_1(v40, v41);
    v26 = OUTLINED_FUNCTION_1_80();
    v28 = v27(v26);
    __swift_destroy_boxed_opaque_existential_1(v40);
  }

  else
  {
    sub_26A4DBD10(v40, &qword_2803A91B8, &qword_26A8575C0);
    v28 = 0;
  }

  *(v15 + v11[10]) = v28;
  sub_26A4DBD68(v43, v40, &qword_2803A91B8, &qword_26A8575C0);
  if (v41)
  {
    __swift_project_boxed_opaque_existential_1(v40, v41);
    v29 = OUTLINED_FUNCTION_1_80();
    v31 = v30(v29);
    __swift_destroy_boxed_opaque_existential_1(v40);
  }

  else
  {
    sub_26A4DBD10(v40, &qword_2803A91B8, &qword_26A8575C0);
    v31 = 0;
  }

  *(v15 + v11[11]) = v31;
  sub_26A4DBD68(v42, v40, &qword_2803A91B8, &qword_26A8575C0);
  if (v41)
  {
    __swift_project_boxed_opaque_existential_1(v40, v41);
    v32 = OUTLINED_FUNCTION_1_80();
    v34 = v33(v32);
    OUTLINED_FUNCTION_36_3(a5);
    OUTLINED_FUNCTION_36_3(a4);
    OUTLINED_FUNCTION_36_3(a3);
    OUTLINED_FUNCTION_36_3(a2);
    __swift_destroy_boxed_opaque_existential_1(v38);
    OUTLINED_FUNCTION_36_3(v42);
    OUTLINED_FUNCTION_36_3(v43);
    OUTLINED_FUNCTION_36_3(v44);
    OUTLINED_FUNCTION_36_3(v45);
    __swift_destroy_boxed_opaque_existential_1(v40);
  }

  else
  {
    OUTLINED_FUNCTION_9_0(a5);
    OUTLINED_FUNCTION_9_0(a4);
    OUTLINED_FUNCTION_9_0(a3);
    OUTLINED_FUNCTION_9_0(a2);
    __swift_destroy_boxed_opaque_existential_1(v38);
    OUTLINED_FUNCTION_9_0(v42);
    OUTLINED_FUNCTION_9_0(v43);
    OUTLINED_FUNCTION_9_0(v44);
    OUTLINED_FUNCTION_9_0(v45);
    OUTLINED_FUNCTION_9_0(v40);
    v34 = 0;
  }

  *(v15 + v11[12]) = v34;
  *(v15 + v11[13]) = 0;
  sub_26A712BD8(v15, a6);
  return __swift_destroy_boxed_opaque_existential_1(v46);
}

uint64_t PrimaryHeaderRichView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91C0, &unk_26A854CB0);
  OUTLINED_FUNCTION_79(v3);
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v4);
  v6 = &v18[-v5];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91C8, &unk_26A856820);
  OUTLINED_FUNCTION_79(v7);
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v8);
  sub_26A712C3C(&v18[-v9]);
  sub_26A7138BC(v20);
  sub_26A712E24();
  sub_26A712F78(v6);
  v10 = sub_26A84F3A8();
  __swift_storeEnumTagSinglePayload(v6, 0, 1, v10);
  v19 = v1;
  sub_26A4CDA68();
  v11 = *(v1 + *(type metadata accessor for PrimaryHeaderRichView(0) + 52));
  *(a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B58A0, &qword_26A87B8D0) + 36)) = v11;
  v12 = swift_allocObject();
  *(v12 + 16) = sub_26A68CCD4;
  *(v12 + 24) = 0;
  v13 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B58A8, &unk_26A87B8D8) + 36);
  *(v13 + 16) = swift_getKeyPath();
  *(v13 + 24) = 0;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91D8, &qword_26A8575D0);
  v15 = *(v14 + 40);
  *(v13 + v15) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A9190, &unk_26A854C50);
  swift_storeEnumTagMultiPayload();
  v16 = v13 + *(v14 + 44);
  *v16 = swift_getKeyPath();
  *(v16 + 8) = 0;
  *v13 = sub_26A4D1F7C;
  *(v13 + 8) = v12;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B58B0, &qword_26A87B910);
  *(a1 + *(result + 36)) = 20;
  return result;
}

uint64_t sub_26A7138BC@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_26A712E24();
  result = sub_26A61B05C(v3, &unk_287B13090);
  v5 = 0uLL;
  if ((result & 1) == 0)
  {
    goto LABEL_6;
  }

  if (qword_2803A8BF0 != -1)
  {
    result = swift_once();
    v5 = 0uLL;
  }

  if (byte_2803B0440 == 1)
  {
    v6 = 0;
    __asm { FMOV            V0.2D, #10.0 }

    v5 = vaddq_f64(v1[12], _Q0);
    v12 = vaddq_f64(v1[13], xmmword_26A860600);
  }

  else
  {
LABEL_6:
    v6 = 1;
    v12 = 0uLL;
  }

  *a1 = v5;
  *(a1 + 16) = v12;
  *(a1 + 32) = v6;
  return result;
}

void *sub_26A713968@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for PrimaryHeaderRichView(0);
  v5 = *(a1 + v4[8]);
  v6 = *(a1 + v4[9]);
  v7 = *(a1 + v4[10]);
  v8 = *(a1 + v4[11]);
  v9 = *(a1 + v4[12]);
  *a2 = swift_getKeyPath();
  *(a2 + 8) = 0;
  *(a2 + 16) = swift_getKeyPath();
  *(a2 + 24) = 0;
  v10 = qword_2803A8A90;

  if (v10 != -1)
  {
    swift_once();
  }

  sub_26A4DBD68(qword_2803AD3E0, a2 + 584, &qword_2803AF838, &qword_26A8657C8);
  sub_26A6AEE74(__src);
  memcpy((a2 + 32), __src, 0xBFuLL);
  sub_26A5D1AF8(a2 + 616, a2 + 224);
  v11 = type metadata accessor for PrimaryHeaderStandardLayout(0);
  v12 = v11[7];
  *(a2 + v12) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91A8, &qword_26A857040);
  swift_storeEnumTagMultiPayload();
  v13 = a2 + v11[8];
  result = sub_26A851048();
  *v13 = v19;
  *(v13 + 8) = v20;
  v15 = v11[11];
  v16 = v11[12];
  v17 = v11[13];
  v18 = v11[10];
  *(a2 + v11[9]) = v5;
  *(a2 + v18) = v6;
  *(a2 + v15) = v7;
  *(a2 + v16) = v8;
  *(a2 + v17) = v9;
  return result;
}

uint64_t sub_26A713B5C(uint64_t a1)
{
  result = sub_26A7149C8(&qword_2803B58B8, MEMORY[0x277D632C0], MEMORY[0x277D632B8]);
  *(a1 + 8) = result;
  return result;
}

void sub_26A713BDC(uint64_t a1)
{
  sub_26A4DB840(319, &qword_2803A9238, MEMORY[0x277CDF310], type metadata accessor for EnvironmentConstant);
  if (v1 <= 0x3F)
  {
    sub_26A4D27F4(319);
    if (v2 <= 0x3F)
    {
      sub_26A4E5DC4(319, &qword_2803A9218, type metadata accessor for VRXIdiom);
      if (v3 <= 0x3F)
      {
        sub_26A4E5DC4(319, &qword_2803A9230, MEMORY[0x277CDFA28]);
        if (v4 <= 0x3F)
        {
          sub_26A4DB840(319, &qword_2803A9240, MEMORY[0x277CE11C8], MEMORY[0x277D83D88]);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

unint64_t sub_26A713D3C()
{
  result = qword_2803B58D0;
  if (!qword_2803B58D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B58B0, &qword_26A87B910);
    sub_26A713DC8();
    sub_26A4DBA00();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B58D0);
  }

  return result;
}

unint64_t sub_26A713DC8()
{
  result = qword_2803B58D8;
  if (!qword_2803B58D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B58A8, &unk_26A87B8D8);
    sub_26A713E80();
    sub_26A4DBCC8(qword_28157DD90, &qword_2803A91D8, &qword_26A8575D0, &unk_26A869CC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B58D8);
  }

  return result;
}

unint64_t sub_26A713E80()
{
  result = qword_2803B58E0;
  if (!qword_2803B58E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B58A0, &qword_26A87B8D0);
    sub_26A4DBCC8(&qword_2803B58E8, &qword_2803A9918, &qword_26A855878, &protocol conformance descriptor for ComponentWithAction<A>);
    sub_26A5D1AA4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B58E0);
  }

  return result;
}

uint64_t sub_26A713F38()
{
  v1 = v0;
  v97 = sub_26A84BAB8();
  OUTLINED_FUNCTION_15();
  v88 = v2;
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_10_0(v5 - v4);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B3800, &unk_26A856760);
  v7 = OUTLINED_FUNCTION_79(v6);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_6_0();
  v96 = v8 - v9;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_10_0(&v86 - v11);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AAD50, &unk_26A857890);
  OUTLINED_FUNCTION_79(v12);
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v13);
  v15 = &v86 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AA838, &unk_26A856770);
  OUTLINED_FUNCTION_79(v16);
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v17);
  v19 = &v86 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AA830, &unk_26A856FA0);
  v21 = OUTLINED_FUNCTION_79(v20);
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_6_0();
  v24 = v22 - v23;
  MEMORY[0x28223BE20](v25);
  v27 = &v86 - v26;
  v28 = sub_26A84B888();
  OUTLINED_FUNCTION_15();
  v30 = v29;
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_41();
  v34 = v33 - v32;
  v35 = type metadata accessor for PrimaryHeaderRichView(0);
  v36 = OUTLINED_FUNCTION_79(v35);
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_10_0(v38 - v37);
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AABD0, &unk_26A87B9E0);
  OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_10_0(&v86 - v40);
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AABD8, &unk_26A856CD0);
  OUTLINED_FUNCTION_46();
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_6_0();
  v92 = v42 - v43;
  MEMORY[0x28223BE20](v44);
  OUTLINED_FUNCTION_10_0(&v86 - v45);
  sub_26A84C398();
  v46 = TextProperty.asAnyView()();
  v47 = *(v30 + 8);
  v47(v34, v28);
  v102[3] = MEMORY[0x277CE11C8];
  v102[4] = &protocol witness table for AnyView;
  v102[0] = v46;
  v48 = v1;
  sub_26A84C3A8();
  v49 = sub_26A84D098();
  if (__swift_getEnumTagSinglePayload(v27, 1, v49) == 1)
  {
    sub_26A4DBD10(v27, &qword_2803AA830, &unk_26A856FA0);
    OUTLINED_FUNCTION_2_0();
    v101[1] = 0;
    v101[2] = 0;
  }

  else
  {
    v48 = v27;
    MultilineTextProperty.asAnyView()();
    OUTLINED_FUNCTION_12_14();
    (*(v52 + 8))(v27, v49);
    v50 = &protocol witness table for AnyView;
    v51 = MEMORY[0x277CE11C8];
  }

  v101[0] = v48;
  v101[3] = v51;
  v101[4] = v50;
  v53 = v1;
  sub_26A84C3B8();
  if (__swift_getEnumTagSinglePayload(v24, 1, v49) == 1)
  {
    sub_26A4DBD10(v24, &qword_2803AA830, &unk_26A856FA0);
    OUTLINED_FUNCTION_2_0();
    v100[1] = 0;
    v100[2] = 0;
  }

  else
  {
    v53 = v24;
    MultilineTextProperty.asAnyView()();
    OUTLINED_FUNCTION_12_14();
    (*(v56 + 8))(v24, v49);
    v54 = &protocol witness table for AnyView;
    v55 = MEMORY[0x277CE11C8];
  }

  v100[0] = v53;
  v100[3] = v55;
  v100[4] = v54;
  v57 = v1;
  sub_26A84C3C8();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v19, 1, v28);
  v59 = v94;
  if (EnumTagSinglePayload == 1)
  {
    sub_26A4DBD10(v19, &qword_2803AA838, &unk_26A856770);
    OUTLINED_FUNCTION_2_0();
    v99[1] = 0;
    v99[2] = 0;
  }

  else
  {
    v57 = TextProperty.asAnyView()();
    v47(v19, v28);
    v60 = &protocol witness table for AnyView;
    v61 = MEMORY[0x277CE11C8];
  }

  v62 = v90;
  v99[0] = v57;
  v99[3] = v61;
  v99[4] = v60;
  v63 = v1;
  sub_26A84C3E8();
  v64 = sub_26A84BD28();
  v65 = __swift_getEnumTagSinglePayload(v15, 1, v64);
  v66 = v97;
  if (v65 == 1)
  {
    sub_26A4DBD10(v15, &qword_2803AAD50, &unk_26A857890);
    OUTLINED_FUNCTION_2_0();
    v98[2] = 0;
    v98[1] = 0;
  }

  else
  {
    v63 = VisualProperty.asAnyView()();
    (*(*(v64 - 8) + 8))(v15, v64);
    v67 = &protocol witness table for AnyView;
    v68 = MEMORY[0x277CE11C8];
  }

  v98[0] = v63;
  v98[3] = v68;
  v98[4] = v67;
  PrimaryHeaderRichView.init(text1:text2:text3:text4:thumbnail:)(v102, v101, v100, v99, v98, v62);
  v69 = v93;
  sub_26A84C3D8();
  v70 = v96;
  sub_26A4DBDB4(v69, v96, &qword_2803B3800, &unk_26A856760);
  if (__swift_getEnumTagSinglePayload(v70, 1, v66) == 1)
  {
    sub_26A4DBD10(v70, &qword_2803B3800, &unk_26A856760);
    swift_getKeyPath();
    OUTLINED_FUNCTION_15_29();
    v72 = (v59 + v71);
    v73 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803B36A0, &qword_26A859400) + 28);
    v74 = type metadata accessor for ActionType(0);
    __swift_storeEnumTagSinglePayload(v72 + v73, 1, 1, v74);
    *v72 = v70;
  }

  else
  {
    v75 = *(v88 + 32);
    v76 = v87;
    v75(v87, v70, v66);
    swift_getKeyPath();
    OUTLINED_FUNCTION_15_29();
    v78 = (v59 + v77);
    v79 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803B36A0, &qword_26A859400) + 28);
    v75(v78 + v79, v76, v66);
    v80 = type metadata accessor for ActionType(0);
    swift_storeEnumTagMultiPayload();
    __swift_storeEnumTagSinglePayload(v78 + v79, 0, 1, v80);
    *v78 = v70;
  }

  sub_26A712BD8(v62, v59);
  v81 = sub_26A84C378();
  v82 = v91;
  sub_26A4DCEBC(v81, v83);

  sub_26A4DBD10(v59, &qword_2803AABD0, &unk_26A87B9E0);
  sub_26A4DBD68(v82, v92, &qword_2803AABD8, &unk_26A856CD0);
  sub_26A71479C();
  v84 = sub_26A851248();
  sub_26A4DBD10(v82, &qword_2803AABD8, &unk_26A856CD0);
  return v84;
}

unint64_t sub_26A71479C()
{
  result = qword_2803B58F0;
  if (!qword_2803B58F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AABD8, &unk_26A856CD0);
    sub_26A714854();
    sub_26A4DBCC8(&qword_28157FB60, &qword_2803A9438, &unk_26A8555B0, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B58F0);
  }

  return result;
}

unint64_t sub_26A714854()
{
  result = qword_2803B58F8;
  if (!qword_2803B58F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AABC8, &unk_26A856CC0);
    sub_26A7148E0();
    sub_26A4D31BC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B58F8);
  }

  return result;
}

unint64_t sub_26A7148E0()
{
  result = qword_2803B5900;
  if (!qword_2803B5900)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AABD0, &unk_26A87B9E0);
    sub_26A7149C8(&qword_2803B3640, type metadata accessor for PrimaryHeaderRichView, &protocol conformance descriptor for PrimaryHeaderRichView);
    sub_26A4DBCC8(&qword_2803AA878, &unk_2803B36A0, &qword_26A859400, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B5900);
  }

  return result;
}

uint64_t sub_26A7149C8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t OUTLINED_FUNCTION_13_34(uint64_t a1)
{

  return sub_26A4DBD10(a1, v1, v2);
}

uint64_t OUTLINED_FUNCTION_18_25(uint64_t a1)
{

  return sub_26A4DBD10(a1, v1, v2);
}

uint64_t sub_26A714A84(uint64_t a1, void *a2)
{
  v37 = a1;
  v3 = sub_26A851608();
  v35 = *(v3 - 8);
  v36 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = sub_26A8513F8();
  v31 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B5920, &qword_26A87BA88);
  v34 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v9 = &v26 - v8;
  v10 = a2[5];
  v27 = a2[4];
  v28 = v10;
  v29 = __swift_project_boxed_opaque_existential_1(a2 + 1, v27);
  v30 = sub_26A84FE68();
  v11 = sub_26A84F4F8();
  v32 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v13 = &v26 - v12;
  type metadata accessor for SnippetGlassMaterial();
  static SnippetGlassMaterial.material(for:)(a2, v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B2900, &qword_26A87BA90);
  sub_26A8515D8();
  *(swift_allocObject() + 16) = xmmword_26A8570D0;
  v14 = __swift_project_boxed_opaque_existential_1(a2 + 1, a2[4]);
  v15 = MEMORY[0x28223BE20](v14);
  (*(v17 + 16))(&v26 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0), v15);
  sub_26A8515E8();
  sub_26A8515F8();
  v18 = sub_26A84FFA8();
  v20 = sub_26A7157B0(v19);
  sub_26A850A88();
  (*(v35 + 8))(v5, v36);
  (*(v31 + 8))(v7, v33);
  v40 = v18;
  v41 = v20;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v22 = v26;
  sub_26A8509F8();
  (*(v34 + 8))(v9, v22);
  WitnessTable = swift_getWitnessTable();
  v38 = OpaqueTypeConformance2;
  v39 = WitnessTable;
  swift_getWitnessTable();
  v24 = View.eraseToAnyView()(v11);
  (*(v32 + 8))(v13, v11);
  return v24;
}

uint64_t SnippetGlassButtonStyle.init(configuration:)(uint64_t a1)
{
  sub_26A60F1B8(a1, v5);
  sub_26A60F1B8(v5, &v4);
  sub_26A851048();
  sub_26A715024(a1);
  return sub_26A715024(v5);
}

uint64_t SnippetGlassButtonStyle.makeBody(configuration:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v34[1] = a1;
  v40 = a2;
  v4 = sub_26A84FFA8();
  OUTLINED_FUNCTION_15();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  v9 = v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B5908, &qword_26A87B9F0);
  OUTLINED_FUNCTION_15();
  v39 = v10;
  MEMORY[0x28223BE20](v11);
  v13 = v34 - v12;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B5910, &qword_26A87B9F8);
  OUTLINED_FUNCTION_15();
  v35 = v14;
  MEMORY[0x28223BE20](v15);
  v36 = v34 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = v34 - v18;
  sub_26A84FFB8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B5918, &qword_26A87BA00);
  sub_26A851058();
  v45 = v3;
  sub_26A851408();
  v43 = __src;
  v41 = sub_26A7156DC;
  v42 = &v44;
  v21 = sub_26A7157B0(v20);
  v22 = MEMORY[0x277CE11C0];
  v23 = MEMORY[0x277CE11C8];
  sub_26A850CA8();
  (*(v6 + 8))(v9, v4);
  sub_26A715024(__src);
  v47[0] = sub_26A84FFC8() & 1;
  sub_26A715808(v3, __src);
  v24 = swift_allocObject();
  memcpy((v24 + 16), __src, 0x50uLL);
  __src[0] = v4;
  __src[1] = MEMORY[0x277CE1350];
  __src[2] = v23;
  __src[3] = v23;
  __src[4] = v21;
  __src[5] = MEMORY[0x277CE1340];
  __src[6] = v22;
  __src[7] = v22;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v26 = MEMORY[0x277D839B0];
  v27 = MEMORY[0x277D839C8];
  v28 = v38;
  sub_26A850C78();

  (*(v39 + 8))(v13, v28);
  v29 = v35;
  v30 = v37;
  (*(v35 + 16))(v36, v19, v37);
  __src[0] = v28;
  __src[1] = v26;
  __src[2] = OpaqueTypeConformance2;
  __src[3] = v27;
  swift_getOpaqueTypeConformance2();
  v31 = v30;
  v32 = sub_26A851248();
  result = (*(v29 + 8))(v19, v31);
  *v40 = v32;
  return result;
}

uint64_t sub_26A715500@<X0>(uint64_t *a1@<X8>)
{
  v11 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B5918, &qword_26A87BA00);
  sub_26A851058();
  sub_26A50429C(&v16, v14);
  sub_26A715024(&v15);
  __swift_project_boxed_opaque_existential_1(v14, v14[3]);
  sub_26A84FFA8();
  sub_26A84FE68();
  v1 = sub_26A84F4F8();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x28223BE20](v1);
  v5 = &v10 - v4;
  v6 = sub_26A7157B0(v3);
  sub_26A8509F8();
  WitnessTable = swift_getWitnessTable();
  v12 = v6;
  v13 = WitnessTable;
  swift_getWitnessTable();
  v8 = View.eraseToAnyView()(v1);
  (*(v2 + 8))(v5, v1);
  result = __swift_destroy_boxed_opaque_existential_1(v14);
  *v11 = v8;
  return result;
}

uint64_t sub_26A7156E4(uint64_t a1, _BYTE *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B5918, &qword_26A87BA00);
  sub_26A851058();
  return sub_26A851068();
}

uint64_t sub_26A715758@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_26A714A84(a1, *(v2 + 16));
  *a2 = result;
  return result;
}

uint64_t sub_26A715784@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_26A714F88(a1, *(v2 + 16));
  *a2 = result;
  return result;
}

unint64_t sub_26A7157B0(__n128 a1)
{
  result = qword_2803AE718;
  if (!qword_2803AE718)
  {
    sub_26A84FFA8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803AE718);
  }

  return result;
}

uint64_t sub_26A715864(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 80))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 32);
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

uint64_t sub_26A7158A4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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
      *(result + 32) = (a2 - 1);
      return result;
    }

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_26A715908()
{
  v1 = sub_26A84F988();
  OUTLINED_FUNCTION_15();
  v3 = v2;
  MEMORY[0x28223BE20](v4);
  v6 = v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = v0 + *(type metadata accessor for SummaryItemPairView(0) + 24);
  v8 = *v7;
  if ((*(v7 + 8) & 1) == 0)
  {

    sub_26A851EA8();
    v9 = sub_26A8501F8();
    sub_26A84EA78();

    sub_26A84F978();
    swift_getAtKeyPath();
    sub_26A4D82E8(v8, 0);
    (*(v3 + 8))(v6, v1);
    return v11[1];
  }

  return v8;
}

uint64_t sub_26A715A50@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_26A84F988();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91A8, &qword_26A857040);
  MEMORY[0x28223BE20](v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for SummaryItemPairView(0);
  sub_26A4DBD68(v1 + *(v10 + 28), v9, &qword_2803A91A8, &qword_26A857040);
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

uint64_t SummaryItemPairView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v54 = a1;
  v2 = sub_26A84BAB8();
  OUTLINED_FUNCTION_15();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  v50[0] = v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91C8, &unk_26A856820);
  v8 = OUTLINED_FUNCTION_79(v7);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_6_0();
  v51 = v9 - v10;
  MEMORY[0x28223BE20](v11);
  v13 = v50 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91C0, &unk_26A854CB0);
  v15 = OUTLINED_FUNCTION_79(v14);
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_6_0();
  v18 = v16 - v17;
  MEMORY[0x28223BE20](v19);
  v21 = v50 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B3800, &unk_26A856760);
  v23 = OUTLINED_FUNCTION_79(v22);
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_6_0();
  v26 = v24 - v25;
  MEMORY[0x28223BE20](v27);
  v29 = v50 - v28;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A98A8, &unk_26A855840);
  v31 = OUTLINED_FUNCTION_79(v30);
  MEMORY[0x28223BE20](v31);
  v33 = v50 - v32;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AA8F0, &qword_26A8569D0);
  v35 = OUTLINED_FUNCTION_79(v34);
  MEMORY[0x28223BE20](v35);
  v52 = v50 - v36;
  sub_26A84BF88();
  v56 = 0u;
  v57 = 0u;
  v58 = 1;
  v50[1] = sub_26A715908();
  sub_26A715A50(v21);
  v37 = sub_26A84F3A8();
  __swift_storeEnumTagSinglePayload(v21, 0, 1, v37);
  v53 = v1;
  v55 = v1;
  sub_26A4DBD68(v29, v26, &qword_2803B3800, &unk_26A856760);
  if (__swift_getEnumTagSinglePayload(v26, 1, v2) == 1)
  {
    sub_26A4DBD10(v26, &qword_2803B3800, &unk_26A856760);
    v38 = type metadata accessor for ActionType(0);
    v39 = v13;
    v40 = 1;
  }

  else
  {
    v41 = *(v4 + 32);
    v42 = v50[0];
    v41(v50[0], v26, v2);
    v41(v13, v42, v2);
    v43 = type metadata accessor for ActionType(0);
    swift_storeEnumTagMultiPayload();
    v39 = v13;
    v40 = 0;
    v38 = v43;
  }

  __swift_storeEnumTagSinglePayload(v39, v40, 1, v38);
  sub_26A4DBD68(v13, v51, &qword_2803A91C8, &unk_26A856820);
  sub_26A4DBD68(v21, v18, &qword_2803A91C0, &unk_26A854CB0);
  sub_26A4CE1A8();
  sub_26A4DBD10(v13, &qword_2803A91C8, &unk_26A856820);
  sub_26A4DBD10(v21, &qword_2803A91C0, &unk_26A854CB0);
  sub_26A4DBD10(v29, &qword_2803B3800, &unk_26A856760);
  v44 = sub_26A84BEC8();
  v45 = v52;
  sub_26A4DEF10(v44, v46);

  sub_26A4DBD10(v33, &qword_2803A98A8, &unk_26A855840);
  sub_26A84BED8();

  v47 = v54;
  sub_26A4DBDB4(v45, v54, &qword_2803AA8F0, &qword_26A8569D0);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B5928, &qword_26A87BA98);
  v49 = (v47 + *(result + 36));
  *v49 = 0xD000000000000019;
  v49[1] = 0x800000026A88EC90;
  return result;
}

uint64_t sub_26A716164@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v52 = a2;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A9908, &qword_26A855868);
  MEMORY[0x28223BE20](v53);
  v46 = (v43 - v3);
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A98E0, &qword_26A87BB50);
  MEMORY[0x28223BE20](v50);
  v47 = v43 - v4;
  v5 = sub_26A84F3A8();
  v48 = *(v5 - 8);
  v49 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B5970, &qword_26A87BB58);
  MEMORY[0x28223BE20](v51);
  v9 = v43 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B1650, &qword_26A87BB60);
  MEMORY[0x28223BE20](v10);
  v12 = v43 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A98C0, &unk_26A86CC10);
  MEMORY[0x28223BE20](v13);
  v15 = v43 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A98D0, &unk_26A855850);
  MEMORY[0x28223BE20](v16);
  v18 = v43 - v17;
  v19 = sub_26A715908();
  if (sub_26A61B05C(v19, &unk_287B13068))
  {
    *v18 = sub_26A84FBF8();
    *(v18 + 1) = 0;
    v18[16] = 1;
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B1660, &unk_26A86CC30);
    sub_26A716958(&v18[*(v20 + 44)]);
    sub_26A4DBD68(v18, v12, &qword_2803A98D0, &unk_26A855850);
    swift_storeEnumTagMultiPayload();
    v21 = MEMORY[0x277CE1198];
    sub_26A4DBCC8(&qword_2803A98C8, &qword_2803A98D0, &unk_26A855850, MEMORY[0x277CE1198]);
    sub_26A4D48C0();
    sub_26A84FDF8();
    sub_26A4DBD68(v15, v9, &qword_2803A98C0, &unk_26A86CC10);
    swift_storeEnumTagMultiPayload();
    sub_26A4D4808();
    sub_26A4DBCC8(&qword_2803A9900, &qword_2803A9908, &qword_26A855868, v21);
    sub_26A84FDF8();
    sub_26A4DBD10(v15, &qword_2803A98C0, &unk_26A86CC10);
    v22 = v18;
    v23 = &qword_2803A98D0;
    v24 = &unk_26A855850;
  }

  else
  {
    v43[0] = v10;
    v43[1] = v16;
    v44 = v15;
    v45 = v13;
    sub_26A715A50(v7);
    v25 = sub_26A84F388();
    (*(v48 + 8))(v7, v49);
    if (v25)
    {
      v26 = v47;
      sub_26A84BEF8();
      v27 = type metadata accessor for SummaryItemPairWatchView(0);
      sub_26A84BF08();
      sub_26A84BF18();
      v28 = v27[7];
      v29 = sub_26A84B888();
      __swift_storeEnumTagSinglePayload(v26 + v28, 1, 1, v29);
      v30 = v27[8];
      sub_26A84BF28();
      __swift_storeEnumTagSinglePayload(v26 + v30, 0, 1, v29);
      sub_26A84BF38();
      sub_26A84BEA8();
      __swift_storeEnumTagSinglePayload(v26 + v27[11], 1, 1, v29);
      v31 = v27[12];
      sub_26A84BF48();
      __swift_storeEnumTagSinglePayload(v26 + v31, 0, 1, v29);
      sub_26A84BF58();
      sub_26A84BEB8();
      sub_26A84BF78();
      sub_26A84BF98();
      type metadata accessor for SummaryItemPairView(0);
      type metadata accessor for SummaryItemPairCompanionView.PairState(0);
      sub_26A718820(&qword_2803AF210, type metadata accessor for SummaryItemPairCompanionView.PairState, &unk_26A864040);
      v32 = sub_26A84EEF8();
      v33 = sub_26A84EB78();
      v34 = (v26 + *(v50 + 36));
      *v34 = v33;
      v34[1] = v32;
      v35 = &qword_2803A98E0;
      v36 = &qword_26A87BB50;
      sub_26A4DBD68(v26, v12, &qword_2803A98E0, &qword_26A87BB50);
      swift_storeEnumTagMultiPayload();
      v37 = MEMORY[0x277CE1198];
      sub_26A4DBCC8(&qword_2803A98C8, &qword_2803A98D0, &unk_26A855850, MEMORY[0x277CE1198]);
      sub_26A4D48C0();
      v38 = v44;
      sub_26A84FDF8();
      sub_26A4DBD68(v38, v9, &qword_2803A98C0, &unk_26A86CC10);
      swift_storeEnumTagMultiPayload();
      sub_26A4D4808();
      sub_26A4DBCC8(&qword_2803A9900, &qword_2803A9908, &qword_26A855868, v37);
      sub_26A84FDF8();
      sub_26A4DBD10(v38, &qword_2803A98C0, &unk_26A86CC10);
      v22 = v26;
    }

    else
    {
      v39 = sub_26A84FBF8();
      v40 = v46;
      *v46 = v39;
      *(v40 + 8) = 0;
      *(v40 + 16) = 1;
      v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B5978, &unk_26A87BB68);
      sub_26A716AF8(a1, v40 + *(v41 + 44));
      v35 = &qword_2803A9908;
      v36 = &qword_26A855868;
      sub_26A4DBD68(v40, v9, &qword_2803A9908, &qword_26A855868);
      swift_storeEnumTagMultiPayload();
      sub_26A4D4808();
      sub_26A4DBCC8(&qword_2803A9900, &qword_2803A9908, &qword_26A855868, MEMORY[0x277CE1198]);
      sub_26A84FDF8();
      v22 = v40;
    }

    v23 = v35;
    v24 = v36;
  }

  return sub_26A4DBD10(v22, v23, v24);
}

uint64_t sub_26A716958@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_26A84B888();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AA838, &unk_26A856770);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v12 - v7;
  sub_26A84BEF8();
  if (__swift_getEnumTagSinglePayload(v8, 1, v2) == 1)
  {
    sub_26A4DBD10(v8, &qword_2803AA838, &unk_26A856770);
    v9 = 1;
  }

  else
  {
    (*(v3 + 16))(v5, v8, v2);
    TextPropertyView.init(_:)(v5, a1);
    (*(v3 + 8))(v8, v2);
    v9 = 0;
  }

  v10 = type metadata accessor for TextPropertyView(0);
  return __swift_storeEnumTagSinglePayload(a1, v9, 1, v10);
}

uint64_t sub_26A716AF8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B5980, &qword_26A87BB78);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v19 - v8;
  v10 = type metadata accessor for SummaryItemPairTitleView(0);
  MEMORY[0x28223BE20](v10);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v19 - v14;
  sub_26A84BEF8();
  sub_26A84BF08();
  sub_26A84BF18();
  *v9 = sub_26A84FA78();
  *(v9 + 1) = 0;
  v9[16] = 0;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B5988, &qword_26A87BB80);
  sub_26A716CF8(a1, &v9[*(v16 + 44)]);
  sub_26A63C6A8(v15, v12);
  sub_26A4DBD68(v9, v6, &qword_2803B5980, &qword_26A87BB78);
  sub_26A63C6A8(v12, a2);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B5990, &qword_26A87BB88);
  sub_26A4DBD68(v6, a2 + *(v17 + 48), &qword_2803B5980, &qword_26A87BB78);
  sub_26A4DBD10(v9, &qword_2803B5980, &qword_26A87BB78);
  sub_26A63C70C(v15);
  sub_26A4DBD10(v6, &qword_2803B5980, &qword_26A87BB78);
  return sub_26A63C70C(v12);
}

uint64_t sub_26A716CF8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v62 = a2;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B5998, &unk_26A87BB90) - 8;
  MEMORY[0x28223BE20](v58);
  v61 = v54 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v63 = (v54 - v5);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B1688, &qword_26A86CC60);
  v7 = v6 - 8;
  v57 = v6 - 8;
  MEMORY[0x28223BE20](v6);
  v60 = v54 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v59 = v54 - v10;
  MEMORY[0x28223BE20](v11);
  v13 = v54 - v12;
  MEMORY[0x28223BE20](v14);
  v16 = v54 - v15;
  sub_26A84BEA8();
  v17 = type metadata accessor for SummaryItemPairCompanionView(0);
  v18 = v17[5];
  v19 = sub_26A84B888();
  __swift_storeEnumTagSinglePayload(&v16[v18], 1, 1, v19);
  v20 = v17[6];
  sub_26A84BF28();
  __swift_storeEnumTagSinglePayload(&v16[v20], 0, 1, v19);
  sub_26A84BF38();
  v21 = &v16[v17[8]];
  type metadata accessor for SummaryItemPairCompanionView.PairState(0);
  sub_26A718820(&qword_2803AF210, type metadata accessor for SummaryItemPairCompanionView.PairState, &unk_26A864040);
  *v21 = sub_26A84F678();
  v21[1] = v22;
  v23 = &v16[v17[9]];
  *v23 = swift_getKeyPath();
  v23[8] = 0;
  v24 = (a1 + *(type metadata accessor for SummaryItemPairView(0) + 20));
  v25 = *v24;
  v55 = v24[1];
  v56 = v25;
  v54[1] = *(v24 + 16);
  v26 = sub_26A84EEF8();
  v27 = sub_26A84EB78();
  v28 = &v16[*(v7 + 44)];
  *v28 = v27;
  v28[1] = v26;
  v29 = sub_26A84FBF8();
  v30 = v63;
  *v63 = v29;
  v30[1] = 0;
  *(v30 + 16) = 1;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B59A0, &qword_26A87BBC8);
  sub_26A717240(a1, v30 + *(v31 + 44));
  LOBYTE(v23) = sub_26A850238();
  sub_26A84ED48();
  v33 = v32;
  v35 = v34;
  v37 = v36;
  v39 = v38;
  v40 = v30 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B59A8, &qword_26A87BBD0) + 36);
  *v40 = v23;
  *(v40 + 1) = v33;
  *(v40 + 2) = v35;
  *(v40 + 3) = v37;
  *(v40 + 4) = v39;
  v40[40] = 0;
  *(v30 + *(v58 + 44)) = 0x3FF0000000000000;
  sub_26A84BEB8();
  __swift_storeEnumTagSinglePayload(&v13[v17[5]], 1, 1, v19);
  v41 = v17[6];
  sub_26A84BF48();
  __swift_storeEnumTagSinglePayload(&v13[v41], 0, 1, v19);
  sub_26A84BF58();
  v42 = &v13[v17[8]];
  *v42 = sub_26A84F678();
  v42[1] = v43;
  v44 = &v13[v17[9]];
  *v44 = swift_getKeyPath();
  v44[8] = 0;
  v45 = sub_26A84EEF8();
  v46 = sub_26A84EB78();
  v47 = &v13[*(v57 + 44)];
  *v47 = v46;
  v47[1] = v45;
  v48 = v59;
  sub_26A4DBD68(v16, v59, &qword_2803B1688, &qword_26A86CC60);
  v49 = v61;
  sub_26A4DBD68(v30, v61, &qword_2803B5998, &unk_26A87BB90);
  v50 = v60;
  sub_26A4DBD68(v13, v60, &qword_2803B1688, &qword_26A86CC60);
  v51 = v62;
  sub_26A4DBD68(v48, v62, &qword_2803B1688, &qword_26A86CC60);
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B59B0, &qword_26A87BBD8);
  sub_26A4DBD68(v49, v51 + *(v52 + 48), &qword_2803B5998, &unk_26A87BB90);
  sub_26A4DBD68(v50, v51 + *(v52 + 64), &qword_2803B1688, &qword_26A86CC60);
  sub_26A4DBD10(v13, &qword_2803B1688, &qword_26A86CC60);
  sub_26A4DBD10(v63, &qword_2803B5998, &unk_26A87BB90);
  sub_26A4DBD10(v16, &qword_2803B1688, &qword_26A86CC60);
  sub_26A4DBD10(v50, &qword_2803B1688, &qword_26A86CC60);
  sub_26A4DBD10(v49, &qword_2803B5998, &unk_26A87BB90);
  return sub_26A4DBD10(v48, &qword_2803B1688, &qword_26A86CC60);
}

uint64_t sub_26A717240@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v174 = a2;
  v158 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AF290, &qword_26A87BBE0);
  MEMORY[0x28223BE20](v158);
  v159 = &v152 - v3;
  v157 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B59B8, &qword_26A87BBE8);
  MEMORY[0x28223BE20](v157);
  v162 = &v152 - v4;
  v160 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B59C0, &qword_26A87BBF0);
  MEMORY[0x28223BE20](v160);
  v163 = &v152 - v5;
  v161 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B59C8, &qword_26A87BBF8);
  MEMORY[0x28223BE20](v161);
  v164 = &v152 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B59D0, &unk_26A87BC00);
  MEMORY[0x28223BE20](v7 - 8);
  v173 = &v152 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v170 = &v152 - v10;
  MEMORY[0x28223BE20](v11);
  v172 = &v152 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AD378, &qword_26A85DCF0);
  MEMORY[0x28223BE20](v13);
  v156 = &v152 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v154 = &v152 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B59D8, &unk_26A87BC10);
  MEMORY[0x28223BE20](v17 - 8);
  v171 = &v152 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v21 = &v152 - v20;
  MEMORY[0x28223BE20](v22);
  v176 = &v152 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AA838, &unk_26A856770);
  MEMORY[0x28223BE20](v24 - 8);
  v167 = &v152 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v28 = &v152 - v27;
  MEMORY[0x28223BE20](v29);
  v31 = &v152 - v30;
  v32 = type metadata accessor for TextPropertyView(0);
  MEMORY[0x28223BE20](v32);
  v155 = &v152 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v34);
  v36 = &v152 - v35;
  MEMORY[0x28223BE20](v37);
  v39 = &v152 - v38;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AD360, &unk_26A85DE70);
  MEMORY[0x28223BE20](v40 - 8);
  v169 = &v152 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v42);
  v44 = &v152 - v43;
  MEMORY[0x28223BE20](v45);
  v175 = &v152 - v46;
  sub_26A84BF68();
  v47 = sub_26A84B888();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v31, 1, v47);
  v168 = v13;
  v165 = v21;
  v166 = a1;
  if (EnumTagSinglePayload == 1)
  {
    sub_26A4DBD10(v31, &qword_2803AA838, &unk_26A856770);
    v49 = 1;
  }

  else
  {
    v152 = *(v47 - 8);
    (*(v152 + 16))(v39, v31, v47);
    v50 = v32[5];
    v153 = v28;
    v51 = &v39[v50];
    *v51 = swift_getKeyPath();
    v51[8] = 0;
    v52 = v32[6];
    *&v39[v52] = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A93D0, &qword_26A856F10);
    swift_storeEnumTagMultiPayload();
    v53 = &v39[v32[7]];
    *v53 = swift_getKeyPath();
    v53[8] = 0;
    v54 = &v39[v32[8]];
    *v54 = swift_getKeyPath();
    *(v54 + 1) = 0;
    v54[16] = 0;
    *(v54 + 3) = swift_getKeyPath();
    v54[32] = 0;
    v55 = type metadata accessor for ActionHandler(0);
    v56 = v55[6];
    *&v54[v56] = swift_getKeyPath();
    swift_storeEnumTagMultiPayload();
    v57 = &v54[v55[7]];
    *v57 = swift_getKeyPath();
    *(v57 + 1) = 0;
    v57[16] = 0;
    v58 = &v54[v55[8]];
    *v58 = swift_getKeyPath();
    v58[8] = 0;
    v59 = &v54[v55[9]];
    *v59 = swift_getKeyPath();
    v59[8] = 0;
    v60 = &v54[v55[10]];
    *v60 = swift_getKeyPath();
    v60[9] = 0;
    swift_unknownObjectWeakInit();
    v61 = v55[11];
    v62 = type metadata accessor for StandardActionHandler(0);
    __swift_storeEnumTagSinglePayload(&v54[v61], 1, 1, v62);
    sub_26A4DBD10(&v54[v61], &qword_2803B3910, &qword_26A855580);
    v63 = &v54[v61];
    v13 = v168;
    __swift_storeEnumTagSinglePayload(v63, 1, 1, v62);
    (*(v152 + 8))(v31, v47);
    v64 = sub_26A8504A8();
    KeyPath = swift_getKeyPath();
    sub_26A592070(v39, v44);
    v49 = 0;
    v66 = &v44[*(v13 + 36)];
    *v66 = KeyPath;
    v66[1] = v64;
    v28 = v153;
  }

  __swift_storeEnumTagSinglePayload(v44, v49, 1, v13);
  sub_26A4DBDB4(v44, v175, &qword_2803AD360, &unk_26A85DE70);
  sub_26A84BF78();
  if (__swift_getEnumTagSinglePayload(v28, 1, v47) == 1)
  {
    sub_26A4DBD10(v28, &qword_2803AA838, &unk_26A856770);
    v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B59E0, &qword_26A87BC20);
    v68 = v165;
    v69 = v165;
    v70 = 1;
  }

  else
  {
    v71 = *(v47 - 8);
    (*(v71 + 16))(v36, v28, v47);
    v72 = &v36[v32[5]];
    *v72 = swift_getKeyPath();
    v72[8] = 0;
    v73 = v32[6];
    *&v36[v73] = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A93D0, &qword_26A856F10);
    swift_storeEnumTagMultiPayload();
    v74 = &v36[v32[7]];
    *v74 = swift_getKeyPath();
    v74[8] = 0;
    v75 = &v36[v32[8]];
    *v75 = swift_getKeyPath();
    *(v75 + 1) = 0;
    v75[16] = 0;
    *(v75 + 3) = swift_getKeyPath();
    v75[32] = 0;
    v76 = type metadata accessor for ActionHandler(0);
    v77 = v76[6];
    *&v75[v77] = swift_getKeyPath();
    swift_storeEnumTagMultiPayload();
    v78 = &v75[v76[7]];
    *v78 = swift_getKeyPath();
    *(v78 + 1) = 0;
    v78[16] = 0;
    v79 = &v75[v76[8]];
    *v79 = swift_getKeyPath();
    v79[8] = 0;
    v80 = &v75[v76[9]];
    *v80 = swift_getKeyPath();
    v80[8] = 0;
    v81 = &v75[v76[10]];
    *v81 = swift_getKeyPath();
    v81[9] = 0;
    swift_unknownObjectWeakInit();
    v82 = v76[11];
    v83 = type metadata accessor for StandardActionHandler(0);
    __swift_storeEnumTagSinglePayload(&v75[v82], 1, 1, v83);
    sub_26A4DBD10(&v75[v82], &qword_2803B3910, &qword_26A855580);
    __swift_storeEnumTagSinglePayload(&v75[v82], 1, 1, v83);
    (*(v71 + 8))(v28, v47);
    v13 = v168;
    v84 = sub_26A850498();
    v85 = swift_getKeyPath();
    v86 = v154;
    sub_26A592070(v36, v154);
    v87 = (v86 + *(v13 + 36));
    *v87 = v85;
    v87[1] = v84;
    v88 = swift_getKeyPath();
    v68 = v165;
    sub_26A4DBDB4(v86, v165, &qword_2803AD378, &qword_26A85DCF0);
    v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B59E0, &qword_26A87BC20);
    v89 = v68 + *(v67 + 36);
    *v89 = v88;
    *(v89 + 8) = 1;
    v69 = v68;
    v70 = 0;
  }

  __swift_storeEnumTagSinglePayload(v69, v70, 1, v67);
  v90 = v167;
  sub_26A4DBDB4(v68, v176, &qword_2803B59D8, &unk_26A87BC10);
  sub_26A84BF98();
  if (__swift_getEnumTagSinglePayload(v90, 1, v47) == 1)
  {
    sub_26A4DBD10(v90, &qword_2803AA838, &unk_26A856770);
    v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B59E8, &qword_26A87BC28);
    v92 = v170;
    v93 = v170;
    v94 = 1;
  }

  else
  {
    v95 = *(v47 - 8);
    v96 = v155;
    (*(v95 + 16))(v155, v90, v47);
    v97 = v96 + v32[5];
    *v97 = swift_getKeyPath();
    *(v97 + 8) = 0;
    v98 = v13;
    v99 = v32[6];
    *(v96 + v99) = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A93D0, &qword_26A856F10);
    swift_storeEnumTagMultiPayload();
    v100 = v96 + v32[7];
    *v100 = swift_getKeyPath();
    *(v100 + 8) = 0;
    v101 = v96 + v32[8];
    *v101 = swift_getKeyPath();
    *(v101 + 8) = 0;
    *(v101 + 16) = 0;
    *(v101 + 24) = swift_getKeyPath();
    *(v101 + 32) = 0;
    v102 = type metadata accessor for ActionHandler(0);
    v103 = v102[6];
    *(v101 + v103) = swift_getKeyPath();
    swift_storeEnumTagMultiPayload();
    v104 = v101 + v102[7];
    *v104 = swift_getKeyPath();
    *(v104 + 8) = 0;
    *(v104 + 16) = 0;
    v105 = v101 + v102[8];
    *v105 = swift_getKeyPath();
    *(v105 + 8) = 0;
    v106 = v101 + v102[9];
    *v106 = swift_getKeyPath();
    *(v106 + 8) = 0;
    v107 = v101 + v102[10];
    *v107 = swift_getKeyPath();
    *(v107 + 9) = 0;
    swift_unknownObjectWeakInit();
    v108 = v102[11];
    v109 = type metadata accessor for StandardActionHandler(0);
    __swift_storeEnumTagSinglePayload(v101 + v108, 1, 1, v109);
    sub_26A4DBD10(v101 + v108, &qword_2803B3910, &qword_26A855580);
    __swift_storeEnumTagSinglePayload(v101 + v108, 1, 1, v109);
    (*(v95 + 8))(v90, v47);
    v110 = sub_26A850498();
    v111 = swift_getKeyPath();
    v112 = v156;
    sub_26A592070(v96, v156);
    v113 = (v112 + *(v98 + 36));
    *v113 = v111;
    v113[1] = v110;
    v114 = swift_getKeyPath();
    v115 = v159;
    sub_26A4DBDB4(v112, v159, &qword_2803AD378, &qword_26A85DCF0);
    v116 = v115 + *(v158 + 36);
    *v116 = v114;
    *(v116 + 8) = 1;
    *(v116 + 16) = 0;
    LOBYTE(v114) = sub_26A850238();
    v117 = v115;
    v118 = v162;
    sub_26A4DBDB4(v117, v162, &qword_2803AF290, &qword_26A87BBE0);
    v119 = v118 + *(v157 + 36);
    *v119 = v114;
    *(v119 + 8) = 0u;
    *(v119 + 24) = 0u;
    *(v119 + 40) = 1;
    LOBYTE(v114) = sub_26A8502A8();
    sub_26A84ED48();
    v121 = v120;
    v123 = v122;
    v125 = v124;
    v127 = v126;
    v128 = v163;
    sub_26A4DBDB4(v118, v163, &qword_2803B59B8, &qword_26A87BBE8);
    v129 = v128 + *(v160 + 36);
    *v129 = v114;
    *(v129 + 8) = v121;
    *(v129 + 16) = v123;
    *(v129 + 24) = v125;
    *(v129 + 32) = v127;
    *(v129 + 40) = 0;
    v130 = sub_26A850D98();
    LOBYTE(v118) = sub_26A850248();
    v131 = v164;
    sub_26A4DBDB4(v128, v164, &qword_2803B59C0, &qword_26A87BBF0);
    v132 = v131 + *(v161 + 36);
    *v132 = v130;
    *(v132 + 8) = v118;
    v133 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B59E8, &qword_26A87BC28);
    v92 = v170;
    v134 = &v170[*(v133 + 36)];
    v135 = *(sub_26A84F5F8() + 20);
    v136 = *MEMORY[0x277CE0118];
    v137 = sub_26A84FB88();
    (*(*(v137 - 8) + 104))(&v134[v135], v136, v137);
    __asm { FMOV            V0.2D, #2.0 }

    *v134 = _Q0;
    *&v134[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A9E58, &unk_26A857A00) + 36)] = 256;
    sub_26A4DBDB4(v131, v92, &qword_2803B59C8, &qword_26A87BBF8);
    v93 = v92;
    v94 = 0;
    v91 = v133;
  }

  __swift_storeEnumTagSinglePayload(v93, v94, 1, v91);
  v143 = v172;
  sub_26A4DBDB4(v92, v172, &qword_2803B59D0, &unk_26A87BC00);
  v144 = v175;
  v145 = v169;
  sub_26A4DBD68(v175, v169, &qword_2803AD360, &unk_26A85DE70);
  v146 = v176;
  v147 = v171;
  sub_26A4DBD68(v176, v171, &qword_2803B59D8, &unk_26A87BC10);
  v148 = v173;
  sub_26A4DBD68(v143, v173, &qword_2803B59D0, &unk_26A87BC00);
  v149 = v174;
  sub_26A4DBD68(v145, v174, &qword_2803AD360, &unk_26A85DE70);
  v150 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B59F0, &qword_26A87BC30);
  sub_26A4DBD68(v147, v149 + *(v150 + 48), &qword_2803B59D8, &unk_26A87BC10);
  sub_26A4DBD68(v148, v149 + *(v150 + 64), &qword_2803B59D0, &unk_26A87BC00);
  sub_26A4DBD10(v143, &qword_2803B59D0, &unk_26A87BC00);
  sub_26A4DBD10(v146, &qword_2803B59D8, &unk_26A87BC10);
  sub_26A4DBD10(v144, &qword_2803AD360, &unk_26A85DE70);
  sub_26A4DBD10(v148, &qword_2803B59D0, &unk_26A87BC00);
  sub_26A4DBD10(v147, &qword_2803B59D8, &unk_26A87BC10);
  return sub_26A4DBD10(v145, &qword_2803AD360, &unk_26A85DE70);
}

uint64_t type metadata accessor for SummaryItemPairView(uint64_t a1)
{
  result = qword_2803B5938;
  if (!qword_2803B5938)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_26A71849C(uint64_t a1)
{
  result = sub_26A718820(&qword_2803B5930, MEMORY[0x277D631F8], MEMORY[0x277D631F0]);
  *(a1 + 8) = result;
  return result;
}

void sub_26A718538(uint64_t a1)
{
  sub_26A84BFA8();
  if (v1 <= 0x3F)
  {
    sub_26A63C380(319);
    if (v2 <= 0x3F)
    {
      sub_26A4E5DC4(319, &qword_2803A9218, type metadata accessor for VRXIdiom);
      if (v3 <= 0x3F)
      {
        sub_26A4E5DC4(319, &qword_2803A9230, MEMORY[0x277CDFA28]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

unint64_t sub_26A718624()
{
  result = qword_2803B5948;
  if (!qword_2803B5948)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B5928, &qword_26A87BA98);
    sub_26A7186B0();
    sub_26A63C610();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B5948);
  }

  return result;
}

unint64_t sub_26A7186B0()
{
  result = qword_2803B5950;
  if (!qword_2803B5950)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AA8F0, &qword_26A8569D0);
    sub_26A718768();
    sub_26A4DBCC8(&qword_28157FB60, &qword_2803A9438, &unk_26A8555B0, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B5950);
  }

  return result;
}

unint64_t sub_26A718768()
{
  result = qword_2803B5958;
  if (!qword_2803B5958)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AA8E8, &unk_26A8569C0);
    sub_26A4DBCC8(&qword_2803B5960, &qword_2803A98A8, &unk_26A855840, &protocol conformance descriptor for ComponentWithAction<A>);
    sub_26A4D31BC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B5958);
  }

  return result;
}

uint64_t sub_26A718820(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t TextStylesView.StyleType.hashValue.getter()
{
  v1 = *v0;
  sub_26A8526B8();
  MEMORY[0x26D664930](v1);
  return sub_26A8526F8();
}

SnippetUI::TextStylesView __swiftcall TextStylesView.init(_:showLoremIpsum:)(SnippetUI::TextStylesView::StyleType _, Swift::Bool showLoremIpsum)
{
  *v2 = *_;
  v2[1] = showLoremIpsum;
  result.type = _;
  return result;
}

uint64_t TextStylesView.body.getter(uint64_t a1)
{
  MEMORY[0x28223BE20](a1);
  v2 = v1[1];
  if (*v1)
  {
    if (*v1 != 1)
    {
      v35[0] = sub_26A84FBF8();
      v35[1] = 0x4018000000000000;
      v36 = 0;
      sub_26A719EE0(v35[0]);
      v37 = sub_26A850E18();
      v38 = sub_26A850248();
      KeyPath = swift_getKeyPath();
      v40 = v2;
      OUTLINED_FUNCTION_3_70(v35);
      v43 = 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B5A00, &qword_26A87BE30);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B59F8, &qword_26A87BE28);
      sub_26A71AB50();
      OUTLINED_FUNCTION_0_78();
      OUTLINED_FUNCTION_111();
      sub_26A71AC34(v19, v20, v21, v22);
      OUTLINED_FUNCTION_7_54();
      sub_26A84FDF8();
      goto LABEL_7;
    }

    sub_26A84FBF8();
    OUTLINED_FUNCTION_4_66();
    sub_26A71964C(v3);
    v27[323] = sub_26A850E18();
    v28 = sub_26A850248();
    v29 = swift_getKeyPath();
    v30 = v2;
    OUTLINED_FUNCTION_3_70(v27);
    v42 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B5A18, &qword_26A87BE38);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B5A48, &qword_26A87BE50);
    OUTLINED_FUNCTION_2_77();
    sub_26A71AC34(v4, &qword_2803B5A18, &qword_26A87BE38, v5);
    OUTLINED_FUNCTION_1_81();
    OUTLINED_FUNCTION_111();
    sub_26A71AC34(v6, v7, v8, v9);
    OUTLINED_FUNCTION_7_54();
  }

  else
  {
    sub_26A84FBF8();
    OUTLINED_FUNCTION_4_66();
    sub_26A718CB0(v10);
    v31 = sub_26A850E18();
    v32 = sub_26A850248();
    v33 = swift_getKeyPath();
    v34 = v2;
    OUTLINED_FUNCTION_3_70(v27);
    v42 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B5A18, &qword_26A87BE38);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B5A48, &qword_26A87BE50);
    OUTLINED_FUNCTION_2_77();
    OUTLINED_FUNCTION_111();
    sub_26A71AC34(v11, v12, v13, v14);
    OUTLINED_FUNCTION_1_81();
    sub_26A71AC34(v15, &qword_2803B5A48, &qword_26A87BE50, v16);
    OUTLINED_FUNCTION_7_54();
  }

  sub_26A84FDF8();
  sub_26A4EA070(v35, &v41, &qword_2803B5A00, &qword_26A87BE30);
  v43 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B5A00, &qword_26A87BE30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B59F8, &qword_26A87BE28);
  sub_26A71AB50();
  OUTLINED_FUNCTION_0_78();
  sub_26A71AC34(v17, &qword_2803B59F8, &qword_26A87BE28, v18);
  OUTLINED_FUNCTION_7_54();
  sub_26A84FDF8();
  sub_26A4E2544(v35, &qword_2803B5A00, &qword_26A87BE30);
LABEL_7:
  OUTLINED_FUNCTION_111();
  return sub_26A4E2544(v23, v24, v25);
}

uint64_t sub_26A718CB0(uint64_t a1)
{
  MEMORY[0x28223BE20](a1);
  KeyPath = swift_getKeyPath();
  if (qword_2803A9018 != -1)
  {
    swift_once();
  }

  sub_26A4EA070(&unk_2803D2760, v72, &qword_2803AA880, &unk_26A8567F0);
  sub_26A6AEE74(v73);
  memcpy(v71, v73, sizeof(v71));
  v72[11] = 0;
  v68 = 0;
  v67 = KeyPath;
  v69 = 1954047316;
  v72[10] = sub_26A80A810;
  v70 = 0xE400000000000000;
  v2 = swift_getKeyPath();
  if (qword_28157E6B0 != -1)
  {
    swift_once();
  }

  sub_26A4EA070(&unk_281588898, v66, &qword_2803AA880, &unk_26A8567F0);
  sub_26A6AEE74(v74);
  memcpy(v65, v74, sizeof(v65));
  v66[11] = 0;
  v62 = 0;
  v61 = v2;
  v63 = 0x322074786554;
  v66[10] = sub_26A80A810;
  v64 = 0xE600000000000000;
  v3 = swift_getKeyPath();
  if (qword_2803A9028 != -1)
  {
    swift_once();
  }

  sub_26A4EA070(&unk_2803D27B0, v60, &qword_2803AA880, &unk_26A8567F0);
  sub_26A6AEE74(v75);
  memcpy(v59, v75, sizeof(v59));
  v60[11] = 0;
  v57 = 0;
  v56 = v3;
  strcpy(v58, "Leading Text");
  v60[10] = sub_26A80A810;
  HIBYTE(v58[6]) = 0;
  v58[7] = -5120;
  v4 = swift_getKeyPath();
  if (qword_28157E6C0 != -1)
  {
    swift_once();
  }

  sub_26A4EA070(&unk_2815888E8, v55, &qword_2803AA880, &unk_26A8567F0);
  sub_26A6AEE74(v76);
  memcpy(v54, v76, sizeof(v54));
  v55[11] = 0;
  v52 = 0;
  v51 = v4;
  strcpy(v53, "Primary Label");
  v55[10] = sub_26A80A810;
  v53[7] = -4864;
  v5 = swift_getKeyPath();
  if (qword_2803A9038 != -1)
  {
    swift_once();
  }

  sub_26A4EA070(&unk_2803D2800, v50, &qword_2803AA880, &unk_26A8567F0);
  sub_26A6AEE74(v77);
  memcpy(v49, v77, sizeof(v49));
  v50[11] = 0;
  v46 = 0;
  v45 = v5;
  v47 = 0x636E657265666552;
  v50[10] = sub_26A80A810;
  v48 = 0xEF6C6562614C2065;
  v6 = swift_getKeyPath();
  if (qword_2803A9040 != -1)
  {
    swift_once();
  }

  sub_26A4EA070(&unk_2803D2850, v44, &qword_2803AA880, &unk_26A8567F0);
  sub_26A6AEE74(v78);
  memcpy(v43, v78, sizeof(v43));
  v44[10] = sub_26A80A810;
  v44[11] = 0;
  v39 = v6;
  v40 = 0;
  v41 = 0x54206D6574737953;
  v42 = 0xEB00000000747865;
  v7 = swift_getKeyPath();
  if (qword_28157E6A8 != -1)
  {
    swift_once();
  }

  sub_26A4EA070(&unk_281588848, v38, &qword_2803AA880, &unk_26A8567F0);
  sub_26A6AEE74(v79);
  memcpy(v37, v79, sizeof(v37));
  v38[10] = sub_26A80A810;
  v38[11] = 0;
  v33 = v7;
  v34 = 0;
  v35 = 0x2074786574627553;
  v36 = 0xE900000000000031;
  v8 = swift_getKeyPath();
  if (qword_28157E6A0 != -1)
  {
    swift_once();
  }

  sub_26A4EA070(&unk_2815887F8, v32, &qword_2803AA880, &unk_26A8567F0);
  sub_26A6AEE74(v80);
  memcpy(v31, v80, sizeof(v31));
  v32[10] = sub_26A80A810;
  v32[11] = 0;
  v27 = v8;
  v28 = 0;
  v29 = 0x2074786574627553;
  v30 = 0xE900000000000032;
  v9 = swift_getKeyPath();
  if (qword_2803A9048 != -1)
  {
    swift_once();
  }

  sub_26A4EA070(&unk_2803D28A0, v26, &qword_2803AA880, &unk_26A8567F0);
  sub_26A6AEE74(__src);
  memcpy(v25, __src, sizeof(v25));
  v26[10] = sub_26A80A810;
  v26[11] = 0;
  v21 = v9;
  v22 = 0;
  v23 = 0x655420656772614CLL;
  v24 = 0xEA00000000007478;
  sub_26A4EA070(&v67, v19, &qword_2803AE648, &unk_26A861C30);
  v20[0] = v19;
  sub_26A4EA070(&v61, v18, &qword_2803AE648, &unk_26A861C30);
  v20[1] = v18;
  sub_26A4EA070(&v56, v17, &qword_2803AE648, &unk_26A861C30);
  v20[2] = v17;
  sub_26A4EA070(&v51, v16, &qword_2803AE648, &unk_26A861C30);
  v20[3] = v16;
  sub_26A4EA070(&v45, v15, &qword_2803AE648, &unk_26A861C30);
  v20[4] = v15;
  sub_26A4EA070(&v39, v14, &qword_2803AE648, &unk_26A861C30);
  v20[5] = v14;
  sub_26A4EA070(&v33, v13, &qword_2803AE648, &unk_26A861C30);
  v20[6] = v13;
  sub_26A4EA070(&v27, v12, &qword_2803AE648, &unk_26A861C30);
  v20[7] = v12;
  sub_26A4EA070(&v21, v11, &qword_2803AE648, &unk_26A861C30);
  v20[8] = v11;
  sub_26A594774(v20);
  sub_26A4E2544(&v21, &qword_2803AE648, &unk_26A861C30);
  sub_26A4E2544(&v27, &qword_2803AE648, &unk_26A861C30);
  sub_26A4E2544(&v33, &qword_2803AE648, &unk_26A861C30);
  sub_26A4E2544(&v39, &qword_2803AE648, &unk_26A861C30);
  sub_26A4E2544(&v45, &qword_2803AE648, &unk_26A861C30);
  sub_26A4E2544(&v51, &qword_2803AE648, &unk_26A861C30);
  sub_26A4E2544(&v56, &qword_2803AE648, &unk_26A861C30);
  sub_26A4E2544(&v61, &qword_2803AE648, &unk_26A861C30);
  sub_26A4E2544(&v67, &qword_2803AE648, &unk_26A861C30);
  sub_26A4E2544(v11, &qword_2803AE648, &unk_26A861C30);
  sub_26A4E2544(v12, &qword_2803AE648, &unk_26A861C30);
  sub_26A4E2544(v13, &qword_2803AE648, &unk_26A861C30);
  sub_26A4E2544(v14, &qword_2803AE648, &unk_26A861C30);
  sub_26A4E2544(v15, &qword_2803AE648, &unk_26A861C30);
  sub_26A4E2544(v16, &qword_2803AE648, &unk_26A861C30);
  sub_26A4E2544(v17, &qword_2803AE648, &unk_26A861C30);
  sub_26A4E2544(v18, &qword_2803AE648, &unk_26A861C30);
  return sub_26A4E2544(v19, &qword_2803AE648, &unk_26A861C30);
}

uint64_t sub_26A71964C(uint64_t a1)
{
  MEMORY[0x28223BE20](a1);
  KeyPath = swift_getKeyPath();
  if (qword_2803A9050 != -1)
  {
    swift_once();
  }

  sub_26A4EA070(qword_2803D28F0, v64, &qword_2803AA880, &unk_26A8567F0);
  sub_26A6AEE74(v65);
  memcpy(v63, v65, sizeof(v63));
  v64[11] = 0;
  v60 = 0;
  v59 = KeyPath;
  v61 = 0x6165482068736153;
  v64[10] = sub_26A80A810;
  v62 = 0xEB00000000726564;
  v2 = swift_getKeyPath();
  if (qword_2803A9058 != -1)
  {
    swift_once();
  }

  sub_26A4EA070(&unk_2803D2940, v58, &qword_2803AA880, &unk_26A8567F0);
  sub_26A6AEE74(v66);
  memcpy(v57, v66, sizeof(v57));
  v58[11] = 0;
  v55 = 0;
  v54 = v2;
  strcpy(v56, "Marquee Header");
  v58[10] = sub_26A80A810;
  v56[15] = -18;
  v3 = swift_getKeyPath();
  if (qword_2803A9060 != -1)
  {
    swift_once();
  }

  sub_26A4EA070(&unk_2803D2990, v53, &qword_2803AA880, &unk_26A8567F0);
  sub_26A6AEE74(v67);
  memcpy(v52, v67, sizeof(v52));
  v53[11] = 0;
  v49 = 0;
  v48 = v3;
  v50 = 0x3120726564616548;
  v53[10] = sub_26A80A810;
  v51 = 0xE800000000000000;
  v4 = swift_getKeyPath();
  if (qword_2803A9068 != -1)
  {
    swift_once();
  }

  sub_26A4EA070(&unk_2803D29E0, v47, &qword_2803AA880, &unk_26A8567F0);
  sub_26A6AEE74(v68);
  memcpy(v46, v68, sizeof(v46));
  v47[10] = sub_26A80A810;
  v47[11] = 0;
  v42 = v4;
  v43 = 0;
  v44 = 0xD000000000000013;
  v45 = 0x800000026A88ED10;
  v5 = swift_getKeyPath();
  if (qword_2803A9070 != -1)
  {
    swift_once();
  }

  sub_26A4EA070(&unk_2803D2A30, v41, &qword_2803AA880, &unk_26A8567F0);
  sub_26A6AEE74(v69);
  memcpy(v40, v69, sizeof(v40));
  v41[10] = sub_26A80A810;
  v41[11] = 0;
  v36 = v5;
  v37 = 0;
  v38 = 0x3220726564616548;
  v39 = 0xE800000000000000;
  v6 = swift_getKeyPath();
  if (qword_2803A9078 != -1)
  {
    swift_once();
  }

  sub_26A4EA070(&unk_2803D2A80, v35, &qword_2803AA880, &unk_26A8567F0);
  sub_26A6AEE74(v70);
  memcpy(v34, v70, sizeof(v34));
  v35[10] = sub_26A80A810;
  v35[11] = 0;
  v30 = v6;
  v31 = 0;
  v32 = 0x3320726564616548;
  v33 = 0xE800000000000000;
  v7 = swift_getKeyPath();
  if (qword_2803A9080 != -1)
  {
    swift_once();
  }

  sub_26A4EA070(&unk_2803D2AD0, v29, &qword_2803AA880, &unk_26A8567F0);
  sub_26A6AEE74(v71);
  memcpy(v28, v71, sizeof(v28));
  v29[10] = sub_26A80A810;
  v29[11] = 0;
  v24 = v7;
  v25 = 0;
  v26 = 0xD000000000000016;
  v27 = 0x800000026A88ED30;
  v8 = swift_getKeyPath();
  if (qword_2803A9088 != -1)
  {
    swift_once();
  }

  sub_26A4EA070(&unk_2803D2B20, v23, &qword_2803AA880, &unk_26A8567F0);
  sub_26A6AEE74(__src);
  memcpy(v22, __src, sizeof(v22));
  v23[10] = sub_26A80A810;
  v23[11] = 0;
  v19 = v8;
  v20 = 0;
  strcpy(v21, "Header Subtext");
  v21[15] = -18;
  sub_26A4EA070(&v59, v17, &qword_2803AE648, &unk_26A861C30);
  v18[0] = v17;
  sub_26A4EA070(&v54, v16, &qword_2803AE648, &unk_26A861C30);
  v18[1] = v16;
  sub_26A4EA070(&v48, v15, &qword_2803AE648, &unk_26A861C30);
  v18[2] = v15;
  sub_26A4EA070(&v42, v14, &qword_2803AE648, &unk_26A861C30);
  v18[3] = v14;
  sub_26A4EA070(&v36, v13, &qword_2803AE648, &unk_26A861C30);
  v18[4] = v13;
  sub_26A4EA070(&v30, v12, &qword_2803AE648, &unk_26A861C30);
  v18[5] = v12;
  sub_26A4EA070(&v24, v11, &qword_2803AE648, &unk_26A861C30);
  v18[6] = v11;
  sub_26A4EA070(&v19, &v10, &qword_2803AE648, &unk_26A861C30);
  v18[7] = &v10;
  sub_26A594818(v18);
  sub_26A4E2544(&v19, &qword_2803AE648, &unk_26A861C30);
  sub_26A4E2544(&v24, &qword_2803AE648, &unk_26A861C30);
  sub_26A4E2544(&v30, &qword_2803AE648, &unk_26A861C30);
  sub_26A4E2544(&v36, &qword_2803AE648, &unk_26A861C30);
  sub_26A4E2544(&v42, &qword_2803AE648, &unk_26A861C30);
  sub_26A4E2544(&v48, &qword_2803AE648, &unk_26A861C30);
  sub_26A4E2544(&v54, &qword_2803AE648, &unk_26A861C30);
  sub_26A4E2544(&v59, &qword_2803AE648, &unk_26A861C30);
  sub_26A4E2544(&v10, &qword_2803AE648, &unk_26A861C30);
  sub_26A4E2544(v11, &qword_2803AE648, &unk_26A861C30);
  sub_26A4E2544(v12, &qword_2803AE648, &unk_26A861C30);
  sub_26A4E2544(v13, &qword_2803AE648, &unk_26A861C30);
  sub_26A4E2544(v14, &qword_2803AE648, &unk_26A861C30);
  sub_26A4E2544(v15, &qword_2803AE648, &unk_26A861C30);
  sub_26A4E2544(v16, &qword_2803AE648, &unk_26A861C30);
  return sub_26A4E2544(v17, &qword_2803AE648, &unk_26A861C30);
}

uint64_t sub_26A719EE0(uint64_t a1)
{
  MEMORY[0x28223BE20](a1);
  KeyPath = swift_getKeyPath();
  if (qword_2803A90A8 != -1)
  {
    swift_once();
  }

  sub_26A4EA070(&unk_2803D2C60, v57, &qword_2803AA880, &unk_26A8567F0);
  sub_26A6AEE74(v58);
  memcpy(v56, v58, sizeof(v56));
  v57[10] = sub_26A80A810;
  v57[11] = 0;
  v52 = KeyPath;
  v53 = 0;
  v54 = 0xD000000000000011;
  v55 = 0x800000026A88ED50;
  v2 = swift_getKeyPath();
  if (qword_2803A90B0 != -1)
  {
    swift_once();
  }

  sub_26A4EA070(&unk_2803D2CB0, v51, &qword_2803AA880, &unk_26A8567F0);
  sub_26A6AEE74(v59);
  memcpy(v50, v59, sizeof(v50));
  v51[10] = sub_26A80A810;
  v51[11] = 0;
  v46 = v2;
  v47 = 0;
  v48 = 0xD00000000000001BLL;
  v49 = 0x800000026A88ED70;
  v3 = swift_getKeyPath();
  if (qword_2803A90B8 != -1)
  {
    swift_once();
  }

  sub_26A4EA070(&unk_2803D2D00, v45, &qword_2803AA880, &unk_26A8567F0);
  sub_26A6AEE74(v60);
  memcpy(v44, v60, sizeof(v44));
  v45[10] = sub_26A80A810;
  v45[11] = 0;
  v41 = v3;
  v42 = 0;
  strcpy(v43, "Control Label");
  v43[7] = -4864;
  v4 = swift_getKeyPath();
  if (qword_2803A90C0 != -1)
  {
    swift_once();
  }

  sub_26A4EA070(&unk_2803D2D50, v40, &qword_2803AA880, &unk_26A8567F0);
  sub_26A6AEE74(v61);
  memcpy(v39, v61, sizeof(v39));
  v40[10] = sub_26A80A810;
  v40[11] = 0;
  v35 = v4;
  v36 = 0;
  v37 = 0xD000000000000018;
  v38 = 0x800000026A88ED90;
  v5 = swift_getKeyPath();
  if (qword_2803A90C8 != -1)
  {
    swift_once();
  }

  sub_26A4EA070(&unk_2803D2DA0, v34, &qword_2803AA880, &unk_26A8567F0);
  sub_26A6AEE74(v62);
  memcpy(v33, v62, sizeof(v33));
  v34[10] = sub_26A80A810;
  v34[11] = 0;
  v29 = v5;
  v30 = 0;
  v31 = 0xD000000000000018;
  v32 = 0x800000026A88EDB0;
  v6 = swift_getKeyPath();
  if (qword_2803A90D0 != -1)
  {
    swift_once();
  }

  sub_26A4EA070(&unk_2803D2DF0, v28, &qword_2803AA880, &unk_26A8567F0);
  sub_26A6AEE74(v63);
  memcpy(v27, v63, sizeof(v27));
  v28[10] = sub_26A80A810;
  v28[11] = 0;
  v23 = v6;
  v24 = 0;
  v25 = 0xD00000000000001ALL;
  v26 = 0x800000026A88EDD0;
  v7 = swift_getKeyPath();
  if (qword_2803A90D8 != -1)
  {
    swift_once();
  }

  sub_26A4EA070(&unk_2803D2E40, v22, &qword_2803AA880, &unk_26A8567F0);
  sub_26A6AEE74(__src);
  memcpy(v21, __src, sizeof(v21));
  v22[10] = sub_26A80A810;
  v22[11] = 0;
  v17 = v7;
  v18 = 0;
  v19 = 0xD00000000000001ELL;
  v20 = 0x800000026A88EDF0;
  sub_26A4EA070(&v52, v15, &qword_2803AE648, &unk_26A861C30);
  v16[0] = v15;
  sub_26A4EA070(&v46, v14, &qword_2803AE648, &unk_26A861C30);
  v16[1] = v14;
  sub_26A4EA070(&v41, v13, &qword_2803AE648, &unk_26A861C30);
  v16[2] = v13;
  sub_26A4EA070(&v35, v12, &qword_2803AE648, &unk_26A861C30);
  v16[3] = v12;
  sub_26A4EA070(&v29, v11, &qword_2803AE648, &unk_26A861C30);
  v16[4] = v11;
  sub_26A4EA070(&v23, v10, &qword_2803AE648, &unk_26A861C30);
  v16[5] = v10;
  sub_26A4EA070(&v17, v9, &qword_2803AE648, &unk_26A861C30);
  v16[6] = v9;
  sub_26A5948B0(v16);
  sub_26A4E2544(&v17, &qword_2803AE648, &unk_26A861C30);
  sub_26A4E2544(&v23, &qword_2803AE648, &unk_26A861C30);
  sub_26A4E2544(&v29, &qword_2803AE648, &unk_26A861C30);
  sub_26A4E2544(&v35, &qword_2803AE648, &unk_26A861C30);
  sub_26A4E2544(&v41, &qword_2803AE648, &unk_26A861C30);
  sub_26A4E2544(&v46, &qword_2803AE648, &unk_26A861C30);
  sub_26A4E2544(&v52, &qword_2803AE648, &unk_26A861C30);
  sub_26A4E2544(v9, &qword_2803AE648, &unk_26A861C30);
  sub_26A4E2544(v10, &qword_2803AE648, &unk_26A861C30);
  sub_26A4E2544(v11, &qword_2803AE648, &unk_26A861C30);
  sub_26A4E2544(v12, &qword_2803AE648, &unk_26A861C30);
  sub_26A4E2544(v13, &qword_2803AE648, &unk_26A861C30);
  sub_26A4E2544(v14, &qword_2803AE648, &unk_26A861C30);
  return sub_26A4E2544(v15, &qword_2803AE648, &unk_26A861C30);
}

uint64_t sub_26A71A648(uint64_t a1, char a2)
{
  v4 = sub_26A84F988();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v10[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if ((a2 & 1) == 0)
  {

    sub_26A851EA8();
    v8 = sub_26A8501F8();
    sub_26A84EA78();

    sub_26A84F978();
    swift_getAtKeyPath();
    sub_26A49035C(a1, 0);
    (*(v5 + 8))(v7, v4);
    LOBYTE(a1) = v10[15];
  }

  return a1 & 1;
}

void *sub_26A71A790@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = sub_26A84FA78();
  v19 = 0;
  sub_26A71A888(a1, a2 & 1, a3, a4, __src);
  memcpy(__dst, __src, 0x81uLL);
  memcpy(v21, __src, sizeof(v21));
  sub_26A4EA070(__dst, v16, &qword_2803B5AB0, &qword_26A87C068);
  OUTLINED_FUNCTION_111();
  sub_26A4E2544(v11, v12, v13);
  memcpy(&v18[7], __dst, 0x81uLL);
  v14 = v19;
  *a5 = v10;
  *(a5 + 8) = 0x4024000000000000;
  *(a5 + 16) = v14;
  return memcpy((a5 + 17), v18, 0x88uLL);
}

uint64_t sub_26A71A888@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  *&v28 = a3;
  *(&v28 + 1) = a4;
  sub_26A53ACC8();

  v8 = sub_26A850898();
  v10 = v9;
  v12 = v11;
  v14 = v13;
  KeyPath = swift_getKeyPath();
  v15 = v12 & 1;
  LOBYTE(v28) = v12 & 1;
  LOBYTE(v31[0]) = 0;
  if (sub_26A71A648(a1, a2 & 1))
  {
    v16 = 0x800000026A88ECB0;
    v17 = swift_getKeyPath();

    v18 = MEMORY[0x277D84F90];
    v19 = 0xD000000000000057;
    v20 = 4;
  }

  else
  {
    v19 = 0;
    v16 = 0;
    v18 = 0;
    v17 = 0;
    v20 = 0;
  }

  *&v25 = v8;
  *(&v25 + 1) = v10;
  LOBYTE(v26) = v15;
  *(&v26 + 1) = v14;
  *v27 = 257;
  *&v27[8] = KeyPath;
  *&v27[16] = 1;
  v27[24] = 0;
  v29 = v26;
  *v30 = *v27;
  *&v30[9] = *&v27[9];
  v28 = v25;
  sub_26A4EA070(&v25, v31, &qword_2803B5AB8, &unk_26A87C0A0);
  sub_26A71B3B0(v19, v16, 0, v18);
  sub_26A71B400(v19, v16, 0, v18);
  v21 = v29;
  *a5 = v28;
  *(a5 + 16) = v21;
  v22 = *&v30[16];
  *(a5 + 32) = *v30;
  *(a5 + 48) = v22;
  *(a5 + 64) = 0;
  *(a5 + 72) = 1;
  *(a5 + 80) = v19;
  *(a5 + 88) = v16;
  *(a5 + 96) = 0;
  *(a5 + 104) = v18;
  *(a5 + 112) = v17;
  *(a5 + 120) = v20;
  *(a5 + 128) = 0;
  sub_26A71B400(v19, v16, 0, v18);
  v31[0] = v8;
  v31[1] = v10;
  v32 = v15;
  v33 = v14;
  v34 = 257;
  v35 = KeyPath;
  v36 = 1;
  v37 = 0;
  return sub_26A4E2544(v31, &qword_2803B5AB8, &unk_26A87C0A0);
}

uint64_t sub_26A71AAD8()
{
  sub_26A71B450();
  sub_26A84F998();
  return v1;
}

unint64_t sub_26A71AB50()
{
  result = qword_2803B5A08;
  if (!qword_2803B5A08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B5A00, &qword_26A87BE30);
    sub_26A71AC34(&qword_2803B5A10, &qword_2803B5A18, &qword_26A87BE38, sub_26A71ACE4);
    sub_26A71AC34(&qword_2803B5A40, &qword_2803B5A48, &qword_26A87BE50, sub_26A71ADC8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B5A08);
  }

  return result;
}

uint64_t sub_26A71AC34(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    sub_26A4DBCC8(&qword_28157FB50, &unk_2803B31B0, &unk_26A858ED0, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_26A71ACE4()
{
  result = qword_2803B5A20;
  if (!qword_2803B5A20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B5A28, &qword_26A87BE40);
    sub_26A4DBCC8(&qword_2803B5A30, &qword_2803B5A38, &qword_26A87BE48, MEMORY[0x277CE1198]);
    sub_26A4DBCC8(&qword_2803ADC60, &qword_2803ADC68, &qword_26A85FCF0, MEMORY[0x277CE0728]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B5A20);
  }

  return result;
}

unint64_t sub_26A71ADC8()
{
  result = qword_2803B5A50;
  if (!qword_2803B5A50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B5A58, &qword_26A87BE58);
    sub_26A4DBCC8(&qword_2803B5A60, &qword_2803B5A68, &qword_26A87BE60, MEMORY[0x277CE1198]);
    sub_26A4DBCC8(&qword_2803ADC60, &qword_2803ADC68, &qword_26A85FCF0, MEMORY[0x277CE0728]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B5A50);
  }

  return result;
}

unint64_t sub_26A71AEAC()
{
  result = qword_2803B5A78;
  if (!qword_2803B5A78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B5A80, &qword_26A87BE68);
    sub_26A4DBCC8(&qword_2803B5A88, &qword_2803B5A90, &qword_26A87BE70, MEMORY[0x277CE1198]);
    sub_26A4DBCC8(&qword_2803ADC60, &qword_2803ADC68, &qword_26A85FCF0, MEMORY[0x277CE0728]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B5A78);
  }

  return result;
}

unint64_t sub_26A71AF94()
{
  result = qword_2803B5A98;
  if (!qword_2803B5A98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B5A98);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TextStylesView(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFF)
  {
    if (a2 + 65281 <= 0xFFFEFFFF)
    {
      v2 = 2;
    }

    else
    {
      v2 = 4;
    }

    if (a2 + 65281 < 0xFF0000)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = *(a1 + 2);
      if (!*(a1 + 2))
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 16)) - 65282;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *(a1 + 1);
  v7 = v6 >= 2;
  v5 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for TextStylesView(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65281 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65281 < 0xFF0000)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 16) + 1;
    *result = a2 - 255;
    switch(v5)
    {
      case 1:
        *(result + 2) = v6;
        break;
      case 2:
        *(result + 2) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 2) = v6;
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
        *(result + 2) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 2) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 2) = 0;
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
          *(result + 1) = a2 + 1;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for TextStylesView.StyleType(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_26A71B250()
{
  result = qword_2803B5AA0;
  if (!qword_2803B5AA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B5AA8, &qword_26A87BF80);
    sub_26A71AB50();
    sub_26A71AC34(&qword_2803B5A70, &qword_2803B59F8, &qword_26A87BE28, sub_26A71AEAC);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B5AA0);
  }

  return result;
}

uint64_t sub_26A71B308(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 32))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 24);
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

uint64_t sub_26A71B348(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_26A71B3B0(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_26A4EF6C0(result, a2, a3 & 1);
  }

  return result;
}

double sub_26A71B400(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_26A4EC448(a1, a2, a3 & 1);
  }

  return result;
}

unint64_t sub_26A71B450()
{
  result = qword_2803B5AC0;
  if (!qword_2803B5AC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B5AC0);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_3_70(uint64_t a1)
{

  return sub_26A4EA070(a1, &STACK[0x16F0], v1, v2);
}

uint64_t Form.__allocating_init()()
{
  v0 = swift_allocObject();
  Form.init()(v0);
  return v0;
}

uint64_t sub_26A71B578@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v4 = -1 << *(a1 + 32);
  *a4 = a1;
  v7 = *(a1 + 64);
  result = a1 + 64;
  v6 = v7;
  v8 = ~v4;
  v9 = -v4;
  a4[1] = result;
  a4[2] = v8;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  else
  {
    v10 = -1;
  }

  a4[3] = 0;
  a4[4] = v10 & v6;
  a4[5] = a2;
  a4[6] = a3;
  return result;
}

uint64_t Form.state.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_26A84EC18();
}

uint64_t sub_26A71B634(uint64_t *a1)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_26A84EC28();
}

uint64_t Form.$state.getter(uint64_t a1)
{
  OUTLINED_FUNCTION_31_12(a1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B5AD8, &qword_26A87C150);
  sub_26A84EBE8();
  return swift_endAccess();
}

uint64_t sub_26A71B708(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B5AE0, &qword_26A87C1E0);
  v3 = MEMORY[0x28223BE20](v2);
  v5 = &v8 - v4;
  (*(v6 + 16))(&v8 - v4, a1, v3);
  return sub_26A71B7DC(v5);
}

uint64_t sub_26A71B7DC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B5AE0, &qword_26A87C1E0);
  OUTLINED_FUNCTION_15();
  v4 = v3;
  v6 = MEMORY[0x28223BE20](v5);
  (*(v4 + 16))(&v9 - v7, a1, v2, v6);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B5AD8, &qword_26A87C150);
  sub_26A84EBF8();
  swift_endAccess();
  return (*(v4 + 8))(a1, v2);
}

double Form.controls.getter()
{
  swift_beginAccess();

  return result;
}

uint64_t Form.init()(uint64_t a1)
{
  if (qword_28157DB78 != -1)
  {
    a1 = OUTLINED_FUNCTION_4_67(&qword_28157DB78);
  }

  OUTLINED_FUNCTION_31_12(a1);

  sub_26A84EBD8();
  swift_endAccess();
  *(v1 + OBJC_IVAR____TtC9SnippetUI4Form_controls) = sub_26A8516A8();
  return v1;
}

uint64_t Form.updateControl(_:state:)(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v6 = *a3;
  v7 = OBJC_IVAR____TtC9SnippetUI4Form_controls;
  swift_beginAccess();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v59 = *(v3 + v7);
  sub_26A65594C(v6, a1, a2, isUniquelyReferenced_nonNull_native);
  *(v3 + v7) = v59;

  swift_endAccess();
  v9 = *(v3 + v7);
  v10 = qword_28157DB78;

  if (v10 != -1)
  {
    goto LABEL_42;
  }

LABEL_2:
  v11 = v9 + 64;
  v12 = off_28157DB80;
  v13 = 1 << *(v9 + 32);
  v14 = -1;
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  v15 = v14 & *(v9 + 64);
  v16 = (v13 + 63) >> 6;

  v17 = 0;
  v47 = v9 + 64;
  v48 = v9;
  v46 = v16;
LABEL_5:
  while (1)
  {
    v18 = v12;
    if (!v15)
    {
      break;
    }

    v19 = v15;
LABEL_11:
    v12 = 0;
    v15 = (v19 - 1) & v19;
    if (v18)
    {
      v12 = *(*(v9 + 56) + ((v17 << 9) | (8 * __clz(__rbit64(v19)))));
      if (v12)
      {
        v49 = (v19 - 1) & v19;
        swift_bridgeObjectRetain_n();

        v21 = swift_isUniquelyReferenced_nonNull_native();
        v68 = v18;
        sub_26A71B578(v12, sub_26A71CDA0, 0, v69);
        v22 = v69[1];
        v23 = v69[3];
        v24 = v69[4];
        v50 = v69[0];
        v51 = v69[5];
        v25 = (v69[2] + 64) >> 6;

        v12 = v18;
        while (1)
        {
          v26 = v24;
          v9 = v23;
          if (!v24)
          {
            v27 = v23;
            while (1)
            {
              v9 = v27 + 1;
              if (__OFADD__(v27, 1))
              {
                break;
              }

              if (v9 >= v25)
              {
                v63 = 0;
                v61 = 0u;
                v62 = 0u;
                v59 = 0u;
                v60 = 0u;
                goto LABEL_35;
              }

              v26 = *(v22 + 8 * v9);
              ++v27;
              if (v26)
              {
                goto LABEL_19;
              }
            }

            __break(1u);
LABEL_39:
            __break(1u);
LABEL_40:
            __break(1u);
LABEL_41:
            __break(1u);
LABEL_42:
            OUTLINED_FUNCTION_4_67(&qword_28157DB78);
            goto LABEL_2;
          }

LABEL_19:
          v52 = (v26 - 1) & v26;
          v28 = __clz(__rbit64(v26)) | (v9 << 6);
          sub_26A549760(*(v50 + 48) + 40 * v28, &v53);
          sub_26A5136A0(*(v50 + 56) + 32 * v28, v58);
          v59 = v53;
          v60 = v54;
          *&v61 = v55;
          sub_26A576F3C(v58, (&v61 + 8));
          v29 = v9;
          if (!*(&v60 + 1))
          {
LABEL_35:
            v67 = 0;
            memset(v66, 0, sizeof(v66));
            v64 = 0u;
            v65 = 0u;
LABEL_36:

            swift_bridgeObjectRelease_n();
            sub_26A55E6A0();

            v11 = v47;
            v9 = v48;
            v16 = v46;
            v15 = v49;
            goto LABEL_5;
          }

          v53 = v59;
          v54 = v60;
          v55 = v61;
          v56 = v62;
          v57 = v63;
          v51(&v64, &v53);
          sub_26A71CDB4(&v53);
          if (!*(&v65 + 1))
          {
            goto LABEL_36;
          }

          v59 = v64;
          v60 = v65;
          *&v61 = *&v66[0];
          sub_26A576F3C((v66 + 8), &v53);
          v9 = v12;
          v31 = sub_26A548744();
          v32 = v12[2];
          v33 = (v30 & 1) == 0;
          v34 = v32 + v33;
          if (__OFADD__(v32, v33))
          {
            goto LABEL_40;
          }

          v35 = v30;
          if (v12[3] >= v34)
          {
            if (v21)
            {
              if (v30)
              {
                goto LABEL_28;
              }
            }

            else
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803ADC08, &qword_26A85FA60);
              v9 = &v68;
              sub_26A8523F8();
              if (v35)
              {
                goto LABEL_28;
              }
            }
          }

          else
          {
            sub_26A71CA10(v34, v21 & 1);
            v9 = v68;
            v36 = sub_26A548744();
            if ((v35 & 1) != (v37 & 1))
            {
              result = sub_26A852618();
              __break(1u);
              return result;
            }

            v31 = v36;
            if (v35)
            {
LABEL_28:
              sub_26A5497BC(&v59);
              v12 = v68;
              v38 = (v68[7] + 32 * v31);
              __swift_destroy_boxed_opaque_existential_1(v38);
              sub_26A576F3C(&v53, v38);
              goto LABEL_33;
            }
          }

          v12 = v68;
          v68[(v31 >> 6) + 8] |= 1 << v31;
          v39 = v12[6] + 40 * v31;
          v40 = v61;
          v41 = v60;
          *v39 = v59;
          *(v39 + 16) = v41;
          *(v39 + 32) = v40;
          sub_26A576F3C(&v53, (v12[7] + 32 * v31));
          v42 = v12[2];
          v43 = __OFADD__(v42, 1);
          v44 = v42 + 1;
          if (v43)
          {
            goto LABEL_41;
          }

          v12[2] = v44;
LABEL_33:
          v21 = 1;
          v23 = v29;
          v24 = v52;
        }
      }
    }
  }

  while (1)
  {
    v20 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      goto LABEL_39;
    }

    if (v20 >= v16)
    {
      break;
    }

    v19 = *(v11 + 8 * v20);
    ++v17;
    if (v19)
    {
      v17 = v20;
      goto LABEL_11;
    }
  }

  *&v64 = v12;
  return sub_26A71B634(&v64);
}

uint64_t Form.deinit()
{
  v1 = OBJC_IVAR____TtC9SnippetUI4Form__state;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B5AD8, &qword_26A87C150);
  OUTLINED_FUNCTION_1_4();
  (*(v2 + 8))(v0 + v1);

  return v0;
}

uint64_t Form.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC9SnippetUI4Form__state;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B5AD8, &qword_26A87C150);
  OUTLINED_FUNCTION_1_4();
  (*(v2 + 8))(v0 + v1);

  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v3, v4);
}

double static Form.State.validEmpty.getter@<D0>(void *a1@<X8>)
{
  if (qword_28157DB78 != -1)
  {
    OUTLINED_FUNCTION_4_67(&qword_28157DB78);
  }

  *a1 = off_28157DB80;

  return result;
}

void sub_26A71C0F4()
{
  OUTLINED_FUNCTION_9_49();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B5B00, &unk_26A87C200);
  v4 = OUTLINED_FUNCTION_12_39();
  OUTLINED_FUNCTION_26_14(v4, v5);
  OUTLINED_FUNCTION_24_23();
  if (!v6)
  {
LABEL_29:

LABEL_30:
    *v0 = v1;
    return;
  }

  v37 = v0;
  v7 = 0;
  v8 = v2 + 8;
  OUTLINED_FUNCTION_0_66();
  v11 = v10 & v9;
  v13 = (v12 + 63) >> 6;
  v14 = v1 + 64;
  if ((v10 & v9) == 0)
  {
LABEL_4:
    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v13)
      {
        break;
      }

      ++v16;
      if (v8[v7])
      {
        OUTLINED_FUNCTION_2_66();
        v11 = v18 & v17;
        goto LABEL_9;
      }
    }

    if ((v3 & 1) == 0)
    {

      v0 = v37;
      goto LABEL_30;
    }

    OUTLINED_FUNCTION_3_71();
    v0 = v37;
    if (v32 != v33)
    {
      OUTLINED_FUNCTION_18_26();
      *v8 = v34;
    }

    else
    {
      v35 = OUTLINED_FUNCTION_7_55();
      sub_26A6B8F84(v35, v36, (v2 + 8));
    }

    v2[2] = 0;
    goto LABEL_29;
  }

  while (1)
  {
    v15 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
LABEL_9:
    v19 = v15 | (v7 << 6);
    v20 = *(v2[6] + 8 * v19);
    v21 = *(v2[7] + 8 * v19);
    if ((v3 & 1) == 0)
    {
    }

    sub_26A8526A8();
    OUTLINED_FUNCTION_14_35();
    if (((v24 << v23) & ~*(v14 + 8 * v22)) == 0)
    {
      break;
    }

    OUTLINED_FUNCTION_2_78();
LABEL_21:
    OUTLINED_FUNCTION_5_64();
    *(v14 + v29) |= v30;
    *(*(v1 + 48) + 8 * v31) = v20;
    *(*(v1 + 56) + 8 * v31) = v21;
    OUTLINED_FUNCTION_16_26();
    if (!v11)
    {
      goto LABEL_4;
    }
  }

  OUTLINED_FUNCTION_0_79();
  while (1)
  {
    OUTLINED_FUNCTION_17_26();
    if (v28)
    {
      if (v26)
      {
        break;
      }
    }

    if (v25 == v27)
    {
      v25 = 0;
    }

    if (*(v14 + 8 * v25) != -1)
    {
      OUTLINED_FUNCTION_6_54();
      goto LABEL_21;
    }
  }

LABEL_32:
  __break(1u);
}

void sub_26A71C2BC()
{
  OUTLINED_FUNCTION_9_49();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803ACC18, &qword_26A85C1D8);
  v5 = OUTLINED_FUNCTION_12_39();
  OUTLINED_FUNCTION_26_14(v5, v6);
  OUTLINED_FUNCTION_24_23();
  if (!v7)
  {

LABEL_26:
    *v0 = v1;
    return;
  }

  v24 = v0;
  v8 = 0;
  v9 = v2 + 8;
  OUTLINED_FUNCTION_1_82();
  if (!v0)
  {
LABEL_4:
    v11 = v8;
    while (1)
    {
      v8 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v8 >= v4)
      {
        break;
      }

      ++v11;
      if (v9[v8])
      {
        OUTLINED_FUNCTION_2_66();
        v0 = (v13 & v12);
        goto LABEL_9;
      }
    }

    if (v3)
    {
      OUTLINED_FUNCTION_3_71();
      if (v19 != v20)
      {
        OUTLINED_FUNCTION_18_26();
        *v9 = v21;
      }

      else
      {
        v22 = OUTLINED_FUNCTION_7_55();
        sub_26A6B8F84(v22, v23, (v2 + 8));
      }

      v2[2] = 0;
    }

    v0 = v24;
    goto LABEL_26;
  }

  while (1)
  {
    OUTLINED_FUNCTION_13_35();
LABEL_9:
    v25 = *(v2[7] + 16 * (v10 | (v8 << 6)));
    sub_26A8526A8();
    OUTLINED_FUNCTION_11_42();
    if (v14)
    {
      break;
    }

    OUTLINED_FUNCTION_2_78();
LABEL_17:
    OUTLINED_FUNCTION_5_64();
    OUTLINED_FUNCTION_19_23(v16);
    *(v18 + 16 * v17) = v25;
    OUTLINED_FUNCTION_16_26();
    if (!v0)
    {
      goto LABEL_4;
    }
  }

  OUTLINED_FUNCTION_0_79();
  while (1)
  {
    OUTLINED_FUNCTION_17_26();
    if (v14)
    {
      if (v15)
      {
        break;
      }
    }

    OUTLINED_FUNCTION_20_26();
    if (!v14)
    {
      OUTLINED_FUNCTION_6_54();
      goto LABEL_17;
    }
  }

LABEL_28:
  __break(1u);
}

void sub_26A71C43C(void *a1, char a2)
{
  v3 = v2;
  v51 = sub_26A84ACC8();
  OUTLINED_FUNCTION_15();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_3_15();
  v50 = v9;
  v10 = *v3;
  if (*(*v3 + 24) > a1)
  {
    a1 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B5AF0, &qword_26A87C1F0);
  v11 = OUTLINED_FUNCTION_12_39();
  v49 = a2;
  OUTLINED_FUNCTION_26_14(v11, v12);
  OUTLINED_FUNCTION_24_23();
  if (!v13)
  {
LABEL_32:

LABEL_33:
    *v3 = a1;
    return;
  }

  v46 = v3;
  v14 = 0;
  v15 = v10 + 8;
  OUTLINED_FUNCTION_0_66();
  v18 = v17 & v16;
  v20 = (v19 + 63) >> 6;
  v47 = (v7 + 16);
  v48 = v7;
  v21 = (v7 + 32);
  v22 = a1 + 8;
  if ((v17 & v16) == 0)
  {
LABEL_6:
    v24 = v14;
    while (1)
    {
      v14 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v14 >= v20)
      {
        break;
      }

      ++v24;
      if (v15[v14])
      {
        OUTLINED_FUNCTION_2_66();
        v18 = v26 & v25;
        goto LABEL_11;
      }
    }

    if ((v49 & 1) == 0)
    {

      v3 = v46;
      goto LABEL_33;
    }

    OUTLINED_FUNCTION_3_71();
    v3 = v46;
    if (v41 != v42)
    {
      OUTLINED_FUNCTION_18_26();
      *v15 = v43;
    }

    else
    {
      v44 = OUTLINED_FUNCTION_7_55();
      sub_26A6B8F84(v44, v45, (v10 + 8));
    }

    v10[2] = 0;
    goto LABEL_32;
  }

  while (1)
  {
    v23 = __clz(__rbit64(v18));
    v18 &= v18 - 1;
LABEL_11:
    v27 = v23 | (v14 << 6);
    v28 = *(v10[6] + 8 * v27);
    v29 = *(v7 + 72);
    v30 = v10[7] + v29 * v27;
    if (v49)
    {
      (*v21)(v50, v30, v51);
    }

    else
    {
      (*v47)(v50, v30, v51);
    }

    sub_26A8526A8();
    OUTLINED_FUNCTION_14_35();
    if (((v33 << v32) & ~v22[v31]) == 0)
    {
      break;
    }

    OUTLINED_FUNCTION_2_78();
LABEL_24:
    OUTLINED_FUNCTION_5_64();
    *(v22 + v38) |= v39;
    *(a1[6] + 8 * v40) = v28;
    (*v21)(a1[7] + v29 * v40, v50, v51);
    OUTLINED_FUNCTION_16_26();
    v7 = v48;
    if (!v18)
    {
      goto LABEL_6;
    }
  }

  OUTLINED_FUNCTION_0_79();
  while (1)
  {
    OUTLINED_FUNCTION_17_26();
    if (v37)
    {
      if (v35)
      {
        break;
      }
    }

    if (v34 == v36)
    {
      v34 = 0;
    }

    if (v22[v34] != -1)
    {
      OUTLINED_FUNCTION_6_54();
      goto LABEL_24;
    }
  }

LABEL_35:
  __break(1u);
}

void sub_26A71C6DC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = sub_26A84ACC8();
  OUTLINED_FUNCTION_15();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_3_15();
  v46 = v9;
  v10 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B5AF8, &qword_26A87C1F8);
  v45 = v4;
  v11 = sub_26A852478();
  if (!*(v10 + 16))
  {
LABEL_29:

LABEL_30:
    *v3 = v11;
    return;
  }

  v42 = v2;
  v12 = 0;
  v13 = (v10 + 64);
  OUTLINED_FUNCTION_0_66();
  v16 = v15 & v14;
  v18 = (v17 + 63) >> 6;
  v43 = v10;
  v44 = v7;
  v47 = (v7 + 32);
  v19 = v11 + 8;
  if ((v15 & v14) == 0)
  {
LABEL_4:
    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v12 >= v18)
      {
        break;
      }

      ++v21;
      if (v13[v12])
      {
        OUTLINED_FUNCTION_2_66();
        v16 = v23 & v22;
        goto LABEL_9;
      }
    }

    if ((v45 & 1) == 0)
    {

      v3 = v42;
      goto LABEL_30;
    }

    v3 = v42;
    if (1 << *(v10 + 32) >= 64)
    {
      v40 = OUTLINED_FUNCTION_7_55();
      sub_26A6B8F84(v40, v41, v13);
    }

    else
    {
      OUTLINED_FUNCTION_18_26();
      *v13 = v39;
    }

    *(v10 + 16) = 0;
    goto LABEL_29;
  }

  while (1)
  {
    v20 = __clz(__rbit64(v16));
    v16 &= v16 - 1;
LABEL_9:
    v24 = v20 | (v12 << 6);
    v48 = *(v44 + 72);
    v25 = OUTLINED_FUNCTION_21_25();
    v26(v25);
    v27 = *(*(v10 + 56) + 8 * v24);
    if ((v45 & 1) == 0)
    {
    }

    sub_26A625378();
    sub_26A8516E8();
    OUTLINED_FUNCTION_14_35();
    v31 = (v30 << v28) & ~v19[v29];
    if (!v31)
    {
      break;
    }

    v32 = __clz(__rbit64(v31)) | v28 & 0x7FFFFFFFFFFFFFC0;
    v33 = v46;
LABEL_21:
    *(v19 + ((v32 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v32;
    (*v47)(v11[6] + v48 * v32, v33, v5);
    *(v11[7] + 8 * v32) = v27;
    ++v11[2];
    v10 = v43;
    if (!v16)
    {
      goto LABEL_4;
    }
  }

  OUTLINED_FUNCTION_0_79();
  v33 = v46;
  while (1)
  {
    OUTLINED_FUNCTION_17_26();
    if (v37)
    {
      if (v35)
      {
        break;
      }
    }

    if (v34 == v36)
    {
      v34 = 0;
    }

    v38 = v19[v34];
    if (v38 != -1)
    {
      v32 = __clz(__rbit64(~v38)) + (v34 << 6);
      goto LABEL_21;
    }
  }

LABEL_32:
  __break(1u);
}

void sub_26A71CA10(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  v5 = a2;
  v6 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B5AE8, &qword_26A87C1E8);
  OUTLINED_FUNCTION_12_39();
  v7 = sub_26A852478();
  if (!v6[2])
  {

LABEL_29:
    *v4 = v7;
    return;
  }

  v31 = v2;
  v8 = 0;
  v9 = v6 + 8;
  OUTLINED_FUNCTION_1_82();
  if (!v2)
  {
LABEL_4:
    v11 = v8;
    while (1)
    {
      v8 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v8 >= v3)
      {
        break;
      }

      ++v11;
      if (v9[v8])
      {
        OUTLINED_FUNCTION_2_66();
        v4 = (v13 & v12);
        goto LABEL_9;
      }
    }

    if (v5)
    {
      OUTLINED_FUNCTION_3_71();
      if (v26 != v27)
      {
        OUTLINED_FUNCTION_18_26();
        *v9 = v28;
      }

      else
      {
        v29 = OUTLINED_FUNCTION_7_55();
        sub_26A6B8F84(v29, v30, (v6 + 8));
      }

      v6[2] = 0;
    }

    v4 = v31;
    goto LABEL_29;
  }

  while (1)
  {
    OUTLINED_FUNCTION_13_35();
LABEL_9:
    v14 = v10 | (v8 << 6);
    v15 = v6[6] + 40 * v14;
    if (v5)
    {
      v16 = *v15;
      v17 = *(v15 + 16);
      v35 = *(v15 + 32);
      v33 = v16;
      v34 = v17;
      sub_26A576F3C((v6[7] + 32 * v14), v32);
    }

    else
    {
      sub_26A549760(v15, &v33);
      sub_26A5136A0(v6[7] + 32 * v14, v32);
    }

    sub_26A8521A8();
    OUTLINED_FUNCTION_11_42();
    if (v18)
    {
      break;
    }

    OUTLINED_FUNCTION_2_78();
LABEL_20:
    OUTLINED_FUNCTION_5_64();
    *(v7 + v20 + 64) |= v21;
    v23 = v7[6] + 40 * v22;
    v24 = v33;
    v25 = v34;
    *(v23 + 32) = v35;
    *v23 = v24;
    *(v23 + 16) = v25;
    sub_26A576F3C(v32, (v7[7] + 32 * v22));
    ++v7[2];
    if (!v4)
    {
      goto LABEL_4;
    }
  }

  OUTLINED_FUNCTION_0_79();
  while (1)
  {
    OUTLINED_FUNCTION_17_26();
    if (v18)
    {
      if (v19)
      {
        break;
      }
    }

    OUTLINED_FUNCTION_20_26();
    if (!v18)
    {
      OUTLINED_FUNCTION_6_54();
      goto LABEL_20;
    }
  }

LABEL_31:
  __break(1u);
}

void sub_26A71CC20()
{
  OUTLINED_FUNCTION_9_49();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B3030, &unk_26A872B50);
  v5 = OUTLINED_FUNCTION_12_39();
  OUTLINED_FUNCTION_26_14(v5, v6);
  OUTLINED_FUNCTION_24_23();
  if (!v7)
  {

LABEL_26:
    *v0 = v1;
    return;
  }

  v25 = v0;
  v8 = 0;
  v9 = v2 + 8;
  OUTLINED_FUNCTION_1_82();
  if (!v0)
  {
LABEL_4:
    v11 = v8;
    while (1)
    {
      v8 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v8 >= v4)
      {
        break;
      }

      ++v11;
      if (v9[v8])
      {
        OUTLINED_FUNCTION_2_66();
        v0 = (v13 & v12);
        goto LABEL_9;
      }
    }

    if (v3)
    {
      OUTLINED_FUNCTION_3_71();
      if (v20 != v21)
      {
        OUTLINED_FUNCTION_18_26();
        *v9 = v22;
      }

      else
      {
        v23 = OUTLINED_FUNCTION_7_55();
        sub_26A6B8F84(v23, v24, (v2 + 8));
      }

      v2[2] = 0;
    }

    v0 = v25;
    goto LABEL_26;
  }

  while (1)
  {
    OUTLINED_FUNCTION_13_35();
LABEL_9:
    v14 = *(v2[7] + 8 * (v10 | (v8 << 6)));
    sub_26A8526A8();
    OUTLINED_FUNCTION_11_42();
    if (v15)
    {
      break;
    }

    OUTLINED_FUNCTION_2_78();
LABEL_17:
    OUTLINED_FUNCTION_5_64();
    OUTLINED_FUNCTION_19_23(v17);
    *(v19 + 8 * v18) = v14;
    OUTLINED_FUNCTION_16_26();
    if (!v0)
    {
      goto LABEL_4;
    }
  }

  OUTLINED_FUNCTION_0_79();
  while (1)
  {
    OUTLINED_FUNCTION_17_26();
    if (v15)
    {
      if (v16)
      {
        break;
      }
    }

    OUTLINED_FUNCTION_20_26();
    if (!v15)
    {
      OUTLINED_FUNCTION_6_54();
      goto LABEL_17;
    }
  }

LABEL_28:
  __break(1u);
}

uint64_t sub_26A71CDB4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803ADC10, &qword_26A85FA68);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t type metadata accessor for Form(uint64_t a1)
{
  result = qword_28157DB48;
  if (!qword_28157DB48)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_26A71CE70(uint64_t a1)
{
  sub_26A71CF38();
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_26A71CF38()
{
  if (!qword_28157FF08)
  {
    v0 = sub_26A84EC38();
    if (!v1)
    {
      atomic_store(v0, &qword_28157FF08);
    }
  }
}

uint64_t sub_26A71CF88(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 8))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_26A71CFD8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_26A71D02C(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void *sub_26A71D044(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = a2 - 1;
  }

  *result = v2;
  return result;
}

uint64_t OUTLINED_FUNCTION_4_67(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_26_14(uint64_t a1, uint64_t a2)
{

  return sub_26A852478();
}

uint64_t getEnumTagSinglePayload for TableLayoutManager.Constants(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 24))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for TableLayoutManager.Constants(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
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

  *(result + 24) = v3;
  return result;
}

void *sub_26A71D28C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B5B08, &qword_26A87C298);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26A8570F0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AADE0, &unk_26A857190);
  *(swift_initStackObject() + 16) = xmmword_26A8570D0;
  if (qword_28157E760 != -1)
  {
    OUTLINED_FUNCTION_7_17(&qword_28157E760);
  }

  OUTLINED_FUNCTION_7_28(&qword_281588978);
  v6 = xmmword_26A87C210;
  v7 = xmmword_26A87C220;
  v8 = xmmword_26A87C230;
  *(inited + 40) = xmmword_26A87C210;
  *(inited + 32) = v1;
  *(inited + 56) = xmmword_26A87C220;
  *(inited + 72) = v8;
  *(swift_initStackObject() + 16) = xmmword_26A8570D0;
  if (qword_28157E758 != -1)
  {
    OUTLINED_FUNCTION_4_19(&qword_28157E758);
  }

  OUTLINED_FUNCTION_2_33(&qword_281588968);
  *(inited + 88) = v2;
  v3 = v7;
  *(inited + 96) = v6;
  *(inited + 112) = v3;
  *(inited + 128) = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B1D80, &qword_26A8593E0);
  sub_26A4E325C();
  v4 = sub_26A8516A8();
  return sub_26A80EA70(v4, &v6);
}

double sub_26A71D418()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B5B10, &qword_26A87C2A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26A8570F0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AADE0, &unk_26A857190);
  *(swift_initStackObject() + 16) = xmmword_26A8570D0;
  if (qword_28157E760 != -1)
  {
    OUTLINED_FUNCTION_7_17(&qword_28157E760);
  }

  OUTLINED_FUNCTION_7_28(&qword_281588978);
  *(inited + 32) = v1;
  *(inited + 40) = xmmword_26A87C240;
  *(inited + 56) = 0x4018000000000000;
  *(swift_initStackObject() + 16) = xmmword_26A8570D0;
  if (qword_28157E758 != -1)
  {
    OUTLINED_FUNCTION_4_19(&qword_28157E758);
  }

  OUTLINED_FUNCTION_2_33(&qword_281588968);
  *(inited + 64) = v2;
  *(inited + 72) = xmmword_26A87C250;
  *(inited + 88) = 0x4018000000000000;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B1D80, &qword_26A8593E0);
  sub_26A4E325C();
  v3 = sub_26A8516A8();
  sub_26A80E940(v3, v5, 20.0, 3.0, 6.0);
  xmmword_2803D2330 = v5[0];
  *&qword_2803D2340 = v5[1];
  result = *&v6;
  xmmword_2803D2350 = v6;
  qword_2803D2360 = v7;
  return result;
}

uint64_t type metadata accessor for StandardSiriButtonLabelStyle(uint64_t a1)
{
  result = qword_2803B5B38;
  if (!qword_2803B5B38)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_26A71D630(uint64_t a1)
{
  sub_26A71D7C8(319, &qword_2803B5B48, MEMORY[0x277D839B0], MEMORY[0x277CE11F8]);
  v2 = v1;
  if (v3 <= 0x3F)
  {
    sub_26A59B290(319, &qword_2803A9218, type metadata accessor for VRXIdiom);
    v2 = v4;
    if (v5 <= 0x3F)
    {
      sub_26A59B290(319, &qword_2803AC3D8, MEMORY[0x277CDF3E0]);
      v2 = v6;
      if (v7 <= 0x3F)
      {
        sub_26A71D7C8(319, &qword_2803AB788, MEMORY[0x277D839B0], MEMORY[0x277CDF468]);
        v2 = v8;
        if (v9 <= 0x3F)
        {
          sub_26A71D7C8(319, &qword_2803B3E90, &type metadata for ButtonItemButtonStyle.Role, MEMORY[0x277CDF468]);
          if (v11 > 0x3F)
          {
            return v10;
          }

          else
          {
            swift_cvw_initStructMetadataWithLayoutString();
            return 0;
          }
        }
      }
    }
  }

  return v2;
}

void sub_26A71D7C8(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_26A71D834()
{
  v1 = sub_26A84F988();
  OUTLINED_FUNCTION_15();
  v3 = v2;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_41();
  v7 = v6 - v5;
  v8 = *(v0 + 32);
  if ((*(v0 + 40) & 1) == 0)
  {

    sub_26A851EA8();
    v9 = sub_26A8501F8();
    sub_26A84EA78();

    sub_26A84F978();
    swift_getAtKeyPath();
    sub_26A49035C(v8, 0);
    (*(v3 + 8))(v7, v1);
    return v11;
  }

  return v8;
}

uint64_t sub_26A71D964(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B5B50, &qword_26A87C348);
  OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v2);
  v4 = &v18 - v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B5B58, &qword_26A87C350);
  OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v5);
  v7 = &v18 - v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B5B60, &qword_26A87C358);
  OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v8);
  v10 = &v18 - v9;
  v11 = sub_26A71D834();
  if (sub_26A61B05C(v11, &unk_287B13068))
  {
    sub_26A71DB58(a1, v10);
    sub_26A4DBD68(v10, v7, &qword_2803B5B60, &qword_26A87C358);
    swift_storeEnumTagMultiPayload();
    sub_26A71F9A4();
    v12 = sub_26A71FD10();
    OUTLINED_FUNCTION_4_68(v12);
    v13 = v10;
    v14 = &qword_2803B5B60;
    v15 = &qword_26A87C358;
  }

  else
  {
    sub_26A71E778();
    sub_26A4DBD68(v4, v7, &qword_2803B5B50, &qword_26A87C348);
    swift_storeEnumTagMultiPayload();
    sub_26A71F9A4();
    v16 = sub_26A71FD10();
    OUTLINED_FUNCTION_4_68(v16);
    v13 = v4;
    v14 = &qword_2803B5B50;
    v15 = &qword_26A87C348;
  }

  return sub_26A4DBD10(v13, v14, v15);
}

uint64_t sub_26A71DB58@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v118 = a2;
  v113 = sub_26A850D48();
  v109 = *(v113 - 8);
  MEMORY[0x28223BE20](v113);
  v108 = v102 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v117 = sub_26A84F988();
  v116 = *(v117 - 8);
  MEMORY[0x28223BE20](v117);
  v115 = v102 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v104 = sub_26A84EE68();
  v122 = *(v104 - 8);
  MEMORY[0x28223BE20](v104);
  v120 = v102 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v119 = v102 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B1550, &unk_26A87C3C0);
  MEMORY[0x28223BE20](v9 - 8);
  v111 = v102 - v10;
  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B1570, &qword_26A86CA18);
  MEMORY[0x28223BE20](v110);
  v112 = v102 - v11;
  v12 = sub_26A84F5F8() - 8;
  MEMORY[0x28223BE20](v12);
  v121 = (v102 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v14);
  v16 = (v102 - v15);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B5BA8, &qword_26A87C378);
  v18 = v17 - 8;
  MEMORY[0x28223BE20](v17);
  v20 = (v102 - v19);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B5B98, &qword_26A87C370);
  v22 = v21 - 8;
  MEMORY[0x28223BE20](v21);
  v24 = v102 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B5B88, &qword_26A87C368);
  v26 = v25 - 8;
  MEMORY[0x28223BE20](v25);
  v28 = v102 - v27;
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B5B78, &qword_26A87C360);
  MEMORY[0x28223BE20](v106);
  v114 = v102 - v29;
  *v20 = sub_26A851448();
  v20[1] = v30;
  v31 = v20 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B5C10, &qword_26A87C3D0) + 44);
  v103 = v2;
  sub_26A71EB28(v2, a1, v31);
  v32 = sub_26A850DF8();
  KeyPath = swift_getKeyPath();
  v34 = (v20 + *(v18 + 44));
  *v34 = KeyPath;
  v34[1] = v32;
  sub_26A851448();
  sub_26A84F028();
  sub_26A4DBDB4(v20, v24, &qword_2803B5BA8, &qword_26A87C378);
  v35 = &v24[*(v22 + 44)];
  v36 = v128;
  *v35 = v127;
  *(v35 + 1) = v36;
  *(v35 + 2) = v129;
  v37 = 12.0;
  if (_UISolariumEnabled())
  {
    v38 = 18.0;
  }

  else
  {
    v38 = 12.0;
  }

  v39 = *(v12 + 28);
  v40 = *MEMORY[0x277CE0118];
  v41 = sub_26A84FB88();
  v42 = *(*(v41 - 8) + 104);
  v42(v16 + v39, v40, v41);
  *v16 = v38;
  v16[1] = v38;
  v43 = &v28[*(v26 + 44)];
  sub_26A63F65C(v16, v43);
  *(v43 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A9E58, &unk_26A857A00) + 36)) = 256;
  v107 = v28;
  v44 = v28;
  v45 = v104;
  sub_26A4DBDB4(v24, v44, &qword_2803B5B98, &qword_26A87C370);
  if (_UISolariumEnabled())
  {
    v37 = 18.0;
  }

  v46 = v121;
  v42(v121 + *(v12 + 28), v40, v41);
  v47 = v103;
  *v46 = v37;
  v46[1] = v37;
  v48 = type metadata accessor for StandardSiriButtonLabelStyle(0);
  v102[1] = *(v48 + 32);
  v49 = v119;
  sub_26A72008C(&qword_2803AB430, &qword_26A85B010, MEMORY[0x277CDF3E0], v119);
  v50 = *MEMORY[0x277CDF3C0];
  v51 = v122;
  v52 = v120;
  v102[0] = *(v122 + 104);
  (v102[0])(v120, v50, v45);
  sub_26A84EE58();
  v53 = *(v51 + 8);
  v53(v52, v45);
  v122 = v51 + 8;
  v53(v49, v45);
  v105 = v48;
  v54 = v47;
  v55 = v47 + *(v48 + 36);
  v56 = *v55;
  if (*(v55 + 8) != 1)
  {

    sub_26A851EA8();
    v57 = sub_26A8501F8();
    sub_26A84EA78();

    v58 = v115;
    sub_26A84F978();
    swift_getAtKeyPath();
    sub_26A49035C(v56, 0);
    (*(v116 + 8))(v58, v117);
    if (v130 != 1)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  if (v56)
  {
LABEL_10:
    v59 = v119;
    sub_26A72008C(&qword_2803AB430, &qword_26A85B010, MEMORY[0x277CDF3E0], v119);
    v60 = v120;
    (v102[0])(v120, v50, v45);
    sub_26A84EE58();
    v53(v60, v45);
    v53(v59, v45);
  }

LABEL_11:
  (*(v109 + 104))(v108, *MEMORY[0x277CE0EE0], v113);
  v61 = sub_26A850EA8();
  sub_26A84EF18();
  v62 = v121;
  v63 = v111;
  sub_26A6F5ED4(v121, v111);
  v64 = v63 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B1558, &unk_26A86CA00) + 36);
  v65 = v131;
  *v64 = v130;
  *(v64 + 16) = v65;
  *(v64 + 32) = v132;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B1560, &unk_26A87C410);
  *(v63 + *(v66 + 52)) = v61;
  *(v63 + *(v66 + 56)) = 256;
  v67 = sub_26A851448();
  v69 = v68;
  sub_26A720648(v62);
  v70 = (v63 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B1568, &qword_26A86CA10) + 36));
  *v70 = v67;
  v70[1] = v69;
  LOBYTE(v67) = sub_26A850248();
  sub_26A84ED48();
  v72 = v71;
  v74 = v73;
  v76 = v75;
  v78 = v77;
  v79 = v112;
  sub_26A4DBDB4(v63, v112, &qword_2803B1550, &unk_26A87C3C0);
  v80 = v79 + *(v110 + 36);
  *v80 = v67;
  *(v80 + 8) = v72;
  *(v80 + 16) = v74;
  *(v80 + 24) = v76;
  *(v80 + 32) = v78;
  *(v80 + 40) = 0;
  v81 = sub_26A851448();
  v83 = v82;
  v84 = v114;
  v85 = &v114[*(v106 + 36)];
  sub_26A4DBDB4(v79, v85, &qword_2803B1570, &qword_26A86CA18);
  v86 = (v85 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B1510, &qword_26A86C900) + 36));
  *v86 = v81;
  v86[1] = v83;
  sub_26A4DBDB4(v107, v84, &qword_2803B5B88, &qword_26A87C368);
  v87 = v54 + *(v105 + 44);
  v88 = *v87;
  if (*(v87 + 8) == 1)
  {
    v89 = 1.0;
    if (v88)
    {
      goto LABEL_18;
    }
  }

  else
  {

    sub_26A851EA8();
    v90 = sub_26A8501F8();
    sub_26A84EA78();

    v91 = v115;
    sub_26A84F978();
    swift_getAtKeyPath();
    sub_26A49035C(v88, 0);
    (*(v116 + 8))(v91, v117);
    v89 = 1.0;
    if (v124)
    {
      goto LABEL_18;
    }
  }

  v92 = *(v54 + 16);
  v93 = *(v54 + 24);
  v124 = *(v54 + 8);
  v125 = v92;
  v126 = v93;
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803AC170, &unk_26A87C420);
  MEMORY[0x26D6634C0](&v123, v94);
  if (v123)
  {
    v89 = 0.95;
  }

  else
  {
    v89 = 1.0;
  }

LABEL_18:
  sub_26A8515A8();
  v96 = v95;
  v98 = v97;
  v99 = v118;
  sub_26A4DBDB4(v84, v118, &qword_2803B5B78, &qword_26A87C360);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B5B60, &qword_26A87C358);
  v101 = v99 + *(result + 36);
  *v101 = v89;
  *(v101 + 8) = v89;
  *(v101 + 16) = v96;
  *(v101 + 24) = v98;
  return result;
}

uint64_t sub_26A71E778()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B09E0, &qword_26A869F58);
  MEMORY[0x28223BE20](v1);
  v3 = &v33 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B5C78, &qword_26A87C578);
  MEMORY[0x28223BE20](v4);
  v6 = &v33 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB208, &qword_26A857FD0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v33 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B5BD0, &qword_26A87C390);
  MEMORY[0x28223BE20](v10);
  v12 = &v33 - v11;
  if (*(v0 + 1))
  {
    sub_26A84FF98();
    sub_26A850408();
    v13 = sub_26A850318();

    KeyPath = swift_getKeyPath();
    v15 = &v3[*(v1 + 36)];
    *v15 = KeyPath;
    v15[1] = v13;
    v16 = &qword_2803B09E0;
    v17 = &qword_26A869F58;
    sub_26A4DBD68(v3, v6, &qword_2803B09E0, &qword_26A869F58);
    swift_storeEnumTagMultiPayload();
    sub_26A71FD9C();
    sub_26A609984();
    sub_26A84FDF8();
    v18 = v3;
  }

  else
  {
    v19 = sub_26A84FF78();
    sub_26A71F7F8(v19);
    v20 = sub_26A850338();
    __swift_storeEnumTagSinglePayload(v9, 1, 1, v20);
    v21 = sub_26A8503E8();
    sub_26A4DBD10(v9, &qword_2803AB208, &qword_26A857FD0);
    v22 = swift_getKeyPath();
    v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B5BF0, &unk_26A87C3A0);
    v24 = &v12[*(v23 + 36)];
    *v24 = v22;
    v24[1] = v21;
    v25 = sub_26A71F7F8(v23);
    v27 = sub_26A71F7F8(v26);
    v28 = swift_getKeyPath();
    v29 = &v12[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B5BE0, &qword_26A87C398) + 36)];
    *v29 = v28;
    *(v29 + 1) = v25;
    v29[16] = 0;
    v30 = swift_getKeyPath();
    v31 = &v12[*(v10 + 36)];
    *v31 = v30;
    *(v31 + 1) = v27;
    v31[16] = 0;
    v16 = &qword_2803B5BD0;
    v17 = &qword_26A87C390;
    sub_26A4DBD68(v12, v6, &qword_2803B5BD0, &qword_26A87C390);
    swift_storeEnumTagMultiPayload();
    sub_26A71FD9C();
    sub_26A609984();
    sub_26A84FDF8();
    v18 = v12;
  }

  return sub_26A4DBD10(v18, v16, v17);
}

uint64_t sub_26A71EB28@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v31 = a2;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B5C18, &qword_26A87C430);
  MEMORY[0x28223BE20](v30);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v28 - v8;
  v29 = sub_26A84F2A8();
  MEMORY[0x28223BE20](v29);
  v10 = sub_26A84F988();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = a1 + *(type metadata accessor for StandardSiriButtonLabelStyle(0) + 40);
  v15 = *v14;
  if (*(v14 + 8) == 1)
  {
    v16 = *v14;
  }

  else
  {

    sub_26A851EA8();
    v28 = v10;
    v17 = sub_26A8501F8();
    sub_26A84EA78();

    sub_26A84F978();
    swift_getAtKeyPath();
    sub_26A49035C(v15, 0);
    (*(v11 + 8))(v13, v28);
    v16 = v33;
  }

  if (v16 == 1)
  {
    v33 = sub_26A850D78();
  }

  else
  {
    sub_26A84F298();
  }

  v18 = sub_26A84F038();
  LODWORD(v33) = sub_26A84FEC8();
  v19 = sub_26A84F038();
  v20 = sub_26A850248();
  sub_26A850DD8();
  v21 = *(a1 + 16);
  v22 = *(a1 + 24);
  v33 = *(a1 + 8);
  v34 = v21;
  v35 = v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803AC170, &unk_26A87C420);
  MEMORY[0x26D6634C0](&v32, v23);
  v24 = sub_26A850E68();

  *v9 = sub_26A84FBF8();
  *(v9 + 1) = 0x401C000000000000;
  v9[16] = 0;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B5C20, &qword_26A87C438);
  sub_26A71EF60(v31, a1, &v9[*(v25 + 44)]);
  *&v9[*(v30 + 36)] = sub_26A84FEA8();
  sub_26A4DBD68(v9, v6, &qword_2803B5C18, &qword_26A87C430);
  *a3 = v18;
  *(a3 + 8) = 256;
  *(a3 + 16) = v19;
  *(a3 + 24) = v20;
  *(a3 + 32) = v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B5C28, &qword_26A87C440);
  sub_26A4DBD68(v6, a3 + *(v26 + 64), &qword_2803B5C18, &qword_26A87C430);

  sub_26A4DBD10(v9, &qword_2803B5C18, &qword_26A87C430);
  sub_26A4DBD10(v6, &qword_2803B5C18, &qword_26A87C430);
}

uint64_t sub_26A71EF60@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v67 = a2;
  v66 = a1;
  v76 = a3;
  v65 = sub_26A84F988();
  v64 = *(v65 - 8);
  MEMORY[0x28223BE20](v65);
  v63 = &v63 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B5C30, &qword_26A87C448) - 8;
  MEMORY[0x28223BE20](v69);
  v5 = &v63 - v4;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B5C38, &qword_26A87C450) - 8;
  MEMORY[0x28223BE20](v70);
  v68 = &v63 - v6;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B5C40, &unk_26A87C458);
  MEMORY[0x28223BE20](v73);
  v75 = &v63 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v72 = &v63 - v9;
  MEMORY[0x28223BE20](v10);
  v74 = &v63 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB208, &qword_26A857FD0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v63 - v13;
  v15 = sub_26A850F68();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v63 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B5C48, &qword_26A87C468);
  v20 = v19 - 8;
  MEMORY[0x28223BE20](v19);
  v71 = &v63 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v24 = &v63 - v23;
  sub_26A84FF78();
  (*(v16 + 104))(v18, *MEMORY[0x277CE1020], v15);
  KeyPath = swift_getKeyPath();
  v26 = &v24[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B5C50, &qword_26A87C498) + 36)];
  v27 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B3678, &qword_26A87C4A0) + 28);
  (*(v16 + 32))(v26 + v27, v18, v15);
  v28 = __swift_storeEnumTagSinglePayload(v26 + v27, 0, 1, v15);
  *v26 = KeyPath;
  v29 = v67;
  sub_26A71F7F8(v28);
  sub_26A850388();
  v30 = sub_26A850338();
  __swift_storeEnumTagSinglePayload(v14, 1, 1, v30);
  v31 = sub_26A8503E8();
  sub_26A4DBD10(v14, &qword_2803AB208, &qword_26A857FD0);
  v32 = swift_getKeyPath();
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B5C58, &qword_26A87C4D8);
  v34 = &v24[*(v33 + 36)];
  *v34 = v32;
  v34[1] = v31;
  v35 = sub_26A71F7F8(v33);
  v36 = v29;
  v38 = sub_26A71F7F8(v37);
  v39 = swift_getKeyPath();
  v40 = &v24[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B5C60, &qword_26A87C508) + 36)];
  *v40 = v39;
  *(v40 + 1) = v35;
  v40[16] = 0;
  v41 = swift_getKeyPath();
  v42 = *(v20 + 44);
  v43 = v68;
  v44 = &v24[v42];
  *v44 = v41;
  *(v44 + 1) = v38;
  v44[16] = 0;
  sub_26A84FF98();
  v45 = swift_getKeyPath();
  v46 = &v5[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B5C68, &qword_26A87C568) + 36)];
  *v46 = v45;
  v46[8] = 1;
  sub_26A8503A8();
  __swift_storeEnumTagSinglePayload(v14, 1, 1, v30);
  v47 = sub_26A8503E8();
  sub_26A4DBD10(v14, &qword_2803AB208, &qword_26A857FD0);
  v48 = swift_getKeyPath();
  v49 = &v5[*(v69 + 44)];
  *v49 = v48;
  v49[1] = v47;
  sub_26A851448();
  sub_26A84F628();
  sub_26A4DBDB4(v5, v43, &qword_2803B5C30, &qword_26A87C448);
  memcpy((v43 + *(v70 + 44)), __src, 0x70uLL);
  v50 = v36 + *(type metadata accessor for StandardSiriButtonLabelStyle(0) + 40);
  v51 = *v50;
  if (*(v50 + 8) == 1)
  {
    v52 = *v50;
  }

  else
  {

    sub_26A851EA8();
    v53 = sub_26A8501F8();
    sub_26A84EA78();

    v54 = v63;
    sub_26A84F978();
    swift_getAtKeyPath();
    sub_26A49035C(v51, 0);
    (*(v64 + 8))(v54, v65);
    v52 = v77;
  }

  if (v52 == 1)
  {
    v77 = sub_26A850E18();
  }

  else
  {
    LODWORD(v77) = sub_26A84FEA8();
  }

  v55 = sub_26A84F038();
  v56 = v72;
  sub_26A4DBDB4(v43, v72, &qword_2803B5C38, &qword_26A87C450);
  v57 = v74;
  *(v56 + *(v73 + 36)) = v55;
  sub_26A4DBDB4(v56, v57, &qword_2803B5C40, &unk_26A87C458);
  v58 = v71;
  sub_26A4DBD68(v24, v71, &qword_2803B5C48, &qword_26A87C468);
  v59 = v75;
  sub_26A4DBD68(v57, v75, &qword_2803B5C40, &unk_26A87C458);
  v60 = v76;
  sub_26A4DBD68(v58, v76, &qword_2803B5C48, &qword_26A87C468);
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B5C70, &qword_26A87C570);
  sub_26A4DBD68(v59, v60 + *(v61 + 48), &qword_2803B5C40, &unk_26A87C458);
  sub_26A4DBD10(v57, &qword_2803B5C40, &unk_26A87C458);
  sub_26A4DBD10(v24, &qword_2803B5C48, &qword_26A87C468);
  sub_26A4DBD10(v59, &qword_2803B5C40, &unk_26A87C458);
  return sub_26A4DBD10(v58, &qword_2803B5C48, &qword_26A87C468);
}

unint64_t sub_26A71F9A4()
{
  result = qword_2803B5B68;
  if (!qword_2803B5B68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B5B60, &qword_26A87C358);
    sub_26A71FA30();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B5B68);
  }

  return result;
}

unint64_t sub_26A71FA30()
{
  result = qword_2803B5B70;
  if (!qword_2803B5B70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B5B78, &qword_26A87C360);
    sub_26A71FAE8();
    sub_26A4DBCC8(&qword_2803B1508, &qword_2803B1510, &qword_26A86C900, MEMORY[0x277CDFC88]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B5B70);
  }

  return result;
}

unint64_t sub_26A71FAE8()
{
  result = qword_2803B5B80;
  if (!qword_2803B5B80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B5B88, &qword_26A87C368);
    sub_26A71FBA0();
    sub_26A4DBCC8(&qword_28157FEA0, &qword_2803A9E58, &unk_26A857A00, MEMORY[0x277CDF4F0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B5B80);
  }

  return result;
}

unint64_t sub_26A71FBA0()
{
  result = qword_2803B5B90;
  if (!qword_2803B5B90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B5B98, &qword_26A87C370);
    sub_26A71FC2C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B5B90);
  }

  return result;
}

unint64_t sub_26A71FC2C()
{
  result = qword_2803B5BA0;
  if (!qword_2803B5BA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B5BA8, &qword_26A87C378);
    sub_26A4DBCC8(&qword_2803B5BB0, &qword_2803B5BB8, &unk_26A87C380, MEMORY[0x277CE11A8]);
    sub_26A4DBCC8(&qword_2803ABF30, &qword_2803ABF38, &unk_26A873D40, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B5BA0);
  }

  return result;
}

unint64_t sub_26A71FD10()
{
  result = qword_2803B5BC0;
  if (!qword_2803B5BC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B5B50, &qword_26A87C348);
    sub_26A71FD9C();
    sub_26A609984();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B5BC0);
  }

  return result;
}

unint64_t sub_26A71FD9C()
{
  result = qword_2803B5BC8;
  if (!qword_2803B5BC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B5BD0, &qword_26A87C390);
    sub_26A71FE54();
    sub_26A4DBCC8(&qword_2803B5C00, &qword_2803B5C08, &unk_26A87C3B0, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B5BC8);
  }

  return result;
}

unint64_t sub_26A71FE54()
{
  result = qword_2803B5BD8;
  if (!qword_2803B5BD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B5BE0, &qword_26A87C398);
    sub_26A71FF0C();
    sub_26A4DBCC8(&qword_2803B5C00, &qword_2803B5C08, &unk_26A87C3B0, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B5BD8);
  }

  return result;
}

unint64_t sub_26A71FF0C()
{
  result = qword_2803B5BE8;
  if (!qword_2803B5BE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B5BF0, &unk_26A87C3A0);
    sub_26A71FFF4(&qword_2803B5BF8, MEMORY[0x277CDE220], MEMORY[0x277CDE218]);
    sub_26A4DBCC8(&qword_28157FB78, &qword_2803AC4A8, &qword_26A85AFA0, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B5BE8);
  }

  return result;
}

uint64_t sub_26A71FFF4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_26A72008C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, void (*a3)(void)@<X2>, uint64_t a4@<X8>)
{
  v8 = v4;
  v10 = sub_26A84F988();
  OUTLINED_FUNCTION_15();
  v12 = v11;
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_41();
  v16 = v15 - v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v17);
  v19 = &v26 - v18;
  sub_26A4DBD68(v8, &v26 - v18, a1, a2);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    a3(0);
    OUTLINED_FUNCTION_46();
    return (*(v20 + 32))(a4, v19);
  }

  else
  {
    sub_26A851EA8();
    v22 = sub_26A8501F8();
    OUTLINED_FUNCTION_7_56(v22, &dword_26A48D000, v23, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", v24, v25, MEMORY[0x277D84F90]);

    sub_26A84F978();
    swift_getAtKeyPath();

    return (*(v12 + 8))(v16, v10);
  }
}

uint64_t sub_26A72029C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>, uint64_t *a4@<X2>, uint64_t *a5@<X3>)
{
  v10 = v5;
  v27 = a3;
  v11 = sub_26A84F988();
  OUTLINED_FUNCTION_15();
  v13 = v12;
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_41();
  v17 = v16 - v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v18);
  v20 = &v26 - v19;
  sub_26A4DBD68(v10, &v26 - v19, a1, a2);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_26A4DBDB4(v20, v27, a4, a5);
  }

  sub_26A851EA8();
  v22 = sub_26A8501F8();
  OUTLINED_FUNCTION_7_56(v22, &dword_26A48D000, v23, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", v24, v25, MEMORY[0x277D84F90]);

  sub_26A84F978();
  swift_getAtKeyPath();

  return (*(v13 + 8))(v17, v11);
}

uint64_t sub_26A720550()
{
  OUTLINED_FUNCTION_6_8();
  result = sub_26A84F8D8();
  *v0 = result;
  return result;
}

uint64_t sub_26A7205A4()
{
  OUTLINED_FUNCTION_6_8();
  result = sub_26A84F848();
  *v0 = result;
  return result;
}

uint64_t sub_26A7205F4()
{
  OUTLINED_FUNCTION_6_8();
  result = MEMORY[0x26D661920]();
  *v0 = result;
  return result;
}

uint64_t sub_26A720648(uint64_t a1)
{
  v2 = sub_26A84F5F8();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_26A7206A4()
{
  result = qword_2803B5C80;
  if (!qword_2803B5C80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B5C88, &unk_26A87C590);
    sub_26A71F9A4();
    sub_26A71FD10();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B5C80);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_4_68(uint64_t a1)
{

  return sub_26A84FDF8();
}

uint64_t OUTLINED_FUNCTION_7_56(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{

  return sub_26A84EA78();
}

double sub_26A720778(uint64_t a1, uint64_t a2)
{
  v4 = sub_26A84B2F8();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v8, a2, v4, v6);
  v9 = (*(v5 + 88))(v8, v4);
  if (v9 == *MEMORY[0x277D62D28])
  {
    sub_26A7208E0(a1);
    return v10;
  }

  else
  {
    v11 = 0.0;
    if (v9 != *MEMORY[0x277D62D30] && v9 != *MEMORY[0x277D62D20])
    {
      sub_26A7208E0(a1);
      v11 = v13;
      (*(v5 + 8))(v8, v4);
    }
  }

  return v11;
}

uint64_t sub_26A7208E0(uint64_t a1)
{
  sub_26A84B278();
  v3 = v2;
  sub_26A84B288();
  v5 = v4;
  if (qword_2803A8BF0 != -1)
  {
    swift_once();
  }

  v6 = v3;
  v7 = v5;
  if (byte_2803B0440 == 1)
  {
    sub_26A4D7E10();
    switch(sub_26A63CD18(v8))
    {
      case 1u:
      case 2u:
      case 3u:
        v9 = sub_26A852598();

        if ((v9 & 1) == 0)
        {
          goto LABEL_12;
        }

        break;
      case 4u:
        goto LABEL_12;
      default:

        break;
    }

    sub_26A84B2B8();
    sub_26A6EDDD8();
    result = sub_26A84C938();
    if ((result & 1) == 0 || *v1 == INFINITY)
    {
      result = sub_26A84C948();
      if ((result & 1) == 0 || *(v1 + 8) == INFINITY)
      {
        v11.n128_f64[0] = v6;
        v12.n128_f64[0] = v6;
        return (*(v1 + 16))(v11, v12);
      }
    }
  }

  else
  {
LABEL_12:
    sub_26A84B2B8();
    sub_26A6EDDD8();
    if (sub_26A84C948())
    {
      v13.n128_u64[0] = *(v1 + 8);
      v14.n128_f64[0] = v13.n128_f64[0] / v6 * v7;
    }

    else
    {
      v14.n128_u64[0] = *v1;
      v13.n128_f64[0] = *v1 / v7 * v6;
    }

    return (*(v1 + 16))(v13, v14);
  }

  return result;
}

uint64_t sub_26A720BA8@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X8>)
{
  v7 = v2;
  v189 = a2;
  v8 = sub_26A850D48();
  v9 = OUTLINED_FUNCTION_0_9(v8, &v197);
  v185 = v10;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_10_0(v12 - v11);
  v13 = sub_26A84EE68();
  v14 = OUTLINED_FUNCTION_0_9(v13, &v196);
  v182 = v15;
  MEMORY[0x28223BE20](v14);
  v181 = &v158[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_10_0(&v158[-v18]);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B5CC0, &unk_26A87F830);
  OUTLINED_FUNCTION_0_9(v19, &v198);
  v187 = v20;
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_82();
  OUTLINED_FUNCTION_10_0(v22);
  v23 = sub_26A84F988();
  v24 = OUTLINED_FUNCTION_0_9(v23, &v185);
  v161 = v25;
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_10_0(v27 - v26);
  v28 = sub_26A84FFA8();
  OpaqueTypeConformance2 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_41();
  v31 = v30 - v29;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AE760, &unk_26A87C6B0);
  OUTLINED_FUNCTION_0_17(v32, &v186);
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v33);
  v35 = &v158[-v34];
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AE750, &unk_26A861F10);
  OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v37);
  v39 = &v158[-v38];
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B5CC8, &qword_26A87C6C0);
  OUTLINED_FUNCTION_0_17(v40, &v188);
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v41);
  v43 = &v158[-v42];
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B5CD0, &qword_26A87C6C8);
  OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v45);
  v47 = &v158[-v46];
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B5CD8, &qword_26A87C6D0);
  OUTLINED_FUNCTION_0_9(v48, &__src[8]);
  v168 = v49;
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v50);
  OUTLINED_FUNCTION_82();
  OUTLINED_FUNCTION_10_0(v51);
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B5CE0, &qword_26A87C6D8);
  OUTLINED_FUNCTION_0_17(v52, &v192);
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v53);
  OUTLINED_FUNCTION_82();
  OUTLINED_FUNCTION_10_0(v54);
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B5CE8, &qword_26A87C6E0);
  OUTLINED_FUNCTION_0_17(v55, v193);
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v56);
  OUTLINED_FUNCTION_82();
  OUTLINED_FUNCTION_10_0(v57);
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B5CF0, &qword_26A87C6E8);
  OUTLINED_FUNCTION_0_17(v58, &__src[16]);
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v59);
  OUTLINED_FUNCTION_82();
  OUTLINED_FUNCTION_10_0(v60);
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B5CF8, &qword_26A87C6F0);
  OUTLINED_FUNCTION_0_17(v61, &__src[48]);
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v62);
  OUTLINED_FUNCTION_82();
  OUTLINED_FUNCTION_10_0(v63);
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B5D00, &qword_26A87C6F8);
  OUTLINED_FUNCTION_0_9(v64, v195);
  v177 = v65;
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v66);
  OUTLINED_FUNCTION_82();
  OUTLINED_FUNCTION_10_0(v67);
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B5D08, &qword_26A87C700);
  OUTLINED_FUNCTION_0_17(v68, &__src[40]);
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v69);
  OUTLINED_FUNCTION_82();
  OUTLINED_FUNCTION_10_0(v70);
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B5D10, &qword_26A87C708);
  OUTLINED_FUNCTION_0_17(v71, &__src[64]);
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v72);
  OUTLINED_FUNCTION_82();
  OUTLINED_FUNCTION_10_0(v73);
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AE3A0, &unk_26A87C710);
  OUTLINED_FUNCTION_0_17(v74, &__src[88]);
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v75);
  OUTLINED_FUNCTION_82();
  OUTLINED_FUNCTION_10_0(v76);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AE3A8, &unk_26A861260);
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v77);
  OUTLINED_FUNCTION_82();
  OUTLINED_FUNCTION_10_0(v78);
  v163 = v31;
  v188 = a1;
  sub_26A84FFB8();
  LODWORD(a1) = sub_26A850238();
  v190 = type metadata accessor for CarPlayComponentButtonStyle(0);
  v80 = *(v190 + 24);
  v192 = v7;
  v81 = v7 + v80;
  v82 = *v81;
  if (*(v81 + 8) != 1)
  {

    sub_26A851EA8();
    v83 = sub_26A8501F8();
    v159 = a1;
    a1 = v47;
    v84 = v43;
    v85 = v39;
    v86 = v35;
    v87 = v36;
    v88 = v28;
    v89 = v44;
    v90 = v83;
    sub_26A84EA78();

    v44 = v89;
    v28 = v88;
    v36 = v87;
    v35 = v86;
    v39 = v85;
    v43 = v84;
    v47 = a1;
    LOBYTE(a1) = v159;
    v91 = v160;
    sub_26A84F978();
    swift_getAtKeyPath();
    sub_26A49035C(v82, 0);
    (*(v161 + 8))(v91, v162);
  }

  sub_26A84ED48();
  OUTLINED_FUNCTION_75_0();
  (*(OpaqueTypeConformance2 + 32))(v35, v163, v28);
  OUTLINED_FUNCTION_9_10();
  v93 = &v35[v92];
  *v93 = a1;
  *(v93 + 1) = v3;
  *(v93 + 2) = v4;
  *(v93 + 3) = v5;
  *(v93 + 4) = v6;
  v93[40] = 0;
  sub_26A851448();
  sub_26A84F628();
  sub_26A4D7EA8();
  memcpy(&v39[*(v36 + 36)], __src, 0x70uLL);
  sub_26A4D7EA8();
  OUTLINED_FUNCTION_9_10();
  *&v43[v94] = 256;
  v95 = sub_26A850E78();
  KeyPath = swift_getKeyPath();
  sub_26A4D7EA8();
  v97 = &v47[*(v44 + 36)];
  *v97 = KeyPath;
  v97[1] = v95;
  sub_26A851408();
  v98 = v166;
  v99 = MEMORY[0x277CE1340];
  v100 = MEMORY[0x277CE1350];
  sub_26A84FB98();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B5D18, &unk_26A87C750);
  sub_26A723214();
  v193[0] = v100;
  v193[1] = v99;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_26A723358();
  v101 = v165;
  v102 = v191;
  sub_26A850CB8();
  v187 = *(v187 + 8);
  (v187)(v98, v102);
  sub_26A723410(v47);
  sub_26A850E18();
  v103 = v180;
  sub_26A720064(v180);
  v104 = v182;
  v105 = v181;
  v106 = v183;
  (*(v182 + 104))(v181, *MEMORY[0x277CDF3C0], v183);
  sub_26A84EE58();
  v107 = *(v104 + 8);
  v107(v105, v106);
  v107(v103, v106);
  v108 = sub_26A850E68();

  v109 = swift_getKeyPath();
  v110 = v167;
  (*(v168 + 32))(v167, v101, v169);
  OUTLINED_FUNCTION_9_10();
  v112 = (v110 + v111);
  *v112 = v109;
  v112[1] = v108;
  (*(v185 + 104))(v184, *MEMORY[0x277CE0EE0], v186);
  v113 = sub_26A850EA8();
  v114 = v170;
  sub_26A4D7EA8();
  OUTLINED_FUNCTION_9_10();
  v116 = v114 + v115;
  *v116 = v113;
  *(v116 + 8) = xmmword_26A860610;
  *(v116 + 24) = 0x4000000000000000;
  sub_26A850DD8();
  sub_26A84FFC8();
  v117 = sub_26A850E68();

  LOBYTE(v113) = sub_26A850248();
  v118 = v171;
  sub_26A4D7EA8();
  OUTLINED_FUNCTION_9_10();
  v120 = v118 + v119;
  *v120 = v117;
  *(v120 + 8) = v113;
  v121 = (v173 + *(v172 + 36));
  *v121 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB430, &qword_26A85B010);
  swift_storeEnumTagMultiPayload();
  v122 = v121 + *(type metadata accessor for CarPlayFocusableButton(0) + 20);
  *v122 = swift_getKeyPath();
  v122[8] = 0;
  sub_26A4D7EA8();
  sub_26A851408();
  sub_26A84FB98();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B5D48, &qword_26A87C800);
  sub_26A723498();
  sub_26A723858();
  v123 = v174;
  v124 = v191;
  sub_26A850CB8();
  (v187)(v98, v124);
  sub_26A4D6FD8();
  if (_UISolariumEnabled())
  {
    v125 = 18.0;
  }

  else
  {
    v125 = 12.0;
  }

  OUTLINED_FUNCTION_9_10();
  v126 = v175;
  v128 = (v175 + v127);
  v129 = *(sub_26A84F5F8() + 20);
  v130 = *MEMORY[0x277CE0118];
  sub_26A84FB88();
  OUTLINED_FUNCTION_46();
  (*(v131 + 104))(v128 + v129, v130);
  *v128 = v125;
  v128[1] = v125;
  *(v128 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A9E58, &unk_26A857A00) + 36)) = 256;
  (*(v177 + 32))(v126, v123, v178);
  v132 = sub_26A850278();
  v133 = v192 + *(v190 + 28);
  if (*(v133 + 32))
  {
    v134 = 10.0;
  }

  else
  {
    v134 = *(v133 + 24);
  }

  sub_26A84ED48();
  v136 = v135;
  v138 = v137;
  v140 = v139;
  v142 = v141;
  v143 = v176;
  sub_26A4D7EA8();
  OUTLINED_FUNCTION_9_10();
  v145 = v143 + v144;
  *v145 = v132;
  *(v145 + 8) = v136;
  *(v145 + 16) = v138;
  *(v145 + 24) = v140;
  *(v145 + 32) = v142;
  *(v145 + 40) = 0;
  v146 = sub_26A850298();
  sub_26A84ED48();
  OUTLINED_FUNCTION_75_0();
  v147 = v179;
  sub_26A4D7EA8();
  OUTLINED_FUNCTION_9_10();
  v149 = v147 + v148;
  *v149 = v146;
  *(v149 + 8) = v134;
  *(v149 + 16) = v136;
  *(v149 + 24) = v138;
  *(v149 + 32) = v140;
  *(v149 + 40) = 0;
  _UISolariumEnabled();
  sub_26A58C3E4();
  sub_26A4D6FD8();
  if (sub_26A84FFC8())
  {
    v150 = 0.95;
  }

  else
  {
    v150 = 1.0;
  }

  sub_26A8515A8();
  v152 = v151;
  v154 = v153;
  v155 = v189;
  sub_26A4D7EA8();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B5D90, &unk_26A87C810);
  v157 = v155 + *(result + 36);
  *v157 = v150;
  *(v157 + 8) = v150;
  *(v157 + 16) = v152;
  *(v157 + 24) = v154;
  return result;
}

uint64_t sub_26A721C48@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_26A84F2A8();
  MEMORY[0x28223BE20](v5);
  sub_26A84F298();
  v6 = sub_26A84F038();
  v7 = sub_26A850248();
  sub_26A723910(a1, a2);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B5D18, &unk_26A87C750);
  v9 = a2 + *(result + 36);
  *v9 = v6;
  *(v9 + 8) = v7;
  return result;
}

uint64_t sub_26A721D1C@<X0>(uint64_t a1@<X8>)
{
  v1 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B5D48, &qword_26A87C800) + 36);
  sub_26A8513E8();
  v2 = sub_26A850248();
  *(v1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AF440, &unk_26A877510) + 36)) = v2;

  return sub_26A4B3714();
}

uint64_t sub_26A721DAC(__n128 a1)
{
  sub_26A851408();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B5DD0, &qword_26A87C888);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B5DD8, &qword_26A87C890);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B5DE0, &qword_26A87C898);
  OUTLINED_FUNCTION_3_23();
  sub_26A4D7DCC();
  sub_26A723E28();
  sub_26A72407C();
  return sub_26A850CA8();
}

uint64_t sub_26A721ED4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v48 = a1;
  v49 = sub_26A84F5F8();
  MEMORY[0x28223BE20](v49);
  v54 = (&v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B5E50, &qword_26A87C8D0);
  MEMORY[0x28223BE20](v51);
  v53 = &v46 - v6;
  v7 = sub_26A84F988();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = sub_26A84EE68();
  v11 = *(v47 - 8);
  MEMORY[0x28223BE20](v47);
  v13 = &v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B5E10, &unk_26A87C8A8);
  MEMORY[0x28223BE20](v14);
  v56 = &v46 - v15;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B5E00, &qword_26A87C8A0);
  MEMORY[0x28223BE20](v50);
  v52 = &v46 - v16;
  v17 = a2 + *(type metadata accessor for CarPlayFocusableButton(0) + 20);
  v18 = *v17;
  v55 = *(v17 + 8);
  if (v55 == 1)
  {
    if ((v18 & 1) == 0)
    {
LABEL_3:
      sub_26A720064(v13);
      goto LABEL_6;
    }
  }

  else
  {

    sub_26A851EA8();
    v19 = sub_26A8501F8();
    v46 = a2;
    v20 = v19;
    sub_26A84EA78();

    sub_26A84F978();
    swift_getAtKeyPath();
    sub_26A49035C(v18, 0);
    (*(v8 + 8))(v10, v7);
    if (v59 != 1)
    {
      goto LABEL_3;
    }
  }

  sub_26A7225D0(v13);
LABEL_6:
  KeyPath = swift_getKeyPath();
  v22 = *(v14 + 36);
  v23 = v56;
  v24 = &v56[v22];
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A9E48, &unk_26A855BA0);
  (*(v11 + 32))(v24 + *(v25 + 28), v13, v47);
  *v24 = KeyPath;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B5DD0, &qword_26A87C888);
  (*(*(v26 - 8) + 16))(v23, v48, v26);
  if (_UISolariumEnabled())
  {
    v27 = 18.0;
  }

  else
  {
    v27 = 12.0;
  }

  v28 = *(v49 + 20);
  v29 = *MEMORY[0x277CE0118];
  v30 = sub_26A84FB88();
  v31 = v54;
  (*(*(v30 - 8) + 104))(v54 + v28, v29, v30);
  *v31 = v27;
  v31[1] = v27;
  if (v55)
  {
    v32 = v52;
    if ((v18 & 1) == 0)
    {
LABEL_11:
      v33 = sub_26A850DF8();
      goto LABEL_14;
    }
  }

  else
  {

    sub_26A851EA8();
    v34 = sub_26A8501F8();
    sub_26A84EA78();

    sub_26A84F978();
    swift_getAtKeyPath();
    sub_26A49035C(v18, 0);
    (*(v8 + 8))(v10, v7);
    v32 = v52;
    if (v58 != 1)
    {
      goto LABEL_11;
    }
  }

  v35 = [objc_opt_self() _carSystemFocusColor];
  v33 = sub_26A850D38();
LABEL_14:
  v36 = v33;
  v37 = v53;
  sub_26A63F65C(v31, v53);
  v38 = v51;
  *(v37 + *(v51 + 52)) = v36;
  *(v37 + *(v38 + 56)) = 256;
  v39 = sub_26A851448();
  v41 = v40;
  v42 = &v32[*(v50 + 36)];
  sub_26A4D7EA8();
  v43 = &v42[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B5E20, &qword_26A87C8B8) + 36)];
  *v43 = v39;
  v43[1] = v41;
  sub_26A4D7EA8();
  if (!v55)
  {

    sub_26A851EA8();
    v44 = sub_26A8501F8();
    sub_26A84EA78();

    sub_26A84F978();
    swift_getAtKeyPath();
    sub_26A49035C(v18, 0);
    (*(v8 + 8))(v10, v7);
    LOBYTE(v18) = v57;
  }

  sub_26A4D7EA8();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B5DD8, &qword_26A87C890);
  *(a3 + *(result + 36)) = v18 & 1;
  return result;
}

uint64_t sub_26A7225D0@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_26A84EE68();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v15 - v7;
  sub_26A720064(&v15 - v7);
  v9 = *MEMORY[0x277CDF3C0];
  v10 = *(v3 + 104);
  v10(v5, *MEMORY[0x277CDF3C0], v2);
  v11 = sub_26A84EE58();
  v12 = *(v3 + 8);
  v12(v5, v2);
  v12(v8, v2);
  if (v11)
  {
    v13 = *MEMORY[0x277CDF3D0];
  }

  else
  {
    v13 = v9;
  }

  return v10(a1, v13, v2);
}

uint64_t sub_26A722744@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v59 = a1;
  v65 = a3;
  v4 = sub_26A850D48();
  v63 = *(v4 - 8);
  v64 = v4;
  MEMORY[0x28223BE20](v4);
  v62 = &v52 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_26A84F988();
  v57 = *(v6 - 8);
  v58 = v6;
  MEMORY[0x28223BE20](v6);
  v56 = &v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_26A84EE68();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v52 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v52 - v13;
  v15 = sub_26A84F5F8();
  v16 = v15 - 8;
  MEMORY[0x28223BE20](v15);
  v18 = (&v52 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B1550, &unk_26A87C3C0);
  MEMORY[0x28223BE20](v19 - 8);
  v61 = &v52 - v20;
  if (_UISolariumEnabled())
  {
    v21 = 18.0;
  }

  else
  {
    v21 = 12.0;
  }

  v22 = *(v16 + 28);
  v23 = *MEMORY[0x277CE0118];
  v24 = sub_26A84FB88();
  (*(*(v24 - 8) + 104))(v18 + v22, v23, v24);
  *v18 = v21;
  v18[1] = v21;
  v60 = v18;
  sub_26A720064(v14);
  v25 = *MEMORY[0x277CDF3C0];
  v53 = *(v9 + 104);
  v53(v11, v25, v8);
  sub_26A84EE58();
  v26 = *(v9 + 8);
  v26(v11, v8);
  v55 = v8;
  v26(v14, v8);
  v27 = *(type metadata accessor for CarPlayFocusableButton(0) + 20);
  v54 = a2;
  v28 = a2 + v27;
  v29 = *v28;
  if (*(v28 + 8) == 1)
  {
    if ((v29 & 1) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  sub_26A851EA8();
  v30 = sub_26A8501F8();
  sub_26A84EA78();

  v31 = v56;
  sub_26A84F978();
  swift_getAtKeyPath();
  sub_26A49035C(v29, 0);
  (*(v57 + 8))(v31, v58);
  if (v66 == 1)
  {
LABEL_8:
    sub_26A720064(v14);
    v32 = v55;
    v53(v11, v25, v55);
    sub_26A84EE58();
    v26(v11, v32);
    v26(v14, v32);
  }

LABEL_9:
  (*(v63 + 104))(v62, *MEMORY[0x277CE0EE0], v64);
  v33 = sub_26A850EA8();
  sub_26A84EF18();
  v34 = v60;
  v35 = v61;
  sub_26A6F5ED4(v60, v61);
  v36 = v35 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B1558, &unk_26A86CA00) + 36);
  v37 = v67;
  *v36 = v66;
  *(v36 + 16) = v37;
  *(v36 + 32) = v68;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B1560, &unk_26A87C410);
  *(v35 + *(v38 + 52)) = v33;
  *(v35 + *(v38 + 56)) = 256;
  v39 = sub_26A851448();
  v41 = v40;
  sub_26A720648(v34);
  v42 = (v35 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B1568, &qword_26A86CA10) + 36));
  *v42 = v39;
  v42[1] = v41;
  v43 = sub_26A851448();
  v45 = v44;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B5DE0, &qword_26A87C898);
  v47 = v65;
  v48 = v65 + *(v46 + 36);
  sub_26A4D7EA8();
  v49 = (v48 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B5E48, &qword_26A87C8C8) + 36));
  *v49 = v43;
  v49[1] = v45;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B5DD0, &qword_26A87C888);
  return (*(*(v50 - 8) + 16))(v47, v59, v50);
}

uint64_t static FocusPreferenceKey.defaultValue.setter(char a1)
{
  result = swift_beginAccess();
  byte_2803B5CA8 = a1;
  return result;
}

uint64_t (*static FocusPreferenceKey.defaultValue.modify())(uint64_t a1)
{
  OUTLINED_FUNCTION_196();
  swift_beginAccess();
  return j__swift_endAccess_0;
}

uint64_t sub_26A722E8C@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = byte_2803B5CA8;
  return result;
}

uint64_t sub_26A722ED8(char *a1)
{
  v1 = *a1;
  result = swift_beginAccess();
  byte_2803B5CA8 = v1;
  return result;
}

char *sub_26A722F20(char *result, void *(*a2)(uint64_t *__return_ptr))
{
  v2 = result;
  if (*result)
  {
    v3 = 1;
  }

  else
  {
    result = a2(&v4);
    v3 = v4;
  }

  *v2 = v3;
  return result;
}

uint64_t static FocusPreferenceKey.reduce(value:nextValue:)(_BYTE *a1, uint64_t (*a2)(void))
{
  if (*a1)
  {
    result = 1;
  }

  else
  {
    result = a2();
  }

  *a1 = result & 1;
  return result;
}

uint64_t sub_26A722FB4@<X0>(_BYTE *a1@<X8>)
{
  result = static FocusPreferenceKey.defaultValue.getter();
  *a1 = result & 1;
  return result;
}

_BYTE *storeEnumTagSinglePayload for FocusPreferenceKey(_BYTE *result, int a2, int a3)
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

void sub_26A7230D8(uint64_t a1)
{
  sub_26A6C7C94(319, &qword_2803AD138, MEMORY[0x277D85048], type metadata accessor for EnvironmentConstant);
  if (v1 <= 0x3F)
  {
    sub_26A5B96FC(319);
    if (v2 <= 0x3F)
    {
      sub_26A6C7C94(319, &qword_2803AB788, MEMORY[0x277D839B0], MEMORY[0x277CDF468]);
      if (v3 <= 0x3F)
      {
        sub_26A6C7C94(319, &qword_2803AADC0, MEMORY[0x277CDF310], MEMORY[0x277D83D88]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

unint64_t sub_26A723214()
{
  result = qword_2803B5D20;
  if (!qword_2803B5D20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B5CD0, &qword_26A87C6C8);
    sub_26A7232CC();
    sub_26A4D7DCC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B5D20);
  }

  return result;
}

unint64_t sub_26A7232CC()
{
  result = qword_2803B5D28;
  if (!qword_2803B5D28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B5CC8, &qword_26A87C6C0);
    sub_26A59B574();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B5D28);
  }

  return result;
}

unint64_t sub_26A723358()
{
  result = qword_2803B5D30;
  if (!qword_2803B5D30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B5D18, &unk_26A87C750);
    sub_26A723214();
    sub_26A4D7DCC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B5D30);
  }

  return result;
}

uint64_t sub_26A723410(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B5CD0, &qword_26A87C6C8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_26A723498()
{
  result = qword_2803B5D50;
  if (!qword_2803B5D50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B5CF8, &qword_26A87C6F0);
    sub_26A723554();
    sub_26A723814();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B5D50);
  }

  return result;
}

unint64_t sub_26A723554()
{
  result = qword_2803B5D58;
  if (!qword_2803B5D58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B5CF0, &qword_26A87C6E8);
    sub_26A72360C();
    sub_26A4D7DCC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B5D58);
  }

  return result;
}

unint64_t sub_26A72360C()
{
  result = qword_2803B5D60;
  if (!qword_2803B5D60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B5CE8, &qword_26A87C6E0);
    sub_26A723698();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B5D60);
  }

  return result;
}

unint64_t sub_26A723698()
{
  result = qword_2803B5D68;
  if (!qword_2803B5D68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B5CE0, &qword_26A87C6D8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B5CD0, &qword_26A87C6C8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B5CC0, &unk_26A87F830);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B5D18, &unk_26A87C750);
    sub_26A723214();
    swift_getOpaqueTypeConformance2();
    sub_26A723358();
    swift_getOpaqueTypeConformance2();
    sub_26A4D7DCC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B5D68);
  }

  return result;
}

unint64_t sub_26A723814()
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

unint64_t sub_26A723858()
{
  result = qword_2803B5D88;
  if (!qword_2803B5D88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B5D48, &qword_26A87C800);
    sub_26A723498();
    sub_26A4D7DCC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B5D88);
  }

  return result;
}

uint64_t sub_26A723910(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B5CD0, &qword_26A87C6C8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_26A7239A8(uint64_t a1)
{
  sub_26A5B96FC(319);
  if (v1 <= 0x3F)
  {
    sub_26A6C7C94(319, &qword_2803AB788, MEMORY[0x277D839B0], MEMORY[0x277CDF468]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_26A723A50()
{
  result = qword_2803B5DA8;
  if (!qword_2803B5DA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B5D90, &unk_26A87C810);
    sub_26A723ADC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B5DA8);
  }

  return result;
}

unint64_t sub_26A723ADC()
{
  result = qword_2803B5DB0;
  if (!qword_2803B5DB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AE3A8, &unk_26A861260);
    sub_26A723B68();
    sub_26A4D6BF8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B5DB0);
  }

  return result;
}

unint64_t sub_26A723B68()
{
  result = qword_2803B5DB8;
  if (!qword_2803B5DB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AE3A0, &unk_26A87C710);
    sub_26A723BF4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B5DB8);
  }

  return result;
}

unint64_t sub_26A723BF4()
{
  result = qword_2803B5DC0;
  if (!qword_2803B5DC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B5D10, &qword_26A87C708);
    sub_26A723C80();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B5DC0);
  }

  return result;
}

unint64_t sub_26A723C80()
{
  result = qword_2803B5DC8;
  if (!qword_2803B5DC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B5D08, &qword_26A87C700);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B5CF8, &qword_26A87C6F0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B5CC0, &unk_26A87F830);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B5D48, &qword_26A87C800);
    sub_26A723498();
    swift_getOpaqueTypeConformance2();
    sub_26A723858();
    swift_getOpaqueTypeConformance2();
    sub_26A4D7DCC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B5DC8);
  }

  return result;
}

unint64_t sub_26A723E28()
{
  result = qword_2803B5DF0;
  if (!qword_2803B5DF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B5DD8, &qword_26A87C890);
    sub_26A723EE0();
    sub_26A4D7DCC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B5DF0);
  }

  return result;
}

unint64_t sub_26A723EE0()
{
  result = qword_2803B5DF8;
  if (!qword_2803B5DF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B5E00, &qword_26A87C8A0);
    sub_26A723F98();
    sub_26A4D7DCC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B5DF8);
  }

  return result;
}

unint64_t sub_26A723F98()
{
  result = qword_2803B5E08;
  if (!qword_2803B5E08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B5E10, &unk_26A87C8A8);
    sub_26A4D7DCC();
    sub_26A4D7DCC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B5E08);
  }

  return result;
}

unint64_t sub_26A72407C()
{
  result = qword_2803B5E38;
  if (!qword_2803B5E38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B5DE0, &qword_26A87C898);
    sub_26A4D7DCC();
    sub_26A4D7DCC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B5E38);
  }

  return result;
}

uint64_t sub_26A724160(uint64_t a1)
{
  v2 = sub_26A84EE68();
  v3 = MEMORY[0x28223BE20](v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  return sub_26A84F6E8();
}

BOOL sub_26A724250()
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
  sub_26A4E2544(v4, &qword_2803AAD50, &unk_26A857890);
  return v5 != 0;
}

id sub_26A724338@<X0>(char *a1@<X8>)
{
  v2 = v1;
  v4 = [v1 number];
  if (!v4)
  {
    goto LABEL_6;
  }

  v5 = v4;
  v6 = [v1 text_2];
  if (!v6)
  {

LABEL_6:
    sub_26A4E353C();
    swift_allocError();
    *v10 = v1;
    *(v10 + 8) = &unk_287B13998;
    *(v10 + 16) = 0;
    swift_willThrow();
    return v1;
  }

  v7 = v6;
  RFTextProperty.asPartialText()(v142);
  v145 = v7;
  RFTextProperty.asPartialText()(v141);
  v8 = [v1 text_1];
  if (v8)
  {
    v9 = v8;
    *(&v139 + 1) = &type metadata for PartialText;
    v140 = &protocol witness table for PartialText;
    OUTLINED_FUNCTION_1_9();
    *&v138 = swift_allocObject();
    RFTextProperty.asPartialText()(v138 + 16);
  }

  else
  {
    v140 = 0;
    v138 = 0u;
    v139 = 0u;
  }

  v12 = sub_26A54AB40(v2, &selRef_text_3);
  if (v12)
  {
    sub_26A51B744(v12, __src);
    memcpy(__dst, __src, 0x41uLL);
    sub_26A54AAEC();
    v12 = sub_26A851248();
    v13 = &protocol witness table for AnyView;
    v14 = MEMORY[0x277CE11C8];
  }

  else
  {
    v14 = 0;
    v13 = 0;
    v137[2] = 0;
    v137[1] = 0;
  }

  v137[0] = v12;
  v137[3] = v14;
  v137[4] = v13;
  v15 = sub_26A54AB40(v2, &selRef_text_4);
  if (v15)
  {
    sub_26A51B744(v15, __dst);
    sub_26A54AAEC();
    v15 = sub_26A851248();
    v16 = &protocol witness table for AnyView;
    v17 = MEMORY[0x277CE11C8];
  }

  else
  {
    v17 = 0;
    v16 = 0;
    v136[2] = 0;
    v136[1] = 0;
  }

  v136[0] = v15;
  v136[3] = v17;
  v136[4] = v16;
  v18 = [v2 text_5];
  if (v18)
  {
    v19 = v18;
    *(&v134 + 1) = &type metadata for PartialText;
    v135 = &protocol witness table for PartialText;
    OUTLINED_FUNCTION_1_9();
    *&v133 = swift_allocObject();
    RFTextProperty.asPartialText()(v133 + 16);
  }

  else
  {
    v135 = 0;
    v133 = 0u;
    v134 = 0u;
  }

  v20 = [v2 text_6];
  if (v20)
  {
    v21 = v20;
    *(&v131 + 1) = &type metadata for PartialText;
    v132 = &protocol witness table for PartialText;
    OUTLINED_FUNCTION_1_9();
    *&v130 = swift_allocObject();
    RFTextProperty.asPartialText()(v130 + 16);
  }

  else
  {
    v132 = 0;
    v130 = 0u;
    v131 = 0u;
  }

  v22 = [v2 thumbnail];
  if (v22)
  {
    v23 = v22;
    *(&v128 + 1) = sub_26A84BD28();
    v129 = &protocol witness table for VisualProperty;
    __swift_allocate_boxed_opaque_existential_1(&v127);
    RFVisualProperty.asVisualProperty()();
  }

  else
  {
    v129 = 0;
    v127 = 0u;
    v128 = 0u;
  }

  if (qword_28157E670 != -1)
  {
    swift_once();
  }

  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B3890, &unk_26A856670);
  v25 = __swift_project_value_buffer(v24, qword_281588798);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91A0, &qword_26A854C60);
  v27 = &a1[*(v26 + 32)];
  sub_26A4EA070(v25, v27, &qword_2803B3890, &unk_26A856670);
  sub_26A6AEE74(v144);
  memcpy(a1, v144, 0xBFuLL);
  sub_26A4DB4E0(&v27[*(v24 + 36)], &a1[*(v26 + 28)]);
  v28 = type metadata accessor for SummaryItemShortNumberView(0);
  v29 = &a1[v28[5]];
  *v29 = swift_getKeyPath();
  v29[8] = 0;
  v30 = v28[6];
  *&a1[v30] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A9190, &unk_26A854C50);
  swift_storeEnumTagMultiPayload();
  v31 = &a1[v28[7]];
  *v31 = swift_getKeyPath();
  v31[8] = 0;
  v32 = v28[8];
  *&a1[v32] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91A8, &qword_26A857040);
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_4_7(v125);
  OUTLINED_FUNCTION_4_7(__dst);
  sub_26A4EC458(v125, v123);
  v33 = sub_26A4EC4B4();
  *&a1[v28[9]] = sub_26A851248();
  OUTLINED_FUNCTION_5_65(__dst);
  OUTLINED_FUNCTION_5_65(v123);
  sub_26A4EC458(__dst, &v91);
  *&a1[v28[10]] = sub_26A851248();
  sub_26A4EA070(&v138, v123, &qword_2803A91B8, &qword_26A8575C0);
  if (v124)
  {
    __swift_project_boxed_opaque_existential_1(v123, v124);
    v34 = OUTLINED_FUNCTION_0_11();
    v36 = v35(v34);
    OUTLINED_FUNCTION_3_72(v36, v37, v38, v39, v40, v41, v42, v43, v87, v88[0], v88[1], v88[2], v89, v90, v91, v92, v93, v94, v95, v96, v97, v98, v99, v100, v101, v102, v103, v104, v105, v106, v107, v108, v109, v110, v111, v112, v113, v114, v115, v116, v117, v118, v119, v120, v121, v122);
  }

  else
  {
    sub_26A4E2544(v123, &qword_2803A91B8, &qword_26A8575C0);
    v33 = 0;
  }

  *&a1[v28[11]] = v33;
  sub_26A4EA070(v137, v123, &qword_2803A91B8, &qword_26A8575C0);
  if (v124)
  {
    __swift_project_boxed_opaque_existential_1(v123, v124);
    v44 = OUTLINED_FUNCTION_0_11();
    v46 = v45(v44);
    OUTLINED_FUNCTION_3_72(v46, v47, v48, v49, v50, v51, v52, v53, v87, v88[0], v88[1], v88[2], v89, v90, v91, v92, v93, v94, v95, v96, v97, v98, v99, v100, v101, v102, v103, v104, v105, v106, v107, v108, v109, v110, v111, v112, v113, v114, v115, v116, v117, v118, v119, v120, v121, v122);
  }

  else
  {
    sub_26A4E2544(v123, &qword_2803A91B8, &qword_26A8575C0);
    v33 = 0;
  }

  *&a1[v28[12]] = v33;
  sub_26A4EA070(v136, v123, &qword_2803A91B8, &qword_26A8575C0);
  if (v124)
  {
    __swift_project_boxed_opaque_existential_1(v123, v124);
    v54 = OUTLINED_FUNCTION_0_11();
    v56 = v55(v54);
    OUTLINED_FUNCTION_3_72(v56, v57, v58, v59, v60, v61, v62, v63, v87, v88[0], v88[1], v88[2], v89, v90, v91, v92, v93, v94, v95, v96, v97, v98, v99, v100, v101, v102, v103, v104, v105, v106, v107, v108, v109, v110, v111, v112, v113, v114, v115, v116, v117, v118, v119, v120, v121, v122);
  }

  else
  {
    sub_26A4E2544(v123, &qword_2803A91B8, &qword_26A8575C0);
    v33 = 0;
  }

  *&a1[v28[13]] = v33;
  sub_26A4EA070(&v133, v123, &qword_2803A91B8, &qword_26A8575C0);
  if (v124)
  {
    __swift_project_boxed_opaque_existential_1(v123, v124);
    v64 = OUTLINED_FUNCTION_0_11();
    v66 = v65(v64);
    OUTLINED_FUNCTION_3_72(v66, v67, v68, v69, v70, v71, v72, v73, v87, v88[0], v88[1], v88[2], v89, v90, v91, v92, v93, v94, v95, v96, v97, v98, v99, v100, v101, v102, v103, v104, v105, v106, v107, v108, v109, v110, v111, v112, v113, v114, v115, v116, v117, v118, v119, v120, v121, v122);
  }

  else
  {
    sub_26A4E2544(v123, &qword_2803A91B8, &qword_26A8575C0);
    v33 = 0;
  }

  *&a1[v28[14]] = v33;
  sub_26A4EA070(&v130, v123, &qword_2803A91B8, &qword_26A8575C0);
  if (v124)
  {
    __swift_project_boxed_opaque_existential_1(v123, v124);
    v74 = OUTLINED_FUNCTION_0_11();
    v76 = v75(v74);
    OUTLINED_FUNCTION_3_72(v76, v77, v78, v79, v80, v81, v82, v83, v87, v88[0], v88[1], v88[2], v89, v90, v91, v92, v93, v94, v95, v96, v97, v98, v99, v100, v101, v102, v103, v104, v105, v106, v107, v108, v109, v110, v111, v112, v113, v114, v115, v116, v117, v118, v119, v120, v121, v122);
  }

  else
  {
    sub_26A4E2544(v123, &qword_2803A91B8, &qword_26A8575C0);
    v33 = 0;
  }

  *&a1[v28[15]] = v33;
  sub_26A4EA070(&v127, v88, &qword_2803A91B8, &qword_26A8575C0);
  if (v89)
  {
    __swift_project_boxed_opaque_existential_1(v88, v89);
    v84 = OUTLINED_FUNCTION_0_11();
    v86 = v85(v84);

    OUTLINED_FUNCTION_5_65(&v91);
    sub_26A4EC508(&v91);
    OUTLINED_FUNCTION_4_7(v123);
    sub_26A4EC508(v123);
    OUTLINED_FUNCTION_3_7(&v127);
    OUTLINED_FUNCTION_3_7(&v130);
    OUTLINED_FUNCTION_3_7(&v133);
    OUTLINED_FUNCTION_3_7(v136);
    OUTLINED_FUNCTION_3_7(v137);
    OUTLINED_FUNCTION_3_7(&v138);
    result = __swift_destroy_boxed_opaque_existential_1(v88);
  }

  else
  {

    OUTLINED_FUNCTION_5_65(&v91);
    sub_26A4EC508(&v91);
    OUTLINED_FUNCTION_4_7(v123);
    sub_26A4EC508(v123);
    OUTLINED_FUNCTION_2_8(&v127);
    OUTLINED_FUNCTION_2_8(&v130);
    OUTLINED_FUNCTION_2_8(&v133);
    OUTLINED_FUNCTION_2_8(v136);
    OUTLINED_FUNCTION_2_8(v137);
    OUTLINED_FUNCTION_2_8(&v138);
    result = OUTLINED_FUNCTION_2_8(v88);
    v86 = 0;
  }

  *&a1[v28[16]] = v86;
  return result;
}

unint64_t sub_26A724C3C()
{
  result = qword_2803ADBC0;
  if (!qword_2803ADBC0)
  {
    type metadata accessor for SummaryItemShortNumberView(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803ADBC0);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_3_72(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, ...)
{
  va_start(va, a46);

  return __swift_destroy_boxed_opaque_existential_1(va);
}

void *OUTLINED_FUNCTION_5_65(void *a1)
{

  return memcpy(a1, &STACK[0x538], 0xFAuLL);
}

id sub_26A724CEC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = v2;
  v33 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B5E70, &unk_26A87CA78);
  OUTLINED_FUNCTION_46();
  MEMORY[0x28223BE20](v7);
  v9 = &v32 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B5E78, &unk_26A87CA88);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v32 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AF670, &qword_26A865070);
  OUTLINED_FUNCTION_46();
  *&v15 = MEMORY[0x28223BE20](v14).n128_u64[0];
  v17 = &v32 - v16;
  v18 = [v2 summary:v15 item:? standard:? card:?section];
  if (!v18)
  {
    goto LABEL_5;
  }

  v19 = v18;
  sub_26A5C9684(v12);
  if (v3)
  {

    __swift_storeEnumTagSinglePayload(v12, 1, 1, v13);
    v20 = &qword_2803B5E78;
    v21 = &unk_26A87CA88;
    v22 = v12;
LABEL_4:
    sub_26A4DBD10(v22, v20, v21);
LABEL_5:
    sub_26A4E353C();
    swift_allocError();
    *v23 = v4;
    *(v23 + 8) = &unk_287B137B8;
    *(v23 + 16) = 0;
    swift_willThrow();
    return v4;
  }

  __swift_storeEnumTagSinglePayload(v12, 0, 1, v13);
  sub_26A4DBDB4(v12, v17, &qword_2803AF670, &qword_26A865070);
  v25 = sub_26A72584C(v4);

  if (!v25)
  {
    v20 = &qword_2803AF670;
    v21 = &qword_26A865070;
    v22 = v17;
    goto LABEL_4;
  }

  sub_26A4DBDB4(v17, v9, &qword_2803AF670, &qword_26A865070);
  v26 = swift_allocObject();
  *(v26 + 16) = v25;
  *(v26 + 24) = a1;
  v27 = &v9[*(v6 + 56)];
  v28 = &v9[*(v6 + 52)];
  *v28 = sub_26A7258AC;
  v28[1] = v26;
  v27[16] = 0;
  *v27 = 0;
  *(v27 + 1) = 0;
  KeyPath = swift_getKeyPath();
  v30 = v33;
  sub_26A4DBD68(v9, v33, &qword_2803B5E70, &unk_26A87CA78);
  v31 = v30 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B5E60, &qword_26A87CA70) + 36);
  *v31 = KeyPath;
  *(v31 + 8) = 1;

  return sub_26A4DBD10(v9, &qword_2803B5E70, &unk_26A87CA78);
}

uint64_t sub_26A725004(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  *(swift_allocObject() + 16) = a2;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B5E80, &qword_26A87CAE0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B5E88, &qword_26A87CAE8);
  sub_26A4DBCC8(&qword_2803B5E90, &qword_2803B5E80, &qword_26A87CAE0, MEMORY[0x277D83980]);
  sub_26A725B80(&qword_2803B5E98, sub_26A7258BC, MEMORY[0x277D85378]);
  sub_26A725900();
  return sub_26A8512F8();
}

uint64_t sub_26A725168@<X0>(void **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v33[1] = a2;
  v38 = a3;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B5ED8, &unk_26A87CB00);
  MEMORY[0x28223BE20](v35);
  v5 = v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = v33 - v7;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B5EE0, &qword_26A87CB10);
  MEMORY[0x28223BE20](v36);
  v10 = (v33 - v9);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B5EE8, &qword_26A87CB18);
  MEMORY[0x28223BE20](v34);
  v12 = v33 - v11;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B5EB8, &qword_26A87CAF0);
  MEMORY[0x28223BE20](v37);
  v14 = v33 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B5EC8, &qword_26A87CAF8);
  MEMORY[0x28223BE20](v15);
  v17 = v33 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v19 = MEMORY[0x28223BE20](v18).n128_u64[0];
  v21 = v33 - v20;
  v22 = *a1;
  v23 = [v22 long:v19 item:? standard:? card:?section];
  if (v23)
  {
    v24 = v23;
    sub_26A5F1A60(0, v17);
    v25 = type metadata accessor for LongItemTextView(0);
    __swift_storeEnumTagSinglePayload(v17, 0, 1, v25);
    sub_26A4DBDB4(v17, v21, &qword_2803B5EC8, &qword_26A87CAF8);
    sub_26A4DBD68(v21, v12, &qword_2803B5EC8, &qword_26A87CAF8);
    swift_storeEnumTagMultiPayload();
    sub_26A725A18();
    sub_26A725ACC();
    sub_26A84FDF8();
    sub_26A4DBD68(v14, v10, &qword_2803B5EB8, &qword_26A87CAF0);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803ACE68, &qword_26A85C8F0);
    sub_26A72598C();
    sub_26A551788();
    sub_26A84FDF8();

    sub_26A4DBD10(v14, &qword_2803B5EB8, &qword_26A87CAF0);
    v26 = v21;
    v27 = &qword_2803B5EC8;
    v28 = &qword_26A87CAF8;
  }

  else
  {
    v29 = [v22 reference_footnote_card_section];
    if (!v29)
    {
      *v10 = &sub_26A7256DC;
      v10[1] = 0;
      v10[2] = 0;
      v10[3] = 0;
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803ACE68, &qword_26A85C8F0);
      sub_26A72598C();
      sub_26A551788();
      return sub_26A84FDF8();
    }

    v30 = v29;
    sub_26A698FC0(v5);
    v31 = type metadata accessor for ReferenceFootnoteView(0);
    __swift_storeEnumTagSinglePayload(v5, 0, 1, v31);
    sub_26A4DBDB4(v5, v8, &qword_2803B5ED8, &unk_26A87CB00);
    sub_26A4DBD68(v8, v12, &qword_2803B5ED8, &unk_26A87CB00);
    swift_storeEnumTagMultiPayload();
    sub_26A725A18();
    sub_26A725ACC();
    sub_26A84FDF8();
    sub_26A4DBD68(v14, v10, &qword_2803B5EB8, &qword_26A87CAF0);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803ACE68, &qword_26A85C8F0);
    sub_26A72598C();
    sub_26A551788();
    sub_26A84FDF8();

    sub_26A4DBD10(v14, &qword_2803B5EB8, &qword_26A87CAF0);
    v26 = v8;
    v27 = &qword_2803B5ED8;
    v28 = &unk_26A87CB00;
  }

  return sub_26A4DBD10(v26, v27, v28);
}

unint64_t sub_26A725768()
{
  result = qword_2803B5E58;
  if (!qword_2803B5E58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B5E60, &qword_26A87CA70);
    sub_26A4DBCC8(&qword_2803B5E68, &qword_2803B5E70, &unk_26A87CA78, &protocol conformance descriptor for ExpandableStandardView<A, B>);
    sub_26A4DBCC8(&qword_28157FB50, &unk_2803B31B0, &unk_26A858ED0, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B5E58);
  }

  return result;
}

uint64_t sub_26A72584C(void *a1)
{
  v1 = [a1 expanding_component_content];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  sub_26A7258BC();
  v3 = sub_26A851A98();

  return v3;
}

unint64_t sub_26A7258BC()
{
  result = qword_2803B5EA0;
  if (!qword_2803B5EA0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2803B5EA0);
  }

  return result;
}

unint64_t sub_26A725900()
{
  result = qword_2803B5EA8;
  if (!qword_2803B5EA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B5E88, &qword_26A87CAE8);
    sub_26A72598C();
    sub_26A551788();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B5EA8);
  }

  return result;
}

unint64_t sub_26A72598C()
{
  result = qword_2803B5EB0;
  if (!qword_2803B5EB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B5EB8, &qword_26A87CAF0);
    sub_26A725A18();
    sub_26A725ACC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B5EB0);
  }

  return result;
}

unint64_t sub_26A725A18()
{
  result = qword_2803B5EC0;
  if (!qword_2803B5EC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B5EC8, &qword_26A87CAF8);
    sub_26A725B80(&qword_2803B0148, type metadata accessor for LongItemTextView, &protocol conformance descriptor for LongItemTextView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B5EC0);
  }

  return result;
}

unint64_t sub_26A725ACC()
{
  result = qword_2803B5ED0;
  if (!qword_2803B5ED0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B5ED8, &unk_26A87CB00);
    sub_26A725B80(&qword_2803AFD80, type metadata accessor for ReferenceFootnoteView, &protocol conformance descriptor for ReferenceFootnoteView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B5ED0);
  }

  return result;
}

uint64_t sub_26A725B80(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_26A725BC8()
{
  *(v0 + 16) = sub_26A851BD8();
  *(v0 + 24) = sub_26A851BC8();

  return MEMORY[0x2822009F8](sub_26A725C40);
}

uint64_t sub_26A725C40(uint64_t a1)
{
  *(v1 + 32) = sub_26A851BC8();
  sub_26A851B78();

  return MEMORY[0x2822009F8](sub_26A725CCC);
}

uint64_t sub_26A725CCC()
{

  if (qword_2803A8DE0 != -1)
  {
    swift_once();
  }

  sub_26A831330();
  sub_26A851B78();

  return MEMORY[0x2822009F8](sub_26A725D9C);
}

uint64_t sub_26A725D9C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_26A725DFC(uint64_t a1)
{
  type metadata accessor for ImageSourceModelLoaderCache();
  v1 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B5EF0, &qword_26A87CB88);
  swift_allocObject();
  result = sub_26A831664(30, 0, sub_26A69396C, 0, 300.0);
  *(v1 + 16) = result;
  qword_2803D2368 = v1;
  return result;
}

uint64_t sub_26A725E88()
{

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

uint64_t ImageElementView.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = OUTLINED_FUNCTION_0_80(a2);
  sub_26A5E9128((a2 + *(v4 + 24)));
  v5 = sub_26A84B2D8();
  sub_26A84B718();
  OUTLINED_FUNCTION_46();
  result = (*(v6 + 8))(a1);
  *(a2 + 24) = v5;
  return result;
}

{
  v4 = OUTLINED_FUNCTION_0_80(a2);
  result = sub_26A5E9128((a2 + *(v4 + 24)));
  *(a2 + 24) = a1;
  return result;
}

uint64_t sub_26A725F68()
{
  v4 = 0;
  memset(v3, 0, sizeof(v3));
  if (qword_28157F8F8 != -1)
  {
    swift_once();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B5F08, &qword_26A87CC18);
  v0 = swift_allocObject();

  return sub_26A727BD0(v1, v3, v0);
}

uint64_t type metadata accessor for ImageElementView(uint64_t a1)
{
  result = qword_28157EFF0;
  if (!qword_28157EFF0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void ImageElementView.init(_:)(uint64_t a2@<X8>)
{
  v3 = OUTLINED_FUNCTION_0_80(a2);
  sub_26A5E9128((a2 + *(v3 + 24)));
  v4 = sub_26A851AA8();

  *(a2 + 24) = v4;
}

uint64_t ImageElementView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v2;
  v5 = sub_26A84F9E8();
  OUTLINED_FUNCTION_15();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  v10 = v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B0CF0, &qword_26A87CB90);
  OUTLINED_FUNCTION_15();
  v13 = v12;
  MEMORY[0x28223BE20](v14);
  v16 = v23 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = v23 - v18;
  sub_26A726344(v3, a1);
  sub_26A84F9D8();
  sub_26A8514B8();
  v20 = sub_26A727A70();
  sub_26A84EE38();

  (*(v7 + 8))(v10, v5);
  (*(v13 + 16))(v16, v19, v11);
  v23[0] = v5;
  v23[1] = v20;
  swift_getOpaqueTypeConformance2();
  v21 = sub_26A84F058();
  (*(v13 + 8))(v19, v11);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B5EF8, &qword_26A87CB98);
  *(a1 + *(result + 36)) = v21;
  return result;
}

uint64_t sub_26A726344@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v91 = a2;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B5F90, &unk_26A87D9E0);
  MEMORY[0x28223BE20](v84);
  v85 = &v67 - v3;
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B5F88, &unk_26A87CC50);
  MEMORY[0x28223BE20](v90);
  v88 = &v67 - v4;
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B5FA0, &unk_26A87CC70);
  MEMORY[0x28223BE20](v89);
  v87 = &v67 - v5;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B5F70, &qword_26A87CC40);
  MEMORY[0x28223BE20](v81);
  v82 = &v67 - v6;
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B5F60, &qword_26A87CC38);
  MEMORY[0x28223BE20](v86);
  v76 = &v67 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AFE50, &unk_26A867F20);
  MEMORY[0x28223BE20](v8 - 8);
  v75 = &v67 - v9;
  v10 = sub_26A84B2F8();
  v79 = *(v10 - 8);
  v80 = v10;
  MEMORY[0x28223BE20](v10);
  v78 = &v67 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v77 = &v67 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B5FA8, &unk_26A87CC80);
  MEMORY[0x28223BE20](v14);
  v16 = (&v67 - v15);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB9D8, &unk_26A8591C0);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = &v67 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v22 = &v67 - v21;
  v23 = sub_26A84B408();
  v83 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v25 = &v67 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B5F50, &qword_26A87CC30);
  MEMORY[0x28223BE20](v26);
  v28 = &v67 - v27;
  v29 = a1;
  v30 = sub_26A726F78();
  if (v30)
  {
    *v16 = v30;
    swift_storeEnumTagMultiPayload();
    sub_26A727708();
    return sub_26A84FDF8();
  }

  v68 = v25;
  v69 = v23;
  v71 = v19;
  v72 = v28;
  v73 = v26;
  v74 = v14;
  v33 = v87;
  v32 = v88;
  v70 = *(a1 + 24);
  sub_26A7DBBF8(v70, v22);
  v34 = sub_26A84B258();
  if (__swift_getEnumTagSinglePayload(v22, 1, v34) == 1)
  {
    sub_26A4D6FD8();
    v35 = v33;
    v82 = v16;
LABEL_9:
    v54 = v32;
    v55 = v84;
    v56 = v85;
    v57 = v71;
LABEL_10:
    v58 = sub_26A84FE98();
    v59 = &v56[*(v55 + 36)];
    v60 = type metadata accessor for VibrancyModifier(0);
    v61 = *(v60 + 20);
    *&v59[v61] = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB430, &qword_26A85B010);
    swift_storeEnumTagMultiPayload();
    v62 = &v59[*(v60 + 24)];
    *v62 = swift_getKeyPath();
    v62[8] = 0;
    *v59 = 2;
    *v56 = v58;
    *(v56 + 2) = 256;
    sub_26A7DBBF8(v70, v57);
    sub_26A72E6C8(v57);
    sub_26A4D6FD8();
    sub_26A4D6FD8();
    sub_26A51D0F8(v54, v35, &qword_2803B5F88, &unk_26A87CC50);
    swift_storeEnumTagMultiPayload();
    sub_26A7277EC(&qword_2803B5F58, &qword_2803B5F60, &qword_26A87CC38, sub_26A7278A0);
    sub_26A7277EC(&qword_28157FDA0, &qword_2803B5F88, &unk_26A87CC50, sub_26A727988);
    v53 = v72;
    sub_26A84FDF8();
    sub_26A4D6FD8();
    v37 = v82;
    goto LABEL_11;
  }

  v36 = *(v34 - 8);
  v37 = v16;
  if ((*(v36 + 88))(v22, v34) != *MEMORY[0x277D62C68])
  {
    v82 = v16;
    (*(v36 + 8))(v22, v34);
    v35 = v33;
    goto LABEL_9;
  }

  v67 = v29;
  (*(v36 + 96))(v22, v34);
  (*(v83 + 32))(v68, v22, v69);
  v38 = v77;
  sub_26A84B3D8();
  v40 = v78;
  v39 = v79;
  v41 = v80;
  (*(v79 + 104))(v78, *MEMORY[0x277D62D20], v80);
  sub_26A727A70();
  sub_26A851A48();
  sub_26A851A48();
  v42 = *(v39 + 8);
  v42(v40, v41);
  v42(v38, v41);
  v35 = v33;
  v44 = v81;
  v43 = v82;
  if (v93 != v92)
  {
    v54 = v32;
    v63 = v67 + *(type metadata accessor for ImageElementView(0) + 24);
    v64 = type metadata accessor for EnvironmentImagePreferences(0);
    v65 = v75;
    sub_26A51D0F8(v63 + *(v64 + 52), v75, &qword_2803AFE50, &unk_26A867F20);
    v66 = sub_26A84B1D8();
    if (__swift_getEnumTagSinglePayload(v65, 1, v66) == 1)
    {
      sub_26A4D6FD8();
    }

    else
    {
      LODWORD(v80) = ImageElement.ImageStyle.isContactStyle.getter();
      (*(*(v66 - 8) + 8))(v65, v66);
      if (v80)
      {
        goto LABEL_7;
      }
    }

    v82 = v37;
    (*(v83 + 8))(v68, v69);
    v55 = v84;
    v56 = v85;
    v57 = v71;
    goto LABEL_10;
  }

LABEL_7:
  v45 = sub_26A84FE98();
  v46 = v43;
  v47 = &v43[*(v44 + 36)];
  v48 = type metadata accessor for VibrancyModifier(0);
  v49 = *(v48 + 20);
  *&v47[v49] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB430, &qword_26A85B010);
  swift_storeEnumTagMultiPayload();
  v50 = &v47[*(v48 + 24)];
  *v50 = swift_getKeyPath();
  v50[8] = 0;
  *v47 = 2;
  *v46 = v45;
  *(v46 + 2) = 256;
  v51 = v71;
  sub_26A7DBBF8(v70, v71);
  v52 = v76;
  sub_26A72E6A4(v51);
  sub_26A4D6FD8();
  sub_26A4D6FD8();
  sub_26A51D0F8(v52, v33, &qword_2803B5F60, &qword_26A87CC38);
  swift_storeEnumTagMultiPayload();
  sub_26A7277EC(&qword_2803B5F58, &qword_2803B5F60, &qword_26A87CC38, sub_26A7278A0);
  sub_26A7277EC(&qword_28157FDA0, &qword_2803B5F88, &unk_26A87CC50, sub_26A727988);
  v53 = v72;
  sub_26A84FDF8();
  sub_26A4D6FD8();
  (*(v83 + 8))(v68, v69);
LABEL_11:
  sub_26A51D0F8(v53, v37, &qword_2803B5F50, &qword_26A87CC30);
  swift_storeEnumTagMultiPayload();
  sub_26A727708();
  sub_26A84FDF8();
  return sub_26A4D6FD8();
}

uint64_t sub_26A726F78()
{
  v20 = type metadata accessor for ImageElementView(0);
  MEMORY[0x28223BE20](v20);
  v2 = v19 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B2D28, &unk_26A872090);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v21 = v19 - v7;
  MEMORY[0x28223BE20](v8);
  v10 = v19 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B5F08, &qword_26A87CC18);
  sub_26A4D7DCC();
  v19[1] = v11;
  sub_26A84EEF8();
  v12 = sub_26A84B258();
  v24 = v12;
  v13 = sub_26A727A70();
  v25 = v13;
  swift_getKeyPath();
  v22 = v12;
  v23 = v13;
  swift_getKeyPath();
  sub_26A84EC18();

  sub_26A727AB4(v0, v2);
  sub_26A51D0F8(v10, v5, &qword_2803B2D28, &unk_26A872090);
  v14 = type metadata accessor for ImageSourceModel(0);
  if (__swift_getEnumTagSinglePayload(v5, 1, v14) == 1)
  {
    sub_26A84EEF8();
    type metadata accessor for EnvironmentImagePreferences(0);
    v15 = v21;
    sub_26A72F28C();

    sub_26A727B18();
    if (__swift_getEnumTagSinglePayload(v5, 1, v14) != 1)
    {
      sub_26A4D6FD8();
    }
  }

  else
  {
    sub_26A727B18();
    v15 = v21;
    sub_26A727B6C(v5, v21);
    __swift_storeEnumTagSinglePayload(v15, 0, 1, v14);
  }

  if (__swift_getEnumTagSinglePayload(v15, 1, v14) == 1)
  {
    sub_26A4D6FD8();
    sub_26A4D6FD8();
    return 0;
  }

  else
  {
    sub_26A68A2F0();
    v16 = v17;
    sub_26A4D6FD8();
    sub_26A727B18();
  }

  return v16;
}

void sub_26A7273A8(uint64_t a1)
{
  sub_26A727444(319);
  if (v2 <= 0x3F)
  {
    sub_26A7274E8(319, v1);
    if (v3 <= 0x3F)
    {
      type metadata accessor for EnvironmentImagePreferences(319);
      if (v4 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_26A727444(uint64_t a1)
{
  if (!qword_2803B5F00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B5F08, &qword_26A87CC18);
    sub_26A4D7DCC();
    v1 = sub_26A84EF08();
    if (!v2)
    {
      atomic_store(v1, &qword_2803B5F00);
    }
  }
}

void sub_26A7274E8(uint64_t a1, __n128 a2)
{
  if (!qword_2803B5F18)
  {
    sub_26A84B258();
    v2 = sub_26A851B48();
    if (!v3)
    {
      atomic_store(v2, &qword_2803B5F18);
    }
  }
}

unint64_t sub_26A727540()
{
  result = qword_2803B5F20;
  if (!qword_2803B5F20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B5EF8, &qword_26A87CB98);
    sub_26A7275F8();
    sub_26A4D7DCC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B5F20);
  }

  return result;
}

unint64_t sub_26A7275F8()
{
  result = qword_2803B5F28;
  if (!qword_2803B5F28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B5F30, &qword_26A87CC20);
    sub_26A72767C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B5F28);
  }

  return result;
}

unint64_t sub_26A72767C()
{
  result = qword_2803B5F38;
  if (!qword_2803B5F38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B5F40, &qword_26A87CC28);
    sub_26A727708();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B5F38);
  }

  return result;
}

unint64_t sub_26A727708()
{
  result = qword_2803B5F48;
  if (!qword_2803B5F48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B5F50, &qword_26A87CC30);
    sub_26A7277EC(&qword_2803B5F58, &qword_2803B5F60, &qword_26A87CC38, sub_26A7278A0);
    sub_26A7277EC(&qword_28157FDA0, &qword_2803B5F88, &unk_26A87CC50, sub_26A727988);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B5F48);
  }

  return result;
}

uint64_t sub_26A7277EC(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    sub_26A727A70();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_26A7278A0()
{
  result = qword_2803B5F68;
  if (!qword_2803B5F68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B5F70, &qword_26A87CC40);
    sub_26A4D7DCC();
    sub_26A727A70();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B5F68);
  }

  return result;
}

unint64_t sub_26A727988()
{
  result = qword_28157FE10;
  if (!qword_28157FE10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B5F90, &unk_26A87D9E0);
    sub_26A4D7DCC();
    sub_26A727A70();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28157FE10);
  }

  return result;
}

unint64_t sub_26A727A70()
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

uint64_t sub_26A727AB4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ImageElementView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26A727B18()
{
  OUTLINED_FUNCTION_196();
  v1(0);
  OUTLINED_FUNCTION_46();
  (*(v2 + 8))(v0);
  return v0;
}

uint64_t sub_26A727B6C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ImageSourceModel(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_26A727BD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v34 = a2;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B5FC0, &qword_26A87CD50);
  OUTLINED_FUNCTION_15();
  v33 = v5;
  MEMORY[0x28223BE20](v6);
  v8 = &v32 - v7;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B5FC8, &qword_26A87CD58);
  OUTLINED_FUNCTION_15();
  v10 = v9;
  MEMORY[0x28223BE20](v11);
  v13 = &v32 - v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B2D28, &unk_26A872090);
  OUTLINED_FUNCTION_46();
  MEMORY[0x28223BE20](v14);
  v16 = &v32 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v32 - v18;
  v41[3] = type metadata accessor for ImageLoader();
  v41[4] = &off_287B1B7D8;
  v41[0] = a1;
  OUTLINED_FUNCTION_18_14();
  v21 = *(v20 + 96);
  v22 = type metadata accessor for ImageSourceModel(0);
  __swift_storeEnumTagSinglePayload(v19, 1, 1, v22);
  sub_26A51D0F8(v19, v16, &qword_2803B2D28, &unk_26A872090);
  sub_26A84EBD8();
  v23 = v34;
  sub_26A4D6FD8();
  (*(v10 + 32))(a3 + v21, v13, v32);
  OUTLINED_FUNCTION_18_14();
  v25 = *(v24 + 104);
  *&v38 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B5FD0, &qword_26A87CD60);
  sub_26A84EBD8();
  (*(v33 + 32))(a3 + v25, v8, v35);
  OUTLINED_FUNCTION_18_14();
  v27 = *(v26 + 112);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B5FD8, &qword_26A87CD68);
  __swift_storeEnumTagSinglePayload(a3 + v27, 1, 1, v28);
  OUTLINED_FUNCTION_18_14();
  sub_26A50429C(v41, a3 + *(v29 + 120));
  sub_26A51D0F8(v23, &v36, &unk_2803B5FE0, qword_26A87CD70);
  if (v37)
  {
    sub_26A4D6FD8();
    __swift_destroy_boxed_opaque_existential_1(v41);
    sub_26A514388(&v36, &v38);
  }

  else
  {
    if (qword_2803A8DE0 != -1)
    {
      swift_once();
    }

    v30 = qword_2803D2368;
    v39 = type metadata accessor for ImageSourceModelLoaderCache();
    v40 = &off_281FE1460;
    *&v38 = v30;

    sub_26A4D6FD8();
    __swift_destroy_boxed_opaque_existential_1(v41);
    if (v37)
    {
      sub_26A4D6FD8();
    }
  }

  sub_26A514388(&v38, a3 + *(*a3 + 128));
  return a3;
}

uint64_t OUTLINED_FUNCTION_0_80@<X0>(uint64_t a1@<X8>)
{
  *a1 = sub_26A725F68;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;

  return type metadata accessor for ImageElementView(0);
}

unint64_t sub_26A728000(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v6 = HIBYTE(a4) & 0xF;
  if ((a4 & 0x2000000000000000) == 0)
  {
    v6 = a3 & 0xFFFFFFFFFFFFLL;
  }

  v7 = 4 * v6;
  for (i = 15; ; i = sub_26A851868())
  {
    if (i >> 14 == v7)
    {
      return 0;
    }

    if (sub_26A851948() == a1 && v9 == a2)
    {
      break;
    }

    v11 = sub_26A852598();

    if (v11)
    {
      return i;
    }
  }

  return i;
}

unint64_t sub_26A7280E8(unint64_t result, uint64_t a2, unint64_t a3)
{
  v3 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v3 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (4 * v3 < result >> 14)
  {
    __break(1u);
  }

  else
  {
    v4 = sub_26A851978();

    return v4;
  }

  return result;
}

uint64_t sub_26A72818C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_26A84EC18();

  return v1;
}

uint64_t sub_26A728200()
{
  sub_26A7282C0(MEMORY[0x277D84F90]);
  if (sub_26A73670C())
  {
    sub_26A6221EC(MEMORY[0x277D84F90]);
    v2 = v1;
  }

  else
  {
    v2 = MEMORY[0x277D84FA0];
  }

  v3 = OBJC_IVAR____TtC9SnippetUI27IntentsUIComponentViewModel_handledParameters;
  swift_beginAccess();
  *(v0 + v3) = v2;

  return sub_26A7285C4(0, v4);
}

uint64_t sub_26A7282C0(uint64_t a1)
{
  swift_getKeyPath();
  swift_getKeyPath();
  v2 = v1;
  return sub_26A84EC28();
}

id sub_26A72832C(uint64_t a1, uint64_t a2, void (*a3)(uint64_t a1, uint64_t a2, uint64_t a3), uint64_t (*a4)())
{
  v19 = a4;
  ObjectType = swift_getObjectType();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803B60C0, &unk_26A87CE78);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v19 - v11;
  v13 = OBJC_IVAR____TtC9SnippetUI27IntentsUIComponentViewModel__resolvedViews;
  v21 = MEMORY[0x277D84F90];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B6038, &qword_26A87CDB0);
  sub_26A84EBD8();
  (*(v10 + 32))(&v4[v13], v12, v9);
  if (sub_26A73670C())
  {
    sub_26A6221EC(MEMORY[0x277D84F90]);
  }

  else
  {
    v14 = MEMORY[0x277D84FA0];
  }

  *&v4[OBJC_IVAR____TtC9SnippetUI27IntentsUIComponentViewModel_handledParameters] = v14;
  *&v4[OBJC_IVAR____TtC9SnippetUI27IntentsUIComponentViewModel_interaction] = a1;
  *&v4[OBJC_IVAR____TtC9SnippetUI27IntentsUIComponentViewModel_slots] = a2;
  if (a3)
  {
    v15 = a3;
  }

  else
  {
    v15 = sub_26A7284EC;
  }

  v16 = v19;
  if (!a3)
  {
    v16 = 0;
  }

  v17 = &v4[OBJC_IVAR____TtC9SnippetUI27IntentsUIComponentViewModel_remoteViewControllerProvider];
  *v17 = v15;
  v17[1] = v16;
  v20.receiver = v4;
  v20.super_class = ObjectType;
  return objc_msgSendSuper2(&v20, sel_init, v19);
}

void sub_26A7284EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = objc_opt_self();
  v8[4] = a2;
  v8[5] = a3;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 1107296256;
  v8[2] = sub_26A51F940;
  v8[3] = &block_descriptor_34;
  v7 = _Block_copy(v8);

  [v6 requestRemoteViewControllerWithRequestInfo:a1 reply:v7];
  _Block_release(v7);
}

void sub_26A7288C4(uint64_t *a1)
{
  v2 = v1;
  v3 = *a1;
  v4 = [*(v1 + OBJC_IVAR____TtC9SnippetUI27IntentsUIComponentViewModel_interaction) intent];
  v5 = [v4 _intentInstanceDescription];

  v36 = sub_26A67C23C(v5, &selRef_name);
  v37 = v6;
  v31 = v5;
  v7 = sub_26A67C23C(v5, &selRef_responseName);
  v9 = v8;
  v10 = 0;
  v40 = MEMORY[0x277D84F90];
  v11 = *(v3 + 16);
  v12 = (v3 + 40);
  v34 = MEMORY[0x277D84F90];
  v35 = v2;
  while (1)
  {
    if (v11 == v10)
    {

      v40 = MEMORY[0x277D84F90];
      v15 = sub_26A73670C();
      v16 = OBJC_IVAR____TtC9SnippetUI27IntentsUIComponentViewModel_handledParameters;
      swift_beginAccess();
      v17 = 0;
      v18 = v34 & 0xC000000000000001;
      v19 = v16;
      v32 = v16;
      v33 = v15;
      while (1)
      {
        while (1)
        {
LABEL_10:
          if (v17 == v15)
          {

            return;
          }

          if (v18)
          {
            v20 = MEMORY[0x26D6644E0](v17, v34);
          }

          else
          {
            if (v17 >= *((v34 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_29;
            }

            v20 = *(v34 + 32 + 8 * v17);
          }

          v21 = v20;
          if (__OFADD__(v17++, 1))
          {
            goto LABEL_28;
          }

          v23 = *(v2 + v19);
          if ((v23 & 0xC000000000000001) != 0)
          {
            break;
          }

          if (*(v23 + 16))
          {
            sub_26A4EC5B0(0, &qword_2803B10F0, 0x277CD3E50);

            v26 = sub_26A851FE8();
            v27 = ~(-1 << *(v23 + 32));
            while (1)
            {
              v28 = v26 & v27;
              if (((*(v23 + 56 + (((v26 & v27) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v26 & v27)) & 1) == 0)
              {
                break;
              }

              v29 = *(*(v23 + 48) + 8 * v28);
              v30 = sub_26A851FF8();

              v26 = v28 + 1;
              if (v30)
              {

                v2 = v35;
                v19 = v32;
                v15 = v33;
                v18 = v34 & 0xC000000000000001;
                goto LABEL_10;
              }
            }

            v2 = v35;
            v19 = v32;
            v15 = v33;
            v18 = v34 & 0xC000000000000001;
          }

LABEL_24:
          sub_26A8522C8();
          sub_26A852308();
          sub_26A852318();
          sub_26A8522D8();
        }

        v24 = v21;
        v25 = sub_26A852198();

        if ((v25 & 1) == 0)
        {
          goto LABEL_24;
        }
      }
    }

    if (v10 >= *(v3 + 16))
    {
      break;
    }

    v13 = *v12;
    v38[0] = *(v12 - 1);
    v38[1] = v13;

    sub_26A729DD8(v38, v36, v37, v2, v7, v9, &v39);

    if (v39)
    {
      MEMORY[0x26D663CE0](v14);
      if (*((v40 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v40 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_26A851B08();
      }

      sub_26A851B28();
      v34 = v40;
      v2 = v35;
    }

    v12 += 2;
    ++v10;
  }

  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
}

uint64_t sub_26A728C54(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v14 = sub_26A851618();
  v32 = *(v14 - 8);
  v33 = v14;
  MEMORY[0x28223BE20](v14);
  v30 = &v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_26A851648();
  v29 = *(v31 - 8);
  MEMORY[0x28223BE20](v31);
  v28 = &v28 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = swift_allocObject();
  v17[2] = a1;
  v17[3] = a3;
  v17[4] = a4;
  v17[5] = a5;
  v17[6] = a6;
  v17[7] = a7;
  v17[8] = a2;
  v18 = objc_opt_self();
  v19 = a2;
  v20 = a1;

  if ([v18 isMainThread])
  {
    sub_26A729004(a1, a3, a4, a5, a6, a7, a2);
  }

  else
  {
    sub_26A4EC5B0(0, &qword_28157D830, 0x277D85C78);
    v22 = sub_26A851F28();
    v23 = swift_allocObject();
    *(v23 + 16) = sub_26A72A77C;
    *(v23 + 24) = v17;
    aBlock[4] = sub_26A4F5E78;
    aBlock[5] = v23;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_26A4F8A68;
    aBlock[3] = &block_descriptor_4;
    v24 = _Block_copy(aBlock);

    v25 = v28;
    sub_26A851638();
    aBlock[0] = MEMORY[0x277D84F90];
    sub_26A72A7A8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803B1C60, &qword_26A86E650);
    sub_26A655800();
    v26 = v30;
    v27 = v33;
    sub_26A852118();
    MEMORY[0x26D6641A0](0, v25, v26, v24);
    _Block_release(v24);

    (*(v32 + 8))(v26, v27);
    return (*(v29 + 8))(v25, v31);
  }
}

void sub_26A729004(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  if (a1)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (!Strong)
    {
      return;
    }

    v12 = Strong;
    v13 = a1;
    v14 = sub_26A851E78();
    LOBYTE(v35) = 2;
    sub_26A7C4314(v14, 1, "SnippetUI/IntentsUIComponentViewModel.swift", 43, 2, 86, "resolveNextSlot(index:)", 23, v35, a3, v36, aBlock, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53);
    sub_26A4EC5B0(0, &qword_2803B60E8, 0x277CD45E8);

    sub_26A587AAC(v15);
    v18 = sub_26A729390(v16, 0, 0, v17);
    [v13 setDelegate:v12 completion:0];
    v19 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v20 = swift_allocObject();
    v20[2] = v19;
    v20[3] = a3;
    v20[4] = a5;
    v20[5] = a6;
    v20[6] = v13;
    v41 = sub_26A72A800;
    v42 = v20;
    aBlock = MEMORY[0x277D85DD0];
    v38 = 1107296256;
    v39 = sub_26A729D6C;
    v40 = &block_descriptor_21;
    v21 = _Block_copy(&aBlock);
    v22 = v13;

    [v22 setIdealConfiguration:v18 animated:0 completion:v21];
    _Block_release(v21);
  }

  else
  {
    swift_beginAccess();
    v24 = swift_unknownObjectWeakLoadStrong();
    if (!v24)
    {
      return;
    }

    v18 = v24;
    if (a7)
    {
      v25 = a7;
      v26 = sub_26A851E98();
      sub_26A7C4804(v26, 0, "SnippetUI/IntentsUIComponentViewModel.swift", 43, 2, 115, "resolveNextSlot(index:)", 23, 2u, a3, a7);
    }

    else
    {
      v27 = sub_26A851E98();
      LOBYTE(v35) = 2;
      sub_26A7C457C(v27, 1, "SnippetUI/IntentsUIComponentViewModel.swift", 43, 2, 117, "resolveNextSlot(index:)", 23, v35, a3, v36, aBlock, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53);
    }

    swift_getKeyPath();
    swift_getKeyPath();

    v28 = sub_26A84EC08();
    v30 = v29;
    sub_26A72A698(sub_26A7A283C);
    v31 = *(*v30 + 16);
    sub_26A72A724(v31, sub_26A7A283C);
    v32 = *v30;
    *(v32 + 16) = v31 + 1;
    v33 = v32 + 16 * v31;
    *(v33 + 32) = a6;
    *(v33 + 40) = 1;
    v28(&aBlock, 0);

    if (__OFADD__(a3, 1))
    {
      __break(1u);
      return;
    }

    sub_26A7285C4(a3 + 1, v34);
  }
}

id sub_26A729390(uint64_t a1, uint64_t a2, uint64_t a3, __n128 a4)
{
  v6 = objc_allocWithZone(swift_getObjCClassFromMetadata(a4));
  sub_26A4EC5B0(0, &qword_2803B10F0, 0x277CD3E50);
  sub_26A72A820(&qword_2803AE0E8, &qword_2803B10F0, 0x277CD3E50);
  v7 = sub_26A851CF8();

  v8 = [v6 initWithParameters:v7 interactiveBehavior:a2 hostedViewContext:a3];

  return v8;
}

uint64_t sub_26A72945C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v12 = sub_26A851618();
  v29 = *(v12 - 8);
  v30 = v12;
  MEMORY[0x28223BE20](v12);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_26A851648();
  v27 = *(v15 - 8);
  v28 = v15;
  MEMORY[0x28223BE20](v15);
  v17 = &v27 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = swift_allocObject();
  v18[2] = a2;
  v18[3] = a1;
  v18[4] = a3;
  v18[5] = a4;
  v18[6] = a5;
  v18[7] = a6;
  v19 = objc_opt_self();
  v20 = a6;

  v21 = a1;

  if ([v19 isMainThread])
  {
    sub_26A7297E0(a2, a1, a3, a4, a5, v20);
  }

  else
  {
    sub_26A4EC5B0(0, &qword_28157D830, 0x277D85C78);
    v23 = sub_26A851F28();
    v24 = swift_allocObject();
    *(v24 + 16) = sub_26A72A810;
    *(v24 + 24) = v18;
    aBlock[4] = sub_26A72A87C;
    aBlock[5] = v24;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_26A4F8A68;
    aBlock[3] = &block_descriptor_31;
    v25 = _Block_copy(aBlock);

    sub_26A851638();
    aBlock[0] = MEMORY[0x277D84F90];
    sub_26A72A7A8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803B1C60, &qword_26A86E650);
    sub_26A655800();
    v26 = v30;
    sub_26A852118();
    MEMORY[0x26D6641A0](0, v17, v14, v25);
    _Block_release(v25);

    (*(v29 + 8))(v14, v26);
    return (*(v27 + 8))(v17, v28);
  }
}

void sub_26A729B74(uint64_t a1)
{
  v1 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    sub_26A852158();
    sub_26A4EC5B0(0, &qword_2803B10F0, 0x277CD3E50);
    sub_26A72A820(&qword_2803AE0E8, &qword_2803B10F0, 0x277CD3E50);
    sub_26A851D38();
    v1 = v14[1];
    v2 = v14[2];
    v3 = v14[3];
    v4 = v14[4];
    v5 = v14[5];
  }

  else
  {
    v4 = 0;
    v6 = -1 << *(a1 + 32);
    v2 = (a1 + 56);
    v3 = ~v6;
    v7 = -v6;
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v5 = (v8 & *(a1 + 56));
  }

  if (v1 < 0)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v9 = v4;
    v10 = v5;
    v11 = v4;
    if (!v5)
    {
      break;
    }

LABEL_12:
    v12 = (v10 - 1) & v10;
    v13 = *(*(v1 + 48) + ((v11 << 9) | (8 * __clz(__rbit64(v10)))));
    if (!v13)
    {
LABEL_18:
      sub_26A55E6A0();
      return;
    }

    while (1)
    {
      sub_26A6B9660(v14, v13);

      v4 = v11;
      v5 = v12;
      if ((v1 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_14:
      if (sub_26A852188())
      {
        sub_26A4EC5B0(0, &qword_2803B10F0, 0x277CD3E50);
        swift_dynamicCast();
        v13 = v14[0];
        v11 = v4;
        v12 = v5;
        if (v14[0])
        {
          continue;
        }
      }

      goto LABEL_18;
    }
  }

  while (1)
  {
    v11 = (v9 + 1);
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v11 >= ((v3 + 64) >> 6))
    {
      goto LABEL_18;
    }

    v10 = v2[v11];
    ++v9;
    if (v10)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
}

void sub_26A729D6C(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3(a2);
}

id sub_26A72A0C0(uint64_t a1, uint64_t a2, uint64_t a3, __n128 a4)
{
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata(a4);
  v5 = sub_26A851788();

  v7 = [swift_getObjCClassFromMetadata(v6) parameterForClass:ObjCClassFromMetadata keyPath:v5];

  return v7;
}

uint64_t type metadata accessor for IntentsUIComponentViewModel(uint64_t a1)
{
  result = qword_2803B6020;
  if (!qword_2803B6020)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_26A72A28C(uint64_t a1)
{
  sub_26A72A348(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_26A72A348(uint64_t a1)
{
  if (!qword_2803B6030)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B6038, &qword_26A87CDB0);
    v1 = sub_26A84EC38();
    if (!v2)
    {
      atomic_store(v1, &qword_2803B6030);
    }
  }
}

uint64_t sub_26A72A3AC@<X0>(uint64_t *a2@<X8>)
{
  swift_getObjectType();
  result = sub_26A84EB88();
  *a2 = result;
  return result;
}

void sub_26A72A3EC()
{
  v0 = [objc_opt_self() mainScreen];
  [v0 bounds];
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;

  v11.origin.x = v2;
  v11.origin.y = v4;
  v11.size.width = v6;
  v11.size.height = v8;
  Height = CGRectGetHeight(v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B60B8, &qword_26A87CE70);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26A8570D0;
  *(inited + 32) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithUnsignedInt_];
  *(inited + 40) = [objc_opt_self() valueWithCGSize_];
  sub_26A4EC5B0(0, &qword_28157D7D0, 0x277CCABB0);
  sub_26A4EC5B0(0, &qword_2803B60A8, 0x277CCAE60);
  sub_26A72A820(&qword_2803B60B0, &qword_28157D7D0, 0x277CCABB0);
  sub_26A8516A8();
}

uint64_t sub_26A72A698(uint64_t (*a1)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v1 = v3;
  if (!result)
  {
    result = a1(result, *(v3 + 16) + 1, 1, v3);
    *v1 = result;
  }

  return result;
}

uint64_t sub_26A72A724(uint64_t result, uint64_t (*a2)(BOOL))
{
  v3 = *(*v2 + 24);
  if (result + 1 > (v3 >> 1))
  {
    result = a2(v3 > 1);
    *v2 = result;
  }

  return result;
}

uint64_t block_copy_helper_4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_26A72A7A8()
{
  result = qword_2803B60D0;
  if (!qword_2803B60D0)
  {
    sub_26A851618();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B60D0);
  }

  return result;
}

uint64_t sub_26A72A820(unint64_t *a1, unint64_t *a2, void *a3)
{
  result = *a1;
  if (!result)
  {
    sub_26A4EC5B0(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t View.smartDialogAnimatable(animationEnabled:)@<X0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v27 = a3;
  v28 = a1;
  v29 = a4;
  v5 = sub_26A84ACC8();
  OUTLINED_FUNCTION_15();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v26 - v12;
  v14 = type metadata accessor for SmartDialogAnimatableModifier(0);
  MEMORY[0x28223BE20](v14);
  v16 = &v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_26A84F4F8();
  OUTLINED_FUNCTION_15();
  v19 = v18;
  MEMORY[0x28223BE20](v20);
  v22 = &v26 - v21;
  sub_26A84ACB8();
  (*(v7 + 16))(v10, v13, v5);
  sub_26A851048();
  (*(v7 + 8))(v13, v5);
  v23 = v27;
  MEMORY[0x26D662ED0](v16, a2, v14, v27);
  sub_26A72D048();
  swift_getKeyPath();
  v32 = v28;
  OUTLINED_FUNCTION_1_83();
  v24 = sub_26A72C02C();
  v30 = v23;
  v31 = v24;
  swift_getWitnessTable();
  sub_26A8509A8();

  return (*(v19 + 8))(v22, v17);
}

uint64_t EnvironmentValues.smartDialogAnimationEnabled.getter()
{
  sub_26A72AC10();
  sub_26A84F998();
  return v1;
}

uint64_t sub_26A72ABB8@<X0>(_BYTE *a1@<X8>)
{
  result = EnvironmentValues.smartDialogAnimationEnabled.getter();
  *a1 = result & 1;
  return result;
}

unint64_t sub_26A72AC10()
{
  result = qword_2803B60F0;
  if (!qword_2803B60F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B60F0);
  }

  return result;
}

uint64_t (*EnvironmentValues.smartDialogAnimationEnabled.modify(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  *(a1 + 8) = sub_26A72AC10();
  sub_26A84F998();
  *(a1 + 16) = *(a1 + 17);
  return sub_26A72AD08;
}

void sub_26A72AD98(uint64_t a1)
{
  sub_26A72AF10(319, &qword_2803B6108, type metadata accessor for CGRect, MEMORY[0x277CE10C0]);
  if (v1 <= 0x3F)
  {
    sub_26A84ACC8();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_26A72AE74(uint64_t a1)
{
  sub_26A72AF10(319, &qword_2803B6128, MEMORY[0x277CC95F0], MEMORY[0x277CE10B8]);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_26A72AF10(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_26A72AF74@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v58 = a1;
  v60 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B61F8, &qword_26A87D270);
  MEMORY[0x28223BE20](v3);
  v5 = &v53 - v4;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B6200, &qword_26A87D278);
  v56 = *(v59 - 8);
  MEMORY[0x28223BE20](v59);
  v55 = &v53 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B6208, &qword_26A87D280);
  v53 = *(v7 - 8);
  v8 = *(v53 + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v54 = &v53 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v57 = &v53 - v10;
  v11 = sub_26A84F988();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v53 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *v2;
  if (*(v2 + 8) == 1)
  {
    if ((v15 & 1) == 0)
    {
      goto LABEL_7;
    }
  }

  else
  {

    sub_26A851EA8();
    v16 = sub_26A8501F8();
    sub_26A84EA78();

    sub_26A84F978();
    swift_getAtKeyPath();
    sub_26A49035C(v15, 0);
    (*(v12 + 8))(v14, v11);
    if (v61 != 1)
    {
LABEL_7:
      v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B6210, &qword_26A87D288);
      (*(*(v18 - 8) + 16))(v5, v58, v18);
      swift_storeEnumTagMultiPayload();
      v19 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B6218, &qword_26A87D290);
      v20 = sub_26A4D7DCC();
      v21 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B6228, &qword_26A87D298);
      v22 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B6230, &unk_26A87D2A0);
      v23 = sub_26A84F658();
      v24 = sub_26A72C02C();
      v61 = v23;
      v62 = v24;
      OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
      v61 = v22;
      v62 = OpaqueTypeConformance2;
      v26 = swift_getOpaqueTypeConformance2();
      v61 = v21;
      v62 = v26;
      v27 = swift_getOpaqueTypeConformance2();
      v61 = v18;
      v62 = v19;
      v63 = v20;
      v64 = v27;
      swift_getOpaqueTypeConformance2();
      return sub_26A84FDF8();
    }
  }

  v17 = *(v2 + 16);
  if (*(v2 + 24) == 1)
  {
    if ((v17 & 1) == 0)
    {
      goto LABEL_7;
    }
  }

  else
  {

    sub_26A851EA8();
    v29 = sub_26A8501F8();
    sub_26A84EA78();

    sub_26A84F978();
    swift_getAtKeyPath();
    sub_26A49035C(v17, 0);
    (*(v12 + 8))(v14, v11);
    if (v61 != 1)
    {
      goto LABEL_7;
    }
  }

  v30 = *(v2 + 32);
  if (v30)
  {
    v31 = *(type metadata accessor for SmartDialogAnimatableAnimationModifer(0) + 28);
    v32 = OBJC_IVAR____TtC9SnippetUI21SmartDialogAnimations_animations;
    swift_beginAccess();
    v33 = *(v30 + v32);

    v34 = v2 + v31;
    v35 = v57;
    sub_26A507BDC(v34, v33);
    swift_endAccess();

    v36 = v35;
    v37 = v54;
    sub_26A72CED4(v36, v54);
    v38 = (*(v53 + 80) + 16) & ~*(v53 + 80);
    v39 = swift_allocObject();
    sub_26A72CF44(v37, v39 + v38);
    v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B6210, &qword_26A87D288);
    v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B6218, &qword_26A87D290);
    v42 = sub_26A4D7DCC();
    v43 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B6228, &qword_26A87D298);
    v44 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B6230, &unk_26A87D2A0);
    v45 = sub_26A84F658();
    v46 = sub_26A72C02C();
    v61 = v45;
    v62 = v46;
    v47 = swift_getOpaqueTypeConformance2();
    v61 = v44;
    v62 = v47;
    v48 = swift_getOpaqueTypeConformance2();
    v61 = v43;
    v62 = v48;
    v49 = swift_getOpaqueTypeConformance2();
    v50 = v55;
    MEMORY[0x26D662CC0](sub_26A72CFB4, v39, v40, v41, v42, v49);

    v51 = v56;
    v52 = v59;
    (*(v56 + 16))(v5, v50, v59);
    swift_storeEnumTagMultiPayload();
    v61 = v40;
    v62 = v41;
    v63 = v42;
    v64 = v49;
    swift_getOpaqueTypeConformance2();
    sub_26A84FDF8();
    (*(v51 + 8))(v50, v52);
    return sub_26A54A088();
  }

  else
  {
    type metadata accessor for SmartDialogAnimations(0);
    sub_26A72C02C();
    result = sub_26A84F668();
    __break(1u);
  }

  return result;
}