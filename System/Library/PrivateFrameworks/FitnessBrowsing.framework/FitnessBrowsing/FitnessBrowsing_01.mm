uint64_t sub_24B492FA0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  PlanBannerView = type metadata accessor for CreatePlanBannerView(0, a2, a3, a4);
  v12 = *(PlanBannerView - 8);
  MEMORY[0x28223BE20](PlanBannerView);
  v14 = &v18 - v13;
  (*(v12 + 16))(&v18 - v13, a1, PlanBannerView);
  v15 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = a2;
  *(v16 + 24) = a3;
  result = (*(v12 + 32))(v16 + v15, v14, PlanBannerView);
  *a6 = a5;
  a6[1] = v16;
  return result;
}

uint64_t sub_24B4930D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v39 = a8;
  v40 = a3;
  v36 = a6;
  v37 = a7;
  v34 = a2;
  v35 = a5;
  v41 = a1;
  v42 = a4;
  v38 = a9;
  v32 = sub_24B516FEC();
  v12 = *(v32 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v32);
  v31[0] = v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  PlanBannerView = type metadata accessor for CreatePlanBannerView(0, a3, a4, v14);
  v16 = *(PlanBannerView - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](PlanBannerView);
  v19 = v31 - v18;
  v43 = sub_24B5176DC();
  v33 = *(v16 + 16);
  v33(v19, a2, PlanBannerView);
  v20 = v32;
  (*(v12 + 16))(v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), v41, v32);
  v21 = *(v16 + 80);
  v22 = (v21 + 32) & ~v21;
  v31[1] = v21 | 7;
  v31[2] = v22 + v17;
  v23 = (v22 + v17 + *(v12 + 80)) & ~*(v12 + 80);
  v24 = swift_allocObject();
  v25 = v42;
  *(v24 + 16) = v40;
  *(v24 + 24) = v25;
  v26 = *(v16 + 32);
  v26(v24 + v22, v19, PlanBannerView);
  (*(v12 + 32))(v24 + v23, v31[0], v20);
  v45 = v43;
  v46 = v36;
  v48 = 0;
  v49 = 0;
  v47 = v24;
  sub_24B516FDC();
  v44 = v27;
  v33(v19, v34, PlanBannerView);
  v28 = swift_allocObject();
  v29 = v42;
  *(v28 + 16) = v40;
  *(v28 + 24) = v29;
  v26(v28 + v22, v19, PlanBannerView);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFC368, &qword_24B51A138);
  sub_24B496AE4();
  sub_24B496B68();
  sub_24B51767C();
}

uint64_t sub_24B4933D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_24B516FDC();
  v7 = v6;
  type metadata accessor for CreatePlanBannerView(0, a3, a4, v8);
  return sub_24B48D6F8(v7);
}

uint64_t CreatePlanBannerView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v150 = a2;
  v3 = sub_24B51720C();
  v137 = *(v3 - 8);
  v138 = v3;
  MEMORY[0x28223BE20](v3);
  v136 = &v111 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_24B51730C();
  v134 = *(v5 - 8);
  v135 = v5;
  v6 = MEMORY[0x28223BE20](v5);
  v133 = &v111 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v141 = a1;
  v149 = *(a1 - 8);
  MEMORY[0x28223BE20](v6);
  v147 = v8;
  v148 = &v111 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v132 = sub_24B51706C();
  MEMORY[0x28223BE20](v132);
  v131 = &v111 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v146 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFFC150, &qword_24B519E60);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFFC158, &qword_24B519E68);
  v152 = *(a1 + 16);
  sub_24B51724C();
  sub_24B51773C();
  swift_getTupleTypeMetadata3();
  sub_24B51792C();
  swift_getWitnessTable();
  sub_24B51780C();
  v10 = sub_24B51702C();
  v151 = MEMORY[0x277CE1198];
  WitnessTable = swift_getWitnessTable();
  v12 = MEMORY[0x277CDF918];
  v184 = WitnessTable;
  v185 = MEMORY[0x277CDF918];
  v13 = swift_getWitnessTable();
  *&v186[0] = v10;
  *(&v186[0] + 1) = v13;
  swift_getOpaqueTypeMetadata2();
  sub_24B51724C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFFC160, &qword_24B519E70);
  sub_24B51702C();
  swift_getTupleTypeMetadata2();
  sub_24B51792C();
  swift_getWitnessTable();
  sub_24B51780C();
  v14 = sub_24B51702C();
  v182 = swift_getWitnessTable();
  v183 = v12;
  v15 = swift_getWitnessTable();
  *&v186[0] = v14;
  *(&v186[0] + 1) = v15;
  swift_getOpaqueTypeMetadata2();
  sub_24B51724C();
  sub_24B51773C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFFC168, &qword_24B519E78);
  sub_24B51702C();
  swift_getTupleTypeMetadata2();
  sub_24B51792C();
  swift_getWitnessTable();
  sub_24B51780C();
  sub_24B51702C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFFC170, &qword_24B519E80);
  sub_24B51702C();
  sub_24B51702C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFFC178, &qword_24B519E88);
  sub_24B51702C();
  swift_getTupleTypeMetadata2();
  sub_24B51792C();
  swift_getWitnessTable();
  sub_24B5177EC();
  v144 = sub_24B51702C();
  v146 = sub_24B51724C();
  v16 = sub_24B51724C();
  v17 = sub_24B51773C();
  v122 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v121 = &v111 - v18;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFFC180, &qword_24B519E90);
  v19 = sub_24B51702C();
  v124 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v123 = &v111 - v20;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFFC188, &qword_24B519E98);
  v21 = sub_24B51702C();
  v129 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v127 = &v111 - v22;
  v23 = sub_24B51702C();
  v128 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v126 = &v111 - v24;
  v25 = swift_getWitnessTable();
  v26 = MEMORY[0x277CDFC60];
  v180 = v25;
  v181 = MEMORY[0x277CDFC60];
  v27 = swift_getWitnessTable();
  v28 = swift_getWitnessTable();
  v178 = v28;
  v179 = v26;
  v29 = swift_getWitnessTable();
  v176 = v27;
  v177 = v29;
  v174 = swift_getWitnessTable();
  v175 = v28;
  v120 = v16;
  v113 = swift_getWitnessTable();
  v173 = v113;
  v115 = v17;
  v30 = swift_getWitnessTable();
  v31 = sub_24B496A60(&qword_27EFFC190, &qword_27EFFC180, &qword_24B519E90, MEMORY[0x277CE0728]);
  v171 = v30;
  v172 = v31;
  v125 = v19;
  v32 = swift_getWitnessTable();
  v33 = sub_24B496A60(&qword_27EFFC198, &qword_27EFFC188, &qword_24B519E98, MEMORY[0x277CDF4F0]);
  v116 = v32;
  v169 = v32;
  v170 = v33;
  v130 = v21;
  v117 = swift_getWitnessTable();
  v167 = v117;
  v168 = MEMORY[0x277CE0790];
  v34 = swift_getWitnessTable();
  v146 = v23;
  *&v186[0] = v23;
  v151 = v34;
  *(&v186[0] + 1) = v34;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v119 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v118 = &v111 - v36;
  sub_24B51731C();
  v37 = sub_24B51702C();
  v38 = *(v37 - 8);
  v39 = MEMORY[0x28223BE20](v37);
  v41 = &v111 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v39);
  v43 = &v111 - v42;
  v44 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFFC1A0, &qword_24B519EA0);
  v144 = v37;
  v139 = v44;
  v45 = sub_24B51724C();
  v142 = *(v45 - 8);
  v143 = v45;
  MEMORY[0x28223BE20](v45);
  v140 = &v111 - v46;
  v47 = v141;
  v48 = v145;
  sub_24B48D750();
  swift_getKeyPath();
  sub_24B5179CC();

  if (LOBYTE(v186[0]) == 2)
  {
    sub_24B48D750();
    swift_getKeyPath();
    v112 = v38;
    sub_24B5179CC();

    v49 = v186[0];
    LOBYTE(v161) = v186[0];
    v111 = v30;
    v114 = *(v47 + 24);
    v50 = v114;
    v51 = sub_24B48D334(&v161, v186);
    MEMORY[0x28223BE20](v51);
    *(&v111 - 6) = v152;
    *(&v111 - 5) = v50;
    *(&v111 - 32) = v49;
    *(&v111 - 3) = v48;
    *(&v111 - 2) = v186;
    v52 = v121;
    sub_24B51772C();
    [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.109803922 green:0.109803922 blue:0.117647059 alpha:1.0];
    *&v161 = sub_24B51771C();
    sub_24B5173BC();
    v120 = v43;
    v53 = v123;
    v54 = v115;
    sub_24B51753C();

    (*(v122 + 8))(v52, v54);
    v55 = v188;
    v56 = *(v132 + 20);
    v57 = *MEMORY[0x277CE0118];
    v58 = sub_24B5171DC();
    v59 = *(*(v58 - 8) + 104);
    v122 = OpaqueTypeMetadata2;
    v60 = v131;
    v59(&v131[v56], v57, v58);
    *v60 = v55;
    v60[1] = v55;
    sub_24B4958E4(&qword_27EFFC1E0, MEMORY[0x277CDFC08], MEMORY[0x277CDFBF8]);
    v61 = v127;
    v62 = v125;
    sub_24B5176AC();
    sub_24B49592C(v60);
    (*(v124 + 8))(v53, v62);
    v64 = v148;
    v63 = v149;
    (*(v149 + 16))(v148, v48, v47);
    v65 = (*(v63 + 80) + 32) & ~*(v63 + 80);
    v66 = swift_allocObject();
    v67 = v114;
    *(v66 + 16) = v152;
    *(v66 + 24) = v67;
    (*(v63 + 32))(v66 + v65, v64, v47);
    v68 = v126;
    v69 = v130;
    sub_24B51766C();

    (*(v129 + 8))(v61, v69);
    v70 = v133;
    sub_24B5172FC();
    v71 = v118;
    v72 = v146;
    v73 = v151;
    sub_24B5175BC();
    (*(v134 + 8))(v70, v135);
    (*(v128 + 8))(v68, v72);
    v74 = v136;
    sub_24B5171EC();
    *&v161 = v72;
    *(&v161 + 1) = v73;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v76 = v122;
    sub_24B5175EC();
    (*(v137 + 8))(v74, v138);
    (*(v119 + 8))(v71, v76);
    v77 = sub_24B4958E4(&qword_27EFFC1A8, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
    v153 = OpaqueTypeConformance2;
    v154 = v77;
    v78 = v144;
    v79 = swift_getWitnessTable();
    v80 = v112;
    v81 = *(v112 + 16);
    v82 = v41;
    v83 = v120;
    v81(v120, v82, v78);
    v84 = *(v80 + 8);
    v84(v82, v78);
    v81(v82, v83, v78);
    v85 = sub_24B4956B0();
    v86 = v140;
    sub_24B48D144(v82, v78, v139, v79, v85);
    PlanBanner = type metadata accessor for CreatePlanBannerView.Layout(0, v152, v114, v87);
    (*(*(PlanBanner - 8) + 8))(v186, PlanBanner);
    v84(v82, v78);
    v84(v83, v78);
    v89 = v151;
  }

  else
  {
    v138 = sub_24B5176DC();
    sub_24B5178CC();
    sub_24B516FCC();
    v90 = v190;
    v136 = v191;
    v137 = v189;
    v91 = v192;
    v92 = v194;
    v135 = v193;
    v94 = v148;
    v93 = v149;
    v95 = v47;
    (*(v149 + 16))(v148, v48, v47);
    v96 = (*(v93 + 80) + 32) & ~*(v93 + 80);
    v97 = swift_allocObject();
    v98 = *(v95 + 24);
    *(v97 + 16) = v152;
    *(v97 + 24) = v98;
    (*(v93 + 32))(v97 + v96, v94, v95);
    *&v161 = v138;
    *(&v161 + 1) = v137;
    LOBYTE(v162) = v90;
    *(&v162 + 1) = v136;
    LOBYTE(v163) = v91;
    *(&v163 + 1) = v135;
    *&v164 = v92;
    *(&v164 + 1) = sub_24B497120;
    v165 = v97;
    v166 = 0;
    v72 = v146;
    *&v186[0] = v146;
    v89 = v151;
    *(&v186[0] + 1) = v151;
    v99 = swift_getOpaqueTypeConformance2();
    v100 = sub_24B4958E4(&qword_27EFFC1A8, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
    v159 = v99;
    v160 = v100;
    v101 = v144;
    v102 = swift_getWitnessTable();
    v103 = sub_24B4956B0();
    v86 = v140;
    sub_24B48D23C(&v161, v101, v139, v102, v103);
    v186[2] = v163;
    v186[3] = v164;
    v186[4] = v165;
    v187 = v166;
    v186[0] = v161;
    v186[1] = v162;
    sub_24B49689C(v186, &qword_27EFFC1A0, &qword_24B519EA0);
  }

  *&v161 = v72;
  *(&v161 + 1) = v89;
  v104 = swift_getOpaqueTypeConformance2();
  v105 = sub_24B4958E4(&qword_27EFFC1A8, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
  v157 = v104;
  v158 = v105;
  v106 = swift_getWitnessTable();
  v107 = sub_24B4956B0();
  v155 = v106;
  v156 = v107;
  v108 = v143;
  swift_getWitnessTable();
  v109 = v142;
  (*(v142 + 16))(v150, v86, v108);
  return (*(v109 + 8))(v86, v108);
}

uint64_t sub_24B49480C@<X0>(int a1@<W0>, void (*a2)(char *, uint64_t)@<X1>, void (*a3)(char *, uint64_t)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v95 = a4;
  v96 = a5;
  v98 = a3;
  v99 = a2;
  v97 = a1;
  v105 = a6;
  v108 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFFC170, &qword_24B519E80);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFFC158, &qword_24B519E68);
  sub_24B51724C();
  sub_24B51773C();
  swift_getTupleTypeMetadata3();
  sub_24B51792C();
  swift_getWitnessTable();
  sub_24B51780C();
  sub_24B51702C();
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277CDF918];
  v137[2] = WitnessTable;
  v137[3] = MEMORY[0x277CDF918];
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_24B51724C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFFC160, &qword_24B519E70);
  sub_24B51702C();
  swift_getTupleTypeMetadata2();
  sub_24B51792C();
  swift_getWitnessTable();
  sub_24B51780C();
  v8 = sub_24B51702C();
  v135 = swift_getWitnessTable();
  v136 = v7;
  v137[0] = v8;
  v137[1] = swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_24B51724C();
  sub_24B51773C();
  sub_24B51702C();
  sub_24B51702C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFFC178, &qword_24B519E88);
  sub_24B51702C();
  swift_getTupleTypeMetadata2();
  sub_24B51792C();
  swift_getWitnessTable();
  v9 = sub_24B5177EC();
  v92 = *(v9 - 8);
  v10 = MEMORY[0x28223BE20](v9);
  v12 = &v88 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v94 = &v88 - v13;
  v14 = sub_24B51702C();
  v88 = *(v14 - 8);
  v15 = MEMORY[0x28223BE20](v14);
  v17 = &v88 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v90 = &v88 - v18;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFFC150, &qword_24B519E60);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFFC168, &qword_24B519E78);
  sub_24B51702C();
  swift_getTupleTypeMetadata2();
  sub_24B51792C();
  swift_getWitnessTable();
  v19 = sub_24B51780C();
  v20 = sub_24B51702C();
  v104 = v14;
  v21 = sub_24B51724C();
  v93 = *(v21 - 8);
  v22 = MEMORY[0x28223BE20](v21);
  v91 = &v88 - v23;
  v24 = *(v19 - 8);
  v25 = MEMORY[0x28223BE20](v22);
  v27 = &v88 - v26;
  v102 = v20;
  v28 = *(v20 - 8);
  v29 = MEMORY[0x28223BE20](v25);
  v31 = &v88 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v89 = &v88 - v32;
  v103 = v33;
  v106 = v9;
  v34 = sub_24B51724C();
  v100 = *(v34 - 8);
  v101 = v34;
  MEMORY[0x28223BE20](v34);
  v36 = &v88 - v35;
  PlanBannerView = type metadata accessor for CreatePlanBannerView(0, v95, v96, v37);
  v107 = v19;
  v108 = v36;
  if (v97)
  {
    v39 = MEMORY[0x277CDFC60];
    if (v97 == 1)
    {
      LOBYTE(v137[0]) = 1;
      v40 = v94;
      sub_24B491F68(v98, v137, PlanBannerView, sub_24B496844, v94);
      sub_24B5178CC();
      v41 = v106;
      v42 = swift_getWitnessTable();
      v99 = v42;
      sub_24B51763C();
      (*(v92 + 8))(v40, v41);
      v119 = v42;
      v120 = v39;
      v43 = v104;
      v44 = swift_getWitnessTable();
      v45 = v88;
      v46 = *(v88 + 16);
      v47 = v90;
      v46(v90, v17, v43);
      v98 = *(v45 + 8);
      v98(v17, v43);
      v46(v17, v47, v43);
      v117 = swift_getWitnessTable();
      v118 = MEMORY[0x277CDFC60];
      v48 = v102;
      v49 = swift_getWitnessTable();
      v50 = v91;
      sub_24B48D23C(v17, v48, v43, v49, v44);
      v115 = v49;
      v116 = v44;
      v51 = v103;
      v52 = swift_getWitnessTable();
      sub_24B48D144(v50, v51, v106, v52, v99);
      (*(v93 + 8))(v50, v51);
      v53 = v98;
      v98(v17, v43);
      v53(v90, v43);
    }

    else
    {
      LOBYTE(v137[0]) = 2;
      sub_24B491F68(v98, v137, PlanBannerView, sub_24B496BBC, v12);
      v68 = v106;
      v69 = swift_getWitnessTable();
      v99 = v69;
      v70 = v92;
      v71 = *(v92 + 16);
      v72 = v94;
      v71(v94, v12, v68);
      v73 = *(v70 + 8);
      v73(v12, v68);
      v71(v12, v72, v68);
      v133 = swift_getWitnessTable();
      v134 = v39;
      v74 = swift_getWitnessTable();
      v131 = v69;
      v132 = v39;
      v75 = swift_getWitnessTable();
      v129 = v74;
      v130 = v75;
      v76 = v103;
      v77 = swift_getWitnessTable();
      sub_24B48D23C(v12, v76, v68, v77, v99);
      v73(v12, v68);
      v73(v94, v68);
    }
  }

  else
  {
    LOBYTE(v137[0]) = 0;
    v54 = MEMORY[0x277CDFC60];
    sub_24B49133C(v98, v137, PlanBannerView, v27);
    sub_24B5178CC();
    v87 = swift_getWitnessTable();
    sub_24B51763C();
    (*(v24 + 8))(v27, v19);
    v113 = v87;
    v114 = v54;
    v55 = v102;
    v56 = swift_getWitnessTable();
    v57 = *(v28 + 16);
    v58 = v89;
    v57(v89, v31, v55);
    v99 = *(v28 + 8);
    v99(v31, v55);
    v57(v31, v58, v55);
    v59 = v106;
    v60 = swift_getWitnessTable();
    v111 = v60;
    v112 = MEMORY[0x277CDFC60];
    v61 = v104;
    v62 = swift_getWitnessTable();
    v63 = v91;
    sub_24B48D144(v31, v55, v61, v56, v62);
    v109 = v56;
    v110 = v62;
    v64 = v103;
    v65 = swift_getWitnessTable();
    sub_24B48D144(v63, v64, v59, v65, v60);
    (*(v93 + 8))(v63, v64);
    v66 = v31;
    v67 = v99;
    v99(v66, v55);
    v67(v89, v55);
  }

  v78 = v105;
  v127 = swift_getWitnessTable();
  v79 = MEMORY[0x277CDFC60];
  v128 = MEMORY[0x277CDFC60];
  v80 = swift_getWitnessTable();
  v81 = swift_getWitnessTable();
  v125 = v81;
  v126 = v79;
  v82 = swift_getWitnessTable();
  v123 = v80;
  v124 = v82;
  v121 = swift_getWitnessTable();
  v122 = v81;
  v83 = v101;
  swift_getWitnessTable();
  v84 = v100;
  v85 = v108;
  (*(v100 + 16))(v78, v108, v83);
  return (*(v84 + 8))(v85, v83);
}

uint64_t sub_24B495658(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for CreatePlanBannerView(0, a2, a3, a4);
  sub_24B48D750();
  sub_24B5179DC();
}

unint64_t sub_24B4956B0()
{
  result = qword_27EFFC1B0;
  if (!qword_27EFFC1B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFFC1A0, &qword_24B519EA0);
    sub_24B495768(&qword_27EFFC1B8, &qword_27EFFC1C0, &qword_24B519EC8, sub_24B4957EC);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFC1B0);
  }

  return result;
}

uint64_t sub_24B495768(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
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

unint64_t sub_24B4957EC()
{
  result = qword_27EFFC1C8;
  if (!qword_27EFFC1C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFFC1D0, &qword_24B519ED0);
    sub_24B495878();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFC1C8);
  }

  return result;
}

unint64_t sub_24B495878()
{
  result = qword_27EFFC1D8;
  if (!qword_27EFFC1D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFC1D8);
  }

  return result;
}

