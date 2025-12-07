uint64_t sub_1A476C08C@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X8>)
{
  v54 = a2;
  v3 = sub_1A52492A4();
  v53 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v51 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A477DDFC(0, &qword_1EB128AE8, MEMORY[0x1E697F260], sub_1A477CF04, MEMORY[0x1E697DB40]);
  v7 = v6;
  v8 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v51 - v12;
  v111[0] = *a1;
  swift_getKeyPath();
  swift_getKeyPath();

  sub_1A52479E4();

  if (v110 > 1u)
  {
    if (v110 == 2)
    {
      sub_1A47786F0(v111, sub_1A4779940);
      v19 = sub_1A524C634();
      v20 = PXLocalizedString(v19);

      v21 = sub_1A524C674();
      v23 = v22;

      sub_1A476CD1C(v21, v23, &v66);
    }

    sub_1A47786F0(v111, sub_1A4779940);
    v28 = sub_1A524C634();
    v29 = PXLocalizedString(v28);

    v30 = sub_1A524C674();
    v32 = v31;

    sub_1A476CD1C(v30, v32, &v66);
  }

  if (!v110)
  {
    sub_1A47786F0(v111, sub_1A4779940);
    v14 = sub_1A524C634();
    v15 = PXLocalizedString(v14);

    v16 = sub_1A524C674();
    v18 = v17;

    sub_1A476CD1C(v16, v18, &v66);
  }

  type metadata accessor for PickerViewModel(0);
  sub_1A4779290(qword_1EB1D1510, type metadata accessor for PickerViewModel, &unk_1A535E4FC);
  v52 = sub_1A5248494();
  v25 = v24;
  sub_1A5249294();
  sub_1A524BD44();
  v26 = sub_1A477CF04();
  sub_1A5247D44();

  (*(v53 + 8))(v5, v3);
  (*(v8 + 16))(v10, v13, v7);
  *&v66 = v3;
  *(&v66 + 1) = v26;
  swift_getOpaqueTypeConformance2();
  v27 = sub_1A5248264();
  (*(v8 + 8))(v13, v7);
  *&v55 = v52;
  *(&v55 + 1) = v25;
  *&v56 = v27;
  sub_1A3D1DB4C(&v55);
  v74 = v63;
  v75 = v64;
  v76[0] = v65[0];
  *(v76 + 9) = *(v65 + 9);
  v70 = v59;
  v71 = v60;
  v72 = v61;
  v73 = v62;
  v66 = v55;
  v67 = v56;
  v68 = v57;
  v69 = v58;
  sub_1A477BC18(0);
  sub_1A477C300(0, &qword_1EB141528, sub_1A400F5B4, &type metadata for TransferProgressView, MEMORY[0x1E697E830]);
  sub_1A477D430();
  sub_1A477D614();

  sub_1A5249744();
  v74 = v96;
  v75 = v97;
  v76[0] = v98[0];
  *(v76 + 9) = *(v98 + 9);
  v70 = v92;
  v71 = v93;
  v72 = v94;
  v73 = v95;
  v66 = v88;
  v67 = v89;
  v68 = v90;
  v69 = v91;
  sub_1A477D7C8(&v66);
  v85 = v74;
  v86 = v75;
  v87[0] = v76[0];
  *(v87 + 10) = *(v76 + 10);
  v81 = v70;
  v82 = v71;
  v83 = v72;
  v84 = v73;
  v77 = v66;
  v78 = v67;
  v79 = v68;
  v80 = v69;
  sub_1A477BB78(0);
  sub_1A477BDC8(0);
  sub_1A477D594();
  sub_1A477D750();
  sub_1A5249744();

  v111[9] = v107;
  v111[10] = v108;
  v112[0] = v109[0];
  *(v112 + 10) = *(v109 + 10);
  v111[5] = v103;
  v111[6] = v104;
  v111[7] = v105;
  v111[8] = v106;
  v111[1] = v99;
  v111[2] = v100;
  v111[3] = v101;
  v111[4] = v102;
  v33 = v107;
  v85 = v107;
  v86 = v108;
  v87[0] = v112[0];
  *(v87 + 10) = *(v109 + 10);
  v34 = v103;
  v81 = v103;
  v82 = v104;
  v35 = v105;
  v83 = v105;
  v84 = v106;
  v36 = v99;
  v77 = v99;
  v78 = v100;
  v37 = v101;
  v79 = v101;
  v80 = v102;
  v38 = v108;
  v74 = v107;
  v75 = v108;
  v76[0] = v112[0];
  *(v76 + 10) = *(v109 + 10);
  v39 = v104;
  v70 = v103;
  v71 = v104;
  v40 = v106;
  v72 = v105;
  v73 = v106;
  v41 = v100;
  v66 = v99;
  v67 = v100;
  v42 = v102;
  v68 = v101;
  v69 = v102;
  v43 = v108;
  v44 = v54;
  *(v54 + 128) = v107;
  *(v44 + 144) = v43;
  v45 = v76[1];
  *(v44 + 160) = v76[0];
  *(v44 + 176) = v45;
  v46 = v71;
  *(v44 + 64) = v70;
  *(v44 + 80) = v46;
  v47 = v73;
  *(v44 + 96) = v72;
  *(v44 + 112) = v47;
  v48 = v67;
  *v44 = v66;
  *(v44 + 16) = v48;
  v49 = v69;
  *(v44 + 32) = v68;
  *(v44 + 48) = v49;
  v107 = v33;
  v108 = v38;
  v109[0] = v112[0];
  *(v109 + 10) = *(v112 + 10);
  v103 = v34;
  v104 = v39;
  v105 = v35;
  v106 = v40;
  v99 = v36;
  v100 = v41;
  LOBYTE(v88) = 1;
  *(v44 + 192) = 0;
  *(v44 + 200) = 1;
  v101 = v37;
  v102 = v42;
  sub_1A4778688(&v77, &v55, sub_1A477BB30);
  return sub_1A47786F0(&v99, sub_1A477BB30);
}

void sub_1A476CD1C(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a5@<X8>)
{
  v12[3] = a5;
  v13 = sub_1A52492A4();
  v12[12] = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v12[10] = v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A477DDFC(0, &qword_1EB128AE8, MEMORY[0x1E697F260], sub_1A477CF04, MEMORY[0x1E697DB40]);
  v12[13] = v8;
  v12[11] = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v12[8] = v12 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12[9] = v12 - v11;
  v12[7] = sub_1A5249314();
  v14 = 0;
  v15 = a1;
  v16 = a2;
  sub_1A3D5F9DC();
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A476D350@<X0>(_OWORD *a1@<X0>, void *a2@<X8>)
{
  v138 = a2;
  sub_1A477C038(0);
  v136 = *(v3 - 8);
  v137 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v126 = (&v108 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = sub_1A5249544();
  v120 = *(v5 - 8);
  v121 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v119 = &v108 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A477C598(0, &qword_1EB127480, MEMORY[0x1E6981148], MEMORY[0x1E6981138], MEMORY[0x1E697D670]);
  v117 = *(v7 - 8);
  v118 = v7;
  v8 = MEMORY[0x1EEE9AC00](v7);
  v116 = &v108 - v9;
  sub_1A419A5C4(0, v8);
  v124 = *(v10 - 8);
  v125 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v123 = &v108 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v122 = &v108 - v13;
  sub_1A477671C(0);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v131 = &v108 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v132 = sub_1A5246F74();
  v128 = *(v132 - 8);
  MEMORY[0x1EEE9AC00](v132);
  v113 = v16;
  v114 = &v108 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v127 = &v108 - v18;
  v19 = MEMORY[0x1E69E6720];
  sub_1A477E5D8(0, &qword_1EB141570, sub_1A477C038, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v135 = &v108 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v134 = &v108 - v23;
  sub_1A477BFBC(0);
  v25 = *(v24 - 8);
  v129 = v24;
  v130 = v25;
  MEMORY[0x1EEE9AC00](v24);
  v27 = &v108 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A47766E8(0);
  MEMORY[0x1EEE9AC00](v28 - 8);
  v30 = &v108 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = type metadata accessor for VisualPairingAppClipCode(0);
  v32 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31);
  v34 = &v108 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A477E5D8(0, &qword_1EB141558, sub_1A477BFBC, v19);
  MEMORY[0x1EEE9AC00](v35 - 8);
  v133 = &v108 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v37);
  v39 = &v108 - v38;
  v115 = a1;
  v166 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1A52479E4();

  if ((*(v32 + 48))(v30, 1, v31) == 1)
  {
    sub_1A47786F0(v30, sub_1A47766E8);
    v40 = 1;
    v41 = v129;
  }

  else
  {
    sub_1A477E6A0(v30, v34, type metadata accessor for VisualPairingAppClipCode);
    sub_1A4778688(v34, v27, type metadata accessor for VisualPairingAppClipCode);
    sub_1A524BC74();
    sub_1A52481F4();
    sub_1A47786F0(v34, type metadata accessor for VisualPairingAppClipCode);
    sub_1A477BFDC(0);
    v43 = &v27[*(v42 + 36)];
    v44 = v163[1];
    *v43 = v163[0];
    *(v43 + 1) = v44;
    *(v43 + 2) = v163[2];
    v45 = v129;
    v46 = &v27[*(v129 + 36)];
    sub_1A477E5D8(0, &qword_1EB127880, MEMORY[0x1E697DC30], MEMORY[0x1E6980A08]);
    v48 = *(v47 + 28);
    v49 = *MEMORY[0x1E697DC28];
    v50 = sub_1A5247E14();
    (*(*(v50 - 8) + 104))(v46 + v48, v49, v50);
    *v46 = swift_getKeyPath();
    sub_1A477E6A0(v27, v39, sub_1A477BFBC);
    v40 = 0;
    v41 = v45;
  }

  (*(v130 + 56))(v39, v40, 1, v41);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1A52479E4();

  v51 = v131;
  v139 = v39;
  if (v148 == 1)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_1A52479E4();

    v52 = v128;
    v53 = v132;
    if ((*(v128 + 48))(v51, 1, v132) != 1)
    {
      v55 = v52;
      v109 = *(v52 + 32);
      v56 = v127;
      v109(v127, v51, v53);
      v57 = sub_1A524C634();
      v58 = PXLocalizedString(v57);

      v59 = sub_1A524C674();
      v61 = v60;

      v148 = v59;
      v149 = v61;
      sub_1A3D5F9DC();
      v62 = sub_1A524A464();
      v129 = v63;
      v130 = v62;
      LOBYTE(v59) = v64;
      v110 = v65;
      KeyPath = swift_getKeyPath();
      LODWORD(v131) = sub_1A524A054();
      sub_1A5247BC4();
      v67 = v66;
      v69 = v68;
      v71 = v70;
      v73 = v72;
      v111 = v59 & 1;
      LOBYTE(v148) = v59 & 1;
      LOBYTE(v143) = 0;
      v75 = v114;
      v74 = v115;
      v165 = v115[1];
      v164 = *(v115 + 4);
      v76 = v56;
      v77 = v132;
      (*(v55 + 16))(v114, v76, v132);
      v78 = (*(v55 + 80) + 72) & ~*(v55 + 80);
      v79 = swift_allocObject();
      v80 = v74[1];
      *(v79 + 16) = *v74;
      *(v79 + 32) = v80;
      *(v79 + 48) = v74[2];
      *(v79 + 64) = *(v74 + 6);
      v109((v79 + v78), v75, v77);
      sub_1A4778688(&v166, &v148, sub_1A4779940);
      sub_1A3F30668(&v165, &v148);
      sub_1A4778688(&v164, &v148, sub_1A477CB54);

      v81 = v116;
      sub_1A524B704();
      v82 = v119;
      sub_1A5249534();
      sub_1A4775394(&qword_1EB127490, &qword_1EB127480, MEMORY[0x1E697D670], MEMORY[0x1E697D680]);
      sub_1A4775218(&unk_1EB122DF0, MEMORY[0x1E697C540], MEMORY[0x1E697C538]);
      v83 = v121;
      v84 = v122;
      v85 = v118;
      sub_1A524A934();
      (*(v120 + 8))(v82, v83);
      (*(v117 + 8))(v81, v85);
      v86 = v123;
      v87 = v124;
      v88 = *(v124 + 16);
      v89 = v125;
      v88(v123, v84, v125);
      *&v143 = v130;
      *(&v143 + 1) = v129;
      LOBYTE(v144) = v111;
      *(&v144 + 1) = *v142;
      DWORD1(v144) = *&v142[3];
      v90 = v110;
      *(&v144 + 1) = v110;
      *&v145 = KeyPath;
      BYTE8(v145) = 1;
      HIDWORD(v145) = *&v141[3];
      *(&v145 + 9) = *v141;
      LOBYTE(v146) = v131;
      DWORD1(v146) = *&v140[3];
      *(&v146 + 1) = *v140;
      *(&v146 + 1) = v67;
      *&v147[0] = v69;
      *(&v147[0] + 1) = v71;
      *&v147[1] = v73;
      BYTE8(v147[1]) = 0;
      v91 = v144;
      v92 = v126;
      *v126 = v143;
      v92[1] = v91;
      v93 = v145;
      v94 = v146;
      v95 = v147[0];
      *(v92 + 73) = *(v147 + 9);
      v92[3] = v94;
      v92[4] = v95;
      v92[2] = v93;
      sub_1A477C06C(0);
      v88(v92 + *(v96 + 48), v86, v89);
      sub_1A4778688(&v143, &v148, sub_1A477C0A0);
      v97 = *(v87 + 8);
      v97(v84, v89);
      (*(v128 + 8))(v127, v132);
      v98 = v86;
      v39 = v139;
      v97(v98, v89);
      v148 = v130;
      v149 = v129;
      v150 = v111;
      *v151 = *v142;
      *&v151[3] = *&v142[3];
      v152 = v90;
      v153 = KeyPath;
      v154 = 1;
      *v155 = *v141;
      *&v155[3] = *&v141[3];
      v156 = v131;
      *&v157[3] = *&v140[3];
      *v157 = *v140;
      v158 = v67;
      v159 = v69;
      v160 = v71;
      v161 = v73;
      v162 = 0;
      sub_1A47786F0(&v148, sub_1A477C0A0);
      v54 = v134;
      sub_1A477E480(v92, v134, sub_1A477C038);
      (*(v136 + 56))(v54, 0, 1, v137);
      goto LABEL_9;
    }

    sub_1A47786F0(v51, sub_1A477671C);
  }

  v54 = v134;
  (*(v136 + 56))(v134, 1, 1, v137);
LABEL_9:
  v99 = MEMORY[0x1E69E6720];
  v100 = v39;
  v101 = v133;
  sub_1A47787B4(v100, v133, &qword_1EB141558, sub_1A477BFBC, MEMORY[0x1E69E6720], sub_1A477E5D8);
  v102 = v135;
  sub_1A477D2DC(v54, v135, &qword_1EB141570, sub_1A477C038);
  v103 = v138;
  *v138 = 0;
  *(v103 + 8) = 1;
  sub_1A477BED8(0);
  v105 = v104;
  sub_1A47787B4(v101, v103 + *(v104 + 48), &qword_1EB141558, sub_1A477BFBC, v99, sub_1A477E5D8);
  sub_1A477D2DC(v102, v103 + *(v105 + 64), &qword_1EB141570, sub_1A477C038);
  v106 = v103 + *(v105 + 80);
  *v106 = 0;
  v106[8] = 1;
  sub_1A477D35C(v54, &qword_1EB141570, sub_1A477C038);
  sub_1A4778828(v139, &qword_1EB141558, sub_1A477BFBC, v99);
  sub_1A477D35C(v102, &qword_1EB141570, sub_1A477C038);
  return sub_1A4778828(v101, &qword_1EB141558, sub_1A477BFBC, v99);
}

uint64_t sub_1A476E308@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1A524C634();
  v3 = PXLocalizedString(v2);

  sub_1A524C674();
  sub_1A3D5F9DC();
  result = sub_1A524A464();
  *a1 = result;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6 & 1;
  *(a1 + 24) = v7;
  return result;
}

void sub_1A476E3AC(__int128 *a1@<X0>, void *a2@<X8>)
{
  v52 = a2;
  v3 = sub_1A52492A4();
  v51 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v47 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A477DDFC(0, &qword_1EB128AE8, MEMORY[0x1E697F260], sub_1A477CF04, MEMORY[0x1E697DB40]);
  v7 = v6;
  v8 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v47 - v12;
  v62 = *a1;
  v14 = *(&v62 + 1);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1A52479E4();

  if (v61 - 2 >= 2)
  {
    v50 = v7;
    v26 = v51;
    v49 = v8;
    if (v61)
    {
      v29 = sub_1A524C634();
      v30 = PXLocalizedString(v29);

      v48 = sub_1A524C674();
      v47 = v31;

      sub_1A5249294();
      sub_1A524BD44();
      v32 = sub_1A477CF04();
      v33 = v13;
      sub_1A5247D44();

      (*(v26 + 8))(v5, v3);
      v34 = v49;
      v35 = v50;
      (*(v49 + 16))(v10, v33, v50);
      *&v55 = v3;
      *(&v55 + 1) = v32;
      swift_getOpaqueTypeConformance2();
      v36 = sub_1A5248264();
      v37 = (*(v34 + 8))(v33, v35);
      *&v53 = v48;
      *(&v53 + 1) = v47;
      *v54 = sub_1A477D2D8;
      *&v54[8] = v14;
      *&v54[16] = v36;
      v54[24] = 1;
      sub_1A477C2C4(0, v37);
      sub_1A477D074(v38);
      _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
    }

    sub_1A477C2C4(0, v15);
    sub_1A477D074(v27);
    v53 = 0u;
    memset(v54, 0, 25);
    v28 = MEMORY[0x1E6981E70];
    sub_1A5249744();
    v53 = v55;
    *v54 = v56;
    *&v54[16] = v57;
    *&v54[24] = v58;
    sub_1A477C300(0, &qword_1EB1415B8, sub_1A477C2C4, v28, MEMORY[0x1E697F960]);
    sub_1A477CFBC();
  }

  else
  {
    v16 = sub_1A524C634();
    v17 = PXLocalizedString(v16);

    v50 = sub_1A524C674();
    v19 = v18;

    v61 = a1[1];
    v60 = *(a1 + 4);
    v20 = swift_allocObject();
    v21 = a1[1];
    *(v20 + 16) = *a1;
    *(v20 + 32) = v21;
    *(v20 + 48) = a1[2];
    *(v20 + 64) = *(a1 + 6);
    sub_1A4778688(&v62, &v55, sub_1A4779940);
    sub_1A3F30668(&v61, &v55);
    sub_1A4778688(&v60, &v55, sub_1A477CB54);

    sub_1A5249294();
    sub_1A524BD44();
    v22 = sub_1A477CF04();
    sub_1A5247D44();

    (*(v51 + 8))(v5, v3);
    (*(v8 + 16))(v10, v13, v7);
    *&v55 = v3;
    *(&v55 + 1) = v22;
    swift_getOpaqueTypeConformance2();
    v23 = sub_1A5248264();
    (*(v8 + 8))(v13, v7);
    *&v53 = v50;
    *(&v53 + 1) = v19;
    *v54 = sub_1A477CF88;
    *&v54[8] = v20;
    *&v54[16] = v23;
    *&v54[24] = 256;
    sub_1A477C300(0, &qword_1EB1415B8, sub_1A477C2C4, MEMORY[0x1E6981E70], MEMORY[0x1E697F960]);
    sub_1A477C2C4(0, v24);
    sub_1A477CFBC();
    sub_1A477D074(v25);
  }

  sub_1A5249744();
  v39 = v55;
  v40 = v56;
  v41 = v57;
  v42 = v58;
  v43 = v59;
  LOBYTE(v55) = 1;
  LOBYTE(v53) = v59;
  v44 = v52;
  *v52 = 0;
  *(v44 + 8) = 1;
  *(v44 + 1) = v39;
  *(v44 + 2) = v40;
  v44[6] = v41;
  *(v44 + 56) = v42;
  *(v44 + 57) = v43;
  v45 = v39;
  v46 = v40;
  sub_1A477D178(v39, *(&v39 + 1), v40, *(&v40 + 1), v41, v42, v43);
  sub_1A477D228(v45, *(&v45 + 1), v46, *(&v46 + 1), v41, v42, v43);
}

uint64_t sub_1A476EBC4@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v49 = a2;
  v3 = MEMORY[0x1E6981148];
  v4 = MEMORY[0x1E6981138];
  sub_1A477C598(0, &qword_1EB127480, MEMORY[0x1E6981148], MEMORY[0x1E6981138], MEMORY[0x1E697D670]);
  v47 = *(v5 - 8);
  v48 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v46 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v45 = &v40 - v8;
  v42 = MEMORY[0x1E697D7D0];
  sub_1A477C598(0, &unk_1EB143960, v3, v4, MEMORY[0x1E697D7D0]);
  v10 = v9;
  v11 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v40 - v12;
  sub_1A477C424(0, &qword_1EB1415F8, sub_1A477C4B4);
  v15 = v14 - 8;
  MEMORY[0x1EEE9AC00](v14);
  v44 = &v40 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v41 = &v40 - v18;
  sub_1A5249434();
  v56 = a1[1];
  v43 = *(a1 + 4);
  v54 = a1[1];
  v55 = v43;
  sub_1A477CDEC(0, &unk_1EB13A670, MEMORY[0x1E69E6158], MEMORY[0x1E6981790]);
  sub_1A524B6C4();
  sub_1A524BDE4();
  sub_1A4775394(&qword_1EB141610, &unk_1EB143960, v42, MEMORY[0x1E697D7E0]);
  v19 = v41;
  sub_1A524AA64();
  (*(v11 + 8))(v13, v10);
  KeyPath = swift_getKeyPath();
  v21 = &v19[*(v15 + 44)];
  v22 = v19;
  *v21 = KeyPath;
  v21[8] = 1;
  v23 = sub_1A524C634();
  v24 = PXLocalizedString(v23);

  v25 = sub_1A524C674();
  v27 = v26;

  v51 = v25;
  v52 = v27;
  v54 = *a1;
  v53 = v56;
  v57 = v43;
  v28 = swift_allocObject();
  v29 = a1[1];
  *(v28 + 16) = *a1;
  *(v28 + 32) = v29;
  *(v28 + 48) = a1[2];
  *(v28 + 64) = *(a1 + 6);
  sub_1A4778688(&v54, v50, sub_1A4779940);
  sub_1A3F30668(&v53, v50);
  sub_1A4778688(&v57, v50, sub_1A477CB54);
  sub_1A3D5F9DC();

  v30 = v45;
  sub_1A524B754();
  v31 = v44;
  sub_1A3D1D834(v22, v44);
  v33 = v46;
  v32 = v47;
  v34 = *(v47 + 16);
  v35 = v48;
  v34(v46, v30, v48);
  v36 = v49;
  sub_1A3D1D834(v31, v49);
  sub_1A477C36C(0);
  v34((v36 + *(v37 + 48)), v33, v35);
  v38 = *(v32 + 8);
  v38(v30, v35);
  sub_1A3D1D8B4(v22);
  v38(v33, v35);
  return sub_1A3D1D8B4(v31);
}

uint64_t sub_1A476F12C(uint64_t a1)
{
  v2 = sub_1A5246FE4();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(a1 + 16);
  v16 = v15;
  v6 = *(a1 + 32);
  v7 = *(a1 + 8);
  v17 = v6;
  v13 = *(a1 + 16);
  v14 = v6;
  sub_1A3F30668(&v16, v12);
  sub_1A4778688(&v17, v12, sub_1A477CB54);
  sub_1A477CDEC(0, &unk_1EB13A670, MEMORY[0x1E69E6158], MEMORY[0x1E6981790]);
  sub_1A524B6A4();
  sub_1A5246FD4();
  v13 = v15;
  v14 = v6;
  v12[0] = 0;
  v12[1] = 0xE000000000000000;
  sub_1A524B6B4();
  sub_1A3C651B8(&v16);
  sub_1A47786F0(&v17, sub_1A477CB54);
  v8 = (v7 + OBJC_IVAR____TtC12PhotosUICoreP33_4205AE50DB34A253AEBD659A3667797215PickerViewModel_pincodeHandler);
  v9 = *(v7 + OBJC_IVAR____TtC12PhotosUICoreP33_4205AE50DB34A253AEBD659A3667797215PickerViewModel_pincodeHandler);
  if (v9)
  {
    v10 = v8[1];
    *v8 = 0;
    v8[1] = 0;
    v9(v5);
    sub_1A3C33378(v9, v10);
  }

  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_1A476F308@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1A524C634();
  v3 = PXLocalizedString(v2);

  sub_1A524C674();
  sub_1A3D5F9DC();
  result = sub_1A524A464();
  *a1 = result;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6 & 1;
  *(a1 + 24) = v7;
  return result;
}

uint64_t sub_1A476F3AC()
{
  sub_1A477B5D0(0);
  sub_1A477E8CC(&qword_1EB141628, sub_1A477B5D0, sub_1A477C71C);
  return sub_1A5248824();
}

char *sub_1A476F574()
{
  type metadata accessor for ParentAppClipCodeView();
  v1 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v2 = [objc_allocWithZone(MEMORY[0x1E69DCAE0]) init];
  [v2 setContentMode_];
  [v2 setClipsToBounds_];
  [v2 setImage_];
  v3 = *&v1[OBJC_IVAR____TtC12PhotosUICoreP33_4205AE50DB34A253AEBD659A3667797221ParentAppClipCodeView_imageView];
  *&v1[OBJC_IVAR____TtC12PhotosUICoreP33_4205AE50DB34A253AEBD659A3667797221ParentAppClipCodeView_imageView] = v2;
  v4 = v2;

  v5 = v1;
  [v5 setBounds_];
  [v5 bounds];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;

  [v4 setFrame_];
  [v5 addSubview_];

  return v5;
}

void sub_1A476F6C8(char *a1)
{
  v2 = *&a1[OBJC_IVAR____TtC12PhotosUICoreP33_4205AE50DB34A253AEBD659A3667797221ParentAppClipCodeView_imageView];
  if (v2)
  {
    v4 = *v1;
    v5 = v2;
    [v5 setImage_];
    [a1 setBounds_];
    v6 = v5;
    [a1 bounds];
    [v6 setFrame_];
  }
}

uint64_t sub_1A476F7AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1A4779290(&qword_1EB1D2520, type metadata accessor for AppClipCodeViewRepresentable, &unk_1A535EDB8);

  return MEMORY[0x1EEDDAA28](a1, a2, a3, v6);
}

uint64_t sub_1A476F840(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1A4779290(&qword_1EB1D2520, type metadata accessor for AppClipCodeViewRepresentable, &unk_1A535EDB8);

  return MEMORY[0x1EEDDA9B8](a1, a2, a3, v6);
}

void sub_1A476F8D4(uint64_t a1)
{
  sub_1A4779290(&qword_1EB1D2520, type metadata accessor for AppClipCodeViewRepresentable, &unk_1A535EDB8);
  sub_1A52496F4();
  __break(1u);
}

