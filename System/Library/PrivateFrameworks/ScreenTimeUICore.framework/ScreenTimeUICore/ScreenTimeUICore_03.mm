uint64_t OverviewChart.init(model:interactive:selectedDay:selectedItem:)@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v24 = a4;
  v23 = a2;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1860, &qword_264E267E0);
  MEMORY[0x28223BE20](v8);
  v10 = &v22[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v11);
  v13 = &v22[-v12];
  v14 = type metadata accessor for OverviewChart(0);
  v15 = sub_264E23AA8();
  (*(*(v15 - 8) + 56))(v13, 1, 1, v15);
  sub_264D93A14(v13, v10);
  sub_264E24D78();
  sub_264D817BC(v13, &qword_27FFB1860, &qword_264E267E0);
  v16 = v14[7];
  v17 = (a5 + v14[8]);
  v25 = 0x4024000000000000;
  sub_264E24D78();
  v18 = v27;
  *v17 = v26;
  v17[1] = v18;
  v19 = (a5 + v14[9]);
  v25 = 0;
  sub_264E24D78();
  v20 = v27;
  *v19 = v26;
  v19[1] = v20;
  sub_264DCDEBC(a1, a5, type metadata accessor for OverviewChart.Model);
  result = sub_264D90E64(a3, a5 + v14[6], &qword_27FFB1870, &unk_264E26210);
  *(a5 + v14[10]) = v23;
  *(a5 + v16) = v24;
  return result;
}

uint64_t OverviewChart.body.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v119 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1878, &unk_264E27650);
  MEMORY[0x28223BE20](v3 - 8);
  v108 = &v92 - v4;
  v5 = sub_264E23C18();
  v123 = *(v5 - 8);
  v124 = v5;
  MEMORY[0x28223BE20](v5);
  *&v122 = &v92 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1880, &qword_264E26220);
  MEMORY[0x28223BE20](v7 - 8);
  v121 = &v92 - v8;
  v9 = sub_264E238E8();
  v120 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v92 = &v92 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v126 = type metadata accessor for OverviewChart(0);
  v11 = *(v126 - 1);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v126);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB2218, &qword_264E27660);
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v92 - v15;
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB2220, &qword_264E27668);
  v95 = *(v96 - 8);
  MEMORY[0x28223BE20](v96);
  v18 = &v92 - v17;
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB2228, &qword_264E27670);
  v98 = *(v99 - 8);
  MEMORY[0x28223BE20](v99);
  v97 = &v92 - v19;
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB2230, &unk_264E27678);
  v103 = *(v105 - 8);
  MEMORY[0x28223BE20](v105);
  v100 = &v92 - v20;
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1BD8, &unk_264E26660);
  v107 = *(v111 - 8);
  MEMORY[0x28223BE20](v111);
  v106 = &v92 - v21;
  v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB2238, &qword_264E27688);
  v116 = *(v117 - 8);
  MEMORY[0x28223BE20](v117);
  v113 = &v92 - v22;
  v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB2240, &qword_264E27690);
  v114 = *(v115 - 8);
  MEMORY[0x28223BE20](v115);
  v112 = &v92 - v23;
  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB2248, &qword_264E27698);
  MEMORY[0x28223BE20](v110);
  v109 = &v92 - v24;
  v128 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB2250, &qword_264E276A0);
  sub_264DCDB28();
  sub_264E241C8();
  sub_264DCE54C(v2, &v92 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for OverviewChart);
  v25 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v102 = *(v11 + 80);
  v101 = v25 + v12;
  v26 = swift_allocObject();
  v104 = v25;
  v118 = &v92 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = v9;
  sub_264DCDEBC(v118, v26 + v25, type metadata accessor for OverviewChart);
  v28 = type metadata accessor for OverviewChart.Model(0);
  v29 = sub_264D81DCC(&qword_27FFB2290, &qword_27FFB2218, &qword_264E27660, MEMORY[0x277CBB3F8]);
  v30 = sub_264DCE658(&qword_27FFB2298, type metadata accessor for OverviewChart.Model, &protocol conformance descriptor for OverviewChart.Model);
  v94 = v18;
  sub_264E24C28();

  v31 = *(v14 + 8);
  v93 = v13;
  v32 = v13;
  v33 = v120;
  v31(v16, v32);
  v34 = v121;
  v125 = v28;
  v36 = v123;
  v35 = v124;
  v37 = v122;
  (*(v123 + 104))(v122, *MEMORY[0x277CC9940], v124);
  v127 = v2;
  sub_264E23B08();
  (*(v36 + 8))(v37, v35);
  result = (*(v33 + 48))(v34, 1, v27);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v39 = v92;
    (*(v33 + 32))(v92, v34, v27);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1960, &unk_264E262C0);
    sub_264E23AA8();
    v40 = swift_allocObject();
    v122 = xmmword_264E261F0;
    *(v40 + 16) = xmmword_264E261F0;
    _s16ScreenTimeUICore11DetailChartV4HourV2id10Foundation4DateVvg_0();
    sub_264E23888();
    (*(v33 + 8))(v39, v27);
    v135 = v40;
    v41 = sub_264E242D8();
    v121 = *(*(v41 - 8) + 56);
    v42 = v108;
    (v121)(v108, 1, 1, v41);
    v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1968, &unk_264E27700);
    v131 = v93;
    v132 = v125;
    v133 = v29;
    v134 = v30;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v45 = sub_264D8A020(&qword_27FFB1970, &qword_27FFB1968, &unk_264E27700);
    v46 = v97;
    v47 = v96;
    v48 = v94;
    sub_264E24B38();
    sub_264D817BC(v42, &qword_27FFB1878, &unk_264E27650);

    (*(v95 + 8))(v48, v47);
    v49 = (v127 + *(v126 + 8));
    v50 = *v49;
    v124 = v49[1];
    v131 = v50;
    v132 = v124;
    v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1978, &unk_264E262D0);
    sub_264E24D88();
    v51 = v130;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1980, &unk_264E27710);
    v52 = swift_allocObject();
    *(v52 + 16) = v122;
    *(v52 + 32) = 0;
    *(v52 + 40) = v51;
    v130 = v52;
    (v121)(v42, 1, 1, v41);
    v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1988, &unk_264E262E0);
    v131 = v47;
    v132 = v43;
    v133 = OpaqueTypeConformance2;
    v134 = v45;
    v54 = swift_getOpaqueTypeConformance2();
    v55 = sub_264D8A020(&qword_27FFB1990, &qword_27FFB1988, &unk_264E262E0);
    v56 = v100;
    v57 = v99;
    sub_264E24B48();
    sub_264D817BC(v42, &qword_27FFB1878, &unk_264E27650);

    (*(v98 + 8))(v46, v57);
    v121 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1998, &unk_264E27720);
    v131 = v57;
    v132 = v53;
    v133 = v54;
    v134 = v55;
    v58 = swift_getOpaqueTypeConformance2();
    *&v122 = MEMORY[0x277CBB460];
    v59 = sub_264D81DCC(&qword_27FFB19A0, &qword_27FFB1998, &unk_264E27720, MEMORY[0x277CBB460]);
    v60 = v106;
    v61 = v105;
    sub_264E24B08();
    (*(v103 + 8))(v56, v61);
    v131 = v50;
    v62 = v124;
    v132 = v124;
    sub_264E24D88();
    v63 = v127;
    LOBYTE(v131) = *(v127 + *(v125 + 32));
    Y13chartDataTypeSaySdGSd_AA0E7FormatsC0kL0OtFZ_0 = _s16ScreenTimeUICore13OverviewChartV5ModelV7yStride8forLastY13chartDataTypeSaySdGSd_AA0E7FormatsC0kL0OtFZ_0(&v131, v129);
    v131 = v50;
    v132 = v62;
    sub_264E24D88();
    v65 = v129;
    v66 = (v63 + *(v126 + 9));
    v67 = *v66;
    v68 = v66[1];
    v131 = v67;
    v132 = v68;
    v69 = sub_264E24D88();
    v126 = &v92;
    MEMORY[0x28223BE20](v69);
    *(&v92 - 6) = Y13chartDataTypeSaySdGSd_AA0E7FormatsC0kL0OtFZ_0;
    *(&v92 - 5) = v70;
    *(&v92 - 32) = 0;
    *(&v92 - 3) = v65;
    *(&v92 - 16) = v71;
    *(&v92 - 1) = v60;
    v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB19A8, &unk_264E262F0);
    v131 = v61;
    v132 = v121;
    v133 = v58;
    v134 = v59;
    v73 = swift_getOpaqueTypeConformance2();
    v74 = sub_264D81DCC(&qword_27FFB19B0, &qword_27FFB19A8, &unk_264E262F0, v122);
    v75 = v113;
    v76 = v111;
    sub_264E24B18();

    (*(v107 + 8))(v60, v76);
    v77 = v118;
    sub_264DCE54C(v63, v118, type metadata accessor for OverviewChart);
    v78 = swift_allocObject();
    sub_264DCDEBC(v77, v78 + v104, type metadata accessor for OverviewChart);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB19B8, &qword_264E27730);
    v131 = v76;
    v132 = v72;
    v133 = v73;
    v134 = v74;
    swift_getOpaqueTypeConformance2();
    sub_264D81DCC(&qword_27FFB19C0, &qword_27FFB19B8, &qword_264E27730, MEMORY[0x277CDF728]);
    v79 = v112;
    v80 = v117;
    sub_264E24B58();

    (*(v116 + 8))(v75, v80);
    LOBYTE(v73) = sub_264E249A8();
    sub_264E243D8();
    v82 = v81;
    v84 = v83;
    v86 = v85;
    v88 = v87;
    v89 = v109;
    (*(v114 + 32))(v109, v79, v115);
    v90 = v89 + *(v110 + 36);
    *v90 = v73;
    *(v90 + 8) = v82;
    *(v90 + 16) = v84;
    *(v90 + 24) = v86;
    *(v90 + 32) = v88;
    *(v90 + 40) = 0;
    v91 = v119;
    sub_264DCE4AC(v89, v119);
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB22A0, &qword_264E27738);
    *(v91 + *(result + 36)) = 0;
  }

  return result;
}

uint64_t sub_264DC9BD4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v49 = a2;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB2310, &qword_264E27908) - 8;
  MEMORY[0x28223BE20](v48);
  v47 = &v42 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1C28, &qword_264E266A0);
  v45 = *(v4 - 8);
  v46 = v4;
  MEMORY[0x28223BE20](v4);
  v53 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v51 = &v42 - v7;
  v8 = type metadata accessor for OverviewChart(0);
  v9 = v8 - 8;
  v10 = *(v8 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v8);
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB2268, &qword_264E276A8);
  v52 = *(v44 - 8);
  MEMORY[0x28223BE20](v44);
  v50 = &v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v42 - v14;
  v16 = *(a1 + *(type metadata accessor for OverviewChart.Model(0) + 20));
  v55 = a1;

  sub_264D82948(sub_264DCFE8C, v54, v16);
  v59[0] = v17;
  sub_264DCE54C(a1, &v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for OverviewChart);
  v18 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v19 = swift_allocObject();
  sub_264DCDEBC(&v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v19 + v18, type metadata accessor for OverviewChart);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB22C8, &qword_264E27880);
  sub_264E23AA8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB2278, &unk_264E276B0);
  sub_264D81DCC(&qword_27FFB2318, &qword_27FFB22C8, &qword_264E27880, MEMORY[0x277D83980]);
  sub_264DCDCFC();
  sub_264DCE658(&qword_27FFB2320, type metadata accessor for OverviewChart.Day, &protocol conformance descriptor for OverviewChart.Day);
  v43 = v15;
  sub_264E24EC8();
  v20 = (a1 + *(v9 + 44));
  v21 = *v20;
  v22 = v20[1];
  v57 = v21;
  v58 = v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1978, &unk_264E262D0);
  sub_264E24D88();
  v23 = v51;
  sub_264DC71E0(&unk_2876A2C30, v51, v56);
  v24 = *(v52 + 16);
  v25 = v50;
  v26 = v44;
  v24(v50, v15, v44);
  v27 = v45;
  v28 = *(v45 + 16);
  v29 = v53;
  v30 = v23;
  v31 = v46;
  v28(v53, v30, v46);
  sub_264DCDE3C(&qword_27FFB2260, &qword_27FFB2268, &qword_264E276A8, sub_264DCDCFC);
  v32 = v47;
  v33 = v25;
  v34 = v26;
  v24(v47, v33, v26);
  sub_264E24288();
  v35 = v48;
  v36 = *(v48 + 56);
  v28(&v32[v36], v29, v31);
  v37 = v52;
  v38 = v49;
  (*(v52 + 32))(v49, v32, v34);
  (*(v27 + 32))(v38 + *(v35 + 56), &v32[v36], v31);
  v39 = *(v27 + 8);
  v39(v51, v31);
  v40 = *(v37 + 8);
  v40(v43, v34);
  v39(v53, v31);
  return (v40)(v50, v34);
}

uint64_t sub_264DCA194@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v73 = a1;
  v89 = a2;
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB2328, &unk_264E27910);
  MEMORY[0x28223BE20](v88);
  v87 = &v65 - v2;
  v3 = type metadata accessor for OverviewChart.Day(0);
  v4 = *(v3 - 8);
  v68 = v3 - 8;
  v80 = v4;
  MEMORY[0x28223BE20](v3 - 8);
  v81 = v5;
  v83 = (&v65 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v74 = type metadata accessor for OverviewChart(0);
  v77 = *(v74 - 8);
  MEMORY[0x28223BE20](v74);
  v78 = v6;
  v79 = &v65 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB2288, &unk_264E276C0);
  v85 = *(v7 - 8);
  v86 = v7;
  MEMORY[0x28223BE20](v7);
  v84 = &v65 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v92 = &v65 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1C48, &unk_264E266B0);
  MEMORY[0x28223BE20](v11 - 8);
  v67 = &v65 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1C50, &unk_264E267D0);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v65 - v14;
  v16 = sub_264E23C18();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v65 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1C58, &qword_264E266C0);
  MEMORY[0x28223BE20](v20 - 8);
  v65 = &v65 - v21;
  v69 = sub_264E241F8();
  v70 = *(v69 - 8);
  MEMORY[0x28223BE20](v69);
  v23 = &v65 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB18F8, &qword_264E26280);
  v71 = *(v72 - 8);
  MEMORY[0x28223BE20](v72);
  v66 = &v65 - v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1C60, &qword_264E266C8);
  v75 = *(v25 - 8);
  v76 = v25;
  MEMORY[0x28223BE20](v25);
  v91 = &v65 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v90 = &v65 - v28;
  sub_264E247D8();
  (*(v17 + 104))(v19, *MEMORY[0x277CC99B8], v16);
  v29 = sub_264E23C38();
  (*(*(v29 - 8) + 56))(v15, 1, 1, v29);
  v30 = v73;
  sub_264E240E8();

  sub_264D817BC(v15, &qword_27FFB1C50, &unk_264E267D0);
  (*(v17 + 8))(v19, v16);
  v31 = v30;
  sub_264E247D8();
  v93 = *(v30 + *(v68 + 28));
  sub_264E240F8();

  v32 = [objc_opt_self() currentDevice];
  v33 = [v32 model];

  sub_264E25108();
  sub_264E251A8();

  sub_264E23AA8();
  v34 = v66;
  sub_264E241E8();
  v35 = MEMORY[0x277CBB400];
  v36 = v69;
  sub_264E24058();
  (*(v70 + 8))(v23, v36);
  if (qword_27FFB16A0 != -1)
  {
    swift_once();
  }

  v94 = v35;
  v95 = qword_27FFB6C48;
  v93 = v36;
  swift_getOpaqueTypeConformance2();
  v37 = v90;
  v38 = v72;
  sub_264E24038();
  (*(v71 + 8))(v34, v38);
  v39 = v82;
  v40 = sub_264DC8554(v31, *(v82 + *(v74 + 28)));
  sub_264DFE4B8(v40);
  v42 = v41;

  v93 = v42;
  swift_getKeyPath();
  v43 = v79;
  sub_264DCE54C(v39, v79, type metadata accessor for OverviewChart);
  v44 = v83;
  sub_264DCE54C(v31, v83, type metadata accessor for OverviewChart.Day);
  v45 = (*(v77 + 80) + 16) & ~*(v77 + 80);
  v46 = (v78 + *(v80 + 80) + v45) & ~*(v80 + 80);
  v47 = swift_allocObject();
  sub_264DCDEBC(v43, v47 + v45, type metadata accessor for OverviewChart);
  sub_264DCDEBC(v44, v47 + v46, type metadata accessor for OverviewChart.Day);
  v48 = swift_allocObject();
  *(v48 + 16) = sub_264DCFCA4;
  *(v48 + 24) = v47;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB2330, qword_264E27940);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1918, &unk_264E26290);
  sub_264D81DCC(&qword_27FFB2338, &qword_27FFB2330, qword_264E27940, MEMORY[0x277D83980]);
  sub_264D89D98();
  v49 = v92;
  sub_264E24ED8();
  v50 = v75;
  v51 = v76;
  v52 = *(v75 + 16);
  v53 = v91;
  v52(v91, v37, v76);
  v54 = v84;
  v55 = v85;
  v83 = *(v85 + 16);
  v56 = v49;
  v57 = v86;
  (v83)(v84, v56, v86);
  v58 = v87;
  v52(v87, v53, v51);
  sub_264DCDE3C(&qword_27FFB2280, &qword_27FFB2288, &unk_264E276C0, sub_264D89D98);
  v59 = v88;
  v60 = *(v88 + 48);
  (v83)(&v58[v60], v54, v57);
  v61 = v89;
  (*(v50 + 32))(v89, v58, v51);
  (*(v55 + 32))(v61 + *(v59 + 48), &v58[v60], v57);
  v62 = *(v55 + 8);
  v62(v92, v57);
  v63 = *(v50 + 8);
  v63(v90, v51);
  v62(v54, v57);
  return (v63)(v91, v51);
}

double sub_264DCAD98()
{
  if (qword_27FFB1698 != -1)
  {
    swift_once();
  }

  v0 = sub_264E24F88();
  MEMORY[0x28223BE20](v0);
  sub_264E244E8();

  return result;
}

uint64_t sub_264DCAE60(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1860, &qword_264E267E0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v22 - v3;
  OverviewChart.Model.maxCount.getter();
  v6 = v5;
  v7 = type metadata accessor for OverviewChart.Model(0);
  v8 = 7200.0;
  if (*(a1 + *(v7 + 32)))
  {
    v8 = 10.0;
  }

  v9 = v8 * ceil(v6 / v8);
  if (v9 > v8)
  {
    v10 = v9;
  }

  else
  {
    v10 = v8;
  }

  v11 = type metadata accessor for OverviewChart(0);
  v12 = (a1 + *(v11 + 32));
  v13 = *v12;
  v14 = v12[1];
  v22 = v13;
  v23 = v14;
  v24 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1978, &unk_264E262D0);
  sub_264E24D98();
  v15 = sub_264E23AA8();
  (*(*(v15 - 8) + 56))(v4, 1, 1, v15);
  sub_264DC7F68(v4);
  v17 = v16;
  sub_264D817BC(v4, &qword_27FFB1860, &qword_264E267E0);
  v18 = (a1 + *(v11 + 36));
  v19 = *v18;
  v20 = v18[1];
  v22 = v19;
  v23 = v20;
  v24 = v17;
  return sub_264E24D98();
}

uint64_t OverviewChart.Model.xAxisScale.getter()
{
  v0 = sub_264E23C18();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1880, &qword_264E26220);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v13 - v5;
  v7 = sub_264E238E8();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for OverviewChart.Model(0);
  (*(v1 + 104))(v3, *MEMORY[0x277CC9940], v0);
  sub_264E23B08();
  (*(v1 + 8))(v3, v0);
  result = (*(v8 + 48))(v6, 1, v7);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(v8 + 32))(v10, v6, v7);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1960, &unk_264E262C0);
    sub_264E23AA8();
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_264E261F0;
    _s16ScreenTimeUICore11DetailChartV4HourV2id10Foundation4DateVvg_0();
    sub_264E23888();
    (*(v8 + 8))(v10, v7);
    return v12;
  }

  return result;
}

double static OverviewChart.Model.yAxisScale(forLastY:)(double a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1980, &unk_264E27710);
  v2 = swift_allocObject();
  *&result = 2;
  *(v2 + 16) = xmmword_264E261F0;
  *(v2 + 32) = 0;
  *(v2 + 40) = a1;
  return result;
}

uint64_t sub_264DCB3CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v23 = a1;
  v24 = a3;
  v22 = sub_264E23FE8();
  v4 = *(v22 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v22);
  v6 = type metadata accessor for OverviewChart(0);
  v20 = *(v6 - 8);
  v7 = *(v20 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = sub_264E24868();
  MEMORY[0x28223BE20](v8);
  v21 = sub_264E24428();
  v9 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_264E248E8();
  sub_264E24408();
  sub_264DCE54C(a2, &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for OverviewChart);
  v12 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = v22;
  (*(v4 + 16))(v12, v23, v22);
  v14 = (*(v20 + 80) + 16) & ~*(v20 + 80);
  v15 = (v7 + *(v4 + 80) + v14) & ~*(v4 + 80);
  v16 = swift_allocObject();
  sub_264DCDEBC(&v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v16 + v14, type metadata accessor for OverviewChart);
  (*(v4 + 32))(v16 + v15, v12, v13);
  sub_264DCE658(&qword_27FFB1C00, MEMORY[0x277CDD730], MEMORY[0x277CDD728]);
  v17 = v21;
  sub_264E24F08();

  return (*(v9 + 8))(v11, v17);
}

uint64_t sub_264DCB728(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = type metadata accessor for OverviewChart(0);
  if (*(a2 + *(result + 40)) == 1)
  {
    return sub_264DCB77C();
  }

  return result;
}

uint64_t sub_264DCB77C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1860, &qword_264E267E0);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = (&v12 - v1);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1C08, &qword_264E26680);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v12 - v4;
  v6 = sub_264E23AA8();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_264E24418();
  sub_264E23FD8();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1C10, &qword_264E26688);
  if ((*(*(v10 - 8) + 48))(v5, 1, v10) == 1)
  {
    return sub_264D817BC(v5, &qword_27FFB1C08, &qword_264E26680);
  }

  (*(v7 + 32))(v9, v5, v6);
  (*(v7 + 16))(v2, v9, v6);
  (*(v7 + 56))(v2, 0, 1, v6);
  sub_264DCC834(v2);
  sub_264D817BC(v2, &qword_27FFB1860, &qword_264E267E0);
  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_264DCBA08@<X0>(unint64_t a1@<X0>, double a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>, double a7@<D0>)
{
  v65 = a2;
  v66 = a3;
  v58 = a1;
  v63 = a6;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1920, &unk_264E276D0);
  v61 = *(v62 - 8);
  MEMORY[0x28223BE20](v62);
  v69 = &v52[-v10];
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1C78, &qword_264E266F8);
  v59 = *(v60 - 8);
  MEMORY[0x28223BE20](v60);
  v68 = &v52[-v11];
  v12 = sub_264E23AA8();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v54 = &v52[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1858, &unk_264E26200);
  v16 = v15 - 8;
  MEMORY[0x28223BE20](v15);
  v18 = &v52[-v17];
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1860, &qword_264E267E0);
  MEMORY[0x28223BE20](v19 - 8);
  v57 = &v52[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v21);
  v23 = &v52[-v22];
  MEMORY[0x28223BE20](v24);
  v26 = &v52[-v25];
  MEMORY[0x28223BE20](v27);
  v29 = &v52[-v28];
  v30 = *(type metadata accessor for OverviewChart(0) + 24);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1870, &unk_264E26210);
  v67 = a4;
  v56 = v30;
  v55 = v31;
  MEMORY[0x26674EFA0]();
  v32 = *(v13 + 16);
  v64 = a5;
  v32(v26, a5, v12);
  (*(v13 + 56))(v26, 0, 1, v12);
  v33 = *(v16 + 56);
  sub_264D93A14(v29, v18);
  sub_264D93A14(v26, &v18[v33]);
  v34 = *(v13 + 48);
  if (v34(v18, 1, v12) == 1)
  {
    v35 = &qword_27FFB1860;
    sub_264D817BC(v26, &qword_27FFB1860, &qword_264E267E0);
    sub_264D817BC(v29, &qword_27FFB1860, &qword_264E267E0);
    if (v34(&v18[v33], 1, v12) == 1)
    {
      sub_264D817BC(v18, &qword_27FFB1860, &qword_264E267E0);
      v36 = v67;
      v37 = v68;
LABEL_11:
      v45 = v69;
      sub_264DCC2C0(v64, v65, v66, v69, a7);
      v75[0] = *(v36 + *(type metadata accessor for OverviewChart.Model(0) + 28));
      v46 = qword_27FFB16A0;

      if (v46 != -1)
      {
        swift_once();
      }

      v75[1] = qword_27FFB6C48;
      if (v58 <= 1)
      {
        v47 = v75[v58];

        swift_arrayDestroy();
        v74 = v47;
        v48 = sub_264E241F8();
        v49 = sub_264D89EB8();
        v70 = v48;
        v71 = MEMORY[0x277D837D0];
        v72 = MEMORY[0x277CBB400];
        v73 = v49;
        swift_getOpaqueTypeConformance2();
        v50 = v62;
        sub_264E24038();

        (*(v61 + 8))(v45, v50);
        goto LABEL_15;
      }

      __break(1u);
      goto LABEL_17;
    }

    goto LABEL_6;
  }

  sub_264D93A14(v18, v23);
  if (v34(&v18[v33], 1, v12) == 1)
  {
    sub_264D817BC(v26, &qword_27FFB1860, &qword_264E267E0);
    sub_264D817BC(v29, &qword_27FFB1860, &qword_264E267E0);
    (*(v13 + 8))(v23, v12);
LABEL_6:
    sub_264D817BC(v18, &qword_27FFB1858, &unk_264E26200);
    v36 = v67;
    v37 = v68;
    goto LABEL_7;
  }

  v43 = &v18[v33];
  v44 = v54;
  (*(v13 + 32))(v54, v43, v12);
  sub_264DCE658(&qword_27FFB1868, MEMORY[0x277CC9578], MEMORY[0x277CC9598]);
  v53 = sub_264E25068();
  v35 = *(v13 + 8);
  (v35)(v44, v12);
  sub_264D817BC(v26, &qword_27FFB1860, &qword_264E267E0);
  sub_264D817BC(v29, &qword_27FFB1860, &qword_264E267E0);
  (v35)(v23, v12);
  sub_264D817BC(v18, &qword_27FFB1860, &qword_264E267E0);
  v36 = v67;
  v37 = v68;
  if (v53)
  {
    goto LABEL_11;
  }

LABEL_7:
  v35 = (v36 + v56);
  v38 = v57;
  MEMORY[0x26674EFA0](v55);
  v39 = v34(v38, 1, v12);
  sub_264D817BC(v38, &qword_27FFB1860, &qword_264E267E0);
  if (v39 == 1)
  {
    goto LABEL_11;
  }

  v35 = v69;
  sub_264DCC2C0(v64, v65, v66, v69, a7);
  if (qword_27FFB16A0 != -1)
  {
LABEL_17:
    swift_once();
  }

  v74 = qword_27FFB6C48;
  v40 = sub_264E241F8();
  v41 = sub_264D89EB8();
  v70 = v40;
  v71 = MEMORY[0x277D837D0];
  v72 = MEMORY[0x277CBB400];
  v73 = v41;
  swift_getOpaqueTypeConformance2();
  v42 = v62;
  sub_264E24038();
  (*(v61 + 8))(v35, v42);
LABEL_15:
  (*(v59 + 32))(v63, v37, v60);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1C80, &unk_264E26700);
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_264DCC2C0@<X0>(uint64_t a1@<X0>, double a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, double a5@<D0>)
{
  v32 = a2;
  v33 = a3;
  v28 = a1;
  v34 = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1C48, &unk_264E266B0);
  MEMORY[0x28223BE20](v6 - 8);
  v29 = &v27 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1C50, &unk_264E267D0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v27 - v9;
  v11 = sub_264E23C18();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1C58, &qword_264E266C0);
  MEMORY[0x28223BE20](v15 - 8);
  v27 = &v27 - v16;
  v17 = sub_264E241F8();
  v18 = *(v17 - 8);
  v30 = v17;
  v31 = v18;
  MEMORY[0x28223BE20](v17);
  v20 = &v27 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_264E247D8();
  (*(v12 + 104))(v14, *MEMORY[0x277CC99B8], v11);
  v21 = sub_264E23C38();
  (*(*(v21 - 8) + 56))(v10, 1, 1, v21);
  v22 = v28;
  sub_264E240E8();

  sub_264D817BC(v10, &qword_27FFB1C50, &unk_264E267D0);
  (*(v12 + 8))(v14, v11);
  sub_264E247D8();
  v35 = *(v22 + *(type metadata accessor for OverviewChart.Day(0) + 20)) * a5;
  sub_264E240F8();

  v23 = [objc_opt_self() currentDevice];
  v24 = [v23 model];

  sub_264E25108();
  sub_264E251A8();

  sub_264E23AA8();
  sub_264E241E8();
  v35 = v32;
  v36 = v33;
  sub_264D89EB8();
  v25 = v30;
  sub_264E24048();
  return (*(v31 + 8))(v20, v25);
}

uint64_t OverviewChart.Model.orderedStackedBarColors.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB22A8, &qword_264E27740);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_264E261F0;
  *(v1 + 32) = *(v0 + *(type metadata accessor for OverviewChart.Model(0) + 28));
  v2 = qword_27FFB16A0;

  if (v2 != -1)
  {
    swift_once();
  }

  *(v1 + 40) = qword_27FFB6C48;

  return v1;
}

uint64_t sub_264DCC834(unsigned int (*a1)(char *, uint64_t, uint64_t))
{
  v61 = a1;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1858, &unk_264E26200);
  MEMORY[0x28223BE20](v56);
  v3 = &v51 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB2308, &qword_264E27900);
  MEMORY[0x28223BE20](v4 - 8);
  v54 = &v51 - v5;
  v6 = sub_264E23AA8();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v52 = &v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v55 = &v51 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1860, &qword_264E267E0);
  MEMORY[0x28223BE20](v11 - 8);
  v53 = &v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v60 = &v51 - v14;
  MEMORY[0x28223BE20](v15);
  v59 = &v51 - v16;
  MEMORY[0x28223BE20](v17);
  v58 = &v51 - v18;
  MEMORY[0x28223BE20](v19);
  v21 = &v51 - v20;
  MEMORY[0x28223BE20](v22);
  v24 = &v51 - v23;
  MEMORY[0x28223BE20](v25);
  v27 = &v51 - v26;
  v28 = *(type metadata accessor for OverviewChart(0) + 24);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1870, &unk_264E26210);
  v62 = v27;
  MEMORY[0x26674EFA0]();
  v57 = v28;
  v63 = v1;
  v30 = v29;
  MEMORY[0x26674EFA0](v29);
  sub_264D93A14(v61, v21);
  v61 = *(v7 + 48);
  if (v61(v21, 1, v6) == 1)
  {
    sub_264D817BC(v21, &qword_27FFB1860, &qword_264E267E0);
    v31 = v58;
  }

  else
  {
    v51 = v29;
    v32 = v55;
    (*(v7 + 32))(v55, v21, v6);
    v33 = type metadata accessor for OverviewChart.Model(0);
    v34 = v7;
    v35 = v63;
    MEMORY[0x28223BE20](v33);
    *(&v51 - 2) = v35;
    *(&v51 - 1) = v32;
    v36 = v54;
    sub_264D93D38(sub_264DCF8B8, v37, v54);
    v38 = type metadata accessor for OverviewChart.Day(0);
    v39 = (*(*(v38 - 8) + 48))(v36, 1, v38);
    sub_264D817BC(v36, &qword_27FFB2308, &qword_264E27900);
    if (v39 == 1)
    {
      (*(v34 + 8))(v55, v6);
      v7 = v34;
      v31 = v58;
    }

    else
    {
      v31 = v58;
      v40 = v55;
      sub_264E23AF8();
      sub_264D817BC(v24, &qword_27FFB1860, &qword_264E267E0);
      (*(v34 + 56))(v31, 0, 1, v6);
      sub_264D90E64(v31, v24, &qword_27FFB1860, &qword_264E267E0);
      (*(v34 + 8))(v40, v6);
      v7 = v34;
    }

    v30 = v51;
  }

  v41 = v60;
  v42 = v61;
  v43 = *(v56 + 48);
  sub_264D93A14(v62, v3);
  sub_264D93A14(v24, &v3[v43]);
  if (v42(v3, 1, v6) == 1)
  {
    if (v42(&v3[v43], 1, v6) == 1)
    {
      sub_264D817BC(v3, &qword_27FFB1860, &qword_264E267E0);
      goto LABEL_15;
    }

    goto LABEL_12;
  }

  sub_264D93A14(v3, v41);
  if (v42(&v3[v43], 1, v6) == 1)
  {
    (*(v7 + 8))(v41, v6);
LABEL_12:
    sub_264D817BC(v3, &qword_27FFB1858, &unk_264E26200);
LABEL_13:
    v44 = v59;
    sub_264D93A14(v24, v59);
    goto LABEL_18;
  }

  v45 = &v3[v43];
  v46 = v52;
  (*(v7 + 32))(v52, v45, v6);
  sub_264DCE658(&qword_27FFB1868, MEMORY[0x277CC9578], MEMORY[0x277CC9598]);
  LODWORD(v58) = sub_264E25068();
  v47 = *(v7 + 8);
  v47(v46, v6);
  v47(v60, v6);
  sub_264D817BC(v3, &qword_27FFB1860, &qword_264E267E0);
  if ((v58 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_15:
  v48 = v53;
  MEMORY[0x26674EFA0](v30);
  v49 = v61(v48, 1, v6);
  sub_264D817BC(v48, &qword_27FFB1860, &qword_264E267E0);
  v44 = v59;
  if (v49 == 1)
  {
    sub_264DC8324(v59);
  }

  else
  {
    (*(v7 + 56))(v59, 1, 1, v6);
  }

LABEL_18:
  sub_264D93A14(v44, v31);
  sub_264E24E58();
  sub_264D817BC(v44, &qword_27FFB1860, &qword_264E267E0);
  sub_264D817BC(v24, &qword_27FFB1860, &qword_264E267E0);
  return sub_264D817BC(v62, &qword_27FFB1860, &qword_264E267E0);
}

uint64_t sub_264DCCFE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = sub_264E23AA8();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for OverviewChart.Model(0);
  sub_264E23AF8();
  v7 = sub_264E23A78();
  (*(v4 + 8))(v6, v3);
  return v7 & 1;
}

