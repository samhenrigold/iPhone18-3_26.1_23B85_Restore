uint64_t sub_274410850@<X0>(id *a1@<X0>, uint64_t a2@<X8>)
{
  v54 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280949F88, &qword_2746487D8);
  MEMORY[0x28223BE20](v3 - 8);
  v4 = sub_274638A2C();
  v53 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094A010, &qword_2746488B0);
  MEMORY[0x28223BE20](v59);
  v8 = v45 - v7;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094A018, &qword_2746488B8);
  MEMORY[0x28223BE20](v57);
  v58 = v45 - v9;
  v10 = sub_27463879C();
  v48 = *(v10 - 8);
  v49 = v10;
  MEMORY[0x28223BE20](v10);
  v47 = v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_2746389FC();
  MEMORY[0x28223BE20](v12 - 8);
  v55 = sub_274638A9C();
  v50 = *(v55 - 8);
  MEMORY[0x28223BE20](v55);
  v46 = v45 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094A020, &qword_2746488C0);
  v52 = *(v56 - 8);
  MEMORY[0x28223BE20](v56);
  v51 = v45 - v14;
  v15 = sub_274638C1C();
  v16 = *(v15 - 8);
  v17 = MEMORY[0x28223BE20](v15);
  v19 = v45 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v16 + 104))(v19, *MEMORY[0x277D79BD0], v15, v17);
  v20 = sub_274638C0C();
  (*(v16 + 8))(v19, v15);
  v21 = type metadata accessor for WorkflowOutputPreviewView(0);
  v22 = v21;
  if (v20)
  {
    v60 = *(a1 + *(v21 + 32));
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094A000, &qword_2746488A0);
    sub_27463AD0C();
    v45[1] = *(&v61 + 1);
    v53 = v61;
    v45[0] = v62;
    v23 = (a1 + *(v22 + 28));
    v25 = v23[1];
    *&v60 = *v23;
    v24 = v60;
    *(&v60 + 1) = v25;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094A008, &qword_2746488A8);
    sub_27463AD0C();
    v26 = *a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280949EC0, &unk_2746486D0);
    sub_27463ACEC();
    (*(v48 + 104))(v47, *MEMORY[0x277D7D328], v49);

    v27 = v46;
    sub_274638A8C();
    *&v60 = v24;
    *(&v60 + 1) = v25;
    sub_27463AD0C();
    v28 = v62;
    v29 = sub_274412C6C(&qword_28094A040, MEMORY[0x277D7D438], MEMORY[0x277D7D430]);
    v30 = v51;
    v31 = v55;
    sub_27463A56C();

    (*(v50 + 8))(v27, v31);
    v32 = v52;
    v33 = v56;
    (*(v52 + 16))(v58, v30, v56);
    swift_storeEnumTagMultiPayload();
    *&v61 = v31;
    *(&v61 + 1) = v29;
    swift_getOpaqueTypeConformance2();
    sub_274412CB4();
    sub_274639DDC();
    return (*(v32 + 8))(v30, v33);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280949EC0, &unk_2746486D0);
    sub_27463AD0C();
    v35 = *a1;
    sub_274638A1C();
    v60 = *(a1 + *(v22 + 28));
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094A008, &qword_2746488A8);
    sub_27463AD0C();
    v36 = v8;
    v37 = v62;
    sub_274412C6C(&qword_28094A028, MEMORY[0x277D7D428], MEMORY[0x277D7D420]);
    sub_27463A56C();

    (*(v53 + 8))(v6, v4);
    sub_27463B0CC();
    sub_2746392FC();
    v38 = (v36 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094A030, &qword_2746488C8) + 36));
    v39 = v62;
    *v38 = v61;
    v38[1] = v39;
    v38[2] = v63;
    v40 = [objc_allocWithZone(sub_274638ACC()) init];
    sub_274412C6C(&qword_28094A038, MEMORY[0x277D7D448], MEMORY[0x277D7D440]);
    v41 = sub_274638EEC();
    v42 = v58;
    v43 = (v36 + *(v59 + 36));
    *v43 = v41;
    v43[1] = v40;
    sub_274412C20(v36, v42, &qword_28094A010, &qword_2746488B0);
    swift_storeEnumTagMultiPayload();
    v44 = sub_274412C6C(&qword_28094A040, MEMORY[0x277D7D438], MEMORY[0x277D7D430]);
    *&v60 = v55;
    *(&v60 + 1) = v44;
    swift_getOpaqueTypeConformance2();
    sub_274412CB4();
    sub_274639DDC();
    return sub_27440CB1C(v36, &qword_28094A010, &qword_2746488B0);
  }
}

void sub_2744111B4(uint64_t a1@<X8>)
{
  v2 = sub_27463918C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v19 - v7;
  sub_27463B0CC();
  sub_2746392FC();
  v9 = v24;
  v21 = v25;
  v22 = v23;
  v10 = v26;
  v19 = v28;
  v20 = v27;
  v11 = sub_27463A31C();
  sub_27440F938(v8);
  (*(v3 + 104))(v5, *MEMORY[0x277CDF3C0], v2);
  sub_27463917C();
  v12 = *(v3 + 8);
  v12(v5, v2);
  v12(v8, v2);
  sub_2746390AC();
  *a1 = 0;
  *(a1 + 8) = 1;
  v13 = v21;
  *(a1 + 16) = v22;
  *(a1 + 24) = v9;
  *(a1 + 32) = v13;
  *(a1 + 40) = v10;
  v14 = v19;
  *(a1 + 48) = v20;
  *(a1 + 56) = v14;
  *(a1 + 64) = 0x3FB999999999999ALL;
  *(a1 + 72) = v11;
  *(a1 + 80) = v15;
  *(a1 + 88) = v16;
  *(a1 + 96) = v17;
  *(a1 + 104) = v18;
  *(a1 + 112) = 0;
}

uint64_t sub_2744113B8@<X0>(id *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v136 = a2;
  v145 = a3;
  v144 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280949F50, &qword_2746487A0);
  MEMORY[0x28223BE20](v144);
  v126 = &v123 - v4;
  v132 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280949F58, &qword_2746487A8);
  MEMORY[0x28223BE20](v132);
  v133 = &v123 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v140 = &v123 - v7;
  v8 = type metadata accessor for WorkflowOutputPreviewView(0);
  v124 = *(v8 - 8);
  v9 = *(v124 + 64);
  MEMORY[0x28223BE20](v8);
  v137 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280949F60, &qword_2746487B0);
  MEMORY[0x28223BE20](v137);
  v129 = &v123 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280949F68, &qword_2746487B8);
  v134 = *(v11 - 8);
  v135 = v11;
  MEMORY[0x28223BE20](v11);
  v131 = &v123 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v139 = &v123 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280949F70, &qword_2746487C0);
  MEMORY[0x28223BE20](v15 - 8);
  v130 = &v123 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v147 = &v123 - v18;
  v141 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280949F78, &qword_2746487C8);
  MEMORY[0x28223BE20](v141);
  v143 = &v123 - v19;
  v142 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280949F80, &qword_2746487D0);
  MEMORY[0x28223BE20](v142);
  v128 = &v123 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280949F88, &qword_2746487D8);
  MEMORY[0x28223BE20](v21 - 8);
  v138 = sub_274638ABC();
  v127 = *(v138 - 8);
  MEMORY[0x28223BE20](v138);
  v125 = &v123 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v146 = &v123 - v24;
  v25 = sub_274638C1C();
  v26 = *(v25 - 8);
  v27 = MEMORY[0x28223BE20](v25);
  v29 = &v123 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v26 + 104))(v29, *MEMORY[0x277D79BD0], v25, v27);
  v30 = sub_274638C0C();
  (*(v26 + 8))(v29, v25);
  if (v30)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280949FE0, &qword_274648850);
    v31 = sub_2746389EC();
    v32 = *(v31 - 8);
    v33 = *(v32 + 72);
    v34 = (*(v32 + 80) + 32) & ~*(v32 + 80);
    v35 = swift_allocObject();
    *(v35 + 16) = xmmword_2746486A0;
    v36 = v35 + v34;
    v37 = *(v32 + 104);
    v37(v36, *MEMORY[0x277D7D3F8], v31);
    v37(v36 + v33, *MEMORY[0x277D7D400], v31);
    v38 = *a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280949EC0, &unk_2746486D0);
    sub_27463AD0C();
    sub_274638AAC();
    sub_27463B70C("%d results", v123);
    if (qword_2809492C0 != -1)
    {
      swift_once();
    }

    v39 = qword_28094BB00;
    v40 = sub_27463B66C();
    v41 = sub_27463B66C();

    v42 = [v39 localizedStringForKey:v40 value:v41 table:0];

    sub_27463B6AC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280949E90, &qword_274648630);
    v43 = swift_allocObject();
    *(v43 + 16) = xmmword_274648570;
    v44 = [v38 items];
    sub_274412734(0, &qword_280949F00, 0x277CFC2F8);
    sub_27463B81C();

    v45 = sub_274453594();

    v46 = MEMORY[0x277D83C10];
    *(v43 + 56) = MEMORY[0x277D83B88];
    *(v43 + 64) = v46;
    *(v43 + 32) = v45;
    v47 = sub_27463B67C();
    v49 = v48;

    v153[0] = v47;
    v153[1] = v49;
    sub_274412BBC();
    v50 = sub_27463A53C();
    v52 = v51;
    LOBYTE(v49) = v53;
    sub_27463ABCC();
    v54 = sub_27463A4DC();
    v56 = v55;
    v58 = v57;
    v60 = v59;

    sub_274412C10(v50, v52, v49 & 1);

    LOBYTE(v50) = sub_27463A37C();
    sub_2746390AC();
    v149[0] = v58 & 1;
    v148[0] = 0;
    v151[0] = v54;
    v151[1] = v56;
    LOBYTE(v151[2]) = v58 & 1;
    *(&v151[2] + 1) = v153[0];
    HIDWORD(v151[2]) = *(v153 + 3);
    v151[3] = v60;
    LOBYTE(v151[4]) = v50;
    *(&v151[4] + 1) = __dst[0];
    HIDWORD(v151[4]) = *(__dst + 3);
    v151[5] = v61;
    v151[6] = v62;
    v151[7] = v63;
    v151[8] = v64;
    LOBYTE(v151[9]) = 0;
    v65 = v127;
    v66 = *(v127 + 16);
    v67 = v125;
    v68 = v138;
    v66(v125, v146, v138);
    v150 = 1;
    memcpy(v149, v151, sizeof(v149));
    v69 = v128;
    v66(v128, v67, v68);
    v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280949FE8, &qword_274648858);
    v71 = v69 + *(v70 + 48);
    v72 = v150;
    *v71 = 0;
    *(v71 + 8) = v72;
    v73 = *(v70 + 64);
    memcpy(__dst, v149, 0x49uLL);
    memcpy((v69 + v73), v149, 0x49uLL);
    memcpy(v153, v149, 0x49uLL);
    sub_274412C20(v151, v148, &qword_280949FF0, &unk_274648860);
    sub_274412C20(__dst, v148, &qword_280949FF0, &unk_274648860);
    sub_27440CB1C(v153, &qword_280949FF0, &unk_274648860);
    v74 = *(v65 + 8);
    v74(v67, v68);
    sub_274412C20(v69, v143, &qword_280949F80, &qword_2746487D0);
    swift_storeEnumTagMultiPayload();
    v75 = MEMORY[0x277CE14C0];
    sub_27440CA78(&qword_280949FD0, &qword_280949F80, &qword_2746487D0, MEMORY[0x277CE14C0]);
    sub_27440CA78(&qword_280949FD8, &qword_280949F50, &qword_2746487A0, v75);
    sub_274639DDC();
    sub_27440CB1C(v151, &qword_280949FF0, &unk_274648860);
    sub_27440CB1C(v69, &qword_280949F80, &qword_2746487D0);
    return (v74)(v146, v68);
  }

  else
  {
    v77 = *a1;
    v78 = [*a1 items];
    sub_274412734(0, &qword_280949F00, 0x277CFC2F8);
    sub_27463B81C();

    v79 = sub_274453594();

    if (v79 < 2)
    {
      v82 = 1;
      v81 = v147;
    }

    else
    {
      v80 = v77;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280949EC0, &unk_2746486D0);
      sub_27463AD0C();
      sub_2746389DC();
      v81 = v147;
      sub_274638AAC();
      v82 = 0;
    }

    v83 = v136;
    v84 = v129;
    __swift_storeEnumTagSinglePayload(v81, v82, 1, v138);
    sub_2744127F8(a1, &v123 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
    v85 = (*(v124 + 80) + 16) & ~*(v124 + 80);
    v86 = swift_allocObject();
    sub_27441285C(&v123 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v86 + v85);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280949F90, &qword_2746487E8);
    sub_274412920();
    sub_27463AD5C();
    KeyPath = swift_getKeyPath();
    v88 = swift_allocObject();
    *(v88 + 16) = v83 == 0;
    v89 = (v84 + *(v137 + 36));
    *v89 = KeyPath;
    v89[1] = sub_274412AC8;
    v89[2] = v88;
    if (v83)
    {
      v90 = v83;
      sub_27463B70C("Quick Look '%@'", 15);
      if (qword_2809492C0 != -1)
      {
        swift_once();
      }

      v91 = qword_28094BB00;
      v92 = sub_27463B66C();
      v93 = sub_27463B66C();

      v94 = [v91 localizedStringForKey:v92 value:v93 table:0];

      sub_27463B6AC();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280949E90, &qword_274648630);
      v95 = swift_allocObject();
      *(v95 + 16) = xmmword_274648570;
      v96 = [v90 name];
      v97 = sub_27463B6AC();
      v99 = v98;

      *(v95 + 56) = MEMORY[0x277D837D0];
      *(v95 + 64) = sub_27440F250();
      *(v95 + 32) = v97;
      *(v95 + 40) = v99;
      v100 = sub_27463B67C();
      v102 = v101;

      v83 = v136;
    }

    else
    {
      v100 = 0;
      v102 = 0xE000000000000000;
    }

    v153[0] = v100;
    v153[1] = v102;
    sub_274412AD8();
    sub_274412BBC();
    v103 = v139;
    sub_27463A8DC();

    sub_27440CB1C(v84, &qword_280949F60, &qword_2746487B0);
    v104 = v83;
    v105 = v140;
    sub_27463870C();
    v106 = sub_27463A35C();
    sub_2746390AC();
    v107 = v105 + *(v132 + 36);
    *v107 = v106;
    *(v107 + 8) = v108;
    *(v107 + 16) = v109;
    *(v107 + 24) = v110;
    *(v107 + 32) = v111;
    *(v107 + 40) = 0;
    v112 = v130;
    sub_274412C20(v147, v130, &qword_280949F70, &qword_2746487C0);
    v113 = v134;
    v114 = v135;
    v115 = *(v134 + 16);
    v116 = v131;
    v115(v131, v103, v135);
    v117 = v133;
    sub_274412C20(v105, v133, &qword_280949F58, &qword_2746487A8);
    v118 = v126;
    sub_274412C20(v112, v126, &qword_280949F70, &qword_2746487C0);
    v119 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280949FC8, &unk_274648840);
    v120 = v118 + v119[12];
    *v120 = 0;
    *(v120 + 8) = 1;
    v115((v118 + v119[16]), v116, v114);
    sub_274412C20(v117, v118 + v119[20], &qword_280949F58, &qword_2746487A8);
    sub_27440CB1C(v117, &qword_280949F58, &qword_2746487A8);
    v121 = *(v113 + 8);
    v121(v116, v114);
    sub_27440CB1C(v112, &qword_280949F70, &qword_2746487C0);
    sub_274412C20(v118, v143, &qword_280949F50, &qword_2746487A0);
    swift_storeEnumTagMultiPayload();
    v122 = MEMORY[0x277CE14C0];
    sub_27440CA78(&qword_280949FD0, &qword_280949F80, &qword_2746487D0, MEMORY[0x277CE14C0]);
    sub_27440CA78(&qword_280949FD8, &qword_280949F50, &qword_2746487A0, v122);
    sub_274639DDC();
    sub_27440CB1C(v118, &qword_280949F50, &qword_2746487A0);
    sub_27440CB1C(v140, &qword_280949F58, &qword_2746487A8);
    v121(v139, v114);
    return sub_27440CB1C(v147, &qword_280949F70, &qword_2746487C0);
  }
}

uint64_t sub_2744124B0(id *a1)
{
  v1 = [*a1 items];
  sub_274412734(0, &qword_280949F00, 0x277CFC2F8);
  v2 = sub_27463B81C();

  type metadata accessor for WorkflowOutputPreviewView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094A000, &qword_2746488A0);
  sub_27463ACEC();
  sub_2744535A4();
  if ((v2 & 0xC000000000000001) != 0)
  {
    MEMORY[0x277C58B20](v5, v2);
  }

  else
  {
    v3 = *(v2 + 8 * v5 + 32);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094A008, &qword_2746488A8);
  return sub_27463ACFC();
}

double sub_2744125E0@<D0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280949FF8, &qword_274654850);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v11 - v3;
  v5 = sub_27463AC2C();
  v6 = [objc_opt_self() defaultMetrics];
  [v6 scaledValueForValue_];

  v7 = sub_27463A3BC();
  __swift_storeEnumTagSinglePayload(v4, 1, 1, v7);
  v8 = sub_27463A40C();
  sub_27440CB1C(v4, &qword_280949FF8, &qword_274654850);
  KeyPath = swift_getKeyPath();
  *a1 = v5;
  *(a1 + 8) = KeyPath;
  *(a1 + 16) = v8;
  result = 0.0;
  *(a1 + 24) = xmmword_2746486B0;
  return result;
}

uint64_t sub_274412734(uint64_t a1, unint64_t *a2, void *a3)
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

uint64_t sub_27441277C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  OUTLINED_FUNCTION_2_0(a1, a2, a3, a4);
  OUTLINED_FUNCTION_7();
  v5 = OUTLINED_FUNCTION_5_0();
  v6(v5);
  return v4;
}

uint64_t sub_2744127F8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WorkflowOutputPreviewView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_27441285C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WorkflowOutputPreviewView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2744128C0()
{
  v1 = *(type metadata accessor for WorkflowOutputPreviewView(0) - 8);
  v2 = (v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80)));

  return sub_2744124B0(v2);
}

unint64_t sub_274412920()
{
  result = qword_280949F98;
  if (!qword_280949F98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280949F90, &qword_2746487E8);
    sub_2744129AC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280949F98);
  }

  return result;
}

unint64_t sub_2744129AC()
{
  result = qword_28094A9F0;
  if (!qword_28094A9F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280949FA0, &unk_2746487F0);
    sub_27440CA78(&unk_28094AA00, &qword_28094CC80, &qword_27464EA50, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094A9F0);
  }

  return result;
}

uint64_t sub_274412A64@<X0>(_BYTE *a1@<X8>)
{
  result = sub_274639A6C();
  *a1 = result & 1;
  return result;
}

unint64_t sub_274412AD8()
{
  result = qword_280949FA8;
  if (!qword_280949FA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280949F60, &qword_2746487B0);
    sub_27440CA78(&qword_280949FB0, &qword_280949FB8, &qword_274648830, MEMORY[0x277CDF028]);
    sub_27440CA78(&unk_28094C740, &qword_280949FC0, &qword_274648838, MEMORY[0x277CE08A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280949FA8);
  }

  return result;
}

unint64_t sub_274412BBC()
{
  result = qword_28094B3E0;
  if (!qword_28094B3E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094B3E0);
  }

  return result;
}

uint64_t sub_274412C10(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_274412C20(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  OUTLINED_FUNCTION_2_0(a1, a2, a3, a4);
  OUTLINED_FUNCTION_7();
  v5 = OUTLINED_FUNCTION_5_0();
  v6(v5);
  return v4;
}

uint64_t sub_274412C6C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_274412CB4()
{
  result = qword_28094A048;
  if (!qword_28094A048)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094A010, &qword_2746488B0);
    sub_274412D6C();
    sub_27440CA78(&qword_28094A058, &qword_28094A060, &qword_2746488D0, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094A048);
  }

  return result;
}

unint64_t sub_274412D6C()
{
  result = qword_28094A050;
  if (!qword_28094A050)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094A030, &qword_2746488C8);
    sub_274638A2C();
    sub_274412C6C(&qword_28094A028, MEMORY[0x277D7D428], MEMORY[0x277D7D420]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094A050);
  }

  return result;
}

uint64_t sub_274412E58(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280949EC0, &unk_2746486D0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t OUTLINED_FUNCTION_2_0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{

  return __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
}

id sub_274412F10(double a1)
{
  sub_274413030();
  v1 = sub_27463B6AC();
  v3 = sub_274595918(v1, v2);
  v4 = sub_2746386DC();
  OUTLINED_FUNCTION_0_1();

  v5 = sub_27463B95C();
  OUTLINED_FUNCTION_0_1();

  v6 = sub_27463B95C();
  OUTLINED_FUNCTION_0_1();

  v7 = sub_27463B66C();
  [v3 setValue:v7 forKey:*MEMORY[0x277CDA4E8]];

  v8 = sub_27463B66C();
  OUTLINED_FUNCTION_0_1();

  return v3;
}

unint64_t sub_274413030()
{
  result = qword_2809525F0;
  if (!qword_2809525F0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2809525F0);
  }

  return result;
}

id OUTLINED_FUNCTION_0_1()
{

  return [v0 (v2 + 3192)];
}

uint64_t sub_274413090()
{
  swift_unknownObjectWeakInit();

  return swift_unknownObjectWeakAssign();
}

uint64_t sub_2744130C8@<X0>(uint64_t a1@<X8>)
{
  if (qword_280949288 != -1)
  {
    swift_once();
  }

  return sub_274413224(&unk_28094A080, a1);
}

void *EnvironmentValues.auxiliaryViewPresenter.getter()
{
  sub_27441317C();

  return sub_274639ACC();
}

unint64_t sub_27441317C()
{
  result = qword_28094A088;
  if (!qword_28094A088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094A088);
  }

  return result;
}

uint64_t EnvironmentValues.auxiliaryViewPresenter.setter(uint64_t a1)
{
  sub_274413224(a1, v3);
  sub_27441317C();
  sub_274639ADC();
  return sub_274413294(a1);
}

uint64_t sub_274413224(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094A0F0, &unk_27465AFF0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_274413294(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094A0F0, &unk_27465AFF0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void (*EnvironmentValues.auxiliaryViewPresenter.modify(void *a1))(uint64_t *a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v3;
  v3[3] = v1;
  v3[4] = sub_27441317C();
  sub_274639ACC();
  return sub_274413378;
}

void sub_274413378(uint64_t *a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    sub_274413224(*a1, v2 + 8);
    sub_274413224(v2 + 8, v2 + 16);
    sub_274639ADC();
    sub_274413294(v2 + 8);
  }

  else
  {
    sub_274413224(*a1, v2 + 8);
    sub_274639ADC();
  }

  sub_274413294(v2);

  free(v2);
}

void *__swift_coroFrameAllocStub(size_t a1)
{
  if (MEMORY[0x277D84FD8])
  {
    return swift_coroFrameAlloc();
  }

  return malloc(a1);
}

void sub_2744134D4(uint64_t a1)
{
  v1 = sub_27441363C();
  sub_27463BF8C();
}

BOOL sub_27441352C()
{
  v0 = sub_27441363C();
  v1 = sub_27441363C();

  return v0 == v1;
}

uint64_t sub_27441357C()
{
  sub_27463C74C();
  sub_2744134D4(v1);
  return sub_27463C7AC();
}

uint64_t sub_2744135EC(uint64_t a1)
{
  sub_27463C74C();
  sub_2744134D4(v2);
  return sub_27463C7AC();
}

id sub_27441364C()
{
  v1 = *v0;
  v2 = *MEMORY[0x277D85000];
  [*(v0 + qword_28094A100) removeEventObserver_];
  v5 = type metadata accessor for ParameterObserver(0, *((v2 & v1) + 0x50), v3, v4);
  v7.receiver = v0;
  v7.super_class = v5;
  return objc_msgSendSuper2(&v7, sel_dealloc);
}

uint64_t sub_27441370C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for ParameterObserver(0, *((*MEMORY[0x277D85000] & *v4) + 0x50), a3, a4);
  swift_getWitnessTable();
  sub_274638EFC();
  sub_274638F3C();
}

void sub_27441379C(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v7 = a1;
  sub_27441370C(v4, v7, v5, v6);
}

uint64_t sub_274413870(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_2744138B8(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_2744138F8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_274413968@<X0>(uint64_t a1@<X0>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  type metadata accessor for ParameterObserver(0, *(a1 + 80), a3, a4);
  result = sub_274638EFC();
  *a5 = result;
  return result;
}

uint64_t sub_2744139D8()
{
  static WFRegexFieldParameter.moduleSummaryEditorClass()();

  return swift_getObjCClassFromMetadata();
}

void sub_274413A00(uint64_t a1, uint64_t a2)
{
  v6.receiver = v2;
  v6.super_class = type metadata accessor for RegexFieldParameterSummaryEditor();
  objc_msgSendSuper2(&v6, sel_textEntryWillBegin_allowMultipleLines_, a1, a2);
  sub_274413CC4();
  v5 = [v2 parameter];
  [v5 addEventObserver_];
}

void sub_274413B04(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for RegexFieldParameterSummaryEditor();
  objc_msgSendSuper2(&v3, sel_textEntryTextDidChange_, a1);
  sub_274413CC4();
}

id sub_274413BBC()
{
  v4.receiver = v0;
  v4.super_class = type metadata accessor for RegexFieldParameterSummaryEditor();
  objc_msgSendSuper2(&v4, sel_textEntryDidFinish);
  v1 = [v0 parameter];
  [v1 removeEventObserver_];

  result = [v0 variableUIDelegate];
  if (result)
  {
    v3 = result;
    if ([result respondsToSelector_])
    {
      [v3 showParameterEditingHint_];
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_274413CC4()
{
  v1 = v0;
  v15 = [v0 parameter];
  objc_opt_self();
  v2 = swift_dynamicCastObjCClass();
  if (!v2 || (v3 = v2, (v4 = [v1 currentState]) == 0))
  {
    v10 = v15;
LABEL_6:

    return;
  }

  v5 = v4;
  v6 = [v3 hintForState_];
  if (v6)
  {
    v7 = v6;
    sub_27463B6AC();
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  v11 = [v1 variableUIDelegate];
  if (v11)
  {
    v12 = v11;
    if ([v11 respondsToSelector_])
    {
      if (v9)
      {
        v13 = sub_27463B66C();
      }

      else
      {
        v13 = 0;
      }

      [v12 showParameterEditingHint_];

      swift_unknownObjectRelease();
      v10 = v14;
      goto LABEL_6;
    }

    swift_unknownObjectRelease();
  }

  else
  {
  }
}

id sub_274413EF0(void *a1, uint64_t a2, char a3)
{
  v9.receiver = v3;
  v9.super_class = type metadata accessor for RegexFieldParameterSummaryEditor();
  v7 = objc_msgSendSuper2(&v9, sel_initWithParameter_arrayIndex_processing_, a1, a2, a3 & 1);

  return v7;
}

id sub_274413FA0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RegexFieldParameterSummaryEditor();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_274413FD8(void *a1)
{
  v2 = *(*(v1 + 8) + qword_28094A100);
  sub_274414140();
  v4 = v3;

  v5 = 0;
  v6 = 1 << *(v4 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(v4 + 56);
  v9 = (v6 + 63) >> 6;
  while (v8)
  {
    v10 = v5;
LABEL_10:
    v11 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    v12 = *(*(v4 + 48) + ((v10 << 8) | (4 * v11)));
    if ([a1 hasValueForPropertyID_])
    {
      [a1 contactWithPropertyID:v12 multivalueIndex:0];

      return;
    }
  }

  while (1)
  {
    v10 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      __break(1u);
      return;
    }

    if (v10 >= v9)
    {
      break;
    }

    v8 = *(v4 + 56 + 8 * v10);
    ++v5;
    if (v8)
    {
      v5 = v10;
      goto LABEL_10;
    }
  }

  v13 = a1;
}

void sub_274414140()
{
  v1 = sub_274415114(v0);
  if (v1)
  {
    v2 = v1;
    v3 = 0;
    v4 = *(v1 + 16);
    v25 = MEMORY[0x277D84F90];
    while (1)
    {
      if (v4 == v3)
      {

        break;
      }

      v5 = v3;
      if (v3 >= *(v2 + 16))
      {
        __break(1u);
        return;
      }

      v6 = *(v2 + 8 * v3 + 32);
      v7 = sub_27463B6AC();
      v9 = v8;
      if (v7 == sub_27463B6AC() && v9 == v10)
      {

LABEL_18:
        v20 = 4;
        goto LABEL_21;
      }

      v12 = sub_27463C6BC();
      v13 = v6;

      if (v12)
      {

        goto LABEL_18;
      }

      v14 = sub_27463B6AC();
      v16 = v15;
      if (v14 == sub_27463B6AC() && v16 == v17)
      {

LABEL_20:
        v20 = 3;
LABEL_21:
        v21 = v25;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_27444FCA8();
          v21 = v23;
        }

        v22 = *(v21 + 16);
        if (v22 >= *(v21 + 24) >> 1)
        {
          sub_27444FCA8();
          v21 = v24;
        }

        v3 = v5 + 1;
        *(v21 + 16) = v22 + 1;
        v25 = v21;
        *(v21 + 4 * v22 + 32) = v20;
      }

      else
      {
        v19 = sub_27463C6BC();

        v3 = v5 + 1;
        if (v19)
        {
          goto LABEL_20;
        }
      }
    }
  }

  sub_2745E1824();
}

void sub_274414380(void *a1@<X0>, void *a2@<X8>)
{
  v3 = [objc_opt_self() contactWithCNContact_];
  sub_274413FD8(v3);
  v5 = v4;

  v6 = [objc_allocWithZone(MEMORY[0x277CFC2C0]) initWithContact_];
  *a2 = v6;
}

uint64_t sub_274414414(void *a1)
{
  v2 = v1;
  v4 = sub_2746396DC();
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094A210, qword_27464FBA0);
  MEMORY[0x28223BE20](v7);
  v9 = &v43 - v8;
  v10 = v1[2];
  v11 = v1[4];
  v50 = v1[3];
  v51 = v10;
  v53 = v10;
  v54 = v50;
  v55 = v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094C1D0, &qword_27464CFD0);
  MEMORY[0x277C575F0](&v56);
  if (!v56 || (v13 = sub_2745DDBAC(v56)) == 0 || (sub_2745DBE3C(v13), v15 = v14, , !v15))
  {

    v15 = MEMORY[0x277D84F90];
  }

  v56 = v15;
  v16 = v2[1];
  v17 = qword_28094A100;
  if (![*(v16 + qword_28094A100) allowsMultipleValues])
  {

    v56 = a1;

    goto LABEL_20;
  }

  v18 = v2[5];
  if (!v18)
  {
LABEL_19:

    sub_27445BBD0(v34);
    goto LABEL_20;
  }

  v48 = v12;
  v49 = v11;
  v19 = v7;
  v47 = v9;
  v20 = v18;
  v21 = [v20 arrayIndex];
  if (v21 >= sub_274453594())
  {

    v7 = v19;
    v11 = v49;
    v9 = v47;
    goto LABEL_19;
  }

  v46 = v20;
  v22 = [v20 arrayIndex];
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  v44 = v19;
  v45 = v6;
  if (!result || v15 < 0 || (v15 & 0x4000000000000000) != 0)
  {
    result = sub_27453BA6C();
    v15 = result;
  }

  v24 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v11 = v49;
  if (v22 >= v24)
  {
    __break(1u);
    goto LABEL_32;
  }

  v25 = v24 - 1;
  v26 = v24 - 1 - v22;
  v27 = (v15 & 0xFFFFFFFFFFFFFF8) + 8 * v22;
  v28 = *(v27 + 0x20);
  sub_274453590(v27 + 40, v26, (v27 + 32));
  *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10) = v25;

  v56 = v15;

  v29 = v46;
  result = [v46 arrayIndex];
  if (result < 0)
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v30 = result;
  result = sub_274453594();
  if (result < v30)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v31 = sub_274453594();
  v32 = sub_274453594();
  v33 = __OFADD__(v32, v31);
  result = v32 + v31;
  if (v33)
  {
LABEL_34:
    __break(1u);
    return result;
  }

  sub_274547EA4();
  sub_274546BBC();

  v7 = v44;
  v9 = v47;
LABEL_20:
  [*(v16 + v17) multipleStateClass];
  swift_getObjCClassMetadata();
  sub_274412734(0, &unk_28094A220, 0x277D7C2A8);
  v35 = swift_dynamicCastMetatype();
  v36 = v56;
  if (v35)
  {

    if (v36 >> 62)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094BD50, &qword_2746475D0);
      v37 = sub_27463C57C();
    }

    else
    {
      sub_27463C6CC();
      v37 = v36;
    }

    v38 = sub_274467468(v37);
  }

  else
  {

    v38 = 0;
  }

  v53 = v51;
  v54 = v50;
  v55 = v11;
  v52 = v38;
  sub_27463AEBC();
  v39 = v2[6];
  if (v39)
  {
    v40 = v2[7];

    v39(v41);
    return sub_274406A94(v39, v40);
  }

  else
  {
    sub_2745DC2EC();
    if (v42)
    {
      v42();
    }

    else
    {
      sub_2745DC448(v9);
      MEMORY[0x277C575F0](v7);
      sub_2746396CC();
      sub_27463AEBC();
      return sub_274415174(v9, &unk_28094A210, qword_27464FBA0);
    }
  }
}

