uint64_t sub_2744462BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_274412734(0, &qword_28094E040, 0x277D7C098);
  v9 = sub_2744F3DF0(v8);
  sub_27444593C(v9, a1, a2, a3, a4);
}

void sub_274446344(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    v9 = (*(a4 + 32))(a3, a4);

    v10 = &v9[OBJC_IVAR____TtC14WorkflowEditor21WorkflowEditorOptions_editorDelegate];
    swift_beginAccess();
    v11 = swift_unknownObjectWeakLoadStrong();
    v12 = *(v10 + 1);

    if (v11)
    {
      ObjectType = swift_getObjectType();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094C820, &unk_27464AF60);
      v14 = swift_allocObject();
      *(v14 + 16) = xmmword_274648560;
      *(v14 + 32) = a2;
      v17 = 0;
      v15 = *(v12 + 8);
      v16 = a2;
      v15(v14, &v17, ObjectType, v12);
      swift_unknownObjectRelease();
    }
  }
}

id sub_27444649C(uint64_t a1, SEL *a2)
{
  v3 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280949E80, &unk_274648620);
  v4 = sub_27463B7FC();

  v5 = [v3 *a2];

  return v5;
}

void sub_274446520(void *a1, char a2)
{
  v3 = [a1 layer];
  v5 = v3;
  v4 = 0.0;
  if (a2)
  {
    *&v4 = 0.25;
  }

  [v3 setShadowOpacity_];
}

uint64_t sub_274446590(uint64_t result, double a2)
{
  v2 = a2 + -192.0 + -100.0;
  v3 = result * 22.0;
  if (v3 >= v2)
  {
    return MEMORY[0x2821E18F0](v2 + (v3 - v2) * 100.0 / (v3 + 100.0 - v2));
  }

  return result;
}

id sub_2744465E4(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v10 = sub_27463B66C();

  if (a4)
  {
    v14[4] = a4;
    v14[5] = a5;
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 1107296256;
    v14[2] = sub_27443E0E8;
    v14[3] = &block_descriptor_45;
    v11 = _Block_copy(v14);
  }

  else
  {
    v11 = 0;
  }

  v12 = [v6 initWithTitle:v10 icon:a3 handler:v11];
  _Block_release(v11);

  return v12;
}

id sub_2744466D8(uint64_t a1, uint64_t a2, void *a3, char a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v12 = sub_27463B66C();

  if (a5)
  {
    v16[4] = a5;
    v16[5] = a6;
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 1107296256;
    v16[2] = sub_27443E0E8;
    v16[3] = &block_descriptor_0;
    v13 = _Block_copy(v16);
  }

  else
  {
    v13 = 0;
  }

  v14 = [v7 initWithTitle:v12 icon:a3 isDestructive:a4 & 1 handler:v13];
  _Block_release(v13);

  return v14;
}

uint64_t objectdestroy_9Tm()
{

  OUTLINED_FUNCTION_2_6();

  return swift_deallocObject();
}

uint64_t objectdestroy_2Tm()
{

  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_12_1();

  return swift_deallocObject();
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t dynamic_cast_existential_1_conditional(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (swift_conformsToProtocol2())
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t OUTLINED_FUNCTION_11_3(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  *(result + 16) = a23;
  *(result + 24) = a24;
  return result;
}

id OUTLINED_FUNCTION_14_2(id a1, SEL a2, uint64_t a3)
{

  return [a1 a2];
}

char *OUTLINED_FUNCTION_15_1(uint64_t a1)
{

  return sub_2744512AC(0, a1 & ~(a1 >> 63), 0);
}

uint64_t OUTLINED_FUNCTION_16_2(uint64_t a1)
{

  return sub_27463B85C();
}

void OUTLINED_FUNCTION_17_0()
{

  JUMPOUT(0x277C57F30);
}

BOOL sub_274446AA0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = (a2 + 32);
  do
  {
    v4 = v2;
    if (v2-- == 0)
    {
      break;
    }

    v6 = *v3++;
  }

  while (v6 != a1);
  return v4 != 0;
}

uint64_t sub_274446B04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_274446B54(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 88))
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

uint64_t sub_274446B94(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 88) = 1;
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

    *(result + 88) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_274446C44(void *a1)
{
  v152 = *(v1 + 32);
  if (*(v152 + 16) < 2uLL)
  {
    v143 = *v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_28094B240, &qword_27464AF70);
    OUTLINED_FUNCTION_5_6();
    sub_27440CA78(v49, qword_28094B240, &qword_27464AF70, v50);
    v141 = sub_27463920C();
    v51 = *(v1 + 56);
    v52 = *(v1 + 64);
    OUTLINED_FUNCTION_8_4();
    v53 = swift_allocObject();
    v54 = a1[2];
    v55 = a1[3];
    v53[2] = v54;
    v53[3] = v55;
    v56 = a1[4];
    v57 = a1[5];
    v53[4] = v56;
    v53[5] = v57;
    v53[6] = v51;
    v53[7] = v52;
    v58 = OUTLINED_FUNCTION_12_2();
    v60 = sub_274448334(v58, v59, v55, v56, v57);
    v137 = v61;
    v139 = v60;
    v63 = *(v1 + 72);
    v62 = *(v1 + 80);
    OUTLINED_FUNCTION_8_4();
    v64 = swift_allocObject();
    v64[2] = v54;
    v64[3] = v55;
    v147 = v56;
    v150 = v54;
    v64[4] = v56;
    v64[5] = v57;
    v64[6] = v63;
    v64[7] = v62;
    v65 = OUTLINED_FUNCTION_12_2();
    v66 = v54;
    v67 = v56;
    v69 = v68;
    v71 = sub_27444840C(v65, v70, v55, v67, v68);
    v73 = v72;
    v135 = swift_allocObject();
    *(v135 + 16) = v71;
    *(v135 + 24) = v73;

    v74 = sub_274447F04();
    v131 = v75;
    v133 = v74;
    v76 = v69;
    v77 = sub_274448564(v1, v66, v55, v147, v69);
    v127 = v78;
    v129 = v77;
    v124 = sub_274446AA0(6, v152);
    v79 = type metadata accessor for PropertyListOutlineContent(0);
    v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094B2D0, &qword_27464B0B8);
    v81 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094B2D8, &qword_27464B0C0);
    v82 = sub_27463A11C();
    OUTLINED_FUNCTION_3_6();
    v85 = sub_27440CA78(v83, &qword_28094B2D8, &qword_27464B0C0, v84);
    OUTLINED_FUNCTION_2_7();
    v167 = v81;
    v153 = v82;
    v168 = v82;
    v169 = v85;
    v170 = sub_2744493A4(v86, v87, MEMORY[0x277CDE298]);
    OUTLINED_FUNCTION_1_7();
    *(&v118 + 1) = v76;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    *&v118 = MEMORY[0x277CE1410];
    v88 = MEMORY[0x277CE1428];
    v116.n128_u64[0] = v133;
    v116.n128_u64[1] = v131;
    *&v114 = sub_274448EC0;
    *(&v114 + 1) = v135;
    sub_2745C45AC(v143, v141, sub_2744494E0, v53, v139, v137, sub_274448EBC, v64, &v167, v114, v116, v129, v127, 1, 1, 0, 0, 1, v124, v79, v150, MEMORY[0x277CE1428], v55, v80, v147, v118, OpaqueTypeConformance2);
    v144 = sub_274448EC8();
    v156 = &type metadata for PropertyListItem;
    v157 = v79;
    v158 = v150;
    v159 = v88;
    v160 = v55;
    v161 = v80;
    v162 = v144;
    v163 = v147;
    v164 = MEMORY[0x277CE1410];
    v165 = v76;
    v166 = OpaqueTypeConformance2;
    v89 = type metadata accessor for ListParameterLayoutView(0, &v156);
    swift_getWitnessTable();
    OUTLINED_FUNCTION_11_4();
    sub_2744E9688();
    v90 = *(*(v89 - 8) + 8);
    v91 = OUTLINED_FUNCTION_11_4();
    v90(v91);
    OUTLINED_FUNCTION_10_4();
    sub_2744E9688();
    v92 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094B2F8, &qword_27464B0C8);
    OUTLINED_FUNCTION_0_9();
    v95 = sub_27440CA78(v93, &qword_28094B2F8, &qword_27464B0C8, v94);
    v167 = &type metadata for PropertyListItem;
    v168 = v79;
    v169 = v150;
    v170 = v92;
    v171 = v55;
    v172 = v80;
    v173 = v144;
    v174 = v147;
    v175 = v95;
    v176 = v76;
    v177 = OpaqueTypeConformance2;
    type metadata accessor for ListParameterLayoutView(0, &v167);
    swift_getWitnessTable();
    sub_27456E878();
    (v90)(v155, v89);
    v96 = OUTLINED_FUNCTION_10_4();
    v90(v96);
  }

  else
  {
    v140 = *v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_28094B240, &qword_27464AF70);
    OUTLINED_FUNCTION_5_6();
    sub_27440CA78(v2, qword_28094B240, &qword_27464AF70, v3);
    v138 = sub_27463920C();
    v5 = *(v1 + 56);
    v4 = *(v1 + 64);
    OUTLINED_FUNCTION_8_4();
    v132 = swift_allocObject();
    v6 = a1[2];
    v7 = a1[3];
    v132[2] = v6;
    v132[3] = v7;
    v8 = a1[4];
    v9 = a1[5];
    v132[4] = v8;
    v132[5] = v9;
    v132[6] = v5;
    v132[7] = v4;
    v10 = OUTLINED_FUNCTION_12_2();
    v12 = sub_2744477B8(v10, v11, v7, v8, v9);
    v134 = v13;
    v136 = v12;
    v14 = *(v1 + 72);
    v15 = *(v1 + 80);
    OUTLINED_FUNCTION_8_4();
    v16 = swift_allocObject();
    v16[2] = v6;
    v16[3] = v7;
    v17 = v7;
    v16[4] = v8;
    v16[5] = v9;
    v16[6] = v14;
    v16[7] = v15;
    v18 = OUTLINED_FUNCTION_12_2();
    v19 = v6;
    v149 = v6;
    v20 = v7;
    v21 = v8;
    v22 = v8;
    v24 = v23;
    v26 = sub_2744479AC(v18, v25, v20, v21, v23);
    v28 = v27;
    v130 = swift_allocObject();
    *(v130 + 16) = v26;
    *(v130 + 24) = v28;

    v29 = sub_274447F04();
    v126 = v30;
    v128 = v29;
    v31 = sub_274448138(v1, v19, v17, v22, v24);
    v123 = v32;
    v125 = v31;
    v122 = sub_274446AA0(6, v152);
    v146 = type metadata accessor for PropertyListOutlineContent(0);
    v121 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094B2F8, &qword_27464B0C8);
    v142 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094B2D0, &qword_27464B0B8);
    OUTLINED_FUNCTION_0_9();
    v119 = sub_27440CA78(v33, &qword_28094B2F8, &qword_27464B0C8, v34);
    v35 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094B2D8, &qword_27464B0C0);
    v36 = sub_27463A11C();
    OUTLINED_FUNCTION_3_6();
    v39 = sub_27440CA78(v37, &qword_28094B2D8, &qword_27464B0C0, v38);
    OUTLINED_FUNCTION_2_7();
    v167 = v35;
    v153 = v36;
    v168 = v36;
    v169 = v39;
    v170 = sub_2744493A4(v40, v41, MEMORY[0x277CDE298]);
    OUTLINED_FUNCTION_1_7();
    v42 = swift_getOpaqueTypeConformance2();
    *(&v117 + 1) = v24;
    *&v117 = v119;
    v115.n128_u64[0] = v128;
    v115.n128_u64[1] = v126;
    *&v113 = sub_2744494DC;
    *(&v113 + 1) = v130;
    sub_2745C45AC(v140, v138, sub_2744494E0, v132, v136, v134, sub_2744494E0, v16, &v167, v113, v115, v125, v123, 1, 1, 0, 0, 1, v122, v146, v149, v121, v17, v142, v22, v117, v42);
    v43 = sub_274448EC8();
    v156 = &type metadata for PropertyListItem;
    v157 = v146;
    v158 = v149;
    v159 = v121;
    v160 = v17;
    v44 = v17;
    v161 = v142;
    v162 = v43;
    v163 = v22;
    v164 = v119;
    v165 = v24;
    v166 = v42;
    v45 = type metadata accessor for ListParameterLayoutView(0, &v156);
    OUTLINED_FUNCTION_4_4();
    swift_getWitnessTable();
    OUTLINED_FUNCTION_11_4();
    sub_2744E9688();
    v46 = *(*(v45 - 8) + 8);
    v47 = OUTLINED_FUNCTION_11_4();
    v46(v47);
    OUTLINED_FUNCTION_10_4();
    sub_2744E9688();
    v167 = &type metadata for PropertyListItem;
    v168 = v146;
    v169 = v149;
    v170 = MEMORY[0x277CE1428];
    v171 = v44;
    v172 = v142;
    v173 = v43;
    v174 = v22;
    v175 = MEMORY[0x277CE1410];
    v176 = v24;
    v177 = v42;
    type metadata accessor for ListParameterLayoutView(0, &v167);
    swift_getWitnessTable();
    sub_27456E7CC();
    (v46)(v155, v45);
    v48 = OUTLINED_FUNCTION_10_4();
    v46(v48);
  }

  v97 = type metadata accessor for PropertyListOutlineContent(255);
  v148 = a1[2];
  v151 = v97;
  v145 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094B2F8, &qword_27464B0C8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094B2D0, &qword_27464B0B8);
  sub_274448EC8();
  OUTLINED_FUNCTION_0_9();
  v100 = sub_27440CA78(v98, &qword_28094B2F8, &qword_27464B0C8, v99);
  v101 = a1[5];
  v102 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094B2D8, &qword_27464B0C0);
  sub_27463A11C();
  OUTLINED_FUNCTION_3_6();
  v105 = sub_27440CA78(v103, &qword_28094B2D8, &qword_27464B0C0, v104);
  OUTLINED_FUNCTION_2_7();
  v108 = sub_2744493A4(v106, v107, MEMORY[0x277CDE298]);
  v156 = v102;
  v157 = v153;
  v158 = v105;
  v159 = v108;
  OUTLINED_FUNCTION_1_7();
  v109 = swift_getOpaqueTypeConformance2();
  v156 = &type metadata for PropertyListItem;
  v157 = v151;
  v158 = v148;
  OUTLINED_FUNCTION_7_5(v145);
  v164 = v100;
  v165 = v101;
  v166 = v110;
  type metadata accessor for ListParameterLayoutView(255, &v156);
  v156 = &type metadata for PropertyListItem;
  v157 = v151;
  v158 = v148;
  OUTLINED_FUNCTION_7_5(MEMORY[0x277CE1428]);
  v164 = MEMORY[0x277CE1410];
  v165 = v101;
  v166 = v109;
  type metadata accessor for ListParameterLayoutView(255, &v156);
  v111 = sub_274639DEC();
  OUTLINED_FUNCTION_4_4();
  swift_getWitnessTable();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_9_0();
  swift_getWitnessTable();
  sub_2744E9688();
  return (*(*(v111 - 8) + 8))(&v167, v111);
}

uint64_t (*sub_2744477B8(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5))(uint64_t a1)
{
  v10 = swift_allocObject();
  v10[2] = a2;
  v10[3] = a3;
  v10[4] = a4;
  v10[5] = a5;
  memcpy(v10 + 6, a1, 0x58uLL);
  v13[0] = a2;
  v13[1] = a3;
  v13[2] = a4;
  v13[3] = a5;
  v11 = type metadata accessor for PropertyListParameterEditorView(0, v13);
  (*(*(v11 - 8) + 16))(v13, a1, v11);
  return sub_2744491EC;
}

uint64_t sub_274447890(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9[0] = a3;
  v9[1] = a4;
  v9[2] = a5;
  v9[3] = a6;
  v7 = type metadata accessor for PropertyListParameterEditorView(0, v9);
  return sub_2744478EC(a1, v7);
}

uint64_t sub_2744478EC(uint64_t a1, void *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094B3B0, qword_27464B130);
  sub_27444921C();
  sub_274449270();
  return sub_27463A4AC();
}

uint64_t (*sub_2744479AC(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5))()
{
  v10 = swift_allocObject();
  v10[2] = a2;
  v10[3] = a3;
  v10[4] = a4;
  v10[5] = a5;
  memcpy(v10 + 6, a1, 0x58uLL);
  v13[0] = a2;
  v13[1] = a3;
  v13[2] = a4;
  v13[3] = a5;
  v11 = type metadata accessor for PropertyListParameterEditorView(0, v13);
  (*(*(v11 - 8) + 16))(v13, a1, v11);
  return sub_274448F60;
}

uint64_t sub_274447A84@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  v34 = a5;
  v9 = sub_27463A11C();
  v10 = *(v9 - 8);
  v32 = v9;
  v33 = v10;
  MEMORY[0x28223BE20](v9);
  v12 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094B2D8, &qword_27464B0C0);
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v31 - v15;
  v17 = type metadata accessor for ChooseFromMenuItemDetailView(0);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = &v31 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  v41 = a1;
  v42 = a2;
  v43 = a3;
  v44 = a4 & 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094FA60, &unk_27464B100);
  sub_27463AECC();

  v20 = v38;
  v21 = v39;
  v22 = v40;
  v23 = swift_allocObject();
  v23[2] = 0;
  v23[3] = 0;
  v23[4] = v20;
  v23[5] = v21;
  v23[6] = v22;
  v24 = swift_allocObject();
  v24[2] = 0;
  v24[3] = 0;
  v24[4] = v20;
  v24[5] = v21;
  v24[6] = v22;

  v25 = v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094B380, &qword_27464B110);
  sub_27463AF0C();
  v36 = v45;
  v37 = v46;
  sub_274412734(0, &qword_280953EA0, 0x277D7C1D0);
  sub_27463AEDC();
  sub_27450AF54(v45, *(&v45 + 1), v46, MEMORY[0x277D84FA0], v19);
  v35 = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094B390, &qword_27464B118);
  v26 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094B398, &unk_27464B120);
  v27 = sub_274448FDC();
  v41 = v26;
  v42 = v27;
  swift_getOpaqueTypeConformance2();
  sub_2746394EC();
  sub_27463A10C();
  sub_27440CA78(&unk_28094B2E0, &qword_28094B2D8, &qword_27464B0C0, MEMORY[0x277CDD978]);
  sub_2744493A4(&qword_28094A708, MEMORY[0x277CDE2A0], MEMORY[0x277CDE298]);
  v28 = v32;
  sub_27463A62C();
  (*(v33 + 8))(v12, v28);
  v29.n128_f64[0] = (*(v14 + 8))(v16, v13);
  return sub_2744490C4(v19, v29);
}

uint64_t sub_274447F04()
{
  if (*(v0 + 48))
  {
    v1 = *(v0 + 40);
    v2 = *(v0 + 48);
  }

  else
  {
    sub_27463B70C("New Item", 8);
    if (qword_2809492C0 != -1)
    {
      swift_once();
    }

    v3 = qword_28094BB00;
    v4 = sub_27463B66C();
    v5 = sub_27463B66C();

    v6 = [v3 localizedStringForKey:v4 value:v5 table:0];

    v1 = sub_27463B6AC();
    v2 = v7;
  }

  sub_27463B70C("Add %@", 6);
  if (qword_2809492C0 != -1)
  {
    swift_once();
  }

  v8 = qword_28094BB00;
  v9 = sub_27463B66C();
  v10 = sub_27463B66C();

  v11 = [v8 localizedStringForKey:v9 value:v10 table:0];

  sub_27463B6AC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280949E90, &qword_274648630);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_274648570;
  *(v12 + 56) = MEMORY[0x277D837D0];
  *(v12 + 64) = sub_27440F250();
  *(v12 + 32) = v1;
  *(v12 + 40) = v2;
  v13 = sub_27463B67C();

  return v13;
}

uint64_t (*sub_274448138(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5))()
{
  v10 = swift_allocObject();
  v10[2] = a2;
  v10[3] = a3;
  v10[4] = a4;
  v10[5] = a5;
  memcpy(v10 + 6, a1, 0x58uLL);
  v13[0] = a2;
  v13[1] = a3;
  v13[2] = a4;
  v13[3] = a5;
  v11 = type metadata accessor for PropertyListParameterEditorView(0, v13);
  (*(*(v11 - 8) + 16))(v13, a1, v11);
  return sub_274448F5C;
}

void sub_274448210(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v4 = v3;
  if ((a2 & 0x8000000000000000) != 0 || (v7 = *(sub_2745420FC() + 16), , v7 <= a2))
  {
    v13 = *(v4 + 32);
    if (!*(v13 + 16))
    {
      return;
    }

    v14 = *(v13 + 32);
  }

  else
  {
    v8 = sub_2745420FC();
    if (*(v8 + 16) <= a2)
    {
LABEL_16:
      __break(1u);
      return;
    }

    v9 = v8 + 16 * a2;
    v10 = *(v9 + 40);
    v11 = *(v9 + 32);

    if (v10)
    {
      v12 = [v11 value];
    }

    else
    {
      v12 = v11;
    }

    v15 = v12;
    v14 = [v12 valueType];
  }

  if (__OFADD__(a2, 1))
  {
    __break(1u);
    goto LABEL_16;
  }

  sub_274448A90(v14, a2 + 1, a1);
}

uint64_t (*sub_274448334(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5))()
{
  v10 = swift_allocObject();
  v10[2] = a2;
  v10[3] = a3;
  v10[4] = a4;
  v10[5] = a5;
  memcpy(v10 + 6, a1, 0x58uLL);
  v13[0] = a2;
  v13[1] = a3;
  v13[2] = a4;
  v13[3] = a5;
  v11 = type metadata accessor for PropertyListParameterEditorView(0, v13);
  (*(*(v11 - 8) + 16))(v13, a1, v11);
  return sub_2744494AC;
}

uint64_t (*sub_27444840C(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5))()
{
  v10 = swift_allocObject();
  v10[2] = a2;
  v10[3] = a3;
  v10[4] = a4;
  v10[5] = a5;
  memcpy(v10 + 6, a1, 0x58uLL);
  v13[0] = a2;
  v13[1] = a3;
  v13[2] = a4;
  v13[3] = a5;
  v11 = type metadata accessor for PropertyListParameterEditorView(0, v13);
  (*(*(v11 - 8) + 16))(v13, a1, v11);
  return sub_2744494E4;
}

uint64_t sub_2744484E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>, uint64_t a9)
{
  v15[0] = a5;
  v15[1] = a6;
  v15[2] = a7;
  v15[3] = a9;
  type metadata accessor for PropertyListParameterEditorView(0, v15);
  return sub_274447A84(a1, a2, a3, a4 & 1, a8);
}

uint64_t (*sub_274448564(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5))()
{
  v10 = swift_allocObject();
  v10[2] = a2;
  v10[3] = a3;
  v10[4] = a4;
  v10[5] = a5;
  memcpy(v10 + 6, a1, 0x58uLL);
  v13[0] = a2;
  v13[1] = a3;
  v13[2] = a4;
  v13[3] = a5;
  v11 = type metadata accessor for PropertyListParameterEditorView(0, v13);
  (*(*(v11 - 8) + 16))(v13, a1, v11);
  return sub_2744494E8;
}

void sub_27444863C(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v10[0] = a4;
  v10[1] = a5;
  v10[2] = a6;
  v10[3] = a7;
  v9 = type metadata accessor for PropertyListParameterEditorView(0, v10);
  sub_274448210(a1, a2, v9);
}

