void sub_1A442DD50(uint64_t a1@<X8>)
{
  v3[9] = a1;
  v1 = type metadata accessor for SuggestLessPeopleOptionSelectionRowView(0);
  v3[6] = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v3[7] = v2;
  v3[8] = v3 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3[5] = sub_1A5249314();
  v4 = 1;
  sub_1A5249584();
  LOBYTE(v5) = 1;
  sub_1A442E3E4();
}

void sub_1A442E3E4()
{
  v2 = sub_1A52407E4();
  MEMORY[0x1EEE9AC00](v2);
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A442E6FC(uint64_t a1)
{
  v2 = *(a1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](a1 - 8);
  v4 = sub_1A5247B54();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A5247B34();
  sub_1A4432BCC(v1, &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for CancelButton);
  v7 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v8 = swift_allocObject();
  sub_1A44329DC(&v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v8 + v7, type metadata accessor for CancelButton);
  return MEMORY[0x1A5906A80](v6, sub_1A4432774, v8);
}

uint64_t sub_1A442E86C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v31 = sub_1A5242D14();
  v4 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31);
  v30 = &v27[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v27[-v7];
  v32 = sub_1A5249314();
  LOBYTE(v53) = 1;
  v29 = a1;
  sub_1A442ECDC(a1, &v36);
  v9 = v36;
  v10 = BYTE8(v36);
  type metadata accessor for OptionListHeader(0);
  sub_1A524BC74();
  sub_1A52481F4();
  LOBYTE(v44[0]) = v10;
  LOBYTE(v34[0]) = BYTE8(v36);
  v33[0] = BYTE8(v37);
  *&v58 = 0;
  BYTE8(v58) = 1;
  *&v59 = v9;
  BYTE8(v59) = v10;
  *&v60 = v36;
  BYTE8(v60) = BYTE8(v36);
  *&v61 = v37;
  BYTE8(v61) = BYTE8(v37);
  v62[0] = v38;
  *&v62[1] = 0;
  BYTE8(v62[1]) = 1;
  v63 = 0;
  v64 = 1;
  v65 = v9;
  v66 = v10;
  v67 = v36;
  v68 = BYTE8(v36);
  v69 = v37;
  v70 = BYTE8(v37);
  v71 = v38;
  v72 = 0;
  v73 = 1;
  sub_1A4432BCC(&v58, &v36, sub_1A4431364);
  sub_1A443017C(&v63, sub_1A4431364);
  *(&v52[2] + 7) = v60;
  *(&v52[3] + 7) = v61;
  *(&v52[4] + 7) = v62[0];
  v52[5] = *(v62 + 9);
  *(v52 + 7) = v58;
  *(&v52[1] + 7) = v59;
  v28 = v53;
  sub_1A3D61808(v8);
  v11 = v30;
  v12 = v31;
  (*(v4 + 104))(v30, *MEMORY[0x1E69C2210], v31);
  sub_1A5242D04();
  v13 = *(v4 + 8);
  v13(v11, v12);
  v13(v8, v12);
  sub_1A524BC74();
  sub_1A52481F4();
  v14 = v53;
  v15 = v54;
  v16 = v55;
  v17 = v56;
  v33[136] = 1;
  v33[128] = v54;
  v33[120] = v56;
  v18 = v32;
  v34[0] = v32;
  v34[1] = 0;
  v19 = v28;
  v35[0] = v28;
  *&v35[1] = v52[0];
  *&v35[49] = v52[3];
  *&v35[33] = v52[2];
  *&v35[65] = v52[4];
  *&v35[81] = v52[5];
  *&v35[17] = v52[1];
  v39 = *&v35[32];
  v38 = *&v35[16];
  v37 = *v35;
  v36 = v32;
  LOBYTE(v43) = HIBYTE(v52[5]);
  v42 = *&v35[80];
  v41 = *&v35[64];
  v40 = *&v35[48];
  v20 = v32;
  v21 = *v35;
  v22 = *&v35[32];
  *(a2 + 32) = *&v35[16];
  *(a2 + 48) = v22;
  *a2 = v20;
  *(a2 + 16) = v21;
  v23 = v40;
  v24 = v42;
  v25 = v43;
  *(a2 + 80) = v41;
  *(a2 + 96) = v24;
  *(a2 + 64) = v23;
  *(a2 + 112) = v25;
  *(a2 + 120) = 0;
  *(a2 + 128) = 1;
  *(a2 + 136) = v14;
  *(a2 + 144) = v15;
  *(a2 + 152) = v16;
  *(a2 + 160) = v17;
  *(a2 + 168) = v57;
  v44[0] = v18;
  v44[1] = 0;
  v45 = v19;
  v47 = v52[1];
  v46 = v52[0];
  v51 = v52[5];
  v50 = v52[4];
  v49 = v52[3];
  v48 = v52[2];
  sub_1A4432BCC(v34, v33, sub_1A44312D0);
  return sub_1A443017C(v44, sub_1A44312D0);
}

void sub_1A442ECDC(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1A524B554();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1A5243454();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(a1 + *(type metadata accessor for OptionListHeader(0) + 20));
  if (v12)
  {
    (*(v9 + 104))(v11, *MEMORY[0x1E69C24B0], v8);
    v13 = v12;
    sub_1A524B534();
    (*(v5 + 104))(v7, *MEMORY[0x1E6981630], v4);
    v14 = sub_1A524B5C4();

    (*(v5 + 8))(v7, v4);
    v17 = v14;
    v18 = 0;

    sub_1A5249744();
  }

  else
  {
    v15 = [objc_opt_self() placeholderTextColor];
    v17 = sub_1A524B284();
    v18 = 1;
    sub_1A5249744();
  }

  v16 = v20;
  *a2 = v19;
  *(a2 + 8) = v16;
}

double sub_1A442EF80@<D0>(uint64_t a1@<X8>)
{
  v3 = v2;
  v5 = sub_1A5249574();
  v27 = 1;
  sub_1A442E86C(v3, &v14);
  v36 = v22;
  v37 = v23;
  v38 = v24;
  v32 = v18;
  v33 = v19;
  v34 = v20;
  v35 = v21;
  v28 = v14;
  v29 = v15;
  v30 = v16;
  v31 = v17;
  v40[8] = v22;
  v40[9] = v23;
  v40[10] = v24;
  v40[4] = v18;
  v40[5] = v19;
  v40[6] = v20;
  v40[7] = v21;
  v40[0] = v14;
  v40[1] = v15;
  v39 = v25;
  v41 = v25;
  v40[2] = v16;
  v40[3] = v17;
  sub_1A4432BCC(&v28, v13, sub_1A4431200);
  sub_1A443017C(v40, sub_1A4431200);
  *(&v26[8] + 7) = v36;
  *(&v26[9] + 7) = v37;
  *(&v26[10] + 7) = v38;
  *(&v26[11] + 7) = v39;
  *(&v26[4] + 7) = v32;
  *(&v26[5] + 7) = v33;
  *(&v26[6] + 7) = v34;
  *(&v26[7] + 7) = v35;
  *(v26 + 7) = v28;
  *(&v26[1] + 7) = v29;
  *(&v26[2] + 7) = v30;
  *(&v26[3] + 7) = v31;
  v6 = v26[9];
  *(a1 + 145) = v26[8];
  *(a1 + 161) = v6;
  *(a1 + 177) = v26[10];
  *(a1 + 192) = *(&v26[10] + 15);
  v7 = v26[5];
  *(a1 + 81) = v26[4];
  *(a1 + 97) = v7;
  v8 = v26[7];
  *(a1 + 113) = v26[6];
  *(a1 + 129) = v8;
  v9 = v26[1];
  *(a1 + 17) = v26[0];
  *(a1 + 33) = v9;
  result = *&v26[2];
  v11 = v26[3];
  *(a1 + 49) = v26[2];
  v12 = v27;
  *a1 = v5;
  *(a1 + 8) = 0;
  *(a1 + 16) = v12;
  *(a1 + 65) = v11;
  return result;
}

void sub_1A442F17C(char *a1@<X0>, uint64_t *a2@<X8>)
{
  v122 = a2;
  v110 = sub_1A5249E64();
  v112 = *(v110 - 8);
  MEMORY[0x1EEE9AC00](v110);
  v107 = v103 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for OptionListFooter(0);
  v5 = v4 - 8;
  v104 = *(v4 - 8);
  v103[1] = *(v104 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v103[0] = v103 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4431860(0);
  v108 = v7;
  v109 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v105 = v103 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A443168C(0, &qword_1EB13A810, sub_1A4431700, sub_1A3E42C88);
  v111 = v9 - 8;
  MEMORY[0x1EEE9AC00](v9 - 8);
  v106 = v103 - v10;
  sub_1A44315DC(0);
  v114 = v11;
  v12 = MEMORY[0x1EEE9AC00](v11);
  v119 = v103 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4431550(0, v12);
  v118 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v121 = v103 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v117 = v103 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v120 = v103 - v19;
  v20 = sub_1A52407E4();
  v21 = MEMORY[0x1EEE9AC00](v20);
  (*(v23 + 16))(v103 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0), &a1[*(v5 + 32)], v21);
  v24 = sub_1A524A454();
  v26 = v25;
  v28 = v27;
  sub_1A524A254();
  v29 = sub_1A524A3C4();
  v31 = v30;
  v33 = v32;

  sub_1A3E04DF4(v24, v26, v28 & 1);

  sub_1A524B4A4();
  v34 = sub_1A524A364();
  v116 = v35;
  v113 = v36;
  v115 = v37;

  sub_1A3E04DF4(v29, v31, v33 & 1);

  v38 = a1;
  v39 = a1;
  v40 = v103[0];
  sub_1A4432BCC(v38, v103[0], type metadata accessor for OptionListFooter);
  v41 = (*(v104 + 80) + 16) & ~*(v104 + 80);
  v42 = swift_allocObject();
  sub_1A44329DC(v40, v42 + v41, type metadata accessor for OptionListFooter);
  sub_1A439D5EC(0);
  sub_1A4431918();
  v43 = v105;
  sub_1A524B704();
  v44 = v107;
  sub_1A5249E54();
  sub_1A443005C(&qword_1EB13A840, sub_1A4431860, MEMORY[0x1E697D680]);
  sub_1A443005C(&qword_1EB127A50, MEMORY[0x1E697CB70], MEMORY[0x1E697CB68]);
  v45 = v106;
  v46 = v108;
  v47 = v110;
  sub_1A524A934();
  (*(v112 + 8))(v44, v47);
  (*(v109 + 8))(v43, v46);
  LOBYTE(v24) = sub_1A524A074();
  sub_1A5247BC4();
  v49 = v48;
  v51 = v50;
  v53 = v52;
  v55 = v54;
  sub_1A4431734(0);
  v57 = &v45[*(v56 + 36)];
  *v57 = v24;
  *(v57 + 1) = v49;
  *(v57 + 2) = v51;
  *(v57 + 3) = v53;
  *(v57 + 4) = v55;
  v57[40] = 0;
  sub_1A4431700(0);
  v59 = &v45[*(v58 + 36)];
  sub_1A3E74608(0);
  v61 = *(v60 + 28);
  v62 = *MEMORY[0x1E697DC10];
  v63 = sub_1A5247E14();
  (*(*(v63 - 8) + 104))(v59 + v61, v62, v63);
  *v59 = swift_getKeyPath();
  v64 = v45;
  v65 = &v45[*(v111 + 44)];
  v66 = *(sub_1A5248A14() + 20);
  v67 = *MEMORY[0x1E697F468];
  v68 = sub_1A52494A4();
  (*(*(v68 - 8) + 104))(&v65[v66], v67, v68);
  __asm { FMOV            V0.2D, #14.0 }

  *v65 = _Q0;
  sub_1A3E42C88(0);
  *&v65[*(v74 + 36)] = 256;
  v75 = v39;
  v76 = *v39;
  v77 = *(v75 + 1);
  v78 = *(v75 + 2);
  v79 = *(v75 + 3);
  v125 = v76;
  v126 = v77;
  v127 = v78;
  v128 = v79;
  sub_1A3C69B6C(0, &qword_1EB13A730, MEMORY[0x1E69E6158], MEMORY[0x1E6981948]);
  v81 = v80;
  MEMORY[0x1A5906C60](&v123);
  if (v123 || v124 != 0xE000000000000000)
  {
    v83 = sub_1A524EAB4();

    if (v83)
    {
      v82 = sub_1A524B3D4();
    }

    else
    {
      v82 = sub_1A524B3C4();
    }
  }

  else
  {

    v82 = sub_1A524B3D4();
  }

  v84 = v82;
  v85 = v119;
  KeyPath = swift_getKeyPath();
  v125 = v84;
  v87 = sub_1A5248204();
  sub_1A3CFCE8C(v64, v85);
  v88 = (v85 + *(v114 + 36));
  *v88 = KeyPath;
  v88[1] = v87;
  v125 = v76;
  v126 = v77;
  v127 = v78;
  v128 = v79;
  MEMORY[0x1A5906C60](&v123, v81);
  if (v123 || v124 != 0xE000000000000000)
  {
    v89 = sub_1A524EAB4();
  }

  else
  {

    v89 = 1;
  }

  v90 = swift_getKeyPath();
  v91 = swift_allocObject();
  *(v91 + 16) = v89 & 1;
  v92 = v117;
  sub_1A4432AE4(v85, v117, sub_1A44315DC);
  v93 = (v92 + *(v118 + 36));
  *v93 = v90;
  v93[1] = sub_1A3E07024;
  v93[2] = v91;
  v94 = v120;
  sub_1A4432AE4(v92, v120, sub_1A4431550);
  v95 = v121;
  sub_1A3CFCF30(v94, v121, v96);
  v97 = v122;
  v99 = v115;
  v98 = v116;
  *v122 = v34;
  v97[1] = v98;
  LOBYTE(v90) = v113 & 1;
  *(v97 + 16) = v113 & 1;
  v97[3] = v99;
  v97[4] = 0;
  *(v97 + 40) = 1;
  sub_1A44314E0(0, v100);
  sub_1A3CFCF30(v95, v97 + *(v101 + 64), v102);
  sub_1A3E75E68(v34, v98, v90);
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

__n128 sub_1A442FBA8@<Q0>(uint64_t a1@<X8>)
{
  v2 = sub_1A524C634();
  v3 = PXLocalizedString(v2);

  v4 = sub_1A524C674();
  v6 = v5;

  *&v17 = v4;
  *(&v17 + 1) = v6;
  sub_1A3D5F9DC();
  v7 = sub_1A524A464();
  v9 = v8;
  LOBYTE(v6) = v10;
  v12 = v11;
  sub_1A524BC74();
  sub_1A5248AD4();
  v13 = v6 & 1;
  v14 = sub_1A524A264();
  KeyPath = swift_getKeyPath();
  *a1 = v7;
  *(a1 + 8) = v9;
  *(a1 + 16) = v13;
  *(a1 + 24) = v12;
  *(a1 + 96) = v21;
  *(a1 + 112) = v22;
  *(a1 + 128) = v23;
  *(a1 + 32) = v17;
  *(a1 + 48) = v18;
  result = v20;
  *(a1 + 64) = v19;
  *(a1 + 80) = v20;
  *(a1 + 144) = KeyPath;
  *(a1 + 152) = v14;
  return result;
}

void sub_1A442FCF0(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_1A5242D14();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v14 - v9;
  sub_1A3D61808(&v14 - v9);
  (*(v5 + 104))(v7, *MEMORY[0x1E69C2210], v4);
  v11 = sub_1A5242D04();
  v12 = *(v5 + 8);
  v12(v7, v4);
  v12(v10, v4);
  *a1 = sub_1A5249574();
  *(a1 + 8) = 0;
  *(a1 + 16) = (v11 & 1) == 0;
  sub_1A4432C3C(0, &qword_1EB13A7E8, sub_1A44314AC, MEMORY[0x1E697E300], MEMORY[0x1E697E2F8]);
  sub_1A442F17C(v2, (a1 + *(v13 + 44)));
}

id sub_1A442FE98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_unknownObjectWeakInit();
  v8 = &v4[OBJC_IVAR____TtC12PhotosUICore46SuggestLessPeopleOptionSelectionViewController_completionHandler];
  *v8 = 0;
  v8[1] = 0;
  *&v4[OBJC_IVAR____TtC12PhotosUICore46SuggestLessPeopleOptionSelectionViewController_people] = a1;
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  swift_beginAccess();
  v9 = *v8;
  v10 = v8[1];
  *v8 = a3;
  v8[1] = a4;

  sub_1A3C33378(v9, v10);
  v12.receiver = v4;
  v12.super_class = type metadata accessor for SuggestLessPeopleOptionSelectionViewController();
  return objc_msgSendSuper2(&v12, sel_initWithNibName_bundle_, 0, 0);
}

void sub_1A442FFC8(uint64_t a1)
{
  if (!qword_1EB13A650)
  {
    v2 = type metadata accessor for SuggestLessPeopleOptionSelectionView(255);
    v3 = sub_1A443005C(&qword_1EB13A658, type metadata accessor for SuggestLessPeopleOptionSelectionView, &unk_1A533BDC8);
    v5 = type metadata accessor for PXSwiftUIHostingViewController(a1, v2, v3, v4);
    if (!v6)
    {
      atomic_store(v5, &qword_1EB13A650);
    }
  }
}

uint64_t sub_1A443005C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1A44300F8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1A443017C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1A44301DC(uint64_t a1, double a2)
{
  if (!qword_1EB13A680)
  {
    sub_1A4430380(255, a2);
    sub_1A4430504(255, v2);
    sub_1A4430AD4(255);
    sub_1A4430608(255, v3);
    sub_1A44306DC(255, v4);
    sub_1A5249904();
    sub_1A443005C(&qword_1EB13A6F0, sub_1A44306DC, MEMORY[0x1E697CD20]);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_1A443005C(&qword_1EB13A700, sub_1A4430AD4, MEMORY[0x1E69817F8]);
    swift_getOpaqueTypeConformance2();
    v5 = sub_1A5248484();
    if (!v6)
    {
      atomic_store(v5, &qword_1EB13A680);
    }
  }
}

void sub_1A4430380(uint64_t a1, double a2)
{
  if (!qword_1EB13A688)
  {
    sub_1A4430504(255, a2);
    sub_1A4430AD4(255);
    sub_1A4430608(255, v2);
    sub_1A44306DC(255, v3);
    sub_1A5249904();
    sub_1A443005C(&qword_1EB13A6F0, sub_1A44306DC, MEMORY[0x1E697CD20]);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_1A443005C(&qword_1EB13A700, sub_1A4430AD4, MEMORY[0x1E69817F8]);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v5)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB13A688);
    }
  }
}

void sub_1A4430504(uint64_t a1, double a2)
{
  if (!qword_1EB13A690)
  {
    sub_1A4430608(255, a2);
    sub_1A44306DC(255, v2);
    sub_1A5249904();
    sub_1A443005C(&qword_1EB13A6F0, sub_1A44306DC, MEMORY[0x1E697CD20]);
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v4)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB13A690);
    }
  }
}

void sub_1A4430608(uint64_t a1, double a2)
{
  if (!qword_1EB13A698)
  {
    sub_1A44306DC(255, a2);
    sub_1A5249904();
    sub_1A443005C(&qword_1EB13A6F0, sub_1A44306DC, MEMORY[0x1E697CD20]);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v3)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB13A698);
    }
  }
}

void sub_1A44306DC(uint64_t a1, double a2)
{
  if (!qword_1EB13A6A0)
  {
    sub_1A443075C(255, a2);
    sub_1A4430938(v2);
    v3 = sub_1A524A2D4();
    if (!v4)
    {
      atomic_store(v3, &qword_1EB13A6A0);
    }
  }
}

void sub_1A443075C(uint64_t a1, double a2)
{
  if (!qword_1EB13A6A8)
  {
    type metadata accessor for OptionListHeader(255);
    sub_1A44307FC(255);
    type metadata accessor for OptionListFooter(255);
    v2 = sub_1A524BA74();
    if (!v3)
    {
      atomic_store(v2, &qword_1EB13A6A8);
    }
  }
}

void sub_1A44307FC(uint64_t a1)
{
  if (!qword_1EB13A6B0)
  {
    sub_1A44308C4(255);
    type metadata accessor for SuggestLessPeopleOptionSelectionRowView(255);
    sub_1A443005C(&qword_1EB13A6C0, sub_1A44308C4, MEMORY[0x1E69E6338]);
    v1 = sub_1A524B9D4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB13A6B0);
    }
  }
}

unint64_t sub_1A4430938(double a1)
{
  result = qword_1EB13A6C8;
  if (!qword_1EB13A6C8)
  {
    sub_1A443075C(255, a1);
    sub_1A443005C(&qword_1EB13A6D0, type metadata accessor for OptionListHeader, &unk_1A533BE68);
    sub_1A4430A2C();
    sub_1A443005C(&qword_1EB13A6E8, type metadata accessor for OptionListFooter, &unk_1A533BEB8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13A6C8);
  }

  return result;
}

unint64_t sub_1A4430A2C()
{
  result = qword_1EB13A6D8;
  if (!qword_1EB13A6D8)
  {
    sub_1A44307FC(255);
    sub_1A443005C(&qword_1EB13A6E0, type metadata accessor for SuggestLessPeopleOptionSelectionRowView, &unk_1A533BE18);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13A6D8);
  }

  return result;
}

void sub_1A4430AD4(uint64_t a1)
{
  if (!qword_1EB13A6F8)
  {
    type metadata accessor for CancelButton(255);
    sub_1A4430B58();
    v1 = sub_1A524B784();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB13A6F8);
    }
  }
}

unint64_t sub_1A4430B58()
{
  result = qword_1EB1C0FA0[0];
  if (!qword_1EB1C0FA0[0])
  {
    type metadata accessor for CancelButton(255);
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB1C0FA0);
  }

  return result;
}

void sub_1A4430BBC(uint64_t a1, double a2)
{
  if (!qword_1EB13A720)
  {
    sub_1A44301DC(255, a2);
    sub_1A5249C44();
    sub_1A443005C(&qword_1EB13A708, sub_1A44301DC, MEMORY[0x1E697C0C0]);
    sub_1A443005C(&qword_1EB13A710, MEMORY[0x1E697C938], MEMORY[0x1E697C930]);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v3)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB13A720);
    }
  }
}

void sub_1A4430CF4(uint64_t a1)
{
  if (!qword_1EB13A740)
  {
    sub_1A40745F4(255);
    sub_1A4430D90(255, &qword_1EB13A748, sub_1A43D3010, MEMORY[0x1E697E5C8]);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata3, &qword_1EB13A740);
    }
  }
}

void sub_1A4430D90(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  if (!*a2)
  {
    a3(255);
    v5 = sub_1A5248804();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_1A4430DF4(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  if (!*a2)
  {
    sub_1A3C69B6C(255, a3, a4, MEMORY[0x1E69E6720]);
    v5 = sub_1A5249F44();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_1A4430E60()
{
  v1 = type metadata accessor for SuggestLessPeopleOptionSelectionRowView(0);
  v2 = (v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)));
  v3 = (v2 + *(v1 + 20));
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  v7 = v3[3];
  v15 = *v3;
  v16 = v5;
  v17 = v6;
  v18 = v7;
  sub_1A3C69B6C(0, &qword_1EB13A730, MEMORY[0x1E69E6158], MEMORY[0x1E6981948]);
  MEMORY[0x1A5906C60](&v13);
  v9 = *v2;
  v8 = v2[1];
  if (v13 == *v2 && v14 == v8)
  {
  }

  else
  {
    v11 = sub_1A524EAB4();

    if ((v11 & 1) == 0)
    {
      v15 = v4;
      v16 = v5;
      v17 = v6;
      v18 = v7;
      v13 = v9;
      v14 = v8;
      _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
    }
  }

  v15 = v4;
  v16 = v5;
  v17 = v6;
  v18 = v7;
  v13 = 0;
  v14 = 0xE000000000000000;
  return sub_1A524B904();
}

void sub_1A4430FE0(uint64_t a1)
{
  if (!qword_1EB13A758)
  {
    sub_1A4430CC0(255);
    sub_1A443005C(&qword_1EB13A760, sub_1A4430CC0, MEMORY[0x1E6981F48]);
    v1 = sub_1A524B784();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB13A758);
    }
  }
}

unint64_t sub_1A4431074()
{
  result = qword_1EB13A768;
  if (!qword_1EB13A768)
  {
    sub_1A4430FAC(255);
    sub_1A443005C(&unk_1EB13A770, sub_1A4430FE0, MEMORY[0x1E69817F8]);
    sub_1A443005C(&qword_1EB127C80, sub_1A3F330A8, MEMORY[0x1E697FD58]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13A768);
  }

  return result;
}

void sub_1A443117C(uint64_t a1)
{
  if (!qword_1EB13A788)
  {
    sub_1A4430FAC(255);
    sub_1A4431074();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB13A788);
    }
  }
}

void sub_1A4431234(uint64_t a1)
{
  if (!qword_1EB13A7A0)
  {
    sub_1A44312D0(255);
    sub_1A44318C4(255, &qword_1EB1284E0, MEMORY[0x1E6981840], MEMORY[0x1E697E048], MEMORY[0x1E697E830]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB13A7A0);
    }
  }
}

void sub_1A44312D0(uint64_t a1)
{
  if (!qword_1EB13A7A8)
  {
    sub_1A4431364(255);
    sub_1A443005C(&unk_1EB13A7D8, sub_1A4431364, MEMORY[0x1E6981F48]);
    v1 = sub_1A524B784();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB13A7A8);
    }
  }
}

void sub_1A4431398(uint64_t a1)
{
  if (!qword_1EB13A7B8)
  {
    sub_1A4430D90(255, &unk_1EB13A7C0, sub_1A4431428, MEMORY[0x1E697E048]);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata3, &qword_1EB13A7B8);
    }
  }
}

void sub_1A4431428(uint64_t a1)
{
  if (!qword_1EB142340)
  {
    sub_1A44318C4(255, &qword_1EB13A7D0, MEMORY[0x1E6981748], MEMORY[0x1E69815C0], MEMORY[0x1E697F960]);
    v1 = sub_1A524B514();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB142340);
    }
  }
}

void sub_1A44314E0(uint64_t a1, double a2)
{
  if (!qword_1EB13A7F8)
  {
    sub_1A4431550(255, a2);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v3)
    {
      atomic_store(TupleTypeMetadata3, &qword_1EB13A7F8);
    }
  }
}

void sub_1A4431550(uint64_t a1, double a2)
{
  if (!qword_1EB13A800)
  {
    sub_1A44315DC(255);
    sub_1A3C69B6C(255, &qword_1EB1276F0, MEMORY[0x1E69E6370], MEMORY[0x1E6980B20]);
    v2 = sub_1A5248804();
    if (!v3)
    {
      atomic_store(v2, &qword_1EB13A800);
    }
  }
}

void sub_1A44315DC(uint64_t a1)
{
  if (!qword_1EB13A808)
  {
    sub_1A443168C(255, &qword_1EB13A810, sub_1A4431700, sub_1A3E42C88);
    sub_1A4430DF4(255, &qword_1EB127868, &qword_1EB128960, MEMORY[0x1E697E0B8]);
    v1 = sub_1A5248804();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB13A808);
    }
  }
}

