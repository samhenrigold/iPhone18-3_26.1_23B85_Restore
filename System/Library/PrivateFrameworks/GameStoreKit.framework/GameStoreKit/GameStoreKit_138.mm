uint64_t sub_24F418BD4@<X0>(uint64_t a1@<X8>)
{
  v54 = a1;
  v47 = sub_24F923F78();
  v2 = *(v47 - 8);
  MEMORY[0x28223BE20](v47);
  v4 = (&v44 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F242DE8, &qword_24F9F4B88);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = (&v44 - v6);
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F242DF0, &qword_24F9F4B90);
  MEMORY[0x28223BE20](v48);
  v9 = &v44 - v8;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F242DF8, &qword_24F9F4B98);
  MEMORY[0x28223BE20](v49);
  v51 = &v44 - v10;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F242E00, &qword_24F9F4BA0);
  MEMORY[0x28223BE20](v50);
  v53 = &v44 - v11;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F242E08, &qword_24F9F4BA8);
  MEMORY[0x28223BE20](v52);
  v13 = &v44 - v12;
  *v7 = sub_24F927628();
  v7[1] = v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F242E10, &unk_24F9F4BB0);
  sub_24F41918C(v1, v7 + *(v15 + 44));
  v46 = *(v1 + 224);
  if (*(v1 + 216))
  {
    v45 = 0;
  }

  else
  {
    v45 = *(v1 + 208) != 0;
  }

  v16 = *(v1 + 225);
  v17 = *v1;
  v18 = *(v1 + 8);
  type metadata accessor for LargeBreakoutView.BackgroundView(0);
  sub_24F7699B0(v4);
  v19.n128_u64[0] = v17;
  v20.n128_u64[0] = v18;
  v21 = sub_24EEF4E80(v16, v4, v66, v19, v20);
  (*(v2 + 8))(v4, v47, v21);
  *v69 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21B9C0, &qword_24F95B820);
  sub_24F926F28();
  *&v69[54] = v66[3];
  *&v69[70] = v66[4];
  *&v69[86] = *v67;
  *&v69[95] = *&v67[9];
  *&v69[6] = v66[0];
  *&v69[22] = v66[1];
  v22 = v55;
  *&v69[38] = v66[2];
  sub_24E6009C8(v7, v9, &qword_27F242DE8, &qword_24F9F4B88);
  v23 = &v9[*(v48 + 36)];
  v24 = *&v69[32];
  *(v23 + 50) = *&v69[48];
  v25 = *&v69[80];
  *(v23 + 66) = *&v69[64];
  *(v23 + 82) = v25;
  *(v23 + 97) = *&v69[95];
  v26 = *&v69[16];
  *(v23 + 2) = *v69;
  *(v23 + 18) = v26;
  v27 = v45;
  *v23 = v46;
  v23[1] = v27;
  *(v23 + 34) = v24;
  *(v23 + 29) = *&v68[3];
  *(v23 + 113) = *v68;
  *(v23 + 120) = v22;
  if (*(v1 + 16) || (v28 = *(v1 + 136), v29 = *(v1 + 168), v63 = *(v1 + 152), v64 = v29, v65 = *(v1 + 184), v30 = *(v1 + 72), v31 = *(v1 + 104), v59 = *(v1 + 88), v60 = v31, v61 = *(v1 + 120), v62 = v28, v32 = *(v1 + 40), v55 = *(v1 + 24), v56 = v32, v57 = *(v1 + 56), v58 = v30, sub_24EA7F2B4(&v55) != 1))
  {
    *&v55 = sub_24F926C98();
  }

  v33 = sub_24F9238D8();
  v34 = sub_24F925808();
  v35 = v51;
  sub_24E6009C8(v9, v51, &qword_27F242DF0, &qword_24F9F4B90);
  v36 = v35 + *(v49 + 36);
  *v36 = v33;
  *(v36 + 8) = v34;
  sub_24F927618();
  sub_24F9242E8();
  v37 = v53;
  sub_24E6009C8(v35, v53, &qword_27F242DF8, &qword_24F9F4B98);
  v38 = (v37 + *(v50 + 36));
  v39 = v60;
  v38[4] = v59;
  v38[5] = v39;
  v38[6] = v61;
  v40 = v56;
  *v38 = v55;
  v38[1] = v40;
  v41 = v58;
  v38[2] = v57;
  v38[3] = v41;
  sub_24E6009C8(v37, v13, &qword_27F242E00, &qword_24F9F4BA0);
  *&v13[*(v52 + 36)] = 0;
  v42 = v54;
  sub_24E6009C8(v13, v54, &qword_27F242E08, &qword_24F9F4BA8);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F242E18, &qword_24F9F4BC0);
  *(v42 + *(result + 36)) = 0;
  return result;
}

uint64_t sub_24F41918C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F242E20, &qword_24F9F4BC8);
  MEMORY[0x28223BE20](v60);
  v5 = (&v56 - v4);
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F242E28, &qword_24F9F4BD0);
  MEMORY[0x28223BE20](v59);
  v7 = &v56 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F242E30, &qword_24F9F4BD8);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v56 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v56 - v12;
  v14 = *(a1 + 17);
  v15 = *(a1 + 21);
  v148 = *(a1 + 19);
  v149 = v15;
  v150 = *(a1 + 23);
  v16 = *(a1 + 9);
  v17 = *(a1 + 13);
  v144 = *(a1 + 11);
  v145 = v17;
  v18 = *(a1 + 15);
  v147 = v14;
  v146 = v18;
  v19 = *(a1 + 5);
  v140 = *(a1 + 3);
  v141 = v19;
  v20 = *(a1 + 7);
  v143 = v16;
  v142 = v20;
  if (sub_24EA7F2B4(&v140) != 1)
  {
    v22 = *a1;
    v23 = a1[1];
    v80 = v148;
    v81 = v149;
    v82 = v150;
    v76 = v144;
    v77 = v145;
    v78 = v146;
    v79 = v147;
    v72 = v140;
    v73 = v141;
    v74 = v142;
    v75 = v143;
    v24 = *(a1 + 17);
    v25 = *(a1 + 21);
    v69 = *(a1 + 19);
    v70 = v25;
    v71 = *(a1 + 23);
    v26 = *(a1 + 9);
    v27 = *(a1 + 13);
    v65 = *(a1 + 11);
    v66 = v27;
    v67 = *(a1 + 15);
    v68 = v24;
    v28 = *(a1 + 5);
    v61 = *(a1 + 3);
    v62 = v28;
    v63 = *(a1 + 7);
    v64 = v26;
    sub_24F3DFD5C(&v61, &v124);
    sub_24F927618();
    sub_24F9238C8();
    v95 = v80;
    v96 = v81;
    v97 = v82;
    v91 = v76;
    v92 = v77;
    v93 = v78;
    v94 = v79;
    v88 = v72;
    v89 = v73;
    v90[0] = v74;
    v90[1] = v75;
    *&v98 = v22;
    *(&v98 + 1) = v23;
    sub_24F41AB5C(&v88);
    goto LABEL_5;
  }

  v21 = a1[2];
  if (v21)
  {

    sub_24F927618();
    sub_24F9238C8();
    LOBYTE(v72) = v120;
    LOBYTE(v61) = v122;
    *&v88 = v21;
    *(&v88 + 1) = v119;
    LOBYTE(v89) = v120;
    *(&v89 + 1) = v121;
    LOBYTE(v90[0]) = v122;
    *(v90 + 8) = v123;
    *(&v90[1] + 1) = 0x4000000000000000;
    sub_24F41A9B8(&v88);
LABEL_5:
    v115 = v99;
    v116 = v100;
    v117 = v101;
    v118 = v102;
    v111 = v95;
    v112 = v96;
    v113 = v97;
    v114 = v98;
    v107 = v91;
    v108 = v92;
    v109 = v93;
    v110 = v94;
    v103 = v88;
    v104 = v89;
    v105 = v90[0];
    v106 = v90[1];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F242E80, &qword_24F9F4C08);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F242E88, &unk_24F9F4C10);
    sub_24F41A9C4();
    sub_24F41AAA4();
    sub_24F924E28();
    v115 = v136;
    v116 = v137;
    v117 = v138;
    v118 = v139;
    v111 = v132;
    v112 = v133;
    v113 = v134;
    v114 = v135;
    v107 = v128;
    v108 = v129;
    v109 = v130;
    v110 = v131;
    v103 = v124;
    v104 = v125;
    v105 = v126;
    v106 = v127;
    CGSizeMake();
    v136 = v115;
    v137 = v116;
    v138 = v117;
    v139 = v118;
    v132 = v111;
    v133 = v112;
    v134 = v113;
    v135 = v114;
    v128 = v107;
    v129 = v108;
    v130 = v109;
    v131 = v110;
    v124 = v103;
    v125 = v104;
    v126 = v105;
    v127 = v106;
    goto LABEL_6;
  }

  sub_24F41A708(&v124);
LABEL_6:
  if (*(a1 + 200) == 1)
  {
    v29 = a1[31];
    v30 = *(a1 + 256);
    v58 = *(a1 + 29);
    *v7 = v58;
    *(v7 + 2) = v29;
    v7[24] = v30;
    *(v7 + 4) = 0x4000000000000000;
    swift_storeEnumTagMultiPayload();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F242E40, &unk_24F9F4BE8);
    sub_24F41A738();
    sub_24F41A844();
    sub_24F924E28();
  }

  else
  {
    v32 = a1[26];
    v31 = a1[27];
    v33 = type metadata accessor for MediaView(0);
    v57 = v10;
    v34 = v33[7];
    v35 = type metadata accessor for VideoConfiguration(0);
    (*(*(v35 - 8) + 56))(v5 + v34, 1, 1, v35);
    type metadata accessor for VideoPlaybackCoordinator(0);
    sub_24F419DA0(&qword_27F239098, type metadata accessor for VideoPlaybackCoordinator, &unk_24F9AB760);
    *&v58 = v13;

    *v5 = sub_24F9243D8();
    v5[1] = v36;
    v5[2] = v32;
    v5[3] = v31;
    v37 = v5 + v33[8];
    *v37 = 0;
    *(v37 + 1) = 0;
    v37[16] = 1;
    *(v5 + v33[9]) = 0;
    sub_24F927618();
    sub_24F9238C8();
    v38 = (v5 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F242E38, &qword_24F9F4BE0) + 36));
    v39 = v62;
    *v38 = v61;
    v38[1] = v39;
    v38[2] = v63;
    *(v5 + *(v60 + 36)) = 0x4000000000000000;
    sub_24E60169C(v5, v7, &qword_27F242E20, &qword_24F9F4BC8);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F242E40, &unk_24F9F4BE8);
    sub_24F41A738();
    sub_24F41A844();
    sub_24F924E28();
    v10 = v57;
    v13 = v58;
    sub_24E601704(v5, &qword_27F242E20, &qword_24F9F4BC8);
  }

  v84 = v136;
  v85 = v137;
  v86 = v138;
  v87 = v139;
  v80 = v132;
  v81 = v133;
  v82 = v134;
  v83 = v135;
  v76 = v128;
  v77 = v129;
  v78 = v130;
  v79 = v131;
  v72 = v124;
  v73 = v125;
  v74 = v126;
  v75 = v127;
  sub_24E60169C(v13, v10, &qword_27F242E30, &qword_24F9F4BD8);
  v40 = v85;
  v99 = v84;
  v100 = v85;
  v41 = v86;
  v101 = v86;
  v42 = v80;
  v43 = v81;
  v95 = v80;
  v96 = v81;
  v44 = v82;
  v45 = v83;
  v97 = v82;
  v98 = v83;
  v46 = v76;
  v47 = v77;
  v91 = v76;
  v92 = v77;
  v48 = v78;
  v49 = v79;
  v93 = v78;
  v94 = v79;
  v50 = v72;
  v51 = v73;
  v88 = v72;
  v89 = v73;
  v52 = v74;
  v53 = v75;
  v90[0] = v74;
  v90[1] = v75;
  *(a2 + 192) = v84;
  *(a2 + 208) = v40;
  *(a2 + 224) = v41;
  *(a2 + 128) = v42;
  *(a2 + 144) = v43;
  *(a2 + 160) = v44;
  *(a2 + 176) = v45;
  *(a2 + 64) = v46;
  *(a2 + 80) = v47;
  *(a2 + 96) = v48;
  *(a2 + 112) = v49;
  *a2 = v50;
  *(a2 + 16) = v51;
  v102 = v87;
  *(a2 + 240) = v87;
  *(a2 + 32) = v52;
  *(a2 + 48) = v53;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F242E70, &qword_24F9F4BF8);
  sub_24E60169C(v10, a2 + *(v54 + 48), &qword_27F242E30, &qword_24F9F4BD8);
  sub_24E60169C(&v88, &v103, &qword_27F242E78, &qword_24F9F4C00);
  sub_24E601704(v13, &qword_27F242E30, &qword_24F9F4BD8);
  sub_24E601704(v10, &qword_27F242E30, &qword_24F9F4BD8);
  v115 = v84;
  v116 = v85;
  v117 = v86;
  v118 = v87;
  v111 = v80;
  v112 = v81;
  v113 = v82;
  v114 = v83;
  v107 = v76;
  v108 = v77;
  v109 = v78;
  v110 = v79;
  v103 = v72;
  v104 = v73;
  v105 = v74;
  v106 = v75;
  return sub_24E601704(&v103, &qword_27F242E78, &qword_24F9F4C00);
}

uint64_t sub_24F419AB0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (**a3)@<X0>(void (*a1)(char *, uint64_t, uint64_t)@<X0>, uint64_t *a2@<X8>)@<X8>)
{
  v4 = *(a2 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](a1);
  v7 = *v6;
  sub_24F41A13C(v8, &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for LargeBreakoutView);
  v9 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = v7;
  sub_24F41A0CC(&v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v10 + v9, type metadata accessor for LargeBreakoutView);
  v11 = a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F242D80, &qword_24F9F49F0) + 36);
  v12 = type metadata accessor for RoundedRectWithOutsetsModifer(0);
  v13 = v12[6];
  v14 = *MEMORY[0x277CE0118];
  v15 = sub_24F924B38();
  (*(*(v15 - 8) + 104))(&v11[v13], v14, v15);
  *v11 = 0u;
  *(v11 + 1) = 0u;
  *(v11 + 4) = 0x403C000000000000;
  v11[v12[7]] = 1;
  v16 = &v11[v12[8]];
  *v16 = 0;
  v16[8] = 1;
  *a3 = sub_24F41A020;
  a3[1] = v10;
}

uint64_t sub_24F419C80(uint64_t a1)
{
  MEMORY[0x28223BE20](v1);
  sub_24F41A13C(v3, &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for LargeBreakoutView);
  sub_24F419DA0(&qword_27F215CA0, type metadata accessor for LargeBreakoutView, &unk_24F9F4984);
  return sub_24F9218E8();
}

uint64_t sub_24F419DA0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_24F419E94()
{
  v1 = type metadata accessor for LargeBreakoutView(0);
  v2 = (*(*(v1 - 8) + 80) + 24) & ~*(*(v1 - 8) + 80);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216898, &unk_24F944150);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v3 = sub_24F923E98();
    (*(*(v3 - 8) + 8))(v0 + v2, v3);
  }

  else
  {
  }

  v4 = *(v1 + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214D90, &qword_24F93E920);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_24F923F78();
    (*(*(v5 - 8) + 8))(v0 + v2 + v4, v5);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_24F41A020@<X0>(void (*a1)(char *, uint64_t, uint64_t)@<X0>, uint64_t *a2@<X8>)
{
  v5 = *(type metadata accessor for LargeBreakoutView(0) - 8);
  v7 = *(v2 + 16);
  v8 = v2 + ((*(v5 + 80) + 24) & ~*(v5 + 80));

  return sub_24F417CAC(a1, v7, v8, a2, v6);
}

uint64_t sub_24F41A0CC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_24F41A13C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24F41A1A4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_24F41A228(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 16);
    if (v4 >= 0xFFFFFFFF)
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
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2168A8, &qword_24F943480);
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 52);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_24F41A304(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 16) = a2;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2168A8, &qword_24F943480);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 52);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_24F41A3B4(uint64_t a1)
{
  type metadata accessor for CGSize(319);
  if (v1 <= 0x3F)
  {
    sub_24E66ECF0(319, &qword_27F220EC0, MEMORY[0x277CE0F78]);
    if (v2 <= 0x3F)
    {
      sub_24E66ECF0(319, &qword_27F22E608, &type metadata for EditorialGradientBackgroundViewModel);
      if (v3 <= 0x3F)
      {
        sub_24F41A580(319, &qword_27F22E600, type metadata accessor for Artwork, MEMORY[0x277D83D88]);
        if (v4 <= 0x3F)
        {
          sub_24F41A580(319, &qword_27F232318, type metadata accessor for Video, MEMORY[0x277D83D88]);
          if (v5 <= 0x3F)
          {
            sub_24E66ECF0(319, &qword_27F242DC8, &type metadata for EditorialMediaFallbackViewModel);
            if (v6 <= 0x3F)
            {
              sub_24F41A580(319, &qword_27F2168D0, MEMORY[0x277CDFAA0], MEMORY[0x277CDF468]);
              if (v7 <= 0x3F)
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

void sub_24F41A580(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_24F41A5E8()
{
  result = qword_27F242DD0;
  if (!qword_27F242DD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F242D80, &qword_24F9F49F0);
    sub_24E602068(&qword_27F242DD8, &qword_27F242DE0, qword_24F9F4AD8, MEMORY[0x277CDF7D8]);
    sub_24F419DA0(&qword_27F2245F0, type metadata accessor for RoundedRectWithOutsetsModifer, &unk_24F98A850);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F242DD0);
  }

  return result;
}

double sub_24F41A708(uint64_t a1)
{
  result = 0.0;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *(a1 + 240) = -1;
  return result;
}

unint64_t sub_24F41A738()
{
  result = qword_27F242E48;
  if (!qword_27F242E48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F242E40, &unk_24F9F4BE8);
    sub_24F41A7F0();
    sub_24E602068(&qword_27F23A570, &qword_27F23A578, &unk_24F9EE3C0, MEMORY[0x277CE04A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F242E48);
  }

  return result;
}

unint64_t sub_24F41A7F0()
{
  result = qword_27F242E50;
  if (!qword_27F242E50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F242E50);
  }

  return result;
}

unint64_t sub_24F41A844()
{
  result = qword_27F242E58;
  if (!qword_27F242E58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F242E20, &qword_24F9F4BC8);
    sub_24F41A8FC();
    sub_24E602068(&qword_27F23A570, &qword_27F23A578, &unk_24F9EE3C0, MEMORY[0x277CE04A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F242E58);
  }

  return result;
}

unint64_t sub_24F41A8FC()
{
  result = qword_27F242E60;
  if (!qword_27F242E60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F242E38, &qword_24F9F4BE0);
    sub_24F419DA0(&qword_27F242E68, type metadata accessor for MediaView, &unk_24F9CBA28);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F242E60);
  }

  return result;
}

unint64_t sub_24F41A9C4()
{
  result = qword_27F242E90;
  if (!qword_27F242E90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F242E80, &qword_24F9F4C08);
    sub_24F41AA50();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F242E90);
  }

  return result;
}

unint64_t sub_24F41AA50()
{
  result = qword_27F242E98;
  if (!qword_27F242E98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F242E98);
  }

  return result;
}

unint64_t sub_24F41AAA4()
{
  result = qword_27F242EA0;
  if (!qword_27F242EA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F242E88, &unk_24F9F4C10);
    sub_24EB8F770();
    sub_24E602068(&qword_27F23A570, &qword_27F23A578, &unk_24F9EE3C0, MEMORY[0x277CE04A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F242EA0);
  }

  return result;
}

unint64_t sub_24F41ABAC()
{
  result = qword_27F242EA8;
  if (!qword_27F242EA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F242E18, &qword_24F9F4BC0);
    sub_24F41AC64();
    sub_24E602068(&qword_27F212A60, &qword_27F223340, &qword_24F939830, MEMORY[0x277CE0470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F242EA8);
  }

  return result;
}

unint64_t sub_24F41AC64()
{
  result = qword_27F242EB0;
  if (!qword_27F242EB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F242E08, &qword_24F9F4BA8);
    sub_24F41AD1C();
    sub_24E602068(&qword_27F2263F8, &qword_27F226400, &qword_24F97FB40, MEMORY[0x277CDF4F0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F242EB0);
  }

  return result;
}

unint64_t sub_24F41AD1C()
{
  result = qword_27F242EB8;
  if (!qword_27F242EB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F242E00, &qword_24F9F4BA0);
    sub_24F41ADA8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F242EB8);
  }

  return result;
}

unint64_t sub_24F41ADA8()
{
  result = qword_27F242EC0;
  if (!qword_27F242EC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F242DF8, &qword_24F9F4B98);
    sub_24F41AE60();
    sub_24E602068(&qword_27F2186A0, &qword_27F2186A8, &qword_24FA0D3A0, MEMORY[0x277CE0728]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F242EC0);
  }

  return result;
}

unint64_t sub_24F41AE60()
{
  result = qword_27F242EC8;
  if (!qword_27F242EC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F242DF0, &qword_24F9F4B90);
    sub_24E602068(&qword_27F242ED0, &qword_27F242DE8, &qword_24F9F4B88, MEMORY[0x277CE11A8]);
    sub_24EF80C44();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F242EC8);
  }

  return result;
}

void *sub_24F41AF18(void *a1, int a2, int a3, int a4, int a5, int a6, uint64_t a7)
{
  v8 = v7;
  v106 = a7;
  LODWORD(v102) = a6;
  v95 = a5;
  v94 = a4;
  v93 = a3;
  v92 = a2;
  v107 = a1;
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21C290, &qword_24F966880);
  v90 = *(v91 - 8);
  MEMORY[0x28223BE20](v91);
  v89 = &v89 - v9;
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216D58, &unk_24F9B2030);
  v98 = *(v99 - 1);
  MEMORY[0x28223BE20](v99);
  v97 = &v89 - v10;
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216D60, &unk_24F9440B0);
  v100 = *(v101 - 8);
  MEMORY[0x28223BE20](v101);
  v96 = &v89 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F237700, &unk_24F9759D0);
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v89 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23B6E8, &qword_24F9D18D8);
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v89 - v18;
  v20 = qword_27F242ED8;
  v109 = 0uLL;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23B740, &qword_24F93EC10);
  sub_24F923058();
  (*(v17 + 32))(v8 + v20, v19, v16);
  v21 = qword_27F39E5A0;
  *(v8 + qword_27F39E5A0) = 1;
  v22 = qword_27F242EE0;
  LOBYTE(v109) = 0;
  sub_24F923058();
  v23 = *(v13 + 32);
  v104 = v12;
  v24 = v12;
  v25 = v23;
  v23(v8 + v22, v15, v24);
  v105 = v8;
  *(v8 + qword_27F39E5A8) = 0;
  v26 = v107;
  if (!v107)
  {
    goto LABEL_17;
  }

  v103 = v107[30];
  if (!v103 || (v27 = v107[29]) == 0)
  {

LABEL_17:

    v87 = v105;
    (*(v17 + 8))(v105 + v20, v16);
    (*(v13 + 8))(v87 + v22, v104);
    type metadata accessor for LockupViewModel(0);
    swift_deallocPartialClassInstance();
    return 0;
  }

  v28 = v105;
  v29 = v92;
  *(v105 + 24) = v92;
  v31 = v93 & 1;
  v30 = (v93 & 1) == 0;
  *(v28 + 25) = v93 & 1;
  *(v28 + 26) = v94;
  *(v28 + v21) = v95 & 1;
  v32 = v28;
  if (v30)
  {
    v33 = 1;
  }

  else
  {
    v33 = 3;
  }

  v95 = v33;
  if ((v31 & (v29 < 3u)) != 0)
  {
    v34 = 1;
  }

  else
  {
    v34 = v33;
  }

  v94 = v34;
  v35 = v27;
  type metadata accessor for OfferButtonViewModel(0);
  v36 = swift_allocObject();
  v37 = OBJC_IVAR____TtC12GameStoreKit20OfferButtonViewModel__disabled;
  LOBYTE(v109) = 0;
  swift_retain_n();
  swift_retain_n();
  v38 = v106;

  sub_24F923058();
  v25(v36 + v37, v15, v104);
  v39 = OBJC_IVAR____TtC12GameStoreKit20OfferButtonViewModel__action;
  *&v109 = 0;
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216DA8, &unk_24F944110);
  v40 = v96;
  sub_24F923058();
  v41 = v100;
  v42 = v101;
  (*(v100 + 32))(v36 + v39, v40, v101);
  v43 = OBJC_IVAR____TtC12GameStoreKit20OfferButtonViewModel__theme;
  v109 = xmmword_24F943570;
  *&v110 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216DB0, &qword_24F9B2040);
  v44 = v97;
  sub_24F923058();
  (*(v98 + 32))(v36 + v43, v44, v99);
  v45 = v36 + OBJC_IVAR____TtC12GameStoreKit20OfferButtonViewModel_presenter;
  *v45 = 0u;
  *(v45 + 16) = 0u;
  *(v45 + 32) = 0;
  v46 = (v36 + OBJC_IVAR____TtC12GameStoreKit20OfferButtonViewModel_redownloadSymbolName);
  *v46 = 0xD000000000000015;
  v46[1] = 0x800000024FA3FE10;
  v47 = (v36 + OBJC_IVAR____TtC12GameStoreKit20OfferButtonViewModel_accessibilityOfferButtonString);
  *v47 = 0;
  v47[1] = 0;
  *(v36 + OBJC_IVAR____TtC12GameStoreKit20OfferButtonViewModel_placement) = v102;
  v48 = OBJC_IVAR____TtC12GameStoreKit20OfferButtonViewModel_objectGraph;
  *(v36 + OBJC_IVAR____TtC12GameStoreKit20OfferButtonViewModel_objectGraph) = v38;
  v49 = OBJC_IVAR____TtC12GameStoreKit20OfferButtonViewModel__action;
  swift_beginAccess();
  v50 = *(v41 + 8);

  v51 = v103;

  v50(v36 + v49, v42);
  *&v108[0] = v35;
  sub_24F923058();
  swift_endAccess();
  swift_beginAccess();
  v109 = xmmword_24F943590;
  v110 = 0uLL;
  *&v111 = 4;
  WORD6(v111) = 0;
  DWORD2(v111) = 0;
  BYTE14(v111) = 0;
  sub_24F923058();
  swift_endAccess();
  *(v36 + OBJC_IVAR____TtC12GameStoreKit20OfferButtonViewModel_displayProperties) = v51;
  type metadata accessor for ArcadeSubscriptionManager();
  v52 = sub_24F928FD8();

  sub_24F92A758();

  v53 = v109;
  if (OfferDisplayProperties.isArcadeOffer.getter())
  {
    v104 = v52;
    v54 = swift_allocObject();
    swift_weakInit();
    v55 = swift_allocObject();
    swift_weakInit();
    v56 = v35;
    v57 = swift_allocObject();
    *(v57 + 16) = v55;
    *(v57 + 24) = v54;
    *(v57 + 32) = v51;
    *(v57 + 40) = v56;
    *(v57 + 48) = 0;
    *(v57 + 60) = 0;
    *(v57 + 56) = 3;
    *(v57 + 62) = v95;
    v58 = v94;
    *(v57 + 63) = 16843009 * v94;
    *(v57 + 67) = v58;
    v59 = *&v53[OBJC_IVAR____TtC12GameStoreKit25ArcadeSubscriptionManager_stateLock];

    [v59 lock];
    sub_24F213714(v36, sub_24E690EC8, v57, v53);
    [v59 unlock];

    v26 = v107;
    v35 = v56;
    v51 = v103;
  }

  v60 = &v53[OBJC_IVAR____TtC12GameStoreKit25ArcadeSubscriptionManager_subscriptionState];
  swift_beginAccess();
  LOBYTE(v60) = (v60[8] & 0xC0) == 128;
  WORD2(v109) = 0;
  LODWORD(v109) = 3;
  LOBYTE(v108[0]) = v95;
  *(v108 + 1) = 16843009 * v94;
  BYTE5(v108[0]) = v94;
  v61 = *(v36 + v48);

  sub_24EEFB79C(v60, v51, v35, 0, &v109, v108, v61);

  v32[4] = v36;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22EBA0, &unk_24F980F50);
  sub_24F92A758();
  v62 = v109;
  ObjectType = swift_getObjectType();
  v64 = v26[3];
  *&v109 = v26[2];
  *(&v109 + 1) = v64;
  v65 = *(*(&v62 + 1) + 56);

  v104 = v62;
  v102 = ObjectType;
  v66 = (v65)(&v109, ObjectType, *(&v62 + 1));
  v68 = v67;

  v32[5] = v66;
  v32[6] = v68;
  if (*(v51 + 126))
  {
    v99 = v65;
    v101 = v35;
    type metadata accessor for ASKBagContract(0);
    sub_24F92A758();
    v69 = v109;
    v70 = v107[2];
    v71 = v107[3];
    v72 = qword_27F210B10;

    swift_unknownObjectRetain();
    v73 = v51;
    if (v72 != -1)
    {
      swift_once();
    }

    v100 = v69;
    v74 = v89;
    sub_24F92A3B8();
    v75 = v91;
    sub_24F92A408();
    (*(v90 + 8))(v74, v75);
    LOBYTE(v75) = v109;
    type metadata accessor for OfferLabelPresenter();
    v76 = swift_allocObject();
    *(v76 + 64) = 0;
    *(v76 + 48) = 0;
    *(v76 + 40) = 0;
    swift_unknownObjectWeakInit();
    *(v76 + 16) = v70;
    *(v76 + 24) = v71;
    *(v76 + 32) = v73;
    *(v76 + 88) = v75;
    *&v109 = v70;
    *(&v109 + 1) = v71;

    v77 = (v99)(&v109, v102, *(&v62 + 1));
    v79 = v78;
    *(v76 + 72) = v77;
    *(v76 + 80) = v78;
    v80 = swift_getObjectType();
    v81 = swift_allocObject();
    swift_weakInit();
    v82 = *(v79 + 72);
    swift_retain_n();
    swift_unknownObjectRetain();

    v82(v76, sub_24F04CFEC, v81, v80, v79);

    (*(v79 + 16))(v108, v80, v79);
    v83 = sub_24F04CFF4(v108);
    v85 = v84;

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();

    v109 = v108[0];
    v110 = v108[1];
    v111 = v108[2];
    v112 = v108[3];
    sub_24E88D2AC(&v109);
    swift_beginAccess();
    *(v76 + 40) = v83;
    *(v76 + 48) = v85;

    v32 = v105;
    *(v105 + 56) = v76;
    v32[2] = v107;

    OfferLabelPresenter.view.setter(v86, &off_2862204D0);

    swift_unknownObjectRelease();
  }

  else
  {
    v32[7] = 0;
    v32[2] = v107;
    swift_unknownObjectRelease();
  }

  return v32;
}

