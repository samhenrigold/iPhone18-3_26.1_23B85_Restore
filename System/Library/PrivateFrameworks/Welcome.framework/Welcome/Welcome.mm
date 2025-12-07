uint64_t sub_273D7E860(uint64_t a1, uint64_t a2)
{
  MEMORY[0x28223BE20](a1);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v2, a1);
  return sub_273DA222C();
}

uint64_t sub_273D7E928@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_273DA1B6C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_273D82D04(&qword_280925828, &qword_273DA2E38);
  MEMORY[0x28223BE20](v7);
  v9 = &v13 - v8;
  v10 = type metadata accessor for WelcomeView(0);
  sub_273D84048(v1 + *(v10 + 44), v9, &qword_280925828, &qword_273DA2E38);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_273D84270(v9, a1, &qword_280925888, &qword_273DA2EF8);
  }

  sub_273DA24BC();
  v12 = sub_273DA1E2C();
  sub_273DA17BC();

  sub_273DA1B5C();
  swift_getAtKeyPath();

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_273D7EB10@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_273DA1B6C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_273D82D04(&qword_280925828, &qword_273DA2E38);
  MEMORY[0x28223BE20](v7);
  v9 = &v13 - v8;
  v10 = type metadata accessor for WelcomeView(0);
  sub_273D84048(v1 + *(v10 + 48), v9, &qword_280925828, &qword_273DA2E38);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_273D84270(v9, a1, &qword_280925888, &qword_273DA2EF8);
  }

  sub_273DA24BC();
  v12 = sub_273DA1E2C();
  sub_273DA17BC();

  sub_273DA1B5C();
  swift_getAtKeyPath();

  return (*(v4 + 8))(v6, v3);
}

uint64_t WelcomeView.init(content:actionHandler:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  *(a4 + 104) = swift_getKeyPath();
  *(a4 + 112) = 0;
  *(a4 + 120) = 0;
  sub_273DA21BC();
  *(a4 + 128) = v12;
  *(a4 + 136) = v13;
  v8 = type metadata accessor for WelcomeView(0);
  v9 = *(v8 + 44);
  *(a4 + v9) = swift_getKeyPath();
  sub_273D82D04(&qword_280925828, &qword_273DA2E38);
  swift_storeEnumTagMultiPayload();
  v10 = *(v8 + 48);
  *(a4 + v10) = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  sub_273D82E38(a1, a4);
  sub_273DA225C();
  result = sub_273D82E9C(a1);
  *(a4 + 40) = v12;
  *(a4 + 48) = v13;
  *(a4 + 56) = v14;
  *(a4 + 96) = 0;
  *(a4 + 64) = 0;
  *(a4 + 72) = 0;
  *(a4 + 80) = a2;
  *(a4 + 88) = a3;
  return result;
}

uint64_t WelcomeView.body.getter@<X0>(uint64_t *a1@<X8>)
{
  *a1 = sub_273DA22DC();
  a1[1] = v3;
  v4 = sub_273D82D04(&qword_280925830, &qword_273DA2E70);
  return sub_273D7EE84(v1, (a1 + *(v4 + 44)));
}

uint64_t sub_273D7EE84@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v23 = a2;
  v3 = sub_273D82D04(&qword_2809258A0, &qword_273DA2F08);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v22 - v7;
  sub_273DA244C();
  v22 = sub_273DA243C();
  sub_273DA242C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v9 = a1[3];
  v10 = a1[4];
  sub_273D8339C(a1, v9);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v12 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v14 = &v22 - v13;
  (*(v10 + 88))(v9, v10);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v16 = sub_273D7E860(AssociatedTypeWitness, AssociatedConformanceWitness);
  (*(v12 + 8))(v14, AssociatedTypeWitness);
  v17 = sub_273DA19EC();
  LOBYTE(v9) = sub_273DA1E7C();
  *v8 = sub_273DA1C1C();
  *(v8 + 1) = 0;
  v8[16] = 0;
  v18 = sub_273D82D04(&qword_2809258A8, &qword_273DA2F10);
  sub_273D7F184(a1, &v8[*(v18 + 44)]);
  sub_273D84048(v8, v6, &qword_2809258A0, &qword_273DA2F08);
  v19 = v23;
  *v23 = v16;
  v19[1] = v17;
  *(v19 + 16) = v9;
  v20 = sub_273D82D04(&qword_2809258B0, &qword_273DA2F18);
  sub_273D84048(v6, v19 + *(v20 + 48), &qword_2809258A0, &qword_273DA2F08);

  sub_273D84218(v8, &qword_2809258A0);
  sub_273D84218(v6, &qword_2809258A0);
}

uint64_t sub_273D7F184@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v149 = sub_273D82D04(&qword_2809258B8, &qword_273DA2F20);
  MEMORY[0x28223BE20](v149);
  v5 = &v133 - v4;
  v151 = sub_273D82D04(&qword_2809258C0, &qword_273DA2F28);
  MEMORY[0x28223BE20](v151);
  v137 = &v133 - v6;
  v7 = sub_273D82D04(&qword_2809258C8, &qword_273DA2F30);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v152 = &v133 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v11 = &v133 - v10;
  v12 = type metadata accessor for WelcomeView(0);
  v154 = *(v12 - 8);
  MEMORY[0x28223BE20](v12 - 8);
  v160 = v13;
  v155 = &v133 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v144 = sub_273D82D04(&qword_280925888, &qword_273DA2EF8);
  MEMORY[0x28223BE20](v144);
  v143 = &v133 - v14;
  v157 = sub_273D82D04(&qword_2809258D0, &qword_273DA2F38);
  MEMORY[0x28223BE20](v157);
  v138 = &v133 - v15;
  v16 = sub_273D82D04(&qword_2809258D8, &qword_273DA2F40);
  v141 = *(v16 - 8);
  v142 = v16;
  MEMORY[0x28223BE20](v16);
  v158 = &v133 - v17;
  v145 = sub_273D82D04(&qword_2809258E0, &qword_273DA2F48);
  v140 = *(v145 - 8);
  MEMORY[0x28223BE20](v145);
  v139 = &v133 - v18;
  v19 = sub_273D82D04(&qword_2809258E8, &qword_273DA2F50);
  v20 = MEMORY[0x28223BE20](v19 - 8);
  v150 = &v133 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v161 = &v133 - v22;
  v23 = sub_273D82D04(&qword_2809258F0, &qword_273DA2F58);
  v24 = MEMORY[0x28223BE20](v23 - 8);
  v148 = &v133 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v27 = &v133 - v26;
  sub_273DA244C();
  v147 = sub_273DA243C();
  sub_273DA242C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v28 = *(a1 + 24);
  v29 = *(a1 + 32);
  sub_273D8339C(a1, v28);
  (*(v29 + 152))(v28, v29);
  _s7Welcome0A7ContentPAAE15headerAlignment7SwiftUI08VerticalD0Vvg_0();
  if (sub_273DA1B9C())
  {
    v146 = 1;
  }

  else
  {
    v30 = *(a1 + 24);
    v31 = *(a1 + 32);
    sub_273D8339C(a1, v30);
    (*(v31 + 152))(v30, v31);
    sub_273DA1BBC();
    v32 = sub_273DA1B9C();
    LODWORD(v146) = v32 & 1;
    HIDWORD(v146) = v32 ^ 1;
  }

  v33 = *(a1 + 24);
  v34 = *(a1 + 32);
  sub_273D8339C(a1, v33);
  v35 = v11;
  if ((*(v34 + 168))(v33, v34))
  {
    sub_273D802CC(v163);
    memcpy(v164, v163, 0xB1uLL);
    nullsub_1();
    memcpy(v165, v164, 0xB1uLL);
  }

  else
  {
    sub_273D833E0(v165);
  }

  *v27 = sub_273DA1C1C();
  *(v27 + 1) = 0;
  v36 = 1;
  v27[16] = 1;
  v37 = sub_273D82D04(&qword_2809258F8, &qword_273DA2F60);
  sub_273D80590(a1, &v27[*(v37 + 44)]);
  v38 = *(a1 + 24);
  v39 = *(a1 + 32);
  sub_273D8339C(a1, v38);
  v40 = *((*(v39 + 96))(v38, v39) + 16);

  v153 = a2;
  v156 = v35;
  v159 = v27;
  if (v40)
  {
    v136 = v5;
    v41 = *(a1 + 24);
    v42 = *(a1 + 32);
    sub_273D8339C(a1, v41);
    v43 = (*(v42 + 96))(v41, v42);
    v44 = *(a1 + 128);
    v45 = *(a1 + 136);
    v163[0] = v44;
    v135 = v45;
    v163[1] = v45;
    v134 = sub_273D82D04(&qword_280925900, &qword_273DA2F68);
    sub_273DA21EC();
    v46 = v164[0];
    v47 = v164[1];
    v48 = v164[2];
    v133 = v43;
    v164[0] = v43;
    v164[1] = v46;
    v164[2] = v47;
    v164[3] = v48;
    if (qword_280925810 != -1)
    {
      swift_once();
    }

    v49 = sub_273D82D04(&qword_280925908, &qword_273DA3C00);
    sub_273D833F0(v49, qword_280927820);
    sub_273D83428();
    sub_273D84664(&qword_280925918);
    v50 = v138;
    sub_273DA1FEC();

    v164[0] = v44;
    v164[1] = v135;
    sub_273DA21CC();
    sub_273DA22DC();
    sub_273DA18EC();
    v51 = (v50 + *(sub_273D82D04(&qword_280925920, &qword_273DA2F70) + 36));
    v52 = v167;
    *v51 = v166;
    v51[1] = v52;
    v51[2] = v168;
    v53 = sub_273DA1E6C();
    sub_273DA181C();
    v55 = v54;
    v57 = v56;
    v59 = v58;
    v61 = v60;
    v62 = v50 + *(sub_273D82D04(&qword_280925928, &qword_273DA2F78) + 36);
    *v62 = v53;
    *(v62 + 8) = v55;
    *(v62 + 16) = v57;
    *(v62 + 24) = v59;
    *(v62 + 32) = v61;
    *(v62 + 40) = 0;
    v63 = sub_273DA1EAC();
    sub_273DA181C();
    v64 = v50 + *(v157 + 36);
    *v64 = v63;
    *(v64 + 8) = v65;
    *(v64 + 16) = v66;
    *(v64 + 24) = v67;
    *(v64 + 32) = v68;
    *(v64 + 40) = 0;
    v69 = v143;
    sub_273D7E928(v143);
    v135 = type metadata accessor for WelcomeView;
    v70 = v155;
    sub_273D83C48(a1, v155, type metadata accessor for WelcomeView);
    v71 = (*(v154 + 80) + 16) & ~*(v154 + 80);
    v72 = swift_allocObject();
    sub_273D8348C(v70, v72 + v71);
    v134 = sub_273D83914(&unk_280925930);
    v133 = sub_273D83640();
    v73 = v144;
    sub_273DA20CC();

    sub_273D84218(v69, &qword_280925888);
    sub_273D84218(v50, &qword_2809258D0);
    sub_273D7EB10(v69);
    sub_273D83C48(a1, v70, v135);
    v74 = swift_allocObject();
    sub_273D8348C(v70, v74 + v71);
    v164[0] = v157;
    v164[1] = v73;
    v164[2] = v134;
    v164[3] = v133;
    swift_getOpaqueTypeConformance2();
    v75 = v139;
    v76 = v142;
    v77 = v158;
    sub_273DA20CC();

    sub_273D84218(v69, &qword_280925888);
    (*(v141 + 8))(v77, v76);
    v78 = v161;
    v79 = v145;
    (*(v140 + 32))(v161, v75, v145);
    v36 = 0;
    v80 = v156;
    v5 = v136;
    v27 = v159;
  }

  else
  {
    v78 = v161;
    v80 = v35;
    v79 = v145;
  }

  sub_273D83074(v78, v36, 1, v79);
  if (*(a1 + 96) == 1)
  {
    v81 = *(a1 + 24);
    v82 = *(a1 + 32);
    sub_273D8339C(a1, v81);
    v83 = v137;
    (*(v82 + 72))(v81, v82);
    v84 = *(a1 + 40);
    v85 = *(a1 + 48);
    v86 = *(a1 + 56);
    v87 = v155;
    sub_273D83C48(a1, v155, type metadata accessor for WelcomeView);
    v88 = (*(v154 + 80) + 16) & ~*(v154 + 80);
    v89 = swift_allocObject();
    sub_273D8348C(v87, v89 + v88);
    v90 = type metadata accessor for ContinueButton(0);
    v91 = v83 + *(v90 + 20);
    *v91 = v84;
    *(v91 + 8) = v85;
    *(v91 + 16) = v86;
    v92 = (v83 + *(v90 + 24));
    *v92 = sub_273D83BD4;
    v92[1] = v89;

    LOBYTE(v84) = sub_273DA1E6C();
    sub_273DA181C();
    v94 = v93;
    v96 = v95;
    v98 = v97;
    v100 = v99;
    v101 = v83 + *(sub_273D82D04(&qword_280925970, &qword_273DA2F88) + 36);
    *v101 = v84;
    *(v101 + 8) = v94;
    *(v101 + 16) = v96;
    *(v101 + 24) = v98;
    *(v101 + 32) = v100;
    *(v101 + 40) = 0;
    LOBYTE(v84) = sub_273DA1EAC();
    sub_273DA181C();
    v102 = v83 + *(v151 + 36);
    *v102 = v84;
    *(v102 + 8) = v103;
    *(v102 + 16) = v104;
    *(v102 + 24) = v105;
    *(v102 + 32) = v106;
    *(v102 + 40) = 0;
    sub_273D84048(v83, v5, &qword_2809258C0, &qword_273DA2F28);
    swift_storeEnumTagMultiPayload();
    sub_273D82D04(&qword_280925958, &qword_273DA2F80);
    sub_273D83914(&unk_280925960);
    sub_273D83834();
    v107 = v156;
    sub_273DA1C5C();
    sub_273D84218(v83, &qword_2809258C0);
  }

  else
  {
    v108 = *(a1 + 24);
    v109 = *(a1 + 32);
    sub_273D8339C(a1, v108);
    (*(v109 + 112))(v164, v108, v109);
    if (v164[2] || (v110 = *(a1 + 24), v111 = *(a1 + 32), sub_273D8339C(a1, v110), (*(v111 + 120))(v164, v110, v111), v164[2]) || (v112 = *(a1 + 24), v113 = *(a1 + 32), sub_273D8339C(a1, v112), (*(v113 + 128))(v164, v112, v113), v164[2]))
    {

      sub_273D82E38(a1, v163);
      v114 = *(a1 + 88);
      v163[5] = *(a1 + 80);
      v163[6] = v114;
      sub_273D839C8(v163[5], v114);
      v115 = sub_273DA1E6C();
      sub_273DA181C();
      LOBYTE(v163[7]) = v115;
      v163[8] = v116;
      v163[9] = v117;
      v163[10] = v118;
      v163[11] = v119;
      LOBYTE(v163[12]) = 0;
      v120 = sub_273DA1EAC();
      sub_273DA181C();
      LOBYTE(v163[13]) = v120;
      v163[14] = v121;
      v163[15] = v122;
      v163[16] = v123;
      v163[17] = v124;
      LOBYTE(v163[18]) = 0;
      memcpy(v164, v163, 0x91uLL);
    }

    else
    {
      bzero(v164, 0x91uLL);
    }

    sub_273D84048(v164, v5, &qword_280925958, &qword_273DA2F80);
    swift_storeEnumTagMultiPayload();
    sub_273D82D04(&qword_280925958, &qword_273DA2F80);
    sub_273D83914(&unk_280925960);
    sub_273D83834();
    sub_273DA1C5C();
    sub_273D84218(v164, &qword_280925958);
    v107 = v80;
  }

  memcpy(v162, v165, sizeof(v162));
  v125 = v148;
  sub_273D84048(v27, v148, &qword_2809258F0, &qword_273DA2F58);
  v126 = v161;
  v127 = v150;
  sub_273D84048(v161, v150, &qword_2809258E8, &qword_273DA2F50);
  v128 = v152;
  sub_273D84048(v107, v152, &qword_2809258C8, &qword_273DA2F30);
  v129 = v153;
  *v153 = 0;
  v130 = BYTE4(v146);
  v129[8] = v146;
  v129[9] = v130 & 1;
  memcpy(v163, v162, 0xB1uLL);
  memcpy(v129 + 16, v162, 0xB1uLL);
  v131 = sub_273D82D04(&qword_2809259B0, &qword_273DA2FA0);
  sub_273D84048(v125, &v129[v131[16]], &qword_2809258F0, &qword_273DA2F58);
  sub_273D84048(v127, &v129[v131[20]], &qword_2809258E8, &qword_273DA2F50);
  sub_273D84048(v128, &v129[v131[24]], &qword_2809258C8, &qword_273DA2F30);
  sub_273D84048(v163, v164, &qword_2809259B8, &qword_273DA2FA8);
  sub_273D84218(v107, &qword_2809258C8);
  sub_273D84218(v126, &qword_2809258E8);
  sub_273D84218(v159, &qword_2809258F0);
  sub_273D84218(v128, &qword_2809258C8);
  sub_273D84218(v127, &qword_2809258E8);
  sub_273D84218(v125, &qword_2809258F0);
  memcpy(v164, v162, 0xB1uLL);
  sub_273D84218(v164, &qword_2809259B8);
}

void *sub_273D802CC@<X0>(void *a1@<X8>)
{
  v3 = v1[3];
  v4 = v1[4];
  sub_273D8339C(v1, v3);
  if ((*(v4 + 168))(v3, v4))
  {
    v5 = v1[3];
    v6 = v1[4];
    sub_273D8339C(v1, v5);
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    v8 = *(AssociatedTypeWitness - 8);
    MEMORY[0x28223BE20](AssociatedTypeWitness);
    v10 = &v26[-1] - v9;
    (*(v6 + 80))(v5, v6);
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v12 = sub_273D7E860(AssociatedTypeWitness, AssociatedConformanceWitness);
    (*(v8 + 8))(v10, AssociatedTypeWitness);
    v13 = sub_273DA1E7C();
    sub_273DA181C();
    v15 = v14;
    v17 = v16;
    v19 = v18;
    v21 = v20;
    sub_273DA22DC();
    sub_273DA1A7C();
    v27[120] = 0;
    memcpy(&v27[7], v28, 0x70uLL);
    v22 = [objc_opt_self() secondarySystemBackgroundColor];
    v23 = sub_273DA213C();
    LOBYTE(v6) = sub_273DA1E7C();
    v26[0] = v12;
    LOBYTE(v26[1]) = v13;
    v26[2] = v15;
    v26[3] = v17;
    v26[4] = v19;
    v26[5] = v21;
    LOBYTE(v26[6]) = 0;
    memcpy(&v26[6] + 1, v27, 0x77uLL);
    v26[21] = v23;
    LOBYTE(v26[22]) = v6;
    nullsub_1();
    memcpy(v29, v26, 0xB1uLL);
  }

  else
  {
    sub_273D83C38(v29);
  }

  return memcpy(a1, v29, 0xB1uLL);
}

uint64_t sub_273D80590@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v61 = a2;
  v3 = sub_273DA1D6C();
  v62 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v60 = &v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = sub_273DA1C8C();
  v56 = *(v58 - 8);
  MEMORY[0x28223BE20](v58);
  v53 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for WelcomeListItem(0);
  v63 = *(v6 - 8);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = sub_273D82D04(&qword_2809259C0, &qword_273DA2FB0);
  v45 = *(v47 - 8);
  MEMORY[0x28223BE20](v47);
  v10 = &v42 - v9;
  v43 = sub_273D82D04(&qword_2809259C8, &qword_273DA2FB8);
  MEMORY[0x28223BE20](v43);
  v46 = &v42 - v11;
  v50 = sub_273D82D04(&qword_2809259D0, &qword_273DA2FC0);
  MEMORY[0x28223BE20](v50);
  v48 = &v42 - v12;
  v55 = sub_273D82D04(&qword_2809259D8, &qword_273DA2FC8);
  v51 = *(v55 - 8);
  MEMORY[0x28223BE20](v55);
  v49 = &v42 - v13;
  v59 = sub_273D82D04(&qword_2809259E0, &qword_273DA2FD0);
  v57 = *(v59 - 8);
  MEMORY[0x28223BE20](v59);
  v54 = &v42 - v14;
  sub_273DA244C();
  v52 = sub_273DA243C();
  sub_273DA242C();
  isCurrentExecutor = swift_task_isCurrentExecutor();
  if ((isCurrentExecutor & 1) == 0)
  {
    isCurrentExecutor = swift_task_reportUnexpectedExecutor();
  }

  MEMORY[0x28223BE20](isCurrentExecutor);
  sub_273D82D04(&qword_2809259E8, &qword_273DA2FD8);
  sub_273D84664(&unk_2809259F0);
  v44 = v10;
  sub_273DA1F1C();
  v16 = a1[3];
  v17 = a1[4];
  sub_273D8339C(a1, v16);
  result = (*(v17 + 136))(v16, v17);
  v19 = result;
  v20 = *(result + 16);
  if (v20)
  {
    v42 = v3;
    v21 = 0;
    v22 = result + ((*(v63 + 80) + 32) & ~*(v63 + 80));
    while (v21 < *(v19 + 16))
    {
      sub_273D83C48(v22 + *(v63 + 72) * v21, v8, type metadata accessor for WelcomeListItem);
      sub_273DA243C();
      sub_273DA242C();
      if ((swift_task_isCurrentExecutor() & 1) == 0)
      {
        swift_task_reportUnexpectedExecutor();
      }

      if (*(v8 + 5))
      {

        sub_273D83CA0(v8);
        goto LABEL_15;
      }

      v23 = *(v8 + 6);

      sub_273D83CA0(v8);
      if (v23)
      {

LABEL_15:

        v24 = 1;
LABEL_16:
        v3 = v42;
        goto LABEL_17;
      }

      ++v21;

      if (v20 == v21)
      {

        v24 = 0;
        goto LABEL_16;
      }
    }

    __break(1u);
  }

  else
  {

    v24 = 0;
LABEL_17:
    v25 = v46;
    (*(v45 + 32))(v46, v44, v47);
    v25[*(v43 + 36)] = v24;
    sub_273DA22EC();
    sub_273DA1A7C();
    v26 = v25;
    v27 = v48;
    sub_273D84270(v26, v48, &qword_2809259C8, &qword_273DA2FB8);
    v28 = v50;
    memcpy((v27 + *(v50 + 36)), __src, 0x70uLL);
    v29 = sub_273D83CFC();
    v30 = v49;
    sub_273DA207C();
    sub_273D84218(v27, &qword_2809259D0);
    v31 = v53;
    sub_273DA1C7C();
    v32 = sub_273DA1E5C();
    sub_273DA1E4C();
    sub_273DA1E4C();
    v33 = sub_273DA1E4C();
    v34 = v60;
    v35 = v55;
    v36 = v54;
    if (v33 != v32)
    {
      sub_273DA1E4C();
    }

    v64 = v28;
    v65 = v29;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    sub_273DA204C();
    (*(v56 + 8))(v31, v58);
    (*(v51 + 8))(v30, v35);
    sub_273DA1D5C();
    sub_273D82D04(&qword_280925A18, &qword_273DA4050);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_273DA2DD0;
    v39 = sub_273DA1E5C();
    *(inited + 32) = v39;
    v40 = sub_273DA1E3C();
    *(inited + 33) = v40;
    sub_273DA1E4C();
    sub_273DA1E4C();
    if (sub_273DA1E4C() != v39)
    {
      sub_273DA1E4C();
    }

    sub_273DA1E4C();
    if (sub_273DA1E4C() != v40)
    {
      sub_273DA1E4C();
    }

    v64 = v35;
    v65 = OpaqueTypeConformance2;
    swift_getOpaqueTypeConformance2();
    v41 = v59;
    sub_273DA200C();
    (*(v62 + 8))(v34, v3);
    (*(v57 + 8))(v36, v41);
  }

  return result;
}

