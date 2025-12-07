uint64_t sub_1A38D25AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v65 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FDAF8, &qword_1A3A6F438);
  v62 = *(v3 - 8);
  v63 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v57 = (&v55 - v4);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FDB00, &qword_1A3A6F440);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v64 = &v55 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v61 = &v55 - v8;
  v9 = sub_1A3A2FEE0();
  v56 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v55 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FDB08, &qword_1A3A6F448);
  MEMORY[0x1EEE9AC00](v12);
  v60 = &v55 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v55 - v15;
  type metadata accessor for ChromeViewModel(0);
  sub_1A38DF31C(&qword_1ED996608, type metadata accessor for ChromeViewModel, &unk_1A3A70668);
  v59 = sub_1A3A2F650();
  v18 = v17;
  KeyPath = swift_getKeyPath(byte_1A3A6EE60);
  v20 = type metadata accessor for ChromeBottomBar(0);
  v21 = v20[13];
  v58 = a1;
  v22 = (a1 + v21);
  v23 = *v22;
  if (*(v22 + 8) == 1)
  {
    v71 = *v22;
    sub_1A3A2EA60();
  }

  else
  {
    sub_1A3A2EA60();
    sub_1A3A31C30();
    v55 = KeyPath;
    v24 = sub_1A3A305C0();
    sub_1A3A2F270();

    sub_1A3A2FED0();
    swift_getAtKeyPath();

    KeyPath = v55;
    (*(v56 + 8))(v11, v9);
    v23 = v71;
  }

  swift_getKeyPath(byte_1A3A6EE38);
  v66 = v23;
  sub_1A3A2F080();

  v25 = *(v23 + 640);
  sub_1A3A2EA60();

  v26 = swift_allocObject();
  *(v26 + 16) = 0x77656956746F6F52;
  *(v26 + 24) = 0xE800000000000000;
  v27 = swift_allocObject();
  *(v27 + 16) = v25;
  *(v27 + 24) = KeyPath;
  v72 = v18 & 1;
  v28 = v58;
  v29 = v58 + v20[8];
  v30 = *v29;
  v31 = *(v29 + 8);
  v69 = v30;
  v70 = v31;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FC3C8, &qword_1A3A6C090);
  sub_1A3A30FB0();
  v32 = v67;
  v33 = v68;
  v34 = &v16[*(v12 + 36)];
  *v34 = v66;
  *(v34 + 1) = v32;
  v34[16] = v33;
  v35 = &v34[*(type metadata accessor for DetectInteractionGestureModifier(0) + 20)];
  *v35 = swift_getKeyPath(byte_1A3A6EBA0);
  v35[8] = 0;
  v36 = *(type metadata accessor for ChromeScenePhase(0) + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FD670, &qword_1A3A6F6C0);
  swift_storeEnumTagMultiPayload();
  __asm { FMOV            V0.2D, #24.0 }

  *v16 = _Q0;
  *(v16 + 2) = v59;
  v16[24] = v18 & 1;
  *(v16 + 25) = 256;
  *(v16 + 4) = sub_1A38DFB80;
  *(v16 + 5) = v26;
  *(v16 + 6) = sub_1A38C0498;
  *(v16 + 7) = v27;
  v42 = v28 + v20[5];
  v43 = *v42;
  v44 = *(v42 + 8);
  LOBYTE(v66) = v43;
  v67 = v44;
  sub_1A3A30F90();
  v45 = 1;
  v46 = v61;
  if (v69 == 1)
  {
    v47 = sub_1A3A2FF40();
    v48 = v57;
    *v57 = v47;
    *(v48 + 8) = 0;
    *(v48 + 16) = 1;
    v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FDB18, &qword_1A3A6F458);
    sub_1A38D2C50(v28, v48 + *(v49 + 44));
    sub_1A388F670(v48, v46, &qword_1EB0FDAF8, &qword_1A3A6F438);
    v45 = 0;
  }

  (*(v62 + 56))(v46, v45, 1, v63);
  v50 = v60;
  sub_1A388F6D8(v16, v60, &qword_1EB0FDB08, &qword_1A3A6F448);
  v51 = v64;
  sub_1A388F6D8(v46, v64, &qword_1EB0FDB00, &qword_1A3A6F440);
  v52 = v65;
  sub_1A388F6D8(v50, v65, &qword_1EB0FDB08, &qword_1A3A6F448);
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FDB10, &qword_1A3A6F450);
  sub_1A388F6D8(v51, v52 + *(v53 + 48), &qword_1EB0FDB00, &qword_1A3A6F440);
  sub_1A388F740(v46, &qword_1EB0FDB00, &qword_1A3A6F440);
  sub_1A388F740(v16, &qword_1EB0FDB08, &qword_1A3A6F448);
  sub_1A388F740(v51, &qword_1EB0FDB00, &qword_1A3A6F440);
  return sub_1A388F740(v50, &qword_1EB0FDB08, &qword_1A3A6F448);
}

uint64_t sub_1A38D2C50@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v48 = a2;
  v3 = sub_1A3A2FF20();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v40[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v40[-v8];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FDB20, &qword_1A3A6F460);
  v11 = v10 - 8;
  MEMORY[0x1EEE9AC00](v10);
  v47 = &v40[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v40[-v14];
  type metadata accessor for ChromeViewModel(0);
  sub_1A38DF31C(&qword_1ED996608, type metadata accessor for ChromeViewModel, &unk_1A3A70668);
  v46 = sub_1A3A2F650();
  v17 = v16;
  KeyPath = swift_getKeyPath("\bMiG");
  v18 = type metadata accessor for ChromeBottomBar(0);
  v19 = (a1 + *(v18 + 72));
  v20 = *v19;
  v43 = v19[1];
  v44 = v20;
  sub_1A3A2EA50();
  v42 = sub_1A3A31530();
  v41 = sub_1A3A30460();
  sub_1A3A31590();
  v22 = v21;
  v24 = v23;
  LOBYTE(v49) = v17 & 1;
  v52 = 0;
  sub_1A3A2FF10();
  (*(v4 + 16))(v6, v9, v3);
  sub_1A38DF31C(&qword_1ED996708, MEMORY[0x1E697F260], MEMORY[0x1E697F258]);
  v25 = sub_1A3A2F7F0();
  (*(v4 + 8))(v9, v3);
  v26 = (a1 + *(v18 + 24));
  v27 = *v26;
  v28 = *(v26 + 1);
  v52 = v27;
  v53 = v28;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FC3C8, &qword_1A3A6C090);
  sub_1A3A30FB0();
  v29 = v50;
  v30 = v51;
  v31 = &v15[*(v11 + 44)];
  *v31 = v49;
  *(v31 + 1) = v29;
  v31[16] = v30;
  v32 = &v31[*(type metadata accessor for DetectInteractionGestureModifier(0) + 20)];
  *v32 = swift_getKeyPath(byte_1A3A6EBA0);
  v32[8] = 0;
  v33 = *(type metadata accessor for ChromeScenePhase(0) + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FD670, &qword_1A3A6F6C0);
  swift_storeEnumTagMultiPayload();
  v34 = KeyPath;
  *v15 = v46;
  v15[8] = v17 & 1;
  *(v15 + 2) = v34;
  *(v15 + 12) = 0;
  v35 = v43;
  *(v15 + 4) = v44;
  *(v15 + 5) = v35;
  *(v15 + 6) = v42;
  *(v15 + 14) = v41;
  *(v15 + 8) = v22;
  *(v15 + 9) = v24;
  v15[80] = 1;
  *(v15 + 11) = v25;
  v36 = v47;
  sub_1A388F6D8(v15, v47, &qword_1EB0FDB20, &qword_1A3A6F460);
  v37 = v48;
  sub_1A388F6D8(v36, v48, &qword_1EB0FDB20, &qword_1A3A6F460);
  v38 = v37 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FDB28, &qword_1A3A6F468) + 48);
  *v38 = 0;
  *(v38 + 8) = 1;
  sub_1A388F740(v15, &qword_1EB0FDB20, &qword_1A3A6F460);
  return sub_1A388F740(v36, &qword_1EB0FDB20, &qword_1A3A6F460);
}

uint64_t sub_1A38D306C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v92 = a1;
  v3 = type metadata accessor for ModeWheelGestureState(0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v91 = &v76 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FD9F8, &qword_1A3A6F248);
  v89 = *(v5 - 8);
  v90 = v5;
  v87 = *(v89 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v88 = &v76 - v6;
  v7 = type metadata accessor for ChromeBottomBar(0);
  v8 = v7 - 8;
  v83 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v76 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v76 - v12;
  v95 = v14;
  MEMORY[0x1EEE9AC00](v15);
  v94 = &v76 - v16;
  v17 = sub_1A3A2FEE0();
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v76 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FDA00, &unk_1A3A6F250);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v23 = &v76 - v22;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FD9C0, &qword_1A3A6F228);
  MEMORY[0x1EEE9AC00](v84);
  v25 = &v76 - v24;
  v26 = v1 + *(v8 + 44);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FD678, &unk_1A3A6EC48);
  v93 = v23;
  v85 = v27;
  v86 = v26;
  sub_1A3A30FB0();
  v28 = sub_1A38D3A2C();
  v78 = sub_1A38CFAC8();
  LOBYTE(v23) = *(v2 + *(v8 + 60) + 8);
  sub_1A3A2EA60();
  if ((v23 & 1) == 0)
  {
    sub_1A3A31C30();
    v29 = sub_1A3A305C0();
    sub_1A3A2F270();

    sub_1A3A2FED0();
    swift_getAtKeyPath();

    (*(v18 + 8))(v20, v17);
  }

  sub_1A3A2EA60();

  v77 = sub_1A392A508(v30, v31);

  v32 = v94;
  sub_1A38DF4FC(v2, v94, type metadata accessor for ChromeBottomBar);
  v33 = (*(v83 + 80) + 16) & ~*(v83 + 80);
  v34 = *(v83 + 80);
  v76 = swift_allocObject();
  sub_1A38DEDBC(v32, v76 + v33, type metadata accessor for ChromeBottomBar);
  v80 = type metadata accessor for ChromeBottomBar;
  sub_1A38DF4FC(v2, v13, type metadata accessor for ChromeBottomBar);
  v81 = v34;
  v35 = swift_allocObject();
  v79 = type metadata accessor for ChromeBottomBar;
  sub_1A38DEDBC(v13, v35 + v33, type metadata accessor for ChromeBottomBar);
  sub_1A38DF4FC(v2, v10, type metadata accessor for ChromeBottomBar);
  v36 = swift_allocObject();
  sub_1A38DEDBC(v10, v36 + v33, type metadata accessor for ChromeBottomBar);
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FD9D8, &qword_1A3A6F230);
  v38 = &v25[v37[18]];
  LOBYTE(v98) = 1;
  sub_1A3A30F80();
  v39 = v97;
  *v38 = v96;
  *(v38 + 1) = v39;
  v40 = &v25[v37[21]];
  v41 = type metadata accessor for ChromeViewModel(0);
  v42 = sub_1A38DF31C(&qword_1ED996608, type metadata accessor for ChromeViewModel, &unk_1A3A70668);
  v82 = v41;
  v83 = v42;
  *v40 = sub_1A3A2F650();
  v40[8] = v43 & 1;
  sub_1A388F6D8(v93, v25, &qword_1EB0FDA00, &unk_1A3A6F250);
  *&v25[v37[13]] = v28;
  v25[v37[14]] = v78 & 1;
  v44 = &v25[v37[15]];
  v45 = v76;
  *v44 = sub_1A38DE248;
  v44[1] = v45;
  v46 = &v25[v37[16]];
  *v46 = sub_1A38DE2E4;
  v46[1] = v35;
  v47 = &v25[v37[17]];
  *v47 = sub_1A38DE2FC;
  v47[1] = v36;
  v48 = &v25[v37[19]];
  v49 = v2;
  v50 = v77 & 1;
  LOBYTE(v98) = v77 & 1;
  sub_1A3A2EA60();
  sub_1A3A2EA60();
  sub_1A3A2EA60();
  sub_1A3A30F80();
  v51 = v97;
  *v48 = v96;
  *(v48 + 1) = v51;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FDA08, &unk_1A3A6F500);
  v52 = swift_allocObject();
  *(v52 + 17) = 2;
  *(v52 + 24) = 0;
  sub_1A3A2F0B0();
  *(v52 + 16) = 0;
  *(v52 + 18) = v50;
  v53 = &v25[v37[20]];
  v98 = v52;
  sub_1A3A30F80();

  sub_1A388F740(v93, &qword_1EB0FDA00, &unk_1A3A6F250);
  v54 = v97;
  *v53 = v96;
  *(v53 + 1) = v54;
  *&v25[*(v84 + 36)] = 256;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FCF78, &qword_1A3A6EC40);
  sub_1A3A30310();
  sub_1A38DE13C();
  v55 = v92;
  sub_1A3A30B10();

  sub_1A388F740(v25, &qword_1EB0FD9C0, &qword_1A3A6F228);
  v56 = sub_1A38D3A2C();
  v57 = v94;
  sub_1A38DF4FC(v49, v94, v80);
  v58 = swift_allocObject();
  sub_1A38DEDBC(v57, v58 + v33, v79);
  v95 = sub_1A3A31470();
  v60 = v59;
  v61 = v88;
  v62 = v89;
  v63 = v90;
  (*(v89 + 16))(v88, v55, v90);
  v64 = (*(v62 + 80) + 16) & ~*(v62 + 80);
  v65 = (v87 + v64 + 7) & 0xFFFFFFFFFFFFFFF8;
  v66 = swift_allocObject();
  (*(v62 + 32))(v66 + v64, v61, v63);
  *(v66 + v65) = v56;
  v67 = (v66 + ((v65 + 15) & 0xFFFFFFFFFFFFFFF8));
  *v67 = sub_1A38DE744;
  v67[1] = v58;
  v68 = (v55 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FD9B8, &qword_1A3A6F220) + 36));
  *v68 = sub_1A38DE7C4;
  v68[1] = v66;
  v68[2] = v95;
  v68[3] = v60;
  v69 = sub_1A3A314E0();
  v70 = v91;
  sub_1A3A30F90();
  LOBYTE(v58) = *(v70 + 1);
  sub_1A38DF564(v70, type metadata accessor for ModeWheelGestureState);
  v71 = v55 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FD9A8, &qword_1A3A6F218) + 36);
  *v71 = v69;
  *(v71 + 8) = v58;
  v72 = sub_1A3A2F650();
  LOBYTE(v58) = v73;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FD978, &qword_1A3A6F1F8);
  v75 = v55 + *(result + 36);
  *v75 = sub_1A393C140;
  *(v75 + 8) = 0;
  *(v75 + 16) = v72;
  *(v75 + 24) = v58 & 1;
  return result;
}

double sub_1A38D3A2C()
{
  v1 = sub_1A3A2FEE0();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for ChromeBottomBar(0);
  v6 = v0 + *(v5 + 44);
  v7 = *v6;
  if (*(v6 + 8) != 1)
  {
    sub_1A3A2EA60();
    sub_1A3A31C30();
    v9 = sub_1A3A305C0();
    sub_1A3A2F270();

    sub_1A3A2FED0();
    swift_getAtKeyPath();
    sub_1A3670FF4(v7, 0);
    (*(v2 + 8))(v4, v1);
    result = 0.0;
    if (v13)
    {
      return result;
    }

    goto LABEL_5;
  }

  result = 0.0;
  if ((v7 & 1) == 0)
  {
LABEL_5:
    v10 = (v0 + *(v5 + 48));
    v11 = v10[1];
    v13 = *v10;
    v14 = v11;
    v15 = v10[2];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FD750, &qword_1A3A6EE30);
    sub_1A3A30F90();
    return *&v12[1];
  }

  return result;
}

uint64_t sub_1A38D3BDC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1A3A2FEE0();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FDAB8, &qword_1A3A6F3B0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v29 - v9;
  sub_1A38D3EA0(a1, (&v29 - v9));
  v11 = sub_1A3A30640();
  v12 = (a1 + *(type metadata accessor for ChromeBottomBar(0) + 52));
  v13 = *v12;
  v14 = *(v12 + 8);
  sub_1A3A2EA60();
  if ((v14 & 1) == 0)
  {
    sub_1A3A31C30();
    v15 = sub_1A3A305C0();
    sub_1A3A2F270();

    sub_1A3A2FED0();
    swift_getAtKeyPath();

    (*(v5 + 8))(v7, v4);
    v13 = v30;
  }

  swift_getKeyPath(byte_1A3A6EFF0);
  v30 = v13;
  sub_1A38DF31C(&qword_1ED996608, type metadata accessor for ChromeViewModel, &unk_1A3A70668);
  sub_1A3A2F080();

  v16 = *(v13 + 416);

  if (!v16)
  {
    sub_1A3911D18(v17, v18);
  }

  sub_1A3A2F520();
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v26 = v25;
  sub_1A388F670(v10, a2, &qword_1EB0FDAB8, &qword_1A3A6F3B0);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FDAC0, &qword_1A3A6F3B8);
  v28 = a2 + *(result + 36);
  *v28 = v11;
  *(v28 + 8) = v20;
  *(v28 + 16) = v22;
  *(v28 + 24) = v24;
  *(v28 + 32) = v26;
  *(v28 + 40) = 0;
  return result;
}

uint64_t sub_1A38D3EA0@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v61 = a2;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FDAC8, &qword_1A3A6F3C0);
  MEMORY[0x1EEE9AC00](v60);
  v4 = &v54 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v56 = &v54 - v6;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FDAD0, &qword_1A3A6F3C8);
  MEMORY[0x1EEE9AC00](v57);
  v59 = &v54 - v7;
  v58 = type metadata accessor for GlassCircleElementButton(0);
  MEMORY[0x1EEE9AC00](v58);
  v9 = &v54 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1A3A2FEE0();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v54 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for ChromeBottomBar(0);
  v15 = a1 + v14[13];
  v16 = *v15;
  v17 = *(v15 + 8);
  sub_1A3A2EA60();
  if ((v17 & 1) == 0)
  {
    sub_1A3A31C30();
    v18 = sub_1A3A305C0();
    sub_1A3A2F270();

    sub_1A3A2FED0();
    swift_getAtKeyPath();

    (*(v11 + 8))(v13, v10);
    v16 = v62;
  }

  type metadata accessor for ChromeElementModel();
  v20 = sub_1A39B11D4(22, 2, v16, v19);

  if (v20)
  {
    v21 = v58;
    v22 = *(v58 + 20);
    v23 = *MEMORY[0x1E69816C0];
    v24 = sub_1A3A30EF0();
    (*(*(v24 - 8) + 104))(&v9[v22], v23, v24);
    KeyPath = swift_getKeyPath(byte_1A3A6EB70);
    *v9 = 22;
    *&v9[v21[6]] = 6;
    v26 = &v9[v21[8]];
    type metadata accessor for ChromeViewModel(0);
    sub_1A38DF31C(&qword_1ED996608, type metadata accessor for ChromeViewModel, &unk_1A3A70668);
    *v26 = sub_1A3A2F650();
    v26[8] = v27 & 1;
    v28 = &v9[v21[9]];
    *v28 = KeyPath;
    v28[8] = 0;
    sub_1A38DF4FC(v9, v59, type metadata accessor for GlassCircleElementButton);
    swift_storeEnumTagMultiPayload();
    sub_1A38DF31C(&qword_1ED996D38, type metadata accessor for GlassCircleElementButton, &unk_1A3A7908C);
    sub_1A38DF1AC(&qword_1EB0FDAD8, &qword_1EB0FDAC8, &qword_1A3A6F3C0, sub_1A38DF364);
    sub_1A3A301F0();
    return sub_1A38DF564(v9, type metadata accessor for GlassCircleElementButton);
  }

  else
  {
    type metadata accessor for ChromeViewModel(0);
    sub_1A38DF31C(&qword_1ED996608, type metadata accessor for ChromeViewModel, &unk_1A3A70668);
    v55 = sub_1A3A2F650();
    v31 = v30;
    v54 = swift_getKeyPath("\bMiG");
    v32 = (a1 + v14[18]);
    v33 = *v32;
    v34 = v32[1];
    sub_1A3A2EA50();
    v35 = sub_1A3A31530();
    v36 = sub_1A3A30460();
    sub_1A3A31590();
    v38 = v37;
    v40 = v39;
    v41 = v31 & 1;
    v68 = v31 & 1;
    v67 = 0;
    v42 = sub_1A38D1650();
    v43 = (a1 + v14[6]);
    v44 = *v43;
    v45 = *(v43 + 1);
    if (v42)
    {
      v46 = 1.0;
    }

    else
    {
      v46 = 0.0;
    }

    v65 = v44;
    v66 = v45;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FC3C8, &qword_1A3A6C090);
    sub_1A3A30FB0();
    v47 = v63;
    v48 = v64;
    v49 = &v4[*(v60 + 36)];
    *v49 = v62;
    *(v49 + 1) = v47;
    v49[16] = v48;
    v50 = &v49[*(type metadata accessor for DetectInteractionGestureModifier(0) + 20)];
    *v50 = swift_getKeyPath(byte_1A3A6EBA0);
    v50[8] = 0;
    v51 = *(type metadata accessor for ChromeScenePhase(0) + 20);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FD670, &qword_1A3A6F6C0);
    swift_storeEnumTagMultiPayload();
    v52 = v54;
    *v4 = v55;
    v4[8] = v41;
    *(v4 + 2) = v52;
    *(v4 + 12) = 0;
    *(v4 + 4) = v33;
    *(v4 + 5) = v34;
    *(v4 + 6) = v35;
    *(v4 + 14) = v36;
    *(v4 + 8) = v38;
    *(v4 + 9) = v40;
    v4[80] = 1;
    *(v4 + 11) = v46;
    v53 = v56;
    sub_1A388F670(v4, v56, &qword_1EB0FDAC8, &qword_1A3A6F3C0);
    sub_1A388F6D8(v53, v59, &qword_1EB0FDAC8, &qword_1A3A6F3C0);
    swift_storeEnumTagMultiPayload();
    sub_1A38DF31C(&qword_1ED996D38, type metadata accessor for GlassCircleElementButton, &unk_1A3A7908C);
    sub_1A38DF1AC(&qword_1EB0FDAD8, &qword_1EB0FDAC8, &qword_1A3A6F3C0, sub_1A38DF364);
    sub_1A3A301F0();
    return sub_1A388F740(v53, &qword_1EB0FDAC8, &qword_1A3A6F3C0);
  }
}

uint64_t sub_1A38D45AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1A3A2FEE0();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FDA60, &qword_1A3A6F2E0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v29 - v9;
  sub_1A38D4870(a1, (&v29 - v9));
  v11 = sub_1A3A30650();
  v12 = (a1 + *(type metadata accessor for ChromeBottomBar(0) + 52));
  v13 = *v12;
  v14 = *(v12 + 8);
  sub_1A3A2EA60();
  if ((v14 & 1) == 0)
  {
    sub_1A3A31C30();
    v15 = sub_1A3A305C0();
    sub_1A3A2F270();

    sub_1A3A2FED0();
    swift_getAtKeyPath();

    (*(v5 + 8))(v7, v4);
    v13 = v30;
  }

  swift_getKeyPath(byte_1A3A6EFF0);
  v30 = v13;
  sub_1A38DF31C(&qword_1ED996608, type metadata accessor for ChromeViewModel, &unk_1A3A70668);
  sub_1A3A2F080();

  v16 = *(v13 + 416);

  if (!v16)
  {
    sub_1A3911D18(v17, v18);
  }

  sub_1A3A2F520();
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v26 = v25;
  sub_1A388F670(v10, a2, &qword_1EB0FDA60, &qword_1A3A6F2E0);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FDA68, &qword_1A3A6F2E8);
  v28 = a2 + *(result + 36);
  *v28 = v11;
  *(v28 + 8) = v20;
  *(v28 + 16) = v22;
  *(v28 + 24) = v24;
  *(v28 + 32) = v26;
  *(v28 + 40) = 0;
  return result;
}

uint64_t sub_1A38D4870@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v81 = a2;
  v3 = type metadata accessor for GlassCircleElementButton(0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v68 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FDA70, &qword_1A3A6F2F0);
  MEMORY[0x1EEE9AC00](v72);
  v75 = &v68 - v6;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FDA78, &qword_1A3A6F2F8);
  MEMORY[0x1EEE9AC00](v80);
  v74 = &v68 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v76 = &v68 - v9;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FDA80, &qword_1A3A6F300);
  MEMORY[0x1EEE9AC00](v77);
  v79 = &v68 - v10;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FDA88, &qword_1A3A6F308);
  MEMORY[0x1EEE9AC00](v78);
  v12 = &v68 - v11;
  v13 = sub_1A3A2FEE0();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v68 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for ChromeBottomBar(0);
  v18 = *(v17 + 52);
  v73 = a1;
  v19 = (a1 + v18);
  v20 = *v19;
  LODWORD(a1) = *(v19 + 8);
  sub_1A3A2EA60();
  v21 = v20;
  v71 = a1;
  if ((a1 & 1) == 0)
  {
    sub_1A3A31C30();
    v22 = sub_1A3A305C0();
    sub_1A3A2F270();

    sub_1A3A2FED0();
    swift_getAtKeyPath();

    (*(v14 + 8))(v16, v13);
    v21 = v82;
  }

  v69 = v14;
  v70 = v13;
  swift_getKeyPath(byte_1A3A6F310);
  v82 = v21;
  sub_1A38DF31C(&qword_1ED996608, type metadata accessor for ChromeViewModel, &unk_1A3A70668);
  sub_1A3A2F080();

  v23 = *(v21 + 592);

  LOBYTE(v23) = sub_1A3990440(v23);
  v24 = v3[5];
  v25 = sub_1A3A30EF0();
  v26 = *(*(v25 - 8) + 104);
  if (v23)
  {
    v26(&v12[v24], *MEMORY[0x1E69816E0], v25);
    KeyPath = swift_getKeyPath(byte_1A3A6EB70);
    *v12 = 34;
    *&v12[v3[6]] = 7;
    v28 = &v12[v3[8]];
    type metadata accessor for ChromeViewModel(0);
    *v28 = sub_1A3A2F650();
    v28[8] = v29 & 1;
    v30 = &v12[v3[9]];
    *v30 = KeyPath;
    v30[8] = 0;
    v31 = sub_1A3A2F650();
    LOBYTE(KeyPath) = v32;
    v33 = &v12[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FDAA0, &qword_1A3A6F348) + 36)];
    *v33 = 1;
    *(v33 + 1) = v31;
    v33[16] = KeyPath & 1;
    v34 = sub_1A3A2F650();
    LOBYTE(KeyPath) = v35;
    v36 = &v12[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FDA98, &qword_1A3A6F340) + 36)];
    *v36 = v34;
    v36[8] = KeyPath & 1;
    v37 = sub_1A3A2F650();
    v39 = v38;
    v40 = &v12[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FDA90, &qword_1A3A6F338) + 36)];
    *v40 = 1;
    *(v40 + 1) = v37;
    v40[16] = v39 & 1;
    sub_1A3A2EA60();
    if ((v71 & 1) == 0)
    {
      sub_1A3A31C30();
      v41 = sub_1A3A305C0();
      sub_1A3A2F270();

      sub_1A3A2FED0();
      swift_getAtKeyPath();

      (*(v69 + 8))(v16, v70);
      v20 = v82;
    }

    swift_getKeyPath("pMiG");
    v82 = v20;
    sub_1A3A2F080();

    v42 = *(v20 + 1179);

    v43 = swift_getKeyPath("PMiG");
    v44 = swift_allocObject();
    *(v44 + 16) = v42;
    v45 = v79;
    v46 = &v12[*(v78 + 36)];
    *v46 = v43;
    v46[1] = sub_1A38BF6A0;
    v46[2] = v44;
    v47 = &qword_1EB0FDA88;
    v48 = &qword_1A3A6F308;
    sub_1A388F6D8(v12, v45, &qword_1EB0FDA88, &qword_1A3A6F308);
    swift_storeEnumTagMultiPayload();
    sub_1A38DEE24();
    sub_1A38DF1AC(&qword_1EB0FDAA8, &qword_1EB0FDA78, &qword_1A3A6F2F8, sub_1A38DF260);
    sub_1A3A301F0();
    v49 = v12;
  }

  else
  {
    v26(&v5[v24], *MEMORY[0x1E69816C0], v25);
    v50 = swift_getKeyPath(byte_1A3A6EB70);
    *v5 = 8;
    *&v5[v3[6]] = 7;
    v51 = &v5[v3[8]];
    type metadata accessor for ChromeViewModel(0);
    *v51 = sub_1A3A2F650();
    v51[8] = v52 & 1;
    v53 = &v5[v3[9]];
    *v53 = v50;
    v53[8] = 0;
    v54 = v73;
    if (sub_1A38D1AD0())
    {
      v55 = 1.0;
    }

    else
    {
      v55 = 0.0;
    }

    v56 = v75;
    sub_1A38DEDBC(v5, v75, type metadata accessor for GlassCircleElementButton);
    *(v56 + *(v72 + 36)) = v55;
    v57 = v54 + *(v17 + 28);
    v58 = *v57;
    v59 = *(v57 + 8);
    v85 = v58;
    v86 = v59;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FC3C8, &qword_1A3A6C090);
    sub_1A3A30FB0();
    v60 = v83;
    v61 = v84;
    v62 = v74;
    v63 = &v74[*(v80 + 36)];
    *v63 = v82;
    *(v63 + 1) = v60;
    v63[16] = v61;
    v64 = &v63[*(type metadata accessor for DetectInteractionGestureModifier(0) + 20)];
    *v64 = swift_getKeyPath(byte_1A3A6EBA0);
    v64[8] = 0;
    v65 = *(type metadata accessor for ChromeScenePhase(0) + 20);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FD670, &qword_1A3A6F6C0);
    swift_storeEnumTagMultiPayload();
    sub_1A388F670(v56, v62, &qword_1EB0FDA70, &qword_1A3A6F2F0);
    v47 = &qword_1EB0FDA78;
    v48 = &qword_1A3A6F2F8;
    v66 = v76;
    sub_1A388F670(v62, v76, &qword_1EB0FDA78, &qword_1A3A6F2F8);
    sub_1A388F6D8(v66, v79, &qword_1EB0FDA78, &qword_1A3A6F2F8);
    swift_storeEnumTagMultiPayload();
    sub_1A38DEE24();
    sub_1A38DF1AC(&qword_1EB0FDAA8, &qword_1EB0FDA78, &qword_1A3A6F2F8, sub_1A38DF260);
    sub_1A3A301F0();
    v49 = v66;
  }

  return sub_1A388F740(v49, v47, v48);
}

void sub_1A38D51B0(uint64_t a1)
{
  v2 = type metadata accessor for ChromeBottomBar(0);
  v41 = *(v2 - 1);
  v3 = *(v41 + 8);
  MEMORY[0x1EEE9AC00](v2);
  v42 = &v39 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1A3A2FEE0();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a1 + v2[13];
  v9 = *v8;
  v10 = *(v8 + 8);
  sub_1A3A2EA60();
  v11 = v9;
  v45 = v10;
  if ((v10 & 1) == 0)
  {
    sub_1A3A31C30();
    v12 = sub_1A3A305C0();
    sub_1A3A2F270();

    sub_1A3A2FED0();
    swift_getAtKeyPath();

    (*(v5 + 8))(v7, v4);
    v11 = v51;
  }

  v43 = v4;
  v44 = v5;
  swift_getKeyPath(" QiG");
  *&v51 = v11;
  sub_1A38DF31C(&qword_1ED996608, type metadata accessor for ChromeViewModel, &unk_1A3A70668);
  sub_1A3A2F080();

  if (*(v11 + 1068) == 1 || (v13 = *(sub_1A395BE78(v11) + 16), , !v13))
  {
LABEL_15:

    return;
  }

  swift_getKeyPath(byte_1A3A6EF88);
  *&v51 = v11;
  sub_1A3A2F080();

  v14 = *(v11 + 608);

  if ((v14 & 1) == 0)
  {
    v15 = (a1 + v2[12]);
    v16 = v15[1];
    v51 = *v15;
    v52 = v16;
    v53 = v15[2];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FD750, &qword_1A3A6EE30);
    sub_1A3A30F90();
    if ((v50 & 1) == 0)
    {
      sub_1A3A2EA60();
      v17 = v9;
      v18 = v44;
      if ((v45 & 1) == 0)
      {
        sub_1A3A31C30();
        v19 = sub_1A3A305C0();
        sub_1A3A2F270();

        sub_1A3A2FED0();
        swift_getAtKeyPath();

        (*(v18 + 8))(v7, v43);
        v17 = v51;
      }

      v20 = sub_1A395BE78(v17);

      v21 = *(v20 + 16);

      if (v21)
      {
        v40 = type metadata accessor for ChromeBottomBar;
        v22 = v42;
        sub_1A38DF4FC(a1, v42, type metadata accessor for ChromeBottomBar);
        sub_1A3A31AA0();
        v23 = sub_1A3A31A90();
        v24 = (*(v41 + 80) + 32) & ~*(v41 + 80);
        v25 = swift_allocObject();
        v26 = MEMORY[0x1E69E85E0];
        *(v25 + 16) = v23;
        *(v25 + 24) = v26;
        v41 = type metadata accessor for ChromeBottomBar;
        sub_1A38DEDBC(v22, v25 + v24, type metadata accessor for ChromeBottomBar);
        sub_1A38DF4FC(a1, v22, v40);
        v27 = sub_1A3A31A90();
        v28 = swift_allocObject();
        *(v28 + 16) = v27;
        *(v28 + 24) = MEMORY[0x1E69E85E0];
        sub_1A38DEDBC(v22, v28 + v24, v41);
        sub_1A3A311C0();
        LOBYTE(v48) = 1;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FC598, &qword_1A3A6FC80);
        sub_1A3A311A0();

        sub_1A3A2EA60();
        v29 = v9;
        if ((v45 & 1) == 0)
        {
          sub_1A3A31C30();
          v30 = sub_1A3A305C0();
          sub_1A3A2F270();

          sub_1A3A2FED0();
          swift_getAtKeyPath();

          (*(v44 + 8))(v7, v43);
          v29 = v51;
        }

        v31 = v29[153];
        v32 = v29[154];
        __swift_project_boxed_opaque_existential_1(v29 + 150, v31);
        (*(v32 + 8))(4, 0, 0, 96, v29, v31, v32);

        sub_1A3A2EA60();
        if ((v45 & 1) == 0)
        {
          sub_1A3A31C30();
          v33 = sub_1A3A305C0();
          sub_1A3A2F270();

          sub_1A3A2FED0();
          swift_getAtKeyPath();

          (*(v44 + 8))(v7, v43);
          v9 = v51;
        }

        v34 = v9[153];
        v35 = v9[154];
        __swift_project_boxed_opaque_existential_1(v9 + 150, v34);
        (*(v35 + 8))(4, 0, 0, 92, v9, v34, v35);
      }

      else
      {
        v36 = (a1 + v2[10]);
        v38 = *v36;
        v37 = v36[1];
        *&v51 = *v36;
        *(&v51 + 1) = v37;
        sub_1A3A2EA60();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FD720, &unk_1A3A6ED80);
        sub_1A3A30F90();
        if (__OFADD__(v47, 1))
        {
          __break(1u);
          return;
        }

        v48 = v38;
        v49 = v37;
        v46 = v47 + 1;
        sub_1A3A30FA0();
      }

      goto LABEL_15;
    }
  }
}