uint64_t OverviewChart.Model.maxCount.getter()
{
  v1 = type metadata accessor for OverviewChart.Day(0);
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v16[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = *(v0 + *(type metadata accessor for OverviewChart.Model(0) + 20));
  v17 = v0;

  sub_264D82948(sub_264DCE51C, v16, v5);
  v7 = v6;
  v8 = *(v6 + 16);
  if (v8)
  {
    v18 = MEMORY[0x277D84F90];
    sub_264D8D0F4(0, v8, 0);
    v9 = v18;
    v10 = v7 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
    v11 = *(v2 + 72);
    do
    {
      sub_264DCE54C(v10, v4, type metadata accessor for OverviewChart.Day);
      v12 = *&v4[*(v1 + 20)];
      sub_264DCE5B4(v4);
      v18 = v9;
      v14 = *(v9 + 16);
      v13 = *(v9 + 24);
      if (v14 >= v13 >> 1)
      {
        sub_264D8D0F4((v13 > 1), v14 + 1, 1);
        v9 = v18;
      }

      *(v9 + 16) = v14 + 1;
      *(v9 + 8 * v14 + 32) = v12;
      v10 += v11;
      --v8;
    }

    while (v8);
  }

  else
  {

    v9 = MEMORY[0x277D84F90];
  }

  sub_264D89928(v9);
}

double OverviewChart.Model.minimumMaxYAxisUnit.getter()
{
  v1 = type metadata accessor for OverviewChart.Model(0);
  result = 7200.0;
  if (*(v0 + *(v1 + 32)))
  {
    return 10.0;
  }

  return result;
}

uint64_t sub_264DCD340(uint64_t a1, char a2, double a3)
{
  v4 = v3;
  v8 = sub_264E23AA8();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_264D9D5F4(a1);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  result = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
  }

  else
  {
    v18 = v13;
    v19 = v12[3];
    if (v19 >= result && (a2 & 1) != 0)
    {
LABEL_7:
      v20 = *v4;
      if (v18)
      {
LABEL_8:
        *(v20[7] + 8 * v14) = a3;
        return result;
      }

      goto LABEL_11;
    }

    if (v19 >= result && (a2 & 1) == 0)
    {
      result = sub_264DA12F8();
      goto LABEL_7;
    }

    sub_264D9E6F0(result, a2 & 1);
    result = sub_264D9D5F4(a1);
    if ((v18 & 1) == (v21 & 1))
    {
      v14 = result;
      v20 = *v4;
      if (v18)
      {
        goto LABEL_8;
      }

LABEL_11:
      (*(v9 + 16))(v11, a1, v8);
      return sub_264DA0BB4(v14, v11, v20, a3);
    }
  }

  result = sub_264E25498();
  __break(1u);
  return result;
}

uint64_t sub_264DCD4E4(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_264E238E8();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_264D9D6C8(a2);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_15;
  }

  v18 = v13;
  v19 = v12[3];
  if (v19 < v17 || (a3 & 1) == 0)
  {
    if (v19 >= v17 && (a3 & 1) == 0)
    {
      sub_264DA1320();
      goto LABEL_7;
    }

    sub_264D9EAB4(v17, a3 & 1);
    v22 = sub_264D9D6C8(a2);
    if ((v18 & 1) == (v23 & 1))
    {
      v14 = v22;
      v20 = *v4;
      if (v18)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v11, a2, v8);
      return sub_264DA0BCC(v14, v11, a1, v20);
    }

LABEL_15:
    result = sub_264E25498();
    __break(1u);
    return result;
  }

LABEL_7:
  v20 = *v4;
  if ((v18 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  *(v20[7] + 8 * v14) = a1;
}

uint64_t sub_264DCD6B0(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_264E23AA8();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_264D9D5F4(a2);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_15;
  }

  v18 = v13;
  v19 = v12[3];
  if (v19 < v17 || (a3 & 1) == 0)
  {
    if (v19 >= v17 && (a3 & 1) == 0)
    {
      sub_264DA15FC();
      goto LABEL_7;
    }

    sub_264D9F268(v17, a3 & 1);
    v22 = sub_264D9D5F4(a2);
    if ((v18 & 1) == (v23 & 1))
    {
      v14 = v22;
      v20 = *v4;
      if (v18)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v11, a2, v8);
      return sub_264DA0CB8(v14, v11, a1, v20);
    }

LABEL_15:
    result = sub_264E25498();
    __break(1u);
    return result;
  }

LABEL_7:
  v20 = *v4;
  if ((v18 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  *(v20[7] + 8 * v14) = a1;
}

uint64_t sub_264DCD87C(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_264E23AA8();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_264D9D5F4(a2);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_15;
  }

  v18 = v13;
  v19 = v12[3];
  if (v19 < v17 || (a3 & 1) == 0)
  {
    if (v19 >= v17 && (a3 & 1) == 0)
    {
      sub_264DA1DB0();
      goto LABEL_7;
    }

    sub_264D9FE08(v17, a3 & 1);
    v24 = sub_264D9D5F4(a2);
    if ((v18 & 1) == (v25 & 1))
    {
      v14 = v24;
      v20 = *v4;
      if (v18)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v11, a2, v8);
      return sub_264DA0F00(v14, v11, a1, v20);
    }

LABEL_15:
    result = sub_264E25498();
    __break(1u);
    return result;
  }

LABEL_7:
  v20 = *v4;
  if ((v18 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v21 = v20[7];
  v22 = v21 + *(*(type metadata accessor for PickupsDetailLegendView.DayPickups(0) - 8) + 72) * v14;

  return sub_264DCFE20(a1, v22);
}

uint64_t _s16ScreenTimeUICore13OverviewChartV5ModelV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  if (sub_264E23A78() & 1) != 0 && (v4 = type metadata accessor for OverviewChart.Model(0), (sub_264D84128(*(a1 + v4[5]), *(a2 + v4[5]))) && (MEMORY[0x26674DD10](a1 + v4[6], a2 + v4[6]) & 1) != 0 && (sub_264E24C48())
  {
    v5 = *(a1 + v4[8]) ^ *(a2 + v4[8]) ^ 1;
  }

  else
  {
    v5 = 0;
  }

  return v5 & 1;
}

unint64_t sub_264DCDB28()
{
  result = qword_27FFB2258;
  if (!qword_27FFB2258)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FFB2250, &qword_264E276A0);
    sub_264DCDE3C(&qword_27FFB2260, &qword_27FFB2268, &qword_264E276A8, sub_264DCDCFC);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FFB1930, &unk_264E262A0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FFB1938, &unk_264E276E0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FFB1940, &unk_264E262B0);
    sub_264E24288();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FFB2258);
  }

  return result;
}

unint64_t sub_264DCDCFC()
{
  result = qword_27FFB2270;
  if (!qword_27FFB2270)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FFB2278, &unk_264E276B0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FFB18F8, &qword_264E26280);
    sub_264E241F8();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_264DCDE3C(&qword_27FFB2280, &qword_27FFB2288, &unk_264E276C0, sub_264D89D98);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FFB2270);
  }

  return result;
}

uint64_t sub_264DCDE3C(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
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

uint64_t sub_264DCDEBC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

double sub_264DCDF24()
{
  type metadata accessor for OverviewChart(0);

  return sub_264DCAD98();
}

uint64_t _s16ScreenTimeUICore13OverviewChartV5ModelV7yStride8forLastY13chartDataTypeSaySdGSd_AA0E7FormatsC0kL0OtFZ_0(uint64_t result, double a2)
{
  v2 = 60.0;
  if (*result)
  {
    v2 = 1.0;
  }

  v3 = a2 * 0.25;
  if (a2 * 0.25 == 0.0)
  {
    goto LABEL_36;
  }

  v4 = v2 + a2;
  v5 = v2 + a2 >= 0.0;
  if (v3 > 0.0)
  {
    v5 = v2 + a2 <= 0.0;
  }

  if (!v5)
  {
    v7 = 0;
    while (1)
    {
      v6 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        goto LABEL_34;
      }

      v8 = v6 * v3 + 0.0;
      v9 = v8 <= v4;
      if (v3 > 0.0)
      {
        v9 = v4 <= v8;
      }

      ++v7;
      if (v9)
      {
        goto LABEL_13;
      }
    }
  }

  v6 = 0;
LABEL_13:
  v20 = MEMORY[0x277D84F90];
  sub_264D8D0F4(0, v6, 0);
  result = v20;
  if (v6)
  {
    v10 = 1;
    v11 = 0.0;
    while (1)
    {
      v12 = v11 <= v4;
      if (v3 > 0.0)
      {
        v12 = v4 <= v11;
      }

      if (v12)
      {
        break;
      }

      v21 = result;
      v14 = *(result + 16);
      v13 = *(result + 24);
      if (v14 >= v13 >> 1)
      {
        sub_264D8D0F4((v13 > 1), v14 + 1, 1);
        result = v21;
      }

      v15 = v10 * v3 + 0.0;
      *(result + 16) = v14 + 1;
      *(result + 8 * v14 + 32) = v11;
      ++v10;
      v11 = v15;
      if (v10 - v6 == 1)
      {
        goto LABEL_23;
      }
    }

    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
    return result;
  }

  v15 = 0.0;
LABEL_23:
  v16 = v15 <= v4;
  if (v3 > 0.0)
  {
    v16 = v4 <= v15;
  }

  if (!v16)
  {
    while (!__OFADD__(v6, 1))
    {
      v22 = result;
      v18 = *(result + 16);
      v17 = *(result + 24);
      if (v18 >= v17 >> 1)
      {
        sub_264D8D0F4((v17 > 1), v18 + 1, 1);
        result = v22;
      }

      *(result + 8 * v18 + 32) = v15;
      v15 = (v6 + 1) * v3 + 0.0;
      *(result + 16) = v18 + 1;
      v19 = v15 <= v4;
      if (v3 > 0.0)
      {
        v19 = v4 <= v15;
      }

      ++v6;
      if (v19)
      {
        return result;
      }
    }

    goto LABEL_35;
  }

  return result;
}

uint64_t objectdestroyTm_2()
{
  v1 = type metadata accessor for OverviewChart(0);
  v2 = *(*(v1 - 8) + 80);
  v15 = *(*(v1 - 8) + 64);
  v16 = (v2 + 16) & ~v2;
  v17 = v0;
  v3 = v0 + v16;
  v4 = sub_264E23AA8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 8);
  v6(v0 + v16, v4);
  v7 = type metadata accessor for OverviewChart.Model(0);

  v8 = *(v7 + 24);
  v9 = sub_264E23C38();
  (*(*(v9 - 8) + 8))(v3 + v8, v9);

  v10 = v3 + *(v1 + 20);
  v11 = *(v5 + 48);
  if (!v11(v10, 1, v4))
  {
    v6(v10, v4);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1948, &unk_264E276F0);

  v12 = v3 + *(v1 + 24);

  v13 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1870, &unk_264E26210) + 32);
  if (!v11(v12 + v13, 1, v4))
  {
    v6(v12 + v13, v4);
  }

  return MEMORY[0x2821FE8E8](v17, v16 + v15, v2 | 7);
}

uint64_t sub_264DCE42C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for OverviewChart(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_264DCB3CC(a1, v6, a2);
}

uint64_t sub_264DCE4AC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB2248, &qword_264E27698);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_264DCE54C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_264DCE5B4(uint64_t a1)
{
  v2 = type metadata accessor for OverviewChart.Day(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_264DCE658(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_264DCE6D0(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for OverviewChart.Model(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_8:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1948, &unk_264E276F0);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_7:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_8;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1870, &unk_264E26210);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_7;
  }

  v16 = *(a1 + a3[7]);
  if (v16 >= 0xFFFFFFFF)
  {
    LODWORD(v16) = -1;
  }

  v17 = v16 - 1;
  if (v17 < 0)
  {
    v17 = -1;
  }

  return (v17 + 1);
}

uint64_t sub_264DCE85C(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = type metadata accessor for OverviewChart.Model(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1948, &unk_264E276F0);
    if (*(*(v13 - 8) + 84) == a3)
    {
      v10 = v13;
      v14 = *(v13 - 8);
      v15 = a4[5];
    }

    else
    {
      result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1870, &unk_264E26210);
      if (*(*(result - 8) + 84) != a3)
      {
        *(a1 + a4[7]) = a2;
        return result;
      }

      v10 = result;
      v14 = *(result - 8);
      v15 = a4[6];
    }

    v11 = *(v14 + 56);
    v12 = a1 + v15;
  }

  return v11(v12, a2, a2, v10);
}

void sub_264DCE9C4(uint64_t a1)
{
  type metadata accessor for OverviewChart.Model(319);
  if (v1 <= 0x3F)
  {
    sub_264D8F5E8(319, &qword_27FFB19E8, &qword_27FFB1860, &qword_264E267E0, MEMORY[0x277CE10B8]);
    if (v2 <= 0x3F)
    {
      sub_264D8F5E8(319, &qword_27FFB19F0, &qword_27FFB1860, &qword_264E267E0, MEMORY[0x277CE11F8]);
      if (v3 <= 0x3F)
      {
        sub_264D8F5E8(319, &qword_27FFB22C0, &qword_27FFB22C8, &qword_264E27880, MEMORY[0x277D83D88]);
        if (v4 <= 0x3F)
        {
          sub_264D8F64C();
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_264DCEB38(uint64_t a1, uint64_t a2)
{
  v4 = sub_264E23AA8();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_264DCEBB8(uint64_t a1, uint64_t a2)
{
  v4 = sub_264E23AA8();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_264DCEC28(uint64_t a1)
{
  result = sub_264E23AA8();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_264DCECB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_264E23AA8();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = sub_264E23C38();
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 24);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_264DCEDE8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_264E23AA8();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  else
  {
    v11 = sub_264E23C38();
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 24);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

void sub_264DCEF0C(uint64_t a1)
{
  sub_264E23AA8();
  if (v1 <= 0x3F)
  {
    sub_264DCEFC0(319);
    if (v2 <= 0x3F)
    {
      sub_264E23C38();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_264DCEFC0(uint64_t a1)
{
  if (!qword_27FFB22F0)
  {
    type metadata accessor for OverviewChart.Day(255);
    v1 = sub_264E251F8();
    if (!v2)
    {
      atomic_store(v1, &qword_27FFB22F0);
    }
  }
}

unint64_t sub_264DCF01C()
{
  result = qword_27FFB22F8;
  if (!qword_27FFB22F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FFB22A0, &qword_264E27738);
    sub_264DCF0D4();
    sub_264D81DCC(&qword_27FFB1A50, &qword_27FFB1A58, &qword_264E26470, MEMORY[0x277CDF4F0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FFB22F8);
  }

  return result;
}

unint64_t sub_264DCF0D4()
{
  result = qword_27FFB2300;
  if (!qword_27FFB2300)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FFB2248, &qword_264E27698);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FFB2238, &qword_264E27688);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FFB19B8, &qword_264E27730);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FFB1BD8, &unk_264E26660);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FFB19A8, &unk_264E262F0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FFB2230, &unk_264E27678);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FFB1998, &unk_264E27720);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FFB2228, &qword_264E27670);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FFB1988, &unk_264E262E0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FFB2220, &qword_264E27668);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FFB1968, &unk_264E27700);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FFB2218, &qword_264E27660);
    type metadata accessor for OverviewChart.Model(255);
    sub_264D81DCC(&qword_27FFB2290, &qword_27FFB2218, &qword_264E27660, MEMORY[0x277CBB3F8]);
    sub_264DCE658(&qword_27FFB2298, type metadata accessor for OverviewChart.Model, &protocol conformance descriptor for OverviewChart.Model);
    swift_getOpaqueTypeConformance2();
    sub_264D8A020(&qword_27FFB1970, &qword_27FFB1968, &unk_264E27700);
    swift_getOpaqueTypeConformance2();
    sub_264D8A020(&qword_27FFB1990, &qword_27FFB1988, &unk_264E262E0);
    swift_getOpaqueTypeConformance2();
    v1 = MEMORY[0x277CBB460];
    sub_264D81DCC(&qword_27FFB19A0, &qword_27FFB1998, &unk_264E27720, MEMORY[0x277CBB460]);
    swift_getOpaqueTypeConformance2();
    sub_264D81DCC(&qword_27FFB19B0, &qword_27FFB19A8, &unk_264E262F0, v1);
    swift_getOpaqueTypeConformance2();
    sub_264D81DCC(&qword_27FFB19C0, &qword_27FFB19B8, &qword_264E27730, MEMORY[0x277CDF728]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FFB2300);
  }

  return result;
}

uint64_t sub_264DCF4E4()
{
  v1 = type metadata accessor for OverviewChart(0);
  v18 = *(*(v1 - 8) + 80);
  v16 = *(*(v1 - 8) + 64);
  v20 = sub_264E23FE8();
  v2 = *(v20 - 8);
  v3 = *(v2 + 80);
  v19 = *(v2 + 64);
  v17 = (v18 + 16) & ~v18;
  v4 = sub_264E23AA8();
  v5 = *(v4 - 8);
  v15 = *(v5 + 8);
  v15(v0 + v17, v4);
  v6 = type metadata accessor for OverviewChart.Model(0);

  v7 = *(v6 + 24);
  v8 = sub_264E23C38();
  (*(*(v8 - 8) + 8))(v0 + v17 + v7, v8);

  v9 = v0 + v17 + *(v1 + 20);
  v10 = *(v5 + 48);
  if (!v10(v9, 1, v4))
  {
    v15(v9, v4);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1948, &unk_264E276F0);

  v11 = v0 + v17 + *(v1 + 24);

  v12 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1870, &unk_264E26210) + 32);
  if (!v10(v11 + v12, 1, v4))
  {
    v15(v11 + v12, v4);
  }

  v13 = (v17 + v16 + v3) & ~v3;

  (*(v2 + 8))(v0 + v13, v20);

  return MEMORY[0x2821FE8E8](v0, v13 + v19, v18 | v3 | 7);
}

uint64_t sub_264DCF7E4(uint64_t a1)
{
  v3 = *(type metadata accessor for OverviewChart(0) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(sub_264E23FE8() - 8);
  v7 = v1 + ((v4 + v5 + *(v6 + 80)) & ~*(v6 + 80));

  return sub_264DCB728(a1, v1 + v4, v7);
}

uint64_t sub_264DCF9BC()
{
  v1 = type metadata accessor for OverviewChart(0);
  v2 = *(*(v1 - 8) + 80);
  v17 = *(*(v1 - 8) + 64);
  v3 = *(type metadata accessor for OverviewChart.Day(0) - 8);
  v4 = *(v3 + 80);
  v18 = *(v3 + 64);
  v19 = v0;
  v5 = v0 + ((v2 + 16) & ~v2);
  v6 = sub_264E23AA8();
  v7 = *(v6 - 8);
  v20 = *(v7 + 8);
  v20(v5, v6);
  v8 = type metadata accessor for OverviewChart.Model(0);

  v9 = *(v8 + 24);
  v10 = sub_264E23C38();
  (*(*(v10 - 8) + 8))(v5 + v9, v10);

  v11 = v5 + *(v1 + 20);
  v12 = *(v7 + 48);
  if (!v12(v11, 1, v6))
  {
    v20(v11, v6);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1948, &unk_264E276F0);

  v13 = v5 + *(v1 + 24);

  v14 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1870, &unk_264E26210) + 32);
  if (!v12(v13 + v14, 1, v6))
  {
    v20(v13 + v14, v6);
  }

  v15 = (((v2 + 16) & ~v2) + v17 + v4) & ~v4;

  v20(v19 + v15, v6);

  return MEMORY[0x2821FE8E8](v19, v15 + v18, v2 | v4 | 7);
}

uint64_t sub_264DCFCA4@<X0>(unint64_t a1@<X0>, double a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, double a5@<D0>)
{
  v11 = *(type metadata accessor for OverviewChart(0) - 8);
  v12 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v13 = *(v11 + 64);
  v14 = *(type metadata accessor for OverviewChart.Day(0) - 8);
  v15 = v5 + ((v12 + v13 + *(v14 + 80)) & ~*(v14 + 80));

  return sub_264DCBA08(a1, a2, a3, v5 + v12, v15, a4, a5);
}

uint64_t sub_264DCFDB0()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_264DCFE20(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PickupsDetailLegendView.DayPickups(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t AppLimitViewModel.__allocating_init(userID:)(uint64_t a1)
{
  v2 = swift_allocObject();
  sub_264E23FB8();
  *(v2 + OBJC_IVAR____TtC16ScreenTimeUICore17AppLimitViewModel_userID) = a1;
  return v2;
}

uint64_t AppLimitViewModel.init(userID:)(uint64_t a1)
{
  sub_264E23FB8();
  *(v1 + OBJC_IVAR____TtC16ScreenTimeUICore17AppLimitViewModel_userID) = a1;
  return v1;
}

uint64_t AppLimitViewModel.deinit()
{
  v1 = OBJC_IVAR____TtC16ScreenTimeUICore17AppLimitViewModel_logger;
  v2 = sub_264E23FC8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t AppLimitViewModel.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC16ScreenTimeUICore17AppLimitViewModel_logger;
  v2 = sub_264E23FC8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for AppLimitViewModel(uint64_t a1)
{
  result = qword_27FFB2350;
  if (!qword_27FFB2350)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_264DD0114(uint64_t a1)
{
  result = sub_264E23FC8();
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

uint64_t sub_264DD01DC()
{
  v0 = sub_264E23FC8();
  __swift_allocate_value_buffer(v0, qword_27FFB6C08);
  __swift_project_value_buffer(v0, qword_27FFB6C08);
  return sub_264E23FB8();
}

uint64_t getEnumTagSinglePayload for Average(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for Average(_WORD *result, int a2, int a3)
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

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

uint64_t sub_264DD0330()
{
  v0 = sub_264E24118();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = sub_264E24098();
  MEMORY[0x28223BE20](v1 - 8);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1C50, &unk_264E267D0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v13 - v3;
  v5 = sub_264E23C18();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_264E240B8();
  v10 = MEMORY[0x28223BE20](v9 - 8);
  (*(v6 + 104))(v8, *MEMORY[0x277CC9968], v5, v10);
  v11 = sub_264E23C38();
  (*(*(v11 - 8) + 56))(v4, 1, 1, v11);
  sub_264E240A8();
  sub_264D817BC(v4, &qword_27FFB1C50, &unk_264E267D0);
  (*(v6 + 8))(v8, v5);
  sub_264E24088();
  sub_264E24108();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB2360, &qword_264E279C0);
  sub_264DD22C8();
  return sub_264E24298();
}

uint64_t sub_264DD0618@<X0>(uint64_t a1@<X8>)
{
  v78 = a1;
  v74 = sub_264E24268();
  v73 = *(v74 - 8);
  MEMORY[0x28223BE20](v74);
  v71 = v57 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB2388, &qword_264E279D8);
  v76 = *(v77 - 8);
  MEMORY[0x28223BE20](v77);
  v75 = v57 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v72 = v57 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB17B8, &qword_264E279E0);
  MEMORY[0x28223BE20](v5 - 8);
  v64 = v57 - v6;
  v7 = sub_264E24168();
  MEMORY[0x28223BE20](v7 - 8);
  v65 = v57 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_264E241B8();
  MEMORY[0x28223BE20](v9 - 8);
  v62 = v57 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = sub_264E239E8();
  v58 = *(v60 - 8);
  MEMORY[0x28223BE20](v60);
  v12 = v57 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = sub_264E23A08();
  v13 = *(v59 - 8);
  MEMORY[0x28223BE20](v59);
  v15 = v57 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v57[1] = v57 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB2378, &qword_264E279D0);
  v61 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v20 = v57 - v19;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB2370, &qword_264E279C8);
  v63 = *(v66 - 8);
  MEMORY[0x28223BE20](v66);
  v22 = v57 - v21;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB2390, &unk_264E279E8);
  v69 = *(v70 - 8);
  MEMORY[0x28223BE20](v70);
  v81 = v57 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v80 = v57 - v25;
  v26 = sub_264E24008();
  v27 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v29 = v57 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1AC8, &qword_264E26530);
  v67 = *(v68 - 8);
  MEMORY[0x28223BE20](v68);
  v79 = v57 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31);
  v82 = v57 - v32;
  sub_264E24478();
  v93 = v84;
  v94 = v85;
  v95 = v86;
  sub_264E23FF8();
  if (qword_27FFB16B0 != -1)
  {
    swift_once();
  }

  v33 = qword_27FFB6C60;
  *&v90 = qword_27FFB6C60;

  sub_264E24208();
  v34 = (*(v27 + 8))(v29, v26);
  MEMORY[0x26674D990](v34);
  sub_264E239D8();
  sub_264E239F8();
  (*(v58 + 8))(v12, v60);
  (*(v13 + 8))(v15, v59);
  sub_264E241A8();
  sub_264E24158();
  sub_264DD2668();
  sub_264E240C8();
  v35 = sub_264E249F8();
  v36 = v64;
  (*(*(v35 - 8) + 56))(v64, 1, 1, v35);
  sub_264E24A38();
  sub_264D817BC(v36, &qword_27FFB17B8, &qword_264E279E0);
  v37 = sub_264DD244C();
  sub_264E24218();

  (*(v61 + 8))(v20, v18);
  if (qword_27FFB16B8 != -1)
  {
    swift_once();
  }

  *&v87 = qword_27FFB6C68;
  *&v90 = v18;
  *(&v90 + 1) = v37;
  swift_getOpaqueTypeConformance2();
  v38 = v80;
  v39 = v66;
  sub_264E24208();
  (*(v63 + 8))(v22, v39);
  sub_264E24478();
  v90 = v87;
  v91 = v88;
  v92 = v89;
  v40 = v71;
  sub_264E24248();
  v83[0] = v33;
  v41 = v72;
  v42 = v74;
  sub_264E24208();

  (*(v73 + 8))(v40, v42);
  v43 = v67;
  v44 = v79;
  v45 = v68;
  (*(v67 + 16))(v79, v82, v68);
  v83[0] = v44;
  v46 = v69;
  v47 = v81;
  v48 = v38;
  v49 = v70;
  (*(v69 + 16))(v81, v48, v70);
  v83[1] = v47;
  v50 = v76;
  v51 = v75;
  v52 = v77;
  (*(v76 + 16))(v75, v41, v77);
  v83[2] = v51;
  sub_264DD1220(v83, v78);
  v53 = *(v50 + 8);
  v53(v41, v52);
  v54 = *(v46 + 8);
  v54(v80, v49);
  v55 = *(v43 + 8);
  v55(v82, v45);
  v53(v51, v52);
  v54(v81, v49);
  return (v55)(v79, v45);
}

uint64_t sub_264DD1220@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB23A0, &qword_264E279F8);
  v5 = v4 - 8;
  MEMORY[0x28223BE20](v4);
  v7 = &v18 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1AC8, &qword_264E26530);
  sub_264E24008();
  v9 = *(v8 - 8);
  (*(v9 + 16))(v7, *a1, v8);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB2390, &unk_264E279E8);
  sub_264DD244C();
  v11 = *(v5 + 56);
  v19 = v11;
  v12 = *(v10 - 8);
  (*(v12 + 16))(&v7[v11], a1[1], v10);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB2388, &qword_264E279D8);
  sub_264E24268();
  v14 = *(v5 + 72);
  v15 = a1[2];
  v16 = *(v13 - 8);
  (*(v16 + 16))(&v7[v14], v15, v13);
  (*(v9 + 32))(a2, v7, v8);
  (*(v12 + 32))(a2 + *(v5 + 56), &v7[v19], v10);
  return (*(v16 + 32))(a2 + *(v5 + 72), &v7[v14], v13);
}

uint64_t sub_264DD145C(uint64_t a1)
{
  v1 = sub_264E24118();
  MEMORY[0x28223BE20](v1 - 8);
  v2 = sub_264E24098();
  MEMORY[0x28223BE20](v2 - 8);

  sub_264E24088();
  sub_264E24108();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB2360, &qword_264E279C0);
  sub_264E23AA8();
  sub_264DD22C8();
  return sub_264E242B8();
}

