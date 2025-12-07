uint64_t sub_2741A1688()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093B228, &qword_2741D7840);
  sub_2740A6D24(&qword_28093B230, &qword_28093B228, &qword_2741D7840, MEMORY[0x277CDE5A0]);
  return sub_2741C7B9C();
}

unint64_t sub_2741A173C()
{
  result = qword_28093B240;
  if (!qword_28093B240)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28093B238, &qword_2741D7848);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28093B248, &unk_2741D7850);
    sub_2741C6EDC();
    sub_2740A6D24(&qword_28093B250, &qword_28093B248, &unk_2741D7850, MEMORY[0x277CDF028]);
    sub_2741A1AB8(&qword_280938890, MEMORY[0x277CDDB18], MEMORY[0x277CDDB08]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28093B240);
  }

  return result;
}

uint64_t sub_2741A1880()
{
  v1 = (type metadata accessor for IdentitySelectionView(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);

  v5 = v0 + v3 + v1[7];

  v6 = v5 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093B200, qword_2741D77B0) + 32);
  v7 = type metadata accessor for EnterpriseIdentity(0);
  if (!(*(*(v7 - 8) + 48))(v6, 1, v7))
  {

    v8 = *(v7 + 28);
    v9 = sub_2741C696C();
    v10 = *(v9 - 8);
    if (!(*(v10 + 48))(v6 + v8, 1, v9))
    {
      (*(v10 + 8))(v6 + v8, v9);
    }
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_2741A1A38@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for IdentitySelectionView(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_2741A0230(a1, v6, a2);
}

uint64_t sub_2741A1AB8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2741A1B00(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2741A1B68()
{
  v1 = (type metadata accessor for IdentitySelectionView(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = type metadata accessor for EnterpriseIdentity(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 80);
  v8 = *(v6 + 64);
  v9 = (v3 + v4 + v7) & ~v7;

  v10 = v0 + v3 + v1[7];

  v11 = v10 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093B200, qword_2741D77B0) + 32);
  if (!(*(v6 + 48))(v11, 1, v5))
  {

    v12 = *(v5 + 28);
    v13 = sub_2741C696C();
    v14 = *(v13 - 8);
    if (!(*(v14 + 48))(v11 + v12, 1, v13))
    {
      (*(v14 + 8))(v11 + v12, v13);
    }
  }

  v15 = *(v5 + 28);
  v16 = sub_2741C696C();
  v17 = *(v16 - 8);
  if (!(*(v17 + 48))(v0 + v9 + v15, 1, v16))
  {
    (*(v17 + 8))(v0 + v9 + v15, v16);
  }

  return MEMORY[0x2821FE8E8](v0, v9 + v8, v2 | v7 | 7);
}

uint64_t sub_2741A1DF8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_2741A1E60()
{
  v1 = *(type metadata accessor for IdentitySelectionView(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(type metadata accessor for EnterpriseIdentity(0) - 8);
  v5 = v0 + ((v2 + v3 + *(v4 + 80)) & ~*(v4 + 80));

  return sub_2741A0660(v0 + v2, v5);
}

double sub_2741A1F34(_OWORD *a1)
{
  result = 0.0;
  *(a1 + 124) = 0u;
  a1[6] = 0u;
  a1[7] = 0u;
  a1[4] = 0u;
  a1[5] = 0u;
  a1[2] = 0u;
  a1[3] = 0u;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

unint64_t sub_2741A1F54()
{
  result = qword_28093B2B8;
  if (!qword_28093B2B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28093B2C0, qword_2741D78C8);
    sub_2740A6D24(&qword_28093B230, &qword_28093B228, &qword_2741D7840, MEMORY[0x277CDE5A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28093B2B8);
  }

  return result;
}

unint64_t sub_2741A2034()
{
  result = qword_28093B2D0;
  if (!qword_28093B2D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28093B2D8, qword_2741D7918);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28093B2D0);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_15WiFiSettingsKit0aB5Error_pSg(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t get_enum_tag_for_layout_string_15WiFiSettingsKit14ScannedNetworkVSg(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_2741A20D4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 304))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 48);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2741A211C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 296) = 0;
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
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 304) = 1;
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

    *(result + 304) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2741A21D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t *a5@<X4>, uint64_t *a6@<X5>, uint64_t a7@<X8>)
{
  v138 = a5;
  v14 = sub_2741C699C();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14, v16);
  v18 = &v125 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2740A6D94(a4, &v142, &qword_280937E78, &qword_2741D81E0);
  v141 = a2;
  v140 = a1;
  v139 = a7;
  if (!v144)
  {
    sub_27409D420(&v142, &qword_280937E78, &qword_2741D81E0);
    sub_2741C714C();
    v138 = sub_2741C768C();
    v137 = v51;
    LODWORD(v135) = v52;
    v136 = v53;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809389D8, &qword_2741CCD00);
    v54 = (type metadata accessor for WFButton(0) - 8);
    v55 = (*(*v54 + 80) + 32) & ~*(*v54 + 80);
    v56 = swift_allocObject();
    *(v56 + 16) = xmmword_2741CB550;
    sub_2741C698C();
    v57 = (*(v15 + 32))(v56 + v55, v18, v14);
    v134 = &v125;
    *(v56 + v55 + v54[7]) = 0;
    v58 = (v56 + v55 + v54[8]);
    *v58 = nullsub_1;
    v58[1] = 0;
    v60 = MEMORY[0x28223BE20](v57, v59);
    MEMORY[0x28223BE20](v60, v61);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937EF8, &qword_2741CB638);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937F38, &unk_2741CB670);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937F40, &qword_2741D5B30);
    sub_2740A5CF8();
    sub_2740A5DB0();
    sub_2740A5EE4();
    v62 = v135;
    v63 = v138;
    v64 = v137;
    sub_2741C787C();

    sub_2740A6AC8(v63, v64, v62 & 1);
  }

  v133 = a6;
  v136 = v14;
  LODWORD(v137) = a3;
  v19 = v7;
  sub_27409D118(&v142, &v149);
  v20 = v150;
  v21 = v151;
  __swift_project_boxed_opaque_existential_1(&v149, v150);
  v135 = (*(v21 + 16))(v20, v21);
  v23 = v22;
  v24 = v150;
  v25 = v151;
  __swift_project_boxed_opaque_existential_1(&v149, v150);
  v26 = (*(v25 + 24))(v24, v25);
  v28 = v27;
  sub_27409D4E4(&v149, v148);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937FB0, &qword_2741CB6B0);
  v29 = swift_dynamicCast();
  v132 = v26;
  if (v29)
  {
    v31 = v145;
    v30 = v146;
    v128 = v19;
    v131 = v144;
    v130 = v143;
    v129 = *(&v142 + 1);
    v127 = v142;
    if (v147 > 7u)
    {
      if (v147 == 8)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809389D8, &qword_2741CCD00);
        v112 = type metadata accessor for WFButton(0);
        v125 = v28;
        v114 = v112 - 8;
        v113 = *(v112 - 8);
        v126 = v31;
        v115 = *(v113 + 72);
        v116 = (*(v113 + 80) + 32) & ~*(v113 + 80);
        v117 = swift_allocObject();
        *(v117 + 16) = xmmword_2741CC090;
        v134 = v117;
        v118 = v117 + v116;
        v119 = swift_allocObject();
        *(v119 + 16) = v138;
        *(v119 + 24) = v133;

        sub_2741C698C();
        v120 = *(v15 + 32);
        v121 = v136;
        v120(v118, v18, v136);
        *(v118 + *(v114 + 28)) = 10;
        v122 = (v118 + *(v114 + 32));
        *v122 = sub_2741B17A0;
        v122[1] = v119;
        sub_2741C698C();
        v120(v118 + v115, v18, v121);
        *(v118 + v115 + *(v114 + 28)) = 0;
        v123 = *(v114 + 32);
        v28 = v125;
        v124 = (v118 + v115 + v123);
        *v124 = nullsub_1;
        v124[1] = 0;
        v45 = v127;
        v46 = v129;
        v47 = v130;
        v48 = v131;
        v49 = v126;
        v50 = v30;
        v86 = 8;
        goto LABEL_14;
      }

      if (v147 == 9)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809389D8, &qword_2741CCD00);
        v73 = type metadata accessor for WFButton(0);
        v125 = v28;
        v75 = v73 - 8;
        v74 = *(v73 - 8);
        v126 = v31;
        v76 = *(v74 + 72);
        v77 = (*(v74 + 80) + 32) & ~*(v74 + 80);
        v78 = swift_allocObject();
        *(v78 + 16) = xmmword_2741CC090;
        v134 = v78;
        v79 = v78 + v77;
        v80 = swift_allocObject();
        *(v80 + 16) = v138;
        *(v80 + 24) = v133;

        sub_2741C698C();
        v81 = *(v15 + 32);
        v82 = v136;
        v81(v79, v18, v136);
        *(v79 + *(v75 + 28)) = 8;
        v83 = (v79 + *(v75 + 32));
        *v83 = sub_2741B17A0;
        v83[1] = v80;
        sub_2741C698C();
        v81(v79 + v76, v18, v82);
        *(v79 + v76 + *(v75 + 28)) = 9;
        v84 = *(v75 + 32);
        v28 = v125;
        v85 = (v79 + v76 + v84);
        *v85 = nullsub_1;
        v85[1] = 0;
        v45 = v127;
        v46 = v129;
        v47 = v130;
        v48 = v131;
        v49 = v126;
        v50 = v30;
        v86 = 9;
LABEL_14:
        sub_2740A66EC(v45, v46, v47, v48, v49, v50, v86);
        goto LABEL_15;
      }
    }

    else if (v147 - 5 < 3 || v147 == 3)
    {
      LODWORD(v125) = v147;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809389D8, &qword_2741CCD00);
      v32 = (type metadata accessor for WFButton(0) - 8);
      v33 = *(*v32 + 72);
      v34 = (*(*v32 + 80) + 32) & ~*(*v32 + 80);
      v35 = swift_allocObject();
      *(v35 + 16) = xmmword_2741CC090;
      v134 = v35;
      v36 = v35 + v34;
      v37 = swift_allocObject();
      v126 = v31;
      v38 = v37;
      *(v37 + 16) = v138;
      *(v37 + 24) = v133;

      sub_2741C698C();
      v39 = *(v15 + 32);
      v138 = v30;
      v40 = v28;
      v41 = v136;
      v39(v36, v18, v136);
      *(v36 + v32[7]) = 4;
      v42 = (v36 + v32[8]);
      *v42 = sub_2741B17A0;
      v42[1] = v38;
      sub_2741C698C();
      v43 = v41;
      v28 = v40;
      v39(v36 + v33, v18, v43);
      *(v36 + v33 + v32[7]) = 1;
      v44 = (v36 + v33 + v32[8]);
      *v44 = nullsub_1;
      v44[1] = 0;
      v45 = v127;
      v46 = v129;
      v47 = v130;
      v48 = v131;
      v49 = v126;
      v50 = v138;
LABEL_13:
      v86 = v125;
      goto LABEL_14;
    }

    LODWORD(v125) = v147;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809389D8, &qword_2741CCD00);
    v87 = (type metadata accessor for WFButton(0) - 8);
    v88 = (*(*v87 + 80) + 32) & ~*(*v87 + 80);
    v89 = swift_allocObject();
    *(v89 + 16) = xmmword_2741CB550;
    v134 = v89;
    v90 = v89 + v88;
    sub_2741C698C();
    (*(v15 + 32))(v90, v18, v136);
    *(v90 + v87[7]) = 0;
    v91 = (v90 + v87[8]);
    v92 = v133;
    *v91 = v138;
    v91[1] = v92;

    v45 = v127;
    v46 = v129;
    v47 = v130;
    v48 = v131;
    v49 = v31;
    v50 = v30;
    goto LABEL_13;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809389D8, &qword_2741CCD00);
  v66 = (type metadata accessor for WFButton(0) - 8);
  v67 = (*(*v66 + 80) + 32) & ~*(*v66 + 80);
  v68 = swift_allocObject();
  *(v68 + 16) = xmmword_2741CB550;
  v69 = v28;
  v134 = v68;
  v70 = v68 + v67;
  sub_2741C698C();
  (*(v15 + 32))(v70, v18, v136);
  *(v70 + v66[7]) = 0;
  v71 = (v70 + v66[8]);
  v28 = v69;
  v72 = v133;
  *v71 = v138;
  v71[1] = v72;

LABEL_15:
  *&v142 = v135;
  *(&v142 + 1) = v23;
  sub_2740A6A74();
  if (v28)
  {
    v138 = sub_2741C76AC();
    v136 = v93;
    LODWORD(v131) = v94;
    v135 = v95;
    *&v142 = v132;
    *(&v142 + 1) = v28;
    v130 = sub_2741C76AC();
    v129 = v96;
    v132 = v97;
    v133 = &v125;
    v99 = v98 & 1;
    v100 = MEMORY[0x28223BE20](v130, v96);
    MEMORY[0x28223BE20](v100, v101);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937EF8, &qword_2741CB638);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937F38, &unk_2741CB670);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937F40, &qword_2741D5B30);
    sub_2740A5CF8();
    sub_2740A5DB0();
    sub_2740A5EE4();
    v102 = v131;
    v103 = v138;
    v104 = v136;
    sub_2741C787C();

    sub_2740A6AC8(v130, v129, v99);

    v105 = v102 & 1;
  }

  else
  {
    v136 = sub_2741C76AC();
    v135 = v106;
    v108 = v107;
    v133 = v109;
    v138 = &v125;
    v110 = MEMORY[0x28223BE20](v136, v106);
    MEMORY[0x28223BE20](v110, v111);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937EF8, &qword_2741CB638);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937F38, &unk_2741CB670);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937F40, &qword_2741D5B30);
    sub_2740A5CF8();
    sub_2740A5DB0();
    sub_2740A5EE4();
    v103 = v136;
    v104 = v135;
    sub_2741C787C();

    v105 = v108 & 1;
  }

  sub_2740A6AC8(v103, v104, v105);

  return __swift_destroy_boxed_opaque_existential_1Tm(&v149);
}

uint64_t sub_2741A323C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t *a5@<X4>, uint64_t *a6@<X5>, uint64_t a7@<X8>)
{
  v138 = a5;
  v14 = sub_2741C699C();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14, v16);
  v18 = &v125 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2740A6D94(a4, &v142, &qword_280937E78, &qword_2741D81E0);
  v141 = a2;
  v140 = a1;
  v139 = a7;
  if (!v144)
  {
    sub_27409D420(&v142, &qword_280937E78, &qword_2741D81E0);
    sub_2741C714C();
    v138 = sub_2741C768C();
    v137 = v51;
    LODWORD(v135) = v52;
    v136 = v53;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809389D8, &qword_2741CCD00);
    v54 = (type metadata accessor for WFButton(0) - 8);
    v55 = (*(*v54 + 80) + 32) & ~*(*v54 + 80);
    v56 = swift_allocObject();
    *(v56 + 16) = xmmword_2741CB550;
    sub_2741C698C();
    v57 = (*(v15 + 32))(v56 + v55, v18, v14);
    v134 = &v125;
    *(v56 + v55 + v54[7]) = 0;
    v58 = (v56 + v55 + v54[8]);
    *v58 = nullsub_1;
    v58[1] = 0;
    v60 = MEMORY[0x28223BE20](v57, v59);
    MEMORY[0x28223BE20](v60, v61);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809396B0, &qword_2741D0390);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937F38, &unk_2741CB670);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937F40, &qword_2741D5B30);
    sub_2740FB1EC();
    sub_2740A5DB0();
    sub_2740A5EE4();
    v62 = v135;
    v63 = v138;
    v64 = v137;
    sub_2741C787C();

    sub_2740A6AC8(v63, v64, v62 & 1);
  }

  v133 = a6;
  v136 = v14;
  LODWORD(v137) = a3;
  v19 = v7;
  sub_27409D118(&v142, &v149);
  v20 = v150;
  v21 = v151;
  __swift_project_boxed_opaque_existential_1(&v149, v150);
  v135 = (*(v21 + 16))(v20, v21);
  v23 = v22;
  v24 = v150;
  v25 = v151;
  __swift_project_boxed_opaque_existential_1(&v149, v150);
  v26 = (*(v25 + 24))(v24, v25);
  v28 = v27;
  sub_27409D4E4(&v149, v148);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937FB0, &qword_2741CB6B0);
  v29 = swift_dynamicCast();
  v132 = v26;
  if (v29)
  {
    v31 = v145;
    v30 = v146;
    v128 = v19;
    v131 = v144;
    v130 = v143;
    v129 = *(&v142 + 1);
    v127 = v142;
    if (v147 > 7u)
    {
      if (v147 == 8)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809389D8, &qword_2741CCD00);
        v112 = type metadata accessor for WFButton(0);
        v125 = v28;
        v114 = v112 - 8;
        v113 = *(v112 - 8);
        v126 = v31;
        v115 = *(v113 + 72);
        v116 = (*(v113 + 80) + 32) & ~*(v113 + 80);
        v117 = swift_allocObject();
        *(v117 + 16) = xmmword_2741CC090;
        v134 = v117;
        v118 = v117 + v116;
        v119 = swift_allocObject();
        *(v119 + 16) = v138;
        *(v119 + 24) = v133;

        sub_2741C698C();
        v120 = *(v15 + 32);
        v121 = v136;
        v120(v118, v18, v136);
        *(v118 + *(v114 + 28)) = 10;
        v122 = (v118 + *(v114 + 32));
        *v122 = sub_2741B17A0;
        v122[1] = v119;
        sub_2741C698C();
        v120(v118 + v115, v18, v121);
        *(v118 + v115 + *(v114 + 28)) = 0;
        v123 = *(v114 + 32);
        v28 = v125;
        v124 = (v118 + v115 + v123);
        *v124 = nullsub_1;
        v124[1] = 0;
        v45 = v127;
        v46 = v129;
        v47 = v130;
        v48 = v131;
        v49 = v126;
        v50 = v30;
        v86 = 8;
        goto LABEL_14;
      }

      if (v147 == 9)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809389D8, &qword_2741CCD00);
        v73 = type metadata accessor for WFButton(0);
        v125 = v28;
        v75 = v73 - 8;
        v74 = *(v73 - 8);
        v126 = v31;
        v76 = *(v74 + 72);
        v77 = (*(v74 + 80) + 32) & ~*(v74 + 80);
        v78 = swift_allocObject();
        *(v78 + 16) = xmmword_2741CC090;
        v134 = v78;
        v79 = v78 + v77;
        v80 = swift_allocObject();
        *(v80 + 16) = v138;
        *(v80 + 24) = v133;

        sub_2741C698C();
        v81 = *(v15 + 32);
        v82 = v136;
        v81(v79, v18, v136);
        *(v79 + *(v75 + 28)) = 8;
        v83 = (v79 + *(v75 + 32));
        *v83 = sub_2741B17A0;
        v83[1] = v80;
        sub_2741C698C();
        v81(v79 + v76, v18, v82);
        *(v79 + v76 + *(v75 + 28)) = 9;
        v84 = *(v75 + 32);
        v28 = v125;
        v85 = (v79 + v76 + v84);
        *v85 = nullsub_1;
        v85[1] = 0;
        v45 = v127;
        v46 = v129;
        v47 = v130;
        v48 = v131;
        v49 = v126;
        v50 = v30;
        v86 = 9;
LABEL_14:
        sub_2740A66EC(v45, v46, v47, v48, v49, v50, v86);
        goto LABEL_15;
      }
    }

    else if (v147 - 5 < 3 || v147 == 3)
    {
      LODWORD(v125) = v147;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809389D8, &qword_2741CCD00);
      v32 = (type metadata accessor for WFButton(0) - 8);
      v33 = *(*v32 + 72);
      v34 = (*(*v32 + 80) + 32) & ~*(*v32 + 80);
      v35 = swift_allocObject();
      *(v35 + 16) = xmmword_2741CC090;
      v134 = v35;
      v36 = v35 + v34;
      v37 = swift_allocObject();
      v126 = v31;
      v38 = v37;
      *(v37 + 16) = v138;
      *(v37 + 24) = v133;

      sub_2741C698C();
      v39 = *(v15 + 32);
      v138 = v30;
      v40 = v28;
      v41 = v136;
      v39(v36, v18, v136);
      *(v36 + v32[7]) = 4;
      v42 = (v36 + v32[8]);
      *v42 = sub_2741B17A0;
      v42[1] = v38;
      sub_2741C698C();
      v43 = v41;
      v28 = v40;
      v39(v36 + v33, v18, v43);
      *(v36 + v33 + v32[7]) = 1;
      v44 = (v36 + v33 + v32[8]);
      *v44 = nullsub_1;
      v44[1] = 0;
      v45 = v127;
      v46 = v129;
      v47 = v130;
      v48 = v131;
      v49 = v126;
      v50 = v138;
LABEL_13:
      v86 = v125;
      goto LABEL_14;
    }

    LODWORD(v125) = v147;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809389D8, &qword_2741CCD00);
    v87 = (type metadata accessor for WFButton(0) - 8);
    v88 = (*(*v87 + 80) + 32) & ~*(*v87 + 80);
    v89 = swift_allocObject();
    *(v89 + 16) = xmmword_2741CB550;
    v134 = v89;
    v90 = v89 + v88;
    sub_2741C698C();
    (*(v15 + 32))(v90, v18, v136);
    *(v90 + v87[7]) = 0;
    v91 = (v90 + v87[8]);
    v92 = v133;
    *v91 = v138;
    v91[1] = v92;

    v45 = v127;
    v46 = v129;
    v47 = v130;
    v48 = v131;
    v49 = v31;
    v50 = v30;
    goto LABEL_13;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809389D8, &qword_2741CCD00);
  v66 = (type metadata accessor for WFButton(0) - 8);
  v67 = (*(*v66 + 80) + 32) & ~*(*v66 + 80);
  v68 = swift_allocObject();
  *(v68 + 16) = xmmword_2741CB550;
  v69 = v28;
  v134 = v68;
  v70 = v68 + v67;
  sub_2741C698C();
  (*(v15 + 32))(v70, v18, v136);
  *(v70 + v66[7]) = 0;
  v71 = (v70 + v66[8]);
  v28 = v69;
  v72 = v133;
  *v71 = v138;
  v71[1] = v72;

LABEL_15:
  *&v142 = v135;
  *(&v142 + 1) = v23;
  sub_2740A6A74();
  if (v28)
  {
    v138 = sub_2741C76AC();
    v136 = v93;
    LODWORD(v131) = v94;
    v135 = v95;
    *&v142 = v132;
    *(&v142 + 1) = v28;
    v130 = sub_2741C76AC();
    v129 = v96;
    v132 = v97;
    v133 = &v125;
    v99 = v98 & 1;
    v100 = MEMORY[0x28223BE20](v130, v96);
    MEMORY[0x28223BE20](v100, v101);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809396B0, &qword_2741D0390);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937F38, &unk_2741CB670);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937F40, &qword_2741D5B30);
    sub_2740FB1EC();
    sub_2740A5DB0();
    sub_2740A5EE4();
    v102 = v131;
    v103 = v138;
    v104 = v136;
    sub_2741C787C();

    sub_2740A6AC8(v130, v129, v99);

    v105 = v102 & 1;
  }

  else
  {
    v136 = sub_2741C76AC();
    v135 = v106;
    v108 = v107;
    v133 = v109;
    v138 = &v125;
    v110 = MEMORY[0x28223BE20](v136, v106);
    MEMORY[0x28223BE20](v110, v111);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809396B0, &qword_2741D0390);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937F38, &unk_2741CB670);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937F40, &qword_2741D5B30);
    sub_2740FB1EC();
    sub_2740A5DB0();
    sub_2740A5EE4();
    v103 = v136;
    v104 = v135;
    sub_2741C787C();

    v105 = v108 & 1;
  }

  sub_2740A6AC8(v103, v104, v105);

  return __swift_destroy_boxed_opaque_existential_1Tm(&v149);
}

uint64_t sub_2741A42A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, _BYTE *a5@<X4>, _BYTE *a6@<X5>, uint64_t a7@<X8>)
{
  v136 = a5;
  v14 = sub_2741C699C();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14, v16);
  v18 = &v122[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_2740A6D94(a4, &v140, &qword_280937E78, &qword_2741D81E0);
  v139 = a2;
  v138 = a1;
  v137 = a7;
  if (!v142)
  {
    sub_27409D420(&v140, &qword_280937E78, &qword_2741D81E0);
    sub_2741C714C();
    v136 = sub_2741C768C();
    v135 = v51;
    LODWORD(v133) = v52;
    v134 = v53;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809389D8, &qword_2741CCD00);
    v54 = (type metadata accessor for WFButton(0) - 8);
    v55 = (*(*v54 + 80) + 32) & ~*(*v54 + 80);
    v56 = swift_allocObject();
    *(v56 + 16) = xmmword_2741CB550;
    sub_2741C698C();
    v57 = (*(v15 + 32))(v56 + v55, v18, v14);
    v132 = v122;
    *(v56 + v55 + v54[7]) = 0;
    v58 = (v56 + v55 + v54[8]);
    *v58 = nullsub_1;
    v58[1] = 0;
    v60 = MEMORY[0x28223BE20](v57, v59);
    MEMORY[0x28223BE20](v60, v61);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093AB08, &qword_2741D5A00);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937F38, &unk_2741CB670);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937F40, &qword_2741D5B30);
    v62 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28093AB00, &unk_2741D7EC0);
    v63 = sub_274176764();
    *&v140 = v62;
    *(&v140 + 1) = MEMORY[0x277D839B0];
    v141 = v63;
    v142 = MEMORY[0x277D839C8];
    swift_getOpaqueTypeConformance2();
    sub_2740A5DB0();
    sub_2740A5EE4();
    v64 = v133;
    v65 = v136;
    v66 = v135;
    sub_2741C787C();

    sub_2740A6AC8(v65, v66, v64 & 1);
  }

  v132 = a6;
  v134 = v14;
  LODWORD(v135) = a3;
  v19 = v7;
  sub_27409D118(&v140, &v147);
  v20 = v148;
  v21 = v149;
  __swift_project_boxed_opaque_existential_1(&v147, v148);
  v133 = (*(v21 + 16))(v20, v21);
  v23 = v22;
  v24 = v148;
  v25 = v149;
  __swift_project_boxed_opaque_existential_1(&v147, v148);
  v26 = (*(v25 + 24))(v24, v25);
  v28 = v27;
  sub_27409D4E4(&v147, v146);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937FB0, &qword_2741CB6B0);
  v29 = swift_dynamicCast();
  v131 = v26;
  if (v29)
  {
    v31 = v143;
    v30 = v144;
    v127 = v19;
    v130 = v142;
    v129 = v141;
    v128 = *(&v140 + 1);
    v126 = v140;
    if (v145 > 7u)
    {
      if (v145 == 8)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809389D8, &qword_2741CCD00);
        v111 = type metadata accessor for WFButton(0);
        v125 = v28;
        v113 = v111 - 8;
        v112 = *(v111 - 8);
        v124 = v31;
        v114 = *(v112 + 72);
        v115 = (*(v112 + 80) + 32) & ~*(v112 + 80);
        v43 = swift_allocObject();
        *(v43 + 16) = xmmword_2741CC090;
        v116 = swift_allocObject();
        *(v116 + 16) = v136;
        *(v116 + 24) = v132;

        sub_2741C698C();
        v117 = *(v15 + 32);
        v136 = v30;
        v118 = v134;
        v117(v43 + v115, v18, v134);
        *(v43 + v115 + *(v113 + 28)) = 10;
        v119 = (v43 + v115 + *(v113 + 32));
        *v119 = sub_2741B17A0;
        v119[1] = v116;
        sub_2741C698C();
        v117(v43 + v115 + v114, v18, v118);
        *(v43 + v115 + v114 + *(v113 + 28)) = 0;
        v120 = *(v113 + 32);
        v28 = v125;
        v121 = (v43 + v115 + v114 + v120);
        *v121 = nullsub_1;
        v121[1] = 0;
        v45 = v126;
        v46 = v128;
        v47 = v129;
        v48 = v130;
        v49 = v124;
        v50 = v136;
        v85 = 8;
        goto LABEL_14;
      }

      if (v145 == 9)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809389D8, &qword_2741CCD00);
        v74 = type metadata accessor for WFButton(0);
        v125 = v28;
        v76 = v74 - 8;
        v75 = *(v74 - 8);
        v124 = v31;
        v77 = *(v75 + 72);
        v78 = (*(v75 + 80) + 32) & ~*(v75 + 80);
        v43 = swift_allocObject();
        *(v43 + 16) = xmmword_2741CC090;
        v79 = swift_allocObject();
        *(v79 + 16) = v136;
        *(v79 + 24) = v132;

        sub_2741C698C();
        v80 = *(v15 + 32);
        v136 = v30;
        v81 = v134;
        v80(v43 + v78, v18, v134);
        *(v43 + v78 + *(v76 + 28)) = 8;
        v82 = (v43 + v78 + *(v76 + 32));
        *v82 = sub_2741B17A0;
        v82[1] = v79;
        sub_2741C698C();
        v80(v43 + v78 + v77, v18, v81);
        *(v43 + v78 + v77 + *(v76 + 28)) = 9;
        v83 = *(v76 + 32);
        v28 = v125;
        v84 = (v43 + v78 + v77 + v83);
        *v84 = nullsub_1;
        v84[1] = 0;
        v45 = v126;
        v46 = v128;
        v47 = v129;
        v48 = v130;
        v49 = v124;
        v50 = v136;
        v85 = 9;
LABEL_14:
        sub_2740A66EC(v45, v46, v47, v48, v49, v50, v85);
        goto LABEL_15;
      }
    }

    else if (v145 - 5 < 3 || v145 == 3)
    {
      v123 = v145;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809389D8, &qword_2741CCD00);
      v32 = (type metadata accessor for WFButton(0) - 8);
      v33 = *(*v32 + 72);
      v34 = *(*v32 + 80);
      v124 = v31;
      v35 = (v34 + 32) & ~v34;
      v36 = swift_allocObject();
      v125 = v28;
      v37 = v36;
      *(v36 + 16) = xmmword_2741CC090;
      v38 = v36 + v35;
      v39 = swift_allocObject();
      *(v39 + 16) = v136;
      *(v39 + 24) = v132;

      sub_2741C698C();
      v40 = *(v15 + 32);
      v136 = v30;
      v41 = v134;
      v40(v38, v18, v134);
      *(v38 + v32[7]) = 4;
      v42 = (v38 + v32[8]);
      *v42 = sub_2741B17A0;
      v42[1] = v39;
      sub_2741C698C();
      v40(v38 + v33, v18, v41);
      v43 = v37;
      v28 = v125;
      *(v38 + v33 + v32[7]) = 1;
      v44 = (v38 + v33 + v32[8]);
      *v44 = nullsub_1;
      v44[1] = 0;
      v45 = v126;
      v46 = v128;
      v47 = v129;
      v48 = v130;
      v49 = v124;
      v50 = v136;
LABEL_13:
      v85 = v123;
      goto LABEL_14;
    }

    v123 = v145;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809389D8, &qword_2741CCD00);
    v86 = (type metadata accessor for WFButton(0) - 8);
    v87 = (*(*v86 + 80) + 32) & ~*(*v86 + 80);
    v43 = swift_allocObject();
    *(v43 + 16) = xmmword_2741CB550;
    sub_2741C698C();
    (*(v15 + 32))(v43 + v87, v18, v134);
    *(v43 + v87 + v86[7]) = 0;
    v88 = (v43 + v87 + v86[8]);
    v89 = v132;
    *v88 = v136;
    v88[1] = v89;

    v45 = v126;
    v46 = v128;
    v47 = v129;
    v48 = v130;
    v49 = v31;
    v50 = v30;
    goto LABEL_13;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809389D8, &qword_2741CCD00);
  v68 = v28;
  v69 = (type metadata accessor for WFButton(0) - 8);
  v70 = (*(*v69 + 80) + 32) & ~*(*v69 + 80);
  v43 = swift_allocObject();
  *(v43 + 16) = xmmword_2741CB550;
  sub_2741C698C();
  (*(v15 + 32))(v43 + v70, v18, v134);
  *(v43 + v70 + v69[7]) = 0;
  v71 = v69[8];
  v28 = v68;
  v72 = (v43 + v70 + v71);
  v73 = v132;
  *v72 = v136;
  v72[1] = v73;

LABEL_15:
  *&v140 = v133;
  *(&v140 + 1) = v23;
  sub_2740A6A74();
  if (v28)
  {
    v136 = sub_2741C76AC();
    v134 = v90;
    LODWORD(v130) = v91;
    v133 = v92;
    *&v140 = v131;
    *(&v140 + 1) = v28;
    v129 = sub_2741C76AC();
    v128 = v93;
    v131 = v94;
    v132 = v122;
    v96 = v95 & 1;
    v97 = MEMORY[0x28223BE20](v129, v93);
    MEMORY[0x28223BE20](v97, v98);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093AB08, &qword_2741D5A00);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937F38, &unk_2741CB670);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937F40, &qword_2741D5B30);
    v99 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28093AB00, &unk_2741D7EC0);
    v100 = sub_274176764();
    *&v140 = v99;
    *(&v140 + 1) = MEMORY[0x277D839B0];
    v141 = v100;
    v142 = MEMORY[0x277D839C8];
    swift_getOpaqueTypeConformance2();
    sub_2740A5DB0();
    sub_2740A5EE4();
    v101 = v130;
    v102 = v136;
    v103 = v134;
    sub_2741C787C();

    sub_2740A6AC8(v129, v128, v96);
  }

  else
  {
    v134 = sub_2741C76AC();
    v103 = v104;
    v101 = v105;
    v133 = v106;
    v136 = v122;
    v107 = MEMORY[0x28223BE20](v134, v104);
    MEMORY[0x28223BE20](v107, v108);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093AB08, &qword_2741D5A00);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937F38, &unk_2741CB670);
    v132 = v43;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937F40, &qword_2741D5B30);
    v109 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28093AB00, &unk_2741D7EC0);
    v110 = sub_274176764();
    *&v140 = v109;
    *(&v140 + 1) = MEMORY[0x277D839B0];
    v141 = v110;
    v142 = MEMORY[0x277D839C8];
    swift_getOpaqueTypeConformance2();
    sub_2740A5DB0();
    sub_2740A5EE4();
    v102 = v134;
    sub_2741C787C();
  }

  sub_2740A6AC8(v102, v103, v101 & 1);

  return __swift_destroy_boxed_opaque_existential_1Tm(&v147);
}

uint64_t sub_2741A53EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, _BYTE *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v136 = a3;
  v14 = sub_2741C699C();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14, v16);
  v18 = &v122[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_2740A6D94(a4, &v140, &qword_280937E78, &qword_2741D81E0);
  v139 = a2;
  v138 = a1;
  v137 = a7;
  if (!v142)
  {
    sub_27409D420(&v140, &qword_280937E78, &qword_2741D81E0);
    sub_2741C714C();
    v135 = sub_2741C768C();
    *(&v134 + 1) = v51;
    LODWORD(v133) = v52;
    *&v134 = v53;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809389D8, &qword_2741CCD00);
    v54 = (type metadata accessor for WFButton(0) - 8);
    v55 = (*(*v54 + 80) + 32) & ~*(*v54 + 80);
    v56 = swift_allocObject();
    *(v56 + 16) = xmmword_2741CB550;
    sub_2741C698C();
    v57 = (*(v15 + 32))(v56 + v55, v18, v14);
    v132 = v122;
    *(v56 + v55 + v54[7]) = 0;
    v58 = (v56 + v55 + v54[8]);
    *v58 = nullsub_1;
    v58[1] = 0;
    v60 = MEMORY[0x28223BE20](v57, v59);
    MEMORY[0x28223BE20](v60, v61);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093B2F0, &qword_2741D7C28);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937F38, &unk_2741CB670);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937F40, &qword_2741D5B30);
    v62 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28093B2E8, &qword_2741D7C20);
    v63 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28093A3D0, &qword_2741D3EA0);
    v64 = sub_2741B017C();
    v65 = sub_2741B0320();
    *&v140 = v62;
    *(&v140 + 1) = v63;
    v141 = v64;
    v142 = v65;
    swift_getOpaqueTypeConformance2();
    sub_2740A5DB0();
    sub_2740A5EE4();
    v66 = v133;
    v67 = v135;
    v68 = *(&v134 + 1);
    sub_2741C787C();

    sub_2740A6AC8(v67, v68, v66 & 1);
  }

  v132 = a5;
  v135 = v14;
  v19 = v7;
  sub_27409D118(&v140, &v147);
  v20 = v148;
  v21 = v149;
  __swift_project_boxed_opaque_existential_1(&v147, v148);
  *&v134 = (*(v21 + 16))(v20, v21);
  *(&v134 + 1) = v22;
  v23 = v148;
  v24 = v149;
  __swift_project_boxed_opaque_existential_1(&v147, v148);
  v25 = (*(v24 + 24))(v23, v24);
  v27 = v26;
  sub_27409D4E4(&v147, v146);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937FB0, &qword_2741CB6B0);
  v28 = swift_dynamicCast();
  v133 = v27;
  v131 = v25;
  if (v28)
  {
    v30 = v143;
    v29 = v144;
    v127 = v19;
    v130 = v142;
    v129 = v141;
    v128 = *(&v140 + 1);
    v126 = v140;
    if (v145 > 7u)
    {
      if (v145 == 8)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809389D8, &qword_2741CCD00);
        v87 = type metadata accessor for WFButton(0);
        v125 = v29;
        v89 = v87 - 8;
        v88 = *(v87 - 8);
        v124 = v30;
        v90 = *(v88 + 72);
        v91 = (*(v88 + 80) + 32) & ~*(v88 + 80);
        v42 = swift_allocObject();
        *(v42 + 16) = xmmword_2741CC090;
        v92 = swift_allocObject();
        *(v92 + 16) = v132;
        *(v92 + 24) = a6;

        sub_2741C698C();
        v93 = *(v15 + 32);
        v94 = v135;
        v93(v42 + v91, v18, v135);
        *(v42 + v91 + *(v89 + 28)) = 10;
        v95 = (v42 + v91 + *(v89 + 32));
        *v95 = sub_2740C5158;
        v95[1] = v92;
        sub_2741C698C();
        v93(v42 + v91 + v90, v18, v94);
        *(v42 + v91 + v90 + *(v89 + 28)) = 0;
        v96 = (v42 + v91 + v90 + *(v89 + 32));
        *v96 = nullsub_1;
        v96[1] = 0;
        v44 = v126;
        v45 = v128;
        v46 = v129;
        v47 = v130;
        v48 = v124;
        v49 = v125;
        v50 = 8;
        goto LABEL_14;
      }

      if (v145 == 9)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809389D8, &qword_2741CCD00);
        v73 = type metadata accessor for WFButton(0);
        v125 = v29;
        v75 = v73 - 8;
        v74 = *(v73 - 8);
        v124 = v30;
        v76 = *(v74 + 72);
        v77 = (*(v74 + 80) + 32) & ~*(v74 + 80);
        v42 = swift_allocObject();
        *(v42 + 16) = xmmword_2741CC090;
        v78 = swift_allocObject();
        *(v78 + 16) = v132;
        *(v78 + 24) = a6;

        sub_2741C698C();
        v79 = *(v15 + 32);
        v80 = v135;
        v79(v42 + v77, v18, v135);
        *(v42 + v77 + *(v75 + 28)) = 8;
        v81 = (v42 + v77 + *(v75 + 32));
        *v81 = sub_2740C5158;
        v81[1] = v78;
        sub_2741C698C();
        v79(v42 + v77 + v76, v18, v80);
        *(v42 + v77 + v76 + *(v75 + 28)) = 9;
        v82 = (v42 + v77 + v76 + *(v75 + 32));
        *v82 = nullsub_1;
        v82[1] = 0;
        v44 = v126;
        v45 = v128;
        v46 = v129;
        v47 = v130;
        v48 = v124;
        v49 = v125;
        v50 = 9;
        goto LABEL_14;
      }
    }

    else if (v145 - 5 < 3 || v145 == 3)
    {
      v123 = v145;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809389D8, &qword_2741CCD00);
      v31 = (type metadata accessor for WFButton(0) - 8);
      v32 = *(*v31 + 72);
      v33 = *(*v31 + 80);
      v124 = v30;
      v34 = (v33 + 32) & ~v33;
      v35 = swift_allocObject();
      v125 = v29;
      v36 = v35;
      *(v35 + 16) = xmmword_2741CC090;
      v37 = v35 + v34;
      v38 = swift_allocObject();
      *(v38 + 16) = v132;
      *(v38 + 24) = a6;

      sub_2741C698C();
      v39 = *(v15 + 32);
      v40 = v135;
      v39(v37, v18, v135);
      *(v37 + v31[7]) = 4;
      v41 = (v37 + v31[8]);
      *v41 = sub_2740C5158;
      v41[1] = v38;
      sub_2741C698C();
      v39(v37 + v32, v18, v40);
      v42 = v36;
      *(v37 + v32 + v31[7]) = 1;
      v43 = (v37 + v32 + v31[8]);
      *v43 = nullsub_1;
      v43[1] = 0;
      v44 = v126;
      v45 = v128;
      v46 = v129;
      v47 = v130;
      v48 = v124;
      v49 = v125;
      v50 = v123;
LABEL_14:
      sub_2740A66EC(v44, v45, v46, v47, v48, v49, v50);
      goto LABEL_15;
    }

    v83 = v145;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809389D8, &qword_2741CCD00);
    v84 = (type metadata accessor for WFButton(0) - 8);
    v85 = (*(*v84 + 80) + 32) & ~*(*v84 + 80);
    v42 = swift_allocObject();
    *(v42 + 16) = xmmword_2741CB550;
    sub_2741C698C();
    (*(v15 + 32))(v42 + v85, v18, v135);
    *(v42 + v85 + v84[7]) = 0;
    v86 = (v42 + v85 + v84[8]);
    *v86 = v132;
    v86[1] = a6;

    v44 = v126;
    v45 = v128;
    v46 = v129;
    v47 = v130;
    v48 = v30;
    v49 = v29;
    v50 = v83;
    goto LABEL_14;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809389D8, &qword_2741CCD00);
  v70 = (type metadata accessor for WFButton(0) - 8);
  v71 = (*(*v70 + 80) + 32) & ~*(*v70 + 80);
  v42 = swift_allocObject();
  *(v42 + 16) = xmmword_2741CB550;
  sub_2741C698C();
  (*(v15 + 32))(v42 + v71, v18, v135);
  *(v42 + v71 + v70[7]) = 0;
  v72 = (v42 + v71 + v70[8]);
  *v72 = v132;
  v72[1] = a6;

LABEL_15:
  v97 = v133;
  v140 = v134;
  if (v133)
  {
    sub_2740A6A74();
    v135 = sub_2741C76AC();
    *(&v134 + 1) = v98;
    LODWORD(v132) = v99;
    *&v134 = v100;
    *&v140 = v131;
    *(&v140 + 1) = v97;
    v130 = sub_2741C76AC();
    v129 = v101;
    v131 = v102;
    v133 = v122;
    v128 = (v103 & 1);
    v104 = MEMORY[0x28223BE20](v130, v101);
    MEMORY[0x28223BE20](v104, v105);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093B2F0, &qword_2741D7C28);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937F38, &unk_2741CB670);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937F40, &qword_2741D5B30);
    v106 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28093B2E8, &qword_2741D7C20);
    v107 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28093A3D0, &qword_2741D3EA0);
    v108 = sub_2741B017C();
    v109 = sub_2741B0320();
    *&v140 = v106;
    *(&v140 + 1) = v107;
    v141 = v108;
    v142 = v109;
    swift_getOpaqueTypeConformance2();
    sub_2740A5DB0();
    sub_2740A5EE4();
    v110 = v132;
    v111 = v135;
    v112 = *(&v134 + 1);
    sub_2741C787C();

    sub_2740A6AC8(v130, v129, v128);
  }

  else
  {
    sub_2740A6A74();
    *(&v134 + 1) = sub_2741C76AC();
    *&v134 = v113;
    v110 = v114;
    v133 = v115;
    v135 = v122;
    v116 = MEMORY[0x28223BE20](*(&v134 + 1), v113);
    MEMORY[0x28223BE20](v116, v117);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093B2F0, &qword_2741D7C28);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937F38, &unk_2741CB670);
    v132 = v42;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937F40, &qword_2741D5B30);
    v118 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28093B2E8, &qword_2741D7C20);
    v119 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28093A3D0, &qword_2741D3EA0);
    v120 = sub_2741B017C();
    v121 = sub_2741B0320();
    *&v140 = v118;
    *(&v140 + 1) = v119;
    v141 = v120;
    v142 = v121;
    swift_getOpaqueTypeConformance2();
    sub_2740A5DB0();
    sub_2740A5EE4();
    v111 = *(&v134 + 1);
    v112 = v134;
    sub_2741C787C();
  }

  sub_2740A6AC8(v111, v112, v110 & 1);

  return __swift_destroy_boxed_opaque_existential_1Tm(&v147);
}

uint64_t sub_2741A652C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t *a5@<X4>, uint64_t *a6@<X5>, uint64_t a7@<X8>)
{
  v138 = a5;
  v14 = sub_2741C699C();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14, v16);
  v18 = &v125 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2740A6D94(a4, &v142, &qword_280937E78, &qword_2741D81E0);
  v141 = a2;
  v140 = a1;
  v139 = a7;
  if (!v144)
  {
    sub_27409D420(&v142, &qword_280937E78, &qword_2741D81E0);
    sub_2741C714C();
    v138 = sub_2741C768C();
    v137 = v51;
    LODWORD(v135) = v52;
    v136 = v53;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809389D8, &qword_2741CCD00);
    v54 = (type metadata accessor for WFButton(0) - 8);
    v55 = (*(*v54 + 80) + 32) & ~*(*v54 + 80);
    v56 = swift_allocObject();
    *(v56 + 16) = xmmword_2741CB550;
    sub_2741C698C();
    v57 = (*(v15 + 32))(v56 + v55, v18, v14);
    v134 = &v125;
    *(v56 + v55 + v54[7]) = 0;
    v58 = (v56 + v55 + v54[8]);
    *v58 = nullsub_1;
    v58[1] = 0;
    v60 = MEMORY[0x28223BE20](v57, v59);
    MEMORY[0x28223BE20](v60, v61);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093B498, &qword_2741D7ED0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937F38, &unk_2741CB670);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937F40, &qword_2741D5B30);
    sub_2741B15B4();
    sub_2740A5DB0();
    sub_2740A5EE4();
    v62 = v135;
    v63 = v138;
    v64 = v137;
    sub_2741C787C();

    sub_2740A6AC8(v63, v64, v62 & 1);
  }

  v133 = a6;
  v136 = v14;
  LODWORD(v137) = a3;
  v19 = v7;
  sub_27409D118(&v142, &v149);
  v20 = v150;
  v21 = v151;
  __swift_project_boxed_opaque_existential_1(&v149, v150);
  v135 = (*(v21 + 16))(v20, v21);
  v23 = v22;
  v24 = v150;
  v25 = v151;
  __swift_project_boxed_opaque_existential_1(&v149, v150);
  v26 = (*(v25 + 24))(v24, v25);
  v28 = v27;
  sub_27409D4E4(&v149, v148);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937FB0, &qword_2741CB6B0);
  v29 = swift_dynamicCast();
  v132 = v26;
  if (v29)
  {
    v31 = v145;
    v30 = v146;
    v128 = v19;
    v131 = v144;
    v130 = v143;
    v129 = *(&v142 + 1);
    v127 = v142;
    if (v147 > 7u)
    {
      if (v147 == 8)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809389D8, &qword_2741CCD00);
        v112 = type metadata accessor for WFButton(0);
        v125 = v28;
        v114 = v112 - 8;
        v113 = *(v112 - 8);
        v126 = v31;
        v115 = *(v113 + 72);
        v116 = (*(v113 + 80) + 32) & ~*(v113 + 80);
        v117 = swift_allocObject();
        *(v117 + 16) = xmmword_2741CC090;
        v134 = v117;
        v118 = v117 + v116;
        v119 = swift_allocObject();
        *(v119 + 16) = v138;
        *(v119 + 24) = v133;

        sub_2741C698C();
        v120 = *(v15 + 32);
        v121 = v136;
        v120(v118, v18, v136);
        *(v118 + *(v114 + 28)) = 10;
        v122 = (v118 + *(v114 + 32));
        *v122 = sub_2741B17A0;
        v122[1] = v119;
        sub_2741C698C();
        v120(v118 + v115, v18, v121);
        *(v118 + v115 + *(v114 + 28)) = 0;
        v123 = *(v114 + 32);
        v28 = v125;
        v124 = (v118 + v115 + v123);
        *v124 = nullsub_1;
        v124[1] = 0;
        v45 = v127;
        v46 = v129;
        v47 = v130;
        v48 = v131;
        v49 = v126;
        v50 = v30;
        v86 = 8;
        goto LABEL_14;
      }

      if (v147 == 9)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809389D8, &qword_2741CCD00);
        v73 = type metadata accessor for WFButton(0);
        v125 = v28;
        v75 = v73 - 8;
        v74 = *(v73 - 8);
        v126 = v31;
        v76 = *(v74 + 72);
        v77 = (*(v74 + 80) + 32) & ~*(v74 + 80);
        v78 = swift_allocObject();
        *(v78 + 16) = xmmword_2741CC090;
        v134 = v78;
        v79 = v78 + v77;
        v80 = swift_allocObject();
        *(v80 + 16) = v138;
        *(v80 + 24) = v133;

        sub_2741C698C();
        v81 = *(v15 + 32);
        v82 = v136;
        v81(v79, v18, v136);
        *(v79 + *(v75 + 28)) = 8;
        v83 = (v79 + *(v75 + 32));
        *v83 = sub_2741B17A0;
        v83[1] = v80;
        sub_2741C698C();
        v81(v79 + v76, v18, v82);
        *(v79 + v76 + *(v75 + 28)) = 9;
        v84 = *(v75 + 32);
        v28 = v125;
        v85 = (v79 + v76 + v84);
        *v85 = nullsub_1;
        v85[1] = 0;
        v45 = v127;
        v46 = v129;
        v47 = v130;
        v48 = v131;
        v49 = v126;
        v50 = v30;
        v86 = 9;
LABEL_14:
        sub_2740A66EC(v45, v46, v47, v48, v49, v50, v86);
        goto LABEL_15;
      }
    }

    else if (v147 - 5 < 3 || v147 == 3)
    {
      LODWORD(v125) = v147;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809389D8, &qword_2741CCD00);
      v32 = (type metadata accessor for WFButton(0) - 8);
      v33 = *(*v32 + 72);
      v34 = (*(*v32 + 80) + 32) & ~*(*v32 + 80);
      v35 = swift_allocObject();
      *(v35 + 16) = xmmword_2741CC090;
      v134 = v35;
      v36 = v35 + v34;
      v37 = swift_allocObject();
      v126 = v31;
      v38 = v37;
      *(v37 + 16) = v138;
      *(v37 + 24) = v133;

      sub_2741C698C();
      v39 = *(v15 + 32);
      v138 = v30;
      v40 = v28;
      v41 = v136;
      v39(v36, v18, v136);
      *(v36 + v32[7]) = 4;
      v42 = (v36 + v32[8]);
      *v42 = sub_2741B17A0;
      v42[1] = v38;
      sub_2741C698C();
      v43 = v41;
      v28 = v40;
      v39(v36 + v33, v18, v43);
      *(v36 + v33 + v32[7]) = 1;
      v44 = (v36 + v33 + v32[8]);
      *v44 = nullsub_1;
      v44[1] = 0;
      v45 = v127;
      v46 = v129;
      v47 = v130;
      v48 = v131;
      v49 = v126;
      v50 = v138;
LABEL_13:
      v86 = v125;
      goto LABEL_14;
    }

    LODWORD(v125) = v147;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809389D8, &qword_2741CCD00);
    v87 = (type metadata accessor for WFButton(0) - 8);
    v88 = (*(*v87 + 80) + 32) & ~*(*v87 + 80);
    v89 = swift_allocObject();
    *(v89 + 16) = xmmword_2741CB550;
    v134 = v89;
    v90 = v89 + v88;
    sub_2741C698C();
    (*(v15 + 32))(v90, v18, v136);
    *(v90 + v87[7]) = 0;
    v91 = (v90 + v87[8]);
    v92 = v133;
    *v91 = v138;
    v91[1] = v92;

    v45 = v127;
    v46 = v129;
    v47 = v130;
    v48 = v131;
    v49 = v31;
    v50 = v30;
    goto LABEL_13;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809389D8, &qword_2741CCD00);
  v66 = (type metadata accessor for WFButton(0) - 8);
  v67 = (*(*v66 + 80) + 32) & ~*(*v66 + 80);
  v68 = swift_allocObject();
  *(v68 + 16) = xmmword_2741CB550;
  v69 = v28;
  v134 = v68;
  v70 = v68 + v67;
  sub_2741C698C();
  (*(v15 + 32))(v70, v18, v136);
  *(v70 + v66[7]) = 0;
  v71 = (v70 + v66[8]);
  v28 = v69;
  v72 = v133;
  *v71 = v138;
  v71[1] = v72;

LABEL_15:
  *&v142 = v135;
  *(&v142 + 1) = v23;
  sub_2740A6A74();
  if (v28)
  {
    v138 = sub_2741C76AC();
    v136 = v93;
    LODWORD(v131) = v94;
    v135 = v95;
    *&v142 = v132;
    *(&v142 + 1) = v28;
    v130 = sub_2741C76AC();
    v129 = v96;
    v132 = v97;
    v133 = &v125;
    v99 = v98 & 1;
    v100 = MEMORY[0x28223BE20](v130, v96);
    MEMORY[0x28223BE20](v100, v101);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093B498, &qword_2741D7ED0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937F38, &unk_2741CB670);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937F40, &qword_2741D5B30);
    sub_2741B15B4();
    sub_2740A5DB0();
    sub_2740A5EE4();
    v102 = v131;
    v103 = v138;
    v104 = v136;
    sub_2741C787C();

    sub_2740A6AC8(v130, v129, v99);

    v105 = v102 & 1;
  }

  else
  {
    v136 = sub_2741C76AC();
    v135 = v106;
    v108 = v107;
    v133 = v109;
    v138 = &v125;
    v110 = MEMORY[0x28223BE20](v136, v106);
    MEMORY[0x28223BE20](v110, v111);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093B498, &qword_2741D7ED0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937F38, &unk_2741CB670);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937F40, &qword_2741D5B30);
    sub_2741B15B4();
    sub_2740A5DB0();
    sub_2740A5EE4();
    v103 = v136;
    v104 = v135;
    sub_2741C787C();

    v105 = v108 & 1;
  }

  sub_2740A6AC8(v103, v104, v105);

  return __swift_destroy_boxed_opaque_existential_1Tm(&v149);
}

uint64_t sub_2741A7590@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_2741B0924(&qword_280939368, type metadata accessor for HotspotDevicesListModel, &unk_2741CF508);
  sub_2741C6A0C();

  swift_beginAccess();
  *a2 = *(v3 + 56);
}

uint64_t sub_2741A7650(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  sub_2741B0924(&qword_280939368, type metadata accessor for HotspotDevicesListModel, &unk_2741CF508);
  sub_2741C69FC();
}

uint64_t sub_2741A771C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937E30, &qword_2741CDC20);
  MEMORY[0x28223BE20](v8 - 8, v9);
  v11 = v23 - v10;
  sub_2740A6D94(a3, v23 - v10, &qword_280937E30, &qword_2741CDC20);
  v12 = sub_2741C80DC();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_27409D420(v11, &qword_280937E30, &qword_2741CDC20);
  }

  else
  {
    sub_2741C80CC();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_2741C805C();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_2741C7EEC() + 32;

      if (v18 | v16)
      {
        v24[0] = 0;
        v24[1] = 0;
        v20 = v24;
        v24[2] = v16;
        v24[3] = v18;
      }

      else
      {
        v20 = 0;
      }

      v23[1] = 7;
      v23[2] = v20;
      v23[3] = v19;
      v21 = swift_task_create();

      sub_27409D420(a3, &qword_280937E30, &qword_2741CDC20);

      return v21;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_27409D420(a3, &qword_280937E30, &qword_2741CDC20);
  if (v18 | v16)
  {
    v24[4] = 0;
    v24[5] = 0;
    v24[6] = v16;
    v24[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_2741A79C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937E30, &qword_2741CDC20);
  MEMORY[0x28223BE20](v8 - 8, v9);
  v11 = v23 - v10;
  sub_2740A6D94(a3, v23 - v10, &qword_280937E30, &qword_2741CDC20);
  v12 = sub_2741C80DC();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_27409D420(v11, &qword_280937E30, &qword_2741CDC20);
  }

  else
  {
    sub_2741C80CC();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_2741C805C();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_2741C7EEC() + 32;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093AED8, &unk_2741D7EB0);
      v20 = (v18 | v16);
      if (v18 | v16)
      {
        v24[0] = 0;
        v24[1] = 0;
        v20 = v24;
        v24[2] = v16;
        v24[3] = v18;
      }

      v23[1] = 7;
      v23[2] = v20;
      v23[3] = v19;
      v21 = swift_task_create();

      sub_27409D420(a3, &qword_280937E30, &qword_2741CDC20);

      return v21;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_27409D420(a3, &qword_280937E30, &qword_2741CDC20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093AED8, &unk_2741D7EB0);
  if (v18 | v16)
  {
    v24[4] = 0;
    v24[5] = 0;
    v24[6] = v16;
    v24[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_2741A7C84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937E30, &qword_2741CDC20);
  MEMORY[0x28223BE20](v8 - 8, v9);
  v11 = v23 - v10;
  sub_2740A6D94(a3, v23 - v10, &qword_280937E30, &qword_2741CDC20);
  v12 = sub_2741C80DC();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_27409D420(v11, &qword_280937E30, &qword_2741CDC20);
  }

  else
  {
    sub_2741C80CC();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_2741C805C();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_2741C7EEC() + 32;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093B490, &qword_2741D7EA8);
      v20 = (v18 | v16);
      if (v18 | v16)
      {
        v24[0] = 0;
        v24[1] = 0;
        v20 = v24;
        v24[2] = v16;
        v24[3] = v18;
      }

      v23[1] = 7;
      v23[2] = v20;
      v23[3] = v19;
      v21 = swift_task_create();

      sub_27409D420(a3, &qword_280937E30, &qword_2741CDC20);

      return v21;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_27409D420(a3, &qword_280937E30, &qword_2741CDC20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093B490, &qword_2741D7EA8);
  if (v18 | v16)
  {
    v24[4] = 0;
    v24[5] = 0;
    v24[6] = v16;
    v24[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_2741A7F40@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_2741B0924(&qword_280937E70, type metadata accessor for AssociationModel, &unk_2741D3E80);
  sub_2741C6A0C();

  swift_beginAccess();
  return sub_2740A6D94(v3 + 64, a2, &qword_28093A3D0, &qword_2741D3EA0);
}

uint64_t sub_2741A805C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_2741B0924(&qword_280939880, type metadata accessor for NetworksListModel, &unk_2741D44C8);
  sub_2741C6A0C();

  swift_beginAccess();
  *a2 = *(v3 + 112);
}

uint64_t sub_2741A8148@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_2741B0924(&qword_280939880, type metadata accessor for NetworksListModel, &unk_2741D44C8);
  sub_2741C6A0C();

  swift_beginAccess();
  *a2 = *(v3 + 120);
}

uint64_t sub_2741A8234@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for NetworksListModel(0);
  sub_2741B0924(&qword_280939880, type metadata accessor for NetworksListModel, &unk_2741D44C8);
  *a1 = sub_2741C6CEC();
  *(a1 + 8) = v2 & 1;
  type metadata accessor for UserSettingsModel(0);
  sub_2741B0924(&qword_280938290, type metadata accessor for UserSettingsModel, &unk_2741D66C8);
  *(a1 + 16) = sub_2741C6CEC();
  *(a1 + 24) = v3 & 1;
  type metadata accessor for AssociationModel(0);
  sub_2741B0924(&qword_280937E70, type metadata accessor for AssociationModel, &unk_2741D3E80);
  *(a1 + 32) = sub_2741C6CEC();
  *(a1 + 40) = v4 & 1;
  type metadata accessor for HotspotDevicesListModel(0);
  swift_allocObject();
  v12[0] = sub_2740E4A68();
  sub_2741C7A2C();
  v5 = *(&v13 + 1);
  *(a1 + 48) = v13;
  *(a1 + 56) = v5;
  sub_2741C7A2C();
  v6 = *(&v13 + 1);
  *(a1 + 64) = v13;
  *(a1 + 72) = v6;
  LOBYTE(v12[0]) = 0;
  sub_2741C7A2C();
  v7 = *(&v13 + 1);
  *(a1 + 80) = v13;
  *(a1 + 88) = v7;
  *&v15 = 0;
  v13 = 0u;
  v14 = 0u;
  sub_2740A6D94(&v13, v12, &qword_280937E78, &qword_2741D81E0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937E78, &qword_2741D81E0);
  sub_2741C7A2C();
  sub_27409D420(&v13, &qword_280937E78, &qword_2741D81E0);
  LOBYTE(v12[0]) = 0;
  sub_2741C7A2C();
  v8 = *(&v13 + 1);
  *(a1 + 144) = v13;
  *(a1 + 152) = v8;
  v19 = 0;
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  sub_2740A6D94(&v13, v12, &qword_280938340, &qword_2741D1660);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938340, &qword_2741D1660);
  sub_2741C7A2C();
  sub_27409D420(&v13, &qword_280938340, &qword_2741D1660);
  LOBYTE(v12[0]) = 0;
  sub_2741C7A2C();
  v9 = *(&v13 + 1);
  *(a1 + 272) = v13;
  *(a1 + 280) = v9;
  LOBYTE(v12[0]) = 0;
  result = sub_2741C7A2C();
  v11 = *(&v13 + 1);
  *(a1 + 288) = v13;
  *(a1 + 296) = v11;
  return result;
}

uint64_t sub_2741A853C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_2741B0924(&qword_280938290, type metadata accessor for UserSettingsModel, &unk_2741D66C8);
  sub_2741C6A0C();

  swift_beginAccess();
  v5 = *(v3 + 64);
  v4 = *(v3 + 72);
  v6 = *(v3 + 80);
  v7 = *(v3 + 81);
  *a2 = *(v3 + 56);
  *(a2 + 8) = v5;
  *(a2 + 16) = v4;
  *(a2 + 24) = v6;
  *(a2 + 25) = v7;
}

uint64_t sub_2741A8614(__int16 *a1, uint64_t *a2)
{
  swift_getKeyPath();
  sub_2741B0924(&qword_280938290, type metadata accessor for UserSettingsModel, &unk_2741D66C8);
  sub_2741C69FC();
}

uint64_t sub_2741A870C(uint64_t a1, uint64_t a2)
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093B358, &qword_2741D7CD0);
  sub_2741C699C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937F70, &qword_2741CE730);
  sub_2740A6D24(&qword_28093B360, &qword_28093B358, &qword_2741D7CD0, MEMORY[0x277D83980]);
  sub_2740A5E34();
  sub_2741B0924(&qword_28093B368, type metadata accessor for WFButton, &unk_2741D550C);
  return sub_2741C7B6C();
}

uint64_t sub_2741A887C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  sub_2740A6D94(a1, v18, &qword_280937E78, &qword_2741D81E0);
  if (!v19)
  {
    sub_27409D420(v18, &qword_280937E78, &qword_2741D81E0);
    goto LABEL_7;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937FB0, &qword_2741CB6B0);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_7:
    *v21 = 1;
    memset(&v21[8], 0, 48);
    goto LABEL_8;
  }

  if (*v21 == 1)
  {
LABEL_8:
    sub_27409D420(v21, &qword_280937FA8, &unk_2741D03F0);
    goto LABEL_10;
  }

  sub_2740A6040(v21, v22);
  sub_2740A609C(v22, v21);
  v10 = *v21;
  sub_27409D420(&v21[16], &qword_280937FB8, &unk_2741D0410);
  if (v10)
  {
    v11 = swift_allocObject();
    *(v11 + 16) = a2;
    *(v11 + 24) = a3;

    v18[0] = sub_2740E781C(v10, a5, v11);
    v18[1] = v12;
    v18[2] = v13;
    v19 = v14;
    v20 = 0;
    sub_2740A5FEC();
    sub_2741C72CC();
    result = sub_2740A61EC(v22);
    v16 = v21[32];
    v17 = *&v21[16];
    *a6 = *v21;
    *(a6 + 16) = v17;
    *(a6 + 32) = v16;
    return result;
  }

  sub_2740A61EC(v22);
LABEL_10:
  result = sub_2741C863C();
  __break(1u);
  return result;
}

uint64_t sub_2741A8A88@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  sub_2740A6D94(a1, v15, &qword_280937E78, &qword_2741D81E0);
  if (!v16)
  {
    sub_27409D420(v15, &qword_280937E78, &qword_2741D81E0);
    goto LABEL_7;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937FB0, &qword_2741CB6B0);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_7:
    *v18 = 1;
    memset(&v18[8], 0, 48);
    goto LABEL_8;
  }

  if (*v18 == 1)
  {
LABEL_8:
    sub_27409D420(v18, &qword_280937FA8, &unk_2741D03F0);
    goto LABEL_10;
  }

  sub_2740A6040(v18, v19);
  sub_2740A609C(v19, v18);
  v7 = *v18;
  sub_27409D420(&v18[16], &qword_280937FB8, &unk_2741D0410);
  if (v7)
  {
    v8 = swift_allocObject();
    *(v8 + 16) = a2;
    *(v8 + 24) = a3;

    v15[0] = sub_2740E781C(v7, sub_2741B05B8, v8);
    v15[1] = v9;
    v15[2] = v10;
    v16 = v11;
    v17 = 0;
    sub_2740A5FEC();
    sub_2741C72CC();
    result = sub_2740A61EC(v19);
    v13 = v18[32];
    v14 = *&v18[16];
    *a4 = *v18;
    *(a4 + 16) = v14;
    *(a4 + 32) = v13;
    return result;
  }

  sub_2740A61EC(v19);
LABEL_10:
  result = sub_2741C863C();
  __break(1u);
  return result;
}

uint64_t sub_2741A8C98@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_2741B0924(&qword_2809382A0, type metadata accessor for CurrentNetworkState, &unk_2741D7338);
  sub_2741C6A0C();

  *a2 = *(v3 + OBJC_IVAR____TtC15WiFiSettingsKit19CurrentNetworkState__isPowerOn);
  return result;
}

uint64_t sub_2741A8D70()
{
  v1 = sub_2741C70AC();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1, v3);
  v5 = v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v0;
  v7 = *(v0 + 8);

  if ((v7 & 1) == 0)
  {
    sub_2741C82AC();
    v8 = sub_2741C74FC();
    sub_2741C6ACC();

    sub_2741C709C();
    swift_getAtKeyPath();

    (*(v2 + 8))(v5, v1);
    return v10[1];
  }

  return v6;
}

uint64_t sub_2741A8EB0()
{
  v1 = sub_2741C70AC();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1, v3);
  v5 = v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v0 + 16);
  v7 = *(v0 + 24);

  if ((v7 & 1) == 0)
  {
    sub_2741C82AC();
    v8 = sub_2741C74FC();
    sub_2741C6ACC();

    sub_2741C709C();
    swift_getAtKeyPath();

    (*(v2 + 8))(v5, v1);
    return v10[1];
  }

  return v6;
}

uint64_t sub_2741A8FF0()
{
  v1 = sub_2741C70AC();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1, v3);
  v5 = v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v0 + 32);
  v7 = *(v0 + 40);

  if ((v7 & 1) == 0)
  {
    sub_2741C82AC();
    v8 = sub_2741C74FC();
    sub_2741C6ACC();

    sub_2741C709C();
    swift_getAtKeyPath();

    (*(v2 + 8))(v5, v1);
    return v10[1];
  }

  return v6;
}

uint64_t sub_2741A9130()
{
  sub_2741C856C();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937F20, &qword_2741CCFB0);
  sub_2741C7A3C();
  if (v3)
  {
    v0 = 1702195828;
  }

  else
  {
    v0 = 0x65736C6166;
  }

  if (v3)
  {
    v1 = 0xE400000000000000;
  }

  else
  {
    v1 = 0xE500000000000000;
  }

  MEMORY[0x2743E5FB0](v0, v1);

  sub_2740CB460(0xD000000000000011, 0x80000002741E3790);
}

uint64_t sub_2741A9214()
{
  sub_2741C856C();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937F20, &qword_2741CCFB0);
  sub_2741C7A3C();
  if (v3)
  {
    v0 = 1702195828;
  }

  else
  {
    v0 = 0x65736C6166;
  }

  if (v3)
  {
    v1 = 0xE400000000000000;
  }

  else
  {
    v1 = 0xE500000000000000;
  }

  MEMORY[0x2743E5FB0](v0, v1);

  sub_2740CB460(0xD00000000000001CLL, 0x80000002741E37B0);
}

uint64_t sub_2741A92F8()
{
  sub_2741C856C();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937F20, &qword_2741CCFB0);
  sub_2741C7A3C();
  if (v3)
  {
    v0 = 1702195828;
  }

  else
  {
    v0 = 0x65736C6166;
  }

  if (v3)
  {
    v1 = 0xE400000000000000;
  }

  else
  {
    v1 = 0xE500000000000000;
  }

  MEMORY[0x2743E5FB0](v0, v1);

  sub_2740CB460(0xD00000000000001DLL, 0x80000002741E38E0);
}

uint64_t sub_2741A93DC()
{
  sub_2741C856C();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937F20, &qword_2741CCFB0);
  sub_2741C7A3C();
  if (v3)
  {
    v0 = 1702195828;
  }

  else
  {
    v0 = 0x65736C6166;
  }

  if (v3)
  {
    v1 = 0xE400000000000000;
  }

  else
  {
    v1 = 0xE500000000000000;
  }

  MEMORY[0x2743E5FB0](v0, v1);

  sub_2740CB460(0xD000000000000019, 0x80000002741E3680);
}

uint64_t sub_2741A94C0@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v61 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093B2E0, &qword_2741D7C18);
  MEMORY[0x28223BE20](v3, v4);
  v6 = v50 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093B2E8, &qword_2741D7C20);
  MEMORY[0x28223BE20](v7, v8);
  v10 = v50 - v9;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093B2F0, &qword_2741D7C28);
  v56 = *(v63 - 8);
  MEMORY[0x28223BE20](v63, v11);
  v51 = v50 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093B2F8, &qword_2741D7C30);
  v59 = *(v13 - 8);
  v60 = v13;
  v58 = *(v59 + 64);
  v15 = MEMORY[0x28223BE20](v13, v14);
  v57 = v50 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15, v17);
  v62 = v50 - v18;
  sub_2741A9DFC(v1, v6);
  v19 = sub_2741A8D70();
  swift_getKeyPath();
  v69[0] = v19;
  sub_2741B0924(&qword_280939880, type metadata accessor for NetworksListModel, &unk_2741D44C8);
  sub_2741C6A0C();

  type metadata accessor for CurrentNetworkModel(0);
  sub_2741AFFDC();
  sub_2741B0924(&qword_280938350, type metadata accessor for CurrentNetworkModel, &unk_2741D1610);
  sub_2741C770C();

  sub_27409D420(v6, &qword_28093B2E0, &qword_2741D7C18);
  sub_274186A50(v1, v69);
  v20 = swift_allocObject();
  memcpy((v20 + 16), v69, 0x130uLL);
  v21 = &v10[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093B328, &qword_2741D7C70) + 36)];
  *v21 = sub_2741B0114;
  v21[1] = v20;
  v21[2] = 0;
  v21[3] = 0;
  sub_274186A50(v2, v69);
  v22 = swift_allocObject();
  memcpy((v22 + 16), v69, 0x130uLL);
  v55 = v7;
  v23 = &v10[*(v7 + 36)];
  *v23 = 0;
  *(v23 + 1) = 0;
  *(v23 + 2) = sub_2741B011C;
  *(v23 + 3) = v22;
  v24 = sub_2741A8FF0();
  swift_getKeyPath();
  v69[0] = v24;
  sub_2741B0924(&qword_280937E70, type metadata accessor for AssociationModel, &unk_2741D3E80);
  sub_2741C6A0C();

  swift_beginAccess();
  sub_2740A6D94(v24 + 64, &v64, &qword_28093A3D0, &qword_2741D3EA0);

  sub_274186A50(v2, v69);
  v25 = swift_allocObject();
  memcpy((v25 + 16), v69, 0x130uLL);
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093A3D0, &qword_2741D3EA0);
  v53 = sub_2741B017C();
  v52 = sub_2741B0320();
  sub_2741C78CC();

  sub_27409D420(&v64, &qword_28093A3D0, &qword_2741D3EA0);
  sub_27409D420(v10, &qword_28093B2E8, &qword_2741D7C20);
  v26 = *(v2 + 72);
  LOBYTE(v64) = *(v2 + 64);
  *(&v64 + 1) = v26;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937F20, &qword_2741CCFB0);
  sub_2741C7A5C();
  v27 = v69[0];
  v28 = v69[1];
  LODWORD(v7) = LOBYTE(v69[2]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937F28, &unk_2741CB660);
  sub_2741C7A3C();
  sub_274186A50(v2, v69);
  v29 = swift_allocObject();
  memcpy((v29 + 16), v69, 0x130uLL);
  v30 = v62;
  v31 = v51;
  sub_2741A53EC(v27, v28, v7, &v64, sub_2741B03F8, v29, v62);

  sub_27409D420(&v64, &qword_280937E78, &qword_2741D81E0);
  (*(v56 + 8))(v31, v63);
  v32 = *(v2 + 88);
  LOBYTE(v64) = *(v2 + 80);
  *(&v64 + 1) = v32;
  sub_2741C7A5C();
  v50[1] = v69[1];
  v51 = v69[0];
  LODWORD(v56) = LOBYTE(v69[2]);
  sub_2741C7A3C();
  sub_274186A50(v2, v69);
  v33 = swift_allocObject();
  memcpy((v33 + 16), v69, 0x130uLL);
  sub_2740A6D94(v68, &v64, &qword_280937E78, &qword_2741D81E0);
  v34 = v59;
  v35 = v57;
  v36 = v30;
  v37 = v60;
  (*(v59 + 16))(v57, v36, v60);
  v38 = (*(v34 + 80) + 56) & ~*(v34 + 80);
  v39 = (v58 + v38 + 7) & 0xFFFFFFFFFFFFFFF8;
  v40 = swift_allocObject();
  v41 = v65;
  *(v40 + 16) = v64;
  *(v40 + 32) = v41;
  *(v40 + 48) = v66;
  (*(v34 + 32))(v40 + v38, v35, v37);
  v42 = (v40 + v39);
  *v42 = sub_2741B0400;
  v42[1] = v33;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937F30, &unk_2741D7CA0);
  v43 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280937F38, &unk_2741CB670);
  v44 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280937F40, &qword_2741D5B30);
  *&v64 = v55;
  *(&v64 + 1) = v54;
  *&v65 = v53;
  *(&v65 + 1) = v52;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v46 = sub_2740A5DB0();
  v47 = sub_2740A5EE4();
  *&v64 = v63;
  *(&v64 + 1) = v43;
  *&v65 = v44;
  *(&v65 + 1) = OpaqueTypeConformance2;
  v66 = v46;
  v67 = v47;
  swift_getOpaqueTypeConformance2();
  sub_2740A5F60();
  v48 = v62;
  sub_2741C788C();

  sub_27409D420(v68, &qword_280937E78, &qword_2741D81E0);
  return (*(v34 + 8))(v48, v37);
}

uint64_t sub_2741A9DFC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093B320, &qword_2741D7C68);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v94 = &v80 - v7;
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093B370, &qword_2741D7CD8);
  MEMORY[0x28223BE20](v86, v8);
  v85 = &v80 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093B378, &qword_2741D7CE0);
  v88 = *(v10 - 8);
  v89 = v10;
  MEMORY[0x28223BE20](v10, v11);
  v87 = &v80 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093B380, &qword_2741D7CE8);
  v91 = *(v13 - 8);
  v92 = v13;
  MEMORY[0x28223BE20](v13, v14);
  v84 = &v80 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093B388, &qword_2741D7CF0);
  v18 = MEMORY[0x28223BE20](v16 - 8, v17);
  v93 = &v80 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18, v20);
  v97 = &v80 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093B390, &qword_2741D7CF8);
  v90 = *(v22 - 8);
  MEMORY[0x28223BE20](v22, v23);
  v25 = &v80 - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093B398, &qword_2741D7D00);
  v28 = MEMORY[0x28223BE20](v26 - 8, v27);
  v96 = &v80 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28, v30);
  v98 = &v80 - v31;
  v32 = sub_2741A8D70();
  swift_getKeyPath();
  *&v101[0] = v32;
  v95 = sub_2741B0924(&qword_280939880, type metadata accessor for NetworksListModel, &unk_2741D44C8);
  sub_2741C6A0C();

  v33 = *(v32 + 128);

  v34 = *(v33 + 16);

  swift_getKeyPath();
  *&v101[0] = v34;
  sub_2741B0924(&qword_2809382A0, type metadata accessor for CurrentNetworkState, &unk_2741D7338);
  sub_2741C6A0C();

  LODWORD(v33) = *(v34 + OBJC_IVAR____TtC15WiFiSettingsKit19CurrentNetworkState__isPowerOn);

  if (v33 != 1)
  {
    return (*(v5 + 56))(a2, 1, 1, v4);
  }

  v81 = v5;
  v82 = v4;
  v83 = a2;
  v36 = *(a1 + 48);
  v35 = *(a1 + 56);
  *&v101[0] = v36;
  *(&v101[0] + 1) = v35;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093B3A0, &qword_2741D7D30);
  sub_2741C7A3C();
  v37 = v102;
  swift_getKeyPath();
  *&v101[0] = v37;
  sub_2741B0924(&qword_280939368, type metadata accessor for HotspotDevicesListModel, &unk_2741CF508);
  sub_2741C6A0C();

  swift_beginAccess();
  v38 = *(v37 + 56);

  v39 = *(v38 + 16);

  if (v39)
  {
    v40 = sub_2741A8EB0();
    swift_getKeyPath();
    *&v101[0] = v40;
    sub_2741B0924(&qword_280938290, type metadata accessor for UserSettingsModel, &unk_2741D66C8);
    sub_2741C6A0C();

    swift_beginAccess();
    v41 = *(v40 + 72);

    if (!v41)
    {
      v111 = 0;
      v110 = 0u;
      v109 = 0u;
      *&v101[0] = v36;
      *(&v101[0] + 1) = v35;
      sub_2741C7A3C();
      v43 = v102;
      sub_274186A50(a1, v101);
      v44 = swift_allocObject();
      memcpy((v44 + 16), v101, 0x130uLL);
      type metadata accessor for AssociationModel(0);
      sub_2741B0924(&qword_280937E70, type metadata accessor for AssociationModel, &unk_2741D3E80);
      *&v102 = sub_2741C6CEC();
      BYTE8(v102) = v45 & 1;
      LOBYTE(v99) = 0;
      sub_2741C7A2C();
      LOBYTE(v103) = v100;
      *(&v103 + 1) = *(&v100 + 1);
      sub_2740A6D94(&v109, &v100, &qword_280937E78, &qword_2741D81E0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937E78, &qword_2741D81E0);
      sub_2741C7A2C();
      sub_27409D420(&v109, &qword_280937E78, &qword_2741D81E0);
      *&v107 = v43;
      *(&v107 + 1) = sub_2741B0844;
      *v108 = v44;
      v99 = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093B3A8, &qword_2741D7D88);
      sub_2741C7A2C();
      *&v108[8] = v100;
      v101[4] = v106;
      v101[5] = v107;
      v101[0] = v102;
      v101[1] = v103;
      v101[2] = v104;
      v101[3] = v105;
      v101[6] = *v108;
      *&v101[7] = *(&v100 + 1);
      goto LABEL_8;
    }
  }

  memset(v101, 0, 120);
LABEL_8:
  v46 = sub_2741A8D70();
  swift_getKeyPath();
  *&v102 = v46;
  sub_2741C6A0C();

  swift_beginAccess();
  v47 = *(v46 + 112);

  v48 = *(v47 + 16);

  if (v48)
  {
    sub_2741AC0A4(v25);
    v49 = v98;
    sub_2740A6C18(v25, v98, &qword_28093B390, &qword_2741D7CF8);
    v50 = 0;
  }

  else
  {
    v50 = 1;
    v49 = v98;
  }

  (v90[7])(v49, v50, 1, v22);
  v51 = sub_2741A8EB0();
  swift_getKeyPath();
  *&v102 = v51;
  sub_2741B0924(&qword_280938290, type metadata accessor for UserSettingsModel, &unk_2741D66C8);
  sub_2741C6A0C();

  swift_beginAccess();
  v52 = *(v51 + 72);

  if (v52)
  {

    v55 = 1;
    v56 = v97;
    v58 = v91;
    v57 = v92;
  }

  else
  {
    v90 = &v80;
    MEMORY[0x28223BE20](v53, v54);
    sub_2741AF438(a1, v85);
    v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093B3B0, &qword_2741D7DB8);
    v59 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28093B3B8, &qword_2741D7DC0);
    v60 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28093B3C0, &qword_2741D7DC8);
    v61 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28093B3C8, &qword_2741D7DD0);
    v62 = type metadata accessor for OtherNetworkSheet(255);
    v63 = sub_2740A6D24(&qword_28093B3D0, &qword_28093B3C8, &qword_2741D7DD0, MEMORY[0x277CE1138]);
    v64 = sub_2741B0924(&qword_28093B3D8, type metadata accessor for OtherNetworkSheet, &unk_2741CB5E0);
    *&v102 = v61;
    *(&v102 + 1) = v62;
    *&v103 = v63;
    *(&v103 + 1) = v64;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v66 = sub_2741B0870();
    *&v102 = v59;
    v49 = v98;
    *(&v102 + 1) = v60;
    *&v103 = OpaqueTypeConformance2;
    *(&v103 + 1) = v66;
    swift_getOpaqueTypeConformance2();
    sub_2740A6D24(&qword_28093B3F0, &qword_28093B3B0, &qword_2741D7DB8, MEMORY[0x277CDE5A0]);
    v67 = v87;
    sub_2741C7B8C();
    sub_2741A8D70();
    type metadata accessor for NetworksListModel(0);
    sub_2741B096C();
    v68 = v84;
    v69 = v89;
    sub_2741C770C();

    (*(v88 + 8))(v67, v69);
    v58 = v91;
    v57 = v92;
    v56 = v97;
    (*(v91 + 32))(v97, v68, v92);
    v55 = 0;
  }

  (*(v58 + 56))(v56, v55, 1, v57);
  v70 = sub_2741A8EB0();
  sub_2740E2984(v70, &v109);

  sub_2740A6D94(v101, &v102, &qword_28093B400, &qword_2741D7DD8);
  v71 = v96;
  sub_2740A6D94(v49, v96, &qword_28093B398, &qword_2741D7D00);
  v72 = v93;
  sub_2740A6D94(v56, v93, &qword_28093B388, &qword_2741D7CF0);
  v73 = v109;
  LODWORD(v95) = v110;
  v74 = *(&v110 + 1);
  LODWORD(v92) = v111;
  v75 = v112;
  v76 = v94;
  sub_2740A6D94(&v102, v94, &qword_28093B400, &qword_2741D7DD8);
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093B408, &unk_2741D7DE0);
  sub_2740A6D94(v71, v76 + v77[12], &qword_28093B398, &qword_2741D7D00);
  sub_2740A6D94(v72, v76 + v77[16], &qword_28093B388, &qword_2741D7CF0);
  v78 = v76 + v77[20];
  *v78 = v73;
  *(v78 + 16) = v95;
  *(v78 + 24) = v74;
  *(v78 + 32) = v92;
  *(v78 + 40) = v75;

  sub_27409D420(v97, &qword_28093B388, &qword_2741D7CF0);
  sub_27409D420(v98, &qword_28093B398, &qword_2741D7D00);
  sub_27409D420(v101, &qword_28093B400, &qword_2741D7DD8);

  sub_27409D420(v72, &qword_28093B388, &qword_2741D7CF0);
  sub_27409D420(v96, &qword_28093B398, &qword_2741D7D00);
  sub_27409D420(&v102, &qword_28093B400, &qword_2741D7DD8);
  v79 = v83;
  sub_2740A6C18(v76, v83, &qword_28093B320, &qword_2741D7C68);
  return (*(v81 + 56))(v79, 0, 1, v82);
}

uint64_t sub_2741AACE4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937E30, &qword_2741CDC20);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = &v13 - v6;
  v8 = sub_2741C80DC();
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  sub_274186A50(a2, v15);
  sub_27409D4E4(a1, v14);
  sub_2741C80AC();
  v9 = sub_2741C809C();
  v10 = swift_allocObject();
  v11 = MEMORY[0x277D85700];
  v10[2] = v9;
  v10[3] = v11;
  memcpy(v10 + 4, v15, 0x130uLL);
  sub_27409D118(v14, (v10 + 42));
  sub_2741A771C(0, 0, v7, &unk_2741D7E90, v10);
}

uint64_t sub_2741AAE48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = sub_2741C80AC();
  v5[3] = sub_2741C809C();
  v7 = swift_task_alloc();
  v5[4] = v7;
  *v7 = v5;
  v7[1] = sub_2741AAF04;

  return sub_2741AB128(a5);
}

uint64_t sub_2741AAF04()
{
  *(*v1 + 40) = v0;

  v3 = sub_2741C805C();
  if (v0)
  {
    v4 = sub_2741AB0C4;
  }

  else
  {
    v4 = sub_2741AB060;
  }

  return MEMORY[0x2822009F8](v4, v3, v2);
}

uint64_t sub_2741AB060()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2741AB0C4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2741AB128(uint64_t a1)
{
  v2[48] = a1;
  v2[49] = v1;
  v4 = sub_2741C6AFC();
  v2[50] = v4;
  v2[51] = *(v4 - 8);
  v2[52] = swift_task_alloc();
  v2[53] = sub_2741C80AC();
  v2[54] = sub_2741C809C();
  v5 = swift_task_alloc();
  v2[55] = v5;
  *v5 = v2;
  v5[1] = sub_2741AB24C;

  return sub_2741AD2B8((v2 + 15), a1);
}

uint64_t sub_2741AB24C()
{
  v2 = *v1;
  *(*v1 + 448) = v0;

  v3 = sub_2741C805C();
  if (v0)
  {
    v5 = sub_2741ABC3C;
  }

  else
  {
    *(v2 + 456) = v3;
    *(v2 + 464) = v4;
    v5 = sub_2741AB3B0;
  }

  return MEMORY[0x2822009F8](v5, v3, v4);
}

uint64_t sub_2741AB3B0()
{
  if (qword_280937BD0 != -1)
  {
    swift_once();
  }

  sub_2741B8FB8(8);

  sub_2741C856C();

  v1 = v0[18];
  v2 = v0[19];
  __swift_project_boxed_opaque_existential_1(v0 + 15, v1);
  v3 = (*(v2 + 8))(v1, v2);
  MEMORY[0x2743E5FB0](v3);

  if (qword_280937360 != -1)
  {
    swift_once();
  }

  v5 = v0[51];
  v4 = v0[52];
  v6 = v0[50];
  v7 = __swift_project_value_buffer(v6, qword_280945DD8);
  v0[59] = v7;
  v8 = *(v5 + 16);
  v0[60] = v8;
  v0[61] = (v5 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v8(v4, v7, v6);
  MEMORY[0x2743E5FB0](0x434F535341, 0xE500000000000000);
  MEMORY[0x2743E5FB0](42, 0xE100000000000000);
  MEMORY[0x2743E5FB0](93, 0xE100000000000000);
  sub_2740CA9CC(91, 0xE100000000000000, 0xD000000000000015, 0x80000002741E3950);

  v9 = *(v5 + 8);
  v0[62] = v9;
  v0[63] = (v5 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v9(v4, v6);
  v0[64] = sub_2741A8FF0();
  v10 = v0[18];
  v11 = v0[19];
  __swift_project_boxed_opaque_existential_1(v0 + 15, v10);
  v12 = (*(v11 + 8))(v10, v11);
  v14 = v13;
  v0[65] = v13;
  v15 = v0[18];
  v16 = v0[19];
  __swift_project_boxed_opaque_existential_1(v0 + 15, v15);
  v17 = (*(v16 + 24))(v15, v16);
  v18 = swift_task_alloc();
  v0[66] = v18;
  *v18 = v0;
  v18[1] = sub_2741AB6C8;

  return sub_27413A830(v12, v14, v17, 0);
}

uint64_t sub_2741AB6C8(uint64_t a1)
{
  v3 = *v2;
  v3[67] = a1;
  v3[68] = v1;

  if (v1)
  {
    v4 = v3[57];
    v5 = v3[58];
    v6 = sub_2741ABE60;
  }

  else
  {

    v4 = v3[57];
    v5 = v3[58];
    v6 = sub_2741AB7F4;
  }

  return MEMORY[0x2822009F8](v6, v4, v5);
}

uint64_t sub_2741AB7F4()
{
  v1 = *(v0 + 536);

  if (v1)
  {
    v2 = *(v0 + 536);
    v3 = *(v0 + 384);
    v4 = *(v0 + 392);
    v5 = type metadata accessor for AssociationCredentials(0);
    swift_allocObject();
    v6 = sub_27410A05C();
    v7 = *(v0 + 144);
    v8 = *(v0 + 152);
    __swift_project_boxed_opaque_existential_1((v0 + 120), v7);
    v9 = (*(v8 + 16))(v7, v8);
    sub_2741084FC(v9, v10);
    v11 = v2;
    sub_27409D85C(v11, v0 + 16);
    *(v0 + 240) = 0u;
    *(v0 + 272) = 0;
    *(v0 + 256) = 0u;
    *(v0 + 304) = v5;
    *(v0 + 312) = &off_288329FD0;
    *(v0 + 280) = v6;

    sub_2741AC858(v0 + 16, v0 + 240, v0 + 280);
    sub_27409D420(v0 + 240, &qword_280939678, &qword_2741D02B0);
    sub_2740ACB2C(v0 + 16);
    sub_27409D420(v0 + 280, &qword_280937FB8, &unk_2741D0410);
    v12 = *(v4 + 56);
    *(v0 + 336) = *(v4 + 48);
    *(v0 + 344) = v12;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093B3A0, &qword_2741D7D30);
    sub_2741C7A3C();
    sub_2740E5664(v3);

    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 120));
LABEL_7:

    v28 = *(v0 + 8);
    goto LABEL_8;
  }

  v13 = *(v0 + 496);
  v14 = *(v0 + 416);
  v15 = *(v0 + 400);
  (*(v0 + 480))(v14, *(v0 + 472), v15);
  sub_2740CA9CC(0x5D434F5353415BLL, 0xE700000000000000, 0xD000000000000016, 0x80000002741DB260);
  v13(v14, v15);
  v16 = *(v0 + 144);
  v17 = *(v0 + 152);
  __swift_project_boxed_opaque_existential_1((v0 + 120), v16);
  v18 = (*(v17 + 8))(v16, v17);
  v20 = v19;
  sub_2740F21F4();
  v21 = swift_allocError();
  *v22 = v18;
  *(v22 + 8) = v20;
  *(v22 + 16) = 0u;
  *(v22 + 32) = 0u;
  *(v22 + 48) = 0;
  swift_willThrow();
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 120));
  *(v0 + 368) = v21;
  v23 = v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937E10, &qword_2741CB370);
  if (swift_dynamicCast())
  {
    v24 = *(v0 + 392);

    v25 = *(v0 + 352);
    v26 = *(v0 + 360);
    *(v0 + 184) = &type metadata for HotspotError;
    *(v0 + 192) = sub_2741B134C();
    *(v0 + 160) = v25;
    *(v0 + 168) = v26;
    sub_2740A6D94(v0 + 160, v0 + 200, &qword_280937E78, &qword_2741D81E0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937F28, &unk_2741CB660);
    sub_2741C7A4C();
    sub_27409D420(v0 + 160, &qword_280937E78, &qword_2741D81E0);
    sub_2740CB460(0xD000000000000016, 0x80000002741E3770);
    v27 = *(v24 + 72);
    *(v0 + 320) = *(v24 + 64);
    *(v0 + 328) = v27;
    *(v0 + 113) = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937F20, &qword_2741CCFB0);
    sub_2741C7A4C();
    sub_2741A9130();
    if (qword_280937BD0 != -1)
    {
      swift_once();
    }

    sub_2741B8FB8(32);

    goto LABEL_7;
  }

  v28 = *(v0 + 8);
LABEL_8:

  return v28();
}

uint64_t sub_2741ABC3C()
{

  v1 = *(v0 + 448);
  *(v0 + 368) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937E10, &qword_2741CB370);
  if (swift_dynamicCast())
  {
    v3 = *(v0 + 392);

    v4 = *(v0 + 352);
    v5 = *(v0 + 360);
    *(v0 + 184) = &type metadata for HotspotError;
    *(v0 + 192) = sub_2741B134C();
    *(v0 + 160) = v4;
    *(v0 + 168) = v5;
    sub_2740A6D94(v0 + 160, v0 + 200, &qword_280937E78, &qword_2741D81E0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937F28, &unk_2741CB660);
    sub_2741C7A4C();
    sub_27409D420(v0 + 160, &qword_280937E78, &qword_2741D81E0);
    sub_2740CB460(0xD000000000000016, 0x80000002741E3770);
    v6 = *(v3 + 64);
    v7 = *(v3 + 72);
    *(v0 + 113) = 1;
    *(v0 + 320) = v6;
    *(v0 + 328) = v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937F20, &qword_2741CCFB0);
    sub_2741C7A4C();
    sub_2741A9130();
    if (qword_280937BD0 != -1)
    {
      swift_once();
    }

    sub_2741B8FB8(32);

    v8 = *(v0 + 8);
  }

  else
  {

    v8 = *(v0 + 8);
  }

  return v8();
}

uint64_t sub_2741ABE60()
{

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 120));
  v1 = *(v0 + 544);
  *(v0 + 368) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937E10, &qword_2741CB370);
  if (swift_dynamicCast())
  {
    v3 = *(v0 + 392);

    v4 = *(v0 + 352);
    v5 = *(v0 + 360);
    *(v0 + 184) = &type metadata for HotspotError;
    *(v0 + 192) = sub_2741B134C();
    *(v0 + 160) = v4;
    *(v0 + 168) = v5;
    sub_2740A6D94(v0 + 160, v0 + 200, &qword_280937E78, &qword_2741D81E0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937F28, &unk_2741CB660);
    sub_2741C7A4C();
    sub_27409D420(v0 + 160, &qword_280937E78, &qword_2741D81E0);
    sub_2740CB460(0xD000000000000016, 0x80000002741E3770);
    v6 = *(v3 + 64);
    v7 = *(v3 + 72);
    *(v0 + 113) = 1;
    *(v0 + 320) = v6;
    *(v0 + 328) = v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937F20, &qword_2741CCFB0);
    sub_2741C7A4C();
    sub_2741A9130();
    if (qword_280937BD0 != -1)
    {
      swift_once();
    }

    sub_2741B8FB8(32);

    v8 = *(v0 + 8);
  }

  else
  {

    v8 = *(v0 + 8);
  }

  return v8();
}

uint64_t sub_2741AC0A4@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v25 = a1;
  v22 = sub_2741C743C();
  v3 = *(v22 - 8);
  MEMORY[0x28223BE20](v22, v4);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093B448, &qword_2741D7E60);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v9);
  v11 = &v22 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093B450, &qword_2741D7E68);
  v23 = *(v12 - 8);
  v24 = v12;
  MEMORY[0x28223BE20](v12, v13);
  v15 = &v22 - v14;
  v26 = v2;
  sub_2741AEAB8(v29);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093B458, &qword_2741D7E70);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093B460, &qword_2741D7E78);
  sub_2741B0D34();
  sub_2741B0DB0();
  sub_2741C7B7C();
  sub_2741C742C();
  v16 = sub_2741B0EB0();
  sub_2741C77DC();
  (*(v3 + 8))(v6, v22);
  (*(v8 + 8))(v11, v7);
  v17 = sub_2741A8D70();
  swift_getKeyPath();
  v29[0] = v17;
  sub_2741B0924(&qword_280939880, type metadata accessor for NetworksListModel, &unk_2741D44C8);
  sub_2741C6A0C();

  swift_beginAccess();
  v18 = *(v17 + 112);

  v19 = *(v18 + 16);

  if (v19 >= 2)
  {
    if (qword_280937678 == -1)
    {
      goto LABEL_5;
    }

    goto LABEL_6;
  }

  if (qword_280937688 != -1)
  {
LABEL_6:
    swift_once();
  }

LABEL_5:
  sub_2741C7EDC();
  v27 = v7;
  v28 = v16;
  swift_getOpaqueTypeConformance2();
  v20 = v24;
  sub_2741C780C();

  return (*(v23 + 8))(v15, v20);
}

uint64_t sub_2741AC4D4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937E30, &qword_2741CDC20);
  MEMORY[0x28223BE20](v0 - 8, v1);
  v3 = &v8 - v2;
  sub_2740CB460(0xD000000000000034, 0x80000002741E3870);
  v4 = sub_2741A8D70();
  v5 = sub_2741C80DC();
  (*(*(v5 - 8) + 56))(v3, 1, 1, v5);
  v6 = swift_allocObject();
  v6[2] = 0;
  v6[3] = 0;
  v6[4] = v4;
  sub_2740CE980(0, 0, v3, &unk_2741D4820, v6);
}

uint64_t sub_2741AC5F0()
{
  sub_2740CB460(0xD000000000000036, 0x80000002741E3830);
  sub_2741A8D70();
  sub_2741517B8();
}

uint64_t sub_2741AC64C(uint64_t a1, uint64_t a2)
{
  sub_2740A6D94(a2, &v12, &qword_28093A3D0, &qword_2741D3EA0);
  if (!*(&v13 + 1))
  {
    return sub_27409D420(&v12, &qword_28093A3D0, &qword_2741D3EA0);
  }

  v19[0] = v12;
  v19[1] = v13;
  v20 = v14;
  sub_27409D4E4(v19, v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938578, &unk_2741D0FF0);
  if (swift_dynamicCast())
  {
    v16 = v9;
    v17 = v10;
    v18 = v11;
    v12 = v5;
    v13 = v6;
    v14 = v7;
    v15 = v8;
    sub_2740ACAC8(&v12, &v5);
    sub_2740A6D94(&v5, v3, &qword_280938340, &qword_2741D1660);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093B350, &unk_2741D7CB0);
    sub_2741C7A4C();
    sub_27409D420(&v5, &qword_280938340, &qword_2741D1660);
    *&v7 = 0;
    v5 = 0u;
    v6 = 0u;
    v4 = 0;
    memset(v3, 0, sizeof(v3));
    sub_2741AC858(&v12, &v5, v3);
    sub_27409D420(v3, &qword_280937FB8, &unk_2741D0410);
    sub_27409D420(&v5, &qword_280939678, &qword_2741D02B0);
    sub_2740ACB2C(&v12);
  }

  else
  {
    v11 = 0;
    v9 = 0u;
    v10 = 0u;
    v7 = 0u;
    v8 = 0u;
    v5 = 0u;
    v6 = 0u;
    sub_27409D420(&v5, &qword_280938340, &qword_2741D1660);
    sub_2740CB218(0xD000000000000038, 0x80000002741E37F0, 2036625250, 0xE400000000000000);
  }

  return sub_274138710(v19);
}

uint64_t sub_2741AC858(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937E30, &qword_2741CDC20);
  MEMORY[0x28223BE20](v7 - 8, v8);
  v10 = &v22 - v9;
  sub_2740ACAC8(a1, v27);
  sub_2740A6D94(v27, v28, &qword_280938340, &qword_2741D1660);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093B350, &unk_2741D7CB0);
  sub_2741C7A4C();
  sub_27409D420(v27, &qword_280938340, &qword_2741D1660);
  sub_2740A6D94(a2, v27, &qword_280939678, &qword_2741D02B0);
  if (v27[3])
  {
    __swift_project_boxed_opaque_existential_1(v27, v27[3]);

    sub_2740D6900();

    __swift_destroy_boxed_opaque_existential_1Tm(v27);
  }

  else
  {
    sub_27409D420(v27, &qword_280939678, &qword_2741D02B0);
  }

  v11 = sub_2741C80DC();
  (*(*(v11 - 8) + 56))(v10, 1, 1, v11);
  sub_274186A50(v3, v27);
  sub_2740ACAC8(a1, v28);
  sub_2740A6D94(a3, v25, &qword_280937FB8, &unk_2741D0410);
  sub_2740A6D94(a2, v23, &qword_280939678, &qword_2741D02B0);
  sub_2741C80AC();
  v12 = sub_2741C809C();
  v13 = swift_allocObject();
  v14 = MEMORY[0x277D85700];
  *(v13 + 16) = v12;
  *(v13 + 24) = v14;
  memcpy((v13 + 32), v27, 0x130uLL);
  v15 = v28[5];
  *(v13 + 400) = v28[4];
  *(v13 + 416) = v15;
  *(v13 + 432) = v29;
  v16 = v28[1];
  *(v13 + 336) = v28[0];
  *(v13 + 352) = v16;
  v17 = v28[3];
  *(v13 + 368) = v28[2];
  *(v13 + 384) = v17;
  v18 = v25[0];
  v19 = v25[1];
  *(v13 + 472) = v26;
  *(v13 + 440) = v18;
  *(v13 + 456) = v19;
  *(v13 + 512) = v24;
  v20 = v23[1];
  *(v13 + 480) = v23[0];
  *(v13 + 496) = v20;
  sub_2741A771C(0, 0, v10, &unk_2741D7CC8, v13);
}

uint64_t sub_2741ACB20(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937F28, &unk_2741CB660);
  sub_2741C7A3C();
  if (!v9[3])
  {
    return sub_27409D420(v9, &qword_280937E78, &qword_2741D81E0);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937FB0, &qword_2741CB6B0);
  result = swift_dynamicCast();
  if (result)
  {
    sub_2741C856C();
    if (v8 == 3)
    {
      v9[0] = 1;
      v9[1] = 0xE000000000000000;
      MEMORY[0x2743E5FB0](0xD000000000000020, 0x80000002741D8E40);
      MEMORY[0x2743E5FB0]();
      MEMORY[0x2743E5FB0](0xD00000000000001CLL, 0x80000002741D8EB0);
      sub_2741C862C();
      sub_2740CB460(0, 0xE000000000000000);

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937F20, &qword_2741CCFB0);
      sub_2741C7A4C();
      sub_2740A66EC(v2, v3, v4, v5, v6, v7, 3u);
    }

    else
    {
      MEMORY[0x2743E5FB0](0xD000000000000026, 0x80000002741D8E10);
      sub_2741C862C();
      sub_2740CB460(0, 0xE000000000000000);
      sub_2740A66EC(v2, v3, v4, v5, v6, v7, v8);
    }
  }

  return result;
}

uint64_t sub_2741ACDC0(char a1, uint64_t a2)
{
  v4 = sub_2741C6AFC();
  v5 = *(v4 - 8);
  v7 = MEMORY[0x28223BE20](v4, v6);
  v9 = &v23[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  if (a1)
  {
    v10 = v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937F28, &unk_2741CB660);
    sub_2741C7A3C();
    if (*(&v25 + 1))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937FB0, &qword_2741CB6B0);
      if (swift_dynamicCast())
      {
        if (*&v31[0] != 1)
        {
          sub_2740A6040(v31, v40);
          sub_2740A609C(v40, &v36);

          v33 = v37;
          v34 = v38;
          v35 = v39;
          if (*(&v38 + 1))
          {
            sub_2740A609C(v40, v31);
            v11 = *&v31[0];
            sub_27409D420(&v31[1], &qword_280937FB8, &unk_2741D0410);
            v12 = *(&v34 + 1);
            v13 = v35;
            __swift_mutable_project_boxed_opaque_existential_1(&v33, *(&v34 + 1));
            (*(v13 + 56))(v11, v12, v13);
          }

          sub_2740CB460(0xD000000000000035, 0x80000002741D8D00);
          *&v31[0] = 0;
          *(&v31[0] + 1) = 0xE000000000000000;
          sub_2741C856C();

          *&v24 = 0xD000000000000019;
          *(&v24 + 1) = 0x80000002741E3620;
          sub_2740A6D94(&v33, v31, &qword_280937FB8, &unk_2741D0410);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937FB8, &unk_2741D0410);
          v14 = sub_2741C7EBC();
          MEMORY[0x2743E5FB0](v14);

          v15 = v24;
          if (qword_280937360 != -1)
          {
            swift_once();
          }

          v16 = __swift_project_value_buffer(v10, qword_280945DD8);
          (*(v5 + 16))(v9, v16, v10);
          sub_2740CA9CC(0x5D434F5353415BLL, 0xE700000000000000, v15, *(&v15 + 1));

          (*(v5 + 8))(v9, v10);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093B350, &unk_2741D7CB0);
          sub_2741C7A3C();
          if (*(&v24 + 1))
          {
            v31[4] = v28;
            v31[5] = v29;
            v32 = v30;
            v31[0] = v24;
            v31[1] = v25;
            v31[2] = v26;
            v31[3] = v27;
            *&v26 = 0;
            v24 = 0u;
            v25 = 0u;
            sub_2740A6D94(&v33, v23, &qword_280937FB8, &unk_2741D0410);
            sub_2741AC858(v31, &v24, v23);
            sub_27409D420(v23, &qword_280937FB8, &unk_2741D0410);
            sub_27409D420(&v24, &qword_280939678, &qword_2741D02B0);
            sub_2740ACB2C(v31);
          }

          else
          {
            sub_27409D420(&v24, &qword_280938340, &qword_2741D1660);
            sub_2740CB218(0xD000000000000017, 0x80000002741E3640, 2036625250, 0xE400000000000000);
          }

          sub_2740A61EC(v40);
          v17 = &qword_280937FB8;
          v18 = &unk_2741D0410;
          v19 = &v33;
          goto LABEL_14;
        }

LABEL_13:
        v17 = &qword_280937FA8;
        v18 = &unk_2741D03F0;
        v19 = v31;
LABEL_14:
        sub_27409D420(v19, v17, v18);
        goto LABEL_15;
      }
    }

    else
    {
      sub_27409D420(&v24, &qword_280937E78, &qword_2741D81E0);
    }

    *&v31[0] = 1;
    *(v31 + 8) = 0u;
    *(&v31[1] + 8) = 0u;
    *(&v31[2] + 8) = 0u;
    goto LABEL_13;
  }

LABEL_15:
  sub_2740CB460(0xD00000000000001CLL, 0x80000002741E35D0);
  sub_2740CB460(0xD000000000000022, 0x80000002741E35F0);
  v20 = *(a2 + 88);
  LOBYTE(v31[0]) = *(a2 + 80);
  *(&v31[0] + 1) = v20;
  LOBYTE(v24) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937F20, &qword_2741CCFB0);
  sub_2741C7A4C();
  return sub_2741A9214();
}

uint64_t sub_2741AD2B8(uint64_t a1, uint64_t a2)
{
  v3[6] = a2;
  v3[7] = v2;
  v3[5] = a1;
  sub_2741C80AC();
  v3[8] = sub_2741C809C();
  v5 = sub_2741C805C();
  v3[9] = v5;
  v3[10] = v4;

  return MEMORY[0x2822009F8](sub_2741AD354, v5, v4);
}

uint64_t sub_2741AD354()
{
  v1 = v0[7];
  v3 = *(v1 + 48);
  v2 = *(v1 + 56);
  v0[2] = v3;
  v0[3] = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093B3A0, &qword_2741D7D30);
  sub_2741C7A3C();
  v0[11] = v0[4];

  return MEMORY[0x2822009F8](sub_2741AD3EC, 0, 0);
}

uint64_t sub_2741AD3EC()
{
  __swift_project_boxed_opaque_existential_1((v0[11] + 16), *(v0[11] + 40));
  v1 = swift_task_alloc();
  v0[12] = v1;
  *v1 = v0;
  v1[1] = sub_2741AD494;
  v2 = v0[5];
  v3 = v0[6];

  return sub_2741B5B70(v2, v3);
}

uint64_t sub_2741AD494()
{
  *(*v1 + 104) = v0;

  if (v0)
  {
    v2 = sub_2741AD60C;
  }

  else
  {
    v2 = sub_2741AD5A8;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2741AD5A8()
{

  v1 = *(v0 + 72);
  v2 = *(v0 + 80);

  return MEMORY[0x2822009F8](sub_2741165E8, v1, v2);
}

uint64_t sub_2741AD60C()
{

  v1 = *(v0 + 72);
  v2 = *(v0 + 80);

  return MEMORY[0x2822009F8](sub_27411664C, v1, v2);
}

uint64_t sub_2741AD670(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[17] = a6;
  v7[18] = a7;
  v7[15] = a4;
  v7[16] = a5;
  v7[19] = sub_2741C80AC();
  v7[20] = sub_2741C809C();
  v9 = sub_2741C805C();
  v7[21] = v9;
  v7[22] = v8;

  return MEMORY[0x2822009F8](sub_2741AD710, v9, v8);
}

uint64_t sub_2741AD710()
{
  v0[23] = sub_2741A8FF0();
  v1 = swift_task_alloc();
  v0[24] = v1;
  *v1 = v0;
  v1[1] = sub_2741AD7C0;
  v3 = v0[16];
  v2 = v0[17];

  return sub_274139F44(v3, 0, 0, 1, v2);
}

uint64_t sub_2741AD7C0()
{
  v2 = *v1;
  *(*v1 + 200) = v0;

  if (v0)
  {
    v3 = *(v2 + 168);
    v4 = *(v2 + 176);
    v5 = sub_2741ADC5C;
  }

  else
  {

    v5 = sub_2741AD8E4;
    v3 = 0;
    v4 = 0;
  }

  return MEMORY[0x2822009F8](v5, v3, v4);
}

uint64_t sub_2741AD8E4(uint64_t a1)
{
  *(v1 + 208) = sub_2741C809C();
  v3 = sub_2741C805C();

  return MEMORY[0x2822009F8](sub_2741AD970, v3, v2);
}

uint64_t sub_2741AD970()
{
  v1 = *(v0 + 120);

  sub_2740CB460(0xD00000000000001FLL, 0x80000002741E3660);
  v2 = *(v1 + 296);
  *(v0 + 96) = *(v1 + 288);
  *(v0 + 104) = v2;
  *(v0 + 224) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937F20, &qword_2741CCFB0);
  sub_2741C7A4C();
  sub_2741A93DC();
  v3 = *(v0 + 168);
  v4 = *(v0 + 176);

  return MEMORY[0x2822009F8](sub_2741ADA40, v3, v4);
}

uint64_t sub_2741ADA40()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2741ADAA4(uint64_t a1)
{
  *(v1 + 216) = sub_2741C809C();
  v3 = sub_2741C805C();

  return MEMORY[0x2822009F8](sub_2741ADB30, v3, v2);
}

uint64_t sub_2741ADB30()
{
  v1 = v0[17];
  v2 = v0[18];
  v3 = v0[15];

  sub_2741ADD88(v2, v0 + 7, v1, v3);
  v4 = v0[21];
  v5 = v0[22];

  return MEMORY[0x2822009F8](sub_2741ADBE8, v4, v5);
}

uint64_t sub_2741ADBE8()
{

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 56));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2741ADC5C()
{
  v1 = *(v0 + 200);

  *(v0 + 112) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937E10, &qword_2741CB370);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937FB0, &qword_2741CB6B0);
  if (swift_dynamicCast())
  {

    sub_27409D118((v0 + 16), v0 + 56);

    return MEMORY[0x2822009F8](sub_2741ADAA4, 0, 0);
  }

  else
  {

    v3 = *(v0 + 8);

    return v3();
  }
}

void sub_2741ADD88(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v52 = a4;
  v56 = a3;
  v6 = sub_2741C6AFC();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = &v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2740A6D94(a1, &v61, &qword_280939678, &qword_2741D02B0);
  if (v64)
  {
    __swift_project_boxed_opaque_existential_1(&v61, v64);

    sub_2740D6A88();

    __swift_destroy_boxed_opaque_existential_1Tm(&v61);
  }

  else
  {
    sub_27409D420(&v61, &qword_280939678, &qword_2741D02B0);
  }

  v61 = 0;
  v62 = 0xE000000000000000;
  sub_2741C856C();
  MEMORY[0x2743E5FB0](0xD000000000000013, 0x80000002741E36A0);
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937FB0, &qword_2741CB6B0);
  sub_2741C862C();
  MEMORY[0x2743E5FB0](39, 0xE100000000000000);
  v55 = a2;
  v11 = v61;
  v12 = v62;
  if (qword_280937360 != -1)
  {
    swift_once();
  }

  v13 = __swift_project_value_buffer(v6, qword_280945DD8);
  v14 = *(v7 + 16);
  v14(v10, v13, v6);
  sub_2740CA9CC(0x5D434F5353415BLL, 0xE700000000000000, v11, v12);

  v15 = *(v7 + 8);
  v15(v10, v6);
  v61 = 0;
  v62 = 0xE000000000000000;
  sub_2741C856C();

  strcpy(v57, "credentials = ");
  v57[15] = -18;
  sub_2740A6D94(v56, &v61, &qword_280937FB8, &unk_2741D0410);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937FB8, &unk_2741D0410);
  v16 = sub_2741C7EBC();
  MEMORY[0x2743E5FB0](v16);

  v17 = *v57;
  v18 = *&v57[8];
  v56 = v13;
  v53 = v14;
  v14(v10, v13, v6);
  sub_2740CA9CC(0x5D434F5353415BLL, 0xE700000000000000, v17, v18);

  v51 = v15;
  v15(v10, v6);
  v19 = v55;
  sub_27409D4E4(v55, v57);
  if (swift_dynamicCast())
  {
    v20 = v61;
    v48 = v62;
    v49 = v63;
    v50 = v64;
    v54 = v65;
    v55 = v66;
    v21 = v67;
    v22 = (v67 - 1);
    v53(v10, v56, v6);
    if (v22 > 1)
    {
      sub_2740CA9CC(0x5D434F5353415BLL, 0xE700000000000000, 0xD00000000000001FLL, 0x80000002741E3750);
      v51(v10, v6);
      v64 = &type metadata for WiFiAssociationError;
      v65 = sub_2740A6654();
      v35 = swift_allocObject();
      v61 = v35;
      v36 = v20;
      v37 = v48;
      *(v35 + 16) = v20;
      *(v35 + 24) = v37;
      v38 = v49;
      v39 = v50;
      *(v35 + 32) = v49;
      *(v35 + 40) = v39;
      v40 = v54;
      v41 = v55;
      *(v35 + 48) = v54;
      *(v35 + 56) = v41;
      *(v35 + 64) = v21;
      sub_2740A6D94(&v61, v57, &qword_280937E78, &qword_2741D81E0);
      sub_2740A6800(v36, v37, v38, v39, v40, v41, v21);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937F28, &unk_2741CB660);
      v42 = v52;
      sub_2741C7A4C();
      sub_27409D420(&v61, &qword_280937E78, &qword_2741D81E0);
      sub_2740CB460(0xD000000000000016, 0x80000002741E3770);
      v43 = *(v42 + 72);
      LOBYTE(v61) = *(v42 + 64);
      v62 = v43;
      v57[0] = 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937F20, &qword_2741CCFB0);
      sub_2741C7A4C();
      sub_2741A9130();
      v24 = v36;
      v25 = v37;
      v26 = v38;
      v27 = v39;
      v28 = v40;
      v29 = v41;
    }

    else
    {
      sub_2740CA9CC(0x5D434F5353415BLL, 0xE700000000000000, 0xD000000000000016, 0x80000002741E3710);
      v51(v10, v6);
      sub_2740CB460(0xD00000000000001ELL, 0x80000002741E3730);
      v23 = *(v52 + 296);
      LOBYTE(v61) = *(v52 + 288);
      v62 = v23;
      v57[0] = 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937F20, &qword_2741CCFB0);
      sub_2741C7A4C();
      sub_2741A93DC();
      v24 = v20;
      v25 = v48;
      v26 = v49;
      v27 = v50;
      v28 = v54;
      v29 = v55;
    }

    sub_2740A66EC(v24, v25, v26, v27, v28, v29, v21);
  }

  else
  {
    v30 = v6;
    v31 = v56;
    v32 = v53;
    sub_27409D4E4(v19, v60);
    if (swift_dynamicCast())
    {
      sub_2740A6040(v57, &v61);
      v33 = sub_274110040();
      v32(v10, v31, v30);
      if (v33)
      {
        sub_2740CA9CC(0x5D434F5353415BLL, 0xE700000000000000, 0xD000000000000016, 0x80000002741E3710);
        v51(v10, v30);
        sub_2740CB460(0xD00000000000001ELL, 0x80000002741E3730);
        v34 = *(v52 + 296);
        v57[0] = *(v52 + 288);
        *&v57[8] = v34;
        v60[0] = 1;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937F20, &qword_2741CCFB0);
        sub_2741C7A4C();
        sub_2741A93DC();
      }

      else
      {
        sub_2740CA9CC(0x5D434F5353415BLL, 0xE700000000000000, 0xD00000000000001FLL, 0x80000002741E36C0);
        v51(v10, v30);
        *&v58 = &type metadata for WiFiEnterpriseAssociationError;
        *(&v58 + 1) = sub_2740A65B8();
        *v57 = swift_allocObject();
        sub_2740A609C(&v61, *v57 + 16);
        sub_2740A6D94(v57, v60, &qword_280937E78, &qword_2741D81E0);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937F28, &unk_2741CB660);
        v44 = v52;
        sub_2741C7A4C();
        sub_27409D420(v57, &qword_280937E78, &qword_2741D81E0);
        sub_2740CB460(0xD00000000000001FLL, 0x80000002741E3660);
        v45 = *(v44 + 296);
        v57[0] = *(v44 + 288);
        *&v57[8] = v45;
        v60[0] = 0;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937F20, &qword_2741CCFB0);
        sub_2741C7A4C();
        sub_2741A93DC();
        sub_2740CB460(0xD000000000000021, 0x80000002741E36E0);
        v46 = *(v44 + 88);
        v57[0] = *(v44 + 80);
        *&v57[8] = v46;
        v60[0] = 1;
        sub_2741C7A4C();
        sub_2741A9214();
      }

      sub_2740A61EC(&v61);
    }

    else
    {
      *v57 = 1;
      *&v57[8] = 0u;
      v58 = 0u;
      v59 = 0u;
      sub_27409D420(v57, &qword_280937FA8, &unk_2741D03F0);
    }
  }
}

uint64_t sub_2741AE73C(uint64_t a1)
{
  v2 = sub_2741A8D70();
  swift_getKeyPath();
  __src[0] = v2;
  v3 = sub_2741B0924(&qword_280939880, type metadata accessor for NetworksListModel, &unk_2741D44C8);
  sub_2741C6A0C();

  swift_beginAccess();
  v4 = *(v2 + 112);

  __src[38] = v4;
  swift_getKeyPath();
  sub_274186A50(a1, __src);
  v5 = swift_allocObject();
  memcpy((v5 + 16), __src, 0x130uLL);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093B428, &qword_2741D7E50);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093B480, &qword_2741D7E80);
  sub_2740A6D24(&qword_28093B430, &qword_28093B428, &qword_2741D7E50, MEMORY[0x277D83980]);
  v6 = type metadata accessor for NetworksListModel(255);
  v7 = sub_2741B0C98();
  __src[0] = &type metadata for NetworkListRow;
  __src[1] = v6;
  __src[2] = v7;
  __src[3] = v3;
  swift_getOpaqueTypeConformance2();
  return sub_2741C7B5C();
}

uint64_t sub_2741AE958(uint64_t a1, uint64_t a2)
{
  sub_2740ACAC8(a1, v15);
  sub_274186A50(a2, __src);
  sub_2740ACAC8(a1, v10);
  v4 = swift_allocObject();
  memcpy((v4 + 16), __src, 0x130uLL);
  v5 = v10[5];
  *(v4 + 384) = v10[4];
  *(v4 + 400) = v5;
  *(v4 + 416) = v11;
  v6 = v10[1];
  *(v4 + 320) = v10[0];
  *(v4 + 336) = v6;
  v7 = v10[3];
  *(v4 + 352) = v10[2];
  *(v4 + 368) = v7;
  type metadata accessor for NetworksListModel(0);
  sub_2741B0924(&qword_280939880, type metadata accessor for NetworksListModel, &unk_2741D44C8);
  v13 = sub_2741C6CEC();
  v14 = v8 & 1;
  v15[13] = sub_2741B10E0;
  v15[14] = v4;
  sub_2741A8D70();
  sub_2741B0C98();
  sub_2741C770C();

  return sub_2741B1114(&v13);
}

double sub_2741AEAB8@<D0>(uint64_t a1@<X8>)
{
  v2 = sub_2741A8D70();
  swift_getKeyPath();
  sub_2741B0924(&qword_280939880, type metadata accessor for NetworksListModel, &unk_2741D44C8);
  sub_2741C6A0C();

  swift_beginAccess();
  v3 = *(v2 + 112);

  v4 = *(v3 + 16);

  if (v4 >= 2)
  {
    if (qword_280937678 == -1)
    {
      goto LABEL_5;
    }

    goto LABEL_6;
  }

  if (qword_280937688 != -1)
  {
LABEL_6:
    swift_once();
  }

LABEL_5:
  sub_2740A6A74();

  v5 = sub_2741C76AC();
  v7 = v6;
  v9 = v8;
  *&v12 = sub_2741C7EDC();
  *(&v12 + 1) = v10;
  sub_2741C765C();
  sub_2740A6AC8(v5, v7, v9 & 1);

  sub_2741C72CC();
  result = *&v12;
  *a1 = v12;
  *(a1 + 16) = v13;
  *(a1 + 32) = v14;
  return result;
}

uint64_t sub_2741AEDC0(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093B410, &qword_2741D7DF8);
  sub_2740A6D24(&qword_28093B418, &qword_28093B410, &qword_2741D7DF8, MEMORY[0x277CE14C0]);
  return sub_2741C762C();
}

uint64_t sub_2741AEE64@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v23 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093B420, &qword_2741D7E00);
  v4 = *(v3 - 8);
  v6 = MEMORY[0x28223BE20](v3, v5);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v9);
  v11 = &v21 - v10;
  v22 = a1;
  v12 = sub_2741A8D70();
  swift_getKeyPath();
  v24[0] = v12;
  sub_2741B0924(&qword_280939880, type metadata accessor for NetworksListModel, &unk_2741D44C8);
  sub_2741C6A0C();

  swift_beginAccess();
  v13 = *(v12 + 120);

  v24[38] = v13;
  swift_getKeyPath();
  sub_274186A50(a1, v24);
  v14 = swift_allocObject();
  memcpy((v14 + 16), v24, 0x130uLL);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093B428, &qword_2741D7E50);
  sub_2740A6D24(&qword_28093B430, &qword_28093B428, &qword_2741D7E50, MEMORY[0x277D83980]);
  sub_2741B0C98();
  sub_2741C7B5C();
  sub_274186A50(v22, v24);
  v15 = swift_allocObject();
  memcpy((v15 + 16), v24, 0x130uLL);
  v16 = *(v4 + 16);
  v16(v8, v11, v3);
  v17 = v23;
  v16(v23, v8, v3);
  v18 = &v17[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093B440, &qword_2741D7E58) + 48)];
  *v18 = sub_2741B0CEC;
  v18[1] = v15;
  v19 = *(v4 + 8);

  v19(v11, v3);

  return (v19)(v8, v3);
}

uint64_t sub_2741AF1B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_2740ACAC8(a1, a3 + 16);
  sub_274186A50(a2, __src);
  sub_2740ACAC8(a1, v12);
  v6 = swift_allocObject();
  memcpy((v6 + 16), __src, 0x130uLL);
  v7 = v12[5];
  *(v6 + 384) = v12[4];
  *(v6 + 400) = v7;
  *(v6 + 416) = v13;
  v8 = v12[1];
  *(v6 + 320) = v12[0];
  *(v6 + 336) = v8;
  v9 = v12[3];
  *(v6 + 352) = v12[2];
  *(v6 + 368) = v9;
  type metadata accessor for NetworksListModel(0);
  sub_2741B0924(&qword_280939880, type metadata accessor for NetworksListModel, &unk_2741D44C8);
  result = sub_2741C6CEC();
  *a3 = result;
  *(a3 + 8) = v11 & 1;
  *(a3 + 120) = sub_2741B0CF8;
  *(a3 + 128) = v6;
  return result;
}

uint64_t sub_2741AF2D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = 0;
  memset(v6, 0, sizeof(v6));
  v5 = 0;
  memset(v4, 0, sizeof(v4));
  sub_2741AC858(a2, v6, v4);
  sub_27409D420(v4, &qword_280937FB8, &unk_2741D0410);
  sub_27409D420(v6, &qword_280939678, &qword_2741D02B0);
  sub_2741C7C5C();
  sub_2741C6DCC();
}

uint64_t sub_2741AF390(uint64_t a1)
{
  sub_2740CB460(0xD000000000000016, 0x80000002741E3900);
  sub_2740CB460(0xD000000000000022, 0x80000002741E3920);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937F20, &qword_2741CCFB0);
  sub_2741C7A4C();
  return sub_2741A92F8();
}

uint64_t sub_2741AF438@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a2;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093B3B8, &qword_2741D7DC0);
  v25 = *(v23 - 8);
  MEMORY[0x28223BE20](v23, v3);
  v26 = &v17 - v4;
  v5 = sub_2741C70EC();
  sub_2741AF81C(v27);
  v20 = v27[1];
  v21 = v27[0];
  v18 = LOBYTE(v27[2]);
  v22 = v27[4];
  v41 = 1;
  v40 = v27[2];
  v39 = v27[5];
  v30 = v5;
  v31 = 0;
  v32 = 1;
  v33 = v27[0];
  v34 = v27[1];
  v35 = v27[2];
  v36 = v27[3];
  v37 = v27[4];
  v38 = v27[5];
  v6 = *(a1 + 280);
  v28 = *(a1 + 272);
  v29 = v6;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937F20, &qword_2741CCFB0);
  sub_2741C7A5C();
  v17 = LOBYTE(v27[2]);
  sub_274186A50(a1, v27);
  v7 = swift_allocObject();
  memcpy((v7 + 16), v27, 0x130uLL);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093B3C8, &qword_2741D7DD0);
  v9 = type metadata accessor for OtherNetworkSheet(0);
  v10 = sub_2740A6D24(&qword_28093B3D0, &qword_28093B3C8, &qword_2741D7DD0, MEMORY[0x277CE1138]);
  v11 = sub_2741B0924(&qword_28093B3D8, type metadata accessor for OtherNetworkSheet, &unk_2741CB5E0);
  sub_2741C788C();

  sub_2740A6AC8(v21, v20, v18);

  v12 = *(a1 + 296);
  LOBYTE(v30) = *(a1 + 288);
  v31 = v12;
  sub_2741C7A5C();
  sub_274186A50(a1, v27);
  v13 = swift_allocObject();
  memcpy((v13 + 16), v27, 0x130uLL);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093B3C0, &qword_2741D7DC8);
  v27[0] = v8;
  v27[1] = v9;
  v27[2] = v10;
  v27[3] = v11;
  swift_getOpaqueTypeConformance2();
  sub_2741B0870();
  v14 = v23;
  v15 = v26;
  sub_2741C788C();

  return (*(v25 + 8))(v15, v14);
}

uint64_t sub_2741AF81C@<X0>(uint64_t a1@<X8>)
{
  if (qword_2809373F0 != -1)
  {
    swift_once();
  }

  sub_2740A6A74();

  v2 = sub_2741C76AC();
  v4 = v3;
  v6 = v5;
  sub_2741C7EDC();
  v7 = sub_2741C765C();
  v9 = v8;
  v11 = v10;
  v13 = v12;
  sub_2740A6AC8(v2, v4, v6 & 1);

  type metadata accessor for NetworksListModel(0);
  sub_2741B0924(&qword_280939880, type metadata accessor for NetworksListModel, &unk_2741D44C8);
  v14 = sub_2741C6CEC();
  *a1 = v7;
  *(a1 + 8) = v9;
  *(a1 + 16) = v11 & 1;
  *(a1 + 24) = v13;
  *(a1 + 32) = v14;
  *(a1 + 40) = v15 & 1;
  sub_27409861C(v7, v9, v11 & 1);

  sub_2740A6AC8(v7, v9, v11 & 1);
}

uint64_t sub_2741AF9D4(uint64_t a1)
{
  sub_2740CB460(0xD000000000000023, 0x80000002741E38B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937F20, &qword_2741CCFB0);
  sub_2741C7A4C();
  return sub_2741A92F8();
}

uint64_t sub_2741AFA5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for PasswordPromptSheet(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093B350, &unk_2741D7CB0);
  sub_2741C7A3C();
  if (*(&v14[0] + 1))
  {
    v21[4] = v14[4];
    v21[5] = v14[5];
    v22 = v14[6];
    v21[0] = v14[0];
    v21[1] = v14[1];
    v21[2] = v14[2];
    v21[3] = v14[3];
    sub_2740ACAC8(v21, v15);
    sub_274186A50(a1, v14);
    v9 = swift_allocObject();
    memcpy((v9 + 16), v14, 0x130uLL);
    type metadata accessor for PasswordPromptViewState(0);
    v10 = swift_allocObject();
    *(v10 + 16) = 0;
    sub_2741C6A3C();
    v17 = v10;
    sub_2740ACAC8(v15, v18);
    v18[17] = v15[0];
    v18[18] = v15[1];
    v19 = v16;

    v11 = sub_274178454();
    sub_2740ACB2C(v15);
    v20 = v11;
    v18[13] = sub_2741AFD0C;
    v18[14] = 0;
    v18[15] = sub_2741B0B5C;
    v18[16] = v9;
    v15[3] = &type metadata for WiFiCredentialsPromptContext;
    v15[4] = &off_288329F38;
    v15[0] = swift_allocObject();
    sub_2740FAB1C(&v17, v15[0] + 16);
    sub_2740ACAC8(v21, v14);
    sub_274170184(v15, v14, v8);
    sub_2740ACB2C(v21);
    sub_2740FABE8(&v17);
    sub_2741B0BD4(v8, a2);
    return (*(v5 + 56))(a2, 0, 1, v4);
  }

  else
  {
    sub_27409D420(v14, &qword_280938340, &qword_2741D1660);
    return (*(v5 + 56))(a2, 1, 1, v4);
  }
}

uint64_t sub_2741AFD0C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937E30, &qword_2741CDC20);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v5 = v10 - v4;
  sub_2740CB460(0xD00000000000001ELL, 0x80000002741DB730);
  if (qword_280937BD0 != -1)
  {
    swift_once();
  }

  v11 = 0;
  memset(v10, 0, sizeof(v10));

  sub_2741B9F04(0, v10);

  sub_27409D420(v10, &qword_2809395D8, &qword_2741CFF78);
  sub_2740ACAC8(a1, v10);

  sub_2741BA454(v10);

  sub_27409D420(v10, &qword_280938340, &qword_2741D1660);
  if (qword_280937B98 != -1)
  {
    swift_once();
  }

  sub_274160514(1, 1);
  v6 = qword_280946F10;
  v7 = sub_2741C80DC();
  (*(*(v7 - 8) + 56))(v5, 1, 1, v7);
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = v6;

  sub_2740CE980(0, 0, v5, &unk_2741D7DF0, v8);
}

uint64_t sub_2741AFF34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7[3] = &type metadata for WiFiCredentialsPromptContext;
  v7[4] = &off_288329F38;
  v7[0] = swift_allocObject();
  sub_2740FAB1C(a2, v7[0] + 16);
  sub_2741AC858(a1, v7, a3);
  return sub_27409D420(v7, &qword_280939678, &qword_2741D02B0);
}

unint64_t sub_2741AFFDC()
{
  result = qword_28093B300;
  if (!qword_28093B300)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28093B2E0, &qword_2741D7C18);
    sub_2741B0060();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28093B300);
  }

  return result;
}

unint64_t sub_2741B0060()
{
  result = qword_28093B308;
  if (!qword_28093B308)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28093B310, &qword_2741D7C60);
    sub_2740A6D24(&qword_28093B318, &qword_28093B320, &qword_2741D7C68, MEMORY[0x277CE14C0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28093B308);
  }

  return result;
}

unint64_t sub_2741B017C()
{
  result = qword_28093B330;
  if (!qword_28093B330)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28093B2E8, &qword_2741D7C20);
    sub_2741B0208();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28093B330);
  }

  return result;
}

unint64_t sub_2741B0208()
{
  result = qword_28093B338;
  if (!qword_28093B338)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28093B328, &qword_2741D7C70);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28093B2E0, &qword_2741D7C18);
    type metadata accessor for CurrentNetworkModel(255);
    sub_2741AFFDC();
    sub_2741B0924(&qword_280938350, type metadata accessor for CurrentNetworkModel, &unk_2741D1610);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28093B338);
  }

  return result;
}

unint64_t sub_2741B0320()
{
  result = qword_28093B340;
  if (!qword_28093B340)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28093A3D0, &qword_2741D3EA0);
    sub_2741B03A4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28093B340);
  }

  return result;
}

unint64_t sub_2741B03A4()
{
  result = qword_28093B348;
  if (!qword_28093B348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28093B348);
  }

  return result;
}

uint64_t sub_2741B0408()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093B2F8, &qword_2741D7C30);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = *(v2 + 64);
  if (*(v0 + 40))
  {
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  }

  v5 = (v3 + 56) & ~v3;
  v6 = (v4 + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v5, v1);

  return MEMORY[0x2821FE8E8](v0, v6 + 16, v3 | 7);
}

double sub_2741B04F8@<D0>(uint64_t a1@<X8>)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093B2F8, &qword_2741D7C30) - 8);
  v4 = (v1 + ((*(v3 + 64) + ((*(v3 + 80) + 56) & ~*(v3 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8));
  sub_2741A8A88(v1 + 16, *v4, v4[1], v7);
  result = *v7;
  v6 = v7[1];
  *a1 = v7[0];
  *(a1 + 16) = v6;
  *(a1 + 32) = v8;
  return result;
}

uint64_t sub_2741B05C0()
{
  swift_unknownObjectRelease();

  if (v0[19])
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 16);
  }

  if (v0[25])
  {

    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 31);
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 49);
  if (v0[58])
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 55);
  }

  if (v0[63])
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 60);
  }

  return MEMORY[0x2821FE8E8](v0, 520, 7);
}

uint64_t sub_2741B06BC(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_2740A7434;

  return sub_2741AD670(a1, v4, v5, v1 + 32, v1 + 336, v1 + 440, v1 + 480);
}

uint64_t sub_2741B0778()
{

  if (*(v0 + 56))
  {
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 32));
  }

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_2741B07C0()
{
  sub_2740A66EC(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64));

  return MEMORY[0x2821FE8E8](v0, 65, 7);
}

unint64_t sub_2741B0870()
{
  result = qword_28093B3E0;
  if (!qword_28093B3E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28093B3C0, &qword_2741D7DC8);
    sub_2741B0924(&qword_28093B3E8, type metadata accessor for PasswordPromptSheet, &unk_2741D59A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28093B3E0);
  }

  return result;
}

uint64_t sub_2741B0924(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_2741B096C()
{
  result = qword_28093B3F8;
  if (!qword_28093B3F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28093B378, &qword_2741D7CE0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28093B3B8, &qword_2741D7DC0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28093B3C0, &qword_2741D7DC8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28093B3C8, &qword_2741D7DD0);
    type metadata accessor for OtherNetworkSheet(255);
    sub_2740A6D24(&qword_28093B3D0, &qword_28093B3C8, &qword_2741D7DD0, MEMORY[0x277CE1138]);
    sub_2741B0924(&qword_28093B3D8, type metadata accessor for OtherNetworkSheet, &unk_2741CB5E0);
    swift_getOpaqueTypeConformance2();
    sub_2741B0870();
    swift_getOpaqueTypeConformance2();
    sub_2740A6D24(&qword_28093B3F0, &qword_28093B3B0, &qword_2741D7DB8, MEMORY[0x277CDE5A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28093B3F8);
  }

  return result;
}

uint64_t sub_2741B0B64()
{

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 80));

  return MEMORY[0x2821FE8E8](v0, 192, 7);
}

uint64_t sub_2741B0BD4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PasswordPromptSheet(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_2741B0C98()
{
  result = qword_28093B438;
  if (!qword_28093B438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28093B438);
  }

  return result;
}

unint64_t sub_2741B0D34()
{
  result = qword_28093B468;
  if (!qword_28093B468)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28093B458, &qword_2741D7E70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28093B468);
  }

  return result;
}

unint64_t sub_2741B0DB0()
{
  result = qword_28093B470;
  if (!qword_28093B470)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28093B460, &qword_2741D7E78);
    type metadata accessor for NetworksListModel(255);
    sub_2741B0C98();
    sub_2741B0924(&qword_280939880, type metadata accessor for NetworksListModel, &unk_2741D44C8);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28093B470);
  }

  return result;
}

unint64_t sub_2741B0EB0()
{
  result = qword_28093B478;
  if (!qword_28093B478)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28093B448, &qword_2741D7E60);
    sub_2741B0D34();
    sub_2741B0DB0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28093B478);
  }

  return result;
}

uint64_t objectdestroyTm_20()
{

  if (v0[17])
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 14);
  }

  if (v0[23])
  {

    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 29);
  }

  return MEMORY[0x2821FE8E8](v0, 320, 7);
}

uint64_t objectdestroy_105Tm()
{

  if (v0[17])
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 14);
  }

  if (v0[23])
  {

    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 29);
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 47);

  return MEMORY[0x2821FE8E8](v0, 417, 7);
}

uint64_t sub_2741B1180()
{
  v1 = *(v0 + 24);
  sub_2741A8D70();
  sub_2741519A0(v1);
}

uint64_t sub_2741B11CC()
{
  swift_unknownObjectRelease();

  if (v0[19])
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 16);
  }

  if (v0[25])
  {

    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 31);
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 42);

  return MEMORY[0x2821FE8E8](v0, 376, 7);
}

uint64_t sub_2741B1298(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_27409D648;

  return sub_2741AAE48(a1, v4, v5, v1 + 32, v1 + 336);
}

unint64_t sub_2741B134C()
{
  result = qword_28093B488;
  if (!qword_28093B488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28093B488);
  }

  return result;
}

uint64_t sub_2741B13A0()
{
  if (*(v0 + 49))
  {
    v1 = 256;
  }

  else
  {
    v1 = 0;
  }

  return sub_27418FAD8(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), v1 | *(v0 + 48));
}

uint64_t sub_2741B13DC()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28093B2F8, &qword_2741D7C30);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280937F30, &unk_2741D7CA0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28093B2F0, &qword_2741D7C28);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280937F38, &unk_2741CB670);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280937F40, &qword_2741D5B30);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28093B2E8, &qword_2741D7C20);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28093A3D0, &qword_2741D3EA0);
  sub_2741B017C();
  sub_2741B0320();
  swift_getOpaqueTypeConformance2();
  sub_2740A5DB0();
  sub_2740A5EE4();
  swift_getOpaqueTypeConformance2();
  sub_2740A5F60();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_2741B1560()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

unint64_t sub_2741B15B4()
{
  result = qword_28093B4A0;
  if (!qword_28093B4A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28093B498, &qword_2741D7ED0);
    sub_2741B164C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28093B4A0);
  }

  return result;
}

unint64_t sub_2741B164C()
{
  result = qword_28093B4A8;
  if (!qword_28093B4A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28093B4B0, &qword_2741D7ED8);
    sub_2741B16D0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28093B4A8);
  }

  return result;
}

unint64_t sub_2741B16D0()
{
  result = qword_28093B4B8;
  if (!qword_28093B4B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28093B4B8);
  }

  return result;
}

WiFiSettingsKit::NetworkEnterpriseMode_optional __swiftcall NetworkEnterpriseMode.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 3;
  if (rawValue < 3)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

unint64_t sub_2741B17F4()
{
  result = qword_28093B4C0;
  if (!qword_28093B4C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28093B4C0);
  }

  return result;
}

unint64_t sub_2741B1854()
{
  result = qword_28093B4C8;
  if (!qword_28093B4C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280939AC8, &qword_2741D1110);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28093B4C8);
  }

  return result;
}

void sub_2741B199C(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937E30, &qword_2741CDC20);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v6 = &v12[-v5 - 8];
  v7 = *(v1 + 16);
  sub_27409D4E4(a1 + 72, v12);
  swift_unknownObjectRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937E18, &unk_2741D1A40);
  sub_27409D1F4();
  if (swift_dynamicCast())
  {
    v8 = v11;
    [v8 setLastJoinedByUserAt_];
    v9 = sub_2741C80DC();
    (*(*(v9 - 8) + 56))(v6, 1, 1, v9);
    v10 = swift_allocObject();
    v10[2] = 0;
    v10[3] = 0;
    v10[4] = v7;
    v10[5] = v8;
    sub_2740CE980(0, 0, v6, &unk_2741D8088, v10);
  }

  else
  {
    swift_unknownObjectRelease();
  }
}

uint64_t WiFiAssociator.__deallocating_deinit()
{
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_2741B1BB4()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_2741B1BFC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_27409D648;

  return sub_2740F032C(a1, v4, v5, v7, v6);
}

__n128 __swift_memcpy120_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[6];
  *(a1 + 112) = *(a2 + 14);
  *(a1 + 80) = v6;
  *(a1 + 96) = v7;
  *(a1 + 64) = result;
  return result;
}

uint64_t sub_2741B1CE8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 120))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 80);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2741B1D30(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 120) = 1;
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
      *(result + 80) = (a2 - 1);
      return result;
    }

    *(result + 120) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2741B1DB8@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093B498, &qword_2741D7ED0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = &v16[-v6];
  v17 = v1;
  if (qword_2809379B0 != -1)
  {
    swift_once();
  }

  v18 = qword_280946AA8;
  v19 = unk_280946AB0;
  sub_2740A6A74();

  v18 = sub_2741C76AC();
  v19 = v8;
  v20 = v9 & 1;
  v21 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093B4B0, &qword_2741D7ED8);
  sub_2741B2768(&qword_28093B4A8, &qword_28093B4B0, &qword_2741D7ED8, sub_2741B16D0);
  sub_2741C7B7C();
  v11 = *(v1 + 24);
  v22 = *(v1 + 16);
  v23 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937F20, &qword_2741CCFB0);
  sub_2741C7A5C();
  v12 = v18;
  v13 = v19;
  v14 = v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937F28, &unk_2741CB660);
  sub_2741C7A3C();
  sub_2741A652C(v12, v13, v14, &v18, sub_2741B2438, 0, a1);

  sub_2741B2474(&v18);
  return (*(v4 + 8))(v7, v3);
}

uint64_t sub_2741B203C(uint64_t a1)
{
  v2 = *(a1 + 80);
  swift_getKeyPath();
  *&v8[0] = v2;
  sub_2740E5A58();
  sub_2741C6A0C();

  swift_beginAccess();
  v10 = *(v2 + 56);
  swift_getKeyPath();
  sub_2741B253C(a1, v8);
  v3 = swift_allocObject();
  v4 = v8[5];
  *(v3 + 80) = v8[4];
  *(v3 + 96) = v4;
  *(v3 + 112) = v8[6];
  *(v3 + 128) = v9;
  v5 = v8[1];
  *(v3 + 16) = v8[0];
  *(v3 + 32) = v5;
  v6 = v8[3];
  *(v3 + 48) = v8[2];
  *(v3 + 64) = v6;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093B4D0, &qword_2741D8238);
  sub_2740A6D24(&qword_28093B4D8, &qword_28093B4D0, &qword_2741D8238, MEMORY[0x277D83980]);
  sub_2741B16D0();
  return sub_2741C7B5C();
}

uint64_t sub_2741B21D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_27409D4E4(a1, v17);
  v15[0] = *(a2 + 104);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093B4E0, qword_2741D8240);
  sub_2741C7A3C();
  v6 = *&v14[0];
  sub_27409D4E4(a1, v15);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2809385F0, &unk_2741CF560);
  sub_2740BA76C();
  if (swift_dynamicCast())
  {
    v7 = *&v14[0];
  }

  else
  {
    v7 = 0;
  }

  if (*&v14[0])
  {
    if (v7)
    {
      v8 = sub_2741C836C();
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    if (!v7)
    {
      v8 = 1;
      goto LABEL_11;
    }

    v8 = 0;
    v6 = v7;
  }

LABEL_11:
  sub_2741B253C(a2, v15);
  sub_27409D4E4(a1, v14);
  v9 = swift_allocObject();
  v10 = v15[5];
  *(v9 + 80) = v15[4];
  *(v9 + 96) = v10;
  *(v9 + 112) = v15[6];
  *(v9 + 128) = v16;
  v11 = v15[1];
  *(v9 + 16) = v15[0];
  *(v9 + 32) = v11;
  v12 = v15[3];
  *(v9 + 48) = v15[2];
  *(v9 + 64) = v12;
  sub_27409D118(v14, v9 + 136);
  result = sub_27409D118(v17, a3);
  *(a3 + 40) = v8 & 1;
  *(a3 + 48) = sub_2741B2674;
  *(a3 + 56) = v9;
  return result;
}

uint64_t sub_2741B2374(uint64_t a1, uint64_t a2)
{
  sub_27409D4E4(a2, v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2809385F0, &unk_2741CF560);
  sub_2740BA76C();
  swift_dynamicCast();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093B4E0, qword_2741D8240);
  sub_2741C7A4C();
  return (*(a1 + 88))(a2);
}

uint64_t sub_2741B2474(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937E78, &qword_2741D81E0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2741B24E4@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  result = (*(v4 + 16))(v3, v4);
  *a2 = result;
  a2[1] = v6;
  return result;
}

uint64_t sub_2741B2574()
{

  if (*(v0 + 72))
  {
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 48));
  }

  return MEMORY[0x2821FE8E8](v0, 136, 7);
}

uint64_t sub_2741B25F4()
{

  if (*(v0 + 72))
  {
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 48));
  }

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 136));

  return MEMORY[0x2821FE8E8](v0, 176, 7);
}

uint64_t sub_2741B2680()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28093B498, &qword_2741D7ED0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280937F38, &unk_2741CB670);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280937F40, &qword_2741D5B30);
  sub_2741B15B4();
  sub_2741B2768(&qword_280937F60, &qword_280937F38, &unk_2741CB670, sub_2740A5E34);
  sub_2740A5EE4();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_2741B2768(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
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

uint64_t sub_2741B27E4(uint64_t a1)
{
  v2 = type metadata accessor for KnownNetwork(0) - 8;
  v4 = MEMORY[0x28223BE20](v2, v3);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4, v7);
  v10 = &v20 - v9;
  v11 = *(a1 + 16);
  if (!v11)
  {
    return MEMORY[0x277D84F90];
  }

  v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v13 = *(v8 + 72);
  v14 = a1 + v12;
  v15 = MEMORY[0x277D84F90];
  do
  {
    sub_27409CF58(v14, v10);
    if (v10[114])
    {
      sub_27409D050(v10);
    }

    else
    {
      sub_27409D240(v10, v6);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v21 = v15;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_27419897C(0, *(v15 + 16) + 1, 1);
        v15 = v21;
      }

      v18 = *(v15 + 16);
      v17 = *(v15 + 24);
      if (v18 >= v17 >> 1)
      {
        sub_27419897C((v17 > 1), v18 + 1, 1);
        v15 = v21;
      }

      *(v15 + 16) = v18 + 1;
      sub_27409D240(v6, v15 + v12 + v18 * v13);
    }

    v14 += v13;
    --v11;
  }

  while (v11);
  return v15;
}

uint64_t sub_2741B2998(uint64_t a1)
{
  v2 = type metadata accessor for KnownNetwork(0) - 8;
  v4 = MEMORY[0x28223BE20](v2, v3);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4, v7);
  v10 = &v20 - v9;
  v11 = *(a1 + 16);
  if (!v11)
  {
    return MEMORY[0x277D84F90];
  }

  v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v13 = *(v8 + 72);
  v14 = a1 + v12;
  v15 = MEMORY[0x277D84F90];
  do
  {
    sub_27409CF58(v14, v10);
    if (v10[114] == 1)
    {
      sub_27409D240(v10, v6);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v21 = v15;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_27419897C(0, *(v15 + 16) + 1, 1);
        v15 = v21;
      }

      v18 = *(v15 + 16);
      v17 = *(v15 + 24);
      if (v18 >= v17 >> 1)
      {
        sub_27419897C((v17 > 1), v18 + 1, 1);
        v15 = v21;
      }

      *(v15 + 16) = v18 + 1;
      sub_27409D240(v6, v15 + v12 + v18 * v13);
    }

    else
    {
      sub_27409D050(v10);
    }

    v14 += v13;
    --v11;
  }

  while (v11);
  return v15;
}

uint64_t sub_2741B2B4C(uint64_t a1)
{
  v2 = a1 + 56;
  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 56);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  for (i = MEMORY[0x277D84F90]; v5; *(v14 + 80) = v17)
  {
LABEL_10:
    while (1)
    {
      v11 = __clz(__rbit64(v5));
      v5 &= v5 - 1;
      sub_2740ACAC8(*(a1 + 48) + 104 * (v11 | (v8 << 6)), &v20);
      v29 = v22;
      v30 = v23;
      v31 = v24;
      v32 = v25;
      v33 = v26;
      v27 = v20;
      v28 = v21;
      if (BYTE9(v22) == 1)
      {
        break;
      }

      result = sub_2740ACB2C(&v27);
      if (!v5)
      {
        goto LABEL_6;
      }
    }

    v24 = v31;
    v25 = v32;
    v26 = v33;
    v20 = v27;
    v21 = v28;
    v22 = v29;
    v23 = v30;
    result = swift_isUniquelyReferenced_nonNull_native();
    v34 = i;
    if ((result & 1) == 0)
    {
      result = sub_274198AB0(0, *(i + 16) + 1, 1);
      i = v34;
    }

    v13 = *(i + 16);
    v12 = *(i + 24);
    if (v13 >= v12 >> 1)
    {
      result = sub_274198AB0((v12 > 1), v13 + 1, 1);
      i = v34;
    }

    *(i + 16) = v13 + 1;
    v14 = i + 104 * v13;
    v15 = v20;
    v16 = v22;
    *(v14 + 48) = v21;
    *(v14 + 64) = v16;
    *(v14 + 32) = v15;
    v17 = v23;
    v18 = v24;
    v19 = v25;
    *(v14 + 128) = v26;
    *(v14 + 96) = v18;
    *(v14 + 112) = v19;
  }

LABEL_6:
  while (1)
  {
    v10 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v10 >= v6)
    {

      return i;
    }

    v5 = *(v2 + 8 * v10);
    ++v8;
    if (v5)
    {
      v8 = v10;
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2741B2D20(uint64_t a1)
{
  v2 = a1 + 56;
  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 56);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  for (i = MEMORY[0x277D84F90]; v5; *(v14 + 80) = v17)
  {
LABEL_10:
    while (1)
    {
      v11 = __clz(__rbit64(v5));
      v5 &= v5 - 1;
      sub_2740ACAC8(*(a1 + 48) + 104 * (v11 | (v8 << 6)), &v20);
      v29 = v22;
      v30 = v23;
      v31 = v24;
      v32 = v25;
      v33 = v26;
      v27 = v20;
      v28 = v21;
      if ((BYTE9(v22) & 1) == 0)
      {
        break;
      }

      result = sub_2740ACB2C(&v27);
      if (!v5)
      {
        goto LABEL_6;
      }
    }

    v24 = v31;
    v25 = v32;
    v26 = v33;
    v20 = v27;
    v21 = v28;
    v22 = v29;
    v23 = v30;
    result = swift_isUniquelyReferenced_nonNull_native();
    v34 = i;
    if ((result & 1) == 0)
    {
      result = sub_274198AB0(0, *(i + 16) + 1, 1);
      i = v34;
    }

    v13 = *(i + 16);
    v12 = *(i + 24);
    if (v13 >= v12 >> 1)
    {
      result = sub_274198AB0((v12 > 1), v13 + 1, 1);
      i = v34;
    }

    *(i + 16) = v13 + 1;
    v14 = i + 104 * v13;
    v15 = v20;
    v16 = v22;
    *(v14 + 48) = v21;
    *(v14 + 64) = v16;
    *(v14 + 32) = v15;
    v17 = v23;
    v18 = v24;
    v19 = v25;
    *(v14 + 128) = v26;
    *(v14 + 96) = v18;
    *(v14 + 112) = v19;
  }

LABEL_6:
  while (1)
  {
    v10 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v10 >= v6)
    {

      return i;
    }

    v5 = *(v2 + 8 * v10);
    ++v8;
    if (v5)
    {
      v8 = v10;
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2741B2EF0(uint64_t a1)
{
  v2 = sub_2741B4968(sub_2741113C4);
  v3 = *(*v1 + 16);
  if (v3 < v2)
  {
    __break(1u);

    __break(1u);
  }

  else
  {
    sub_2741B4DAC(v2, v3, sub_274177318, sub_2741B4CD8);
    v5 = *v1;

    sub_2741B3160(&v5);

    *v1 = v5;
  }

  return result;
}

void *sub_2741B2FC0(void *result)
{
  v2 = result;
  v3 = *v1;
  v4 = (*v1 + 32);
  v5 = -*(*v1 + 2);
  v6 = -1;
  while (v5 + v6 != -1)
  {
    if (++v6 >= *(v3 + 2))
    {
      __break(1u);
      goto LABEL_17;
    }

    sub_2740ACAC8(v4, v17);
    if (*&v17[0] == *v2 && *(&v17[0] + 1) == v2[1])
    {
      sub_2740ACB2C(v17);
LABEL_11:
      sub_2740ACAC8(v2, v17);
      if (swift_isUniquelyReferenced_nonNull_native())
      {
LABEL_12:
        v10 = *(v3 + 2);
        v9 = *(v3 + 3);
        if (v10 >= v9 >> 1)
        {
          v3 = sub_274177318((v9 > 1), v10 + 1, 1, v3);
        }

        *(v3 + 2) = v10 + 1;
        v11 = &v3[104 * v10];
        v12 = v17[0];
        v13 = v17[2];
        *(v11 + 3) = v17[1];
        *(v11 + 4) = v13;
        *(v11 + 2) = v12;
        v14 = v17[3];
        v15 = v17[4];
        v16 = v17[5];
        v11[128] = v18;
        *(v11 + 6) = v15;
        *(v11 + 7) = v16;
        *(v11 + 5) = v14;
        *&v17[0] = v3;

        sub_2741B3160(v17);

        *v1 = *&v17[0];
        return result;
      }

LABEL_17:
      v3 = sub_274177318(0, *(v3 + 2) + 1, 1, v3);
      goto LABEL_12;
    }

    v4 += 104;
    v8 = sub_2741C86DC();
    result = sub_2740ACB2C(v17);
    if (v8)
    {
      goto LABEL_11;
    }
  }

  return result;
}

uint64_t sub_2741B3160(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_2741B4B5C(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = sub_2741B31CC(v5);
  *a1 = v2;
  return result;
}

uint64_t sub_2741B31CC(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_2741C86BC();
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
        v5 = sub_2741C801C();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = v5 + 32;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_2741B34A4(v7, v8, a1, v4);
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
    return sub_2741B32C4(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_2741B32C4(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = *a4 + 104 * a3;
    v6 = result - a3;
LABEL_6:
    v31 = a3;
    v7 = v6;
    v22 = v5;
    while (1)
    {
      sub_2740ACAC8(v5, &v24);
      v8 = (v5 - 104);
      sub_2740ACAC8(v5 - 104, &v23);
      v9 = sub_2741C7ECC();
      v11 = v10;
      if (v9 == sub_2741C7ECC() && v11 == v12)
      {

        sub_2740ACB2C(&v23);
        result = sub_2740ACB2C(&v24);
LABEL_5:
        a3 = v31 + 1;
        v5 = v22 + 104;
        --v6;
        if (v31 + 1 == a2)
        {
          return result;
        }

        goto LABEL_6;
      }

      v14 = sub_2741C86DC();

      sub_2740ACB2C(&v23);
      result = sub_2740ACB2C(&v24);
      if ((v14 & 1) == 0)
      {
        goto LABEL_5;
      }

      if (!v4)
      {
        break;
      }

      v27 = *(v5 + 48);
      v28 = *(v5 + 64);
      v29 = *(v5 + 80);
      v30 = *(v5 + 96);
      v24 = *v5;
      v25 = *(v5 + 16);
      v26 = *(v5 + 32);
      v15 = *(v5 - 88);
      *v5 = *v8;
      *(v5 + 16) = v15;
      v16 = *(v5 - 72);
      v17 = *(v5 - 56);
      v18 = *(v5 - 40);
      v19 = *(v5 - 24);
      *(v5 + 96) = *(v5 - 8);
      *(v5 + 64) = v18;
      *(v5 + 80) = v19;
      *(v5 + 32) = v16;
      *(v5 + 48) = v17;
      *(v5 - 24) = v29;
      *(v5 - 40) = v28;
      *(v5 - 56) = v27;
      *(v5 - 8) = v30;
      *v8 = v24;
      *(v5 - 88) = v25;
      *(v5 - 72) = v26;
      v5 -= 104;
      if (__CFADD__(v7++, 1))
      {
        goto LABEL_5;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_2741B34A4(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v112 = result;
  v129 = a3;
  v6 = a3[1];
  if (v6 < 1)
  {
    v9 = MEMORY[0x277D84F90];
LABEL_105:
    v8 = *v112;
    if (!*v112)
    {
      goto LABEL_143;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
LABEL_107:
      v128 = v9;
      v103 = *(v9 + 2);
      if (v103 >= 2)
      {
        while (*v129)
        {
          v104 = *&v9[16 * v103];
          v105 = *&v9[16 * v103 + 24];
          sub_2741B3D2C((*v129 + 104 * v104), (*v129 + 104 * *&v9[16 * v103 + 16]), (*v129 + 104 * v105), v8);
          if (v5)
          {
          }

          if (v105 < v104)
          {
            goto LABEL_130;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v9 = sub_2741B412C(v9);
          }

          if (v103 - 2 >= *(v9 + 2))
          {
            goto LABEL_131;
          }

          v106 = &v9[16 * v103];
          *v106 = v104;
          *(v106 + 1) = v105;
          v128 = v9;
          result = sub_2741B40A0(v103 - 1);
          v9 = v128;
          v103 = *(v128 + 2);
          if (v103 <= 1)
          {
          }
        }

        goto LABEL_141;
      }
    }

LABEL_137:
    result = sub_2741B412C(v9);
    v9 = result;
    goto LABEL_107;
  }

  v7 = 0;
  v8 = &v121;
  v9 = MEMORY[0x277D84F90];
  while (1)
  {
    v10 = v7;
    v11 = v7 + 1;
    v116 = v9;
    if (v7 + 1 < v6)
    {
      v114 = v6;
      v110 = v5;
      v12 = *v129;
      v13 = v7 + 1;
      sub_2740ACAC8(*v129 + 104 * v11, &v121);
      sub_2740ACAC8(v12 + 104 * v10, &v120);
      v14 = sub_2741C7ECC();
      v16 = v15;
      if (v14 == sub_2741C7ECC() && v16 == v17)
      {
        v117 = 0;
      }

      else
      {
        v117 = sub_2741C86DC();
      }

      sub_2740ACB2C(&v120);
      result = sub_2740ACB2C(&v121);
      v19 = v10 + 2;
      v108 = v10;
      v20 = 104 * v10;
      v21 = v12 + 104 * v10 + 208;
      v22 = 104 * v10 + 104;
      v23 = v13;
      do
      {
        v25 = v19;
        v26 = v23;
        v27 = v22;
        if (v19 >= v114)
        {
          break;
        }

        sub_2740ACAC8(v21, &v121);
        sub_2740ACAC8(v21 - 104, &v120);
        v28 = sub_2741C7ECC();
        v30 = v29;
        v32 = v28 == sub_2741C7ECC() && v30 == v31;
        v24 = v32 ? 0 : sub_2741C86DC();

        sub_2740ACB2C(&v120);
        result = sub_2740ACB2C(&v121);
        v19 = v25 + 1;
        v21 += 104;
        v23 = v26 + 1;
        v22 = v27 + 104;
        v9 = v116;
      }

      while (((v117 ^ v24) & 1) == 0);
      if (v117)
      {
        v5 = v110;
        if (v25 < v108)
        {
          goto LABEL_134;
        }

        if (v108 >= v25)
        {
          v11 = v25;
          v10 = v108;
          goto LABEL_31;
        }

        v33 = v108;
        do
        {
          if (v33 != v26)
          {
            v35 = *v129;
            if (!*v129)
            {
              goto LABEL_140;
            }

            v36 = v35 + v27;
            v124 = *(v35 + v20 + 48);
            v125 = *(v35 + v20 + 64);
            v126 = *(v35 + v20 + 80);
            v127 = *(v35 + v20 + 96);
            v121 = *(v35 + v20);
            v122 = *(v35 + v20 + 16);
            v123 = *(v35 + v20 + 32);
            result = memmove((v35 + v20), (v35 + v27), 0x68uLL);
            *(v36 + 48) = v124;
            *(v36 + 64) = v125;
            *(v36 + 80) = v126;
            *(v36 + 96) = v127;
            *v36 = v121;
            *(v36 + 16) = v122;
            *(v36 + 32) = v123;
          }

          ++v33;
          v27 -= 104;
          v20 += 104;
        }

        while (v33 < v26--);
      }

      v11 = v25;
      v10 = v108;
      v5 = v110;
    }

LABEL_31:
    v37 = v129[1];
    if (v11 < v37)
    {
      if (__OFSUB__(v11, v10))
      {
        goto LABEL_133;
      }

      if (v11 - v10 < a4)
      {
        break;
      }
    }

LABEL_53:
    if (v11 < v10)
    {
      goto LABEL_132;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_274176EC4(0, *(v9 + 2) + 1, 1, v9);
      v9 = result;
    }

    v57 = *(v9 + 2);
    v56 = *(v9 + 3);
    v58 = v57 + 1;
    if (v57 >= v56 >> 1)
    {
      result = sub_274176EC4((v56 > 1), v57 + 1, 1, v9);
      v9 = result;
    }

    *(v9 + 2) = v58;
    v59 = &v9[16 * v57];
    *(v59 + 4) = v10;
    *(v59 + 5) = v11;
    v119 = v11;
    v60 = *v112;
    if (!*v112)
    {
      goto LABEL_142;
    }

    v61 = v5;
    if (v57)
    {
      while (1)
      {
        v5 = v58 - 1;
        if (v58 >= 4)
        {
          break;
        }

        if (v58 == 3)
        {
          v62 = *(v9 + 4);
          v63 = *(v9 + 5);
          v72 = __OFSUB__(v63, v62);
          v64 = v63 - v62;
          v65 = v72;
LABEL_73:
          if (v65)
          {
            goto LABEL_121;
          }

          v78 = &v9[16 * v58];
          v80 = *v78;
          v79 = *(v78 + 1);
          v81 = __OFSUB__(v79, v80);
          v82 = v79 - v80;
          v83 = v81;
          if (v81)
          {
            goto LABEL_124;
          }

          v84 = &v9[16 * v5 + 32];
          v86 = *v84;
          v85 = *(v84 + 1);
          v72 = __OFSUB__(v85, v86);
          v87 = v85 - v86;
          if (v72)
          {
            goto LABEL_127;
          }

          if (__OFADD__(v82, v87))
          {
            goto LABEL_128;
          }

          if (v82 + v87 >= v64)
          {
            if (v64 < v87)
            {
              v5 = v58 - 2;
            }

            goto LABEL_94;
          }

          goto LABEL_87;
        }

        v88 = &v9[16 * v58];
        v90 = *v88;
        v89 = *(v88 + 1);
        v72 = __OFSUB__(v89, v90);
        v82 = v89 - v90;
        v83 = v72;
LABEL_87:
        if (v83)
        {
          goto LABEL_123;
        }

        v91 = &v9[16 * v5];
        v93 = *(v91 + 4);
        v92 = *(v91 + 5);
        v72 = __OFSUB__(v92, v93);
        v94 = v92 - v93;
        if (v72)
        {
          goto LABEL_126;
        }

        if (v94 < v82)
        {
          goto LABEL_3;
        }

LABEL_94:
        v99 = v5 - 1;
        if (v5 - 1 >= v58)
        {
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
LABEL_135:
          __break(1u);
          goto LABEL_136;
        }

        if (!*v129)
        {
          goto LABEL_139;
        }

        v100 = *&v9[16 * v99 + 32];
        v101 = *&v9[16 * v5 + 40];
        sub_2741B3D2C((*v129 + 104 * v100), (*v129 + 104 * *&v9[16 * v5 + 32]), (*v129 + 104 * v101), v60);
        if (v61)
        {
        }

        if (v101 < v100)
        {
          goto LABEL_117;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v9 = sub_2741B412C(v9);
        }

        if (v99 >= *(v9 + 2))
        {
          goto LABEL_118;
        }

        v102 = &v9[16 * v99];
        *(v102 + 4) = v100;
        *(v102 + 5) = v101;
        v128 = v9;
        result = sub_2741B40A0(v5);
        v9 = v128;
        v58 = *(v128 + 2);
        if (v58 <= 1)
        {
          goto LABEL_3;
        }
      }

      v66 = &v9[16 * v58 + 32];
      v67 = *(v66 - 64);
      v68 = *(v66 - 56);
      v72 = __OFSUB__(v68, v67);
      v69 = v68 - v67;
      if (v72)
      {
        goto LABEL_119;
      }

      v71 = *(v66 - 48);
      v70 = *(v66 - 40);
      v72 = __OFSUB__(v70, v71);
      v64 = v70 - v71;
      v65 = v72;
      if (v72)
      {
        goto LABEL_120;
      }

      v73 = &v9[16 * v58];
      v75 = *v73;
      v74 = *(v73 + 1);
      v72 = __OFSUB__(v74, v75);
      v76 = v74 - v75;
      if (v72)
      {
        goto LABEL_122;
      }

      v72 = __OFADD__(v64, v76);
      v77 = v64 + v76;
      if (v72)
      {
        goto LABEL_125;
      }

      if (v77 >= v69)
      {
        v95 = &v9[16 * v5 + 32];
        v97 = *v95;
        v96 = *(v95 + 1);
        v72 = __OFSUB__(v96, v97);
        v98 = v96 - v97;
        if (v72)
        {
          goto LABEL_129;
        }

        if (v64 < v98)
        {
          v5 = v58 - 2;
        }

        goto LABEL_94;
      }

      goto LABEL_73;
    }

LABEL_3:
    v6 = v129[1];
    v7 = v119;
    v5 = v61;
    if (v119 >= v6)
    {
      goto LABEL_105;
    }
  }

  v38 = v10 + a4;
  if (__OFADD__(v10, a4))
  {
    goto LABEL_135;
  }

  if (v38 >= v37)
  {
    v38 = v129[1];
  }

  if (v38 < v10)
  {
LABEL_136:
    __break(1u);
    goto LABEL_137;
  }

  if (v11 == v38)
  {
    goto LABEL_53;
  }

  v111 = v5;
  v39 = *v129;
  v40 = *v129 + 104 * v11;
  v109 = v10;
  v41 = v10 - v11;
  v113 = v38;
LABEL_42:
  v118 = v11;
  v42 = v41;
  v115 = v40;
  while (1)
  {
    sub_2740ACAC8(v40, &v121);
    v43 = (v40 - 104);
    sub_2740ACAC8(v40 - 104, &v120);
    v44 = sub_2741C7ECC();
    v46 = v45;
    if (v44 == sub_2741C7ECC() && v46 == v47)
    {

      sub_2740ACB2C(&v120);
      sub_2740ACB2C(&v121);
LABEL_41:
      v11 = v118 + 1;
      v40 = v115 + 104;
      --v41;
      if (v118 + 1 == v113)
      {
        v11 = v113;
        v10 = v109;
        v5 = v111;
        v9 = v116;
        goto LABEL_53;
      }

      goto LABEL_42;
    }

    v49 = sub_2741C86DC();

    sub_2740ACB2C(&v120);
    result = sub_2740ACB2C(&v121);
    if ((v49 & 1) == 0)
    {
      goto LABEL_41;
    }

    if (!v39)
    {
      break;
    }

    v124 = *(v40 + 48);
    v125 = *(v40 + 64);
    v126 = *(v40 + 80);
    v127 = *(v40 + 96);
    v121 = *v40;
    v122 = *(v40 + 16);
    v123 = *(v40 + 32);
    v50 = *(v40 - 88);
    *v40 = *v43;
    *(v40 + 16) = v50;
    v51 = *(v40 - 72);
    v52 = *(v40 - 56);
    v53 = *(v40 - 40);
    v54 = *(v40 - 24);
    *(v40 + 96) = *(v40 - 8);
    *(v40 + 64) = v53;
    *(v40 + 80) = v54;
    *(v40 + 32) = v51;
    *(v40 + 48) = v52;
    *(v40 - 24) = v126;
    *(v40 - 40) = v125;
    *(v40 - 56) = v124;
    *(v40 - 8) = v127;
    *v43 = v121;
    *(v40 - 88) = v122;
    *(v40 - 72) = v123;
    v40 -= 104;
    if (__CFADD__(v42++, 1))
    {
      goto LABEL_41;
    }
  }

  __break(1u);
LABEL_139:
  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
LABEL_142:
  __break(1u);
LABEL_143:
  __break(1u);
  return result;
}

uint64_t sub_2741B3D2C(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = (__src - __dst) / 104;
  v10 = a3 - __src;
  v11 = (a3 - __src) / 104;
  if (v9 >= v11)
  {
    v22 = 104 * v11;
    if (a4 != __src || &__src[v22] <= a4)
    {
      memmove(a4, __src, 104 * v11);
    }

    v13 = &v4[v22];
    if (v10 < 104 || v6 <= v7)
    {
      v21 = v6;
    }

    else
    {
      do
      {
        v21 = v6 - 104;
        v23 = v13 - 104;
        v5 -= 104;
        while (1)
        {
          sub_2740ACAC8(v23, &v35);
          sub_2740ACAC8((v6 - 104), &v34);
          v26 = sub_2741C7ECC();
          v28 = v27;
          v30 = v26 == sub_2741C7ECC() && v28 == v29;
          v31 = v30 ? 0 : sub_2741C86DC();

          sub_2740ACB2C(&v34);
          sub_2740ACB2C(&v35);
          if (v31)
          {
            break;
          }

          if (v5 + 104 != v23 + 104)
          {
            memmove(v5, v23, 0x68uLL);
          }

          v24 = v23 - 104;
          v5 -= 104;
          v25 = v23 > v4;
          v23 -= 104;
          if (!v25)
          {
            v13 = v24 + 104;
            v21 = v6;
            goto LABEL_44;
          }
        }

        if (v5 + 104 != v6)
        {
          memmove(v5, v6 - 104, 0x68uLL);
        }

        v13 = v23 + 104;
        if (v23 + 104 <= v4)
        {
          break;
        }

        v6 -= 104;
      }

      while (v21 > v7);
      v13 = v23 + 104;
    }
  }

  else
  {
    v12 = 104 * v9;
    if (a4 != __dst || &__dst[v12] <= a4)
    {
      memmove(a4, __dst, v12);
    }

    v13 = &v4[v12];
    if (v8 >= 104 && v6 < v5)
    {
      while (1)
      {
        sub_2740ACAC8(v6, &v35);
        sub_2740ACAC8(v4, &v34);
        v14 = sub_2741C7ECC();
        v16 = v15;
        v18 = v14 == sub_2741C7ECC() && v16 == v17;
        if (v18)
        {
          break;
        }

        v19 = sub_2741C86DC();

        sub_2740ACB2C(&v34);
        sub_2740ACB2C(&v35);
        if ((v19 & 1) == 0)
        {
          goto LABEL_16;
        }

        v20 = v6;
        v18 = v7 == v6;
        v6 += 104;
        if (!v18)
        {
          goto LABEL_17;
        }

LABEL_18:
        v7 += 104;
        if (v4 >= v13 || v6 >= v5)
        {
          goto LABEL_20;
        }
      }

      sub_2740ACB2C(&v34);
      sub_2740ACB2C(&v35);
LABEL_16:
      v20 = v4;
      v18 = v7 == v4;
      v4 += 104;
      if (v18)
      {
        goto LABEL_18;
      }

LABEL_17:
      memmove(v7, v20, 0x68uLL);
      goto LABEL_18;
    }

LABEL_20:
    v21 = v7;
  }

LABEL_44:
  v32 = 104 * ((v13 - v4) / 104);
  if (v21 != v4 || v21 >= &v4[v32])
  {
    memmove(v21, v4, v32);
  }

  return 1;
}

uint64_t sub_2741B40A0(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_2741B412C(v3);
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

void *sub_2741B4140(void *result, int64_t a2, char a3, void *a4)
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
LABEL_30:
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

  if (!v9)
  {
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093AC30, qword_2741D5CE8);
  v10 = *(type metadata accessor for KnownNetwork(0) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v12) == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(type metadata accessor for KnownNetwork(0) - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

char *sub_2741B4318(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093AC10, &qword_2741D5CC8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = (v11 - 32 + ((v11 - 32) >> 63)) & 0xFFFFFFFFFFFFFFFELL;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[2 * v8])
    {
      memmove(v12, v13, 2 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 2 * v8);
  }

  return v10;
}

void *sub_2741B4414(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093AC00, &qword_2741D5CB8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2809385F0, &unk_2741CF560);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_2741B455C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093ABF0, &qword_2741D5CA8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 104);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[104 * v8])
    {
      memmove(v12, v13, 104 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_2741B4680(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280939D80, &qword_2741D2B38);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_2741B478C(uint64_t (*a1)(uint64_t))
{
  v4 = *v2;
  v5 = (*v2 + 2);
  v6 = *v5;
  if (*v5)
  {
    v1 = 0;
    for (i = 9; ; i += 5)
    {
      result = a1(&v4[i - 5]);
      if (v3)
      {
        break;
      }

      if (result)
      {
        v17 = v2;
        v10 = v1 + 1;
        if (__OFADD__(v1, 1))
        {
LABEL_32:
          __break(1u);
          return result;
        }

        v11 = *v5;
        while (v10 != v11)
        {
          if (v10 >= v11)
          {
            __break(1u);
LABEL_28:
            __break(1u);
LABEL_29:
            __break(1u);
LABEL_30:
            __break(1u);
LABEL_31:
            __break(1u);
            goto LABEL_32;
          }

          sub_27409D4E4(&v4[i], v16);
          v12 = a1(v16);
          result = __swift_destroy_boxed_opaque_existential_1Tm(v16);
          if ((v12 & 1) == 0)
          {
            if (v10 != v1)
            {
              if ((v1 & 0x8000000000000000) != 0)
              {
                goto LABEL_28;
              }

              v13 = *v5;
              if (v1 >= *v5)
              {
                goto LABEL_29;
              }

              result = sub_27409D4E4(&v4[5 * v1 + 4], v16);
              if (v10 >= v13)
              {
                goto LABEL_30;
              }

              sub_27409D4E4(&v4[i], v15);
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v4 = sub_2741B4B98(v4);
              }

              v14 = &v4[5 * v1];
              __swift_destroy_boxed_opaque_existential_1Tm(v14 + 4);
              result = sub_27409D118(v15, (v14 + 4));
              if (v10 >= v4[2])
              {
                goto LABEL_31;
              }

              __swift_destroy_boxed_opaque_existential_1Tm(&v4[i]);
              result = sub_27409D118(v16, &v4[i]);
              *v17 = v4;
            }

            ++v1;
          }

          ++v10;
          v5 = (v4 + 2);
          v11 = v4[2];
          i += 5;
        }

        return v1;
      }

      if (v6 == ++v1)
      {
        return *v5;
      }
    }
  }

  else if (!v3)
  {
    return *v5;
  }

  return v1;
}

uint64_t sub_2741B4968(uint64_t (*a1)(uint64_t))
{
  v4 = *v2;
  v5 = (*v2 + 16);
  v6 = *v5;
  if (*v5)
  {
    v1 = 0;
    for (i = 136; ; i += 104)
    {
      result = a1(&v4[i - 104]);
      if (v3)
      {
        break;
      }

      if (result)
      {
        v16 = v2;
        v10 = v1 + 1;
        if (__OFADD__(v1, 1))
        {
LABEL_32:
          __break(1u);
          return result;
        }

        v11 = *v5;
        while (v10 != v11)
        {
          if (v10 >= v11)
          {
            __break(1u);
LABEL_28:
            __break(1u);
LABEL_29:
            __break(1u);
LABEL_30:
            __break(1u);
LABEL_31:
            __break(1u);
            goto LABEL_32;
          }

          sub_2740ACAC8(&v4[i], v15);
          v12 = a1(v15);
          result = sub_2740ACB2C(v15);
          if ((v12 & 1) == 0)
          {
            if (v10 != v1)
            {
              if ((v1 & 0x8000000000000000) != 0)
              {
                goto LABEL_28;
              }

              v13 = *v5;
              if (v1 >= *v5)
              {
                goto LABEL_29;
              }

              result = sub_2740ACAC8(&v4[104 * v1 + 32], v15);
              if (v10 >= v13)
              {
                goto LABEL_30;
              }

              sub_2740ACAC8(&v4[i], v14);
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v4 = sub_2741B4BAC(v4);
              }

              result = sub_2741B4E84(v14, &v4[104 * v1 + 32]);
              if (v10 >= *(v4 + 2))
              {
                goto LABEL_31;
              }

              result = sub_2741B4E84(v15, &v4[i]);
              *v16 = v4;
            }

            ++v1;
          }

          ++v10;
          v5 = (v4 + 16);
          v11 = *(v4 + 2);
          i += 104;
        }

        return v1;
      }

      if (v6 == ++v1)
      {
        return *v5;
      }
    }
  }

  else if (!v3)
  {
    return *v5;
  }

  return v1;
}

unint64_t sub_2741B4BC0(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_13;
  }

  v7 = *v3;
  v8 = v7 + 32 + 40 * result;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2809385F0, &unk_2741CF560);
  result = swift_arrayDestroy();
  v9 = __OFSUB__(a3, v4);
  v10 = a3 - v4;
  if (v9)
  {
LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (!v10)
  {
    goto LABEL_10;
  }

  v11 = *(v7 + 16);
  v9 = __OFSUB__(v11, a2);
  v12 = v11 - a2;
  if (v9)
  {
    goto LABEL_14;
  }

  result = v8 + 40 * a3;
  v13 = (v7 + 32 + 40 * a2);
  if (result != v13 || result >= v13 + 40 * v12)
  {
    result = memmove(result, v13, 40 * v12);
  }

  v14 = *(v7 + 16);
  v9 = __OFADD__(v14, v10);
  v15 = v14 + v10;
  if (v9)
  {
    goto LABEL_15;
  }

  *(v7 + 16) = v15;
LABEL_10:
  if (a3 > 0)
  {
LABEL_16:
    __break(1u);
  }

  return result;
}

unint64_t sub_2741B4CD8(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v7 = *v3;
  v8 = v7 + 32 + 104 * result;
  result = swift_arrayDestroy();
  v9 = __OFSUB__(a3, v4);
  v10 = a3 - v4;
  if (v9)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v10)
  {
    goto LABEL_13;
  }

  v11 = *(v7 + 16);
  v9 = __OFSUB__(v11, a2);
  v12 = v11 - a2;
  if (v9)
  {
    goto LABEL_17;
  }

  result = v8 + 104 * a3;
  v13 = (v7 + 32 + 104 * a2);
  v14 = 104 * v12;
  v15 = v13 + 104 * v12;
  if (result != v13 || result >= v15)
  {
    result = memmove(result, v13, v14);
  }

  v17 = *(v7 + 16);
  v9 = __OFADD__(v17, v10);
  v18 = v17 + v10;
  if (v9)
  {
    goto LABEL_18;
  }

  *(v7 + 16) = v18;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

uint64_t sub_2741B4DAC(uint64_t result, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(uint64_t, uint64_t, void))
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_11;
  }

  v6 = *v4;
  v7 = *(*v4 + 16);
  if (v7 < a2)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v8 = result;
  if (__OFSUB__(a2, result))
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v9 = result - a2;
  if (__OFSUB__(0, a2 - result))
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v10 = v7 + v9;
  if (__OFADD__(v7, v9))
  {
LABEL_14:
    __break(1u);
    return result;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v4 = v6;
  if (!isUniquelyReferenced_nonNull_native || v10 > *(v6 + 24) >> 1)
  {
    v6 = a3();
    *v4 = v6;
  }

  result = a4(v8, a2, 0);
  *v4 = v6;
  return result;
}

unint64_t sub_2741B4F94()
{
  result = qword_28093B4E8;
  if (!qword_28093B4E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28093B4E8);
  }

  return result;
}

unint64_t sub_2741B4FEC()
{
  result = qword_28093B4F0;
  if (!qword_28093B4F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28093B4F0);
  }

  return result;
}

unint64_t sub_2741B5044()
{
  result = qword_28093B4F8;
  if (!qword_28093B4F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28093B4F8);
  }

  return result;
}

unint64_t sub_2741B509C()
{
  result = qword_28093B500;
  if (!qword_28093B500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28093B500);
  }

  return result;
}

id sub_2741B5154()
{
  result = [objc_allocWithZone(type metadata accessor for HotspotReceiver()) init];
  qword_28093B508 = result;
  unk_28093B510 = &off_288327620;
  return result;
}

uint64_t sub_2741B5194(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093B520, &qword_2741D8510);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v7);
  v9 = &v18 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937E30, &qword_2741CDC20);
  MEMORY[0x28223BE20](v10 - 8, v11);
  v13 = &v18 - v12;
  sub_2740CB460(0x1000000000000019, 0x80000002741E3A50);
  sub_2741C80BC();
  v14 = sub_2741C80DC();
  (*(*(v14 - 8) + 56))(v13, 0, 1, v14);
  (*(v5 + 16))(v9, a1, v4);
  v15 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = 0;
  *(v16 + 24) = 0;
  (*(v5 + 32))(v16 + v15, v9, v4);
  *(v16 + ((v6 + v15 + 7) & 0xFFFFFFFFFFFFFFF8)) = a2;

  *(a2 + 56) = sub_2740CE980(0, 0, v13, &unk_2741D8520, v16);
}

uint64_t sub_2741B53BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093B520, &qword_2741D8510);
  v5[4] = v6;
  v7 = *(v6 - 8);
  v5[5] = v7;
  v5[6] = *(v7 + 64);
  v5[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2741B5490, 0, 0);
}

uint64_t sub_2741B5490()
{
  v1 = v0[7];
  v2 = v0[4];
  v3 = v0[5];
  (*(v3 + 16))(v1, v0[2], v2);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = swift_allocObject();
  (*(v3 + 32))(v5 + v4, v1, v2);
  v6 = off_280945D88;
  v7 = qword_280945D90;
  off_280945D88 = sub_2741B8A88;
  qword_280945D90 = v5;
  sub_2740BA7B8(v6, v7);

  sub_2741C80EC();

  v8 = v0[1];

  return v8();
}

uint64_t sub_2741B55C4(uint64_t a1, uint64_t a2)
{
  v36 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093B528, &qword_2741D8528);
  v34 = *(v3 - 8);
  v35 = v3;
  MEMORY[0x28223BE20](v3, v4);
  v33 = &v33 - v5;
  v6 = sub_274178320(MEMORY[0x277D84F90]);
  v7 = *(a1 + 16);
  if (!v7)
  {
LABEL_16:
    v27 = v6[2];
    if (v27)
    {
      v28 = sub_274177640(v6[2], 0);
      v29 = sub_274156EB4(&v39, (v28 + 4), v27, v6);
      v30 = v39;

      sub_2740D43C8(v30);
      if (v29 == v27)
      {
LABEL_20:
        v39 = v28;

        sub_2741B7704(&v39);

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093B520, &qword_2741D8510);
        v31 = v33;
        sub_2741C80FC();
        (*(v34 + 8))(v31, v35);
      }

      __break(1u);
    }

    v28 = MEMORY[0x277D84F90];
    goto LABEL_20;
  }

  v8 = (a1 + 32);
  while (1)
  {
    sub_27409D4E4(v8, &v39);
    v9 = v40;
    v10 = v41;
    __swift_project_boxed_opaque_existential_1(&v39, v40);
    v11 = (*(v10 + 24))(v9, v10);
    v13 = v12;
    sub_27409D4E4(&v39, v38);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v37 = v6;
    v16 = sub_2741251AC(v11, v13);
    v17 = v6[2];
    v18 = (v15 & 1) == 0;
    v19 = v17 + v18;
    if (__OFADD__(v17, v18))
    {
      break;
    }

    v20 = v15;
    if (v6[3] >= v19)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        v6 = v37;
        if (v15)
        {
          goto LABEL_3;
        }
      }

      else
      {
        sub_274106E40();
        v6 = v37;
        if (v20)
        {
          goto LABEL_3;
        }
      }
    }

    else
    {
      sub_274105CE8(v19, isUniquelyReferenced_nonNull_native);
      v21 = sub_2741251AC(v11, v13);
      if ((v20 & 1) != (v22 & 1))
      {
        goto LABEL_23;
      }

      v16 = v21;
      v6 = v37;
      if (v20)
      {
LABEL_3:

        goto LABEL_4;
      }
    }

    v6[(v16 >> 6) + 8] |= 1 << v16;
    v23 = (v6[6] + 16 * v16);
    *v23 = v11;
    v23[1] = v13;
    sub_27409D4E4(v38, v6[7] + 40 * v16);
    v24 = v6[2];
    v25 = __OFADD__(v24, 1);
    v26 = v24 + 1;
    if (v25)
    {
      goto LABEL_22;
    }

    v6[2] = v26;
LABEL_4:
    __swift_assign_boxed_opaque_existential_1((v6[7] + 40 * v16), &v39);
    __swift_destroy_boxed_opaque_existential_1Tm(v38);
    __swift_destroy_boxed_opaque_existential_1Tm(&v39);
    v8 += 40;
    if (!--v7)
    {
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __swift_destroy_boxed_opaque_existential_1Tm(v38);
  sub_2741C871C();
  __break(1u);

  __break(1u);
  return result;
}

uint64_t sub_2741B5948(void *a1, void *a2)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  (*(v4 + 16))(v3, v4);
  v5 = sub_2741C7ECC();
  v7 = v6;

  v8 = a2[3];
  v9 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v8);
  (*(v9 + 16))(v8, v9);
  v10 = sub_2741C7ECC();
  v12 = v11;

  if (v5 == v10 && v7 == v12)
  {
    v14 = 0;
  }

  else
  {
    v14 = sub_2741C86DC();
  }

  return v14 & 1;
}

uint64_t sub_2741B5A58(uint64_t a1, uint64_t a2)
{
  sub_2740CB460(0x1000000000000014, 0x80000002741E3A70);
  swift_beginAccess();
  sub_27409D4E4(a2 + 16, v6);
  v3 = v7;
  v4 = v8;
  __swift_project_boxed_opaque_existential_1(v6, v7);
  (*(v4 + 40))(v3, v4);
  return __swift_destroy_boxed_opaque_existential_1Tm(v6);
}

uint64_t sub_2741B5AFC()
{
  if (*(v0 + 56))
  {

    sub_2741C814C();
  }

  *(v0 + 56) = 0;
}

uint64_t sub_2741B5B70(uint64_t a1, uint64_t a2)
{
  v3[21] = a2;
  v3[22] = v2;
  v3[20] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937E30, &qword_2741CDC20);
  v3[23] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2741B5C10, 0, 0);
}

uint64_t sub_2741B5C10()
{
  v1 = *(v0 + 22);
  v2 = *(v0 + 23);
  v3 = *(v0 + 21);
  v4 = swift_allocObject();
  *(v0 + 24) = v4;
  *(v4 + 16) = 1;
  v5 = objc_opt_self();
  *(v0 + 6) = sub_2741B7100;
  *(v0 + 7) = v1;
  *(v0 + 2) = MEMORY[0x277D85DD0];
  *(v0 + 3) = 1107296256;
  *(v0 + 4) = sub_27415885C;
  *(v0 + 5) = &block_descriptor_12;
  v6 = _Block_copy(v0 + 1);

  v7 = [v5 scheduledTimerWithTimeInterval:0 repeats:v6 block:30.0];
  _Block_release(v6);

  sub_2741C80BC();
  v8 = sub_2741C80DC();
  (*(*(v8 - 8) + 56))(v2, 0, 1, v8);
  sub_27409D4E4(v3, (v0 + 7));
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = v4;
  sub_27409D118(v0 + 7, (v9 + 5));
  v9[10] = v1;
  v9[11] = 0x3FF0000000000000;

  v10 = sub_2741A7C84(0, 0, v2, &unk_2741D84F0, v9);
  *(v0 + 25) = v10;
  v11 = swift_task_alloc();
  *(v0 + 26) = v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093B490, &qword_2741D7EA8);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937E10, &qword_2741CB370);
  *(v0 + 27) = v13;
  *v11 = v0;
  v11[1] = sub_2741B5EB4;
  v14 = MEMORY[0x277D84950];

  return MEMORY[0x282200440](v0 + 4, v10, v12, v13, v14);
}

uint64_t sub_2741B5EB4()
{

  return MEMORY[0x2822009F8](sub_2741B5FB0, 0, 0);
}

uint64_t sub_2741B5FB0()
{
  if (*(v0 + 104))
  {
    *(v0 + 152) = *(v0 + 64);
    swift_willThrowTypedImpl();
  }

  else
  {
    v2 = *(v0 + 160);

    sub_27409D118((v0 + 64), v2);
  }

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2741B6090(uint64_t a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 344) = a2;
  *(v7 + 328) = a6;
  *(v7 + 336) = a7;
  *(v7 + 312) = a1;
  *(v7 + 320) = a5;
  v8 = sub_2741C85FC();
  *(v7 + 352) = v8;
  *(v7 + 360) = *(v8 - 8);
  *(v7 + 368) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2741B6158, 0, 0);
}

uint64_t sub_2741B6158()
{
  v1 = v0[41];
  v2 = v0[42];
  v3 = v0[40];
  sub_2741C856C();

  swift_beginAccess();
  v0[34] = *(v3 + 16);
  v4 = sub_2741C86CC();
  MEMORY[0x2743E5FB0](v4);

  MEMORY[0x2743E5FB0](0xD000000000000016, 0x80000002741E3A10);
  v5 = v1[3];
  v6 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v5);
  v7 = (*(v6 + 16))(v5, v6);
  MEMORY[0x2743E5FB0](v7);

  sub_2740CB460(0x3A74706D65747441, 0xE900000000000020);

  swift_beginAccess();
  sub_27409D4E4(v2 + 16, (v0 + 2));
  v8 = v0[5];
  v9 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v8);
  v14 = (*(v9 + 48) + **(v9 + 48));
  v10 = swift_task_alloc();
  v0[47] = v10;
  *v10 = v0;
  v10[1] = sub_2741B63B0;
  v11 = v0[41];
  v12 = v0[39];

  return v14(v12, v11, v8, v9);
}

uint64_t sub_2741B63B0()
{
  *(*v1 + 384) = v0;

  if (v0)
  {
    v2 = sub_2741B6B80;
  }

  else
  {
    v2 = sub_2741B64C4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2741B64C4()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2741B6530()
{
  v2 = *v1;
  *(*v1 + 400) = v0;

  (*(v2[45] + 8))(v2[46], v2[44]);
  if (v0)
  {
    v3 = sub_2741B6AA0;
  }

  else
  {
    v3 = sub_2741B6698;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2741B6698()
{
  v1 = v0[48];
  v3 = v0[40];
  v2 = v0[41];
  sub_2741C856C();
  v0[30] = 0;
  v0[31] = 0xE000000000000000;
  MEMORY[0x2743E5FB0](0xD000000000000010, 0x80000002741E3060);
  swift_beginAccess();
  v0[35] = *(v3 + 16);
  v4 = sub_2741C86CC();
  MEMORY[0x2743E5FB0](v4);

  MEMORY[0x2743E5FB0](0x206F742065756420, 0xEE003A726F727265);
  v0[36] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937E10, &qword_2741CB370);
  sub_2741C862C();
  MEMORY[0x2743E5FB0](0xD000000000000013, 0x80000002741E3A30);
  v5 = v2[3];
  v6 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v5);
  v7 = (*(v6 + 16))(v5, v6);
  MEMORY[0x2743E5FB0](v7);

  sub_2740CB460(v0[30], v0[31]);

  result = swift_beginAccess();
  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (v10)
  {
    __break(1u);
  }

  else
  {
    v12 = v0[42];
    *(v0[40] + 16) = v11;
    sub_27409D4E4(v12 + 16, (v0 + 7));
    v13 = v0[10];
    v14 = v0[11];
    __swift_project_boxed_opaque_existential_1(v0 + 7, v13);
    v18 = (*(v14 + 48) + **(v14 + 48));
    v15 = swift_task_alloc();
    v0[51] = v15;
    *v15 = v0;
    v15[1] = sub_2741B698C;
    v16 = v0[41];
    v17 = v0[39];

    return v18(v17, v16, v13, v14);
  }

  return result;
}

uint64_t sub_2741B698C()
{
  *(*v1 + 416) = v0;

  if (v0)
  {
    v2 = sub_2741B6E30;
  }

  else
  {
    v2 = sub_2741B6B0C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2741B6AA0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2741B6B0C()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 56));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2741B6B80()
{
  v1 = v0[42];
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  if (*(v1 + 64) == 1)
  {
    v2 = v0[48];
    v3 = v0[40];
    sub_2741C856C();
    v0[32] = 0;
    v0[33] = 0xE000000000000000;
    MEMORY[0x2743E5FB0](0xD00000000000001ALL, 0x80000002741E30A0);
    v0[37] = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937E10, &qword_2741CB370);
    sub_2741C862C();
    MEMORY[0x2743E5FB0](0xD000000000000011, 0x80000002741E30C0);
    swift_beginAccess();
    v0[38] = *(v3 + 16);
    v4 = sub_2741C86CC();
    MEMORY[0x2743E5FB0](v4);

    sub_2740CB218(v0[32], v0[33], 0x5F28656C62616E65, 0xEA0000000000293ALL);

    result = swift_beginAccess();
    v6 = *(v3 + 16);
    v7 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      __break(1u);
    }

    else
    {
      v8 = v0[48];
      *(v0[40] + 16) = v7;
      sub_27411D4AC();
      swift_allocError();
      *v9 = v7;
      *(v9 + 8) = 0;
      swift_willThrow();

      v10 = v0[1];

      return v10();
    }
  }

  else
  {
    v11 = sub_2741C882C();
    v13 = v12;
    sub_2741C874C();
    v14 = swift_task_alloc();
    v0[49] = v14;
    *v14 = v0;
    v14[1] = sub_2741B6530;

    return sub_2741B724C(v11, v13, 0, 0, 1);
  }

  return result;
}

uint64_t sub_2741B6E30()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 56));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t InstantHotspotBrowser.deinit()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));

  return v0;
}

uint64_t InstantHotspotBrowser.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));

  return swift_deallocClassInstance();
}

uint64_t sub_2741B6F0C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093B518, &unk_2741D8500);
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1, v3);
  v5 = &v10[-v4];
  v6 = *v0;
  swift_beginAccess();
  sub_27409D4E4(v6 + 16, v11);
  v7 = v12;
  v8 = v13;
  __swift_project_boxed_opaque_existential_1(v11, v12);
  (*(v8 + 32))(v7, v8);
  __swift_destroy_boxed_opaque_existential_1Tm(v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093B4D0, &qword_2741D8238);
  (*(v2 + 104))(v5, *MEMORY[0x277D85778], v1);
  return sub_2741C812C();
}

uint64_t block_copy_helper_12(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_2741B7124()
{
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 40));

  return MEMORY[0x2821FE8E8](v0, 96, 7);
}

uint64_t sub_2741B7174(uint64_t a1)
{
  v4 = *(v1 + 2);
  v5 = *(v1 + 3);
  v6 = *(v1 + 4);
  v7 = *(v1 + 10);
  v8 = v1[11];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_27409D648;

  return sub_2741B6090(a1, v8, v4, v5, v6, (v1 + 5), v7);
}

uint64_t sub_2741B724C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 56) = v5;
  v12 = sub_2741C85DC();
  *(v6 + 64) = v12;
  *(v6 + 72) = *(v12 - 8);
  *(v6 + 80) = swift_task_alloc();
  *(v6 + 88) = swift_task_alloc();
  *(v6 + 40) = a1;
  *(v6 + 48) = a2;
  *(v6 + 16) = a3;
  *(v6 + 24) = a4;
  *(v6 + 32) = a5 & 1;

  return MEMORY[0x2822009F8](sub_2741B734C, 0, 0);
}

uint64_t sub_2741B734C()
{
  v1 = v0[10];
  v2 = v0[8];
  v3 = v0[9];
  v4 = sub_2741C85FC();
  v5 = sub_2741B8794(&qword_28093AEC8, MEMORY[0x277D85928], MEMORY[0x277D85930]);
  sub_2741C872C();
  sub_2741B8794(&qword_28093AED0, MEMORY[0x277D858F8], MEMORY[0x277D85920]);
  sub_2741C860C();
  v6 = *(v3 + 8);
  v0[12] = v6;
  v0[13] = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v6(v1, v2);
  v7 = swift_task_alloc();
  v0[14] = v7;
  *v7 = v0;
  v7[1] = sub_2741B74DC;
  v8 = v0[11];

  return MEMORY[0x2822008C8](v8, v0 + 2, v4, v5);
}

uint64_t sub_2741B74DC()
{
  v2 = *(*v1 + 96);
  v3 = *(*v1 + 88);
  v4 = *(*v1 + 64);
  v5 = *v1;
  *(v5 + 120) = v0;

  v2(v3, v4);
  if (v0)
  {

    return MEMORY[0x2822009F8](sub_2741B7698, 0, 0);
  }

  else
  {

    v6 = *(v5 + 8);

    return v6();
  }
}

uint64_t sub_2741B7698()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2741B7704(void *a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_2741B4B84(v2);
  }

  v3 = v2[2];
  v5[0] = (v2 + 4);
  v5[1] = v3;
  result = sub_2741B7770(v5);
  *a1 = v2;
  return result;
}

uint64_t sub_2741B7770(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_2741C86BC();
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
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2809385F0, &unk_2741CF560);
        v5 = sub_2741C801C();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = v5 + 32;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_2741B7A60(v7, v8, a1, v4);
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
    return sub_2741B7878(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_2741B7878(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = *a4 + 40 * a3;
    v6 = result - a3;
LABEL_6:
    v30 = a3;
    v22 = v6;
    v23 = v5;
    while (1)
    {
      sub_27409D4E4(v5, &v27);
      sub_27409D4E4(v5 - 40, v24);
      v7 = v28;
      v8 = v29;
      __swift_project_boxed_opaque_existential_1(&v27, v28);
      (*(v8 + 16))(v7, v8);
      v9 = sub_2741C7ECC();
      v11 = v10;

      v13 = v25;
      v12 = v26;
      __swift_project_boxed_opaque_existential_1(v24, v25);
      (*(v12 + 16))(v13, v12);
      v14 = sub_2741C7ECC();
      v16 = v15;

      if (v9 == v14 && v11 == v16)
      {

        __swift_destroy_boxed_opaque_existential_1Tm(v24);
        result = __swift_destroy_boxed_opaque_existential_1Tm(&v27);
LABEL_5:
        a3 = v30 + 1;
        v5 = v23 + 40;
        v6 = v22 - 1;
        if (v30 + 1 == a2)
        {
          return result;
        }

        goto LABEL_6;
      }

      v18 = sub_2741C86DC();

      __swift_destroy_boxed_opaque_existential_1Tm(v24);
      result = __swift_destroy_boxed_opaque_existential_1Tm(&v27);
      if ((v18 & 1) == 0)
      {
        goto LABEL_5;
      }

      if (!v4)
      {
        break;
      }

      sub_27409D118(v5, &v27);
      v19 = *(v5 - 24);
      *v5 = *(v5 - 40);
      *(v5 + 16) = v19;
      *(v5 + 32) = *(v5 - 8);
      result = sub_27409D118(&v27, v5 - 40);
      v5 -= 40;
      if (__CFADD__(v6++, 1))
      {
        goto LABEL_5;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_2741B7A60(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v6 = v4;
  v110 = result;
  v7 = a3[1];
  if (v7 < 1)
  {
    v9 = MEMORY[0x277D84F90];
LABEL_102:
    v5 = *v110;
    if (!*v110)
    {
      goto LABEL_142;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_136:
      result = sub_2741B412C(v9);
      v9 = result;
    }

    v102 = v6;
    v126 = v9;
    v103 = *(v9 + 2);
    if (v103 >= 2)
    {
      while (*a3)
      {
        v6 = v103 - 1;
        v104 = *&v9[16 * v103];
        v105 = *&v9[16 * v103 + 24];
        sub_2741B82F0((*a3 + 40 * v104), (*a3 + 40 * *&v9[16 * v103 + 16]), *a3 + 40 * v105, v5);
        if (v102)
        {
        }

        if (v105 < v104)
        {
          goto LABEL_129;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v9 = sub_2741B412C(v9);
        }

        if (v103 - 2 >= *(v9 + 2))
        {
          goto LABEL_130;
        }

        v106 = &v9[16 * v103];
        *v106 = v104;
        *(v106 + 1) = v105;
        v126 = v9;
        result = sub_2741B40A0(v6);
        v9 = v126;
        v103 = *(v126 + 2);
        if (v103 <= 1)
        {
        }
      }

      goto LABEL_140;
    }
  }

  v8 = 0;
  v9 = MEMORY[0x277D84F90];
  while (1)
  {
    v10 = v8;
    if (v8 + 1 < v7)
    {
      v117 = v7;
      v11 = *a3;
      sub_27409D4E4(*a3 + 40 * (v8 + 1), &v123);
      sub_27409D4E4(v11 + 40 * v8, v120);
      v114 = sub_2741B5948(&v123, v120);
      if (!v6)
      {
        __swift_destroy_boxed_opaque_existential_1Tm(v120);
        result = __swift_destroy_boxed_opaque_existential_1Tm(&v123);
        v12 = v8 + 2;
        v109 = v8;
        v13 = 40 * v8;
        v14 = v11 + 40 * v8 + 80;
        do
        {
          if (v117 == v12)
          {
            v28 = v117;
            goto LABEL_18;
          }

          v17 = v9;
          sub_27409D4E4(v14, &v123);
          sub_27409D4E4(v14 - 40, v120);
          v18 = v124;
          v19 = v125;
          __swift_project_boxed_opaque_existential_1(&v123, v124);
          (*(v19 + 16))(v18, v19);
          v20 = sub_2741C7ECC();
          v22 = v21;

          v24 = v121;
          v23 = v122;
          __swift_project_boxed_opaque_existential_1(v120, v121);
          (*(v23 + 16))(v24, v23);
          v5 = sub_2741C7ECC();
          v26 = v25;

          if (v20 == v5 && v22 == v26)
          {
            v15 = 0;
          }

          else
          {
            v15 = sub_2741C86DC();
          }

          __swift_destroy_boxed_opaque_existential_1Tm(v120);
          result = __swift_destroy_boxed_opaque_existential_1Tm(&v123);
          v16 = v114 ^ v15;
          ++v12;
          v14 += 40;
          v9 = v17;
          v6 = 0;
        }

        while ((v16 & 1) == 0);
        v28 = v12 - 1;
LABEL_18:
        v10 = v109;
        if (v114)
        {
          if (v28 < v109)
          {
            goto LABEL_135;
          }

          if (v109 < v28)
          {
            v29 = v28;
            v30 = 40 * v28 - 40;
            v118 = v28;
            v5 = v109;
            do
            {
              if (v5 != --v29)
              {
                v31 = *a3;
                if (!*a3)
                {
                  goto LABEL_139;
                }

                v32 = v31 + v13;
                v33 = v31 + v30;
                sub_27409D118((v31 + v13), &v123);
                v34 = *(v33 + 32);
                v35 = *(v33 + 16);
                *v32 = *v33;
                *(v32 + 16) = v35;
                *(v32 + 32) = v34;
                result = sub_27409D118(&v123, v33);
              }

              ++v5;
              v30 -= 40;
              v13 += 40;
            }

            while (v5 < v29);
            v28 = v118;
          }
        }

        goto LABEL_27;
      }

      __swift_destroy_boxed_opaque_existential_1Tm(v120);
      __swift_destroy_boxed_opaque_existential_1Tm(&v123);
    }

    v28 = v8 + 1;
LABEL_27:
    v36 = a3[1];
    if (v28 >= v36)
    {
      goto LABEL_36;
    }

    if (__OFSUB__(v28, v10))
    {
      goto LABEL_132;
    }

    if (v28 - v10 >= a4)
    {
LABEL_36:
      v8 = v28;
      if (v28 < v10)
      {
        goto LABEL_131;
      }

      goto LABEL_37;
    }

    if (__OFADD__(v10, a4))
    {
      goto LABEL_133;
    }

    if (v10 + a4 >= v36)
    {
      v37 = a3[1];
    }

    else
    {
      v37 = v10 + a4;
    }

    if (v37 < v10)
    {
LABEL_134:
      __break(1u);
LABEL_135:
      __break(1u);
      goto LABEL_136;
    }

    if (v28 == v37)
    {
      goto LABEL_36;
    }

    v107 = v9;
    v113 = v6;
    v85 = *a3;
    v86 = *a3 + 40 * v28;
    v119 = v28;
    v87 = v10 - v28;
    v111 = v37;
LABEL_89:
    v112 = v87;
    v88 = v87;
    v115 = v86;
LABEL_90:
    sub_27409D4E4(v86, &v123);
    sub_27409D4E4(v86 - 40, v120);
    v89 = v124;
    v90 = v125;
    __swift_project_boxed_opaque_existential_1(&v123, v124);
    (*(v90 + 16))(v89, v90);
    v91 = sub_2741C7ECC();
    v93 = v92;

    v94 = v121;
    v95 = v122;
    __swift_project_boxed_opaque_existential_1(v120, v121);
    (*(v95 + 16))(v94, v95);
    v5 = sub_2741C7ECC();
    v97 = v96;

    if (v91 != v5 || v93 != v97)
    {
      break;
    }

    __swift_destroy_boxed_opaque_existential_1Tm(v120);
    __swift_destroy_boxed_opaque_existential_1Tm(&v123);
LABEL_88:
    v86 = v115 + 40;
    v8 = v111;
    v87 = v112 - 1;
    if (++v119 != v111)
    {
      goto LABEL_89;
    }

    v6 = v113;
    v9 = v107;
    if (v111 < v10)
    {
      goto LABEL_131;
    }

LABEL_37:
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_274176EC4(0, *(v9 + 2) + 1, 1, v9);
      v9 = result;
    }

    v39 = *(v9 + 2);
    v38 = *(v9 + 3);
    v40 = v39 + 1;
    if (v39 >= v38 >> 1)
    {
      result = sub_274176EC4((v38 > 1), v39 + 1, 1, v9);
      v9 = result;
    }

    *(v9 + 2) = v40;
    v41 = &v9[16 * v39];
    *(v41 + 4) = v10;
    *(v41 + 5) = v8;
    v42 = *v110;
    if (!*v110)
    {
      goto LABEL_141;
    }

    if (v39)
    {
      while (2)
      {
        v43 = v40 - 1;
        if (v40 >= 4)
        {
          v48 = &v9[16 * v40 + 32];
          v49 = *(v48 - 64);
          v50 = *(v48 - 56);
          v54 = __OFSUB__(v50, v49);
          v51 = v50 - v49;
          if (v54)
          {
            goto LABEL_118;
          }

          v53 = *(v48 - 48);
          v52 = *(v48 - 40);
          v54 = __OFSUB__(v52, v53);
          v46 = v52 - v53;
          v47 = v54;
          if (v54)
          {
            goto LABEL_119;
          }

          v55 = &v9[16 * v40];
          v57 = *v55;
          v56 = *(v55 + 1);
          v54 = __OFSUB__(v56, v57);
          v58 = v56 - v57;
          if (v54)
          {
            goto LABEL_121;
          }

          v54 = __OFADD__(v46, v58);
          v59 = v46 + v58;
          if (v54)
          {
            goto LABEL_124;
          }

          if (v59 >= v51)
          {
            v77 = &v9[16 * v43 + 32];
            v79 = *v77;
            v78 = *(v77 + 1);
            v54 = __OFSUB__(v78, v79);
            v80 = v78 - v79;
            if (v54)
            {
              goto LABEL_128;
            }

            if (v46 < v80)
            {
              v43 = v40 - 2;
            }
          }

          else
          {
LABEL_56:
            if (v47)
            {
              goto LABEL_120;
            }

            v60 = &v9[16 * v40];
            v62 = *v60;
            v61 = *(v60 + 1);
            v63 = __OFSUB__(v61, v62);
            v64 = v61 - v62;
            v65 = v63;
            if (v63)
            {
              goto LABEL_123;
            }

            v66 = &v9[16 * v43 + 32];
            v68 = *v66;
            v67 = *(v66 + 1);
            v54 = __OFSUB__(v67, v68);
            v69 = v67 - v68;
            if (v54)
            {
              goto LABEL_126;
            }

            if (__OFADD__(v64, v69))
            {
              goto LABEL_127;
            }

            if (v64 + v69 < v46)
            {
              goto LABEL_70;
            }

            if (v46 < v69)
            {
              v43 = v40 - 2;
            }
          }
        }

        else
        {
          if (v40 == 3)
          {
            v44 = *(v9 + 4);
            v45 = *(v9 + 5);
            v54 = __OFSUB__(v45, v44);
            v46 = v45 - v44;
            v47 = v54;
            goto LABEL_56;
          }

          v70 = &v9[16 * v40];
          v72 = *v70;
          v71 = *(v70 + 1);
          v54 = __OFSUB__(v71, v72);
          v64 = v71 - v72;
          v65 = v54;
LABEL_70:
          if (v65)
          {
            goto LABEL_122;
          }

          v73 = &v9[16 * v43];
          v75 = *(v73 + 4);
          v74 = *(v73 + 5);
          v54 = __OFSUB__(v74, v75);
          v76 = v74 - v75;
          if (v54)
          {
            goto LABEL_125;
          }

          if (v76 < v64)
          {
            break;
          }
        }

        v81 = v43 - 1;
        if (v43 - 1 >= v40)
        {
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
          goto LABEL_134;
        }

        if (!*a3)
        {
          goto LABEL_138;
        }

        v82 = *&v9[16 * v81 + 32];
        v83 = *&v9[16 * v43 + 40];
        sub_2741B82F0((*a3 + 40 * v82), (*a3 + 40 * *&v9[16 * v43 + 32]), *a3 + 40 * v83, v42);
        if (v6)
        {
        }

        if (v83 < v82)
        {
          goto LABEL_116;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v9 = sub_2741B412C(v9);
        }

        if (v81 >= *(v9 + 2))
        {
          goto LABEL_117;
        }

        v84 = &v9[16 * v81];
        *(v84 + 4) = v82;
        *(v84 + 5) = v83;
        v126 = v9;
        result = sub_2741B40A0(v43);
        v9 = v126;
        v40 = *(v126 + 2);
        if (v40 <= 1)
        {
          break;
        }

        continue;
      }
    }

    v7 = a3[1];
    if (v8 >= v7)
    {
      goto LABEL_102;
    }
  }

  v99 = sub_2741C86DC();

  __swift_destroy_boxed_opaque_existential_1Tm(v120);
  result = __swift_destroy_boxed_opaque_existential_1Tm(&v123);
  if ((v99 & 1) == 0)
  {
    goto LABEL_88;
  }

  if (v85)
  {
    sub_27409D118(v86, &v123);
    v100 = *(v86 - 24);
    *v86 = *(v86 - 40);
    *(v86 + 16) = v100;
    *(v86 + 32) = *(v86 - 8);
    sub_27409D118(&v123, v86 - 40);
    v86 -= 40;
    if (__CFADD__(v88++, 1))
    {
      goto LABEL_88;
    }

    goto LABEL_90;
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
  return result;
}

uint64_t sub_2741B82F0(char *__src, char *a2, unint64_t a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v7 = a2;
  v8 = a2 - __src;
  v9 = (a2 - __src) / 40;
  v10 = a3 - a2;
  v11 = (a3 - a2) / 40;
  if (v9 >= v11)
  {
    if (a4 != a2 || &a2[40 * v11] <= a4)
    {
      memmove(a4, a2, 40 * v11);
      v7 = a2;
    }

    v62 = &v4[40 * v11];
    if (v10 >= 40 && v7 > __src)
    {
      v30 = v7;
      v55 = v4;
      do
      {
        __dst = v30;
        v31 = (v30 - 40);
        v32 = (v62 - 40);
        v5 -= 40;
        while (1)
        {
          sub_27409D4E4(v32, v59);
          v35 = v31;
          sub_27409D4E4(v31, v56);
          v36 = v60;
          v37 = v61;
          __swift_project_boxed_opaque_existential_1(v59, v60);
          (*(v37 + 16))(v36, v37);
          v38 = sub_2741C7ECC();
          v40 = v39;

          v42 = v57;
          v41 = v58;
          __swift_project_boxed_opaque_existential_1(v56, v57);
          (*(v41 + 16))(v42, v41);
          v43 = sub_2741C7ECC();
          v45 = v44;

          v46 = v38 == v43 && v40 == v45;
          v47 = v46 ? 0 : sub_2741C86DC();

          __swift_destroy_boxed_opaque_existential_1Tm(v56);
          __swift_destroy_boxed_opaque_existential_1Tm(v59);
          if (v47)
          {
            break;
          }

          if (v5 + 40 != v32 + 40)
          {
            v48 = *v32;
            v49 = *(v32 + 16);
            *(v5 + 32) = *(v32 + 32);
            *v5 = v48;
            *(v5 + 16) = v49;
          }

          v33 = v32 - 40;
          v5 -= 40;
          v34 = v32 > v55;
          v32 -= 40;
          v31 = v35;
          if (!v34)
          {
            v62 = (v33 + 40);
            v7 = __dst;
            v4 = v55;
            goto LABEL_43;
          }
        }

        v7 = v35;
        if ((v5 + 40) != __dst)
        {
          v50 = *v35;
          v51 = *(v35 + 16);
          *(v5 + 32) = *(v35 + 32);
          *v5 = v50;
          *(v5 + 16) = v51;
        }

        v62 = (v32 + 40);
        v4 = v55;
        if (v32 + 40 <= v55)
        {
          break;
        }

        v30 = v7;
      }

      while (v7 > __src);
      v62 = (v32 + 40);
    }
  }

  else
  {
    if (a4 != __src || &__src[40 * v9] <= a4)
    {
      memmove(a4, __src, 40 * v9);
      v7 = a2;
    }

    v62 = &v4[40 * v9];
    if (v8 >= 40 && v7 < v5)
    {
      while (1)
      {
        v13 = v7;
        sub_27409D4E4(v7, v59);
        sub_27409D4E4(v4, v56);
        v14 = v60;
        v15 = v61;
        __swift_project_boxed_opaque_existential_1(v59, v60);
        (*(v15 + 16))(v14, v15);
        v16 = sub_2741C7ECC();
        v18 = v17;

        v19 = v57;
        v20 = v58;
        __swift_project_boxed_opaque_existential_1(v56, v57);
        (*(v20 + 16))(v19, v20);
        v21 = sub_2741C7ECC();
        v23 = v22;

        v24 = v16 == v21 && v18 == v23;
        if (v24)
        {
          break;
        }

        v25 = sub_2741C86DC();

        __swift_destroy_boxed_opaque_existential_1Tm(v56);
        __swift_destroy_boxed_opaque_existential_1Tm(v59);
        if ((v25 & 1) == 0)
        {
          goto LABEL_15;
        }

        v26 = v13;
        v7 = v13 + 40;
        if (__src != v13)
        {
          goto LABEL_16;
        }

LABEL_17:
        __src += 40;
        if (v4 >= v62 || v7 >= v5)
        {
          goto LABEL_19;
        }
      }

      __swift_destroy_boxed_opaque_existential_1Tm(v56);
      __swift_destroy_boxed_opaque_existential_1Tm(v59);
LABEL_15:
      v26 = v4;
      v24 = __src == v4;
      v4 += 40;
      v7 = v13;
      if (v24)
      {
        goto LABEL_17;
      }

LABEL_16:
      v27 = *v26;
      v28 = *(v26 + 1);
      *(__src + 4) = *(v26 + 4);
      *__src = v27;
      *(__src + 1) = v28;
      goto LABEL_17;
    }

LABEL_19:
    v7 = __src;
  }

LABEL_43:
  v52 = (v62 - v4) / 40;
  if (v7 != v4 || v7 >= &v4[40 * v52])
  {
    memmove(v7, v4, 40 * v52);
  }

  return 1;
}

uint64_t sub_2741B8794(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2741B87E4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093B520, &qword_2741D8510);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t sub_2741B88C8(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093B520, &qword_2741D8510) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_27409D648;

  return sub_2741B53BC(a1, v6, v7, v1 + v5, v8);
}

uint64_t sub_2741B89F4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093B520, &qword_2741D8510);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_2741B8A88(uint64_t a1)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093B520, &qword_2741D8510) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_2741B55C4(a1, v4);
}

uint64_t sub_2741B8B0C(uint64_t a1)
{
  v3 = sub_2741C6AFC();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938570, &qword_2741D1630);
  v10 = MEMORY[0x28223BE20](v8 - 8, v9);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10, v13);
  v15 = (&v27 - v14);
  swift_beginAccess();
  v16 = *(v1 + 16);
  if (*(v16 + 16) && (v17 = sub_274125ECC(), (v18 & 1) != 0))
  {
    sub_27409D4E4(*(v16 + 56) + 40 * v17, &v28);
  }

  else
  {
    v30 = 0;
    v28 = 0u;
    v29 = 0u;
  }

  swift_endAccess();
  if (!*(&v29 + 1))
  {
    sub_27409D420(&v28, &qword_280939AF8, &qword_2741D11A0);
    v31 = 0u;
    v32 = 0u;
    v33 = 0;
    goto LABEL_12;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093A230, &unk_2741D3B10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093A6D0, &unk_2741D8570);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v33 = 0;
    v31 = 0u;
    v32 = 0u;
    goto LABEL_12;
  }

  if (!*(&v32 + 1))
  {
LABEL_12:
    sub_27409D420(&v31, &qword_28093A6C8, &unk_2741D6570);
    v34 = 0;
    v35 = 0xE000000000000000;
    sub_2741C856C();
    MEMORY[0x2743E5FB0](0xD000000000000018, 0x80000002741E3AE0);
    LOBYTE(v31) = 2;
    sub_2741C862C();
    sub_2740CB218(v34, v35, 0xD00000000000001CLL, 0x80000002741E3CC0);
  }

  sub_27409D118(&v31, &v34);
  *&v31 = 0;
  *(&v31 + 1) = 0xE000000000000000;
  sub_2741C856C();

  *&v31 = 0xD000000000000014;
  *(&v31 + 1) = 0x80000002741E3CE0;
  sub_2740A6D94(a1, v15, &qword_280938570, &qword_2741D1630);
  v19 = type metadata accessor for KnownNetwork(0);
  if ((*(*(v19 - 8) + 48))(v15, 1, v19) == 1)
  {
    sub_27409D420(v15, &qword_280938570, &qword_2741D1630);
    v20 = 0xE300000000000000;
    v21 = 7104878;
  }

  else
  {
    v21 = *v15;
    v20 = v15[1];

    sub_27409D050(v15);
  }

  MEMORY[0x2743E5FB0](v21, v20);

  v23 = v31;
  if (qword_280937360 != -1)
  {
    swift_once();
  }

  v24 = __swift_project_value_buffer(v3, qword_280945DD8);
  (*(v4 + 16))(v7, v24, v3);
  sub_2740CA9CC(0x5D5355544154535BLL, 0xE800000000000000, v23, *(&v23 + 1));

  (*(v4 + 8))(v7, v3);
  sub_2740A6D94(a1, v12, &qword_280938570, &qword_2741D1630);
  v25 = v36;
  v26 = v37;
  __swift_mutable_project_boxed_opaque_existential_1(&v34, v36);
  (*(v26 + 48))(v12, v25, v26);
  return __swift_destroy_boxed_opaque_existential_1Tm(&v34);
}

uint64_t sub_2741B8FB8(uint64_t a1)
{
  v3 = sub_2741C6AFC();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v8 = *(v1 + 16);
  if (*(v8 + 16) && (v9 = sub_274125ECC(), (v10 & 1) != 0))
  {
    sub_27409D4E4(*(v8 + 56) + 40 * v9, &v19);
  }

  else
  {
    v21 = 0;
    v19 = 0u;
    v20 = 0u;
  }

  swift_endAccess();
  if (!*(&v20 + 1))
  {
    sub_27409D420(&v19, &qword_280939AF8, &qword_2741D11A0);
    v22 = 0u;
    v23 = 0u;
    v24 = 0;
    goto LABEL_13;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093A230, &unk_2741D3B10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093B530, &qword_2741D8588);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v24 = 0;
    v22 = 0u;
    v23 = 0u;
    goto LABEL_13;
  }

  if (!*(&v23 + 1))
  {
LABEL_13:
    sub_27409D420(&v22, &qword_280938E10, &qword_2741D8580);
    v25 = 0;
    v26 = 0xE000000000000000;
    sub_2741C856C();
    MEMORY[0x2743E5FB0](0xD000000000000018, 0x80000002741E3AE0);
    LOBYTE(v22) = 0;
    sub_2741C862C();
    sub_2740CB218(v25, v26, 0xD000000000000013, 0x80000002741E3C40);
  }

  sub_27409D118(&v22, &v25);
  *&v22 = 0;
  *(&v22 + 1) = 0xE000000000000000;
  sub_2741C856C();

  strcpy(&v22, "scanStatus='");
  BYTE13(v22) = 0;
  HIWORD(v22) = -5120;
  v11 = sub_2740E3040(a1);
  MEMORY[0x2743E5FB0](v11);

  MEMORY[0x2743E5FB0](10272, 0xE200000000000000);
  LOBYTE(v19) = a1;
  v12 = sub_2741C86CC();
  MEMORY[0x2743E5FB0](v12);

  MEMORY[0x2743E5FB0](10025, 0xE200000000000000);
  v13 = v22;
  if (qword_280937360 != -1)
  {
    swift_once();
  }

  v14 = __swift_project_value_buffer(v3, qword_280945DD8);
  (*(v4 + 16))(v7, v14, v3);
  sub_2740CA9CC(0x5D4E4143535BLL, 0xE600000000000000, v13, *(&v13 + 1));

  (*(v4 + 8))(v7, v3);
  v15 = v27;
  v16 = v28;
  __swift_mutable_project_boxed_opaque_existential_1(&v25, v27);
  (*(v16 + 24))(a1, v15, v16);
  return __swift_destroy_boxed_opaque_existential_1Tm(&v25);
}

uint64_t sub_2741B9380(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_2741C6AFC();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v11 = *(v2 + 16);
  if (*(v11 + 16) && (v12 = sub_274125ECC(), (v13 & 1) != 0))
  {
    sub_27409D4E4(*(v11 + 56) + 40 * v12, &v52);
  }

  else
  {
    *&v54 = 0;
    v52 = 0u;
    v53 = 0u;
  }

  swift_endAccess();
  if (!*(&v53 + 1))
  {
    sub_27409D420(&v52, &qword_280939AF8, &qword_2741D11A0);
    v61 = 0u;
    v62 = 0u;
    *&v63 = 0;
    goto LABEL_11;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093A230, &unk_2741D3B10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093A238, &qword_2741D4780);
  if ((swift_dynamicCast() & 1) == 0)
  {
    *&v63 = 0;
    v61 = 0u;
    v62 = 0u;
    goto LABEL_11;
  }

  if (!*(&v62 + 1))
  {
LABEL_11:
    sub_27409D420(&v61, &qword_28093A228, &unk_2741D4770);
    v18 = 4;
    goto LABEL_12;
  }

  sub_27409D118(&v61, &v52);
  __swift_project_boxed_opaque_existential_1(&v52, *(&v53 + 1));
  v14 = sub_2741BC2B4(&qword_28093A3E0, type metadata accessor for AssociationState, &unk_2741D0B34);
  v47 = v3;
  v15 = *(v14 + 16);
  v16 = type metadata accessor for AssociationState(0);
  v17 = v15(v16, v14);
  v3 = v47;
  v18 = v17;
  __swift_destroy_boxed_opaque_existential_1Tm(&v52);
LABEL_12:
  swift_beginAccess();
  v19 = *(v3 + 16);
  if (*(v19 + 16) && (v20 = sub_274125ECC(), (v21 & 1) != 0))
  {
    sub_27409D4E4(*(v19 + 56) + 40 * v20, &v61);
  }

  else
  {
    *&v63 = 0;
    v61 = 0u;
    v62 = 0u;
  }

  swift_endAccess();
  if (!*(&v62 + 1))
  {
    sub_27409D420(&v61, &qword_280939AF8, &qword_2741D11A0);
    v52 = 0u;
    v53 = 0u;
    *&v54 = 0;
    goto LABEL_27;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093A230, &unk_2741D3B10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093A6D0, &unk_2741D8570);
  if ((swift_dynamicCast() & 1) == 0)
  {
    *&v54 = 0;
    v52 = 0u;
    v53 = 0u;
    goto LABEL_27;
  }

  if (!*(&v53 + 1))
  {
LABEL_27:
    sub_27409D420(&v52, &qword_28093A6C8, &unk_2741D6570);
    *&v52 = 0;
    *(&v52 + 1) = 0xE000000000000000;
    sub_2741C856C();
    MEMORY[0x2743E5FB0](0xD000000000000018, 0x80000002741E3AE0);
    LOBYTE(v61) = 2;
    sub_2741C862C();
    sub_2740CB218(v52, *(&v52 + 1), 0xD00000000000002BLL, 0x80000002741E3B20);
  }

  sub_27409D118(&v52, v68);
  if ((v18 | 2) == 3)
  {
    __swift_project_boxed_opaque_existential_1(v68, v69);
    v22 = sub_2741BC2B4(&qword_28093A6D8, type metadata accessor for CurrentNetworkState, &unk_2741D7354);
    v23 = *(v22 + 16);
    v24 = type metadata accessor for CurrentNetworkState(0);
    v23(&v61, v24, v22);
    if (*(&v61 + 1))
    {
      v56 = v65;
      v57 = v66;
      v58 = v67;
      v52 = v61;
      v53 = v62;
      v54 = v63;
      v55 = v64;
      sub_2740A6D94(a1, v50, &qword_280938340, &qword_2741D1660);
      if (*(&v50[0] + 1))
      {
        v65 = v50[4];
        v66 = v50[5];
        v67 = v51;
        v61 = v50[0];
        v62 = v50[1];
        v63 = v50[2];
        v64 = v50[3];
        *&v50[0] = 0;
        *(&v50[0] + 1) = 0xE000000000000000;
        sub_2741C856C();
        MEMORY[0x2743E5FB0](0xD000000000000024, 0x80000002741E3B70);
        v25 = sub_27409DCD8();
        MEMORY[0x2743E5FB0](v25);

        MEMORY[0x2743E5FB0](0xD000000000000013, 0x80000002741E3BA0);
        v26 = sub_27409DCD8();
        MEMORY[0x2743E5FB0](v26);

        MEMORY[0x2743E5FB0](0xD00000000000001ALL, 0x80000002741E3BC0);
        v27 = v50[0];
        if (qword_280937360 != -1)
        {
          swift_once();
        }

        v28 = __swift_project_value_buffer(v6, qword_280945DD8);
        (*(v7 + 16))(v10, v28, v6);
        sub_2740CA9CC(0x5D5355544154535BLL, 0xE800000000000000, v27, *(&v27 + 1));

        (*(v7 + 8))(v10, v6);
        sub_2740ACB2C(&v61);
        sub_2740ACB2C(&v52);
      }

      else
      {
        sub_2740ACB2C(&v52);
        sub_27409D420(v50, &qword_280938340, &qword_2741D1660);
      }
    }

    else
    {
      sub_27409D420(&v61, &qword_280938340, &qword_2741D1660);
    }

    return __swift_destroy_boxed_opaque_existential_1Tm(v68);
  }

  v47 = a2;
  *&v52 = 0;
  *(&v52 + 1) = 0xE000000000000000;
  sub_2741C856C();

  *&v50[0] = 0xD00000000000001DLL;
  *(&v50[0] + 1) = 0x80000002741E3B50;
  sub_2740A6D94(a1, &v52, &qword_280938340, &qword_2741D1660);
  if (*(&v52 + 1))
  {
    v30 = sub_27409DCD8();
    v32 = v31;
    sub_2740ACB2C(&v52);
  }

  else
  {
    v30 = 7104878;
    sub_27409D420(&v52, &qword_280938340, &qword_2741D1660);
    v32 = 0xE300000000000000;
  }

  MEMORY[0x2743E5FB0](v30, v32);

  MEMORY[0x2743E5FB0](0x27206D6F72662027, 0xE800000000000000);
  __swift_project_boxed_opaque_existential_1(v68, v69);
  v33 = sub_2741BC2B4(&qword_28093A6D8, type metadata accessor for CurrentNetworkState, &unk_2741D7354);
  v34 = *(v33 + 16);
  v44 = type metadata accessor for CurrentNetworkState(0);
  v45 = v34;
  v46 = v33;
  v34(&v52, v44, v33);
  if (*(&v52 + 1))
  {
    sub_2740ACAC8(&v52, &v61);
    sub_27409D420(&v52, &qword_280938340, &qword_2741D1660);
    v35 = sub_27409DCD8();
    v37 = v36;
    sub_2740ACB2C(&v61);
  }

  else
  {
    v35 = 7104878;
    sub_27409D420(&v52, &qword_280938340, &qword_2741D1660);
    v37 = 0xE300000000000000;
  }

  MEMORY[0x2743E5FB0](v35, v37);

  MEMORY[0x2743E5FB0](39, 0xE100000000000000);
  v38 = v50[0];
  if (qword_280937360 != -1)
  {
    swift_once();
  }

  v39 = __swift_project_value_buffer(v6, qword_280945DD8);
  (*(v7 + 16))(v10, v39, v6);
  sub_2740CA9CC(0x5D5355544154535BLL, 0xE800000000000000, v38, *(&v38 + 1));

  (*(v7 + 8))(v10, v6);
  __swift_project_boxed_opaque_existential_1(v68, v69);
  v45(&v61, v44, v46);
  sub_2740A6D94(&v61, &v52, &qword_280938340, &qword_2741D1660);
  sub_2740A6D94(a1, v59, &qword_280938340, &qword_2741D1660);
  v40 = v47;
  if (!*(&v52 + 1))
  {
    sub_27409D420(&v61, &qword_280938340, &qword_2741D1660);
    if (!*(&v59[0] + 1))
    {
      goto LABEL_43;
    }

    goto LABEL_45;
  }

  sub_2740A6D94(&v52, v50, &qword_280938340, &qword_2741D1660);
  if (!*(&v59[0] + 1))
  {
    sub_27409D420(&v61, &qword_280938340, &qword_2741D1660);
    sub_2740ACB2C(v50);
LABEL_45:
    sub_27409D420(&v52, &qword_280939B80, &qword_2741D4800);
LABEL_46:
    sub_2740A6D94(a1, &v52, &qword_280938340, &qword_2741D1660);
    v41 = v69;
    v42 = v70;
    __swift_mutable_project_boxed_opaque_existential_1(v68, v69);
    (*(v42 + 24))(&v52, v41, v42);
    goto LABEL_47;
  }

  v48[4] = v59[4];
  v48[5] = v59[5];
  v49 = v60;
  v48[0] = v59[0];
  v48[1] = v59[1];
  v48[2] = v59[2];
  v48[3] = v59[3];
  if (v50[0] != v59[0])
  {
    v43 = sub_2741C86DC();
    sub_27409D420(&v61, &qword_280938340, &qword_2741D1660);
    sub_2740ACB2C(v48);
    sub_2740ACB2C(v50);
    sub_27409D420(&v52, &qword_280938340, &qword_2741D1660);
    if (v43)
    {
      goto LABEL_47;
    }

    goto LABEL_46;
  }

  sub_27409D420(&v61, &qword_280938340, &qword_2741D1660);
  sub_2740ACB2C(v48);
  sub_2740ACB2C(v50);
LABEL_43:
  sub_27409D420(&v52, &qword_280938340, &qword_2741D1660);
LABEL_47:
  sub_2741BA454(v40);
  return __swift_destroy_boxed_opaque_existential_1Tm(v68);
}

uint64_t sub_2741B9F04(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_2741C6AFC();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v11 = *(v2 + 16);
  if (*(v11 + 16) && (v12 = sub_274125ECC(), (v13 & 1) != 0))
  {
    sub_27409D4E4(*(v11 + 56) + 40 * v12, &v36);
  }

  else
  {
    v38 = 0;
    v37 = 0u;
    v36 = 0u;
  }

  swift_endAccess();
  if (!*(&v37 + 1))
  {
    sub_27409D420(&v36, &qword_280939AF8, &qword_2741D11A0);
    v33 = 0u;
    v34 = 0u;
    v35 = 0;
    return sub_27409D420(&v33, &qword_28093A228, &unk_2741D4770);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093A230, &unk_2741D3B10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093A238, &qword_2741D4780);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v35 = 0;
    v33 = 0u;
    v34 = 0u;
    return sub_27409D420(&v33, &qword_28093A228, &unk_2741D4770);
  }

  if (!*(&v34 + 1))
  {
    return sub_27409D420(&v33, &qword_28093A228, &unk_2741D4770);
  }

  v29 = a2;
  sub_27409D118(&v33, &v36);
  *&v33 = 0;
  *(&v33 + 1) = 0xE000000000000000;
  sub_2741C856C();
  MEMORY[0x2743E5FB0](0xD000000000000011, 0x80000002741E3C20);
  __swift_project_boxed_opaque_existential_1(&v36, *(&v37 + 1));
  v14 = sub_2741BC2B4(&qword_28093A3E0, type metadata accessor for AssociationState, &unk_2741D0B34);
  v15 = *(v14 + 16);
  v16 = type metadata accessor for AssociationState(0);
  LOBYTE(v30) = v15(v16, v14);
  sub_2741C862C();
  MEMORY[0x2743E5FB0](540945696, 0xE400000000000000);
  LOBYTE(v30) = a1;
  sub_2741C862C();
  v17 = v33;
  if (qword_280937360 != -1)
  {
    swift_once();
  }

  v18 = __swift_project_value_buffer(v6, qword_280945DD8);
  (*(v7 + 16))(v10, v18, v6);
  sub_2740CA9CC(0x5D5355544154535BLL, 0xE800000000000000, v17, *(&v17 + 1));

  (*(v7 + 8))(v10, v6);
  v19 = *(&v37 + 1);
  v20 = v38;
  __swift_mutable_project_boxed_opaque_existential_1(&v36, *(&v37 + 1));
  (*(v20 + 24))(a1, v19, v20);
  sub_2740A6D94(v29, &v33, &qword_2809395D8, &qword_2741CFF78);
  v21 = *(&v37 + 1);
  v22 = v38;
  __swift_mutable_project_boxed_opaque_existential_1(&v36, *(&v37 + 1));
  (*(v22 + 48))(&v33, v21, v22);
  swift_beginAccess();
  v23 = *(v3 + 16);
  if (*(v23 + 16) && (v24 = sub_274125ECC(), (v25 & 1) != 0))
  {
    sub_27409D4E4(*(v23 + 56) + 40 * v24, &v33);
  }

  else
  {
    v35 = 0;
    v33 = 0u;
    v34 = 0u;
  }

  swift_endAccess();
  if (!*(&v34 + 1))
  {
    sub_27409D420(&v33, &qword_280939AF8, &qword_2741D11A0);
    v30 = 0u;
    v31 = 0u;
    v32 = 0;
    goto LABEL_23;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093A6D0, &unk_2741D8570);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v32 = 0;
    v30 = 0u;
    v31 = 0u;
    goto LABEL_23;
  }

  if (!*(&v31 + 1))
  {
LABEL_23:
    sub_27409D420(&v30, &qword_28093A6C8, &unk_2741D6570);
    return __swift_destroy_boxed_opaque_existential_1Tm(&v36);
  }

  sub_27409D118(&v30, &v33);
  v27 = *(&v34 + 1);
  v28 = v35;
  __swift_mutable_project_boxed_opaque_existential_1(&v33, *(&v34 + 1));
  (*(v28 + 192))(0, v27, v28);
  __swift_destroy_boxed_opaque_existential_1Tm(&v33);
  return __swift_destroy_boxed_opaque_existential_1Tm(&v36);
}

uint64_t sub_2741BA454(uint64_t a1)
{
  v3 = sub_2741C6AFC();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v8 = *(v1 + 16);
  if (*(v8 + 16) && (v9 = sub_274125ECC(), (v10 & 1) != 0))
  {
    sub_27409D4E4(*(v8 + 56) + 40 * v9, &v35);
  }

  else
  {
    v37 = 0;
    v35 = 0u;
    v36 = 0u;
  }

  swift_endAccess();
  if (!*(&v36 + 1))
  {
    sub_27409D420(&v35, &qword_280939AF8, &qword_2741D11A0);
    v30 = 0u;
    v31 = 0u;
    v32 = 0;
    goto LABEL_14;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093A230, &unk_2741D3B10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093A6D0, &unk_2741D8570);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v32 = 0;
    v30 = 0u;
    v31 = 0u;
    goto LABEL_14;
  }

  if (!*(&v31 + 1))
  {
LABEL_14:
    sub_27409D420(&v30, &qword_28093A6C8, &unk_2741D6570);
    *&v30 = 0;
    *(&v30 + 1) = 0xE000000000000000;
    sub_2741C856C();
    MEMORY[0x2743E5FB0](0xD000000000000018, 0x80000002741E3AE0);
    LOBYTE(v35) = 2;
    sub_2741C862C();
    sub_2740CB218(v30, *(&v30 + 1), 0xD00000000000001CLL, 0x80000002741E3BE0);
  }

  sub_27409D118(&v30, v38);
  __swift_project_boxed_opaque_existential_1(v38, v39);
  v11 = sub_2741BC2B4(&qword_28093A6D8, type metadata accessor for CurrentNetworkState, &unk_2741D7354);
  v12 = *(v11 + 88);
  v25 = type metadata accessor for CurrentNetworkState(0);
  v26 = v12;
  v12(&v35, v25, v11);
  sub_2740A6D94(&v35, &v30, &qword_280938340, &qword_2741D1660);
  sub_2740A6D94(a1, v33, &qword_280938340, &qword_2741D1660);
  if (!*(&v30 + 1))
  {
    sub_27409D420(&v35, &qword_280938340, &qword_2741D1660);
    if (!*(&v33[0] + 1))
    {
      goto LABEL_16;
    }

    goto LABEL_18;
  }

  sub_2740A6D94(&v30, v29, &qword_280938340, &qword_2741D1660);
  if (!*(&v33[0] + 1))
  {
    sub_27409D420(&v35, &qword_280938340, &qword_2741D1660);
    sub_2740ACB2C(v29);
LABEL_18:
    sub_27409D420(&v30, &qword_280939B80, &qword_2741D4800);
    goto LABEL_19;
  }

  v27[4] = v33[4];
  v27[5] = v33[5];
  v28 = v34;
  v27[0] = v33[0];
  v27[1] = v33[1];
  v27[2] = v33[2];
  v27[3] = v33[3];
  if (v29[0] != v33[0])
  {
    v24 = sub_2741C86DC();
    sub_27409D420(&v35, &qword_280938340, &qword_2741D1660);
    sub_2740ACB2C(v27);
    sub_2740ACB2C(v29);
    sub_27409D420(&v30, &qword_280938340, &qword_2741D1660);
    if (v24)
    {
      return __swift_destroy_boxed_opaque_existential_1Tm(v38);
    }

LABEL_19:
    *&v30 = 0;
    *(&v30 + 1) = 0xE000000000000000;
    sub_2741C856C();

    *&v29[0] = 0xD00000000000001CLL;
    *(&v29[0] + 1) = 0x80000002741E3C00;
    sub_2740A6D94(a1, &v30, &qword_280938340, &qword_2741D1660);
    if (*(&v30 + 1))
    {
      v14 = sub_27409DCD8();
      v16 = v15;
      sub_2740ACB2C(&v30);
    }

    else
    {
      v14 = 7104878;
      sub_27409D420(&v30, &qword_280938340, &qword_2741D1660);
      v16 = 0xE300000000000000;
    }

    MEMORY[0x2743E5FB0](v14, v16);

    MEMORY[0x2743E5FB0](0x27206D6F72662027, 0xE800000000000000);
    __swift_project_boxed_opaque_existential_1(v38, v39);
    v26(&v30, v25, v11);
    if (*(&v30 + 1))
    {
      sub_2740ACAC8(&v30, &v35);
      sub_27409D420(&v30, &qword_280938340, &qword_2741D1660);
      v17 = sub_27409DCD8();
      v19 = v18;
      sub_2740ACB2C(&v35);
    }

    else
    {
      v17 = 7104878;
      sub_27409D420(&v30, &qword_280938340, &qword_2741D1660);
      v19 = 0xE300000000000000;
    }

    MEMORY[0x2743E5FB0](v17, v19);

    MEMORY[0x2743E5FB0](39, 0xE100000000000000);
    v20 = v29[0];
    if (qword_280937360 != -1)
    {
      swift_once();
    }

    v21 = __swift_project_value_buffer(v3, qword_280945DD8);
    (*(v4 + 16))(v7, v21, v3);
    sub_2740CA9CC(0x5D5355544154535BLL, 0xE800000000000000, v20, *(&v20 + 1));

    (*(v4 + 8))(v7, v3);
    sub_2740A6D94(a1, &v30, &qword_280938340, &qword_2741D1660);
    v22 = v39;
    v23 = v40;
    __swift_mutable_project_boxed_opaque_existential_1(v38, v39);
    (*(v23 + 96))(&v30, v22, v23);
    return __swift_destroy_boxed_opaque_existential_1Tm(v38);
  }

  sub_27409D420(&v35, &qword_280938340, &qword_2741D1660);
  sub_2740ACB2C(v27);
  sub_2740ACB2C(v29);
LABEL_16:
  sub_27409D420(&v30, &qword_280938340, &qword_2741D1660);
  return __swift_destroy_boxed_opaque_existential_1Tm(v38);
}

uint64_t sub_2741BAB64@<X0>(uint64_t a1@<X8>)
{
  swift_beginAccess();
  v3 = *(v1 + 16);
  if (*(v3 + 16) && (v4 = sub_274125ECC(), (v5 & 1) != 0))
  {
    sub_27409D4E4(*(v3 + 56) + 40 * v4, a1);
  }

  else
  {
    *(a1 + 32) = 0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
  }

  return swift_endAccess();
}

uint64_t sub_2741BABF0(uint64_t a1, char a2)
{
  v5 = sub_2741C6AFC();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v10 = *(v2 + 16);
  if (*(v10 + 16) && (v11 = sub_274125ECC(), (v12 & 1) != 0))
  {
    sub_27409D4E4(*(v10 + 56) + 40 * v11, &v27);
  }

  else
  {
    v29 = 0;
    v27 = 0u;
    v28 = 0u;
  }

  swift_endAccess();
  if (!*(&v28 + 1))
  {
    sub_27409D420(&v27, &qword_280939AF8, &qword_2741D11A0);
    v30 = 0u;
    v31 = 0u;
    v32 = 0;
    goto LABEL_13;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093A230, &unk_2741D3B10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093A6D0, &unk_2741D8570);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v32 = 0;
    v30 = 0u;
    v31 = 0u;
    goto LABEL_13;
  }

  if (!*(&v31 + 1))
  {
LABEL_13:
    sub_27409D420(&v30, &qword_28093A6C8, &unk_2741D6570);
    v33 = 0;
    v34 = 0xE000000000000000;
    sub_2741C856C();
    MEMORY[0x2743E5FB0](0xD000000000000018, 0x80000002741E3AE0);
    LOBYTE(v30) = 2;
    sub_2741C862C();
    sub_2740CB218(v33, v34, 0xD000000000000013, 0x80000002741E3D20);
  }

  sub_27409D118(&v30, &v33);
  __swift_project_boxed_opaque_existential_1(&v33, v35);
  v13 = sub_2741BC2B4(&qword_28093A6D8, type metadata accessor for CurrentNetworkState, &unk_2741D7354);
  v14 = *(v13 + 64);
  v15 = type metadata accessor for CurrentNetworkState(0);
  v16 = v14(v15, v13);
  if ((v17 & 1) == 0)
  {
    if ((a2 & 1) == 0 && v16 == a1)
    {
      return __swift_destroy_boxed_opaque_existential_1Tm(&v33);
    }

    v21 = v35;
    v22 = v36;
    __swift_mutable_project_boxed_opaque_existential_1(&v33, v35);
    (*(v22 + 72))(a1, a2 & 1, v21, v22);
    if (a2)
    {
      return __swift_destroy_boxed_opaque_existential_1Tm(&v33);
    }

    goto LABEL_17;
  }

  if ((a2 & 1) == 0)
  {
    v18 = v35;
    v19 = v36;
    __swift_mutable_project_boxed_opaque_existential_1(&v33, v35);
    (*(v19 + 72))(a1, a2 & 1, v18, v19);
LABEL_17:
    *&v30 = 0x4C746E6572727563;
    *(&v30 + 1) = 0xEB000000003D4D51;
    v23 = sub_27416FDE8(a1);
    MEMORY[0x2743E5FB0](v23);

    v24 = v30;
    if (qword_280937360 != -1)
    {
      swift_once();
    }

    v25 = __swift_project_value_buffer(v5, qword_280945DD8);
    (*(v6 + 16))(v9, v25, v5);
    sub_2740CA9CC(0x5D5355544154535BLL, 0xE800000000000000, v24, *(&v24 + 1));

    (*(v6 + 8))(v9, v5);
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(&v33);
}

uint64_t sub_2741BB034(char a1)
{
  v3 = sub_2741C6AFC();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v8 = *(v1 + 16);
  if (*(v8 + 16) && (v9 = sub_274125ECC(), (v10 & 1) != 0))
  {
    sub_27409D4E4(*(v8 + 56) + 40 * v9, &v24);
  }

  else
  {
    v26 = 0;
    v24 = 0u;
    v25 = 0u;
  }

  swift_endAccess();
  if (!*(&v25 + 1))
  {
    sub_27409D420(&v24, &qword_280939AF8, &qword_2741D11A0);
    v27 = 0u;
    v28 = 0u;
    v29 = 0;
    goto LABEL_21;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093A230, &unk_2741D3B10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093A6D0, &unk_2741D8570);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v29 = 0;
    v27 = 0u;
    v28 = 0u;
    goto LABEL_21;
  }

  if (!*(&v28 + 1))
  {
LABEL_21:
    sub_27409D420(&v27, &qword_28093A6C8, &unk_2741D6570);
    v30 = 0;
    v31 = 0xE000000000000000;
    sub_2741C856C();
    MEMORY[0x2743E5FB0](0xD000000000000018, 0x80000002741E3AE0);
    LOBYTE(v27) = 2;
    sub_2741C862C();
    sub_2740CB218(v30, v31, 0xD000000000000017, 0x80000002741E3B00);
  }

  sub_27409D118(&v27, &v30);
  __swift_project_boxed_opaque_existential_1(&v30, v32);
  v11 = sub_2741BC2B4(&qword_28093A6D8, type metadata accessor for CurrentNetworkState, &unk_2741D7354);
  v12 = *(v11 + 184);
  v13 = type metadata accessor for CurrentNetworkState(0);
  if ((v12(v13, v11) & 1) != (a1 & 1))
  {
    v14 = v32;
    v15 = v33;
    __swift_mutable_project_boxed_opaque_existential_1(&v30, v32);
    v17 = a1 & 1;
    v16 = (a1 & 1) == 0;
    if (a1)
    {
      v18 = 1702195828;
    }

    else
    {
      v18 = 0x65736C6166;
    }

    if (v16)
    {
      v19 = 0xE500000000000000;
    }

    else
    {
      v19 = 0xE400000000000000;
    }

    (*(v15 + 192))(v17, v14, v15);
    *&v27 = 0;
    *(&v27 + 1) = 0xE000000000000000;
    sub_2741C856C();

    *&v27 = 0x41504964696C6176;
    *(&v27 + 1) = 0xEF3D737365726464;
    MEMORY[0x2743E5FB0](v18, v19);

    v20 = v27;
    if (qword_280937360 != -1)
    {
      swift_once();
    }

    v21 = __swift_project_value_buffer(v3, qword_280945DD8);
    (*(v4 + 16))(v7, v21, v3);
    sub_2740CA9CC(0x5D5355544154535BLL, 0xE800000000000000, v20, *(&v20 + 1));

    (*(v4 + 8))(v7, v3);
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(&v30);
}

uint64_t sub_2741BB460(uint64_t a1)
{
  v3 = sub_2741C6AFC();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v8 = *(v1 + 16);
  if (*(v8 + 16) && (v9 = sub_274125ECC(), (v10 & 1) != 0))
  {
    sub_27409D4E4(*(v8 + 56) + 40 * v9, &v19);
  }

  else
  {
    v21 = 0;
    v19 = 0u;
    v20 = 0u;
  }

  swift_endAccess();
  if (!*(&v20 + 1))
  {
    sub_27409D420(&v19, &qword_280939AF8, &qword_2741D11A0);
    v22 = 0u;
    v23 = 0u;
    v24 = 0;
    goto LABEL_15;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093A230, &unk_2741D3B10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093A6D0, &unk_2741D8570);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v24 = 0;
    v22 = 0u;
    v23 = 0u;
    goto LABEL_15;
  }

  if (!*(&v23 + 1))
  {
LABEL_15:
    sub_27409D420(&v22, &qword_28093A6C8, &unk_2741D6570);
    v25 = 0;
    v26 = 0xE000000000000000;
    sub_2741C856C();
    MEMORY[0x2743E5FB0](0xD000000000000018, 0x80000002741E3AE0);
    LOBYTE(v22) = 2;
    sub_2741C862C();
    sub_2740CB218(v25, v26, 0x7028657461647075, 0xEE00293A7265776FLL);
  }

  sub_27409D118(&v22, &v25);
  *&v22 = 0;
  *(&v22 + 1) = 0xE000000000000000;
  MEMORY[0x2743E5FB0](0x7473207265776F70, 0xEC0000003D657461);
  LOBYTE(v19) = a1;
  sub_2741C862C();
  v11 = v22;
  if (qword_280937360 != -1)
  {
    swift_once();
  }

  v12 = __swift_project_value_buffer(v3, qword_280945DD8);
  (*(v4 + 16))(v7, v12, v3);
  sub_2740CA9CC(0x5D5355544154535BLL, 0xE800000000000000, v11, *(&v11 + 1));

  (*(v4 + 8))(v7, v3);
  v13 = v27;
  v14 = v28;
  __swift_mutable_project_boxed_opaque_existential_1(&v25, v27);
  (*(v14 + 168))(a1, v13, v14);
  LODWORD(v14) = a1;
  v15 = v27;
  v16 = v28;
  __swift_mutable_project_boxed_opaque_existential_1(&v25, v27);
  (*(v16 + 120))(v14 == 1, v15, v16);
  if (!v14)
  {
    sub_2741BBD74();
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(&v25);
}

uint64_t sub_2741BB848(unsigned __int16 a1, uint64_t a2, uint64_t a3, __int16 a4)
{
  swift_beginAccess();
  v9 = *(v4 + 16);
  if (*(v9 + 16) && (v10 = sub_274125ECC(), (v11 & 1) != 0))
  {
    sub_27409D4E4(*(v9 + 56) + 40 * v10, &v16);
  }

  else
  {
    v18 = 0;
    v16 = 0u;
    v17 = 0u;
  }

  swift_endAccess();
  if (*(&v17 + 1))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093A230, &unk_2741D3B10);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093B538, &qword_2741D8590);
    if (swift_dynamicCast())
    {
      if (*(&v20 + 1))
      {
        sub_27409D118(&v19, &v22);
        *&v16 = 0;
        *(&v16 + 1) = 0xE000000000000000;
        MEMORY[0x2743E5FB0](0x7474655372657375, 0xED00003D73676E69);
        LOWORD(v19) = a1;
        *(&v19 + 1) = a2;
        *&v20 = a3;
        WORD4(v20) = a4 & 0x1FF;
        sub_2741C862C();
        sub_2740CB460(v16, *(&v16 + 1));

        v12 = v24;
        v13 = v25;
        __swift_mutable_project_boxed_opaque_existential_1(&v22, v24);
        v14 = *(v13 + 48);

        v14(a1, a2, a3, a4 & 0x1FF, v12, v13);
        return __swift_destroy_boxed_opaque_existential_1Tm(&v22);
      }
    }

    else
    {
      v21 = 0;
      v19 = 0u;
      v20 = 0u;
    }
  }

  else
  {
    sub_27409D420(&v16, &qword_280939AF8, &qword_2741D11A0);
    v19 = 0u;
    v20 = 0u;
    v21 = 0;
  }

  sub_27409D420(&v19, &qword_280937E38, &unk_2741CB3E0);
  v22 = 0;
  v23 = 0xE000000000000000;
  sub_2741C856C();
  MEMORY[0x2743E5FB0](0xD000000000000018, 0x80000002741E3AE0);
  LOBYTE(v19) = 3;
  sub_2741C862C();
  sub_2740CB218(v22, v23, 0xD000000000000015, 0x80000002741E3D00);
}

uint64_t sub_2741BBB14(uint64_t a1)
{
  swift_beginAccess();
  v2 = *(v1 + 16);
  if (*(v2 + 16) && (v3 = sub_274125ECC(), (v4 & 1) != 0))
  {
    sub_27409D4E4(*(v2 + 56) + 40 * v3, &v10);
  }

  else
  {
    v12 = 0;
    v10 = 0u;
    v11 = 0u;
  }

  swift_endAccess();
  if (*(&v11 + 1))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093A230, &unk_2741D3B10);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093B538, &qword_2741D8590);
    if (swift_dynamicCast())
    {
      if (*(&v14 + 1))
      {
        sub_27409D118(&v13, &v16);
        v5 = v18;
        v6 = v19;
        __swift_mutable_project_boxed_opaque_existential_1(&v16, v18);
        v7 = *(v6 + 24);

        v7(v8, v5, v6);
        return __swift_destroy_boxed_opaque_existential_1Tm(&v16);
      }
    }

    else
    {
      v15 = 0;
      v13 = 0u;
      v14 = 0u;
    }
  }

  else
  {
    sub_27409D420(&v10, &qword_280939AF8, &qword_2741D11A0);
    v13 = 0u;
    v14 = 0u;
    v15 = 0;
  }

  sub_27409D420(&v13, &qword_280937E38, &unk_2741CB3E0);
  v16 = 0;
  v17 = 0xE000000000000000;
  sub_2741C856C();
  MEMORY[0x2743E5FB0](0xD000000000000018, 0x80000002741E3AE0);
  LOBYTE(v13) = 3;
  sub_2741C862C();
  sub_2740CB218(v16, v17, 0xD000000000000016, 0x80000002741E3CA0);
}

unint64_t sub_2741BBD2C()
{
  type metadata accessor for ObservationManager();
  v0 = swift_allocObject();
  result = sub_2741777F0(MEMORY[0x277D84F90]);
  *(v0 + 16) = result;
  qword_280946F30 = v0;
  return result;
}

uint64_t sub_2741BBD74()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938570, &qword_2741D1630);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v5 = &v25 - v4;
  v6 = sub_2741C6AFC();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280937360 != -1)
  {
    swift_once();
  }

  v11 = __swift_project_value_buffer(v6, qword_280945DD8);
  (*(v7 + 16))(v10, v11, v6);
  sub_2740CA9CC(0x5D5355544154535BLL, 0xE800000000000000, 0xD00000000000001DLL, 0x80000002741E3C60);
  (*(v7 + 8))(v10, v6);
  swift_beginAccess();
  v12 = *(v1 + 16);
  if (*(v12 + 16) && (v13 = sub_274125ECC(), (v14 & 1) != 0))
  {
    sub_27409D4E4(*(v12 + 56) + 40 * v13, &v32);
  }

  else
  {
    v34 = 0;
    v32 = 0u;
    v33 = 0u;
  }

  swift_endAccess();
  if (*(&v33 + 1))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093A230, &unk_2741D3B10);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093A6D0, &unk_2741D8570);
    if (swift_dynamicCast())
    {
      if (*(&v26 + 1))
      {
        sub_27409D118(&v25, v35);
        v31 = 0;
        v29 = 0u;
        v30 = 0u;
        v27 = 0u;
        v28 = 0u;
        v26 = 0u;
        v25 = 0u;
        v15 = v36;
        v16 = v37;
        __swift_mutable_project_boxed_opaque_existential_1(v35, v36);
        (*(v16 + 24))(&v25, v15, v16);
        v31 = 0;
        v29 = 0u;
        v30 = 0u;
        v27 = 0u;
        v28 = 0u;
        v26 = 0u;
        v25 = 0u;
        v17 = v36;
        v18 = v37;
        __swift_mutable_project_boxed_opaque_existential_1(v35, v36);
        (*(v18 + 96))(&v25, v17, v18);
        v19 = type metadata accessor for KnownNetwork(0);
        (*(*(v19 - 8) + 56))(v5, 1, 1, v19);
        v20 = v36;
        v21 = v37;
        __swift_mutable_project_boxed_opaque_existential_1(v35, v36);
        (*(v21 + 48))(v5, v20, v21);
        v22 = v36;
        v23 = v37;
        __swift_mutable_project_boxed_opaque_existential_1(v35, v36);
        (*(v23 + 72))(0, 1, v22, v23);
        return __swift_destroy_boxed_opaque_existential_1Tm(v35);
      }
    }

    else
    {
      *&v27 = 0;
      v26 = 0u;
      v25 = 0u;
    }
  }

  else
  {
    sub_27409D420(&v32, &qword_280939AF8, &qword_2741D11A0);
    v25 = 0u;
    v26 = 0u;
    *&v27 = 0;
  }

  sub_27409D420(&v25, &qword_28093A6C8, &unk_2741D6570);
  *&v25 = 0;
  *(&v25 + 1) = 0xE000000000000000;
  sub_2741C856C();
  MEMORY[0x2743E5FB0](0xD000000000000018, 0x80000002741E3AE0);
  LOBYTE(v35[0]) = 2;
  sub_2741C862C();
  sub_2740CB218(v25, *(&v25 + 1), 0xD000000000000018, 0x80000002741E3C80);
}

uint64_t sub_2741BC258()
{

  return swift_deallocClassInstance();
}

uint64_t sub_2741BC2B4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2741BC2FC()
{
  v1 = [v0 IPv4Addresses];
  if (v1)
  {
    v2 = v1;
    v3 = sub_2741C7FEC();

    if (*(v3 + 16))
    {

      v4 = objc_opt_self();
      v5 = sub_2741C7E3C();

      LOBYTE(v4) = [v4 ISValidIPv4Address_];

      if (v4)
      {
        return 1;
      }
    }

    else
    {
    }
  }

  v6 = [v0 IPv6Addresses];
  if (v6)
  {
    v7 = v6;
    v8 = sub_2741C7FEC();

    if (*(v8 + 16))
    {

      v9 = objc_opt_self();
      v10 = sub_2741C7E3C();

      LOBYTE(v9) = [v9 IsValidIPv6Address_];

      if (v9)
      {
        return 1;
      }
    }

    else
    {
    }
  }

  v12 = [v0 currentScanResult];
  v13 = [v12 matchingKnownNetworkProfile];

  if (!v13)
  {
    return 0;
  }

  result = [v0 currentScanResult];
  if (result)
  {
    v14 = result;
    v15 = [result isIBSS];

    return v15;
  }

  return result;
}

uint64_t netrbInitIfnetTrafficDescriptor(void *a1, uint64_t a2)
{
  if (!a1 || (v4 = MEMORY[0x2743E7A80](), v5 = MEMORY[0x277D86468], v4 != MEMORY[0x277D86468]))
  {
    NETRBErrorLog("metadata is not dictionary object", a2);
    return 0;
  }

  value = xpc_dictionary_get_value(a1, netrbClientLowLatencyFlowParam[0]);
  if (!value || (v9 = value, MEMORY[0x2743E7A80]() != v5))
  {
    NETRBErrorLog("metadata does not contain low latency flow parameter dictionary.", v8);
    return 0;
  }

  v45 = 0uLL;
  v44 = 0uLL;
  v10 = xpc_dictionary_get_value(v9, netrbClientIfnetTrafficDescriptorIpVersion[0]);
  v11 = MEMORY[0x277D864C8];
  if (v10 && (v12 = v10, MEMORY[0x2743E7A80]() == v11))
  {
    v22 = xpc_uint64_get_value(v12);
    v24 = v22;
    if (v22 != 4 && v22 != 96)
    {
      NETRBErrorLog("IP version (%hhu) is not supported or is invalid", v23);
      return 0;
    }

    if (a2)
    {
      *(a2 + 8) |= 1u;
      *(a2 + 9) = v22;
    }

    v25 = xpc_dictionary_get_value(v9, netrbClientIfnetTrafficDescriptorLocalIp[0]);
    v26 = MEMORY[0x277D864C0];
    if (v25 && (v27 = v25, MEMORY[0x2743E7A80]() == v26))
    {
      string_ptr = xpc_string_get_string_ptr(v27);
      if (a2)
      {
        *(a2 + 8) |= 4u;
      }
    }

    else
    {
      NETRBInfoLog("local IP is not present or has incorrect type");
      string_ptr = 0;
    }

    v29 = xpc_dictionary_get_value(v9, netrbClientIfnetTrafficDescriptorRemoteIp[0]);
    if (v29 && (v30 = v29, MEMORY[0x2743E7A80]() == v26))
    {
      v31 = xpc_string_get_string_ptr(v30);
      if (a2)
      {
        *(a2 + 8) |= 8u;
      }
    }

    else
    {
      NETRBInfoLog("remote IP is not present or has incorrect type");
      v31 = 0;
    }

    if (v24 == 4)
    {
      if (string_ptr && inet_pton(2, string_ptr, &v45 + 12) != 1 || v31 && inet_pton(2, v31, &v44 + 12) != 1)
      {
        NETRBErrorLog("local or remote IPv4 address is malformed.", v32);
        return 0;
      }

      if (a2)
      {
        *(a2 + 24) = HIDWORD(v45);
        *(a2 + 40) = HIDWORD(v44);
      }
    }

    else
    {
      if (string_ptr && inet_pton(30, string_ptr, &v45) != 1 || v31 && inet_pton(30, v31, &v44) != 1)
      {
        NETRBErrorLog("local or remote IPv6 address is malformed.", v41);
        return 0;
      }

      if (a2)
      {
        v42 = v44;
        *(a2 + 12) = v45;
        *(a2 + 28) = v42;
      }
    }
  }

  else
  {
    NETRBErrorLog("IP version is not present");
  }

  v13 = xpc_dictionary_get_value(v9, netrbClientIfnetTrafficDescriptorIpProtocol[0]);
  if (v13 && (v14 = v13, MEMORY[0x2743E7A80]() == v11))
  {
    v33 = xpc_uint64_get_value(v14);
    if (v33 != 17 && v33 != 6)
    {
      NETRBErrorLog("IP protocol is not supported or is invalid.", v34);
      return 0;
    }

    if (a2)
    {
      *(a2 + 8) |= 2u;
      *(a2 + 10) = v33;
    }
  }

  else
  {
    NETRBInfoLog("IP protocol is not present or has incorrect type");
  }

  v15 = xpc_dictionary_get_value(v9, netrbClientIfnetTrafficDescriptorLocalPort[0]);
  if (v15)
  {
    v16 = v15;
    if (MEMORY[0x2743E7A80]() != v11)
    {
LABEL_21:
      NETRBErrorLog("Local port specified does not have UINT64 type.", v17);
      return 0;
    }

    v18 = xpc_uint64_get_value(v16);
    if (v18 - 0x10000 < 0xFFFFFFFFFFFF0001)
    {
      NETRBErrorLog("Illegal local port %llu", v19);
      return 0;
    }

    if (a2)
    {
      *(a2 + 8) |= 0x10u;
      *(a2 + 44) = bswap32(v18) >> 16;
    }
  }

  else
  {
    NETRBInfoLog("No local port specified.");
  }

  v20 = xpc_dictionary_get_value(v9, netrbClientIfnetTrafficDescriptorRemotePort[0]);
  if (v20)
  {
    v21 = v20;
    if (MEMORY[0x2743E7A80]() != v11)
    {
      goto LABEL_21;
    }

    v39 = xpc_uint64_get_value(v21);
    if (v39 - 0x10000 < 0xFFFFFFFFFFFF0001)
    {
      NETRBErrorLog("Illegal remote port %llu", v40);
      return 0;
    }

    if (a2)
    {
      *(a2 + 8) |= 0x20u;
      *(a2 + 46) = bswap32(v39) >> 16;
    }
  }

  else
  {
    NETRBErrorLog("No local port specified.");
  }

  v36 = xpc_dictionary_get_value(v9, netrbClientIfnetTrafficDescriptorConnectionIdleTimeout[0]);
  if (v36)
  {
    v37 = v36;
    if (MEMORY[0x2743E7A80]() != v11)
    {
      NETRBErrorLog("Connection idle timeout does not have UINT64 type.", v38);
      return 0;
    }

    if (xpc_uint64_get_value(v37) >= 0x69781)
    {
      NETRBErrorLog("Connection idle timeout exceeds max limit of %u seconds", v43);
      return 0;
    }
  }

  return 1;
}

uint64_t _NETRBNetworkCopy(uint64_t a1, uint64_t a2)
{
  if (_NETRBNetworkGetTypeId_pred != -1)
  {
    _NETRBNetworkCopy_cold_1();
  }

  Instance = _CFRuntimeCreateInstance();
  v4 = *(a2 + 16);
  v5 = *(a2 + 32);
  v6 = *(a2 + 64);
  *(Instance + 48) = *(a2 + 48);
  *(Instance + 64) = v6;
  *(Instance + 16) = v4;
  *(Instance + 32) = v5;
  v7 = *(a2 + 80);
  v8 = *(a2 + 96);
  v9 = *(a2 + 112);
  *(Instance + 128) = *(a2 + 128);
  *(Instance + 96) = v8;
  *(Instance + 112) = v9;
  *(Instance + 80) = v7;
  *(Instance + 136) = 0;
  *(Instance + 144) = 0;
  v10 = *(a2 + 136);
  if (v10)
  {
    v11 = 0;
    do
    {
      v12 = malloc_type_malloc(0x18uLL, 0x10200400817995AuLL);
      if (v11)
      {
        v13 = v11;
      }

      else
      {
        v13 = (Instance + 136);
      }

      v14 = *v10;
      v12[2] = *(v10 + 2);
      *v12 = v14;
      *v12 = *v13;
      *v13 = v12;
      v10 = *v10;
      v11 = v12;
    }

    while (v10);
  }

  v15 = *(a2 + 144);
  if (v15)
  {
    v16 = 0;
    do
    {
      v17 = malloc_type_malloc(0x20uLL, 0x10200401B9196EFuLL);
      if (v16)
      {
        v18 = v16;
      }

      else
      {
        v18 = (Instance + 144);
      }

      v19 = v15[1];
      *v17 = *v15;
      v17[1] = v19;
      *v17 = *v18;
      *v18 = v17;
      v15 = *v15;
      v16 = v17;
    }

    while (v15);
  }

  return Instance;
}

void *_NETRBClientCreateInternal(NSObject *a1, const void *a2, uint64_t a3, uint64_t a4)
{
  v18 = 0;
  v19 = &v18;
  v20 = 0x2000000000;
  v21 = 0;
  v14 = 0;
  v15 = &v14;
  v16 = 0x2000000000;
  v17 = 2000;
  v7 = 0;
  if (!NETRBLogCreate(a1, a2))
  {
    if (__NETRBClientGetTypeID_pred != -1)
    {
      _NETRBClientCreateInternal_cold_1();
    }

    Instance = _CFRuntimeCreateInstance();
    v7 = Instance;
    if (Instance)
    {
      bzero((Instance + 16), 0x218uLL);
      if (a1)
      {
        v7[2] = a1;
        dispatch_retain(a1);
        if (a2)
        {
          v7[3] = _Block_copy(a2);
        }
      }

      if (__NETRBClientGetQueue_predQueue != -1)
      {
        _NETRBClientCreateInternal_cold_2();
      }

      v10 = __NETRBClientGetQueue___netrbQueue;
      if (__NETRBClientGetQueue___netrbQueue)
      {
        if (__NETRBClientGetXpcQueue_predXpc != -1)
        {
          _NETRBClientCreateInternal_cold_3();
        }

        if (__NETRBClientGetXpcQueue___netrbXpcQueue)
        {
          block[0] = MEMORY[0x277D85DD0];
          block[1] = 0x40000000;
          block[2] = ___NETRBClientCreateInternal_block_invoke;
          block[3] = &unk_279ECB768;
          block[6] = v7;
          block[7] = __NETRBClientGetXpcQueue___netrbXpcQueue;
          block[4] = &v18;
          block[5] = &v14;
          block[8] = v10;
          block[9] = a4;
          dispatch_sync(v10, block);
          if (*(v19 + 24) == 1 && (v15[3] | 2) == 0x7D2)
          {
            *(v19 + 24) = 0;
          }
        }

        else
        {
          NETRBErrorLog("unable to create XPC queue");
        }
      }

      else
      {
        NETRBErrorLog("unable to create framework queue");
      }

      if ((v19[3] & 1) == 0)
      {
        CFRelease(v7);
        v7 = 0;
      }
    }

    else
    {
      v11 = __error();
      v12 = strerror(*v11);
      NETRBErrorLog("unable to create client object %s", v12);
    }
  }

  _Block_object_dispose(&v14, 8);
  _Block_object_dispose(&v18, 8);
  return v7;
}

void __NETRBClientRemoveFromList(const void *a1)
{
  if (__netrbClientList && CFArrayGetCount(__netrbClientList) >= 1)
  {
    v2 = 0;
    while (CFArrayGetValueAtIndex(__netrbClientList, v2) != a1)
    {
      if (++v2 >= CFArrayGetCount(__netrbClientList))
      {
        return;
      }
    }

    CFArrayRemoveValueAtIndex(__netrbClientList, v2);
    if (!CFArrayGetCount(__netrbClientList))
    {
      NETRBXPCCleanup();
      NETRBEndPointCleanup();
      CFRelease(__netrbClientList);
      __netrbClientList = 0;
    }
  }
}

uint64_t _NETRBClientDestroy(uint64_t a1)
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x2000000000;
  v12 = 0;
  v5 = 0;
  v6 = &v5;
  v7 = 0x2000000000;
  v8 = 2000;
  if (a1)
  {
    if (__NETRBClientGetQueue_predQueue != -1)
    {
      _NETRBClientCreateInternal_cold_2();
    }

    if (__NETRBClientGetQueue___netrbQueue)
    {
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 0x40000000;
      block[2] = ___NETRBClientDestroy_block_invoke;
      block[3] = &unk_279ECB7B8;
      block[4] = &v9;
      block[5] = &v5;
      block[6] = a1;
      dispatch_sync(__NETRBClientGetQueue___netrbQueue, block);
      if (*(v10 + 24) == 1)
      {
        *(v10 + 24) = v6[3] == 2001;
      }
    }

    else
    {
      NETRBErrorLog("unable to create framework queue");
    }
  }

  else
  {
    NETRBErrorLog("client handle cannot be NULL");
  }

  v2 = *(v10 + 24);
  _Block_object_dispose(&v5, 8);
  _Block_object_dispose(&v9, 8);
  return v2;
}

uint64_t __NETRBClientValidateClient(_BYTE *a1)
{
  if (!a1)
  {
    NETRBErrorLog("client handler is NULL");
    return 22;
  }

  if (!a1[288])
  {
    return 22;
  }

  if (!__netrbClientList)
  {
    NETRBErrorLog("client list is empty");
    return 22;
  }

  Count = CFArrayGetCount(__netrbClientList);
  if (!Count)
  {
    NETRBErrorLog("client is not added to the list");
    return 22;
  }

  v3 = Count;
  if (Count < 1)
  {
LABEL_13:
    NETRBErrorLog("unknown client");
    return 22;
  }

  v4 = 0;
  while (CFArrayGetValueAtIndex(__netrbClientList, v4) != a1)
  {
    if (v3 == ++v4)
    {
      goto LABEL_13;
    }
  }

  return 0;
}

uint64_t _NETRBClientStartService(uint64_t a1, char *__s1, int a3, int a4, void *a5)
{
  v68 = 0;
  v69 = &v68;
  v70 = 0x2000000000;
  v71 = 0;
  if (!a1)
  {
    NETRBErrorLog("client handle cannot be NULL", __s1);
    goto LABEL_23;
  }

  if ((a3 - 205) <= 0xFFFFFFFA)
  {
    NETRBErrorLog("incorrect operation mode %d", __s1);
    goto LABEL_23;
  }

  if ((a4 - 304) <= 0xFFFFFFFB)
  {
    NETRBErrorLog("incorrect bridge type %d", __s1);
    goto LABEL_23;
  }

  if (__s1 && *__s1 && strncmp(__s1, netrbClientAnyExternal, 0x10uLL) && !if_nametoindex(__s1))
  {
    NETRBErrorLog("incorrect external interface name %s", v10);
    goto LABEL_23;
  }

  v11 = xpc_dictionary_create(0, 0, 0);
  if (!v11)
  {
    NETRBErrorLog("xpc_dictionary_create() failed");
    goto LABEL_23;
  }

  v12 = v11;
  if (!a5 || (v13 = MEMORY[0x2743E7A80](a5), v14 = MEMORY[0x277D86468], v13 != MEMORY[0x277D86468]))
  {
    NETRBErrorLog("incorrect interface object");
LABEL_20:
    v20 = v12;
LABEL_21:
    xpc_release(v20);
    goto LABEL_23;
  }

  value = xpc_dictionary_get_value(a5, netrbClientDeviceType[0]);
  if (!value || (v16 = value, v17 = MEMORY[0x2743E7A80](), v18 = MEMORY[0x277D864C8], v17 != MEMORY[0x277D864C8]) || (v19 = xpc_uint64_get_value(v16), v19 >= 7))
  {
    NETRBErrorLog("device type is incorrect");
    goto LABEL_20;
  }

  v23 = v19;
  xpc_dictionary_set_uint64(v12, netrbXPCDeviceType[0], v19);
  if (v23 != 1)
  {
    v26 = xpc_dictionary_get_value(a5, netrbClientInterfaceName[0]);
    if (!v26 || (v27 = v26, MEMORY[0x2743E7A80]() != MEMORY[0x277D864C0]) || (string_ptr = xpc_string_get_string_ptr(v27), !if_nametoindex(string_ptr)))
    {
      NETRBErrorLog("interface name is incorrect");
      goto LABEL_20;
    }

    v33 = netrbXPCInterfaceName[0];
    v34 = xpc_string_get_string_ptr(v27);
    xpc_dictionary_set_string(v12, v33, v34);
  }

  v24 = xpc_dictionary_get_value(a5, netrbClientInterfaceMTU[0]);
  if (v24)
  {
    v25 = v24;
    if (MEMORY[0x2743E7A80]() != v18)
    {
      NETRBErrorLog("incorrect format for interface mtu");
      goto LABEL_20;
    }

    v28 = netrbXPCInterfaceMTU[0];
    v29 = xpc_uint64_get_value(v25);
    xpc_dictionary_set_uint64(v12, v28, v29);
  }

  v30 = xpc_dictionary_get_value(a5, netrbClientInterfaceInstance[0]);
  if (v30)
  {
    v31 = v30;
    if (MEMORY[0x2743E7A80]() != v18)
    {
      NETRBErrorLog("incorrect format for interface instance");
      goto LABEL_20;
    }

    v35 = netrbXPCInterfaceInstance[0];
    v36 = xpc_uint64_get_value(v31);
    xpc_dictionary_set_uint64(v12, v35, v36);
  }

  v37 = xpc_dictionary_get_value(a5, netrbClientInterfaceStartAddress);
  if (v37)
  {
    v38 = v37;
    if (MEMORY[0x2743E7A80]() != MEMORY[0x277D864C0])
    {
      NETRBErrorLog("incorrect format for interface start address");
      goto LABEL_20;
    }

    v39 = netrbXPCStartAddress[0];
    v40 = xpc_string_get_string_ptr(v38);
    xpc_dictionary_set_string(v12, v39, v40);
  }

  v41 = xpc_dictionary_get_value(a5, netrbClientInterfaceEndAddress);
  if (v41)
  {
    v42 = v41;
    if (MEMORY[0x2743E7A80]() != MEMORY[0x277D864C0])
    {
      NETRBErrorLog("incorrect format for interface end address");
      goto LABEL_20;
    }

    v43 = netrbXPCEndAddress[0];
    v44 = xpc_string_get_string_ptr(v42);
    xpc_dictionary_set_string(v12, v43, v44);
  }

  v45 = xpc_dictionary_get_value(a5, netrbClientInterfaceNetworkMask);
  if (v45)
  {
    v46 = v45;
    if (MEMORY[0x2743E7A80]() != MEMORY[0x277D864C0])
    {
      NETRBErrorLog("incorrect format for interface network mask");
      goto LABEL_20;
    }

    v47 = netrbXPCNetworkMask[0];
    v48 = xpc_string_get_string_ptr(v46);
    xpc_dictionary_set_string(v12, v47, v48);
  }

  v49 = xpc_dictionary_get_value(a5, netrbClientNatType);
  if (!v49)
  {
    if (a3 != 201)
    {
      xpc_dictionary_set_uint64(v12, netrbXPCNatType[0], 0x1F5uLL);
LABEL_60:
      v53 = 0;
      goto LABEL_61;
    }

    xpc_dictionary_set_uint64(v12, netrbXPCNatType[0], 0x1F4uLL);
LABEL_55:
    if (!insert_nat66_params(a5, v12))
    {
      goto LABEL_20;
    }

    goto LABEL_60;
  }

  v50 = v49;
  if (MEMORY[0x2743E7A80]() != v18)
  {
    NETRBErrorLog("incorrect format for nat type");
    goto LABEL_20;
  }

  v51 = xpc_uint64_get_value(v50);
  v52 = v51;
  if (v51 - 503 <= 0xFFFFFFFC)
  {
    NETRBErrorLog("incorrect nat type %d");
    goto LABEL_20;
  }

  xpc_dictionary_set_uint64(v12, netrbXPCNatType[0], v51);
  if (v52 == 500)
  {
    goto LABEL_55;
  }

  if (v52 != 502)
  {
    goto LABEL_60;
  }

  v54 = xpc_dictionary_get_value(a5, netrbClientNat64Param);
  if (!v54)
  {
    goto LABEL_60;
  }

  v55 = v54;
  if (MEMORY[0x2743E7A80]() != v14)
  {
    NETRBErrorLog("incorrect format for nat64 param dictionary");
    goto LABEL_20;
  }

  v56 = xpc_dictionary_create(0, 0, 0);
  if (!v56)
  {
    NETRBErrorLog("xpc_dictionary_create() failed for NAT64 dictionary");
    goto LABEL_20;
  }

  v53 = v56;
  v57 = xpc_dictionary_get_value(v55, netrbClientDns64Prefix);
  if (v57)
  {
    v58 = v57;
    if (MEMORY[0x2743E7A80]() != MEMORY[0x277D864C0])
    {
      NETRBErrorLog("incorrect format for dns64 prefix");
LABEL_82:
      xpc_release(v12);
LABEL_67:
      v20 = v53;
      goto LABEL_21;
    }

    v59 = netrbXPCDns64Prefix[0];
    v60 = xpc_string_get_string_ptr(v58);
    xpc_dictionary_set_string(v53, v59, v60);
  }

  v61 = xpc_dictionary_get_value(v55, netrbClientRaPrefix);
  if (v61)
  {
    v62 = v61;
    if (MEMORY[0x2743E7A80]() != MEMORY[0x277D864C0])
    {
      NETRBErrorLog("incorrect format for NAT64 RA prefix");
      goto LABEL_82;
    }

    v63 = netrbXPCRaPrefix[0];
    v64 = xpc_string_get_string_ptr(v62);
    xpc_dictionary_set_string(v53, v63, v64);
  }

  xpc_dictionary_set_value(v12, netrbXPCNat64Param[0], v53);
LABEL_61:
  if (__NETRBClientGetQueue_predQueue != -1)
  {
    _NETRBClientCreateInternal_cold_2();
  }

  if (__NETRBClientGetQueue___netrbQueue)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 0x40000000;
    block[2] = ___NETRBClientStartService_block_invoke;
    block[3] = &unk_279ECB800;
    block[4] = &v68;
    block[5] = a1;
    v66 = a3;
    v67 = a4;
    block[6] = v12;
    block[7] = __s1;
    block[8] = __NETRBClientGetQueue___netrbQueue;
    dispatch_sync(__NETRBClientGetQueue___netrbQueue, block);
  }

  else
  {
    NETRBErrorLog("unable to create framework queue");
  }

  xpc_release(v12);
  if (v53)
  {
    goto LABEL_67;
  }

LABEL_23:
  v21 = *(v69 + 24);
  _Block_object_dispose(&v68, 8);
  return v21;
}

uint64_t insert_nat66_params(void *a1, void *a2)
{
  value = xpc_dictionary_get_value(a1, netrbClientNat66Param);
  if (value)
  {
    v4 = value;
    if (MEMORY[0x2743E7A80]() != MEMORY[0x277D86468])
    {
      NETRBErrorLog("incorrect format for nat66 param dictionary");
      return 0;
    }

    string = xpc_dictionary_get_string(v4, netrbClientRaPrefix);
    if (!string)
    {
      NETRBErrorLog("NAT66 RA prefix is invalid/missing");
      return 0;
    }

    v7 = string;
    v8 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_string(v8, netrbXPCRaPrefix[0], v7);
    xpc_dictionary_set_value(a2, netrbXPCNat66Param[0], v8);
  }

  return 1;
}

void __NETRBClientResponseHandler(void *a1, int a2, void *a3, uint64_t a4)
{
  NETRBInfoLog("client %p %s xpc response received", a1, off_279ECC048[a2 - 1001]);
  if (!__NETRBClientValidateClient(a1))
  {
    if (!a1[2] || !a1[3])
    {
      v15 = "no queue or handler block to send response";
      goto LABEL_9;
    }

    if (a3)
    {
      if (xpc_dictionary_get_uint64(a3, netrbXPCResponse[0]) == 2003)
      {
        v15 = "service object destroyed before service completed";
        goto LABEL_9;
      }

      v17 = xpc_dictionary_create(0, 0, 0);
      if (v17)
      {
        v16 = v17;
        if (xpc_dictionary_get_uint64(a3, netrbXPCResponse[0]) != 2002)
        {
          uint64 = xpc_dictionary_get_uint64(a3, netrbXPCResponse[0]);
          if (uint64 == 2001)
          {
            v23 = 5002;
          }

          else
          {
            v23 = 5003;
          }

          xpc_dictionary_set_uint64(v16, netrbClientNotificationKey, v23);
          if (a2 != 1014 || uint64 != 2000)
          {
            if (a2 == 1014 && uint64 == 2001)
            {
              notification_insert_keys(v16, a3);
            }

            goto LABEL_19;
          }

          v24 = xpc_dictionary_get_uint64(a3, netrbXPCErrorCode[0]);
          if (!v24)
          {
LABEL_19:
            v21 = a1[2];
            block[0] = MEMORY[0x277D85DD0];
            block[1] = 0x40000000;
            block[2] = ____NETRBClientResponseHandler_block_invoke;
            block[3] = &__block_descriptor_tmp_228;
            v27 = a2;
            block[4] = a1;
            block[5] = a4;
            block[6] = v16;
            dispatch_async(v21, block);
            return;
          }

          v20 = v24;
          v18 = netrbClientErrorCode;
          v19 = v16;
LABEL_18:
          xpc_dictionary_set_uint64(v19, v18, v20);
          goto LABEL_19;
        }

LABEL_17:
        v18 = netrbClientNotificationKey;
        v19 = v16;
        v20 = 5003;
        goto LABEL_18;
      }
    }

    else
    {
      v16 = xpc_dictionary_create(0, 0, 0);
      if (v16)
      {
        goto LABEL_17;
      }
    }

    NETRBErrorLog("xpc_dictionary_create() failed");
    goto LABEL_10;
  }

  v15 = "client already destroyed";
LABEL_9:
  NETRBDebugLog(v15, v8, v9, v10, v11, v12, v13, v14, v25);
LABEL_10:

  CFRelease(a1);
}

uint64_t _NETRBClientStopService(uint64_t a1)
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2000000000;
  v8 = 0;
  if (a1)
  {
    if (__NETRBClientGetQueue_predQueue != -1)
    {
      _NETRBClientCreateInternal_cold_2();
    }

    if (__NETRBClientGetQueue___netrbQueue)
    {
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 0x40000000;
      block[2] = ___NETRBClientStopService_block_invoke;
      block[3] = &unk_279ECB848;
      block[4] = &v5;
      block[5] = a1;
      block[6] = __NETRBClientGetQueue___netrbQueue;
      dispatch_sync(__NETRBClientGetQueue___netrbQueue, block);
    }

    else
    {
      NETRBErrorLog("unable to create framework queue");
    }
  }

  else
  {
    NETRBErrorLog("client handle cannot be NULL");
  }

  v2 = *(v6 + 24);
  _Block_object_dispose(&v5, 8);
  return v2;
}

uint64_t _NETRBClientGetDynamicStoreKey(uint64_t a1, char *a2)
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2000000000;
  v10 = 0;
  if (a1)
  {
    if (a2)
    {
      if (__NETRBClientGetQueue_predQueue != -1)
      {
        _NETRBClientCreateInternal_cold_2();
      }

      if (__NETRBClientGetQueue___netrbQueue)
      {
        v6[0] = MEMORY[0x277D85DD0];
        v6[1] = 0x40000000;
        v6[2] = ___NETRBClientGetDynamicStoreKey_block_invoke;
        v6[3] = &unk_279ECB870;
        v6[4] = &v7;
        v6[5] = a1;
        dispatch_sync(__NETRBClientGetQueue___netrbQueue, v6);
        if (*(v8 + 24) == 1)
        {
          strcpy(a2, "com.apple.MobileInternetSharing");
        }
      }

      else
      {
        NETRBErrorLog("unable to create framework queue", a2);
      }
    }

    else
    {
      NETRBErrorLog("key cannot be NULL", 0);
    }
  }

  else
  {
    NETRBErrorLog("client handle cannot be NULL", a2);
  }

  v4 = *(v8 + 24);
  _Block_object_dispose(&v7, 8);
  return v4;
}

uint64_t _NETRBClientGetGlobalServiceState(uint64_t a1, _DWORD *a2, _DWORD *a3)
{
  v21 = 0;
  v22 = &v21;
  v23 = 0x2000000000;
  v24 = 0;
  v17 = 0;
  v18 = &v17;
  v19 = 0x2000000000;
  v20 = 0;
  v13 = 0;
  v14 = &v13;
  v15 = 0x2000000000;
  v16 = 0;
  v9 = 0;
  v10 = &v9;
  v11 = 0x2000000000;
  v12 = 2000;
  if (a1)
  {
    if (a2)
    {
      if (a3)
      {
        if (__NETRBClientGetQueue_predQueue != -1)
        {
          v7 = a1;
          _NETRBClientCreateInternal_cold_2();
          a1 = v7;
        }

        if (__NETRBClientGetQueue___netrbQueue)
        {
          block[0] = MEMORY[0x277D85DD0];
          block[1] = 0x40000000;
          block[2] = ___NETRBClientGetGlobalServiceState_block_invoke;
          block[3] = &unk_279ECB8C0;
          block[4] = &v13;
          block[5] = &v9;
          block[6] = &v21;
          block[7] = &v17;
          block[8] = a1;
          dispatch_sync(__NETRBClientGetQueue___netrbQueue, block);
          if (*(v14 + 24) == 1)
          {
            *(v14 + 24) = v10[3] == 2001;
            *a2 = *(v22 + 6);
            *a3 = *(v18 + 6);
          }
        }

        else
        {
          NETRBErrorLog("unable to create framework queue", a2, a3, v7);
        }
      }

      else
      {
        NETRBErrorLog("reason cannot be NULL", a2, 0);
      }
    }

    else
    {
      NETRBErrorLog("state cannot be NULL", 0, a3);
    }
  }

  else
  {
    NETRBErrorLog("client handle cannot be NULL", a2, a3);
  }

  v5 = *(v14 + 24);
  _Block_object_dispose(&v9, 8);
  _Block_object_dispose(&v13, 8);
  _Block_object_dispose(&v17, 8);
  _Block_object_dispose(&v21, 8);
  return v5;
}

uint64_t _NETRBClientSetGlobalServiceState(uint64_t a1, int a2)
{
  v12 = 0;
  v13 = &v12;
  v14 = 0x2000000000;
  v15 = 0;
  v8 = 0;
  v9 = &v8;
  v10 = 0x2000000000;
  v11 = 2000;
  if (a1)
  {
    if ((a2 - 1024) > 0xFFFFFFFB)
    {
      if (__NETRBClientGetQueue_predQueue != -1)
      {
        _NETRBClientCreateInternal_cold_2();
      }

      if (__NETRBClientGetQueue___netrbQueue)
      {
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 0x40000000;
        block[2] = ___NETRBClientSetGlobalServiceState_block_invoke;
        block[3] = &unk_279ECB910;
        v7 = a2;
        block[4] = &v12;
        block[5] = &v8;
        block[6] = a1;
        dispatch_sync(__NETRBClientGetQueue___netrbQueue, block);
        if (*(v13 + 24) == 1)
        {
          *(v13 + 24) = v9[3] == 2001;
        }
      }

      else
      {
        NETRBErrorLog("unable to create framework queue");
      }
    }

    else
    {
      NETRBErrorLog("incorrect state %d");
    }
  }

  else
  {
    NETRBErrorLog("client handle cannot be NULL");
  }

  v4 = *(v13 + 24);
  _Block_object_dispose(&v8, 8);
  _Block_object_dispose(&v12, 8);
  return v4;
}

uint64_t _NETRBClientGetExtName(uint64_t a1, uint64_t a2)
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x2000000000;
  v14 = 0;
  v7 = 0;
  v8 = &v7;
  v9 = 0x2000000000;
  v10 = 2000;
  if (a1)
  {
    if (a2)
    {
      if (__NETRBClientGetQueue_predQueue != -1)
      {
        _NETRBClientCreateInternal_cold_2();
      }

      if (__NETRBClientGetQueue___netrbQueue)
      {
        v6[0] = MEMORY[0x277D85DD0];
        v6[1] = 0x40000000;
        v6[2] = ___NETRBClientGetExtName_block_invoke;
        v6[3] = &unk_279ECB960;
        v6[4] = &v11;
        v6[5] = &v7;
        v6[6] = a1;
        v6[7] = a2;
        dispatch_sync(__NETRBClientGetQueue___netrbQueue, v6);
        if (*(v12 + 24) == 1)
        {
          *(v12 + 24) = v8[3] == 2001;
        }
      }

      else
      {
        NETRBErrorLog("unable to create framework queue", a2);
      }
    }

    else
    {
      NETRBErrorLog("external name cannot be NULL", 0);
    }
  }

  else
  {
    NETRBErrorLog("client handle cannot be NULL", a2);
  }

  v4 = *(v12 + 24);
  _Block_object_dispose(&v7, 8);
  _Block_object_dispose(&v11, 8);
  return v4;
}

void *_NETRBClientCopyFixtureForwardedPorts(void *a1)
{
  v1 = a1;
  v17 = 0;
  v18 = &v17;
  v19 = 0x2000000000;
  v20 = 0;
  v13 = 0;
  v14 = &v13;
  v15 = 0x2000000000;
  v16 = 0;
  v9 = 0;
  v10 = &v9;
  v11 = 0x2000000000;
  v12 = 0;
  v5 = 0;
  v6 = &v5;
  v7 = 0x2000000000;
  v8 = 2000;
  if (!a1)
  {
    NETRBErrorLog("client handle cannot be NULL");
    goto LABEL_12;
  }

  if (__NETRBClientGetQueue_predQueue != -1)
  {
    _NETRBClientCreateInternal_cold_2();
  }

  if (!__NETRBClientGetQueue___netrbQueue)
  {
    NETRBErrorLog("unable to create framework queue");
LABEL_11:
    v1 = 0;
    goto LABEL_12;
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 0x40000000;
  block[2] = ___NETRBClientCopyFixtureForwardedPorts_block_invoke;
  block[3] = &unk_279ECB9B0;
  block[4] = &v9;
  block[5] = &v5;
  block[6] = &v17;
  block[7] = &v13;
  block[8] = v1;
  dispatch_sync(__NETRBClientGetQueue___netrbQueue, block);
  if (*(v10 + 24) != 1 || v6[3] != 2001)
  {
    goto LABEL_11;
  }

  v2 = xpc_dictionary_create(0, 0, 0);
  v1 = v2;
  if (v2)
  {
    xpc_dictionary_set_uint64(v2, netrbClientForwardedLowPort[0], *(v18 + 12));
    xpc_dictionary_set_uint64(v1, netrbClientForwardedHighPort[0], *(v14 + 12));
  }

  else
  {
    NETRBErrorLog("xpc_dictionary_create() failed");
    *(v10 + 24) = 0;
  }

LABEL_12:
  _Block_object_dispose(&v5, 8);
  _Block_object_dispose(&v9, 8);
  _Block_object_dispose(&v13, 8);
  _Block_object_dispose(&v17, 8);
  return v1;
}

uint64_t _NETRBClientSetFixtureForwardedPorts(uint64_t a1, uint64_t a2)
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x2000000000;
  v14 = 0;
  v7 = 0;
  v8 = &v7;
  v9 = 0x2000000000;
  v10 = 2000;
  if (a1)
  {
    if (a2 && MEMORY[0x2743E7A80](a2) == MEMORY[0x277D86468])
    {
      if (__NETRBClientGetQueue_predQueue != -1)
      {
        _NETRBClientCreateInternal_cold_2();
      }

      if (__NETRBClientGetQueue___netrbQueue)
      {
        v6[0] = MEMORY[0x277D85DD0];
        v6[1] = 0x40000000;
        v6[2] = ___NETRBClientSetFixtureForwardedPorts_block_invoke;
        v6[3] = &unk_279ECBA00;
        v6[6] = a1;
        v6[7] = a2;
        v6[4] = &v11;
        v6[5] = &v7;
        dispatch_sync(__NETRBClientGetQueue___netrbQueue, v6);
        if (*(v12 + 24) == 1)
        {
          *(v12 + 24) = v8[3] == 2001;
        }
      }

      else
      {
        NETRBErrorLog("unable to create framework queue");
      }
    }

    else
    {
      NETRBErrorLog("forwarded ports should be a xpc dictionary");
    }
  }

  else
  {
    NETRBErrorLog("client handle cannot be NULL");
  }

  v4 = *(v12 + 24);
  _Block_object_dispose(&v7, 8);
  _Block_object_dispose(&v11, 8);
  return v4;
}

uint64_t _NETRBClientIsAllowedMoreHost(uint64_t a1)
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x2000000000;
  v12 = 0;
  v5 = 0;
  v6 = &v5;
  v7 = 0x2000000000;
  v8 = 2000;
  if (a1)
  {
    if (__NETRBClientGetQueue_predQueue != -1)
    {
      _NETRBClientCreateInternal_cold_2();
    }

    if (__NETRBClientGetQueue___netrbQueue)
    {
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 0x40000000;
      block[2] = ___NETRBClientIsAllowedMoreHost_block_invoke;
      block[3] = &unk_279ECBA50;
      block[4] = &v9;
      block[5] = &v5;
      block[6] = a1;
      dispatch_sync(__NETRBClientGetQueue___netrbQueue, block);
      if (*(v10 + 24) == 1)
      {
        *(v10 + 24) = v6[3] == 2001;
      }
    }

    else
    {
      NETRBErrorLog("unable to create framework queue");
    }
  }

  else
  {
    NETRBErrorLog("client handle cannot be NULL");
  }

  v2 = *(v10 + 24);
  _Block_object_dispose(&v5, 8);
  _Block_object_dispose(&v9, 8);
  return v2;
}

uint64_t _NETRBClientAddHost(uint64_t a1, unsigned int a2)
{
  v4 = xpc_dictionary_create(0, 0, 0);
  if (v4)
  {
    v5 = v4;
    xpc_dictionary_set_uint64(v4, netrbClientHostIftype, a2);
    xpc_dictionary_set_uint64(v5, netrbClientHostDeviceId, 0xFFFFFFFFuLL);
    v6 = _NETRBClientAddHostExt(a1, v5);
    xpc_release(v5);
    return v6;
  }

  else
  {
    NETRBErrorLog("failed to create xpc dictionary for add host.");
    return 0;
  }
}

uint64_t _NETRBClientAddHostExt(uint64_t a1, void *a2)
{
  v21 = 0;
  v22 = &v21;
  v23 = 0x2000000000;
  v24 = 0;
  v17 = 0;
  v18 = &v17;
  v19 = 0x2000000000;
  v20 = 2000;
  if (!a2 || MEMORY[0x2743E7A80](a2) != MEMORY[0x277D86468])
  {
    NETRBErrorLog("request is not dictionary object");
LABEL_4:
    *(v22 + 24) = 0;
    goto LABEL_5;
  }

  value = xpc_dictionary_get_value(a2, netrbClientHostIftype);
  if (!value || (v7 = value, v8 = MEMORY[0x2743E7A80](), v9 = MEMORY[0x277D864C8], v8 != MEMORY[0x277D864C8]))
  {
    NETRBErrorLog("netrbIftype does not exist in request.");
    goto LABEL_4;
  }

  v10 = xpc_uint64_get_value(v7);
  v11 = xpc_dictionary_get_value(a2, netrbClientHostDeviceId);
  if (!v11 || (v12 = v11, MEMORY[0x2743E7A80]() != v9))
  {
    NETRBErrorLog("device ID does not exist in request.");
    goto LABEL_4;
  }

  v13 = xpc_uint64_get_value(v12);
  if (a1)
  {
    if ((v10 - 7) > 0xFFFFFFFA)
    {
      v14 = v13;
      if (__NETRBClientGetQueue_predQueue != -1)
      {
        _NETRBClientCreateInternal_cold_2();
      }

      if (__NETRBClientGetQueue___netrbQueue)
      {
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 0x40000000;
        block[2] = ___NETRBClientAddHostExt_block_invoke;
        block[3] = &unk_279ECBAA0;
        v16 = v10;
        block[6] = a1;
        block[7] = v14;
        block[4] = &v21;
        block[5] = &v17;
        dispatch_sync(__NETRBClientGetQueue___netrbQueue, block);
        if (*(v22 + 24) == 1)
        {
          *(v22 + 24) = v18[3] == 2001;
        }
      }

      else
      {
        NETRBErrorLog("unable to create framework queue");
      }
    }

    else
    {
      NETRBErrorLog("incorrect device type value %d");
    }
  }

  else
  {
    NETRBErrorLog("client handle cannot be NULL");
  }

LABEL_5:
  v4 = *(v22 + 24);
  _Block_object_dispose(&v17, 8);
  _Block_object_dispose(&v21, 8);
  return v4;
}

uint64_t _NETRBClientRemoveHostExt(uint64_t a1, void *a2)
{
  v21 = 0;
  v22 = &v21;
  v23 = 0x2000000000;
  v24 = 0;
  v17 = 0;
  v18 = &v17;
  v19 = 0x2000000000;
  v20 = 2000;
  if (!a2 || MEMORY[0x2743E7A80](a2) != MEMORY[0x277D86468])
  {
    NETRBErrorLog("request is not dictionary object");
LABEL_4:
    *(v22 + 24) = 0;
    goto LABEL_5;
  }

  value = xpc_dictionary_get_value(a2, netrbClientHostIftype);
  if (!value || (v7 = value, v8 = MEMORY[0x2743E7A80](), v9 = MEMORY[0x277D864C8], v8 != MEMORY[0x277D864C8]))
  {
    NETRBErrorLog("netrbIftype does not exist in request.");
    goto LABEL_4;
  }

  v10 = xpc_uint64_get_value(v7);
  v11 = xpc_dictionary_get_value(a2, netrbClientHostDeviceId);
  if (!v11 || (v12 = v11, MEMORY[0x2743E7A80]() != v9))
  {
    NETRBErrorLog("device ID does not exist in request.");
    goto LABEL_4;
  }

  v13 = xpc_uint64_get_value(v12);
  if (a1)
  {
    if ((v10 - 7) > 0xFFFFFFFA)
    {
      v14 = v13;
      if (__NETRBClientGetQueue_predQueue != -1)
      {
        _NETRBClientCreateInternal_cold_2();
      }

      if (__NETRBClientGetQueue___netrbQueue)
      {
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 0x40000000;
        block[2] = ___NETRBClientRemoveHostExt_block_invoke;
        block[3] = &unk_279ECBAF0;
        v16 = v10;
        block[6] = a1;
        block[7] = v14;
        block[4] = &v21;
        block[5] = &v17;
        dispatch_sync(__NETRBClientGetQueue___netrbQueue, block);
        if (*(v22 + 24) == 1)
        {
          *(v22 + 24) = v18[3] == 2001;
        }
      }

      else
      {
        NETRBErrorLog("unable to create framework queue");
      }
    }

    else
    {
      NETRBErrorLog("incorrect device type value %d");
    }
  }

  else
  {
    NETRBErrorLog("client handle cannot be NULL");
  }

LABEL_5:
  v4 = *(v22 + 24);
  _Block_object_dispose(&v17, 8);
  _Block_object_dispose(&v21, 8);
  return v4;
}

uint64_t _NETRBClientRemoveHost(uint64_t a1, unsigned int a2)
{
  v4 = xpc_dictionary_create(0, 0, 0);
  if (v4)
  {
    v5 = v4;
    xpc_dictionary_set_uint64(v4, netrbClientHostIftype, a2);
    xpc_dictionary_set_uint64(v5, netrbClientHostDeviceId, 0xFFFFFFFFuLL);
    v6 = _NETRBClientRemoveHostExt(a1, v5);
    xpc_release(v5);
    return v6;
  }

  else
  {
    NETRBErrorLog("failed to create xpc dictionary for remove host.");
    return 0;
  }
}

uint64_t _NETRBClientGetHostCount(uint64_t a1, _DWORD *a2, _DWORD *a3)
{
  v21 = 0;
  v22 = &v21;
  v23 = 0x2000000000;
  v24 = 0;
  v17 = 0;
  v18 = &v17;
  v19 = 0x2000000000;
  v20 = 0;
  v13 = 0;
  v14 = &v13;
  v15 = 0x2000000000;
  v16 = 0;
  v9 = 0;
  v10 = &v9;
  v11 = 0x2000000000;
  v12 = 2000;
  if (a1)
  {
    if (a2)
    {
      if (a3)
      {
        if (__NETRBClientGetQueue_predQueue != -1)
        {
          v7 = a1;
          _NETRBClientCreateInternal_cold_2();
          a1 = v7;
        }

        if (__NETRBClientGetQueue___netrbQueue)
        {
          block[0] = MEMORY[0x277D85DD0];
          block[1] = 0x40000000;
          block[2] = ___NETRBClientGetHostCount_block_invoke;
          block[3] = &unk_279ECBB40;
          block[4] = &v13;
          block[5] = &v9;
          block[6] = &v21;
          block[7] = &v17;
          block[8] = a1;
          dispatch_sync(__NETRBClientGetQueue___netrbQueue, block);
          if (*(v14 + 24) == 1)
          {
            *(v14 + 24) = v10[3] == 2001;
            *a2 = *(v22 + 6);
            *a3 = *(v18 + 6);
          }
        }

        else
        {
          NETRBErrorLog("unable to create framework queue", a2, a3, v7);
        }
      }

      else
      {
        NETRBErrorLog("current cannot be NULL", a2, 0);
      }
    }

    else
    {
      NETRBErrorLog("max cannot be NULL", 0, a3);
    }
  }

  else
  {
    NETRBErrorLog("client handle cannot be NULL", a2, a3);
  }

  v5 = *(v14 + 24);
  _Block_object_dispose(&v9, 8);
  _Block_object_dispose(&v13, 8);
  _Block_object_dispose(&v17, 8);
  _Block_object_dispose(&v21, 8);
  return v5;
}

uint64_t _NETRBClientSetHostCount(uint64_t a1, int a2, int a3)
{
  v15 = 0;
  v16 = &v15;
  v17 = 0x2000000000;
  v18 = 0;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2000000000;
  v14 = 2000;
  if (a1)
  {
    if ((a2 - 7) > 0xFFFFFFFA)
    {
      if (__NETRBClientGetQueue_predQueue != -1)
      {
        _NETRBClientCreateInternal_cold_2();
      }

      if (__NETRBClientGetQueue___netrbQueue)
      {
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 0x40000000;
        block[2] = ___NETRBClientSetHostCount_block_invoke;
        block[3] = &unk_279ECBB90;
        v9 = a2;
        v10 = a3;
        block[4] = &v15;
        block[5] = &v11;
        block[6] = a1;
        dispatch_sync(__NETRBClientGetQueue___netrbQueue, block);
        if (*(v16 + 24) == 1)
        {
          *(v16 + 24) = v12[3] == 2001;
        }
      }

      else
      {
        NETRBErrorLog("unable to create framework queue");
      }
    }

    else
    {
      NETRBErrorLog("incorrect device type value %d");
    }
  }

  else
  {
    NETRBErrorLog("client handle cannot be NULL");
  }

  v6 = *(v16 + 24);
  _Block_object_dispose(&v11, 8);
  _Block_object_dispose(&v15, 8);
  return v6;
}

uint64_t _NETRBClientNewInterface(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v52 = 0;
  v53 = &v52;
  v54 = 0x2000000000;
  v55 = 0;
  v48 = 0;
  v49 = &v48;
  v50 = 0x2000000000;
  v51 = 0;
  if (!a1)
  {
    NETRBErrorLog("client handle cannot be NULL", a2, a3, a4);
    goto LABEL_43;
  }

  v4 = a4;
  v6 = a2;
  v49[3] = xpc_dictionary_create(0, 0, 0);
  if (v4)
  {
    string = xpc_dictionary_get_string(v4, netrbClientExternalInterface);
  }

  else
  {
    string = 0;
  }

  if ((v6 - 201) < 3)
  {
    if (string)
    {
      NETRBErrorLog("specifying external interface not supported", v8, v9, v10);
      goto LABEL_43;
    }

    if (v4)
    {
      uint64 = xpc_dictionary_get_uint64(v4, netrbClientInterfaceMTU[0]);
      goto LABEL_16;
    }

LABEL_22:
    v20 = 0;
    v21 = 0;
    v22 = 0;
    v23 = 0;
    v24 = 0;
    v25 = 1;
LABEL_38:
    if (__NETRBClientGetQueue_predQueue != -1)
    {
      v38 = v20;
      _NETRBClientCreateInternal_cold_2();
      v20 = v38;
    }

    if (__NETRBClientGetQueue___netrbQueue)
    {
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 0x40000000;
      block[2] = ___NETRBClientNewInterface_block_invoke;
      block[3] = &unk_279ECBBD8;
      block[6] = a1;
      block[7] = string;
      v42 = v25;
      v43 = v23;
      v44 = v4;
      v45 = v24;
      v46 = v22;
      v47 = v21;
      v40 = v6;
      v41 = v20;
      block[4] = &v48;
      block[5] = &v52;
      block[8] = a3;
      block[9] = __NETRBClientGetQueue___netrbQueue;
      dispatch_sync(__NETRBClientGetQueue___netrbQueue, block);
    }

    else
    {
      NETRBErrorLog("unable to create framework queue");
    }

    goto LABEL_43;
  }

  if (v6 != 204)
  {
    NETRBErrorLog("incorrect operation mode %d", v8, v9, v10);
    goto LABEL_43;
  }

  if (!string || !*string)
  {
    NETRBErrorLog("interface must be specified", v8, v9, v10);
    goto LABEL_43;
  }

  if (!v4)
  {
    goto LABEL_22;
  }

  uint64 = 0;
LABEL_16:
  v12 = v49[3];
  v13 = xpc_dictionary_get_string(v4, netrbClientInterfaceStartAddress);
  v14 = xpc_dictionary_get_string(v4, netrbClientInterfaceEndAddress);
  v15 = xpc_dictionary_get_string(v4, netrbClientInterfaceNetworkMask);
  if (v13 && v14 && (v19 = v15) != 0)
  {
    xpc_dictionary_set_string(v12, netrbXPCStartAddress[0], v13);
    xpc_dictionary_set_string(v12, netrbXPCEndAddress[0], v14);
    xpc_dictionary_set_string(v12, netrbXPCNetworkMask[0], v19);
  }

  else if (v13 | v14)
  {
    NETRBErrorLog("All of %s, %s, and %s must be specified", v16, v17, v18);
    goto LABEL_43;
  }

  if (insert_nat66_params(v4, v49[3]))
  {
    v26 = v49[3];
    uuid = xpc_dictionary_get_uuid(v4, netrbClientNetworkIdentifier);
    if (uuid)
    {
      xpc_dictionary_set_uuid(v26, netrbXPCNetworkIdentifier[0], uuid);
      v28 = xpc_dictionary_get_string(v4, netrbClientInterfaceIPv4Address);
      v29 = xpc_dictionary_get_string(v4, netrbClientInterfaceNetworkMask);
      v32 = v29;
      if (v28 && v29)
      {
        xpc_dictionary_set_string(v26, netrbXPCInterfaceIPv4Address[0], v28);
        xpc_dictionary_set_string(v26, netrbXPCNetworkMask[0], v32);
      }

      else if (v28 | v29)
      {
        NETRBErrorLog("%s, and %s must be specified", v30, v31);
        goto LABEL_43;
      }

      v33 = xpc_dictionary_get_string(v4, netrbClientInterfaceIPv6Address);
      if (v33)
      {
        xpc_dictionary_set_string(v26, netrbXPCInterfaceIPv6Address[0], v33);
      }
    }

    if (xpc_dictionary_get_value(v4, netrbClientAllocateMACAddress))
    {
      v25 = xpc_dictionary_get_BOOL(v4, netrbClientAllocateMACAddress);
    }

    else
    {
      v25 = 1;
    }

    v23 = xpc_dictionary_get_BOOL(v4, netrbClientEnableTSO);
    v22 = xpc_dictionary_get_BOOL(v4, netrbClientEnableIsolation);
    v21 = xpc_dictionary_get_BOOL(v4, netrbClientEnableChecksumOffload);
    v24 = xpc_dictionary_get_BOOL(v4, netrbClientEnableMACNAT);
    LOBYTE(v4) = xpc_dictionary_get_BOOL(v4, netrbClientEnableVirtIOHeader);
    v20 = uint64;
    goto LABEL_38;
  }

LABEL_43:
  v34 = v49[3];
  if (v34)
  {
    xpc_release(v34);
  }

  v35 = *(v53 + 24);
  _Block_object_dispose(&v48, 8);
  _Block_object_dispose(&v52, 8);
  return v35;
}

uint64_t _NETRBClientAddIPPortForwardingRule(CFTypeRef cf, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v22 = 0;
  v23 = &v22;
  v24 = 0x2000000000;
  v25 = 0;
  if (cf)
  {
    v8 = a6;
    v10 = a4;
    v11 = a3;
    v12 = a2;
    if (a4 == 2 || a4 == 30)
    {
      if (__NETRBClientGetQueue_predQueue != -1)
      {
        _NETRBClientCreateInternal_cold_2();
      }

      v14 = __NETRBClientGetQueue___netrbQueue;
      if (__NETRBClientGetQueue___netrbQueue)
      {
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 0x40000000;
        block[2] = ___NETRBClientAddIPPortForwardingRule_block_invoke;
        block[3] = &unk_279ECBC50;
        v20 = v12;
        v18 = v11;
        v21 = v10;
        block[6] = cf;
        block[7] = a5;
        v19 = v8;
        block[4] = a7;
        block[5] = &v22;
        block[8] = __NETRBClientGetQueue___netrbQueue;
        CFRetain(cf);
        dispatch_sync(v14, block);
        if ((v23[3] & 1) == 0)
        {
          CFRelease(cf);
        }
      }

      else
      {
        NETRBErrorLog("unable to create framework queue");
      }
    }

    else
    {
      NETRBErrorLog("invalid address family %d", a2, a3, a4, a5, a6, a7);
    }
  }

  else
  {
    NETRBErrorLog("client handle cannot be NULL", a2, a3, a4, a5, a6, a7);
  }

  v15 = *(v23 + 24);
  _Block_object_dispose(&v22, 8);
  return v15;
}

void *netrbMakePortForwardingRuleDict(unsigned int a1, unsigned int a2, unsigned int a3, void *a4, unsigned int a5)
{
  v14 = *MEMORY[0x277D85DE8];
  if (a3 != 30 && a3 != 2 || !a4 && a5 || a4 && !a5 || a4 && !inet_ntop(a3, a4, string, 0x2Eu))
  {
    return 0;
  }

  v12 = xpc_dictionary_create(0, 0, 0);
  v10 = v12;
  if (a1)
  {
    xpc_dictionary_set_uint64(v12, netrbXPCPortForwardingRuleProtocol[0], a1);
  }

  if (a2)
  {
    xpc_dictionary_set_uint64(v10, netrbXPCPortForwardingRuleExternalPort[0], a2);
  }

  xpc_dictionary_set_uint64(v10, netrbXPCPortForwardingRuleAddressFamily[0], a3);
  if (a5)
  {
    xpc_dictionary_set_uint64(v10, netrbXPCPortForwardingRuleInternalPort[0], a5);
  }

  if (a4)
  {
    xpc_dictionary_set_string(v10, netrbXPCPortForwardingRuleInternalAddress[0], string);
  }

  return v10;
}

uint64_t _NETRBClientRemoveIPPortForwardingRule(CFTypeRef cf, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v17 = 0;
  v18 = &v17;
  v19 = 0x2000000000;
  v20 = 0;
  if (cf)
  {
    v6 = a4;
    v7 = a3;
    v8 = a2;
    if (a4 == 2 || a4 == 30)
    {
      if (__NETRBClientGetQueue_predQueue != -1)
      {
        _NETRBClientCreateInternal_cold_2();
      }

      v10 = __NETRBClientGetQueue___netrbQueue;
      if (__NETRBClientGetQueue___netrbQueue)
      {
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 0x40000000;
        block[2] = ___NETRBClientRemoveIPPortForwardingRule_block_invoke;
        block[3] = &unk_279ECBCC8;
        v15 = v8;
        v14 = v7;
        v16 = v6;
        block[4] = a5;
        block[5] = &v17;
        block[6] = cf;
        block[7] = __NETRBClientGetQueue___netrbQueue;
        CFRetain(cf);
        dispatch_sync(v10, block);
        if ((v18[3] & 1) == 0)
        {
          CFRelease(cf);
        }
      }

      else
      {
        NETRBErrorLog("unable to create framework queue");
      }
    }

    else
    {
      NETRBErrorLog("invalid address family %d", a2, a3, a4, a5);
    }
  }

  else
  {
    NETRBErrorLog("client handle cannot be NULL", a2, a3, a4, a5);
  }

  v11 = *(v18 + 24);
  _Block_object_dispose(&v17, 8);
  return v11;
}

uint64_t _NETRBClientGetIPPortForwardingRules(CFTypeRef cf, uint64_t a2, uint64_t a3)
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x2000000000;
  v14 = 0;
  if (cf)
  {
    v4 = a2;
    if (a2 == 2 || a2 == 30)
    {
      if (__NETRBClientGetQueue_predQueue != -1)
      {
        _NETRBClientCreateInternal_cold_2();
      }

      v6 = __NETRBClientGetQueue___netrbQueue;
      if (__NETRBClientGetQueue___netrbQueue)
      {
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 0x40000000;
        block[2] = ___NETRBClientGetIPPortForwardingRules_block_invoke;
        block[3] = &unk_279ECBD40;
        v10 = v4;
        block[4] = a3;
        block[5] = &v11;
        block[6] = cf;
        block[7] = __NETRBClientGetQueue___netrbQueue;
        CFRetain(cf);
        dispatch_sync(v6, block);
        if ((v12[3] & 1) == 0)
        {
          CFRelease(cf);
        }
      }

      else
      {
        NETRBErrorLog("unable to create framework queue");
      }
    }

    else
    {
      NETRBErrorLog("invalid address family %d", a2, a3);
    }
  }

  else
  {
    NETRBErrorLog("client handle cannot be NULL", a2, a3);
  }

  v7 = *(v12 + 24);
  _Block_object_dispose(&v11, 8);
  return v7;
}

const char *_NETRBIPPortForwardingDictGetDetails(xpc_object_t xdict, _BYTE *a2, _WORD *a3, uint64_t a4, void *a5, _WORD *a6)
{
  if (!xdict)
  {
    NETRBErrorLog("rule is NULL", a2, a3, a4, a5, a6);
    return 0;
  }

  v8 = a4;
  if (a4 != 2 && a4 != 30)
  {
    NETRBErrorLog("invalid address family %d", a2, a3, a4, a5, a6);
    return 0;
  }

  uint64 = xpc_dictionary_get_uint64(xdict, netrbXPCPortForwardingRuleProtocol[0]);
  *a2 = uint64;
  if (!uint64)
  {
    return 0;
  }

  v13 = xpc_dictionary_get_uint64(xdict, netrbXPCPortForwardingRuleExternalPort[0]);
  *a3 = v13;
  if (!v13)
  {
    return 0;
  }

  v14 = xpc_dictionary_get_uint64(xdict, netrbXPCPortForwardingRuleInternalPort[0]);
  *a6 = v14;
  if (!v14)
  {
    return 0;
  }

  if (xpc_dictionary_get_uint64(xdict, netrbXPCPortForwardingRuleAddressFamily[0]) != v8)
  {
    NETRBErrorLog("returned address family %d != %d", v15, v16, v17, v18, v19);
    return 0;
  }

  result = xpc_dictionary_get_string(xdict, netrbXPCPortForwardingRuleInternalAddress[0]);
  if (result)
  {
    return (inet_pton(v8, result, a5) != 0);
  }

  return result;
}

uint64_t NETRBClientSendNotification(void *a1)
{
  if (!__netrbClientList || (Count = CFArrayGetCount(__netrbClientList)) == 0)
  {
    NETRBErrorLog("received notification but no clients");
    return 0;
  }

  v3 = Count;
  v4 = xpc_dictionary_create(0, 0, 0);
  if (!v4)
  {
    NETRBErrorLog("xpc_dictionary_create() failed");
    return 0;
  }

  v5 = v4;
  v6 = netrbClientNotificationKey;
  uint64 = xpc_dictionary_get_uint64(a1, netrbXPCNotification[0]);
  xpc_dictionary_set_uint64(v5, v6, uint64);
  if (v3 >= 1)
  {
    for (i = 0; i != v3; ++i)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(__netrbClientList, i);
      if (ValueAtIndex)
      {
        v10 = ValueAtIndex;
        if (ValueAtIndex[2])
        {
          if (ValueAtIndex[3])
          {
            xpc_retain(v5);
            CFRetain(v10);
            v11 = v10[2];
            v13[0] = MEMORY[0x277D85DD0];
            v13[1] = 0x40000000;
            v13[2] = __NETRBClientSendNotification_block_invoke;
            v13[3] = &__block_descriptor_tmp_179;
            v13[4] = v10;
            v13[5] = v5;
            dispatch_async(v11, v13);
          }
        }
      }
    }
  }

  xpc_release(v5);
  return 1;
}

void __NETRBClientSendNotification_block_invoke(uint64_t a1)
{
  v4[0] = 0;
  v4[1] = v4;
  v4[2] = 0x2000000000;
  v5 = 0;
  if (__NETRBClientGetQueue_predQueue != -1)
  {
    _NETRBClientCreateInternal_cold_2();
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 0x40000000;
  block[2] = __NETRBClientSendNotification_block_invoke_2;
  block[3] = &unk_279ECBD68;
  block[4] = v4;
  v3 = *(a1 + 32);
  dispatch_sync(__NETRBClientGetQueue___netrbQueue, block);
  xpc_release(*(a1 + 40));
  CFRelease(*(a1 + 32));
  _Block_object_dispose(v4, 8);
}

uint64_t __NETRBClientSendNotification_block_invoke_2(uint64_t a1)
{
  result = __NETRBClientValidateClient(*(a1 + 40));
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!result)
  {
    v3 = *(*(*(a1 + 40) + 24) + 16);

    return v3();
  }

  return result;
}

uint64_t _NETRBClientModifyLowLatencyFlow(uint64_t a1, void *a2, char a3)
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x2000000000;
  v14 = 0;
  inited = netrbInitIfnetTrafficDescriptor(a2, 0);
  *(v12 + 24) = inited;
  if (inited)
  {
    if (__NETRBClientGetQueue_predQueue != -1)
    {
      _NETRBClientCreateInternal_cold_2();
    }

    if (__NETRBClientGetQueue___netrbQueue)
    {
      v9[0] = MEMORY[0x277D85DD0];
      v9[1] = 0x40000000;
      v9[2] = ___NETRBClientModifyLowLatencyFlow_block_invoke;
      v9[3] = &unk_279ECBF20;
      v9[4] = &v11;
      v9[5] = a1;
      v9[6] = a2;
      v10 = a3;
      dispatch_sync(__NETRBClientGetQueue___netrbQueue, v9);
    }

    else
    {
      NETRBErrorLog("unable to create framework queue");
    }
  }

  else
  {
    NETRBErrorLog("input xpc dictionary is malformed.");
  }

  v7 = *(v12 + 24);
  _Block_object_dispose(&v11, 8);
  return v7;
}

uint64_t _NETRBCreateNetworkConfiguration(unsigned int a1, void *a2)
{
  if (_NETRBNetworkGetTypeId_pred != -1)
  {
    _NETRBNetworkCopy_cold_1();
  }

  Instance = _CFRuntimeCreateInstance();
  v5 = Instance;
  if (Instance)
  {
    *(Instance + 144) = 0;
    *(Instance + 112) = 0u;
    *(Instance + 128) = 0u;
    *(Instance + 80) = 0u;
    *(Instance + 96) = 0u;
    *(Instance + 48) = 0u;
    *(Instance + 64) = 0u;
    *(Instance + 16) = 0u;
    *(Instance + 32) = 0u;
    if (a1 >= 2)
    {
      if (a1 == 2)
      {
        NETRBErrorLog("%s SPI doesn't support bridged mode");
      }

      else
      {
        NETRBErrorLog("%s: invalid operation mode");
      }

      CFRelease(v5);
      v5 = 0;
      result = 6002;
    }

    else
    {
      *(Instance + 36) = a1;
      result = 0;
      if (a1 == 1)
      {
        v5[10] |= 2u;
        v5[14] |= 4u;
      }
    }
  }

  else
  {
    NETRBErrorLog("%s: _CFRuntimeCreateInstance", "_NETRBCreateNetworkConfiguration");
    result = 6003;
  }

  *a2 = v5;
  return result;
}

uint64_t _NETRBCreateNetwork(void *a1, uint64_t a2)
{
  v13 = 0;
  v14 = &v13;
  v15 = 0x2000000000;
  v16 = 0;
  v9 = 0;
  v10 = &v9;
  v11 = 0x2000000000;
  v12 = 0;
  v8 = 0;
  if (NETRBLogCreate(a1, a2))
  {
    *(v14 + 6) = 6003;
  }

  else
  {
    GlobalClient = __NETRBNetworkCreateGlobalClient();
    *(v14 + 6) = GlobalClient;
    if (GlobalClient)
    {
      NETRBErrorLog("%s: __NETRBNetworkCreateGlobalClient", "_NETRBCreateNetwork");
    }

    else
    {
      _NETRBSerializeNetwork(a1, &v8);
      *(v14 + 6) = 0;
      if (__NETRBClientGetQueue_predQueue != -1)
      {
        _NETRBClientCreateInternal_cold_2();
      }

      if (__NETRBClientGetQueue___netrbQueue)
      {
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 0x40000000;
        block[2] = ___NETRBCreateNetwork_block_invoke;
        block[3] = &unk_279ECBDD8;
        v4 = v8;
        block[6] = a1;
        block[7] = v8;
        block[4] = &v13;
        block[5] = &v9;
        dispatch_sync(__NETRBClientGetQueue___netrbQueue, block);
        if ((v10[3] & 1) == 0)
        {
          NETRBErrorLog("%s: failed", "_NETRBCreateNetwork");
          *(v14 + 6) = 1;
        }
      }

      else
      {
        NETRBErrorLog("%s: unable to create framework queue", "_NETRBCreateNetwork");
        *(v14 + 6) = 6003;
        v4 = v8;
      }

      if (v4)
      {
        xpc_release(v4);
      }
    }
  }

  v5 = *(v14 + 6);
  _Block_object_dispose(&v9, 8);
  _Block_object_dispose(&v13, 8);
  return v5;
}

uint64_t __NETRBNetworkCreateGlobalClient()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2000000000;
  v6 = 0;
  if (__NETRBNetworkGetServiceQueue_predNetworkQueue != -1)
  {
    __NETRBNetworkCreateGlobalClient_cold_1();
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 0x40000000;
  block[2] = ____NETRBNetworkCreateGlobalClient_block_invoke;
  block[3] = &unk_279ECBFA8;
  block[4] = &v3;
  dispatch_sync(__NETRBNetworkGetServiceQueue___networkServiceQueue, block);
  v0 = *(v4 + 6);
  _Block_object_dispose(&v3, 8);
  return v0;
}

uint64_t _NETRBSerializeNetwork(void *a1, xpc_object_t *a2)
{
  v4 = xpc_dictionary_create(0, 0, 0);
  *a2 = v4;
  xpc_dictionary_set_data(v4, netrbXPCNetworkSerialization[0], a1 + 2, 0x78uLL);
  v5 = a1[17];
  if (v5)
  {
    v6 = 0;
    do
    {
      v5 = *v5;
      v6 += 24;
    }

    while (v5);
    v7 = malloc_type_malloc(v6, 0xA056F487uLL);
    bzero(v7, v6);
    v8 = a1[17];
    if (v8)
    {
      v9 = v7;
      do
      {
        v10 = *v8;
        v9[2] = *(v8 + 2);
        *v9 = v10;
        v9 += 3;
        v8 = *v8;
      }

      while (v8);
    }

    xpc_dictionary_set_data(*a2, netrbXPCNetworkSerializationDHCPReservation[0], v7, v6);
    free(v7);
  }

  v11 = a1[18];
  if (v11)
  {
    v12 = 0;
    do
    {
      v11 = *v11;
      v12 += 32;
    }

    while (v11);
    v13 = malloc_type_malloc(v12, 0x95A4A4E9uLL);
    bzero(v13, v12);
    v14 = a1[18];
    if (v14)
    {
      v15 = v13;
      do
      {
        v16 = v14[1];
        *v15 = *v14;
        v15[1] = v16;
        v15 += 2;
        v14 = *v14;
      }

      while (v14);
    }

    xpc_dictionary_set_data(*a2, netrbXPCNetworkSerializationPortForwarding, v13, v12);
    free(v13);
  }

  return 0;
}

uint64_t _NETRBNetworkStartVirtualMachineInterface(void *a1, void *a2, void *a3)
{
  v32 = 0;
  v33 = &v32;
  v34 = 0x2000000000;
  v35 = 0;
  v28 = 0;
  v29 = &v28;
  v30 = 0x2000000000;
  v31 = 0;
  v27 = 0;
  if (NETRBLogCreate(a1, a2))
  {
    goto LABEL_2;
  }

  GlobalClient = __NETRBNetworkCreateGlobalClient();
  *(v33 + 6) = GlobalClient;
  if (GlobalClient)
  {
    NETRBErrorLog("%s: __NETRBNetworkCreateGlobalClient", "_NETRBNetworkStartVirtualMachineInterface");
    goto LABEL_5;
  }

  if (_NETRBInterfaceGetTypeId_pred != -1)
  {
    _NETRBNetworkStartVirtualMachineInterface_cold_1();
  }

  Instance = _CFRuntimeCreateInstance();
  if (!Instance)
  {
    NETRBErrorLog("%s: _CFRuntimeCreateInstance", "_NETRBNetworkStartVirtualMachineInterface");
LABEL_2:
    *(v33 + 6) = 6003;
    goto LABEL_5;
  }

  v10 = Instance;
  *(Instance + 48) = 0;
  NETRBInfoLog("%s: adding virtual interface to network %p", "_NETRBNetworkStartVirtualMachineInterface", a1);
  if (__NETRBClientGetQueue_predQueue != -1)
  {
    _NETRBClientCreateInternal_cold_2();
  }

  v11 = __NETRBClientGetQueue___netrbQueue;
  if (!__NETRBClientGetQueue___netrbQueue)
  {
    v13 = 0;
    v14 = 6003;
    NETRBErrorLog("%s: unable to create framework queue");
LABEL_25:
    *(v33 + 6) = v14;
LABEL_26:
    CFRelease(v10);
    goto LABEL_27;
  }

  _NETRBSerializeNetwork(a1, &v27);
  *(v33 + 6) = 0;
  if (a3)
  {
    if (xpc_dictionary_get_value(a3, netrbClientAllocateMACAddress))
    {
      v12 = xpc_dictionary_get_BOOL(a3, netrbClientAllocateMACAddress);
    }

    else
    {
      v12 = 1;
    }

    v16 = xpc_dictionary_get_BOOL(a3, netrbClientEnableTSO);
    v15 = xpc_dictionary_get_BOOL(a3, netrbClientEnableIsolation);
    v19 = xpc_dictionary_get_BOOL(a3, netrbClientEnableChecksumOffload);
    v18 = xpc_dictionary_get_BOOL(a3, netrbClientEnableMACNAT);
    v17 = xpc_dictionary_get_BOOL(a3, netrbClientEnableVirtIOHeader);
  }

  else
  {
    v15 = 0;
    v16 = 0;
    v17 = 0;
    v18 = 0;
    v19 = 0;
    v12 = 1;
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 0x40000000;
  block[2] = ___NETRBNetworkStartVirtualMachineInterface_block_invoke;
  block[3] = &unk_279ECBE28;
  v21 = v12;
  v13 = v27;
  block[6] = a1;
  block[7] = v27;
  v22 = v16;
  v23 = v17;
  v24 = v18;
  v25 = v15;
  v26 = v19;
  block[4] = &v32;
  block[5] = &v28;
  block[8] = a3;
  block[9] = v10;
  dispatch_sync(v11, block);
  if (!*(v29 + 24))
  {
    v14 = 1;
    NETRBErrorLog("%s: _NETRBClientNewInterface");
    goto LABEL_25;
  }

  if (*(v33 + 6))
  {
    goto LABEL_26;
  }

  *a2 = v10;
  CFRetain(a1);
  if (*(v33 + 6))
  {
    goto LABEL_26;
  }

LABEL_27:
  if (v13)
  {
    xpc_release(v13);
  }

LABEL_5:
  v7 = *(v33 + 6);
  _Block_object_dispose(&v28, 8);
  _Block_object_dispose(&v32, 8);
  return v7;
}

unint64_t _NETRBEtherAton(const char *a1)
{
  v3 = 0;
  v2 = 0;
  sscanf(a1, "%hhx:%hhx:%hhx:%hhx:%hhx:%hhx", &v2, &v2 + 1, &v2 + 2, &v2 + 3, &v3, &v3 + 1);
  return v2 | (v3 << 32);
}

uint64_t _NETRBNetworkSetIPv4Addresses(uint64_t a1, _DWORD *a2, _DWORD *a3)
{
  *(a1 + 44) = *a2;
  *(a1 + 48) = *a3;
  return 0;
}

uint64_t _NETRBNetworkSetIPv6Prefix(uint64_t a1, _OWORD *a2, int a3)
{
  *(a1 + 60) = *a2;
  *(a1 + 76) = a3;
  return 0;
}

uint64_t _NETRBNetworkAddPortForwardingRule(uint64_t a1, char a2, int a3, __int16 a4, __int16 a5, uint64_t a6)
{
  v11 = malloc_type_malloc(0x20uLL, 0x10200401B9196EFuLL);
  v12 = v11;
  *v11 = 0u;
  *(v11 + 1) = 0u;
  *(v11 + 8) = a2;
  if (a3 == 2 || a3 == 30)
  {
    *(v11 + 9) = a3;
    *(v11 + 5) = a4;
    *(v11 + 6) = a5;
    __memcpy_chk();
    v13 = 0;
    *v12 = *(a1 + 144);
    *(a1 + 144) = v12;
  }

  else
  {
    NETRBErrorLog("%s: invalid address family %u", "_NETRBNetworkAddPortForwardingRule", a3);
    v13 = 6002;
  }

  if (a3 != 2 && a3 != 30)
  {
    free(v12);
  }

  return v13;
}

uint64_t _NETRBNetworkAddDHCPReservation(uint64_t a1, int *a2, _DWORD *a3)
{
  v6 = malloc_type_malloc(0x18uLL, 0x10200400817995AuLL);
  v7 = *a2;
  v6[6] = *(a2 + 2);
  *(v6 + 2) = v7;
  *(v6 + 4) = *a3;
  *v6 = *(a1 + 136);
  *(a1 + 136) = v6;
  return 0;
}

uint64_t _NETRBDeserializeNetworkConfig(void *a1, uint64_t a2)
{
  v23 = 0;
  length = 0;
  v22 = 0;
  data = xpc_dictionary_get_data(a1, netrbXPCNetworkSerialization[0], &length);
  if (length == 120)
  {
    v5 = *data;
    v6 = data[1];
    v7 = data[3];
    *(a2 + 32) = data[2];
    *(a2 + 48) = v7;
    *a2 = v5;
    *(a2 + 16) = v6;
    v8 = data[4];
    v9 = data[5];
    v10 = data[6];
    *(a2 + 112) = *(data + 14);
    *(a2 + 80) = v9;
    *(a2 + 96) = v10;
    *(a2 + 64) = v8;
    *(a2 + 120) = 0;
    v11 = (a2 + 120);
    *(a2 + 128) = 0;
    v12 = xpc_dictionary_get_data(a1, netrbXPCNetworkSerializationDHCPReservation[0], &v23);
    if (v12 && v23 >= 0x18)
    {
      v13 = v23 / 0x18;
      v14 = v12 + 16;
      do
      {
        v15 = malloc_type_malloc(0x18uLL, 0x10200400817995AuLL);
        v15[1] = 0;
        v15[2] = 0;
        *v15 = 0;
        v16 = *(v14 - 2);
        *(v15 + 2) = *(v14 - 2);
        *(v15 + 6) = v16;
        v17 = *v14;
        v14 += 6;
        *(v15 + 4) = v17;
        *v15 = *v11;
        *v11 = v15;
        --v13;
      }

      while (v13);
    }

    result = xpc_dictionary_get_data(a1, netrbXPCNetworkSerializationPortForwarding, &v22);
    if (result)
    {
      if (v22 >= 0x20)
      {
        v19 = v22 >> 5;
        v20 = result + 8;
        do
        {
          v21 = malloc_type_malloc(0x20uLL, 0x10200401B9196EFuLL);
          *v21 = 0u;
          *(v21 + 1) = 0u;
          *(v21 + 4) = *v20;
          *(v21 + 10) = *(v20 + 2);
          *(v21 + 1) = *(v20 + 8);
          *v21 = *(a2 + 128);
          *(a2 + 128) = v21;
          v20 += 32;
          --v19;
        }

        while (v19);
      }

      return 0;
    }
  }

  else
  {
    NETRBErrorLog("%s: invalid serialized network", "_NETRBDeserializeNetworkConfig");
    return 6002;
  }

  return result;
}

uint64_t _NETRBDeserializeNetwork(void *a1, void *a2)
{
  if (_NETRBNetworkGetTypeId_pred != -1)
  {
    _NETRBNetworkCopy_cold_1();
  }

  Instance = _CFRuntimeCreateInstance();
  v5 = Instance;
  if (Instance)
  {
    v6 = _NETRBDeserializeNetworkConfig(a1, Instance + 16);
    if (v6)
    {
      CFRelease(v5);
      v5 = 0;
    }
  }

  else
  {
    NETRBErrorLog("%s: _CFRuntimeCreateInstance", "_NETRBDeserializeNetwork");
    v6 = 6003;
  }

  *a2 = v5;
  return v6;
}

uint64_t _NETRBNetworkGetIPv4Subnet(uint64_t result, _DWORD *a2, _DWORD *a3)
{
  *a2 = *(result + 44);
  *a3 = *(result + 48);
  return result;
}

__n128 _NETRBNetworkGetIPv6Prefix(uint64_t a1, __n128 *a2, _BYTE *a3)
{
  result = *(a1 + 60);
  *a2 = result;
  *a3 = *(a1 + 76);
  return result;
}

uint64_t __NETRBClientRelease(void *a1)
{
  v2 = a1[3];
  if (v2)
  {
    _Block_release(v2);
    a1[3] = 0;
  }

  v3 = a1[2];
  if (v3)
  {
    dispatch_release(v3);
    a1[2] = 0;
  }

  return NETRBInfoLog("releasing client %p", a1);
}

void notification_insert_keys(void *a1, xpc_object_t xdict)
{
  v16 = *MEMORY[0x277D85DE8];
  string = xpc_dictionary_get_string(xdict, netrbXPCMACAddress[0]);
  if (string)
  {
    xpc_dictionary_set_string(a1, netrbClientMACAddress, string);
  }

  *v15 = 0;
  *&v15[8] = 0;
  uuid = xpc_dictionary_get_uuid(xdict, netrbXPCMACUUID[0]);
  if (uuid)
  {
    *v15 = *uuid;
    xpc_dictionary_set_uuid(a1, netrbClientMACUUID, v15);
  }

  v6 = xpc_dictionary_dup_fd(xdict, netrbXPCInterfaceSocket[0]);
  if (v6 != -1)
  {
    xpc_dictionary_set_uint64(a1, netrbClientSocketFD, v6);
  }

  v7 = xpc_dictionary_get_string(xdict, netrbXPCStartAddress[0]);
  v8 = xpc_dictionary_get_string(xdict, netrbXPCEndAddress[0]);
  v9 = xpc_dictionary_get_string(xdict, netrbXPCNetworkMask[0]);
  if (v7)
  {
    v10 = v8 == 0;
  }

  else
  {
    v10 = 1;
  }

  if (!v10 && v9 != 0)
  {
    v12 = v9;
    xpc_dictionary_set_string(a1, netrbClientInterfaceStartAddress, v7);
    xpc_dictionary_set_string(a1, netrbClientInterfaceEndAddress, v8);
    xpc_dictionary_set_string(a1, netrbClientInterfaceNetworkMask, v12);
  }

  value = xpc_dictionary_get_value(xdict, netrbXPCInterfaceMTU[0]);
  if (value)
  {
    xpc_dictionary_set_value(a1, netrbClientInterfaceMTU[0], value);
  }

  v14 = xpc_dictionary_get_value(xdict, netrbXPCNat66Param[0]);
  if (v14)
  {
    xpc_dictionary_set_value(a1, netrbClientNat66Param, v14);
  }
}

void *__NETRBNetworkRelease(uint64_t a1)
{
  if (*(a1 + 152) == 1)
  {
    value = 0;
    if (__NETRBClientValidateClient(_NETRBNetworkClient))
    {
      NETRBErrorLog("%s: invalid network global client", "__NETRBNetworkRelease");
    }

    else
    {
      _NETRBSerializeNetwork(a1, &value);
      v2 = xpc_dictionary_create(0, 0, 0);
      xpc_dictionary_set_uint64(v2, netrbXPCKey[0], 0x401uLL);
      xpc_dictionary_set_string(v2, netrbXPCClientID[0], (_NETRBNetworkClient + 32));
      v3 = value;
      xpc_dictionary_set_value(v2, netrbXPCNetworkObject[0], value);
      NETRBXPCSetupAndSend(0, v2, &__block_literal_global_265);
      if (v2)
      {
        xpc_release(v2);
      }

      if (v3)
      {
        xpc_release(v3);
      }
    }
  }

  while (1)
  {
    v4 = *(a1 + 136);
    if (!v4)
    {
      break;
    }

    *(a1 + 136) = *v4;
    free(v4);
  }

  while (1)
  {
    result = *(a1 + 144);
    if (!result)
    {
      break;
    }

    *(a1 + 144) = *result;
    free(result);
  }

  return result;
}

void __NETRBInterfaceRelease(uint64_t a1)
{
  value = 0;
  if (__NETRBClientValidateClient(_NETRBNetworkClient))
  {
    NETRBErrorLog("%s: invalid network global client");
  }

  else if (*(a1 + 56))
  {
    v2 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_uint64(v2, netrbXPCKey[0], 0x3FFuLL);
    xpc_dictionary_set_string(v2, netrbXPCClientID[0], (_NETRBNetworkClient + 32));
    xpc_dictionary_set_uint64(v2, netrbXPCInterfaceId[0], *(a1 + 48));
    _NETRBSerializeNetwork(*(a1 + 56), &value);
    v3 = value;
    xpc_dictionary_set_value(v2, netrbXPCNetworkObject[0], value);
    NETRBXPCSetupAndSend(0, v2, &__block_literal_global_282);
    if (v2)
    {
      xpc_release(v2);
    }

    if (v3)
    {
      xpc_release(v3);
    }

    if (__NETRBNetworkGetServiceQueue_predNetworkQueue != -1)
    {
      ____NETRBNetworkCreateGlobalClient_block_invoke_cold_1();
    }

    dispatch_sync(__NETRBNetworkGetServiceQueue___networkServiceQueue, &__block_literal_global_285);
    v4 = *(a1 + 56);

    CFRelease(v4);
  }

  else
  {
    NETRBErrorLog("%s: no associated network");
  }
}

uint64_t NETRBLogCreate(uint64_t a1, uint64_t a2)
{
  if (NETRBLogCreate_predLog != -1)
  {
    NETRBLogCreate_cold_1();
  }

  if (NETRBLogCreate_error)
  {
    return 12;
  }

  else
  {
    return 0;
  }
}

void __NETRBLogCreate_block_invoke()
{
  __netrbLog = os_log_create("com.apple.MobileInternetSharing", "framework.netrb");
  if (!__netrbLog)
  {
    NETRBLogCreate_error = 1;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      __NETRBLogCreate_block_invoke_cold_1();
    }
  }
}

uint64_t NETRBXPCEndPointCreate(dispatch_queue_t targetq, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (__netrbReceiverConnection)
  {
    NETRBDebugLog("xpc endpoint connection already exists", a2, a3, a4, a5, a6, a7, a8, v12);
  }

  else
  {
    v9 = xpc_connection_create(0, targetq);
    __netrbReceiverConnection = v9;
    if (!v9)
    {
      NETRBErrorLog("unable to create xpc endpoint connection");
      return 0;
    }

    v10 = v9;
    NETRBInfoLog("listener connection %p created", v9);
    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 0x40000000;
    handler[2] = __NETRBXPCEndPointCreate_block_invoke;
    handler[3] = &__block_descriptor_tmp_72;
    handler[4] = v10;
    handler[5] = targetq;
    xpc_connection_set_event_handler(v10, handler);
    xpc_connection_resume(__netrbReceiverConnection);
  }

  return 1;
}

void __NETRBXPCEndPointCreate_block_invoke(uint64_t a1, void *a2)
{
  v4 = MEMORY[0x2743E7A80](a2);
  v5 = *(a1 + 32);
  if (v5 && (v5 == __netrbReceiverConnection ? (v6 = v4 == MEMORY[0x277D86480]) : (v6 = 0), v6))
  {
    if (a2 == MEMORY[0x277D86420])
    {
      NETRBInfoLog("received XPC_ERROR_TERMINATION_IMMINENT for %p");
    }

    else if (a2 == MEMORY[0x277D863F8])
    {
      NETRBInfoLog("XPC_ERROR_CONNECTION_INVALID for %p");
    }
  }

  else if (v4 == MEMORY[0x277D86450])
  {
    v7 = *(a1 + 40);
    NETRBInfoLog("new notification connection %p from daemon", a2);
    if (__netrbNotificationConnection)
    {
      xpc_connection_cancel(__netrbNotificationConnection);
      xpc_release(__netrbNotificationConnection);
      __netrbNotificationConnection = 0;
    }

    __netrbNotificationConnection = xpc_retain(a2);
    xpc_connection_set_target_queue(a2, v7);
    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 0x40000000;
    handler[2] = ____NETRBXPCNewNotificationConnection_block_invoke;
    handler[3] = &__block_descriptor_tmp_86;
    handler[4] = a2;
    xpc_connection_set_event_handler(a2, handler);
    xpc_connection_resume(a2);
  }
}

BOOL NETRBXPCCreate(dispatch_queue_t targetq, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (__netrbConnection)
  {
    NETRBDebugLog("xpc connection %p to daemon already exists", a2, a3, a4, a5, a6, a7, a8, __netrbConnection);
    return 1;
  }

  __netrbConnection = xpc_connection_create_mach_service(netrbXPCService, targetq, 2uLL);
  if (!__netrbConnection)
  {
    goto LABEL_7;
  }

  if (MEMORY[0x2743E7A80]() != MEMORY[0x277D86450])
  {
    if (__netrbConnection)
    {
      xpc_release(__netrbConnection);
LABEL_8:
      result = 0;
      __netrbConnection = 0;
      return result;
    }

LABEL_7:
    NETRBErrorLog("unable to create connection to daemon %s", netrbXPCService);
    goto LABEL_8;
  }

  handler[0] = MEMORY[0x277D85DD0];
  handler[1] = 0x40000000;
  handler[2] = __NETRBXPCCreate_block_invoke;
  handler[3] = &__block_descriptor_tmp_77;
  handler[4] = __netrbConnection;
  handler[5] = a2;
  xpc_connection_set_event_handler(__netrbConnection, handler);
  NETRBInfoLog("connection %p to daemon created", __netrbConnection);
  xpc_connection_resume(__netrbConnection);
  return __netrbConnection != 0;
}

void __NETRBXPCCreate_block_invoke(uint64_t a1, xpc_object_t object)
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 0x40000000;
  v4[2] = __NETRBXPCCreate_block_invoke_2;
  v4[3] = &__block_descriptor_tmp_76;
  v3 = *(a1 + 32);
  v4[4] = object;
  v4[5] = v3;
  xpc_retain(object);
  dispatch_async(*(a1 + 40), v4);
}

void __NETRBXPCCreate_block_invoke_2(uint64_t a1)
{
  if (MEMORY[0x2743E7A80](*(a1 + 32)) == MEMORY[0x277D86480])
  {
    v2 = *(a1 + 40);
    if (v2 == __netrbConnection)
    {
      string = xpc_dictionary_get_string(*(a1 + 32), *MEMORY[0x277D86400]);
      NETRBErrorLog("xpc connection %p to daemon error: %s", v2, string);
      NETRBXPCCleanup();
    }
  }

  else
  {
    NETRBErrorLog("unrecognized event");
  }

  v4 = *(a1 + 32);

  xpc_release(v4);
}

BOOL NETRBXPCCleanup()
{
  v0 = __netrbConnection;
  if (__netrbConnection)
  {
    NETRBInfoLog("cleaning up connection %p to daemon", __netrbConnection);
    xpc_connection_cancel(__netrbConnection);
    xpc_release(__netrbConnection);
    __netrbConnection = 0;
  }

  return v0 != 0;
}

uint64_t NETRBXPCSetupAndSend(NSObject *a1, xpc_object_t xdict, uint64_t a3)
{
  if (xpc_dictionary_get_uint64(xdict, netrbXPCKey[0]) == 1000)
  {
    if (!__netrbReceiverConnection)
    {
      return 0;
    }

    xpc_dictionary_set_connection(xdict, netrbXPCClientComm, __netrbReceiverConnection);
  }

  if (a1)
  {
    v13 = __netrbConnection != 0;
    if (__netrbConnection)
    {
      handler[0] = MEMORY[0x277D85DD0];
      handler[1] = 0x40000000;
      handler[2] = ____NETRBXPCSendMessage_block_invoke;
      handler[3] = &unk_279ECC160;
      handler[4] = a3;
      xpc_connection_send_message_with_reply(__netrbConnection, xdict, a1, handler);
    }

    else
    {
      NETRBDebugLog("connection to daemon does not exist", v6, v7, v8, v9, v10, v11, v12, v22);
    }

    return v13;
  }

  if (!__netrbConnection)
  {
    NETRBDebugLog("connection to daemon does not exist", v6, v7, v8, v9, v10, v11, v12, v22);
    return 0;
  }

  v14 = xpc_connection_send_message_with_reply_sync(__netrbConnection, xdict);
  v15 = v14;
  v16 = MEMORY[0x277D86468];
  if (v14)
  {
    v17 = MEMORY[0x2743E7A80](v14);
    if (v17 != MEMORY[0x277D86480])
    {
      v18 = v17;
      if (v17 == v16)
      {
        if (xpc_dictionary_get_uint64(v15, netrbXPCResponse[0]) == 2002)
        {
          NETRBErrorLog("error: aborting XPC connection to daemon");
          NETRBXPCCleanup();
        }

        v18 = MEMORY[0x277D86468];
      }

      else
      {
        NETRBErrorLog("unknown response");
        NETRBXPCCleanup();
      }

      goto LABEL_18;
    }

    string = xpc_dictionary_get_string(v15, *MEMORY[0x277D86400]);
    NETRBErrorLog("xpc_connection_send_message_with_reply_sync() received %s", string);
    NETRBXPCCleanup();
  }

  else
  {
    NETRBXPCCleanup();
    NETRBErrorLog("NULL response from xpc_connection_send_message_with_reply_sync");
  }

  v18 = MEMORY[0x277D86480];
LABEL_18:
  if (v18 == v16)
  {
    v20 = v15;
  }

  else
  {
    v20 = 0;
  }

  (*(a3 + 16))(a3, v20);
  if (v15)
  {
    xpc_release(v15);
  }

  return 1;
}

BOOL NETRBEndPointCleanup()
{
  v0 = __netrbReceiverConnection;
  if (__netrbReceiverConnection)
  {
    NETRBInfoLog("cleaning up listener connection %p", __netrbReceiverConnection);
    xpc_connection_cancel(__netrbReceiverConnection);
    xpc_release(__netrbReceiverConnection);
    __netrbReceiverConnection = 0;
  }

  return v0 != 0;
}

uint64_t _MISAttach(void *a1)
{
  if (!a1)
  {
    return 22;
  }

  if (__MISDGetQueue_predQueue != -1)
  {
    _MISAttach_cold_1();
  }

  v2 = __MISDGetQueue___misdQueue;
  if (!__MISDGetQueue___misdQueue)
  {
    return 12;
  }

  *a1 = 0;
  v3 = _NETRBClientCreate(v2, &__block_literal_global_2, 0);
  if (!v3)
  {
    return 12;
  }

  v4 = v3;
  result = 0;
  *a1 = v4;
  return result;
}

uint64_t _MISDetach(uint64_t a1)
{
  v1 = 22;
  if (a1)
  {
    if (_NETRBClientDestroy(a1))
    {
      return 0;
    }

    else
    {
      return 22;
    }
  }

  return v1;
}

uint64_t _MISIsServiceAvailable(uint64_t result)
{
  if (result)
  {
    v1 = result;
    v4 = 0;
    result = _NETRBClientGetGlobalServiceState(result, &v4 + 1, &v4);
    if (result)
    {
      if (HIDWORD(v4) == 1022)
      {
        return 0;
      }

      if (HIDWORD(v4) == 1023)
      {
        return 1;
      }

      result = xpc_dictionary_create(0, 0, 0);
      if (result)
      {
        v2 = result;
        xpc_dictionary_set_uint64(result, netrbClientDeviceType[0], 1uLL);
        started = _NETRBClientStartService(v1, 0, 201, 301, v2);
        xpc_release(v2);
        if (started)
        {
          result = _NETRBClientGetGlobalServiceState(v1, &v4 + 1, &v4);
          if (result)
          {
            return HIDWORD(v4) == 1023;
          }

          return result;
        }

        return 0;
      }
    }
  }

  return result;
}

uint64_t _MISGetGlobalServiceState(uint64_t a1, _DWORD *a2, int *a3)
{
  v5 = 0;
  v3 = 22;
  if (a1)
  {
    if (!a3)
    {
      a3 = &v5;
    }

    if (_NETRBClientGetGlobalServiceState(a1, a2, a3))
    {
      return 0;
    }

    else
    {
      return 22;
    }
  }

  return v3;
}

uint64_t _MISGetDynamicStoreKey(uint64_t a1, char *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    return 22;
  }

  memset(v4, 0, sizeof(v4));
  if (!_NETRBClientGetDynamicStoreKey(a1, v4))
  {
    return 22;
  }

  snprintf(a2, 0x100uLL, "%s", v4);
  return 0;
}

uint64_t _MISSetGlobalServiceState(uint64_t a1, int a2)
{
  v2 = 22;
  if (a1)
  {
    if (_NETRBClientSetGlobalServiceState(a1, a2))
    {
      return 0;
    }

    else
    {
      return 22;
    }
  }

  return v2;
}

uint64_t _MISStartServiceDHCP(uint64_t a1, const char *a2, _OWORD *a3)
{
  if (!a1)
  {
    return 22;
  }

  a3[14] = 0u;
  a3[15] = 0u;
  a3[12] = 0u;
  a3[13] = 0u;
  a3[10] = 0u;
  a3[11] = 0u;
  a3[8] = 0u;
  a3[9] = 0u;
  a3[6] = 0u;
  a3[7] = 0u;
  a3[4] = 0u;
  a3[5] = 0u;
  a3[2] = 0u;
  a3[3] = 0u;
  *a3 = 0u;
  a3[1] = 0u;
  v5 = xpc_dictionary_create(0, 0, 0);
  if (!v5)
  {
    return 12;
  }

  v6 = v5;
  xpc_dictionary_set_string(v5, netrbClientInterfaceName[0], a2);
  v7 = netrbClientDeviceType[0];
  v8 = strlen(a2);
  if (!strncmp("ap1", a2, v8))
  {
    v9 = 3;
  }

  else
  {
    v9 = 0;
  }

  xpc_dictionary_set_uint64(v6, v7, v9);
  started = _NETRBClientStartService(a1, 0, 201, 302, v6);
  xpc_release(v6);
  if (started)
  {
    return 0;
  }

  else
  {
    return 22;
  }
}

uint64_t _MISStartServiceDHCPLocal(uint64_t a1, const char *a2, _OWORD *a3)
{
  if (!a1)
  {
    return 22;
  }

  a3[14] = 0u;
  a3[15] = 0u;
  a3[12] = 0u;
  a3[13] = 0u;
  a3[10] = 0u;
  a3[11] = 0u;
  a3[8] = 0u;
  a3[9] = 0u;
  a3[6] = 0u;
  a3[7] = 0u;
  a3[4] = 0u;
  a3[5] = 0u;
  a3[2] = 0u;
  a3[3] = 0u;
  *a3 = 0u;
  a3[1] = 0u;
  v5 = xpc_dictionary_create(0, 0, 0);
  if (!v5)
  {
    return 12;
  }

  v6 = v5;
  xpc_dictionary_set_string(v5, netrbClientInterfaceName[0], a2);
  v7 = netrbClientDeviceType[0];
  v8 = strlen(a2);
  if (!strncmp("ap1", a2, v8))
  {
    v9 = 3;
  }

  else
  {
    v9 = 0;
  }

  xpc_dictionary_set_uint64(v6, v7, v9);
  started = _NETRBClientStartService(a1, 0, 203, 302, v6);
  xpc_release(v6);
  if (started)
  {
    return 0;
  }

  else
  {
    return 22;
  }
}

uint64_t _MISStartServiceDHCPCustom(uint64_t a1, const char *a2, unsigned int a3, unsigned int a4, int a5, _OWORD *a6)
{
  if (!a1)
  {
    return 22;
  }

  a6[14] = 0u;
  a6[15] = 0u;
  a6[12] = 0u;
  a6[13] = 0u;
  a6[10] = 0u;
  a6[11] = 0u;
  a6[8] = 0u;
  a6[9] = 0u;
  a6[6] = 0u;
  a6[7] = 0u;
  a6[4] = 0u;
  a6[5] = 0u;
  a6[2] = 0u;
  a6[3] = 0u;
  *a6 = 0u;
  a6[1] = 0u;
  v11 = xpc_dictionary_create(0, 0, 0);
  if (!v11)
  {
    return 12;
  }

  v12 = v11;
  xpc_dictionary_set_string(v11, netrbClientInterfaceName[0], a2);
  xpc_dictionary_set_uint64(v12, netrbClientInterfaceMTU[0], a3);
  xpc_dictionary_set_uint64(v12, netrbClientInterfaceInstance[0], a4);
  v13 = netrbClientDeviceType[0];
  v14 = strlen(a2);
  if (!strncmp("ap1", a2, v14))
  {
    v15 = 3;
  }

  else
  {
    v15 = 0;
  }

  xpc_dictionary_set_uint64(v12, v13, v15);
  if (a5 == 1)
  {
    v16 = 203;
  }

  else
  {
    v16 = 201;
  }

  started = _NETRBClientStartService(a1, 0, v16, 302, v12);
  xpc_release(v12);
  if (started)
  {
    return 0;
  }

  else
  {
    return 22;
  }
}

uint64_t _MISStartServiceDHCPWithOptions(uint64_t a1, const char *a2, unsigned int a3, unsigned int a4, unsigned int a5, int a6, uint64_t a7, uint64_t a8, _OWORD *a9)
{
  if (!a1)
  {
    return 22;
  }

  a9[14] = 0u;
  a9[15] = 0u;
  a9[12] = 0u;
  a9[13] = 0u;
  a9[10] = 0u;
  a9[11] = 0u;
  a9[8] = 0u;
  a9[9] = 0u;
  a9[6] = 0u;
  a9[7] = 0u;
  a9[4] = 0u;
  a9[5] = 0u;
  a9[2] = 0u;
  a9[3] = 0u;
  *a9 = 0u;
  a9[1] = 0u;
  v15 = xpc_dictionary_create(0, 0, 0);
  if (!v15)
  {
    return 12;
  }

  v16 = v15;
  xpc_dictionary_set_string(v15, netrbClientInterfaceName[0], a2);
  xpc_dictionary_set_uint64(v16, netrbClientDeviceType[0], a3);
  xpc_dictionary_set_uint64(v16, netrbClientInterfaceMTU[0], a4);
  xpc_dictionary_set_uint64(v16, netrbClientInterfaceInstance[0], a5);
  if (a6 == 1)
  {
    v17 = 203;
  }

  else
  {
    v17 = 201;
  }

  started = _NETRBClientStartService(a1, 0, v17, 302, v16);
  xpc_release(v16);
  if (started)
  {
    return 0;
  }

  else
  {
    return 22;
  }
}

uint64_t _MISStopService(uint64_t a1)
{
  v1 = 22;
  if (a1)
  {
    if (_NETRBClientStopService(a1))
    {
      return 0;
    }

    else
    {
      return 22;
    }
  }

  return v1;
}

uint64_t _MISSetFixtureForwardedPorts(uint64_t a1, unsigned int a2, unsigned int a3)
{
  if (!a1)
  {
    return 22;
  }

  v6 = xpc_dictionary_create(0, 0, 0);
  if (!v6)
  {
    return 12;
  }

  v7 = v6;
  xpc_dictionary_set_uint64(v6, netrbClientForwardedLowPort[0], a2);
  xpc_dictionary_set_uint64(v7, netrbClientForwardedHighPort[0], a3);
  v8 = _NETRBClientSetFixtureForwardedPorts(a1, v7);
  xpc_release(v7);
  if (v8)
  {
    return 0;
  }

  else
  {
    return 22;
  }
}

uint64_t _MISGetFixtureForwardedPorts(void *a1, _WORD *a2, _WORD *a3)
{
  if (!a1)
  {
    return 22;
  }

  v5 = _NETRBClientCopyFixtureForwardedPorts(a1);
  if (!v5)
  {
    return 22;
  }

  v6 = v5;
  if (MEMORY[0x2743E7A80]() != MEMORY[0x277D86468])
  {
    return 22;
  }

  *a2 = xpc_dictionary_get_uint64(v6, netrbClientForwardedLowPort[0]);
  uint64 = xpc_dictionary_get_uint64(v6, netrbClientForwardedHighPort[0]);
  result = 0;
  *a3 = uint64;
  return result;
}

uint64_t _MISIsAllowedMoreHost(uint64_t a1)
{
  if (a1)
  {
    return _NETRBClientIsAllowedMoreHost(a1);
  }

  else
  {
    return 22;
  }
}

uint64_t _MISAddHost(uint64_t a1, int a2)
{
  v2 = 22;
  if (a1)
  {
    if ((a2 - 1) < 5)
    {
      v3 = a2 + 1;
    }

    else
    {
      v3 = 0;
    }

    if (_NETRBClientAddHost(a1, v3))
    {
      return 0;
    }

    else
    {
      return 22;
    }
  }

  return v2;
}

uint64_t _MISRemoveHost(uint64_t a1, int a2)
{
  v2 = 22;
  if (a1)
  {
    if ((a2 - 1) < 5)
    {
      v3 = a2 + 1;
    }

    else
    {
      v3 = 0;
    }

    if (_NETRBClientRemoveHost(a1, v3))
    {
      return 0;
    }

    else
    {
      return 22;
    }
  }

  return v2;
}

uint64_t _MISGetHostCount(uint64_t a1, _DWORD *a2, _DWORD *a3)
{
  v3 = 22;
  if (a1)
  {
    if (_NETRBClientGetHostCount(a1, a2, a3))
    {
      return 0;
    }

    else
    {
      return 22;
    }
  }

  return v3;
}

uint64_t _MISSetHostCount(uint64_t a1, int a2, int a3)
{
  v3 = 22;
  if (a1)
  {
    if ((a2 - 1) < 5)
    {
      v4 = a2 + 1;
    }

    else
    {
      v4 = 0;
    }

    if (_NETRBClientSetHostCount(a1, v4, a3))
    {
      return 0;
    }

    else
    {
      return 22;
    }
  }

  return v3;
}

uint64_t _MISGetExt(uint64_t a1, char *a2)
{
  v4[2] = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    return 22;
  }

  v4[0] = 0;
  v4[1] = 0;
  if (!_NETRBClientGetExtName(a1, v4))
  {
    return 22;
  }

  snprintf(a2, 0x10uLL, "%s", v4);
  return 0;
}

BOOL __isOSVersionAtLeast(int a1, int a2, int a3)
{
  if (qword_280945D70 == -1)
  {
    v3 = _MergedGlobals < a1;
    if (_MergedGlobals > a1)
    {
      return 1;
    }
  }

  else
  {
    v5 = a3;
    v6 = a2;
    __isOSVersionAtLeast_cold_1();
    a2 = v6;
    a3 = v5;
    v3 = _MergedGlobals < a1;
    if (_MergedGlobals > a1)
    {
      return 1;
    }
  }

  if (v3)
  {
    return 0;
  }

  if (dword_280945D64 > a2)
  {
    return 1;
  }

  if (dword_280945D64 < a2)
  {
    return 0;
  }

  return dword_280945D68 >= a3;
}

uint64_t __isPlatformVersionAtLeast(int a1, int a2, int a3, int a4)
{
  if (qword_280945D78 == -1)
  {
    if (qword_280945D80)
    {
      return _availability_version_check();
    }
  }

  else
  {
    v5 = a4;
    v6 = a3;
    v7 = a2;
    __isPlatformVersionAtLeast_cold_1();
    a2 = v7;
    a3 = v6;
    a4 = v5;
    if (qword_280945D80)
    {
      return _availability_version_check();
    }
  }

  if (qword_280945D70 != -1)
  {
    v9 = a4;
    v10 = a3;
    v11 = a2;
    __isOSVersionAtLeast_cold_1();
    a3 = v10;
    a4 = v9;
    v8 = _MergedGlobals < v11;
    if (_MergedGlobals > v11)
    {
      return 1;
    }

LABEL_7:
    if (!v8)
    {
      if (dword_280945D64 > a3)
      {
        return 1;
      }

      if (dword_280945D64 >= a3)
      {
        return dword_280945D68 >= a4;
      }
    }

    return 0;
  }

  v8 = _MergedGlobals < a2;
  if (_MergedGlobals <= a2)
  {
    goto LABEL_7;
  }

  return 1;
}

uint64_t _initializeAvailabilityCheck(uint64_t result)
{
  v29 = *MEMORY[0x277D85DE8];
  v1 = qword_280945D80;
  if (qword_280945D80)
  {
    v2 = result == 0;
  }

  else
  {
    v2 = 0;
  }

  if (!v2)
  {
    if (MEMORY[0x28223BE68])
    {
      v1 = MEMORY[0x28223BE68];
      qword_280945D80 = MEMORY[0x28223BE68];
    }

    if (v1)
    {
      v3 = result == 0;
    }

    else
    {
      v3 = 0;
    }

    if (!v3)
    {
      result = dlsym(0xFFFFFFFFFFFFFFFELL, "kCFAllocatorNull");
      if (result)
      {
        v4 = *result;
        result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFDataCreateWithBytesNoCopy");
        if (result)
        {
          v5 = result;
          v6 = dlsym(0xFFFFFFFFFFFFFFFELL, "CFPropertyListCreateWithData");
          result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFPropertyListCreateFromXMLData");
          if (v6 | result)
          {
            v7 = result;
            result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringCreateWithCStringNoCopy");
            if (result)
            {
              v8 = result;
              result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFDictionaryGetValue");
              if (result)
              {
                v9 = result;
                result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFGetTypeID");
                if (result)
                {
                  v10 = result;
                  result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringGetTypeID");
                  if (result)
                  {
                    v11 = result;
                    result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringGetCString");
                    v27 = result;
                    if (result)
                    {
                      result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFRelease");
                      if (result)
                      {
                        v12 = result;
                        result = fopen("/System/Library/CoreServices/SystemVersion.plist", "r");
                        if (result)
                        {
                          v13 = result;
                          v26 = v12;
                          fseek(result, 0, 2);
                          v14 = MEMORY[0x2743E6F30](v13);
                          if (v14 < 0)
                          {
                            v16 = 0;
                          }

                          else
                          {
                            v15 = v14;
                            rewind(v13);
                            v16 = malloc(v15);
                            if (v16)
                            {
                              v25 = v16;
                              if (fread(v16, 1uLL, v15, v13) == v15 && (v17 = v5(0, v25, v15, v4)) != 0)
                              {
                                v18 = v17;
                                if (v6)
                                {
                                  v19 = (v6)(0, v17, 0, 0, 0);
                                }

                                else
                                {
                                  v19 = v7(0, v17, 0, 0);
                                }

                                v20 = v19;
                                if (v19)
                                {
                                  v21 = v8(0, "ProductVersion", 1536, v4);
                                  if (v21)
                                  {
                                    v22 = v21;
                                    v23 = v9(v20, v21);
                                    (v26)(v22);
                                    if (v23)
                                    {
                                      v24 = v10(v23);
                                      if (v24 == v11())
                                      {
                                        if (v27(v23, v28, 32, 134217984))
                                        {
                                          sscanf(v28, "%d.%d.%d", &_MergedGlobals, &dword_280945D64, &dword_280945D68);
                                        }
                                      }
                                    }
                                  }

                                  (v26)(v20);
                                }

                                (v26)(v18);
                                v16 = v25;
                              }

                              else
                              {
                                v16 = v25;
                              }
                            }
                          }

                          free(v16);
                          return fclose(v13);
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

void WiFiDisableMISState_cold_1(uint64_t a1)
{
  v1 = a1;
  v2 = _initWSKLOG(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    LODWORD(v9) = 67109120;
    HIDWORD(v9) = v1;
    OUTLINED_FUNCTION_0(&dword_274093000, v3, v4, "failed to create MIS session with err=%d", v5, v6, v7, v8, v9);
  }
}

void WiFiDisableMISState_cold_2(uint64_t a1)
{
  v1 = a1;
  v2 = _initWSKLOG(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    LODWORD(v9) = 67109120;
    HIDWORD(v9) = v1;
    OUTLINED_FUNCTION_0(&dword_274093000, v3, v4, "Failed to turn off Personal Hotspot with err=%d", v5, v6, v7, v8, v9);
  }
}

void WiFiDisableMISState_cold_3(uint64_t a1)
{
  v1 = a1;
  v2 = _initWSKLOG(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    LODWORD(v9) = 67109120;
    HIDWORD(v9) = v1;
    OUTLINED_FUNCTION_0(&dword_274093000, v3, v4, "Failed to re-enable Personal Hotspot with err=%d", v5, v6, v7, v8, v9);
  }
}

void WiFiManagerSetAutoJoinEnabled_cold_1(char a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = 136315394;
  v3 = "WiFiManagerSetAutoJoinEnabled";
  v4 = 1024;
  v5 = a1 & 1;
  _os_log_error_impl(&dword_274093000, a2, OS_LOG_TYPE_ERROR, "%s: setting auto join enabled=%d", &v2, 0x12u);
}