uint64_t sub_24B4958E4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_24B49592C(uint64_t a1)
{
  v2 = sub_24B51706C();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24B495990(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(v4 + 16);
  v7 = *(v4 + 24);
  v8 = *(type metadata accessor for CreatePlanBannerView(0, v6, v7, a4) - 8);
  return sub_24B495658(v4 + ((*(v8 + 80) + 32) & ~*(v8 + 80)), v6, v7, a1);
}

void sub_24B495A94(uint64_t a1)
{
  sub_24B495F3C();
  if (v1 <= 0x3F)
  {
    sub_24B495F8C(319);
    if (v2 <= 0x3F)
    {
      swift_checkMetadataState();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_24B495B34(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (v5 <= 0x7FFFFFFE)
  {
    v7 = 2147483646;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v8 = a2 - v7;
  if (a2 <= v7)
  {
    goto LABEL_26;
  }

  v9 = ((v6 + 33) & ~v6) + *(*(*(a3 + 16) - 8) + 64);
  v10 = 8 * v9;
  if (v9 <= 3)
  {
    v13 = ((v8 + ~(-1 << v10)) >> v10) + 1;
    if (HIWORD(v13))
    {
      v11 = *(a1 + v9);
      if (!v11)
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 > 0xFF)
    {
      v11 = *(a1 + v9);
      if (!*(a1 + v9))
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 < 2)
    {
LABEL_26:
      if (v5 > 0x7FFFFFFE)
      {
        return (*(v4 + 48))((((a1 + 23) & 0xFFFFFFFFFFFFFFF8) + v6 + 17) & ~v6);
      }

      v15 = *(a1 + 1);
      if (v15 >= 0xFFFFFFFF)
      {
        LODWORD(v15) = -1;
      }

      v16 = v15 - 1;
      if (v16 < 0)
      {
        v16 = -1;
      }

      return (v16 + 1);
    }
  }

  v11 = *(a1 + v9);
  if (!*(a1 + v9))
  {
    goto LABEL_26;
  }

LABEL_15:
  v14 = (v11 - 1) << v10;
  if (v9 > 3)
  {
    v14 = 0;
  }

  if (v9)
  {
    if (v9 > 3)
    {
      LODWORD(v9) = 4;
    }

    if (v9 > 2)
    {
      if (v9 == 3)
      {
        LODWORD(v9) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v9) = *a1;
      }
    }

    else if (v9 == 1)
    {
      LODWORD(v9) = *a1;
    }

    else
    {
      LODWORD(v9) = *a1;
    }
  }

  return v7 + (v9 | v14) + 1;
}

void sub_24B495CD4(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFE)
  {
    v8 = 2147483646;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(v6 + 80);
  v10 = ((v9 + 33) & ~v9) + *(*(*(a4 + 16) - 8) + 64);
  v11 = a3 >= v8;
  v12 = a3 - v8;
  if (v12 != 0 && v11)
  {
    if (v10 <= 3)
    {
      v16 = ((v12 + ~(-1 << (8 * v10))) >> (8 * v10)) + 1;
      if (HIWORD(v16))
      {
        v13 = 4;
      }

      else
      {
        if (v16 < 0x100)
        {
          v17 = 1;
        }

        else
        {
          v17 = 2;
        }

        if (v16 >= 2)
        {
          v13 = v17;
        }

        else
        {
          v13 = 0;
        }
      }
    }

    else
    {
      v13 = 1;
    }
  }

  else
  {
    v13 = 0;
  }

  if (v8 < a2)
  {
    v14 = ~v8 + a2;
    if (v10 < 4)
    {
      v15 = (v14 >> (8 * v10)) + 1;
      if (v10)
      {
        v18 = v14 & ~(-1 << (8 * v10));
        bzero(a1, v10);
        if (v10 != 3)
        {
          if (v10 == 2)
          {
            *a1 = v18;
            if (v13 > 1)
            {
LABEL_46:
              if (v13 == 2)
              {
                *&a1[v10] = v15;
              }

              else
              {
                *&a1[v10] = v15;
              }

              return;
            }
          }

          else
          {
            *a1 = v14;
            if (v13 > 1)
            {
              goto LABEL_46;
            }
          }

          goto LABEL_43;
        }

        *a1 = v18;
        a1[2] = BYTE2(v18);
      }

      if (v13 > 1)
      {
        goto LABEL_46;
      }
    }

    else
    {
      bzero(a1, v10);
      *a1 = v14;
      v15 = 1;
      if (v13 > 1)
      {
        goto LABEL_46;
      }
    }

LABEL_43:
    if (v13)
    {
      a1[v10] = v15;
    }

    return;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *&a1[v10] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    }

    *&a1[v10] = 0;
  }

  else if (v13)
  {
    a1[v10] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_31;
  }

  if (!a2)
  {
    return;
  }

LABEL_31:
  if (v7 > 0x7FFFFFFE)
  {
    v19 = *(v6 + 56);
    v20 = (((a1 + 23) & 0xFFFFFFFFFFFFFFF8) + v9 + 17) & ~v9;

    v19(v20);
  }

  else if (a2 > 0x7FFFFFFE)
  {
    *a1 = a2 - 0x7FFFFFFF;
    *(a1 + 1) = 0;
  }

  else
  {
    *(a1 + 1) = a2;
  }
}

void sub_24B495F3C()
{
  if (!qword_2810ED750)
  {
    v0 = sub_24B5177BC();
    if (!v1)
    {
      atomic_store(v0, &qword_2810ED750);
    }
  }
}

void sub_24B495F8C(uint64_t a1)
{
  if (!qword_2810ED7A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_27EFFC1E8, qword_24B519F68);
    sub_24B496A60(&qword_2810ED730, qword_27EFFC1E8, qword_24B519F68, MEMORY[0x277D04410]);
    v1 = sub_24B516F8C();
    if (!v2)
    {
      atomic_store(v1, &qword_2810ED7A0);
    }
  }
}

uint64_t sub_24B496030(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 __swift_memcpy128_8(uint64_t a1, __int128 *a2)
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
  v7 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v7;
  *(a1 + 64) = result;
  *(a1 + 80) = v6;
  return result;
}

uint64_t sub_24B49609C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 128))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 40);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_24B4960E4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 120) = 0;
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
      *(result + 128) = 1;
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

    *(result + 128) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_24B496154()
{
  result = qword_27EFFC278;
  if (!qword_27EFFC278)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFFC150, &qword_24B519E60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFC278);
  }

  return result;
}

unint64_t sub_24B496228()
{
  result = qword_27EFFC280;
  if (!qword_27EFFC280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFC280);
  }

  return result;
}

uint64_t sub_24B49627C(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

unint64_t sub_24B4962E0()
{
  result = qword_27EFFC288;
  if (!qword_27EFFC288)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFFC158, &qword_24B519E68);
    sub_24B496A60(&qword_27EFFC290, &qword_27EFFC298, &qword_24B51A050, MEMORY[0x277CDF028]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFC288);
  }

  return result;
}

uint64_t sub_24B496398(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

unint64_t sub_24B4963C4()
{
  result = qword_27EFFC2B0;
  if (!qword_27EFFC2B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFFC2A8, &qword_24B51A080);
    sub_24B49647C();
    sub_24B496A60(&qword_27EFFC2F8, &qword_27EFFC300, &qword_24B51A0A8, MEMORY[0x277CE0740]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFC2B0);
  }

  return result;
}

unint64_t sub_24B49647C()
{
  result = qword_27EFFC2B8;
  if (!qword_27EFFC2B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFFC2C0, &qword_24B51A088);
    sub_24B496534();
    sub_24B496A60(&qword_27EFFC2E8, &qword_27EFFC2F0, &qword_24B51A0A0, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFC2B8);
  }

  return result;
}

unint64_t sub_24B496534()
{
  result = qword_27EFFC2C8;
  if (!qword_27EFFC2C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFFC2D0, &qword_24B51A090);
    sub_24B496A60(&qword_27EFFC2D8, &qword_27EFFC2E0, &qword_24B51A098, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFC2C8);
  }

  return result;
}

uint64_t sub_24B4965EC(uint64_t a1)
{
  v2 = sub_24B51747C();
  MEMORY[0x28223BE20](v2);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_24B51709C();
}

uint64_t objectdestroy_33Tm()
{

  return swift_deallocObject();
}

uint64_t sub_24B496724(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

unint64_t sub_24B49678C()
{
  result = qword_27EFFC310;
  if (!qword_27EFFC310)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFFC160, &qword_24B519E70);
    sub_24B496A60(&qword_27EFFC318, &qword_27EFFC320, &qword_24B51A118, MEMORY[0x277CE1198]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFC310);
  }

  return result;
}

uint64_t sub_24B49689C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t sub_24B496938()
{
  result = qword_27EFFC350;
  if (!qword_27EFFC350)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFFC170, &qword_24B519E80);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFFC328, &qword_24B51A120);
    sub_24B495768(&qword_27EFFC330, &qword_27EFFC328, &qword_24B51A120, sub_24B496154);
    swift_getOpaqueTypeConformance2();
    sub_24B496A60(&qword_27EFFC358, &qword_27EFFC360, &qword_24B51A130, MEMORY[0x277CDF4F0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFC350);
  }

  return result;
}

uint64_t sub_24B496A60(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
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

unint64_t sub_24B496AE4()
{
  result = qword_27EFFC370;
  if (!qword_27EFFC370)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFFC368, &qword_24B51A138);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFC370);
  }

  return result;
}

unint64_t sub_24B496B68()
{
  result = qword_27EFFC378;
  if (!qword_27EFFC378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFC378);
  }

  return result;
}

uint64_t sub_24B496C60@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v13 = *(v6 + 16);
  v14 = *(v6 + 24);
  v15 = *(type metadata accessor for CreatePlanBannerView(0, v13, v14, a4) - 8);
  return sub_24B4930D4(a1, v6 + ((*(v15 + 80) + 32) & ~*(v15 + 80)), v13, v14, a2, a3, a4, a5, a6);
}

uint64_t objectdestroy_42Tm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v6 = (type metadata accessor for CreatePlanBannerView(0, v5, *(v4 + 24), a4) - 8);
  v7 = (*(*v6 + 80) + 32) & ~*(*v6 + 80);
  v8 = *(*v6 + 64);
  v9 = sub_24B516FEC();
  v10 = *(v9 - 8);
  v11 = (v7 + v8 + *(v10 + 80)) & ~*(v10 + 80);
  v12 = v4 + v7;

  sub_24B4956A8(*(v12 + 16), *(v12 + 24));
  (*(*(v5 - 8) + 8))(v12 + v6[12], v5);
  (*(v10 + 8))(v4 + v11, v9);

  return swift_deallocObject();
}

uint64_t sub_24B496EA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v6 = *(v4 + 24);
  v7 = *(type metadata accessor for CreatePlanBannerView(0, v5, v6, a4) - 8);
  v8 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v9 = *(v7 + 64);
  v10 = *(sub_24B516FEC() - 8);
  return sub_24B4933D4(v4 + v8, v4 + ((v8 + v9 + *(v10 + 80)) & ~*(v10 + 80)), v5, v6);
}

uint64_t objectdestroy_3Tm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v6 = (type metadata accessor for CreatePlanBannerView(0, v5, *(v4 + 24), a4) - 8);
  v7 = v4 + ((*(*v6 + 80) + 32) & ~*(*v6 + 80));

  sub_24B4956A8(*(v7 + 16), *(v7 + 24));
  (*(*(v5 - 8) + 8))(v7 + v6[12], v5);

  return swift_deallocObject();
}

uint64_t sub_24B497144()
{
  if (*v0)
  {
    return 0x6F5465726F6E6769;
  }

  else
  {
    return 0x746C7561666564;
  }
}

uint64_t sub_24B497184@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x746C7561666564 && a2 == 0xE700000000000000;
  if (v6 || (sub_24B517EEC() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6F5465726F6E6769 && a2 == 0xE900000000000070)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_24B517EEC();

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

uint64_t sub_24B497268(uint64_t a1)
{
  v2 = sub_24B49768C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B4972A4(uint64_t a1)
{
  v2 = sub_24B49768C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B4972E0(uint64_t a1)
{
  v2 = sub_24B497734();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B49731C(uint64_t a1)
{
  v2 = sub_24B497734();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B497358(uint64_t a1)
{
  v2 = sub_24B4976E0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B497394(uint64_t a1)
{
  v2 = sub_24B4976E0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t BrowseInsetBehavior.encode(to:)(void *a1, int a2)
{
  v18 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFC388, &qword_24B51A150);
  v16 = *(v3 - 8);
  v17 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v15 - v4;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFC390, &qword_24B51A158);
  v6 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v8 = &v15 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFC398, &qword_24B51A160);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v15 - v11;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B49768C();
  sub_24B517FDC();
  v13 = (v10 + 8);
  if (v18)
  {
    v20 = 1;
    sub_24B4976E0();
    sub_24B517E3C();
    (*(v16 + 8))(v5, v17);
  }

  else
  {
    v19 = 0;
    sub_24B497734();
    sub_24B517E3C();
    (*(v6 + 8))(v8, v15);
  }

  return (*v13)(v12, v9);
}

unint64_t sub_24B49768C()
{
  result = qword_27EFFC3A0;
  if (!qword_27EFFC3A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFC3A0);
  }

  return result;
}

unint64_t sub_24B4976E0()
{
  result = qword_27EFFC3A8;
  if (!qword_27EFFC3A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFC3A8);
  }

  return result;
}

unint64_t sub_24B497734()
{
  result = qword_27EFFC3B0;
  if (!qword_27EFFC3B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFC3B0);
  }

  return result;
}

uint64_t sub_24B4977A4@<X0>(_BYTE *a1@<X8>, void *a2@<X0>)
{
  result = sub_24B497860(a2);
  if (!v2)
  {
    *a1 = result & 1;
  }

  return result;
}

uint64_t BrowseInsetBehavior.hashValue.getter(char a1)
{
  sub_24B517F7C();
  MEMORY[0x24C241D70](a1 & 1);
  return sub_24B517FBC();
}

uint64_t sub_24B497860(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFC3F8, &qword_24B51A4D0);
  v23 = *(v2 - 8);
  v24 = v2;
  MEMORY[0x28223BE20](v2);
  v4 = &v21 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFC400, &qword_24B51A4D8);
  v22 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v21 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFC408, &unk_24B51A4E0);
  v25 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v21 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B49768C();
  v11 = v26;
  sub_24B517FCC();
  if (v11)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v26 = a1;
  v12 = v24;
  v13 = sub_24B517E1C();
  v14 = (2 * *(v13 + 16)) | 1;
  v27 = v13;
  v28 = v13 + 32;
  v29 = 0;
  v30 = v14;
  v15 = sub_24B4A39B0();
  if (v15 == 2 || v29 != v30 >> 1)
  {
    v17 = sub_24B517D0C();
    swift_allocError();
    v19 = v18;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFBFA8, &unk_24B5191B0);
    *v19 = &type metadata for BrowseInsetBehavior;
    sub_24B517D8C();
    sub_24B517CFC();
    (*(*(v17 - 8) + 104))(v19, *MEMORY[0x277D84160], v17);
    swift_willThrow();
    (*(v25 + 8))(v10, v8);
    swift_unknownObjectRelease();
    a1 = v26;
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v31 = v15;
  if (v15)
  {
    v32 = 1;
    sub_24B4976E0();
    sub_24B517D7C();
    v16 = v25;
    (*(v23 + 8))(v4, v12);
  }

  else
  {
    v32 = 0;
    sub_24B497734();
    sub_24B517D7C();
    v16 = v25;
    (*(v22 + 8))(v7, v5);
  }

  (*(v16 + 8))(v10, v8);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v26);
  return v31 & 1;
}

unint64_t sub_24B497D20()
{
  result = qword_27EFFC3B8;
  if (!qword_27EFFC3B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFC3B8);
  }

  return result;
}

unint64_t sub_24B497DA8()
{
  result = qword_27EFFC3C0;
  if (!qword_27EFFC3C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFC3C0);
  }

  return result;
}

unint64_t sub_24B497E00()
{
  result = qword_27EFFC3C8;
  if (!qword_27EFFC3C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFC3C8);
  }

  return result;
}

unint64_t sub_24B497E58()
{
  result = qword_27EFFC3D0;
  if (!qword_27EFFC3D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFC3D0);
  }

  return result;
}

unint64_t sub_24B497EB0()
{
  result = qword_27EFFC3D8;
  if (!qword_27EFFC3D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFC3D8);
  }

  return result;
}

unint64_t sub_24B497F08()
{
  result = qword_27EFFC3E0;
  if (!qword_27EFFC3E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFC3E0);
  }

  return result;
}

unint64_t sub_24B497F60()
{
  result = qword_27EFFC3E8;
  if (!qword_27EFFC3E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFC3E8);
  }

  return result;
}

unint64_t sub_24B497FB8()
{
  result = qword_27EFFC3F0;
  if (!qword_27EFFC3F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFC3F0);
  }

  return result;
}

uint64_t NewAndFeaturedState.init(contentMargins:densityFactor:items:locale:sectionLayout:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v35 = *a5;
  v34 = *(a5 + 8);
  v19 = sub_24B516E2C();
  (*(*(v19 - 8) + 32))(a9, a1, v19);
  v37 = a6;
  v38 = a7;
  v20 = a7;
  v39 = a8;
  v40 = a10;
  v21 = a8;
  v41 = a11;
  v42 = a12;
  v43 = a13;
  v44 = a14;
  v22 = type metadata accessor for NewAndFeaturedState(0, &v37);
  v23 = v22[21];
  v24 = sub_24B516D4C();
  (*(*(v24 - 8) + 32))(a9 + v23, a2, v24);
  v32 = v22[22];
  v37 = a6;
  v38 = v20;
  v39 = v21;
  v40 = a10;
  v41 = a11;
  v42 = a12;
  v43 = a13;
  v44 = a14;
  type metadata accessor for NewAndFeaturedDataItem(255, &v37);
  swift_getWitnessTable();
  sub_24B516E6C();
  sub_24B517B8C();
  swift_getWitnessTable();
  swift_getWitnessTable();
  v25 = sub_24B51798C();
  (*(*(v25 - 8) + 32))(a9 + v32, a3, v25);
  v26 = v22[23];
  v27 = sub_24B516C4C();
  result = (*(*(v27 - 8) + 32))(a9 + v26, a4, v27);
  v29 = a9 + v22[24];
  *v29 = v35;
  *(v29 + 8) = v34;
  return result;
}