void sub_1A443168C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    a4(255);
    v6 = sub_1A5248804();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_1A443175C(uint64_t a1, double a2)
{
  if (!qword_1EB13A828)
  {
    sub_1A4431860(255);
    sub_1A5249E64();
    sub_1A443005C(&qword_1EB13A840, sub_1A4431860, MEMORY[0x1E697D680]);
    sub_1A443005C(&qword_1EB127A50, MEMORY[0x1E697CB70], MEMORY[0x1E697CB68]);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v3)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB13A828);
    }
  }
}

void sub_1A4431860(uint64_t a1)
{
  if (!qword_1EB13A830)
  {
    sub_1A439D5EC(255);
    sub_1A4431918();
    v1 = sub_1A524B764();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB13A830);
    }
  }
}

void sub_1A44318C4(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
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

unint64_t sub_1A4431918()
{
  result = qword_1EB13A838;
  if (!qword_1EB13A838)
  {
    sub_1A439D5EC(255);
    sub_1A410BDB4();
    sub_1A3F96350();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13A838);
  }

  return result;
}

uint64_t sub_1A4431AF8(uint64_t a1)
{
  result = sub_1A52407E4();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_1A4431B9C(uint64_t a1)
{
  sub_1A3C52C70(319, &qword_1EB1265C0, 0x1E6978980);
  if (v1 <= 0x3F)
  {
    sub_1A4431C48(319);
    if (v2 <= 0x3F)
    {
      sub_1A44300C4(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1A4431C48(uint64_t a1)
{
  if (!qword_1EB13A8B0)
  {
    sub_1A3CB6988(255, &unk_1EB13A8B8, &qword_1EB13A648, 0x1E696AEE0, MEMORY[0x1E69E62F8]);
    v1 = sub_1A524DF24();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB13A8B0);
    }
  }
}

void sub_1A4431CF4(uint64_t a1)
{
  type metadata accessor for SuggestLessPeopleOptionSelectionViewController();
  sub_1A3CB6988(319, &qword_1EB120BF0, &qword_1EB1265C0, 0x1E6978980, MEMORY[0x1E69E62F8]);
  if (v1 <= 0x3F)
  {
    sub_1A3C69B6C(319, &unk_1EB13A670, MEMORY[0x1E69E6158], MEMORY[0x1E6981790]);
    if (v2 <= 0x3F)
    {
      sub_1A3C69B6C(319, &qword_1EB1274B0, MEMORY[0x1E69E6370], MEMORY[0x1E6981790]);
      if (v3 <= 0x3F)
      {
        sub_1A44300F8(319, &qword_1EB124730, MEMORY[0x1E697BF90], MEMORY[0x1E697DCC0]);
        if (v4 <= 0x3F)
        {
          sub_1A4431F10(319);
          if (v5 <= 0x3F)
          {
            sub_1A44300F8(319, &unk_1EB124680, sub_1A3E316EC, MEMORY[0x1E697DCC0]);
            if (v6 <= 0x3F)
            {
              type metadata accessor for CGSize(319);
              if (v7 <= 0x3F)
              {
                sub_1A3C52C70(319, &qword_1EB1265C0, 0x1E6978980);
                if (v8 <= 0x3F)
                {
                  sub_1A4431C48(319);
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
    }
  }
}

void sub_1A4431F10(uint64_t a1)
{
  if (!qword_1EB13A8C8)
  {
    type metadata accessor for FaceCropImageManager(255);
    sub_1A443005C(&qword_1EB13A640, type metadata accessor for FaceCropImageManager, &unk_1A5360EA0);
    v1 = sub_1A52484C4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB13A8C8);
    }
  }
}

void sub_1A4431FCC(uint64_t a1)
{
  type metadata accessor for SuggestLessPeopleOption(319);
  if (v1 <= 0x3F)
  {
    sub_1A3C69B6C(319, &qword_1EB13A730, MEMORY[0x1E69E6158], MEMORY[0x1E6981948]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1A443209C(uint64_t a1)
{
  sub_1A44300F8(319, &qword_1EB124870, MEMORY[0x1E69C2218], MEMORY[0x1E697DCC0]);
  if (v1 <= 0x3F)
  {
    sub_1A3CB6988(319, &qword_1EB126620, &qword_1EB126630, 0x1E69DCAB8, MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      type metadata accessor for CGSize(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1A44321BC(uint64_t a1)
{
  sub_1A3C69B6C(319, &qword_1EB13A730, MEMORY[0x1E69E6158], MEMORY[0x1E6981948]);
  if (v1 <= 0x3F)
  {
    sub_1A44300F8(319, &qword_1EB124870, MEMORY[0x1E69C2218], MEMORY[0x1E697DCC0]);
    if (v2 <= 0x3F)
    {
      sub_1A52407E4();
      if (v3 <= 0x3F)
      {
        sub_1A44300F8(319, &qword_1EB1201F0, sub_1A3C3637C, MEMORY[0x1E69E6720]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

unint64_t sub_1A44322F4()
{
  result = qword_1EB13A8D0;
  if (!qword_1EB13A8D0)
  {
    sub_1A4430D90(255, &qword_1EB13A718, sub_1A4430BBC, MEMORY[0x1E69805D8]);
    sub_1A44301DC(255, v1);
    sub_1A5249C44();
    sub_1A443005C(&qword_1EB13A708, sub_1A44301DC, MEMORY[0x1E697C0C0]);
    sub_1A443005C(&qword_1EB13A710, MEMORY[0x1E697C938], MEMORY[0x1E697C930]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13A8D0);
  }

  return result;
}

unint64_t sub_1A4432448()
{
  result = qword_1EB13A8D8;
  if (!qword_1EB13A8D8)
  {
    sub_1A4430D90(255, &qword_1EB13A790, sub_1A4431154, MEMORY[0x1E697E5E0]);
    sub_1A44324EC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13A8D8);
  }

  return result;
}

unint64_t sub_1A44324EC()
{
  result = qword_1EB13A8E0;
  if (!qword_1EB13A8E0)
  {
    sub_1A4431154(255);
    sub_1A4430FAC(255);
    sub_1A4431074();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13A8E0);
  }

  return result;
}

void sub_1A443259C(uint64_t a1)
{
  if (!qword_1EB13A8F0)
  {
    sub_1A4431200(255);
    sub_1A443005C(&qword_1EB13A8F8, sub_1A4431200, MEMORY[0x1E6981F48]);
    v1 = sub_1A524B894();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB13A8F0);
    }
  }
}

void sub_1A4432630(uint64_t a1)
{
  if (!qword_1EB13A908)
  {
    sub_1A44314AC(255);
    sub_1A443005C(&qword_1EB13A910, sub_1A44314AC, MEMORY[0x1E6981F48]);
    v1 = sub_1A524B894();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB13A908);
    }
  }
}

uint64_t sub_1A44326EC(uint64_t a1)
{
  result = sub_1A5248284();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t objectdestroy_6Tm_0()
{
  v1 = type metadata accessor for SuggestLessPeopleOptionSelectionView(0);
  v2 = (v0 + ((*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80)));

  v3 = v1[8];
  sub_1A44300F8(0, &unk_1EB128A60, MEMORY[0x1E697BF90], MEMORY[0x1E697DCB8]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = sub_1A5248284();
    (*(*(v4 - 8) + 8))(v2 + v3, v4);
  }

  else
  {
  }

  sub_1A3EF9960(*(v2 + v1[10]), *(v2 + v1[10] + 8), *(v2 + v1[10] + 16), *(v2 + v1[10] + 17));

  return swift_deallocObject();
}

void sub_1A443297C()
{
  v1 = *(type metadata accessor for SuggestLessPeopleOptionSelectionView(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  sub_1A442D71C(v2);
}

uint64_t sub_1A44329DC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A4432A44()
{
  v1 = type metadata accessor for OptionListFooter(0);
  v3 = *(v1 - 8);
  result = v1 - 8;
  v4 = v0 + *(result + 36) + ((*(v3 + 80) + 16) & ~*(v3 + 80));
  v5 = *v4;
  if (*v4)
  {
    v6 = *(v4 + 8);

    v5(v7);

    return sub_1A3C33378(v5, v6);
  }

  return result;
}

uint64_t sub_1A4432AE4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A4432B4C(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_1A44300F8(0, a3, a4, MEMORY[0x1E697DCB8]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1A4432BCC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_1A4432C3C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t a5)
{
  if (!*a2)
  {
    a3(255);
    v6 = sub_1A52483B4();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_1A4432CA8()
{
  v1 = *(type metadata accessor for SuggestLessPeopleOptionSelectionView(0) - 8);
  v2 = (v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80)));

  sub_1A442CE58(v2);
}

__n128 sub_1A4432D10@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  type metadata accessor for SuggestLessPeopleOptionSelectionView(0);
  sub_1A4432BCC(a1, a2, type metadata accessor for SuggestLessPeopleOption);
  sub_1A3C69B6C(0, &unk_1EB13A670, MEMORY[0x1E69E6158], MEMORY[0x1E6981790]);
  sub_1A524B6C4();
  v4 = (a2 + *(type metadata accessor for SuggestLessPeopleOptionSelectionRowView(0) + 20));
  result = v6;
  *v4 = v6;
  v4[1].n128_u64[0] = v7;
  v4[1].n128_u64[1] = v8;
  return result;
}

void sub_1A4432E10()
{
  v1 = *(type metadata accessor for SuggestLessPeopleOptionSelectionView(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = v0 + v2;
  v4 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));
  type metadata accessor for SuggestLessPeopleOptionsDataSource(0);
  swift_projectBox();
  v5 = *(v3 + 48);
  LOBYTE(v23) = *(v3 + 40);
  v24 = v5;
  LOBYTE(v29) = 1;
  v6 = MEMORY[0x1E6981790];
  sub_1A3C69B6C(0, &qword_1EB1274B0, MEMORY[0x1E69E6370], MEMORY[0x1E6981790]);
  sub_1A524B6B4();
  v7 = *(v3 + 16);
  v8 = *(v3 + 24);
  v9 = *(v3 + 32);
  v23 = v7;
  v24 = v8;
  v25 = v9;
  sub_1A3C69B6C(0, &unk_1EB13A670, MEMORY[0x1E69E6158], v6);
  sub_1A524B6A4();
  if (v29 || v30 != 0xE000000000000000)
  {
    v11 = sub_1A524EAB4();

    if ((v11 & 1) == 0)
    {
      v23 = v7;
      v24 = v8;
      v25 = v9;
      sub_1A524B6A4();
      swift_beginAccess();
      sub_1A442C07C(v29, v30);
    }
  }

  else
  {
  }

  v12 = MEMORY[0x1E69E7D40];
  v13 = (*((*MEMORY[0x1E69E7D40] & *v4) + 0x80))(v10);
  if (v13)
  {
    v16 = v13;
    v17 = (*((*v12 & *v4) + 0x98))(v13, v14, v15);
    if (v17)
    {
      v19 = v17;
      v20 = v18;
      v21 = swift_allocObject();
      *(v21 + 16) = v19;
      *(v21 + 24) = v20;
      v27 = sub_1A4433284;
      v28 = v21;
      v23 = MEMORY[0x1E69E9820];
      v24 = 1107296256;
      v25 = sub_1A4043B58;
      v26 = &block_descriptor_140;
      v22 = _Block_copy(&v23);

      [v16 completeOptionSelectionActionWithCompletionHandler_];
      swift_unknownObjectRelease();
      _Block_release(v22);
    }

    else
    {
      __break(1u);
      __break(1u);
    }
  }
}

void sub_1A44332A0(uint64_t a2@<X8>)
{
  *(a2 + 24) = 0u;
  *(a2 + 8) = 0u;
  *(a2 + 56) = 0u;
  *(a2 + 72) = 0u;
  sub_1A52458F4();
}

void sub_1A44333D0(unint64_t a1@<X0>, void *a2@<X8>)
{
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (*(*v2 + 16) <= a1)
  {
LABEL_7:
    __break(1u);
    return;
  }

  v3 = (*v2 + 32 * a1);
  v5 = v3[4];
  v4 = v3[5];
  v7 = v3[6];
  v6 = v3[7];
  *a2 = v5;
  a2[1] = v4;
  a2[2] = v7;
  a2[3] = v6;
  v8 = v6;
  v9 = v5;
  swift_unknownObjectRetain();

  swift_unknownObjectRetain();
}

unint64_t sub_1A443345C()
{
  result = qword_1EB13A920;
  if (!qword_1EB13A920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13A920);
  }

  return result;
}

unint64_t sub_1A44334B4()
{
  result = qword_1EB13A928;
  if (!qword_1EB13A928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13A928);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_12PhotosUICore17SharedWithYouItemVSg(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void static PeopleNamingUtilities.items(for:photoLibrary:detectionType:)(unint64_t a1, uint64_t a2, void *a3, __int16 a4)
{
  v5 = v4;
  v10 = sub_1A52404F4();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v57 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  aBlock = a1;
  v62 = a2;
  sub_1A5240474();
  sub_1A3D5F9DC();
  v14 = MEMORY[0x1E69E6158];
  v15 = sub_1A524DFB4();
  v17 = v16;
  (*(v11 + 8))(v13, v10);
  v18 = HIBYTE(v17) & 0xF;
  if ((v17 & 0x2000000000000000) == 0)
  {
    v18 = v15 & 0xFFFFFFFFFFFFLL;
  }

  if (v18)
  {
    v19 = [a3 librarySpecificFetchOptions];
    sub_1A3C52C70(0, &qword_1EB126D20, 0x1E696AE18);
    sub_1A4434518(0, &qword_1EB12B110, sub_1A3D78B5C, MEMORY[0x1E69E6F90]);
    v20 = swift_allocObject();
    *(v20 + 16) = xmmword_1A52FC9F0;
    *(v20 + 56) = v14;
    v21 = sub_1A3D710E8();
    v22 = MEMORY[0x1E69E6530];
    v23 = MEMORY[0x1E69E65A8];
    strcpy((v20 + 32), "verifiedType");
    *(v20 + 45) = 0;
    *(v20 + 46) = -5120;
    *(v20 + 96) = v22;
    *(v20 + 104) = v23;
    *(v20 + 64) = v21;
    *(v20 + 72) = 1;
    v24 = sub_1A524D134();
    [v19 setPredicate_];

    sub_1A3CB8F68();
    v25 = swift_allocObject();
    *(v25 + 16) = xmmword_1A52F9790;
    v26 = a4;
    *(v25 + 32) = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithShort_];
    sub_1A3C52C70(0, &qword_1EB126610, 0x1E696AD98);
    v27 = sub_1A524CA14();

    [v19 setIncludedDetectionTypes_];

    v28 = [objc_opt_self() fetchPersonsWithOptions_];
    v60 = v28;
    v29 = [v28 fetchedObjects];
    v30 = MEMORY[0x1E69E7CC0];
    if (v29)
    {
      v31 = v29;
      sub_1A3C52C70(0, &qword_1EB1265C0, 0x1E6978980);
      v32 = sub_1A524CA34();

      v59 = _s12PhotosUICore21PeopleNamingUtilitiesC10peopleInfo3for12searchStringSayAA0cD4ItemCG11personItems_ShySSG24linkedContactIdentifierstSaySo8PHPersonCG_SStFZ_0(v32, v15, v17, v33);
      v35 = v34;
    }

    else
    {
      v35 = MEMORY[0x1E69E7CD0];
      v59 = MEMORY[0x1E69E7CC0];
    }

    v67 = v30;
    v36 = objc_opt_self();
    if ([v36 isDetectionTypeHuman_])
    {
      v37 = swift_allocObject();
      *(v37 + 16) = xmmword_1A52FF960;
      v38 = [objc_opt_self() descriptorForRequiredKeysForStyle_];
      v39 = *MEMORY[0x1E695C208];
      *(v37 + 32) = v38;
      *(v37 + 40) = v39;
      v40 = *MEMORY[0x1E695C330];
      *(v37 + 48) = *MEMORY[0x1E695C330];
      v41 = objc_allocWithZone(MEMORY[0x1E695CD78]);
      sub_1A4049B80();
      v42 = v39;
      v43 = v40;
      v44 = sub_1A524CA14();

      v45 = [v41 initWithKeysToFetch_];

      v46 = objc_opt_self();
      v47 = sub_1A524C634();
      v48 = [v46 predicateForContactsMatchingName_];

      [v45 setPredicate_];
      [v45 setSortOrder_];
      v49 = [v36 sharedContactStore];
      v50 = swift_allocObject();
      v50[2] = v5;
      v50[3] = v15;
      v50[4] = v17;
      v50[5] = v35;
      v50[6] = &v67;
      v51 = swift_allocObject();
      *(v51 + 16) = sub_1A443492C;
      *(v51 + 24) = v50;
      v65 = sub_1A3D9C868;
      v66 = v51;
      aBlock = MEMORY[0x1E69E9820];
      v62 = 1107296256;
      v63 = sub_1A3D9A79C;
      v64 = &block_descriptor_185;
      _Block_copy(&aBlock);
      _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
    }

    sub_1A3C33378(0, 0);

    v58 = v30;
    sub_1A4434518(0, &qword_1EB13A938, sub_1A44344E4, MEMORY[0x1E69E6F90]);
    sub_1A44344E4(0);
    v52 = swift_allocObject();
    *(v52 + 16) = xmmword_1A52FF950;
    swift_getKeyPath();
    sub_1A5240844();
    swift_getKeyPath();
    sub_1A5240844();
    swift_getKeyPath();
    sub_1A5240844();
    aBlock = v59;
    v67 = v52;
    sub_1A4434588(0);
    sub_1A44345BC(0);
    v53 = MEMORY[0x1E69E6328];
    sub_1A44345F0(&qword_1EB13A958, sub_1A4434588, MEMORY[0x1E69E6328]);
    sub_1A44345F0(&qword_1EB13A960, sub_1A44345BC, v53);
    sub_1A44345F0(&unk_1EB13A968, sub_1A44344E4, MEMORY[0x1E6968898]);
    v54 = sub_1A524C8F4();

    aBlock = v58;
    v67 = v52;
    v55 = sub_1A524C8F4();

    aBlock = v54;
    sub_1A4434258(v55, v56);
  }

  else
  {
  }
}

void sub_1A4433F60(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 string];
  v4 = sub_1A524C674();
  v6 = v5;

  *a2 = v4;
  a2[1] = v6;
}

uint64_t sub_1A4433FB8@<X0>(uint64_t *a1@<X8>)
{
  result = PeopleNamingItem.identifier.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t static PeopleNamingUtilities.item(for:searchString:linkedContactIdentifiers:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (![a1 contactType])
  {
    v6 = [a1 identifier];
    v7 = sub_1A524C674();
    v9 = v8;

    v10 = sub_1A3C62374(v7, v9, a4);

    if ((v10 & 1) == 0)
    {
      type metadata accessor for PeopleNamingItem();
      v12 = a1;
      _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
    }
  }

  return 0;
}

id PeopleNamingUtilities.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id PeopleNamingUtilities.init()()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_init);
}

id PeopleNamingUtilities.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1A4434258(unint64_t a1, __n128 a2)
{
  if (a1 >> 62)
  {
    v4 = sub_1A524E2B4();
  }

  else
  {
    v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!(*v2 >> 62))
  {
    v5 = *((*v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v6 = __OFADD__(v5, v4);
    v7 = v5 + v4;
    if (!v6)
    {
      goto LABEL_5;
    }

LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v15 = sub_1A524E2B4();
  v6 = __OFADD__(v15, v4);
  v7 = v15 + v4;
  if (v6)
  {
    goto LABEL_13;
  }

LABEL_5:
  sub_1A3D5C1C8(v7, 1);
  v8 = *v2;
  v9 = *v2 & 0xFFFFFFFFFFFFFF8;
  sub_1A4434348(v9 + 8 * *(v9 + 0x10) + 32, (*(v9 + 0x18) >> 1) - *(v9 + 0x10), a1, v10);
  v12 = v11;

  if (v12 < v4)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v12 < 1)
  {
LABEL_9:
    *v2 = v8;
    return;
  }

  v13 = *(v9 + 16);
  v6 = __OFADD__(v13, v12);
  v14 = v13 + v12;
  if (!v6)
  {
    *(v9 + 16) = v14;
    goto LABEL_9;
  }

LABEL_15:
  __break(1u);
}

uint64_t sub_1A4434348(uint64_t result, uint64_t a2, unint64_t a3, __n128 a4)
{
  v5 = result;
  v6 = a3 >> 62;
  if (a3 >> 62)
  {
    v13 = a2;
    result = sub_1A524E2B4();
    a2 = v13;
    v7 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v7 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      return a3;
    }
  }

  if (v5)
  {
    if (v6)
    {
      v8 = a2;
      result = sub_1A524E2B4();
      if (result <= v8)
      {
        if (v7 >= 1)
        {
          sub_1A4434588(0);
          sub_1A44345F0(&qword_1EB13A978, sub_1A4434588, MEMORY[0x1E69E6340]);
          for (i = 0; i != v7; ++i)
          {
            v10 = sub_1A3D5C268(v14, i, a3);
            v12 = *v11;
            (v10)(v14, 0);
            *(v5 + 8 * i) = v12;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        type metadata accessor for PeopleNamingItem();
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_1A4434518(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1A44345F0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t _s12PhotosUICore21PeopleNamingUtilitiesC10peopleInfo3for12searchStringSayAA0cD4ItemCG11personItems_ShySSG24linkedContactIdentifierstSaySo8PHPersonCG_SStFZ_0(unint64_t result, uint64_t a2, uint64_t a3, __n128 a4)
{
  v5 = result;
  if (!(result >> 62))
  {
    v6 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v6)
    {
      goto LABEL_3;
    }

    return MEMORY[0x1E69E7CC0];
  }

  result = sub_1A524E2B4();
  v6 = result;
  if (!result)
  {
    return MEMORY[0x1E69E7CC0];
  }

LABEL_3:
  if (v6 < 1)
  {
    __break(1u);
  }

  else
  {
    v7 = 0;
    v16 = a3;
    v17 = MEMORY[0x1E69E7CC0];
    do
    {
      if ((v5 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x1A59097F0](v7, v5, a4);
      }

      else
      {
        v8 = *(v5 + 8 * v7 + 32);
      }

      v9 = v8;
      v10 = [v8 name];
      if (v10)
      {
        v11 = v10;
        sub_1A524C674();
      }

      v12 = sub_1A524C634();

      v13 = sub_1A524C634();
      v14 = [v12 px:v13 containsStringIgnoringCaseAndDiacritics:?];

      if (v14)
      {
        type metadata accessor for PeopleNamingItem();
        v15 = v9;
        _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
      }

      ++v7;
    }

    while (v6 != v7);
    return v17;
  }

  return result;
}

void sub_1A443492C(void *a1)
{
  v3 = *(v1 + 40);
  if (![a1 contactType])
  {
    v4 = [a1 identifier];
    v5 = sub_1A524C674();
    v7 = v6;

    LOBYTE(v4) = sub_1A3C62374(v5, v7, v3);

    if ((v4 & 1) == 0)
    {
      type metadata accessor for PeopleNamingItem();
      v8 = a1;
      _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
    }
  }
}

uint64_t sub_1A4434AF4@<X0>(void **a1@<X0>, uint64_t (**a2)()@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x198))();
  if (result)
  {
    v5 = result;
    v6 = v4;
    result = swift_allocObject();
    *(result + 16) = v5;
    *(result + 24) = v6;
    v7 = sub_1A3DDBE10;
  }

  else
  {
    v7 = 0;
  }

  *a2 = v7;
  a2[1] = result;
  return result;
}

uint64_t sub_1A4434B9C(uint64_t *a1, void **a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_1A3E30F88;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x1A0);
  v8 = sub_1A3C66EE8(v3, v4);
  return v7(v6, v5, v8);
}

double sub_1A4434C80(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + qword_1EB13A9A0);
  swift_beginAccess();
  v6 = *v5;
  v7 = v5[1];
  if (!v6)
  {
    v9 = 0;
    v8 = 0;
    if (a1)
    {
      goto LABEL_3;
    }

LABEL_5:
    v11 = 0;
    v10 = 0;
    goto LABEL_6;
  }

  v8 = swift_allocObject();
  *(v8 + 16) = v6;
  *(v8 + 24) = v7;
  v9 = sub_1A3DDBE10;
  if (!a1)
  {
    goto LABEL_5;
  }

LABEL_3:
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;
  v11 = sub_1A3C7146C;
LABEL_6:
  sub_1A3C66EE8(v6, v7);
  sub_1A3C66EE8(a1, a2);
  sub_1A3C33378(v11, v10);
  v12 = sub_1A3C33378(v9, v8);
  MEMORY[0x1EEE9AC00](v12);
  KeyPath = swift_getKeyPath();
  v14.n128_f64[0] = MEMORY[0x1EEE9AC00](KeyPath);
  (*((*MEMORY[0x1E69E7D40] & *v2) + 0x870))(v14);
  sub_1A3C33378(a1, a2);

  return result;
}

uint64_t (*sub_1A4434EC0(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  v5 = MEMORY[0x1E69E7D40];
  MEMORY[0x1EEE9AC00](v3);
  v8 = *((v7 & v6) + 0x50);
  KeyPath = swift_getKeyPath();
  (*((*v5 & *v1) + 0x868))(KeyPath);

  *v4 = v1;
  MEMORY[0x1EEE9AC00](v10);
  swift_getKeyPath();
  type metadata accessor for LemonadeCollectionCustomizationFoldersModel(255, v8, v11, v12);
  swift_getWitnessTable();
  sub_1A52415F4();

  v4[5] = sub_1A4434A94(v4);
  return sub_1A4435078;
}

void sub_1A4435084(uint64_t a1)
{
  v3 = qword_1EB13A9A8;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t sub_1A443513C@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x1C8))();
  *a2 = result;
  return result;
}

uint64_t sub_1A44351A0(id *a1, void **a2)
{
  v2 = *a1;
  v3 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x1D0);
  v4 = *a1;
  return v3(v2);
}

uint64_t (*sub_1A443524C(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  v5 = MEMORY[0x1E69E7D40];
  MEMORY[0x1EEE9AC00](v3);
  v8 = *((v7 & v6) + 0x50);
  KeyPath = swift_getKeyPath();
  (*((*v5 & *v1) + 0x868))(KeyPath);

  *v4 = v1;
  MEMORY[0x1EEE9AC00](v10);
  swift_getKeyPath();
  type metadata accessor for LemonadeCollectionCustomizationFoldersModel(255, v8, v11, v12);
  swift_getWitnessTable();
  sub_1A52415F4();

  v4[5] = sub_1A44350DC(v4);
  return sub_1A4435404;
}

uint64_t sub_1A4435410()
{
  v1 = qword_1EB13A9B0;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_1A4435454(char a1)
{
  v3 = qword_1EB13A9B0;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t sub_1A4435504@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x1F8))();
  *a2 = result & 1;
  return result;
}

uint64_t (*sub_1A4435608(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  v5 = MEMORY[0x1E69E7D40];
  MEMORY[0x1EEE9AC00](v3);
  v8 = *((v7 & v6) + 0x50);
  KeyPath = swift_getKeyPath();
  (*((*v5 & *v1) + 0x868))(KeyPath);

  *v4 = v1;
  MEMORY[0x1EEE9AC00](v10);
  swift_getKeyPath();
  type metadata accessor for LemonadeCollectionCustomizationFoldersModel(255, v8, v11, v12);
  swift_getWitnessTable();
  sub_1A52415F4();

  v4[5] = sub_1A44354A4(v4);
  return sub_1A44357C0;
}

uint64_t sub_1A443584C@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x228))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t (*sub_1A443596C(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  v5 = MEMORY[0x1E69E7D40];
  MEMORY[0x1EEE9AC00](v3);
  v8 = *((v7 & v6) + 0x50);
  KeyPath = swift_getKeyPath();
  (*((*v5 & *v1) + 0x868))(KeyPath);

  *v4 = v1;
  MEMORY[0x1EEE9AC00](v10);
  swift_getKeyPath();
  type metadata accessor for LemonadeCollectionCustomizationFoldersModel(255, v8, v11, v12);
  swift_getWitnessTable();
  sub_1A52415F4();

  v4[5] = sub_1A44357EC(v4);
  return sub_1A4435B24;
}

uint64_t sub_1A4435BB0@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x258))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t (*sub_1A4435CD0(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  v5 = MEMORY[0x1E69E7D40];
  MEMORY[0x1EEE9AC00](v3);
  v8 = *((v7 & v6) + 0x50);
  KeyPath = swift_getKeyPath();
  (*((*v5 & *v1) + 0x868))(KeyPath);

  *v4 = v1;
  MEMORY[0x1EEE9AC00](v10);
  swift_getKeyPath();
  type metadata accessor for LemonadeCollectionCustomizationFoldersModel(255, v8, v11, v12);
  swift_getWitnessTable();
  sub_1A52415F4();

  v4[5] = sub_1A4435B50(v4);
  return sub_1A4435E88;
}

uint64_t sub_1A4435E94()
{
  v1 = qword_1EB13A9C8;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_1A4435ED8(char a1)
{
  v3 = qword_1EB13A9C8;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t sub_1A4435F88@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x288))();
  *a2 = result & 1;
  return result;
}

uint64_t (*sub_1A443608C(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  v5 = MEMORY[0x1E69E7D40];
  MEMORY[0x1EEE9AC00](v3);
  v8 = *((v7 & v6) + 0x50);
  KeyPath = swift_getKeyPath();
  (*((*v5 & *v1) + 0x868))(KeyPath);

  *v4 = v1;
  MEMORY[0x1EEE9AC00](v10);
  swift_getKeyPath();
  type metadata accessor for LemonadeCollectionCustomizationFoldersModel(255, v8, v11, v12);
  swift_getWitnessTable();
  sub_1A52415F4();

  v4[5] = sub_1A4435F28(v4);
  return sub_1A4436244;
}

uint64_t sub_1A44362D0@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x2B8))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t (*sub_1A44363F0(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  v5 = MEMORY[0x1E69E7D40];
  MEMORY[0x1EEE9AC00](v3);
  v8 = *((v7 & v6) + 0x50);
  KeyPath = swift_getKeyPath();
  (*((*v5 & *v1) + 0x868))(KeyPath);

  *v4 = v1;
  MEMORY[0x1EEE9AC00](v10);
  swift_getKeyPath();
  type metadata accessor for LemonadeCollectionCustomizationFoldersModel(255, v8, v11, v12);
  swift_getWitnessTable();
  sub_1A52415F4();

  v4[5] = sub_1A4436270(v4);
  return sub_1A44365A8;
}

void sub_1A44365B4(_BYTE *a1@<X8>)
{
  v3 = qword_1EB13A9D8;
  swift_beginAccess();
  *a1 = *(v1 + v3);
}

void sub_1A4436608(char *a1)
{
  v2 = *a1;
  v3 = qword_1EB13A9D8;
  swift_beginAccess();
  *(v1 + v3) = v2;
}

void *sub_1A44366B8@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x2E8))(&v4);
  *a2 = v4;
  return result;
}

uint64_t sub_1A443672C(char *a1, void **a2)
{
  v2 = *a2;
  v4 = *a1;
  return (*((*MEMORY[0x1E69E7D40] & *v2) + 0x2F0))(&v4);
}

double sub_1A44367B0(char *a1)
{
  v2 = v1;
  v3 = MEMORY[0x1E69E7D40];
  v4 = *a1;
  swift_beginAccess();
  sub_1A3EBA3F8();
  v5 = sub_1A524C594();
  if (v5)
  {
    v6 = qword_1EB13A9D8;
    swift_beginAccess();
    *(v2 + v6) = v4;
  }

  else
  {
    MEMORY[0x1EEE9AC00](v5);
    KeyPath = swift_getKeyPath();
    v9.n128_f64[0] = MEMORY[0x1EEE9AC00](KeyPath);
    (*((*v3 & *v1) + 0x870))(v9);
  }

  return result;
}

uint64_t (*sub_1A4436960(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  v5 = MEMORY[0x1E69E7D40];
  MEMORY[0x1EEE9AC00](v3);
  v8 = *((v7 & v6) + 0x50);
  KeyPath = swift_getKeyPath();
  (*((*v5 & *v1) + 0x868))(KeyPath);

  *v4 = v1;
  MEMORY[0x1EEE9AC00](v10);
  swift_getKeyPath();
  type metadata accessor for LemonadeCollectionCustomizationFoldersModel(255, v8, v11, v12);
  swift_getWitnessTable();
  sub_1A52415F4();

  v4[5] = sub_1A4436658(v4);
  return sub_1A4436B18;
}

uint64_t sub_1A4436B90@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x318))();
  *a2 = result;
  return result;
}

uint64_t (*sub_1A4436C9C(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  v5 = MEMORY[0x1E69E7D40];
  MEMORY[0x1EEE9AC00](v3);
  v8 = *((v7 & v6) + 0x50);
  KeyPath = swift_getKeyPath();
  (*((*v5 & *v1) + 0x868))(KeyPath);

  *v4 = v1;
  MEMORY[0x1EEE9AC00](v10);
  swift_getKeyPath();
  type metadata accessor for LemonadeCollectionCustomizationFoldersModel(255, v8, v11, v12);
  swift_getWitnessTable();
  sub_1A52415F4();

  v4[5] = sub_1A4436B30(v4);
  return sub_1A4436E54;
}

double sub_1A4436E60(uint64_t a1)
{
  *(v1 + qword_1EB13A9E8) = a1;

  return result;
}

double sub_1A4436E78()
{
  sub_1A4444CFC();

  return result;
}

double sub_1A4436EA0@<D0>(uint64_t *a1@<X8>)
{
  *a1 = sub_1A4444CFC();

  return result;
}

double sub_1A4436F08(uint64_t a1)
{
  v3 = MEMORY[0x1E69E7D40];
  v9 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x50);
  KeyPath = swift_getKeyPath();
  v7 = v1;
  v8 = a1;
  (*((*v3 & *v1) + 0x870))(KeyPath, sub_1A44475A0, &v6, MEMORY[0x1E69E7CA8] + 8);

  return result;
}

void sub_1A4436FF0(uint64_t a1)
{
  v3 = qword_1EB13A9F0;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t sub_1A44370A8@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x378))();
  *a2 = result;
  return result;
}

uint64_t sub_1A443710C(id *a1, void **a2)
{
  v2 = *a1;
  v3 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x380);
  v4 = *a1;
  return v3(v2);
}

void sub_1A4437190(void *a1)
{
  v2 = v1;
  v4 = MEMORY[0x1E69E7D40];
  swift_beginAccess();
  sub_1A4444DB8(0, &unk_1EB120A60, &qword_1EB120A70, 0x1E6978760, MEMORY[0x1E69E6720]);
  sub_1A4444E20();
  v5 = sub_1A524C594();
  if (v5)
  {
    v6 = qword_1EB13A9F0;
    swift_beginAccess();
    v7 = *(v2 + v6);
    *(v2 + v6) = a1;
  }

  else
  {
    MEMORY[0x1EEE9AC00](v5);
    KeyPath = swift_getKeyPath();
    v9.n128_f64[0] = MEMORY[0x1EEE9AC00](KeyPath);
    (*((*v4 & *v1) + 0x870))(v9);
  }
}

uint64_t (*sub_1A4437378(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  v5 = MEMORY[0x1E69E7D40];
  MEMORY[0x1EEE9AC00](v3);
  v8 = *((v7 & v6) + 0x50);
  KeyPath = swift_getKeyPath();
  (*((*v5 & *v1) + 0x868))(KeyPath);

  *v4 = v1;
  MEMORY[0x1EEE9AC00](v10);
  swift_getKeyPath();
  type metadata accessor for LemonadeCollectionCustomizationFoldersModel(255, v8, v11, v12);
  swift_getWitnessTable();
  sub_1A52415F4();

  v4[5] = sub_1A4437048(v4);
  return sub_1A4437530;
}

void sub_1A443753C(uint64_t a1)
{
  v3 = qword_1EB13A9F8;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t sub_1A44375F4@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x3A8))();
  *a2 = result;
  return result;
}

uint64_t sub_1A4437658(id *a1, void **a2)
{
  v2 = *a1;
  v3 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x3B0);
  v4 = *a1;
  return v3(v2);
}

void sub_1A44376DC(void *a1)
{
  v2 = v1;
  v4 = MEMORY[0x1E69E7D40];
  swift_beginAccess();
  sub_1A524DF24();
  swift_getWitnessTable();
  swift_getWitnessTable();
  v5 = sub_1A524C594();
  if (v5)
  {
    v6 = qword_1EB13A9F8;
    swift_beginAccess();
    v7 = *(v2 + v6);
    *(v2 + v6) = a1;
  }

  else
  {
    MEMORY[0x1EEE9AC00](v5);
    KeyPath = swift_getKeyPath();
    v9.n128_f64[0] = MEMORY[0x1EEE9AC00](KeyPath);
    (*((*v4 & *v1) + 0x870))(v9);
  }
}

uint64_t (*sub_1A44378D8(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  v5 = MEMORY[0x1E69E7D40];
  MEMORY[0x1EEE9AC00](v3);
  v8 = *((v7 & v6) + 0x50);
  KeyPath = swift_getKeyPath();
  (*((*v5 & *v1) + 0x868))(KeyPath);

  *v4 = v1;
  MEMORY[0x1EEE9AC00](v10);
  swift_getKeyPath();
  type metadata accessor for LemonadeCollectionCustomizationFoldersModel(255, v8, v11, v12);
  swift_getWitnessTable();
  sub_1A52415F4();

  v4[5] = sub_1A4437594(v4);
  return sub_1A4437A90;
}

uint64_t sub_1A4437A9C()
{
  v1 = qword_1EB13AA00;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_1A4437AE0(char a1)
{
  v3 = qword_1EB13AA00;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t sub_1A4437B90@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x3D8))();
  *a2 = result & 1;
  return result;
}

uint64_t (*sub_1A4437C94(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  v5 = MEMORY[0x1E69E7D40];
  MEMORY[0x1EEE9AC00](v3);
  v8 = *((v7 & v6) + 0x50);
  KeyPath = swift_getKeyPath();
  (*((*v5 & *v1) + 0x868))(KeyPath);

  *v4 = v1;
  MEMORY[0x1EEE9AC00](v10);
  swift_getKeyPath();
  type metadata accessor for LemonadeCollectionCustomizationFoldersModel(255, v8, v11, v12);
  swift_getWitnessTable();
  sub_1A52415F4();

  v4[5] = sub_1A4437B30(v4);
  return sub_1A4437E4C;
}

uint64_t sub_1A4437ED8@<X0>(void **a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x408))();
  v5 = v4;
  result = swift_allocObject();
  *(result + 16) = v3;
  *(result + 24) = v5;
  *a2 = sub_1A3DDBE10;
  a2[1] = result;
  return result;
}

uint64_t sub_1A4437F74(uint64_t *a1, void **a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  v6 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x410);

  return v6(sub_1A3E30F88, v5);
}

uint64_t sub_1A4438034()
{
  v1 = MEMORY[0x1E69E7D40];
  KeyPath = swift_getKeyPath();
  (*((*v1 & *v0) + 0x868))(KeyPath);

  v3 = (v0 + qword_1EB13AA08);
  swift_beginAccess();
  v4 = *v3;

  return v4;
}

double sub_1A4438118(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = MEMORY[0x1E69E7D40];
  v7 = *MEMORY[0x1E69E7D40];
  swift_beginAccess();
  v14 = *((v7 & v5) + 0x50);
  KeyPath = swift_getKeyPath();
  v11 = v2;
  v12 = a1;
  v13 = a2;
  (*((*v6 & *v2) + 0x870))(KeyPath, sub_1A4444F44, &v10, MEMORY[0x1E69E7CA8] + 8);

  return result;
}

uint64_t (*sub_1A443822C(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  v5 = MEMORY[0x1E69E7D40];
  MEMORY[0x1EEE9AC00](v3);
  v8 = *((v7 & v6) + 0x50);
  KeyPath = swift_getKeyPath();
  (*((*v5 & *v1) + 0x868))(KeyPath);

  *v4 = v1;
  MEMORY[0x1EEE9AC00](v10);
  swift_getKeyPath();
  type metadata accessor for LemonadeCollectionCustomizationFoldersModel(255, v8, v11, v12);
  swift_getWitnessTable();
  sub_1A52415F4();

  v4[5] = sub_1A4437E78(v4);
  return sub_1A44383E4;
}

double sub_1A44383F0(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + qword_1EB13AA10);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;

  return result;
}

void sub_1A44384B0()
{
  v1 = MEMORY[0x1E69E7D40];
  KeyPath = swift_getKeyPath();
  (*((*v1 & *v0) + 0x868))(KeyPath);

  swift_beginAccess();
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A4438594@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x438))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