uint64_t sub_274448698(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v17 = a1[4];
  v16[11] = v17;
  swift_getKeyPath();
  v12 = swift_allocObject();
  v12[2] = a3;
  v12[3] = a4;
  v12[4] = a5;
  v12[5] = a6;
  memcpy(v12 + 6, a1, 0x58uLL);
  v12[17] = a2;
  sub_274449334(&v17, v16);
  v16[0] = a3;
  v16[1] = a4;
  v16[2] = a5;
  v16[3] = a6;
  v13 = type metadata accessor for PropertyListParameterEditorView(0, v16);
  (*(*(v13 - 8) + 16))(v16, a1, v13);
  v14 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094B3C8, &unk_27464B160);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2809493A0, &unk_274646750);
  sub_27440CA78(&qword_28094B3D0, &qword_28094B3C8, &unk_27464B160, MEMORY[0x277D83980]);
  sub_2744493A4(&qword_28094B3D8, type metadata accessor for WFPropertyListParameterValueType, &unk_274646F64);
  sub_27440CA78(&unk_2809493B0, &unk_2809493A0, &unk_274646750, MEMORY[0x277CDF028]);
  return sub_27463AF7C();
}

uint64_t sub_2744488A8(void *a1, const void *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = *a1;
  v14 = [objc_opt_self() localizedTitleForValueType_];
  v15 = sub_27463B6AC();
  v17 = v16;

  v22[11] = v15;
  v22[12] = v17;
  v18 = swift_allocObject();
  v18[2] = a4;
  v18[3] = a5;
  v18[4] = a6;
  v18[5] = a7;
  memcpy(v18 + 6, a2, 0x58uLL);
  v18[17] = v13;
  v18[18] = a3;
  v22[0] = a4;
  v22[1] = a5;
  v22[2] = a6;
  v22[3] = a7;
  v19 = type metadata accessor for PropertyListParameterEditorView(0, v22);
  (*(*(v19 - 8) + 16))(v22, a2, v19);
  sub_274412BBC();
  v20 = a3;
  return sub_27463AD7C();
}

void sub_274448A00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = *(sub_2745420FC() + 16);

  v14[0] = a4;
  v14[1] = a5;
  v14[2] = a6;
  v14[3] = a7;
  type metadata accessor for PropertyListParameterEditorView(0, v14);
  sub_274448A90(a2, v13, a3);
}

void sub_274448A90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280953870, &qword_27464B0D0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v16 - v7;
  v9 = sub_2746382DC();
  MEMORY[0x28223BE20](v9 - 8);
  v10 = [objc_allocWithZone(MEMORY[0x277D7C770]) initWithType:a1 state:{objc_msgSend(objc_opt_self(), sel_defaultStateForValueType_, a1)}];
  swift_unknownObjectRelease();
  v11 = *(a3 + qword_280965EB8);
  if (v11)
  {
    sub_274412734(0, &unk_28094B310, 0x277D7C368);
    sub_27463828C();
    v12 = sub_274637EEC();
    __swift_storeEnumTagSinglePayload(v8, 1, 1, v12);
    v13 = v10;
    v14 = sub_27463BEAC();
  }

  else
  {
    v14 = v10;
  }

  v15 = v14;
  sub_27454232C(v14, v11, a2);
}

uint64_t sub_274448C5C@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t *a5@<X8>)
{
  v8[0] = a1;
  v8[1] = a2;
  v8[2] = a3;
  v8[3] = a4;
  type metadata accessor for PropertyListParameterEditorView(0, v8);
  result = sub_274447F04();
  *a5 = result;
  a5[1] = v7;
  return result;
}

uint64_t sub_274448CA4(uint64_t a1)
{
  v2 = sub_274639AEC();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094B398, &unk_27464B120);
  MEMORY[0x28223BE20](v6);
  v8 = &v15 - v7;
  v9 = [objc_opt_self() systemGroupedBackgroundColor];
  v10 = sub_27463AB0C();
  v11 = sub_27463A32C();
  sub_274449120(a1, v8, v12);
  v13 = &v8[*(v6 + 36)];
  *v13 = v10;
  v13[8] = v11;
  (*(v3 + 104))(v5, *MEMORY[0x277CDDDC0], v2);
  sub_274448FDC();
  sub_27463A8AC();
  (*(v3 + 8))(v5, v2);
  return sub_274449184(v8);
}

unint64_t sub_274448EC8()
{
  result = qword_28094B2F0;
  if (!qword_28094B2F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094B2F0);
  }

  return result;
}

uint64_t objectdestroy_27Tm()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

unint64_t sub_274448FDC()
{
  result = qword_28094B3A0;
  if (!qword_28094B3A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094B398, &unk_27464B120);
    sub_2744493A4(&qword_28094B3A8, type metadata accessor for ChooseFromMenuItemDetailView, &unk_274655EE0);
    sub_27440CA78(&qword_28094A710, &qword_280951400, &unk_2746528C0, MEMORY[0x277CE0728]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094B3A0);
  }

  return result;
}

uint64_t sub_2744490C4(uint64_t a1, __n128 a2)
{
  v3 = type metadata accessor for ChooseFromMenuItemDetailView(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_274449120(uint64_t a1, uint64_t a2, __n128 a3)
{
  v5 = type metadata accessor for ChooseFromMenuItemDetailView(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_274449184(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094B398, &unk_27464B120);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_27444921C()
{
  result = qword_28094B3B8;
  if (!qword_28094B3B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094B3B8);
  }

  return result;
}

unint64_t sub_274449270()
{
  result = qword_28094B3C0;
  if (!qword_28094B3C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094B3B0, qword_27464B130);
    sub_27440CA78(&unk_2809493B0, &unk_2809493A0, &unk_274646750, MEMORY[0x277CDF028]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094B3C0);
  }

  return result;
}

uint64_t sub_274449334(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094B3C8, &unk_27464B160);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2744493A4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t objectdestroy_21Tm()
{
  OUTLINED_FUNCTION_9_3();

  return swift_deallocObject();
}

uint64_t sub_2744494AC()
{
  v1 = *(v0 + 32);
  v3[0] = *(v0 + 16);
  v3[1] = v1;
  return type metadata accessor for PropertyListParameterEditorView(0, v3);
}

void OUTLINED_FUNCTION_7_5(unint64_t a1@<X8>)
{
  STACK[0x240] = a1;
  STACK[0x248] = v4;
  STACK[0x250] = v1;
  STACK[0x258] = v2;
  STACK[0x260] = v3;
}

uint64_t OUTLINED_FUNCTION_9_3()
{
  sub_2743F459C(*(v0 + 56), *(v0 + 64));
}

void sub_2744495F4(uint64_t a1)
{
  v2 = v1;
  v3 = OBJC_IVAR____TtC14WorkflowEditor19ActionCellViewModel_undoManager;
  v4 = *(v1 + OBJC_IVAR____TtC14WorkflowEditor19ActionCellViewModel_undoManager);
  if (v4)
  {
    if (v4 == a1)
    {
      return;
    }
  }

  else if (!a1)
  {
    return;
  }

  v5 = OBJC_IVAR____TtC14WorkflowEditor19ActionCellViewModel_parameterStateStores;
  swift_beginAccess();
  v6 = *(v2 + v5);
  v9 = *(v6 + 64);
  v8 = v6 + 64;
  v7 = v9;
  v10 = 1 << *(*(v2 + v5) + 32);
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = v11 & v7;
  v13 = (v10 + 63) >> 6;
  swift_bridgeObjectRetain_n();
  v14 = 0;
  if (v12)
  {
    goto LABEL_13;
  }

  while (1)
  {
    v15 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v15 >= v13)
    {

      return;
    }

    v12 = *(v8 + 8 * v15);
    ++v14;
    if (v12)
    {
      v14 = v15;
      do
      {
LABEL_13:
        v12 &= v12 - 1;
        v16 = *(v2 + v3);
        v17 = v16;

        sub_274582F9C(v16);
      }

      while (v12);
      continue;
    }
  }

  __break(1u);
}

void sub_27444974C(void *a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC14WorkflowEditor19ActionCellViewModel_undoManager);
  *(v1 + OBJC_IVAR____TtC14WorkflowEditor19ActionCellViewModel_undoManager) = a1;
  v2 = a1;
  sub_2744495F4(v3);
}

uint64_t sub_2744497AC()
{
  v1 = *(v0 + OBJC_IVAR____TtC14WorkflowEditor15ActionViewModel_action);
  objc_opt_self();
  OUTLINED_FUNCTION_0_10();
  if (swift_dynamicCastObjCClass())
  {
    return 1;
  }

  sub_2746383DC();
  OUTLINED_FUNCTION_0_10();
  if (swift_dynamicCastClass())
  {
    return 1;
  }

  objc_opt_self();
  OUTLINED_FUNCTION_0_10();
  if (swift_dynamicCastObjCClass())
  {
    return 2;
  }

  v3 = [v1 identifier];
  v4 = sub_27463B6AC();
  v6 = v5;

  if (v4 == 0xD00000000000001ALL && 0x8000000274689380 == v6)
  {

    return 3;
  }

  else
  {
    v8 = sub_27463C6BC();

    if (v8)
    {
      return 3;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_2744498C0(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280952620, &qword_27464B198);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v28 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094B420, &unk_27464B1A0);
  v30 = *(v7 - 8);
  *&v8 = MEMORY[0x28223BE20](v7).n128_u64[0];
  v10 = &v28 - v9;
  v11 = [a1 key];
  v12 = sub_27463B6AC();
  v14 = v13;

  v15 = OBJC_IVAR____TtC14WorkflowEditor19ActionCellViewModel_parameterStateStores;
  swift_beginAccess();
  v16 = *(v2 + v15);

  v17 = sub_27452F084(v12, v14, v16);

  if (!v17)
  {
    type metadata accessor for ParameterStateStore();
    v18 = *(v2 + OBJC_IVAR____TtC14WorkflowEditor15ActionViewModel_action);
    v19 = *(v2 + OBJC_IVAR____TtC14WorkflowEditor19ActionCellViewModel_undoManager);
    v20 = v18;
    v29 = a1;
    v17 = ParameterStateStore.__allocating_init(action:parameter:undoManager:)();
    sub_27444A498(&qword_28094B550, type metadata accessor for ParameterStateStore, &protocol conformance descriptor for ParameterStateStore);

    v31 = sub_274638EFC();
    sub_27443E05C();
    v28 = v15;
    v21 = sub_27463BCEC();
    v32 = v21;
    v22 = sub_27463BCDC();
    __swift_storeEnumTagSinglePayload(v6, 1, 1, v22);
    sub_274638F4C();
    sub_27444A498(&qword_280952640, sub_27443E05C, MEMORY[0x277D85228]);
    sub_274638FDC();
    sub_27444A4E0(v6);

    v23 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v24 = swift_allocObject();
    *(v24 + 16) = sub_27444A548;
    *(v24 + 24) = v23;
    sub_27440CA78(&qword_28094B428, &qword_28094B420, &unk_27464B1A0, MEMORY[0x277CBCD60]);
    sub_274638FFC();

    (*(v30 + 8))(v10, v7);
    swift_beginAccess();
    sub_274638EAC();
    swift_endAccess();

    v25 = [v29 key];
    sub_27463B6AC();

    v26 = v28;
    swift_beginAccess();
    swift_isUniquelyReferenced_nonNull_native();
    v32 = *(v2 + v26);
    sub_2745FBD98();
    *(v2 + v26) = v32;

    swift_endAccess();
  }

  return v17;
}

void *sub_274449D48(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094AF80, &unk_27464A6E0);
    sub_27440CA78(&qword_28094FE70, &unk_28094AF80, &unk_27464A6E0, MEMORY[0x277CBCE18]);
    sub_274638F5C();
  }

  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v4 = result;

    sub_274638F0C();
  }

  return result;
}

id sub_274449E74()
{
  v1 = *(v0 + OBJC_IVAR____TtC14WorkflowEditor15ActionViewModel_action);
  objc_opt_self();
  OUTLINED_FUNCTION_0_10();
  v2 = swift_dynamicCastObjCClass();
  if (v2)
  {
    v3 = v1;
    if ([v2 mode] == 2)
    {
      v2 = 0;
    }

    else
    {
      v2 = [v2 isCollapsed];
    }
  }

  return v2;
}

void sub_274449F00(char a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC14WorkflowEditor15ActionViewModel_action);
  objc_opt_self();
  v4 = swift_dynamicCastObjCClass();
  if (v4)
  {
    v5 = v4;
    v6 = v3;
    if ([v5 mode] != 2 && (sub_274449E74() & 1) != (a1 & 1))
    {
      [v5 setCollapsed_];
    }
  }
}

BOOL sub_274449FCC(void *a1)
{
  v2 = [a1 actionTree];
  v3 = [v2 actionsGroupedWithAction_];

  result = 0;
  if (v3)
  {

    objc_opt_self();
    OUTLINED_FUNCTION_0_10();
    v4 = swift_dynamicCastObjCClass();
    if (v4)
    {
      if ([v4 mode] != 2)
      {
        return 1;
      }
    }
  }

  return result;
}

uint64_t ActionCellViewModel.init(_:)(void *a1)
{
  v2 = v1;
  *(v1 + OBJC_IVAR____TtC14WorkflowEditor19ActionCellViewModel_undoManager) = 0;
  v4 = OBJC_IVAR____TtC14WorkflowEditor19ActionCellViewModel_onParameterStateChange;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094AF80, &unk_27464A6E0);
  swift_allocObject();
  *(v1 + v4) = sub_274638F1C();
  v5 = OBJC_IVAR____TtC14WorkflowEditor19ActionCellViewModel_parameterStateStores;
  type metadata accessor for ParameterStateStore();
  *(v2 + v5) = sub_27463B4DC();
  *(v2 + OBJC_IVAR____TtC14WorkflowEditor19ActionCellViewModel_cancellables) = MEMORY[0x277D84FA0];

  return ActionViewModel.init(_:)(a1);
}

uint64_t sub_27444A174()
{
}

id ActionCellViewModel.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ActionCellViewModel();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_27444A2B0()
{
  type metadata accessor for ActionCellViewModel();
  sub_27444A444();
  result = sub_27463B4DC();
  qword_280965E08 = result;
  return result;
}

id sub_27444A2FC(void *a1)
{
  if (qword_2809492A0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = qword_280965E08;
  if (*(qword_280965E08 + 16) && (v3 = sub_274534D08(a1), (v4 & 1) != 0))
  {
    v11 = *(*(v2 + 56) + 8 * v3);
    swift_endAccess();

    return v11;
  }

  else
  {
    swift_endAccess();
    v6 = objc_allocWithZone(type metadata accessor for ActionCellViewModel());
    v7 = a1;
    v8 = ActionCellViewModel.init(_:)(v7);
    swift_beginAccess();
    v9 = v8;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = qword_280965E08;
    sub_2745FBE78(v9, v7, isUniquelyReferenced_nonNull_native);
    qword_280965E08 = v12;
    swift_endAccess();
    return v9;
  }
}

unint64_t sub_27444A444()
{
  result = qword_280954290;
  if (!qword_280954290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280954290);
  }

  return result;
}

uint64_t sub_27444A498(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_27444A4E0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280952620, &qword_27464B198);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_27444A6CC(void *a1, uint64_t *a2, uint64_t *a3)
{
  *&v3[qword_28094A100] = a1;
  v6 = a1;
  v9.receiver = v3;
  v9.super_class = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v7 = objc_msgSendSuper2(&v9, sel_init);
  [v6 addEventObserver_];

  return v7;
}

uint64_t WFSystemShortcutPickerParameter.view(with:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094B430, &qword_27464B1B0);
  MEMORY[0x28223BE20](v2);
  v4 = (&v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v5);
  v7 = &v28 - v6;
  v9 = *(v8 + 56);
  *(v4 + v9) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094BDF0, &qword_274653F70);
  swift_storeEnumTagMultiPayload();
  v10 = v4 + v2[15];
  *v10 = swift_getKeyPath();
  *(v10 + 4) = 0;
  v11 = v4 + v2[16];
  *v11 = swift_getKeyPath();
  v11[8] = 0;
  v12 = v4 + v2[17];
  *v12 = swift_getKeyPath();
  v12[40] = 0;
  objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094B440, &qword_27464C470));
  v13 = v1;
  sub_27444A6CC(v13, &unk_28094B440, &qword_27464C470);
  sub_27440CA78(&qword_28094CF70, &unk_28094B440, &qword_27464C470, &unk_274648AD8);
  *v4 = sub_27463950C();
  v4[1] = v14;
  v15 = [v13 localizedLabel];
  v16 = sub_27463B6AC();
  v18 = v17;

  v19 = [v13 localizedDescription];
  if (v19)
  {
    v20 = v19;
    v21 = sub_27463B6AC();
    v23 = v22;
  }

  else
  {
    v21 = 0;
    v23 = 0xE000000000000000;
  }

  v4[2] = v16;
  v4[3] = v18;
  v4[4] = v21;
  v4[5] = v23;
  v24 = v4 + v2[12];
  *v24 = 0;
  *(v24 + 1) = 0;
  v24[16] = 0;
  v25 = v2[11];
  v26 = v13;

  sub_27444AAB0(v26, 0, 4, 0, 0, &unk_28094B630, &unk_27464B4A0, v4 + v25);
  *(v4 + v2[13]) = 0;
  sub_27444C0BC(v4, v7);
  sub_27440CA78(&unk_28094B450, &unk_28094B430, &qword_27464B1B0, &protocol conformance descriptor for ParameterLayoutView<A>);
  return sub_27463AE9C();
}

uint64_t sub_27444AAB0@<X0>(uint64_t a1@<X0>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t *a7@<X6>, uint64_t *a8@<X7>, uint64_t a9@<X8>)
{
  *(a9 + 40) = sub_274542524;
  *(a9 + 48) = 0;
  *(a9 + 56) = 0;
  type metadata accessor for WorkflowEditorOptions(0);
  sub_27444C230(&qword_28094A730, type metadata accessor for WorkflowEditorOptions, &protocol conformance descriptor for WorkflowEditorOptions);
  *(a9 + 80) = sub_27463979C();
  *(a9 + 88) = v17;
  *(a9 + 96) = swift_getKeyPath();
  *(a9 + 104) = 0;
  *(a9 + 112) = swift_getKeyPath();
  *(a9 + 152) = 0;
  *(a9 + 160) = swift_getKeyPath();
  *(a9 + 168) = 0;
  *(a9 + 176) = swift_getKeyPath();
  *(a9 + 184) = 0;
  *(a9 + 192) = swift_getKeyPath();
  *(a9 + 200) = 0;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(a7, a8);
  v19 = *(v18 + 64);
  *(a9 + v19) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094D140, &qword_27464E160);
  swift_storeEnumTagMultiPayload();
  v20 = a9 + *(v18 + 68);
  *v20 = swift_getKeyPath();
  *(v20 + 8) = 0;
  *(a9 + 16) = a4;
  *(a9 + 24) = a5;
  *(a9 + 32) = a6;
  *a9 = a1;
  *(a9 + 8) = a3;
  type metadata accessor for ParameterStateStore();
  sub_27444C230(&qword_28094B550, type metadata accessor for ParameterStateStore, &protocol conformance descriptor for ParameterStateStore);
  result = sub_27463950C();
  *(a9 + 64) = result;
  *(a9 + 72) = v22;
  return result;
}

id WFSystemShortcutPickerParameter.moduleSummarySlot(for:)(uint64_t a1)
{
  sub_274412734(0, &qword_28094BD80, 0x277D7D7B0);
  v3 = [v1 localizedLabel];
  v4 = sub_27463B6AC();
  v6 = v5;

  v7 = sub_27444C12C(v1);
  v9 = v8;
  v10 = sub_27463B66C();
  v11 = sub_27444AEE4(v4, v6, v7, v9, v10);
  if (a1)
  {
    objc_opt_self();
    v12 = swift_dynamicCastObjCClass();
    if (v12)
    {
      v13 = v12;
      swift_unknownObjectRetain();
      v14 = [v13 value];
      if (v14)
      {
        v15 = v14;
        v16 = [v14 name];
        v17 = sub_27463B6AC();
        v19 = v18;

        sub_27444C190(0, v17, v19, v11);
        swift_unknownObjectRelease();
      }

      else
      {
        swift_unknownObjectRelease();
      }
    }
  }

  return v11;
}

id sub_27444AEE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  if (!a2)
  {
    v7 = 0;
    if (a4)
    {
      goto LABEL_3;
    }

LABEL_5:
    v8 = 0;
    goto LABEL_6;
  }

  v7 = sub_27463B66C();

  if (!a4)
  {
    goto LABEL_5;
  }

LABEL_3:
  v8 = sub_27463B66C();

LABEL_6:
  v9 = [swift_getObjCClassFromMetadata() slotWithLocalizedName:v7 localizedPlaceholder:v8 key:a5];

  return v9;
}

id sub_27444AFA0(void *a1, uint64_t a2, uint64_t a3)
{
  swift_unknownObjectRetain();
  v5 = a1;
  v6 = WFSystemShortcutPickerParameter.moduleSummarySlot(for:)(a3);
  swift_unknownObjectRelease();

  return v6;
}

uint64_t sub_27444B010()
{
  static WFSystemShortcutPickerParameter.moduleSummaryEditorClass()();

  return swift_getObjCClassFromMetadata();
}

id sub_27444B0BC()
{
  v1 = v0;
  v2 = [objc_allocWithZone(WFSystemShortcutPickerViewControllerCoordinator) init];
  [v2 setDelegate_];
  v3 = *&v0[OBJC_IVAR____TtC14WorkflowEditorP33_C5B21244354E018AE032A433C7339AFA33SystemShortcutPickerSummaryEditor_coordinator];
  *&v1[OBJC_IVAR____TtC14WorkflowEditorP33_C5B21244354E018AE032A433C7339AFA33SystemShortcutPickerSummaryEditor_coordinator] = v2;
  v4 = v2;

  v5 = [v1 parameter];
  v6 = [v5 editingContext];

  v7 = [v4 createViewControllerWithEditingContext_];
  if (v7)
  {
    v8 = v7;
    v9 = *&v1[OBJC_IVAR____TtC14WorkflowEditorP33_C5B21244354E018AE032A433C7339AFA33SystemShortcutPickerSummaryEditor_modal];
    *&v1[OBJC_IVAR____TtC14WorkflowEditorP33_C5B21244354E018AE032A433C7339AFA33SystemShortcutPickerSummaryEditor_modal] = v7;
    v10 = v7;

    v11 = [v10 view];
    if (v11)
    {
      v12 = [objc_opt_self() systemGroupedBackgroundColor];
      [v11 setBackgroundColor_];

      return v8;
    }

    __break(1u);
  }

  result = sub_27463C56C();
  __break(1u);
  return result;
}

uint64_t sub_27444B2D4()
{
  v1[20] = v0;
  sub_27463B9CC();
  v1[21] = sub_27463B9BC();
  v3 = sub_27463B96C();
  v1[22] = v3;
  v1[23] = v2;

  return MEMORY[0x2822009F8](sub_27444B36C, v3, v2);
}

uint64_t sub_27444B36C()
{
  receiver = v0[10].receiver;
  v0[1].receiver = v0;
  v0[1].super_class = sub_27444B488;
  v2 = swift_continuation_init();
  v0[8].super_class = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094CFA0, &qword_27464F630);
  v0[5].receiver = MEMORY[0x277D85DD0];
  v0[5].super_class = 1107296256;
  v0[6].receiver = sub_2745ECED0;
  v0[6].super_class = &block_descriptor_52;
  v0[7].receiver = v2;
  v3 = type metadata accessor for SystemShortcutPickerSummaryEditor();
  v0[9].receiver = receiver;
  v0[9].super_class = v3;
  objc_msgSendSuper2(v0 + 9, sel_cancelEditingWithCompletionHandler_, &v0[5]);

  return MEMORY[0x282200938](&v0[1]);
}

uint64_t sub_27444B488()
{
  OUTLINED_FUNCTION_79();
  v1 = *(*v0 + 184);
  v2 = *(*v0 + 176);

  return MEMORY[0x2822009F8](sub_27444B58C, v2, v1);
}

