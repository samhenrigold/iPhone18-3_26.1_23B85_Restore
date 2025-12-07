uint64_t GetContactView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v30 = a1;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ABEC0, &unk_2669C7330);
  OUTLINED_FUNCTION_0();
  MEMORY[0x28223BE20](v1);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ABEC8, &unk_2669C7BC0);
  OUTLINED_FUNCTION_2();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  v7 = &v26 - v6;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ABED0, &qword_2669C7340);
  OUTLINED_FUNCTION_0();
  MEMORY[0x28223BE20](v8);
  v10 = &v26 - v9;
  v11 = sub_2669C5A14();
  OUTLINED_FUNCTION_2();
  v13 = v12;
  MEMORY[0x28223BE20](v14);
  v16 = &v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for GetContactView(0);
  OUTLINED_FUNCTION_0();
  MEMORY[0x28223BE20](v17);
  v19 = &v26 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26699A374();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v20 = *(v13 + 32);
    v27 = v11;
    v20(v16, v19, v11);
    sub_2669C59F4();
    v21 = sub_2669C5964();
    (*(v4 + 8))(v7, v2);
    *v10 = sub_2669C5F94();
    *(v10 + 1) = 0;
    v10[16] = 1;
    v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ABEF0, &qword_2669C7350);
    sub_2669982BC(v21, v16, &v10[*(v22 + 44)]);
    v23 = sub_2669C6084();

    v24 = &v10[*(v28 + 36)];
    *v24 = v23;
    *(v24 + 8) = xmmword_2669C7320;
    *(v24 + 24) = xmmword_2669C7320;
    v24[40] = 0;
    sub_26699A318();
    swift_storeEnumTagMultiPayload();
    sub_2669981BC();
    sub_2669C5FB4();
    sub_26699A428(v10, &qword_2800ABED0, &qword_2669C7340);
    return (*(v13 + 8))(v16, v27);
  }

  else
  {
    sub_26699A3D0(v19, type metadata accessor for GetContactView);
    swift_storeEnumTagMultiPayload();
    sub_2669981BC();
    return sub_2669C5FB4();
  }
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t type metadata accessor for GetContactView(uint64_t a1)
{
  result = qword_2800ABEF8;
  if (!qword_2800ABEF8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_2669981BC()
{
  result = qword_2800ABED8;
  if (!qword_2800ABED8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2800ABED0, &qword_2669C7340);
    sub_26699A174(&qword_2800ABEE0, &qword_2800ABEE8, &qword_2669C7348, MEMORY[0x277CE1198]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800ABED8);
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

uint64_t sub_2669982BC@<X0>(void *a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v153 = a2;
  v151 = a3;
  v148 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ABF80, &qword_2669C76E8);
  v4 = MEMORY[0x28223BE20](v148);
  v147 = &v120 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v146 = &v120 - v6;
  v144 = sub_2669C5A14();
  v143 = *(v144 - 8);
  MEMORY[0x28223BE20](v144);
  v142 = &v120 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v141 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ABEC8, &unk_2669C7BC0);
  v140 = *(v141 - 8);
  MEMORY[0x28223BE20](v141);
  v139 = &v120 - v8;
  ContactQuickActionButtonsView = type metadata accessor for GetContactQuickActionButtonsView(0);
  v9 = MEMORY[0x28223BE20](ContactQuickActionButtonsView);
  v150 = &v120 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v149 = (&v120 - v11);
  v137 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ABF88, &qword_2669C76F0);
  MEMORY[0x28223BE20](v137);
  v124 = &v120 - v12;
  v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ABF90, &qword_2669C76F8);
  v13 = MEMORY[0x28223BE20](v122);
  v123 = &v120 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v121 = &v120 - v16;
  MEMORY[0x28223BE20](v15);
  v152 = &v120 - v17;
  v135 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ABF98, &qword_2669C7700);
  MEMORY[0x28223BE20](v135);
  v136 = (&v120 - v18);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ABFA0, &qword_2669C7708);
  v20 = MEMORY[0x28223BE20](v19 - 8);
  v158 = &v120 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v160 = &v120 - v22;
  v126 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ABFA8, &qword_2669C7710);
  v23 = MEMORY[0x28223BE20](v126);
  v120 = &v120 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v26 = &v120 - v25;
  v130 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ABFB0, &qword_2669C7718);
  v129 = *(v130 - 8);
  MEMORY[0x28223BE20](v130);
  v125 = &v120 - v27;
  v128 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ABFB8, &qword_2669C7720);
  v28 = MEMORY[0x28223BE20](v128);
  v157 = &v120 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = MEMORY[0x28223BE20](v28);
  v127 = &v120 - v31;
  MEMORY[0x28223BE20](v30);
  v159 = &v120 - v32;
  v33 = sub_2669C5844();
  MEMORY[0x28223BE20](v33 - 8);
  v34 = sub_2669C6454();
  v35 = *(v34 - 8);
  MEMORY[0x28223BE20](v34);
  v37 = &v120 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v156 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ABFC0, &qword_2669C7728);
  v138 = *(v156 - 8);
  v38 = MEMORY[0x28223BE20](v156);
  v155 = &v120 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v38);
  v41 = &v120 - v40;
  v42 = [a1 identifier];
  sub_2669C6654();

  sub_2669C5834();

  sub_2669C6464();
  sub_266999D28(&qword_2800ABFC8, MEMORY[0x277D63B20], MEMORY[0x277D63B08]);
  v154 = v41;
  sub_2669C6254();
  (*(v35 + 8))(v37, v34);
  sub_2669C63F4();
  sub_2669C5DB4();
  v134 = v164;
  v133 = v166;
  v132 = v168;
  v131 = v169;
  v177 = 1;
  v176 = v165;
  v175 = v167;
  v170 = sub_2669C6924();
  v171 = v43;
  sub_266999FC4(v170, v43, v44);
  v45 = sub_2669C6164();
  v47 = v46;
  v170 = v45;
  v171 = v46;
  v49 = v48 & 1;
  LOBYTE(v172) = v48 & 1;
  v173 = v50;
  sub_2669C6254();
  v51 = v47;
  v52 = v125;
  v53 = v49;
  v54 = v126;
  sub_26699A018(v45, v51, v53);

  v55 = sub_2669C60D4();
  KeyPath = swift_getKeyPath();
  v57 = &v26[*(v54 + 36)];
  *v57 = KeyPath;
  v57[1] = v55;
  sub_2669C60B4();
  sub_26699A030();
  sub_2669C61F4();
  sub_26699A428(v26, &qword_2800ABFA8, &qword_2669C7710);
  v58 = v153;
  if (sub_2669C59D4())
  {
    v59 = sub_2669C62D4();
  }

  else
  {
    v59 = sub_2669C62C4();
  }

  v60 = v59;
  v61 = v127;
  (*(v129 + 32))(v127, v52, v130);
  *&v61[*(v128 + 36)] = v60;
  sub_26699A118();
  v62 = [a1 organizationName];
  v63 = sub_2669C6654();
  v65 = v64;

  v66 = HIBYTE(v65) & 0xF;
  if ((v65 & 0x2000000000000000) == 0)
  {
    v66 = v63 & 0xFFFFFFFFFFFFLL;
  }

  if (v66)
  {
    v67 = [a1 organizationName];
    v68 = sub_2669C6654();
    v70 = v69;

    v170 = v68;
    v171 = v70;
    v71 = sub_2669C6164();
    v73 = v72;
    v170 = v71;
    v171 = v72;
    v75 = v74 & 1;
    LOBYTE(v172) = v74 & 1;
    v173 = v76;
    v77 = v120;
    sub_2669C6254();
    sub_26699A018(v71, v73, v75);

    v78 = sub_2669C6094();
    v79 = swift_getKeyPath();
    v80 = &v77[*(v54 + 36)];
    *v80 = v79;
    v80[1] = v78;
    if (sub_2669C59D4())
    {
      v81 = sub_2669C62D4();
    }

    else
    {
      v81 = sub_2669C62C4();
    }

    v87 = v81;
    v88 = v121;
    sub_26699A118();
    *&v88[*(v122 + 36)] = v87;
    sub_26699A118();
    sub_2669C63F4();
    sub_2669C5DB4();
    v130 = v170;
    v89 = v172;
    v90 = v174;
    v163 = 1;
    v162 = v171;
    v161 = v173;
    v91 = v123;
    sub_26699A318();
    v92 = v163;
    v93 = v162;
    v94 = v161;
    v95 = v124;
    sub_26699A318();
    v96 = v95 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ABFF0, &qword_2669C7768) + 48);
    *v96 = 0;
    *(v96 + 8) = v92;
    *(v96 + 16) = v130;
    *(v96 + 24) = v93;
    *(v96 + 32) = v89;
    *(v96 + 40) = v94;
    *(v96 + 48) = v90;
    sub_26699A428(v91, &qword_2800ABF90, &qword_2669C76F8);
    sub_26699A318();
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ABFF8, &qword_2669C7770);
    sub_26699A174(&qword_2800AC000, &qword_2800ABF88, &qword_2669C76F0, MEMORY[0x277CE14C0]);
    sub_26699A1BC();
    sub_2669C5FB4();
    sub_26699A428(v95, &qword_2800ABF88, &qword_2669C76F0);
    sub_26699A428(v152, &qword_2800ABF90, &qword_2669C76F8);
    v58 = v153;
  }

  else
  {
    sub_2669C63F4();
    sub_2669C5DB4();
    v82 = v170;
    v83 = v171;
    v84 = v172;
    v85 = v173;
    v163 = 1;
    v162 = v171;
    v161 = v173;
    v86 = v136;
    *v136 = 0;
    *(v86 + 8) = 1;
    v86[2] = v82;
    *(v86 + 24) = v83;
    v86[4] = v84;
    *(v86 + 40) = v85;
    *(v86 + 3) = v174;
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ABFF8, &qword_2669C7770);
    sub_26699A174(&qword_2800AC000, &qword_2800ABF88, &qword_2669C76F0, MEMORY[0x277CE14C0]);
    sub_26699A1BC();
    sub_2669C5FB4();
  }

  v97 = v139;
  sub_2669C59F4();
  v98 = v141;
  v99 = sub_2669C5964();
  (*(v140 + 8))(v97, v98);
  type metadata accessor for GetContactQuickActionButtonsViewModel(0);
  (*(v143 + 16))(v142, v58, v144);
  sub_2669BBC20();
  sub_2669C65D4();
  sub_266999D28(&qword_2800AC010, MEMORY[0x277D63F60], MEMORY[0x277D63F50]);
  v100 = sub_2669C5E84();
  v101 = v149;
  *v149 = v100;
  *(v101 + 8) = v102;
  v103 = ContactQuickActionButtonsView;
  v104 = sub_2669C5954();
  v105 = v146;
  __swift_storeEnumTagSinglePayload(v146, 1, 1, v104);
  sub_26699A240(v105, v147);
  sub_2669C6334();
  sub_26699A2B0(v105);
  *(v101 + *(v103 + 24)) = v99;
  v106 = (v101 + *(v103 + 28));
  sub_266999D28(&qword_2800AC018, type metadata accessor for GetContactQuickActionButtonsViewModel, &unk_2669C8A20);
  *v106 = sub_2669C5E24();
  v106[1] = v107;
  v108 = v138;
  v109 = *(v138 + 16);
  v110 = v155;
  v111 = v156;
  v109(v155, v154, v156);
  LODWORD(v148) = v177;
  LODWORD(v152) = v176;
  LODWORD(v153) = v175;
  sub_26699A318();
  sub_26699A318();
  v112 = v150;
  sub_26699A374();
  v113 = v151;
  v109(v151, v110, v111);
  v114 = &v113[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AC020, &qword_2669C7778) + 48)];
  *v114 = 0;
  v114[8] = v148;
  *(v114 + 2) = v134;
  v114[24] = v152;
  *(v114 + 4) = v133;
  v114[40] = v153;
  v115 = v131;
  *(v114 + 6) = v132;
  *(v114 + 7) = v115;
  sub_26699A318();
  v116 = v158;
  sub_26699A318();
  sub_26699A374();
  sub_26699A3D0(v101, type metadata accessor for GetContactQuickActionButtonsView);
  sub_26699A428(v160, &qword_2800ABFA0, &qword_2669C7708);
  sub_26699A428(v159, &qword_2800ABFB8, &qword_2669C7720);
  v117 = *(v108 + 8);
  v118 = v156;
  v117(v154, v156);
  sub_26699A3D0(v112, type metadata accessor for GetContactQuickActionButtonsView);
  sub_26699A428(v116, &qword_2800ABFA0, &qword_2669C7708);
  sub_26699A428(v157, &qword_2800ABFB8, &qword_2669C7720);
  return (v117)(v155, v118);
}

uint64_t sub_2669995C4(uint64_t a1)
{
  result = sub_2669C5A14();
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_266999628()
{
  result = qword_2800ABF08;
  if (!qword_2800ABF08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2800ABF10, &qword_2669C73D8);
    sub_2669981BC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800ABF08);
  }

  return result;
}

uint64_t sub_2669996E0(uint64_t a1, uint64_t a2)
{
  v2 = sub_2669C6654();
  v4 = v3;
  if (v2 == sub_2669C6654() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_2669C6A94();
  }

  return v7 & 1;
}

uint64_t sub_2669997F4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), unint64_t *a4, uint64_t (*a5)(uint64_t), uint64_t a6)
{
  a3(0);
  sub_266999D28(a4, a5, a6);
  sub_2669C6734();
  sub_2669C6734();
  if (v14 == v12 && v15 == v13)
  {
    v10 = 1;
  }

  else
  {
    v10 = sub_2669C6A94();
  }

  return v10 & 1;
}

uint64_t sub_2669998D4()
{
  OUTLINED_FUNCTION_1();

  result = sub_2669C6634();
  *v0 = 0;
  return result;
}

uint64_t sub_266999948()
{
  OUTLINED_FUNCTION_1();

  v2 = sub_2669C6644();
  *v0 = 0;
  return v2 & 1;
}

uint64_t sub_2669999C4(uint64_t a1)
{
  sub_2669C6654();
  v1 = sub_2669C6624();

  return v1;
}

uint64_t sub_2669999FC(uint64_t a1)
{
  v1 = sub_2669C6654();
  v2 = MEMORY[0x26D5E43D0](v1);

  return v2;
}

uint64_t sub_266999A34(uint64_t a1, uint64_t a2)
{
  sub_2669C6654();
  sub_2669C66F4();
}

uint64_t sub_266999A8C(uint64_t a1, uint64_t a2)
{
  sub_2669C6654();
  sub_2669C6AC4();
  sub_2669C66F4();
  v2 = sub_2669C6AD4();

  return v2;
}

uint64_t sub_266999B90@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_2669999C4(a1);
  *a2 = result;
  return result;
}

uint64_t sub_266999BDC(uint64_t a1)
{
  v2 = sub_266999D28(&qword_2800ABF60, type metadata accessor for VNImageOption, &unk_2669C76A0);
  v3 = sub_266999D28(&qword_2800ABF68, type metadata accessor for VNImageOption, &unk_2669C74B4);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_266999D28(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_266999D74@<X0>(uint64_t *a2@<X8>)
{
  v3 = sub_2669C6624();

  *a2 = v3;
  return result;
}

uint64_t sub_266999DBC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2669998CC(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_266999DE8(uint64_t a1)
{
  v2 = sub_266999D28(&qword_2800ACAB0, type metadata accessor for CNActionType, &unk_2669C7618);
  v3 = sub_266999D28(&qword_2800ABF58, type metadata accessor for CNActionType, &unk_2669C75C0);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

unint64_t sub_266999FC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_2800ABFD0;
  if (!qword_2800ABFD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800ABFD0);
  }

  return result;
}

uint64_t sub_26699A018(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

unint64_t sub_26699A030()
{
  result = qword_2800ABFD8;
  if (!qword_2800ABFD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2800ABFA8, &qword_2669C7710);
    swift_getOpaqueTypeConformance2();
    sub_26699A174(&qword_2800ABFE0, &qword_2800ABFE8, &qword_2669C7760, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800ABFD8);
  }

  return result;
}

uint64_t sub_26699A118()
{
  OUTLINED_FUNCTION_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_0();
  (*(v4 + 32))(v0, v1);
  return v0;
}

uint64_t sub_26699A174(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
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

unint64_t sub_26699A1BC()
{
  result = qword_2800AC008;
  if (!qword_2800AC008)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2800ABFF8, &qword_2669C7770);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800AC008);
  }

  return result;
}

uint64_t sub_26699A240(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ABF80, &qword_2669C76E8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26699A2B0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ABF80, &qword_2669C76E8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_26699A318()
{
  OUTLINED_FUNCTION_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_0();
  (*(v4 + 16))(v0, v1);
  return v0;
}

uint64_t sub_26699A374()
{
  OUTLINED_FUNCTION_1();
  v2(0);
  OUTLINED_FUNCTION_0();
  (*(v3 + 16))(v0, v1);
  return v0;
}

uint64_t sub_26699A3D0(uint64_t a1, uint64_t (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_0();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_26699A428(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_0();
  (*(v4 + 8))(a1);
  return a1;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_26699A490(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_26699A4B0(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 16) = v3;
  return result;
}

void sub_26699A4EC(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v5)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

uint64_t sub_26699A5AC()
{
  v0 = sub_2669C5A44();
  OUTLINED_FUNCTION_2();
  v2 = v1;
  v4 = MEMORY[0x28223BE20](v3);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v26 - v7;
  v9 = sub_2669C5A94();
  OUTLINED_FUNCTION_2();
  v11 = v10;
  v13 = MEMORY[0x28223BE20](v12);
  v15 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v26 - v16;
  if (sub_2669C5AB4())
  {
    result = MEMORY[0x26D5E3750]();
    if (!*(result + 16))
    {
      __break(1u);
      goto LABEL_10;
    }

    v29 = v15;
    v19 = *(v11 + 16);
    v27 = (*(v11 + 80) + 32) & ~*(v11 + 80);
    v28 = v19;
    v19(v17, result + v27, v9);

    sub_2669C5A84();
    v26 = *(v11 + 8);
    v26(v17, v9);
    (*(v2 + 104))(v6, *MEMORY[0x277D55A68], v0);
    v20 = sub_266999764(v8, v6);
    v21 = *(v2 + 8);
    v21(v6, v0);
    v22 = (v21)(v8, v0);
    if (v20)
    {
      result = MEMORY[0x26D5E3750](v22);
      if (*(result + 16))
      {
        v23 = v29;
        v28(v29, result + v27, v9);

        sub_2669C5A64();
        v25 = v24;
        v26(v23, v9);
        if (v25)
        {

          return 1;
        }

        return 0;
      }

LABEL_10:
      __break(1u);
      return result;
    }
  }

  return 0;
}

uint64_t sub_26699A870()
{
  if ((sub_26699A920() & 1) == 0)
  {
    return sub_2669C66D4();
  }

  v0 = sub_2669C5A64();
  if (v1)
  {
    MEMORY[0x26D5E43B0](v0);
  }

  v2 = sub_2669C5A54();
  if (v3)
  {
    MEMORY[0x26D5E43B0](v2);

    MEMORY[0x26D5E43B0](8236, 0xE200000000000000);
  }

  return 0;
}

uint64_t sub_26699A920()
{
  v0 = sub_2669C5A44();
  OUTLINED_FUNCTION_2();
  v2 = v1;
  MEMORY[0x28223BE20](v3);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2669C5A84();
  v6 = (*(v2 + 88))(v5, v0);
  if (v6 == *MEMORY[0x277D55A70] || v6 == *MEMORY[0x277D55A58] || v6 == *MEMORY[0x277D55A60])
  {
    sub_2669C5A64();
    v9 = sub_2669C6984();

    if (v9)
    {
      sub_2669C5A54();
      v10 = sub_2669C6984();

      v11 = v10 ^ 1;
    }

    else
    {
      v11 = 1;
    }
  }

  else
  {
    (*(v2 + 8))(v5, v0);
    v11 = 0;
  }

  return v11 & 1;
}

uint64_t sub_26699AA84(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AC030, qword_2669C77F0);
    if (*(*(v9 - 8) + 84) == a2)
    {
      v10 = v9;
      v11 = *(a3 + 20);
    }

    else
    {
      v10 = sub_2669C5C14();
      v11 = *(a3 + 24);
    }

    return __swift_getEnumTagSinglePayload(a1 + v11, a2, v10);
  }
}

void *sub_26699AB7C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *result = a2;
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AC030, qword_2669C77F0);
    if (*(*(v8 - 8) + 84) == a3)
    {
      v9 = v8;
      v10 = *(a4 + 20);
    }

    else
    {
      v9 = sub_2669C5C14();
      v10 = *(a4 + 24);
    }

    return __swift_storeEnumTagSinglePayload(v5 + v10, a2, a2, v9);
  }

  return result;
}

uint64_t type metadata accessor for ModifyContactAttributeIntentHandledView(uint64_t a1)
{
  result = qword_2800AC038;
  if (!qword_2800AC038)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_26699AC9C(uint64_t a1)
{
  sub_26699AD38(319);
  if (v1 <= 0x3F)
  {
    sub_26699ADCC(319);
    if (v2 <= 0x3F)
    {
      sub_2669C5C14();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_26699AD38(uint64_t a1)
{
  if (!qword_2800AC048)
  {
    sub_2669C65D4();
    sub_26699C024(&qword_2800AC010, MEMORY[0x277D63F60], MEMORY[0x277D63F50]);
    v1 = sub_2669C5E94();
    if (!v2)
    {
      atomic_store(v1, &qword_2800AC048);
    }
  }
}

void sub_26699ADCC(uint64_t a1)
{
  if (!qword_2800AC050)
  {
    sub_2669C5D44();
    v1 = sub_2669C5D54();
    if (!v2)
    {
      atomic_store(v1, &qword_2800AC050);
    }
  }
}

void sub_26699AE44(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 == 15)
  {
    if (qword_2800ABEB8 != -1)
    {
      OUTLINED_FUNCTION_1_0(&qword_2800ABEB8);
    }

    v2 = sub_2669C5C94();
    __swift_project_value_buffer(v2, qword_2800ACC88);
    oslog = sub_2669C5C74();
    v3 = sub_2669C6864();
    if (os_log_type_enabled(oslog, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&dword_266996000, oslog, v3, "#SiriContactsActionableView could not obtain direct invocation for view press", v4, 2u);
      MEMORY[0x26D5E4D50](v4, -1, -1);
    }

LABEL_15:

    return;
  }

  sub_26699BEF0();
  v5 = OUTLINED_FUNCTION_3();
  sub_26699BF34(v5, v6);
  OUTLINED_FUNCTION_3();
  v7 = sub_2669C6844();
  if (!v7)
  {
    if (qword_2800ABEB8 != -1)
    {
      OUTLINED_FUNCTION_1_0(&qword_2800ABEB8);
    }

    v11 = sub_2669C5C94();
    __swift_project_value_buffer(v11, qword_2800ACC88);
    oslog = sub_2669C5C74();
    v12 = sub_2669C6864();
    if (os_log_type_enabled(oslog, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_266996000, oslog, v12, "#SiriContactsActionableView could not convert direct invocation to actionable command", v13, 2u);
      MEMORY[0x26D5E4D50](v13, -1, -1);
    }

    v14 = OUTLINED_FUNCTION_3();
    sub_26699BE4C(v14, v15);
    goto LABEL_15;
  }

  v8 = v7;
  sub_2669C65C4();

  v9 = OUTLINED_FUNCTION_3();

  sub_26699BE4C(v9, v10);
}

uint64_t sub_26699B04C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v20 = a1;
  v3 = type metadata accessor for ModifyContactAttributeIntentHandledView(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AC058, &qword_2669C7898);
  v7 = *(v6 - 8);
  v18 = v6;
  v19 = v7;
  MEMORY[0x28223BE20](v6);
  v9 = &v17 - v8;
  sub_26699C06C(v2, &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ModifyContactAttributeIntentHandledView);
  v10 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v11 = swift_allocObject();
  sub_26699BBC4(&v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v11 + v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AC068, &qword_2669C78A8);
  sub_26699A174(&qword_2800AC070, &qword_2800AC068, &qword_2669C78A8, MEMORY[0x277CE14C0]);
  sub_2669C6484();
  sub_26699C06C(v17, &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ModifyContactAttributeIntentHandledView);
  v12 = swift_allocObject();
  sub_26699BBC4(&v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v12 + v10);
  OUTLINED_FUNCTION_0_0();
  sub_26699A174(v13, &qword_2800AC058, &qword_2669C7898, v14);
  v15 = v18;
  sub_2669C6234();

  return (*(v19 + 8))(v9, v15);
}

uint64_t sub_26699B2F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v59[0] = a1;
  v77 = a2;
  v3 = sub_2669C5814();
  v75 = *(v3 - 8);
  v76 = v3;
  MEMORY[0x28223BE20](v3);
  v70 = v59 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_2669C6504();
  v65 = *(v5 - 8);
  v66 = v5;
  MEMORY[0x28223BE20](v5);
  v64 = v59 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = sub_2669C6524();
  v71 = *(v68 - 8);
  MEMORY[0x28223BE20](v68);
  v61 = v59 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AC088, &qword_2669C78B0);
  v74 = *(v72 - 8);
  MEMORY[0x28223BE20](v72);
  v62 = v59 - v8;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AC090, &qword_2669C78B8);
  v69 = *(v73 - 8);
  v9 = MEMORY[0x28223BE20](v73);
  v67 = v59 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v63 = v59 - v11;
  v12 = sub_2669C60E4();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = v59 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for ModifyContactAttributeBodyView(0);
  v17 = v16 - 8;
  v18 = MEMORY[0x28223BE20](v16);
  v60 = v59 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v21 = (v59 - v20);
  v22 = *(type metadata accessor for ModifyContactAttributeIntentHandledView(0) + 24);
  v59[1] = v22;
  v23 = *(v17 + 36);
  v24 = sub_2669C5C14();
  (*(*(v24 - 8) + 16))(v21 + v23, a1 + v22, v24);
  sub_2669C65D4();
  sub_26699C024(&qword_2800AC010, MEMORY[0x277D63F60], MEMORY[0x277D63F50]);
  *v21 = sub_2669C5E84();
  v21[1] = v25;
  v78 = 0x402E000000000000;
  v26 = *MEMORY[0x277CE0A68];
  v27 = *(v13 + 104);
  v28 = v27(v15, v26, v12);
  sub_26699BF8C(v28, v29, v30);
  sub_2669C5D84();
  v78 = 0x4031000000000000;
  v27(v15, v26, v12);
  sub_2669C5D84();
  v78 = sub_2669BB230();
  v79 = v31;
  sub_266999FC4(v78, v31, v32);
  v33 = sub_2669C6164();
  v35 = v34;
  LOBYTE(v17) = v36;
  v38 = v37;
  v80 = MEMORY[0x277CE0BD8];
  v81 = MEMORY[0x277D638E8];
  v39 = swift_allocObject();
  v78 = v39;
  *(v39 + 16) = v33;
  *(v39 + 24) = v35;
  *(v39 + 32) = v17 & 1;
  *(v39 + 40) = v38;
  (*(v65 + 104))(v64, *MEMORY[0x277D63D60], v66);
  v40 = v61;
  sub_2669C6514();
  v42 = v75;
  v41 = v76;
  v43 = v70;
  (*(v75 + 104))(v70, *MEMORY[0x277D62F38], v76);
  v44 = sub_26699C024(&qword_2800AC0A0, MEMORY[0x277D63D80], MEMORY[0x277D63D48]);
  v45 = v62;
  v46 = v68;
  sub_2669C6194();
  (*(v42 + 8))(v43, v41);
  (*(v71 + 8))(v40, v46);
  v78 = v46;
  v79 = v44;
  swift_getOpaqueTypeConformance2();
  v47 = v63;
  v48 = v72;
  sub_2669C61A4();
  (*(v74 + 8))(v45, v48);
  v49 = v60;
  sub_26699C06C(v21, v60, type metadata accessor for ModifyContactAttributeBodyView);
  v50 = v69;
  v51 = *(v69 + 16);
  v52 = v67;
  v53 = v47;
  v54 = v73;
  v51(v67, v47, v73);
  v55 = v77;
  sub_26699C06C(v49, v77, type metadata accessor for ModifyContactAttributeBodyView);
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AC0A8, &unk_2669C78C0);
  v51((v55 + *(v56 + 48)), v52, v54);
  v57 = *(v50 + 8);
  v57(v53, v54);
  sub_26699C0CC(v21);
  v57(v52, v54);
  return sub_26699C0CC(v49);
}

uint64_t sub_26699BAD4(id *a1)
{
  type metadata accessor for ModifyContactAttributeIntentHandledView(0);
  v2 = sub_2669C5B84();
  if (*a1)
  {
    v4 = v2;
    v5 = v3;
    v6 = *a1;
    sub_26699AE44(v4, v5);

    return sub_26699BE4C(v4, v5);
  }

  else
  {
    sub_2669C65D4();
    sub_26699C024(&qword_2800AC010, MEMORY[0x277D63F60], MEMORY[0x277D63F50]);
    result = sub_2669C5E74();
    __break(1u);
  }

  return result;
}

uint64_t sub_26699BBC4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ModifyContactAttributeIntentHandledView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_26699BC28@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ModifyContactAttributeIntentHandledView(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_26699B2F4(v4, a1);
}

uint64_t objectdestroyTm()
{
  v1 = type metadata accessor for ModifyContactAttributeIntentHandledView(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = v0 + v3;

  v6 = *(v1 + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AC060, &qword_2669C78A0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_2669C5D44();
    OUTLINED_FUNCTION_0();
    (*(v7 + 8))(v5 + v6);
  }

  else
  {
  }

  v8 = *(v1 + 24);
  sub_2669C5C14();
  OUTLINED_FUNCTION_0();
  (*(v9 + 8))(v5 + v8);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_26699BDEC()
{
  v1 = *(type metadata accessor for ModifyContactAttributeIntentHandledView(0) - 8);
  v2 = (v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80)));

  return sub_26699BAD4(v2);
}

uint64_t sub_26699BE4C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_26699BE60(a1, a2);
  }

  return a1;
}

uint64_t sub_26699BE60(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v2;
    }
  }
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

unint64_t sub_26699BEF0()
{
  result = qword_2800AC080;
  if (!qword_2800AC080)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800AC080);
  }

  return result;
}

void sub_26699BF34(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return;
    }
  }
}

unint64_t sub_26699BF8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_2800AC098;
  if (!qword_2800AC098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800AC098);
  }

  return result;
}