uint64_t sub_24F41BD7C()
{

  swift_unknownObjectRelease();

  v1 = qword_27F242ED8;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23B6E8, &qword_24F9D18D8);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = qword_27F242EE0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F237700, &unk_24F9759D0);
  v5 = *(*(v4 - 8) + 8);

  return v5(v0 + v3, v4);
}

uint64_t sub_24F41BE54()
{
  v1 = v0;
  v2 = *(v0 + 48);
  ObjectType = swift_getObjectType();
  v4 = *(v2 + 80);
  swift_unknownObjectRetain();
  v4(v0, ObjectType, v2);
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();

  v5 = qword_27F242ED8;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23B6E8, &qword_24F9D18D8);
  (*(*(v6 - 8) + 8))(v1 + v5, v6);
  v7 = qword_27F242EE0;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F237700, &unk_24F9759D0);
  (*(*(v8 - 8) + 8))(v1 + v7, v8);
  return v1;
}

double sub_24F41BF84()
{
  sub_24F41BE54();

  swift_deallocClassInstance();
  return result;
}

uint64_t type metadata accessor for LockupViewModel(uint64_t a1)
{
  result = qword_27F242EE8;
  if (!qword_27F242EE8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24F41C028(uint64_t a1)
{
  sub_24F1AC3F8(319);
  if (v1 <= 0x3F)
  {
    sub_24EA22D84();
    if (v2 <= 0x3F)
    {
      swift_initClassMetadata2();
    }
  }
}

uint64_t sub_24F41C130()
{
  if (*(v0 + 25))
  {
    return 2;
  }

  if (*(v0 + 26) != 2)
  {
    return 1;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_24F923098();

  if (v23)
  {
    v2 = 0;
    v3 = 0;
  }

  else
  {
    v2 = *(*(v0 + 16) + 80);
  }

  v25 = v2;
  v26 = v3;
  v27 = sub_24F41C320();
  v28 = v4;
  v29 = sub_24F41C3E0();
  v30 = v5;
  result = sub_24F41C4F8();
  v6 = 0;
  v31 = result;
  v32 = v7;
  v8 = MEMORY[0x277D84F90];
LABEL_9:
  if (v6 <= 4)
  {
    v9 = 4;
  }

  else
  {
    v9 = v6;
  }

  v10 = v9 + 1;
  v11 = 16 * v6 + 40;
  while (v6 != 4)
  {
    if (v10 == ++v6)
    {
      __break(1u);
      return result;
    }

    v12 = v11 + 16;
    v13 = *&v24[v11];
    v11 += 16;
    if (v13)
    {
      v14 = *&v24[v12 - 24];

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_24E615CF4(0, *(v8 + 16) + 1, 1, v8);
        v8 = result;
      }

      v15 = *(v8 + 16);
      v16 = *(v8 + 24);
      v17 = v15 + 1;
      if (v15 >= v16 >> 1)
      {
        v22 = v15 + 1;
        v19 = v8;
        v20 = *(v8 + 16);
        result = sub_24E615CF4((v16 > 1), v15 + 1, 1, v19);
        v15 = v20;
        v17 = v22;
        v8 = result;
      }

      *(v8 + 16) = v17;
      v18 = v8 + 16 * v15;
      *(v18 + 32) = v14;
      *(v18 + 40) = v13;
      goto LABEL_9;
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23B740, &qword_24F93EC10);
  swift_arrayDestroy();
  v21 = *(v8 + 16);

  if (v21 == 1)
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

uint64_t sub_24F41C320()
{
  if ((sub_24F41C764() & 1) == 0)
  {
    return 0;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_24F923098();

  v1 = 112;
  if (v4)
  {
    v1 = 288;
  }

  v2 = *(*(v0 + 16) + v1);

  return v2;
}

uint64_t sub_24F41C3E0()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24F923098();

  if ((v3 & 1) != 0 || *(v0 + 24) == 1)
  {
    return 0;
  }

  v2 = *(*(v0 + 16) + 312);

  return v2;
}

uint64_t sub_24F41C484()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24F923098();

  return v1;
}

uint64_t sub_24F41C4F8()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24F923098();

  if (!v5)
  {
    return 0;
  }

  v1 = HIBYTE(v5) & 0xF;
  if ((v5 & 0x2000000000000000) == 0)
  {
    v1 = v4 & 0xFFFFFFFFFFFFLL;
  }

  if (!v1)
  {
    return 0;
  }

  if (!*(v0 + 24))
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_24F923098();

    if ((v4 & 1) == 0)
    {
      if (*(*(v0 + 16) + 88))
      {
        sub_24F41C3E0();
        if (v2)
        {

          return 0;
        }
      }
    }
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_24F923098();

  return v4;
}

uint64_t sub_24F41C654()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24F923098();

  if (v7)
  {
    return 0;
  }

  v1 = *(v0 + 16);
  if (!*(v1 + 88))
  {
    return 0;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_24F923098();

  v2 = 104;
  if (v6)
  {
    v2 = 280;
  }

  if (!*(v1 + v2))
  {
    return 0;
  }

  sub_24F41C3E0();
  if (!v3)
  {
    return 0;
  }

  sub_24F41C4F8();
  if (!v4)
  {
    return 0;
  }

  return 1;
}

uint64_t sub_24F41C764()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24F923098();

  if (v23)
  {
    v1 = 0;
    v2 = 0;
  }

  else
  {
    v1 = *(*(v0 + 16) + 80);
  }

  v25 = v1;
  v26 = v2;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24F923098();

  v3 = *(v0 + 16);
  v4 = 96;
  if (v23)
  {
    v4 = 272;
  }

  v5 = 104;
  if (v23)
  {
    v5 = 280;
  }

  v6 = *(v3 + v5);
  v27 = *(v3 + v4);
  v28 = v6;

  v29 = sub_24F41C3E0();
  v30 = v7;
  result = sub_24F41C4F8();
  v9 = 0;
  v31 = result;
  v32 = v10;
  v11 = MEMORY[0x277D84F90];
LABEL_9:
  if (v9 <= 4)
  {
    v12 = 4;
  }

  else
  {
    v12 = v9;
  }

  v13 = v12 + 1;
  v14 = 16 * v9 + 40;
  while (v9 != 4)
  {
    if (v13 == ++v9)
    {
      __break(1u);
      return result;
    }

    v15 = v14 + 16;
    v16 = *&v24[v14];
    v14 += 16;
    if (v16)
    {
      v17 = *&v24[v15 - 24];

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_24E615CF4(0, *(v11 + 16) + 1, 1, v11);
        v11 = result;
      }

      v19 = *(v11 + 16);
      v18 = *(v11 + 24);
      if (v19 >= v18 >> 1)
      {
        result = sub_24E615CF4((v18 > 1), v19 + 1, 1, v11);
        v11 = result;
      }

      *(v11 + 16) = v19 + 1;
      v20 = v11 + 16 * v19;
      *(v20 + 32) = v17;
      *(v20 + 40) = v16;
      goto LABEL_9;
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23B740, &qword_24F93EC10);
  swift_arrayDestroy();
  v21 = *(v0 + 26);
  v22 = *(v11 + 16);

  if (v21 == 2)
  {
    return v22 == 1;
  }

  else
  {
    return v22 < 3;
  }
}

uint64_t sub_24F41C9B0()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24F923098();

  return v1;
}

unint64_t sub_24F41CA58()
{
  result = qword_27F242EF8;
  if (!qword_27F242EF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F242EF8);
  }

  return result;
}

unint64_t sub_24F41CAB0()
{
  result = qword_27F242F00;
  if (!qword_27F242F00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F242F00);
  }

  return result;
}

unint64_t sub_24F41CB08()
{
  result = qword_27F242F08;
  if (!qword_27F242F08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F242F08);
  }

  return result;
}

uint64_t sub_24F41CB5C(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_24F9230A8();
}

double sub_24F41CBE0@<D0>(_OWORD *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24F923098();

  result = *&v4;
  *a2 = v4;
  return result;
}

uint64_t sub_24F41CC64(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_24F9230A8();
}

void sub_24F41CCEC(_BYTE *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24F923098();

  *a2 = v3;
}

uint64_t sub_24F41CD70(char *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_24F9230A8();
}

uint64_t sub_24F41CDE8()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_24F41CE20()
{

  return swift_deallocObject();
}

unint64_t GameSource.jsRepresentation(in:)@<X0>(uint64_t *a1@<X8>)
{
  v43[0] = a1;
  v2 = type metadata accessor for GameMAPI(0);
  MEMORY[0x28223BE20](v2);
  v4 = v43 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Game(0);
  MEMORY[0x28223BE20](v5);
  v7 = v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for GameSource(0);
  MEMORY[0x28223BE20](v8);
  v10 = (v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_24F41E898(v1, v10, type metadata accessor for GameSource);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v12 = *v10;
      v13 = v10[1];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F88, &unk_24F93A430);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_24F93A400;
      *(inited + 32) = 0x646E696B24;
      v15 = MEMORY[0x277D22580];
      *(inited + 72) = MEMORY[0x277D837D0];
      *(inited + 80) = v15;
      *(inited + 40) = 0xE500000000000000;
      *(inited + 48) = 0x4449656C646E7562;
      *(inited + 56) = 0xE800000000000000;
      *(inited + 88) = 0x4449656C646E7562;
      *(inited + 96) = 0xE800000000000000;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22EC10, &unk_24F94D880);
      v16 = swift_initStackObject();
      *(v16 + 16) = xmmword_24F93DE60;
      *(v16 + 32) = 25705;
      v17 = v16 + 32;
      *(v16 + 40) = 0xE200000000000000;
      *(v16 + 48) = v12;
      *(v16 + 56) = v13;
      v18 = sub_24E6086DC(v16);
      swift_setDeallocating();
      sub_24E601704(v17, &qword_27F219F90, &qword_24F955020);
      *(inited + 128) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F227A20, &qword_24F9482B0);
      *(inited + 136) = sub_24EC73450(&qword_27F21BD70, &qword_27F227A20, &qword_24F9482B0);
      *(inited + 104) = v18;
      v19 = sub_24E607E40(inited);
      swift_setDeallocating();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212FB0, &unk_24F93A440);
      swift_arrayDestroy();
      v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F20, &qword_24F93E370);
      v21 = v43[0];
      *(v43[0] + 24) = v20;
      result = sub_24EC73450(&qword_27F212F28, &qword_27F212F20, &qword_24F93E370);
      v21[4] = result;
      *v21 = v19;
      return result;
    }

    sub_24F41EAB0(v10, v4, type metadata accessor for GameMAPI);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F88, &unk_24F93A430);
    v34 = swift_initStackObject();
    *(v34 + 16) = xmmword_24F93A400;
    *(v34 + 32) = 0x646E696B24;
    v35 = MEMORY[0x277D22580];
    *(v34 + 72) = MEMORY[0x277D837D0];
    *(v34 + 80) = v35;
    *(v34 + 40) = 0xE500000000000000;
    *(v34 + 48) = 0x495041616964656DLL;
    *(v34 + 56) = 0xE800000000000000;
    *(v34 + 88) = 0x495041616964656DLL;
    *(v34 + 96) = 0xE800000000000000;
    v36 = swift_initStackObject();
    *(v36 + 16) = xmmword_24F93DE60;
    *(v36 + 32) = 1701667175;
    *(v36 + 40) = 0xE400000000000000;
    *(v36 + 72) = v2;
    *(v36 + 80) = sub_24F41EB18(&qword_27F21C0B8, type metadata accessor for GameMAPI, &protocol conformance descriptor for GameMAPI);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v36 + 48));
    sub_24F41E898(v4, boxed_opaque_existential_1, type metadata accessor for GameMAPI);
    v38 = sub_24E607E40(v36);
    swift_setDeallocating();
    sub_24E601704(v36 + 32, &qword_27F212FB0, &unk_24F93A440);
    v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F20, &qword_24F93E370);
    *(v34 + 128) = v39;
    v40 = sub_24EC73450(&qword_27F212F28, &qword_27F212F20, &qword_24F93E370);
    *(v34 + 136) = v40;
    *(v34 + 104) = v38;
    v41 = sub_24E607E40(v34);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212FB0, &unk_24F93A440);
    swift_arrayDestroy();
    v42 = v43[0];
    *(v43[0] + 24) = v39;
    v42[4] = v40;
    *v42 = v41;
    v32 = type metadata accessor for GameMAPI;
    v33 = v4;
  }

  else
  {
    sub_24F41EAB0(v10, v7, type metadata accessor for Game);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F88, &unk_24F93A430);
    v23 = swift_initStackObject();
    *(v23 + 16) = xmmword_24F93A400;
    *(v23 + 32) = 0x646E696B24;
    v24 = MEMORY[0x277D22580];
    *(v23 + 72) = MEMORY[0x277D837D0];
    *(v23 + 80) = v24;
    *(v23 + 40) = 0xE500000000000000;
    *(v23 + 48) = 1701667175;
    *(v23 + 56) = 0xE400000000000000;
    *(v23 + 88) = 1701667175;
    *(v23 + 96) = 0xE400000000000000;
    v25 = swift_initStackObject();
    *(v25 + 16) = xmmword_24F93DE60;
    *(v25 + 32) = 0x656D614774616877;
    *(v25 + 40) = 0xE800000000000000;
    *(v25 + 72) = v5;
    *(v25 + 80) = sub_24F41EB18(&qword_27F217960, type metadata accessor for Game, &protocol conformance descriptor for Game);
    v26 = __swift_allocate_boxed_opaque_existential_1((v25 + 48));
    sub_24F41E898(v7, v26, type metadata accessor for Game);
    v27 = sub_24E607E40(v25);
    swift_setDeallocating();
    sub_24E601704(v25 + 32, &qword_27F212FB0, &unk_24F93A440);
    v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F20, &qword_24F93E370);
    *(v23 + 128) = v28;
    v29 = sub_24EC73450(&qword_27F212F28, &qword_27F212F20, &qword_24F93E370);
    *(v23 + 136) = v29;
    *(v23 + 104) = v27;
    v30 = sub_24E607E40(v23);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212FB0, &unk_24F93A440);
    swift_arrayDestroy();
    v31 = v43[0];
    *(v43[0] + 24) = v28;
    v31[4] = v29;
    *v31 = v30;
    v32 = type metadata accessor for Game;
    v33 = v7;
  }

  return sub_24F41E900(v33, v32);
}

uint64_t type metadata accessor for GameSource(uint64_t a1)
{
  result = qword_27F242F70;
  if (!qword_27F242F70)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24F41D600(uint64_t a1)
{
  v2 = sub_24F41EA08();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F41D63C(uint64_t a1)
{
  v2 = sub_24F41EA08();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24F41D678()
{
  v1 = 0x4449656C646E7562;
  if (*v0 != 1)
  {
    v1 = 0x495041616964656DLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1701667175;
  }
}

uint64_t sub_24F41D6CC@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_24F41F0FC(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_24F41D6F4(uint64_t a1)
{
  v2 = sub_24F41E960();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F41D730(uint64_t a1)
{
  v2 = sub_24F41E960();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24F41D784@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x656D614774616877 && a2 == 0xE800000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_24F92CE08();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_24F41D80C(uint64_t a1)
{
  v2 = sub_24F41EA5C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F41D848(uint64_t a1)
{
  v2 = sub_24F41EA5C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24F41D894@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 1701667175 && a2 == 0xE400000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_24F92CE08();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_24F41D91C(uint64_t a1)
{
  v2 = sub_24F41E9B4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F41D958(uint64_t a1)
{
  v2 = sub_24F41E9B4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t GameSource.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F242F10, &qword_24F9F4F20);
  v38 = *(v2 - 8);
  v39 = v2;
  MEMORY[0x28223BE20](v2);
  v37 = &v30 - v3;
  v35 = type metadata accessor for GameMAPI(0);
  MEMORY[0x28223BE20](v35);
  v36 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F242F18, &qword_24F9F4F28);
  v33 = *(v5 - 8);
  v34 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = &v30 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F242F20, &qword_24F9F4F30);
  v31 = *(v8 - 8);
  v32 = v8;
  MEMORY[0x28223BE20](v8);
  v10 = &v30 - v9;
  v30 = type metadata accessor for Game(0);
  MEMORY[0x28223BE20](v30);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for GameSource(0);
  MEMORY[0x28223BE20](v13);
  v15 = &v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F242F28, &qword_24F9F4F38);
  v41 = *(v16 - 8);
  v42 = v16;
  MEMORY[0x28223BE20](v16);
  v18 = &v30 - v17;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F41E960();
  sub_24F92D128();
  sub_24F41E898(v40, v15, type metadata accessor for GameSource);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v44 = 1;
      sub_24F41EA08();
      v20 = v42;
      sub_24F92CC98();
      v21 = v34;
      sub_24F92CD08();

      (*(v33 + 8))(v7, v21);
      return (*(v41 + 8))(v18, v20);
    }

    v27 = v36;
    sub_24F41EAB0(v15, v36, type metadata accessor for GameMAPI);
    v45 = 2;
    sub_24F41E9B4();
    v28 = v37;
    v23 = v42;
    sub_24F92CC98();
    sub_24F41EB18(&qword_27F21C0D8, type metadata accessor for GameMAPI, &protocol conformance descriptor for GameMAPI);
    v29 = v39;
    sub_24F92CD48();
    (*(v38 + 8))(v28, v29);
    v25 = type metadata accessor for GameMAPI;
    v26 = v27;
  }

  else
  {
    sub_24F41EAB0(v15, v12, type metadata accessor for Game);
    v43 = 0;
    sub_24F41EA5C();
    v23 = v42;
    sub_24F92CC98();
    sub_24F41EB18(&qword_27F214950, type metadata accessor for Game, &protocol conformance descriptor for Game);
    v24 = v32;
    sub_24F92CD48();
    (*(v31 + 8))(v10, v24);
    v25 = type metadata accessor for Game;
    v26 = v12;
  }

  sub_24F41E900(v26, v25);
  return (*(v41 + 8))(v18, v23);
}

uint64_t GameSource.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v74 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F242F50, &qword_24F9F4F40);
  v4 = *(v3 - 8);
  v67 = v3;
  v68 = v4;
  MEMORY[0x28223BE20](v3);
  v69 = &v59 - v5;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F242F58, &qword_24F9F4F48);
  v66 = *(v73 - 8);
  MEMORY[0x28223BE20](v73);
  v72 = &v59 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F242F60, &qword_24F9F4F50);
  v64 = *(v7 - 8);
  v65 = v7;
  MEMORY[0x28223BE20](v7);
  v70 = &v59 - v8;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F242F68, &unk_24F9F4F58);
  v75 = *(v71 - 8);
  MEMORY[0x28223BE20](v71);
  v10 = &v59 - v9;
  v11 = type metadata accessor for GameSource(0);
  MEMORY[0x28223BE20](v11);
  v13 = &v59 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v59 - v15;
  MEMORY[0x28223BE20](v17);
  v19 = &v59 - v18;
  MEMORY[0x28223BE20](v20);
  v22 = &v59 - v21;
  v23 = a1[3];
  v77 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v23);
  sub_24F41E960();
  v24 = v76;
  sub_24F92D108();
  if (v24)
  {
    return __swift_destroy_boxed_opaque_existential_1(v77);
  }

  v60 = v16;
  v61 = v19;
  v62 = v13;
  v26 = v72;
  v25 = v73;
  v76 = 0;
  v63 = v22;
  v27 = v11;
  v28 = v74;
  v30 = v70;
  v29 = v71;
  v31 = sub_24F92CC78();
  v32 = (2 * *(v31 + 16)) | 1;
  v78 = v31;
  v79 = v31 + 32;
  v80 = 0;
  v81 = v32;
  v33 = sub_24E643434();
  v34 = v29;
  if (v33 == 3 || v80 != v81 >> 1)
  {
    v37 = sub_24F92C918();
    swift_allocError();
    v39 = v38;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212E20, &unk_24F939B40);
    *v39 = v27;
    sub_24F92CBB8();
    sub_24F92C908();
    (*(*(v37 - 8) + 104))(v39, *MEMORY[0x277D84160], v37);
    swift_willThrow();
    (*(v75 + 8))(v10, v34);
    goto LABEL_9;
  }

  if (v33)
  {
    if (v33 == 1)
    {
      v82 = 1;
      sub_24F41EA08();
      v35 = v29;
      v36 = v76;
      sub_24F92CBA8();
      if (v36)
      {
LABEL_7:
        (*(v75 + 8))(v10, v29);
LABEL_9:
        swift_unknownObjectRelease();
        return __swift_destroy_boxed_opaque_existential_1(v77);
      }

      v46 = v28;
      v47 = sub_24F92CC28();
      v76 = 0;
      v54 = v47;
      v56 = v55;
      (*(v66 + 8))(v26, v25);
      (*(v75 + 8))(v10, v35);
      swift_unknownObjectRelease();
      v57 = v60;
      *v60 = v54;
      v57[1] = v56;
      swift_storeEnumTagMultiPayload();
      v58 = v57;
    }

    else
    {
      v82 = 2;
      sub_24F41E9B4();
      v44 = v29;
      v45 = v76;
      sub_24F92CBA8();
      if (v45)
      {
        goto LABEL_7;
      }

      v46 = v28;
      v73 = v27;
      type metadata accessor for GameMAPI(0);
      sub_24F41EB18(&qword_27F21C0F0, type metadata accessor for GameMAPI, &protocol conformance descriptor for GameMAPI);
      v50 = v62;
      v51 = v67;
      v52 = v69;
      sub_24F92CC68();
      v53 = v75;
      v76 = 0;
      (*(v68 + 8))(v52, v51);
      (*(v53 + 8))(v10, v44);
      swift_unknownObjectRelease();
      swift_storeEnumTagMultiPayload();
      v58 = v50;
    }

    v43 = v63;
  }

  else
  {
    v82 = 0;
    sub_24F41EA5C();
    v41 = v29;
    v42 = v76;
    sub_24F92CBA8();
    v43 = v63;
    if (v42)
    {
      (*(v75 + 8))(v10, v41);
      goto LABEL_9;
    }

    v73 = v27;
    type metadata accessor for Game(0);
    sub_24F41EB18(&qword_27F214968, type metadata accessor for Game, &protocol conformance descriptor for Game);
    v48 = v61;
    v49 = v65;
    sub_24F92CC68();
    (*(v64 + 8))(v30, v49);
    (*(v75 + 8))(v10, v41);
    swift_unknownObjectRelease();
    v76 = 0;
    swift_storeEnumTagMultiPayload();
    v46 = v28;
    v58 = v48;
  }

  sub_24F41EAB0(v58, v43, type metadata accessor for GameSource);
  sub_24F41EAB0(v43, v46, type metadata accessor for GameSource);
  return __swift_destroy_boxed_opaque_existential_1(v77);
}

uint64_t sub_24F41E898(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24F41E900(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_24F41E960()
{
  result = qword_27F242F30;
  if (!qword_27F242F30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F242F30);
  }

  return result;
}

unint64_t sub_24F41E9B4()
{
  result = qword_27F242F38;
  if (!qword_27F242F38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F242F38);
  }

  return result;
}

unint64_t sub_24F41EA08()
{
  result = qword_27F242F40;
  if (!qword_27F242F40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F242F40);
  }

  return result;
}

unint64_t sub_24F41EA5C()
{
  result = qword_27F242F48;
  if (!qword_27F242F48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F242F48);
  }

  return result;
}

uint64_t sub_24F41EAB0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_24F41EB18(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_24F41EB60(uint64_t a1)
{
  sub_24F41EC50(319, &qword_27F242F80, type metadata accessor for Game);
  if (v1 <= 0x3F)
  {
    sub_24F41EC20();
    if (v2 <= 0x3F)
    {
      sub_24F41EC50(319, &qword_27F242F90, type metadata accessor for GameMAPI);
      if (v3 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      }
    }
  }
}

uint64_t sub_24F41EC20()
{
  result = qword_27F242F88;
  if (!qword_27F242F88)
  {
    result = MEMORY[0x277D837D0];
    atomic_store(MEMORY[0x277D837D0], &qword_27F242F88);
  }

  return result;
}

void sub_24F41EC50(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void))
{
  if (!*a2)
  {
    v4 = a3(0);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_24F41ECE0()
{
  result = qword_27F242F98;
  if (!qword_27F242F98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F242F98);
  }

  return result;
}

unint64_t sub_24F41ED38()
{
  result = qword_27F242FA0;
  if (!qword_27F242FA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F242FA0);
  }

  return result;
}