uint64_t sub_264DD15A4@<X0>(uint64_t a1@<X8>)
{
  v86 = a1;
  v1 = sub_264E24238();
  MEMORY[0x28223BE20](v1 - 8);
  v79 = &v60 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = sub_264E24268();
  v81 = *(v82 - 8);
  MEMORY[0x28223BE20](v82);
  v78 = &v60 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB2388, &qword_264E279D8);
  v84 = *(v85 - 8);
  MEMORY[0x28223BE20](v85);
  v83 = &v60 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v80 = &v60 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB17B8, &qword_264E279E0);
  MEMORY[0x28223BE20](v7 - 8);
  v75 = &v60 - v8;
  v9 = sub_264E24168();
  MEMORY[0x28223BE20](v9 - 8);
  v72 = &v60 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_264E241B8();
  MEMORY[0x28223BE20](v11 - 8);
  v70 = &v60 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = sub_264E239B8();
  v66 = *(v67 - 8);
  MEMORY[0x28223BE20](v67);
  v14 = &v60 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = sub_264E239C8();
  v63 = *(v65 - 8);
  MEMORY[0x28223BE20](v65);
  v16 = &v60 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = sub_264E23A08();
  v61 = *(v64 - 8);
  MEMORY[0x28223BE20](v64);
  v18 = &v60 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v62 = &v60 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB2378, &qword_264E279D0);
  v68 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v23 = &v60 - v22;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB2370, &qword_264E279C8);
  v69 = *(v71 - 8);
  MEMORY[0x28223BE20](v71);
  v25 = &v60 - v24;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB2390, &unk_264E279E8);
  v76 = *(v77 - 8);
  MEMORY[0x28223BE20](v77);
  v89 = &v60 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v87 = &v60 - v28;
  v29 = sub_264E24008();
  v30 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v32 = &v60 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1AC8, &qword_264E26530);
  v73 = *(v74 - 8);
  MEMORY[0x28223BE20](v74);
  v88 = &v60 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v34);
  v90 = &v60 - v35;
  sub_264E24478();
  v101 = v92;
  v102 = v93;
  v103 = v94;
  sub_264E23FF8();
  if (qword_27FFB16B0 != -1)
  {
    swift_once();
  }

  v36 = qword_27FFB6C60;
  *&v98 = qword_27FFB6C60;

  sub_264E24208();
  v37 = (*(v30 + 8))(v32, v29);
  MEMORY[0x26674D990](v37);
  sub_264E239A8();
  sub_264E23998();
  (*(v66 + 8))(v14, v67);
  sub_264E23988();
  (*(v63 + 8))(v16, v65);
  (*(v61 + 8))(v18, v64);
  sub_264E24198();
  sub_264E24158();
  sub_264DD2668();
  sub_264E240C8();
  v38 = sub_264E249F8();
  v39 = v75;
  (*(*(v38 - 8) + 56))(v75, 1, 1, v38);
  sub_264E24A38();
  sub_264D817BC(v39, &qword_27FFB17B8, &qword_264E279E0);
  v40 = sub_264DD244C();
  sub_264E24218();

  (*(v68 + 8))(v23, v21);
  if (qword_27FFB16B8 != -1)
  {
    swift_once();
  }

  *&v95 = qword_27FFB6C68;
  *&v98 = v21;
  *(&v98 + 1) = v40;
  swift_getOpaqueTypeConformance2();
  v41 = v87;
  v42 = v71;
  sub_264E24208();
  (*(v69 + 8))(v25, v42);
  sub_264E24478();
  v98 = v95;
  v99 = v96;
  v100 = v97;
  sub_264E24228();
  v43 = v78;
  sub_264E24258();
  v91[0] = v36;
  v44 = v80;
  v45 = v82;
  sub_264E24208();

  (*(v81 + 8))(v43, v45);
  v46 = v73;
  v47 = v88;
  v48 = v74;
  (*(v73 + 16))(v88, v90, v74);
  v91[0] = v47;
  v49 = v76;
  v50 = v89;
  v51 = v41;
  v52 = v77;
  (*(v76 + 16))(v89, v51, v77);
  v91[1] = v50;
  v53 = v84;
  v54 = v83;
  v55 = v85;
  (*(v84 + 16))(v83, v44, v85);
  v91[2] = v54;
  sub_264DD1220(v91, v86);
  v56 = *(v53 + 8);
  v56(v44, v55);
  v57 = *(v49 + 8);
  v57(v87, v52);
  v58 = *(v46 + 8);
  v58(v90, v48);
  v56(v54, v55);
  v57(v89, v52);
  return (v58)(v88, v48);
}

unint64_t sub_264DD22C8()
{
  result = qword_27FFB2368;
  if (!qword_27FFB2368)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FFB2360, &qword_264E279C0);
    sub_264E24008();
    swift_getOpaqueTypeConformance2();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FFB2370, &qword_264E279C8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FFB2378, &qword_264E279D0);
    sub_264DD244C();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_264E24268();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FFB2368);
  }

  return result;
}

unint64_t sub_264DD244C()
{
  result = qword_27FFB2380;
  if (!qword_27FFB2380)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FFB2378, &qword_264E279D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FFB2380);
  }

  return result;
}

uint64_t sub_264DD24B0@<X0>(uint64_t a1@<X8>)
{
  sub_264E247D8();
  v2 = [objc_opt_self() bundle];
  v3 = sub_264E24AE8();
  v5 = v4;
  v7 = v6;
  sub_264E24C98();
  v8 = sub_264E24AC8();
  v10 = v9;
  v12 = v11;
  sub_264D817AC(v3, v5, v7 & 1);

  if (qword_27FFB16C0 != -1)
  {
    swift_once();
  }

  v13 = sub_264E24AD8();
  v15 = v14;
  v17 = v16;
  v19 = v18;
  sub_264D817AC(v8, v10, v12 & 1);

  *a1 = v13;
  *(a1 + 8) = v15;
  *(a1 + 16) = v17 & 1;
  *(a1 + 24) = v19;
  return result;
}

unint64_t sub_264DD2668()
{
  result = qword_27FFB2398;
  if (!qword_27FFB2398)
  {
    sub_264E23A08();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FFB2398);
  }

  return result;
}

uint64_t sub_264DD26C0(uint64_t a1, uint64_t a2, uint64_t a3, char *a4)
{
  v56 = a4;
  v76 = a3;
  v74 = a2;
  v73 = sub_264E23C18();
  v5 = *(v73 - 8);
  MEMORY[0x28223BE20](v73);
  v72 = &v56 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1880, &qword_264E26220);
  MEMORY[0x28223BE20](v7 - 8);
  v80 = &v56 - v8;
  v71 = sub_264E238E8();
  v9 = *(v71 - 8);
  MEMORY[0x28223BE20](v71 - 8);
  v66 = &v56 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_264E23AA8();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v56 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v78 = &v56 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1D98, &unk_264E268F0);
  MEMORY[0x28223BE20](v17 - 8);
  v77 = &v56 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v75 = &v56 - v20;
  v21 = *(a1 + 64);
  v57 = a1 + 64;
  v22 = 1 << *(a1 + 32);
  v23 = -1;
  if (v22 < 64)
  {
    v23 = ~(-1 << v22);
  }

  v24 = v23 & v21;
  v25 = (v22 + 63) >> 6;
  v58 = v12 + 16;
  v79 = (v12 + 32);
  v70 = *MEMORY[0x277CC9940];
  v68 = (v5 + 8);
  v69 = (v5 + 104);
  v67 = (v9 + 48);
  v64 = (v9 + 8);
  v65 = (v9 + 32);
  v61 = v12;
  v62 = a1;
  v63 = (v12 + 8);

  v27 = 0;
  v28 = 0.0;
  v60 = v11;
  v59 = v14;
  if (v24)
  {
    while (1)
    {
      v29 = v27;
LABEL_12:
      v33 = __clz(__rbit64(v24));
      v24 &= v24 - 1;
      v34 = v33 | (v29 << 6);
      v35 = v62;
      v36 = v61;
      v37 = v78;
      v38 = v60;
      (*(v61 + 16))(v78, *(v62 + 48) + *(v61 + 72) * v34, v60);
      v39 = *(*(v35 + 56) + 8 * v34);
      v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1DA0, &unk_264E27A00);
      v41 = *(v40 + 48);
      v42 = *(v36 + 32);
      v11 = v38;
      v43 = v77;
      v42(v77, v37, v11);
      *&v43[v41] = v39;
      v32 = v43;
      (*(*(v40 - 8) + 56))(v43, 0, 1, v40);
      v31 = v29;
      v14 = v59;
LABEL_13:
      v44 = v75;
      sub_264DD2DA4(v32, v75);
      v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1DA0, &unk_264E27A00);
      if ((*(*(v45 - 8) + 48))(v44, 1, v45) == 1)
      {
        break;
      }

      v46 = v31;
      v47 = *(v44 + *(v45 + 48));
      (*v79)(v14, v44, v11);
      v48 = v80;
      v49 = v72;
      v50 = v73;
      (*v69)(v72, v70, v73);
      sub_264E23B08();
      (*v68)(v49, v50);
      v51 = v71;
      result = (*v67)(v48, 1, v71);
      if (result == 1)
      {
        goto LABEL_22;
      }

      v52 = v66;
      (*v65)(v66, v80, v51);
      v53 = v78;
      _s16ScreenTimeUICore11DetailChartV4HourV2id10Foundation4DateVvg_0();
      (*v64)(v52, v51);
      LOBYTE(v52) = sub_264E23A78();
      v54 = *v63;
      (*v63)(v53, v11);
      result = v54(v14, v11);
      if (v52)
      {
        v28 = v28 + v47;
      }

      v27 = v46;
      if (!v24)
      {
        goto LABEL_5;
      }
    }

    return Calendar.numberOfDaysElapsedInWeek(containing:endDate:)(v74, v56);
  }

  else
  {
LABEL_5:
    if (v25 <= v27 + 1)
    {
      v30 = v27 + 1;
    }

    else
    {
      v30 = v25;
    }

    v31 = v30 - 1;
    v32 = v77;
    while (1)
    {
      v29 = v27 + 1;
      if (__OFADD__(v27, 1))
      {
        break;
      }

      if (v29 >= v25)
      {
        v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1DA0, &unk_264E27A00);
        (*(*(v55 - 8) + 56))(v32, 1, 1, v55);
        v24 = 0;
        goto LABEL_13;
      }

      v24 = *(v57 + 8 * v29);
      ++v27;
      if (v24)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
  }

  return result;
}

uint64_t sub_264DD2DA4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1D98, &unk_264E268F0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t DetailChart.init(model:selectedItem:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *(type metadata accessor for DetailChart(0) + 20);
  result = sub_264DD68F4(a1, a3, type metadata accessor for DetailChart.Model);
  *(a3 + v6) = a2;
  return result;
}

uint64_t DetailChart.Hour.init(hour:value:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  v6 = sub_264E238E8();
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  result = type metadata accessor for DetailChart.Hour(0);
  *(a2 + *(result + 20)) = a3;
  return result;
}

BOOL static DetailChart.Hour.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = sub_264E23AA8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v15 - v9;
  _s16ScreenTimeUICore11DetailChartV4HourV2id10Foundation4DateVvg_0();
  _s16ScreenTimeUICore11DetailChartV4HourV2id10Foundation4DateVvg_0();
  v11 = sub_264E23A78();
  v12 = *(v5 + 8);
  v12(v7, v4);
  v12(v10, v4);
  if ((v11 & 1) == 0 || (sub_264E23878() & 1) == 0)
  {
    return 0;
  }

  v13 = type metadata accessor for DetailChart.Hour(0);
  return *(a1 + *(v13 + 20)) == *(a2 + *(v13 + 20));
}

BOOL sub_264DD30BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_264E23AA8();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v16 - v11;
  _s16ScreenTimeUICore11DetailChartV4HourV2id10Foundation4DateVvg_0();
  _s16ScreenTimeUICore11DetailChartV4HourV2id10Foundation4DateVvg_0();
  v13 = sub_264E23A78();
  v14 = *(v7 + 8);
  v14(v9, v6);
  v14(v12, v6);
  return (v13 & 1) != 0 && (sub_264E23878() & 1) != 0 && *(a1 + *(a3 + 20)) == *(a2 + *(a3 + 20));
}

uint64_t sub_264DD3224(uint64_t a1, uint64_t a2)
{
  v2 = sub_264E23AA8();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = v12 - v7;
  _s16ScreenTimeUICore11DetailChartV4HourV2id10Foundation4DateVvg_0();
  type metadata accessor for DetailChart.Model(0);
  sub_264E23AF8();
  v9 = sub_264E23A78();
  v10 = *(v3 + 8);
  v10(v5, v2);
  v10(v8, v2);
  return v9 & 1;
}

char *sub_264DD3368(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB24A8, &qword_264E27D00);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v25[-v5];
  v7 = type metadata accessor for DetailChart.Hour(0);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v11 = &v25[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (a2)
  {
    v12 = *(a1 + *(v7 + 20));
    if (v12 <= 0.0)
    {
      return MEMORY[0x277D84F90];
    }

    MEMORY[0x28223BE20](v9);
    *&v25[-16] = a1;
    sub_264D93DA0(sub_264DBCF90, a2, v6);
    if ((*(v8 + 48))(v6, 1, v7) == 1)
    {
      sub_264D817BC(v6, &qword_27FFB24A8, &qword_264E27D00);
      v13 = 0.0;
    }

    else
    {
      sub_264DD68F4(v6, v11, type metadata accessor for DetailChart.Hour);
      v21 = *&v11[*(v7 + 20)];
      sub_264DD6898(v11);
      v13 = v21 / v12;
    }

    v14 = sub_264DBC398(0, 1, 1, MEMORY[0x277D84F90]);
    v22 = *(v14 + 2);
    v15 = *(v14 + 3);
    v23 = v15 >> 1;
    v16 = v22 + 1;
    if (v15 >> 1 <= v22)
    {
      v14 = sub_264DBC398((v15 > 1), v22 + 1, 1, v14);
      v15 = *(v14 + 3);
      v23 = v15 >> 1;
    }

    *(v14 + 2) = v16;
    v24 = &v14[24 * v22];
    *(v24 + 4) = v13;
    *(v24 + 5) = 0x6F697463656C6573;
    *(v24 + 6) = 0xE90000000000006ELL;
    if (1.0 - v13 < 0.0)
    {
      v18 = 0.0;
    }

    else
    {
      v18 = 1.0 - v13;
    }

    v17 = v22 + 2;
    if (v23 < v17)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v14 = sub_264DBC398(0, 1, 1, MEMORY[0x277D84F90]);
    v16 = *(v14 + 2);
    v15 = *(v14 + 3);
    v17 = v16 + 1;
    v18 = 1.0;
    if (v16 >= v15 >> 1)
    {
LABEL_16:
      v14 = sub_264DBC398((v15 > 1), v17, 1, v14);
    }
  }

  *(v14 + 2) = v17;
  v19 = &v14[24 * v16];
  *(v19 + 4) = v18;
  *(v19 + 5) = 0x65646E69616D6572;
  *(v19 + 6) = 0xE900000000000072;
  return v14;
}

uint64_t DetailChart.body.getter@<X0>(uint64_t a2@<X8>)
{
  *a2 = sub_264E24828();
  *(a2 + 8) = 0x4014000000000000;
  *(a2 + 16) = 0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB23A8, &qword_264E27A10);
  return sub_264DD36F4(v2, 0x655073746E756F63, 0xED000072756F4872, a2 + *(v4 + 44));
}

uint64_t sub_264DD36F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v98 = a4;
  v7 = sub_264E23C18();
  v110 = *(v7 - 8);
  v111 = v7;
  MEMORY[0x28223BE20](v7);
  v109 = &v85 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1880, &qword_264E26220);
  MEMORY[0x28223BE20](v9 - 8);
  v107 = &v85 - v10;
  v114 = sub_264E238E8();
  v108 = *(v114 - 8);
  MEMORY[0x28223BE20](v114);
  v97 = &v85 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1878, &unk_264E27650);
  MEMORY[0x28223BE20](v12 - 8);
  v102 = &v85 - v13;
  v14 = type metadata accessor for DetailChart(0);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = &v85 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB23F8, &qword_264E27C28);
  v104 = *(v103 - 8);
  MEMORY[0x28223BE20](v103);
  v101 = &v85 - v18;
  v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB2400, &qword_264E27C30);
  v106 = *(v113 - 8);
  MEMORY[0x28223BE20](v113);
  v116 = &v85 - v19;
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB2408, &qword_264E27C38);
  v86 = *(v87 - 8);
  MEMORY[0x28223BE20](v87);
  v105 = &v85 - v20;
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1BC0, &qword_264E27C40);
  v90 = *(v93 - 8);
  MEMORY[0x28223BE20](v93);
  v88 = &v85 - v21;
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB2410, &qword_264E27C48);
  v91 = *(v94 - 8);
  MEMORY[0x28223BE20](v94);
  v89 = &v85 - v22;
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB2418, &qword_264E27C50);
  v95 = *(v96 - 8);
  MEMORY[0x28223BE20](v96);
  v92 = &v85 - v23;
  v112 = type metadata accessor for DetailChart.Model(0);
  v24 = *(a1 + *(v112 + 20));
  v118 = a1;

  sub_264D82BD4(sub_264DD7174, v117, v24);
  v123 = v25;
  v115 = a1;
  sub_264DD7194(a1, v17, type metadata accessor for DetailChart);
  v26 = (*(v15 + 80) + 16) & ~*(v15 + 80);
  v27 = (v16 + v26 + 7) & 0xFFFFFFFFFFFFFFF8;
  v28 = swift_allocObject();
  sub_264DD68F4(v17, v28 + v26, type metadata accessor for DetailChart);
  v29 = (v28 + v27);
  *v29 = a2;
  v29[1] = a3;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB20F8, &unk_264E27330);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB2420, &qword_264E27C58);
  sub_264D81DCC(&qword_27FFB2428, &qword_27FFB20F8, &unk_264E27330, MEMORY[0x277D83980]);
  v30 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FFB2430, &qword_264E27C60);
  v31 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FFB2438, &qword_264E27C68);
  v32 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FFB2440, &unk_264E27C70);
  v33 = sub_264DD7414();
  v34 = sub_264DD7534();
  v119 = v31;
  v120 = v32;
  v121 = v33;
  v122 = v34;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v36 = sub_264D89EB8();
  v119 = v30;
  v120 = MEMORY[0x277D837D0];
  v121 = OpaqueTypeConformance2;
  v122 = v36;
  swift_getOpaqueTypeConformance2();
  sub_264DD760C(&qword_27FFB2468, type metadata accessor for DetailChart.Hour, &protocol conformance descriptor for DetailChart.Hour);
  v37 = v101;
  sub_264E241D8();
  v119 = DetailChart.Model.xAxisScale.getter();
  v38 = sub_264E242D8();
  v100 = *(*(v38 - 8) + 56);
  v39 = v102;
  v100(v102, 1, 1, v38);
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1968, &unk_264E27700);
  v40 = sub_264D81DCC(&qword_27FFB2470, &qword_27FFB23F8, &qword_264E27C28, MEMORY[0x277CBB3F8]);
  v41 = sub_264D8A020(&qword_27FFB1970, &qword_27FFB1968, &unk_264E27700);
  v42 = v103;
  sub_264E24B38();
  sub_264D817BC(v39, &qword_27FFB1878, &unk_264E27650);

  v43 = v37;
  v44 = v42;
  (*(v104 + 8))(v43, v42);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1980, &unk_264E27710);
  v45 = swift_allocObject();
  *(v45 + 16) = xmmword_264E261F0;
  *(v45 + 32) = 0;
  v46 = v115;
  *(v45 + 40) = DetailChart.Model.lastY.getter();
  v123 = v45;
  v100(v39, 1, 1, v38);
  v47 = v46;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1988, &unk_264E262E0);
  v119 = v44;
  v120 = v99;
  v121 = v40;
  v122 = v41;
  v49 = swift_getOpaqueTypeConformance2();
  v50 = sub_264D8A020(&qword_27FFB1990, &qword_27FFB1988, &unk_264E262E0);
  v51 = v105;
  v52 = v113;
  v104 = v48;
  v53 = v107;
  v103 = v49;
  v54 = v116;
  sub_264E24B48();
  sub_264D817BC(v39, &qword_27FFB1878, &unk_264E27650);

  (*(v106 + 8))(v54, v52);
  v55 = v111;
  v56 = v47 + *(v112 + 24);
  v58 = v109;
  v57 = v110;
  (*(v110 + 104))(v109, *MEMORY[0x277CC9968], v111);
  sub_264E23B08();
  (*(v57 + 8))(v58, v55);
  v59 = v108;
  v60 = v114;
  result = (*(v108 + 48))(v53, 1);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v62 = v97;
    (*(v59 + 32))(v97, v53, v60);
    v63 = sub_264E119C0(v62, v56);
    v116 = &v85;
    MEMORY[0x28223BE20](v63);
    *(&v85 - 2) = v64;
    v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1998, &unk_264E27720);
    v119 = v113;
    v120 = v104;
    v121 = v103;
    v122 = v50;
    v66 = swift_getOpaqueTypeConformance2();
    v113 = MEMORY[0x277CBB460];
    v67 = sub_264D81DCC(&qword_27FFB19A0, &qword_27FFB1998, &unk_264E27720, MEMORY[0x277CBB460]);
    v68 = v88;
    v69 = v87;
    sub_264E24B08();

    (*(v59 + 8))(v62, v114);
    (*(v86 + 8))(v51, v69);
    DetailChart.Model.yStride.getter();
    v71 = v70;
    DetailChart.Model.lastY.getter();
    v73 = MEMORY[0x28223BE20](v72).n128_u64[0];
    *(&v85 - 6) = v71;
    *(&v85 - 5) = 0;
    *(&v85 - 32) = 1;
    *(&v85 - 3) = v73;
    *(&v85 - 16) = v74;
    *(&v85 - 1) = v68;
    v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB19A8, &unk_264E262F0);
    v119 = v69;
    v120 = v65;
    v121 = v66;
    v122 = v67;
    v76 = swift_getOpaqueTypeConformance2();
    v77 = sub_264D81DCC(&qword_27FFB19B0, &qword_27FFB19A8, &unk_264E262F0, v113);
    v78 = v89;
    v79 = v93;
    sub_264E24B18();

    (*(v90 + 8))(v68, v79);
    v119 = v79;
    v120 = v75;
    v121 = v76;
    v122 = v77;
    swift_getOpaqueTypeConformance2();
    v80 = v92;
    v81 = v94;
    sub_264E24B28();
    (*(v91 + 8))(v78, v81);
    v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB2478, &qword_264E27C80);
    v83 = v98;
    v84 = (v98 + *(v82 + 36));
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB2480, &qword_264E27C88);
    sub_264E245B8();
    *v84 = swift_getKeyPath();
    return (*(v95 + 32))(v83, v80, v96);
  }

  return result;
}

uint64_t sub_264DD45E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v57 = a3;
  v58 = a4;
  v59 = a5;
  v7 = sub_264E24188();
  v55 = *(v7 - 8);
  v56 = v7;
  MEMORY[0x28223BE20](v7);
  v52 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_264E24148();
  v53 = *(v9 - 8);
  v54 = v9;
  MEMORY[0x28223BE20](v9);
  v48 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DetailChart(0);
  v12 = v11 - 8;
  v43 = *(v11 - 8);
  v13 = *(v43 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for DetailChart.Hour(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB2438, &qword_264E27C68);
  v49 = *(v47 - 8);
  MEMORY[0x28223BE20](v47);
  v19 = &v42 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB2430, &qword_264E27C60);
  v21 = *(v20 - 8);
  v50 = v20;
  v51 = v21;
  MEMORY[0x28223BE20](v20);
  v46 = &v42 - v22;
  v23 = *(a2 + *(v12 + 28));
  v45 = a1;
  v24 = sub_264DD3368(a1, v23);
  sub_264DFE4CC(v24);
  v26 = v25;

  v62 = v26;
  KeyPath = swift_getKeyPath();
  sub_264DD7194(a1, &v42 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for DetailChart.Hour);
  sub_264DD7194(a2, v14, type metadata accessor for DetailChart);
  v27 = (*(v16 + 80) + 16) & ~*(v16 + 80);
  v28 = (v17 + *(v43 + 80) + v27) & ~*(v43 + 80);
  v29 = swift_allocObject();
  sub_264DD68F4(&v42 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0), v29 + v27, type metadata accessor for DetailChart.Hour);
  sub_264DD68F4(v14, v29 + v28, type metadata accessor for DetailChart);
  v30 = swift_allocObject();
  *(v30 + 16) = sub_264DD7860;
  *(v30 + 24) = v29;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB2488, &unk_264E27CE0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB2490, &qword_264E2A650);
  sub_264D81DCC(&qword_27FFB2498, &qword_27FFB2488, &unk_264E27CE0, MEMORY[0x277D83980]);
  v31 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FFB2450, &unk_264E2A400);
  v64 = sub_264E241F8();
  v65 = MEMORY[0x277CE0F78];
  v66 = MEMORY[0x277CBB400];
  v67 = MEMORY[0x277CE0F60];
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v43 = sub_264D89EB8();
  v64 = v31;
  v65 = MEMORY[0x277D837D0];
  v66 = OpaqueTypeConformance2;
  v67 = v43;
  swift_getOpaqueTypeConformance2();
  sub_264E24ED8();
  v33 = v48;
  sub_264E24128();
  v34 = v52;
  sub_264E24178();
  v60 = a2;
  v61 = v45;
  sub_264E24F58();
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB2440, &unk_264E27C70);
  v40 = sub_264DD7414();
  v41 = sub_264DD7534();
  v36 = v47;
  v37 = v46;
  sub_264E24018();
  (*(v55 + 8))(v34, v56);
  (*(v53 + 8))(v33, v54);
  (*(v49 + 8))(v19, v36);
  v62 = v57;
  v63 = v58;
  v64 = v36;
  v65 = v35;
  v66 = v40;
  v67 = v41;
  swift_getOpaqueTypeConformance2();
  v38 = v50;
  sub_264E24048();
  return (*(v51 + 8))(v37, v38);
}

uint64_t sub_264DD4D18@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v27 = a3;
  v5 = sub_264E238E8();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB24A0, &unk_264E27CF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v26 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1880, &qword_264E26220);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v26 - v16;
  MEMORY[0x28223BE20](v18);
  v20 = &v26 - v19;
  if (*(a1 + *(type metadata accessor for DetailChart.Model(0) + 36)) != 1)
  {
    goto LABEL_8;
  }

  (*(v6 + 16))(v20, a2, v5);
  (*(v6 + 56))(v20, 0, 1, v5);
  DetailChart.Model.firstHour.getter(v17);
  v21 = *(v9 + 48);
  sub_264DD79E4(v20, v11);
  sub_264DD79E4(v17, &v11[v21]);
  v22 = *(v6 + 48);
  if (v22(v11, 1, v5) == 1)
  {
    sub_264D817BC(v17, &qword_27FFB1880, &qword_264E26220);
    sub_264D817BC(v20, &qword_27FFB1880, &qword_264E26220);
    if (v22(&v11[v21], 1, v5) == 1)
    {
      sub_264D817BC(v11, &qword_27FFB1880, &qword_264E26220);
LABEL_11:
      result = sub_264E24C68();
      goto LABEL_9;
    }

    goto LABEL_7;
  }

  sub_264DD79E4(v11, v14);
  if (v22(&v11[v21], 1, v5) == 1)
  {
    sub_264D817BC(v17, &qword_27FFB1880, &qword_264E26220);
    sub_264D817BC(v20, &qword_27FFB1880, &qword_264E26220);
    (*(v6 + 8))(v14, v5);
LABEL_7:
    sub_264D817BC(v11, &qword_27FFB24A0, &unk_264E27CF0);
    goto LABEL_8;
  }

  (*(v6 + 32))(v8, &v11[v21], v5);
  sub_264DD760C(&qword_27FFB1F20, MEMORY[0x277CC88A8], MEMORY[0x277CC88C8]);
  v24 = sub_264E25068();
  v25 = *(v6 + 8);
  v25(v8, v5);
  sub_264D817BC(v17, &qword_27FFB1880, &qword_264E26220);
  sub_264D817BC(v20, &qword_27FFB1880, &qword_264E26220);
  v25(v14, v5);
  sub_264D817BC(v11, &qword_27FFB1880, &qword_264E26220);
  if (v24)
  {
    goto LABEL_11;
  }

LABEL_8:
  result = 0;
LABEL_9:
  *v27 = result;
  return result;
}

uint64_t DetailChart.Model.firstHour.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for DetailChart.Hour(0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v20 - v8;
  MEMORY[0x28223BE20](v10);
  v12 = &v20 - v11;
  result = type metadata accessor for DetailChart.Model(0);
  v14 = *(v1 + *(result + 20));
  v15 = *(v14 + 16);
  if (v15)
  {
    v16 = 0;
    while (v16 < *(v14 + 16))
    {
      sub_264DD7194(v14 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v16, v6, type metadata accessor for DetailChart.Hour);
      if (*&v6[*(v3 + 20)] > 0.0)
      {
        sub_264DD68F4(v6, v9, type metadata accessor for DetailChart.Hour);
        sub_264DD68F4(v9, v12, type metadata accessor for DetailChart.Hour);
        v18 = sub_264E238E8();
        v19 = *(v18 - 8);
        (*(v19 + 32))(a1, v12, v18);
        return (*(v19 + 56))(a1, 0, 1, v18);
      }

      ++v16;
      result = sub_264DD6898(v6);
      if (v15 == v16)
      {
        goto LABEL_6;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_6:
    v17 = sub_264E238E8();
    return (*(*(v17 - 8) + 56))(a1, 1, 1, v17);
  }

  return result;
}

uint64_t DetailChart.Model.xAxisScale.getter()
{
  v0 = sub_264E23C18();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v29 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1880, &qword_264E26220);
  MEMORY[0x28223BE20](v4 - 8);
  v38 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v29 - v7;
  v9 = sub_264E238E8();
  v41 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v32 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v29 - v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1960, &unk_264E262C0);
  v14 = *(sub_264E23AA8() - 8);
  v15 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v31 = *(v14 + 72);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_264E261F0;
  v17 = *(type metadata accessor for DetailChart.Model(0) + 24);
  v18 = *(v1 + 104);
  v36 = *MEMORY[0x277CC9968];
  v35 = v18;
  v18(v3);
  v37 = v17;
  sub_264E23B08();
  v19 = *(v1 + 8);
  v20 = v0;
  v21 = v41;
  v39 = v1 + 8;
  v40 = v20;
  v34 = v19;
  (v19)(v3);
  v33 = v21[6];
  result = v33(v8, 1, v9);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v30 = v16;
    v23 = v16 + v15;
    v24 = v21[4];
    v24(v13, v8, v9);
    v29 = v23;
    _s16ScreenTimeUICore11DetailChartV4HourV2id10Foundation4DateVvg_0();
    v25 = v21[1];
    v25(v13, v9);
    v26 = v40;
    v35(v3, v36, v40);
    v27 = v38;
    sub_264E23B08();
    v34(v3, v26);
    result = v33(v27, 1, v9);
    if (result != 1)
    {
      v28 = v32;
      v24(v32, v27, v9);
      sub_264E23888();
      v25(v28, v9);
      return v30;
    }
  }

  __break(1u);
  return result;
}

uint64_t DetailChart.Model.yAxisScale.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1980, &unk_264E27710);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_264E261F0;
  *(v1 + 32) = 0;
  if (*(v0 + *(type metadata accessor for DetailChart.Model(0) + 32)) == 1)
  {
    v2 = DetailChart.Model.maxCount.getter();
    v3 = 10.0;
    v4 = ceil(v2 / 10.0) * 10.0;
    if (v4 > 10.0)
    {
      v3 = v4;
    }
  }

  else
  {
    v3 = 3600.0;
  }

  *(v1 + 40) = v3;
  return v1;
}

void DetailChart.Model.yStride.getter()
{
  v0 = DetailChart.Model.strideLimit.getter();
  v1 = DetailChart.Model.lastY.getter() * 0.25;
  if (v1 == 0.0)
  {
    goto LABEL_34;
  }

  v2 = v0 >= 0.0;
  if (v1 > 0.0)
  {
    v2 = v0 <= 0.0;
  }

  if (!v2)
  {
    v4 = 0;
    while (1)
    {
      v3 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        goto LABEL_32;
      }

      v5 = v3 * v1 + 0.0;
      v6 = v5 <= v0;
      if (v1 > 0.0)
      {
        v6 = v0 <= v5;
      }

      ++v4;
      if (v6)
      {
        goto LABEL_11;
      }
    }
  }

  v3 = 0;