double sub_1A4438678(uint64_t a1, uint64_t a2)
{
  v5 = MEMORY[0x1E69E7D40];
  swift_beginAccess();
  sub_1A3C398E8(0, &qword_1EB126FA0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
  sub_1A4444FB4();
  v6 = sub_1A524C594();
  if (v6)
  {
    v7 = (v2 + qword_1EB13AA10);
    swift_beginAccess();
    *v7 = a1;
    v7[1] = a2;
  }

  else
  {
    MEMORY[0x1EEE9AC00](v6);
    KeyPath = swift_getKeyPath();
    v10.n128_f64[0] = MEMORY[0x1EEE9AC00](KeyPath);
    (*((*v5 & *v2) + 0x870))(v10);
  }

  return result;
}

uint64_t (*sub_1A4438868(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  v5 = MEMORY[0x1E69E7D40];
  MEMORY[0x1EEE9AC00](v3);
  v8 = *((v7 & v6) + 0x50);
  KeyPath = swift_getKeyPath();
  (*((*v5 & *v1) + 0x868))(KeyPath);

  *v4 = v1;
  MEMORY[0x1EEE9AC00](v10);
  swift_getKeyPath();
  type metadata accessor for LemonadeCollectionCustomizationFoldersModel(255, v8, v11, v12);
  swift_getWitnessTable();
  sub_1A52415F4();

  v4[5] = sub_1A4438450(v4);
  return sub_1A4438A20;
}

uint64_t sub_1A4438AAC@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x468))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t (*sub_1A4438BCC(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  v5 = MEMORY[0x1E69E7D40];
  MEMORY[0x1EEE9AC00](v3);
  v8 = *((v7 & v6) + 0x50);
  KeyPath = swift_getKeyPath();
  (*((*v5 & *v1) + 0x868))(KeyPath);

  *v4 = v1;
  MEMORY[0x1EEE9AC00](v10);
  swift_getKeyPath();
  type metadata accessor for LemonadeCollectionCustomizationFoldersModel(255, v8, v11, v12);
  swift_getWitnessTable();
  sub_1A52415F4();

  v4[5] = sub_1A4438A4C(v4);
  return sub_1A4438D84;
}

uint64_t sub_1A4438D90()
{
  v1 = (*((*MEMORY[0x1E69E7D40] & *v0) + 0x3A8))();
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = [v1 localIdentifier];

  v4 = sub_1A524C674();
  return v4;
}

uint64_t sub_1A4438E54()
{
  v1 = qword_1EB13AA20;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_1A4438E98(char a1)
{
  v3 = qword_1EB13AA20;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t sub_1A4438F48@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x4B0))();
  *a2 = result & 1;
  return result;
}

uint64_t (*sub_1A443904C(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  v5 = MEMORY[0x1E69E7D40];
  MEMORY[0x1EEE9AC00](v3);
  v8 = *((v7 & v6) + 0x50);
  KeyPath = swift_getKeyPath();
  (*((*v5 & *v1) + 0x868))(KeyPath);

  *v4 = v1;
  MEMORY[0x1EEE9AC00](v10);
  swift_getKeyPath();
  type metadata accessor for LemonadeCollectionCustomizationFoldersModel(255, v8, v11, v12);
  swift_getWitnessTable();
  sub_1A52415F4();

  v4[5] = sub_1A4438EE8(v4);
  return sub_1A4439204;
}

void sub_1A4439210(uint64_t a1)
{
  v3 = qword_1EB13AA28;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t sub_1A44392C8@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x4E0))();
  *a2 = result;
  return result;
}

uint64_t sub_1A443932C(id *a1, void **a2)
{
  v2 = *a1;
  v3 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x4E8);
  v4 = *a1;
  return v3(v2);
}

void *sub_1A44393B0(uint64_t a1, uint64_t *a2)
{
  v4 = MEMORY[0x1E69E7D40];
  KeyPath = swift_getKeyPath();
  (*((*v4 & *v2) + 0x868))(KeyPath);

  v6 = *a2;
  swift_beginAccess();
  v7 = *(v2 + v6);
  v8 = v7;
  return v7;
}

void sub_1A44394A8(void *a1, uint64_t *a2, uint64_t a3)
{
  v5 = v3;
  v7 = MEMORY[0x1E69E7D40];
  swift_beginAccess();
  sub_1A4444DB8(0, &qword_1EB126620, &qword_1EB126630, 0x1E69DCAB8, MEMORY[0x1E69E6720]);
  sub_1A3EBA4B8();
  v8 = sub_1A524C594();
  if (v8)
  {
    v9 = *a2;
    swift_beginAccess();
    v10 = *(v5 + v9);
    *(v5 + v9) = a1;
  }

  else
  {
    MEMORY[0x1EEE9AC00](v8);
    KeyPath = swift_getKeyPath();
    v12.n128_f64[0] = MEMORY[0x1EEE9AC00](KeyPath);
    (*((*v7 & *v3) + 0x870))(v12);
  }
}

uint64_t (*sub_1A443968C(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  v5 = MEMORY[0x1E69E7D40];
  MEMORY[0x1EEE9AC00](v3);
  v8 = *((v7 & v6) + 0x50);
  KeyPath = swift_getKeyPath();
  (*((*v5 & *v1) + 0x868))(KeyPath);

  *v4 = v1;
  MEMORY[0x1EEE9AC00](v10);
  swift_getKeyPath();
  type metadata accessor for LemonadeCollectionCustomizationFoldersModel(255, v8, v11, v12);
  swift_getWitnessTable();
  sub_1A52415F4();

  v4[5] = sub_1A4439268(v4);
  return sub_1A4439844;
}

uint64_t sub_1A4439850()
{
  v1 = v0 + qword_1EB13AA30;
  swift_beginAccess();
  return *v1;
}

void sub_1A443989C(uint64_t a1, uint64_t a2, char a3)
{
  v7 = v3 + qword_1EB13AA30;
  swift_beginAccess();
  *v7 = a1;
  *(v7 + 8) = a2;
  *(v7 + 16) = a3 & 1;
}

uint64_t sub_1A4439960@<X0>(void **a1@<X0>, uint64_t a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x510))();
  *a2 = result;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5 & 1;
  return result;
}

uint64_t sub_1A4439A38()
{
  v1 = MEMORY[0x1E69E7D40];
  KeyPath = swift_getKeyPath();
  (*((*v1 & *v0) + 0x868))(KeyPath);

  v3 = v0 + qword_1EB13AA30;
  swift_beginAccess();
  return *v3;
}

double sub_1A4439B10(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = MEMORY[0x1E69E7D40];
  swift_beginAccess();
  sub_1A3C68BEC(0, &unk_1EB1266F0, type metadata accessor for CGSize, MEMORY[0x1E69E6720]);
  sub_1A3EBA740();
  v9 = sub_1A524C594();
  if (v9)
  {
    v10 = v4 + qword_1EB13AA30;
    swift_beginAccess();
    *v10 = a1;
    *(v10 + 1) = a2;
    v10[16] = a3 & 1;
  }

  else
  {
    MEMORY[0x1EEE9AC00](v9);
    KeyPath = swift_getKeyPath();
    v13.n128_f64[0] = MEMORY[0x1EEE9AC00](KeyPath);
    (*((*v8 & *v4) + 0x870))(v13);
  }

  return result;
}

uint64_t (*sub_1A4439D24(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  v5 = MEMORY[0x1E69E7D40];
  MEMORY[0x1EEE9AC00](v3);
  v8 = *((v7 & v6) + 0x50);
  KeyPath = swift_getKeyPath();
  (*((*v5 & *v1) + 0x868))(KeyPath);

  *v4 = v1;
  MEMORY[0x1EEE9AC00](v10);
  swift_getKeyPath();
  type metadata accessor for LemonadeCollectionCustomizationFoldersModel(255, v8, v11, v12);
  swift_getWitnessTable();
  sub_1A52415F4();

  v4[5] = sub_1A4439900(v4);
  return sub_1A4439EDC;
}

uint64_t sub_1A4439EE8()
{
  result = sub_1A4444CFC();
  if (result)
  {
    v1 = *(*result + 280);

    v3 = v1(v2);

    v4 = *(v3 + 24);
    v5 = v4;

    if (v4 && (v6 = [v5 fetchedObjects], v5, v6))
    {
      sub_1A3C52C70(0, &qword_1EB126660, 0x1E6978630);
      v7 = sub_1A524CA34();

      return v7;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void sub_1A4439FC8(_BYTE *a1@<X8>)
{
  v3 = qword_1EB13AA38;
  swift_beginAccess();
  *a1 = *(v1 + v3);
}

void sub_1A443A01C(char *a1)
{
  v2 = *a1;
  v3 = qword_1EB13AA38;
  swift_beginAccess();
  *(v1 + v3) = v2;
}

void *sub_1A443A0CC@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x548))(&v4);
  *a2 = v4;
  return result;
}

uint64_t sub_1A443A140(char *a1, void **a2)
{
  v2 = *a2;
  v4 = *a1;
  return (*((*MEMORY[0x1E69E7D40] & *v2) + 0x550))(&v4);
}

void sub_1A443A1C4(uint64_t *a2@<X1>, _BYTE *a3@<X8>)
{
  v6 = MEMORY[0x1E69E7D40];
  KeyPath = swift_getKeyPath();
  (*((*v6 & *v3) + 0x868))(KeyPath);

  v8 = *a2;
  swift_beginAccess();
  *a3 = *(v3 + v8);
}

double sub_1A443A29C(char *a1)
{
  v2 = v1;
  v3 = MEMORY[0x1E69E7D40];
  v4 = *a1;
  swift_beginAccess();
  sub_1A3EBA5E8();
  v5 = sub_1A524C594();
  if (v5)
  {
    v6 = qword_1EB13AA38;
    swift_beginAccess();
    *(v2 + v6) = v4;
  }

  else
  {
    MEMORY[0x1EEE9AC00](v5);
    KeyPath = swift_getKeyPath();
    v9.n128_f64[0] = MEMORY[0x1EEE9AC00](KeyPath);
    (*((*v3 & *v1) + 0x870))(v9);
  }

  return result;
}

uint64_t (*sub_1A443A44C(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  v5 = MEMORY[0x1E69E7D40];
  MEMORY[0x1EEE9AC00](v3);
  v8 = *((v7 & v6) + 0x50);
  KeyPath = swift_getKeyPath();
  (*((*v5 & *v1) + 0x868))(KeyPath);

  *v4 = v1;
  MEMORY[0x1EEE9AC00](v10);
  swift_getKeyPath();
  type metadata accessor for LemonadeCollectionCustomizationFoldersModel(255, v8, v11, v12);
  swift_getWitnessTable();
  sub_1A52415F4();

  v4[5] = sub_1A443A06C(v4);
  return sub_1A443A604;
}

uint64_t sub_1A443A610()
{
  v1 = qword_1EB13AA40;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_1A443A654(char a1)
{
  v3 = qword_1EB13AA40;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t sub_1A443A704@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x578))();
  *a2 = result & 1;
  return result;
}

uint64_t (*sub_1A443A808(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  v5 = MEMORY[0x1E69E7D40];
  MEMORY[0x1EEE9AC00](v3);
  v8 = *((v7 & v6) + 0x50);
  KeyPath = swift_getKeyPath();
  (*((*v5 & *v1) + 0x868))(KeyPath);

  *v4 = v1;
  MEMORY[0x1EEE9AC00](v10);
  swift_getKeyPath();
  type metadata accessor for LemonadeCollectionCustomizationFoldersModel(255, v8, v11, v12);
  swift_getWitnessTable();
  sub_1A52415F4();

  v4[5] = sub_1A443A6A4(v4);
  return sub_1A443A9C0;
}

uint64_t sub_1A443A9CC()
{
  v1 = qword_1EB13AA48;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_1A443AA10(char a1)
{
  v3 = qword_1EB13AA48;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t sub_1A443AAC0@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x5A8))();
  *a2 = result & 1;
  return result;
}

uint64_t (*sub_1A443ABC4(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  v5 = MEMORY[0x1E69E7D40];
  MEMORY[0x1EEE9AC00](v3);
  v8 = *((v7 & v6) + 0x50);
  KeyPath = swift_getKeyPath();
  (*((*v5 & *v1) + 0x868))(KeyPath);

  *v4 = v1;
  MEMORY[0x1EEE9AC00](v10);
  swift_getKeyPath();
  type metadata accessor for LemonadeCollectionCustomizationFoldersModel(255, v8, v11, v12);
  swift_getWitnessTable();
  sub_1A52415F4();

  v4[5] = sub_1A443AA60(v4);
  return sub_1A443AD7C;
}

uint64_t sub_1A443AD88()
{
  v1 = qword_1EB13AA50;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_1A443ADCC(char a1)
{
  v3 = qword_1EB13AA50;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t sub_1A443AE7C@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x5D8))();
  *a2 = result & 1;
  return result;
}

uint64_t (*sub_1A443AF80(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  v5 = MEMORY[0x1E69E7D40];
  MEMORY[0x1EEE9AC00](v3);
  v8 = *((v7 & v6) + 0x50);
  KeyPath = swift_getKeyPath();
  (*((*v5 & *v1) + 0x868))(KeyPath);

  *v4 = v1;
  MEMORY[0x1EEE9AC00](v10);
  swift_getKeyPath();
  type metadata accessor for LemonadeCollectionCustomizationFoldersModel(255, v8, v11, v12);
  swift_getWitnessTable();
  sub_1A52415F4();

  v4[5] = sub_1A443AE1C(v4);
  return sub_1A443B138;
}

uint64_t sub_1A443B144()
{
  v1 = qword_1EB13AA58;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_1A443B188(char a1)
{
  v3 = qword_1EB13AA58;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t sub_1A443B238@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x608))();
  *a2 = result & 1;
  return result;
}

uint64_t (*sub_1A443B33C(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  v5 = MEMORY[0x1E69E7D40];
  MEMORY[0x1EEE9AC00](v3);
  v8 = *((v7 & v6) + 0x50);
  KeyPath = swift_getKeyPath();
  (*((*v5 & *v1) + 0x868))(KeyPath);

  *v4 = v1;
  MEMORY[0x1EEE9AC00](v10);
  swift_getKeyPath();
  type metadata accessor for LemonadeCollectionCustomizationFoldersModel(255, v8, v11, v12);
  swift_getWitnessTable();
  sub_1A52415F4();

  v4[5] = sub_1A443B1D8(v4);
  return sub_1A443B4F4;
}

uint64_t sub_1A443B56C@<X0>(void **a1@<X0>, uint64_t (**a2)()@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x638))();
  if (result)
  {
    v5 = result;
    v6 = v4;
    result = swift_allocObject();
    *(result + 16) = v5;
    *(result + 24) = v6;
    v7 = sub_1A3DDBE10;
  }

  else
  {
    v7 = 0;
  }

  *a2 = v7;
  a2[1] = result;
  return result;
}