id sub_27441489C(void *a1)
{
  if (![a1 value])
  {
    memset(v49, 0, sizeof(v49));
    sub_274415174(v49, &unk_28094A230, &qword_27464D1B0);
    return 0;
  }

  sub_27463C13C();
  swift_unknownObjectRelease();
  sub_274415174(v49, &unk_28094A230, &qword_27464D1B0);
  v3 = sub_274415114(v1);
  if (!v3)
  {
    return v3;
  }

  v4 = sub_274637CAC();
  *&v49[0] = *MEMORY[0x277D7CBF8];
  MEMORY[0x28223BE20](v4);
  v5 = sub_27446EC04();
  v6 = &selRef_maximumDate;
  if ((v5 & 1) == 0)
  {
    goto LABEL_27;
  }

  if ([a1 value])
  {
    sub_27463C13C();
    swift_unknownObjectRelease();
  }

  else
  {
    OUTLINED_FUNCTION_2_1();
  }

  OUTLINED_FUNCTION_1_1();
  if (!v7)
  {
    goto LABEL_26;
  }

  v8 = sub_274412734(0, qword_28094A248, 0x277CBDB70);
  v5 = OUTLINED_FUNCTION_0_2(v8);
  if ((v5 & 1) == 0)
  {
    goto LABEL_27;
  }

  v9 = [a1 contact];
  v10 = [a1 key];
  if (!v10)
  {
    sub_27463B6AC();
    v10 = sub_27463B66C();
  }

  v11 = [v9 valueForKey_];

  if (v11)
  {
    sub_27463C13C();
    swift_unknownObjectRelease();
  }

  else
  {
    OUTLINED_FUNCTION_2_1();
  }

  v6 = &selRef_maximumDate;
  OUTLINED_FUNCTION_1_1();
  if (!v12)
  {

LABEL_26:
    v5 = sub_274415174(v49, &unk_28094A230, &qword_27464D1B0);
    goto LABEL_27;
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094A240, &qword_274648B48);
  if ((OUTLINED_FUNCTION_0_2(v13) & 1) == 0)
  {

LABEL_27:
    *&v49[0] = *MEMORY[0x277D7CBF0];
    MEMORY[0x28223BE20](v5);
    v22 = sub_27446EC04();

    if (!v22)
    {
      goto LABEL_50;
    }

    if ([a1 value])
    {
      sub_27463C13C();
      swift_unknownObjectRelease();
    }

    else
    {
      OUTLINED_FUNCTION_2_1();
    }

    OUTLINED_FUNCTION_1_1();
    if (v23)
    {
      v24 = sub_274412734(0, &unk_28094D720, 0x277CCACA8);
      if ((OUTLINED_FUNCTION_0_2(v24) & 1) == 0)
      {
        goto LABEL_50;
      }

      v25 = [a1 contact];
      v26 = [a1 key];
      if (!v26)
      {
        sub_27463B6AC();
        v26 = sub_27463B66C();
      }

      v27 = [v25 valueForKey_];

      if (v27)
      {
        sub_27463C13C();
        swift_unknownObjectRelease();
      }

      else
      {
        OUTLINED_FUNCTION_2_1();
      }

      OUTLINED_FUNCTION_1_1();
      v6 = &selRef_maximumDate;
      if (v28)
      {
        v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094A240, &qword_274648B48);
        if (OUTLINED_FUNCTION_0_2(v29))
        {
          v30 = sub_274453594();
          if (v30)
          {
            v31 = v30;
            *&v49[0] = MEMORY[0x277D84F90];
            result = sub_27463C44C();
            if (v31 < 0)
            {
              goto LABEL_66;
            }

            v32 = 0;
            do
            {
              if ((v48 & 0xC000000000000001) != 0)
              {
                v33 = MEMORY[0x277C58B20](v32);
              }

              else
              {
                v33 = *(v48 + 8 * v32 + 32);
              }

              v34 = v33;
              ++v32;
              v35 = [v33 value];

              sub_27463C41C();
              sub_27463C46C();
              sub_27463C47C();
              sub_27463C42C();
            }

            while (v31 != v32);

            v36 = *&v49[0];
            v6 = &selRef_maximumDate;
          }

          else
          {

            v36 = MEMORY[0x277D84F90];
          }

          sub_2744B2978(v48, v36);
          v4 = v45;
          v47 = v46;

          if (v47)
          {
            v4 = sub_274637CAC();
          }

          v38 = 0;
          v37 = 4;
          goto LABEL_51;
        }

LABEL_50:
        v37 = 0xFFFFFFFFLL;
        v38 = 1;
LABEL_51:
        v39 = sub_274637CAC();
        v3 = 0;
        if ((v38 & 1) == 0 && v4 != v39)
        {
          v40 = [a1 v6[382]];
          v41 = [objc_opt_self() contactWithCNContact:v40 propertyID:v37 multivalueIndex:v4];

          v3 = [objc_allocWithZone(MEMORY[0x277CFC2C0]) initWithContact_];
        }

        return v3;
      }
    }

    sub_274415174(v49, &unk_28094A230, &qword_27464D1B0);
    goto LABEL_50;
  }

  v14 = sub_274453594();
  if (!v14)
  {

    v21 = MEMORY[0x277D84F90];
    goto LABEL_58;
  }

  v15 = v14;
  *&v49[0] = MEMORY[0x277D84F90];
  result = sub_27463C44C();
  if ((v15 & 0x8000000000000000) == 0)
  {
    v17 = 0;
    do
    {
      if ((v48 & 0xC000000000000001) != 0)
      {
        v18 = MEMORY[0x277C58B20](v17);
      }

      else
      {
        v18 = *(v48 + 8 * v17 + 32);
      }

      v19 = v18;
      ++v17;
      v20 = [v18 value];

      sub_27463C41C();
      sub_27463C46C();
      sub_27463C47C();
      sub_27463C42C();
    }

    while (v15 != v17);

    v21 = *&v49[0];
    v6 = &selRef_maximumDate;
LABEL_58:
    sub_2744B2950(v48, v21);
    v4 = v42;
    v44 = v43;

    if (v44)
    {
      v4 = sub_274637CAC();
    }

    v38 = 0;
    v37 = 3;
    goto LABEL_51;
  }

  __break(1u);
LABEL_66:
  __break(1u);
  return result;
}

void sub_274414F9C()
{
  sub_274414140();
  v1 = v0 + 56;
  v2 = 1 << *(v0 + 32);
  v3 = -1;
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  v4 = v3 & *(v0 + 56);
  v5 = (v2 + 63) >> 6;

  v6 = 0;
  v7 = MEMORY[0x277D84F90];
  while (v4)
  {
LABEL_9:
    v4 &= v4 - 1;
    v9 = CNContactPropertyKeyFromWFContactPropertyID();
    if (v9)
    {
      v10 = v9;
      v11 = sub_27463B6AC();
      v13 = v12;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_27444FD7C();
        v7 = v17;
      }

      v14 = *(v7 + 16);
      v15 = v14 + 1;
      if (v14 >= *(v7 + 24) >> 1)
      {
        v18 = *(v7 + 16);
        sub_27444FD7C();
        v14 = v18;
        v7 = v19;
      }

      *(v7 + 16) = v15;
      v16 = v7 + 16 * v14;
      *(v16 + 32) = v11;
      *(v16 + 40) = v13;
    }
  }

  while (1)
  {
    v8 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      break;
    }

    if (v8 >= v5)
    {

      return;
    }

    v4 = *(v1 + 8 * v8);
    ++v6;
    if (v4)
    {
      v6 = v8;
      goto LABEL_9;
    }
  }

  __break(1u);
}

uint64_t sub_274415114(void *a1)
{
  v1 = [a1 supportedContactProperties];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  type metadata accessor for WFContactFieldProperty(0);
  v3 = sub_27463B81C();

  return v3;
}

uint64_t sub_274415174(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t OUTLINED_FUNCTION_0_2(uint64_t a1)
{

  return swift_dynamicCast();
}

__n128 OUTLINED_FUNCTION_1_1()
{
  result = *(v0 - 144);
  *(v0 - 112) = *(v0 - 160);
  *(v0 - 96) = result;
  return result;
}

double OUTLINED_FUNCTION_2_1()
{
  result = 0.0;
  *(v0 - 160) = 0u;
  *(v0 - 144) = 0u;
  return result;
}

uint64_t sub_274415274(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for ListParameterOutlineModalEditor(255, *(a1 + 80), *(a1 + 128), a4);
  sub_27463C0AC();
  result = sub_274638FCC();
  if (v5 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_27441532C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 32))(a7, a1, AssociatedTypeWitness);
  result = type metadata accessor for ListParameterOutlineModalEditor(0, a5, a6, v15);
  v17 = (a7 + *(result + 36));
  *v17 = a2;
  v17[1] = a3;
  *(a7 + *(result + 40)) = a4;
  return result;
}

uint64_t sub_2744153F4()
{
  OUTLINED_FUNCTION_57();
  swift_getWitnessTable();

  return sub_27463950C();
}

uint64_t sub_274415448(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  type metadata accessor for ListParameterOutlineModalEditor(255, a2, a8, a4);
  v9 = sub_27463C0AC();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  (*(v10 + 16))(&v14 - v12, a1, v9, v11);
  sub_2745C4778();
  return (*(v10 + 8))(a1, v9);
}

uint64_t sub_27441554C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_274638FAC();
}

uint64_t sub_274415718(uint64_t a1, int64x2_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = *v5;
  v8 = *v5;
  v9 = *(*v5 + 80);
  a2.i64[0] = v9;
  v26 = a2;
  v10 = v7[16];
  type metadata accessor for ListParameterOutlineModalEditor(255, v9, v10, a5);
  v11 = sub_27463C0AC();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v23.i8[-v13];
  v15 = *(v8 + 17);
  v38 = v8[18];
  v16 = v15;
  v25 = v15;
  v39 = v7[19];
  v17 = v39;
  v18 = v7[20];
  v40 = v18;
  v24 = *(v8 + 11);
  v19 = vzip1q_s64(v26, v24);
  v26 = *(v8 + 13);
  v20.i64[0] = v10;
  v36 = *(v8 + 7);
  v37 = vzip1q_s64(v20, v16);
  v34 = v19;
  v35 = vzip1q_s64(vdupq_laneq_s64(v24, 1), v26);
  v19.i64[0] = v8[15];
  v23 = v19;
  swift_getKeyPath();
  v27 = v9;
  v28 = v24;
  v29 = v26;
  *&v21 = v23.i64[0];
  *(&v21 + 1) = v10;
  v31 = v25;
  v30 = v21;
  v32 = v17;
  v33 = v18;
  swift_getKeyPath();
  (*(v12 + 16))(v14, a1, v11);

  sub_274638FBC();
  return (*(v12 + 8))(a1, v11);
}

uint64_t sub_27441599C@<X0>(uint64_t a1@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = *(*(AssociatedTypeWitness - 8) + 16);

  return v4(a1, v1, AssociatedTypeWitness);
}

uint64_t sub_274415A1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(*v4 + 168);
  type metadata accessor for ListParameterOutlineModalEditor(255, *(*v4 + 80), *(*v4 + 128), a4);
  sub_27463C0AC();
  v6 = sub_274638FCC();
  (*(*(v6 - 8) + 8))(v4 + v5, v6);
  return v4;
}

uint64_t sub_274415B2C(uint64_t a1)
{
  swift_getAssociatedTypeWitness();
  sub_27463C0AC();
  result = sub_274638FCC();
  if (v2 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t **sub_274415BF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v19 = *v4;
  v5 = v19;
  v6 = v19[10];
  v7 = v19[16];
  v8 = type metadata accessor for ListParameterOutlineModalEditor(255, v5[10], v5[16], a4);
  sub_27463C0AC();
  v9 = sub_274638FCC();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v18 - v11;
  MEMORY[0x28223BE20](v13);
  v15 = &v18 - v14;
  v16 = v5[21];
  __swift_storeEnumTagSinglePayload(&v18 - v14, 1, 1, v8);
  sub_274415448(v15, v6, v5[11], v5[12], v5[13], v5[14], v5[15], v7);
  (*(v10 + 32))(v4 + v16, v12, v9);
  return v4;
}

uint64_t sub_274415E5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10, uint64_t a11)
{
  OUTLINED_FUNCTION_57();
  v18[0] = v11;
  v18[1] = v12;
  v18[2] = v13;
  v18[3] = v14;
  v18[4] = v15;
  v18[5] = v16;
  v19 = a9;
  v20 = a10;
  v21 = a11;
  type metadata accessor for ListParameterListContentView.Model(0, v18);
  OUTLINED_FUNCTION_47_0();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_65();
  return sub_2746391FC();
}

uint64_t sub_274415EDC@<X0>(uint64_t a1@<X0>, uint64_t *a3@<X8>)
{
  v4 = *(a1 + 160);
  v5 = *(a1 + 96);
  v8[0] = *(a1 + 80);
  v8[1] = v5;
  v6 = *(a1 + 128);
  v8[2] = *(a1 + 112);
  v8[3] = v6;
  v8[4] = *(a1 + 144);
  v9 = v4;
  type metadata accessor for ListParameterListContentView.Model(0, v8);
  result = sub_274638EFC();
  *a3 = result;
  return result;
}

uint64_t sub_274415F48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, uint64_t a10)
{
  v11[0] = a1;
  v11[1] = a2;
  v11[2] = a3;
  v11[3] = a4;
  v11[4] = a5;
  v11[5] = a6;
  v11[6] = a7;
  v11[7] = a8;
  v12 = a9;
  v13 = a10;
  type metadata accessor for ListParameterListContentView.Model(0, v11);
  return sub_274415AFC();
}

void sub_274415FA0()
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
  sub_2744342DC();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_274433B6C();
  }

  else
  {
    sub_27463BC0C();
    v8 = sub_27463A2FC();
    sub_274638CEC();

    sub_274639AAC();
    swift_getAtKeyPath();

    (*(v2 + 8))(v6, v0);
  }

  OUTLINED_FUNCTION_23();
}

void sub_27441614C()
{
  OUTLINED_FUNCTION_24();
  v150 = v0;
  v143 = v1;
  OUTLINED_FUNCTION_1();
  v139 = v2;
  v140 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v4);
  v138 = &v116 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v151 = *(v7 + 16);
  v5.i64[0] = v151;
  v155 = v5;
  v8 = *(v7 + 64);
  v9 = v7;
  v149 = type metadata accessor for ListParameterOutlineModalEditor(255, v151, v8, v10);
  sub_27463C0AC();
  OUTLINED_FUNCTION_35_0();
  sub_27463AF4C();
  OUTLINED_FUNCTION_1();
  v141 = v12;
  v142 = v11;
  OUTLINED_FUNCTION_60_0();
  MEMORY[0x28223BE20](v13);
  v137 = &v116 - v14;
  v15 = *(v9 + 40);
  OUTLINED_FUNCTION_30();
  v171 = sub_27463965C();
  v16 = *(v9 + 48);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094A6B0, &qword_2746494F8);
  OUTLINED_FUNCTION_22();
  sub_27463965C();
  OUTLINED_FUNCTION_26_0();
  v172.i64[0] = sub_274639DEC();
  v172.i64[1] = MEMORY[0x277CE1180];
  v173.i64[0] = *(v9 + 56);
  v17 = v173.i64[0];
  OUTLINED_FUNCTION_77();
  swift_getTupleTypeMetadata();
  OUTLINED_FUNCTION_26_0();
  sub_27463B19C();
  OUTLINED_FUNCTION_0_3();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_22();
  v18 = sub_27463ADAC();
  OUTLINED_FUNCTION_5_1();
  WitnessTable = swift_getWitnessTable();
  v171 = v18;
  v172.i64[0] = MEMORY[0x277D83B88];
  v172.i64[1] = WitnessTable;
  v173.i64[0] = MEMORY[0x277D83B98];
  sub_27463ADBC();
  OUTLINED_FUNCTION_67();
  v20 = sub_274639EFC();
  OUTLINED_FUNCTION_34_0();
  v22 = sub_274433D44(v21);
  v173.i64[0] = v22;
  v153 = v9;
  v156 = *(v9 + 24);
  v171 = v156.i64[1];
  *&v23 = vdupq_laneq_s64(v156, 1).u64[0];
  v152 = vzip1q_s64(v155, v156);
  *(&v23 + 1) = v15;
  v24.i64[0] = v15;
  v24.i64[1] = v16;
  v155 = v24;
  v24.i64[0] = v17;
  v148 = v8;
  v24.i64[1] = v8;
  v154 = v24;
  v25 = *(v9 + 72);
  v172.i64[0] = v20;
  v172.i64[1] = v25;
  v24.i64[0] = v16;
  v24.i64[1] = v17;
  v135 = v24;
  v136 = v23;
  v24.i64[0] = v8;
  v24.i64[1] = v25;
  v134 = v24;
  v133 = v25;
  swift_getOpaqueTypeMetadata2();
  sub_27463A29C();
  OUTLINED_FUNCTION_22();
  sub_27463965C();
  OUTLINED_FUNCTION_62_0();
  sub_27463965C();
  OUTLINED_FUNCTION_69();
  sub_27463965C();
  v26 = OUTLINED_FUNCTION_51_0();
  v171 = v156.i64[1];
  v172.i64[0] = v20;
  v172.i64[1] = v25;
  v173.i64[0] = v22;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  OUTLINED_FUNCTION_50_0();
  v29 = sub_274433D44(v28);
  v201 = OpaqueTypeConformance2;
  v202 = v29;
  v30 = MEMORY[0x277CDFAD8];
  v199 = swift_getWitnessTable();
  v200 = MEMORY[0x277CDF918];
  v197 = swift_getWitnessTable();
  v198 = MEMORY[0x277CDFC60];
  v31 = swift_getWitnessTable();
  v171 = v151;
  v172.i64[0] = v156.i64[0];
  v172.i64[1] = v18;
  v173.i64[0] = v8;
  v173.i64[1] = v148;
  v174.i64[0] = v26;
  v174.i64[1] = v31;
  type metadata accessor for StackList(255, &v171);
  v32 = sub_274639DEC();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094A6C8, &unk_274649500);
  OUTLINED_FUNCTION_22();
  sub_27463965C();
  OUTLINED_FUNCTION_62_0();
  sub_27463965C();
  OUTLINED_FUNCTION_69();
  sub_27463965C();
  v33 = sub_274430088();
  OUTLINED_FUNCTION_49_0();
  v34 = swift_getWitnessTable();
  v195 = v33;
  v196 = v34;
  OUTLINED_FUNCTION_9_0();
  v145 = v35;
  v36 = swift_getWitnessTable();
  v129 = v36;
  OUTLINED_FUNCTION_48_0();
  v38 = sub_274434E04(v37);
  v193 = v36;
  v194 = v38;
  v191 = swift_getWitnessTable();
  v39 = MEMORY[0x277CDF918];
  v192 = MEMORY[0x277CDF918];
  v128 = v30;
  v189 = swift_getWitnessTable();
  v190 = v39;
  swift_getWitnessTable();
  OUTLINED_FUNCTION_22();
  v126 = sub_27463914C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280951400, &unk_2746528C0);
  OUTLINED_FUNCTION_20_0();
  v127 = sub_27463965C();
  OUTLINED_FUNCTION_52_0();
  v147 = sub_274639DEC();
  v40 = sub_27463AC1C();
  OUTLINED_FUNCTION_1();
  v131 = v41;
  OUTLINED_FUNCTION_60_0();
  MEMORY[0x28223BE20](v42);
  v130 = &v116 - v43;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_28094A6E0, &unk_274649510);
  v122 = v40;
  v146 = sub_27463965C();
  OUTLINED_FUNCTION_1();
  v132 = v44;
  OUTLINED_FUNCTION_60_0();
  MEMORY[0x28223BE20](v45);
  v148 = &v116 - v46;
  sub_274639F1C();
  OUTLINED_FUNCTION_31_0();
  v47 = v153;
  v48 = swift_getWitnessTable();
  v171 = v47;
  v172.i64[0] = v32;
  v49 = MEMORY[0x277CDE0D0];
  v172.i64[1] = v48;
  v173.i64[0] = MEMORY[0x277CDE0D0];
  OUTLINED_FUNCTION_46_0();
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v171 = v47;
  v172.i64[0] = v32;
  v172.i64[1] = v48;
  v173.i64[0] = v49;
  v51 = swift_getOpaqueTypeConformance2();
  v52 = sub_274412BBC();
  v53 = MEMORY[0x277D837D0];
  v171 = OpaqueTypeMetadata2;
  v172.i64[0] = MEMORY[0x277D837D0];
  v172.i64[1] = v51;
  v173.i64[0] = v52;
  v54 = swift_getOpaqueTypeMetadata2();
  v55 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_28094A6F0, &unk_27464FCC0);
  v171 = OpaqueTypeMetadata2;
  v172.i64[0] = v53;
  v172.i64[1] = v51;
  v173.i64[0] = v52;
  v56 = swift_getOpaqueTypeConformance2();
  v57 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_28094D100, &qword_274649520);
  OUTLINED_FUNCTION_44_0();
  v59 = sub_274434E04(v58);
  v171 = v57;
  v172.i64[0] = v59;
  OUTLINED_FUNCTION_43_0();
  v60 = swift_getOpaqueTypeConformance2();
  v171 = v54;
  v172.i64[0] = v55;
  v172.i64[1] = v56;
  v173.i64[0] = v60;
  v61 = swift_getOpaqueTypeMetadata2();
  v171 = v54;
  v172.i64[0] = v55;
  v172.i64[1] = v56;
  v173.i64[0] = v60;
  v62 = swift_getOpaqueTypeConformance2();
  v171 = v61;
  v172.i64[0] = v62;
  swift_getOpaqueTypeMetadata2();
  v171 = v61;
  v172.i64[0] = v62;
  swift_getOpaqueTypeConformance2();
  OUTLINED_FUNCTION_22();
  v63 = sub_2746394FC();
  v64 = sub_27463A11C();
  v118 = v64;
  OUTLINED_FUNCTION_42_0();
  v65 = swift_getWitnessTable();
  v117 = v65;
  OUTLINED_FUNCTION_41_0();
  v67 = sub_274433D44(v66);
  v171 = v63;
  v172.i64[0] = v64;
  v172.i64[1] = v65;
  v173.i64[0] = v67;
  swift_getOpaqueTypeMetadata2();
  v68 = OUTLINED_FUNCTION_67();
  type metadata accessor for VariableEditorModifier(v68);
  OUTLINED_FUNCTION_22();
  v119 = sub_27463965C();
  v123 = sub_27463965C();
  v144 = sub_27463C0AC();
  OUTLINED_FUNCTION_40_0();
  v69 = swift_getWitnessTable();
  OUTLINED_FUNCTION_8_0();
  v71 = sub_274434E04(v70);
  v187 = v69;
  v188 = v71;
  v72 = swift_getWitnessTable();
  v185 = v129;
  v186 = v72;
  v120 = swift_getWitnessTable();
  v184 = v120;
  OUTLINED_FUNCTION_39_0();
  v73 = swift_getWitnessTable();
  v121 = v73;
  OUTLINED_FUNCTION_7_0();
  v75 = sub_274434E04(v74);
  v182 = v73;
  v183 = v75;
  v76 = v146;
  v77 = swift_getWitnessTable();
  v125 = v77;
  OUTLINED_FUNCTION_38_0();
  v78 = v149;
  v79 = swift_getWitnessTable();
  v124 = v79;
  v171 = v63;
  v172.i64[0] = v118;
  v172.i64[1] = v117;
  v173.i64[0] = v67;
  v80 = swift_getOpaqueTypeConformance2();
  OUTLINED_FUNCTION_37_0();
  v82 = sub_274433D44(v81);
  v180 = v80;
  v181 = v82;
  v178 = swift_getWitnessTable();
  v179 = v75;
  v177 = swift_getWitnessTable();
  OUTLINED_FUNCTION_2_2();
  v83 = v144;
  v123 = swift_getWitnessTable();
  v171 = v76;
  v172.i64[0] = v78;
  v172.i64[1] = v83;
  v173.i64[0] = v77;
  v173.i64[1] = v79;
  v174.i64[0] = v123;
  v127 = MEMORY[0x277CDEE40];
  swift_getOpaqueTypeMetadata2();
  OUTLINED_FUNCTION_1();
  v128 = v84;
  v129 = v85;
  MEMORY[0x28223BE20](v84);
  v145 = &v116 - ((v86 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v87);
  v126 = &v116 - v88;
  v164 = v152;
  v165 = v136;
  v89.i64[1] = v135.i64[1];
  v166 = v135;
  v167 = v134;
  *&v136 = *(v153 + 96);
  v169 = v136;
  v170 = v150;
  v90 = v133;
  v89.i64[0] = v133;
  v135 = v89;
  v152 = *(v153 + 80);
  v168 = v152;
  v134 = *(v153 + 88);
  v91 = v130;
  sub_27463AC0C();
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094A490, &qword_274649180);
  sub_2746392AC();
  v92 = v122;
  sub_27463A6CC();

  (*(v131 + 8))(v91, v92);
  v93 = v151;
  v171 = v151;
  v172 = v156;
  v174 = v154;
  v173 = v155;
  v176 = v134;
  v175 = vzip1q_s64(v135, v152);
  type metadata accessor for ListParameterListContentView.Model(0, &v171);
  OUTLINED_FUNCTION_47_0();
  swift_getWitnessTable();
  sub_27463921C();
  v157 = v93;
  v158 = v156;
  v160 = v154;
  v159 = v155;
  v161 = v90;
  v94 = v90;
  v162 = v152;
  v95 = v136;
  v163 = v136;
  swift_getKeyPath();
  v96 = v137;
  sub_27463952C();

  v98 = v138;
  v97 = v139;
  v99 = v153;
  (*(v139 + 16))(v138, v150, v153);
  v100 = v97;
  v101 = (*(v97 + 80) + 104) & ~*(v97 + 80);
  v102 = swift_allocObject();
  *(v102 + 16) = v93;
  *(v102 + 24) = v156;
  v103 = v155;
  *(v102 + 56) = v154;
  *(v102 + 40) = v103;
  *(v102 + 72) = v94;
  *(v102 + 80) = v152;
  *(v102 + 96) = v95;
  (*(v100 + 32))(v102 + v101, v98, v99);
  v104 = swift_checkMetadataState();
  v105 = v123;
  v106 = v124;
  v107 = v125;
  v108 = v96;
  v109 = v146;
  v110 = v148;
  v111 = v149;
  sub_27463A92C();

  (*(v141 + 8))(v108, v142);
  (*(v132 + 8))(v110, v109);
  v171 = v109;
  v172.i64[0] = v111;
  v172.i64[1] = v104;
  v173.i64[0] = v107;
  v173.i64[1] = v106;
  v174.i64[0] = v105;
  swift_getOpaqueTypeConformance2();
  v112 = v126;
  v113 = v145;
  v114 = v128;
  sub_2744E9688();
  v115 = *(v129 + 8);
  v115(v113, v114);
  sub_2744E9688();
  v115(v112, v114);
  OUTLINED_FUNCTION_23();
}

uint64_t sub_274417060@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v79 = a3;
  v80 = a8;
  v78 = a2;
  v67 = a1;
  v76 = a9;
  v75 = a13;
  v73 = a12;
  v71 = a11;
  v70 = a5;
  sub_27463965C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094A6B0, &qword_2746494F8);
  sub_27463965C();
  v72 = a6;
  sub_274639DEC();
  v74 = a7;
  swift_getTupleTypeMetadata();
  sub_27463B19C();
  swift_getWitnessTable();
  sub_27463ADAC();
  swift_getWitnessTable();
  v16 = sub_27463ADBC();
  sub_274639EFC();
  sub_274433D44(&qword_28094A6B8);
  v17 = a4;
  swift_getOpaqueTypeMetadata2();
  sub_27463A29C();
  sub_27463965C();
  sub_27463965C();
  v18 = sub_27463965C();
  WitnessTable = swift_getWitnessTable();
  v68 = v17;
  v69 = a10;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v114 = sub_274433D44(&qword_28094A6C0);
  v111 = swift_getWitnessTable();
  v112 = MEMORY[0x277CDF918];
  v109 = swift_getWitnessTable();
  v110 = MEMORY[0x277CDFC60];
  v84 = v78;
  v85 = v79;
  v86 = v16;
  v87 = v18;
  v88 = v80;
  v89 = WitnessTable;
  v90 = swift_getWitnessTable();
  type metadata accessor for StackList(255, &v84);
  v19 = sub_274639DEC();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094A6C8, &unk_274649500);
  sub_27463965C();
  sub_27463965C();
  v20 = sub_27463965C();
  v21 = sub_274430088();
  v22 = swift_getWitnessTable();
  v107 = v21;
  v108 = v22;
  v23 = swift_getWitnessTable();
  v24 = sub_274434E04(&unk_28094A6D0);
  WitnessTable = v23;
  v105 = v23;
  v106 = v24;
  v103 = swift_getWitnessTable();
  v25 = MEMORY[0x277CDF918];
  v104 = MEMORY[0x277CDF918];
  v101 = swift_getWitnessTable();
  v102 = v25;
  v26 = swift_getWitnessTable();
  v27 = sub_27463914C();
  v28 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v30 = v61 - v29;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280951400, &unk_2746528C0);
  v31 = sub_27463965C();
  v63 = *(v31 - 8);
  MEMORY[0x28223BE20](v31);
  v33 = v61 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v34);
  v62 = v61 - v35;
  v36 = sub_274639DEC();
  v65 = *(v36 - 8);
  v66 = v36;
  MEMORY[0x28223BE20](v36);
  v64 = v61 - v38;
  v39 = v67;
  if (*(v67 + 83) == 1)
  {
    v84 = v78;
    v85 = v79;
    v86 = v68;
    v87 = v70;
    v88 = v72;
    v89 = v74;
    v90 = v80;
    v91 = v69;
    v92 = v71;
    v93 = v73;
    v94 = v75;
    v40 = type metadata accessor for ListParameterListContentView(0, &v84);
    sub_274417B24(v40);
    sub_2744E9688();
    v41 = *(*(v19 - 8) + 8);
    v41(v83, v19);
    sub_2744E9688();
    v42 = swift_getWitnessTable();
    v43 = sub_274434E04(&qword_28094A710);
    v81 = v42;
    v82 = v43;
    swift_getWitnessTable();
    v44 = v64;
    sub_27456E7CC();
    v41(v83, v19);
    v41(&v84, v19);
  }

  else
  {
    v61[0] = v61;
    MEMORY[0x28223BE20](v37);
    v61[1] = v19;
    v45 = v79;
    v61[-12] = v78;
    v61[-11] = v45;
    v46 = v70;
    v61[-10] = v68;
    v61[-9] = v46;
    v47 = v74;
    v61[-8] = v72;
    v61[-7] = v47;
    v48 = v69;
    v61[-6] = v80;
    v61[-5] = v48;
    v49 = v73;
    v61[-4] = v71;
    v61[-3] = v49;
    v61[-2] = v75;
    v61[-1] = v39;
    v50 = sub_2744B2C04(v20, v26);
    sub_2744B2C08(v50, sub_274431E60, &v61[-14], v20, v26);
    v51 = [objc_opt_self() wf_systemGroupedBackgroundColor];
    v84 = sub_27463AB0C();
    v52 = swift_getWitnessTable();
    sub_27463A32C();
    sub_27463A65C();

    (*(v28 + 8))(v30, v27);
    v53 = sub_274434E04(&qword_28094A710);
    v99 = v52;
    v100 = v53;
    swift_getWitnessTable();
    v54 = v62;
    sub_2744E9688();
    v55 = *(v63 + 8);
    v55(v33, v31);
    sub_2744E9688();
    v44 = v64;
    sub_27456E878();
    v55(v33, v31);
    v55(v54, v31);
  }

  v56 = swift_getWitnessTable();
  v57 = sub_274434E04(&qword_28094A710);
  v97 = v56;
  v98 = v57;
  v58 = swift_getWitnessTable();
  v95 = WitnessTable;
  v96 = v58;
  v59 = v66;
  swift_getWitnessTable();
  sub_2744E9688();
  return (*(v65 + 8))(v44, v59);
}