uint64_t sub_27444B58C()
{
  OUTLINED_FUNCTION_79();
  v1 = *(v0 + 160);

  v2 = *(v1 + OBJC_IVAR____TtC14WorkflowEditorP33_C5B21244354E018AE032A433C7339AFA33SystemShortcutPickerSummaryEditor_modal);
  if (v2)
  {
    [v2 dismissViewControllerAnimated:1 completion:0];
  }

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_27444B688(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  sub_27463B9CC();
  v2[4] = sub_27463B9BC();
  v4 = sub_27463B96C();

  return MEMORY[0x2822009F8](sub_27444B720, v4, v3);
}

uint64_t sub_27444B720()
{
  OUTLINED_FUNCTION_79();
  v1 = v0[3];
  v2 = v0[2];

  v0[5] = _Block_copy(v2);
  v3 = v1;
  v4 = swift_task_alloc();
  v0[6] = v4;
  *v4 = v0;
  v4[1] = sub_27444B7CC;

  return sub_27444B2D4();
}

uint64_t sub_27444B7CC()
{
  OUTLINED_FUNCTION_79();
  v1 = *(*v0 + 40);
  v2 = *(*v0 + 24);
  v5 = *v0;

  v1[2](v1);
  _Block_release(v1);
  v3 = *(v5 + 8);

  return v3();
}

void sub_27444B900(void *a1)
{
  v2 = v1;
  v4 = [objc_allocWithZone(WFSystemShortcutPickerViewControllerCoordinator) init];
  [v4 setDelegate_];
  v5 = *&v2[OBJC_IVAR____TtC14WorkflowEditorP33_C5B21244354E018AE032A433C7339AFA33SystemShortcutPickerSummaryEditor_coordinator];
  *&v2[OBJC_IVAR____TtC14WorkflowEditorP33_C5B21244354E018AE032A433C7339AFA33SystemShortcutPickerSummaryEditor_coordinator] = v4;
  v6 = v4;

  v7 = [v2 parameter];
  v8 = [v7 editingContext];

  v9 = [v6 createViewControllerWithEditingContext_];
  if (!v9)
  {
    goto LABEL_7;
  }

  v10 = *&v2[OBJC_IVAR____TtC14WorkflowEditorP33_C5B21244354E018AE032A433C7339AFA33SystemShortcutPickerSummaryEditor_modal];
  *&v2[OBJC_IVAR____TtC14WorkflowEditorP33_C5B21244354E018AE032A433C7339AFA33SystemShortcutPickerSummaryEditor_modal] = v9;
  v11 = v9;

  v12 = [v11 view];
  if (!v12)
  {
    __break(1u);
LABEL_7:
    sub_27463C56C();
    __break(1u);
    return;
  }

  v13 = [objc_opt_self() systemGroupedBackgroundColor];
  [v12 setBackgroundColor_];

  v14 = [a1 sourceViewController];
  [v14 presentViewController:v11 animated:1 completion:0];
}

id sub_27444BAF8(uint64_t a1)
{
  v3 = [v1 parameter];
  [v3 singleStateClass];

  swift_getObjCClassMetadata();
  sub_274412734(0, &unk_28094B580, 0x277D7C940);
  if (swift_dynamicCastMetatype())
  {
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  }

  else
  {
    ObjCClassFromMetadata = MEMORY[0x277D7C940];
  }

  v5 = objc_allocWithZone(ObjCClassFromMetadata);

  return [v5 initWithValue_];
}

void sub_27444BBB4(void *a1)
{
  if (a1)
  {
    v2 = a1;
    [v1 commitState_];
    v3 = *&v1[OBJC_IVAR____TtC14WorkflowEditorP33_C5B21244354E018AE032A433C7339AFA33SystemShortcutPickerSummaryEditor_modal];
    if (v3 && (v4 = [v3 presentingViewController]) != 0)
    {
      v5 = v4;
      v6 = swift_allocObject();
      *(v6 + 16) = v1;
      v19 = sub_27444C290;
      v20 = v6;
      v15 = MEMORY[0x277D85DD0];
      v16 = 1107296256;
      v17 = sub_27443E0E8;
      v18 = &block_descriptor_44;
      v7 = _Block_copy(&v15);
      v8 = v1;

      [v5 dismissViewControllerAnimated:1 completion:v7];

      swift_unknownObjectRelease();
      _Block_release(v7);
    }

    else
    {

      swift_unknownObjectRelease();
    }
  }

  else
  {
    v9 = *&v1[OBJC_IVAR____TtC14WorkflowEditorP33_C5B21244354E018AE032A433C7339AFA33SystemShortcutPickerSummaryEditor_modal];
    if (v9)
    {
      v10 = [v9 presentingViewController];
      if (v10)
      {
        v11 = v10;
        v12 = swift_allocObject();
        *(v12 + 16) = v1;
        v19 = sub_27444C524;
        v20 = v12;
        v15 = MEMORY[0x277D85DD0];
        v16 = 1107296256;
        v17 = sub_27443E0E8;
        v18 = &block_descriptor_1;
        v13 = _Block_copy(&v15);
        v14 = v1;

        [v11 dismissViewControllerAnimated:1 completion:v13];
        _Block_release(v13);
      }
    }
  }
}

id sub_27444BE84(void *a1, uint64_t a2, char a3)
{
  *&v3[OBJC_IVAR____TtC14WorkflowEditorP33_C5B21244354E018AE032A433C7339AFA33SystemShortcutPickerSummaryEditor_modal] = 0;
  *&v3[OBJC_IVAR____TtC14WorkflowEditorP33_C5B21244354E018AE032A433C7339AFA33SystemShortcutPickerSummaryEditor_coordinator] = 0;
  v9.receiver = v3;
  v9.super_class = type metadata accessor for SystemShortcutPickerSummaryEditor();
  v7 = objc_msgSendSuper2(&v9, sel_initWithParameter_arrayIndex_processing_, a1, a2, a3 & 1);

  return v7;
}

id sub_27444BF4C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SystemShortcutPickerSummaryEditor();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_27444BFF4(uint64_t a1)
{
  v2 = sub_274639C4C();
  v3 = MEMORY[0x28223BE20](v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  return sub_27463982C();
}

uint64_t sub_27444C0BC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094B430, &qword_27464B1B0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_27444C12C(void *a1)
{
  v1 = [a1 localizedPlaceholder];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_27463B6AC();

  return v3;
}

void sub_27444C190(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = sub_27463B66C();

  [a4 populateWithIcon:a1 string:v6];
}

uint64_t sub_27444C230(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_27444C2A0()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_27444C34C;

  return sub_27444B688(v2, v3);
}

uint64_t sub_27444C34C()
{
  OUTLINED_FUNCTION_79();
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_27444C44C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_27444C4B0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2809507C0, &qword_274649C60);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_27444C52C(unint64_t a1)
{
  if (a1 >> 62)
  {
    return sub_27463C27C();
  }

  else
  {
    return *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }
}

uint64_t sub_27444C550()
{
  v23 = sub_27463B5DC();
  v0 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v22 = &v18 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_27463B63C();
  MEMORY[0x28223BE20](v2 - 8);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094B6A0, &qword_27464B4C8);
  MEMORY[0x28223BE20](v3 - 8);
  v24 = &v18 - v4;
  v5 = sub_274637D7C();
  v19 = v5;
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_274637F2C();
  MEMORY[0x28223BE20](v9 - 8);
  v10 = sub_27463B65C();
  MEMORY[0x28223BE20](v10 - 8);
  v21 = sub_274637D9C();
  MEMORY[0x28223BE20](v21);
  v11 = sub_274637B3C();
  __swift_allocate_value_buffer(v11, qword_28094B650);
  v20 = __swift_project_value_buffer(v11, qword_28094B650);
  sub_27463B5EC();
  sub_274637F1C();
  v12 = *MEMORY[0x277CC9110];
  v13 = *(v6 + 104);
  v18 = v6 + 104;
  v13(v8, v12, v5);
  sub_274637DAC();
  sub_27463B62C();
  sub_27463B61C();
  v14 = v22;
  v15 = v23;
  (*(v0 + 104))(v22, *MEMORY[0x277CC9BD8], v23);
  sub_27463B5FC();
  (*(v0 + 8))(v14, v15);
  sub_27463B61C();
  sub_27463B64C();
  sub_274637F1C();
  v13(v8, v12, v19);
  v16 = v24;
  sub_274637DAC();
  __swift_storeEnumTagSinglePayload(v16, 0, 1, v21);
  return sub_274637B2C();
}

uint64_t sub_27444C9CC(__n128 a1)
{
  if (qword_2809492A8 != -1)
  {
    OUTLINED_FUNCTION_6_3(&qword_2809492A8);
  }

  v1 = sub_274637B3C();

  return __swift_project_value_buffer(v1, qword_28094B650);
}

uint64_t static ShortcutsActionEntity.typeDisplayRepresentation.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_2809492A8 != -1)
  {
    OUTLINED_FUNCTION_6_3(&qword_2809492A8);
  }

  v3 = sub_274637B3C();
  v4 = __swift_project_value_buffer(v3, qword_28094B650);
  swift_beginAccess();
  return (*(*(v3 - 8) + 16))(a1, v4, v3);
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t static ShortcutsActionEntity.typeDisplayRepresentation.setter(uint64_t a1, __n128 a2)
{
  if (qword_2809492A8 != -1)
  {
    OUTLINED_FUNCTION_6_3(&qword_2809492A8);
  }

  v3 = sub_274637B3C();
  v4 = __swift_project_value_buffer(v3, qword_28094B650);
  swift_beginAccess();
  (*(*(v3 - 8) + 24))(v4, a1, v3);
  swift_endAccess();
  v5 = OUTLINED_FUNCTION_5_0();
  return v6(v5);
}

uint64_t (*static ShortcutsActionEntity.typeDisplayRepresentation.modify(uint64_t a1, __n128 a2))(uint64_t a1)
{
  if (qword_2809492A8 != -1)
  {
    OUTLINED_FUNCTION_6_3(&qword_2809492A8);
  }

  v2 = sub_274637B3C();
  __swift_project_value_buffer(v2, qword_28094B650);
  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_27444CC6C@<X0>(uint64_t a1@<X8>, __n128 a2@<Q0>)
{
  v3 = sub_27444C9CC(a2);
  swift_beginAccess();
  v4 = sub_274637B3C();
  return (*(*(v4 - 8) + 16))(a1, v3, v4);
}

uint64_t sub_27444CCE8(uint64_t a1, __n128 a2)
{
  v3 = sub_27444C9CC(a2);
  swift_beginAccess();
  v4 = sub_274637B3C();
  (*(*(v4 - 8) + 24))(v3, a1, v4);
  return swift_endAccess();
}

void *ShortcutsActionEntity.icon.getter()
{
  v1 = *(v0 + 48);
  v2 = v1;
  return v1;
}

uint64_t ShortcutsActionEntity.displayRepresentation.getter@<X0>(uint64_t a1@<X8>)
{
  v27 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094B698, &qword_27464B4C0);
  OUTLINED_FUNCTION_53_0(v2);
  OUTLINED_FUNCTION_60_0();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_40_1();
  v26 = v4;
  v25[0] = sub_274637D9C();
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_3_0();
  v25[1] = v7 - v6;
  v8 = sub_27463B63C();
  v9 = OUTLINED_FUNCTION_53_0(v8);
  MEMORY[0x28223BE20](v9);
  MEMORY[0x28223BE20](v10);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094B6A0, &qword_27464B4C8);
  v12 = OUTLINED_FUNCTION_53_0(v11);
  MEMORY[0x28223BE20](v12);
  v14 = v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = v25 - v16;
  MEMORY[0x28223BE20](v18);
  v20 = v25 - v19;
  v21 = *(v1 + 48);
  if (*(v1 + 40))
  {
    sub_27463B62C();
    OUTLINED_FUNCTION_35_1();
    sub_27463B61C();
    sub_27463B60C();
    OUTLINED_FUNCTION_35_1();
    sub_27463B61C();
    sub_274637D8C();
    v22 = 0;
  }

  else
  {
    v22 = 1;
  }

  __swift_storeEnumTagSinglePayload(v17, v22, 1, v25[0]);
  sub_27444D104(v17, v20);
  sub_27463B62C();
  OUTLINED_FUNCTION_35_1();
  sub_27463B61C();
  sub_27463B60C();
  OUTLINED_FUNCTION_35_1();
  sub_27463B61C();
  sub_274637D8C();
  sub_274452A20(v20, v14, &qword_28094B6A0, &qword_27464B4C8);
  if (v21)
  {
    sub_27444D174(v26);
  }

  else
  {
    v23 = sub_274637A7C();
    __swift_storeEnumTagSinglePayload(v26, 1, 1, v23);
  }

  sub_274637A8C();
  return sub_27440CB1C(v20, &qword_28094B6A0, &qword_27464B4C8);
}

uint64_t sub_27444D104(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094B6A0, &qword_27464B4C8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_27444D174@<X0>(uint64_t a1@<X8>)
{
  objc_opt_self();
  v3 = swift_dynamicCastObjCClass();
  if (v3)
  {
    v4 = v3;
    v5 = v1;
    v6 = [v4 bundleIdentifier];
    sub_27463B6AC();

    sub_274637A5C();
    goto LABEL_5;
  }

  objc_opt_self();
  v7 = swift_dynamicCastObjCClass();
  if (v7)
  {
    v8 = v7;
    v9 = v1;
    v10 = [v8 symbolName];
    sub_27463B6AC();

    sub_274637A4C();
    goto LABEL_5;
  }

  objc_opt_self();
  v14 = swift_dynamicCastObjCClass();
  if (v14)
  {
    v15 = v14;
    v16 = v1;
    v17 = [v15 image];
    v18 = [v17 platformImage];

    v19 = UIImagePNGRepresentation(v18);
    if (!v19)
    {
      v11 = 1;
      goto LABEL_6;
    }

    sub_274637E4C();

    sub_274637A6C();
LABEL_5:
    v11 = 0;
LABEL_6:

    goto LABEL_7;
  }

  v11 = 1;
LABEL_7:
  v12 = sub_274637A7C();

  return __swift_storeEnumTagSinglePayload(a1, v11, 1, v12);
}

void ShortcutsActionEntity.init(action:)(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = [a1 identifier];
  v5 = sub_27463B6AC();
  v7 = v6;

  v8 = [a1 localizedName];
  v9 = sub_27463B6AC();
  v11 = v10;

  objc_opt_self();
  if (swift_dynamicCastObjCClass() || (v14 = sub_274452900(a1), !v15))
  {
    v12 = 0;
    v13 = 0;
  }

  else
  {
    v12 = v14;
    v13 = v15;
  }

  v16 = [a1 icon];

  *a2 = v5;
  a2[1] = v7;
  a2[2] = v9;
  a2[3] = v11;
  a2[4] = v12;
  a2[5] = v13;
  a2[6] = v16;
}

uint64_t ShortcutsActionEntity.init(name:subtitle:identifier:icon:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, void *a8@<X8>)
{
  a8[2] = result;
  a8[3] = a2;
  *a8 = a5;
  a8[1] = a6;
  a8[4] = a3;
  a8[5] = a4;
  a8[6] = a7;
  return result;
}

void sub_27444D480()
{
  v1 = *(v0 + 16);
  v2 = [objc_opt_self() sharedRegistry];
  v3 = *(v1 + 16);
  v4 = MEMORY[0x277D84F90];
  v40 = v2;
  v41 = v0;
  if (v3)
  {
    v5 = v2;
    v6 = *(v0 + 16);
    v46 = MEMORY[0x277D84F90];
    sub_27463C44C();
    v7 = v6 + 40;
    do
    {

      v8 = sub_27463B66C();
      v9 = [v5 createActionWithIdentifier:v8 serializedParameters:{0, v40}];

      sub_27463C41C();
      sub_27463C46C();
      sub_27463C47C();
      sub_27463C42C();
      v7 += 16;
      --v3;
    }

    while (v3);
    v10 = v46;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v11 = sub_274453594();
  for (i = 0; v11 != i; ++i)
  {
    if ((v10 & 0xC000000000000001) != 0)
    {
      v13 = MEMORY[0x277C58B20](i, v10);
    }

    else
    {
      if (i >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_37;
      }

      v13 = *(v10 + 8 * i + 32);
    }

    v14 = v13;
    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
      return;
    }

    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
    }

    else
    {
      sub_27463C41C();
      sub_27463C46C();
      sub_27463C47C();
      sub_27463C42C();
    }
  }

  v15 = v4;
  v16 = sub_27444C52C(v4);
  if (v16)
  {
    v17 = v16;
    sub_27445134C(0, v16 & ~(v16 >> 63), 0);
    if (v17 < 0)
    {
      goto LABEL_38;
    }

    v18 = 0;
    v42 = v4 & 0xC000000000000001;
    v43 = v17;
    v19 = v4;
    v44 = v4;
    do
    {
      if (v42)
      {
        v20 = MEMORY[0x277C58B20](v18, v15);
      }

      else
      {
        v20 = *(v15 + 8 * v18 + 32);
      }

      v21 = v20;
      v22 = [v20 identifier];
      v23 = sub_27463B6AC();
      v25 = v24;

      v26 = [v21 localizedName];
      v27 = sub_27463B6AC();
      v29 = v28;

      objc_opt_self();
      v45 = v29;
      v30 = v25;
      if (swift_dynamicCastObjCClass())
      {
        v31 = 0;
        v32 = 0;
      }

      else
      {
        v33 = sub_274452900(v21);
        v32 = v34;
        if (v34)
        {
          v31 = v33;
        }

        else
        {
          v31 = 0;
        }
      }

      v35 = [v21 icon];

      v37 = *(v19 + 16);
      v36 = *(v19 + 24);
      if (v37 >= v36 >> 1)
      {
        sub_27445134C((v36 > 1), v37 + 1, 1);
      }

      ++v18;
      *(v19 + 16) = v37 + 1;
      v38 = (v19 + 56 * v37);
      v38[4] = v23;
      v38[5] = v30;
      v38[6] = v27;
      v38[7] = v45;
      v38[8] = v31;
      v38[9] = v32;
      v38[10] = v35;
      v15 = v44;
    }

    while (v43 != v18);
  }

  else
  {

    v19 = MEMORY[0x277D84F90];
  }

  v39 = *(v41 + 8);

  v39(v19);
}

uint64_t ShortcutsActionEntity.ShortcutsActionQuery.entities(matching:)()
{
  OUTLINED_FUNCTION_79();
  v0[2] = v1;
  v0[3] = v2;
  v3 = sub_2746381FC();
  v0[4] = v3;
  OUTLINED_FUNCTION_19_0(v3);
  v0[5] = v4;
  v0[6] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094B6A8, &qword_27464B4E0);
  v0[7] = v5;
  OUTLINED_FUNCTION_53_0(v5);
  v0[8] = swift_task_alloc();
  v0[9] = swift_task_alloc();
  v6 = sub_27463813C();
  v0[10] = v6;
  OUTLINED_FUNCTION_19_0(v6);
  v0[11] = v7;
  v0[12] = swift_task_alloc();
  v8 = sub_27463861C();
  v0[13] = v8;
  OUTLINED_FUNCTION_19_0(v8);
  v0[14] = v9;
  v0[15] = swift_task_alloc();
  v10 = OUTLINED_FUNCTION_37_1();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_27444DA10()
{
  OUTLINED_FUNCTION_79();
  v0[16] = sub_27463851C();
  v0[17] = sub_27463B9CC();
  v0[18] = sub_27463B9BC();
  v2 = sub_27463B96C();

  return MEMORY[0x2822009F8](sub_27444DAB0, v2, v1);
}

uint64_t sub_27444DAB0()
{
  OUTLINED_FUNCTION_79();

  *(v0 + 152) = sub_27463850C();
  v3 = (*MEMORY[0x277D7BEE8] + MEMORY[0x277D7BEE8]);
  v1 = swift_task_alloc();
  *(v0 + 160) = v1;
  *v1 = v0;
  v1[1] = sub_27444DB64;

  return v3();
}

uint64_t sub_27444DB64()
{
  OUTLINED_FUNCTION_79();
  OUTLINED_FUNCTION_28_2();
  v1 = *v0;
  OUTLINED_FUNCTION_13_4();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_37_1();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_27444DC48()
{
  OUTLINED_FUNCTION_79();
  *(v0 + 168) = sub_27463B9BC();
  v2 = sub_27463B96C();

  return MEMORY[0x2822009F8](sub_27444DCD0, v2, v1);
}

uint64_t sub_27444DCD0()
{
  OUTLINED_FUNCTION_42_1();

  sub_2746384EC();
  v0 = OUTLINED_FUNCTION_37_1();

  return MEMORY[0x2822009F8](v0, v1, v2);
}

uint64_t sub_27444DD50()
{
  v1 = v0[14];
  v2 = v0[15];
  v3 = v0[13];
  v4 = sub_27463860C();
  result = (*(v1 + 8))(v2, v3);
  v6 = *(v4 + 16);
  if (v6)
  {
    v7 = 0;
    v8 = v0[11];
    v50 = v4 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
    v51 = MEMORY[0x277D84F90];
    v42 = *MEMORY[0x277D7BE50];
    v48 = (v8 + 8);
    v49 = (v0[5] + 8);
    v41 = v4;
    while (1)
    {
      if (v7 >= *(v4 + 16))
      {
        __break(1u);
        return result;
      }

      v9 = v0[8];
      v10 = v0[6];
      v11 = v0[4];
      (*(v8 + 16))(v0[12], v50 + *(v8 + 72) * v7, v0[10]);
      sub_27463812C();
      sub_2746381CC();
      (*v49)(v10, v11);
      v12 = OUTLINED_FUNCTION_34_1();
      sub_274452A20(v12, v13, &qword_28094B6A8, &qword_27464B4E0);
      v14 = sub_27463814C();
      if (__swift_getEnumTagSinglePayload(v9, 1, v14) == 1)
      {
        v15 = v0[12];
        v16 = v0[10];
        sub_27440CB1C(v0[9], &qword_28094B6A8, &qword_27464B4E0);
        result = (*v48)(v15, v16);
      }

      else
      {
        v17 = v8;
        v18 = v6;
        OUTLINED_FUNCTION_4_0();
        v20 = v19;
        if ((*(v21 + 88))() != v42)
        {

          return sub_27463C6AC();
        }

        v22 = v0[8];
        (*(v20 + 96))(v22, v14);
        v23 = *v22;
        v24 = [v23 identifier];
        v47 = sub_27463B6AC();
        v26 = v25;

        v27 = [v23 localizedName];
        v28 = sub_27463B6AC();
        v45 = v29;
        v46 = v28;

        objc_opt_self();
        if (swift_dynamicCastObjCClass())
        {
          v43 = 0;
          v44 = 0;
        }

        else
        {
          v30 = sub_274452900(v23);
          if (v31)
          {
            v32 = v30;
          }

          else
          {
            v32 = 0;
          }

          v43 = v32;
          v44 = v31;
        }

        v33 = v0[9];
        v34 = [v23 icon];

        sub_27440CB1C(v33, &qword_28094B6A8, &qword_27464B4E0);
        v35 = OUTLINED_FUNCTION_5_0();
        v36(v35);
        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = sub_274450294(0, *(v51 + 16) + 1, 1, v51);
          v51 = result;
        }

        v6 = v18;
        v38 = *(v51 + 16);
        v37 = *(v51 + 24);
        v8 = v17;
        if (v38 >= v37 >> 1)
        {
          result = sub_274450294((v37 > 1), v38 + 1, 1, v51);
          v51 = result;
        }

        *(v51 + 16) = v38 + 1;
        v39 = (v51 + 56 * v38);
        v39[4] = v47;
        v39[5] = v26;
        v39[6] = v46;
        v39[7] = v45;
        v39[8] = v43;
        v39[9] = v44;
        v39[10] = v34;
        v4 = v41;
      }

      if (v6 == ++v7)
      {
        goto LABEL_21;
      }
    }
  }

  v51 = MEMORY[0x277D84F90];
LABEL_21:

  v40 = v0[1];

  return v40(v51);
}

uint64_t sub_27444E208(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_27444E2A8;

  return ShortcutsActionEntity.ShortcutsActionQuery.entities(matching:)();
}

uint64_t sub_27444E2A8()
{
  OUTLINED_FUNCTION_42_1();
  v3 = v2;
  OUTLINED_FUNCTION_28_2();
  v5 = v4;
  v6 = *v1;
  OUTLINED_FUNCTION_13_4();
  *v7 = v6;

  if (!v0)
  {
    **(v5 + 16) = v3;
  }

  v8 = *(v6 + 8);

  return v8();
}