void sub_1A476F92C(uint64_t a1)
{
  sub_1A477E4E8(0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A477E664(0);
  MEMORY[0x1EEE9AC00](v6);
  *v5 = sub_1A5249574();
  *(v5 + 1) = 0x4034000000000000;
  v5[16] = 0;
  sub_1A4778D4C(0, &qword_1EB1417B8, &qword_1EB141798, sub_1A477E63C);
  sub_1A476FB3C(a1, &v5[*(v7 + 44)]);
}

void sub_1A476FB3C(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v32 = a1;
  v33 = a2;
  sub_1A411848C();
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v30[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v7);
  v34 = &v30[-v8];
  v9 = sub_1A524C634();
  v10 = PXLocalizedString(v9);

  v11 = sub_1A524C674();
  v13 = v12;

  v36 = v11;
  v37 = v13;
  sub_1A3D5F9DC();
  v14 = sub_1A524A464();
  v16 = v15;
  v18 = v17;
  sub_1A524A1A4();
  v19 = sub_1A524A344();
  v21 = v20;
  v31 = v22;
  v24 = v23;
  sub_1A3E04DF4(v14, v16, v18 & 1);

  swift_getKeyPath();
  swift_getKeyPath();
  sub_1A52479E4();

  LOBYTE(v37) = 0;
  v35 = 0x3FF0000000000000;
  sub_1A3F93828();
  v25 = v34;
  sub_1A5248064();
  LOBYTE(v36) = v31 & 1;
  v26 = *(v4 + 16);
  v27 = v6;
  v26(v6, v25, v3);
  LOBYTE(v25) = v36;
  v28 = v33;
  *v33 = v19;
  v28[1] = v21;
  *(v28 + 16) = v25;
  v28[3] = v24;
  sub_1A477E63C(0);
  v26(v28 + *(v29 + 48), v27, v3);
  sub_1A3E75E68(v19, v21, v25);
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A476FE28()
{
  v1 = sub_1A5249E64();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v19[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1A4778934(0);
  v6 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v19[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = *v0;
  v10 = v0[1];
  v12 = v0[2];
  v11 = v0[3];
  v20 = v9;
  v21 = v10;
  v22 = v12;
  v23 = v11;
  sub_1A47750F8(0);
  sub_1A477E8CC(&qword_1EB141280, sub_1A47750F8, sub_1A4778A8C);

  sub_1A524B704();
  v13 = &v8[*(v6 + 36)];
  sub_1A477E5D8(0, &qword_1EB127880, MEMORY[0x1E697DC30], MEMORY[0x1E6980A08]);
  v15 = *(v14 + 28);
  v16 = *MEMORY[0x1E697DC10];
  v17 = sub_1A5247E14();
  (*(*(v17 - 8) + 104))(v13 + v15, v16, v17);
  *v13 = swift_getKeyPath();
  sub_1A5249E54();
  sub_1A4778C48();
  sub_1A4775218(&qword_1EB127A50, MEMORY[0x1E697CB70], MEMORY[0x1E697CB68]);
  sub_1A524A934();
  (*(v2 + 8))(v4, v1);
  return sub_1A47786F0(v8, sub_1A4778934);
}

double sub_1A47700FC(uint64_t a1)
{
  v2 = v1;
  sub_1A477E5D8(0, &qword_1EB12B270, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v24 - v5;
  v7 = sub_1A5240E64();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EB1D14B0 != -1)
  {
    swift_once();
  }

  v11 = sub_1A5246F24();
  __swift_project_value_buffer(v11, qword_1EB1D14B8);
  (*(v8 + 16))(v10, a1, v7);
  v12 = sub_1A5246F04();
  v13 = sub_1A524D264();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v24 = v2;
    v15 = v14;
    v25 = swift_slowAlloc();
    *v15 = 136315138;
    sub_1A4775218(&qword_1EB12B000, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FE0]);
    v16 = sub_1A524EA44();
    v18 = v17;
    (*(v8 + 8))(v10, v7);
    sub_1A3C2EF94(v16, v18, &v25);
  }

  (*(v8 + 8))(v10, v7);
  v19 = sub_1A524CCB4();
  (*(*(v19 - 8) + 56))(v6, 1, 1, v19);
  sub_1A524CC54();

  v20 = sub_1A524CC44();
  v21 = swift_allocObject();
  v22 = MEMORY[0x1E69E85E0];
  v21[2] = v20;
  v21[3] = v22;
  v21[4] = v2;
  sub_1A3D4D930(0, 0, v6, &unk_1A535E600, v21);

  return result;
}

uint64_t sub_1A4770494(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 24) = a4;
  sub_1A524CC54();
  *(v4 + 32) = sub_1A524CC44();
  v6 = sub_1A524CBC4();

  return MEMORY[0x1EEE6DFA0](sub_1A477052C, v6, v5);
}

void sub_1A477052C()
{
  v12 = v0;
  v1 = *(v0 + 24);

  v2 = OBJC_IVAR____TtC12PhotosUICoreP33_4205AE50DB34A253AEBD659A3667797215PickerViewModel_completeTransferFileCount;
  v3 = *(v1 + OBJC_IVAR____TtC12PhotosUICoreP33_4205AE50DB34A253AEBD659A3667797215PickerViewModel_completeTransferFileCount);
  v4 = __OFADD__(v3, 1);
  v5 = v3 + 1;
  if (v4)
  {
    __break(1u);
  }

  else
  {
    v6 = *(v0 + 24);
    *(v1 + OBJC_IVAR____TtC12PhotosUICoreP33_4205AE50DB34A253AEBD659A3667797215PickerViewModel_completeTransferFileCount) = v5;
    v7 = OBJC_IVAR____TtC12PhotosUICoreP33_4205AE50DB34A253AEBD659A3667797215PickerViewModel_transferFiles;
    v8 = v5 / *(*(v6 + OBJC_IVAR____TtC12PhotosUICoreP33_4205AE50DB34A253AEBD659A3667797215PickerViewModel_transferFiles) + 16);
    swift_getKeyPath();
    swift_getKeyPath();
    *(v0 + 16) = v8;

    sub_1A52479F4();
    if (*(*(v6 + v7) + 16) == *(v1 + v2))
    {
      swift_getKeyPath();
      swift_getKeyPath();
      sub_1A52479E4();

      v9 = *(v0 + 16);
      swift_getKeyPath();
      swift_getKeyPath();
      *(v0 + 16) = 2;

      sub_1A52479F4();
      v11 = v9;
      sub_1A475FCD0(&v11);
    }

    v10 = *(v0 + 8);

    v10();
  }
}

double sub_1A47706D0(uint64_t a1)
{
  v2 = v1;
  sub_1A477E5D8(0, &qword_1EB12B270, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v29 - v5;
  v7 = sub_1A5240E64();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v31 = v9;
  v32 = v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = v29 - v11;
  if (qword_1EB1D14B0 != -1)
  {
    swift_once();
  }

  v13 = sub_1A5246F24();
  __swift_project_value_buffer(v13, qword_1EB1D14B8);
  v30 = *(v8 + 16);
  v30(v12, a1, v7);
  v14 = sub_1A5246F04();
  v15 = sub_1A524D264();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v29[2] = v6;
    v17 = v16;
    v18 = swift_slowAlloc();
    v29[3] = v1;
    v29[1] = v18;
    v33 = v18;
    *v17 = 136315138;
    sub_1A4775218(&qword_1EB12B000, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FE0]);
    v19 = sub_1A524EA44();
    v21 = v20;
    (*(v8 + 8))(v12, v7);
    sub_1A3C2EF94(v19, v21, &v33);
  }

  (*(v8 + 8))(v12, v7);
  v22 = sub_1A524CCB4();
  (*(*(v22 - 8) + 56))(v6, 1, 1, v22);
  v23 = v32;
  v30(v32, a1, v7);
  sub_1A524CC54();

  v24 = sub_1A524CC44();
  v25 = (*(v8 + 80) + 40) & ~*(v8 + 80);
  v26 = swift_allocObject();
  v27 = MEMORY[0x1E69E85E0];
  *(v26 + 2) = v24;
  *(v26 + 3) = v27;
  *(v26 + 4) = v2;
  (*(v8 + 32))(&v26[v25], v23, v7);
  sub_1A3D4D930(0, 0, v6, &unk_1A535E610, v26);

  return result;
}

uint64_t sub_1A4770AF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = sub_1A5240E64();
  v5[4] = v6;
  v5[5] = *(v6 - 8);
  v5[6] = swift_task_alloc();
  sub_1A524CC54();
  v5[7] = sub_1A524CC44();
  v8 = sub_1A524CBC4();

  return MEMORY[0x1EEE6DFA0](sub_1A4770BEC, v8, v7);
}

uint64_t sub_1A4770BEC()
{
  v1 = v0[6];
  v2 = v0[4];
  v3 = v0[5];
  v5 = v0[2];
  v4 = v0[3];

  (*(v3 + 16))(v1, v4, v2);
  v6 = OBJC_IVAR____TtC12PhotosUICoreP33_4205AE50DB34A253AEBD659A3667797215PickerViewModel_rejectedFiles;
  v7 = *(v5 + OBJC_IVAR____TtC12PhotosUICoreP33_4205AE50DB34A253AEBD659A3667797215PickerViewModel_rejectedFiles);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v5 + v6) = v7;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v7 = sub_1A3ECD488(0, v7[2] + 1, 1, v7);
    *(v5 + v6) = v7;
  }

  v10 = v7[2];
  v9 = v7[3];
  if (v10 >= v9 >> 1)
  {
    v7 = sub_1A3ECD488((v9 > 1), v10 + 1, 1, v7);
  }

  v11 = v0[5];
  v12 = v0[6];
  v13 = v0[4];
  v7[2] = v10 + 1;
  (*(v11 + 32))(v7 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * v10, v12, v13);
  *(v5 + v6) = v7;

  v14 = v0[1];

  return v14();
}

void sub_1A4770D34()
{
  v0 = sub_1A523FBB4();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v46 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1A52479E4();

  v4 = *(v50 + 16);
  if (v4)
  {
    v7 = *(v1 + 16);
    v5 = v1 + 16;
    v6 = v7;
    v8 = *(v5 + 64);
    v46 = v50;
    v9 = v50 + ((v8 + 32) & ~v8);
    v49 = *(v5 + 56);
    v10 = (v5 - 8);
    v11 = MEMORY[0x1E69E7CC0];
    v47 = v7;
    v48 = v5;
    v7(v3, v9, v0);
    while (1)
    {
      sub_1A523FB64();
      if (v12)
      {

        v13 = sub_1A523FB64();
        v15 = v14;
        (*v10)(v3, v0);
        if (v15)
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v11 = sub_1A3D3D914(0, *(v11 + 2) + 1, 1, v11);
          }

          v17 = *(v11 + 2);
          v16 = *(v11 + 3);
          if (v17 >= v16 >> 1)
          {
            v11 = sub_1A3D3D914((v16 > 1), v17 + 1, 1, v11);
          }

          *(v11 + 2) = v17 + 1;
          v18 = &v11[16 * v17];
          *(v18 + 4) = v13;
          *(v18 + 5) = v15;
          v6 = v47;
        }
      }

      else
      {
        (*v10)(v3, v0);
      }

      v9 += v49;
      if (!--v4)
      {
        break;
      }

      v6(v3, v9, v0);
    }
  }

  v19 = [objc_opt_self() imagePickerPhotoLibrary];
  v20 = [v19 librarySpecificFetchOptions];

  [v20 setFetchLimit_];
  v21 = objc_opt_self();
  v22 = sub_1A524CA14();

  v23 = [v21 fetchAssetsWithLocalIdentifiers:v22 options:v20];

  v49 = v23;
  v24 = [v23 count];
  if ((v24 & 0x8000000000000000) == 0)
  {
    v25 = v24;
    v47 = v20;
    if (!v24)
    {
LABEL_19:
      v41 = objc_opt_self();
      v42 = sub_1A524C634();
      sub_1A4778568(0, &qword_1EB126200, &qword_1EB126F80, &qword_1EB12B160, 0x1E69E58C0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1A52F8E10;
      *(inited + 32) = sub_1A524C674();
      *(inited + 40) = v44;
      sub_1A3C52C70(0, &unk_1EB1265F0, 0x1E696AEC0);
      *(inited + 48) = sub_1A524DC24();
      sub_1A452D80C(inited, &qword_1EB126430, &qword_1EB12B160, 0x1E69E58C0);
      swift_setDeallocating();
      sub_1A477862C(inited + 32, &qword_1EB126F80, &qword_1EB12B160, 0x1E69E58C0);
      sub_1A3C52C70(0, &qword_1EB12B160, 0x1E69E58C0);
      v45 = sub_1A524C3D4();

      [v41 sendEvent:v42 withPayload:v45];

      return;
    }

    v48 = "ledInvariantViolated";
    v26 = objc_opt_self();
    sub_1A452FEC0(0, &qword_1EB126430, &qword_1EB12B160, 0x1E69E58C0);
    v27 = 0;
    while (1)
    {
      v28 = sub_1A524C634();
      v29 = sub_1A524C674();
      v31 = v30;
      v32 = [v49 objectAtIndexedSubscript_];
      v33 = sub_1A524E794();
      v34 = sub_1A3C5DCA4(v29, v31);
      if (v35)
      {
        break;
      }

      v33[(v34 >> 6) + 8] |= 1 << v34;
      v36 = (v33[6] + 16 * v34);
      *v36 = v29;
      v36[1] = v31;
      *(v33[7] + 8 * v34) = v32;
      v37 = v33[2];
      v38 = __OFADD__(v37, 1);
      v39 = v37 + 1;
      if (v38)
      {
        goto LABEL_21;
      }

      ++v27;
      v33[2] = v39;
      sub_1A3C52C70(0, &qword_1EB12B160, 0x1E69E58C0);
      v40 = sub_1A524C3D4();

      [v26 sendEvent:v28 withPayload:v40];

      if (v25 == v27)
      {
        goto LABEL_19;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
  }

  __break(1u);
}

void sub_1A4771328(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_1A452FEC0(0, &qword_1EB126430, &qword_1EB12B160, 0x1E69E58C0);
    sub_1A524E794();
  }

  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A4771514(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  sub_1A524CC54();
  *(v4 + 24) = sub_1A524CC44();
  v6 = sub_1A524CBC4();

  return MEMORY[0x1EEE6DFA0](sub_1A47715AC, v6, v5);
}

uint64_t sub_1A47715AC()
{
  v5 = v0;

  swift_getKeyPath();
  swift_getKeyPath();
  sub_1A52479E4();

  v1 = *(v0 + 32);
  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 32) = 1;

  sub_1A52479F4();
  v4 = v1;
  sub_1A475FCD0(&v4);
  sub_1A4770D34();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1A47716B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  sub_1A524CC54();
  *(v4 + 24) = sub_1A524CC44();
  v6 = sub_1A524CBC4();

  return MEMORY[0x1EEE6DFA0](sub_1A4771750, v6, v5);
}

uint64_t sub_1A4771750()
{

  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 32) = 1;

  sub_1A52479F4();
  v1 = *(v0 + 8);

  return v1();
}

double sub_1A4771800(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  sub_1A477E5D8(0, &qword_1EB12B270, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v18 - v7;
  if (qword_1EB1D14B0 != -1)
  {
    swift_once();
  }

  v9 = sub_1A5246F24();
  __swift_project_value_buffer(v9, qword_1EB1D14B8);
  v10 = sub_1A5246F04();
  v11 = sub_1A524D264();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_1A3C1C000, v10, v11, "[Transfer] Showing the pincode alert to the user, awaiting input.", v12, 2u);
    MEMORY[0x1A590EEC0](v12, -1, -1);
  }

  v13 = sub_1A524CCB4();
  (*(*(v13 - 8) + 56))(v8, 1, 1, v13);
  sub_1A524CC54();

  v14 = sub_1A524CC44();
  v15 = swift_allocObject();
  v16 = MEMORY[0x1E69E85E0];
  v15[2] = v14;
  v15[3] = v16;
  v15[4] = v3;
  v15[5] = a1;
  v15[6] = a2;
  sub_1A3D4D930(0, 0, v8, &unk_1A535E620, v15);

  return result;
}

uint64_t sub_1A4771A20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  sub_1A524CC54();
  v6[5] = sub_1A524CC44();
  v8 = sub_1A524CBC4();

  return MEMORY[0x1EEE6DFA0](sub_1A4771ABC, v8, v7);
}

uint64_t sub_1A4771ABC()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);

  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 48) = 1;

  sub_1A52479F4();
  v4 = (v2 + OBJC_IVAR____TtC12PhotosUICoreP33_4205AE50DB34A253AEBD659A3667797215PickerViewModel_pincodeHandler);
  v5 = *(v2 + OBJC_IVAR____TtC12PhotosUICoreP33_4205AE50DB34A253AEBD659A3667797215PickerViewModel_pincodeHandler);
  v6 = *(v2 + OBJC_IVAR____TtC12PhotosUICoreP33_4205AE50DB34A253AEBD659A3667797215PickerViewModel_pincodeHandler + 8);
  *v4 = v3;
  v4[1] = v1;
  sub_1A3C33378(v5, v6);
  v8 = *(v0 + 8);

  return v8();
}

double sub_1A4771BA8(uint64_t a1)
{
  v2 = v1;
  sub_1A477E5D8(0, &qword_1EB12B270, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v31 - v5;
  v7 = sub_1A5246F44();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31[5] = v9;
  MEMORY[0x1EEE9AC00](v11);
  v13 = v31 - v12;
  if (qword_1EB1D14B0 != -1)
  {
    swift_once();
  }

  v14 = sub_1A5246F24();
  __swift_project_value_buffer(v14, qword_1EB1D14B8);
  v32 = *(v8 + 16);
  v32(v13, a1, v7);
  v15 = sub_1A5246F04();
  v16 = sub_1A524D264();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v31[3] = v6;
    v18 = v17;
    v19 = swift_slowAlloc();
    v31[2] = a1;
    v33 = v19;
    *v18 = 136315138;
    v32(v10, v13, v7);
    v20 = sub_1A524C714();
    v31[4] = v2;
    v21 = v20;
    v31[1] = v10;
    v23 = v22;
    (*(v8 + 8))(v13, v7);
    sub_1A3C2EF94(v21, v23, &v33);
  }

  (*(v8 + 8))(v13, v7);
  v24 = sub_1A524CCB4();
  (*(*(v24 - 8) + 56))(v6, 1, 1, v24);
  v32(v10, a1, v7);
  sub_1A524CC54();

  v25 = sub_1A524CC44();
  v26 = v10;
  v27 = (*(v8 + 80) + 40) & ~*(v8 + 80);
  v28 = swift_allocObject();
  v29 = MEMORY[0x1E69E85E0];
  *(v28 + 2) = v25;
  *(v28 + 3) = v29;
  *(v28 + 4) = v2;
  (*(v8 + 32))(&v28[v27], v26, v7);
  sub_1A3D4D930(0, 0, v6, &unk_1A535E540, v28);

  return result;
}

uint64_t sub_1A4771FB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  sub_1A524CC54();
  v5[5] = sub_1A524CC44();
  v7 = sub_1A524CBC4();

  return MEMORY[0x1EEE6DFA0](sub_1A4772050, v7, v6);
}

void sub_1A4772050()
{
  v5 = v0;

  swift_getKeyPath();
  swift_getKeyPath();
  sub_1A52479E4();

  if (*(v0 + 16) == 1)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_1A52479E4();

    v1 = *(v0 + 16);
    swift_getKeyPath();
    swift_getKeyPath();
    *(v0 + 16) = 3;

    sub_1A52479F4();
    v4 = v1;
    sub_1A475FCD0(&v4);
    swift_getKeyPath();
    swift_getKeyPath();
    *(v0 + 16) = 0;

    sub_1A52479F4();
  }

  v2 = *(v0 + 32);
  *(*(v0 + 24) + OBJC_IVAR____TtC12PhotosUICoreP33_4205AE50DB34A253AEBD659A3667797215PickerViewModel_transferHost) = 0;

  sub_1A4777C50(v2, v3);
}

uint64_t sub_1A47722C0@<X0>(uint64_t *a1@<X8>)
{
  a1[3] = &type metadata for PXRetailExperienceView;
  a1[4] = sub_1A4778CF8();
  result = swift_allocObject();
  *a1 = result;
  *(result + 16) = sub_1A4763FFC;
  *(result + 24) = 0;
  *(result + 32) = 0;
  *(result + 40) = PXDisplayCollectionDetailedCountsMake;
  *(result + 48) = 0;
  return result;
}

uint64_t sub_1A47723C4(uint64_t a1, uint64_t *a2)
{
  sub_1A47760A0(0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v10 - v7;
  sub_1A4778688(a1, &v10 - v7, sub_1A47760A0);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1A4778688(v8, v5, sub_1A47760A0);

  sub_1A52479F4();
  return sub_1A47786F0(v8, sub_1A47760A0);
}

uint64_t sub_1A4772504(uint64_t a1, uint64_t *a2)
{
  v3 = sub_1A5240E64();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v7);
  v10 = &v13 - v9;
  v11 = *(v4 + 16);
  v11(&v13 - v9, a1, v3, v8);
  swift_getKeyPath();
  swift_getKeyPath();
  (v11)(v6, v10, v3);

  sub_1A52479F4();
  return (*(v4 + 8))(v10, v3);
}

uint64_t sub_1A47726B0(uint64_t a1, uint64_t *a2)
{
  sub_1A47766E8(0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v10 - v7;
  sub_1A4778688(a1, &v10 - v7, sub_1A47766E8);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1A4778688(v8, v5, sub_1A47766E8);

  sub_1A52479F4();
  return sub_1A47786F0(v8, sub_1A47766E8);
}

uint64_t sub_1A4772804(char *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_1A52479F4();
}

void sub_1A4772874(_BYTE *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1A52479E4();

  *a2 = v3;
}

uint64_t sub_1A47728F4(char *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_1A52479F4();
}

double sub_1A4772968@<D0>(double *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1A52479E4();

  result = v4;
  *a2 = v4;
  return result;
}

uint64_t sub_1A47729E8(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_1A52479F4();
}

uint64_t sub_1A4772A64@<X0>(uint64_t a1@<X8>)
{
  v17[2] = a1;
  sub_1A411848C();
  v2 = v1;
  v3 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v5 = v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A47757C0(0, &unk_1EB141778, sub_1A4775934, sub_1A411848C, MEMORY[0x1E697F948]);
  MEMORY[0x1EEE9AC00](v6);
  v8 = (v17 - v7);
  v9 = sub_1A524B554();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_1A5248624())
  {
    v17[1] = v2;
    (*(v10 + 104))(v12, *MEMORY[0x1E6981630], v9);
    v13 = sub_1A524B5C4();
    (*(v10 + 8))(v12, v9);
    if (qword_1EB1D1500 != -1)
    {
      swift_once();
    }

    sub_1A524BC74();
    sub_1A52481F4();
    *&v20[38] = v24;
    *&v20[22] = v23[6];
    *&v20[6] = v23[5];
    v21 = 0;
    v22 = v13;
    LOWORD(v23[0]) = 257;
    *&v23[3] = *(&v24 + 1);
    *(&v23[2] + 2) = *&v20[32];
    *(&v23[1] + 2) = *&v20[16];
    *(v23 + 2) = *v20;
    WORD4(v23[3]) = 0;
    HIWORD(v23[3]) = v19;
    *(&v23[3] + 10) = v18;
    *&v23[4] = 0x3FF0000000000000;
    WORD4(v23[4]) = 0;
    v8[4] = v23[3];
    *(v8 + 74) = *(&v23[3] + 10);
    v14 = v23[2];
    v8[2] = v23[1];
    v8[3] = v14;
    v15 = v23[0];
    *v8 = v22;
    v8[1] = v15;
    swift_storeEnumTagMultiPayload();
    sub_1A4778688(&v22, &v18, sub_1A4775934);
    sub_1A4778688(&v22, &v18, sub_1A4775934);
    sub_1A4775934(0);
    sub_1A477E8CC(&unk_1EB141068, sub_1A4775934, sub_1A4775AD4);
    sub_1A4775C00();
    sub_1A5249744();

    sub_1A47786F0(&v22, sub_1A4775934);
    return sub_1A47786F0(&v22, sub_1A4775934);
  }

  else
  {
    sub_1A5248074();
    (*(v3 + 16))(v8, v5, v2);
    swift_storeEnumTagMultiPayload();
    sub_1A4775934(0);
    sub_1A477E8CC(&unk_1EB141068, sub_1A4775934, sub_1A4775AD4);
    sub_1A4775C00();
    sub_1A5249744();
    return (*(v3 + 8))(v5, v2);
  }
}

uint64_t sub_1A4772F38@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = sub_1A3C5DCA4(a1, a2);
  if (v7)
  {
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    v21 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1A4774280();
      v10 = v21;
    }

    v11 = *(v10 + 56);
    v12 = sub_1A5240E64();
    v20 = *(v12 - 8);
    v13.n128_f64[0] = (*(v20 + 32))(a3, v11 + *(v20 + 72) * v8, v12);
    sub_1A4773C4C(v8, v10, MEMORY[0x1E6968FB0], v13);
    *v4 = v10;
    v14 = *(v20 + 56);
    v15 = a3;
    v16 = 0;
    v17 = v12;
  }

  else
  {
    v18 = sub_1A5240E64();
    v14 = *(*(v18 - 8) + 56);
    v17 = v18;
    v15 = a3;
    v16 = 1;
  }

  return v14(v15, v16, 1, v17);
}

uint64_t sub_1A47730BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = sub_1A3C5DCA4(a1, a2);
  if (v7)
  {
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    v21 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1A4774524();
      v10 = v21;
    }

    v11 = *(v10 + 56);
    v12 = type metadata accessor for Attachment.Status(0);
    v20 = *(v12 - 8);
    sub_1A477E6A0(v11 + *(v20 + 72) * v8, a3, type metadata accessor for Attachment.Status);
    sub_1A4773C4C(v8, v10, type metadata accessor for Attachment.Status, v13);
    *v4 = v10;
    v14 = *(v20 + 56);
    v15 = a3;
    v16 = 0;
    v17 = v12;
  }

  else
  {
    v18 = type metadata accessor for Attachment.Status(0);
    v14 = *(*(v18 - 8) + 56);
    v17 = v18;
    v15 = a3;
    v16 = 1;
  }

  return v14(v15, v16, 1, v17);
}

void sub_1A477323C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v46 = sub_1A5240E64();
  v5 = *(v46 - 8);
  MEMORY[0x1EEE9AC00](v46);
  v45 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  sub_1A4776674(0, &qword_1EB141238, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6EC8]);
  v43 = v4;
  v8 = sub_1A524E774();
  v9 = v8;
  if (*(v7 + 16))
  {
    v39 = v2;
    v10 = 0;
    v11 = (v7 + 64);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 64);
    v15 = (v12 + 63) >> 6;
    v40 = (v5 + 16);
    v41 = v7;
    v42 = v5;
    v44 = (v5 + 32);
    v16 = v8 + 64;
    while (v14)
    {
      v19 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v22 = v19 | (v10 << 6);
      v23 = *(v7 + 56);
      v24 = (*(v7 + 48) + 16 * v22);
      v26 = *v24;
      v25 = v24[1];
      v27 = *(v42 + 72);
      v28 = v23 + v27 * v22;
      if ((v43 & 1) == 0)
      {
        (*v40)(v45, v28, v46);
        _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
      }

      (*v44)(v45, v28, v46);
      sub_1A524EC94();
      sub_1A524C794();
      v29 = sub_1A524ECE4();
      v30 = -1 << *(v9 + 32);
      v31 = v29 & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v16 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v16 + 8 * v32);
          if (v36 != -1)
          {
            v17 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return;
      }

      v17 = __clz(__rbit64((-1 << v31) & ~*(v16 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      v18 = (*(v9 + 48) + 16 * v17);
      *v18 = v26;
      v18[1] = v25;
      (*v44)((*(v9 + 56) + v27 * v17), v45, v46);
      ++*(v9 + 16);
      v7 = v41;
    }

    v20 = v10;
    while (1)
    {
      v10 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v10 >= v15)
      {
        break;
      }

      v21 = v11[v10];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v14 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v43 & 1) == 0)
    {

      v3 = v39;
      goto LABEL_34;
    }

    v37 = 1 << *(v7 + 32);
    v3 = v39;
    if (v37 >= 64)
    {
      bzero(v11, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v37;
    }

    *(v7 + 16) = 0;
  }

LABEL_34:
  *v3 = v9;
}

void sub_1A47735E4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = type metadata accessor for Attachment.Status(0);
  v40 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v42 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  sub_1A4776674(0, &qword_1EB141248, type metadata accessor for Attachment.Status, MEMORY[0x1E69E6EC8]);
  v41 = v4;
  v8 = sub_1A524E774();
  v9 = v8;
  if (*(v7 + 16))
  {
    v38 = v2;
    v39 = v7;
    v10 = 0;
    v11 = (v7 + 64);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 64);
    v15 = (v12 + 63) >> 6;
    v16 = v8 + 64;
    while (v14)
    {
      v19 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v22 = v19 | (v10 << 6);
      v23 = *(v7 + 56);
      v24 = (*(v7 + 48) + 16 * v22);
      v25 = *v24;
      v26 = v24[1];
      v27 = *(v40 + 72);
      v28 = v23 + v27 * v22;
      if ((v41 & 1) == 0)
      {
        sub_1A4778688(v28, v42, type metadata accessor for Attachment.Status);
        _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
      }

      sub_1A477E6A0(v28, v42, type metadata accessor for Attachment.Status);
      sub_1A524EC94();
      sub_1A524C794();
      v29 = sub_1A524ECE4();
      v30 = -1 << *(v9 + 32);
      v31 = v29 & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v16 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v16 + 8 * v32);
          if (v36 != -1)
          {
            v17 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return;
      }

      v17 = __clz(__rbit64((-1 << v31) & ~*(v16 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      v18 = (*(v9 + 48) + 16 * v17);
      *v18 = v25;
      v18[1] = v26;
      sub_1A477E6A0(v42, *(v9 + 56) + v27 * v17, type metadata accessor for Attachment.Status);
      ++*(v9 + 16);
      v7 = v39;
    }

    v20 = v10;
    while (1)
    {
      v10 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v10 >= v15)
      {
        break;
      }

      v21 = v11[v10];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v14 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v41 & 1) == 0)
    {

      v3 = v38;
      goto LABEL_34;
    }

    v37 = 1 << *(v7 + 32);
    v3 = v38;
    if (v37 >= 64)
    {
      bzero(v11, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v37;
    }

    *(v7 + 16) = 0;
  }

LABEL_34:
  *v3 = v9;
}