LABEL_11:
  v18 = MEMORY[0x277D84F90];
  sub_264D8D0F4(0, v3, 0);
  v7 = v18;
  if (v3)
  {
    v8 = 1;
    v9 = 0.0;
    while (1)
    {
      v10 = v9 <= v0;
      if (v1 > 0.0)
      {
        v10 = v0 <= v9;
      }

      if (v10)
      {
        break;
      }

      v19 = v7;
      v12 = *(v7 + 16);
      v11 = *(v7 + 24);
      if (v12 >= v11 >> 1)
      {
        sub_264D8D0F4((v11 > 1), v12 + 1, 1);
        v7 = v19;
      }

      v13 = v8 * v1 + 0.0;
      *(v7 + 16) = v12 + 1;
      *(v7 + 8 * v12 + 32) = v9;
      ++v8;
      v9 = v13;
      if (v8 - v3 == 1)
      {
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
    return;
  }

  v13 = 0.0;
LABEL_21:
  v14 = v13 <= v0;
  if (v1 > 0.0)
  {
    v14 = v0 <= v13;
  }

  if (!v14)
  {
    while (!__OFADD__(v3, 1))
    {
      v20 = v7;
      v16 = *(v7 + 16);
      v15 = *(v7 + 24);
      if (v16 >= v15 >> 1)
      {
        sub_264D8D0F4((v15 > 1), v16 + 1, 1);
        v7 = v20;
      }

      *(v7 + 8 * v16 + 32) = v13;
      v13 = (v3 + 1) * v1 + 0.0;
      *(v7 + 16) = v16 + 1;
      v17 = v13 <= v0;
      if (v1 > 0.0)
      {
        v17 = v0 <= v13;
      }

      ++v3;
      if (v17)
      {
        return;
      }
    }

    goto LABEL_33;
  }
}

double DetailChart.Model.lastY.getter()
{
  if (*(v0 + *(type metadata accessor for DetailChart.Model(0) + 32)) != 1)
  {
    return 3600.0;
  }

  result = ceil(DetailChart.Model.maxCount.getter() / 10.0) * 10.0;
  if (result <= 10.0)
  {
    return 10.0;
  }

  return result;
}

uint64_t sub_264DD5AFC@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>, double a7@<D0>)
{
  v54 = a5;
  v45 = a3;
  v44 = a2;
  v55 = a1;
  v46 = a6;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1C48, &unk_264E266B0);
  MEMORY[0x28223BE20](v9 - 8);
  v53 = &v39 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1C50, &unk_264E267D0);
  MEMORY[0x28223BE20](v11 - 8);
  v50 = &v39 - v12;
  v49 = sub_264E23C18();
  v47 = *(v49 - 8);
  v13 = v47;
  MEMORY[0x28223BE20](v49);
  v15 = &v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_264E23AA8();
  v51 = *(v16 - 8);
  v52 = v16;
  MEMORY[0x28223BE20](v16);
  v18 = &v39 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1C58, &qword_264E266C0);
  MEMORY[0x28223BE20](v19 - 8);
  v48 = &v39 - v20;
  v41 = sub_264E241F8();
  v39 = *(v41 - 8);
  MEMORY[0x28223BE20](v41);
  v22 = &v39 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB2450, &unk_264E2A400);
  v42 = *(v43 - 8);
  MEMORY[0x28223BE20](v43);
  v40 = &v39 - v23;
  sub_264E247D8();
  _s16ScreenTimeUICore11DetailChartV4HourV2id10Foundation4DateVvg_0();
  v24 = v49;
  (*(v13 + 104))(v15, *MEMORY[0x277CC9980], v49);
  v25 = sub_264E23C38();
  v26 = v50;
  (*(*(v25 - 8) + 56))(v50, 1, 1, v25);
  sub_264E240E8();

  v27 = v22;

  sub_264D817BC(v26, &qword_27FFB1C50, &unk_264E267D0);
  (*(v47 + 8))(v15, v24);
  (*(v51 + 8))(v18, v52);
  sub_264E247D8();
  v56 = *(a4 + *(type metadata accessor for DetailChart.Hour(0) + 20)) * a7;
  sub_264E240F8();

  v28 = [objc_opt_self() currentDevice];
  v29 = [v28 model];

  sub_264E25108();
  sub_264E251A8();

  sub_264E241E8();
  v62[0] = *(v54 + *(type metadata accessor for DetailChart.Model(0) + 28));
  v30 = qword_27FFB16A0;

  if (v30 != -1)
  {
    swift_once();
  }

  result = qword_27FFB6C48;
  v62[1] = qword_27FFB6C48;
  if (v55 > 1)
  {
    __break(1u);
  }

  else
  {
    v32 = *&v62[v55];

    v33 = MEMORY[0x277CE0F78];
    swift_arrayDestroy();
    v56 = v32;
    v34 = MEMORY[0x277CBB400];
    v35 = MEMORY[0x277CE0F60];
    v36 = v40;
    v37 = *&v41;
    sub_264E24038();

    (*(v39 + 8))(v27, COERCE_DOUBLE(*&v37));
    v60 = v44;
    v61 = v45;
    v56 = v37;
    v57 = v33;
    v58 = v34;
    v59 = v35;
    swift_getOpaqueTypeConformance2();
    sub_264D89EB8();
    v38 = v43;
    sub_264E24048();
    return (*(v42 + 8))(v36, v38);
  }

  return result;
}

uint64_t DetailChart.Model.orderedStackedBarColors.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB22A8, &qword_264E27740);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_264E261F0;
  *(v1 + 32) = *(v0 + *(type metadata accessor for DetailChart.Model(0) + 28));
  v2 = qword_27FFB16A0;

  if (v2 != -1)
  {
    swift_once();
  }

  *(v1 + 40) = qword_27FFB6C48;

  return v1;
}

uint64_t sub_264DD6324@<X0>(uint64_t a2@<X8>)
{
  *a2 = sub_264E24828();
  *(a2 + 8) = 0x4014000000000000;
  *(a2 + 16) = 0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB23A8, &qword_264E27A10);
  return sub_264DD36F4(v2, 0x655073746E756F63, 0xED000072756F4872, a2 + *(v4 + 44));
}

uint64_t sub_264DD6398@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_264E24D28();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v1;
  sub_264E24D18();
  (*(v4 + 104))(v6, *MEMORY[0x277CE0FE0], v3);
  v8 = sub_264E24D48();

  (*(v4 + 8))(v6, v3);
  sub_264E24F58();
  sub_264E244B8();
  v9 = v14[1];
  v10 = v15;
  v11 = v16;
  v12 = v17;
  v22 = v15;
  v20 = v17;
  *a1 = v8;
  *(a1 + 8) = v9;
  *(a1 + 16) = v10;
  *(a1 + 17) = *v21;
  *(a1 + 20) = *&v21[3];
  *(a1 + 24) = v11;
  *(a1 + 32) = v12;
  LODWORD(v9) = *v19;
  *(a1 + 36) = *&v19[3];
  *(a1 + 33) = v9;
  *(a1 + 40) = v18;
  *(a1 + 56) = v7;
}

double DetailChart.Model.maxCount.getter()
{
  v1 = type metadata accessor for DetailChart.Hour(0);
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v0 + *(type metadata accessor for DetailChart.Model(0) + 20));
  v6 = *(v5 + 16);
  if (v6)
  {
    v19 = MEMORY[0x277D84F90];
    sub_264D8D0F4(0, v6, 0);
    v7 = v19;
    v8 = v5 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
    v9 = *(v2 + 72);
    do
    {
      sub_264DD7194(v8, v4, type metadata accessor for DetailChart.Hour);
      v10 = *&v4[*(v1 + 20)];
      sub_264DD6898(v4);
      v19 = v7;
      v12 = *(v7 + 16);
      v11 = *(v7 + 24);
      v13 = v12 + 1;
      if (v12 >= v11 >> 1)
      {
        sub_264D8D0F4((v11 > 1), v12 + 1, 1);
        v7 = v19;
      }

      *(v7 + 16) = v13;
      *(v7 + 8 * v12 + 32) = v10;
      v8 += v9;
      --v6;
    }

    while (v6);
  }

  else
  {
    v7 = MEMORY[0x277D84F90];
    v13 = *(MEMORY[0x277D84F90] + 16);
    if (!v13)
    {
      v14 = 0.0;
      goto LABEL_15;
    }
  }

  v14 = *(v7 + 32);
  v15 = v13 - 1;
  if (v13 != 1)
  {
    v16 = 40;
    do
    {
      if (v14 < *(v7 + v16))
      {
        v14 = *(v7 + v16);
      }

      v16 += 8;
      --v15;
    }

    while (v15);
  }

LABEL_15:

  return v14;
}

double DetailChart.Model.minimumMaxYAxisUnit.getter()
{
  v1 = type metadata accessor for DetailChart.Model(0);
  result = 3600.0;
  if (*(v0 + *(v1 + 32)))
  {
    return 10.0;
  }

  return result;
}

double DetailChart.Model.strideLimit.getter()
{
  if (*(v0 + *(type metadata accessor for DetailChart.Model(0) + 32)) != 1)
  {
    return 4500.0;
  }

  v1 = ceil(DetailChart.Model.maxCount.getter() / 10.0) * 10.0;
  if (v1 <= 10.0)
  {
    v1 = 10.0;
  }

  return v1 + 1.0;
}

BOOL _s16ScreenTimeUICore11DetailChartV5ModelV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  if (sub_264E23A78() & 1) != 0 && (v4 = type metadata accessor for DetailChart.Model(0), (sub_264D84338(*(a1 + v4[5]), *(a2 + v4[5]))) && (MEMORY[0x26674DD10](a1 + v4[6], a2 + v4[6]) & 1) != 0 && (sub_264E24C48() & 1) != 0 && *(a1 + v4[8]) == *(a2 + v4[8]) && *(a1 + v4[9]) == *(a2 + v4[9]))
  {
    return *(a1 + v4[10]) == *(a2 + v4[10]);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_264DD6898(uint64_t a1)
{
  v2 = type metadata accessor for DetailChart.Hour(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_264DD68F4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_264DD69D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for DetailChart.Model(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_264DD6AB0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for DetailChart.Model(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2;
  }

  return result;
}

void sub_264DD6B68(uint64_t a1)
{
  type metadata accessor for DetailChart.Model(319);
  if (v1 <= 0x3F)
  {
    sub_264DBDF34(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_264DD6C00(uint64_t a1, uint64_t a2)
{
  v4 = sub_264E238E8();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_264DD6C80(uint64_t a1, uint64_t a2)
{
  v4 = sub_264E238E8();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_264DD6CF0(uint64_t a1)
{
  result = sub_264E238E8();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_264DD6D78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_264E23AA8();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = sub_264E23C38();
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 24);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_264DD6EB0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_264E23AA8();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  else
  {
    v11 = sub_264E23C38();
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 24);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

void sub_264DD6FD4(uint64_t a1)
{
  sub_264E23AA8();
  if (v1 <= 0x3F)
  {
    sub_264DD709C(319);
    if (v2 <= 0x3F)
    {
      sub_264E23C38();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_264DD709C(uint64_t a1)
{
  if (!qword_27FFB23E0)
  {
    type metadata accessor for DetailChart.Hour(255);
    v1 = sub_264E251F8();
    if (!v2)
    {
      atomic_store(v1, &qword_27FFB23E0);
    }
  }
}

uint64_t sub_264DD7194(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_264DD71FC()
{
  v1 = *(type metadata accessor for DetailChart(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = (*(v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = v0 + v3;
  v6 = sub_264E23AA8();
  (*(*(v6 - 8) + 8))(v5, v6);
  v7 = type metadata accessor for DetailChart.Model(0);

  v8 = *(v7 + 24);
  v9 = sub_264E23C38();
  (*(*(v9 - 8) + 8))(v5 + v8, v9);

  return MEMORY[0x2821FE8E8](v0, v4 + 16, v2 | 7);
}

uint64_t sub_264DD7364@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for DetailChart(0) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v8 = *v7;
  v9 = v7[1];

  return sub_264DD45E0(a1, v2 + v6, v8, v9, a2);
}

unint64_t sub_264DD7414()
{
  result = qword_27FFB2448;
  if (!qword_27FFB2448)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FFB2438, &qword_264E27C68);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FFB2450, &unk_264E2A400);
    sub_264E241F8();
    swift_getOpaqueTypeConformance2();
    sub_264D89EB8();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FFB2448);
  }

  return result;
}

unint64_t sub_264DD7534()
{
  result = qword_27FFB2458;
  if (!qword_27FFB2458)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FFB2440, &unk_264E27C70);
    sub_264DD75B8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FFB2458);
  }

  return result;
}

unint64_t sub_264DD75B8()
{
  result = qword_27FFB2460;
  if (!qword_27FFB2460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FFB2460);
  }

  return result;
}

uint64_t sub_264DD760C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_264DD767C()
{
  v1 = *(type metadata accessor for DetailChart.Hour(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  v5 = *(type metadata accessor for DetailChart(0) - 8);
  v6 = *(v5 + 80);
  v7 = (v3 + v4 + v6) & ~v6;
  v8 = *(v5 + 64);
  v9 = v2 | v6;
  v10 = sub_264E238E8();
  (*(*(v10 - 8) + 8))(v0 + v3, v10);
  v11 = sub_264E23AA8();
  (*(*(v11 - 8) + 8))(v0 + v7, v11);
  v12 = type metadata accessor for DetailChart.Model(0);

  v13 = *(v12 + 24);
  v14 = sub_264E23C38();
  (*(*(v14 - 8) + 8))(v0 + v7 + v13, v14);

  return MEMORY[0x2821FE8E8](v0, v7 + v8, v9 | 7);
}

uint64_t sub_264DD7860@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, double a5@<D0>)
{
  v11 = *(type metadata accessor for DetailChart.Hour(0) - 8);
  v12 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v13 = *(v11 + 64);
  v14 = *(type metadata accessor for DetailChart(0) - 8);
  v15 = v5 + ((v12 + v13 + *(v14 + 80)) & ~*(v14 + 80));

  return sub_264DD5AFC(a1, a2, a3, v5 + v12, v15, a4, a5);
}

uint64_t sub_264DD796C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_264DD79E4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1880, &qword_264E26220);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_264DD7A58()
{
  result = qword_27FFB24B0;
  if (!qword_27FFB24B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FFB24B8, &qword_264E27D08);
    sub_264DD7B10();
    sub_264D81DCC(&qword_27FFB24D0, qword_27FFB24D8, &qword_264E27D18, MEMORY[0x277CE0740]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FFB24B0);
  }

  return result;
}

unint64_t sub_264DD7B10()
{
  result = qword_27FFB24C0;
  if (!qword_27FFB24C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FFB24C8, &qword_264E27D10);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FFB24C0);
  }

  return result;
}

uint64_t sub_264DD7BA0(uint64_t *TupleTypeMetadata, unint64_t a2, uint64_t a3)
{
  v5 = TupleTypeMetadata;
  if (a2 == 1)
  {
    v6 = *(a3 & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    MEMORY[0x28223BE20](TupleTypeMetadata);
    v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (a2)
    {
      v9 = 0;
      v10 = a3 & 0xFFFFFFFFFFFFFFFELL;
      if (a2 < 4)
      {
        goto LABEL_9;
      }

      if (&v8[-v10] < 0x20)
      {
        goto LABEL_9;
      }

      v9 = a2 & 0xFFFFFFFFFFFFFFFCLL;
      v11 = (v10 + 16);
      v12 = v8 + 16;
      v13 = a2 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        v14 = *v11;
        *(v12 - 1) = *(v11 - 1);
        *v12 = v14;
        v11 += 2;
        v12 += 2;
        v13 -= 4;
      }

      while (v13);
      if (v9 != a2)
      {
LABEL_9:
        v15 = a2 - v9;
        v16 = 8 * v9;
        v17 = &v8[8 * v9];
        v18 = (v10 + v16);
        do
        {
          v19 = *v18++;
          *v17 = v19;
          v17 += 8;
          --v15;
        }

        while (v15);
      }
    }

    TupleTypeMetadata = swift_getTupleTypeMetadata();
    v6 = TupleTypeMetadata;
  }

  MEMORY[0x28223BE20](TupleTypeMetadata);
  v21 = &v30 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v22 = (a3 & 0xFFFFFFFFFFFFFFFELL);
    v23 = (v6 + 32);
    v24 = a2;
    do
    {
      if (a2 == 1)
      {
        v25 = 0;
      }

      else
      {
        v25 = *v23;
      }

      v27 = *v22++;
      v26 = v27;
      v28 = *v5++;
      (*(*(v26 - 8) + 16))(&v21[v25], v28);
      v23 += 4;
      --v24;
    }

    while (v24);
  }

  return sub_264E24FB8();
}

double sub_264DD7D70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v49 = a2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1880, &qword_264E26220);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v40 - v8;
  v10 = sub_264E238E8();
  v47 = *(v10 - 8);
  v48 = v10;
  MEMORY[0x28223BE20](v10);
  v46 = &v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1860, &qword_264E267E0);
  MEMORY[0x28223BE20](v12 - 8);
  v45 = &v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v40 - v15;
  v17 = sub_264E23AA8();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = &v40 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v23 = &v40 - v22;
  MEMORY[0x28223BE20](v24);
  v26 = &v40 - v25;
  v27 = 0.0;
  if (a1 == 1)
  {
    v42 = a3;
    _s16ScreenTimeUICore11DetailChartV4HourV2id10Foundation4DateVvg_0();
    v43 = v4;
    Calendar.startOfWeek(containing:)(v23, v16);
    v44 = v18[1];
    v44(v23, v17);
    v28 = v18[6];
    if (v28(v16, 1, v17) == 1)
    {
      v29 = &qword_27FFB1860;
      v30 = &qword_264E267E0;
      v31 = v16;
LABEL_9:
      sub_264D817BC(v31, v29, v30);
      return v27;
    }

    v40 = v18[4];
    v41 = v28;
    v40(v26, v16, v17);
    _s16ScreenTimeUICore11DetailChartV4HourV2id10Foundation4DateVvg_0();
    Calendar.weeksPreceding(date:weekCount:)(v23, 2, v9);
    v44(v23, v17);
    v32 = v47;
    if ((*(v47 + 48))(v9, 1, v48) == 1)
    {
      v44(v26, v17);
      v29 = &qword_27FFB1880;
      v30 = &qword_264E26220;
LABEL_8:
      v31 = v9;
      goto LABEL_9;
    }

    (*(v32 + 32))(v46, v9, v48);
    _s16ScreenTimeUICore11DetailChartV4HourV2id10Foundation4DateVvg_0();
    v9 = v45;
    Calendar.startOfWeek(containing:)(v23, v45);
    v44(v23, v17);
    if (v41(v9, 1, v17) == 1)
    {
      (*(v32 + 8))(v46, v48);
      v44(v26, v17);
      v29 = &qword_27FFB1860;
      v30 = &qword_264E267E0;
      goto LABEL_8;
    }

    v40(v20, v9, v17);
    v34 = v42;
    sub_264DD878C(v26, 0, v42);
    v36 = v35;
    sub_264DD878C(v20, 0, v34);
    v38 = v37;
    v39 = v44;
    v44(v20, v17);
    (*(v32 + 8))(v46, v48);
    v39(v26, v17);
    if (v38 > 0.0)
    {
      return (v36 - v38) / v38;
    }
  }

  return v27;
}

uint64_t sub_264DD8268(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v32 = a1;
  v33 = a2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1860, &qword_264E267E0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v29 - v8;
  v31 = sub_264E238E8();
  v10 = *(v31 - 8);
  MEMORY[0x28223BE20](v31);
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_264E23AA8();
  v13 = *(v34 - 8);
  MEMORY[0x28223BE20](v34);
  v15 = &v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v29 = &v29 - v17;
  MEMORY[0x28223BE20](v18);
  v20 = &v29 - v19;
  v30 = a4;
  if (a3)
  {
    v21 = a3;
  }

  else
  {
    v21 = *(v4 + *(a4 + 36));
  }

  if (v32 == 1)
  {

    _s16ScreenTimeUICore11DetailChartV4HourV2id10Foundation4DateVvg_0();
    Calendar.startOfWeek(containing:)(v15, v9);
    v22 = *(v13 + 8);
    v23 = v34;
    v22(v15, v34);
    if ((*(v13 + 48))(v9, 1, v23) == 1)
    {
      return sub_264D817BC(v9, &qword_27FFB1860, &qword_264E267E0);
    }

    else
    {
      v26 = v29;
      (*(v13 + 32))(v29, v9, v23);
      v27 = a3;
      if (!a3)
      {
        v27 = *(v4 + *(v30 + 36));
      }

      v28 = *(v30 + 44);

      sub_264DD26C0(v27, v26, v4, (v4 + v28));

      return (v22)(v26, v23);
    }
  }

  else if (v32)
  {
    result = sub_264E253E8();
    __break(1u);
  }

  else
  {

    sub_264E23858();
    _s16ScreenTimeUICore11DetailChartV4HourV2id10Foundation4DateVvg_0();
    (*(v10 + 8))(v12, v31);
    if (*(v21 + 16) && (sub_264D9D5F4(v20), (v25 & 1) != 0))
    {
      (*(v13 + 8))(v20, v34);
    }

    else
    {

      return (*(v13 + 8))(v20, v34);
    }
  }

  return result;
}

uint64_t ChartHeaderView.Model.init(calendar:chartDataType:)@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v7 = *a2;
  v8 = type metadata accessor for ChartHeaderView.Model(0, a3, a4, a4);
  v9 = v8[9];
  *(a5 + v9) = sub_264DEB44C(MEMORY[0x277D84F90]);
  v10 = v8[11];
  v11 = sub_264E23AA8();
  (*(*(v11 - 8) + 56))(a5 + v10, 1, 1, v11);
  v12 = sub_264E23C38();
  result = (*(*(v12 - 8) + 32))(a5, a1, v12);
  *(a5 + v8[10]) = v7;
  return result;
}

void sub_264DD878C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v68 = a1;
  v75 = sub_264E23C18();
  v5 = *(v75 - 8);
  MEMORY[0x28223BE20](v75);
  v74 = &v57 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1880, &qword_264E26220);
  MEMORY[0x28223BE20](v7 - 8);
  v81 = &v57 - v8;
  v9 = sub_264E238E8();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v67 = &v57 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_264E23AA8();
  v63 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v14 = &v57 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v79 = &v57 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1D98, &unk_264E268F0);
  MEMORY[0x28223BE20](v17 - 8);
  v78 = &v57 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v76 = v3;
  v77 = &v57 - v20;
  if (a2)
  {
    v21 = a2;
  }

  else
  {
  }

  v62 = v21;
  v22 = *(v21 + 64);
  v58 = v21 + 64;
  v23 = 1 << *(v21 + 32);
  v24 = -1;
  if (v23 < 64)
  {
    v24 = ~(-1 << v23);
  }

  v25 = v24 & v22;
  v26 = (v23 + 63) >> 6;
  v59 = v63 + 16;
  v80 = (v63 + 32);
  v72 = *MEMORY[0x277CC9940];
  v70 = (v5 + 8);
  v71 = (v5 + 104);
  v69 = (v10 + 48);
  v65 = (v10 + 8);
  v66 = (v10 + 32);
  v64 = (v63 + 8);

  v27 = 0;
  v28 = 0.0;
  v73 = v9;
  v61 = v12;
  v60 = v14;
  if (v25)
  {
    while (1)
    {
      v29 = v27;
LABEL_15:
      v32 = __clz(__rbit64(v25));
      v25 &= v25 - 1;
      v33 = v32 | (v29 << 6);
      v34 = v62;
      v35 = v63;
      v36 = v79;
      v37 = v61;
      (*(v63 + 16))(v79, *(v62 + 48) + *(v63 + 72) * v33, v61);
      v38 = *(*(v34 + 56) + 8 * v33);
      v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1DA0, &unk_264E27A00);
      v40 = *(v39 + 48);
      v41 = *(v35 + 32);
      v12 = v37;
      v42 = v78;
      v41(v78, v36, v12);
      *&v42[v40] = v38;
      (*(*(v39 - 8) + 56))(v42, 0, 1, v39);
      v31 = v29;
      v43 = v42;
      v14 = v60;
LABEL_16:
      v44 = v77;
      sub_264DD2DA4(v43, v77);
      v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1DA0, &unk_264E27A00);
      if ((*(*(v45 - 8) + 48))(v44, 1, v45) == 1)
      {
        break;
      }

      v46 = v31;
      v47 = *(v44 + *(v45 + 48));
      (*v80)(v14, v44, v12);
      v48 = v81;
      v49 = v74;
      v50 = v75;
      (*v71)(v74, v72, v75);
      sub_264E23B08();
      (*v70)(v49, v50);
      v51 = v73;
      if ((*v69)(v48, 1, v73) == 1)
      {
        goto LABEL_25;
      }

      v52 = v67;
      (*v66)(v67, v81, v51);
      v53 = v79;
      _s16ScreenTimeUICore11DetailChartV4HourV2id10Foundation4DateVvg_0();
      (*v65)(v52, v51);
      LOBYTE(v52) = sub_264E23A78();
      v54 = *v64;
      (*v64)(v53, v12);
      v54(v14, v12);
      if (v52)
      {
        v28 = v28 + v47;
      }

      v27 = v46;
      if (!v25)
      {
        goto LABEL_8;
      }
    }
  }

  else
  {
LABEL_8:
    if (v26 <= v27 + 1)
    {
      v30 = v27 + 1;
    }

    else
    {
      v30 = v26;
    }

    v31 = v30 - 1;
    while (1)
    {
      v29 = v27 + 1;
      if (__OFADD__(v27, 1))
      {
        break;
      }

      if (v29 >= v26)
      {
        v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1DA0, &unk_264E27A00);
        v56 = v78;
        (*(*(v55 - 8) + 56))(v78, 1, 1, v55);
        v43 = v56;
        v25 = 0;
        goto LABEL_16;
      }

      v25 = *(v58 + 8 * v29);
      ++v27;
      if (v25)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_25:
    __break(1u);
  }
}