uint64_t sub_24B498278(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x4D746E65746E6F63 && a2 == 0xEE00736E69677261;
  if (v4 || (sub_24B517EEC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x46797469736E6564 && a2 == 0xED0000726F746361 || (sub_24B517EEC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x736D657469 && a2 == 0xE500000000000000 || (sub_24B517EEC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x656C61636F6CLL && a2 == 0xE600000000000000 || (sub_24B517EEC() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x4C6E6F6974636573 && a2 == 0xED000074756F7961)
  {

    return 4;
  }

  else
  {
    v6 = sub_24B517EEC();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_24B498470(unsigned __int8 a1)
{
  sub_24B517F7C();
  MEMORY[0x24C241D70](a1);
  return sub_24B517FBC();
}

uint64_t sub_24B4984B8(unsigned __int8 a1)
{
  v1 = 0x4D746E65746E6F63;
  v2 = 0x736D657469;
  v3 = 0x656C61636F6CLL;
  if (a1 != 3)
  {
    v3 = 0x4C6E6F6974636573;
  }

  if (a1 != 2)
  {
    v2 = v3;
  }

  if (a1)
  {
    v1 = 0x46797469736E6564;
  }

  if (a1 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_24B498624(uint64_t a1)
{
  sub_24B517F7C();
  sub_24B498448(v3, *v1);
  return sub_24B517FBC();
}

uint64_t sub_24B4986B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_24B498278(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_24B4986FC@<X0>(_BYTE *a2@<X8>)
{
  result = sub_24B49A068();
  *a2 = result;
  return result;
}

uint64_t sub_24B498738(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_24B49878C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t NewAndFeaturedState.encode(to:)(void *a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  v5 = *(a2 + 32);
  v6 = *(a2 + 40);
  v7 = *(a2 + 48);
  v8 = *(a2 + 56);
  v9 = *(a2 + 64);
  v10 = *(a2 + 72);
  v35 = *(a2 + 16);
  v45 = v35;
  v46 = v4;
  v32 = v4;
  v31 = v5;
  v47 = v5;
  v48 = v6;
  v30 = v6;
  v29 = v7;
  v49 = v7;
  v50 = v8;
  v33 = v8;
  v34 = v9;
  v51 = v9;
  v52 = v10;
  v28 = v10;
  type metadata accessor for NewAndFeaturedState.CodingKeys(255, &v45);
  swift_getWitnessTable();
  v11 = sub_24B517ECC();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = v27 - v13;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v15 = v11;
  v16 = v36;
  sub_24B517FDC();
  LOBYTE(v45) = 0;
  sub_24B516E2C();
  sub_24B499E40(&qword_27EFFC410, MEMORY[0x277D096F0], MEMORY[0x277D096F8]);
  v17 = v37;
  sub_24B517EBC();
  if (v17)
  {
    return (*(v12 + 8))(v14, v15);
  }

  v19 = v35;
  v37 = v12;
  LOBYTE(v45) = 1;
  sub_24B516D4C();
  sub_24B499E40(&qword_27EFFC418, MEMORY[0x277D09688], MEMORY[0x277D09690]);
  sub_24B517EBC();
  v27[1] = *(a2 + 88);
  v53 = 2;
  v20 = v33;
  v45 = v19;
  v46 = v32;
  v47 = v31;
  v48 = v30;
  v49 = v29;
  v50 = v33;
  v21 = v34;
  v51 = v34;
  v52 = v28;
  type metadata accessor for NewAndFeaturedDataItem(255, &v45);
  swift_getWitnessTable();
  sub_24B516E6C();
  v35 = v15;
  sub_24B517B8C();
  WitnessTable = swift_getWitnessTable();
  swift_getWitnessTable();
  sub_24B51798C();
  v43 = v20;
  v42 = swift_getWitnessTable();
  v22 = swift_getWitnessTable();
  v41 = v21;
  v23 = v35;
  v40 = swift_getWitnessTable();
  v24 = swift_getWitnessTable();
  v38 = v22;
  v39 = v24;
  swift_getWitnessTable();
  sub_24B517EBC();
  LOBYTE(v45) = 3;
  sub_24B516C4C();
  sub_24B499E40(&qword_27EFFC420, MEMORY[0x277CC9788], MEMORY[0x277CC9790]);
  sub_24B517EBC();
  v25 = (v16 + *(a2 + 96));
  v26 = *v25;
  LOBYTE(v25) = *(v25 + 8);
  v45 = v26;
  LOBYTE(v46) = v25;
  v53 = 4;
  sub_24B498D48();
  sub_24B517EBC();
  return (*(v37 + 8))(v14, v23);
}

unint64_t sub_24B498D48()
{
  result = qword_27EFFC428;
  if (!qword_27EFFC428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFC428);
  }

  return result;
}

uint64_t NewAndFeaturedState.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char *a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, char *a10)
{
  v81 = a8;
  v79 = a6;
  v83 = a1;
  v60 = a9;
  v78 = a10;
  v63 = sub_24B516C4C();
  v66 = *(v63 - 8);
  MEMORY[0x28223BE20](v63);
  v61 = &v60 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v91 = a2;
  v92 = a3;
  v18 = a2;
  v19 = a3;
  v93 = a4;
  v94 = a5;
  v95 = a6;
  v96 = a7;
  v20 = a7;
  v82 = a7;
  v97 = a8;
  v98 = a10;
  type metadata accessor for NewAndFeaturedDataItem(255, &v91);
  swift_getWitnessTable();
  v21 = sub_24B516E6C();
  v22 = sub_24B517B8C();
  v73 = v21;
  WitnessTable = swift_getWitnessTable();
  swift_getWitnessTable();
  v72 = v22;
  v64 = sub_24B51798C();
  v65 = *(v64 - 8);
  MEMORY[0x28223BE20](v64);
  v62 = &v60 - v23;
  v68 = sub_24B516D4C();
  v67 = *(v68 - 8);
  MEMORY[0x28223BE20](v68);
  v70 = &v60 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = sub_24B516E2C();
  v69 = *(v75 - 8);
  MEMORY[0x28223BE20](v75);
  v71 = &v60 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = v18;
  v91 = v18;
  v92 = v19;
  v27 = v19;
  v28 = a4;
  v93 = a4;
  v94 = a5;
  v29 = a5;
  v30 = v78;
  v31 = v79;
  v95 = v79;
  v96 = v20;
  v32 = v81;
  v97 = v81;
  v98 = v78;
  type metadata accessor for NewAndFeaturedState.CodingKeys(255, &v91);
  v77 = swift_getWitnessTable();
  v76 = sub_24B517E2C();
  v74 = *(v76 - 8);
  MEMORY[0x28223BE20](v76);
  v34 = &v60 - v33;
  v91 = v26;
  v92 = v27;
  v93 = v28;
  v94 = v29;
  v95 = v31;
  v96 = v82;
  v97 = v32;
  v98 = v30;
  v35 = v83;
  v36 = type metadata accessor for NewAndFeaturedState(0, &v91);
  v37 = *(v36 - 1);
  MEMORY[0x28223BE20](v36);
  v39 = &v60 - v38;
  __swift_project_boxed_opaque_existential_1(v35, v35[3]);
  v79 = v34;
  v40 = v80;
  sub_24B517FCC();
  if (v40)
  {
    return __swift_destroy_boxed_opaque_existential_1(v83);
  }

  v41 = v70;
  v80 = v37;
  v42 = v82;
  v78 = v39;
  LOBYTE(v91) = 0;
  sub_24B499E40(&qword_27EFFC430, MEMORY[0x277D096F0], MEMORY[0x277D09710]);
  v43 = v71;
  v44 = v75;
  sub_24B517E0C();
  v45 = v44;
  v46 = v78;
  (*(v69 + 32))(v78, v43, v45);
  LOBYTE(v91) = 1;
  sub_24B499E40(&qword_27EFFC438, MEMORY[0x277D09688], MEMORY[0x277D096A0]);
  v47 = v41;
  v48 = v68;
  sub_24B517E0C();
  (*(v67 + 32))(&v46[v36[21]], v47, v48);
  LOBYTE(v91) = 2;
  v90 = v42;
  v89 = swift_getWitnessTable();
  v49 = swift_getWitnessTable();
  v88 = v81;
  v87 = swift_getWitnessTable();
  v50 = swift_getWitnessTable();
  v85 = v49;
  v86 = v50;
  v51 = v64;
  swift_getWitnessTable();
  v52 = v62;
  sub_24B517E0C();
  (*(v65 + 32))(&v78[v36[22]], v52, v51);
  LOBYTE(v91) = 3;
  sub_24B499E40(&qword_27EFFC440, MEMORY[0x277CC9788], MEMORY[0x277CC97A8]);
  v53 = v61;
  v54 = v63;
  sub_24B517E0C();
  (*(v66 + 32))(&v78[v36[23]], v53, v54);
  v84 = 4;
  sub_24B499880();
  sub_24B517E0C();
  (*(v74 + 8))(v79, v76);
  v55 = v92;
  v56 = v78;
  v57 = &v78[v36[24]];
  *v57 = v91;
  v57[8] = v55;
  v58 = v80;
  (*(v80 + 16))(v60, v56, v36);
  __swift_destroy_boxed_opaque_existential_1(v83);
  return (*(v58 + 8))(v56, v36);
}

unint64_t sub_24B499880()
{
  result = qword_27EFFC448;
  if (!qword_27EFFC448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFC448);
  }

  return result;
}

uint64_t static NewAndFeaturedState.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if ((MEMORY[0x24C240C00]() & 1) == 0)
  {
    return 0;
  }

  v25 = a3;
  v26 = a4;
  v27 = a5;
  v28 = a6;
  v29 = a7;
  v30 = a8;
  v31 = a9;
  v32 = a10;
  v24 = type metadata accessor for NewAndFeaturedState(0, &v25);
  if ((sub_24B516D0C() & 1) == 0)
  {
    return 0;
  }

  v25 = a3;
  v26 = a4;
  v27 = a5;
  v28 = a6;
  v29 = a7;
  v30 = a8;
  v31 = a9;
  v32 = a10;
  type metadata accessor for NewAndFeaturedDataItem(255, &v25);
  swift_getWitnessTable();
  sub_24B516E6C();
  sub_24B517B8C();
  swift_getWitnessTable();
  swift_getWitnessTable();
  if ((sub_24B51796C() & 1) == 0 || (MEMORY[0x24C240A20](a1 + *(v24 + 92), a2 + *(v24 + 92)) & 1) == 0)
  {
    return 0;
  }

  v18 = *(v24 + 96);
  v19 = (a1 + v18);
  v20 = *(a1 + v18 + 8);
  v21 = (a2 + v18);
  v22 = *(a2 + v18 + 8);
  if (v20)
  {
    if ((v22 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (*v19 != *v21)
    {
      v22 = 1;
    }

    if (v22)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t NewAndFeaturedState.hash(into:)(uint64_t a1, uint64_t a2)
{
  sub_24B516E2C();
  sub_24B499E40(&qword_27EFFC450, MEMORY[0x277D096F0], MEMORY[0x277D09700]);
  sub_24B517A9C();
  sub_24B516D4C();
  sub_24B499E40(&qword_27EFFC458, MEMORY[0x277D09688], MEMORY[0x277D09698]);
  sub_24B517A9C();
  v4 = *(a2 + 32);
  v9[0] = *(a2 + 16);
  v9[1] = v4;
  v5 = *(a2 + 64);
  v9[2] = *(a2 + 48);
  v9[3] = v5;
  type metadata accessor for NewAndFeaturedDataItem(255, v9);
  swift_getWitnessTable();
  sub_24B516E6C();
  sub_24B517B8C();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_24B51798C();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_24B51797C();
  sub_24B516C4C();
  sub_24B499E40(qword_27EFFC460, MEMORY[0x277CC9788], MEMORY[0x277CC9798]);
  sub_24B517A9C();
  v6 = v2 + *(a2 + 96);
  if (*(v6 + 8))
  {
    v7 = 1;
  }

  else
  {
    v7 = *v6;
    MEMORY[0x24C241D70](0);
  }

  return MEMORY[0x24C241D70](v7);
}

uint64_t NewAndFeaturedState.hashValue.getter(uint64_t a1)
{
  sub_24B517F7C();
  NewAndFeaturedState.hash(into:)(v3, a1);
  return sub_24B517FBC();
}

uint64_t sub_24B499DC0(uint64_t a1, uint64_t a2)
{
  sub_24B517F7C();
  NewAndFeaturedState.hash(into:)(v4, a2);
  return sub_24B517FBC();
}

uint64_t sub_24B499E40(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t getEnumTagSinglePayload for BrowseTextAlignment(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 4;
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

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for BrowseTextAlignment(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_24B49A070(uint64_t a1, unsigned __int8 a2)
{
  sub_24B517B3C();
}

uint64_t sub_24B49A1D4(uint64_t a1, unsigned __int8 a2)
{
  sub_24B517B3C();
}

uint64_t BrowseItem.artworkOverlayTags.getter()
{
  type metadata accessor for BrowseItem(0);
}

uint64_t BrowseItem.healthKitActivityTypes.getter()
{
  type metadata accessor for BrowseItem(0);
}

uint64_t BrowseItem.identifier.getter()
{
  v1 = *(v0 + *(type metadata accessor for BrowseItem(0) + 52));

  return v1;
}

uint64_t BrowseItem.recencyTag.getter()
{
  v1 = *(v0 + *(type metadata accessor for BrowseItem(0) + 64));

  return v1;
}

uint64_t BrowseItem.referenceIdentifier.getter()
{
  v1 = *(v0 + *(type metadata accessor for BrowseItem(0) + 68));

  return v1;
}

uint64_t BrowseItem.sampleContentIdentifier.getter()
{
  v1 = *(v0 + *(type metadata accessor for BrowseItem(0) + 76));

  return v1;
}

void BrowseItem.subtitleTextAttribute.getter(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for BrowseItem(0) + 84);
  v4 = *v3;
  v5 = *(v3 + 8);
  v6 = *(v3 + 16);
  v7 = *(v3 + 24);
  v8 = *(v3 + 32);
  v9 = *(v3 + 40);
  *a1 = *v3;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6;
  *(a1 + 24) = v7;
  *(a1 + 32) = v8;
  *(a1 + 40) = v9;
  *(a1 + 48) = *(v3 + 48);

  sub_24B49A6F8(v4, v5, v6, v7, v8, v9);
}

void sub_24B49A6F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a6 != 1)
  {
    sub_24B49A73C(a1, a2, a3, a4);
  }
}

uint64_t sub_24B49A73C(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 a4)
{
  if (a4 != 0xFF)
  {
    return sub_24B49A750(a1, a2, a3, a4);
  }

  return a1;
}

uint64_t sub_24B49A750(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 a4)
{
  if (a4 <= 2u)
  {
  }

  return result;
}

void BrowseItem.titleTextAttribute.getter(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for BrowseItem(0) + 92);
  v4 = *v3;
  v5 = *(v3 + 8);
  v6 = *(v3 + 16);
  v7 = *(v3 + 24);
  v8 = *(v3 + 32);
  v9 = *(v3 + 40);
  *a1 = *v3;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6;
  *(a1 + 24) = v7;
  *(a1 + 32) = v8;
  *(a1 + 40) = v9;
  *(a1 + 48) = *(v3 + 48);

  sub_24B49A6F8(v4, v5, v6, v7, v8, v9);
}

__n128 BrowseItem.init(actionTitle:artworkDescriptor:artworkOverlayTags:assetLoadStatus:bookmarked:caption:displayStyle:dynamicBrickDisplayStyle:healthKitActivityTypes:identifier:link:mediaType:recencyTag:referenceIdentifier:referenceType:sampleContentIdentifier:subtitle:subtitleTextAttribute:title:titleTextAttribute:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, char a5@<W4>, uint64_t a6@<X5>, char a7@<W6>, char a8@<W7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25)
{
  v44 = *(a23 + 40);
  v45 = *(a23 + 32);
  v43 = *(a23 + 48);
  v47 = *(a25 + 40);
  v48 = *(a25 + 32);
  v46 = *(a25 + 48);
  sub_24B49AA90(a1, a9, &qword_27EFFC4E8, &qword_24B51F380);
  v29 = type metadata accessor for BrowseItem(0);
  sub_24B49AA90(a2, a9 + v29[5], &qword_27EFFC4F0, &qword_24B51C3C0);
  *(a9 + v29[6]) = a3;
  *(a9 + v29[7]) = a4;
  *(a9 + v29[8]) = a5;
  sub_24B49AA90(a6, a9 + v29[9], &qword_27EFFC4E8, &qword_24B51F380);
  *(a9 + v29[10]) = a7;
  *(a9 + v29[11]) = a8;
  *(a9 + v29[12]) = a10;
  v30 = (a9 + v29[13]);
  *v30 = a11;
  v30[1] = a12;
  sub_24B49AA90(a13, a9 + v29[14], &qword_27EFFC4F8, &qword_24B51A700);
  *(a9 + v29[15]) = a14;
  v31 = (a9 + v29[16]);
  *v31 = a15;
  v31[1] = a16;
  v32 = (a9 + v29[17]);
  *v32 = a17;
  v32[1] = a18;
  *(a9 + v29[18]) = a19;
  v33 = (a9 + v29[19]);
  *v33 = a20;
  v33[1] = a21;
  sub_24B49AA90(a22, a9 + v29[20], &qword_27EFFC4E8, &qword_24B51F380);
  v34 = a9 + v29[21];
  v35 = *(a23 + 16);
  *v34 = *a23;
  *(v34 + 16) = v35;
  *(v34 + 32) = v45;
  *(v34 + 40) = v44;
  *(v34 + 48) = v43;
  sub_24B49AA90(a24, a9 + v29[22], &qword_27EFFC4E8, &qword_24B51F380);
  v36 = a9 + v29[23];
  result = *a25;
  v38 = *(a25 + 16);
  *v36 = *a25;
  *(v36 + 16) = v38;
  *(v36 + 32) = v48;
  *(v36 + 40) = v47;
  *(v36 + 48) = v46;
  return result;
}

uint64_t sub_24B49AA90(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

unint64_t sub_24B49AAF8(char a1)
{
  result = 0x69546E6F69746361;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000011;
      break;
    case 2:
      result = 0xD000000000000012;
      break;
    case 3:
      result = 0x616F4C7465737361;
      break;
    case 4:
      result = 0x6B72616D6B6F6F62;
      break;
    case 5:
      result = 0x6E6F6974706163;
      break;
    case 6:
      result = 0x5379616C70736964;
      break;
    case 7:
      result = 0xD000000000000018;
      break;
    case 8:
      result = 0xD000000000000016;
      break;
    case 9:
      result = 0x696669746E656469;
      break;
    case 10:
      result = 1802398060;
      break;
    case 11:
      result = 0x707954616964656DLL;
      break;
    case 12:
      result = 0x5479636E65636572;
      break;
    case 13:
      result = 0xD000000000000013;
      break;
    case 14:
      result = 0x636E657265666572;
      break;
    case 15:
      result = 0xD000000000000017;
      break;
    case 16:
      result = 0x656C746974627573;
      break;
    case 17:
      result = 0xD000000000000015;
      break;
    case 18:
      result = 0x656C746974;
      break;
    case 19:
      result = 0xD000000000000012;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_24B49AD6C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_24B49F294(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_24B49ADA0(uint64_t a1)
{
  v2 = sub_24B49B58C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B49ADDC(uint64_t a1)
{
  v2 = sub_24B49B58C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t BrowseItem.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFC500, &qword_24B51A708);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v25 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B49B58C();
  sub_24B517FDC();
  LOBYTE(v26) = 0;
  sub_24B516B8C();
  sub_24B47B60C(&qword_27EFFC510, MEMORY[0x277CC8C40], MEMORY[0x277CC8C48]);
  sub_24B517E6C();
  if (!v2)
  {
    v25 = type metadata accessor for BrowseItem(0);
    LOBYTE(v26) = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFC4F0, &qword_24B51C3C0);
    sub_24B49C804(&qword_27EFFC518, MEMORY[0x277D09DB8]);
    sub_24B517EBC();
    v9 = v25;
    v26 = *(v3 + v25[6]);
    v33 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFC520, &qword_24B51A710);
    sub_24B49C854(&qword_27EFFC528, sub_24B49B5E0, MEMORY[0x277D83B50]);
    sub_24B517EBC();
    LOBYTE(v26) = *(v3 + v9[7]);
    v33 = 3;
    sub_24B49B634();
    sub_24B517E6C();
    LOBYTE(v26) = 4;
    sub_24B517E5C();
    LOBYTE(v26) = 5;
    sub_24B517E6C();
    LOBYTE(v26) = *(v3 + v9[10]);
    v33 = 6;
    sub_24B49B688();
    sub_24B517EBC();
    LOBYTE(v26) = *(v3 + v9[11]);
    v33 = 7;
    sub_24B49B6DC();
    sub_24B517E6C();
    v26 = *(v3 + v9[12]);
    v33 = 8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFC550, &qword_24B520400);
    sub_24B49CA1C(&qword_27EFFC558, MEMORY[0x277D83E90], MEMORY[0x277D83948]);
    sub_24B517EBC();
    LOBYTE(v26) = 9;
    sub_24B517E7C();
    LOBYTE(v26) = 10;
    type metadata accessor for EditorialLink(0);
    sub_24B47B60C(&qword_27EFFC560, type metadata accessor for EditorialLink, &protocol conformance descriptor for EditorialLink);
    sub_24B517E6C();
    LOBYTE(v26) = *(v3 + v25[15]);
    v33 = 11;
    sub_24B49B730();
    sub_24B517E6C();
    LOBYTE(v26) = 12;
    sub_24B517E4C();
    LOBYTE(v26) = 13;
    sub_24B517E7C();
    LOBYTE(v26) = *(v3 + v25[18]);
    v33 = 14;
    sub_24B49B784();
    sub_24B517EBC();
    LOBYTE(v26) = 15;
    sub_24B517E4C();
    LOBYTE(v26) = 16;
    sub_24B517E6C();
    v10 = v3 + v25[21];
    v11 = *(v10 + 8);
    v12 = *(v10 + 16);
    v13 = *(v10 + 24);
    v14 = *(v10 + 32);
    v15 = *(v10 + 40);
    v16 = *(v10 + 48);
    v26 = *v10;
    v27 = v11;
    v28 = v12;
    v29 = v13;
    v30 = v14;
    v31 = v15;
    v32 = v16;
    v33 = 17;
    sub_24B49A6F8(v26, v11, v12, v13, v14, v15);
    sub_24B49B7D8();
    sub_24B517E6C();
    sub_24B49B82C(v26, v27, v28, v29, v30, v31);
    LOBYTE(v26) = 18;
    sub_24B517E6C();
    v17 = v3 + v25[23];
    v18 = *(v17 + 8);
    v19 = *(v17 + 16);
    v20 = *(v17 + 24);
    v21 = *(v17 + 32);
    v22 = *(v17 + 40);
    v23 = *(v17 + 48);
    v26 = *v17;
    v27 = v18;
    v28 = v19;
    v29 = v20;
    v30 = v21;
    v31 = v22;
    v32 = v23;
    v33 = 19;
    sub_24B49A6F8(v26, v18, v19, v20, v21, v22);
    sub_24B517E6C();
    sub_24B49B82C(v26, v27, v28, v29, v30, v31);
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_24B49B58C()
{
  result = qword_27EFFC508;
  if (!qword_27EFFC508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFC508);
  }

  return result;
}

unint64_t sub_24B49B5E0()
{
  result = qword_27EFFC530;
  if (!qword_27EFFC530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFC530);
  }

  return result;
}

unint64_t sub_24B49B634()
{
  result = qword_27EFFC538;
  if (!qword_27EFFC538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFC538);
  }

  return result;
}

unint64_t sub_24B49B688()
{
  result = qword_27EFFC540;
  if (!qword_27EFFC540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFC540);
  }

  return result;
}

unint64_t sub_24B49B6DC()
{
  result = qword_27EFFC548;
  if (!qword_27EFFC548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFC548);
  }

  return result;
}

unint64_t sub_24B49B730()
{
  result = qword_27EFFC568;
  if (!qword_27EFFC568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFC568);
  }

  return result;
}

unint64_t sub_24B49B784()
{
  result = qword_27EFFC570;
  if (!qword_27EFFC570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFC570);
  }

  return result;
}

unint64_t sub_24B49B7D8()
{
  result = qword_27EFFC578;
  if (!qword_27EFFC578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFC578);
  }

  return result;
}

void sub_24B49B82C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a6 != 1)
  {
    sub_24B49B870(a1, a2, a3, a4);
  }
}

uint64_t sub_24B49B870(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 a4)
{
  if (a4 != 0xFF)
  {
    return sub_24B49B884(a1, a2, a3, a4);
  }

  return a1;
}

uint64_t sub_24B49B884(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 a4)
{
  if (a4 <= 2u)
  {
  }

  return result;
}

void BrowseItem.init(from:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v57 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFC4F8, &qword_24B51A700);
  MEMORY[0x28223BE20](v3 - 8);
  v58 = v52 - v4;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFC4F0, &qword_24B51C3C0);
  MEMORY[0x28223BE20](v60);
  v59 = v52 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFC4E8, &qword_24B51F380);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v9 = v52 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = v52 - v11;
  v13 = MEMORY[0x28223BE20](v10);
  v15 = v52 - v14;
  MEMORY[0x28223BE20](v13);
  v61 = v52 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFC580, &qword_24B51A718);
  v62 = *(v17 - 8);
  v63 = v17;
  MEMORY[0x28223BE20](v17);
  v19 = v52 - v18;
  v20 = type metadata accessor for BrowseItem(0);
  MEMORY[0x28223BE20](v20);
  v22 = v52 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = a1[3];
  v66 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v23);
  sub_24B49B58C();
  v64 = v19;
  v24 = v65;
  sub_24B517FCC();
  if (v24)
  {
    __swift_destroy_boxed_opaque_existential_1(v66);
  }

  else
  {
    v25 = v59;
    v54 = v12;
    v55 = v15;
    v53 = v9;
    v56 = v20;
    v65 = v22;
    v26 = sub_24B516B8C();
    LOBYTE(v67) = 0;
    v27 = sub_24B47B60C(&qword_27EFFC588, MEMORY[0x277CC8C40], MEMORY[0x277CC8C60]);
    v28 = v61;
    sub_24B517DBC();
    v52[1] = v27;
    v29 = v65;
    sub_24B49AA90(v28, v65, &qword_27EFFC4E8, &qword_24B51F380);
    LOBYTE(v67) = 1;
    sub_24B49C804(&qword_27EFFC590, MEMORY[0x277D09DC0]);
    sub_24B517E0C();
    v60 = v26;
    v30 = v56;
    sub_24B49AA90(v25, v29 + v56[5], &qword_27EFFC4F0, &qword_24B51C3C0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFC520, &qword_24B51A710);
    v71 = 2;
    sub_24B49C854(&qword_27EFFC598, sub_24B49C8CC, MEMORY[0x277D83B70]);
    v61 = 0;
    sub_24B517E0C();
    *(v29 + v30[6]) = v67;
    v71 = 3;
    sub_24B49C920();
    sub_24B517DBC();
    *(v29 + v30[7]) = v67;
    LOBYTE(v67) = 4;
    *(v29 + v30[8]) = sub_24B517DAC();
    LOBYTE(v67) = 5;
    v31 = v55;
    sub_24B517DBC();
    sub_24B49AA90(v31, v29 + v30[9], &qword_27EFFC4E8, &qword_24B51F380);
    v71 = 6;
    sub_24B49C974();
    sub_24B517E0C();
    *(v29 + v30[10]) = v67;
    v71 = 7;
    sub_24B49C9C8();
    sub_24B517DBC();
    v65[v30[11]] = v67;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFC550, &qword_24B520400);
    v71 = 8;
    sub_24B49CA1C(&qword_27EFFC5C0, MEMORY[0x277D83EB0], MEMORY[0x277D83978]);
    sub_24B517E0C();
    *&v65[v56[12]] = v67;
    LOBYTE(v67) = 9;
    v32 = sub_24B517DCC();
    v33 = &v65[v56[13]];
    *v33 = v32;
    v33[1] = v34;
    type metadata accessor for EditorialLink(0);
    LOBYTE(v67) = 10;
    sub_24B47B60C(&qword_27EFFC5C8, type metadata accessor for EditorialLink, &protocol conformance descriptor for EditorialLink);
    sub_24B517DBC();
    sub_24B49AA90(v58, &v65[v56[14]], &qword_27EFFC4F8, &qword_24B51A700);
    v71 = 11;
    sub_24B49CA88();
    sub_24B517DBC();
    v65[v56[15]] = v67;
    LOBYTE(v67) = 12;
    v35 = sub_24B517D9C();
    v36 = &v65[v56[16]];
    *v36 = v35;
    v36[1] = v37;
    LOBYTE(v67) = 13;
    v38 = sub_24B517DCC();
    v39 = &v65[v56[17]];
    *v39 = v38;
    v39[1] = v40;
    v71 = 14;
    sub_24B49CADC();
    sub_24B517E0C();
    v65[v56[18]] = v67;
    LOBYTE(v67) = 15;
    v41 = sub_24B517D9C();
    v42 = &v65[v56[19]];
    *v42 = v41;
    v42[1] = v43;
    LOBYTE(v67) = 16;
    sub_24B517DBC();
    sub_24B49AA90(v54, &v65[v56[20]], &qword_27EFFC4E8, &qword_24B51F380);
    v71 = 17;
    sub_24B49CB30();
    sub_24B517DBC();
    v44 = v70;
    v45 = &v65[v56[21]];
    v46 = v68;
    *v45 = v67;
    *(v45 + 1) = v46;
    *(v45 + 2) = v69;
    v45[48] = v44;
    LOBYTE(v67) = 18;
    sub_24B517DBC();
    sub_24B49AA90(v53, &v65[v56[22]], &qword_27EFFC4E8, &qword_24B51F380);
    v71 = 19;
    sub_24B517DBC();
    (*(v62 + 8))(v64, v63);
    v47 = v70;
    v48 = v57;
    v49 = v65;
    v50 = &v65[v56[23]];
    v51 = v68;
    *v50 = v67;
    *(v50 + 1) = v51;
    *(v50 + 2) = v69;
    v50[48] = v47;
    sub_24B49CB84(v49, v48);
    __swift_destroy_boxed_opaque_existential_1(v66);
    sub_24B49EF6C(v49, type metadata accessor for BrowseItem);
  }
}