void sub_1A4773980(uint64_t a1, uint64_t a2, __n128 a3)
{
  v4 = v3;
  v5 = a2;
  v6 = *v3;
  sub_1A4776674(0, &unk_1EB141258, type metadata accessor for Attachment, MEMORY[0x1E69E6EC8]);
  v36 = v5;
  v7 = sub_1A524E774();
  v8 = v7;
  if (*(v6 + 16))
  {
    v35 = v6;
    v9 = 0;
    v10 = (v6 + 64);
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = v7 + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v21 = v18 | (v9 << 6);
      v22 = (*(v6 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(*(v6 + 56) + 8 * v21);
      if ((v36 & 1) == 0)
      {
        _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
      }

      sub_1A524EC94();
      sub_1A524C794();
      v26 = sub_1A524ECE4();
      v27 = -1 << *(v8 + 32);
      v28 = v26 & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v15 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v15 + 8 * v29);
          if (v33 != -1)
          {
            v16 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return;
      }

      v16 = __clz(__rbit64((-1 << v28) & ~*(v15 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + 8 * v16) = v25;
      ++*(v8 + 16);
      v6 = v35;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v36 & 1) == 0)
    {

      v4 = v3;
      goto LABEL_33;
    }

    v34 = 1 << *(v6 + 32);
    v4 = v3;
    if (v34 >= 64)
    {
      bzero(v10, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v34;
    }

    *(v6 + 16) = 0;
  }

LABEL_33:
  *v4 = v8;
}

void sub_1A4773C4C(unint64_t a1, uint64_t a2, uint64_t (*a3)(void), __n128 a4)
{
  if ((*(a2 + 64 + ((((a1 + 1) & ~(-1 << *(a2 + 32))) >> 3) & 0xFFFFFFFFFFFFFF8)) >> ((a1 + 1) & ~(-1 << *(a2 + 32)))))
  {
    sub_1A524E244();
    sub_1A524EC94();
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  *(a2 + 64 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v4 = *(a2 + 16);
  v5 = __OFSUB__(v4, 1);
  v6 = v4 - 1;
  if (v5)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v6;
    ++*(a2 + 36);
  }
}

void sub_1A4773E40(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v12 = sub_1A3C5DCA4(a2, a3);
  v13 = v10[2];
  v14 = (v11 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
    goto LABEL_17;
  }

  v16 = v11;
  v17 = v10[3];
  if (v17 < v15 || (a4 & 1) == 0)
  {
    if (v17 >= v15 && (a4 & 1) == 0)
    {
      sub_1A4774280();
      goto LABEL_7;
    }

    sub_1A477323C(v15, a4 & 1);
    v25 = sub_1A3C5DCA4(a2, a3);
    if ((v16 & 1) == (v26 & 1))
    {
      v12 = v25;
      v18 = *v5;
      if (v16)
      {
        goto LABEL_8;
      }

LABEL_13:
      sub_1A4774124(v12, a2, a3, a1, v18);

      _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
    }

LABEL_17:
    sub_1A524EB84();
    __break(1u);
    return;
  }

LABEL_7:
  v18 = *v5;
  if ((v16 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v19 = v18[7];
  v20 = sub_1A5240E64();
  v21 = *(v20 - 8);
  v22 = *(v21 + 40);
  v23 = v20;
  v24 = v19 + *(v21 + 72) * v12;

  v22(v24, a1, v23);
}

void sub_1A4773FC0(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v12 = sub_1A3C5DCA4(a2, a3);
  v13 = v10[2];
  v14 = (v11 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
    goto LABEL_17;
  }

  v16 = v11;
  v17 = v10[3];
  if (v17 < v15 || (a4 & 1) == 0)
  {
    if (v17 >= v15 && (a4 & 1) == 0)
    {
      sub_1A4774524();
      goto LABEL_7;
    }

    sub_1A47735E4(v15, a4 & 1);
    v21 = sub_1A3C5DCA4(a2, a3);
    if ((v16 & 1) == (v22 & 1))
    {
      v12 = v21;
      v18 = *v5;
      if (v16)
      {
        goto LABEL_8;
      }

LABEL_13:
      sub_1A47741D4(v12, a2, a3, a1, v18);

      _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
    }

LABEL_17:
    sub_1A524EB84();
    __break(1u);
    return;
  }

LABEL_7:
  v18 = *v5;
  if ((v16 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v19 = v18[7];
  v20 = v19 + *(*(type metadata accessor for Attachment.Status(0) - 8) + 72) * v12;

  sub_1A4778750(a1, v20);
}

uint64_t sub_1A4774124(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v8 = (a5[6] + 16 * a1);
  *v8 = a2;
  v8[1] = a3;
  v9 = a5[7];
  v10 = sub_1A5240E64();
  result = (*(*(v10 - 8) + 32))(v9 + *(*(v10 - 8) + 72) * a1, a4, v10);
  v12 = a5[2];
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v14;
  }

  return result;
}

uint64_t sub_1A47741D4(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v8 = (a5[6] + 16 * a1);
  *v8 = a2;
  v8[1] = a3;
  v9 = a5[7];
  v10 = type metadata accessor for Attachment.Status(0);
  result = sub_1A477E6A0(a4, v9 + *(*(v10 - 8) + 72) * a1, type metadata accessor for Attachment.Status);
  v12 = a5[2];
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v14;
  }

  return result;
}

void sub_1A4774280()
{
  v1 = v0;
  v35 = sub_1A5240E64();
  v37 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v34 = &v29 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4776674(0, &qword_1EB141238, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6EC8]);
  v3 = *v0;
  v4 = sub_1A524E764();
  v5 = v4;
  if (*(v3 + 16))
  {
    v6 = (v4 + 64);
    v7 = (v3 + 64);
    v8 = ((1 << *(v5 + 32)) + 63) >> 6;
    v30 = v1;
    v31 = v3 + 64;
    if (v5 != v3 || v6 >= &v7[8 * v8])
    {
      memmove(v6, v7, 8 * v8);
    }

    v9 = 0;
    v10 = *(v3 + 16);
    v36 = v5;
    *(v5 + 16) = v10;
    v11 = 1 << *(v3 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v3 + 64);
    v14 = (v11 + 63) >> 6;
    v32 = v37 + 32;
    v33 = v37 + 16;
    if (v13)
    {
      v15 = __clz(__rbit64(v13));
      v38 = (v13 - 1) & v13;
      goto LABEL_14;
    }

    v16 = 0;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v1 = v30;
        v5 = v36;
        goto LABEL_17;
      }

      v17 = *(v31 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v38 = (v17 - 1) & v17;
LABEL_14:
        v18 = v15 | (v9 << 6);
        v19 = 16 * v18;
        v20 = (*(v3 + 48) + 16 * v18);
        v21 = *v20;
        v22 = v20[1];
        v23 = v37;
        v24 = *(v37 + 72) * v18;
        v25 = v34;
        v26 = v35;
        (*(v37 + 16))(v34, *(v3 + 56) + v24, v35);
        v27 = v36;
        v28 = (*(v36 + 48) + v19);
        *v28 = v21;
        v28[1] = v22;
        (*(v23 + 32))(*(v27 + 56) + v24, v25, v26);
        _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
      }
    }

    __break(1u);
  }

  else
  {

LABEL_17:
    *v1 = v5;
  }
}

void sub_1A4774524()
{
  v1 = v0;
  v2 = type metadata accessor for Attachment.Status(0);
  v30 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v29 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4776674(0, &qword_1EB141248, type metadata accessor for Attachment.Status, MEMORY[0x1E69E6EC8]);
  v4 = *v0;
  v5 = sub_1A524E764();
  v6 = v5;
  if (*(v4 + 16))
  {
    v28 = v1;
    v7 = (v5 + 64);
    v8 = v4 + 64;
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || v7 >= v8 + 8 * v9)
    {
      memmove(v7, (v4 + 64), 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v31 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = *(v4 + 64);
    v14 = -1;
    if (v12 < 64)
    {
      v14 = ~(-1 << v12);
    }

    v15 = (v12 + 63) >> 6;
    if ((v14 & v13) != 0)
    {
      v16 = __clz(__rbit64(v14 & v13));
      goto LABEL_14;
    }

    v17 = 0;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {

        v1 = v28;
        v6 = v31;
        goto LABEL_17;
      }

      v18 = *(v8 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
LABEL_14:
        v19 = v16 | (v10 << 6);
        v20 = 16 * v19;
        v21 = (*(v4 + 48) + 16 * v19);
        v22 = *v21;
        v23 = v21[1];
        v24 = v29;
        v25 = *(v30 + 72) * v19;
        sub_1A4778688(*(v4 + 56) + v25, v29, type metadata accessor for Attachment.Status);
        v26 = v31;
        v27 = (*(v31 + 48) + v20);
        *v27 = v22;
        v27[1] = v23;
        sub_1A477E6A0(v24, *(v26 + 56) + v25, type metadata accessor for Attachment.Status);
        _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
      }
    }

    __break(1u);
  }

  else
  {

LABEL_17:
    *v1 = v6;
  }
}

void sub_1A47747A0(__n128 a1)
{
  v2 = v1;
  sub_1A4776674(0, &unk_1EB141258, type metadata accessor for Attachment, MEMORY[0x1E69E6EC8]);
  v3 = *v1;
  v4 = sub_1A524E764();
  v5 = v4;
  if (*(v3 + 16))
  {
    v6 = (v4 + 64);
    v7 = ((1 << *(v5 + 32)) + 63) >> 6;
    if (v5 != v3 || v6 >= v3 + 64 + 8 * v7)
    {
      memmove(v6, (v3 + 64), 8 * v7);
    }

    v9 = 0;
    *(v5 + 16) = *(v3 + 16);
    v10 = 1 << *(v3 + 32);
    v11 = *(v3 + 64);
    v12 = -1;
    if (v10 < 64)
    {
      v12 = ~(-1 << v10);
    }

    v13 = (v10 + 63) >> 6;
    if ((v12 & v11) != 0)
    {
      v14 = __clz(__rbit64(v12 & v11));
      goto LABEL_17;
    }

    v15 = 0;
    while (1)
    {
      v9 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v9 >= v13)
      {
        goto LABEL_18;
      }

      v16 = *(v3 + 64 + 8 * v9);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
LABEL_17:
        v17 = v14 | (v9 << 6);
        v18 = (*(v3 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v3 + 56) + 8 * v17);
        v21 = (*(v5 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v5 + 56) + 8 * v17) = v20;
        _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
      }
    }

    __break(1u);
  }

  else
  {
LABEL_18:

    *v2 = v5;
  }
}

uint64_t sub_1A4774934(uint64_t a1, uint64_t a2)
{
  v2 = [objc_opt_self() standardUserDefaults];
  sub_1A477E5D8(0, &qword_1EB1261F0, sub_1A3C5D744, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1A52F8E10;
  *(inited + 32) = 0xD000000000000021;
  v4 = inited + 32;
  *(inited + 72) = MEMORY[0x1E69E6530];
  *(inited + 40) = 0x80000001A53E9CE0;
  *(inited + 48) = 10;
  sub_1A3C5D7A8(inited);
  swift_setDeallocating();
  sub_1A47786F0(v4, sub_1A3C5D744);
  v5 = sub_1A524C3D4();

  [v2 registerDefaults_];

  sub_1A4779184(0);
  v7 = objc_allocWithZone(v6);

  return sub_1A5249624();
}

void sub_1A4774B1C(uint64_t a1)
{
  if (!qword_1EB140F10)
  {
    sub_1A477C424(255, &qword_1EB140F18, sub_1A4774B98);
    v1 = sub_1A5248804();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB140F10);
    }
  }
}

void sub_1A4774B98(uint64_t a1)
{
  if (!qword_1EB140F20)
  {
    sub_1A4774CDC(255);
    sub_1A477DDFC(255, &unk_1EB122310, sub_1A47752C4, sub_1A47753EC, MEMORY[0x1E697C790]);
    sub_1A4775218(&unk_1EB140FC8, sub_1A4774CDC, MEMORY[0x1E6981870]);
    sub_1A47752C4(255);
    sub_1A47753EC();
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB140F20);
    }
  }
}

void sub_1A4774CDC(uint64_t a1)
{
  if (!qword_1EB140F28)
  {
    sub_1A477E5D8(255, &qword_1EB140F30, sub_1A4774D90, MEMORY[0x1E6981F40]);
    sub_1A4775260(&unk_1EB140FB8, &qword_1EB140F30, sub_1A4774D90);
    v1 = sub_1A524B894();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB140F28);
    }
  }
}

void sub_1A4774DB8(uint64_t a1)
{
  if (!qword_1EB140F40)
  {
    sub_1A477E5D8(255, &qword_1EB140F48, sub_1A4774E6C, MEMORY[0x1E6981F40]);
    sub_1A4775260(&qword_1EB140FB0, &qword_1EB140F48, sub_1A4774E6C);
    v1 = sub_1A52481C4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB140F40);
    }
  }
}

void sub_1A4774EA0(uint64_t a1)
{
  if (!qword_1EB140F58)
  {
    sub_1A477E5D8(255, &qword_1EB140F60, sub_1A4774F54, MEMORY[0x1E6981F40]);
    sub_1A4775260(&qword_1EB140F98, &qword_1EB140F60, sub_1A4774F54);
    v1 = sub_1A524B894();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB140F58);
    }
  }
}

void sub_1A4774F54(uint64_t a1)
{
  if (!qword_1EB140F68)
  {
    sub_1A477E5D8(255, &qword_1EB140F70, sub_1A4775014, MEMORY[0x1E69E6720]);
    sub_1A47750F8(255);
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata, &qword_1EB140F68);
    }
  }
}

void sub_1A477508C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3(255);
    v10 = a5(a1, v9, a4);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

void sub_1A47750F8(uint64_t a1)
{
  if (!qword_1EB140F88)
  {
    sub_1A477C598(255, &qword_1EB140F90, MEMORY[0x1E6981148], MEMORY[0x1E697E048], MEMORY[0x1E697E830]);
    v1 = sub_1A5248804();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB140F88);
    }
  }
}

void sub_1A4775184(uint64_t a1)
{
  if (!qword_1EB140FA0)
  {
    sub_1A4774EA0(255);
    sub_1A4775218(&qword_1EB140FA8, sub_1A4774EA0, MEMORY[0x1E6981870]);
    v1 = sub_1A5247D04();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB140FA0);
    }
  }
}

uint64_t sub_1A4775218(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1A4775260(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    sub_1A477E5D8(255, a2, a3, MEMORY[0x1E6981F40]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1A47752C4(uint64_t a1)
{
  if (!qword_1EB124608)
  {
    v1 = MEMORY[0x1E697D670];
    sub_1A477C598(255, &qword_1EB127480, MEMORY[0x1E6981148], MEMORY[0x1E6981138], MEMORY[0x1E697D670]);
    sub_1A4775394(&qword_1EB127490, &qword_1EB127480, v1, MEMORY[0x1E697D680]);
    v2 = sub_1A5247F34();
    if (!v3)
    {
      atomic_store(v2, &qword_1EB124608);
    }
  }
}

uint64_t sub_1A4775394(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(void, uint64_t, uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_1A477C598(255, a2, MEMORY[0x1E6981148], MEMORY[0x1E6981138], a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1A4775420()
{
  result = qword_1EB140FE0;
  if (!qword_1EB140FE0)
  {
    sub_1A477C424(255, &qword_1EB140F18, sub_1A4774B98);
    sub_1A4774CDC(255);
    sub_1A477DDFC(255, &unk_1EB122310, sub_1A47752C4, sub_1A47753EC, MEMORY[0x1E697C790]);
    sub_1A4775218(&unk_1EB140FC8, sub_1A4774CDC, MEMORY[0x1E6981870]);
    sub_1A47752C4(255);
    sub_1A47753EC();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_1A3FF8FF4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB140FE0);
  }

  return result;
}

void sub_1A47755AC(uint64_t a1)
{
  if (!qword_1EB141000)
  {
    sub_1A477E5D8(255, &qword_1EB141008, sub_1A4775660, MEMORY[0x1E6981F40]);
    sub_1A4775260(&qword_1EB1410B8, &qword_1EB141008, sub_1A4775660);
    v1 = sub_1A524B8B4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB141000);
    }
  }
}

void sub_1A477569C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), unint64_t *a4, uint64_t (*a5)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    sub_1A477E5D8(255, a4, a5, MEMORY[0x1E69E6720]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v9)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

void sub_1A47757C0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3(255);
    v10 = a4(255);
    v11 = a5(a1, v9, v10);
    if (!v12)
    {
      atomic_store(v11, a2);
    }
  }
}

void sub_1A477588C(uint64_t a1)
{
  if (!qword_1EB141040)
  {
    sub_1A47757C0(255, &qword_1EB141048, sub_1A4775934, sub_1A411848C, MEMORY[0x1E697F960]);
    sub_1A47759D8();
    v1 = sub_1A5247B04();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB141040);
    }
  }
}

void sub_1A4775934(uint64_t a1)
{
  if (!qword_1EB141050)
  {
    sub_1A47757C0(255, &qword_1EB1281E8, sub_1A3E33EB4, sub_1A429977C, MEMORY[0x1E697E830]);
    v1 = sub_1A5248804();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB141050);
    }
  }
}

unint64_t sub_1A47759D8()
{
  result = qword_1EB141060;
  if (!qword_1EB141060)
  {
    sub_1A47757C0(255, &qword_1EB141048, sub_1A4775934, sub_1A411848C, MEMORY[0x1E697F960]);
    sub_1A477E8CC(&unk_1EB141068, sub_1A4775934, sub_1A4775AD4);
    sub_1A4775C00();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB141060);
  }

  return result;
}

unint64_t sub_1A4775AD4()
{
  result = qword_1EB1281F0;
  if (!qword_1EB1281F0)
  {
    sub_1A47757C0(255, &qword_1EB1281E8, sub_1A3E33EB4, sub_1A429977C, MEMORY[0x1E697E830]);
    sub_1A477E8CC(&qword_1EB128300, sub_1A3E33EB4, sub_1A3E44C04);
    sub_1A4775218(&qword_1EB1289D0, sub_1A429977C, MEMORY[0x1E697DDB0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1281F0);
  }

  return result;
}

void sub_1A4775CF8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    a4(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v7)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

void sub_1A4775DEC(uint64_t a1)
{
  if (!qword_1EB1410A8)
  {
    sub_1A477DDFC(255, &qword_1EB1410B0, sub_1A43D3010, sub_1A43D30E0, MEMORY[0x1E6981198]);
    v1 = sub_1A5248804();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB1410A8);
    }
  }
}

unint64_t sub_1A4775E94()
{
  result = qword_1EB1410D0;
  if (!qword_1EB1410D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1410D0);
  }

  return result;
}