uint64_t sub_1A443B614(uint64_t *a1, void **a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_1A3E30F88;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x640);
  v8 = sub_1A3C66EE8(v3, v4);
  return v7(v6, v5, v8);
}

double sub_1A443B6F8(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + qword_1EB13AA60);
  swift_beginAccess();
  v6 = *v5;
  v7 = v5[1];
  if (!v6)
  {
    v9 = 0;
    v8 = 0;
    if (a1)
    {
      goto LABEL_3;
    }

LABEL_5:
    v11 = 0;
    v10 = 0;
    goto LABEL_6;
  }

  v8 = swift_allocObject();
  *(v8 + 16) = v6;
  *(v8 + 24) = v7;
  v9 = sub_1A3DDBE10;
  if (!a1)
  {
    goto LABEL_5;
  }

LABEL_3:
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;
  v11 = sub_1A3DDBE10;
LABEL_6:
  sub_1A3C66EE8(v6, v7);
  sub_1A3C66EE8(a1, a2);
  sub_1A3C33378(v11, v10);
  v12 = sub_1A3C33378(v9, v8);
  MEMORY[0x1EEE9AC00](v12);
  KeyPath = swift_getKeyPath();
  v14.n128_f64[0] = MEMORY[0x1EEE9AC00](KeyPath);
  (*((*MEMORY[0x1E69E7D40] & *v2) + 0x870))(v14);
  sub_1A3C33378(a1, a2);

  return result;
}

uint64_t (*sub_1A443B938(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  v5 = MEMORY[0x1E69E7D40];
  MEMORY[0x1EEE9AC00](v3);
  v8 = *((v7 & v6) + 0x50);
  KeyPath = swift_getKeyPath();
  (*((*v5 & *v1) + 0x868))(KeyPath);

  *v4 = v1;
  MEMORY[0x1EEE9AC00](v10);
  swift_getKeyPath();
  type metadata accessor for LemonadeCollectionCustomizationFoldersModel(255, v8, v11, v12);
  swift_getWitnessTable();
  sub_1A52415F4();

  v4[5] = sub_1A443B50C(v4);
  return sub_1A443BAF0;
}

uint64_t sub_1A443BAFC@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x650))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_1A443BBC4()
{
  v1 = qword_1EB13A998;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_1A443BC08(char a1)
{
  v3 = qword_1EB13A998;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t sub_1A443BCB8()
{
  v1 = qword_1EB13AA68;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_1A443BCFC(uint64_t a1)
{
  v3 = qword_1EB13AA68;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t sub_1A443BDAC@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x680))();
  *a2 = result;
  return result;
}

double sub_1A443BE84(uint64_t a1)
{
  v2 = v1;
  v4 = MEMORY[0x1E69E7D40];
  swift_beginAccess();
  type metadata accessor for _PHPickerSourceType(0);
  sub_1A444793C(&qword_1EB12DB98, type metadata accessor for _PHPickerSourceType, &unk_1A5304CD0);
  v5 = sub_1A524C594();
  if (v5)
  {
    v6 = qword_1EB13AA68;
    swift_beginAccess();
    *(v2 + v6) = a1;
  }

  else
  {
    MEMORY[0x1EEE9AC00](v5);
    KeyPath = swift_getKeyPath();
    v9.n128_f64[0] = MEMORY[0x1EEE9AC00](KeyPath);
    (*((*v4 & *v1) + 0x870))(v9);
  }

  return result;
}

uint64_t (*sub_1A443C064(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  v5 = MEMORY[0x1E69E7D40];
  MEMORY[0x1EEE9AC00](v3);
  v8 = *((v7 & v6) + 0x50);
  KeyPath = swift_getKeyPath();
  (*((*v5 & *v1) + 0x868))(KeyPath);

  *v4 = v1;
  MEMORY[0x1EEE9AC00](v10);
  swift_getKeyPath();
  type metadata accessor for LemonadeCollectionCustomizationFoldersModel(255, v8, v11, v12);
  swift_getWitnessTable();
  sub_1A52415F4();

  v4[5] = sub_1A443BD4C(v4);
  return sub_1A443C21C;
}

uint64_t sub_1A443C228()
{
  v1 = qword_1EB13AA70;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_1A443C26C(char a1)
{
  v3 = qword_1EB13AA70;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t sub_1A443C330@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x6B0))();
  *a2 = result & 1;
  return result;
}

uint64_t (*sub_1A443C420(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  v5 = MEMORY[0x1E69E7D40];
  MEMORY[0x1EEE9AC00](v3);
  v8 = *((v7 & v6) + 0x50);
  KeyPath = swift_getKeyPath();
  (*((*v5 & *v1) + 0x868))(KeyPath);

  *v4 = v1;
  MEMORY[0x1EEE9AC00](v10);
  swift_getKeyPath();
  type metadata accessor for LemonadeCollectionCustomizationFoldersModel(255, v8, v11, v12);
  swift_getWitnessTable();
  sub_1A52415F4();

  v4[5] = sub_1A443C2BC(v4);
  return sub_1A443C5D8;
}

double sub_1A443C5E4()
{
  v1 = MEMORY[0x1E69E7D40];
  v2 = (*((*MEMORY[0x1E69E7D40] & *v0) + 0x6B8))(1);
  v3 = *((*((*v1 & *v0) + 0x6E0))(v2) + 16);

  (*((*v1 & *v0) + 0x808))(v3);

  return sub_1A443FEA4();
}

double sub_1A443C6E4(uint64_t a1)
{
  v3 = qword_1EB13AA78;
  swift_beginAccess();
  *(v1 + v3) = a1;

  return sub_1A443C5E4();
}

double (*sub_1A443C740(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1A443C7A4;
}

double sub_1A443C7A4(uint64_t a1, char a2)
{
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return sub_1A443C5E4();
  }

  return result;
}

uint64_t sub_1A443C7D8@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x6E0))();
  *a2 = result;
  return result;
}

double sub_1A443C8BC(uint64_t a1)
{
  v3 = MEMORY[0x1E69E7D40];
  swift_beginAccess();
  sub_1A3C68BEC(0, &qword_1EB120D40, MEMORY[0x1E6985D18], MEMORY[0x1E69E62F8]);
  sub_1A3EBA9E0();
  v4 = sub_1A524C594();
  if (v4)
  {
    return sub_1A443C6E4(a1);
  }

  MEMORY[0x1EEE9AC00](v4);
  KeyPath = swift_getKeyPath();
  v7.n128_f64[0] = MEMORY[0x1EEE9AC00](KeyPath);
  (*((*v3 & *v1) + 0x870))(v7);

  return result;
}

uint64_t (*sub_1A443CA88(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  v5 = MEMORY[0x1E69E7D40];
  MEMORY[0x1EEE9AC00](v3);
  v8 = *((v7 & v6) + 0x50);
  KeyPath = swift_getKeyPath();
  (*((*v5 & *v1) + 0x868))(KeyPath);

  *v4 = v1;
  MEMORY[0x1EEE9AC00](v10);
  swift_getKeyPath();
  type metadata accessor for LemonadeCollectionCustomizationFoldersModel(255, v8, v11, v12);
  swift_getWitnessTable();
  sub_1A52415F4();

  v4[5] = sub_1A443C740(v4);
  return sub_1A443CC40;
}

uint64_t sub_1A443CCB8@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x710))();
  *a2 = result;
  return result;
}

double sub_1A443CD9C(uint64_t a1)
{
  v2 = v1;
  v4 = MEMORY[0x1E69E7D40];
  swift_beginAccess();
  sub_1A3C68BEC(0, &qword_1EB120D40, MEMORY[0x1E6985D18], MEMORY[0x1E69E62F8]);
  sub_1A3EBA9E0();
  v5 = sub_1A524C594();
  if (v5)
  {
    v6 = qword_1EB13AA80;
    swift_beginAccess();
    *(v2 + v6) = a1;
  }

  else
  {
    MEMORY[0x1EEE9AC00](v5);
    KeyPath = swift_getKeyPath();
    v9.n128_f64[0] = MEMORY[0x1EEE9AC00](KeyPath);
    (*((*v4 & *v1) + 0x870))(v9);
  }

  return result;
}

uint64_t (*sub_1A443CF8C(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  v5 = MEMORY[0x1E69E7D40];
  MEMORY[0x1EEE9AC00](v3);
  v8 = *((v7 & v6) + 0x50);
  KeyPath = swift_getKeyPath();
  (*((*v5 & *v1) + 0x868))(KeyPath);

  *v4 = v1;
  MEMORY[0x1EEE9AC00](v10);
  swift_getKeyPath();
  type metadata accessor for LemonadeCollectionCustomizationFoldersModel(255, v8, v11, v12);
  swift_getWitnessTable();
  sub_1A52415F4();

  v4[5] = sub_1A443CC58(v4);
  return sub_1A443D144;
}

uint64_t sub_1A443D150()
{
  v1 = qword_1EB13AA88;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_1A443D194(char a1)
{
  v3 = qword_1EB13AA88;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t sub_1A443D244@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x740))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_1A443D320(uint64_t a1, uint64_t *a2)
{
  v4 = MEMORY[0x1E69E7D40];
  KeyPath = swift_getKeyPath();
  (*((*v4 & *v2) + 0x868))(KeyPath);

  v6 = *a2;
  swift_beginAccess();
  return *(v2 + v6);
}

double sub_1A443D410(char a1, uint64_t *a2, uint64_t a3)
{
  v5 = v3;
  v7 = MEMORY[0x1E69E7D40];
  swift_beginAccess();
  v8 = a1 & 1;
  v9 = sub_1A524C594();
  if (v9)
  {
    v10 = *a2;
    swift_beginAccess();
    *(v5 + v10) = v8;
  }

  else
  {
    MEMORY[0x1EEE9AC00](v9);
    KeyPath = swift_getKeyPath();
    v13.n128_f64[0] = MEMORY[0x1EEE9AC00](KeyPath);
    (*((*v7 & *v5) + 0x870))(v13);
  }

  return result;
}

uint64_t (*sub_1A443D5C0(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  v5 = MEMORY[0x1E69E7D40];
  MEMORY[0x1EEE9AC00](v3);
  v8 = *((v7 & v6) + 0x50);
  KeyPath = swift_getKeyPath();
  (*((*v5 & *v1) + 0x868))(KeyPath);

  *v4 = v1;
  MEMORY[0x1EEE9AC00](v10);
  swift_getKeyPath();
  type metadata accessor for LemonadeCollectionCustomizationFoldersModel(255, v8, v11, v12);
  swift_getWitnessTable();
  sub_1A52415F4();

  v4[5] = sub_1A443D1E4(v4);
  return sub_1A443D778;
}

uint64_t sub_1A443D7F0@<X0>(void **a1@<X0>, uint64_t (**a2)()@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x770))();
  if (result)
  {
    v5 = result;
    v6 = v4;
    result = swift_allocObject();
    *(result + 16) = v5;
    *(result + 24) = v6;
    v7 = sub_1A3DDBE10;
  }

  else
  {
    v7 = 0;
  }

  *a2 = v7;
  a2[1] = result;
  return result;
}

uint64_t sub_1A443D898(uint64_t *a1, void **a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_1A3D6069C;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x778);
  v8 = sub_1A3C66EE8(v3, v4);
  return v7(v6, v5, v8);
}

uint64_t sub_1A443D97C(uint64_t a1, void *a2)
{
  v4 = MEMORY[0x1E69E7D40];
  KeyPath = swift_getKeyPath();
  (*((*v4 & *v2) + 0x868))(KeyPath);

  v6 = (v2 + *a2);
  swift_beginAccess();
  v7 = *v6;
  sub_1A3C66EE8(*v6, v6[1]);
  return v7;
}

double sub_1A443DA5C(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + qword_1EB13AA90);
  swift_beginAccess();
  v6 = *v5;
  v7 = v5[1];
  if (!v6)
  {
    v9 = 0;
    v8 = 0;
    if (a1)
    {
      goto LABEL_3;
    }

LABEL_5:
    v11 = 0;
    v10 = 0;
    goto LABEL_6;
  }

  v8 = swift_allocObject();
  *(v8 + 16) = v6;
  *(v8 + 24) = v7;
  v9 = sub_1A3DDBE10;
  if (!a1)
  {
    goto LABEL_5;
  }

LABEL_3:
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;
  v11 = sub_1A3DDBE10;
LABEL_6:
  sub_1A3C66EE8(v6, v7);
  sub_1A3C66EE8(a1, a2);
  sub_1A3C33378(v11, v10);
  v12 = sub_1A3C33378(v9, v8);
  MEMORY[0x1EEE9AC00](v12);
  KeyPath = swift_getKeyPath();
  v14.n128_f64[0] = MEMORY[0x1EEE9AC00](KeyPath);
  (*((*MEMORY[0x1E69E7D40] & *v2) + 0x870))(v14);
  sub_1A3C33378(a1, a2);

  return result;
}

uint64_t (*sub_1A443DC9C(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  v5 = MEMORY[0x1E69E7D40];
  MEMORY[0x1EEE9AC00](v3);
  v8 = *((v7 & v6) + 0x50);
  KeyPath = swift_getKeyPath();
  (*((*v5 & *v1) + 0x868))(KeyPath);

  *v4 = v1;
  MEMORY[0x1EEE9AC00](v10);
  swift_getKeyPath();
  type metadata accessor for LemonadeCollectionCustomizationFoldersModel(255, v8, v11, v12);
  swift_getWitnessTable();
  sub_1A52415F4();

  v4[5] = sub_1A443D790(v4);
  return sub_1A443DE54;
}

uint64_t sub_1A443DE80(uint64_t a1, uint64_t a2, void *a3, uint64_t (*a4)(uint64_t))
{
  v8 = (v4 + *a3);
  swift_beginAccess();
  v9 = v8[1];
  *v8 = a1;
  v8[1] = a2;
  return a4(v9);
}

uint64_t sub_1A443DF44@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x7A0))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

void sub_1A443E03C(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x1E69E7D40];
  KeyPath = swift_getKeyPath();
  (*((*v3 & *v2) + 0x868))(KeyPath);

  swift_beginAccess();
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

double sub_1A443E140(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v8 = MEMORY[0x1E69E7D40];
  swift_beginAccess();
  v9 = sub_1A524C594();
  if (v9)
  {
    v10 = (v4 + *a3);
    swift_beginAccess();
    *v10 = a1;
    v10[1] = a2;
  }

  else
  {
    MEMORY[0x1EEE9AC00](v9);
    KeyPath = swift_getKeyPath();
    v13.n128_f64[0] = MEMORY[0x1EEE9AC00](KeyPath);
    (*((*v8 & *v4) + 0x870))(v13);
  }

  return result;
}

uint64_t (*sub_1A443E308(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  v5 = MEMORY[0x1E69E7D40];
  MEMORY[0x1EEE9AC00](v3);
  v8 = *((v7 & v6) + 0x50);
  KeyPath = swift_getKeyPath();
  (*((*v5 & *v1) + 0x868))(KeyPath);

  *v4 = v1;
  MEMORY[0x1EEE9AC00](v10);
  swift_getKeyPath();
  type metadata accessor for LemonadeCollectionCustomizationFoldersModel(255, v8, v11, v12);
  swift_getWitnessTable();
  sub_1A52415F4();

  v4[5] = sub_1A443DEE4(v4);
  return sub_1A443E4C0;
}

uint64_t sub_1A443E538@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x7D0))();
  *a2 = result;
  return result;
}