uint64_t sub_264DD8E90(void (*a1)(_BYTE *, void, void *), uint64_t a2, _BYTE *a3)
{
  v123 = a3;
  v124 = a1;
  v4 = sub_264E250B8();
  MEMORY[0x28223BE20](v4 - 8);
  v116 = &v98[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = sub_264E23C38();
  v110 = *(v6 - 8);
  v111 = v6;
  MEMORY[0x28223BE20](v6);
  v108 = &v98[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v104 = sub_264E238E8();
  v103 = *(v104 - 8);
  MEMORY[0x28223BE20](v104);
  v102 = &v98[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v126 = sub_264E23C18();
  v117 = *(v126 - 1);
  MEMORY[0x28223BE20](v126);
  v10 = &v98[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1860, &qword_264E267E0);
  MEMORY[0x28223BE20](v11 - 8);
  v107 = &v98[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v13);
  v113 = &v98[-v14];
  MEMORY[0x28223BE20](v15);
  v17 = &v98[-v16];
  v18 = sub_264E23AA8();
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v101 = &v98[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v21);
  v105 = &v98[-v22];
  MEMORY[0x28223BE20](v23);
  v106 = &v98[-v24];
  MEMORY[0x28223BE20](v25);
  v100 = &v98[-v26];
  MEMORY[0x28223BE20](v27);
  v29 = &v98[-v28];
  MEMORY[0x28223BE20](v30);
  v32 = &v98[-v31];
  v33 = sub_264E23AD8();
  MEMORY[0x28223BE20](v33 - 8);
  v35 = &v98[-((v34 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v36 = sub_264E250D8();
  MEMORY[0x28223BE20](v36 - 8);
  v38 = &v98[-((v37 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_264E25078();
  v118 = objc_opt_self();
  v39 = [v118 bundle];
  sub_264E23AC8();
  v119 = v38;
  v120 = v35;
  v115 = sub_264E25138();
  v121 = v40;
  v109 = a2;
  v41 = v122;
  _s16ScreenTimeUICore11DetailChartV4HourV2id10Foundation4DateVvg_0();
  sub_264D81744(v41 + *(v123 + 11), v17, &qword_27FFB1860, &qword_264E267E0);
  v42 = *(v19 + 48);
  v43 = (v42)(v17, 1, v18);
  v125 = v19;
  if (v43 == 1)
  {
    sub_264E23A98();
    if ((v42)(v17, 1, v18) != 1)
    {
      sub_264D817BC(v17, &qword_27FFB1860, &qword_264E267E0);
    }
  }

  else
  {
    (*(v19 + 32))(v29, v17, v18);
  }

  v44 = v126;
  if (v124)
  {
    v116 = v42;
    v112 = v29;
    v123 = v32;
    v114 = v18;
    if (v124 == 1)
    {
      v46 = v10;
      v47 = v117;
      v48 = *(v117 + 104);
      v99 = *MEMORY[0x277CC9940];
      v124 = v48;
      v48(v10);
      v49 = v123;
      v50 = v112;
      v51 = sub_264E23BE8();
      v52 = *(v47 + 8);
      v52(v46, v44);
      if (v51)
      {
        v53 = *(v125 + 8);
        v54 = v114;
        v53(v50, v114);
        v53(v49, v54);
        return v115;
      }

      v124(v46, v99, v44);
      v62 = v113;
      sub_264E23BC8();
      v52(v46, v44);
      v63 = v114;
      if (v116(v62, 1, v114) == 1)
      {
        v122 = v52;
        sub_264D817BC(v62, &qword_27FFB1860, &qword_264E267E0);
        v64 = v125;
      }

      else
      {
        v70 = v125;
        v71 = v62;
        v72 = v100;
        (*(v125 + 32))(v100, v71, v63);
        v124(v46, v99, v44);
        v73 = sub_264E23BE8();
        v52(v46, v44);
        if (v73)
        {

          sub_264E25078();
          v74 = [v118 bundle];
          sub_264E23AC8();
          v75 = sub_264E25138();
          v76 = *(v70 + 8);
          v77 = v72;
          v78 = v114;
          v76(v77, v114);
          v76(v112, v78);
          v76(v123, v78);
          return v75;
        }

        v122 = v52;
        (*(v70 + 8))(v72, v114);
        v64 = v70;
        v44 = v126;
      }

      v79 = [objc_allocWithZone(MEMORY[0x277CCA978]) init];
      v80 = sub_264E250E8();
      v126 = v79;
      [v79 setDateTemplate_];

      v81 = v114;
      (*(v64 + 16))(v106, v123, v114);
      v82 = v105;
      sub_264E23888();
      v83 = v108;
      sub_264E23BF8();
      v124(v46, *MEMORY[0x277CC9968], v44);
      v84 = v44;
      v85 = v107;
      sub_264E23BC8();
      v122(v46, v84);
      v86 = v81;
      (*(v110 + 8))(v83, v111);
      if (v116(v85, 1, v81) != 1)
      {
        v87 = *(v64 + 8);
        v87(v82, v81);
        (*(v64 + 32))(v101, v85, v81);
        v88 = v102;
        sub_264E23898();
        v89 = sub_264E23868();
        (*(v103 + 8))(v88, v104);
        v90 = v126;
        v91 = [v126 stringFromDateInterval_];

        if (v91)
        {

          v92 = sub_264E25108();
          v94 = v93;

          sub_264E25078();
          v95 = [v118 bundle];
          sub_264E23AC8();
          sub_264E25138();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB2610, &unk_264E27E60);
          v96 = swift_allocObject();
          *(v96 + 16) = xmmword_264E261E0;
          *(v96 + 56) = MEMORY[0x277D837D0];
          *(v96 + 64) = sub_264DDBB6C();
          *(v96 + 32) = v92;
          *(v96 + 40) = v94;
          v97 = sub_264E25128();

          v87(v112, v86);
          v87(v123, v86);
          return v97;
        }

        v87(v112, v86);
        v87(v123, v86);
        return v115;
      }

      __break(1u);
    }

    result = sub_264E253E8();
    __break(1u);
    return result;
  }

  v45 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
  if (sub_264E23B28() & 1) != 0 || (sub_264E23B88())
  {
    v55 = sub_264E250E8();
    [v45 setLocalizedDateFormatFromTemplate_];

    sub_264E250A8();
    sub_264E25098();
    v56 = sub_264E23A38();
    v57 = [v45 stringFromDate_];

    sub_264E25108();
    v58 = v29;

    sub_264E25088();

    sub_264E25098();
    sub_264E250C8();
    [v118 bundle];
    sub_264E23AC8();
    v59 = sub_264E25138();

    v60 = *(v125 + 8);
    v60(v58, v18);
    v60(v32, v18);
    return v59;
  }

  else
  {
    v65 = sub_264E250E8();
    [v45 setLocalizedDateFormatFromTemplate_];

    v66 = sub_264E23A38();
    v67 = [v45 stringFromDate_];

    v68 = sub_264E25108();
    v69 = *(v125 + 8);
    v69(v29, v18);
    v69(v32, v18);
    return v68;
  }
}

uint64_t sub_264DD9EA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_264E23C38();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v28 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1C50, &unk_264E267D0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v16 = &v27 - v15;
  v17 = 0;
  if ((*(v3 + *(v14 + 40)) & 1) == 0)
  {
    sub_264DD8268(a1, a2, a3, v14);
    v19 = v18;
    (*(v8 + 56))(v16, 1, 1, v7);
    v20 = [objc_allocWithZone(MEMORY[0x277CCA958]) init];
    [v20 setAllowedUnits_];
    [v20 setUnitsStyle_];
    [v20 setZeroFormattingBehavior_];
    if (v19 <= 3600.0)
    {
      v21 = 1;
    }

    else
    {
      v21 = 2;
    }

    [v20 setMaximumUnitCount_];
    sub_264D81744(v16, v12, &qword_27FFB1C50, &unk_264E267D0);
    if ((*(v8 + 48))(v12, 1, v7) == 1)
    {
      sub_264D817BC(v12, &qword_27FFB1C50, &unk_264E267D0);
    }

    else
    {
      v22 = v28;
      (*(v8 + 32))(v28, v12, v7);
      v23 = sub_264E23BA8();
      [v20 setCalendar_];

      (*(v8 + 8))(v22, v7);
    }

    v24 = [v20 stringFromTimeInterval_];
    if (v24)
    {
      v25 = v24;
      v17 = sub_264E25108();
    }

    else
    {

      v17 = 0;
    }

    sub_264D817BC(v16, &qword_27FFB1C50, &unk_264E267D0);
  }

  return v17;
}

uint64_t ChartHeaderView.body.getter@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = *(a1 + 16);
  sub_264E24948();
  sub_264E24508();
  sub_264E24508();
  swift_getTupleTypeMetadata3();
  sub_264E24FA8();
  swift_getWitnessTable();
  sub_264E24E08();
  swift_getTupleTypeMetadata2();
  sub_264E24FA8();
  swift_getWitnessTable();
  v6 = sub_264E24E38();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v17[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v10);
  v12 = &v17[-v11];
  sub_264E24828();
  v13 = *(a1 + 24);
  v18 = v5;
  v19 = v13;
  v20 = v2;
  sub_264E24E28();
  swift_getWitnessTable();
  v14 = *(v7 + 16);
  v14(v12, v9, v6);
  v15 = *(v7 + 8);
  v15(v9, v6);
  v14(a2, v12, v6);
  return (v15)(v12, v6);
}

uint64_t sub_264DDA458@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v59 = a4;
  sub_264E24948();
  sub_264E24508();
  sub_264E24508();
  swift_getTupleTypeMetadata3();
  v7 = sub_264E24FA8();
  WitnessTable = swift_getWitnessTable();
  v55 = v7;
  v8 = sub_264E24E08();
  v58 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v57 = &v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v56 = &v47 - v11;
  v13 = type metadata accessor for ChartHeaderView(0, a2, a3, v12);
  v15 = (a1 + v13[11]);
  v16 = v15[1];
  v52 = a3;
  v53 = a1;
  v51 = a2;
  if (v16)
  {
    v17 = *v15;
    v18 = v16;
  }

  else
  {
    v19 = v13[10];
    v20 = *(a1 + v13[9]);
    v21 = type metadata accessor for ChartHeaderView.Model(0, a2, a3, v14);
    v17 = sub_264DD8E90(v20, a1 + v19, v21);
  }

  v63 = v17;
  v64 = v18;
  sub_264D89EB8();

  v22 = sub_264E24AF8();
  v24 = v23;
  v26 = v25;
  sub_264E249E8();
  v27 = sub_264E24AD8();
  v29 = v28;
  v31 = v30;

  sub_264D817AC(v22, v24, v26 & 1);

  sub_264E24CD8();
  v32 = sub_264E24AB8();
  v48 = v33;
  v49 = v34;
  v50 = v35;

  sub_264D817AC(v27, v29, v31 & 1);

  v36 = sub_264E24758();
  MEMORY[0x28223BE20](v36);
  v37 = v52;
  *(&v47 - 4) = v51;
  *(&v47 - 3) = v37;
  *(&v47 - 2) = v53;
  v38 = v57;
  sub_264E24DF8();
  v55 = swift_getWitnessTable();
  v39 = v58;
  v40 = *(v58 + 16);
  v41 = v56;
  v40(v56, v38, v8);
  v58 = *(v39 + 8);
  (v58)(v38, v8);
  v42 = v48;
  v63 = v32;
  v64 = v48;
  v43 = v49 & 1;
  v65 = v49 & 1;
  v66 = v50;
  v67[0] = &v63;
  v40(v38, v41, v8);
  v67[1] = v38;
  sub_264D80F20(v32, v42, v43);

  v62[0] = MEMORY[0x277CE0BD8];
  v62[1] = v8;
  v60 = MEMORY[0x277CE0BC8];
  v61 = v55;
  sub_264DD7BA0(v67, 2uLL, v62);
  sub_264D817AC(v32, v42, v43);

  v44 = v41;
  v45 = v58;
  (v58)(v44, v8);
  v45(v38, v8);
  sub_264D817AC(v63, v64, v65);
}

uint64_t sub_264DDA8D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v54 = a4;
  v55 = a3;
  v50 = *(a2 - 8);
  MEMORY[0x28223BE20](a1);
  v8 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_264E24948();
  v49 = sub_264E24508();
  v53 = *(v49 - 8);
  MEMORY[0x28223BE20](v49);
  v10 = &v45 - v9;
  v11 = sub_264E24508();
  v52 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v47 = &v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v51 = &v45 - v14;
  v16 = type metadata accessor for ChartHeaderView(0, a2, a3, v15);
  v17 = *(a1 + v16[13]);
  v18 = *(a1 + v16[12]);
  v46 = a1;
  v21 = sub_264DDAD84(v18, v16, v19, v20);
  v17(v21);

  v48 = a2;
  v22 = v55;
  sub_264DFBAD8(60, a2, v55);
  (*(v50 + 8))(v8, a2);
  v26 = sub_264DDAF38(v16, v23, v24, v25);
  v28 = v27;
  v29 = sub_264DDBAD0(&qword_27FFB1B10, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
  v63[5] = v22;
  v63[6] = v29;
  v30 = v49;
  WitnessTable = swift_getWitnessTable();
  v32 = v47;
  sub_264E1A918(v26, v28, v30);

  (*(v53 + 8))(v10, v30);
  v33 = sub_264DC7180();
  v63[3] = WitnessTable;
  v63[4] = v33;
  v53 = swift_getWitnessTable();
  v34 = v52;
  v35 = *(v52 + 16);
  v36 = v51;
  v35(v51, v32, v11);
  v37 = *(v34 + 8);
  v37(v32, v11);
  v38 = v16[10];
  v39 = v46;
  v40 = *(v46 + v16[9]);
  v42 = type metadata accessor for ChartHeaderView.Model(0, v48, v55, v41);
  v43 = sub_264DD7D70(v40, v39 + v38, v42);
  v35(v32, v36, v11);
  v61 = 0;
  v62 = 1;
  v63[0] = v32;
  v63[1] = &v61;
  v63[2] = &v60;
  v59[0] = v11;
  v59[1] = MEMORY[0x277CE1180];
  v60 = v43;
  v59[2] = &type metadata for DeltaView;
  v56 = v53;
  v57 = MEMORY[0x277CE1170];
  v58 = sub_264DDBB18();
  sub_264DD7BA0(v63, 3uLL, v59);
  v37(v36, v11);
  return (v37)(v32, v11);
}

uint64_t sub_264DDAD84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a2 + 40);
  v7 = *(v4 + *(a2 + 36));
  v8 = type metadata accessor for ChartHeaderView.Model(0, *(a2 + 16), *(a2 + 24), a4);
  result = sub_264DD8268(v7, v4 + v6, a1, v8);
  if (*(v4 + *(v8 + 40)))
  {
    if ((*&v10 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v10 > -9.22337204e18)
    {
      if (v10 < 9.22337204e18)
      {
        sub_264D908C4();
        return sub_264E25348();
      }

      goto LABEL_14;
    }

    __break(1u);
LABEL_14:
    __break(1u);
    return result;
  }

  v11 = v10;
  v12 = [objc_allocWithZone(MEMORY[0x277CCA958]) init];
  [v12 setAllowedUnits_];
  [v12 setUnitsStyle_];
  [v12 setZeroFormattingBehavior_];
  if (v11 <= 3600.0)
  {
    v13 = 1;
  }

  else
  {
    v13 = 2;
  }

  [v12 setMaximumUnitCount_];
  v14 = [v12 stringFromTimeInterval_];
  if (v14)
  {
    v15 = v14;
    v16 = sub_264E25108();

    return v16;
  }

  else
  {

    return 0;
  }
}

uint64_t sub_264DDAF38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a1 + 40);
  v6 = *(v4 + *(a1 + 36));
  v7 = *(v4 + *(a1 + 48));
  type metadata accessor for ChartHeaderView.Model(0, *(a1 + 16), *(a1 + 24), a4);

  return sub_264DD9EA0(v6, v4 + v5, v7);
}

uint64_t sub_264DDAF9C@<X0>(uint64_t a1@<X8>)
{
  sub_264D89EB8();

  v2 = sub_264E24AF8();
  v4 = v3;
  v6 = v5;
  sub_264E249C8();
  v7 = sub_264E24AD8();
  v9 = v8;
  v11 = v10;
  v13 = v12;

  sub_264D817AC(v2, v4, v6 & 1);

  *a1 = v7;
  *(a1 + 8) = v9;
  *(a1 + 16) = v11 & 1;
  *(a1 + 24) = v13;
  return result;
}

void sub_264DDB0D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for ChartHeaderView.Model(319, *(a1 + 16), *(a1 + 24), a4);
  if (v4 <= 0x3F)
  {
    type metadata accessor for STActivityMode(319);
    if (v5 <= 0x3F)
    {
      sub_264E238E8();
      if (v6 <= 0x3F)
      {
        sub_264DDB418();
        if (v7 <= 0x3F)
        {
          sub_264DDB468(319);
          if (v8 <= 0x3F)
          {
            sub_264D812B0();
            if (v9 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

uint64_t sub_264DDB1D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for ChartHeaderView.Model(0, *(a3 + 16), *(a3 + 24), a4);
  v8 = *(v7 - 8);
  if (*(v8 + 84) == a2)
  {
    v9 = v7;
    v10 = *(v8 + 48);
    v11 = a1;
LABEL_5:

    return v10(v11, a2, v9);
  }

  v12 = sub_264E238E8();
  v13 = *(v12 - 8);
  if (*(v13 + 84) == a2)
  {
    v9 = v12;
    v10 = *(v13 + 48);
    v11 = a1 + *(a3 + 40);
    goto LABEL_5;
  }

  v15 = *(a1 + *(a3 + 52));
  if (v15 >= 0xFFFFFFFF)
  {
    LODWORD(v15) = -1;
  }

  return (v15 + 1);
}

uint64_t sub_264DDB2F4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for ChartHeaderView.Model(0, *(a4 + 16), *(a4 + 24), a4);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = sub_264E238E8();
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 52)) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 40);
  }

  return v11(v12, a2, a2, v10);
}

void sub_264DDB418()
{
  if (!qword_27FFB2560)
  {
    v0 = sub_264E25318();
    if (!v1)
    {
      atomic_store(v0, &qword_27FFB2560);
    }
  }
}

void sub_264DDB468(uint64_t a1)
{
  if (!qword_27FFB2568)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_27FFB2570, qword_264E27DA8);
    v1 = sub_264E25318();
    if (!v2)
    {
      atomic_store(v1, &qword_27FFB2568);
    }
  }
}

void sub_264DDB4D4(uint64_t a1)
{
  sub_264E23C38();
  if (v1 <= 0x3F)
  {
    sub_264DDB800(319);
    if (v2 <= 0x3F)
    {
      sub_264DDB89C(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_264DDB58C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_264E23C38();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 36));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1860, &qword_264E267E0);
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 44);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_264DDB6D0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_264E23C38();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 36)) = (a2 - 1);
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1860, &qword_264E267E0);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 44);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

void sub_264DDB800(uint64_t a1)
{
  if (!qword_27FFB25F8)
  {
    sub_264E23AA8();
    sub_264DDBAD0(&qword_27FFB19D0, MEMORY[0x277CC9578], MEMORY[0x277CC9588]);
    v1 = sub_264E25028();
    if (!v2)
    {
      atomic_store(v1, &qword_27FFB25F8);
    }
  }
}

void sub_264DDB89C(uint64_t a1)
{
  if (!qword_27FFB2600)
  {
    sub_264E23AA8();
    v1 = sub_264E25318();
    if (!v2)
    {
      atomic_store(v1, &qword_27FFB2600);
    }
  }
}

uint64_t sub_264DDB8F4(uint64_t *a1)
{
  sub_264E24948();
  sub_264E24508();
  sub_264E24508();
  swift_getTupleTypeMetadata3();
  sub_264E24FA8();
  swift_getWitnessTable();
  sub_264E24E08();
  swift_getTupleTypeMetadata2();
  sub_264E24FA8();
  swift_getWitnessTable();
  sub_264E24E38();

  return swift_getWitnessTable();
}

uint64_t sub_264DDBA14(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_264DDBA5C(uint64_t result, int a2, int a3)
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

uint64_t sub_264DDBAD0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_264DDBB18()
{
  result = qword_27FFB2608;
  if (!qword_27FFB2608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FFB2608);
  }

  return result;
}

unint64_t sub_264DDBB6C()
{
  result = qword_27FFB2618;
  if (!qword_27FFB2618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FFB2618);
  }

  return result;
}

uint64_t sub_264DDBBCC()
{
  if (*(v0 + 16))
  {

    sub_264E25258();
  }

  v1 = OBJC_IVAR____TtC16ScreenTimeUICore13InstalledApps__bundleIdentifiers;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB2648, &qword_264E27F10);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for InstalledApps(uint64_t a1)
{
  result = qword_27FFB2628;
  if (!qword_27FFB2628)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_264DDBD24(uint64_t a1)
{
  sub_264DDBDC8(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_264DDBDC8(uint64_t a1)
{
  if (!qword_27FFB2638)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FFB2640, &qword_264E27EB8);
    v1 = sub_264E24358();
    if (!v2)
    {
      atomic_store(v1, &qword_27FFB2638);
    }
  }
}

uint64_t sub_264DDBE38@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for InstalledApps(0);
  result = sub_264E242E8();
  *a2 = result;
  return result;
}

uint64_t NoActivityView.init(font:background:selectedDeviceModel:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v8 = type metadata accessor for NoActivityView(0);
  v9 = a4 + v8[7];
  sub_264E24D78();
  *v9 = v11;
  *(v9 + 1) = v12;
  *(a4 + v8[8]) = 0x4000000000000000;
  *a4 = a1;
  a4[1] = a2;
  return sub_264DDBF68(a3, a4 + v8[6]);
}

uint64_t type metadata accessor for NoActivityView(uint64_t a1)
{
  result = qword_27FFB2678;
  if (!qword_27FFB2678)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_264DDBF68(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB2650, &qword_264E27F20);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t NoActivityView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for NoActivityView(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = *(v1 + 8);
  v21 = sub_264E24C38();
  v8 = sub_264E24518();
  v9 = sub_264E24998();
  v10 = sub_264E24F58();
  v12 = v11;
  v13 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB2658, &qword_264E27F28) + 36);
  *v13 = sub_264E24818();
  *(v13 + 8) = 0;
  *(v13 + 16) = 1;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB2660, &qword_264E27F30);
  sub_264DDC1AC(v2, v13 + *(v14 + 44));
  sub_264DDCEF0(v2, &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v16 = swift_allocObject();
  sub_264DDCF58(&v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v16 + v15);
  v17 = (v13 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB2668, &qword_264E27F38) + 36));
  *v17 = sub_264DDCFBC;
  v17[1] = v16;
  v17[2] = 0;
  v17[3] = 0;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB2670, &qword_264E27F40);
  v19 = (v13 + *(result + 36));
  *v19 = v10;
  v19[1] = v12;
  *a1 = v21;
  *(a1 + 8) = v8;
  *(a1 + 16) = v9;
  return result;
}

uint64_t sub_264DDC1AC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB26E8, &qword_264E27FD8);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v24 - v8;
  sub_264DDC508(&v36);
  v27 = *(&v36 + 1);
  v28 = v36;
  v10 = v37;
  v26 = *(&v37 + 1);
  v11 = *a1;
  KeyPath = swift_getKeyPath();
  v12 = swift_getKeyPath();
  LOBYTE(v36) = v10;
  v13 = objc_opt_self();

  v14 = [v13 systemGrayColor];
  v15 = sub_264E24C38();
  v16 = swift_getKeyPath();
  v43 = 1;
  v17 = a1 + *(type metadata accessor for NoActivityView(0) + 28);
  v18 = *v17;
  v19 = *(v17 + 1);
  LOBYTE(v36) = v18;
  *(&v36 + 1) = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB26E0, &qword_264E27FD0);
  sub_264E24D88();
  v20 = 1.0;
  if (v29)
  {
    v20 = 0.0;
  }

  *&v29 = v28;
  *(&v29 + 1) = v27;
  LOBYTE(v30) = v10;
  *(&v30 + 1) = v26;
  *&v31 = KeyPath;
  *(&v31 + 1) = v11;
  *&v32 = v12;
  BYTE8(v32) = 1;
  *&v33 = v15;
  *(&v33 + 1) = v16;
  *&v34 = 0;
  BYTE8(v34) = 1;
  v35 = v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB26F0, &qword_264E28070);
  sub_264DDD9F8();
  sub_264E24C08();
  v40 = v33;
  v41 = v34;
  v42 = v35;
  v36 = v29;
  v37 = v30;
  v38 = v31;
  v39 = v32;
  sub_264D817BC(&v36, &qword_27FFB26F0, &qword_264E28070);
  sub_264D81744(v9, v6, &qword_27FFB26E8, &qword_264E27FD8);
  *a2 = 0;
  *(a2 + 8) = 1;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB2740, &qword_264E280A8);
  sub_264D81744(v6, a2 + *(v21 + 48), &qword_27FFB26E8, &qword_264E27FD8);
  v22 = a2 + *(v21 + 64);
  *v22 = 0;
  *(v22 + 8) = 1;
  sub_264D817BC(v9, &qword_27FFB26E8, &qword_264E27FD8);
  return sub_264D817BC(v6, &qword_27FFB26E8, &qword_264E27FD8);
}

uint64_t sub_264DDC508@<X0>(uint64_t *a1@<X8>)
{
  v41 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB2650, &qword_264E27F20);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v39 - v3;
  v5 = sub_264E23E98();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v39 - v10;
  sub_264E247D8();
  v40 = objc_opt_self();
  v12 = [v40 bundle];
  v13 = sub_264E24AE8();
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v20 = type metadata accessor for NoActivityView(0);
  sub_264D81744(v1 + *(v20 + 24), v4, &qword_27FFB2650, &qword_264E27F20);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    result = sub_264D817BC(v4, &qword_27FFB2650, &qword_264E27F20);
  }

  else
  {
    (*(v6 + 32))(v11, v4, v5);
    (*(v6 + 16))(v8, v11, v5);
    v22 = (*(v6 + 88))(v8, v5);
    if (v22 == *MEMORY[0x277CC5800] || v22 == *MEMORY[0x277CC57D8])
    {
      result = (*(v6 + 8))(v11, v5);
    }

    else
    {
      v23 = *MEMORY[0x277CC57F8];
      v39 = v11;
      if (v22 == v23 || v22 == *MEMORY[0x277CC57F0] || v22 == *MEMORY[0x277CC57E8])
      {
        sub_264E247D8();
        v24 = v13;
        v25 = [v40 bundle];
        v13 = sub_264E24AE8();
        v27 = v26;
        v28 = v17;
        v17 = v29;
        v19 = v30;
        sub_264D817AC(v24, v15, v28 & 1);
      }

      else
      {
        v32 = v13;
        if (v22 != *MEMORY[0x277CC57E0])
        {
          v38 = *(v6 + 8);
          v38(v11, v5);
          result = (v38)(v8, v5);
          goto LABEL_12;
        }

        sub_264E247D8();
        v33 = [v40 bundle];
        v13 = sub_264E24AE8();
        v27 = v34;
        v35 = v17;
        v17 = v36;
        v19 = v37;
        sub_264D817AC(v32, v15, v35 & 1);
      }

      result = (*(v6 + 8))(v39, v5);
      v15 = v27;
    }
  }

LABEL_12:
  v31 = v41;
  *v41 = v13;
  v31[1] = v15;
  *(v31 + 16) = v17 & 1;
  v31[3] = v19;
  return result;
}

uint64_t sub_264DDCAAC(uint64_t a1)
{
  v25 = a1;
  v27 = sub_264E24FC8();
  v30 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v2 = &v23 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_264E24FE8();
  v28 = *(v3 - 8);
  v29 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for NoActivityView(0);
  v23 = *(v6 - 8);
  v7 = *(v23 + 64);
  MEMORY[0x28223BE20](v6);
  v8 = sub_264E25008();
  v26 = v8;
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v23 - v13;
  sub_264DDD6B0(0, &qword_27FFB26C0, 0x277D85C78);
  v24 = sub_264E252E8();
  sub_264E24FF8();
  v15 = v25;
  sub_264E25018();
  v16 = *(v9 + 8);
  v16(v11, v8);
  sub_264DDCEF0(v15, &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = (*(v23 + 80) + 16) & ~*(v23 + 80);
  v18 = swift_allocObject();
  sub_264DDCF58(&v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v18 + v17);
  aBlock[4] = sub_264DDD844;
  aBlock[5] = v18;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_264DDD060;
  aBlock[3] = &block_descriptor;
  v19 = _Block_copy(aBlock);

  sub_264E24FD8();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_264DDD8E8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB26D0, &qword_264E27FC8);
  sub_264D81DCC(&qword_27FFB26D8, &qword_27FFB26D0, &qword_264E27FC8, MEMORY[0x277D83970]);
  v20 = v27;
  sub_264E25358();
  v21 = v24;
  MEMORY[0x26674F420](v14, v5, v2, v19);
  _Block_release(v19);

  (*(v30 + 8))(v2, v20);
  (*(v28 + 8))(v5, v29);
  return (v16)(v14, v26);
}

uint64_t sub_264DDCEF0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NoActivityView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_264DDCF58(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NoActivityView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_264DDCFF0(uint64_t a1)
{
  type metadata accessor for NoActivityView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB26E0, &qword_264E27FD0);
  return sub_264E24D98();
}

double sub_264DDD060(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);

  return result;
}

uint64_t sub_264DDD0A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = *(a1 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](a1 - 8);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v2 + 8);
  v22 = sub_264E24C38();
  v9 = sub_264E24518();
  v10 = sub_264E24998();
  v11 = sub_264E24F58();
  v13 = v12;
  v14 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB2658, &qword_264E27F28) + 36);
  *v14 = sub_264E24818();
  *(v14 + 8) = 0;
  *(v14 + 16) = 1;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB2660, &qword_264E27F30);
  sub_264DDC1AC(v3, v14 + *(v15 + 44));
  sub_264DDCEF0(v3, v7);
  v16 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v17 = swift_allocObject();
  sub_264DDCF58(v7, v17 + v16);
  v18 = (v14 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB2668, &qword_264E27F38) + 36));
  *v18 = sub_264DDDD68;
  v18[1] = v17;
  v18[2] = 0;
  v18[3] = 0;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB2670, &qword_264E27F40);
  v20 = (v14 + *(result + 36));
  *v20 = v11;
  v20[1] = v13;
  *a2 = v22;
  *(a2 + 8) = v9;
  *(a2 + 16) = v10;
  return result;
}

uint64_t sub_264DDD284(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB2650, &qword_264E27F20);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

void *sub_264DDD354(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB2650, &qword_264E27F20);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_264DDD404(uint64_t a1, __n128 a2)
{
  sub_264DDD6B0(319, &qword_27FFB2688, 0x277D75348);
  if (v3 <= 0x3F)
  {
    sub_264DDD4C8(319, v2);
    if (v4 <= 0x3F)
    {
      sub_264DDD520();
      if (v5 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_264DDD4C8(uint64_t a1, __n128 a2)
{
  if (!qword_27FFB2690)
  {
    sub_264E23E98();
    v2 = sub_264E25318();
    if (!v3)
    {
      atomic_store(v2, &qword_27FFB2690);
    }
  }
}

void sub_264DDD520()
{
  if (!qword_27FFB2698)
  {
    v0 = sub_264E24DB8();
    if (!v1)
    {
      atomic_store(v0, &qword_27FFB2698);
    }
  }
}

unint64_t sub_264DDD574()
{
  result = qword_27FFB26A0;
  if (!qword_27FFB26A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FFB2658, &qword_264E27F28);
    sub_264DDD62C();
    sub_264D81DCC(&qword_27FFB26B8, &qword_27FFB2670, &qword_264E27F40, MEMORY[0x277CDFC88]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FFB26A0);
  }

  return result;
}

unint64_t sub_264DDD62C()
{
  result = qword_27FFB26A8;
  if (!qword_27FFB26A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FFB26B0, &qword_264E27FC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FFB26A8);
  }

  return result;
}

uint64_t sub_264DDD6B0(uint64_t a1, unint64_t *a2, void *a3)
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

uint64_t objectdestroyTm_3()
{
  v1 = type metadata accessor for NoActivityView(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);

  v5 = *(v1 + 24);
  v6 = sub_264E23E98();
  v7 = *(v6 - 8);
  if (!(*(v7 + 48))(v0 + v3 + v5, 1, v6))
  {
    (*(v7 + 8))(v0 + v3 + v5, v6);
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_264DDD85C(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for NoActivityView(0) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_264DDD8E8()
{
  result = qword_27FFB26C8;
  if (!qword_27FFB26C8)
  {
    sub_264E24FC8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FFB26C8);
  }

  return result;
}

uint64_t sub_264DDD940@<X0>(_BYTE *a1@<X8>)
{
  result = sub_264E246D8();
  *a1 = result;
  return result;
}

uint64_t sub_264DDD99C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_264E246D8();
  *a1 = result;
  return result;
}

unint64_t sub_264DDD9F8()
{
  result = qword_27FFB26F8;
  if (!qword_27FFB26F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FFB26F0, &qword_264E28070);
    sub_264DDDA84();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FFB26F8);
  }

  return result;
}

unint64_t sub_264DDDA84()
{
  result = qword_27FFB2700;
  if (!qword_27FFB2700)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FFB2708, &qword_264E28078);
    sub_264DDDB3C();
    sub_264D81DCC(&qword_27FFB1838, &qword_27FFB1840, &qword_264E280A0, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FFB2700);
  }

  return result;
}

unint64_t sub_264DDDB3C()
{
  result = qword_27FFB2710;
  if (!qword_27FFB2710)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FFB2718, &qword_264E28080);
    sub_264DDDBF4();
    sub_264D81DCC(&qword_27FFB24D0, qword_27FFB24D8, &qword_264E27D18, MEMORY[0x277CE0740]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FFB2710);
  }

  return result;
}

unint64_t sub_264DDDBF4()
{
  result = qword_27FFB2720;
  if (!qword_27FFB2720)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FFB2728, &qword_264E28088);
    sub_264DDDCAC();
    sub_264D81DCC(&qword_27FFB1848, &qword_27FFB1850, &unk_264E261D0, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FFB2720);
  }

  return result;
}

unint64_t sub_264DDDCAC()
{
  result = qword_27FFB2730;
  if (!qword_27FFB2730)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FFB2738, &unk_264E28090);
    sub_264D81DCC(&qword_27FFB17F0, &qword_27FFB17F8, &qword_264E28590, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FFB2730);
  }

  return result;
}

uint64_t AllActivityView.Model.init(calendar:)@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v126 = a1;
  v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1D90, &unk_264E268E0) - 8;
  MEMORY[0x28223BE20](v122);
  v129 = &v113 - v3;
  v4 = sub_264E23C38();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v135 = &v113 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v128 = &v113 - v8;
  MEMORY[0x28223BE20](v9);
  v11 = &v113 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1860, &qword_264E267E0);
  MEMORY[0x28223BE20](v12 - 8);
  v116 = &v113 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v127 = &v113 - v15;
  MEMORY[0x28223BE20](v16);
  v115 = &v113 - v17;
  MEMORY[0x28223BE20](v18);
  v20 = &v113 - v19;
  v21 = type metadata accessor for AllActivityView.Model(0);
  v22 = v21[5];
  v131 = type metadata accessor for ScreenTimeAppInfoCache();
  *(a2 + v22) = swift_allocObject();
  v23 = v21[6];
  v130 = type metadata accessor for ScreenTimeAppIconCache();
  *(a2 + v23) = swift_allocObject();
  v132 = v21;
  v24 = v21[7];
  v125 = a2;
  v25 = a2 + v24;
  v26 = sub_264E23AA8();
  v114 = *(v26 - 8);
  v28 = v114 + 56;
  v27 = *(v114 + 56);
  v27(v20, 1, 1, v26);
  v29 = MEMORY[0x277D84F90];
  v113 = sub_264DEB44C(MEMORY[0x277D84F90]);
  sub_264E23BF8();
  v30 = *(type metadata accessor for UsageHeaderView.Model(0) + 20);
  v133 = v5;
  v31 = v5 + 16;
  v32 = *(v5 + 16);
  v120 = v25;
  v32(v25 + v30, v11, v4);
  v33 = v128;
  v121 = v11;
  v34 = v11;
  v35 = v4;
  v32(v128, v34, v4);
  v117 = v20;
  v36 = v115;
  sub_264D81744(v20, v115, &qword_27FFB1860, &qword_264E267E0);
  v37 = v129;
  v134 = v35;
  v123 = v32;
  v124 = v31;
  v32(v129, v33, v35);
  v38 = v122;
  v39 = *(v122 + 44);
  sub_264DEB44C(v29);
  v40 = *(v38 + 52);
  v118 = v27;
  v119 = v28;
  v27(&v37[v40], 1, 1, v26);
  v41 = v114;

  v37[*(v38 + 48)] = 0;
  *&v37[v39] = v113;
  v42 = v116;
  sub_264D81744(v36, v116, &qword_27FFB1860, &qword_264E267E0);
  v43 = *(v41 + 48);
  if (v43(v42, 1, v26) == 1)
  {
    sub_264E23A98();
    sub_264D817BC(v36, &qword_27FFB1860, &qword_264E267E0);
    v44 = v134;
    v45 = v133 + 8;
    v46 = *(v133 + 8);
    v46(v128, v134);
    v46(v121, v44);
    sub_264D817BC(v117, &qword_27FFB1860, &qword_264E267E0);
    v47 = v43(v42, 1, v26);
    v122 = v45 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    if (v47 != 1)
    {
      sub_264D817BC(v42, &qword_27FFB1860, &qword_264E267E0);
    }

    v48 = v127;
  }

  else
  {
    sub_264D817BC(v36, &qword_27FFB1860, &qword_264E267E0);
    v49 = v134;
    v50 = *(v133 + 8);
    v122 = (v133 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v50(v128, v134);
    v50(v121, v49);
    sub_264D817BC(v117, &qword_27FFB1860, &qword_264E267E0);
    v48 = v127;
    (*(v41 + 32))(v127, v42, v26);
  }

  v118(v48, 0, 1, v26);
  v51 = v129;
  sub_264DEB634(v48, &v129[v40]);
  sub_264D90E64(v51, v120, &qword_27FFB1D90, &unk_264E268E0);
  v52 = v132;
  v53 = v125;
  v54 = (v125 + v132[10]);
  v55 = type metadata accessor for CategoriesLegendView.Model(0);
  sub_264E23BF8();
  v56 = MEMORY[0x277D84F90];
  *v54 = sub_264DEB44C(MEMORY[0x277D84F90]);
  v54[1] = sub_264DEB6A4(v56);
  v54[2] = sub_264DEB6A4(v56);
  v54[3] = 0;
  *(v54 + *(v55 + 36)) = 0;
  v57 = (v53 + v52[11]);
  v58 = sub_264DEB88C(v56);
  type metadata accessor for UsageChartFooterView.Model(0);
  sub_264E23BF8();
  *v57 = v58;
  v59 = (v53 + v52[12]);
  v60 = v131;
  v61 = swift_allocObject();
  v59[5] = v60;
  v59[6] = &off_2876A38A8;
  v59[2] = v61;
  v62 = v130;
  v63 = swift_allocObject();
  v59[10] = v62;
  v59[11] = &off_2876A3880;
  v59[7] = v63;
  v129 = sub_264DEB26C(v56, &qword_27FFB2AA8, &unk_264E28648, &qword_27FFB1EF0, &qword_264E26CA0);
  v128 = sub_264DEB26C(v56, &qword_27FFB2AA8, &unk_264E28648, &qword_27FFB1EF0, &qword_264E26CA0);
  sub_264DEB26C(v56, &qword_27FFB2AA8, &unk_264E28648, &qword_27FFB1EF0, &qword_264E26CA0);
  sub_264DEB26C(v56, &qword_27FFB2AA8, &unk_264E28648, &qword_27FFB1EF0, &qword_264E26CA0);

  v64 = v129;
  *v59 = v128;
  v59[1] = v64;
  v65 = v132;
  v66 = (v53 + v132[13]);
  v67 = swift_allocObject();
  v66[5] = v60;
  v66[6] = &off_2876A38A8;
  v66[2] = v67;
  v68 = swift_allocObject();
  v66[10] = v62;
  v66[11] = &off_2876A3880;
  v66[7] = v68;
  v69 = MEMORY[0x277D84F90];
  v70 = sub_264DEB26C(MEMORY[0x277D84F90], &qword_27FFB2AA8, &unk_264E28648, &qword_27FFB1EF0, &qword_264E26CA0);
  v71 = sub_264DEB26C(v69, &qword_27FFB2AA8, &unk_264E28648, &qword_27FFB1EF0, &qword_264E26CA0);
  sub_264DEB26C(v69, &qword_27FFB2AA8, &unk_264E28648, &qword_27FFB1EF0, &qword_264E26CA0);
  sub_264DEB26C(v69, &qword_27FFB2AA8, &unk_264E28648, &qword_27FFB1EF0, &qword_264E26CA0);

  *v66 = v71;
  v66[1] = v70;
  v72 = v65[14];
  v73 = v135;
  sub_264E23BF8();
  PickupsHeaderView.Model.init(calendar:)(v73, v53 + v72);
  v74 = (v53 + v65[15]);
  type metadata accessor for PickupsOverviewTabView.Model(0);
  sub_264E23BF8();
  v75 = MEMORY[0x277D84F90];
  *v74 = MEMORY[0x277D84F90];
  v76 = (v53 + v65[16]);
  type metadata accessor for PickupsDetailTabView.Model(0);
  sub_264E23BF8();
  *v76 = v75;
  v77 = v53 + v65[17];
  sub_264E23BF8();
  v78 = *(type metadata accessor for PickupsOverviewLegendView.Model(0) + 20);
  *(v77 + v78) = sub_264DEBA74(v75);
  v79 = v53 + v65[18];
  sub_264E23BF8();
  v80 = *(type metadata accessor for PickupsDetailLegendView.Model(0) + 20);
  *(v79 + v80) = sub_264DEBC5C(v75);
  v81 = (v53 + v65[19]);
  v82 = v131;
  v83 = swift_allocObject();
  v81[4] = v82;
  v81[5] = &off_2876A38A8;
  v81[1] = v83;
  v84 = v130;
  v85 = swift_allocObject();
  v81[9] = v84;
  v81[10] = &off_2876A3880;
  v81[6] = v85;
  v86 = MEMORY[0x277D84F90];
  *v81 = sub_264DEB26C(MEMORY[0x277D84F90], &qword_27FFB2A90, &unk_264E28618, &qword_27FFB1EE0, &qword_264E26C90);
  v87 = (v53 + v65[20]);
  v88 = swift_allocObject();
  v87[4] = v82;
  v87[5] = &off_2876A38A8;
  v87[1] = v88;
  v89 = swift_allocObject();
  v87[9] = v84;
  v87[10] = &off_2876A3880;
  v87[6] = v89;
  v90 = v86;
  *v87 = sub_264DEB26C(v86, &qword_27FFB2A90, &unk_264E28618, &qword_27FFB1EE0, &qword_264E26C90);
  v91 = v65[21];
  v92 = v135;
  sub_264E23BF8();
  NotificationsHeaderView.Model.init(calendar:)(v92, v53 + v91);
  v93 = (v53 + v65[22]);
  type metadata accessor for NotificationsOverviewTabView.Model(0);
  sub_264E23BF8();
  *v93 = v90;
  v94 = (v53 + v65[23]);
  type metadata accessor for NotificationsDetailTabView.Model(0);
  sub_264E23BF8();
  *v94 = v90;
  v95 = (v53 + v65[24]);
  v96 = swift_allocObject();
  v95[4] = v82;
  v95[5] = &off_2876A38A8;
  v95[1] = v96;
  v97 = swift_allocObject();
  v95[9] = v84;
  v95[10] = &off_2876A3880;
  v95[6] = v97;
  *v95 = sub_264DEB26C(v90, &qword_27FFB2A88, &qword_264E28608, &qword_27FFB1ED0, &qword_264E28610);
  v98 = (v53 + v65[25]);
  v99 = swift_allocObject();
  v98[4] = v82;
  v98[5] = &off_2876A38A8;
  v98[1] = v99;
  v100 = swift_allocObject();
  v98[9] = v84;
  v98[10] = &off_2876A3880;
  v98[6] = v100;
  *v98 = sub_264DEB26C(v90, &qword_27FFB2A88, &qword_264E28608, &qword_27FFB1ED0, &qword_264E28610);
  v101 = v65[26];
  v102 = sub_264E238E8();
  (*(*(v102 - 8) + 56))(v53 + v101, 1, 1, v102);
  v103 = v126;
  v104 = v134;
  v105 = v123;
  v123(v53, v126, v134);
  v106 = (v53 + v65[8]);
  v107 = type metadata accessor for UsageOverviewTabView.Model(0);
  v105(v106 + *(v107 + 20), v103, v104);
  *v106 = v90;
  v108 = v135;
  v105(v135, v103, v104);
  v109 = (v53 + v65[9]);
  v110 = type metadata accessor for UsageDetailTabView.Model(0);
  v105(v109 + *(v110 + 20), v108, v104);
  v111 = *(v133 + 8);
  v111(v103, v104);
  result = (v111)(v108, v104);
  *v109 = v90;
  return result;
}