uint64_t sub_26699BFE0()
{
  sub_26699A018(*(v0 + 16), *(v0 + 24), *(v0 + 32));

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_26699C024(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_26699C06C(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_0();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_26699C0CC(uint64_t a1)
{
  v2 = type metadata accessor for ModifyContactAttributeBodyView(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_26699C128()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2800AC058, &qword_2669C7898);
  OUTLINED_FUNCTION_0_0();
  sub_26699A174(v0, &qword_2800AC058, &qword_2669C7898, v1);
  return swift_getOpaqueTypeConformance2();
}

uint64_t OUTLINED_FUNCTION_1_0(uint64_t a1)
{

  return swift_once();
}

uint64_t sub_26699C21C(uint64_t a1)
{
  sub_2669C5D44();
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_1_1();
  (*(v5 + 16))(v4 - v3, a1);
  return sub_2669C5EB4();
}

uint64_t ModifyContactAttributeView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v49[2] = a1;
  v50 = type metadata accessor for ModifyContactAttributeIntentHandledView(0);
  OUTLINED_FUNCTION_0();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_1_1();
  v5 = (v4 - v3);
  v49[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AC0B0, &qword_2669C78D0);
  OUTLINED_FUNCTION_0();
  MEMORY[0x28223BE20](v6);
  v8 = v49 - v7;
  v9 = type metadata accessor for ModifyContactAttributeConfirmationView(0);
  OUTLINED_FUNCTION_0();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_1_1();
  v13 = (v12 - v11);
  v14 = sub_2669C5C14();
  OUTLINED_FUNCTION_2();
  v16 = v15;
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_1_1();
  v20 = v19 - v18;
  type metadata accessor for ModifyContactAttributeView(0);
  OUTLINED_FUNCTION_0();
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_1_1();
  v24 = v23 - v22;
  sub_26699C850(v1, v23 - v22, type metadata accessor for ModifyContactAttributeView);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  (*(v16 + 32))(v20, v24, v14);
  v26 = *(v16 + 16);
  if (EnumCaseMultiPayload == 1)
  {
    v27 = v50;
    v26(v5 + *(v50 + 24), v20, v14);
    sub_2669C65D4();
    OUTLINED_FUNCTION_2_0();
    sub_26699C808(v28, v29, MEMORY[0x277D63F50]);
    *v5 = sub_2669C5E84();
    v5[1] = v30;
    v31 = *(v27 + 20);
    *(v5 + v31) = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AC060, &qword_2669C78A0);
    swift_storeEnumTagMultiPayload();
    sub_26699C850(v5, v8, type metadata accessor for ModifyContactAttributeIntentHandledView);
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_4();
    sub_26699C808(v32, v33, &unk_2669C8608);
    OUTLINED_FUNCTION_3_0();
    sub_26699C808(v34, v35, &unk_2669C7848);
    sub_2669C5FB4();
    v36 = type metadata accessor for ModifyContactAttributeIntentHandledView;
    v37 = v5;
  }

  else
  {
    v26(v13 + *(v9 + 24), v20, v14);
    sub_2669C65D4();
    OUTLINED_FUNCTION_2_0();
    sub_26699C808(v38, v39, MEMORY[0x277D63F50]);
    v40 = sub_2669C5E84();
    v42 = v41;
    *v13 = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AC060, &qword_2669C78A0);
    swift_storeEnumTagMultiPayload();
    v43 = (v13 + *(v9 + 20));
    *v43 = v40;
    v43[1] = v42;
    sub_26699C850(v13, v8, type metadata accessor for ModifyContactAttributeConfirmationView);
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_4();
    sub_26699C808(v44, v45, &unk_2669C8608);
    OUTLINED_FUNCTION_3_0();
    sub_26699C808(v46, v47, &unk_2669C7848);
    sub_2669C5FB4();
    v36 = type metadata accessor for ModifyContactAttributeConfirmationView;
    v37 = v13;
  }

  sub_26699C8B0(v37, v36);
  return (*(v16 + 8))(v20, v14);
}

uint64_t type metadata accessor for ModifyContactAttributeView(uint64_t a1)
{
  result = qword_2800AC0C8;
  if (!qword_2800AC0C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_26699C808(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_26699C850(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_0();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_26699C8B0(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_0();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_26699C928(uint64_t a1)
{
  result = sub_2669C5C14();
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_26699C98C()
{
  result = qword_2800AC0D8;
  if (!qword_2800AC0D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2800AC0E0, &qword_2669C79A8);
    sub_26699C808(&qword_2800AC0B8, type metadata accessor for ModifyContactAttributeConfirmationView, &unk_2669C8608);
    sub_26699C808(&qword_2800AC0C0, type metadata accessor for ModifyContactAttributeIntentHandledView, &unk_2669C7848);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800AC0D8);
  }

  return result;
}

uint64_t static ContactsFlowImageColorGenerator.colors(for:)(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 == 15)
  {
    if (qword_2800ABEB8 != -1)
    {
      OUTLINED_FUNCTION_1_0(&qword_2800ABEB8);
    }

    v2 = sub_2669C5C94();
    __swift_project_value_buffer(v2, qword_2800ACC88);
    v3 = sub_2669C5C74();
    v4 = sub_2669C6854();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = OUTLINED_FUNCTION_7();
      *v5 = 0;
      _os_log_impl(&dword_266996000, v3, v4, "ContactsFlowImageColorGenerator no imageData, falling back to default color set", v5, 2u);
      OUTLINED_FUNCTION_4_0();
    }

    return sub_26699CC0C();
  }

  else
  {
    sub_26699F8F0(0, &qword_2800AC0E8, 0x277D755B8);
    v7 = OUTLINED_FUNCTION_3();
    sub_26699EF8C(v7, v8);
    v9 = OUTLINED_FUNCTION_3();
    sub_26699BF34(v9, v10);
    v11 = OUTLINED_FUNCTION_3();
    v13 = sub_26699CE00(v11, v12);
    v14 = sub_26699CE78(v13);

    v15 = OUTLINED_FUNCTION_3();
    sub_26699BE4C(v15, v16);
    return v14;
  }
}

uint64_t sub_26699CC0C()
{
  v0 = sub_2669C6284();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AC120, &qword_2669C7AD8);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_2669C79B0;
  v3 = *(v1 + 104);
  v4 = OUTLINED_FUNCTION_1_2();
  v3(v4);
  OUTLINED_FUNCTION_3_1();
  *(v2 + 32) = sub_2669C62F4();
  v5 = OUTLINED_FUNCTION_1_2();
  v3(v5);
  OUTLINED_FUNCTION_3_1();
  *(v2 + 40) = sub_2669C62F4();
  v6 = OUTLINED_FUNCTION_1_2();
  v3(v6);
  OUTLINED_FUNCTION_3_1();
  *(v2 + 48) = sub_2669C62F4();
  v7 = OUTLINED_FUNCTION_1_2();
  v3(v7);
  OUTLINED_FUNCTION_3_1();
  *(v2 + 56) = sub_2669C62F4();
  v8 = OUTLINED_FUNCTION_1_2();
  v3(v8);
  OUTLINED_FUNCTION_3_1();
  *(v2 + 64) = sub_2669C62F4();
  return v2;
}

id sub_26699CE00(uint64_t a1, unint64_t a2)
{
  v4 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v5 = sub_2669C57D4();
  v6 = [v4 initWithData_];

  sub_26699BE60(a1, a2);
  return v6;
}

uint64_t sub_26699CE78(void *a1)
{
  if (!a1)
  {
    goto LABEL_8;
  }

  v2 = [a1 ioSurface];
  if (v2)
  {
    v3 = v2;
    v4 = &selRef_initWithIOSurface_;
  }

  else
  {
    v5 = [a1 CGImage];
    if (!v5)
    {
      goto LABEL_8;
    }

    v3 = v5;
    v4 = &selRef_initWithCGImage_;
  }

  v6 = [objc_allocWithZone(MEMORY[0x277CBF758]) *v4];

  if (v6)
  {
    v7 = sub_26699D1F4(v6);

    return v7;
  }

LABEL_8:
  if (qword_2800ABEB8 != -1)
  {
    swift_once();
  }

  v9 = sub_2669C5C94();
  __swift_project_value_buffer(v9, qword_2800ACC88);
  v10 = sub_2669C5C74();
  v11 = sub_2669C6854();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_266996000, v10, v11, "ContactsFlowImageColorGenerator couldn't get CIImage from UIImage base, falling back to default color set", v12, 2u);
    MEMORY[0x26D5E4D50](v12, -1, -1);
  }

  return sub_26699CC0C();
}

uint64_t static ContactsFlowImageColorGenerator.shouldDisplayLightText(against:)(uint64_t a1)
{
  sub_26699D054(a1);
  sub_2669C62D4();
  v1 = sub_2669C6294();

  return v1 & 1;
}

uint64_t sub_26699D054(uint64_t a1)
{
  if (qword_2800ABEB8 != -1)
  {
    OUTLINED_FUNCTION_1_0(&qword_2800ABEB8);
  }

  v2 = sub_2669C5C94();
  __swift_project_value_buffer(v2, qword_2800ACC88);
  v3 = sub_2669C5C74();
  v4 = sub_2669C6854();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = OUTLINED_FUNCTION_7();
    *v5 = 0;
    _os_log_impl(&dword_266996000, v3, v4, "ContactsFlowImageColorGenerator idealTextColor", v5, 2u);
    OUTLINED_FUNCTION_4_0();
  }

  v6 = sub_26699EBBC(a1);
  v7 = sub_2669C62D4();
  v8 = sub_26699E944(v6, v7);

  v9 = sub_2669C5C74();
  v10 = sub_2669C6854();
  v11 = os_log_type_enabled(v9, v10);
  if (v8 <= 0.45)
  {
    if (v11)
    {
      *OUTLINED_FUNCTION_7() = 0;
      OUTLINED_FUNCTION_6(&dword_266996000, v15, v16, "ContactsFlowImageColorGenerator idealTextColor returning dark text color");
      OUTLINED_FUNCTION_4_0();
    }

    v14 = sub_2669C62C4();
  }

  else
  {
    if (v11)
    {
      *OUTLINED_FUNCTION_7() = 0;
      OUTLINED_FUNCTION_6(&dword_266996000, v12, v13, "ContactsFlowImageColorGenerator idealTextColor returning light text color");
      OUTLINED_FUNCTION_4_0();
    }

    v14 = sub_2669C62D4();
  }

  v17 = v14;

  return v17;
}

uint64_t sub_26699D1F4(void *a1)
{
  [a1 extent];
  v3 = v2;
  v5 = v4;
  v6 = static ContactsFlowImageColorGenerator.performSaliencyExtraction(from:)(a1);
  if (v6)
  {
    v7 = v6;
    v8 = static ContactsFlowImageColorGenerator.makeImageMask(from:originalScale:)(v6, v3, v5);
    v9 = static ContactsFlowImageColorGenerator.makeThresholdImage(from:threshold:)(v8, 0.5);
    if (v9)
    {
      v10 = v9;
      v11 = [objc_opt_self() maskToAlphaFilter];
      [v11 setInputImage_];
      v12 = [v11 outputImage];

      if (v12)
      {
        v13 = static ContactsFlowImageColorGenerator.makeSubtractedImage(baseImage:imageToSubtract:)(a1, v12);
        if (v13)
        {
          v14 = v13;
          v15 = static ContactsFlowImageColorGenerator.makeGradientCGImage(from:originalSize:)(v13, v3, v5);
          v16 = sub_26699DF4C(v15);

          return v16;
        }

        if (qword_2800ABEB8 != -1)
        {
          swift_once();
        }

        v31 = sub_2669C5C94();
        __swift_project_value_buffer(v31, qword_2800ACC88);
        v32 = sub_2669C5C74();
        v33 = sub_2669C6854();
        if (os_log_type_enabled(v32, v33))
        {
          v34 = swift_slowAlloc();
          *v34 = 0;
          _os_log_impl(&dword_266996000, v32, v33, "ContactsFlowImageColorGenerator failed to extract subject from image for color sampling, falling back to default color set", v34, 2u);
          MEMORY[0x26D5E4D50](v34, -1, -1);
        }

        v26 = sub_26699CC0C();
      }

      else
      {
        if (qword_2800ABEB8 != -1)
        {
          swift_once();
        }

        v27 = sub_2669C5C94();
        __swift_project_value_buffer(v27, qword_2800ACC88);
        v28 = sub_2669C5C74();
        v29 = sub_2669C6854();
        if (os_log_type_enabled(v28, v29))
        {
          v30 = swift_slowAlloc();
          *v30 = 0;
          _os_log_impl(&dword_266996000, v28, v29, "ContactsFlowImageColorGenerator failed to remove background from filtered image mask, falling back to default color set", v30, 2u);
          MEMORY[0x26D5E4D50](v30, -1, -1);
        }

        v26 = sub_26699CC0C();
      }
    }

    else
    {
      if (qword_2800ABEB8 != -1)
      {
        swift_once();
      }

      v22 = sub_2669C5C94();
      __swift_project_value_buffer(v22, qword_2800ACC88);
      v23 = sub_2669C5C74();
      v24 = sub_2669C6854();
      if (os_log_type_enabled(v23, v24))
      {
        v25 = swift_slowAlloc();
        *v25 = 0;
        _os_log_impl(&dword_266996000, v23, v24, "ContactsFlowImageColorGenerator failed to obtain filtered image mask, falling back to default color set", v25, 2u);
        MEMORY[0x26D5E4D50](v25, -1, -1);
      }

      v26 = sub_26699CC0C();
    }

    return v26;
  }

  else
  {
    if (qword_2800ABEB8 != -1)
    {
      swift_once();
    }

    v18 = sub_2669C5C94();
    __swift_project_value_buffer(v18, qword_2800ACC88);
    v19 = sub_2669C5C74();
    v20 = sub_2669C6854();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_266996000, v19, v20, "ContactsFlowImageColorGenerator failed to obtain result from completed request, falling back to default color set", v21, 2u);
      MEMORY[0x26D5E4D50](v21, -1, -1);
    }

    return sub_26699CC0C();
  }
}

unint64_t static ContactsFlowImageColorGenerator.performSaliencyExtraction(from:)(void *a1)
{
  v32[1] = *MEMORY[0x277D85DE8];
  v2 = type metadata accessor for Signpost.OpenSignpost(0);
  MEMORY[0x28223BE20](v2);
  v4 = v32 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0) + 32;
  type metadata accessor for VNImageOption(0);
  sub_26699EFA0();
  v5 = sub_2669C65F4();
  v6 = objc_allocWithZone(MEMORY[0x277CE2D50]);
  v7 = sub_26699EEB4(a1, v5);
  v8 = [objc_allocWithZone(MEMORY[0x277CE2D00]) init];
  [v8 setRevision_];
  if (qword_2800ABEB0 != -1)
  {
    swift_once();
  }

  v9 = qword_2800AC2A8;
  sub_2669C5C54();
  sub_2669C68C4();
  OUTLINED_FUNCTION_2_1();
  sub_2669C5C34();
  v10 = &v4[*(v2 + 20)];
  *v10 = "VisionSaliencyRequest";
  *(v10 + 1) = 21;
  v10[16] = 2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AC0F0, &qword_2669C7A90);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_2669C79C0;
  *(v11 + 32) = v8;
  sub_26699F8F0(0, &qword_2800AC0F8, 0x277CE2DF0);
  v12 = sub_2669C6754();

  v32[0] = 0;
  v13 = [v7 performRequests:v12 error:v32];

  if (v13)
  {
    v14 = v32[0];
    v15 = sub_26699F6F0(v8);
    v16 = v15;
    if (v15)
    {
      if (sub_26699F058(v15))
      {
        if ((v16 & 0xC000000000000001) != 0)
        {
          v17 = MEMORY[0x26D5E4670](0, v16);
        }

        else
        {
          if (!*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
          }

          v17 = *(v16 + 32);
        }

        v18 = v17;

        v16 = [v18 pixelBuffer];
      }

      else
      {

        v16 = 0;
      }
    }

    sub_2669C68B4();
    OUTLINED_FUNCTION_2_1();
    sub_2669C5C44();

    sub_26699EFF8(v4);
  }

  else
  {
    v19 = v32[0];
    v20 = sub_2669C5784();

    swift_willThrow();
    sub_2669C68B4();
    OUTLINED_FUNCTION_2_1();
    sub_2669C5C44();
    sub_26699EFF8(v4);
    if (qword_2800ABEB8 != -1)
    {
      OUTLINED_FUNCTION_1_0(&qword_2800ABEB8);
    }

    v21 = sub_2669C5C94();
    __swift_project_value_buffer(v21, qword_2800ACC88);
    v22 = v20;
    v23 = sub_2669C5C74();
    v24 = sub_2669C6854();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v32[0] = v26;
      *v25 = 136315138;
      swift_getErrorValue();
      v27 = sub_2669C6AB4();
      v29 = sub_26699F100(v27, v28, v32);

      *(v25 + 4) = v29;
      _os_log_impl(&dword_266996000, v23, v24, "ContactsFlowImageColorGenerator failed to complete image request, falling back to default color set with error: %s", v25, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v26);
      OUTLINED_FUNCTION_4_0();
      OUTLINED_FUNCTION_4_0();
    }

    else
    {
    }

    return 0;
  }

  return v16;
}

id static ContactsFlowImageColorGenerator.makeImageMask(from:originalScale:)(uint64_t a1, double a2, double a3)
{
  v5 = [objc_allocWithZone(MEMORY[0x277CBF758]) initWithCVPixelBuffer_];
  [v5 extent];
  CGAffineTransformMakeScale(&v10, a2 / v6, a3 / v7);
  v8 = [v5 imageByApplyingTransform_];

  return v8;
}

id static ContactsFlowImageColorGenerator.makeThresholdImage(from:threshold:)(uint64_t a1, float a2)
{
  v4 = [objc_opt_self() colorThresholdFilter];
  [v4 setInputImage_];
  *&v5 = a2;
  [v4 setThreshold_];
  v6 = [v4 outputImage];

  return v6;
}

id static ContactsFlowImageColorGenerator.makeTransparencyImage(fromThreshold:)(uint64_t a1)
{
  v2 = [objc_opt_self() maskToAlphaFilter];
  [v2 setInputImage_];
  v3 = [v2 outputImage];

  return v3;
}

id static ContactsFlowImageColorGenerator.makeSubtractedImage(baseImage:imageToSubtract:)(uint64_t a1, uint64_t a2)
{
  v4 = [objc_opt_self() sourceOutCompositingFilter];
  [v4 setInputImage_];
  [v4 setBackgroundImage_];
  v5 = [v4 outputImage];

  return v5;
}

id static ContactsFlowImageColorGenerator.makeGradientCGImage(from:originalSize:)(void *a1, double a2, double a3)
{
  v6 = sub_2669C6624();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AC100, qword_2669C7A98);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2669C79D0;
  *(inited + 32) = 0x6469577475706E69;
  *(inited + 40) = 0xEA00000000006874;
  v8 = MEMORY[0x277D85048];
  *(inited + 48) = a2;
  *(inited + 72) = v8;
  *(inited + 80) = 0x6965487475706E69;
  *(inited + 88) = 0xEB00000000746867;
  *(inited + 120) = v8;
  *(inited + 96) = a3;
  sub_2669C65F4();
  v9 = sub_2669C65E4();

  v10 = [a1 imageByApplyingFilter:v6 withInputParameters:v9];

  [v10 extent];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v17 = [objc_allocWithZone(MEMORY[0x277CBF740]) init];
  v18 = [v17 createCGImage:v10 fromRect:{v12, v14, 8.0, v16}];

  return v18;
}

uint64_t sub_26699DF4C(void *a1)
{
  if (a1)
  {
    v2 = a1;
    Width = CGImageGetWidth(v2);
    Height = CGImageGetHeight(v2);
    if (Width && (v5 = Height) != 0)
    {
      v6 = CGColorSpaceCreateWithName(*MEMORY[0x277CBF4B8]);
      if (v6)
      {
        v7 = fmax(v5, 160.0);
        if (v7 <= -9.22337204e18)
        {
          __break(1u);
        }

        else if (v7 < 9.22337204e18)
        {
          Width = v6;
          v8 = v7;
          v1 = __CGBitmapContextCreate(v7, v6);
          if (v1)
          {
            sub_2669C6834();
            Data = CGBitmapContextGetData(v1);
            if (Data)
            {
              if (v8 >= 1)
              {
                v10 = 0;
                v11 = Data + 3;
                while (v10 != 0x2000000000000000)
                {
                  if ((*(v11 - 3) | *(v11 - 2) || *(v11 - 1)) && *v11)
                  {
                    goto LABEL_39;
                  }

                  ++v10;
                  v11 += 4;
                  if (v8 == v10)
                  {
                    v10 = v7;
                    goto LABEL_39;
                  }
                }

                goto LABEL_67;
              }

              v10 = 0;
LABEL_39:
              v28 = v7 + -1.0;
              if (COERCE__INT64(fabs(v7 + -1.0)) > 0x7FEFFFFFFFFFFFFFLL)
              {
                __break(1u);
              }

              else if (v28 > -9.22337204e18)
              {
                if (v28 < 9.22337204e18)
                {
                  v29 = v28;
                  if (v28 >= 1)
                  {
                    v30 = &Data[4 * v29 + 1];
                    v31 = v29 >> 61;
                    while (!v31)
                    {
                      if ((*(v30 - 1) | *v30 || v30[1]) && v30[2])
                      {
                        goto LABEL_51;
                      }

                      v30 -= 4;
                      if (v29-- <= 1)
                      {
                        v29 = 0;
                        goto LABEL_51;
                      }
                    }

                    goto LABEL_68;
                  }

LABEL_51:
                  v48 = MEMORY[0x277D84F90];
                  if (!__OFSUB__(v29, v10))
                  {
                    v33 = ceil(vcvtd_n_f64_s64(v29 - v10, 2uLL));
                    if ((*&v33 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
                    {
                      v44 = v1;
                      v45 = Width;
                      v46 = v2;
                      if (v33 > -9.22337204e18)
                      {
                        v47 = Data;
                        if (v33 < 9.22337204e18)
                        {
                          if (v10 < v29)
                          {
                            v34 = v33;
                            v35 = v10 - 0x2000000000000000;
                            v1 = &Data[4 * v10 + 3];
                            Width = 4 * v33;
                            v2 = &_OBJC_LABEL_PROTOCOL___NSObject;
                            while (v35 >> 62 == 3)
                            {
                              LOBYTE(v33) = *(v1 - 3);
                              *&v36 = *&v33;
                              v37 = *&v36 / 255.0;
                              LOBYTE(v36) = *(v1 - 2);
                              *&v38 = v36;
                              v39 = *&v38 / 255.0;
                              LOBYTE(v38) = *(v1 - 1);
                              *&v40 = v38;
                              v41 = *&v40 / 255.0;
                              LOBYTE(v40) = *v1;
                              [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:v37 green:v39 blue:v41 alpha:v40 / 255.0];
                              sub_2669C6274();
                              MEMORY[0x26D5E43F0]();
                              if (*(v48 + 16) >= *(v48 + 24) >> 1)
                              {
                                sub_2669C6774();
                              }

                              sub_2669C6794();
                              v42 = v10 + v34;
                              if (__OFADD__(v10, v34))
                              {
                                goto LABEL_66;
                              }

                              v35 += v34;
                              v10 += v34;
                              v1 = (v1 + Width);
                              if (v42 >= v29)
                              {
                                goto LABEL_62;
                              }
                            }

                            __break(1u);
LABEL_66:
                            __break(1u);
LABEL_67:
                            __break(1u);
LABEL_68:
                            __break(1u);
                            goto LABEL_69;
                          }

LABEL_62:
                          if ((v29 - 0x2000000000000000) >> 62 == 3)
                          {
                            sub_26699E66C(*&v47[4 * v29]);
                            MEMORY[0x26D5E43F0]();
                            Width = v45;
                            v2 = v46;
                            v1 = v44;
                            if (*(v48 + 16) < *(v48 + 24) >> 1)
                            {
LABEL_64:
                              sub_2669C6794();
                              v43 = sub_26699E700(v48);

                              return v43;
                            }

LABEL_81:
                            sub_2669C6774();
                            goto LABEL_64;
                          }

LABEL_80:
                          __break(1u);
                          goto LABEL_81;
                        }

LABEL_79:
                        __break(1u);
                        goto LABEL_80;
                      }

LABEL_78:
                      __break(1u);
                      goto LABEL_79;
                    }

LABEL_77:
                    __break(1u);
                    goto LABEL_78;
                  }

LABEL_76:
                  __break(1u);
                  goto LABEL_77;
                }

LABEL_75:
                __break(1u);
                goto LABEL_76;
              }

              __break(1u);
              goto LABEL_75;
            }
          }

          if (qword_2800ABEB8 == -1)
          {
            goto LABEL_28;
          }

          goto LABEL_72;
        }

        __break(1u);
LABEL_72:
        swift_once();
LABEL_28:
        v22 = sub_2669C5C94();
        __swift_project_value_buffer(v22, qword_2800ACC88);
        v23 = sub_2669C5C74();
        v24 = sub_2669C6854();
        if (os_log_type_enabled(v23, v24))
        {
          v25 = swift_slowAlloc();
          *v25 = 0;
          _os_log_impl(&dword_266996000, v23, v24, "ContactsFlowImageColorGenerator rawImageData was nil after drawing, falling back to default color set", v25, 2u);
          MEMORY[0x26D5E4D50](v25, -1, -1);
        }

        v26 = sub_26699CC0C();
        goto LABEL_37;
      }

      if (qword_2800ABEB8 != -1)
      {
        swift_once();
      }

      v27 = sub_2669C5C94();
      __swift_project_value_buffer(v27, qword_2800ACC88);
      v18 = sub_2669C5C74();
      v19 = sub_2669C6854();
      if (!os_log_type_enabled(v18, v19))
      {
LABEL_36:

        v26 = sub_26699CC0C();
LABEL_37:

        return v26;
      }

      v20 = swift_slowAlloc();
      *v20 = 0;
      v21 = "ContactsFlowImageColorGenerator failed to create sRGB color space, falling back to default color set";
    }

    else
    {
      if (qword_2800ABEB8 != -1)
      {
        swift_once();
      }

      v17 = sub_2669C5C94();
      __swift_project_value_buffer(v17, qword_2800ACC88);
      v18 = sub_2669C5C74();
      v19 = sub_2669C6854();
      if (!os_log_type_enabled(v18, v19))
      {
        goto LABEL_36;
      }

      v20 = swift_slowAlloc();
      *v20 = 0;
      v21 = "ContactsFlowImageColorGenerator cgImage had a side length 0, falling back to default color set";
    }

    _os_log_impl(&dword_266996000, v18, v19, v21, v20, 2u);
    MEMORY[0x26D5E4D50](v20, -1, -1);
    goto LABEL_36;
  }

  if (qword_2800ABEB8 != -1)
  {
LABEL_69:
    swift_once();
  }

  v12 = sub_2669C5C94();
  __swift_project_value_buffer(v12, qword_2800ACC88);
  v13 = sub_2669C5C74();
  v14 = sub_2669C6854();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&dword_266996000, v13, v14, "ContactsFlowImageColorGenerator no cgImage, falling back to default color set", v15, 2u);
    MEMORY[0x26D5E4D50](v15, -1, -1);
  }

  return sub_26699CC0C();
}

uint64_t sub_26699E66C(unsigned int a1)
{
  [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:a1 / 255.0 green:BYTE1(a1) / 255.0 blue:BYTE2(a1) / 255.0 alpha:HIBYTE(a1) / 255.0];

  return sub_2669C6274();
}

uint64_t sub_26699E700(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  result = MEMORY[0x277D84F90];
  v15 = MEMORY[0x277D84F90];
  v3 = *(a1 + 16);
  if (v3)
  {
    sub_26699F8F0(0, &qword_2800AC118, 0x277D75348);
    v4 = a1 + 32;
    do
    {
      v13 = 0.0;
      v14 = 0;
      v11 = 0.0;
      v12 = 0;
      v9 = 0.0;
      v10 = 0.0;
      v8 = 1.0;
      swift_retain_n();
      v5 = sub_2669C68D4();
      [v5 getRed:&v11 green:&v10 blue:&v9 alpha:&v8];
      v10 = v10 * 0.33 + 0.0;
      v11 = v11 * 0.33 + 0.0;
      v9 = v9 * 0.33 + 0.0;
      v6 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:v11 green:v10 blue:v9 alpha:v8];
      [v6 getHue:&v14 saturation:&v13 brightness:&v12 alpha:0];
      v13 = v13 * 1.6 / (v13 + 0.6);
      sub_2669C62A4();
      sub_2669C62E4();

      MEMORY[0x26D5E43F0](v7);
      if (*(v15 + 16) >= *(v15 + 24) >> 1)
      {
        sub_2669C6774();
      }

      sub_2669C6794();

      v4 += 8;
      --v3;
    }

    while (v3);
    return v15;
  }

  return result;
}

double sub_26699E944(uint64_t a1, uint64_t a2)
{
  v20[1] = *MEMORY[0x277D85DE8];
  if (qword_2800ABEB8 != -1)
  {
    swift_once();
  }

  v2 = sub_2669C5C94();
  __swift_project_value_buffer(v2, qword_2800ACC88);
  v3 = sub_2669C5C74();
  v4 = sub_2669C6854();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_266996000, v3, v4, "ContactsFlowImageColorGenerator calculating color difference", v5, 2u);
    MEMORY[0x26D5E4D50](v5, -1, -1);
  }

  v19 = 0.0;
  v20[0] = 0.0;
  v17 = 0.0;
  v18 = 0.0;
  v15 = 0.0;
  v16 = 0.0;
  v13 = 0.0;
  v14 = 0.0;
  sub_26699F8F0(0, &qword_2800AC118, 0x277D75348);

  v6 = sub_2669C68D4();
  [v6 getRed:v20 green:&v19 blue:&v18 alpha:&v17];

  v7 = sub_2669C68D4();
  [v7 getRed:&v16 green:&v15 blue:&v14 alpha:&v13];
  v8 = vabdd_f64(v20[0] * v17, v16 * v13) + vabdd_f64(v17 * v19, v13 * v15) + vabdd_f64(v17 * v18, v13 * v14);
  v9 = sub_2669C5C74();
  v10 = sub_2669C6854();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 134217984;
    *(v11 + 4) = v8;
    _os_log_impl(&dword_266996000, v9, v10, "ContactsFlowImageColorGenerator color difference was %f", v11, 0xCu);
    MEMORY[0x26D5E4D50](v11, -1, -1);
  }

  return v8;
}

uint64_t sub_26699EBBC(uint64_t a1)
{
  v22[1] = *MEMORY[0x277D85DE8];
  v2 = sub_2669C6284();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 16);
  if (v6)
  {
    v21 = 0.0;
    v22[0] = 0.0;
    v19 = 0.0;
    v20 = 0.0;
    sub_26699F8F0(0, &qword_2800AC118, 0x277D75348);
    v7 = 0;
    v8 = 0.0;
    v9 = 0.0;
    v10 = 0.0;
    v11 = 0.0;
    do
    {
      ++v7;
      swift_retain_n();
      v12 = sub_2669C68D4();
      [v12 getRed:v22 green:&v21 blue:&v20 alpha:&v19];

      v11 = v11 + v22[0];
      v10 = v10 + v21;
      v9 = v9 + v20;
      v8 = v8 + v19;
    }

    while (v6 != v7);
    (*(v3 + 104))(v5, *MEMORY[0x277CE0EE0], v2);
    return sub_2669C62F4();
  }

  else
  {
    if (qword_2800ABEB8 != -1)
    {
      swift_once();
    }

    v14 = sub_2669C5C94();
    __swift_project_value_buffer(v14, qword_2800ACC88);
    v15 = sub_2669C5C74();
    v16 = sub_2669C6854();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_266996000, v15, v16, "ContactsFlowImageColorGenerator no colors provided from which to calculate mean, returning default", v17, 2u);
      MEMORY[0x26D5E4D50](v17, -1, -1);
    }

    return MEMORY[0x282133418]();
  }
}