void sub_1A443E61C(uint64_t a1, uint64_t *a2)
{
  v3 = MEMORY[0x1E69E7D40];
  KeyPath = swift_getKeyPath();
  (*((*v3 & *v2) + 0x868))(KeyPath);

  swift_beginAccess();
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

double sub_1A443E710(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = *v4;
  v8 = MEMORY[0x1E69E7D40];
  v9 = *MEMORY[0x1E69E7D40];
  swift_beginAccess();
  v15 = *((v9 & v7) + 0x50);
  KeyPath = swift_getKeyPath();
  v13 = v4;
  v14 = a1;
  (*((*v8 & *v4) + 0x870))(KeyPath, a4, &v12, MEMORY[0x1E69E7CA8] + 8);

  return result;
}

uint64_t (*sub_1A443E814(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  v5 = MEMORY[0x1E69E7D40];
  MEMORY[0x1EEE9AC00](v3);
  v8 = *((v7 & v6) + 0x50);
  KeyPath = swift_getKeyPath();
  (*((*v5 & *v1) + 0x868))(KeyPath);

  *v4 = v1;
  MEMORY[0x1EEE9AC00](v10);
  swift_getKeyPath();
  type metadata accessor for LemonadeCollectionCustomizationFoldersModel(255, v8, v11, v12);
  swift_getWitnessTable();
  sub_1A52415F4();

  v4[5] = sub_1A443E4D8(v4);
  return sub_1A443E9CC;
}

uint64_t sub_1A443E9D8()
{
  v1 = qword_1EB13AAA8;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_1A443EA1C(uint64_t a1)
{
  v3 = qword_1EB13AAA8;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t sub_1A443EACC@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x800))();
  *a2 = result;
  return result;
}

uint64_t sub_1A443EBA4(uint64_t a1, uint64_t *a2)
{
  v4 = MEMORY[0x1E69E7D40];
  KeyPath = swift_getKeyPath();
  (*((*v4 & *v2) + 0x868))(KeyPath);

  v6 = *a2;
  swift_beginAccess();
  return *(v2 + v6);
}

double sub_1A443EC6C(uint64_t a1)
{
  v2 = v1;
  v4 = MEMORY[0x1E69E7D40];
  swift_beginAccess();
  v5 = sub_1A524C594();
  if (v5)
  {
    v6 = qword_1EB13AAA8;
    swift_beginAccess();
    *(v2 + v6) = a1;
  }

  else
  {
    MEMORY[0x1EEE9AC00](v5);
    KeyPath = swift_getKeyPath();
    v9.n128_f64[0] = MEMORY[0x1EEE9AC00](KeyPath);
    (*((*v4 & *v1) + 0x870))(v9);
  }

  return result;
}

uint64_t (*sub_1A443EE18(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  v5 = MEMORY[0x1E69E7D40];
  MEMORY[0x1EEE9AC00](v3);
  v8 = *((v7 & v6) + 0x50);
  KeyPath = swift_getKeyPath();
  (*((*v5 & *v1) + 0x868))(KeyPath);

  *v4 = v1;
  MEMORY[0x1EEE9AC00](v10);
  swift_getKeyPath();
  type metadata accessor for LemonadeCollectionCustomizationFoldersModel(255, v8, v11, v12);
  swift_getWitnessTable();
  sub_1A52415F4();

  v4[5] = sub_1A443EA6C(v4);
  return sub_1A443EFD0;
}

void sub_1A443EFDC(void *a1, uint64_t a2, uint64_t a3)
{
  v3 = *a1;
  v4 = *(*a1 + 32);
  (*(*a1 + 40))(*a1, 0);
  v5 = *((*MEMORY[0x1E69E7D40] & *v4) + 0x50);
  swift_getKeyPath();
  type metadata accessor for LemonadeCollectionCustomizationFoldersModel(255, v5, v6, v7);
  swift_getWitnessTable();
  sub_1A52415E4();

  free(v3);
}

id LemonadeCollectionCustomizationFoldersModel.init(collection:)(void *a1)
{
  v3 = *MEMORY[0x1E69E7D40] & *v1;
  v4 = (v1 + qword_1EB13A9A0);
  *v4 = 0;
  v4[1] = 0;
  *(v1 + qword_1EB13A9A8) = 0;
  *(v1 + qword_1EB13A9B0) = 1;
  v5 = sub_1A3C38BD4(0xD000000000000035);
  v6 = (v1 + qword_1EB13A9B8);
  *v6 = v5;
  v6[1] = v7;
  v8 = sub_1A3C38BD4(0xD000000000000036);
  v9 = (v1 + qword_1EB13A9C0);
  *v9 = v8;
  v9[1] = v10;
  *(v1 + qword_1EB13A9C8) = 1;
  v11 = sub_1A3C38BD4(0xD000000000000040);
  v12 = (v1 + qword_1EB13A9D0);
  *v12 = v11;
  v12[1] = v13;
  *(v1 + qword_1EB13A9D8) = 0;
  v14 = MEMORY[0x1E69E7CC0];
  *(v1 + qword_1EB13A9E0) = MEMORY[0x1E69E7CC0];
  *(v1 + qword_1EB13A9E8) = 0;
  v15 = qword_1EB13A9F0;
  *(v1 + qword_1EB13A9F0) = 0;
  *(v1 + qword_1EB13A9F8) = 0;
  *(v1 + qword_1EB13AA00) = 0;
  v16 = (v1 + qword_1EB13AA08);
  *v16 = PXDisplayCollectionDetailedCountsMake;
  v16[1] = 0;
  v17 = (v1 + qword_1EB13AA10);
  *v17 = 0;
  v17[1] = 0;
  v18 = (v1 + qword_1EB13AA18);
  *v18 = 0;
  v18[1] = 0xE000000000000000;
  *(v1 + qword_1EB13AA20) = 1;
  *(v1 + qword_1EB13AA28) = 0;
  v19 = v1 + qword_1EB13AA30;
  *v19 = 0;
  *(v19 + 1) = 0;
  v19[16] = 1;
  *(v1 + qword_1EB13AA38) = 1;
  *(v1 + qword_1EB13AA40) = 0;
  *(v1 + qword_1EB13AA48) = 0;
  *(v1 + qword_1EB13AA50) = 1;
  *(v1 + qword_1EB13AA58) = 0;
  v20 = (v1 + qword_1EB13AA60);
  *v20 = 0;
  v20[1] = 0;
  *(v1 + qword_1EB13A998) = 0;
  *(v1 + qword_1EB13AA68) = 2;
  *(v1 + qword_1EB13AA70) = 0;
  *(v1 + qword_1EB13AA78) = v14;
  *(v1 + qword_1EB13AA80) = v14;
  *(v1 + qword_1EB13AA88) = 1;
  v21 = (v1 + qword_1EB13AA90);
  *v21 = PXDisplayCollectionDetailedCountsMake;
  v21[1] = 0;
  v22 = sub_1A3C38BD4(0xD000000000000034);
  v23 = (v1 + qword_1EB13AA98);
  *v23 = v22;
  v23[1] = v24;
  *(v1 + qword_1EB13AAA0) = v14;
  *(v1 + qword_1EB13AAA8) = 0;
  sub_1A5241604();
  result = [a1 photoLibrary];
  if (!result)
  {
    __break(1u);
    return result;
  }

  *(v1 + qword_1EB13A980) = result;

  *(v1 + v15) = 0;
  v26 = *(v3 + 80);
  v70.receiver = v1;
  v70.super_class = type metadata accessor for LemonadeCollectionCustomizationFoldersModel(0, v26, v27, v28);
  v29 = objc_msgSendSuper2(&v70, sel_init);
  v30 = [a1 photoLibrary];
  if (!v30)
  {
    v46 = sub_1A524D244();
    v47 = *sub_1A3CAA3FC();
    if (os_log_type_enabled(v47, v46))
    {
      v48 = v47;
      v49 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      *v49 = 138412290;
      *(v49 + 4) = a1;
      *v50 = a1;
      v51 = a1;
      _os_log_impl(&dword_1A3C1C000, v48, v46, "Folder %@ has no photo library, will not refresh.", v49, 0xCu);
      sub_1A3CB65E4(v50);
      MEMORY[0x1A590EEC0](v50, -1, -1);
      MEMORY[0x1A590EEC0](v49, -1, -1);
    }

    goto LABEL_12;
  }

  v31 = v30;
  v32 = [v30 librarySpecificFetchOptions];
  v33 = objc_opt_self();
  sub_1A3C398E8(0, &qword_1EB12B260, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
  v34 = swift_allocObject();
  *(v34 + 16) = xmmword_1A52F8E10;
  v69 = a1;
  v35 = [a1 localIdentifier];
  v36 = v26;
  v37 = sub_1A524C674();
  v39 = v38;

  *(v34 + 32) = v37;
  *(v34 + 40) = v39;
  v26 = v36;
  v40 = sub_1A524CA14();

  v41 = [v33 fetchCollectionListsWithLocalIdentifiers:v40 options:v32];

  v42 = [v41 firstObject];
  if (!v42)
  {
LABEL_9:
    v52 = sub_1A524D244();
    v53 = *sub_1A3CAA3FC();
    v54 = os_log_type_enabled(v53, v52);
    v55 = v53;
    if (v54)
    {
      v56 = swift_slowAlloc();
      v57 = swift_slowAlloc();
      *v56 = 138412290;
      *(v56 + 4) = v69;
      *v57 = v69;
      v58 = v69;
      _os_log_impl(&dword_1A3C1C000, v55, v52, "Failed to refresh folder %@.", v56, 0xCu);
      sub_1A3CB65E4(v57);
      MEMORY[0x1A590EEC0](v57, -1, -1);
      MEMORY[0x1A590EEC0](v56, -1, -1);
    }

    a1 = v69;
LABEL_12:
    v45 = a1;
    goto LABEL_13;
  }

  v43 = v42;
  v44 = swift_dynamicCastUnknownClass();
  if (!v44)
  {

    goto LABEL_9;
  }

  v45 = v44;

  a1 = v69;
LABEL_13:
  v59 = v45;
  sub_1A44376DC(v45);
  v60 = 0xE000000000000000;
  v61 = [v59 localizedTitle];
  if (v61)
  {
    v62 = v61;
    v63 = sub_1A524C674();
    v60 = v64;
  }

  else
  {
    v63 = 0;
  }

  sub_1A4438BA4(v63, v60);
  v65 = sub_1A44453F4(v59);
  sub_1A443C8BC(v65);
  sub_1A443C3F8(0);
  v66 = sub_1A443FC44();
  sub_1A443CD9C(v66);
  v67 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v68 = swift_allocObject();
  *(v68 + 16) = v26;
  *(v68 + 24) = v67;

  sub_1A443DA5C(sub_1A4447994, v68);

  return v29;
}

id sub_1A443F868(void *a1)
{
  v3 = *MEMORY[0x1E69E7D40] & *v1;
  v4 = (v1 + qword_1EB13A9A0);
  *v4 = 0;
  v4[1] = 0;
  *(v1 + qword_1EB13A9A8) = 0;
  *(v1 + qword_1EB13A9B0) = 1;
  v5 = sub_1A3C38BD4(0xD000000000000035);
  v6 = (v1 + qword_1EB13A9B8);
  *v6 = v5;
  v6[1] = v7;
  v8 = sub_1A3C38BD4(0xD000000000000036);
  v9 = (v1 + qword_1EB13A9C0);
  *v9 = v8;
  v9[1] = v10;
  *(v1 + qword_1EB13A9C8) = 1;
  v11 = sub_1A3C38BD4(0xD000000000000040);
  v12 = (v1 + qword_1EB13A9D0);
  *v12 = v11;
  v12[1] = v13;
  *(v1 + qword_1EB13A9D8) = 0;
  v14 = MEMORY[0x1E69E7CC0];
  *(v1 + qword_1EB13A9E0) = MEMORY[0x1E69E7CC0];
  *(v1 + qword_1EB13A9E8) = 0;
  v15 = qword_1EB13A9F0;
  *(v1 + qword_1EB13A9F0) = 0;
  *(v1 + qword_1EB13A9F8) = 0;
  *(v1 + qword_1EB13AA00) = 0;
  v16 = (v1 + qword_1EB13AA08);
  *v16 = PXDisplayCollectionDetailedCountsMake;
  v16[1] = 0;
  v17 = (v1 + qword_1EB13AA10);
  *v17 = 0;
  v17[1] = 0;
  v18 = (v1 + qword_1EB13AA18);
  *v18 = 0;
  v18[1] = 0xE000000000000000;
  *(v1 + qword_1EB13AA20) = 1;
  *(v1 + qword_1EB13AA28) = 0;
  v19 = v1 + qword_1EB13AA30;
  *v19 = 0;
  *(v19 + 1) = 0;
  v19[16] = 1;
  *(v1 + qword_1EB13AA38) = 1;
  *(v1 + qword_1EB13AA40) = 0;
  *(v1 + qword_1EB13AA48) = 0;
  *(v1 + qword_1EB13AA50) = 1;
  *(v1 + qword_1EB13AA58) = 0;
  v20 = (v1 + qword_1EB13AA60);
  *v20 = 0;
  v20[1] = 0;
  *(v1 + qword_1EB13A998) = 0;
  *(v1 + qword_1EB13AA68) = 2;
  *(v1 + qword_1EB13AA70) = 0;
  *(v1 + qword_1EB13AA78) = v14;
  *(v1 + qword_1EB13AA80) = v14;
  *(v1 + qword_1EB13AA88) = 1;
  v21 = (v1 + qword_1EB13AA90);
  *v21 = PXDisplayCollectionDetailedCountsMake;
  v21[1] = 0;
  v22 = sub_1A3C38BD4(0xD000000000000034);
  v23 = (v1 + qword_1EB13AA98);
  *v23 = v22;
  v23[1] = v24;
  *(v1 + qword_1EB13AAA0) = v14;
  *(v1 + qword_1EB13AAA8) = 0;
  sub_1A5241604();
  result = [a1 photoLibrary];
  if (result)
  {
    *(v1 + qword_1EB13A980) = result;
    v26 = *(v1 + v15);
    v27 = a1;

    *(v1 + v15) = a1;
    v28 = *(v3 + 80);
    v35.receiver = v1;
    v35.super_class = type metadata accessor for LemonadeCollectionCustomizationFoldersModel(0, v28, v29, v30);
    v31 = objc_msgSendSuper2(&v35, sel_init);
    v32 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v33 = swift_allocObject();
    *(v33 + 16) = v28;
    *(v33 + 24) = v32;
    v34 = v31;

    sub_1A443DA5C(sub_1A44456B4, v33);

    return v34;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1A443FC44()
{
  v1 = sub_1A523FBB4();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1A524C2C4();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v0 + qword_1EB13A980);
  sub_1A524C2A4();
  sub_1A524C254();
  MEMORY[0x1A59075D0](20);
  v10 = sub_1A524C294();
  (*((*MEMORY[0x1E69E7D40] & *v0) + 0x438))(v10);
  if (v11)
  {
    sub_1A523FB54();
    sub_1A3C68BEC(0, &qword_1EB12E380, MEMORY[0x1E6985D18], MEMORY[0x1E69E6F90]);
    v12 = (*(v2 + 80) + 32) & ~*(v2 + 80);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_1A52F8E10;
    (*(v2 + 32))(v13 + v12, v4, v1);
  }

  else
  {
    v13 = MEMORY[0x1E69E7CC0];
  }

  (*(v6 + 8))(v8, v5);
  return v13;
}

double sub_1A443FEA4()
{
  v1 = *(v0 + qword_1EB13A980);
  v2 = (*((*MEMORY[0x1E69E7D40] & *v0) + 0x6E0))();
  sub_1A4444DB8(0, &qword_1EB129F98, &qword_1EB126660, 0x1E6978630, type metadata accessor for PhotoKitItemListManager);
  v8 = 0;
  memset(v7, 0, sizeof(v7));
  v3 = swift_allocObject();
  v3[2] = v2;
  v3[3] = v1;
  v3[4] = 4;
  sub_1A3C52C70(0, &qword_1EB126660, 0x1E6978630);
  v4 = v1;
  sub_1A43FD8EC();
  v5 = PhotoKitItemListManager.__allocating_init(photoLibrary:libraryFilterState:userData:options:sorter:fetchResultProvider:)(v4, 0, v7);

  return sub_1A4436F08(v5);
}

id sub_1A4440014(uint64_t a1, void *a2, uint64_t a3)
{
  v35 = a3;
  v3 = 0;
  v37 = *(a1 + 16);
  v38 = a2;
  v4 = MEMORY[0x1E69E7CC0];
  v40 = MEMORY[0x1E69E7CC0];
  v5 = MEMORY[0x1E69E6158];
  v6 = xmmword_1A52F8E10;
  v36 = xmmword_1A52F8E10;
  while (1)
  {
    if (v37 == v3)
    {
LABEL_21:
      v28 = sub_1A3D35BE4(v4, v6);
      sub_1A4440428(v28, v29);

      sub_1A524C674();
      v30 = objc_allocWithZone(MEMORY[0x1E69788E0]);
      v31 = sub_1A524CA14();

      v32 = sub_1A524C634();

      v33 = [v30 initWithObjects:v31 photoLibrary:v38 fetchType:v32 fetchPropertySets:0 identifier:0 registerIfNeeded:0];

      return v33;
    }

    sub_1A523FBB4();
    v7 = [v38 librarySpecificFetchOptions];
    sub_1A3C398E8(0, &qword_1EB12B260, v5, MEMORY[0x1E69E6F90]);
    v8 = swift_allocObject();
    *(v8 + 16) = v36;
    result = sub_1A523FB64();
    if (!v10)
    {
      break;
    }

    v11 = result;
    v12 = v10;
    v13 = objc_opt_self();
    *(v8 + 32) = v11;
    *(v8 + 40) = v12;
    v14 = v5;
    v15 = sub_1A524CA14();

    v16 = v7;
    v17 = [v13 fetchAssetCollectionsWithLocalIdentifiers:v15 options:v16];

    v18 = [v17 firstObject];
    if (v18)
    {
      v19 = objc_opt_self();
      v20 = v18;
      v21 = [v19 fetchKeyAssetsInAssetCollection:v20 options:v16];

      if (v21 && (v22 = [v21 firstObject], v21, v22))
      {
        v39 = v22;
        v24.n128_f64[0] = MEMORY[0x1EEE9AC00](v23);
        v34[2] = &v39;
        if (sub_1A40C23C4(sub_1A44474B4, v24, v34, v4))
        {

          if (v4 >> 62)
          {
            goto LABEL_20;
          }
        }

        else
        {
          v27 = v22;
          MEMORY[0x1A5907D70]();
          if (*((v40 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v40 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_1A524CA74();
          }

          sub_1A524CAE4();

          v4 = v40;
          if (v40 >> 62)
          {
LABEL_20:
            v25 = sub_1A524E2B4();
            goto LABEL_14;
          }
        }
      }

      else
      {

        if (v4 >> 62)
        {
          goto LABEL_20;
        }
      }
    }

    else
    {

      if (v4 >> 62)
      {
        goto LABEL_20;
      }
    }

    v25 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_14:

    ++v3;
    v26 = v25 == v35;
    v5 = v14;
    if (v26)
    {
      goto LABEL_21;
    }
  }

  __break(1u);
  return result;
}

char *sub_1A4440428(unint64_t a1, __n128 a2)
{
  if (a1 >> 62)
  {
    v3 = sub_1A524E2B4();
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = MEMORY[0x1E69E7CC0];
  if (!v3)
  {
    return v4;
  }

  v14 = MEMORY[0x1E69E7CC0];
  result = sub_1A3D3E490(0, v3 & ~(v3 >> 63), 0);
  if ((v3 & 0x8000000000000000) == 0)
  {
    v4 = v14;
    if ((a1 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v3; ++i)
      {
        MEMORY[0x1A59097F0](i, a1);
        sub_1A3C52C70(0, &qword_1EB126660, 0x1E6978630);
        swift_dynamicCast();
        v14 = v4;
        v8 = *(v4 + 16);
        v7 = *(v4 + 24);
        if (v8 >= v7 >> 1)
        {
          sub_1A3D3E490((v7 > 1), v8 + 1, 1);
          v4 = v14;
        }

        *(v4 + 16) = v8 + 1;
        sub_1A3C57128(v13, (v4 + 32 * v8 + 32));
      }
    }

    else
    {
      v9 = (a1 + 32);
      sub_1A3C52C70(0, &qword_1EB126660, 0x1E6978630);
      do
      {
        v10 = *v9;
        swift_dynamicCast();
        v14 = v4;
        v12 = *(v4 + 16);
        v11 = *(v4 + 24);
        if (v12 >= v11 >> 1)
        {
          sub_1A3D3E490((v11 > 1), v12 + 1, 1);
          v4 = v14;
        }

        *(v4 + 16) = v12 + 1;
        sub_1A3C57128(v13, (v4 + 32 * v12 + 32));
        ++v9;
        --v3;
      }

      while (v3);
    }

    return v4;
  }

  __break(1u);
  return result;
}

void sub_1A4440624(void *a1, void *a2, uint64_t a3, void (*a4)(uint64_t, void *), uint64_t a5)
{
  v6 = v5;
  v11 = MEMORY[0x1E69E7CC0];
  v45 = MEMORY[0x1E69E7CC0];
  v12 = *((*MEMORY[0x1E69E7D40] & *v5) + 0x468);
  v13 = v12();
  v15 = v14;

  v17 = HIBYTE(v15) & 0xF;
  if ((v15 & 0x2000000000000000) == 0)
  {
    v17 = v13 & 0xFFFFFFFFFFFFLL;
  }

  if (v17)
  {
    (v12)(v16);
    v18 = objc_allocWithZone(PXRenameCollectionAction);
    v19 = sub_1A524C634();

    v20 = [v18 initWithCollection:a1 title:v19];

    if (!v20)
    {
      v11 = MEMORY[0x1E69E7CC0];
      if (!a2)
      {
        goto LABEL_16;
      }

      goto LABEL_9;
    }

    v21 = v20;
    MEMORY[0x1A5907D70]();
    if (*((v45 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v45 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1A524CA74();
    }

    sub_1A524CAE4();

    v11 = v45;
  }

  if (!a2)
  {
    goto LABEL_16;
  }

LABEL_9:
  v22 = objc_allocWithZone(PXEditChildCollectionsAction);
  v23 = a2;
  v24 = [v22 initWithCollectionList:a1 childCollections:v23];
  if (v24)
  {
    v25 = v24;
    MEMORY[0x1A5907D70]();
    if (*((v45 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v45 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1A524CA74();
    }

    sub_1A524CAE4();

    v11 = v45;
  }

  else
  {
  }

LABEL_16:
  if (v11 >> 62)
  {
    if (sub_1A524E2B4() >= 1)
    {
      goto LABEL_18;
    }
  }

  else if (*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 1)
  {
LABEL_18:
    v26 = objc_allocWithZone(PXActionGroup);
    sub_1A3C52C70(0, &qword_1EB12DBC0, off_1E771CF30);
    v27 = sub_1A524CA14();

    v28 = [v26 initWithActions_];

    v29 = sub_1A524C634();
    v30 = PXLocalizedString(v29);

    if (!v30)
    {
      sub_1A524C674();
      v30 = sub_1A524C634();
    }

    [v28 setLocalizedActionName_];

    v31 = swift_allocObject();
    v31[2] = v6;
    v31[3] = a1;
    v31[4] = a4;
    v31[5] = a5;
    aBlock[4] = sub_1A44475E4;
    aBlock[5] = v31;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1A3D6084C;
    aBlock[3] = &block_descriptor_251;
    v32 = _Block_copy(aBlock);
    v33 = v6;
    v34 = a1;

    [v28 executeWithUndoManager:a3 completionHandler:v32];
    _Block_release(v32);

    return;
  }

  v35 = sub_1A524D224();
  v36 = *sub_1A3CAA3FC();
  if (os_log_type_enabled(v36, v35))
  {
    v37 = v36;
    v38 = swift_slowAlloc();
    aBlock[0] = swift_slowAlloc();
    *v38 = 136446210;
    v39 = [a1 localIdentifier];
    v40 = sub_1A524C674();
    v42 = v41;

    sub_1A3C2EF94(v40, v42, aBlock);
  }

  a4(1, a1);
}

void sub_1A4440B30(void *a1, uint64_t a2, void (*a3)(void, void), uint64_t a4)
{
  v9 = MEMORY[0x1E69E7D40];
  v10 = (*((*MEMORY[0x1E69E7D40] & *v4) + 0x378))();
  if (v10)
  {
    v11 = v10;
    v12 = *((*v9 & *v4) + 0x468);
    v13 = v12();
    v15 = v14;

    v17 = HIBYTE(v15) & 0xF;
    if ((v15 & 0x2000000000000000) == 0)
    {
      v17 = v13 & 0xFFFFFFFFFFFFLL;
    }

    if (v17)
    {
      (v12)(v16);
    }

    else
    {
      sub_1A3C38BD4(0xD00000000000003DLL);
    }

    v20 = objc_allocWithZone(PXCreateCollectionListAction);
    v21 = a1;
    v22 = v11;
    v23 = sub_1A524C634();

    v24 = [v20 initWithTitle:v23 parentCollectionList:v22 childCollections:v21];

    v25 = swift_allocObject();
    v25[2] = v24;
    v25[3] = a3;
    v25[4] = a4;
    aBlock[4] = sub_1A4445774;
    aBlock[5] = v25;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1A3D6084C;
    aBlock[3] = &block_descriptor_186;
    v26 = _Block_copy(aBlock);
    v27 = v24;

    [v27 executeWithUndoManager:a2 completionHandler:v26];
    _Block_release(v26);
    v28 = sub_1A44E6630();
    v29 = *(**v28 + 264);

    v29(aBlock, v30);

    if (LemonadeAlbumsContentFilter.isFilterApplied.getter() && (aBlock[0] = *sub_1A44E72F8(), sub_1A43FED2C(), (sub_1A524E114() & 1) != 0))
    {
      v31 = *v28;

      aBlock[0] = *sub_1A44E6F70();
      (*(*v31 + 272))(aBlock);
    }

    else
    {
    }
  }

  else
  {
    v18 = sub_1A524D234();
    v19 = *sub_1A3CAA3FC();
    sub_1A5246DF4(v18, &dword_1A3C1C000, v19, "Parent collection list is unavailable", 37, 2, MEMORY[0x1E69E7CC0]);

    a3(0, 0);
  }
}

void sub_1A4440ED8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1A523FBB4();
  v9 = *(v8 - 8);
  v10.n128_f64[0] = MEMORY[0x1EEE9AC00](v8);
  v12 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1E69E7D40];
  v14 = 0;
  if ((*((*MEMORY[0x1E69E7D40] & *v4) + 0x6B0))(v10))
  {
    v42 = a3;
    v15 = (*((*v13 & *v4) + 0x6E0))();
    v16 = *(v15 + 16);
    if (v16)
    {
      v39 = a4;
      v40 = a2;
      v41 = v4;
      v18 = *(v9 + 16);
      v17 = v9 + 16;
      v19 = *(v17 + 64);
      v38 = v15;
      v20 = v15 + ((v19 + 32) & ~v19);
      v43 = *(v17 + 56);
      v44 = v18;
      v45 = v17;
      v21 = (v17 - 8);
      v22 = MEMORY[0x1E69E7CC0];
      v18(v12, v20, v8);
      while (1)
      {
        v24 = sub_1A523FB64();
        v26 = v25;
        (*v21)(v12, v8);
        if (v26)
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v22 = sub_1A3D3D914(0, *(v22 + 2) + 1, 1, v22);
          }

          v28 = *(v22 + 2);
          v27 = *(v22 + 3);
          if (v28 >= v27 >> 1)
          {
            v22 = sub_1A3D3D914((v27 > 1), v28 + 1, 1, v22);
          }

          *(v22 + 2) = v28 + 1;
          v23 = &v22[16 * v28];
          *(v23 + 4) = v24;
          *(v23 + 5) = v26;
        }

        v20 += v43;
        if (!--v16)
        {
          break;
        }

        v44(v12, v20, v8);
      }

      a2 = v40;
      v4 = v41;
      a4 = v39;
    }

    else
    {
    }

    v29 = [*(v4 + qword_1EB13A980) librarySpecificFetchOptions];
    v30 = objc_opt_self();
    v31 = sub_1A524CA14();

    v14 = [v30 fetchAssetCollectionsWithLocalIdentifiers:v31 options:v29];

    a3 = v42;
    v13 = MEMORY[0x1E69E7D40];
  }

  v32 = (*((*v13 & *v4) + 0x3A8))();
  if (v32)
  {
    v33 = v32;
    v34 = swift_allocObject();
    *(v34 + 16) = a3;
    *(v34 + 24) = a4;
    sub_1A3C66EE8(a3, a4);
    sub_1A4440624(v33, v14, a2, sub_1A4445A74, v34);
  }

  else
  {
    v35 = swift_allocObject();
    *(v35 + 16) = a3;
    *(v35 + 24) = a4;
    v36 = *((*v13 & *v4) + 0x848);
    v37 = sub_1A3C66EE8(a3, a4);
    v36(v14, a2, sub_1A4445A6C, v35, v37);
  }
}

void sub_1A44412FC(char a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1A524BEE4();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1A524BF64();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v21 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a3)
  {
    v22 = v14;
    sub_1A3C52C70(0, &qword_1EB12B180, 0x1E69E9610);

    v21 = sub_1A524D474();
    v17 = swift_allocObject();
    *(v17 + 16) = a3;
    *(v17 + 24) = a4;
    *(v17 + 32) = a1 & 1;
    *(v17 + 40) = a2;
    aBlock[4] = sub_1A3EBB6C8;
    aBlock[5] = v17;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1A3C2E0D0;
    aBlock[3] = &block_descriptor_257;
    v18 = _Block_copy(aBlock);
    sub_1A3C66EE8(a3, a4);
    v19 = a2;

    sub_1A524BF14();
    aBlock[0] = MEMORY[0x1E69E7CC0];
    sub_1A444793C(&qword_1EB12B1E0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
    sub_1A3C68BEC(0, &qword_1EB12B1C0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
    sub_1A3C5DE88();
    sub_1A524E224();
    v20 = v21;
    MEMORY[0x1A5908800](0, v16, v11, v18);
    _Block_release(v18);

    sub_1A3C33378(a3, a4);
    (*(v9 + 8))(v11, v8);
    (*(v13 + 8))(v16, v22);
  }
}

void sub_1A4441620(char a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1A524BEE4();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1A524BF64();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v21 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a3)
  {
    v22 = v14;
    sub_1A3C52C70(0, &qword_1EB12B180, 0x1E69E9610);

    v21 = sub_1A524D474();
    v17 = swift_allocObject();
    *(v17 + 16) = a3;
    *(v17 + 24) = a4;
    *(v17 + 32) = a1 & 1;
    *(v17 + 40) = a2;
    aBlock[4] = sub_1A3EBB230;
    aBlock[5] = v17;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1A3C2E0D0;
    aBlock[3] = &block_descriptor_264;
    v18 = _Block_copy(aBlock);
    sub_1A3C66EE8(a3, a4);
    v19 = a2;

    sub_1A524BF14();
    aBlock[0] = MEMORY[0x1E69E7CC0];
    sub_1A444793C(&qword_1EB12B1E0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
    sub_1A3C68BEC(0, &qword_1EB12B1C0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
    sub_1A3C5DE88();
    sub_1A524E224();
    v20 = v21;
    MEMORY[0x1A5908800](0, v16, v11, v18);
    _Block_release(v18);

    sub_1A3C33378(a3, a4);
    (*(v9 + 8))(v11, v8);
    (*(v13 + 8))(v16, v22);
  }
}

id LemonadeCollectionCustomizationFoldersModel.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id LemonadeCollectionCustomizationFoldersModel.__deallocating_deinit(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for LemonadeCollectionCustomizationFoldersModel(0, *((*MEMORY[0x1E69E7D40] & *v4) + 0x50), a3, a4);
  v7.receiver = v4;
  v7.super_class = v5;
  return objc_msgSendSuper2(&v7, sel_dealloc);
}

uint64_t sub_1A4441B94(uint64_t a1)
{
  sub_1A3C33378(*(a1 + qword_1EB13A9A0), *(a1 + qword_1EB13A9A0 + 8));

  sub_1A3C33378(*(a1 + qword_1EB13AA60), *(a1 + qword_1EB13AA60 + 8));

  sub_1A3C33378(*(a1 + qword_1EB13AA90), *(a1 + qword_1EB13AA90 + 8));

  v2 = qword_1EB1C1440;
  v3 = sub_1A5241614();
  v4 = *(*(v3 - 8) + 8);

  return v4(a1 + v2, v3);
}

uint64_t sub_1A4441D68@<X0>(uint64_t *a1@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **v1) + 0x3A8))();
  *a1 = result;
  return result;
}

void (*sub_1A4441E2C(uint64_t *a1))(void *a1)
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
  *(v3 + 32) = (*((*MEMORY[0x1E69E7D40] & **v1) + 0x3B8))();
  return sub_1A3E658B0;
}

void (*sub_1A4442048(uint64_t *a1))(void *a1)
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
  *(v3 + 32) = (*((*MEMORY[0x1E69E7D40] & **v1) + 0x238))();
  return sub_1A3E658B0;
}

void (*sub_1A44421B0(uint64_t *a1))(void *a1)
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
  *(v3 + 32) = (*((*MEMORY[0x1E69E7D40] & **v1) + 0x208))();
  return sub_1A3E658B0;
}

void (*sub_1A4442314(uint64_t *a1))(void *a1)
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
  *(v3 + 32) = (*((*MEMORY[0x1E69E7D40] & **v1) + 0x268))();
  return sub_1A3E658B0;
}

void (*sub_1A4442478(uint64_t *a1))(void *a1)
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
  *(v3 + 32) = (*((*MEMORY[0x1E69E7D40] & **v1) + 0x418))();
  return sub_1A3E658B0;
}

void (*sub_1A44425E0(uint64_t *a1))(void *a1)
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
  *(v3 + 32) = (*((*MEMORY[0x1E69E7D40] & **v1) + 0x298))();
  return sub_1A3E658B0;
}

void (*sub_1A44427A0(uint64_t *a1))(void *a1)
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
  *(v3 + 32) = (*((*MEMORY[0x1E69E7D40] & **v1) + 0x478))();
  return sub_1A3E658B0;
}

void (*sub_1A4442918(uint64_t *a1))(void *a1)
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
  *(v3 + 32) = (*((*MEMORY[0x1E69E7D40] & **v1) + 0x2F8))();
  return sub_1A3E658B0;
}

void (*sub_1A4442A7C(uint64_t *a1))(void *a1)
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
  *(v3 + 32) = (*((*MEMORY[0x1E69E7D40] & **v1) + 0x328))();
  return sub_1A3E658B0;
}

void (*sub_1A4442BE0(uint64_t *a1))(void *a1)
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
  *(v3 + 32) = (*((*MEMORY[0x1E69E7D40] & **v1) + 0x1A8))();
  return sub_1A3E658B0;
}

void (*sub_1A4442D44(uint64_t *a1))(void *a1)
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
  *(v3 + 32) = (*((*MEMORY[0x1E69E7D40] & **v1) + 0x1D8))();
  return sub_1A3E658B0;
}

void (*sub_1A4442F10(uint64_t *a1))(void *a1)
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
  *(v3 + 32) = (*((*MEMORY[0x1E69E7D40] & **v1) + 0x4F0))();
  return sub_1A3E658B0;
}

void (*sub_1A444307C(uint64_t *a1))(void *a1)
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
  *(v3 + 32) = (*((*MEMORY[0x1E69E7D40] & **v1) + 0x520))();
  return sub_1A3E658B0;
}

void (*sub_1A44431F4(uint64_t *a1))(void *a1)
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
  *(v3 + 32) = (*((*MEMORY[0x1E69E7D40] & **v1) + 0x558))();
  return sub_1A3E658B0;
}

void (*sub_1A44433B8(uint64_t *a1))(void *a1)
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
  *(v3 + 32) = (*((*MEMORY[0x1E69E7D40] & **v1) + 0x588))();
  return sub_1A3E658B0;
}

void (*sub_1A4443520(uint64_t *a1))(void *a1)
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
  *(v3 + 32) = (*((*MEMORY[0x1E69E7D40] & **v1) + 0x5B8))();
  return sub_1A3E658B0;
}

void (*sub_1A4443688(uint64_t *a1))(void *a1)
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
  *(v3 + 32) = (*((*MEMORY[0x1E69E7D40] & **v1) + 0x3E8))();
  return sub_1A3E658B0;
}

void (*sub_1A44437EC(uint64_t *a1))(void *a1)
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
  *(v3 + 32) = (*((*MEMORY[0x1E69E7D40] & **v1) + 0x6F0))();
  return sub_1A3E658B0;
}

void (*sub_1A4443950(uint64_t *a1))(void *a1)
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
  *(v3 + 32) = (*((*MEMORY[0x1E69E7D40] & **v1) + 0x720))();
  return sub_1A3E658B0;
}

void (*sub_1A4443AB4(uint64_t *a1))(void *a1)
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
  *(v3 + 32) = (*((*MEMORY[0x1E69E7D40] & **v1) + 0x690))();
  return sub_1A3E658B0;
}

void (*sub_1A4443C1C(uint64_t *a1))(void *a1)
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
  *(v3 + 32) = (*((*MEMORY[0x1E69E7D40] & **v1) + 0x750))();
  return sub_1A3E62A10;
}

void (*sub_1A4443D80(uint64_t *a1))(void *a1)
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
  *(v3 + 32) = (*((*MEMORY[0x1E69E7D40] & **v1) + 0x780))();
  return sub_1A3E658B0;
}

void (*sub_1A4443EE4(uint64_t *a1))(void *a1)
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
  *(v3 + 32) = (*((*MEMORY[0x1E69E7D40] & **v1) + 0x7B0))();
  return sub_1A3E658B0;
}

void (*sub_1A4444048(uint64_t *a1))(void *a1)
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
  *(v3 + 32) = (*((*MEMORY[0x1E69E7D40] & **v1) + 0x7E0))();
  return sub_1A3E658B0;
}

void (*sub_1A44441D8(uint64_t *a1))(void *a1)
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
  *(v3 + 32) = (*((*MEMORY[0x1E69E7D40] & **v1) + 0x810))();
  return sub_1A3E658B0;
}

void (*sub_1A4444340(uint64_t *a1))(void *a1)
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
  *(v3 + 32) = (*((*MEMORY[0x1E69E7D40] & **v1) + 0x5E8))();
  return sub_1A3E658B0;
}