void sub_1A38D5900(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v46 = a1;
  v5 = sub_1A3A2FEE0();
  v48 = *(v5 - 8);
  v49 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v47 = &v40[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_1A3A310F0();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v40[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = sub_1A38D5F70();
  if (qword_1ED996458 != -1)
  {
    swift_once();
  }

  v12 = __swift_project_value_buffer(v7, qword_1ED99D850);
  v13 = *(v8 + 16);
  v13(v10, v12, v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FDA40, &unk_1A3A6F290);
  v14 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FDA48, &qword_1A3A78090) - 8);
  v15 = (*(*v14 + 80) + 32) & ~*(*v14 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_1A3A681C0;
  v17 = v16 + v15;
  v13(v17, v10, v7);
  *(v17 + v14[13]) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FDA50, &qword_1A3A6F2A0);
  v18 = swift_allocObject();
  *(v18 + 40) = 0;
  v19 = *(*v18 + 136);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FDA58, &qword_1A3A6F2A8);
  (*(*(v20 - 8) + 56))(v18 + v19, 1, 1, v20);
  *(v18 + *(*v18 + 144)) = 0x3FA1111111111111;
  sub_1A3A2F0B0();
  (*(v8 + 8))(v10, v7);
  *(v18 + 16) = v16;
  *(v18 + 24) = xmmword_1A3A6EB10;
  v50 = v18;
  sub_1A3A30F80();
  v21 = v51;
  v45 = v52;
  KeyPath = swift_getKeyPath("\bNiG");
  v43 = sub_1A38D14F8();
  v22 = (a2 + *(type metadata accessor for ChromeBottomBar(0) + 52));
  v23 = *v22;
  v24 = *(v22 + 8);
  sub_1A3A2EA60();
  v25 = v23;
  if ((v24 & 1) == 0)
  {
    sub_1A3A31C30();
    v26 = sub_1A3A305C0();
    sub_1A3A2F270();

    v27 = v47;
    sub_1A3A2FED0();
    swift_getAtKeyPath();

    (*(v48 + 8))(v27, v49);
    v25 = v51;
  }

  swift_getKeyPath(byte_1A3A6F100);
  v51 = v25;
  sub_1A38DF31C(&qword_1ED996608, type metadata accessor for ChromeViewModel, &unk_1A3A70668);
  sub_1A3A2F080();

  v42 = *(v25 + 848);
  v28 = *(v25 + 856);

  if (v28)
  {
    __break(1u);
  }

  else
  {
    LOBYTE(v50) = 0;
    v41 = sub_1A3A30460();
    v29 = v50;
    v30 = sub_1A38D14F8();
    sub_1A3A2EA60();
    if ((v24 & 1) == 0)
    {
      sub_1A3A31C30();
      v31 = sub_1A3A305C0();
      sub_1A3A2F270();

      v32 = v47;
      sub_1A3A2FED0();
      swift_getAtKeyPath();

      (*(v48 + 8))(v32, v49);
      v23 = v51;
    }

    v33 = v21;
    swift_getKeyPath(byte_1A3A6F100);
    v51 = v23;
    sub_1A3A2F080();

    v34 = *(v23 + 848);
    v35 = *(v23 + 856);

    if ((v35 & 1) == 0)
    {
      v36 = (v43 & 1) == 0;
      v37 = v46 & 1;
      v38 = sub_1A3A30470();
      *a3 = v11;
      *(a3 + 8) = v37;
      v39 = v45;
      *(a3 + 16) = v33;
      *(a3 + 24) = v39;
      *(a3 + 32) = xmmword_1A3A6EB20;
      *(a3 + 48) = KeyPath;
      *(a3 + 56) = v29;
      *(a3 + 64) = v36;
      *(a3 + 72) = 0x70756F4C65646F4DLL;
      *(a3 + 80) = 0xE900000000000065;
      *(a3 + 88) = v42;
      *(a3 + 96) = v41;
      *(a3 + 100) = 1;
      *(a3 + 104) = (v30 & 1) == 0;
      *(a3 + 112) = 0xD000000000000015;
      *(a3 + 120) = 0x80000001A3AA2000;
      *(a3 + 128) = v34;
      *(a3 + 136) = v38;
      *(a3 + 140) = 1;
      return;
    }
  }

  __break(1u);
}

double sub_1A38D5F70()
{
  v1 = sub_1A3A2FEE0();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for ChromeBottomBar(0);
  v6 = v0 + *(v5 + 44);
  v7 = *v6;
  if (*(v6 + 8) != 1)
  {
    sub_1A3A2EA60();
    sub_1A3A31C30();
    v9 = sub_1A3A305C0();
    sub_1A3A2F270();

    sub_1A3A2FED0();
    swift_getAtKeyPath();
    sub_1A3670FF4(v7, 0);
    (*(v2 + 8))(v4, v1);
    result = 24.0;
    if (v13)
    {
      return result;
    }

    goto LABEL_5;
  }

  result = 24.0;
  if ((v7 & 1) == 0)
  {
LABEL_5:
    v10 = (v0 + *(v5 + 48));
    v11 = v10[1];
    v13 = *v10;
    v14 = v11;
    v15 = v10[2];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FD750, &qword_1A3A6EE30);
    sub_1A3A30F90();
    return (v12[1] * 0.5 + 1.0) * 24.0;
  }

  return result;
}

void sub_1A38D6138(uint64_t a1@<X0>, void *a2@<X8>)
{
  v125 = a2;
  v108 = type metadata accessor for ChromeBottomControlPanel(0);
  MEMORY[0x1EEE9AC00](v108);
  v109 = &v100 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FD8C0, &qword_1A3A6F130);
  MEMORY[0x1EEE9AC00](v100);
  v102 = &v100 - v4;
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FD8C8, &qword_1A3A6F138);
  MEMORY[0x1EEE9AC00](v101);
  v105 = &v100 - v5;
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FD8D0, &qword_1A3A6F140);
  MEMORY[0x1EEE9AC00](v103);
  v106 = &v100 - v6;
  v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FD8D8, &qword_1A3A6F148);
  MEMORY[0x1EEE9AC00](v122);
  v104 = &v100 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v107 = &v100 - v9;
  v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FD8E0, &qword_1A3A6F150);
  MEMORY[0x1EEE9AC00](v120);
  v121 = &v100 - v10;
  v112 = sub_1A3A2FEE0();
  v111 = *(v112 - 8);
  MEMORY[0x1EEE9AC00](v112);
  v110 = &v100 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v117 = type metadata accessor for ChromeControlPanelExpandedContent(0);
  MEMORY[0x1EEE9AC00](v117);
  v118 = &v100 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FD8E8, &qword_1A3A6F158);
  MEMORY[0x1EEE9AC00](v113);
  v115 = &v100 - v13;
  v119 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FD8F0, &qword_1A3A6F160);
  MEMORY[0x1EEE9AC00](v119);
  v114 = &v100 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v116 = &v100 - v16;
  v124 = type metadata accessor for ChromeBottomBar(0);
  v17 = *(v124 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v124);
  v19 = &v100 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A38DF4FC(a1, v19, type metadata accessor for ChromeBottomBar);
  sub_1A3A31AA0();
  v20 = sub_1A3A31A90();
  v21 = *(v17 + 80);
  v123 = ~v21;
  v22 = (v21 + 32) & ~v21;
  v23 = swift_allocObject();
  v24 = MEMORY[0x1E69E85E0];
  *(v23 + 16) = v20;
  *(v23 + 24) = v24;
  sub_1A38DEDBC(v19, v23 + v22, type metadata accessor for ChromeBottomBar);
  v127 = a1;
  sub_1A38DF4FC(a1, v19, type metadata accessor for ChromeBottomBar);
  v25 = sub_1A3A31A90();
  v126 = v18;
  v26 = swift_allocObject();
  *(v26 + 16) = v25;
  *(v26 + 24) = v24;
  sub_1A38DEDBC(v19, v26 + v22, type metadata accessor for ChromeBottomBar);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FD728, &qword_1A3A6EDB8);
  sub_1A3A311C0();
  v27 = v130;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FD730, &qword_1A3A6EDC0);
  MEMORY[0x1A58F7010](v128, v28);
  v29 = v128[0];
  if (v128[0] == 35)
  {

    sub_1A3890F1C(v27);
    v30 = v127;
    sub_1A38DF4FC(v127, v19, type metadata accessor for ChromeBottomBar);
    v31 = sub_1A3A31A90();
    v32 = swift_allocObject();
    *(v32 + 16) = v31;
    *(v32 + 24) = MEMORY[0x1E69E85E0];
    sub_1A38DEDBC(v19, v32 + v22, type metadata accessor for ChromeBottomBar);
    sub_1A38DF4FC(v30, v19, type metadata accessor for ChromeBottomBar);
    v33 = sub_1A3A31A90();
    v34 = swift_allocObject();
    *(v34 + 16) = v33;
    *(v34 + 24) = MEMORY[0x1E69E85E0];
    sub_1A38DEDBC(v19, v34 + v22, type metadata accessor for ChromeBottomBar);
    sub_1A3A311C0();
    v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FC598, &qword_1A3A6FC80);
    MEMORY[0x1A58F7010](v128, v35);
    LOBYTE(v31) = v128[0];

    if ((v31 & 1) == 0)
    {
      v62 = 1;
      v63 = v125;
LABEL_19:
      v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FD8F8, &qword_1A3A6F168);
      (*(*(v99 - 8) + 56))(v63, v62, 1, v99);
      return;
    }

    sub_1A38DF4FC(v30, v19, type metadata accessor for ChromeBottomBar);
    v36 = (v21 + 16) & v123;
    v37 = swift_allocObject();
    sub_1A38DEDBC(v19, v37 + v36, type metadata accessor for ChromeBottomBar);
    KeyPath = swift_getKeyPath("8OiG");
    v39 = v108;
    v40 = v109;
    *&v109[*(v108 + 28)] = KeyPath;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FCE78, &unk_1A3A6F1A0);
    swift_storeEnumTagMultiPayload();
    *v40 = sub_1A38DD80C;
    *(v40 + 8) = v37;
    v128[0] = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FD900, &qword_1A3A75150);
    sub_1A3A30F80();
    *(v40 + 16) = v129;
    sub_1A3A30320();
    v41 = v40 + *(v39 + 32);
    type metadata accessor for ChromeViewModel(0);
    sub_1A38DF31C(&qword_1ED996608, type metadata accessor for ChromeViewModel, &unk_1A3A70668);
    *v41 = sub_1A3A2F650();
    *(v41 + 8) = v42 & 1;
    v43 = sub_1A38D14F8();
    v44 = v30 + *(v124 + 52);
    v45 = *v44;
    LOBYTE(v41) = *(v44 + 8);
    sub_1A3A2EA60();
    if ((v41 & 1) == 0)
    {
      sub_1A3A31C30();
      v46 = sub_1A3A305C0();
      sub_1A3A2F270();

      v47 = v110;
      sub_1A3A2FED0();
      swift_getAtKeyPath();

      (*(v111 + 8))(v47, v112);
      v45 = v129;
    }

    swift_getKeyPath(byte_1A3A6F100);
    *&v129 = v45;
    sub_1A3A2F080();

    v48 = *(v45 + 848);
    v49 = *(v45 + 856);

    if ((v49 & 1) == 0)
    {
      v50 = sub_1A3A30470();
      v51 = v102;
      sub_1A38DEDBC(v40, v102, type metadata accessor for ChromeBottomControlPanel);
      v52 = v51 + *(v100 + 36);
      *v52 = (v43 & 1) == 0;
      *(v52 + 8) = 0xD000000000000015;
      *(v52 + 16) = 0x80000001A3AA2000;
      *(v52 + 24) = v48;
      *(v52 + 32) = v50;
      *(v52 + 36) = 1;
      sub_1A38D2024();
      v54 = v53;
      sub_1A38D22D8();
      v56 = v55;
      v57 = v105;
      sub_1A388F670(v51, v105, &qword_1EB0FD8C0, &qword_1A3A6F130);
      v58 = v57 + *(v101 + 36);
      *v58 = v54;
      *(v58 + 8) = v56;
      *(v58 + 16) = xmmword_1A3A6EB30;
      if (sub_1A38D14F8())
      {
        v59 = sub_1A3A2F7B0();
      }

      else
      {
        sub_1A3A31590();
        *(&v129 + 1) = v89;
        v130 = v90;
        v131 = 0x4020000000000000;
        v128[0] = 0x3FF0000000000000;
        v128[1] = v89;
        v128[2] = v90;
        v128[3] = 0x4020000000000000;
        *&v129 = 0;
        sub_1A38BCFA8();
        v59 = sub_1A3A2F7E0();
      }

      v91 = v59;
      v63 = v125;
      v92 = v106;
      sub_1A388F670(v57, v106, &qword_1EB0FD8C8, &qword_1A3A6F138);
      *(v92 + *(v103 + 36)) = v91;
      v93 = sub_1A3A31480();
      v95 = v94;
      v96 = v104;
      v97 = &v104[*(v122 + 36)];
      v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FD908, &qword_1A3A6F1B0);
      sub_1A38D7E0C(v30, v97 + *(v98 + 36));
      *v97 = v93;
      v97[1] = v95;
      sub_1A388F670(v92, v96, &qword_1EB0FD8D0, &qword_1A3A6F140);
      v86 = &qword_1EB0FD8D8;
      v87 = &qword_1A3A6F148;
      v88 = v107;
      sub_1A388F670(v96, v107, &qword_1EB0FD8D8, &qword_1A3A6F148);
      sub_1A388F6D8(v88, v121, &qword_1EB0FD8D8, &qword_1A3A6F148);
      swift_storeEnumTagMultiPayload();
      sub_1A38DD870();
      sub_1A38DDA10();
      goto LABEL_18;
    }
  }

  else
  {

    sub_1A3890F1C(v27);
    v60 = v127;
    if (sub_1A38D14F8())
    {
      v61 = 0;
    }

    else
    {
      v61 = sub_1A3A018A8(v29, 0x19uLL) ^ 1;
    }

    v64 = v118;
    sub_1A38DF4FC(v60, v19, type metadata accessor for ChromeBottomBar);
    v65 = (v21 + 16) & v123;
    v66 = swift_allocObject();
    sub_1A38DEDBC(v19, v66 + v65, type metadata accessor for ChromeBottomBar);
    *v64 = v29;
    *(v64 + 8) = sub_1A38DDCF4;
    *(v64 + 16) = v66;
    LOBYTE(v128[0]) = 0;
    sub_1A3A30F80();
    v67 = *(&v129 + 1);
    *(v64 + 24) = v129;
    *(v64 + 32) = v67;
    v68 = v117;
    sub_1A3A30320();
    v69 = v64 + *(v68 + 32);
    type metadata accessor for ChromeViewModel(0);
    sub_1A38DF31C(&qword_1ED996608, type metadata accessor for ChromeViewModel, &unk_1A3A70668);
    *v69 = sub_1A3A2F650();
    *(v69 + 8) = v70 & 1;
    v71 = v60 + *(v124 + 52);
    v72 = *v71;
    LOBYTE(v68) = *(v71 + 8);
    sub_1A3A2EA60();
    if ((v68 & 1) == 0)
    {
      sub_1A3A31C30();
      v73 = sub_1A3A305C0();
      sub_1A3A2F270();

      v74 = v110;
      sub_1A3A2FED0();
      swift_getAtKeyPath();

      (*(v111 + 8))(v74, v112);
      v72 = v129;
    }

    swift_getKeyPath(byte_1A3A6F100);
    *&v129 = v72;
    sub_1A3A2F080();

    v75 = *(v72 + 848);
    v76 = *(v72 + 856);

    if ((v76 & 1) == 0)
    {
      v77 = sub_1A3A30470();
      v78 = v115;
      sub_1A38DEDBC(v64, v115, type metadata accessor for ChromeControlPanelExpandedContent);
      v79 = v78 + *(v113 + 36);
      *v79 = v61 & 1;
      *(v79 + 8) = 0xD000000000000015;
      *(v79 + 16) = 0x80000001A3AA2000;
      *(v79 + 24) = v75;
      *(v79 + 32) = v77;
      *(v79 + 36) = 1;
      v80 = swift_getKeyPath("8OiG");
      v81 = v114;
      v82 = &v114[*(v119 + 36)];
      v83 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FD938, &qword_1A3A6F1C0) + 28);
      v84 = *MEMORY[0x1E697F680];
      v85 = sub_1A3A30090();
      (*(*(v85 - 8) + 104))(v82 + v83, v84, v85);
      *v82 = v80;
      sub_1A388F670(v78, v81, &qword_1EB0FD8E8, &qword_1A3A6F158);
      v86 = &qword_1EB0FD8F0;
      v87 = &qword_1A3A6F160;
      v88 = v116;
      sub_1A388F670(v81, v116, &qword_1EB0FD8F0, &qword_1A3A6F160);
      sub_1A388F6D8(v88, v121, &qword_1EB0FD8F0, &qword_1A3A6F160);
      swift_storeEnumTagMultiPayload();
      sub_1A38DD870();
      sub_1A38DDA10();
      v63 = v125;
LABEL_18:
      sub_1A3A301F0();
      sub_1A388F740(v88, v86, v87);
      v62 = 0;
      goto LABEL_19;
    }

    __break(1u);
  }

  __break(1u);
}

uint64_t sub_1A38D7218(uint64_t a1)
{
  v2 = type metadata accessor for ChromeBottomBar(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  sub_1A38DF4FC(a1, v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ChromeBottomBar);
  sub_1A3A31AA0();
  v5 = sub_1A3A31A90();
  v6 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v7 = swift_allocObject();
  v8 = MEMORY[0x1E69E85E0];
  *(v7 + 16) = v5;
  *(v7 + 24) = v8;
  sub_1A38DEDBC(v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + v6, type metadata accessor for ChromeBottomBar);
  sub_1A38DF4FC(a1, v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ChromeBottomBar);
  v9 = sub_1A3A31A90();
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = v8;
  sub_1A38DEDBC(v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v10 + v6, type metadata accessor for ChromeBottomBar);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FD728, &qword_1A3A6EDB8);
  sub_1A3A311C0();
  v11 = v13[3];
  v13[0] = 35;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FD730, &qword_1A3A6EDC0);
  sub_1A3A311A0();

  return sub_1A3890F1C(v11);
}

void sub_1A38D7444(unint64_t a1)
{
  v2 = v1;
  v65 = a1;
  v64 = type metadata accessor for ChromeElementState(0);
  MEMORY[0x1EEE9AC00](v64);
  v63 = &v61 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for ChromeBottomBar(0);
  v62 = *(v4 - 8);
  v5 = *(v62 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v6 = sub_1A3A2FEE0();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v61 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = v1 + *(v4 + 52);
  v11 = *v10;
  v12 = *(v10 + 8);
  sub_1A3A2EA60();
  v13 = v11;
  v69 = v12;
  if ((v12 & 1) == 0)
  {
    sub_1A3A31C30();
    v14 = sub_1A3A305C0();
    sub_1A3A2F270();

    sub_1A3A2FED0();
    swift_getAtKeyPath();

    (*(v7 + 8))(v9, v6);
    v13 = v72;
  }

  v67 = v6;
  v68 = v9;
  v66 = v7;
  swift_getKeyPath(byte_1A3A6ED90);
  *&v72 = v13;
  sub_1A38DF31C(&qword_1ED996608, type metadata accessor for ChromeViewModel, &unk_1A3A70668);
  sub_1A3A2F080();

  if (*(v13 + 48) != 1)
  {
    goto LABEL_4;
  }

  swift_getKeyPath(byte_1A3A6EE88);
  *&v72 = v13;
  sub_1A3A2F080();

  v15 = *(v13 + 1168);

  if ((v15 & 1) == 0)
  {
    v16 = (v2 + *(v4 + 48));
    v17 = v16[1];
    v72 = *v16;
    v73 = v17;
    v74 = v16[2];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FD750, &qword_1A3A6EE30);
    sub_1A3A30F90();
    if ((v71 & 1) == 0)
    {
      sub_1A3A2EA60();
      v18 = v11;
      v19 = v67;
      v20 = v68;
      if ((v69 & 1) == 0)
      {
        sub_1A3A31C30();
        v21 = sub_1A3A305C0();
        sub_1A3A2F270();

        sub_1A3A2FED0();
        swift_getAtKeyPath();

        (*(v66 + 8))(v20, v19);
        v18 = v72;
      }

      v22 = v65;
      sub_1A394A364(v65, v18);
      v24 = v23;

      if (v24)
      {
        sub_1A38DF4FC(v2, &v61 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ChromeBottomBar);
        sub_1A3A31AA0();
        v25 = sub_1A3A31A90();
        v26 = (*(v62 + 80) + 32) & ~*(v62 + 80);
        v27 = swift_allocObject();
        v28 = MEMORY[0x1E69E85E0];
        *(v27 + 16) = v25;
        *(v27 + 24) = v28;
        sub_1A38DEDBC(&v61 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v27 + v26, type metadata accessor for ChromeBottomBar);
        sub_1A38DF4FC(v2, &v61 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ChromeBottomBar);
        v29 = sub_1A3A31A90();
        v30 = v67;
        v31 = swift_allocObject();
        *(v31 + 16) = v29;
        *(v31 + 24) = MEMORY[0x1E69E85E0];
        sub_1A38DEDBC(&v61 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v31 + v26, type metadata accessor for ChromeBottomBar);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FD728, &qword_1A3A6EDB8);
        sub_1A3A311C0();
        v32 = v73;
        v70 = v65;
        sub_1A38A8F64(v65);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FD730, &qword_1A3A6EDC0);
        sub_1A3A311A0();

        sub_1A3890F1C(v32);
      }

      else
      {
        sub_1A3A2EA60();
        v33 = v11;
        v34 = v69;
        if ((v69 & 1) == 0)
        {
          sub_1A3A31C30();
          v35 = sub_1A3A305C0();
          sub_1A3A2F270();

          sub_1A3A2FED0();
          swift_getAtKeyPath();

          (*(v66 + 8))(v20, v19);
          v33 = v72;
        }

        swift_getKeyPath(byte_1A3A6F1D0);
        *&v72 = v33;
        sub_1A3A2F080();

        if (!v33[149])
        {
          __break(1u);
          return;
        }

        sub_1A3A2EA60();
        v36 = sub_1A38BC058(v22);

        v38 = v63;
        (*(v36 + 56))(v37);

        v39 = *(v38 + *(v64 + 44));
        sub_1A3A2EA60();
        sub_1A38DF564(v38, type metadata accessor for ChromeElementState);
        v40 = v39(4, 0);
        v42 = v41;
        v44 = v43;
        v46 = v45;
        LODWORD(v38) = v45;

        v47 = v38 > 0xFB;
        v30 = v67;
        if (v47)
        {
          goto LABEL_20;
        }

        sub_1A3A2EA60();
        v48 = v11;
        if ((v34 & 1) == 0)
        {
          sub_1A3A31C30();
          v49 = sub_1A3A305C0();
          sub_1A3A2F270();

          v50 = v68;
          sub_1A3A2FED0();
          swift_getAtKeyPath();

          (*(v66 + 8))(v50, v30);
          v48 = v72;
        }

        v51 = v48[153];
        v52 = v48[154];
        __swift_project_boxed_opaque_existential_1(v48 + 150, v51);
        (*(v52 + 8))(v40, v42, v44, v46, v48, v51, v52);

        sub_1A3890EA8(v40, v42, v44, v46);
      }

      v34 = v69;
LABEL_20:
      sub_1A3A2EA60();
      v53 = v11;
      v54 = v68;
      if ((v34 & 1) == 0)
      {
        sub_1A3A31C30();
        v55 = sub_1A3A305C0();
        sub_1A3A2F270();

        sub_1A3A2FED0();
        swift_getAtKeyPath();

        (*(v66 + 8))(v54, v30);
        v53 = v72;
      }

      v56 = v53[153];
      v57 = v53[154];
      __swift_project_boxed_opaque_existential_1(v53 + 150, v56);
      (*(v57 + 8))(4, 0, 0, 96, v53, v56, v57);

      sub_1A3A2EA60();
      if ((v34 & 1) == 0)
      {
        sub_1A3A31C30();
        v58 = sub_1A3A305C0();
        sub_1A3A2F270();

        sub_1A3A2FED0();
        swift_getAtKeyPath();

        (*(v66 + 8))(v54, v30);
        v11 = v72;
      }

      v59 = v11[153];
      v60 = v11[154];
      __swift_project_boxed_opaque_existential_1(v11 + 150, v59);
      (*(v60 + 8))(4, 0, 0, 92, v11, v59, v60);
LABEL_4:
    }
  }
}

void sub_1A38D7E0C(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1A3A2FEE0();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1A3A2FBC0();
  MEMORY[0x1EEE9AC00](v8);
  v11 = (&v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_1EB0FC130 != -1)
  {
    v25 = v9;
    swift_once();
    v9 = v25;
  }

  if (*&qword_1EB0FE140 <= 0.0)
  {
    v12 = 38.0;
  }

  else
  {
    v12 = *&qword_1EB0FE140;
  }

  v13 = *(v9 + 20);
  v14 = *MEMORY[0x1E697F468];
  v15 = sub_1A3A30000();
  (*(*(v15 - 8) + 104))(v11 + v13, v14, v15);
  *v11 = v12;
  v11[1] = v12;
  v16 = sub_1A38D14F8();
  v17 = (a1 + *(type metadata accessor for ChromeBottomBar(0) + 52));
  v18 = *v17;
  v19 = *(v17 + 8);
  sub_1A3A2EA60();
  if ((v19 & 1) == 0)
  {
    sub_1A3A31C30();
    v20 = sub_1A3A305C0();
    sub_1A3A2F270();

    sub_1A3A2FED0();
    swift_getAtKeyPath();

    (*(v5 + 8))(v7, v4);
    v18 = v27;
  }

  swift_getKeyPath(byte_1A3A6F100);
  v27 = v18;
  sub_1A38DF31C(&qword_1ED996608, type metadata accessor for ChromeViewModel, &unk_1A3A70668);
  sub_1A3A2F080();

  v21 = *(v18 + 848);
  v22 = *(v18 + 856);

  if (v22)
  {
    __break(1u);
  }

  else
  {
    v23 = sub_1A3A30460();
    sub_1A38DEDBC(v11, a2, MEMORY[0x1E697EAF0]);
    v24 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FD970, &qword_1A3A6F1C8) + 36);
    *v24 = (v16 & 1) == 0;
    *(v24 + 8) = 0x70756F4C65646F4DLL;
    *(v24 + 16) = 0xE900000000000065;
    *(v24 + 24) = v21;
    *(v24 + 32) = v23;
    *(v24 + 36) = 0;
  }
}

uint64_t sub_1A38D8168@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v13[1] = a2;
  v3 = type metadata accessor for ChromeBottomBar(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  sub_1A38DF4FC(a1, v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ChromeBottomBar);
  sub_1A3A31AA0();
  v6 = sub_1A3A31A90();
  v7 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v8 = swift_allocObject();
  v9 = MEMORY[0x1E69E85E0];
  *(v8 + 16) = v6;
  *(v8 + 24) = v9;
  sub_1A38DEDBC(v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v8 + v7, type metadata accessor for ChromeBottomBar);
  sub_1A38DF4FC(a1, v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ChromeBottomBar);
  v10 = sub_1A3A31A90();
  v11 = swift_allocObject();
  *(v11 + 16) = v10;
  *(v11 + 24) = v9;
  sub_1A38DEDBC(v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v11 + v7, type metadata accessor for ChromeBottomBar);
  sub_1A3A311C0();
  v14 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FC598, &qword_1A3A6FC80);
  sub_1A3A311A0();

  return sub_1A3A303D0();
}