uint64_t sub_274417B24(uint64_t a1)
{
  v2 = v1;
  sub_2744C6ABC();
  v3 = v81;
  sub_27440CB1C(&v79, &unk_2809507C0, &qword_274649C60);
  v4 = MEMORY[0x277CE1180];
  v5 = MEMORY[0x277D83B88];
  v6 = MEMORY[0x277D83B98];
  if (v3)
  {
    sub_27441A8E4(a1, &v79);
    sub_27463965C();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094A6B0, &qword_2746494F8);
    sub_27463965C();
    sub_274639DEC();
    swift_getTupleTypeMetadata();
    sub_27463B19C();
    swift_getWitnessTable();
    *&v58 = sub_27463ADAC();
    *(&v58 + 1) = v5;
    WitnessTable = swift_getWitnessTable();
    v60 = v6;
    v7 = sub_27463ADBC();
    v8 = *(a1 + 32);
    v9 = sub_274639EFC();
    v10 = *(a1 + 72);
    *&v58 = v8;
    *(&v58 + 1) = v9;
    WitnessTable = v10;
    v60 = sub_274433D44(&qword_28094A6B8);
    swift_getOpaqueTypeMetadata2();
    sub_27463A29C();
    sub_27463965C();
    sub_27463965C();
    v11 = sub_27463965C();
    v48 = *(a1 + 64);
    v43 = swift_getWitnessTable();
    v46 = v10;
    v47 = v8;
    *&v58 = v8;
    *(&v58 + 1) = v9;
    v45 = v9;
    WitnessTable = v10;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v57 = sub_274433D44(&qword_28094A6C0);
    v54 = swift_getWitnessTable();
    v55 = MEMORY[0x277CDF918];
    v52 = swift_getWitnessTable();
    v53 = MEMORY[0x277CDFC60];
    v12 = swift_getWitnessTable();
    v58 = *(a1 + 16);
    WitnessTable = v7;
    v60 = v11;
    v61 = v48;
    v62 = v43;
    v63 = v12;
    v13 = type metadata accessor for StackList(0, &v58);
    swift_getWitnessTable();
    sub_2744E9688();
    v14 = *(*(v13 - 8) + 8);
    v14(&v79, v13);
    sub_2744E9688();
    sub_274430088();
    sub_27456E878();
    v14(v51, v13);
    v14(&v58, v13);
  }

  else
  {
    v61 = a1;
    v62 = &off_288362B58;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v58 + 1);
    (*(*(a1 - 8) + 16))(boxed_opaque_existential_1, v2, a1);
    v16 = sub_27441A184(a1);
    KeyPath = swift_getKeyPath();
    v64 = 0;
    v63 = KeyPath;
    *&v58 = v16;
    *&v79 = sub_27463965C();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094A6B0, &qword_2746494F8);
    sub_27463965C();
    *(&v79 + 1) = sub_274639DEC();
    v80 = v4;
    v81 = *(a1 + 56);
    swift_getTupleTypeMetadata();
    sub_27463B19C();
    swift_getWitnessTable();
    v18 = sub_27463ADAC();
    v19 = swift_getWitnessTable();
    *&v79 = v18;
    *(&v79 + 1) = v5;
    v80 = v19;
    v81 = v6;
    v49 = sub_27463ADBC();
    v20 = *(a1 + 32);
    v21 = sub_274639EFC();
    v22 = *(a1 + 72);
    v23 = sub_274433D44(&qword_28094A6B8);
    *&v79 = v20;
    *(&v79 + 1) = v21;
    v80 = v22;
    v81 = v23;
    swift_getOpaqueTypeMetadata2();
    sub_27463A29C();
    sub_27463965C();
    sub_27463965C();
    v44 = sub_27463965C();
    v24 = *(a1 + 64);
    v42 = swift_getWitnessTable();
    v46 = v22;
    v47 = v20;
    *&v79 = v20;
    v45 = v21;
    *(&v79 + 1) = v21;
    v80 = v22;
    v81 = v23;
    v25 = swift_getOpaqueTypeConformance2();
    v26 = sub_274433D44(&qword_28094A6C0);
    v77 = v25;
    v78 = v26;
    v75 = swift_getWitnessTable();
    v76 = MEMORY[0x277CDF918];
    v73 = swift_getWitnessTable();
    v74 = MEMORY[0x277CDFC60];
    v27 = swift_getWitnessTable();
    v79 = *(a1 + 16);
    v80 = v49;
    v81 = v44;
    v48 = v24;
    v82 = v24;
    v83 = v42;
    v84 = v27;
    type metadata accessor for StackList(0, &v79);
    sub_274430088();
    swift_getWitnessTable();
    sub_27456E7CC();
    sub_274431E78(&v58);
  }

  *&v58 = sub_27463965C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094A6B0, &qword_2746494F8);
  sub_27463965C();
  *(&v58 + 1) = sub_274639DEC();
  v28 = *(a1 + 56);
  WitnessTable = MEMORY[0x277CE1180];
  v60 = v28;
  swift_getTupleTypeMetadata();
  sub_27463B19C();
  swift_getWitnessTable();
  v29 = sub_27463ADAC();
  v30 = swift_getWitnessTable();
  *&v58 = v29;
  *(&v58 + 1) = MEMORY[0x277D83B88];
  WitnessTable = v30;
  v60 = MEMORY[0x277D83B98];
  v31 = sub_27463ADBC();
  sub_274639EFC();
  v32 = sub_274433D44(&qword_28094A6B8);
  *&v58 = v47;
  *(&v58 + 1) = v45;
  WitnessTable = v46;
  v60 = v32;
  swift_getOpaqueTypeMetadata2();
  sub_27463A29C();
  sub_27463965C();
  sub_27463965C();
  v33 = sub_27463965C();
  v34 = swift_getWitnessTable();
  *&v58 = v47;
  *(&v58 + 1) = v45;
  WitnessTable = v46;
  v60 = v32;
  v35 = swift_getOpaqueTypeConformance2();
  v36 = sub_274433D44(&qword_28094A6C0);
  v71 = v35;
  v72 = v36;
  v69 = swift_getWitnessTable();
  v70 = MEMORY[0x277CDF918];
  v67 = swift_getWitnessTable();
  v68 = MEMORY[0x277CDFC60];
  v37 = swift_getWitnessTable();
  v58 = *(a1 + 16);
  WitnessTable = v31;
  v60 = v33;
  v61 = v48;
  v62 = v34;
  v63 = v37;
  type metadata accessor for StackList(255, &v58);
  v38 = sub_274639DEC();
  v39 = sub_274430088();
  v40 = swift_getWitnessTable();
  v65 = v39;
  v66 = v40;
  swift_getWitnessTable();
  sub_2744E9688();
  return (*(*(v38 - 8) + 8))(&v79, v38);
}

uint64_t sub_2744186A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, __int128 a11, uint64_t a12)
{
  v49 = a8;
  v50 = a7;
  v51 = a6;
  v52 = a5;
  v56 = a9;
  v57 = a3;
  v48 = a2;
  v55 = a1;
  v54 = a12;
  v53 = a11;
  sub_27463965C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094A6B0, &qword_2746494F8);
  sub_27463965C();
  sub_274639DEC();
  swift_getTupleTypeMetadata();
  sub_27463B19C();
  swift_getWitnessTable();
  sub_27463ADAC();
  swift_getWitnessTable();
  v13 = sub_27463ADBC();
  sub_274639EFC();
  sub_274433D44(&qword_28094A6B8);
  v43 = a4;
  v44 = a10;
  swift_getOpaqueTypeMetadata2();
  sub_27463A29C();
  sub_27463965C();
  sub_27463965C();
  v14 = sub_27463965C();
  WitnessTable = swift_getWitnessTable();
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v81 = sub_274433D44(&qword_28094A6C0);
  v47 = MEMORY[0x277CDFAD8];
  v78 = swift_getWitnessTable();
  v79 = MEMORY[0x277CDF918];
  v76 = swift_getWitnessTable();
  v77 = MEMORY[0x277CDFC60];
  v15 = v48;
  v16 = v49;
  v66 = v48;
  v67 = v57;
  v68 = v13;
  v69 = v14;
  v70 = v49;
  v71 = WitnessTable;
  v72 = swift_getWitnessTable();
  v40[1] = type metadata accessor for StackList(255, &v66);
  v17 = sub_274639DEC();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094A6C8, &unk_274649500);
  v18 = sub_27463965C();
  v42 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v20 = v40 - v19;
  v21 = sub_27463965C();
  v45 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v23 = v40 - v22;
  v24 = sub_27463965C();
  WitnessTable = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v26 = v40 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v41 = v40 - v28;
  v66 = v15;
  v67 = v57;
  v68 = v43;
  v69 = v52;
  v70 = v51;
  v71 = v50;
  v72 = v16;
  v73 = v44;
  v74 = v53;
  v75 = v54;
  v29 = type metadata accessor for ListParameterListContentView(0, &v66);
  sub_274417B24(v29);
  v30 = sub_274430088();
  v31 = swift_getWitnessTable();
  v64 = v30;
  v65 = v31;
  v32 = swift_getWitnessTable();
  sub_27463A70C();
  (*(*(v17 - 8) + 8))(&v66, v17);
  sub_27463A31C();
  v33 = sub_274434E04(&unk_28094A6D0);
  v62 = v32;
  v63 = v33;
  v34 = swift_getWitnessTable();
  sub_27463A9FC();
  (*(v42 + 8))(v20, v18);
  sub_27463A38C();
  v60 = v34;
  v35 = MEMORY[0x277CDF918];
  v61 = MEMORY[0x277CDF918];
  v36 = swift_getWitnessTable();
  sub_27463A9FC();
  (*(v45 + 8))(v23, v21);
  v58 = v36;
  v59 = v35;
  swift_getWitnessTable();
  v37 = v41;
  sub_2744E9688();
  v38 = *(WitnessTable + 8);
  v38(v26, v24);
  sub_2744E9688();
  return (v38)(v37, v24);
}

double sub_274418E04()
{
  sub_274431E0C();
  sub_274639ACC();
  return v1;
}

uint64_t sub_274418E7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for ListParameterOutlineModalEditor(255, *(a3 + a4 - 88), *(a3 + a4 - 40), a4);
  v5 = sub_27463C0AC();
  v6 = MEMORY[0x28223BE20](v5);
  v8 = &v15 - v7;
  *v10.i64 = (*(v9 + 16))(&v15 - v7, a1, v6);
  return sub_274415718(v8, v10, v11, v12, v13);
}

uint64_t sub_274418F5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, __int128 a11, uint64_t a12, uint64_t a13)
{
  v82 = a3;
  v83 = a2;
  v84 = a1;
  v90 = a9;
  v107 = a3;
  v108 = a4;
  v109 = a5;
  v110 = a6;
  v111 = a7;
  v112 = a8;
  v113 = a10;
  v114 = a11;
  v115 = a12;
  v116 = a13;
  v13 = type metadata accessor for ListParameterListContentView(255, &v107);
  v14 = sub_274639F1C();
  WitnessTable = swift_getWitnessTable();
  v107 = v13;
  v108 = v14;
  v16 = MEMORY[0x277CDE0D0];
  v109 = WitnessTable;
  v110 = MEMORY[0x277CDE0D0];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v107 = v13;
  v108 = v14;
  v109 = WitnessTable;
  v110 = v16;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v19 = sub_274412BBC();
  v20 = MEMORY[0x277D837D0];
  v107 = OpaqueTypeMetadata2;
  v108 = MEMORY[0x277D837D0];
  v109 = OpaqueTypeConformance2;
  v110 = v19;
  v21 = swift_getOpaqueTypeMetadata2();
  v22 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_28094A6F0, &unk_27464FCC0);
  v107 = OpaqueTypeMetadata2;
  v108 = v20;
  v109 = OpaqueTypeConformance2;
  v110 = v19;
  v23 = swift_getOpaqueTypeConformance2();
  v24 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_28094D100, &qword_274649520);
  v25 = sub_274434E04(&qword_28094A700);
  v107 = v24;
  v108 = v25;
  v26 = swift_getOpaqueTypeConformance2();
  v107 = v21;
  v108 = v22;
  v109 = v23;
  v110 = v26;
  v27 = swift_getOpaqueTypeMetadata2();
  v107 = v21;
  v108 = v22;
  v109 = v23;
  v110 = v26;
  v28 = swift_getOpaqueTypeConformance2();
  v107 = v27;
  v108 = v28;
  swift_getOpaqueTypeMetadata2();
  v107 = v27;
  v108 = v28;
  swift_getOpaqueTypeConformance2();
  v29 = sub_2746394FC();
  v30 = sub_27463A11C();
  v31 = swift_getWitnessTable();
  v32 = sub_274433D44(&unk_28094A708);
  v89 = v29;
  v107 = v29;
  v108 = v30;
  v93 = v30;
  v92 = v31;
  v109 = v31;
  v110 = v32;
  v91 = v32;
  swift_getOpaqueTypeMetadata2();
  type metadata accessor for VariableEditorModifier(255);
  v33 = sub_27463965C();
  v78 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v77 = &v76 - v34;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_28094A6E0, &unk_274649510);
  v87 = v33;
  v35 = sub_27463965C();
  v80 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v37 = &v76 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v38);
  v79 = &v76 - v39;
  v88 = sub_27463C0AC();
  v86 = *(v88 - 8);
  MEMORY[0x28223BE20](v88);
  v81 = &v76 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v41);
  v85 = &v76 - v42;
  v43 = swift_checkMetadataState();
  v44 = *(v83 + 8);
  v46 = type metadata accessor for ListParameterOutlineModalEditor(0, v82, a10, v45);
  v47 = v84;
  v48 = *(v84 + *(v46 + 40));
  v49 = *((*MEMORY[0x277D85000] & *v44) + 0xD0);
  v50 = v44;
  v51 = v49(v48);

  if (v51)
  {
    v52 = (v47 + *(v46 + 36));
    v53 = v77;
    sub_274419A4C(*v52, v52[1], v51, v43, v77);
    swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094A490, &qword_274649180);
    sub_2746392AC();
    v54 = v89;
    v107 = v89;
    v108 = v93;
    v109 = v92;
    v110 = v91;
    v55 = swift_getOpaqueTypeConformance2();
    v56 = sub_274433D44(&unk_28094A720);
    v96 = v55;
    v97 = v56;
    v57 = v87;
    v58 = swift_getWitnessTable();
    sub_27463A6CC();

    (*(v78 + 8))(v53, v57);
    v59 = sub_274434E04(&unk_28094A718);
    v94 = v58;
    v95 = v59;
    swift_getWitnessTable();
    v60 = v79;
    sub_2744E9688();
    v61 = v80;
    v62 = *(v80 + 8);
    v62(v37, v35);
    sub_2744E9688();
    v62(v60, v35);
    v63 = v81;
    (*(v61 + 32))(v81, v37, v35);
    __swift_storeEnumTagSinglePayload(v63, 0, 1, v35);
  }

  else
  {
    v63 = v81;
    __swift_storeEnumTagSinglePayload(v81, 1, 1, v35);
    v54 = v89;
    v107 = v89;
    v108 = v93;
    v109 = v92;
    v110 = v91;
    v64 = swift_getOpaqueTypeConformance2();
    v65 = sub_274433D44(&unk_28094A720);
    v105 = v64;
    v106 = v65;
    v66 = swift_getWitnessTable();
    v67 = sub_274434E04(&unk_28094A718);
    v103 = v66;
    v104 = v67;
    swift_getWitnessTable();
  }

  v68 = v85;
  sub_2745758B8(v63, v85);
  v69 = *(v86 + 8);
  v70 = v88;
  v69(v63, v88);
  v107 = v54;
  v108 = v93;
  v109 = v92;
  v110 = v91;
  v71 = swift_getOpaqueTypeConformance2();
  v72 = sub_274433D44(&unk_28094A720);
  v101 = v71;
  v102 = v72;
  v73 = swift_getWitnessTable();
  v74 = sub_274434E04(&unk_28094A718);
  v99 = v73;
  v100 = v74;
  v98 = swift_getWitnessTable();
  swift_getWitnessTable();
  sub_2744E9688();
  return (v69)(v68, v70);
}

uint64_t sub_274419A4C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v51 = a3;
  v53 = a2;
  v52 = a1;
  v56 = a5;
  v6 = sub_27463A11C();
  v55 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v50 = v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_274639F1C();
  WitnessTable = swift_getWitnessTable();
  v68 = a4;
  v69 = v8;
  v10 = MEMORY[0x277CDE0D0];
  v70 = WitnessTable;
  v71 = MEMORY[0x277CDE0D0];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v68 = a4;
  v69 = v8;
  v70 = WitnessTable;
  v71 = v10;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v13 = sub_274412BBC();
  v14 = MEMORY[0x277D837D0];
  v68 = OpaqueTypeMetadata2;
  v69 = MEMORY[0x277D837D0];
  v70 = OpaqueTypeConformance2;
  v71 = v13;
  v15 = swift_getOpaqueTypeMetadata2();
  v16 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_28094A6F0, &unk_27464FCC0);
  v68 = OpaqueTypeMetadata2;
  v69 = v14;
  v70 = OpaqueTypeConformance2;
  v71 = v13;
  v17 = swift_getOpaqueTypeConformance2();
  v18 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_28094D100, &qword_274649520);
  v19 = sub_274434E04(&qword_28094A700);
  v68 = v18;
  v69 = v19;
  v20 = swift_getOpaqueTypeConformance2();
  v68 = v15;
  v69 = v16;
  v70 = v17;
  v71 = v20;
  v21 = swift_getOpaqueTypeMetadata2();
  v68 = v15;
  v69 = v16;
  v70 = v17;
  v71 = v20;
  v22 = swift_getOpaqueTypeConformance2();
  v68 = v21;
  v69 = v22;
  v48 = swift_getOpaqueTypeMetadata2();
  v68 = v21;
  v69 = v22;
  v47 = swift_getOpaqueTypeConformance2();
  v23 = sub_2746394FC();
  v49 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v25 = v44 - v24;
  v26 = swift_getWitnessTable();
  v27 = sub_274433D44(&unk_28094A708);
  v68 = v23;
  v69 = v6;
  v28 = v6;
  v70 = v26;
  v71 = v27;
  v44[1] = MEMORY[0x277CDE5B8];
  v29 = swift_getOpaqueTypeMetadata2();
  v45 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v31 = v44 - v30;
  type metadata accessor for VariableEditorModifier(255);
  v32 = sub_27463965C();
  v46 = *(v32 - 8);
  MEMORY[0x28223BE20](v32);
  v34 = v44 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v35);
  v44[0] = v44 - v36;
  v37 = *(a4 + 40);
  v57 = *(a4 + 24);
  v58 = v37;
  v59 = *(a4 + 56);
  v60 = *(a4 + 72);
  v61 = *(a4 + 88);
  v62 = v51;
  v63 = v54;
  v64 = v52;
  v65 = v53;
  sub_2746394EC();
  v38 = v50;
  sub_27463A10C();
  sub_27463A62C();
  (*(v55 + 8))(v38, v28);
  (*(v49 + 8))(v25, v23);
  v68 = v23;
  v69 = v28;
  v70 = v26;
  v71 = v27;
  v39 = swift_getOpaqueTypeConformance2();
  sub_274548EAC(v29, v39);
  (*(v45 + 8))(v31, v29);
  v40 = sub_274433D44(&unk_28094A720);
  v66 = v39;
  v67 = v40;
  swift_getWitnessTable();
  v41 = v44[0];
  sub_2744E9688();
  v42 = *(v46 + 8);
  v42(v34, v32);
  sub_2744E9688();
  return (v42)(v41, v32);
}

uint64_t sub_27441A184(uint64_t a1)
{
  v2 = v1;
  v3 = a1 - 8;
  v60 = *(a1 - 8);
  v61 = a1;
  MEMORY[0x28223BE20](a1);
  v57 = v4;
  v58 = &v50 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v1 + 8);
  v6 = *((*MEMORY[0x277D85000] & *v5) + 0x88);
  v7 = v5;
  v8 = v6();
  v10 = v9;
  v12 = v11;

  *&v85[0] = v8;
  *(&v85[0] + 1) = v10;
  *&v85[1] = v12;
  v13 = *(v3 + 24);
  sub_27463B92C();
  v14 = sub_27463AF4C();
  WitnessTable = swift_getWitnessTable();
  v15 = swift_getWitnessTable();
  MEMORY[0x277C57F10](&v102, v14, v15);

  v85[0] = v102;
  *&v85[1] = v103;
  v16 = *(v3 + 32);
  v75[2] = v13;
  v75[3] = v16;
  v76 = *(v3 + 40);
  v17 = *(v3 + 64);
  v77 = *(v3 + 56);
  v78 = v17;
  v18 = *(v3 + 80);
  v79 = *(v3 + 72);
  v80 = v18;
  v19 = *(v3 + 96);
  v81 = *(v3 + 88);
  v82 = v19;
  v20 = *(v3 + 104);
  v83 = v20;
  v84 = v2;
  v55 = v77;
  v56 = v13;
  v63 = v13;
  v64 = v16;
  v21 = v16;
  v62 = v76;
  v65 = v76;
  v66 = v77;
  v67 = v17;
  v53 = v79;
  v54 = v17;
  v68 = v79;
  v69 = v18;
  v59 = v18;
  v51 = v19;
  v52 = v81;
  v70 = v81;
  v71 = v19;
  v72 = v20;
  v73 = sub_274432110;
  v74 = v75;
  sub_27463C5BC();
  swift_getWitnessTable();
  v22 = sub_27463B7BC();

  if (*(v2 + 80) == 1)
  {
    memset(v85, 0, 40);
    v24 = v60;
    v23 = v61;
    v25 = v58;
    (*(v60 + 16))(v58, v2, v61);
    v26 = (*(v24 + 80) + 104) & ~*(v24 + 80);
    v27 = swift_allocObject();
    *&v28 = v56;
    *(&v28 + 1) = v21;
    v29 = v62;
    *(v27 + 16) = v28;
    *(v27 + 32) = v29;
    v30 = v54;
    *(v27 + 48) = v55;
    *(v27 + 56) = v30;
    v31 = v52;
    v32 = v59;
    *(v27 + 64) = v53;
    *(v27 + 72) = v32;
    v33 = v51;
    *(v27 + 80) = v31;
    *(v27 + 88) = v33;
    *(v27 + 96) = v20;
    (*(v24 + 32))(v27 + v26, v25, v23);
    v34 = sub_274639EFC();
    v35 = sub_274433D44(&qword_28094A6B8);
    *&v102 = v62;
    *(&v102 + 1) = v34;
    v103 = v32;
    v104 = v35;
    swift_getOpaqueTypeMetadata2();
    sub_27463A29C();
    sub_27463965C();
    v61 = v22;
    sub_27463965C();
    sub_27463965C();
    v60 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280951400, &unk_2746528C0);
    v57 = sub_27463965C();
    sub_27463965C();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094A760, &qword_274649558);
    v58 = sub_27463965C();
    *&v102 = v62;
    *(&v102 + 1) = v34;
    v103 = v32;
    v104 = v35;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v37 = sub_274433D44(&qword_28094A6C0);
    v100 = OpaqueTypeConformance2;
    v101 = v37;
    v38 = swift_getWitnessTable();
    v39 = MEMORY[0x277CDF918];
    v98 = v38;
    v99 = MEMORY[0x277CDF918];
    v40 = swift_getWitnessTable();
    v41 = MEMORY[0x277CDFC60];
    v96 = v40;
    v97 = MEMORY[0x277CDFC60];
    v42 = swift_getWitnessTable();
    v43 = sub_274434E04(&qword_28094A710);
    v94 = v42;
    v95 = v43;
    v92 = swift_getWitnessTable();
    v93 = v39;
    v44 = swift_getWitnessTable();
    v45 = sub_274434E04(&unk_28094A768);
    v90 = v44;
    v91 = v45;
    swift_getWitnessTable();
    sub_27463AE6C();
    sub_27463965C();
    sub_27463965C();
    v88 = swift_getWitnessTable();
    v89 = v41;
    v86 = swift_getWitnessTable();
    v87 = v43;
    v22 = v61;
    swift_getWitnessTable();
    sub_27441CC60(0x7265746F6F66, 0xE600000000000000, v85, sub_27443235C, &v102);
    v105 = 1;
    sub_2744307DC(&v102, v85);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_27444FE4C();
      v22 = v48;
    }

    v46 = *(v22 + 16);
    if (v46 >= *(v22 + 24) >> 1)
    {
      sub_27444FE4C();
      v22 = v49;
    }

    sub_274430814(&v102);
    *(v22 + 16) = v46 + 1;
    memcpy((v22 + 80 * v46 + 32), v85, 0x50uLL);
  }

  return v22;
}

uint64_t sub_27441A8E4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v63 = a2;
  v5 = *(a1 - 1);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](a1);
  v56 = &v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v47 - v8;
  v51 = &v47 - v8;
  v10 = *(v2 + 8);
  v11 = *(v2 + 82);
  v61 = *(v2 + 81);
  v62 = v11;
  v60 = v10;
  v59 = sub_27441AEE4();
  v58 = *(v2 + 80);
  v55 = *(v5 + 16);
  v55(v9, v2, a1);
  v12 = (*(v5 + 80) + 104) & ~*(v5 + 80);
  v13 = swift_allocObject();
  v57 = v13;
  v14 = a1[3];
  v68 = a1[2];
  v13[2] = v68;
  v13[3] = v14;
  v65 = a1[4];
  v66 = v14;
  v16 = a1[5];
  v15 = a1[6];
  v13[4] = v65;
  v13[5] = v16;
  v52 = v15;
  v17 = a1[8];
  v53 = a1[7];
  v18 = v53;
  v54 = v16;
  v13[6] = v15;
  v13[7] = v18;
  v67 = v17;
  v64 = a1[9];
  v19 = v64;
  v13[8] = v17;
  v13[9] = v19;
  v20 = a1[10];
  v49 = a1[11];
  v21 = v49;
  v50 = v20;
  v13[10] = v20;
  v13[11] = v21;
  v22 = a1[12];
  v13[12] = v22;
  v48 = *(v5 + 32);
  v48(v13 + v12, v51, a1);
  v23 = v56;
  v55(v56, v3, a1);
  v24 = swift_allocObject();
  v25 = v65;
  v26 = v66;
  *(v24 + 2) = v68;
  *(v24 + 3) = v26;
  v28 = v53;
  v27 = v54;
  *(v24 + 4) = v25;
  *(v24 + 5) = v27;
  *(v24 + 6) = v52;
  *(v24 + 7) = v28;
  v29 = v64;
  *(v24 + 8) = v67;
  *(v24 + 9) = v29;
  v30 = v49;
  *(v24 + 10) = v50;
  *(v24 + 11) = v30;
  *(v24 + 12) = v22;
  v48(&v24[v12], v23, a1);
  v76 = sub_27463965C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094A6B0, &qword_2746494F8);
  sub_27463965C();
  v77 = sub_274639DEC();
  v78 = MEMORY[0x277CE1180];
  v79 = v28;
  swift_getTupleTypeMetadata();
  sub_27463B19C();
  swift_getWitnessTable();
  v31 = sub_27463ADAC();
  WitnessTable = swift_getWitnessTable();
  v76 = v31;
  v77 = MEMORY[0x277D83B88];
  v78 = WitnessTable;
  v79 = MEMORY[0x277D83B98];
  v56 = sub_27463ADBC();
  v33 = sub_274639EFC();
  v34 = sub_274433D44(&qword_28094A6B8);
  v35 = v64;
  v36 = v65;
  v76 = v65;
  v77 = v33;
  v78 = v64;
  v79 = v34;
  swift_getOpaqueTypeMetadata2();
  sub_27463A29C();
  sub_27463965C();
  sub_27463965C();
  v55 = sub_27463965C();
  v54 = swift_getWitnessTable();
  v76 = v36;
  v77 = v33;
  v78 = v35;
  v79 = v34;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v38 = sub_274433D44(&qword_28094A6C0);
  v73 = OpaqueTypeConformance2;
  v74 = v38;
  v71 = swift_getWitnessTable();
  v72 = MEMORY[0x277CDF918];
  v69 = swift_getWitnessTable();
  v70 = MEMORY[0x277CDFC60];
  v39 = v55;
  v40 = swift_getWitnessTable();
  v41 = v54;
  v42 = v56;
  v43 = v66;
  sub_27441C018(v60, v62, v61, v59, v58, sub_274431EA8, v57, sub_274431EC0, v75, v24, v66, v56, v39, v54, v40);
  v76 = v68;
  v77 = v43;
  v78 = v42;
  v79 = v39;
  v80 = v67;
  v81 = v41;
  v82 = v40;
  v44 = type metadata accessor for StackList(0, &v76);
  swift_getWitnessTable();
  sub_2744E9688();
  v45 = *(*(v44 - 8) + 8);
  v45(v75, v44);
  sub_2744E9688();
  return v45(&v76, v44);
}

uint64_t sub_27441AEE4()
{
  v1 = v0;
  v2 = sub_274639ABC();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2744C6ABC();
  if (v17)
  {
    sub_2743F45D0(&v16, v18);
    v6 = v19;
    v7 = v20;
    __swift_project_boxed_opaque_existential_1(v18, v19);
    if ((*(v7 + 16))(v6, v7))
    {
      v8 = sub_27463AB0C();
    }

    else
    {
      v8 = sub_27463AB7C();
    }

    v11 = v8;
    __swift_destroy_boxed_opaque_existential_1(v18);
  }

  else
  {
    sub_27440CB1C(&v16, &unk_2809507C0, &qword_274649C60);
    v9 = *(v0 + 160);
    if (*(v1 + 168) == 1)
    {
      v10 = v9;
    }

    else
    {

      sub_27463BC0C();
      v12 = sub_27463A2FC();
      sub_274638CEC();

      sub_274639AAC();
      swift_getAtKeyPath();
      sub_2743F45E8(v9, 0);
      (*(v3 + 8))(v5, v2);
      v10 = LOBYTE(v18[0]);
    }

    if (v10 == 1)
    {
      return sub_27463AB7C();
    }

    v14 = objc_allocWithZone(MEMORY[0x277D75348]);
    sub_27451A6B0(sub_274420558, 0);
    return sub_27463AB0C();
  }

  return v11;
}

uint64_t sub_27441B104@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, __int128 a11, uint64_t a12)
{
  v34 = a7;
  v35 = a8;
  v32 = a6;
  v31 = a5;
  v28 = a3;
  v36 = a1;
  v37 = a9;
  v30 = a12;
  v29 = a11;
  v27 = sub_274639EFC();
  v14 = sub_274433D44(&qword_28094A6B8);
  v44 = a4;
  v45 = v27;
  v46 = a10;
  v47 = v14;
  swift_getOpaqueTypeMetadata2();
  sub_27463A29C();
  sub_27463965C();
  v33 = sub_27463965C();
  v15 = sub_27463965C();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v27 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v21 = &v27 - v20;
  v44 = a2;
  v45 = v28;
  v46 = a4;
  v47 = v31;
  v48 = v32;
  v49 = v34;
  v50 = v35;
  v51 = a10;
  v52 = v29;
  v53 = v30;
  v22 = type metadata accessor for ListParameterListContentView(0, &v44);
  sub_27441B458(v22, v18);
  v44 = a4;
  v45 = v27;
  v46 = a10;
  v47 = v14;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v24 = sub_274433D44(&qword_28094A6C0);
  v42 = OpaqueTypeConformance2;
  v43 = v24;
  WitnessTable = swift_getWitnessTable();
  v41 = MEMORY[0x277CDF918];
  v38 = swift_getWitnessTable();
  v39 = MEMORY[0x277CDFC60];
  swift_getWitnessTable();
  sub_2744E9688();
  v25 = *(v16 + 8);
  v25(v18, v15);
  sub_2744E9688();
  return (v25)(v21, v15);
}

uint64_t sub_27441B458@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v58 = a2;
  v5 = sub_274639EFC();
  v55 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v51 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 32);
  v52 = *(v7 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a1 + 72);
  v46 = v11;
  v45 = sub_274433D44(&qword_28094A6B8);
  v65 = v7;
  v66 = v5;
  v12 = v7;
  v13 = v5;
  v67 = v11;
  v68 = v45;
  v48 = MEMORY[0x277CDE668];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v50 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v15 = &v42 - v14;
  sub_27463A29C();
  v47 = sub_27463965C();
  v53 = *(v47 - 8);
  MEMORY[0x28223BE20](v47);
  v42 = &v42 - v16;
  v17 = sub_27463965C();
  v56 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v44 = &v42 - v18;
  v19 = sub_27463965C();
  v57 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v49 = &v42 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v54 = &v42 - v22;
  v23 = *(v3 + 64);
  v24 = *(v3 + 8);
  v23();

  v25 = v51;
  sub_274639EEC();
  v26 = v12;
  v27 = v13;
  v28 = v46;
  v29 = v45;
  sub_27463A69C();
  (*(v55 + 8))(v25, v27);
  (*(v52 + 8))(v10, v26);
  v65 = v26;
  v66 = v27;
  v67 = v28;
  v68 = v29;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v31 = v42;
  v32 = OpaqueTypeMetadata2;
  sub_27463A86C();
  (*(v50 + 8))(v15, v32);
  sub_27463A31C();
  v33 = sub_274433D44(&qword_28094A6C0);
  v63 = OpaqueTypeConformance2;
  v64 = v33;
  v34 = v47;
  WitnessTable = swift_getWitnessTable();
  v36 = v44;
  sub_27463A9FC();
  (*(v53 + 8))(v31, v34);
  v61 = WitnessTable;
  v62 = MEMORY[0x277CDF918];
  v41 = swift_getWitnessTable();
  sub_27457574C(v17);
  v37 = v49;
  sub_27463A90C();
  (*(v56 + 8))(v36, v17);
  v59 = v41;
  v60 = MEMORY[0x277CDFC60];
  swift_getWitnessTable();
  v38 = v54;
  sub_2744E9688();
  v39 = *(v57 + 8);
  v39(v37, v19);
  sub_2744E9688();
  return (v39)(v38, v19);
}