unint64_t sub_24F41ED90()
{
  result = qword_27F242FA8;
  if (!qword_27F242FA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F242FA8);
  }

  return result;
}

unint64_t sub_24F41EDE8()
{
  result = qword_27F242FB0;
  if (!qword_27F242FB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F242FB0);
  }

  return result;
}

unint64_t sub_24F41EE40()
{
  result = qword_27F242FB8;
  if (!qword_27F242FB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F242FB8);
  }

  return result;
}

unint64_t sub_24F41EE98()
{
  result = qword_27F242FC0;
  if (!qword_27F242FC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F242FC0);
  }

  return result;
}

unint64_t sub_24F41EEF0()
{
  result = qword_27F242FC8;
  if (!qword_27F242FC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F242FC8);
  }

  return result;
}

unint64_t sub_24F41EF48()
{
  result = qword_27F242FD0;
  if (!qword_27F242FD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F242FD0);
  }

  return result;
}

unint64_t sub_24F41EFA0()
{
  result = qword_27F242FD8;
  if (!qword_27F242FD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F242FD8);
  }

  return result;
}

unint64_t sub_24F41EFF8()
{
  result = qword_27F242FE0;
  if (!qword_27F242FE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F242FE0);
  }

  return result;
}

unint64_t sub_24F41F050()
{
  result = qword_27F242FE8;
  if (!qword_27F242FE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F242FE8);
  }

  return result;
}

unint64_t sub_24F41F0A8()
{
  result = qword_27F242FF0;
  if (!qword_27F242FF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F242FF0);
  }

  return result;
}

uint64_t sub_24F41F0FC(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701667175 && a2 == 0xE400000000000000;
  if (v3 || (sub_24F92CE08() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x4449656C646E7562 && a2 == 0xE800000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x495041616964656DLL && a2 == 0xE800000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_24F92CE08();

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

uint64_t sub_24F41F238(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215440, &unk_24F942BD0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 36);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68, &unk_24F93BC80);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 40);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_24F41F388(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215440, &unk_24F942BD0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 36);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68, &unk_24F93BC80);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 40);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t type metadata accessor for ComingSoonPlatter(uint64_t a1)
{
  result = qword_27F242FF8;
  if (!qword_27F242FF8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24F41F510(uint64_t a1)
{
  sub_24E61C7D0(319);
  if (v1 <= 0x3F)
  {
    sub_24E6BCB04();
    if (v2 <= 0x3F)
    {
      sub_24E65B038(319, &qword_27F213EA0, &qword_27F213EA8, &unk_24F93D030);
      if (v3 <= 0x3F)
      {
        sub_24E65B038(319, &qword_27F215458, &qword_27F215460, &qword_24F942C00);
        if (v4 <= 0x3F)
        {
          sub_24E61C938(319);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_24F41F62C@<X0>(char *a2@<X8>)
{
  v3 = sub_24F92CB88();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

unint64_t sub_24F41F740()
{
  result = qword_27F243008;
  if (!qword_27F243008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F243008);
  }

  return result;
}

uint64_t sub_24F41F794(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2430D0, &qword_24F9F5840);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v10[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F4217BC();
  sub_24F92D128();
  v10[15] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213F18, &qword_24F93BE20);
  sub_24E602068(&qword_27F214040, &qword_27F213F18, &qword_24F93BE20, MEMORY[0x277D21DB8]);
  sub_24F92CD48();
  if (!v2)
  {
    v10[14] = 1;
    sub_24F92CCA8();
    v10[13] = 2;
    sub_24F92CCA8();
    v10[12] = *(v3 + 72);
    v10[11] = 3;
    sub_24F421924();
    sub_24F92CD48();
    v10[10] = 4;
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F24EC90, &unk_24F93C1D0);
    sub_24E620EE4(&qword_27F214048, &qword_27F214050, MEMORY[0x277D21FD8], MEMORY[0x277D21D30]);
    sub_24F92CD48();
    type metadata accessor for ComingSoonPlatter(0);
    v10[9] = 5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215440, &unk_24F942BD0);
    sub_24E65CD0C();
    sub_24F92CD48();
    v10[8] = 6;
    sub_24F929608();
    sub_24F421978(&qword_27F214058, MEMORY[0x277D21F70], MEMORY[0x277D21F78]);
    sub_24F92CCF8();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_24F41FB38@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v35 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68, &unk_24F93BC80);
  MEMORY[0x28223BE20](v3 - 8);
  v36 = v34 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215440, &unk_24F942BD0);
  MEMORY[0x28223BE20](v5);
  v7 = v34 - v6;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2430B8, &unk_24F9F5830);
  v37 = *(v39 - 8);
  MEMORY[0x28223BE20](v39);
  v9 = v34 - v8;
  v10 = type metadata accessor for ComingSoonPlatter(0);
  v11 = v10 - 8;
  MEMORY[0x28223BE20](v10);
  v13 = v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v13 + 5) = 0u;
  v47 = 0;
  v45 = 0u;
  v46 = 0u;
  *(v13 + 6) = 0u;
  *(v13 + 14) = 0;
  v42 = v13 + 80;
  sub_24E61DA68(&v45, (v13 + 80), qword_27F21B590, &unk_24F93BE30);
  v14 = *(v11 + 44);
  v15 = sub_24F92A6D8();
  v16 = *(*(v15 - 8) + 56);
  v41 = v14;
  v16(&v13[v14], 1, 1, v15);
  v17 = *(v11 + 48);
  v18 = sub_24F929608();
  v19 = *(*(v18 - 8) + 56);
  v43 = v17;
  v19(&v13[v17], 1, 1, v18);
  v20 = a1[3];
  v44 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v20);
  sub_24F4217BC();
  v38 = v9;
  v21 = v40;
  sub_24F92D108();
  if (v21)
  {
    v23 = v41;
    v22 = v42;
    __swift_destroy_boxed_opaque_existential_1(v44);
    sub_24E601704(v22, qword_27F24EC90, &unk_24F93C1D0);
    sub_24E601704(&v13[v23], &qword_27F215440, &unk_24F942BD0);
    return sub_24E601704(&v13[v43], &qword_27F213E68, &unk_24F93BC80);
  }

  else
  {
    v40 = v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213F18, &qword_24F93BE20);
    v48 = 0;
    sub_24E602068(&qword_27F213F30, &qword_27F213F18, &qword_24F93BE20, MEMORY[0x277D21DC0]);
    sub_24F92CC68();
    v24 = v46;
    *v13 = v45;
    *(v13 + 1) = v24;
    *(v13 + 4) = v47;
    LOBYTE(v45) = 1;
    v25 = sub_24F92CBC8();
    v27 = v41;
    v26 = v42;
    v28 = v37;
    *(v13 + 5) = v25;
    *(v13 + 6) = v29;
    LOBYTE(v45) = 2;
    *(v13 + 7) = sub_24F92CBC8();
    *(v13 + 8) = v30;
    v34[1] = v30;
    v48 = 3;
    sub_24F421810();
    sub_24F92CC68();
    v13[72] = v45;
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F24EC90, &unk_24F93C1D0);
    v48 = 4;
    sub_24E620EE4(&qword_27F213F38, &qword_27F213F40, MEMORY[0x277D21FD0], MEMORY[0x277D21D38]);
    sub_24F92CC68();
    sub_24E61DA68(&v45, v26, qword_27F24EC90, &unk_24F93C1D0);
    LOBYTE(v45) = 5;
    sub_24E65CAA0();
    sub_24F92CC68();
    sub_24E61DA68(v7, &v13[v27], &qword_27F215440, &unk_24F942BD0);
    LOBYTE(v45) = 6;
    sub_24F421978(&qword_27F213F48, MEMORY[0x277D21F70], MEMORY[0x277D21F88]);
    v31 = v38;
    v32 = v39;
    sub_24F92CC18();
    (*(v28 + 8))(v31, v32);
    sub_24E61DA68(v36, &v13[v43], &qword_27F213E68, &unk_24F93BC80);
    sub_24F421864(v13, v35);
    __swift_destroy_boxed_opaque_existential_1(v44);
    return sub_24F4218C8(v13);
  }
}

unint64_t sub_24F4201E8()
{
  v1 = *v0;
  v2 = 25705;
  v3 = 0x4D747865746E6F63;
  if (v1 != 5)
  {
    v3 = 0xD000000000000011;
  }

  v4 = 0x795474756F79616CLL;
  if (v1 != 3)
  {
    v4 = 0x6575676573;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x614E6C6F626D7973;
  if (v1 != 1)
  {
    v5 = 0x7470697263736564;
  }

  if (*v0)
  {
    v2 = v5;
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

uint64_t sub_24F4202D4@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_24F421E68(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_24F4202FC(uint64_t a1)
{
  v2 = sub_24F4217BC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F420338(uint64_t a1)
{
  v2 = sub_24F4217BC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24F420374@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215440, &unk_24F942BD0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v9 - v6;
  sub_24E60169C(v2 + *(a1 + 36), &v9 - v6, &qword_27F215440, &unk_24F942BD0);
  return sub_24E68039C(v7, a2);
}

unint64_t sub_24F4204A4()
{
  result = qword_27F243010;
  if (!qword_27F243010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F243010);
  }

  return result;
}

uint64_t sub_24F4204F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F243028, &qword_24F9F5738);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v33 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F243030, &qword_24F9F5740);
  v8 = v7 - 8;
  MEMORY[0x28223BE20](v7);
  v10 = v33 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F243038, &qword_24F9F5748);
  v12 = v11 - 8;
  MEMORY[0x28223BE20](v11);
  v14 = v33 - v13;
  sub_24F420804(a1);
  sub_24F927618();
  sub_24F9242E8();
  sub_24E6009C8(v6, v10, &qword_27F243028, &qword_24F9F5738);
  v15 = &v10[*(v8 + 44)];
  v16 = v33[5];
  *(v15 + 4) = v33[4];
  *(v15 + 5) = v16;
  *(v15 + 6) = v33[6];
  v17 = v33[1];
  *v15 = v33[0];
  *(v15 + 1) = v17;
  v18 = v33[3];
  *(v15 + 2) = v33[2];
  *(v15 + 3) = v18;
  LOBYTE(v6) = sub_24F925808();
  sub_24E6009C8(v10, v14, &qword_27F243030, &qword_24F9F5740);
  v19 = &v14[*(v12 + 44)];
  *v19 = v6;
  *(v19 + 8) = 0u;
  *(v19 + 24) = 0u;
  v19[40] = 1;
  v20 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F243040, &unk_24F9F5750) + 36));
  v21 = *(sub_24F924258() + 20);
  v22 = *MEMORY[0x277CE0118];
  v23 = sub_24F924B38();
  (*(*(v23 - 8) + 104))(&v20[v21], v22, v23);
  __asm { FMOV            V0.2D, #18.0 }

  *v20 = _Q0;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21CB48, &qword_24F9570D0);
  v30 = *(v29 + 36);
  v31 = type metadata accessor for GradientBackground(0);
  (*(*(v31 - 8) + 56))(&v20[v30], 1, 1, v31);
  *&v20[*(v29 + 40)] = 0;
  return sub_24E6009C8(v14, a2, &qword_27F243038, &qword_24F9F5748);
}

uint64_t sub_24F420804(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F243048, &qword_24F9F5760);
  MEMORY[0x28223BE20](v2);
  v4 = &v17 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F243050, &qword_24F9F5768);
  MEMORY[0x28223BE20](v5);
  v7 = &v17 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F243058, &qword_24F9F5770);
  MEMORY[0x28223BE20](v8);
  v10 = &v17 - v9;
  if (*(a1 + 72))
  {
    *v4 = sub_24F9249A8();
    *(v4 + 1) = 0;
    v4[16] = 1;
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F243060, &qword_24F9F5778);
    sub_24F4210B0(a1, &v4[*(v11 + 44)]);
    sub_24E60169C(v4, v7, &qword_27F243048, &qword_24F9F5760);
    swift_storeEnumTagMultiPayload();
    sub_24E602068(&qword_27F243068, &qword_27F243058, &qword_24F9F5770, MEMORY[0x277CE1198]);
    sub_24E602068(&qword_27F243070, &qword_27F243048, &qword_24F9F5760, MEMORY[0x277CE1138]);
    sub_24F924E28();
    v12 = v4;
    v13 = &qword_27F243048;
    v14 = &qword_24F9F5760;
  }

  else
  {
    *v10 = sub_24F924C88();
    *(v10 + 1) = 0x4028000000000000;
    v10[16] = 0;
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F243078, &qword_24F9F5780);
    sub_24F420B28(a1, &v10[*(v15 + 44)]);
    sub_24E60169C(v10, v7, &qword_27F243058, &qword_24F9F5770);
    swift_storeEnumTagMultiPayload();
    sub_24E602068(&qword_27F243068, &qword_27F243058, &qword_24F9F5770, MEMORY[0x277CE1198]);
    sub_24E602068(&qword_27F243070, &qword_27F243048, &qword_24F9F5760, MEMORY[0x277CE1138]);
    sub_24F924E28();
    v12 = v10;
    v13 = &qword_27F243058;
    v14 = &qword_24F9F5770;
  }

  return sub_24E601704(v12, v13, v14);
}

uint64_t sub_24F420B28@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v51 = a2;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F243080, &qword_24F9F5788);
  v47 = *(v48 - 8);
  MEMORY[0x28223BE20](v48);
  v45 = &v44 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F243088, &unk_24F9F5790);
  MEMORY[0x28223BE20](v4 - 8);
  v50 = &v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v49 = &v44 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F241C80, &qword_24F9EF118);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v44 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F243090, &qword_24F9F57A0);
  MEMORY[0x28223BE20](v12 - 8);
  v46 = &v44 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v44 - v15;
  if (a1[6])
  {

    v17 = sub_24F926E48();
    v18 = sub_24F9258F8();
    KeyPath = swift_getKeyPath();
    *&v57 = v17;
    *(&v57 + 1) = KeyPath;
    *&v58 = v18;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F212AA0, &unk_24F9B2BE0);
    sub_24E60156C();
    sub_24F9268B8();

    (*(v9 + 32))(v16, v11, v8);
    (*(v9 + 56))(v16, 0, 1, v8);
  }

  else
  {
    (*(v9 + 56))(&v44 - v15, 1, 1, v8);
  }

  v20 = a1[8];
  if (v20)
  {
    *&v57 = a1[7];
    *(&v57 + 1) = v20;
    sub_24E600AEC();

    v21 = sub_24F925E18();
    v23 = v22;
    v25 = v24;
    v27 = v26;
    v28 = swift_getKeyPath();
    v29 = sub_24F9258D8();
    v30 = swift_getKeyPath();
    v56 = v25 & 1;
    *&v57 = v21;
    *(&v57 + 1) = v23;
    LOBYTE(v58) = v25 & 1;
    *(&v58 + 1) = v27;
    *&v59 = v28;
    BYTE8(v59) = 1;
    *&v60 = v30;
    *(&v60 + 1) = v29;
    v52 = v57;
    v53 = v58;
    v54 = v59;
    v55 = v60;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21F168, &qword_24F95F550);
    sub_24E8532EC();
    v31 = v45;
    sub_24F9268B8();
    sub_24E601704(&v57, &qword_27F21F168, &qword_24F95F550);
    LOBYTE(v21) = sub_24F9257F8();
    sub_24F923318();
    v32 = v48;
    v33 = v49;
    v34 = v31 + *(v48 + 36);
    *v34 = v21;
    *(v34 + 8) = v35;
    *(v34 + 16) = v36;
    *(v34 + 24) = v37;
    *(v34 + 32) = v38;
    *(v34 + 40) = 0;
    sub_24E6009C8(v31, v33, &qword_27F243080, &qword_24F9F5788);
    (*(v47 + 56))(v33, 0, 1, v32);
  }

  else
  {
    v33 = v49;
    (*(v47 + 56))(v49, 1, 1, v48);
  }

  v39 = v46;
  sub_24E60169C(v16, v46, &qword_27F243090, &qword_24F9F57A0);
  v40 = v50;
  sub_24E60169C(v33, v50, &qword_27F243088, &unk_24F9F5790);
  v41 = v51;
  sub_24E60169C(v39, v51, &qword_27F243090, &qword_24F9F57A0);
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F243098, &qword_24F9F57A8);
  sub_24E60169C(v40, v41 + *(v42 + 48), &qword_27F243088, &unk_24F9F5790);
  sub_24E601704(v33, &qword_27F243088, &unk_24F9F5790);
  sub_24E601704(v16, &qword_27F243090, &qword_24F9F57A0);
  sub_24E601704(v40, &qword_27F243088, &unk_24F9F5790);
  return sub_24E601704(v39, &qword_27F243090, &qword_24F9F57A0);
}

uint64_t sub_24F4210B0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v47 = a2;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2430A0, &qword_24F9F5818);
  v43 = *(v44 - 8);
  MEMORY[0x28223BE20](v44);
  v41 = &v40 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2430A8, &qword_24F9F5820);
  MEMORY[0x28223BE20](v4 - 8);
  v46 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v45 = &v40 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F241C80, &qword_24F9EF118);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v40 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F243090, &qword_24F9F57A0);
  MEMORY[0x28223BE20](v12 - 8);
  v42 = &v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v40 - v15;
  if (a1[6])
  {

    v17 = sub_24F926E48();
    v18 = sub_24F9258F8();
    KeyPath = swift_getKeyPath();
    *&v53 = v17;
    *(&v53 + 1) = KeyPath;
    *&v54 = v18;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F212AA0, &unk_24F9B2BE0);
    sub_24E60156C();
    sub_24F9268B8();

    (*(v9 + 32))(v16, v11, v8);
    (*(v9 + 56))(v16, 0, 1, v8);
  }

  else
  {
    (*(v9 + 56))(&v40 - v15, 1, 1, v8);
  }

  v20 = a1[8];
  if (v20)
  {
    *&v53 = a1[7];
    *(&v53 + 1) = v20;
    sub_24E600AEC();

    v21 = sub_24F925E18();
    v23 = v22;
    v25 = v24;
    v27 = v26;
    v28 = swift_getKeyPath();
    v29 = sub_24F9258D8();
    v30 = swift_getKeyPath();
    v52 = v25 & 1;
    *&v53 = v21;
    *(&v53 + 1) = v23;
    LOBYTE(v54) = v25 & 1;
    *(&v54 + 1) = v27;
    *&v55 = v28;
    BYTE8(v55) = 0;
    *&v56 = v30;
    *(&v56 + 1) = v29;
    v48 = v53;
    v49 = v54;
    v50 = v55;
    v51 = v56;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21F168, &qword_24F95F550);
    sub_24E8532EC();
    v31 = v41;
    sub_24F9268B8();
    sub_24E601704(&v53, &qword_27F21F168, &qword_24F95F550);
    v32 = v43;
    v33 = v44;
    v34 = v45;
    (*(v43 + 32))(v45, v31, v44);
    (*(v32 + 56))(v34, 0, 1, v33);
  }

  else
  {
    v34 = v45;
    (*(v43 + 56))(v45, 1, 1, v44);
  }

  v35 = v42;
  sub_24E60169C(v16, v42, &qword_27F243090, &qword_24F9F57A0);
  v36 = v46;
  sub_24E60169C(v34, v46, &qword_27F2430A8, &qword_24F9F5820);
  v37 = v47;
  sub_24E60169C(v35, v47, &qword_27F243090, &qword_24F9F57A0);
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2430B0, &qword_24F9F5828);
  sub_24E60169C(v36, v37 + *(v38 + 48), &qword_27F2430A8, &qword_24F9F5820);
  sub_24E601704(v34, &qword_27F2430A8, &qword_24F9F5820);
  sub_24E601704(v16, &qword_27F243090, &qword_24F9F57A0);
  sub_24E601704(v36, &qword_27F2430A8, &qword_24F9F5820);
  return sub_24E601704(v35, &qword_27F243090, &qword_24F9F57A0);
}

uint64_t sub_24F42161C(uint64_t a1)
{
  sub_24F4204A4();

  return sub_24F9218E8();
}

unint64_t sub_24F4216AC()
{
  result = qword_27F243020;
  if (!qword_27F243020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F243020);
  }

  return result;
}

unint64_t sub_24F4217BC()
{
  result = qword_27F2430C0;
  if (!qword_27F2430C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2430C0);
  }

  return result;
}

unint64_t sub_24F421810()
{
  result = qword_27F2430C8;
  if (!qword_27F2430C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2430C8);
  }

  return result;
}

uint64_t sub_24F421864(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ComingSoonPlatter(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24F4218C8(uint64_t a1)
{
  v2 = type metadata accessor for ComingSoonPlatter(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_24F421924()
{
  result = qword_27F2430D8;
  if (!qword_27F2430D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2430D8);
  }

  return result;
}

uint64_t sub_24F421978(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_24F4219C0()
{
  result = qword_27F2430E0;
  if (!qword_27F2430E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2430E0);
  }

  return result;
}

unint64_t sub_24F421A28()
{
  result = qword_27F2430E8;
  if (!qword_27F2430E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F243040, &unk_24F9F5750);
    sub_24F421AE0();
    sub_24E602068(&qword_27F22E7A8, &qword_27F21CB48, &qword_24F9570D0, &unk_24FA0D350);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2430E8);
  }

  return result;
}

unint64_t sub_24F421AE0()
{
  result = qword_27F2430F0;
  if (!qword_27F2430F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F243038, &qword_24F9F5748);
    sub_24F421B6C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2430F0);
  }

  return result;
}

unint64_t sub_24F421B6C()
{
  result = qword_27F2430F8;
  if (!qword_27F2430F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F243030, &qword_24F9F5740);
    sub_24F421BF8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2430F8);
  }

  return result;
}

unint64_t sub_24F421BF8()
{
  result = qword_27F243100;
  if (!qword_27F243100)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F243028, &qword_24F9F5738);
    sub_24F421C7C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F243100);
  }

  return result;
}

unint64_t sub_24F421C7C()
{
  result = qword_27F243108;
  if (!qword_27F243108)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F243110, &qword_24F9F5858);
    sub_24E602068(&qword_27F243068, &qword_27F243058, &qword_24F9F5770, MEMORY[0x277CE1198]);
    sub_24E602068(&qword_27F243070, &qword_27F243048, &qword_24F9F5760, MEMORY[0x277CE1138]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F243108);
  }

  return result;
}

unint64_t sub_24F421D64()
{
  result = qword_27F243118;
  if (!qword_27F243118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F243118);
  }

  return result;
}

unint64_t sub_24F421DBC()
{
  result = qword_27F243120;
  if (!qword_27F243120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F243120);
  }

  return result;
}

unint64_t sub_24F421E14()
{
  result = qword_27F243128;
  if (!qword_27F243128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F243128);
  }

  return result;
}