void sub_1A38D8388(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v76 = a2;
  v89 = type metadata accessor for ChromeBottomBar(0);
  v73 = *(v89 - 8);
  MEMORY[0x1EEE9AC00](v89);
  v74 = v3;
  v75 = &v71 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1A3A2FEE0();
  v81 = *(v4 - 8);
  v82 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v80 = &v71 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1A3A315D0();
  v87 = *(v6 - 8);
  v88 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v71 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = sub_1A3A2FBC0();
  MEMORY[0x1EEE9AC00](v86);
  v84 = &v71 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = (&v71 - v11);
  v13 = sub_1A3A31370();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v71 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v71 - v18;
  v85 = sub_1A3A31430();
  v83 = *(v85 - 8);
  MEMORY[0x1EEE9AC00](v85);
  v21 = &v71 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FD898, &qword_1A3A6F0E0);
  v78 = *(v22 - 8);
  v79 = v22;
  MEMORY[0x1EEE9AC00](v22);
  v91 = &v71 - v23;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FD8A0, &qword_1A3A6F0E8);
  MEMORY[0x1EEE9AC00](v77);
  v90 = &v71 - v24;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FD8A8, &unk_1A3A6F0F0);
  MEMORY[0x1EEE9AC00](v71);
  v72 = &v71 - v25;
  v26 = sub_1A3A30DB0();
  if (sub_1A38D8F94())
  {
    if (qword_1EB0FC0E8 != -1)
    {
      swift_once();
    }

    v27 = __swift_project_value_buffer(v13, qword_1EB101A48);
    (*(v14 + 16))(v19, v27, v13);
  }

  else
  {
    sub_1A3A31360();
    sub_1A3A31310();
    (*(v14 + 8))(v16, v13);
  }

  sub_1A3A31390();
  (*(v14 + 8))(v19, v13);
  v28 = a1;
  v29 = sub_1A38D9510();
  v30 = *(v86 + 20);
  v31 = *MEMORY[0x1E697F468];
  v32 = sub_1A3A30000();
  (*(*(v32 - 8) + 104))(v12 + v30, v31, v32);
  *v12 = v29;
  v12[1] = v29;
  v93 = v26;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FD8B0, &qword_1A3A811E0);
  v33 = swift_allocObject();
  *(v33 + 16) = xmmword_1A3A681C0;
  sub_1A38DF4FC(v12, v84, MEMORY[0x1E697EAF0]);
  sub_1A38DF31C(&qword_1EB0FC480, MEMORY[0x1E697EAF0], MEMORY[0x1E697EAE0]);
  *(v33 + 32) = sub_1A3A31290();
  sub_1A3A315C0();
  sub_1A3A30A10();
  (*(v87 + 8))(v8, v88);
  sub_1A38DF564(v12, MEMORY[0x1E697EAF0]);
  (*(v83 + 8))(v21, v85);

  v34 = sub_1A38D14F8();
  v35 = v28 + *(v89 + 52);
  v36 = *v35;
  v37 = *(v35 + 8);
  sub_1A3A2EA60();
  v38 = v36;
  if ((v37 & 1) == 0)
  {
    sub_1A3A31C30();
    v39 = sub_1A3A305C0();
    sub_1A3A2F270();

    v40 = v80;
    sub_1A3A2FED0();
    swift_getAtKeyPath();

    (*(v81 + 8))(v40, v82);
    v38 = v93;
  }

  swift_getKeyPath(byte_1A3A6F100);
  v93 = v38;
  sub_1A38DF31C(&qword_1ED996608, type metadata accessor for ChromeViewModel, &unk_1A3A70668);
  sub_1A3A2F080();

  v41 = *(v38 + 848);
  v42 = *(v38 + 856);

  if (v42)
  {
    __break(1u);
LABEL_16:
    __break(1u);
    return;
  }

  v43 = sub_1A3A30460();
  v44 = v90;
  (*(v78 + 32))(v90, v91, v79);
  v45 = v44 + *(v77 + 36);
  *v45 = (v34 & 1) == 0;
  *(v45 + 8) = 0x70756F4C65646F4DLL;
  *(v45 + 16) = 0xE900000000000065;
  *(v45 + 24) = v41;
  *(v45 + 32) = v43;
  *(v45 + 36) = 1;
  LODWORD(v91) = sub_1A38D14F8();
  sub_1A3A2EA60();
  if ((v37 & 1) == 0)
  {
    sub_1A3A31C30();
    v46 = sub_1A3A305C0();
    sub_1A3A2F270();

    v47 = v80;
    sub_1A3A2FED0();
    swift_getAtKeyPath();

    (*(v81 + 8))(v47, v82);
    v36 = v93;
  }

  swift_getKeyPath(byte_1A3A6F100);
  v93 = v36;
  sub_1A3A2F080();

  v89 = *(v36 + 848);
  v48 = *(v36 + 856);

  if (v48)
  {
    goto LABEL_16;
  }

  v49 = v75;
  sub_1A38DF4FC(v28, v75, type metadata accessor for ChromeBottomBar);
  sub_1A3A31AA0();
  v50 = sub_1A3A31A90();
  v51 = (*(v73 + 80) + 32) & ~*(v73 + 80);
  v52 = swift_allocObject();
  v53 = MEMORY[0x1E69E85E0];
  *(v52 + 16) = v50;
  *(v52 + 24) = v53;
  sub_1A38DEDBC(v49, v52 + v51, type metadata accessor for ChromeBottomBar);
  sub_1A38DF4FC(v28, v49, type metadata accessor for ChromeBottomBar);
  v54 = sub_1A3A31A90();
  v55 = swift_allocObject();
  *(v55 + 16) = v54;
  *(v55 + 24) = v53;
  sub_1A38DEDBC(v49, v55 + v51, type metadata accessor for ChromeBottomBar);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FD728, &qword_1A3A6EDB8);
  sub_1A3A311C0();
  v56 = v94;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FD730, &qword_1A3A6EDC0);
  MEMORY[0x1A58F7010](&v92, v57);
  v58 = v92;

  sub_1A3890F1C(v56);
  v59 = 1;
  if (v58 != 35)
  {
    v60 = sub_1A3A018A8(v58, 0x19uLL);
    sub_1A3890F1C(v58);
    v59 = v60 ^ 1;
  }

  v61 = sub_1A3A30460();
  v62 = v72;
  sub_1A388F670(v90, v72, &qword_1EB0FD8A0, &qword_1A3A6F0E8);
  v63 = v62 + *(v71 + 36);
  *v63 = (v91 & 1) == 0;
  strcpy((v63 + 8), "DPadGeometryID");
  *(v63 + 23) = -18;
  *(v63 + 24) = v89;
  *(v63 + 32) = v61;
  *(v63 + 36) = v59 & 1;
  sub_1A38D2024();
  v65 = v64;
  sub_1A38D22D8();
  v67 = v66;
  v68 = v62;
  v69 = v76;
  sub_1A388F670(v68, v76, &qword_1EB0FD8A8, &unk_1A3A6F0F0);
  v70 = v69 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FD8B8, &qword_1A3A6F128) + 36);
  *v70 = v65;
  *(v70 + 8) = v67;
  *(v70 + 16) = xmmword_1A3A6EB30;
}

uint64_t sub_1A38D8F94()
{
  v1 = sub_1A3A2FEE0();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v9[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = v0 + *(type metadata accessor for ChromeBottomBar(0) + 56);
  v6 = *v5;
  if (*(v5 + 8) != 1)
  {
    sub_1A3A2EA60();
    sub_1A3A31C30();
    v7 = sub_1A3A305C0();
    sub_1A3A2F270();

    sub_1A3A2FED0();
    swift_getAtKeyPath();
    sub_1A3670FF4(v6, 0);
    (*(v2 + 8))(v4, v1);
    LOBYTE(v6) = v9[15];
  }

  return v6 & 1;
}

double sub_1A38D90EC(uint64_t a1, _BYTE *a2, uint64_t a3)
{
  v5 = sub_1A3A2FEE0();
  v6 = *(v5 - 8);
  *&result = MEMORY[0x1EEE9AC00](v5).n128_u64[0];
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*a2 == 1)
  {
    v10 = (a3 + *(type metadata accessor for ChromeBottomBar(0) + 52));
    v11 = *v10;
    v12 = *(v10 + 8);
    sub_1A3A2EA60();
    v13 = v11;
    if ((v12 & 1) == 0)
    {
      sub_1A3A31C30();
      v14 = sub_1A3A305C0();
      sub_1A3A2F270();

      sub_1A3A2FED0();
      swift_getAtKeyPath();

      (*(v6 + 8))(v9, v5);
      v13 = v29;
    }

    swift_getKeyPath(byte_1A3A6ED90, v6);
    v29 = v13;
    sub_1A38DF31C(&qword_1ED996608, type metadata accessor for ChromeViewModel, &unk_1A3A70668);
    sub_1A3A2F080();

    v16 = *(v13 + 24);
    v15 = *(v13 + 32);
    v17 = *(v13 + 40);
    v18 = *(v13 + 48);
    sub_1A38BCF64(v16, v15, v17, *(v13 + 48));

    if (v18 <= 1)
    {
      if (!v18)
      {
        sub_1A38BC250(v16, v15, v17, 0);
        return result;
      }

      if (v16 != 35)
      {
        sub_1A38BC250(v16, v15, v17, 1);
        return result;
      }

      sub_1A38BC250(35, v15, v17, 1);
      sub_1A3A2EA60();
      if ((v12 & 1) == 0)
      {
        sub_1A3A31C30();
        v19 = sub_1A3A305C0();
        sub_1A3A2F270();

        sub_1A3A2FED0();
        swift_getAtKeyPath();

        (*(v28 + 8))(v9, v5);
        v11 = v29;
      }

      swift_getKeyPath(byte_1A3A6ED90);
      v29 = v11;
      sub_1A3A2F080();

      if (*(v11 + 48) == 255)
      {
        goto LABEL_22;
      }

      swift_getKeyPath(byte_1A3A6ED90);
      v29 = v11;
      sub_1A3A2F080();

      v21 = *(v11 + 24);
      v20 = *(v11 + 32);
      v22 = *(v11 + 40);
      v23 = *(v11 + 48);
      sub_1A38BCF64(v21, v20, v22, *(v11 + 48));
      sub_1A38EEF8C(0, 0, 0, 255);
      if (v23 == 1)
      {
        if (v21 == 35)
        {
          v24 = 35;
        }

        else
        {
          sub_1A38F6EF8(v21, 0x23uLL);
          v24 = v21;
        }

        v25 = v20;
        v26 = v22;
        v27 = 1;
      }

      else
      {
        if (v23 == 255)
        {
LABEL_22:

          return result;
        }

        v24 = v21;
        v25 = v20;
        v26 = v22;
        v27 = v23;
      }

      sub_1A38BC250(v24, v25, v26, v27);
      goto LABEL_22;
    }

    if (v18 == 2)
    {
      sub_1A38BC250(v16, v15, v17, 2);
    }
  }

  return result;
}

double sub_1A38D9510()
{
  v1 = type metadata accessor for ChromeBottomBar(0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  sub_1A38DF4FC(v0, v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ChromeBottomBar);
  sub_1A3A31AA0();
  v4 = sub_1A3A31A90();
  v5 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v6 = swift_allocObject();
  v7 = MEMORY[0x1E69E85E0];
  *(v6 + 16) = v4;
  *(v6 + 24) = v7;
  sub_1A38DEDBC(v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v6 + v5, type metadata accessor for ChromeBottomBar);
  sub_1A38DF4FC(v0, v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ChromeBottomBar);
  v8 = sub_1A3A31A90();
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = v7;
  sub_1A38DEDBC(v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v9 + v5, type metadata accessor for ChromeBottomBar);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FD728, &qword_1A3A6EDB8);
  sub_1A3A311C0();
  v10 = v15[3];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FD730, &qword_1A3A6EDC0);
  MEMORY[0x1A58F7010](v15, v11);
  v12 = v15[0];

  sub_1A3890F1C(v10);
  if (v12 == 35 || (v13 = sub_1A3A018A8(v12, 0x19uLL), sub_1A3890F1C(v12), result = 20.0, (v13 & 1) == 0))
  {
    if (qword_1EB0FC130 != -1)
    {
      swift_once();
    }

    result = *&qword_1EB0FE140;
    if (*&qword_1EB0FE140 <= 0.0)
    {
      return 38.0;
    }
  }

  return result;
}

void sub_1A38D97A4(uint64_t a1@<X2>, _BYTE *a2@<X8>)
{
  v4 = sub_1A3A2FEE0();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = (a1 + *(type metadata accessor for ChromeBottomBar(0) + 52));
  v9 = *v8;
  v10 = *(v8 + 8);
  sub_1A3A2EA60();
  if ((v10 & 1) == 0)
  {
    sub_1A3A31C30();
    v11 = sub_1A3A305C0();
    sub_1A3A2F270();

    sub_1A3A2FED0();
    swift_getAtKeyPath();

    (*(v5 + 8))(v7, v4);
    v9 = v15;
  }

  swift_getKeyPath(byte_1A3A6ED90);
  v15 = v9;
  sub_1A38DF31C(&qword_1ED996608, type metadata accessor for ChromeViewModel, &unk_1A3A70668);
  sub_1A3A2F080();

  if (*(v9 + 48) == 1)
  {
    swift_getKeyPath(byte_1A3A6EE88);
    v15 = v9;
    sub_1A3A2F080();

    v13 = *(v9 + 1168);

    v12 = v13 ^ 1;
  }

  else
  {

    v12 = 0;
  }

  *a2 = v12 & 1;
}

double sub_1A38D99D8(char *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (sub_1A38D14F8())
  {
    v4 = sub_1A3A314E0();
  }

  else
  {
    v4 = MEMORY[0x1A58F7350](0.5, 0.7, 0.0);
  }

  MEMORY[0x1EEE9AC00](v4);
  sub_1A3A2F8A0();

  return result;
}

double sub_1A38D9A90(char a1, uint64_t a2)
{
  v4 = sub_1A3A2FEE0();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a2 + *(type metadata accessor for ChromeBottomBar(0) + 52);
  v9 = *v8;
  v10 = *(v8 + 8);
  v34 = v5;
  if (a1)
  {
    sub_1A3A2EA60();
    v11 = v9;
    if ((v10 & 1) == 0)
    {
      sub_1A3A31C30();
      v12 = sub_1A3A305C0();
      sub_1A3A2F270();

      sub_1A3A2FED0();
      swift_getAtKeyPath();

      (*(v5 + 8))(v7, v4);
      v11 = v35;
    }

    swift_getKeyPath(" QiG");
    v35 = v11;
    sub_1A38DF31C(&qword_1ED996608, type metadata accessor for ChromeViewModel, &unk_1A3A70668);
    sub_1A3A2F080();

    if (*(v11 + 1068) != 1)
    {
      v13 = *(sub_1A395BE78(v11) + 16);

      if (v13)
      {
        swift_getKeyPath(byte_1A3A6EF88);
        v35 = v11;
        sub_1A3A2F080();

        v14 = *(v11 + 608);

        if (v14)
        {
          return result;
        }

        sub_1A3A2EA60();
        if ((v10 & 1) == 0)
        {
          sub_1A3A31C30();
          v16 = sub_1A3A305C0();
          sub_1A3A2F270();

          sub_1A3A2FED0();
          swift_getAtKeyPath();

          (*(v34 + 8))(v7, v4);
        }

        sub_1A38EDFE0(0x23uLL, 0, 0, 1);
      }
    }

    goto LABEL_27;
  }

  sub_1A3A2EA60();
  v17 = v9;
  if ((v10 & 1) == 0)
  {
    sub_1A3A31C30();
    v18 = sub_1A3A305C0();
    sub_1A3A2F270();

    sub_1A3A2FED0();
    swift_getAtKeyPath();

    (*(v5 + 8))(v7, v4);
    v17 = v35;
  }

  v33 = v4;
  swift_getKeyPath(byte_1A3A6ED90);
  v35 = v17;
  sub_1A38DF31C(&qword_1ED996608, type metadata accessor for ChromeViewModel, &unk_1A3A70668);
  sub_1A3A2F080();

  v20 = *(v17 + 24);
  v19 = *(v17 + 32);
  v21 = *(v17 + 40);
  v22 = *(v17 + 48);
  sub_1A38BCF64(v20, v19, v21, *(v17 + 48));

  if (v22 != 255)
  {
    if (v22 != 1)
    {
      sub_1A38BC250(v20, v19, v21, v22);
      return result;
    }

    sub_1A38BC250(v20, v19, v21, 1);
    sub_1A3A2EA60();
    if ((v10 & 1) == 0)
    {
      sub_1A3A31C30();
      v23 = sub_1A3A305C0();
      sub_1A3A2F270();

      sub_1A3A2FED0();
      swift_getAtKeyPath();

      (*(v34 + 8))(v7, v33);
      v9 = v35;
    }

    swift_getKeyPath(byte_1A3A6ED90);
    v35 = v9;
    sub_1A3A2F080();

    if (*(v9 + 48) == 255)
    {
      goto LABEL_27;
    }

    swift_getKeyPath(byte_1A3A6ED90);
    v35 = v9;
    sub_1A3A2F080();

    v25 = *(v9 + 24);
    v24 = *(v9 + 32);
    v26 = *(v9 + 40);
    v27 = *(v9 + 48);
    sub_1A38BCF64(v25, v24, v26, *(v9 + 48));
    sub_1A38EEF8C(0, 0, 0, 255);
    if (v27 == 1)
    {
      if (v25 == 35)
      {
        v28 = 35;
      }

      else
      {
        sub_1A38F6EF8(v25, 0x23uLL);
        v28 = v25;
      }

      v29 = v24;
      v30 = v26;
      v31 = 1;
    }

    else
    {
      if (v27 == 255)
      {
LABEL_27:

        return result;
      }

      v28 = v25;
      v29 = v24;
      v30 = v26;
      v31 = v27;
    }

    sub_1A38BC250(v28, v29, v30, v31);
    goto LABEL_27;
  }

  return result;
}

void sub_1A38DA078(uint64_t a1@<X2>, uint64_t *a2@<X8>)
{
  v4 = sub_1A3A2FEE0();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = (a1 + *(type metadata accessor for ChromeBottomBar(0) + 52));
  v9 = *v8;
  v10 = *(v8 + 8);
  sub_1A3A2EA60();
  if ((v10 & 1) == 0)
  {
    sub_1A3A31C30();
    v11 = sub_1A3A305C0();
    sub_1A3A2F270();

    sub_1A3A2FED0();
    swift_getAtKeyPath();

    (*(v5 + 8))(v7, v4);
    v9 = v17;
  }

  swift_getKeyPath(byte_1A3A6ED90);
  v17 = v9;
  sub_1A38DF31C(&qword_1ED996608, type metadata accessor for ChromeViewModel, &unk_1A3A70668);
  sub_1A3A2F080();

  v12 = *(v9 + 24);
  v13 = *(v9 + 32);
  v14 = *(v9 + 40);
  v15 = *(v9 + 48);
  sub_1A38BCF64(v12, v13, v14, *(v9 + 48));

  if (v15 == 255)
  {
    goto LABEL_8;
  }

  if (v15 != 1)
  {
    sub_1A38BC250(v12, v13, v14, v15);
LABEL_8:
    v12 = 35;
    goto LABEL_9;
  }

  if (v12 == 35)
  {
    sub_1A38BC250(35, v13, v14, 1);
  }

LABEL_9:
  *a2 = v12;
}

double sub_1A38DA2B4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1A3A314E0();
  sub_1A3A2F8A0();

  return result;
}

void sub_1A38DA324(unint64_t a1, uint64_t a2)
{
  v5 = sub_1A3A2FEE0();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v44 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for ChromeBottomBar(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  if (a1 == 35)
  {
    v40 = v5;
    v41 = v11;
    v39 = v6;
    sub_1A38DF4FC(a2, &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ChromeBottomBar);
    sub_1A3A31AA0();
    v12 = sub_1A3A31A90();
    v43 = v2;
    v13 = a2;
    v14 = (*(v9 + 80) + 32) & ~*(v9 + 80);
    v15 = swift_allocObject();
    v16 = MEMORY[0x1E69E85E0];
    *(v15 + 16) = v12;
    *(v15 + 24) = v16;
    sub_1A38DEDBC(&v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v15 + v14, type metadata accessor for ChromeBottomBar);
    v42 = v13;
    sub_1A38DF4FC(v13, &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ChromeBottomBar);
    v17 = sub_1A3A31A90();
    v18 = swift_allocObject();
    *(v18 + 16) = v17;
    *(v18 + 24) = MEMORY[0x1E69E85E0];
    sub_1A38DEDBC(&v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v18 + v14, type metadata accessor for ChromeBottomBar);
    sub_1A3A311C0();
    v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FC598, &qword_1A3A6FC80);
    MEMORY[0x1A58F7010](&v46, v19);
    v20 = v46;

    if ((v20 & 1) == 0)
    {
      return;
    }

    v21 = v42 + *(v41 + 52);
    v22 = *v21;
    v23 = *(v21 + 8);
    sub_1A3A2EA60();
    if ((v23 & 1) == 0)
    {
      sub_1A3A31C30();
      v24 = sub_1A3A305C0();
      sub_1A3A2F270();

      v25 = v44;
      sub_1A3A2FED0();
      swift_getAtKeyPath();

      (*(v39 + 8))(v25, v40);
      v22 = v45;
    }

    swift_getKeyPath(byte_1A3A6ED90);
    v45 = v22;
    sub_1A38DF31C(&qword_1ED996608, type metadata accessor for ChromeViewModel, &unk_1A3A70668);
    sub_1A3A2F080();

    if (*(v22 + 48) == 255)
    {
      goto LABEL_17;
    }

    swift_getKeyPath(byte_1A3A6ED90);
    v45 = v22;
    sub_1A3A2F080();

    v27 = *(v22 + 24);
    v26 = *(v22 + 32);
    v28 = *(v22 + 40);
    v29 = *(v22 + 48);
    sub_1A38BCF64(v27, v26, v28, *(v22 + 48));
    sub_1A38EEF8C(0, 0, 0, 255);
    if (v29 == 1)
    {
      if (v27 == 35)
      {
        v30 = 35;
      }

      else
      {
        sub_1A38F6EF8(v27, 0x23uLL);
        v30 = v27;
      }

      v31 = v26;
      v32 = v28;
      v33 = 1;
    }

    else
    {
      if (v29 == 255)
      {
LABEL_17:

        return;
      }

      v30 = v27;
      v31 = v26;
      v32 = v28;
      v33 = v29;
    }

    sub_1A38BC250(v30, v31, v32, v33);
    goto LABEL_17;
  }

  v34 = *(a2 + *(v11 + 52) + 8);
  sub_1A3A2EA60();
  if ((v34 & 1) == 0)
  {
    sub_1A3A31C30();
    v35 = v6;
    v36 = sub_1A3A305C0();
    sub_1A3A2F270();

    v37 = v44;
    sub_1A3A2FED0();
    swift_getAtKeyPath();

    (*(v35 + 8))(v37, v5);
  }

  sub_1A38A8F64(a1);
  sub_1A38EDFE0(a1, 0, 0, 1);
}

void sub_1A38DA8A0(uint64_t a1, uint64_t a2, double a3, double a4)
{
  v62 = a1;
  v6 = type metadata accessor for ChromeBottomBar(0);
  v7 = v6 - 8;
  v58 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v60 = v8;
  v9 = v54 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1A3A2FEE0();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v54 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = (a2 + *(v7 + 56));
  v15 = v14[1];
  v87 = *v14;
  v88 = v15;
  v89 = v14[2];
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FD750, &qword_1A3A6EE30);
  sub_1A3A30F90();
  v16 = *(v7 + 60);
  v61 = a2;
  v17 = (a2 + v16);
  v18 = *v17;
  v19 = *(v17 + 8);
  sub_1A3A2EA60();
  v20 = v18;
  if ((v19 & 1) == 0)
  {
    sub_1A3A31C30();
    v21 = sub_1A3A305C0();
    sub_1A3A2F270();

    sub_1A3A2FED0();
    swift_getAtKeyPath();

    (*(v11 + 8))(v13, v10);
    v20 = v87;
  }

  v22 = sub_1A38DCDB8(a4, v62, v20);

  if (v22)
  {
    sub_1A3A2EA60();
    if ((v19 & 1) == 0)
    {
      sub_1A3A31C30();
      v23 = sub_1A3A305C0();
      sub_1A3A2F270();

      sub_1A3A2FED0();
      swift_getAtKeyPath();

      (*(v11 + 8))(v13, v10);
      v18 = v87;
    }

    swift_getKeyPath(byte_1A3A6ED90);
    *&v87 = v18;
    sub_1A38DF31C(&qword_1ED996608, type metadata accessor for ChromeViewModel, &unk_1A3A70668);
    sub_1A3A2F080();

    v25 = *(v18 + 24);
    v24 = *(v18 + 32);
    v26 = *(v18 + 40);
    v27 = *(v18 + 48);
    sub_1A38BCF64(v25, v24, v26, *(v18 + 48));

    v57 = v14;
    if (v27 == 1)
    {
      v28 = v61;
      if (v25 != 35)
      {
        v56 = 1;
        sub_1A38BC250(v25, v24, v26, 1);
LABEL_14:
        sub_1A38DF4FC(v28, v9, type metadata accessor for ChromeBottomBar);
        v33 = sub_1A3A31AA0();
        v34 = sub_1A3A31A90();
        v35 = *(v58 + 80);
        v36 = (v35 + 32) & ~v35;
        v37 = swift_allocObject();
        v38 = MEMORY[0x1E69E85E0];
        *(v37 + 16) = v34;
        *(v37 + 24) = v38;
        sub_1A38DEDBC(v9, v37 + v36, type metadata accessor for ChromeBottomBar);
        sub_1A38DF4FC(v28, v9, type metadata accessor for ChromeBottomBar);
        v58 = v33;
        v39 = sub_1A3A31A90();
        v54[1] = v35;
        v40 = swift_allocObject();
        *(v40 + 16) = v39;
        *(v40 + 24) = MEMORY[0x1E69E85E0];
        v54[0] = v36;
        v55 = v9;
        sub_1A38DEDBC(v9, v40 + v36, type metadata accessor for ChromeBottomBar);
        sub_1A3A311C0();
        v82 = v72;
        v83 = v73;
        v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FC598, &qword_1A3A6FC80);
        MEMORY[0x1A58F7010](&v81);
        LOBYTE(v34) = v81;

        v42 = v57[1];
        v84 = *v57;
        v85 = v42;
        v44 = *v57;
        v43 = v57[1];
        v86 = v57[2];
        v72 = v44;
        v73 = v43;
        v74 = v57[2];
        sub_1A388F6D8(&v84, &v69, &qword_1EB0FD750, &qword_1A3A6EE30);
        sub_1A3A30F90();
        v45 = sub_1A38DB044(v62, v56, v34);
        v69 = v84;
        v70 = v85;
        v71 = v86;
        v63 = v75;
        v64 = v76;
        v65 = v77;
        v66 = v78;
        v67 = v79;
        v68 = v80;
        sub_1A3A30FA0();
        v87 = v69;
        v88 = v70;
        v89 = v71;
        sub_1A388F740(&v87, &qword_1EB0FD750, &qword_1A3A6EE30);
        if (v45 != 2)
        {
          v46 = v55;
          sub_1A38DF4FC(v28, v55, type metadata accessor for ChromeBottomBar);
          v47 = sub_1A3A31A90();
          v62 = v41;
          v48 = v47;
          LODWORD(v59) = v45;
          v49 = v54[0];
          v50 = swift_allocObject();
          *(v50 + 16) = v48;
          v51 = MEMORY[0x1E69E85E0];
          *(v50 + 24) = MEMORY[0x1E69E85E0];
          sub_1A38DEDBC(v46, v50 + v49, type metadata accessor for ChromeBottomBar);
          sub_1A38DF4FC(v61, v46, type metadata accessor for ChromeBottomBar);
          v52 = sub_1A3A31A90();
          v53 = swift_allocObject();
          *(v53 + 16) = v52;
          *(v53 + 24) = v51;
          sub_1A38DEDBC(v46, v53 + v49, type metadata accessor for ChromeBottomBar);
          sub_1A3A311C0();
          LOBYTE(v69) = v59 & 1;
          sub_1A3A311A0();
        }

        return;
      }

      v29 = 35;
      v30 = v24;
      v31 = v26;
      v32 = 1;
    }

    else
    {
      v28 = v61;
      if (v27 == 255)
      {
        v56 = 0;
        goto LABEL_14;
      }

      v29 = v25;
      v30 = v24;
      v31 = v26;
      v32 = v27;
    }

    sub_1A38BC250(v29, v30, v31, v32);
    v56 = 0;
    goto LABEL_14;
  }
}

uint64_t sub_1A38DB044(uint64_t a1, char a2, char a3)
{
  if ((*(v3 + 34) & 1) != 0 || (sub_1A3A2F5D0(), fabs(v6) >= 10.0))
  {
    *(v3 + 34) = 1;
    if (*(v3 + 32) == 1)
    {
      sub_1A3A2F5E0();
      *(v3 + 24) = v7;
      *(v3 + 32) = 0;
    }

    sub_1A3A2F610();
    v8 = a3 ^ 1;
    if (v8 & 1) != 0 || (a2)
    {
      CEKProgressClamped();
      v11 = 0;
      *v3 = v12;
      v9 = v12 >= 1.0;
    }

    else
    {
      CEKProgressClamped();
      v9 = 0;
      *(v3 + 8) = v10;
      v11 = v10 >= 1.0;
    }

    sub_1A3A2F5D0();
    if (fabs(v13) > 25.0)
    {
      *(v3 + 16) = 1;
    }

    if (v9)
    {
      sub_1A3A2F610();
      *(v3 + 24) = v14;
      *(v3 + 32) = 256;
      if (v11)
      {
        *v3 = 0;
      }

      *(v3 + 8) = 0;
      if (a2)
      {
        return 1;
      }

      return v8 & 1;
    }

    if (v11)
    {
      sub_1A3A2F610();
      *(v3 + 24) = v16;
      *(v3 + 32) = 256;
      *v3 = 0;
      return v8 & 1;
    }
  }

  return 2;
}

double sub_1A38DB1AC(uint64_t a1, uint64_t a2)
{
  sub_1A3A314E0();
  sub_1A3A2F8A0();

  return result;
}

uint64_t sub_1A38DB218(uint64_t a1)
{
  v1 = (a1 + *(type metadata accessor for ChromeBottomBar(0) + 48));
  v2 = v1[1];
  v9[0] = *v1;
  v9[1] = v2;
  v4 = *v1;
  v3 = v1[1];
  v9[2] = v1[2];
  v6 = v4;
  v7 = v3;
  v8 = v1[2];
  sub_1A388F6D8(v9, v10, &qword_1EB0FD750, &qword_1A3A6EE30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FD750, &qword_1A3A6EE30);
  sub_1A3A30FA0();
  v10[0] = v6;
  v10[1] = v7;
  v10[2] = v8;
  return sub_1A388F740(v10, &qword_1EB0FD750, &qword_1A3A6EE30);
}

uint64_t sub_1A38DB304(__int128 *a1, __int128 *a2)
{
  v2 = a1[1];
  v5 = *a1;
  v6[0] = v2;
  *(v6 + 15) = *(a1 + 31);
  v3 = a2[1];
  v7 = *a2;
  v8[0] = v3;
  *(v8 + 15) = *(a2 + 31);
  return sub_1A38DC774(&v5, &v7) & 1;
}

uint64_t sub_1A38DB350@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for ModeWheelGestureState(0);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v29 - v6;
  sub_1A3A30320();
  v8 = type metadata accessor for ChromeBottomBar(0);
  v9 = a1 + v8[5];
  LOBYTE(v30) = 0;
  sub_1A3A30F80();
  v10 = *(&v36 + 1);
  *v9 = v36;
  *(v9 + 8) = v10;
  v11 = a1 + v8[6];
  LOBYTE(v30) = 0;
  sub_1A3A30F80();
  v12 = *(&v36 + 1);
  *v11 = v36;
  *(v11 + 8) = v12;
  v13 = a1 + v8[7];
  LOBYTE(v30) = 0;
  sub_1A3A30F80();
  v14 = *(&v36 + 1);
  *v13 = v36;
  *(v13 + 8) = v14;
  v15 = a1 + v8[8];
  LOBYTE(v30) = 0;
  sub_1A3A30F80();
  v16 = *(&v36 + 1);
  *v15 = v36;
  *(v15 + 8) = v16;
  if (qword_1EB0FC210 != -1)
  {
    swift_once();
  }

  v17 = __swift_project_value_buffer(v2, qword_1EB101B38);
  sub_1A38DF4FC(v17, v7, type metadata accessor for ModeWheelGestureState);
  sub_1A38DF4FC(v7, v4, type metadata accessor for ModeWheelGestureState);
  sub_1A3A30F80();
  sub_1A38DF564(v7, type metadata accessor for ModeWheelGestureState);
  v18 = v8[10];
  v30 = 0;
  sub_1A3A30F80();
  *(a1 + v18) = v36;
  v19 = a1 + v8[11];
  *v19 = swift_getKeyPath(byte_1A3A6EB40);
  *(v19 + 8) = 0;
  v20 = (a1 + v8[12]);
  v33 = 0;
  v30 = 0;
  v31 = 0;
  v32 = 0;
  v34 = 1;
  v35 = 0;
  sub_1A3A30F80();
  v21 = v37;
  *v20 = v36;
  v20[1] = v21;
  v20[2] = v38;
  v22 = a1 + v8[13];
  type metadata accessor for ChromeViewModel(0);
  sub_1A38DF31C(&qword_1ED996608, type metadata accessor for ChromeViewModel, &unk_1A3A70668);
  *v22 = sub_1A3A2F650();
  *(v22 + 8) = v23 & 1;
  v24 = a1 + v8[14];
  *v24 = swift_getKeyPath(byte_1A3A6EB70);
  *(v24 + 8) = 0;
  v25 = a1 + v8[15];
  *v25 = swift_getKeyPath(byte_1A3A6EBA0);
  *(v25 + 8) = 0;
  v26 = *(type metadata accessor for ChromeScenePhase(0) + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FD670, &qword_1A3A6F6C0);
  result = swift_storeEnumTagMultiPayload();
  *(a1 + v8[16]) = 0;
  v28 = (a1 + v8[18]);
  *v28 = 0xD000000000000013;
  v28[1] = 0x80000001A3AA1FE0;
  return result;
}

uint64_t type metadata accessor for ChromeBottomBar(uint64_t a1)
{
  result = qword_1ED996C28;
  if (!qword_1ED996C28)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1A38DB744(void (*a1)(uint64_t *__return_ptr, uint64_t *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = *(a3 + 16);
  if (v5)
  {
    v15 = MEMORY[0x1E69E7CC0];
    sub_1A3956A00(0, v5, 0);
    v8 = v15;
    for (i = (a3 + 32); ; ++i)
    {
      v13 = *i;
      sub_1A3A2EA60();
      a1(&v14, &v13);
      if (v4)
      {
        break;
      }

      v4 = 0;

      v10 = v14;
      v15 = v8;
      v12 = *(v8 + 16);
      v11 = *(v8 + 24);
      if (v12 >= v11 >> 1)
      {
        sub_1A3956A00((v11 > 1), v12 + 1, 1);
        v8 = v15;
      }

      *(v8 + 16) = v12 + 1;
      *(v8 + 8 * v12 + 32) = v10;
      if (!--v5)
      {
        return;
      }
    }

    __break(1u);
  }
}

__n128 __swift_memcpy35_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 31) = *(a2 + 31);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1A38DB88C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 35))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_1A38DB8E0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 34) = 0;
    *(result + 32) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 35) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 35) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2 + 1;
    }
  }

  return result;
}