void sub_1A4775F3C(uint64_t a1)
{
  sub_1A523FBB4();
  if (v1 <= 0x3F)
  {
    sub_1A477E5D8(319, &qword_1EB1410D8, sub_1A47760A0, MEMORY[0x1E695C070]);
    if (v2 <= 0x3F)
    {
      sub_1A477E5D8(319, &qword_1EB1410E8, MEMORY[0x1E6968FB0], MEMORY[0x1E695C070]);
      if (v3 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_1A47760FC(uint64_t a1)
{
  sub_1A477CDEC(319, &qword_1EB1410F0, &type metadata for RetailExperienceState, MEMORY[0x1E695C070]);
  if (v1 <= 0x3F)
  {
    sub_1A477CDEC(319, &unk_1EB1410F8, &type metadata for RetailTransferState, MEMORY[0x1E695C070]);
    if (v2 <= 0x3F)
    {
      sub_1A477CDEC(319, &qword_1EB128B30, MEMORY[0x1E69E6370], MEMORY[0x1E695C070]);
      if (v3 <= 0x3F)
      {
        sub_1A477E5D8(319, &unk_1EB141108, sub_1A47765A4, MEMORY[0x1E695C070]);
        if (v4 <= 0x3F)
        {
          sub_1A477E5D8(319, &qword_1EB141118, sub_1A47765D8, MEMORY[0x1E695C070]);
          if (v5 <= 0x3F)
          {
            sub_1A477E5D8(319, &qword_1EB141128, sub_1A477660C, MEMORY[0x1E695C070]);
            if (v6 <= 0x3F)
            {
              sub_1A477E5D8(319, &qword_1EB141138, sub_1A4776640, MEMORY[0x1E695C070]);
              if (v7 <= 0x3F)
              {
                sub_1A477E5D8(319, &qword_1EB141148, sub_1A47766E8, MEMORY[0x1E695C070]);
                if (v8 <= 0x3F)
                {
                  sub_1A477CDEC(319, &qword_1EB1249D8, MEMORY[0x1E69E7DE0], MEMORY[0x1E695C070]);
                  if (v9 <= 0x3F)
                  {
                    sub_1A477E5D8(319, &qword_1EB141160, sub_1A477671C, MEMORY[0x1E695C070]);
                    if (v10 <= 0x3F)
                    {
                      swift_updateClassMetadata2();
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

void sub_1A4776674(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, void, uint64_t, void))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, MEMORY[0x1E69E6158], v7, MEMORY[0x1E69E6168]);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_1A47767B8(uint64_t a1)
{
  if (!qword_1EB141200)
  {
    sub_1A5248464();
    sub_1A4774B1C(255);
    sub_1A477E8CC(&qword_1EB140FD8, sub_1A4774B1C, sub_1A4775420);
    v1 = sub_1A5248834();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB141200);
    }
  }
}

uint64_t sub_1A477688C(uint64_t a1)
{
  result = sub_1A3C52C70(319, &qword_1EB131890, 0x1E696AE38);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for Photo(319);
    if (v3 <= 0x3F)
    {
      result = type metadata accessor for Movie(319);
      if (v4 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

unint64_t sub_1A4776A80()
{
  result = qword_1EB1D1C40[0];
  if (!qword_1EB1D1C40[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB1D1C40);
  }

  return result;
}

unint64_t sub_1A4776AD8()
{
  result = qword_1EB1D1D50[0];
  if (!qword_1EB1D1D50[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB1D1D50);
  }

  return result;
}

uint64_t sub_1A4776B2C(double a1)
{
  v3 = *(sub_1A5246F44() - 8);
  v4 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  v5 = *(v1 + 32);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1A3CA8098;

  return sub_1A4771FB8(v6, v7, v8, v5, v1 + v4);
}

unint64_t sub_1A4776C04(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_1A4776674(0, &unk_1EB141258, type metadata accessor for Attachment, MEMORY[0x1E69E6EC8]);
    sub_1A524E794();

    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  return MEMORY[0x1E69E7CC8];
}

unint64_t sub_1A4776D2C(uint64_t a1)
{
  sub_1A477C1B8(0, &qword_1EB141250, type metadata accessor for Attachment.Status, MEMORY[0x1E69E6158]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v6 = (&v23 - v5);
  v7 = *(a1 + 16);
  if (v7)
  {
    sub_1A4776674(0, &qword_1EB141248, type metadata accessor for Attachment.Status, MEMORY[0x1E69E6EC8]);
    v8 = sub_1A524E794();
    v9 = *(v3 + 48);
    v10 = a1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v11 = *(v4 + 72);

    while (1)
    {
      sub_1A47787B4(v10, v6, &qword_1EB141250, type metadata accessor for Attachment.Status, MEMORY[0x1E69E6158], sub_1A477C1B8);
      v12 = *v6;
      v13 = v6[1];
      result = sub_1A3C5DCA4(*v6, v13);
      if (v15)
      {
        break;
      }

      v16 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v17 = (v8[6] + 16 * result);
      *v17 = v12;
      v17[1] = v13;
      v18 = v8[7];
      v19 = type metadata accessor for Attachment.Status(0);
      result = sub_1A477E6A0(v6 + v9, v18 + *(*(v19 - 8) + 72) * v16, type metadata accessor for Attachment.Status);
      v20 = v8[2];
      v21 = __OFADD__(v20, 1);
      v22 = v20 + 1;
      if (v21)
      {
        goto LABEL_10;
      }

      v8[2] = v22;
      v10 += v11;
      if (!--v7)
      {

        return v8;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1A4776F78(uint64_t a1)
{
  sub_1A477C1B8(0, &qword_1EB141240, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6158]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v6 = (&v23 - v5);
  v7 = *(a1 + 16);
  if (v7)
  {
    sub_1A4776674(0, &qword_1EB141238, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6EC8]);
    v8 = sub_1A524E794();
    v9 = *(v3 + 48);
    v10 = a1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v11 = *(v4 + 72);

    while (1)
    {
      sub_1A47787B4(v10, v6, &qword_1EB141240, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6158], sub_1A477C1B8);
      v12 = *v6;
      v13 = v6[1];
      result = sub_1A3C5DCA4(*v6, v13);
      if (v15)
      {
        break;
      }

      v16 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v17 = (v8[6] + 16 * result);
      *v17 = v12;
      v17[1] = v13;
      v18 = v8[7];
      v19 = sub_1A5240E64();
      result = (*(*(v19 - 8) + 32))(v18 + *(*(v19 - 8) + 72) * v16, v6 + v9, v19);
      v20 = v8[2];
      v21 = __OFADD__(v20, 1);
      v22 = v20 + 1;
      if (v21)
      {
        goto LABEL_10;
      }

      v8[2] = v22;
      v10 += v11;
      if (!--v7)
      {

        return v8;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

uint64_t sub_1A47771C8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Movie(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v35 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Photo(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Attachment.Status(0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v34 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = (&v34 - v16);
  sub_1A477CE3C(0, &qword_1EB141268, type metadata accessor for Attachment.Status);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v20 = &v34 - v19;
  v22 = *(v21 + 56);
  sub_1A4778688(a1, &v34 - v19, type metadata accessor for Attachment.Status);
  sub_1A4778688(a2, &v20[v22], type metadata accessor for Attachment.Status);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (!EnumCaseMultiPayload)
    {
      sub_1A4778688(v20, v17, type metadata accessor for Attachment.Status);
      v24 = *v17;
      if (swift_getEnumCaseMultiPayload())
      {

LABEL_16:
        sub_1A47788D8(v20, &qword_1EB141268, type metadata accessor for Attachment.Status);
        v27 = 0;
        return v27 & 1;
      }

      v32 = *&v20[v22];
      sub_1A3C52C70(0, &qword_1EB12B160, 0x1E69E58C0);
      v27 = sub_1A524DBF4();

LABEL_18:
      sub_1A47786F0(v20, type metadata accessor for Attachment.Status);
      return v27 & 1;
    }

    sub_1A4778688(v20, v14, type metadata accessor for Attachment.Status);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1A477E6A0(&v20[v22], v8, type metadata accessor for Photo);
      v27 = sub_1A5240DB4();
      sub_1A47786F0(v8, type metadata accessor for Photo);
      v28 = v14;
      v29 = type metadata accessor for Photo;
      goto LABEL_10;
    }

    v30 = type metadata accessor for Photo;
    v31 = v14;
    goto LABEL_15;
  }

  if (EnumCaseMultiPayload == 2)
  {
    sub_1A4778688(v20, v11, type metadata accessor for Attachment.Status);
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      v25 = &v20[v22];
      v26 = v35;
      sub_1A477E6A0(v25, v35, type metadata accessor for Movie);
      v27 = sub_1A5240DB4();
      sub_1A47786F0(v26, type metadata accessor for Movie);
      v28 = v11;
      v29 = type metadata accessor for Movie;
LABEL_10:
      sub_1A47786F0(v28, v29);
      goto LABEL_18;
    }

    v30 = type metadata accessor for Movie;
    v31 = v11;
LABEL_15:
    sub_1A47786F0(v31, v30);
    goto LABEL_16;
  }

  if (swift_getEnumCaseMultiPayload() != 3)
  {
    goto LABEL_16;
  }

  sub_1A47786F0(v20, type metadata accessor for Attachment.Status);
  v27 = 1;
  return v27 & 1;
}

void sub_1A4777638(uint64_t a1, uint64_t a2)
{
  sub_1A477E5D8(0, &unk_1EB12B250, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = v20 - v4;
  sub_1A47760A0(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1A523FB64();
  if (v10 && (v11 = v9, v12 = v10, swift_getKeyPath(), swift_getKeyPath(), sub_1A52479E4(), , , swift_getKeyPath(), swift_getKeyPath(), v20[1] = a2, v13 = sub_1A52479D4(), sub_1A47613C8(v8, v11, v12), v13(v21, 0), , , v14 = sub_1A523FB64(), v15))
  {
    v16 = v14;
    v17 = v15;
    swift_getKeyPath();
    swift_getKeyPath();
    sub_1A52479E4();

    v18 = sub_1A5240E64();
    (*(*(v18 - 8) + 56))(v5, 0, 1, v18);
    swift_getKeyPath();
    swift_getKeyPath();
    v19 = sub_1A52479D4();
    sub_1A4761588(v5, v16, v17);
    v19(v21, 0);
  }

  else
  {
    sub_1A524E6E4();
    __break(1u);
  }
}

void sub_1A4777978(uint64_t a1, uint64_t a2)
{
  sub_1A477E5D8(0, &unk_1EB12B250, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v18[-v3];
  sub_1A47760A0(0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v18[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = sub_1A523FB64();
  if (v9 && (v10 = v8, v11 = v9, swift_getKeyPath(), swift_getKeyPath(), v12 = sub_1A52479D4(), sub_1A47730BC(v10, v11, v7), , sub_1A47786F0(v7, sub_1A47760A0), v12(v18, 0), , , v13 = sub_1A523FB64(), v14))
  {
    v15 = v13;
    v16 = v14;
    swift_getKeyPath();
    swift_getKeyPath();
    v17 = sub_1A52479D4();
    sub_1A4772F38(v15, v16, v4);

    sub_1A4778828(v4, &unk_1EB12B250, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
    v17(v18, 0);
  }

  else
  {
    sub_1A524E6E4();
    __break(1u);
  }
}

void sub_1A4777C50(uint64_t a1, double a2)
{
  v3 = sub_1A5246F44();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v7, a1, v3, v5);
  v8 = (*(v4 + 88))(v7, v3);
  if (v8 != *MEMORY[0x1E69995D8] && v8 != *MEMORY[0x1E69995E0] && v8 != *MEMORY[0x1E69995E8])
  {
    (*(v4 + 8))(v7, v3);
  }

  sub_1A4778568(0, &qword_1EB141210, &unk_1EB141218, &unk_1EB1265F0, 0x1E696AEC0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1A52F8E10;
  *(inited + 32) = sub_1A524C674();
  *(inited + 40) = v10;
  sub_1A3C52C70(0, &unk_1EB1265F0, 0x1E696AEC0);
  *(inited + 48) = sub_1A524DC24();
  v11 = sub_1A452D80C(inited, &unk_1EB141228, &unk_1EB1265F0, 0x1E696AEC0);
  swift_setDeallocating();
  sub_1A477862C(inited + 32, &unk_1EB141218, &unk_1EB1265F0, 0x1E696AEC0);
  objc_opt_self();
  sub_1A524C634();

  sub_1A4771328(v11);
}

uint64_t sub_1A4777F50()
{
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1A3CA8098;

  return sub_1A4770494(v3, v4, v5, v2);
}

uint64_t objectdestroyTm_76(uint64_t (*a1)(void))
{
  v2 = a1(0);
  v3 = *(v2 - 8);
  v4 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  swift_unknownObjectRelease();

  (*(v3 + 8))(v1 + v4, v2);

  return swift_deallocObject();
}

uint64_t sub_1A47780B8()
{
  v2 = *(sub_1A5240E64() - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v4 = *(v0 + 32);
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1A3CA8098;

  return sub_1A4770AF8(v5, v6, v7, v4, v0 + v3);
}

uint64_t sub_1A4778190()
{
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[6];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1A3CA8098;

  return sub_1A4771A20(v5, v6, v7, v2, v3, v4);
}

double sub_1A4778238(uint64_t (*a1)(void), const char *a2, uint64_t a3, uint64_t a4)
{
  v8 = v4;
  sub_1A477E5D8(0, &qword_1EB12B270, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v21 - v10;
  if (qword_1EB1D14B0 != -1)
  {
    swift_once();
  }

  v12 = sub_1A5246F24();
  __swift_project_value_buffer(v12, qword_1EB1D14B8);
  v13 = sub_1A5246F04();
  v14 = a1();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&dword_1A3C1C000, v13, v14, a2, v15, 2u);
    MEMORY[0x1A590EEC0](v15, -1, -1);
  }

  v16 = sub_1A524CCB4();
  (*(*(v16 - 8) + 56))(v11, 1, 1, v16);
  sub_1A524CC54();

  v17 = sub_1A524CC44();
  v18 = swift_allocObject();
  v19 = MEMORY[0x1E69E85E0];
  v18[2] = v17;
  v18[3] = v19;
  v18[4] = v8;
  sub_1A3D4D930(0, 0, v11, a4, v18);

  return result;
}

uint64_t sub_1A4778440()
{
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1A3CA8098;

  return sub_1A47716B8(v3, v4, v5, v2);
}

uint64_t sub_1A47784D4()
{
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1A3CA8098;

  return sub_1A4771514(v3, v4, v5, v2);
}

void sub_1A4778568(uint64_t a1, unint64_t *a2, unint64_t *a3, unint64_t *a4, void *a5)
{
  if (!*a2)
  {
    sub_1A47785C4(255, a3, a4, a5);
    v6 = sub_1A524EA54();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_1A47785C4(uint64_t a1, unint64_t *a2, unint64_t *a3, void *a4)
{
  if (!*a2)
  {
    sub_1A3C52C70(255, a3, a4);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v6)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

uint64_t sub_1A477862C(uint64_t a1, unint64_t *a2, unint64_t *a3, void *a4)
{
  sub_1A47785C4(0, a2, a3, a4);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

uint64_t sub_1A4778688(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A47786F0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1A4778750(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Attachment.Status(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A47787B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void, uint64_t, uint64_t, uint64_t))
{
  v8 = a6(0, a3, a4, a5);
  (*(*(v8 - 8) + 16))(a2, a1, v8);
  return a2;
}

uint64_t sub_1A4778828(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  sub_1A477E5D8(0, a2, a3, a4);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

unint64_t sub_1A4778884()
{
  result = qword_1EB1D2080;
  if (!qword_1EB1D2080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1D2080);
  }

  return result;
}

uint64_t sub_1A47788D8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1A477CE3C(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void sub_1A4778954(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    sub_1A477E5D8(255, &qword_1EB127880, MEMORY[0x1E697DC30], MEMORY[0x1E6980A08]);
    v4 = sub_1A5248804();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1A47789F0(uint64_t a1)
{
  if (!qword_1EB141278)
  {
    sub_1A47750F8(255);
    sub_1A477E8CC(&qword_1EB141280, sub_1A47750F8, sub_1A4778A8C);
    v1 = sub_1A524B764();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB141278);
    }
  }
}

unint64_t sub_1A4778A8C()
{
  result = qword_1EB141288;
  if (!qword_1EB141288)
  {
    sub_1A477C598(255, &qword_1EB140F90, MEMORY[0x1E6981148], MEMORY[0x1E697E048], MEMORY[0x1E697E830]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB141288);
  }

  return result;
}

unint64_t sub_1A4778C48()
{
  result = qword_1EB141298;
  if (!qword_1EB141298)
  {
    sub_1A4778934(255);
    sub_1A4775218(&unk_1EB1412A0, sub_1A47789F0, MEMORY[0x1E697D680]);
    sub_1A419AAE4(v1);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB141298);
  }

  return result;
}

unint64_t sub_1A4778CF8()
{
  result = qword_1EB1D2090[0];
  if (!qword_1EB1D2090[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB1D2090);
  }

  return result;
}

void sub_1A4778D4C(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  if (!*a2)
  {
    sub_1A477E5D8(255, a3, a4, MEMORY[0x1E6981F40]);
    v5 = sub_1A52483B4();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_1A4778DF8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 40);
  v7 = *(v0 + 24);
  v3 = sub_1A524C634();
  v4 = PXLocalizedString(v3);

  sub_1A524C674();
  v5 = swift_allocObject();
  *(v5 + 16) = v1;
  *(v5 + 24) = v7;
  *(v5 + 40) = v2;
  sub_1A3D5F9DC();

  return sub_1A524B754();
}

void sub_1A4778EFC(uint64_t a1)
{
  if (!qword_1EB1412B8)
  {
    sub_1A477E5D8(255, &qword_1EB140F48, sub_1A4774E6C, MEMORY[0x1E6981F40]);
    sub_1A449A6BC();
    v1 = sub_1A52483B4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB1412B8);
    }
  }
}

uint64_t objectdestroy_154Tm()
{

  return swift_deallocObject();
}

uint64_t sub_1A4778FD8()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_1A52479F4();
}

void sub_1A477904C()
{
  sub_1A5249574();
  __src[472] = 1;
  sub_1A4765328(__src);
}

double sub_1A4779164(uint64_t a1)
{
  *(a1 + 160) = 0;
  result = 0.0;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

void sub_1A4779184(uint64_t a1)
{
  if (!qword_1EB1412C8)
  {
    sub_1A4778CF8();
    v1 = sub_1A5249654();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB1412C8);
    }
  }
}

void sub_1A47791FC(uint64_t a1)
{
  if (!qword_1EB1412E0)
  {
    type metadata accessor for Movie(255);
    sub_1A4779290(&qword_1EB1D20B0, type metadata accessor for Movie, &unk_1A535E2AC);
    v1 = sub_1A5241CB4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB1412E0);
    }
  }
}

uint64_t sub_1A4779290(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1A47792D8(uint64_t a1)
{
  if (!qword_1EB1412F0)
  {
    type metadata accessor for Photo(255);
    sub_1A4779290(qword_1EB1D20B8, type metadata accessor for Photo, &unk_1A535E24C);
    v1 = sub_1A5241CB4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB1412F0);
    }
  }
}

void sub_1A477936C(uint64_t a1)
{
  if (!qword_1EB141300)
  {
    sub_1A477C598(255, &qword_1EB141308, &type metadata for VideoPlayerVCRepresentable, MEMORY[0x1E697F578], MEMORY[0x1E697E830]);
    sub_1A47793FC();
    v1 = sub_1A524B8B4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB141300);
    }
  }
}

unint64_t sub_1A47793FC()
{
  result = qword_1EB141310;
  if (!qword_1EB141310)
  {
    sub_1A477C598(255, &qword_1EB141308, &type metadata for VideoPlayerVCRepresentable, MEMORY[0x1E697F578], MEMORY[0x1E697E830]);
    sub_1A4776AD8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB141310);
  }

  return result;
}

void sub_1A47794E4(uint64_t a1, double a2)
{
  if (!qword_1EB141318)
  {
    sub_1A477C300(255, &qword_1EB141320, type metadata accessor for PhotosPickerView, &type metadata for PXRetailExperienceFullscreenCardView, MEMORY[0x1E697F960]);
    v2 = sub_1A5249734();
    if (!v3)
    {
      atomic_store(v2, &qword_1EB141318);
    }
  }
}

unint64_t sub_1A477957C(double a1)
{
  result = qword_1EB141330;
  if (!qword_1EB141330)
  {
    sub_1A477C300(255, &qword_1EB141320, type metadata accessor for PhotosPickerView, &type metadata for PXRetailExperienceFullscreenCardView, MEMORY[0x1E697F960]);
    sub_1A4779664();
    sub_1A4779290(&qword_1EB1D2140, type metadata accessor for PhotosPickerView, &unk_1A535EAC4);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB141330);
  }

  return result;
}

unint64_t sub_1A4779664()
{
  result = qword_1EB141338;
  if (!qword_1EB141338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB141338);
  }

  return result;
}

unint64_t sub_1A47796B8()
{
  result = qword_1EB1D2148;
  if (!qword_1EB1D2148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1D2148);
  }

  return result;
}

uint64_t sub_1A477970C(uint64_t a1, uint64_t a2, double a3)
{
  sub_1A477C300(0, &qword_1EB141320, type metadata accessor for PhotosPickerView, &type metadata for PXRetailExperienceFullscreenCardView, MEMORY[0x1E697F960]);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A47797A8(uint64_t a1, double a2)
{
  sub_1A477C300(0, &qword_1EB141320, type metadata accessor for PhotosPickerView, &type metadata for PXRetailExperienceFullscreenCardView, MEMORY[0x1E697F960]);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1A4779874(uint64_t a1)
{
  sub_1A4779940(319);
  if (v1 <= 0x3F)
  {
    sub_1A477E5D8(319, &qword_1EB141350, sub_1A47765A4, MEMORY[0x1E6981948]);
    if (v2 <= 0x3F)
    {
      sub_1A524BB74();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1A4779940(uint64_t a1)
{
  if (!qword_1EB141348)
  {
    type metadata accessor for PickerViewModel(255);
    sub_1A4779290(qword_1EB1D1510, type metadata accessor for PickerViewModel, &unk_1A535E4FC);
    v1 = sub_1A52484C4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB141348);
    }
  }
}

unint64_t sub_1A47799D4(double a1)
{
  result = qword_1EB141358;
  if (!qword_1EB141358)
  {
    sub_1A4779A54(255, a1);
    sub_1A477957C(v2);
    sub_1A47796B8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB141358);
  }

  return result;
}

void sub_1A4779A54(uint64_t a1, double a2)
{
  if (!qword_1EB141360)
  {
    sub_1A477C300(255, &qword_1EB141320, type metadata accessor for PhotosPickerView, &type metadata for PXRetailExperienceFullscreenCardView, MEMORY[0x1E697F960]);
    v2 = sub_1A5249754();
    if (!v3)
    {
      atomic_store(v2, &qword_1EB141360);
    }
  }
}

void sub_1A4779BA4(uint64_t a1, double a2)
{
  if (!qword_1EB141378)
  {
    sub_1A4779E00(255, a2);
    sub_1A477660C(255, v2);
    sub_1A4779FE8(255, v3);
    sub_1A477A18C(255, v4);
    sub_1A477A2F8(255, v5);
    sub_1A477A434(255, v6);
    sub_1A477A538(255);
    sub_1A477E5D8(255, &qword_1EB1413E8, sub_1A477A764, MEMORY[0x1E697C5D8]);
    sub_1A4775218(&qword_1EB141428, sub_1A477A538, MEMORY[0x1E697BE60]);
    sub_1A477AA7C();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_1A477DF6C(&qword_1EB141438, sub_1A477660C, MEMORY[0x1E69E5E48]);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v8)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB141378);
    }
  }
}

void sub_1A4779E00(uint64_t a1, double a2)
{
  if (!qword_1EB141380)
  {
    sub_1A4779FE8(255, a2);
    sub_1A477A18C(255, v2);
    sub_1A477A2F8(255, v3);
    sub_1A477A434(255, v4);
    sub_1A477A538(255);
    sub_1A477E5D8(255, &qword_1EB1413E8, sub_1A477A764, MEMORY[0x1E697C5D8]);
    sub_1A4775218(&qword_1EB141428, sub_1A477A538, MEMORY[0x1E697BE60]);
    sub_1A477AA7C();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v6)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB141380);
    }
  }
}

void sub_1A4779FE8(uint64_t a1, double a2)
{
  if (!qword_1EB141388)
  {
    sub_1A477A18C(255, a2);
    sub_1A477A2F8(255, v2);
    sub_1A477A434(255, v3);
    sub_1A477A538(255);
    sub_1A477E5D8(255, &qword_1EB1413E8, sub_1A477A764, MEMORY[0x1E697C5D8]);
    sub_1A4775218(&qword_1EB141428, sub_1A477A538, MEMORY[0x1E697BE60]);
    sub_1A477AA7C();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v5)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB141388);
    }
  }
}

void sub_1A477A18C(uint64_t a1, double a2)
{
  if (!qword_1EB141390)
  {
    sub_1A477A2F8(255, a2);
    sub_1A477A434(255, v2);
    sub_1A477A538(255);
    sub_1A477E5D8(255, &qword_1EB1413E8, sub_1A477A764, MEMORY[0x1E697C5D8]);
    sub_1A4775218(&qword_1EB141428, sub_1A477A538, MEMORY[0x1E697BE60]);
    sub_1A477AA7C();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v4)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB141390);
    }
  }
}

void sub_1A477A2F8(uint64_t a1, double a2)
{
  if (!qword_1EB141398)
  {
    sub_1A477A434(255, a2);
    sub_1A477A538(255);
    sub_1A477E5D8(255, &qword_1EB1413E8, sub_1A477A764, MEMORY[0x1E697C5D8]);
    sub_1A4775218(&qword_1EB141428, sub_1A477A538, MEMORY[0x1E697BE60]);
    sub_1A477AA7C();
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v3)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB141398);
    }
  }
}

void sub_1A477A434(uint64_t a1, double a2)
{
  if (!qword_1EB1413A0)
  {
    sub_1A477A538(255);
    sub_1A477E5D8(255, &qword_1EB1413E8, sub_1A477A764, MEMORY[0x1E697C5D8]);
    sub_1A4775218(&qword_1EB141428, sub_1A477A538, MEMORY[0x1E697BE60]);
    sub_1A477AA7C();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v3)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB1413A0);
    }
  }
}

void sub_1A477A538(uint64_t a1)
{
  if (!qword_1EB1413A8)
  {
    sub_1A477A5CC(255);
    sub_1A4775218(&qword_1EB1413E0, sub_1A477A5CC, MEMORY[0x1E697D7B8]);
    v1 = sub_1A5247D04();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB1413A8);
    }
  }
}

void sub_1A477A5CC(uint64_t a1)
{
  if (!qword_1EB1413B0)
  {
    sub_1A477E5D8(255, &qword_1EB1413B8, sub_1A477A680, MEMORY[0x1E6981F40]);
    sub_1A4775260(&qword_1EB1413D8, &qword_1EB1413B8, sub_1A477A680);
    v1 = sub_1A524BDA4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB1413B0);
    }
  }
}

void sub_1A477A6A8(uint64_t a1)
{
  if (!qword_1EB1413C8)
  {
    sub_1A47765D8(255);
    sub_1A4775218(&qword_1EB1413D0, sub_1A47765D8, MEMORY[0x1E69E6338]);
    v1 = sub_1A524B9D4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB1413C8);
    }
  }
}

void sub_1A477A764(uint64_t a1)
{
  if (!qword_1EB1413F0)
  {
    sub_1A477E5D8(255, &qword_1EB1413F8, sub_1A477A804, MEMORY[0x1E69E6720]);
    sub_1A47752C4(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB1413F0);
    }
  }
}

void sub_1A477A84C(uint64_t a1, double a2)
{
  if (!qword_1EB141408)
  {
    sub_1A477A8D8(255, &qword_1EB141410, MEMORY[0x1E697F960]);
    sub_1A477A974();
    v2 = sub_1A5247F34();
    if (!v3)
    {
      atomic_store(v2, &qword_1EB141408);
    }
  }
}

void sub_1A477A8D8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    sub_1A411848C();
    v7 = v6;
    sub_1A477C598(255, &qword_1EB127480, MEMORY[0x1E6981148], MEMORY[0x1E6981138], MEMORY[0x1E697D670]);
    v9 = a3(a1, v7, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

unint64_t sub_1A477A974()
{
  result = qword_1EB141418;
  if (!qword_1EB141418)
  {
    sub_1A477A8D8(255, &qword_1EB141410, MEMORY[0x1E697F960]);
    sub_1A4775C00();
    sub_1A4775394(&qword_1EB127490, &qword_1EB127480, MEMORY[0x1E697D670], MEMORY[0x1E697D680]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB141418);
  }

  return result;
}

unint64_t sub_1A477AA7C()
{
  result = qword_1EB141430;
  if (!qword_1EB141430)
  {
    sub_1A477E5D8(255, &qword_1EB1413E8, sub_1A477A764, MEMORY[0x1E697C5D8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB141430);
  }

  return result;
}

unint64_t sub_1A477AB04()
{
  result = qword_1EB141448;
  if (!qword_1EB141448)
  {
    sub_1A4779B68(255);
    sub_1A4779E00(255, v1);
    sub_1A477660C(255, v2);
    sub_1A4779FE8(255, v3);
    sub_1A477A18C(255, v4);
    sub_1A477A2F8(255, v5);
    sub_1A477A434(255, v6);
    sub_1A477A538(255);
    sub_1A477E5D8(255, &qword_1EB1413E8, sub_1A477A764, MEMORY[0x1E697C5D8]);
    sub_1A4775218(&qword_1EB141428, sub_1A477A538, MEMORY[0x1E697BE60]);
    sub_1A477AA7C();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_1A477DF6C(&qword_1EB141438, sub_1A477660C, MEMORY[0x1E69E5E48]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB141448);
  }

  return result;
}

uint64_t objectdestroy_198Tm()
{
  v1 = (type metadata accessor for PhotosPickerView(0) - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));

  v3 = v1[8];
  v4 = sub_1A524BB74();
  (*(*(v4 - 8) + 8))(v2 + v3, v4);

  return swift_deallocObject();
}

void sub_1A477AF90(uint64_t a1)
{
  if (!qword_1EB141460)
  {
    sub_1A5240E64();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB141460);
    }
  }
}

double sub_1A477B00C()
{
  type metadata accessor for PhotosPickerView(0);
  swift_getKeyPath();
  swift_getKeyPath();
  v0 = sub_1A52479D4();
  *v1 = !*v1;
  v0(&v3, 0);

  return result;
}

void sub_1A477B0E8(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1A52479E4();

  v2 = *(v22 + 16);

  if (v2)
  {
    v3 = sub_1A524C634();
    v4 = PXLocalizedString(v3);

    sub_1A524C674();
    sub_1A3E072BC(0);
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_1A52F8E10;
    swift_getKeyPath();
    swift_getKeyPath();
    sub_1A52479E4();

    v6 = *(v22 + 16);

    v7 = MEMORY[0x1E69E65A8];
    *(v5 + 56) = MEMORY[0x1E69E6530];
    *(v5 + 64) = v7;
    *(v5 + 32) = v6;
    sub_1A524C644();
  }

  else
  {
    v8 = sub_1A524C634();
    v9 = PXLocalizedString(v8);

    sub_1A524C674();
  }

  sub_1A3D5F9DC();
  v10 = sub_1A524A464();
  v12 = v11;
  v14 = v13;
  sub_1A524A1A4();
  v15 = sub_1A524A344();
  v17 = v16;
  v19 = v18;
  v21 = v20;
  sub_1A3E04DF4(v10, v12, v14 & 1);

  *a1 = v15;
  *(a1 + 8) = v17;
  *(a1 + 16) = v19 & 1;
  *(a1 + 24) = v21;
}

uint64_t sub_1A477B35C()
{
  type metadata accessor for PhotosPickerView(0);
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_1A52479F4();
}

uint64_t sub_1A477B414@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for PhotosPickerView(0);
  v3 = objc_allocWithZone(MEMORY[0x1E69DCE48]);

  v4 = [v3 init];
  type metadata accessor for Attachment(0);
  sub_1A4779290(&qword_1EB1D2288, type metadata accessor for Attachment, &unk_1A535E4C4);
  v5 = sub_1A5248494();
  v7 = v6;
  type metadata accessor for PickerViewModel(0);
  sub_1A4779290(qword_1EB1D1510, type metadata accessor for PickerViewModel, &unk_1A535E4FC);
  result = sub_1A5248494();
  *a2 = v5;
  a2[1] = v7;
  a2[2] = result;
  a2[3] = v9;
  a2[4] = v4;
  return result;
}

unint64_t sub_1A477B574()
{
  result = qword_1EB1D2280;
  if (!qword_1EB1D2280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1D2280);
  }

  return result;
}

void sub_1A477B648(uint64_t a1, double a2)
{
  if (!qword_1EB141480)
  {
    sub_1A477B76C(255);
    sub_1A477E5D8(255, &qword_1EB1415E8, sub_1A477C36C, MEMORY[0x1E6981F40]);
    sub_1A477C5EC();
    sub_1A3D5F9DC();
    sub_1A4775260(&qword_1EB141620, &qword_1EB1415E8, sub_1A477C36C);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v3)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB141480);
    }
  }
}

void sub_1A477B7A8(uint64_t a1, double a2)
{
  if (!qword_1EB141490)
  {
    sub_1A477B8AC(255);
    sub_1A3EE1D04(255);
    sub_1A4775218(&unk_1EB1415D8, sub_1A477B8AC, MEMORY[0x1E6981880]);
    sub_1A4775218(&unk_1EB1263B0, sub_1A3EE1D04, MEMORY[0x1E69E6ED8]);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v3)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB141490);
    }
  }
}

void sub_1A477B8AC(uint64_t a1)
{
  if (!qword_1EB141498)
  {
    sub_1A477E5D8(255, &qword_1EB1414A0, sub_1A477B960, MEMORY[0x1E6981F40]);
    sub_1A4775260(&qword_1EB1415D0, &qword_1EB1414A0, sub_1A477B960);
    v1 = sub_1A524B8B4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB141498);
    }
  }
}

void sub_1A477B960(uint64_t a1)
{
  if (!qword_1EB1414A8)
  {
    sub_1A477B9E8(255);
    sub_1A477BE24(255);
    sub_1A477C0DC(255);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata3, &qword_1EB1414A8);
    }
  }
}

void sub_1A477B9E8(uint64_t a1)
{
  if (!qword_1EB1414B0)
  {
    sub_1A477E5D8(255, &qword_1EB1414B8, sub_1A477BA9C, MEMORY[0x1E6981F40]);
    sub_1A4775260(&qword_1EB141538, &qword_1EB1414B8, sub_1A477BA9C);
    v1 = sub_1A524B894();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB1414B0);
    }
  }
}

void sub_1A477BAC4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  if (!*a2)
  {
    a3(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v6)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

void sub_1A477BB78(uint64_t a1)
{
  if (!qword_1EB1414D0)
  {
    sub_1A477BC18(255);
    sub_1A477C300(255, &qword_1EB141528, sub_1A400F5B4, &type metadata for TransferProgressView, MEMORY[0x1E697E830]);
    v1 = sub_1A5249754();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB1414D0);
    }
  }
}

void sub_1A477BCD8(uint64_t a1)
{
  if (!qword_1EB1414F0)
  {
    sub_1A477E5D8(255, &qword_1EB1414F8, sub_1A477BD8C, MEMORY[0x1E6981F40]);
    sub_1A4775260(&unk_1EB141518, &qword_1EB1414F8, sub_1A477BD8C);
    v1 = sub_1A524B784();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB1414F0);
    }
  }
}

void sub_1A477BDC8(uint64_t a1)
{
  if (!qword_1EB141530)
  {
    sub_1A477BC18(255);
    v1 = sub_1A5249754();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB141530);
    }
  }
}

void sub_1A477BE24(uint64_t a1)
{
  if (!qword_1EB141540)
  {
    sub_1A477E5D8(255, &qword_1EB141548, sub_1A477BED8, MEMORY[0x1E6981F40]);
    sub_1A4775260(&qword_1EB141590, &qword_1EB141548, sub_1A477BED8);
    v1 = sub_1A524B894();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB141540);
    }
  }
}

void sub_1A477BED8(uint64_t a1)
{
  if (!qword_1EB141550)
  {
    v1 = MEMORY[0x1E69E6720];
    sub_1A477E5D8(255, &qword_1EB141558, sub_1A477BFBC, MEMORY[0x1E69E6720]);
    sub_1A477E5D8(255, &qword_1EB141570, sub_1A477C038, v1);
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v3)
    {
      atomic_store(TupleTypeMetadata, &qword_1EB141550);
    }
  }
}

void sub_1A477C0DC(uint64_t a1)
{
  if (!qword_1EB141598)
  {
    sub_1A477E5D8(255, &qword_1EB1415A0, sub_1A477C190, MEMORY[0x1E6981F40]);
    sub_1A4775260(&qword_1EB1415C8, &qword_1EB1415A0, sub_1A477C190);
    v1 = sub_1A524B894();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB141598);
    }
  }
}

void sub_1A477C1B8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  if (!*a2)
  {
    a3(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v6)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

void sub_1A477C224(uint64_t a1, double a2)
{
  if (!qword_1EB1415B0)
  {
    sub_1A477C300(255, &qword_1EB1415B8, sub_1A477C2C4, MEMORY[0x1E6981E70], MEMORY[0x1E697F960]);
    sub_1A477C2C4(255, v2);
    v3 = sub_1A5249754();
    if (!v4)
    {
      atomic_store(v3, &qword_1EB1415B0);
    }
  }
}

void sub_1A477C300(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3(255);
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

void sub_1A477C36C(uint64_t a1)
{
  if (!qword_1EB1415F0)
  {
    sub_1A477C424(255, &qword_1EB1415F8, sub_1A477C4B4);
    sub_1A477C598(255, &qword_1EB127480, MEMORY[0x1E6981148], MEMORY[0x1E6981138], MEMORY[0x1E697D670]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB1415F0);
    }
  }
}

void sub_1A477C424(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    sub_1A477CDEC(255, &unk_1EB127840, MEMORY[0x1E697E1E0], MEMORY[0x1E6980A08]);
    v4 = sub_1A5248804();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1A477C4B4(uint64_t a1)
{
  if (!qword_1EB141600)
  {
    v1 = MEMORY[0x1E697D7D0];
    sub_1A477C598(255, &unk_1EB143960, MEMORY[0x1E6981148], MEMORY[0x1E6981138], MEMORY[0x1E697D7D0]);
    sub_1A4775394(&qword_1EB141610, &unk_1EB143960, v1, MEMORY[0x1E697D7E0]);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v3)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB141600);
    }
  }
}

void sub_1A477C598(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = a5(0, a3, a4);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

unint64_t sub_1A477C5EC()
{
  result = qword_1EB141618;
  if (!qword_1EB141618)
  {
    sub_1A477B76C(255);
    sub_1A477B8AC(255);
    sub_1A3EE1D04(255);
    sub_1A4775218(&unk_1EB1415D8, sub_1A477B8AC, MEMORY[0x1E6981880]);
    sub_1A4775218(&unk_1EB1263B0, sub_1A3EE1D04, MEMORY[0x1E69E6ED8]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB141618);
  }

  return result;
}

unint64_t sub_1A477C71C()
{
  result = qword_1EB141630;
  if (!qword_1EB141630)
  {
    sub_1A477B60C(255);
    sub_1A477B76C(255);
    sub_1A477E5D8(255, &qword_1EB1415E8, sub_1A477C36C, MEMORY[0x1E6981F40]);
    sub_1A477C5EC();
    sub_1A3D5F9DC();
    sub_1A4775260(&qword_1EB141620, &qword_1EB1415E8, sub_1A477C36C);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB141630);
  }

  return result;
}

uint64_t sub_1A477C86C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1A477C8CC()
{
  v1 = *(v0 + 24);
  v2 = OBJC_IVAR____TtC12PhotosUICoreP33_4205AE50DB34A253AEBD659A3667797215PickerViewModel_transferHost;
  if (*(v1 + OBJC_IVAR____TtC12PhotosUICoreP33_4205AE50DB34A253AEBD659A3667797215PickerViewModel_transferHost))
  {
    if (qword_1EB1D14B0 != -1)
    {
      swift_once();
    }

    v3 = sub_1A5246F24();
    __swift_project_value_buffer(v3, qword_1EB1D14B8);
    v4 = sub_1A5246F04();
    v5 = sub_1A524D244();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_1A3C1C000, v4, v5, "[Host] Transfer host is not nil. Session is already running.", v6, 2u);
      MEMORY[0x1A590EEC0](v6, -1, -1);
    }
  }

  else
  {
    sub_1A5246FC4();
    sub_1A4779290(qword_1EB1D2290, type metadata accessor for PickerViewModel, &unk_1A535E43C);
    swift_unknownObjectRetain();
    *(v1 + v2) = sub_1A5246FB4();

    if (qword_1EB1D14B0 != -1)
    {
      swift_once();
    }

    v7 = sub_1A5246F24();
    __swift_project_value_buffer(v7, qword_1EB1D14B8);
    v8 = sub_1A5246F04();
    v9 = sub_1A524D244();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_1A3C1C000, v8, v9, "[Host] Starting to listen for an attestation-channel.", v10, 2u);
      MEMORY[0x1A590EEC0](v10, -1, -1);
    }

    if (*(v1 + v2))
    {
      swift_allocObject();
      swift_weakInit();

      sub_1A5246FA4();
    }
  }

  sub_1A47650F0();
}

void sub_1A477CB54(uint64_t a1)
{
  if (!qword_1EB134678)
  {
    sub_1A477CDEC(255, &unk_1EB134680, MEMORY[0x1E69E6158], MEMORY[0x1E697DB98]);
    v1 = sub_1A524DF24();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB134678);
    }
  }
}

void sub_1A477CBD8()
{
  v1 = *(v0 + 24);
  v2 = *(v1 + OBJC_IVAR____TtC12PhotosUICoreP33_4205AE50DB34A253AEBD659A3667797215PickerViewModel_displaySleepToken);
  *(v1 + OBJC_IVAR____TtC12PhotosUICoreP33_4205AE50DB34A253AEBD659A3667797215PickerViewModel_displaySleepToken) = 0;
  if (v2)
  {
    v3 = objc_opt_self();
    v4 = v2;
    v5 = [v3 sharedState];
    [v5 endDisablingIdleTimer_];
  }
}

void sub_1A477CC94(uint64_t a1)
{
  if (!qword_1EB141640)
  {
    sub_1A5246F74();
    sub_1A3C34400(255, &qword_1EB126160, MEMORY[0x1E69E7280]);
    v1 = sub_1A524ECF4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB141640);
    }
  }
}