id sub_26699EEB4(void *a1, uint64_t a2)
{
  type metadata accessor for VNImageOption(0);
  sub_26699EFA0();
  v4 = sub_2669C65E4();

  v5 = [v2 initWithCIImage:a1 options:v4];

  return v5;
}

uint64_t sub_26699EF40(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

void sub_26699EF8C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    sub_26699BF34(a1, a2);
  }
}

unint64_t sub_26699EFA0()
{
  result = qword_2800ABF60;
  if (!qword_2800ABF60)
  {
    type metadata accessor for VNImageOption(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800ABF60);
  }

  return result;
}

uint64_t sub_26699EFF8(uint64_t a1)
{
  v2 = type metadata accessor for Signpost.OpenSignpost(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_26699F058(unint64_t a1)
{
  if (a1 >> 62)
  {
    return sub_2669C6A54();
  }

  else
  {
    return *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }
}

uint64_t sub_26699F0A4(unint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(unint64_t **, uint64_t))
{
  v6 = a4(a1, a2);
  v8 = sub_26699F100(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
}

unint64_t sub_26699F100(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_26699F1C4(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (v6)
  {
    v8 = v6;

    ObjectType = swift_getObjectType();
    v11[0] = v8;
  }

  else
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
  }

  v9 = *a3;
  if (*a3)
  {
    sub_26699F890(v11, *a3);
    *a3 = v9 + 32;
  }

  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

unint64_t sub_26699F1C4(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v11 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v11)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v11) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_26699F2C4(a5, a6);
    *a1 = v9;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    result = sub_2669C69D4();
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

uint64_t sub_26699F2C4(uint64_t a1, unint64_t a2)
{
  v3 = sub_26699F310(a1, a2);
  sub_26699F428(&unk_28782B700);
  return v3;
}

uint64_t sub_26699F310(uint64_t a1, unint64_t a2)
{
  v4 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_19;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  for (; v5; v5 = sub_2669C6714())
  {
    result = sub_26699F50C(v5, 0);
    v7 = result;
    if ((a2 & 0x1000000000000000) != 0)
    {
      result = sub_2669C69B4();
      if (v11)
      {
        goto LABEL_23;
      }

      v4 = result;
    }

    else
    {
      if ((a2 & 0x2000000000000000) != 0)
      {
        v13[0] = a1;
        v13[1] = a2 & 0xFFFFFFFFFFFFFFLL;
        if (v5 < v4)
        {
          goto LABEL_23;
        }

        v9 = (result + 32);
        v10 = v13;
      }

      else
      {
        if ((a1 & 0x1000000000000000) != 0)
        {
          v8 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
          v4 = a1 & 0xFFFFFFFFFFFFLL;
        }

        else
        {
          result = sub_2669C69D4();
          v8 = result;
          v4 = v12;
        }

        if (v5 < v4)
        {
LABEL_23:
          __break(1u);
          return result;
        }

        v9 = (v7 + 32);
        v10 = v8;
      }

      memcpy(v9, v10, v4);
    }

    if (v4 == v5)
    {
      return v7;
    }

    __break(1u);
LABEL_19:
    ;
  }

  return MEMORY[0x277D84F90];
}

uint64_t sub_26699F428(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (!result || v5 > *(v3 + 24) >> 1)
  {
    if (v4 <= v5)
    {
      v7 = v4 + v2;
    }

    else
    {
      v7 = v4;
    }

    result = sub_26699F57C(result, v7, 1, v3);
    v3 = result;
  }

  if (!*(v6 + 16))
  {

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_26699F50C(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AC110, &qword_2669C7AD0);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return v4;
}

char *sub_26699F57C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AC110, &qword_2669C7AD0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[v8] <= v12)
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

_BYTE **sub_26699F670(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_0(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

unint64_t sub_26699F6CC(unint64_t result, char a2, uint64_t a3)
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

uint64_t sub_26699F6F0(void *a1)
{
  v1 = [a1 results];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  sub_26699F8F0(0, &qword_2800AC108, 0x277CE2DF8);
  v3 = sub_2669C6764();

  return v3;
}

uint64_t getEnumTagSinglePayload for ContactsFlowImageColorGenerator(unsigned int *a1, int a2)
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

_BYTE *storeEnumTagSinglePayload for ContactsFlowImageColorGenerator(_BYTE *result, int a2, int a3)
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
        return result;
      case 2:
        *result = a2;
        return result;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        return result;
      default:
        return result;
    }
  }

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
      JUMPOUT(0x26699F850);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_26699F890(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_26699F8F0(uint64_t a1, unint64_t *a2, void *a3)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

void OUTLINED_FUNCTION_4_0()
{

  JUMPOUT(0x26D5E4D50);
}

void OUTLINED_FUNCTION_6(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

uint64_t OUTLINED_FUNCTION_7()
{

  return swift_slowAlloc();
}

uint64_t GetContactAttributeMultiResultView.body.getter@<X0>(uint64_t a1@<X8>)
{
  ContactAttributeMultiResultView = type metadata accessor for GetContactAttributeMultiResultView(0);
  v4 = ContactAttributeMultiResultView - 8;
  v5 = *(ContactAttributeMultiResultView - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](ContactAttributeMultiResultView);
  sub_2669A0704(v1, &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v8 = swift_allocObject();
  sub_2669A076C(&v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v8 + v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AC128, &qword_2669C7AF0);
  sub_26699A174(&qword_2800AC130, &qword_2800AC128, &qword_2669C7AF0, MEMORY[0x277CE14C0]);
  sub_2669C6484();
  v9 = v1 + *(v4 + 28);
  v10 = *(v9 + *(type metadata accessor for GetContactAttributeViewModel(0) + 28));
  *(a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AC138, &qword_2669C7AF8) + 36)) = v10;
}

uint64_t type metadata accessor for GetContactAttributeMultiResultView(uint64_t a1)
{
  result = qword_2800AC140;
  if (!qword_2800AC140)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_26699FBB4@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v88 = a1;
  v104 = a2;
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AC178, &qword_2669C7BB8);
  v109 = *(v103 - 8);
  v3 = MEMORY[0x28223BE20](v103);
  v102 = v85 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v108 = v85 - v5;
  ContactAttributeMultiResultView = type metadata accessor for GetContactAttributeMultiResultView(0);
  v7 = ContactAttributeMultiResultView - 8;
  v99 = *(ContactAttributeMultiResultView - 8);
  v98 = *(v99 + 64);
  MEMORY[0x28223BE20](ContactAttributeMultiResultView);
  v97 = v85 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2669C5814();
  v95 = *(v9 - 8);
  v96 = v9;
  MEMORY[0x28223BE20](v9);
  v94 = v85 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_2669C5844();
  MEMORY[0x28223BE20](v11 - 8);
  v91 = v85 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ABEC8, &unk_2669C7BC0);
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = v85 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AC180, &qword_2669C8740);
  v18 = *(v17 - 8);
  v86 = v17;
  v87 = v18;
  MEMORY[0x28223BE20](v17);
  v20 = v85 - v19;
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AC188, &qword_2669C7BD0);
  MEMORY[0x28223BE20](v90);
  v89 = v85 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AC190, &qword_2669C7BD8);
  v23 = *(v22 - 8);
  v92 = v22;
  v93 = v23;
  MEMORY[0x28223BE20](v22);
  v106 = v85 - v24;
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AC198, &qword_2669C7BE0);
  v107 = *(v101 - 8);
  v25 = MEMORY[0x28223BE20](v101);
  v100 = v85 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v110 = v85 - v27;
  v105 = *(v7 + 28);
  v85[1] = a1 + *(type metadata accessor for GetContactAttributeViewModel(0) + 20);
  sub_2669C5AE4();
  v28 = sub_2669C5964();
  (*(v14 + 8))(v16, v13);
  v29 = sub_2669C6924();
  v31 = v30;

  v111 = v29;
  v112 = v31;
  sub_266999FC4(v32, v33, v34);
  v35 = sub_2669C6164();
  v37 = v36;
  v111 = v35;
  v112 = v36;
  v39 = v38 & 1;
  LOBYTE(v113) = v38 & 1;
  v114 = v40;
  v41 = MEMORY[0x277CE0BD8];
  v42 = MEMORY[0x277CE0BC8];
  sub_2669C6254();
  sub_26699A018(v35, v37, v39);

  v111 = v41;
  v112 = v42;
  swift_getOpaqueTypeConformance2();
  v43 = v86;
  v44 = sub_2669C6174();
  (*(v87 + 8))(v20, v43);
  v115 = MEMORY[0x277D63A60];
  v114 = MEMORY[0x277CE11C8];
  v111 = v44;
  v138 = 0;
  v136 = 0u;
  v137 = 0u;
  v135 = 0;
  v133 = 0u;
  v134 = 0u;
  v132 = 0;
  v130 = 0u;
  v131 = 0u;
  v129 = 0;
  v127 = 0u;
  v128 = 0u;
  v126 = 0;
  v124 = 0u;
  v125 = 0u;
  v123 = 0;
  v121 = 0u;
  v122 = 0u;
  v120 = 0;
  v118 = 0u;
  v119 = 0u;
  sub_2669C5AC4();
  sub_2669C5834();

  v117[3] = sub_2669C6454();
  v117[4] = MEMORY[0x277D63B10];
  __swift_allocate_boxed_opaque_existential_1(v117);
  sub_2669C6464();
  v45 = v89;
  sub_2669C64C4();
  v46 = sub_2669C6084();
  v47 = v90;
  v48 = v45 + *(v90 + 36);
  *v48 = v46;
  *(v48 + 8) = xmmword_2669C7AE0;
  *(v48 + 24) = xmmword_2669C7AE0;
  *(v48 + 40) = 0;
  v50 = v94;
  v49 = v95;
  v51 = v96;
  (*(v95 + 104))(v94, *MEMORY[0x277D62F20], v96);
  v52 = sub_2669A18F0();
  v53 = v47;
  sub_2669C6194();
  (*(v49 + 8))(v50, v51);
  sub_2669A19AC(v45);
  v54 = v88;
  v55 = v97;
  sub_2669A0704(v88, v97);
  v56 = (*(v99 + 80) + 16) & ~*(v99 + 80);
  v57 = swift_allocObject();
  sub_2669A076C(v55, v57 + v56);
  v111 = v53;
  v112 = v52;
  swift_getOpaqueTypeConformance2();
  v58 = v92;
  v59 = v106;
  sub_2669C6234();

  v60 = (*(v93 + 8))(v59, v58);
  *&v136 = MEMORY[0x26D5E3750](v60);
  sub_2669A0704(v54, v55);
  v61 = swift_allocObject();
  sub_2669A076C(v55, v61 + v56);
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AC1B0, &qword_2669C7BE8);
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AC1B8, &qword_2669C7BF0);
  sub_26699A174(&qword_2800AC1C0, &qword_2800AC1B0, &qword_2669C7BE8, MEMORY[0x277D83980]);
  v62 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2800AC1C8, &qword_2669C7BF8);
  v63 = sub_2669C6564();
  v64 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2800AC1D0, &qword_2669C7C00);
  v65 = sub_2669A1D2C(&qword_2800AC1D8, MEMORY[0x277D63DE8], MEMORY[0x277D63DD8]);
  v66 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2800AC1E0, &qword_2669C7C08);
  v67 = sub_2669A1C20();
  v70 = sub_2669A1CD8(v67, v68, v69);
  v111 = v63;
  v112 = v66;
  v113 = MEMORY[0x277D837D0];
  v114 = v65;
  v115 = v67;
  v116 = v70;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v111 = v63;
  v112 = v64;
  v113 = v65;
  v114 = OpaqueTypeConformance2;
  v72 = swift_getOpaqueTypeConformance2();
  v111 = v62;
  v112 = v72;
  swift_getOpaqueTypeConformance2();
  sub_2669A1D2C(&qword_2800AC208, MEMORY[0x277D55A90], MEMORY[0x277D55A98]);
  v73 = v108;
  sub_2669C63D4();
  v74 = *(v107 + 16);
  v75 = v100;
  v76 = v101;
  v74(v100, v110, v101);
  v77 = *(v109 + 16);
  v79 = v102;
  v78 = v103;
  v77(v102, v73, v103);
  v80 = v104;
  v74(v104, v75, v76);
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AC210, &qword_2669C7C18);
  v77(&v80[*(v81 + 48)], v79, v78);
  v82 = *(v109 + 8);
  v82(v108, v78);
  v83 = *(v107 + 8);
  v83(v110, v76);
  v82(v79, v78);
  return (v83)(v75, v76);
}

uint64_t sub_2669A0704(uint64_t a1, uint64_t a2)
{
  ContactAttributeMultiResultView = type metadata accessor for GetContactAttributeMultiResultView(0);
  (*(*(ContactAttributeMultiResultView - 8) + 16))(a2, a1, ContactAttributeMultiResultView);
  return a2;
}

uint64_t sub_2669A076C(uint64_t a1, uint64_t a2)
{
  ContactAttributeMultiResultView = type metadata accessor for GetContactAttributeMultiResultView(0);
  (*(*(ContactAttributeMultiResultView - 8) + 32))(a2, a1, ContactAttributeMultiResultView);
  return a2;
}

uint64_t sub_2669A07D0@<X0>(char *a1@<X8>)
{
  ContactAttributeMultiResultView = type metadata accessor for GetContactAttributeMultiResultView(0);
  OUTLINED_FUNCTION_2_2(ContactAttributeMultiResultView);
  v4 = OUTLINED_FUNCTION_1_3(*(v3 + 80));

  return sub_26699FBB4(v4, a1);
}

uint64_t sub_2669A0850()
{
  v0 = sub_2669C5B54();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for GetContactAttributeMultiResultView(0);
  type metadata accessor for GetContactAttributeViewModel(0);
  sub_2669C5A34();
  v4 = sub_2669C5B24();
  v6 = v5;
  (*(v1 + 8))(v3, v0);
  sub_2669A62F8(v4, v6);
  return sub_26699BE4C(v4, v6);
}

uint64_t sub_2669A0970@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v21[1] = a2;
  v3 = sub_2669C5814();
  v21[0] = v3;
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AC1C8, &qword_2669C7BF8);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v21 - v9;
  sub_2669A0C18(a1, v21 - v9);
  (*(v4 + 104))(v6, *MEMORY[0x277D62F28], v3);
  v11 = sub_2669C6564();
  v12 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2800AC1D0, &qword_2669C7C00);
  v13 = sub_2669A1D2C(&qword_2800AC1D8, MEMORY[0x277D63DE8], MEMORY[0x277D63DD8]);
  v14 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2800AC1E0, &qword_2669C7C08);
  v15 = sub_2669A1C20();
  v18 = sub_2669A1CD8(v15, v16, v17);
  v22 = v11;
  v23 = v14;
  v24 = MEMORY[0x277D837D0];
  v25 = v13;
  v26 = v15;
  v27 = v18;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v22 = v11;
  v23 = v12;
  v24 = v13;
  v25 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  sub_2669C6194();
  (*(v4 + 8))(v6, v21[0]);
  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_2669A0C18@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v68 = a2;
  v69 = a1;
  v4 = sub_2669C6564();
  v5 = *(v4 - 8);
  v66 = v4;
  v67 = v5;
  MEMORY[0x28223BE20](v4);
  v65 = v64 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2669C5A64();
  if (v8)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0;
  }

  v11 = 0xE000000000000000;
  if (v8)
  {
    v11 = v8;
  }

  v71 = v10;
  v72 = v11;
  v64[2] = sub_266999FC4(v7, v8, v9);
  v12 = sub_2669C6164();
  v14 = v13;
  v16 = v15;
  v17 = v3 + *(type metadata accessor for GetContactAttributeMultiResultView(0) + 20);
  v71 = *(v17 + *(type metadata accessor for GetContactAttributeViewModel(0) + 28));

  v18 = sub_2669C6144();
  v20 = v19;
  v22 = v21;
  v24 = v23;
  sub_26699A018(v12, v14, v16 & 1);

  v74 = MEMORY[0x277CE0BD8];
  v75 = MEMORY[0x277D638E8];
  v25 = swift_allocObject();
  v71 = v25;
  *(v25 + 16) = v18;
  *(v25 + 24) = v20;
  *(v25 + 32) = v22 & 1;
  *(v25 + 40) = v24;
  v26 = v69;
  sub_2669A6574(v69);
  v28 = v27;
  v30 = v29;
  v31 = (v29 >> 40) & 1;
  v99 = v27;
  v100 = v29;
  v101 = BYTE4(v29);
  v102 = BYTE5(v29) & 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AC218, &unk_2669C7C20);
  sub_2669A1DB8(&qword_2800AC220, &qword_2800AC218, &unk_2669C7C20, sub_2669A1E3C);
  v32 = sub_2669C6174();
  sub_2669A20B0(v28, v30, v31);
  v103 = MEMORY[0x277CE11C8];
  v104 = MEMORY[0x277D63A60];
  v99 = v32;
  v33 = sub_2669A7268(v26);
  v35 = v34;
  v93 = v33;
  v95 = BYTE2(v34);
  LODWORD(v31) = BYTE3(v34) & 1;
  v94 = v34;
  v96 = BYTE3(v34) & 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AC288, &unk_2669C8100);
  sub_2669A1DB8(&qword_2800AC290, &qword_2800AC288, &unk_2669C8100, sub_2669A210C);
  v36 = sub_2669C6174();
  sub_2669A2198(v33, v35, v31);
  v98 = MEMORY[0x277D63A60];
  v97 = MEMORY[0x277CE11C8];
  v93 = v36;
  v92 = 0;
  v90 = 0u;
  v91 = 0u;
  v89 = 0;
  v87 = 0u;
  v88 = 0u;
  v86 = 0;
  v84 = 0u;
  v85 = 0u;
  v37 = sub_2669C5A54();
  if (v38)
  {
    v39 = v37;
  }

  else
  {
    v39 = 0;
  }

  v40 = 0xE000000000000000;
  if (v38)
  {
    v40 = v38;
  }

  v80 = v39;
  v81 = v40;
  v41 = sub_2669C6164();
  v43 = v42;
  v45 = v44;
  v80 = sub_2669C62E4();
  v46 = sub_2669C6144();
  v48 = v47;
  v50 = v49;
  v52 = v51;
  sub_26699A018(v41, v43, v45 & 1);

  v82 = MEMORY[0x277CE0BD8];
  v83 = MEMORY[0x277D638E8];
  v53 = swift_allocObject();
  v80 = v53;
  *(v53 + 16) = v46;
  *(v53 + 24) = v48;
  *(v53 + 32) = v50 & 1;
  *(v53 + 40) = v52;
  v79 = 0;
  v77 = 0u;
  v78 = 0u;
  v54 = v65;
  sub_2669C6554();
  v55 = v69;
  sub_26699A920();
  v70 = v55;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AC1D0, &qword_2669C7C00);
  v56 = sub_2669A1D2C(&qword_2800AC1D8, MEMORY[0x277D63DE8], MEMORY[0x277D63DD8]);
  v57 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2800AC1E0, &qword_2669C7C08);
  v58 = sub_2669A1C20();
  v61 = sub_2669A1CD8(v58, v59, v60);
  v62 = v66;
  v71 = v66;
  v72 = v57;
  v73 = MEMORY[0x277D837D0];
  v74 = v56;
  v75 = v58;
  v76 = v61;
  swift_getOpaqueTypeConformance2();
  sub_2669C61C4();
  return (*(v67 + 8))(v54, v62);
}

uint64_t sub_2669A11BC(uint64_t a1, uint64_t a2)
{
  v3 = sub_2669C5A94();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  (*(v4 + 16))(&v12[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)], a2, v3);
  v6 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v7 = swift_allocObject();
  (*(v4 + 32))(v7 + v6, &v12[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)], v3);
  v13 = a2;
  sub_2669C6564();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AC1E0, &qword_2669C7C08);
  sub_2669A1D2C(&qword_2800AC1D8, MEMORY[0x277D63DE8], MEMORY[0x277D63DD8]);
  v11 = sub_2669A1C20();
  sub_2669A1CD8(v11, v8, v9);
  sub_2669C6264();
}

uint64_t sub_2669A13A4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_26699A870();
  *a1 = result;
  a1[1] = v3;
  return result;
}

void *sub_2669A13D0@<X0>(uint64_t a2@<X8>)
{
  v3 = sub_2669C5FA4();
  sub_2669A1494(v15);
  *&__src[7] = v15[0];
  *&__src[23] = v15[1];
  *&__src[39] = v15[2];
  *&__src[55] = v15[3];
  v4 = sub_2669C6084();
  sub_2669C5D24();
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  *a2 = v3;
  *(a2 + 8) = 0x4010000000000000;
  *(a2 + 16) = 0;
  result = memcpy((a2 + 17), __src, 0x47uLL);
  *(a2 + 88) = v4;
  *(a2 + 96) = v6;
  *(a2 + 104) = v8;
  *(a2 + 112) = v10;
  *(a2 + 120) = v12;
  *(a2 + 128) = 0;
  return result;
}

uint64_t sub_2669A1494@<X0>(uint64_t a2@<X8>)
{
  v3 = sub_2669C5A64();
  sub_266999FC4(v3, v4, v5);
  v6 = sub_2669C6164();
  v8 = v7;
  v10 = v9;
  v12 = v11;
  sub_2669C5A54();
  v13 = sub_2669C6164();
  v15 = v14;
  v16 = v10 & 1;
  v21 = v10 & 1;
  v18 = v17 & 1;
  *a2 = v6;
  *(a2 + 8) = v8;
  *(a2 + 16) = v16;
  *(a2 + 24) = v12;
  *(a2 + 32) = v13;
  *(a2 + 40) = v14;
  *(a2 + 48) = v17 & 1;
  *(a2 + 56) = v19;
  sub_2669A22A8(v6, v8, v16);

  sub_2669A22A8(v13, v15, v18);

  sub_26699A018(v13, v15, v18);

  sub_26699A018(v6, v8, v21);
}

uint64_t sub_2669A15FC(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    ContactAttributeViewModel = type metadata accessor for GetContactAttributeViewModel(0);
    v10 = a1 + *(a3 + 20);

    return __swift_getEnumTagSinglePayload(v10, a2, ContactAttributeViewModel);
  }
}

void *sub_2669A16A4(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *result = a2;
  }

  else
  {
    ContactAttributeViewModel = type metadata accessor for GetContactAttributeViewModel(0);
    v8 = v5 + *(a4 + 20);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, ContactAttributeViewModel);
  }

  return result;
}

void sub_2669A1724(uint64_t a1)
{
  sub_26699AD38(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for GetContactAttributeViewModel(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_2669A17AC()
{
  result = qword_2800AC150;
  if (!qword_2800AC150)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2800AC138, &qword_2669C7AF8);
    sub_26699A174(&qword_2800AC158, &qword_2800AC160, &qword_2669C7BA8, MEMORY[0x277D63B90]);
    sub_26699A174(&qword_2800AC168, &qword_2800AC170, &qword_2669C7BB0, MEMORY[0x277CE0740]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800AC150);
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

unint64_t sub_2669A18F0()
{
  result = qword_2800AC1A0;
  if (!qword_2800AC1A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2800AC188, &qword_2669C7BD0);
    sub_2669A1D2C(&qword_2800AC1A8, MEMORY[0x277D63D08], MEMORY[0x277D63CF0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800AC1A0);
  }

  return result;
}

uint64_t sub_2669A19AC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AC188, &qword_2669C7BD0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2669A1A14()
{
  ContactAttributeMultiResultView = type metadata accessor for GetContactAttributeMultiResultView(0);
  OUTLINED_FUNCTION_2_2(ContactAttributeMultiResultView);
  OUTLINED_FUNCTION_1_3(*(v1 + 80));

  return sub_2669A0850();
}

uint64_t objectdestroyTm_0()
{
  v1 = (type metadata accessor for GetContactAttributeMultiResultView(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);

  v5 = (v0 + v3 + v1[7]);
  __swift_destroy_boxed_opaque_existential_0(v5);
  ContactAttributeViewModel = type metadata accessor for GetContactAttributeViewModel(0);
  v7 = *(ContactAttributeViewModel + 20);
  sub_2669C5B04();
  OUTLINED_FUNCTION_0_1();
  (*(v8 + 8))(&v5[v7]);
  v9 = *(ContactAttributeViewModel + 24);
  sub_2669C5D44();
  OUTLINED_FUNCTION_0_1();
  (*(v10 + 8))(&v5[v9]);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_2669A1BA4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  ContactAttributeMultiResultView = type metadata accessor for GetContactAttributeMultiResultView(0);
  OUTLINED_FUNCTION_2_2(ContactAttributeMultiResultView);

  return sub_2669A0970(a1, a2);
}

unint64_t sub_2669A1C20()
{
  result = qword_2800AC1E8;
  if (!qword_2800AC1E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2800AC1E0, &qword_2669C7C08);
    sub_26699A174(&qword_2800AC1F0, &qword_2800AC1F8, &qword_2669C7C10, MEMORY[0x277CE1198]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800AC1E8);
  }

  return result;
}

unint64_t sub_2669A1CD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_2800AC200;
  if (!qword_2800AC200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800AC200);
  }

  return result;
}

uint64_t sub_2669A1D2C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2669A1D74()
{
  sub_26699A018(*(v0 + 16), *(v0 + 24), *(v0 + 32));

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_2669A1DB8(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
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

unint64_t sub_2669A1E3C()
{
  result = qword_2800AC228;
  if (!qword_2800AC228)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2800AC230, &unk_2669C80D0);
    sub_2669A1EC8();
    sub_2669A1FF8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800AC228);
  }

  return result;
}

unint64_t sub_2669A1EC8()
{
  result = qword_2800AC238;
  if (!qword_2800AC238)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2800AC240, &unk_2669C7C30);
    sub_2669A1F4C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800AC238);
  }

  return result;
}

unint64_t sub_2669A1F7C()
{
  result = qword_2800AC258;
  if (!qword_2800AC258)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2800AC260, &unk_2669C7C40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800AC258);
  }

  return result;
}

unint64_t sub_2669A1FF8()
{
  result = qword_2800AC268;
  if (!qword_2800AC268)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2800AC270, &unk_2669C80F0);
    sub_2669A1F4C();
    sub_2669A1DB8(&qword_2800AC278, &qword_2800AC280, &unk_2669C7C50, sub_2669A1F4C);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800AC268);
  }

  return result;
}

uint64_t sub_2669A20B0(uint64_t result, uint64_t a2, char a3)
{
  if ((a3 & 1) == 0)
  {
    return sub_2669A20C0(result, a2, BYTE4(a2) & 1);
  }

  return result;
}

uint64_t sub_2669A20C0(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
    return sub_2669A20E8(a1, a2, BYTE3(a2) & 1);
  }

  else
  {
    return sub_2669A20D4(a1, a2);
  }
}

uint64_t sub_2669A20DC(uint64_t result, uint64_t a2, char a3)
{
  if ((a3 & 1) == 0)
  {
  }

  return v3;
}

uint64_t sub_2669A20E8(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
    return sub_2669A20FC(a1, a2, BYTE2(a2) & 1);
  }

  else
  {
    return sub_2669A20DC(a1, a2, BYTE1(a2) & 1);
  }
}

uint64_t sub_2669A20FC(uint64_t result, uint64_t a2, char a3)
{
  if ((a3 & 1) == 0)
  {
    return sub_2669A20DC(result, a2, BYTE1(a2) & 1);
  }

  return result;
}

unint64_t sub_2669A210C()
{
  result = qword_2800AC298;
  if (!qword_2800AC298)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2800AC2A0, &qword_2669C7C60);
    sub_2669A1F4C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800AC298);
  }

  return result;
}

uint64_t sub_2669A2198(uint64_t result, uint64_t a2, char a3)
{
  if ((a3 & 1) == 0)
  {
    return sub_2669A21A8(result, a2, BYTE2(a2) & 1);
  }

  return result;
}

uint64_t sub_2669A21A8(uint64_t result, uint64_t a2, char a3)
{
  if (a3)
  {
    return sub_2669A20DC(result, a2, BYTE1(a2) & 1);
  }

  return result;
}

uint64_t sub_2669A21C0()
{
  sub_2669C5A94();
  OUTLINED_FUNCTION_0_1();
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  (*(v1 + 8))(v0 + v3);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_2669A223C@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_2669C5A94();
  OUTLINED_FUNCTION_2_2(v2);
  OUTLINED_FUNCTION_1_3(*(v3 + 80));

  return sub_2669A13A4(a1);
}

uint64_t sub_2669A22A8(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t static Signpost.beginEnabled(_:)()
{
  if (qword_2800ABEB0 != -1)
  {
    OUTLINED_FUNCTION_1_4(&qword_2800ABEB0);
  }

  v0 = qword_2800AC2A8;
  sub_2669C5C54();
  sub_2669C68C4();
  OUTLINED_FUNCTION_2_3();
  sub_2669C5C34();
  v1 = type metadata accessor for Signpost.OpenSignpost(0);
  return OUTLINED_FUNCTION_3_2(v1);
}

uint64_t sub_2669A23AC()
{
  sub_2669A28B0();
  result = sub_2669C6964();
  qword_2800AC2A8 = result;
  return result;
}

uint64_t type metadata accessor for Signpost.OpenSignpost(uint64_t a1)
{
  result = qword_2800AC2B0;
  if (!qword_2800AC2B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id static Signpost.contactsLog.getter()
{
  if (qword_2800ABEB0 != -1)
  {
    OUTLINED_FUNCTION_1_4(&qword_2800ABEB0);
  }

  v1 = qword_2800AC2A8;

  return v1;
}

uint64_t static Signpost.begin(_:)()
{
  if (qword_2800ABEB0 != -1)
  {
    OUTLINED_FUNCTION_1_4(&qword_2800ABEB0);
  }

  v0 = qword_2800AC2A8;
  sub_2669C5C54();
  sub_2669C68C4();
  OUTLINED_FUNCTION_2_3();
  sub_2669C5C44();
  v1 = type metadata accessor for Signpost.OpenSignpost(0);
  return OUTLINED_FUNCTION_3_2(v1);
}

Swift::Void __swiftcall Signpost.OpenSignpost.end()()
{
  sub_2669C68B4();
  if (qword_2800ABEB0 != -1)
  {
    OUTLINED_FUNCTION_1_4(&qword_2800ABEB0);
  }

  type metadata accessor for Signpost.OpenSignpost(0);

  sub_2669C5C44();
}

_BYTE *storeEnumTagSinglePayload for Signpost(_BYTE *result, int a2, int a3)
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
        return result;
      case 2:
        *result = a2;
        return result;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        return result;
      default:
        return result;
    }
  }

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
      JUMPOUT(0x2669A26D8);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_2669A2724(uint64_t a1, uint64_t a2)
{
  v4 = sub_2669C5C64();

  return __swift_getEnumTagSinglePayload(a1, a2, v4);
}

uint64_t sub_2669A2780(uint64_t a1, uint64_t a2)
{
  v4 = sub_2669C5C64();

  return __swift_storeEnumTagSinglePayload(a1, a2, a2, v4);
}

uint64_t sub_2669A27CC(uint64_t a1)
{
  result = sub_2669C5C64();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for SignpostName(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 17))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for SignpostName(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 17) = v3;
  return result;
}

unint64_t sub_2669A28B0()
{
  result = qword_2800AC2C0;
  if (!qword_2800AC2C0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800AC2C0);
  }

  return result;
}

void OUTLINED_FUNCTION_0_2(uint64_t a1@<X8>)
{
  *a1 = v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = 2;
}