uint64_t sub_264DDE9C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1E60, &qword_264E26A80);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v25 - v10;
  sub_264D81744(a3, v25 - v10, &qword_27FFB1E60, &qword_264E26A80);
  v12 = sub_264E25248();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_264D817BC(v11, &qword_27FFB1E60, &qword_264E26A80);
  }

  else
  {
    sub_264E25238();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_264E25208();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_264E25158() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB28D0, &qword_264E28420);
      v21 = (v18 | v16);
      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v22 = swift_task_create();

      sub_264D817BC(a3, &qword_27FFB1E60, &qword_264E26A80);

      return v22;
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

  sub_264D817BC(a3, &qword_27FFB1E60, &qword_264E26A80);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB28D0, &qword_264E28420);
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_264DDECDC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v52 = a1;
  v46 = sub_264E23AA8();
  v50 = *(v46 - 8);
  MEMORY[0x28223BE20](v46);
  v48 = v44 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v47 = v44 - v5;
  MEMORY[0x28223BE20](v6);
  v49 = v44 - v7;
  MEMORY[0x28223BE20](v8);
  v10 = v44 - v9;
  MEMORY[0x28223BE20](v11);
  v13 = v44 - v12;
  MEMORY[0x28223BE20](v14);
  v51 = v44 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1880, &qword_264E26220);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = v44 - v17;
  v19 = sub_264E238E8();
  v20 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v22 = v44 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v25 = v44 - v24;
  sub_264E23D98();
  sub_264D81744(v52, v18, &qword_27FFB1880, &qword_264E26220);
  if ((*(v20 + 48))(v18, 1, v19) == 1)
  {
    sub_264D817BC(v18, &qword_27FFB1880, &qword_264E26220);
    (*(v20 + 32))(a2, v25, v19);
  }

  else
  {
    v26 = *(v20 + 32);
    v45 = v22;
    v26(v22, v18, v19);
    _s16ScreenTimeUICore11DetailChartV4HourV2id10Foundation4DateVvg_0();
    _s16ScreenTimeUICore11DetailChartV4HourV2id10Foundation4DateVvg_0();
    v44[1] = sub_264DEC2DC(&qword_27FFB1BF0, MEMORY[0x277CC9578], MEMORY[0x277CC9590]);
    v27 = v46;
    v28 = sub_264E25048();
    v52 = a2;
    v29 = v50;
    v30 = *(v50 + 8);
    v44[0] = v30;
    v31 = (v28 & 1) == 0;
    if (v28)
    {
      v32 = v13;
    }

    else
    {
      v32 = v10;
    }

    if (v31)
    {
      v33 = v13;
    }

    else
    {
      v33 = v10;
    }

    v30(v32, v27);
    v34 = *(v29 + 32);
    v34(v51, v33, v27);
    v35 = v47;
    sub_264E23888();
    v36 = v48;
    sub_264E23888();
    v37 = sub_264E25058();
    v38 = (v37 & 1) == 0;
    if (v37)
    {
      v39 = v35;
    }

    else
    {
      v39 = v36;
    }

    if (v38)
    {
      v40 = v35;
    }

    else
    {
      v40 = v36;
    }

    (v44[0])(v39, v27);
    v41 = v52;
    v34(v49, v40, v27);
    a2 = v41;
    sub_264E23898();
    v42 = *(v20 + 8);
    v42(v45, v19);
    v42(v25, v19);
  }

  return (*(v20 + 56))(a2, 0, 1, v19);
}

uint64_t sub_264DDF17C()
{
  v0 = sub_264E23C38();
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v15 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_264E23AA8();
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for ModelProvider(0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v15 - v10;
  _s16ScreenTimeUICore13ModelProviderVACycfC_0();
  sub_264E23A98();
  sub_264E23BF8();
  type metadata accessor for AllActivityView.Manager(0);
  v12 = swift_allocObject();
  sub_264DED884(v11, v8, type metadata accessor for ModelProvider);
  v13 = sub_264DEA5B8(v8, v5, 4, v2, v12);
  sub_264DED9C0(v11, type metadata accessor for ModelProvider);
  return v13;
}

uint64_t AllActivityView.init(bridge:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = sub_264DDF17C;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v4 = *(type metadata accessor for AllActivityView(0) + 24);
  v5 = type metadata accessor for AllActivityView.UnitTestOverrides(0);
  result = (*(*(v5 - 8) + 56))(a2 + v4, 1, 1, v5);
  *(a2 + 24) = a1;
  return result;
}

uint64_t AllActivityView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for AllActivityView(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v11 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB2748, &qword_264E280D0);
  sub_264DEBEC0();
  sub_264E24A98();
  sub_264DED884(v1, &v10[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)], type metadata accessor for AllActivityView);
  v6 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v7 = swift_allocObject();
  sub_264DED774(&v10[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)], v7 + v6, type metadata accessor for AllActivityView);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB2768, &qword_264E280E8);
  v9 = (a1 + *(result + 36));
  *v9 = sub_264DEBF84;
  v9[1] = v7;
  v9[2] = 0;
  v9[3] = 0;
  return result;
}

uint64_t sub_264DDF544@<X0>(uint64_t (*a1)(uint64_t a1)@<X0>, uint64_t a2@<X8>)
{
  v121 = a2;
  v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB2760, &unk_264E280D8);
  MEMORY[0x28223BE20](v120);
  v110 = v97 - v3;
  v128 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB28F0, &qword_264E28450);
  v132 = *(v128 - 8);
  MEMORY[0x28223BE20](v128);
  v109 = v97 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v119 = v97 - v6;
  v127 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB28F8, &qword_264E28458);
  v131 = *(v127 - 8);
  MEMORY[0x28223BE20](v127);
  v116 = v97 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v126 = v97 - v9;
  v10 = type metadata accessor for ActivityNavigationState(0);
  MEMORY[0x28223BE20](v10 - 8);
  v106 = v97 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v107 = type metadata accessor for MostUsedListSectionAppsAndCategories(0);
  MEMORY[0x28223BE20](v107);
  v114 = v97 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v108 = v97 - v14;
  MEMORY[0x28223BE20](v15);
  v125 = v97 - v16;
  UpdatedView = type metadata accessor for LastUpdatedView(0);
  MEMORY[0x28223BE20](UpdatedView);
  v103 = v97 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB2900, &qword_264E28460);
  MEMORY[0x28223BE20](v102);
  v101 = (v97 - v18);
  v124 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB2908, &qword_264E28468);
  v130 = *(v124 - 8);
  MEMORY[0x28223BE20](v124);
  v113 = v97 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v123 = v97 - v21;
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1F70, &qword_264E28470);
  MEMORY[0x28223BE20](v105);
  v98 = v97 - v22;
  v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB2910, &qword_264E28478);
  MEMORY[0x28223BE20](v115);
  v118 = v97 - v23;
  v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1E90, &unk_264E26F50);
  MEMORY[0x28223BE20](v117);
  v25 = v97 - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB2830, &qword_264E282B0);
  MEMORY[0x28223BE20](v26 - 8);
  v28 = v97 - v27;
  v29 = type metadata accessor for AllActivityView.Model(0);
  v30 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v129 = v97 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = *(a1 + 1);
  v122 = a1;
  LODWORD(a1) = *(a1 + 16);
  v33 = type metadata accessor for AllActivityView.Manager(0);
  v34 = sub_264DEC2DC(&qword_27FFB27B0, type metadata accessor for AllActivityView.Manager, &unk_264E282F4);
  v99 = v32;
  LODWORD(v112) = a1;
  v111 = v33;
  v35 = v34;
  sub_264E24448();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264E24338();

  v36 = *(v30 + 48);
  v100 = v29;
  if (v36(v28, 1, v29) == 1)
  {
    sub_264D817BC(v28, &qword_27FFB2830, &qword_264E282B0);
    sub_264E247D8();
    v37 = sub_264E24AE8();
    v39 = v38;
    *&v147 = v37;
    *(&v147 + 1) = v38;
    v41 = v40 & 1;
    LOBYTE(v148) = v40 & 1;
    *(&v148 + 1) = v42;
    sub_264E24C08();
    sub_264D817AC(v37, v39, v41);

    sub_264D81744(v25, v118, &qword_27FFB1E90, &unk_264E26F50);
    swift_storeEnumTagMultiPayload();
    sub_264D81DCC(&qword_27FFB2758, &qword_27FFB2760, &unk_264E280D8, MEMORY[0x277CE14C0]);
    sub_264D9CE9C();
    sub_264E24858();
    return sub_264D817BC(v25, &qword_27FFB1E90, &unk_264E26F50);
  }

  else
  {
    sub_264DED774(v28, v129, type metadata accessor for AllActivityView.Model);
    v97[2] = v35;
    sub_264E24458();
    swift_getKeyPath();
    v44 = v98;
    sub_264E244F8();

    swift_getKeyPath();
    sub_264E24E68();

    v45 = sub_264D817BC(v44, &qword_27FFB1F70, &qword_264E28470);
    v97[1] = v97;
    v153 = v147;
    *&v154 = v148;
    *(&v154 + 1) = nullsub_1;
    v155 = 0u;
    v156 = 0u;
    *&v157 = 0;
    *(&v157 + 1) = nullsub_1;
    v158 = 0;
    MEMORY[0x28223BE20](v45);
    v46 = sub_264E24778();
    v47 = v101;
    *v101 = v46;
    v47[1] = 0;
    *(v47 + 16) = 1;
    v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB2918, &qword_264E284A0);
    sub_264DE1B40(v47 + *(v48 + 44));
    v49 = v103;
    sub_264E23A98();
    v50 = sub_264E23AA8();
    (*(*(v50 - 8) + 56))(v49, 0, 1, v50);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB2920, &qword_264E284A8);
    v98 = MEMORY[0x277CE1138];
    sub_264D81DCC(&qword_27FFB2928, &qword_27FFB2900, &qword_264E28460, MEMORY[0x277CE1138]);
    v105 = MEMORY[0x277CE14C0];
    sub_264D81DCC(&qword_27FFB2930, &qword_27FFB2920, &qword_264E284A8, MEMORY[0x277CE14C0]);
    sub_264DEC2DC(&qword_27FFB2938, type metadata accessor for LastUpdatedView, &protocol conformance descriptor for LastUpdatedView);
    sub_264E24F28();
    sub_264E24448();
    swift_getKeyPath();
    swift_getKeyPath();
    v51 = v106;
    sub_264E24338();

    v52 = *v51;
    sub_264DED9C0(v51, type metadata accessor for ActivityNavigationState);
    v53 = 52;
    if (v52 == 1)
    {
      v53 = 48;
    }

    sub_264DEE7E4(v129 + *(v100 + v53), &v147);
    sub_264E24448();
    swift_getKeyPath();
    swift_getKeyPath();
    sub_264E24338();

    v55 = v107;
    v54 = v108;
    sub_264D91F38(&v108[*(v107 + 20)]);
    sub_264DED9C0(v51, type metadata accessor for ActivityNavigationState);
    v56 = v150;
    v54[2] = v149;
    v54[3] = v56;
    v57 = v152;
    v54[4] = v151;
    v54[5] = v57;
    v58 = v148;
    *v54 = v147;
    v54[1] = v58;
    v59 = v54 + *(v55 + 24);
    LOBYTE(v139[0]) = 0;
    sub_264E24D78();
    v60 = *(&v141 + 1);
    *v59 = v141;
    *(v59 + 1) = v60;
    v61 = sub_264DED774(v54, v125, type metadata accessor for MostUsedListSectionAppsAndCategories);
    v112 = v97;
    MEMORY[0x28223BE20](v61);
    v62 = sub_264E24778();
    sub_264E247D8();
    v63 = objc_opt_self();
    v64 = [v63 bundle];
    v65 = sub_264E24AE8();
    v141 = v62;
    LOBYTE(v142) = 1;
    *(&v142 + 1) = v65;
    *&v143 = v66;
    BYTE8(v143) = v67 & 1;
    *&v144 = v68;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB2940, &qword_264E284B0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB2948, &qword_264E284B8);
    sub_264D81DCC(&qword_27FFB2950, &qword_27FFB2940, &qword_264E284B0, v98);
    sub_264D81DCC(&qword_27FFB2958, &qword_27FFB2948, &qword_264E284B8, v105);
    v69 = sub_264E24F18();
    v112 = v97;
    MEMORY[0x28223BE20](v69);
    v70 = sub_264E24778();
    sub_264E247D8();
    v71 = [v63 bundle];
    v72 = sub_264E24AE8();
    v141 = v70;
    LOBYTE(v142) = 1;
    *(&v142 + 1) = v72;
    *&v143 = v73;
    BYTE8(v143) = v74 & 1;
    *&v144 = v75;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB2960, &qword_264E284C0);
    sub_264D81DCC(&qword_27FFB2968, &qword_27FFB2960, &qword_264E284C0, MEMORY[0x277CE1198]);
    v76 = v119;
    sub_264E24F18();
    v77 = v113;
    v135 = v155;
    v136 = v156;
    v137 = v157;
    v138 = v158;
    v133 = v153;
    v134 = v154;
    v78 = *(v130 + 16);
    v78(v113, v123, v124);
    v122 = type metadata accessor for MostUsedListSectionAppsAndCategories;
    v79 = v114;
    sub_264DED884(v125, v114, type metadata accessor for MostUsedListSectionAppsAndCategories);
    v112 = *(v131 + 16);
    v112(v116, v126, v127);
    v111 = *(v132 + 16);
    v80 = v109;
    v111(v109, v76, v128);
    v81 = v136;
    v139[2] = v135;
    v139[3] = v136;
    v82 = v137;
    v139[4] = v137;
    v83 = v138;
    v140 = v138;
    v84 = v133;
    v85 = v134;
    v139[0] = v133;
    v139[1] = v134;
    v86 = v110;
    *(v110 + 2) = v135;
    *(v86 + 48) = v81;
    *(v86 + 64) = v82;
    *(v86 + 80) = v83;
    *v86 = v84;
    *(v86 + 16) = v85;
    v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB2970, &qword_264E284C8);
    v88 = v77;
    v89 = v124;
    v78((v86 + v87[12]), v88, v124);
    sub_264DED884(v79, v86 + v87[16], v122);
    v90 = v116;
    v91 = v127;
    v112((v86 + v87[20]), v116, v127);
    v92 = v86 + v87[24];
    v93 = v128;
    v111(v92, v80, v128);
    sub_264D81744(&v153, &v141, &qword_27FFB2978, &qword_264E284D0);
    sub_264D81744(v139, &v141, &qword_27FFB2978, &qword_264E284D0);
    v94 = *(v132 + 8);
    v132 += 8;
    v122 = v94;
    (v94)(v80, v93);
    v95 = *(v131 + 8);
    v131 += 8;
    v95(v90, v91);
    sub_264DED9C0(v114, type metadata accessor for MostUsedListSectionAppsAndCategories);
    v96 = *(v130 + 8);
    v130 += 8;
    v96(v113, v89);
    v143 = v135;
    v144 = v136;
    v145 = v137;
    v146 = v138;
    v141 = v133;
    v142 = v134;
    sub_264D817BC(&v141, &qword_27FFB2978, &qword_264E284D0);
    sub_264D81744(v86, v118, &qword_27FFB2760, &unk_264E280D8);
    swift_storeEnumTagMultiPayload();
    sub_264D81DCC(&qword_27FFB2758, &qword_27FFB2760, &unk_264E280D8, v105);
    sub_264D9CE9C();
    sub_264E24858();
    sub_264D817BC(&v153, &qword_27FFB2978, &qword_264E284D0);
    sub_264D817BC(v86, &qword_27FFB2760, &unk_264E280D8);
    (v122)(v119, v128);
    v95(v126, v127);
    sub_264DED9C0(v125, type metadata accessor for MostUsedListSectionAppsAndCategories);
    v96(v123, v124);
    return sub_264DED9C0(v129, type metadata accessor for AllActivityView.Model);
  }
}

uint64_t sub_264DE08B4(uint64_t a1, uint64_t *a2)
{
  v3 = type metadata accessor for ActivityNavigationState(0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v10 - v7;
  sub_264DED884(a1, &v10 - v7, type metadata accessor for ActivityNavigationState);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264DED884(v8, v5, type metadata accessor for ActivityNavigationState);

  sub_264E24348();
  return sub_264DED9C0(v8, type metadata accessor for ActivityNavigationState);
}

uint64_t sub_264DE09E4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v35 = a3;
  v5 = type metadata accessor for ActivityNavigationState(0);
  MEMORY[0x28223BE20](v5 - 8);
  v32 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = (&v30 - v8);
  v33 = type metadata accessor for UsageChartFooterView(0) - 8;
  MEMORY[0x28223BE20](v33);
  v34 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v30 - v12;
  v30 = &v30 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB2A50, &qword_264E285C8);
  MEMORY[0x28223BE20](v14 - 8);
  v31 = &v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v30 - v17;
  *v18 = sub_264E24828();
  *(v18 + 1) = 0x4024000000000000;
  v18[16] = 0;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB2A58, &qword_264E285D0);
  sub_264DE0E30(a1, a2, &v18[*(v19 + 44)]);
  v20 = type metadata accessor for AllActivityView.Model(0);
  sub_264DED884(a1 + *(v20 + 44), v13, type metadata accessor for UsageChartFooterView.Model);
  type metadata accessor for AllActivityView.Manager(0);
  sub_264DEC2DC(&qword_27FFB27B0, type metadata accessor for AllActivityView.Manager, &unk_264E282F4);
  sub_264E24448();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264E24338();

  v21 = *v9;
  sub_264DED9C0(v9, type metadata accessor for ActivityNavigationState);
  sub_264E24448();
  swift_getKeyPath();
  swift_getKeyPath();
  v22 = v32;
  sub_264E24338();

  v23 = v33;
  v24 = v30;
  sub_264D91F38(&v30[*(v33 + 32)]);
  sub_264DED9C0(v22, type metadata accessor for ActivityNavigationState);
  *(v24 + *(v23 + 28)) = v21;
  v25 = v31;
  sub_264D81744(v18, v31, &qword_27FFB2A50, &qword_264E285C8);
  v26 = v34;
  sub_264DED884(v24, v34, type metadata accessor for UsageChartFooterView);
  v27 = v35;
  sub_264D81744(v25, v35, &qword_27FFB2A50, &qword_264E285C8);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB2A60, &qword_264E285D8);
  sub_264DED884(v26, v27 + *(v28 + 48), type metadata accessor for UsageChartFooterView);
  sub_264DED9C0(v24, type metadata accessor for UsageChartFooterView);
  sub_264D817BC(v18, &qword_27FFB2A50, &qword_264E285C8);
  sub_264DED9C0(v26, type metadata accessor for UsageChartFooterView);
  return sub_264D817BC(v25, &qword_27FFB2A50, &qword_264E285C8);
}

uint64_t sub_264DE0E30@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v94 = a1;
  v86 = a3;
  v83 = type metadata accessor for CategoriesLegendView(0);
  MEMORY[0x28223BE20](v83);
  v87 = &v68 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v85 = &v68 - v7;
  v69 = type metadata accessor for UsageDetailTabView(0);
  MEMORY[0x28223BE20](v69);
  v72 = &v68 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB2A68, &qword_264E285E0);
  v80 = *(v79 - 8);
  MEMORY[0x28223BE20](v79);
  v71 = &v68 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v70 = &v68 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB2A70, &qword_264E285E8);
  MEMORY[0x28223BE20](v12 - 8);
  v84 = &v68 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v95 = &v68 - v15;
  v77 = type metadata accessor for UsageOverviewTabView(0) - 8;
  MEMORY[0x28223BE20](v77);
  v76 = &v68 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB2A78, &qword_264E285F0) - 8;
  MEMORY[0x28223BE20](v88);
  v82 = &v68 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v78 = &v68 - v19;
  MEMORY[0x28223BE20](v20);
  v96 = &v68 - v21;
  v22 = type metadata accessor for ActivityNavigationState(0);
  MEMORY[0x28223BE20](v22 - 8);
  v90 = &v68 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v89 = &v68 - v25;
  v26 = type metadata accessor for UsageHeaderView(0);
  v27 = (v26 - 8);
  MEMORY[0x28223BE20](v26);
  v81 = &v68 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v31 = &v68 - v30;
  v93 = type metadata accessor for AllActivityView.Model(0);
  sub_264DED884(a1 + v93[7], v31, type metadata accessor for UsageHeaderView.Model);
  v32 = a2[1];
  v73 = *a2;
  v33 = *(a2 + 16);
  type metadata accessor for AllActivityView.Manager(0);
  v34 = sub_264DEC2DC(&qword_27FFB27B0, type metadata accessor for AllActivityView.Manager, &unk_264E282F4);
  v92 = v32;
  v91 = v33;
  sub_264E24448();
  swift_getKeyPath();
  swift_getKeyPath();
  v35 = v89;
  sub_264E24338();

  v74 = *v35;
  v75 = type metadata accessor for ActivityNavigationState;
  sub_264DED9C0(v35, type metadata accessor for ActivityNavigationState);
  sub_264E24448();
  swift_getKeyPath();
  swift_getKeyPath();
  v36 = v90;
  sub_264E24338();

  sub_264D91F38(&v31[v27[8]]);
  sub_264DED9C0(v36, type metadata accessor for ActivityNavigationState);
  *&v31[v27[7]] = v74;
  v37 = v27[9];
  v90 = v31;
  *&v31[v37] = 0;
  v38 = v76;
  sub_264DED884(v94 + v93[8], v76, type metadata accessor for UsageOverviewTabView.Model);
  sub_264E24458();
  swift_getKeyPath();
  sub_264E244F8();

  sub_264E24F58();
  v39 = 1;
  sub_264E24588();
  v40 = v38;
  v41 = v78;
  sub_264DED774(v40, v78, type metadata accessor for UsageOverviewTabView);
  v42 = (v41 + *(v88 + 44));
  v43 = v102;
  v42[4] = v101;
  v42[5] = v43;
  v42[6] = v103;
  v44 = v98;
  *v42 = v97;
  v42[1] = v44;
  v45 = v100;
  v42[2] = v99;
  v42[3] = v45;
  sub_264D90E64(v41, v96, &qword_27FFB2A78, &qword_264E285F0);
  v88 = v34;
  sub_264E24448();
  swift_getKeyPath();
  swift_getKeyPath();
  v46 = v89;
  sub_264E24338();

  v47 = v46;

  v48 = v79;

  v49 = *v46;
  sub_264DED9C0(v46, v75);
  if (!v49)
  {
    v50 = v72;
    sub_264DED884(v94 + v93[9], v72, type metadata accessor for UsageDetailTabView.Model);
    sub_264E24458();
    swift_getKeyPath();
    sub_264E244F8();

    sub_264E24F58();
    sub_264E24588();
    v51 = v50;
    v52 = v71;
    sub_264DED774(v51, v71, type metadata accessor for UsageDetailTabView);
    v53 = (v52 + *(v48 + 36));
    v54 = v109;
    v53[4] = v108;
    v53[5] = v54;
    v53[6] = v110;
    v55 = v105;
    *v53 = v104;
    v53[1] = v55;
    v56 = v107;
    v53[2] = v106;
    v53[3] = v56;
    v57 = v52;
    v58 = v70;
    sub_264D90E64(v57, v70, &qword_27FFB2A68, &qword_264E285E0);
    sub_264D90E64(v58, v95, &qword_27FFB2A68, &qword_264E285E0);
    v39 = 0;
  }

  v59 = v95;
  (*(v80 + 56))(v95, v39, 1, v48);
  v60 = v85;
  sub_264DED884(v94 + v93[10], v85, type metadata accessor for CategoriesLegendView.Model);
  sub_264E24448();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264E24338();

  sub_264D91F38(v60 + *(v83 + 20));
  sub_264DED9C0(v47, type metadata accessor for ActivityNavigationState);
  v61 = v81;
  sub_264DED884(v90, v81, type metadata accessor for UsageHeaderView);
  v62 = v82;
  sub_264D81744(v96, v82, &qword_27FFB2A78, &qword_264E285F0);
  v63 = v84;
  sub_264D81744(v59, v84, &qword_27FFB2A70, &qword_264E285E8);
  v64 = v87;
  sub_264DED884(v60, v87, type metadata accessor for CategoriesLegendView);
  v65 = v86;
  sub_264DED884(v61, v86, type metadata accessor for UsageHeaderView);
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB2A80, &qword_264E285F8);
  sub_264D81744(v62, v65 + v66[12], &qword_27FFB2A78, &qword_264E285F0);
  sub_264D81744(v63, v65 + v66[16], &qword_27FFB2A70, &qword_264E285E8);
  sub_264DED884(v64, v65 + v66[20], type metadata accessor for CategoriesLegendView);
  sub_264DED9C0(v60, type metadata accessor for CategoriesLegendView);
  sub_264D817BC(v95, &qword_27FFB2A70, &qword_264E285E8);
  sub_264D817BC(v96, &qword_27FFB2A78, &qword_264E285F0);
  sub_264DED9C0(v90, type metadata accessor for UsageHeaderView);
  sub_264DED9C0(v64, type metadata accessor for CategoriesLegendView);
  sub_264D817BC(v63, &qword_27FFB2A70, &qword_264E285E8);
  sub_264D817BC(v62, &qword_27FFB2A78, &qword_264E285F0);
  return sub_264DED9C0(v61, type metadata accessor for UsageHeaderView);
}

uint64_t sub_264DE1B40@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB2A08, &qword_264E28550);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v18[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v5);
  v7 = &v18[-v6];
  sub_264E247D8();
  v8 = [objc_opt_self() bundle];
  v9 = sub_264E24AE8();
  v11 = v10;
  v13 = v12;
  v15 = v14;
  sub_264DE1D54(v7);
  sub_264D81744(v7, v4, &qword_27FFB2A08, &qword_264E28550);
  *a1 = v9;
  *(a1 + 8) = v11;
  *(a1 + 16) = v13 & 1;
  *(a1 + 24) = v15;
  *(a1 + 32) = 0;
  *(a1 + 40) = 1;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB2A10, &qword_264E28558);
  sub_264D81744(v4, a1 + *(v16 + 64), &qword_27FFB2A08, &qword_264E28550);
  sub_264D80F20(v9, v11, v13 & 1);

  sub_264D817BC(v7, &qword_27FFB2A08, &qword_264E28550);
  sub_264D817BC(v4, &qword_27FFB2A08, &qword_264E28550);
  sub_264D817AC(v9, v11, v13 & 1);
}