uint64_t sub_24F421E68(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_24F92CE08() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x614E6C6F626D7973 && a2 == 0xEA0000000000656DLL || (sub_24F92CE08() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7470697263736564 && a2 == 0xEB000000006E6F69 || (sub_24F92CE08() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x795474756F79616CLL && a2 == 0xEA00000000006570 || (sub_24F92CE08() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6575676573 && a2 == 0xE500000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x4D747865746E6F63 && a2 == 0xEB00000000756E65 || (sub_24F92CE08() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000011 && 0x800000024FA451D0 == a2)
  {

    return 6;
  }

  else
  {
    v6 = sub_24F92CE08();

    if (v6)
    {
      return 6;
    }

    else
    {
      return 7;
    }
  }
}

uint64_t sub_24F4220D4(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for Game(0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 20);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21D8F8, &qword_24F95ADB0);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 24);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_24F422218(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = type metadata accessor for Game(0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 20);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21D8F8, &qword_24F95ADB0);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 24);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t type metadata accessor for GameDetailsChallengesShelfIntent(uint64_t a1)
{
  result = qword_27F243130;
  if (!qword_27F243130)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24F422394(uint64_t a1)
{
  type metadata accessor for Game(319);
  if (v1 <= 0x3F)
  {
    sub_24E7D231C(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_24F422428@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v19 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21D8F8, &qword_24F95ADB0);
  MEMORY[0x28223BE20](v3 - 8);
  v20 = v18 - v4;
  v5 = type metadata accessor for Game(0);
  MEMORY[0x28223BE20](v5);
  v7 = v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F243140, &qword_24F9F5A10);
  v21 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v9 = v18 - v8;
  v10 = type metadata accessor for GameDetailsChallengesShelfIntent(0);
  MEMORY[0x28223BE20](v10);
  v12 = (v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F422950();
  v22 = v9;
  v13 = v24;
  sub_24F92D108();
  if (v13)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v24 = a1;
  v14 = v21;
  v27 = 0;
  *v12 = sub_24F92CC28();
  v12[1] = v15;
  v18[1] = v15;
  v26 = 1;
  sub_24F4229A4(&qword_27F214968, type metadata accessor for Game, &protocol conformance descriptor for Game);
  sub_24F92CC68();
  sub_24E636644(v7, v12 + *(v10 + 20));
  type metadata accessor for Page.Background(0);
  v25 = 2;
  sub_24F4229A4(&qword_27F21D930, type metadata accessor for Page.Background, &protocol conformance descriptor for Page.Background);
  v16 = v20;
  sub_24F92CC18();
  (*(v14 + 8))(v22, v23);
  sub_24E7DF71C(v16, v12 + *(v10 + 24));
  sub_24F4229EC(v12, v19);
  __swift_destroy_boxed_opaque_existential_1(v24);
  return sub_24F33B28C(v12, type metadata accessor for GameDetailsChallengesShelfIntent);
}

uint64_t sub_24F422824()
{
  v1 = 1701667175;
  if (*v0 != 1)
  {
    v1 = 0x756F72676B636162;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x444965676170;
  }
}

uint64_t sub_24F422878@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_24F422B68(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_24F4228A0(uint64_t a1)
{
  v2 = sub_24F422950();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F4228DC(uint64_t a1)
{
  v2 = sub_24F422950();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_24F422950()
{
  result = qword_27F243148;
  if (!qword_27F243148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F243148);
  }

  return result;
}

uint64_t sub_24F4229A4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_24F4229EC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GameDetailsChallengesShelfIntent(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_24F422A64()
{
  result = qword_27F243150;
  if (!qword_27F243150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F243150);
  }

  return result;
}

unint64_t sub_24F422ABC()
{
  result = qword_27F243158;
  if (!qword_27F243158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F243158);
  }

  return result;
}

unint64_t sub_24F422B14()
{
  result = qword_27F243160;
  if (!qword_27F243160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F243160);
  }

  return result;
}

uint64_t sub_24F422B68(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x444965676170 && a2 == 0xE600000000000000;
  if (v4 || (sub_24F92CE08() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1701667175 && a2 == 0xE400000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x756F72676B636162 && a2 == 0xEA0000000000646ELL)
  {

    return 2;
  }

  else
  {
    v6 = sub_24F92CE08();

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

unsigned __int8 *PageLayout.MarginSpec.init(pageMargins:shelfMargins:shelfDisplayStyle:)@<X0>(unsigned __int8 *result@<X0>, _BYTE *a2@<X1>, unint64_t *a3@<X2>, char *a4@<X8>)
{
  v4 = *a2;
  v5 = *a3;
  if (v4 <= 2)
  {
    if (*a2)
    {
      if (v4 == 1)
      {
        goto LABEL_7;
      }
    }

    else
    {
      v4 = *result;
      if (v4 > 2)
      {
        if (*result <= 4u)
        {
          if (v4 == 3)
          {
            goto LABEL_4;
          }

LABEL_11:
          *a4 = 3;
          return result;
        }

        goto LABEL_12;
      }

      if (v4 == 1)
      {
LABEL_7:
        *a4 = 0;
        return result;
      }
    }

    *a4 = 1;
    return result;
  }

  if (*a2 <= 4u)
  {
    if (v4 == 3)
    {
LABEL_4:
      *a4 = 2;
      return result;
    }

    goto LABEL_11;
  }

LABEL_12:
  if (v4 == 5)
  {
    *a4 = 4;
  }

  else
  {
    if (v5 >> 62 != 1 || v5 >> 1 == 0xFFFFFFFF)
    {
      v7 = 5;
    }

    else
    {
      v7 = 6;
    }

    *a4 = v7;
  }

  return result;
}

double PageLayout.MarginSpec.resolve(in:isVerticalSizeClassCompact:hasHorizontalSafeArea:maxContainerWidth:)@<D0>(char a1@<W0>, char a2@<W1>, double *a3@<X8>, double a4@<D0>, double a5@<D1>)
{
  v9 = *v5;
  if (a4 <= 1580.0)
  {
    v10 = a4;
  }

  else
  {
    v10 = 1580.0;
  }

  v11 = 0.0;
  if (*v5 <= 2u)
  {
    if (!*v5)
    {
      goto LABEL_47;
    }

    if (v9 != 1)
    {
      v13 = a1 & 1;
      goto LABEL_24;
    }

    if (a1)
    {
      if (a2)
      {
        v11 = 0.0;
      }

      else
      {
        v11 = 16.0;
      }

      goto LABEL_47;
    }

    goto LABEL_33;
  }

  if (*v5 > 4u)
  {
    if (v9 == 5)
    {
      if (qword_27F210748 != -1)
      {
        swift_once();
      }

      swift_beginAccess();
      if (byte_27F2301A8 == 1)
      {
        if (a1)
        {
          if (qword_27F210D60 != -1)
          {
            swift_once();
          }

          v11 = *&qword_27F39D300;
        }

        else
        {
          v16 = v10 >= 428.0 || v10 < 376.0;
          v17 = 46.0;
          if (!v16)
          {
            v17 = 38.0;
          }

          if (v10 >= 0.0 && v10 < 376.0)
          {
            v11 = 44.0;
          }

          else
          {
            v11 = v17;
          }
        }
      }

      else
      {
        v11 = 40.0;
      }
    }

    else
    {
      v11 = 14.0;
    }

    goto LABEL_47;
  }

  if (v9 != 3)
  {
    if (a1)
    {
      if (a2)
      {
        v11 = 0.0;
      }

      else
      {
        v11 = 16.0;
      }

      if (v10 + -420.0 > 0.0 && (v10 + -420.0) * 0.5 > v11)
      {
        v11 = (v10 + -420.0) * 0.5;
      }

      goto LABEL_47;
    }

LABEL_33:
    v11 = dbl_24F9F5CF8[sub_24E6B00B4(v10)];
    goto LABEL_47;
  }

  if (sub_24E6B00B4(v10) >= 4u)
  {
    v13 = a1 & 1;
LABEL_24:
    sub_24F422FFC(v13, v10);
    v11 = v15;
  }

LABEL_47:
  result = v10 - (v11 + v11);
  *a3 = a4;
  a3[1] = a5;
  a3[2] = v10;
  a3[3] = result;
  a3[4] = v11;
  a3[5] = (a4 - v10) * 0.5 + v11;
  return result;
}

id sub_24F422FFC(char a1, double a2)
{
  if ((a1 & 1) == 0)
  {
    sub_24E6B00B4(a2);
  }

  return [objc_opt_self() _readableWidth];
}

uint64_t PageLayout.MarginSpec.hashValue.getter()
{
  v1 = *v0;
  sub_24F92D068();
  MEMORY[0x253052A00](v1);
  return sub_24F92D0B8();
}

double sub_24F423108()
{
  result = 1580.0 - dbl_24F9F5CB0[sub_24E6B00B4(1580.0)];
  *&qword_27F243168 = result;
  return result;
}

double static PageLayout.MarginSpec.maxContentWidth.getter()
{
  if (qword_27F211268 != -1)
  {
    swift_once();
  }

  return *&qword_27F243168;
}

double sub_24F4231A4()
{
  v1 = sub_24F924848();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v0 + 24);
  if (*(v0 + 32) == 1)
  {
    return *(v0 + 24);
  }

  sub_24F92BDC8();
  v7 = sub_24F9257A8();
  sub_24F921FD8();

  sub_24F924838();
  swift_getAtKeyPath();
  sub_24E62A5EC(v5, 0);
  (*(v2 + 8))(v4, v1);
  return *&v8[1];
}

double sub_24F4232F0()
{
  v1 = sub_24F924848();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v0 + 40);
  v5 = *(v0 + 48);
  v8 = *(v0 + 56);
  v7 = *(v0 + 64);
  if (*(v0 + 72) == 1)
  {
    return *(v0 + 40);
  }

  sub_24F92BDC8();
  v10 = sub_24F9257A8();
  sub_24F921FD8();

  sub_24F924838();
  swift_getAtKeyPath();
  sub_24E669FC4(v6, v5, v8, v7, 0);
  (*(v2 + 8))(v4, v1);
  return v11;
}

__n128 sub_24F42346C@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v56 = a1;
  v60 = a2;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F243188, &qword_24F9F5C80);
  MEMORY[0x28223BE20](v55);
  v58 = &v51 - v3;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F243190, &unk_24F9F5C88);
  MEMORY[0x28223BE20](v57);
  v59 = &v51 - v4;
  v5 = sub_24F925218();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v52 = &v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F254F20, &qword_24F940790);
  MEMORY[0x28223BE20](v8);
  v10 = &v51 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215598, &qword_24F945EF0);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v51 - v15;
  MEMORY[0x28223BE20](v17);
  v19 = (&v51 - v18);
  v20 = *(v2 + 1);
  if (v20 > 2)
  {
    if (*(v2 + 1) > 4u)
    {
      if (v20 == 5)
      {
        v21 = 4;
      }

      else
      {
        v21 = 5;
      }
    }

    else if (v20 == 3)
    {
      v21 = 2;
    }

    else
    {
      v21 = 3;
    }

LABEL_15:
    v53 = v21;
    if (*(v2 + 16))
    {
      goto LABEL_16;
    }

LABEL_8:
    v22 = *(v2 + 8);
    goto LABEL_17;
  }

  if (!*(v2 + 1))
  {
    v21 = 0x5040302010001uLL >> (8 * *v2);
    goto LABEL_15;
  }

  if (v20 != 1)
  {
    v21 = 1;
    goto LABEL_15;
  }

  v53 = 0;
  if ((*(v2 + 16) & 1) == 0)
  {
    goto LABEL_8;
  }

LABEL_16:
  v22 = sub_24F4231A4();
LABEL_17:
  type metadata accessor for PageMarginsViewModifier(0);
  v54 = v2;
  sub_24F769764(v19);
  (*(v6 + 104))(v16, *MEMORY[0x277CE0558], v5);
  (*(v6 + 56))(v16, 0, 1, v5);
  v23 = *(v8 + 48);
  sub_24EDEBCCC(v19, v10);
  sub_24EDEBCCC(v16, &v10[v23]);
  v24 = *(v6 + 48);
  if (v24(v10, 1, v5) == 1)
  {
    sub_24E601704(v16, &qword_27F215598, &qword_24F945EF0);
    sub_24E601704(v19, &qword_27F215598, &qword_24F945EF0);
    if (v24(&v10[v23], 1, v5) == 1)
    {
      sub_24E601704(v10, &qword_27F215598, &qword_24F945EF0);
      v25 = 1;
LABEL_23:
      v26 = v58;
      goto LABEL_25;
    }

LABEL_22:
    sub_24E601704(v10, &unk_27F254F20, &qword_24F940790);
    v25 = 0;
    goto LABEL_23;
  }

  sub_24EDEBCCC(v10, v13);
  if (v24(&v10[v23], 1, v5) == 1)
  {
    sub_24E601704(v16, &qword_27F215598, &qword_24F945EF0);
    sub_24E601704(v19, &qword_27F215598, &qword_24F945EF0);
    (*(v6 + 8))(v13, v5);
    goto LABEL_22;
  }

  v27 = v52;
  (*(v6 + 32))(v52, &v10[v23], v5);
  sub_24EDEBD3C();
  v25 = sub_24F92AFF8();
  v28 = *(v6 + 8);
  v28(v27, v5);
  sub_24E601704(v16, &qword_27F215598, &qword_24F945EF0);
  sub_24E601704(v19, &qword_27F215598, &qword_24F945EF0);
  v28(v13, v5);
  sub_24E601704(v10, &qword_27F215598, &qword_24F945EF0);
  v26 = v58;
LABEL_25:
  sub_24F4232F0();
  if (v22 > 1580.0)
  {
    v22 = 1580.0;
  }

  if (v53 > 2u)
  {
    if (v53 == 3)
    {
      if (sub_24E6B00B4(v22) >= 4u)
      {
        v29 = 3;
LABEL_39:
        LOBYTE(v62) = v29;
        sub_24F422FFC(v25 & 1, v22);
      }
    }

    else
    {
      if (v53 == 4)
      {
        if (v25)
        {
          goto LABEL_47;
        }

LABEL_46:
        sub_24E6B00B4(v22);
        goto LABEL_47;
      }

      if (qword_27F210748 != -1)
      {
        swift_once();
      }

      swift_beginAccess();
      if ((byte_27F2301A8 & 1) != 0 && (v25 & 1) != 0 && qword_27F210D60 != -1)
      {
        swift_once();
      }
    }
  }

  else if (v53)
  {
    if (v53 == 1)
    {
      if (v25)
      {
        goto LABEL_47;
      }

      goto LABEL_46;
    }

    v29 = 2;
    goto LABEL_39;
  }

LABEL_47:
  v30 = sub_24F9257F8();
  sub_24F923318();
  v32 = v31;
  v34 = v33;
  v36 = v35;
  v38 = v37;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F243198, &qword_24F9F5C98);
  (*(*(v39 - 8) + 16))(v26, v56, v39);
  v40 = v26 + *(v55 + 36);
  *v40 = v30;
  *(v40 + 8) = v32;
  *(v40 + 16) = v34;
  *(v40 + 24) = v36;
  *(v40 + 32) = v38;
  *(v40 + 40) = 0;
  sub_24F927618();
  sub_24F9242E8();
  v41 = v59;
  sub_24E6009C8(v26, v59, &qword_27F243188, &qword_24F9F5C80);
  v42 = (v41 + *(v57 + 36));
  v43 = v61[5];
  v42[4] = v61[4];
  v42[5] = v43;
  v42[6] = v61[6];
  v44 = v61[1];
  *v42 = v61[0];
  v42[1] = v44;
  v45 = v61[3];
  v42[2] = v61[2];
  v42[3] = v45;
  sub_24F927618();
  sub_24F9242E8();
  v46 = v60;
  sub_24E6009C8(v41, v60, &qword_27F243190, &unk_24F9F5C88);
  v47 = v46 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2431A0, &unk_24F9F5CA0) + 36);
  v48 = v67;
  *(v47 + 64) = v66;
  *(v47 + 80) = v48;
  *(v47 + 96) = v68;
  v49 = v63;
  *v47 = v62;
  *(v47 + 16) = v49;
  result = v65;
  *(v47 + 32) = v64;
  *(v47 + 48) = result;
  return result;
}

unint64_t sub_24F423E9C()
{
  result = qword_27F243170;
  if (!qword_27F243170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F243170);
  }

  return result;
}

uint64_t sub_24F423F24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *(a1 + 32);
    if (v4 > 1)
    {
      return (v4 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F254DA0, &unk_24F947C80);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 36);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_24F423FEC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *(result + 32) = -a2;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F254DA0, &unk_24F947C80);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 36);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for PageMarginsViewModifier(uint64_t a1)
{
  result = qword_27F243178;
  if (!qword_27F243178)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24F4240E4(uint64_t a1)
{
  sub_24E819578(319, &qword_27F215E08, MEMORY[0x277D85048], MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    sub_24E819578(319, &qword_27F215590, MEMORY[0x277D85048], MEMORY[0x277CDF468]);
    if (v2 <= 0x3F)
    {
      sub_24E819578(319, &qword_27F254DF0, MEMORY[0x277CDF310], MEMORY[0x277CDF468]);
      if (v3 <= 0x3F)
      {
        sub_24E684120(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

unint64_t sub_24F424234()
{
  result = qword_27F2431A8;
  if (!qword_27F2431A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2431A0, &unk_24F9F5CA0);
    sub_24F4242C0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2431A8);
  }

  return result;
}

unint64_t sub_24F4242C0()
{
  result = qword_27F2431B0;
  if (!qword_27F2431B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F243190, &unk_24F9F5C88);
    sub_24F42434C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2431B0);
  }

  return result;
}

unint64_t sub_24F42434C()
{
  result = qword_27F2431B8;
  if (!qword_27F2431B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F243188, &qword_24F9F5C80);
    sub_24F4243D8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2431B8);
  }

  return result;
}

unint64_t sub_24F4243D8()
{
  result = qword_27F2431C0;
  if (!qword_27F2431C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F243198, &qword_24F9F5C98);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2431C0);
  }

  return result;
}

uint64_t sub_24F42443C(uint64_t a1)
{
  result = _s7SwiftUI5ColorV12GameStoreKitE05focusC0ACvgZ_0();
  qword_27F2431C8 = result;
  return result;
}

uint64_t sub_24F424480()
{
  v0 = sub_24F926C08();
  v1 = MEMORY[0x28223BE20](v0);
  (*(v3 + 104))(&v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x277CE0EE0], v1);
  result = sub_24F926D48();
  qword_27F2431D0 = result;
  return result;
}

uint64_t sub_24F424584(void *a1, uint64_t a2, uint64_t a3)
{
  if (*a1 == -1)
  {
  }

  else
  {
    swift_once();
  }
}

uint64_t ChallengesPlayerPickerPageInfo.init(pageID:pageMetrics:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_24F92A708();
  (*(*(v6 - 8) + 32))(a3, a1, v6);
  v7 = *(type metadata accessor for ChallengesPlayerPickerPageInfo(0) + 20);
  v8 = sub_24F928818();
  v9 = *(*(v8 - 8) + 32);

  return v9(a3 + v7, a2, v8);
}