uint64_t OUTLINED_FUNCTION_1_4(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_3_2(uint64_t result)
{
  v5 = v1 + *(result + 20);
  *v5 = v2;
  *(v5 + 8) = v3;
  *(v5 + 16) = v4;
  return result;
}

uint64_t sub_2669A2950()
{
  v0 = sub_2669C60E4();
  OUTLINED_FUNCTION_2();
  v2 = v1;
  MEMORY[0x28223BE20](v3);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = 0x4040000000000000;
  v6 = *MEMORY[0x277CE0A68];
  v7 = *(v2 + 104);
  v8 = v7(v5, v6, v0);
  sub_26699BF8C(v8, v9, v10);
  sub_2669C5D84();
  type metadata accessor for SiriContactsGCAButtonStyle(0);
  v13 = 0x4030000000000000;
  v7(v5, v6, v0);
  return sub_2669C5D84();
}

uint64_t type metadata accessor for SiriContactsGCAButtonStyle(uint64_t a1)
{
  result = qword_2800AC2D0;
  if (!qword_2800AC2D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2669A2B00(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AC2C8, qword_2669C7CD0);

  return __swift_getEnumTagSinglePayload(a1, a2, v4);
}

uint64_t sub_2669A2B68(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AC2C8, qword_2669C7CD0);

  return __swift_storeEnumTagSinglePayload(a1, a2, a2, v4);
}

void sub_2669A2BC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_2669A2C2C(319, a2, a3);
  if (v3 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_2669A2C2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!qword_2800AC2E0)
  {
    sub_26699BF8C(0, a2, a3);
    v3 = sub_2669C5DA4();
    if (!v4)
    {
      atomic_store(v3, &qword_2800AC2E0);
    }
  }
}

uint64_t sub_2669A2CA4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v40[1] = a1;
  v44 = a2;
  sub_2669C5F74();
  OUTLINED_FUNCTION_2();
  v42 = v2;
  v43 = v3;
  MEMORY[0x28223BE20](v2);
  v41 = v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AC2E8, &qword_2669C81D0);
  OUTLINED_FUNCTION_3_3();
  MEMORY[0x28223BE20](v5);
  v7 = v40 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AC2F0, &qword_2669C7D50) - 8;
  OUTLINED_FUNCTION_3_3();
  MEMORY[0x28223BE20](v9);
  v11 = v40 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AC2F8, &qword_2669C7D58) - 8;
  OUTLINED_FUNCTION_3_3();
  MEMORY[0x28223BE20](v13);
  v15 = v40 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AC300, &qword_2669C7D60);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3_3();
  MEMORY[0x28223BE20](v17);
  v19 = v40 - v18;
  sub_2669C6024();
  type metadata accessor for SiriContactsGCAButtonStyle(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AC2C8, qword_2669C7CD0);
  sub_2669C5D94();
  v20 = sub_2669C60A4();
  __swift_storeEnumTagSinglePayload(v7, 1, 1, v20);
  v21 = sub_2669C60C4();
  sub_26699A428(v7, &qword_2800AC2E8, &qword_2669C81D0);
  KeyPath = swift_getKeyPath();
  v23 = &v11[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AC308, &qword_2669C7D98) + 36)];
  *v23 = KeyPath;
  v23[1] = v21;
  sub_2669C5D94();
  sub_2669C5D94();
  sub_2669C63F4();
  sub_2669C5DB4();
  v24 = &v11[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AC310, &qword_2669C7DA0) + 36)];
  v25 = v46;
  *v24 = v45;
  *(v24 + 1) = v25;
  *(v24 + 2) = v47;
  v26 = sub_2669C5FD4();
  LOBYTE(v21) = sub_2669C6084();
  v27 = &v11[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AC318, &qword_2669C7DA8) + 36)];
  *v27 = v26;
  v27[4] = v21;
  *&v11[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AC320, &unk_2669C7DB0) + 36)] = 256;
  v11[*(v8 + 44)] = 0;
  if (sub_2669C6034())
  {
    v28 = 0.5;
  }

  else
  {
    v28 = 0.8;
  }

  sub_2669A3150(v11, v15, &qword_2800AC2F0, &qword_2669C7D50);
  *&v15[*(v12 + 44)] = v28;
  if (sub_2669C6034())
  {
    v29 = 0.98;
  }

  else
  {
    v29 = 1.0;
  }

  sub_2669C6404();
  v31 = v30;
  v33 = v32;
  sub_2669A3150(v15, v19, &qword_2800AC2F8, &qword_2669C7D58);
  v34 = &v19[*(v16 + 36)];
  *v34 = v29;
  *(v34 + 1) = v29;
  *(v34 + 2) = v31;
  *(v34 + 3) = v33;
  v35 = v41;
  sub_2669C5F64();
  sub_2669A31B0();
  OUTLINED_FUNCTION_0_3();
  sub_2669A3664(v36, v37, MEMORY[0x277CDDE70]);
  v38 = v42;
  sub_2669C6204();
  (*(v43 + 8))(v35, v38);
  return sub_26699A428(v19, &qword_2800AC300, &qword_2669C7D60);
}

uint64_t sub_2669A3150(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_0();
  (*(v6 + 32))(a2, a1);
  return a2;
}

unint64_t sub_2669A31B0()
{
  result = qword_2800AC328;
  if (!qword_2800AC328)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2800AC300, &qword_2669C7D60);
    sub_2669A323C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800AC328);
  }

  return result;
}

unint64_t sub_2669A323C()
{
  result = qword_2800AC330;
  if (!qword_2800AC330)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2800AC2F8, &qword_2669C7D58);
    sub_2669A32C8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800AC330);
  }

  return result;
}

unint64_t sub_2669A32C8()
{
  result = qword_2800AC338;
  if (!qword_2800AC338)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2800AC2F0, &qword_2669C7D50);
    sub_2669A3380();
    sub_26699A174(&qword_2800AC388, &qword_2800AC390, qword_2669C7DD0, MEMORY[0x277CE0470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800AC338);
  }

  return result;
}

unint64_t sub_2669A3380()
{
  result = qword_2800AC340;
  if (!qword_2800AC340)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2800AC320, &unk_2669C7DB0);
    sub_2669A3438();
    sub_26699A174(&qword_2800AC378, &qword_2800AC380, &qword_2669C7DC8, MEMORY[0x277CDF4F0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800AC340);
  }

  return result;
}

unint64_t sub_2669A3438()
{
  result = qword_2800AC348;
  if (!qword_2800AC348)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2800AC318, &qword_2669C7DA8);
    sub_2669A34F0();
    sub_26699A174(&qword_2800AC368, &qword_2800AC370, &qword_2669C7DC0, MEMORY[0x277CE0728]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800AC348);
  }

  return result;
}

unint64_t sub_2669A34F0()
{
  result = qword_2800AC350;
  if (!qword_2800AC350)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2800AC310, &qword_2669C7DA0);
    sub_2669A357C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800AC350);
  }

  return result;
}

unint64_t sub_2669A357C()
{
  result = qword_2800AC358;
  if (!qword_2800AC358)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2800AC308, &qword_2669C7D98);
    sub_2669A3664(&qword_2800AC360, MEMORY[0x277CDE278], MEMORY[0x277CDE270]);
    sub_26699A174(&qword_2800ABFE0, &qword_2800ABFE8, &qword_2669C7760, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800AC358);
  }

  return result;
}

uint64_t sub_2669A3664(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2669A36AC()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2800AC300, &qword_2669C7D60);
  sub_2669C5F74();
  sub_2669A31B0();
  OUTLINED_FUNCTION_0_3();
  sub_2669A3664(v0, v1, MEMORY[0x277CDDE70]);
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_2669A3788(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_2800AC3A0;
  if (!qword_2800AC3A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800AC3A0);
  }

  return result;
}

BOOL sub_2669A37DC()
{
  sub_2669C5E04();
  sub_2669A45BC();
  sub_2669C67D4();
  sub_2669C6804();
  return v2 == v1;
}

uint64_t sub_2669A3848(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = sub_2669A37DC();
  if ((result & 1) == 0)
  {
    sub_2669A3998(a5);
    v10 = v9;
    v11 = sub_2669A3F14();
    MEMORY[0x28223BE20](v11);
    OUTLINED_FUNCTION_0_4();
    v15 = sub_2669A3F84(sub_2669A4648, v12, v13, v14);
    v16 = *(v15 + 16);
    if (v16)
    {
      v17 = (v15 + 32);
      v18 = 0.0;
      do
      {
        v19 = *v17++;
        v18 = v18 + v19;
        --v16;
      }

      while (v16);
    }

    sub_2669C5E04();
    sub_2669A45BC();
    OUTLINED_FUNCTION_1_5();
    sub_2669C67D4();
    OUTLINED_FUNCTION_1_5();
    sub_2669C6804();
    result = OUTLINED_FUNCTION_3_4();
    if ((a2 & 1) != 0 || v10 >= *&a1)
    {
      OUTLINED_FUNCTION_1_5();
      sub_2669C67D4();
      OUTLINED_FUNCTION_1_5();
      sub_2669C6804();
      return OUTLINED_FUNCTION_3_4();
    }
  }

  return result;
}

void *sub_2669A3998(uint64_t a1)
{
  *&v28.f64[0] = sub_2669C5DF4();
  v2 = *(*&v28.f64[0] - 8);
  MEMORY[0x28223BE20](*&v28.f64[0]);
  v4 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2669C5E04();
  sub_2669A45BC();
  v5 = sub_2669C67E4();
  v7 = MEMORY[0x277D84F90];
  if (v5)
  {
    v8 = v5;
    v31 = MEMORY[0x277D84F90];
    sub_2669C0F78(0, v5 & ~(v5 >> 63), 0);
    v7 = v31;
    result = sub_2669C67D4();
    if (v8 < 0)
    {
      __break(1u);
      return result;
    }

    v27 = (v2 + 16);
    do
    {
      v10 = sub_2669C6824();
      v11 = v28.f64[0];
      (*v27)(v4);
      v10(v30, 0);
      sub_2669C5E44();
      v30[0] = v12 & 1;
      v29 = v13 & 1;
      sub_2669C5DC4();
      v15 = v14;
      v17 = v16;
      (*(v2 + 8))(v4, COERCE_FLOAT64_T(*&v11));
      v31 = v7;
      v18 = a1;
      v20 = *(v7 + 16);
      v19 = *(v7 + 24);
      if (v20 >= v19 >> 1)
      {
        sub_2669C0F78(v19 > 1, v20 + 1, 1);
        v7 = v31;
      }

      *(v7 + 16) = v20 + 1;
      v21 = v7 + 16 * v20;
      *(v21 + 32) = v15;
      *(v21 + 40) = v17;
      sub_2669C6814();
      --v8;
      a1 = v18;
    }

    while (v8);
  }

  v22 = *(v7 + 16);
  if (v22)
  {
    v23 = (v7 + 32);
    v24 = 0uLL;
    do
    {
      v25 = *v23++;
      v24 = vbslq_s8(vcgeq_f64(v25, v24), v25, v24);
      --v22;
    }

    while (v22);
    v28 = v24;
  }

  else
  {
    v6.f64[0] = 0.0;
    v28 = v6;
  }
}

uint64_t sub_2669A3C24(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_2669C5DF4();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_2669A37DC();
  if ((result & 1) == 0)
  {
    sub_2669A3998(a5);
    v14 = v13;
    v16 = v15;
    v17 = sub_2669A3F14();
    MEMORY[0x28223BE20](v17);
    OUTLINED_FUNCTION_0_4();
    v21 = sub_2669A3F84(sub_2669A459C, v18, v19, v20);
    v22 = v21;
    if ((a2 & 1) == 0 && v14 < *&a1)
    {
      v23 = *(v21 + 16);
      if (v23)
      {
        v24 = (v21 + 32);
        v25 = 0.0;
        do
        {
          v26 = *v24++;
          v25 = v25 + v26;
          --v23;
        }

        while (v23);
      }

      else
      {
        v25 = 0.0;
      }

      v27 = *&a1 - v25;
      sub_2669C5E04();
      sub_2669A45BC();
      sub_2669C67D4();
      sub_2669C6804();
      v14 = v27 / sub_2669C67F4();
    }

    v39.origin.x = OUTLINED_FUNCTION_2_4();
    MinX = CGRectGetMinX(v39);
    result = sub_2669A3F14();
    if (result == v29)
    {
    }

    v30 = result;
    v31 = v29;
    if (v29 < result)
    {
      __break(1u);
    }

    else if (result < v29)
    {
      if ((result & 0x8000000000000000) == 0)
      {
        v32 = *(v22 + 16);
        if (result < v32 && v29 - 1 < v32)
        {
          v36 = v16;
          v34 = MinX + v14 * 0.5;
          v35 = (v9 + 8);
          do
          {
            sub_2669C5E14();
            v40.origin.x = OUTLINED_FUNCTION_2_4();
            CGRectGetMidY(v40);
            sub_2669C6404();
            v38 = 0;
            LOBYTE(v37) = 0;
            sub_2669C5DD4();
            (*v35)(v11, v8);
            v34 = v34 + v14 + *(v22 + 8 * v30++ + 32);
          }

          while (v31 != v30);
        }

LABEL_25:
        __break(1u);
        return result;
      }

LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    __break(1u);
    goto LABEL_24;
  }

  return result;
}

uint64_t sub_2669A3F14()
{
  sub_2669C5E04();
  sub_2669A45BC();
  sub_2669C67D4();
  sub_2669C6804();
  result = v2;
  if (v1 < v2)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2669A3F84(void (*a1)(uint64_t *__return_ptr, uint64_t *), uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a4 - a3;
  if (__OFSUB__(a4, a3))
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v6 = MEMORY[0x277D84F90];
  if (!v5)
  {
    return v6;
  }

  v18 = MEMORY[0x277D84F90];
  sub_2669C0F98(0, v5 & ~(v5 >> 63), 0);
  if ((v5 & 0x8000000000000000) == 0)
  {
    v9 = 0;
    v6 = v18;
    while (v9 < v5)
    {
      v10 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        goto LABEL_15;
      }

      v16 = a3 + v9;
      a1(&v17, &v16);
      if (v4)
      {
        goto LABEL_20;
      }

      v11 = v17;
      v18 = v6;
      v13 = *(v6 + 16);
      v12 = *(v6 + 24);
      if (v13 >= v12 >> 1)
      {
        sub_2669C0F98(v12 > 1, v13 + 1, 1);
        v6 = v18;
      }

      *(v6 + 16) = v13 + 1;
      *(v6 + 8 * v13 + 32) = v11;
      if (a4 < a3)
      {
        goto LABEL_16;
      }

      ++v9;
      if ((a3 + v9 - 1) >= a4)
      {
        goto LABEL_17;
      }

      if (v10 == v5)
      {
        return v6;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

LABEL_19:
  __break(1u);
LABEL_20:

  __break(1u);
  return result;
}

uint64_t sub_2669A40F0@<X0>(uint64_t *a1@<X0>, double *a2@<X8>)
{
  v28 = a2;
  v3 = sub_2669C5D74();
  v26 = *(v3 - 8);
  v27 = v3;
  v4 = MEMORY[0x28223BE20](v3);
  v25 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v7 = &v24 - v6;
  v24 = sub_2669C5DF4();
  v8 = *(v24 - 8);
  v9 = MEMORY[0x28223BE20](v24);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v24 - v12;
  v14 = *a1;
  sub_2669C5E04();
  sub_2669A45BC();
  sub_2669C67D4();
  sub_2669C6804();
  result = sub_2669C67F4();
  if (__OFSUB__(result, 1))
  {
    __break(1u);
  }

  else
  {
    v16 = 0;
    if (v14 < result - 1)
    {
      sub_2669C5E14();
      sub_2669C5DE4();
      v17 = *(v8 + 8);
      v18 = v13;
      v19 = v24;
      v17(v18, v24);
      sub_2669C5E14();
      v20 = v25;
      sub_2669C5DE4();
      v17(v11, v19);
      sub_2669C5D64();
      v16 = v21;
      v22 = v27;
      v23 = *(v26 + 8);
      v23(v20, v27);
      result = (v23)(v7, v22);
    }

    *v28 = v16;
  }

  return result;
}

uint64_t (*sub_2669A4484(uint64_t *a1))()
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v2;
  v2[4] = sub_2669C5D04();
  return sub_2669A44F8;
}

void sub_2669A44F8(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

unint64_t sub_2669A4548(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_2800AC3A8;
  if (!qword_2800AC3A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800AC3A8);
  }

  return result;
}

unint64_t sub_2669A45BC()
{
  result = qword_2800AC3B0;
  if (!qword_2800AC3B0)
  {
    sub_2669C5E04();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800AC3B0);
  }

  return result;
}

void *__swift_coroFrameAllocStub(size_t a1)
{
  if (MEMORY[0x277D84FD8])
  {
    return swift_coroFrameAlloc();
  }

  return malloc(a1);
}

uint64_t OUTLINED_FUNCTION_3_4()
{

  return sub_2669C67F4();
}

uint64_t __swift_memcpy11_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 7) = *(a2 + 7);
  *result = v2;
  return result;
}

uint64_t sub_2669A46D4(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 11))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 <= 1)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2669A4714(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 10) = 0;
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 11) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 11) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t sub_2669A4788@<X0>(uint64_t a1@<X1>, int a2@<W2>, uint64_t a3@<X8>)
{
  v191 = a2;
  v184 = a1;
  v190 = a3;
  ContactQuickActionButtonLabelStyle = type metadata accessor for GetContactQuickActionButtonLabelStyle(0);
  v4 = OUTLINED_FUNCTION_0_5(ContactQuickActionButtonLabelStyle, &__src[4]);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_4_1(v6 - v5);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AC3B8, &qword_2669C7FD8);
  OUTLINED_FUNCTION_0_5(v7, &__src[5]);
  OUTLINED_FUNCTION_3_3();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_4_1(v9);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AC3C0, &qword_2669C7FE0);
  OUTLINED_FUNCTION_0_5(v10, &__src[7]);
  OUTLINED_FUNCTION_3_3();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_4_1(v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AC3C8, &qword_2669C7FE8);
  OUTLINED_FUNCTION_0_5(v13, &__src[8]);
  OUTLINED_FUNCTION_3_3();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_4_1(v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AC3D0, &qword_2669C7FF0);
  OUTLINED_FUNCTION_0_5(v16, &v194);
  OUTLINED_FUNCTION_3_3();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_4_1(v18);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AC3D8, &qword_2669C7FF8);
  OUTLINED_FUNCTION_0_5(v19, &__src[12]);
  OUTLINED_FUNCTION_3_3();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_4_1(v21);
  v189 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AC3E0, &qword_2669C8000);
  OUTLINED_FUNCTION_0();
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_4_1(&v166[-v24]);
  v187 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AC3E8, &qword_2669C8008);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3_3();
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_9();
  v188 = v26;
  v186 = sub_2669C5D44();
  OUTLINED_FUNCTION_2();
  v185 = v27;
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_4_1(&v166[-v30]);
  v180 = sub_2669C5F54();
  OUTLINED_FUNCTION_2();
  v179 = v31;
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_4_1(v34 - v33);
  v35 = sub_2669C60E4();
  OUTLINED_FUNCTION_2();
  v37 = v36;
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_1_1();
  v41 = v40 - v39;
  ContactQuickActionButtonLabelStyleIconOnly = type metadata accessor for GetContactQuickActionButtonLabelStyleIconOnly(0);
  v43 = OUTLINED_FUNCTION_0_5(ContactQuickActionButtonLabelStyleIconOnly, &v187);
  MEMORY[0x28223BE20](v43);
  OUTLINED_FUNCTION_1_1();
  v46 = v45 - v44;
  v47 = sub_2669C6044();
  OUTLINED_FUNCTION_2();
  v49 = v48;
  MEMORY[0x28223BE20](v50);
  OUTLINED_FUNCTION_1_1();
  v53 = v52 - v51;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AC3F0, &qword_2669C8010);
  OUTLINED_FUNCTION_0_5(v54, &v186);
  OUTLINED_FUNCTION_3_3();
  MEMORY[0x28223BE20](v55);
  v57 = &v166[-v56];
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AC3F8, &qword_2669C8018);
  OUTLINED_FUNCTION_0_5(v58, &v188);
  OUTLINED_FUNCTION_3_3();
  MEMORY[0x28223BE20](v59);
  v61 = &v166[-v60];
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AC400, &qword_2669C8020);
  OUTLINED_FUNCTION_0_5(v62, &v190);
  OUTLINED_FUNCTION_3_3();
  MEMORY[0x28223BE20](v63);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_4_1(v64);
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AC408, &qword_2669C8028);
  OUTLINED_FUNCTION_0_5(v65, &v189);
  OUTLINED_FUNCTION_3_3();
  MEMORY[0x28223BE20](v66);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_4_1(v67);
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AC410, &qword_2669C8030);
  v69 = OUTLINED_FUNCTION_0_5(v68, &v195);
  MEMORY[0x28223BE20](v69);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v70);
  OUTLINED_FUNCTION_4_1(&v166[-v71]);
  sub_2669C6054();
  if ((v191 & 0x100) != 0)
  {
    __src[0] = 0x4030000000000000;
    v88 = (*(v37 + 104))(v41, *MEMORY[0x277CE0A68], v35);
    sub_26699BF8C(v88, v89, v90);
    sub_2669C5D84();
    OUTLINED_FUNCTION_5();
    sub_2669A5A88(v91, v92, MEMORY[0x277CDE4F8]);
    sub_2669A5A88(&qword_2800AC460, type metadata accessor for GetContactQuickActionButtonLabelStyleIconOnly, &unk_2669C87D0);
    sub_2669C6204();
    sub_2669A5F4C(v46, type metadata accessor for GetContactQuickActionButtonLabelStyleIconOnly);
    (*(v49 + 8))(v53, v47);
    sub_2669C6084();
    OUTLINED_FUNCTION_7_0();
    v94 = &v57[v93];
    *v94 = v95;
    __asm { FMOV            V0.2D, #12.0 }

    *(v94 + 8) = _Q0;
    v182 = _Q0;
    *(v94 + 24) = _Q0;
    v94[40] = 0;
    sub_2669C63F4();
    OUTLINED_FUNCTION_10();
    sub_2669A5FA4(v57, v61, &qword_2800AC3F0, &qword_2669C8010);
    OUTLINED_FUNCTION_7_0();
    memcpy(&v61[v101], __src, 0x70uLL);
    v102 = v191;
    v103 = v61;
    if (v191)
    {
      v104 = v184;
    }

    else
    {
      v137 = v184;

      sub_2669C6874();
      v138 = sub_2669C6064();
      OUTLINED_FUNCTION_16(v138, &dword_266996000, v139, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.");

      sub_2669C5F44();
      swift_getAtKeyPath();
      sub_2669A56B0(v137, 0);
      v140 = OUTLINED_FUNCTION_11();
      v141(v140);
      v104 = v192;
    }

    if (v104)
    {
      v142 = 1.0;
    }

    else
    {
      v142 = 0.5;
    }

    v143 = v167;
    sub_2669A5FA4(v103, v167, &qword_2800AC3F8, &qword_2669C8018);
    OUTLINED_FUNCTION_7_0();
    *(v143 + v144) = v142;
    OUTLINED_FUNCTION_7_0();
    v145 = v169;
    sub_2669C63E4();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AC428, &qword_2669C8068);
    v146 = *(OUTLINED_FUNCTION_17() + 20);
    v147 = *MEMORY[0x277CE0118];
    sub_2669C5F84();
    OUTLINED_FUNCTION_0();
    (*(v148 + 104))(v103 + v146, v147);
    OUTLINED_FUNCTION_14(v182);
    sub_2669A5FA4(v143, v145, &qword_2800AC400, &qword_2669C8020);
    KeyPath = swift_getKeyPath();
    v150 = v185;
    v151 = MEMORY[0x277CDF3C0];
    if ((v102 & 0x10000) != 0)
    {
      v151 = MEMORY[0x277CDF3D0];
    }

    v152 = v175;
    v153 = v186;
    (*(v185 + 104))(v175, *v151, v186);
    v154 = v168;
    v155 = (v168 + *(v183 + 36));
    v156 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AC430, &qword_2669C80A0);
    (*(v150 + 32))(v155 + *(v156 + 28), v152, v153);
    *v155 = KeyPath;
    sub_2669A5FA4(v145, v154, &qword_2800AC408, &qword_2669C8028);
    v126 = &qword_2800AC410;
    v127 = &qword_2669C8030;
    v128 = v170;
    OUTLINED_FUNCTION_13();
    sub_2669A5FA4(v157, v158, v159, v160);
    OUTLINED_FUNCTION_13();
    sub_2669A5FF4(v161, v162, v163, v164);
    swift_storeEnumTagMultiPayload();
    sub_2669A56C4();
    sub_2669A5AD0();
  }

  else
  {
    v72 = v171;
    sub_2669B9574();
    OUTLINED_FUNCTION_5();
    sub_2669A5A88(v73, v74, MEMORY[0x277CDE4F8]);
    sub_2669A5A88(&qword_2800AC420, type metadata accessor for GetContactQuickActionButtonLabelStyle, &unk_2669C8808);
    v75 = v173;
    sub_2669C6204();
    sub_2669A5F4C(v72, type metadata accessor for GetContactQuickActionButtonLabelStyle);
    (*(v49 + 8))(v53, v47);
    sub_2669C6084();
    OUTLINED_FUNCTION_7_0();
    v77 = v75 + v76;
    *v77 = v78;
    *(v77 + 8) = xmmword_2669C7EE0;
    *(v77 + 24) = xmmword_2669C7EE0;
    *(v77 + 40) = 0;
    sub_2669C63F4();
    OUTLINED_FUNCTION_10();
    v79 = v75;
    v80 = v174;
    sub_2669A5FA4(v79, v174, &qword_2800AC3B8, &qword_2669C7FD8);
    OUTLINED_FUNCTION_7_0();
    memcpy((v80 + v81), __src, 0x70uLL);
    v82 = swift_getKeyPath();
    v83 = v172;
    sub_2669A5FA4(v80, v172, &qword_2800AC3C0, &qword_2669C7FE0);
    OUTLINED_FUNCTION_7_0();
    v85 = v83 + v84;
    *v85 = v82;
    *(v85 + 8) = 1;
    *(v85 + 16) = 0;
    v86 = v191;
    if (v191)
    {
      v87 = v184;
    }

    else
    {
      v105 = v184;

      sub_2669C6874();
      v106 = sub_2669C6064();
      OUTLINED_FUNCTION_16(v106, &dword_266996000, v107, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.");

      sub_2669C5F44();
      swift_getAtKeyPath();
      sub_2669A56B0(v105, 0);
      v108 = OUTLINED_FUNCTION_11();
      v109(v108);
      v87 = v192;
    }

    if (v87)
    {
      v110 = 1.0;
    }

    else
    {
      v110 = 0.5;
    }

    v111 = v177;
    sub_2669A5FA4(v83, v177, &qword_2800AC3C8, &qword_2669C7FE8);
    OUTLINED_FUNCTION_7_0();
    *(v111 + v112) = v110;
    OUTLINED_FUNCTION_7_0();
    v113 = v181;
    sub_2669C63E4();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AC428, &qword_2669C8068);
    v114 = *(OUTLINED_FUNCTION_17() + 20);
    v115 = *MEMORY[0x277CE0118];
    sub_2669C5F84();
    OUTLINED_FUNCTION_0();
    (*(v116 + 104))(v83 + v114, v115);
    __asm { FMOV            V0.2D, #12.0 }

    OUTLINED_FUNCTION_14(_Q0);
    sub_2669A5FA4(v111, v113, &qword_2800AC3D0, &qword_2669C7FF0);
    v118 = swift_getKeyPath();
    v119 = v185;
    v120 = MEMORY[0x277CDF3C0];
    if ((v86 & 0x10000) != 0)
    {
      v120 = MEMORY[0x277CDF3D0];
    }

    v121 = v176;
    v122 = v186;
    (*(v185 + 104))(v176, *v120, v186);
    v123 = v178;
    v124 = (v178 + *(v189 + 36));
    v125 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AC430, &qword_2669C80A0);
    (*(v119 + 32))(v124 + *(v125 + 28), v121, v122);
    *v124 = v118;
    sub_2669A5FA4(v113, v123, &qword_2800AC3D8, &qword_2669C7FF8);
    v126 = &qword_2800AC3E0;
    v127 = &qword_2669C8000;
    v128 = v182.n128_u64[0];
    OUTLINED_FUNCTION_13();
    sub_2669A5FA4(v129, v130, v131, v132);
    OUTLINED_FUNCTION_13();
    sub_2669A5FF4(v133, v134, v135, v136);
    swift_storeEnumTagMultiPayload();
    sub_2669A56C4();
    sub_2669A5AD0();
  }

  sub_2669C5FB4();
  return sub_26699A428(v128, v126, v127);
}

uint64_t sub_2669A566C@<X0>(uint64_t a1@<X8>)
{
  if (*(v1 + 10))
  {
    v2 = 0x10000;
  }

  else
  {
    v2 = 0;
  }

  if (*(v1 + 9))
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  return sub_2669A4788(*v1, v2 | v3 | *(v1 + 8), a1);
}

uint64_t sub_2669A56B0(uint64_t result, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return v2;
}

unint64_t sub_2669A56C4()
{
  result = qword_2800AC438;
  if (!qword_2800AC438)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2800AC410, &qword_2669C8030);
    sub_2669A577C();
    sub_26699A174(&qword_2800AC470, &qword_2800AC430, &qword_2669C80A0, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800AC438);
  }

  return result;
}

unint64_t sub_2669A577C()
{
  result = qword_2800AC440;
  if (!qword_2800AC440)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2800AC408, &qword_2669C8028);
    sub_2669A5834();
    sub_26699A174(&qword_2800AC468, &qword_2800AC428, &qword_2669C8068, MEMORY[0x277CE08B0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800AC440);
  }

  return result;
}

unint64_t sub_2669A5834()
{
  result = qword_2800AC448;
  if (!qword_2800AC448)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2800AC400, &qword_2669C8020);
    sub_2669A58C0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800AC448);
  }

  return result;
}

unint64_t sub_2669A58C0()
{
  result = qword_2800AC450;
  if (!qword_2800AC450)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2800AC3F8, &qword_2669C8018);
    sub_2669A594C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800AC450);
  }

  return result;
}

unint64_t sub_2669A594C()
{
  result = qword_2800AC458;
  if (!qword_2800AC458)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2800AC3F0, &qword_2669C8010);
    sub_2669C6044();
    type metadata accessor for GetContactQuickActionButtonLabelStyleIconOnly(255);
    sub_2669A5A88(&qword_2800AC418, MEMORY[0x277CDE500], MEMORY[0x277CDE4F8]);
    sub_2669A5A88(&qword_2800AC460, type metadata accessor for GetContactQuickActionButtonLabelStyleIconOnly, &unk_2669C87D0);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800AC458);
  }

  return result;
}

uint64_t sub_2669A5A88(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_2669A5AD0()
{
  result = qword_2800AC478;
  if (!qword_2800AC478)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2800AC3E0, &qword_2669C8000);
    sub_2669A5B88();
    sub_26699A174(&qword_2800AC470, &qword_2800AC430, &qword_2669C80A0, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800AC478);
  }

  return result;
}