uint64_t sub_24B49C804(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFFC4F0, &qword_24B51C3C0);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_24B49C854(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFFC520, &qword_24B51A710);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_24B49C8CC()
{
  result = qword_27EFFC5A0;
  if (!qword_27EFFC5A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFC5A0);
  }

  return result;
}

unint64_t sub_24B49C920()
{
  result = qword_27EFFC5A8;
  if (!qword_27EFFC5A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFC5A8);
  }

  return result;
}

unint64_t sub_24B49C974()
{
  result = qword_27EFFC5B0;
  if (!qword_27EFFC5B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFC5B0);
  }

  return result;
}

unint64_t sub_24B49C9C8()
{
  result = qword_27EFFC5B8;
  if (!qword_27EFFC5B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFC5B8);
  }

  return result;
}

uint64_t sub_24B49CA1C(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFFC550, &qword_24B520400);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_24B49CA88()
{
  result = qword_27EFFC5D0;
  if (!qword_27EFFC5D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFC5D0);
  }

  return result;
}

unint64_t sub_24B49CADC()
{
  result = qword_27EFFC5D8;
  if (!qword_27EFFC5D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFC5D8);
  }

  return result;
}

unint64_t sub_24B49CB30()
{
  result = qword_27EFFC5E0;
  if (!qword_27EFFC5E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFC5E0);
  }

  return result;
}

uint64_t sub_24B49CB84(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BrowseItem(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t BrowseItem.hash(into:)(__int128 *a1)
{
  v2 = v1;
  v4 = type metadata accessor for EditorialLink(0);
  v61 = *(v4 - 8);
  v62 = v4;
  MEMORY[0x28223BE20](v4);
  v60 = &v59 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFC4F8, &qword_24B51A700);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v59 - v7;
  v9 = sub_24B516B8C();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v59 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFC4E8, &qword_24B51F380);
  v14 = MEMORY[0x28223BE20](v13 - 8);
  v64 = &v59 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v63 = &v59 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v20 = &v59 - v19;
  MEMORY[0x28223BE20](v18);
  v22 = &v59 - v21;
  sub_24B496724(v2, &v59 - v21, &qword_27EFFC4E8, &qword_24B51F380);
  v23 = *(v10 + 48);
  v66 = v10 + 48;
  v67 = v23;
  v24 = v23(v22, 1, v9);
  v65 = v10;
  if (v24 == 1)
  {
    sub_24B517F9C();
  }

  else
  {
    (*(v10 + 32))(v12, v22, v9);
    sub_24B517F9C();
    sub_24B47B60C(&qword_2810EED98, MEMORY[0x277CC8C40], MEMORY[0x277CC8C50]);
    sub_24B517A9C();
    (*(v10 + 8))(v12, v9);
  }

  v25 = v12;
  v26 = type metadata accessor for BrowseItem(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFC4F0, &qword_24B51C3C0);
  sub_24B516CCC();
  sub_24B48AE1C(a1, *(v2 + v26[6]));
  v27 = *(v2 + v26[7]);
  sub_24B517F9C();
  if (v27 != 9)
  {
    MEMORY[0x24C241D70](v27);
  }

  if (*(v2 + v26[8]) != 2)
  {
    sub_24B517F9C();
  }

  sub_24B517F9C();
  sub_24B496724(v2 + v26[9], v20, &qword_27EFFC4E8, &qword_24B51F380);
  if (v67(v20, 1, v9) == 1)
  {
    sub_24B517F9C();
  }

  else
  {
    v28 = v65;
    (*(v65 + 32))(v12, v20, v9);
    sub_24B517F9C();
    sub_24B47B60C(&qword_2810EED98, MEMORY[0x277CC8C40], MEMORY[0x277CC8C50]);
    sub_24B517A9C();
    (*(v28 + 8))(v12, v9);
  }

  BrowseDisplayStyle.rawValue.getter(*(v2 + v26[10]));
  sub_24B517B3C();

  v29 = *(v2 + v26[11]);
  sub_24B517F9C();
  if (v29 != 4)
  {
    MEMORY[0x24C241D70](v29);
  }

  v30 = *(v2 + v26[12]);
  MEMORY[0x24C241D70](*(v30 + 16));
  v31 = *(v30 + 16);
  if (v31)
  {
    v32 = (v30 + 32);
    do
    {
      v33 = *v32++;
      MEMORY[0x24C241D70](v33);
      --v31;
    }

    while (v31);
  }

  sub_24B517B3C();
  sub_24B496724(v2 + v26[14], v8, &qword_27EFFC4F8, &qword_24B51A700);
  if ((*(v61 + 48))(v8, 1, v62) == 1)
  {
    sub_24B517F9C();
  }

  else
  {
    v34 = v60;
    sub_24B49EF08(v8, v60);
    sub_24B517F9C();
    EditorialLink.hash(into:)(a1);
    sub_24B49EF6C(v34, type metadata accessor for EditorialLink);
  }

  v35 = v63;
  v36 = *(v2 + v26[15]);
  sub_24B517F9C();
  if (v36 != 4)
  {
    MEMORY[0x24C241D70](v36);
  }

  if (*(v2 + v26[16] + 8))
  {
    sub_24B517F9C();
    sub_24B517B3C();
  }

  else
  {
    sub_24B517F9C();
  }

  sub_24B517B3C();
  sub_24B49A070(a1, *(v2 + v26[18]));
  if (*(v2 + v26[19] + 8))
  {
    sub_24B517F9C();
    sub_24B517B3C();
  }

  else
  {
    sub_24B517F9C();
  }

  sub_24B496724(v2 + v26[20], v35, &qword_27EFFC4E8, &qword_24B51F380);
  if (v67(v35, 1, v9) == 1)
  {
    sub_24B517F9C();
  }

  else
  {
    v37 = v65;
    (*(v65 + 32))(v25, v35, v9);
    sub_24B517F9C();
    sub_24B47B60C(&qword_2810EED98, MEMORY[0x277CC8C40], MEMORY[0x277CC8C50]);
    sub_24B517A9C();
    (*(v37 + 8))(v25, v9);
  }

  v38 = v2 + v26[21];
  v39 = *(v38 + 40);
  if (v39 == 1)
  {
    sub_24B517F9C();
  }

  else
  {
    v40 = *(v38 + 48);
    v41 = *(v38 + 32);
    v63 = v9;
    v42 = v25;
    v44 = *(v38 + 8);
    v43 = *(v38 + 16);
    v46 = *(v38 + 24);
    v68 = *v38;
    v45 = v68;
    v69 = v44;
    v70 = v43;
    v71 = v46;
    v72 = v41;
    v73 = v39;
    v74 = v40;
    sub_24B517F9C();
    v47 = v43;
    v25 = v42;
    v9 = v63;
    sub_24B49A73C(v45, v44, v47, v46);

    BrowseTextAttributes.hash(into:)(a1);
    sub_24B49B870(v68, v69, v70, v71);
  }

  v48 = v64;
  sub_24B496724(v2 + v26[22], v64, &qword_27EFFC4E8, &qword_24B51F380);
  if (v67(v48, 1, v9) == 1)
  {
    sub_24B517F9C();
  }

  else
  {
    v49 = v65;
    (*(v65 + 32))(v25, v48, v9);
    sub_24B517F9C();
    sub_24B47B60C(&qword_2810EED98, MEMORY[0x277CC8C40], MEMORY[0x277CC8C50]);
    sub_24B517A9C();
    (*(v49 + 8))(v25, v9);
  }

  v50 = v2 + v26[23];
  v51 = *(v50 + 40);
  if (v51 == 1)
  {
    return sub_24B517F9C();
  }

  v53 = *(v50 + 48);
  v54 = *(v50 + 32);
  v56 = *(v50 + 8);
  v55 = *(v50 + 16);
  v58 = *(v50 + 24);
  v68 = *v50;
  v57 = v68;
  v69 = v56;
  v70 = v55;
  v71 = v58;
  v72 = v54;
  v73 = v51;
  v74 = v53;
  sub_24B517F9C();
  sub_24B49A73C(v57, v56, v55, v58);

  BrowseTextAttributes.hash(into:)(a1);
  sub_24B49B870(v68, v69, v70, v71);
}

uint64_t BrowseItem.hashValue.getter()
{
  sub_24B517F7C();
  BrowseItem.hash(into:)(v1);
  return sub_24B517FBC();
}

uint64_t sub_24B49D654()
{
  sub_24B517F7C();
  BrowseItem.hash(into:)(v1);
  return sub_24B517FBC();
}

uint64_t sub_24B49D698(uint64_t a1)
{
  sub_24B517F7C();
  BrowseItem.hash(into:)(v2);
  return sub_24B517FBC();
}

BOOL _s15FitnessBrowsing10BrowseItemV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v174 = type metadata accessor for EditorialLink(0);
  v176 = *(v174 - 8);
  MEMORY[0x28223BE20](v174);
  v172 = &v162 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFC4F8, &qword_24B51A700);
  MEMORY[0x28223BE20](v5 - 8);
  v177 = &v162 - v6;
  v173 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFC600, &qword_24B51A9A0);
  MEMORY[0x28223BE20](v173);
  v175 = &v162 - v7;
  v8 = sub_24B516B8C();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v180 = &v162 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFC4E8, &qword_24B51F380);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v168 = &v162 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v170 = &v162 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v178 = &v162 - v17;
  MEMORY[0x28223BE20](v16);
  v19 = &v162 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFC608, &qword_24B51F5B0);
  v21 = MEMORY[0x28223BE20](v20);
  v169 = (&v162 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  v23 = MEMORY[0x28223BE20](v21);
  v171 = (&v162 - v24);
  v25 = MEMORY[0x28223BE20](v23);
  v27 = (&v162 - v26);
  v28 = MEMORY[0x28223BE20](v25);
  v30 = (&v162 - v29);
  v179 = v28;
  v31 = *(v28 + 48);
  sub_24B496724(a1, &v162 - v29, &qword_27EFFC4E8, &qword_24B51F380);
  sub_24B496724(a2, v30 + v31, &qword_27EFFC4E8, &qword_24B51F380);
  v181 = v9;
  v32 = v9;
  v33 = v8;
  v36 = *(v32 + 48);
  v34 = v32 + 48;
  v35 = v36;
  if (v36(v30, 1, v8) == 1)
  {
    if (v35(v30 + v31, 1, v8) == 1)
    {
      v167 = v35;
      v166 = v34;
      v37 = a2;
      sub_24B49689C(v30, &qword_27EFFC4E8, &qword_24B51F380);
      goto LABEL_9;
    }

LABEL_6:
    v38 = &qword_27EFFC608;
    v39 = &qword_24B51F5B0;
    v40 = v30;
    goto LABEL_7;
  }

  sub_24B496724(v30, v19, &qword_27EFFC4E8, &qword_24B51F380);
  if (v35(v30 + v31, 1, v8) == 1)
  {
    (*(v181 + 8))(v19, v8);
    goto LABEL_6;
  }

  v167 = v35;
  v166 = v34;
  v37 = a2;
  v41 = v181;
  v42 = v180;
  (*(v181 + 32))(v180, v30 + v31, v33);
  sub_24B47B60C(&qword_2810EED90, MEMORY[0x277CC8C40], MEMORY[0x277CC8C58]);
  v43 = sub_24B517AAC();
  v44 = *(v41 + 8);
  v44(v42, v33);
  v44(v19, v33);
  sub_24B49689C(v30, &qword_27EFFC4E8, &qword_24B51F380);
  if ((v43 & 1) == 0)
  {
    return 0;
  }

LABEL_9:
  v45 = type metadata accessor for BrowseItem(0);
  type metadata accessor for BrowseArtwork(0);
  sub_24B47B60C(qword_2810EE948, type metadata accessor for BrowseArtwork, &protocol conformance descriptor for BrowseArtwork);
  if ((sub_24B516CBC() & 1) == 0 || (sub_24B5134D8(*(a1 + v45[6]), *(v37 + v45[6])) & 1) == 0)
  {
    return 0;
  }

  v46 = v45[7];
  v47 = *(a1 + v46);
  v48 = *(v37 + v46);
  if (v47 == 9)
  {
    if (v48 != 9)
    {
      return 0;
    }
  }

  else if (v47 != v48)
  {
    return 0;
  }

  v49 = v45[8];
  v50 = *(a1 + v49);
  v51 = *(v37 + v49);
  if (v50 == 2)
  {
    if (v51 != 2)
    {
      return 0;
    }

LABEL_20:
    v165 = v37;
    v164 = v45;
    v53 = v45[9];
    v54 = *(v179 + 48);
    sub_24B496724(a1 + v53, v27, &qword_27EFFC4E8, &qword_24B51F380);
    v55 = v165 + v53;
    v56 = v165;
    sub_24B496724(v55, v27 + v54, &qword_27EFFC4E8, &qword_24B51F380);
    v57 = v167;
    if (v167(v27, 1, v33) == 1)
    {
      if (v57(v27 + v54, 1, v33) == 1)
      {
        sub_24B49689C(v27, &qword_27EFFC4E8, &qword_24B51F380);
        goto LABEL_27;
      }
    }

    else
    {
      v58 = v178;
      sub_24B496724(v27, v178, &qword_27EFFC4E8, &qword_24B51F380);
      if (v57(v27 + v54, 1, v33) != 1)
      {
        v59 = v181;
        v60 = v180;
        (*(v181 + 32))(v180, v27 + v54, v33);
        sub_24B47B60C(&qword_2810EED90, MEMORY[0x277CC8C40], MEMORY[0x277CC8C58]);
        v61 = sub_24B517AAC();
        v62 = *(v59 + 8);
        v62(v60, v33);
        v62(v58, v33);
        v56 = v165;
        sub_24B49689C(v27, &qword_27EFFC4E8, &qword_24B51F380);
        if ((v61 & 1) == 0)
        {
          return 0;
        }

LABEL_27:
        v63 = v164;
        v64 = v164[10];
        v65 = *(v56 + v64);
        v66 = BrowseDisplayStyle.rawValue.getter(*(a1 + v64));
        v68 = v67;
        if (v66 == BrowseDisplayStyle.rawValue.getter(v65) && v68 == v69)
        {

          v70 = v177;
        }

        else
        {
          v71 = sub_24B517EEC();

          v70 = v177;
          if ((v71 & 1) == 0)
          {
            return 0;
          }
        }

        v72 = v63[11];
        v73 = *(a1 + v72);
        v74 = *(v56 + v72);
        if (v73 == 4)
        {
          v75 = v74 == 4;
        }

        else
        {
          v75 = v73 == v74;
        }

        v76 = v176;
        if (!v75 || (sub_24B48407C(*(a1 + v63[12]), *(v56 + v63[12])) & 1) == 0)
        {
          return 0;
        }

        v77 = v63[13];
        v78 = *(a1 + v77);
        v79 = *(a1 + v77 + 8);
        v80 = (v56 + v77);
        if ((v78 != *v80 || v79 != v80[1]) && (sub_24B517EEC() & 1) == 0)
        {
          return 0;
        }

        v81 = v63[14];
        v82 = *(v173 + 48);
        v83 = a1;
        v84 = v175;
        sub_24B496724(a1 + v81, v175, &qword_27EFFC4F8, &qword_24B51A700);
        v85 = v165 + v81;
        v86 = v165;
        sub_24B496724(v85, v84 + v82, &qword_27EFFC4F8, &qword_24B51A700);
        v87 = *(v76 + 48);
        v88 = v174;
        if (v87(v84, 1, v174) == 1)
        {
          if (v87(v84 + v82, 1, v88) == 1)
          {
            sub_24B49689C(v84, &qword_27EFFC4F8, &qword_24B51A700);
LABEL_47:
            v92 = v164[15];
            v93 = *(v83 + v92);
            v94 = *(v86 + v92);
            if (v93 == 4)
            {
              if (v94 != 4)
              {
                return 0;
              }
            }

            else if (v93 != v94)
            {
              return 0;
            }

            v95 = v164[16];
            v96 = (v83 + v95);
            v97 = *(v83 + v95 + 8);
            v98 = (v86 + v95);
            v99 = v98[1];
            if (v97)
            {
              if (!v99 || (*v96 != *v98 || v97 != v99) && (sub_24B517EEC() & 1) == 0)
              {
                return 0;
              }
            }

            else if (v99)
            {
              return 0;
            }

            v100 = v33;
            v101 = v164[17];
            v102 = *(v83 + v101);
            v103 = *(v83 + v101 + 8);
            v104 = (v86 + v101);
            if ((v102 != *v104 || v103 != v104[1]) && (sub_24B517EEC() & 1) == 0 || (sub_24B4FED70(*(v83 + v164[18]), *(v86 + v164[18])) & 1) == 0)
            {
              return 0;
            }

            v105 = v164[19];
            v106 = (v83 + v105);
            v107 = *(v83 + v105 + 8);
            v108 = (v165 + v105);
            v109 = v108[1];
            if (v107)
            {
              if (!v109 || (*v106 != *v108 || v107 != v109) && (sub_24B517EEC() & 1) == 0)
              {
                return 0;
              }
            }

            else if (v109)
            {
              return 0;
            }

            v111 = v164[20];
            v112 = *(v179 + 48);
            v113 = v171;
            sub_24B496724(v83 + v111, v171, &qword_27EFFC4E8, &qword_24B51F380);
            sub_24B496724(v165 + v111, v113 + v112, &qword_27EFFC4E8, &qword_24B51F380);
            if (v167(v113, 1, v100) == 1)
            {
              if (v167(v171 + v112, 1, v100) == 1)
              {
                sub_24B49689C(v171, &qword_27EFFC4E8, &qword_24B51F380);
                goto LABEL_78;
              }
            }

            else
            {
              v114 = v171;
              sub_24B496724(v171, v170, &qword_27EFFC4E8, &qword_24B51F380);
              if (v167((v114 + v112), 1, v100) != 1)
              {
                v115 = v181;
                v116 = v171;
                v117 = v171 + v112;
                v118 = v180;
                (*(v181 + 32))(v180, v117, v100);
                sub_24B47B60C(&qword_2810EED90, MEMORY[0x277CC8C40], MEMORY[0x277CC8C58]);
                v119 = v170;
                v120 = sub_24B517AAC();
                v121 = *(v115 + 8);
                v121(v118, v100);
                v121(v119, v100);
                sub_24B49689C(v116, &qword_27EFFC4E8, &qword_24B51F380);
                if ((v120 & 1) == 0)
                {
                  return 0;
                }

LABEL_78:
                v122 = v164[21];
                v124 = *(v83 + v122);
                v123 = *(v83 + v122 + 8);
                v126 = *(v83 + v122 + 16);
                v125 = *(v83 + v122 + 24);
                v127 = *(v83 + v122 + 32);
                v128 = *(v83 + v122 + 40);
                LODWORD(v178) = *(v83 + v122 + 48);
                v129 = v165 + v122;
                v130 = *(v129 + 8);
                v172 = *v129;
                v173 = v130;
                v131 = *(v129 + 24);
                v174 = *(v129 + 16);
                v175 = v131;
                v132 = *(v129 + 40);
                v176 = *(v129 + 32);
                LODWORD(v177) = *(v129 + 48);
                if (v128 == 1)
                {
                  sub_24B49A6F8(v124, v123, v126, v125, v127, 1);
                  if (v132 == 1)
                  {
                    sub_24B49A6F8(v172, v173, v174, v175, v176, 1);
                    sub_24B49B82C(v124, v123, v126, v125, v127, 1);
                    goto LABEL_87;
                  }

                  sub_24B49A6F8(v172, v173, v174, v175, v176, v132);
                }

                else
                {
                  v189 = v124;
                  v190 = v123;
                  v191 = v126;
                  v192 = v125;
                  v193 = v127;
                  v194 = v128;
                  v195 = v178;
                  v171 = v123;
                  if (v132 != 1)
                  {
                    v182 = v172;
                    v183 = v173;
                    v184 = v174;
                    v185 = v175;
                    v186 = v176;
                    v187 = v132;
                    v188 = v177;
                    v170 = v124;
                    sub_24B49A6F8(v124, v123, v126, v125, v127, v128);
                    sub_24B49A6F8(v172, v173, v174, v175, v176, v132);
                    v134 = v124;
                    v135 = v171;
                    sub_24B49A6F8(v134, v171, v126, v125, v127, v128);
                    LODWORD(v177) = _s15FitnessBrowsing20BrowseTextAttributesV2eeoiySbAC_ACtFZ_0(&v189, &v182);
                    sub_24B49B870(v182, v183, v184, v185);

                    sub_24B49B870(v189, v190, v191, v192);

                    sub_24B49B82C(v170, v135, v126, v125, v127, v128);
                    if ((v177 & 1) == 0)
                    {
                      return 0;
                    }

LABEL_87:
                    v136 = v164[22];
                    v137 = *(v179 + 48);
                    v138 = v169;
                    sub_24B496724(v83 + v136, v169, &qword_27EFFC4E8, &qword_24B51F380);
                    sub_24B496724(v165 + v136, v138 + v137, &qword_27EFFC4E8, &qword_24B51F380);
                    if (v167(v138, 1, v100) == 1)
                    {
                      if (v167(v169 + v137, 1, v100) == 1)
                      {
                        sub_24B49689C(v169, &qword_27EFFC4E8, &qword_24B51F380);
LABEL_94:
                        v148 = v164[23];
                        v149 = v83 + v148;
                        v151 = *(v83 + v148);
                        v150 = *(v83 + v148 + 8);
                        v153 = *(v83 + v148 + 16);
                        v152 = *(v83 + v148 + 24);
                        v154 = *(v83 + v148 + 32);
                        v155 = *(v83 + v148 + 40);
                        v156 = *(v149 + 48);
                        v157 = v165 + v148;
                        v158 = *v157;
                        v178 = *(v157 + 8);
                        v159 = *(v157 + 24);
                        v179 = *(v157 + 16);
                        v180 = v159;
                        v160 = *(v157 + 40);
                        v181 = *(v157 + 32);
                        LODWORD(v177) = *(v157 + 48);
                        if (v155 == 1)
                        {
                          sub_24B49A6F8(v151, v150, v153, v152, v154, 1);
                          if (v160 == 1)
                          {
                            v52 = 1;
                            sub_24B49A6F8(v158, v178, v179, v180, v181, 1);
                            sub_24B49B82C(v151, v150, v153, v152, v154, 1);
                            return v52;
                          }

                          sub_24B49A6F8(v158, v178, v179, v180, v181, v160);
                        }

                        else
                        {
                          v189 = v151;
                          v190 = v150;
                          v191 = v153;
                          v192 = v152;
                          v193 = v154;
                          v194 = v155;
                          v195 = v156;
                          if (v160 != 1)
                          {
                            v182 = v158;
                            v183 = v178;
                            v184 = v179;
                            v185 = v180;
                            v186 = v181;
                            v187 = v160;
                            v188 = v177;
                            sub_24B49A6F8(v151, v150, v153, v152, v154, v155);
                            sub_24B49A6F8(v158, v178, v179, v180, v181, v160);
                            sub_24B49A6F8(v151, v150, v153, v152, v154, v155);
                            v161 = _s15FitnessBrowsing20BrowseTextAttributesV2eeoiySbAC_ACtFZ_0(&v189, &v182);
                            sub_24B49B870(v182, v183, v184, v185);

                            sub_24B49B870(v189, v190, v191, v192);

                            sub_24B49B82C(v151, v150, v153, v152, v154, v155);
                            return (v161 & 1) != 0;
                          }

                          v175 = v154;
                          LODWORD(v176) = v156;
                          sub_24B49A6F8(v151, v150, v153, v152, v154, v155);
                          sub_24B49A6F8(v158, v178, v179, v180, v181, 1);
                          sub_24B49A6F8(v151, v150, v153, v152, v175, v155);
                          sub_24B49B870(v151, v150, v153, v152);
                        }

                        v189 = v151;
                        v190 = v150;
                        v191 = v153;
                        v192 = v152;
                        v193 = v154;
                        v194 = v155;
                        v195 = v156;
                        v196 = v158;
                        v197 = v178;
                        v198 = v179;
                        v199 = v180;
                        v200 = v181;
                        v201 = v160;
                        goto LABEL_85;
                      }
                    }

                    else
                    {
                      v139 = v169;
                      sub_24B496724(v169, v168, &qword_27EFFC4E8, &qword_24B51F380);
                      if (v167((v139 + v137), 1, v100) != 1)
                      {
                        v140 = v181;
                        v141 = v169;
                        v142 = v169 + v137;
                        v143 = v180;
                        v144 = v100;
                        (*(v181 + 32))(v180, v142, v100);
                        sub_24B47B60C(&qword_2810EED90, MEMORY[0x277CC8C40], MEMORY[0x277CC8C58]);
                        v145 = v168;
                        v146 = sub_24B517AAC();
                        v147 = *(v140 + 8);
                        v147(v143, v144);
                        v147(v145, v144);
                        sub_24B49689C(v141, &qword_27EFFC4E8, &qword_24B51F380);
                        if ((v146 & 1) == 0)
                        {
                          return 0;
                        }

                        goto LABEL_94;
                      }

                      (*(v181 + 8))(v168, v100);
                    }

                    v38 = &qword_27EFFC608;
                    v39 = &qword_24B51F5B0;
                    v40 = v169;
                    goto LABEL_7;
                  }

                  v163 = v126;
                  v166 = v127;
                  sub_24B49A6F8(v124, v123, v126, v125, v127, v128);
                  sub_24B49A6F8(v172, v173, v174, v175, v176, 1);
                  v133 = v163;
                  sub_24B49A6F8(v124, v123, v163, v125, v166, v128);
                  sub_24B49B870(v124, v171, v133, v125);
                }

                v189 = v124;
                v190 = v123;
                v191 = v126;
                v192 = v125;
                v193 = v127;
                v194 = v128;
                v195 = v178;
                v196 = v172;
                v197 = v173;
                v198 = v174;
                v199 = v175;
                v200 = v176;
                v201 = v132;
LABEL_85:
                v202 = v177;
                v38 = &unk_27EFFC610;
                v39 = &unk_24B51A9A8;
                v40 = &v189;
                goto LABEL_7;
              }

              (*(v181 + 8))(v170, v100);
            }

            v38 = &qword_27EFFC608;
            v39 = &qword_24B51F5B0;
            v40 = v171;
LABEL_7:
            sub_24B49689C(v40, v38, v39);
            return 0;
          }
        }

        else
        {
          sub_24B496724(v84, v70, &qword_27EFFC4F8, &qword_24B51A700);
          if (v87(v84 + v82, 1, v88) != 1)
          {
            v89 = v84 + v82;
            v90 = v172;
            sub_24B49EF08(v89, v172);
            v91 = _s15FitnessBrowsing13EditorialLinkO2eeoiySbAC_ACtFZ_0(v70, v90);
            sub_24B49EF6C(v90, type metadata accessor for EditorialLink);
            sub_24B49EF6C(v70, type metadata accessor for EditorialLink);
            sub_24B49689C(v84, &qword_27EFFC4F8, &qword_24B51A700);
            if (!v91)
            {
              return 0;
            }

            goto LABEL_47;
          }

          sub_24B49EF6C(v70, type metadata accessor for EditorialLink);
        }

        v38 = &qword_27EFFC600;
        v39 = &qword_24B51A9A0;
        v40 = v84;
        goto LABEL_7;
      }

      (*(v181 + 8))(v58, v33);
    }

    v38 = &qword_27EFFC608;
    v39 = &qword_24B51F5B0;
    v40 = v27;
    goto LABEL_7;
  }

  v52 = 0;
  if (v51 != 2 && ((v51 ^ v50) & 1) == 0)
  {
    goto LABEL_20;
  }

  return v52;
}