uint64_t type metadata accessor for ChallengesPlayerPickerPageInfo(uint64_t a1)
{
  result = qword_27F2431F0;
  if (!qword_27F2431F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24F424700()
{
  if (*v0)
  {
    return 0x7274654D65676170;
  }

  else
  {
    return 0x444965676170;
  }
}

uint64_t sub_24F424740@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x444965676170 && a2 == 0xE600000000000000;
  if (v6 || (sub_24F92CE08() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x7274654D65676170 && a2 == 0xEB00000000736369)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_24F92CE08();

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

uint64_t sub_24F42481C(uint64_t a1)
{
  v2 = sub_24F424A94();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F424858(uint64_t a1)
{
  v2 = sub_24F424A94();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ChallengesPlayerPickerPageInfo.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2431D8, &qword_24F9F5D70);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F424A94();
  sub_24F92D128();
  v8[15] = 0;
  sub_24F92A708();
  sub_24F424F08(&qword_27F21F890, MEMORY[0x277D22408], MEMORY[0x277D22410]);
  sub_24F92CD48();
  if (!v1)
  {
    type metadata accessor for ChallengesPlayerPickerPageInfo(0);
    v8[14] = 1;
    sub_24F928818();
    sub_24F424F08(&qword_27F21F898, MEMORY[0x277D21BF8], MEMORY[0x277D21C00]);
    sub_24F92CD48();
  }

  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_24F424A94()
{
  result = qword_27F2431E0;
  if (!qword_27F2431E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2431E0);
  }

  return result;
}

uint64_t ChallengesPlayerPickerPageInfo.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v22 = a2;
  v24 = sub_24F928818();
  v21 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_24F92A708();
  v23 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v25 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2431E8, &qword_24F9F5D78);
  v26 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v8 = &v19 - v7;
  v9 = type metadata accessor for ChallengesPlayerPickerPageInfo(0);
  MEMORY[0x28223BE20](v9);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F424A94();
  sub_24F92D108();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v20 = v9;
  v12 = v11;
  v14 = v23;
  v13 = v24;
  v30 = 0;
  sub_24F424F08(&qword_27F21F8C0, MEMORY[0x277D22408], MEMORY[0x277D22420]);
  v15 = v25;
  sub_24F92CC68();
  v16 = *(v14 + 32);
  v19 = v12;
  v16(v12, v15, v27);
  v29 = 1;
  sub_24F424F08(&qword_27F21F8C8, MEMORY[0x277D21BF8], MEMORY[0x277D21C08]);
  sub_24F92CC68();
  (*(v26 + 8))(v8, v28);
  v17 = v19;
  (*(v21 + 32))(v19 + *(v20 + 20), v5, v13);
  sub_24F424F50(v17, v22);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_24F424FB4(v17);
}

uint64_t sub_24F424F08(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_24F424F50(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ChallengesPlayerPickerPageInfo(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24F424FB4(uint64_t a1)
{
  v2 = type metadata accessor for ChallengesPlayerPickerPageInfo(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24F425054(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24F92A708();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = sub_24F928818();
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_24F425158(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_24F92A708();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = sub_24F928818();
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_24F425254(uint64_t a1)
{
  result = sub_24F92A708();
  if (v2 <= 0x3F)
  {
    result = sub_24F928818();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_24F4252EC()
{
  result = qword_27F243200;
  if (!qword_27F243200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F243200);
  }

  return result;
}

unint64_t sub_24F425344()
{
  result = qword_27F243208;
  if (!qword_27F243208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F243208);
  }

  return result;
}

unint64_t sub_24F42539C()
{
  result = qword_27F243210;
  if (!qword_27F243210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F243210);
  }

  return result;
}

uint64_t sub_24F425404(uint64_t a1, uint64_t a2)
{
  v4 = sub_24F928AD8();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_24F425484(uint64_t a1, uint64_t a2)
{
  v4 = sub_24F928AD8();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t type metadata accessor for CompleteOnboardProfileCreationAction(uint64_t a1)
{
  result = qword_27F243218;
  if (!qword_27F243218)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24F425540@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v16 = a2;
  v3 = sub_24F928AD8();
  v17 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v18 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F243228, &qword_24F9F5FB0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v15 - v7;
  v9 = type metadata accessor for CompleteOnboardProfileCreationAction(0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F4259A0();
  v12 = v19;
  sub_24F92D108();
  if (!v12)
  {
    v13 = v17;
    sub_24E674184(&qword_27F254CB0, MEMORY[0x277D21C98]);
    sub_24F92CC68();
    (*(v6 + 8))(v8, v5);
    (*(v13 + 32))(v11, v18, v3);
    sub_24F4259F4(v11, v16);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_24F4257AC(uint64_t a1)
{
  v2 = sub_24F4259A0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F4257E8(uint64_t a1)
{
  v2 = sub_24F4259A0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24F42583C(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F243238, &qword_24F9F5FB8);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F4259A0();
  sub_24F92D128();
  sub_24F928AD8();
  sub_24E674184(&qword_27F216080, MEMORY[0x277D21C90]);
  sub_24F92CD48();
  return (*(v3 + 8))(v5, v2);
}

unint64_t sub_24F4259A0()
{
  result = qword_27F243230;
  if (!qword_27F243230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F243230);
  }

  return result;
}

uint64_t sub_24F4259F4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CompleteOnboardProfileCreationAction(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_24F425A6C()
{
  result = qword_27F243240;
  if (!qword_27F243240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F243240);
  }

  return result;
}

unint64_t sub_24F425AC4()
{
  result = qword_27F243248;
  if (!qword_27F243248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F243248);
  }

  return result;
}

unint64_t sub_24F425B1C()
{
  result = qword_27F243250[0];
  if (!qword_27F243250[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27F243250);
  }

  return result;
}

uint64_t sub_24F425BD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v52 = a3;
  v53 = a2;
  v47 = sub_24F91F6B8();
  v46 = *(v47 - 8);
  MEMORY[0x28223BE20](v47);
  v45 = &v45 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228530, &unk_24F93C6E0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v45 - v6;
  v8 = sub_24F928AD8();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v45 - v13;
  if (qword_27F211198 != -1)
  {
    swift_once();
  }

  sub_24E65864C(qword_27F39E488, v62);
  v15 = type metadata accessor for InviteChallengeViaMessagesAction(0);
  v16 = *(v15 + 32);
  v50 = v9;
  v17 = *(v9 + 16);
  v17(v14, a1 + v16, v8);
  v18 = swift_allocObject();
  *(v18 + 16) = *(a1 + *(v15 + 28));
  v19 = v18 | 0x2000000000000004;

  v20 = sub_24F929CF8();
  v22 = v21;
  sub_24E60169C(v62, v61, &qword_27F235830, &qword_24F93B8C0);
  v23 = sub_24F91F4A8();
  (*(*(v23 - 8) + 56))(v7, 1, 1, v23);
  v60[3] = &type metadata for FlowDestination;
  v60[0] = v19;
  v49 = v14;
  v17(v11, v14, v8);
  v24 = type metadata accessor for FlowAction(0);
  v25 = swift_allocObject();
  *(v25 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_pageDataPageRenderMetrics) = 0;
  v26 = v25 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_pageData;
  *v26 = 0u;
  *(v26 + 16) = 0u;
  *(v26 + 32) = 0;
  v27 = (v25 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_appStateController);
  *v27 = 0;
  v27[1] = 0;
  *(v25 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_page) = 54;
  v51 = v7;
  sub_24E60169C(v7, v25 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_pageUrl, &qword_27F228530, &unk_24F93C6E0);
  v28 = (v25 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_referrerUrl);
  *v28 = 0;
  v28[1] = 0;
  v29 = v25 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_referrerData;
  *v29 = xmmword_24F9406F0;
  *(v29 + 24) = 0;
  *(v29 + 32) = 0;
  *(v29 + 16) = 0;
  *(v29 + 40) = 0;
  *(v25 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_presentationContext) = 0;
  *(v25 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_animationBehavior) = 0;
  *(v25 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_origin) = 0;
  v30 = (v25 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_presentation);
  *v30 = v20;
  v30[1] = v22;
  sub_24E60169C(v61, v59, &qword_27F235830, &qword_24F93B8C0);
  v48 = v11;
  v17((v25 + OBJC_IVAR____TtC12GameStoreKit6Action_actionMetrics), v11, v8);
  v31 = OBJC_IVAR____TtC12GameStoreKit6Action_impressionMetrics;
  v32 = sub_24F929608();
  (*(*(v32 - 8) + 56))(v25 + v31, 1, 1, v32);
  v33 = (v25 + OBJC_IVAR____TtC12GameStoreKit6Action_clickSender);
  *v33 = 0u;
  v33[1] = 0u;
  v34 = v25 + OBJC_IVAR____TtC12GameStoreKit6Action_id;
  sub_24E60169C(v59, &v56, &qword_27F235830, &qword_24F93B8C0);
  if (*(&v57 + 1))
  {
    v35 = v57;
    *v34 = v56;
    *(v34 + 16) = v35;
    *(v34 + 32) = v58;
  }

  else
  {
    v36 = v45;
    sub_24F91F6A8();
    v37 = sub_24F91F668();
    v39 = v38;
    (*(v46 + 8))(v36, v47);
    v54 = v37;
    v55 = v39;
    sub_24F92C7F8();
    sub_24E601704(&v56, &qword_27F235830, &qword_24F93B8C0);
  }

  sub_24E601704(v59, &qword_27F235830, &qword_24F93B8C0);
  *(v25 + 16) = 0u;
  *(v25 + 32) = 0u;

  FlowAction.setPageData(_:)(v60);

  v40 = *(v50 + 8);
  v40(v49, v8);
  sub_24E601704(v62, &qword_27F235830, &qword_24F93B8C0);
  v40(v48, v8);
  sub_24E601704(v51, &qword_27F228530, &unk_24F93C6E0);
  sub_24E601704(v61, &qword_27F235830, &qword_24F93B8C0);
  sub_24E601704(v60, &qword_27F2129B0, &unk_24F945320);
  v62[3] = v24;
  v62[4] = sub_24F426334(&qword_27F216400, type metadata accessor for FlowAction, &protocol conformance descriptor for Action);
  v62[0] = v25;
  type metadata accessor for InviteChallengeViaMessagesActionImplementation(0, v52, v41, v42);

  swift_getWitnessTable();
  v43 = sub_24F1489C4(v62, v53);

  __swift_destroy_boxed_opaque_existential_1(v62);
  return v43;
}

uint64_t sub_24F4262FC()
{

  return swift_deallocObject();
}

uint64_t sub_24F426334(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t RecentlyPlayedShelfIntentImplementation.perform(_:objectGraph:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[8] = a2;
  v3[9] = a3;
  v3[7] = a1;
  v3[10] = type metadata accessor for GSKShelf(0);
  v3[11] = swift_task_alloc();
  v3[12] = swift_task_alloc();
  v3[13] = type metadata accessor for RecentlyPlayedShelfConstructionIntent(0);
  v3[14] = swift_task_alloc();
  v3[15] = type metadata accessor for GamesRecentlyPlayedDataIntent(0);
  v3[16] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24F426480, 0, 0);
}

uint64_t sub_24F426480()
{
  v1 = *(v0 + 120);
  v2 = *(v0 + 128);
  v3 = *(v0 + 64);
  v4 = type metadata accessor for RecentlyPlayedShelfIntent(0);
  v5 = v4[5];
  *(v0 + 192) = v5;
  v6 = *(v3 + v4[6]);
  v7 = *(v3 + v4[7]);
  sub_24E8C9414(v3 + v5, v2, type metadata accessor for Player);
  *(v2 + v1[5]) = v6;
  *(v2 + v1[6]) = v7;
  *(v2 + v1[7]) = 0;
  v8 = swift_task_alloc();
  *(v0 + 136) = v8;
  *v8 = v0;
  v8[1] = sub_24F426598;
  v9 = *(v0 + 128);
  v10 = *(v0 + 72);

  return sub_24E6483AC(v9, v10);
}

uint64_t sub_24F426598(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 144) = v1;

  if (v1)
  {
    v5 = sub_24F426E10;
  }

  else
  {
    *(v4 + 152) = a1;
    v5 = sub_24F4266C0;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_24F4266C0()
{
  v1 = *(v0 + 152);
  v3 = *(v0 + 104);
  v2 = *(v0 + 112);
  v4 = *(v0 + 64);
  v6 = *v4;
  v5 = v4[1];
  sub_24E8C9414(v4 + *(v0 + 192), v2 + *(v3 + 20), type metadata accessor for Player);
  *v2 = v6;
  v2[1] = v5;
  *(v2 + *(v3 + 24)) = v1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F255030, &qword_24F93B050);

  v8 = swift_task_alloc();
  *(v0 + 160) = v8;
  *v8 = v0;
  v8[1] = sub_24F4267DC;

  return MEMORY[0x28217F228](v0 + 16, v7, v7);
}

uint64_t sub_24F4267DC()
{
  *(*v1 + 168) = v0;

  if (v0)
  {
    v2 = sub_24F426B00;
  }

  else
  {
    v2 = sub_24F4268F0;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24F4268F0()
{
  v1 = v0[5];
  v2 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v1);
  v3 = swift_task_alloc();
  v0[22] = v3;
  v4 = sub_24F3241D0(&qword_27F21D598, type metadata accessor for RecentlyPlayedShelfConstructionIntent, &protocol conformance descriptor for RecentlyPlayedShelfConstructionIntent);
  *v3 = v0;
  v3[1] = sub_24F4269EC;
  v6 = v0[13];
  v5 = v0[14];
  v7 = v0[12];
  v8 = v0[9];

  return MEMORY[0x28217F4B0](v7, v5, v8, v6, v4, v1, v2);
}

uint64_t sub_24F4269EC()
{
  *(*v1 + 184) = v0;

  if (v0)
  {
    v2 = sub_24F426D40;
  }

  else
  {
    v2 = sub_24F426BC8;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24F426B00()
{
  v1 = v0[16];
  sub_24F426EB8(v0[14], type metadata accessor for RecentlyPlayedShelfConstructionIntent);
  sub_24F426EB8(v1, type metadata accessor for GamesRecentlyPlayedDataIntent);

  v2 = v0[1];

  return v2();
}

uint64_t sub_24F426BC8()
{
  v1 = v0[16];
  v2 = v0[14];
  v4 = v0[11];
  v3 = v0[12];
  v5 = v0[7];
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  sub_24E8C9414(v3, v4, type metadata accessor for GSKShelf);
  sub_24F928138();
  sub_24F426EB8(v3, type metadata accessor for GSKShelf);
  sub_24F426EB8(v2, type metadata accessor for RecentlyPlayedShelfConstructionIntent);
  sub_24F426EB8(v1, type metadata accessor for GamesRecentlyPlayedDataIntent);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213768, &unk_24F93F770);
  (*(*(v6 - 8) + 56))(v5, 0, 1, v6);

  v7 = v0[1];

  return v7();
}

uint64_t sub_24F426D40()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v1 = v0[16];
  sub_24F426EB8(v0[14], type metadata accessor for RecentlyPlayedShelfConstructionIntent);
  sub_24F426EB8(v1, type metadata accessor for GamesRecentlyPlayedDataIntent);

  v2 = v0[1];

  return v2();
}

uint64_t sub_24F426E10()
{
  sub_24F426EB8(*(v0 + 128), type metadata accessor for GamesRecentlyPlayedDataIntent);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24F426EB8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_24F426F60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_24E614970;

  return RecentlyPlayedShelfIntentImplementation.perform(_:objectGraph:)(a1, a2, a3);
}

uint64_t OpenURLAction.init(url:actionMetrics:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  *a4 = a1;
  *(a4 + 1) = a2;
  v6 = *(type metadata accessor for OpenURLAction(0) + 20);
  v7 = sub_24F928AD8();
  v8 = *(*(v7 - 8) + 32);

  return v8(&a4[v6], a3, v7);
}

uint64_t type metadata accessor for OpenURLAction(uint64_t a1)
{
  result = qword_27F2432F0;
  if (!qword_27F2432F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t OpenURLAction.url.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t OpenURLAction.actionMetrics.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for OpenURLAction(0) + 20);
  v4 = sub_24F928AD8();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_24F42719C()
{
  if (*v0)
  {
    return 0x654D6E6F69746361;
  }

  else
  {
    return 7107189;
  }
}

uint64_t sub_24F4271DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 7107189 && a2 == 0xE300000000000000;
  if (v5 || (sub_24F92CE08() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x654D6E6F69746361 && a2 == 0xED00007363697274)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_24F92CE08();

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

uint64_t sub_24F4272C0(uint64_t a1)
{
  v2 = sub_24F4274DC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F4272FC(uint64_t a1)
{
  v2 = sub_24F4274DC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t OpenURLAction.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2432D8, &qword_24F9F61D8);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F4274DC();
  sub_24F92D128();
  v8[15] = 0;
  sub_24F92CD08();
  if (!v1)
  {
    type metadata accessor for OpenURLAction(0);
    v8[14] = 1;
    sub_24F928AD8();
    sub_24E674184(&qword_27F216080, MEMORY[0x277D21C90]);
    sub_24F92CD48();
  }

  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_24F4274DC()
{
  result = qword_27F2432E0;
  if (!qword_27F2432E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2432E0);
  }

  return result;
}

uint64_t OpenURLAction.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v17 = a2;
  v19 = sub_24F928AD8();
  v16 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2432E8, &qword_24F9F61E0);
  v18 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v7 = &v15 - v6;
  v8 = type metadata accessor for OpenURLAction(0);
  MEMORY[0x28223BE20](v8);
  v10 = (&v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F4274DC();
  sub_24F92D108();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v15 = v8;
  v12 = v18;
  v11 = v19;
  v22 = 0;
  *v10 = sub_24F92CC28();
  v10[1] = v13;
  v21 = 1;
  sub_24E674184(&qword_27F254CB0, MEMORY[0x277D21C98]);
  sub_24F92CC68();
  (*(v12 + 8))(v7, v20);
  (*(v16 + 32))(v10 + *(v15 + 20), v5, v11);
  sub_24F427840(v10, v17);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_24F4278A4(v10);
}

uint64_t sub_24F427840(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for OpenURLAction(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24F4278A4(uint64_t a1)
{
  v2 = type metadata accessor for OpenURLAction(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24F427944(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_24F928AD8();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_24F427A04(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_24F928AD8();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

unint64_t sub_24F427ABC()
{
  result = qword_27F243300;
  if (!qword_27F243300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F243300);
  }

  return result;
}

unint64_t sub_24F427B14()
{
  result = qword_27F243308;
  if (!qword_27F243308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F243308);
  }

  return result;
}

unint64_t sub_24F427B6C()
{
  result = qword_27F243310;
  if (!qword_27F243310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F243310);
  }

  return result;
}

uint64_t ChallengeDetailInvitedPlayersShelfIntentImplementation.perform(_:objectGraph:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 104) = a1;
  *(v3 + 112) = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22D110, &qword_24F948460);
  *(v3 + 120) = v5;
  *(v3 + 128) = *(v5 - 8);
  *(v3 + 136) = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213760, qword_24F93AF80);
  *(v3 + 144) = v6;
  *(v3 + 152) = *(v6 - 8);
  *(v3 + 160) = swift_task_alloc();
  *(v3 + 168) = swift_task_alloc();
  type metadata accessor for Player(0);
  *(v3 + 176) = swift_task_alloc();
  v7 = *(a2 + 16);
  *(v3 + 16) = *a2;
  *(v3 + 32) = v7;
  *(v3 + 48) = *(a2 + 32);
  updated = type metadata accessor for ChallengesUpdateNotifier(0);
  v9 = swift_task_alloc();
  *(v3 + 184) = v9;
  *v9 = v3;
  v9[1] = sub_24F427D98;

  return MEMORY[0x28217F228](v3 + 80, updated, updated);
}

uint64_t sub_24F427D98()
{
  *(*v1 + 192) = v0;

  if (v0)
  {
    v2 = sub_24F4283A4;
  }

  else
  {
    v2 = sub_24F427EAC;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24F427EAC()
{
  v0[25] = v0[10];
  v0[26] = sub_24F92B7F8();
  v0[27] = sub_24F92B7E8();
  v2 = sub_24F92B778();

  return MEMORY[0x2822009F8](sub_24F427F4C, v2, v1);
}

uint64_t sub_24F427F4C()
{

  type metadata accessor for LocalPlayerProvider(0);
  sub_24F928F28();
  *(v0 + 224) = *(v0 + 88);

  return MEMORY[0x2822009F8](sub_24F427FD4, 0, 0);
}

uint64_t sub_24F427FD4(uint64_t a1)
{
  *(v1 + 232) = sub_24F92B7E8();
  v3 = sub_24F92B778();

  return MEMORY[0x2822009F8](sub_24F428060, v3, v2);
}

uint64_t sub_24F428060()
{
  v1 = v0[28];
  v2 = v0[22];

  swift_getKeyPath();
  v0[12] = v1;
  sub_24F42AA10(&qword_27F247200, type metadata accessor for LocalPlayerProvider, &protocol conformance descriptor for LocalPlayerProvider);
  sub_24F91FD88();

  v3 = OBJC_IVAR____TtC12GameStoreKit19LocalPlayerProvider__current;
  swift_beginAccess();
  sub_24E8C9414(v1 + v3, v2, type metadata accessor for Player);

  return MEMORY[0x2822009F8](sub_24F428190, 0, 0);
}

uint64_t sub_24F428190()
{
  v1 = v0[25];
  v2 = v0[22];
  v3 = v0[19];
  v13 = v0[21];
  v14 = v0[20];
  v5 = v0[17];
  v4 = v0[18];
  v6 = v0[16];
  v12 = v0[15];
  v7 = v0[14];
  v15 = v0[13];
  v8 = swift_task_alloc();
  v8[2] = v0 + 2;
  v8[3] = v1;
  v8[4] = v2;
  v8[5] = v7;
  type metadata accessor for GSKShelf(0);
  (*(v6 + 104))(v5, *MEMORY[0x277D85778], v12);
  sub_24F92B928();

  (*(v3 + 16))(v14, v13, v4);
  sub_24E613678();
  sub_24F9280F8();

  (*(v3 + 8))(v13, v4);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213768, &unk_24F93F770);
  (*(*(v9 - 8) + 56))(v15, 0, 1, v9);
  sub_24F42AA58(v2, type metadata accessor for Player);

  v10 = v0[1];

  return v10();
}

uint64_t sub_24F4283A4()
{

  v1 = *(v0 + 8);

  return v1();
}

double sub_24F428430(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v45 = a4;
  v46 = a5;
  v42 = a1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213778, &qword_24F93F900);
  v44 = *(v7 - 8);
  v8 = *(v44 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v36 - v9;
  v36 = &v36 - v9;
  v11 = type metadata accessor for Player(0);
  v43 = *(v11 - 8);
  v12 = *(v43 + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v41 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F21B570, &qword_24F93B020);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v36 - v14;
  v37 = &v36 - v14;
  v47 = 0;
  v48 = 0xE000000000000000;
  sub_24F92C888();
  v16 = *(a2 + 16);
  v17 = *(a2 + 24);

  v47 = v16;
  v48 = v17;
  MEMORY[0x253050C20](0xD000000000000015, 0x800000024FA752A0);
  v18 = v47;
  v19 = v48;
  v40 = v47;
  v20 = swift_allocObject();
  v38 = v19;
  v39 = a3;
  *(v20 + 16) = a3;
  v21 = *(a2 + 16);
  *(v20 + 24) = *a2;
  *(v20 + 40) = v21;
  *(v20 + 56) = *(a2 + 32);
  *(v20 + 64) = v18;
  *(v20 + 72) = v19;

  sub_24F42A024(a2, &v47);

  v22 = v42;
  sub_24F92B898();
  v23 = sub_24F92B858();
  (*(*(v23 - 8) + 56))(v15, 1, 1, v23);
  v24 = v41;
  sub_24E8C9414(v45, v41, type metadata accessor for Player);
  v25 = v44;
  (*(v44 + 16))(v10, v22, v7);
  v26 = (*(v43 + 80) + 72) & ~*(v43 + 80);
  v27 = (v12 + v26 + 7) & 0xFFFFFFFFFFFFFFF8;
  v28 = (*(v25 + 80) + v27 + 8) & ~*(v25 + 80);
  v29 = (v8 + v28 + 7) & 0xFFFFFFFFFFFFFFF8;
  v30 = swift_allocObject();
  *(v30 + 16) = 0;
  *(v30 + 24) = 0;
  v31 = *(a2 + 16);
  *(v30 + 32) = *a2;
  *(v30 + 48) = v31;
  *(v30 + 64) = *(a2 + 32);
  sub_24E61C0A8(v24, v30 + v26);
  *(v30 + v27) = v46;
  (*(v25 + 32))(v30 + v28, v36, v7);
  v32 = v40;
  *(v30 + v29) = v39;
  v33 = (v30 + ((v29 + 15) & 0xFFFFFFFFFFFFFFF8));
  v34 = v38;
  *v33 = v32;
  v33[1] = v34;

  sub_24F42A024(a2, &v47);

  sub_24F1D3DA4(0, 0, v37, &unk_24F9F6460, v30);

  return result;
}

double sub_24F428824(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F21B570, &qword_24F93B020);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v17[-v10 - 8];
  v12 = sub_24F92B858();
  (*(*(v12 - 8) + 56))(v11, 1, 1, v12);
  v13 = swift_allocObject();
  *(v13 + 16) = 0;
  *(v13 + 24) = 0;
  *(v13 + 32) = a2;
  v14 = *(a3 + 16);
  *(v13 + 40) = *a3;
  *(v13 + 56) = v14;
  *(v13 + 72) = *(a3 + 32);
  *(v13 + 80) = a4;
  *(v13 + 88) = a5;

  sub_24F42A024(a3, v17);

  sub_24EA998B8(0, 0, v11, &unk_24F9F6480, v13);

  return result;
}

uint64_t sub_24F428974(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 184) = v17;
  *(v8 + 192) = v18;
  *(v8 + 168) = a7;
  *(v8 + 176) = a8;
  *(v8 + 152) = a5;
  *(v8 + 160) = a6;
  *(v8 + 144) = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F220B78, &unk_24F964D00);
  *(v8 + 200) = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F220B80, &qword_24F9F6470);
  *(v8 + 208) = v10;
  *(v8 + 216) = *(v10 - 8);
  *(v8 + 224) = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F220B88, &unk_24F964D10);
  *(v8 + 232) = v11;
  *(v8 + 240) = *(v11 - 8);
  *(v8 + 248) = swift_task_alloc();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22D140, &unk_24F9599C0);
  *(v8 + 256) = v12;
  *(v8 + 264) = *(v12 - 8);
  *(v8 + 272) = swift_task_alloc();
  *(v8 + 280) = type metadata accessor for ChallengeDetailInvitedPlayersShelfConstructionIntent(0);
  *(v8 + 288) = swift_task_alloc();
  *(v8 + 296) = swift_task_alloc();
  type metadata accessor for GSKShelf(0);
  *(v8 + 304) = swift_task_alloc();
  *(v8 + 312) = swift_task_alloc();
  v13 = swift_task_alloc();
  *(v8 + 96) = *a4;
  v14 = *(a4 + 32);
  *(v8 + 320) = v13;
  *(v8 + 328) = v14;
  *(v8 + 128) = v14;

  return MEMORY[0x2822009F8](sub_24F428BF0, 0, 0);
}

uint64_t sub_24F428BF0()
{
  v1 = v0[41];
  v2 = v0[37];
  v3 = v0[35];
  v4 = v0[18];
  sub_24E8C9414(v0[19], v2 + *(v3 + 20), type metadata accessor for Player);
  *v2 = *v4;
  *(v2 + *(v3 + 24)) = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F255030, &qword_24F93B050);
  v0[42] = v5;
  sub_24E614DB0((v0 + 12), (v0 + 14));
  sub_24F42A9A0((v0 + 16), (v0 + 17));
  v6 = swift_task_alloc();
  v0[43] = v6;
  *v6 = v0;
  v6[1] = sub_24F428D10;

  return MEMORY[0x28217F228](v0 + 2, v5, v5);
}

uint64_t sub_24F428D10()
{
  *(*v1 + 352) = v0;

  if (v0)
  {
    v2 = sub_24F429044;
  }

  else
  {
    v2 = sub_24F428E24;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24F428E24()
{
  v1 = v0[5];
  v2 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v1);
  v3 = swift_task_alloc();
  v0[45] = v3;
  v4 = sub_24F42AA10(&qword_27F21D540, type metadata accessor for ChallengeDetailInvitedPlayersShelfConstructionIntent, &unk_24F953300);
  v0[46] = v4;
  *v3 = v0;
  v3[1] = sub_24F428F28;
  v5 = v0[40];
  v6 = v0[37];
  v7 = v0[35];
  v8 = v0[20];

  return MEMORY[0x28217F4B0](v5, v6, v8, v7, v4, v1, v2);
}

uint64_t sub_24F428F28()
{
  v2 = *v1;
  *(*v1 + 376) = v0;

  if (v0)
  {
    v3 = sub_24F4293C4;
  }

  else
  {
    *(v2 + 384) = *(v2 + 104);
    v3 = sub_24F42913C;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_24F429044()
{
  sub_24F42AA58(*(v0 + 296), type metadata accessor for ChallengeDetailInvitedPlayersShelfConstructionIntent);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24F42913C()
{
  v1 = v0[39];
  v2 = v0[40];
  v3 = v0[37];
  v5 = v0[33];
  v4 = v0[34];
  v6 = v0[32];
  v7 = v0[22];
  v8 = v0[18];
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  sub_24F42AA58(v3, type metadata accessor for ChallengeDetailInvitedPlayersShelfConstructionIntent);
  sub_24E8C9414(v2, v1, type metadata accessor for GSKShelf);
  v0[49] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213778, &qword_24F93F900);
  sub_24F92B8C8();
  v9 = *(v5 + 8);
  v0[50] = v9;
  v0[51] = (v5 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v9(v4, v6);
  v0[52] = *(v8 + 16);
  v0[53] = *(v8 + 24);

  return MEMORY[0x2822009F8](sub_24F429274, v7, 0);
}

uint64_t sub_24F429274()
{
  sub_24F5E8450(v0[52], v0[53], v0[23], v0[24]);

  return MEMORY[0x2822009F8](sub_24F4292E8, 0, 0);
}

uint64_t sub_24F4292E8()
{
  v2 = v0[27];
  v1 = v0[28];
  v3 = v0[26];
  sub_24F92B8F8();
  (*(v2 + 8))(v1, v3);
  v4 = swift_task_alloc();
  v0[54] = v4;
  *v4 = v0;
  v4[1] = sub_24F4294C4;
  v5 = v0[29];
  v6 = v0[25];

  return MEMORY[0x2822003E8](v6, 0, 0, v5);
}

uint64_t sub_24F4293C4()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  sub_24F42AA58(v0[37], type metadata accessor for ChallengeDetailInvitedPlayersShelfConstructionIntent);

  v1 = v0[1];

  return v1();
}

uint64_t sub_24F4294C4()
{

  return MEMORY[0x2822009F8](sub_24F4295C0, 0, 0);
}

uint64_t sub_24F4295C0()
{
  v1 = *(v0 + 200);
  v2 = type metadata accessor for ChallengeDetail(0);
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    v3 = *(v0 + 320);
    (*(*(v0 + 240) + 8))(*(v0 + 248), *(v0 + 232));
    sub_24F42AA58(v3, type metadata accessor for GSKShelf);

    v4 = *(v0 + 8);

    return v4();
  }

  else
  {
    v7 = *(v0 + 280);
    v6 = *(v0 + 288);
    v8 = *(v0 + 152);
    v9 = *(v1 + *(v2 + 64));

    sub_24F42AA58(v1, type metadata accessor for ChallengeDetail);
    sub_24E8C9414(v8, v6 + *(v7 + 20), type metadata accessor for Player);
    *v6 = *(v0 + 96);
    *(v6 + *(v7 + 24)) = v9;

    v10 = swift_task_alloc();
    *(v0 + 440) = v10;
    *v10 = v0;
    v10[1] = sub_24F42981C;
    v11 = *(v0 + 336);

    return MEMORY[0x28217F228](v0 + 56, v11, v11);
  }
}

uint64_t sub_24F42981C()
{
  *(*v1 + 448) = v0;

  if (v0)
  {
    v2 = sub_24F429B0C;
  }

  else
  {
    v2 = sub_24F429930;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24F429930()
{
  v1 = v0[10];
  v2 = v0[11];
  __swift_project_boxed_opaque_existential_1(v0 + 7, v1);
  v3 = swift_task_alloc();
  v0[57] = v3;
  *v3 = v0;
  v3[1] = sub_24F4299F8;
  v4 = v0[46];
  v5 = v0[38];
  v7 = v0[35];
  v6 = v0[36];
  v8 = v0[20];

  return MEMORY[0x28217F4B0](v5, v6, v8, v7, v4, v1, v2);
}

uint64_t sub_24F4299F8()
{
  *(*v1 + 464) = v0;

  if (v0)
  {
    v2 = sub_24F429DA4;
  }

  else
  {
    v2 = sub_24F429C44;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24F429B0C()
{
  v1 = v0[40];
  v3 = v0[30];
  v2 = v0[31];
  v4 = v0[29];
  sub_24F42AA58(v0[36], type metadata accessor for ChallengeDetailInvitedPlayersShelfConstructionIntent);
  (*(v3 + 8))(v2, v4);
  sub_24F42AA58(v1, type metadata accessor for GSKShelf);

  v5 = v0[1];

  return v5();
}

uint64_t sub_24F429C44()
{
  v1 = v0[50];
  v3 = v0[38];
  v2 = v0[39];
  v4 = v0[36];
  v5 = v0[34];
  v6 = v0[32];
  __swift_destroy_boxed_opaque_existential_1(v0 + 7);
  sub_24F42AA58(v4, type metadata accessor for ChallengeDetailInvitedPlayersShelfConstructionIntent);
  sub_24E8C9414(v3, v2, type metadata accessor for GSKShelf);
  sub_24F92B8C8();
  v1(v5, v6);
  sub_24F42AA58(v3, type metadata accessor for GSKShelf);
  v7 = swift_task_alloc();
  v0[54] = v7;
  *v7 = v0;
  v7[1] = sub_24F4294C4;
  v8 = v0[29];
  v9 = v0[25];

  return MEMORY[0x2822003E8](v9, 0, 0, v8);
}

uint64_t sub_24F429DA4()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 7);
  v1 = v0[40];
  v3 = v0[30];
  v2 = v0[31];
  v4 = v0[29];
  sub_24F42AA58(v0[36], type metadata accessor for ChallengeDetailInvitedPlayersShelfConstructionIntent);
  (*(v3 + 8))(v2, v4);
  sub_24F42AA58(v1, type metadata accessor for GSKShelf);

  v5 = v0[1];

  return v5();
}

uint64_t sub_24F429EE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_24E614970;

  return ChallengeDetailInvitedPlayersShelfIntentImplementation.perform(_:objectGraph:)(a1, a2, a3);
}

uint64_t sub_24F429FBC()
{

  return swift_deallocObject();
}

uint64_t sub_24F42A080()
{
  v1 = type metadata accessor for Player(0);
  v2 = *(*(v1 - 1) + 80);
  v36 = *(*(v1 - 1) + 64);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213778, &qword_24F93F900);
  v4 = *(v3 - 8);
  v35 = *(v4 + 80);
  swift_unknownObjectRelease();

  v37 = (v2 + 72) & ~v2;
  v5 = v0 + v37;

  v6 = v1[6];
  v7 = sub_24F9289E8();
  v38 = *(v7 - 8);
  v39 = v7;
  v34 = *(v38 + 8);
  v34(v0 + v37 + v6);

  if (*(v0 + v37 + v1[9] + 8) != 1)
  {
  }

  v8 = v5 + v1[13];
  v9 = type metadata accessor for CallProviderConversationHandleSet(0);
  if (!(*(*(v9 - 8) + 48))(v8, 1, v9))
  {
    v30 = v4;
    v32 = v3;
    v10 = type metadata accessor for CallProviderConversationHandle(0);
    v11 = *(*(v10 - 8) + 48);
    if (!v11(v8, 1, v10))
    {

      v12 = *(type metadata accessor for CallProvider(0) + 24);
      if (!(*(v38 + 48))(v8 + v12, 1, v39))
      {
        (v34)(v8 + v12, v39);
      }
    }

    v13 = v8 + *(v9 + 20);
    if (!v11(v13, 1, v10))
    {

      v14 = *(type metadata accessor for CallProvider(0) + 24);
      if (!(*(v38 + 48))(v13 + v14, 1, v39))
      {
        (v34)(v13 + v14, v39);
      }
    }

    v4 = v30;
    v3 = v32;
  }

  if (*(v5 + v1[15] + 8))
  {
  }

  v15 = v5 + v1[16];
  PlayedTogetherInfo = type metadata accessor for Player.LastPlayedTogetherInfo(0);
  if (!(*(*(PlayedTogetherInfo - 8) + 48))(v15, 1, PlayedTogetherInfo))
  {
    v31 = v4;
    v33 = v3;

    v17 = type metadata accessor for Game(0);
    (v34)(v15 + v17[18], v39);
    v18 = v17[19];
    if (!(*(v38 + 48))(v15 + v18, 1, v39))
    {
      (v34)(v15 + v18, v39);
    }

    v19 = v17[21];
    v20 = sub_24F920818();
    v21 = *(v20 - 8);
    if (!(*(v21 + 48))(v15 + v19, 1, v20))
    {
      (*(v21 + 8))(v15 + v19, v20);
    }

    v4 = v31;
    v3 = v33;
  }

  v22 = v5 + v1[17];
  ChallengeInfo = type metadata accessor for Player.LastChallengeInfo(0);
  if (!(*(*(ChallengeInfo - 8) + 48))(v22, 1, ChallengeInfo))
  {

    v24 = type metadata accessor for Game(0);
    (v34)(v22 + v24[18], v39);
    v25 = v24[19];
    if (!(*(v38 + 48))(v22 + v25, 1, v39))
    {
      (v34)(v22 + v25, v39);
    }

    v26 = v24[21];
    v27 = sub_24F920818();
    v28 = *(v27 - 8);
    if (!(*(v28 + 48))(v22 + v26, 1, v27))
    {
      (*(v28 + 8))(v22 + v26, v27);
    }
  }

  (*(v4 + 8))(v0 + ((((v36 + v37 + 7) & 0xFFFFFFFFFFFFFFF8) + v35 + 8) & ~v35), v3);

  return swift_deallocObject();
}

uint64_t sub_24F42A7D4(uint64_t a1)
{
  v3 = *(type metadata accessor for Player(0) - 8);
  v4 = (*(v3 + 80) + 72) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213778, &qword_24F93F900) - 8);
  v7 = (v5 + *(v6 + 80) + 8) & ~*(v6 + 80);
  v8 = *(v1 + v5);
  v9 = *(v1 + ((*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8));
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = swift_task_alloc();
  *(v2 + 16) = v12;
  *v12 = v2;
  v12[1] = sub_24E614970;

  return sub_24F428974(a1, v10, v11, v1 + 32, v1 + v4, v8, v1 + v7, v9);
}

uint64_t sub_24F42A9A0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F247240, qword_24F957DE0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24F42AA10(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_24F42AA58(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_24F42AAB8()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_24F42AB18(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[10];
  v8 = v1[11];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_24E614970;

  return sub_24E8C720C(a1, v4, v5, v6, (v1 + 5), v7, v8);
}

uint64_t UpdateNotificationTopicsAction.actionMetrics.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_24F928AD8();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_24F42AC54(uint64_t a1)
{
  v2 = sub_24F42AE30();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F42AC90(uint64_t a1)
{
  v2 = sub_24F42AE30();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t UpdateNotificationTopicsAction.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F243318, &qword_24F9F6490);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F42AE30();
  sub_24F92D128();
  sub_24F928AD8();
  sub_24E674184(&qword_27F216080, MEMORY[0x277D21C90]);
  sub_24F92CD48();
  return (*(v3 + 8))(v5, v2);
}

unint64_t sub_24F42AE30()
{
  result = qword_27F243320;
  if (!qword_27F243320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F243320);
  }

  return result;
}

uint64_t UpdateNotificationTopicsAction.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v16 = a2;
  v3 = sub_24F928AD8();
  v17 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v18 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F243328, &qword_24F9F6498);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v15 - v7;
  updated = type metadata accessor for UpdateNotificationTopicsAction(0);
  MEMORY[0x28223BE20](updated - 8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F42AE30();
  v12 = v19;
  sub_24F92D108();
  if (!v12)
  {
    v13 = v17;
    sub_24E674184(&qword_27F254CB0, MEMORY[0x277D21C98]);
    sub_24F92CC68();
    (*(v6 + 8))(v8, v5);
    (*(v13 + 32))(v11, v18, v3);
    sub_24F42B13C(v11, v16);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t type metadata accessor for UpdateNotificationTopicsAction(uint64_t a1)
{
  result = qword_27F243330;
  if (!qword_27F243330)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24F42B13C(uint64_t a1, uint64_t a2)
{
  updated = type metadata accessor for UpdateNotificationTopicsAction(0);
  (*(*(updated - 8) + 32))(a2, a1, updated);
  return a2;
}

uint64_t sub_24F42B1B8(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F243318, &qword_24F9F6490);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F42AE30();
  sub_24F92D128();
  sub_24F928AD8();
  sub_24E674184(&qword_27F216080, MEMORY[0x277D21C90]);
  sub_24F92CD48();
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_24F42B330(uint64_t a1, uint64_t a2)
{
  v4 = sub_24F928AD8();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_24F42B3B0(uint64_t a1, uint64_t a2)
{
  v4 = sub_24F928AD8();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

unint64_t sub_24F42B434()
{
  result = qword_27F243340;
  if (!qword_27F243340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F243340);
  }

  return result;
}

unint64_t sub_24F42B48C()
{
  result = qword_27F243348;
  if (!qword_27F243348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F243348);
  }

  return result;
}

unint64_t sub_24F42B4E4()
{
  result = qword_27F243350;
  if (!qword_27F243350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F243350);
  }

  return result;
}

uint64_t sub_24F42B554@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6D614E7465737361 && a2 == 0xE900000000000065)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_24F92CE08();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_24F42B5E4(uint64_t a1)
{
  v2 = sub_24F42C278();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F42B620(uint64_t a1)
{
  v2 = sub_24F42C278();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24F42B65C()
{
  v1 = *v0;
  v2 = 0x7641646E65697266;
  v3 = 0x6C6F626D7973;
  v4 = 0x747241616964656DLL;
  if (v1 != 3)
  {
    v4 = 0x4164656C646E7562;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x6E6F6349656D6167;
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

uint64_t sub_24F42B714@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_24F4309C0(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_24F42B73C(uint64_t a1)
{
  v2 = sub_24F42C224();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F42B778(uint64_t a1)
{
  v2 = sub_24F42C224();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24F42B7B4(uint64_t a1)
{
  v2 = sub_24F42C3C8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F42B7F0(uint64_t a1)
{
  v2 = sub_24F42C3C8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24F42B830(uint64_t a1)
{
  v2 = sub_24F42C374();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F42B86C(uint64_t a1)
{
  v2 = sub_24F42C374();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24F42B8A8(uint64_t a1)
{
  v2 = sub_24F42C2CC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F42B8E4(uint64_t a1)
{
  v2 = sub_24F42C2CC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24F42B920(uint64_t a1)
{
  v2 = sub_24F42C320();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F42B95C(uint64_t a1)
{
  v2 = sub_24F42C320();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t OverviewTileAccessoryType.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F243358, &qword_24F9F6670);
  v55 = *(v2 - 8);
  v56 = v2;
  MEMORY[0x28223BE20](v2);
  v52 = &v44 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F243360, &qword_24F9F6678);
  v53 = *(v4 - 8);
  v54 = v4;
  MEMORY[0x28223BE20](v4);
  v49 = &v44 - v5;
  v6 = sub_24F9289E8();
  v50 = *(v6 - 8);
  v51 = v6;
  MEMORY[0x28223BE20](v6);
  v48 = &v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F243368, &qword_24F9F6680);
  v46 = *(v8 - 8);
  v47 = v8;
  MEMORY[0x28223BE20](v8);
  v45 = &v44 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F243370, &qword_24F9F6688);
  v58 = *(v10 - 8);
  v59 = v10;
  MEMORY[0x28223BE20](v10);
  v12 = &v44 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F243378, &qword_24F9F6690);
  v57 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v15 = &v44 - v14;
  v16 = type metadata accessor for OverviewTileAccessoryType(0);
  MEMORY[0x28223BE20](v16);
  v18 = (&v44 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F243380, &qword_24F9F6698);
  v61 = *(v63 - 8);
  MEMORY[0x28223BE20](v63);
  v20 = &v44 - v19;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F42C224();
  v62 = v20;
  sub_24F92D128();
  sub_24F43132C(v60, v18, type metadata accessor for OverviewTileAccessoryType);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      LOBYTE(v64) = 2;
      sub_24F42C320();
      v37 = v45;
      v27 = v62;
      v26 = v63;
      sub_24F92CC98();
      v38 = v47;
      sub_24F92CD08();

      v39 = v46;
    }

    else
    {
      if (EnumCaseMultiPayload == 3)
      {
        v23 = v50;
        v22 = v51;
        v24 = v48;
        (*(v50 + 32))(v48, v18, v51);
        LOBYTE(v64) = 3;
        sub_24F42C2CC();
        v25 = v49;
        v27 = v62;
        v26 = v63;
        sub_24F92CC98();
        sub_24F4312E4(&qword_27F214060, MEMORY[0x277D21C48], MEMORY[0x277D21C50]);
        v28 = v54;
        sub_24F92CD48();
        (*(v53 + 8))(v25, v28);
        (*(v23 + 8))(v24, v22);
        return (*(v61 + 8))(v27, v26);
      }

      LOBYTE(v64) = 4;
      sub_24F42C278();
      v37 = v52;
      v27 = v62;
      v26 = v63;
      sub_24F92CC98();
      v38 = v56;
      sub_24F92CD08();

      v39 = v55;
    }

    (*(v39 + 8))(v37, v38);
    return (*(v61 + 8))(v27, v26);
  }

  v29 = v15;
  v30 = v57;
  v31 = v58;
  v32 = v59;
  if (EnumCaseMultiPayload)
  {
    v41 = *v18;
    LOBYTE(v64) = 1;
    sub_24F42C374();
    v43 = v62;
    v42 = v63;
    sub_24F92CC98();
    v64 = v41;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219538, &qword_24F950560);
    sub_24F42D070(&qword_27F2277B0, &qword_27F214060, MEMORY[0x277D21C50], MEMORY[0x277D83948]);
    sub_24F92CD48();
    (*(v31 + 8))(v12, v32);
    (*(v61 + 8))(v43, v42);
  }

  else
  {
    v33 = v13;
    v34 = *v18;
    LOBYTE(v64) = 0;
    sub_24F42C3C8();
    v36 = v62;
    v35 = v63;
    sub_24F92CC98();
    v64 = v34;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F247240, qword_24F957DE0);
    sub_24F42D10C(&qword_27F21BC30, &qword_27F213E28, &protocol conformance descriptor for Player, MEMORY[0x277D83948]);
    sub_24F92CD48();
    (*(v30 + 8))(v29, v33);
    (*(v61 + 8))(v36, v35);
  }
}

unint64_t sub_24F42C224()
{
  result = qword_27F243388;
  if (!qword_27F243388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F243388);
  }

  return result;
}

unint64_t sub_24F42C278()
{
  result = qword_27F243390;
  if (!qword_27F243390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F243390);
  }

  return result;
}

unint64_t sub_24F42C2CC()
{
  result = qword_27F243398;
  if (!qword_27F243398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F243398);
  }

  return result;
}

unint64_t sub_24F42C320()
{
  result = qword_27F2433A0;
  if (!qword_27F2433A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2433A0);
  }

  return result;
}

unint64_t sub_24F42C374()
{
  result = qword_27F2433A8;
  if (!qword_27F2433A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2433A8);
  }

  return result;
}

unint64_t sub_24F42C3C8()
{
  result = qword_27F2433B0;
  if (!qword_27F2433B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2433B0);
  }

  return result;
}

uint64_t OverviewTileAccessoryType.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v94 = a2;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2433B8, &qword_24F9F66A0);
  v85 = *(v82 - 8);
  MEMORY[0x28223BE20](v82);
  v87 = &v70 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2433C0, &qword_24F9F66A8);
  v5 = *(v4 - 8);
  v83 = v4;
  v84 = v5;
  MEMORY[0x28223BE20](v4);
  v86 = &v70 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2433C8, &qword_24F9F66B0);
  v80 = *(v7 - 8);
  v81 = v7;
  MEMORY[0x28223BE20](v7);
  v93 = &v70 - v8;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2433D0, &qword_24F9F66B8);
  v79 = *(v78 - 8);
  MEMORY[0x28223BE20](v78);
  v92 = &v70 - v9;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2433D8, &qword_24F9F66C0);
  v76 = *(v77 - 8);
  MEMORY[0x28223BE20](v77);
  v90 = &v70 - v10;
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2433E0, &unk_24F9F66C8);
  v89 = *(v91 - 8);
  MEMORY[0x28223BE20](v91);
  v12 = &v70 - v11;
  v88 = type metadata accessor for OverviewTileAccessoryType(0);
  MEMORY[0x28223BE20](v88);
  v75 = (&v70 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v14);
  v16 = &v70 - v15;
  MEMORY[0x28223BE20](v17);
  v19 = &v70 - v18;
  MEMORY[0x28223BE20](v20);
  v22 = &v70 - v21;
  MEMORY[0x28223BE20](v23);
  v25 = &v70 - v24;
  MEMORY[0x28223BE20](v26);
  v28 = &v70 - v27;
  v29 = a1[3];
  v95 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v29);
  sub_24F42C224();
  v30 = v96;
  sub_24F92D108();
  if (!v30)
  {
    v71 = v19;
    v72 = v25;
    v73 = v22;
    v74 = v16;
    v32 = v92;
    v31 = v93;
    v96 = v28;
    v33 = v94;
    v35 = v90;
    v34 = v91;
    v36 = sub_24F92CC78();
    v37 = (2 * *(v36 + 16)) | 1;
    v97 = v36;
    v98 = v36 + 32;
    v99 = 0;
    v100 = v37;
    v38 = sub_24E641498();
    if (v38 != 5 && v99 == v100 >> 1)
    {
      if (v38 <= 1u)
      {
        v48 = v33;
        if (v38)
        {
          LOBYTE(v101) = 1;
          sub_24F42C374();
          sub_24F92CBA8();
          v58 = v89;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219538, &qword_24F950560);
          sub_24F42D070(&qword_27F227788, &qword_27F214018, MEMORY[0x277D21C60], MEMORY[0x277D83978]);
          v59 = v78;
          sub_24F92CC68();
          (*(v79 + 8))(v32, v59);
          (*(v58 + 8))(v12, v34);
          swift_unknownObjectRelease();
          v51 = v73;
          *v73 = v101;
        }

        else
        {
          LOBYTE(v101) = 0;
          sub_24F42C3C8();
          sub_24F92CBA8();
          v49 = v89;
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F247240, qword_24F957DE0);
          sub_24F42D10C(&qword_27F2196A8, &qword_27F213E38, &protocol conformance descriptor for Player, MEMORY[0x277D83978]);
          v50 = v77;
          sub_24F92CC68();
          (*(v76 + 8))(v35, v50);
          (*(v49 + 8))(v12, v34);
          swift_unknownObjectRelease();
          v51 = v72;
          *v72 = v101;
        }

        swift_storeEnumTagMultiPayload();
        v68 = v96;
        sub_24F431394(v51, v96, type metadata accessor for OverviewTileAccessoryType);
        v69 = v95;
        goto LABEL_19;
      }

      if (v38 == 2)
      {
        LOBYTE(v101) = 2;
        sub_24F42C320();
        v52 = v31;
        sub_24F92CBA8();
        v53 = v81;
        v54 = sub_24F92CC28();
        v55 = v89;
        v60 = v54;
        v62 = v61;
        (*(v80 + 8))(v52, v53);
        (*(v55 + 8))(v12, v34);
        swift_unknownObjectRelease();
        v63 = v71;
        *v71 = v60;
        v63[1] = v62;
      }

      else
      {
        if (v38 == 3)
        {
          LOBYTE(v101) = 3;
          sub_24F42C2CC();
          v39 = v86;
          sub_24F92CBA8();
          sub_24F9289E8();
          sub_24F4312E4(&qword_27F214018, MEMORY[0x277D21C48], MEMORY[0x277D21C60]);
          v40 = v74;
          v41 = v83;
          sub_24F92CC68();
          v42 = v89;
          (*(v84 + 8))(v39, v41);
          (*(v42 + 8))(v12, v34);
          swift_unknownObjectRelease();
          swift_storeEnumTagMultiPayload();
          v64 = v40;
LABEL_17:
          v68 = v96;
          sub_24F431394(v64, v96, type metadata accessor for OverviewTileAccessoryType);
          v69 = v95;
          v48 = v33;
LABEL_19:
          sub_24F431394(v68, v48, type metadata accessor for OverviewTileAccessoryType);
          v46 = v69;
          return __swift_destroy_boxed_opaque_existential_1(v46);
        }

        LOBYTE(v101) = 4;
        sub_24F42C278();
        v56 = v87;
        sub_24F92CBA8();
        v57 = v82;
        v65 = sub_24F92CC28();
        v67 = v66;
        (*(v85 + 8))(v56, v57);
        (*(v89 + 8))(v12, v34);
        swift_unknownObjectRelease();
        v63 = v75;
        *v75 = v65;
        v63[1] = v67;
      }

      swift_storeEnumTagMultiPayload();
      v64 = v63;
      goto LABEL_17;
    }

    v43 = sub_24F92C918();
    swift_allocError();
    v45 = v44;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212E20, &unk_24F939B40);
    *v45 = v88;
    sub_24F92CBB8();
    sub_24F92C908();
    (*(*(v43 - 8) + 104))(v45, *MEMORY[0x277D84160], v43);
    swift_willThrow();
    (*(v89 + 8))(v12, v34);
    swift_unknownObjectRelease();
  }

  v46 = v95;
  return __swift_destroy_boxed_opaque_existential_1(v46);
}