unint64_t sub_2669A5B88()
{
  result = qword_2800AC480;
  if (!qword_2800AC480)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2800AC3D8, &qword_2669C7FF8);
    sub_2669A5C40();
    sub_26699A174(&qword_2800AC468, &qword_2800AC428, &qword_2669C8068, MEMORY[0x277CE08B0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800AC480);
  }

  return result;
}

unint64_t sub_2669A5C40()
{
  result = qword_2800AC488;
  if (!qword_2800AC488)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2800AC3D0, &qword_2669C7FF0);
    sub_2669A5CCC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800AC488);
  }

  return result;
}

unint64_t sub_2669A5CCC()
{
  result = qword_2800AC490;
  if (!qword_2800AC490)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2800AC3C8, &qword_2669C7FE8);
    sub_2669A5D84();
    sub_26699A174(&qword_2800AC4A8, &qword_2800AC4B0, &qword_2669C80A8, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800AC490);
  }

  return result;
}

unint64_t sub_2669A5D84()
{
  result = qword_2800AC498;
  if (!qword_2800AC498)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2800AC3C0, &qword_2669C7FE0);
    sub_2669A5E10();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800AC498);
  }

  return result;
}

unint64_t sub_2669A5E10()
{
  result = qword_2800AC4A0;
  if (!qword_2800AC4A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2800AC3B8, &qword_2669C7FD8);
    sub_2669C6044();
    type metadata accessor for GetContactQuickActionButtonLabelStyle(255);
    sub_2669A5A88(&qword_2800AC418, MEMORY[0x277CDE500], MEMORY[0x277CDE4F8]);
    sub_2669A5A88(&qword_2800AC420, type metadata accessor for GetContactQuickActionButtonLabelStyle, &unk_2669C8808);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800AC4A0);
  }

  return result;
}

uint64_t sub_2669A5F4C(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_0();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_2669A5FA4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  OUTLINED_FUNCTION_15(a1, a2, a3, a4);
  OUTLINED_FUNCTION_0();
  (*(v6 + 32))(v4, v5);
  return v4;
}

uint64_t sub_2669A5FF4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  OUTLINED_FUNCTION_15(a1, a2, a3, a4);
  OUTLINED_FUNCTION_0();
  (*(v6 + 16))(v4, v5);
  return v4;
}

unint64_t sub_2669A6048()
{
  result = qword_2800AC4B8;
  if (!qword_2800AC4B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2800AC4C0, &qword_2669C80B0);
    sub_2669A56C4();
    sub_2669A5AD0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800AC4B8);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_10()
{

  return MEMORY[0x2821314A8](0, 1, 0, 1, 0x7FF0000000000000, 0, 0, 1, 0);
}

uint64_t OUTLINED_FUNCTION_15(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{

  return __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
}

uint64_t OUTLINED_FUNCTION_16(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return MEMORY[0x282200C58](v4, a2, v5, a4, 128, 2);
}

uint64_t OUTLINED_FUNCTION_17()
{

  return MEMORY[0x282131468](0);
}

uint64_t sub_2669A6218@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_2669AC930(a1);
  if (v6)
  {
    goto LABEL_8;
  }

  if (*(a1 + 36) != v5)
  {
    __break(1u);
LABEL_8:
    __break(1u);
    return result;
  }

  if (result == 1 << *(a1 + 32))
  {
    v7 = 0;
    v8 = 0;
    v9 = 0;
    v10 = 0;
  }

  else
  {
    v7 = sub_2669AC970(&v12, result, v5, 0, a1);
    v8 = v11;
    v10 = *(&v12 + 1);
    v9 = v12;

    sub_26699BF34(v9, v10);

    result = sub_26699BE60(v9, v10);
  }

  *a2 = v7;
  a2[1] = v8;
  a2[2] = v9;
  a2[3] = v10;
  return result;
}

void sub_2669A62FC(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 == 15)
  {
    if (qword_2800ABEB8 != -1)
    {
      OUTLINED_FUNCTION_1_0(&qword_2800ABEB8);
    }

    v3 = sub_2669C5C94();
    __swift_project_value_buffer(v3, qword_2800ACC88);
    oslog = sub_2669C5C74();
    v4 = sub_2669C6864();
    if (os_log_type_enabled(oslog, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_266996000, oslog, v4, "#GetContactAttributeButtonableView could not obtain direct invocation for button press", v5, 2u);
      MEMORY[0x26D5E4D50](v5, -1, -1);
    }

LABEL_16:

    return;
  }

  sub_26699BEF0();
  v6 = OUTLINED_FUNCTION_3();
  sub_26699BF34(v6, v7);
  OUTLINED_FUNCTION_3();
  v8 = sub_2669C6844();
  if (!v8)
  {
    if (qword_2800ABEB8 != -1)
    {
      OUTLINED_FUNCTION_1_0(&qword_2800ABEB8);
    }

    v13 = sub_2669C5C94();
    __swift_project_value_buffer(v13, qword_2800ACC88);
    oslog = sub_2669C5C74();
    v14 = sub_2669C6864();
    if (os_log_type_enabled(oslog, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_266996000, oslog, v14, "#GetContactAttributeButtonableView could not convert direct invocation to actionable command", v15, 2u);
      MEMORY[0x26D5E4D50](v15, -1, -1);
    }

    v16 = OUTLINED_FUNCTION_3();
    sub_26699BE4C(v16, v17);
    goto LABEL_16;
  }

  if (*v2)
  {
    v9 = v8;
    v10 = *v2;
    sub_2669C65C4();

    v11 = OUTLINED_FUNCTION_3();

    sub_26699BE4C(v11, v12);
  }

  else
  {
    sub_2669C65D4();
    sub_2669AC684(&qword_2800AC010, MEMORY[0x277D63F60], MEMORY[0x277D63F50]);
    sub_2669C5E74();
    __break(1u);
  }
}

void sub_2669A65A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_35();
  v123 = v4;
  v125 = v5;
  v126 = v3;
  v7 = v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AC540, &qword_2669C8220);
  OUTLINED_FUNCTION_2_2(v8);
  OUTLINED_FUNCTION_3_3();
  MEMORY[0x28223BE20](v9);
  v124 = &v112 - v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ABEC8, &unk_2669C7BC0);
  OUTLINED_FUNCTION_2();
  v119 = v12;
  v120 = v11;
  OUTLINED_FUNCTION_3_3();
  MEMORY[0x28223BE20](v13);
  v15 = &v112 - v14;
  sub_2669C5B54();
  OUTLINED_FUNCTION_2();
  v121 = v17;
  v122 = v16;
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_8();
  v117 = v18;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v19);
  v114 = &v112 - v20;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v21);
  v115 = &v112 - v22;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v23);
  v25 = &v112 - v24;
  ContactAttributeViewModel = type metadata accessor for GetContactAttributeViewModel(0);
  OUTLINED_FUNCTION_0();
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_8();
  v116 = v28;
  OUTLINED_FUNCTION_29();
  v30 = MEMORY[0x28223BE20](v29);
  v32 = &v112 - v31;
  MEMORY[0x28223BE20](v30);
  v113 = &v112 - v33;
  OUTLINED_FUNCTION_29();
  v35 = MEMORY[0x28223BE20](v34);
  v37 = &v112 - v36;
  MEMORY[0x28223BE20](v35);
  v39 = &v112 - v38;
  v40 = sub_2669C5A44();
  OUTLINED_FUNCTION_2();
  v42 = v41;
  MEMORY[0x28223BE20](v43);
  OUTLINED_FUNCTION_1_1();
  v46 = v45 - v44;
  v118 = v7;
  sub_2669C5A84();
  v47 = (*(v42 + 88))(v46, v40);
  if (v47 == *MEMORY[0x277D55A78])
  {
    v125(0);
    OUTLINED_FUNCTION_2_5();
    v48 = v126;
    sub_2669ACA10();
    sub_2669C5AE4();
    v49 = v120;
    v50 = sub_2669C5964();
    (*(v119 + 8))(v15, v49);
    v51 = sub_2669C6914();

    OUTLINED_FUNCTION_0_6();
    sub_2669AC868(v32, v52);
    if (v51)
    {
      v53 = v116;
      sub_2669ACA10();
      v54 = v117;
      sub_2669C5A34();
      OUTLINED_FUNCTION_0_6();
      sub_2669AC868(v53, v55);
      sub_2669C5B44();
      OUTLINED_FUNCTION_14_0();
      v56(v54);
      sub_2669A6218(ContactAttributeViewModel, &v127);

      if (v128)
      {
        v57 = v129;
      }

      else
      {
        v57 = 0xF000000000000000;
      }

      v71 = sub_2669C57C4();
      v72 = v124;
      __swift_storeEnumTagSinglePayload(v124, 1, 1, v71);
      v73 = OUTLINED_FUNCTION_16_0();
      v123(v73);
      v74 = OUTLINED_FUNCTION_11_0();
      sub_26699BE4C(v74, v57);
      sub_2669AC1BC(v72, &qword_2800AC540);
      v130 = v48;
      LOWORD(v131) = v48 & 0x1FF;
      BYTE2(v131) = 0;
    }

    else
    {
      v130 = 0;
      LOWORD(v131) = 0;
      BYTE2(v131) = 1;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AC250, &unk_2669C80E0);
    sub_2669A1F4C();
    sub_2669C5FB4();
    LOBYTE(v15) = BYTE2(v128);
    v130 = v127;
    LOWORD(v131) = v128;
    BYTE2(v131) = BYTE2(v128) != 0;
    HIBYTE(v131) = 1;
    v75 = OUTLINED_FUNCTION_5_0();
    sub_2669AC8BC(v75, v76, v77);
    v78 = OUTLINED_FUNCTION_5_0();
    sub_2669AC8BC(v78, v79, v80);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AC250, &unk_2669C80E0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AC280, &unk_2669C7C50);
    sub_2669A1F4C();
    OUTLINED_FUNCTION_9_0(&qword_2800AC278);
    OUTLINED_FUNCTION_6_0();
    sub_2669C5FB4();
    OUTLINED_FUNCTION_17_0();
    OUTLINED_FUNCTION_19(v81);
    LOBYTE(v132) = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AC240, &unk_2669C7C30);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AC270, &unk_2669C80F0);
    sub_2669A1EC8();
    sub_2669A1FF8();
    OUTLINED_FUNCTION_6_0();
    sub_2669C5FB4();
    v82 = v127;
    v83 = v128;
    v84 = BYTE4(v128);
    v130 = v127;
    LOBYTE(v132) = BYTE4(v128) != 0;
    v131 = v128;
    HIBYTE(v132) = 0;
    sub_2669AC8CC(v127, v128, SBYTE4(v128), sub_2669AC90C, sub_2669AC39C, sub_2669AC8BC);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AC230, &unk_2669C80D0);
    sub_2669A1E3C();
    sub_2669C5FB4();
    v85 = OUTLINED_FUNCTION_5_0();
    sub_2669A20FC(v85, v86, v87);
    sub_2669AC8CC(v82, v83, v84, sub_2669A20D4, sub_2669A20DC, sub_2669A20FC);
    v88 = OUTLINED_FUNCTION_5_0();
    sub_2669A20FC(v88, v89, v90);
    goto LABEL_30;
  }

  if (v47 == *MEMORY[0x277D55A70])
  {
    v125(0);
    OUTLINED_FUNCTION_2_5();
    sub_2669ACA10();
    sub_2669C5A34();
    OUTLINED_FUNCTION_0_6();
    sub_2669AC868(v39, v58);
    sub_2669C5B14();
    OUTLINED_FUNCTION_14_0();
    v59(v25);
    v60 = sub_2669C5A74();
    LOBYTE(v15) = v61;
    if (*(ContactAttributeViewModel + 16))
    {
      sub_2669BB76C(v60, v61);
      OUTLINED_FUNCTION_11_0();

      if (v42)
      {
        OUTLINED_FUNCTION_10_0();

LABEL_23:
        v91 = sub_2669C57C4();
        OUTLINED_FUNCTION_36(v91, v92, v93, v91);
        OUTLINED_FUNCTION_26();
        v94();
        OUTLINED_FUNCTION_15_0();
        sub_26699BE4C(v42, v25);
        sub_2669AC1BC(v46, &qword_2800AC540);
        OUTLINED_FUNCTION_21();
        BYTE2(v131) = 0;
LABEL_28:
        v98 = OUTLINED_FUNCTION_5_0();
        sub_2669AC39C(v98, v99, v100);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AC250, &unk_2669C80E0);
        sub_2669A1F4C();
        OUTLINED_FUNCTION_6_0();
        sub_2669C5FB4();
        OUTLINED_FUNCTION_19(v127);
        LOBYTE(v132) = 0;
LABEL_29:
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AC240, &unk_2669C7C30);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AC270, &unk_2669C80F0);
        sub_2669A1EC8();
        sub_2669A1FF8();
        OUTLINED_FUNCTION_6_0();
        sub_2669C5FB4();
        v130 = v127;
        LOBYTE(v132) = BYTE4(v128) != 0;
        v131 = v128;
        HIBYTE(v132) = 0;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AC230, &unk_2669C80D0);
        sub_2669A1E3C();
        OUTLINED_FUNCTION_6_0();
        sub_2669C5FB4();
        v101 = OUTLINED_FUNCTION_5_0();
        sub_2669A20DC(v101, v102, v103);
LABEL_30:
        OUTLINED_FUNCTION_27();
        goto LABEL_31;
      }
    }

    else
    {
    }

    v42 = 0;
    v25 = 0xF000000000000000;
    goto LABEL_23;
  }

  if (v47 == *MEMORY[0x277D55A58])
  {
    v125(0);
    OUTLINED_FUNCTION_2_5();
    sub_2669ACA10();
    v15 = v115;
    sub_2669C5A34();
    OUTLINED_FUNCTION_0_6();
    sub_2669AC868(v37, v62);
    sub_2669C5B44();
    OUTLINED_FUNCTION_14_0();
    v63(v15);
    v64 = sub_2669C5A74();
    LOBYTE(v15) = v65;
    if (*(ContactAttributeViewModel + 16))
    {
      sub_2669BB76C(v64, v65);
      OUTLINED_FUNCTION_11_0();

      if (v42)
      {
        OUTLINED_FUNCTION_10_0();

LABEL_27:
        v95 = sub_2669C57C4();
        v96 = v124;
        __swift_storeEnumTagSinglePayload(v124, 1, 1, v95);
        v97 = OUTLINED_FUNCTION_16_0();
        v123(v97);
        OUTLINED_FUNCTION_15_0();
        sub_26699BE4C(v42, v25);
        sub_2669AC1BC(v96, &qword_2800AC540);
        OUTLINED_FUNCTION_21();
        BYTE2(v131) = 1;
        goto LABEL_28;
      }
    }

    else
    {
    }

    v42 = 0;
    v25 = 0xF000000000000000;
    goto LABEL_27;
  }

  if (v47 == *MEMORY[0x277D55A60])
  {
    v125(0);
    OUTLINED_FUNCTION_2_5();
    v66 = v113;
    sub_2669ACA10();
    v15 = v114;
    sub_2669C5A34();
    OUTLINED_FUNCTION_0_6();
    sub_2669AC868(v66, v67);
    sub_2669C5B34();
    OUTLINED_FUNCTION_14_0();
    v68(v15);
    v69 = sub_2669C5A74();
    LOBYTE(v15) = v70;
    if (*(ContactAttributeViewModel + 16))
    {
      sub_2669BB76C(v69, v70);
      OUTLINED_FUNCTION_11_0();

      if (v66)
      {
        OUTLINED_FUNCTION_10_0();

LABEL_34:
        v104 = sub_2669C57C4();
        OUTLINED_FUNCTION_36(v104, v105, v106, v104);
        OUTLINED_FUNCTION_26();
        v107();
        OUTLINED_FUNCTION_15_0();
        sub_26699BE4C(v66, v25);
        sub_2669AC1BC(v46, &qword_2800AC540);
        OUTLINED_FUNCTION_21();
        HIWORD(v131) = 0;
        v108 = OUTLINED_FUNCTION_5_0();
        sub_2669AC39C(v108, v109, v110);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AC250, &unk_2669C80E0);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AC280, &unk_2669C7C50);
        sub_2669A1F4C();
        OUTLINED_FUNCTION_9_0(&qword_2800AC278);
        OUTLINED_FUNCTION_6_0();
        sub_2669C5FB4();
        OUTLINED_FUNCTION_17_0();
        OUTLINED_FUNCTION_19(v111);
        LOBYTE(v132) = 1;
        goto LABEL_29;
      }
    }

    else
    {
    }

    v66 = 0;
    v25 = 0xF000000000000000;
    goto LABEL_34;
  }

  v130 = 0;
  v131 = 0;
  v132 = 256;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AC230, &unk_2669C80D0);
  sub_2669A1E3C();
  sub_2669C5FB4();
  OUTLINED_FUNCTION_27();
  (*(v42 + 8))(v46, v40);
LABEL_31:
  LOBYTE(v127) = v15;
  OUTLINED_FUNCTION_37();
}

uint64_t (*sub_2669A7294(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(uint64_t, unint64_t, void, unint64_t, char *)))(uint64_t, unint64_t, void, unint64_t, char *)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AC540, &qword_2669C8220);
  OUTLINED_FUNCTION_2_2(v6);
  OUTLINED_FUNCTION_3_3();
  MEMORY[0x28223BE20](v7);
  v9 = &v28 - v8;
  v10 = sub_2669C5A44();
  OUTLINED_FUNCTION_2();
  v12 = v11;
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_1_1();
  v16 = v15 - v14;
  sub_2669C5A84();
  v17 = (*(v12 + 88))(v16, v10);
  if (v17 == *MEMORY[0x277D55A70])
  {
    v29 = 0;
    LOWORD(v30) = 0;
    BYTE2(v30) = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AC250, &unk_2669C80E0);
    sub_2669A1F4C();
    OUTLINED_FUNCTION_25();
    sub_2669C5FB4();
    OUTLINED_FUNCTION_24();
    OUTLINED_FUNCTION_23(v18);
    a3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AC2A0, &qword_2669C7C60);
    sub_2669A210C();
    OUTLINED_FUNCTION_25();
    sub_2669C5FB4();
  }

  else
  {
    if (v17 != *MEMORY[0x277D55A58])
    {
      v29 = 0;
      v30 = 0x1000000;
      a3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AC2A0, &qword_2669C7C60);
      sub_2669A210C();
      OUTLINED_FUNCTION_25();
      sub_2669C5FB4();
      OUTLINED_FUNCTION_28();
      (*(v12 + 8))(v16, v10);
      return a3;
    }

    a2(0);
    sub_2669C5A64();
    sub_2669C5030(v19, v9);

    a3(0x69662E656E6F6870, 0xEA00000000006C6CLL, 0, 0xF000000000000000, v9);
    OUTLINED_FUNCTION_15_0();
    sub_2669AC1BC(v9, &qword_2800AC540);
    v29 = a3;
    LOWORD(v30) = v3 & 0x1FF;
    BYTE2(v30) = 1;
    v20 = OUTLINED_FUNCTION_5_0();
    sub_2669AC39C(v20, v21, v22);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AC250, &unk_2669C80E0);
    sub_2669A1F4C();
    OUTLINED_FUNCTION_25();
    sub_2669C5FB4();
    OUTLINED_FUNCTION_24();
    OUTLINED_FUNCTION_23(v23);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AC2A0, &qword_2669C7C60);
    sub_2669A210C();
    OUTLINED_FUNCTION_25();
    sub_2669C5FB4();
    v24 = OUTLINED_FUNCTION_5_0();
    sub_2669A20DC(v24, v25, v26);
  }

  OUTLINED_FUNCTION_28();
  return a3;
}

uint64_t sub_2669A7600@<X0>(uint64_t *a1@<X8>)
{
  v98 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ABEC8, &unk_2669C7BC0);
  v95 = *(v2 - 8);
  v96 = v2;
  MEMORY[0x28223BE20](v2);
  v94 = &v89 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AC180, &qword_2669C8740);
  v97 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v89 - v5;
  v7 = sub_2669C5A44();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v89 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v89 - v12;
  v14 = sub_2669C5A94();
  v15 = *(v14 - 8);
  v16 = MEMORY[0x28223BE20](v14);
  v91 = &v89 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v16);
  v90 = &v89 - v19;
  MEMORY[0x28223BE20](v18);
  v21 = &v89 - v20;
  v22 = v1 + *(type metadata accessor for GetContactAttributeSingleResultView(0) + 20);
  ContactAttributeViewModel = type metadata accessor for GetContactAttributeViewModel(0);
  v23 = *(ContactAttributeViewModel + 20);
  v105 = v22;
  v106 = v23;
  result = MEMORY[0x26D5E3750]();
  if (!*(result + 16))
  {
    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v92 = v6;
  v93 = v4;
  v25 = *(v15 + 16);
  v101 = (*(v15 + 80) + 32) & ~*(v15 + 80);
  v102 = v25;
  v103 = v15 + 16;
  v25(v21, result + v101, v14);

  sub_2669C5A84();
  v27 = *(v15 + 8);
  v26 = v15 + 8;
  v104 = v14;
  v100 = v27;
  v27(v21, v14);
  v28 = *(v8 + 104);
  v28(v11, *MEMORY[0x277D55A68], v7);
  v29 = sub_266999764(v13, v11);
  v30 = *(v8 + 8);
  v30(v11, v7);
  v31 = (v30)(v13, v7);
  if (v29)
  {
    v32 = v105;
LABEL_4:
    v33 = v94;
    sub_2669C5AE4();
    v34 = v96;
    v35 = sub_2669C5964();
    (*(v95 + 8))(v33, v34);
    v36 = sub_2669C6924();
    v38 = v37;

    v107 = v36;
    v108 = v38;
    sub_266999FC4(v39, v40, v41);
    v42 = sub_2669C6164();
    v44 = v43;
    LOBYTE(v38) = v45;
    v107 = *(v32 + *(ContactAttributeViewModel + 28));

    v46 = sub_2669C6144();
    v48 = v47;
    v50 = v49;
    v52 = v51;
    sub_26699A018(v42, v44, v38 & 1);

    v107 = v46;
    v108 = v48;
    v109 = v50 & 1;
    v110 = v52;
    v53 = MEMORY[0x277CE0BD8];
    v54 = MEMORY[0x277CE0BC8];
    v55 = v92;
    sub_2669C6254();
    sub_26699A018(v46, v48, v50 & 1);

    v107 = v53;
    v108 = v54;
    swift_getOpaqueTypeConformance2();
    v56 = v93;
    v57 = sub_2669C6174();
    result = (*(v97 + 8))(v55, v56);
LABEL_17:
    v87 = MEMORY[0x277D63A60];
    v88 = v98;
    v98[3] = MEMORY[0x277CE11C8];
    v88[4] = v87;
    *v88 = v57;
    return result;
  }

  result = MEMORY[0x26D5E3750](v31);
  if (!*(result + 16))
  {
    goto LABEL_19;
  }

  v89 = v26;
  v58 = v104;
  v102(v21, result + v101, v104);

  sub_2669C5A84();
  v100(v21, v58);
  v28(v11, *MEMORY[0x277D55A78], v7);
  v59 = sub_266999764(v13, v11);
  v30(v11, v7);
  v60 = (v30)(v13, v7);
  v32 = v105;
  if ((v59 & 1) == 0)
  {
LABEL_10:
    result = MEMORY[0x26D5E3750](v60);
    if (*(result + 16))
    {
      v65 = v91;
      v66 = v104;
      v102(v91, result + v101, v104);

      v67 = sub_2669C5A64();
      v69 = v68;
      v70 = (v100)(v65, v66);
      if (v69)
      {
        v73 = v67;
      }

      else
      {
        v73 = 0;
      }

      v74 = 0xE000000000000000;
      if (v69)
      {
        v74 = v69;
      }

      v107 = v73;
      v108 = v74;
      sub_266999FC4(v70, v71, v72);
      v75 = sub_2669C6164();
      v77 = v76;
      v79 = v78;
      v107 = *(v32 + *(ContactAttributeViewModel + 28));

      v80 = sub_2669C6144();
      v82 = v81;
      v84 = v83;
      v86 = v85;
      sub_26699A018(v75, v77, v79 & 1);

      v107 = v80;
      v108 = v82;
      v109 = v84 & 1;
      v110 = v86;
      v57 = sub_2669C6174();
      sub_26699A018(v80, v82, v84 & 1);

      goto LABEL_17;
    }

    goto LABEL_20;
  }

  result = MEMORY[0x26D5E3750](v60);
  if (*(result + 16))
  {
    v61 = v90;
    v62 = v104;
    v102(v90, result + v101, v104);

    sub_2669C5A64();
    v100(v61, v62);
    sub_2669C6974();
    v64 = v63;

    if (!v64)
    {
      goto LABEL_4;
    }

    goto LABEL_10;
  }

LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_2669A7E5C@<X0>(uint64_t *a1@<X8>)
{
  v171 = a1;
  v160 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ABEC8, &unk_2669C7BC0);
  v159 = *(v160 - 8);
  MEMORY[0x28223BE20](v160);
  v158 = &v149 - v2;
  v166 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ABFA8, &qword_2669C7710);
  MEMORY[0x28223BE20](v166);
  v167 = &v149 - v3;
  v157 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AC518, &qword_2669C81D8);
  v152 = *(v157 - 8);
  MEMORY[0x28223BE20](v157);
  v156 = &v149 - v4;
  v153 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AC520, &qword_2669C81E0);
  v151 = *(v153 - 8);
  MEMORY[0x28223BE20](v153);
  v150 = &v149 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AC2E8, &qword_2669C81D0);
  MEMORY[0x28223BE20](v6 - 8);
  v170 = &v149 - v7;
  v8 = sub_2669C5A44();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v149 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v149 - v13;
  v15 = sub_2669C5A94();
  v16 = *(v15 - 8);
  v17 = MEMORY[0x28223BE20](v15);
  v149 = &v149 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v17);
  v155 = &v149 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v154 = &v149 - v22;
  v23 = MEMORY[0x28223BE20](v21);
  v168 = &v149 - v24;
  MEMORY[0x28223BE20](v23);
  v26 = &v149 - v25;
  ContactAttributeSingleResultView = type metadata accessor for GetContactAttributeSingleResultView(0);
  v27 = v1;
  v28 = &v1[*(ContactAttributeSingleResultView + 20)];
  ContactAttributeViewModel = type metadata accessor for GetContactAttributeViewModel(0);
  v178 = *(ContactAttributeViewModel + 20);
  v179 = v28;
  result = MEMORY[0x26D5E3750]();
  if (!*(result + 16))
  {
    __break(1u);
    goto LABEL_20;
  }

  v161 = ContactAttributeViewModel;
  v172 = v27;
  v31 = *(v16 + 16);
  v175 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v176 = v31;
  v177 = v16 + 16;
  v31(v26, result + v175, v15);

  sub_2669C5A84();
  v34 = *(v16 + 8);
  v32 = (v16 + 8);
  v33 = v34;
  v174 = v15;
  v34(v26, v15);
  v35 = *MEMORY[0x277D55A68];
  v162 = *(v9 + 104);
  v162(v12, v35, v8);
  v36 = sub_266999764(v14, v12);
  v37 = *(v9 + 8);
  v37(v12, v8);
  v163 = v14;
  v165 = v8;
  v164 = v9 + 8;
  v38 = (v37)(v14, v8);
  if (v36)
  {
    result = MEMORY[0x26D5E3750](v38);
    if (!*(result + 16))
    {
LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
      goto LABEL_23;
    }

    v39 = v168;
    v173 = v33;
    v40 = v32;
    v41 = v174;
    v176(v168, result + v175, v174);

    v42 = sub_2669C5A54();
    v44 = v43;
    v45 = v41;
    v32 = v40;
    v33 = v173;
    v38 = (v173)(v39, v45);
    if (v44)
    {
      v180 = v42;
      v181 = v44;
      sub_266999FC4(v38, v46, v47);
      v48 = sub_2669C6164();
      v50 = v49;
      v52 = v51;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AC2C8, qword_2669C7CD0);
      sub_2669C5D94();
      v53 = sub_2669C60A4();
      v54 = v170;
      __swift_storeEnumTagSinglePayload(v170, 1, 1, v53);
      sub_2669C60C4();
      sub_2669AC1BC(v54, &qword_2800AC2E8);
      v55 = sub_2669C6154();
      v57 = v56;
      v59 = v58;

      sub_26699A018(v48, v50, v52 & 1);

      v180 = *&v179[*(v161 + 28)];

      v60 = sub_2669C6144();
      v62 = v61;
      LOBYTE(v50) = v63;
      v65 = v64;
      sub_26699A018(v55, v57, v59 & 1);

      v66 = MEMORY[0x277D638E8];
      v67 = v171;
      v171[3] = MEMORY[0x277CE0BD8];
      v67[4] = v66;
      result = swift_allocObject();
      *v67 = result;
      *(result + 16) = v60;
      *(result + 24) = v62;
      *(result + 32) = v50 & 1;
      *(result + 40) = v65;
      return result;
    }
  }

  result = MEMORY[0x26D5E3750](v38);
  if (!*(result + 16))
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v68 = v174;
  v176(v26, result + v175, v174);

  v69 = v163;
  sub_2669C5A84();
  v168 = v32;
  v33(v26, v68);
  v70 = v165;
  v162(v12, *MEMORY[0x277D55A78], v165);
  v71 = sub_266999764(v69, v12);
  v37(v12, v70);
  v72 = (v37)(v69, v70);
  if (v71)
  {
    result = MEMORY[0x26D5E3750](v72);
    if (*(result + 16))
    {
      v73 = v154;
      v176(v154, result + v175, v68);

      v74 = sub_2669C5A54();
      v76 = v75;
      result = (v33)(v73, v68);
      if (v76)
      {
        v180 = v74;
        v181 = v76;
        sub_266999FC4(result, v77, v78);
        v79 = sub_2669C6164();
        v81 = v80;
        v83 = v82;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AC2C8, qword_2669C7CD0);
        sub_2669C5D94();
        v84 = sub_2669C60A4();
        v85 = v170;
        __swift_storeEnumTagSinglePayload(v170, 1, 1, v84);
        sub_2669C60C4();
        sub_2669AC1BC(v85, &qword_2800AC2E8);
        v86 = sub_2669C6154();
        v88 = v87;
        v90 = v89;

        sub_26699A018(v79, v81, v83 & 1);

        v180 = sub_2669C62E4();
        v91 = sub_2669C6144();
        v93 = v92;
        v95 = v94;
        v97 = v96;
        sub_26699A018(v86, v88, v90 & 1);

        v98 = MEMORY[0x277D638E8];
        v99 = v171;
        v171[3] = MEMORY[0x277CE0BD8];
        v99[4] = v98;
        result = swift_allocObject();
        *v99 = result;
        *(result + 16) = v91;
        *(result + 24) = v93;
        *(result + 32) = v95 & 1;
        *(result + 40) = v97;
      }

      else
      {
        v148 = v171;
        v171[4] = 0;
        *v148 = 0u;
        *(v148 + 1) = 0u;
      }

      return result;
    }

    goto LABEL_22;
  }

  v173 = v33;
  v100 = v158;
  sub_2669C5AE4();
  v101 = v160;
  v102 = sub_2669C5964();
  (*(v159 + 8))(v100, v101);
  v103 = sub_2669C6924();
  v105 = v104;

  v180 = v103;
  v181 = v105;
  sub_266999FC4(v106, v107, v108);
  v109 = sub_2669C6164();
  v111 = v110;
  v180 = v109;
  v181 = v110;
  v113 = v112 & 1;
  LOBYTE(v182) = v112 & 1;
  v183 = v114;
  v115 = v167;
  sub_2669C6254();
  sub_26699A018(v109, v111, v113);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AC2C8, qword_2669C7CD0);
  v116 = v172;
  sub_2669C5D94();
  v117 = sub_2669C60A4();
  v118 = v170;
  __swift_storeEnumTagSinglePayload(v170, 1, 1, v117);
  v119 = sub_2669C60C4();
  sub_2669AC1BC(v118, &qword_2800AC2E8);
  KeyPath = swift_getKeyPath();
  v121 = &v115[*(v166 + 36)];
  *v121 = KeyPath;
  v121[1] = v119;
  result = MEMORY[0x26D5E3750]();
  if (!*(result + 16))
  {
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    return result;
  }

  v122 = v174;
  v123 = v155;
  v176(v155, result + v175, v174);

  sub_2669C5A54();
  v125 = v124;
  v126 = (v173)(v123, v122);
  if (v125)
  {
  }

  MEMORY[0x28223BE20](v126);
  v127 = v116;
  *(&v149 - 2) = v116;
  v128 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ABF90, &qword_2669C76F8);
  v129 = sub_26699A030();
  v130 = sub_2669AC104();
  v131 = v156;
  v132 = v167;
  sub_2669C61C4();
  v133 = sub_2669AC1BC(v132, &qword_2800ABFA8);
  result = MEMORY[0x26D5E3750](v133);
  v134 = v157;
  if (!*(result + 16))
  {
    goto LABEL_24;
  }

  v135 = v174;
  v136 = v149;
  v176(v149, result + v175, v174);

  sub_2669C5A54();
  v138 = v137;
  v139 = (v173)(v136, v135);
  if (v138)
  {
  }

  MEMORY[0x28223BE20](v139);
  *(&v149 - 2) = v127;
  v140 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AC530, &qword_2669C8218);
  v180 = v166;
  v181 = v128;
  v182 = v129;
  v183 = v130;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v142 = sub_2669AC214();
  v143 = v150;
  sub_2669C61C4();
  (*(v152 + 8))(v131, v134);
  v180 = v134;
  v181 = v140;
  v182 = OpaqueTypeConformance2;
  v183 = v142;
  swift_getOpaqueTypeConformance2();
  v144 = v153;
  v145 = sub_2669C6174();
  result = (*(v151 + 8))(v143, v144);
  v146 = MEMORY[0x277D63A60];
  v147 = v171;
  v171[3] = MEMORY[0x277CE11C8];
  v147[4] = v146;
  *v147 = v145;
  return result;
}