void sub_1A38DB964(uint64_t a1)
{
  sub_1A38BD87C();
  if (v1 <= 0x3F)
  {
    sub_1A38DBB90(319, qword_1ED996958, MEMORY[0x1E69E6370], MEMORY[0x1E6981790]);
    if (v2 <= 0x3F)
    {
      sub_1A38DBBE0(319, &qword_1ED996C38, type metadata accessor for ModeWheelGestureState, MEMORY[0x1E6981790]);
      if (v3 <= 0x3F)
      {
        sub_1A38DBB90(319, &qword_1ED996C40, MEMORY[0x1E69E6530], MEMORY[0x1E6981790]);
        if (v4 <= 0x3F)
        {
          sub_1A38DBB90(319, &qword_1EB0FCF80, MEMORY[0x1E69E6370], MEMORY[0x1E697DCC0]);
          if (v5 <= 0x3F)
          {
            sub_1A38DBB90(319, qword_1ED996C48, &type metadata for ChromeBottomBar.ControlPanelGestureState, MEMORY[0x1E6981790]);
            if (v6 <= 0x3F)
            {
              sub_1A38DBBE0(319, &qword_1ED9967B8, type metadata accessor for ChromeViewModel, MEMORY[0x1E697DCC0]);
              if (v7 <= 0x3F)
              {
                type metadata accessor for ChromeScenePhase(319);
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

void sub_1A38DBB90(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_1A38DBBE0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t (*sub_1A38DBC60(uint64_t a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5))@<X0>(uint64_t a1@<X0>, CGPoint *a2@<X8>)
{
  sub_1A388F6D8(a1, &v15, &qword_1EB0FDA10, &qword_1A3A6F260);
  if (*(&v17 + 1))
  {
    v20 = v15;
    v21 = v16;
    v22 = v17;
    v23 = v18;
    sub_1A38DE880(a1, &v15);
    v9 = swift_allocObject();
    v10 = v21;
    *(v9 + 16) = v20;
    *(v9 + 32) = v10;
    v11 = v23;
    *(v9 + 48) = v22;
    *(v9 + 64) = v11;
    v12 = v18;
    *(v9 + 112) = v17;
    *(v9 + 128) = v12;
    *(v9 + 144) = v19;
    v13 = v16;
    *(v9 + 80) = v15;
    *(v9 + 96) = v13;
    *(v9 + 152) = a2;
    *(v9 + 160) = a4;
    *(v9 + 168) = a5;
    sub_1A3A2EA60();
    return sub_1A38DE8DC;
  }

  else
  {
    sub_1A388F740(&v15, &qword_1EB0FDA10, &qword_1A3A6F260);
    return 0;
  }
}

uint64_t sub_1A38DBD7C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *(*a4)(CGPoint *__return_ptr, void)@<X3>, CGPoint *a5@<X8>, double a6@<D0>)
{
  type metadata accessor for CGRect(0);
  sub_1A3A2F820();
  v11 = v75;
  v12 = v76;
  v13 = *(a3 + 64);
  v36 = a1;
  sub_1A38DB744(sub_1A38DE8F0, v35, v13);
  v15 = *(v14 + 16);
  if (v15)
  {
    v16 = *(v14 + 32);
    v17 = v15 - 1;
    if (v17)
    {
      v18 = (v14 + 40);
      do
      {
        v19 = *v18++;
        v20 = v19;
        if (v16 < v19)
        {
          v16 = v20;
        }

        --v17;
      }

      while (v17);
    }

    if (*(a2 + 48) == 1)
    {
      goto LABEL_8;
    }

LABEL_10:
    v89.origin = v11;
    v89.size = v12;
    CGRectGetWidth(v89);
    goto LABEL_11;
  }

  if ((*(a2 + 48) & 1) == 0)
  {
    goto LABEL_10;
  }

LABEL_8:
  v88.origin = v11;
  v88.size = v12;
  CGRectGetWidth(v88);
LABEL_11:
  v90.origin = v11;
  v90.size = v12;
  Height = CGRectGetHeight(v90);
  sub_1A3A2F800();
  v91.origin = v11;
  v91.size = v12;
  CGRectGetMidX(v91);
  sub_1A3A2F800();
  CEKInterpolateClamped();
  v34 = v22;
  v92.origin = v11;
  v92.size = v12;
  MidY = CGRectGetMidY(v92);
  v93.origin = v11;
  v93.size = v12;
  v24 = MidY - ((a6 + 1.0) * Height - CGRectGetHeight(v93)) * 0.5 + a6 * -30.0;
  a4(&v75, *(a2 + 51));
  sub_1A3A31480();
  v56 = v81;
  v57[0] = *v82;
  *(v57 + 13) = *&v82[13];
  v52 = v77;
  v53 = v78;
  v54 = v79;
  v55 = v80;
  v50 = v75;
  v51 = v76;
  sub_1A3A2F780();
  v45 = v56;
  *v46 = v57[0];
  *&v46[13] = *(v57 + 13);
  v41 = v52;
  v42 = v53;
  v43 = v54;
  v44 = v55;
  v39 = v50;
  v40 = v51;
  v58[6] = v81;
  v59[0] = *v82;
  *(v59 + 13) = *&v82[13];
  v58[2] = v77;
  v58[3] = v78;
  v58[4] = v79;
  v58[5] = v80;
  v58[0] = v75;
  v58[1] = v76;
  sub_1A388F6D8(&v50, &v62, &qword_1EB0FDA18, &qword_1A3A6F268);
  sub_1A388F740(v58, &qword_1EB0FDA18, &qword_1A3A6F268);
  v60[8] = *&v46[16];
  v60[9] = v47;
  v60[10] = v48;
  v60[11] = v49;
  v60[4] = v43;
  v60[5] = v44;
  v60[6] = v45;
  v60[7] = *v46;
  v60[0] = v39;
  v60[1] = v40;
  v60[2] = v41;
  v60[3] = v42;
  v61[8] = *&v46[16];
  v61[9] = v47;
  v61[10] = v48;
  v61[11] = v49;
  v61[4] = v43;
  v61[5] = v44;
  v61[6] = v45;
  v61[7] = *v46;
  v61[0] = v39;
  v61[1] = v40;
  v61[2] = v41;
  v61[3] = v42;
  sub_1A388F6D8(v60, &v75, &qword_1EB0FDA20, &qword_1A3A6F270);
  sub_1A388F740(v61, &qword_1EB0FDA20, &qword_1A3A6F270);
  v25 = sub_1A3A314E0();
  v70 = *&v46[16];
  v71 = v47;
  v72 = v48;
  v73 = v49;
  v66 = v43;
  v67 = v44;
  v68 = v45;
  v69 = *v46;
  v62 = v39;
  v63 = v40;
  v64 = v41;
  v65 = v42;
  v74.x = v34;
  v74.y = v24;
  sub_1A388F6D8(a2, &v38, &qword_1EB0FDA28, &qword_1A3A6F278);
  v37 = v25;
  sub_1A388F6D8(&v37, &a5[13], &qword_1EB0FDA30, &qword_1A3A6F280);
  v26 = v73;
  a5[10] = v72;
  a5[11] = v26;
  a5[12] = v74;
  v27 = v69;
  a5[6] = v68;
  a5[7] = v27;
  v28 = v71;
  a5[8] = v70;
  a5[9] = v28;
  v29 = v65;
  a5[2] = v64;
  a5[3] = v29;
  v30 = v67;
  a5[4] = v66;
  a5[5] = v30;
  v31 = v63;
  *a5 = v62;
  a5[1] = v31;
  sub_1A388F6D8(&v62, &v75, &qword_1EB0FDA38, &qword_1A3A6F288);
  sub_1A388F740(&v37, &qword_1EB0FDA30, &qword_1A3A6F280);
  *&v82[16] = *&v46[16];
  v83 = v47;
  v84 = v48;
  v85 = v49;
  v79 = v43;
  v80 = v44;
  v81 = v45;
  *v82 = *v46;
  v75 = v39;
  v76 = v40;
  v77 = v41;
  v78 = v42;
  v86 = v34;
  v87 = v24;
  return sub_1A388F740(&v75, &qword_1EB0FDA38, &qword_1A3A6F288);
}

uint64_t sub_1A38DC304@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t (*a4)(void)@<X3>, uint64_t a5@<X8>, double a6@<D0>)
{
  type metadata accessor for CGRect(0);
  sub_1A3A2F820();
  v11 = v35;
  v12 = v36;
  v13 = *(a3 + 64);
  v34 = a1;
  sub_1A38DB744(sub_1A38DFB84, v33, v13);
  v15 = *(v14 + 16);
  if (v15)
  {
    v16 = *(v14 + 32);
    v17 = v15 - 1;
    if (v17)
    {
      v18 = (v14 + 40);
      do
      {
        v19 = *v18++;
        v20 = v19;
        if (v16 < v19)
        {
          v16 = v20;
        }

        --v17;
      }

      while (v17);
    }

    if (*(a2 + 48) == 1)
    {
      goto LABEL_8;
    }

LABEL_10:
    v39.origin = v11;
    v39.size = v12;
    CGRectGetWidth(v39);
    goto LABEL_11;
  }

  if ((*(a2 + 48) & 1) == 0)
  {
    goto LABEL_10;
  }

LABEL_8:
  v38.origin = v11;
  v38.size = v12;
  CGRectGetWidth(v38);
LABEL_11:
  v40.origin = v11;
  v40.size = v12;
  Height = CGRectGetHeight(v40);
  sub_1A3A2F800();
  v41.origin = v11;
  v41.size = v12;
  CGRectGetMidX(v41);
  sub_1A3A2F800();
  CEKInterpolateClamped();
  v31 = v22;
  v42.origin = v11;
  v42.size = v12;
  MidY = CGRectGetMidY(v42);
  v43.origin = v11;
  v43.size = v12;
  v24 = MidY - ((a6 + 1.0) * Height - CGRectGetHeight(v43)) * 0.5 + a6 * -30.0;
  a4(*(a2 + 51));
  sub_1A3A31480();
  sub_1A3A2F780();
  v25 = (a5 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FDB58, &qword_1A3A6F478) + 36));
  v26 = v36;
  *v25 = v35;
  v25[1] = v26;
  v25[2] = v37;
  v27 = a5 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FDB60, &qword_1A3A6F480) + 36);
  *v27 = v31;
  *(v27 + 8) = v24;
  v28 = sub_1A3A314E0();
  v29 = (a5 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FDB68, &qword_1A3A6F488) + 36));
  result = sub_1A388F6D8(a2, (v29 + 1), &qword_1EB0FDA28, &qword_1A3A6F278);
  *v29 = v28;
  return result;
}

uint64_t sub_1A38DC640@<X0>(void *a1@<X1>, double *a2@<X8>)
{
  v4 = sub_1A3A30220();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a1[1];
  v18[0] = *a1;
  v18[1] = v8;
  sub_1A3A30350();
  sub_1A3A2F810();
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  result = (*(v5 + 8))(v7, v4);
  *a2 = v10;
  *(a2 + 1) = v12;
  *(a2 + 2) = v14;
  *(a2 + 3) = v16;
  return result;
}

uint64_t sub_1A38DC774(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2 || *(a1 + 8) != *(a2 + 8) || ((*(a1 + 16) ^ *(a2 + 16)) & 1) != 0)
  {
    return 0;
  }

  v3 = *(a2 + 32);
  if (*(a1 + 32))
  {
    if (!*(a2 + 32))
    {
      return 0;
    }
  }

  else
  {
    if (*(a1 + 24) != *(a2 + 24))
    {
      v3 = 1;
    }

    if (v3)
    {
      return 0;
    }
  }

  if ((*(a1 + 33) ^ *(a2 + 33)))
  {
    return 0;
  }

  return (*(a1 + 34) ^ *(a2 + 34) ^ 1) & 1;
}

unint64_t sub_1A38DC800()
{
  result = qword_1EB0FD708;
  if (!qword_1EB0FD708)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0FD688, &qword_1A3A6ECF0);
    sub_1A38A08F8(&qword_1EB0FD710, &qword_1EB0FD718, &unk_1A3A6ED70, MEMORY[0x1E6981870]);
    sub_1A38A08F8(&qword_1ED9966D0, &qword_1EB0FC950, &unk_1A3A7C370, MEMORY[0x1E697FD58]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0FD708);
  }

  return result;
}

unint64_t sub_1A38DC8E4()
{
  result = qword_1ED996CB0;
  if (!qword_1ED996CB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0FD680, &qword_1A3A6ECE8);
    sub_1A38A08F8(&qword_1ED996CB8, &qword_1EB0FD700, &qword_1A3A76730, MEMORY[0x1E697E238]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED996CB0);
  }

  return result;
}

unint64_t sub_1A38DCA00()
{
  result = qword_1ED996CC0;
  if (!qword_1ED996CC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0FD728, &qword_1A3A6EDB8);
    sub_1A38BDB38();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED996CC0);
  }

  return result;
}

uint64_t sub_1A38DCABC(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  v6 = *(type metadata accessor for ChromeBottomBar(0) - 8);
  v7 = v3 + ((*(v6 + 80) + 16) & ~*(v6 + 80));

  return a3(a1, a2, v7);
}

void *sub_1A38DCB50(void *result, uint64_t a2, uint64_t a3)
{
  if (result)
  {
    v3 = result;

    return sub_1A3A2EA50();
  }

  return result;
}

double sub_1A38DCB90(uint64_t a1, uint64_t a2)
{
  v5 = *(type metadata accessor for ChromeBottomBar(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_1A38D1194(a1, a2, v6);
}

unint64_t sub_1A38DCC10()
{
  result = qword_1ED996CC8;
  if (!qword_1ED996CC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0FD738, &qword_1A3A6EDF0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED996CC8);
  }

  return result;
}

void sub_1A38DCC8C(uint64_t a1)
{
  v3 = *(type metadata accessor for ChromeBottomBar(0) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));
  v6 = *v5;
  v7 = v5[1];

  sub_1A38DA8A0(a1, v1 + v4, v6, v7);
}

double sub_1A38DCD2C(uint64_t a1)
{
  v3 = *(type metadata accessor for ChromeBottomBar(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_1A38DB1AC(a1, v4);
}

uint64_t sub_1A38DCDB8(double a1, uint64_t a2, double *a3)
{
  sub_1A3A2F5E0();
  v6 = v5;
  v7 = *(a3 + 136);
  if (v7 && (v8 = *(a3 + 137), v9 = sub_1A3A2EA60(), v10 = v7(v9), sub_1A3671090(v7, v8), v10))
  {
    [v10 centerButtonFrame];
    v12 = v11;
    v14 = v13;
    v16 = v15;
    v18 = v17;
    swift_getKeyPath(byte_1A3A6EE38);
    sub_1A38DF31C(&qword_1ED996608, type metadata accessor for ChromeViewModel, &unk_1A3A70668);
    sub_1A3A2F080();

    v19 = *(a3 + 80);
    swift_getKeyPath(byte_1A3A6EE60);
    sub_1A38DF31C(&qword_1ED996CE8, type metadata accessor for ChromeDynamicShutterViewModel, &unk_1A3A82618);
    sub_1A3A2EA60();
    sub_1A3A2F080();

    v20 = *(v19 + 248);

    rect = v12 + v20;
    swift_getKeyPath(byte_1A3A6EE38);
    sub_1A3A2F080();

    v21 = *(a3 + 80);
    swift_getKeyPath(byte_1A3A6EE60);
    sub_1A3A2EA60();
    sub_1A3A2F080();

    v22 = *(v21 + 256);

    v23 = v14 + v22;
    v33.origin.x = v12;
    v33.origin.y = v14;
    v33.size.width = v16;
    v33.size.height = v18;
    Width = CGRectGetWidth(v33);
    v34.origin.x = v12;
    v34.origin.y = v14;
    v34.size.width = v16;
    v34.size.height = v18;
    Height = CGRectGetHeight(v34);
    sub_1A3A2F5E0();
    v32.x = v26;
    v32.y = v27;
    v35.origin.x = rect;
    v35.origin.y = v23;
    v35.size.width = Width;
    v35.size.height = Height;
    v28 = CGRectContainsPoint(v35, v32);

    v29 = !v28;
  }

  else
  {
    v29 = 1;
  }

  return (a1 - v6 >= 24.0) & v29;
}

unint64_t sub_1A38DD0DC()
{
  result = qword_1EB0FD7A0;
  if (!qword_1EB0FD7A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0FD770, &qword_1A3A6EFC0);
    sub_1A38A08F8(&qword_1EB0FD7A8, &qword_1EB0FD768, &qword_1A3A6EFB8, &unk_1A3A7BE94);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0FD7A0);
  }

  return result;
}

unint64_t sub_1A38DD1B0()
{
  result = qword_1EB0FD800;
  if (!qword_1EB0FD800)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0FD7E8, &qword_1A3A6F050);
    sub_1A38DD268();
    sub_1A38A08F8(&qword_1ED9966F8, &qword_1EB0FC9F0, &qword_1A3A6D300, MEMORY[0x1E697FDC0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0FD800);
  }

  return result;
}

unint64_t sub_1A38DD268()
{
  result = qword_1EB0FD808;
  if (!qword_1EB0FD808)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0FD7E0, &qword_1A3A6F048);
    sub_1A38DD2F4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0FD808);
  }

  return result;
}

unint64_t sub_1A38DD2F4()
{
  result = qword_1EB0FD810;
  if (!qword_1EB0FD810)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0FD7D8, &qword_1A3A6F040);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0FD818, &qword_1A3A6F090);
    sub_1A38DD3FC();
    swift_getOpaqueTypeConformance2();
    sub_1A38A08F8(&qword_1EB0FD868, &qword_1EB0FD870, &qword_1A3A6F0C0, MEMORY[0x1E69802E0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0FD810);
  }

  return result;
}

unint64_t sub_1A38DD3FC()
{
  result = qword_1EB0FD820;
  if (!qword_1EB0FD820)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0FD818, &qword_1A3A6F090);
    sub_1A38DD4B4();
    sub_1A38A08F8(&qword_1EB0FD858, &qword_1EB0FD860, &qword_1A3A6F0B8, MEMORY[0x1E697F940]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0FD820);
  }

  return result;
}

unint64_t sub_1A38DD4B4()
{
  result = qword_1EB0FD828;
  if (!qword_1EB0FD828)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0FD830, &qword_1A3A6F098);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0FD838, &qword_1A3A6F0A0);
    sub_1A38DD5AC();
    swift_getOpaqueTypeConformance2();
    sub_1A38DF31C(&qword_1ED9966D8, MEMORY[0x1E697CBE8], MEMORY[0x1E697CBD8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0FD828);
  }

  return result;
}

unint64_t sub_1A38DD5AC()
{
  result = qword_1EB0FD840;
  if (!qword_1EB0FD840)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0FD838, &qword_1A3A6F0A0);
    sub_1A38A08F8(&qword_1EB0FD848, &qword_1EB0FD850, &unk_1A3A6F0A8, MEMORY[0x1E6981880]);
    sub_1A38A08F8(&qword_1ED9966F8, &qword_1EB0FC9F0, &qword_1A3A6D300, MEMORY[0x1E697FDC0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0FD840);
  }

  return result;
}

unint64_t sub_1A38DD690()
{
  result = qword_1EB0FD878;
  if (!qword_1EB0FD878)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0FD7F8, &qword_1A3A6F088);
    sub_1A38A08F8(&qword_1EB0FD868, &qword_1EB0FD870, &qword_1A3A6F0C0, MEMORY[0x1E69802E0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0FD878);
  }

  return result;
}

uint64_t sub_1A38DD778(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  v6 = *(type metadata accessor for ChromeBottomBar(0) - 8);
  v7 = v3 + ((*(v6 + 80) + 16) & ~*(v6 + 80));

  return a3(a1, a2, v7);
}

unint64_t sub_1A38DD870()
{
  result = qword_1EB0FD910;
  if (!qword_1EB0FD910)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0FD8F0, &qword_1A3A6F160);
    sub_1A38DD928();
    sub_1A38A08F8(&qword_1ED996D00, &qword_1EB0FD938, &qword_1A3A6F1C0, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0FD910);
  }

  return result;
}

unint64_t sub_1A38DD928()
{
  result = qword_1EB0FD918;
  if (!qword_1EB0FD918)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0FD8E8, &qword_1A3A6F158);
    sub_1A38DF31C(&qword_1EB0FD920, type metadata accessor for ChromeControlPanelExpandedContent, &unk_1A3A76C44);
    sub_1A38A08F8(&qword_1EB0FD928, &qword_1EB0FD930, &qword_1A3A6F1B8, "=x@K");
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0FD918);
  }

  return result;
}

unint64_t sub_1A38DDA10()
{
  result = qword_1EB0FD940;
  if (!qword_1EB0FD940)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0FD8D8, &qword_1A3A6F148);
    sub_1A38DDAC8();
    sub_1A38A08F8(&qword_1EB0FD968, &qword_1EB0FD908, &qword_1A3A6F1B0, MEMORY[0x1E697FB38]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0FD940);
  }

  return result;
}

unint64_t sub_1A38DDAC8()
{
  result = qword_1EB0FD948;
  if (!qword_1EB0FD948)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0FD8D0, &qword_1A3A6F140);
    sub_1A38DDB80();
    sub_1A38A08F8(&qword_1ED9966F8, &qword_1EB0FC9F0, &qword_1A3A6D300, MEMORY[0x1E697FDC0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0FD948);
  }

  return result;
}

unint64_t sub_1A38DDB80()
{
  result = qword_1EB0FD950;
  if (!qword_1EB0FD950)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0FD8C8, &qword_1A3A6F138);
    sub_1A38DDC0C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0FD950);
  }

  return result;
}

unint64_t sub_1A38DDC0C()
{
  result = qword_1EB0FD958;
  if (!qword_1EB0FD958)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0FD8C0, &qword_1A3A6F130);
    sub_1A38DF31C(&qword_1EB0FD960, type metadata accessor for ChromeBottomControlPanel, &unk_1A3A7C608);
    sub_1A38A08F8(&qword_1EB0FD928, &qword_1EB0FD930, &qword_1A3A6F1B8, "=x@K");
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0FD958);
  }

  return result;
}

void sub_1A38DDD0C(uint64_t *a1@<X8>)
{
  v3 = *(type metadata accessor for ChromeBottomBar(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));

  sub_1A38DA078(v4, a1);
}

double sub_1A38DDD80(void *a1)
{
  v3 = *(type metadata accessor for ChromeBottomBar(0) - 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));

  return sub_1A38DA2B4(a1, v4, v5, v6);
}

unint64_t sub_1A38DDDF4()
{
  result = qword_1ED996D08;
  if (!qword_1ED996D08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0FD988, &qword_1A3A6F208);
    sub_1A38DDE80();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED996D08);
  }

  return result;
}

unint64_t sub_1A38DDE80()
{
  result = qword_1ED996D10;
  if (!qword_1ED996D10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0FD990, &qword_1A3A6F210);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED996D10);
  }

  return result;
}

unint64_t sub_1A38DDF04()
{
  result = qword_1EB0FD998;
  if (!qword_1EB0FD998)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0FD978, &qword_1A3A6F1F8);
    sub_1A38DDF90();
    sub_1A38DE1F4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0FD998);
  }

  return result;
}

unint64_t sub_1A38DDF90()
{
  result = qword_1EB0FD9A0;
  if (!qword_1EB0FD9A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0FD9A8, &qword_1A3A6F218);
    sub_1A38DE048();
    sub_1A38A08F8(&qword_1ED9966F0, &qword_1EB0FC9B8, &qword_1A3A6D2E0, MEMORY[0x1E697F548]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0FD9A0);
  }

  return result;
}

unint64_t sub_1A38DE048()
{
  result = qword_1EB0FD9B0;
  if (!qword_1EB0FD9B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0FD9B8, &qword_1A3A6F220);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0FD9C0, &qword_1A3A6F228);
    sub_1A38DE13C();
    swift_getOpaqueTypeConformance2();
    sub_1A38A08F8(&qword_1EB0FD9E0, &qword_1EB0FD9E8, &unk_1A3A6F238, MEMORY[0x1E6980748]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0FD9B0);
  }

  return result;
}

unint64_t sub_1A38DE13C()
{
  result = qword_1EB0FD9C8;
  if (!qword_1EB0FD9C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0FD9C0, &qword_1A3A6F228);
    sub_1A38A08F8(&qword_1EB0FD9D0, &qword_1EB0FD9D8, &qword_1A3A6F230, &unk_1A3A81DC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0FD9C8);
  }

  return result;
}

unint64_t sub_1A38DE1F4()
{
  result = qword_1EB0FD9F0;
  if (!qword_1EB0FD9F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0FD9F0);
  }

  return result;
}

uint64_t sub_1A38DE260(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for ChromeBottomBar(0) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

uint64_t sub_1A38DE314(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for ChromeBottomBar(0) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

uint64_t objectdestroy_22Tm_0()
{
  v1 = type metadata accessor for ChromeBottomBar(0);
  v2 = (*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80);
  v3 = v0 + v2;
  v4 = sub_1A3A30430();
  v5 = *(v4 - 8);
  if (!(*(v5 + 48))(v0 + v2, 1, v4))
  {
    (*(v5 + 8))(v0 + v2, v4);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FCF78, &qword_1A3A6EC40);

  v6 = v3 + v1[9];
  v7 = type metadata accessor for ModeWheelGestureState(0);
  v8 = *(v7 + 36);
  v9 = sub_1A3A2ECE0();
  v10 = *(v9 - 8);
  if (!(*(v10 + 48))(v6 + v8, 1, v9))
  {
    (*(v10 + 8))(v6 + v8, v9);
  }

  v11 = *(v7 + 40);
  v12 = sub_1A3A2F620();
  v13 = *(v12 - 8);
  if (!(*(v13 + 48))(v6 + v11, 1, v12))
  {
    (*(v13 + 8))(v6 + v11, v12);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FD678, &unk_1A3A6EC48);

  sub_1A3670FF4(*(v3 + v1[11]), *(v3 + v1[11] + 8));

  sub_1A3670FF4(*(v3 + v1[14]), *(v3 + v1[14] + 8));
  v14 = (v3 + v1[15]);
  j__swift_release(*v14);
  v15 = *(type metadata accessor for ChromeScenePhase(0) + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FD670, &qword_1A3A6F6C0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v16 = sub_1A3A2F540();
    (*(*(v16 - 8) + 8))(v14 + v15, v16);
  }

  else
  {
  }

  return swift_deallocObject();
}

void sub_1A38DE744(int a1@<W0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for ChromeBottomBar(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  sub_1A38D5900(a1, v6, a2);
}

uint64_t (*sub_1A38DE7C4@<X0>(uint64_t a1@<X0>, uint64_t (**a2)()@<X8>))()
{
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FD9F8, &qword_1A3A6F248) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  result = sub_1A38DBC60(a1, *(v2 + v7), v2 + v6, *(v2 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v2 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8) + 8));
  *a2 = result;
  a2[1] = v9;
  return result;
}

void sub_1A38DE910(_BYTE *a1@<X8>)
{
  v3 = *(type metadata accessor for ChromeBottomBar(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));

  sub_1A38D97A4(v4, a1);
}

uint64_t objectdestroyTm_4()
{
  v1 = type metadata accessor for ChromeBottomBar(0);
  v2 = (*(*(v1 - 1) + 80) + 32) & ~*(*(v1 - 1) + 80);
  swift_unknownObjectRelease();
  v3 = v0 + v2;
  v4 = sub_1A3A30430();
  v5 = *(v4 - 8);
  if (!(*(v5 + 48))(v0 + v2, 1, v4))
  {
    (*(v5 + 8))(v0 + v2, v4);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FCF78, &qword_1A3A6EC40);

  v6 = v3 + v1[9];
  v7 = type metadata accessor for ModeWheelGestureState(0);
  v8 = *(v7 + 36);
  v9 = sub_1A3A2ECE0();
  v10 = *(v9 - 8);
  if (!(*(v10 + 48))(v6 + v8, 1, v9))
  {
    (*(v10 + 8))(v6 + v8, v9);
  }

  v11 = *(v7 + 40);
  v12 = sub_1A3A2F620();
  v13 = *(v12 - 8);
  if (!(*(v13 + 48))(v6 + v11, 1, v12))
  {
    (*(v13 + 8))(v6 + v11, v12);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FD678, &unk_1A3A6EC48);

  sub_1A3670FF4(*(v3 + v1[11]), *(v3 + v1[11] + 8));

  sub_1A3670FF4(*(v3 + v1[14]), *(v3 + v1[14] + 8));
  v14 = (v3 + v1[15]);
  j__swift_release(*v14);
  v15 = *(type metadata accessor for ChromeScenePhase(0) + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FD670, &qword_1A3A6F6C0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v16 = sub_1A3A2F540();
    (*(*(v16 - 8) + 8))(v14 + v15, v16);
  }

  else
  {
  }

  return swift_deallocObject();
}

double sub_1A38DED48(char *a1)
{
  v3 = *(type metadata accessor for ChromeBottomBar(0) - 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));

  return sub_1A38D99D8(a1, v4, v5, v6);
}

uint64_t sub_1A38DEDBC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_1A38DEE24()
{
  result = qword_1ED996D18;
  if (!qword_1ED996D18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0FDA88, &qword_1A3A6F308);
    sub_1A38DEEDC();
    sub_1A38A08F8(qword_1ED996AC8, &qword_1EB0FD1C0, &qword_1A3A6F350, MEMORY[0x1E6980B30]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED996D18);
  }

  return result;
}

unint64_t sub_1A38DEEDC()
{
  result = qword_1ED996D20;
  if (!qword_1ED996D20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0FDA90, &qword_1A3A6F338);
    sub_1A38DEF68();
    sub_1A38DF158();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED996D20);
  }

  return result;
}

unint64_t sub_1A38DEF68()
{
  result = qword_1ED996D28;
  if (!qword_1ED996D28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0FDA98, &qword_1A3A6F340);
    sub_1A38DEFF4();
    sub_1A38DF104();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED996D28);
  }

  return result;
}

unint64_t sub_1A38DEFF4()
{
  result = qword_1ED996D30;
  if (!qword_1ED996D30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0FDAA0, &qword_1A3A6F348);
    sub_1A38DF31C(&qword_1ED996D38, type metadata accessor for GlassCircleElementButton, &unk_1A3A7908C);
    sub_1A38DF0B0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED996D30);
  }

  return result;
}

unint64_t sub_1A38DF0B0()
{
  result = qword_1ED996D40;
  if (!qword_1ED996D40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED996D40);
  }

  return result;
}

unint64_t sub_1A38DF104()
{
  result = qword_1ED996D48;
  if (!qword_1ED996D48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED996D48);
  }

  return result;
}

unint64_t sub_1A38DF158()
{
  result = qword_1ED996D50;
  if (!qword_1ED996D50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED996D50);
  }

  return result;
}

uint64_t sub_1A38DF1AC(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    sub_1A38DF31C(&qword_1EB0FDAB0, type metadata accessor for DetectInteractionGestureModifier, &unk_1A3A76614);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1A38DF260()
{
  result = qword_1ED996D58;
  if (!qword_1ED996D58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0FDA70, &qword_1A3A6F2F0);
    sub_1A38DF31C(&qword_1ED996D38, type metadata accessor for GlassCircleElementButton, &unk_1A3A7908C);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED996D58);
  }

  return result;
}

uint64_t sub_1A38DF31C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1A38DF364()
{
  result = qword_1ED996D60;
  if (!qword_1ED996D60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0FDAE0, &qword_1A3A6F3F8);
    sub_1A38DF3F0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED996D60);
  }

  return result;
}

unint64_t sub_1A38DF3F0()
{
  result = qword_1ED996D68;
  if (!qword_1ED996D68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0FDAE8, &qword_1A3A6F400);
    sub_1A38DF4A8();
    sub_1A38A08F8(&qword_1ED996D78, &qword_1EB0FDAF0, &qword_1A3A6F408, MEMORY[0x1E697FF90]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED996D68);
  }

  return result;
}

unint64_t sub_1A38DF4A8()
{
  result = qword_1ED996D70;
  if (!qword_1ED996D70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED996D70);
  }

  return result;
}

uint64_t sub_1A38DF4FC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A38DF564(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1A38DF5C4()
{
  result = qword_1EB0FDB30;
  if (!qword_1EB0FDB30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0FD740, &qword_1A3A6EDF8);
    sub_1A38DF67C();
    sub_1A38A08F8(qword_1ED996D80, &qword_1EB0FDB50, &qword_1A3A6F470, MEMORY[0x1E697F548]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0FDB30);
  }

  return result;
}

unint64_t sub_1A38DF67C()
{
  result = qword_1EB0FDB38;
  if (!qword_1EB0FDB38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0FD6F0, &qword_1A3A6ED58);
    sub_1A38DF734();
    sub_1A38A08F8(qword_1ED996D80, &qword_1EB0FDB50, &qword_1A3A6F470, MEMORY[0x1E697F548]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0FDB38);
  }

  return result;
}

unint64_t sub_1A38DF734()
{
  result = qword_1EB0FDB40;
  if (!qword_1EB0FDB40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0FD6E8, &qword_1A3A6ED50);
    sub_1A38DF7EC();
    sub_1A38A08F8(&qword_1ED9966F0, &qword_1EB0FC9B8, &qword_1A3A6D2E0, MEMORY[0x1E697F548]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0FDB40);
  }

  return result;
}