uint64_t sub_24F42D070(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F219538, &qword_24F950560);
    sub_24F4312E4(a2, MEMORY[0x277D21C48], a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_24F42D10C(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27F247240, qword_24F957DE0);
    sub_24F4312E4(a2, type metadata accessor for Player, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_24F42D1A8(void *a1, int a2)
{
  v18 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F243558, &qword_24F9F7008);
  v16 = *(v3 - 8);
  v17 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v15 - v4;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F243560, &qword_24F9F7010);
  v6 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v8 = &v15 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F243568, &qword_24F9F7018);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v15 - v11;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F4313FC();
  sub_24F92D128();
  v13 = (v10 + 8);
  if (v18)
  {
    v20 = 1;
    sub_24F431450();
    sub_24F92CC98();
    (*(v16 + 8))(v5, v17);
  }

  else
  {
    v19 = 0;
    sub_24F4314A4();
    sub_24F92CC98();
    (*(v6 + 8))(v8, v15);
  }

  return (*v13)(v12, v9);
}

void sub_24F42D494(uint64_t a1)
{
  sub_24F42D58C(319, &qword_27F21F900, &qword_27F2191B0, type metadata accessor for Player);
  if (v1 <= 0x3F)
  {
    sub_24F42D58C(319, &qword_27F2433F8, &qword_27F2191D8, MEMORY[0x277D21C48]);
    if (v2 <= 0x3F)
    {
      sub_24EAC9FF0();
      if (v3 <= 0x3F)
      {
        sub_24EAC9FA8();
        if (v4 <= 0x3F)
        {
          sub_24F42D630();
          if (v5 <= 0x3F)
          {
            swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_24F42D58C(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  if (!*a2)
  {
    sub_24F42D5DC(0, a3, a4);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_24F42D5DC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_24F92B6E8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_24F42D630()
{
  result = qword_27F243400;
  if (!qword_27F243400)
  {
    result = MEMORY[0x277D837D0];
    atomic_store(MEMORY[0x277D837D0], &qword_27F243400);
  }

  return result;
}

unint64_t sub_24F42D6C4()
{
  result = qword_27F243408;
  if (!qword_27F243408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F243408);
  }

  return result;
}

unint64_t sub_24F42D71C()
{
  result = qword_27F243410;
  if (!qword_27F243410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F243410);
  }

  return result;
}

unint64_t sub_24F42D774()
{
  result = qword_27F243418;
  if (!qword_27F243418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F243418);
  }

  return result;
}

unint64_t sub_24F42D7CC()
{
  result = qword_27F243420;
  if (!qword_27F243420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F243420);
  }

  return result;
}

unint64_t sub_24F42D824()
{
  result = qword_27F243428;
  if (!qword_27F243428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F243428);
  }

  return result;
}

unint64_t sub_24F42D87C()
{
  result = qword_27F243430;
  if (!qword_27F243430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F243430);
  }

  return result;
}

unint64_t sub_24F42D8D4()
{
  result = qword_27F243438;
  if (!qword_27F243438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F243438);
  }

  return result;
}

unint64_t sub_24F42D92C()
{
  result = qword_27F243440;
  if (!qword_27F243440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F243440);
  }

  return result;
}

unint64_t sub_24F42D984()
{
  result = qword_27F243448;
  if (!qword_27F243448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F243448);
  }

  return result;
}

unint64_t sub_24F42D9DC()
{
  result = qword_27F243450;
  if (!qword_27F243450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F243450);
  }

  return result;
}

unint64_t sub_24F42DA34()
{
  result = qword_27F243458;
  if (!qword_27F243458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F243458);
  }

  return result;
}

unint64_t sub_24F42DA8C()
{
  result = qword_27F243460;
  if (!qword_27F243460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F243460);
  }

  return result;
}

unint64_t sub_24F42DAE4()
{
  result = qword_27F243468;
  if (!qword_27F243468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F243468);
  }

  return result;
}

unint64_t sub_24F42DB3C()
{
  result = qword_27F243470;
  if (!qword_27F243470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F243470);
  }

  return result;
}

unint64_t sub_24F42DB94()
{
  result = qword_27F243478;
  if (!qword_27F243478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F243478);
  }

  return result;
}

unint64_t sub_24F42DBEC()
{
  result = qword_27F243480;
  if (!qword_27F243480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F243480);
  }

  return result;
}

unint64_t sub_24F42DC44()
{
  result = qword_27F243488;
  if (!qword_27F243488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F243488);
  }

  return result;
}

unint64_t sub_24F42DC9C()
{
  result = qword_27F243490;
  if (!qword_27F243490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F243490);
  }

  return result;
}

uint64_t sub_24F42DCF0()
{
  if (*v0)
  {
    return 0x647261646E617473;
  }

  else
  {
    return 0x65676F5479616C70;
  }
}