void (*sub_1A44444A8(uint64_t *a1))(void *a1)
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
  *(v3 + 32) = (*((*MEMORY[0x1E69E7D40] & **v1) + 0x618))();
  return sub_1A3E658B0;
}

void (*sub_1A444460C(uint64_t *a1))(void *a1)
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
  *(v3 + 32) = (*((*MEMORY[0x1E69E7D40] & **v1) + 0x648))();
  return sub_1A3E658B0;
}

void (*sub_1A4444774(uint64_t *a1))(void *a1)
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
  *(v3 + 32) = (*((*MEMORY[0x1E69E7D40] & **v1) + 0x660))();
  return sub_1A3E658B0;
}

uint64_t sub_1A4444908@<X0>(uint64_t *a1@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **v1) + 0x480))();
  *a1 = result;
  a1[1] = v4;
  return result;
}

void *sub_1A444496C(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x1E69E7CC0];
  }

  sub_1A3C398E8(0, &qword_1EB126180, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = (2 * (v9 >> 3)) | 1;
  return result;
}

uint64_t sub_1A4444A10(uint64_t result, uint64_t a2, unint64_t a3, __n128 a4)
{
  v5 = result;
  v6 = a3 >> 62;
  if (a3 >> 62)
  {
    v13 = a2;
    result = sub_1A524E2B4();
    a2 = v13;
    v7 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v7 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      return a3;
    }
  }

  if (v5)
  {
    if (v6)
    {
      v8 = a2;
      result = sub_1A524E2B4();
      if (result <= v8)
      {
        if (v7 >= 1)
        {
          sub_1A4444DB8(0, &qword_1EB120C10, &qword_1EB126660, 0x1E6978630, MEMORY[0x1E69E62F8]);
          sub_1A444751C();
          for (i = 0; i != v7; ++i)
          {
            v10 = sub_1A3D5C268(v14, i, a3);
            v12 = *v11;
            (v10)(v14, 0);
            *(v5 + 8 * i) = v12;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_1A3C52C70(0, &qword_1EB126660, 0x1E6978630);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1A4444CFC()
{
  v1 = MEMORY[0x1E69E7D40];
  KeyPath = swift_getKeyPath();
  (*((*v1 & *v0) + 0x868))(KeyPath);

  return *(v0 + qword_1EB13A9E8);
}

void sub_1A4444DB8(uint64_t a1, unint64_t *a2, unint64_t *a3, void *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_1A3C52C70(255, a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

unint64_t sub_1A4444E20()
{
  result = qword_1EB13A988;
  if (!qword_1EB13A988)
  {
    sub_1A4444DB8(255, &unk_1EB120A60, &qword_1EB120A70, 0x1E6978760, MEMORY[0x1E69E6720]);
    sub_1A3EBA020(&qword_1EB13A990, &qword_1EB120A70, 0x1E6978760);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13A988);
  }

  return result;
}

double sub_1A4444F44()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = (v1 + qword_1EB13AA08);

  swift_beginAccess();
  *v4 = v2;
  v4[1] = v3;

  return result;
}

unint64_t sub_1A4444FB4()
{
  result = qword_1EB126F90;
  if (!qword_1EB126F90)
  {
    sub_1A3C398E8(255, &qword_1EB126FA0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB126F90);
  }

  return result;
}

void sub_1A4445118()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = *(v0 + 16) + qword_1EB13AA30;
  swift_beginAccess();
  *v4 = v1;
  *(v4 + 8) = v2;
  *(v4 + 16) = v3;
}

uint64_t sub_1A4445254(uint64_t (*a1)(uint64_t, uint64_t, double))
{
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  v5 = sub_1A3C66EE8(v3, v4);
  return a1(v3, v4, v5);
}

unint64_t sub_1A44453F4(uint64_t a1)
{
  v2 = sub_1A523FBB4();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = v19 - v7;
  v9 = [objc_opt_self() fetchCollectionsInCollectionList:a1 options:0];
  if ([v9 count] < 1)
  {
    goto LABEL_11;
  }

  result = [v9 count];
  if ((result & 0x8000000000000000) == 0)
  {
    v11 = result;
    if (result)
    {
      v12 = 0;
      v19[2] = v3 + 8;
      v20 = (v3 + 16);
      v19[1] = v3 + 32;
      v13 = MEMORY[0x1E69E7CC0];
      v14 = v9;
      v21 = v11;
      v22 = v9;
      do
      {
        v15 = [v14 objectAtIndex_];
        v16 = [v15 localIdentifier];
        sub_1A524C674();

        sub_1A523FB54();
        (*v20)(v5, v8, v2);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v13 = sub_1A3D5BB08(0, v13[2] + 1, 1, v13);
        }

        v18 = v13[2];
        v17 = v13[3];
        if (v18 >= v17 >> 1)
        {
          v13 = sub_1A3D5BB08((v17 > 1), v18 + 1, 1, v13);
        }

        ++v12;

        (*(v3 + 8))(v8, v2);
        v13[2] = v18 + 1;
        (*(v3 + 32))(v13 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v18, v5, v2);
        v14 = v22;
      }

      while (v21 != v12);

      return v13;
    }

LABEL_11:

    return MEMORY[0x1E69E7CC0];
  }

  __break(1u);
  return result;
}

void sub_1A44456B8()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = (*((*MEMORY[0x1E69E7D40] & *Strong) + 0x588))(v4);
    *v3 = !*v3;
    v2(v4, 0);
  }
}

void sub_1A4445774(char a1, void *a2)
{
  v5 = *(v2 + 24);
  v6 = [*(v2 + 16) createdCollectionList];
  v7 = v6;
  if (a1)
  {
    if (v6)
    {
      v8 = v6;
      v9 = sub_1A524D224();
      v10 = *sub_1A3CAA3FC();
      if (os_log_type_enabled(v10, v9))
      {
        v10;
        v11 = swift_slowAlloc();
        v25 = swift_slowAlloc();
        *v11 = 136446210;
        v12 = [v8 localIdentifier];
        v13 = sub_1A524C674();
        v15 = v14;

        sub_1A3C2EF94(v13, v15, &v25);
      }
    }

    else
    {
      v23 = sub_1A524D244();
      v24 = *sub_1A3CAA3FC();
      sub_1A5246DF4(v23, &dword_1A3C1C000, v24, "Created collection list should not be nil since the action has been executed successfully", 89, 2, MEMORY[0x1E69E7CC0]);
    }
  }

  else
  {
    v16 = sub_1A524D244();
    v17 = *sub_1A3CAA3FC();
    if (os_log_type_enabled(v17, v16))
    {
      v18 = v17;
      v19 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      *v19 = 136315138;
      v20 = a2;
      sub_1A3C68BEC(0, &qword_1EB139220, sub_1A3DBD9A0, MEMORY[0x1E69E6720]);
      v21 = sub_1A524C714();
      sub_1A3C2EF94(v21, v22, &v25);
    }
  }

  v5(a1 & 1, v7);
}

uint64_t sub_1A4445AAC(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1A4445B04(uint64_t a1)
{
  result = sub_1A5241614();
  if (v2 <= 0x3F)
  {
    return swift_initClassMetadata2();
  }

  return result;
}

unint64_t sub_1A444751C()
{
  result = qword_1EB13F410;
  if (!qword_1EB13F410)
  {
    sub_1A4444DB8(255, &qword_1EB120C10, &qword_1EB126660, 0x1E6978630, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13F410);
  }

  return result;
}

void sub_1A44475A0()
{
  *(*(v0 + 16) + qword_1EB13A9E8) = *(v0 + 24);
}

void sub_1A44475E4(uint64_t a1, void *a2)
{
  v3 = a1;
  v4 = v2[3];
  v5 = v2[4];
  if ((a1 & 1) == 0)
  {
    v11 = sub_1A524D244();
    v12 = *sub_1A3CAA3FC();
    if (os_log_type_enabled(v12, v11))
    {
      log = v12;
      v13 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      *v13 = 136315394;
      v14 = [v4 localIdentifier];
      v15 = sub_1A524C674();
      v17 = v16;

      sub_1A3C2EF94(v15, v17, &v27);
    }

    goto LABEL_10;
  }

  v6 = *(v2[2] + qword_1EB13A980);
  v7 = [v4 localIdentifier];
  if (!v7)
  {
    sub_1A524C674();
    v7 = sub_1A524C634();
  }

  v8 = [v6 px:v7 collectionListWithLocalIdentifier:?];

  if (!v8)
  {
    v18 = sub_1A524D244();
    v19 = *sub_1A3CAA3FC();
    if (os_log_type_enabled(v19, v18))
    {
      v20 = v19;
      v21 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      *v21 = 136446210;
      v22 = [v4 localIdentifier];
      v23 = sub_1A524C674();
      v25 = v24;

      sub_1A3C2EF94(v23, v25, &v27);
    }

LABEL_10:
    v9 = v4;
    v10 = 0;
    goto LABEL_11;
  }

  v9 = v8;
  v10 = v9;
LABEL_11:
  v5(v3 & 1, v9);
}

uint64_t sub_1A444793C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

id PXGridTipsHelper.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id static PXGridTipsHelper.shared.getter()
{
  if (qword_1EB18B130 != -1)
  {
    swift_once();
  }

  v1 = qword_1EB18B138;

  return v1;
}

uint64_t sub_1A4447B34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  sub_1A3CB8D98(0);
  v4[3] = v5;
  v4[4] = *(v5 - 8);
  v4[5] = swift_task_alloc();
  sub_1A524CC54();
  v4[6] = sub_1A524CC44();
  v7 = sub_1A524CBC4();
  v4[7] = v7;
  v4[8] = v6;

  return MEMORY[0x1EEE6DFA0](sub_1A4447C28, v7, v6);
}

uint64_t sub_1A4447C28()
{
  __swift_project_boxed_opaque_existential_1(*(v0 + 16), *(*(v0 + 16) + 24));
  v1 = sub_1A5247414();
  v3 = v2;
  v4 = sub_1A3CB40B4();
  v5 = *v4 == v1 && v4[1] == v3;
  if (v5 || (sub_1A524EAB4() & 1) != 0)
  {
    v7 = *(v0 + 32);
    v6 = *(v0 + 40);
    v8 = *(v0 + 24);

    v9 = sub_1A3FD5440();
    (*(v7 + 16))(v6, v9, v8);
    v10 = swift_task_alloc();
    *(v0 + 72) = v10;
    *v10 = v0;
    v11 = sub_1A4447F90;
LABEL_7:
    v10[1] = v11;

    return MEMORY[0x1EEDE6BA0]();
  }

  v12 = sub_1A3CB3EC8();
  v13 = *v12 == v1 && v12[1] == v3;
  if (v13 || (sub_1A524EAB4() & 1) != 0)
  {
    v15 = *(v0 + 32);
    v14 = *(v0 + 40);
    v16 = *(v0 + 24);

    v17 = sub_1A3FD55DC();
    (*(v15 + 16))(v14, v17, v16);
    v10 = swift_task_alloc();
    *(v0 + 80) = v10;
    *v10 = v0;
    v11 = sub_1A40A7470;
    goto LABEL_7;
  }

  v18 = sub_1A3C92168();
  v19 = *v18 == v1 && v18[1] == v3;
  if (v19 || (sub_1A524EAB4() & 1) != 0)
  {
    v21 = *(v0 + 32);
    v20 = *(v0 + 40);
    v22 = *(v0 + 24);

    v23 = sub_1A3FD5C08();
    (*(v21 + 16))(v20, v23, v22);
    v10 = swift_task_alloc();
    *(v0 + 88) = v10;
    *v10 = v0;
    v11 = sub_1A40A75F4;
    goto LABEL_7;
  }

  v24 = sub_1A3C92768();
  if (*v24 == v1 && v24[1] == v3)
  {

LABEL_26:
    v27 = *(v0 + 32);
    v26 = *(v0 + 40);
    v28 = *(v0 + 24);
    v29 = sub_1A3FD5DCC();
    (*(v27 + 16))(v26, v29, v28);
    v10 = swift_task_alloc();
    *(v0 + 96) = v10;
    *v10 = v0;
    v11 = sub_1A40A7778;
    goto LABEL_7;
  }

  v25 = sub_1A524EAB4();

  if (v25)
  {
    goto LABEL_26;
  }

  v30 = *(v0 + 8);

  return v30();
}

uint64_t sub_1A4447F90()
{
  v1 = *v0;
  v2 = *(*v0 + 40);
  v3 = *(*v0 + 32);
  v4 = *(*v0 + 24);

  (*(v3 + 8))(v2, v4);
  v5 = *(v1 + 64);
  v6 = *(v1 + 56);

  return MEMORY[0x1EEE6DFA0](sub_1A40A7A80, v6, v5);
}

id PXGridTipsHelper.init()()
{
  PXDisplayCollectionDetailedCountsMake();
  PXDisplayCollectionDetailedCountsMake();
  PXDisplayCollectionDetailedCountsMake();
  PXDisplayCollectionDetailedCountsMake();
  v0[OBJC_IVAR___PXGridTipsHelper_Swift_hasStartedTips] = 0;
  v4.receiver = v0;
  v4.super_class = type metadata accessor for PXGridTipsHelper(v1, v2);
  return objc_msgSendSuper2(&v4, sel_init);
}

id PXGridTipsHelper.__deallocating_deinit(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for PXGridTipsHelper(a1, a2);
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

void _s12PhotosUICore16PXGridTipsHelperC21setTipActionPerformedyySSFZ_0(uint64_t a1, uint64_t a2)
{
  sub_1A3C56408(0, &qword_1EB12B270, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v20 - v5;
  v7 = sub_1A5247634();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1A45C1604();
  swift_beginAccess();
  if (*v11 == 1)
  {
    v12 = sub_1A45C1034();
    swift_beginAccess();
    v13 = *v12;
    if (v13 && *(v13 + 16) && (v14 = sub_1A3C5DCA4(a1, a2), (v15 & 1) != 0))
    {
      sub_1A3C341C8(*(v13 + 56) + 40 * v14, &v21);
      if (*(&v22 + 1))
      {
        sub_1A3C34460(&v21, v24);
        __swift_project_boxed_opaque_existential_1(v24, v24[3]);
        (*(v8 + 104))(v10, *MEMORY[0x1E6982AE0], v7);
        sub_1A5247424();
        (*(v8 + 8))(v10, v7);
        v16 = sub_1A524CCB4();
        (*(*(v16 - 8) + 56))(v6, 1, 1, v16);
        sub_1A3C341C8(v24, &v21);
        sub_1A524CC54();
        v17 = sub_1A524CC44();
        v18 = swift_allocObject();
        v19 = MEMORY[0x1E69E85E0];
        *(v18 + 16) = v17;
        *(v18 + 24) = v19;
        sub_1A3C34460(&v21, v18 + 32);
        sub_1A3D4D930(0, 0, v6, &unk_1A533CD50, v18);

        __swift_destroy_boxed_opaque_existential_0(v24);
        return;
      }
    }

    else
    {
      v23 = 0;
      v21 = 0u;
      v22 = 0u;
    }

    sub_1A3CB4DE8(&v21, &qword_1EB128BC8, sub_1A3CB4F50);
  }
}

uint64_t sub_1A4448504()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1A3CA8098;

  return sub_1A4447B34(v2, v3, v4, v0 + 32);
}

uint64_t sub_1A4448594()
{
  sub_1A3E75D84(0);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v11 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1A524A274();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 104))(v7, *MEMORY[0x1E6980EF8], v3, v5);
  v8 = sub_1A524A154();
  (*(*(v8 - 8) + 56))(v2, 1, 1, v8);
  sub_1A524A184();
  v9 = sub_1A524A1C4();
  sub_1A441183C(v2);
  (*(v4 + 8))(v7, v3);
  return v9;
}

void sub_1A44487A0(void *a1, void *a2)
{
  v3 = v2;
  v3[4] = 0;
  v3[5] = 0;
  v3[8] = 0;
  v3[9] = 0;
  v3[7] = 0;
  v3[2] = a1;
  v3[3] = a2;
  v6 = objc_allocWithZone(PXPhotosGridPeopleBannerProvider);
  v7 = a1;
  v8 = a2;
  v9 = [v6 initWithPerson_];
  v3[6] = v9;
  [v9 setInvalidationDelegate_];
  swift_allocObject();
  swift_weakInit();

  sub_1A524D1A4();
}

double sub_1A44488A4(uint64_t a1, char a2)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    if (a2)
    {
      v5 = Strong;
      v6 = [*(Strong + 24) currentDataSource];
      v7 = [v6 container];

      if (v7)
      {
        objc_opt_self();
        v8 = swift_dynamicCastObjCClass();
        if (v8)
        {
          v9 = v8;
          v10 = *(v5 + 48);
          [v10 setPerson_];

          swift_unknownObjectRelease();
          return result;
        }

        swift_unknownObjectRelease();
      }
    }
  }

  return result;
}

uint64_t sub_1A444899C()
{
  v1[2] = v0;
  v1[3] = sub_1A524CC54();
  v1[4] = sub_1A524CC44();
  v1[5] = sub_1A524CC44();
  v2 = swift_task_alloc();
  v1[6] = v2;
  *v2 = v1;
  v2[1] = sub_1A4448A54;

  return sub_1A4448DE0();
}

uint64_t sub_1A4448A54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v4;
  v5[7] = a1;
  v5[8] = a2;
  v5[9] = a3;
  v5[10] = v3;

  v7 = sub_1A524CBC4();
  if (v3)
  {
    v8 = sub_1A4448CF4;
  }

  else
  {
    v8 = sub_1A4448BB8;
  }

  return MEMORY[0x1EEE6DFA0](v8, v7, v6);
}

uint64_t sub_1A4448BB8()
{
  v1 = v0[10];

  sub_1A524CDD4();
  if (v1)
  {
    sub_1A3C6EC48(v0[7], v0[8], v0[9]);
    v0[11] = v1;
    v2 = sub_1A524CBC4();
    v4 = v3;
    v5 = sub_1A4448D7C;
  }

  else
  {
    v7 = v0[8];
    v6 = v0[9];
    v8 = v0[7];
    v9 = v0[2];
    v10 = v9[7];
    v11 = v9[8];
    v12 = v9[9];
    v9[7] = v8;
    v9[8] = v7;
    v9[9] = v6;
    sub_1A3C6DD08(v8, v7, v6);
    sub_1A3C6EC48(v10, v11, v12);
    sub_1A444933C();
    sub_1A3C6EC48(v8, v7, v6);
    v2 = sub_1A524CBC4();
    v4 = v13;
    v5 = sub_1A3DDC7D0;
  }

  return MEMORY[0x1EEE6DFA0](v5, v2, v4);
}

uint64_t sub_1A4448CF4()
{

  *(v0 + 88) = *(v0 + 80);
  v2 = sub_1A524CBC4();

  return MEMORY[0x1EEE6DFA0](sub_1A4448D7C, v2, v1);
}

uint64_t sub_1A4448D7C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A4448DE0()
{
  v1[19] = v0;
  sub_1A524CC54();
  v1[20] = sub_1A524CC44();
  v3 = sub_1A524CBC4();
  v1[21] = v3;
  v1[22] = v2;

  return MEMORY[0x1EEE6DFA0](sub_1A4448E78, v3, v2);
}

uint64_t sub_1A4448E78()
{
  v1 = *(v0[19] + 48);
  v0[23] = v1;
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_1A4448F90;
  v2 = swift_continuation_init();
  sub_1A4449F4C(0);
  v0[17] = v3;
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = sub_1A43001A8;
  v0[13] = &block_descriptor_188;
  v0[14] = v2;
  [v1 loadBannerView_];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1A4448F90()
{
  v1 = *(*v0 + 176);
  v2 = *(*v0 + 168);

  return MEMORY[0x1EEE6DFA0](sub_1A4449098, v2, v1);
}

uint64_t sub_1A4449098()
{

  v1 = *(v0 + 144);
  if (!v1)
  {

LABEL_5:
    v6 = 0;
    v7 = 0;
    v5 = 0;
    goto LABEL_8;
  }

  objc_opt_self();
  v2 = swift_dynamicCastObjCClass();
  if (v2)
  {
    v3 = v2;
    v4 = *(v0 + 184);
    v5 = swift_allocObject();
    v6 = 0;
    *(v5 + 16) = v4;
    *(v5 + 24) = v3;
    v7 = sub_1A444A0A4;
    goto LABEL_8;
  }

  objc_opt_self();
  v8 = swift_dynamicCastObjCClass();
  if (!v8)
  {
    if (qword_1EB1C16E0 != -1)
    {
      swift_once();
    }

    v13 = sub_1A5246F24();
    __swift_project_value_buffer(v13, qword_1EB1C16E8);
    v14 = v1;
    v15 = sub_1A5246F04();
    v16 = sub_1A524D244();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      *v17 = 138412290;
      *(v17 + 4) = v14;
      *v18 = v1;
      v19 = v14;
      _os_log_impl(&dword_1A3C1C000, v15, v16, "unexpected banner view %@", v17, 0xCu);
      sub_1A3CB65E4(v18);
      MEMORY[0x1A590EEC0](v18, -1, -1);
      MEMORY[0x1A590EEC0](v17, -1, -1);
    }

    v20 = *(v0 + 184);

    goto LABEL_5;
  }

  v9 = v8;
  v10 = *(v0 + 184);
  v5 = swift_allocObject();
  *(v5 + 16) = v10;
  *(v5 + 24) = v9;
  v7 = sub_1A444A050;
  v6 = 1;
LABEL_8:
  v11 = *(v0 + 8);

  return v11(v6, v7, v5);
}

uint64_t sub_1A4449300()
{
  if (*v0)
  {
    return 0x6E6F69746361;
  }

  else
  {
    return 0x6974736567677573;
  }
}

void sub_1A444933C()
{
  v1 = *(v0 + 64);
  if (v1)
  {
    v2 = *(v0 + 56);
    v3 = type metadata accessor for PhotosViewPersonBannerModel(0);

    v5 = v1(v4);
    v7 = v6;
    v9 = v8;
    v10 = swift_allocObject();
    swift_weakInit();
    v11 = swift_allocObject();
    *(v11 + 16) = v10;
    *(v11 + 24) = v2 & 1;
    v17 = sub_1A4368F04(v5, v7, v9, sub_1A4449CFC, v11);
    v12 = sub_1A3F97880();
    v14 = v13;
    v16[3] = &type metadata for PhotosViewPersonBannerProvider;
    v16[4] = sub_1A4449EF8();
    v16[0] = v12;
    v16[1] = v14;
    v15 = sub_1A44499E8();
    PXPhotosViewModel.setBanner<A>(model:provider:)(&v17, v16, v3, v15);
  }

  PXPhotosViewModel.removeBanner()();
}

uint64_t sub_1A44494A4()
{
  v0[2] = sub_1A524CC54();
  v0[3] = sub_1A524CC44();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_1A4449550;

  return sub_1A444899C();
}

uint64_t sub_1A4449550()
{
  *(*v1 + 40) = v0;

  v3 = sub_1A524CBC4();
  if (v0)
  {
    v4 = sub_1A44496AC;
  }

  else
  {
    v4 = sub_1A3E539B8;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, v2);
}

uint64_t sub_1A44496AC()
{

  if (qword_1EB1C16E0 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 40);
  v2 = sub_1A5246F24();
  __swift_project_value_buffer(v2, qword_1EB1C16E8);
  v3 = v1;
  v4 = sub_1A5246F04();
  v5 = sub_1A524D244();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 40);
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = v7;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_1A3C1C000, v4, v5, "Failed to load next banner %@", v8, 0xCu);
    sub_1A3CB65E4(v9);
    MEMORY[0x1A590EEC0](v9, -1, -1);
    MEMORY[0x1A590EEC0](v8, -1, -1);
  }

  else
  {
  }

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_1A4449988()
{
  swift_unknownObjectRelease();

  sub_1A3C6EC48(*(v0 + 56), *(v0 + 64), *(v0 + 72));

  return swift_deallocClassInstance();
}

unint64_t sub_1A44499E8()
{
  result = qword_1EB12F588;
  if (!qword_1EB12F588)
  {
    type metadata accessor for PhotosViewPersonBannerModel(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12F588);
  }

  return result;
}

uint64_t sub_1A4449A48()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1A3D60150;

  return sub_1A444899C();
}

void sub_1A4449B2C(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = *v3;
  if (MEMORY[0x1E69E7D08])
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(0x28uLL);
  }

  *a1 = v7;
  PhotosViewBannerController.isActive.modify(v7, v6, a3);
}

uint64_t sub_1A4449C0C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1A3D60150;

  return sub_1A44494A4();
}

uint64_t sub_1A4449CA0()
{
  v0 = sub_1A5246F24();
  __swift_allocate_value_buffer(v0, qword_1EB1C16E8);
  __swift_project_value_buffer(v0, qword_1EB1C16E8);
  v1 = *sub_1A4843F98();
  return sub_1A5246F34();
}

double sub_1A4449CFC(char *a1)
{
  v2 = *(v1 + 24);
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    if (qword_1EB1C16E0 != -1)
    {
      swift_once();
    }

    v4 = sub_1A5246F24();
    __swift_project_value_buffer(v4, qword_1EB1C16E8);
    v5 = sub_1A5246F04();
    v6 = sub_1A524D264();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      *v7 = 136315394;
      if (v2)
      {
        v8 = 0x6E6F69746361;
      }

      else
      {
        v8 = 0x6974736567677573;
      }

      if (v2)
      {
        v9 = 0xE600000000000000;
      }

      else
      {
        v9 = 0xEA00000000006E6FLL;
      }

      sub_1A3C2EF94(v8, v9, &v10);
    }
  }

  return result;
}

unint64_t sub_1A4449EF8()
{
  result = qword_1EB13AB80;
  if (!qword_1EB13AB80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13AB80);
  }

  return result;
}

void sub_1A4449F4C(uint64_t a1)
{
  if (!qword_1EB13AB88)
  {
    sub_1A3C5676C(255, &qword_1EB13AB90, sub_1A4449FD0);
    v1 = sub_1A524CDF4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB13AB88);
    }
  }
}

unint64_t sub_1A4449FD0()
{
  result = qword_1EB13AB98;
  if (!qword_1EB13AB98)
  {
    sub_1A3C52C70(255, &qword_1EB12B170, 0x1E69DD250);
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EB13AB98);
  }

  return result;
}

uint64_t sub_1A444A050()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  type metadata accessor for LegacyPersonActionBannerModel(0);
  return sub_1A4287ADC(v1, v2);
}

uint64_t sub_1A444A0A4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  type metadata accessor for LegacyPersonSuggestionBannerModel(0);
  v3 = sub_1A3F28848(v1, v2);
  sub_1A524CC54();

  v4 = sub_1A524CC44();
  v5 = swift_allocObject();
  v6 = MEMORY[0x1E69E85E0];
  v5[2] = v4;
  v5[3] = v6;
  v5[4] = v3;
  v7 = sub_1A524CC44();
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  *(v8 + 24) = v6;
  sub_1A524B944();

  return v10;
}

unint64_t sub_1A444A1C8()
{
  result = qword_1EB1C1800[0];
  if (!qword_1EB1C1800[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB1C1800);
  }

  return result;
}

unint64_t sub_1A444A220()
{
  result = qword_1EB13AC08;
  if (!qword_1EB13AC08)
  {
    sub_1A3C4EE68(255, &unk_1EB13AC10, &type metadata for PhotosViewPersonBannerController.PersonSubBanner.Kind, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13AC08);
  }

  return result;
}