uint64_t sub_2669A8E04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  type metadata accessor for GetContactAttributeSingleResultView(0);
  type metadata accessor for GetContactAttributeViewModel(0);
  v4 = sub_2669C62E4();
  sub_2669AC334(a1, a2);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ABF90, &qword_2669C76F8);
  *(a2 + *(result + 36)) = v4;
  return result;
}

uint64_t sub_2669A8E8C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = a2 + *(type metadata accessor for GetContactAttributeSingleResultView(0) + 20);
  v6 = *(v5 + *(type metadata accessor for GetContactAttributeViewModel(0) + 28));
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AC518, &qword_2669C81D8);
  (*(*(v7 - 8) + 16))(a3, a1, v7);
  *(a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AC530, &qword_2669C8218) + 36)) = v6;
}

uint64_t sub_2669A8F54@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v71 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AC2E8, &qword_2669C81D0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = v58 - v4;
  v6 = sub_2669C5A44();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = v58 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = v58 - v11;
  v13 = sub_2669C5A94();
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v61 = v58 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v18 = v58 - v17;
  ContactAttributeSingleResultView = type metadata accessor for GetContactAttributeSingleResultView(0);
  v19 = v1 + *(ContactAttributeSingleResultView + 20);
  ContactAttributeViewModel = type metadata accessor for GetContactAttributeViewModel(0);
  v69 = *(ContactAttributeViewModel + 20);
  v70 = v19;
  result = MEMORY[0x26D5E3750]();
  if (!*(result + 16))
  {
    __break(1u);
    goto LABEL_10;
  }

  v58[1] = v2;
  v59 = v5;
  v21 = *(v14 + 16);
  v66 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v67 = v21;
  v21(v18, result + v66, v13);

  sub_2669C5A84();
  v22 = *(v14 + 8);
  v68 = v13;
  v65 = v22;
  v22(v18, v13);
  v23 = *MEMORY[0x277D55A68];
  v62 = *(v7 + 104);
  v62(v10, v23, v6);
  v24 = sub_266999764(v12, v10);
  v25 = *(v7 + 8);
  v25(v10, v6);
  v63 = v6;
  result = (v25)(v12, v6);
  if (v24)
  {
LABEL_8:
    v57 = v71;
    *(v71 + 32) = 0;
    *v57 = 0u;
    v57[1] = 0u;
    return result;
  }

  result = MEMORY[0x26D5E3750](result);
  if (!*(result + 16))
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v26 = v68;
  v67(v18, result + v66, v68);

  sub_2669C5A84();
  v65(v18, v26);
  v27 = v63;
  v62(v10, *MEMORY[0x277D55A78], v63);
  v28 = sub_266999764(v12, v10);
  v25(v10, v27);
  result = (v25)(v12, v27);
  if (v28)
  {
    goto LABEL_8;
  }

  result = MEMORY[0x26D5E3750](result);
  if (*(result + 16))
  {
    v29 = v61;
    v30 = v68;
    v67(v61, result + v66, v68);

    v31 = sub_2669C5A54();
    v33 = v32;
    result = (v65)(v29, v30);
    if (v33)
    {
      v72 = v31;
      v73 = v33;
      sub_266999FC4(result, v34, v35);
      v36 = sub_2669C6164();
      v38 = v37;
      v40 = v39;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AC2C8, qword_2669C7CD0);
      sub_2669C5D94();
      v41 = sub_2669C60A4();
      v42 = v59;
      __swift_storeEnumTagSinglePayload(v59, 1, 1, v41);
      sub_2669C60C4();
      sub_2669AC1BC(v42, &qword_2800AC2E8);
      v43 = sub_2669C6154();
      v45 = v44;
      v47 = v46;

      sub_26699A018(v36, v38, v40 & 1);

      v72 = sub_2669C62E4();
      v48 = sub_2669C6144();
      v50 = v49;
      v52 = v51;
      v54 = v53;
      sub_26699A018(v43, v45, v47 & 1);

      v55 = MEMORY[0x277D638E8];
      v56 = v71;
      *(v71 + 24) = MEMORY[0x277CE0BD8];
      v56[4] = v55;
      result = swift_allocObject();
      *v56 = result;
      *(result + 16) = v48;
      *(result + 24) = v50;
      *(result + 32) = v52 & 1;
      *(result + 40) = v54;
      return result;
    }

    goto LABEL_8;
  }

LABEL_11:
  __break(1u);
  return result;
}

void GetContactAttributeSingleResultView.body.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_35();
  v76 = v5;
  ContactAttributeSingleResultView = type metadata accessor for GetContactAttributeSingleResultView(0);
  v7 = ContactAttributeSingleResultView - 8;
  v8 = *(ContactAttributeSingleResultView - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](ContactAttributeSingleResultView);
  v10 = sub_2669C5844();
  v11 = OUTLINED_FUNCTION_2_2(v10);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_1_1();
  v77 = v13 - v12;
  v84 = sub_2669C5A94();
  OUTLINED_FUNCTION_2();
  v15 = v14;
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_1_1();
  v19 = v18 - v17;
  sub_2669C6564();
  OUTLINED_FUNCTION_2();
  v73 = v21;
  v74 = v20;
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_1_1();
  v78 = v23 - v22;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AC4C8, &unk_2669C80C0);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3_3();
  MEMORY[0x28223BE20](v24);
  v26 = &v67 - v25;
  sub_2669A7600(v86);
  v27 = v4 + *(v7 + 28);
  ContactAttributeViewModel = type metadata accessor for GetContactAttributeViewModel(0);
  v29 = *(ContactAttributeViewModel + 20);
  v85 = v27;
  v83 = v29;
  v30 = MEMORY[0x26D5E3750]();
  if (!*(v30 + 16))
  {
    __break(1u);
    goto LABEL_6;
  }

  v67 = ContactAttributeViewModel;
  v68 = v26;
  v69 = v8;
  v70 = v9;
  v71 = &v67 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = v15;
  v32 = *(v15 + 16);
  v80 = (*(v15 + 80) + 32) & ~*(v15 + 80);
  v81 = v32;
  v33 = v84;
  v72 = v15 + 16;
  v32(v19, v30 + v80, v84);

  OUTLINED_FUNCTION_8_0();
  sub_2669A65A0(v19, v34, sub_2669AB398);
  v36 = v35;
  v38 = v37;
  v39 = (v37 >> 40) & 1;
  v40 = *(v31 + 8);
  v82 = v31 + 8;
  v79 = v40;
  v40(v19, v33);
  v102 = v36;
  v104 = BYTE4(v38);
  v103 = v38;
  v105 = v39;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AC218, &unk_2669C7C20);
  sub_2669A9D68(&qword_2800AC220, &qword_2800AC218, &unk_2669C7C20, sub_2669A1E3C);
  v41 = sub_2669C6174();
  v42 = sub_2669A20B0(v36, v38, v39);
  v106 = MEMORY[0x277CE11C8];
  v107 = MEMORY[0x277D63A60];
  v102 = v41;
  if (!*(MEMORY[0x26D5E3750](v42) + 16))
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v43 = OUTLINED_FUNCTION_34();
  v44 = v84;
  v45(v43);

  OUTLINED_FUNCTION_8_0();
  v47 = sub_2669A7294(v19, v46, sub_2669AB398);
  v49 = v48;
  v50 = BYTE3(v48) & 1;
  v79(v19, v44);
  v96 = v47;
  v98 = BYTE2(v49);
  v97 = v49;
  v99 = v50;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AC288, &unk_2669C8100);
  sub_2669A9D68(&qword_2800AC290, &qword_2800AC288, &unk_2669C8100, sub_2669A210C);
  v51 = sub_2669C6174();
  sub_2669A2198(v47, v49, v50);
  v101 = MEMORY[0x277D63A60];
  v100 = MEMORY[0x277CE11C8];
  v96 = v51;
  v95 = 0;
  v93 = 0u;
  v94 = 0u;
  sub_2669A7E5C(v92);
  sub_2669A8F54(&v91);
  v90 = 0;
  v88 = 0u;
  v89 = 0u;
  sub_2669C5AC4();
  sub_2669C5834();

  v87[3] = sub_2669C6454();
  v87[4] = MEMORY[0x277D63B10];
  __swift_allocate_boxed_opaque_existential_1(v87);
  sub_2669C6464();
  v52 = v78;
  v53 = sub_2669C6554();
  if (*(MEMORY[0x26D5E3750](v53) + 16))
  {
    v54 = OUTLINED_FUNCTION_34();
    v55 = v84;
    v56(v54);

    sub_26699A920();
    v57 = (v79)(v19, v55);
    v84 = &v67;
    MEMORY[0x28223BE20](v57);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AC4D0, &qword_2669C8110);
    v58 = v52;
    v59 = sub_2669AC684(&qword_2800AC1D8, MEMORY[0x277D63DE8], MEMORY[0x277D63DD8]);
    v60 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2800AC4D8, &qword_2669C8118);
    v61 = sub_2669A9FD4();
    v64 = sub_2669A1CD8(v61, v62, v63);
    v65 = v74;
    v86[0] = v74;
    v86[1] = v60;
    v86[2] = MEMORY[0x277D837D0];
    v86[3] = v59;
    v86[4] = v61;
    v86[5] = v64;
    swift_getOpaqueTypeConformance2();
    v66 = v68;
    sub_2669C61C4();
    (*(v73 + 8))(v58, v65);
    *(v66 + *(v75 + 36)) = *(v85 + *(v67 + 28));
    sub_2669ACA10();
    swift_allocObject();
    sub_2669ACC00();
    sub_2669AA4B4();

    sub_2669C6234();

    sub_2669AC1BC(v66, &qword_2800AC4C8);
    OUTLINED_FUNCTION_37();
    return;
  }

LABEL_7:
  __break(1u);
}

uint64_t type metadata accessor for GetContactAttributeSingleResultView(uint64_t a1)
{
  result = qword_2800AC500;
  if (!qword_2800AC500)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2669A9D68(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    v7 = OUTLINED_FUNCTION_30(0, a2);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v7, v8);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2669A9DE8(uint64_t a1, uint64_t a2)
{
  ContactAttributeSingleResultView = type metadata accessor for GetContactAttributeSingleResultView(0);
  MEMORY[0x28223BE20](ContactAttributeSingleResultView - 8);
  sub_2669ACA10();
  swift_allocObject();
  sub_2669ACC00();
  sub_2669C6564();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AC4D8, &qword_2669C8118);
  sub_2669AC684(&qword_2800AC1D8, MEMORY[0x277D63DE8], MEMORY[0x277D63DD8]);
  v6 = sub_2669A9FD4();
  sub_2669A1CD8(v6, v3, v4);
  sub_2669C6264();
}

unint64_t sub_2669A9FD4()
{
  result = qword_2800AC4E0;
  if (!qword_2800AC4E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2800AC4D8, &qword_2669C8118);
    sub_2669AC640(&qword_2800AC4E8, &unk_2800AC4F0, &unk_2669C8120, MEMORY[0x277CE1198]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800AC4E0);
  }

  return result;
}

uint64_t sub_2669AA08C@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_2669C5A94();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for GetContactAttributeSingleResultView(0);
  type metadata accessor for GetContactAttributeViewModel(0);
  result = MEMORY[0x26D5E3750]();
  if (*(result + 16))
  {
    (*(v3 + 16))(v5, result + ((*(v3 + 80) + 32) & ~*(v3 + 80)), v2);

    v7 = sub_26699A870();
    v9 = v8;
    result = (*(v3 + 8))(v5, v2);
    *a1 = v7;
    a1[1] = v9;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_2669AA1D0(uint64_t a2@<X8>)
{
  v3 = sub_2669C5FA4();
  sub_2669AA25C(v11);
  v4 = v11[0];
  v5 = v11[1];
  v6 = sub_2669C6084();
  sub_2669C5D24();
  *a2 = v3;
  *(a2 + 8) = 0x4010000000000000;
  *(a2 + 16) = 0;
  *(a2 + 24) = v4;
  *(a2 + 32) = v5;
  *(a2 + 40) = v6;
  *(a2 + 48) = v7;
  *(a2 + 56) = v8;
  *(a2 + 64) = v9;
  *(a2 + 72) = v10;
  *(a2 + 80) = 0;
}

uint64_t sub_2669AA25C@<X0>(uint64_t *a1@<X8>)
{
  sub_2669A7600(v5);
  __swift_project_boxed_opaque_existential_1(v5, v6);
  v2 = sub_2669C64B4();
  __swift_destroy_boxed_opaque_existential_0(v5);
  sub_2669A8F54(v5);
  if (v6)
  {
    __swift_project_boxed_opaque_existential_1(v5, v6);
    v3 = sub_2669C64B4();
    result = __swift_destroy_boxed_opaque_existential_0(v5);
  }

  else
  {
    result = sub_2669AC1BC(v5, &unk_2800AC510);
    v3 = 0;
  }

  *a1 = v2;
  a1[1] = v3;
  return result;
}

uint64_t sub_2669AA334()
{
  v0 = sub_2669C5B54();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for GetContactAttributeSingleResultView(0);
  type metadata accessor for GetContactAttributeViewModel(0);
  sub_2669C5A34();
  v4 = sub_2669C5B24();
  v6 = v5;
  (*(v1 + 8))(v3, v0);
  sub_2669A62FC(v4, v6);
  return sub_26699BE4C(v4, v6);
}

uint64_t sub_2669AA458()
{
  ContactAttributeSingleResultView = type metadata accessor for GetContactAttributeSingleResultView(0);
  OUTLINED_FUNCTION_2_2(ContactAttributeSingleResultView);

  return sub_2669AA334();
}

unint64_t sub_2669AA4B4()
{
  result = qword_2800AC4F8;
  if (!qword_2800AC4F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2800AC4C8, &unk_2669C80C0);
    sub_2669C6564();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2800AC4D0, &qword_2669C8110);
    sub_2669AC684(&qword_2800AC1D8, MEMORY[0x277D63DE8], MEMORY[0x277D63DD8]);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2800AC4D8, &qword_2669C8118);
    v3 = sub_2669A9FD4();
    sub_2669A1CD8(v3, v1, v2);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_2669AC640(&qword_2800AC168, &qword_2800AC170, &qword_2669C7BB0, MEMORY[0x277CE0740]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800AC4F8);
  }

  return result;
}

uint64_t sub_2669AA688(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    ContactAttributeViewModel = type metadata accessor for GetContactAttributeViewModel(0);
    if (*(*(ContactAttributeViewModel - 8) + 84) == a2)
    {
      v10 = ContactAttributeViewModel;
      v11 = *(a3 + 20);
    }

    else
    {
      v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AC2C8, qword_2669C7CD0);
      v11 = *(a3 + 24);
    }

    return __swift_getEnumTagSinglePayload(a1 + v11, a2, v10);
  }
}

void *sub_2669AA780(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *result = a2;
  }

  else
  {
    ContactAttributeViewModel = type metadata accessor for GetContactAttributeViewModel(0);
    if (*(*(ContactAttributeViewModel - 8) + 84) == a3)
    {
      v9 = ContactAttributeViewModel;
      v10 = *(a4 + 20);
    }

    else
    {
      v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AC2C8, qword_2669C7CD0);
      v10 = *(a4 + 24);
    }

    return __swift_storeEnumTagSinglePayload(v5 + v10, a2, a2, v9);
  }

  return result;
}

void sub_2669AA854(uint64_t a1)
{
  sub_26699AD38(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for GetContactAttributeViewModel(319);
    if (v2 <= 0x3F)
    {
      sub_2669A2C2C(319, v2, v3);
      if (v4 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_2669AA8F0()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2800AC4C8, &unk_2669C80C0);
  sub_2669AA4B4();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_2669AA954(char *a1, char *a2, char *a3, unint64_t a4, void (*a5)(char *, char *, uint64_t))
{
  v62 = a5;
  v63 = a3;
  v66 = a1;
  v67 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AC540, &qword_2669C8220);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v58 - v7;
  v70 = sub_2669C57C4();
  v61 = *(v70 - 8);
  v9 = *(v61 + 64);
  v10 = MEMORY[0x28223BE20](v70);
  v60 = &v58 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v64 = &v58 - v11;
  v69 = type metadata accessor for SiriContactsGCAButtonStyle(0);
  MEMORY[0x28223BE20](v69);
  v65 = &v58 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  ContactAttributeMultiResultView = type metadata accessor for GetContactAttributeMultiResultView(0);
  v14 = *(ContactAttributeMultiResultView - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](ContactAttributeMultiResultView - 8);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AC548, &qword_2669C8228);
  v68 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v18 = &v58 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AC550, qword_2669C8230);
  v20 = MEMORY[0x28223BE20](v19);
  v22 = &v58 - v21;
  v71 = v20;
  v72 = v23;
  if (a4 >> 60 == 15)
  {
    v58 = v18;
    v59 = v16;
    v63 = &v58 - v21;
    sub_2669AC3A8(v62, v8);
    if (__swift_getEnumTagSinglePayload(v8, 1, v70) == 1)
    {
      sub_2669AC1BC(v8, &qword_2800AC540);
      v77 = 0;
      v78 = 256;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AC260, &unk_2669C7C40);
      sub_2669A1F7C();
      sub_2669C5FB4();
    }

    else
    {
      v37 = v61;
      v62 = *(v61 + 32);
      v38 = v64;
      v39 = v8;
      v40 = v70;
      v62(v64, v39, v70);
      sub_2669ACA10();
      v41 = v60;
      v42 = v38;
      v43 = v40;
      (*(v37 + 16))(v60, v42, v40);
      v44 = (v15 + *(v37 + 80) + ((*(v14 + 80) + 16) & ~*(v14 + 80))) & ~*(v37 + 80);
      v45 = swift_allocObject();
      sub_2669ACC00();
      v46 = (v62)(v45 + v44, v41, v43);
      MEMORY[0x28223BE20](v46);
      v47 = v67;
      *(&v58 - 2) = v66;
      *(&v58 - 1) = v47;
      sub_2669C6454();
      sub_2669AC684(&qword_2800ABFC8, MEMORY[0x277D63B20], MEMORY[0x277D63B08]);
      v48 = v58;
      sub_2669C6364();
      v49 = v65;
      sub_2669A2950();
      v50 = sub_2669AC640(&qword_2800AC558, &qword_2800AC548, &qword_2669C8228, MEMORY[0x277CDF028]);
      v51 = sub_2669AC684(&qword_2800AC560, type metadata accessor for SiriContactsGCAButtonStyle, &unk_2669C7D0C);
      v52 = v63;
      v53 = v59;
      v54 = v69;
      sub_2669C6224();
      sub_2669AC868(v49, type metadata accessor for SiriContactsGCAButtonStyle);
      (*(v68 + 8))(v48, v53);
      v73 = v53;
      v74 = v54;
      v75 = v50;
      v76 = v51;
      swift_getOpaqueTypeConformance2();
      v55 = v71;
      v56 = sub_2669C6174();
      (*(v72 + 8))(v52, v55);
      v77 = v56;
      LOBYTE(v78) = 1;

      sub_2669C5FB4();
      v77 = v73;
      v78 = v74;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AC260, &unk_2669C7C40);
      sub_2669A1F7C();
      sub_2669C5FB4();

      (*(v37 + 8))(v64, v43);
    }
  }

  else
  {
    v24 = a4;
    sub_2669ACA10();
    v25 = (v15 + ((*(v14 + 80) + 16) & ~*(v14 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8;
    v26 = swift_allocObject();
    sub_2669ACC00();
    v27 = (v26 + v25);
    v28 = v63;
    *v27 = v63;
    v27[1] = v24;
    v29 = MEMORY[0x28223BE20](v28);
    v30 = v67;
    *(&v58 - 2) = v66;
    *(&v58 - 1) = v30;
    sub_26699BF34(v29, v24);
    sub_2669C6454();
    sub_2669AC684(&qword_2800ABFC8, MEMORY[0x277D63B20], MEMORY[0x277D63B08]);
    sub_2669C6364();
    v31 = v65;
    sub_2669A2950();
    v32 = sub_2669AC640(&qword_2800AC558, &qword_2800AC548, &qword_2669C8228, MEMORY[0x277CDF028]);
    v33 = sub_2669AC684(&qword_2800AC560, type metadata accessor for SiriContactsGCAButtonStyle, &unk_2669C7D0C);
    v34 = v69;
    sub_2669C6224();
    sub_2669AC868(v31, type metadata accessor for SiriContactsGCAButtonStyle);
    (*(v68 + 8))(v18, v16);
    v73 = v16;
    v74 = v34;
    v75 = v32;
    v76 = v33;
    swift_getOpaqueTypeConformance2();
    v35 = v71;
    v36 = sub_2669C6174();
    (*(v72 + 8))(v22, v35);
    v77 = v36;
    LOBYTE(v78) = 0;

    sub_2669C5FB4();
    v77 = v73;
    v78 = v74;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AC260, &unk_2669C7C40);
    sub_2669A1F7C();
    sub_2669C5FB4();
  }

  return v73;
}

uint64_t sub_2669AB398(char *a1, char *a2, char *a3, unint64_t a4, void (*a5)(char *, char *, uint64_t))
{
  v62 = a5;
  v63 = a3;
  v66 = a1;
  v67 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AC540, &qword_2669C8220);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v58 - v7;
  v70 = sub_2669C57C4();
  v61 = *(v70 - 8);
  v9 = *(v61 + 64);
  v10 = MEMORY[0x28223BE20](v70);
  v60 = &v58 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v64 = &v58 - v11;
  v69 = type metadata accessor for SiriContactsGCAButtonStyle(0);
  MEMORY[0x28223BE20](v69);
  v65 = &v58 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  ContactAttributeSingleResultView = type metadata accessor for GetContactAttributeSingleResultView(0);
  v14 = *(ContactAttributeSingleResultView - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](ContactAttributeSingleResultView - 8);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AC548, &qword_2669C8228);
  v68 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v18 = &v58 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AC550, qword_2669C8230);
  v20 = MEMORY[0x28223BE20](v19);
  v22 = &v58 - v21;
  v71 = v20;
  v72 = v23;
  if (a4 >> 60 == 15)
  {
    v58 = v18;
    v59 = v16;
    v63 = &v58 - v21;
    sub_2669AC3A8(v62, v8);
    if (__swift_getEnumTagSinglePayload(v8, 1, v70) == 1)
    {
      sub_2669AC1BC(v8, &qword_2800AC540);
      v77 = 0;
      v78 = 256;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AC260, &unk_2669C7C40);
      sub_2669A1F7C();
      sub_2669C5FB4();
    }

    else
    {
      v37 = v61;
      v62 = *(v61 + 32);
      v38 = v64;
      v39 = v8;
      v40 = v70;
      v62(v64, v39, v70);
      sub_2669ACA10();
      v41 = v60;
      v42 = v38;
      v43 = v40;
      (*(v37 + 16))(v60, v42, v40);
      v44 = (v15 + *(v37 + 80) + ((*(v14 + 80) + 16) & ~*(v14 + 80))) & ~*(v37 + 80);
      v45 = swift_allocObject();
      sub_2669ACC00();
      v46 = (v62)(v45 + v44, v41, v43);
      MEMORY[0x28223BE20](v46);
      v47 = v67;
      *(&v58 - 2) = v66;
      *(&v58 - 1) = v47;
      sub_2669C6454();
      sub_2669AC684(&qword_2800ABFC8, MEMORY[0x277D63B20], MEMORY[0x277D63B08]);
      v48 = v58;
      sub_2669C6364();
      v49 = v65;
      sub_2669A2950();
      v50 = sub_2669AC640(&qword_2800AC558, &qword_2800AC548, &qword_2669C8228, MEMORY[0x277CDF028]);
      v51 = sub_2669AC684(&qword_2800AC560, type metadata accessor for SiriContactsGCAButtonStyle, &unk_2669C7D0C);
      v52 = v63;
      v53 = v59;
      v54 = v69;
      sub_2669C6224();
      sub_2669AC868(v49, type metadata accessor for SiriContactsGCAButtonStyle);
      (*(v68 + 8))(v48, v53);
      v73 = v53;
      v74 = v54;
      v75 = v50;
      v76 = v51;
      swift_getOpaqueTypeConformance2();
      v55 = v71;
      v56 = sub_2669C6174();
      (*(v72 + 8))(v52, v55);
      v77 = v56;
      LOBYTE(v78) = 1;

      sub_2669C5FB4();
      v77 = v73;
      v78 = v74;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AC260, &unk_2669C7C40);
      sub_2669A1F7C();
      sub_2669C5FB4();

      (*(v37 + 8))(v64, v43);
    }
  }

  else
  {
    v24 = a4;
    sub_2669ACA10();
    v25 = (v15 + ((*(v14 + 80) + 16) & ~*(v14 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8;
    v26 = swift_allocObject();
    sub_2669ACC00();
    v27 = (v26 + v25);
    v28 = v63;
    *v27 = v63;
    v27[1] = v24;
    v29 = MEMORY[0x28223BE20](v28);
    v30 = v67;
    *(&v58 - 2) = v66;
    *(&v58 - 1) = v30;
    sub_26699BF34(v29, v24);
    sub_2669C6454();
    sub_2669AC684(&qword_2800ABFC8, MEMORY[0x277D63B20], MEMORY[0x277D63B08]);
    sub_2669C6364();
    v31 = v65;
    sub_2669A2950();
    v32 = sub_2669AC640(&qword_2800AC558, &qword_2800AC548, &qword_2669C8228, MEMORY[0x277CDF028]);
    v33 = sub_2669AC684(&qword_2800AC560, type metadata accessor for SiriContactsGCAButtonStyle, &unk_2669C7D0C);
    v34 = v69;
    sub_2669C6224();
    sub_2669AC868(v31, type metadata accessor for SiriContactsGCAButtonStyle);
    (*(v68 + 8))(v18, v16);
    v73 = v16;
    v74 = v34;
    v75 = v32;
    v76 = v33;
    swift_getOpaqueTypeConformance2();
    v35 = v71;
    v36 = sub_2669C6174();
    (*(v72 + 8))(v22, v35);
    v77 = v36;
    LOBYTE(v78) = 0;

    sub_2669C5FB4();
    v77 = v73;
    v78 = v74;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AC260, &unk_2669C7C40);
    sub_2669A1F7C();
    sub_2669C5FB4();
  }

  return v73;
}

void sub_2669ABDDC()
{
  v1 = OUTLINED_FUNCTION_20();
  v2(v1);
  sub_2669C5344(v0);
}

uint64_t objectdestroyTm_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_35();
  type metadata accessor for GetContactAttributeSingleResultView(0);
  OUTLINED_FUNCTION_13_0();
  v7 = (v5 + ((*(v6 + 80) + 16) & ~*(v6 + 80)));

  v8 = v7 + *(v4 + 28);
  __swift_destroy_boxed_opaque_existential_0(v8);
  ContactAttributeViewModel = type metadata accessor for GetContactAttributeViewModel(0);
  v10 = *(ContactAttributeViewModel + 20);
  sub_2669C5B04();
  OUTLINED_FUNCTION_0_1();
  (*(v11 + 8))(&v8[v10]);
  v12 = *(ContactAttributeViewModel + 24);
  sub_2669C5D44();
  OUTLINED_FUNCTION_0_1();
  (*(v13 + 8))(&v8[v12]);

  v14 = *(v4 + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AC2C8, qword_2669C7CD0);
  OUTLINED_FUNCTION_0_1();
  (*(v15 + 8))(v7 + v14);
  OUTLINED_FUNCTION_37();

  return MEMORY[0x2821FE8E8](v16, v17, v18);
}

uint64_t sub_2669ABF78@<X0>(uint64_t *a1@<X8>)
{
  ContactAttributeSingleResultView = type metadata accessor for GetContactAttributeSingleResultView(0);
  OUTLINED_FUNCTION_2_2(ContactAttributeSingleResultView);

  return sub_2669AA08C(a1);
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_2669AC030()
{
  sub_26699A018(*(v0 + 16), *(v0 + 24), *(v0 + 32));

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_2669AC074@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2669C5EE4();
  *a1 = result;
  return result;
}

uint64_t sub_2669AC0A0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2669C5EE4();
  *a1 = result;
  return result;
}

unint64_t sub_2669AC104()
{
  result = qword_2800AC528;
  if (!qword_2800AC528)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2800ABF90, &qword_2669C76F8);
    sub_26699A030();
    sub_2669AC640(&qword_2800AC168, &qword_2800AC170, &qword_2669C7BB0, MEMORY[0x277CE0740]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800AC528);
  }

  return result;
}