uint64_t sub_24F42DD34@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x65676F5479616C70 && a2 == 0xEC00000072656874;
  if (v6 || (sub_24F92CE08() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x647261646E617473 && a2 == 0xE800000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_24F92CE08();

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

uint64_t sub_24F42DE14(uint64_t a1)
{
  v2 = sub_24F4313FC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F42DE50(uint64_t a1)
{
  v2 = sub_24F4313FC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24F42DE8C(uint64_t a1)
{
  v2 = sub_24F4314A4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F42DEC8(uint64_t a1)
{
  v2 = sub_24F4314A4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24F42DF04(uint64_t a1)
{
  v2 = sub_24F431450();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F42DF40(uint64_t a1)
{
  v2 = sub_24F431450();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24F42DF7C@<X0>(_BYTE *a1@<X8>, void *a2@<X0>)
{
  result = sub_24F430504(a2);
  if (!v2)
  {
    *a1 = result & 1;
  }

  return result;
}

uint64_t sub_24F42DFC8@<X0>(uint64_t a1@<X8>)
{
  v205 = a1;
  v183 = sub_24F926E08();
  v182 = *(v183 - 8);
  MEMORY[0x28223BE20](v183);
  v181 = &v171 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v223 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2434B0, &qword_24F9F6F68);
  MEMORY[0x28223BE20](v223);
  v185 = &v171 - v2;
  v221 = sub_24F9289E8();
  v184 = *(v221 - 8);
  MEMORY[0x28223BE20](v221);
  v209 = &v171 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v208 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2434B8, &qword_24F9F6F70);
  MEMORY[0x28223BE20](v208);
  v220 = &v171 - v4;
  v200 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2434C0, &unk_24F9F6F78);
  MEMORY[0x28223BE20](v200);
  v222 = &v171 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214410, &unk_24F9576A0);
  MEMORY[0x28223BE20](v6 - 8);
  v180 = &v171 - v7;
  v224 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2434C8, &qword_24F9F6F88);
  v175 = *(v224 - 8);
  MEMORY[0x28223BE20](v224);
  v174 = &v171 - v8;
  v193 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2434D0, &qword_24F9F6F90);
  v176 = *(v193 - 8);
  MEMORY[0x28223BE20](v193);
  v186 = &v171 - v9;
  v203 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2434D8, &qword_24F9F6F98);
  MEMORY[0x28223BE20](v203);
  v202 = &v171 - v10;
  v197 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2434E0, &qword_24F9F6FA0);
  MEMORY[0x28223BE20](v197);
  v199 = &v171 - v11;
  v190 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2434E8, &qword_24F9F6FA8);
  MEMORY[0x28223BE20](v190);
  v191 = &v171 - v12;
  v198 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2434F0, &qword_24F9F6FB0);
  MEMORY[0x28223BE20](v198);
  v192 = &v171 - v13;
  v204 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2434F8, &qword_24F9F6FB8);
  MEMORY[0x28223BE20](v204);
  v201 = &v171 - v14;
  v189 = sub_24F929888();
  v188 = *(v189 - 8);
  MEMORY[0x28223BE20](v189);
  v173 = &v171 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v187 = &v171 - v17;
  MEMORY[0x28223BE20](v18);
  v179 = &v171 - v19;
  v219 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21CCC8, &qword_24F957520);
  MEMORY[0x28223BE20](v219);
  v195 = &v171 - v20;
  v218 = type metadata accessor for PlayerAvatarView.Overlay(0);
  v194 = *(v218 - 8);
  MEMORY[0x28223BE20](v218);
  v207 = &v171 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22DF80, &unk_24F942E50);
  MEMORY[0x28223BE20](v22 - 8);
  v217 = &v171 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v216 = &v171 - v25;
  v215 = type metadata accessor for PlayerAvatar(0);
  MEMORY[0x28223BE20](v215);
  v214 = &v171 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v213 = type metadata accessor for PlayerAvatarView(0);
  v212 = *(v213 - 8);
  MEMORY[0x28223BE20](v213);
  v211 = &v171 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v210 = &v171 - v29;
  v196 = type metadata accessor for OverlappingPlayerAvatarsView(0);
  MEMORY[0x28223BE20](v196);
  v31 = &v171 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2344F8, &qword_24F9B2ED0);
  v177 = *(v32 - 8);
  MEMORY[0x28223BE20](v32);
  v34 = &v171 - v33;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F234508, &qword_24F9B2ED8);
  v178 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v37 = &v171 - v36;
  v38 = type metadata accessor for Player(0);
  v39 = *(v38 - 8);
  MEMORY[0x28223BE20](v38 - 8);
  v41 = &v171 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v42);
  v44 = &v171 - v43;
  v45 = type metadata accessor for OverviewTileAccessoryType(0);
  MEMORY[0x28223BE20](v45);
  v47 = &v171 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24F43132C(v206, v47, type metadata accessor for OverviewTileAccessoryType);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      sub_24F926E48();
      v96 = v202;
      v97 = v180;
      sub_24F924CF8();
      v98 = sub_24F924D08();
      (*(*(v98 - 8) + 56))(v97, 0, 1, v98);
      v99 = sub_24F926E58();

      sub_24E601704(v97, &qword_27F214410, &unk_24F9576A0);
      v100 = sub_24F925988();
      KeyPath = swift_getKeyPath();
      sub_24F927638();
      sub_24F9238C8();
      *&v228 = v99;
      *(&v228 + 1) = KeyPath;
      *&v229 = v100;
      v102 = v231;
      v103 = v220;
      *(v220 + 32) = v230;
      *(v103 + 48) = v102;
      *(v103 + 64) = v232;
      v104 = v229;
      *v103 = v228;
      *(v103 + 16) = v104;
      swift_storeEnumTagMultiPayload();
      sub_24E60169C(&v228, &v225, &qword_27F2128C8, &unk_24F939720);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2128C8, &unk_24F939720);
      sub_24F431258(&qword_27F2278E0, &qword_27F2128C8, &unk_24F939720, sub_24E60156C);
      sub_24F4311CC();
      v105 = v222;
      sub_24F924E28();
      sub_24E60169C(v105, v199, &qword_27F2434C0, &unk_24F9F6F78);
      swift_storeEnumTagMultiPayload();
      sub_24F430ED8();
      sub_24F431114();
      v106 = v201;
      sub_24F924E28();
      sub_24E601704(v105, &qword_27F2434C0, &unk_24F9F6F78);
      sub_24E60169C(v106, v96, &qword_27F2434F8, &qword_24F9F6FB8);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F235A20, &qword_24F9B9160);
      sub_24F430E4C();
      sub_24F431258(&qword_27F235A18, &qword_27F235A20, &qword_24F9B9160, sub_24E6E97A8);
      sub_24F924E28();
      sub_24E601704(&v228, &qword_27F2128C8, &unk_24F939720);
      return sub_24E601704(v106, &qword_27F2434F8, &qword_24F9F6FB8);
    }

    else
    {
      v49 = v202;
      if (EnumCaseMultiPayload == 3)
      {
        v50 = v184;
        v51 = v209;
        v52 = v221;
        (*(v184 + 32))(v209, v47, v221);
        sub_24F927638();
        sub_24F9238C8();
        v53 = v185;
        (*(v50 + 16))(v185, v51, v52);
        v54 = (v53 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218AC8, &unk_24F949F20) + 36));
        v55 = v229;
        *v54 = v228;
        v54[1] = v55;
        v54[2] = v230;
        sub_24F926C88();
        v56 = sub_24F926D08();

        v57 = v53 + *(v223 + 9);
        *v57 = v56;
        *(v57 + 8) = xmmword_24F9F6660;
        *(v57 + 24) = 0x4024000000000000;
        sub_24E60169C(v53, v220, &qword_27F2434B0, &qword_24F9F6F68);
        swift_storeEnumTagMultiPayload();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2128C8, &unk_24F939720);
        sub_24F431258(&qword_27F2278E0, &qword_27F2128C8, &unk_24F939720, sub_24E60156C);
        sub_24F4311CC();
        v58 = v222;
        sub_24F924E28();
        sub_24E60169C(v58, v199, &qword_27F2434C0, &unk_24F9F6F78);
        swift_storeEnumTagMultiPayload();
        sub_24F430ED8();
        sub_24F431114();
        v59 = v201;
        sub_24F924E28();
        sub_24E601704(v58, &qword_27F2434C0, &unk_24F9F6F78);
        sub_24E60169C(v59, v49, &qword_27F2434F8, &qword_24F9F6FB8);
        swift_storeEnumTagMultiPayload();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F235A20, &qword_24F9B9160);
        sub_24F430E4C();
        sub_24F431258(&qword_27F235A18, &qword_27F235A20, &qword_24F9B9160, sub_24E6E97A8);
        sub_24F924E28();
        sub_24E601704(v59, &qword_27F2434F8, &qword_24F9F6FB8);
        sub_24E601704(v53, &qword_27F2434B0, &qword_24F9F6F68);
        return (*(v50 + 8))(v209, v221);
      }

      else
      {
        sub_24F926E98();
        v107 = v182;
        v108 = v181;
        v109 = v183;
        (*(v182 + 104))(v181, *MEMORY[0x277CE0FE0], v183);
        v110 = sub_24F926E88();

        (*(v107 + 8))(v108, v109);
        type metadata accessor for OverviewTileAccessory(0);
        sub_24F927638();
        sub_24F9238C8();
        *&v233[6] = v228;
        *&v233[22] = v229;
        *&v233[38] = v230;
        v111 = *&v233[16];
        *(v49 + 18) = *v233;
        LOBYTE(v225) = 1;
        *v49 = v110;
        *(v49 + 8) = 0;
        *(v49 + 16) = 1;
        *(v49 + 34) = v111;
        *(v49 + 50) = *&v233[32];
        *(v49 + 64) = *&v233[46];
        swift_storeEnumTagMultiPayload();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F235A20, &qword_24F9B9160);
        sub_24F430E4C();
        sub_24F431258(&qword_27F235A18, &qword_27F235A20, &qword_24F9B9160, sub_24E6E97A8);
        return sub_24F924E28();
      }
    }
  }

  v61 = v224;
  v223 = v44;
  v182 = v39;
  v181 = v31;
  v180 = v41;
  v183 = v34;
  v172 = v37;
  v184 = v32;
  v185 = v35;
  if (EnumCaseMultiPayload)
  {
    v112 = *v47;
    v113 = type metadata accessor for OverviewTileAccessory(0);
    v114 = 48.0;
    if (*(v206 + *(v113 + 24)))
    {
      v114 = 24.0;
    }

    v115 = -16.0;
    if (*(v206 + *(v113 + 24)))
    {
      v115 = -8.0;
    }

    v116 = 4.0;
    if (*(v206 + *(v113 + 24)))
    {
      v116 = 2.0;
    }

    v117 = 0.174532925;
    if (*(v206 + *(v113 + 24)))
    {
      v117 = -0.174532925;
    }

    *&v228 = v112;
    *(&v228 + 1) = v114;
    *&v229 = v114;
    *(&v229 + 1) = v115;
    *&v230 = v116;
    *(&v230 + 1) = v117;
    v118 = *MEMORY[0x277CDFA10];
    v119 = sub_24F923E98();
    v120 = v195;
    (*(*(v119 - 8) + 104))(v195, v118, v119);
    sub_24F4312E4(&qword_27F22DF90, MEMORY[0x277CDFA28], MEMORY[0x277CDFA48]);
    result = sub_24F92AFF8();
    if (result)
    {
      v121 = v61;
      v122 = sub_24F4310C0();
      v123 = sub_24E602068(&unk_27F22DFA0, &qword_27F21CCC8, &qword_24F957520, MEMORY[0x277D84470]);
      v124 = v174;
      v125 = v219;
      sub_24F9263F8();
      sub_24E601704(v120, &qword_27F21CCC8, &qword_24F957520);

      v228 = 0u;
      v229 = 0u;
      v226 = 0u;
      v225 = 0u;
      v126 = v173;
      sub_24F929828();
      sub_24E601704(&v225, &qword_27F2129B0, &unk_24F945320);
      sub_24E601704(&v228, &qword_27F2129B0, &unk_24F945320);
      *&v228 = &type metadata for StackedGameIconsView;
      *(&v228 + 1) = v125;
      *&v229 = v122;
      *(&v229 + 1) = v123;
      OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
      v128 = v186;
      sub_24F925EE8();
      (*(v188 + 8))(v126, v189);
      (*(v175 + 8))(v124, v121);
      v129 = v176;
      v130 = v193;
      (*(v176 + 16))(v191, v128, v193);
      swift_storeEnumTagMultiPayload();
      v131 = sub_24F4312E4(&qword_27F234500, type metadata accessor for OverlappingPlayerAvatarsView, &unk_24FA0B6F0);
      *&v228 = v196;
      *(&v228 + 1) = v125;
      *&v229 = v131;
      *(&v229 + 1) = v123;
      v132 = swift_getOpaqueTypeConformance2();
      *&v228 = v184;
      *(&v228 + 1) = v132;
      swift_getOpaqueTypeConformance2();
      *&v228 = v121;
      *(&v228 + 1) = OpaqueTypeConformance2;
      swift_getOpaqueTypeConformance2();
      v133 = v192;
      sub_24F924E28();
      sub_24E60169C(v133, v199, &qword_27F2434F0, &qword_24F9F6FB0);
      swift_storeEnumTagMultiPayload();
      sub_24F430ED8();
      sub_24F431114();
      v134 = v201;
      sub_24F924E28();
      sub_24E601704(v133, &qword_27F2434F0, &qword_24F9F6FB0);
      sub_24E60169C(v134, v202, &qword_27F2434F8, &qword_24F9F6FB8);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F235A20, &qword_24F9B9160);
      sub_24F430E4C();
      sub_24F431258(&qword_27F235A18, &qword_27F235A20, &qword_24F9B9160, sub_24E6E97A8);
      sub_24F924E28();
      sub_24E601704(v134, &qword_27F2434F8, &qword_24F9F6FB8);
      return (*(v129 + 8))(v186, v130);
    }

    __break(1u);
    goto LABEL_45;
  }

  v62 = *v47;
  v63 = *(*v47 + 16);
  v186 = *v47;
  v176 = v63;
  if (v63)
  {
    v64 = v62 + ((*(v182 + 80) + 32) & ~*(v182 + 80));
    v209 = *(v182 + 72);
    v208 = (v194 + 56);
    v65 = MEMORY[0x277D84F90];
    v66 = v63;
    v67 = v223;
    do
    {
      v220 = v66;
      v222 = v65;
      v221 = v64;
      sub_24F43132C(v64, v67, type metadata accessor for Player);
      v68 = *(v67 + 16);
      v69 = *(v67 + 24);
      v70 = type metadata accessor for PlayerAvatar.Overlay(0);
      v71 = *(v70 - 8);
      v72 = *(v71 + 56);
      v73 = v216;
      v72(v216, 1, 1, v70);
      *&v230 = 0;
      v228 = 0u;
      v229 = 0u;
      v74 = v215;
      v75 = *(v215 + 20);
      v76 = v214;
      v72(&v214[v75], 1, 1, v70);
      v77 = v76 + *(v74 + 24);
      v227 = 0;
      v226 = 0u;
      v225 = 0u;
      *v77 = 0u;
      *(v77 + 16) = 0u;
      *(v77 + 32) = 0;

      sub_24E61DA68(&v225, v77, qword_27F21B590, &unk_24F93BE30);
      *v76 = v68;
      v76[1] = v69;

      sub_24E61DA68(v73, v76 + v75, &qword_27F22DF80, &unk_24F942E50);
      sub_24E61DA68(&v228, v77, qword_27F21B590, &unk_24F93BE30);
      v78 = v211;
      sub_24F928948();
      sub_24EF3F088(v223, type metadata accessor for Player);
      type metadata accessor for PlayerAvatarView.AvatarType(0);
      swift_storeEnumTagMultiPayload();
      v79 = v217;
      sub_24E60169C(v76 + v75, v217, &qword_27F22DF80, &unk_24F942E50);
      v80 = v213;
      v81 = *(v213 + 20);
      if ((*(v71 + 48))(v79, 1, v70) == 1)
      {
        sub_24E601704(v79, &qword_27F22DF80, &unk_24F942E50);
        v82 = 1;
        v83 = v218;
      }

      else
      {
        v84 = v207;
        sub_24F431394(v79, v207, type metadata accessor for PlayerAvatar.Overlay);
        v83 = v218;
        v85 = v84 + *(v218 + 20);
        *v85 = 0;
        *(v85 + 8) = 1;
        v86 = (v84 + *(v83 + 24));
        *v86 = 0;
        v86[1] = 0;
        sub_24F431394(v84, v78 + v81, type metadata accessor for PlayerAvatarView.Overlay);
        v82 = 0;
      }

      (*v208)(v78 + v81, v82, 1, v83);
      v87 = v78 + *(v80 + 24);
      sub_24E60169C(v77, &v228, qword_27F24EC90, &unk_24F93C1D0);
      sub_24EF3F088(v76, type metadata accessor for PlayerAvatar);
      v88 = v229;
      *v87 = v228;
      *(v87 + 16) = v88;
      *(v87 + 32) = v230;
      *(v78 + *(v80 + 28)) = 7;
      v89 = v210;
      sub_24F431394(v78, v210, type metadata accessor for PlayerAvatarView);
      v65 = v222;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v91 = v224;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v65 = sub_24E619074(0, *(v65 + 2) + 1, 1, v65);
      }

      v92 = v212;
      v94 = *(v65 + 2);
      v93 = *(v65 + 3);
      if (v94 >= v93 >> 1)
      {
        v65 = sub_24E619074((v93 > 1), v94 + 1, 1, v65);
      }

      v95 = v220;
      *(v65 + 2) = v94 + 1;
      sub_24F431394(v89, &v65[((*(v92 + 80) + 32) & ~*(v92 + 80)) + *(v92 + 72) * v94], type metadata accessor for PlayerAvatarView);
      v64 = &v209[v221];
      v66 = v95 - 1;
      v67 = v223;
    }

    while (v66);
  }

  else
  {
    v91 = v224;
    v65 = MEMORY[0x277D84F90];
  }

  if (*(v206 + *(type metadata accessor for OverviewTileAccessory(0) + 24)))
  {
    v135 = 2;
  }

  else
  {
    v135 = 4;
  }

  *&v228 = 0x4010000000000000;
  sub_24E66ED98();
  v136 = v181;
  sub_24F9237C8();
  v137 = v196;
  *(v136 + *(v196 + 20)) = v65;
  v138 = v136 + *(v137 + 24);
  *v138 = 3;
  *(v138 + 8) = 0;
  *(v136 + *(v137 + 28)) = v135;
  v139 = *MEMORY[0x277CDFA10];
  v140 = sub_24F923E98();
  v141 = v195;
  (*(*(v140 - 8) + 104))(v195, v139, v140);
  sub_24F4312E4(&qword_27F22DF90, MEMORY[0x277CDFA28], MEMORY[0x277CDFA48]);
  result = sub_24F92AFF8();
  if ((result & 1) == 0)
  {
LABEL_45:
    __break(1u);
    return result;
  }

  v142 = sub_24F4312E4(&qword_27F234500, type metadata accessor for OverlappingPlayerAvatarsView, &unk_24FA0B6F0);
  v223 = sub_24E602068(&unk_27F22DFA0, &qword_27F21CCC8, &qword_24F957520, MEMORY[0x277D84470]);
  sub_24F9263F8();
  sub_24E601704(v141, &qword_27F21CCC8, &qword_24F957520);
  sub_24EF3F088(v136, type metadata accessor for OverlappingPlayerAvatarsView);
  v228 = 0u;
  v229 = 0u;
  v226 = 0u;
  v225 = 0u;
  sub_24F929828();
  sub_24E601704(&v225, &qword_27F2129B0, &unk_24F945320);
  sub_24E601704(&v228, &qword_27F2129B0, &unk_24F945320);
  v143 = v180;
  v144 = v176;
  if (v176)
  {
    v145 = &v186[(*(v182 + 80) + 32) & ~*(v182 + 80)];
    v146 = *(v182 + 72);
    v147 = MEMORY[0x277D84F90];
    do
    {
      sub_24F43132C(v145, v143, type metadata accessor for Player);
      v149 = *v143;
      v148 = v143[1];

      sub_24EF3F088(v143, type metadata accessor for Player);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v147 = sub_24E615CF4(0, *(v147 + 2) + 1, 1, v147);
      }

      v151 = *(v147 + 2);
      v150 = *(v147 + 3);
      if (v151 >= v150 >> 1)
      {
        v147 = sub_24E615CF4((v150 > 1), v151 + 1, 1, v147);
      }

      *(v147 + 2) = v151 + 1;
      v152 = &v147[16 * v151];
      *(v152 + 4) = v149;
      *(v152 + 5) = v148;
      v145 += v146;
      --v144;
      v91 = v224;
    }

    while (v144);
  }

  else
  {
    v147 = MEMORY[0x277D84F90];
  }

  *&v228 = v147;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F2285F0, &qword_24F93B070);
  sub_24E602068(&qword_27F23E240, &unk_27F2285F0, &qword_24F93B070, MEMORY[0x277D83958]);
  v153 = sub_24F92AF68();
  v155 = v154;

  *(&v229 + 1) = MEMORY[0x277D837D0];
  *&v228 = v153;
  *(&v228 + 1) = v155;
  v156 = v179;
  v157 = v187;
  sub_24F929868();
  v158 = *(v188 + 8);
  v159 = v189;
  v158(v157, v189);
  sub_24E601704(&v228, &qword_27F2129B0, &unk_24F945320);
  *&v228 = v196;
  *(&v228 + 1) = v219;
  *&v229 = v142;
  v160 = v223;
  *(&v229 + 1) = v223;
  v224 = MEMORY[0x277CE0D08];
  v161 = swift_getOpaqueTypeConformance2();
  v162 = v172;
  v163 = v184;
  v164 = v183;
  sub_24F925EE8();
  v158(v156, v159);
  (*(v177 + 8))(v164, v163);
  v165 = v178;
  v166 = v185;
  (*(v178 + 16))(v191, v162, v185);
  swift_storeEnumTagMultiPayload();
  *&v228 = v163;
  *(&v228 + 1) = v161;
  swift_getOpaqueTypeConformance2();
  v167 = sub_24F4310C0();
  *&v228 = &type metadata for StackedGameIconsView;
  *(&v228 + 1) = v219;
  *&v229 = v167;
  *(&v229 + 1) = v160;
  v168 = swift_getOpaqueTypeConformance2();
  *&v228 = v91;
  *(&v228 + 1) = v168;
  swift_getOpaqueTypeConformance2();
  v169 = v192;
  sub_24F924E28();
  sub_24E60169C(v169, v199, &qword_27F2434F0, &qword_24F9F6FB0);
  swift_storeEnumTagMultiPayload();
  sub_24F430ED8();
  sub_24F431114();
  v170 = v201;
  sub_24F924E28();
  sub_24E601704(v169, &qword_27F2434F0, &qword_24F9F6FB0);
  sub_24E60169C(v170, v202, &qword_27F2434F8, &qword_24F9F6FB8);
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F235A20, &qword_24F9B9160);
  sub_24F430E4C();
  sub_24F431258(&qword_27F235A18, &qword_27F235A20, &qword_24F9B9160, sub_24E6E97A8);
  sub_24F924E28();
  sub_24E601704(v170, &qword_27F2434F8, &qword_24F9F6FB8);
  return (*(v165 + 8))(v172, v166);
}

uint64_t sub_24F430504(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F243528, &qword_24F9F6FF0);
  v23 = *(v2 - 8);
  v24 = v2;
  MEMORY[0x28223BE20](v2);
  v4 = &v21 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F243530, &qword_24F9F6FF8);
  v22 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v21 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F243538, &qword_24F9F7000);
  v25 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v21 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F4313FC();
  v11 = v26;
  sub_24F92D108();
  if (v11)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v26 = a1;
  v12 = v24;
  v13 = sub_24F92CC78();
  v14 = (2 * *(v13 + 16)) | 1;
  v27 = v13;
  v28 = v13 + 32;
  v29 = 0;
  v30 = v14;
  v15 = sub_24E643430();
  if (v15 == 2 || v29 != v30 >> 1)
  {
    v17 = sub_24F92C918();
    swift_allocError();
    v19 = v18;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212E20, &unk_24F939B40);
    *v19 = &type metadata for OverviewTileAccessory.Context;
    sub_24F92CBB8();
    sub_24F92C908();
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
    sub_24F431450();
    sub_24F92CBA8();
    v16 = v25;
    (*(v23 + 8))(v4, v12);
  }

  else
  {
    v32 = 0;
    sub_24F4314A4();
    sub_24F92CBA8();
    v16 = v25;
    (*(v22 + 8))(v7, v5);
  }

  (*(v16 + 8))(v10, v8);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v26);
  return v31 & 1;
}

uint64_t sub_24F4309C0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7641646E65697266 && a2 == 0xED00007372617461;
  if (v4 || (sub_24F92CE08() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E6F6349656D6167 && a2 == 0xE900000000000073 || (sub_24F92CE08() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6C6F626D7973 && a2 == 0xE600000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x747241616964656DLL && a2 == 0xEC0000006B726F77 || (sub_24F92CE08() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x4164656C646E7562 && a2 == 0xEC00000074657373)
  {

    return 4;
  }

  else
  {
    v6 = sub_24F92CE08();

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

uint64_t sub_24F430B98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for OverviewTileAccessoryType(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24));
    if (v10 >= 2)
    {
      return v10 - 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_24F430C64(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for OverviewTileAccessoryType(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24)) = a2 + 1;
  }

  return result;
}

void sub_24F430D3C(uint64_t a1)
{
  type metadata accessor for OverviewTileAccessoryType(319);
  if (v1 <= 0x3F)
  {
    sub_24EB5FE28();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_24F430DDC()
{
  result = qword_27F2434A8;
  if (!qword_27F2434A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2434A8);
  }

  return result;
}

unint64_t sub_24F430E4C()
{
  result = qword_27F243500;
  if (!qword_27F243500)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2434F8, &qword_24F9F6FB8);
    sub_24F430ED8();
    sub_24F431114();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F243500);
  }

  return result;
}

unint64_t sub_24F430ED8()
{
  result = qword_27F243508;
  if (!qword_27F243508)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2434F0, &qword_24F9F6FB0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2344F8, &qword_24F9B2ED0);
    type metadata accessor for OverlappingPlayerAvatarsView(255);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21CCC8, &qword_24F957520);
    sub_24F4312E4(&qword_27F234500, type metadata accessor for OverlappingPlayerAvatarsView, &unk_24FA0B6F0);
    sub_24E602068(&unk_27F22DFA0, &qword_27F21CCC8, &qword_24F957520, MEMORY[0x277D84470]);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2434C8, &qword_24F9F6F88);
    sub_24F4310C0();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F243508);
  }

  return result;
}

unint64_t sub_24F4310C0()
{
  result = qword_27F243510;
  if (!qword_27F243510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F243510);
  }

  return result;
}

unint64_t sub_24F431114()
{
  result = qword_27F243518;
  if (!qword_27F243518)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2434C0, &unk_24F9F6F78);
    sub_24F431258(&qword_27F2278E0, &qword_27F2128C8, &unk_24F939720, sub_24E60156C);
    sub_24F4311CC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F243518);
  }

  return result;
}

unint64_t sub_24F4311CC()
{
  result = qword_27F243520;
  if (!qword_27F243520)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2434B0, &qword_24F9F6F68);
    sub_24E6E94A4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F243520);
  }

  return result;
}

uint64_t sub_24F431258(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
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

uint64_t sub_24F4312E4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_24F43132C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24F431394(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_24F4313FC()
{
  result = qword_27F243540;
  if (!qword_27F243540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F243540);
  }

  return result;
}

unint64_t sub_24F431450()
{
  result = qword_27F243548;
  if (!qword_27F243548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F243548);
  }

  return result;
}

unint64_t sub_24F4314A4()
{
  result = qword_27F243550;
  if (!qword_27F243550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F243550);
  }

  return result;
}

unint64_t sub_24F43152C()
{
  result = qword_27F243570;
  if (!qword_27F243570)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F243578, &qword_24F9F7058);
    sub_24F430E4C();
    sub_24F431258(&qword_27F235A18, &qword_27F235A20, &qword_24F9B9160, sub_24E6E97A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F243570);
  }

  return result;
}

unint64_t sub_24F4315E8()
{
  result = qword_27F243580;
  if (!qword_27F243580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F243580);
  }

  return result;
}

unint64_t sub_24F431640()
{
  result = qword_27F243588;
  if (!qword_27F243588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F243588);
  }

  return result;
}

unint64_t sub_24F431698()
{
  result = qword_27F243590;
  if (!qword_27F243590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F243590);
  }

  return result;
}

unint64_t sub_24F4316F0()
{
  result = qword_27F243598;
  if (!qword_27F243598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F243598);
  }

  return result;
}

unint64_t sub_24F431748()
{
  result = qword_27F2435A0;
  if (!qword_27F2435A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2435A0);
  }

  return result;
}

unint64_t sub_24F4317A0()
{
  result = qword_27F2435A8;
  if (!qword_27F2435A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2435A8);
  }

  return result;
}

unint64_t sub_24F4317F8()
{
  result = qword_27F2435B0;
  if (!qword_27F2435B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2435B0);
  }

  return result;
}

uint64_t sub_24F431850(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[4] = a2;
  v3[5] = a3;
  v3[3] = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22D110, &qword_24F948460);
  v3[6] = v4;
  v3[7] = *(v4 - 8);
  v3[8] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213760, qword_24F93AF80);
  v3[9] = v5;
  v3[10] = *(v5 - 8);
  v3[11] = swift_task_alloc();
  v3[12] = swift_task_alloc();
  updated = type metadata accessor for ChallengesUpdateNotifier(0);
  v7 = swift_task_alloc();
  v3[13] = v7;
  *v7 = v3;
  v7[1] = sub_24F4319E4;

  return MEMORY[0x28217F228](v3 + 2, updated, updated);
}

uint64_t sub_24F4319E4()
{
  *(*v1 + 112) = v0;

  if (v0)
  {
    v2 = sub_24E7CC784;
  }

  else
  {
    v2 = sub_24F431AF8;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24F431AF8()
{
  v1 = v0[12];
  v3 = v0[9];
  v2 = v0[10];
  v4 = v0[7];
  v5 = v0[8];
  v6 = v0[5];
  v13 = v0[6];
  v14 = v0[11];
  v7 = v0[4];
  v15 = v0[3];
  v8 = v0[2];
  v9 = swift_task_alloc();
  v9[2] = v7;
  v9[3] = v8;
  v9[4] = v6;
  type metadata accessor for GSKShelf(0);
  (*(v4 + 104))(v5, *MEMORY[0x277D85778], v13);
  sub_24F92B928();

  (*(v2 + 16))(v14, v1, v3);
  sub_24E613678();
  sub_24F9280F8();

  (*(v2 + 8))(v1, v3);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213768, &unk_24F93F770);
  (*(*(v10 - 8) + 56))(v15, 0, 1, v10);

  v11 = v0[1];

  return v11();
}

double sub_24F431CD8(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v65 = a4;
  v55 = a3;
  v61 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213778, &qword_24F93F900);
  v63 = *(v5 - 8);
  v64 = v5;
  v60 = *(v63 + 64);
  MEMORY[0x28223BE20](v5);
  v62 = &v48 - v6;
  v7 = type metadata accessor for ChallengesInvitesShelfIntent(0);
  v8 = v7 - 8;
  v57 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v56 = v9;
  v58 = &v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F21B570, &qword_24F93B020);
  MEMORY[0x28223BE20](v10 - 8);
  v66 = &v48 - v11;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F243600, &unk_24F9F73F0);
  v12 = *(v54 - 8);
  MEMORY[0x28223BE20](v54);
  v14 = &v48 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2435F0, &qword_24F9F7360);
  v52 = *(v15 - 8);
  v53 = v15;
  MEMORY[0x28223BE20](v15);
  v51 = &v48 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2435F8, &qword_24F9F7368);
  v49 = *(v17 - 8);
  v50 = v17;
  MEMORY[0x28223BE20](v17);
  v19 = &v48 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216FE0, &unk_24F959350);
  MEMORY[0x28223BE20](v20 - 8);
  v22 = (&v48 - v21);
  v67 = 0;
  v68 = 0xE000000000000000;
  sub_24F92C888();
  v24 = *a2;
  v23 = a2[1];

  v67 = v24;
  v68 = v23;
  MEMORY[0x253050C20](0xD000000000000018, 0x800000024FA75350);
  v25 = v67;
  v48 = v68;
  v26 = a2[4];
  v27 = *(v8 + 40);
  v59 = a2;
  sub_24E736938(a2 + v27, v22);
  v28 = type metadata accessor for Game(0);
  if ((*(*(v28 - 8) + 48))(v22, 1, v28) == 1)
  {

    sub_24E7D0014(v22);
    v29 = 0;
    v30 = 0;
  }

  else
  {
    v29 = *v22;
    v30 = v22[1];

    sub_24F436418(v22, type metadata accessor for Game);
  }

  type metadata accessor for InvitesShelfUpdater(0);
  v31 = swift_allocObject();
  v32 = v55;
  v31[2] = v26;
  v31[3] = v32;
  v33 = v48;
  v31[4] = v25;
  v31[5] = v33;
  v31[6] = v29;
  v31[7] = v30;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21D770, &unk_24F959420);
  v34 = v54;
  (*(v12 + 104))(v14, *MEMORY[0x277D85778], v54);

  v35 = v51;
  sub_24F92B868();
  (*(v12 + 8))(v14, v34);
  (*(v49 + 32))(v31 + OBJC_IVAR____TtC12GameStoreKitP33_438C401EB715D0215265CDAF694309D319InvitesShelfUpdater_invitesStream, v19, v50);
  (*(v52 + 32))(v31 + OBJC_IVAR____TtC12GameStoreKitP33_438C401EB715D0215265CDAF694309D319InvitesShelfUpdater_invitesContinuation, v35, v53);
  sub_24F433A50();

  v36 = v64;
  v37 = v61;
  sub_24F92B898();
  v38 = sub_24F92B858();
  (*(*(v38 - 8) + 56))(v66, 1, 1, v38);
  v39 = v58;
  sub_24F4363B0(v59, v58, type metadata accessor for ChallengesInvitesShelfIntent);
  v41 = v62;
  v40 = v63;
  (*(v63 + 16))(v62, v37, v36);
  v42 = (*(v57 + 80) + 32) & ~*(v57 + 80);
  v43 = (v56 + v42 + 7) & 0xFFFFFFFFFFFFFFF8;
  v44 = (*(v40 + 80) + v43 + 8) & ~*(v40 + 80);
  v45 = (v60 + v44 + 7) & 0xFFFFFFFFFFFFFFF8;
  v46 = swift_allocObject();
  *(v46 + 16) = 0;
  *(v46 + 24) = 0;
  sub_24F43615C(v39, v46 + v42);
  *(v46 + v43) = v65;
  (*(v40 + 32))(v46 + v44, v41, v36);
  *(v46 + v45) = v31;

  sub_24F1D3DA4(0, 0, v66, &unk_24F9F7408, v46);

  return result;
}

double sub_24F4323BC(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F21B570, &qword_24F93B020);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v9 - v4;
  v6 = sub_24F92B858();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  v7 = swift_allocObject();
  v7[2] = 0;
  v7[3] = 0;
  v7[4] = a2;

  sub_24EA998B8(0, 0, v5, &unk_24F9F7420, v7);

  return result;
}

uint64_t sub_24F4324C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[15] = a6;
  v7[16] = a7;
  v7[13] = a4;
  v7[14] = a5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F243608, &qword_24F9F7410);
  v7[17] = v8;
  v7[18] = *(v8 - 8);
  v7[19] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22D140, &unk_24F9599C0);
  v7[20] = v9;
  v7[21] = *(v9 - 8);
  v7[22] = swift_task_alloc();
  v7[23] = type metadata accessor for ChallengesInvitesShelfConstructionIntent(0);
  v7[24] = swift_task_alloc();
  v7[25] = swift_task_alloc();
  type metadata accessor for GSKShelf(0);
  v7[26] = swift_task_alloc();
  v7[27] = swift_task_alloc();
  v7[28] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24F432680, 0, 0);
}

uint64_t sub_24F432680()
{
  v1 = *(v0 + 200);
  v2 = *(v0 + 184);
  v3 = *(v0 + 104);
  v4 = v3[4];
  v5 = v3[2];
  *(v0 + 232) = v5;
  v6 = v3[3];
  *(v0 + 240) = v6;
  v7 = *v3;
  *(v0 + 248) = *v3;
  v8 = v3[1];
  *(v0 + 256) = v8;
  v15 = *(v3 + 40);
  v9 = type metadata accessor for ChallengesInvitesShelfIntent(0);
  v10 = *(v9 + 32);
  *(v0 + 376) = v10;
  v11 = *(v3 + *(v9 + 36));
  *(v0 + 380) = v11;
  sub_24E736938(v3 + v10, v1 + *(v2 + 32));
  *v1 = v4;
  *(v1 + 8) = v5;
  *(v1 + 16) = v6;
  *(v1 + 24) = v7;
  *(v1 + 32) = v8;
  *(v1 + 40) = v15;
  *(v1 + *(v2 + 36)) = v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F255030, &qword_24F93B050);
  *(v0 + 264) = v12;

  v13 = swift_task_alloc();
  *(v0 + 272) = v13;
  *v13 = v0;
  v13[1] = sub_24F4327FC;

  return MEMORY[0x28217F228](v0 + 16, v12, v12);
}