uint64_t sub_27441BB30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>, uint64_t a9, __int128 a10, uint64_t a11, uint64_t a12)
{
  v26 = a1;
  v27 = a3;
  v28 = a8;
  v25 = a12;
  v24 = a10;
  v29 = sub_27463965C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094A6B0, &qword_2746494F8);
  sub_27463965C();
  v30 = sub_274639DEC();
  v31 = MEMORY[0x277CE1180];
  v32 = a9;
  swift_getTupleTypeMetadata();
  sub_27463B19C();
  swift_getWitnessTable();
  v17 = sub_27463ADAC();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = &v24 - v19;
  v21 = *(a4 + 88);
  v29 = *(a4 + 80);
  v30 = a4;
  v31 = a5;
  v32 = a6;
  v33 = a7;
  v34 = a9;
  v35 = v21;
  v36 = a10;
  v37 = a11;
  v38 = a12;
  v22 = type metadata accessor for ListParameterListContentView(0, &v29);
  sub_27441BD64(v26, a2, v22, v20);
  v29 = a2;
  swift_getWitnessTable();
  sub_27463A8BC();
  return (*(v18 + 8))(v20, v17);
}

uint64_t sub_27441BD64@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v23 = a2;
  v22[0] = a1;
  v24 = a4;
  v5 = *(a3 + 40);
  v34 = sub_27463965C();
  v6 = *(a3 + 48);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094A6B0, &qword_2746494F8);
  sub_27463965C();
  v35 = sub_274639DEC();
  v36 = MEMORY[0x277CE1180];
  v37 = *(a3 + 56);
  v7 = v37;
  swift_getTupleTypeMetadata();
  v8 = sub_27463B19C();
  swift_getWitnessTable();
  v9 = sub_27463ADAC();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = v22 - v14;
  *&v16 = *(a3 + 32);
  *(&v16 + 1) = v5;
  *&v17 = v6;
  *(&v17 + 1) = v7;
  v25 = *(a3 + 16);
  v26 = v16;
  v18 = *(a3 + 64);
  v19 = *(a3 + 80);
  v27 = v17;
  v28 = v18;
  v29 = v19;
  v30 = *(a3 + 96);
  v31 = v22[1];
  v32 = v22[0];
  v33 = v23;
  sub_27456E924(v8);
  sub_27463AD9C();
  swift_getWitnessTable();
  sub_2744E9688();
  v20 = *(v10 + 8);
  v20(v12, v9);
  sub_2744E9688();
  return (v20)(v15, v9);
}

uint64_t sub_27441C018@<X0>(uint64_t a1@<X0>, char a2@<W1>, char a3@<W2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  v19 = swift_allocObject();
  v20 = *(a11 + 80);
  v21 = *(a11 + 88);
  v19[2] = v20;
  v19[3] = a11;
  v19[4] = a12;
  v19[5] = a13;
  v19[6] = v21;
  v19[7] = a14;
  v19[8] = a15;
  *(a9 + 64) = sub_274421CBC(sub_274431F94, v19, v20, a11, a12, a13, v21, a14, a15);
  *(a9 + 72) = v22;
  *(a9 + 80) = v23 & 1;
  *(a9 + 88) = swift_getKeyPath();
  *(a9 + 96) = 0;
  type metadata accessor for WorkflowEditorOptions(0);
  sub_274433D44(&qword_28094A730);
  *(a9 + 104) = sub_27463979C();
  *(a9 + 112) = v24;
  *(a9 + 120) = swift_getKeyPath();
  *(a9 + 160) = 0;
  result = swift_getKeyPath();
  *(a9 + 168) = result;
  *(a9 + 176) = 0;
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 9) = a3;
  *(a9 + 16) = a4;
  *(a9 + 24) = a5;
  *(a9 + 32) = a6;
  *(a9 + 40) = a7;
  *(a9 + 48) = a8;
  *(a9 + 56) = a10;
  return result;
}

uint64_t sub_27441C1A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15)
{
  v59 = a8;
  v58 = a7;
  v64 = a6;
  v62 = a5;
  v72 = a3;
  v54 = a2;
  v66 = a1;
  v67 = a9;
  v65 = a15;
  v63 = a14;
  v61 = a13;
  v60 = a12;
  v69 = a11;
  v71 = a10;
  v51 = sub_27463AF4C();
  v56 = *(v51 - 8);
  v57 = *(v56 + 64);
  MEMORY[0x28223BE20](v51);
  v55 = &v50 - v20;
  v78 = a4;
  v79 = a5;
  v80 = a6;
  v81 = a7;
  v82 = a8;
  v83 = a10;
  v84 = a11;
  v85 = a12;
  v86 = a13;
  v87 = a14;
  v88 = a15;
  v52 = type metadata accessor for ListParameterListContentView(0, &v78);
  v68 = *(v52 - 8);
  v53 = *(v68 + 64);
  MEMORY[0x28223BE20](v52);
  v70 = &v50 - v21;
  v22 = *(a4 - 8);
  MEMORY[0x28223BE20](v23);
  v25 = &v50 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v27 = *(AssociatedTypeWitness - 8);
  v28 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v30 = &v50 - v29;
  v31 = v51;
  v32 = v54;
  MEMORY[0x277C575F0](v51, v28);
  sub_27463C39C();
  (*(v22 + 8))(v25, a4);
  swift_getAssociatedConformanceWitness();
  sub_27463C63C();
  (*(v27 + 8))(v30, AssociatedTypeWitness);
  v33 = v68;
  v34 = v52;
  (*(v68 + 16))(v70, v72, v52);
  v35 = v56;
  v36 = v55;
  v37 = v31;
  (*(v56 + 16))(v55, v32, v31);
  v38 = (*(v33 + 80) + 104) & ~*(v33 + 80);
  v39 = v35;
  v40 = (v53 + *(v35 + 80) + v38) & ~*(v35 + 80);
  v41 = (v57 + v40 + 7) & 0xFFFFFFFFFFFFFFF8;
  v42 = swift_allocObject();
  v43 = v62;
  *(v42 + 2) = a4;
  *(v42 + 3) = v43;
  v44 = v58;
  *(v42 + 4) = v64;
  *(v42 + 5) = v44;
  v45 = v71;
  *(v42 + 6) = v59;
  *(v42 + 7) = v45;
  v46 = v60;
  *(v42 + 8) = v69;
  *(v42 + 9) = v46;
  v47 = v63;
  *(v42 + 10) = v61;
  *(v42 + 11) = v47;
  *(v42 + 12) = v65;
  (*(v68 + 32))(&v42[v38], v70, v34);
  (*(v39 + 32))(&v42[v40], v36, v37);
  *&v42[v41] = v66;
  v78 = sub_27463965C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094A6B0, &qword_2746494F8);
  sub_27463965C();
  v79 = sub_274639DEC();
  v80 = MEMORY[0x277CE1180];
  v81 = v71;
  swift_getTupleTypeMetadata();
  sub_27463B19C();
  swift_getWitnessTable();
  sub_27463ADAC();
  sub_27463965C();
  sub_27463965C();
  WitnessTable = swift_getWitnessTable();
  v76 = MEMORY[0x277CDF918];
  v73 = swift_getWitnessTable();
  v74 = MEMORY[0x277CDFC60];
  swift_getWitnessTable();
  sub_27441CC60(0x776F727473696CLL, 0xE700000000000000, v77, sub_27443276C, &v78);
  sub_274412734(0, qword_28094A770, 0x277D75348);
  sub_27441AEE4();
  v48 = sub_27463BF4C();

  v87 = v48;
  sub_2744307DC(&v78, v67);
  return sub_274430814(&v78);
}

uint64_t sub_27441C8B8@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>, uint64_t a9, __int128 a10, __int128 a11, uint64_t a12)
{
  v30 = a5;
  v28 = a4;
  v26 = a3;
  v31 = a1;
  v32 = a2;
  v33 = a8;
  v29 = a12;
  v27 = a11;
  v25 = a10;
  v36 = sub_27463965C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094A6B0, &qword_2746494F8);
  sub_27463965C();
  v37 = sub_274639DEC();
  v38 = MEMORY[0x277CE1180];
  v39 = a9;
  swift_getTupleTypeMetadata();
  sub_27463B19C();
  swift_getWitnessTable();
  v14 = sub_27463ADAC();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v25 - v16;
  v18 = sub_27463965C();
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v21 = &v25 - v20;
  v36 = v26;
  v37 = v28;
  v38 = v30;
  v39 = a6;
  v40 = a7;
  v41 = a9;
  v42 = v25;
  v43 = v27;
  v44 = v29;
  v22 = type metadata accessor for ListParameterListContentView(0, &v36);
  sub_27441BD64(v31, v32, v22, v17);
  sub_27463A31C();
  WitnessTable = swift_getWitnessTable();
  sub_27463A9FC();
  (*(v15 + 8))(v17, v14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094A490, &qword_274649180);
  sub_2746392AC();
  v34 = WitnessTable;
  v35 = MEMORY[0x277CDF918];
  swift_getWitnessTable();
  sub_27457574C(v18);
  sub_27463A90C();
  return (*(v19 + 8))(v21, v18);
}

uint64_t sub_27441CC60@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void (*a4)(uint64_t)@<X3>, uint64_t a8@<X8>)
{
  MEMORY[0x28223BE20](a1);
  *(a8 + 64) = 0;
  *(a8 + 72) = [objc_opt_self() clearColor];
  v12 = sub_2744342DC();
  a4(v12);
  v13 = sub_27463AE9C();

  result = sub_27440CB1C(a3, &qword_28094A4B0, &unk_27465FF40);
  *a8 = v13;
  *(a8 + 48) = a1;
  *(a8 + 56) = a2;
  return result;
}

uint64_t sub_27441CD94(char *a1, uint64_t (*a2)(uint64_t, char *))
{
  v4 = *a1;
  sub_27463AF4C();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  return a2(v4, &a1[*(TupleTypeMetadata2 + 48)]);
}

uint64_t sub_27441CE20@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v53 = a1;
  v54 = a8;
  v51 = a6;
  v52 = a7;
  v49 = a5;
  v46 = a3;
  v59 = a2;
  v55 = a9;
  v50 = a13;
  v48 = a12;
  v47 = a11;
  v14 = sub_274639EFC();
  v15 = sub_274433D44(&qword_28094A6B8);
  v58 = a4;
  swift_getOpaqueTypeMetadata2();
  sub_27463A29C();
  sub_27463965C();
  sub_27463965C();
  sub_27463965C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280951400, &unk_2746528C0);
  v57 = sub_27463965C();
  sub_27463965C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094A760, &qword_274649558);
  v56 = sub_27463965C();
  v74 = a4;
  v75 = v14;
  v76 = a10;
  v77 = v15;
  v39[0] = a10;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v96 = sub_274433D44(&qword_28094A6C0);
  v16 = MEMORY[0x277CDFAD8];
  WitnessTable = swift_getWitnessTable();
  v18 = MEMORY[0x277CDF918];
  v93 = WitnessTable;
  v94 = MEMORY[0x277CDF918];
  v91 = swift_getWitnessTable();
  v92 = MEMORY[0x277CDFC60];
  v89 = swift_getWitnessTable();
  v90 = sub_274434E04(&qword_28094A710);
  v87 = swift_getWitnessTable();
  v88 = v18;
  v45 = v16;
  v85 = swift_getWitnessTable();
  v86 = sub_274434E04(&unk_28094A768);
  v39[1] = swift_getWitnessTable();
  v19 = sub_27463AE6C();
  v20 = *(v19 - 8);
  v41 = v19;
  v42 = v20;
  MEMORY[0x28223BE20](v19);
  v57 = v39 - v21;
  v22 = sub_27463965C();
  v23 = *(v22 - 8);
  v43 = v22;
  v44 = v23;
  MEMORY[0x28223BE20](v22);
  v40 = v39 - v24;
  v25 = v46;
  v60 = v59;
  v61 = v46;
  v26 = v48;
  v27 = v49;
  v62 = v58;
  v63 = v49;
  v29 = v51;
  v28 = v52;
  v64 = v51;
  v65 = v52;
  v30 = v54;
  v66 = v54;
  v67 = a10;
  v31 = v47;
  v68 = v47;
  v69 = v48;
  v32 = v50;
  v70 = v50;
  v71 = v53;
  sub_274639C5C();
  sub_27463AE5C();
  v74 = v59;
  v75 = v25;
  v76 = v58;
  v77 = v27;
  v78 = v29;
  v79 = v28;
  v80 = v30;
  v81 = v39[0];
  v82 = v31;
  v83 = v26;
  v84 = v32;
  type metadata accessor for ListParameterListContentView(0, &v74);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094A490, &qword_274649180);
  sub_2746392AC();
  v37 = v41;
  v38 = swift_getWitnessTable();
  sub_27457574C(v37);
  v33 = v40;
  v34 = v57;
  sub_27463A90C();
  (*(v42 + 8))(v34, v37);
  v74 = sub_27441AEE4();
  v72 = v38;
  v73 = MEMORY[0x277CDFC60];
  v35 = v43;
  swift_getWitnessTable();
  sub_27463A32C();
  sub_27463A65C();

  return (*(v44 + 8))(v33, v35);
}

uint64_t sub_27441D420@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>, uint64_t a9, __int128 a10, uint64_t a11)
{
  v46 = a6;
  v44 = a5;
  v43 = a4;
  *(&v39 + 1) = a2;
  *&v39 = a1;
  v55 = a8;
  v42 = a10;
  v41 = sub_274639EFC();
  v40 = sub_274433D44(&qword_28094A6B8);
  *&v69 = a3;
  *(&v69 + 1) = v41;
  *&v70 = a9;
  *(&v70 + 1) = v40;
  v38[1] = MEMORY[0x277CDE668];
  swift_getOpaqueTypeMetadata2();
  sub_27463A29C();
  v45 = sub_27463965C();
  v48 = sub_27463965C();
  v13 = sub_27463965C();
  v50 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v15 = v38 - v14;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280951400, &unk_2746528C0);
  v16 = sub_27463965C();
  v51 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v38[0] = v38 - v17;
  v18 = sub_27463965C();
  v53 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v47 = v38 - v19;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094A760, &qword_274649558);
  v20 = sub_27463965C();
  v54 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v49 = v38 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v52 = v38 - v23;
  v69 = v39;
  *&v70 = a3;
  *(&v70 + 1) = v43;
  v71 = v44;
  v72 = v46;
  v73 = a7;
  v74 = a9;
  v75 = v42;
  v76 = a11;
  v24 = type metadata accessor for ListParameterListContentView(0, &v69);
  sub_27441B458(v24, v15);
  v68 = sub_27441AEE4();
  *&v69 = a3;
  *(&v69 + 1) = v41;
  *&v70 = a9;
  *(&v70 + 1) = v40;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v26 = sub_274433D44(&qword_28094A6C0);
  v66 = OpaqueTypeConformance2;
  v67 = v26;
  WitnessTable = swift_getWitnessTable();
  v65 = MEMORY[0x277CDF918];
  v62 = swift_getWitnessTable();
  v63 = MEMORY[0x277CDFC60];
  v27 = swift_getWitnessTable();
  sub_27463A32C();
  v28 = v38[0];
  sub_27463A65C();

  (*(v50 + 8))(v15, v13);
  v29 = sub_274434E04(&qword_28094A710);
  v60 = v27;
  v61 = v29;
  v30 = swift_getWitnessTable();
  v31 = v47;
  sub_27463A9EC();
  (*(v51 + 8))(v28, v16);
  swift_getKeyPath();
  LOBYTE(v71) = 0;
  v69 = 0u;
  v70 = 0u;
  v58 = v30;
  v59 = MEMORY[0x277CDF918];
  v32 = swift_getWitnessTable();
  v33 = v49;
  sub_27463A6CC();

  (*(v53 + 8))(v31, v18);
  v34 = sub_274434E04(&unk_28094A768);
  v56 = v32;
  v57 = v34;
  swift_getWitnessTable();
  v35 = v52;
  sub_2744E9688();
  v36 = *(v54 + 8);
  v36(v33, v20);
  sub_2744E9688();
  return (v36)(v35, v20);
}

uint64_t sub_27441DB6C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v129 = a8;
  v127 = a7;
  v16 = a6;
  v109 = a6;
  v118 = a4;
  v117 = a3;
  v113 = a1;
  v122 = a9;
  v128 = a13;
  v126 = a12;
  v125 = a11;
  v124 = a10;
  v121 = sub_274639AEC();
  v120 = *(v121 - 8);
  MEMORY[0x28223BE20](v121);
  v119 = &v77[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v123 = sub_274639F1C();
  v116 = *(v123 - 8);
  MEMORY[0x28223BE20](v123);
  v112 = &v77[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094A4A0, &unk_27464D850);
  MEMORY[0x28223BE20](v21 - 8);
  v105 = &v77[-v22];
  v110 = a5;
  v114 = *(a5 + 80);
  v115 = *(a5 + 88);
  v142 = v114;
  v143 = a5;
  v144 = v16;
  v145 = a7;
  v146 = a8;
  v147 = a10;
  v148 = v115;
  v149 = a11;
  v150 = a12;
  v151 = a13;
  v152 = a14;
  v83 = a14;
  v23 = type metadata accessor for ListParameterListContentView(0, &v142);
  v111 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v107 = &v77[-v24];
  WitnessTable = swift_getWitnessTable();
  v103 = v23;
  v26 = v123;
  v142 = v23;
  v143 = v123;
  v144 = WitnessTable;
  v145 = MEMORY[0x277CDE0D0];
  v27 = WitnessTable;
  v104 = WitnessTable;
  v28 = MEMORY[0x277CDE0D0];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v108 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v102 = &v77[-v30];
  v142 = v23;
  v143 = v26;
  v144 = v27;
  v145 = v28;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v32 = sub_274412BBC();
  v97 = OpaqueTypeMetadata2;
  v142 = OpaqueTypeMetadata2;
  v143 = MEMORY[0x277D837D0];
  v33 = MEMORY[0x277D837D0];
  v144 = OpaqueTypeConformance2;
  v145 = v32;
  v99 = OpaqueTypeConformance2;
  v34 = v32;
  v98 = v32;
  v35 = swift_getOpaqueTypeMetadata2();
  v106 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v101 = &v77[-v36];
  v37 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_28094A6F0, &unk_27464FCC0);
  v142 = OpaqueTypeMetadata2;
  v143 = v33;
  v144 = OpaqueTypeConformance2;
  v145 = v34;
  v38 = swift_getOpaqueTypeConformance2();
  v39 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_28094D100, &qword_274649520);
  v40 = sub_274434E04(&qword_28094A700);
  v142 = v39;
  v143 = v40;
  v41 = swift_getOpaqueTypeConformance2();
  v87 = v35;
  v142 = v35;
  v143 = v37;
  v90 = v37;
  v89 = v38;
  v144 = v38;
  v145 = v41;
  v42 = v41;
  v88 = v41;
  v43 = swift_getOpaqueTypeMetadata2();
  v93 = v43;
  v100 = *(v43 - 8);
  MEMORY[0x28223BE20](v43);
  v86 = &v77[-v44];
  v142 = v35;
  v143 = v37;
  v144 = v38;
  v145 = v42;
  v92 = swift_getOpaqueTypeConformance2();
  v142 = v43;
  v143 = v92;
  v94 = MEMORY[0x277CDED18];
  v95 = swift_getOpaqueTypeMetadata2();
  v96 = *(v95 - 8);
  MEMORY[0x28223BE20](v95);
  v85 = &v77[-((v45 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v46);
  v91 = &v77[-v47];
  v84 = a2;
  v48 = *(a2 + 24);
  v82 = *(a2 + 16);
  v49 = *(a2 + 40);
  v81 = *(a2 + 32);
  v50 = *(a2 + 56);
  v80 = *(a2 + 48);
  v51 = *(a2 + 72);
  v79 = *(a2 + 64);
  v78 = *(a2 + 80);
  LOBYTE(v35) = *(a2 + 81);
  LOBYTE(v16) = *(a2 + 82);
  v52 = v105;
  sub_27441E720(v105);
  v53 = v113;

  *(&v76 + 1) = v128;
  *&v76 = v126;
  v54 = v109;
  v55 = v110;
  v75 = v16;
  v56 = v107;
  sub_27441E780(v82, v48, v81, v49, v80, v50, v79, v107, v51, v78, v35, v75, 0, v52, v110, v109, v127, v129, v124, v125, v76, a14);
  v57 = v112;
  sub_274639F0C();
  v58 = v102;
  v59 = v103;
  v60 = v123;
  sub_27463AAAC();
  (*(v116 + 8))(v57, v60);
  (*(v111 + 8))(v56, v59);
  v142 = v117;
  v143 = v118;
  v61 = v101;
  v62 = v97;
  sub_27463A79C();
  (*(v108 + 8))(v58, v62);
  v130 = v114;
  v131 = v55;
  v132 = v54;
  v133 = v127;
  v134 = v129;
  v135 = v124;
  v136 = v115;
  v137 = v125;
  v138 = v126;
  v139 = v128;
  v140 = v83;
  v141 = v84;
  v63 = v86;
  v64 = v87;
  sub_27463AA0C();
  (*(v106 + 8))(v61, v64);
  v65 = v120;
  v66 = v119;
  v67 = v121;
  (*(v120 + 104))(v119, *MEMORY[0x277CDDDC0], v121);
  v68 = v85;
  v69 = v93;
  v70 = v92;
  sub_27463A8AC();
  (*(v65 + 8))(v66, v67);
  (*(v100 + 8))(v63, v69);
  v142 = v69;
  v143 = v70;
  swift_getOpaqueTypeConformance2();
  v71 = v91;
  v72 = v95;
  sub_2744E9688();
  v73 = *(v96 + 8);
  v73(v68, v72);
  sub_2744E9688();
  return (v73)(v71, v72);
}

uint64_t sub_27441E720@<X0>(uint64_t *a1@<X8>)
{
  *a1 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094BC60, &qword_2746515D0);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_27441E780@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>, uint64_t a9, char a10, char a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, __int128 a21, uint64_t a22)
{
  *a8 = sub_2744153F4();
  *(a8 + 8) = v26;
  *(a8 + 16) = a1;
  *(a8 + 24) = a2;
  *(a8 + 32) = a3;
  *(a8 + 40) = a4;
  *(a8 + 48) = a5;
  *(a8 + 56) = a6;
  *(a8 + 64) = a7;
  *(a8 + 72) = a9;
  *(a8 + 80) = a10;
  *(a8 + 81) = a11;
  *(a8 + 82) = a12;
  *(a8 + 83) = a13;
  v27 = swift_allocObject();
  v29 = *(a15 + 80);
  v28 = *(a15 + 88);
  *(v27 + 16) = v29;
  *(v27 + 24) = a15;
  *(v27 + 32) = a16;
  *(v27 + 40) = a17;
  *(v27 + 48) = a18;
  *(v27 + 56) = a19;
  *(v27 + 64) = v28;
  *(v27 + 72) = a20;
  *(v27 + 80) = a21;
  *(v27 + 96) = a22;
  *(&v35 + 1) = a20;
  *&v35 = v28;
  *(a8 + 88) = sub_274415E5C(sub_2744305D0, v27, v29, a15, a16, a17, a18, a19, v35, a21, a22);
  *(a8 + 96) = v30;
  *(a8 + 104) = v31 & 1;
  *(a8 + 112) = swift_getKeyPath();
  *(a8 + 152) = 0;
  *(a8 + 160) = swift_getKeyPath();
  *(a8 + 168) = 0;
  v40[0] = v29;
  v40[1] = a15;
  v40[2] = a16;
  v40[3] = a17;
  v40[4] = a18;
  v40[5] = a19;
  v40[6] = v28;
  v40[7] = a20;
  v41 = a21;
  v42 = a22;
  v32 = type metadata accessor for ListParameterListContentView(0, v40);
  sub_274433B6C();
  v33 = a8 + *(v32 + 156);
  *v33 = swift_getKeyPath();
  *(v33 + 8) = 0;
  v40[0] = 0x4046000000000000;
  sub_274430610();
  return sub_27463929C();
}

uint64_t sub_27441E9BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, __int128 a10, uint64_t a11, uint64_t a12)
{
  v26 = a7;
  v27 = a8;
  v24 = a6;
  v25 = a1;
  v28 = a9;
  v23 = a10;
  v16 = sub_274639EBC();
  MEMORY[0x28223BE20](v16 - 8);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094D100, &qword_274649520);
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = &v23 - v19;
  sub_274639EAC();
  v29 = a2;
  v30 = a3;
  v31 = a4;
  v32 = a5;
  v33 = v24;
  v34 = v26;
  v35 = v27;
  v36 = v23;
  v37 = a11;
  v38 = a12;
  v39 = v25;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2809493A0, &unk_274646750);
  sub_274434E04(&unk_2809493B0);
  sub_27463925C();
  v21 = sub_274434E04(&qword_28094A700);
  MEMORY[0x277C56680](v20, v17, v21);
  return (*(v18 + 8))(v20, v17);
}

uint64_t sub_27441EBF8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v33 = a7;
  v34 = a8;
  v35 = a9;
  v36[0] = a2;
  v31 = a13;
  v32 = a6;
  v29 = a12;
  v30 = a5;
  v36[1] = a3;
  v36[2] = a4;
  v36[3] = a5;
  v36[4] = a6;
  v36[5] = a7;
  v36[6] = a8;
  v36[7] = a10;
  v36[8] = a11;
  v36[9] = a12;
  v36[10] = a13;
  v17 = type metadata accessor for ListParameterListContentView(0, v36);
  v18 = *(v17 - 8);
  v19 = MEMORY[0x28223BE20](v17);
  v21 = &v28 - v20;
  (*(v18 + 16))(&v28 - v20, a1, v17, v19);
  v22 = (*(v18 + 80) + 104) & ~*(v18 + 80);
  v23 = swift_allocObject();
  *(v23 + 2) = a2;
  *(v23 + 3) = a3;
  v24 = v30;
  *(v23 + 4) = a4;
  *(v23 + 5) = v24;
  v25 = v33;
  *(v23 + 6) = v32;
  *(v23 + 7) = v25;
  *(v23 + 8) = v34;
  *(v23 + 9) = a10;
  v26 = v29;
  *(v23 + 10) = a11;
  *(v23 + 11) = v26;
  *(v23 + 12) = v31;
  (*(v18 + 32))(&v23[v22], v21, v17);
  return sub_27463AD5C();
}

uint64_t sub_27441EDC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, uint64_t a10, uint64_t a11)
{
  v27 = a6;
  v28 = a7;
  v25 = a5;
  v26 = a11;
  v24 = a9;
  v15 = type metadata accessor for ListParameterOutlineModalEditor(255, a2, a8, a4);
  v16 = sub_27463C0AC();
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v24 - v17;
  v29[0] = a2;
  v29[1] = a3;
  v29[2] = a4;
  v29[3] = v25;
  v29[4] = v27;
  v29[5] = v28;
  v29[6] = a8;
  v30 = a9;
  v31 = a10;
  v32 = a11;
  type metadata accessor for ListParameterListContentView.Model(0, v29);
  swift_getWitnessTable();
  sub_27463920C();
  __swift_storeEnumTagSinglePayload(v18, 1, 1, v15);
  sub_274415718(v18, v22, v19, v20, v21);
}

uint64_t sub_27441EF24@<X0>(uint64_t a1@<X8>)
{
  sub_27463B70C("Done", 4);
  if (qword_2809492C0 != -1)
  {
    swift_once();
  }

  v2 = qword_28094BB00;
  v3 = sub_27463B66C();
  v4 = sub_27463B66C();

  v5 = [v2 localizedStringForKey:v3 value:v4 table:0];

  sub_27463B6AC();
  sub_274412BBC();
  result = sub_27463A53C();
  *a1 = result;
  *(a1 + 8) = v7;
  *(a1 + 16) = v8 & 1;
  *(a1 + 24) = v9;
  return result;
}

uint64_t sub_27441F044@<X0>(uint64_t a1@<X0>, void (*a2)(void, void)@<X1>, uint64_t a3@<X2>, char *a4@<X3>, char *a5@<X4>, uint64_t *a6@<X5>, char *a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, void (*a13)(void, void), void (*a14)(void, void), uint64_t a15)
{
  v94 = a6;
  v91 = a5;
  v89 = a4;
  v105 = a3;
  v106 = a2;
  v99 = a9;
  v111 = a15;
  v104 = a14;
  v107 = a10;
  v87 = a11;
  v95 = *(a10 - 8);
  v100 = a13;
  v86 = a12;
  MEMORY[0x28223BE20](a1);
  v98 = &v82 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v97 = &v82 - v20;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094A6B0, &qword_2746494F8);
  v92 = sub_27463965C();
  v96 = sub_274639DEC();
  v93 = *(v96 - 8);
  MEMORY[0x28223BE20](v96);
  v110 = &v82 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v109 = &v82 - v23;
  v85 = sub_274639FEC();
  v84 = *(v85 - 8);
  MEMORY[0x28223BE20](v85);
  v82 = &v82 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094BC50, &qword_2746517C0);
  v26 = v25 - 8;
  MEMORY[0x28223BE20](v25);
  v28 = &v82 - v27;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094A610, &qword_2746493F0);
  MEMORY[0x28223BE20](v29 - 8);
  v83 = &v82 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31);
  v33 = &v82 - v32;
  MEMORY[0x28223BE20](v34);
  v36 = &v82 - v35;
  WitnessTable = *(a7 - 1);
  MEMORY[0x28223BE20](v37);
  v39 = &v82 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v103 = sub_27463965C();
  v101 = *(v103 - 8);
  MEMORY[0x28223BE20](v103);
  v102 = &v82 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v41);
  v88 = &v82 - v42;
  MEMORY[0x28223BE20](v43);
  v108 = &v82 - v44;
  v45 = *(a1 + 16);
  v125 = v89;
  v126 = v91;
  v127 = v94;
  v128 = a7;
  v91 = a7;
  v129 = a8;
  v130 = v107;
  v131 = v87;
  v132 = v86;
  v133 = v100;
  v134 = v104;
  v135 = v111;
  v46 = type metadata accessor for ListParameterListContentView(0, &v125);
  v47 = *(a1 + 8);
  v89 = v39;
  v48 = v84;
  v45(v106, v47, v105);

  v94 = a1;
  v49 = v85;
  sub_274415FA0();
  (*(v48 + 104))(v33, *MEMORY[0x277CE0558], v49);
  __swift_storeEnumTagSinglePayload(v33, 0, 1, v49);
  v50 = *(v26 + 56);
  sub_2744342DC();
  sub_2744342DC();
  if (__swift_getEnumTagSinglePayload(v28, 1, v49) != 1)
  {
    v51 = v83;
    sub_2744342DC();
    if (__swift_getEnumTagSinglePayload(&v28[v50], 1, v49) != 1)
    {
      v52 = v82;
      (*(v48 + 32))(v82, &v28[v50], v49);
      sub_274433D44(&unk_28094BC90);
      LODWORD(v87) = sub_27463B5BC();
      v53 = *(v48 + 8);
      v53(v52, v49);
      sub_27440CB1C(v33, &qword_28094A610, &qword_2746493F0);
      sub_27440CB1C(v36, &qword_28094A610, &qword_2746493F0);
      v53(v51, v49);
      sub_27440CB1C(v28, &qword_28094A610, &qword_2746493F0);
      goto LABEL_8;
    }

    sub_27440CB1C(v33, &qword_28094A610, &qword_2746493F0);
    sub_27440CB1C(v36, &qword_28094A610, &qword_2746493F0);
    (*(v48 + 8))(v51, v49);
    goto LABEL_6;
  }

  sub_27440CB1C(v33, &qword_28094A610, &qword_2746493F0);
  sub_27440CB1C(v36, &qword_28094A610, &qword_2746493F0);
  if (__swift_getEnumTagSinglePayload(&v28[v50], 1, v49) != 1)
  {
LABEL_6:
    sub_27440CB1C(v28, &unk_28094BC50, &qword_2746517C0);
    goto LABEL_8;
  }

  sub_27440CB1C(v28, &qword_28094A610, &qword_2746493F0);