uint64_t sub_264DE1D54@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v57 = a1;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB2A18, &qword_264E28560);
  MEMORY[0x28223BE20](v49);
  v50 = &v43 - v3;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB2A20, &qword_264E28568);
  MEMORY[0x28223BE20](v44);
  v45 = &v43 - v4;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB2A28, &qword_264E28570);
  MEMORY[0x28223BE20](v48);
  v47 = &v43 - v5;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB2A30, &qword_264E28578);
  MEMORY[0x28223BE20](v43);
  v46 = &v43 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB2A38, &unk_264E28580);
  v55 = *(v7 - 8);
  v56 = v7;
  MEMORY[0x28223BE20](v7);
  v54 = &v43 - v8;
  v9 = sub_264E23AA8();
  v60 = *(v9 - 8);
  v61 = v9;
  MEMORY[0x28223BE20](v9);
  v11 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_264E238E8();
  v58 = *(v12 - 8);
  v59 = v12;
  MEMORY[0x28223BE20](v12);
  v14 = &v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for ActivityNavigationState(0);
  MEMORY[0x28223BE20](v15 - 8);
  v53 = &v43 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v43 - v18;
  v20 = type metadata accessor for AllActivityView(0);
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20 - 8);
  sub_264DED884(v2, &v43 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for AllActivityView);
  v23 = (*(v21 + 80) + 16) & ~*(v21 + 80);
  v24 = swift_allocObject();
  sub_264DED774(&v43 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0), v24 + v23, type metadata accessor for AllActivityView);
  v25 = *v2;
  v26 = v2[1];
  type metadata accessor for AllActivityView.Manager(0);
  sub_264DEC2DC(&qword_27FFB27B0, type metadata accessor for AllActivityView.Manager, &unk_264E282F4);
  v51 = v26;
  v52 = v25;
  sub_264E24448();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264E24338();

  sub_264D922CC(v14);
  sub_264DED9C0(v19, type metadata accessor for ActivityNavigationState);
  sub_264E23A98();
  LOBYTE(v25) = sub_264E238C8();
  (*(v60 + 8))(v11, v61);
  (*(v58 + 8))(v14, v59);
  if ((v25 & 1) == 0)
  {
    sub_264E24448();
    swift_getKeyPath();
    swift_getKeyPath();
    v31 = v53;
    sub_264E24338();

    v32 = *v31;
    sub_264DED9C0(v31, type metadata accessor for ActivityNavigationState);
    if (v32 == 1)
    {

      v34 = v46;
      sub_264E24DD8();
      v39 = sub_264E24A78();
      KeyPath = swift_getKeyPath();
      v41 = (v34 + *(v43 + 36));
      *v41 = KeyPath;
      v41[1] = v39;
      sub_264D81744(v34, v45, &qword_27FFB2A30, &qword_264E28578);
      swift_storeEnumTagMultiPayload();
      sub_264DEE9A4();
      v38 = v47;
      sub_264E24858();
      sub_264D81744(v38, v50, &qword_27FFB2A28, &qword_264E28570);
      swift_storeEnumTagMultiPayload();
      sub_264DEE920();
      v33 = v54;
    }

    else
    {
      v33 = v54;
      if (v32)
      {
        swift_storeEnumTagMultiPayload();
        sub_264DEE920();
        sub_264E24858();

        goto LABEL_9;
      }

      v34 = v46;
      sub_264E24DD8();
      v35 = sub_264E24A78();
      v36 = swift_getKeyPath();
      v37 = (v34 + *(v43 + 36));
      *v37 = v36;
      v37[1] = v35;
      sub_264D81744(v34, v45, &qword_27FFB2A30, &qword_264E28578);
      swift_storeEnumTagMultiPayload();
      sub_264DEE9A4();
      v38 = v47;
      sub_264E24858();
      sub_264D81744(v38, v50, &qword_27FFB2A28, &qword_264E28570);
      swift_storeEnumTagMultiPayload();
      sub_264DEE920();
    }

    sub_264E24858();

    sub_264D817BC(v38, &qword_27FFB2A28, &qword_264E28570);
    sub_264D817BC(v34, &qword_27FFB2A30, &qword_264E28578);
LABEL_9:
    v29 = v56;
    v28 = v57;
    v30 = v55;
    sub_264D90E64(v33, v57, &qword_27FFB2A38, &unk_264E28580);
    v27 = 0;
    return (*(v30 + 56))(v28, v27, 1, v29);
  }

  v27 = 1;
  v29 = v56;
  v28 = v57;
  v30 = v55;
  return (*(v30 + 56))(v28, v27, 1, v29);
}

uint64_t sub_264DE268C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v32 = a1;
  v37 = a3;
  v5 = type metadata accessor for ActivityNavigationState(0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = (&v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v34 = type metadata accessor for MostUsedListSectionPickups(0) - 8;
  MEMORY[0x28223BE20](v34);
  v36 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v31 - v10;
  MEMORY[0x28223BE20](v12);
  v35 = &v31 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB29A8, &qword_264E28500);
  MEMORY[0x28223BE20](v14 - 8);
  v33 = &v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v31 - v17;
  *v18 = sub_264E24828();
  *(v18 + 1) = 0x4024000000000000;
  v18[16] = 0;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB29B0, &qword_264E28508);
  sub_264DE2B14(a1, a2, &v18[*(v19 + 44)]);
  v31 = a2[1];
  type metadata accessor for AllActivityView.Manager(0);
  sub_264DEC2DC(&qword_27FFB27B0, type metadata accessor for AllActivityView.Manager, &unk_264E282F4);
  sub_264E24448();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264E24338();

  v20 = *v7;
  sub_264DED9C0(v7, type metadata accessor for ActivityNavigationState);
  v21 = type metadata accessor for AllActivityView.Model(0);
  v22 = 80;
  if (v20 == 1)
  {
    v22 = 76;
  }

  sub_264DEE8AC(v32 + *(v21 + v22), v38);
  sub_264E24448();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264E24338();

  sub_264D91F38(&v11[*(v34 + 28)]);
  sub_264DED9C0(v7, type metadata accessor for ActivityNavigationState);
  v23 = v38[3];
  *(v11 + 2) = v38[2];
  *(v11 + 3) = v23;
  *(v11 + 4) = v38[4];
  *(v11 + 10) = v39;
  v24 = v38[1];
  *v11 = v38[0];
  *(v11 + 1) = v24;
  v25 = v35;
  sub_264DED774(v11, v35, type metadata accessor for MostUsedListSectionPickups);
  v26 = v33;
  sub_264D81744(v18, v33, &qword_27FFB29A8, &qword_264E28500);
  v27 = v36;
  sub_264DED884(v25, v36, type metadata accessor for MostUsedListSectionPickups);
  v28 = v37;
  sub_264D81744(v26, v37, &qword_27FFB29A8, &qword_264E28500);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB29B8, &qword_264E28510);
  sub_264DED884(v27, v28 + *(v29 + 48), type metadata accessor for MostUsedListSectionPickups);
  sub_264DED9C0(v25, type metadata accessor for MostUsedListSectionPickups);
  sub_264D817BC(v18, &qword_27FFB29A8, &qword_264E28500);
  sub_264DED9C0(v27, type metadata accessor for MostUsedListSectionPickups);
  return sub_264D817BC(v26, &qword_27FFB29A8, &qword_264E28500);
}

uint64_t sub_264DE2B14@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = a1;
  v151 = a1;
  v128 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1860, &qword_264E267E0);
  MEMORY[0x28223BE20](v5 - 8);
  v118 = &v103 - v6;
  v7 = type metadata accessor for PickupsOverviewLegendView.Model(0);
  MEMORY[0x28223BE20](v7 - 8);
  v145 = &v103 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v143 = type metadata accessor for PickupsOverviewLegendView(0);
  MEMORY[0x28223BE20](v143);
  v146 = &v103 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v116 = &v103 - v11;
  v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB29C0, &qword_264E28518);
  MEMORY[0x28223BE20](v122);
  v124 = &v103 - v12;
  v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB29C8, &qword_264E28520);
  MEMORY[0x28223BE20](v123);
  v115 = &v103 - v13;
  v142 = sub_264E23AA8();
  v141 = *(v142 - 8);
  MEMORY[0x28223BE20](v142);
  v140 = &v103 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v120 = sub_264E238E8();
  v119 = *(v120 - 8);
  MEMORY[0x28223BE20](v120);
  v144 = &v103 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v111 = &v103 - v17;
  v18 = type metadata accessor for PickupsDetailLegendView.Model(0);
  MEMORY[0x28223BE20](v18 - 8);
  v110 = &v103 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v108 = type metadata accessor for PickupsDetailLegendView(0);
  MEMORY[0x28223BE20](v108);
  v112 = &v103 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v114 = &v103 - v22;
  v104 = type metadata accessor for PickupsDetailTabView(0);
  MEMORY[0x28223BE20](v104);
  v107 = &v103 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB29D0, &qword_264E28528);
  MEMORY[0x28223BE20](v105);
  v109 = &v103 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v106 = &v103 - v26;
  MEMORY[0x28223BE20](v27);
  v113 = &v103 - v28;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB29D8, &qword_264E28530);
  MEMORY[0x28223BE20](v29 - 8);
  v127 = &v103 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31);
  v121 = &v103 - v32;
  v137 = type metadata accessor for PickupsOverviewTabView(0) - 8;
  MEMORY[0x28223BE20](v137);
  v136 = &v103 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v139 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB29E0, &qword_264E28538) - 8;
  MEMORY[0x28223BE20](v139);
  v126 = &v103 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v35);
  v138 = &v103 - v36;
  MEMORY[0x28223BE20](v37);
  v149 = &v103 - v38;
  v39 = type metadata accessor for ActivityNavigationState(0);
  MEMORY[0x28223BE20](v39 - 8);
  v117 = &v103 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v41);
  v134 = &v103 - v42;
  MEMORY[0x28223BE20](v43);
  v45 = (&v103 - v44);
  v46 = type metadata accessor for PickupsHeaderView(0);
  v47 = (v46 - 8);
  MEMORY[0x28223BE20](v46);
  v125 = &v103 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v49);
  v51 = &v103 - v50;
  v150 = type metadata accessor for AllActivityView.Model(0);
  sub_264DED884(v4 + v150[14], v51, type metadata accessor for PickupsHeaderView.Model);
  v52 = *a2;
  v53 = a2[1];
  LODWORD(v4) = *(a2 + 16);
  v54 = type metadata accessor for AllActivityView.Manager(0);
  v129 = sub_264DEC2DC(&qword_27FFB27B0, type metadata accessor for AllActivityView.Manager, &unk_264E282F4);
  v133 = v52;
  v147 = v53;
  v132 = v4;
  v131 = v54;
  sub_264E24448();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264E24338();

  v148 = v45;
  v130 = *v45;
  v135 = type metadata accessor for ActivityNavigationState;
  sub_264DED9C0(v45, type metadata accessor for ActivityNavigationState);
  sub_264E24448();
  swift_getKeyPath();
  swift_getKeyPath();
  v55 = v134;
  sub_264E24338();

  sub_264D91F38(&v51[v47[8]]);
  sub_264DED9C0(v55, type metadata accessor for ActivityNavigationState);
  *&v51[v47[7]] = v130;
  v56 = v47[9];
  v134 = v51;
  *&v51[v56] = 0;
  v57 = v136;
  sub_264DED884(v151 + v150[15], v136, type metadata accessor for PickupsOverviewTabView.Model);
  sub_264E24458();
  swift_getKeyPath();
  sub_264E244F8();

  sub_264E24F58();
  sub_264E24588();
  v58 = v138;
  sub_264DED774(v57, v138, type metadata accessor for PickupsOverviewTabView);
  v59 = (v58 + *(v139 + 44));
  v60 = v157;
  v59[4] = v156;
  v59[5] = v60;
  v59[6] = v158;
  v61 = v153;
  *v59 = v152;
  v59[1] = v61;
  v62 = v155;
  v59[2] = v154;
  v59[3] = v62;
  sub_264D90E64(v58, v149, &qword_27FFB29E0, &qword_264E28538);
  sub_264E24448();
  swift_getKeyPath();
  swift_getKeyPath();
  v63 = v148;
  sub_264E24338();

  v64 = *v63;
  sub_264DED9C0(v63, v135);
  if (!v64)
  {
    v79 = v107;
    sub_264DED884(v151 + v150[16], v107, type metadata accessor for PickupsDetailTabView.Model);
    sub_264E24458();
    swift_getKeyPath();
    sub_264E244F8();

    sub_264E24F58();
    sub_264E24588();
    v80 = v106;
    sub_264DED774(v79, v106, type metadata accessor for PickupsDetailTabView);
    v81 = (v80 + *(v105 + 36));
    v82 = v164;
    v81[4] = v163;
    v81[5] = v82;
    v81[6] = v165;
    v83 = v160;
    *v81 = v159;
    v81[1] = v83;
    v84 = v162;
    v81[2] = v161;
    v81[3] = v84;
    v85 = v113;
    sub_264D90E64(v80, v113, &qword_27FFB29D0, &qword_264E28528);
    v86 = v110;
    sub_264DED884(v151 + v150[18], v110, type metadata accessor for PickupsDetailLegendView.Model);
    sub_264E24448();
    swift_getKeyPath();
    swift_getKeyPath();
    v87 = v148;
    sub_264E24338();

    v88 = v111;
    sub_264D91F38(v111);
    sub_264DED9C0(v87, type metadata accessor for ActivityNavigationState);
    v89 = v114;
    v90 = &v114[*(v108 + 24)];
    *v90 = 0;
    *(v90 + 1) = 0;
    *(v90 + 2) = 0;
    sub_264DED884(v86, v89, type metadata accessor for PickupsDetailLegendView.Model);
    v91 = v140;
    _s16ScreenTimeUICore11DetailChartV4HourV2id10Foundation4DateVvg_0();
    sub_264E23AF8();
    (*(v141 + 8))(v91, v142);
    (*(v119 + 8))(v88, v120);
    sub_264DED9C0(v86, type metadata accessor for PickupsDetailLegendView.Model);
    v92 = v109;
    sub_264D81744(v85, v109, &qword_27FFB29D0, &qword_264E28528);
    v93 = v112;
    sub_264DED884(v89, v112, type metadata accessor for PickupsDetailLegendView);
    v94 = v115;
    sub_264D81744(v92, v115, &qword_27FFB29D0, &qword_264E28528);
    v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB2A00, &qword_264E28548);
    sub_264DED884(v93, v94 + *(v95 + 48), type metadata accessor for PickupsDetailLegendView);
    sub_264DED9C0(v93, type metadata accessor for PickupsDetailLegendView);
    sub_264D817BC(v92, &qword_27FFB29D0, &qword_264E28528);
    sub_264D81744(v94, v124, &qword_27FFB29C8, &qword_264E28520);
    swift_storeEnumTagMultiPayload();
    sub_264D81DCC(&qword_27FFB29E8, &qword_27FFB29C8, &qword_264E28520, MEMORY[0x277CE14C0]);
    sub_264DEC2DC(&qword_27FFB29F0, type metadata accessor for PickupsOverviewLegendView, &protocol conformance descriptor for PickupsOverviewLegendView);
    v78 = v121;
    sub_264E24858();
    sub_264D817BC(v94, &qword_27FFB29C8, &qword_264E28520);
    sub_264DED9C0(v89, type metadata accessor for PickupsDetailLegendView);
    sub_264D817BC(v85, &qword_27FFB29D0, &qword_264E28528);
    goto LABEL_5;
  }

  v65 = v143;
  v66 = v145;
  sub_264DED884(v151 + v150[17], v145, type metadata accessor for PickupsOverviewLegendView.Model);
  sub_264E24448();
  swift_getKeyPath();
  swift_getKeyPath();
  v67 = v117;
  sub_264E24338();

  sub_264D91F38(v144);
  sub_264DED9C0(v67, type metadata accessor for ActivityNavigationState);
  sub_264DED884(v66, v146, type metadata accessor for PickupsOverviewLegendView.Model);
  v68 = v140;
  _s16ScreenTimeUICore11DetailChartV4HourV2id10Foundation4DateVvg_0();
  v69 = v118;
  Calendar.startOfWeek(containing:)(v68, v118);
  v70 = v141;
  v71 = v142;
  (*(v141 + 8))(v68, v142);
  result = (*(v70 + 48))(v69, 1, v71);
  if (result != 1)
  {
    v73 = v65;
    v74 = *(v65 + 24);
    v75 = v146;
    v76 = (v146 + v74);
    (*(v119 + 8))(v144, v120);
    sub_264DED9C0(v145, type metadata accessor for PickupsOverviewLegendView.Model);
    (*(v70 + 32))(v75 + *(v73 + 20), v69, v71);
    v76[1] = 0;
    v76[2] = 0;
    *v76 = 0;
    v77 = v116;
    sub_264DED774(v75, v116, type metadata accessor for PickupsOverviewLegendView);
    sub_264DED884(v77, v124, type metadata accessor for PickupsOverviewLegendView);
    swift_storeEnumTagMultiPayload();
    sub_264D81DCC(&qword_27FFB29E8, &qword_27FFB29C8, &qword_264E28520, MEMORY[0x277CE14C0]);
    sub_264DEC2DC(&qword_27FFB29F0, type metadata accessor for PickupsOverviewLegendView, &protocol conformance descriptor for PickupsOverviewLegendView);
    v78 = v121;
    sub_264E24858();
    sub_264DED9C0(v77, type metadata accessor for PickupsOverviewLegendView);
LABEL_5:
    v96 = v134;
    v97 = v125;
    sub_264DED884(v134, v125, type metadata accessor for PickupsHeaderView);
    v98 = v149;
    v99 = v126;
    sub_264D81744(v149, v126, &qword_27FFB29E0, &qword_264E28538);
    v100 = v127;
    sub_264D81744(v78, v127, &qword_27FFB29D8, &qword_264E28530);
    v101 = v128;
    sub_264DED884(v97, v128, type metadata accessor for PickupsHeaderView);
    v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB29F8, &qword_264E28540);
    sub_264D81744(v99, v101 + *(v102 + 48), &qword_27FFB29E0, &qword_264E28538);
    sub_264D81744(v100, v101 + *(v102 + 64), &qword_27FFB29D8, &qword_264E28530);
    sub_264D817BC(v78, &qword_27FFB29D8, &qword_264E28530);
    sub_264D817BC(v98, &qword_27FFB29E0, &qword_264E28538);
    sub_264DED9C0(v96, type metadata accessor for PickupsHeaderView);
    sub_264D817BC(v100, &qword_27FFB29D8, &qword_264E28530);
    sub_264D817BC(v99, &qword_27FFB29E0, &qword_264E28538);
    return sub_264DED9C0(v97, type metadata accessor for PickupsHeaderView);
  }

  __break(1u);
  return result;
}

uint64_t sub_264DE4074@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = sub_264E24828();
  *(a3 + 8) = 0x4024000000000000;
  *(a3 + 16) = 0;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB2980, &qword_264E284D8);
  return sub_264DE40DC(a1, a2, a3 + *(v6 + 44));
}

uint64_t sub_264DE40DC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v109 = a1;
  v97 = a3;
  v93 = type metadata accessor for MostUsedListSectionNotifications(0);
  MEMORY[0x28223BE20](v93);
  v98 = &v79 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v94 = &v79 - v7;
  MEMORY[0x28223BE20](v8);
  v96 = &v79 - v9;
  v80 = type metadata accessor for NotificationsDetailTabView(0);
  MEMORY[0x28223BE20](v80);
  v83 = &v79 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB2988, &qword_264E284E0);
  v12 = *(v11 - 8);
  v90 = v11;
  v91 = v12;
  MEMORY[0x28223BE20](v11);
  v82 = &v79 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v81 = &v79 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB2990, &qword_264E284E8);
  MEMORY[0x28223BE20](v16 - 8);
  v95 = &v79 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v110 = &v79 - v19;
  v87 = type metadata accessor for NotificationsOverviewTabView(0) - 8;
  MEMORY[0x28223BE20](v87);
  v86 = &v79 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB2998, &qword_264E284F0) - 8;
  MEMORY[0x28223BE20](v89);
  v92 = &v79 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v88 = &v79 - v23;
  MEMORY[0x28223BE20](v24);
  v102 = &v79 - v25;
  v26 = type metadata accessor for ActivityNavigationState(0);
  MEMORY[0x28223BE20](v26 - 8);
  v100 = &v79 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v30 = (&v79 - v29);
  v31 = type metadata accessor for NotificationsHeaderView(0);
  v32 = (v31 - 8);
  MEMORY[0x28223BE20](v31);
  v101 = &v79 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v34);
  v36 = &v79 - v35;
  v106 = type metadata accessor for AllActivityView.Model(0);
  sub_264DED884(a1 + v106[21], v36, type metadata accessor for NotificationsHeaderView.Model);
  v37 = *a2;
  v38 = a2[1];
  v107 = *(a2 + 16);
  v39 = type metadata accessor for AllActivityView.Manager(0);
  v40 = sub_264DEC2DC(&qword_27FFB27B0, type metadata accessor for AllActivityView.Manager, &unk_264E282F4);
  v103 = v37;
  v104 = v40;
  v108 = v38;
  v105 = v39;
  sub_264E24448();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264E24338();

  v99 = v30;
  v84 = *v30;
  v85 = type metadata accessor for ActivityNavigationState;
  sub_264DED9C0(v30, type metadata accessor for ActivityNavigationState);
  sub_264E24448();
  swift_getKeyPath();
  swift_getKeyPath();
  v41 = v100;
  sub_264E24338();

  sub_264D91F38(&v36[v32[8]]);
  sub_264DED9C0(v41, type metadata accessor for ActivityNavigationState);
  *&v36[v32[7]] = v84;
  v42 = v32[9];
  v100 = v36;
  *&v36[v42] = 0;
  v43 = v86;
  sub_264DED884(v109 + v106[22], v86, type metadata accessor for NotificationsOverviewTabView.Model);
  sub_264E24458();
  swift_getKeyPath();
  sub_264E244F8();

  sub_264E24F58();
  v44 = 1;
  sub_264E24588();
  v45 = v88;
  sub_264DED774(v43, v88, type metadata accessor for NotificationsOverviewTabView);
  v46 = (v45 + *(v89 + 44));
  v47 = v116;
  v48 = v118;
  v49 = v119;
  v46[4] = v117;
  v46[5] = v48;
  v46[6] = v49;
  v50 = v114;
  *v46 = v113;
  v46[1] = v50;
  v46[2] = v115;
  v46[3] = v47;
  sub_264D90E64(v45, v102, &qword_27FFB2998, &qword_264E284F0);
  sub_264E24448();
  swift_getKeyPath();
  swift_getKeyPath();
  v51 = v99;
  sub_264E24338();

  v52 = v90;

  v53 = *v51;
  sub_264DED9C0(v51, v85);
  if (!v53)
  {
    v54 = v83;
    sub_264DED884(v109 + v106[23], v83, type metadata accessor for NotificationsDetailTabView.Model);
    sub_264E24458();
    swift_getKeyPath();
    sub_264E244F8();

    sub_264E24F58();
    sub_264E24588();
    v55 = v82;
    sub_264DED774(v54, v82, type metadata accessor for NotificationsDetailTabView);
    v56 = (v55 + *(v52 + 36));
    v57 = v120[5];
    v56[4] = v120[4];
    v56[5] = v57;
    v56[6] = v120[6];
    v58 = v120[1];
    *v56 = v120[0];
    v56[1] = v58;
    v59 = v120[3];
    v56[2] = v120[2];
    v56[3] = v59;
    v60 = v55;
    v61 = v81;
    sub_264D90E64(v60, v81, &qword_27FFB2988, &qword_264E284E0);
    sub_264D90E64(v61, v110, &qword_27FFB2988, &qword_264E284E0);
    v44 = 0;
  }

  (*(v91 + 56))(v110, v44, 1, v52);
  sub_264E24448();
  swift_getKeyPath();
  swift_getKeyPath();
  v62 = v99;
  sub_264E24338();

  v63 = *v62;
  sub_264DED9C0(v62, type metadata accessor for ActivityNavigationState);
  v64 = 25;
  if (v63 == 1)
  {
    v64 = 24;
  }

  sub_264DEE850(v109 + v106[v64], v111);
  sub_264E24448();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264E24338();

  v65 = v94;
  sub_264D91F38(&v94[*(v93 + 20)]);
  sub_264DED9C0(v62, type metadata accessor for ActivityNavigationState);
  v66 = v111[3];
  *(v65 + 32) = v111[2];
  *(v65 + 48) = v66;
  *(v65 + 64) = v111[4];
  *(v65 + 80) = v112;
  v67 = v111[1];
  *v65 = v111[0];
  *(v65 + 16) = v67;
  v68 = v96;
  sub_264DED774(v65, v96, type metadata accessor for MostUsedListSectionNotifications);
  v69 = v101;
  sub_264DED884(v100, v101, type metadata accessor for NotificationsHeaderView);
  v70 = v102;
  v71 = v92;
  sub_264D81744(v102, v92, &qword_27FFB2998, &qword_264E284F0);
  v72 = v110;
  v73 = v95;
  sub_264D81744(v110, v95, &qword_27FFB2990, &qword_264E284E8);
  v74 = v98;
  sub_264DED884(v68, v98, type metadata accessor for MostUsedListSectionNotifications);
  v75 = v69;
  v76 = v97;
  sub_264DED884(v75, v97, type metadata accessor for NotificationsHeaderView);
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB29A0, &qword_264E284F8);
  sub_264D81744(v71, v76 + v77[12], &qword_27FFB2998, &qword_264E284F0);
  sub_264D81744(v73, v76 + v77[16], &qword_27FFB2990, &qword_264E284E8);
  sub_264DED884(v74, v76 + v77[20], type metadata accessor for MostUsedListSectionNotifications);
  sub_264DED9C0(v68, type metadata accessor for MostUsedListSectionNotifications);
  sub_264D817BC(v72, &qword_27FFB2990, &qword_264E284E8);
  sub_264D817BC(v70, &qword_27FFB2998, &qword_264E284F0);
  sub_264DED9C0(v100, type metadata accessor for NotificationsHeaderView);
  sub_264DED9C0(v74, type metadata accessor for MostUsedListSectionNotifications);
  sub_264D817BC(v73, &qword_27FFB2990, &qword_264E284E8);
  sub_264D817BC(v71, &qword_27FFB2998, &qword_264E284F0);
  return sub_264DED9C0(v101, type metadata accessor for NotificationsHeaderView);
}

uint64_t sub_264DE4D80(uint64_t *a1)
{
  v2 = sub_264E23AA8();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_264DE4ED8();
  type metadata accessor for AllActivityView.Manager(0);
  sub_264DEC2DC(&qword_27FFB27B0, type metadata accessor for AllActivityView.Manager, &unk_264E282F4);
  sub_264E24448();
  v6 = a1[3];
  sub_264E23A98();
  sub_264DE64B0(v6, v5);

  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_264DE4ED8()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB2790, qword_264E281D0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v15 - v2;
  v4 = type metadata accessor for AllActivityView.UnitTestOverrides(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = (&v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = type metadata accessor for AllActivityView(0);
  sub_264D81744(v0 + *(v8 + 24), v3, &qword_27FFB2790, qword_264E281D0);
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    return sub_264D817BC(v3, &qword_27FFB2790, qword_264E281D0);
  }

  sub_264DED774(v3, v7, type metadata accessor for AllActivityView.UnitTestOverrides);
  type metadata accessor for AllActivityView.Manager(0);
  sub_264DEC2DC(&qword_27FFB27B0, type metadata accessor for AllActivityView.Manager, &unk_264E282F4);
  v10 = sub_264E24448();
  swift_beginAccess();
  __swift_assign_boxed_opaque_existential_1((v10 + 16), v7);
  swift_endAccess();

  v11 = sub_264E24448();
  v12 = *(v4 + 20);
  v13 = OBJC_IVAR____TtCV16ScreenTimeUICore15AllActivityView7Manager_calendar;
  swift_beginAccess();
  v14 = sub_264E23C38();
  (*(*(v14 - 8) + 24))(v11 + v13, v7 + v12, v14);
  swift_endAccess();

  return sub_264DED9C0(v7, type metadata accessor for AllActivityView.UnitTestOverrides);
}

double sub_264DE519C(uint64_t *a1)
{
  v1 = sub_264E238E8();
  v27 = *(v1 - 8);
  v28 = v1;
  MEMORY[0x28223BE20](v1);
  v26 = v22 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for ActivityNavigationState.DateAndBounds(0) - 8;
  MEMORY[0x28223BE20](v24);
  v25 = v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_264E23AA8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v23 = v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = v22 - v8;
  MEMORY[0x28223BE20](v10);
  v12 = v22 - v11;
  type metadata accessor for AllActivityView.Manager(0);
  sub_264DEC2DC(&qword_27FFB27B0, type metadata accessor for AllActivityView.Manager, &unk_264E282F4);
  v22[1] = sub_264E24448();
  sub_264E23A98();
  swift_getKeyPath();
  swift_getKeyPath();
  v22[0] = sub_264E24328();
  v14 = v13;
  v15 = *(v5 + 16);
  v15(v9, v12, v4);
  v16 = v23;
  v15(v23, v9, v4);
  v17 = v14 + *(type metadata accessor for ActivityNavigationState(0) + 20);
  v18 = v26;
  (*(v27 + 16))(v26, v17 + *(v24 + 28), v28);
  v19 = v25;
  sub_264D9173C(v16, v18, v25);
  v20 = *(v5 + 8);
  v20(v9, v4);
  v20(v12, v4);
  sub_264D93A84(v19, v17);
  (v22[0])(v29, 0);

  return result;
}

uint64_t sub_264DE5544@<X0>(uint64_t a3@<X8>)
{
  sub_264E247D8();
  v4 = [objc_opt_self() bundle];
  result = sub_264E24AE8();
  *a3 = result;
  *(a3 + 8) = v6;
  *(a3 + 16) = v7 & 1;
  *(a3 + 24) = v8;
  return result;
}

uint64_t sub_264DE55F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = *(a1 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](a1 - 8);
  v7 = &v12[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB2748, &qword_264E280D0);
  sub_264DEBEC0();
  sub_264E24A98();
  sub_264DED884(v3, v7, type metadata accessor for AllActivityView);
  v8 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v9 = swift_allocObject();
  sub_264DED774(v7, v9 + v8, type metadata accessor for AllActivityView);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB2768, &qword_264E280E8);
  v11 = (a2 + *(result + 36));
  *v11 = sub_264DEEB00;
  v11[1] = v9;
  v11[2] = 0;
  v11[3] = 0;
  return result;
}

ScreenTimeUICore::AllActivityView::Bridge::UserDevice __swiftcall AllActivityView.Bridge.UserDevice.init(userAltDSID:deviceIdentifier:)(Swift::String_optional userAltDSID, Swift::String_optional deviceIdentifier)
{
  *v2 = userAltDSID;
  v2[1] = deviceIdentifier;
  result.deviceIdentifier = deviceIdentifier;
  result.userAltDSID = userAltDSID;
  return result;
}

double sub_264DE5790@<D0>(_OWORD *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264E24338();

  result = *&v4;
  *a2 = v4;
  a2[1] = v5;
  return result;
}

uint64_t sub_264DE5810(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264DEE578(v2, v3, v4, v5);

  return sub_264E24348();
}

double sub_264DE58B0()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264E24338();

  return result;
}

uint64_t sub_264DE5928(_OWORD *a1)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_264E24348();
}

uint64_t (*sub_264DE599C(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_264E24328();
  return sub_264DE5A40;
}

void sub_264DE5A40(void *a1)
{
  v1 = *a1;
  (*(*a1 + 48))(*a1, 0);

  free(v1);
}

uint64_t sub_264DE5AA8(void *a1)
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB2778, &qword_264E28138);
  sub_264E24308();
  return swift_endAccess();
}

uint64_t sub_264DE5B20(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB2780, &qword_264E28140);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v7);
  v10 = &v13 - v9;
  v11 = *(v4 + 16);
  v11(&v13 - v9, a1, v3, v8);
  (v11)(v6, v10, v3);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB2778, &qword_264E28138);
  sub_264E24318();
  swift_endAccess();
  return (*(v4 + 8))(v10, v3);
}

uint64_t sub_264DE5CA4()
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB2778, &qword_264E28138);
  sub_264E24308();
  return swift_endAccess();
}

uint64_t sub_264DE5D18(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB2780, &qword_264E28140);
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v7 - v5, a1, v2, v4);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB2778, &qword_264E28138);
  sub_264E24318();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

void (*sub_264DE5E50(uint64_t *a1))(uint64_t a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB2780, &qword_264E28140);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtCV16ScreenTimeUICore15AllActivityView6Bridge__userDevice;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB2778, &qword_264E28138);
  sub_264E24308();
  swift_endAccess();
  return sub_264DE5FC0;
}

void sub_264DE5FC0(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*(*a1 + 88) + 16);
  v4(*(*a1 + 104), v3[14], v3[10]);
  v5 = v3[13];
  v11 = v3[14];
  v7 = v3[11];
  v6 = v3[12];
  v8 = v3[10];
  if (a2)
  {
    v4(v3[12], v5, v3[10]);
    swift_beginAccess();
    sub_264E24318();
    swift_endAccess();
    v9 = *(v7 + 8);
    v9(v5, v8);
    v10 = v11;
    v9(v11, v8);
  }

  else
  {
    swift_beginAccess();
    sub_264E24318();
    swift_endAccess();
    v10 = v11;
    (*(v7 + 8))(v11, v8);
  }

  free(v10);
  free(v5);
  free(v6);

  free(v3);
}