uint64_t sub_24F4327FC()
{
  *(*v1 + 280) = v0;

  if (v0)
  {
    v2 = sub_24F432B28;
  }

  else
  {
    v2 = sub_24F432910;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24F432910()
{
  v1 = v0[5];
  v2 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v1);
  v3 = swift_task_alloc();
  v0[36] = v3;
  v4 = sub_24F436368(&qword_27F21D558, type metadata accessor for ChallengesInvitesShelfConstructionIntent, &unk_24F9593C4);
  v0[37] = v4;
  *v3 = v0;
  v3[1] = sub_24F432A14;
  v5 = v0[28];
  v6 = v0[25];
  v7 = v0[23];
  v8 = v0[14];

  return MEMORY[0x28217F4B0](v5, v6, v8, v7, v4, v1, v2);
}

uint64_t sub_24F432A14()
{
  *(*v1 + 304) = v0;

  if (v0)
  {
    v2 = sub_24F432D94;
  }

  else
  {
    v2 = sub_24F432C00;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24F432B28(__n128 a1)
{
  sub_24F436418(*(v1 + 200), type metadata accessor for ChallengesInvitesShelfConstructionIntent);

  v2 = *(v1 + 8);

  return v2();
}

uint64_t sub_24F432C00()
{
  v1 = v0[27];
  v2 = v0[28];
  v3 = v0[25];
  v5 = v0[21];
  v4 = v0[22];
  v6 = v0[20];
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  sub_24F436418(v3, type metadata accessor for ChallengesInvitesShelfConstructionIntent);
  sub_24F4363B0(v2, v1, type metadata accessor for GSKShelf);
  v0[39] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213778, &qword_24F93F900);
  sub_24F92B8C8();
  v7 = *(v5 + 8);
  v0[40] = v7;
  v0[41] = (v5 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v7(v4, v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2435F8, &qword_24F9F7368);
  sub_24F92B8F8();
  v8 = swift_task_alloc();
  v0[42] = v8;
  *v8 = v0;
  v8[1] = sub_24F432E74;
  v9 = v0[17];

  return MEMORY[0x2822003E8](v0 + 12, 0, 0, v9);
}

uint64_t sub_24F432D94()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  sub_24F436418(v0[25], type metadata accessor for ChallengesInvitesShelfConstructionIntent);

  v1 = v0[1];

  return v1();
}

uint64_t sub_24F432E74()
{

  return MEMORY[0x2822009F8](sub_24F432F70, 0, 0);
}

uint64_t sub_24F432F70()
{
  v1 = *(v0 + 96);
  if (v1)
  {
    v2 = *(v0 + 380);
    v4 = *(v0 + 248);
    v3 = *(v0 + 256);
    v6 = *(v0 + 232);
    v5 = *(v0 + 240);
    v8 = *(v0 + 184);
    v7 = *(v0 + 192);
    v9 = *(v0 + 104);
    v10 = *(v9 + 40);
    sub_24E736938(v9 + *(v0 + 376), v7 + *(v8 + 32));
    *v7 = v1;
    *(v7 + 8) = v6;
    *(v7 + 16) = v5;
    *(v7 + 24) = v4;
    *(v7 + 32) = v3;
    *(v7 + 40) = v10;
    *(v7 + *(v8 + 36)) = v2;

    v11 = swift_task_alloc();
    *(v0 + 344) = v11;
    *v11 = v0;
    v11[1] = sub_24F433158;
    v12 = *(v0 + 264);

    return MEMORY[0x28217F228](v0 + 56, v12, v12);
  }

  else
  {
    v13 = *(v0 + 224);
    (*(*(v0 + 144) + 8))(*(v0 + 152), *(v0 + 136));
    sub_24F436418(v13, type metadata accessor for GSKShelf);

    v14 = *(v0 + 8);

    return v14();
  }
}

uint64_t sub_24F433158()
{
  *(*v1 + 352) = v0;

  if (v0)
  {
    v2 = sub_24F433448;
  }

  else
  {
    v2 = sub_24F43326C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24F43326C()
{
  v1 = v0[10];
  v2 = v0[11];
  __swift_project_boxed_opaque_existential_1(v0 + 7, v1);
  v3 = swift_task_alloc();
  v0[45] = v3;
  *v3 = v0;
  v3[1] = sub_24F433334;
  v4 = v0[37];
  v5 = v0[26];
  v7 = v0[23];
  v6 = v0[24];
  v8 = v0[14];

  return MEMORY[0x28217F4B0](v5, v6, v8, v7, v4, v1, v2);
}

uint64_t sub_24F433334()
{
  *(*v1 + 368) = v0;

  if (v0)
  {
    v2 = sub_24F4336C0;
  }

  else
  {
    v2 = sub_24F433560;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24F433448(__n128 a1)
{
  v2 = v1[28];
  v4 = v1[18];
  v3 = v1[19];
  v5 = v1[17];
  sub_24F436418(v1[24], type metadata accessor for ChallengesInvitesShelfConstructionIntent);
  (*(v4 + 8))(v3, v5);
  sub_24F436418(v2, type metadata accessor for GSKShelf);

  v6 = v1[1];

  return v6();
}

uint64_t sub_24F433560()
{
  v1 = v0[40];
  v3 = v0[26];
  v2 = v0[27];
  v4 = v0[24];
  v5 = v0[22];
  v6 = v0[20];
  __swift_destroy_boxed_opaque_existential_1(v0 + 7);
  sub_24F436418(v4, type metadata accessor for ChallengesInvitesShelfConstructionIntent);
  sub_24F4363B0(v3, v2, type metadata accessor for GSKShelf);
  sub_24F92B8C8();
  v1(v5, v6);
  sub_24F436418(v3, type metadata accessor for GSKShelf);
  v7 = swift_task_alloc();
  v0[42] = v7;
  *v7 = v0;
  v7[1] = sub_24F432E74;
  v8 = v0[17];

  return MEMORY[0x2822003E8](v0 + 12, 0, 0, v8);
}

uint64_t sub_24F4336C0()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 7);
  v1 = v0[28];
  v3 = v0[18];
  v2 = v0[19];
  v4 = v0[17];
  sub_24F436418(v0[24], type metadata accessor for ChallengesInvitesShelfConstructionIntent);
  (*(v3 + 8))(v2, v4);
  sub_24F436418(v1, type metadata accessor for GSKShelf);

  v5 = v0[1];

  return v5();
}

uint64_t sub_24F4337E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_24E614970;

  return sub_24F431850(a1, a2, a3);
}

uint64_t sub_24F4338B0()
{
  v1 = v0[2];
  v2 = v1[3];
  v0[3] = v2;
  v0[4] = v1[4];
  v0[5] = v1[5];
  return MEMORY[0x2822009F8](sub_24F4338E4, v2, 0);
}

uint64_t sub_24F4338E4()
{
  sub_24F5E9198(*(v0 + 32), *(v0 + 40));

  return MEMORY[0x2822009F8](sub_24F433950, 0, 0);
}

uint64_t sub_24F433950()
{
  v2 = v0[2];
  v1 = v0[3];
  v0[6] = *(v2 + 48);
  v0[7] = *(v2 + 56);
  return MEMORY[0x2822009F8](sub_24F43397C, v1, 0);
}

uint64_t sub_24F43397C()
{
  v1 = v0[3];
  sub_24F5EA3E0(v0[4], v0[5], v0[6], v0[7]);

  return MEMORY[0x2822009F8](sub_24F4339EC, v1, 0);
}

uint64_t sub_24F4339EC()
{
  sub_24F5E9878(v0[4], v0[5]);
  v1 = v0[1];

  return v1();
}

double sub_24F433A50()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F21B570, &qword_24F93B020);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v10 - v2;
  v4 = sub_24F92B858();
  v5 = *(*(v4 - 8) + 56);
  v5(v3, 1, 1, v4);
  v6 = swift_allocObject();
  v6[2] = 0;
  v6[3] = 0;
  v6[4] = v0;

  sub_24EA998B8(0, 0, v3, &unk_24F9F7320, v6);

  v5(v3, 1, 1, v4);
  v7 = swift_allocObject();
  v7[2] = 0;
  v7[3] = 0;
  v7[4] = v0;

  sub_24EA998B8(0, 0, v3, &unk_24F9F7330, v7);

  v5(v3, 1, 1, v4);
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = v0;

  sub_24EA998B8(0, 0, v3, &unk_24F9F7340, v8);

  return result;
}

uint64_t sub_24F433C44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[11] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2435E8, &qword_24F9F7348);
  v4[12] = v5;
  v4[13] = *(v5 - 8);
  v4[14] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21D8E8, &unk_24F9F7350);
  v4[15] = v6;
  v4[16] = *(v6 - 8);
  v4[17] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21D8F0, &unk_24F9599F0);
  v4[18] = v7;
  v4[19] = *(v7 - 8);
  v4[20] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24F433DE0, 0, 0);
}

uint64_t sub_24F433DE0()
{
  v1 = v0[11];
  v2 = v1[3];
  v0[21] = v2;
  v0[22] = v1[4];
  v0[23] = v1[5];
  return MEMORY[0x2822009F8](sub_24F433E14, v2, 0);
}

uint64_t sub_24F433E14()
{
  sub_24F5E8D7C(*(v0 + 176), *(v0 + 184));

  return MEMORY[0x2822009F8](sub_24F433E84, 0, 0);
}

uint64_t sub_24F433E84()
{
  v2 = v0[16];
  v1 = v0[17];
  v3 = v0[15];
  sub_24F92B8F8();
  (*(v2 + 8))(v1, v3);
  v0[24] = OBJC_IVAR____TtC12GameStoreKitP33_438C401EB715D0215265CDAF694309D319InvitesShelfUpdater_invitesContinuation;
  swift_beginAccess();
  v0[25] = 0;
  v4 = swift_task_alloc();
  v0[26] = v4;
  *v4 = v0;
  v4[1] = sub_24F433F88;
  v5 = v0[18];

  return MEMORY[0x2822003E8](v0 + 8, 0, 0, v5);
}

uint64_t sub_24F433F88()
{

  return MEMORY[0x2822009F8](sub_24F434084, 0, 0);
}

uint64_t sub_24F434084()
{
  v2 = v0[8];
  v1 = v0[9];
  if (v1)
  {
    v3 = v0[25];
    v4 = v0[11];
    v5 = v4[2];
    v4 += 2;
    v6 = *(v5 + 16);
    swift_beginAccess();

    v7 = sub_24F435A10(v4, v2, v1);

    v12 = *v4;
    v13 = *(*v4 + 16);
    if (v13 < v7)
    {
      __break(1u);
    }

    else if ((v7 & 0x8000000000000000) == 0)
    {
      if (!__OFADD__(v13, v7 - v13))
      {
        v34 = v7 - v13;
        v14 = v0[11];
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *(v14 + 16) = v12;
        v35 = v3;
        if (!isUniquelyReferenced_nonNull_native || v7 > v12[3] >> 1)
        {
          v16 = v0[11];
          if (v13 <= v7)
          {
            v17 = v7;
          }

          else
          {
            v17 = v13;
          }

          v12 = sub_24E61A494(isUniquelyReferenced_nonNull_native, v17, 1, v12);
          *(v16 + 16) = v12;
        }

        v18 = *(type metadata accessor for ChallengeInvite(0) - 8);
        v19 = v12 + ((*(v18 + 80) + 32) & ~*(v18 + 80));
        v20 = *(v18 + 72);
        v21 = v20 * v7;
        v8 = swift_arrayDestroy();
        if (v13 == v7)
        {
          goto LABEL_25;
        }

        v9 = &v19[v20 * v13];
        v10 = v12[2] - v13;
        if (v21 < v20 * v13 || &v19[v20 * v7] >= &v9[v10 * v20])
        {
          v8 = swift_arrayInitWithTakeFrontToBack();
        }

        else if (v21 != v20 * v13)
        {
          v8 = swift_arrayInitWithTakeBackToFront();
        }

        v25 = v12[2];
        v26 = __OFADD__(v25, v34);
        v27 = v25 + v34;
        if (!v26)
        {
          v12[2] = v27;
LABEL_25:
          v28 = v0[11];
          *(v28 + 16) = v12;
          swift_endAccess();

          v29 = *(v28 + 16);
          if (v6 != *(v29 + 16))
          {
            v30 = v0[13];
            v31 = v0[14];
            v32 = v0[12];
            v0[10] = v29;

            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2435F0, &qword_24F9F7360);
            sub_24F92B8C8();
            (*(v30 + 8))(v31, v32);
          }

          v0[25] = v35;
          v33 = swift_task_alloc();
          v0[26] = v33;
          *v33 = v0;
          v33[1] = sub_24F433F88;
          v11 = v0[18];
          v8 = (v0 + 8);
          v9 = 0;
          v10 = 0;

          return MEMORY[0x2822003E8](v8, v9, v10, v11);
        }

LABEL_33:
        __break(1u);
        return MEMORY[0x2822003E8](v8, v9, v10, v11);
      }

LABEL_32:
      __break(1u);
      goto LABEL_33;
    }

    __break(1u);
    goto LABEL_32;
  }

  (*(v0[19] + 8))(v0[20], v0[18]);

  v23 = v0[1];

  return v23();
}

uint64_t sub_24F434400(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[11] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2435E8, &qword_24F9F7348);
  v4[12] = v5;
  v4[13] = *(v5 - 8);
  v4[14] = swift_task_alloc();
  v4[15] = *(type metadata accessor for ChallengeInvite(0) - 8);
  v4[16] = swift_task_alloc();
  v4[17] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213780, &unk_24F9FCA40);
  v4[18] = v6;
  v4[19] = *(v6 - 8);
  v4[20] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213788, &unk_24F93B040);
  v4[21] = v7;
  v4[22] = *(v7 - 8);
  v4[23] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24F434600, 0, 0);
}

uint64_t sub_24F434600()
{
  v1 = v0[11];
  v2 = v1[3];
  v0[24] = v2;
  v0[25] = v1[4];
  v0[26] = v1[5];
  v0[27] = v1[6];
  v0[28] = v1[7];
  return MEMORY[0x2822009F8](sub_24F434644, v2, 0);
}

uint64_t sub_24F434644()
{
  sub_24F5E9B3C(v0[25], v0[26], v0[27], v0[28], v0[20]);

  return MEMORY[0x2822009F8](sub_24F4346B8, 0, 0);
}

uint64_t sub_24F4346B8()
{
  v2 = v0[19];
  v1 = v0[20];
  v3 = v0[18];
  sub_24F92B8F8();
  (*(v2 + 8))(v1, v3);
  v0[29] = OBJC_IVAR____TtC12GameStoreKitP33_438C401EB715D0215265CDAF694309D319InvitesShelfUpdater_invitesContinuation;
  swift_beginAccess();
  v4 = swift_task_alloc();
  v0[30] = v4;
  *v4 = v0;
  v4[1] = sub_24F4347B8;
  v5 = v0[21];

  return MEMORY[0x2822003E8](v0 + 2, 0, 0, v5);
}

uint64_t sub_24F4347B8()
{

  return MEMORY[0x2822009F8](sub_24F4348B4, 0, 0);
}

uint64_t sub_24F4348B4()
{
  v1 = v0[2];
  v2 = v0[4];
  if (v2)
  {
    v3 = v0[3];
    v5 = v0[5];
    v4 = v0[6];
    v6 = v0[11];
    v7 = *(v6 + 16);
    v8 = *(v5 + 16);
    if (v8 == *(v7 + 16))
    {
      if (v8 && v7 != v5)
      {
        v31 = v0[3];
        v32 = v0[2];
        v33 = v0[6];
        v34 = v0[4];
        v9 = *(v0[15] + 80);
        v10 = (v9 + 32) & ~v9;
        v35 = v7 + v10;
        v36 = v5 + v10;

        v15 = 0;
        while (v15 < *(v5 + 16))
        {
          v16 = *(v0[15] + 72) * v15;
          v11 = sub_24F4363B0(v36 + v16, v0[17], type metadata accessor for ChallengeInvite);
          if (v15 >= *(v7 + 16))
          {
            goto LABEL_27;
          }

          v18 = v0[16];
          v17 = v0[17];
          sub_24F4363B0(v35 + v16, v18, type metadata accessor for ChallengeInvite);
          v19 = *v18;
          v20 = v18[1];
          v22 = v0[16];
          v21 = v0[17];
          if (*v17 == v19 && v17[1] == v20)
          {
            sub_24F436418(v0[16], type metadata accessor for ChallengeInvite);
            v11 = sub_24F436418(v21, type metadata accessor for ChallengeInvite);
          }

          else
          {
            v24 = sub_24F92CE08();
            sub_24F436418(v22, type metadata accessor for ChallengeInvite);
            v11 = sub_24F436418(v21, type metadata accessor for ChallengeInvite);
            if ((v24 & 1) == 0)
            {

              v6 = v0[11];
              goto LABEL_20;
            }
          }

          if (v8 == ++v15)
          {

            v3 = v31;
            v1 = v32;
            v4 = v33;
            v2 = v34;
            goto LABEL_22;
          }
        }

        __break(1u);
LABEL_27:
        __break(1u);
        return MEMORY[0x2822003E8](v11, v12, v13, v14);
      }

LABEL_22:
      sub_24E614F20(v1, v3, v2, v5, v4);
    }

    else
    {
      v31 = v0[3];
      v32 = v0[2];
      v33 = v0[6];
      v34 = v0[4];
LABEL_20:
      v28 = v0[13];
      v27 = v0[14];
      v29 = v0[12];
      *(v6 + 16) = v5;

      sub_24E614F20(v32, v31, v34, v5, v33);
      v0[10] = *(v6 + 16);

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2435F0, &qword_24F9F7360);
      sub_24F92B8C8();
      (*(v28 + 8))(v27, v29);
    }

    v30 = swift_task_alloc();
    v0[30] = v30;
    *v30 = v0;
    v30[1] = sub_24F4347B8;
    v14 = v0[21];
    v11 = (v0 + 2);
    v12 = 0;
    v13 = 0;

    return MEMORY[0x2822003E8](v11, v12, v13, v14);
  }

  (*(v0[22] + 8))(v0[23], v0[21]);

  v25 = v0[1];

  return v25();
}

uint64_t sub_24F434C34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[11] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2435E8, &qword_24F9F7348);
  v4[12] = v5;
  v4[13] = *(v5 - 8);
  v4[14] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21D8E8, &unk_24F9F7350);
  v4[15] = v6;
  v4[16] = *(v6 - 8);
  v4[17] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21D8F0, &unk_24F9599F0);
  v4[18] = v7;
  v4[19] = *(v7 - 8);
  v4[20] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24F434DD0, 0, 0);
}

uint64_t sub_24F434DD0()
{
  v1 = v0[11];
  v2 = v1[3];
  v0[21] = v2;
  v0[22] = v1[4];
  v0[23] = v1[5];
  return MEMORY[0x2822009F8](sub_24F434E04, v2, 0);
}

uint64_t sub_24F434E04()
{
  sub_24F5E945C(*(v0 + 176), *(v0 + 184));

  return MEMORY[0x2822009F8](sub_24F434E74, 0, 0);
}

uint64_t sub_24F434E74()
{
  v2 = v0[16];
  v1 = v0[17];
  v3 = v0[15];
  sub_24F92B8F8();
  (*(v2 + 8))(v1, v3);
  v0[24] = OBJC_IVAR____TtC12GameStoreKitP33_438C401EB715D0215265CDAF694309D319InvitesShelfUpdater_invitesContinuation;
  swift_beginAccess();
  v0[25] = 0;
  v4 = swift_task_alloc();
  v0[26] = v4;
  *v4 = v0;
  v4[1] = sub_24F434F78;
  v5 = v0[18];

  return MEMORY[0x2822003E8](v0 + 8, 0, 0, v5);
}

uint64_t sub_24F434F78()
{

  return MEMORY[0x2822009F8](sub_24F435074, 0, 0);
}

uint64_t sub_24F435074()
{
  v2 = v0[8];
  v1 = v0[9];
  if (v1)
  {
    v3 = v0[25];
    v4 = v0[11];
    v5 = v4[2];
    v4 += 2;
    v6 = *(v5 + 16);
    swift_beginAccess();

    v7 = sub_24F435A10(v4, v2, v1);

    v12 = *v4;
    v13 = *(*v4 + 16);
    if (v13 < v7)
    {
      __break(1u);
    }

    else if ((v7 & 0x8000000000000000) == 0)
    {
      if (!__OFADD__(v13, v7 - v13))
      {
        v34 = v7 - v13;
        v14 = v0[11];
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *(v14 + 16) = v12;
        v35 = v3;
        if (!isUniquelyReferenced_nonNull_native || v7 > v12[3] >> 1)
        {
          v16 = v0[11];
          if (v13 <= v7)
          {
            v17 = v7;
          }

          else
          {
            v17 = v13;
          }

          v12 = sub_24E61A494(isUniquelyReferenced_nonNull_native, v17, 1, v12);
          *(v16 + 16) = v12;
        }

        v18 = *(type metadata accessor for ChallengeInvite(0) - 8);
        v19 = v12 + ((*(v18 + 80) + 32) & ~*(v18 + 80));
        v20 = *(v18 + 72);
        v21 = v20 * v7;
        v8 = swift_arrayDestroy();
        if (v13 == v7)
        {
          goto LABEL_25;
        }

        v9 = &v19[v20 * v13];
        v10 = v12[2] - v13;
        if (v21 < v20 * v13 || &v19[v20 * v7] >= &v9[v10 * v20])
        {
          v8 = swift_arrayInitWithTakeFrontToBack();
        }

        else if (v21 != v20 * v13)
        {
          v8 = swift_arrayInitWithTakeBackToFront();
        }

        v25 = v12[2];
        v26 = __OFADD__(v25, v34);
        v27 = v25 + v34;
        if (!v26)
        {
          v12[2] = v27;
LABEL_25:
          v28 = v0[11];
          *(v28 + 16) = v12;
          swift_endAccess();

          v29 = *(v28 + 16);
          if (v6 != *(v29 + 16))
          {
            v30 = v0[13];
            v31 = v0[14];
            v32 = v0[12];
            v0[10] = v29;

            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2435F0, &qword_24F9F7360);
            sub_24F92B8C8();
            (*(v30 + 8))(v31, v32);
          }

          v0[25] = v35;
          v33 = swift_task_alloc();
          v0[26] = v33;
          *v33 = v0;
          v33[1] = sub_24F434F78;
          v11 = v0[18];
          v8 = (v0 + 8);
          v9 = 0;
          v10 = 0;

          return MEMORY[0x2822003E8](v8, v9, v10, v11);
        }

LABEL_33:
        __break(1u);
        return MEMORY[0x2822003E8](v8, v9, v10, v11);
      }

LABEL_32:
      __break(1u);
      goto LABEL_33;
    }

    __break(1u);
    goto LABEL_32;
  }

  (*(v0[19] + 8))(v0[20], v0[18]);

  v23 = v0[1];

  return v23();
}

double sub_24F4353F0()
{

  v1 = OBJC_IVAR____TtC12GameStoreKitP33_438C401EB715D0215265CDAF694309D319InvitesShelfUpdater_invitesContinuation;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2435F0, &qword_24F9F7360);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC12GameStoreKitP33_438C401EB715D0215265CDAF694309D319InvitesShelfUpdater_invitesStream;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2435F8, &qword_24F9F7368);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  swift_deallocClassInstance();
  return result;
}

uint64_t type metadata accessor for InvitesShelfUpdater(uint64_t a1)
{
  result = qword_27F2435C8;
  if (!qword_27F2435C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24F435558(uint64_t a1)
{
  sub_24F435688(319, &qword_27F2435D8, MEMORY[0x277D85788]);
  if (v1 <= 0x3F)
  {
    sub_24F435688(319, &qword_27F2435E0, MEMORY[0x277D857B8]);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_24F435688(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21D770, &unk_24F959420);
    v7 = a3(a1, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_24F4356F8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_24E6541E4;

  return sub_24F433C44(a1, v4, v5, v6);
}

uint64_t sub_24F4357AC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_24E6541E4;

  return sub_24F434400(a1, v4, v5, v6);
}

uint64_t sub_24F435860(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_24E6541E4;

  return sub_24F434C34(a1, v4, v5, v6);
}

uint64_t sub_24F435914(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 16);
  if (!v3)
  {
    return 0;
  }

  v7 = 0;
  v8 = *(type metadata accessor for ChallengeInvite(0) - 8);
  v9 = *(v8 + 72);
  v10 = (((*(v8 + 80) + 32) & ~*(v8 + 80)) + a1 + 8);
  while (1)
  {
    v11 = *(v10 - 1) == a2 && *v10 == a3;
    if (v11 || (sub_24F92CE08() & 1) != 0)
    {
      break;
    }

    ++v7;
    v10 = (v10 + v9);
    if (v3 == v7)
    {
      return 0;
    }
  }

  return v7;
}

uint64_t sub_24F435A10(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v7 = type metadata accessor for ChallengeInvite(0);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v34 - v12;
  MEMORY[0x28223BE20](v14);
  v16 = (&v34 - v15);
  v17 = *a1;
  result = sub_24F435914(*a1, a2, a3);
  if (v3)
  {
    return result;
  }

  v42 = a2;
  v36 = 0;
  if (v19)
  {
    return *(v17 + 16);
  }

  v37 = v10;
  v38 = v13;
  v35 = a1;
  v40 = result;
  v20 = result + 1;
  if (__OFADD__(result, 1))
  {
    goto LABEL_34;
  }

  v22 = (v17 + 16);
  v21 = *(v17 + 16);
  if (v20 == v21)
  {
    return v40;
  }

  v39 = a3;
  v41 = v8;
  while (v20 < v21)
  {
    v23 = (*(v8 + 80) + 32) & ~*(v8 + 80);
    v24 = v17;
    v25 = v17 + v23;
    v26 = *(v8 + 72);
    v27 = v26 * v20;
    sub_24F4363B0(v25 + v26 * v20, v16, type metadata accessor for ChallengeInvite);
    if (*v16 == v42 && v16[1] == a3)
    {
      result = sub_24F436418(v16, type metadata accessor for ChallengeInvite);
LABEL_10:
      v8 = v41;
      v17 = v24;
      goto LABEL_11;
    }

    v29 = sub_24F92CE08();
    result = sub_24F436418(v16, type metadata accessor for ChallengeInvite);
    if (v29)
    {
      a3 = v39;
      goto LABEL_10;
    }

    v30 = v40;
    if (v20 == v40)
    {
      a3 = v39;
      v8 = v41;
      v17 = v24;
    }

    else
    {
      if ((v40 & 0x8000000000000000) != 0)
      {
        goto LABEL_30;
      }

      v31 = *v22;
      if (v40 >= *v22)
      {
        goto LABEL_31;
      }

      v32 = v26 * v40;
      result = sub_24F4363B0(v25 + v26 * v40, v38, type metadata accessor for ChallengeInvite);
      if (v20 >= v31)
      {
        goto LABEL_32;
      }

      sub_24F4363B0(v25 + v27, v37, type metadata accessor for ChallengeInvite);
      v17 = v24;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v17 = sub_24ECDE36C(v24);
      }

      a3 = v39;
      v8 = v41;
      v33 = v17 + v23;
      result = sub_24F435D44(v37, v33 + v32);
      if (v20 >= *(v17 + 16))
      {
        goto LABEL_33;
      }

      result = sub_24F435D44(v38, v33 + v27);
      *v35 = v17;
      v30 = v40;
    }

    v40 = v30 + 1;
LABEL_11:
    ++v20;
    v22 = (v17 + 16);
    v21 = *(v17 + 16);
    if (v20 == v21)
    {
      return v40;
    }
  }

  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
  return result;
}