LABEL_8:
  sub_27463B0DC();
  v54 = v88;
  v55 = v91;
  v56 = v100;
  v57 = v89;
  sub_27463A8FC();
  (*(WitnessTable + 8))(v57, v55);
  v123 = v56;
  v124 = MEMORY[0x277CDF678];
  v58 = v103;
  WitnessTable = swift_getWitnessTable();
  sub_2744E9688();
  v59 = *(v101 + 8);
  v91 = (v101 + 8);
  v100 = v59;
  v59(v54, v58);
  v60 = v110;
  v61 = v106;
  v62 = v105;
  v63 = v94;
  sub_27441FCF4(v106, v105, v46, v110);
  v64 = sub_274434E04(&unk_28094A740);
  v65 = v104;
  v121 = v104;
  v122 = v64;
  v119 = swift_getWitnessTable();
  v120 = v65;
  v66 = v96;
  v92 = swift_getWitnessTable();
  sub_2744E9688();
  v67 = v93;
  v104 = *(v93 + 8);
  v104(v60, v66);
  v68 = v63[6];
  v69 = v63[1];
  v70 = v98;
  v68(v61, v69, v62);

  v71 = v97;
  v72 = v107;
  sub_2744E9688();
  v73 = v95;
  v106 = *(v95 + 8);
  v106(v70, v72);
  v74 = v102;
  v75 = v103;
  (*(v101 + 16))(v102, v108, v103);
  v125 = v74;
  v76 = v110;
  (*(v67 + 16))(v110, v109, v66);
  v117 = 0;
  v118 = 0;
  v126 = v76;
  v127 = &v117;
  (*(v73 + 16))(v70, v71, v72);
  v128 = v70;
  v77 = v75;
  v116[0] = v75;
  v116[1] = v66;
  v116[2] = MEMORY[0x277CE1180];
  v116[3] = v72;
  v112 = WitnessTable;
  v113 = v92;
  v114 = MEMORY[0x277CE1170];
  v115 = v111;
  sub_274575750(&v125, 4, v116);
  v78 = v106;
  v106(v71, v72);
  v79 = v104;
  v104(v109, v66);
  v80 = v100;
  v100(v108, v77);
  v78(v70, v72);
  v79(v110, v66);
  return v80(v102, v77);
}

uint64_t sub_27441FCF4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4;
  *&v74 = a1;
  v79 = a4;
  v66 = *(a3 + 16);
  v69 = sub_27463AF4C();
  v68 = *(v69 - 8);
  v65 = *(v68 + 64);
  MEMORY[0x28223BE20](v69);
  v67 = &v62 - v8;
  v9 = *(a3 - 8);
  MEMORY[0x28223BE20](v10);
  v64 = v11;
  v12 = &v62 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(v13 + 56);
  v75 = *(v14 - 8);
  MEMORY[0x28223BE20](v15);
  v17 = &v62 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v81 = &v62 - v19;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094A6B0, &qword_2746494F8);
  v20 = sub_27463965C();
  v72 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v71 = &v62 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v70 = &v62 - v23;
  v73 = v24;
  v80 = v14;
  v25 = sub_274639DEC();
  v77 = *(v25 - 8);
  v78 = v25;
  MEMORY[0x28223BE20](v25);
  v76 = &v62 - v26;
  v27 = *(v5 + 8);
  v28 = *((*MEMORY[0x277D85000] & *v27) + 0xD0);
  v29 = v27;
  v30 = v28(a2);

  if (v30)
  {

    v31 = *(v5 + 32);
    v32 = v29;
    v33 = v74;
    v63 = a2;
    v31(v74, v32, a2);

    (*(v9 + 16))(v12, v5, a3);
    v34 = v68;
    v35 = v67;
    v36 = v33;
    v37 = v69;
    (*(v68 + 16))(v67, v36, v69);
    v38 = (*(v9 + 80) + 104) & ~*(v9 + 80);
    v39 = (v64 + v38 + *(v34 + 80)) & ~*(v34 + 80);
    v40 = (v65 + v39 + 7) & 0xFFFFFFFFFFFFFFF8;
    v41 = swift_allocObject();
    *(v41 + 16) = v66;
    *(v41 + 24) = *(a3 + 24);
    v42 = v80;
    *(v41 + 40) = *(a3 + 40);
    *(v41 + 48) = v42;
    *(v41 + 56) = *(a3 + 56);
    *(v41 + 72) = *(a3 + 72);
    v74 = *(a3 + 88);
    *(v41 + 88) = v74;
    (*(v9 + 32))(v41 + v38, v12, a3);
    (*(v34 + 32))(v41 + v39, v35, v37);
    *(v41 + v40) = v63;
    type metadata accessor for CollectionPropertyListItemConfiguration();
    v43 = swift_allocObject();
    *(v43 + 16) = sub_274431FDC;
    *(v43 + 24) = v41;
    sub_274433D44(&unk_28094A750);
    v44 = v74;
    v45 = v71;
    v46 = v80;
    v47 = v81;
    sub_27463A7AC();

    (*(v75 + 8))(v47, v46);
    v48 = sub_274434E04(&unk_28094A740);
    v82 = v74;
    v83 = v48;
    v49 = v73;
    swift_getWitnessTable();
    v50 = v70;
    sub_2744E9688();
    v51 = *(v72 + 8);
    v51(v45, v49);
    sub_2744E9688();
    v52 = v76;
    sub_27456E7CC();
    v51(v45, v49);
    v51(v50, v49);
  }

  else
  {
    v53 = *(v5 + 32);
    v54 = v29;
    v53(v74, v54, a2);

    v44 = *(a3 + 88);
    v55 = v80;
    v56 = v81;
    sub_2744E9688();
    v57 = *(v75 + 8);
    v57(v17, v55);
    sub_2744E9688();
    v58 = sub_274434E04(&unk_28094A740);
    v88 = v44;
    v89 = v58;
    swift_getWitnessTable();
    v52 = v76;
    sub_27456E878();
    v57(v17, v55);
    v57(v56, v55);
  }

  v59 = sub_274434E04(&unk_28094A740);
  v86 = v44;
  v87 = v59;
  WitnessTable = swift_getWitnessTable();
  v85 = v44;
  v60 = v78;
  swift_getWitnessTable();
  sub_2744E9688();
  return (*(v77 + 8))(v52, v60);
}

id sub_274420558(void *a1)
{
  v1 = [a1 userInterfaceStyle];
  v2 = objc_opt_self();
  v3 = &selRef_systemGray5Color;
  if (v1 != 2)
  {
    v3 = &selRef_whiteColor;
  }

  v4 = [v2 *v3];

  return v4;
}

uint64_t sub_2744205C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, __int128 a11, uint64_t a12, uint64_t a13)
{
  v49 = a7;
  v50 = a8;
  v47 = a13;
  v48 = a6;
  v45 = a12;
  v46 = a5;
  v44 = a11;
  v51 = *(a4 - 8);
  v52 = a3;
  MEMORY[0x28223BE20](a1);
  v15 = &v42 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x28223BE20](AssociatedTypeWitness - 8);
  v18 = (&v42 - v17);
  v43 = type metadata accessor for ListParameterOutlineModalEditor(255, a4, a10, v19);
  v20 = sub_27463C0AC();
  MEMORY[0x28223BE20](v20 - 8);
  v42 = &v42 - v21;
  v53[0] = a4;
  v53[1] = v46;
  v53[2] = v48;
  v53[3] = v49;
  v53[4] = v50;
  v53[5] = a9;
  v53[6] = a10;
  v54 = v44;
  v55 = v45;
  v56 = v47;
  type metadata accessor for ListParameterListContentView.Model(0, v53);
  swift_getWitnessTable();
  v22 = v18;
  sub_27463920C();
  v23 = sub_27463AF4C();
  sub_27463AF3C();
  MEMORY[0x277C575F0](v23);
  v24 = (*(a10 + 24))(a4, a10);
  v26 = v25;
  v51[1](v15, a4);
  if (!v26)
  {
    v27 = v52;
    if (__OFADD__(v52, 1))
    {
      __break(1u);
    }

    else
    {
      v51 = v18;
      sub_27463B70C("LIST_PARAMETER_ITEM_INDEX", 25);
      sub_27463B70C("Item %ld", v42);
      if (qword_2809492C0 == -1)
      {
LABEL_5:
        v28 = qword_28094BB00;
        v29 = sub_27463B66C();

        v30 = sub_27463B66C();

        v31 = [v28 localizedStringForKey:v29 value:v30 table:0];

        sub_27463B6AC();
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280949E90, &qword_274648630);
        v32 = swift_allocObject();
        v33 = MEMORY[0x277D83B88];
        *(v32 + 16) = xmmword_274648570;
        v34 = MEMORY[0x277D83C10];
        *(v32 + 56) = v33;
        *(v32 + 64) = v34;
        *(v32 + 32) = v27 + 1;
        v24 = sub_27463B67C();
        v26 = v35;

        v22 = v51;
        goto LABEL_6;
      }
    }

    swift_once();
    goto LABEL_5;
  }

  v27 = v52;
LABEL_6:
  v36 = v42;
  sub_27441532C(v22, v24, v26, v27, a4, a10, v42);
  __swift_storeEnumTagSinglePayload(v36, 0, 1, v43);
  sub_274415718(v36, v40, v37, v38, v39);
}

uint64_t sub_274420A14(uint64_t a1)
{
  OUTLINED_FUNCTION_91();
  v2 = *(v1 + 112);
  v4 = v3;
  v2();

  sub_27463B92C();
  OUTLINED_FUNCTION_6_0();
  swift_getWitnessTable();
  sub_27463BABC();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094A498, &qword_274649190);
  return sub_27463BB7C() & 1;
}

uint64_t sub_274420B0C(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  OUTLINED_FUNCTION_4_0();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_3_0();
  v8 = v7 - v6;
  if (*(v2 + 82) == 1)
  {
    OUTLINED_FUNCTION_91();
    v10 = *(v9 + 112);
    v12 = v11;
    v10();

    OUTLINED_FUNCTION_97();

    v13 = v8;
    (*(*(a2 + 64) + 48))(v4);
    v14 = OUTLINED_FUNCTION_88();
    v15(v14);
  }

  else
  {
    v13 = 0;
  }

  return v13 & 1;
}

void sub_274420C44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_24();
  a19 = v21;
  a20 = v22;
  v24 = v23;
  v26 = v25;
  OUTLINED_FUNCTION_4_0();
  v28 = v27;
  v30 = *(v29 + 64);
  MEMORY[0x28223BE20](v31);
  v32 = &a9 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094A480, &qword_27464D1D0);
  OUTLINED_FUNCTION_53_0(v33);
  OUTLINED_FUNCTION_60_0();
  MEMORY[0x28223BE20](v34);
  v36 = &a9 - v35;
  v37 = sub_27463B9FC();
  __swift_storeEnumTagSinglePayload(v36, 1, 1, v37);
  (*(v28 + 16))(v32, v20, v24);
  sub_27463B9CC();
  v38 = sub_27463B9BC();
  v39 = (*(v28 + 80) + 120) & ~*(v28 + 80);
  v40 = (v30 + v39 + 7) & 0xFFFFFFFFFFFFFFF8;
  v41 = swift_allocObject();
  v42 = MEMORY[0x277D85700];
  *(v41 + 16) = v38;
  *(v41 + 24) = v42;
  v43 = *(v24 + 32);
  *(v41 + 32) = *(v24 + 16);
  *(v41 + 48) = v43;
  v44 = *(v24 + 64);
  *(v41 + 64) = *(v24 + 48);
  *(v41 + 80) = v44;
  *(v41 + 96) = *(v24 + 80);
  *(v41 + 112) = *(v24 + 96);
  (*(v28 + 32))(v41 + v39, v32, v24);
  *(v41 + v40) = v26;
  sub_27451222C();

  OUTLINED_FUNCTION_23();
}

uint64_t sub_274420E1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 200) = v16;
  *(v8 + 208) = v17;
  *(v8 + 184) = v15;
  *(v8 + 168) = v14;
  *(v8 + 152) = v13;
  *(v8 + 136) = a7;
  *(v8 + 144) = a8;
  *(v8 + 120) = a5;
  *(v8 + 128) = a6;
  *(v8 + 104) = a1;
  *(v8 + 112) = a4;
  sub_27463B9CC();
  *(v8 + 216) = sub_27463B9BC();
  v10 = sub_27463B96C();
  *(v8 + 224) = v10;
  *(v8 + 232) = v9;

  return MEMORY[0x2822009F8](sub_274420EDC, v10, v9);
}

uint64_t sub_274420EDC()
{
  v1 = *(v0 + 208);
  v2 = *(v0 + 112);
  v3 = *(v0 + 144);
  *(v0 + 16) = *(v0 + 128);
  v4 = *(v0 + 160);
  v5 = *(v0 + 176);
  *(v0 + 32) = v3;
  *(v0 + 48) = v4;
  v6 = *(v0 + 192);
  *(v0 + 64) = v5;
  *(v0 + 80) = v6;
  *(v0 + 96) = v1;
  type metadata accessor for ListParameterListContentView(0, v0 + 16);
  *(v0 + 240) = *(v2 + 8);
  OUTLINED_FUNCTION_91();
  v8 = *(v7 + 176);
  v9;
  v13 = (v8 + *v8);
  v10 = swift_task_alloc();
  *(v0 + 248) = v10;
  *v10 = v0;
  v10[1] = sub_274421048;
  v11 = *(v0 + 120);

  return v13(v11);
}

uint64_t sub_274421048()
{
  v1 = *v0;
  OUTLINED_FUNCTION_70();
  *v3 = v2;
  v4 = v1[30];
  v5 = *v0;
  OUTLINED_FUNCTION_70();
  *v6 = v5;
  *(v8 + 256) = v7;

  v9 = v1[29];
  v10 = v1[28];

  return MEMORY[0x2822009F8](sub_274421188, v10, v9);
}

uint64_t sub_274421188()
{
  OUTLINED_FUNCTION_79();
  v1 = *(v0 + 256);
  v2 = *(v0 + 104);

  *v2 = v1;
  OUTLINED_FUNCTION_92();

  return v3();
}

uint64_t sub_2744211EC(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  OUTLINED_FUNCTION_4_0();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_3_0();
  v8 = v7 - v6;
  if (*(v2 + 81) == 1)
  {
    OUTLINED_FUNCTION_91();
    v10 = *(v9 + 112);
    v12 = v11;
    v10();

    OUTLINED_FUNCTION_97();

    v13 = v8;
    (*(*(a2 + 64) + 56))(v4);
    v14 = OUTLINED_FUNCTION_88();
    v15(v14);
  }

  else
  {
    v13 = 0;
  }

  return v13 & 1;
}

void sub_274421324(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 8);
  if (a1 < a2 && (v6 = __OFADD__(a2, 1), ++a2, v6))
  {
    __break(1u);
  }

  else
  {
    v7 = v5;
    (*((*MEMORY[0x277D85000] & *v5) + 0xC8))(a1, a2);
  }
}

uint64_t sub_27442140C(uint64_t a1)
{
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_35_0();
  v2 = sub_27463C0AC();
  OUTLINED_FUNCTION_1();
  v4 = v3;
  OUTLINED_FUNCTION_60_0();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_75();
  OUTLINED_FUNCTION_65();
  v6();
  sub_2745C4778();
  return (*(v4 + 8))(a1, v2);
}

uint64_t sub_274421518(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_63_0();
  OUTLINED_FUNCTION_63_0();
  OUTLINED_FUNCTION_63_0();
  OUTLINED_FUNCTION_63_0();
  OUTLINED_FUNCTION_63_0();
  OUTLINED_FUNCTION_63_0();
  OUTLINED_FUNCTION_63_0();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_274638FAC();
}

void sub_274421658()
{
  OUTLINED_FUNCTION_24();
  v2 = v1;
  v3 = *v0;
  v4 = *v0;
  v5 = *(*v0 + 80);
  v6.i64[0] = v5;
  v19 = v6;
  v7 = *(v3 + 112);
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_35_0();
  v8 = sub_27463C0AC();
  OUTLINED_FUNCTION_1();
  v10 = v9;
  OUTLINED_FUNCTION_60_0();
  MEMORY[0x28223BE20](v11);
  v13 = &v17.i8[-v12];
  v26 = v7;
  v27 = *(v4 + 120);
  v17 = *(v4 + 88);
  v18 = v27;
  v14 = vzip1q_s64(v19, v17);
  v15 = *(v4 + 96);
  v24 = v14;
  v25 = v15;
  v14.i64[0] = *(v4 + 104);
  v19 = v14;
  swift_getKeyPath();
  v20 = v5;
  v21 = v17;
  *&v16 = v19.i64[0];
  *(&v16 + 1) = v7;
  v23 = v18;
  v22 = v16;
  swift_getKeyPath();
  (*(v10 + 16))(v13, v2, v8);

  sub_274638FBC();
  (*(v10 + 8))(v2, v8);
  OUTLINED_FUNCTION_23();
}

uint64_t sub_274421834()
{
  v1 = *(*v0 + 136);
  swift_getAssociatedTypeWitness();
  sub_27463C0AC();
  v2 = sub_274638FCC();
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v3(v0 + *(*v0 + 144), v2);
  return v0;
}

uint64_t sub_27442194C(uint64_t (*a1)(void))
{
  v1 = a1();

  return MEMORY[0x2821FE8D8](v1);
}

uint64_t sub_274421A10()
{
  v1 = *v0;
  v12[2] = *(*v0 + 112);
  v12[1] = v1[10];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v14 = AssociatedTypeWitness;
  sub_27463C0AC();
  v15 = sub_274638FCC();
  v3 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v5 = v12 - v4;
  MEMORY[0x28223BE20](v6);
  v8 = v12 - v7;
  v13 = v1[17];
  __swift_storeEnumTagSinglePayload(v12 - v7, 1, 1, AssociatedTypeWitness);
  v12[0] = v1[11];
  sub_27442140C(v8);
  v9 = *(v3 + 32);
  v10 = v15;
  v9(v0 + v13, v5, v15);
  v13 = *(*v0 + 144);
  __swift_storeEnumTagSinglePayload(v8, 1, 1, v14);
  sub_27442140C(v8);
  v9(v0 + v13, v5, v10);
  return v0;
}

uint64_t sub_274421CBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v10[0] = a3;
  v10[1] = a4;
  v10[2] = a5;
  v10[3] = a6;
  v10[4] = a7;
  v10[5] = a8;
  v10[6] = a9;
  type metadata accessor for StackList.StackListModel(0, v10);
  swift_getWitnessTable();
  return sub_2746391FC();
}

uint64_t sub_274421D48@<X0>(uint64_t a1@<X0>, uint64_t *a3@<X8>)
{
  v4 = *(a1 + 128);
  v5 = *(a1 + 96);
  v7[0] = *(a1 + 80);
  v7[1] = v5;
  v7[2] = *(a1 + 112);
  v8 = v4;
  type metadata accessor for StackList.StackListModel(0, v7);
  result = sub_274638EFC();
  *a3 = result;
  return result;
}

uint64_t sub_274421DAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8[0] = a1;
  v8[1] = a2;
  v8[2] = a3;
  v8[3] = a4;
  v8[4] = a5;
  v8[5] = a6;
  v8[6] = a7;
  type metadata accessor for StackList.StackListModel(0, v8);
  return sub_2744219BC();
}

uint64_t sub_274421DF4(uint64_t a1)
{
  v1 = *(a1 + 64);
  v2 = *(a1 + 32);
  v4[0] = *(a1 + 16);
  v4[1] = v2;
  v4[2] = *(a1 + 48);
  v5 = v1;
  type metadata accessor for StackList.StackListModel(0, v4);
  swift_getWitnessTable();
  return sub_27463921C();
}

uint64_t sub_274421E84@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v96 = a2;
  v76 = sub_274639ABC();
  v75 = *(v76 - 8);
  MEMORY[0x28223BE20](v76);
  v81 = &v73 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_274639F2C();
  MEMORY[0x28223BE20](v4 - 8);
  v82 = &v73 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 2);
  sub_27463AF4C();
  swift_getTupleTypeMetadata2();
  v7 = sub_27463B92C();
  v8 = *(a1 + 6);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v100 = *(a1 + 7);
  v111 = v6;
  v99 = *(a1 + 24);
  v86 = a1;
  v112 = v99;
  v113 = v8;
  v114 = v100;
  v101 = v8;
  type metadata accessor for StackListRow(255, &v111);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280951400, &unk_2746528C0);
  v10 = sub_27463965C();
  WitnessTable = swift_getWitnessTable();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v111 = v7;
  *&v112 = AssociatedTypeWitness;
  *(&v112 + 1) = v10;
  v113 = WitnessTable;
  v114 = AssociatedConformanceWitness;
  sub_27463AF9C();
  v98 = *(a1 + 5);
  sub_27463965C();
  v13 = v6;
  type metadata accessor for DismissDeleteConfirmationModifier(255, v6, v8, v14);
  sub_27463965C();
  sub_27463965C();
  sub_27463C0AC();
  swift_getTupleTypeMetadata2();
  v15 = sub_27463B19C();
  v16 = swift_getWitnessTable();
  v17 = sub_27463913C();
  v80 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v84 = &v73 - v18;
  v19 = sub_27463965C();
  v20 = swift_getWitnessTable();
  v109 = v20;
  v110 = MEMORY[0x277CDF918];
  v21 = swift_getWitnessTable();
  v87 = v17;
  v111 = v17;
  *&v112 = v19;
  v97 = v19;
  v95 = v20;
  *(&v112 + 1) = v20;
  v113 = v21;
  v94 = v21;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v79 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v78 = &v73 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v77 = &v73 - v25;
  MEMORY[0x28223BE20](v26);
  v28 = &v73 - v27;
  v89 = v15;
  v88 = v16;
  v29 = sub_27463AE6C();
  v83 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v31 = &v73 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v32);
  v34 = &v73 - v33;
  v92 = OpaqueTypeMetadata2;
  v93 = sub_274639DEC();
  v91 = *(v93 - 8);
  MEMORY[0x28223BE20](v93);
  v36 = &v73 - v35;
  v37 = v90;
  sub_2744C6ABC();
  v38 = v113;
  sub_27440CB1C(&v111, &unk_2809507C0, &qword_274649C60);
  v85 = &v73;
  v102 = v13;
  v103 = v99;
  v39 = *(v86 + 8);
  *&v40 = v100;
  *(&v40 + 1) = v39;
  *&v41 = v98;
  *(&v41 + 1) = v101;
  v104 = v41;
  v105 = v40;
  v106 = v37;
  sub_274639C5C();
  if (v38)
  {
    sub_27463AE5C();
    swift_getWitnessTable();
    sub_2744E9688();
    v42 = *(v83 + 8);
    v42(v31, v29);
    sub_2744E9688();
    v43 = v87;
    v101 = v34;
    v44 = v97;
    v111 = v87;
    *&v112 = v97;
    v45 = v95;
    v46 = v94;
    *(&v112 + 1) = v95;
    v113 = v94;
    swift_getOpaqueTypeConformance2();
    sub_27456E7CC();
    v42(v31, v29);
    v42(v101, v29);
    v47 = v43;
    v48 = v44;
    v49 = v45;
    v50 = v46;
  }

  else
  {
    v74 = v28;
    v83 = v29;
    v86 = v36;
    v51 = v81;
    v52 = v87;
    sub_274423E18();
    v53 = sub_27463912C();
    v54 = *(v37 + 168);
    if (*(v37 + 176) != 1)
    {

      sub_27463BC0C();
      v55 = sub_27463A2FC();
      sub_274638CEC();

      sub_274639AAC();
      swift_getAtKeyPath();
      sub_2743F45E8(v54, 0);
      v53 = (*(v75 + 8))(v51, v76);
    }

    v56 = v80;
    v57 = MEMORY[0x28223BE20](v53);
    v57.i64[0] = v13;
    *&v59 = vdupq_laneq_s64(v58, 1).u64[0];
    *(&v59 + 1) = v60;
    *(&v73 - 4) = vzip1q_s64(v57, v58);
    *(&v73 - 3) = v59;
    *(&v73 - 4) = v61;
    *(&v73 - 3) = v62;
    *(&v73 - 2) = v39;
    v63 = swift_checkMetadataState();
    v64 = v77;
    v47 = v52;
    v49 = v95;
    v50 = v94;
    v65 = v84;
    sub_27463A60C();
    (*(v56 + 8))(v65, v52);
    v111 = v52;
    *&v112 = v63;
    *(&v112 + 1) = v49;
    v113 = v50;
    swift_getOpaqueTypeConformance2();
    v66 = v92;
    sub_2744E9688();
    v67 = *(v79 + 8);
    v67(v64, v66);
    v68 = v78;
    sub_2744E9688();
    swift_getWitnessTable();
    v36 = v86;
    sub_27456E878();
    v67(v68, v66);
    v48 = v97;
    v67(v74, v66);
  }

  v69 = swift_getWitnessTable();
  v111 = v47;
  *&v112 = v48;
  *(&v112 + 1) = v49;
  v113 = v50;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v107 = v69;
  v108 = OpaqueTypeConformance2;
  v71 = v93;
  swift_getWitnessTable();
  sub_2744E9688();
  return (*(v91 + 8))(v36, v71);
}

uint64_t sub_274422A9C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v125 = a2;
  v4 = *(a1 + 16);
  v5 = *(a1 + 48);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_27463C0AC();
  v7 = sub_27463AF4C();
  MEMORY[0x28223BE20](v7 - 8);
  v110 = &v97 - v8;
  *(&v127 + 1) = v5;
  v10 = type metadata accessor for DismissDeleteConfirmationModifier(0, v4, v5, v9);
  v112 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v111 = &v97 - v11;
  v12 = sub_274639ABC();
  v98 = *(v12 - 8);
  v99 = v12;
  MEMORY[0x28223BE20](v12);
  v97 = &v97 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v127 = *(a1 + 40);
  v102 = *(v127 - 8);
  MEMORY[0x28223BE20](v14);
  v101 = &v97 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_27463965C();
  v103 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v119 = v17;
  v120 = &v97 - v18;
  v134 = v10;
  v19 = sub_27463965C();
  v107 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v106 = &v97 - v20;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280951400, &unk_2746528C0);
  v133 = v19;
  v21 = sub_27463965C();
  v109 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v108 = &v97 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v104 = &v97 - v24;
  MEMORY[0x28223BE20](v25);
  v105 = &v97 - v26;
  v130 = v27;
  v124 = sub_27463C0AC();
  v122 = *(v124 - 8);
  MEMORY[0x28223BE20](v124);
  v121 = &v97 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v123 = &v97 - v30;
  sub_27463AF4C();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v31 = sub_27463B92C();
  v118 = v31;
  v138 = *(a1 + 24);
  v32 = *(a1 + 56);
  *&v171[1] = v138;
  v171[0] = v4;
  v171[3] = v5;
  v171[4] = v32;
  v126 = type metadata accessor for StackListRow(255, v171);
  v33 = sub_27463965C();
  v115 = v33;
  WitnessTable = swift_getWitnessTable();
  v117 = WitnessTable;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v171[0] = v31;
  v171[1] = AssociatedTypeWitness;
  v171[2] = v33;
  v171[3] = WitnessTable;
  v171[4] = AssociatedConformanceWitness;
  v132 = sub_27463AF9C();
  v129 = *(v132 - 8);
  MEMORY[0x28223BE20](v132);
  v131 = &v97 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = MEMORY[0x28223BE20](v36);
  v135 = &v97 - v38;
  v172 = (*((*MEMORY[0x277D85000] & **v2) + 0x88))(v37);
  v173 = v39;
  v174 = v40;
  sub_27463B92C();
  v41 = sub_27463AF4C();
  v171[24] = swift_getWitnessTable();
  v42 = swift_getWitnessTable();
  MEMORY[0x277C57F10](v171, v41, v42);

  v172 = v171[0];
  v173 = v171[1];
  v174 = v171[2];
  v143 = v4;
  v43 = *(a1 + 64);
  v100 = v32;
  *&v44 = v32;
  v128 = v43;
  *(&v44 + 1) = v43;
  v144 = v138;
  v136 = v127;
  v137 = v44;
  v145 = v127;
  v146 = v44;
  sub_27463C5BC();
  swift_getWitnessTable();
  v45 = v113;
  v46 = sub_27463B7BC();

  v172 = v46;
  v139 = v4;
  v140 = v138;
  v142 = v137;
  v141 = v136;
  swift_getKeyPath();
  v47 = a1;
  (*(*(a1 - 8) + 16))(v171, v45, a1);
  v48 = swift_allocObject();
  *(v48 + 16) = v4;
  v49 = v137;
  *(v48 + 24) = v138;
  *(v48 + 56) = v49;
  *(v48 + 40) = v136;
  memcpy((v48 + 72), v171, 0xB1uLL);
  v50 = swift_allocObject();
  v51 = v4;
  *(v50 + 16) = v4;
  v52 = v137;
  *(v50 + 24) = v138;
  *(v50 + 56) = v52;
  *(v50 + 40) = v136;
  *(v50 + 72) = sub_274432920;
  *(v50 + 80) = v48;
  v53 = swift_getWitnessTable();
  v54 = sub_274434E04(&qword_28094A710);
  v169 = v53;
  v170 = v54;
  v96 = swift_getWitnessTable();
  v55 = v131;
  sub_27463AF7C();
  v168 = v96;
  v56 = v132;
  AssociatedConformanceWitness = swift_getWitnessTable();
  sub_2744E9688();
  v117 = *(v129 + 8);
  v118 = v129 + 8;
  v57 = v117(v55, v56);
  v58 = *(v45 + 24);
  v59 = MEMORY[0x277CDFC60];
  v126 = v54;
  if (v58 == 1)
  {
    v60 = v128;
    v61 = v101;
    (*(v45 + 32))(v57);
    v62 = *(v45 + 88);
    if ((*(v45 + 96) & 1) == 0)
    {

      sub_27463BC0C();
      v63 = sub_27463A2FC();
      sub_274638CEC();

      v64 = v97;
      sub_274639AAC();
      swift_getAtKeyPath();
      sub_2743F45E8(v62, 0);
      (*(v98 + 8))(v64, v99);
    }

    v65 = v127;
    sub_27457574C(v127);
    sub_27463A90C();
    (*(v102 + 8))(v61, v65);
    v66 = sub_274421DF4(v47);
    MEMORY[0x28223BE20](v66);
    swift_getKeyPath();
    v171[0] = v51;
    *&v171[1] = v138;
    *&v171[5] = v137;
    *&v171[3] = v136;
    type metadata accessor for StackList.StackListModel(255, v171);
    swift_getWitnessTable();
    v67 = v110;
    sub_27463952C();

    v68 = v111;
    sub_274424FAC(v67, v111);
    v151 = v60;
    v152 = MEMORY[0x277CDFC60];
    v69 = v119;
    v70 = swift_getWitnessTable();
    v71 = v106;
    v72 = v134;
    v73 = v120;
    MEMORY[0x277C57160](v68, v69, v134, v70);
    (*(v112 + 8))(v68, v72);
    (*(v103 + 8))(v73, v69);
    v171[0] = *(v45 + 16);

    v74 = swift_getWitnessTable();
    v149 = v70;
    v150 = v74;
    v75 = v133;
    v76 = swift_getWitnessTable();
    sub_27463A32C();
    v77 = v104;
    sub_27463A65C();

    (*(v107 + 8))(v71, v75);
    v147 = v76;
    v148 = v126;
    v78 = v130;
    swift_getWitnessTable();
    v79 = v105;
    sub_2744E9688();
    v80 = v109;
    v81 = *(v109 + 8);
    v81(v77, v78);
    v82 = v108;
    sub_2744E9688();
    v81(v79, v78);
    v83 = v121;
    (*(v80 + 32))(v121, v82, v78);
    __swift_storeEnumTagSinglePayload(v83, 0, 1, v78);
  }

  else
  {
    v83 = v121;
    __swift_storeEnumTagSinglePayload(v121, 1, 1, v130);
    v166 = v128;
    v167 = v59;
    v84 = swift_getWitnessTable();
    v85 = swift_getWitnessTable();
    v164 = v84;
    v165 = v85;
    v162 = swift_getWitnessTable();
    v163 = v54;
    swift_getWitnessTable();
  }

  v86 = v123;
  sub_2745758B8(v83, v123);
  v87 = v122;
  v88 = *(v122 + 8);
  v89 = v124;
  v88(v83, v124);
  v90 = v131;
  v91 = v132;
  (*(v129 + 16))(v131, v135, v132);
  v171[0] = v90;
  (*(v87 + 16))(v83, v86, v89);
  v171[1] = v83;
  v172 = v91;
  v173 = v89;
  v160 = AssociatedConformanceWitness;
  v158 = v128;
  v159 = MEMORY[0x277CDFC60];
  v92 = swift_getWitnessTable();
  v93 = swift_getWitnessTable();
  v156 = v92;
  v157 = v93;
  v154 = swift_getWitnessTable();
  v155 = v126;
  v153 = swift_getWitnessTable();
  v161 = swift_getWitnessTable();
  sub_274575750(v171, 2, &v172);
  v88(v86, v89);
  v94 = v117;
  v117(v135, v91);
  v88(v83, v89);
  return v94(v90, v91);
}