unint64_t sub_1A444A2E0()
{
  result = qword_1EB190F30[0];
  if (!qword_1EB190F30[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB190F30);
  }

  return result;
}

void PhotosEnvironmentValues.photosCurationContext.modify(void *a1)
{
  a1[2] = v1;
  a1[3] = sub_1A444A2E0();
  sub_1A5245BB4();
}

id sub_1A444A4E8(unint64_t a1)
{
  ObjectType = swift_getObjectType();
  *&v1[OBJC_IVAR___PXComposablePhotosAction_actionsCompleted] = 0;
  v4 = &v1[OBJC_IVAR___PXComposablePhotosAction_completionHandler];
  *v4 = 0;
  v4[1] = 0;
  v1[OBJC_IVAR___PXComposablePhotosAction_success] = 2;
  *&v1[OBJC_IVAR___PXComposablePhotosAction_error] = 0;
  if (!(a1 >> 62))
  {
    result = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_3;
    }

LABEL_11:
    LODWORD(v12) = 0;
    v11 = 23;
    sub_1A524E6E4();
    __break(1u);
    goto LABEL_12;
  }

  result = sub_1A524E2B4();
  if (!result)
  {
    goto LABEL_11;
  }

LABEL_3:
  if ((a1 & 0xC000000000000001) != 0)
  {
LABEL_12:
    v6 = MEMORY[0x1A59097F0](0, a1);
    goto LABEL_6;
  }

  if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
    return result;
  }

  v6 = *(a1 + 32);
LABEL_6:
  v7 = v6;
  *&v1[OBJC_IVAR___PXComposablePhotosAction_subActions] = a1;
  if (a1 >> 62)
  {
    v8 = sub_1A524E2B4();
  }

  else
  {
    v8 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  *&v1[OBJC_IVAR___PXComposablePhotosAction_subActionCount] = v8;
  v9 = [v7 photoLibrary];
  v13.receiver = v1;
  v13.super_class = ObjectType;
  v10 = objc_msgSendSuper2(&v13, sel_initWithPhotoLibrary_, v9);

  return v10;
}

uint64_t sub_1A444A6D0()
{
  v0 = sub_1A524D464();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1A524D414();
  MEMORY[0x1EEE9AC00](v4);
  v5 = sub_1A524BF64();
  MEMORY[0x1EEE9AC00](v5 - 8);
  sub_1A3C52C70(0, &qword_1EB12B180, 0x1E69E9610);
  sub_1A524BF14();
  v7[1] = MEMORY[0x1E69E7CC0];
  sub_1A444B674(&qword_1EB126AD0, MEMORY[0x1E69E8030], MEMORY[0x1E69E8040]);
  sub_1A421EB84(0);
  sub_1A444B674(&qword_1EB126E30, sub_1A421EB84, MEMORY[0x1E69E6328]);
  sub_1A524E224();
  (*(v1 + 104))(v3, *MEMORY[0x1E69E8090], v0);
  result = sub_1A524D4B4();
  qword_1EB1C1A18 = result;
  return result;
}

void sub_1A444A93C(char a1, void *a2)
{
  v5 = sub_1A524BFF4();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = (&v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_1EB1C1A10 != -1)
  {
    swift_once();
  }

  v9 = qword_1EB1C1A18;
  *v8 = qword_1EB1C1A18;
  (*(v6 + 104))(v8, *MEMORY[0x1E69E8020], v5);
  v10 = v9;
  LOBYTE(v9) = sub_1A524C024();
  (*(v6 + 8))(v8, v5);
  if (v9)
  {
    v11 = *(v2 + OBJC_IVAR___PXComposablePhotosAction_success);
    v12 = v11 == 2;
    v13 = v11 & a1;
    if (v12)
    {
      v13 = a1;
    }

    *(v2 + OBJC_IVAR___PXComposablePhotosAction_success) = v13 & 1;
    if (a2)
    {
      v14 = *(v2 + OBJC_IVAR___PXComposablePhotosAction_error);
      *(v2 + OBJC_IVAR___PXComposablePhotosAction_error) = a2;
      v15 = a2;
    }

    v16 = *(v2 + OBJC_IVAR___PXComposablePhotosAction_actionsCompleted);
    v17 = __OFADD__(v16, 1);
    v18 = v16 + 1;
    if (!v17)
    {
      *(v2 + OBJC_IVAR___PXComposablePhotosAction_actionsCompleted) = v18;
      sub_1A444B264();
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_1A444AAEC(char a1, void *a2)
{
  v5 = *(v2 + 24);
  v6 = *(v2 + 32);
  if (qword_1EB1C1A10 != -1)
  {
    swift_once();
  }

  v7 = qword_1EB1C1A18;
  v8 = swift_allocObject();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakInit();

  v10 = swift_allocObject();
  *(v10 + 16) = v8;
  *(v10 + 24) = v5;
  *(v10 + 32) = v6;
  *(v10 + 40) = a1 & 1;
  *(v10 + 48) = a2;
  v11 = swift_allocObject();
  *(v11 + 16) = sub_1A444B7A0;
  *(v11 + 24) = v10;
  aBlock[4] = sub_1A3DDBE10;
  aBlock[5] = v11;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1A3C71444;
  aBlock[3] = &block_descriptor_38;
  v12 = _Block_copy(aBlock);

  v13 = a2;

  dispatch_sync(v7, v12);
  _Block_release(v12);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }
}

void sub_1A444ADA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, SEL *a6)
{
  v7 = v6;
  ObjectType = swift_getObjectType();
  v22 = a1;
  v10 = (v7 + OBJC_IVAR___PXComposablePhotosAction_completionHandler);
  v11 = *(v7 + OBJC_IVAR___PXComposablePhotosAction_completionHandler);
  v12 = *(v7 + OBJC_IVAR___PXComposablePhotosAction_completionHandler + 8);
  *v10 = a1;
  v10[1] = a2;
  sub_1A3C784D4(v11, v12);
  v13 = *(v7 + OBJC_IVAR___PXComposablePhotosAction_subActions);
  if (v13 >> 62)
  {
    v14 = sub_1A524E2B4();
    if (v14)
    {
LABEL_3:
      if (v14 < 1)
      {
        __break(1u);
      }

      else
      {

        v15 = 0;
        do
        {
          if ((v13 & 0xC000000000000001) != 0)
          {
            v16 = MEMORY[0x1A59097F0](v15, v13);
          }

          else
          {
            v16 = *(v13 + 8 * v15 + 32);
          }

          v17 = v16;
          ++v15;
          v18 = swift_allocObject();
          swift_unknownObjectWeakInit();
          v19 = swift_allocObject();
          v19[2] = v18;
          v19[3] = v22;
          v19[4] = a2;
          v19[5] = ObjectType;
          aBlock[4] = a4;
          aBlock[5] = v19;
          aBlock[0] = MEMORY[0x1E69E9820];
          aBlock[1] = 1107296256;
          aBlock[2] = sub_1A3D6084C;
          aBlock[3] = a5;
          v20 = _Block_copy(aBlock);

          [v17 *a6];
          _Block_release(v20);
        }

        while (v14 != v15);
      }

      return;
    }
  }

  else
  {
    v14 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v14)
    {
      goto LABEL_3;
    }
  }
}

void sub_1A444AFB0(char a1, void *a2)
{
  v5 = *(v2 + 24);
  v6 = *(v2 + 32);
  if (qword_1EB1C1A10 != -1)
  {
    swift_once();
  }

  v7 = qword_1EB1C1A18;
  v8 = swift_allocObject();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakInit();

  v10 = swift_allocObject();
  *(v10 + 16) = v8;
  *(v10 + 24) = v5;
  *(v10 + 32) = v6;
  *(v10 + 40) = a1 & 1;
  *(v10 + 48) = a2;
  v11 = swift_allocObject();
  *(v11 + 16) = sub_1A444B670;
  *(v11 + 24) = v10;
  aBlock[4] = sub_1A3C7146C;
  aBlock[5] = v11;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1A3C71444;
  aBlock[3] = &block_descriptor_27_4;
  v12 = _Block_copy(aBlock);

  v13 = a2;

  dispatch_sync(v7, v12);
  _Block_release(v12);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }
}

void sub_1A444B264()
{
  v1 = sub_1A524BFF4();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = (&v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_1EB1C1A10 != -1)
  {
    swift_once();
  }

  v5 = qword_1EB1C1A18;
  *v4 = qword_1EB1C1A18;
  (*(v2 + 104))(v4, *MEMORY[0x1E69E8020], v1);
  v6 = v5;
  LOBYTE(v5) = sub_1A524C024();
  (*(v2 + 8))(v4, v1);
  if (v5)
  {
    if (*(v0 + OBJC_IVAR___PXComposablePhotosAction_subActionCount) == *(v0 + OBJC_IVAR___PXComposablePhotosAction_actionsCompleted))
    {
      v7 = *(v0 + OBJC_IVAR___PXComposablePhotosAction_completionHandler);
      if (v7)
      {
        v8 = *(v0 + OBJC_IVAR___PXComposablePhotosAction_completionHandler + 8);
        v9 = *(v0 + OBJC_IVAR___PXComposablePhotosAction_error);
        v10 = *(v0 + OBJC_IVAR___PXComposablePhotosAction_success);
        sub_1A3D607F0(*(v0 + OBJC_IVAR___PXComposablePhotosAction_completionHandler), v8);
        v11 = v9;
        v7(v10 & 1, v9);
        sub_1A3C784D4(v7, v8);
      }

      sub_1A444B438();
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_1A444B438()
{
  v1 = sub_1A524BFF4();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = (&v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_1EB1C1A10 != -1)
  {
    swift_once();
  }

  v5 = qword_1EB1C1A18;
  *v4 = qword_1EB1C1A18;
  (*(v2 + 104))(v4, *MEMORY[0x1E69E8020], v1);
  v6 = v5;
  LOBYTE(v5) = sub_1A524C024();
  (*(v2 + 8))(v4, v1);
  if (v5)
  {
    *(v0 + OBJC_IVAR___PXComposablePhotosAction_actionsCompleted) = 0;
    v7 = (v0 + OBJC_IVAR___PXComposablePhotosAction_completionHandler);
    v8 = *(v0 + OBJC_IVAR___PXComposablePhotosAction_completionHandler);
    v9 = *(v0 + OBJC_IVAR___PXComposablePhotosAction_completionHandler + 8);
    *v7 = 0;
    v7[1] = 0;
    sub_1A3C784D4(v8, v9);
    *(v0 + OBJC_IVAR___PXComposablePhotosAction_success) = 2;
    v10 = *(v0 + OBJC_IVAR___PXComposablePhotosAction_error);
    *(v0 + OBJC_IVAR___PXComposablePhotosAction_error) = 0;
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1A444B674(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t objectdestroy_20Tm()
{

  return swift_deallocObject();
}

void sub_1A444B704()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 40);
  v3 = *(v0 + 48);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    sub_1A444A93C(v2, v3);
  }

  else
  {
    v1(0, 0);
  }
}

void sub_1A444B7B0(void *a1@<X0>, void *a2@<X8>)
{
  *a2 = 0xD00000000000001ALL;
  a2[1] = 0x80000001A53D7CB0;
  v3 = a1;
  sub_1A3C5A374();
  v4 = type metadata accessor for LemonadeSharedLibrarySuggestionsFeature(0);
  sub_1A460D6DC(v3, a2 + *(v4 + 20));
  v5 = [objc_opt_self() sharedLibraryStatusProviderWithPhotoLibrary_];

  *(a2 + *(v4 + 24)) = v5;
}

id sub_1A444B868(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 24));
  result = [v2 hasSharedLibrary];
  if (result)
  {
    result = PXPreferencesIsSharedLibrarySuggestionsEnabled();
    if (result)
    {
      return (PXPreferencesGetLibraryFilterViewModeWithSharedLibraryOrPreview([v2 hasSharedLibraryOrPreview]) != 2);
    }
  }

  return result;
}

uint64_t sub_1A444B8C4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LemonadeSharedLibrarySuggestionsShelfProvider(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A444B970(uint64_t a1)
{
  result = sub_1A444B9C8(&qword_1EB1294D8, type metadata accessor for LemonadeSharedLibrarySuggestionsFeature, &unk_1A533D00C);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1A444B9C8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1A444BA38@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v5 = v1;
  sub_1A444C300(&qword_1EB13AC58, type metadata accessor for LemonadeCloudQuotaNotificationModel, &unk_1A533D180);
  sub_1A52415D4();

  v3 = OBJC_IVAR____TtC12PhotosUICore35LemonadeCloudQuotaNotificationModel__item;
  swift_beginAccess();
  return sub_1A42D8EA8(v5 + v3, a1);
}

uint64_t sub_1A444BB00@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1A444C300(&qword_1EB13AC58, type metadata accessor for LemonadeCloudQuotaNotificationModel, &unk_1A533D180);
  sub_1A52415D4();

  v4 = OBJC_IVAR____TtC12PhotosUICore35LemonadeCloudQuotaNotificationModel__item;
  swift_beginAccess();
  return sub_1A42D8EA8(v3 + v4, a2);
}

uint64_t sub_1A444BBC8(uint64_t a1, uint64_t *a2)
{
  v4 = type metadata accessor for CloudQuotaNotificationItem(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v9[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1A42D8EA8(a1, v6);
  v7 = *a2;
  swift_getKeyPath();
  v10 = v7;
  v11 = v6;
  v12 = v7;
  sub_1A444C300(&qword_1EB13AC58, type metadata accessor for LemonadeCloudQuotaNotificationModel, &unk_1A533D180);
  sub_1A52415C4();

  return sub_1A3DB7E34(v6);
}

uint64_t type metadata accessor for LemonadeCloudQuotaNotificationModel(uint64_t a1)
{
  result = qword_1EB160800;
  if (!qword_1EB160800)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1A444BD3C(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC12PhotosUICore35LemonadeCloudQuotaNotificationModel__item;
  swift_beginAccess();
  sub_1A444C550(a2, a1 + v4);
  return swift_endAccess();
}

uint64_t (*sub_1A444BDCC(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  swift_getKeyPath();
  v4[4] = OBJC_IVAR____TtC12PhotosUICore35LemonadeCloudQuotaNotificationModel___observationRegistrar;
  *v4 = v1;
  v4[5] = sub_1A444C300(&qword_1EB13AC58, type metadata accessor for LemonadeCloudQuotaNotificationModel, &unk_1A533D180);
  sub_1A52415D4();

  *v4 = v1;
  swift_getKeyPath();
  sub_1A52415F4();

  swift_beginAccess();
  return sub_1A444BF14;
}

void sub_1A444BF14(void *a1)
{
  v1 = *a1;
  swift_endAccess();
  *v1 = v1[3];
  swift_getKeyPath();
  sub_1A52415E4();

  free(v1);
}

uint64_t sub_1A444BF98(uint64_t a1)
{
  v2 = swift_allocObject();
  sub_1A5241604();
  sub_1A42D8F0C(a1, v2 + OBJC_IVAR____TtC12PhotosUICore35LemonadeCloudQuotaNotificationModel__item);
  return v2;
}

uint64_t sub_1A444BFF4()
{
  sub_1A3DB7E34(v0 + OBJC_IVAR____TtC12PhotosUICore35LemonadeCloudQuotaNotificationModel__item);
  v1 = OBJC_IVAR____TtC12PhotosUICore35LemonadeCloudQuotaNotificationModel___observationRegistrar;
  v2 = sub_1A5241614();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_1A444C178(uint64_t a1)
{
  swift_getKeyPath();
  sub_1A444C300(&qword_1EB13AC58, type metadata accessor for LemonadeCloudQuotaNotificationModel, &unk_1A533D180);
  sub_1A52415C4();

  return sub_1A3DB7E34(a1);
}

void (*sub_1A444C248(uint64_t **a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = sub_1A444BDCC(v2);
  return sub_1A3D3D728;
}

uint64_t sub_1A444C300(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1A444C34C@<X0>(unint64_t *a1@<X8>)
{
  v3 = type metadata accessor for CloudQuotaNotificationItem(0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  swift_getKeyPath();
  v13[1] = v6;
  sub_1A444C300(&qword_1EB13AC58, type metadata accessor for LemonadeCloudQuotaNotificationModel, &unk_1A533D180);
  sub_1A52415D4();

  v7 = OBJC_IVAR____TtC12PhotosUICore35LemonadeCloudQuotaNotificationModel__item;
  swift_beginAccess();
  sub_1A42D8EA8(v6 + v7, v5);
  v9 = sub_1A441CEAC(v8);
  v11 = v10;
  result = sub_1A3DB7E34(v5);
  *a1 = v9;
  a1[1] = v11;
  return result;
}

uint64_t sub_1A444C484(uint64_t a1)
{
  result = type metadata accessor for CloudQuotaNotificationItem(319);
  if (v2 <= 0x3F)
  {
    result = sub_1A5241614();
    if (v3 <= 0x3F)
    {
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_1A444C550(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CloudQuotaNotificationItem(0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

double sub_1A444C5D0@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v36 = sub_1A5249574();
  v47 = 1;
  v5 = sub_1A524BC74();
  v38 = v6;
  v39 = v5;
  v37 = (*(*a1 + 624))();
  *&v48 = 0;
  v7 = sub_1A524B694();
  v34 = *(&v61 + 1);
  v35 = v61;
  v8 = (*(*a1 + 672))(v7);
  *&v48 = 0;
  sub_1A524B694();
  v9 = v61;
  sub_1A524BC74();
  sub_1A52481F4();
  v10 = sub_1A524BC74();
  v32 = v11;
  v33 = v10;
  v31 = (*(*a1 + 720))();
  *&v48 = 0;
  v12 = sub_1A524B694();
  v13 = (*(*a1 + 768))(v12);
  sub_1A524B694();
  sub_1A524BC74();
  sub_1A52481F4();
  *&v95 = v39;
  *(&v95 + 1) = v38;
  *v96 = v37;
  *&v96[8] = v61;
  *&v96[24] = v8;
  v14 = *(&v61 + 1);
  v97 = v61;
  v98 = v92;
  v99 = v93;
  v79 = v92;
  v80 = v93;
  v78 = v61;
  v77 = *&v96[16];
  v75 = v95;
  v76 = *v96;
  *&v40 = v33;
  *(&v40 + 1) = v32;
  *v41 = v31;
  *&v41[8] = v61;
  *&v41[24] = v13;
  v42 = v61;
  v43 = v89;
  v44 = v90;
  v45 = v91;
  v87 = v90;
  v88 = v91;
  v86 = v89;
  v85 = v61;
  v84 = *&v41[16];
  v83 = *v41;
  v100 = v94;
  v81 = v94;
  v82 = v40;
  *&v48 = v33;
  *(&v48 + 1) = v32;
  *v49 = v31;
  *&v49[8] = v61;
  *&v49[24] = v13;
  v50 = v61;
  v52 = v90;
  v53 = v91;
  v51 = v89;
  v15 = MEMORY[0x1E697E048];
  sub_1A444F564(&v95, &v61, &unk_1EB123A08, sub_1A444CC94, MEMORY[0x1E697E048], sub_1A444F0CC);
  sub_1A444F564(&v40, &v61, &unk_1EB123A08, sub_1A444CC94, v15, sub_1A444F0CC);
  sub_1A444F5D8(&v48, &unk_1EB123A08, sub_1A444CC94, v15, sub_1A444F0CC);
  *&v61 = v39;
  *(&v61 + 1) = v38;
  *&v62 = v37;
  *(&v62 + 1) = v35;
  *&v63 = v34;
  *(&v63 + 1) = v8;
  *&v64 = v9;
  *(&v64 + 1) = v14;
  v65 = v92;
  v66 = v93;
  v67 = v94;
  sub_1A444F5D8(&v61, &unk_1EB123A08, sub_1A444CC94, v15, sub_1A444F0CC);
  v57 = v85;
  v58 = v86;
  v59 = v87;
  v60 = v88;
  v53 = v81;
  v54 = v82;
  v55 = v83;
  v56 = v84;
  *&v49[16] = v77;
  v50 = v78;
  v51 = v79;
  v52 = v80;
  v48 = v75;
  *v49 = v76;
  v71 = v85;
  v72 = v86;
  v73 = v87;
  v74 = v88;
  v67 = v81;
  v68 = v82;
  v69 = v83;
  v70 = v84;
  v63 = v77;
  v64 = v78;
  v65 = v79;
  v66 = v80;
  v61 = v75;
  v62 = v76;
  v16 = MEMORY[0x1E6981F40];
  sub_1A444F564(&v48, &v40, &unk_1EB1211C8, sub_1A444CC0C, MEMORY[0x1E6981F40], sub_1A444F500);
  v17 = sub_1A444F5D8(&v61, &unk_1EB1211C8, sub_1A444CC0C, v16, sub_1A444F500);
  *&v46[167] = v57;
  *&v46[183] = v58;
  *&v46[199] = v59;
  *&v46[215] = v60;
  *&v46[103] = v53;
  *&v46[119] = v54;
  *&v46[135] = v55;
  *&v46[151] = v56;
  *&v46[39] = *&v49[16];
  *&v46[55] = v50;
  *&v46[71] = v51;
  *&v46[87] = v52;
  *&v46[7] = v48;
  *&v46[23] = *v49;
  v18 = v47;
  v19 = *(*a1 + 328);
  if ((v19)(v17))
  {
    v20 = 0.0;
  }

  else
  {
    v20 = 1.0;
  }

  v21 = sub_1A524BD44();
  v22 = v19();
  v23 = *&v46[160];
  *(a2 + 193) = *&v46[176];
  v24 = *&v46[208];
  *(a2 + 209) = *&v46[192];
  *(a2 + 225) = v24;
  v25 = *&v46[96];
  *(a2 + 129) = *&v46[112];
  v26 = *&v46[144];
  *(a2 + 145) = *&v46[128];
  *(a2 + 161) = v26;
  *(a2 + 177) = v23;
  v27 = *&v46[32];
  *(a2 + 65) = *&v46[48];
  v28 = *&v46[80];
  *(a2 + 81) = *&v46[64];
  *(a2 + 97) = v28;
  *(a2 + 113) = v25;
  result = *v46;
  v30 = *&v46[16];
  *(a2 + 17) = *v46;
  *(a2 + 33) = v30;
  *a2 = v36;
  *(a2 + 8) = 0;
  *(a2 + 16) = v18;
  *(a2 + 240) = *&v46[223];
  *(a2 + 49) = v27;
  *(a2 + 248) = v20;
  *(a2 + 256) = v21;
  *(a2 + 264) = v22 & 1;
  return result;
}

void sub_1A444CC0C(uint64_t a1)
{
  if (!qword_1EB123A00)
  {
    sub_1A444F0CC(255, &unk_1EB123A08, sub_1A444CC94, MEMORY[0x1E697E048]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB123A00);
    }
  }
}

void sub_1A444CC94(uint64_t a1)
{
  if (!qword_1EB1215A0)
  {
    sub_1A444F500(255, &qword_1EB1212F0, sub_1A444CD48, MEMORY[0x1E6981F40]);
    sub_1A444F1E4(&qword_1EB1212F8, &qword_1EB1212F0, sub_1A444CD48);
    v1 = sub_1A524B8B4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB1215A0);
    }
  }
}

void sub_1A444CD48()
{
  if (!qword_1EB1258D0)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB1258D0);
    }
  }
}

void sub_1A444CDAC(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v14[1] = a2;
  v14[4] = a4;
  sub_1A444D0F8(0);
  v14[3] = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  *v9 = sub_1A5249314();
  *(v9 + 1) = 0;
  v9[16] = 1;
  sub_1A444D4AC(0);
  v14[2] = *(v10 + 44);
  sub_1A444DFCC(a1);
  v14[5] = v11;
  v14[0] = swift_getKeyPath();
  v12 = swift_allocObject();
  v12[2] = a1;
  v12[3] = a2;
  v12[4] = a3;
  v13 = swift_allocObject();
  *(v13 + 16) = sub_1A444E32C;
  *(v13 + 24) = v12;
  sub_1A444F500(0, &qword_1EB120C78, sub_1A444D2C4, MEMORY[0x1E69E62F8]);
  type metadata accessor for TimelineTextEngineCell(0);
  sub_1A444D37C();
  sub_1A444ED74(&qword_1EB125FD0, type metadata accessor for TimelineTextEngineText, &unk_1A5372440);
  sub_1A444ED74(&qword_1EB125890, type metadata accessor for TimelineTextEngineCell, &unk_1A533D2BC);
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

void sub_1A444D140(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(void), uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3(255);
    v10 = a4();
    v11 = a5(a1, v9, v10);
    if (!v12)
    {
      atomic_store(v11, a2);
    }
  }
}

void sub_1A444D1C0(uint64_t a1)
{
  if (!qword_1EB121490)
  {
    sub_1A444F500(255, &qword_1EB120C78, sub_1A444D2C4, MEMORY[0x1E69E62F8]);
    type metadata accessor for TimelineTextEngineText(255);
    type metadata accessor for TimelineTextEngineCell(255);
    sub_1A444D37C();
    sub_1A444ED74(&qword_1EB125FD0, type metadata accessor for TimelineTextEngineText, &unk_1A5372440);
    v1 = sub_1A524B9D4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB121490);
    }
  }
}

void sub_1A444D2C4(uint64_t a1)
{
  if (!qword_1EB120B40)
  {
    type metadata accessor for TimelineTextEngineText(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB120B40);
    }
  }
}

uint64_t type metadata accessor for TimelineTextEngineCell(uint64_t a1)
{
  result = qword_1EB1697F0;
  if (!qword_1EB1697F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1A444D37C()
{
  result = qword_1EB120C70;
  if (!qword_1EB120C70)
  {
    sub_1A444F500(255, &qword_1EB120C78, sub_1A444D2C4, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB120C70);
  }

  return result;
}

unint64_t sub_1A444D404()
{
  result = qword_1EB121498;
  if (!qword_1EB121498)
  {
    sub_1A444D1C0(255);
    sub_1A444ED74(&qword_1EB125890, type metadata accessor for TimelineTextEngineCell, &unk_1A533D2BC);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB121498);
  }

  return result;
}

void sub_1A444D4AC(uint64_t a1)
{
  if (!qword_1EB1244C8)
  {
    sub_1A444D1C0(255);
    v1 = sub_1A52483B4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB1244C8);
    }
  }
}

uint64_t sub_1A444D520()
{
  v1 = sub_1A5249234();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v10[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = v0 + *(type metadata accessor for TimelineTextEngineCell(0) + 32);
  v6 = *v5;
  if (*(v5 + 8) != 1)
  {

    v7 = sub_1A524D254();
    v8 = sub_1A524A014();
    sub_1A5246DF4(v7, &dword_1A3C1C000, v8, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x1E69E7CC0]);

    sub_1A5249224();
    swift_getAtKeyPath();
    sub_1A3C53AEC(v6, 0);
    (*(v2 + 8))(v4, v1);
    LOBYTE(v6) = v10[15];
  }

  return v6 & 1;
}

void sub_1A444D678(uint64_t a1@<X8>)
{
  v10 = a1;
  v6 = type metadata accessor for TimelineTextEngineCell(0);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = v2;
  v9 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = (v1 + *(type metadata accessor for TimelineTextEngineText(0) + 20));
  v4 = v3[1];
  v11 = *v3;
  v12 = v4;
  sub_1A3D5F9DC();
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

void sub_1A444DD00()
{
  type metadata accessor for TimelineTextEngineCell(0);
  sub_1A444EF44(0, &qword_1EB1274D0, MEMORY[0x1E69E7DE0], MEMORY[0x1E6981790]);
  sub_1A524B6B4();
  sub_1A524B6B4();
  if (sub_1A444D520())
  {
    sub_1A47F2988();
  }

  sub_1A47F356C();
  sub_1A524BD44();
  sub_1A444DF0C();
  sub_1A524BCD4();

  MEMORY[0x1EEE9AC00](v0);
  sub_1A52483D4();

  if (sub_1A444D520())
  {
    sub_1A47F2988();
  }

  sub_1A47F3560();
  sub_1A524BCF4();
  sub_1A444DF0C();
  sub_1A524BCD4();

  MEMORY[0x1EEE9AC00](v1);
  sub_1A52483D4();
}

void sub_1A444DF0C()
{
  v1 = *(v0 + *(type metadata accessor for TimelineTextEngineCell(0) + 20));
  v2 = sub_1A444D520();
  if (v1 == 2)
  {
    if (v2)
    {
      sub_1A47F297C();
    }

    sub_1A47F3554();
  }

  else if (v1 == 1)
  {
    if (v2)
    {
      sub_1A47F297C();
    }

    sub_1A47F3548();
    sub_1A3E2AEFC(-0.1, 0.1);
  }

  else
  {
    if (v2)
    {
      sub_1A47F297C();
    }

    sub_1A47F3548();
  }
}

void sub_1A444DFCC(uint64_t a1)
{
  sub_1A444D2C4(0);
  v43 = v2;
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = (&v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v38 - v7;
  v9 = *(a1 + 16);
  v10 = MEMORY[0x1E69E7CC0];
  if (v9)
  {
    v11 = *(v3 + 80);
    v40 = v11;
    v41 = (v11 + 32) & ~v11;
    v12 = MEMORY[0x1E69E7CC0] + v41;
    v13 = 0;
    v14 = 0;
    v15 = *(type metadata accessor for TimelineTextEngineText(0) - 8);
    v16 = a1 + ((*(v15 + 80) + 32) & ~*(v15 + 80));
    v42 = *(v15 + 72);
    v17 = v10;
    v38 = v9;
    v39 = v3;
    while (1)
    {
      v19 = *(v43 + 48);
      *v5 = v13;
      sub_1A444E6DC(v16, v5 + v19, type metadata accessor for TimelineTextEngineText);
      sub_1A444F498(v5, v8, sub_1A444D2C4);
      if (v14)
      {
        v10 = v17;
        v18 = __OFSUB__(v14--, 1);
        if (v18)
        {
          goto LABEL_27;
        }
      }

      else
      {
        v20 = v17[3];
        if (((v20 >> 1) + 0x4000000000000000) < 0)
        {
          __break(1u);
LABEL_34:
          __break(1u);
LABEL_35:
          __break(1u);
LABEL_36:
          __break(1u);
          return;
        }

        v21 = v8;
        v22 = v20 & 0xFFFFFFFFFFFFFFFELL;
        if (v22 <= 1)
        {
          v23 = 1;
        }

        else
        {
          v23 = v22;
        }

        sub_1A444F500(0, &qword_1EB120278, sub_1A444D2C4, MEMORY[0x1E69E6F90]);
        v24 = *(v3 + 72);
        v25 = v41;
        v10 = swift_allocObject();
        v26 = _swift_stdlib_malloc_size(v10);
        if (!v24)
        {
          goto LABEL_34;
        }

        v27 = v26 - v25;
        if (v26 - v25 == 0x8000000000000000 && v24 == -1)
        {
          goto LABEL_35;
        }

        v29 = v27 / v24;
        v10[2] = v23;
        v10[3] = 2 * (v27 / v24);
        v30 = v10 + v25;
        v31 = v17[3] >> 1;
        v32 = v31 * v24;
        if (v17[2])
        {
          if (v10 < v17 || v30 >= v17 + v41 + v32)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v10 != v17)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v17[2] = 0;
        }

        v12 = &v30[v32];
        v34 = (v29 & 0x7FFFFFFFFFFFFFFFLL) - v31;

        v8 = v21;
        v9 = v38;
        v3 = v39;
        v18 = __OFSUB__(v34, 1);
        v14 = v34 - 1;
        if (v18)
        {
LABEL_27:
          __break(1u);
          break;
        }
      }

      ++v13;
      sub_1A444F498(v8, v12, sub_1A444D2C4);
      v12 += *(v3 + 72);
      v16 += v42;
      v17 = v10;
      if (v9 == v13)
      {
        goto LABEL_29;
      }
    }
  }

  v14 = 0;
LABEL_29:
  v35 = v10[3];
  if (v35 >= 2)
  {
    v36 = v35 >> 1;
    v18 = __OFSUB__(v36, v14);
    v37 = v36 - v14;
    if (v18)
    {
      goto LABEL_36;
    }

    v10[2] = v37;
  }
}

uint64_t sub_1A444E32C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = *(v3 + 16);
  v15 = *(v3 + 24);
  sub_1A444EF44(0, &unk_1EB121BE0, MEMORY[0x1E69E6530], MEMORY[0x1E6981790]);
  sub_1A524B6A4();
  v8 = sub_1A444E65C(a1, v14, *(v7 + 16));
  sub_1A444E6DC(a2, a3, type metadata accessor for TimelineTextEngineText);
  v9 = type metadata accessor for TimelineTextEngineCell(0);
  v10 = (a3 + v9[6]);
  sub_1A524B694();
  *v10 = v15;
  v11 = (a3 + v9[7]);
  sub_1A524B694();
  *v11 = v15;
  v12 = a3 + v9[8];
  result = swift_getKeyPath();
  *v12 = result;
  *(v12 + 8) = 0;
  *(a3 + v9[5]) = v8;
  return result;
}

uint64_t sub_1A444E474(char *a1)
{
  v3 = *(v1 + 16);
  v4 = *a1;
  sub_1A444D2C4(0);
  return v3(v4, &a1[*(v5 + 48)]);
}

uint64_t objectdestroyTm_53()
{

  return swift_deallocObject();
}

uint64_t sub_1A444E510()
{
  sub_1A4429704(2uLL);
  sub_1A444EF44(0, &unk_1EB121BE0, MEMORY[0x1E69E6530], MEMORY[0x1E6981790]);
  return sub_1A524B6B4();
}

unint64_t sub_1A444E584()
{
  result = qword_1EB120D20;
  if (!qword_1EB120D20)
  {
    sub_1A444F500(255, &qword_1EB120D28, type metadata accessor for TimelineTextEngineText, MEMORY[0x1E69E62F8]);
    sub_1A444ED74(&qword_1EB125FC8, type metadata accessor for TimelineTextEngineText, &unk_1A53724B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB120D20);
  }

  return result;
}

uint64_t sub_1A444E65C(uint64_t result, char a2, uint64_t a3)
{
  v3 = a3 - 1;
  if (__OFSUB__(a3, 1))
  {
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v4 = result & ~(result >> 63);
  if (v3 < v4)
  {
    v4 = a3 - 1;
  }

  if (a3 == 2)
  {
    if ((v3 & 0x8000000000000000) == 0 && v4 <= 1)
    {
      v7 = &unk_1F170E860;
      return v7[v4];
    }

    goto LABEL_23;
  }

  if (a3 != 3)
  {
    return result;
  }

  v6 = v3 < 0 || v4 > 2;
  if (a2)
  {
    if (!v6)
    {
      v7 = &unk_1F170E828;
      return v7[v4];
    }

LABEL_25:
    __break(1u);
    return result;
  }

  if (v6)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v7 = &unk_1F170E7F0;
  return v7[v4];
}

uint64_t sub_1A444E6DC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_1A444E78C(uint64_t a1)
{
  if (!qword_1EB1227D8)
  {
    sub_1A444F248(255, &qword_1EB124080, MEMORY[0x1E6981148], &type metadata for TimelineTextEngineCellViewModifier, MEMORY[0x1E697E830]);
    sub_1A444E820(255);
    v1 = sub_1A5249754();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB1227D8);
    }
  }
}

void sub_1A444E820(uint64_t a1)
{
  if (!qword_1EB123868)
  {
    sub_1A444F248(255, &qword_1EB124070, MEMORY[0x1E6981148], &type metadata for WriteOutEffect, MEMORY[0x1E697E830]);
    v1 = sub_1A5248804();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB123868);
    }
  }
}