uint64_t sub_24B49EF08(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EditorialLink(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24B49EF6C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t getEnumTagSinglePayload for BrowseItem.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xED)
  {
    goto LABEL_17;
  }

  if (a2 + 19 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 19) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 19;
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

      return (*a1 | (v4 << 8)) - 19;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 19;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x14;
  v8 = v6 - 20;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for BrowseItem.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 19 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 19) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xED)
  {
    v4 = 0;
  }

  if (a2 > 0xEC)
  {
    v5 = ((a2 - 237) >> 8) + 1;
    *result = a2 + 19;
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
    *result = a2 + 19;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_24B49F190()
{
  result = qword_27EFFC5E8;
  if (!qword_27EFFC5E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFC5E8);
  }

  return result;
}

unint64_t sub_24B49F1E8()
{
  result = qword_27EFFC5F0;
  if (!qword_27EFFC5F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFC5F0);
  }

  return result;
}

unint64_t sub_24B49F240()
{
  result = qword_27EFFC5F8;
  if (!qword_27EFFC5F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFC5F8);
  }

  return result;
}

uint64_t sub_24B49F294(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x69546E6F69746361 && a2 == 0xEB00000000656C74;
  if (v4 || (sub_24B517EEC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000011 && 0x800000024B527590 == a2 || (sub_24B517EEC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000012 && 0x800000024B5275B0 == a2 || (sub_24B517EEC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x616F4C7465737361 && a2 == 0xEF73757461745364 || (sub_24B517EEC() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6B72616D6B6F6F62 && a2 == 0xEA00000000006465 || (sub_24B517EEC() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6E6F6974706163 && a2 == 0xE700000000000000 || (sub_24B517EEC() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x5379616C70736964 && a2 == 0xEC000000656C7974 || (sub_24B517EEC() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000018 && 0x800000024B5275D0 == a2 || (sub_24B517EEC() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000016 && 0x800000024B5275F0 == a2 || (sub_24B517EEC() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x696669746E656469 && a2 == 0xEA00000000007265 || (sub_24B517EEC() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 1802398060 && a2 == 0xE400000000000000 || (sub_24B517EEC() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x707954616964656DLL && a2 == 0xE900000000000065 || (sub_24B517EEC() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0x5479636E65636572 && a2 == 0xEA00000000006761 || (sub_24B517EEC() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0xD000000000000013 && 0x800000024B527610 == a2 || (sub_24B517EEC() & 1) != 0)
  {

    return 13;
  }

  else if (a1 == 0x636E657265666572 && a2 == 0xED00006570795465 || (sub_24B517EEC() & 1) != 0)
  {

    return 14;
  }

  else if (a1 == 0xD000000000000017 && 0x800000024B527630 == a2 || (sub_24B517EEC() & 1) != 0)
  {

    return 15;
  }

  else if (a1 == 0x656C746974627573 && a2 == 0xE800000000000000 || (sub_24B517EEC() & 1) != 0)
  {

    return 16;
  }

  else if (a1 == 0xD000000000000015 && 0x800000024B527650 == a2 || (sub_24B517EEC() & 1) != 0)
  {

    return 17;
  }

  else if (a1 == 0x656C746974 && a2 == 0xE500000000000000 || (sub_24B517EEC() & 1) != 0)
  {

    return 18;
  }

  else if (a1 == 0xD000000000000012 && 0x800000024B527670 == a2)
  {

    return 19;
  }

  else
  {
    v6 = sub_24B517EEC();

    if (v6)
    {
      return 19;
    }

    else
    {
      return 20;
    }
  }
}

uint64_t View.impressionable<A, B, C, D, E, F, G, H>(_:index:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, __int128 a11, uint64_t a12, __int128 a13, __int128 a14, __int128 a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  v105 = a8;
  v103 = a6;
  v104 = a7;
  v101 = a4;
  v102 = a5;
  v19 = a3;
  v91 = a2;
  v111 = a1;
  v109 = a9;
  v100 = a19;
  v99 = a18;
  v98 = a16;
  v97 = a15;
  v96 = a14;
  v95 = a13;
  v83 = *(a3 - 8);
  v94 = a11;
  v20 = MEMORY[0x28223BE20](a1);
  v82 = &v78 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v81 = &v78 - v22;
  v23 = sub_24B517A7C();
  v92 = *(v23 - 8);
  v93 = v23;
  MEMORY[0x28223BE20](v23);
  v90 = &v78 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_24B517A0C();
  MEMORY[0x28223BE20](v25 - 8);
  v86 = &v78 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_24B517A2C();
  MEMORY[0x28223BE20](v27 - 8);
  v84 = &v78 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFC618, &qword_24B51DB60);
  MEMORY[0x28223BE20](v29 - 8);
  v85 = &v78 - v30;
  v115 = v19;
  v116 = a12;
  v112 = a12;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v89 = *(OpaqueTypeMetadata2 - 8);
  v32 = MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v88 = &v78 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v32);
  v87 = &v78 - v34;
  v35 = sub_24B517C8C();
  v36 = *(v35 - 8);
  v37 = MEMORY[0x28223BE20](v35);
  v39 = &v78 - v38;
  v40 = *(a10 - 8);
  MEMORY[0x28223BE20](v37);
  v42 = &v78 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v110 = OpaqueTypeMetadata2;
  v106 = sub_24B51724C();
  v108 = *(v106 - 8);
  MEMORY[0x28223BE20](v106);
  v107 = &v78 - v43;
  v115 = v101;
  v116 = v102;
  v117 = v103;
  v118 = v104;
  v119 = v105;
  v120 = a10;
  v121 = v94;
  v122 = v95;
  v123 = v96;
  v124 = v97;
  v125 = v98;
  v126 = a17;
  v127 = v99;
  v128 = v100;
  sub_24B516D6C();
  sub_24B516D5C();
  if ((*(v40 + 48))(v39, 1, a10) == 1)
  {
    (*(v36 + 8))(v39, v35);
    v44 = v81;
    v45 = v112;
    sub_24B49711C();
    v46 = v82;
    sub_24B49711C();
    v115 = v19;
    v116 = v45;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v48 = v107;
    sub_24B48D23C(v46, v110, v19, OpaqueTypeConformance2, v45);
    v49 = *(v83 + 8);
    v49(v46, v19);
    v49(v44, v19);
  }

  else
  {
    v80 = v40;
    v50 = v42;
    (*(v40 + 32))(v42, v39, a10);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFC620, &qword_24B51A9C0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_24B51A9B0;
    *(inited + 32) = 1701667182;
    *(inited + 40) = 0xE400000000000000;
    v52 = sub_24B516DAC();
    v53 = MEMORY[0x277D837D0];
    *(inited + 48) = v52;
    *(inited + 56) = v54;
    *(inited + 72) = v53;
    strcpy((inited + 80), "impressionType");
    *(inited + 95) = -18;
    *(inited + 96) = sub_24B516D9C();
    *(inited + 104) = v55;
    *(inited + 120) = v53;
    *(inited + 128) = 0x6973736572706D69;
    v111 = v19;
    v56 = v112;
    v57 = MEMORY[0x277D83B88];
    v58 = v91;
    *(inited + 136) = 0xEF7865646E496E6FLL;
    *(inited + 144) = v58;
    *(inited + 168) = v57;
    *(inited + 176) = 0x657079546469;
    *(inited + 184) = 0xE600000000000000;
    v59 = sub_24B516D8C();
    *(inited + 216) = v53;
    *(inited + 192) = v59;
    *(inited + 200) = v60;
    v61 = sub_24B4A06C8(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFC628, &unk_24B51DC90);
    swift_arrayDestroy();
    v79 = v50;
    v62 = sub_24B516DBC();
    v63 = sub_24B4A02F4(v62);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v115 = v61;
    sub_24B4A07D8(v63, sub_24B4A067C, 0, isUniquelyReferenced_nonNull_native, &v115);

    sub_24B516D7C();
    sub_24B517A1C();
    sub_24B5179FC();
    v65 = MEMORY[0x277D84F90];
    sub_24B4A06C8(MEMORY[0x277D84F90]);
    sub_24B4A06C8(v65);
    v66 = v85;
    sub_24B517A3C();
    v67 = sub_24B517A4C();
    (*(*(v67 - 8) + 56))(v66, 0, 1, v67);
    v68 = v90;
    sub_24B517A6C();
    v69 = v88;
    sub_24B5174DC();
    (*(v92 + 8))(v68, v93);
    sub_24B4A0AE8(v66);
    v115 = v111;
    v116 = v56;
    v70 = swift_getOpaqueTypeConformance2();
    v71 = v87;
    v72 = v110;
    sub_24B49711C();
    v73 = *(v89 + 8);
    v73(v69, v72);
    sub_24B49711C();
    v48 = v107;
    v74 = v56;
    v19 = v111;
    sub_24B48D144(v69, v72, v111, v70, v74);
    v73(v69, v72);
    v73(v71, v72);
    (*(v80 + 8))(v79, a10);
  }

  v75 = v112;
  v115 = v19;
  v116 = v112;
  v113 = swift_getOpaqueTypeConformance2();
  v114 = v75;
  v76 = v106;
  swift_getWitnessTable();
  sub_24B49711C();
  return (*(v108 + 8))(v48, v76);
}

unint64_t sub_24B4A02F4(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFC630, &qword_24B51A9C8);
    v2 = sub_24B517D4C();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v12 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v8;
    if (v5)
    {
      while (1)
      {
        v13 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v14 = (*(a1 + 48) + ((v12 << 10) | (16 * v13)));
        v16 = *v14;
        v15 = v14[1];

        swift_dynamicCast();
        sub_24B4A0BC0(&v22, v24);
        sub_24B4A0BC0(v24, v25);
        sub_24B4A0BC0(v25, &v23);
        result = sub_24B4A054C(v16, v15);
        if (v17)
        {
          v9 = (v2[6] + 16 * result);
          *v9 = v16;
          v9[1] = v15;
          v10 = result;

          v11 = (v2[7] + 32 * v10);
          __swift_destroy_boxed_opaque_existential_1(v11);
          result = sub_24B4A0BC0(&v23, v11);
          v8 = v12;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_20;
          }

          *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          v18 = (v2[6] + 16 * result);
          *v18 = v16;
          v18[1] = v15;
          result = sub_24B4A0BC0(&v23, (v2[7] + 32 * result));
          v19 = v2[2];
          v20 = __OFADD__(v19, 1);
          v21 = v19 + 1;
          if (v20)
          {
            goto LABEL_21;
          }

          v2[2] = v21;
          v8 = v12;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v12 = v8;
      }
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

unint64_t sub_24B4A054C(uint64_t a1, uint64_t a2)
{
  sub_24B517F7C();
  sub_24B517B3C();
  v4 = sub_24B517FBC();

  return sub_24B4A05C4(a1, a2, v4);
}

unint64_t sub_24B4A05C4(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_24B517EEC())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

uint64_t sub_24B4A067C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  sub_24B4A0BD8((a1 + 2), (a2 + 2));
  *a2 = v4;
  a2[1] = v3;
}

unint64_t sub_24B4A06C8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFC630, &qword_24B51A9C8);
    v3 = sub_24B517D4C();
    v4 = a1 + 32;

    while (1)
    {
      sub_24B4A0B50(v4, &v13);
      v5 = v13;
      v6 = v14;
      result = sub_24B4A054C(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_24B4A0BC0(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_24B4A07D8(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  v7 = -1 << *(a1 + 32);
  v8 = ~v7;
  v9 = *(a1 + 64);
  v10 = -v7;
  v45 = a1;
  v46 = a1 + 64;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  else
  {
    v11 = -1;
  }

  v47 = v8;
  v48 = 0;
  v49 = v11 & v9;
  v50 = a2;
  v51 = a3;

  sub_24B4C42C4(&v43);
  v12 = *(&v43 + 1);
  if (!*(&v43 + 1))
  {
    goto LABEL_25;
  }

  v13 = v43;
  sub_24B4A0BC0(v44, v42);
  v14 = *a5;
  result = sub_24B4A054C(v13, v12);
  v17 = v14[2];
  v18 = (v16 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v21 = v16;
  if (v14[3] < v20)
  {
    sub_24B4C36C8(v20, a4 & 1);
    result = sub_24B4A054C(v13, v12);
    if ((v21 & 1) == (v22 & 1))
    {
      goto LABEL_10;
    }

LABEL_8:
    result = sub_24B517F1C();
    __break(1u);
  }

  if ((a4 & 1) == 0)
  {
    v26 = result;
    sub_24B4C3980();
    result = v26;
    v23 = *a5;
    if (v21)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

LABEL_10:
  v23 = *a5;
  if (v21)
  {
LABEL_11:
    v24 = result;

    v25 = (v23[7] + 32 * v24);
    __swift_destroy_boxed_opaque_existential_1(v25);
    sub_24B4A0BC0(v42, v25);
    goto LABEL_15;
  }

LABEL_13:
  v23[(result >> 6) + 8] |= 1 << result;
  v27 = (v23[6] + 16 * result);
  *v27 = v13;
  v27[1] = v12;
  result = sub_24B4A0BC0(v42, (v23[7] + 32 * result));
  v28 = v23[2];
  v19 = __OFADD__(v28, 1);
  v29 = v28 + 1;
  if (!v19)
  {
    v23[2] = v29;
LABEL_15:
    sub_24B4C42C4(&v43);
    v12 = *(&v43 + 1);
    if (*(&v43 + 1))
    {
      v21 = 1;
      do
      {
        v13 = v43;
        sub_24B4A0BC0(v44, v42);
        v32 = *a5;
        result = sub_24B4A054C(v13, v12);
        v34 = v32[2];
        v35 = (v33 & 1) == 0;
        v19 = __OFADD__(v34, v35);
        v36 = v34 + v35;
        if (v19)
        {
          goto LABEL_26;
        }

        a4 = v33;
        if (v32[3] < v36)
        {
          sub_24B4C36C8(v36, 1);
          result = sub_24B4A054C(v13, v12);
          if ((a4 & 1) != (v37 & 1))
          {
            goto LABEL_8;
          }
        }

        v38 = *a5;
        if (a4)
        {
          v30 = result;

          v31 = (v38[7] + 32 * v30);
          __swift_destroy_boxed_opaque_existential_1(v31);
          sub_24B4A0BC0(v42, v31);
        }

        else
        {
          v38[(result >> 6) + 8] |= 1 << result;
          v39 = (v38[6] + 16 * result);
          *v39 = v13;
          v39[1] = v12;
          result = sub_24B4A0BC0(v42, (v38[7] + 32 * result));
          v40 = v38[2];
          v19 = __OFADD__(v40, 1);
          v41 = v40 + 1;
          if (v19)
          {
            goto LABEL_27;
          }

          v38[2] = v41;
        }

        sub_24B4C42C4(&v43);
        v12 = *(&v43 + 1);
      }

      while (*(&v43 + 1));
    }

LABEL_25:
    sub_24B4A0BD0(v45);
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_24B4A0AE8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFC618, &qword_24B51DB60);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24B4A0B50(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFC628, &unk_24B51DC90);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

_OWORD *sub_24B4A0BC0(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_24B4A0BD8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t BrowseState.activeStorefrontLocale.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_24B516C4C();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t BrowseState.isInternalBuild.setter(char a1)
{
  result = type metadata accessor for BrowseState(0);
  *(v1 + *(result + 24)) = a1;
  return result;
}

uint64_t BrowseState.isShowingCreatePlanAlert.setter(char a1)
{
  result = type metadata accessor for BrowseState(0);
  *(v1 + *(result + 28)) = a1;
  return result;
}

uint64_t BrowseState.isSubscribed.setter(char a1)
{
  result = type metadata accessor for BrowseState(0);
  *(v1 + *(result + 32)) = a1;
  return result;
}

uint64_t sub_24B4A0FE8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 40))(a2, a1, v5);
  return a2;
}

uint64_t BrowseState.platform.setter(char a1)
{
  result = type metadata accessor for BrowseState(0);
  *(v1 + *(result + 40)) = a1;
  return result;
}

uint64_t BrowseState.init(activeStorefrontLocale:identifier:isInternalBuild:isShowingCreatePlanAlert:isSubscribed:loadState:platform:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, char a4@<W3>, char a5@<W4>, uint64_t a6@<X5>, char a7@<W6>, uint64_t a8@<X8>)
{
  v16 = sub_24B516C4C();
  (*(*(v16 - 8) + 32))(a8, a1, v16);
  v17 = type metadata accessor for BrowseState(0);
  sub_24B4A1238(a2, a8 + v17[5], type metadata accessor for BrowseIdentifier);
  *(a8 + v17[6]) = a3;
  *(a8 + v17[7]) = a4;
  *(a8 + v17[8]) = a5;
  result = sub_24B4A1238(a6, a8 + v17[9], type metadata accessor for BrowseLoadState);
  *(a8 + v17[10]) = a7;
  return result;
}

uint64_t sub_24B4A1238(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_24B4A12A0()
{
  v1 = *v0;
  v2 = 0x696669746E656469;
  v3 = 0x7461745364616F6CLL;
  if (v1 != 5)
  {
    v3 = 0x6D726F6674616C70;
  }

  v4 = 0xD000000000000018;
  if (v1 != 3)
  {
    v4 = 0x7263736275537369;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  if (v1 != 1)
  {
    v2 = 0x6E7265746E497369;
  }

  if (!*v0)
  {
    v2 = 0xD000000000000016;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_24B4A13A4@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_24B4A2354(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_24B4A13D8(uint64_t a1)
{
  v2 = sub_24B4A1790();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B4A1414(uint64_t a1)
{
  v2 = sub_24B4A1790();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t BrowseState.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFC638, &qword_24B51A9D0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v11[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B4A1790();
  sub_24B517FDC();
  v11[15] = 0;
  sub_24B516C4C();
  sub_24B4A1E78(&qword_27EFFC420, MEMORY[0x277CC9788], MEMORY[0x277CC9790]);
  sub_24B517EBC();
  if (!v2)
  {
    v9 = type metadata accessor for BrowseState(0);
    v11[14] = 1;
    type metadata accessor for BrowseIdentifier(0);
    sub_24B4A1E78(&qword_27EFFC648, type metadata accessor for BrowseIdentifier, &protocol conformance descriptor for BrowseIdentifier);
    sub_24B517EBC();
    v11[13] = 2;
    sub_24B517E8C();
    v11[12] = 3;
    sub_24B517E8C();
    v11[11] = 4;
    sub_24B517E8C();
    v11[10] = 5;
    type metadata accessor for BrowseLoadState(0);
    sub_24B4A1E78(&qword_27EFFC650, type metadata accessor for BrowseLoadState, &protocol conformance descriptor for BrowseLoadState);
    sub_24B517EBC();
    v11[9] = *(v3 + *(v9 + 40));
    v11[8] = 6;
    sub_24B4A17E4();
    sub_24B517EBC();
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_24B4A1790()
{
  result = qword_27EFFC640;
  if (!qword_27EFFC640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFC640);
  }

  return result;
}

unint64_t sub_24B4A17E4()
{
  result = qword_27EFFC658;
  if (!qword_27EFFC658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFC658);
  }

  return result;
}

uint64_t BrowseState.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v18 = a2;
  State = type metadata accessor for BrowseLoadState(0);
  MEMORY[0x28223BE20](State);
  v20 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for BrowseIdentifier(0);
  MEMORY[0x28223BE20](v21);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_24B516C4C();
  v22 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v24 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFC660, &qword_24B51A9D8);
  v23 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v9 = &v18 - v8;
  v10 = type metadata accessor for BrowseState(0);
  MEMORY[0x28223BE20](v10);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B4A1790();
  v25 = v9;
  v13 = v27;
  sub_24B517FCC();
  if (v13)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v14 = v22;
  v35 = 0;
  sub_24B4A1E78(&qword_27EFFC440, MEMORY[0x277CC9788], MEMORY[0x277CC97A8]);
  sub_24B517E0C();
  (*(v14 + 32))(v12, v24, v6);
  v34 = 1;
  sub_24B4A1E78(&qword_27EFFC668, type metadata accessor for BrowseIdentifier, &protocol conformance descriptor for BrowseIdentifier);
  sub_24B517E0C();
  sub_24B4A1238(v5, &v12[v10[5]], type metadata accessor for BrowseIdentifier);
  v33 = 2;
  v15 = sub_24B517DDC();
  v16 = v23;
  v12[v10[6]] = v15 & 1;
  v32 = 3;
  v12[v10[7]] = sub_24B517DDC() & 1;
  v31 = 4;
  v12[v10[8]] = sub_24B517DDC() & 1;
  v30 = 5;
  sub_24B4A1E78(&qword_27EFFC670, type metadata accessor for BrowseLoadState, &protocol conformance descriptor for BrowseLoadState);
  sub_24B517E0C();
  sub_24B4A1238(v20, &v12[v10[9]], type metadata accessor for BrowseLoadState);
  v28 = 6;
  sub_24B4A1EC0();
  sub_24B517E0C();
  (*(v16 + 8))(v25, v26);
  v12[v10[10]] = v29;
  sub_24B4A1F14(v12, v18, type metadata accessor for BrowseState);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_24B4A1F7C(v12, type metadata accessor for BrowseState);
}

uint64_t sub_24B4A1E78(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_24B4A1EC0()
{
  result = qword_27EFFC678;
  if (!qword_27EFFC678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFC678);
  }

  return result;
}

uint64_t sub_24B4A1F14(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24B4A1F7C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

BOOL _s15FitnessBrowsing11BrowseStateV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if (MEMORY[0x24C240A20]() & 1) != 0 && (v4 = type metadata accessor for BrowseState(0), (_s15FitnessBrowsing16BrowseIdentifierO2eeoiySbAC_ACtFZ_0(a1 + v4[5], a2 + v4[5])) && *(a1 + v4[6]) == *(a2 + v4[6]) && *(a1 + v4[7]) == *(a2 + v4[7]) && *(a1 + v4[8]) == *(a2 + v4[8]) && (_s15FitnessBrowsing15BrowseLoadStateO2eeoiySbAC_ACtFZ_0(a1 + v4[9], a2 + v4[9]))
  {
    return *(a1 + v4[10]) == *(a2 + v4[10]);
  }

  else
  {
    return 0;
  }
}

uint64_t getEnumTagSinglePayload for BrowseState.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
    goto LABEL_17;
  }

  if (a2 + 6 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 6) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 6;
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

      return (*a1 | (v4 << 8)) - 6;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v8 = v6 - 7;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for BrowseState.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFA)
  {
    v4 = 0;
  }

  if (a2 > 0xF9)
  {
    v5 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
    *result = a2 + 6;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_24B4A2250()
{
  result = qword_27EFFC680;
  if (!qword_27EFFC680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFC680);
  }

  return result;
}

unint64_t sub_24B4A22A8()
{
  result = qword_27EFFC688;
  if (!qword_27EFFC688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFC688);
  }

  return result;
}

unint64_t sub_24B4A2300()
{
  result = qword_27EFFC690;
  if (!qword_27EFFC690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFC690);
  }

  return result;
}

uint64_t sub_24B4A2354(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000016 && 0x800000024B527690 == a2 || (sub_24B517EEC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x696669746E656469 && a2 == 0xEA00000000007265 || (sub_24B517EEC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6E7265746E497369 && a2 == 0xEF646C6975426C61 || (sub_24B517EEC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000018 && 0x800000024B5276B0 == a2 || (sub_24B517EEC() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x7263736275537369 && a2 == 0xEC00000064656269 || (sub_24B517EEC() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x7461745364616F6CLL && a2 == 0xE900000000000065 || (sub_24B517EEC() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x6D726F6674616C70 && a2 == 0xE800000000000000)
  {

    return 6;
  }

  else
  {
    v5 = sub_24B517EEC();

    if (v5)
    {
      return 6;
    }

    else
    {
      return 7;
    }
  }
}

uint64_t sub_24B4A25C8()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 9;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_24B4A25FC()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 5;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_24B4A2630()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 3;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

BOOL sub_24B4A2664()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24) >> 1;
  if (v1 != v2)
  {
    if (v1 >= v2)
    {
      __break(1u);
      return result;
    }

    *(v0 + 16) = v1 + 1;
  }

  return v1 == v2;
}

uint64_t sub_24B4A2690()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 4;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_24B4A26C4()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 2;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_24B4A26F8()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 6;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_24B4A2740@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6F65646976 && a2 == 0xE500000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_24B517EEC();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_24B4A27C4(uint64_t a1)
{
  v2 = sub_24B4A2BFC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B4A2800(uint64_t a1)
{
  v2 = sub_24B4A2BFC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B4A2858@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6E694C6F65646976 && a2 == 0xE90000000000006BLL)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_24B517EEC();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_24B4A28E8(uint64_t a1)
{
  v2 = sub_24B4A2CB4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B4A2924(uint64_t a1)
{
  v2 = sub_24B4A2CB4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t EditorialLink.encode(to:)(void *a1)
{
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFC698, &qword_24B51ABB0);
  v2 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v4 = &v14 - v3;
  v5 = type metadata accessor for EditorialLink(0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFC6A0, &qword_24B51ABB8);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v14 - v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B4A2BFC();
  sub_24B517FDC();
  sub_24B4A2C50(v14, v7);
  sub_24B4A2CB4();
  sub_24B517E3C();
  type metadata accessor for EditorialVideoLink(0);
  sub_24B4A362C(&qword_27EFFC6B8, type metadata accessor for EditorialVideoLink, &protocol conformance descriptor for EditorialVideoLink);
  v12 = v15;
  sub_24B517EBC();
  sub_24B4A2D08(v7);
  (*(v2 + 8))(v4, v12);
  return (*(v9 + 8))(v11, v8);
}

unint64_t sub_24B4A2BFC()
{
  result = qword_27EFFC6A8;
  if (!qword_27EFFC6A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFC6A8);
  }

  return result;
}

uint64_t sub_24B4A2C50(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EditorialLink(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_24B4A2CB4()
{
  result = qword_27EFFC6B0;
  if (!qword_27EFFC6B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFC6B0);
  }

  return result;
}

uint64_t sub_24B4A2D08(uint64_t a1)
{
  v2 = type metadata accessor for EditorialVideoLink(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t EditorialLink.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v22 = a2;
  v3 = type metadata accessor for EditorialLink(0);
  MEMORY[0x28223BE20](v3);
  v5 = v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFC6C0, &qword_24B51ABC0);
  v23 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = v21 - v7;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFC6C8, &qword_24B51ABC8);
  v9 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v11 = v21 - v10;
  v12 = a1[3];
  v25 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v12);
  sub_24B4A2BFC();
  v13 = v24;
  sub_24B517FCC();
  if (!v13)
  {
    v14 = v5;
    v24 = v9;
    v15 = sub_24B517E1C();
    if (*(v15 + 16) == 1)
    {
      sub_24B4A2CB4();
      sub_24B517D7C();
      v16 = v24;
      type metadata accessor for EditorialVideoLink(0);
      sub_24B4A362C(&qword_27EFFC6D0, type metadata accessor for EditorialVideoLink, &protocol conformance descriptor for EditorialVideoLink);
      v21[1] = v15;
      sub_24B517E0C();
      (*(v23 + 8))(v8, v6);
      (*(v16 + 8))(v11, v26);
      swift_unknownObjectRelease();
      sub_24B4A357C(v14, v22, type metadata accessor for EditorialLink);
    }

    else
    {
      v17 = sub_24B517D0C();
      swift_allocError();
      v19 = v18;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFBFA8, &unk_24B5191B0);
      *v19 = v3;
      sub_24B517D8C();
      sub_24B517CFC();
      (*(*(v17 - 8) + 104))(v19, *MEMORY[0x277D84160], v17);
      swift_willThrow();
      (*(v24 + 8))(v11, v26);
      swift_unknownObjectRelease();
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v25);
}

uint64_t EditorialLink.hash(into:)(uint64_t a1)
{
  v2 = type metadata accessor for EditorialVideoLink(0);
  MEMORY[0x28223BE20](v2);
  v4 = (&v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = type metadata accessor for EditorialLink(0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24B4A2C50(v1, v7);
  sub_24B4A357C(v7, v4, type metadata accessor for EditorialVideoLink);
  MEMORY[0x24C241D70](0);
  v8 = *v4;
  if (*v4 == 0.0)
  {
    v8 = 0.0;
  }

  MEMORY[0x24C241D90](*&v8);
  sub_24B517B3C();
  sub_24B516BAC();
  sub_24B4A362C(&qword_2810EED80, MEMORY[0x277CC9260], MEMORY[0x277CC9270]);
  sub_24B517A9C();
  return sub_24B4A2D08(v4);
}

uint64_t EditorialLink.hashValue.getter()
{
  sub_24B517F7C();
  EditorialLink.hash(into:)(v1);
  return sub_24B517FBC();
}

uint64_t sub_24B4A334C()
{
  sub_24B517F7C();
  EditorialLink.hash(into:)(v1);
  return sub_24B517FBC();
}

uint64_t sub_24B4A3390(uint64_t a1)
{
  sub_24B517F7C();
  EditorialLink.hash(into:)(v2);
  return sub_24B517FBC();
}

BOOL _s15FitnessBrowsing13EditorialLinkO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EditorialVideoLink(0);
  v5 = MEMORY[0x28223BE20](v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v18 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27EFFC718, &qword_24B51AED8);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v13 = &v18 - v12;
  v14 = *(v11 + 56);
  sub_24B4A2C50(a1, &v18 - v12);
  sub_24B4A2C50(a2, &v13[v14]);
  sub_24B4A357C(v13, v9, type metadata accessor for EditorialVideoLink);
  sub_24B4A357C(&v13[v14], v7, type metadata accessor for EditorialVideoLink);
  v16 = 0;
  if (*v9 == *v7)
  {
    v15 = *(v9 + 1) == *(v7 + 1) && *(v9 + 2) == *(v7 + 2);
    if (v15 || (sub_24B517EEC()) && (sub_24B516B9C())
    {
      v16 = 1;
    }
  }

  sub_24B4A2D08(v7);
  sub_24B4A2D08(v9);
  return v16;
}

uint64_t sub_24B4A357C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_24B4A362C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_24B4A3674(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFC6E0, &qword_24B51AC90);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_24B4A36EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFC6E0, &qword_24B51AC90);
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, a2, a3, v6);
}

unint64_t sub_24B4A3798()
{
  result = qword_27EFFC6E8;
  if (!qword_27EFFC6E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFC6E8);
  }

  return result;
}

unint64_t sub_24B4A37F0()
{
  result = qword_27EFFC6F0;
  if (!qword_27EFFC6F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFC6F0);
  }

  return result;
}

unint64_t sub_24B4A3848()
{
  result = qword_27EFFC6F8;
  if (!qword_27EFFC6F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFC6F8);
  }

  return result;
}

unint64_t sub_24B4A38A0()
{
  result = qword_27EFFC700;
  if (!qword_27EFFC700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFC700);
  }

  return result;
}

unint64_t sub_24B4A38F8()
{
  result = qword_27EFFC708;
  if (!qword_27EFFC708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFC708);
  }

  return result;
}

unint64_t sub_24B4A3950()
{
  result = qword_27EFFC710;
  if (!qword_27EFFC710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFC710);
  }

  return result;
}

uint64_t sub_24B4A39C8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFC7A8, qword_24B51AF78);
  sub_24B4A4544();

  return sub_24B516F7C();
}

uint64_t DynamicBrowseButtonView.init(store:bookmarkActionViewBuilder:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void (*a3)(uint64_t)@<X2>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v13 = swift_allocObject();
  *(v13 + 16) = a1;
  *(v13 + 24) = a2;
  *a7 = sub_24B48D8D8;
  *(a7 + 8) = v13;
  *(a7 + 16) = 0;
  type metadata accessor for DynamicBrowseButtonView(0, a5, a6, v14);

  a3(v15);
}

uint64_t sub_24B4A3B14()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFC7B8, &qword_24B51AF90);
  MEMORY[0x28223BE20](v0);
  v2 = &v8 - v1;
  sub_24B4A39C8();
  swift_getKeyPath();
  sub_24B5179CC();

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    if (!EnumCaseMultiPayload)
    {
      return *v2;
    }

    if (EnumCaseMultiPayload == 1)
    {
      v4 = *v2;
      v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFC7C0, &qword_24B51AFB8) + 48);
      v6 = sub_24B516BEC();
      (*(*(v6 - 8) + 8))(&v2[v5], v6);
      return v4;
    }

    sub_24B4A45A8(v2);
  }

  return 0;
}

uint64_t DynamicBrowseButtonView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a2;
  v3 = *(a1 + 16);
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](a1);
  v21 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v8 = &v20 - v7;
  v9 = sub_24B517C8C();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v22 = &v20 - v14;
  sub_24B4A39C8();
  swift_getKeyPath();
  sub_24B5179CC();

  if (v25 == 1 || (sub_24B4A3B14() & 1) != 0)
  {
    v15 = *(a1 + 24);
    sub_24B49711C();
    v16 = v21;
    sub_24B49711C();
    (*(v4 + 8))(v8, v3);
    (*(v4 + 32))(v13, v16, v3);
    (*(v4 + 56))(v13, 0, 1, v3);
    v17 = v22;
    (*(v10 + 16))(v22, v13, v9);
    v18 = *(v10 + 8);
    v18(v13, v9);
  }

  else
  {
    (*(v4 + 56))(v13, 1, 1, v3);
    v17 = v22;
    (*(v10 + 16))(v22, v13, v9);
    v18 = *(v10 + 8);
    v18(v13, v9);
    v15 = *(a1 + 24);
  }

  v24 = v15;
  swift_getWitnessTable();
  sub_24B49711C();
  return (v18)(v17, v9);
}

uint64_t sub_24B4A3FB0@<X0>(uint64_t a1@<X0>, uint64_t a3@<X8>)
{
  v5 = sub_24B517C8C();
  v6 = *(*(v5 - 8) + 16);

  return v6(a3, a1, v5);
}

void sub_24B4A406C(uint64_t a1)
{
  sub_24B4A44D4(319);
  if (v1 <= 0x3F)
  {
    swift_checkMetadataState();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_24B4A40F4(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (v5 <= 0xFE)
  {
    v7 = 254;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v8 = a2 - v7;
  if (a2 <= v7)
  {
    goto LABEL_26;
  }

  v9 = ((v6 + 17) & ~v6) + *(*(*(a3 + 16) - 8) + 64);
  v10 = 8 * v9;
  if (v9 <= 3)
  {
    v13 = ((v8 + ~(-1 << v10)) >> v10) + 1;
    if (HIWORD(v13))
    {
      v11 = *(a1 + v9);
      if (!v11)
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 > 0xFF)
    {
      v11 = *(a1 + v9);
      if (!*(a1 + v9))
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 < 2)
    {
LABEL_26:
      if (v5 > 0xFE)
      {
        return (*(v4 + 48))((a1 + v6 + 17) & ~v6);
      }

      v15 = *(a1 + 16);
      if (v15 > 1)
      {
        return (v15 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v11 = *(a1 + v9);
  if (!*(a1 + v9))
  {
    goto LABEL_26;
  }

LABEL_15:
  v14 = (v11 - 1) << v10;
  if (v9 > 3)
  {
    v14 = 0;
  }

  if (v9)
  {
    if (v9 > 3)
    {
      LODWORD(v9) = 4;
    }

    if (v9 > 2)
    {
      if (v9 == 3)
      {
        LODWORD(v9) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v9) = *a1;
      }
    }

    else if (v9 == 1)
    {
      LODWORD(v9) = *a1;
    }

    else
    {
      LODWORD(v9) = *a1;
    }
  }

  return v7 + (v9 | v14) + 1;
}

void sub_24B4A4278(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0xFE)
  {
    v8 = 254;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(v6 + 80);
  v10 = ((v9 + 17) & ~v9) + *(*(*(a4 + 16) - 8) + 64);
  v11 = a3 >= v8;
  v12 = a3 - v8;
  if (v12 != 0 && v11)
  {
    if (v10 <= 3)
    {
      v16 = ((v12 + ~(-1 << (8 * v10))) >> (8 * v10)) + 1;
      if (HIWORD(v16))
      {
        v13 = 4;
      }

      else
      {
        if (v16 < 0x100)
        {
          v17 = 1;
        }

        else
        {
          v17 = 2;
        }

        if (v16 >= 2)
        {
          v13 = v17;
        }

        else
        {
          v13 = 0;
        }
      }
    }

    else
    {
      v13 = 1;
    }
  }

  else
  {
    v13 = 0;
  }

  if (v8 < a2)
  {
    v14 = ~v8 + a2;
    if (v10 < 4)
    {
      v15 = (v14 >> (8 * v10)) + 1;
      if (v10)
      {
        v18 = v14 & ~(-1 << (8 * v10));
        bzero(a1, v10);
        if (v10 != 3)
        {
          if (v10 == 2)
          {
            *a1 = v18;
            if (v13 > 1)
            {
LABEL_46:
              if (v13 == 2)
              {
                *&a1[v10] = v15;
              }

              else
              {
                *&a1[v10] = v15;
              }

              return;
            }
          }

          else
          {
            *a1 = v14;
            if (v13 > 1)
            {
              goto LABEL_46;
            }
          }

          goto LABEL_43;
        }

        *a1 = v18;
        a1[2] = BYTE2(v18);
      }

      if (v13 > 1)
      {
        goto LABEL_46;
      }
    }

    else
    {
      bzero(a1, v10);
      *a1 = v14;
      v15 = 1;
      if (v13 > 1)
      {
        goto LABEL_46;
      }
    }

LABEL_43:
    if (v13)
    {
      a1[v10] = v15;
    }

    return;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *&a1[v10] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    }

    *&a1[v10] = 0;
  }

  else if (v13)
  {
    a1[v10] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_31;
  }

  if (!a2)
  {
    return;
  }

LABEL_31:
  if (v7 > 0xFE)
  {
    v19 = *(v6 + 56);
    v20 = &a1[v9 + 17] & ~v9;

    v19(v20);
  }

  else if (a2 > 0xFE)
  {
    a1[16] = 0;
    *a1 = a2 - 255;
    *(a1 + 1) = 0;
  }

  else
  {
    a1[16] = -a2;
  }
}

void sub_24B4A44D4(uint64_t a1)
{
  if (!qword_27EFFC7A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFFC7A8, qword_24B51AF78);
    sub_24B4A4544();
    v1 = sub_24B516F8C();
    if (!v2)
    {
      atomic_store(v1, &qword_27EFFC7A0);
    }
  }
}

unint64_t sub_24B4A4544()
{
  result = qword_27EFFC7B0;
  if (!qword_27EFFC7B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFFC7A8, qword_24B51AF78);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFC7B0);
  }

  return result;
}

uint64_t sub_24B4A45A8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFC7B8, &qword_24B51AF90);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t CreatePlanBannerState.actionTitle.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t CreatePlanBannerState.subtitle.getter()
{
  v1 = *(v0 + 24);

  return v1;
}

uint64_t CreatePlanBannerState.title.getter()
{
  v1 = *(v0 + 40);

  return v1;
}

void __swiftcall CreatePlanBannerState.init(actionTitle:sizeClass:subtitle:title:visibility:)(FitnessBrowsing::CreatePlanBannerState *__return_ptr retstr, Swift::String_optional actionTitle, FitnessBrowsing::BrowseSizeClass sizeClass, Swift::String subtitle, Swift::String title, FitnessBrowsing::CreatePlanBannerVisibility visibility)
{
  v6 = *sizeClass;
  v7 = *visibility;
  retstr->actionTitle = actionTitle;
  retstr->sizeClass = v6;
  retstr->subtitle = subtitle;
  retstr->title = title;
  retstr->visibility = v7;
}

uint64_t sub_24B4A4704()
{
  v1 = *v0;
  v2 = 0x69546E6F69746361;
  v3 = 0x656C746974627573;
  v4 = 0x656C746974;
  if (v1 != 3)
  {
    v4 = 0x696C696269736976;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x73616C43657A6973;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_24B4A47AC@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_24B4A5700(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_24B4A47E0(uint64_t a1)
{
  v2 = sub_24B4A4AA0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B4A481C(uint64_t a1)
{
  v2 = sub_24B4A4AA0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t CreatePlanBannerState.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFC7C8, &qword_24B51AFC0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v11 - v5;
  v17 = *(v1 + 16);
  v7 = *(v1 + 24);
  v15 = *(v1 + 32);
  v16 = v7;
  v8 = *(v1 + 40);
  v13 = *(v1 + 48);
  v14 = v8;
  v12 = *(v1 + 56);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B4A4AA0();
  sub_24B517FDC();
  v25 = 0;
  v9 = v18;
  sub_24B517E4C();
  if (!v9)
  {
    v24 = v17;
    v23 = 1;
    sub_24B4A4AF4();
    sub_24B517EBC();
    v22 = 2;
    sub_24B517E7C();
    v21 = 3;
    sub_24B517E7C();
    v20 = v12;
    v19 = 4;
    sub_24B4A4B48();
    sub_24B517EBC();
  }

  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_24B4A4AA0()
{
  result = qword_27EFFC7D0;
  if (!qword_27EFFC7D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFC7D0);
  }

  return result;
}

unint64_t sub_24B4A4AF4()
{
  result = qword_27EFFC7D8;
  if (!qword_27EFFC7D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFC7D8);
  }

  return result;
}

unint64_t sub_24B4A4B48()
{
  result = qword_27EFFC7E0;
  if (!qword_27EFFC7E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFC7E0);
  }

  return result;
}

uint64_t CreatePlanBannerState.init(from:)@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFC7E8, &qword_24B51AFC8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v24 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B4A4AA0();
  sub_24B517FCC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  LOBYTE(v34[0]) = 0;
  v9 = sub_24B517D9C();
  v11 = v10;
  v30 = v9;
  LOBYTE(v31) = 1;
  sub_24B4A4F10();
  sub_24B517E0C();
  v12 = LOBYTE(v34[0]);
  LOBYTE(v34[0]) = 2;
  v27 = sub_24B517DCC();
  v41 = v12;
  v29 = v13;
  LOBYTE(v34[0]) = 3;
  v14 = sub_24B517DCC();
  v28 = v15;
  v42 = 4;
  sub_24B4A4F64();
  sub_24B517E0C();
  (*(v6 + 8))(v8, v5);
  v25 = v43;
  v16 = v14;
  v26 = v14;
  v17 = v29;
  v18 = v30;
  *&v31 = v30;
  *(&v31 + 1) = v11;
  v19 = v41;
  LOBYTE(v32) = v41;
  v20 = v27;
  v21 = v28;
  *(&v32 + 1) = v27;
  *v33 = v29;
  *&v33[8] = v16;
  *&v33[16] = v28;
  v33[24] = v43;
  v22 = v32;
  *a2 = v31;
  a2[1] = v22;
  a2[2] = *v33;
  *(a2 + 41) = *&v33[9];
  sub_24B4A4FB8(&v31, v34);
  __swift_destroy_boxed_opaque_existential_1(a1);
  v34[0] = v18;
  v34[1] = v11;
  v35 = v19;
  v36 = v20;
  v37 = v17;
  v38 = v26;
  v39 = v21;
  v40 = v25;
  return sub_24B4A4FF0(v34);
}

unint64_t sub_24B4A4F10()
{
  result = qword_27EFFC7F0;
  if (!qword_27EFFC7F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFC7F0);
  }

  return result;
}

unint64_t sub_24B4A4F64()
{
  result = qword_27EFFC7F8;
  if (!qword_27EFFC7F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFC7F8);
  }

  return result;
}

uint64_t CreatePlanBannerState.hash(into:)(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 56);
  if (*(v1 + 8))
  {
    sub_24B517F9C();
    sub_24B517B3C();
  }

  else
  {
    sub_24B517F9C();
  }

  MEMORY[0x24C241D70](v2);
  sub_24B517B3C();
  sub_24B517B3C();
  return MEMORY[0x24C241D70](v3);
}

uint64_t CreatePlanBannerState.hashValue.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  v3 = *(v0 + 56);
  sub_24B517F7C();
  sub_24B517F9C();
  if (v1)
  {
    sub_24B517B3C();
  }

  MEMORY[0x24C241D70](v2);
  sub_24B517B3C();
  sub_24B517B3C();
  MEMORY[0x24C241D70](v3);
  return sub_24B517FBC();
}

uint64_t sub_24B4A51E4(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 56);
  if (*(v1 + 8))
  {
    sub_24B517F9C();
    sub_24B517B3C();
  }

  else
  {
    sub_24B517F9C();
  }

  MEMORY[0x24C241D70](v2);
  sub_24B517B3C();
  sub_24B517B3C();
  return MEMORY[0x24C241D70](v3);
}