void sub_274423B64()
{
  OUTLINED_FUNCTION_24();
  v35 = v0;
  v36 = v1;
  v2 = v0;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v33 = v9;
  v34 = v7;
  v10 = v9;
  v12 = v11;
  v37 = v13;
  v38 = v14;
  sub_27463AF4C();
  swift_getTupleTypeMetadata2();
  OUTLINED_FUNCTION_26_0();
  v15 = sub_27463B92C();
  OUTLINED_FUNCTION_30();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v39 = v12;
  v40 = v10;
  v41 = v8;
  v42 = v4;
  v43 = v2;
  type metadata accessor for StackListRow(255, &v39);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280951400, &unk_2746528C0);
  OUTLINED_FUNCTION_69();
  v17 = sub_27463965C();
  OUTLINED_FUNCTION_6_0();
  WitnessTable = swift_getWitnessTable();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v39 = v15;
  v40 = AssociatedTypeWitness;
  v41 = v17;
  v42 = WitnessTable;
  v43 = AssociatedConformanceWitness;
  sub_27463AF9C();
  sub_27463965C();
  type metadata accessor for DismissDeleteConfirmationModifier(255, v12, v4, v20);
  OUTLINED_FUNCTION_20_0();
  sub_27463965C();
  OUTLINED_FUNCTION_26_0();
  sub_27463965C();
  OUTLINED_FUNCTION_26_0();
  sub_27463C0AC();
  OUTLINED_FUNCTION_22();
  OUTLINED_FUNCTION_77();
  swift_getTupleTypeMetadata2();
  OUTLINED_FUNCTION_35_0();
  v21 = sub_27463B19C();
  OUTLINED_FUNCTION_1();
  v23 = v22;
  MEMORY[0x28223BE20](v24);
  v26 = &v32 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v29 = &v32 - v28;
  v39 = v12;
  v40 = v33;
  v41 = v34;
  v42 = v6;
  v43 = v4;
  v44 = v35;
  v45 = v36;
  v30 = type metadata accessor for StackList(0, &v39);
  sub_274422A9C(v30, v26);
  OUTLINED_FUNCTION_0_3();
  swift_getWitnessTable();
  sub_2744E9688();
  v31 = *(v23 + 8);
  v31(v26, v21);
  sub_2744E9688();
  v31(v29, v21);
  OUTLINED_FUNCTION_23();
}

uint64_t sub_274423E18()
{
  sub_274639F2C();
  sub_274433D44(&unk_28094DE80);
  return sub_27463C7DC();
}

uint64_t sub_274423E98@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v29[1] = a1;
  v29[2] = a8;
  sub_27463AF4C();
  swift_getTupleTypeMetadata2();
  v13 = sub_27463B92C();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v30 = a2;
  v31 = a3;
  v32 = a4;
  v33 = a6;
  v34 = a7;
  type metadata accessor for StackListRow(255, &v30);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280951400, &unk_2746528C0);
  v15 = sub_27463965C();
  WitnessTable = swift_getWitnessTable();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v30 = v13;
  v31 = AssociatedTypeWitness;
  v32 = v15;
  v33 = WitnessTable;
  v34 = AssociatedConformanceWitness;
  sub_27463AF9C();
  sub_27463965C();
  type metadata accessor for DismissDeleteConfirmationModifier(255, a2, a6, v18);
  sub_27463965C();
  sub_27463965C();
  sub_27463C0AC();
  swift_getTupleTypeMetadata2();
  sub_27463B19C();
  swift_getWitnessTable();
  sub_27463913C();
  v19 = sub_27463965C();
  v20 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v22 = v29 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v25 = v29 - v24;
  sub_27463A31C();
  v26 = swift_getWitnessTable();
  sub_27463A9FC();
  v29[3] = v26;
  v29[4] = MEMORY[0x277CDF918];
  swift_getWitnessTable();
  sub_2744E9688();
  v27 = *(v20 + 8);
  v27(v22, v19);
  sub_2744E9688();
  return (v27)(v25, v19);
}

uint64_t sub_274424218@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_27463AF4C();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  (*(*(TupleTypeMetadata2 - 8) + 16))(a2, a1, TupleTypeMetadata2);
  return __swift_storeEnumTagSinglePayload(a2, 0, 1, TupleTypeMetadata2);
}

uint64_t sub_27442430C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t x8_0@<X8>, uint64_t a9, uint64_t a10)
{
  v28 = a7;
  v29 = a8;
  v26 = a5;
  v27 = a6;
  v25 = a3;
  v15 = sub_27463AF4C();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v24 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v19);
  v22 = &v24 - v21;
  (*(v16 + 16))(&v24 - v21, a2, v15, v20);
  sub_274430770(v22, v18);
  sub_27442447C(a1, v25, a4, v26, v27, v28, v29, x8_0, a9, a10);
  return (*(v16 + 8))(v18, v15);
}

uint64_t sub_27442447C@<X0>(uint64_t a1@<X0>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11)
{
  v88 = a7;
  v85 = a1;
  v80 = a9;
  v81 = a11;
  swift_getAssociatedTypeWitness();
  sub_27463C0AC();
  v16 = sub_27463AF4C();
  MEMORY[0x28223BE20](v16 - 8);
  v77 = &v66 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v84 = &v66 - v19;
  v20 = *(a4 - 8);
  MEMORY[0x28223BE20](v21);
  v23 = &v66 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v91 = a4;
  v92 = a5;
  v82 = a6;
  v93 = a6;
  v94 = a8;
  v95 = a10;
  v24 = type metadata accessor for StackListRow(0, &v91);
  v74 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v72 = &v66 - v25;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280951400, &unk_2746528C0);
  v76 = v24;
  v26 = sub_27463965C();
  v78 = *(v26 - 8);
  v79 = v26;
  MEMORY[0x28223BE20](v26);
  v73 = &v66 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v75 = &v66 - v29;
  v30 = *a3;
  v87 = a3;
  LODWORD(a3) = *(a3 + 8);
  v86 = v30;
  v83 = a10;
  v31 = a5;
  if (a3 == 1)
  {
    v32 = v82;
    v33 = v81;
    sub_274424C64();
    v71 = (*(a8 + 48))(a4, a8);
    v34 = a4;
    (*(v20 + 8))(v23, a4);
    v35 = v32;
  }

  else
  {
    v33 = v81;
    v34 = a4;
    v71 = 0;
    v35 = v82;
  }

  v36 = v87;
  if (*(v87 + 9) == 1)
  {
    sub_274424C64();
    LODWORD(v81) = (*(a8 + 56))(v34, a8);
    (*(v20 + 8))(v23, v34);
  }

  else
  {
    LODWORD(v81) = 0;
  }

  v37 = *((*MEMORY[0x277D85000] & *v86) + 0x70);
  v82 = *(v36 + 16);

  v37(v38);
  v39 = sub_27463B8BC();

  if (__OFSUB__(v39, 1))
  {
    __break(1u);
  }

  else
  {
    v41 = v34;
    v42 = a8;
    if (v39 - 1 <= v85)
    {
      v70 = *(v87 + 24);
    }

    else
    {
      v70 = 1;
    }

    v43 = v88;
    v91 = v41;
    v92 = v31;
    v44 = v35;
    v93 = v35;
    v94 = v88;
    v45 = v83;
    v95 = v42;
    v96 = v83;
    v97 = v33;
    v69 = type metadata accessor for StackList(0, &v91);
    v46 = sub_274421DF4(v69);
    MEMORY[0x28223BE20](v46);
    *(&v66 - 8) = v41;
    *(&v66 - 7) = v31;
    swift_getKeyPath();
    v68 = v41;
    v91 = v41;
    v92 = v31;
    v67 = v31;
    v93 = v44;
    v94 = v43;
    v95 = v42;
    v96 = v45;
    v97 = v33;
    type metadata accessor for StackList.StackListModel(255, &v91);
    swift_getWitnessTable();
    sub_27463952C();

    v47 = v87;
    v48 = sub_274421DF4(v69);
    MEMORY[0x28223BE20](v48);
    *(&v66 - 8) = v68;
    *(&v66 - 7) = v31;
    v61 = v44;
    v62 = v88;
    v63 = v42;
    v64 = v45;
    v65 = v33;
    swift_getKeyPath();
    v49 = v77;
    sub_27463952C();

    v51 = *(v47 + 48);
    v50 = *(v47 + 56);
    v52 = v82;

    v61 = v51;
    v53 = v72;
    sub_274424D78(v85, v86, v71 & 1, v81 & 1, v52, v70, v84, v49, v72, v61, v50, v67, v44, v45);
    v91 = v52;
    v54 = v76;
    WitnessTable = swift_getWitnessTable();
    sub_27463A32C();
    v56 = v73;
    sub_27463A65C();

    (*(v74 + 8))(v53, v54);
    v57 = sub_274434E04(&qword_28094A710);
    v89 = WitnessTable;
    v90 = v57;
    v58 = v79;
    swift_getWitnessTable();
    v59 = v75;
    sub_2744E9688();
    v60 = *(v78 + 8);
    v60(v56, v58);
    sub_2744E9688();
    return (v60)(v59, v58);
  }

  return result;
}

uint64_t sub_274424C98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t))
{
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_35_0();
  sub_27463C0AC();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_60_0();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_75();
  (*(v9 + 16))(v5, a1);
  return a5(v5);
}

uint64_t sub_274424D78@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, char a4@<W3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 17) = a4;
  *(a9 + 24) = a5;
  *(a9 + 32) = a6;
  v15 = *(a12 + 88);
  *&v27 = *(a12 + 80);
  *(&v27 + 1) = a12;
  *&v28 = a13;
  *(&v28 + 1) = v15;
  v29 = a14;
  v16 = type metadata accessor for StackListRow(0, &v27);
  v17 = v16[20];
  swift_getAssociatedTypeWitness();
  sub_27463C0AC();
  v18 = sub_27463AF4C();
  v19 = *(*(v18 - 8) + 32);
  v19(a9 + v17, a7, v18);
  v19(a9 + v16[21], a8, v18);
  v20 = (a9 + v16[22]);
  *v20 = a10;
  v20[1] = a11;
  v21 = a9 + v16[23];
  sub_27442538C(&v27);
  v22 = v28;
  *v21 = v27;
  *(v21 + 16) = v22;
  *(v21 + 32) = v29;
  v23 = a9 + v16[24];
  result = swift_getKeyPath();
  *v23 = result;
  *(v23 + 8) = 0;
  *(a9 + v16[25]) = 0x4054000000000000;
  return result;
}

uint64_t sub_274424F28(char *a1, uint64_t (*a2)(uint64_t, char *))
{
  v4 = *a1;
  sub_27463AF4C();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  return a2(v4, &a1[*(TupleTypeMetadata2 + 48)]);
}

uint64_t sub_274424FAC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  swift_getAssociatedTypeWitness();
  sub_27463C0AC();
  v4 = sub_27463AF4C();
  v5 = *(*(v4 - 8) + 32);

  return v5(a2, a1, v4);
}

uint64_t sub_27442504C(uint64_t a1)
{
  swift_getAssociatedTypeWitness();
  v2 = sub_27463C0AC();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v7 - v5, a1, v2, v4);
  sub_27463AF4C();
  sub_27463AEBC();
  return (*(v3 + 8))(a1, v2);
}

uint64_t sub_274425178(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_26_0();
  sub_27463C0AC();
  OUTLINED_FUNCTION_35_0();
  v3 = sub_27463AF4C();
  return a2(v3);
}

uint64_t sub_2744251EC(uint64_t a1)
{
  swift_getAssociatedTypeWitness();
  v2 = sub_27463C0AC();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v7 - v5, a1, v2, v4);
  sub_27463AF4C();
  sub_27463AEBC();
  return (*(v3 + 8))(a1, v2);
}

uint64_t sub_274425318(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_26_0();
  sub_27463C0AC();
  OUTLINED_FUNCTION_35_0();
  v3 = sub_27463AF4C();
  return a2(v3);
}

double sub_27442538C@<D0>(uint64_t a1@<X8>)
{
  type metadata accessor for CGRect(0);
  sub_27463ACDC();
  result = *&v7;
  *a1 = v7;
  *(a1 + 16) = v8;
  *(a1 + 32) = v9;
  return result;
}

uint64_t sub_2744253E8(uint64_t a1)
{
  v2 = *(a1 + 16);
  v45 = *(*(a1 + 40) + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v44 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v39 = &v38 - v4;
  v47 = v5;
  v6 = sub_27463C0AC();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v43 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x28223BE20](TupleTypeMetadata2);
  v46 = &v38 - v7;
  v41 = *(v2 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_27463AF4C();
  v40 = sub_27463C0AC();
  v12 = *(v40 - 8);
  MEMORY[0x28223BE20](v40);
  v14 = &v38 - v13;
  v15 = *(v6 - 8);
  MEMORY[0x28223BE20](v16);
  v42 = &v38 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = &v38 - v19;
  MEMORY[0x28223BE20](v21);
  v48 = &v38 - v22;
  sub_274425178(a1, MEMORY[0x277CE11D8]);
  sub_274425A2C(v14);
  if (__swift_getEnumTagSinglePayload(v14, 1, v11) == 1)
  {
    (*(v12 + 8))(v14, v40);
    v23 = 1;
  }

  else
  {
    MEMORY[0x277C575F0](v11);
    (*(*(v11 - 8) + 8))(v14, v11);
    sub_27463C39C();
    (*(v41 + 8))(v10, v2);
    v23 = 0;
  }

  v24 = v47;
  __swift_storeEnumTagSinglePayload(v20, v23, 1, v47);
  v25 = v48;
  v26 = *(TupleTypeMetadata2 + 48);
  v27 = *(v15 + 16);
  v28 = v46;
  v27(v46, v48, v6);
  v27((v28 + v26), v20, v6);
  if (__swift_getEnumTagSinglePayload(v28, 1, v24) != 1)
  {
    v31 = v42;
    v27(v42, v28, v6);
    if (__swift_getEnumTagSinglePayload(v28 + v26, 1, v24) != 1)
    {
      v33 = v44;
      v34 = v39;
      (*(v44 + 32))(v39, v28 + v26, v24);
      swift_getAssociatedConformanceWitness();
      v30 = sub_27463B5BC();
      v35 = *(v33 + 8);
      v35(v34, v24);
      v36 = *(v15 + 8);
      v36(v20, v6);
      v36(v48, v6);
      v35(v31, v24);
      v36(v28, v6);
      return v30 & 1;
    }

    v32 = *(v15 + 8);
    v32(v20, v6);
    v32(v48, v6);
    (*(v44 + 8))(v31, v24);
    goto LABEL_9;
  }

  v29 = *(v15 + 8);
  v29(v20, v6);
  v29(v25, v6);
  if (__swift_getEnumTagSinglePayload(v28 + v26, 1, v24) != 1)
  {
LABEL_9:
    (*(v43 + 8))(v28, TupleTypeMetadata2);
    v30 = 0;
    return v30 & 1;
  }

  v29(v28, v6);
  v30 = 1;
  return v30 & 1;
}

uint64_t sub_274425A2C@<X0>(uint64_t a1@<X8>)
{
  v3 = v1[1];
  v4 = MEMORY[0x277D85000];
  (*((*MEMORY[0x277D85000] & *v3) + 0x70))();
  sub_27463B92C();
  swift_getWitnessTable();
  sub_27463BABC();

  v5 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094A498, &qword_274649190);
  if (sub_27463BB7C())
  {
    (*((*v4 & *v3) + 0xA0))(v5);
    v6 = 0;
  }

  else
  {
    v6 = 1;
  }

  v7 = sub_27463AF4C();
  return __swift_storeEnumTagSinglePayload(a1, v6, 1, v7);
}

uint64_t sub_274425BA8(uint64_t a1)
{
  v2 = *(a1 + 16);
  v62 = *(*(a1 + 40) + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = sub_27463C0AC();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v60 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x28223BE20](TupleTypeMetadata2);
  v67 = v51 - v5;
  v59 = *(v2 - 8);
  MEMORY[0x28223BE20](v6);
  v58 = v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = v2;
  v63 = sub_27463AF4C();
  v8 = sub_27463C0AC();
  v56 = *(v8 - 8);
  v57 = v8;
  MEMORY[0x28223BE20](v8);
  v10 = v51 - v9;
  v11 = *(v4 - 8);
  MEMORY[0x28223BE20](v12);
  v68 = v51 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v65 = v51 - v15;
  MEMORY[0x28223BE20](v16);
  v18 = v51 - v17;
  MEMORY[0x28223BE20](v19);
  v21 = v51 - v20;
  v22 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](v23);
  v55 = v51 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v27 = v51 - v26;
  v64 = a1;
  v28 = a1;
  v29 = AssociatedTypeWitness;
  sub_274425318(v28, MEMORY[0x277CE11D8]);
  if (__swift_getEnumTagSinglePayload(v21, 1, AssociatedTypeWitness) == 1)
  {
    (*(v11 + 8))(v21, v4);
LABEL_12:
    v44 = 0;
    return v44 & 1;
  }

  v30 = *(v22 + 32);
  v51[1] = v22 + 32;
  v52 = v11;
  v51[0] = v30;
  v30(v27, v21, AssociatedTypeWitness);
  v53 = v27;
  v54 = v22;
  (*(v22 + 16))(v18, v27, AssociatedTypeWitness);
  __swift_storeEnumTagSinglePayload(v18, 0, 1, AssociatedTypeWitness);
  sub_274425A2C(v10);
  v31 = v63;
  v32 = v18;
  if (__swift_getEnumTagSinglePayload(v10, 1, v63) == 1)
  {
    (*(v56 + 8))(v10, v57);
    v33 = 1;
    v35 = v65;
    v34 = TupleTypeMetadata2;
  }

  else
  {
    v36 = v58;
    MEMORY[0x277C575F0](v31);
    (*(*(v31 - 8) + 8))(v10, v31);
    v35 = v65;
    v37 = v61;
    sub_27463C39C();
    (*(v59 + 8))(v36, v37);
    v33 = 0;
    v34 = TupleTypeMetadata2;
  }

  v38 = v52;
  v39 = v4;
  __swift_storeEnumTagSinglePayload(v35, v33, 1, v29);
  v40 = *(v34 + 48);
  v41 = *(v38 + 16);
  v42 = v67;
  v41(v67, v32, v39);
  v41((v42 + v40), v35, v39);
  if (__swift_getEnumTagSinglePayload(v42, 1, v29) != 1)
  {
    v41(v68, v42, v39);
    if (__swift_getEnumTagSinglePayload(v42 + v40, 1, v29) != 1)
    {
      v48 = v55;
      (v51[0])(v55, v42 + v40, v29);
      swift_getAssociatedConformanceWitness();
      v44 = sub_27463B5BC();
      v49 = *(v54 + 8);
      v49(v48, v29);
      v50 = *(v38 + 8);
      v50(v35, v39);
      v50(v32, v39);
      v49(v53, v29);
      v49(v68, v29);
      v50(v42, v39);
      return v44 & 1;
    }

    v45 = *(v38 + 8);
    v45(v35, v39);
    v45(v32, v39);
    v46 = *(v54 + 8);
    v46(v53, v29);
    v46(v68, v29);
    goto LABEL_11;
  }

  v43 = *(v38 + 8);
  v43(v35, v39);
  v43(v32, v39);
  (*(v54 + 8))(v53, v29);
  if (__swift_getEnumTagSinglePayload(v42 + v40, 1, v29) != 1)
  {
LABEL_11:
    (*(v60 + 8))(v42, v34);
    goto LABEL_12;
  }

  v43(v42, v39);
  v44 = 1;
  return v44 & 1;
}

double sub_274426310(uint64_t a1)
{
  v1 = sub_274425BA8(a1);
  result = 1.0;
  if (v1)
  {
    return 0.0;
  }

  return result;
}

uint64_t sub_274426338@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v81 = a2;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094A898, &qword_274649720);
  v3 = a1[4];
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094A8A0, &qword_274649728);
  v71 = v3;
  swift_getTupleTypeMetadata3();
  sub_27463B19C();
  v82 = MEMORY[0x277CE14C0];
  swift_getWitnessTable();
  sub_27463ADAC();
  sub_27463965C();
  sub_27463965C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094A8A8, &qword_274649730);
  sub_27463965C();
  v79 = a1;
  v83 = a1[2];
  v70 = a1[5];
  type metadata accessor for DismissDeleteConfirmationModifier(255, v83, v70, v4);
  sub_27463965C();
  sub_27463965C();
  v5 = sub_27463965C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280951400, &unk_2746528C0);
  sub_27463965C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094A760, &qword_274649558);
  sub_27463965C();
  WitnessTable = swift_getWitnessTable();
  v104 = MEMORY[0x277CDF918];
  v101 = swift_getWitnessTable();
  v102 = MEMORY[0x277CDF748];
  v99 = swift_getWitnessTable();
  v100 = sub_274434E04(&unk_28094A8B0);
  v97 = swift_getWitnessTable();
  v98 = swift_getWitnessTable();
  v95 = swift_getWitnessTable();
  v96 = MEMORY[0x277CDF900];
  v93 = swift_getWitnessTable();
  v94 = MEMORY[0x277CDFC60];
  v91 = swift_getWitnessTable();
  v92 = sub_274434E04(&qword_28094A710);
  v89 = swift_getWitnessTable();
  v90 = sub_274434E04(&unk_28094A768);
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  v85 = v5;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v87 = v91;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094A8B8, &qword_274649738);
  sub_27463965C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_28094A8C0, &qword_274649740);
  swift_getTupleTypeMetadata2();
  v66 = sub_27463B19C();
  v64 = swift_getWitnessTable();
  v6 = sub_27463AE6C();
  v69 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v68 = &v58 - v7;
  v8 = swift_getWitnessTable();
  v85 = v6;
  OpaqueTypeMetadata2 = v8;
  v9 = swift_getOpaqueTypeMetadata2();
  v85 = v6;
  OpaqueTypeMetadata2 = v8;
  v10 = swift_getOpaqueTypeConformance2();
  v85 = v6;
  OpaqueTypeMetadata2 = v9;
  v82 = v9;
  v78 = v8;
  v87 = v8;
  OpaqueTypeConformance2 = v10;
  v77 = v10;
  v11 = swift_getOpaqueTypeMetadata2();
  v67 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v65 = &v58 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v63 = &v58 - v14;
  v15 = sub_27463AF4C();
  v16 = sub_27463C0AC();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v58 - v18;
  v72 = *(v15 - 8);
  MEMORY[0x28223BE20](v20);
  v22 = &v58 - v21;
  v76 = sub_27463C0AC();
  v74 = *(v76 - 8);
  MEMORY[0x28223BE20](v76);
  v73 = &v58 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v75 = &v58 - v25;
  v26 = v79;
  v27 = v80;
  sub_274425A2C(v19);
  v28 = v15;
  if (__swift_getEnumTagSinglePayload(v19, 1, v15) == 1)
  {
    (*(v17 + 8))(v19, v16);
    v29 = v73;
    __swift_storeEnumTagSinglePayload(v73, 1, 1, v11);
    v30 = v82;
    v85 = v6;
    OpaqueTypeMetadata2 = v82;
    v31 = v78;
    v32 = v77;
    v87 = v78;
    OpaqueTypeConformance2 = v77;
    swift_getOpaqueTypeConformance2();
    v33 = v75;
    sub_2745758B8(v29, v75);
    v34 = *(v74 + 8);
    v35 = v29;
    v36 = v76;
    v34(v35, v76);
  }

  else
  {
    v37 = *(v72 + 32);
    v38 = v22;
    v61 = v28;
    v39 = v37(v22, v19, v28);
    MEMORY[0x28223BE20](v39);
    v40 = v26;
    v59 = v26[3];
    v41 = v59;
    v62 = v6;
    v42 = v83;
    *(&v58 - 8) = v83;
    *(&v58 - 7) = v41;
    v43 = v71;
    v44 = v70;
    *(&v58 - 6) = v71;
    *(&v58 - 5) = v44;
    v45 = v40[6];
    *(&v58 - 4) = v45;
    *(&v58 - 3) = v27;
    *(&v58 - 2) = v38;
    v46 = v38;
    v60 = v38;
    sub_274639C5C();
    v47 = v68;
    v48 = sub_27463AE5C();
    v79 = &v58;
    MEMORY[0x28223BE20](v48);
    *(&v58 - 8) = v42;
    v6 = v62;
    *(&v58 - 7) = v59;
    *(&v58 - 6) = v43;
    *(&v58 - 5) = v44;
    *(&v58 - 4) = v45;
    *(&v58 - 3) = v46;
    *(&v58 - 2) = v27;
    v49 = swift_checkMetadataState();
    v50 = v65;
    v31 = v78;
    v32 = v77;
    sub_27463A60C();
    (*(v69 + 8))(v47, v6);
    v85 = v6;
    OpaqueTypeMetadata2 = v49;
    v87 = v31;
    OpaqueTypeConformance2 = v32;
    swift_getOpaqueTypeConformance2();
    v51 = v63;
    sub_2744E9688();
    v52 = v67;
    v53 = *(v67 + 8);
    v53(v50, v11);
    sub_2744E9688();
    v54 = v51;
    v30 = v82;
    v53(v54, v11);
    v55 = v73;
    (*(v52 + 32))(v73, v50, v11);
    __swift_storeEnumTagSinglePayload(v55, 0, 1, v11);
    v33 = v75;
    sub_2745758B8(v55, v75);
    v34 = *(v74 + 8);
    v56 = v55;
    v36 = v76;
    v34(v56, v76);
    (*(v72 + 8))(v60, v61);
  }

  v85 = v6;
  OpaqueTypeMetadata2 = v30;
  v87 = v31;
  OpaqueTypeConformance2 = v32;
  v84 = swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  sub_2744E9688();
  return (v34)(v33, v36);
}

uint64_t sub_274427030@<X0>(uint64_t a1@<X0>, char **a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char **a7@<X6>, uint64_t a8@<X8>)
{
  v188 = a7;
  v189 = a5;
  v185 = a2;
  v186 = a6;
  v190 = a4;
  v187 = a1;
  v178 = a8;
  v10 = sub_27463AF6C();
  v134 = *(v10 - 8);
  v135 = v10;
  MEMORY[0x28223BE20](v10);
  v132 = &v126 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v131 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094A8D0, &qword_274649750);
  MEMORY[0x28223BE20](v131);
  v133 = &v126 - v12;
  v175 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094A8D8, &qword_274649758);
  MEMORY[0x28223BE20](v175);
  v130 = &v126 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v129 = &v126 - v15;
  v174 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094A8C0, &qword_274649740);
  MEMORY[0x28223BE20](v174);
  v177 = &v126 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v176 = &v126 - v18;
  v19 = sub_274639ABC();
  v127 = *(v19 - 8);
  v128 = v19;
  MEMORY[0x28223BE20](v19);
  v126 = &v126 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v191 = a3;
  swift_getAssociatedTypeWitness();
  sub_27463C0AC();
  v21 = sub_27463AF4C();
  MEMORY[0x28223BE20](v21 - 8);
  v172 = &v126 - v22;
  v184 = type metadata accessor for DismissDeleteConfirmationModifier(0, a3, a6, v23);
  v173 = *(v184 - 1);
  MEMORY[0x28223BE20](v184);
  v171 = &v126 - v24;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094A898, &qword_274649720);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094A8A0, &qword_274649728);
  swift_getTupleTypeMetadata3();
  v147 = sub_27463B19C();
  WitnessTable = swift_getWitnessTable();
  v25 = sub_27463ADAC();
  v151 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v145 = &v126 - v26;
  v137 = v25;
  v27 = sub_27463965C();
  v152 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v179 = &v126 - v28;
  v29 = sub_27463965C();
  v159 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v156 = &v126 - v30;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094A8A8, &qword_274649730);
  v31 = sub_27463965C();
  v161 = *(v31 - 8);
  MEMORY[0x28223BE20](v31);
  v157 = &v126 - v32;
  v33 = sub_27463965C();
  v158 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v155 = &v126 - v34;
  v35 = sub_27463965C();
  v166 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v165 = &v126 - v36;
  v37 = sub_27463965C();
  v169 = *(v37 - 8);
  MEMORY[0x28223BE20](v37);
  v168 = &v126 - v38;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280951400, &unk_2746528C0);
  sub_27463965C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094A760, &qword_274649558);
  v39 = sub_27463965C();
  v136 = swift_getWitnessTable();
  v221 = v136;
  v222 = MEMORY[0x277CDF918];
  v153 = v27;
  v138 = swift_getWitnessTable();
  v219 = v138;
  v220 = MEMORY[0x277CDF748];
  v162 = v29;
  v40 = swift_getWitnessTable();
  v41 = sub_274434E04(&unk_28094A8B0);
  v139 = v40;
  v217 = v40;
  v218 = v41;
  v163 = v31;
  v42 = swift_getWitnessTable();
  v43 = swift_getWitnessTable();
  v140 = v42;
  v215 = v42;
  v216 = v43;
  v160 = v33;
  v141 = swift_getWitnessTable();
  v213 = v141;
  v214 = MEMORY[0x277CDF900];
  v167 = v35;
  v144 = swift_getWitnessTable();
  v211 = v144;
  v212 = MEMORY[0x277CDFC60];
  v44 = swift_getWitnessTable();
  v45 = sub_274434E04(&qword_28094A710);
  v209 = v44;
  v210 = v45;
  v46 = swift_getWitnessTable();
  v47 = sub_274434E04(&unk_28094A768);
  v207 = v46;
  v208 = v47;
  v48 = swift_getWitnessTable();
  v202 = v39;
  v203 = v48;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v202 = v39;
  v203 = v48;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v202 = OpaqueTypeMetadata2;
  v203 = OpaqueTypeConformance2;
  v51 = swift_getOpaqueTypeMetadata2();
  v202 = OpaqueTypeMetadata2;
  v203 = OpaqueTypeConformance2;
  v52 = v187;
  v53 = swift_getOpaqueTypeConformance2();
  v170 = v37;
  v202 = v37;
  v142 = v51;
  v143 = v53;
  v203 = v51;
  v154 = v44;
  v204 = v44;
  v205 = v53;
  v54 = swift_getOpaqueTypeMetadata2();
  v149 = *(v54 - 8);
  MEMORY[0x28223BE20](v54);
  v180 = &v126 - v55;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094A8B8, &qword_274649738);
  v150 = v54;
  v183 = sub_27463965C();
  v181 = *(v183 - 8);
  MEMORY[0x28223BE20](v183);
  v164 = &v126 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v57);
  v148 = &v126 - v58;
  MEMORY[0x28223BE20](v59);
  v182 = &v126 - v60;
  v61 = v191;
  v192 = v191;
  v62 = v189;
  v63 = v190;
  v193 = v190;
  v194 = v189;
  v64 = v186;
  v195 = v186;
  v65 = v188;
  v196 = v188;
  v197 = v52;
  v198 = v185;
  sub_27456E924(v147);
  v66 = v145;
  sub_27463AD9C();
  LODWORD(v147) = *(v52 + 16);
  v67 = v137;
  sub_27463A9EC();
  (*(v151 + 8))(v66, v67);
  v202 = v61;
  v203 = v63;
  v204 = v62;
  v205 = v64;
  v206 = v65;
  v68 = type metadata accessor for StackListRow(0, &v202);
  sub_2744253E8(v68);
  v69 = v156;
  v70 = v153;
  v71 = v179;
  sub_27463A93C();
  v72 = (*(v152 + 8))(v71, v70);
  MEMORY[0x28223BE20](v72);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094A8E0, &qword_274649760);
  sub_274433790();
  sub_27463B0CC();
  v73 = v157;
  v74 = v162;
  sub_27463A9BC();
  (*(v159 + 8))(v69, v74);
  v75 = v172;
  sub_274425178(v68, MEMORY[0x277CE11E8]);
  v76 = v171;
  sub_274424FAC(v75, v171);
  v77 = v155;
  v78 = v163;
  v79 = v184;
  MEMORY[0x277C57160](v76, v163, v184, v140);
  (*(v173 + 8))(v76, v79);
  v80 = v187;
  (*(v161 + 8))(v73, v78);
  sub_274426310(v68);
  v81 = v165;
  v82 = v160;
  sub_27463A9AC();
  (*(v158 + 8))(v77, v82);
  v172 = v68;
  v83 = v80 + *(v68 + 96);
  v84 = *v83;
  if ((*(v83 + 8) & 1) == 0)
  {

    sub_27463BC0C();
    v85 = sub_27463A2FC();
    sub_274638CEC();

    v86 = v126;
    sub_274639AAC();
    swift_getAtKeyPath();
    sub_2743F45E8(v84, 0);
    (*(v127 + 8))(v86, v128);
  }

  v87 = v167;
  sub_27457574C(v167);
  v88 = v168;
  sub_27463A90C();
  v89 = (*(v166 + 8))(v81, v87);
  v184 = &v126;
  MEMORY[0x28223BE20](v89);
  v173 = swift_checkMetadataState();
  v90 = v170;
  v91 = v154;
  v92 = v143;
  sub_27463A60C();
  (*(v169 + 8))(v88, v90);
  v93 = sub_27463B0EC();
  v179 = v94;
  v184 = v93;
  v185 = &v126;
  MEMORY[0x28223BE20](v93);
  v95 = v80;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094A8F0, &qword_274649768);
  v202 = v90;
  v203 = v173;
  v204 = v91;
  v205 = v92;
  v96 = swift_getOpaqueTypeConformance2();
  sub_2744339C8(&unk_28094A8F8);
  v97 = v148;
  v98 = v150;
  v99 = v180;
  sub_27463A9BC();
  (*(v149 + 8))(v99, v98);
  v100 = sub_274434E04(&unk_28094A928);
  v201[2] = v96;
  v201[3] = v100;
  v101 = v183;
  v191 = swift_getWitnessTable();
  sub_2744E9688();
  v102 = *(v181 + 8);
  v102(v97, v101);
  v103 = 1;
  v104 = *(v95 + 32);
  v105 = v175;
  v106 = v176;
  if (v104 == 1)
  {
    v107 = v132;
    sub_27463AF5C();
    v108 = sub_27463A35C();
    sub_2746390AC();
    v110 = v109;
    v112 = v111;
    v114 = v113;
    v116 = v115;
    v117 = v133;
    (*(v134 + 32))(v133, v107, v135);
    v118 = &v117[*(v131 + 36)];
    *v118 = v108;
    *(v118 + 1) = v110;
    *(v118 + 2) = v112;
    *(v118 + 3) = v114;
    *(v118 + 4) = v116;
    v118[40] = 0;
    v119 = sub_274426310(v172);
    v120 = v130;
    sub_274433B6C();
    *&v120[*(v105 + 36)] = v119;
    sub_274433B6C();
    sub_274433B6C();
    v103 = 0;
  }

  __swift_storeEnumTagSinglePayload(v106, v103, 1, v105);
  v121 = v182;
  v122 = v164;
  v123 = v183;
  (*(v181 + 16))(v164, v182, v183);
  v202 = v122;
  v124 = v177;
  sub_2744342DC();
  v203 = v124;
  v201[0] = v123;
  v201[1] = v174;
  v199 = v191;
  v200 = sub_2744339C8(&unk_28094A930);
  sub_274575750(&v202, 2, v201);
  sub_27440CB1C(v106, &unk_28094A8C0, &qword_274649740);
  v102(v121, v123);
  sub_27440CB1C(v124, &unk_28094A8C0, &qword_274649740);
  return (v102)(v122, v123);
}