unint64_t sub_1A38DF7EC()
{
  result = qword_1EB0FDB48;
  if (!qword_1EB0FDB48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0FD6E0, &qword_1A3A6ED48);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0FD6D0, &qword_1A3A6ED38);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0FD738, &qword_1A3A6EDF0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0FD6C8, &qword_1A3A6ED30);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0FD728, &qword_1A3A6EDB8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0FD6C0, &qword_1A3A6ED28);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0FD6B8, &qword_1A3A6ED20);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0FD6B0, &qword_1A3A6ED18);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0FD6A8, &qword_1A3A6ED10);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0FD6A0, &qword_1A3A6ED08);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0FD698, &qword_1A3A6ED00);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0FD690, &qword_1A3A6ECF8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0FD680, &qword_1A3A6ECE8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0FD688, &qword_1A3A6ECF0);
    sub_1A38DC800();
    sub_1A38DC8E4();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_1A38DCA00();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_1A38DCC10();
    swift_getOpaqueTypeConformance2();
    sub_1A38A08F8(&qword_1ED9966F0, &qword_1EB0FC9B8, &qword_1A3A6D2E0, MEMORY[0x1E697F548]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0FDB48);
  }

  return result;
}

uint64_t Subsystems.__allocating_init()()
{
  v0 = swift_allocObject();
  *(v0 + 16) = [objc_allocWithZone(CAMSubsystems) init];
  return v0;
}

uint64_t Subsystems.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

id Subsystems.viewfinderViewController.getter()
{
  v1 = [*(v0 + 16) viewfinderViewController];

  return v1;
}

id sub_1A38DFCC0()
{
  v1 = [*(*v0 + 16) viewfinderViewController];

  return v1;
}

uint64_t type metadata accessor for ModePicker(uint64_t a1)
{
  result = qword_1ED996DE0;
  if (!qword_1ED996DE0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1A38DFDC0(uint64_t a1)
{
  sub_1A38E0154(319, &qword_1ED996DF0, type metadata accessor for ModeWheelGestureState, MEMORY[0x1E6981948]);
  if (v1 <= 0x3F)
  {
    sub_1A38E0104(319, &qword_1ED996DF8, MEMORY[0x1E69E6370], MEMORY[0x1E6981948]);
    if (v2 <= 0x3F)
    {
      sub_1A38E00A0(319, &qword_1ED996E00, &qword_1EB0FDA08, &unk_1A3A6F500, MEMORY[0x1E6981948]);
      if (v3 <= 0x3F)
      {
        sub_1A38E00A0(319, qword_1ED996A70, &qword_1EB0FD160, qword_1A3A81580, MEMORY[0x1E69E6720]);
        if (v4 <= 0x3F)
        {
          sub_1A38E0154(319, qword_1ED996E08, type metadata accessor for Debouncer, MEMORY[0x1E6981790]);
          if (v5 <= 0x3F)
          {
            sub_1A38E0154(319, qword_1ED9967C0, MEMORY[0x1E697F6A0], MEMORY[0x1E697DCC0]);
            if (v6 <= 0x3F)
            {
              sub_1A38E0154(319, &qword_1ED9967B8, type metadata accessor for ChromeViewModel, MEMORY[0x1E697DCC0]);
              if (v7 <= 0x3F)
              {
                sub_1A38E0104(319, &qword_1EB0FDB78, MEMORY[0x1E69E7DE0], MEMORY[0x1E69E6720]);
                if (v8 <= 0x3F)
                {
                  sub_1A38E0154(319, &qword_1EB0FDB80, MEMORY[0x1E697C988], MEMORY[0x1E697DCC0]);
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

void sub_1A38E00A0(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_1A38E0104(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_1A38E0154(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1A38E01D4(int a1, double a2)
{
  v5 = MEMORY[0x1E69E6370];
  v6 = MEMORY[0x1E69E6388];
  v13[0] = MEMORY[0x1E69E6370];
  v13[1] = MEMORY[0x1E69E6388];
  swift_getKeyPath(byte_1A3A6F710, v13);
  v15 = v2;
  sub_1A38A08F8(&qword_1ED996E70, &qword_1EB0FDA08, &unk_1A3A6F500, &unk_1A3A6BA14);
  sub_1A3A2F080();

  v7 = swift_beginAccess();
  v8 = *(v2 + 17);
  if (v8 == 2 || ((v8 ^ a1) & 1) != 0)
  {
    *&v9 = MEMORY[0x1EEE9AC00](v7).n128_u64[0];
    swift_getKeyPath(byte_1A3A6F748, v9, v5, v6);
    v14 = v2;
    sub_1A3A2F080();

    v10 = [*(v2 + 24) invalidate];
    if (*(v2 + 24))
    {
      *&v11 = MEMORY[0x1EEE9AC00](v10).n128_u64[0];
      KeyPath = swift_getKeyPath(byte_1A3A6F748, v11, v5, v6);
      MEMORY[0x1EEE9AC00](KeyPath);
      v14 = v2;
      sub_1A3A2F070();
    }

    sub_1A38E0410(a1 & 1);
    sub_1A38E07A8(a2);
  }
}

void sub_1A38E0410(int a1)
{
  v3 = swift_beginAccess();
  v4 = *(v1 + 17);
  if (v4 != 2)
  {
    if (a1 != 2 && ((v4 ^ a1) & 1) == 0)
    {
      goto LABEL_7;
    }

LABEL_6:
    *&v5 = MEMORY[0x1EEE9AC00](v3).n128_u64[0];
    KeyPath = swift_getKeyPath(byte_1A3A6F710, v5, MEMORY[0x1E69E6370], MEMORY[0x1E69E6388]);
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A38A08F8(&qword_1ED996E70, &qword_1EB0FDA08, &unk_1A3A6F500, &unk_1A3A6BA14);
    sub_1A3A2F070();

    return;
  }

  if (a1 != 2)
  {
    goto LABEL_6;
  }

LABEL_7:
  *(v1 + 17) = a1;
}

void sub_1A38E05A0(void *a1)
{
  v2 = v1;
  v4 = *(v1 + 24);
  if (!v4)
  {
    if (!a1)
    {
      v8 = 0;
      goto LABEL_8;
    }

LABEL_6:
    *&v9 = MEMORY[0x1EEE9AC00](a1).n128_u64[0];
    KeyPath = swift_getKeyPath(byte_1A3A6F748, v9, MEMORY[0x1E69E6370], MEMORY[0x1E69E6388]);
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A38A08F8(&qword_1ED996E70, &qword_1EB0FDA08, &unk_1A3A6F500, &unk_1A3A6BA14);
    sub_1A3A2F070();

    return;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  sub_1A38E805C(0, &qword_1EB0FC310, 0x1E695DFF0);
  v5 = v4;
  v6 = a1;
  v7 = sub_1A3A31D10();

  if ((v7 & 1) == 0)
  {
    goto LABEL_6;
  }

  v8 = *(v2 + 24);
LABEL_8:
  *(v2 + 24) = a1;
}

void sub_1A38E0774(uint64_t a1, void *a2)
{
  v2 = *(a1 + 24);
  *(a1 + 24) = a2;
  v3 = a2;
}

void sub_1A38E07A8(double a1)
{
  v3 = MEMORY[0x1E69E6370];
  v4 = MEMORY[0x1E69E6388];
  v12[0] = MEMORY[0x1E69E6370];
  v12[1] = MEMORY[0x1E69E6388];
  swift_getKeyPath(byte_1A3A6F748, v12);
  aBlock[0] = v1;
  sub_1A38A08F8(&qword_1ED996E70, &qword_1EB0FDA08, &unk_1A3A6F500, &unk_1A3A6BA14);
  sub_1A3A2F080();

  v5 = [*(v1 + 24) invalidate];
  if (*(v1 + 24))
  {
    *&v6 = MEMORY[0x1EEE9AC00](v5).n128_u64[0];
    KeyPath = swift_getKeyPath(byte_1A3A6F748, v6, v3, v4);
    MEMORY[0x1EEE9AC00](KeyPath);
    aBlock[0] = v1;
    sub_1A3A2F070();
  }

  if (a1 <= 0.0)
  {
    sub_1A3A314E0();
    sub_1A3A2F8A0();

    sub_1A38E0410(2);
  }

  else
  {
    v8 = objc_opt_self();
    v9 = swift_allocObject();
    swift_weakInit();
    aBlock[4] = sub_1A38E7F7C;
    aBlock[5] = v9;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1A395EC3C;
    aBlock[3] = &block_descriptor_0;
    v10 = _Block_copy(aBlock);

    v11 = [v8 scheduledTimerWithTimeInterval:0 repeats:v10 block:a1];
    _Block_release(v10);
    sub_1A38E05A0(v11);
  }
}

double sub_1A38E0A74(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_1A3A314E0();
    sub_1A3A2F8A0();

    sub_1A38E0410(2);
  }

  return result;
}

void sub_1A38E0B14(_BYTE *a1)
{
  v2 = MEMORY[0x1E69E6370];
  v3 = MEMORY[0x1E69E6388];
  v9[0] = MEMORY[0x1E69E6370];
  v9[1] = MEMORY[0x1E69E6388];
  swift_getKeyPath(byte_1A3A6F710, v9);
  v11 = a1;
  sub_1A38A08F8(&qword_1ED996E70, &qword_1EB0FDA08, &unk_1A3A6F500, &unk_1A3A6BA14);
  sub_1A3A2F080();

  swift_beginAccess();
  v4 = a1[17];
  if (v4 == 2)
  {
    v10 = a1[16];
    v5 = v10;
    v6 = swift_beginAccess();
    if (v5 != a1[18])
    {
      goto LABEL_5;
    }
  }

  else
  {
    v5 = v4 & 1;
    v10 = v4 & 1;
    v6 = swift_beginAccess();
    if (a1[18] != v5)
    {
LABEL_5:
      *&v7 = MEMORY[0x1EEE9AC00](v6).n128_u64[0];
      KeyPath = swift_getKeyPath(byte_1A3A6F780, v7, v2, v3);
      MEMORY[0x1EEE9AC00](KeyPath);
      v9[2] = a1;
      sub_1A3A2F070();

      return;
    }
  }

  a1[18] = v5;
}

uint64_t sub_1A38E0DA0@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v197 = a1;
  v3 = type metadata accessor for ModeWheelGestureState(0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v196 = &v182 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for ModePicker(0);
  v229 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v214 = v6;
  v225 = &v182 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v218 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FDA00, &unk_1A3A6F250);
  MEMORY[0x1EEE9AC00](v218);
  v216 = (&v182 - v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FDB88, &qword_1A3A6F560);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v182 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v188 = &v182 - v12;
  v187 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FDB90, &qword_1A3A6F568);
  MEMORY[0x1EEE9AC00](v187);
  v190 = &v182 - v13;
  v189 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FDB98, &qword_1A3A6F570);
  MEMORY[0x1EEE9AC00](v189);
  v215 = &v182 - v14;
  v191 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FDBA0, &qword_1A3A6F578);
  MEMORY[0x1EEE9AC00](v191);
  v192 = &v182 - v15;
  v195 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FDBA8, &qword_1A3A6F580);
  v194 = *(v195 - 8);
  MEMORY[0x1EEE9AC00](v195);
  v17 = &v182 - v16;
  v18 = sub_1A3A2FEE0();
  v228 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v227 = &v182 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v213 = v5;
  v20 = v1 + *(v5 + 48);
  v21 = *v20;
  LODWORD(v5) = *(v20 + 8);
  sub_1A3A2EA60();
  v22 = v21;
  v231 = v5;
  if ((v5 & 1) == 0)
  {
    sub_1A3A31C30();
    v23 = sub_1A3A305C0();
    sub_1A3A2F270();

    v24 = v227;
    sub_1A3A2FED0();
    swift_getAtKeyPath();

    (*(v228 + 8))(v24, v18);
    v22 = *v233;
  }

  v193 = v17;
  swift_getKeyPath("hKiG");
  *v233 = v22;
  sub_1A38E91A8(&qword_1ED996608, type metadata accessor for ChromeViewModel, &unk_1A3A70668);
  sub_1A3A2F080();

  v25 = *(v22 + 600);
  sub_1A3A2EA50();

  MEMORY[0x1EEE9AC00](v26);
  v181 = v2;
  v27 = sub_1A396B584(sub_1A38E7898, (&v182 - 4), v25);
  v28 = sub_1A395BA98(v27, qword_1F1654320);

  sub_1A3A2EA60();
  v29 = v21;
  if ((v231 & 1) == 0)
  {
    sub_1A3A31C30();
    v30 = sub_1A3A305C0();
    sub_1A3A2F270();

    v31 = v227;
    sub_1A3A2FED0();
    swift_getAtKeyPath();

    (*(v228 + 8))(v31, v18);
    v29 = *v233;
  }

  swift_getKeyPath("HKiG");
  v230 = v21;
  *v233 = v29;
  sub_1A3A2F080();
  v32 = v230;

  LODWORD(v207) = *(v29 + 416);

  sub_1A3A2EA60();
  v33 = v32;
  if ((v231 & 1) == 0)
  {
    sub_1A3A31C30();
    v34 = sub_1A3A305C0();
    sub_1A3A2F270();

    v35 = v227;
    sub_1A3A2FED0();
    swift_getAtKeyPath();

    (*(v228 + 8))(v35, v18);
    v33 = *v233;
  }

  swift_getKeyPath("(KiG");
  *v233 = v33;
  sub_1A3A2F080();
  v36 = v230;

  v37 = *(v33 + 400);
  v38 = *(v33 + 408);

  sub_1A3A2EA60();
  v39 = v36;
  if ((v231 & 1) == 0)
  {
    sub_1A3A31C30();
    v40 = sub_1A3A305C0();
    sub_1A3A2F270();

    v41 = v227;
    sub_1A3A2FED0();
    swift_getAtKeyPath();

    (*(v228 + 8))(v41, v18);
    v39 = *v233;
  }

  swift_getKeyPath("\bKiG");
  *v233 = v39;
  sub_1A3A2F080();
  v42 = v230;

  v43 = *(v39 + 1180);

  v226 = v2;
  v210 = sub_1A38E2840(v28);
  v209 = v44;
  v208 = v45;
  sub_1A3A2EA60();
  v46 = v42;
  if ((v231 & 1) == 0)
  {
    sub_1A3A31C30();
    v47 = sub_1A3A305C0();
    sub_1A3A2F270();

    v48 = v227;
    sub_1A3A2FED0();
    swift_getAtKeyPath();

    (*(v228 + 8))(v48, v18);
    v46 = *v233;
  }

  KeyPath = swift_getKeyPath(byte_1A3A6F628, v18);
  v50 = swift_allocObject();
  v50[2] = 0;
  v50[3] = 0;
  v50[4] = v46;
  v50[5] = KeyPath;
  v51 = swift_allocObject();
  v51[2] = 0;
  v51[3] = 0;
  v51[4] = v46;
  v51[5] = KeyPath;
  v51[6] = sub_1A38E28B8;
  v51[7] = 0;
  type metadata accessor for CAMCaptureMode(0);
  sub_1A3A2EA60();
  sub_1A3A2EA60();
  sub_1A3A311C0();
  v220 = *&v233[8];
  v221 = *v233;
  v219 = *&v233[16];
  v52 = v213;
  v53 = v226;
  v54 = (v226 + v213[13]);
  v55 = *v54;
  v56 = *(v54 + 8);
  sub_1A38E28CC();
  v203 = v57;
  v202 = v58;
  v59 = *(v28 + 16) >= 3uLL;
  v217 = v28;
  v212 = v8;
  v211 = v10;
  v205 = v55;
  v204 = v56;
  if (v59)
  {
    v60 = v53 + v52[5];
    v61 = *v60;
    v62 = *(v60 + 8);
    LOBYTE(v60) = *(v60 + 16);
    *v233 = v61;
    *&v233[8] = v62;
    v233[16] = v60;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FC598, &qword_1A3A6FC80);
    sub_1A3A311B0();
    v201 = v234;
    v200 = v235;
    v63 = BYTE8(v235);
  }

  else
  {
    LOBYTE(v234) = 0;
    sub_1A3A311D0();
    v200 = *&v233[8];
    v201 = *v233;
    v63 = v233[16];
  }

  v199 = v63;
  v64 = v229;
  v206 = (v43 & 1) == 0;
  v65 = v53 + v52[6];
  *v233 = *v65;
  *&v233[8] = *(v65 + 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FDBB0, &unk_1A3A6F650);
  sub_1A3A311B0();
  v185 = v234;
  v186 = v235;
  sub_1A3A311B0();
  v66 = (v53 + v52[9]);
  v67 = v66[1];
  v224 = *v66;
  v68 = v225;
  sub_1A38E7EA0(v53, v225, type metadata accessor for ModePicker);
  v69 = *(v64 + 80);
  v70 = (v69 + 16) & ~v69;
  v71 = v70 + v214;
  v184 = swift_allocObject();
  sub_1A38E90F0(v68, v184 + v70, type metadata accessor for ModePicker);
  v183 = *(v53 + v52[8]);
  sub_1A38E7EA0(v53, v68, type metadata accessor for ModePicker);
  v229 = v71;
  v72 = swift_allocObject();
  v223 = v70;
  v198 = v72;
  sub_1A38E90F0(v68, v72 + v70, type metadata accessor for ModePicker);
  sub_1A38E7EA0(v53, v68, type metadata accessor for ModePicker);
  v222 = v69;
  v73 = swift_allocObject();
  v74 = v217;
  *(v73 + 16) = v217;
  sub_1A38E90F0(v68, v73 + ((v69 + 24) & ~v69), type metadata accessor for ModePicker);
  v234 = v221;
  *&v235 = v220;
  *(&v235 + 1) = v219;
  v75 = v212;
  v76 = v211;
  v77 = &v211[v212[17]];
  LOBYTE(v232) = 0;
  v78 = v224;
  sub_1A365F488(v224, v67);
  v214 = v67;
  sub_1A365F488(v78, v67);
  sub_1A3A2EA50();
  sub_1A3A2F6D0();
  v79 = *&v233[8];
  v80 = *&v233[16];
  *v77 = v233[0];
  *(v77 + 1) = v79;
  *(v77 + 1) = v80;
  v81 = v75[30];
  if (qword_1EB0FC220 != -1)
  {
    swift_once();
  }

  v82 = v207 == 2;
  *(v76 + v81) = 0x4048000000000000;
  *(v76 + v75[31]) = 0x3FF0000000000000;
  v83 = (v76 + v75[32]);
  sub_1A38E805C(0, qword_1ED996BC8, 0x1E69E9610);
  v84 = sub_1A3A31C70();
  type metadata accessor for Debouncer();
  v85 = swift_allocObject();
  *(v85 + 16) = 0;
  *(v85 + 24) = v84;
  v232 = v85;
  sub_1A3A30F80();
  v86 = *&v233[8];
  *v83 = *v233;
  v83[1] = v86;
  v87 = v76 + v75[33];
  LOBYTE(v232) = 0;
  sub_1A3A30F80();
  v88 = *&v233[8];
  *v87 = v233[0];
  *(v87 + 8) = v88;
  v89 = v76 + v75[34];
  LOBYTE(v232) = 0;
  sub_1A3A30F80();
  v90 = *&v233[8];
  *v89 = v233[0];
  *(v89 + 8) = v90;
  v91 = (v76 + v75[35]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FDA08, &unk_1A3A6F500);
  v92 = swift_allocObject();
  *(v92 + 17) = 2;
  *(v92 + 24) = 0;
  sub_1A3A2F0B0();
  *(v92 + 16) = 0;
  *(v92 + 18) = 0;
  v232 = v92;
  sub_1A3A30F80();
  v93 = *&v233[8];
  *v91 = *v233;
  v91[1] = v93;
  v94 = (v76 + v75[36]);
  v232 = 0;
  sub_1A3A30F80();
  v95 = *&v233[8];
  *v94 = *v233;
  v94[1] = v95;
  v96 = v76 + v75[39];
  LOWORD(v232) = 256;
  sub_1A3A30F80();
  v97 = v233[1];
  v98 = *&v233[8];
  *v96 = v233[0];
  *(v96 + 1) = v97;
  *(v96 + 8) = v98;
  v99 = v76 + v75[42];
  LOBYTE(v232) = 0;
  sub_1A3A30F80();
  v100 = *&v233[8];
  *v99 = v233[0];
  *(v99 + 8) = v100;
  v101 = v76 + v75[44];
  LOBYTE(v232) = 0;
  sub_1A3A30F80();
  v102 = *&v233[8];
  *v101 = v233[0];
  *(v101 + 8) = v102;
  v103 = (v76 + v75[46]);
  v232 = 0;
  sub_1A3A30F80();
  v104 = *&v233[8];
  *v103 = *v233;
  v103[1] = v104;
  v105 = (v76 + v75[47]);
  v232 = 0;
  sub_1A3A30F80();
  v106 = *&v233[8];
  *v105 = *v233;
  v105[1] = v106;
  v107 = v76 + v75[48];
  *v107 = swift_getKeyPath(byte_1A3A6F668);
  *(v107 + 8) = 0;
  v108 = type metadata accessor for ChromeScenePhase(0);
  v109 = *(v108 + 20);
  *(v107 + v109) = swift_getKeyPath(byte_1A3A6F690);
  v207 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FD670, &qword_1A3A6F6C0);
  swift_storeEnumTagMultiPayload();
  *(v76 + v75[19]) = v82;
  v110 = (v76 + v75[20]);
  *v110 = v37;
  v110[1] = v38;
  *(v76 + v75[21]) = v206;
  *(v76 + v75[22]) = v74;
  v111 = v210;
  v112 = v209;
  v113 = v208;
  if ((v208 & 1) == 0)
  {
    if (__OFSUB__(v209, v210))
    {
      __break(1u);
LABEL_34:
      __break(1u);
      goto LABEL_35;
    }

    if (v209 - v210 != 1)
    {
LABEL_35:
      result = sub_1A3A32070("Fatal error", 11, 2, 0xD000000000000036, 0x80000001A3AA2080, "CameraUI/ModeWheel.swift", 24, 2, 43, 0);
      __break(1u);
      return result;
    }
  }

  v114 = v76 + v75[23];
  *v114 = v210;
  *(v114 + 8) = v112;
  *(v114 + 16) = v113 & 1;
  sub_1A3A2EA50();
  v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FDBC0, &qword_1A3A6F6C8);
  MEMORY[0x1A58F7010](v233, v115);
  v116 = *(v74 + 16);
  if (v116)
  {
    v107 = 0;
    while (*(v74 + 8 * v107 + 32) != *v233)
    {
      if (v116 == ++v107)
      {
        goto LABEL_23;
      }
    }
  }

  else
  {
LABEL_23:

    __break(1u);
  }

  v117 = v76 + v75[37];
  v118 = v76 + v75[38];
  v119 = (v76 + v75[24]);
  *v119 = v221;
  v119[1] = v220;
  v119[2] = v219;
  *v117 = v205;
  *(v117 + 8) = v204;
  *v118 = v203;
  *(v118 + 8) = v202 & 1;
  v120 = v76 + v75[25];
  v121 = v200;
  *v120 = v201;
  *(v120 + 8) = v121;
  *(v120 + 16) = v199;
  v122 = v75[45];
  v232 = v107;
  sub_1A3A30F80();
  *(v76 + v122) = *v233;
  v123 = (v76 + v75[28]);
  v124 = v198;
  *v123 = sub_1A38E7950;
  v123[1] = v124;
  v125 = (v76 + v75[29]);
  *v125 = sub_1A38E79CC;
  v125[1] = v73;
  v126 = v107;
  v127 = 0.0;
  v213 = v108;
  if ((v113 & 1) != 0 || v107 < v111)
  {
    goto LABEL_29;
  }

  if (v112 >= v107)
  {
    if (!__OFADD__(v111, v112))
    {
      v127 = vcvtd_n_f64_s64(v111 + v112, 1uLL) - v126;
LABEL_29:
      v126 = v127 + v126;
      goto LABEL_30;
    }

    goto LABEL_34;
  }

LABEL_30:
  v221 = (v76 + v75[26]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FDA50, &qword_1A3A6F2A0);
  v128 = swift_allocObject();
  *(v128 + 40) = 0;
  v129 = *(*v128 + 136);
  v130 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FDA58, &qword_1A3A6F2A8);
  v131 = *(*(v130 - 8) + 56);
  v131(v128 + v129, 1, 1, v130);
  *(v128 + *(*v128 + 144)) = 0x3FA1111111111111;
  sub_1A3A2F0B0();
  v132 = MEMORY[0x1E69E7CC0];
  *(v128 + 16) = MEMORY[0x1E69E7CC0];
  *(v128 + 24) = 0x3F947AE147AE147BLL;
  *(v128 + 32) = v126;
  v133 = (v76 + v75[40]);
  v232 = v128;
  sub_1A3A30F80();
  v134 = *&v233[8];
  *v133 = *v233;
  v133[1] = v134;
  v135 = swift_allocObject();
  *(v135 + 40) = 0;
  v131(v135 + *(*v135 + 136), 1, 1, v130);
  *(v135 + *(*v135 + 144)) = 0x3FA1111111111111;
  sub_1A3A2F0B0();
  *(v135 + 16) = v132;
  *(v135 + 24) = xmmword_1A3A6F4D0;
  v136 = (v76 + v75[41]);
  v232 = v135;
  sub_1A3A30F80();
  v137 = *&v233[8];
  *v136 = *v233;
  v136[1] = v137;
  v138 = v76 + v75[43];
  *v138 = v185;
  *(v138 + 8) = v186;
  sub_1A388F670(v216, v76, &qword_1EB0FDA00, &unk_1A3A6F250);
  v139 = v221;
  v140 = v214;
  *v221 = v224;
  *(v139 + 1) = v140;
  v141 = (v76 + v75[27]);
  v142 = v184;
  *v141 = sub_1A38E7938;
  v141[1] = v142;
  *(v76 + v75[18]) = v183;
  v143 = v188;
  sub_1A388F670(v76, v188, &qword_1EB0FDB88, &qword_1A3A6F560);
  v145 = v225;
  v144 = v226;
  v221 = type metadata accessor for ModePicker;
  sub_1A38E7EA0(v226, v225, type metadata accessor for ModePicker);
  v146 = (v229 + 7) & 0xFFFFFFFFFFFFFFF8;
  v147 = swift_allocObject();
  v148 = v223;
  sub_1A38E90F0(v145, v147 + v223, type metadata accessor for ModePicker);
  *(v147 + v146) = v74;
  v149 = v190;
  sub_1A388F670(v143, v190, &qword_1EB0FDB88, &qword_1A3A6F560);
  v150 = (v149 + *(v187 + 36));
  *v150 = sub_1A38E7A58;
  v150[1] = v147;
  v150[2] = 0;
  v150[3] = 0;
  sub_1A38E7EA0(v144, v145, type metadata accessor for ModePicker);
  v151 = swift_allocObject();
  sub_1A38E90F0(v145, v151 + v148, type metadata accessor for ModePicker);
  v152 = v215;
  v153 = v215 + *(v189 + 36);
  v154 = *MEMORY[0x1E697BE38];
  v155 = sub_1A3A2F540();
  v156 = *(v155 - 8);
  v216 = *(v156 + 104);
  v219 = (v156 + 104);
  v216(v153, v154, v155);
  v157 = type metadata accessor for ScenePhaseModifier(0);
  *(v153 + v157[5]) = 0;
  v158 = (v153 + v157[6]);
  *v158 = sub_1A38E7AE4;
  v158[1] = v151;
  v159 = v153 + v157[7];
  *v159 = swift_getKeyPath(byte_1A3A6F668);
  *(v159 + 8) = 0;
  v160 = v213[5];
  *(v159 + v160) = swift_getKeyPath(byte_1A3A6F690);
  swift_storeEnumTagMultiPayload();
  v161 = v217;
  sub_1A388F670(v149, v152, &qword_1EB0FDB90, &qword_1A3A6F568);
  v163 = v225;
  v162 = v226;
  sub_1A38E7EA0(v226, v225, v221);
  v164 = swift_allocObject();
  v220 = type metadata accessor for ModePicker;
  sub_1A38E90F0(v163, v164 + v223, type metadata accessor for ModePicker);
  v165 = v192;
  v166 = &v192[*(v191 + 36)];
  v216(v166, *MEMORY[0x1E697BE40], v155);
  v166[v157[5]] = 0;
  v167 = &v166[v157[6]];
  *v167 = sub_1A38E7B60;
  v167[1] = v164;
  v168 = &v166[v157[7]];
  *v168 = swift_getKeyPath(byte_1A3A6F668);
  v168[8] = 0;
  v169 = v213[5];
  *&v168[v169] = swift_getKeyPath(byte_1A3A6F690);
  swift_storeEnumTagMultiPayload();
  sub_1A388F670(v215, v165, &qword_1EB0FDB98, &qword_1A3A6F570);
  sub_1A3A2EA50();
  v170 = v196;
  MEMORY[0x1A58F7010](v218);
  LOBYTE(v168) = *(v170 + 1);
  sub_1A38E7B78(v170);
  v233[0] = v168;
  sub_1A38E7EA0(v162, v163, v221);
  v171 = swift_allocObject();
  sub_1A38E90F0(v163, v171 + v223, v220);
  sub_1A38E7C54();
  v172 = v193;
  sub_1A3A30CA0();

  sub_1A388F740(v165, &qword_1EB0FDBA0, &qword_1A3A6F578);
  v173 = sub_1A38E3A68();
  v174 = v230;
  sub_1A3A2EA60();
  if ((v231 & 1) == 0)
  {
    sub_1A3A31C30();
    v175 = sub_1A3A305C0();
    sub_1A3A2F270();

    v176 = v227;
    sub_1A3A2FED0();
    swift_getAtKeyPath();

    (*(v228 + 8))(v176, v182);
    v174 = *v233;
  }

  v177 = v197;
  (*(v194 + 32))(v197, v172, v195);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FDBE8, &unk_1A3A6F6D0);
  v179 = v177 + *(result + 36);
  *v179 = v173 & 1;
  *(v179 + 8) = v161;
  *(v179 + 16) = v174;
  v180 = v214;
  *(v179 + 24) = v224;
  *(v179 + 32) = v180;
  return result;
}

uint64_t sub_1A38E2840(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  v2 = 0;
  v3 = a1 + 32;
  while (1)
  {
    v4 = *(v3 + 8 * v2);
    if (!v4)
    {
      break;
    }

    if (v1 == ++v2)
    {
      return 0;
    }
  }

  while (*(v3 + 8 * v4) != 1)
  {
    if (v1 == ++v4)
    {
      return 0;
    }
  }

  v6 = v2 - v4;
  if (v2 - v4 < 0)
  {
    v6 = v4 - v2;
  }

  if (v4 < v2)
  {
    v2 = v4;
  }

  if (v6 == 1)
  {
    return v2;
  }

  else
  {
    return 0;
  }
}

double sub_1A38E28CC()
{
  v1 = sub_1A3A2FEE0();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = (v0 + *(type metadata accessor for ModePicker(0) + 48));
  v6 = *v5;
  v7 = *(v5 + 8);
  sub_1A3A2EA60();
  v8 = v6;
  if ((v7 & 1) == 0)
  {
    sub_1A3A31C30();
    v9 = sub_1A3A305C0();
    sub_1A3A2F270();

    sub_1A3A2FED0();
    swift_getAtKeyPath();

    (*(v2 + 8))(v4, v1);
    v8 = v18;
  }

  swift_getKeyPath("HKiG");
  v18 = v8;
  sub_1A38E91A8(&qword_1ED996608, type metadata accessor for ChromeViewModel, &unk_1A3A70668);
  sub_1A3A2F080();

  v10 = *(v8 + 416);

  if (v10 <= 1)
  {
    sub_1A3A2EA60();
    if ((v7 & 1) == 0)
    {
      sub_1A3A31C30();
      v12 = sub_1A3A305C0();
      sub_1A3A2F270();

      sub_1A3A2FED0();
      swift_getAtKeyPath();

      (*(v2 + 8))(v4, v1);
      v6 = v18;
    }

    swift_getKeyPath("HKiG");
    v18 = v6;
    sub_1A3A2F080();

    v13 = *(v6 + 416);

    if (!v13)
    {
      v16 = sub_1A3911D18(v14, v15);
      return v16 + v16;
    }
  }

  return result;
}

void sub_1A38E2BB0()
{
  v1 = v0;
  v2 = sub_1A3A2FEE0();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1ED996480 != -1)
  {
    swift_once();
  }

  v6 = off_1ED997FE0;
  swift_getKeyPath("xIiG");
  v35 = v6;
  sub_1A38E91A8(&qword_1ED996650, type metadata accessor for SettingsManager, &unk_1A3A777B8);
  sub_1A3A2F080();

  sub_1A3A2EA60();
  v7 = sub_1A394E960();

  if (v7)
  {
    sub_1A39598B0(1, 0xD000000000000013, 0x80000001A3AA2130, v8);
    v9 = sub_1A3A31DF0();
    v11 = v10;

    v35 = 0xD000000000000011;
    v36 = 0x80000001A3AA20E0;
    MEMORY[0x1A58F7770](v9, v11);

    v12 = v35;
    v13 = v36;
    v15 = sub_1A395994C(1uLL, 0xD000000000000013, 0x80000001A3AA2130, v14);
    v39 = v12;
    v40 = v13;
    v35 = v15;
    v36 = v16;
    v37 = v17;
    v38 = v18;
    sub_1A38E849C();
    sub_1A3A318E0();

    v19 = sub_1A39C3B44(v39, v40);
    LOBYTE(v13) = v20;

    if (v13)
    {
      v24 = 0;
    }

    else
    {
      v24 = v19;
    }

    if (__OFADD__(v24, 1))
    {
      __break(1u);
      return;
    }

    sub_1A39540A0(v24 + 1, 1, v23, v21, v22);
  }

  v25 = v1 + *(type metadata accessor for ModePicker(0) + 48);
  v26 = *v25;
  v27 = *(v25 + 8);
  sub_1A3A2EA60();
  v28 = v26;
  if ((v27 & 1) == 0)
  {
    sub_1A3A31C30();
    v29 = sub_1A3A305C0();
    sub_1A3A2F270();

    sub_1A3A2FED0();
    swift_getAtKeyPath();

    (*(v3 + 8))(v5, v2);
    v28 = v35;
  }

  v30 = v28[153];
  v31 = v28[154];
  __swift_project_boxed_opaque_existential_1(v28 + 150, v30);
  (*(v31 + 8))(0, 0, 0, 96, v28, v30, v31);

  sub_1A3A2EA60();
  if ((v27 & 1) == 0)
  {
    sub_1A3A31C30();
    v32 = sub_1A3A305C0();
    sub_1A3A2F270();

    sub_1A3A2FED0();
    swift_getAtKeyPath();

    (*(v3 + 8))(v5, v2);
    v26 = v35;
  }

  v33 = v26[153];
  v34 = v26[154];
  __swift_project_boxed_opaque_existential_1(v26 + 150, v33);
  (*(v34 + 8))(0, 0, 0, 92, v26, v33, v34);
}

int *sub_1A38E2FF8@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v86 = a2;
  v84 = a3;
  v4 = sub_1A3A30050();
  v82 = *(v4 - 8);
  v83 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v81 = &v73 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v78 = &v73 - v7;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FDBF8, &qword_1A3A6F808);
  MEMORY[0x1EEE9AC00](v74);
  v75 = (&v73 - v8);
  v9 = sub_1A3A30090();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = (&v73 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FDC00, &qword_1A3A6F810);
  MEMORY[0x1EEE9AC00](v79);
  v76 = &v73 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v85 = &v73 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v80 = &v73 - v17;
  v18 = objc_opt_self();
  v77 = a1;
  result = [v18 cam:a1 localizedTitleForMode:0 wantsCompactTitle:?];
  if (result)
  {
    v20 = result;
    v21 = [result cam_uppercaseStringWithPreferredLocale];

    v22 = sub_1A3A31850();
    v24 = v23;

    v89 = v22;
    v90 = v24;
    sub_1A389FD78();
    v25 = sub_1A3A308E0();
    v27 = v26;
    v29 = v28;
    sub_1A38E4B94(v12);
    sub_1A391163C(v12);
    (*(v10 + 8))(v12, v9);
    sub_1A3A30740();
    sub_1A391A414(v30);
    v31 = CEKFontOfSizeWeightStyle();
    sub_1A3A307B0();
    v32 = sub_1A3A308A0();
    v34 = v33;
    v36 = v35;

    sub_1A389F1B4(v25, v27, v29 & 1);

    if (qword_1ED996450 != -1)
    {
      swift_once();
    }

    v37 = sub_1A3A308C0();
    v39 = v38;
    v41 = v40;
    sub_1A389F1B4(v32, v34, v36 & 1);

    if (v86)
    {
      if (qword_1ED996468 != -1)
      {
        swift_once();
      }

      v42 = qword_1ED99D880;
      sub_1A3A2EA60();
    }

    else
    {
      v42 = sub_1A3A30DD0();
    }

    v43 = *(v74 + 36);
    v44 = *MEMORY[0x1E6981DB8];
    v45 = sub_1A3A31520();
    v46 = v75;
    (*(*(v45 - 8) + 104))(v75 + v43, v44, v45);
    *v46 = v42;
    sub_1A38A08F8(&qword_1EB0FDC08, &qword_1EB0FDBF8, &qword_1A3A6F808, MEMORY[0x1E697FAF0]);
    v47 = sub_1A3A30870();
    v49 = v48;
    v51 = v50;
    v52 = v37;
    v54 = v53;
    v74 = v53;
    sub_1A389F1B4(v52, v39, v41 & 1);

    sub_1A388F740(v46, &qword_1EB0FDBF8, &qword_1A3A6F808);
    v55 = sub_1A3A314E0();
    v89 = v47;
    v90 = v49;
    v91 = v51 & 1;
    v92 = v54;
    v93 = v55;
    v56 = v86;
    v94 = v86 & 1;
    v87 = sub_1A39906E0(v77);
    v88 = v57;
    sub_1A3A2EA50();
    MEMORY[0x1A58F7770](0x7474754265646F4DLL, 0xEA00000000006E6FLL);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FDC10, &qword_1A3A6F818);
    sub_1A38E84F0();
    v58 = v76;
    sub_1A3A30B70();

    sub_1A389F1B4(v47, v49, v51 & 1);

    v59 = v78;
    sub_1A3A30040();
    sub_1A3A2FA50();
    v60 = v83;
    v61 = *(v82 + 8);
    v61(v59, v83);
    sub_1A388F740(v58, &qword_1EB0FDC00, &qword_1A3A6F810);
    if (v56)
    {
      v62 = v81;
      sub_1A3A30020();
    }

    else
    {
      v89 = MEMORY[0x1E69E7CC0];
      sub_1A38E91A8(&qword_1ED996BA8, MEMORY[0x1E697F5E0], MEMORY[0x1E697F5F0]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FD510, &qword_1A3A6E8C0);
      sub_1A38A08F8(&qword_1ED996BB0, &qword_1EB0FD510, &qword_1A3A6E8C0, MEMORY[0x1E69E6328]);
      v62 = v81;
      sub_1A3A31E80();
    }

    v63 = v80;
    v64 = v85;
    sub_1A3A2FA50();
    v61(v62, v60);
    sub_1A388F740(v64, &qword_1EB0FDC00, &qword_1A3A6F810);
    sub_1A3A31590();
    v66 = v65;
    v68 = v67;
    type metadata accessor for ChromeViewModel(0);
    sub_1A38E91A8(&qword_1ED996608, type metadata accessor for ChromeViewModel, &unk_1A3A70668);
    v69 = sub_1A3A2F650();
    LOBYTE(v64) = v70;
    v71 = v84;
    sub_1A388F670(v63, v84, &qword_1EB0FDC00, &qword_1A3A6F810);
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FDC18, &qword_1A3A6F820);
    v72 = v71 + result[9];
    *v72 = 3;
    *(v72 + 8) = v66;
    *(v72 + 16) = v68;
    *(v72 + 24) = 1;
    *(v72 + 32) = v69;
    *(v72 + 40) = v64 & 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1A38E3860@<X0>(uint64_t *a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = sub_1A3A2FEE0();
  v28 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *a1;
  v14 = sub_1A38E2840(a3);
  v16 = v15;
  v29 = v17;
  v18 = (a4 + *(type metadata accessor for ModePicker(0) + 48));
  v19 = *v18;
  if (*(v18 + 8) == 1)
  {
    v30 = *v18;
    sub_1A3A2EA50();
    sub_1A3A2EA60();
  }

  else
  {
    sub_1A3A2EA50();
    sub_1A3A2EA60();
    sub_1A3A31C30();
    v26 = v10;
    v20 = sub_1A3A305C0();
    v27 = v16;
    v21 = v14;
    v22 = v13;
    v23 = v20;
    sub_1A3A2F270();

    v13 = v22;
    v14 = v21;
    v16 = v27;
    sub_1A3A2FED0();
    swift_getAtKeyPath();

    (*(v28 + 8))(v12, v26);
    v19 = v30;
  }

  result = sub_1A38E3A68();
  v25 = v29 & 1;
  *a5 = v13;
  *(a5 + 8) = a2 & 1;
  *(a5 + 16) = a3;
  *(a5 + 24) = v14;
  *(a5 + 32) = v16;
  *(a5 + 40) = v25;
  *(a5 + 48) = v19;
  *(a5 + 56) = result & 1;
  return result;
}

uint64_t sub_1A38E3A68()
{
  v0 = sub_1A3A30430();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v14 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v14 - v5;
  sub_1A38E5708((&v14 - v5));
  sub_1A3A303E0();
  v7 = sub_1A3A30410();
  v8 = *(v1 + 8);
  v8(v3, v0);
  v8(v6, v0);
  if (v7 & 1) == 0 || (sub_1A38E5708(v6), sub_1A3A30420(), v9 = sub_1A3A30410(), v8(v3, v0), v8(v6, v0), (v9) || (sub_1A38E5708(v6), sub_1A3A303F0(), v10 = sub_1A3A30410(), v8(v3, v0), v8(v6, v0), (v10))
  {
    v11 = 0;
  }

  else
  {
    sub_1A38E5708(v6);
    sub_1A3A30400();
    v13 = sub_1A3A30410();
    v8(v3, v0);
    v8(v6, v0);
    v11 = v13 ^ 1;
  }

  return v11 & 1;
}

void sub_1A38E3C88(uint64_t a1, uint64_t a2)
{
  type metadata accessor for ModePicker(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FC598, &qword_1A3A6FC80);
  sub_1A3A311A0();
  sub_1A38E3D0C();
}

void sub_1A38E3D0C()
{
  v1 = v0;
  v2 = sub_1A3A2FEE0();
  v56 = *(v2 - 8);
  v57 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v55 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for ModePicker(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v55 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = (v0 + *(v9 + 40));
  v12 = *v10;
  v11 = v10[1];
  v58 = v12;
  v59 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FDBF0, &qword_1A3A6F6E0);
  sub_1A3A30F90();
  if (qword_1ED996480 != -1)
  {
    swift_once();
  }

  v13 = off_1ED997FE0;
  swift_getKeyPath("xIiG");
  v58 = v13;
  sub_1A38E91A8(&qword_1ED996650, type metadata accessor for SettingsManager, &unk_1A3A777B8);
  sub_1A3A2F080();

  sub_1A395B014(v14, v15, v16, v17);
  v19 = v18;
  sub_1A38E7EA0(v1, &v55 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ModePicker);
  v20 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v21 = swift_allocObject();
  sub_1A38E90F0(v8, v21 + v20, type metadata accessor for ModePicker);
  sub_1A3904E64(sub_1A38E8410, v21, v19);

  v22 = v1 + *(v5 + 48);
  v23 = *v22;
  v24 = *(v22 + 8);
  sub_1A3A2EA60();
  v26 = v56;
  v25 = v57;
  if ((v24 & 1) == 0)
  {
    sub_1A3A31C30();
    v27 = sub_1A3A305C0();
    sub_1A3A2F270();

    sub_1A3A2FED0();
    swift_getAtKeyPath();

    (*(v26 + 8))(v4, v25);
  }

  sub_1A3A2EA60();

  v30 = sub_1A392A6C4(v28, v29);

  if (v30)
  {
    goto LABEL_9;
  }

  sub_1A3A2EA60();
  if ((v24 & 1) == 0)
  {
    sub_1A3A31C30();
    v31 = sub_1A3A305C0();
    sub_1A3A2F270();

    sub_1A3A2FED0();
    swift_getAtKeyPath();

    (*(v26 + 8))(v4, v25);
  }

  sub_1A3A2EA60();

  v34 = sub_1A392A508(v32, v33);

  if (v34)
  {
LABEL_9:
    sub_1A3A2EA60();
    if ((v24 & 1) == 0)
    {
      sub_1A3A31C30();
      v35 = sub_1A3A305C0();
      sub_1A3A2F270();

      sub_1A3A2FED0();
      swift_getAtKeyPath();

      (*(v26 + 8))(v4, v25);
      v23 = v58;
    }

    v36 = *(v23 + 1184);
    sub_1A3A2EA60();

    swift_getKeyPath("@JiG");
    v58 = v36;
    sub_1A38E91A8(&qword_1ED996E68, type metadata accessor for ChromeOnboardingViewModel, &unk_1A3A74888);
    sub_1A3A2F080();

    if (*(v36 + 17) != 1)
    {
      KeyPath = swift_getKeyPath("@JiG");
      MEMORY[0x1EEE9AC00](KeyPath);
      *(&v55 - 2) = v36;
      *(&v55 - 8) = 1;
      v58 = v36;
      sub_1A3A2F070();
    }

    sub_1A39598B0(1, 0xD000000000000021, 0x80000001A3AA2100, v38);
    v39 = sub_1A3A31DF0();
    v41 = v40;

    v58 = 0xD000000000000011;
    v59 = 0x80000001A3AA20E0;
    MEMORY[0x1A58F7770](v39, v41);

    v42 = v58;
    v43 = v59;
    v45 = sub_1A395994C(1uLL, 0xD000000000000021, 0x80000001A3AA2100, v44);
    v62 = v42;
    v63 = v43;
    v58 = v45;
    v59 = v46;
    v60 = v47;
    v61 = v48;
    sub_1A38E849C();
    sub_1A3A318E0();

    v49 = sub_1A39C3B44(v62, v63);
    LOBYTE(v43) = v50;

    if (v43)
    {
      v54 = 0;
    }

    else
    {
      v54 = v49;
    }

    if (__OFADD__(v54, 1))
    {
      __break(1u);
    }

    else
    {
      sub_1A39540A0(v54 + 1, 0, v53, v51, v52);
    }
  }
}

double sub_1A38E43F4(uint64_t a1)
{
  sub_1A3A314E0();
  sub_1A3A2F8A0();

  return result;
}

double sub_1A38E4460()
{
  v0 = type metadata accessor for ModeWheelGestureState(0);
  MEMORY[0x1EEE9AC00](v0);
  v2 = v10 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v10 - v5;
  if (qword_1EB0FC210 != -1)
  {
    v9 = v4;
    swift_once();
    v4 = v9;
  }

  v7 = __swift_project_value_buffer(v4, qword_1EB101B38);
  sub_1A38E7EA0(v7, v6, type metadata accessor for ModeWheelGestureState);
  sub_1A38E7EA0(v6, v2, type metadata accessor for ModeWheelGestureState);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FDA00, &unk_1A3A6F250);
  sub_1A3A311A0();
  sub_1A38E7B78(v6);
  return sub_1A38E45A8();
}

double sub_1A38E45A8()
{
  v1 = v0;
  v2 = sub_1A3A2FEE0();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v27[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = type metadata accessor for ModePicker(0);
  v7 = (v0 + v6[12]);
  v8 = *v7;
  v9 = *(v7 + 8);
  sub_1A3A2EA60();
  if ((v9 & 1) == 0)
  {
    sub_1A3A31C30();
    v10 = sub_1A3A305C0();
    sub_1A3A2F270();

    sub_1A3A2FED0();
    swift_getAtKeyPath();

    (*(v3 + 8))(v5, v2);
  }

  sub_1A3A2EA60();

  v13 = sub_1A392A950(v11, v12);

  if (v13)
  {
    v15 = (v1 + v6[10]);
    v17 = *v15;
    v16 = v15[1];
    v28 = v17;
    *&v29 = v16;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FDBF0, &qword_1A3A6F6E0);
    sub_1A3A30F90();
    v18 = v30;
    if (*(v30 + 16))
    {
      sub_1A3A2EA60();
      sub_1A3A316C0();
    }

    *(v18 + 16) = 0;

    v19 = (v1 + v6[5]);
    v20 = *v19;
    v21 = v19[1];
    LOBYTE(v19) = *(v19 + 16);
    v28 = v20;
    *&v29 = v21;
    BYTE8(v29) = v19;
    LOBYTE(v30) = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FC598, &qword_1A3A6FC80);
    sub_1A3A311A0();
    v22 = (v1 + v6[6]);
    v28 = *v22;
    v29 = *(v22 + 1);
    v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FDBB0, &unk_1A3A6F650);
    MEMORY[0x1A58F7010](&v30, v23);
    sub_1A38E01D4(1, 0.0);

    sub_1A3A2EA60();
    if ((v9 & 1) == 0)
    {
      sub_1A3A31C30();
      v24 = sub_1A3A305C0();
      sub_1A3A2F270();

      sub_1A3A2FED0();
      swift_getAtKeyPath();

      (*(v3 + 8))(v5, v2);
      v8 = v28;
    }

    v25 = *(v8 + 1184);
    sub_1A3A2EA60();

    swift_getKeyPath("@JiG");
    v28 = v25;
    sub_1A38E91A8(&qword_1ED996E68, type metadata accessor for ChromeOnboardingViewModel, &unk_1A3A74888);
    sub_1A3A2F080();

    if (*(v25 + 17))
    {
      KeyPath = swift_getKeyPath("@JiG");
      MEMORY[0x1EEE9AC00](KeyPath);
      *&v27[-16] = v25;
      v27[-8] = 0;
      v28 = v25;
      sub_1A3A2F070();
    }
  }

  return result;
}