uint64_t sub_2669AC1BC(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_30(a1, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_0_1();
  (*(v5 + 8))(a1);
  return a1;
}

unint64_t sub_2669AC214()
{
  result = qword_2800AC538;
  if (!qword_2800AC538)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2800AC530, &qword_2669C8218);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2800ABFA8, &qword_2669C7710);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2800ABF90, &qword_2669C76F8);
    sub_26699A030();
    sub_2669AC104();
    swift_getOpaqueTypeConformance2();
    sub_2669AC640(&qword_2800AC168, &qword_2800AC170, &qword_2669C7BB0, MEMORY[0x277CE0740]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800AC538);
  }

  return result;
}

uint64_t sub_2669AC334(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ABFA8, &qword_2669C7710);
  OUTLINED_FUNCTION_0();
  (*(v4 + 16))(a2, a1);
  return a2;
}

uint64_t sub_2669AC39C(uint64_t result, uint64_t a2, char a3)
{
  if ((a3 & 1) == 0)
  {
  }

  return v3;
}

uint64_t sub_2669AC3A8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AC540, &qword_2669C8220);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2669AC418()
{
  type metadata accessor for GetContactAttributeSingleResultView(0);
  OUTLINED_FUNCTION_31();
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v6 = *(v5 + 64);
  v7 = sub_2669C57C4();
  OUTLINED_FUNCTION_2();
  v9 = v8;
  v11 = v10;
  v12 = *(v9 + 80);
  v13 = (v4 + v6 + v12) & ~v12;
  v25 = *(v11 + 64);
  v14 = v3 | v12;
  v15 = v0 + v4;

  v16 = (v0 + v4 + *(v1 + 28));
  __swift_destroy_boxed_opaque_existential_0(v16);
  ContactAttributeViewModel = type metadata accessor for GetContactAttributeViewModel(0);
  v18 = *(ContactAttributeViewModel + 20);
  sub_2669C5B04();
  OUTLINED_FUNCTION_0_1();
  (*(v19 + 8))(&v16[v18]);
  v20 = *(ContactAttributeViewModel + 24);
  sub_2669C5D44();
  OUTLINED_FUNCTION_0_1();
  (*(v21 + 8))(&v16[v20]);

  v22 = *(v1 + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AC2C8, qword_2669C7CD0);
  OUTLINED_FUNCTION_0_1();
  (*(v23 + 8))(v15 + v22);
  (*(v9 + 8))(v0 + v13, v7);

  return MEMORY[0x2821FE8E8](v0, v13 + v25, v14 | 7);
}

uint64_t sub_2669AC640(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    v6 = OUTLINED_FUNCTION_30(0, a2);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v6, v7);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2669AC684(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2669AC6CC()
{
  type metadata accessor for GetContactAttributeSingleResultView(0);
  OUTLINED_FUNCTION_13_0();
  v3 = v2;
  v5 = v4;
  v6 = *(v3 + 80);
  v7 = (v6 + 16) & ~v6;
  v8 = (*(v5 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = v1 + v7;

  v10 = (v9 + *(v0 + 28));
  __swift_destroy_boxed_opaque_existential_0(v10);
  ContactAttributeViewModel = type metadata accessor for GetContactAttributeViewModel(0);
  v12 = *(ContactAttributeViewModel + 20);
  sub_2669C5B04();
  OUTLINED_FUNCTION_0_1();
  (*(v13 + 8))(&v10[v12]);
  v14 = *(ContactAttributeViewModel + 24);
  sub_2669C5D44();
  OUTLINED_FUNCTION_0_1();
  (*(v15 + 8))(&v10[v14]);

  v16 = *(v0 + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AC2C8, qword_2669C7CD0);
  OUTLINED_FUNCTION_0_1();
  (*(v17 + 8))(v9 + v16);
  sub_26699BE60(*(v1 + v8), *(v1 + v8 + 8));

  return MEMORY[0x2821FE8E8](v1, v8 + 16, v6 | 7);
}

uint64_t sub_2669AC868(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_0_1();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_2669AC8BC(uint64_t result, uint64_t a2, char a3)
{
  if ((a3 & 1) == 0)
  {
    return sub_2669AC39C(result, a2, BYTE1(a2) & 1);
  }

  return result;
}

uint64_t sub_2669AC8CC(uint64_t a1, uint64_t a2, char a3, uint64_t (*a4)(uint64_t, uint64_t, void), uint64_t (*a5)(uint64_t, uint64_t, void), uint64_t (*a6)(uint64_t, uint64_t, void))
{
  if (a3)
  {
    return sub_2669AC914(a1, a2, BYTE3(a2) & 1, a5, a6);
  }

  return a4(a1, a2, WORD1(a2) & 1);
}

uint64_t sub_2669AC914(uint64_t a1, uint64_t a2, char a3, uint64_t (*a4)(uint64_t, uint64_t, void), uint64_t (*a5)(uint64_t, uint64_t, void))
{
  if (a3)
  {
    return (a5)(a1, a2, WORD1(a2) & 1, a4);
  }

  else
  {
    return a4(a1, a2, (a2 >> 8) & 1);
  }
}

_OWORD *sub_2669AC970(_OWORD *result, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  if (a2 < 0 || 1 << *(a5 + 32) <= a2)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a5 + 8 * (a2 >> 6) + 64) >> a2) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a5 + 36) == a3)
  {
    v5 = *(*(a5 + 48) + 16 * a2);
    v6 = *(*(a5 + 56) + 16 * a2);
    *result = v6;

    sub_26699BF34(v6, *(&v6 + 1));
    return v5;
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t sub_2669ACA10()
{
  v2 = OUTLINED_FUNCTION_20();
  v3(v2);
  OUTLINED_FUNCTION_0();
  (*(v4 + 16))(v0, v1);
  return v0;
}

uint64_t sub_2669ACA68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_35();
  type metadata accessor for GetContactAttributeMultiResultView(0);
  OUTLINED_FUNCTION_31();
  v7 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v9 = *(v8 + 64);
  v10 = sub_2669C57C4();
  OUTLINED_FUNCTION_2();
  v12 = v11;
  v13 = (v7 + v9 + *(v11 + 80)) & ~*(v11 + 80);

  v14 = (v4 + v7 + *(v5 + 28));
  __swift_destroy_boxed_opaque_existential_0(v14);
  ContactAttributeViewModel = type metadata accessor for GetContactAttributeViewModel(0);
  v16 = *(ContactAttributeViewModel + 20);
  sub_2669C5B04();
  OUTLINED_FUNCTION_0_1();
  (*(v17 + 8))(&v14[v16]);
  v18 = *(ContactAttributeViewModel + 24);
  sub_2669C5D44();
  OUTLINED_FUNCTION_0_1();
  (*(v19 + 8))(&v14[v18]);

  (*(v12 + 8))(v4 + v13, v10);
  OUTLINED_FUNCTION_37();

  return MEMORY[0x2821FE8E8](v20, v21, v22);
}

uint64_t sub_2669ACC00()
{
  v2 = OUTLINED_FUNCTION_20();
  v3(v2);
  OUTLINED_FUNCTION_0();
  (*(v4 + 32))(v0, v1);
  return v0;
}

void sub_2669ACC84(void (*a1)(void))
{
  a1(0);
  v1 = sub_2669C57C4();
  OUTLINED_FUNCTION_2_2(v1);
  sub_2669ABDDC();
}

uint64_t sub_2669ACD50()
{
  type metadata accessor for GetContactAttributeMultiResultView(0);
  OUTLINED_FUNCTION_13_0();
  v3 = v2;
  v5 = v4;
  v6 = *(v3 + 80);
  v7 = (v6 + 16) & ~v6;
  v8 = (*(v5 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = v1 + v7;

  v10 = (v9 + *(v0 + 28));
  __swift_destroy_boxed_opaque_existential_0(v10);
  ContactAttributeViewModel = type metadata accessor for GetContactAttributeViewModel(0);
  v12 = *(ContactAttributeViewModel + 20);
  sub_2669C5B04();
  OUTLINED_FUNCTION_0_1();
  (*(v13 + 8))(&v10[v12]);
  v14 = *(ContactAttributeViewModel + 24);
  sub_2669C5D44();
  OUTLINED_FUNCTION_0_1();
  (*(v15 + 8))(&v10[v14]);

  sub_26699BE60(*(v1 + v8), *(v1 + v8 + 8));

  return MEMORY[0x2821FE8E8](v1, v8 + 16, v6 | 7);
}

void sub_2669ACEA8(uint64_t (*a1)(void))
{
  v2 = *(a1(0) - 8);
  v3 = v1 + ((*(v2 + 64) + ((*(v2 + 80) + 16) & ~*(v2 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8);
  sub_2669A62FC(*v3, *(v3 + 8));
}

uint64_t OUTLINED_FUNCTION_9_0(unint64_t *a1)
{

  return sub_2669A9D68(a1, v1, v2, sub_2669A1F4C);
}

void OUTLINED_FUNCTION_10_0()
{
  v3 = (*(v0 + 56) + 16 * v1);
  v4 = *v3;
  v5 = v3[1];

  sub_26699BF34(v4, v5);
}

void OUTLINED_FUNCTION_23(uint64_t a1@<X8>)
{
  *(v3 - 96) = a1;
  *(v3 - 86) = BYTE2(v2);
  *(v3 - 88) = v1;
  *(v3 - 85) = 0;
}

uint64_t OUTLINED_FUNCTION_36(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(v4 - 160);

  return __swift_storeEnumTagSinglePayload(v6, 1, 1, a4);
}

BOOL sub_2669AD1C4(uint64_t (*a1)(void), uint64_t (*a2)(uint64_t))
{
  type metadata accessor for GetContactQuickActionButtonsView(0);
  v4 = a1();
  v5 = sub_26699F950(v4);

  if (v5)
  {
    return 0;
  }

  v8 = *(a2(v6) + 16);

  return v8 == 0;
}

uint64_t sub_2669AD244@<X0>(_BYTE *a1@<X8>)
{
  *a1 = sub_2669C6074();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AC5A8, &qword_2669C8310);
  return sub_2669AD290(v1, &a1[*(v3 + 44)]);
}

uint64_t sub_2669AD290@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v30 = a1;
  v34 = a2;
  ContactQuickActionButtonsView = type metadata accessor for GetContactQuickActionButtonsView(0);
  v4 = *(ContactQuickActionButtonsView - 8);
  MEMORY[0x28223BE20](ContactQuickActionButtonsView - 8);
  v29[1] = v5;
  v6 = v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AC5B0, &qword_2669C8318);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v33 = v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v32 = v29 - v11;
  v12 = MEMORY[0x28223BE20](v10);
  v31 = v29 - v13;
  MEMORY[0x28223BE20](v12);
  v29[0] = v29 - v14;
  v35 = sub_2669C5944();
  sub_2669B2C48(a1, v6);
  v15 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v16 = swift_allocObject();
  sub_2669B2CB0(v6, v16 + v15);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AC5B8, &qword_2669C8320);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AC5C0, &qword_2669C8328);
  sub_26699A174(&qword_2800AC5C8, &qword_2800AC5B8, &qword_2669C8320, MEMORY[0x277D83980]);
  sub_2669B2D5C();
  sub_2669B3724(&qword_2800AC5F8, MEMORY[0x277D55A40], MEMORY[0x277D55A50]);
  v17 = v29[0];
  sub_2669C63D4();
  v35 = sub_2669C5934();
  sub_2669B2C48(v30, v6);
  v18 = swift_allocObject();
  sub_2669B2CB0(v6, v18 + v15);
  v19 = v31;
  sub_2669C63D4();
  v20 = v17;
  v21 = v17;
  v22 = v32;
  sub_2669B4E38(v21, v32, &qword_2800AC5B0, &qword_2669C8318);
  v23 = v33;
  sub_2669B4E38(v19, v33, &qword_2800AC5B0, &qword_2669C8318);
  v24 = v22;
  v25 = v22;
  v26 = v34;
  sub_2669B4E38(v24, v34, &qword_2800AC5B0, &qword_2669C8318);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AC600, &qword_2669C8340);
  sub_2669B4E38(v23, v26 + *(v27 + 48), &qword_2800AC5B0, &qword_2669C8318);
  sub_2669B5184(v19, &qword_2800AC5B0, &qword_2669C8318);
  sub_2669B5184(v20, &qword_2800AC5B0, &qword_2669C8318);
  sub_2669B5184(v23, &qword_2800AC5B0, &qword_2669C8318);
  return sub_2669B5184(v25, &qword_2800AC5B0, &qword_2669C8318);
}

uint64_t sub_2669AD698@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v174 = a1;
  v175 = a2;
  v156 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AC620, &qword_2669C8388);
  v139 = *(v156 - 8);
  MEMORY[0x28223BE20](v156);
  v142 = &v137 - v2;
  v153 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AC628, &qword_2669C8390);
  MEMORY[0x28223BE20](v153);
  v154 = &v137 - v3;
  v168 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AC630, &qword_2669C8398);
  MEMORY[0x28223BE20](v168);
  v155 = &v137 - v4;
  v149 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AC638, &qword_2669C83A0);
  v138 = *(v149 - 8);
  MEMORY[0x28223BE20](v149);
  v141 = &v137 - v5;
  v172 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AC640, &qword_2669C83A8);
  MEMORY[0x28223BE20](v172);
  v7 = &v137 - v6;
  v164 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AC648, &qword_2669C83B0);
  MEMORY[0x28223BE20](v164);
  v167 = &v137 - v8;
  v146 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AC650, &qword_2669C83B8);
  MEMORY[0x28223BE20](v146);
  v147 = &v137 - v9;
  v166 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AC658, &qword_2669C83C0);
  MEMORY[0x28223BE20](v166);
  v148 = &v137 - v10;
  v171 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AC660, &qword_2669C83C8);
  MEMORY[0x28223BE20](v171);
  v12 = &v137 - v11;
  v170 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AC668, &qword_2669C83D0);
  MEMORY[0x28223BE20](v170);
  v165 = &v137 - v13;
  v160 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AC670, &qword_2669C83D8);
  v152 = *(v160 - 8);
  v14 = MEMORY[0x28223BE20](v160);
  v140 = &v137 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v145 = &v137 - v17;
  MEMORY[0x28223BE20](v16);
  v143 = &v137 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AC678, &qword_2669C83E0);
  v20 = MEMORY[0x28223BE20](v19 - 8);
  v144 = &v137 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v20);
  v169 = &v137 - v23;
  v24 = MEMORY[0x28223BE20](v22);
  v162 = &v137 - v25;
  MEMORY[0x28223BE20](v24);
  v151 = &v137 - v26;
  ContactQuickActionButtonsView = type metadata accessor for GetContactQuickActionButtonsView(0);
  v28 = *(ContactQuickActionButtonsView - 8);
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](ContactQuickActionButtonsView);
  v176 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AC680, &qword_2669C83E8);
  v163 = *(v176 - 8);
  v30 = MEMORY[0x28223BE20](v176);
  v150 = &v137 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = MEMORY[0x28223BE20](v30);
  v34 = &v137 - v33;
  v35 = MEMORY[0x28223BE20](v32);
  v161 = &v137 - v36;
  MEMORY[0x28223BE20](v35);
  v157 = &v137 - v37;
  v38 = sub_2669C5954();
  v39 = *(v38 - 8);
  MEMORY[0x28223BE20](v38);
  v41 = &v137 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v39 + 16))(v41, v174, v38);
  v42 = v41;
  v43 = v177;
  v44 = (*(v39 + 88))(v42, v38);
  v45 = *MEMORY[0x277D55A28];
  v173 = v29;
  v174 = &v137 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v44 == v45)
  {
    v158 = v12;
    v159 = v7;
    v178 = sub_2669BBE70();
    sub_2669B2C48(v43, &v137 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0));
    v46 = (*(v28 + 80) + 16) & ~*(v28 + 80);
    v47 = swift_allocObject();
    sub_2669B2CB0(&v137 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0), v47 + v46);
    v157 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AC688, &qword_2669C83F0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AC690, &qword_2669C83F8);
    sub_26699A174(&qword_2800AC698, &qword_2800AC688, &qword_2669C83F0, MEMORY[0x277D83980]);
    sub_26699A174(&qword_2800AC6A0, &qword_2800AC690, &qword_2669C83F8, MEMORY[0x277CDF028]);
    sub_2669B3724(&qword_2800AC6A8, MEMORY[0x277D55A08], MEMORY[0x277D55A10]);
    sub_2669C63D4();
    v48 = *(sub_2669BBF88() + 16);

    v49 = v34;
    if (v48)
    {
      v50 = sub_2669BBF88();
      v178 = sub_2669B37D8(v50);
      sub_2669B376C(&v178);

      swift_getKeyPath();
      v51 = v174;
      sub_2669B2C48(v177, v174);
      v52 = swift_allocObject();
      sub_2669B2CB0(v51, v52 + v46);
      v53 = swift_allocObject();
      *(v53 + 16) = sub_2669B3C64;
      *(v53 + 24) = v52;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AC6B0, &qword_2669C8420);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AC6B8, &qword_2669C8428);
      sub_26699A174(&qword_2800AC6C0, &qword_2800AC6B0, &qword_2669C8420, MEMORY[0x277D83980]);
      sub_26699A174(&qword_2800AC6C8, &qword_2800AC6B8, &qword_2669C8428, MEMORY[0x277CDE5B0]);
      v54 = v145;
      sub_2669C63C4();
      v55 = v169;
      v56 = v160;
      (*(v152 + 32))(v169, v54, v160);
      v57 = 0;
    }

    else
    {
      v57 = 1;
      v56 = v160;
      v55 = v169;
    }

    __swift_storeEnumTagSinglePayload(v55, v57, 1, v56);
    v88 = v163;
    v89 = *(v163 + 16);
    v90 = v55;
    v91 = v161;
    v92 = v176;
    v89(v161, v49, v176);
    v93 = v90;
    v94 = v162;
    sub_2669B4E38(v93, v162, &qword_2800AC678, &qword_2669C83E0);
    v177 = v49;
    v95 = v165;
    v89(v165, v91, v92);
    v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AC6D0, &qword_2669C8430);
    sub_2669B4E38(v94, v95 + *(v96 + 48), &qword_2800AC678, &qword_2669C83E0);
    sub_2669B5184(v94, &qword_2800AC678, &qword_2669C83E0);
    v174 = *(v88 + 8);
    (v174)(v91, v92);
    sub_2669B4E38(v95, v154, &qword_2800AC668, &qword_2669C83D0);
    swift_storeEnumTagMultiPayload();
    sub_26699A174(&qword_2800AC6E8, &qword_2800AC668, &qword_2669C83D0, MEMORY[0x277CE14C0]);
    sub_2669B3B30();
    v97 = v155;
    sub_2669C5FB4();
    sub_2669B4E38(v97, v167, &qword_2800AC630, &qword_2669C8398);
    swift_storeEnumTagMultiPayload();
    sub_2669B39E0(&qword_2800AC6E0, &qword_2800AC658, &qword_2669C83C0, sub_2669B3A80);
    sub_2669B39E0(&qword_2800AC6F8, &qword_2800AC630, &qword_2669C8398, sub_2669B3B30);
    v98 = v158;
    sub_2669C5FB4();
    sub_2669B5184(v97, &qword_2800AC630, &qword_2669C8398);
    sub_2669B4E38(v98, v159, &qword_2800AC660, &qword_2669C83C8);
    swift_storeEnumTagMultiPayload();
    sub_2669B38FC();
    sub_2669C5FB4();
    sub_2669B5184(v98, &qword_2800AC660, &qword_2669C83C8);
    sub_2669B5184(v95, &qword_2800AC668, &qword_2669C83D0);
    sub_2669B5184(v169, &qword_2800AC678, &qword_2669C83E0);
    return (v174)(v177, v176);
  }

  else
  {
    v58 = v28;
    if (v44 == *MEMORY[0x277D55A18])
    {
      v158 = v12;
      v159 = v7;
      v59 = v177;
      v178 = sub_2669BBE64();
      v60 = v59;
      v61 = v174;
      sub_2669B2C48(v60, v174);
      v62 = (*(v28 + 80) + 16) & ~*(v28 + 80);
      v63 = swift_allocObject();
      sub_2669B2CB0(v61, v63 + v62);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AC688, &qword_2669C83F0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AC690, &qword_2669C83F8);
      sub_26699A174(&qword_2800AC698, &qword_2800AC688, &qword_2669C83F0, MEMORY[0x277D83980]);
      sub_26699A174(&qword_2800AC6A0, &qword_2800AC690, &qword_2669C83F8, MEMORY[0x277CDF028]);
      sub_2669B3724(&qword_2800AC6A8, MEMORY[0x277D55A08], MEMORY[0x277D55A10]);
      sub_2669C63D4();
      v64 = *(sub_2669BBF60() + 16);

      if (v64)
      {
        v65 = sub_2669BBF60();
        v178 = sub_2669B37D8(v65);
        sub_2669B376C(&v178);

        swift_getKeyPath();
        v66 = v174;
        sub_2669B2C48(v177, v174);
        v67 = swift_allocObject();
        sub_2669B2CB0(v66, v67 + v62);
        v68 = swift_allocObject();
        *(v68 + 16) = sub_2669B3CF0;
        *(v68 + 24) = v67;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AC6B0, &qword_2669C8420);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AC6B8, &qword_2669C8428);
        sub_26699A174(&qword_2800AC6C0, &qword_2800AC6B0, &qword_2669C8420, MEMORY[0x277D83980]);
        sub_26699A174(&qword_2800AC6C8, &qword_2800AC6B8, &qword_2669C8428, MEMORY[0x277CDE5B0]);
        v69 = v143;
        sub_2669C63C4();
        v70 = v151;
        v71 = v160;
        (*(v152 + 32))(v151, v69, v160);
        v72 = 0;
      }

      else
      {
        v72 = 1;
        v71 = v160;
        v70 = v151;
      }

      __swift_storeEnumTagSinglePayload(v70, v72, 1, v71);
      v110 = v163;
      v111 = *(v163 + 16);
      v112 = v161;
      v113 = v176;
      v111(v161, v157, v176);
      v114 = v70;
      v115 = v162;
      sub_2669B4E38(v114, v162, &qword_2800AC678, &qword_2669C83E0);
      v116 = v165;
      v111(v165, v112, v113);
      v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AC6D0, &qword_2669C8430);
      sub_2669B4E38(v115, v116 + *(v117 + 48), &qword_2800AC678, &qword_2669C83E0);
      sub_2669B5184(v115, &qword_2800AC678, &qword_2669C83E0);
      v177 = *(v110 + 8);
      (v177)(v112, v113);
      sub_2669B4E38(v116, v147, &qword_2800AC668, &qword_2669C83D0);
      swift_storeEnumTagMultiPayload();
      sub_26699A174(&qword_2800AC6E8, &qword_2800AC668, &qword_2669C83D0, MEMORY[0x277CE14C0]);
      sub_2669B3A80();
      v118 = v148;
      sub_2669C5FB4();
      sub_2669B4E38(v118, v167, &qword_2800AC658, &qword_2669C83C0);
      swift_storeEnumTagMultiPayload();
      sub_2669B39E0(&qword_2800AC6E0, &qword_2800AC658, &qword_2669C83C0, sub_2669B3A80);
      sub_2669B39E0(&qword_2800AC6F8, &qword_2800AC630, &qword_2669C8398, sub_2669B3B30);
      v119 = v158;
      sub_2669C5FB4();
      sub_2669B5184(v118, &qword_2800AC658, &qword_2669C83C0);
      sub_2669B4E38(v119, v159, &qword_2800AC660, &qword_2669C83C8);
      swift_storeEnumTagMultiPayload();
      sub_2669B38FC();
      sub_2669C5FB4();
      sub_2669B5184(v119, &qword_2800AC660, &qword_2669C83C8);
      sub_2669B5184(v116, &qword_2800AC668, &qword_2669C83D0);
      sub_2669B5184(v151, &qword_2800AC678, &qword_2669C83E0);
      return (v177)(v157, v176);
    }

    else
    {
      v73 = v177;
      v74 = v174;
      if (v44 == *MEMORY[0x277D55A38])
      {
        v75 = v7;
        v178 = sub_2669BBF2C();
        sub_2669B2C48(v73, v74);
        v76 = (*(v58 + 80) + 16) & ~*(v58 + 80);
        v77 = swift_allocObject();
        v169 = v76;
        sub_2669B2CB0(v74, v77 + v76);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AC688, &qword_2669C83F0);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AC690, &qword_2669C83F8);
        sub_26699A174(&qword_2800AC698, &qword_2800AC688, &qword_2669C83F0, MEMORY[0x277D83980]);
        sub_26699A174(&qword_2800AC6A0, &qword_2800AC690, &qword_2669C83F8, MEMORY[0x277CDF028]);
        sub_2669B3724(&qword_2800AC6A8, MEMORY[0x277D55A08], MEMORY[0x277D55A10]);
        sub_2669C63D4();
        v78 = *(sub_2669BBFB0() + 16);

        if (v78)
        {
          v79 = sub_2669BBFB0();
          v178 = sub_2669B37D8(v79);
          sub_2669B376C(&v178);

          swift_getKeyPath();
          v80 = v174;
          sub_2669B2C48(v177, v174);
          v81 = v169;
          v82 = swift_allocObject();
          sub_2669B2CB0(v80, v82 + v81);
          v83 = swift_allocObject();
          *(v83 + 16) = sub_2669B3894;
          *(v83 + 24) = v82;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AC6B0, &qword_2669C8420);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AC6B8, &qword_2669C8428);
          sub_26699A174(&qword_2800AC6C0, &qword_2800AC6B0, &qword_2669C8420, MEMORY[0x277D83980]);
          sub_26699A174(&qword_2800AC6C8, &qword_2800AC6B8, &qword_2669C8428, MEMORY[0x277CDE5B0]);
          v84 = v140;
          sub_2669C63C4();
          v85 = v144;
          v86 = v160;
          (*(v152 + 32))(v144, v84, v160);
          v87 = 0;
        }

        else
        {
          v87 = 1;
          v86 = v160;
          v85 = v144;
        }

        __swift_storeEnumTagSinglePayload(v85, v87, 1, v86);
        v129 = v163;
        v130 = *(v163 + 16);
        v131 = v161;
        v132 = v176;
        v130(v161, v150, v176);
        v133 = v162;
        sub_2669B4E38(v85, v162, &qword_2800AC678, &qword_2669C83E0);
        v134 = v165;
        v130(v165, v131, v132);
        v135 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AC6D0, &qword_2669C8430);
        sub_2669B4E38(v133, v134 + *(v135 + 48), &qword_2800AC678, &qword_2669C83E0);
        sub_2669B5184(v133, &qword_2800AC678, &qword_2669C83E0);
        v136 = *(v129 + 8);
        v136(v131, v132);
        sub_2669B4E38(v134, v75, &qword_2800AC668, &qword_2669C83D0);
        swift_storeEnumTagMultiPayload();
        sub_2669B38FC();
        sub_26699A174(&qword_2800AC6E8, &qword_2800AC668, &qword_2669C83D0, MEMORY[0x277CE14C0]);
        sub_2669C5FB4();
        sub_2669B5184(v134, &qword_2800AC668, &qword_2669C83D0);
        sub_2669B5184(v144, &qword_2800AC678, &qword_2669C83E0);
        return (v136)(v150, v132);
      }

      else
      {
        v100 = v44 == *MEMORY[0x277D55A20];
        v159 = v7;
        v158 = v12;
        if (v100)
        {
          v101 = [*&v177[*(ContactQuickActionButtonsView + 24)] emailAddresses];
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AC718, qword_2669C8440);
          v102 = sub_2669C6764();

          v178 = v102;
          swift_getKeyPath();
          sub_2669B2C48(v73, v74);
          v103 = (*(v28 + 80) + 16) & ~*(v28 + 80);
          v104 = swift_allocObject();
          sub_2669B2CB0(v74, v104 + v103);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AC720, &qword_2669C8480);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AC690, &qword_2669C83F8);
          sub_26699A174(&qword_2800AC730, &qword_2800AC720, &qword_2669C8480, MEMORY[0x277D83980]);
          sub_26699A174(&qword_2800AC6A0, &qword_2800AC690, &qword_2669C83F8, MEMORY[0x277CDF028]);
          v105 = v141;
          sub_2669C63C4();
          v106 = v138;
          v107 = v149;
          (*(v138 + 16))(v147, v105, v149);
          swift_storeEnumTagMultiPayload();
          sub_26699A174(&qword_2800AC6E8, &qword_2800AC668, &qword_2669C83D0, MEMORY[0x277CE14C0]);
          sub_2669B3A80();
          v108 = v148;
          sub_2669C5FB4();
          sub_2669B4E38(v108, v167, &qword_2800AC658, &qword_2669C83C0);
          swift_storeEnumTagMultiPayload();
          sub_2669B39E0(&qword_2800AC6E0, &qword_2800AC658, &qword_2669C83C0, sub_2669B3A80);
          sub_2669B39E0(&qword_2800AC6F8, &qword_2800AC630, &qword_2669C8398, sub_2669B3B30);
          v109 = v158;
          sub_2669C5FB4();
          sub_2669B5184(v108, &qword_2800AC658, &qword_2669C83C0);
          sub_2669B4E38(v109, v159, &qword_2800AC660, &qword_2669C83C8);
          swift_storeEnumTagMultiPayload();
          sub_2669B38FC();
          sub_2669C5FB4();
          sub_2669B5184(v109, &qword_2800AC660, &qword_2669C83C8);
          return (*(v106 + 8))(v141, v107);
        }

        else if (v44 == *MEMORY[0x277D55A30])
        {
          v120 = [*&v177[*(ContactQuickActionButtonsView + 24)] postalAddresses];
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AC718, qword_2669C8440);
          v121 = sub_2669C6764();

          v178 = v121;
          swift_getKeyPath();
          sub_2669B2C48(v73, v74);
          v122 = (*(v28 + 80) + 16) & ~*(v28 + 80);
          v123 = swift_allocObject();
          sub_2669B2CB0(v74, v123 + v122);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AC720, &qword_2669C8480);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AC710, &qword_2669C8438);
          sub_26699A174(&qword_2800AC728, &qword_2800AC720, &qword_2669C8480, MEMORY[0x277D83980]);
          sub_26699A174(&qword_2800AC708, &qword_2800AC710, &qword_2669C8438, MEMORY[0x277CDF028]);
          v124 = v142;
          sub_2669C63C4();
          v125 = v139;
          v126 = v156;
          (*(v139 + 16))(v154, v124, v156);
          swift_storeEnumTagMultiPayload();
          v177 = sub_26699A174(&qword_2800AC6E8, &qword_2800AC668, &qword_2669C83D0, MEMORY[0x277CE14C0]);
          sub_2669B3B30();
          v127 = v155;
          sub_2669C5FB4();
          sub_2669B4E38(v127, v167, &qword_2800AC630, &qword_2669C8398);
          swift_storeEnumTagMultiPayload();
          sub_2669B39E0(&qword_2800AC6E0, &qword_2800AC658, &qword_2669C83C0, sub_2669B3A80);
          sub_2669B39E0(&qword_2800AC6F8, &qword_2800AC630, &qword_2669C8398, sub_2669B3B30);
          v128 = v158;
          sub_2669C5FB4();
          sub_2669B5184(v127, &qword_2800AC630, &qword_2669C8398);
          sub_2669B4E38(v128, v159, &qword_2800AC660, &qword_2669C83C8);
          swift_storeEnumTagMultiPayload();
          sub_2669B38FC();
          sub_2669C5FB4();
          sub_2669B5184(v128, &qword_2800AC660, &qword_2669C83C8);
          return (*(v125 + 8))(v142, v126);
        }

        else
        {
          result = sub_2669C6A84();
          __break(1u);
        }
      }
    }
  }

  return result;
}