uint64_t sub_24B4A52A0(uint64_t a1)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  v4 = *(v1 + 56);
  sub_24B517F7C();
  sub_24B517F9C();
  if (v2)
  {
    sub_24B517B3C();
  }

  MEMORY[0x24C241D70](v3);
  sub_24B517B3C();
  sub_24B517B3C();
  MEMORY[0x24C241D70](v4);
  return sub_24B517FBC();
}

BOOL _s15FitnessBrowsing21CreatePlanBannerStateV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t a2)
{
  v3 = a1[1];
  v4 = *(a1 + 16);
  v5 = a1[3];
  v6 = a1[4];
  v7 = a1[5];
  v8 = a1[6];
  v9 = *(a1 + 56);
  v10 = *(a2 + 8);
  v11 = *(a2 + 16);
  v12 = *(a2 + 24);
  v13 = *(a2 + 32);
  v14 = *(a2 + 40);
  v15 = *(a2 + 48);
  v16 = *(a2 + 56);
  if (v3)
  {
    if (!v10)
    {
      return 0;
    }

    if (*a1 == *a2 && v3 == v10)
    {
      if (v4 != v11)
      {
        return 0;
      }

LABEL_12:
      if (v5 == v12 && v6 == v13 || (v19 = v9, v20 = v16, v21 = sub_24B517EEC(), v16 = v20, v9 = v19, (v21 & 1) != 0))
      {
        if (v7 == v14 && v8 == v15)
        {
          return v9 == v16;
        }

        v22 = v9;
        v23 = v16;
        v24 = sub_24B517EEC();
        v16 = v23;
        v9 = v22;
        if (v24)
        {
          return v9 == v16;
        }
      }

      return 0;
    }

    v25 = *(a2 + 56);
    v26 = *(a1 + 56);
    v18 = sub_24B517EEC();
    result = 0;
    if (v18)
    {
      v16 = v25;
      v9 = v26;
      if (v4 == v11)
      {
        goto LABEL_12;
      }
    }
  }

  else
  {
    result = 0;
    if (!v10 && v4 == v11)
    {
      goto LABEL_12;
    }
  }

  return result;
}