uint64_t sub_1A477CD14()
{
  sub_1A477CC94(0);
  v3 = (*(*(v2 - 8) + 80) + 40) & ~*(*(v2 - 8) + 80);
  v4 = *(v0 + 32);
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1A3CA8098;

  return sub_1A47626A8(v8, v5, v6, v7, v4, v0 + v3);
}

void sub_1A477CDEC(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_1A477CE3C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v5)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

uint64_t sub_1A477CE9C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t objectdestroy_226Tm()
{

  return swift_deallocObject();
}

unint64_t sub_1A477CFBC()
{
  result = qword_1EB141668;
  if (!qword_1EB141668)
  {
    sub_1A477C300(255, &qword_1EB1415B8, sub_1A477C2C4, MEMORY[0x1E6981E70], MEMORY[0x1E697F960]);
    sub_1A477D074(v1);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB141668);
  }

  return result;
}

unint64_t sub_1A477D074(double a1)
{
  result = qword_1EB141670;
  if (!qword_1EB141670)
  {
    sub_1A477C2C4(255, a1);
    sub_1A477D124();
    sub_1A4775218(&qword_1EB127C68, sub_1A400F5B4, MEMORY[0x1E697FDC0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB141670);
  }

  return result;
}

unint64_t sub_1A477D124()
{
  result = qword_1EB1D22C8;
  if (!qword_1EB1D22C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1D22C8);
  }

  return result;
}

void sub_1A477D178(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, char a7)
{
  if (a7)
  {
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  v8 = a6 & 1;

  sub_1A477D1D8(a1, a2, a3, a4, a5, v8);
}

void sub_1A477D1D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a6)
  {
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }
}

void sub_1A477D228(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, char a7)
{
  if (a7)
  {
  }

  else
  {
    v8 = a6 & 1;

    sub_1A477D288(a1, a2, a3, a4, a5, v8);
  }
}

double sub_1A477D288(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a6)
  {
  }

  return result;
}

uint64_t sub_1A477D2DC(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_1A477E5D8(0, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1A477D35C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1A477E5D8(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t sub_1A477D430()
{
  result = qword_1EB141680;
  if (!qword_1EB141680)
  {
    sub_1A477BC18(255);
    sub_1A477E8CC(&qword_1EB141688, sub_1A477BC60, sub_1A477D518);
    sub_1A4775218(&qword_1EB127C68, sub_1A400F5B4, MEMORY[0x1E697FDC0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB141680);
  }

  return result;
}

unint64_t sub_1A477D594()
{
  result = qword_1EB1416A0;
  if (!qword_1EB1416A0)
  {
    sub_1A477BB78(255);
    sub_1A477D430();
    sub_1A477D614();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1416A0);
  }

  return result;
}

unint64_t sub_1A477D614()
{
  result = qword_1EB1416A8;
  if (!qword_1EB1416A8)
  {
    sub_1A477C300(255, &qword_1EB141528, sub_1A400F5B4, &type metadata for TransferProgressView, MEMORY[0x1E697E830]);
    sub_1A477D6FC();
    sub_1A4775218(&qword_1EB127C68, sub_1A400F5B4, MEMORY[0x1E697FDC0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1416A8);
  }

  return result;
}

unint64_t sub_1A477D6FC()
{
  result = qword_1EB1D22D0[0];
  if (!qword_1EB1D22D0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB1D22D0);
  }

  return result;
}

unint64_t sub_1A477D750()
{
  result = qword_1EB1416B0;
  if (!qword_1EB1416B0)
  {
    sub_1A477BDC8(255);
    sub_1A477D430();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1416B0);
  }

  return result;
}

double sub_1A477D7D0(uint64_t a1)
{
  if (a1)
  {
  }

  return result;
}

double sub_1A477D840(uint64_t a1)
{
  if (a1)
  {
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_indexTm_7(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = (a4)(0, a2, a3);
  v7 = *(*(v6 - 8) + 48);

  return v7(a1, a2, v6);
}

uint64_t __swift_store_extra_inhabitant_indexTm_7(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v7 = (a5)(0, a2, a3, a4);
  v8 = *(*(v7 - 8) + 56);

  return v8(a1, a2, a2, v7);
}

uint64_t sub_1A477D9E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  result = a4(319, a2, a3);
  if (v5 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_1A477DA60(uint64_t a1)
{
  if (!qword_1EB1416C0)
  {
    sub_1A5248464();
    sub_1A4779B2C(255);
    sub_1A477E8CC(&qword_1EB141440, sub_1A4779B2C, sub_1A477AB04);
    v1 = sub_1A5248834();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB1416C0);
    }
  }
}

void sub_1A477DB14(uint64_t a1)
{
  if (!qword_1EB1416D0)
  {
    sub_1A5248464();
    sub_1A477B5D0(255);
    sub_1A477E8CC(&qword_1EB141628, sub_1A477B5D0, sub_1A477C71C);
    v1 = sub_1A5248834();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB1416D0);
    }
  }
}

void sub_1A477DC84(uint64_t a1, double a2)
{
  if (!qword_1EB1416E0)
  {
    sub_1A477DD58(255);
    sub_1A47760A0(255);
    sub_1A477DEBC();
    sub_1A477DF6C(&qword_1EB141708, sub_1A47760A0, MEMORY[0x1E69E7C80]);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v3)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB1416E0);
    }
  }
}

void sub_1A477DD58(uint64_t a1)
{
  if (!qword_1EB1416E8)
  {
    sub_1A477DDFC(255, &qword_1EB1416F0, sub_1A47755AC, sub_1A477DE88, &unk_1A5499BE8);
    v1 = sub_1A5248804();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB1416E8);
    }
  }
}

void sub_1A477DDFC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(void), uint64_t a5)
{
  if (!*a2)
  {
    a3(255);
    a4();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v8)
    {
      atomic_store(OpaqueTypeMetadata2, a2);
    }
  }
}

unint64_t sub_1A477DEBC()
{
  result = qword_1EB141700;
  if (!qword_1EB141700)
  {
    sub_1A477DD58(255);
    sub_1A47755AC(255);
    sub_1A477DE88();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB141700);
  }

  return result;
}

uint64_t sub_1A477DF6C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    a2(255);
    sub_1A4779290(qword_1EB1D2260, type metadata accessor for Attachment.Status, &unk_1A535E2E4);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1A477E004(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  if (!*a2)
  {
    sub_1A477E5D8(255, a3, a4, MEMORY[0x1E6981F40]);
    v5 = sub_1A52483B4();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_1A477E080(uint64_t a1)
{
  if (!qword_1EB141718)
  {
    type metadata accessor for Attachment(255);
    sub_1A4779290(&qword_1EB1D2288, type metadata accessor for Attachment, &unk_1A535E4C4);
    v1 = sub_1A52484C4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB141718);
    }
  }
}

uint64_t sub_1A477E114()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1A3D60150;

  return sub_1A476AD3C();
}

uint64_t objectdestroy_293Tm()
{

  return swift_deallocObject();
}

unint64_t sub_1A477E214()
{
  result = qword_1EB1D2510;
  if (!qword_1EB1D2510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1D2510);
  }

  return result;
}

unint64_t sub_1A477E268()
{
  result = qword_1EB141750;
  if (!qword_1EB141750)
  {
    sub_1A4775778(255);
    sub_1A477E2E8();
    sub_1A477E3D0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB141750);
  }

  return result;
}

unint64_t sub_1A477E2E8()
{
  result = qword_1EB141758;
  if (!qword_1EB141758)
  {
    sub_1A4775844(255);
    sub_1A477E8CC(&qword_1EB141760, sub_1A4118464, sub_1A4775C00);
    sub_1A4775218(&qword_1EB141768, sub_1A477588C, MEMORY[0x1E697BD90]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB141758);
  }

  return result;
}

unint64_t sub_1A477E3D0()
{
  result = qword_1EB141770;
  if (!qword_1EB141770)
  {
    sub_1A4775C34(255);
    sub_1A4779290(&qword_1EB1D2518, type metadata accessor for VideoView, &unk_1A535E1D4);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB141770);
  }

  return result;
}

uint64_t sub_1A477E480(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_1A477E524(uint64_t a1)
{
  if (!qword_1EB141790)
  {
    sub_1A477E5D8(255, &qword_1EB141798, sub_1A477E63C, MEMORY[0x1E6981F40]);
    sub_1A4775260(&qword_1EB1417A8, &qword_1EB141798, sub_1A477E63C);
    v1 = sub_1A524B894();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB141790);
    }
  }
}

void sub_1A477E5D8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1A477E6A0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_1A477E754()
{
  result = qword_1EB1417D0;
  if (!qword_1EB1417D0)
  {
    sub_1A477DC48(255);
    sub_1A477DD58(255);
    sub_1A47760A0(255);
    sub_1A477DEBC();
    sub_1A477DF6C(&qword_1EB141708, sub_1A47760A0, MEMORY[0x1E69E7C80]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1417D0);
  }

  return result;
}

uint64_t sub_1A477E8CC(unint64_t *a1, uint64_t (*a2)(uint64_t), void (*a3)(void))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    a3();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1A477E984()
{
  result = qword_1EB1D2528[0];
  if (!qword_1EB1D2528[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB1D2528);
  }

  return result;
}

uint64_t sub_1A477E9E4()
{

  return sub_1A475DDD8();
}

void sub_1A477EAB4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = OBJC_IVAR____TtC12PhotosUICore50BasicInteractiveScreenEdgeSwipeDismissalTransition_interactiveTransition;
  *(v3 + v4) = [objc_allocWithZone(MEMORY[0x1E69DCD60]) init];
  v5 = v3 + OBJC_IVAR____TtC12PhotosUICore50BasicInteractiveScreenEdgeSwipeDismissalTransition_containerWidth;
  *v5 = 0;
  *(v5 + 8) = 1;
  if (qword_1EB1D26B0 != -1)
  {
    swift_once();
  }

  [qword_1EB15B190 screenEdgeSwipeForegroundInset];
  sub_1A5246214();
}

void *sub_1A477EBF0()
{
  v1 = *(v0 + OBJC_IVAR____TtC12PhotosUICore50BasicInteractiveScreenEdgeSwipeDismissalTransition_interactiveTransition);
  v2 = v1;
  return v1;
}

void sub_1A477EC20(void *a1)
{
  v3 = [a1 view];
  v17 = [v3 window];

  if (!v17 || (v4 = -1.0, ([v17 px_hasRightToLeftLayoutDirection] & 1) == 0))
  {
    v4 = 1.0;
  }

  v5 = [a1 state];
  if (v5 > 2)
  {
    if ((v5 - 4) >= 2)
    {
      v6 = v17;
      if (v5 == 3)
      {
        [a1 velocityInView_];
        v15 = *(v1 + OBJC_IVAR____TtC12PhotosUICore50BasicInteractiveScreenEdgeSwipeDismissalTransition_foregroundView);
        if (v15 && (*(v1 + OBJC_IVAR____TtC12PhotosUICore50BasicInteractiveScreenEdgeSwipeDismissalTransition_foregroundViewInitialCenter + 16) & 1) == 0)
        {
          [v15 frame];
          CGRectGetHeight(v19);
          sub_1A524DB64();
        }

        v16 = *(v1 + OBJC_IVAR____TtC12PhotosUICore50BasicInteractiveScreenEdgeSwipeDismissalTransition_interactiveTransition);
        if (v4 * v14 < 0.0)
        {
          [v16 cancelInteractiveTransition];
        }

        else
        {
          [v16 finishInteractiveTransition];
        }

        goto LABEL_27;
      }

      goto LABEL_23;
    }

    [*(v1 + OBJC_IVAR____TtC12PhotosUICore50BasicInteractiveScreenEdgeSwipeDismissalTransition_interactiveTransition) cancelInteractiveTransition];
LABEL_14:

LABEL_27:

    return;
  }

  if (!v5)
  {
    goto LABEL_14;
  }

  v6 = v17;
  if (v5 == 2 && (*(v1 + OBJC_IVAR____TtC12PhotosUICore50BasicInteractiveScreenEdgeSwipeDismissalTransition_containerWidth + 8) & 1) == 0)
  {
    if (!v17)
    {
      return;
    }

    v7 = *(v1 + OBJC_IVAR____TtC12PhotosUICore50BasicInteractiveScreenEdgeSwipeDismissalTransition_containerWidth);
    [a1 translationInView_];
    v9 = v4 * v8 / v7;
    if (qword_1EB1D26B0 != -1)
    {
      swift_once();
    }

    v10 = qword_1EB15B190;
    [qword_1EB15B190 screenEdgeSwipeInteractionRelativeDistance];
    v12 = tanh(v9 / v11 + v9 / v11);
    [v10 screenEdgeSwipeInteractiveFraction];
    [*(v1 + OBJC_IVAR____TtC12PhotosUICore50BasicInteractiveScreenEdgeSwipeDismissalTransition_interactiveTransition) updateInteractiveTransition_];
    goto LABEL_14;
  }

LABEL_23:
}

void sub_1A477F124(void *a1)
{
  v3 = [a1 containerView];
  [v3 bounds];
  Width = CGRectGetWidth(v21);
  if (Width <= 1.0)
  {
    Width = 1.0;
  }

  v5 = (v1 + OBJC_IVAR____TtC12PhotosUICore50BasicInteractiveScreenEdgeSwipeDismissalTransition_containerWidth);
  *v5 = Width;
  *(v5 + 8) = 0;
  v6 = [objc_allocWithZone(MEMORY[0x1E69DD250]) init];
  [v3 addSubview_];
  v7 = objc_opt_self();
  v8 = (*((*MEMORY[0x1E69E7D40] & *v1) + 0xE0))(a1);
  v9 = swift_allocObject();
  *(v9 + 16) = v6;
  v19 = sub_1A477F6A4;
  v20 = v9;
  aBlock = MEMORY[0x1E69E9820];
  v16 = 1107296256;
  v17 = sub_1A3C2E0D0;
  v18 = &block_descriptor_9_10;
  v10 = _Block_copy(&aBlock);
  v11 = v6;

  v12 = swift_allocObject();
  v12[2] = v11;
  v12[3] = a1;
  v12[4] = v1;
  v19 = sub_1A477F6F8;
  v20 = v12;
  aBlock = MEMORY[0x1E69E9820];
  v16 = 1107296256;
  v17 = sub_1A3E01E70;
  v18 = &block_descriptor_15_6;
  v13 = _Block_copy(&aBlock);
  v14 = v11;
  swift_unknownObjectRetain();
  v1;

  [v7 animateWithDuration:196608 delay:v10 options:v13 animations:v8 completion:0.0];
  _Block_release(v13);
  _Block_release(v10);
  sub_1A52461E4();
}

id sub_1A477F500()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BasicInteractiveScreenEdgeSwipeDismissalTransition();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_1A477F60C()
{
  sub_1A477F754();
  result = [swift_getObjCClassFromMetadata() sharedInstance];
  qword_1EB15B190 = result;
  return result;
}

id sub_1A477F66C()
{
  if (*(v0 + 24))
  {
    v1 = (v0 + 32);
  }

  else
  {
    v1 = (v0 + 48);
  }

  v2 = *v1;
  if (*(v0 + 24))
  {
    v3 = (v0 + 40);
  }

  else
  {
    v3 = (v0 + 56);
  }

  return [*(v0 + 16) setCenter_];
}

id sub_1A477F6A4()
{
  v1 = *(v0 + 16);
  [v1 alpha];
  v3 = v2 + -1.0;

  return [v1 setAlpha_];
}

uint64_t sub_1A477F6F8()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  [v1 removeFromSuperview];
  v4 = [v2 transitionWasCancelled];
  return (*(v3 + OBJC_IVAR____TtC12PhotosUICore50BasicInteractiveScreenEdgeSwipeDismissalTransition_completionHandler))(v4 ^ 1);
}

unint64_t sub_1A477F754()
{
  result = qword_1EB126740;
  if (!qword_1EB126740)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EB126740);
  }

  return result;
}

uint64_t sub_1A477F7B8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LemonadeICloudLinksShelfProvider(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1A477F81C(void *a1@<X0>, uint64_t a2@<X8>)
{
  strcpy(a2, "icloud-links");
  *(a2 + 13) = 0;
  *(a2 + 14) = -5120;
  v4 = type metadata accessor for LemonadeICloudLinksFeature(0);
  *(a2 + v4[7]) = a1;
  v5 = v4[5];
  v6 = a1;
  sub_1A465E568(v6, a2 + v5);
  v7 = PXCMMCapabilitiesForPhotoLibrary(v6);

  *(a2 + v4[6]) = v7 != 0;
}

id sub_1A477F8C4(uint64_t a1)
{
  v2 = [*(v1 + *(a1 + 28)) px_virtualCollections];
  v3 = [v2 completeMyMomentCollection];

  return v3;
}

uint64_t sub_1A477F968(uint64_t a1)
{
  result = sub_1A477F9C0(&unk_1EB129C78, type metadata accessor for LemonadeICloudLinksFeature, &unk_1A535F02C);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1A477F9C0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

char *sub_1A477FA30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for LemonadeNavigationDestination(0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for LemonadeDetailsContext(0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v34 - v12;
  sub_1A486B6E8(&v34 - v12);
  sub_1A47800D8(a2, v7, type metadata accessor for LemonadeNavigationDestination);
  v14 = sub_1A477FE10();
  v36 = v7;
  if (v14)
  {
    v15 = v14;
    v16 = [objc_allocWithZone(PXProgrammaticNavigationDestination) initWithObject:v14 revealMode:1];
    result = [v15 photoLibrary];
    if (!result)
    {
      __break(1u);
      return result;
    }

    v18 = result;
    type metadata accessor for LemonadeFeedNavigationParticipant();
    v35 = sub_1A3DC4DE4(v16, v18);
  }

  else
  {
    v35 = 0;
  }

  v37 = *(a3 + OBJC_IVAR____TtC12PhotosUICore25LemonadeNavigationContext_presentationContext);
  sub_1A47800D8(v13, v10, type metadata accessor for LemonadeDetailsContext);
  v19 = *(a3 + OBJC_IVAR____TtC12PhotosUICore25LemonadeNavigationContext_photoLibraryContext);
  v20 = *(v19 + 16);
  v21 = *(v19 + 40);
  if (v21)
  {
    v22 = *((*MEMORY[0x1E69E7D40] & *v21) + 0x2E8);
    v23 = v20;
    v24 = v21;
    v25 = v22();
    v27 = v26;
  }

  else
  {
    v28 = v20;
    v25 = 0;
    v27 = 0;
  }

  type metadata accessor for LemonadeDestinationRootViewController(0);
  v29 = *(v19 + 40);
  v30 = v29;
  v31 = sub_1A477FD10(a3, a2);
  v32 = sub_1A4655B34();
  v33 = sub_1A44D648C(v36, v35, &v37, v10, v20, v25, v27, v29, v31, v32 & 1);
  sub_1A4784080(v13, type metadata accessor for LemonadeDetailsContext);
  return v33;
}

uint64_t sub_1A477FD10(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LemonadeNavigationDestination(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = (&v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (!*(*(a1 + OBJC_IVAR____TtC12PhotosUICore25LemonadeNavigationContext_photoLibraryContext) + 40))
  {
    return 0;
  }

  sub_1A47800D8(a2, v6, type metadata accessor for LemonadeNavigationDestination);
  if (swift_getEnumCaseMultiPayload())
  {
    sub_1A4784080(v6, type metadata accessor for LemonadeNavigationDestination);
    return 0;
  }

  v8 = *v6;

  return v8;
}

id sub_1A477FE10()
{
  v1 = type metadata accessor for LemonadeNavigationDestination(0);
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v24 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A47800D8(v0, v3, type metadata accessor for LemonadeNavigationDestination);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  result = 0;
  switch(EnumCaseMultiPayload)
  {
    case 1:
    case 35:
      v6 = *v3;
      goto LABEL_17;
    case 2:
      v13 = *(v3 + 1);
      v14 = *(v3 + 2);
      v15 = v3[24];
      *&v24 = *v3;
      *(&v24 + 1) = v13;
      *&v25 = v14;
      BYTE8(v25) = v15;
      sub_1A3C3682C(0);
      goto LABEL_14;
    case 3:
      v16 = *(v3 + 1);
      v17 = *(v3 + 2);
      v18 = v3[24];
      *&v24 = *v3;
      *(&v24 + 1) = v16;
      *&v25 = v17;
      BYTE8(v25) = v18;
      sub_1A3C47924(0);
LABEL_14:
      v19 = sub_1A414D034();

      return v19;
    case 4:
      v11 = *(v3 + 1);
      v24 = *v3;
      v25 = v11;
      v26 = *(v3 + 2);
      *&v27[0] = *(v3 + 6);
      v12 = sub_1A47D6C94();
      sub_1A4192D00(&v24);
      return v12;
    case 5:
      v20 = *(v3 + 1);
      v24 = *v3;
      v25 = v20;
      v26 = *(v3 + 2);
      *&v27[0] = *(v3 + 6);
      v21 = sub_1A4333A78();
      sub_1A4192CAC(&v24);
      return v21;
    case 6:
      v8 = *(v3 + 3);
      v26 = *(v3 + 2);
      v27[0] = v8;
      *(v27 + 9) = *(v3 + 57);
      v9 = *(v3 + 1);
      v24 = *v3;
      v25 = v9;
      v10 = sub_1A45A4030();
      sub_1A419294C(&v24);
      return v10;
    case 7:
      v7 = sub_1A41CF01C(*v3);
      goto LABEL_16;
    case 8:
      v7 = sub_1A3D6609C(*v3);
      goto LABEL_16;
    case 9:
      v7 = sub_1A4617FAC(*v3);
      goto LABEL_16;
    case 10:
      v7 = sub_1A44ED12C(*v3);
LABEL_16:
      v6 = v7;
      goto LABEL_17;
    case 11:
    case 12:
    case 13:
    case 14:
    case 15:
    case 16:
    case 17:
    case 18:
    case 19:
    case 20:
    case 21:
    case 22:
    case 23:
    case 24:
    case 25:
    case 26:
    case 27:
    case 28:
    case 29:
    case 30:
    case 31:
    case 32:
    case 33:
    case 34:
    case 36:
    case 37:
    case 38:
      sub_1A4784080(v3, type metadata accessor for LemonadeNavigationDestination);
      return 0;
    case 39:
    case 40:
      return result;
    default:
      if (*v3)
      {
        v6 = *v3;
LABEL_17:

        return v6;
      }

      else
      {
        v22 = *(*(v3 + 1) + 16);
        v23 = [v22 px_rootAlbumCollectionList];

        return v23;
      }
  }
}

uint64_t sub_1A47800D8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_1A4780174()
{
  result = qword_1EB1256C0;
  if (!qword_1EB1256C0)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EB1256C0);
  }

  return result;
}

uint64_t sub_1A47801D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_getAssociatedTypeWitness();
  sub_1A524DF24();
  sub_1A524B694();
  return v5;
}

uint64_t sub_1A4780238@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void (*a6)(__n128)@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v46 = a7;
  v47 = a6;
  v43 = a4;
  v44 = a5;
  v48 = a3;
  v40 = a12;
  v16 = *(a8 - 8);
  v45 = *(v16 + 64);
  v39 = a10;
  MEMORY[0x1EEE9AC00](a1);
  v41 = &v37 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4785874(0, &qword_1EB138CA8, sub_1A4780140, MEMORY[0x1E697DA80]);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v42 = &v37 - v19;
  *a9 = swift_getKeyPath();
  *(a9 + 8) = 0;
  *(a9 + 16) = swift_getKeyPath();
  *(a9 + 24) = 0;
  *(a9 + 32) = 0;
  *(a9 + 40) = 0;
  *(a9 + 48) = 0;
  *(a9 + 56) = swift_getKeyPath();
  *(a9 + 64) = 0;
  *(a9 + 72) = swift_getKeyPath();
  *(a9 + 80) = 0;
  v49[0] = a8;
  v49[1] = a10;
  v49[2] = a11;
  v49[3] = a12;
  v37 = a11;
  v20 = type metadata accessor for LemonadeFeed(0, v49);
  v21 = v20[16];
  *(a9 + v21) = swift_getKeyPath();
  sub_1A4785874(0, &unk_1EB128A60, MEMORY[0x1E697BF90], MEMORY[0x1E697DCB8]);
  swift_storeEnumTagMultiPayload();
  v22 = a9 + v20[17];
  *v22 = swift_getKeyPath();
  *(v22 + 8) = 0;
  v38 = v20[18];
  sub_1A4780140(0);
  sub_1A5247C74();
  v23 = (a9 + v20[19]);
  *v23 = sub_1A47801D8(0, a8, v24, a11);
  v23[1] = v25;
  v26 = *(v16 + 16);
  v26(a9 + v20[20], a1, a8);
  *(a9 + v20[21]) = a2;
  *(a9 + v20[24]) = v48;
  v27 = (a9 + v20[22]);
  v28 = v44;
  *v27 = v43;
  v27[1] = v28;

  (v47)(v29);
  v30 = v41;
  v26(v41, a1, a8);
  v31 = (*(v16 + 80) + 48) & ~*(v16 + 80);
  v32 = swift_allocObject();
  v33 = v39;
  *(v32 + 2) = a8;
  *(v32 + 3) = v33;
  v34 = v40;
  *(v32 + 4) = v37;
  *(v32 + 5) = v34;
  (*(v16 + 32))(&v32[v31], v30, a8);
  v35 = v42;
  sub_1A5247C74();

  (*(v16 + 8))(a1, a8);
  return sub_1A437E5D0(v35, a9 + v38);
}

uint64_t sub_1A4780694@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v2 = a1;
  v162 = a2;
  v168 = *(a1 + 32);
  v3 = *&v168;
  v4 = *(a1 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v161 = AssociatedTypeWitness;
  v134 = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](v134);
  v132 = &v128 - v6;
  v172 = v2;
  v7 = *(v2 - 8);
  v2 -= 8;
  *&v175 = v2 + 48;
  v131 = v8;
  v169 = v7;
  MEMORY[0x1EEE9AC00](v9);
  v176 = v10;
  v170 = &v128 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v130 = sub_1A5249234();
  v129 = *(v130 - 8);
  MEMORY[0x1EEE9AC00](v130);
  v128 = &v128 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getAssociatedTypeWitness();
  v171 = sub_1A5248804();
  type metadata accessor for LemonadeFeedContents(255, v4, v3, v12);
  *&v174 = *(v2 + 32);
  swift_getTupleTypeMetadata2();
  sub_1A524BE24();
  swift_getWitnessTable();
  v13 = sub_1A524B894();
  v166 = MEMORY[0x1E6981870];
  WitnessTable = swift_getWitnessTable();
  v15 = sub_1A3D5F9DC();
  *&v182 = v13;
  *(&v182 + 1) = MEMORY[0x1E69E6158];
  v16 = MEMORY[0x1E69E6158];
  v183 = WitnessTable;
  v184 = v15;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  *&v182 = v13;
  *(&v182 + 1) = v16;
  v183 = WitnessTable;
  v184 = v15;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  *&v182 = OpaqueTypeMetadata2;
  *(&v182 + 1) = OpaqueTypeConformance2;
  v19 = swift_getOpaqueTypeMetadata2();
  *&v182 = OpaqueTypeMetadata2;
  *(&v182 + 1) = OpaqueTypeConformance2;
  v20 = swift_getOpaqueTypeConformance2();
  *&v182 = v19;
  *(&v182 + 1) = v20;
  swift_getOpaqueTypeMetadata2();
  *&v182 = v19;
  *(&v182 + 1) = v20;
  swift_getOpaqueTypeConformance2();
  v21 = sub_1A5242CE4();
  swift_getAssociatedTypeWitness();
  v167 = v4;
  swift_getAssociatedConformanceWitness();
  v22 = swift_getAssociatedTypeWitness();
  v23 = swift_getWitnessTable();
  v24 = swift_getAssociatedConformanceWitness();
  *&v182 = v21;
  *(&v182 + 1) = v22;
  v183 = v23;
  v184 = v24;
  swift_getOpaqueTypeMetadata2();
  v25 = sub_1A5249754();
  v188 = swift_getAssociatedConformanceWitness();
  v189 = MEMORY[0x1E697EBF8];
  v26 = swift_getWitnessTable();
  *&v182 = v21;
  *(&v182 + 1) = v22;
  v183 = v23;
  v184 = v24;
  v27 = swift_getOpaqueTypeConformance2();
  v186 = v26;
  v187 = v27;
  v173 = v25;
  v171 = swift_getWitnessTable();
  v28 = sub_1A524B894();
  v140 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28);
  v135 = &v128 - v29;
  v30 = sub_1A5243204();
  v31 = swift_getWitnessTable();
  v32 = sub_1A3C36CA4(&unk_1EB129110, MEMORY[0x1E69C23C0], MEMORY[0x1E69C23C8]);
  *&v182 = v28;
  *(&v182 + 1) = v30;
  v183 = v31;
  v184 = v32;
  v33 = swift_getOpaqueTypeMetadata2();
  v141 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v163 = &v128 - v34;
  v146 = v28;
  *&v182 = v28;
  *(&v182 + 1) = v30;
  v137 = v30;
  v138 = v31;
  v183 = v31;
  v184 = v32;
  v136 = v32;
  v35 = swift_getOpaqueTypeConformance2();
  *&v182 = v33;
  v36 = MEMORY[0x1E69E6158];
  *(&v182 + 1) = MEMORY[0x1E69E6158];
  v37 = MEMORY[0x1E69E6180];
  v183 = v35;
  v184 = MEMORY[0x1E69E6180];
  v38 = swift_getOpaqueTypeMetadata2();
  v147 = *(v38 - 8);
  MEMORY[0x1EEE9AC00](v38);
  v164 = &v128 - v39;
  v40 = MEMORY[0x1E69E6720];
  sub_1A3C399DC(255, &qword_1EB126FA0, v36, MEMORY[0x1E69E6720]);
  v42 = v41;
  v142 = v33;
  *&v182 = v33;
  *(&v182 + 1) = v36;
  v139 = v35;
  v183 = v35;
  v184 = v37;
  v43 = swift_getOpaqueTypeConformance2();
  v44 = sub_1A4781D3C(&qword_1EB126F90, &qword_1EB126FA0, v36);
  *&v182 = v38;
  *(&v182 + 1) = v42;
  v183 = v43;
  v184 = v44;
  v45 = swift_getOpaqueTypeMetadata2();
  v152 = *(v45 - 8);
  MEMORY[0x1EEE9AC00](v45);
  v151 = &v128 - v46;
  v47 = MEMORY[0x1E69E6370];
  sub_1A3C399DC(255, &qword_1EB126DF0, MEMORY[0x1E69E6370], v40);
  v49 = v48;
  v148 = v38;
  *&v182 = v38;
  *(&v182 + 1) = v42;
  v144 = v42;
  v145 = v43;
  v183 = v43;
  v184 = v44;
  v143 = v44;
  v50 = swift_getOpaqueTypeConformance2();
  v51 = sub_1A4781D3C(&qword_1EB126DE8, &qword_1EB126DF0, v47);
  *&v182 = v45;
  *(&v182 + 1) = v49;
  v183 = v50;
  v184 = v51;
  v52 = swift_getOpaqueTypeMetadata2();
  v159 = *(v52 - 8);
  MEMORY[0x1EEE9AC00](v52);
  v165 = &v128 - v53;
  v153 = v45;
  *&v182 = v45;
  *(&v182 + 1) = v49;
  v150 = v50;
  v183 = v50;
  v184 = v51;
  v54 = swift_getOpaqueTypeConformance2();
  v160 = v52;
  *&v182 = v52;
  *(&v182 + 1) = v49;
  v149 = v49;
  v155 = v54;
  v183 = v54;
  v184 = v51;
  v166 = v51;
  v158 = swift_getOpaqueTypeMetadata2();
  v157 = *(v158 - 8);
  MEMORY[0x1EEE9AC00](v158);
  v154 = &v128 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v56);
  v156 = &v128 - v57;
  *&v58 = v168;
  *(&v58 + 1) = *v175;
  *&v59 = v167;
  *(&v59 + 1) = v174;
  v174 = v59;
  v178 = v59;
  v179 = v58;
  v175 = v58;
  v60 = v177;
  v180 = v177;
  sub_1A5249574();
  v61 = v135;
  sub_1A524B884();
  v62 = *v60;
  LOBYTE(v52) = *(v60 + 8);

  if ((v52 & 1) == 0)
  {
    v63 = sub_1A524D254();
    v64 = sub_1A524A014();
    sub_1A5246DF4(v63, &dword_1A3C1C000, v64, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x1E69E7CC0]);

    v65 = v128;
    sub_1A5249224();
    swift_getAtKeyPath();

    (*(v129 + 8))(v65, v130);
    v62 = v182;
  }

  *&v182 = v62;
  v66 = v169;
  *&v67 = v169 + 16;
  v173 = *(v169 + 16);
  v68 = v170;
  v69 = v172;
  v173(v170, v177, v172);
  v70 = *(v66 + 80);
  v71 = (v70 + 48) & ~v70;
  v72 = swift_allocObject();
  v73 = v175;
  *(v72 + 16) = v174;
  *(v72 + 32) = v73;
  v75 = *(v66 + 32);
  v74 = v66 + 32;
  v171 = v75;
  v75(v72 + v71, v68, v69);
  swift_checkMetadataState();
  v76 = v146;
  sub_1A524B144();

  (*(v140 + 8))(v61, v76);
  v77 = v177;
  *&v182 = (*(*&v168 + 72))(v167);
  *(&v182 + 1) = v78;
  v168 = v67;
  v173(v68, v77, v69);
  v167 = v70;
  v79 = swift_allocObject();
  v80 = v175;
  *(v79 + 16) = v174;
  *(v79 + 32) = v80;
  v146 = v71;
  v171(v79 + v71, v68, v69);
  v81 = v142;
  v82 = v163;
  sub_1A524B144();

  (*(v141 + 8))(v82, v81);
  v83 = *(v69 + 72);
  sub_1A4785874(0, &qword_1EB138CA8, sub_1A4780140, MEMORY[0x1E697DA80]);
  v163 = v83;
  v142 = v84;
  sub_1A5247C84();
  v85 = v184;
  if (v184)
  {
    v86 = v185;
    v87 = __swift_project_boxed_opaque_existential_1(&v182, v184);
    v88 = *(v85 - 8);
    v89 = MEMORY[0x1EEE9AC00](v87);
    v91 = &v128 - ((v90 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v88 + 16))(v91, v89);
    sub_1A4784080(&v182, sub_1A4780140);
    v92 = (*(v86 + 16))(v85, v86);
    v94 = v93;
    (*(v88 + 8))(v91, v85);
    v68 = v170;
  }

  else
  {
    sub_1A4784080(&v182, sub_1A4780140);
    v92 = 0;
    v94 = 0;
  }

  *&v182 = v92;
  *(&v182 + 1) = v94;
  v95 = v177;
  v96 = v172;
  v173(v68, v177, v172);
  v97 = v146;
  v98 = swift_allocObject();
  v99 = v175;
  *(v98 + 16) = v174;
  *(v98 + 32) = v99;
  v169 = v74;
  v171(v98 + v97, v68, v96);
  swift_checkMetadataState();
  v100 = v151;
  v101 = v148;
  v102 = v164;
  sub_1A524B144();

  (*(v147 + 8))(v102, v101);
  v182 = *(v95 + *(v96 + 76));
  sub_1A524DF24();
  sub_1A524B6D4();
  sub_1A524B6A4();
  if (v181)
  {
    sub_1A5245904();
  }

  LOBYTE(v182) = 2;
  v103 = v170;
  v104 = v172;
  v173(v170, v177, v172);
  v105 = swift_allocObject();
  v106 = v175;
  *(v105 + 16) = v174;
  *(v105 + 32) = v106;
  v171(v105 + v97, v103, v104);
  swift_checkMetadataState();
  v107 = v153;
  sub_1A524B144();

  (*(v152 + 8))(v100, v107);
  sub_1A5247C84();
  v108 = v184;
  if (v184)
  {
    v109 = v185;
    v110 = __swift_project_boxed_opaque_existential_1(&v182, v184);
    v111 = *(v108 - 8);
    v112 = MEMORY[0x1EEE9AC00](v110);
    v114 = &v128 - ((v113 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v111 + 16))(v114, v112);
    sub_1A4784080(&v182, sub_1A4780140);
    LOBYTE(v109) = (*(v109 + 24))(v108, v109);
    (*(v111 + 8))(v114, v108);
    v103 = v170;
    v115 = v109 & 1;
  }

  else
  {
    sub_1A4784080(&v182, sub_1A4780140);
    v115 = 2;
  }

  LOBYTE(v182) = v115;
  v116 = v172;
  v173(v103, v177, v172);
  v117 = swift_allocObject();
  v118 = v175;
  *(v117 + 16) = v174;
  *(v117 + 32) = v118;
  v171(v117 + v97, v103, v116);
  v119 = v154;
  v120 = v160;
  v121 = v165;
  sub_1A524B144();

  (*(v159 + 8))(v121, v120);
  v122 = v157;
  v123 = *(v157 + 16);
  v124 = v156;
  v125 = v158;
  v123(v156, v119, v158);
  v126 = *(v122 + 8);
  v126(v119, v125);
  v123(v162, v124, v125);
  return (v126)(v124, v125);
}