uint64_t sub_2669AF7AC(uint64_t a1)
{
  v2 = sub_2669C5954();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v5, a1, v2);
  v6 = (*(v3 + 88))(v5, v2);
  if (v6 == *MEMORY[0x277D55A28])
  {
    type metadata accessor for GetContactQuickActionButtonsView(0);
    v7 = sub_2669BBE70();
    v8 = sub_26699F950(v7);

    return v8 == 0;
  }

  if (v6 == *MEMORY[0x277D55A18])
  {
    v11 = sub_2669BBE64;
    v12 = sub_2669BBF60;
    return sub_2669AD1C4(v11, v12);
  }

  if (v6 == *MEMORY[0x277D55A38])
  {
    v11 = sub_2669BBF2C;
    v12 = sub_2669BBFB0;
    return sub_2669AD1C4(v11, v12);
  }

  if (v6 == *MEMORY[0x277D55A20])
  {
    type metadata accessor for GetContactQuickActionButtonsView(0);
    v14 = sub_2669C5B14();
LABEL_16:
    v15 = *(v14 + 16);

    return v15 == 0;
  }

  if (v6 == *MEMORY[0x277D55A30])
  {
    type metadata accessor for GetContactQuickActionButtonsView(0);
    v14 = sub_2669C5B34();
    goto LABEL_16;
  }

  result = sub_2669C6A84();
  __break(1u);
  return result;
}

void sub_2669AF9F0()
{
  OUTLINED_FUNCTION_35();
  v31 = v1;
  v32 = v0;
  v30[2] = v2;
  v30[3] = v3;
  v30[1] = v4;
  v6 = v5;
  v8 = v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AC5E0, &qword_2669C8330);
  OUTLINED_FUNCTION_14_1();
  MEMORY[0x28223BE20](v10);
  v12 = v30 - v11;
  ContactQuickActionButtonsView = type metadata accessor for GetContactQuickActionButtonsView(0);
  if (*v6)
  {
    v14 = *(v6 + *(ContactQuickActionButtonsView + 28) + 8);
    v15 = *(v14 + OBJC_IVAR____TtC14SiriContactsUI37GetContactQuickActionButtonsViewModel_shouldUseLightBackground);
    v16 = *v6;
    sub_2669C65B4();

    *v12 = sub_2669C68E4() & 1;
    v12[1] = v15;
    v17 = sub_2669AD698(v8, &v12[*(v9 + 56)]);
    v18 = &v12[*(v9 + 60)];
    MEMORY[0x28223BE20](v17);
    v30[-2] = v6;
    v30[-1] = v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AC608, &qword_2669C8348);
    OUTLINED_FUNCTION_1_6();
    sub_26699A174(v19, &qword_2800AC608, &qword_2669C8348, v20);
    sub_2669C6364();
    v21 = *(v14 + OBJC_IVAR____TtC14SiriContactsUI37GetContactQuickActionButtonsViewModel_textColor);
    *&v18[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AC618, &qword_2669C8350) + 36)] = v21;

    LOBYTE(v18) = sub_2669AF7AC(v8);
    KeyPath = swift_getKeyPath();
    v23 = swift_allocObject();
    *(v23 + 16) = v18 & 1;
    v24 = v31;
    sub_2669B366C(v12, v31);
    v25 = (v24 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AC5C0, &qword_2669C8328) + 36));
    v26 = v32;
    *v25 = KeyPath;
    v25[1] = v26;
    v25[2] = v23;
    OUTLINED_FUNCTION_37();
  }

  else
  {
    sub_2669C65D4();
    OUTLINED_FUNCTION_6_1();
    v29 = sub_2669B3724(v27, v28, MEMORY[0x277D63F50]);
    OUTLINED_FUNCTION_22(v29);
    __break(1u);
  }
}

uint64_t sub_2669AFC5C(uint64_t a1, uint64_t a2)
{
  type metadata accessor for GetContactQuickActionButtonsView(0);
  sub_2669BC1FC(a2);
  v3 = sub_2669C2108();
  sub_266999FC4(v3, v4, v5);
  return sub_2669C6324();
}

uint64_t sub_2669AFCE8(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AC768, &qword_2669C84C8);
  sub_26699A174(&qword_2800AC770, &qword_2800AC768, &qword_2669C84C8, MEMORY[0x277CDD6A8]);
  return sub_2669C6314();
}

uint64_t sub_2669AFDB4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2669C6304();
  *a1 = result;
  return result;
}

uint64_t sub_2669AFDEC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_26699F950(a1);
  if (v4)
  {
    sub_26699F6CC(0, (a1 & 0xC000000000000001) == 0, a1);
    if ((a1 & 0xC000000000000001) != 0)
    {
      v5 = MEMORY[0x26D5E4670](0, a1);
    }

    else
    {
      v5 = *(a1 + 32);
    }

    v6 = v5;
    sub_2669C58C4();
  }

  sub_2669C66E4();
  v8 = v7;

  if (!v8 && v4)
  {
    sub_26699F6CC(0, (a1 & 0xC000000000000001) == 0, a1);
    if ((a1 & 0xC000000000000001) != 0)
    {
      v12 = MEMORY[0x26D5E4670](0, a1);
    }

    else
    {
      v12 = *(a1 + 32);
    }

    v13 = v12;
    sub_2669C5904();
  }

  sub_266999FC4(v9, v10, v11);
  result = sub_2669C6164();
  *a2 = result;
  *(a2 + 8) = v15;
  *(a2 + 16) = v16 & 1;
  *(a2 + 24) = v17;
  return result;
}

uint64_t sub_2669AFF28(void **a1, uint64_t a2)
{
  ContactQuickActionButtonsView = type metadata accessor for GetContactQuickActionButtonsView(0);
  v5 = *(ContactQuickActionButtonsView - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](ContactQuickActionButtonsView - 8);
  v7 = *a1;
  sub_2669B2C48(a2, &v12[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)]);
  v8 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v9 = swift_allocObject();
  sub_2669B2CB0(&v12[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)], v9 + v8);
  *(v9 + ((v6 + v8 + 7) & 0xFFFFFFFFFFFFFFF8)) = v7;
  v13 = a2;
  v14 = v7;
  v10 = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AC7A0, &qword_2669C84F0);
  sub_26699A174(&qword_2800AC7A8, &qword_2800AC7A0, &qword_2669C84F0, MEMORY[0x277CDEFF0]);
  return sub_2669C6364();
}

uint64_t sub_2669B00C0(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AC7B0, &qword_2669C84F8);
  sub_26699A174(&qword_2800AC7B8, &qword_2800AC7B0, &qword_2669C84F8, MEMORY[0x277CE1198]);
  return sub_2669C6314();
}

uint64_t sub_2669B018C@<X0>(uint64_t a3@<X8>)
{
  *a3 = sub_2669C5FA4();
  *(a3 + 8) = 0;
  *(a3 + 16) = 1;
  v4 = a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AC7C0, &qword_2669C8500) + 44);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AC778, &qword_2669C84D0);
  sub_26699A174(&qword_2800AC780, &qword_2800AC778, &qword_2669C84D0, MEMORY[0x277CE14C0]);
  sub_2669C5D34();
  KeyPath = swift_getKeyPath();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AC7C8, &unk_2669C8538);
  v7 = v4 + *(result + 36);
  *v7 = KeyPath;
  *(v7 + 8) = 0;
  return result;
}

uint64_t sub_2669B0298@<X0>(void *a1@<X1>, uint64_t a2@<X8>)
{
  type metadata accessor for GetContactQuickActionButtonsView(0);
  v4 = [a1 identifier];
  v5 = sub_2669C6654();
  v7 = v6;

  v8 = sub_2669C5874();
  sub_2669BB23C(v5, v7, v8);

  sub_266999FC4(v9, v10, v11);
  v12 = sub_2669C6164();
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v19 = [a1 value];
  sub_2669C6654();

  v20 = sub_2669C6164();
  v22 = v21;
  v23 = v16 & 1;
  v28 = v16 & 1;
  v25 = v24 & 1;
  *a2 = v12;
  *(a2 + 8) = v14;
  *(a2 + 16) = v23;
  *(a2 + 24) = v18;
  *(a2 + 32) = v20;
  *(a2 + 40) = v21;
  *(a2 + 48) = v24 & 1;
  *(a2 + 56) = v26;
  sub_2669A22A8(v12, v14, v23);

  sub_2669A22A8(v20, v22, v25);

  sub_26699A018(v20, v22, v25);

  sub_26699A018(v12, v14, v28);
}

uint64_t sub_2669B0480@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2669C6304();
  *a1 = result;
  return result;
}

void sub_2669B04BC()
{
  OUTLINED_FUNCTION_35();
  v2 = v1;
  v4 = v3;
  v5 = OUTLINED_FUNCTION_2_6();
  v7 = v6;
  v8 = MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_11_1(v8, v9, v10, v11, v12, v13, v14, v15, v21);
  v16 = OUTLINED_FUNCTION_9_1();
  sub_2669B2CB0(v0, v16 + v2);
  *(v16 + v7) = v4;
  v17 = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AC7A0, &qword_2669C84F0);
  OUTLINED_FUNCTION_1_6();
  v20 = sub_26699A174(v18, &qword_2800AC7A0, &qword_2669C84F0, v19);
  OUTLINED_FUNCTION_13_1(v20);
  OUTLINED_FUNCTION_37();
}

void sub_2669B05B4(id *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ABF80, &qword_2669C76E8);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v29 - v6;
  type metadata accessor for GetContactQuickActionButtonsView(0);
  v8 = sub_2669C5B44();
  v9 = sub_2669C58D4();
  if (!*(v8 + 16))
  {

    goto LABEL_7;
  }

  v11 = sub_2669BB76C(v9, v10);
  v13 = v12;

  if ((v13 & 1) == 0)
  {
LABEL_7:

    if (qword_2800ABEB8 != -1)
    {
      swift_once();
    }

    v22 = sub_2669C5C94();
    __swift_project_value_buffer(v22, qword_2800ACC88);
    v30 = sub_2669C5C74();
    v23 = sub_2669C6864();
    if (os_log_type_enabled(v30, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&dword_266996000, v30, v23, "#GetContactQuickActionButtonsView could not obtain direct invocation for button press", v24, 2u);
      MEMORY[0x26D5E4D50](v24, -1, -1);
    }

    goto LABEL_16;
  }

  v14 = (*(v8 + 56) + 16 * v11);
  v16 = *v14;
  v15 = v14[1];
  sub_26699BF34(*v14, v15);

  sub_26699F8F0(0, &qword_2800AC080, 0x277D471B0);
  v17 = sub_2669C6844();
  if (v17)
  {
    v18 = v17;
    v19 = sub_2669C5954();
    __swift_storeEnumTagSinglePayload(v7, 1, 1, v19);
    sub_2669B4E38(v7, v5, &qword_2800ABF80, &qword_2669C76E8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AC578, "~#");
    sub_2669C6344();
    sub_2669B5184(v7, &qword_2800ABF80, &qword_2669C76E8);
    if (*a1)
    {
      v20 = *a1;
      v21 = v18;
      sub_2669C65C4();

      sub_26699BE60(v16, v15);
    }

    else
    {
      sub_2669C65D4();
      sub_2669B3724(&qword_2800AC010, MEMORY[0x277D63F60], MEMORY[0x277D63F50]);
      sub_2669C5E74();
      __break(1u);
    }

    return;
  }

  if (qword_2800ABEB8 != -1)
  {
    swift_once();
  }

  v25 = sub_2669C5C94();
  __swift_project_value_buffer(v25, qword_2800ACC88);
  v30 = sub_2669C5C74();
  v26 = sub_2669C6864();
  if (os_log_type_enabled(v30, v26))
  {
    v27 = swift_slowAlloc();
    *v27 = 0;
    _os_log_impl(&dword_266996000, v30, v26, "#GetContactQuickActionButtonsView could not convert direct invocation to actionable command", v27, 2u);
    MEMORY[0x26D5E4D50](v27, -1, -1);
  }

  sub_26699BE60(v16, v15);
LABEL_16:
  v28 = v30;
}

uint64_t sub_2669B09E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AC7B0, &qword_2669C84F8);
  sub_26699A174(&qword_2800AC7B8, &qword_2800AC7B0, &qword_2669C84F8, MEMORY[0x277CE1198]);
  return sub_2669C6314();
}

uint64_t sub_2669B0AA0@<X0>(uint64_t a3@<X8>)
{
  *a3 = sub_2669C5FA4();
  *(a3 + 8) = 0;
  *(a3 + 16) = 1;
  v4 = a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AC7C0, &qword_2669C8500) + 44);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AC778, &qword_2669C84D0);
  OUTLINED_FUNCTION_0_7();
  sub_26699A174(v5, &qword_2800AC778, &qword_2669C84D0, v6);
  sub_2669C5D34();
  KeyPath = swift_getKeyPath();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AC7C8, &unk_2669C8538);
  v9 = v4 + *(result + 36);
  *v9 = KeyPath;
  *(v9 + 8) = 0;
  return result;
}

uint64_t sub_2669B0B94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AC738, &qword_2669C84B0);
  sub_2669B3E08();
  return sub_2669C60F4();
}

void sub_2669B0C20()
{
  OUTLINED_FUNCTION_35();
  v1 = v0;
  v3 = v2;
  v4 = OUTLINED_FUNCTION_2_6();
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v4);
  v11[1] = v3;
  sub_2669B2C48(v1, v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v10 = swift_allocObject();
  sub_2669B2CB0(v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v10 + v9);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AC688, &qword_2669C83F0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AC750, &qword_2669C84B8);
  sub_26699A174(&qword_2800AC698, &qword_2800AC688, &qword_2669C83F0, MEMORY[0x277D83980]);
  sub_26699A174(&qword_2800AC748, &qword_2800AC750, &qword_2669C84B8, MEMORY[0x277CDF028]);
  sub_2669B3724(&qword_2800AC6A8, MEMORY[0x277D55A08], MEMORY[0x277D55A10]);
  sub_2669C63D4();
  OUTLINED_FUNCTION_37();
}

uint64_t sub_2669B0E0C(void **a1, uint64_t a2)
{
  ContactQuickActionButtonsView = type metadata accessor for GetContactQuickActionButtonsView(0);
  v5 = *(ContactQuickActionButtonsView - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](ContactQuickActionButtonsView - 8);
  v7 = *a1;
  sub_2669B2C48(a2, &v12[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)]);
  v8 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = v7;
  sub_2669B2CB0(&v12[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)], v9 + v8);
  v13 = v7;
  v10 = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AC758, &qword_2669C84C0);
  sub_26699A174(&qword_2800AC760, &qword_2800AC758, &qword_2669C84C0, MEMORY[0x277CDEFF0]);
  return sub_2669C6364();
}

void sub_2669B0F90(uint64_t a1, void **a2)
{
  v3 = sub_2669C5804();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AC540, &qword_2669C8220);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v44 - v8;
  v10 = sub_2669C57C4();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v44 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v44 - v15;
  sub_2669C58E4();
  if (__swift_getEnumTagSinglePayload(v9, 1, v10) == 1)
  {
    sub_2669B5184(v9, &qword_2800AC540, &qword_2669C8220);
    if (qword_2800ABEB8 != -1)
    {
      swift_once();
    }

    v17 = sub_2669C5C94();
    __swift_project_value_buffer(v17, qword_2800ACC88);
    v18 = sub_2669C5C74();
    v19 = sub_2669C6854();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_266996000, v18, v19, "#GetContactQuickActionButtonsView message tapped but no URL available", v20, 2u);
      MEMORY[0x26D5E4D50](v20, -1, -1);
    }
  }

  else
  {
    v48 = v6;
    (*(v11 + 32))(v16, v9, v10);
    if (qword_2800ABEB8 != -1)
    {
      swift_once();
    }

    v21 = sub_2669C5C94();
    __swift_project_value_buffer(v21, qword_2800ACC88);
    (*(v11 + 16))(v14, v16, v10);
    v22 = sub_2669C5C74();
    v23 = sub_2669C6854();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v44 = v4;
      v25 = v24;
      v26 = swift_slowAlloc();
      v46 = a2;
      v27 = v26;
      v49 = v26;
      *v25 = 136315138;
      v28 = sub_2669C5794();
      v45 = v3;
      v30 = v29;
      v47 = *(v11 + 8);
      v47(v14, v10);
      v31 = sub_26699F100(v28, v30, &v49);
      v3 = v45;

      *(v25 + 4) = v31;
      _os_log_impl(&dword_266996000, v22, v23, "#GetContactQuickActionButtonsView opening URL %s", v25, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v27);
      v32 = v27;
      a2 = v46;
      MEMORY[0x26D5E4D50](v32, -1, -1);
      v33 = v25;
      v4 = v44;
      MEMORY[0x26D5E4D50](v33, -1, -1);
    }

    else
    {

      v47 = *(v11 + 8);
      v47(v14, v10);
    }

    v34 = [objc_allocWithZone(MEMORY[0x277D479F0]) init];
    sub_2669B49DC(v34);
    v35 = v48;
    if (v36)
    {
    }

    else
    {
      sub_2669C57F4();
      v37 = sub_2669C57E4();
      v39 = v38;
      (*(v4 + 8))(v35, v3);
      sub_2669B4A4C(v37, v39, v34);
    }

    v40 = sub_2669C57A4();
    [v34 setPunchOutUri_];

    v41 = *a2;
    if (*a2)
    {
      v42 = v34;
      v43 = v41;
      sub_2669C65C4();

      v47(v16, v10);
    }

    else
    {
      sub_2669C65D4();
      sub_2669B3724(&qword_2800AC010, MEMORY[0x277D63F60], MEMORY[0x277D63F50]);
      sub_2669C5E74();
      __break(1u);
    }
  }
}

uint64_t sub_2669B1538(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AC768, &qword_2669C84C8);
  sub_26699A174(&qword_2800AC770, &qword_2800AC768, &qword_2669C84C8, MEMORY[0x277CDD6A8]);
  return sub_2669C6314();
}

uint64_t sub_2669B1604(uint64_t a1, uint64_t a2)
{
  v2 = OUTLINED_FUNCTION_15_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_0_7();
  sub_26699A174(v4, &qword_2800AC778, &qword_2669C84D0, v5);
  return sub_2669C5D34();
}

uint64_t sub_2669B1690@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2669C6304();
  *a1 = result;
  return result;
}

void sub_2669B16CC(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 identifier];
  v4 = sub_2669C6654();
  v6 = v5;

  *a2 = v4;
  a2[1] = v6;
}

uint64_t sub_2669B1724(void **a1, uint64_t a2)
{
  ContactQuickActionButtonsView = type metadata accessor for GetContactQuickActionButtonsView(0);
  v5 = *(ContactQuickActionButtonsView - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](ContactQuickActionButtonsView - 8);
  v7 = *a1;
  sub_2669B2C48(a2, &v12[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)]);
  v8 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v9 = swift_allocObject();
  sub_2669B2CB0(&v12[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)], v9 + v8);
  *(v9 + ((v6 + v8 + 7) & 0xFFFFFFFFFFFFFFF8)) = v7;
  v13 = a2;
  v14 = v7;
  v10 = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AC7D0, &qword_2669C8548);
  sub_26699A174(&qword_2800AC7D8, &qword_2800AC7D0, &qword_2669C8548, MEMORY[0x277CDEFF0]);
  return sub_2669C6364();
}

void sub_2669B18BC()
{
  OUTLINED_FUNCTION_35();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ABF80, &qword_2669C76E8);
  v7 = OUTLINED_FUNCTION_2_2(v6);
  v8 = MEMORY[0x28223BE20](v7);
  v10 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v41 - v11;
  type metadata accessor for GetContactQuickActionButtonsView(0);
  v13 = v1();
  v14 = [v3 identifier];
  sub_2669C6654();

  if (!*(v13 + 16))
  {

    goto LABEL_7;
  }

  v15 = OUTLINED_FUNCTION_3();
  sub_2669BB76C(v15, v16);
  v18 = v17;

  if ((v18 & 1) == 0)
  {
LABEL_7:

    if (qword_2800ABEB8 != -1)
    {
      OUTLINED_FUNCTION_1_0(&qword_2800ABEB8);
    }

    v28 = sub_2669C5C94();
    __swift_project_value_buffer(v28, qword_2800ACC88);
    v42 = sub_2669C5C74();
    v29 = sub_2669C6864();
    if (os_log_type_enabled(v42, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&dword_266996000, v42, v29, "#GetContactQuickActionButtonsView could not obtain direct invocation for button press", v30, 2u);
      MEMORY[0x26D5E4D50](v30, -1, -1);
    }

    goto LABEL_16;
  }

  v19 = OUTLINED_FUNCTION_3();
  sub_26699BF34(v19, v20);

  sub_26699F8F0(0, &qword_2800AC080, 0x277D471B0);
  OUTLINED_FUNCTION_3();
  v21 = sub_2669C6844();
  if (v21)
  {
    v22 = v21;
    v23 = sub_2669C5954();
    __swift_storeEnumTagSinglePayload(v12, 1, 1, v23);
    sub_2669B4E38(v12, v10, &qword_2800ABF80, &qword_2669C76E8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AC578, "~#");
    sub_2669C6344();
    sub_2669B5184(v12, &qword_2800ABF80, &qword_2669C76E8);
    if (*v5)
    {
      v24 = *v5;
      v25 = v22;
      sub_2669C65C4();

      v26 = OUTLINED_FUNCTION_3();
      sub_26699BE60(v26, v27);
      OUTLINED_FUNCTION_37();
    }

    else
    {
      sub_2669C65D4();
      OUTLINED_FUNCTION_6_1();
      v40 = sub_2669B3724(v38, v39, MEMORY[0x277D63F50]);
      OUTLINED_FUNCTION_22(v40);
      __break(1u);
    }

    return;
  }

  if (qword_2800ABEB8 != -1)
  {
    OUTLINED_FUNCTION_1_0(&qword_2800ABEB8);
  }

  v31 = sub_2669C5C94();
  __swift_project_value_buffer(v31, qword_2800ACC88);
  v42 = sub_2669C5C74();
  v32 = sub_2669C6864();
  if (os_log_type_enabled(v42, v32))
  {
    v33 = swift_slowAlloc();
    *v33 = 0;
    _os_log_impl(&dword_266996000, v42, v32, "#GetContactQuickActionButtonsView could not convert direct invocation to actionable command", v33, 2u);
    MEMORY[0x26D5E4D50](v33, -1, -1);
  }

  v34 = OUTLINED_FUNCTION_3();
  sub_26699BE60(v34, v35);
LABEL_16:
  OUTLINED_FUNCTION_37();
}

uint64_t sub_2669B1CA4(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AC7E0, &qword_2669C8550);
  sub_26699A174(&qword_2800AC7E8, &qword_2800AC7E0, &qword_2669C8550, MEMORY[0x277CE1198]);
  return sub_2669C6314();
}

uint64_t sub_2669B1D70@<X0>(uint64_t a3@<X8>)
{
  *a3 = sub_2669C5FA4();
  *(a3 + 8) = 0;
  *(a3 + 16) = 1;
  v4 = a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AC7F0, &qword_2669C8558) + 44);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AC7F8, &qword_2669C8560);
  sub_26699A174(&qword_2800AC800, &qword_2800AC7F8, &qword_2669C8560, MEMORY[0x277CE14C0]);
  sub_2669C5D34();
  KeyPath = swift_getKeyPath();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AC808, &qword_2669C8568);
  v7 = v4 + *(result + 36);
  *v7 = KeyPath;
  *(v7 + 8) = 0;
  return result;
}

uint64_t sub_2669B1E7C@<X0>(void *a1@<X1>, uint64_t a2@<X8>)
{
  type metadata accessor for GetContactQuickActionButtonsView(0);
  v4 = [a1 identifier];
  v5 = sub_2669C6654();
  v7 = v6;

  v8 = sub_2669C5874();
  sub_2669BB23C(v5, v7, v8);

  sub_266999FC4(v9, v10, v11);
  v12 = sub_2669C6164();
  v14 = v13;
  v16 = v15;
  v18 = v17;
  sub_2669C6884();
  v19 = sub_2669C6164();
  v21 = v20;
  v23 = v22;
  v25 = v24;
  KeyPath = swift_getKeyPath();
  *a2 = v12;
  *(a2 + 8) = v14;
  *(a2 + 16) = v16 & 1;
  *(a2 + 24) = v18;
  *(a2 + 32) = v19;
  *(a2 + 40) = v21;
  *(a2 + 48) = v23 & 1;
  *(a2 + 56) = v25;
  *(a2 + 64) = KeyPath;
  *(a2 + 72) = 0;
  *(a2 + 80) = 1;
  sub_2669A22A8(v12, v14, v16 & 1);

  sub_2669A22A8(v19, v21, v23 & 1);

  sub_26699A018(v19, v21, v23 & 1);

  sub_26699A018(v12, v14, v16 & 1);
}

uint64_t sub_2669B2078@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2669C6304();
  *a1 = result;
  return result;
}

void sub_2669B20B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_24_0();
  a17 = v18;
  a18 = v19;
  v21 = v20;
  v23 = v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ABF80, &qword_2669C76E8);
  v25 = OUTLINED_FUNCTION_2_2(v24);
  v26 = MEMORY[0x28223BE20](v25);
  v28 = &a9 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v30 = &a9 - v29;
  v31 = sub_2669C5954();
  __swift_storeEnumTagSinglePayload(v30, 1, 1, v31);
  ContactQuickActionButtonsView = type metadata accessor for GetContactQuickActionButtonsView(0);
  sub_2669B4E38(v30, v28, &qword_2800ABF80, &qword_2669C76E8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AC578, "~#");
  sub_2669C6344();
  sub_2669B5184(v30, &qword_2800ABF80, &qword_2669C76E8);
  (*((*MEMORY[0x277D85000] & **(v23 + *(ContactQuickActionButtonsView + 28) + 8)) + 0x208))(v21);
  OUTLINED_FUNCTION_23_0();
}

void sub_2669B2230()
{
  OUTLINED_FUNCTION_35();
  v2 = v1;
  v4 = v3;
  v5 = OUTLINED_FUNCTION_2_6();
  v7 = v6;
  v8 = MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_11_1(v8, v9, v10, v11, v12, v13, v14, v15, v21);
  v16 = OUTLINED_FUNCTION_9_1();
  sub_2669B2CB0(v0, v16 + v2);
  *(v16 + v7) = v4;
  v17 = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AC758, &qword_2669C84C0);
  OUTLINED_FUNCTION_1_6();
  v20 = sub_26699A174(v18, &qword_2800AC758, &qword_2669C84C0, v19);
  OUTLINED_FUNCTION_13_1(v20);
  OUTLINED_FUNCTION_37();
}

uint64_t sub_2669B23AC(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AC768, &qword_2669C84C8);
  sub_26699A174(&qword_2800AC770, &qword_2800AC768, &qword_2669C84C8, MEMORY[0x277CDD6A8]);
  return sub_2669C6314();
}

uint64_t sub_2669B2478@<X0>(uint64_t a1@<X8>)
{
  sub_2669C5904();
  sub_2669C66C4();

  sub_266999FC4(v2, v3, v4);
  v5 = sub_2669C6164();
  v7 = v6;
  v9 = v8;
  v11 = v10;
  sub_2669C58A4();
  v12 = sub_2669C6164();
  v14 = v13;
  v15 = v9 & 1;
  v17 = v16 & 1;
  *a1 = v5;
  *(a1 + 8) = v7;
  *(a1 + 16) = v15;
  *(a1 + 24) = v11;
  *(a1 + 32) = v12;
  *(a1 + 40) = v13;
  *(a1 + 48) = v16 & 1;
  *(a1 + 56) = v18;
  v19 = OUTLINED_FUNCTION_15_1();
  sub_2669A22A8(v19, v20, v21);

  sub_2669A22A8(v12, v14, v17);

  sub_26699A018(v12, v14, v17);

  v22 = OUTLINED_FUNCTION_15_1();
  sub_26699A018(v22, v23, v24);
}

uint64_t sub_2669B25B4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2669C6304();
  *a1 = result;
  return result;
}

uint64_t sub_2669B25EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_26699F950(a1);
  if (v4)
  {
    sub_26699F6CC(0, (a1 & 0xC000000000000001) == 0, a1);
    if ((a1 & 0xC000000000000001) != 0)
    {
      v7 = MEMORY[0x26D5E4670](0, a1);
    }

    else
    {
      v7 = *(a1 + 32);
    }

    v8 = v7;
    sub_2669C5904();
  }

  sub_266999FC4(v4, v5, v6);
  result = sub_2669C6164();
  *a2 = result;
  *(a2 + 8) = v10;
  *(a2 + 16) = v11 & 1;
  *(a2 + 24) = v12;
  return result;
}

uint64_t sub_2669B26AC(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  v13 = objc_allocWithZone(v6);
  v14 = a4[3];
  v15 = a4[4];
  v16 = __swift_mutable_project_boxed_opaque_existential_1(a4, v14);
  MEMORY[0x28223BE20](v16);
  v18 = &v22 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v19 + 16))(v18);
  v20 = sub_2669B5530(a1, a2, a3, v18, a5, a6, v13, v14, v15);
  __swift_destroy_boxed_opaque_existential_0(a4);
  return v20;
}

id sub_2669B27E4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MockGetContactQuickActionButtonsViewModel(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_2669B2890(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AC578, "~#");
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a1 + *(a3 + 20);

    return __swift_getEnumTagSinglePayload(v8, a2, v7);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_2669B2960(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AC578, "~#");
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = result;
    v10 = a1 + *(a4 + 20);

    return __swift_storeEnumTagSinglePayload(v10, a2, a2, v9);
  }

  else
  {
    *(a1 + *(a4 + 24)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_2669B2A38(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2669B2A70(uint64_t a1)
{
  sub_26699AD38(319);
  if (v1 <= 0x3F)
  {
    sub_2669B2B34(319);
    if (v2 <= 0x3F)
    {
      sub_26699F8F0(319, &qword_2800AC598, 0x277CBDA58);
      if (v3 <= 0x3F)
      {
        sub_2669B2B98(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_2669B2B34(uint64_t a1)
{
  if (!qword_2800AC590)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2800ABF80, &qword_2669C76E8);
    v1 = sub_2669C6354();
    if (!v2)
    {
      atomic_store(v1, &qword_2800AC590);
    }
  }
}

void sub_2669B2B98(uint64_t a1)
{
  if (!qword_2800AC5A0)
  {
    type metadata accessor for GetContactQuickActionButtonsViewModel(255);
    sub_2669B3724(&qword_2800AC018, type metadata accessor for GetContactQuickActionButtonsViewModel, &unk_2669C8A20);
    v1 = sub_2669C5E34();
    if (!v2)
    {
      atomic_store(v1, &qword_2800AC5A0);
    }
  }
}

uint64_t sub_2669B2C48(uint64_t a1, uint64_t a2)
{
  ContactQuickActionButtonsView = type metadata accessor for GetContactQuickActionButtonsView(0);
  (*(*(ContactQuickActionButtonsView - 8) + 16))(a2, a1, ContactQuickActionButtonsView);
  return a2;
}