unint64_t sub_24B4A54D0()
{
  result = qword_27EFFC800;
  if (!qword_27EFFC800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFC800);
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

uint64_t sub_24B4A5540(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 57))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_24B4A5588(uint64_t result, int a2, int a3)
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
      *(result + 32) = (a2 - 1);
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

unint64_t sub_24B4A55FC()
{
  result = qword_27EFFC808;
  if (!qword_27EFFC808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFC808);
  }

  return result;
}

unint64_t sub_24B4A5654()
{
  result = qword_27EFFC810;
  if (!qword_27EFFC810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFC810);
  }

  return result;
}

unint64_t sub_24B4A56AC()
{
  result = qword_27EFFC818;
  if (!qword_27EFFC818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFC818);
  }

  return result;
}

uint64_t sub_24B4A5700(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x69546E6F69746361 && a2 == 0xEB00000000656C74;
  if (v4 || (sub_24B517EEC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x73616C43657A6973 && a2 == 0xE900000000000073 || (sub_24B517EEC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x656C746974627573 && a2 == 0xE800000000000000 || (sub_24B517EEC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x656C746974 && a2 == 0xE500000000000000 || (sub_24B517EEC() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x696C696269736976 && a2 == 0xEA00000000007974)
  {

    return 4;
  }

  else
  {
    v6 = sub_24B517EEC();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t VideoAsset.contentRating.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t VideoAsset.streamingProgramIdentifier.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t VideoAsset.streamingURL.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for VideoAsset(0) + 24);
  v4 = sub_24B516BAC();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t VideoAsset.init(contentRating:streamingURL:streamingProgramIdentifier:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char *a6@<X8>)
{
  *a6 = a1;
  *(a6 + 1) = a2;
  v10 = *(type metadata accessor for VideoAsset(0) + 24);
  v11 = sub_24B516BAC();
  result = (*(*(v11 - 8) + 32))(&a6[v10], a3, v11);
  *(a6 + 2) = a4;
  *(a6 + 3) = a5;
  return result;
}

unint64_t sub_24B4A5A28()
{
  v1 = 0xD00000000000001ALL;
  if (*v0 != 1)
  {
    v1 = 0x6E696D6165727473;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x52746E65746E6F63;
  }
}

uint64_t sub_24B4A5A9C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_24B4A6A4C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_24B4A5AC4(uint64_t a1)
{
  v2 = sub_24B4A5D58();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B4A5B00(uint64_t a1)
{
  v2 = sub_24B4A5D58();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t VideoAsset.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFC820, &qword_24B51B200);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B4A5D58();
  sub_24B517FDC();
  v8[15] = 0;
  sub_24B517E7C();
  if (!v1)
  {
    v8[14] = 1;
    sub_24B517E4C();
    type metadata accessor for VideoAsset(0);
    v8[13] = 2;
    sub_24B516BAC();
    sub_24B4A6784(&qword_27EFFC048, MEMORY[0x277CC9260], MEMORY[0x277CC9268]);
    sub_24B517EBC();
  }

  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_24B4A5D58()
{
  result = qword_27EFFC828;
  if (!qword_27EFFC828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFC828);
  }

  return result;
}

uint64_t VideoAsset.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v19 = a2;
  v21 = sub_24B516BAC();
  v18 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v5 = v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFC830, &qword_24B51B208);
  v20 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v7 = v16 - v6;
  v8 = type metadata accessor for VideoAsset(0);
  MEMORY[0x28223BE20](v8);
  v10 = (v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B4A5D58();
  sub_24B517FCC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v17 = a1;
  v12 = v20;
  v11 = v21;
  v25 = 0;
  *v10 = sub_24B517DCC();
  v10[1] = v13;
  v16[1] = v13;
  v24 = 1;
  v10[2] = sub_24B517D9C();
  v10[3] = v14;
  v23 = 2;
  sub_24B4A6784(&qword_27EFFC068, MEMORY[0x277CC9260], MEMORY[0x277CC9280]);
  sub_24B517E0C();
  (*(v12 + 8))(v7, v22);
  (*(v18 + 32))(v10 + *(v8 + 24), v5, v11);
  sub_24B4A6134(v10, v19);
  __swift_destroy_boxed_opaque_existential_1(v17);
  return sub_24B4A6198(v10);
}

uint64_t sub_24B4A6134(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for VideoAsset(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24B4A6198(uint64_t a1)
{
  v2 = type metadata accessor for VideoAsset(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t VideoAsset.hash(into:)(uint64_t a1)
{
  sub_24B517B3C();
  if (*(v1 + 24))
  {
    sub_24B517F9C();
    sub_24B517B3C();
  }

  else
  {
    sub_24B517F9C();
  }

  type metadata accessor for VideoAsset(0);
  sub_24B516BAC();
  sub_24B4A6784(&qword_2810EED80, MEMORY[0x277CC9260], MEMORY[0x277CC9270]);
  return sub_24B517A9C();
}

uint64_t VideoAsset.hashValue.getter()
{
  sub_24B517F7C();
  sub_24B517B3C();
  if (*(v0 + 24))
  {
    sub_24B517F9C();
    sub_24B517B3C();
  }

  else
  {
    sub_24B517F9C();
  }

  type metadata accessor for VideoAsset(0);
  sub_24B516BAC();
  sub_24B4A6784(&qword_2810EED80, MEMORY[0x277CC9260], MEMORY[0x277CC9270]);
  sub_24B517A9C();
  return sub_24B517FBC();
}

uint64_t sub_24B4A63E4()
{
  sub_24B517F7C();
  sub_24B517B3C();
  if (*(v0 + 24))
  {
    sub_24B517F9C();
    sub_24B517B3C();
  }

  else
  {
    sub_24B517F9C();
  }

  sub_24B516BAC();
  sub_24B4A6784(&qword_2810EED80, MEMORY[0x277CC9260], MEMORY[0x277CC9270]);
  sub_24B517A9C();
  return sub_24B517FBC();
}

uint64_t sub_24B4A64D0(uint64_t a1)
{
  sub_24B517B3C();
  if (*(v1 + 24))
  {
    sub_24B517F9C();
    sub_24B517B3C();
  }

  else
  {
    sub_24B517F9C();
  }

  sub_24B516BAC();
  sub_24B4A6784(&qword_2810EED80, MEMORY[0x277CC9260], MEMORY[0x277CC9270]);
  return sub_24B517A9C();
}

uint64_t sub_24B4A65A0(uint64_t a1)
{
  sub_24B517F7C();
  sub_24B517B3C();
  if (*(v1 + 24))
  {
    sub_24B517F9C();
    sub_24B517B3C();
  }

  else
  {
    sub_24B517F9C();
  }

  sub_24B516BAC();
  sub_24B4A6784(&qword_2810EED80, MEMORY[0x277CC9260], MEMORY[0x277CC9270]);
  sub_24B517A9C();
  return sub_24B517FBC();
}

uint64_t _s15FitnessBrowsing10VideoAssetV2eeoiySbAC_ACtFZ_0(uint64_t *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_24B517EEC() & 1) == 0)
  {
    return 0;
  }

  v5 = a1[3];
  v6 = a2[3];
  if (v5)
  {
    if (v6)
    {
      v7 = a1[2] == a2[2] && v5 == v6;
      if (v7 || (sub_24B517EEC() & 1) != 0)
      {
        goto LABEL_13;
      }
    }

    return 0;
  }

  if (v6)
  {
    return 0;
  }

LABEL_13:
  type metadata accessor for VideoAsset(0);

  return sub_24B516B9C();
}

uint64_t sub_24B4A6784(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t getEnumTagSinglePayload for BrowseFontSymbolicTrait(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for BrowseFontSymbolicTrait(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_24B4A6948()
{
  result = qword_27EFFC840;
  if (!qword_27EFFC840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFC840);
  }

  return result;
}

unint64_t sub_24B4A69A0()
{
  result = qword_27EFFC848;
  if (!qword_27EFFC848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFC848);
  }

  return result;
}

unint64_t sub_24B4A69F8()
{
  result = qword_27EFFC850;
  if (!qword_27EFFC850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFC850);
  }

  return result;
}

uint64_t sub_24B4A6A4C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x52746E65746E6F63 && a2 == 0xED0000676E697461;
  if (v4 || (sub_24B517EEC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD00000000000001ALL && 0x800000024B5276D0 == a2 || (sub_24B517EEC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6E696D6165727473 && a2 == 0xEC0000004C525567)
  {

    return 2;
  }

  else
  {
    v6 = sub_24B517EEC();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_24B4A6B88()
{
  v1 = *v0;
  v2 = 0x6574656C706D6F63;
  v3 = 0x656C756465686373;
  v4 = 0x6B63617473;
  if (v1 != 3)
  {
    v4 = 0x616C696176616E75;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x79636E65636572;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_24B4A6C28@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_24B4A775C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_24B4A6C50(uint64_t a1)
{
  v2 = sub_24B4A7494();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B4A6C8C(uint64_t a1)
{
  v2 = sub_24B4A7494();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B4A6CC8(uint64_t a1)
{
  v2 = sub_24B4A7638();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B4A6D04(uint64_t a1)
{
  v2 = sub_24B4A7638();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B4A6D40(uint64_t a1)
{
  v2 = sub_24B4A75E4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B4A6D7C(uint64_t a1)
{
  v2 = sub_24B4A75E4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B4A6DB8(uint64_t a1)
{
  v2 = sub_24B4A7590();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B4A6DF4(uint64_t a1)
{
  v2 = sub_24B4A7590();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B4A6E30(uint64_t a1)
{
  v2 = sub_24B4A753C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B4A6E6C(uint64_t a1)
{
  v2 = sub_24B4A753C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B4A6EA8(uint64_t a1)
{
  v2 = sub_24B4A74E8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B4A6EE4(uint64_t a1)
{
  v2 = sub_24B4A74E8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t BrowseArtworkOverlayTag.encode(to:)(void *a1, int a2)
{
  v40 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFC858, &qword_24B51B400);
  v36 = *(v3 - 8);
  v37 = v3;
  MEMORY[0x28223BE20](v3);
  v35 = &v29 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFC860, &qword_24B51B408);
  v33 = *(v5 - 8);
  v34 = v5;
  MEMORY[0x28223BE20](v5);
  v32 = &v29 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFC868, &qword_24B51B410);
  v30 = *(v7 - 8);
  v31 = v7;
  MEMORY[0x28223BE20](v7);
  v29 = &v29 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFC870, &qword_24B51B418);
  v39 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = &v29 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFC878, &qword_24B51B420);
  v38 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v14 = &v29 - v13;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFC880, &qword_24B51B428);
  v15 = *(v41 - 8);
  MEMORY[0x28223BE20](v41);
  v17 = &v29 - v16;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B4A7494();
  sub_24B517FDC();
  v18 = (v15 + 8);
  if (v40 <= 1u)
  {
    v24 = v38;
    v23 = v39;
    if (v40)
    {
      v43 = 1;
      sub_24B4A75E4();
      v28 = v41;
      sub_24B517E3C();
      (*(v23 + 8))(v11, v9);
      return (*v18)(v17, v28);
    }

    v42 = 0;
    sub_24B4A7638();
    v25 = v41;
    sub_24B517E3C();
    (*(v24 + 8))(v14, v12);
    return (*v18)(v17, v25);
  }

  if (v40 == 2)
  {
    v44 = 2;
    sub_24B4A7590();
    v26 = v29;
    v25 = v41;
    sub_24B517E3C();
    (*(v30 + 8))(v26, v31);
    return (*v18)(v17, v25);
  }

  if (v40 == 3)
  {
    v45 = 3;
    sub_24B4A753C();
    v19 = v32;
    v20 = v41;
    sub_24B517E3C();
    v22 = v33;
    v21 = v34;
  }

  else
  {
    v46 = 4;
    sub_24B4A74E8();
    v19 = v35;
    v20 = v41;
    sub_24B517E3C();
    v22 = v36;
    v21 = v37;
  }

  (*(v22 + 8))(v19, v21);
  return (*v18)(v17, v20);
}

unint64_t sub_24B4A7494()
{
  result = qword_27EFFC888;
  if (!qword_27EFFC888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFC888);
  }

  return result;
}

unint64_t sub_24B4A74E8()
{
  result = qword_27EFFC890;
  if (!qword_27EFFC890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFC890);
  }

  return result;
}

unint64_t sub_24B4A753C()
{
  result = qword_27EFFC898;
  if (!qword_27EFFC898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFC898);
  }

  return result;
}

unint64_t sub_24B4A7590()
{
  result = qword_27EFFC8A0;
  if (!qword_27EFFC8A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFC8A0);
  }

  return result;
}

unint64_t sub_24B4A75E4()
{
  result = qword_27EFFC8A8;
  if (!qword_27EFFC8A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFC8A8);
  }

  return result;
}

unint64_t sub_24B4A7638()
{
  result = qword_27EFFC8B0;
  if (!qword_27EFFC8B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFC8B0);
  }

  return result;
}

uint64_t sub_24B4A76A4@<X0>(_BYTE *a1@<X8>, void *a2@<X0>)
{
  result = sub_24B4A791C(a2);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t BrowseArtworkOverlayTag.hashValue.getter(unsigned __int8 a1)
{
  sub_24B517F7C();
  MEMORY[0x24C241D70](a1);
  return sub_24B517FBC();
}

uint64_t sub_24B4A775C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6574656C706D6F63 && a2 == 0xE900000000000064;
  if (v4 || (sub_24B517EEC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x79636E65636572 && a2 == 0xE700000000000000 || (sub_24B517EEC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x656C756465686373 && a2 == 0xE900000000000064 || (sub_24B517EEC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6B63617473 && a2 == 0xE500000000000000 || (sub_24B517EEC() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x616C696176616E75 && a2 == 0xEB00000000656C62)
  {

    return 4;
  }

  else
  {
    v6 = sub_24B517EEC();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_24B4A791C(void *a1)
{
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFC920, &qword_24B51B9D0);
  v42 = *(v45 - 8);
  MEMORY[0x28223BE20](v45);
  v47 = &v35 - v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFC928, &qword_24B51B9D8);
  v43 = *(v3 - 8);
  v44 = v3;
  MEMORY[0x28223BE20](v3);
  v46 = &v35 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFC930, &qword_24B51B9E0);
  v40 = *(v5 - 8);
  v41 = v5;
  MEMORY[0x28223BE20](v5);
  v48 = &v35 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFC938, &qword_24B51B9E8);
  v38 = *(v7 - 8);
  v39 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = &v35 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFC940, &qword_24B51B9F0);
  v37 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v12 = &v35 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFC948, &qword_24B51B9F8);
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v35 - v15;
  v17 = a1[3];
  v49 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v17);
  sub_24B4A7494();
  v18 = v50;
  sub_24B517FCC();
  if (v18)
  {
    goto LABEL_9;
  }

  v19 = v12;
  v36 = v10;
  v20 = v48;
  v50 = v14;
  v21 = v16;
  v22 = sub_24B517E1C();
  v23 = (2 * *(v22 + 16)) | 1;
  v51 = v22;
  v52 = v22 + 32;
  v53 = 0;
  v54 = v23;
  v24 = sub_24B4A25FC();
  if (v24 == 5 || v53 != v54 >> 1)
  {
    v28 = v13;
    v29 = sub_24B517D0C();
    v14 = swift_allocError();
    v31 = v30;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFBFA8, &unk_24B5191B0);
    *v31 = &type metadata for BrowseArtworkOverlayTag;
    sub_24B517D8C();
    sub_24B517CFC();
    (*(*(v29 - 8) + 104))(v31, *MEMORY[0x277D84160], v29);
    swift_willThrow();
    (*(v50 + 8))(v21, v28);
    swift_unknownObjectRelease();
LABEL_9:
    __swift_destroy_boxed_opaque_existential_1(v49);
    return v14;
  }

  v14 = v24;
  if (v24 <= 1u)
  {
    if (v24)
    {
      v55 = 1;
      sub_24B4A75E4();
      sub_24B517D7C();
      (*(v38 + 8))(v9, v39);
    }

    else
    {
      v55 = 0;
      sub_24B4A7638();
      sub_24B517D7C();
      (*(v37 + 8))(v19, v36);
    }

    (*(v50 + 8))(v16, v13);
  }

  else if (v24 == 2)
  {
    v55 = 2;
    sub_24B4A7590();
    sub_24B517D7C();
    v33 = v50;
    (*(v40 + 8))(v20, v41);
    (*(v33 + 8))(v16, v13);
  }

  else
  {
    v25 = v50;
    v26 = v21;
    if (v24 == 3)
    {
      v55 = 3;
      sub_24B4A753C();
      v27 = v46;
      sub_24B517D7C();
      (*(v43 + 8))(v27, v44);
    }

    else
    {
      v55 = 4;
      sub_24B4A74E8();
      v34 = v47;
      sub_24B517D7C();
      (*(v42 + 8))(v34, v45);
    }

    (*(v25 + 8))(v26, v13);
  }

  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v49);
  return v14;
}

unint64_t sub_24B4A80F4()
{
  result = qword_27EFFC8B8;
  if (!qword_27EFFC8B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFC8B8);
  }

  return result;
}

unint64_t sub_24B4A814C()
{
  result = qword_27EFFC8C0;
  if (!qword_27EFFC8C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFC8C0);
  }

  return result;
}

unint64_t sub_24B4A81A4()
{
  result = qword_27EFFC8C8;
  if (!qword_27EFFC8C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFC8C8);
  }

  return result;
}

unint64_t sub_24B4A81FC()
{
  result = qword_27EFFC8D0;
  if (!qword_27EFFC8D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFC8D0);
  }

  return result;
}

unint64_t sub_24B4A8254()
{
  result = qword_27EFFC8D8;
  if (!qword_27EFFC8D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFC8D8);
  }

  return result;
}

unint64_t sub_24B4A82AC()
{
  result = qword_27EFFC8E0;
  if (!qword_27EFFC8E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFC8E0);
  }

  return result;
}

unint64_t sub_24B4A8304()
{
  result = qword_27EFFC8E8;
  if (!qword_27EFFC8E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFC8E8);
  }

  return result;
}

unint64_t sub_24B4A835C()
{
  result = qword_27EFFC8F0;
  if (!qword_27EFFC8F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFC8F0);
  }

  return result;
}

unint64_t sub_24B4A83B4()
{
  result = qword_27EFFC8F8;
  if (!qword_27EFFC8F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFC8F8);
  }

  return result;
}

unint64_t sub_24B4A840C()
{
  result = qword_27EFFC900;
  if (!qword_27EFFC900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFC900);
  }

  return result;
}

unint64_t sub_24B4A8464()
{
  result = qword_27EFFC908;
  if (!qword_27EFFC908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFC908);
  }

  return result;
}

unint64_t sub_24B4A84BC()
{
  result = qword_27EFFC910;
  if (!qword_27EFFC910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFC910);
  }

  return result;
}

unint64_t sub_24B4A8514()
{
  result = qword_27EFFC918;
  if (!qword_27EFFC918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFC918);
  }

  return result;
}