uint64_t sub_273D80F80@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v66 = a2;
  v3 = sub_273D82D04(&qword_280925A20, &qword_273DA2FE0);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v68 = &v57 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v71 = &v57 - v6;
  v7 = sub_273D82D04(&qword_280925A28, &qword_273DA2FE8);
  MEMORY[0x28223BE20](v7);
  v9 = &v57 - v8;
  v10 = sub_273D82D04(&qword_280925A30, &qword_273DA2FF0);
  v67 = *(v10 - 8);
  v11 = MEMORY[0x28223BE20](v10);
  v70 = &v57 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v14 = &v57 - v13;
  v15 = sub_273D82D04(&qword_280925A38, &qword_273DA2FF8);
  v16 = MEMORY[0x28223BE20](v15 - 8);
  v69 = &v57 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v19 = &v57 - v18;
  sub_273DA244C();
  v65 = sub_273DA243C();
  sub_273DA242C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v20 = a1[3];
  v21 = a1[4];
  sub_273D8339C(a1, v20);
  if ((*(v21 + 168))(v20, v21))
  {
    v22 = sub_273D82D04(&qword_280925A40, &qword_273DA3000);
    v23 = v19;
    v24 = 1;
  }

  else
  {
    sub_273D816A8(v19);
    v22 = sub_273D82D04(&qword_280925A40, &qword_273DA3000);
    v23 = v19;
    v24 = 0;
  }

  sub_273D83074(v23, v24, 1, v22);
  sub_273D81BC0(a1, v9);
  sub_273D83E94();
  sub_273DA229C();
  v25 = a1[3];
  v26 = a1[4];
  sub_273D8339C(a1, v25);
  v27 = *((*(v26 + 136))(v25, v26) + 16);

  if (v27)
  {
    sub_273D82774(&v72);
    v63 = v73;
    v64 = v72;
    v28 = sub_273D829FC();
    v29 = sub_273D829FC();
    v30 = 0x4043000000000000;
    if (v28)
    {
      v31 = 0x4034000000000000;
    }

    else
    {
      v31 = 0x4043000000000000;
    }

    if (v29)
    {
      v30 = 0x4034000000000000;
    }

    v61 = v30;
    v62 = v31;
    v60 = 0x4024000000000000;
  }

  else
  {
    v60 = 0;
    v61 = 0;
    v62 = 0;
    v63 = 255;
    v64 = 0;
  }

  v32 = a1[3];
  v33 = a1[4];
  sub_273D8339C(a1, v32);
  (*(v33 + 152))(v32, v33);
  _s7Welcome0A7ContentPAAE15headerAlignment7SwiftUI08VerticalD0Vvg_0();
  v34 = sub_273DA1B9C();
  v35 = v71;
  if (v34 & 1) != 0 || (v36 = a1[3], v37 = a1[4], sub_273D8339C(a1, v36), (*(v37 + 152))(v36, v37), sub_273DA1BAC(), (sub_273DA1B9C()))
  {
    v72 = sub_273DA210C();
    v38 = sub_273DA222C();
    v72 = 0;
    v73 = 1;
    v74 = v38;
    sub_273DA189C();
    sub_273D82D04(&qword_280925A90, &qword_273DA3030);
    sub_273D840B8();
    sub_273DA1FFC();

    v39 = 0;
  }

  else
  {
    v39 = 1;
  }

  v40 = sub_273D82D04(&qword_280925A80, &qword_273DA3020);
  sub_273D83074(v35, v39, 1, v40);
  v59 = v19;
  v41 = v69;
  sub_273D84048(v19, v69, &qword_280925A38, &qword_273DA2FF8);
  v42 = v67;
  v43 = *(v67 + 16);
  v44 = v70;
  v58 = v14;
  v43(v70, v14, v10);
  v45 = v35;
  v46 = v68;
  sub_273D84048(v45, v68, &qword_280925A20, &qword_273DA2FE0);
  v47 = v66;
  sub_273D84048(v41, v66, &qword_280925A38, &qword_273DA2FF8);
  v48 = sub_273D82D04(&qword_280925A88, &qword_273DA3028);
  v43((v47 + v48[12]), v44, v10);
  v49 = v47 + v48[16];
  v51 = v63;
  v50 = v64;
  *v49 = v64;
  *(v49 + 8) = v51;
  v52 = v60;
  v53 = v61;
  v54 = v62;
  *(v49 + 16) = v60;
  *(v49 + 24) = v54;
  *(v49 + 32) = v52;
  *(v49 + 40) = v53;
  *(v49 + 48) = 0;
  sub_273D84048(v46, v47 + v48[20], &qword_280925A20, &qword_273DA2FE0);
  sub_273D84090(v50, v51);
  sub_273D84218(v71, &qword_280925A20);
  v55 = *(v42 + 8);
  v55(v58, v10);
  sub_273D84218(v59, &qword_280925A38);
  sub_273D84218(v68, &qword_280925A20);
  sub_273D840A4(v50, v51);
  v55(v70, v10);
  sub_273D84218(v69, &qword_280925A38);
}

uint64_t sub_273D816A8@<X0>(uint64_t a1@<X8>)
{
  v27 = a1;
  v2 = sub_273D82D04(&qword_280925B60, &qword_273DA30F8);
  MEMORY[0x28223BE20](v2 - 8);
  v24 = &v22 - v3;
  v25 = sub_273D82D04(&qword_280925B68, &qword_273DA3100);
  MEMORY[0x28223BE20](v25);
  v5 = &v22 - v4;
  v6 = sub_273D82D04(&qword_280925B70, &qword_273DA3108);
  MEMORY[0x28223BE20](v6 - 8);
  v23 = &v22 - v7;
  v26 = sub_273D82D04(&qword_280925B78, &qword_273DA3110);
  MEMORY[0x28223BE20](v26);
  v9 = &v22 - v8;
  v11 = v1[3];
  v10 = v1[4];
  sub_273D8339C(v1, v11);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v13 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v15 = &v22 - v14;
  (*(v10 + 80))(v11, v10);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v17 = sub_273D7E860(AssociatedTypeWitness, AssociatedConformanceWitness);
  (*(v13 + 8))(v15, AssociatedTypeWitness);
  sub_273DA22DC();
  sub_273DA1A7C();
  LOBYTE(v10) = sub_273DA1E8C();
  v30[168] = 1;
  v28[0] = v17;
  memcpy(&v28[1], v29, 0x70uLL);
  LOBYTE(v28[15]) = v10;
  memset(&v28[16], 0, 32);
  LOBYTE(v28[20]) = 1;
  sub_273D82D04(&qword_280925B80, &qword_273DA3118);
  sub_273D846A4();
  v18 = v24;
  sub_273DA201C();
  memcpy(v30, v28, 0xA1uLL);
  sub_273D84218(v30, &qword_280925B80);
  sub_273D84270(v18, v5, &qword_280925B60, &qword_273DA30F8);
  v5[*(v25 + 36)] = 1;
  sub_273D847B4();
  v19 = v23;
  sub_273DA206C();
  sub_273D84218(v5, &qword_280925B68);
  v28[0] = sub_273DA210C();
  v20 = sub_273DA222C();
  sub_273D84270(v19, v9, &qword_280925B70, &qword_273DA3108);
  *&v9[*(v26 + 36)] = v20;
  sub_273DA189C();
  sub_273D84950();
  sub_273DA1FFC();
  return sub_273D84218(v9, &qword_280925B78);
}

uint64_t sub_273D81B30()
{
  sub_273DA244C();
  sub_273DA243C();
  sub_273DA242C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }
}

uint64_t sub_273D81BC0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v25 = a2;
  v22 = sub_273D82D04(&qword_280925A60, &qword_273DA3010);
  MEMORY[0x28223BE20](v22);
  v4 = &v19 - v3;
  v24 = sub_273D82D04(&qword_280925AC0, &qword_273DA3038);
  v5 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v7 = &v19 - v6;
  v20 = sub_273D82D04(&qword_280925A58, &qword_273DA3008);
  MEMORY[0x28223BE20](v20);
  v9 = &v19 - v8;
  v23 = sub_273D82D04(&qword_280925A28, &qword_273DA2FE8);
  MEMORY[0x28223BE20](v23);
  v11 = &v19 - v10;
  sub_273DA244C();
  v21 = sub_273DA243C();
  sub_273DA242C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  *v4 = sub_273DA1C1C();
  *(v4 + 1) = 0;
  v4[16] = 1;
  v12 = sub_273D82D04(&qword_280925AC8, &qword_273DA3040);
  sub_273D81F84(a1, &v4[*(v12 + 44)]);
  sub_273DA189C();
  sub_273D84664(&unk_280925A68);
  sub_273DA1FFC();
  sub_273D84218(v4, &qword_280925A60);
  v13 = sub_273D829FC();
  v14 = sub_273D829FC();
  if (v13)
  {
    v15 = 0x4034000000000000;
  }

  else
  {
    v15 = 0x4043000000000000;
  }

  if (v14)
  {
    v16 = 0x4034000000000000;
  }

  else
  {
    v16 = 0x4043000000000000;
  }

  (*(v5 + 32))(v9, v7, v24);
  v17 = &v9[*(v20 + 36)];
  *v17 = 0x4024000000000000;
  *(v17 + 1) = v15;
  *(v17 + 2) = 0x4024000000000000;
  *(v17 + 3) = v16;
  v17[32] = 0;
  sub_273DA22EC();
  sub_273DA1A7C();
  sub_273D84270(v9, v11, &qword_280925A58, &qword_273DA3008);
  memcpy(&v11[*(v23 + 36)], __src, 0x70uLL);
  sub_273D84270(v11, v25, &qword_280925A28, &qword_273DA2FE8);
}

uint64_t sub_273D81F84@<X0>(void *a1@<X0>, char *a2@<X8>)
{
  v75 = a2;
  v71 = sub_273D82D04(&qword_280925AD0, &qword_273DA3048);
  MEMORY[0x28223BE20](v71);
  v70 = &v63 - v3;
  v74 = sub_273D82D04(&qword_280925AD8, &qword_273DA3050);
  v73 = *(v74 - 8);
  v4 = MEMORY[0x28223BE20](v74);
  v72 = &v63 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v76 = &v63 - v6;
  v65 = sub_273D82D04(&qword_280925AE0, &qword_273DA3058);
  MEMORY[0x28223BE20](v65);
  v64 = &v63 - v7;
  v69 = sub_273D82D04(&qword_280925AE8, &qword_273DA3060);
  v68 = *(v69 - 8);
  v8 = MEMORY[0x28223BE20](v69);
  v67 = &v63 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v77 = &v63 - v10;
  sub_273DA244C();
  v66 = sub_273DA243C();
  sub_273DA242C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v11 = a1[3];
  v12 = a1[4];
  sub_273D8339C(a1, v11);
  v13 = (*(v12 + 56))(v11, v12);
  v15 = v14;
  LOBYTE(v12) = v16;
  sub_273DA1EFC();
  v17 = sub_273DA1F5C();
  v19 = v18;
  v21 = v20;

  sub_273D842B8(v13, v15, v12 & 1);

  sub_273DA211C();
  v22 = sub_273DA1F3C();
  v24 = v23;
  v26 = v25;

  sub_273D842B8(v17, v19, v21 & 1);

  sub_273DA1ECC();
  v27 = sub_273DA1F2C();
  v29 = v28;
  LOBYTE(v13) = v30;
  v32 = v31;
  sub_273D842B8(v22, v24, v26 & 1);

  *&v82 = v27;
  *(&v82 + 1) = v29;
  LOBYTE(v83) = v13 & 1;
  *(&v83 + 1) = v32;
  v33 = v64;
  sub_273DA206C();
  sub_273D842B8(v27, v29, v13 & 1);

  if (qword_280925810 != -1)
  {
    swift_once();
  }

  v34 = sub_273D82D04(&qword_280925908, &qword_273DA3C00);
  sub_273D833F0(v34, qword_280927820);
  sub_273D842C8();
  sub_273D84664(&qword_280925918);
  sub_273DA1FEC();
  sub_273D84218(v33, &qword_280925AE0);
  v35 = a1[3];
  v36 = a1[4];
  sub_273D8339C(a1, v35);
  v37 = (*(v36 + 64))(v35, v36);
  v39 = v38;
  v41 = v40;
  v43 = v42;
  v44 = sub_273DA1EFC();
  KeyPath = swift_getKeyPath();
  v46 = sub_273DA212C();
  v47 = swift_getKeyPath();
  *&v78 = v37;
  *(&v78 + 1) = v39;
  *&v79 = v41;
  *(&v79 + 1) = v43;
  *&v80 = KeyPath;
  *(&v80 + 1) = v44;
  *&v81 = v47;
  *(&v81 + 1) = v46;
  sub_273D82D04(&qword_280925B00, &qword_273DA30C8);
  sub_273D84478();
  v48 = v70;
  sub_273DA206C();
  v82 = v78;
  v83 = v79;
  v84 = v80;
  v85 = v81;
  sub_273D84218(&v82, &qword_280925B00);
  sub_273D8486C(&unk_280925B50);
  v49 = v76;
  sub_273DA1FEC();
  sub_273D84218(v48, &qword_280925AD0);
  v50 = v68;
  v51 = *(v68 + 16);
  v52 = v67;
  v53 = v69;
  v51(v67, v77, v69);
  v54 = v73;
  v71 = *(v73 + 16);
  v55 = v72;
  v56 = v49;
  v57 = v74;
  v71(v72, v56, v74);
  v58 = v75;
  v51(v75, v52, v53);
  v59 = sub_273D82D04(&qword_280925B58, &qword_273DA30F0);
  v71(&v58[*(v59 + 48)], v55, v57);
  v60 = *(v54 + 8);
  v60(v76, v57);
  v61 = *(v50 + 8);
  v61(v77, v53);
  v60(v55, v57);
  v61(v52, v53);
}

uint64_t sub_273D82774@<X0>(uint64_t a1@<X8>)
{
  v3 = v1[3];
  v4 = v1[4];
  sub_273D8339C(v1, v3);
  (*(v4 + 144))(&v10, v3, v4);
  v5 = v1[3];
  v6 = v1[4];
  sub_273D8339C(v1, v5);
  (*(v6 + 136))(v5, v6);
  sub_273D84170();
  sub_273D841C4();
  result = sub_273DA1C5C();
  *a1 = v8;
  *(a1 + 8) = v9;
  return result;
}

uint64_t sub_273D82874(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_273DA244C();
  sub_273DA243C();
  sub_273DA242C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_273D82D04(&qword_280925900, &qword_273DA2F68);
  sub_273DA21DC();
}

uint64_t sub_273D8294C(void *a1)
{
  type metadata accessor for WelcomeDataManager(0);
  swift_allocObject();
  sub_273D8B870();
  v2 = a1[3];
  v3 = a1[4];
  sub_273D8339C(a1, v2);
  v4 = (*(v3 + 48))(v2, v3);
  sub_273D8BF68(v4, v5);

  v7 = a1[8];
  if (v7)
  {
    return v7(result);
  }

  return result;
}

uint64_t sub_273D829FC()
{
  v1 = type metadata accessor for WelcomeListItem(0);
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = v0[3];
  v6 = v0[4];
  sub_273D8339C(v0, v5);
  v7 = (*(v6 + 136))(v5, v6);
  v8 = *(v7 + 16);
  if (v8)
  {
    result = sub_273DA244C();
    v10 = 0;
    v11 = v7 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
    while (v10 < *(v7 + 16))
    {
      sub_273D83C48(v11 + *(v2 + 72) * v10, v4, type metadata accessor for WelcomeListItem);
      sub_273DA243C();
      sub_273DA242C();
      if ((swift_task_isCurrentExecutor() & 1) == 0)
      {
        swift_task_reportUnexpectedExecutor();
      }

      if (*(v4 + 5))
      {

        sub_273D83CA0(v4);
LABEL_12:

        return 1;
      }

      v12 = *(v4 + 6);

      sub_273D83CA0(v4);
      if (v12)
      {

        goto LABEL_12;
      }

      ++v10;

      if (v8 == v10)
      {
        goto LABEL_9;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_9:

    return 0;
  }

  return result;
}

uint64_t type metadata accessor for WelcomeView(uint64_t a1)
{
  result = qword_280925840;
  if (!qword_280925840)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_273D82D04(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_273D82D88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(char *))
{
  v7 = sub_273D82D04(&qword_280925888, &qword_273DA2EF8);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v11 - v8;
  sub_273D84048(a1, &v11 - v8, &qword_280925888, &qword_273DA2EF8);
  return a5(v9);
}

uint64_t sub_273D82E38(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_273D82E9C(void *a1)
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

uint64_t sub_273D82F18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_273D82D04(&qword_280925838, &qword_273DA2ED0);
    v9 = a1 + *(a3 + 44);

    return sub_273D82FAC(v9, a2, v8);
  }
}

uint64_t sub_273D82FE8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = sub_273D82D04(&qword_280925838, &qword_273DA2ED0);
    v8 = v5 + *(a4 + 44);

    return sub_273D83074(v8, a2, a2, v7);
  }

  return result;
}