unint64_t sub_1A444E8AC()
{
  result = qword_1EB1227E0;
  if (!qword_1EB1227E0)
  {
    sub_1A444E78C(255);
    sub_1A444EA58(&qword_1EB124088, &qword_1EB124080, &type metadata for TimelineTextEngineCellViewModifier, sub_1A444E958);
    sub_1A444E9AC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1227E0);
  }

  return result;
}

unint64_t sub_1A444E958()
{
  result = qword_1EB1252C8;
  if (!qword_1EB1252C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1252C8);
  }

  return result;
}

unint64_t sub_1A444E9AC()
{
  result = qword_1EB123870;
  if (!qword_1EB123870)
  {
    sub_1A444E820(255);
    sub_1A444EA58(&qword_1EB124078, &qword_1EB124070, &type metadata for WriteOutEffect, sub_1A444EAF8);
    sub_1A444E958();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB123870);
  }

  return result;
}

uint64_t sub_1A444EA58(unint64_t *a1, unint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_1A444F248(255, a2, MEMORY[0x1E6981148], a3, MEMORY[0x1E697E830]);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1A444EAF8()
{
  result = qword_1EB125BA8;
  if (!qword_1EB125BA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB125BA8);
  }

  return result;
}

uint64_t sub_1A444EB4C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1A444EBAC()
{
  v1 = *(type metadata accessor for TimelineTextEngineCell(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));
  v3 = (v2 + *(type metadata accessor for TimelineTextEngineText(0) + 20));
  v5 = *v3;
  v4 = v3[1];
  v6 = v5 & 0xFFFFFFFFFFFFLL;
  if ((v4 & 0x2000000000000000) != 0)
  {
    v7 = HIBYTE(v4) & 0xF;
  }

  else
  {
    v7 = v6;
  }

  if (v7)
  {
    sub_1A444DD00();
  }
}

void sub_1A444EC30(uint64_t a1)
{
  if (!qword_1EB123858)
  {
    sub_1A444F248(255, &qword_1EB124060, MEMORY[0x1E6981148], MEMORY[0x1E697E5C8], MEMORY[0x1E697E830]);
    sub_1A444E744(255);
    v1 = sub_1A5248804();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB123858);
    }
  }
}

unint64_t sub_1A444ECC4()
{
  result = qword_1EB123860;
  if (!qword_1EB123860)
  {
    sub_1A444EC30(255);
    sub_1A4234634();
    sub_1A444ED74(&qword_1EB122EC0, sub_1A444E744, MEMORY[0x1E697EC18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB123860);
  }

  return result;
}

uint64_t sub_1A444ED74(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1A444EE58(uint64_t a1)
{
  type metadata accessor for TimelineTextEngineText(319);
  if (v1 <= 0x3F)
  {
    sub_1A444EF44(319, &qword_1EB1274D0, MEMORY[0x1E69E7DE0], MEMORY[0x1E6981790]);
    if (v2 <= 0x3F)
    {
      sub_1A444EF44(319, &qword_1EB1246E0, MEMORY[0x1E69E6370], MEMORY[0x1E697DCC0]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1A444EF44(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t sub_1A444EF94()
{
  result = qword_1EB123560;
  if (!qword_1EB123560)
  {
    sub_1A444F014(255);
    sub_1A444F29C();
    sub_1A3E734D8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB123560);
  }

  return result;
}

void sub_1A444F014(uint64_t a1)
{
  if (!qword_1EB123558)
  {
    sub_1A444F0CC(255, &qword_1EB123A98, sub_1A444F130, MEMORY[0x1E697E5C8]);
    sub_1A444F248(255, &qword_1EB122E00, MEMORY[0x1E69E6370], MEMORY[0x1E69E6388], MEMORY[0x1E697F540]);
    v1 = sub_1A5248804();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB123558);
    }
  }
}

void sub_1A444F0CC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  if (!*a2)
  {
    a3(255);
    v5 = sub_1A5248804();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_1A444F130(uint64_t a1)
{
  if (!qword_1EB121730)
  {
    sub_1A444F500(255, &qword_1EB1211C8, sub_1A444CC0C, MEMORY[0x1E6981F40]);
    sub_1A444F1E4(&qword_1EB1211D0, &qword_1EB1211C8, sub_1A444CC0C);
    v1 = sub_1A524B894();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB121730);
    }
  }
}

uint64_t sub_1A444F1E4(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    sub_1A444F500(255, a2, a3, MEMORY[0x1E6981F40]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1A444F248(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
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

unint64_t sub_1A444F29C()
{
  result = qword_1EB123AA0;
  if (!qword_1EB123AA0)
  {
    sub_1A444F0CC(255, &qword_1EB123A98, sub_1A444F130, MEMORY[0x1E697E5C8]);
    sub_1A444ED74(&qword_1EB121738, sub_1A444F130, MEMORY[0x1E6981870]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB123AA0);
  }

  return result;
}

uint64_t sub_1A444F370()
{
  type metadata accessor for TimelineTextEngineCell(0);
  sub_1A444EF44(0, &qword_1EB1274D0, MEMORY[0x1E69E7DE0], MEMORY[0x1E6981790]);
  return sub_1A524B6B4();
}

uint64_t sub_1A444F404()
{
  type metadata accessor for TimelineTextEngineCell(0);
  sub_1A444EF44(0, &qword_1EB1274D0, MEMORY[0x1E69E7DE0], MEMORY[0x1E6981790]);
  return sub_1A524B6B4();
}

uint64_t sub_1A444F498(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_1A444F500(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1A444F564(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void, uint64_t, uint64_t, uint64_t))
{
  v8 = a6(0, a3, a4, a5);
  (*(*(v8 - 8) + 16))(a2, a1, v8);
  return a2;
}

uint64_t sub_1A444F5D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = (a5)(0, a2, a3, a4);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

void sub_1A444F638(uint64_t a1, uint64_t a2)
{
  MEMORY[0x1EEE9AC00](a1);
  sub_1A524CB74();
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A444F8F8@<X0>(uint64_t *a1@<X8>)
{
  result = (*(*(v1 + 24) + 16))(*(v1 + 16));
  a1[3] = MEMORY[0x1E69E6158];
  *a1 = result;
  a1[1] = v4;
  return result;
}

void sub_1A444F958(void *a1, uint64_t a2, uint64_t a3)
{
  MEMORY[0x1EEE9AC00](a1);
  v11 = v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = v5;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v9 = sub_1A524DF24();
  MEMORY[0x1EEE9AC00](v9);
  v8[10] = v8 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  swift_getWitnessTable();
  v8[5] = a3;
  sub_1A5249DB4();
  sub_1A5249DA4();
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A444FFB0@<X0>(uint64_t *a1@<X8>)
{
  result = (*(*(v1 + 24) + 16))(*(v1 + 16));
  *a1 = result;
  a1[1] = v4;
  return result;
}

void sub_1A4450004(uint64_t a1)
{
  v2 = v1;
  v4 = *(a1 + 16);
  v5 = sub_1A524B974();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v10 - v6;
  type metadata accessor for UIKitSegmentedControl.Coordinator(0, v4, *(a1 + 24), v8);
  sub_1A524B924();
  v9 = *v2;
  swift_allocObject();
  sub_1A445084C(v7, v9);
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A44500E4(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  sub_1A445084C(a1, a2);
  return v4;
}

uint64_t sub_1A445014C(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 80);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v7 = &v14 - v6;
  v8 = sub_1A524B974();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v14 - v11;
  (*(v9 + 16))(&v14 - v11, v1 + *(v3 + 96), v8, v10);
  (*(v5 + 16))(v7, a1, v4);
  sub_1A524B904();
  (*(v5 + 8))(a1, v4);
  return (*(v9 + 8))(v12, v8);
}

uint64_t (*sub_1A445031C(void *a1))()
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  v6 = *(*v1 + 80);
  *v4 = v6;
  v7 = *(v6 - 8);
  v4[1] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v4[2] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v4[2] = malloc(*(v7 + 64));
    v9 = malloc(v8);
  }

  v5[3] = v9;
  v10 = sub_1A524B974();
  v5[4] = v10;
  v11 = *(v10 - 8);
  v12 = v11;
  v5[5] = v11;
  if (v3)
  {
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v13 = malloc(*(v11 + 64));
  }

  v5[6] = v13;
  (*(v12 + 16))();
  MEMORY[0x1A5906C60](v10);
  return sub_1A44504E4;
}

void sub_1A44504E8(uint64_t a1, char a2)
{
  v2 = *a1;
  v4 = *(*a1 + 40);
  v3 = *(*a1 + 48);
  v5 = *(*a1 + 24);
  v6 = *(*a1 + 32);
  v7 = *(*a1 + 16);
  if (a2)
  {
    v8 = *v2;
    v9 = v2[1];
    (*(v9 + 16))(*(*a1 + 16), v5, *v2);
    sub_1A524B904();
    (*(v4 + 8))(v3, v6);
    (*(v9 + 8))(v5, v8);
  }

  else
  {
    sub_1A524B904();
    (*(v4 + 8))(v3, v6);
  }

  free(v3);
  free(v5);
  free(v7);

  free(v2);
}

uint64_t sub_1A44505FC(void (*a1)(uint64_t))
{
  v3 = *v1;
  v4 = sub_1A524B974();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v10 - v7;
  (*(v5 + 16))(&v10 - v7, &v1[*(v3 + 96)], v4, v6);
  a1(v4);
  return (*(v5 + 8))(v8, v4);
}

double sub_1A445077C(uint64_t a1)
{
  v3 = *(*v1 + 104);
  swift_beginAccess();
  *(v1 + v3) = a1;

  return result;
}

uint64_t sub_1A445084C(uint64_t a1, uint64_t a2)
{
  v5 = *(*v2 + 96);
  v6 = sub_1A524B974();
  (*(*(v6 - 8) + 32))(v2 + v5, a1, v6);
  *(v2 + *(*v2 + 104)) = a2;
  return v2;
}

uint64_t sub_1A44508FC(uint64_t a1)
{
  v2 = MEMORY[0x1EEE9AC00](a1);
  v4 = &v7 - v3;
  [v5 selectedSegmentIndex];
  (*(*v1 + 144))();
  sub_1A524CB94();

  return (*(*v1 + 120))(v4);
}

double sub_1A44509F8(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3;

  sub_1A44508FC(v3);

  return result;
}

uint64_t sub_1A4450A48()
{
  v1 = *(*v0 + 96);
  v2 = sub_1A524B974();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t sub_1A4450AE8()
{
  sub_1A4450A48();

  return swift_deallocClassInstance();
}

uint64_t sub_1A4450B40@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char *a7@<X8>)
{
  *a7 = a1;
  v11 = type metadata accessor for UIKitSegmentedControl(0, a5, a6, a4);
  v12 = *(v11 + 36);
  v13 = sub_1A524B974();
  result = (*(*(v13 - 8) + 32))(&a7[v12], a2, v13);
  v15 = &a7[*(v11 + 40)];
  *v15 = a3;
  *(v15 + 1) = a4;
  return result;
}

uint64_t sub_1A4450C20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEDDAA28](a1, a2, a3, WitnessTable);
}

uint64_t sub_1A4450C9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEDDA9B8](a1, a2, a3, WitnessTable);
}

void sub_1A4450D18(uint64_t a1)
{
  swift_getWitnessTable();
  sub_1A52496F4();
  __break(1u);
}

void sub_1A4450DA4(uint64_t a1)
{
  sub_1A524CB74();
  if (v1 <= 0x3F)
  {
    sub_1A524B974();
    if (v2 <= 0x3F)
    {
      sub_1A44511E8(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1A4450E4C(unint64_t *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  if (v5 <= 0x7FFFFFFF)
  {
    v6 = 0x7FFFFFFF;
  }

  else
  {
    v6 = *(v4 + 84);
  }

  v7 = *(v4 + 80);
  if (v5 >= 0)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = v6;
  }

  if (!a2)
  {
    return 0;
  }

  v9 = v7 | 7;
  if (v8 >= a2)
  {
    goto LABEL_31;
  }

  v10 = ((*(*(*(a3 + 16) - 8) + 64) - (((-17 - v7) | v7) + ((-9 - v7) | v9)) + 5) & 0xFFFFFFFFFFFFFFF8) + 16;
  v11 = a2 - v8;
  v12 = v10 & 0xFFFFFFF8;
  if ((v10 & 0xFFFFFFF8) != 0)
  {
    v13 = 2;
  }

  else
  {
    v13 = v11 + 1;
  }

  if (v13 >= 0x10000)
  {
    v14 = 4;
  }

  else
  {
    v14 = 2;
  }

  if (v13 < 0x100)
  {
    v14 = 1;
  }

  if (v13 >= 2)
  {
    v15 = v14;
  }

  else
  {
    v15 = 0;
  }

  if (v15 > 1)
  {
    if (v15 == 2)
    {
      v16 = *(a1 + v10);
      if (!v16)
      {
        goto LABEL_31;
      }
    }

    else
    {
      v16 = *(a1 + v10);
      if (!v16)
      {
        goto LABEL_31;
      }
    }
  }

  else if (!v15 || (v16 = *(a1 + v10)) == 0)
  {
LABEL_31:
    if (v8 != 0x7FFFFFFF)
    {
      return (*(v4 + 48))((v7 + ((((a1 + v9 + 8) & ~v9) + 15) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v7);
    }

    v19 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v19) = -1;
    }

    return (v19 + 1);
  }

  v18 = v16 - 1;
  if (v12)
  {
    v18 = 0;
    LODWORD(v12) = *a1;
  }

  return v8 + (v12 | v18) + 1;
}

void *sub_1A4450FD4(void *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  if (v6 >= 0)
  {
    v7 = 0x7FFFFFFF;
  }

  v8 = *(v5 + 80);
  v9 = ((-2 - ((((-9 - v8) | v8) & 0xFFFFFFFFFFFFFFF8) + ((-17 - v8) | v8) - *(*(*(a4 + 16) - 8) + 64))) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v7 >= a3)
  {
    v13 = 0;
    v14 = a2 - v7;
    if (a2 <= v7)
    {
      goto LABEL_19;
    }
  }

  else
  {
    v10 = a3 - v7;
    if (((-2 - ((((-9 - v8) | v8) & 0xFFFFFFF8) + ((-17 - v8) | v8) - *(*(*(a4 + 16) - 8) + 64))) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v11 = v10 + 1;
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

    v14 = a2 - v7;
    if (a2 <= v7)
    {
LABEL_19:
      if (v13 > 1)
      {
        if (v13 != 2)
        {
          *(result + v9) = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_35;
        }

        *(result + v9) = 0;
      }

      else if (v13)
      {
        *(result + v9) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_35;
      }

      if (!a2)
      {
        return result;
      }

LABEL_35:
      if (v7 == 0x7FFFFFFF)
      {
        if ((a2 & 0x80000000) != 0)
        {
          v18 = a2 & 0x7FFFFFFF;
        }

        else
        {
          v18 = a2 - 1;
        }

        *result = v18;
      }

      else
      {
        v19 = *(v5 + 56);
        v20 = (v8 + ((((result + (v8 | 7) + 8) & ~(v8 | 7)) + 15) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v8;

        return v19(v20);
      }

      return result;
    }
  }

  if (((-2 - ((((-9 - v8) | v8) & 0xFFFFFFF8) + ((-17 - v8) | v8) - *(*(*(a4 + 16) - 8) + 64))) & 0xFFFFFFF8) == 0xFFFFFFF0)
  {
    v15 = v14;
  }

  else
  {
    v15 = 1;
  }

  if (((-2 - ((((-9 - v8) | v8) & 0xFFFFFFF8) + ((-17 - v8) | v8) - *(*(*(a4 + 16) - 8) + 64))) & 0xFFFFFFF8) != 0xFFFFFFF0)
  {
    v16 = ~v7 + a2;
    v17 = result;
    bzero(result, v9);
    result = v17;
    *v17 = v16;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      *(result + v9) = v15;
    }

    else
    {
      *(result + v9) = v15;
    }
  }

  else if (v13)
  {
    *(result + v9) = v15;
  }

  return result;
}

void sub_1A44511E8(uint64_t a1)
{
  if (!qword_1EB1201F0)
  {
    sub_1A3C3637C();
    v1 = sub_1A524DF24();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB1201F0);
    }
  }
}

uint64_t sub_1A4451240(uint64_t a1)
{
  result = sub_1A524B974();
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

id PXSensitivityInterventionManager.init(compactSCSensitivityAnalysis:analysisMediaType:interventionType:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v6 initWithCompactSCSensitivityAnalysis:a1 analysisMediaType:a2 interventionType:a3];
}

char *PXSensitivityInterventionManager.init(compactSCSensitivityAnalysis:analysisMediaType:interventionType:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v41[1] = *MEMORY[0x1E69E9840];
  v7 = sub_1A5246F24();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v3[OBJC_IVAR___PXSensitivityInterventionManager_internalInterventionFlow] = 0;
  *&v3[OBJC_IVAR___PXSensitivityInterventionManager_asset] = 0;
  v11 = OBJC_IVAR___PXSensitivityInterventionManager_delegateHandler;
  *&v3[v11] = [objc_allocWithZone(type metadata accessor for PXSensitivityInterventionManagerDelegateHandler()) init];
  *&v3[OBJC_IVAR___PXSensitivityInterventionManager_interventionType] = a3;
  *&v3[OBJC_IVAR___PXSensitivityInterventionManager_analysisMediaType] = a2;
  v40.receiver = v3;
  v40.super_class = PXSensitivityInterventionManager;
  v12 = objc_msgSendSuper2(&v40, sel_init);
  swift_unknownObjectWeakAssign();
  v13 = objc_allocWithZone(MEMORY[0x1E697B670]);
  v39 = 0;
  v14 = v12;
  v15 = v12;
  v16 = [v13 initFromCompactAnalysis:a1 error:&v39];
  v17 = v39;
  if (v16)
  {
    v18 = v16;
    v39 = 0;
    v19 = v17;
    if ([v15 createInterventionFlow:v18 error:&v39])
    {
      v20 = v39;

      return v14;
    }

    v22 = v39;
  }

  else
  {
    v22 = v39;
    v18 = v15;
  }

  v23 = sub_1A5240B84();

  swift_willThrow();
  v39 = v23;
  sub_1A3DBD9A0();
  sub_1A3C52C70(0, &qword_1EB12C740, 0x1E696ABC0);
  swift_dynamicCast();
  v24 = v38[0];
  v25 = [v38[0] code];
  if (v25 == *sub_1A45D8288())
  {
  }

  else
  {
    v26 = sub_1A45D8754();
    (*(v8 + 16))(v10, v26, v7);
    v27 = v24;
    v28 = sub_1A5246F04();
    v29 = sub_1A524D244();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v41[0] = swift_slowAlloc();
      *v30 = 136315138;
      v31 = [v27 localizedDescription];
      v37[2] = v7;
      v32 = v31;
      v33 = sub_1A524C674();
      v37[1] = v8;
      v34 = v33;
      v36 = v35;

      sub_1A3C2EF94(v34, v36, v41);
    }

    (*(v8 + 8))(v10, v7);
  }

  return 0;
}