uint64_t sub_27444E3A8(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2744535B4;

  return ShortcutsActionEntity.ShortcutsActionQuery.entities(for:)(a1);
}

uint64_t sub_27444E43C(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_274453598;

  return ShortcutsActionEntity.ShortcutsActionQuery.suggestedEntities()();
}

uint64_t sub_27444E4CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_27444E58C;

  return MEMORY[0x28210B610](a1, a2, a3, a4);
}

uint64_t sub_27444E58C()
{
  OUTLINED_FUNCTION_79();
  v3 = v2;
  OUTLINED_FUNCTION_28_2();
  v4 = *v1;
  OUTLINED_FUNCTION_13_4();
  *v5 = v4;

  v7 = *(v4 + 8);
  if (!v0)
  {
    v6 = v3;
  }

  return v7(v6);
}

uint64_t sub_27444E67C(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_274452B24();
  *v5 = v2;
  v5[1] = sub_27445358C;

  return MEMORY[0x28210B618](a1, a2, v6);
}

uint64_t sub_27444E730(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_27444E7E4;

  return MEMORY[0x28210C148](a1, a2, a3);
}

uint64_t sub_27444E7E4()
{
  OUTLINED_FUNCTION_79();
  OUTLINED_FUNCTION_28_2();
  v1 = *v0;
  OUTLINED_FUNCTION_13_4();
  *v2 = v1;

  OUTLINED_FUNCTION_92();

  return v3();
}

uint64_t sub_27444E8CC@<X0>(uint64_t *a1@<X8>)
{
  result = ShortcutsActionEntity.id.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_27444E8F8(uint64_t a1)
{
  v2 = sub_274452C2C();

  return MEMORY[0x28210B488](a1, v2);
}

uint64_t sub_27444E948(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_27445358C;

  return MEMORY[0x28210C4A0](a1, a2, a3, a4);
}

uint64_t sub_27444EA0C(uint64_t a1)
{
  v2 = sub_274452F40();

  return MEMORY[0x28210C4B8](a1, v2);
}

uint64_t SearchActionDrawerAction.init()@<X0>(uint64_t *a1@<X8>)
{
  sub_274637B0C();
  OUTLINED_FUNCTION_4_0();
  v36 = v2;
  v37 = v1;
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_3_0();
  v35 = v4 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094B6B0, &qword_27464B4F0);
  OUTLINED_FUNCTION_53_0(v5);
  OUTLINED_FUNCTION_60_0();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_40_1();
  v34 = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094B6B8, &qword_27464B4F8);
  OUTLINED_FUNCTION_53_0(v8);
  OUTLINED_FUNCTION_60_0();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_40_1();
  v33 = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094B6A0, &qword_27464B4C8);
  OUTLINED_FUNCTION_53_0(v11);
  OUTLINED_FUNCTION_60_0();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_40_1();
  v32 = v13;
  v14 = sub_274637D7C();
  OUTLINED_FUNCTION_4_0();
  v16 = v15;
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_3_0();
  v20 = v19 - v18;
  v21 = sub_274637F2C();
  v22 = OUTLINED_FUNCTION_53_0(v21);
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_3_0();
  v23 = sub_27463B65C();
  v24 = OUTLINED_FUNCTION_53_0(v23);
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_3_0();
  v25 = sub_274637D9C();
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_3_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094B6C0, &qword_27464B500);
  sub_27463B5EC();
  sub_274637F1C();
  v27 = *MEMORY[0x277CC9110];
  v28 = *(v16 + 104);
  v28(v20, v27, v14);
  OUTLINED_FUNCTION_27_1();
  sub_274637DAC();
  sub_27463B5EC();
  sub_274637F1C();
  v28(v20, v27, v14);
  OUTLINED_FUNCTION_27_1();
  sub_274637DAC();
  __swift_storeEnumTagSinglePayload(v32, 0, 1, v25);
  v29 = sub_27463B5CC();
  __swift_storeEnumTagSinglePayload(v33, 1, 1, v29);
  v30 = sub_27463798C();
  __swift_storeEnumTagSinglePayload(v34, 1, 1, v30);
  (*(v36 + 104))(v35, *MEMORY[0x277CBA308], v37);
  result = sub_2746379EC();
  *a1 = result;
  return result;
}

uint64_t sub_27444EE98(__n128 a1)
{
  v1 = sub_274637D7C();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_274637F2C();
  MEMORY[0x28223BE20](v5 - 8);
  v6 = sub_27463B65C();
  MEMORY[0x28223BE20](v6 - 8);
  v7 = sub_274637D9C();
  __swift_allocate_value_buffer(v7, qword_28094B668);
  __swift_project_value_buffer(v7, qword_28094B668);
  sub_27463B5EC();
  sub_274637F1C();
  (*(v2 + 104))(v4, *MEMORY[0x277CC9110], v1);
  return sub_274637DAC();
}

uint64_t sub_27444F0C0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094B6A0, &qword_27464B4C8);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v12[-v1];
  v3 = sub_274637D7C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v12[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_274637F2C();
  MEMORY[0x28223BE20](v7 - 8);
  v8 = sub_27463B65C();
  MEMORY[0x28223BE20](v8 - 8);
  v9 = sub_274637D9C();
  MEMORY[0x28223BE20](v9);
  v10 = sub_274637A2C();
  __swift_allocate_value_buffer(v10, qword_28094B680);
  __swift_project_value_buffer(v10, qword_28094B680);
  sub_27463B5EC();
  sub_274637F1C();
  (*(v4 + 104))(v6, *MEMORY[0x277CC9110], v3);
  sub_274637DAC();
  __swift_storeEnumTagSinglePayload(v2, 1, 1, v9);
  return sub_274637A3C();
}

uint64_t sub_27444F3B4@<X0>(void *a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X2>, uint64_t a5@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v8 = a2(0);
  v9 = __swift_project_value_buffer(v8, a3);
  v10 = *(*(v8 - 8) + 16);

  return v10(a5, v9, v8);
}

uint64_t sub_27444F488@<X0>(uint64_t *a1@<X8>)
{
  result = SearchActionDrawerAction.query.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_27444F4C4(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];

  SearchActionDrawerAction.query.setter(v2, v3);
}

uint64_t (*SearchActionDrawerAction.query.modify(void *a1))()
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v2;
  v2[4] = sub_2746379AC();
  return sub_27444F5C4;
}

void sub_27444F5C4(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

uint64_t static SearchActionDrawerAction.parameterSummary.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094B6C8, &qword_27464B508);
  OUTLINED_FUNCTION_53_0(v0);
  OUTLINED_FUNCTION_60_0();
  MEMORY[0x28223BE20](v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094B6D0, &qword_27464B510);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_60_0();
  MEMORY[0x28223BE20](v2);
  sub_274452A7C();
  sub_274637AEC();
  sub_274637ADC();
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094B6E0, &qword_27464B540);
  sub_274637ACC();

  OUTLINED_FUNCTION_35_1();
  sub_274637ADC();
  sub_274637AFC();
  return sub_274637ABC();
}

uint64_t sub_27444F7CC@<X0>(uint64_t *a1@<X8>)
{
  result = SearchActionDrawerAction.$query.getter();
  *a1 = result;
  return result;
}

uint64_t SearchActionDrawerAction.perform()(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 40) = a1;
  *(v2 + 48) = v3;
  return OUTLINED_FUNCTION_18_2();
}

uint64_t sub_27444F820()
{
  OUTLINED_FUNCTION_79();
  sub_2746379BC();
  v0[7] = v0[3];
  v1 = swift_task_alloc();
  v0[8] = v1;
  *v1 = v0;
  v1[1] = sub_27444F8C4;

  return ShortcutsActionEntity.ShortcutsActionQuery.entities(matching:)();
}

uint64_t sub_27444F8C4()
{
  OUTLINED_FUNCTION_42_1();
  v3 = v2;
  OUTLINED_FUNCTION_28_2();
  v5 = v4;
  v6 = *v1;
  OUTLINED_FUNCTION_13_4();
  *v7 = v6;
  *(v5 + 72) = v0;

  if (v0)
  {
    v8 = sub_27444FAA4;
  }

  else
  {

    *(v5 + 80) = v3;
    v8 = sub_27444F9E4;
  }

  return MEMORY[0x2822009F8](v8, 0, 0);
}

uint64_t sub_27444F9E4()
{
  OUTLINED_FUNCTION_42_1();
  *(v0 + 32) = *(v0 + 80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094B6E8, &unk_27464B550);
  sub_274452D0C(&qword_28094B6F0, MEMORY[0x277CBA540]);
  sub_27463799C();

  OUTLINED_FUNCTION_92();

  return v1();
}

uint64_t sub_27444FAA4()
{
  OUTLINED_FUNCTION_79();

  OUTLINED_FUNCTION_92();

  return v0();
}

uint64_t sub_27444FB28(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_27444E7E4;

  return SearchActionDrawerAction.perform()(a1);
}

uint64_t sub_27444FBC4(uint64_t a1, __n128 a2)
{
  v3 = sub_274452A7C();

  return MEMORY[0x28210B538](a1, v3);
}

unint64_t sub_27444FC00(unint64_t result, char a2, uint64_t a3)
{
  if (a2)
  {
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > result)
    {
      return result;
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_27444FC4C(uint64_t result, unint64_t *a2, void *a3)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v3 = result;
    if (result)
    {
      sub_274412734(0, a2, a3);
      result = sub_27463B88C();
      *((result & 0xFFFFFFFFFFFFFF8) + 0x10) = v3;
    }

    else
    {
      return MEMORY[0x277D84F90];
    }
  }

  return result;
}

void sub_27444FCA8()
{
  OUTLINED_FUNCTION_14_3();
  if (v4)
  {
    OUTLINED_FUNCTION_4_5();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_10_5();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_3_7();
    }
  }

  OUTLINED_FUNCTION_9_4();
  if (v2)
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094B7D8, &qword_27464BB20);
    v8 = OUTLINED_FUNCTION_25_2(v7);
    v9 = _swift_stdlib_malloc_size(v8);
    v8[2] = v3;
    v8[3] = 2 * ((v9 - 32) / 4);
  }

  else
  {
    v8 = MEMORY[0x277D84F90];
  }

  v10 = OUTLINED_FUNCTION_21_1();
  if (v1)
  {
    if (v8 != v0 || &v11[4 * v3] <= v10)
    {
      memmove(v10, v11, 4 * v3);
    }

    v0[2] = 0;
  }

  else
  {
    memcpy(v10, v11, 4 * v3);
  }
}

void sub_27444FD7C()
{
  OUTLINED_FUNCTION_14_3();
  if (v4)
  {
    OUTLINED_FUNCTION_4_5();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_10_5();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_3_7();
    }
  }

  OUTLINED_FUNCTION_7_6();
  if (v3)
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809504E0, &qword_27464BAE0);
    v8 = OUTLINED_FUNCTION_25_2(v7);
    _swift_stdlib_malloc_size(v8);
    OUTLINED_FUNCTION_5_7();
    v8[2] = v2;
    v8[3] = v9;
  }

  else
  {
    v8 = MEMORY[0x277D84F90];
  }

  v10 = OUTLINED_FUNCTION_17_1();
  if (v1)
  {
    if (v8 != v0 || &v11[16 * v2] <= v10)
    {
      memmove(v10, v11, 16 * v2);
    }

    v0[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_27444FE4C()
{
  OUTLINED_FUNCTION_14_3();
  if (v4)
  {
    OUTLINED_FUNCTION_4_5();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_10_5();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_3_7();
    }
  }

  OUTLINED_FUNCTION_7_6();
  if (v3)
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094A4E0, &qword_274649260);
    v8 = OUTLINED_FUNCTION_16_3(v7);
    OUTLINED_FUNCTION_2_8(v8);
  }

  OUTLINED_FUNCTION_17_1();
  if (v1)
  {
    OUTLINED_FUNCTION_24_2();
    if (v12)
    {
      v13 = v11 > v9;
    }

    else
    {
      v13 = 0;
    }

    if (!v13)
    {
      memmove(v9, v10, 80 * v2);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_27444FF38()
{
  OUTLINED_FUNCTION_14_3();
  if ((v4 & 1) == 0 || (OUTLINED_FUNCTION_4_5(), v5 == v6))
  {
LABEL_6:
    OUTLINED_FUNCTION_7_6();
    if (v3)
    {
      v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094B828, &qword_27464BB78);
      v8 = OUTLINED_FUNCTION_25_2(v7);
      _swift_stdlib_malloc_size(v8);
      OUTLINED_FUNCTION_5_7();
      v8[2] = v2;
      v8[3] = v9;
      if (v1)
      {
LABEL_8:
        sub_2744510A0(v0 + 32, v2, (v8 + 4));
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else
    {
      v8 = MEMORY[0x277D84F90];
      if (v1)
      {
        goto LABEL_8;
      }
    }

    OUTLINED_FUNCTION_17_1();
    swift_arrayInitWithCopy();
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_10_5();
  if (!v5)
  {
    OUTLINED_FUNCTION_3_7();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_274450000()
{
  OUTLINED_FUNCTION_14_3();
  if (v4)
  {
    OUTLINED_FUNCTION_4_5();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_10_5();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_3_7();
    }
  }

  OUTLINED_FUNCTION_7_6();
  if (v3)
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094B898, &qword_27465F3F0);
    v8 = OUTLINED_FUNCTION_16_3(v7);
    OUTLINED_FUNCTION_2_8(v8);
  }

  OUTLINED_FUNCTION_17_1();
  if (v1)
  {
    OUTLINED_FUNCTION_24_2();
    if (v12)
    {
      v13 = v11 > v9;
    }

    else
    {
      v13 = 0;
    }

    if (!v13)
    {
      memmove(v9, v10, 48 * v2);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_2744500D0()
{
  OUTLINED_FUNCTION_14_3();
  if (v4)
  {
    OUTLINED_FUNCTION_4_5();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_10_5();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_3_7();
    }
  }

  OUTLINED_FUNCTION_7_6();
  if (v3)
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094B8A0, &unk_27464BC00);
    v8 = OUTLINED_FUNCTION_25_2(v7);
    _swift_stdlib_malloc_size(v8);
    OUTLINED_FUNCTION_5_7();
    v8[2] = v2;
    v8[3] = v9;
  }

  else
  {
    v8 = MEMORY[0x277D84F90];
  }

  v10 = OUTLINED_FUNCTION_17_1();
  if (v1)
  {
    if (v8 != v0 || &v11[16 * v2] <= v10)
    {
      memmove(v10, v11, 16 * v2);
    }

    v0[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_2744501A0()
{
  OUTLINED_FUNCTION_14_3();
  if (v4)
  {
    OUTLINED_FUNCTION_4_5();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_10_5();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_3_7();
    }
  }

  OUTLINED_FUNCTION_7_6();
  if (v3)
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094B838, &unk_27464BB90);
    v8 = OUTLINED_FUNCTION_25_2(v7);
    _swift_stdlib_malloc_size(v8);
    OUTLINED_FUNCTION_8_5();
    v8[2] = v2;
    v8[3] = v9;
  }

  else
  {
    v8 = MEMORY[0x277D84F90];
  }

  if (v1)
  {
    if (v8 != v0 || &v0[v2 + 4] <= v8 + 4)
    {
      v11 = OUTLINED_FUNCTION_34_1();
      memmove(v11, v12, v13);
    }

    v0[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094B840, &qword_2746575C0);
    OUTLINED_FUNCTION_34_1();
    swift_arrayInitWithCopy();
  }
}

char *sub_274450294(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094B890, &unk_27464BBF0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 56);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[56 * v8] <= v12)
    {
      memmove(v12, v13, 56 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void sub_2744503DC()
{
  OUTLINED_FUNCTION_32_2();
  if (v4)
  {
    OUTLINED_FUNCTION_4_5();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_10_5();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_3_7();
    }
  }

  OUTLINED_FUNCTION_30_0();
  if (v3)
  {
    v13 = OUTLINED_FUNCTION_38_1(v7, v8, v9, v10, v11, v12);
    v14 = OUTLINED_FUNCTION_25_2(v13);
    _swift_stdlib_malloc_size(v14);
    OUTLINED_FUNCTION_5_7();
    *(v14 + 2) = v2;
    *(v14 + 3) = v15;
  }

  else
  {
    v14 = MEMORY[0x277D84F90];
  }

  v16 = v14 + 32;
  v17 = v0 + 32;
  if (v1)
  {
    if (v14 != v0 || &v17[16 * v2] <= v16)
    {
      memmove(v16, v17, 16 * v2);
    }

    *(v0 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_2744504A4()
{
  OUTLINED_FUNCTION_14_3();
  if (v4)
  {
    OUTLINED_FUNCTION_4_5();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_10_5();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_3_7();
    }
  }

  OUTLINED_FUNCTION_7_6();
  if (v3)
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094B7A0, &qword_27464BAD0);
    v8 = OUTLINED_FUNCTION_16_3(v7);
    OUTLINED_FUNCTION_2_8(v8);
  }

  OUTLINED_FUNCTION_17_1();
  if (v1)
  {
    OUTLINED_FUNCTION_24_2();
    if (v12)
    {
      v13 = v11 > v9;
    }

    else
    {
      v13 = 0;
    }

    if (!v13)
    {
      memmove(v9, v10, 40 * v2);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_274450574()
{
  OUTLINED_FUNCTION_14_3();
  if (v4)
  {
    OUTLINED_FUNCTION_4_5();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_10_5();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_3_7();
    }
  }

  OUTLINED_FUNCTION_9_4();
  if (v2)
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094B7F8, &qword_27464BB48);
    v8 = OUTLINED_FUNCTION_25_2(v7);
    _swift_stdlib_malloc_size(v8);
    OUTLINED_FUNCTION_8_5();
    v8[2] = v3;
    v8[3] = v9;
  }

  v10 = OUTLINED_FUNCTION_21_1();
  if (v1)
  {
    OUTLINED_FUNCTION_41_1();
    if (v15)
    {
      v16 = v14 > v12;
    }

    else
    {
      v16 = 0;
    }

    if (!v16)
    {
      memmove(v12, v13, 8 * v3);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    memcpy(v10, v11, 8 * v3);
  }
}

void sub_274450638()
{
  OUTLINED_FUNCTION_14_3();
  if (v4)
  {
    OUTLINED_FUNCTION_4_5();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_10_5();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_3_7();
    }
  }

  OUTLINED_FUNCTION_7_6();
  if (v3)
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094B870, &qword_27464BBD0);
    v8 = OUTLINED_FUNCTION_16_3(v7);
    OUTLINED_FUNCTION_2_8(v8);
  }

  OUTLINED_FUNCTION_17_1();
  if (v1)
  {
    OUTLINED_FUNCTION_24_2();
    if (v12)
    {
      v13 = v11 > v9;
    }

    else
    {
      v13 = 0;
    }

    if (!v13)
    {
      memmove(v9, v10, 48 * v2);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_274450754()
{
  OUTLINED_FUNCTION_14_3();
  if (v4)
  {
    OUTLINED_FUNCTION_4_5();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_10_5();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_3_7();
    }
  }

  OUTLINED_FUNCTION_9_4();
  if (v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094B850, &qword_27464BBA8);
    v7 = swift_allocObject();
    v8 = _swift_stdlib_malloc_size(v7);
    v7[2] = v3;
    v7[3] = 2 * ((v8 - 32) / 24);
  }

  else
  {
    v7 = MEMORY[0x277D84F90];
  }

  v9 = OUTLINED_FUNCTION_21_1();
  v11 = 24 * v3;
  if (v1)
  {
    if (v7 != v0 || &v10[v11] <= v9)
    {
      memmove(v9, v10, v11);
    }

    v0[2] = 0;
  }

  else
  {
    memcpy(v9, v10, v11);
  }
}

void sub_274450838()
{
  OUTLINED_FUNCTION_14_3();
  if (v4)
  {
    OUTLINED_FUNCTION_4_5();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_10_5();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_3_7();
    }
  }

  OUTLINED_FUNCTION_7_6();
  if (v3)
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094B858, &qword_27464BBB0);
    v8 = OUTLINED_FUNCTION_16_3(v7);
    OUTLINED_FUNCTION_2_8(v8);
  }

  OUTLINED_FUNCTION_17_1();
  if (v1)
  {
    OUTLINED_FUNCTION_24_2();
    if (v12)
    {
      v13 = v11 > v9;
    }

    else
    {
      v13 = 0;
    }

    if (!v13)
    {
      memmove(v9, v10, 24 * v2);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_274450924()
{
  OUTLINED_FUNCTION_32_2();
  if (v4)
  {
    OUTLINED_FUNCTION_4_5();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_10_5();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_3_7();
    }
  }

  OUTLINED_FUNCTION_30_0();
  if (v3)
  {
    v13 = OUTLINED_FUNCTION_38_1(v7, v8, v9, v10, v11, v12);
    v14 = OUTLINED_FUNCTION_25_2(v13);
    _swift_stdlib_malloc_size(v14);
    OUTLINED_FUNCTION_39_1();
    *(v14 + 2) = v2;
    *(v14 + 3) = v15;
  }

  else
  {
    v14 = MEMORY[0x277D84F90];
  }

  v16 = v14 + 32;
  v17 = v0 + 32;
  if (v1)
  {
    if (v14 != v0 || &v17[32 * v2] <= v16)
    {
      memmove(v16, v17, 32 * v2);
    }

    *(v0 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_2744509EC()
{
  OUTLINED_FUNCTION_14_3();
  if (v4)
  {
    OUTLINED_FUNCTION_4_5();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_10_5();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_3_7();
    }
  }

  OUTLINED_FUNCTION_9_4();
  if (v2)
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280950E90, &unk_274658FA0);
    v8 = OUTLINED_FUNCTION_25_2(v7);
    _swift_stdlib_malloc_size(v8);
    OUTLINED_FUNCTION_39_1();
    v8[2] = v3;
    v8[3] = v9;
  }

  else
  {
    v8 = MEMORY[0x277D84F90];
  }

  v10 = OUTLINED_FUNCTION_21_1();
  if (v1)
  {
    if (v8 != v0 || &v11[32 * v3] <= v10)
    {
      memmove(v10, v11, 32 * v3);
    }

    v0[2] = 0;
  }

  else
  {
    memcpy(v10, v11, 32 * v3);
  }
}

void sub_274450AB4()
{
  OUTLINED_FUNCTION_14_3();
  if (v4)
  {
    OUTLINED_FUNCTION_4_5();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_10_5();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_3_7();
    }
  }

  OUTLINED_FUNCTION_9_4();
  if (v2)
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094B7B0, &qword_27464BAE8);
    v8 = OUTLINED_FUNCTION_25_2(v7);
    _swift_stdlib_malloc_size(v8);
    OUTLINED_FUNCTION_8_5();
    v8[2] = v3;
    v8[3] = v9;
  }

  v10 = OUTLINED_FUNCTION_21_1();
  if (v1)
  {
    OUTLINED_FUNCTION_41_1();
    if (v15)
    {
      v16 = v14 > v12;
    }

    else
    {
      v16 = 0;
    }

    if (!v16)
    {
      memmove(v12, v13, 8 * v3);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    memcpy(v10, v11, 8 * v3);
  }
}