double sub_1A38E49E4(uint64_t a1, _BYTE *a2, uint64_t a3)
{
  v5 = sub_1A3A2FEE0();
  v6 = *(v5 - 8);
  *&result = MEMORY[0x1EEE9AC00](v5).n128_u64[0];
  v9 = v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*a2 == 1)
  {
    v10 = a3 + *(type metadata accessor for ModePicker(0) + 48);
    v11 = *v10;
    v12 = *(v10 + 8);
    sub_1A3A2EA60();
    if ((v12 & 1) == 0)
    {
      sub_1A3A31C30();
      v13 = sub_1A3A305C0();
      sub_1A3A2F270();

      sub_1A3A2FED0();
      swift_getAtKeyPath();

      (*(v6 + 8))(v9, v5);
      v11 = v16[1];
    }

    v14 = v11[153];
    v15 = v11[154];
    __swift_project_boxed_opaque_existential_1(v11 + 150, v14);
    (*(v15 + 8))(0, 0, 0, 92, v11, v14, v15);
  }

  return result;
}

uint64_t sub_1A38E4B94@<X0>(void *a1@<X8>)
{
  v3 = sub_1A3A2FEE0();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FCE78, &unk_1A3A6F1A0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for ModePicker(0);
  sub_1A388F6D8(v1 + *(v10 + 44), v9, &qword_1EB0FCE78, &unk_1A3A6F1A0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_1A3A30090();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    sub_1A3A31C30();
    v13 = sub_1A3A305C0();
    sub_1A3A2F270();

    sub_1A3A2FED0();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

double sub_1A38E4D9C(uint64_t a1)
{
  v2 = sub_1A3A2F2A0();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v45 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1A3A2FEE0();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for ModeWheelGestureState(0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FDA00, &unk_1A3A6F250);
  MEMORY[0x1A58F7010](v13);
  v14 = *v12;
  sub_1A38E7B78(v12);
  if ((v14 & 1) == 0)
  {
    v47 = type metadata accessor for ModePicker(0);
    v16 = *(a1 + v47[12] + 8);
    sub_1A3A2EA60();
    if ((v16 & 1) == 0)
    {
      sub_1A3A31C30();
      v17 = sub_1A3A305C0();
      sub_1A3A2F270();

      sub_1A3A2FED0();
      swift_getAtKeyPath();

      (*(v7 + 8))(v9, v6);
    }

    sub_1A3A2EA60();

    v20 = sub_1A392A508(v18, v19);

    v21 = (a1 + v47[5]);
    v22 = *v21;
    v23 = v21[1];
    v24 = *(v21 + 16);
    v50 = *v21;
    v51 = v23;
    LOBYTE(v52) = v24;
    v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FC598, &qword_1A3A6FC80);
    MEMORY[0x1A58F7010](v49);
    if (LOBYTE(v49[0]) == 1 && (v20 & 1) == 0)
    {
      if (qword_1ED996460 != -1)
      {
        swift_once();
      }

      v26 = __swift_project_value_buffer(v2, qword_1ED99D868);
      (*(v3 + 16))(v5, v26, v2);
      v27 = sub_1A3A2F280();
      v28 = sub_1A3A31C20();
      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        v46 = v3;
        v30 = v29;
        *v29 = 0;
        _os_log_impl(&dword_1A3640000, v27, v28, "Collapsing the mode wheel. It was found to be expanded even though onboarding was complete and the mode wheel should not be expanded.", v29, 2u);
        v31 = v30;
        v3 = v46;
        MEMORY[0x1A58FAC10](v31, -1, -1);
      }

      (*(v3 + 8))(v5, v2);
    }

    v50 = v22;
    v51 = v23;
    LOBYTE(v52) = v24;
    MEMORY[0x1A58F7010](v49, v25);
    if (LOBYTE(v49[0]) == 1)
    {
      v50 = v22;
      v51 = v23;
      LOBYTE(v52) = v24;
      LOBYTE(v49[0]) = 0;
      sub_1A3A311A0();
    }

    v32 = (a1 + v47[6]);
    v33 = *v32;
    v34 = v32[1];
    v35 = v32[2];
    v50 = *v32;
    v51 = v34;
    v52 = v35;
    v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FDBB0, &unk_1A3A6F650);
    v37 = MEMORY[0x1A58F7010](v49);
    v38 = v49[0];
    *&v39 = MEMORY[0x1EEE9AC00](v37).n128_u64[0];
    v40 = MEMORY[0x1E69E6388];
    *(&v45 - 2) = MEMORY[0x1E69E6370];
    *(&v45 - 1) = v40;
    swift_getKeyPath(byte_1A3A6F780, v39);
    v50 = v38;
    sub_1A38A08F8(&qword_1ED996E70, &qword_1EB0FDA08, &unk_1A3A6F500, &unk_1A3A6BA14);
    sub_1A3A2F080();

    swift_beginAccess();
    v41 = *(v38 + 18);

    if (v41 == 1)
    {
      if (qword_1ED996480 != -1)
      {
        swift_once();
      }

      v42 = off_1ED997FE0;
      swift_getKeyPath("xIiG");
      v49[0] = v42;
      sub_1A38E91A8(&qword_1ED996650, type metadata accessor for SettingsManager, &unk_1A3A777B8);
      sub_1A3A2F080();

      v43 = v42[2];
      swift_getKeyPath("XIiG");
      v49[0] = v43;
      sub_1A38E91A8(&qword_1ED996658, type metadata accessor for CameraUISettings, &unk_1A3A777E4);
      sub_1A3A2EA60();
      sub_1A3A2F080();

      v44 = *(v43 + 48);

      if (v44)
      {
        v49[0] = v33;
        v49[1] = v34;
        v49[2] = v35;
        MEMORY[0x1A58F7010](&v48, v36);
        sub_1A38E01D4(0, 0.0);
      }
    }
  }

  return result;
}

BOOL sub_1A38E5410(uint64_t *a1, uint64_t a2)
{
  v4 = sub_1A3A2FEE0();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *a1;
  v8 = (a2 + *(type metadata accessor for ModePicker(0) + 48));
  v9 = *v8;
  v10 = *(v8 + 8);
  sub_1A3A2EA60();
  v11 = v9;
  if ((v10 & 1) == 0)
  {
    sub_1A3A31C30();
    v12 = sub_1A3A305C0();
    sub_1A3A2F270();

    sub_1A3A2FED0();
    swift_getAtKeyPath();

    (*(v5 + 8))(v7, v4);
    v11 = v19;
  }

  swift_getKeyPath(byte_1A3A6F628);
  v19 = v11;
  sub_1A38E91A8(&qword_1ED996608, type metadata accessor for ChromeViewModel, &unk_1A3A70668);
  sub_1A3A2F080();

  v13 = *(v11 + 592);

  if (v13 == 8)
  {
    v14 = 9;
  }

  else if (v13 == 9)
  {
    v14 = 8;
  }

  else
  {
    sub_1A3A2EA60();
    if ((v10 & 1) == 0)
    {
      sub_1A3A31C30();
      v15 = sub_1A3A305C0();
      sub_1A3A2F270();

      sub_1A3A2FED0();
      swift_getAtKeyPath();

      (*(v5 + 8))(v7, v4);
      v9 = v19;
    }

    swift_getKeyPath(byte_1A3A6F828);
    v19 = v9;
    sub_1A3A2F080();

    v16 = *(v9 + 609);

    v14 = 8;
    if (v16)
    {
      v14 = 9;
    }
  }

  return v18 != v14;
}

uint64_t sub_1A38E5708@<X0>(void *a1@<X8>)
{
  v3 = sub_1A3A2FEE0();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FDBB8, &qword_1A3A6F660);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for ModePicker(0);
  sub_1A388F6D8(v1 + *(v10 + 60), v9, &qword_1EB0FDBB8, &qword_1A3A6F660);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_1A3A30430();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    sub_1A3A31C30();
    v13 = sub_1A3A305C0();
    sub_1A3A2F270();

    sub_1A3A2FED0();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

void *sub_1A38E5910@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = v2;
  v59 = a1;
  v5 = sub_1A3A302F0();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v57 = &v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1A3A304C0();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FDC30, &qword_1A3A6F9B8);
  v54 = *(v12 - 8);
  v55 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v48 - v13;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FDC38, &qword_1A3A6F9C0);
  MEMORY[0x1EEE9AC00](v62);
  v16 = &v48 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v56 = &v48 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v58 = &v48 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v48 - v22;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FDC40, &qword_1A3A6F9C8);
  MEMORY[0x1EEE9AC00](v60);
  v61 = &v48 - v24;
  if (*v3)
  {
    v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FDC48, &qword_1A3A6F9D0);
    (*(*(v25 - 8) + 16))(v61, v59, v25);
    swift_storeEnumTagMultiPayload();
    sub_1A38A08F8(&qword_1EB0FDC50, &qword_1EB0FDC48, &qword_1A3A6F9D0, MEMORY[0x1E697FDF8]);
    sub_1A38E8B10();
    return sub_1A3A301F0();
  }

  else
  {
    sub_1A3A30490();
    v52 = v23;
    v53 = a2;
    v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FDC48, &qword_1A3A6F9D0);
    v49 = v5;
    v28 = v27;
    v50 = sub_1A38A08F8(&qword_1EB0FDC50, &qword_1EB0FDC48, &qword_1A3A6F9D0, MEMORY[0x1E697FDF8]);
    v51 = v28;
    v48 = v6;
    v29 = v50;
    sub_1A3A30B00();
    (*(v9 + 8))(v11, v8);
    v30 = *(v3 + 16);
    v65 = *(v3 + 8);
    v32 = *(v3 + 24);
    v59 = *(v3 + 32);
    v31 = v59;
    v33 = swift_allocObject();
    v34 = *(v3 + 16);
    *(v33 + 16) = *v3;
    *(v33 + 32) = v34;
    *(v33 + 48) = *(v3 + 32);
    sub_1A388F6D8(&v65, &v63, &qword_1EB0FDC58, &qword_1A3A6F9D8);
    sub_1A3A2EA60();
    sub_1A365F488(v32, v31);
    v63 = v28;
    v64 = v29;
    swift_getOpaqueTypeConformance2();
    v35 = v55;
    sub_1A3A30BA0();

    (*(v54 + 8))(v14, v35);
    v36 = v56;
    sub_1A3A2FA60();
    sub_1A388F740(v16, &qword_1EB0FDC38, &qword_1A3A6F9C0);
    v37 = swift_allocObject();
    v38 = *(v3 + 16);
    *(v37 + 16) = *v3;
    *(v37 + 32) = v38;
    *(v37 + 48) = *(v3 + 32);
    sub_1A388F6D8(&v65, &v63, &qword_1EB0FDC58, &qword_1A3A6F9D8);
    sub_1A3A2EA60();
    sub_1A365F488(v32, v59);
    v39 = v57;
    sub_1A3A302E0();
    v40 = v58;
    sub_1A3A2FA30();

    (*(v48 + 8))(v39, v49);
    sub_1A388F740(v36, &qword_1EB0FDC38, &qword_1A3A6F9C0);
    swift_getKeyPath(byte_1A3A6F628);
    v63 = v30;
    sub_1A38E91A8(&qword_1ED996608, type metadata accessor for ChromeViewModel, &unk_1A3A70668);
    sub_1A3A2F080();

    v41 = sub_1A39906E0(*(v30 + 592));
    v63 = 0x2E656D6F726843;
    v64 = 0xE700000000000000;
    MEMORY[0x1A58F7770](v41);

    sub_1A3A2EA50();
    MEMORY[0x1A58F7770](0x6C6562614C78612ELL, 0xE800000000000000);

    v42 = sub_1A3A31810();

    v43 = CAMLocalizedFrameworkString(v42, 0);

    v44 = sub_1A3A31850();
    v46 = v45;

    v63 = v44;
    v64 = v46;
    sub_1A389FD78();
    v47 = v52;
    sub_1A3A2FA20();

    sub_1A388F740(v40, &qword_1EB0FDC38, &qword_1A3A6F9C0);
    sub_1A388F6D8(v47, v61, &qword_1EB0FDC38, &qword_1A3A6F9C0);
    swift_storeEnumTagMultiPayload();
    sub_1A38E8B10();
    sub_1A3A301F0();
    return sub_1A388F740(v47, &qword_1EB0FDC38, &qword_1A3A6F9C0);
  }
}

void sub_1A38E60E8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1A3A305A0();
  v5 = *(v4 - 8);
  *&v6 = MEMORY[0x1EEE9AC00](v4).n128_u64[0];
  v8 = v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a2 + 8);
  v9 = *(a2 + 16);
  swift_getKeyPath(byte_1A3A6F628, v6);
  v19[1] = v9;
  sub_1A38E91A8(&qword_1ED996608, type metadata accessor for ChromeViewModel, &unk_1A3A70668);
  sub_1A3A2F080();

  v11 = *(v10 + 16);
  if (v11)
  {
    v12 = 0;
    v13 = v10 + 32;
    while (*(v13 + 8 * v12) != v9[74])
    {
      if (v11 == ++v12)
      {
        return;
      }
    }

    (*(v5 + 16))(v8, a1, v4);
    v14 = (*(v5 + 88))(v8, v4);
    if (v14 == *MEMORY[0x1E697CC28])
    {
      v15 = v12 + 1;
      if (!__OFADD__(v12, 1))
      {
        if (v15 >= v11)
        {
          return;
        }

        goto LABEL_9;
      }

      __break(1u);
LABEL_15:
      sub_1A3A32070("Fatal error", 11, 2, 0, 0xE000000000000000, "CameraUI/ModePicker.swift", 25, 2, 243, 0);
      __break(1u);
      return;
    }

    if (v14 != *MEMORY[0x1E697CC20])
    {
      goto LABEL_15;
    }

    v15 = v12 - 1;
    if (v12 - 1 < v11)
    {
LABEL_9:
      v16 = *(v13 + 8 * v15);
      v17 = v9[153];
      v18 = v9[154];
      __swift_project_boxed_opaque_existential_1(v9 + 150, v17);
      (*(v18 + 8))(v16, 0, 0, 12, v9, v17, v18);
    }
  }
}

uint64_t sub_1A38E6368(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  v4 = *(v3 + 16);
  if (!v4)
  {
    return 3;
  }

  v5 = 0;
  v6 = v3 + 32;
  while (*(v6 + 8 * v5) != *v2)
  {
    if (v4 == ++v5)
    {
      return 3;
    }
  }

  v7 = *(v2 + 48);
  swift_getKeyPath(byte_1A3A6F628, a2);
  sub_1A38E91A8(&qword_1ED996608, type metadata accessor for ChromeViewModel, &unk_1A3A70668);
  sub_1A3A2F080();

  v8 = 0;
  while (*(v6 + 8 * v8) != *(v7 + 592))
  {
    if (v4 == ++v8)
    {
      return 3;
    }
  }

  if (v5 == v8)
  {
    return 0;
  }

  if ((*(v2 + 40) & 1) != 0 || ((v10 = *(v2 + 24), v11 = *(v2 + 32), v8 >= v10) ? (v12 = v11 < v8) : (v12 = 1), v12))
  {
    v14 = v8 - 1;
    v15 = v8 + 1;
    if (v5 == v14)
    {
      v16 = 2;
    }

    else
    {
      v16 = 3;
    }

    if (v5 == v15)
    {
      return 1;
    }

    else
    {
      return v16;
    }
  }

  else if (v11 < v5 || v5 < v10)
  {
    return 3;
  }

  else
  {
    return 0;
  }
}