uint64_t sub_27442851C@<X0>(uint64_t a1@<X0>, void (*a2)(char *, uint64_t)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v100 = a8;
  v101 = a2;
  v13 = a1;
  v102 = *(a5 - 8);
  MEMORY[0x28223BE20](a1);
  v103 = &v81 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v81 - v16;
  v18 = sub_2746396BC();
  v94 = *(v18 - 8);
  v95 = v18;
  MEMORY[0x28223BE20](v18);
  v93 = &v81 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = sub_27463AF4C();
  v20 = *(v84 - 8);
  v83 = *(v20 + 64);
  MEMORY[0x28223BE20](v84);
  v22 = &v81 - v21;
  v89 = a3;
  v90 = a4;
  __src[0] = a3;
  __src[1] = a4;
  v104 = a5;
  __src[2] = a5;
  __src[3] = a6;
  v91 = a6;
  __src[4] = a7;
  v23 = type metadata accessor for StackListRow(0, __src);
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v23);
  v27 = &v81 - v26;
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094A988, &qword_2746497B0);
  MEMORY[0x28223BE20](v88);
  v85 = &v81 - v28;
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094A990, &qword_2746497B8);
  v87 = *(v97 - 8);
  MEMORY[0x28223BE20](v97);
  v86 = &v81 - v29;
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094A898, &qword_274649720);
  MEMORY[0x28223BE20](v98);
  v99 = &v81 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = MEMORY[0x28223BE20](v31);
  if (*(v13 + 16) == 1)
  {
    v34 = *(v24 + 16);
    v82 = &v81 - v32;
    v34(v27, v13, v23, v33);
    v35 = *(v20 + 16);
    v81 = v27;
    v36 = v84;
    v35(v22, v101, v84);
    v37 = *(v24 + 80);
    v96 = a7;
    v38 = v17;
    v39 = (v37 + 56) & ~v37;
    v40 = *(v20 + 80);
    v92 = v23;
    v41 = v13;
    v42 = (v25 + v40 + v39) & ~v40;
    v43 = swift_allocObject();
    v44 = v90;
    v43[2] = v89;
    v43[3] = v44;
    v46 = v91;
    v45 = v92;
    v43[4] = v104;
    v43[5] = v46;
    v43[6] = v96;
    v47 = v43 + v39;
    v17 = v38;
    (*(v24 + 32))(v47, v81, v45);
    v48 = v43 + v42;
    v13 = v41;
    (*(v20 + 32))(v48, v22, v36);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094AA20, &unk_27465DD30);
    sub_274434AB4();
    v49 = v85;
    sub_27463AD5C();
    *(v49 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094A9B0, &qword_2746497C0) + 36)) = 257;
    LOBYTE(v43) = sub_27463A37C();
    sub_2746390AC();
    v50 = v49 + *(v88 + 36);
    *v50 = v43;
    *(v50 + 8) = v51;
    *(v50 + 16) = v52;
    *(v50 + 24) = v53;
    *(v50 + 32) = v54;
    *(v50 + 40) = 0;
    v55 = v93;
    sub_2746396AC();
    sub_274434478(&unk_28094A9A0);
    sub_274433D44(&qword_280949470);
    v56 = v86;
    v57 = v95;
    a7 = v96;
    sub_27463A69C();
    v23 = v92;
    (*(v94 + 8))(v55, v57);
    sub_27440CB1C(v49, &qword_28094A988, &qword_2746497B0);
    v58 = v82;
    v59 = v56;
    v60 = v97;
    (*(v87 + 32))(v82, v59, v97);
    v61 = 0;
    v62 = v60;
  }

  else
  {
    v61 = 1;
    v58 = &v81 - v32;
    v62 = v97;
  }

  __swift_storeEnumTagSinglePayload(v58, v61, 1, v62);
  v63 = v103;
  (*(v13 + *(v23 + 88)))(v101, *(v13 + 8), *v13);
  v64 = v104;
  sub_2744E9688();
  v101 = *(v102 + 8);
  v101(v63, v64);
  if (*(v13 + 17) == 1)
  {
    v65 = sub_27463AC2C();
    v66 = sub_27463A3AC();
    KeyPath = swift_getKeyPath();
    v68 = v17;
    v69 = a7;
    v70 = sub_274639F9C();
    v71 = sub_27463A35C();
    sub_2746390AC();
    __src[0] = v65;
    LODWORD(__src[3]) = v70;
    a7 = v69;
    v17 = v68;
    LOBYTE(__src[4]) = v71;
    *(&v73 + 1) = v72;
    *(&v75 + 1) = v74;
  }

  else
  {
    KeyPath = 0;
    v66 = 0;
    __src[0] = 0;
    v73 = 0uLL;
    *&__src[3] = 0u;
    v75 = 0uLL;
  }

  __src[1] = KeyPath;
  __src[2] = v66;
  *&__src[5] = v73;
  *&__src[7] = v75;
  LOBYTE(__src[9]) = 0;
  v76 = v99;
  sub_2743F58A8();
  v110[0] = v76;
  v77 = v103;
  v78 = v104;
  (*(v102 + 16))(v103, v17, v104);
  v110[1] = v77;
  memcpy(v109, __src, 0x49uLL);
  v110[2] = v109;
  sub_2744342DC();
  v108[0] = v98;
  v108[1] = v78;
  v108[2] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094A8A0, &qword_274649728);
  v105 = sub_274434334();
  v106 = a7;
  v107 = sub_274434594();
  sub_274575750(v110, 3, v108);
  sub_27440CB1C(__src, &qword_28094A8A0, &qword_274649728);
  v79 = v101;
  v101(v17, v78);
  sub_2743F5908(v58);
  memcpy(__dst, v109, 0x49uLL);
  sub_27440CB1C(__dst, &qword_28094A8A0, &qword_274649728);
  v79(v77, v78);
  return sub_2743F5908(v76);
}

uint64_t sub_274428DF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  sub_27463B13C();
  sub_27463946C();
}

uint64_t sub_274428E70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v17 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v13 = sub_27463C0AC();
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v18[-1] - v14;
  sub_27463AF4C();
  sub_27463AF3C();
  __swift_storeEnumTagSinglePayload(v15, 0, 1, AssociatedTypeWitness);
  v18[0] = a3;
  v18[1] = a4;
  v18[2] = a5;
  v18[3] = a6;
  v18[4] = a7;
  type metadata accessor for StackListRow(0, v18);
  return sub_27442504C(v15);
}

uint64_t sub_274428F94@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_27463AC2C();
  v3 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094AA38, &unk_274649820) + 36));
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094AA48, &unk_27464FD80) + 28);
  v5 = *MEMORY[0x277CE1048];
  v6 = sub_27463AC8C();
  (*(*(v6 - 8) + 104))(v3 + v4, v5, v6);
  *v3 = swift_getKeyPath();
  *a1 = v2;
  v7 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094AA20, &unk_27465DD30) + 36));
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094AA58, &qword_274649830) + 28);
  sub_274639C7C();
  v9 = sub_274639C9C();
  __swift_storeEnumTagSinglePayload(v7 + v8, 0, 1, v9);
  result = swift_getKeyPath();
  *v7 = result;
  return result;
}

uint64_t sub_2744290DC@<X0>(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t *a7@<X8>)
{
  v11[0] = a2;
  v11[1] = a3;
  v11[2] = a4;
  v11[3] = a5;
  v11[4] = a6;
  v8 = type metadata accessor for StackListRow(0, v11);
  v9 = sub_274425BA8(v8);
  result = 0;
  if (v9)
  {
  }

  *a7 = result;
  return result;
}

uint64_t sub_27442913C@<X0>(void (*a1)(char *, uint64_t, uint64_t)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v95 = a8;
  v85 = a5;
  v87 = a3;
  v92 = a2;
  v81 = a1;
  v88 = a9;
  v96 = sub_27463AF4C();
  v83 = *(v96 - 8);
  v86 = *(v83 + 64);
  MEMORY[0x28223BE20](v96);
  v97 = v65 - v14;
  *&v114 = a4;
  *(&v114 + 1) = a5;
  v90 = a4;
  *&v115 = a6;
  *(&v115 + 1) = a7;
  v79 = a6;
  v91 = a7;
  v116 = a8;
  v94 = type metadata accessor for StackListRow(0, &v114);
  v80 = *(v94 - 8);
  v82 = *(v80 + 64);
  MEMORY[0x28223BE20](v94);
  v84 = v65 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v93 = v65 - v17;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094A898, &qword_274649720);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094A8A0, &qword_274649728);
  swift_getTupleTypeMetadata3();
  sub_27463B19C();
  swift_getWitnessTable();
  sub_27463ADAC();
  sub_27463965C();
  sub_27463965C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094A8A8, &qword_274649730);
  sub_27463965C();
  type metadata accessor for DismissDeleteConfirmationModifier(255, a4, a7, v18);
  sub_27463965C();
  sub_27463965C();
  v65[1] = sub_27463965C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280951400, &unk_2746528C0);
  v19 = sub_27463965C();
  v77 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v21 = v65 - v20;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094A760, &qword_274649558);
  v22 = sub_27463965C();
  v78 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v89 = v65 - v23;
  WitnessTable = swift_getWitnessTable();
  v113 = MEMORY[0x277CDF918];
  v110 = swift_getWitnessTable();
  v111 = MEMORY[0x277CDF748];
  v24 = swift_getWitnessTable();
  v25 = sub_274434E04(&unk_28094A8B0);
  v108 = v24;
  v109 = v25;
  v26 = swift_getWitnessTable();
  v27 = swift_getWitnessTable();
  v106 = v26;
  v107 = v27;
  v104 = swift_getWitnessTable();
  v105 = MEMORY[0x277CDF900];
  v102 = swift_getWitnessTable();
  v103 = MEMORY[0x277CDFC60];
  v28 = swift_getWitnessTable();
  v29 = sub_274434E04(&qword_28094A710);
  v100 = v28;
  v101 = v29;
  v30 = swift_getWitnessTable();
  v31 = sub_274434E04(&unk_28094A768);
  v98 = v30;
  v99 = v31;
  v32 = swift_getWitnessTable();
  *&v114 = v22;
  *(&v114 + 1) = v32;
  v33 = v22;
  v69 = v22;
  v34 = v32;
  v70 = v32;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v72 = OpaqueTypeMetadata2;
  v76 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v68 = v65 - v36;
  *&v114 = v33;
  *(&v114 + 1) = v34;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  *&v114 = OpaqueTypeMetadata2;
  *(&v114 + 1) = OpaqueTypeConformance2;
  v73 = MEMORY[0x277CDECE8];
  v74 = swift_getOpaqueTypeMetadata2();
  v75 = *(v74 - 8);
  MEMORY[0x28223BE20](v74);
  v66 = v65 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v38);
  v67 = v65 - v39;
  v40 = v92;
  *&v114 = *(v92 + 24);

  sub_27463A32C();
  sub_27463A65C();

  swift_getKeyPath();
  LOBYTE(v116) = 0;
  v114 = 0u;
  v115 = 0u;
  sub_27463A6CC();

  (*(v77 + 8))(v21, v19);
  v41 = v80;
  v81 = *(v80 + 16);
  v81(v93, v40, v94);
  v42 = v83;
  (*(v83 + 16))(v97, v87, v96);
  v43 = *(v41 + 80);
  v44 = (v43 + 56) & ~v43;
  v87 = v44 + v82;
  v82 = v43 | 7;
  v45 = (v87 + *(v42 + 80)) & ~*(v42 + 80);
  v46 = swift_allocObject();
  v47 = v85;
  *(v46 + 2) = v90;
  *(v46 + 3) = v47;
  v48 = v79;
  v49 = v91;
  *(v46 + 4) = v79;
  *(v46 + 5) = v49;
  *(v46 + 6) = v95;
  v50 = *(v41 + 32);
  v51 = v94;
  v50(&v46[v44], v93, v94);
  (*(v42 + 32))(&v46[v45], v97, v96);
  v52 = v84;
  v81(v84, v92, v51);
  v53 = swift_allocObject();
  *(v53 + 2) = v90;
  *(v53 + 3) = v47;
  v54 = v91;
  *(v53 + 4) = v48;
  *(v53 + 5) = v54;
  *(v53 + 6) = v95;
  v50(&v53[v44], v52, v51);
  v55 = v68;
  v56 = v69;
  v57 = v89;
  sub_27463A95C();

  (*(v78 + 8))(v57, v56);
  v58 = v66;
  v59 = v72;
  v60 = OpaqueTypeConformance2;
  sub_27463A89C();
  (*(v76 + 8))(v55, v59);
  *&v114 = v59;
  *(&v114 + 1) = v60;
  swift_getOpaqueTypeConformance2();
  v61 = v67;
  v62 = v74;
  sub_2744E9688();
  v63 = *(v75 + 8);
  v63(v58, v62);
  sub_2744E9688();
  return (v63)(v61, v62);
}

id sub_274429D10()
{
  v0 = objc_allocWithZone(MEMORY[0x277CCAA88]);

  return [v0 init];
}

uint64_t sub_274429D48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v15 = sub_27463C0AC();
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v19[-v16];
  __swift_storeEnumTagSinglePayload(&v19[-v16], 1, 1, AssociatedTypeWitness);
  v27[0] = a3;
  v27[1] = a4;
  v27[2] = a5;
  v27[3] = a6;
  v27[4] = a7;
  type metadata accessor for StackListRow(0, v27);
  sub_27442504C(v17);
  sub_27463B14C();
  v20 = a3;
  v21 = a4;
  v22 = a5;
  v23 = a6;
  v24 = a7;
  v25 = a1;
  v26 = a2;
  sub_27463946C();
}

uint64_t sub_274429E98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v19 = a5;
  v20 = a7;
  v21 = a1;
  v10 = *(a3 - 8);
  MEMORY[0x28223BE20](a1);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v14 = sub_27463C0AC();
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v19 - v15;
  v17 = sub_27463AF4C();
  MEMORY[0x277C575F0](v17);
  sub_27463C39C();
  (*(v10 + 8))(v12, a3);
  __swift_storeEnumTagSinglePayload(v16, 0, 1, AssociatedTypeWitness);
  v22[0] = a3;
  v22[1] = a4;
  v22[2] = v19;
  v22[3] = a6;
  v22[4] = v20;
  type metadata accessor for StackListRow(0, v22);
  return sub_2744251EC(v16);
}

uint64_t sub_27442A050(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  sub_27463B13C();
  sub_27463946C();
}

uint64_t sub_27442A0C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v12 = sub_27463C0AC();
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v17[-1] - v13;
  __swift_storeEnumTagSinglePayload(&v17[-1] - v13, 1, 1, AssociatedTypeWitness);
  v17[0] = a2;
  v17[1] = a3;
  v17[2] = a4;
  v17[3] = a5;
  v17[4] = a6;
  type metadata accessor for StackListRow(0, v17);
  return sub_2744251EC(v14);
}

uint64_t sub_27442A1CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v14 = sub_2746394DC();
  v59 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v57 = &v46 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v58 = &v46 - v17;
  v18 = sub_2746396BC();
  v55 = *(v18 - 8);
  v56 = v18;
  MEMORY[0x28223BE20](v18);
  v53 = a6;
  v54 = &v46 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = a2;
  v50 = a3;
  v60[0] = a2;
  v60[1] = a3;
  v51 = a4;
  v52 = a5;
  v60[2] = a4;
  v60[3] = a5;
  v60[4] = a6;
  v20 = type metadata accessor for StackListRow(0, v60);
  v21 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v23 = &v46 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094A910, &qword_274649778);
  v47 = *(v24 - 8);
  v48 = v24;
  MEMORY[0x28223BE20](v24);
  v26 = &v46 - v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094A908, &qword_274649770);
  MEMORY[0x28223BE20](v27);
  v29 = &v46 - v28;
  if (sub_2744253E8(v20))
  {
    (*(v21 + 16))(v23, a1, v20);
    v30 = *(v21 + 80);
    v46 = v14;
    v31 = a7;
    v32 = (v30 + 56) & ~v30;
    v33 = swift_allocObject();
    v34 = v50;
    v33[2] = v49;
    v33[3] = v34;
    v35 = v52;
    v33[4] = v51;
    v33[5] = v35;
    v33[6] = v53;
    v36 = v33 + v32;
    a7 = v31;
    (*(v21 + 32))(v36, v23, v20);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094A950, &unk_27465B740);
    sub_274433BDC();
    sub_27463AD5C();
    v37 = v54;
    sub_2746396AC();
    sub_274434E04(&qword_28094A918);
    sub_274433D44(&qword_280949470);
    v38 = v48;
    v39 = v56;
    sub_27463A69C();
    (*(v55 + 8))(v37, v39);
    (*(v47 + 8))(v26, v38);
    v40 = v58;
    sub_2746394CC();
    v41 = v59;
    v42 = v46;
    (*(v59 + 16))(v57, v40, v46);
    sub_274433D44(&unk_28094A980);
    v43 = sub_27463934C();
    (*(v41 + 8))(v40, v42);
    *&v29[*(v27 + 36)] = v43;
    sub_2743F5674();
    v44 = 0;
  }

  else
  {
    v44 = 1;
  }

  return __swift_storeEnumTagSinglePayload(a7, v44, 1, v27);
}

uint64_t sub_27442A730(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  sub_27463B14C();
  sub_27463946C();
}

uint64_t sub_27442A7D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v31 = a4;
  v32 = a6;
  v29 = a5;
  v30 = a3;
  v33[0] = a2;
  v33[1] = a3;
  v33[2] = a4;
  v33[3] = a5;
  v33[4] = a6;
  v8 = type metadata accessor for StackListRow(0, v33);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v28 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094A480, &qword_27464D1D0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v28 - v13;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v16 = sub_27463C0AC();
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v28 - v17;
  __swift_storeEnumTagSinglePayload(&v28 - v17, 1, 1, AssociatedTypeWitness);
  sub_27442504C(v18);
  v19 = sub_27463B9FC();
  __swift_storeEnumTagSinglePayload(v14, 1, 1, v19);
  (*(v9 + 16))(v11, a1, v8);
  sub_27463B9CC();
  v20 = sub_27463B9BC();
  v21 = (*(v9 + 80) + 72) & ~*(v9 + 80);
  v22 = swift_allocObject();
  v23 = MEMORY[0x277D85700];
  *(v22 + 2) = v20;
  *(v22 + 3) = v23;
  v24 = v30;
  v25 = v31;
  *(v22 + 4) = a2;
  *(v22 + 5) = v24;
  v26 = v29;
  *(v22 + 6) = v25;
  *(v22 + 7) = v26;
  *(v22 + 8) = v32;
  (*(v9 + 32))(&v22[v21], v11, v8);
  sub_27451222C();
}

uint64_t sub_27442AA70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a1;
  v4[3] = a4;
  sub_27463B9CC();
  v4[4] = sub_27463B9BC();
  v6 = sub_27463B96C();
  v4[5] = v6;
  v4[6] = v5;

  return MEMORY[0x2822009F8](sub_27442AB0C, v6, v5);
}

uint64_t sub_27442AB0C()
{
  v1 = *(v0 + 24);
  v2 = *v1;
  v3 = *((*MEMORY[0x277D85000] & *v1[1]) + 0xB0);
  v6 = (v3 + *v3);
  v4 = swift_task_alloc();
  *(v0 + 56) = v4;
  *v4 = v0;
  v4[1] = sub_27442AC40;

  return v6(v2);
}

uint64_t sub_27442AC40()
{
  OUTLINED_FUNCTION_79();
  v1 = *v0;
  OUTLINED_FUNCTION_70();
  *v3 = v2;
  v4 = *v0;
  OUTLINED_FUNCTION_70();
  *v5 = v4;
  *(v7 + 64) = v6;

  v8 = *(v1 + 48);
  v9 = *(v1 + 40);

  return MEMORY[0x2822009F8](sub_27442AD5C, v9, v8);
}

uint64_t sub_27442AD5C()
{
  OUTLINED_FUNCTION_79();
  v1 = *(v0 + 64);
  v2 = *(v0 + 16);

  *v2 = v1;
  OUTLINED_FUNCTION_92();

  return v3();
}

void *sub_27442ADC0@<X0>(uint64_t a1@<X8>)
{
  sub_27463B70C("Delete", 6);
  if (qword_2809492C0 != -1)
  {
    swift_once();
  }

  v2 = qword_28094BB00;
  v3 = sub_27463B66C();
  v4 = sub_27463B66C();

  v5 = [v2 localizedStringForKey:v3 value:v4 table:0];

  v6 = sub_27463B6AC();
  v8 = v7;

  __src[0] = v6;
  __src[1] = v8;
  sub_274412BBC();
  v9 = sub_27463A53C();
  v11 = v10;
  LOBYTE(v8) = v12;
  sub_27463A39C();
  sub_27463A3DC();
  sub_27463A42C();

  v13 = sub_27463A50C();
  v15 = v14;
  v17 = v16;

  sub_274412C10(v9, v11, v8 & 1);

  sub_27463AB8C();
  v18 = sub_27463A4DC();
  v20 = v19;
  v22 = v21;
  v24 = v23;

  sub_274412C10(v13, v15, v17 & 1);

  sub_27463B0CC();
  sub_27463973C();
  LOBYTE(v15) = v22 & 1;
  LOBYTE(v3) = sub_27463A31C();
  sub_2746390AC();
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v33 = sub_27463AB4C();
  v34 = sub_27463A32C();
  *a1 = v18;
  *(a1 + 8) = v20;
  *(a1 + 16) = v15;
  *(a1 + 24) = v24;
  result = memcpy((a1 + 32), __src, 0x70uLL);
  *(a1 + 144) = v3;
  *(a1 + 152) = v26;
  *(a1 + 160) = v28;
  *(a1 + 168) = v30;
  *(a1 + 176) = v32;
  *(a1 + 184) = 0;
  *(a1 + 192) = v33;
  *(a1 + 200) = v34;
  return result;
}

uint64_t sub_27442B06C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v71 = a8;
  v63 = a6;
  v70 = a5;
  v69 = a3;
  v68 = a2;
  v72 = a1;
  v73 = a9;
  v66 = *(a7 + 16);
  v61 = a7;
  swift_getAssociatedTypeWitness();
  sub_27463C0AC();
  v11 = sub_27463AF4C();
  MEMORY[0x28223BE20](v11 - 8);
  v67 = &v54 - v12;
  MEMORY[0x28223BE20](v13);
  v64 = &v54 - v14;
  v60 = a4;
  v65 = *(a4 - 8);
  MEMORY[0x28223BE20](v15);
  v62 = &v54 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094A898, &qword_274649720);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094A8A0, &qword_274649728);
  swift_getTupleTypeMetadata3();
  sub_27463B19C();
  v59 = MEMORY[0x277CE14C0];
  swift_getWitnessTable();
  sub_27463ADAC();
  sub_27463965C();
  sub_27463965C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094A8A8, &qword_274649730);
  sub_27463965C();
  type metadata accessor for DismissDeleteConfirmationModifier(255, a4, a7, v17);
  sub_27463965C();
  sub_27463965C();
  v18 = sub_27463965C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280951400, &unk_2746528C0);
  sub_27463965C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094A760, &qword_274649558);
  v19 = sub_27463965C();
  WitnessTable = swift_getWitnessTable();
  v94 = MEMORY[0x277CDF918];
  v91 = swift_getWitnessTable();
  v92 = MEMORY[0x277CDF748];
  v20 = swift_getWitnessTable();
  v21 = sub_274434E04(&unk_28094A8B0);
  v89 = v20;
  v90 = v21;
  v22 = swift_getWitnessTable();
  v23 = swift_getWitnessTable();
  v87 = v22;
  v88 = v23;
  v85 = swift_getWitnessTable();
  v86 = MEMORY[0x277CDF900];
  v83 = swift_getWitnessTable();
  v84 = MEMORY[0x277CDFC60];
  v24 = swift_getWitnessTable();
  v25 = sub_274434E04(&qword_28094A710);
  v81 = v24;
  v82 = v25;
  v26 = swift_getWitnessTable();
  v27 = sub_274434E04(&unk_28094A768);
  v79 = v26;
  v80 = v27;
  v28 = swift_getWitnessTable();
  v74 = v19;
  v75 = v28;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v74 = v19;
  v75 = v28;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v74 = OpaqueTypeMetadata2;
  v75 = OpaqueTypeConformance2;
  v31 = swift_getOpaqueTypeMetadata2();
  v74 = OpaqueTypeMetadata2;
  v75 = OpaqueTypeConformance2;
  v32 = swift_getOpaqueTypeConformance2();
  v74 = v18;
  v75 = v31;
  v76 = v24;
  v77 = v32;
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094A8B8, &qword_274649738);
  sub_27463965C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_28094A8C0, &qword_274649740);
  swift_getTupleTypeMetadata2();
  sub_27463B19C();
  swift_getWitnessTable();
  v33 = sub_27463AE6C();
  v56 = v33;
  v57 = swift_getWitnessTable();
  v74 = v33;
  v75 = v57;
  v58 = MEMORY[0x277CDEE98];
  v34 = swift_getOpaqueTypeMetadata2();
  v59 = *(v34 - 8);
  MEMORY[0x28223BE20](v34);
  v54 = &v54 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v36);
  v55 = &v54 - v37;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094E160, &qword_274649748);
  sub_274638C8C();
  *(swift_allocObject() + 16) = xmmword_274648570;
  sub_274638C7C();
  v38 = v60;
  v39 = sub_27463AF4C();
  v40 = v62;
  MEMORY[0x277C575F0](v39);
  v41 = v64;
  sub_27463C39C();
  (*(v65 + 8))(v40, v38);
  v42 = *(v69 + 8);
  v43 = v70;
  v74 = v38;
  v75 = v70;
  v44 = v61;
  v76 = v63;
  v77 = v61;
  v78 = v71;
  v45 = type metadata accessor for StackListRow(0, &v74);
  v46 = v67;
  sub_274425318(v45, MEMORY[0x277CE11E8]);
  v77 = type metadata accessor for ItemDropDelegate(0, v38, v43, v44);
  v78 = swift_getWitnessTable();
  v47 = __swift_allocate_boxed_opaque_existential_1(&v74);
  sub_27442BA6C(v41, v42, v46, v43, v47);
  v48 = swift_checkMetadataState();
  v49 = v54;
  v50 = v57;
  sub_27463A96C();

  __swift_destroy_boxed_opaque_existential_1(&v74);
  v74 = v48;
  v75 = v50;
  swift_getOpaqueTypeConformance2();
  v51 = v55;
  sub_2744E9688();
  v52 = *(v59 + 8);
  v52(v49, v34);
  sub_2744E9688();
  return (v52)(v51, v34);
}

id sub_27442BA6C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v11 = *(a4 + 80);
  v10 = *(a4 + 88);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 32))(a5, a1, AssociatedTypeWitness);
  v13 = type metadata accessor for ItemDropDelegate(0, v11, a4, v10);
  *(a5 + v13[11]) = a2;
  v14 = v13[12];
  sub_27463C0AC();
  v15 = sub_27463AF4C();
  (*(*(v15 - 8) + 32))(a5 + v14, a3, v15);
  v16 = v13[13];
  result = [objc_allocWithZone(WFDragFeedbackGenerator) init];
  *(a5 + v16) = result;
  return result;
}

uint64_t sub_27442BBA0()
{
  swift_getAssociatedTypeWitness();
  sub_27463C0AC();
  v0 = sub_27463AF4C();
  return MEMORY[0x277C575F0](v0);
}

BOOL sub_27442BC18()
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v1 = sub_27463C0AC();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v7 - v3;
  sub_27442BBA0();
  v5 = __swift_getEnumTagSinglePayload(v4, 1, AssociatedTypeWitness) != 1;
  (*(v2 + 8))(v4, v1);
  return v5;
}

uint64_t sub_27442BD58@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v5 = sub_27463939C();
  v6 = *(v5 - 8);
  *&v7 = MEMORY[0x28223BE20](v5).n128_u64[0];
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  [*(v2 + *(a1 + 52)) draggingPositionUpdated];
  (*(v6 + 104))(v9, *MEMORY[0x277CDD860], v5);
  sub_27463927C();
  v10 = sub_27463928C();
  return __swift_storeEnumTagSinglePayload(a2, 0, 1, v10);
}

uint64_t sub_27442BE68(uint64_t a1, uint64_t a2)
{
  v52 = *(a2 + 32);
  v4 = *(a2 + 16);
  v47 = *(v52 + 16);
  v51 = v4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v55 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v46 = &v45 - v6;
  v7 = sub_27463C0AC();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v49 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x28223BE20](TupleTypeMetadata2);
  v10 = &v45 - v9;
  v11 = *(v7 - 8);
  MEMORY[0x28223BE20](v12);
  v48 = (&v45 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v14);
  v16 = &v45 - v15;
  MEMORY[0x28223BE20](v17);
  v19 = &v45 - v18;
  v50 = a2;
  sub_27442BBA0();
  v20 = *(v55 + 2);
  v54 = v2;
  v20(v16, v2, AssociatedTypeWitness);
  __swift_storeEnumTagSinglePayload(v16, 0, 1, AssociatedTypeWitness);
  v21 = *(TupleTypeMetadata2 + 48);
  v53 = v11;
  v22 = *(v11 + 16);
  v22(v10, v16, v7);
  v56 = v19;
  v22(&v10[v21], v19, v7);
  if (__swift_getEnumTagSinglePayload(v10, 1, AssociatedTypeWitness) == 1)
  {
    v23 = *(v11 + 8);
    v23(v16, v7);
    if (__swift_getEnumTagSinglePayload(&v10[v21], 1, AssociatedTypeWitness) == 1)
    {
      v23(v10, v7);
      return (v23)(v56, v7);
    }
  }

  else
  {
    v24 = v48;
    v22(v48, v10, v7);
    if (__swift_getEnumTagSinglePayload(&v10[v21], 1, AssociatedTypeWitness) != 1)
    {
      v39 = v7;
      v40 = v55;
      v41 = v46;
      (*(v55 + 4))(v46, &v10[v21], AssociatedTypeWitness);
      swift_getAssociatedConformanceWitness();
      v42 = sub_27463B5BC();
      v43 = v24;
      v44 = v40[1];
      v44(v41, AssociatedTypeWitness);
      v23 = *(v11 + 8);
      v23(v16, v39);
      v44(v43, AssociatedTypeWitness);
      v7 = v39;
      v25 = (v23)(v10, v39);
      v26 = v54;
      if (v42)
      {
        return (v23)(v56, v7);
      }

      goto LABEL_7;
    }

    v23 = *(v11 + 8);
    v23(v16, v7);
    (*(v55 + 1))(v24, AssociatedTypeWitness);
  }

  v25 = (*(v49 + 8))(v10, TupleTypeMetadata2);
  v26 = v54;
LABEL_7:
  v55 = v23;
  v27 = v50;
  v48 = *((*MEMORY[0x277D85000] & **(v26 + *(v50 + 44))) + 0x70);
  v57 = (v48)(v25);
  MEMORY[0x28223BE20](v57);
  v28 = *(v27 + 24);
  v29 = v51;
  *(&v45 - 4) = v51;
  *(&v45 - 3) = v28;
  v49 = v28;
  v30 = v56;
  *(&v45 - 2) = v52;
  *(&v45 - 1) = v30;
  sub_27463B92C();
  swift_getWitnessTable();
  sub_27463BB2C();

  if ((v59 & 1) == 0)
  {
    v47 = v58;
    v32 = (v48)(v31);
    v48 = &v45;
    v57 = v32;
    MEMORY[0x28223BE20](v32);
    v33 = v49;
    *(&v45 - 4) = v29;
    *(&v45 - 3) = v33;
    v34 = v52;
    v35 = v54;
    *(&v45 - 2) = v52;
    *(&v45 - 1) = v35;
    sub_27463BB2C();

    if (v59 != 1)
    {
      v36 = v58;
      v37 = [*(v35 + *(v50 + 52)) draggingItemSnapped];
      MEMORY[0x28223BE20](v37);
      *(&v45 - 6) = v29;
      *(&v45 - 5) = v33;
      *(&v45 - 4) = v34;
      *(&v45 - 3) = v35;
      *(&v45 - 2) = v47;
      *(&v45 - 1) = v36;
      sub_27463B13C();
      sub_27463946C();
    }
  }

  v23 = v55;
  return (v23)(v56, v7);
}