void sub_274450BA8(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t), uint64_t (*a6)(void), void (*a7)(void))
{
  v10 = a1;
  if (a3)
  {
    OUTLINED_FUNCTION_4_5();
    if (v12 != v13)
    {
      OUTLINED_FUNCTION_10_5();
      if (v12)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_3_7();
    }
  }

  else
  {
    v11 = a2;
  }

  v14 = *(a4 + 16);
  v15 = a5(v14, v11);
  v16 = *(a6(0) - 8);
  if (v10)
  {
    v17 = (*(v16 + 80) + 32) & ~*(v16 + 80);
    sub_274451114(a4 + v17, v14, v15 + v17, a7);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_274450C9C()
{
  OUTLINED_FUNCTION_14_3();
  if (v4)
  {
    OUTLINED_FUNCTION_4_5();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_10_5();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_3_7();
    }
  }

  OUTLINED_FUNCTION_7_6();
  if (v3)
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094B8A8, &qword_27464BC10);
    v8 = OUTLINED_FUNCTION_16_3(v7);
    OUTLINED_FUNCTION_2_8(v8);
  }

  OUTLINED_FUNCTION_17_1();
  if (v1)
  {
    OUTLINED_FUNCTION_24_2();
    if (v12)
    {
      v13 = v11 > v9;
    }

    else
    {
      v13 = 0;
    }

    if (!v13)
    {
      memmove(v9, v10, 40 * v2);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_274450D6C()
{
  OUTLINED_FUNCTION_14_3();
  if (v4)
  {
    OUTLINED_FUNCTION_4_5();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_10_5();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_3_7();
    }
  }

  OUTLINED_FUNCTION_9_4();
  if (v2)
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094B888, &qword_27464BBE8);
    v8 = OUTLINED_FUNCTION_25_2(v7);
    _swift_stdlib_malloc_size(v8);
    OUTLINED_FUNCTION_5_7();
    v8[2] = v3;
    v8[3] = v9;
  }

  else
  {
    v8 = MEMORY[0x277D84F90];
  }

  v10 = OUTLINED_FUNCTION_21_1();
  if (v1)
  {
    if (v8 != v0 || &v11[16 * v3] <= v10)
    {
      memmove(v10, v11, 16 * v3);
    }

    v0[2] = 0;
  }

  else
  {
    memcpy(v10, v11, 16 * v3);
  }
}

void sub_274450E48()
{
  OUTLINED_FUNCTION_14_3();
  if (v4)
  {
    OUTLINED_FUNCTION_4_5();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_10_5();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_3_7();
    }
  }

  OUTLINED_FUNCTION_9_4();
  if (v2)
  {
    v13 = OUTLINED_FUNCTION_38_1(v7, v8, v9, v10, v11, v12);
    v14 = OUTLINED_FUNCTION_25_2(v13);
    _swift_stdlib_malloc_size(v14);
    OUTLINED_FUNCTION_5_7();
    v14[2] = v3;
    v14[3] = v15;
  }

  else
  {
    v14 = MEMORY[0x277D84F90];
  }

  v16 = OUTLINED_FUNCTION_21_1();
  if (v1)
  {
    if (v14 != v0 || &v17[16 * v3] <= v16)
    {
      memmove(v16, v17, 16 * v3);
    }

    v0[2] = 0;
  }

  else
  {
    memcpy(v16, v17, 16 * v3);
  }
}

void sub_274450F00()
{
  OUTLINED_FUNCTION_14_3();
  if (v4)
  {
    OUTLINED_FUNCTION_4_5();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_10_5();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_3_7();
    }
  }

  OUTLINED_FUNCTION_7_6();
  if (v3)
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094B7D0, &qword_27464BB18);
    v8 = OUTLINED_FUNCTION_25_2(v7);
    _swift_stdlib_malloc_size(v8);
    OUTLINED_FUNCTION_8_5();
    v8[2] = v2;
    v8[3] = v9;
  }

  else
  {
    v8 = MEMORY[0x277D84F90];
  }

  v10 = OUTLINED_FUNCTION_17_1();
  if (v1)
  {
    if (v8 != v0 || &v11[8 * v2] <= v10)
    {
      memmove(v10, v11, 8 * v2);
    }

    v0[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_274450FD0()
{
  OUTLINED_FUNCTION_14_3();
  if (v4)
  {
    OUTLINED_FUNCTION_4_5();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_10_5();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_3_7();
    }
  }

  OUTLINED_FUNCTION_9_4();
  if (v2)
  {
    v7 = sub_2744511E4();
    v8 = OUTLINED_FUNCTION_33_1(v7);
    _swift_stdlib_malloc_size(v8);
    OUTLINED_FUNCTION_8_5();
    v8[2] = v3;
    v8[3] = v9;
  }

  v10 = OUTLINED_FUNCTION_21_1();
  if (v1)
  {
    OUTLINED_FUNCTION_41_1();
    if (v15)
    {
      v16 = v14 > v12;
    }

    else
    {
      v16 = 0;
    }

    if (!v16)
    {
      memmove(v12, v13, 8 * v3);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    memcpy(v10, v11, 8 * v3);
  }
}

char *sub_274451080(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[16 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_11(a3, result);
  }

  return result;
}

unint64_t sub_2744510A0(unint64_t result, uint64_t a2, unint64_t a3)
{
  if (a3 < result || result + 16 * a2 <= a3)
  {
    return MEMORY[0x2821FE828](a3, result, a2, &type metadata for ActionList.WeakObserver);
  }

  if (a3 != result)
  {
    return MEMORY[0x2821FE820](a3, result, a2, &type metadata for ActionList.WeakObserver);
  }

  return result;
}

char *sub_2744510EC(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[80 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_11(a3, result);
  }

  return result;
}

void sub_274451114(unint64_t a1, uint64_t a2, unint64_t a3, void (*a4)(void))
{
  if (a3 < a1 || (a4(0), OUTLINED_FUNCTION_7(), a1 + *(v8 + 72) * a2 <= a3))
  {
    a4(0);
    v12 = OUTLINED_FUNCTION_15_2();

    MEMORY[0x2821FE828](v12, v13, a2, v14);
  }

  else if (a3 != a1)
  {
    v9 = OUTLINED_FUNCTION_15_2();

    MEMORY[0x2821FE820](v9, v10, a2, v11);
  }
}

uint64_t sub_2744511E4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094B8B8, &qword_27464BC20);
  if (dynamic_cast_existential_0_class_conditional(v0, v0))
  {
    v1 = &unk_28094C820;
    v2 = &unk_27464AF60;
  }

  else
  {
    v1 = &unk_28094B8C0;
    v2 = &unk_27464BC28;
  }

  return __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
}

char *sub_27445124C(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_274451534(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_27445126C(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_27445164C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_2744512AC(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_27445181C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_2744512CC(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_27445191C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_27445132C(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_274451A1C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_27445134C(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_274451B4C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_27445136C(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_274451C64(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_2744513FC(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_274451D7C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_274451474(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_27445223C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_274451494(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_274452404(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_2744514B4(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_274452504(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_2744514D4(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_27445260C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_2744514F4(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_274452744(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_274451534(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094B7A0, &qword_27464BAD0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[40 * v8] <= v12)
    {
      memmove(v12, v13, 40 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_27445164C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094B7F8, &qword_27464BB48);
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

void sub_27445174C()
{
  OUTLINED_FUNCTION_14_3();
  if (v4)
  {
    OUTLINED_FUNCTION_4_5();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_10_5();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_3_7();
    }
  }

  OUTLINED_FUNCTION_7_6();
  if (v3)
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809504E0, &qword_27464BAE0);
    v8 = OUTLINED_FUNCTION_25_2(v7);
    _swift_stdlib_malloc_size(v8);
    OUTLINED_FUNCTION_5_7();
    v8[2] = v2;
    v8[3] = v9;
  }

  else
  {
    v8 = MEMORY[0x277D84F90];
  }

  v10 = OUTLINED_FUNCTION_17_1();
  if (v1)
  {
    if (v8 != v0 || &v11[16 * v2] <= v10)
    {
      memmove(v10, v11, 16 * v2);
    }

    v0[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

char *sub_27445181C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094B808, &qword_27464BB58);
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

char *sub_27445191C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094B7F0, &qword_27464BB40);
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

void *sub_274451A1C(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094B830, &unk_27464BB80);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 8);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || &a4[v8 + 4] <= v10 + 4)
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094F550, &unk_27465EF70);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_274451B4C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094B890, &unk_27464BBF0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 56);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[56 * v8] <= v12)
    {
      memmove(v12, v13, 56 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_274451C64(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094B7A8, &qword_27464BAD8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[40 * v8] <= v12)
    {
      memmove(v12, v13, 40 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_274451D7C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094B7E8, &qword_27464BB38);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[24 * v8] <= v12)
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void sub_274451E94()
{
  OUTLINED_FUNCTION_14_3();
  if (v4)
  {
    OUTLINED_FUNCTION_4_5();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_10_5();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_3_7();
    }
  }

  OUTLINED_FUNCTION_7_6();
  if (v3)
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094B868, &unk_27464BBC0);
    v8 = OUTLINED_FUNCTION_16_3(v7);
    OUTLINED_FUNCTION_2_8(v8);
  }

  else
  {
    v3 = MEMORY[0x277D84F90];
  }

  if (v1)
  {
    if (v3 != v0 || v0 + 32 + 80 * v2 <= (v3 + 32))
    {
      v10 = OUTLINED_FUNCTION_34_1();
      memmove(v10, v11, v12);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094B1A8, &qword_27464AED8);
    OUTLINED_FUNCTION_34_1();
    swift_arrayInitWithCopy();
  }
}

void sub_274451F84()
{
  OUTLINED_FUNCTION_14_3();
  if (v4)
  {
    OUTLINED_FUNCTION_4_5();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_10_5();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_3_7();
    }
  }

  OUTLINED_FUNCTION_7_6();
  if (v3)
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094B860, &qword_27464BBB8);
    v8 = OUTLINED_FUNCTION_16_3(v7);
    OUTLINED_FUNCTION_2_8(v8);
  }

  OUTLINED_FUNCTION_17_1();
  if (v1)
  {
    OUTLINED_FUNCTION_24_2();
    if (v12)
    {
      v13 = v11 > v9;
    }

    else
    {
      v13 = 0;
    }

    if (!v13)
    {
      memmove(v9, v10, 80 * v2);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_274452054()
{
  OUTLINED_FUNCTION_32_2();
  if (v4)
  {
    OUTLINED_FUNCTION_4_5();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_10_5();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_3_7();
    }
  }

  OUTLINED_FUNCTION_30_0();
  if (v3)
  {
    v13 = OUTLINED_FUNCTION_38_1(v7, v8, v9, v10, v11, v12);
    v14 = OUTLINED_FUNCTION_25_2(v13);
    _swift_stdlib_malloc_size(v14);
    OUTLINED_FUNCTION_5_7();
    *(v14 + 2) = v2;
    *(v14 + 3) = v15;
  }

  else
  {
    v14 = MEMORY[0x277D84F90];
  }

  v16 = v14 + 32;
  v17 = v0 + 32;
  if (v1)
  {
    if (v14 != v0 || &v17[16 * v2] <= v16)
    {
      memmove(v16, v17, 16 * v2);
    }

    *(v0 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_274452140(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t *a5, uint64_t *a6)
{
  v7 = a1;
  if (a3)
  {
    OUTLINED_FUNCTION_4_5();
    if (v9 != v10)
    {
      OUTLINED_FUNCTION_10_5();
      if (v9)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_3_7();
    }
  }

  else
  {
    v8 = a2;
  }

  v11 = a4[2];
  if (v8 <= v11)
  {
    v12 = a4[2];
  }

  else
  {
    v12 = v8;
  }

  if (v12)
  {
    v13 = OUTLINED_FUNCTION_38_1(a1, a2, a3, a4, a5, a6);
    v14 = OUTLINED_FUNCTION_25_2(v13);
    _swift_stdlib_malloc_size(v14);
    OUTLINED_FUNCTION_5_7();
    v14[2] = v11;
    v14[3] = v15;
  }

  else
  {
    v14 = MEMORY[0x277D84F90];
  }

  if (v7)
  {
    if (v14 != a4 || &a4[2 * v11 + 4] <= v14 + 4)
    {
      memmove(v14 + 4, a4 + 4, 16 * v11);
    }

    a4[2] = 0;
  }

  else
  {
    v17 = OUTLINED_FUNCTION_15_2();
    __swift_instantiateConcreteTypeFromMangledNameV2(v17, v18);
    swift_arrayInitWithCopy();
  }
}

void *sub_27445223C(void *result, int64_t a2, char a3, uint64_t a4)
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
LABEL_25:
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
  if (v7 <= v8)
  {
    v9 = *(a4 + 16);
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2809505B0, &qword_27464BB10);
  v10 = *(sub_274637EEC() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if ((result - v12) == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_24;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(sub_274637EEC() - 8);
  if (v5)
  {
    v16 = (*(v15 + 80) + 32) & ~*(v15 + 80);
    sub_274451114(a4 + v16, v8, v13 + v16, MEMORY[0x277CC95F0]);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

char *sub_274452404(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094B820, &qword_27464BB70);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[16 * v8] <= v12)
    {
      memmove(v12, v13, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 16 * v8);
  }

  return v10;
}

char *sub_274452504(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094B7D0, &qword_27464BB18);
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
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_27445260C(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280951810, &qword_27464BB28);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || &a4[3 * v8 + 4] <= v10 + 4)
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094B7E0, &qword_27464BB30);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_274452744(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280952A40, &unk_27465C4E0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 32);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[32 * v8] <= v12)
    {
      memmove(v12, v13, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void sub_274452850()
{
  OUTLINED_FUNCTION_14_3();
  if (v4)
  {
    OUTLINED_FUNCTION_4_5();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_10_5();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_3_7();
    }
  }

  OUTLINED_FUNCTION_9_4();
  if (v2)
  {
    v7 = sub_2744511E4();
    v8 = OUTLINED_FUNCTION_33_1(v7);
    _swift_stdlib_malloc_size(v8);
    OUTLINED_FUNCTION_8_5();
    v8[2] = v3;
    v8[3] = v9;
  }

  v10 = OUTLINED_FUNCTION_21_1();
  if (v1)
  {
    OUTLINED_FUNCTION_41_1();
    if (v15)
    {
      v16 = v14 > v12;
    }

    else
    {
      v16 = 0;
    }

    if (!v16)
    {
      memmove(v12, v13, 8 * v3);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    memcpy(v10, v11, 8 * v3);
  }
}

uint64_t sub_274452900(void *a1)
{
  v1 = [a1 localizedDescriptionSummary];
  if (v1)
  {
    v2 = v1;
    sub_27463B6AC();
  }

  return OUTLINED_FUNCTION_5_0();
}

uint64_t sub_274452960(uint64_t a1, unint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_1_8(a1, a2, a3);
  if (v4)
  {
    v5 = swift_unknownObjectRetain();
  }

  else
  {
    v7 = OUTLINED_FUNCTION_15_2();
    v5 = MEMORY[0x277C58B20](v7);
  }

  *v3 = v5;
  return OUTLINED_FUNCTION_22_2();
}

uint64_t sub_2744529C8(uint64_t a1, unint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_1_8(a1, a2, a3);
  if (v4)
  {
    v5 = OUTLINED_FUNCTION_36_1();
  }

  else
  {
    v7 = OUTLINED_FUNCTION_15_2();
    v5 = MEMORY[0x277C58B20](v7);
  }

  *v3 = v5;
  return OUTLINED_FUNCTION_22_2();
}

uint64_t sub_274452A20(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_7();
  v5 = OUTLINED_FUNCTION_5_0();
  v6(v5);
  return a2;
}

unint64_t sub_274452A7C()
{
  result = qword_28094B6D8;
  if (!qword_28094B6D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094B6D8);
  }

  return result;
}

unint64_t sub_274452AD0()
{
  result = qword_28094B6F8;
  if (!qword_28094B6F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094B6F8);
  }

  return result;
}

unint64_t sub_274452B24()
{
  result = qword_28094B700;
  if (!qword_28094B700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094B700);
  }

  return result;
}

unint64_t sub_274452B7C()
{
  result = qword_28094B708;
  if (!qword_28094B708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094B708);
  }

  return result;
}

unint64_t sub_274452BD4()
{
  result = qword_28094B710;
  if (!qword_28094B710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094B710);
  }

  return result;
}

unint64_t sub_274452C2C()
{
  result = qword_28094C430;
  if (!qword_28094C430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094C430);
  }

  return result;
}

unint64_t sub_274452C84()
{
  result = qword_28094B718;
  if (!qword_28094B718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094B718);
  }

  return result;
}

uint64_t sub_274452D0C(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094B6E8, &unk_27464B550);
    sub_274452AD0();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_274452D80()
{
  result = qword_28094B728;
  if (!qword_28094B728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094B728);
  }

  return result;
}

unint64_t sub_274452DD8()
{
  result = qword_28094B730;
  if (!qword_28094B730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094B730);
  }

  return result;
}

unint64_t sub_274452E30()
{
  result = qword_28094B738;
  if (!qword_28094B738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094B738);
  }

  return result;
}

unint64_t sub_274452E94()
{
  result = qword_28094B740;
  if (!qword_28094B740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094B740);
  }

  return result;
}

unint64_t sub_274452EE8()
{
  result = qword_28094B748;
  if (!qword_28094B748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094B748);
  }

  return result;
}

unint64_t sub_274452F40()
{
  result = qword_28094B750;
  if (!qword_28094B750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094B750);
  }

  return result;
}

unint64_t sub_274452FE8()
{
  result = qword_28094B768;
  if (!qword_28094B768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094B768);
  }

  return result;
}

unint64_t sub_274453044()
{
  result = qword_28094B770;
  if (!qword_28094B770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094B770);
  }

  return result;
}

unint64_t sub_27445309C()
{
  result = qword_28094B778;
  if (!qword_28094B778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094B778);
  }

  return result;
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

uint64_t sub_27445315C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 56))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
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