void *sub_1A38E64CC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = v2;
  v106 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FDC68, &qword_1A3A6F9E0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v86 - v6;
  v8 = sub_1A3A311F0();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v86 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FDC70, &qword_1A3A6F9E8);
  MEMORY[0x1EEE9AC00](v97);
  v12 = &v86 - v11;
  v13 = sub_1A3A2FC50();
  v98 = *(v13 - 8);
  v99 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v86 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FDC78, &qword_1A3A6F9F0);
  MEMORY[0x1EEE9AC00](v100);
  v96 = &v86 - v16;
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FDC80, &qword_1A3A6F9F8);
  MEMORY[0x1EEE9AC00](v102);
  v101 = &v86 - v17;
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FDC88, &qword_1A3A6FA00);
  MEMORY[0x1EEE9AC00](v105);
  v103 = &v86 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FDC90, &qword_1A3A6FA08);
  v20 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v104 = &v86 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FDC98, &qword_1A3A6FA10);
  MEMORY[0x1EEE9AC00](v22);
  MEMORY[0x1EEE9AC00](v23);
  MEMORY[0x1EEE9AC00](v24);
  if (*(v3 + 56))
  {
    v86 = a1;
    v88 = v20;
    v89 = v19;
    v90 = v27;
    v91 = v26;
    v92 = &v86 - v25;
    v93 = v22;
    v94 = v5;
    v95 = v7;
    sub_1A3A2FC40();
    v28 = *MEMORY[0x1E697F468];
    v29 = sub_1A3A30000();
    v30 = *(*(v29 - 8) + 104);
    v87 = v10;
    v30(v10, v28, v29);
    v31 = *(v3 + 48);
    swift_getKeyPath("HKiG");
    v107 = v31;
    sub_1A38E91A8(&qword_1ED996608, type metadata accessor for ChromeViewModel, &unk_1A3A70668);
    sub_1A3A2F080();

    v34 = 1.0;
    v35 = 1.0;
    if (*(v31 + 416) != 2)
    {
      if (sub_1A38E6368(v32, v33))
      {
        v35 = 0.5;
      }

      else
      {
        v35 = 1.0;
      }
    }

    swift_getKeyPath("HKiG");
    v107 = v31;
    sub_1A3A2F080();

    if (*(v31 + 416) == 2)
    {
      if (sub_1A38E6368(v36, v37))
      {
        v34 = 0.8;
      }

      else
      {
        v34 = 1.0;
      }
    }

    swift_getKeyPath("HKiG");
    v107 = v31;
    sub_1A3A2F080();

    v39 = *(v31 + 416);
    v41 = v15;
    v42 = sub_1A38E6368(v38, v40);
    if (v39 == 2)
    {
      v43 = v86;
      v44 = v87;
      if (v42 == 2)
      {
        sub_1A3A31580();
      }

      else
      {
        sub_1A3A31570();
      }
    }

    else
    {
      v43 = v86;
      v44 = v87;
      if (v42 == 2)
      {
        sub_1A3A315B0();
      }

      else
      {
        sub_1A3A315A0();
      }
    }

    v49 = v47;
    v50 = v48;
    sub_1A38E90F0(v44, v12, MEMORY[0x1E6981998]);
    v51 = v97;
    v52 = &v12[*(v97 + 36)];
    *v52 = v35;
    v52[1] = v34;
    v53 = &v12[*(v51 + 40)];
    *v53 = v49;
    *(v53 + 1) = v50;
    v54 = v96;
    v55 = &v96[*(v100 + 36)];
    sub_1A388F670(v12, v55, &qword_1EB0FDC70, &qword_1A3A6F9E8);
    v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FDCE0, &qword_1A3A6FA28);
    (*(v98 + 32))(v55 + *(v56 + 40), v41, v99);
    *(v55 + *(v56 + 36)) = 0;
    v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FDCA0, &qword_1A3A6FA18);
    (*(*(v99 - 8) + 16))(v54, v43, v99);
    v98 = *v3;
    v57 = sub_1A39906E0(v98);
    v107 = 0x2E656D6F726843;
    v108 = 0xE700000000000000;
    MEMORY[0x1A58F7770](v57);

    sub_1A3A2EA50();
    MEMORY[0x1A58F7770](0x6C6562614C78612ELL, 0xE800000000000000);

    v58 = sub_1A3A31810();

    v59 = CAMLocalizedFrameworkString(v58, 0);

    v60 = sub_1A3A31850();
    v62 = v61;

    v107 = v60;
    v108 = v62;
    sub_1A38E8ED8();
    sub_1A389FD78();
    v63 = v101;
    sub_1A3A30A90();

    sub_1A388F740(v54, &qword_1EB0FDC78, &qword_1A3A6F9F0);
    sub_1A38E8E1C();
    v64 = v103;
    sub_1A3A30B40();
    v65 = sub_1A388F740(v63, &qword_1EB0FDC80, &qword_1A3A6F9F8);
    MEMORY[0x1EEE9AC00](v65);
    *(&v86 - 2) = v3;
    v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FDCB0, &qword_1A3A6FA20);
    v67 = sub_1A38E8D60();
    v68 = sub_1A38E8FBC();
    v69 = v104;
    v70 = v105;
    sub_1A3A30AF0();
    sub_1A388F740(v64, &qword_1EB0FDC88, &qword_1A3A6FA00);
    v71 = swift_allocObject();
    v72 = *(v3 + 16);
    v71[1] = *v3;
    v71[2] = v72;
    v71[3] = *(v3 + 32);
    *(v71 + 57) = *(v3 + 41);
    sub_1A38E9168(v3, &v107);
    v107 = v70;
    v108 = v66;
    v109 = v67;
    v110 = v68;
    swift_getOpaqueTypeConformance2();
    v73 = v90;
    v74 = v89;
    sub_1A3A30BA0();

    (*(v88 + 8))(v69, v74);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FDD00, &unk_1A3A6FA40);
    v75 = swift_allocObject();
    *(v75 + 16) = xmmword_1A3A681C0;
    v76 = sub_1A39906E0(v98);
    v107 = 0x2E656D6F726843;
    v108 = 0xE700000000000000;
    MEMORY[0x1A58F7770](v76);

    sub_1A3A2EA50();
    MEMORY[0x1A58F7770](0x6C6562614C78612ELL, 0xE800000000000000);

    v77 = sub_1A3A31810();

    v78 = CAMLocalizedFrameworkString(v77, 0);

    v79 = sub_1A3A31850();
    v81 = v80;

    *(v75 + 32) = v79;
    *(v75 + 40) = v81;
    v82 = v91;
    sub_1A3A2FA70();

    v83 = sub_1A388F740(v73, &qword_1EB0FDC98, &qword_1A3A6FA10);
    sub_1A38E6368(v83, v84);
    v85 = v92;
    sub_1A3A2FA40();
    sub_1A388F740(v82, &qword_1EB0FDC98, &qword_1A3A6FA10);
    sub_1A388F6D8(v85, v95, &qword_1EB0FDC98, &qword_1A3A6FA10);
    swift_storeEnumTagMultiPayload();
    sub_1A38E8C3C();
    sub_1A38A08F8(&qword_1EB0FDCD0, &qword_1EB0FDCA0, &qword_1A3A6FA18, MEMORY[0x1E697FDF8]);
    sub_1A3A301F0();
    return sub_1A388F740(v85, &qword_1EB0FDC98, &qword_1A3A6FA10);
  }

  else
  {
    v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FDCA0, &qword_1A3A6FA18);
    (*(*(v45 - 8) + 16))(v7, a1, v45);
    swift_storeEnumTagMultiPayload();
    sub_1A38E8C3C();
    sub_1A38A08F8(&qword_1EB0FDCD0, &qword_1EB0FDCA0, &qword_1A3A6FA18, MEMORY[0x1E697FDF8]);
    return sub_1A3A301F0();
  }
}

uint64_t sub_1A38E7170@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FDCF8, &unk_1A3A6FA30);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &KeyPath - v7;
  if (*(a1 + 8))
  {
    v21 = *(a1 + 16);
    v22 = v21;
    v19 = v5;
    KeyPath = swift_getKeyPath(byte_1A3A6FA50, v6.n128_f64[0]);
    v9 = swift_allocObject();
    v10 = *(a1 + 16);
    v9[1] = *a1;
    v9[2] = v10;
    v9[3] = *(a1 + 32);
    *(v9 + 57) = *(a1 + 41);
    sub_1A388F6D8(&v22, v20, &qword_1EB0FDC58, &qword_1A3A6F9D8);
    sub_1A38E9168(a1, v20);
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FDC58, &qword_1A3A6F9D8);
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FC5F8, &qword_1A3A6C7A0);
    v13 = sub_1A38A08F8(&qword_1EB0FDD08, &qword_1EB0FDC58, &qword_1A3A6F9D8, MEMORY[0x1E69E6338]);
    v14 = sub_1A38E91A8(&qword_1EB0FDD10, type metadata accessor for CAMCaptureMode, &unk_1A3A6B298);
    v15 = sub_1A38A08F8(&qword_1EB0FC608, &qword_1EB0FC5F8, &qword_1A3A6C7A0, MEMORY[0x1E697D680]);
    sub_1A3A31200(&v21, KeyPath, sub_1A38E91A0, v9, v11, v12, v13, v14, v15);
    (*(v19 + 32))(a2, v8, v4);
    return (*(v19 + 56))(a2, 0, 1, v4);
  }

  else
  {
    v17 = *(v5 + 56);

    return v17(a2, 1, 1, v4, v6);
  }
}

uint64_t sub_1A38E744C(uint64_t *a1, _OWORD *a2)
{
  v3 = *a1;
  v4 = sub_1A39906E0(*a1);
  v16[0] = 0x2E656D6F726843;
  v16[1] = 0xE700000000000000;
  MEMORY[0x1A58F7770](v4);

  sub_1A3A2EA50();
  MEMORY[0x1A58F7770](0x6C6562614C78612ELL, 0xE800000000000000);

  v5 = sub_1A3A31810();

  v6 = CAMLocalizedFrameworkString(v5, 0);

  v7 = sub_1A3A31850();
  v9 = v8;

  v10 = sub_1A38E85A8(v7, v9);
  v12 = v11;

  v16[8] = v10;
  v16[9] = v12;
  v13 = swift_allocObject();
  v14 = a2[1];
  *(v13 + 16) = *a2;
  *(v13 + 32) = v14;
  *(v13 + 48) = a2[2];
  *(v13 + 57) = *(a2 + 41);
  *(v13 + 80) = v3;
  sub_1A38E9168(a2, v16);
  sub_1A389FD78();
  return sub_1A3A31000();
}

void sub_1A38E75D0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1A3A305A0();
  v5 = *(v4 - 8);
  *&v6 = MEMORY[0x1EEE9AC00](v4).n128_u64[0];
  v8 = v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a2 + 16);
  v10 = *(a2 + 48);
  swift_getKeyPath(byte_1A3A6F628, v6);
  v19[1] = v10;
  sub_1A38E91A8(&qword_1ED996608, type metadata accessor for ChromeViewModel, &unk_1A3A70668);
  sub_1A3A2F080();

  v11 = *(v9 + 16);
  if (v11)
  {
    v12 = 0;
    v13 = v9 + 32;
    while (*(v13 + 8 * v12) != v10[74])
    {
      if (v11 == ++v12)
      {
        return;
      }
    }

    (*(v5 + 16))(v8, a1, v4);
    v14 = (*(v5 + 88))(v8, v4);
    if (v14 == *MEMORY[0x1E697CC28])
    {
      v15 = v12 + 1;
      if (!__OFADD__(v12, 1))
      {
        if (v15 >= v11)
        {
          return;
        }

        goto LABEL_9;
      }

      __break(1u);
LABEL_15:
      sub_1A3A32070("Fatal error", 11, 2, 0, 0xE000000000000000, "CameraUI/ModePicker.swift", 25, 2, 344, 0);
      __break(1u);
      return;
    }

    if (v14 != *MEMORY[0x1E697CC20])
    {
      goto LABEL_15;
    }

    v15 = v12 - 1;
    if (v12 - 1 < v11)
    {
LABEL_9:
      v16 = *(v13 + 8 * v15);
      v17 = v10[153];
      v18 = v10[154];
      __swift_project_boxed_opaque_existential_1(v10 + 150, v17);
      (*(v18 + 8))(v16, 0, 0, 12, v10, v17, v18);
    }
  }
}

void sub_1A38E78B8(void *a3@<X8>)
{
  sub_1A3A2EA60();
  swift_getAtKeyPath();

  *a3 = v4;
}

uint64_t sub_1A38E79CC@<X0>(uint64_t *a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v7 = *(type metadata accessor for ModePicker(0) - 8);
  v8 = *(v3 + 16);
  v9 = v3 + ((*(v7 + 80) + 24) & ~*(v7 + 80));

  return sub_1A38E3860(a1, a2, v8, v9, a3);
}

void sub_1A38E7A58()
{
  v1 = *(type metadata accessor for ModePicker(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_1A38E3C88(v0 + v2, v3);
}

uint64_t sub_1A38E7B78(uint64_t a1)
{
  v2 = type metadata accessor for ModeWheelGestureState(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

double sub_1A38E7BD4(uint64_t a1, _BYTE *a2)
{
  v5 = *(type metadata accessor for ModePicker(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_1A38E49E4(a1, a2, v6);
}

unint64_t sub_1A38E7C54()
{
  result = qword_1EB0FDBC8;
  if (!qword_1EB0FDBC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0FDBA0, &qword_1A3A6F578);
    sub_1A38E7D10();
    sub_1A38E91A8(&qword_1ED996E60, type metadata accessor for ScenePhaseModifier, &unk_1A3A764F4);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0FDBC8);
  }

  return result;
}

unint64_t sub_1A38E7D10()
{
  result = qword_1EB0FDBD0;
  if (!qword_1EB0FDBD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0FDB98, &qword_1A3A6F570);
    sub_1A38E7DCC();
    sub_1A38E91A8(&qword_1ED996E60, type metadata accessor for ScenePhaseModifier, &unk_1A3A764F4);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0FDBD0);
  }

  return result;
}

unint64_t sub_1A38E7DCC()
{
  result = qword_1EB0FDBD8;
  if (!qword_1EB0FDBD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0FDB90, &qword_1A3A6F568);
    sub_1A38A08F8(&qword_1EB0FDBE0, &qword_1EB0FDB88, &qword_1A3A6F560, &unk_1A3A81660);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0FDBD8);
  }

  return result;
}

uint64_t sub_1A38E7EA0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_1A38E7F28()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + 24);
  *(v1 + 24) = v2;
  v4 = v2;
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1A3A2EA60();
}

uint64_t sub_1A38E7FB4()
{
  v1 = *(v0 + 16);
  v2 = **(v0 + 24);
  result = swift_beginAccess();
  *(v1 + 18) = v2;
  return result;
}

uint64_t sub_1A38E8008()
{
  v1 = *(v0 + 16);
  v2 = **(v0 + 24);
  result = swift_beginAccess();
  *(v1 + 17) = v2;
  return result;
}

uint64_t sub_1A38E805C(uint64_t a1, unint64_t *a2, void *a3)
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

uint64_t objectdestroy_22Tm_1()
{
  v1 = type metadata accessor for ModePicker(0);
  v2 = v0 + ((*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80));

  v3 = v2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FDA00, &unk_1A3A6F250) + 32);
  v4 = type metadata accessor for ModeWheelGestureState(0);
  v5 = *(v4 + 36);
  v6 = sub_1A3A2ECE0();
  v7 = *(v6 - 8);
  if (!(*(v7 + 48))(v3 + v5, 1, v6))
  {
    (*(v7 + 8))(v3 + v5, v6);
  }

  v8 = *(v4 + 40);
  v9 = sub_1A3A2F620();
  v10 = *(v9 - 8);
  if (!(*(v10 + 48))(v3 + v8, 1, v9))
  {
    (*(v10 + 8))(v3 + v8, v9);
  }

  if (*(v2 + v1[9]))
  {
  }

  v11 = v1[11];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FCE78, &unk_1A3A6F1A0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = sub_1A3A30090();
    (*(*(v12 - 8) + 8))(v2 + v11, v12);
  }

  else
  {
  }

  v13 = v1[15];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FDBB8, &qword_1A3A6F660);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v14 = sub_1A3A30430();
    (*(*(v14 - 8) + 8))(v2 + v13, v14);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1A38E8428(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for ModePicker(0) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

unint64_t sub_1A38E849C()
{
  result = qword_1ED996E78;
  if (!qword_1ED996E78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED996E78);
  }

  return result;
}

unint64_t sub_1A38E84F0()
{
  result = qword_1ED996E80;
  if (!qword_1ED996E80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0FDC10, &qword_1A3A6F818);
    sub_1A38A08F8(&qword_1ED9966F0, &qword_1EB0FC9B8, &qword_1A3A6D2E0, MEMORY[0x1E697F548]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED996E80);
  }

  return result;
}

uint64_t sub_1A38E85A8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1A3A31810();
  v5 = CAMLocalizedFrameworkString(v4, 0);

  sub_1A3A31850();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FD310, &unk_1A3A73030);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1A3A681C0;
  *(v6 + 56) = MEMORY[0x1E69E6158];
  *(v6 + 64) = sub_1A38C6EB4();
  *(v6 + 32) = a1;
  *(v6 + 40) = a2;
  sub_1A3A2EA50();
  v7 = sub_1A3A31820();

  return v7;
}

void sub_1A38E86A8(uint64_t a1, void *a2, uint64_t a3, uint64_t (*a4)(uint64_t *))
{
  v18 = a1;
  sub_1A3A2EA60();
  swift_getAtKeyPath();

  if (v17 != a1)
  {
    v7 = a4(&v18);
    if (v10 <= 0xFBu)
    {
      v11 = a2[153];
      v12 = a2[154];
      v13 = v7;
      v14 = v8;
      v15 = v9;
      v16 = v10;
      __swift_project_boxed_opaque_existential_1(a2 + 150, v11);
      (*(v12 + 8))(v13, v14, v15, v16, a2, v11, v12);
      sub_1A3890EA8(v13, v14, v15, v16);
    }
  }
}

uint64_t get_enum_tag_for_layout_string_Ieg_Sg(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
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

uint64_t sub_1A38E87D8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_1A38E8820(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t sub_1A38E8878(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 57))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1A38E88C0(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

unint64_t sub_1A38E8920()
{
  result = qword_1EB0FDC20;
  if (!qword_1EB0FDC20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0FDBE8, &unk_1A3A6F6D0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0FDBA0, &qword_1A3A6F578);
    sub_1A38E7C54();
    swift_getOpaqueTypeConformance2();
    sub_1A38E89FC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0FDC20);
  }

  return result;
}

unint64_t sub_1A38E89FC()
{
  result = qword_1EB0FDC28;
  if (!qword_1EB0FDC28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0FDC28);
  }

  return result;
}

uint64_t objectdestroy_103Tm()
{

  if (*(v0 + 40))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1A38E8AE0()
{
  v1 = *(v0 + 40);
  if (v1)
  {
    return v1();
  }

  return result;
}

unint64_t sub_1A38E8B10()
{
  result = qword_1EB0FDC60;
  if (!qword_1EB0FDC60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0FDC38, &qword_1A3A6F9C0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0FDC48, &qword_1A3A6F9D0);
    sub_1A38A08F8(&qword_1EB0FDC50, &qword_1EB0FDC48, &qword_1A3A6F9D0, MEMORY[0x1E697FDF8]);
    swift_getOpaqueTypeConformance2();
    sub_1A38E91A8(&qword_1ED9966D8, MEMORY[0x1E697CBE8], MEMORY[0x1E697CBD8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0FDC60);
  }

  return result;
}

unint64_t sub_1A38E8C3C()
{
  result = qword_1EB0FDCA8;
  if (!qword_1EB0FDCA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0FDC98, &qword_1A3A6FA10);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0FDC88, &qword_1A3A6FA00);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0FDCB0, &qword_1A3A6FA20);
    sub_1A38E8D60();
    sub_1A38E8FBC();
    swift_getOpaqueTypeConformance2();
    sub_1A38E91A8(&qword_1ED9966D8, MEMORY[0x1E697CBE8], MEMORY[0x1E697CBD8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0FDCA8);
  }

  return result;
}

unint64_t sub_1A38E8D60()
{
  result = qword_1EB0FDCB8;
  if (!qword_1EB0FDCB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0FDC88, &qword_1A3A6FA00);
    sub_1A38E8E1C();
    sub_1A38E91A8(&qword_1ED9966D8, MEMORY[0x1E697CBE8], MEMORY[0x1E697CBD8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0FDCB8);
  }

  return result;
}

unint64_t sub_1A38E8E1C()
{
  result = qword_1EB0FDCC0;
  if (!qword_1EB0FDCC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0FDC80, &qword_1A3A6F9F8);
    sub_1A38E8ED8();
    sub_1A38E91A8(&qword_1ED9966D8, MEMORY[0x1E697CBE8], MEMORY[0x1E697CBD8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0FDCC0);
  }

  return result;
}

unint64_t sub_1A38E8ED8()
{
  result = qword_1EB0FDCC8;
  if (!qword_1EB0FDCC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0FDC78, &qword_1A3A6F9F0);
    sub_1A38A08F8(&qword_1EB0FDCD0, &qword_1EB0FDCA0, &qword_1A3A6FA18, MEMORY[0x1E697FDF8]);
    sub_1A38A08F8(&qword_1EB0FDCD8, &qword_1EB0FDCE0, &qword_1A3A6FA28, MEMORY[0x1E69805E8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0FDCC8);
  }

  return result;
}

unint64_t sub_1A38E8FBC()
{
  result = qword_1EB0FDCE8;
  if (!qword_1EB0FDCE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0FDCB0, &qword_1A3A6FA20);
    sub_1A38E9040();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0FDCE8);
  }

  return result;
}

unint64_t sub_1A38E9040()
{
  result = qword_1EB0FDCF0;
  if (!qword_1EB0FDCF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0FDCF8, &unk_1A3A6FA30);
    sub_1A38A08F8(&qword_1EB0FC608, &qword_1EB0FC5F8, &qword_1A3A6C7A0, MEMORY[0x1E697D680]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0FDCF0);
  }

  return result;
}

uint64_t sub_1A38E90F0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A38E91A8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t objectdestroy_111Tm(uint64_t a1)
{

  return swift_deallocObject();
}

uint64_t sub_1A38E923C()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 64);
  v3 = v2[153];
  v4 = v2[154];
  __swift_project_boxed_opaque_existential_1(v2 + 150, v3);
  return (*(v4 + 8))(v1, 0, 0, 12, v2, v3, v4);
}

unint64_t sub_1A38E92B4()
{
  result = qword_1EB0FDD18;
  if (!qword_1EB0FDD18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0FDD20, &qword_1A3A6FA70);
    sub_1A38A08F8(&qword_1EB0FDC50, &qword_1EB0FDC48, &qword_1A3A6F9D0, MEMORY[0x1E697FDF8]);
    sub_1A38E8B10();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0FDD18);
  }

  return result;
}

unint64_t sub_1A38E936C()
{
  result = qword_1EB0FDD28;
  if (!qword_1EB0FDD28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0FDD30, &qword_1A3A6FA78);
    sub_1A38E8C3C();
    sub_1A38A08F8(&qword_1EB0FDCD0, &qword_1EB0FDCA0, &qword_1A3A6FA18, MEMORY[0x1E697FDF8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0FDD28);
  }

  return result;
}

unint64_t sub_1A38E9498()
{
  result = qword_1EB0FDD38;
  if (!qword_1EB0FDD38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0FDD40, &qword_1A3A6FAA8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0FDD38);
  }

  return result;
}

float64x2_t sub_1A38E94FC@<Q0>(float64x2_t *a1@<X0>, float64x2_t *a2@<X8>, double a3@<D0>)
{
  v4 = vaddq_f64(v3[1], vmulq_n_f64(vsubq_f64(a1[1], v3[1]), a3));
  *a2 = vaddq_f64(*v3, vmulq_n_f64(vsubq_f64(*a1, *v3), a3));
  a2[1] = v4;
  v5 = vaddq_f64(v3[2], vmulq_n_f64(vsubq_f64(a1[2], v3[2]), a3));
  result = vaddq_f64(v3[3], vmulq_n_f64(vsubq_f64(a1[3], v3[3]), a3));
  a2[2] = v5;
  a2[3] = result;
  return result;
}

double sub_1A38E9548@<D0>(uint64_t a1@<X8>, CGFloat a2@<D0>, CGFloat a3@<D1>, CGFloat a4@<D2>, CGFloat a5@<D3>)
{
  v11 = *v5;
  sub_1A38E9A14(v16, a2, a3, a4, a5);
  sub_1A38E9BB0(v17[0].f64, a2, a3, a4, a5);
  sub_1A38E94FC(v17, &v18, v11);
  sub_1A3A30830();
  sub_1A3A30810();
  sub_1A3A30820();
  sub_1A3A30810();
  sub_1A3A30820();
  result = *&v13;
  *a1 = v13;
  *(a1 + 16) = v14;
  *(a1 + 32) = v15;
  return result;
}

double sub_1A38E9640@<D0>(double *a1@<X8>)
{
  sub_1A38E9D44();
  sub_1A38E9910();
  sub_1A3A2F4F0();
  result = v3;
  *a1 = v3;
  return result;
}

uint64_t sub_1A38E96A8(uint64_t *a1)
{
  sub_1A38E9D44();
  sub_1A38E9910();
  return sub_1A3A2F500();
}

uint64_t (*sub_1A38E96F8(void *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  v3[2] = v1;
  v3[1] = *v1;
  v3[3] = sub_1A38E9D44();
  v4[4] = sub_1A38E9910();
  sub_1A3A2F4F0();
  return sub_1A38E97A0;
}

void sub_1A38E97A0(void **a1)
{
  v1 = *a1;
  (*a1)[1] = **a1;
  sub_1A3A2F500();

  free(v1);
}

uint64_t sub_1A38E97F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1A38E9D98();

  return MEMORY[0x1EEDE4440](a1, a2, a3, v6);
}

uint64_t sub_1A38E985C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1A38E9D98();

  return MEMORY[0x1EEDE43F0](a1, a2, a3, v6);
}

uint64_t sub_1A38E98C0(uint64_t a1)
{
  v2 = sub_1A38E9D98();

  return MEMORY[0x1EEDE4410](a1, v2);
}

unint64_t sub_1A38E9910()
{
  result = qword_1EB0FDD48;
  if (!qword_1EB0FDD48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0FDD48);
  }

  return result;
}

unint64_t sub_1A38E9968()
{
  result = qword_1ED996E88;
  if (!qword_1ED996E88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED996E88);
  }

  return result;
}

unint64_t sub_1A38E99C0()
{
  result = qword_1ED996E90;
  if (!qword_1ED996E90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED996E90);
  }

  return result;
}

void sub_1A38E9A14(CGFloat *a2@<X8>, CGFloat a3@<D0>, CGFloat a4@<D1>, CGFloat a5@<D2>, CGFloat a6@<D3>)
{
  sub_1A3A31590();
  v12 = v11;
  v14 = v13;
  v15 = a5 * 0.3;
  v16 = a6 * 0.125;
  v28.origin.x = a3;
  v28.origin.y = a4;
  v28.size.width = a5;
  v28.size.height = a6;
  v17 = CGRectGetWidth(v28) * v12 + a3;
  v29.origin.x = a3;
  v29.origin.y = a4;
  v29.size.width = a5;
  v29.size.height = a6;
  v18 = v17 - a5 * 0.3 * 0.5;
  v19 = v14 * CGRectGetHeight(v29) + a4 - v16 * 0.5;
  v30.origin.x = v18;
  v30.origin.y = v19;
  v30.size.width = v15;
  v30.size.height = v16;
  MinX = CGRectGetMinX(v30);
  v31.origin.x = v18;
  v31.origin.y = v19;
  v31.size.width = v15;
  v31.size.height = v16;
  MinY = CGRectGetMinY(v31);
  v32.origin.x = v18;
  v32.origin.y = v19;
  v32.size.width = v15;
  v32.size.height = v16;
  MaxX = CGRectGetMaxX(v32);
  v33.origin.x = v18;
  v33.origin.y = v19;
  v33.size.width = v15;
  v33.size.height = v16;
  v20 = CGRectGetMinY(v33);
  v34.origin.x = v18;
  v34.origin.y = v19;
  v34.size.width = v15;
  v34.size.height = v16;
  v21 = CGRectGetMinX(v34);
  v35.origin.x = v18;
  v35.origin.y = v19;
  v35.size.width = v15;
  v35.size.height = v16;
  MaxY = CGRectGetMaxY(v35);
  v36.origin.x = v18;
  v36.origin.y = v19;
  v36.size.width = v15;
  v36.size.height = v16;
  v23 = CGRectGetMaxX(v36);
  v37.origin.x = v18;
  v37.origin.y = v19;
  v37.size.width = v15;
  v37.size.height = v16;
  v24 = CGRectGetMaxY(v37);
  *a2 = MinX;
  a2[1] = MinY;
  a2[2] = MaxX;
  a2[3] = v20;
  a2[4] = v21;
  a2[5] = MaxY;
  a2[6] = v23;
  a2[7] = v24;
}

void sub_1A38E9BB0(CGFloat *a2@<X8>, CGFloat a3@<D0>, CGFloat a4@<D1>, CGFloat a5@<D2>, CGFloat a6@<D3>)
{
  sub_1A3A31590();
  v12 = v11;
  v14 = v13;
  v15 = a5 * 0.2;
  v16 = a6 * 0.2;
  v28.origin.x = a3;
  v28.origin.y = a4;
  v28.size.width = a5;
  v28.size.height = a6;
  v17 = CGRectGetWidth(v28) * v12 + a3;
  v29.origin.x = a3;
  v29.origin.y = a4;
  v29.size.width = a5;
  v29.size.height = a6;
  v18 = v17 - a5 * 0.2 * 0.5;
  v19 = v14 * CGRectGetHeight(v29) + a4 - v16 * 0.5;
  v30.origin.x = v18;
  v30.origin.y = v19;
  v30.size.width = v15;
  v30.size.height = v16;
  MinX = CGRectGetMinX(v30);
  v31.origin.x = v18;
  v31.origin.y = v19;
  v31.size.width = v15;
  v31.size.height = v16;
  MinY = CGRectGetMinY(v31);
  v32.origin.x = v18;
  v32.origin.y = v19;
  v32.size.width = v15;
  v32.size.height = v16;
  MaxX = CGRectGetMaxX(v32);
  v33.origin.x = v18;
  v33.origin.y = v19;
  v33.size.width = v15;
  v33.size.height = v16;
  MaxY = CGRectGetMaxY(v33);
  v34.origin.x = v18;
  v34.origin.y = v19;
  v34.size.width = v15;
  v34.size.height = v16;
  v21 = CGRectGetMinX(v34);
  v35.origin.x = v18;
  v35.origin.y = v19;
  v35.size.width = v15;
  v35.size.height = v16;
  v22 = CGRectGetMaxY(v35);
  v36.origin.x = v18;
  v36.origin.y = v19;
  v36.size.width = v15;
  v36.size.height = v16;
  v23 = CGRectGetMaxX(v36);
  v37.origin.x = v18;
  v37.origin.y = v19;
  v37.size.width = v15;
  v37.size.height = v16;
  v24 = CGRectGetMinY(v37);
  *a2 = MinX;
  a2[1] = MinY;
  a2[2] = MaxX;
  a2[3] = MaxY;
  a2[4] = v21;
  a2[5] = v22;
  a2[6] = v23;
  a2[7] = v24;
}

unint64_t sub_1A38E9D44()
{
  result = qword_1ED996E98;
  if (!qword_1ED996E98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED996E98);
  }

  return result;
}

unint64_t sub_1A38E9D98()
{
  result = qword_1EB0FDD50;
  if (!qword_1EB0FDD50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0FDD50);
  }

  return result;
}

uint64_t sub_1A38E9DEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, double a8)
{
  v13 = a3;
  sub_1A3A2EA60();
  sub_1A3A2EA60();
  v16 = sub_1A38EB264(a1, a2, v13, a4, a5, v18, a8);
  MEMORY[0x1A58F6B00](v18, a6, &type metadata for TappedButtonAnimation, a7, v16);
  v19[2] = v18[2];
  v19[3] = v18[3];
  v19[4] = v18[4];
  v19[5] = v18[5];
  v19[0] = v18[0];
  v19[1] = v18[1];
  return sub_1A38EB35C(v19);
}

uint64_t sub_1A38E9EC4(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FDD58, &unk_1A3A6FC58);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v19 - v4;
  v19 = *(v1 + 64);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FC4F0, &qword_1A3A6C6C0);
  sub_1A3A30F90();
  v6 = v21;
  sub_1A3A31590();
  v8 = v7;
  v10 = v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FDD60, &qword_1A3A6FC68);
  (*(*(v11 - 8) + 16))(v5, a1, v11);
  v12 = &v5[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FDD68, &qword_1A3A6FC70) + 36)];
  *v12 = v6;
  *(v12 + 1) = v6;
  *(v12 + 2) = v8;
  *(v12 + 3) = v10;
  v19 = *(v1 + 80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FDD70, &qword_1A3A6FC78);
  sub_1A3A30F90();
  *&v5[*(v3 + 36)] = v21;
  v19 = *v1;
  v20 = *(v1 + 16);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FC598, &qword_1A3A6FC80);
  MEMORY[0x1A58F7010](&v21, v13);
  v14 = swift_allocObject();
  v15 = *(v1 + 48);
  v14[3] = *(v1 + 32);
  v14[4] = v15;
  v16 = *(v1 + 80);
  v14[5] = *(v1 + 64);
  v14[6] = v16;
  v17 = *(v1 + 16);
  v14[1] = *v1;
  v14[2] = v17;
  sub_1A38EB47C(v1, &v19);
  sub_1A38EB4B4();
  sub_1A3A30CA0();

  return sub_1A388F740(v5, &qword_1EB0FDD58, &unk_1A3A6FC58);
}