uint64_t sub_1A4781D3C(unint64_t *a1, unint64_t *a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_1A3C399DC(255, a2, a3, MEMORY[0x1E69E6720]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1A4781DB4(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, unint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v55 = a1;
  v64 = a6;
  *&v69 = a2;
  *(&v69 + 1) = a3;
  v70 = a4;
  v71 = a5;
  v52 = a5;
  v53 = type metadata accessor for LemonadeFeed(0, &v69);
  v50 = *(v53 - 8);
  v48[13] = *(v50 + 64);
  MEMORY[0x1EEE9AC00](v53);
  v49 = v48 - v9;
  type metadata accessor for LemonadeFeedContents(255, a2, a4, v10);
  v51 = a3;
  swift_getTupleTypeMetadata2();
  sub_1A524BE24();
  swift_getWitnessTable();
  v11 = sub_1A524B894();
  WitnessTable = swift_getWitnessTable();
  v13 = sub_1A3D5F9DC();
  v14 = MEMORY[0x1E69E6158];
  *&v69 = v11;
  *(&v69 + 1) = MEMORY[0x1E69E6158];
  v70 = WitnessTable;
  v71 = v13;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  *&v69 = v11;
  *(&v69 + 1) = v14;
  v70 = WitnessTable;
  v71 = v13;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  *&v69 = OpaqueTypeMetadata2;
  *(&v69 + 1) = OpaqueTypeConformance2;
  v17 = swift_getOpaqueTypeMetadata2();
  *&v69 = OpaqueTypeMetadata2;
  *(&v69 + 1) = OpaqueTypeConformance2;
  v18 = swift_getOpaqueTypeConformance2();
  *&v69 = v17;
  *(&v69 + 1) = v18;
  v19 = swift_getOpaqueTypeMetadata2();
  *&v69 = v17;
  *(&v69 + 1) = v18;
  v20 = swift_getOpaqueTypeConformance2();
  v48[11] = v19;
  v48[9] = v20;
  v21 = sub_1A5242CE4();
  v48[12] = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v48[10] = v48 - v22;
  v65 = a4;
  v23 = *(a4 + 8);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v25 = swift_getWitnessTable();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v62 = v25;
  v63 = v21;
  *&v69 = v21;
  *(&v69 + 1) = AssociatedTypeWitness;
  v66 = AssociatedConformanceWitness;
  v67 = AssociatedTypeWitness;
  v70 = v25;
  v71 = AssociatedConformanceWitness;
  v27 = swift_getOpaqueTypeMetadata2();
  v48[8] = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27);
  MEMORY[0x1EEE9AC00](v28);
  v48[7] = v48 - v29;
  v30 = swift_getAssociatedTypeWitness();
  v48[2] = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v30);
  v48[1] = v48 - v31;
  v54 = v32;
  v33 = sub_1A5248804();
  v48[4] = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v48[3] = v48 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v35);
  v48[6] = v48 - v36;
  swift_getAssociatedTypeWitness();
  v57 = v23;
  swift_getAssociatedConformanceWitness();
  v37 = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](v37);
  v60 = v33;
  v61 = v27;
  v59 = sub_1A5249754();
  v58 = *(v59 - 8);
  MEMORY[0x1EEE9AC00](v59);
  v56 = v48 - v38;
  v39 = v53;
  v40 = v55;
  v69 = *(v55 + *(v53 + 76));
  sub_1A524DF24();
  sub_1A524B6D4();
  sub_1A524B6A4();
  if (v68)
  {
    v48[5] = v68;
    sub_1A5245904();
  }

  v41 = v40;
  v42 = v50;
  v43 = v49;
  (*(v50 + 16))(v49, v41, v39);
  v44 = (*(v42 + 80) + 48) & ~*(v42 + 80);
  v45 = swift_allocObject();
  v46 = v51;
  *(v45 + 2) = a2;
  *(v45 + 3) = v46;
  v47 = v52;
  *(v45 + 4) = v65;
  *(v45 + 5) = v47;
  (*(v42 + 32))(&v45[v44], v43, v39);
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A4782BA0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char *a7@<X8>)
{
  v78 = a6;
  v77 = a7;
  v74 = sub_1A5249234();
  v73 = *(v74 - 8);
  MEMORY[0x1EEE9AC00](v74);
  v72 = &v71 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v95 = a3;
  type metadata accessor for LemonadeFeedContents(255, a3, a5, v13);
  v14 = a4;
  swift_getTupleTypeMetadata2();
  v15 = sub_1A524BE24();
  WitnessTable = swift_getWitnessTable();
  v76 = v15;
  v75 = WitnessTable;
  v17 = sub_1A524B894();
  v93 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v96 = &v71 - v18;
  v19 = swift_getWitnessTable();
  v20 = sub_1A3D5F9DC();
  v21 = MEMORY[0x1E69E6158];
  v98 = v17;
  v99 = MEMORY[0x1E69E6158];
  v100 = v19;
  v101 = v20;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v89 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v85 = &v71 - v23;
  v94 = v17;
  v98 = v17;
  v99 = v21;
  v90 = v19;
  v100 = v19;
  v101 = v20;
  v87 = v20;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v98 = OpaqueTypeMetadata2;
  v99 = OpaqueTypeConformance2;
  v25 = swift_getOpaqueTypeMetadata2();
  v88 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v84 = &v71 - v26;
  v92 = OpaqueTypeMetadata2;
  v98 = OpaqueTypeMetadata2;
  v99 = OpaqueTypeConformance2;
  v80 = OpaqueTypeConformance2;
  v27 = swift_getOpaqueTypeConformance2();
  v91 = v25;
  v98 = v25;
  v99 = v27;
  v82 = v27;
  v86 = swift_getOpaqueTypeMetadata2();
  v83 = *(v86 - 8);
  MEMORY[0x1EEE9AC00](v86);
  v79 = &v71 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29);
  v81 = &v71 - v31;
  v32 = *(a2 + 24);
  if ((*(a2 + 48) & 1) == 0)
  {
    v33 = *(a2 + 16);
    v35 = *(a2 + 32);
    v34 = *(a2 + 40);

    v36 = sub_1A524D254();
    v37 = a5;
    v38 = sub_1A524A014();
    sub_1A5246DF4(v36, &dword_1A3C1C000, v38, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x1E69E7CC0]);

    a5 = v37;
    v39 = v72;
    sub_1A5249224();
    swift_getAtKeyPath();
    sub_1A3F1D444(v33, v32, v35, v34, 0);
    v30 = (*(v73 + 8))(v39, v74);
  }

  MEMORY[0x1EEE9AC00](v30);
  v40 = v95;
  *(&v71 - 6) = v95;
  *(&v71 - 5) = v14;
  v41 = v78;
  *(&v71 - 4) = a5;
  *(&v71 - 3) = v41;
  *(&v71 - 2) = a2;
  sub_1A5249574();
  sub_1A524B884();
  v97[0] = v40;
  v97[1] = v14;
  v97[2] = a5;
  v97[3] = v41;
  v42 = type metadata accessor for LemonadeFeed(0, v97);
  sub_1A4785874(0, &qword_1EB138CA8, sub_1A4780140, MEMORY[0x1E697DA80]);
  sub_1A5247C84();
  v43 = v101;
  if (!v101)
  {
    sub_1A4784080(&v98, sub_1A4780140);
LABEL_7:
    v52 = (*(a5 + 72))(v95, a5);
    v54 = v56;

    goto LABEL_8;
  }

  v44 = v102;
  v45 = __swift_project_boxed_opaque_existential_1(&v98, v101);
  v76 = &v71;
  v46 = *(v43 - 8);
  v78 = a2;
  v47 = v46;
  v48 = MEMORY[0x1EEE9AC00](v45);
  v50 = a5;
  v51 = &v71 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v47 + 16))(v51, v48);
  sub_1A4784080(&v98, sub_1A4780140);
  v52 = (*(v44 + 16))(v43, v44);
  v54 = v53;
  v55 = v51;
  a5 = v50;
  (*(v47 + 8))(v55, v43);
  a2 = v78;
  if (!v54)
  {
    goto LABEL_7;
  }

LABEL_8:
  v98 = v52;
  v99 = v54;
  v57 = v85;
  v58 = v94;
  v59 = v96;
  sub_1A524ABB4();

  (*(v93 + 8))(v59, v58);
  v60 = v84;
  v61 = v92;
  sub_1A524A5E4();
  (*(v89 + 8))(v57, v61);
  v62 = *(a2 + *(v42 + 84));
  v101 = type metadata accessor for LemonadeNavigationContext(0);
  v102 = sub_1A3C36CA4(&qword_1EB125720, type metadata accessor for LemonadeNavigationContext, &unk_1A5353238);
  v98 = v62;

  v63 = v79;
  v64 = v91;
  sub_1A458C30C(a1, &v98, v91, v82);
  (*(v88 + 8))(v60, v64);
  __swift_destroy_boxed_opaque_existential_0(&v98);
  v65 = v83;
  v66 = *(v83 + 16);
  v67 = v81;
  v68 = v86;
  v66(v81, v63, v86);
  v69 = *(v65 + 8);
  v69(v63, v68);
  v66(v77, v67, v68);
  return (v69)(v67, v68);
}

uint64_t sub_1A47834F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v50 = a3;
  v51 = a5;
  v55 = a6;
  v53 = *(a3 - 1);
  MEMORY[0x1EEE9AC00](a1);
  v54 = &WitnessTable - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v52 = &WitnessTable - v13;
  sub_1A4785874(0, &qword_1EB128FB0, MEMORY[0x1E69C2E30], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &WitnessTable - v15;
  v17 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &WitnessTable - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = v20;
  v49 = type metadata accessor for LemonadeFeedContents(0, a2, a4, v21);
  v56 = *(v49 - 8);
  MEMORY[0x1EEE9AC00](v49);
  v47 = &WitnessTable - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v48 = &WitnessTable - v24;
  v60 = a2;
  v61 = a3;
  v62 = a4;
  v63 = a5;
  v25 = type metadata accessor for LemonadeFeed(0, &v60);
  (*(v17 + 16))(v20, a1 + v25[20], a2);
  v26 = *(a1 + v25[21]);
  v27 = sub_1A52442E4();
  (*(*(v27 - 8) + 56))(v16, 1, 1, v27);
  v28 = *(a1 + v25[24]);
  sub_1A4785874(0, &qword_1EB138CA8, sub_1A4780140, MEMORY[0x1E697DA80]);

  sub_1A5247C84();
  LOBYTE(v17) = sub_1A3C30368();
  v29 = sub_1A3C5A374();
  v30 = v47;
  sub_1A437CBD4(v46, v26, v16, v28, v17 & 1, &v60, 0, 0, v47, v29 & 1, a2, a4);
  v31 = v49;
  WitnessTable = swift_getWitnessTable();
  v32 = v56;
  v33 = *(v56 + 16);
  v34 = v48;
  v33(v48, v30, v31);
  v35 = *(v32 + 8);
  v56 = v32 + 8;
  v46 = v35;
  (v35)(v30, v31);
  v36 = v52;
  v37 = v53;
  v38 = *(v53 + 16);
  v39 = a1 + v25[23];
  v40 = v50;
  v38(v52, v39, v50);
  v33(v30, v34, v31);
  v60 = v30;
  v41 = v54;
  v38(v54, v36, v40);
  v61 = v41;
  v59[0] = v31;
  v59[1] = v40;
  v57 = WitnessTable;
  v58 = v51;
  sub_1A3DF4988(&v60, 2uLL, v59);
  v42 = *(v37 + 8);
  v42(v36, v40);
  v43 = v46;
  (v46)(v34, v31);
  v42(v41, v40);
  return (v43)(v30, v31);
}

uint64_t sub_1A4783A0C(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v14 = sub_1A5249234();
  v33 = *(v14 - 8);
  v34 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v32 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *a1;
  v18 = *a2;
  v38 = a4;
  v39 = a5;
  v40 = a6;
  v41 = a7;
  v19 = type metadata accessor for LemonadeFeed(0, &v38);
  v20 = (a3 + v19[19]);
  v21 = *v20;
  v35 = v20[1];
  v36 = v21;
  v38 = v21;
  v39 = v35;
  v22 = *(a6 + 8);
  swift_getAssociatedTypeWitness();
  sub_1A524DF24();
  sub_1A524B6D4();
  sub_1A524B6A4();
  if (!v37 || (result = swift_unknownObjectRelease(), v17 != v18))
  {
    v24 = v19[20];

    v25 = sub_1A3C66934(a3 + v24, a4, v22);

    v26 = a3 + v19[17];
    v27 = *v26;
    v28 = *(v26 + 8);
    if (*(v26 + 9) == 1)
    {
      if ((v28 & 1) == 0)
      {
LABEL_7:
        swift_getAssociatedConformanceWitness();
        sub_1A5245914();
      }
    }

    else
    {

      v29 = sub_1A524D254();
      v30 = sub_1A524A014();
      sub_1A5246DF4(v29, &dword_1A3C1C000, v30, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x1E69E7CC0]);

      sub_1A5249224();
      swift_getAtKeyPath();
      v31 = sub_1A3F1B4C4(v27, v28, 0);
      (*(v33 + 8))(v16, v34, v31);
      if ((v39 & 1) == 0)
      {
        goto LABEL_7;
      }
    }

    v38 = v36;
    v39 = v35;
    v37 = v25;
    return sub_1A524B6B4();
  }

  return result;
}

uint64_t sub_1A4783CC8(uint64_t *a1, uint64_t *a2)
{
  v6 = v2[3];
  v7 = v2[4];
  v8 = v2[5];
  v12[0] = v2[2];
  v5 = v12[0];
  v12[1] = v6;
  v12[2] = v7;
  v12[3] = v8;
  v9 = *(type metadata accessor for LemonadeFeed(0, v12) - 8);
  v10 = v2 + ((*(v9 + 80) + 48) & ~*(v9 + 80));

  return sub_1A4783A0C(a1, a2, v10, v5, v6, v7, v8);
}

uint64_t objectdestroy_12Tm_0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 40);
  v11 = v1;
  v10 = *(v0 + 24);
  v12 = v10;
  v13 = v2;
  v3 = type metadata accessor for LemonadeFeed(0, &v11);
  v4 = v0 + ((*(*(v3 - 1) + 80) + 48) & ~*(*(v3 - 1) + 80));

  sub_1A3F1D444(*(v4 + 16), *(v4 + 24), *(v4 + 32), *(v4 + 40), *(v4 + 48));

  v5 = v3[16];
  sub_1A4785874(0, &unk_1EB128A60, MEMORY[0x1E697BF90], MEMORY[0x1E697DCB8]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_1A5248284();
    (*(*(v6 - 8) + 8))(v4 + v5, v6);
  }

  else
  {
  }

  sub_1A3F1B4C4(*(v4 + v3[17]), *(v4 + v3[17] + 8), *(v4 + v3[17] + 9));
  v7 = v4 + v3[18];
  sub_1A4785874(0, &qword_1EB121430, sub_1A4780140, MEMORY[0x1E6981E90]);
  (*(*(v8 - 8) + 8))(v7, v8);
  sub_1A4785874(0, &qword_1EB1213F0, sub_1A4780140, MEMORY[0x1E6981E98]);

  swift_unknownObjectRelease();

  (*(*(v1 - 8) + 8))(v4 + v3[20], v1);

  (*(*(v10 - 8) + 8))(v4 + v3[23]);

  return swift_deallocObject();
}

uint64_t sub_1A4784080(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

double sub_1A47840E0(uint64_t a1)
{
  v2 = v1;
  v3 = a1;
  v4 = *(a1 + 32);
  v5 = *(a1 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v39 = v5;
  v33[2] = swift_getAssociatedConformanceWitness();
  v37 = AssociatedTypeWitness;
  v7 = swift_getAssociatedTypeWitness();
  v33[3] = *(v7 - 8);
  v33[4] = v7;
  MEMORY[0x1EEE9AC00](v7);
  v33[1] = v33 - v8;
  v9 = sub_1A5249234();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v1 + 80);

  v38 = v13;
  if ((v13 & 1) == 0)
  {
    v14 = sub_1A524D254();
    v15 = sub_1A524A014();
    sub_1A5246DF4(v14, &dword_1A3C1C000, v15, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x1E69E7CC0]);

    sub_1A5249224();
    swift_getAtKeyPath();

    (*(v10 + 8))(v12, v9);
  }

  v34 = v12;
  v35 = v10;
  v36 = v9;
  sub_1A4785874(0, &qword_1EB138CA8, sub_1A4780140, MEMORY[0x1E697DA80]);
  sub_1A5247C84();
  v16 = v42;
  if (v42)
  {
    v17 = v43;
    v18 = __swift_project_boxed_opaque_existential_1(&v41, v42);
    v33[0] = v33;
    v19 = v4;
    v20 = v3;
    v21 = v2;
    v22 = *(v16 - 8);
    v23 = MEMORY[0x1EEE9AC00](v18);
    v25 = v33 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v22 + 16))(v25, v23);
    sub_1A4784080(&v41, sub_1A4780140);
    (*(v17 + 16))(v16, v17);
    v27 = v26;
    (*(v22 + 8))(v25, v16);
    v2 = v21;
    v3 = v20;
    v4 = v19;
    if (v27)
    {
      v28 = v39;
      goto LABEL_8;
    }
  }

  else
  {
    sub_1A4784080(&v41, sub_1A4780140);
  }

  v28 = v39;
  (*(v4 + 72))(v39, v4);

LABEL_8:
  sub_1A5243DE4();

  if ((v38 & 1) == 0)
  {
    v29 = sub_1A524D254();
    v30 = sub_1A524A014();
    sub_1A5246DF4(v29, &dword_1A3C1C000, v30, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x1E69E7CC0]);

    v31 = v34;
    sub_1A5249224();
    swift_getAtKeyPath();

    (*(v35 + 8))(v31, v36);
  }

  if ((*(v4 + 80))(v28, v4))
  {
    v41 = *(v2 + *(v3 + 76));
    sub_1A524DF24();
    sub_1A524B6D4();
    sub_1A524B6A4();
    if (v40)
    {
      sub_1A5245904();
    }
  }

  sub_1A5243DF4();

  return result;
}

double sub_1A4784698()
{
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v7 = v0[2];
  v1 = v7;
  v8 = v2;
  v9 = v3;
  v10 = v4;
  type metadata accessor for LemonadeFeed(0, &v7);
  v7 = v1;
  v8 = v2;
  v9 = v3;
  v10 = v4;
  v5 = type metadata accessor for LemonadeFeed(0, &v7);
  return sub_1A47840E0(v5);
}

void sub_1A4784734(_BYTE *a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = sub_1A5248284();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v17 = v20 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*a1)
  {
    v18 = *a2;
    if (v18 != 2 && (v18 & 1) == 0)
    {
      v20[0] = a4;
      v20[1] = a5;
      v20[2] = a6;
      v20[3] = a7;
      v19 = v15;
      type metadata accessor for LemonadeFeed(0, v20);
      sub_1A3E86EA0(v17);
      sub_1A5248274();
      (*(v14 + 8))(v17, v19);
    }
  }
}

void sub_1A4784868(_BYTE *a1, unsigned __int8 *a2)
{
  v6 = v2[3];
  v7 = v2[4];
  v8 = v2[5];
  v11[0] = v2[2];
  v5 = v11[0];
  v11[1] = v6;
  v11[2] = v7;
  v11[3] = v8;
  v9 = *(type metadata accessor for LemonadeFeed(0, v11) - 8);
  v10 = v2 + ((*(v9 + 80) + 48) & ~*(v9 + 80));

  sub_1A4784734(a1, a2, v10, v5, v6, v7, v8);
}

uint64_t sub_1A4784928@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v14 = *(a5 - 8);
  v15 = MEMORY[0x1EEE9AC00](a1);
  v17 = &v20 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v14 + 16))(v17, a1, v18, v15);
  sub_1A4780238(v17, a2, 0, a3, a4, PXDisplayCollectionDetailedCountsMake, 0, a5, a7, MEMORY[0x1E6981E70], a6, MEMORY[0x1E6981E60]);
  return (*(v14 + 8))(a1, a5);
}