uint64_t sub_27445319C(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t getEnumTagSinglePayload for ShortcutsActionEntity.ShortcutsActionQuery(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_BYTE *storeEnumTagSinglePayload for ShortcutsActionEntity.ShortcutsActionQuery(_BYTE *result, int a2, int a3)
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

uint64_t *__swift_initWithCopy_strong(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  return a1;
}

uint64_t *__swift_assignWithCopy_strong(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  return a1;
}

void *__swift_assignWithTake_strong(void *a1, void *a2)
{
  *a1 = *a2;

  return a1;
}

uint64_t getEnumTagSinglePayload for SearchActionDrawerAction(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 8))
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

uint64_t storeEnumTagSinglePayload for SearchActionDrawerAction(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
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

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_274453430(uint64_t a1, unint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_1_8(a1, a2, a3);
  if (v4)
  {
  }

  else
  {
    v7 = OUTLINED_FUNCTION_15_2();
    v5 = MEMORY[0x277C58B20](v7);
  }

  *v3 = v5;
  return OUTLINED_FUNCTION_22_2();
}

uint64_t sub_274453498(uint64_t a1, unint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_1_8(a1, a2, a3);
  if (v4)
  {
    v5 = OUTLINED_FUNCTION_36_1();
  }

  else
  {
    v7 = OUTLINED_FUNCTION_15_2();
    v5 = MEMORY[0x277C58B20](v7);
  }

  *v3 = v5;
  return OUTLINED_FUNCTION_22_2();
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t dynamic_cast_existential_0_class_conditional(uint64_t a1, uint64_t a2)
{
  if (swift_isClassType())
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

unint64_t OUTLINED_FUNCTION_1_8(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v5 = sub_2743F7514(a3);

  return sub_27444FC00(a2, v5, a3);
}

size_t OUTLINED_FUNCTION_2_8(void *a1)
{
  result = _swift_stdlib_malloc_size(a1);
  a1[2] = v1;
  a1[3] = 2 * ((result - 32) / v2);
  return result;
}

uint64_t OUTLINED_FUNCTION_6_3(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_16_3(uint64_t a1)
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_25_2(uint64_t a1)
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_33_1(uint64_t a1)
{

  return swift_allocObject();
}

id OUTLINED_FUNCTION_36_1()
{
  v3 = *(v0 + 8 * v1 + 32);

  return v3;
}

uint64_t OUTLINED_FUNCTION_38_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{

  return __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
}

id sub_274453864()
{
  v0 = objc_allocWithZone(type metadata accessor for HomeManager());

  return [v0 init];
}

uint64_t sub_27445389C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v22 = a2;
  v4 = *(a1 + 16);
  v21 = *(v4 - 8);
  MEMORY[0x28223BE20](a1);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_27463965C();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v11);
  v14 = &v20 - v13;
  v2[3](v12);
  v26 = *v2;
  v27 = *(v2 + 16);
  v15 = swift_allocObject();
  v16 = *(a1 + 24);
  *(v15 + 16) = v4;
  *(v15 + 24) = v16;
  v17 = *(v2 + 1);
  *(v15 + 32) = *v2;
  *(v15 + 48) = v17;
  *(v15 + 64) = v2[4];
  sub_2744542B8(&v26, v25);

  sub_27463AA2C();

  (*(v21 + 8))(v6, v4);
  v23 = v16;
  v24 = MEMORY[0x277CE0790];
  OUTLINED_FUNCTION_10_0();
  swift_getWitnessTable();
  sub_2744E9688();
  v18 = *(v8 + 8);
  v18(v10, v7);
  sub_2744E9688();
  return (v18)(v14, v7);
}

void sub_274453B28(uint64_t *a1)
{
  type metadata accessor for HomeManager();
  sub_274454348(&qword_28094B9C8, type metadata accessor for HomeManager, &unk_27464BD08);
  v1 = sub_27463920C();
  v2 = *&v1[OBJC_IVAR____TtC14WorkflowEditorP33_4CEE286D1DD9DB9F2AB826526613E6F211HomeManager_manager];

  v4[4] = CGSizeMake;
  v4[5] = 0;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 1107296256;
  v4[2] = sub_27443E0E8;
  v4[3] = &block_descriptor_2;
  v3 = _Block_copy(v4);
  [v2 ensureHomesAreLoadedWithCompletionHandler_];
  _Block_release(v3);
}

char *sub_274453C58()
{
  v1 = OBJC_IVAR____TtC14WorkflowEditorP33_4CEE286D1DD9DB9F2AB826526613E6F211HomeManager_manager;
  *&v0[v1] = [objc_opt_self() sharedManager];
  v4.receiver = v0;
  v4.super_class = type metadata accessor for HomeManager();
  v2 = objc_msgSendSuper2(&v4, sel_init);
  [*&v2[OBJC_IVAR____TtC14WorkflowEditorP33_4CEE286D1DD9DB9F2AB826526613E6F211HomeManager_manager] addEventObserver_];
  return v2;
}

uint64_t sub_274453D10()
{
  v1 = sub_27463B1EC();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_27463B21C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_27443E05C();
  v9 = sub_27463BCEC();
  v10 = swift_allocObject();
  *(v10 + 16) = v0;
  aBlock[4] = sub_274454340;
  aBlock[5] = v10;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_27443E0E8;
  aBlock[3] = &block_descriptor_8;
  v11 = _Block_copy(aBlock);
  v12 = v0;
  sub_27463B20C();
  v14[1] = MEMORY[0x277D84F90];
  sub_274454348(&qword_28094E100, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094AFA0, &unk_27464D1A0);
  sub_274454390();
  sub_27463C1EC();
  MEMORY[0x277C58440](0, v8, v4, v11);
  _Block_release(v11);

  (*(v2 + 8))(v4, v1);
  (*(v6 + 8))(v8, v5);
}

uint64_t sub_274453FC0()
{
  type metadata accessor for HomeManager();
  sub_274454348(&qword_28094B9C8, type metadata accessor for HomeManager, &unk_27464BD08);
  sub_274638EFC();
  sub_274638F3C();
}

id sub_2744540B0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HomeManager();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_27445411C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_274454178(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_2744541B8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_274454218@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for HomeManager();
  result = sub_274638EFC();
  *a2 = result;
  return result;
}

void sub_27445429C(uint64_t a1, void *a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_2744542B8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094B9C0, &unk_27464BD90);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_274454348(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_274454390()
{
  result = qword_28094E110;
  if (!qword_28094E110)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_28094AFA0, &unk_27464D1A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094E110);
  }

  return result;
}

uint64_t sub_27445449C(uint64_t a1)
{
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

uint64_t sub_274454584(uint64_t a1)
{
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

uint64_t sub_27445466C(uint64_t a1)
{
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

uint64_t sub_2744546B4()
{
  if (*(v0 + OBJC_IVAR____TtC14WorkflowEditor34ParameterValuePickerViewController_allowsVariables) != 1)
  {
    return 0;
  }

  v1 = [*(v0 + OBJC_IVAR____TtC14WorkflowEditor34ParameterValuePickerViewController_parameter) supportedVariableTypes];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  type metadata accessor for WFVariableType(0);
  sub_274455498(&qword_28094BAE0, type metadata accessor for WFVariableType, &unk_274646ED4);
  v3 = sub_27463BA4C();

  return v3;
}

id ParameterValuePickerViewController.__allocating_init(parameter:allowsVariables:allowsMultipleSelection:initialCollection:currentState:)()
{
  OUTLINED_FUNCTION_3_8();
  v1 = objc_allocWithZone(v0);
  return ParameterValuePickerViewController.init(parameter:allowsVariables:allowsMultipleSelection:initialCollection:currentState:)();
}

id ParameterValuePickerViewController.init(parameter:allowsVariables:allowsMultipleSelection:initialCollection:currentState:)()
{
  OUTLINED_FUNCTION_3_8();
  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_4_6();
  *&v1[OBJC_IVAR____TtC14WorkflowEditor34ParameterValuePickerViewController_hostingViewController] = 0;
  *&v1[OBJC_IVAR____TtC14WorkflowEditor34ParameterValuePickerViewController_parameter] = v5;
  *&v1[OBJC_IVAR____TtC14WorkflowEditor34ParameterValuePickerViewController_currentState] = v0;
  *&v1[OBJC_IVAR____TtC14WorkflowEditor34ParameterValuePickerViewController_initialValue] = v2;
  v1[OBJC_IVAR____TtC14WorkflowEditor34ParameterValuePickerViewController_allowsVariables] = v4;
  v1[OBJC_IVAR____TtC14WorkflowEditor34ParameterValuePickerViewController_allowsMultipleSelection] = v3;
  v7.receiver = v1;
  v7.super_class = type metadata accessor for ParameterValuePickerViewController();
  return objc_msgSendSuper2(&v7, sel_initWithNibName_bundle_, 0, 0);
}

void sub_274454918(uint64_t a1)
{
  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_4_6();
  *(v1 + OBJC_IVAR____TtC14WorkflowEditor34ParameterValuePickerViewController_hostingViewController) = 0;
  sub_27463C56C();
  __break(1u);
}

void sub_2744549BC()
{
  v1 = v0;
  v2 = type metadata accessor for ParameterValuePickerView(0);
  MEMORY[0x28223BE20](v2);
  v4 = v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  [v1 setView_];

  sub_274454D74(v4);
  sub_274455498(&qword_28094BA18, type metadata accessor for ParameterValuePickerView, &unk_274650200);
  v27[1] = sub_27463AE9C();
  v6 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094B230, &unk_27464BDA0));
  v7 = sub_274639CDC();
  [v1 addChildViewController_];
  v8 = OUTLINED_FUNCTION_5_8();
  if (!v8)
  {
    __break(1u);
    goto LABEL_9;
  }

  v9 = v8;
  v10 = [v1 view];
  if (!v10)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v11 = v10;
  [v10 bounds];
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;

  [v9 setFrame_];
  v20 = OUTLINED_FUNCTION_5_8();

  if (!v20)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v21 = [objc_opt_self() clearColor];
  [v20 setBackgroundColor_];

  v22 = OUTLINED_FUNCTION_5_8();
  if (!v22)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  [v22 setAutoresizingMask_];

  v23 = [v1 view];
  if (!v23)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v24 = v23;
  v25 = OUTLINED_FUNCTION_5_8();

  if (v25)
  {
    [v24 addSubview_];

    [v7 didMoveToParentViewController_];
    v26 = *&v1[OBJC_IVAR____TtC14WorkflowEditor34ParameterValuePickerViewController_hostingViewController];
    *&v1[OBJC_IVAR____TtC14WorkflowEditor34ParameterValuePickerViewController_hostingViewController] = v7;

    return;
  }

LABEL_13:
  __break(1u);
}

uint64_t sub_274454CF8()
{
  if (*(v0 + OBJC_IVAR____TtC14WorkflowEditor34ParameterValuePickerViewController_allowsMultipleSelection) != 1)
  {
    return 0;
  }

  v1 = *(v0 + OBJC_IVAR____TtC14WorkflowEditor34ParameterValuePickerViewController_parameter);
  if (![v1 allowsEmptyValue])
  {
    return 2;
  }

  if ([v1 wf_usesTogglesForSelection])
  {
    return 3;
  }

  return 1;
}

uint64_t sub_274454D74@<X0>(uint64_t a1@<X8>)
{
  v21 = *(v1 + OBJC_IVAR____TtC14WorkflowEditor34ParameterValuePickerViewController_parameter);
  v3 = sub_274454CF8();
  v4 = *(v1 + OBJC_IVAR____TtC14WorkflowEditor34ParameterValuePickerViewController_currentState);
  v5 = *(v1 + OBJC_IVAR____TtC14WorkflowEditor34ParameterValuePickerViewController_initialValue);
  v6 = v5;
  v7 = v4;
  v20 = sub_2744546B4();
  Strong = swift_unknownObjectWeakLoadStrong();
  v9 = swift_unknownObjectWeakLoadStrong();
  OUTLINED_FUNCTION_5();
  v10 = swift_allocObject();
  swift_unknownObjectUnownedInit();
  OUTLINED_FUNCTION_5();
  v11 = swift_allocObject();
  swift_unknownObjectUnownedInit();
  OUTLINED_FUNCTION_5();
  v12 = swift_allocObject();
  swift_unknownObjectUnownedInit();

  sub_27463ACDC();
  *(a1 + 24) = v22;
  *(a1 + 32) = v23;
  v13 = *(type metadata accessor for ParameterValuePickerView(0) + 28);
  *(a1 + v13) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094BAE8, &qword_2746502A0);
  swift_storeEnumTagMultiPayload();
  *(a1 + 17) = v3;
  v14 = v3 != 0;
  v15 = v3 == 2 || v3 == 0;
  v16 = objc_allocWithZone(type metadata accessor for ParameterValuePickerModel(0));
  v17 = sub_274468CF8(v21, v4, v5, v14, v15, v20, Strong, v9, sub_274455440, v10, sub_274455448, v11, sub_27445546C, v12);
  OUTLINED_FUNCTION_5();
  v18 = swift_allocObject();
  *(v18 + 16) = v17;

  *a1 = sub_274455490;
  *(a1 + 8) = v18;
  *(a1 + 16) = 0;
  return result;
}

void sub_274454FD8(uint64_t a1, uint64_t a2)
{
  Strong = swift_unknownObjectUnownedLoadStrong();
  v4 = swift_unknownObjectWeakLoadStrong();

  if (v4)
  {
    v5 = swift_unknownObjectUnownedLoadStrong();
    [v4 parameterValuePickerWithViewController:v5 didFinishWithParameterState:a1];
    swift_unknownObjectRelease();
  }
}

void sub_274455088(uint64_t a1, SEL *a2)
{
  Strong = swift_unknownObjectUnownedLoadStrong();
  v4 = swift_unknownObjectWeakLoadStrong();

  if (v4)
  {
    v5 = swift_unknownObjectUnownedLoadStrong();
    [v4 *a2];
    swift_unknownObjectRelease();
  }
}

id ParameterValuePickerViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_27463B66C();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

id ParameterValuePickerViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ParameterValuePickerViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_2744552D0()
{
  v1 = sub_274639E1C();
  v2 = MEMORY[0x277CDDFC8];
  sub_274455498(&qword_28094BAF0, MEMORY[0x277CDDFC8], MEMORY[0x277CDDFD8]);
  sub_27463B7DC();
  (*(*(v1 - 8) + 8))(v0, v1);
  sub_27463B7DC();
  sub_274455498(&qword_28094BAF8, v2, MEMORY[0x277CDDFE8]);
  return sub_27463C7DC();
}

uint64_t sub_274455498(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t OUTLINED_FUNCTION_4_6()
{

  return swift_unknownObjectWeakInit();
}

id OUTLINED_FUNCTION_5_8()
{

  return [v0 (v1 + 2808)];
}

unint64_t StaticString._asString.getter(unint64_t result, uint64_t a2, char a3)
{
  if ((a3 & 1) == 0)
  {
    if (result)
    {
      return sub_27463B70C(result, a2);
    }

    __break(1u);
  }

  v3 = HIDWORD(result);
  if (HIDWORD(result))
  {
    __break(1u);
    goto LABEL_12;
  }

  if ((result & 0xFFFFF800) != 0xD800)
  {
    v3 = result >> 16;
    if (result >> 16 <= 0x10)
    {
      if (result <= 0x7F)
      {
        v4 = result + 1;
LABEL_9:
        v5 = __clz(v4);
        a2 = 4 - (v5 >> 3);
        v11 = (v4 + 0xFEFEFEFEFEFEFFLL) & ~(-1 << (8 * (4 - (v5 >> 3))));
        result = &v11;
        return sub_27463B70C(result, a2);
      }

LABEL_13:
      v6 = (result & 0x3F) << 8;
      v7 = (result >> 6) + v6 + 33217;
      v8 = (v6 | (result >> 6) & 0x3F) << 8;
      v9 = (result >> 18) + ((v8 | (result >> 12) & 0x3F) << 8) - 2122219023;
      v10 = (result >> 12) + v8 + 8487393;
      if (v3)
      {
        v4 = v9;
      }

      else
      {
        v4 = v10;
      }

      if (result < 0x800)
      {
        v4 = v7;
      }

      goto LABEL_9;
    }

LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  __break(1u);
  return result;
}

id static NSBundle._current.getter()
{
  if (qword_2809492C0 != -1)
  {
    swift_once();
  }

  v1 = qword_28094BB00;

  return v1;
}

id sub_274455690()
{
  _s2__CMa();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = [objc_opt_self() bundleForClass_];
  qword_28094BB00 = result;
  return result;
}

void WFLocationParameter.view(with:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_24();
  a19 = v21;
  a20 = v22;
  v24 = v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094BB10, &qword_27464BE50);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v26);
  v28 = (&a9 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v29);
  v31 = *(v30 + 56);
  *(v28 + v31) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094BDF0, &qword_274653F70);
  swift_storeEnumTagMultiPayload();
  v32 = v28 + v25[15];
  *v32 = swift_getKeyPath();
  *(v32 + 4) = 0;
  v33 = v28 + v25[16];
  *v33 = swift_getKeyPath();
  v33[8] = 0;
  v34 = v28 + v25[17];
  *v34 = swift_getKeyPath();
  v34[40] = 0;
  objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094B440, &qword_27464C470));
  v35 = v20;
  sub_27444A564(v35);
  OUTLINED_FUNCTION_10_6();
  sub_274458A14(v36, &unk_28094B440, &qword_27464C470);
  *v28 = sub_27463950C();
  v28[1] = v37;
  v38 = [v35 localizedLabel];
  v39 = sub_27463B6AC();
  v41 = v40;

  v42 = [v35 localizedDescription];
  if (v42)
  {
    v43 = v42;
    v44 = sub_27463B6AC();
    v46 = v45;
  }

  else
  {
    v44 = 0;
    v46 = 0xE000000000000000;
  }

  v28[2] = v39;
  v28[3] = v41;
  v28[4] = v44;
  v28[5] = v46;
  v47 = v28 + v25[12];
  *v47 = 0;
  *(v47 + 1) = 0;
  v47[16] = 0;
  sub_2744559AC(v35, v24, v28 + v25[11]);
  *(v28 + v25[13]) = 0;
  sub_274433B6C();
  sub_274458A14(&qword_28094BB20, &unk_28094BB10, &qword_27464BE50);
  sub_27463AE9C();
  OUTLINED_FUNCTION_23();
}

uint64_t sub_2744559AC@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  type metadata accessor for ParameterStateStore();
  sub_27445838C(&qword_28094B550, type metadata accessor for ParameterStateStore);

  v5 = sub_27463950C();
  v7 = v6;
  v8 = swift_allocObject();
  *(v8 + 16) = sub_274458A58;
  *(v8 + 24) = a2;
  v9 = swift_allocObject();
  *(v9 + 16) = sub_274458A90;
  *(v9 + 24) = a2;
  v10 = type metadata accessor for LocationParameterView(0);
  swift_retain_n();
  sub_27463A02C();
  *(a3 + v10[9]) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094BC60, &qword_2746515D0);
  swift_storeEnumTagMultiPayload();
  v11 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094BCA0, &qword_27464C160));
  sub_27444A578(a1);
  sub_274458A14(&qword_28094BCA8, &qword_28094BCA0, &qword_27464C160);
  *a3 = sub_27463950C();
  *(a3 + 8) = v12;
  *(a3 + 16) = v5;
  *(a3 + 24) = v7;
  *(a3 + 32) = sub_274458A60;
  *(a3 + 40) = v8;
  *(a3 + 48) = sub_274458A98;
  *(a3 + 56) = v9;
  sub_27463ACDC();
  *(a3 + 64) = v18;
  *(a3 + 72) = v19;
  sub_27463ACDC();
  *(a3 + 80) = v18;
  *(a3 + 88) = v19;
  v13 = a3 + v10[10];
  *v13 = swift_getKeyPath();
  *(v13 + 40) = 0;
  v14 = a3 + v10[11];
  *v14 = swift_getKeyPath();
  *(v14 + 8) = 0;
  v15 = a3 + v10[12];
  result = swift_getKeyPath();
  *v15 = result;
  *(v15 + 8) = 0;
  return result;
}

id WFLocationParameter.moduleSummarySlot(for:)(uint64_t a1)
{
  sub_274412734(0, &qword_28094BD80, 0x277D7D7B0);
  v3 = [v1 localizedLabel];
  v4 = sub_27463B6AC();
  v6 = v5;

  v7 = sub_27444C12C(v1);
  v9 = v8;
  v10 = sub_27463B66C();
  v11 = sub_27444AEE4(v4, v6, v7, v9, v10);
  if (a1)
  {
    objc_opt_self();
    v12 = swift_dynamicCastObjCClass();
    if (v12)
    {
      v13 = v12;
      swift_unknownObjectRetain();
      v14 = [v13 value];
      if (v14)
      {
        v15 = v14;
        v16 = [v14 displayString];
        v17 = sub_27463B6AC();
        v19 = v18;

        sub_274457D08(v17, v19, v11);
      }

      else
      {
        v20 = [v13 variable];
        if (!v20)
        {
LABEL_8:
          swift_unknownObjectRelease();
          return v11;
        }

        v15 = v20;
        [v11 populateWith_];
      }

      goto LABEL_8;
    }
  }

  return v11;
}

id sub_274455DE4(void *a1, uint64_t a2, uint64_t a3)
{
  swift_unknownObjectRetain();
  v5 = a1;
  v6 = WFLocationParameter.moduleSummarySlot(for:)(a3);
  swift_unknownObjectRelease();

  return v6;
}

void sub_274455E4C()
{
  OUTLINED_FUNCTION_24();
  v0 = sub_274639ABC();
  OUTLINED_FUNCTION_1();
  v2 = v1;
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_3_0();
  v6 = v5 - v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094BC60, &qword_2746515D0);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_60_0();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_75();
  type metadata accessor for LocationParameterView(0);
  OUTLINED_FUNCTION_28_3();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_274433B6C();
  }

  else
  {
    sub_27463BC0C();
    v8 = sub_27463A2FC();
    OUTLINED_FUNCTION_29_2(v8, &dword_2743F0000, v9, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", v10, v11, MEMORY[0x277D84F90]);

    sub_274639AAC();
    swift_getAtKeyPath();

    (*(v2 + 8))(v6, v0);
  }

  OUTLINED_FUNCTION_23();
}

void sub_274455FDC()
{
  OUTLINED_FUNCTION_24();
  v141 = v2;
  v116 = sub_27463A0AC();
  OUTLINED_FUNCTION_1();
  v115 = v3;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_12_3(v6 - v5);
  v140 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094BC20, &qword_27464C0C8);
  OUTLINED_FUNCTION_1();
  v118 = v7;
  OUTLINED_FUNCTION_60_0();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_40_1();
  OUTLINED_FUNCTION_12_3(v9);
  v129 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094BC28, &qword_27464C0D0);
  OUTLINED_FUNCTION_1();
  v124 = v10;
  OUTLINED_FUNCTION_60_0();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_40_1();
  OUTLINED_FUNCTION_12_3(v12);
  v113 = sub_274639ABC();
  OUTLINED_FUNCTION_1();
  v112 = v13;
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_12_3(v16 - v15);
  v137 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094BC30, &qword_27464C0D8);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_60_0();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_40_1();
  v139 = v18;
  v126 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094BC38, &qword_27464C0E0);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_60_0();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_40_1();
  OUTLINED_FUNCTION_12_3(v20);
  v138 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094BC40, &qword_27464C0E8);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_60_0();
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_40_1();
  OUTLINED_FUNCTION_12_3(v22);
  v127 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094BC48, &unk_27464C0F0);
  OUTLINED_FUNCTION_1();
  v121 = v23;
  OUTLINED_FUNCTION_60_0();
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_40_1();
  OUTLINED_FUNCTION_12_3(v25);
  v26 = sub_274639FEC();
  OUTLINED_FUNCTION_1();
  v130 = v27;
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_12_3(v30 - v29);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094BC50, &qword_2746517C0) - 8;
  OUTLINED_FUNCTION_60_0();
  MEMORY[0x28223BE20](v32);
  v34 = &v109[-v33];
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094A610, &qword_2746493F0);
  v36 = OUTLINED_FUNCTION_53_0(v35);
  MEMORY[0x28223BE20](v36);
  v122 = &v109[-((v37 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v38);
  v40 = &v109[-v39];
  MEMORY[0x28223BE20](v41);
  v43 = &v109[-v42];
  v125 = type metadata accessor for LocationParameterView(0);
  OUTLINED_FUNCTION_1();
  v45 = v44;
  v47 = *(v46 + 64);
  MEMORY[0x28223BE20](v48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280949388, &unk_27464C100);
  OUTLINED_FUNCTION_1();
  v135 = v50;
  v136 = v49;
  OUTLINED_FUNCTION_60_0();
  MEMORY[0x28223BE20](v51);
  OUTLINED_FUNCTION_26_2();
  OUTLINED_FUNCTION_0_13();
  sub_27445842C();
  v52 = *(v45 + 80);
  v53 = (v52 + 16) & ~v52;
  v133 = v47;
  v131 = v52;
  v54 = swift_allocObject();
  v132 = v53;
  v134 = &v109[-((v47 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_274458490(v134, v54 + v53);
  v143 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094BC68, &unk_27464C110);
  sub_274458558();
  v142 = v0;
  v55 = v1;
  v56 = v130;
  sub_27463AD5C();
  sub_274455E4C();
  (*(v56 + 104))(v40, *MEMORY[0x277CE0558], v26);
  __swift_storeEnumTagSinglePayload(v40, 0, 1, v26);
  v57 = *(v31 + 56);
  sub_2744342DC();
  sub_2744342DC();
  if (OUTLINED_FUNCTION_31_2(v34) == 1)
  {
    v58 = &qword_2746493F0;
    sub_27440CB1C(v40, &qword_28094A610, &qword_2746493F0);
    sub_27440CB1C(v43, &qword_28094A610, &qword_2746493F0);
    v59 = OUTLINED_FUNCTION_31_2(&v34[v57]);
    v60 = v136;
    if (v59 == 1)
    {
      sub_27440CB1C(v34, &qword_28094A610, &qword_2746493F0);
LABEL_11:
      OUTLINED_FUNCTION_11_5();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094D1A0, &qword_27464C120);
      sub_27463AD0C();
      OUTLINED_FUNCTION_0_13();
      OUTLINED_FUNCTION_18_3();
      v70 = OUTLINED_FUNCTION_14_4(&unk_288364450);
      sub_274458490(v1, v58 + v70);
      v71 = type metadata accessor for LocationPickerView(0);
      v72 = OUTLINED_FUNCTION_5_9(&qword_280949390, &qword_280949388, &unk_27464C100);
      OUTLINED_FUNCTION_3_9();
      v106 = sub_27445838C(v73, v74);
      v75 = v120;
      sub_27463A91C();

      v76 = v121;
      v77 = OUTLINED_FUNCTION_25_3();
      v78 = v127;
      v79(v77, v75, v127);
      swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_9_5();
      OUTLINED_FUNCTION_7_7();
      v80 = v128;
      sub_274639DDC();
      sub_2743F7A58();
      swift_storeEnumTagMultiPayload();
      sub_27445883C();
      v144 = v60;
      v145 = v71;
      v146 = v72;
      v147 = v106;
      v81 = OUTLINED_FUNCTION_4_7();
      OUTLINED_FUNCTION_19_2(v81);
      sub_2743F7AB8(v80);
      (*(v76 + 8))(v75, v78);
      goto LABEL_15;
    }

    goto LABEL_6;
  }

  v61 = v122;
  sub_2744342DC();
  if (OUTLINED_FUNCTION_31_2(&v34[v57]) == 1)
  {
    sub_27440CB1C(v40, &qword_28094A610, &qword_2746493F0);
    sub_27440CB1C(v43, &qword_28094A610, &qword_2746493F0);
    (*(v56 + 8))(v61, v26);
    v60 = v136;
LABEL_6:
    sub_27440CB1C(v34, &unk_28094BC50, &qword_2746517C0);
    goto LABEL_7;
  }

  v67 = &v34[v57];
  v68 = v119;
  (*(v56 + 32))(v119, v67, v26);
  sub_27445838C(&unk_28094BC90, MEMORY[0x277CE0570]);
  v110 = sub_27463B5BC();
  v69 = *(v56 + 8);
  v58 = (v56 + 8);
  v69(v68, v26);
  sub_27440CB1C(v40, &qword_28094A610, &qword_2746493F0);
  sub_27440CB1C(v43, &qword_28094A610, &qword_2746493F0);
  v69(v61, v26);
  sub_27440CB1C(v34, &qword_28094A610, &qword_2746493F0);
  v60 = v136;
  if (v110)
  {
    goto LABEL_11;
  }

LABEL_7:
  v62 = v125;
  sub_2744C6ABC();
  v63 = v147;
  sub_27440CB1C(&v144, &unk_2809507C0, &qword_274649C60);
  if (v63 || ((v64 = v55 + *(v62 + 44), v65 = *v64, *(v64 + 8) != 1) ? (, sub_27463BC0C(), v82 = sub_27463A2FC(), sub_274638CEC(), v82, v62 = v111, sub_274639AAC(), swift_getAtKeyPath(), sub_274435568(v65, 0), (*(v112 + 8))(v62, v113), v66 = v144) : (v66 = *v64), v66 == 2))
  {
    OUTLINED_FUNCTION_11_5();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094D1A0, &qword_27464C120);
    sub_27463AD0C();
    OUTLINED_FUNCTION_0_13();
    OUTLINED_FUNCTION_18_3();
    v83 = OUTLINED_FUNCTION_14_4(&unk_288364428);
    sub_274458490(v55, v83 + v62);
    v84 = type metadata accessor for LocationPickerView(0);
    v85 = OUTLINED_FUNCTION_5_9(&qword_280949390, &qword_280949388, &unk_27464C100);
    OUTLINED_FUNCTION_3_9();
    v107 = sub_27445838C(v86, v87);
    v88 = v123;
    sub_27463AA9C();

    v89 = v124;
    v90 = OUTLINED_FUNCTION_25_3();
    v91 = v129;
    v92(v90, v88, v129);
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_9_5();
    OUTLINED_FUNCTION_7_7();
    v93 = v128;
    sub_274639DDC();
    sub_2743F7A58();
    swift_storeEnumTagMultiPayload();
    sub_27445883C();
    v144 = v60;
    v145 = v84;
    v146 = v85;
    v147 = v107;
    v94 = OUTLINED_FUNCTION_4_7();
    OUTLINED_FUNCTION_19_2(v94);
    sub_2743F7AB8(v93);
    (*(v89 + 8))(v88, v91);
  }

  else
  {
    OUTLINED_FUNCTION_11_5();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094D1A0, &qword_27464C120);
    sub_27463AD0C();
    v130 = v144;
    LODWORD(v136) = v146;
    OUTLINED_FUNCTION_0_13();
    OUTLINED_FUNCTION_18_3();
    v95 = v132;
    v96 = swift_allocObject();
    sub_274458490(v55, v96 + v95);
    v97 = sub_27463AD3C();
    v98 = v114;
    *v114 = v97;
    v99 = v115;
    v100 = v116;
    (*(v115 + 104))(v98, *MEMORY[0x277CDE248], v116);
    v133 = type metadata accessor for LocationPickerView(0);
    v134 = OUTLINED_FUNCTION_5_9(&qword_280949390, &qword_280949388, &unk_27464C100);
    OUTLINED_FUNCTION_3_9();
    v108 = sub_27445838C(v101, v102);
    v103 = v117;
    sub_27463A6DC();

    (*(v99 + 8))(v98, v100);
    v104 = v118;
    v105 = v140;
    (*(v118 + 16))(v139, v103, v140);
    swift_storeEnumTagMultiPayload();
    sub_27445883C();
    v144 = v60;
    v145 = v133;
    v146 = v134;
    v147 = v108;
    OUTLINED_FUNCTION_4_7();
    sub_274639DDC();
    (*(v104 + 8))(v103, v105);
  }

LABEL_15:
  (*(v135 + 8))(v142, v60);
  OUTLINED_FUNCTION_23();
}