double sub_1A38EA11C(uint64_t a1, _BYTE *a2, _OWORD *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FC488, &qword_1A3A6C3A0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v23 - v6;
  if (*a2 == 1)
  {
    v8 = MEMORY[0x1A58F7350](0.38, 0.5, 0.0);
    MEMORY[0x1EEE9AC00](v8);
    *&v23[-1] = a3;
    sub_1A3A2F8A0();

    v23[0] = a3[3];
    v24 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FC3C8, &qword_1A3A6C090);
    sub_1A3A30FA0();
    v9 = swift_allocObject();
    v10 = a3[3];
    v9[3] = a3[2];
    v9[4] = v10;
    v11 = a3[5];
    v9[5] = a3[4];
    v9[6] = v11;
    v12 = a3[1];
    v9[1] = *a3;
    v9[2] = v12;
    v13 = sub_1A3A31AD0();
    (*(*(v13 - 8) + 56))(v7, 1, 1, v13);
    sub_1A3A31AA0();
    sub_1A38EB47C(a3, v23);
    sub_1A38EB47C(a3, v23);
    sub_1A3A2EA60();
    v14 = sub_1A3A31A90();
    v15 = swift_allocObject();
    v16 = MEMORY[0x1E69E85E0];
    *(v15 + 16) = v14;
    *(v15 + 24) = v16;
    *(v15 + 32) = sub_1A38EB6C0;
    *(v15 + 40) = v9;
    v17 = a3[3];
    *(v15 + 80) = a3[2];
    *(v15 + 96) = v17;
    v18 = a3[5];
    *(v15 + 112) = a3[4];
    *(v15 + 128) = v18;
    v19 = a3[1];
    *(v15 + 48) = *a3;
    *(v15 + 64) = v19;
    sub_1A38EAACC(0, 0, v7, &unk_1A3A6FC90, v15);
  }

  else
  {
    v23[0] = a3[3];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FC3C8, &qword_1A3A6C090);
    v21 = sub_1A3A30F90();
    if (v24 == 1)
    {
      v22 = MEMORY[0x1A58F7350](v21, 0.466, 0.5, 0.0);
      MEMORY[0x1EEE9AC00](v22);
      *&v23[-1] = a3;
      sub_1A3A2F8A0();
    }
  }

  return result;
}

double sub_1A38EA424(__int128 *a1)
{
  LOBYTE(v5) = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FC3C8, &qword_1A3A6C090);
  sub_1A3A30FA0();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FC598, &qword_1A3A6FC80);
  v2 = MEMORY[0x1A58F7010](&v5, v1);
  if ((v5 & 1) == 0)
  {
    v4 = MEMORY[0x1A58F7350](v2, 0.466, 0.5, 0.0);
    MEMORY[0x1EEE9AC00](v4);
    sub_1A3A2F8A0();
  }

  return result;
}

uint64_t sub_1A38EA530(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FC4F0, &qword_1A3A6C6C0);
  sub_1A3A30FA0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FDD70, &qword_1A3A6FC78);
  return sub_1A3A30FA0();
}

uint64_t sub_1A38EA5D0(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FC4F0, &qword_1A3A6C6C0);
  sub_1A3A30FA0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FDD70, &qword_1A3A6FC78);
  return sub_1A3A30FA0();
}

uint64_t sub_1A38EA66C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  v7 = sub_1A3A32040();
  v6[5] = v7;
  v6[6] = *(v7 - 8);
  v6[7] = swift_task_alloc();
  sub_1A3A31AA0();
  v6[8] = sub_1A3A31A90();
  v9 = sub_1A3A31A70();
  v6[9] = v9;
  v6[10] = v8;

  return MEMORY[0x1EEE6DFA0](sub_1A38EA764, v9, v8);
}

uint64_t sub_1A38EA764()
{
  v1 = *(v0 + 32);
  v3 = *(v1 + 32);
  v2 = *(v1 + 40);
  sub_1A3A32250();
  v4 = swift_task_alloc();
  *(v0 + 88) = v4;
  *v4 = v0;
  v4[1] = sub_1A38EA834;

  return sub_1A38EADAC(v3, v2, 0, 0, 1);
}

uint64_t sub_1A38EA834()
{
  v2 = *v1;
  v3 = *(*v1 + 56);
  v4 = *(*v1 + 48);
  v5 = *(*v1 + 40);
  *(*v1 + 96) = v0;

  (*(v4 + 8))(v3, v5);
  v6 = *(v2 + 80);
  v7 = *(v2 + 72);
  if (v0)
  {
    v8 = sub_1A38EAA4C;
  }

  else
  {
    v8 = sub_1A38EA9CC;
  }

  return MEMORY[0x1EEE6DFA0](v8, v7, v6);
}

uint64_t sub_1A38EA9CC()
{
  v1 = *(v0 + 16);

  v1(v2);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1A38EAA4C()
{
  v1 = *(v0 + 16);

  v1(v2);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1A38EAACC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FC488, &qword_1A3A6C3A0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = v22 - v9;
  sub_1A3896E40(a3, v22 - v9);
  v11 = sub_1A3A31AD0();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);
  sub_1A3A2EA60();
  if (v13 == 1)
  {
    sub_1A388F740(v10, &qword_1EB0FC488, &qword_1A3A6C3A0);
  }

  else
  {
    sub_1A3A31AC0();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_1A3A31A70();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = sub_1A3A318A0() + 32;
      sub_1A3A2EA60();
      if (v17 | v15)
      {
        v23[0] = 0;
        v23[1] = 0;
        v19 = v23;
        v23[2] = v15;
        v23[3] = v17;
      }

      else
      {
        v19 = 0;
      }

      v22[1] = 7;
      v22[2] = v19;
      v22[3] = v18;
      v20 = swift_task_create();

      sub_1A388F740(a3, &qword_1EB0FC488, &qword_1A3A6C3A0);

      return v20;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1A388F740(a3, &qword_1EB0FC488, &qword_1A3A6C3A0);
  if (v17 | v15)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v15;
    v23[7] = v17;
  }

  return swift_task_create();
}

uint64_t sub_1A38EADAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 56) = v5;
  v12 = sub_1A3A32030();
  *(v6 + 64) = v12;
  *(v6 + 72) = *(v12 - 8);
  *(v6 + 80) = swift_task_alloc();
  *(v6 + 88) = swift_task_alloc();
  *(v6 + 40) = a1;
  *(v6 + 48) = a2;
  *(v6 + 16) = a3;
  *(v6 + 24) = a4;
  *(v6 + 32) = a5 & 1;

  return MEMORY[0x1EEE6DFA0](sub_1A38EAEAC, 0, 0);
}

uint64_t sub_1A38EAEAC()
{
  v1 = v0[10];
  v2 = v0[8];
  v3 = v0[9];
  v4 = sub_1A3A32040();
  v5 = sub_1A38EB78C(&qword_1EB0FDD90, MEMORY[0x1E69E8820], MEMORY[0x1E69E8828]);
  sub_1A3A32230();
  sub_1A38EB78C(&qword_1EB0FDD98, MEMORY[0x1E69E87E8], MEMORY[0x1E69E8818]);
  sub_1A3A32050();
  v6 = *(v3 + 8);
  v0[12] = v6;
  v0[13] = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v6(v1, v2);
  v7 = swift_task_alloc();
  v0[14] = v7;
  *v7 = v0;
  v7[1] = sub_1A38EB03C;
  v8 = v0[11];

  return MEMORY[0x1EEE6DE58](v8, v0 + 2, v4, v5);
}

uint64_t sub_1A38EB03C()
{
  v2 = *(*v1 + 96);
  v3 = *(*v1 + 88);
  v4 = *(*v1 + 64);
  v5 = *v1;
  *(v5 + 120) = v0;

  v2(v3, v4);
  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1A38EB1F8, 0, 0);
  }

  else
  {

    v6 = *(v5 + 8);

    return v6();
  }
}

uint64_t sub_1A38EB1F8()
{

  v1 = *(v0 + 8);

  return v1();
}

double sub_1A38EB264@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>, double a7@<D0>)
{
  sub_1A3A30F80();
  sub_1A3A30F80();
  sub_1A3A30F80();
  result = v15;
  *a6 = a1;
  *(a6 + 8) = a2;
  *(a6 + 16) = a3;
  *(a6 + 24) = a7;
  *(a6 + 32) = a4;
  *(a6 + 40) = a5;
  *(a6 + 48) = LOBYTE(v15);
  *(a6 + 56) = v16;
  *(a6 + 64) = v15;
  *(a6 + 72) = v16;
  *(a6 + 80) = v15;
  *(a6 + 88) = v16;
  return result;
}

__n128 __swift_memcpy96_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = result;
  *(a1 + 48) = v4;
  return result;
}

uint64_t sub_1A38EB3A8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 96))
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

uint64_t sub_1A38EB3F0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 96) = 1;
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

    *(result + 96) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1A38EB4B4()
{
  result = qword_1EB0FDD78;
  if (!qword_1EB0FDD78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0FDD58, &unk_1A3A6FC58);
    sub_1A38EB540();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0FDD78);
  }

  return result;
}

unint64_t sub_1A38EB540()
{
  result = qword_1EB0FDD80;
  if (!qword_1EB0FDD80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0FDD68, &qword_1A3A6FC70);
    sub_1A38EB5CC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0FDD80);
  }

  return result;
}

unint64_t sub_1A38EB5CC()
{
  result = qword_1EB0FDD88;
  if (!qword_1EB0FDD88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0FDD60, &qword_1A3A6FC68);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0FDD88);
  }

  return result;
}

uint64_t objectdestroyTm_5()
{

  return swift_deallocObject();
}

uint64_t sub_1A38EB6C8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1A38910D8;

  return sub_1A38EA66C(a1, v4, v5, v6, v7, (v1 + 6));
}

uint64_t sub_1A38EB78C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1A38EB81C()
{
  result = qword_1EB0FDDA0;
  if (!qword_1EB0FDDA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0FDDA0);
  }

  return result;
}

uint64_t sub_1A38EB870(unint64_t a1)
{
  if (a1 > 2)
  {
    if (a1 == 3 || a1 == 4)
    {
LABEL_9:
      v2 = sub_1A3A31810();

      v3 = CAMLocalizedFrameworkString(v2, 0);

      v4 = sub_1A3A31850();
      return v4;
    }
  }

  else
  {
    if (a1 < 2)
    {
      return 0;
    }

    if (a1 == 2)
    {
      goto LABEL_9;
    }
  }

  result = sub_1A3A321F0();
  __break(1u);
  return result;
}

unint64_t sub_1A38EB968@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1A38EBED4(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_1A38EB99C(uint64_t a1)
{
  result = 0xD000000000000019;
  v3 = *v1;
  if (*v1 <= 1)
  {
    if (!v3)
    {
      return 0xD00000000000001BLL;
    }

    if (v3 == 1)
    {
      return result;
    }

LABEL_9:
    result = sub_1A3A321F0();
    __break(1u);
    return result;
  }

  if (v3 == 2)
  {
    return 0xD00000000000001BLL;
  }

  if (v3 != 3)
  {
    goto LABEL_9;
  }

  return result;
}

uint64_t sub_1A38EBA4C()
{
  v0 = sub_1A3A31810();
  v1 = sub_1A3A31810();
  v2 = CAMLocalizedFrameworkString(v0, v1);

  sub_1A3A31850();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FD310, &unk_1A3A73030);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1A3A681C0;
  sub_1A38EC330();
  v4 = sub_1A3A31E50();
  v6 = v5;
  *(v3 + 56) = MEMORY[0x1E69E6158];
  *(v3 + 64) = sub_1A38C6EB4();
  *(v3 + 32) = v4;
  *(v3 + 40) = v6;
  v7 = sub_1A3A31820();

  return v7;
}

unint64_t sub_1A38EBB88@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1A38EC0B8(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

unint64_t sub_1A38EBC00()
{
  result = qword_1EB0FDDA8;
  if (!qword_1EB0FDDA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0FDDA8);
  }

  return result;
}

unint64_t sub_1A38EBC54@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1A38EC320(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_1A38EBC88(uint64_t a1)
{
  result = 0xD000000000000021;
  v3 = *v1;
  if (*v1 > 2)
  {
    if (v3 == 3 || v3 == 4)
    {
      return result;
    }

LABEL_9:
    result = sub_1A3A321F0();
    __break(1u);
    return result;
  }

  if (*v1 < 2)
  {
    return 0xD00000000000001DLL;
  }

  if (v3 != 2)
  {
    goto LABEL_9;
  }

  return result;
}

unint64_t sub_1A38EBD34()
{
  result = qword_1EB0FDDB0;
  if (!qword_1EB0FDDB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0FDDB0);
  }

  return result;
}

uint64_t sub_1A38EBD88(unint64_t a1, char a2)
{
  if (a1 <= 0xE)
  {
    if (((1 << a1) & 0x7620) != 0)
    {
      if (a2)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }

    if (((1 << a1) & 0x992) != 0)
    {
      return 1;
    }

    if (((1 << a1) & 0x4C) != 0)
    {
      return 0;
    }
  }

  if (a1 - 10000 < 6 || a1 == 0)
  {
    return 0;
  }

  sub_1A3A31F20();
  MEMORY[0x1A58F7770](0xD000000000000026, 0x80000001A3AA23D0);
  type metadata accessor for CAMCaptureVideoConfiguration(0);
  sub_1A3A32060();
  result = sub_1A3A32070("Fatal error", 11, 2, 0, 0xE000000000000000, "CameraUI/ChromeVideoEnums.swift", 31, 2, 46, 0);
  __break(1u);
  return result;
}

unint64_t sub_1A38EBED4(unint64_t result)
{
  if (result > 3)
  {
    return 0;
  }

  return result;
}

uint64_t sub_1A38EBEE4(uint64_t a1)
{
  if (a1 <= 9)
  {
    if (a1 > 4)
    {
      if ((a1 - 5) < 3)
      {
        return 30;
      }

      if (a1 == 8)
      {
        return 240;
      }

      if (a1 != 9)
      {
        goto LABEL_26;
      }
    }

    else
    {
      if (a1 > 1)
      {
        if (a1 != 3)
        {
          return 120;
        }

        return 240;
      }

      if (!a1)
      {
        return 0;
      }

      if (a1 != 1)
      {
        goto LABEL_26;
      }
    }

    return 60;
  }

  if (a1 <= 13)
  {
    if ((a1 - 11) < 2)
    {
      return 25;
    }

    if (a1 == 10)
    {
      return 24;
    }

    if (a1 != 13)
    {
      goto LABEL_26;
    }

    return 120;
  }

  if ((a1 - 10000) < 6)
  {
    return 0;
  }

  if (a1 == 14)
  {
    return 100;
  }

LABEL_26:
  sub_1A3A31F20();
  MEMORY[0x1A58F7770](0xD000000000000026, 0x80000001A3AA23D0);
  type metadata accessor for CAMCaptureVideoConfiguration(0);
  sub_1A3A32060();
  result = sub_1A3A32070("Fatal error", 11, 2, 0, 0xE000000000000000, "CameraUI/ChromeVideoEnums.swift", 31, 2, 99, 0);
  __break(1u);
  return result;
}

unint64_t sub_1A38EC0B8(unint64_t result)
{
  if (result <= 99)
  {
    if (result <= 0x3C && ((1 << result) & 0x1000000043000000) != 0)
    {
      return result;
    }

    return 0;
  }

  if (result != 100 && result != 120 && result != 240)
  {
    return 0;
  }

  return result;
}

unint64_t sub_1A38EC10C(unint64_t result, unint64_t a2, char a3)
{
  if (result >= 2)
  {
    if (result != 2)
    {
      sub_1A3A31F20();
      MEMORY[0x1A58F7770](0xD000000000000029, 0x80000001A3AA2330);
      type metadata accessor for CAMCaptureVideoEncodingBehavior(0);
      sub_1A3A32060();
      result = sub_1A3A32070("Fatal error", 11, 2, 0, 0xE000000000000000, "CameraUI/ChromeVideoEnums.swift", 31, 2, 177, 0);
LABEL_10:
      __break(1u);
      return result;
    }

    if (a3)
    {
      sub_1A3A31F20();
      MEMORY[0x1A58F7770](0xD000000000000018, 0x80000001A3AA2360);
      type metadata accessor for CAMCaptureVideoEncodingBehavior(0);
      sub_1A3A32060();
      MEMORY[0x1A58F7770](0xD00000000000002FLL, 0x80000001A3AA2380);
      result = sub_1A3A32070("Fatal error", 11, 2, 0, 0xE000000000000000, "CameraUI/ChromeVideoEnums.swift", 31, 2, 172, 0);
      goto LABEL_10;
    }

    if (a2 >= 4)
    {
      sub_1A3A31F20();

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FDDC0, &unk_1A3A6FFF0);
      v3 = sub_1A3A31880();
      MEMORY[0x1A58F7770](v3);

      result = sub_1A3A32070("Fatal error", 11, 2, 0xD000000000000017, 0x80000001A3AA23B0, "CameraUI/ChromeVideoEnums.swift", 31, 2, 174, 0);
      goto LABEL_10;
    }

    return qword_1A3A70000[a2];
  }

  return result;
}

unint64_t sub_1A38EC320(unint64_t result)
{
  if (result > 4)
  {
    return 0;
  }

  return result;
}

unint64_t sub_1A38EC330()
{
  result = qword_1EB0FDDB8;
  if (!qword_1EB0FDDB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0FDDB8);
  }

  return result;
}

unint64_t *sub_1A38EC3AC@<X0>(unint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result;
  v3 = *result > 2;
  if (*result > 2)
  {
    v2 = 0;
  }

  *a2 = v2;
  *(a2 + 8) = v3;
  return result;
}

uint64_t sub_1A38EC3D8(uint64_t a1)
{
  v2 = *v1;
  if (!*v1)
  {
    return 0x6F63657220746F4ELL;
  }

  if (v2 == 2)
  {
    return 0x646573756150;
  }

  if (v2 == 1)
  {
    return 0x6E6964726F636552;
  }

  result = sub_1A3A321F0();
  __break(1u);
  return result;
}

unint64_t sub_1A38EC47C()
{
  result = qword_1EB0FDDC8;
  if (!qword_1EB0FDDC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0FDDD0, qword_1A3A70088);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0FDDC8);
  }

  return result;
}

uint64_t sub_1A38EC4E4(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath(byte_1A3A70D48, a2);
  sub_1A3903C74(&qword_1ED996608, type metadata accessor for ChromeViewModel, &unk_1A3A70668);
  sub_1A3A2F080();

  return sub_1A3A2EA60();
}

uint64_t sub_1A38EC588(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath("PAiG", a2);
  sub_1A3903C74(&qword_1ED996608, type metadata accessor for ChromeViewModel, &unk_1A3A70668);
  sub_1A3A2F080();

  return *(v2 + 848);
}

uint64_t sub_1A38EC62C(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath(byte_1A3A71360, a2);
  sub_1A3903C74(&qword_1ED996608, type metadata accessor for ChromeViewModel, &unk_1A3A70668);
  sub_1A3A2F080();

  return *(v2 + 416);
}

uint64_t sub_1A38EC6CC(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath("0CiG", a2);
  sub_1A3903C74(&qword_1ED996608, type metadata accessor for ChromeViewModel, &unk_1A3A70668);
  sub_1A3A2F080();

  return *(v2 + 392);
}

double sub_1A38EC76C(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath("0AiG", a2);
  sub_1A3903C74(&qword_1ED996608, type metadata accessor for ChromeViewModel, &unk_1A3A70668);
  sub_1A3A2F080();

  return *(v2 + 424);
}

double sub_1A38EC80C(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath(byte_1A3A70820, a2);
  sub_1A3903C74(&qword_1ED996608, type metadata accessor for ChromeViewModel, &unk_1A3A70668);
  sub_1A3A2F080();

  return *(v2 + 712);
}

double sub_1A38EC8AC(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath("0BiG", a2);
  sub_1A3903C74(&qword_1ED996608, type metadata accessor for ChromeViewModel, &unk_1A3A70668);
  sub_1A3A2F080();

  return *(v2 + 672);
}

uint64_t sub_1A38EC94C(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath("p8iG", a2);
  sub_1A3903C74(&qword_1ED996608, type metadata accessor for ChromeViewModel, &unk_1A3A70668);
  sub_1A3A2F080();

  return sub_1A3A2EA60();
}

uint64_t sub_1A38EC9F0(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath(byte_1A3A713D8, a2);
  sub_1A3903C74(&qword_1ED996608, type metadata accessor for ChromeViewModel, &unk_1A3A70668);
  sub_1A3A2F080();

  return *(v2 + 1067);
}

uint64_t sub_1A38ECA90(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath("p<iG", a2);
  sub_1A3903C74(&qword_1ED996608, type metadata accessor for ChromeViewModel, &unk_1A3A70668);
  sub_1A3A2F080();

  return *(v2 + 976);
}

double sub_1A38ECB30(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath("0<iG");
  sub_1A3903C74(&qword_1ED996608, type metadata accessor for ChromeViewModel, &unk_1A3A70668);
  sub_1A3A2F080();

  if (*(a2 + 592) != a1)
  {
    swift_getKeyPath("PCiG");
    sub_1A3A2F080();

    if (*(a2 + 48) == 255)
    {
      goto LABEL_12;
    }

    swift_getKeyPath("PCiG");
    sub_1A3A2F080();

    if (*(a2 + 48) == 255)
    {
      goto LABEL_12;
    }

    swift_getKeyPath("PCiG");
    sub_1A3A2F080();

    v6 = *(a2 + 24);
    v5 = *(a2 + 32);
    v7 = *(a2 + 40);
    v8 = *(a2 + 48);
    sub_1A38BCF64(v6, v5, v7, *(a2 + 48));
    sub_1A38EEF8C(0, 0, 0, 255);
    if (v8 == 1)
    {
      if (v6 == 35)
      {
        v9 = 35;
      }

      else
      {
        sub_1A38F6EF8(v6, 0x23uLL);
        v9 = v6;
      }

      v10 = v5;
      v11 = v7;
      v12 = 1;
    }

    else
    {
      if (v8 == 255)
      {
        goto LABEL_12;
      }

      v9 = v6;
      v10 = v5;
      v11 = v7;
      v12 = v8;
    }

    sub_1A38BC250(v9, v10, v11, v12);
LABEL_12:
    if (*(a2 + 592) != a1)
    {
      KeyPath = swift_getKeyPath("0<iG");
      MEMORY[0x1EEE9AC00](KeyPath);
      sub_1A3A2F070();
    }
  }

  return result;
}

double sub_1A38ECDBC(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath("p<iG");
  sub_1A3903C74(&qword_1ED996608, type metadata accessor for ChromeViewModel, &unk_1A3A70668);
  sub_1A3A2F080();

  if (*(a2 + 976) != a1)
  {
    KeyPath = swift_getKeyPath("p<iG");
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A3A2F070();
  }

  return result;
}

void sub_1A38ECEFC(uint64_t a1, uint64_t a2, double a3)
{
  swift_getKeyPath(byte_1A3A70848, a2);
  sub_1A3903C74(&qword_1ED996608, type metadata accessor for ChromeViewModel, &unk_1A3A70668);
  sub_1A3A2F080();

  if (*(a1 + 704) != a3)
  {
    KeyPath = swift_getKeyPath(byte_1A3A70848);
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A3A2F070();
  }
}

void sub_1A38ED040(uint64_t a1, uint64_t a2, double a3)
{
  swift_getKeyPath(byte_1A3A70820, a2);
  sub_1A3903C74(&qword_1ED996608, type metadata accessor for ChromeViewModel, &unk_1A3A70668);
  sub_1A3A2F080();

  if (*(a1 + 712) != a3)
  {
    KeyPath = swift_getKeyPath(byte_1A3A70820);
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A3A2F070();
  }
}

void sub_1A38ED184(uint64_t a1, uint64_t a2, double a3)
{
  swift_getKeyPath("0BiG", a2);
  sub_1A3903C74(&qword_1ED996608, type metadata accessor for ChromeViewModel, &unk_1A3A70668);
  sub_1A3A2F080();

  if (*(a1 + 672) != a3)
  {
    KeyPath = swift_getKeyPath("0BiG");
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A3A2F070();
  }
}

double sub_1A38ED2C8(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath(byte_1A3A71720, a2);
  sub_1A3903C74(&qword_1ED996608, type metadata accessor for ChromeViewModel, &unk_1A3A70668);
  sub_1A3A2F080();

  return *(v2 + 224);
}

void sub_1A38ED36C(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  v10.origin.x = a1;
  v10.origin.y = a2;
  v10.size.width = a3;
  v10.size.height = a4;
  if (CGRectEqualToRect(v4[7], v10))
  {
    v4[7].origin.x = a1;
    v4[7].origin.y = a2;
    v4[7].size.width = a3;
    v4[7].size.height = a4;
  }

  else
  {
    KeyPath = swift_getKeyPath(byte_1A3A71720);
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A3903C74(&qword_1ED996608, type metadata accessor for ChromeViewModel, &unk_1A3A70668);
    sub_1A3A2F070();
  }
}

double sub_1A38ED4B4(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath(byte_1A3A71770, a2);
  sub_1A3903C74(&qword_1ED996608, type metadata accessor for ChromeViewModel, &unk_1A3A70668);
  sub_1A3A2F080();

  return *(v2 + 400);
}

double sub_1A38ED554(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath(byte_1A3A71888, a2);
  sub_1A3903C74(&qword_1ED996608, type metadata accessor for ChromeViewModel, &unk_1A3A70668);
  sub_1A3A2F080();

  return *(v2 + 256);
}

void sub_1A38ED5F8(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  v10.origin.x = a1;
  v10.origin.y = a2;
  v10.size.width = a3;
  v10.size.height = a4;
  if (CGRectEqualToRect(v4[8], v10))
  {
    v4[8].origin.x = a1;
    v4[8].origin.y = a2;
    v4[8].size.width = a3;
    v4[8].size.height = a4;
  }

  else
  {
    KeyPath = swift_getKeyPath(byte_1A3A71888);
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A3903C74(&qword_1ED996608, type metadata accessor for ChromeViewModel, &unk_1A3A70668);
    sub_1A3A2F070();
  }
}

double sub_1A38ED740(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath(byte_1A3A71860, a2);
  sub_1A3903C74(&qword_1ED996608, type metadata accessor for ChromeViewModel, &unk_1A3A70668);
  sub_1A3A2F080();

  return *(v2 + 288);
}

void sub_1A38ED7E4(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  v10.origin.x = a1;
  v10.origin.y = a2;
  v10.size.width = a3;
  v10.size.height = a4;
  if (CGRectEqualToRect(v4[9], v10))
  {
    v4[9].origin.x = a1;
    v4[9].origin.y = a2;
    v4[9].size.width = a3;
    v4[9].size.height = a4;
  }

  else
  {
    KeyPath = swift_getKeyPath(byte_1A3A71860);
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A3903C74(&qword_1ED996608, type metadata accessor for ChromeViewModel, &unk_1A3A70668);
    sub_1A3A2F070();
  }
}

double sub_1A38ED92C(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath("05iG", a2);
  sub_1A3903C74(&qword_1ED996608, type metadata accessor for ChromeViewModel, &unk_1A3A70668);
  sub_1A3A2F080();

  return *(v2 + 320);
}

void sub_1A38ED9D0(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  v10.origin.x = a1;
  v10.origin.y = a2;
  v10.size.width = a3;
  v10.size.height = a4;
  if (CGRectEqualToRect(v4[10], v10))
  {
    v4[10].origin.x = a1;
    v4[10].origin.y = a2;
    v4[10].size.width = a3;
    v4[10].size.height = a4;
  }

  else
  {
    KeyPath = swift_getKeyPath("05iG");
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A3903C74(&qword_1ED996608, type metadata accessor for ChromeViewModel, &unk_1A3A70668);
    sub_1A3A2F070();
  }
}

uint64_t sub_1A38EDB18(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath(byte_1A3A715E0, a2);
  sub_1A3903C74(&qword_1ED996608, type metadata accessor for ChromeViewModel, &unk_1A3A70668);
  sub_1A3A2F080();

  return *(v2 + 584);
}

uint64_t sub_1A38EDBB8(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath("p6iG", a2);
  sub_1A3903C74(&qword_1ED996608, type metadata accessor for ChromeViewModel, &unk_1A3A70668);
  sub_1A3A2F080();

  return *(v2 + 1154);
}

uint64_t sub_1A38EDC58(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath(byte_1A3A71680, a2);
  sub_1A3903C74(&qword_1ED996608, type metadata accessor for ChromeViewModel, &unk_1A3A70668);
  sub_1A3A2F080();

  return *(v2 + 1153);
}

uint64_t sub_1A38EDCF8(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath(byte_1A3A71270, a2);
  sub_1A3903C74(&qword_1ED996608, type metadata accessor for ChromeViewModel, &unk_1A3A70668);
  sub_1A3A2F080();

  return *(v2 + 800);
}

uint64_t sub_1A38EDD98(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath("p?iG", a2);
  sub_1A3903C74(&qword_1ED996608, type metadata accessor for ChromeViewModel, &unk_1A3A70668);
  sub_1A3A2F080();

  return sub_1A3A2EA60();
}

uint64_t sub_1A38EDE3C(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath("p=iG", a2);
  sub_1A3903C74(&qword_1ED996608, type metadata accessor for ChromeViewModel, &unk_1A3A70668);
  sub_1A3A2F080();

  return *(v2 + 904);
}

uint64_t sub_1A38EDF20(uint64_t (*a1)(uint64_t *), uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t), void (*a5)(uint64_t))
{
  v6 = *(a3 + 16);
  if (v6)
  {
    v10 = (a3 + 32);
    v11 = v6 - 1;
    do
    {
      v12 = *v10++;
      v16 = v12;
      a4(v12, a2);
      v13 = a1(&v16);
      a5(v12);
      if (v5)
      {
        break;
      }

      v14 = v11-- == 0;
    }

    while (((v13 | v14) & 1) == 0);
  }

  else
  {
    LOBYTE(v13) = 0;
  }

  return v13 & 1;
}

void sub_1A38EDFE0(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  swift_getKeyPath("PCiG");
  sub_1A3903C74(&qword_1ED996608, type metadata accessor for ChromeViewModel, &unk_1A3A70668);
  sub_1A3A2F080();

  v10 = *(v4 + 48);
  if (v10 == 255)
  {
    if (a4 == 0xFF)
    {
      return;
    }

    goto LABEL_23;
  }

  if (a4 == 0xFF)
  {
    goto LABEL_23;
  }

  v12 = *(v4 + 24);
  v11 = *(v4 + 32);
  v13 = *(v4 + 40);
  if (!v10)
  {
    if (a4 || v12 != a1 || v11 != a2 || v13 != a3)
    {
      goto LABEL_23;
    }

    v14 = a1;
    v15 = a2;
    v16 = a3;
    v17 = 0;
    goto LABEL_24;
  }

  if (v10 != 1)
  {
    if (a4 != 2)
    {
      goto LABEL_23;
    }

    sub_1A38BCF64(a1, a2, a3, 2);
    sub_1A38BCF64(v12, v11, v13, 2);
    v22 = sub_1A3A018A8(v12, a1);
    sub_1A38BC250(a1, a2, a3, 2);
    sub_1A38BC250(v12, v11, v13, 2);
    if ((v22 & 1) == 0)
    {
      goto LABEL_23;
    }

    v14 = a1;
    v15 = a2;
    v16 = a3;
    v17 = 2;
    goto LABEL_24;
  }

  if (a4 != 1)
  {
LABEL_23:
    swift_getKeyPath("PCiG");
    sub_1A3A2F080();

    v18 = *(v5 + 24);
    v19 = *(v5 + 32);
    v20 = *(v5 + 40);
    v21 = *(v5 + 48);
    sub_1A38BCF64(a1, a2, a3, a4);
    sub_1A38BCF64(v18, v19, v20, v21);
    sub_1A38EEF8C(a1, a2, a3, a4);
    sub_1A38F6CFC(v18, v19, v20, v21, a1, a2, a3, a4);
    sub_1A38BC250(a1, a2, a3, a4);
    v14 = v18;
    v15 = v19;
    v16 = v20;
    v17 = v21;
    goto LABEL_24;
  }

  if (v12 != 35)
  {
    if (a1 == 35)
    {
      sub_1A38BCF78(35, a2, a3, 1);
      goto LABEL_23;
    }

    sub_1A38BCF64(a1, a2, a3, 1);
    sub_1A38BCF64(v12, v11, v13, 1);
    v23 = sub_1A3A018A8(v12, a1);
    sub_1A38BC250(a1, a2, a3, 1);
    sub_1A38BC250(v12, v11, v13, 1);
    if ((v23 & 1) == 0)
    {
      goto LABEL_23;
    }

    v14 = a1;
    v15 = a2;
    v16 = a3;
    v17 = 1;
LABEL_24:
    sub_1A38BC250(v14, v15, v16, v17);
    return;
  }

  if (a1 != 35)
  {
    goto LABEL_23;
  }
}