uint64_t AllActivityView.Bridge.__allocating_init(userAltDSID:deviceIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  AllActivityView.Bridge.init(userAltDSID:deviceIdentifier:)(a1, a2, a3, a4);
  return v8;
}

uint64_t AllActivityView.Bridge.init(userAltDSID:deviceIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB2778, &qword_264E28138);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v15 - v11;
  v13 = OBJC_IVAR____TtCV16ScreenTimeUICore15AllActivityView6Bridge__userDevice;
  v15 = xmmword_264E280B0;
  v16 = 0;
  v17 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB2788, &qword_264E28148);
  sub_264E242F8();
  (*(v10 + 32))(v4 + v13, v12, v9);
  swift_getKeyPath();
  swift_getKeyPath();
  *&v15 = a1;
  *(&v15 + 1) = a2;
  v16 = a3;
  v17 = a4;

  sub_264E24348();
  return v4;
}

uint64_t AllActivityView.Bridge.deinit()
{
  v1 = OBJC_IVAR____TtCV16ScreenTimeUICore15AllActivityView6Bridge__userDevice;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB2778, &qword_264E28138);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t AllActivityView.Bridge.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtCV16ScreenTimeUICore15AllActivityView6Bridge__userDevice;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB2778, &qword_264E28138);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

double sub_264DE6440(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264E24338();

  return result;
}

double sub_264DE64B0(uint64_t a1, uint64_t a2)
{
  v103 = a2;
  v101 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB2878, &qword_264E283C8);
  MEMORY[0x28223BE20](v2 - 8);
  v100 = &v78 - v3;
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB2780, &qword_264E28140);
  v96 = *(v98 - 8);
  MEMORY[0x28223BE20](v98);
  v95 = &v78 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB2880, &qword_264E283D0);
  v97 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v78 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB2888, &qword_264E283D8);
  v99 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v78 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB2890, &unk_264E283E0);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v78 - v13;
  v102 = sub_264E23AA8();
  v15 = *(v102 - 8);
  v16 = v15[8];
  MEMORY[0x28223BE20](v102);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1E60, &qword_264E26A80);
  MEMORY[0x28223BE20](v17 - 8);
  if (*(&v104->isa + OBJC_IVAR____TtCV16ScreenTimeUICore15AllActivityView7Manager_userDeviceSinkCancellable))
  {
    if (qword_27FFB1690 != -1)
    {
      swift_once();
    }

    v19 = sub_264E23FC8();
    __swift_project_value_buffer(v19, qword_27FFB6C08);
    v104 = sub_264E23FA8();
    v20 = sub_264E25298();
    if (os_log_type_enabled(v104, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_264D7D000, v104, v20, "Manager.setUp: already set up; returning", v21, 2u);
      MEMORY[0x26674FCD0](v21, -1, -1);
    }

    v22 = v104;
  }

  else
  {
    v89 = v8;
    v82 = &v78 - v18;
    v84 = v7;
    v85 = v5;
    v93 = &v78 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
    v86 = v15;
    v87 = v10;
    v88 = OBJC_IVAR____TtCV16ScreenTimeUICore15AllActivityView7Manager_userDeviceSinkCancellable;
    v90 = v14;
    swift_getKeyPath();
    swift_getKeyPath();
    sub_264E24338();

    v25 = v105;
    v24 = v106;
    v91 = v12;
    v92 = v11;
    v83 = v16;
    if (v106 == 1)
    {
      v94 = 0;
      v26 = 0;
    }

    else
    {

      v94 = v25;
      v26 = v24;
    }

    sub_264DEDA20(v25, v24, v107, v108);
    swift_getKeyPath();
    swift_getKeyPath();
    sub_264E24338();

    v27 = v106;
    v28 = v107;
    v29 = v108;
    if (v106 == 1)
    {
      v30 = 0;
      v31 = 0;
    }

    else
    {

      v30 = v28;
      v31 = v29;
    }

    sub_264DEDA20(v105, v27, v28, v29);
    if (qword_27FFB1690 != -1)
    {
      swift_once();
    }

    v32 = sub_264E23FC8();
    __swift_project_value_buffer(v32, qword_27FFB6C08);

    v33 = sub_264E23FA8();
    v34 = sub_264E25298();

    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v105 = v36;
      *v35 = 136315394;
      if (v26)
      {
        v37 = v94;
      }

      else
      {
        v37 = 7104878;
      }

      if (v26)
      {
        v38 = v26;
      }

      else
      {
        v38 = 0xE300000000000000;
      }

      v39 = sub_264DEA000(v37, v38, &v105);

      *(v35 + 4) = v39;
      *(v35 + 12) = 2080;
      if (v31)
      {
        v40 = v30;
      }

      else
      {
        v40 = 7104878;
      }

      if (v31)
      {
        v41 = v31;
      }

      else
      {
        v41 = 0xE300000000000000;
      }

      v42 = sub_264DEA000(v40, v41, &v105);

      *(v35 + 14) = v42;
      _os_log_impl(&dword_264D7D000, v33, v34, "Manager.setUp: fetching data for initialUserAltDSID %s, initialDeviceIdentifier %s", v35, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x26674FCD0](v36, -1, -1);
      MEMORY[0x26674FCD0](v35, -1, -1);
    }

    v43 = v86;
    v44 = v31;
    v45 = v93;
    v46 = v103;
    sub_264DE7C3C(v94, v26, v30, v31, v103);
    v47 = sub_264E25248();
    v48 = *(*(v47 - 8) + 56);
    v79 = v30;
    v78 = v26;
    v49 = v82;
    v48(v82, 1, 1, v47);
    v50 = swift_allocObject();
    swift_weakInit();
    v51 = v43[2];
    v81 = (v43 + 2);
    v86 = v51;
    v52 = v102;
    (v51)(v45, v46, v102);
    sub_264E25228();

    v53 = sub_264E25218();
    v80 = *(v43 + 80);
    v54 = (v80 + 72) & ~v80;
    v55 = swift_allocObject();
    v56 = MEMORY[0x277D85700];
    *(v55 + 2) = v53;
    *(v55 + 3) = v56;
    v57 = v94;
    *(v55 + 4) = v50;
    *(v55 + 5) = v57;
    v58 = v79;
    *(v55 + 6) = v78;
    *(v55 + 7) = v58;
    *(v55 + 8) = v44;
    v59 = v43[4];
    v59(&v55[v54], v45, v52);

    sub_264DDE9C8(0, 0, v49, &unk_264E283F8, v55);

    swift_beginAccess();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB2778, &qword_264E28138);
    v60 = v95;
    sub_264E24308();
    swift_endAccess();
    sub_264D81DCC(&qword_27FFB2898, &qword_27FFB2780, &qword_264E28140, MEMORY[0x277CBCEC8]);
    sub_264DEDBCC();
    v61 = v84;
    v62 = v98;
    sub_264E24388();
    (*(v96 + 8))(v60, v62);
    sub_264D81DCC(&qword_27FFB28B0, &qword_27FFB2880, &qword_264E283D0, MEMORY[0x277CBCBE0]);
    v63 = v87;
    v64 = v85;
    sub_264E24378();
    (*(v97 + 8))(v61, v64);
    sub_264DEDCA4();
    v65 = sub_264E252E8();
    v105 = v65;
    v66 = sub_264E252D8();
    v67 = v100;
    (*(*(v66 - 8) + 56))(v100, 1, 1, v66);
    sub_264D81DCC(&qword_27FFB28B8, &qword_27FFB2888, &qword_264E283D8, MEMORY[0x277CBCC18]);
    sub_264DEC2DC(&qword_27FFB28C0, sub_264DEDCA4, MEMORY[0x277D85228]);
    v69 = v89;
    v68 = v90;
    sub_264E24368();
    sub_264D817BC(v67, &qword_27FFB2878, &qword_264E283C8);

    (*(v99 + 8))(v63, v69);
    v70 = swift_allocObject();
    v71 = v104;
    swift_weakInit();
    v72 = v93;
    v73 = v102;
    (v86)(v93, v103, v102);
    v74 = (v80 + 24) & ~v80;
    v75 = swift_allocObject();
    *(v75 + 16) = v70;
    v59((v75 + v74), v72, v73);
    sub_264D81DCC(&qword_27FFB28C8, &qword_27FFB2890, &unk_264E283E0, MEMORY[0x277CBCD60]);
    v76 = v92;
    v77 = sub_264E24398();

    (*(v91 + 8))(v68, v76);
    *(&v71->isa + v88) = v77;
  }

  return result;
}

uint64_t sub_264DE7124(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[10] = a8;
  v8[11] = v13;
  v8[8] = a6;
  v8[9] = a7;
  v8[6] = a4;
  v8[7] = a5;
  v8[5] = a1;
  sub_264E25228();
  v8[12] = sub_264E25218();
  v10 = sub_264E25208();
  v8[13] = v10;
  v8[14] = v9;

  return MEMORY[0x2822009F8](sub_264DE71D0, v10, v9);
}

uint64_t sub_264DE71D0()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 120) = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    *(v0 + 128) = v2;
    *v2 = v0;
    v2[1] = sub_264DE72E4;
    v3 = *(v0 + 80);
    v4 = *(v0 + 88);
    v5 = *(v0 + 64);
    v6 = *(v0 + 72);
    v7 = *(v0 + 56);

    return sub_264DE8E44(v7, v5, v6, v3, v4);
  }

  else
  {

    **(v0 + 40) = *(v0 + 120) == 0;
    v9 = *(v0 + 8);

    return v9();
  }
}

uint64_t sub_264DE72E4()
{
  v1 = *v0;

  v2 = *(v1 + 112);
  v3 = *(v1 + 104);

  return MEMORY[0x2822009F8](sub_264DEEB08, v3, v2);
}

double sub_264DE7428(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v51 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1E60, &qword_264E26A80);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v45 - v6;
  v8 = sub_264E23AA8();
  v48 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v49 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = v9;
  v10 = 0;
  v11 = 0;
  v12 = 0;
  v13 = 0;
  v14 = a1[1];
  if (v14 != 1)
  {
    v10 = a1[2];
    v11 = a1[3];
    v12 = *a1;

    v13 = v14;
  }

  if (qword_27FFB1690 != -1)
  {
    swift_once();
  }

  v15 = sub_264E23FC8();
  __swift_project_value_buffer(v15, qword_27FFB6C08);

  v16 = sub_264E23FA8();
  v17 = sub_264E25298();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v47 = v7;
    v19 = v18;
    v20 = swift_slowAlloc();
    v46 = v8;
    v21 = v20;
    v52[0] = v20;
    *v19 = 136315394;
    if (v13)
    {
      v22 = v12;
    }

    else
    {
      v22 = 7104878;
    }

    v45 = a3;
    if (v13)
    {
      v23 = v13;
    }

    else
    {
      v23 = 0xE300000000000000;
    }

    v24 = sub_264DEA000(v22, v23, v52);

    *(v19 + 4) = v24;
    *(v19 + 12) = 2080;
    if (v11)
    {
      v25 = v10;
    }

    else
    {
      v25 = 7104878;
    }

    if (v11)
    {
      v26 = v11;
    }

    else
    {
      v26 = 0xE300000000000000;
    }

    v27 = sub_264DEA000(v25, v26, v52);

    *(v19 + 14) = v27;
    a3 = v45;
    _os_log_impl(&dword_264D7D000, v16, v17, "Manager received newUserAltDSID %s newDeviceIdentifier %s; fetching data", v19, 0x16u);
    swift_arrayDestroy();
    v28 = v21;
    v8 = v46;
    MEMORY[0x26674FCD0](v28, -1, -1);
    v7 = v47;
    MEMORY[0x26674FCD0](v19, -1, -1);
  }

  v29 = v49;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v31 = v12;
  v32 = v48;
  if (Strong)
  {
    sub_264E23A98();
    sub_264DE7C3C(v31, v13, v10, v11, v29);

    (*(v32 + 8))(v29, v8);
  }

  v33 = sub_264E25248();
  (*(*(v33 - 8) + 56))(v7, 1, 1, v33);
  v34 = *(v32 + 16);
  v49 = v11;
  v35 = v13;
  v36 = v8;
  v34(v29, a3, v8);
  sub_264E25228();
  v37 = v51;

  v38 = sub_264E25218();
  v39 = (*(v32 + 80) + 72) & ~*(v32 + 80);
  v40 = swift_allocObject();
  v41 = v29;
  v42 = v40;
  v43 = MEMORY[0x277D85700];
  *(v40 + 2) = v38;
  *(v40 + 3) = v43;
  *(v40 + 4) = v37;
  *(v40 + 5) = v31;
  *(v40 + 6) = v35;
  *(v40 + 7) = v10;
  *(v40 + 8) = v49;
  (*(v32 + 32))(&v40[v39], v41, v36);
  sub_264DDE9C8(0, 0, v7, &unk_264E28408, v42);

  return result;
}

uint64_t sub_264DE78C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[10] = a8;
  v8[11] = v13;
  v8[8] = a6;
  v8[9] = a7;
  v8[6] = a4;
  v8[7] = a5;
  v8[5] = a1;
  sub_264E25228();
  v8[12] = sub_264E25218();
  v10 = sub_264E25208();
  v8[13] = v10;
  v8[14] = v9;

  return MEMORY[0x2822009F8](sub_264DE7970, v10, v9);
}

uint64_t sub_264DE7970()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 120) = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    *(v0 + 128) = v2;
    *v2 = v0;
    v2[1] = sub_264DE7A84;
    v3 = *(v0 + 80);
    v4 = *(v0 + 88);
    v5 = *(v0 + 64);
    v6 = *(v0 + 72);
    v7 = *(v0 + 56);

    return sub_264DE8E44(v7, v5, v6, v3, v4);
  }

  else
  {

    **(v0 + 40) = *(v0 + 120) == 0;
    v9 = *(v0 + 8);

    return v9();
  }
}

uint64_t sub_264DE7A84()
{
  v1 = *v0;

  v2 = *(v1 + 112);
  v3 = *(v1 + 104);

  return MEMORY[0x2822009F8](sub_264DE7BC8, v3, v2);
}

uint64_t sub_264DE7BC8()
{

  **(v0 + 40) = *(v0 + 120) == 0;
  v1 = *(v0 + 8);

  return v1();
}

void sub_264DE7C3C(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v6 = v5;
  v152 = a1;
  v136 = sub_264E23AA8();
  v135 = *(v136 - 8);
  MEMORY[0x28223BE20](v136);
  v134 = &v128 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for ActivityNavigationState.DateAndBounds(0);
  MEMORY[0x28223BE20](v12 - 8);
  v133 = &v128 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v148 = type metadata accessor for AllActivityView.Model(0);
  v145 = *(v148 - 8);
  MEMORY[0x28223BE20](v148);
  v137 = &v128 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB2830, &qword_264E282B0);
  MEMORY[0x28223BE20](v15 - 8);
  v141 = &v128 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v139 = &v128 - v18;
  MEMORY[0x28223BE20](v19);
  v144 = &v128 - v20;
  MEMORY[0x28223BE20](v21);
  v23 = &v128 - v22;
  v24 = sub_264E23C38();
  v150 = *(v24 - 8);
  KeyPath = v24;
  MEMORY[0x28223BE20](v24);
  v26 = &v128 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1880, &qword_264E26220);
  MEMORY[0x28223BE20](v27 - 8);
  v140 = &v128 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v149 = &v128 - v30;
  v31 = sub_264E238E8();
  v156 = *(v31 - 8);
  MEMORY[0x28223BE20](v31);
  v132 = &v128 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v33);
  v130 = &v128 - v34;
  MEMORY[0x28223BE20](v35);
  v131 = &v128 - v36;
  MEMORY[0x28223BE20](v37);
  v138 = &v128 - v38;
  MEMORY[0x28223BE20](v39);
  v153 = &v128 - v40;
  if (qword_27FFB1690 != -1)
  {
    swift_once();
  }

  v41 = sub_264E23FC8();
  v42 = __swift_project_value_buffer(v41, qword_27FFB6C08);

  v155 = v42;
  v43 = sub_264E23FA8();
  v44 = sub_264E25298();

  v45 = os_log_type_enabled(v43, v44);
  v154 = v31;
  v147 = a4;
  v146 = a3;
  v143 = a2;
  if (v45)
  {
    v46 = swift_slowAlloc();
    v128 = a5;
    v47 = a3;
    v48 = v46;
    v49 = swift_slowAlloc();
    v129 = v23;
    v50 = v49;
    v157 = v49;
    *v48 = 136315394;
    v142 = v6;
    if (a2)
    {
      v51 = v152;
    }

    else
    {
      v51 = 7104878;
    }

    if (a2)
    {
      v52 = a2;
    }

    else
    {
      v52 = 0xE300000000000000;
    }

    v53 = sub_264DEA000(v51, v52, &v157);

    *(v48 + 4) = v53;
    *(v48 + 12) = 2080;
    if (a4)
    {
      v54 = v47;
    }

    else
    {
      v54 = 7104878;
    }

    a5 = v128;
    if (a4)
    {
      v55 = a4;
    }

    else
    {
      v55 = 0xE300000000000000;
    }

    v56 = sub_264DEA000(v54, v55, &v157);
    v31 = v154;
    v6 = v142;

    *(v48 + 14) = v56;
    _os_log_impl(&dword_264D7D000, v43, v44, "Fetching initial data forUserAltDSID %s deviceIdentifier %s", v48, 0x16u);
    swift_arrayDestroy();
    v57 = v50;
    v23 = v129;
    MEMORY[0x26674FCD0](v57, -1, -1);
    MEMORY[0x26674FCD0](v48, -1, -1);
  }

  v58 = OBJC_IVAR____TtCV16ScreenTimeUICore15AllActivityView7Manager_calendar;
  swift_beginAccess();
  v59 = v150;
  v60 = v6 + v58;
  v61 = KeyPath;
  (*(v150 + 16))(v26, v60, KeyPath);
  v62 = v149;
  Calendar.weeksPreceding(date:weekCount:)(a5, *(v6 + OBJC_IVAR____TtCV16ScreenTimeUICore15AllActivityView7Manager_numberOfWeeksToFetch), v149);
  (*(v59 + 8))(v26, v61);
  v63 = v62;
  v64 = v156;
  v65 = *(v156 + 48);
  if (v65(v63, 1, v31) == 1)
  {
    sub_264D817BC(v63, &qword_27FFB1880, &qword_264E26220);
    v66 = sub_264E23FA8();
    v67 = sub_264E252A8();
    if (os_log_type_enabled(v66, v67))
    {
      v68 = swift_slowAlloc();
      *v68 = 0;
      _os_log_impl(&dword_264D7D000, v66, v67, "Failed to calculate interval - not updating model", v68, 2u);
      MEMORY[0x26674FCD0](v68, -1, -1);
    }

    return;
  }

  KeyPath = v65;
  v69 = *(v64 + 32);
  v70 = v153;
  v69(v153, v63, v31);
  swift_beginAccess();
  sub_264DED7DC(v6 + 16, &v157);
  v71 = v158;
  v72 = v159;
  __swift_project_boxed_opaque_existential_1(&v157, v158);
  v73 = v70;
  v74 = v147;
  (*(v72 + 8))(v73, v152, v143, v146, v147, v71, v72);
  v152 = v69;
  v150 = v64 + 32;
  (*(v145 + 56))(v23, 0, 1, v148);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264D81744(v23, v144, &qword_27FFB2830, &qword_264E282B0);

  v142 = v6;
  sub_264E24348();
  sub_264D817BC(v23, &qword_27FFB2830, &qword_264E282B0);
  __swift_destroy_boxed_opaque_existential_1Tm(&v157);

  v75 = sub_264E23FA8();
  v76 = sub_264E25298();

  if (os_log_type_enabled(v75, v76))
  {
    v77 = swift_slowAlloc();
    v78 = swift_slowAlloc();
    v157 = v78;
    *v77 = 136315138;
    if (v74)
    {
      v79 = v146;
    }

    else
    {
      v79 = 7104878;
    }

    if (v74)
    {
      v80 = v74;
    }

    else
    {
      v80 = 0xE300000000000000;
    }

    v81 = sub_264DEA000(v79, v80, &v157);
    v82 = v154;
    v83 = v156;

    *(v77 + 4) = v81;
    _os_log_impl(&dword_264D7D000, v75, v76, "Model updated successfully with initial data forDeviceIdentifier %s", v77, 0xCu);
    v84 = __swift_destroy_boxed_opaque_existential_1Tm(v78);
    MEMORY[0x26674FCD0](v78, -1, -1, v84);
    MEMORY[0x26674FCD0](v77, -1, -1);

    v85 = v139;
    v86 = v152;
  }

  else
  {

    v85 = v139;
    v82 = v154;
    v86 = v152;
    v83 = v156;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_264E24338();

  if ((*(v145 + 48))(v85, 1, v148))
  {
    sub_264D817BC(v85, &qword_27FFB2830, &qword_264E282B0);
    v87 = v140;
    (*(v83 + 56))(v140, 1, 1, v82);
    v88 = 7104878;
    goto LABEL_33;
  }

  v89 = v137;
  sub_264DED884(v85, v137, type metadata accessor for AllActivityView.Model);
  sub_264D817BC(v85, &qword_27FFB2830, &qword_264E282B0);
  v87 = v140;
  sub_264D81744(v89 + *(v148 + 104), v140, &qword_27FFB1880, &qword_264E26220);
  sub_264DED9C0(v89, type metadata accessor for AllActivityView.Model);
  v88 = 7104878;
  if (KeyPath(v87, 1, v82) == 1)
  {
LABEL_33:
    sub_264D817BC(v87, &qword_27FFB1880, &qword_264E26220);
    v90 = v147;

    v91 = sub_264E23FA8();
    v92 = sub_264E252A8();

    if (os_log_type_enabled(v91, v92))
    {
      v93 = swift_slowAlloc();
      v94 = swift_slowAlloc();
      v157 = v94;
      *v93 = 136315138;
      if (v90)
      {
        v88 = v146;
      }

      v95 = v82;
      if (v90)
      {
        v96 = v90;
      }

      else
      {
        v96 = 0xE300000000000000;
      }

      v97 = sub_264DEA000(v88, v96, &v157);

      *(v93 + 4) = v97;
      _os_log_impl(&dword_264D7D000, v91, v92, "No bounds available - after initial data forDeviceIdentifier %s - not updating navigationState", v93, 0xCu);
      v98 = __swift_destroy_boxed_opaque_existential_1Tm(v94);
      MEMORY[0x26674FCD0](v94, -1, -1, v98);
      MEMORY[0x26674FCD0](v93, -1, -1);

      (*(v83 + 8))(v153, v95);
    }

    else
    {

      (*(v83 + 8))(v153, v82);
    }

    return;
  }

  v99 = v138;
  v86(v138, v87, v82);
  KeyPath = swift_getKeyPath();
  v152 = swift_getKeyPath();
  v150 = sub_264E24328();
  v101 = v100;
  v102 = *(v83 + 16);
  v103 = v131;
  v102(v131, v99, v82);
  v104 = *(type metadata accessor for ActivityNavigationState(0) + 20);
  v105 = v134;
  (*(v135 + 16))(v134, v101 + v104, v136);
  v106 = v130;
  v102(v130, v103, v82);
  v107 = v133;
  sub_264D9173C(v105, v106, v133);
  v108 = v82;
  v109 = *(v83 + 8);
  v156 = v83 + 8;
  v109(v103, v108);
  sub_264D93A84(v107, v101 + v104);
  (v150)(&v157, 0);

  v110 = v132;
  v102(v132, v138, v108);
  v111 = v147;

  v112 = sub_264E23FA8();
  v113 = sub_264E25298();

  if (os_log_type_enabled(v112, v113))
  {
    v114 = swift_slowAlloc();
    v115 = swift_slowAlloc();
    v157 = v115;
    *v114 = 136315394;
    sub_264DEC2DC(&qword_27FFB1CD0, MEMORY[0x277CC88A8], MEMORY[0x277CC88E0]);
    v116 = sub_264E25468();
    v117 = v110;
    v119 = v118;
    v109(v117, v108);
    v120 = sub_264DEA000(v116, v119, &v157);

    *(v114 + 4) = v120;
    *(v114 + 12) = 2080;
    if (v111)
    {
      v121 = v146;
    }

    else
    {
      v121 = 7104878;
    }

    if (v111)
    {
      v122 = v111;
    }

    else
    {
      v122 = 0xE300000000000000;
    }

    v123 = sub_264DEA000(v121, v122, &v157);

    *(v114 + 14) = v123;
    _os_log_impl(&dword_264D7D000, v112, v113, "Bounds updated successfully to %s with initial data forDeviceIdentifier %s", v114, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26674FCD0](v115, -1, -1);
    MEMORY[0x26674FCD0](v114, -1, -1);
  }

  else
  {

    v109(v110, v108);
  }

  v124 = *(v142 + OBJC_IVAR____TtCV16ScreenTimeUICore15AllActivityView7Manager_didFetchInitialData);
  if (v124)
  {
    v125 = *(v142 + OBJC_IVAR____TtCV16ScreenTimeUICore15AllActivityView7Manager_didFetchInitialData + 8);

    v124(v126);
    sub_264D91628(v124, v125);
  }

  v127 = v154;
  v109(v138, v154);
  v109(v153, v127);
}

uint64_t sub_264DE8E44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[17] = a5;
  v6[18] = v5;
  v6[15] = a3;
  v6[16] = a4;
  v6[13] = a1;
  v6[14] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB2830, &qword_264E282B0);
  v6[19] = swift_task_alloc();
  v6[20] = swift_task_alloc();
  v6[21] = swift_task_alloc();
  v7 = type metadata accessor for AllActivityView.Model(0);
  v6[22] = v7;
  v6[23] = *(v7 - 8);
  v6[24] = swift_task_alloc();
  v8 = sub_264E23C38();
  v6[25] = v8;
  v6[26] = *(v8 - 8);
  v6[27] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1880, &qword_264E26220);
  v6[28] = swift_task_alloc();
  v9 = sub_264E238E8();
  v6[29] = v9;
  v6[30] = *(v9 - 8);
  v6[31] = swift_task_alloc();
  sub_264E25228();
  v6[32] = sub_264E25218();
  v11 = sub_264E25208();
  v6[33] = v11;
  v6[34] = v10;

  return MEMORY[0x2822009F8](sub_264DE9080, v11, v10);
}

uint64_t sub_264DE9080()
{
  v52 = v0;
  if (qword_27FFB1690 != -1)
  {
    swift_once();
  }

  v1 = v0[16];
  v2 = sub_264E23FC8();
  v0[35] = __swift_project_value_buffer(v2, qword_27FFB6C08);

  v3 = sub_264E23FA8();
  v4 = sub_264E25298();

  if (os_log_type_enabled(v3, v4))
  {
    v6 = v0[15];
    v5 = v0[16];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v51 = v8;
    *v7 = 136315138;
    v9 = v5 == 0;
    if (v5)
    {
      v10 = v6;
    }

    else
    {
      v10 = 7104878;
    }

    if (v9)
    {
      v11 = 0xE300000000000000;
    }

    else
    {
      v11 = v1;
    }

    v12 = sub_264DEA000(v10, v11, &v51);

    *(v7 + 4) = v12;
    _os_log_impl(&dword_264D7D000, v3, v4, "Fetching remaining data forDeviceIdentifier %s", v7, 0xCu);
    v13 = __swift_destroy_boxed_opaque_existential_1Tm(v8);
    MEMORY[0x26674FCD0](v8, -1, -1, v13);
    MEMORY[0x26674FCD0](v7, -1, -1);
  }

  v14 = v0[29];
  v15 = v0[30];
  v16 = v0[27];
  v17 = v0[28];
  v18 = v0[25];
  v19 = v0[26];
  v20 = v0[17];
  v21 = v0[18];
  v22 = OBJC_IVAR____TtCV16ScreenTimeUICore15AllActivityView7Manager_calendar;
  swift_beginAccess();
  (*(v19 + 16))(v16, v21 + v22, v18);
  Calendar.weeksPreceding(date:weekCount:)(v20, *(v21 + OBJC_IVAR____TtCV16ScreenTimeUICore15AllActivityView7Manager_numberOfWeeksToFetch), v17);
  (*(v19 + 8))(v16, v18);
  if ((*(v15 + 48))(v17, 1, v14) == 1)
  {
    v23 = v0[28];

    sub_264D817BC(v23, &qword_27FFB1880, &qword_264E26220);
    v24 = sub_264E23FA8();
    v25 = sub_264E252A8();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&dword_264D7D000, v24, v25, "Failed to calculate interval - not updating model", v26, 2u);
      MEMORY[0x26674FCD0](v26, -1, -1);
    }

LABEL_19:

    v38 = v0[1];

    return v38();
  }

  v28 = v0[22];
  v27 = v0[23];
  v29 = v0[21];
  (*(v0[30] + 32))(v0[31], v0[28], v0[29]);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264E24338();

  if ((*(v27 + 48))(v29, 1, v28) == 1)
  {
    v30 = v0[21];

    sub_264D817BC(v30, &qword_27FFB2830, &qword_264E282B0);
    v31 = sub_264E23FA8();
    v32 = sub_264E252A8();
    v33 = os_log_type_enabled(v31, v32);
    v35 = v0[30];
    v34 = v0[31];
    v36 = v0[29];
    if (v33)
    {
      v37 = swift_slowAlloc();
      *v37 = 0;
      _os_log_impl(&dword_264D7D000, v31, v32, "Model is nil - not updating model", v37, 2u);
      MEMORY[0x26674FCD0](v37, -1, -1);
    }

    (*(v35 + 8))(v34, v36);
    goto LABEL_19;
  }

  v40 = v0[18];
  sub_264DED774(v0[21], v0[24], type metadata accessor for AllActivityView.Model);
  swift_beginAccess();
  sub_264DED7DC(v40 + 16, (v0 + 2));
  v41 = v0[5];
  v42 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v41);
  v50 = (*(v42 + 16) + **(v42 + 16));
  v43 = swift_task_alloc();
  v0[36] = v43;
  *v43 = v0;
  v43[1] = sub_264DE965C;
  v44 = v0[31];
  v45 = v0[15];
  v46 = v0[16];
  v47 = v0[13];
  v48 = v0[14];
  v49 = v0[24];

  return v50(v49, v44, v47, v48, v45, v46, v41, v42);
}

uint64_t sub_264DE965C()
{
  v2 = *v1;
  *(*v1 + 296) = v0;

  v3 = *(v2 + 272);
  v4 = *(v2 + 264);
  if (v0)
  {
    v5 = sub_264DE9A9C;
  }

  else
  {
    v5 = sub_264DE9798;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_264DE9798()
{
  v26 = v0;
  v2 = v0[23];
  v1 = v0[24];
  v3 = v0[22];
  v5 = v0[19];
  v4 = v0[20];

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  sub_264DED884(v1, v4, type metadata accessor for AllActivityView.Model);
  (*(v2 + 56))(v4, 0, 1, v3);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264D81744(v4, v5, &qword_27FFB2830, &qword_264E282B0);

  sub_264E24348();
  sub_264D817BC(v4, &qword_27FFB2830, &qword_264E282B0);

  v6 = sub_264E23FA8();
  v7 = sub_264E25298();

  if (os_log_type_enabled(v6, v7))
  {
    v9 = v0[15];
    v8 = v0[16];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v25 = v11;
    *v10 = 136315138;
    if (v8)
    {
      v12 = v8;
    }

    else
    {
      v9 = 7104878;
      v12 = 0xE300000000000000;
    }

    v13 = sub_264DEA000(v9, v12, &v25);

    *(v10 + 4) = v13;
    _os_log_impl(&dword_264D7D000, v6, v7, "Model updated successfully with remaining data forDeviceIdentifier %s", v10, 0xCu);
    v14 = __swift_destroy_boxed_opaque_existential_1Tm(v11);
    MEMORY[0x26674FCD0](v11, -1, -1, v14);
    MEMORY[0x26674FCD0](v10, -1, -1);
  }

  v15 = v0[18] + OBJC_IVAR____TtCV16ScreenTimeUICore15AllActivityView7Manager_didFetchRemainingData;
  v16 = *v15;
  v18 = v0[30];
  v17 = v0[31];
  v19 = v0[29];
  v20 = v0[24];
  if (*v15)
  {
    v21 = *(v15 + 8);

    v16(v22);
    sub_264D91628(v16, v21);
  }

  sub_264DED9C0(v20, type metadata accessor for AllActivityView.Model);
  (*(v18 + 8))(v17, v19);

  v23 = v0[1];

  return v23();
}