uint64_t sub_274456FE8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  (*(a1 + 32))(v19);
  v3 = v19[0];
  if (v19[0] && (v4 = [v19[0] value], v3, v4))
  {
    v5 = [v4 displayString];
  }

  else
  {
    sub_27463B70C("Choose", 6);
    if (qword_2809492C0 != -1)
    {
      swift_once();
    }

    v6 = qword_28094BB00;
    v7 = sub_27463B66C();
    v4 = sub_27463B66C();

    v5 = [v6 localizedStringForKey:v7 value:v4 table:0];
  }

  v8 = sub_27463B6AC();
  v10 = v9;

  v19[0] = v8;
  v19[1] = v10;
  sub_274412BBC();
  v11 = sub_27463A53C();
  v13 = v12;
  v15 = v14;
  v17 = v16;
  type metadata accessor for LocationParameterView(0);
  sub_2744C6ABC();
  LOBYTE(v8) = 2 * (v19[3] == 0);
  sub_27440CB1C(v19, &unk_2809507C0, &qword_274649C60);
  result = swift_getKeyPath();
  *a2 = v11;
  *(a2 + 8) = v13;
  *(a2 + 16) = v15 & 1;
  *(a2 + 24) = v17;
  *(a2 + 32) = result;
  *(a2 + 40) = v8;
  return result;
}

__n128 sub_2744571D0@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 16);
  v5 = *(*(a1 + 8) + qword_28094A100);
  v6 = *(a1 + 56);
  KeyPath = swift_getKeyPath();
  *(a2 + *(type metadata accessor for LocationPickerView(0) + 24)) = KeyPath;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094C000, &qword_27464CA10);
  swift_storeEnumTagMultiPayload();
  v8 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094BCA0, &qword_27464C160));
  v9 = v5;
  v16 = *(a1 + 24);

  v15 = *(a1 + 40);

  sub_27444A578(v9);
  OUTLINED_FUNCTION_10_6();
  sub_274458A14(v10, &qword_28094BCA0, &qword_27464C160);
  v11 = sub_27463950C();
  v13 = v12;

  *a2 = v11;
  *(a2 + 8) = v13;
  *(a2 + 16) = v4;
  result = v15;
  *(a2 + 24) = v16;
  *(a2 + 40) = v15;
  *(a2 + 56) = v6;
  return result;
}

void sub_27445732C()
{
  OUTLINED_FUNCTION_24();
  v0 = sub_274639ABC();
  OUTLINED_FUNCTION_1();
  v2 = v1;
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_3_0();
  v6 = v5 - v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094C000, &qword_27464CA10);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_60_0();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_75();
  type metadata accessor for LocationPickerView(0);
  OUTLINED_FUNCTION_28_3();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_274433B6C();
  }

  else
  {
    sub_27463BC0C();
    v8 = sub_27463A2FC();
    OUTLINED_FUNCTION_29_2(v8, &dword_2743F0000, v9, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", v10, v11, MEMORY[0x277D84F90]);

    sub_274639AAC();
    swift_getAtKeyPath();

    (*(v2 + 8))(v6, v0);
  }

  OUTLINED_FUNCTION_23();
}

id sub_2744574C0()
{
  v1 = v0;
  (*(v0 + 32))(&v11);
  v2 = v11;
  if (v11)
  {
    v3 = [v11 value];
  }

  else
  {
    v3 = 0;
  }

  v4 = [objc_allocWithZone(WFLocationPickerViewController) initWithPickerType:0 value:v3];

  v5 = *(v1 + 8);
  v6 = qword_28094A100;
  [v4 setAllowsTextOnlyLocation_];
  [v4 setAllowsPickingCurrentLocation_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094BC18, &qword_27464C0C0);
  sub_27463A2EC();
  v7 = v11;
  [v4 setDelegate_];

  v8 = v4;
  [v8 setPreferredContentSize_];
  v9 = [objc_allocWithZone(MEMORY[0x277D757A0]) initWithRootViewController_];

  return v9;
}

id sub_27445763C()
{
  v1 = type metadata accessor for LocationPickerView(0);
  v2 = OUTLINED_FUNCTION_53_0(v1);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_26_2();
  sub_27445842C();
  v3 = type metadata accessor for LocationPickerView.Coordinator(0);
  v4 = objc_allocWithZone(v3);
  sub_27445842C();
  v7.receiver = v4;
  v7.super_class = v3;
  v5 = objc_msgSendSuper2(&v7, sel_init);
  sub_2744583D0(v0);
  return v5;
}

uint64_t sub_274457710(uint64_t a1, void *a2)
{
  v5 = sub_2746396DC();
  v6 = OUTLINED_FUNCTION_53_0(v5);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_26_2();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094A210, qword_27464FBA0);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_60_0();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_75();
  v9 = v2 + OBJC_IVAR____TtCV14WorkflowEditor18LocationPickerView11Coordinator_parent;
  if (!a2)
  {
    goto LABEL_5;
  }

  v10 = *(*(v9 + 8) + qword_28094A100);
  v11 = a2;
  [v10 stateClass];
  swift_getObjCClassMetadata();
  sub_274412734(0, &qword_28094BBC0, 0x277D7C610);
  OUTLINED_FUNCTION_21_2();
  if (!swift_dynamicCastMetatype())
  {

LABEL_5:
    v14 = *(v9 + 48);
    v16 = 0;
    v14(&v16);
    goto LABEL_6;
  }

  v12 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithValue_];
  v13 = *(v9 + 48);
  v16 = v12;
  v13(&v16);

LABEL_6:
  sub_27445732C();
  MEMORY[0x277C575F0](v7);
  sub_2746396CC();
  sub_27463AEBC();
  return sub_27440CB1C(v3, &unk_28094A210, qword_27464FBA0);
}

uint64_t sub_27445793C()
{
  v1 = sub_2746396DC();
  v2 = OUTLINED_FUNCTION_53_0(v1);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_26_2();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094A210, qword_27464FBA0);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_60_0();
  v5 = MEMORY[0x28223BE20](v4);
  v7 = &v10 - v6;
  v8 = *(v0 + OBJC_IVAR____TtCV14WorkflowEditor18LocationPickerView11Coordinator_parent + 48);
  v11 = 0;
  v8(&v11, v5);
  sub_27445732C();
  MEMORY[0x277C575F0](v3);
  sub_2746396CC();
  sub_27463AEBC();
  return sub_27440CB1C(v7, &unk_28094A210, qword_27464FBA0);
}

id sub_274457AD0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LocationPickerView.Coordinator(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_274457B24@<X0>(void *a1@<X8>)
{
  result = sub_27445763C();
  *a1 = result;
  return result;
}

uint64_t sub_274457B88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_27445838C(&qword_28094BC10, type metadata accessor for LocationPickerView);

  return MEMORY[0x28212EF70](a1, a2, a3, v6);
}

uint64_t sub_274457C1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_27445838C(&qword_28094BC10, type metadata accessor for LocationPickerView);

  return MEMORY[0x28212EF38](a1, a2, a3, v6);
}

void sub_274457CB0(uint64_t a1)
{
  sub_27445838C(&qword_28094BC10, type metadata accessor for LocationPickerView);
  sub_27463A26C();
  __break(1u);
}

void sub_274457D08(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_27463B66C();

  [a3 populateWithString_];
}