void sub_273D8309C(uint64_t a1)
{
  sub_273D83250();
  if (v1 <= 0x3F)
  {
    sub_273D84AB4(319, &qword_280925858, MEMORY[0x277D839B0], MEMORY[0x277CE11F8]);
    if (v2 <= 0x3F)
    {
      sub_273D832F4(319, &qword_280925860, &qword_280925868, "2 ", MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        sub_273D84AB4(319, &qword_280925870, &type metadata for WelcomeViewEnvironment, MEMORY[0x277CDF468]);
        if (v4 <= 0x3F)
        {
          sub_273D84AB4(319, &qword_280925878, MEMORY[0x277D85048], MEMORY[0x277CE10B8]);
          if (v5 <= 0x3F)
          {
            sub_273D832F4(319, &qword_280925880, &qword_280925888, &qword_273DA2EF8, MEMORY[0x277CDF468]);
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

unint64_t sub_273D83250()
{
  result = qword_280925850;
  if (!qword_280925850)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_280925850);
  }

  return result;
}

uint64_t sub_273D832AC(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

void sub_273D832F4(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_273D832AC(a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void *sub_273D8339C(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_273D833F0(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

unint64_t sub_273D83428()
{
  result = qword_280925910;
  if (!qword_280925910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280925910);
  }

  return result;
}

uint64_t sub_273D83480(uint64_t result, uint64_t a2, char a3)
{
  if ((a3 & 1) == 0)
  {
  }

  return v3;
}

uint64_t sub_273D8348C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WelcomeView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_273D83528()
{
  result = qword_280925940;
  if (!qword_280925940)
  {
    sub_273D832AC(&qword_280925920, &qword_273DA2F70);
    sub_273D832AC(&qword_280925908, &qword_273DA3C00);
    sub_273D83428();
    sub_273D84664(&qword_280925918);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280925940);
  }

  return result;
}

unint64_t sub_273D83640()
{
  result = qword_280925948;
  if (!qword_280925948)
  {
    sub_273D832AC(&qword_280925888, &qword_273DA2EF8);
    sub_273D84384(&unk_280925950);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280925948);
  }

  return result;
}

unint64_t sub_273D83778()
{
  result = qword_280925968;
  if (!qword_280925968)
  {
    sub_273D832AC(&qword_280925970, &qword_273DA2F88);
    sub_273D84384(&unk_280925978);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280925968);
  }

  return result;
}

unint64_t sub_273D83834()
{
  result = qword_280925980;
  if (!qword_280925980)
  {
    sub_273D832AC(&qword_280925958, &qword_273DA2F80);
    sub_273D83914(&unk_280925988);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280925980);
  }

  return result;
}

unint64_t sub_273D83914(uint64_t a1)
{
  result = sub_273D84B90(a1);
  if (!result)
  {
    v5 = v4;
    v6 = sub_273D84B84(0, v3);
    sub_273D832AC(v6, v7);
    v5();
    result = sub_273D84B20();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_273D83974()
{
  result = qword_2809259A8;
  if (!qword_2809259A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809259A8);
  }

  return result;
}

uint64_t sub_273D839C8(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_273D839D8()
{
  v1 = type metadata accessor for WelcomeView(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = v0 + v3;
  sub_273D82E9C((v0 + v3));

  if (*(v0 + v3 + 64))
  {
  }

  if (*(v5 + 80))
  {
  }

  sub_273D83480(*(v5 + 104), *(v5 + 112), *(v5 + 120));

  v6 = *(v1 + 44);
  sub_273D82D04(&qword_280925828, &qword_273DA2E38);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = sub_273DA1D0C();
    if (!sub_273D82FAC(v5 + v6, 1, v7))
    {
      sub_273D84B6C();
      (*(v8 + 8))(v5 + v6, v7);
    }
  }

  else
  {
  }

  v9 = *(v1 + 48);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = sub_273DA1D0C();
    if (!sub_273D82FAC(v5 + v9, 1, v10))
    {
      sub_273D84B6C();
      (*(v11 + 8))(v5 + v9, v10);
    }
  }

  else
  {
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_273D83BD4()
{
  v1 = *(type metadata accessor for WelcomeView(0) - 8);
  v2 = (v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80)));

  return sub_273D8294C(v2);
}

uint64_t sub_273D83C48(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  a3(0);
  sub_273D84B0C();
  v4 = sub_273D84B78();
  v5(v4);
  return a2;
}

uint64_t sub_273D83CA0(uint64_t a1)
{
  v2 = type metadata accessor for WelcomeListItem(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_273D83CFC()
{
  result = qword_2809259F8;
  if (!qword_2809259F8)
  {
    sub_273D832AC(&qword_2809259D0, &qword_273DA2FC0);
    sub_273D83D88();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809259F8);
  }

  return result;
}

unint64_t sub_273D83D88()
{
  result = qword_280925A00;
  if (!qword_280925A00)
  {
    sub_273D832AC(&qword_2809259C8, &qword_273DA2FB8);
    sub_273D84664(&unk_280925A08);
    sub_273D83E40();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280925A00);
  }

  return result;
}

unint64_t sub_273D83E40()
{
  result = qword_280925A10;
  if (!qword_280925A10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280925A10);
  }

  return result;
}

unint64_t sub_273D83E94()
{
  result = qword_280925A48;
  if (!qword_280925A48)
  {
    sub_273D832AC(&qword_280925A28, &qword_273DA2FE8);
    sub_273D83F20();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280925A48);
  }

  return result;
}

unint64_t sub_273D83F20()
{
  result = qword_280925A50;
  if (!qword_280925A50)
  {
    sub_273D832AC(&qword_280925A58, &qword_273DA3008);
    sub_273D832AC(&qword_280925A60, &qword_273DA3010);
    sub_273D84664(&unk_280925A68);
    swift_getOpaqueTypeConformance2();
    sub_273D84664(&unk_280925A70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280925A50);
  }

  return result;
}

uint64_t sub_273D84048(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  sub_273D84B4C(a1, a2, a3, a4);
  sub_273D84B0C();
  v5 = sub_273D84B78();
  v6(v5);
  return v4;
}

uint64_t sub_273D84090(uint64_t a1, char a2)
{
  if (a2 != -1)
  {
  }

  return result;
}

uint64_t sub_273D840A4(uint64_t result, char a2)
{
  if (a2 != -1)
  {
  }

  return v2;
}

unint64_t sub_273D840B8()
{
  result = qword_280925A98;
  if (!qword_280925A98)
  {
    sub_273D832AC(&qword_280925A90, &qword_273DA3030);
    sub_273D84664(&qword_280925AA0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280925A98);
  }

  return result;
}

unint64_t sub_273D84170()
{
  result = qword_280925AB0;
  if (!qword_280925AB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280925AB0);
  }

  return result;
}

unint64_t sub_273D841C4()
{
  result = qword_280925AB8;
  if (!qword_280925AB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280925AB8);
  }

  return result;
}

uint64_t sub_273D84218(uint64_t a1, uint64_t a2)
{
  v3 = sub_273D84B84(a1, a2);
  sub_273D82D04(v3, v4);
  sub_273D84B6C();
  (*(v5 + 8))(a1);
  return a1;
}

uint64_t sub_273D84270(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  sub_273D84B4C(a1, a2, a3, a4);
  sub_273D84B0C();
  v5 = sub_273D84B78();
  v6(v5);
  return v4;
}

uint64_t sub_273D842B8(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

unint64_t sub_273D842C8()
{
  result = qword_280925AF0;
  if (!qword_280925AF0)
  {
    sub_273D832AC(&qword_280925AE0, &qword_273DA3058);
    sub_273D84384(&qword_280925AF8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280925AF0);
  }

  return result;
}

unint64_t sub_273D84384(uint64_t a1)
{
  result = sub_273D84B90(a1);
  if (!result)
  {
    v3(255);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

uint64_t sub_273D843C8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_273DA1B2C();
  *a1 = result;
  return result;
}

uint64_t sub_273D84420@<X0>(uint64_t *a1@<X8>)
{
  result = sub_273DA1ACC();
  *a1 = result;
  return result;
}

unint64_t sub_273D84478()
{
  result = qword_280925B08;
  if (!qword_280925B08)
  {
    sub_273D832AC(&qword_280925B00, &qword_273DA30C8);
    sub_273D84530();
    sub_273D84664(&unk_280925B40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280925B08);
  }

  return result;
}

unint64_t sub_273D84530()
{
  result = qword_280925B10;
  if (!qword_280925B10)
  {
    sub_273D832AC(&qword_280925B18, &qword_273DA30D0);
    sub_273D845E8();
    sub_273D84664(&qword_280925B30);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280925B10);
  }

  return result;
}

unint64_t sub_273D845E8()
{
  result = qword_280925B20;
  if (!qword_280925B20)
  {
    sub_273D832AC(&qword_280925B28, &qword_273DA30D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280925B20);
  }

  return result;
}

unint64_t sub_273D84664(uint64_t a1)
{
  result = sub_273D84B90(a1);
  if (!result)
  {
    v4 = sub_273D84B84(0, v3);
    sub_273D832AC(v4, v5);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_273D846A4()
{
  result = qword_280925B88;
  if (!qword_280925B88)
  {
    sub_273D832AC(&qword_280925B80, &qword_273DA3118);
    sub_273D84730();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280925B88);
  }

  return result;
}

unint64_t sub_273D84730()
{
  result = qword_280925B90;
  if (!qword_280925B90)
  {
    sub_273D832AC(&qword_280925B98, qword_273DA3120);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280925B90);
  }

  return result;
}

unint64_t sub_273D847B4()
{
  result = qword_280925BA0;
  if (!qword_280925BA0)
  {
    sub_273D832AC(&qword_280925B68, &qword_273DA3100);
    sub_273D8486C(&unk_280925BA8);
    sub_273D848FC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280925BA0);
  }

  return result;
}

unint64_t sub_273D8486C(uint64_t a1)
{
  result = sub_273D84B90(a1);
  if (!result)
  {
    v5 = v4;
    v6 = sub_273D84B84(0, v3);
    sub_273D832AC(v6, v7);
    v5();
    sub_273D84384(&qword_280925AF8);
    result = sub_273D84B20();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_273D848FC()
{
  result = qword_280925BB0;
  if (!qword_280925BB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280925BB0);
  }

  return result;
}

unint64_t sub_273D84950()
{
  result = qword_280925BB8;
  if (!qword_280925BB8)
  {
    sub_273D832AC(&qword_280925B78, &qword_273DA3110);
    sub_273D8486C(&unk_280925BC0);
    sub_273D84664(&qword_280925AA0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280925BB8);
  }

  return result;
}

__n128 initializeBufferWithCopyOfBuffer for WelcomeViewEnvironment(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t getEnumTagSinglePayload for WelcomeViewEnvironment(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for WelcomeViewEnvironment(uint64_t result, int a2, int a3)
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

void sub_273D84AB4(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_273D84B20()
{

  return swift_getWitnessTable();
}

uint64_t sub_273D84B4C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{

  return sub_273D82D04(a3, a4);
}

uint64_t WelcomeContentType.hashValue.getter()
{
  v1 = *v0;
  sub_273DA26FC();
  MEMORY[0x2743DE210](v1);
  return sub_273DA271C();
}

uint64_t sub_273D84C30(uint64_t a1)
{
  v2 = *v1;
  sub_273DA26FC();
  MEMORY[0x2743DE210](v2);
  return sub_273DA271C();
}

unint64_t sub_273D84C78()
{
  result = qword_280925BD0;
  if (!qword_280925BD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280925BD0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for WelcomeAction.WelcomeActionType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFE)
  {
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 3;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v5 = v6 - 3;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for WelcomeContentType(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x273D84E2CLL);
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

uint64_t sub_273D84E88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_273DA16DC();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return sub_273D82FAC(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20) + 8);
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    return (v8 + 1);
  }
}

uint64_t sub_273D84F4C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_273DA16DC();
  if (*(*(result - 8) + 84) == a3)
  {

    return sub_273D83074(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t type metadata accessor for ContinueButton(uint64_t a1)
{
  result = qword_280925BD8;
  if (!qword_280925BD8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_273D85044(uint64_t a1)
{
  sub_273DA16DC();
  if (v1 <= 0x3F)
  {
    sub_273D850E0();
    if (v2 <= 0x3F)
    {
      sub_273D85130(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_273D850E0()
{
  if (!qword_280925858)
  {
    v0 = sub_273DA226C();
    if (!v1)
    {
      atomic_store(v0, &qword_280925858);
    }
  }
}

void sub_273D85130(uint64_t a1)
{
  if (!qword_280925860)
  {
    sub_273D832AC(&qword_280925868, "2 ");
    v1 = sub_273DA24FC();
    if (!v2)
    {
      atomic_store(v1, &qword_280925860);
    }
  }
}

uint64_t sub_273D851B0()
{
  sub_273D82D04(&qword_280925BE8, &qword_273DA3248);
  sub_273D85C0C();
  return sub_273DA1C6C();
}

uint64_t sub_273D85228@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v25 = a1;
  v29 = a2;
  v2 = sub_273DA1D3C();
  v27 = *(v2 - 8);
  v28 = v2;
  MEMORY[0x28223BE20](v2);
  v4 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for ContinueButton(0);
  v23 = *(v5 - 8);
  v6 = *(v23 + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = sub_273D82D04(&qword_280925C20, &qword_273DA3260);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v22 - v9;
  v24 = sub_273D82D04(&qword_280925C08, &qword_273DA3258);
  MEMORY[0x28223BE20](v24);
  v12 = &v22 - v11;
  sub_273DA244C();
  v26 = sub_273DA243C();
  sub_273DA242C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v13 = v25;
  sub_273D85EE0(v25, &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = (*(v23 + 80) + 16) & ~*(v23 + 80);
  v15 = swift_allocObject();
  v16 = sub_273D86050(&v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v15 + v14);
  MEMORY[0x28223BE20](v16);
  *(&v22 - 2) = v13;
  sub_273D82D04(&qword_280925C30, &qword_273DA3268);
  sub_273D8611C();
  sub_273DA221C();
  sub_273D86338(&qword_280925C18, &qword_280925C20, &qword_273DA3260, MEMORY[0x277CDF028]);
  sub_273DA206C();
  (*(v8 + 8))(v10, v7);
  sub_273DA1D2C();
  sub_273D85DB0();
  sub_273D85E98(&qword_280925C28, MEMORY[0x277CDE340], MEMORY[0x277CDE338]);
  v18 = v28;
  v17 = v29;
  sub_273DA1FBC();
  (*(v27 + 8))(v4, v18);
  sub_273D8622C(v12);
  sub_273DA22DC();
  sub_273DA18EC();

  v19 = (v17 + *(sub_273D82D04(&qword_280925C00, &qword_273DA3250) + 36));
  v20 = v31;
  *v19 = v30;
  v19[1] = v20;
  v19[2] = v32;
  result = sub_273D82D04(&qword_280925BE8, &qword_273DA3248);
  *(v17 + *(result + 36)) = 256;
  return result;
}

uint64_t sub_273D856CC(uint64_t a1)
{
  sub_273DA244C();
  sub_273DA243C();
  sub_273DA242C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v2 = type metadata accessor for ContinueButton(0);
  sub_273D82D04(&qword_280925C48, &qword_273DA3270);
  v3 = sub_273DA224C();
  v4 = *(a1 + *(v2 + 24));
  if (v4)
  {
    v4(v3);
  }
}

uint64_t sub_273D857C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v36 = a2;
  v3 = sub_273DA16DC();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_273D82D04(&qword_280925C40, &qword_273DA3C30);
  v34 = *(v7 - 8);
  v35 = v7;
  MEMORY[0x28223BE20](v7);
  v33 = v31 - v8;
  v32 = sub_273D82D04(&qword_280925C30, &qword_273DA3268);
  MEMORY[0x28223BE20](v32);
  v10 = v31 - v9;
  sub_273DA244C();
  v31[1] = sub_273DA243C();
  sub_273DA242C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  (*(v4 + 16))(v6, a1, v3);
  v11 = sub_273DA1F6C();
  v13 = v12;
  v15 = v14;
  sub_273DA1EBC();
  v16 = sub_273DA1F5C();
  v18 = v17;
  v20 = v19;

  sub_273D842B8(v11, v13, v15 & 1);

  sub_273DA1EDC();
  v21 = sub_273DA1F2C();
  v23 = v22;
  LOBYTE(v11) = v24;
  v26 = v25;
  sub_273D842B8(v16, v18, v20 & 1);

  __src[0] = v21;
  __src[1] = v23;
  v27 = v11 & 1;
  LOBYTE(__src[2]) = v27;
  __src[3] = v26;
  if (qword_280925810 != -1)
  {
    swift_once();
  }

  v28 = sub_273D82D04(&qword_280925908, &qword_273DA3C00);
  sub_273D833F0(v28, qword_280927820);
  sub_273D86338(&qword_280925918, &qword_280925908, &qword_273DA3C00, MEMORY[0x277D83660]);
  v29 = v33;
  sub_273DA1FEC();
  sub_273D842B8(v21, v23, v27);

  sub_273DA22DC();
  sub_273DA1A7C();
  (*(v34 + 32))(v10, v29, v35);
  memcpy(&v10[*(v32 + 36)], __src, 0x70uLL);
  sub_273D8628C(v10, v36);
}

unint64_t sub_273D85C0C()
{
  result = qword_280925BF0;
  if (!qword_280925BF0)
  {
    sub_273D832AC(&qword_280925BE8, &qword_273DA3248);
    sub_273D85C98();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280925BF0);
  }

  return result;
}

unint64_t sub_273D85C98()
{
  result = qword_280925BF8;
  if (!qword_280925BF8)
  {
    sub_273D832AC(&qword_280925C00, &qword_273DA3250);
    sub_273D832AC(&qword_280925C08, &qword_273DA3258);
    sub_273DA1D3C();
    sub_273D85DB0();
    sub_273D85E98(&qword_280925C28, MEMORY[0x277CDE340], MEMORY[0x277CDE338]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280925BF8);
  }

  return result;
}

unint64_t sub_273D85DB0()
{
  result = qword_280925C10;
  if (!qword_280925C10)
  {
    sub_273D832AC(&qword_280925C08, &qword_273DA3258);
    sub_273D86338(&qword_280925C18, &qword_280925C20, &qword_273DA3260, MEMORY[0x277CDF028]);
    sub_273D85E98(&qword_280925AF8, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280925C10);
  }

  return result;
}

uint64_t sub_273D85E98(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_273D85EE0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ContinueButton(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_273D85F44()
{
  v1 = (type metadata accessor for ContinueButton(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  sub_273DA16DC();
  sub_273D86380();
  (*(v5 + 8))(v0 + v3);

  if (*(v0 + v3 + v1[8]))
  {
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_273D86050(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ContinueButton(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_273D860B4()
{
  v1 = *(type metadata accessor for ContinueButton(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_273D856CC(v2);
}

unint64_t sub_273D8611C()
{
  result = qword_280925C38;
  if (!qword_280925C38)
  {
    sub_273D832AC(&qword_280925C30, &qword_273DA3268);
    sub_273D832AC(&qword_280925908, &qword_273DA3C00);
    sub_273D86338(&qword_280925918, &qword_280925908, &qword_273DA3C00, MEMORY[0x277D83660]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280925C38);
  }

  return result;
}

uint64_t sub_273D8622C(uint64_t a1)
{
  sub_273D82D04(&qword_280925C08, &qword_273DA3258);
  sub_273D86380();
  (*(v2 + 8))(a1);
  return a1;
}

uint64_t sub_273D8628C(uint64_t a1, uint64_t a2)
{
  sub_273D82D04(&qword_280925C30, &qword_273DA3268);
  sub_273D86380();
  (*(v4 + 32))(a2, a1);
  return a2;
}

uint64_t sub_273D86338(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_273D832AC(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CustomContentListStyleModifier(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFF)
  {
    if (a2 + 1 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 1) >> 8 < 0xFF)
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
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 2;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v5 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for CustomContentListStyleModifier(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
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
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
        JUMPOUT(0x273D864F4);
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
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_273D8655C(uint64_t a1)
{
  sub_273DA244C();
  sub_273DA243C();
  sub_273DA242C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v2 = sub_273D866BC(a1);
  swift_getKeyPath();
  *(swift_allocObject() + 16) = v2;
  sub_273D82D04(&qword_280925CD0, &qword_273DA3438);
  sub_273D82D04(&qword_280925CD8, &qword_273DA3440);
  sub_273D88130();
  sub_273D88210();
  sub_273DA227C();
}

void *sub_273D866BC(uint64_t a1)
{
  v2 = type metadata accessor for WelcomeListItem(0) - 8;
  v3 = MEMORY[0x28223BE20](v2);
  v26 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v25 - v6;
  v8 = *(a1 + 16);
  if (v8)
  {
    v9 = *(v5 + 80);
    v28 = v9;
    v10 = (v9 + 32) & ~v9;
    v11 = a1 + v10;
    v12 = *(v5 + 72);
    v13 = MEMORY[0x277D84F90];
    v27 = xmmword_273DA3280;
    v14 = MEMORY[0x277D84F90];
    do
    {
      sub_273D888E4(v11, v7);
      if (*(v7 + 5) || *(v7 + 6))
      {
        if (v13[2])
        {

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v14 = sub_273D87CC8(0, v14[2] + 1, 1, v14);
          }

          v16 = v14[2];
          v15 = v14[3];
          if (v16 >= v15 >> 1)
          {
            v14 = sub_273D87CC8((v15 > 1), v16 + 1, 1, v14);
          }

          v14[2] = v16 + 1;
          v14[v16 + 4] = v13;

          v13 = MEMORY[0x277D84F90];
        }

        sub_273D82D04(&qword_280925D60, &qword_273DA34B8);
        v17 = swift_allocObject();
        *(v17 + 16) = v27;
        sub_273D888E4(v7, v17 + v10);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v14 = sub_273D87CC8(0, v14[2] + 1, 1, v14);
        }

        v19 = v14[2];
        v18 = v14[3];
        if (v19 >= v18 >> 1)
        {
          v14 = sub_273D87CC8((v18 > 1), v19 + 1, 1, v14);
        }

        v14[2] = v19 + 1;
        v14[v19 + 4] = v17;
      }

      else
      {
        sub_273D888E4(v7, v26);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v13 = sub_273D87BDC(0, v13[2] + 1, 1, v13);
        }

        v21 = v13[2];
        v20 = v13[3];
        if (v21 >= v20 >> 1)
        {
          v13 = sub_273D87BDC((v20 > 1), v21 + 1, 1, v13);
        }

        v13[2] = v21 + 1;
        sub_273D88A04(v26, v13 + v10 + v21 * v12);
      }

      sub_273D88948(v7, type metadata accessor for WelcomeListItem);
      v11 += v12;
      --v8;
    }

    while (v8);
  }

  else
  {
    v14 = MEMORY[0x277D84F90];
    v13 = MEMORY[0x277D84F90];
  }

  if (v13[2])
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v14 = sub_273D87CC8(0, v14[2] + 1, 1, v14);
    }

    v23 = v14[2];
    v22 = v14[3];
    if (v23 >= v22 >> 1)
    {
      v14 = sub_273D87CC8((v22 > 1), v23 + 1, 1, v14);
    }

    v14[2] = v23 + 1;
    v14[v23 + 4] = v13;
  }

  else
  {
  }

  return v14;
}

uint64_t sub_273D86A50@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v22 = a3;
  v5 = sub_273D82D04(&qword_280925D30, &qword_273DA3468);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v20 - v6;
  v21 = sub_273D82D04(&qword_280925D00, &qword_273DA3448);
  v8 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v10 = &v20 - v9;
  v20 = sub_273D82D04(&qword_280925CD8, &qword_273DA3440);
  MEMORY[0x28223BE20](v20);
  v12 = &v20 - v11;
  v13 = *a1;
  sub_273DA244C();
  sub_273DA243C();
  sub_273DA242C();
  isCurrentExecutor = swift_task_isCurrentExecutor();
  if ((isCurrentExecutor & 1) == 0)
  {
    isCurrentExecutor = swift_task_reportUnexpectedExecutor();
  }

  MEMORY[0x28223BE20](isCurrentExecutor);
  *(&v20 - 2) = a2;
  *(&v20 - 1) = v13;
  sub_273D82D04(&qword_280925D10, &qword_273DA3450);
  sub_273D88358();
  result = sub_273DA22AC();
  if ((v13 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v13 < *(a2 + 16))
  {
    sub_273D90B04(*(a2 + 8 * v13 + 32), v7);
    v16 = type metadata accessor for WelcomeListItem(0);
    if (sub_273D82FAC(v7, 1, v16) == 1)
    {
      sub_273D884D0(v7, &qword_280925D30, &qword_273DA3468);
    }

    else
    {
      if (*(v7 + 5) || *(v7 + 6))
      {
        sub_273D88948(v7, type metadata accessor for WelcomeListItem);
        v17 = &selRef_secondarySystemBackgroundColor;
        goto LABEL_11;
      }

      sub_273D88948(v7, type metadata accessor for WelcomeListItem);
    }

    v17 = &selRef_clearColor;
LABEL_11:
    v18 = [objc_opt_self() *v17];
    v23 = sub_273DA213C();
    v19 = sub_273DA222C();
    (*(v8 + 32))(v12, v10, v21);
    *&v12[*(v20 + 36)] = v19;
    sub_273D889A0(v12, v22, &qword_280925CD8, &qword_273DA3440);
  }

  __break(1u);
  return result;
}

uint64_t sub_273D86DD8(uint64_t a1, unint64_t a2)
{
  sub_273DA244C();
  sub_273DA243C();
  sub_273DA242C();
  result = swift_task_isCurrentExecutor();
  if ((result & 1) == 0)
  {
    result = swift_task_reportUnexpectedExecutor();
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*(a1 + 16) > a2)
  {

    sub_273D88528(v5);

    swift_getKeyPath();
    v6 = swift_allocObject();
    *(v6 + 16) = a2;
    v7 = swift_allocObject();
    *(v7 + 16) = sub_273D88854;
    *(v7 + 24) = v6;
    sub_273D82D04(&qword_280925D38, &qword_273DA34A0);
    sub_273D82D04(&qword_280925D20, &qword_273DA3458);
    sub_273D86338(&qword_280925D40, &qword_280925D38, &qword_273DA34A0, MEMORY[0x277D83980]);
    sub_273D8889C(&qword_280925D48, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
    sub_273D883DC();
    sub_273DA227C();
  }

  __break(1u);
  return result;
}

uint64_t sub_273D86FF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for WelcomeListItemView(0);
  MEMORY[0x28223BE20](v6);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_273DA244C();
  sub_273DA243C();
  sub_273DA242C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_273D888E4(a2, v8);
  v14 = 0;
  v15 = 0xE000000000000000;
  sub_273DA255C();

  v14 = 0xD000000000000013;
  v15 = 0x8000000273DAA570;
  if (__OFADD__(a3, 1))
  {
    __break(1u);
  }

  else
  {
    v13 = a3 + 1;
    v10 = sub_273DA268C();
    MEMORY[0x2743DDEE0](v10);

    result = MEMORY[0x2743DDEE0](0x5F6D6574695FLL, 0xE600000000000000);
    if (!__OFADD__(a1, 1))
    {
      v13 = a1 + 1;
      v11 = sub_273DA268C();
      MEMORY[0x2743DDEE0](v11);

      sub_273D8889C(&qword_280925D28, type metadata accessor for WelcomeListItemView, &unk_273DA3AC4);
      sub_273DA206C();

      sub_273D88948(v8, type metadata accessor for WelcomeListItemView);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_273D8723C(char *a1, uint64_t (*a2)(uint64_t, char *))
{
  v4 = *a1;
  v5 = sub_273D82D04(&qword_280925D50, &qword_273DA34A8);
  return a2(v4, &a1[*(v5 + 48)]);
}

uint64_t sub_273D872CC@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  LODWORD(v40) = a2;
  v41 = a1;
  v46 = a3;
  v47 = sub_273DA196C();
  v39 = *(v47 - 8);
  MEMORY[0x28223BE20](v47);
  v4 = &v37 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = sub_273D82D04(&qword_280925C60, &qword_273DA33A0);
  v5 = *(v48 - 8);
  MEMORY[0x28223BE20](v48);
  v7 = &v37 - v6;
  v43 = sub_273D82D04(&qword_280925C68, &qword_273DA33A8);
  MEMORY[0x28223BE20](v43);
  v45 = &v37 - v8;
  v42 = sub_273DA1CCC();
  v38 = *(v42 - 8);
  MEMORY[0x28223BE20](v42);
  v10 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_273DA1BEC();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_273D82D04(&qword_280925C70, &qword_273DA33B0);
  MEMORY[0x28223BE20](v15);
  v17 = &v37 - v16;
  v44 = sub_273D82D04(&qword_280925C78, &qword_273DA33B8);
  MEMORY[0x28223BE20](v44);
  v20 = &v37 - v19;
  if (v40)
  {
    v40 = v18;
    sub_273DA1BDC();
    v21 = *(sub_273D82D04(&qword_280925CA0, &qword_273DA33C8) + 36);
    (*(v12 + 16))(&v17[v21], v14, v11);
    sub_273D83074(&v17[v21], 0, 1, v11);
    v39 = sub_273D82D04(&qword_280925C80, &qword_273DA33C0);
    (*(*(v39 - 8) + 16))(v17, v41, v39);
    KeyPath = swift_getKeyPath();
    v23 = &v17[*(v15 + 36)];
    v24 = *(sub_273D82D04(&qword_280925CC0, &qword_273DA33D8) + 28);
    (*(v12 + 32))(v23 + v24, v14, v11);
    sub_273D83074(v23 + v24, 0, 1, v11);
    *v23 = KeyPath;
    sub_273DA1CBC();
    v25 = sub_273D87A40();
    v26 = MEMORY[0x277CDE0D0];
    v27 = v42;
    sub_273DA20EC();
    (*(v38 + 8))(v10, v27);
    sub_273D884D0(v17, &qword_280925C70, &qword_273DA33B0);
    v28 = v40;
    v29 = v44;
    (*(v40 + 16))(v45, v20, v44);
    swift_storeEnumTagMultiPayload();
    v49 = v15;
    v50 = v27;
    v51 = v25;
    v52 = v26;
    swift_getOpaqueTypeConformance2();
    v30 = sub_273D86338(&qword_280925C88, &qword_280925C80, &qword_273DA33C0, MEMORY[0x277CE04B0]);
    v49 = v39;
    v50 = v47;
    v51 = v30;
    v52 = MEMORY[0x277CDD980];
    swift_getOpaqueTypeConformance2();
    sub_273DA1C5C();
    return (*(v28 + 8))(v20, v29);
  }

  else
  {
    sub_273DA195C();
    v32 = sub_273D82D04(&qword_280925C80, &qword_273DA33C0);
    v33 = sub_273D86338(&qword_280925C88, &qword_280925C80, &qword_273DA33C0, MEMORY[0x277CE04B0]);
    v34 = v47;
    sub_273DA20EC();
    (*(v39 + 8))(v4, v34);
    v35 = v48;
    (*(v5 + 16))(v45, v7, v48);
    swift_storeEnumTagMultiPayload();
    v36 = sub_273D87A40();
    v49 = v15;
    v50 = v42;
    v51 = v36;
    v52 = MEMORY[0x277CDE0D0];
    swift_getOpaqueTypeConformance2();
    v49 = v32;
    v50 = v34;
    v51 = v33;
    v52 = MEMORY[0x277CDD980];
    swift_getOpaqueTypeConformance2();
    sub_273DA1C5C();
    return (*(v5 + 8))(v7, v35);
  }
}

unint64_t sub_273D87A40()
{
  result = qword_280925C90;
  if (!qword_280925C90)
  {
    sub_273D832AC(&qword_280925C70, &qword_273DA33B0);
    sub_273D87AF8();
    sub_273D86338(&qword_280925CB8, &qword_280925CC0, &qword_273DA33D8, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280925C90);
  }

  return result;
}

unint64_t sub_273D87AF8()
{
  result = qword_280925C98;
  if (!qword_280925C98)
  {
    sub_273D832AC(&qword_280925CA0, &qword_273DA33C8);
    sub_273D86338(&qword_280925C88, &qword_280925C80, &qword_273DA33C0, MEMORY[0x277CE04B0]);
    sub_273D86338(&qword_280925CA8, &qword_280925CB0, &qword_273DA33D0, MEMORY[0x277CE04A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280925C98);
  }

  return result;
}

void *sub_273D87BDC(void *result, int64_t a2, char a3, uint64_t a4)
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
  v9 = sub_273D87DF8(v8, v7);
  v10 = *(type metadata accessor for WelcomeListItem(0) - 8);
  if (v5)
  {
    v11 = (*(v10 + 80) + 32) & ~*(v10 + 80);
    sub_273D87EF4(a4 + v11, v8, v9 + v11);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v9;
}

void *sub_273D87CC8(void *result, int64_t a2, char a3, void *a4)
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
    sub_273D82D04(&qword_280925D68, &qword_273DA34C0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
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
    sub_273D82D04(&qword_280925D70, &qword_273DA34C8);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_273D87DF8(uint64_t a1, uint64_t a2)
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

  sub_273D82D04(&qword_280925D60, &qword_273DA34B8);
  v4 = *(type metadata accessor for WelcomeListItem(0) - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = j__malloc_size(v7);
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

uint64_t sub_273D87EF4(unint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a3 < a1 || (result = type metadata accessor for WelcomeListItem(0), a1 + *(*(result - 8) + 72) * a2 <= a3))
  {
    type metadata accessor for WelcomeListItem(0);

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (a3 != a1)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

uint64_t sub_273D87FEC(uint64_t a1)
{
  v2 = sub_273D82D04(&qword_280925CC8, &unk_273DA3410);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v6 - v3;
  sub_273D88080(a1, &v6 - v3);
  return MEMORY[0x2743DD610](v4);
}

uint64_t sub_273D88080(uint64_t a1, uint64_t a2)
{
  v4 = sub_273D82D04(&qword_280925CC8, &unk_273DA3410);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_273D880F0()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

unint64_t sub_273D88130()
{
  result = qword_280925CE0;
  if (!qword_280925CE0)
  {
    sub_273D832AC(&qword_280925CD0, &qword_273DA3438);
    sub_273D881BC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280925CE0);
  }

  return result;
}

unint64_t sub_273D881BC()
{
  result = qword_280925CE8;
  if (!qword_280925CE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280925CE8);
  }

  return result;
}

unint64_t sub_273D88210()
{
  result = qword_280925CF0;
  if (!qword_280925CF0)
  {
    sub_273D832AC(&qword_280925CD8, &qword_273DA3440);
    sub_273D882C8();
    sub_273D86338(&qword_280925AA0, &qword_280925AA8, &qword_273DA3460, MEMORY[0x277CE04A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280925CF0);
  }

  return result;
}

unint64_t sub_273D882C8()
{
  result = qword_280925CF8;
  if (!qword_280925CF8)
  {
    sub_273D832AC(&qword_280925D00, &qword_273DA3448);
    sub_273D88358();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280925CF8);
  }

  return result;
}

unint64_t sub_273D88358()
{
  result = qword_280925D08;
  if (!qword_280925D08)
  {
    sub_273D832AC(&qword_280925D10, &qword_273DA3450);
    sub_273D883DC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280925D08);
  }

  return result;
}

unint64_t sub_273D883DC()
{
  result = qword_280925D18;
  if (!qword_280925D18)
  {
    sub_273D832AC(&qword_280925D20, &qword_273DA3458);
    sub_273D8889C(&qword_280925D28, type metadata accessor for WelcomeListItemView, &unk_273DA3AC4);
    sub_273D8889C(&qword_280925AF8, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280925D18);
  }

  return result;
}

uint64_t sub_273D884D0(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  sub_273D82D04(a2, a3);
  sub_273D86380();
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_273D88528(uint64_t a1)
{
  v2 = sub_273D82D04(&qword_280925D50, &qword_273DA34A8);
  v3 = MEMORY[0x28223BE20](v2);
  v5 = (&v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  result = MEMORY[0x28223BE20](v3);
  v38 = v8;
  v39 = &v34 - v7;
  v9 = 0;
  v10 = 0;
  v35 = *(v8 + 80);
  v11 = MEMORY[0x277D84F90];
  v36 = (v35 + 32) & ~v35;
  v12 = MEMORY[0x277D84F90] + v36;
  v37 = *(a1 + 16);
  while (1)
  {
    if (v37 == v10)
    {
      v31 = v11[3];
      if (v31 >= 2)
      {
        v32 = v31 >> 1;
        v30 = __OFSUB__(v32, v9);
        v33 = v32 - v9;
        if (v30)
        {
          goto LABEL_35;
        }

        v11[2] = v33;
      }

      return v11;
    }

    v13 = *(type metadata accessor for WelcomeListItem(0) - 8);
    v14 = a1 + ((*(v13 + 80) + 32) & ~*(v13 + 80)) + *(v13 + 72) * v10;
    v15 = *(v2 + 48);
    *v5 = v10;
    sub_273D888E4(v14, v5 + v15);
    result = sub_273D889A0(v5, v39, &qword_280925D50, &qword_273DA34A8);
    if (v9)
    {
      v16 = v11;
    }

    else
    {
      v17 = v11[3];
      if (((v17 >> 1) + 0x4000000000000000) < 0)
      {
        goto LABEL_32;
      }

      v18 = a1;
      v19 = v17 & 0xFFFFFFFFFFFFFFFELL;
      if (v19 <= 1)
      {
        v20 = 1;
      }

      else
      {
        v20 = v19;
      }

      sub_273D82D04(&qword_280925D58, &qword_273DA34B0);
      v21 = *(v38 + 72);
      v22 = v36;
      v16 = swift_allocObject();
      result = j__malloc_size(v16);
      if (!v21)
      {
        goto LABEL_33;
      }

      v23 = result - v22;
      if (result - v22 == 0x8000000000000000 && v21 == -1)
      {
        goto LABEL_34;
      }

      v25 = v23 / v21;
      v16[2] = v20;
      v16[3] = 2 * (v23 / v21);
      v26 = v16 + v22;
      v27 = v11[3];
      v28 = (v27 >> 1) * v21;
      if (v11[2])
      {
        if (v16 < v11 || v26 >= v11 + v36 + v28)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (v16 != v11)
        {
          swift_arrayInitWithTakeBackToFront();
        }

        v11[2] = 0;
      }

      v12 = &v26[v28];
      v9 = (v25 & 0x7FFFFFFFFFFFFFFFLL) - (v27 >> 1);

      a1 = v18;
    }

    v30 = __OFSUB__(v9--, 1);
    if (v30)
    {
      break;
    }

    result = sub_273D889A0(v39, v12, &qword_280925D50, &qword_273DA34A8);
    v12 += *(v38 + 72);
    ++v10;
    v11 = v16;
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
  return result;
}

uint64_t sub_273D8885C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_273D8889C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_273D888E4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WelcomeListItem(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_273D88948(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_273D86380();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_273D889A0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  sub_273D82D04(a3, a4);
  sub_273D86380();
  (*(v6 + 32))(a2, a1);
  return a2;
}

uint64_t sub_273D88A04(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WelcomeListItem(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_273D88A6C()
{
  result = qword_280925D78;
  if (!qword_280925D78)
  {
    sub_273D832AC(&qword_280925D80, &qword_273DA34D0);
    sub_273D832AC(&qword_280925C70, &qword_273DA33B0);
    sub_273DA1CCC();
    sub_273D87A40();
    swift_getOpaqueTypeConformance2();
    sub_273D832AC(&qword_280925C80, &qword_273DA33C0);
    sub_273DA196C();
    sub_273D86338(&qword_280925C88, &qword_280925C80, &qword_273DA33C0, MEMORY[0x277CE04B0]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280925D78);
  }

  return result;
}

unint64_t sub_273D88BDC()
{
  result = qword_280925D88;
  if (!qword_280925D88)
  {
    sub_273D832AC(&qword_280925D90, &qword_273DA34D8);
    sub_273D88C60();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280925D88);
  }

  return result;
}

unint64_t sub_273D88C60()
{
  result = qword_280925D98;
  if (!qword_280925D98)
  {
    sub_273D832AC(&qword_280925DA0, &unk_273DA34E0);
    sub_273D88210();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280925D98);
  }

  return result;
}

void sub_273D88CE4(double a1, double a2, uint64_t a3, void *a4)
{
  v6 = objc_opt_self();
  if ([v6 disableActions])
  {
    sub_273D9B890(a4, a1, a2);
  }

  else
  {
    [v6 setDisableActions_];
    sub_273D9B890(a4, a1, a2);
    [v6 setDisableActions_];
  }
}

uint64_t sub_273D88DAC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WelcomeListItem(0);

  return sub_273D82FAC(a1, a2, v4);
}

uint64_t sub_273D88E08(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WelcomeListItem(0);

  return sub_273D83074(a1, a2, a2, v4);
}

uint64_t type metadata accessor for CarouselListItemView(uint64_t a1)
{
  result = qword_280925DA8;
  if (!qword_280925DA8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_273D88EA0(uint64_t a1)
{
  result = type metadata accessor for WelcomeListItem(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_273D88F28@<X0>(uint64_t a2@<X8>)
{
  *a2 = sub_273DA1C1C();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  v4 = sub_273D82D04(&qword_280925DB8, &qword_273DA3558);
  return sub_273D88F7C(v2, a2 + *(v4 + 44));
}

uint64_t sub_273D88F7C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v79 = a2;
  v3 = sub_273D82D04(&qword_280925DC0, &qword_273DA3560);
  MEMORY[0x28223BE20](v3);
  v5 = (&v74 - v4);
  v6 = sub_273D82D04(&qword_280925DC8, &qword_273DA3568);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v80 = &v74 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v10 = &v74 - v9;
  sub_273DA244C();
  v78 = sub_273DA243C();
  sub_273DA242C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v11 = a1[4];
  if (v11)
  {

    v12 = sub_273DA20FC();
    v13 = (v5 + *(sub_273D82D04(&qword_280925DE0, &unk_273DA3B90) + 36));
    v14 = *(sub_273D82D04(&qword_280925DE8, &qword_273DA3580) + 28);
    v15 = *MEMORY[0x277CE1048];
    v16 = sub_273DA217C();
    (*(*(v16 - 8) + 104))(v13 + v14, v15, v16);
    *v13 = swift_getKeyPath();
    *v5 = v11;
    v5[1] = v12;

    v17 = sub_273DA1EFC();
    KeyPath = swift_getKeyPath();
    v19 = (v5 + *(sub_273D82D04(&qword_280925DF0, &qword_273DA3B60) + 36));
    *v19 = KeyPath;
    v19[1] = v17;
    LOBYTE(v17) = sub_273DA1E9C();
    sub_273DA181C();
    v21 = v20;
    v23 = v22;
    v25 = v24;
    v27 = v26;

    v28 = v5 + *(v3 + 36);
    *v28 = v17;
    *(v28 + 1) = v21;
    *(v28 + 2) = v23;
    *(v28 + 3) = v25;
    *(v28 + 4) = v27;
    v28[40] = 0;
    sub_273D896F0(v5, v10);
    v29 = 0;
  }

  else
  {
    v29 = 1;
  }

  v81 = v10;
  sub_273D83074(v10, v29, 1, v3);
  v30 = a1[1];
  v82 = *a1;
  v83 = v30;
  v31 = sub_273D8951C();

  v74 = v31;
  v32 = sub_273DA1F7C();
  v34 = v33;
  v36 = v35;
  sub_273DA1EFC();
  v37 = sub_273DA1F5C();
  v39 = v38;
  v41 = v40;

  sub_273D842B8(v32, v34, v36 & 1);

  sub_273DA1ECC();
  v42 = sub_273DA1F2C();
  v75 = v43;
  v76 = v42;
  v45 = v44;
  v77 = v46;
  sub_273D842B8(v37, v39, v41 & 1);

  v47 = a1[3];
  if (v47)
  {
    v82 = a1[2];
    v83 = v47;

    v48 = sub_273DA1F7C();
    v50 = v49;
    v52 = v51;
    sub_273DA1EFC();
    v53 = sub_273DA1F5C();
    v55 = v54;
    LODWORD(v74) = v45;
    v57 = v56;

    sub_273D842B8(v48, v50, v52 & 1);

    LODWORD(v82) = sub_273DA1CFC();
    v58 = sub_273DA1F4C();
    v60 = v59;
    LOBYTE(v48) = v61;
    v63 = v62;
    v64 = v57 & 1;
    LOBYTE(v45) = v74;
    sub_273D842B8(v53, v55, v64);

    v65 = v48 & 1;
    sub_273D895E0(v58, v60, v48 & 1);
  }

  else
  {
    v58 = 0;
    v60 = 0;
    v65 = 0;
    v63 = 0;
  }

  v66 = v80;
  sub_273D89570(v81, v80);
  v67 = v79;
  sub_273D89570(v66, v79);
  v68 = sub_273D82D04(&qword_280925DD8, &unk_273DA3570);
  v69 = v67 + *(v68 + 48);
  v70 = v75;
  v71 = v76;
  *v69 = v76;
  *(v69 + 8) = v70;
  *(v69 + 16) = v45 & 1;
  *(v69 + 24) = v77;
  v72 = (v67 + *(v68 + 64));
  sub_273D895E0(v71, v70, v45 & 1);

  sub_273D895F0(v58, v60, v65, v63);
  sub_273D89634(v58, v60, v65, v63);
  *v72 = v58;
  v72[1] = v60;
  v72[2] = v65;
  v72[3] = v63;
  sub_273D89678(v81);
  sub_273D89634(v58, v60, v65, v63);
  sub_273D842B8(v71, v70, v45 & 1);

  sub_273D89678(v66);
}

unint64_t sub_273D8951C()
{
  result = qword_280925DD0;
  if (!qword_280925DD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280925DD0);
  }

  return result;
}

uint64_t sub_273D89570(uint64_t a1, uint64_t a2)
{
  v4 = sub_273D82D04(&qword_280925DC8, &qword_273DA3568);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_273D895E0(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_273D895F0(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_273D895E0(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_273D89634(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_273D842B8(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_273D89678(uint64_t a1)
{
  v2 = sub_273D82D04(&qword_280925DC8, &qword_273DA3568);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_273D896F0(uint64_t a1, uint64_t a2)
{
  v4 = sub_273D82D04(&qword_280925DC0, &qword_273DA3560);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_273D89764()
{
  result = qword_280925DF8;
  if (!qword_280925DF8)
  {
    sub_273D832AC(&qword_280925E00, &unk_273DA35F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280925DF8);
  }

  return result;
}

uint64_t WelcomeImageView.init(_:)@<X0>(uint64_t *a3@<X8>)
{
  result = sub_273DA219C();
  *a3 = result;
  return result;
}

void *WelcomeImageView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_273DA215C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v8[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v3 + 104))(v5, *MEMORY[0x277CE0FE0], v2);
  v6 = sub_273DA218C();
  (*(v3 + 8))(v5, v2);
  sub_273DA22DC();
  sub_273DA1A7C();
  memcpy(&v8[8], __src, 0x70uLL);
  *a1 = v6;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  *(a1 + 17) = 1;
  return memcpy((a1 + 18), &v8[2], 0x76uLL);
}

uint64_t *initializeBufferWithCopyOfBuffer for WelcomeImageView(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  return a1;
}

uint64_t *assignWithCopy for WelcomeImageView(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  return a1;
}

uint64_t *assignWithTake for WelcomeImageView(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  return a1;
}

uint64_t getEnumTagSinglePayload for WelcomeImageView(uint64_t *a1, int a2)
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

uint64_t storeEnumTagSinglePayload for WelcomeImageView(uint64_t result, int a2, int a3)
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

unint64_t sub_273D89AFC()
{
  result = qword_280925E08;
  if (!qword_280925E08)
  {
    sub_273D832AC(&qword_280925E10, &qword_273DA3698);
    sub_273D89B88();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280925E08);
  }

  return result;
}

unint64_t sub_273D89B88()
{
  result = qword_280925E18;
  if (!qword_280925E18)
  {
    sub_273D832AC(&qword_280925E20, &qword_273DA36A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280925E18);
  }

  return result;
}

double sub_273D89C58()
{
  sub_273D89CD0();
  sub_273DA1B7C();
  return v1;
}

unint64_t sub_273D89CD0()
{
  result = qword_280925E28;
  if (!qword_280925E28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280925E28);
  }

  return result;
}

uint64_t View.welcome(with:detent:showsCloseButton:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  v10 = type metadata accessor for WelcomeSheet(0);
  sub_273D86380();
  MEMORY[0x28223BE20](v11);
  sub_273D8A384();
  v14 = (v13 - v12);
  sub_273D82E38(a1, v25);
  v15 = v10[5];
  sub_273DA1BFC();
  sub_273D86380();
  (*(v16 + 16))(v14 + v15, a2);
  sub_273D8A394(v14 + v10[6]);
  v17 = v10[7];
  sub_273D8A3A0(v18, MEMORY[0x277D83B88]);
  *(v14 + v17) = v24;
  sub_273D8A394(v14 + v10[8]);
  v19 = v14 + v10[11];
  sub_273D8A3A0(v20, MEMORY[0x277D839B0]);
  *v19 = v24;
  *(v19 + 1) = *(&v24 + 1);
  v21 = (v14 + v10[12]);
  sub_273D82D04(&qword_280925E30, &qword_273DA3748);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_273DA3280;
  sub_273D89EEC(v25, v22 + 32);
  *v14 = v22;
  *(v14 + v10[9]) = 1;
  *(v14 + v10[10]) = a3;
  *v21 = 0;
  v21[1] = 0;
  MEMORY[0x2743DDBC0](v14, a4, v10, a5);
  return sub_273D89F04(v14);
}

{
  v10 = type metadata accessor for WelcomeSheet(0);
  sub_273D86380();
  MEMORY[0x28223BE20](v11);
  sub_273D8A384();
  v14 = (v13 - v12);
  v16 = *(v15 + 20);
  sub_273DA1BFC();
  sub_273D86380();
  (*(v17 + 16))(&v14[v16], a2);
  sub_273D8A394(&v14[v10[6]]);
  v18 = v10[7];
  sub_273DA21BC();
  *&v14[v18] = v22;
  sub_273D8A394(&v14[v10[8]]);
  v19 = &v14[v10[11]];
  sub_273DA21BC();
  *v19 = v22;
  *(v19 + 1) = *(&v22 + 1);
  v20 = &v14[v10[12]];
  *v20 = 0;
  *(v20 + 1) = 0;
  *v14 = a1;
  *&v14[v10[9]] = *(a1 + 16);
  v14[v10[10]] = a3;

  MEMORY[0x2743DDBC0](v14, a4, v10, a5);
  return sub_273D89F04(v14);
}

uint64_t sub_273D89EEC(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_273D89F04(uint64_t a1)
{
  v2 = type metadata accessor for WelcomeSheet(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t View.welcome(with:detent:showsCloseButton:onCloseAction:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = type metadata accessor for WelcomeSheet(0);
  sub_273D86380();
  MEMORY[0x28223BE20](v14);
  sub_273D8A384();
  v17 = (v16 - v15);
  sub_273D82E38(a1, v31);
  v18 = v13[5];
  sub_273DA1BFC();
  sub_273D86380();
  v20 = (*(v19 + 16))(v17 + v18, a2);
  v21 = v17 + v13[6];
  *v21 = 1;
  *(v21 + 1) = 0;
  v22 = v13[7];
  v23 = sub_273D8A3A0(v20, MEMORY[0x277D83B88]);
  *(v17 + v22) = v30;
  v24 = v17 + v13[8];
  *v24 = 1;
  *(v24 + 1) = 0;
  v25 = v17 + v13[11];
  sub_273D8A3A0(v23, MEMORY[0x277D839B0]);
  *v25 = v30;
  *(v25 + 1) = *(&v30 + 1);
  v26 = (v17 + v13[12]);
  sub_273D82D04(&qword_280925E30, &qword_273DA3748);
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_273DA3280;
  sub_273D89EEC(v31, v27 + 32);
  *v17 = v27;
  *(v17 + v13[9]) = 1;
  *(v17 + v13[10]) = a3;
  *v26 = a4;
  v26[1] = a5;
  sub_273D839C8(a4, a5);
  MEMORY[0x2743DDBC0](v17, a6, v13, a7);
  return sub_273D89F04(v17);
}

uint64_t sub_273D8A2C0(uint64_t *a1)
{
  type metadata accessor for WelcomeSheet(255);
  sub_273DA19CC();
  sub_273D8A32C();
  return swift_getWitnessTable();
}

unint64_t sub_273D8A32C()
{
  result = qword_280925E38;
  if (!qword_280925E38)
  {
    type metadata accessor for WelcomeSheet(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280925E38);
  }

  return result;
}

void *sub_273D8A3A0(uint64_t a1, uint64_t a2)
{

  return sub_273DA21BC();
}

void sub_273D8A3B8(unsigned __int8 *a1@<X8>)
{
  v2 = [objc_opt_self() standardUserDefaults];
  v3 = sub_273DA239C();
  v4 = [v2 BOOLForKey_];

  *a1 = v4;
}

uint64_t static WelcomeConfiguration.showAllContentForTesting()(uint64_t a1)
{
  if (qword_280925800 != -1)
  {
    a1 = sub_273D8A6F0(&qword_280925800);
  }

  result = sub_273D8A710(a1);
  byte_280925E40 = 1;
  return result;
}

uint64_t static WelcomeConfiguration.shared.getter@<X0>(_BYTE *a1@<X8>)
{
  if (qword_280925800 != -1)
  {
    sub_273D8A6F0(&qword_280925800);
  }

  result = swift_beginAccess();
  *a1 = byte_280925E40;
  return result;
}

uint64_t static WelcomeConfiguration.shared.setter(char *a1)
{
  v1 = *a1;
  if (qword_280925800 != -1)
  {
    a1 = sub_273D8A6F0(&qword_280925800);
  }

  result = sub_273D8A710(a1);
  byte_280925E40 = v1;
  return result;
}

uint64_t (*static WelcomeConfiguration.shared.modify(uint64_t a1))()
{
  if (qword_280925800 != -1)
  {
    sub_273D8A6F0(&qword_280925800);
  }

  swift_beginAccess();
  return j__swift_endAccess;
}

_BYTE *storeEnumTagSinglePayload for WelcomeConfiguration(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
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
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
        JUMPOUT(0x273D8A6B8);
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
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_273D8A6F0(uint64_t a1)
{

  return swift_once();
}

uint64_t sub_273D8A710(uint64_t a1, ...)
{

  return swift_beginAccess();
}

__n128 sub_273D8A730(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_273D8A73C(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_273D8A77C(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

id sub_273D8A7D8(uint64_t a1, uint64_t a2)
{
  v2 = objc_opt_self();
  v3 = sub_273DA240C();
  v4 = [v2 linkWithBundleIdentifiers_];

  if (v4)
  {
    return v4;
  }

  v6 = objc_allocWithZone(MEMORY[0x277D37670]);

  return [v6 init];
}

id sub_273D8A880(void *a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = sub_273DA230C();
  sub_273D8AF94();
  v13 = v12;
  MEMORY[0x28223BE20](v14);
  v16 = v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29[0] = sub_273DA232C();
  sub_273D8AF94();
  v18 = v17;
  MEMORY[0x28223BE20](v19);
  v21 = v29 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [a1 view];
  if (result)
  {
    v23 = result;
    [result intrinsicContentSize];
    v25 = v24;

    sub_273D8ADD0();
    v26 = sub_273DA24CC();
    v27 = swift_allocObject();
    *(v27 + 16) = a4;
    *(v27 + 24) = a5;
    *(v27 + 32) = a6;
    *(v27 + 40) = a2;
    *(v27 + 48) = v25;
    aBlock[4] = sub_273D8AE5C;
    aBlock[5] = v27;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_273D8AC38;
    aBlock[3] = &unk_2882C5DF0;
    v28 = _Block_copy(aBlock);

    sub_273DA231C();
    v29[1] = MEMORY[0x277D84F90];
    sub_273D8AE84();
    sub_273D82D04(&qword_280925E58, &qword_273DA3898);
    sub_273D8AEDC();
    sub_273DA250C();
    MEMORY[0x2743DDFE0](0, v21, v16, v28);
    _Block_release(v28);

    (*(v13 + 8))(v16, v11);
    (*(v18 + 8))(v21, v29[0]);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_273D8AB58(double a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_273DA244C();
  sub_273DA243C();
  sub_273DA242C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_273D82D04(&qword_280925E68, &qword_273DA38A0);
  sub_273DA224C();
}

uint64_t sub_273D8AC38(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

uint64_t sub_273D8ACDC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_273D8AF40();

  return MEMORY[0x28212EF70](a1, a2, a3, v6);
}

uint64_t sub_273D8AD40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_273D8AF40();

  return MEMORY[0x28212EF38](a1, a2, a3, v6);
}

void sub_273D8ADA4(uint64_t a1)
{
  sub_273D8AF40();
  sub_273DA1DFC();
  __break(1u);
}

unint64_t sub_273D8ADD0()
{
  result = qword_280925E48;
  if (!qword_280925E48)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280925E48);
  }

  return result;
}

uint64_t sub_273D8AE14()
{

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_273D8AE6C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_273D8AE84()
{
  result = qword_280925E50;
  if (!qword_280925E50)
  {
    sub_273DA230C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280925E50);
  }

  return result;
}

unint64_t sub_273D8AEDC()
{
  result = qword_280925E60;
  if (!qword_280925E60)
  {
    sub_273D832AC(&qword_280925E58, &qword_273DA3898);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280925E60);
  }

  return result;
}

unint64_t sub_273D8AF40()
{
  result = qword_280925E70;
  if (!qword_280925E70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280925E70);
  }

  return result;
}

uint64_t sub_273D8AFA8(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000010 && 0x8000000273DAA690 == a2;
  if (v3 || (sub_273DA269C() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000013 && 0x8000000273DAA6B0 == a2;
    if (v6 || (sub_273DA269C() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x776569567473616CLL && a2 == 0xEE00656D69546465)
    {

      return 2;
    }

    else
    {
      v8 = sub_273DA269C();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_273D8B10C(unsigned __int8 a1)
{
  sub_273DA26FC();
  MEMORY[0x2743DE210](a1);
  return sub_273DA271C();
}

uint64_t sub_273D8B160(char a1)
{
  if (!a1)
  {
    return 0xD000000000000010;
  }

  if (a1 == 1)
  {
    return 0xD000000000000013;
  }

  return 0x776569567473616CLL;
}

uint64_t sub_273D8B1F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_273D8AFA8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_273D8B23C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_273D8B0CC();
  *a1 = result;
  return result;
}

uint64_t sub_273D8B264(uint64_t a1)
{
  v2 = sub_273D8C9EC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_273D8B2A0(uint64_t a1)
{
  v2 = sub_273D8C9EC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_273D8B2DC(void *a1)
{
  v3 = v1;
  v5 = sub_273D82D04(&qword_280925EE8, &qword_273DA3978);
  sub_273D8AF94();
  v7 = v6;
  sub_273D8D89C();
  MEMORY[0x28223BE20](v8);
  v10 = &v14[-v9];
  sub_273D8339C(a1, a1[3]);
  sub_273D8C9EC();
  sub_273DA273C();
  v15 = *v3;
  v14[7] = 0;
  sub_273D82D04(&qword_280925ED0, &qword_273DA3970);
  sub_273D8CB00(&qword_280925EF0, MEMORY[0x277D837D8], MEMORY[0x277D83B50]);
  sub_273D8D8E0();
  sub_273DA267C();
  if (!v2)
  {
    v14[6] = 1;
    sub_273DA265C();
    type metadata accessor for WelcomeData(0);
    v14[5] = 2;
    sub_273DA176C();
    sub_273D8D884();
    sub_273D8CB6C(v11, v12, MEMORY[0x277CC9580]);
    sub_273D8D8E0();
    sub_273DA266C();
  }

  return (*(v7 + 8))(v10, v5);
}

uint64_t sub_273D8B4D4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v27 = a2;
  v4 = sub_273D82D04(&qword_280925E90, &qword_273DA3900);
  sub_273D8D8A8(v4);
  sub_273D8D89C();
  MEMORY[0x28223BE20](v5);
  v7 = v25 - v6;
  sub_273D82D04(&qword_280925EC0, &qword_273DA3968);
  sub_273D8AF94();
  v28 = v9;
  v29 = v8;
  sub_273D8D89C();
  MEMORY[0x28223BE20](v10);
  v11 = type metadata accessor for WelcomeData(0);
  v12 = sub_273D8D8A8(v11);
  MEMORY[0x28223BE20](v12);
  sub_273D8A384();
  v15 = (v14 - v13);
  v17 = *(v16 + 32);
  v18 = sub_273DA176C();
  v30 = v17;
  sub_273D83074(v15 + v17, 1, 1, v18);
  sub_273D8339C(a1, a1[3]);
  sub_273D8C9EC();
  sub_273DA272C();
  if (v2)
  {
    sub_273D82E9C(a1);
    return sub_273D884D0(v15 + v30, &qword_280925E90, &qword_273DA3900);
  }

  else
  {
    v26 = v7;
    sub_273D82D04(&qword_280925ED0, &qword_273DA3970);
    v33 = 0;
    sub_273D8CB00(&qword_280925ED8, MEMORY[0x277D83808], MEMORY[0x277D83B70]);
    sub_273DA264C();
    v25[1] = v34;
    *v15 = v34;
    v32 = 1;
    v15[1] = sub_273DA262C();
    v15[2] = v19;
    v31 = 2;
    sub_273D8D884();
    sub_273D8CB6C(v20, v21, MEMORY[0x277CC95A0]);
    sub_273DA263C();
    v22 = sub_273D8D8B4();
    v23(v22);
    sub_273D8CCE0(v26, v15 + v30, &qword_280925E90, &qword_273DA3900);
    sub_273D8CA40(v15, v27);
    sub_273D82E9C(a1);
    return sub_273D8CAA4(v15);
  }
}

uint64_t sub_273D8B870()
{
  *(v0 + 16) = 0xD000000000000011;
  *(v0 + 24) = 0x8000000273DAA670;
  v1 = OBJC_IVAR____TtC7Welcome18WelcomeDataManager_welcomeData;
  v2 = type metadata accessor for WelcomeData(0);
  sub_273D83074(v0 + v1, 1, 1, v2);
  sub_273D8B8D4();
  return v0;
}

void sub_273D8B8D4()
{
  v1 = v0;
  v2 = sub_273D82D04(&qword_280925F00, &qword_273DA3980);
  sub_273D8D8A8(v2);
  sub_273D8D89C();
  MEMORY[0x28223BE20](v3);
  v5 = &v19 - v4;
  v6 = type metadata accessor for WelcomeData(0);
  sub_273D86380();
  MEMORY[0x28223BE20](v7);
  sub_273D8A384();
  v10 = v9 - v8;
  v11 = [objc_opt_self() standardUserDefaults];
  v12 = sub_273DA239C();
  v13 = [v11 dataForKey_];

  if (v13)
  {
    sub_273DA174C();

    sub_273DA167C();
    swift_allocObject();
    sub_273DA166C();
    sub_273D8D86C();
    sub_273D8CB6C(v14, v15, &unk_273DA393C);
    sub_273DA165C();

    v16 = sub_273D8D8F4();
    sub_273D8CC88(v16, v17);
    sub_273D8CC24(v10, v5);
    sub_273D83074(v5, 0, 1, v6);
    v18 = OBJC_IVAR____TtC7Welcome18WelcomeDataManager_welcomeData;
    swift_beginAccess();
    sub_273D8CCE0(v5, v1 + v18, &qword_280925F00, &qword_273DA3980);
    swift_endAccess();
  }
}

uint64_t sub_273D8BC28()
{
  v1 = v0;
  v2 = sub_273D82D04(&qword_280925F00, &qword_273DA3980);
  sub_273D8D8A8(v2);
  sub_273D8D89C();
  MEMORY[0x28223BE20](v3);
  v5 = &v21 - v4;
  v6 = type metadata accessor for WelcomeData(0);
  sub_273D86380();
  MEMORY[0x28223BE20](v7);
  sub_273D8A384();
  v10 = v9 - v8;
  v11 = OBJC_IVAR____TtC7Welcome18WelcomeDataManager_welcomeData;
  swift_beginAccess();
  sub_273D8CBB4(v1 + v11, v5);
  if (sub_273D82FAC(v5, 1, v6) == 1)
  {
    return sub_273D884D0(v5, &qword_280925F00, &qword_273DA3980);
  }

  sub_273D8CC24(v5, v10);
  sub_273DA16AC();
  swift_allocObject();
  sub_273DA169C();
  sub_273D8D86C();
  sub_273D8CB6C(v13, v14, &unk_273DA3914);
  v15 = sub_273DA168C();
  v17 = v16;
  v18 = [objc_opt_self() standardUserDefaults];
  v19 = sub_273DA173C();
  v20 = sub_273DA239C();
  [v18 setObject:v19 forKey:v20];
  sub_273D8CC88(v15, v17);

  return sub_273D8CAA4(v10);
}

uint64_t sub_273D8BF68(unint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = sub_273D82D04(&qword_280925E90, &qword_273DA3900);
  sub_273D8D8A8(v6);
  sub_273D8D89C();
  MEMORY[0x28223BE20](v7);
  v9 = &v33 - v8;
  v10 = sub_273D82D04(&qword_280925F00, &qword_273DA3980);
  v11 = sub_273D8D8A8(v10);
  v12 = MEMORY[0x28223BE20](v11);
  v14 = &v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v33 - v15;
  v17 = type metadata accessor for WelcomeData(0);
  sub_273D86380();
  MEMORY[0x28223BE20](v18);
  sub_273D8A384();
  v21 = (v20 - v19);
  v22 = OBJC_IVAR____TtC7Welcome18WelcomeDataManager_welcomeData;
  swift_beginAccess();
  sub_273D8CBB4(v3 + v22, v16);
  if (sub_273D82FAC(v16, 1, v17) == 1)
  {
    v23 = *(v17 + 24);
    v24 = sub_273DA176C();
    sub_273D83074(v21 + v23, 1, 1, v24);
    v25 = MEMORY[0x277D84FA0];
    v21[1] = 0;
    v21[2] = 0;
    *v21 = v25;
    if (sub_273D82FAC(v16, 1, v17) != 1)
    {
      sub_273D884D0(v16, &qword_280925F00, &qword_273DA3980);
    }
  }

  else
  {
    sub_273D8CC24(v16, v21);
  }

  sub_273D8CD40(&v33, a1, a2);

  v21[1] = a1;
  v21[2] = a2;
  sub_273DA175C();
  v26 = sub_273DA176C();
  sub_273D83074(v9, 0, 1, v26);
  sub_273D8CCE0(v9, v21 + *(v17 + 24), &qword_280925E90, &qword_273DA3900);
  sub_273D8CA40(v21, v14);
  sub_273D83074(v14, 0, 1, v17);
  swift_beginAccess();
  sub_273D8CCE0(v14, v3 + v22, &qword_280925F00, &qword_273DA3980);
  swift_endAccess();
  sub_273D8BC28();
  if (qword_280925808 != -1)
  {
    sub_273D8D84C(&qword_280925808);
  }

  v27 = sub_273DA17EC();
  sub_273D833F0(v27, qword_280927808);

  v28 = sub_273DA17CC();
  v29 = sub_273DA249C();

  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v33 = v31;
    *v30 = 136315138;
    *(v30 + 4) = sub_273D990C4(a1, a2, &v33);
    _os_log_impl(&dword_273D7D000, v28, v29, "Marked content with ID %s as viewed", v30, 0xCu);
    sub_273D82E9C(v31);
    sub_273D8D8C4();
    MEMORY[0x2743DE750](v30, -1, -1);
  }

  return sub_273D8CAA4(v21);
}

BOOL sub_273D8C32C()
{
  v1 = sub_273D82D04(&qword_280925F00, &qword_273DA3980);
  sub_273D8D8A8(v1);
  sub_273D8D89C();
  MEMORY[0x28223BE20](v2);
  v4 = (&v12 - v3);
  v5 = OBJC_IVAR____TtC7Welcome18WelcomeDataManager_welcomeData;
  swift_beginAccess();
  sub_273D8CBB4(v0 + v5, v4);
  v6 = type metadata accessor for WelcomeData(0);
  if (sub_273D82FAC(v4, 1, v6))
  {
    sub_273D884D0(v4, &qword_280925F00, &qword_273DA3980);
    return 0;
  }

  else
  {
    v8 = *v4;

    sub_273D884D0(v4, &qword_280925F00, &qword_273DA3980);
    v9 = sub_273D8D8F4();
    v7 = sub_273D8C450(v9, v10, v8);
  }

  return v7;
}

BOOL sub_273D8C450(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  sub_273DA26FC();
  sub_273DA23CC();
  v6 = sub_273DA271C();
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

    v13 = sub_273DA269C();
    v6 = v8 + 1;
  }

  while ((v13 & 1) == 0);
  return v10;
}

uint64_t sub_273D8C53C()
{

  sub_273D884D0(v0 + OBJC_IVAR____TtC7Welcome18WelcomeDataManager_welcomeData, &qword_280925F00, &qword_273DA3980);
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

void sub_273D8C5E0(uint64_t a1)
{
  sub_273D8C998(319, &qword_280925E88, type metadata accessor for WelcomeData);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_273D8C6B8(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_273D8C704(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_273D82D04(&qword_280925E90, &qword_273DA3900);
    v9 = a1 + *(a3 + 24);

    return sub_273D82FAC(v9, a2, v8);
  }
}

void *sub_273D8C7AC(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_273D82D04(&qword_280925E90, &qword_273DA3900);
    v8 = v5 + *(a4 + 24);

    return sub_273D83074(v8, a2, a2, v7);
  }

  return result;
}

void sub_273D8C838(uint64_t a1)
{
  sub_273D8C8F0();
  if (v1 <= 0x3F)
  {
    sub_273D8C948();
    if (v2 <= 0x3F)
    {
      sub_273D8C998(319, &qword_280925EB8, MEMORY[0x277CC9578]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_273D8C8F0()
{
  if (!qword_280925EA8)
  {
    v0 = sub_273DA248C();
    if (!v1)
    {
      atomic_store(v0, &qword_280925EA8);
    }
  }
}

void sub_273D8C948()
{
  if (!qword_280925EB0)
  {
    v0 = sub_273DA24FC();
    if (!v1)
    {
      atomic_store(v0, &qword_280925EB0);
    }
  }
}

void sub_273D8C998(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_273DA24FC();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_273D8C9EC()
{
  result = qword_280925EC8;
  if (!qword_280925EC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280925EC8);
  }

  return result;
}

uint64_t sub_273D8CA40(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WelcomeData(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_273D8CAA4(uint64_t a1)
{
  v2 = type metadata accessor for WelcomeData(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_273D8CB00(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_273D832AC(&qword_280925ED0, &qword_273DA3970);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_273D8CB6C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_273D8CBB4(uint64_t a1, uint64_t a2)
{
  v4 = sub_273D82D04(&qword_280925F00, &qword_273DA3980);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_273D8CC24(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WelcomeData(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_273D8CC88(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v2;
    }
  }
}

uint64_t sub_273D8CCE0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  sub_273D82D04(a3, a4);
  sub_273D86380();
  (*(v6 + 40))(a2, a1);
  return a2;
}

BOOL sub_273D8CD40(unint64_t *a1, unint64_t a2, unint64_t a3)
{
  v7 = *v3;
  sub_273DA26FC();
  sub_273DA23CC();
  v8 = sub_273DA271C();
  v9 = ~(-1 << *(v7 + 32));
  while (1)
  {
    v10 = v8 & v9;
    v11 = (1 << (v8 & v9)) & *(v7 + 56 + (((v8 & v9) >> 3) & 0xFFFFFFFFFFFFFF8));
    if (!v11)
    {
      break;
    }

    v12 = (*(v7 + 48) + 16 * v10);
    v13 = *v12 == a2 && v12[1] == a3;
    if (v13 || (sub_273DA269C() & 1) != 0)
    {

      v14 = (*(v7 + 48) + 16 * v10);
      v15 = v14[1];
      *a1 = *v14;
      a1[1] = v15;

      return v11 == 0;
    }

    v8 = v10 + 1;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v18 = *v3;

  sub_273D8D0E8(a2, a3, v10, isUniquelyReferenced_nonNull_native);
  *v3 = v18;
  *a1 = a2;
  a1[1] = a3;
  return v11 == 0;
}

uint64_t sub_273D8CE8C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_273D82D04(&qword_280925F18, &qword_273DA3988);
  result = sub_273DA252C();
  v5 = result;
  if (!*(v3 + 16))
  {
LABEL_27:

    *v2 = v5;
    return result;
  }

  v6 = 0;
  v7 = (v3 + 56);
  v8 = 1 << *(v3 + 32);
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  else
  {
    v9 = -1;
  }

  v10 = v9 & *(v3 + 56);
  v11 = (v8 + 63) >> 6;
  v12 = result + 56;
  if (!v10)
  {
LABEL_7:
    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v6 >= v11)
      {
        break;
      }

      v15 = v7[v6];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v10 = (v15 - 1) & v15;
        goto LABEL_12;
      }
    }

    v28 = 1 << *(v3 + 32);
    if (v28 >= 64)
    {
      sub_273D8D250(0, (v28 + 63) >> 6, v3 + 56);
    }

    else
    {
      *v7 = -1 << v28;
    }

    v2 = v1;
    *(v3 + 16) = 0;
    goto LABEL_27;
  }

  while (1)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_12:
    v16 = (*(v3 + 48) + 16 * (v13 | (v6 << 6)));
    v17 = *v16;
    v18 = v16[1];
    sub_273DA26FC();
    sub_273DA23CC();
    result = sub_273DA271C();
    v19 = -1 << *(v5 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
    {
      break;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    *(v12 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    v27 = (*(v5 + 48) + 16 * v22);
    *v27 = v17;
    v27[1] = v18;
    ++*(v5 + 16);
    if (!v10)
    {
      goto LABEL_7;
    }
  }

  v23 = 0;
  v24 = (63 - v19) >> 6;
  while (++v21 != v24 || (v23 & 1) == 0)
  {
    v25 = v21 == v24;
    if (v21 == v24)
    {
      v21 = 0;
    }

    v23 |= v25;
    v26 = *(v12 + 8 * v21);
    if (v26 != -1)
    {
      v22 = __clz(__rbit64(~v26)) + (v21 << 6);
      goto LABEL_21;
    }
  }

LABEL_29:
  __break(1u);
  return result;
}

unint64_t sub_273D8D0E8(unint64_t result, unint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 <= v8 || (a4 & 1) == 0)
  {
    if (a4)
    {
      sub_273D8CE8C(v8 + 1);
      goto LABEL_10;
    }

    if (v9 <= v8)
    {
      sub_273D8D40C(v8 + 1);
LABEL_10:
      v15 = *v4;
      sub_273DA26FC();
      sub_273DA23CC();
      result = sub_273DA271C();
      v16 = ~(-1 << *(v15 + 32));
      while (1)
      {
        a3 = result & v16;
        if (((*(v15 + 56 + (((result & v16) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (result & v16)) & 1) == 0)
        {
          goto LABEL_7;
        }

        v17 = (*(v15 + 48) + 16 * a3);
        v18 = *v17 == v7 && v17[1] == a2;
        if (v18 || (sub_273DA269C() & 1) != 0)
        {
          goto LABEL_19;
        }

        result = a3 + 1;
      }
    }

    result = sub_273D8D2B4();
  }

LABEL_7:
  v10 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v11 = (*(v10 + 48) + 16 * a3);
  *v11 = v7;
  v11[1] = a2;
  v12 = *(v10 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
LABEL_19:
    result = sub_273DA26AC();
    __break(1u);
  }

  else
  {
    *(v10 + 16) = v14;
  }

  return result;
}

uint64_t sub_273D8D250(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else if (a2)
  {
    v3 = (a2 + 1) & 0xFFFFFFFFFFFFFFFELL;
    v4 = vdupq_n_s64(a2 - 1);
    v5 = xmmword_273DA38B0;
    v6 = (a3 + 8);
    v7 = vdupq_n_s64(2uLL);
    do
    {
      v8 = vmovn_s64(vcgeq_u64(v4, v5));
      if (v8.i8[0])
      {
        *(v6 - 1) = result;
      }

      if (v8.i8[4])
      {
        *v6 = result;
      }

      v5 = vaddq_s64(v5, v7);
      v6 += 2;
      v3 -= 2;
    }

    while (v3);
  }

  return result;
}

void *sub_273D8D2B4()
{
  v1 = v0;
  sub_273D82D04(&qword_280925F18, &qword_273DA3988);
  v2 = *v0;
  v3 = sub_273DA251C();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + 16 * v17);
        *v20 = *v18;
        v20[1] = v19;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_273D8D40C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_273D82D04(&qword_280925F18, &qword_273DA3988);
  result = sub_273DA252C();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    if (v9)
    {
      while (1)
      {
        v12 = __clz(__rbit64(v9));
        v9 &= v9 - 1;
LABEL_12:
        v15 = (*(v3 + 48) + 16 * (v12 | (v6 << 6)));
        v16 = *v15;
        v17 = v15[1];
        sub_273DA26FC();

        sub_273DA23CC();
        result = sub_273DA271C();
        v18 = -1 << *(v5 + 32);
        v19 = result & ~v18;
        v20 = v19 >> 6;
        if (((-1 << v19) & ~*(v11 + 8 * (v19 >> 6))) == 0)
        {
          break;
        }

        v21 = __clz(__rbit64((-1 << v19) & ~*(v11 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v11 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
        v26 = (*(v5 + 48) + 16 * v21);
        *v26 = v16;
        v26[1] = v17;
        ++*(v5 + 16);
        if (!v9)
        {
          goto LABEL_7;
        }
      }

      v22 = 0;
      v23 = (63 - v18) >> 6;
      while (++v20 != v23 || (v22 & 1) == 0)
      {
        v24 = v20 == v23;
        if (v20 == v23)
        {
          v20 = 0;
        }

        v22 |= v24;
        v25 = *(v11 + 8 * v20);
        if (v25 != -1)
        {
          v21 = __clz(__rbit64(~v25)) + (v20 << 6);
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_7:
      v13 = v6;
      while (1)
      {
        v6 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          break;
        }

        if (v6 >= v10)
        {

          v2 = v1;
          goto LABEL_25;
        }

        v14 = *(v3 + 56 + 8 * v6);
        ++v13;
        if (v14)
        {
          v12 = __clz(__rbit64(v14));
          v9 = (v14 - 1) & v14;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_25:
    *v2 = v5;
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for WelcomeData.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x273D8D70CLL);
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

unint64_t sub_273D8D748()
{
  result = qword_280925F20;
  if (!qword_280925F20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280925F20);
  }

  return result;
}

unint64_t sub_273D8D7A0()
{
  result = qword_280925F28;
  if (!qword_280925F28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280925F28);
  }

  return result;
}

unint64_t sub_273D8D7F8()
{
  result = qword_280925F30;
  if (!qword_280925F30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280925F30);
  }

  return result;
}

uint64_t sub_273D8D84C(uint64_t a1)
{

  return swift_once();
}

void sub_273D8D8C4()
{

  JUMPOUT(0x2743DE750);
}

uint64_t sub_273D8D914(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WelcomeListItem(0);

  return sub_273D82FAC(a1, a2, v4);
}

uint64_t sub_273D8D970(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WelcomeListItem(0);

  return sub_273D83074(a1, a2, a2, v4);
}

uint64_t type metadata accessor for WelcomeListItemView(uint64_t a1)
{
  result = qword_280925F38;
  if (!qword_280925F38)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_273D8DA24@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v53 = a1;
  v46 = sub_273D82D04(&qword_280925F48, &qword_273DA3B18);
  sub_273D86380();
  sub_273D8D89C();
  MEMORY[0x28223BE20](v3);
  v5 = (&v44 - v4);
  v6 = type metadata accessor for WelcomeListItemView(0);
  v45 = *(v6 - 8);
  v7 = *(v45 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v47 = sub_273D82D04(&qword_280925F50, &qword_273DA3B20);
  sub_273D8AF94();
  v9 = v8;
  sub_273D8D89C();
  MEMORY[0x28223BE20](v10);
  v12 = &v44 - v11;
  v52 = sub_273D82D04(&qword_280925F58, &qword_273DA3B28);
  sub_273D86380();
  sub_273D8D89C();
  MEMORY[0x28223BE20](v13);
  v15 = &v44 - v14;
  v49 = sub_273D82D04(&qword_280925F60, &qword_273DA3B30);
  sub_273D86380();
  sub_273D8D89C();
  MEMORY[0x28223BE20](v16);
  v51 = &v44 - v17;
  v48 = sub_273D82D04(&qword_280925F68, &qword_273DA3B38);
  sub_273D86380();
  sub_273D8D89C();
  MEMORY[0x28223BE20](v18);
  v20 = &v44 - v19;
  v50 = sub_273D82D04(&qword_280925F70, &qword_273DA3B40);
  sub_273D8AF94();
  sub_273D8D89C();
  MEMORY[0x28223BE20](v21);
  v24 = &v44 - v23;
  v26 = v2[5];
  v25 = v2[6];
  if (!v26)
  {
    if (!v25)
    {
      v37 = v22;
      *v20 = sub_273DA1BAC();
      *(v20 + 1) = 0x4024000000000000;
      v20[16] = 0;
      v38 = sub_273D82D04(&qword_280925F78, &qword_273DA3B48);
      sub_273D8E058(v2, &v20[*(v38 + 44)]);
      sub_273DA189C();
      sub_273D8F670();
      v41 = sub_273D86338(v39, &qword_280925F68, &qword_273DA3B38, v40);
      v42 = v48;
      sub_273DA1FFC();
      sub_273D884D0(v20, &qword_280925F68, &qword_273DA3B38);
      v43 = v50;
      (*(v37 + 16))(v51, v24, v50);
      swift_storeEnumTagMultiPayload();
      v54 = v42;
      v55 = v41;
      sub_273D8F688();
      sub_273D8ED88();
      sub_273DA1C5C();
      return (*(v37 + 8))(v24, v43);
    }

    goto LABEL_5;
  }

  if (v25)
  {
LABEL_5:
    sub_273D8EF2C(v2, &v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
    v27 = (*(v45 + 80) + 16) & ~*(v45 + 80);
    v28 = swift_allocObject();
    v29 = sub_273D8F094(&v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v28 + v27);
    MEMORY[0x28223BE20](v29);
    *(&v44 - 2) = v2;
    sub_273D82D04(&qword_280925FA0, &qword_273DA3B50);
    sub_273D8EE40();
    sub_273DA19AC();
    v30 = v47;
    (*(v9 + 16))(v5, v12, v47);
    swift_storeEnumTagMultiPayload();
    sub_273D8F6B4(&qword_280925F90, &qword_280925F50, &qword_273DA3B20);
    sub_273DA1C5C();
    (*(v9 + 8))(v12, v30);
    goto LABEL_6;
  }

  *v5 = v26;
  swift_storeEnumTagMultiPayload();

  sub_273D82D04(&qword_280925FA0, &qword_273DA3B50);
  sub_273D8F6B4(&qword_280925F90, &qword_280925F50, &qword_273DA3B20);
  sub_273D8EE40();
  sub_273DA1C5C();
LABEL_6:
  sub_273D8EEBC(v15, v51);
  swift_storeEnumTagMultiPayload();
  sub_273D8F670();
  v35 = sub_273D86338(v31, v32, v33, v34);
  v54 = v48;
  v55 = v35;
  sub_273D8F688();
  sub_273D8ED88();
  sub_273DA1C5C();
  return sub_273D884D0(v15, &qword_280925F58, &qword_273DA3B28);
}

uint64_t sub_273D8E058@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v49 = a2;
  v3 = sub_273D82D04(&qword_280925FA8, &qword_273DA3B58);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v6 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v40 - v7;
  v46 = sub_273D82D04(&qword_280925DF0, &qword_273DA3B60);
  MEMORY[0x28223BE20](v46);
  v10 = (&v40 - v9);
  v11 = sub_273D82D04(&qword_280925FB0, &qword_273DA3B68);
  MEMORY[0x28223BE20](v11);
  v13 = (&v40 - v12);
  v14 = sub_273D82D04(&qword_280925FB8, &qword_273DA3B70);
  v15 = MEMORY[0x28223BE20](v14 - 8);
  v48 = &v40 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v18 = &v40 - v17;
  sub_273DA244C();
  v47 = sub_273DA243C();
  sub_273DA242C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v19 = a1[4];
  if (v19)
  {
    v43 = v11;
    v44 = a1;

    *v13 = sub_273DA22CC();
    v13[1] = v20;
    v42 = sub_273DA243C();
    sub_273DA242C();
    if ((swift_task_isCurrentExecutor() & 1) == 0)
    {
      swift_task_reportUnexpectedExecutor();
    }

    v45 = v6;
    v41 = v13 + *(sub_273D82D04(&qword_280925FD0, &qword_273DA3B88) + 44);
    v21 = sub_273DA20FC();
    v22 = *(sub_273D82D04(&qword_280925DE0, &unk_273DA3B90) + 36);
    v40 = v13;
    v23 = (v10 + v22);
    v24 = *(sub_273D82D04(&qword_280925DE8, &qword_273DA3580) + 28);
    v25 = *MEMORY[0x277CE1048];
    v26 = sub_273DA217C();
    (*(*(v26 - 8) + 104))(v23 + v24, v25, v26);
    *v23 = swift_getKeyPath();
    *v10 = v19;
    v10[1] = v21;

    v27 = sub_273DA1F0C();
    KeyPath = swift_getKeyPath();
    v29 = (v10 + *(v46 + 36));
    *v29 = KeyPath;
    v29[1] = v27;
    if (qword_280925810 != -1)
    {
      swift_once();
    }

    v30 = sub_273D82D04(&qword_280925908, &qword_273DA3C00);
    sub_273D833F0(v30, qword_280927820);
    sub_273D8F280();
    sub_273D86338(&qword_280925918, &qword_280925908, &qword_273DA3C00, MEMORY[0x277D83660]);
    v31 = v41;
    sub_273DA1FEC();
    sub_273D884D0(v10, &qword_280925DF0, &qword_273DA3B60);
    sub_273DA22DC();
    sub_273DA18EC();

    v32 = &v31[*(sub_273D82D04(&qword_280926010, &qword_273DA3C20) + 36)];
    v33 = v51;
    *v32 = v50;
    *(v32 + 1) = v33;
    *(v32 + 2) = v52;
    sub_273D8F4A8(v40, v18);
    v34 = 0;
    a1 = v44;
    v6 = v45;
    v11 = v43;
  }

  else
  {
    v34 = 1;
  }

  sub_273D83074(v18, v34, 1, v11);
  *v8 = sub_273DA1C1C();
  *(v8 + 1) = 0;
  v8[16] = 1;
  v35 = sub_273D82D04(&qword_280925FC0, &qword_273DA3B78);
  sub_273D8E654(a1, &v8[*(v35 + 44)]);
  v36 = v48;
  sub_273D8F510(v18, v48, &qword_280925FB8, &qword_273DA3B70);
  sub_273D8F510(v8, v6, &qword_280925FA8, &qword_273DA3B58);
  v37 = v49;
  sub_273D8F510(v36, v49, &qword_280925FB8, &qword_273DA3B70);
  v38 = sub_273D82D04(&qword_280925FC8, &qword_273DA3B80);
  sub_273D8F510(v6, v37 + *(v38 + 48), &qword_280925FA8, &qword_273DA3B58);
  sub_273D884D0(v8, &qword_280925FA8, &qword_273DA3B58);
  sub_273D884D0(v18, &qword_280925FB8, &qword_273DA3B70);
  sub_273D884D0(v6, &qword_280925FA8, &qword_273DA3B58);
  sub_273D884D0(v36, &qword_280925FB8, &qword_273DA3B70);
}

uint64_t sub_273D8E654@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v69 = a2;
  v3 = sub_273D82D04(&qword_280926018, &qword_273DA3C28);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v70 = &v62 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v66 = &v62 - v6;
  v7 = sub_273D82D04(&qword_280925C40, &qword_273DA3C30);
  v67 = *(v7 - 8);
  v68 = v7;
  v8 = MEMORY[0x28223BE20](v7);
  v65 = &v62 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v71 = &v62 - v10;
  sub_273DA244C();
  v64 = sub_273DA243C();
  sub_273DA242C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v11 = a1[1];
  v72 = *a1;
  v73 = v11;
  v12 = sub_273D8951C();

  v62 = v12;
  v13 = sub_273DA1F7C();
  v15 = v14;
  v17 = v16;
  sub_273DA1EBC();
  v18 = sub_273DA1F5C();
  v20 = v19;
  v63 = a1;
  v22 = v21;

  sub_273D842B8(v13, v15, v17 & 1);

  sub_273DA1EEC();
  v23 = sub_273DA1F2C();
  v25 = v24;
  v27 = v26;
  v29 = v28;
  sub_273D842B8(v18, v20, v22 & 1);

  v72 = v23;
  v73 = v25;
  v74 = v27 & 1;
  v75 = v29;
  if (qword_280925810 != -1)
  {
    swift_once();
  }

  v30 = sub_273D82D04(&qword_280925908, &qword_273DA3C00);
  v31 = sub_273D833F0(v30, qword_280927820);
  v32 = sub_273D86338(&qword_280925918, &qword_280925908, &qword_273DA3C00, MEMORY[0x277D83660]);
  sub_273DA1FEC();
  sub_273D842B8(v23, v25, v27 & 1);

  v33 = v63[3];
  if (v33)
  {
    v72 = v63[2];
    v73 = v33;

    v34 = sub_273DA1F7C();
    v36 = v35;
    v38 = v37;
    sub_273DA1EBC();
    v39 = sub_273DA1F5C();
    v41 = v40;
    v62 = v31;
    v63 = v32;
    v43 = v42;

    sub_273D842B8(v34, v36, v38 & 1);

    LODWORD(v72) = sub_273DA1CFC();
    v44 = sub_273DA1F4C();
    v46 = v45;
    LOBYTE(v36) = v47;
    v49 = v48;
    sub_273D842B8(v39, v41, v43 & 1);

    v72 = v44;
    v73 = v46;
    v74 = v36 & 1;
    v75 = v49;
    v50 = v65;
    sub_273DA1FEC();
    sub_273D842B8(v44, v46, v36 & 1);

    v52 = v66;
    v51 = v67;
    v53 = v68;
    (*(v67 + 32))(v66, v50, v68);
    v54 = 0;
  }

  else
  {
    v54 = 1;
    v51 = v67;
    v53 = v68;
    v50 = v65;
    v52 = v66;
  }

  sub_273D83074(v52, v54, 1, v53);
  v55 = *(v51 + 16);
  v56 = v71;
  v55(v50, v71, v53);
  v57 = v70;
  sub_273D8F510(v52, v70, &qword_280926018, &qword_273DA3C28);
  v58 = v69;
  v55(v69, v50, v53);
  v59 = sub_273D82D04(&qword_280926020, &qword_273DA3C38);
  sub_273D8F510(v57, &v58[*(v59 + 48)], &qword_280926018, &qword_273DA3C28);
  sub_273D884D0(v52, &qword_280926018, &qword_273DA3C28);
  v60 = *(v51 + 8);
  v60(v56, v53);
  sub_273D884D0(v57, &qword_280926018, &qword_273DA3C28);
  v60(v50, v53);
}

uint64_t sub_273D8EC3C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_273DA244C();
  sub_273DA243C();
  sub_273DA242C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v4 = *(a1 + 48);

  *a2 = v4;
  return result;
}

uint64_t sub_273D8ECE0@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_273DA244C();
  sub_273DA243C();
  sub_273DA242C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v4 = *(a1 + 40);

  *a2 = v4;
  return result;
}

unint64_t sub_273D8ED88()
{
  result = qword_280925F88;
  if (!qword_280925F88)
  {
    sub_273D832AC(&qword_280925F58, &qword_273DA3B28);
    sub_273D86338(&qword_280925F90, &qword_280925F50, &qword_273DA3B20, MEMORY[0x277CDD9E8]);
    sub_273D8EE40();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280925F88);
  }

  return result;
}

unint64_t sub_273D8EE40()
{
  result = qword_280925F98;
  if (!qword_280925F98)
  {
    sub_273D832AC(&qword_280925FA0, &qword_273DA3B50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280925F98);
  }

  return result;
}

uint64_t sub_273D8EEBC(uint64_t a1, uint64_t a2)
{
  v4 = sub_273D82D04(&qword_280925F58, &qword_273DA3B28);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_273D8EF2C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WelcomeListItemView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_273D8EF90()
{
  v1 = *(type metadata accessor for WelcomeListItemView(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);

  v5 = *(type metadata accessor for WelcomeListItem(0) + 36);
  sub_273DA178C();
  sub_273D86380();
  (*(v6 + 8))(v0 + v3 + v5);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_273D8F094(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WelcomeListItemView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_273D8F0F8@<X0>(void *a1@<X8>)
{
  v3 = *(type metadata accessor for WelcomeListItemView(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_273D8EC3C(v4, a1);
}

uint64_t sub_273D8F1B8(uint64_t a1)
{
  sub_273DA217C();
  sub_273D8AF94();
  MEMORY[0x28223BE20](v2);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_273DA1A9C();
}

unint64_t sub_273D8F280()
{
  result = qword_280925FD8;
  if (!qword_280925FD8)
  {
    sub_273D832AC(&qword_280925DF0, &qword_273DA3B60);
    sub_273D8F338();
    sub_273D86338(&qword_280925B30, &qword_280925B38, &qword_273DA30E0, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280925FD8);
  }

  return result;
}

unint64_t sub_273D8F338()
{
  result = qword_280925FE0;
  if (!qword_280925FE0)
  {
    sub_273D832AC(&qword_280925DE0, &unk_273DA3B90);
    sub_273D8F3F0();
    sub_273D86338(&qword_280926008, &qword_280925DE8, &qword_273DA3580, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280925FE0);
  }

  return result;
}

unint64_t sub_273D8F3F0()
{
  result = qword_280925FE8;
  if (!qword_280925FE8)
  {
    sub_273D832AC(&qword_280925FF0, &qword_273DA3C08);
    sub_273D86338(&qword_280925FF8, &qword_280926000, &unk_273DA3C10, MEMORY[0x277CE0740]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280925FE8);
  }

  return result;
}

uint64_t sub_273D8F4A8(uint64_t a1, uint64_t a2)
{
  sub_273D82D04(&qword_280925FB0, &qword_273DA3B68);
  sub_273D86380();
  (*(v4 + 32))(a2, a1);
  return a2;
}

uint64_t sub_273D8F510(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  sub_273D82D04(a3, a4);
  sub_273D86380();
  (*(v6 + 16))(a2, a1);
  return a2;
}

unint64_t sub_273D8F574()
{
  result = qword_280926028;
  if (!qword_280926028)
  {
    sub_273D832AC(&qword_280926030, qword_273DA3C40);
    sub_273D832AC(&qword_280925F68, &qword_273DA3B38);
    sub_273D86338(&qword_280925F80, &qword_280925F68, &qword_273DA3B38, MEMORY[0x277CE1138]);
    swift_getOpaqueTypeConformance2();
    sub_273D8ED88();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280926028);
  }

  return result;
}

uint64_t sub_273D8F688()
{

  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_273D8F6B4(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  v4 = MEMORY[0x277CDD9E8];

  return sub_273D86338(a1, a2, a3, v4);
}

unint64_t sub_273D8F6EC()
{
  result = qword_280926038;
  if (!qword_280926038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280926038);
  }

  return result;
}

id sub_273D8F740(uint64_t a1, uint64_t a2)
{
  v3 = [objc_allocWithZone(MEMORY[0x277CB85E0]) init];
  [v3 setPlayer_];
  [v3 setShowsPlaybackControls_];
  v4 = v3;
  result = [v4 view];
  if (result)
  {
    v6 = result;
    v7 = [objc_opt_self() clearColor];
    [v6 setBackgroundColor_];

    [v4 setVideoGravity_];
    return v4;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_273D8F83C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_273D8F92C();

  return MEMORY[0x28212EF70](a1, a2, a3, v6);
}

uint64_t sub_273D8F8A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_273D8F92C();

  return MEMORY[0x28212EF38](a1, a2, a3, v6);
}

void sub_273D8F904(uint64_t a1)
{
  sub_273D8F92C();
  sub_273DA1DFC();
  __break(1u);
}

unint64_t sub_273D8F92C()
{
  result = qword_280926040;
  if (!qword_280926040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280926040);
  }

  return result;
}

uint64_t KeyPathAccessible.set<A>(_:_:)()
{
  sub_273D8FBC0();
  sub_273D8FB90();
  MEMORY[0x28223BE20](v2);
  v4 = sub_273D8FB78(v3, v8);
  v5(v4);
  swift_setAtReferenceWritableKeyPath();
  sub_273D8FBA8();
  return (*(v6 + 16))(v1, v0);
}

uint64_t KeyPathAccessible.with<A>(_:_:)()
{
  sub_273D8FBC0();
  sub_273D8FB90();
  MEMORY[0x28223BE20](v2);
  v4 = sub_273D8FB78(v3, v8);
  v5(v4);
  swift_setAtWritableKeyPath();
  sub_273D8FBA8();
  return (*(v6 + 32))(v1, v0);
}

double sub_273D8FC00@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_273DA1A4C();
  MEMORY[0x28223BE20](v4 - 8);
  v5 = sub_273DA1A6C();
  sub_273D8AF94();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  v10 = &v20[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = sub_273D82D04(&qword_280926048, &qword_273DA3E18);
  sub_273D8AF94();
  v13 = v12;
  MEMORY[0x28223BE20](v14);
  v16 = &v20[-v15];
  v21 = a1;
  sub_273D82D04(&qword_280926050, &qword_273DA3E20);
  sub_273D90104();
  sub_273DA22BC();
  sub_273DA1A3C();
  sub_273DA1A5C();
  sub_273D86338(&qword_280926068, &qword_280926048, &qword_273DA3E18, MEMORY[0x277CDF0C8]);
  sub_273DA1F8C();
  (*(v7 + 8))(v10, v5);
  (*(v13 + 8))(v16, v11);
  v17 = sub_273DA1E6C();
  v18 = a2 + *(sub_273D82D04(&qword_280926070, &qword_273DA3E28) + 36);
  *v18 = v17;
  result = 0.0;
  *(v18 + 8) = 0u;
  *(v18 + 24) = 0u;
  *(v18 + 40) = 1;
  return result;
}

uint64_t sub_273D8FE8C(uint64_t a1)
{
  sub_273DA244C();
  sub_273DA243C();
  sub_273DA242C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_273D82D04(&qword_280925D70, &qword_273DA34C8);
  sub_273DA178C();
  type metadata accessor for CarouselListItemView(0);
  sub_273D86338(&qword_280926078, &qword_280925D70, &qword_273DA34C8, MEMORY[0x277D83980]);
  sub_273D901B8(&qword_280926060, type metadata accessor for CarouselListItemView, &unk_273DA3508);
  sub_273D901B8(&qword_280926080, type metadata accessor for WelcomeListItem, &protocol conformance descriptor for WelcomeListItem);
  sub_273DA228C();
}

uint64_t sub_273D90048@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_273DA244C();
  sub_273DA243C();
  sub_273DA242C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_273D888E4(a1, a2);
}

unint64_t sub_273D90104()
{
  result = qword_280926058;
  if (!qword_280926058)
  {
    sub_273D832AC(&qword_280926050, &qword_273DA3E20);
    sub_273D901B8(&qword_280926060, type metadata accessor for CarouselListItemView, &unk_273DA3508);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280926058);
  }

  return result;
}

uint64_t sub_273D901B8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_273D90204()
{
  result = qword_280926088;
  if (!qword_280926088)
  {
    sub_273D832AC(&qword_280926070, &qword_273DA3E28);
    sub_273D832AC(&qword_280926048, &qword_273DA3E18);
    sub_273DA1A6C();
    sub_273D86338(&qword_280926068, &qword_280926048, &qword_273DA3E18, MEMORY[0x277CDF0C8]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280926088);
  }

  return result;
}

uint64_t WelcomeListItem.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for WelcomeListItem(0) + 36);
  sub_273DA178C();
  sub_273D84B6C();
  v6 = *(v5 + 16);

  return v6(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for WelcomeListItem(uint64_t a1)
{
  result = qword_280926090;
  if (!qword_280926090)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t WelcomeListItem.init(title:description:image:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  type metadata accessor for WelcomeListItem(0);
  result = sub_273DA177C();
  *a6 = a1;
  a6[1] = a2;
  a6[2] = a3;
  a6[3] = a4;
  a6[5] = 0;
  a6[6] = 0;
  a6[4] = a5;
  return result;
}

uint64_t WelcomeListItem.init<A>(customTitleView:)@<X0>(void (*a1)(uint64_t)@<X0>, void *a4@<X8>)
{
  sub_273D84B6C();
  MEMORY[0x28223BE20](v6);
  sub_273D8A384();
  type metadata accessor for WelcomeListItem(0);
  v7 = sub_273DA177C();
  *a4 = 0;
  a4[1] = 0xE000000000000000;
  a4[3] = 0;
  a4[4] = 0;
  a4[2] = 0;
  a1(v7);
  result = sub_273DA222C();
  a4[5] = result;
  a4[6] = 0;
  return result;
}

uint64_t WelcomeListItem.init<A, B>(collapsedView:expandedView:)@<X0>(void (*a1)(uint64_t)@<X0>, void (*a2)(void)@<X2>, void *a7@<X8>)
{
  sub_273D84B6C();
  MEMORY[0x28223BE20](v10);
  sub_273D8A384();
  sub_273D84B6C();
  MEMORY[0x28223BE20](v11);
  sub_273D8A384();
  type metadata accessor for WelcomeListItem(0);
  v12 = sub_273DA177C();
  *a7 = 0;
  a7[1] = 0xE000000000000000;
  a7[3] = 0;
  a7[4] = 0;
  a7[2] = 0;
  a1(v12);
  a7[5] = sub_273DA222C();
  a2();
  result = sub_273DA222C();
  a7[6] = result;
  return result;
}

unint64_t sub_273D90644()
{
  result = qword_280925D48;
  if (!qword_280925D48)
  {
    sub_273DA178C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280925D48);
  }

  return result;
}

uint64_t sub_273D906B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_273DA178C();
    v9 = a1 + *(a3 + 36);

    return sub_273D82FAC(v9, a2, v8);
  }
}

uint64_t sub_273D90750(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_273DA178C();
    v8 = v5 + *(a4 + 36);

    return sub_273D83074(v8, a2, a2, v7);
  }

  return result;
}

void sub_273D907D0(uint64_t a1)
{
  sub_273D908BC(319, &qword_280925EB0, MEMORY[0x277D837D0]);
  if (v1 <= 0x3F)
  {
    sub_273D908BC(319, &qword_2809260A0, MEMORY[0x277CE1088]);
    if (v2 <= 0x3F)
    {
      sub_273D908BC(319, &qword_2809260A8, MEMORY[0x277CE11C8]);
      if (v3 <= 0x3F)
      {
        sub_273DA178C();
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_273D908BC(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = sub_273DA24FC();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void UIViewController.presentWelcome(_:animated:)(void *a1, char a2)
{
  v3 = v2;
  v6 = a1[3];
  v7 = a1[4];
  sub_273D8339C(a1, v6);
  if ((*(v7 + 160))(v6, v7))
  {
    sub_273D82E38(a1, v13);
    v8 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v9 = swift_allocObject();
    *(v9 + 16) = v8;
    v10 = a2 & 1;
    *(v9 + 24) = v10;
    v11 = objc_allocWithZone(type metadata accessor for WelcomeUIViewController());
    v12 = WelcomeUIViewController.init(_:onContinue:)(v13, sub_273D90AF8, v9);
    [v3 presentViewController:v12 animated:v10 completion:0];
  }
}

uint64_t sub_273D90A20()
{
  MEMORY[0x2743DE800](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

void sub_273D90A58(uint64_t a1, char a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    [Strong dismissViewControllerAnimated:a2 & 1 completion:0];
  }
}

uint64_t sub_273D90AC0()
{

  return MEMORY[0x2821FE8E8](v0, 25, 7);
}

uint64_t sub_273D90B04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 16);
  v5 = type metadata accessor for WelcomeListItem(0);
  v6 = v5;
  if (v4)
  {
    sub_273D964B8(a1 + ((*(*(v5 - 8) + 80) + 32) & ~*(*(v5 - 8) + 80)), a2, type metadata accessor for WelcomeListItem);
    v7 = 0;
  }

  else
  {
    v7 = 1;
  }

  return sub_273D83074(a2, v7, 1, v6);
}

double sub_273D90BBC@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(a1 + 16))
  {
    sub_273D82E38(a1 + 32, a2);
  }

  else
  {
    *(a2 + 32) = 0;
    result = 0.0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  return result;
}

uint64_t WelcomeDismissalType.hashValue.getter()
{
  v1 = *v0;
  sub_273DA26FC();
  MEMORY[0x2743DE210](v1);
  return sub_273DA271C();
}

unint64_t sub_273D90C7C()
{
  result = qword_2809260B0;
  if (!qword_2809260B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809260B0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for WelcomeDismissalType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFF)
  {
    if (a2 + 1 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 1) >> 8 < 0xFF)
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
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 2;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v5 = v6 - 2;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for WelcomeDismissalType(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
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
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
        JUMPOUT(0x273D90E24);
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
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_273D90E7C(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    return sub_273D97410(*a1);
  }

  v7 = sub_273DA1BFC();
  v8 = a1 + *(a3 + 20);

  return sub_273D82FAC(v8, a2, v7);
}

void *sub_273D90F0C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_273DA1BFC();
    v8 = v5 + *(a4 + 20);

    return sub_273D83074(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_273D90FAC(uint64_t a1)
{
  sub_273D91154(319, &qword_2809260C8, &qword_2809260D0, &unk_273DA3F30, MEMORY[0x277D83940]);
  v2 = v1;
  if (v3 <= 0x3F)
  {
    v2 = sub_273DA1BFC();
    if (v4 <= 0x3F)
    {
      sub_273D967EC(319, &qword_2809260D8, MEMORY[0x277D839B0], MEMORY[0x277CE10B8]);
      v2 = v5;
      if (v6 <= 0x3F)
      {
        sub_273D967EC(319, &qword_2809260E0, MEMORY[0x277D83B88], MEMORY[0x277CE10B8]);
        if (v8 > 0x3F)
        {
          return v7;
        }

        else
        {
          sub_273D91154(319, &qword_280925860, &qword_280925868, "2 ", MEMORY[0x277D83D88]);
          v2 = v9;
          if (v10 <= 0x3F)
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

void sub_273D91154(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_273D832AC(a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_273D911D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v44 = a1;
  v46 = a2;
  v45 = sub_273D82D04(&qword_2809260E8, &qword_273DA3F90);
  sub_273D86380();
  MEMORY[0x28223BE20](v4);
  v6 = v41 - v5;
  v7 = type metadata accessor for WelcomeSheet(0);
  sub_273D8AF94();
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v12);
  v13 = sub_273D82D04(&qword_2809260F0, &qword_273DA3F98);
  sub_273D8AF94();
  v15 = v14;
  MEMORY[0x28223BE20](v16);
  v18 = v41 - v17;
  sub_273D90BBC(*v3, &v49);
  v19 = v52;
  if (v52)
  {
    v42 = v9;
    v43 = v15;
    v20 = v53;
    sub_273D8339C(&v49, v52);
    v21 = (*(v20 + 160))(v19, v20);
    sub_273D82E9C(&v49);
    if (v21)
    {
      v22 = v3 + *(v7 + 24);
      v23 = *v22;
      v24 = *(v22 + 1);
      v47 = v23;
      v48 = v24;
      sub_273D82D04(&qword_280926140, &qword_273DA3FC8);
      sub_273DA21EC();
      v41[3] = v51;
      sub_273D964B8(v3, v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for WelcomeSheet);
      v25 = (*(v42 + 80) + 16) & ~*(v42 + 80);
      v26 = swift_allocObject();
      sub_273D96B20(v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v26 + v25, type metadata accessor for WelcomeSheet);
      v27 = sub_273D82D04(&qword_280926100, &qword_273DA3FA8);
      v42 = sub_273D82D04(&qword_280926108, &qword_273DA3FB0);
      sub_273D97344();
      v39 = sub_273D86338(v28, &qword_280926100, &qword_273DA3FA8, v29);
      v40 = sub_273D93AA0();
      sub_273DA209C();

      v30 = v43;
      (*(v43 + 16))(v6, v18, v13);
      swift_storeEnumTagMultiPayload();
      v49 = v27;
      v50 = v42;
      v51 = v39;
      v52 = v40;
      sub_273D9735C();
      sub_273D973DC();
      sub_273DA1C5C();
      return (*(v30 + 8))(v18, v13);
    }
  }

  else
  {
    sub_273D884D0(&v49, &qword_2809260F8, &qword_273DA3FA0);
  }

  v32 = sub_273D82D04(&qword_280926100, &qword_273DA3FA8);
  sub_273D86380();
  (*(v33 + 16))(v6, v44, v32);
  swift_storeEnumTagMultiPayload();
  v34 = sub_273D832AC(&qword_280926108, &qword_273DA3FB0);
  sub_273D97344();
  v37 = sub_273D86338(v35, &qword_280926100, &qword_273DA3FA8, v36);
  v38 = sub_273D93AA0();
  v49 = v32;
  v50 = v34;
  v51 = v37;
  v52 = v38;
  sub_273D9735C();
  sub_273D973DC();
  return sub_273DA1C5C();
}

uint64_t sub_273D9164C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v35 = a2;
  v3 = type metadata accessor for WelcomeSheet(0);
  v4 = *(v3 - 1);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_273D82D04(&qword_280926120, &qword_273DA3FB8);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v34 - v9;
  sub_273DA244C();
  v34[1] = sub_273DA243C();
  sub_273DA242C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_273D964B8(a1, v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for WelcomeSheet);
  v11 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v12 = swift_allocObject();
  sub_273D96B20(v6, v12 + v11, type metadata accessor for WelcomeSheet);
  v36 = sub_273D93D80;
  v37 = v12;
  sub_273D82D04(&qword_280926148, &qword_273DA3FD0);
  v13 = sub_273DA1BFC();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_273DA3280;
  (*(v14 + 16))(v16 + v15, a1 + v3[5], v13);
  sub_273D95A3C(v16);
  v17 = sub_273D82D04(&qword_280926128, &qword_273DA3FC0);
  v18 = sub_273D86338(&qword_280926130, &qword_280926128, &qword_273DA3FC0, MEMORY[0x277CDF7D8]);
  sub_273DA203C();

  v36 = v17;
  v37 = v18;
  swift_getOpaqueTypeConformance2();
  v19 = v35;
  sub_273DA208C();
  (*(v8 + 8))(v10, v7);
  v20 = *(a1 + v3[10]);
  v21 = (a1 + v3[11]);
  v22 = *v21;
  v23 = *(v21 + 1);
  v39 = v22;
  v40 = v23;
  sub_273D82D04(&qword_280926140, &qword_273DA3FC8);
  sub_273DA21EC();
  v24 = v36;
  v25 = v37;
  LOBYTE(v18) = v38;
  v26 = (a1 + v3[12]);
  v27 = *v26;
  v28 = v26[1];
  v29 = (v19 + *(sub_273D82D04(&qword_280926108, &qword_273DA3FB0) + 36));
  *v29 = swift_getKeyPath();
  sub_273D82D04(&qword_280926150, &qword_273DA4008);
  swift_storeEnumTagMultiPayload();
  v30 = type metadata accessor for WelcomeSheetCloseButton(0);
  *(v29 + v30[5]) = v20;
  v31 = v29 + v30[6];
  *v31 = v24;
  *(v31 + 1) = v25;
  v31[16] = v18;
  v32 = (v29 + v30[7]);
  *v32 = v27;
  v32[1] = v28;
  sub_273D839C8(v27, v28);
}

uint64_t sub_273D91AD0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (**a3)()@<X8>)
{
  v16 = a2;
  v17 = a1;
  v18 = a3;
  v3 = sub_273DA192C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = type metadata accessor for WelcomeSheet(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_273DA244C();
  sub_273DA243C();
  sub_273DA242C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_273D964B8(v16, &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for WelcomeSheet);
  (*(v4 + 16))(&v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v17, v3);
  v10 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v11 = (v8 + *(v4 + 80) + v10) & ~*(v4 + 80);
  v12 = swift_allocObject();
  sub_273D96B20(v9, v12 + v10, type metadata accessor for WelcomeSheet);
  (*(v4 + 32))(v12 + v11, &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v3);

  v14 = v18;
  *v18 = sub_273D95E04;
  v14[1] = v12;
  return result;
}

uint64_t sub_273D91D30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v81 = a1;
  v87 = a4;
  v6 = sub_273DA1A0C();
  v83 = *(v6 - 8);
  v84 = v6;
  MEMORY[0x28223BE20](v6);
  v80 = v7;
  v82 = &v60 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = type metadata accessor for WelcomeSheet(0);
  v90 = *(v92 - 8);
  MEMORY[0x28223BE20](v92);
  v91 = v8;
  v85 = &v60 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = sub_273DA1D8C();
  v89 = *(v74 - 8);
  MEMORY[0x28223BE20](v74);
  v88 = (&v60 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v68 = sub_273DA1D6C();
  v66 = *(v68 - 1);
  MEMORY[0x28223BE20](v68);
  v65 = &v60 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_273D82D04(&qword_280926170, &qword_273DA4018);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v60 - v13;
  v63 = sub_273D82D04(&qword_280926178, &qword_273DA4020);
  v61 = *(v63 - 8);
  MEMORY[0x28223BE20](v63);
  v16 = &v60 - v15;
  v69 = sub_273D82D04(&qword_280926180, &qword_273DA4028);
  v64 = *(v69 - 8);
  MEMORY[0x28223BE20](v69);
  v62 = &v60 - v17;
  v72 = sub_273D82D04(&qword_280926188, &qword_273DA4030);
  v70 = *(v72 - 8);
  MEMORY[0x28223BE20](v72);
  v67 = &v60 - v18;
  v76 = sub_273D82D04(&qword_280926190, &qword_273DA4038);
  v73 = *(v76 - 8);
  MEMORY[0x28223BE20](v76);
  v71 = &v60 - v19;
  v79 = sub_273D82D04(&qword_280926198, &qword_273DA4040);
  v78 = *(v79 - 8);
  MEMORY[0x28223BE20](v79);
  v77 = &v60 - v20;
  sub_273DA244C();
  v75 = sub_273DA243C();
  sub_273DA242C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v21 = sub_273DA1E3C();
  MEMORY[0x28223BE20](v21);
  v86 = a2;
  *(&v60 - 2) = a2;
  *(&v60 - 1) = a3;
  sub_273D82D04(&qword_2809261A0, &qword_273DA4048);
  sub_273D86338(&qword_2809261A8, &qword_2809261A0, &qword_273DA4048, MEMORY[0x277CDF330]);
  sub_273DA183C();
  v22 = sub_273D86338(&qword_2809261B0, &qword_280926170, &qword_273DA4018, MEMORY[0x277CDD6E0]);
  sub_273DA1FDC();
  (*(v12 + 8))(v14, v11);
  v23 = v65;
  sub_273DA1D4C();
  sub_273D82D04(&qword_280925A18, &qword_273DA4050);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_273DA2DD0;
  v25 = sub_273DA1E5C();
  *(inited + 32) = v25;
  v26 = sub_273DA1E3C();
  *(inited + 33) = v26;
  sub_273DA1E4C();
  sub_273DA1E4C();
  if (sub_273DA1E4C() != v25)
  {
    sub_273DA1E4C();
  }

  sub_273DA1E4C();
  if (sub_273DA1E4C() != v26)
  {
    sub_273DA1E4C();
  }

  *&v93 = v11;
  *(&v93 + 1) = v22;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v28 = v62;
  v29 = v63;
  sub_273DA200C();
  (*(v66 + 8))(v23, v68);
  (*(v61 + 8))(v16, v29);
  v30 = v88;
  sub_273DA1D7C();
  *&v93 = v29;
  *(&v93 + 1) = OpaqueTypeConformance2;
  v31 = swift_getOpaqueTypeConformance2();
  v32 = MEMORY[0x277CDE3A8];
  v33 = v67;
  v34 = v69;
  v35 = v74;
  sub_273DA205C();
  (*(v89 + 8))(v30, v35);
  (*(v64 + 8))(v28, v34);
  v37 = v85;
  v36 = v86;
  v68 = type metadata accessor for WelcomeSheet;
  sub_273D964B8(v86, v85, type metadata accessor for WelcomeSheet);
  v38 = *(v90 + 80);
  v39 = (v38 + 16) & ~v38;
  v89 = v39;
  v90 = v38 | 7;
  v91 += v39;
  v40 = swift_allocObject();
  v88 = type metadata accessor for WelcomeSheet;
  sub_273D96B20(v37, v40 + v39, type metadata accessor for WelcomeSheet);
  *&v93 = v34;
  *(&v93 + 1) = v35;
  v94 = v31;
  v95 = v32;
  v41 = swift_getOpaqueTypeConformance2();
  v42 = v71;
  v43 = v72;
  sub_273DA202C();

  (*(v70 + 8))(v33, v43);
  v93 = *(v36 + *(v92 + 28));
  sub_273D82D04(&qword_2809261B8, &qword_273DA4058);
  sub_273DA21CC();
  sub_273D964B8(v36, v37, type metadata accessor for WelcomeSheet);
  v45 = v82;
  v44 = v83;
  v46 = v84;
  (*(v83 + 16))(v82, v81, v84);
  v47 = (v91 + *(v44 + 80)) & ~*(v44 + 80);
  v48 = swift_allocObject();
  sub_273D96B20(v37, v48 + v89, v88);
  (*(v44 + 32))(v48 + v47, v45, v46);
  *&v93 = v43;
  *(&v93 + 1) = v41;
  v49 = swift_getOpaqueTypeConformance2();
  v50 = MEMORY[0x277D83B88];
  v51 = MEMORY[0x277D83BA8];
  v52 = v77;
  v53 = v76;
  sub_273DA20CC();

  (*(v73 + 8))(v42, v53);
  v54 = v36 + *(v92 + 32);
  v55 = *v54;
  v56 = *(v54 + 8);
  LOBYTE(v93) = v55;
  *(&v93 + 1) = v56;
  sub_273D82D04(&qword_280926140, &qword_273DA3FC8);
  sub_273DA21CC();
  sub_273D964B8(v36, v37, v68);
  v57 = swift_allocObject();
  sub_273D96B20(v37, v57 + v89, v88);
  *&v93 = v53;
  *(&v93 + 1) = v50;
  v94 = v49;
  v95 = v51;
  swift_getOpaqueTypeConformance2();
  v58 = v79;
  sub_273DA20CC();

  (*(v78 + 8))(v52, v58);
}

uint64_t sub_273D92A00(uint64_t a1, uint64_t a2)
{
  v4 = sub_273DA1CDC();
  MEMORY[0x28223BE20](v4);
  sub_273DA244C();
  sub_273DA243C();
  sub_273DA242C();
  isCurrentExecutor = swift_task_isCurrentExecutor();
  if ((isCurrentExecutor & 1) == 0)
  {
    isCurrentExecutor = swift_task_reportUnexpectedExecutor();
  }

  MEMORY[0x28223BE20](isCurrentExecutor);
  *&v7[-4] = a1;
  *&v7[-2] = a2;
  _s7Welcome0A7ContentPAAE15headerAlignment7SwiftUI08VerticalD0Vvg_0();
  v7[3] = 0;
  sub_273D95DA4(&qword_2809261C0, MEMORY[0x277CE0428], MEMORY[0x277CE0448]);
  sub_273DA276C();
  sub_273D82D04(&qword_2809261C8, &qword_273DA4060);
  sub_273D9627C();
  sub_273DA182C();
}

uint64_t sub_273D92BD8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v17 = a2;
  v18 = a3;
  v4 = sub_273DA192C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = type metadata accessor for WelcomeSheet(0);
  v15 = *(v7 - 8);
  v8 = *(v15 + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_273DA244C();
  sub_273DA243C();
  sub_273DA242C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v19 = *a1;
  KeyPath = swift_getKeyPath();
  sub_273D964B8(a1, &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for WelcomeSheet);
  (*(v5 + 16))(&v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v17, v4);
  v10 = (*(v15 + 80) + 16) & ~*(v15 + 80);
  v11 = (v8 + *(v5 + 80) + v10) & ~*(v5 + 80);
  v12 = swift_allocObject();
  sub_273D96B20(v9, v12 + v10, type metadata accessor for WelcomeSheet);
  (*(v5 + 32))(v12 + v11, &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v4);

  sub_273D82D04(&qword_2809261F0, &qword_273DA4098);
  sub_273D82D04(&qword_2809261E0, &qword_273DA4068);
  sub_273D86338(&qword_2809261F8, &qword_2809261F0, &qword_273DA4098, MEMORY[0x277D83980]);
  sub_273D96300();
  sub_273DA227C();
}

uint64_t sub_273D92EF0@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  sub_273D8339C(a1, v3);
  result = (*(v4 + 48))(v3, v4);
  *a2 = result;
  a2[1] = v6;
  return result;
}

double sub_273D92F48@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v24[1] = a3;
  v7 = type metadata accessor for WelcomeSheet(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  sub_273DA244C();
  v24[0] = sub_273DA243C();
  sub_273DA242C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_273D82E38(a1, a4);
  v10 = (a2 + *(v7 + 32));
  v11 = *v10;
  v12 = *(v10 + 1);
  LOBYTE(v25) = v11;
  v26 = v12;
  sub_273D82D04(&qword_280926140, &qword_273DA3FC8);
  sub_273DA21EC();
  v13 = v27;
  v14 = v28;
  sub_273D964B8(a2, v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for WelcomeSheet);
  v15 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v16 = swift_allocObject();
  sub_273D96B20(v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v16 + v15, type metadata accessor for WelcomeSheet);
  *(a4 + 80) = 0;
  *(a4 + 88) = 0;
  *(a4 + 96) = 1;
  *(a4 + 104) = swift_getKeyPath();
  *(a4 + 112) = 0;
  *(a4 + 120) = 0;
  v25 = 0;
  sub_273DA21BC();
  v17 = *(&v27 + 1);
  *(a4 + 128) = v27;
  *(a4 + 136) = v17;
  v18 = type metadata accessor for WelcomeView(0);
  v19 = *(v18 + 44);
  *(a4 + v19) = swift_getKeyPath();
  sub_273D82D04(&qword_280925828, &qword_273DA2E38);
  swift_storeEnumTagMultiPayload();
  v20 = *(v18 + 48);
  *(a4 + v20) = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  *(a4 + 40) = v13;
  *(a4 + 56) = v14;
  *(a4 + 64) = sub_273D96474;
  *(a4 + 72) = v16;
  sub_273DA191C();
  sub_273DA191C();
  sub_273DA22DC();
  sub_273DA18EC();

  v21 = (a4 + *(sub_273D82D04(&qword_2809261E0, &qword_273DA4068) + 36));
  v22 = v28;
  *v21 = v27;
  v21[1] = v22;
  result = *&v29;
  v21[2] = v29;
  return result;
}

uint64_t sub_273D9325C(uint64_t a1)
{
  result = type metadata accessor for WelcomeSheet(0);
  v3 = *(a1 + *(result + 48));
  if (v3)
  {
    v4 = 0;
    return v3(&v4);
  }

  return result;
}

void sub_273D932B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_273DA199C();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = v33 - v10;
  sub_273DA244C();
  sub_273DA243C();
  sub_273DA242C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if ((sub_273DA187C() & 1) == 0)
  {

    goto LABEL_9;
  }

  sub_273DA1D1C();
  sub_273DA198C();
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v20 = *(v6 + 8);
  v20(v11, v5);
  v36.origin.x = v13;
  v36.origin.y = v15;
  v36.size.width = v17;
  v36.size.height = v19;
  if (CGRectGetWidth(v36) <= 0.0)
  {
LABEL_9:

    return;
  }

  sub_273DA1D1C();
  sub_273DA197C();
  v22 = v21;
  v20(v11, v5);
  sub_273DA1D1C();
  sub_273DA198C();
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v20(v9, v5);
  v37.origin.x = v24;
  v37.origin.y = v26;
  v37.size.width = v28;
  v37.size.height = v30;
  v31 = v22 / CGRectGetWidth(v37) + 0.5;
  if ((*&v31 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_14;
  }

  if (v31 <= -9.22337204e18)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v31 < 9.22337204e18)
  {
    v32 = v31;
    v34 = *(a4 + *(type metadata accessor for WelcomeSheet(0) + 28));
    v33[1] = v32;
    sub_273D82D04(&qword_2809261B8, &qword_273DA4058);
    sub_273DA21DC();
    goto LABEL_9;
  }

LABEL_15:
  __break(1u);
}

uint64_t sub_273D935C0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = *a2;
  sub_273DA244C();
  sub_273DA243C();
  sub_273DA242C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  result = type metadata accessor for WelcomeSheet(0);
  if (v5 >= *(a3 + *(result + 36)))
  {
  }

  else
  {
    if ((v5 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v5 < *(*a3 + 16))
    {
      v7 = sub_273D82E38(*a3 + 40 * v5 + 32, v8);
      MEMORY[0x28223BE20](v7);
      sub_273DA22FC();
      sub_273DA193C();

      sub_273D82E9C(v8);
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_273D93748(uint64_t a1, void *a2)
{
  sub_273DA244C();
  sub_273DA243C();
  sub_273DA242C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v3 = a2[3];
  v4 = a2[4];
  sub_273D8339C(a2, v3);
  (*(v4 + 48))(v3, v4);
  sub_273DA19FC();
}

void *sub_273D93860(uint64_t a1, char *a2, uint64_t a3)
{
  v4 = *a2;
  sub_273DA244C();
  sub_273DA243C();
  sub_273DA242C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (v4)
  {
  }

  v6 = type metadata accessor for WelcomeSheet(0);
  v7 = *(a3 + *(v6 + 28));

  sub_273D82D04(&qword_2809261B8, &qword_273DA4058);
  result = sub_273DA21CC();
  if (!__OFADD__(v8, 1))
  {
    sub_273DA21DC();

    sub_273DA21CC();
    if (v7 == *(a3 + *(v6 + 36)))
    {

      sub_273D82D04(&qword_280926140, &qword_273DA3FC8);
      sub_273DA21CC();
      sub_273DA21DC();
    }

    else
    {
      sub_273D82D04(&qword_280926140, &qword_273DA3FC8);
      sub_273DA21DC();
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_273D93AA0()
{
  result = qword_280926118;
  if (!qword_280926118)
  {
    sub_273D832AC(&qword_280926108, &qword_273DA3FB0);
    sub_273D832AC(&qword_280926120, &qword_273DA3FB8);
    sub_273D832AC(&qword_280926128, &qword_273DA3FC0);
    sub_273D86338(&qword_280926130, &qword_280926128, &qword_273DA3FC0, MEMORY[0x277CDF7D8]);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_273D95DA4(&qword_280926138, type metadata accessor for WelcomeSheetCloseButton, &unk_273DA4160);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280926118);
  }

  return result;
}

uint64_t sub_273D93C60()
{
  v1 = (type metadata accessor for WelcomeSheet(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);

  v5 = v1[7];
  sub_273DA1BFC();
  sub_273D86380();
  (*(v6 + 8))(v0 + v3 + v5);
  sub_273D97424();
  sub_273D97424();
  sub_273D97424();
  sub_273D97424();
  if (*(v0 + v3 + v1[14]))
  {
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_273D93D80()
{
  v3 = sub_273D973F4();
  sub_273D8D8A8(v3);
  sub_273D973D0();

  return sub_273D91AD0(v0, v1 + v4, v2);
}

uint64_t sub_273D93DEC(uint64_t a1)
{
  v3 = sub_273D82D04(&qword_280926230, &qword_273DA41B0);
  MEMORY[0x28223BE20](v3);
  v5 = &v13 - v4;
  v6 = sub_273D82D04(&qword_280926238, &qword_273DA41B8);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v13 - v8;
  v10 = type metadata accessor for WelcomeSheetCloseButton(0);
  if (*(v1 + *(v10 + 20)) == 1)
  {
    MEMORY[0x28223BE20](v10);
    *(&v13 - 2) = a1;
    *(&v13 - 1) = v1;
    sub_273D82D04(&qword_280926258, &qword_273DA41C8);
    sub_273D96984();
    sub_273DA19DC();
    (*(v7 + 16))(v5, v9, v6);
    swift_storeEnumTagMultiPayload();
    sub_273D82D04(&qword_280926240, &qword_273DA41C0);
    sub_273D86338(&qword_280926248, &qword_280926238, &qword_273DA41B8, MEMORY[0x277CDDA18]);
    sub_273D86338(&qword_280926250, &qword_280926240, &qword_273DA41C0, MEMORY[0x277CE04B0]);
    sub_273DA1C5C();
    return (*(v7 + 8))(v9, v6);
  }

  else
  {
    v12 = sub_273D82D04(&qword_280926240, &qword_273DA41C0);
    (*(*(v12 - 8) + 16))(v5, a1, v12);
    swift_storeEnumTagMultiPayload();
    sub_273D86338(&qword_280926248, &qword_280926238, &qword_273DA41B8, MEMORY[0x277CDDA18]);
    sub_273D86338(&qword_280926250, &qword_280926240, &qword_273DA41C0, MEMORY[0x277CE04B0]);
    return sub_273DA1C5C();
  }
}

uint64_t sub_273D94150@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v24 = a1;
  v25 = a3;
  v4 = type metadata accessor for WelcomeSheetCloseButton(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  sub_273DA244C();
  sub_273DA243C();
  sub_273DA242C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_273D964B8(a2, &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for WelcomeSheetCloseButton);
  v7 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v8 = swift_allocObject();
  v9 = sub_273D96B20(&v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v8 + v7, type metadata accessor for WelcomeSheetCloseButton);
  MEMORY[0x28223BE20](v9);
  *(&v24 - 2) = sub_273D96B80;
  *(&v24 - 1) = v8;
  sub_273D82D04(&qword_280926240, &qword_273DA41C0);
  sub_273D82D04(&qword_280926268, &qword_273DA41D0);
  sub_273D86338(&qword_280926250, &qword_280926240, &qword_273DA41C0, MEMORY[0x277CE04B0]);
  v10 = sub_273D832AC(&qword_280926270, &qword_273DA41D8);
  v11 = sub_273D86338(&qword_280926278, &qword_280926270, &qword_273DA41D8, MEMORY[0x277CDD7A8]);
  v26 = v10;
  v27 = v11;
  swift_getOpaqueTypeConformance2();
  v12 = v25;
  sub_273DA20AC();

  v13 = sub_273DA1E8C();
  sub_273DA181C();
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;

  result = sub_273D82D04(&qword_280926258, &qword_273DA41C8);
  v23 = v12 + *(result + 36);
  *v23 = v13;
  *(v23 + 8) = v15;
  *(v23 + 16) = v17;
  *(v23 + 24) = v19;
  *(v23 + 32) = v21;
  *(v23 + 40) = 0;
  return result;
}

uint64_t sub_273D9447C(uint64_t a1)
{
  v2 = sub_273DA1CAC();
  MEMORY[0x28223BE20](v2 - 8);
  v3 = sub_273D82D04(&qword_280926270, &qword_273DA41D8);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v9[-v5];
  sub_273DA1C9C();
  v10 = a1;
  sub_273D82D04(&qword_280926280, &qword_273DA41E0);
  sub_273D96C40();
  sub_273DA188C();
  v7 = sub_273D86338(&qword_280926278, &qword_280926270, &qword_273DA41D8, MEMORY[0x277CDD7A8]);
  MEMORY[0x2743DD7F0](v6, v3, v7);
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_273D94634(void (*a1)(uint64_t))
{
  sub_273DA244C();
  sub_273DA243C();
  sub_273DA242C();
  isCurrentExecutor = swift_task_isCurrentExecutor();
  if ((isCurrentExecutor & 1) == 0)
  {
    isCurrentExecutor = swift_task_reportUnexpectedExecutor();
  }

  a1(isCurrentExecutor);
}

uint64_t sub_273D946EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v36 = a1;
  v38 = a2;
  v2 = type metadata accessor for WelcomeSheetCloseButton(0);
  v34 = *(v2 - 8);
  MEMORY[0x28223BE20](v2 - 8);
  v35 = v3;
  v37 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_273D82D04(&qword_2809262A0, &qword_273DA41F0);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v28 - v8;
  v10 = sub_273DA17AC();
  MEMORY[0x28223BE20](v10 - 8);
  v11 = sub_273DA16CC();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_273DA238C();
  MEMORY[0x28223BE20](v15 - 8);
  v32 = sub_273DA16DC();
  v30 = *(v32 - 8);
  MEMORY[0x28223BE20](v32);
  v17 = &v28 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = sub_273D82D04(&qword_280926298, &qword_273DA41E8);
  v31 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v29 = &v28 - v18;
  sub_273DA244C();
  v28 = sub_273DA243C();
  sub_273DA242C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_273DA237C();
  if (qword_280925820 != -1)
  {
    swift_once();
  }

  v19 = sub_273D833F0(v11, qword_280927840);
  (*(v12 + 16))(v14, v19, v11);
  sub_273DA179C();
  sub_273DA16EC();
  sub_273DA17FC();
  v20 = sub_273DA180C();
  sub_273D83074(v9, 0, 1, v20);
  v21 = v37;
  sub_273D964B8(v36, v37, type metadata accessor for WelcomeSheetCloseButton);
  v22 = (*(v34 + 80) + 16) & ~*(v34 + 80);
  v23 = swift_allocObject();
  sub_273D96B20(v21, v23 + v22, type metadata accessor for WelcomeSheetCloseButton);
  v24 = sub_273D8F510(v9, v7, &qword_2809262A0, &qword_273DA41F0);
  MEMORY[0x28223BE20](v24);
  *(&v28 - 4) = v17;
  *(&v28 - 3) = 0x6B72616D78;
  *(&v28 - 2) = 0xE500000000000000;
  sub_273D82D04(&qword_2809262A8, &qword_273DA41F8);
  sub_273D86338(&qword_2809262B0, &qword_2809262A8, &qword_273DA41F8, MEMORY[0x277CDEFF0]);
  v25 = v29;
  sub_273DA220C();
  sub_273D884D0(v9, &qword_2809262A0, &qword_273DA41F0);
  (*(v30 + 8))(v17, v32);
  sub_273D86338(&qword_280926290, &qword_280926298, &qword_273DA41E8, MEMORY[0x277CDF028]);
  v26 = v33;
  sub_273DA206C();
  (*(v31 + 8))(v25, v26);
}

uint64_t sub_273D94D64(uint64_t a1)
{
  v22 = a1;
  v1 = type metadata accessor for WelcomeSheetCloseButton(0);
  v21 = *(v1 - 8);
  v2 = *(v21 + 64);
  MEMORY[0x28223BE20](v1);
  v3 = sub_273D82D04(&qword_2809262B8, &unk_273DA4200);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v19 - v4;
  v6 = sub_273DA190C();
  v20 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_273DA244C();
  sub_273DA243C();
  sub_273DA242C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v9 = v22;
  v10 = *(v22 + *(v1 + 28));
  if (v10)
  {
    LOBYTE(v24[0]) = 1;
    v10(v24);
    v11 = sub_273DA246C();
    sub_273D83074(v5, 1, 1, v11);
    sub_273D964B8(v9, &v19 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for WelcomeSheetCloseButton);
    v12 = sub_273DA243C();
    v13 = (*(v21 + 80) + 32) & ~*(v21 + 80);
    v14 = swift_allocObject();
    *(v14 + 16) = v12;
    *(v14 + 24) = MEMORY[0x277D85700];
    sub_273D96B20(&v19 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0), v14 + v13, type metadata accessor for WelcomeSheetCloseButton);
    sub_273D9D89C(0, 0, v5, &unk_273DA4218, v14);
  }

  else
  {
    v15 = v22 + *(v1 + 24);
    v16 = *v15;
    v17 = *(v15 + 8);
    LOBYTE(v15) = *(v15 + 16);
    v24[0] = v16;
    v24[1] = v17;
    v25 = v15;
    v23 = 1;
    sub_273D82D04(&qword_280925C48, &qword_273DA3270);
    sub_273DA224C();
    sub_273D955C0(v8);
    sub_273DA18FC();
    (*(v20 + 8))(v8, v6);
  }
}

uint64_t sub_273D950C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[8] = a4;
  v5 = sub_273DA190C();
  v4[9] = v5;
  v4[10] = *(v5 - 8);
  v4[11] = swift_task_alloc();
  v6 = sub_273DA25EC();
  v4[12] = v6;
  v4[13] = *(v6 - 8);
  v4[14] = swift_task_alloc();
  sub_273DA244C();
  v4[15] = sub_273DA243C();
  v8 = sub_273DA242C();
  v4[16] = v8;
  v4[17] = v7;

  return MEMORY[0x2822009F8](sub_273D95218, v8, v7);
}

uint64_t sub_273D95218()
{
  sub_273DA26DC();
  v1 = swift_task_alloc();
  *(v0 + 144) = v1;
  *v1 = v0;
  v1[1] = sub_273D952E4;

  return sub_273DA0910();
}

uint64_t sub_273D952E4()
{
  v3 = *v1;
  v2 = *v1;

  v4 = v2[14];
  v5 = v2[13];
  v6 = v2[12];
  if (v0)
  {

    (*(v5 + 8))(v4, v6);
    v7 = v3[16];
    v8 = v3[17];
    v9 = sub_273D97340;
  }

  else
  {
    (*(v5 + 8))(v4, v6);
    v7 = v3[16];
    v8 = v3[17];
    v9 = sub_273D95478;
  }

  return MEMORY[0x2822009F8](v9, v7, v8);
}

uint64_t sub_273D95478()
{
  v1 = *(v0 + 64);

  v2 = (v1 + *(type metadata accessor for WelcomeSheetCloseButton(0) + 24));
  v3 = *v2;
  v4 = v2[1];
  v5 = *(v2 + 16);
  *(v0 + 16) = *v2;
  *(v0 + 24) = v4;
  *(v0 + 32) = v5;
  sub_273D82D04(&qword_280925C48, &qword_273DA3270);
  MEMORY[0x2743DDD40]();
  if ((*(v0 + 33) & 1) == 0)
  {
    *(v0 + 34) = 1;
    v6 = *(v0 + 88);
    v7 = *(v0 + 80);
    v8 = *(v0 + 72);
    *(v0 + 40) = v3;
    *(v0 + 48) = v4;
    *(v0 + 56) = v5;
    sub_273DA224C();
    sub_273D955C0(v6);
    sub_273DA18FC();
    (*(v7 + 8))(v6, v8);
  }

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_273D955C0@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_273DA1B6C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_273D82D04(&qword_280926150, &qword_273DA4008);
  MEMORY[0x28223BE20](v8);
  v10 = &v14 - v9;
  sub_273D8F510(v2, &v14 - v9, &qword_280926150, &qword_273DA4008);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_273DA190C();
    return (*(*(v11 - 8) + 32))(a1, v10, v11);
  }

  else
  {
    sub_273DA24BC();
    v13 = sub_273DA1E2C();
    sub_273DA17BC();

    sub_273DA1B5C();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v7, v4);
  }
}

uint64_t sub_273D957C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_273DA16DC();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v11[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v7 + 16))(v9, a1, v6);
  v14 = v9;
  v12 = a2;
  v13 = a3;
  sub_273DA21AC();
  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_273D9591C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_273DA16DC();
  MEMORY[0x28223BE20](v4);
  (*(v6 + 16))(&v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  result = sub_273DA1F6C();
  *a2 = result;
  *(a2 + 8) = v8;
  *(a2 + 16) = v9 & 1;
  *(a2 + 24) = v10;
  return result;
}

uint64_t sub_273D959F4@<X0>(uint64_t *a3@<X8>)
{

  result = sub_273DA214C();
  *a3 = result;
  return result;
}

uint64_t sub_273D95A3C(uint64_t a1)
{
  v2 = sub_273DA1BFC();
  v32 = *(v2 - 8);
  v3 = MEMORY[0x28223BE20](v2);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v36 = &v27 - v6;
  if (!*(a1 + 16))
  {
    v8 = MEMORY[0x277D84FA0];
    goto LABEL_15;
  }

  sub_273D82D04(&qword_280926158, &qword_273DA4010);
  result = sub_273DA253C();
  v8 = result;
  v31 = *(a1 + 16);
  if (!v31)
  {
LABEL_15:

    return v8;
  }

  v9 = 0;
  v35 = result + 56;
  v10 = *(v32 + 80);
  v29 = a1;
  v30 = a1 + ((v10 + 32) & ~v10);
  v34 = v32 + 16;
  v11 = (v32 + 8);
  v28 = (v32 + 32);
  while (v9 < *(a1 + 16))
  {
    v12 = *(v32 + 72);
    v33 = v9 + 1;
    v13 = *(v32 + 16);
    v13(v36, v30 + v12 * v9, v2);
    sub_273D95DA4(&qword_280926160, MEMORY[0x277CDDE90], MEMORY[0x277CDDE98]);
    v14 = sub_273DA234C();
    v15 = ~(-1 << *(v8 + 32));
    while (1)
    {
      v16 = v14 & v15;
      v17 = (v14 & v15) >> 6;
      v18 = *(v35 + 8 * v17);
      v19 = 1 << (v14 & v15);
      if ((v19 & v18) == 0)
      {
        break;
      }

      v20 = v8;
      v13(v5, *(v8 + 48) + v16 * v12, v2);
      sub_273D95DA4(&qword_280926168, MEMORY[0x277CDDE90], MEMORY[0x277CDDEA0]);
      v21 = sub_273DA236C();
      v22 = *v11;
      (*v11)(v5, v2);
      if (v21)
      {
        result = (v22)(v36, v2);
        v8 = v20;
        goto LABEL_12;
      }

      v14 = v16 + 1;
      v8 = v20;
    }

    v23 = v36;
    *(v35 + 8 * v17) = v19 | v18;
    result = (*v28)(*(v8 + 48) + v16 * v12, v23, v2);
    v24 = *(v8 + 16);
    v25 = __OFADD__(v24, 1);
    v26 = v24 + 1;
    if (v25)
    {
      goto LABEL_17;
    }

    *(v8 + 16) = v26;
LABEL_12:
    v9 = v33;
    a1 = v29;
    if (v33 == v31)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_17:
  __break(1u);
  return result;
}

uint64_t sub_273D95DA4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_273D95E04()
{
  v0 = sub_273D973F4();
  sub_273D973A8(v0);
  v1 = sub_273DA192C();
  sub_273D8D8A8(v1);
  v2 = sub_273D97388();

  return sub_273D91D30(v2, v3, v4, v5);
}

void sub_273D95EC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = type metadata accessor for WelcomeSheet(0);
  sub_273D8D8A8(v7);
  sub_273D973D0();

  sub_273D932B0(a1, a2, a3, v3 + v8);
}

uint64_t sub_273D95F58(uint64_t (*a1)(void))
{
  v3 = (type metadata accessor for WelcomeSheet(0) - 8);
  v4 = *(*v3 + 80);
  v5 = (v4 + 16) & ~v4;
  v17 = *(*v3 + 64);
  v6 = a1(0);
  sub_273D8AF94();
  v8 = v7;
  v9 = *(v7 + 80);
  v11 = *(v10 + 64);

  v12 = v3[7];
  sub_273DA1BFC();
  sub_273D86380();
  (*(v13 + 8))(v1 + v5 + v12);
  sub_273D9743C();
  sub_273D9743C();
  sub_273D9743C();
  sub_273D9743C();
  if (*(v1 + v5 + v3[14]))
  {
  }

  v14 = v4 | v9;
  v15 = (v5 + v17 + v9) & ~v9;
  (*(v8 + 8))(v1 + v15, v6);

  return MEMORY[0x2821FE8E8](v1, v15 + v11, v14 | 7);
}

uint64_t sub_273D96108(uint64_t a1, unint64_t *a2)
{
  v5 = type metadata accessor for WelcomeSheet(0);
  sub_273D973A8(v5);
  v7 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v9 = *(v8 + 64);
  v10 = sub_273DA1A0C();
  sub_273D8D8A8(v10);
  v12 = v2 + ((v7 + v9 + *(v11 + 80)) & ~*(v11 + 80));

  return sub_273D935C0(a1, a2, v2 + v7, v12);
}

void *sub_273D961E0(uint64_t a1, char *a2)
{
  v5 = type metadata accessor for WelcomeSheet(0);
  sub_273D8D8A8(v5);
  sub_273D973D0();

  return sub_273D93860(a1, a2, v2 + v6);
}

unint64_t sub_273D9627C()
{
  result = qword_2809261D0;
  if (!qword_2809261D0)
  {
    sub_273D832AC(&qword_2809261C8, &qword_273DA4060);
    sub_273D96300();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809261D0);
  }

  return result;
}

unint64_t sub_273D96300()
{
  result = qword_2809261D8;
  if (!qword_2809261D8)
  {
    sub_273D832AC(&qword_2809261E0, &qword_273DA4068);
    sub_273D95DA4(&qword_2809261E8, type metadata accessor for WelcomeView, &protocol conformance descriptor for WelcomeView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809261D8);
  }

  return result;
}

double sub_273D963C0()
{
  v0 = sub_273D973F4();
  sub_273D973A8(v0);
  v1 = sub_273DA192C();
  sub_273D8D8A8(v1);
  v2 = sub_273D97388();

  return sub_273D92F48(v2, v3, v4, v5);
}

uint64_t sub_273D964B8(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_273D86380();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_273D9652C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_273D82D04(&qword_280926200, &unk_273DA4130);
  if (*(*(v6 - 8) + 84) != a2)
  {
    return sub_273D97410(*(a1 + *(a3 + 24) + 8));
  }

  return sub_273D82FAC(a1, a2, v6);
}

uint64_t sub_273D965F0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_273D82D04(&qword_280926200, &unk_273DA4130);
  if (*(*(result - 8) + 84) == a3)
  {

    return sub_273D83074(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24) + 8) = (a2 - 1);
  }

  return result;
}

void sub_273D966A8(uint64_t a1)
{
  sub_273D96794(319);
  if (v1 <= 0x3F)
  {
    sub_273D967EC(319, &qword_280925858, MEMORY[0x277D839B0], MEMORY[0x277CE11F8]);
    if (v2 <= 0x3F)
    {
      sub_273D91154(319, &qword_280925860, &qword_280925868, "2 ", MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_273D96794(uint64_t a1)
{
  if (!qword_280926218)
  {
    sub_273DA190C();
    v1 = sub_273DA186C();
    if (!v2)
    {
      atomic_store(v1, &qword_280926218);
    }
  }
}

void sub_273D967EC(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t sub_273D96840()
{
  result = qword_280926220;
  if (!qword_280926220)
  {
    sub_273D832AC(&qword_280926228, "*<");
    sub_273D832AC(&qword_280926100, &qword_273DA3FA8);
    sub_273D832AC(&qword_280926108, &qword_273DA3FB0);
    sub_273D86338(&qword_280926110, &qword_280926100, &qword_273DA3FA8, MEMORY[0x277CE04B0]);
    sub_273D93AA0();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280926220);
  }

  return result;
}

unint64_t sub_273D96984()
{
  result = qword_280926260;
  if (!qword_280926260)
  {
    sub_273D832AC(&qword_280926258, &qword_273DA41C8);
    sub_273D832AC(&qword_280926240, &qword_273DA41C0);
    sub_273D832AC(&qword_280926268, &qword_273DA41D0);
    sub_273D86338(&qword_280926250, &qword_280926240, &qword_273DA41C0, MEMORY[0x277CE04B0]);
    sub_273D832AC(&qword_280926270, &qword_273DA41D8);
    sub_273D86338(&qword_280926278, &qword_280926270, &qword_273DA41D8, MEMORY[0x277CDD7A8]);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280926260);
  }

  return result;
}

uint64_t sub_273D96B20(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_273D86380();
  (*(v5 + 32))(a2, a1);
  return a2;
}

uint64_t sub_273D96BAC(uint64_t (*a1)(void), uint64_t (*a2)(uint64_t))
{
  v3 = a1(0);
  sub_273D8D8A8(v3);
  sub_273D973D0();

  return a2(v2 + v4);
}

unint64_t sub_273D96C40()
{
  result = qword_280926288;
  if (!qword_280926288)
  {
    sub_273D832AC(&qword_280926280, &qword_273DA41E0);
    sub_273D86338(&qword_280926290, &qword_280926298, &qword_273DA41E8, MEMORY[0x277CDF028]);
    sub_273D95DA4(&qword_280925AF8, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280926288);
  }

  return result;
}

uint64_t sub_273D96D28()
{
  type metadata accessor for WelcomeSheetCloseButton(0);
  sub_273D973B8();
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v6 = *(v5 + 64);
  sub_273D82D04(&qword_280926150, &qword_273DA4008);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_273DA190C();
    sub_273D86380();
    (*(v7 + 8))(v1 + v4);
  }

  else
  {
  }

  if (*(v1 + v4 + *(v0 + 28)))
  {
  }

  return MEMORY[0x2821FE8E8](v1, v4 + v6, v3 | 7);
}

uint64_t sub_273D96E88(uint64_t (*a1)(void), uint64_t (*a2)(uint64_t))
{
  v3 = a1(0);
  sub_273D8D8A8(v3);
  sub_273D973D0();

  return a2(v2 + v4);
}

uint64_t sub_273D96F18()
{
  type metadata accessor for WelcomeSheetCloseButton(0);
  sub_273D973B8();
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v6 = *(v5 + 64);
  swift_unknownObjectRelease();
  sub_273D82D04(&qword_280926150, &qword_273DA4008);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_273DA190C();
    sub_273D86380();
    (*(v7 + 8))(v1 + v4);
  }

  else
  {
  }

  if (*(v1 + v4 + *(v0 + 28)))
  {
  }

  return MEMORY[0x2821FE8E8](v1, v4 + v6, v3 | 7);
}

uint64_t sub_273D97054(uint64_t a1)
{
  v4 = type metadata accessor for WelcomeSheetCloseButton(0);
  sub_273D8D8A8(v4);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = *(v1 + 16);
  v8 = *(v1 + 24);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_273D97140;

  return sub_273D950C8(a1, v7, v8, v1 + v6);
}

uint64_t sub_273D97140()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

unint64_t sub_273D97238()
{
  result = qword_2809262C0;
  if (!qword_2809262C0)
  {
    sub_273D832AC(&qword_2809262C8, &qword_273DA4220);
    sub_273D86338(&qword_280926248, &qword_280926238, &qword_273DA41B8, MEMORY[0x277CDDA18]);
    sub_273D86338(&qword_280926250, &qword_280926240, &qword_273DA41C0, MEMORY[0x277CE04B0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809262C0);
  }

  return result;
}

uint64_t sub_273D9735C()
{

  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_273D973F4()
{

  return type metadata accessor for WelcomeSheet(0);
}

uint64_t sub_273D97410@<X0>(unint64_t a1@<X8>)
{
  if (a1 >= 0xFFFFFFFF)
  {
    LODWORD(a1) = -1;
  }

  return (a1 + 1);
}

uint64_t sub_273D97424()
{
}

uint64_t sub_273D9743C()
{
}

uint64_t sub_273D97454@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_273DA244C();
  sub_273DA243C();
  sub_273DA242C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  *a2 = sub_273DA1C0C();
  *(a2 + 8) = 0x4024000000000000;
  *(a2 + 16) = 0;
  v4 = sub_273D82D04(&qword_2809262D0, &qword_273DA4228);
  sub_273D97528(a1, a2 + *(v4 + 44));
}

uint64_t sub_273D97528@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v75 = a2;
  v78 = sub_273D82D04(&qword_2809262D8, &qword_273DA4230);
  MEMORY[0x28223BE20](v78);
  v4 = &v69 - v3;
  v5 = sub_273D82D04(&qword_2809262E0, &qword_273DA4238);
  MEMORY[0x28223BE20](v5);
  v77 = &v69 - v6;
  v7 = sub_273D82D04(&qword_2809262E8, &qword_273DA4240);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v74 = &v69 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v73 = &v69 - v11;
  v12 = MEMORY[0x28223BE20](v10);
  v72 = &v69 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v69 - v15;
  v17 = MEMORY[0x28223BE20](v14);
  v69 = &v69 - v18;
  MEMORY[0x28223BE20](v17);
  v20 = &v69 - v19;
  sub_273DA244C();
  v71 = sub_273DA243C();
  sub_273DA242C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v70 = v16;
  v21 = a1[3];
  v22 = a1[4];
  sub_273D8339C(a1, v21);
  (*(v22 + 112))(&v79, v21, v22);
  v23 = v80;
  v76 = v20;
  if (v80)
  {
    v24 = *(&v79 + 1);
    v25 = v5;
    v26 = v79;
    sub_273D980B8(a1, &v79);
    v27 = swift_allocObject();
    v28 = v80;
    *(v27 + 16) = v79;
    *(v27 + 32) = v28;
    *(v27 + 48) = v81;
    *(v27 + 64) = v82;
    *(v27 + 72) = v26;
    *(v27 + 80) = v24;
    *(v27 + 88) = v23;
    MEMORY[0x28223BE20](v27);
    *(&v69 - 4) = a1;
    *(&v69 - 24) = v26;
    *(&v69 - 2) = v24;
    *(&v69 - 1) = v23;

    sub_273D82D04(&qword_280925C30, &qword_273DA3268);
    sub_273D8611C();
    sub_273DA221C();
    v20 = v76;
    sub_273DA22DC();
    sub_273DA18EC();
    v29 = &v4[*(sub_273D82D04(&qword_2809262F8, &qword_273DA4250) + 36)];
    v30 = v84;
    *v29 = v83;
    *(v29 + 1) = v30;
    *(v29 + 2) = v85;
    v31 = &v4[*(sub_273D82D04(&qword_280926300, &qword_273DA4258) + 36)];
    *v31 = v26;
    v5 = v25;
    *(v31 + 1) = v24;
    *(v31 + 2) = v23;
    *&v4[*(v78 + 36)] = 256;
    sub_273D98510();
    v32 = v77;
    sub_273DA206C();
    sub_273D884D0(v4, &qword_2809262D8, &qword_273DA4230);
    sub_273D889A0(v32, v20, &qword_2809262E0, &qword_273DA4238);
    v33 = 0;
  }

  else
  {
    v33 = 1;
  }

  sub_273D83074(v20, v33, 1, v5);
  v34 = a1[3];
  v35 = a1[4];
  sub_273D8339C(a1, v34);
  (*(v35 + 120))(&v79, v34, v35);
  v36 = v80;
  if (v80)
  {
    v37 = *(&v79 + 1);
    v38 = v5;
    v39 = v79;
    sub_273D980B8(a1, &v79);
    v40 = swift_allocObject();
    v41 = v80;
    *(v40 + 16) = v79;
    *(v40 + 32) = v41;
    *(v40 + 48) = v81;
    *(v40 + 64) = v82;
    *(v40 + 72) = v39;
    *(v40 + 80) = v37;
    *(v40 + 88) = v36;
    MEMORY[0x28223BE20](v40);
    *(&v69 - 4) = a1;
    *(&v69 - 24) = v39;
    *(&v69 - 2) = v37;
    *(&v69 - 1) = v36;

    sub_273D82D04(&qword_280925C30, &qword_273DA3268);
    sub_273D8611C();
    sub_273DA221C();
    sub_273DA22DC();
    sub_273DA18EC();
    v42 = &v4[*(sub_273D82D04(&qword_2809262F8, &qword_273DA4250) + 36)];
    v43 = v87;
    *v42 = v86;
    *(v42 + 1) = v43;
    *(v42 + 2) = v88;
    v44 = &v4[*(sub_273D82D04(&qword_280926300, &qword_273DA4258) + 36)];
    *v44 = v39;
    v5 = v38;
    *(v44 + 1) = v37;
    *(v44 + 2) = v36;
    *&v4[*(v78 + 36)] = 256;
    sub_273D98510();
    v45 = v77;
    sub_273DA206C();
    sub_273D884D0(v4, &qword_2809262D8, &qword_273DA4230);
    v46 = v69;
    sub_273D889A0(v45, v69, &qword_2809262E0, &qword_273DA4238);
    v47 = 0;
  }

  else
  {
    v47 = 1;
    v46 = v69;
  }

  sub_273D83074(v46, v47, 1, v5);
  v48 = a1[3];
  v49 = a1[4];
  sub_273D8339C(a1, v48);
  (*(v49 + 128))(&v79, v48, v49);
  v50 = v80;
  if (v80)
  {
    v51 = *(&v79 + 1);
    v52 = v79;
    sub_273D980B8(a1, &v79);
    v53 = swift_allocObject();
    v54 = v80;
    *(v53 + 16) = v79;
    *(v53 + 32) = v54;
    *(v53 + 48) = v81;
    *(v53 + 64) = v82;
    *(v53 + 72) = v52;
    *(v53 + 80) = v51;
    *(v53 + 88) = v50;
    MEMORY[0x28223BE20](v53);
    *(&v69 - 4) = a1;
    *(&v69 - 24) = v52;
    *(&v69 - 2) = v51;
    *(&v69 - 1) = v50;

    sub_273D82D04(&qword_280925C30, &qword_273DA3268);
    sub_273D8611C();
    sub_273DA221C();
    sub_273DA22DC();
    sub_273DA18EC();
    v55 = &v4[*(sub_273D82D04(&qword_2809262F8, &qword_273DA4250) + 36)];
    v56 = v80;
    *v55 = v79;
    *(v55 + 1) = v56;
    *(v55 + 2) = v81;
    v57 = &v4[*(sub_273D82D04(&qword_280926300, &qword_273DA4258) + 36)];
    *v57 = v52;
    *(v57 + 1) = v51;
    *(v57 + 2) = v50;
    *&v4[*(v78 + 36)] = 256;
    sub_273D98510();
    v58 = v77;
    sub_273DA206C();
    sub_273D884D0(v4, &qword_2809262D8, &qword_273DA4230);
    v59 = v70;
    sub_273D889A0(v58, v70, &qword_2809262E0, &qword_273DA4238);
    v60 = 0;
  }

  else
  {
    v60 = 1;
    v59 = v70;
  }

  sub_273D83074(v59, v60, 1, v5);
  v61 = v76;
  v62 = v72;
  sub_273D97F74(v76, v72);
  v63 = v73;
  sub_273D97F74(v46, v73);
  v64 = v46;
  v65 = v74;
  sub_273D97F74(v59, v74);
  v66 = v75;
  sub_273D97F74(v62, v75);
  v67 = sub_273D82D04(&qword_2809262F0, &qword_273DA4248);
  sub_273D97F74(v63, v66 + *(v67 + 48));
  sub_273D97F74(v65, v66 + *(v67 + 64));
  sub_273D884D0(v59, &qword_2809262E8, &qword_273DA4240);
  sub_273D884D0(v64, &qword_2809262E8, &qword_273DA4240);
  sub_273D884D0(v61, &qword_2809262E8, &qword_273DA4240);
  sub_273D884D0(v65, &qword_2809262E8, &qword_273DA4240);
  sub_273D884D0(v63, &qword_2809262E8, &qword_273DA4240);
  sub_273D884D0(v62, &qword_2809262E8, &qword_273DA4240);
}

uint64_t sub_273D97F74(uint64_t a1, uint64_t a2)
{
  sub_273D82D04(&qword_2809262E8, &qword_273DA4240);
  sub_273D86380();
  (*(v4 + 16))(a2, a1);
  return a2;
}

uint64_t sub_273D97FDC(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  sub_273DA244C();
  sub_273DA243C();
  sub_273DA242C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v8 = *(a1 + 40);
  if (v8)
  {
    v10[0] = a2;
    v11 = a3;
    v12 = a4;
    v8(v10);
  }
}

uint64_t sub_273D98128@<X0>(uint64_t a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v34 = a3;
  v5 = sub_273D82D04(&qword_280925C40, &qword_273DA3C30);
  v32 = *(v5 - 8);
  v33 = v5;
  MEMORY[0x28223BE20](v5);
  v31 = v29 - v6;
  v30 = sub_273D82D04(&qword_280925C30, &qword_273DA3268);
  MEMORY[0x28223BE20](v30);
  v8 = v29 - v7;
  sub_273DA244C();
  v29[1] = sub_273DA243C();
  sub_273DA242C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  __src[0] = a1;
  __src[1] = a2;
  sub_273D8951C();

  v9 = sub_273DA1F7C();
  v11 = v10;
  v13 = v12;
  sub_273DA1EBC();
  v14 = sub_273DA1F5C();
  v16 = v15;
  v18 = v17;

  sub_273D842B8(v9, v11, v13 & 1);

  sub_273DA1EDC();
  v19 = sub_273DA1F2C();
  v21 = v20;
  LOBYTE(v9) = v22;
  v24 = v23;
  sub_273D842B8(v14, v16, v18 & 1);

  __src[0] = v19;
  __src[1] = v21;
  v25 = v9 & 1;
  LOBYTE(__src[2]) = v25;
  __src[3] = v24;
  if (qword_280925810 != -1)
  {
    swift_once();
  }

  v26 = sub_273D82D04(&qword_280925908, &qword_273DA3C00);
  sub_273D833F0(v26, qword_280927820);
  sub_273D86338(&qword_280925918, &qword_280925908, &qword_273DA3C00, MEMORY[0x277D83660]);
  v27 = v31;
  sub_273DA1FEC();
  sub_273D842B8(v19, v21, v25);

  sub_273DA22DC();
  sub_273DA1A7C();
  (*(v32 + 32))(v8, v27, v33);
  memcpy(&v8[*(v30 + 36)], __src, 0x70uLL);
  sub_273D889A0(v8, v34, &qword_280925C30, &qword_273DA3268);
}

unint64_t sub_273D98510()
{
  result = qword_280926308;
  if (!qword_280926308)
  {
    sub_273D832AC(&qword_2809262D8, &qword_273DA4230);
    sub_273D9859C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280926308);
  }

  return result;
}

unint64_t sub_273D9859C()
{
  result = qword_280926310;
  if (!qword_280926310)
  {
    sub_273D832AC(&qword_280926300, &qword_273DA4258);
    sub_273D98628();
    sub_273D986E0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280926310);
  }

  return result;
}

unint64_t sub_273D98628()
{
  result = qword_280926318;
  if (!qword_280926318)
  {
    sub_273D832AC(&qword_2809262F8, &qword_273DA4250);
    sub_273D86338(&qword_280925C18, &qword_280925C20, &qword_273DA3260, MEMORY[0x277CDF028]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280926318);
  }

  return result;
}

unint64_t sub_273D986E0()
{
  result = qword_280926320;
  if (!qword_280926320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280926320);
  }

  return result;
}

uint64_t sub_273D98734()
{
  sub_273D82E9C((v0 + 16));
  if (*(v0 + 56))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 96, 7);
}

uint64_t sub_273D98794()
{
  v0 = sub_273DA17EC();
  sub_273D9880C(v0, qword_280927808);
  sub_273D833F0(v0, qword_280927808);
  return sub_273DA17DC();
}

uint64_t *sub_273D9880C(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t WelcomeContent.dismissButtonTitle.getter()
{
  v0 = sub_273DA17AC();
  MEMORY[0x28223BE20](v0 - 8);
  sub_273D8A384();
  v1 = sub_273DA16CC();
  sub_273D8AF94();
  v3 = v2;
  MEMORY[0x28223BE20](v4);
  sub_273D8A384();
  v7 = v6 - v5;
  v8 = sub_273DA238C();
  MEMORY[0x28223BE20](v8 - 8);
  sub_273D8A384();
  sub_273DA237C();
  if (qword_280925820 != -1)
  {
    swift_once();
  }

  v9 = sub_273D833F0(v1, qword_280927840);
  (*(v3 + 16))(v7, v9, v1);
  sub_273DA179C();
  return sub_273DA16EC();
}

void WelcomeContent.primaryAction.getter(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
}

uint64_t WelcomeContent.shouldShow.getter(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  sub_273D8AF94();
  v7 = v6;
  v9 = MEMORY[0x28223BE20](v8);
  v11 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v34 - v12;
  type metadata accessor for WelcomeDataManager(0);
  swift_allocObject();
  sub_273D8B870();
  v35 = *(a2 + 48);
  v35(a1, a2);
  v14 = sub_273D8C32C();

  if (!v14)
  {
    return 1;
  }

  if (qword_280925800 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (byte_280925E40 == 1)
  {
    if (qword_280925808 != -1)
    {
      sub_273D8D84C(&qword_280925808);
    }

    v15 = sub_273DA17EC();
    sub_273D833F0(v15, qword_280927808);
    (*(v7 + 16))(v13, v3, a1);
    v16 = sub_273DA17CC();
    v17 = sub_273DA249C();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v36 = v19;
      *v18 = 136315138;
      v20 = (v35)(a1, a2);
      v22 = v21;
      (*(v7 + 8))(v13, a1);
      v23 = sub_273D990C4(v20, v22, &v36);

      *(v18 + 4) = v23;
      _os_log_impl(&dword_273D7D000, v16, v17, "Welcome content %s has already been viewed, but is being shown again for testing.", v18, 0xCu);
      sub_273D82E9C(v19);
      sub_273D99978();
      sub_273D99978();
    }

    else
    {

      (*(v7 + 8))(v13, a1);
    }

    return 1;
  }

  if (qword_280925808 != -1)
  {
    sub_273D8D84C(&qword_280925808);
  }

  v24 = sub_273DA17EC();
  sub_273D833F0(v24, qword_280927808);
  (*(v7 + 16))(v11, v3, a1);
  v25 = sub_273DA17CC();
  v26 = sub_273DA249C();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v36 = v28;
    *v27 = 136315138;
    v29 = (v35)(a1, a2);
    v31 = v30;
    (*(v7 + 8))(v11, a1);
    v32 = sub_273D990C4(v29, v31, &v36);

    *(v27 + 4) = v32;
    _os_log_impl(&dword_273D7D000, v25, v26, "Welcome content %s has already been viewed, so it won't be shown again.", v27, 0xCu);
    sub_273D82E9C(v28);
    sub_273D99978();
    sub_273D99978();
  }

  else
  {

    (*(v7 + 8))(v11, a1);
  }

  return 0;
}

Swift::Void __swiftcall WelcomeContent.markAsViewed()()
{
  v2 = v1;
  v3 = v0;
  type metadata accessor for WelcomeDataManager(0);
  swift_allocObject();
  sub_273D8B870();
  v4 = (*(v2 + 48))(v3, v2);
  sub_273D8BF68(v4, v5);
}

uint64_t WelcomeListStyle.hashValue.getter()
{
  v1 = *v0;
  sub_273DA26FC();
  MEMORY[0x2743DE210](v1);
  return sub_273DA271C();
}

unint64_t sub_273D990C4(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_273D99188(v11, 0, 0, 1, a1, a2);
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
    sub_273D99904(v11, *a3);
    *a3 = v9 + 32;
  }

  sub_273D82E9C(v11);
  return v7;
}

unint64_t sub_273D99188(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_273D99288(a5, a6);
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
    result = sub_273DA257C();
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

uint64_t sub_273D99288(uint64_t a1, unint64_t a2)
{
  v3 = sub_273D992D4(a1, a2);
  sub_273D993EC(&unk_2882C58B0);
  return v3;
}

uint64_t sub_273D992D4(uint64_t a1, unint64_t a2)
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

  for (; v5; v5 = sub_273DA23EC())
  {
    result = sub_273D994D0(v5, 0);
    v7 = result;
    if ((a2 & 0x1000000000000000) != 0)
    {
      result = sub_273DA254C();
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
          result = sub_273DA257C();
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

uint64_t sub_273D993EC(uint64_t result)
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

    result = sub_273D99540(result, v7, 1, v3);
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