uint64_t sub_27442C538(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v34 = a2;
  v6 = *(a5 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v32 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v29[0] = v29 - v8;
  v9 = sub_27463C0AC();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v30 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x28223BE20](TupleTypeMetadata2);
  v12 = v29 - v11;
  v13 = *(v9 - 8);
  MEMORY[0x28223BE20](v14);
  v33 = v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = v29 - v17;
  v29[1] = v6;
  v29[2] = a3;
  sub_27463C39C();
  __swift_storeEnumTagSinglePayload(v18, 0, 1, AssociatedTypeWitness);
  v31 = TupleTypeMetadata2;
  v19 = *(TupleTypeMetadata2 + 48);
  v20 = *(v13 + 16);
  v20(v12, v18, v9);
  v20(&v12[v19], v34, v9);
  if (__swift_getEnumTagSinglePayload(v12, 1, AssociatedTypeWitness) != 1)
  {
    v23 = v33;
    v20(v33, v12, v9);
    if (__swift_getEnumTagSinglePayload(&v12[v19], 1, AssociatedTypeWitness) != 1)
    {
      v24 = v32;
      v25 = v29[0];
      (*(v32 + 32))(v29[0], &v12[v19], AssociatedTypeWitness);
      swift_getAssociatedConformanceWitness();
      v22 = sub_27463B5BC();
      v26 = *(v24 + 8);
      v26(v25, AssociatedTypeWitness);
      v27 = *(v13 + 8);
      v27(v18, v9);
      v26(v33, AssociatedTypeWitness);
      v27(v12, v9);
      return v22 & 1;
    }

    (*(v13 + 8))(v18, v9);
    (*(v32 + 8))(v23, AssociatedTypeWitness);
    goto LABEL_6;
  }

  v21 = *(v13 + 8);
  v21(v18, v9);
  if (__swift_getEnumTagSinglePayload(&v12[v19], 1, AssociatedTypeWitness) != 1)
  {
LABEL_6:
    (*(v30 + 8))(v12, v31);
    v22 = 0;
    return v22 & 1;
  }

  v21(v12, v9);
  v22 = 1;
  return v22 & 1;
}

uint64_t sub_27442C954(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v8 = &v11 - v7;
  sub_27463C39C();
  swift_getAssociatedConformanceWitness();
  v9 = sub_27463B5BC();
  (*(v6 + 8))(v8, AssociatedTypeWitness);
  return v9 & 1;
}

uint64_t sub_27442CA9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  result = type metadata accessor for ItemDropDelegate(0, a4, a5, a6);
  v10 = *(a1 + *(result + 44));
  if (a2 >= a3)
  {
    return (*((*MEMORY[0x277D85000] & *v10) + 0xC8))(a2, a3);
  }

  if (!__OFADD__(a3++, 1))
  {
    return (*((*MEMORY[0x277D85000] & *v10) + 0xC8))(a2, a3);
  }

  __break(1u);
  return result;
}

void sub_27442CB60()
{
  swift_getAssociatedTypeWitness();
  sub_27463C0AC();
  sub_27463AF4C();

  JUMPOUT(0x277C575F0);
}

uint64_t sub_27442CBCC(uint64_t a1)
{
  swift_getAssociatedTypeWitness();
  v2 = sub_27463C0AC();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v7 - v5, a1, v2, v4);
  sub_27463AF4C();
  sub_27463AEBC();
  return (*(v3 + 8))(a1, v2);
}

uint64_t sub_27442CCE8@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v15[1] = a2;
  swift_getWitnessTable();
  sub_274639F5C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094AA60, &qword_274649898);
  v4 = sub_27463965C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = v15 - v9;
  v16 = *(a1 + 16);
  v17 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094AA68, &unk_2746498A0);
  WitnessTable = swift_getWitnessTable();
  sub_274434C8C();
  sub_27463B0CC();
  sub_27463A9BC();
  v12 = sub_274434E04(&unk_28094AA98);
  v18 = WitnessTable;
  v19 = v12;
  swift_getWitnessTable();
  sub_2744E9688();
  v13 = *(v5 + 8);
  v13(v7, v4);
  sub_2744E9688();
  return (v13)(v10, v4);
}

uint64_t sub_27442CF48@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, uint64_t a5@<X3>)
{
  v33 = a4;
  v8 = type metadata accessor for DismissDeleteConfirmationModifier(0, a2, a3, a5);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v28 = &v28 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094AAA0, &qword_2746498B8);
  v32 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v30 = a3;
  v31 = &v28 - v12;
  v29 = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v14 = sub_27463C0AC();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v28 - v16;
  sub_27442CB60();
  v18 = 1;
  LODWORD(AssociatedTypeWitness) = __swift_getEnumTagSinglePayload(v17, 1, AssociatedTypeWitness);
  v19 = v14;
  v20 = v33;
  (*(v15 + 8))(v17, v19);
  v21 = v11;
  if (AssociatedTypeWitness != 1)
  {
    v34 = sub_27463AB7C();
    v35 = 0;
    v22 = v28;
    (*(v9 + 16))(v28, a1, v8);
    v23 = (*(v9 + 80) + 32) & ~*(v9 + 80);
    v24 = swift_allocObject();
    v25 = v30;
    *(v24 + 16) = v29;
    *(v24 + 24) = v25;
    (*(v9 + 32))(v24 + v23, v22, v8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094AA78, &unk_27465B710);
    sub_274434D4C();
    v26 = v31;
    sub_27463A72C();

    (*(v32 + 32))(v20, v26, v21);
    v18 = 0;
  }

  return __swift_storeEnumTagSinglePayload(v20, v18, 1, v21);
}

uint64_t sub_27442D2C8(uint64_t a1)
{
  sub_27463B14C();
  sub_27463946C();
}

uint64_t sub_27442D348(uint64_t a1, uint64_t a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = sub_27463C0AC();
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v11 - v7;
  __swift_storeEnumTagSinglePayload(&v11 - v7, 1, 1, AssociatedTypeWitness);
  type metadata accessor for DismissDeleteConfirmationModifier(0, a2, a3, v9);
  return sub_27442CBCC(v8);
}

uint64_t sub_27442D460(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_2744336B0();

  return MEMORY[0x282130D40](a1, a2, a3, a4, v8);
}

void sub_27442D4C4()
{
  v1 = v0;
  v2 = sub_274639ABC();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [objc_allocWithZone(MEMORY[0x277D75B40]) initWithFrame:0 style:{0.0, 0.0, 0.0, 0.0}];
  v7 = objc_opt_self();
  v8 = v6;
  v9 = [v7 clearColor];
  [v8 setBackgroundColor_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094A4C0, &qword_274649258);
  sub_27463A1BC();
  v10 = v28;
  [v8 setDelegate_];

  sub_27463A1BC();
  v11 = v28;
  sub_27442EBFC(v8);

  v12 = *(v1 + 48);
  if (*(v1 + 56) == 1)
  {
    v13 = *(v1 + 48);
  }

  else
  {

    sub_27463BC0C();
    v14 = sub_27463A2FC();
    sub_274638CEC();

    sub_274639AAC();
    swift_getAtKeyPath();
    sub_2743F45E8(v12, 0);
    (*(v3 + 8))(v5, v2);
    v13 = *&v28;
  }

  [v8 setRowHeight_];
  [v8 setSeparatorStyle_];
  v15 = v8;
  [v15 setContentInsetAdjustmentBehavior_];
  [v15 setScrollEnabled_];
  [v15 setAlwaysBounceVertical_];

  [v15 setEditing_];
  [v15 setAllowsFocus_];
  [v15 setClipsToBounds_];

  [v15 setAllowsSelection_];
  [v15 setSelectionFollowsFocus_];
  [v15 setAllowsMultipleSelection_];
  [v15 setAllowsSelectionDuringEditing_];
  [v15 setAllowsMultipleSelectionDuringEditing_];

  v17 = sub_27442D918(v16);
  v18 = 0;
  v19 = v17 + 8;
  v20 = 1 << *(v17 + 32);
  v21 = -1;
  if (v20 < 64)
  {
    v21 = ~(-1 << v20);
  }

  v22 = v21 & v17[8];
  v23 = (v20 + 63) >> 6;
  if (v22)
  {
    goto LABEL_12;
  }

  while (1)
  {
    v24 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      break;
    }

    if (v24 >= v23)
    {

      return;
    }

    v22 = v19[v24];
    ++v18;
    if (v22)
    {
      v18 = v24;
      do
      {
LABEL_12:
        v22 &= v22 - 1;
        sub_274412734(0, &qword_28094A4C8, 0x277D75B48);
        ObjCClassFromMetadata = swift_getObjCClassFromMetadata();

        v26 = sub_27463B66C();

        [v15 registerClass:ObjCClassFromMetadata forCellReuseIdentifier:v26];
      }

      while (v22);
      continue;
    }
  }

  __break(1u);
}

void *sub_27442D918(uint64_t a1)
{
  v2 = 0;
  v3 = MEMORY[0x277D84F98];
  v31 = MEMORY[0x277D84F98];
  v4 = *(a1 + 16);
  v5 = a1 + 32;
  v28 = v4;
  while (1)
  {
    if (v4 == v2)
    {

      return v3;
    }

    if (v2 >= *(a1 + 16))
    {
      break;
    }

    sub_2744307DC(v5, __src);
    v7 = __src[6];
    v6 = __src[7];

    v9 = sub_274534C48(v7, v6);
    v10 = v3[2];
    v11 = (v8 & 1) == 0;
    v12 = v10 + v11;
    if (__OFADD__(v10, v11))
    {
      goto LABEL_19;
    }

    v13 = v8;
    if (v3[3] < v12)
    {
      sub_274430844(v12, 1);
      v3 = v31;
      v14 = sub_274534C48(v7, v6);
      if ((v13 & 1) != (v15 & 1))
      {
        goto LABEL_21;
      }

      v9 = v14;
    }

    if (v13)
    {

      v16 = v3[7];
      memcpy(__dst, __src, sizeof(__dst));
      v17 = *(v16 + 8 * v9);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v16 + 8 * v9) = v17;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_27444FE4C();
        v17 = v25;
        *(v16 + 8 * v9) = v25;
      }

      v19 = *(v17 + 16);
      if (v19 >= *(v17 + 24) >> 1)
      {
        sub_27444FE4C();
        v17 = v26;
        *(v16 + 8 * v9) = v26;
      }

      *(v17 + 16) = v19 + 1;
      memcpy((v17 + 80 * v19 + 32), __dst, 0x50uLL);
      v4 = v28;
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094A4E0, &qword_274649260);
      v20 = swift_allocObject();
      *(v20 + 16) = xmmword_274648570;
      memcpy((v20 + 32), __src, 0x50uLL);
      v3[(v9 >> 6) + 8] |= 1 << v9;
      v21 = (v3[6] + 16 * v9);
      *v21 = v7;
      v21[1] = v6;
      *(v3[7] + 8 * v9) = v20;
      v22 = v3[2];
      v23 = __OFADD__(v22, 1);
      v24 = v22 + 1;
      if (v23)
      {
        goto LABEL_20;
      }

      v3[2] = v24;
    }

    v5 += 80;
    ++v2;
  }

  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  result = sub_27463C71C();
  __break(1u);
  return result;
}

void sub_27442DB80(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094A4B8, &qword_274649250);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v64 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v64 - v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094A4C0, &qword_274649258);
  sub_27463A1BC();
  v11 = v73;
  sub_2744306B8((v1 + 1), v76);
  v12 = OBJC_IVAR____TtCV14WorkflowEditorP33_CD2E7F73860E12984BEFDB4AFFBF8AE011WFTableView11Coordinator_delegate;
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_1(&v11[v12]);
  sub_2743F45D0(v76, &v11[v12]);
  swift_endAccess();

  sub_27463A1BC();
  v13 = *&v76[0];
  v14 = *(*&v76[0] + OBJC_IVAR____TtCV14WorkflowEditorP33_CD2E7F73860E12984BEFDB4AFFBF8AE011WFTableView11Coordinator_dataSource);
  v15 = v14;

  if (v14)
  {
    if ([a1 isDragging])
    {
    }

    else
    {
      v72 = a1;
      v70 = v7;
      v16 = *v2;

      v66 = v15;
      sub_274638E4C();
      v68 = sub_274638DFC();
      v17 = *(v5 + 8);
      v71 = v4;
      v67 = v5 + 8;
      v65 = v17;
      v17(v10, v4);

      v69 = v16;
      v19 = sub_27442D918(v18);
      v20 = 0;
      v21 = v19 + 8;
      v22 = 1 << *(v19 + 32);
      v23 = -1;
      if (v22 < 64)
      {
        v23 = ~(-1 << v22);
      }

      v24 = v23 & v19[8];
      v25 = (v22 + 63) >> 6;
      if (v24)
      {
        goto LABEL_12;
      }

      while (1)
      {
        v26 = v20 + 1;
        if (__OFADD__(v20, 1))
        {
          __break(1u);
LABEL_52:
          __break(1u);
LABEL_53:
          __break(1u);
          return;
        }

        if (v26 >= v25)
        {
          break;
        }

        v24 = v21[v26];
        ++v20;
        if (v24)
        {
          v20 = v26;
          do
          {
LABEL_12:
            v24 &= v24 - 1;
            sub_274412734(0, &qword_28094A4C8, 0x277D75B48);
            ObjCClassFromMetadata = swift_getObjCClassFromMetadata();

            v28 = sub_27463B66C();

            [v72 registerClass:ObjCClassFromMetadata forCellReuseIdentifier:v28];
          }

          while (v24);
          continue;
        }
      }

      sub_27443071C();
      sub_274638E0C();
      v29 = v71;
      sub_274638DEC();
      v76[0] = 0uLL;
      v30 = v69;
      sub_274638DCC();
      v31 = *(v30 + 16);
      v32 = MEMORY[0x277D84F90];
      if (v31)
      {
        v81 = MEMORY[0x277D84F90];
        sub_27445124C(0, v31, 0);
        v33 = v81;
        v34 = v30 + 32;
        do
        {
          sub_2744307DC(v34, v76);
          sub_2744342DC();
          if (*(&v74 + 1))
          {
            v78 = v73;
            v79 = v74;
            v80 = v75;
          }

          else
          {
            sub_27440CB1C(&v73, &qword_28094A4B0, &unk_27465FF40);
            v73 = v77;

            sub_27463C31C();
          }

          sub_274430814(v76);
          v81 = v33;
          v36 = *(v33 + 16);
          v35 = *(v33 + 24);
          if (v36 >= v35 >> 1)
          {
            sub_27445124C((v35 > 1), v36 + 1, 1);
            v33 = v81;
          }

          *(v33 + 16) = v36 + 1;
          v37 = v33 + 40 * v36;
          v38 = v78;
          v39 = v79;
          *(v37 + 64) = v80;
          *(v37 + 32) = v38;
          *(v37 + 48) = v39;
          v34 += 80;
          --v31;
        }

        while (v31);
        v29 = v71;
        v32 = MEMORY[0x277D84F90];
      }

      else
      {
        v33 = MEMORY[0x277D84F90];
      }

      v40 = v68;
      v41 = *(v68 + 16);
      if (v41)
      {
        v81 = v32;
        sub_27445124C(0, v41, 0);
        v42 = v81;
        v43 = v40 + 32;
        do
        {
          sub_2744307DC(v43, v76);
          sub_2744342DC();
          if (*(&v74 + 1))
          {
            v78 = v73;
            v79 = v74;
            v80 = v75;
          }

          else
          {
            sub_27440CB1C(&v73, &qword_28094A4B0, &unk_27465FF40);
            v73 = v77;

            sub_27463C31C();
          }

          sub_274430814(v76);
          v81 = v42;
          v45 = *(v42 + 16);
          v44 = *(v42 + 24);
          if (v45 >= v44 >> 1)
          {
            sub_27445124C((v44 > 1), v45 + 1, 1);
            v42 = v81;
          }

          *(v42 + 16) = v45 + 1;
          v46 = v42 + 40 * v45;
          v47 = v78;
          v48 = v79;
          *(v46 + 64) = v80;
          *(v46 + 32) = v47;
          *(v46 + 48) = v48;
          v43 += 80;
          --v41;
        }

        while (v41);

        v29 = v71;
      }

      else
      {

        v42 = MEMORY[0x277D84F90];
      }

      v49 = sub_2744F5A48(v33, v42);

      v50 = v70;
      v51 = v66;
      v52 = v72;
      if (v49)
      {
        sub_27442E4B4();
        if (v53)
        {
          v54 = v53;
          v55 = [v52 visibleCells];
          sub_274412734(0, &qword_28094A4C8, 0x277D75B48);
          v56 = sub_27463B81C();

          v57 = sub_274453594();
          v58 = 0;
          while (v57 != v58)
          {
            if ((v56 & 0xC000000000000001) != 0)
            {
              v59 = MEMORY[0x277C58B20](v58, v56);
            }

            else
            {
              if (v58 >= *((v56 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_53;
              }

              v59 = *(v56 + 8 * v58 + 32);
            }

            v60 = v59;
            if (__OFADD__(v58, 1))
            {
              goto LABEL_52;
            }

            v61 = [v59 contentView];
            sub_274412734(0, &qword_28094A4D8, 0x277D75D18);
            v62 = sub_27463BD2C();

            ++v58;
            if (v62)
            {

              v69 = MEMORY[0x277D84F90];
              goto LABEL_47;
            }
          }

LABEL_47:

          v29 = v71;
          v50 = v70;
          v51 = v66;
        }

        v63 = v65;
        sub_274638DDC();

        sub_274638E3C();
      }

      else
      {

        sub_274638E1C();
        v63 = v65;
      }

      v63(v50, v29);
    }
  }
}

void *sub_27442E410@<X0>(uint64_t a1@<X8>)
{
  result = sub_2744342DC();
  if (*(&v7 + 1))
  {
    v4 = v7;
    *a1 = v6;
    *(a1 + 16) = v4;
    *(a1 + 32) = v8;
  }

  else
  {
    sub_27440CB1C(&v6, &qword_28094A4B0, &unk_27465FF40);
    v5 = *(v1 + 56);
    *&v6 = *(v1 + 48);
    *(&v6 + 1) = v5;

    return sub_27463C31C();
  }

  return result;
}

void sub_27442E4B4()
{
  if ([v0 isFirstResponder])
  {
    v1 = v0;
  }

  else
  {
    v2 = [v0 subviews];
    sub_274412734(0, &qword_28094A4D8, 0x277D75D18);
    v3 = sub_27463B81C();

    v4 = sub_274453594();
    v5 = 0;
    while (1)
    {
      if (v4 == v5)
      {
LABEL_10:

        return;
      }

      if ((v3 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x277C58B20](v5, v3);
      }

      else
      {
        if (v5 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_14;
        }

        v6 = *(v3 + 8 * v5 + 32);
      }

      v7 = v6;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      sub_27442E4B4();
      v9 = v8;

      ++v5;
      if (v9)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
  }
}

uint64_t sub_27442E5E4(uint64_t a1, char a2, uint64_t a3, uint64_t a4, id a5)
{
  [a5 contentSize];
  if (a2)
  {
    return 0;
  }

  else
  {
    return a1;
  }
}

id sub_27442E628()
{
  sub_2744306B8(v0 + 8, v3);
  v1 = objc_allocWithZone(type metadata accessor for WFTableView.Coordinator());
  return sub_27442E670(v3);
}

id sub_27442E670(void *a1)
{
  *&v1[OBJC_IVAR____TtCV14WorkflowEditorP33_CD2E7F73860E12984BEFDB4AFFBF8AE011WFTableView11Coordinator_dataSource] = 0;
  sub_2744306B8(a1, &v1[OBJC_IVAR____TtCV14WorkflowEditorP33_CD2E7F73860E12984BEFDB4AFFBF8AE011WFTableView11Coordinator_delegate]);
  v5.receiver = v1;
  v5.super_class = type metadata accessor for WFTableView.Coordinator();
  v3 = objc_msgSendSuper2(&v5, sel_init);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v3;
}

uint64_t sub_27442E6E0()
{
  v1 = OBJC_IVAR____TtCV14WorkflowEditorP33_CD2E7F73860E12984BEFDB4AFFBF8AE011WFTableView11Coordinator_delegate;
  swift_beginAccess();
  sub_2744306B8(v0 + v1, v7);
  v2 = v8;
  v3 = v9;
  __swift_project_boxed_opaque_existential_1(v7, v8);
  v4 = sub_27463807C();
  v5 = (*(v3 + 16))(v4, v2, v3);
  __swift_destroy_boxed_opaque_existential_1(v7);
  return v5 & 1;
}

uint64_t sub_27442E890(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v19 = a1;
  v5 = sub_2746380BC();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_27463807C();
  v10 = OBJC_IVAR____TtCV14WorkflowEditorP33_CD2E7F73860E12984BEFDB4AFFBF8AE011WFTableView11Coordinator_delegate;
  swift_beginAccess();
  sub_2744306B8(v3 + v10, v20);
  v11 = v21;
  v12 = v22;
  __swift_project_boxed_opaque_existential_1(v20, v21);
  LOBYTE(v10) = (*(v12 + 8))(v9, v11, v12);
  __swift_destroy_boxed_opaque_existential_1(v20);
  if (v10)
  {
    return MEMORY[0x277C547B0](v9, 0);
  }

  result = sub_27463807C();
  v14 = -1;
  if (result >= v9)
  {
    v14 = 1;
  }

  v15 = __OFADD__(v9, v14);
  v16 = v9 + v14;
  if (v15)
  {
    __break(1u);
  }

  else
  {
    v17 = sub_27463808C();
    MEMORY[0x277C547B0](v16, v17);
    sub_27442E890(v19, a2);
    return (*(v6 + 8))(v8, v5);
  }

  return result;
}

void sub_27442EBFC(void *a1)
{
  v2 = v1;
  v4 = objc_allocWithZone(type metadata accessor for WFTableView.Coordinator.DataSource(0));
  swift_unknownObjectWeakInit();
  v5 = a1;
  v6 = sub_274638E2C();
  swift_unknownObjectWeakAssign();
  v7 = *(v2 + OBJC_IVAR____TtCV14WorkflowEditorP33_CD2E7F73860E12984BEFDB4AFFBF8AE011WFTableView11Coordinator_dataSource);
  *(v2 + OBJC_IVAR____TtCV14WorkflowEditorP33_CD2E7F73860E12984BEFDB4AFFBF8AE011WFTableView11Coordinator_dataSource) = v6;
  v8 = v6;

  [v5 setDataSource_];
}

id sub_27442ECDC(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094A510, &qword_274649288);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v18[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v18[-1] - v10;
  sub_2744307DC(a3, v19);
  v12 = sub_27463B66C();
  v13 = [a1 dequeueReusableCellWithIdentifier_];

  if (v13)
  {
    v14 = [v13 setBackgroundColor_];
    MEMORY[0x28223BE20](v14);
    *(&v17 - 2) = v19;
    *(&v17 - 1) = v13;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094A518, &qword_274649290);
    sub_274431528();
    sub_274639FDC();
    sub_27463A32C();
    sub_274639FBC();
    v15 = *(v6 + 8);
    v15(v8, v5);
    v18[3] = v5;
    v18[4] = sub_274434E04(&unk_28094A558);
    __swift_allocate_boxed_opaque_existential_1(v18);
    sub_274639FCC();
    v15(v11, v5);
    MEMORY[0x277C583C0](v18);
    if (v19[64] == 1)
    {
      [v13 setSeparatorInset_];
    }
  }

  sub_274430814(v19);
  return v13;
}

uint64_t sub_27442EF7C@<X0>(uint64_t *a1@<X0>, uint64_t a3@<X8>)
{
  v4 = *a1;
  KeyPath = swift_getKeyPath();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  *(a3 + 24) = 0;
  *a3 = v4;
  *(a3 + 8) = KeyPath;
  *(a3 + 32) = 0xD00000000000001BLL;
  *(a3 + 40) = 0x8000000274688E00;
}

uint64_t sub_27442F00C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = objc_allocWithZone(v3);
  swift_unknownObjectWeakInit();
  return sub_274638E2C();
}

uint64_t sub_27442F06C()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = OBJC_IVAR____TtCV14WorkflowEditorP33_CD2E7F73860E12984BEFDB4AFFBF8AE011WFTableView11Coordinator_delegate;
    swift_beginAccess();
    sub_2744306B8(Strong + v1, v5);

    Strong = v6;
    v2 = v7;
    __swift_project_boxed_opaque_existential_1(v5, v6);
    v3 = sub_27463807C();
    LOBYTE(Strong) = (*(v2 + 8))(v3, Strong, v2);
    __swift_destroy_boxed_opaque_existential_1(v5);
  }

  return Strong & 1;
}

uint64_t sub_27442F14C()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = OBJC_IVAR____TtCV14WorkflowEditorP33_CD2E7F73860E12984BEFDB4AFFBF8AE011WFTableView11Coordinator_delegate;
    swift_beginAccess();
    sub_2744306B8(Strong + v1, v5);

    Strong = v6;
    v2 = v7;
    __swift_project_boxed_opaque_existential_1(v5, v6);
    v3 = sub_27463807C();
    LOBYTE(Strong) = (*(v2 + 32))(v3, Strong, v2);
    __swift_destroy_boxed_opaque_existential_1(v5);
  }

  return Strong & 1;
}

uint64_t sub_27442F22C(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t (*a5)(id, uint64_t))
{
  v8 = sub_2746380BC();
  OUTLINED_FUNCTION_1();
  v10 = v9;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_3_0();
  v14 = v13 - v12;
  sub_27463805C();
  v15 = a3;
  v16 = a1;
  LOBYTE(a5) = a5(v15, v14);

  (*(v10 + 8))(v14, v8);
  return a5 & 1;
}

void sub_27442F32C(uint64_t a1, uint64_t a2)
{
  if (a2 == 1)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v3 = Strong;
      v4 = OBJC_IVAR____TtCV14WorkflowEditorP33_CD2E7F73860E12984BEFDB4AFFBF8AE011WFTableView11Coordinator_delegate;
      swift_beginAccess();
      sub_2744306B8(v3 + v4, v8);

      v5 = v9;
      v6 = v10;
      __swift_project_boxed_opaque_existential_1(v8, v9);
      v7 = sub_27463807C();
      (*(v6 + 24))(v7, v5, v6);
      __swift_destroy_boxed_opaque_existential_1(v8);
    }
  }
}

uint64_t sub_27442F3F4(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_2746380BC();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_27463805C();
  v12 = a3;
  v13 = a1;
  sub_27442F32C(v12, a4);

  return (*(v9 + 8))(v11, v8);
}

void *sub_27442F504()
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v1 = result;
    v2 = OBJC_IVAR____TtCV14WorkflowEditorP33_CD2E7F73860E12984BEFDB4AFFBF8AE011WFTableView11Coordinator_delegate;
    swift_beginAccess();
    sub_2744306B8(v1 + v2, v7);

    v3 = v8;
    v4 = v9;
    __swift_project_boxed_opaque_existential_1(v7, v8);
    v5 = sub_27463807C();
    v6 = sub_27463807C();
    (*(v4 + 40))(v5, v6, v3, v4);
    return __swift_destroy_boxed_opaque_existential_1(v7);
  }

  return result;
}

uint64_t sub_27442F5DC(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v7 = sub_2746380BC();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v18 - v12;
  sub_27463805C();
  sub_27463805C();
  v14 = a3;
  v15 = a1;
  sub_27442F504();

  v16 = *(v8 + 8);
  v16(v10, v7);
  return (v16)(v13, v7);
}

id sub_27442F7D0(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1(0);
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t type metadata accessor for WFTableView.Coordinator.DataSource(uint64_t a1)
{
  result = qword_28094A3E0;
  if (!qword_28094A3E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_27442F928(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 80))
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

uint64_t sub_27442F968(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

__n128 __swift_memcpy57_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 41) = *(a2 + 41);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_27442F9E8(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 57))
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

uint64_t sub_27442FA28(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 57) = 1;
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

    *(result + 57) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_27442FA90(uint64_t a1)
{
  result = swift_getAssociatedTypeWitness();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_27442FB2C(_DWORD *a1, unsigned int a2)
{
  result = swift_getAssociatedTypeWitness();
  v5 = *(*(result - 8) + 84);
  if (v5 <= 0x7FFFFFFF)
  {
    v6 = 0x7FFFFFFF;
  }

  else
  {
    v6 = *(*(result - 8) + 84);
  }

  v7 = *(*(result - 8) + 64);
  if (!a2)
  {
    return 0;
  }

  if (v6 >= a2)
  {
LABEL_26:
    if (v5 < 0x7FFFFFFF)
    {
      v15 = *(((a1 + v7 + 7) & 0xFFFFFFFFFFFFFFF8) + 8);
      if (v15 >= 0xFFFFFFFF)
      {
        LODWORD(v15) = -1;
      }

      return (v15 + 1);
    }

    else
    {

      return __swift_getEnumTagSinglePayload(a1, v5, result);
    }
  }

  else
  {
    v8 = ((((v7 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 8;
    v9 = v8 & 0xFFFFFFF8;
    if ((v8 & 0xFFFFFFF8) != 0)
    {
      v10 = 2;
    }

    else
    {
      v10 = a2 - v6 + 1;
    }

    if (v10 >= 0x10000)
    {
      v11 = 4;
    }

    else
    {
      v11 = 2;
    }

    if (v10 < 0x100)
    {
      v11 = 1;
    }

    if (v10 >= 2)
    {
      v12 = v11;
    }

    else
    {
      v12 = 0;
    }

    switch(v12)
    {
      case 1:
        v13 = *(a1 + v8);
        if (!v13)
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 2:
        v13 = *(a1 + v8);
        if (!v13)
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 3:
        __break(1u);
        return result;
      case 4:
        v13 = *(a1 + v8);
        if (!v13)
        {
          goto LABEL_26;
        }

LABEL_22:
        v14 = v13 - 1;
        if (v9)
        {
          v14 = 0;
          LODWORD(v9) = *a1;
        }

        result = v6 + (v9 | v14) + 1;
        break;
      default:
        goto LABEL_26;
    }
  }

  return result;
}

void sub_27442FCC8(_DWORD *a1, uint64_t a2, unsigned int a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(*(AssociatedTypeWitness - 8) + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(*(AssociatedTypeWitness - 8) + 84);
  }

  v9 = *(*(AssociatedTypeWitness - 8) + 64);
  v10 = ((((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v8 >= a3)
  {
    v13 = 0;
  }

  else
  {
    if (((((v9 + 7) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v11 = a3 - v8 + 1;
    }

    else
    {
      v11 = 2;
    }

    if (v11 >= 0x10000)
    {
      v12 = 4;
    }

    else
    {
      v12 = 2;
    }

    if (v11 < 0x100)
    {
      v12 = 1;
    }

    if (v11 >= 2)
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }
  }

  if (a2 <= v8)
  {
    switch(v13)
    {
      case 1:
        *(a1 + v10) = 0;
        if (a2)
        {
          goto LABEL_32;
        }

        break;
      case 2:
        *(a1 + v10) = 0;
        if (a2)
        {
          goto LABEL_32;
        }

        break;
      case 3:
LABEL_42:
        __break(1u);
        break;
      case 4:
        *(a1 + v10) = 0;
        goto LABEL_31;
      default:
LABEL_31:
        if (a2)
        {
LABEL_32:
          if (v7 < 0x7FFFFFFF)
          {
            v16 = ((a1 + v9 + 7) & 0xFFFFFFFFFFFFFFF8);
            if ((a2 & 0x80000000) != 0)
            {
              *v16 = a2 & 0x7FFFFFFF;
              v16[1] = 0;
            }

            else
            {
              v16[1] = (a2 - 1);
            }
          }

          else
          {

            __swift_storeEnumTagSinglePayload(a1, a2, v7, AssociatedTypeWitness);
          }
        }

        break;
    }
  }

  else
  {
    if (((((v9 + 7) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v14 = a2 - v8;
    }

    else
    {
      v14 = 1;
    }

    if (((((v9 + 7) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) != 0xFFFFFFF8)
    {
      v15 = ~v8 + a2;
      bzero(a1, v10);
      *a1 = v15;
    }

    switch(v13)
    {
      case 1:
        *(a1 + v10) = v14;
        break;
      case 2:
        *(a1 + v10) = v14;
        break;
      case 3:
        goto LABEL_42;
      case 4:
        *(a1 + v10) = v14;
        break;
      default:
        return;
    }
  }
}