uint64_t sub_274457D94(uint64_t a1)
{
  result = type metadata accessor for LocationPickerView(319);
  if (v2 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

void sub_274457E6C(uint64_t a1)
{
  sub_274457F78(319, &qword_28094BBA8, &qword_28094BBB0, 0x277D7C608, type metadata accessor for Parameter);
  if (v1 <= 0x3F)
  {
    sub_274457F78(319, &qword_28094BBB8, &qword_28094BBC0, 0x277D7C610, type metadata accessor for StoredParameterState);
    if (v2 <= 0x3F)
    {
      sub_274458288(319, &qword_28094BBC8, &unk_28094A210, qword_27464FBA0);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_274457F78(uint64_t a1, unint64_t *a2, unint64_t *a3, void *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_274412734(255, a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_274458028(uint64_t a1)
{
  sub_274457F78(319, &qword_28094BBA8, &qword_28094BBB0, 0x277D7C608, type metadata accessor for Parameter);
  if (v1 <= 0x3F)
  {
    sub_274457F78(319, &qword_28094BBB8, &qword_28094BBC0, 0x277D7C610, type metadata accessor for StoredParameterState);
    if (v2 <= 0x3F)
    {
      sub_2744582D8(319, &qword_28094BBF0, MEMORY[0x277D839B0], MEMORY[0x277CE10B8]);
      if (v3 <= 0x3F)
      {
        sub_274458230();
        if (v4 <= 0x3F)
        {
          sub_274458288(319, &qword_28094BC00, &qword_28094A610, &qword_2746493F0);
          if (v5 <= 0x3F)
          {
            sub_274458288(319, &qword_28094A5F0, &unk_2809507C0, &qword_274649C60);
            if (v6 <= 0x3F)
            {
              sub_2744582D8(319, &unk_28094A600, &type metadata for EditorPresentationEnvironment, MEMORY[0x277CDF468]);
              if (v7 <= 0x3F)
              {
                sub_2744582D8(319, &qword_28094BC08, &type metadata for ParameterLayoutMode, MEMORY[0x277CDF468]);
                if (v8 <= 0x3F)
                {
                  swift_cvw_initStructMetadataWithLayoutString();
                }
              }
            }
          }
        }
      }
    }
  }
}

void sub_274458230()
{
  if (!qword_28094BBF8)
  {
    v0 = sub_27463A03C();
    if (!v1)
    {
      atomic_store(v0, &qword_28094BBF8);
    }
  }
}

void sub_274458288(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    OUTLINED_FUNCTION_21_2();
    v5 = sub_27463919C();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_2744582D8(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_27445838C(unint64_t *a1, uint64_t (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    OUTLINED_FUNCTION_21_2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2744583D0(uint64_t a1)
{
  v2 = type metadata accessor for LocationPickerView(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_27445842C()
{
  OUTLINED_FUNCTION_57();
  v1(0);
  OUTLINED_FUNCTION_7();
  v2 = OUTLINED_FUNCTION_5_0();
  v3(v2);
  return v0;
}

uint64_t sub_274458484(uint64_t a1, uint64_t a2, char a3)
{
  if ((a3 & 1) == 0)
  {
  }

  return result;
}

uint64_t sub_274458490(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LocationParameterView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2744584F4()
{
  v1 = type metadata accessor for LocationParameterView(0);
  OUTLINED_FUNCTION_53_0(v1);
  v3 = v0 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return sub_274456F88(v3);
}

unint64_t sub_274458558()
{
  result = qword_28094BC70;
  if (!qword_28094BC70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094BC68, &unk_27464C110);
    sub_274458A14(&unk_28094D030, &qword_28094BC80, &qword_27464FA00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094BC70);
  }

  return result;
}

uint64_t objectdestroyTm()
{
  v1 = type metadata accessor for LocationParameterView(0);
  v2 = v0 + ((*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80));

  v3 = v2 + v1[8];
  v4 = sub_27463A13C();
  if (!OUTLINED_FUNCTION_31_2(v3))
  {
    (*(*(v4 - 8) + 8))(v3, v4);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094BBD8, &unk_27464BF80);

  v5 = v1[9];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094BC60, &qword_2746515D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_274639FEC();
    if (!__swift_getEnumTagSinglePayload(v2 + v5, 1, v6))
    {
      (*(*(v6 - 8) + 8))(v2 + v5, v6);
    }
  }

  else
  {
  }

  v7 = v2 + v1[10];
  if (*(v7 + 40))
  {
    if (*(v7 + 24))
    {
      __swift_destroy_boxed_opaque_existential_1(v7);
    }
  }

  else
  {
  }

  sub_274435568(*(v2 + v1[11]), *(v2 + v1[11] + 8));
  sub_274458484(*(v2 + v1[12]), *(v2 + v1[12] + 8), *(v2 + v1[12] + 9));

  return swift_deallocObject();
}

unint64_t sub_27445883C()
{
  result = qword_28094BC88;
  if (!qword_28094BC88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094BC40, &qword_27464C0E8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280949388, &unk_27464C100);
    type metadata accessor for LocationPickerView(255);
    sub_274458A14(&qword_280949390, &qword_280949388, &unk_27464C100);
    sub_27445838C(&qword_280949398, type metadata accessor for LocationPickerView);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094BC88);
  }

  return result;
}

double sub_2744589B4@<D0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for LocationParameterView(0);
  OUTLINED_FUNCTION_53_0(v3);
  *&result = sub_2744571D0(v1 + ((*(v4 + 80) + 16) & ~*(v4 + 80)), a1).n128_u64[0];
  return result;
}

uint64_t sub_274458A14(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    OUTLINED_FUNCTION_21_2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_274458A60@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 16))();
  *a1 = result;
  return result;
}

unint64_t sub_274458AC4()
{
  result = qword_28094BCB0;
  if (!qword_28094BCB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094BCB8, &qword_27464C1C8);
    sub_27445883C();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280949388, &unk_27464C100);
    type metadata accessor for LocationPickerView(255);
    sub_274458A14(&qword_280949390, &qword_280949388, &unk_27464C100);
    sub_27445838C(&qword_280949398, type metadata accessor for LocationPickerView);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094BCB0);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_4_7()
{

  return swift_getOpaqueTypeConformance2();
}

uint64_t OUTLINED_FUNCTION_5_9(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{

  return sub_274458A14(a1, a2, a3);
}

uint64_t OUTLINED_FUNCTION_7_7()
{
  *(v4 - 128) = v3;
  *(v4 - 120) = v0;
  *(v4 - 112) = v1;
  *(v4 - 104) = v2;

  return swift_getOpaqueTypeConformance2();
}

uint64_t OUTLINED_FUNCTION_9_5()
{
  *(v4 - 128) = v3;
  *(v4 - 120) = v0;
  *(v4 - 112) = v1;
  *(v4 - 104) = v2;

  return swift_getOpaqueTypeConformance2();
}

void OUTLINED_FUNCTION_11_5()
{
  v2 = *(v0 + 72);
  *(v1 - 144) = *(v0 + 64);
  *(v1 - 136) = v2;
}

uint64_t OUTLINED_FUNCTION_14_4(uint64_t a1)
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_17_2()
{
  v1 = *(v0 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t OUTLINED_FUNCTION_18_3()
{

  return sub_27445842C();
}

uint64_t OUTLINED_FUNCTION_19_2(uint64_t a1)
{

  return sub_274639DDC();
}

uint64_t OUTLINED_FUNCTION_28_3()
{

  return sub_2744342DC();
}

uint64_t OUTLINED_FUNCTION_29_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{

  return sub_274638CEC();
}

uint64_t OUTLINED_FUNCTION_31_2(uint64_t a1)
{

  return __swift_getEnumTagSinglePayload(a1, 1, v1);
}

id sub_274458E60()
{
  v1 = OBJC_IVAR____TtC14WorkflowEditor21ActionCellSummaryView____lazy_storage___titleLabel;
  v2 = *(v0 + OBJC_IVAR____TtC14WorkflowEditor21ActionCellSummaryView____lazy_storage___titleLabel);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC14WorkflowEditor21ActionCellSummaryView____lazy_storage___titleLabel);
  }

  else
  {
    v4 = sub_274458EC0();
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_274458EC0()
{
  v0 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  v1 = [objc_opt_self() secondaryLabelColor];
  [v0 setTextColor_];

  v2 = [objc_opt_self() preferredFontForTextStyle_];
  [v0 setFont_];

  return v0;
}

id sub_274458F80()
{
  v1 = OBJC_IVAR____TtC14WorkflowEditor21ActionCellSummaryView____lazy_storage___templateView;
  v2 = *(v0 + OBJC_IVAR____TtC14WorkflowEditor21ActionCellSummaryView____lazy_storage___templateView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC14WorkflowEditor21ActionCellSummaryView____lazy_storage___templateView);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x277D7D7C0]) initWithUseCase_];
    [v4 setDebugMode_];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_274459028(uint64_t a1, uint64_t a2)
{
  *&v2[OBJC_IVAR____TtC14WorkflowEditor21ActionCellSummaryView____lazy_storage___titleLabel] = 0;
  *&v2[OBJC_IVAR____TtC14WorkflowEditor21ActionCellSummaryView____lazy_storage___templateView] = 0;
  v3 = &v2[OBJC_IVAR____TtC14WorkflowEditor21ActionCellSummaryView_item];
  *v3 = a1;
  *(v3 + 1) = a2;
  v8.receiver = v2;
  v8.super_class = type metadata accessor for ActionCellSummaryView();
  swift_unknownObjectRetain();
  v4 = objc_msgSendSuper2(&v8, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  v5 = sub_274458E60();
  [v4 addSubview_];

  v6 = sub_274458F80();
  [v4 addSubview_];

  swift_unknownObjectRelease();
  return v4;
}

void sub_27445910C()
{
  *(v0 + OBJC_IVAR____TtC14WorkflowEditor21ActionCellSummaryView____lazy_storage___titleLabel) = 0;
  *(v0 + OBJC_IVAR____TtC14WorkflowEditor21ActionCellSummaryView____lazy_storage___templateView) = 0;
  sub_27463C56C();
  __break(1u);
}

id sub_274459198()
{
  [v0 bounds];
  Width = CGRectGetWidth(v7);
  sub_27445A744(v6, Width);
  v2 = sub_274458E60();
  [v2 setFrame_];

  v3 = sub_274458F80();
  [v3 setFrame_];

  v5.receiver = v0;
  v5.super_class = type metadata accessor for ActionCellSummaryView();
  return objc_msgSendSuper2(&v5, sel_layoutSubviews);
}

double sub_27445927C(double a1)
{
  sub_27445A744(v3, a1);
  CGRectGetHeight(v3[1]);
  CGRectGetHeight(v3[0]);
  return a1;
}

uint64_t sub_274459324(uint64_t a1, uint64_t a2, uint64_t *a3, int a4, uint64_t a5, unsigned int a6, double a7)
{
  v8 = v7;
  v102 = a6;
  v103 = a5;
  v104 = a4;
  v13 = sub_2746395EC();
  v107 = *(v13 - 8);
  v108 = v13;
  MEMORY[0x28223BE20](v13);
  v101 = &v96 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v100 = &v96 - v16;
  MEMORY[0x28223BE20](v17);
  v106 = &v96 - v18;
  v19 = &v7[OBJC_IVAR____TtC14WorkflowEditor21ActionCellSummaryView_item];
  *v19 = a1;
  *(v19 + 1) = a2;
  swift_unknownObjectRelease();
  swift_getObjectType();
  swift_unknownObjectRetain();
  v20 = sub_2744F55B4();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v22 = Strong;
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v105 = sub_274443980(AssociatedTypeWitness, AssociatedConformanceWitness);
  }

  else
  {
    v105 = 0;
  }

  v25 = swift_unknownObjectWeakLoadStrong();
  if (v25)
  {
    v26 = v25;
    swift_getAssociatedTypeWitness();
    v27 = swift_getAssociatedConformanceWitness();
    v28 = *(v27 + 32);
    v29 = swift_checkMetadataState();
    v109 = v28(v29, v27);
  }

  else
  {
    v109 = [objc_allocWithZone(type metadata accessor for WorkflowEditorOptions(0)) init];
  }

  v30 = a3[5];
  v31 = a3[1];
  if (v31)
  {
    v32 = *a3;
    v33 = sub_274458E60();
    [v33 setHidden_];

    v34 = *&v8[OBJC_IVAR____TtC14WorkflowEditor21ActionCellSummaryView____lazy_storage___titleLabel];
    sub_2744D0744(v32, v31, v34);
  }

  else
  {
    v35 = sub_274458E60();
    [v35 setHidden_];

    [*&v8[OBJC_IVAR____TtC14WorkflowEditor21ActionCellSummaryView____lazy_storage___titleLabel] setText_];
  }

  v36 = sub_274458F80();
  v37 = [v36 delegate];

  if (v37)
  {
    objc_opt_self();
    v38 = swift_dynamicCastObjCClass();
    if (v38 && v38 != v30)
    {
      [v38 setTemplateView_];
    }

    swift_unknownObjectRelease();
  }

  v39 = v20;
  v40 = [v30 templateView];
  v41 = OBJC_IVAR____TtC14WorkflowEditor21ActionCellSummaryView____lazy_storage___templateView;
  if (!v40 || (v42 = v40, v43 = *&v8[OBJC_IVAR____TtC14WorkflowEditor21ActionCellSummaryView____lazy_storage___templateView], v40, v42 != v43))
  {
    [v30 setTemplateView_];
  }

  sub_2745E1974(v44);
  v46 = v45;
  v47 = sub_274459E94(v45);
  if (v105)
  {
    if (sub_274453594())
    {
      sub_274573900(MEMORY[0x277D84F90], v48, v49, v50, v51, v52, v53, v54, v96);
      v56 = v55;
      LODWORD(v99) = 0;
    }

    else
    {
      LODWORD(v99) = 0;
      v56 = MEMORY[0x277D84FA0];
    }
  }

  else
  {
    LODWORD(v99) = v39 ^ 1;

    v56 = v46;
  }

  sub_27445B634(a3[2], a3[3], v46, v56, v47, v30);
  v57 = OBJC_IVAR____TtC14WorkflowEditor15ActionViewModel_action;
  v97 = *(a1 + 32);
  [v30 setVariableProvider_];
  [v30 setDelegate_];
  [v30 setVariableUIDelegate_];
  swift_beginAccess();
  [v30 setAuxiliaryViewPresenter_];
  swift_unknownObjectRelease();
  [v30 setProcessing_];
  v58 = swift_allocObject();
  v58[2] = v46;
  v58[3] = a1;
  v58[4] = a2;
  v114 = sub_27445B758;
  v115 = v58;
  aBlock = MEMORY[0x277D85DD0];
  v111 = 1107296256;
  v112 = sub_274550294;
  v113 = &block_descriptor_3;
  v59 = _Block_copy(&aBlock);
  swift_unknownObjectRetain();

  [v30 setUpdateBlock_];
  _Block_release(v59);
  [v30 setTemplateView_];
  [v30 setAllowsPickingVariables_];
  [*&v8[v41] setEnabled_];
  [*&v8[v41] setExtendSlotBackgroundOffEdges_];
  v60 = objc_opt_self();
  v61 = [v60 preferredFontForTextStyle_];
  [v61 pointSize];
  v63 = v62;

  v64 = [v60 systemFontOfSize:v63 weight:*MEMORY[0x277D74410]];
  v65 = [v60 systemFontOfSize_];
  v66 = *&v8[v41];
  v99 = v64;
  [v66 setFont_];
  v67 = *&v8[v41];
  v98 = v65;
  [v67 setUnpopulatedFont_];
  v68 = objc_opt_self();
  v69 = v68;
  v70 = &selRef_wf_slotTemplateSlotRunningTitleColor;
  if (v39)
  {
    v71 = &selRef_wf_slotTemplateSlotRunningBackgroundColor;
  }

  else
  {
    v70 = &selRef_wf_slotTemplateSlotDisabledTitleColor;
    v71 = &selRef_wf_slotTemplateSlotDisabledBackgroundColor;
  }

  v72 = [v68 *v70];
  v73 = [v69 *v71];
  v74 = *&v8[v41];
  v96 = v72;
  [v74 setDisabledSlotTitleColor:v72 backgroundColor:v73 animated:0];
  v75 = [v8 effectiveUserInterfaceLayoutDirection];
  v76 = MEMORY[0x277CDFA88];
  if (v75)
  {
    v76 = MEMORY[0x277CDFA90];
  }

  v78 = v107;
  v77 = v108;
  v79 = v100;
  (*(v107 + 104))(v100, *v76, v108);
  v80 = v106;
  (*(v78 + 32))(v106, v79, v77);
  v81 = *&v8[v41];
  (*(v78 + 16))(v101, v80, v77);
  v82 = v81;
  [v82 setTextAlignment_];

  [*&v8[v41] setHorizontalPadding_];
  v83 = *&v8[v41];
  sub_27445B77C(v103, v83);

  sub_274412734(0, qword_28094A770, 0x277D75348);
  if (qword_280949280 != -1)
  {
    swift_once();
  }

  v84 = qword_280965DC8;
  v85 = objc_opt_self();
  v86 = v84;
  v87 = sub_2745D4F48(0xD000000000000015, 0x8000000274689B50, v84, [v85 currentTraitCollection]);
  v88 = v97;
  objc_opt_self();
  v89 = swift_dynamicCastObjCClass();
  v90 = *&v8[v41];
  if (v89 && v87)
  {
    [*&v8[v41] setTextColor_];
  }

  else
  {
    v91 = objc_opt_self();
    v92 = v90;
    v93 = [v91 wf_labelColor];
    [v92 setTextColor_];
  }

  if ((v104 & 1) != 0 && sub_274453594() && [*(v88 + v57) parameterCollapsingBehavior] != 2 && !*(v88 + OBJC_IVAR____TtC14WorkflowEditor15ActionViewModel_resourceError))
  {
    [*&v8[v41] setShowsDisclosureArrow_];
    [*&v8[v41] setDisclosureArrowIsOpen_];
  }

  else
  {
    [*&v8[v41] setShowsDisclosureArrow_];
    [*&v8[v41] setDisclosureArrowIsOpen_];
  }

  if (v105 && [v30 currentEditorIsEditing])
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_274638FAC();

    if (v116 == 2 && !(v111 | aBlock | v112 | v113 | v114 | v115))
    {
      [v30 cancelEditingWithCompletionHandler_];
    }

    else
    {
      sub_27443C9D4(aBlock, v111, v112, v113, v114, v115, v116);
    }

    v94 = v109;
  }

  else
  {

    v94 = v96;
  }

  return (*(v107 + 8))(v106, v108);
}

uint64_t sub_274459E94(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094BD50, &qword_2746475D0);
  v26 = sub_27463B4DC();
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_27463C23C();
    sub_274412734(0, qword_28094AE40, 0x277D7C6D8);
    sub_27445B7F8();
    sub_27463BA7C();
    a1 = v29;
    v2 = v30;
    v3 = v31;
    v4 = v32;
    v5 = v33;
  }

  else
  {
    v6 = -1 << *(a1 + 32);
    v2 = a1 + 56;
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

    v5 = v8 & *(a1 + 56);

    v4 = 0;
  }

  while (1)
  {
    if (a1 < 0)
    {
      if (!sub_27463C2BC() || (sub_274412734(0, qword_28094AE40, 0x277D7C6D8), swift_dynamicCast(), (v11 = v28) == 0))
      {
LABEL_26:
        sub_274406A24(a1);
        return v26;
      }

      goto LABEL_16;
    }

    v9 = v4;
    v10 = v5;
    if (!v5)
    {
      break;
    }

LABEL_12:
    v5 = (v10 - 1) & v10;
    v11 = *(*(a1 + 48) + ((v4 << 9) | (8 * __clz(__rbit64(v10)))));
    if (!v11)
    {
      goto LABEL_26;
    }

LABEL_16:
    sub_2744498C0(v11);
    swift_getObjectType();
    v12 = sub_2746385AC();
    if (v12)
    {
      v13 = v12;
      v14 = [v11 key];
      v25 = sub_27463B6AC();
      v16 = v15;

      swift_unknownObjectRetain();
      swift_isUniquelyReferenced_nonNull_native();
      v28 = v26;
      v24 = sub_274534C48(v25, v16);
      v27 = v17;
      if (__OFADD__(v28[2], (v17 & 1) == 0))
      {
        goto LABEL_28;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094BD58, &unk_27464C260);
      if (sub_27463C4CC())
      {
        v24 = sub_274534C48(v25, v16);
        if ((v27 & 1) != (v18 & 1))
        {
          goto LABEL_30;
        }

        if ((v27 & 1) == 0)
        {
          goto LABEL_24;
        }

LABEL_22:

        v26 = v28;
        *(v28[7] + 8 * v24) = v13;
        swift_unknownObjectRelease();

        swift_unknownObjectRelease();
      }

      else
      {
        if (v27)
        {
          goto LABEL_22;
        }

LABEL_24:
        v28[(v24 >> 6) + 8] |= 1 << v24;
        v19 = (v28[6] + 16 * v24);
        *v19 = v25;
        v19[1] = v16;
        *(v28[7] + 8 * v24) = v13;
        swift_unknownObjectRelease();

        v20 = v28[2];
        v21 = __OFADD__(v20, 1);
        v22 = v20 + 1;
        if (v21)
        {
          goto LABEL_29;
        }

        v26 = v28;
        v28[2] = v22;
      }
    }

    else
    {
    }
  }

  while (1)
  {
    v4 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v4 >= ((v3 + 64) >> 6))
    {
      goto LABEL_26;
    }

    v10 = *(v2 + 8 * v4);
    ++v9;
    if (v10)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  result = sub_27463C71C();
  __break(1u);
  return result;
}

void sub_27445A280(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v48 = a1;
  v49 = a2;
  v8 = sub_274638DAC();
  v41 = *(v8 - 8);
  v42 = v8;
  MEMORY[0x28223BE20](v8);
  v40 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = a3;
  v45 = a5;
  if ((a4 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_27463C23C();
    sub_274412734(0, qword_28094AE40, 0x277D7C6D8);
    sub_27445B7F8();
    sub_27463BA7C();
    a4 = v51[1];
    v10 = v51[2];
    v11 = v51[3];
    v12 = v51[4];
    v13 = v51[5];
  }

  else
  {
    v14 = -1 << *(a4 + 32);
    v10 = a4 + 56;
    v11 = ~v14;
    v15 = -v14;
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v13 = v16 & *(a4 + 56);

    v12 = 0;
  }

  v44 = v11;
  if ((a4 & 0x8000000000000000) == 0)
  {
    goto LABEL_11;
  }

LABEL_8:
  v17 = sub_27463C2BC();
  if (v17 && (v50 = v17, sub_274412734(0, qword_28094AE40, 0x277D7C6D8), swift_dynamicCast(), v18 = v51[0], v19 = v12, v20 = v13, v51[0]))
  {
    while (1)
    {
      v46 = v12;
      v47 = v13;
      v23 = v18;
      v24 = [v18 key];
      v25 = sub_27463B6AC();
      v27 = v26;

      if (v25 == v48 && v27 == v49)
      {

LABEL_29:
        sub_274406A24(a4);
        sub_2744498C0(v23);
        swift_getObjectType();
        swift_unknownObjectRetain();
        sub_2746385BC();

        goto LABEL_30;
      }

      v29 = sub_27463C6BC();

      if (v29)
      {
        goto LABEL_29;
      }

      v12 = v19;
      v13 = v20;
      if (a4 < 0)
      {
        goto LABEL_8;
      }

LABEL_11:
      v21 = v12;
      v22 = v13;
      v19 = v12;
      if (!v13)
      {
        break;
      }

LABEL_15:
      v20 = (v22 - 1) & v22;
      v18 = *(*(a4 + 48) + ((v19 << 9) | (8 * __clz(__rbit64(v22)))));
      if (!v18)
      {
        goto LABEL_23;
      }
    }

    while (1)
    {
      v19 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v19 >= ((v11 + 64) >> 6))
      {
        goto LABEL_23;
      }

      v22 = *(v10 + 8 * v19);
      ++v21;
      if (v22)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_23:
    sub_274406A24(a4);
    v30 = *(*(v45 + 32) + OBJC_IVAR____TtC14WorkflowEditor15ActionViewModel_action);
    v31 = v48;
    v32 = sub_27463B66C();
    v33 = [v30 parameterForKey_];

    if (v33)
    {
      sub_2744498C0(v33);
      swift_getObjectType();
      swift_unknownObjectRetain();
      sub_2746385BC();

LABEL_30:
    }

    else
    {
      v34 = v40;
      sub_274638C2C();

      v35 = sub_274638D9C();
      v36 = sub_27463BBFC();

      if (os_log_type_enabled(v35, v36))
      {
        v37 = swift_slowAlloc();
        v38 = swift_slowAlloc();
        v51[0] = v38;
        *v37 = 136315138;
        *(v37 + 4) = sub_2745E7980(v31, v49, v51);
        _os_log_impl(&dword_2743F0000, v35, v36, "Unable to update parameter state for key: %s, since action or parameter is missing", v37, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v38);
        MEMORY[0x277C5A270](v38, -1, -1);
        MEMORY[0x277C5A270](v37, -1, -1);
      }

      (*(v41 + 8))(v34, v42);
    }
  }
}

double sub_27445A744@<D0>(uint64_t a1@<X8>, double a2@<D0>)
{
  v5 = sub_274458E60();
  v6 = [v5 isHidden];

  v7 = 0.0;
  v8 = 0;
  v9 = 0;
  if ((v6 & 1) == 0)
  {
    v10 = sub_274458F80();
    [v10 horizontalPadding];
    v12 = v11;

    v7 = v12 + 3.0;
    [*&v2[OBJC_IVAR____TtC14WorkflowEditor21ActionCellSummaryView____lazy_storage___titleLabel] sizeThatFits_];
    v8 = v13;
    v9 = v14;
  }

  v15 = OUTLINED_FUNCTION_2_9() + 0.0;
  v16 = OUTLINED_FUNCTION_2_9();
  if (v16 <= 0.0)
  {
    v17 = v15;
  }

  else
  {
    v17 = v15 + 4.0;
  }

  if (v16 <= 0.0)
  {
    v18 = 0.0;
  }

  else
  {
    v18 = 4.0;
  }

  v19 = sub_274458F80();
  [v19 heightForWidth_];
  v21 = v20;

  v22 = [v2 traitCollection];
  [v22 displayScale];
  v24 = v23;

  *a1 = v7;
  *(a1 + 8) = 0;
  *(a1 + 16) = v8;
  *(a1 + 24) = v9;
  *(a1 + 32) = 0;
  *(a1 + 40) = v17;
  *(a1 + 48) = a2;
  result = v21 + 1.0 / v24;
  *(a1 + 56) = result;
  *(a1 + 64) = 0;
  *(a1 + 72) = v18;
  return result;
}

void sub_27445A8E8()
{
  swift_unknownObjectRelease();

  v1 = *(v0 + OBJC_IVAR____TtC14WorkflowEditor21ActionCellSummaryView____lazy_storage___templateView);
}

id sub_27445A938()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ActionCellSummaryView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_27445A9EC()
{
  [v0 setNeedsLayout];

  sub_274638F0C();
}

void sub_27445AABC(uint64_t a1, char a2)
{
  v3 = *(*(v2 + OBJC_IVAR____TtC14WorkflowEditor21ActionCellSummaryView_item) + 32);
  v3[OBJC_IVAR____TtC14WorkflowEditor15ActionViewModel_isExpanded] = a2;
  v4 = v3;
  sub_2745E8548();
}

void sub_27445ABD4(uint64_t a1, char a2)
{
  v4 = *(*(v2 + OBJC_IVAR____TtC14WorkflowEditor21ActionCellSummaryView_item) + 32);
  v5 = OBJC_IVAR____TtC14WorkflowEditor15ActionViewModel_showOutput;
  swift_beginAccess();
  v4[v5] = a2;
  v6 = v4;
  sub_2745E605C();
}

void sub_27445ACB0(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_getObjectType();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    swift_getAssociatedTypeWitness();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v11 = *(AssociatedConformanceWitness + 32);
    v12 = swift_checkMetadataState();
    v13 = v11(v12, AssociatedConformanceWitness);

    *&v14 = a2;
    *(&v14 + 1) = a1 & 1;
    v15 = a3;
    v16 = a4;
    v17 = 0;
    v18 = 0;
    v19 = 0;
    swift_unknownObjectRetain();

    sub_27443CA58(&v14);
  }
}

void sub_27445AE90(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = *(v7 + OBJC_IVAR____TtC14WorkflowEditor21ActionCellSummaryView_item);
  swift_getObjectType();
  v14 = *(*(v13 + 32) + OBJC_IVAR____TtC14WorkflowEditor15ActionViewModel_action);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v16 = Strong;
    v29 = a4;
    v30 = a7;
    v31 = a1;
    swift_getAssociatedTypeWitness();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v18 = *(AssociatedConformanceWitness + 32);
    v19 = v14;
    v20 = swift_checkMetadataState();
    v21 = v18(v20, AssociatedConformanceWitness);

    if (a6)
    {
      v22 = swift_allocObject();
      v24 = v30;
      v23 = v31;
      *(v22 + 16) = a6;
      *(v22 + 24) = v30;
      v25 = sub_27440CBD0;
    }

    else
    {
      v25 = CGSizeMake;
      v22 = 0;
      v24 = v30;
      v23 = v31;
    }

    v26 = swift_allocObject();
    *(v26 + 16) = v25;
    *(v26 + 24) = v22;
    *&v32 = v23;
    *(&v32 + 1) = v19;
    v33 = sub_27440CB74;
    v34 = v26;
    v35 = v29;
    v36 = a5;
    v37 = 1;
    v27 = v19;
    sub_2744069F0(a6, v24);

    v28 = v23;
    sub_27443CA58(&v32);
  }
}

void sub_27445B1BC(void *a1)
{
  v2 = v1;
  v4 = [a1 anchor];
  v5 = [a1 resultType];
  OUTLINED_FUNCTION_5();
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  OUTLINED_FUNCTION_5();
  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  objc_allocWithZone(WFVariableEditingOptions);
  v8 = a1;
  v30 = sub_2745AFA0C(v4, v5, sub_27445B5F8, v6, sub_27445B60C, v7);
  v9 = v2 + OBJC_IVAR____TtC14WorkflowEditor21ActionCellSummaryView_item;
  v10 = *(v2 + OBJC_IVAR____TtC14WorkflowEditor21ActionCellSummaryView_item + 8);
  swift_getObjectType();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v12 = Strong;
    v13 = OUTLINED_FUNCTION_4_8();
    OUTLINED_FUNCTION_3_10(v13, v14, v15, v16, &unk_27469346C);
    v17 = OUTLINED_FUNCTION_0_14();
    v18 = (unk_27469345C)(v17, v10);

    v19 = sub_27443C514();
    if (v19)
    {
      [v19 finishEditingReturningToKeyboard_];
    }
  }

  v20 = *(v9 + 8);
  swift_getObjectType();
  v21 = swift_unknownObjectWeakLoadStrong();
  v22 = v30;
  if (v21)
  {
    v23 = OUTLINED_FUNCTION_4_8();
    OUTLINED_FUNCTION_3_10(v23, v24, v25, v26, &unk_27469346C);
    v27 = OUTLINED_FUNCTION_0_14();
    v28 = (unk_27469345C)(v27, v20);

    v29 = v30;
    sub_27443C58C(v30);

    v22 = v30;
  }
}

void sub_27445B448(uint64_t a1, uint64_t a2)
{
  swift_getObjectType();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    swift_getAssociatedTypeWitness();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v7 = *(AssociatedConformanceWitness + 32);
    v8 = swift_checkMetadataState();
    v11 = v7(v8, AssociatedConformanceWitness);

    if (a2)
    {
      v9 = a1;
    }

    else
    {
      v9 = 0;
    }

    if (a2)
    {
      v10 = a2;
    }

    else
    {
      v10 = 0xE000000000000000;
    }

    sub_27443CE38(v9, v10);
  }
}

void sub_27445B634(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v7 = sub_27463B66C();
  sub_274412734(0, qword_28094AE40, 0x277D7C6D8);
  sub_27445B7F8();
  v8 = sub_27463BA3C();
  v9 = sub_27463BA3C();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094BD50, &qword_2746475D0);
  v10 = sub_27463B4BC();

  [a6 setSummaryFormatString:v7 withParameters:v8 editableParameters:v9 parameterStates:v10];
}

uint64_t block_copy_helper_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_27445B77C(uint64_t a1, void *a2)
{
  sub_274412734(0, &qword_280951020, 0x277D7D7A8);
  v3 = sub_27463B7FC();
  [a2 setExclusionRects_];
}

unint64_t sub_27445B7F8()
{
  result = qword_28094BD48;
  if (!qword_28094BD48)
  {
    sub_274412734(255, qword_28094AE40, 0x277D7C6D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094BD48);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_0_14()
{

  return swift_checkMetadataState();
}

CGFloat OUTLINED_FUNCTION_2_9()
{
  v4 = 0;
  v5 = v1;
  v6 = v2;
  v7 = v3;

  return CGRectGetHeight(*&v5);
}

uint64_t OUTLINED_FUNCTION_3_10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return swift_getAssociatedConformanceWitness();
}

uint64_t OUTLINED_FUNCTION_4_8()
{

  return swift_getAssociatedTypeWitness();
}

uint64_t sub_27445B8E8(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, unint64_t *a6)
{
  v22 = result;
  v6 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    goto LABEL_19;
  }

  if (v6)
  {
    v25 = MEMORY[0x277D84F90];
    sub_27463C44C();
    result = sub_274412734(0, &qword_28094BD80, 0x277D7D7B0);
    if (a2 < v22 || (v6 & 0x8000000000000000) != 0)
    {
      goto LABEL_20;
    }

    v8 = 0;
    while (v8 < v6)
    {
      v9 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        goto LABEL_17;
      }

      v10 = v22 + v8;
      v11 = sub_27444C12C(a5);
      v13 = v12;
      v14 = sub_27463B66C();

      v15 = sub_27444AEE4(a3, a4, v11, v13, v14);
      v16 = [v15 identifier];
      v17 = [v16 identifierBySettingArrayIndex_];

      [v15 setIdentifier_];
      if (*a6 >> 62)
      {
        v18 = sub_27463C27C();
      }

      else
      {
        v18 = *((*a6 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      [v15 setEnabled_];
      sub_27463C41C();
      sub_27463C46C();
      sub_27463C47C();
      result = sub_27463C42C();
      if (v10 >= a2)
      {
        goto LABEL_18;
      }

      ++v8;
      if (v9 == v6)
      {

        v19 = v25;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
    return result;
  }

  v19 = MEMORY[0x277D84F90];
LABEL_15:

  return v19;
}

void sub_27445BC50(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = a4 >> 1;
  v6 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    __break(1u);
    goto LABEL_12;
  }

  if (__OFADD__(sub_274453594(), v6))
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  sub_274547EA4();
  v8 = *v4;
  if (v5 == a3)
  {
    if (v6 <= 0)
    {
LABEL_10:
      swift_unknownObjectRelease();
      *v4 = v8;
      return;
    }

    __break(1u);
  }

  if ((*((v8 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1) - *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10) < v6)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  sub_274412734(0, &qword_28094E040, 0x277D7C098);
  swift_arrayInitWithCopy();
  if (v6 <= 0)
  {
    goto LABEL_10;
  }

  v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v10 = __OFADD__(v9, v6);
  v11 = v9 + v6;
  if (!v10)
  {
    *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10) = v11;
    goto LABEL_10;
  }

LABEL_14:
  __break(1u);
}

uint64_t sub_27445BD8C(uint64_t a1)
{
  v7 = v1;
  v9 = sub_2745A874C(a1);
  v10 = sub_274453594();
  v11 = __OFADD__(v10, v9);
  result = v10 + v9;
  if (v11)
  {
    __break(1u);
    goto LABEL_9;
  }

  sub_274547EA4();
  v2 = *v1;
  v3 = *v1 & 0xFFFFFFFFFFFFFF8;
  v13 = *(v3 + 0x10);
  v14 = (*(v3 + 0x18) >> 1) - v13;
  result = sub_27445EB24(&v51, (v3 + 8 * v13 + 32), (*((*v7 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1) - v13, a1, v15);
  if (result < v9)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (result >= 1)
  {
    v16 = *(v3 + 16);
    v11 = __OFADD__(v16, result);
    v17 = v16 + result;
    if (v11)
    {
      __break(1u);
      goto LABEL_14;
    }

    *(v3 + 16) = v17;
  }

  if (result != v14)
  {
LABEL_7:
    result = sub_274406A24(v51);
    *v7 = v2;
    return result;
  }

LABEL_10:
  v9 = *(v3 + 16);
  v3 = v51;
  v4 = v52;
  v6 = v54;
  v45 = v53;
  v5 = v55;
  if (v51 < 0)
  {
LABEL_14:
    v19 = sub_27463C2BC();
    if (!v19)
    {
      goto LABEL_7;
    }

    v48 = v19;
    v20 = type metadata accessor for WFEditorItem();
    OUTLINED_FUNCTION_15_3(v20, v21, v22, v23, v24, v25, v26, v27, v43, v45, v46, v48, v50);
    result = swift_dynamicCast();
    v28 = v50;
    goto LABEL_22;
  }

  if (v55)
  {
    v18 = v54;
LABEL_20:
    v29 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v28 = *(*(v51 + 48) + ((v18 << 9) | (8 * v29)));
  }

  else
  {
    while (1)
    {
      v18 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        goto LABEL_45;
      }

      if (v18 >= ((v53 + 64) >> 6))
      {
        break;
      }

      v5 = *(v52 + 8 * v18);
      ++v6;
      if (v5)
      {
        v6 = v18;
        goto LABEL_20;
      }
    }

    v28 = 0;
    v5 = 0;
  }

  v54 = v6;
  v55 = v5;
LABEL_22:
  if (!v28)
  {
    goto LABEL_7;
  }

  v30 = (v45 + 64) >> 6;
LABEL_24:
  if (v9 + 1 > *((v2 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    result = sub_27463B85C();
  }

  v2 = *v7;
  v31 = *((*v7 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1;
  v44 = *v7 & 0xFFFFFFFFFFFFFF8;
  v47 = v44 + 32;
  while (1)
  {
    if (v9 >= v31)
    {
      *(v44 + 16) = v9;
      goto LABEL_24;
    }

    *(v47 + 8 * v9++) = v28;
    if ((v3 & 0x8000000000000000) == 0)
    {
      break;
    }

    v34 = sub_27463C2BC();
    if (!v34)
    {
      goto LABEL_42;
    }

    v49 = v34;
    v35 = type metadata accessor for WFEditorItem();
    OUTLINED_FUNCTION_15_3(v35, v36, v37, v38, v39, v40, v41, v42, v44, v45, v47, v49, v50);
    result = swift_dynamicCast();
    v28 = v50;
LABEL_38:
    if (!v28)
    {
LABEL_42:
      *(v44 + 16) = v9;
      goto LABEL_7;
    }
  }

  if (v5)
  {
LABEL_34:
    v33 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v28 = *(*(v3 + 48) + ((v6 << 9) | (8 * v33)));

LABEL_35:
    v51 = v3;
    v52 = v4;
    v53 = v45;
    v54 = v6;
    v55 = v5;
    goto LABEL_38;
  }

  while (1)
  {
    v32 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      break;
    }

    if (v32 >= v30)
    {
      v28 = 0;
      v5 = 0;
      goto LABEL_35;
    }

    v5 = *(v4 + 8 * v32);
    ++v6;
    if (v5)
    {
      v6 = v32;
      goto LABEL_34;
    }
  }

  __break(1u);
LABEL_45:
  __break(1u);
  return result;
}