void sub_1A4784AC4(void *a1)
{
  sub_1A4785874(319, &qword_1EB124860, MEMORY[0x1E69C23C0], MEMORY[0x1E697DCC0]);
  if (v1 <= 0x3F)
  {
    sub_1A3C399DC(319, &qword_1EB124800, &type metadata for LemonadeStackSpecs, MEMORY[0x1E697DCC0]);
    if (v2 <= 0x3F)
    {
      sub_1A4785874(319, &qword_1EB124838, MEMORY[0x1E69C29F0], MEMORY[0x1E697DCC0]);
      if (v3 <= 0x3F)
      {
        sub_1A4785874(319, &qword_1EB124848, MEMORY[0x1E69C28E8], MEMORY[0x1E697DCC0]);
        if (v4 <= 0x3F)
        {
          sub_1A4785874(319, &qword_1EB124730, MEMORY[0x1E697BF90], MEMORY[0x1E697DCC0]);
          if (v5 <= 0x3F)
          {
            sub_1A478570C(319);
            if (v6 <= 0x3F)
            {
              sub_1A4785874(319, &qword_1EB138CA8, sub_1A4780140, MEMORY[0x1E697DA80]);
              if (v7 <= 0x3F)
              {
                swift_getAssociatedTypeWitness();
                sub_1A524DF24();
                sub_1A524B6D4();
                if (v8 <= 0x3F)
                {
                  swift_checkMetadataState();
                  if (v9 <= 0x3F)
                  {
                    type metadata accessor for LemonadeNavigationContext(319);
                    if (v10 <= 0x3F)
                    {
                      swift_checkMetadataState();
                      if (v11 <= 0x3F)
                      {
                        swift_getAssociatedTypeWitness();
                        swift_getAssociatedConformanceWitness();
                        swift_getAssociatedTypeWitness();
                        swift_getAssociatedConformanceWitness();
                        sub_1A5242854();
                        sub_1A524DF24();
                        if (v12 <= 0x3F)
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
      }
    }
  }
}

uint64_t sub_1A4784E4C(int *a1, unsigned int a2, uint64_t a3)
{
  v6 = *(sub_1A5248284() - 8);
  if (*(v6 + 64) <= 8uLL)
  {
    v7 = 8;
  }

  else
  {
    v7 = *(v6 + 64);
  }

  sub_1A4785874(0, &qword_1EB121430, sub_1A4780140, MEMORY[0x1E6981E90]);
  v9 = *(v8 - 8);
  v10 = *(v9 + 84);
  v11 = *(a3 + 24);
  v12 = *(*(a3 + 16) - 8);
  v13 = v12;
  v14 = *(v12 + 84);
  if (v10 <= v14)
  {
    v15 = *(v12 + 84);
  }

  else
  {
    v15 = *(v9 + 84);
  }

  v16 = *(v11 - 8);
  v17 = *(v16 + 84);
  v18 = *(v12 + 80);
  v19 = *(v12 + 64);
  v20 = *(v16 + 80);
  if (v15 <= v17)
  {
    v21 = *(v16 + 84);
  }

  else
  {
    v21 = v15;
  }

  if (v21 <= 0x7FFFFFFF)
  {
    v22 = 0x7FFFFFFF;
  }

  else
  {
    v22 = v21;
  }

  if (!a2)
  {
    return 0;
  }

  v23 = *(v6 + 80) & 0xF8;
  v24 = v23 | 7;
  v25 = v7 + 8;
  v26 = *(v9 + 80) & 0xF8;
  v27 = ~v26 & 0xFFFFFFFFFFFFFFF8;
  v28 = v26 + 17;
  v29 = ((*(*(v8 - 8) + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + v18 + 24;
  v30 = v19 + 7;
  v31 = v20 + 16;
  if (v22 >= a2)
  {
    goto LABEL_36;
  }

  v32 = ((*(*(v11 - 8) + 64) + ((v31 + ((((v30 + ((v29 + ((v28 + ((v25 + ((v23 + 88) & ~v24)) & 0xFFFFFFFFFFFFFFF8)) & v27)) & ~v18)) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)) & ~v20) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  v33 = a2 - v22;
  v34 = v32 & 0xFFFFFFF8;
  if ((v32 & 0xFFFFFFF8) != 0)
  {
    v35 = 2;
  }

  else
  {
    v35 = v33 + 1;
  }

  if (v35 >= 0x10000)
  {
    v36 = 4;
  }

  else
  {
    v36 = 2;
  }

  if (v35 < 0x100)
  {
    v36 = 1;
  }

  if (v35 >= 2)
  {
    v37 = v36;
  }

  else
  {
    v37 = 0;
  }

  if (v37 > 1)
  {
    if (v37 == 2)
    {
      v38 = *(a1 + v32);
      if (!v38)
      {
        goto LABEL_36;
      }
    }

    else
    {
      v38 = *(a1 + v32);
      if (!v38)
      {
        goto LABEL_36;
      }
    }

LABEL_33:
    v40 = v38 - 1;
    if (v34)
    {
      v40 = 0;
      v41 = *a1;
    }

    else
    {
      v41 = 0;
    }

    return v22 + (v41 | v40) + 1;
  }

  if (v37)
  {
    v38 = *(a1 + v32);
    if (v38)
    {
      goto LABEL_33;
    }
  }

LABEL_36:
  v42 = (v28 + ((v25 + (((a1 & 0xFFFFFFFFFFFFFFF8) + v24 + 81) & ~v24)) & 0xFFFFFFFFFFFFFFF8)) & v27;
  if (v10 == v22)
  {
    v43 = *(v9 + 48);

    return v43(v42);
  }

  else
  {
    v44 = (v29 + v42) & ~v18;
    if (v14 == v22)
    {
      v45 = *(v13 + 48);

      return v45(v44, v14);
    }

    else
    {
      v46 = ((v30 + v44) & 0xFFFFFFFFFFFFFFF8);
      if ((v21 & 0x80000000) != 0)
      {
        v48 = *(v16 + 48);

        return v48((v31 + ((v46 + 15) & 0xFFFFFFFFFFFFFFF8)) & ~v20, v17, v11);
      }

      else
      {
        v47 = *v46;
        if (*v46 >= 0xFFFFFFFF)
        {
          LODWORD(v47) = -1;
        }

        return (v47 + 1);
      }
    }
  }
}

void sub_1A4785270(unint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v8 = *(sub_1A5248284() - 8);
  if (*(v8 + 64) <= 8uLL)
  {
    v9 = 8;
  }

  else
  {
    v9 = *(v8 + 64);
  }

  sub_1A4785874(0, &qword_1EB121430, sub_1A4780140, MEMORY[0x1E6981E90]);
  v11 = *(v10 - 8);
  v12 = *(v11 + 84);
  if (v12 <= 0x7FFFFFFE)
  {
    v13 = 2147483646;
  }

  else
  {
    v13 = *(v11 + 84);
  }

  v14 = *(a4 + 24);
  v15 = *(*(a4 + 16) - 8);
  v16 = v15;
  v17 = *(v15 + 84);
  if (v17 <= v13)
  {
    v18 = v13;
  }

  else
  {
    v18 = *(v15 + 84);
  }

  v19 = *(v14 - 8);
  v20 = *(v19 + 84);
  v21 = *(v8 + 80);
  v22 = *(v11 + 80);
  v23 = *(v15 + 80);
  v24 = *(v15 + 64);
  v25 = *(v19 + 80);
  if (v18 <= v20)
  {
    v26 = *(v19 + 84);
  }

  else
  {
    v26 = v18;
  }

  if (v26 <= 0x7FFFFFFF)
  {
    v27 = 0x7FFFFFFF;
  }

  else
  {
    v27 = v26;
  }

  v28 = v21 & 0xF8 | 7;
  v29 = v9 + 8;
  v30 = (v9 + 8 + (((v21 & 0xF8) + 88) & ~v28)) & 0xFFFFFFFFFFFFFFF8;
  v31 = ~(v22 & 0xF8) & 0xFFFFFFFFFFFFFFF8;
  v32 = (v22 & 0xF8) + 17;
  v33 = (*(*(v10 - 8) + 64) + 7) & 0xFFFFFFFFFFFFFFF8;
  v34 = v33 + v23 + 24;
  v35 = ((*(*(v14 - 8) + 64) + ((v25 + 16 + ((((v24 + 7 + ((v34 + ((v32 + v30) & v31)) & ~v23)) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)) & ~v25) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v27 >= a3)
  {
    v37 = 0;
    v38 = a2 - v27;
    if (a2 <= v27)
    {
      goto LABEL_28;
    }
  }

  else
  {
    if (((*(*(v14 - 8) + 64) + ((v25 + 16 + ((((v24 + 7 + ((v34 + ((v32 + v30) & v31)) & ~v23)) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8)) & ~v25) + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v36 = a3 - v27 + 1;
    }

    else
    {
      v36 = 2;
    }

    if (v36 >= 0x10000)
    {
      v37 = 4;
    }

    else
    {
      v37 = 2;
    }

    if (v36 < 0x100)
    {
      v37 = 1;
    }

    if (v36 < 2)
    {
      v37 = 0;
    }

    v38 = a2 - v27;
    if (a2 <= v27)
    {
LABEL_28:
      if (v37 > 1)
      {
        if (v37 != 2)
        {
          *(a1 + v35) = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_44;
        }

        *(a1 + v35) = 0;
      }

      else if (v37)
      {
        *(a1 + v35) = 0;
        if (!a2)
        {
          return;
        }

LABEL_44:
        v41 = v32 + ((v29 + (((a1 & 0xFFFFFFFFFFFFFFF8) + v28 + 81) & ~v28)) & 0xFFFFFFFFFFFFFFF8);
        v42 = (v41 & v31);
        if (v12 == v27)
        {
          if (v13 >= a2)
          {
            v46 = *(v11 + 56);

            v46(v41 & v31, a2);
          }

          else if (v33 != -8)
          {
            v43 = ~v13 + a2;
            bzero(v42, (v33 + 8));
            *v42 = v43;
          }
        }

        else
        {
          v44 = (v42 + v34) & ~v23;
          if (v17 == v27)
          {
            v45 = *(v16 + 56);

            v45(v44, a2, v17);
          }

          else
          {
            v47 = ((v24 + 7 + v44) & 0xFFFFFFFFFFFFFFF8);
            if ((v26 & 0x80000000) != 0)
            {
              v49 = *(v19 + 56);

              v49((v25 + 16 + ((v47 + 15) & 0xFFFFFFFFFFFFFFF8)) & ~v25, a2, v20, v14);
            }

            else
            {
              if ((a2 & 0x80000000) != 0)
              {
                v48 = a2 & 0x7FFFFFFF;
              }

              else
              {
                v48 = (a2 - 1);
              }

              *v47 = v48;
            }
          }
        }

        return;
      }

      if (!a2)
      {
        return;
      }

      goto LABEL_44;
    }
  }

  if (((*(*(v14 - 8) + 64) + ((v25 + 16 + ((((v24 + 7 + ((v34 + ((v32 + v30) & v31)) & ~v23)) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8)) & ~v25) + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
  {
    v39 = v38;
  }

  else
  {
    v39 = 1;
  }

  if (((*(*(v14 - 8) + 64) + ((v25 + 16 + ((((v24 + 7 + ((v34 + ((v32 + v30) & v31)) & ~v23)) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8)) & ~v25) + 7) & 0xFFFFFFF8) != 0xFFFFFFF8)
  {
    v40 = ~v27 + a2;
    bzero(a1, v35);
    *a1 = v40;
  }

  if (v37 > 1)
  {
    if (v37 == 2)
    {
      *(a1 + v35) = v39;
    }

    else
    {
      *(a1 + v35) = v39;
    }
  }

  else if (v37)
  {
    *(a1 + v35) = v39;
  }
}

void sub_1A478570C(uint64_t a1)
{
  if (!qword_1EB1246C8)
  {
    sub_1A3C399DC(255, &qword_1EB126D90, MEMORY[0x1E69E63B0], MEMORY[0x1E69E6720]);
    v1 = sub_1A5247E54();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB1246C8);
    }
  }
}

uint64_t sub_1A4785788@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v6 = v2[3];
  v7 = v2[4];
  v8 = v2[5];
  v12[0] = v2[2];
  v5 = v12[0];
  v12[1] = v6;
  v12[2] = v7;
  v12[3] = v8;
  v9 = *(type metadata accessor for LemonadeFeed(0, v12) - 8);
  v10 = v2 + ((*(v9 + 80) + 48) & ~*(v9 + 80));

  return sub_1A4782BA0(a1, v10, v5, v6, v7, v8, a2);
}

void sub_1A4785874(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1A47858DC(__int128 *a1)
{
  v2 = swift_allocObject();
  v6 = *a1;
  v4 = *(a1 + 2);
  v3 = *(a1 + 3);
  sub_1A5241604();
  *(v2 + 16) = v6;
  *(v2 + 32) = v4;
  *(v2 + 40) = v3;
  return v2;
}

void sub_1A478594C(uint64_t a1)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  swift_getKeyPath();
  v6 = v1;
  v7 = v3;
  v8 = v2;
  v9 = v4;
  v10 = v5;
  (*(*v1 + 176))();

  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
}

double sub_1A4785A18@<D0>(void *a1@<X8>)
{
  swift_getKeyPath();
  (*(*v1 + 168))();

  swift_beginAccess();
  v4 = v1[2];
  v3 = v1[3];
  v6 = v1[4];
  v5 = v1[5];
  *a1 = v4;
  a1[1] = v3;
  a1[2] = v6;
  a1[3] = v5;
  v7 = v5;
  v8 = v4;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  return result;
}

double sub_1A4785AC8@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  (*(**a1 + 128))(&v6);
  result = *&v6;
  v4 = v7;
  v5 = v8;
  *a2 = v6;
  *(a2 + 16) = v4;
  *(a2 + 24) = v5;
  return result;
}

uint64_t sub_1A4785B2C(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 8);
  v4 = *(a1 + 16);
  v3 = *(a1 + 24);
  v5 = *a2;
  v10[0] = *a1;
  v10[1] = v2;
  v10[2] = v4;
  v10[3] = v3;
  v6 = *(*v5 + 136);
  v7 = v3;
  v8 = v10[0];
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  return v6(v10);
}

void sub_1A4785BB4()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[6];
  swift_beginAccess();
  v6 = v1[2];
  v7 = v1[5];
  v1[2] = v2;
  v1[3] = v3;
  v1[4] = v4;
  v1[5] = v5;
  v8 = v5;
  v9 = v2;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
}

uint64_t (*sub_1A4785C58(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  (*(*v1 + 168))();

  v4[5] = OBJC_IVAR____TtC12PhotosUICore26LemonadeSharedWithYouModel___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A47862D8(&qword_1EB141830, &unk_1A535F370);
  sub_1A52415F4();

  v4[7] = sub_1A3E65F84(v4);
  return sub_1A4785D80;
}

void sub_1A4785D80(void *a1)
{
  v1 = *a1;
  (*(*a1 + 56))(*a1, 0);
  *v1 = v1[4];
  swift_getKeyPath();
  sub_1A52415E4();

  free(v1);
}

uint64_t type metadata accessor for LemonadeSharedWithYouModel(uint64_t a1)
{
  result = qword_1EB1D2980;
  if (!qword_1EB1D2980)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1A4785E90(uint64_t (*a1)(void *))
{
  v3 = (*(*v1 + 128))(v8);
  v4 = v8[0];
  v5 = v8[3];
  v6 = a1(v3);
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  return v6;
}

uint64_t sub_1A478604C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 40);
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  v3 = OBJC_IVAR____TtC12PhotosUICore26LemonadeSharedWithYouModel___observationRegistrar;
  v4 = sub_1A5241614();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  return swift_deallocClassInstance();
}

void (*sub_1A478619C(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  *(v3 + 32) = (*(*v1 + 144))();
  return sub_1A3D3D728;
}

uint64_t sub_1A47862D8(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for LemonadeSharedWithYouModel(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1A4786320@<X0>(uint64_t *a1@<X8>)
{
  result = (*(**v1 + 152))();
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1A4786374(uint64_t a1)
{
  result = sub_1A5241614();
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

id sub_1A4786418(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = *v3;
  v5 = *MEMORY[0x1E69E7D40];
  *(v3 + qword_1EB141848) = a1;
  v7 = type metadata accessor for LemonadePhotosChallengeFeature.ScrollViewModelController(0, *((v5 & v4) + 0x50), *((v5 & v4) + 0x58), v6);
  v13.receiver = v3;
  v13.super_class = v7;

  v8 = objc_msgSendSuper2(&v13, sel_init);
  v9 = objc_opt_self();
  v10 = v8;
  v11 = [v9 defaultCenter];
  [v11 addObserver:v10 selector:sel_navigateToGadget_ name:*sub_1A4997B84() object:0];

  return v10;
}

uint64_t sub_1A4786538(void *a1)
{
  v3 = type metadata accessor for LemonadeNavigationDestination(0);
  v4 = *(v3 - 8);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v7 = (&v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  if ([a1 type] != 24)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v8 = type metadata accessor for LemonadePhotosChallengeFeature.ShelfProvider(0);
  v9 = sub_1A3C53D20(&qword_1EB12ADA8, type metadata accessor for LemonadePhotosChallengeFeature.ShelfProvider, &unk_1A535F40C);
  v10 = sub_1A3C66934(v1, v8, v9);
  sub_1A49986A0();
  v12 = v11;

  *v7 = v12;
  swift_storeEnumTagMultiPayload();
  sub_1A3C4BFD0(0, &qword_1EB126250, type metadata accessor for LemonadeNavigationDestination, MEMORY[0x1E69E6F90]);
  v13 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1A52F8E10;
  sub_1A40B671C(v7, v14 + v13);
  return v14;
}

uint64_t sub_1A47867C0@<X0>(uint64_t a1@<X1>, uint64_t (*a2)(void)@<X3>, uint64_t *a3@<X8>)
{
  v7 = sub_1A3C53D20(&qword_1EB12ADA8, type metadata accessor for LemonadePhotosChallengeFeature.ShelfProvider, &unk_1A535F40C);
  v8 = sub_1A3C66934(v3, a1, v7);
  v9 = a2();

  *a3 = v9;
  v10 = type metadata accessor for LemonadeNavigationDestination(0);
  swift_storeEnumTagMultiPayload();
  v11 = *(*(v10 - 8) + 56);

  return v11(a3, 0, 1, v10);
}

void sub_1A47868BC(void **a1)
{
  v1 = *a1;
  type metadata accessor for LemonadePhotosChallengeItemListManager();
  sub_1A4997BD4(v1);
}

uint64_t sub_1A47868F0@<X0>(uint64_t *a1@<X8>)
{

  result = sub_1A43A436C(v2);
  *a1 = result;
  a1[1] = v4;
  a1[2] = v5;
  return result;
}

unint64_t sub_1A4786924@<X0>(uint64_t *a1@<X8>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>)
{
  sub_1A4787098(0, a2, a3, a4);
  v6 = v5;
  v7 = objc_allocWithZone(v5);

  v12 = sub_1A47869F0(v8, v9, v10, v11);
  a1[3] = v6;
  result = sub_1A4787108(v12, v13, v14, v15);
  a1[4] = result;
  *a1 = v12;
  return result;
}

unint64_t sub_1A4786984(uint64_t a1)
{
  v2 = sub_1A3C53D20(&qword_1EB12ADA0, type metadata accessor for LemonadePhotosChallengeFeature.ShelfProvider, &unk_1A535F3F0);

  return sub_1A42E6E80(a1, v2);
}

id sub_1A47869F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *&v4[qword_1EB141848] = a1;
  sub_1A4787098(0, a2, a3, a4);
  v11.receiver = v4;
  v11.super_class = v5;

  v6 = objc_msgSendSuper2(&v11, sel_init);
  v7 = objc_opt_self();
  v8 = v6;
  v9 = [v7 defaultCenter];
  [v9 addObserver:v8 selector:sel_navigateToGadget_ name:*sub_1A4997B84() object:0];

  return v8;
}

uint64_t sub_1A4786ACC()
{
  v1 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x50);
  v2 = sub_1A524DF24();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v16 - v4;
  v6 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v16 - v8;
  sub_1A5240544();
  if (!v19[3])
  {
    return sub_1A3C35B00(v19);
  }

  sub_1A41B7928();
  result = swift_dynamicCast();
  if (result)
  {
    v17 = v3;
    v11 = [v18 uniqueGadgetIdentifier];
    v12 = sub_1A524C674();
    v14 = v13;

    v19[0] = v12;
    v19[1] = v14;
    if (swift_dynamicCast())
    {
      (*(v6 + 56))(v5, 0, 1, v1);
      (*(v6 + 32))(v9, v5, v1);
      v15 = MEMORY[0x1A5907080](0.5, 1.0, 0.0);
      MEMORY[0x1EEE9AC00](v15);
      *(&v16 - 2) = v0;
      *(&v16 - 1) = v9;
      sub_1A52483D4();

      swift_unknownObjectRelease();
      return (*(v6 + 8))(v9, v1);
    }

    else
    {
      swift_unknownObjectRelease();
      (*(v6 + 56))(v5, 1, 1, v1);
      return (*(v17 + 8))(v5, v2);
    }
  }

  return result;
}

uint64_t sub_1A4786DD8(void *a1, uint64_t a2)
{
  v3 = *((*MEMORY[0x1E69E7D40] & *a1) + 0x50);
  v4 = sub_1A524DF24();
  v5.n128_f64[0] = MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v10 - v6;
  v8 = *(v3 - 8);
  (*(v8 + 16))(&v10 - v6, a2, v3, v5);
  (*(v8 + 56))(v7, 0, 1, v3);
  return sub_1A5242814();
}

uint64_t sub_1A4786EF8(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1A5240564();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A5240534();
  v8 = a1;
  sub_1A4786ACC();

  return (*(v5 + 8))(v7, v4);
}

id sub_1A4786FF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for LemonadePhotosChallengeFeature.ScrollViewModelController(0, *((*MEMORY[0x1E69E7D40] & *v4) + 0x50), *((*MEMORY[0x1E69E7D40] & *v4) + 0x58), a4);
  v7.receiver = v4;
  v7.super_class = v5;
  return objc_msgSendSuper2(&v7, sel_dealloc);
}

id sub_1A4787070@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = sub_1A4786418(a1);
  *a2 = result;
  return result;
}

void sub_1A4787098(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!qword_1EB12AD90)
  {
    v4 = type metadata accessor for LemonadePhotosChallengeFeature.ScrollViewModelController(0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6168], a4);
    if (!v5)
    {
      atomic_store(v4, &qword_1EB12AD90);
    }
  }
}

unint64_t sub_1A4787108(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = qword_1EB192C30[0];
  if (!qword_1EB192C30[0])
  {
    sub_1A4787098(255, a2, a3, a4);
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB192C30);
  }

  return result;
}

unint64_t sub_1A47872DC()
{
  result = qword_1EB12AE18;
  if (!qword_1EB12AE18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12AE18);
  }

  return result;
}

Swift::String __swiftcall CVReturnDescription(_:)(Swift::Int32 a1)
{
  v1 = a1 + 6699;
  v2 = 0xE500000000000000;
  v3 = 0x7473726946;
  switch(v1)
  {
    case 0:
      v2 = 0xE400000000000000;
      v3 = 1953718604;
      break;
    case 7:
      v2 = 0x80000001A53EA1C0;
      v3 = 0xD000000000000080;
      break;
    case 8:
      v2 = 0x80000001A53EA250;
      v3 = 0xD00000000000005ALL;
      break;
    case 10:
      v2 = 0x80000001A53EA2B0;
      v4 = 160;
      goto LABEL_10;
    case 15:
      v2 = 0x80000001A53EA370;
      v4 = 129;
      goto LABEL_10;
    case 16:
      v2 = 0x80000001A53EA410;
      v3 = 0xD00000000000009ALL;
      break;
    case 17:
      v2 = 0x80000001A53EA4B0;
      v4 = 72;
      goto LABEL_10;
    case 18:
      v2 = 0x80000001A53EA510;
      v3 = 0xD000000000000066;
      break;
    case 19:
      v2 = 0x80000001A53EA580;
      v4 = 73;
      goto LABEL_10;
    case 26:
      v2 = 0x80000001A53EA5E0;
      v3 = 0xD000000000000044;
      break;
    case 27:
      v2 = 0x80000001A53EA630;
      v3 = 0xD000000000000047;
      break;
    case 28:
      v2 = 0x80000001A53EA680;
      v3 = 0xD000000000000055;
      break;
    case 29:
      v2 = 0x80000001A53EA6E0;
      v3 = 0xD000000000000054;
      break;
    case 37:
      v2 = 0x80000001A53EA740;
      v4 = 97;
LABEL_10:
      v3 = v4 | 0xD000000000000016;
      break;
    case 38:
      v2 = 0x80000001A53EA7C0;
      v3 = 0xD000000000000076;
      break;
    case 39:
      break;
    default:
      v3 = 0xD000000000000016;
      v2 = 0x80000001A53EA1A0;
      break;
  }

  result._object = v2;
  result._countAndFlagsBits = v3;
  return result;
}

uint64_t sub_1A47875F0()
{
  v1 = v0[19];
  v2 = *MEMORY[0x1E6987608];
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_1A4787718;
  v3 = swift_continuation_init();
  sub_1A4787D30(0);
  v0[17] = v4;
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = sub_1A4787E44;
  v0[13] = &block_descriptor_269;
  v0[14] = v3;
  [v1 loadTracksWithMediaType:v2 completionHandler:v0 + 10];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1A4787718()
{
  v1 = *(*v0 + 48);
  *(*v0 + 160) = v1;
  if (v1)
  {
    v2 = sub_1A4787C60;
  }

  else
  {
    v2 = sub_1A4787828;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1A4787828(__n128 a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5[18];
  v5[21] = v6;
  if (v6 >> 62)
  {
    v7 = sub_1A524E2B4();
  }

  else
  {
    v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v5[22] = v7;
  v8 = v5[21];
  if (v7)
  {
    if ((v8 & 0xC000000000000001) != 0)
    {
      v9 = MEMORY[0x1A59097F0](0, a1);
    }

    else
    {
      if (!*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        return MEMORY[0x1EEE68140](v7, v8, a4, a5);
      }

      v9 = *(v8 + 32);
    }

    v5[23] = v9;
    v5[24] = 1;
    sub_1A4787F14(0);
    v10 = sub_1A5241664();
    v5[25] = v10;
    v11 = swift_task_alloc();
    v5[26] = v11;
    *v11 = v5;
    v11[1] = sub_1A4787998;
    v7 = (v5 + 28);
    v8 = v10;
    a4 = 0;
    a5 = 0;

    return MEMORY[0x1EEE68140](v7, v8, a4, a5);
  }

  v12 = v5[1];

  return v12(0);
}

uint64_t sub_1A4787998()
{
  *(*v1 + 216) = v0;

  if (v0)
  {

    v2 = sub_1A4787CCC;
  }

  else
  {

    v2 = sub_1A4787AE0;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1A4787AE0()
{
  if ((*(v0 + 224) & 1) == 0)
  {
    v2 = *(v0 + 192);
    v3 = *(v0 + 176);

    if (v2 == v3)
    {

      v1 = 0;
      goto LABEL_5;
    }

    v9 = *(v0 + 192);
    v10 = *(v0 + 168);
    if ((v10 & 0xC000000000000001) != 0)
    {
      v4 = MEMORY[0x1A59097F0](*(v0 + 192));
    }

    else
    {
      if (v9 >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_17;
      }

      v4 = *(v10 + 8 * v9 + 32);
    }

    *(v0 + 184) = v4;
    *(v0 + 192) = v9 + 1;
    if (!__OFADD__(v9, 1))
    {
      sub_1A4787F14(0);
      v11 = sub_1A5241664();
      *(v0 + 200) = v11;
      v12 = swift_task_alloc();
      *(v0 + 208) = v12;
      *v12 = v0;
      v12[1] = sub_1A4787998;
      v4 = (v0 + 224);
      v10 = v11;
      v5 = 0;
      v6 = 0;

      return MEMORY[0x1EEE68140](v4, v10, v5, v6);
    }

    __break(1u);
LABEL_17:
    __break(1u);
    return MEMORY[0x1EEE68140](v4, v10, v5, v6);
  }

  v1 = *(v0 + 184);

LABEL_5:
  v7 = *(v0 + 8);

  return v7(v1);
}

uint64_t sub_1A4787C60(uint64_t a1)
{
  swift_willThrow();
  v2 = *(v1 + 8);

  return v2();
}

uint64_t sub_1A4787CCC()
{
  v1 = *(v0 + 8);

  return v1();
}

void sub_1A4787D30(uint64_t a1)
{
  if (!qword_1EB141850)
  {
    sub_1A4787DA0(255);
    sub_1A3DBD9A0();
    v1 = sub_1A524CDF4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB141850);
    }
  }
}

void sub_1A4787DA0(uint64_t a1)
{
  if (!qword_1EB141858)
  {
    sub_1A4787DF8();
    v1 = sub_1A524CB74();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB141858);
    }
  }
}

unint64_t sub_1A4787DF8()
{
  result = qword_1EB141860;
  if (!qword_1EB141860)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EB141860);
  }

  return result;
}

uint64_t sub_1A4787E44(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    sub_1A3DBD9A0();
    v5 = swift_allocError();
    *v6 = a3;
    v7 = a3;

    return MEMORY[0x1EEE6DEE8](v4, v5);
  }

  else
  {
    sub_1A4787DF8();
    **(*(v4 + 64) + 40) = sub_1A524CA34();

    return MEMORY[0x1EEE6DEE0](v4);
  }
}

void sub_1A4787F14(uint64_t a1)
{
  if (!qword_1EB141868)
  {
    sub_1A4787DF8();
    v1 = sub_1A5241654();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB141868);
    }
  }
}

id sub_1A4787F74()
{
  result = [objc_allocWithZone(type metadata accessor for FakePhotoKitAssetsFetcher()) init];
  qword_1EB1EBF70 = result;
  return result;
}

uint64_t sub_1A4788000@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_1A52414C4();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v34 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v34 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v34 - v17;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v34 - v20;
  if (a1 > 2)
  {
    if ((a1 - 4) >= 2)
    {
      if (a1 == 3)
      {
        sub_1A3C29E4C(&qword_1EB12AF50, MEMORY[0x1E6969B50], MEMORY[0x1E6969B90]);
        sub_1A524E214();
        if (a2 >= 2)
        {
          v29 = 1;
          do
          {
            if (__OFADD__(v29, 6))
            {
              v30 = 0x7FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v30 = v29 + 6;
            }

            v34 = v29;
            sub_1A524E154();
            v29 = v30;
          }

          while (v30 < a2);
        }

        v9 = v18;
        return (*(v7 + 32))(a3, v9, v6);
      }
    }

    else
    {
      if (a2)
      {
        sub_1A3C29E4C(&qword_1EB12AF50, MEMORY[0x1E6969B50], MEMORY[0x1E6969B90]);
        sub_1A524E214();
        if (a2 != 1)
        {
          v24 = 1;
          do
          {
            if (__OFADD__(v24, a2))
            {
              v25 = ((v24 + a2) >> 63) ^ 0x8000000000000000;
            }

            else
            {
              v25 = v24 + a2;
            }

            v34 = v24;
            sub_1A524E154();
            v26 = v25 >= a2;
            if (a2 <= 0)
            {
              v26 = v25 <= a2;
            }

            v24 = v25;
          }

          while (!v26);
        }

        v9 = v21;
        return (*(v7 + 32))(a3, v9, v6);
      }

      __break(1u);
    }
  }

  else
  {
    switch(a1)
    {
      case 0:
        sub_1A3C29E4C(&qword_1EB12AF50, MEMORY[0x1E6969B50], MEMORY[0x1E6969B90]);
        sub_1A524E214();
        if (a2 >= 1)
        {
          v27 = 0;
          do
          {
            v28 = v27 + 1;
            v34 = v27;
            sub_1A524E154();
            v27 = v28;
          }

          while (a2 != v28);
        }

        return (*(v7 + 32))(a3, v9, v6);
      case 1:
        sub_1A3C29E4C(&qword_1EB12AF50, MEMORY[0x1E6969B50], MEMORY[0x1E6969B90]);
        sub_1A524E214();
        if (a2 >= 2)
        {
          v22 = 1;
          do
          {
            if (__OFADD__(v22, 2))
            {
              v23 = 0x7FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v23 = v22 + 2;
            }

            v34 = v22;
            sub_1A524E154();
            v22 = v23;
          }

          while (v23 < a2);
        }

        v9 = v12;
        return (*(v7 + 32))(a3, v9, v6);
      case 2:
        sub_1A3C29E4C(&qword_1EB12AF50, MEMORY[0x1E6969B50], MEMORY[0x1E6969B90]);
        sub_1A524E214();
        if (a2 >= 2)
        {
          v31 = 1;
          do
          {
            if (__OFADD__(v31, 3))
            {
              v32 = 0x7FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v32 = v31 + 3;
            }

            v34 = v31;
            sub_1A524E154();
            v31 = v32;
          }

          while (v32 < a2);
        }

        v9 = v15;
        return (*(v7 + 32))(a3, v9, v6);
    }
  }

  result = sub_1A524E6E4();
  __break(1u);
  return result;
}

void sub_1A4788530(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_allocObject();
  *(v7 + 16) = v3;
  *(v7 + 24) = vdupq_n_s64(0x4069000000000000uLL);
  v15 = sub_1A4789B2C;
  v16 = v7;
  v11 = MEMORY[0x1E69E9820];
  v12 = 1107296256;
  v13 = sub_1A3C2E0D0;
  v14 = &block_descriptor_270;
  v8 = _Block_copy(&v11);

  v9 = swift_allocObject();
  *(v9 + 16) = a2;
  *(v9 + 24) = a3;
  v15 = sub_1A4789B34;
  v16 = v9;
  v11 = MEMORY[0x1E69E9820];
  v12 = 1107296256;
  v13 = sub_1A3D6084C;
  v14 = &block_descriptor_6_11;
  v10 = _Block_copy(&v11);
  sub_1A3D607F0(a2, a3);

  [a1 performChanges:v8 completionHandler:v10];
  _Block_release(v10);
  _Block_release(v8);
}

void sub_1A47886B4(double a1, double a2)
{
  v4 = type metadata accessor for FakePhotoKitAssetsFetcher.FakeAsset(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1A4789D8C();
  if (v8[2])
  {
    v9 = *(v4 + 24);
    v23 = &v7[*(v4 + 20)];
    v24 = v9;
    v10 = objc_opt_self();
    v11 = *(v5 + 80);
    v19 = v8;
    v20 = *(v5 + 72);
    v21 = v10;
    v22 = v26;
    sub_1A478B64C(v8 + ((v11 + 32) & ~v11), v7, type metadata accessor for FakePhotoKitAssetsFetcher.FakeAsset);
    v12 = *&v7[v24];
    v13 = *v23;
    v14 = *(v23 + 1);
    v15 = objc_allocWithZone(MEMORY[0x1E69DCA78]);
    [v15 initWithSize_];
    v16 = swift_allocObject();
    *(v16 + 16) = a1;
    *(v16 + 24) = a2;
    *(v16 + 32) = v12;
    *(v16 + 40) = v13;
    *(v16 + 48) = v14;
    v17 = swift_allocObject();
    *(v17 + 16) = sub_1A478B248;
    *(v17 + 24) = v16;
    v26[2] = sub_1A3D78DD0;
    v26[3] = v17;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    v26[0] = sub_1A3D35A90;
    v26[1] = &block_descriptor_29_8;
    _Block_copy(aBlock);
    v18 = v12;
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }
}

uint64_t sub_1A4788A28(char a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1A524BEE4();
  v20 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_1A524BF64();
  v11 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3C52C70(0, &qword_1EB12B180, 0x1E69E9610);
  v14 = sub_1A524D474();
  v15 = swift_allocObject();
  *(v15 + 16) = a3;
  *(v15 + 24) = a4;
  *(v15 + 32) = a1;
  *(v15 + 40) = a2;
  aBlock[4] = sub_1A3D5FDCC;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1A3C2E0D0;
  aBlock[3] = &block_descriptor_20_4;
  v16 = _Block_copy(aBlock);
  sub_1A3D607F0(a3, a4);
  v17 = a2;

  sub_1A524BF14();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1A3C29E4C(&qword_1EB12B1E0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  sub_1A3C2A4D0(0, &qword_1EB12B1C0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
  sub_1A3C5DE88();
  sub_1A524E224();
  MEMORY[0x1A5908800](0, v13, v10, v16);
  _Block_release(v16);

  (*(v20 + 8))(v10, v8);
  return (*(v11 + 8))(v13, v19);
}

id sub_1A4788E38()
{
  sub_1A3C48C2C(0, &qword_1EB141890, &type metadata for FakeIndexedAssetCollection, MEMORY[0x1E69E6F90]);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1A52FF950;
  v1 = objc_opt_self();
  *(v0 + 32) = [v1 redColor];
  *(v0 + 40) = 30;
  *(v0 + 48) = [v1 greenColor];
  *(v0 + 56) = 20;
  result = [v1 blueColor];
  *(v0 + 64) = result;
  *(v0 + 72) = 40;
  qword_1EB1D2AA0 = v0;
  return result;
}

void sub_1A4788F10()
{
  v0 = sub_1A5246F24();
  __swift_allocate_value_buffer(v0, qword_1EB1D2AB0);
  __swift_project_value_buffer(v0, qword_1EB1D2AB0);
  sub_1A5246EF4();
}

void *sub_1A4788F74(void *result, int64_t a2, char a3, void *a4)
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
    v13 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  sub_1A3C2A4D0(0, &qword_1EB141880, type metadata accessor for FakePhotoKitAssetsFetcher.FakeAsset, MEMORY[0x1E69E6F90]);
  v10 = *(type metadata accessor for FakePhotoKitAssetsFetcher.FakeAsset(0) - 8);
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
  v15 = *(type metadata accessor for FakePhotoKitAssetsFetcher.FakeAsset(0) - 8);
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

char *sub_1A4789170(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1A4789190(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1A4789190(char *result, int64_t a2, char a3, char *a4)
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
    sub_1A3C2A4D0(0, &qword_1EB141888, type metadata accessor for PXDisplayAssetCollectionCurationKind, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

void sub_1A47892B8(char *a1, uint64_t a2)
{
  v56 = a2;
  v4 = sub_1A52414C4();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v52 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3C52C70(0, &qword_1EB1268C8, off_1E771F050);
  v8 = [swift_getObjCClassFromMetadata() sharedInstance];
  if (qword_1EB1D2A98 != -1)
  {
    goto LABEL_39;
  }

  while (1)
  {
    v9 = qword_1EB1D2AA0;
    v55 = a1;
    v10 = [a1 localIdentifier];
    v11 = sub_1A524C674();
    v13 = v12;

    v60 = v11;
    v61 = v13;
    sub_1A3D5F9DC();
    v14 = sub_1A524E004();

    if (v14 < 0)
    {
      v15 = __OFSUB__(0, v14);
      v14 = -v14;
      if (v15)
      {
        __break(1u);
        goto LABEL_44;
      }
    }

    v57 = v8;
    v8 = *(v9 + 16);
    if (!v8)
    {
      __break(1u);
LABEL_41:
      __break(1u);
      goto LABEL_42;
    }

    v16 = v14 % v8;
    if (v16 < 0)
    {
      goto LABEL_41;
    }

    v53 = v5;
    v54 = v4;
    v17 = v9 + 16 * v16;
    v18 = *(v17 + 32);
    v19 = *(v17 + 40);
    v2 = MEMORY[0x1E69E7CC0];
    v58 = v7;
    v52 = v18;
    if (!v16)
    {
      break;
    }

    v60 = MEMORY[0x1E69E7CC0];
    v20 = v18;
    sub_1A3FD1D1C(0, v16, 0);
    v21 = v60;
    v5 = *(v60 + 16);
    v22 = (v9 + 40);
    do
    {
      v24 = *v22;
      v22 += 2;
      v23 = v24;
      v60 = v21;
      v25 = v21[3];
      v26 = v5 + 1;
      if (v5 >= v25 >> 1)
      {
        sub_1A3FD1D1C((v25 > 1), v5 + 1, 1);
        v21 = v60;
      }

      v21[2] = v26;
      v21[v5++ + 4] = v23;
      --v16;
    }

    while (v16);
    v7 = v58;
    v4 = v56;
LABEL_14:
    a1 = 0;
    v28 = 4;
    while (1)
    {
      v29 = v21[v28];
      v15 = __OFADD__(a1, v29);
      a1 += v29;
      if (v15)
      {
        break;
      }

      ++v28;
      if (!--v26)
      {
        goto LABEL_17;
      }
    }

LABEL_38:
    __break(1u);
LABEL_39:
    swift_once();
  }

  v26 = *(MEMORY[0x1E69E7CC0] + 16);
  v27 = v18;
  v4 = v56;
  if (v26)
  {
    v21 = v2;
    goto LABEL_14;
  }

LABEL_17:

  sub_1A4788000(v4, v19, v7);
  sub_1A5241474();
  v60 = v2;
  sub_1A3FD1D1C(0, v8, 0);
  v30 = v60;
  v5 = *(v60 + 16);
  v31 = (v9 + 40);
  do
  {
    v33 = *v31;
    v31 += 2;
    v32 = v33;
    v60 = v30;
    v34 = *(v30 + 24);
    v35 = v5 + 1;
    if (v5 >= v34 >> 1)
    {
      sub_1A3FD1D1C((v34 > 1), v5 + 1, 1);
      v30 = v60;
    }

    *(v30 + 16) = v35;
    *(v30 + 8 * v5++ + 32) = v32;
    --v8;
  }

  while (v8);
  v36 = 0;
  a1 = 0;
  do
  {
    v37 = *(v30 + 8 * v36 + 32);
    v15 = __OFADD__(a1, v37);
    a1 += v37;
    if (v15)
    {
      __break(1u);
      goto LABEL_38;
    }

    ++v36;
  }

  while (v35 != v36);

  v38 = [v55 photoLibrary];
  if (v38)
  {
    v39 = v38;
    v40 = [v38 librarySpecificFetchOptions];

    [v40 setFetchLimit_];
    sub_1A3C48C2C(0, &qword_1EB126180, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
    v41 = swift_allocObject();
    *(v41 + 16) = xmmword_1A52F9790;
    v42 = objc_allocWithZone(MEMORY[0x1E696AEB0]);
    v43 = sub_1A524C634();
    v44 = [v42 initWithKey:v43 ascending:1];

    *(v41 + 32) = v44;
    sub_1A3C52C70(0, &qword_1EB126B60, 0x1E696AEB0);
    v45 = sub_1A524CA14();

    [v40 setSortDescriptors_];

    v46 = [objc_opt_self() fetchAssetsWithOptions_];
    v47 = objc_opt_self();
    [v57 fakeFetchDelay];
    [v47 sleepForTimeInterval_];
    v48 = sub_1A5241414();
    sub_1A3C52C70(0, &qword_1EB126660, 0x1E6978630);
    v2 = [v46 px:v48 subfetchResultWithObjectsAtIndexes:swift_getObjCClassFromMetadata() objectClass:?];

    if (v4 <= 2)
    {
      if (v4 <= 2)
      {
        goto LABEL_35;
      }

LABEL_34:
      v60 = 0x206E776F6E6B6E75;
      v61 = 0xE800000000000000;
      v59 = v4;
      type metadata accessor for PXDisplayAssetCollectionCurationKind(0);
      v49 = sub_1A524C714();
      MEMORY[0x1A5907B60](v49);

      goto LABEL_35;
    }

    if (v4 != 3 && v4 != 4 && v4 != 5)
    {
      goto LABEL_34;
    }

LABEL_35:
    if (qword_1EB1D2AA8 == -1)
    {
LABEL_36:
      v50 = sub_1A5246F24();
      __swift_project_value_buffer(v50, qword_1EB1D2AB0);
      v51 = v2;
      _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
    }

LABEL_42:
    swift_once();
    goto LABEL_36;
  }

LABEL_44:
  __break(1u);
}

uint64_t type metadata accessor for FakePhotoKitAssetsFetcher.FakeAsset(uint64_t a1)
{
  result = qword_1EB1D2AC8;
  if (!qword_1EB1D2AC8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1A4789BAC()
{
  v0 = PXDisplayAssetCollectionCurationKindPossibleValues();
  sub_1A3C52C70(0, &qword_1EB126610, 0x1E696AD98);
  v1 = sub_1A524CA34();

  v2 = v1 >> 62;
  if (v1 >> 62)
  {
    goto LABEL_21;
  }

  v3 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v3)
  {
    while (1)
    {
      v15 = MEMORY[0x1E69E7CC0];
      result = sub_1A4789170(0, v3 & ~(v3 >> 63), 0);
      v5 = v15;
      if (v2)
      {
        result = sub_1A524E2B4();
        v2 = result;
      }

      else
      {
        v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (v3 < 0)
      {
        break;
      }

      v6 = 0;
      v14 = v1 & 0xFFFFFFFFFFFFFF8;
      v7 = v2 + 3;
      while ((v2 ^ v6) != 0x8000000000000000)
      {
        v8 = v7 - 4;
        if ((v1 & 0xC000000000000001) != 0)
        {
          v9 = MEMORY[0x1A59097F0](v8, v1);
        }

        else
        {
          if ((v8 & 0x8000000000000000) != 0)
          {
            goto LABEL_19;
          }

          if (v8 >= *(v14 + 16))
          {
            goto LABEL_20;
          }

          v9 = *(v1 + 8 * v7);
        }

        v10 = v9;
        v11 = [v9 integerValue];

        v13 = *(v15 + 16);
        v12 = *(v15 + 24);
        if (v13 >= v12 >> 1)
        {
          sub_1A4789170((v12 > 1), v13 + 1, 1);
        }

        ++v6;
        *(v15 + 16) = v13 + 1;
        *(v15 + 8 * v13 + 32) = v11;
        --v7;
        if (v3 == v6)
        {

          return v5;
        }
      }

      __break(1u);
LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      v3 = sub_1A524E2B4();
      if (!v3)
      {
        goto LABEL_22;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_22:

    return MEMORY[0x1E69E7CC0];
  }

  return result;
}

void *sub_1A4789D8C()
{
  v168 = sub_1A52413E4();
  v0 = *(v168 - 8);
  MEMORY[0x1EEE9AC00](v168);
  v2 = &v125 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = MEMORY[0x1E6969B78];
  sub_1A478B6B4(0, &qword_1EB141870, &qword_1EB12AF68, MEMORY[0x1E6969B78], MEMORY[0x1E69E6E48]);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v153 = &v125 - v5;
  sub_1A478B6B4(0, &qword_1EB141878, &qword_1EB12AF68, v3, MEMORY[0x1E69E6E40]);
  v152 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v125 - v7;
  v133 = type metadata accessor for FakePhotoKitAssetsFetcher.FakeAsset(0);
  v132 = *(v133 - 8);
  MEMORY[0x1EEE9AC00](v133);
  v138 = &v125 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v137 = sub_1A5241144();
  v10 = *(v137 - 8);
  MEMORY[0x1EEE9AC00](v137);
  v139 = &v125 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1A52414C4();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v151 = &v125 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v125 - v16;
  MEMORY[0x1EEE9AC00](v18);
  v142 = &v125 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v149 = &v125 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v148 = &v125 - v23;
  MEMORY[0x1EEE9AC00](v24);
  v147 = &v125 - v25;
  MEMORY[0x1EEE9AC00](v26);
  v160 = &v125 - v27;
  MEMORY[0x1EEE9AC00](v28);
  v166 = &v125 - v29;
  MEMORY[0x1EEE9AC00](v30);
  v143 = &v125 - v31;
  MEMORY[0x1EEE9AC00](v32);
  v146 = &v125 - v33;
  MEMORY[0x1EEE9AC00](v34);
  v145 = &v125 - v35;
  MEMORY[0x1EEE9AC00](v36);
  v144 = &v125 - v37;
  MEMORY[0x1EEE9AC00](v38);
  v154 = &v125 - v39;
  if (qword_1EB1D2A98 != -1)
  {
    goto LABEL_128;
  }

  while (1)
  {
    v40 = qword_1EB1D2AA0;
    v41 = *(qword_1EB1D2AA0 + 16);
    if (!v41)
    {
      return MEMORY[0x1E69E7CC0];
    }

    v141 = 0;
    v42 = 0;
    v43 = qword_1EB1D2AA0 + 32;
    v162 = (v13 + 32);
    v161 = (v13 + 8);
    v150 = (v13 + 16);
    v167 = (v0 + 8);
    v130 = (v10 + 16);
    v129 = (v10 + 8);
    v140 = MEMORY[0x1E69E7CC0];
    v159 = v17;
    v10 = v143;
    v127 = qword_1EB1D2AA0;
    v126 = v41;
    v125 = qword_1EB1D2AA0 + 32;
LABEL_7:
    if (v42 >= *(v40 + 16))
    {
      goto LABEL_126;
    }

    v45 = v43 + 16 * v42;
    v13 = *(v45 + 8);
    if ((v13 & 0x8000000000000000) == 0)
    {
      break;
    }

LABEL_127:
    __break(1u);
LABEL_128:
    swift_once();
  }

  if (!v13)
  {
    goto LABEL_6;
  }

  v128 = v42;
  v46 = *v45;
  v131 = v141 ^ 0x7FFFFFFFFFFFFFFFLL;
  v134 = v46;
  v47 = 0;
LABEL_11:
  v169 = v47;
  v136 = v47 + 1;
  v48 = sub_1A4789BAC();
  v49 = 0;
  v164 = *(v48 + 16);
  v165 = v48;
  v163 = v48 + 32;
  while (1)
  {
    if (v49 == v164)
    {

      v67 = 0.5;
LABEL_60:
      v135 = [v134 colorWithAlphaComponent_];
      v68 = sub_1A4789BAC();
      v10 = *(v68 + 16);
      if (v10)
      {
        var80[0] = MEMORY[0x1E69E7CC0];
        v0 = var80;
        v69 = v68;
        sub_1A3C57108(0, v10, 0);
        v70 = v69;
        v71 = 0;
        v72 = var80[0];
        v158 = v70 + 32;
        v157 = v70;
        v156 = v10;
        while (1)
        {
          if (v71 >= *(v70 + 16))
          {
LABEL_123:
            __break(1u);
LABEL_124:
            __break(1u);
LABEL_125:
            __break(1u);
LABEL_126:
            __break(1u);
            goto LABEL_127;
          }

          v73 = *(v158 + 8 * v71);
          v164 = v71;
          v165 = v72;
          v163 = v73;
          if (v73 > 2)
          {
            if ((v73 - 4) >= 2)
            {
              if (v73 != 3)
              {
                goto LABEL_129;
              }

              sub_1A3C29E4C(&qword_1EB12AF50, MEMORY[0x1E6969B50], MEMORY[0x1E6969B90]);
              v84 = v147;
              sub_1A524E214();
              v75 = v84;
              if (v13 != 1)
              {
                v85 = 1;
                v77 = v147;
                do
                {
                  if (__OFADD__(v85, 6))
                  {
                    v86 = 0x7FFFFFFFFFFFFFFFLL;
                  }

                  else
                  {
                    v86 = v85 + 6;
                  }

                  v170 = v85;
                  sub_1A524E154();
                  v85 = v86;
                }

                while (v86 < v13);
                goto LABEL_100;
              }
            }

            else
            {
              sub_1A3C29E4C(&qword_1EB12AF50, MEMORY[0x1E6969B50], MEMORY[0x1E6969B90]);
              sub_1A524E214();
              v75 = v17;
              if (v13 != 1)
              {
                v79 = 1;
                do
                {
                  v80 = __OFADD__(v79, v13);
                  v170 = v79;
                  sub_1A524E154();
                  if (v79 + v13 >= v13)
                  {
                    break;
                  }

                  v79 += v13;
                }

                while (!v80);
                v75 = v17;
              }
            }
          }

          else if (v73)
          {
            if (v73 == 1)
            {
              sub_1A3C29E4C(&qword_1EB12AF50, MEMORY[0x1E6969B50], MEMORY[0x1E6969B90]);
              v74 = v149;
              sub_1A524E214();
              v75 = v74;
              if (v13 == 1)
              {
                goto LABEL_101;
              }

              v76 = 1;
              v77 = v149;
              do
              {
                if (__OFADD__(v76, 2))
                {
                  v78 = 0x7FFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v78 = v76 + 2;
                }

                v170 = v76;
                sub_1A524E154();
                v76 = v78;
              }

              while (v78 < v13);
              goto LABEL_100;
            }

            if (v73 != 2)
            {
              goto LABEL_129;
            }

            sub_1A3C29E4C(&qword_1EB12AF50, MEMORY[0x1E6969B50], MEMORY[0x1E6969B90]);
            v87 = v148;
            sub_1A524E214();
            v75 = v87;
            if (v13 != 1)
            {
              v88 = 1;
              v77 = v148;
              do
              {
                if (__OFADD__(v88, 3))
                {
                  v89 = 0x7FFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v89 = v88 + 3;
                }

                v170 = v88;
                sub_1A524E154();
                v88 = v89;
              }

              while (v89 < v13);
LABEL_100:
              v75 = v77;
            }
          }

          else
          {
            sub_1A3C29E4C(&qword_1EB12AF50, MEMORY[0x1E6969B50], MEMORY[0x1E6969B90]);
            v81 = v142;
            sub_1A524E214();
            v82 = 0;
            do
            {
              v83 = v82 + 1;
              v170 = v82;
              sub_1A524E154();
              v82 = v83;
            }

            while (v13 != v83);
            v75 = v81;
          }

LABEL_101:
          v90 = *v162;
          v91 = v160;
          (*v162)(v160, v75, v12);
          if (sub_1A52414A4())
          {
            v92 = v153;
            (*v150)(v153, v91, v12);
            v90(v151, v92, v12);
            v93 = MEMORY[0x1E6969B50];
            sub_1A3C29E4C(&qword_1EB12AF68, MEMORY[0x1E6969B50], MEMORY[0x1E6969B78]);
            sub_1A524C914();
            v155 = *(v152 + 36);
            v94 = MEMORY[0x1E6969B88];
            sub_1A478B6B4(0, &qword_1EB1264B0, &qword_1EB12AF60, MEMORY[0x1E6969B88], MEMORY[0x1E69E6CF0]);
            v17 = *(v95 + 36);
            sub_1A3C29E4C(&qword_1EB12AF60, v93, v94);
            v96 = 0;
            while (1)
            {
              sub_1A524D034();
              sub_1A3C29E4C(&qword_1EB12AF80, MEMORY[0x1E6969B18], MEMORY[0x1E6969B28]);
              v97 = v168;
              v98 = sub_1A524C594();
              (*v167)(v2, v97);
              if (v98)
              {
                *&v8[v155] = v96;
                sub_1A478B7B0(v8);
                (*v161)(v160, v12);
                goto LABEL_109;
              }

              v0 = v8;
              v99 = sub_1A524D0C4();
              v101 = *v100;
              v99(&v171, 0);
              sub_1A524D044();
              v10 = v96 + 1;
              if (__OFADD__(v96, 1))
              {
                break;
              }

              ++v96;
              if (v169 == v101)
              {
                *&v8[v155] = v10;
                sub_1A478B7B0(v8);
                v102 = v160;
                v103 = sub_1A5241454();
                (*v161)(v102, v12);
                v171 = sub_1A524EA44();
                v172 = v104;
                MEMORY[0x1A5907B60](543584032, 0xE400000000000000);
                v170 = v103;
                v105 = sub_1A524EA44();
                MEMORY[0x1A5907B60](v105);

                v106 = v171;
                v107 = v172;
                goto LABEL_110;
              }
            }

            __break(1u);
            goto LABEL_123;
          }

          (*v161)(v91, v12);
LABEL_109:
          v107 = 0xE100000000000000;
          v106 = 45;
LABEL_110:
          v108 = PXDisplayAssetCollectionCurationKindDescription(v163);
          v109 = sub_1A524C674();
          v111 = v110;

          v171 = v109;
          v172 = v111;
          v0 = &v171;
          MEMORY[0x1A5907B60](32, 0xE100000000000000);
          MEMORY[0x1A5907B60](v106, v107);

          v112 = v171;
          v113 = v172;
          v72 = v165;
          var80[0] = v165;
          v115 = *(v165 + 16);
          v114 = *(v165 + 24);
          v10 = v115 + 1;
          if (v115 >= v114 >> 1)
          {
            v0 = var80;
            sub_1A3C57108((v114 > 1), v115 + 1, 1);
            v72 = var80[0];
          }

          v71 = v164 + 1;
          *(v72 + 16) = v10;
          v116 = v72 + 16 * v115;
          *(v116 + 32) = v112;
          *(v116 + 40) = v113;
          v17 = v159;
          v70 = v157;
          if (v71 == v156)
          {

            goto LABEL_115;
          }
        }
      }

      v72 = MEMORY[0x1E69E7CC0];
LABEL_115:
      v171 = v72;
      sub_1A3C48C2C(0, &qword_1EB126ED0, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
      sub_1A3CAD85C();
      v0 = sub_1A524C514();
      v10 = v117;

      v118 = v139;
      sub_1A52410C4();
      if (v169 == v131)
      {
        goto LABEL_125;
      }

      v119 = v138;
      (*v130)(v138, v118, v137);
      v120 = v133;
      v121 = (v119 + *(v133 + 20));
      *v121 = v0;
      v121[1] = v10;
      *(v119 + *(v120 + 24)) = v135;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v140 = sub_1A4788F74(0, v140[2] + 1, 1, v140);
      }

      v123 = v140[2];
      v122 = v140[3];
      v0 = v123 + 1;
      if (v123 >= v122 >> 1)
      {
        v140 = sub_1A4788F74((v122 > 1), v123 + 1, 1, v140);
      }

      ++v141;
      (*v129)();
      v124 = v140;
      v140[2] = v0;
      sub_1A478B74C(v138, v124 + ((*(v132 + 80) + 32) & ~*(v132 + 80)) + *(v132 + 72) * v123);
      v47 = v136;
      v10 = v143;
      if (v136 == v13)
      {

        v40 = v127;
        v41 = v126;
        v42 = v128;
        v43 = v125;
LABEL_6:
        if (++v42 == v41)
        {
          return v140;
        }

        goto LABEL_7;
      }

      goto LABEL_11;
    }

    if (v49 >= *(v165 + 16))
    {
      goto LABEL_124;
    }

    v158 = *(v163 + 8 * v49);
    if (v158 > 2)
    {
      if ((v158 - 4) < 2)
      {
        sub_1A3C29E4C(&qword_1EB12AF50, MEMORY[0x1E6969B50], MEMORY[0x1E6969B90]);
        v56 = v166;
        sub_1A524E214();
        v50 = v56;
        if (v13 != 1)
        {
          v57 = 1;
          do
          {
            v58 = __OFADD__(v57, v13);
            var80[0] = v57;
            sub_1A524E154();
            if (v57 + v13 >= v13)
            {
              break;
            }

            v57 += v13;
          }

          while (!v58);
          v50 = v166;
          v17 = v159;
          v10 = v143;
        }

        goto LABEL_13;
      }

      if (v158 != 3)
      {
        goto LABEL_129;
      }

      sub_1A3C29E4C(&qword_1EB12AF50, MEMORY[0x1E6969B50], MEMORY[0x1E6969B90]);
      v61 = v144;
      sub_1A524E214();
      v50 = v61;
      if (v13 == 1)
      {
        goto LABEL_13;
      }

      v62 = 1;
      v54 = v144;
      do
      {
        if (__OFADD__(v62, 6))
        {
          v63 = 0x7FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v63 = v62 + 6;
        }

        var80[0] = v62;
        sub_1A524E154();
        v62 = v63;
      }

      while (v63 < v13);
      goto LABEL_12;
    }

    if (!v158)
    {
      sub_1A3C29E4C(&qword_1EB12AF50, MEMORY[0x1E6969B50], MEMORY[0x1E6969B90]);
      sub_1A524E214();
      v59 = 0;
      do
      {
        v60 = v59 + 1;
        var80[0] = v59;
        sub_1A524E154();
        v59 = v60;
      }

      while (v13 != v60);
      v50 = v10;
      goto LABEL_13;
    }

    if (v158 != 1)
    {
      break;
    }

    sub_1A3C29E4C(&qword_1EB12AF50, MEMORY[0x1E6969B50], MEMORY[0x1E6969B90]);
    v52 = v146;
    sub_1A524E214();
    v50 = v52;
    if (v13 == 1)
    {
      goto LABEL_13;
    }

    v53 = 1;
    v54 = v146;
    do
    {
      if (__OFADD__(v53, 2))
      {
        v55 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v55 = v53 + 2;
      }

      var80[0] = v53;
      sub_1A524E154();
      v53 = v55;
    }

    while (v55 < v13);
LABEL_12:
    v50 = v54;
    v17 = v159;
LABEL_13:
    ++v49;
    v51 = v154;
    (*v162)(v154, v50, v12);
    v0 = sub_1A52414A4();
    (*v161)(v51, v12);
    if (v0)
    {

      if (v158)
      {
        v67 = 0.75;
      }

      else
      {
        v67 = 0.5;
      }

      if (v158 == 4)
      {
        v67 = 1.0;
      }

      goto LABEL_60;
    }
  }

  if (v158 == 2)
  {
    sub_1A3C29E4C(&qword_1EB12AF50, MEMORY[0x1E6969B50], MEMORY[0x1E6969B90]);
    v64 = v145;
    sub_1A524E214();
    v50 = v64;
    if (v13 == 1)
    {
      goto LABEL_13;
    }

    v65 = 1;
    v54 = v145;
    do
    {
      if (__OFADD__(v65, 3))
      {
        v66 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v66 = v65 + 3;
      }

      var80[0] = v65;
      sub_1A524E154();
      v65 = v66;
    }

    while (v66 < v13);
    goto LABEL_12;
  }

LABEL_129:
  LODWORD(vars8) = 0;
  var80[16] = 212;
  result = sub_1A524E6E4();
  __break(1u);
  return result;
}