unint64_t BrowseDisplayStyle.rawValue.getter(char a1)
{
  result = 0x72426E6F69746361;
  switch(a1)
  {
    case 2:
      v4 = 0x427472616863;
      return v4 & 0xFFFFFFFFFFFFLL | 0x6972000000000000;
    case 3:
      return 0x6C6573756F726163;
    case 4:
      return 0x656C63726963;
    case 5:
      return 0x6F52656C63726963;
    case 6:
      return 0x42746361706D6F63;
    case 7:
      return 0x4263696D616E7964;
    case 8:
    case 32:
      return 0xD000000000000018;
    case 9:
      v3 = 11;
      goto LABEL_12;
    case 10:
      return 0xD000000000000010;
    case 11:
      return 0x6369724264697267;
    case 12:
      return 0x7552646564697567;
    case 13:
    case 21:
      return 0xD000000000000011;
    case 14:
      return 0x6157646564697567;
    case 15:
    case 22:
      return 0xD000000000000012;
    case 16:
      return 0x4264657865646E69;
    case 17:
      return 0x6E6974656B72616DLL;
    case 18:
      return 0x7974696C61646F6DLL;
    case 19:
      return 0xD000000000000010;
    case 20:
      return 0x65736163776F6873;
    case 23:
      return 0x647261646E617473;
    case 24:
      return 0xD000000000000010;
    case 25:
      return 0x6564616548626174;
    case 26:
      return 0x6B63697242706974;
    case 27:
      return 0x75517478654E7075;
    case 28:
      v4 = 0x426F65646976;
      return v4 & 0xFFFFFFFFFFFFLL | 0x6972000000000000;
    case 29:
      return 0x6972426F65646976;
    case 30:
      return 0xD000000000000010;
    case 31:
      return 0xD000000000000013;
    case 33:
      v3 = 9;
LABEL_12:
      result = v3 | 0xD000000000000010;
      break;
    case 34:
      result = 0xD000000000000016;
      break;
    case 35:
      result = 0xD00000000000001ELL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_24B4A8968(char *a1, char *a2)
{
  v2 = *a2;
  v3 = BrowseDisplayStyle.rawValue.getter(*a1);
  v5 = v4;
  if (v3 == BrowseDisplayStyle.rawValue.getter(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_24B517EEC();
  }

  return v8 & 1;
}

unint64_t sub_24B4A89F0@<X0>(Swift::String *a1@<X0>, FitnessBrowsing::BrowseDisplayStyle_optional *a2@<X8>)
{
  result = _s15FitnessBrowsing18BrowseDisplayStyleO8rawValueACSgSS_tcfC_0(a1->_countAndFlagsBits, a1->_object);
  a2->value = result;
  return result;
}

unint64_t sub_24B4A8A20@<X0>(unint64_t *a1@<X8>)
{
  result = BrowseDisplayStyle.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_24B4A8AFC()
{
  v1 = *v0;
  sub_24B517F7C();
  BrowseDisplayStyle.rawValue.getter(v1);
  sub_24B517B3C();

  return sub_24B517FBC();
}

uint64_t sub_24B4A8B60(uint64_t a1)
{
  BrowseDisplayStyle.rawValue.getter(*v1);
  sub_24B517B3C();
}

uint64_t sub_24B4A8BB4(uint64_t a1)
{
  v2 = *v1;
  sub_24B517F7C();
  BrowseDisplayStyle.rawValue.getter(v2);
  sub_24B517B3C();

  return sub_24B517FBC();
}

unint64_t _s15FitnessBrowsing18BrowseDisplayStyleO8rawValueACSgSS_tcfC_0(uint64_t a1, uint64_t a2)
{
  v2 = sub_24B517EFC();

  if (v2 >= 0x24)
  {
    return 36;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_24B4A8C6C()
{
  result = qword_2810EE488;
  if (!qword_2810EE488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810EE488);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for BrowseDisplayStyle(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xDD)
  {
    goto LABEL_17;
  }

  if (a2 + 35 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 35) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 35;
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

      return (*a1 | (v4 << 8)) - 35;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 35;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x24;
  v8 = v6 - 36;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for BrowseDisplayStyle(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 35 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 35) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xDD)
  {
    v4 = 0;
  }

  if (a2 > 0xDC)
  {
    v5 = ((a2 - 221) >> 8) + 1;
    *result = a2 + 35;
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
    *result = a2 + 35;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_24B4A8E10()
{
  result = qword_27EFFC950;
  if (!qword_27EFFC950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFC950);
  }

  return result;
}

uint64_t BrowseFontWeight.rawValue.getter(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v5 = 0x67694C6172746C75;
    v6 = 0x746867696CLL;
    if (a1 != 2)
    {
      v6 = 0x72616C75676572;
    }

    if (a1)
    {
      v5 = 1852401780;
    }

    if (a1 <= 1u)
    {
      return v5;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 1684828002;
    v2 = 0x7976616568;
    if (a1 != 7)
    {
      v2 = 0x6B63616C62;
    }

    if (a1 != 6)
    {
      v1 = v2;
    }

    v3 = 0x6D756964656DLL;
    if (a1 != 4)
    {
      v3 = 0x646C6F62696D6573;
    }

    if (a1 <= 5u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_24B4A8F74(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = BrowseFontWeight.rawValue.getter(*a1);
  v5 = v4;
  if (v3 == BrowseFontWeight.rawValue.getter(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_24B517EEC();
  }

  return v8 & 1;
}

uint64_t sub_24B4A8FFC()
{
  v1 = *v0;
  sub_24B517F7C();
  BrowseFontWeight.rawValue.getter(v1);
  sub_24B517B3C();

  return sub_24B517FBC();
}

uint64_t sub_24B4A9060(uint64_t a1)
{
  BrowseFontWeight.rawValue.getter(*v1);
  sub_24B517B3C();
}

uint64_t sub_24B4A90B4(uint64_t a1)
{
  v2 = *v1;
  sub_24B517F7C();
  BrowseFontWeight.rawValue.getter(v2);
  sub_24B517B3C();

  return sub_24B517FBC();
}

unint64_t sub_24B4A9114@<X0>(Swift::String *a1@<X0>, FitnessBrowsing::BrowseFontWeight_optional *a2@<X8>)
{
  result = _s15FitnessBrowsing16BrowseFontWeightO8rawValueACSgSS_tcfC_0(a1->_countAndFlagsBits, a1->_object);
  a2->value = result;
  return result;
}

uint64_t sub_24B4A9144@<X0>(uint64_t *a1@<X8>)
{
  result = BrowseFontWeight.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t _s15FitnessBrowsing16BrowseFontWeightO8rawValueACSgSS_tcfC_0(uint64_t a1, uint64_t a2)
{
  v2 = sub_24B517D6C();

  if (v2 >= 9)
  {
    return 9;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_24B4A9280()
{
  result = qword_27EFFC958;
  if (!qword_27EFFC958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFC958);
  }

  return result;
}

unint64_t sub_24B4A92D8()
{
  result = qword_27EFFC960;
  if (!qword_27EFFC960)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFFC968, &qword_24B51BBC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFC960);
  }

  return result;
}

unint64_t sub_24B4A934C()
{
  result = qword_27EFFC970;
  if (!qword_27EFFC970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFC970);
  }

  return result;
}

uint64_t static EditorialVideoLink.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v2 = *(a1 + 8) == *(a2 + 8) && *(a1 + 16) == *(a2 + 16);
  if (!v2 && (sub_24B517EEC() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for EditorialVideoLink(0);

  return sub_24B516B9C();
}

uint64_t EditorialVideoLink.identifier.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t EditorialVideoLink.streamingURL.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for EditorialVideoLink(0) + 24);
  v4 = sub_24B516BAC();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t EditorialVideoLink.init(duration:identifier:streamingURL:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, double a5@<D0>)
{
  *a4 = a5;
  *(a4 + 8) = a1;
  *(a4 + 16) = a2;
  v7 = *(type metadata accessor for EditorialVideoLink(0) + 24);
  v8 = sub_24B516BAC();
  v9 = *(*(v8 - 8) + 32);

  return v9(a4 + v7, a3, v8);
}

uint64_t sub_24B4A9568()
{
  v1 = 0x696669746E656469;
  if (*v0 != 1)
  {
    v1 = 0x6E696D6165727473;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6E6F697461727564;
  }
}

uint64_t sub_24B4A95D0@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_24B4AA22C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_24B4A95F8(uint64_t a1)
{
  v2 = sub_24B4A988C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B4A9634(uint64_t a1)
{
  v2 = sub_24B4A988C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t EditorialVideoLink.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFC978, &qword_24B51BC80);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B4A988C();
  sub_24B517FDC();
  v8[15] = 0;
  sub_24B517E9C();
  if (!v1)
  {
    v8[14] = 1;
    sub_24B517E7C();
    type metadata accessor for EditorialVideoLink(0);
    v8[13] = 2;
    sub_24B516BAC();
    sub_24B4AA004(&qword_27EFFC048, MEMORY[0x277CC9260], MEMORY[0x277CC9268]);
    sub_24B517EBC();
  }

  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_24B4A988C()
{
  result = qword_27EFFC980;
  if (!qword_27EFFC980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFC980);
  }

  return result;
}

uint64_t EditorialVideoLink.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v21 = a2;
  v23 = sub_24B516BAC();
  v20 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v5 = v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFC988, &qword_24B51BC88);
  v22 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v7 = v18 - v6;
  v8 = type metadata accessor for EditorialVideoLink(0);
  MEMORY[0x28223BE20](v8);
  v10 = v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B4A988C();
  sub_24B517FCC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v19 = a1;
  v11 = v10;
  v13 = v22;
  v12 = v23;
  v27 = 0;
  v14 = v24;
  sub_24B517DEC();
  *v11 = v15;
  v26 = 1;
  *(v11 + 1) = sub_24B517DCC();
  *(v11 + 2) = v16;
  v18[1] = v16;
  v25 = 2;
  sub_24B4AA004(&qword_27EFFC068, MEMORY[0x277CC9260], MEMORY[0x277CC9280]);
  sub_24B517E0C();
  (*(v13 + 8))(v7, v14);
  (*(v20 + 32))(&v11[*(v8 + 24)], v5, v12);
  sub_24B4A9C30(v11, v21);
  __swift_destroy_boxed_opaque_existential_1(v19);
  return sub_24B4A2D08(v11);
}

uint64_t sub_24B4A9C30(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EditorialVideoLink(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t EditorialVideoLink.hash(into:)(uint64_t a1)
{
  v2 = *v1;
  if (*v1 == 0.0)
  {
    v2 = 0.0;
  }

  MEMORY[0x24C241D90](*&v2);
  sub_24B517B3C();
  type metadata accessor for EditorialVideoLink(0);
  sub_24B516BAC();
  sub_24B4AA004(&qword_2810EED80, MEMORY[0x277CC9260], MEMORY[0x277CC9270]);
  return sub_24B517A9C();
}

uint64_t EditorialVideoLink.hashValue.getter()
{
  sub_24B517F7C();
  v1 = *v0;
  if (*v0 == 0.0)
  {
    v1 = 0.0;
  }

  MEMORY[0x24C241D90](*&v1);
  sub_24B517B3C();
  type metadata accessor for EditorialVideoLink(0);
  sub_24B516BAC();
  sub_24B4AA004(&qword_2810EED80, MEMORY[0x277CC9260], MEMORY[0x277CC9270]);
  sub_24B517A9C();
  return sub_24B517FBC();
}

uint64_t sub_24B4A9E48(uint64_t a1)
{
  v2 = *v1;
  if (*v1 == 0.0)
  {
    v2 = 0.0;
  }

  MEMORY[0x24C241D90](*&v2);
  sub_24B517B3C();
  sub_24B516BAC();
  sub_24B4AA004(&qword_2810EED80, MEMORY[0x277CC9260], MEMORY[0x277CC9270]);
  return sub_24B517A9C();
}

uint64_t sub_24B4A9EF8(uint64_t a1)
{
  sub_24B517F7C();
  v2 = *v1;
  if (*v1 == 0.0)
  {
    v2 = 0.0;
  }

  MEMORY[0x24C241D90](*&v2);
  sub_24B517B3C();
  sub_24B516BAC();
  sub_24B4AA004(&qword_2810EED80, MEMORY[0x277CC9260], MEMORY[0x277CC9270]);
  sub_24B517A9C();
  return sub_24B517FBC();
}

uint64_t sub_24B4AA004(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_24B4AA04C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v4 = *(a1 + 8) == *(a2 + 8) && *(a1 + 16) == *(a2 + 16);
  if (!v4 && (sub_24B517EEC() & 1) == 0)
  {
    return 0;
  }

  return sub_24B516B9C();
}

unint64_t sub_24B4AA128()
{
  result = qword_27EFFC998;
  if (!qword_27EFFC998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFC998);
  }

  return result;
}

unint64_t sub_24B4AA180()
{
  result = qword_27EFFC9A0;
  if (!qword_27EFFC9A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFC9A0);
  }

  return result;
}

unint64_t sub_24B4AA1D8()
{
  result = qword_27EFFC9A8;
  if (!qword_27EFFC9A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFC9A8);
  }

  return result;
}

uint64_t sub_24B4AA22C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E6F697461727564 && a2 == 0xE800000000000000;
  if (v4 || (sub_24B517EEC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x696669746E656469 && a2 == 0xEA00000000007265 || (sub_24B517EEC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6E696D6165727473 && a2 == 0xEC0000004C525567)
  {

    return 2;
  }

  else
  {
    v6 = sub_24B517EEC();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_24B4AA360()
{
  if (*v0)
  {
    return 0x6D657449797A616CLL;
  }

  else
  {
    return 0x49646570756F7267;
  }
}

uint64_t sub_24B4AA3A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x49646570756F7267 && a2 == 0xEC000000736D6574;
  if (v6 || (sub_24B517EEC() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6D657449797A616CLL && a2 == 0xE900000000000073)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_24B517EEC();

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

uint64_t sub_24B4AA490(uint64_t a1)
{
  v2 = sub_24B4AAA30();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B4AA4CC(uint64_t a1)
{
  v2 = sub_24B4AAA30();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B4AA514(uint64_t a1)
{
  v2 = sub_24B4AAAD8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B4AA550(uint64_t a1)
{
  v2 = sub_24B4AAAD8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B4AA58C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_24B517EEC();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_24B4AA60C(uint64_t a1)
{
  v2 = sub_24B4AAA84();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B4AA648(uint64_t a1)
{
  v2 = sub_24B4AAA84();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t BrowseEditorialContent.encode(to:)(void *a1, uint64_t a2, int a3)
{
  v21 = a2;
  v20 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFC9B0, &qword_24B51BEC0);
  v18 = *(v4 - 8);
  v19 = v4;
  MEMORY[0x28223BE20](v4);
  v6 = &v17 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFC9B8, &qword_24B51BEC8);
  v17 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v17 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFC9C0, &unk_24B51BED0);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v17 - v12;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B4AAA30();
  sub_24B517FDC();
  v14 = (v11 + 8);
  if (v20)
  {
    LOBYTE(v22) = 1;
    sub_24B4AAA84();
    sub_24B517E3C();
    v22 = v21;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFBDB0, &qword_24B518628);
    sub_24B482E2C(&qword_27EFFBDB8, &qword_27EFFBDC0, &protocol conformance descriptor for BrowseLazyItem, MEMORY[0x277D83948]);
    v15 = v19;
    sub_24B517EBC();
    (*(v18 + 8))(v6, v15);
  }

  else
  {
    LOBYTE(v22) = 0;
    sub_24B4AAAD8();
    sub_24B517E3C();
    v22 = v21;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFC9E0, &qword_24B51BEE0);
    sub_24B4AAB2C(&qword_27EFFC9E8, sub_24B4AABA4, MEMORY[0x277D83948]);
    sub_24B517EBC();
    (*(v17 + 8))(v9, v7);
  }

  return (*v14)(v13, v10);
}

unint64_t sub_24B4AAA30()
{
  result = qword_27EFFC9C8;
  if (!qword_27EFFC9C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFC9C8);
  }

  return result;
}

unint64_t sub_24B4AAA84()
{
  result = qword_27EFFC9D0;
  if (!qword_27EFFC9D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFC9D0);
  }

  return result;
}

unint64_t sub_24B4AAAD8()
{
  result = qword_27EFFC9D8;
  if (!qword_27EFFC9D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFC9D8);
  }

  return result;
}

uint64_t sub_24B4AAB2C(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFFC9E0, &qword_24B51BEE0);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_24B4AABA4()
{
  result = qword_27EFFC9F0;
  if (!qword_27EFFC9F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFC9F0);
  }

  return result;
}

void *BrowseEditorialContent.init(from:)(void *a1)
{
  result = sub_24B4AB7A4(a1);
  if (v1)
  {
    return v3;
  }

  return result;
}

void *sub_24B4AAC1C@<X0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  result = sub_24B4AB7A4(a2);
  if (!v2)
  {
    *a1 = result;
    *(a1 + 8) = v5 & 1;
  }

  return result;
}

uint64_t static BrowseEditorialContent.== infix(_:_:)(uint64_t a1, char a2, uint64_t a3, char a4)
{
  if (a2)
  {
    if (a4)
    {
      return sub_24B483BA0(a1, a3);
    }

    return 0;
  }

  if (a4)
  {
    return 0;
  }

  return sub_24B482FB8(a1, a3);
}

uint64_t BrowseEditorialContent.hash(into:)(__int128 *a1, uint64_t a2, char a3)
{
  v6 = type metadata accessor for BrowseItem(0);
  MEMORY[0x28223BE20](v6 - 8);
  v41 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for BrowseLazyItem(0);
  v33 = *(v8 - 8);
  v9 = MEMORY[0x28223BE20](v8);
  v11 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v32 - v12;
  if ((a3 & 1) == 0)
  {
    MEMORY[0x24C241D70](0);
    v15 = *(a2 + 16);
    result = MEMORY[0x24C241D70](v15);
    v35 = v15;
    if (!v15)
    {
      return result;
    }

    v16 = 0;
    v34 = a2 + 32;
    v40 = v13;
    while (1)
    {
      v39 = v16;
      v17 = (v34 + 24 * v16);
      v18 = *v17;
      v36 = v17[1];
      v19 = v17[2];
      v20 = *(v18 + 16);
      MEMORY[0x24C241D70](v20);
      v37 = v19;
      v38 = v18;
      if (v20)
      {
        break;
      }

LABEL_8:
      v16 = v39 + 1;
      sub_24B517B3C();

      if (v16 == v35)
      {
        return result;
      }
    }

    v21 = v33;
    v22 = v18 + ((*(v33 + 80) + 32) & ~*(v33 + 80));

    v23 = *(v21 + 72);
    v42 = v23;
    while (1)
    {
      sub_24B4ABD68(v22, v13);
      sub_24B4ABD68(v13, v11);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        break;
      }

      v24 = v41;
      sub_24B4850B8(v11, v41);
      MEMORY[0x24C241D70](0);
      BrowseItem.hash(into:)(a1);
      sub_24B4ABDCC(v24, type metadata accessor for BrowseItem);
LABEL_12:
      sub_24B4ABDCC(v13, type metadata accessor for BrowseLazyItem);
      v22 += v23;
      if (!--v20)
      {
        goto LABEL_8;
      }
    }

    v25 = *(v11 + 2);
    v26 = *(v11 + 3);
    v27 = *(v11 + 4);
    v43 = *(v11 + 1);
    v44 = v26;
    v28 = *(v11 + 6);
    v30 = *(v11 + 7);
    v29 = *(v11 + 8);
    v45 = *(v11 + 5);
    v46 = v30;
    v48 = v29;
    v49 = v28;
    v31 = *v11;
    MEMORY[0x24C241D70](1);
    BrowseDisplayStyle.rawValue.getter(v31);
    sub_24B517B3C();

    v47 = v25;
    if (v25)
    {
      sub_24B517F9C();
      sub_24B517B3C();
      v13 = v40;
      if (v27)
      {
LABEL_16:
        sub_24B517F9C();
        sub_24B517B3C();
LABEL_19:
        v23 = v42;
        sub_24B517B3C();
        sub_24B517B3C();
        sub_24B517B3C();

        goto LABEL_12;
      }
    }

    else
    {
      sub_24B517F9C();
      v13 = v40;
      if (v27)
      {
        goto LABEL_16;
      }
    }

    sub_24B517F9C();
    goto LABEL_19;
  }

  MEMORY[0x24C241D70](1);

  return sub_24B4844E8(a1, a2);
}

uint64_t BrowseEditorialContent.hashValue.getter(uint64_t a1, char a2)
{
  v4 = type metadata accessor for BrowseItem(0);
  MEMORY[0x28223BE20](v4 - 8);
  v39 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for BrowseLazyItem(0);
  v31 = *(v6 - 8);
  v7 = MEMORY[0x28223BE20](v6);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v30 - v10;
  sub_24B517F7C();
  if ((a2 & 1) == 0)
  {
    MEMORY[0x24C241D70](0);
    v12 = *(a1 + 16);
    MEMORY[0x24C241D70](v12);
    v33 = v12;
    if (!v12)
    {
      return sub_24B517FBC();
    }

    v13 = 0;
    v32 = a1 + 32;
    v38 = v11;
    while (1)
    {
      v37 = v13;
      v14 = (v32 + 24 * v13);
      v15 = *v14;
      v34 = v14[1];
      v16 = v14[2];
      v17 = *(v15 + 16);
      MEMORY[0x24C241D70](v17);
      v35 = v16;
      v36 = v15;
      if (v17)
      {
        break;
      }

LABEL_6:
      v13 = v37 + 1;
      sub_24B517B3C();

      if (v13 == v33)
      {
        return sub_24B517FBC();
      }
    }

    v18 = v31;
    v19 = v15 + ((*(v31 + 80) + 32) & ~*(v31 + 80));

    v20 = *(v18 + 72);
    v40 = v20;
    while (1)
    {
      sub_24B4ABD68(v19, v11);
      sub_24B4ABD68(v11, v9);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        break;
      }

      v21 = v39;
      sub_24B4850B8(v9, v39);
      MEMORY[0x24C241D70](0);
      BrowseItem.hash(into:)(v46);
      sub_24B4ABDCC(v21, type metadata accessor for BrowseItem);
LABEL_10:
      sub_24B4ABDCC(v11, type metadata accessor for BrowseLazyItem);
      v19 += v20;
      if (!--v17)
      {
        goto LABEL_6;
      }
    }

    v22 = v6;
    v23 = *(v9 + 2);
    v24 = *(v9 + 4);
    v25 = *(v9 + 5);
    v26 = *(v9 + 6);
    v41 = *(v9 + 3);
    v42 = v25;
    v27 = *(v9 + 8);
    v43 = *(v9 + 7);
    v44 = v26;
    v45 = v27;
    v28 = *v9;
    MEMORY[0x24C241D70](1);
    BrowseDisplayStyle.rawValue.getter(v28);
    sub_24B517B3C();

    if (v23)
    {
      sub_24B517F9C();
      sub_24B517B3C();
      v6 = v22;
      if (v24)
      {
LABEL_14:
        sub_24B517F9C();
        sub_24B517B3C();
LABEL_17:
        v20 = v40;
        sub_24B517B3C();
        sub_24B517B3C();
        sub_24B517B3C();

        v11 = v38;
        goto LABEL_10;
      }
    }

    else
    {
      sub_24B517F9C();
      v6 = v22;
      if (v24)
      {
        goto LABEL_14;
      }
    }

    sub_24B517F9C();
    goto LABEL_17;
  }

  MEMORY[0x24C241D70](1);
  sub_24B4844E8(v46, a1);
  return sub_24B517FBC();
}