void *sub_1C54B39A8(uint64_t *a1, void *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15CEF8, &qword_1C55B11E0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v2 = sub_1C5594BE4();
    (*(*(v2 - 8) + 16))(a2, a1);
  }

  else
  {
    v18 = *a1;

    *a2 = v18;
  }

  swift_storeEnumTagMultiPayload();
  v15 = type metadata accessor for SharedNameRowView(0);
  v9 = (a2 + v15[5]);
  v8 = (a1 + v15[5]);
  v7 = *v8;

  *v9 = v7;
  v10 = v8[1];

  v9[1] = v10;
  v11 = a2 + v15[6];
  v3 = a1 + v15[6];
  *v11 = *v3;
  v12 = *(v3 + 1);

  *(v11 + 1) = v12;
  v13 = v15[7];
  v14 = *(a1 + v13);
  MEMORY[0x1E69E5928](v14, v4);
  *(a2 + v13) = v14;
  v16 = (a2 + v15[8]);
  v5 = (a1 + v15[8]);
  *v16 = *v5;
  v17 = v5[1];
  sub_1C5594CF4();
  result = a2;
  v16[1] = v17;
  return result;
}

__n128 sub_1C54B3B90(char *a1, char *a2)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15CEF8, &qword_1C55B11E0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v2 = sub_1C5594BE4();
    (*(*(v2 - 8) + 32))(a2, a1);
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    memcpy(a2, a1, *(*(v7 - 8) + 64));
  }

  v3 = type metadata accessor for SharedNameRowView(0);
  *&a2[v3[5]] = *&a1[v3[5]];
  *&a2[v3[6]] = *&a1[v3[6]];
  *&a2[v3[7]] = *&a1[v3[7]];
  result = *&a1[v3[8]];
  *&a2[v3[8]] = result;
  return result;
}

uint64_t sub_1C54B3CB4()
{
  type metadata accessor for SharedNameRowView(0);

  return sub_1C54B3968();
}

uint64_t sub_1C54B3D18@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  memset(__b, 0, sizeof(__b));
  v11 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15CF70, &qword_1C55B1260);
  sub_1C5482408();
  sub_1C5412C88();
  sub_1C5596024();
  memcpy(__dst, v9, sizeof(__dst));
  memcpy(v8, __dst, sizeof(v8));
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15CF58, &qword_1C55B1250);
  sub_1C5481D70();
  sub_1C540EFD8(v8, v5, __b);
  sub_1C5481EA0(v8);
  memcpy(v13, __b, sizeof(v13));
  sub_1C54B6F10(v13, v7);
  memcpy(v6, v13, sizeof(v6));
  sub_1C540EFD8(v6, v5, a2);
  sub_1C5481EA0(v6);
  return sub_1C5481EA0(__b);
}

uint64_t sub_1C54B3EA4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v77 = a2;
  v48 = a1;
  v40 = "Navigation view title that shows the shared name options. User can select to either share full name or custom name.";
  v125 = 0;
  v82 = v124;
  memset(v124, 0, sizeof(v124));
  v46 = &v112;
  v112 = 0;
  v113 = 0;
  v81 = v109;
  memset(v109, 0, sizeof(v109));
  v61 = 0;
  v58 = sub_1C55953B4();
  v56 = *(v58 - 8);
  v57 = v58 - 8;
  v37 = (*(v56 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v48, v2, v3, v4);
  v60 = &v36 - v37;
  v38 = (v5 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v6, &v36 - v37, v7, v8);
  v55 = &v36 - v38;
  v39 = (v9 + 15) & 0xFFFFFFFFFFFFFFF0;
  v13 = MEMORY[0x1EEE9AC00](v10, &v36 - v38, v11, v12);
  v59 = &v36 - v39;
  v125 = v14;
  v70 = 1;
  sub_1C55965F4("Shared Name", 11, 1, v13);
  v44 = sub_1C55953C4();
  v41 = v15;
  v42 = v16;
  v43 = v17;
  sub_1C5439370();
  sub_1C5576C44();
  v121 = v40;
  v122 = 115;
  v123 = 2;
  v117 = sub_1C55959E4();
  v118 = v18;
  v119 = v19;
  v120 = v20;
  v45 = v114;
  v114[0] = v117;
  v114[1] = v18;
  v115 = v19 & 1 & v70;
  v116 = v20;
  v74 = MEMORY[0x1E6981148];
  v76 = MEMORY[0x1E6981138];
  sub_1C540EFD8(v114, MEMORY[0x1E6981148], v82);
  sub_1C5414260(v45);
  v110 = sub_1C5596044();
  v111 = v21 & 1 & v70;
  v73 = MEMORY[0x1E6981840];
  v75 = MEMORY[0x1E6981838];
  sub_1C540EFD8(&v110, MEMORY[0x1E6981840], v46);
  sub_1C55953A4();
  v53 = "";
  sub_1C55965F4("", v61, v70 & 1);
  v47 = v22;
  sub_1C5595394();

  v23 = sub_1C54B2520();
  v50 = v23;
  v24 = type metadata accessor for SharedNameRowView(v61);
  v49 = *(v48 + *(v24 + 28));
  v26 = MEMORY[0x1E69E5928](v49, v25);
  v51 = (*(*v23 + 584))(v49, v26);
  v52 = v27;
  MEMORY[0x1E69E5920](v49);

  sub_1C5595384();

  sub_1C55965F4(v53, v61, v70 & 1);
  v54 = v28;
  sub_1C5595394();

  (*(v56 + 16))(v55, v59, v58);
  (*(v56 + 32))(v60, v55, v58);
  (*(v56 + 8))(v59, v58);
  sub_1C55953D4();
  v105 = 0;
  v106 = 0;
  v107 = 0;
  v108 = v70 & 1;
  v101 = sub_1C55959E4();
  v102 = v29;
  v103 = v30;
  v104 = v31;
  v63 = v101;
  v64 = v29;
  v65 = v30;
  v66 = v31;
  v62 = sub_1C5595E64();
  v97 = v63;
  v98 = v64;
  v99 = v65 & 1 & v70;
  v100 = v66;
  v93 = sub_1C5595984();
  v94 = v32;
  v95 = v33;
  v96 = v34;
  v67 = v93;
  v68 = v32;
  v69 = v33;
  v71 = v34;

  sub_1C5412EA0(v63, v64, v65 & 1);

  v72 = v90;
  v90[0] = v67;
  v90[1] = v68;
  v91 = v69 & 1 & v70;
  v92 = v71;
  sub_1C540EFD8(v90, v74, v81);
  sub_1C5414260(v72);
  v80 = v88;
  sub_1C54142A8(v82, v88);
  v78 = v89;
  v89[0] = v80;
  v86 = v112;
  v87 = v113;
  v89[1] = &v86;
  v79 = v85;
  sub_1C54142A8(v81, v85);
  v89[2] = v79;
  v84[0] = v74;
  v84[1] = v73;
  v84[2] = v74;
  v83[0] = v76;
  v83[1] = v75;
  v83[2] = v76;
  sub_1C540F5A0(v78, 3uLL, v84, v83, v77);
  sub_1C5414260(v79);
  sub_1C5414260(v80);
  sub_1C5414260(v81);
  return sub_1C5414260(v82);
}

unint64_t sub_1C54B4544()
{
  v2 = qword_1EC15D5C0;
  if (!qword_1EC15D5C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15D5A0, &qword_1C55B2720);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15D5C0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C54B45CC()
{
  v2 = qword_1EC15D5C8;
  if (!qword_1EC15D5C8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15D5C8);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1C54B4648(uint64_t *a1)
{
  v20 = a1;
  v24 = MEMORY[0x1E69E85E0];
  v29 = &unk_1C55B2B58;
  v31 = 0;
  v27 = 0;
  v1 = type metadata accessor for SharedNameRowView(0);
  v17 = *(v1 - 8);
  v21 = v17;
  v22 = *(v17 + 64);
  v18 = (v22 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v1, v2, v3, v4);
  v26 = &v16 - v18;
  v19 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15E860, &qword_1C55AE2A0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v27, v5, v6, v7);
  v28 = &v16 - v19;
  v31 = v8;
  v9 = sub_1C5596814();
  (*(*(v9 - 8) + 56))(v28, 1);
  sub_1C54B39A8(v20, v26);
  sub_1C55967E4();
  v23 = sub_1C55967D4();
  v25 = (*(v21 + 80) + 32) & ~*(v21 + 80);
  v10 = swift_allocObject();
  v11 = v24;
  v12 = v25;
  v13 = v10;
  v14 = v26;
  v30 = v13;
  *(v13 + 16) = v23;
  *(v13 + 24) = v11;
  sub_1C54B3B90(v14, (v13 + v12));
  sub_1C54061EC(v27, v27, v28, v29, v30, MEMORY[0x1E69E7CA8] + 8);
}

uint64_t sub_1C54B4874()
{
  v1 = *(type metadata accessor for SharedNameRowView(0) - 8);
  v2 = (v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80)));

  return sub_1C54B4648(v2);
}

uint64_t sub_1C54B48D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a4;
  v4[2] = v4;
  v4[3] = 0;
  v4[3] = a4;
  sub_1C55967E4();
  v4[5] = sub_1C55967D4();
  v4[6] = sub_1C55967A4();
  v4[7] = v5;

  return MEMORY[0x1EEE6DFA0](sub_1C54B4994);
}

uint64_t sub_1C54B4994()
{
  v5 = v0[4];
  v0[2] = v0;
  v1 = sub_1C54B2520();
  v0[8] = v1;
  v8 = *(v5 + *(type metadata accessor for SharedNameRowView(0) + 28));
  v0[9] = v8;
  MEMORY[0x1E69E5928](v8, v2);
  v7 = (*(*v1 + 560) + **(*v1 + 560));
  v3 = swift_task_alloc();
  *(v6 + 80) = v3;
  *v3 = *(v6 + 16);
  v3[1] = sub_1C54B4B10;

  return v7(v8);
}

uint64_t sub_1C54B4B10()
{
  v2 = *(*v0 + 72);
  *(*v0 + 16) = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1C545F50C);
}

uint64_t sub_1C54B4C90@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v20 = a2;
  v12 = a1;
  v17 = sub_1C54B6D6C;
  v30 = 0;
  v29 = 0;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15D5D0, &qword_1C55B2748);
  v18 = *(v24 - 8);
  v19 = v24 - 8;
  v13 = (*(v18 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v12, v2, v3, v4);
  v22 = &v11 - v13;
  v14 = (v5 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v6, &v11 - v13, v7, v8);
  v23 = &v11 - v14;
  v30 = &v11 - v14;
  v29 = v9;
  v15 = &v27;
  v28 = v9;
  v16 = type metadata accessor for SharedNameView(0);
  sub_1C54B6D74();
  sub_1C5595174();
  v21 = sub_1C54B5014();
  sub_1C540EFD8(v22, v24, v23);
  v26 = *(v18 + 8);
  v25 = v18 + 8;
  v26(v22, v24);
  (*(v18 + 16))(v22, v23, v24);
  sub_1C540EFD8(v22, v24, v20);
  v26(v22, v24);
  return (v26)(v23, v24);
}

uint64_t sub_1C54B4E8C@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for SharedNameRowView(0);
  v3 = v1 + ((*(*(v2 - 8) + 80) + 16) & ~*(*(v2 - 8) + 80));

  return sub_1C54B4C90(v3, a1);
}

unint64_t sub_1C54B4F00()
{
  v2 = qword_1EC15D5D8;
  if (!qword_1EC15D5D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15D5B0, &qword_1C55B2730);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15D5A0, &qword_1C55B2720);
    sub_1C54B4544();
    sub_1C54B45CC();
    swift_getOpaqueTypeConformance2();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15D5D8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C54B5014()
{
  v2 = qword_1EC15D5E0;
  if (!qword_1EC15D5E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15D5D0, &qword_1C55B2748);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15D5E0);
    return WitnessTable;
  }

  return v2;
}

void *sub_1C54B509C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v20 = a2;
  v17 = a1;
  v26 = 0;
  v25 = 0;
  v16 = 0;
  v21 = type metadata accessor for SharedNameView(0);
  v14 = (*(*(v21 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v21, v3, v4, v5);
  v23 = (&v13 - v14);
  v15 = (v6 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](&v13 - v14, v7, v8, v9);
  v24 = (&v13 - v15);
  v26 = &v13 - v15;
  v25 = a1;
  v19 = sub_1C54B2520();
  v10 = type metadata accessor for SharedNameRowView(v16);
  v18 = *(v17 + *(v10 + 28));
  MEMORY[0x1E69E5928](v18, v11);
  sub_1C5437344(v19, v18, v23);
  v22 = sub_1C54B6D74();
  sub_1C540EFD8(v23, v21, v24);
  sub_1C54375F0(v23);
  sub_1C5437488(v24, v23);
  sub_1C540EFD8(v23, v21, v20);
  sub_1C54375F0(v23);
  return sub_1C54375F0(v24);
}

void SharedNameRowView.init(from:)(void *a1@<X0>, void *a2@<X8>)
{
  v48 = a2;
  v70 = a1;
  v83 = 0;
  v82 = 0;
  v81 = 0;
  v59 = 0;
  v49 = sub_1C55962E4();
  v50 = *(v49 - 8);
  v51 = v49 - 8;
  v52 = (*(v50 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0, v2, v3, v4);
  v53 = v35 - v52;
  v54 = sub_1C5594994();
  v55 = *(v54 - 8);
  v56 = v54 - 8;
  v57 = (*(v55 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v54, v5, v6, v7);
  v58 = v35 - v57;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15D5E8, &qword_1C55B2750);
  v61 = *(v60 - 8);
  v62 = v60 - 8;
  v63 = (*(v61 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v59, v8, v9, v10);
  v71 = v35 - v63;
  v83 = v35 - v63;
  v66 = type metadata accessor for SharedNameRowView(v11);
  v65 = (*(*(v66 - 1) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v70, v64, v12, v13);
  v68 = (v35 - v65);
  v82 = v35 - v65;
  v81 = v14;
  swift_getKeyPath();
  sub_1C5595024();
  v69 = v66[6];
  v67 = 1;
  v15 = sub_1C5409594(0);
  v16 = v70;
  v17 = v68 + v69;
  *v17 = v15 & v67;
  *(v17 + 1) = v18;
  v73 = v16[3];
  v74 = v16[4];
  __swift_project_boxed_opaque_existential_0(v16, v73);
  sub_1C54B2F88();
  v19 = v72;
  sub_1C5596F24();
  v75 = v19;
  v76 = v19;
  if (v19)
  {
    v35[2] = v76;
    v35[0] = v76;
    __swift_destroy_boxed_opaque_existential_0(v70);
    sub_1C5480400(v68);
    sub_1C5373718(v68 + v66[6]);
  }

  else
  {
    v20 = sub_1C5596D74();
    v44 = 0;
    v45 = v20;
    v46 = v21;
    v47 = 0;
    v77 = v20;
    v78 = v21;
    if (v21)
    {
      v79 = v77;
      v80 = v78;
    }

    else
    {
      sub_1C5594984();
      v79 = sub_1C5594944();
      v80 = v22;
      (*(v55 + 8))(v58, v54);
      if (v78)
      {
        sub_1C5401ECC(&v77);
      }
    }

    v23 = v70;
    v24 = v80;
    v25 = (v68 + v66[8]);
    *v25 = v79;
    v25[1] = v24;
    v36 = v23[3];
    v35[3] = v23[4];
    __swift_project_boxed_opaque_existential_0(v23, v36);
    sub_1C5596F14();
    v37 = sub_1C55962D4();
    v41 = *(v50 + 8);
    v40 = v50 + 8;
    v41(v53, v49);
    v26 = RUIDecodingUserInfo.account.getter();
    v27 = v37;
    *(v68 + v66[7]) = v26;
    MEMORY[0x1E69E5920](v27);
    v39 = v70[3];
    v38 = v70[4];
    __swift_project_boxed_opaque_existential_0(v70, v39);
    sub_1C5596F14();
    v43 = sub_1C55962D4();
    v41(v53, v49);
    v28 = RUIDecodingUserInfo.nameAndPhotoSharingViewModel.getter();
    v42 = (v68 + v66[5]);
    v29 = sub_1C5436D54(v28);
    v30 = v42;
    v31 = v29;
    v32 = v43;
    *v42 = v31;
    v30[1] = v33;
    v34 = MEMORY[0x1E69E5920](v32);
    (*(v61 + 8))(v71, v60, v34);
    sub_1C54B39A8(v68, v48);
    __swift_destroy_boxed_opaque_existential_0(v70);
    sub_1C54B5864(v68);
  }
}

void *sub_1C54B5864(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15CEF8, &qword_1C55B11E0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v1 = sub_1C5594BE4();
    (*(*(v1 - 8) + 8))(a1);
  }

  else
  {
  }

  v3 = type metadata accessor for SharedNameRowView(0);

  MEMORY[0x1E69E5920](*(a1 + *(v3 + 28)));

  return a1;
}

void *SharedNameRowView.init(account:viewModel:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v31 = a3;
  v33 = a1;
  v32 = a2;
  v37 = 0;
  v36 = 0;
  v35 = 0;
  v28 = 0;
  v29 = type metadata accessor for SharedNameRowView(0);
  v25 = (*(*(v29 - 1) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v33, v24, v3, v4);
  v34 = (&v24 - v25);
  v37 = &v24 - v25;
  v36 = v5;
  v35 = v6;
  swift_getKeyPath();
  sub_1C5595024();
  v26 = v29[6];
  v27 = 1;
  v7 = sub_1C5409594(0);
  v8 = v27;
  v10 = v9;
  v11 = v28;
  v12 = v34 + v26;
  *v12 = v7 & v27;
  *(v12 + 1) = v10;
  v13 = sub_1C55965F4("", v11, v8 & 1);
  v14 = v33;
  v15 = (v34 + v29[8]);
  *v15 = v13;
  v15[1] = v16;
  MEMORY[0x1E69E5928](v14, v16);
  *(v34 + v29[7]) = v33;

  v30 = v29[5];
  v17 = sub_1C5436D54(v32);
  v18 = v34;
  v20 = v19;
  v21 = v31;
  v22 = (v34 + v30);
  *v22 = v17;
  v22[1] = v20;
  sub_1C54B39A8(v18, v21);

  MEMORY[0x1E69E5920](v33);
  return sub_1C54B5864(v34);
}

uint64_t sub_1C54B5BA0@<X0>(uint64_t *a1@<X8>)
{
  result = SharedNameRowView.id.getter();
  *a1 = result;
  a1[1] = v2;
  return result;
}

uint64_t sub_1C54B5BD0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v37 = a2;
  v20 = a1;
  v23 = sub_1C54B6544;
  v45 = 0;
  v44 = 0;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15D5F0, &qword_1C55B2758);
  v18 = (*(*(v29 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v29, v2, v3, v4);
  v31 = &v17 - v18;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15D5F8, &qword_1C55B2760);
  v19 = (*(*(v32 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v32, v5, v6, v7);
  v36 = &v17 - v19;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15D600, &qword_1C55B2768);
  v21 = (*(*(v38 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v20, v8, v9, v10);
  v40 = &v17 - v21;
  v22 = (v11 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v12, &v17 - v21, v13, v14);
  v41 = &v17 - v22;
  v45 = &v17 - v22;
  v44 = v15;
  v24 = &v42;
  v43 = v15;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15D608, &qword_1C55B2770);
  v26 = sub_1C54B654C();
  sub_1C5412C88();
  v27 = 0;
  v28 = 1;
  sub_1C5596024();
  v30 = sub_1C55957A4();
  sub_1C54B65D4();
  sub_1C5595D84();
  sub_1C5367538(v31);
  sub_1C5596244();
  v34 = sub_1C54B665C();
  v35 = sub_1C543F8AC();
  v33 = MEMORY[0x1E6981EF8];
  sub_1C543AE1C();
  sub_1C5595B24();
  sub_1C5367538(v36);
  v39 = sub_1C54B6700();
  sub_1C540EFD8(v40, v38, v41);
  sub_1C5367538(v40);
  sub_1C5367624(v41, v40);
  sub_1C540EFD8(v40, v38, v37);
  sub_1C5367538(v40);
  return sub_1C5367538(v41);
}

uint64_t sub_1C54B5ED8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v60 = a2;
  v49 = MEMORY[0x1E6981198];
  v76 = 0;
  v75 = 0;
  v74 = 0;
  v34 = 0;
  v43 = sub_1C5595F34();
  v40 = *(v43 - 8);
  v41 = v43 - 8;
  v31 = (*(v40 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v43, v3, v4, v5);
  v42 = &v30 - v31;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15CE20, &unk_1C55B1820);
  v32 = (*(*(v47 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v47, v6, v7, v8);
  v46 = (&v30 - v32);
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15D008, &unk_1C55B12D0);
  v51 = *(v54 - 8);
  v52 = v54 - 8;
  v33 = (*(v51 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v54, v9, v10, v11);
  v53 = &v30 - v33;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15D020, &qword_1C55B12E0);
  v35 = (*(*(v57 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v34, v12, v13, v14);
  v62 = &v30 - v35;
  v36 = (v15 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v16, &v30 - v35, v17, v18);
  v64 = &v30 - v36;
  v76 = &v30 - v36;
  v65 = sub_1C5595654();
  v55 = *(v65 - 8);
  v56 = v65 - 8;
  v38 = *(v55 + 64);
  v37 = (v38 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v65, v19, v20, v21);
  v63 = &v30 - v37;
  v39 = (v38 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v22, v23, v24, v25);
  v68 = &v30 - v39;
  v75 = &v30 - v39;
  v74 = a1;
  sub_1C5595664();
  v58 = sub_1C5489378();
  sub_1C540EFD8(v63, v65, v68);
  v67 = *(v55 + 8);
  v66 = v55 + 8;
  v67(v63, v65);
  sub_1C55965F4("chevron.forward", 15, 1);
  v26 = sub_1C5595EF4();
  v44 = &v73;
  v73 = v26;
  (*(v40 + 104))(v42, *MEMORY[0x1E69816C8], v43);
  sub_1C5595AA4();
  (*(v40 + 8))(v42, v43);
  sub_1C5410D10(v44);
  sub_1C5595864();
  v45 = v27;
  v48 = sub_1C547EEF0();
  sub_1C5595A94();
  sub_1C547EF94(v46);
  v28 = sub_1C5485DB0();
  v50 = &v72;
  v72 = v28;
  v71[2] = v47;
  v71[3] = v48;
  swift_getOpaqueTypeConformance2();
  sub_1C5595BA4();
  (*(v51 + 8))(v53, v54);
  v59 = sub_1C54893F8();
  sub_1C540EFD8(v62, v57, v64);
  sub_1C5362FB4(v62);
  (*(v55 + 16))(v63, v68, v65);
  v61 = v71;
  v71[0] = v63;
  sub_1C536301C(v64, v62);
  v71[1] = v62;
  v70[0] = v65;
  v70[1] = v57;
  v69[0] = v58;
  v69[1] = v59;
  sub_1C540F5A0(v61, 2uLL, v70, v69, v60);
  sub_1C5362FB4(v62);
  v67(v63, v65);
  sub_1C5362FB4(v64);
  return (v67)(v68, v65);
}

unint64_t sub_1C54B654C()
{
  v2 = qword_1EC15D610;
  if (!qword_1EC15D610)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15D608, &qword_1C55B2770);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15D610);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C54B65D4()
{
  v2 = qword_1EC15D618;
  if (!qword_1EC15D618)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15D5F0, &qword_1C55B2758);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15D618);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C54B665C()
{
  v2 = qword_1EC15D630;
  if (!qword_1EC15D630)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15D5F8, &qword_1C55B2760);
    sub_1C54B65D4();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15D630);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C54B6700()
{
  v2 = qword_1EC15D638;
  if (!qword_1EC15D638)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15D600, &qword_1C55B2768);
    sub_1C54B665C();
    sub_1C543093C();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15D638);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C54B67D8()
{
  v2 = qword_1EC15D640;
  if (!qword_1EC15D640)
  {
    type metadata accessor for SharedNameRowView(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15D640);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C54B6870()
{
  v2 = qword_1EC15D648;
  if (!qword_1EC15D648)
  {
    type metadata accessor for SharedNameRowView(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15D648);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C54B6908()
{
  v2 = qword_1EC15D650;
  if (!qword_1EC15D650)
  {
    type metadata accessor for SharedNameRowView(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15D650);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C54B6A40(uint64_t a1)
{
  v6 = sub_1C5488DC4(319);
  if (v1 <= 0x3F)
  {
    v6 = sub_1C543D9C0(319);
    if (v2 <= 0x3F)
    {
      v6 = sub_1C5433F94(319);
      if (v3 <= 0x3F)
      {
        v6 = sub_1C543D95C();
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
          return 0;
        }
      }
    }
  }

  return v6;
}

unint64_t sub_1C54B6BC8()
{
  v2 = qword_1EC1641B0[0];
  if (!qword_1EC1641B0[0])
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, qword_1EC1641B0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C54B6C5C()
{
  v2 = qword_1EC1642C0;
  if (!qword_1EC1642C0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC1642C0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C54B6CF0()
{
  v2 = qword_1EC1642C8[0];
  if (!qword_1EC1642C8[0])
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, qword_1EC1642C8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C54B6D74()
{
  v2 = qword_1EC15D658;
  if (!qword_1EC15D658)
  {
    type metadata accessor for SharedNameView(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15D658);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1C54B6DF4(uint64_t a1)
{
  v6 = v2;
  *(v2 + 16) = v2;
  v3 = *(type metadata accessor for SharedNameRowView(0) - 8);
  v9 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v7 = *(v1 + 16);
  v8 = *(v1 + 24);
  v4 = swift_task_alloc();
  *(v6 + 24) = v4;
  *v4 = *(v6 + 16);
  v4[1] = sub_1C5405B1C;

  return sub_1C54B48D8(a1, v7, v8, v1 + v9);
}

uint64_t sub_1C54B6F10(uint64_t a1, uint64_t a2)
{
  *a2 = *a1;
  *(a2 + 16) = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  sub_1C54130AC(v3, v4, v5 & 1);
  *(a2 + 24) = v3;
  *(a2 + 32) = v4;
  *(a2 + 40) = v5 & 1;
  v6 = *(a1 + 48);
  sub_1C5594CF4();
  *(a2 + 48) = v6;
  *(a2 + 56) = *(a1 + 56);
  *(a2 + 64) = *(a1 + 64);
  v7 = *(a1 + 72);
  v8 = *(a1 + 80);
  v9 = *(a1 + 88);
  sub_1C54130AC(v7, v8, v9 & 1);
  *(a2 + 72) = v7;
  *(a2 + 80) = v8;
  *(a2 + 88) = v9 & 1;
  v12 = *(a1 + 96);
  sub_1C5594CF4();
  result = a2;
  *(a2 + 96) = v12;
  return result;
}

uint64_t sub_1C54B70A0()
{
  sub_1C55965F4("Add Recovery Contact", 20, 1);
  sub_1C55953C4();
  return sub_1C55959E4();
}

uint64_t sub_1C54B7184()
{
  sub_1C55965F4("Your Recovery Contact can help you gain access to your account.", 63, 1);
  sub_1C55953C4();
  return sub_1C55959E4();
}

uint64_t sub_1C54B7240()
{
  sub_1C55965F4("recovery_contact_shield_icon", 28, 1);
  sub_1C5439370();
  type metadata accessor for ReviewCustodianListViewFactory();
  sub_1C54B72C4();
  return sub_1C5595F54();
}

id sub_1C54B72C4()
{
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v0 = [swift_getObjCClassFromMetadata() bundleForClass_];

  return v0;
}

uint64_t sub_1C54B731C(uint64_t a1, uint64_t a2)
{
  v14 = 0;
  v15 = 0;
  v13 = 0;
  v12[0] = 0;
  v16 = a1;
  v17 = a2;
  v4 = sub_1C55965F4("Add Recovery Contact", 20, 1);
  v10 = v2;
  v14 = v4;
  v15 = v2;
  sub_1C5594DA4();
  sub_1C5596E04();
  sub_1C5594CF4();
  v12[1] = v4;
  v12[2] = v10;
  sub_1C5594CF4();
  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  *(v7 + 24) = a2;
  sub_1C54141E8();
  sub_1C5594D94();
  sub_1C540FCD8();
  v8 = sub_1C5594CF4();

  sub_1C5594CF4();
  v13 = v8;
  v9 = sub_1C5594CF4();

  sub_1C5594CF4();
  v12[0] = v9;
  v11 = sub_1C5594D14();

  sub_1C541439C(v12);
  sub_1C541439C(&v13);

  return v11;
}

void sub_1C54B74F4(uint64_t a1, uint64_t a2)
{
  v17 = a2;
  v18 = a1;
  v20 = 0;
  v25 = a1;
  v26 = a2;
  sub_1C54BA2F4();
  v2 = sub_1C55965F4("com.apple.appleaccount", 22, 1);
  v19 = sub_1C54B77D0(v2, v3);
  if (v19)
  {
    v16 = v19;
    v15 = v19;
    v20 = v19;
    v11 = 1;
    v14 = sub_1C5596784();
    sub_1C55965F4("RecoveryContactUpsellTipAction", 30, 1);
    v12 = v4;
    v13 = sub_1C5596554();

    [v19 setValue:v14 forKey:v13];

    swift_unknownObjectRelease();
  }

  v8 = [objc_opt_self() defaultCenter];
  sub_1C5594CF4();
  sub_1C5594CF4();
  v10 = sub_1C5596554();
  v9 = v10;
  v5 = v10;

  v21 = 0;
  v22 = 0;
  v23 = 0;
  v24 = 0;
  v7 = 0;
  [v8 postNotificationName:v10 object:{0, v6}];
  swift_unknownObjectRelease();
}

uint64_t sub_1C54B7818()
{
  v4 = 0;
  v5 = 0;
  v3 = sub_1C55965F4("AAUIPresentCustodianSetupNotification", 37, 1);
  v2 = v0;
  sub_1C5594CF4();
  v4 = v3;
  v5 = v2;
  sub_1C5401ECC(&v4);
  return v3;
}

uint64_t sub_1C54B79B0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1C54B7058(*v1, v1[1]);
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1C54B79E8()
{
  sub_1C55965F4("AAUIRecoveryContactUpsellTipDismissed", 37, 1);
  sub_1C5594CF4();
  v2 = sub_1C5596554();
  MEMORY[0x1E69E5928](v2, v0);

  MEMORY[0x1E69E5920](v2);
  return v2;
}

uint64_t sub_1C54B7A70(uint64_t a1, uint64_t a2)
{
  v4 = *v2;
  MEMORY[0x1E69E5928](*v2, a2);
  return v4;
}

uint64_t sub_1C54B7AC4()
{
  v2 = *(v0 + 8);
  sub_1C5594CF4();
  return v2;
}

uint64_t sub_1C54B7B04(uint64_t a1, uint64_t a2)
{
  sub_1C5594CF4();
  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
}

uint64_t RecoveryContactUpsellTipView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v43 = a1;
  v44 = MEMORY[0x1E6982BB0];
  v45 = &unk_1C55B2BB8;
  v46 = "Fatal error";
  v47 = "Unexpectedly found nil while implicitly unwrapping an Optional value";
  v48 = "AppleAccountUI/RecoveryContactUpsellTip.swift";
  v94 = 0;
  v91 = 0;
  v92 = 0;
  v93 = 0;
  v76 = 0;
  v49 = sub_1C5596814();
  v50 = *(v49 - 8);
  v51 = v49 - 8;
  v52 = (*(v50 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v49, v1, v2, v3);
  v53 = &v33 - v52;
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15D660, &unk_1C55B2B80);
  v80 = *(v83 - 8);
  v81 = v83 - 8;
  v54 = (*(v80 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v83, v4, v5, v6);
  v82 = &v33 - v54;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15D668, &qword_1C55B34D0);
  v56 = (*(*(v55 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v55, v7, v8, v9);
  v78 = &v33 - v56;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15D670, &qword_1C55B2B90);
  v58 = *(v57 - 8);
  v59 = v57 - 8;
  v60 = (*(v58 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v57, v10, v11, v12);
  v61 = &v33 - v60;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15D678, &qword_1C55B2B98);
  v63 = (*(*(v62 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v62, v13, v14, v15);
  v64 = &v33 - v63;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15D680, &unk_1C55B2BA0);
  v66 = (*(*(v65 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v65, v16, v17, v18);
  v67 = &v33 - v66;
  v68 = (v19 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](&v33 - v66, v20, v21, v22);
  v69 = &v33 - v68;
  v70 = (v23 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](&v33 - v68, v24, v25, v26);
  v72 = &v33 - v70;
  v94 = &v33 - v70;
  v73 = *v71;
  v74 = v71[1];
  v75 = v71[2];
  v91 = v73;
  v92 = v74;
  v93 = v75;
  sub_1C5594CF4();
  v77 = v90;
  v90[3] = &unk_1F447A280;
  v90[4] = sub_1C54B8390();
  v90[0] = v74;
  v90[1] = v75;
  sub_1C54B840C();
  sub_1C5594CD4();
  v79 = sub_1C5595EB4();
  sub_1C54B8428();
  sub_1C5595CF4();

  (*(v80 + 8))(v82, v83);
  v84 = [objc_opt_self() tableCellGroupedBackgroundColor];
  if (v84)
  {
    v42 = v84;
  }

  else
  {
    sub_1C5596C94();
    __break(1u);
  }

  v27 = sub_1C5595E44();
  v34 = &v89;
  v89 = v27;
  v36 = sub_1C54B84B0();
  v35 = MEMORY[0x1E69815C0];
  v37 = MEMORY[0x1E6981568];
  sub_1C5595A44();
  sub_1C5410D10(v34);
  sub_1C54B8558(v78);
  v38 = sub_1C55957D4();
  v85 = v55;
  v86 = v35;
  v87 = v36;
  v88 = v37;
  swift_getOpaqueTypeConformance2();
  sub_1C5595D84();
  (*(v58 + 8))(v61, v57);
  MEMORY[0x1E69E5928](v73, v28);
  sub_1C5594CF4();
  v29 = swift_allocObject();
  v30 = v74;
  v31 = v75;
  v40 = v29;
  v29[2] = v73;
  v29[3] = v30;
  v29[4] = v31;
  v39 = sub_1C54B923C();
  sub_1C545EBE4();
  sub_1C5595CE4();
  (*(v50 + 8))(v53, v49);

  sub_1C5367DA8(v64);
  v41 = sub_1C54B9348();
  sub_1C540EFD8(v69, v65, v72);
  sub_1C5367E10(v69);
  sub_1C5367F00(v72, v67);
  sub_1C540EFD8(v67, v65, v43);
  sub_1C5367E10(v67);
  return sub_1C5367E10(v72);
}

unint64_t sub_1C54B8390()
{
  v2 = qword_1EC15D688;
  if (!qword_1EC15D688)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15D688);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C54B8428()
{
  v2 = qword_1EC15D690;
  if (!qword_1EC15D690)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15D660, &unk_1C55B2B80);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15D690);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C54B84B0()
{
  v2 = qword_1EC15D698;
  if (!qword_1EC15D698)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15D668, &qword_1C55B34D0);
    sub_1C54B8428();
    sub_1C5413DB0();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15D698);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1C54B8558(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15D660, &unk_1C55B2B80);
  (*(*(v1 - 8) + 8))(a1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15D668, &qword_1C55B34D0);

  return a1;
}

uint64_t sub_1C54B85FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[15] = a3;
  v3[14] = a2;
  v3[13] = a1;
  v3[11] = v3;
  v3[6] = 0;
  v3[7] = 0;
  v3[8] = 0;
  v3[12] = 0;
  v4 = sub_1C5594DC4();
  v3[16] = v4;
  v3[17] = *(v4 - 8);
  v3[18] = swift_task_alloc();
  v3[19] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15D6E8, &qword_1C55B2F40);
  v3[20] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15D6F0, &qword_1C55B2F48);
  v3[21] = v5;
  v3[22] = *(v5 - 8);
  v3[23] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15D6F8, &qword_1C55B2F50);
  v3[24] = v6;
  v3[25] = *(v6 - 8);
  v3[26] = swift_task_alloc();
  v3[6] = a1;
  v3[7] = a2;
  v3[8] = a3;
  v3[27] = sub_1C55967E4();
  v3[28] = sub_1C55967D4();
  v3[29] = sub_1C55967A4();
  v3[30] = v7;

  return MEMORY[0x1EEE6DFA0](sub_1C54B88A4);
}

uint64_t sub_1C54B88A4()
{
  v12 = MEMORY[0x1E69E85E0];
  v8 = v0[23];
  v7 = v0[22];
  v9 = v0[21];
  v6 = v0[15];
  v5 = v0[14];
  v0[11] = v0;
  sub_1C5594CF4();
  v0[9] = v5;
  v0[10] = v6;
  sub_1C54B8390();
  sub_1C5594C84();

  sub_1C5596824();
  (*(v7 + 8))(v8, v9);
  v11 = sub_1C55967D4();
  v0[31] = v11;
  v1 = swift_task_alloc();
  v10[32] = v1;
  *v1 = v10[11];
  v1[1] = sub_1C54B8A1C;
  v2 = v10[24];
  v3 = v10[20];

  return MEMORY[0x1EEE6D9C8](v3, v11, v12, v2);
}

uint64_t sub_1C54B8A1C()
{
  *(*v0 + 88) = *v0;

  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6DFA0](sub_1C54B8B7C);
}

uint64_t sub_1C54B8B7C()
{
  v31 = MEMORY[0x1E69E85E0];
  v1 = v0[20];
  v2 = v0[17];
  v3 = v0[16];
  v0[11] = v0;
  if ((*(v2 + 48))(v1, 1, v3) == 1)
  {
    (*(v30[25] + 8))();

    v4 = *(v30[11] + 8);

    return v4();
  }

  else
  {
    v27 = v30[18];
    v26 = v30[16];
    v25 = v30[17];
    (*(v25 + 32))();
    v24 = *MEMORY[0x1E6982AF8];
    v6 = sub_1C5594D54();
    (*(*(v6 - 8) + 104))(v27, v24);
    (*(v25 + 104))(v27, *MEMORY[0x1E6982B68], v26);
    v29 = sub_1C5594DB4();
    v28 = *(v25 + 8);
    v28(v27, v26);
    if (v29)
    {
      sub_1C54BA2F4();
      v8 = sub_1C55965F4("com.apple.appleaccount", 22, 1);
      v23 = sub_1C54B77D0(v8, v9);
      if (v23)
      {
        v30[12] = v23;
        v22 = sub_1C5596784();
        sub_1C55965F4("RecoveryContactUpsellTipAction", 30, 1);
        v21 = sub_1C5596554();

        [v23 setValue:v22 forKey:v21];
        MEMORY[0x1E69E5920](v21);
        swift_unknownObjectRelease();
        MEMORY[0x1E69E5920](v23);
      }

      v19 = v30[13];
      v20 = [objc_opt_self() defaultCenter];
      MEMORY[0x1E69E5928](v19, v20);
      v30[2] = 0;
      v30[3] = 0;
      v30[4] = 0;
      v30[5] = 0;
      if (v30[5])
      {
        v17 = v30[5];
        v15 = __swift_project_boxed_opaque_existential_0(v30 + 2, v17);
        v16 = *(v17 - 8);
        v18 = swift_task_alloc();
        (*(v16 + 16))(v18, v15, v17);
        sub_1C5596E14();
        (*(v16 + 8))(v18, v17);

        __swift_destroy_boxed_opaque_existential_0(v30 + 2);
      }

      v14 = v30[13];
      [v20 postNotificationName_object_];
      swift_unknownObjectRelease();
      MEMORY[0x1E69E5920](v14);
      v7 = MEMORY[0x1E69E5920](v20);
    }

    (v28)(v30[19], v30[16], v7);
    v13 = sub_1C55967D4();
    v30[31] = v13;
    v10 = swift_task_alloc();
    v30[32] = v10;
    *v10 = v30[11];
    v10[1] = sub_1C54B8A1C;
    v11 = v30[24];
    v12 = v30[20];

    return MEMORY[0x1EEE6D9C8](v12, v13, v31, v11);
  }
}

uint64_t sub_1C54B916C()
{
  v4 = v1;
  *(v1 + 16) = v1;
  v7 = v0[2];
  v5 = v0[3];
  v6 = v0[4];
  v2 = swift_task_alloc();
  *(v4 + 24) = v2;
  *v2 = *(v4 + 16);
  v2[1] = sub_1C5405B1C;

  return sub_1C54B85FC(v7, v5, v6);
}

unint64_t sub_1C54B923C()
{
  v2 = qword_1EC15D6A0;
  if (!qword_1EC15D6A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15D678, &qword_1C55B2B98);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15D668, &qword_1C55B34D0);
    sub_1C54B84B0();
    swift_getOpaqueTypeConformance2();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15D6A0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C54B9348()
{
  v2 = qword_1EC15D6A8;
  if (!qword_1EC15D6A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15D680, &unk_1C55B2BA0);
    sub_1C54B923C();
    sub_1C545EFB8();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15D6A8);
    return WitnessTable;
  }

  return v2;
}

__n128 sub_1C54B93F0@<Q0>(__n128 *a1@<X8>)
{
  sub_1C55965F4("AAUIRecoveryContactUpsellTipDismissed", 37, 1);
  sub_1C5594CF4();
  v4 = sub_1C5596554();
  MEMORY[0x1E69E5928](v4, v1);

  MEMORY[0x1E69E5920](v4);
  v6.n128_u64[0] = v4;
  v6.n128_u64[1] = sub_1C54B7818();
  result = v6;
  *a1 = v6;
  a1[1].n128_u64[0] = v3;
  return result;
}

uint64_t sub_1C54B94AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  sub_1C55965F4("AAUIRecoveryContactUpsellTipDismissed", 37, 1);
  sub_1C5594CF4();
  v5 = sub_1C5596554();
  MEMORY[0x1E69E5928](v5, v3);

  MEMORY[0x1E69E5920](v5);
  result = a1;
  *a3 = v5;
  a3[1] = a1;
  a3[2] = a2;
  return result;
}

unint64_t sub_1C54B9588()
{
  v2 = qword_1EC15D6B0;
  if (!qword_1EC15D6B0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15D6B0);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1C54B9638(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 > 0x7FFFFFFF && *(a1 + 16))
    {
      v4 = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v3 = -1;
      if (*(a1 + 8) < 0x100000000uLL)
      {
        v3 = *(a1 + 8);
      }

      v4 = v3;
    }
  }

  else
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_1C54B977C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFF)
  {
    *result = a2 + 0x80000000;
    if (a3 > 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 - 1;
    }
  }

  return result;
}

uint64_t sub_1C54B9960(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 24))
    {
      v4 = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v3 = -1;
      if (!HIDWORD(*a1))
      {
        v3 = *a1;
      }

      v4 = v3;
    }
  }

  else
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_1C54B9A78(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFF)
  {
    *result = a2 + 0x80000000;
    *(result + 8) = 0;
    *(result + 16) = 0;
    if (a3 > 0x7FFFFFFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *result = a2 - 1;
    }
  }

  return result;
}

unint64_t type metadata accessor for Name(uint64_t a1)
{
  v5 = qword_1EC15D6B8;
  if (!qword_1EC15D6B8)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_1EC15D6B8);
      return v2;
    }
  }

  return v5;
}

id sub_1C54B9CF0(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v6 = sub_1C5596554();

    v2 = [v7 initWithSuiteName_];
  }

  else
  {
    v2 = [v7 initWithSuiteName_];
  }

  v5 = v2;
  MEMORY[0x1E69E5920](v4);
  return v5;
}

uint64_t sub_1C54B9DA0(uint64_t a1)
{
  sub_1C54BA1F4();
  sub_1C545CCC8();
  return sub_1C5596D54();
}

uint64_t sub_1C54B9DDC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1C54BA1F4();
  sub_1C545CCC8();
  return sub_1C5596D24();
}

uint64_t sub_1C54B9E28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1C54BA1F4();
  sub_1C545CCC8();
  return sub_1C5596D34() & 1;
}

uint64_t sub_1C54B9E78(uint64_t a1, uint64_t a2)
{
  sub_1C54BA1F4();
  sub_1C545CCC8();
  return sub_1C5596D44();
}

uint64_t sub_1C54B9EC4(uint64_t a1)
{
  sub_1C54BA274();
  sub_1C54BA1F4();
  return sub_1C5596D04();
}

unint64_t sub_1C54B9F28()
{
  v2 = qword_1EC15D6C0;
  if (!qword_1EC15D6C0)
  {
    type metadata accessor for Name(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15D6C0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C54B9FC0()
{
  v2 = qword_1EC15D6C8;
  if (!qword_1EC15D6C8)
  {
    type metadata accessor for Name(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15D6C8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C54BA174()
{
  v2 = qword_1EC15D6D0;
  if (!qword_1EC15D6D0)
  {
    type metadata accessor for Name(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15D6D0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C54BA1F4()
{
  v2 = qword_1EC15D6D8;
  if (!qword_1EC15D6D8)
  {
    type metadata accessor for Name(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15D6D8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C54BA274()
{
  v2 = qword_1EC15D6E0;
  if (!qword_1EC15D6E0)
  {
    type metadata accessor for Name(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15D6E0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C54BA2F4()
{
  v2 = qword_1EC15D700;
  if (!qword_1EC15D700)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1EC15D700);
    return ObjCClassMetadata;
  }

  return v2;
}

uint64_t sub_1C54BA358()
{
  v2 = *(v0 + *(type metadata accessor for AnalyticsDataSharingRowElement(0) + 20));
  sub_1C5594CF4();
  return v2;
}

uint64_t type metadata accessor for AnalyticsDataSharingRowElement(uint64_t a1)
{
  v2 = qword_1EC164D50;
  if (!qword_1EC164D50)
  {
    return swift_getSingletonMetadata();
  }

  return v2;
}

uint64_t sub_1C54BA414()
{
  v2 = *(v0 + *(type metadata accessor for AnalyticsDataSharingRowElement(0) + 24));
  sub_1C5594CF4();
  return v2;
}

uint64_t sub_1C54BA45C()
{
  v2 = *(v0 + *(type metadata accessor for AnalyticsDataSharingRowElement(0) + 28));
  sub_1C5594CF4();
  return v2;
}

uint64_t sub_1C54BA4A4()
{
  v2 = *(v0 + *(type metadata accessor for AnalyticsDataSharingRowElement(0) + 32));
  sub_1C5594CF4();
  return v2;
}

uint64_t sub_1C54BA4EC()
{
  v2 = *(v0 + *(type metadata accessor for AnalyticsDataSharingRowElement(0) + 36));
  sub_1C5594CF4();
  return v2;
}

uint64_t sub_1C54BA534()
{
  v2 = *(v0 + *(type metadata accessor for AnalyticsDataSharingRowElement(0) + 40));
  sub_1C5594CF4();
  return v2;
}

uint64_t sub_1C54BA57C()
{
  v2 = *(v0 + *(type metadata accessor for AnalyticsDataSharingRowElement(0) + 44));
  sub_1C5594CF4();
  return v2;
}

uint64_t sub_1C54BA5C4()
{
  type metadata accessor for AnalyticsDataSharingRowElement(0);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BD40, &unk_1C55ADA60);
  sub_1C5595F84();

  return v1 & 1;
}

uint64_t sub_1C54BA65C(char a1)
{
  v8 = 0;
  v9 = a1 & 1;
  v2 = (v1 + *(type metadata accessor for AnalyticsDataSharingRowElement(0) + 48));
  v4 = *v2;
  v5 = *(v2 + 1);

  v6[0] = v4;
  v7 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BD40, &unk_1C55ADA60);
  sub_1C5595F94();
  sub_1C5373718(v6);
}

void (*sub_1C54BA720(void *a1))(uint64_t *a1, char a2)
{
  v1 = __swift_coroFrameAllocStub(0x48uLL, 33474);
  *a1 = v1;
  v2 = (v4 + *(type metadata accessor for AnalyticsDataSharingRowElement(0) + 48));
  v5 = *v2;
  v1[67] = *v2 & 1;
  v6 = *(v2 + 1);
  *(v1 + 6) = v6;

  *v1 = v5;
  *(v1 + 1) = v6;
  *(v1 + 7) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BD40, &unk_1C55ADA60);
  sub_1C5595F84();
  return sub_1C542E3F0;
}

uint64_t sub_1C54BA80C()
{
  type metadata accessor for AnalyticsDataSharingRowElement(0);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BD40, &unk_1C55ADA60);
  sub_1C5595FA4();

  return v1;
}

uint64_t sub_1C54BA8BC()
{
  v2 = *(v0 + *(type metadata accessor for AnalyticsDataSharingRowElement(0) + 48));

  return v2 & 1;
}

uint64_t sub_1C54BA908(char a1, uint64_t a2)
{

  v3 = v2 + *(type metadata accessor for AnalyticsDataSharingRowElement(0) + 48);
  *v3 = a1;
  *(v3 + 8) = a2;
}

uint64_t sub_1C54BA964()
{
  type metadata accessor for AnalyticsDataSharingRowElement(0);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BD40, &unk_1C55ADA60);
  sub_1C5595F84();

  return v1 & 1;
}

uint64_t sub_1C54BA9FC(char a1)
{
  v8 = 0;
  v9 = a1 & 1;
  v2 = (v1 + *(type metadata accessor for AnalyticsDataSharingRowElement(0) + 52));
  v4 = *v2;
  v5 = *(v2 + 1);

  v6[0] = v4;
  v7 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BD40, &unk_1C55ADA60);
  sub_1C5595F94();
  sub_1C5373718(v6);
}

void (*sub_1C54BAAC0(void *a1))(uint64_t *a1, char a2)
{
  v1 = __swift_coroFrameAllocStub(0x48uLL, 49897);
  *a1 = v1;
  v2 = (v4 + *(type metadata accessor for AnalyticsDataSharingRowElement(0) + 52));
  v5 = *v2;
  v1[67] = *v2 & 1;
  v6 = *(v2 + 1);
  *(v1 + 6) = v6;

  *v1 = v5;
  *(v1 + 1) = v6;
  *(v1 + 7) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BD40, &unk_1C55ADA60);
  sub_1C5595F84();
  return sub_1C542E3F0;
}

uint64_t sub_1C54BABAC()
{
  type metadata accessor for AnalyticsDataSharingRowElement(0);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BD40, &unk_1C55ADA60);
  sub_1C5595FA4();

  return v1;
}

uint64_t sub_1C54BAC5C()
{
  v2 = *(v0 + *(type metadata accessor for AnalyticsDataSharingRowElement(0) + 52));

  return v2 & 1;
}

uint64_t sub_1C54BACA8(char a1, uint64_t a2)
{

  v3 = v2 + *(type metadata accessor for AnalyticsDataSharingRowElement(0) + 52);
  *v3 = a1;
  *(v3 + 8) = a2;
}

uint64_t sub_1C54BAD04@<X0>(uint64_t a1@<X8>)
{
  v26 = a1;
  v17 = sub_1C54BBAF0;
  v34 = 0;
  v33 = 0;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15D708, &qword_1C55B2F58);
  v13 = (*(*(v23 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v23, v1, v2, v3);
  v25 = &v12 - v13;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15D710, &qword_1C55B2F60);
  v15 = *(*(v27 - 8) + 64);
  v14 = (v15 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v27, v4, v5, v6);
  v29 = &v12 - v14;
  v16 = (v15 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](&v12 - v14, v7, v8, v9);
  v30 = &v12 - v16;
  v34 = &v12 - v16;
  v33 = v10;
  v18 = &v31;
  v32 = v10;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15D718, &qword_1C55B2F68);
  v20 = sub_1C54BBAF8();
  sub_1C5412C88();
  v21 = 0;
  v22 = 1;
  sub_1C5596024();
  v24 = sub_1C54BBCA0();
  sub_1C5411148(v23, v24);
  sub_1C5595D84();
  sub_1C5368094(v25);
  v28 = sub_1C54BBD28();
  sub_1C540EFD8(v29, v27, v30);
  sub_1C5368094(v29);
  sub_1C53681A8(v30, v29);
  sub_1C540EFD8(v29, v27, v26);
  sub_1C5368094(v29);
  return sub_1C5368094(v30);
}

uint64_t sub_1C54BAF48@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v82 = a2;
  v83 = a1;
  v84 = &unk_1C55C98F8;
  v85 = &unk_1C55C98A0;
  v127 = 0;
  v126 = 0;
  v125 = 0;
  v124 = 0;
  v121 = 0;
  v116 = 0;
  v86 = sub_1C5596384();
  v87 = *(v86 - 8);
  v88 = v86 - 8;
  v89 = (*(v87 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v86, v3, v4, v5);
  v90 = &v50 - v89;
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15D750, &qword_1C55B2F88);
  v92 = *(v91 - 8);
  v93 = v91 - 8;
  v94 = (v92[8] + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v91, v6, v7, v8);
  v95 = &v50 - v94;
  v96 = (v9 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](&v50 - v94, v10, v11, v12);
  v97 = &v50 - v96;
  v98 = (v13 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](&v50 - v96, v14, v15, v16);
  v99 = &v50 - v98;
  v127 = &v50 - v98;
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15D748, &qword_1C55B2F80);
  v101 = *(v100 - 8);
  v102 = v100 - 8;
  v103 = (v101[8] + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v100, v17, v18, v19);
  v104 = &v50 - v103;
  v105 = (v20 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](&v50 - v103, v21, v22, v23);
  v106 = &v50 - v105;
  v107 = (v24 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](&v50 - v105, v25, v26, v27);
  v108 = &v50 - v107;
  v126 = &v50 - v107;
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15D718, &qword_1C55B2F68);
  v110 = (*(*(v109 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v109, v28, v29, v30);
  v111 = &v50 - v110;
  v112 = (v31 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](&v50 - v110, v32, v33, v34);
  v113 = &v50 - v112;
  v125 = &v50 - v112;
  v124 = a1;
  if (sub_1C54BA964())
  {
    v35 = v83;
    v77 = type metadata accessor for AnalyticsDataSharingRowElement(0);
    v36 = (v35 + *(v77 + 24));
    v74 = *v36;
    v76 = v36[1];
    sub_1C5594CF4();
    v37 = (v35 + *(v77 + 32));
    v73 = *v37;
    v75 = v37[1];
    sub_1C5594CF4();
    v78 = sub_1C54BBC20();
    sub_1C5450D48(v74, v76, v73, v75, v77, v106);

    v117 = v77;
    v118 = v78;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    sub_1C540EFD8(v106, v100, v108);
    v80 = v101[1];
    v81 = v101 + 1;
    v80(v106, v100);
    v116 = v106;
    v72 = v101[2];
    v71 = v101 + 2;
    v72(v104, v108, v100);
    sub_1C540EFD8(v104, v100, v106);
    v80(v104, v100);
    v72(v104, v106, v100);
    v114 = v77;
    v115 = v78;
    v38 = swift_getOpaqueTypeConformance2();
    sub_1C540FD1C(v104, v100, v91, OpaqueTypeConformance2, v38, v111);
    v80(v104, v100);
    sub_1C5368580(v111, v113);
    v80(v106, v100);
    v80(v108, v100);
  }

  else
  {
    v39 = v83;
    v66 = type metadata accessor for AnalyticsDataSharingRowElement(0);
    v40 = (v39 + v66[6]);
    v57 = *v40;
    v65 = v40[1];
    sub_1C5594CF4();
    v41 = (v39 + v66[7]);
    v54 = *v41;
    v64 = v41[1];
    sub_1C5594CF4();
    v42 = (v39 + v66[9]);
    v55 = *v42;
    v63 = v42[1];
    sub_1C5594CF4();
    v43 = (v39 + v66[10]);
    v56 = *v43;
    v62 = v43[1];
    sub_1C5594CF4();
    v44 = (v39 + v66[11]);
    v53 = *v44;
    v61 = v44[1];
    sub_1C5594CF4();
    (*(v87 + 16))(v90, v39, v86);
    v59 = sub_1C54BA80C();
    v60 = v45;
    v52 = v46;
    v67 = sub_1C54BBC20();
    v58 = v49;
    v49[7] = v67;
    sub_1C5452AB8(v57, v65, v54, v64, v55, v63, v56, v62, v97, v53, v61, v90, v59, v60, v52 & 1, v66);

    (*(v87 + 8))(v90, v86);

    v122 = v66;
    v123 = v67;
    v68 = swift_getOpaqueTypeConformance2();
    sub_1C540EFD8(v97, v91, v99);
    v69 = v92[1];
    v70 = v92 + 1;
    v69(v97, v91);
    v121 = v97;
    v51 = v92[2];
    v50 = v92 + 2;
    v51(v95, v99, v91);
    sub_1C540EFD8(v95, v91, v97);
    v69(v95, v91);
    v51(v95, v97, v91);
    v119 = v66;
    v120 = v67;
    v47 = swift_getOpaqueTypeConformance2();
    sub_1C54108A0(v95, v100, v91, v47, v68, v111);
    v69(v95, v91);
    sub_1C5368580(v111, v113);
    v69(v97, v91);
    v69(v99, v91);
  }

  sub_1C5368690(v113, v111);
  sub_1C54BBAF8();
  sub_1C540EFD8(v111, v109, v82);
  sub_1C53687A0(v111);
  return sub_1C53687A0(v113);
}

unint64_t sub_1C54BBAF8()
{
  v2 = qword_1EC15D720;
  if (!qword_1EC15D720)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15D718, &qword_1C55B2F68);
    type metadata accessor for AnalyticsDataSharingRowElement(255);
    sub_1C54BBC20();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15D720);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C54BBC20()
{
  v2 = qword_1EC15D728;
  if (!qword_1EC15D728)
  {
    type metadata accessor for AnalyticsDataSharingRowElement(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15D728);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C54BBCA0()
{
  v2 = qword_1EC15D730;
  if (!qword_1EC15D730)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15D708, &qword_1C55B2F58);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15D730);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C54BBD28()
{
  v2 = qword_1EC15D758;
  if (!qword_1EC15D758)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15D710, &qword_1C55B2F60);
    sub_1C54BBCA0();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15D758);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C54BBE18()
{
  v2 = qword_1EC15D760;
  if (!qword_1EC15D760)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15D760);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C54BBF94()
{
  v2 = qword_1EC15D768;
  if (!qword_1EC15D768)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15D768);
    return WitnessTable;
  }

  return v2;
}

void sub_1C54BC040(void *a1@<X0>, uint64_t a2@<X8>)
{
  v103 = a2;
  v123 = a1;
  v104 = "Fatal error";
  v105 = "Unexpectedly found nil while implicitly unwrapping an Optional value";
  v106 = "AppleAccountUI/AnalyticsDataSharingRowElement.swift";
  v142 = 0;
  v141 = 0;
  v140 = 0;
  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15D770, &qword_1C55B2F90);
  v108 = *(v107 - 8);
  v109 = v107 - 8;
  v110 = (*(v108 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v107, v2, v3, v4);
  v111 = &v56 - v110;
  v142 = &v56 - v110;
  v112 = 0;
  v113 = sub_1C5596384();
  v114 = *(v113 - 8);
  v115 = v113 - 8;
  v116 = (*(v114 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v112, v5, v6, v7);
  v117 = &v56 - v116;
  v118 = type metadata accessor for AnalyticsDataSharingRowElement(v8);
  v119 = (*(*(v118 - 1) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v118, v9, v10, v11);
  v122 = &v56 - v119;
  v141 = &v56 - v119;
  v140 = v12;
  v121 = *(v13 + 48);
  v120 = 1;
  v14 = sub_1C5409594(0);
  v15 = v123;
  v16 = v122 + v121;
  *v16 = v14 & v120;
  *(v16 + 8) = v17;
  v126 = v15[3];
  v124 = v15[4];
  __swift_project_boxed_opaque_existential_0(v15, v126);
  v18 = v125;
  v19 = sub_1C5596F04();
  v127 = v18;
  v128 = v19;
  v129 = v20;
  v130 = v18;
  if (v18)
  {
    v58 = v130;
    v59 = 256;
  }

  else
  {
    v21 = v123;
    v22 = v129;
    v23 = (v122 + v118[5]);
    *v23 = v128;
    v23[1] = v22;
    v100 = v139;
    sub_1C5432498(v21, v139);
    v24 = v127;
    sub_1C5596374();
    v101 = v24;
    v102 = v24;
    if (v24)
    {
      v58 = v102;
      v59 = 258;
    }

    else
    {
      (*(v114 + 32))(v122, v117, v113);
      v96 = v123[3];
      v97 = v123[4];
      __swift_project_boxed_opaque_existential_0(v123, v96);
      sub_1C54BBF94();
      v25 = v101;
      sub_1C5596F24();
      v98 = v25;
      v99 = v25;
      if (!v25)
      {
        v138 = 0;
        v26 = sub_1C5596D74();
        v92 = 0;
        v93 = v26;
        v94 = v27;
        v95 = 0;
        v28 = (v122 + v118[6]);
        *v28 = v26;
        v28[1] = v27;
        v137 = 1;
        v29 = sub_1C5596D74();
        v88 = 0;
        v89 = v29;
        v90 = v30;
        v91 = 0;
        v31 = (v122 + v118[7]);
        *v31 = v29;
        v31[1] = v30;
        v136 = 4;
        v32 = sub_1C5596D74();
        v84 = 0;
        v85 = v32;
        v86 = v33;
        v87 = 0;
        v34 = (v122 + v118[8]);
        *v34 = v32;
        v34[1] = v33;
        v135 = 2;
        v35 = sub_1C5596D74();
        v80 = 0;
        v81 = v35;
        v82 = v36;
        v83 = 0;
        v37 = (v122 + v118[9]);
        *v37 = v35;
        v37[1] = v36;
        v134 = 3;
        v38 = sub_1C5596D74();
        v76 = 0;
        v77 = v38;
        v78 = v39;
        v79 = 0;
        v40 = (v122 + v118[10]);
        *v40 = v38;
        v40[1] = v39;
        v133 = 5;
        v41 = sub_1C5596D74();
        v72 = 0;
        v73 = v41;
        v74 = v42;
        v75 = 0;
        v43 = (v122 + v118[11]);
        *v43 = v41;
        v43[1] = v42;
        v71 = [objc_opt_self() sharedConnection];
        if (v71)
        {
          v70 = v71;
        }

        else
        {
          sub_1C5596C94();
          __break(1u);
        }

        v63 = v70;
        v61 = *MEMORY[0x1E69ADE40];
        MEMORY[0x1E69E5928](v61, v44);
        sub_1C5596574();
        v60 = v45;
        v62 = sub_1C5596554();

        *&v46 = MEMORY[0x1E69E5920](v61).n128_u64[0];
        v64 = [v63 effectiveBoolValueForSetting_];
        MEMORY[0x1E69E5920](v62);
        MEMORY[0x1E69E5920](v63);
        v67 = &v132;
        v132 = v64;
        v65 = &v131;
        v68 = 1;
        v131 = 1;
        v66 = type metadata accessor for MCRestrictedBoolType(0);
        sub_1C54BCE08();
        v47 = sub_1C5596E24();
        v69 = (v122 + v118[13]);
        v48 = sub_1C5409594(v47 & 1);
        v49 = v69;
        v50 = v108;
        v51 = v48;
        v52 = v111;
        v54 = v53;
        v55 = v107;
        *v69 = v51 & v68;
        *(v49 + 1) = v54;
        (*(v50 + 8))(v52, v55);
        sub_1C54BCE88(v122, v103);
        __swift_destroy_boxed_opaque_existential_0(v123);
        sub_1C54BD13C(v122);
        return;
      }

      v58 = v99;
      v59 = 259;
    }
  }

  v57 = v59;
  v56 = v58;
  __swift_destroy_boxed_opaque_existential_0(v123);
  if (v57)
  {
    (*(v114 + 8))(v122, v113);
  }

  if ((v57 & 2) != 0)
  {
    sub_1C5401ECC(v122 + v118[5]);
  }

  if ((v57 & 4) != 0)
  {
    sub_1C5401ECC(v122 + v118[6]);
  }

  if ((v57 & 8) != 0)
  {
    sub_1C5401ECC(v122 + v118[7]);
  }

  if ((v57 & 0x10) != 0)
  {
    sub_1C5401ECC(v122 + v118[8]);
  }

  if ((v57 & 0x20) != 0)
  {
    sub_1C5401ECC(v122 + v118[9]);
  }

  if ((v57 & 0x40) != 0)
  {
    sub_1C5401ECC(v122 + v118[10]);
  }

  sub_1C5373718(v122 + v118[12]);
}

unint64_t type metadata accessor for MCRestrictedBoolType(uint64_t a1)
{
  v5 = qword_1EC15D7A8;
  if (!qword_1EC15D7A8)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_1EC15D7A8);
      return v2;
    }
  }

  return v5;
}

unint64_t sub_1C54BCE08()
{
  v2 = qword_1EC15D778;
  if (!qword_1EC15D778)
  {
    type metadata accessor for MCRestrictedBoolType(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15D778);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1C54BCE88(uint64_t a1, uint64_t a2)
{
  v2 = sub_1C5596384();
  (*(*(v2 - 8) + 16))(a2, a1);
  v30 = type metadata accessor for AnalyticsDataSharingRowElement(0);
  v3 = (a1 + v30[5]);
  v13 = (a2 + v30[5]);
  *v13 = *v3;
  v14 = v3[1];
  sub_1C5594CF4();
  v13[1] = v14;
  v4 = v30[6];
  v15 = a2 + v4;
  *(a2 + v4) = *(a1 + v4);
  v16 = *(a1 + v4 + 8);
  sub_1C5594CF4();
  *(v15 + 8) = v16;
  v5 = v30[7];
  v17 = a2 + v5;
  *(a2 + v5) = *(a1 + v5);
  v18 = *(a1 + v5 + 8);
  sub_1C5594CF4();
  *(v17 + 8) = v18;
  v6 = v30[8];
  v19 = a2 + v6;
  *(a2 + v6) = *(a1 + v6);
  v20 = *(a1 + v6 + 8);
  sub_1C5594CF4();
  *(v19 + 8) = v20;
  v7 = v30[9];
  v21 = a2 + v7;
  *(a2 + v7) = *(a1 + v7);
  v22 = *(a1 + v7 + 8);
  sub_1C5594CF4();
  *(v21 + 8) = v22;
  v8 = v30[10];
  v23 = a2 + v8;
  *(a2 + v8) = *(a1 + v8);
  v24 = *(a1 + v8 + 8);
  sub_1C5594CF4();
  *(v23 + 8) = v24;
  v9 = v30[11];
  v25 = a2 + v9;
  *(a2 + v9) = *(a1 + v9);
  v26 = *(a1 + v9 + 8);
  sub_1C5594CF4();
  *(v25 + 8) = v26;
  v10 = v30[12];
  v28 = a2 + v10;
  *(a2 + v10) = *(a1 + v10);
  v29 = *(a1 + v10 + 8);

  *(v28 + 8) = v29;
  v11 = v30[13];
  v32 = a2 + v11;
  *(a2 + v11) = *(a1 + v11);
  v33 = *(a1 + v11 + 8);

  result = a2;
  *(v32 + 8) = v33;
  return result;
}

uint64_t sub_1C54BD13C(uint64_t a1)
{
  v1 = sub_1C5596384();
  (*(*(v1 - 8) + 8))(a1);
  type metadata accessor for AnalyticsDataSharingRowElement(0);

  return a1;
}

uint64_t sub_1C54BD2EC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1C54BA358();
  *a1 = result;
  a1[1] = v2;
  return result;
}

unint64_t sub_1C54BD334()
{
  v2 = qword_1EC15D780;
  if (!qword_1EC15D780)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15D780);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C54BD3C8()
{
  v2 = qword_1EC15D788;
  if (!qword_1EC15D788)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15D788);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C54BD45C()
{
  v2 = qword_1EC15D790;
  if (!qword_1EC15D790)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15D790);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C54BD524()
{
  v2 = qword_1EC15D798;
  if (!qword_1EC15D798)
  {
    type metadata accessor for AnalyticsDataSharingRowElement(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15D798);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C54BD5BC()
{
  v2 = qword_1EC15D7A0;
  if (!qword_1EC15D7A0)
  {
    type metadata accessor for AnalyticsDataSharingRowElement(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15D7A0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C54BD6A4(uint64_t a1)
{
  v5 = sub_1C5596384();
  if (v1 <= 0x3F)
  {
    v5 = sub_1C5433E58(319);
    if (v2 <= 0x3F)
    {
      v5 = sub_1C5433F94(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return v5;
}

void sub_1C54BD814(uint64_t a1@<X8>)
{
  nullsub_1();
  *a1 = v1;
  *(a1 + 4) = 0;
}

uint64_t sub_1C54BD884()
{
  swift_beginAccess();
  v2 = *(v0 + 24);
  sub_1C5594CF4();
  swift_endAccess();
  return v2;
}

uint64_t sub_1C54BD8E0(uint64_t a1, uint64_t a2)
{
  sub_1C5594CF4();
  swift_beginAccess();
  *(v2 + 24) = a1;
  *(v2 + 32) = a2;

  swift_endAccess();
}

uint64_t sub_1C54BD9AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  sub_1C5594CF4();
  *a3 = a1;
  a3[1] = a2;
}

uint64_t sub_1C54BDA08()
{
  swift_getKeyPath();
  (*(*v0 + 280))();

  swift_beginAccess();
  v3 = *(v2 + 24);
  sub_1C5594CF4();
  swift_endAccess();
  return v3;
}

uint64_t sub_1C54BDAC8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = *a1;

  *a2 = (*(*v5 + 144))(v2);
  a2[1] = v3;
}

uint64_t sub_1C54BDB4C(void *a1, uint64_t *a2)
{
  sub_1C5402BDC(a1, v7);
  v4 = v7[0];
  v6 = v7[1];
  v5 = *a2;

  (*(*v5 + 152))(v4, v6);
}

uint64_t sub_1C54BDBE4(uint64_t a1, uint64_t a2)
{
  v23 = a2;
  v22 = a1;
  v31 = 0;
  v18 = 0;
  v32 = a1;
  v33 = a2;
  v19 = &v30;
  swift_beginAccess();
  v20 = *(v2 + 24);
  v21 = *(v2 + 32);
  sub_1C5594CF4();
  swift_endAccess();
  v29[0] = v20;
  v29[1] = v21;
  v28[0] = v22;
  v28[1] = v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C1F0, &qword_1C55AE570);
  sub_1C54C0B98();
  v25 = v29;
  v26 = sub_1C542908C(v29, v28);
  sub_1C5401ECC(v29);
  if (v26)
  {
    v3 = v17;
    v4 = v18;
    KeyPath = swift_getKeyPath();
    v13 = KeyPath;

    sub_1C5594CF4();
    v15 = &v11;
    v7.n128_f64[0] = MEMORY[0x1EEE9AC00](KeyPath, &v11, v5, v6);
    (*(*v3 + 288))(v7);
    v16 = v4;

    v12 = v16;
  }

  else
  {
    sub_1C5594CF4();
    sub_1C5594CF4();
    v11 = &v27;
    swift_beginAccess();
    v8 = v17;
    v9 = v23;
    *(v17 + 24) = v22;
    *(v8 + 32) = v9;

    swift_endAccess();

    v12 = v18;
  }
}

uint64_t sub_1C54BDE88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1C5594CF4();
  sub_1C5594CF4();
  swift_beginAccess();
  *(a1 + 24) = a2;
  *(a1 + 32) = a3;

  swift_endAccess();
}

void (*sub_1C54BDF30(void *a1))(uint64_t *a1, char a2)
{
  v7 = __swift_coroFrameAllocStub(0x40uLL, 23558);
  *a1 = v7;
  v7[5] = v1;
  v6 = sub_1C5594B24();
  v4 = *(v6 - 8);
  v5 = __swift_coroFrameAllocStub(*(v4 + 64), 23558);
  v7[6] = v5;
  swift_getKeyPath();
  (*(*v1 + 280))();

  (*(v4 + 16))(v5, v3 + OBJC_IVAR____TtC14AppleAccountUI20AgeRangeRowViewModel___observationRegistrar, v6);
  v7[4] = v3;
  swift_getKeyPath();
  sub_1C54C0C5C();
  sub_1C5594B04();

  (*(v4 + 8))(v5, v6);
  v7[7] = sub_1C54BD950();
  return sub_1C54BE110;
}

void sub_1C54BE110(uint64_t *a1, char a2)
{
  v6 = *a1;
  if (a2)
  {
    v3 = *(v6 + 48);
    v2 = *(v6 + 40);
    (*(v6 + 56))(v6, 0);
    sub_1C54BE1CC(v2);
    free(v3);
  }

  else
  {
    v5 = *(v6 + 48);
    v4 = *(v6 + 40);
    (*(v6 + 56))(v6, 0);
    sub_1C54BE1CC(v4);
    free(v5);
  }

  free(v6);
}

uint64_t sub_1C54BE1CC(uint64_t a1)
{
  v7 = a1;
  v15 = 0;
  v13 = sub_1C5594B24();
  v10 = *(v13 - 8);
  v11 = v13 - 8;
  v6 = (*(v10 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = MEMORY[0x1EEE9AC00](v13, v1, v13, v2);
  v12 = &v5 - v6;
  v15 = v7;
  (*(v10 + 16))(&v5 - v6, v7 + OBJC_IVAR____TtC14AppleAccountUI20AgeRangeRowViewModel___observationRegistrar, v3);
  v8 = &v14;
  v14 = v7;
  KeyPath = swift_getKeyPath();
  sub_1C54C0C5C();
  sub_1C5594AF4();

  return (*(v10 + 8))(v12, v13);
}

uint64_t sub_1C54BE308()
{
  LODWORD(v1) = 0;
  BYTE4(v1) = 1;
  return v1;
}

uint64_t sub_1C54BE32C()
{
  swift_beginAccess();
  v2 = *(v0 + 40);
  v3 = *(v0 + 44);
  swift_endAccess();
  LODWORD(v4) = v2;
  BYTE4(v4) = v3 & 1;
  return v4;
}

uint64_t sub_1C54BE398(uint64_t a1)
{
  v3 = a1;
  v4 = BYTE4(a1);
  swift_beginAccess();
  *(v1 + 40) = v3;
  *(v1 + 44) = v4 & 1;
  return swift_endAccess();
}

uint64_t sub_1C54BE460@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 4) = BYTE4(result) & 1;
  return result;
}

uint64_t sub_1C54BE4A8()
{
  swift_getKeyPath();
  (*(*v0 + 280))();

  swift_beginAccess();
  v3 = *(v2 + 40);
  v4 = *(v2 + 44);
  swift_endAccess();
  LODWORD(v5) = v3;
  BYTE4(v5) = v4 & 1;
  return v5;
}

uint64_t sub_1C54BE578@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *a1;

  v3 = (*(*v5 + 192))(v2);
  *a2 = v3;
  *(a2 + 4) = BYTE4(v3) & 1;
}

uint64_t sub_1C54BE610(int *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = *(a1 + 4);

  LODWORD(v5) = v3;
  BYTE4(v5) = v4 & 1;
  sub_1C54BE688(v5);
}

uint64_t sub_1C54BE688(uint64_t a1)
{
  v31 = 0;
  v17 = 0;
  v34 = a1;
  v23 = a1;
  v18 = a1;
  v24 = BYTE4(a1);
  v19 = BYTE4(a1);
  v32 = a1;
  v33 = BYTE4(a1);
  v20 = &v30;
  swift_beginAccess();
  v21 = *(v1 + 40);
  v22 = *(v1 + 44);
  swift_endAccess();
  v28 = v21;
  v29 = v22;
  v26 = v23;
  v27 = v24;
  if (sub_1C542905C())
  {
    v2 = v16;
    v3 = v17;
    KeyPath = swift_getKeyPath();
    v12 = KeyPath;

    v14 = &v10;
    v6.n128_f64[0] = MEMORY[0x1EEE9AC00](KeyPath, &v10, v4, v5);
    (*(*v2 + 288))(v6);
    v15 = v3;

    return v15;
  }

  else
  {
    v10 = v25;
    swift_beginAccess();
    v7 = v19;
    v8 = v16;
    *(v16 + 40) = v18;
    *(v8 + 44) = v7 & 1;
    swift_endAccess();
    return v17;
  }
}

uint64_t sub_1C54BE8C8(uint64_t a1, uint64_t a2)
{
  v3 = a2;
  v4 = BYTE4(a2);
  swift_beginAccess();
  *(a1 + 40) = v3;
  *(a1 + 44) = v4 & 1;
  return swift_endAccess();
}

void (*sub_1C54BE974(void *a1))(uint64_t *a1, char a2)
{
  v7 = __swift_coroFrameAllocStub(0x40uLL, 41000);
  *a1 = v7;
  v7[5] = v1;
  v6 = sub_1C5594B24();
  v4 = *(v6 - 8);
  v5 = __swift_coroFrameAllocStub(*(v4 + 64), 41000);
  v7[6] = v5;
  swift_getKeyPath();
  (*(*v1 + 280))();

  (*(v4 + 16))(v5, v3 + OBJC_IVAR____TtC14AppleAccountUI20AgeRangeRowViewModel___observationRegistrar, v6);
  v7[4] = v3;
  swift_getKeyPath();
  sub_1C54C0C5C();
  sub_1C5594B04();

  (*(v4 + 8))(v5, v6);
  v7[7] = sub_1C54BE404();
  return sub_1C54BEB54;
}

void sub_1C54BEB54(uint64_t *a1, char a2)
{
  v6 = *a1;
  if (a2)
  {
    v3 = *(v6 + 48);
    v2 = *(v6 + 40);
    (*(v6 + 56))(v6, 0);
    sub_1C54BEC10(v2);
    free(v3);
  }

  else
  {
    v5 = *(v6 + 48);
    v4 = *(v6 + 40);
    (*(v6 + 56))(v6, 0);
    sub_1C54BEC10(v4);
    free(v5);
  }

  free(v6);
}

uint64_t sub_1C54BEC10(uint64_t a1)
{
  v7 = a1;
  v15 = 0;
  v13 = sub_1C5594B24();
  v10 = *(v13 - 8);
  v11 = v13 - 8;
  v6 = (*(v10 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = MEMORY[0x1EEE9AC00](v13, v1, v13, v2);
  v12 = &v5 - v6;
  v15 = v7;
  (*(v10 + 16))(&v5 - v6, v7 + OBJC_IVAR____TtC14AppleAccountUI20AgeRangeRowViewModel___observationRegistrar, v3);
  v8 = &v14;
  v14 = v7;
  KeyPath = swift_getKeyPath();
  sub_1C54C0C5C();
  sub_1C5594AF4();

  return (*(v10 + 8))(v12, v13);
}

uint64_t sub_1C54BED4C()
{
  swift_beginAccess();
  v2 = *(v0 + 48);

  swift_endAccess();
  return v2;
}

uint64_t sub_1C54BED9C(uint64_t a1)
{

  swift_beginAccess();
  *(v1 + 48) = a1;

  swift_endAccess();
}

uint64_t sub_1C54BEE58@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{

  *a2 = a1;
}

uint64_t sub_1C54BEE98()
{
  swift_getKeyPath();
  (*(*v0 + 280))();

  swift_beginAccess();
  v3 = *(v2 + 48);

  swift_endAccess();
  return v3;
}

uint64_t sub_1C54BEF4C@<X0>(uint64_t *a2@<X8>)
{

  *a2 = sub_1C54BEE98();
}

uint64_t sub_1C54BEFA8(void *a1, uint64_t *a2)
{
  sub_1C5413AF4(a1, &v4);
  v3 = v4;

  sub_1C54BF010(v3);
}

uint64_t sub_1C54BF010(uint64_t a1)
{
  v18 = a1;
  v26 = 0;
  v15 = 0;
  v27 = a1;
  v16 = &v25;
  swift_beginAccess();
  v17 = *(v1 + 48);

  swift_endAccess();
  v24 = v17;
  v23 = v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15D7C0, &qword_1C55B3330);
  sub_1C54C0D9C();
  v20 = &v24;
  v21 = sub_1C542908C(&v24, &v23);
  sub_1C5410D10(&v24);
  if (v21)
  {
    v2 = v14;
    v3 = v15;
    KeyPath = swift_getKeyPath();
    v10 = KeyPath;

    v12 = v8;
    v6.n128_f64[0] = MEMORY[0x1EEE9AC00](KeyPath, v8, v4, v5);
    (*(*v2 + 288))(v6);
    v13 = v3;

    v9 = v13;
  }

  else
  {

    v8[1] = &v22;
    swift_beginAccess();
    *(v14 + 48) = v18;

    swift_endAccess();

    v9 = v15;
  }
}

uint64_t sub_1C54BF26C(uint64_t a1, uint64_t a2)
{

  swift_beginAccess();
  *(a1 + 48) = a2;

  swift_endAccess();
}

void (*sub_1C54BF300(void *a1))(uint64_t *a1, char a2)
{
  v7 = __swift_coroFrameAllocStub(0x40uLL, 39342);
  *a1 = v7;
  v7[5] = v1;
  v6 = sub_1C5594B24();
  v4 = *(v6 - 8);
  v5 = __swift_coroFrameAllocStub(*(v4 + 64), 39342);
  v7[6] = v5;
  swift_getKeyPath();
  (*(*v1 + 280))();

  (*(v4 + 16))(v5, v3 + OBJC_IVAR____TtC14AppleAccountUI20AgeRangeRowViewModel___observationRegistrar, v6);
  v7[4] = v3;
  swift_getKeyPath();
  sub_1C54C0C5C();
  sub_1C5594B04();

  (*(v4 + 8))(v5, v6);
  v7[7] = sub_1C54BEDFC();
  return sub_1C54BF4E0;
}

void sub_1C54BF4E0(uint64_t *a1, char a2)
{
  v6 = *a1;
  if (a2)
  {
    v3 = *(v6 + 48);
    v2 = *(v6 + 40);
    (*(v6 + 56))(v6, 0);
    sub_1C54BF59C(v2);
    free(v3);
  }

  else
  {
    v5 = *(v6 + 48);
    v4 = *(v6 + 40);
    (*(v6 + 56))(v6, 0);
    sub_1C54BF59C(v4);
    free(v5);
  }

  free(v6);
}

uint64_t sub_1C54BF59C(uint64_t a1)
{
  v7 = a1;
  v15 = 0;
  v13 = sub_1C5594B24();
  v10 = *(v13 - 8);
  v11 = v13 - 8;
  v6 = (*(v10 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = MEMORY[0x1EEE9AC00](v13, v1, v13, v2);
  v12 = &v5 - v6;
  v15 = v7;
  (*(v10 + 16))(&v5 - v6, v7 + OBJC_IVAR____TtC14AppleAccountUI20AgeRangeRowViewModel___observationRegistrar, v3);
  v8 = &v14;
  v14 = v7;
  KeyPath = swift_getKeyPath();
  sub_1C54C0C5C();
  sub_1C5594AF4();

  return (*(v10 + 8))(v12, v13);
}

uint64_t sub_1C54BF704()
{
  sub_1C54888D0();
  v6 = sub_1C5404B48();
  v7 = [v6 aa_primaryAppleAccount];
  *&v0 = MEMORY[0x1E69E5920](v6).n128_u64[0];
  if (!v7)
  {
    return 0;
  }

  v5 = [v7 aa_altDSID];
  if (v5)
  {
    v3 = sub_1C5596574();
    MEMORY[0x1E69E5920](v5);
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  MEMORY[0x1E69E5920](v7);
  return v4;
}

uint64_t sub_1C54BF8B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = 0;
  v3[4] = 0;
  LODWORD(v10) = 0;
  BYTE4(v10) = 1;
  sub_1C54BE460(v10, (v3 + 5));
  v3[6] = 0;
  sub_1C5594B14();
  MEMORY[0x1E69E5928](a1, v4);
  v3[2] = a1;
  sub_1C54BDBE4(a2, a3);
  MEMORY[0x1E69E5920](a1);
  return v9;
}

uint64_t sub_1C54BF9A0()
{
  v1[23] = v0;
  v1[20] = v1;
  v1[21] = 0;
  v1[18] = 0;
  v1[19] = 0;
  v1[22] = 0;
  v2 = sub_1C5594C74();
  v1[24] = v2;
  v1[25] = *(v2 - 8);
  v1[26] = swift_task_alloc();
  v1[21] = v0;
  sub_1C55967E4();
  v1[27] = sub_1C55967D4();
  v1[28] = sub_1C55967A4();
  v1[29] = v3;

  return MEMORY[0x1EEE6DFA0](sub_1C54BFAE0);
}

uint64_t sub_1C54BFAE0()
{
  v1 = v0[23];
  v0[20] = v0;
  v10 = (*(*v1 + 144))();
  v0[30] = v2;
  if (v2)
  {
    v3 = *(v9 + 184);
    *(v9 + 144) = v10;
    *(v9 + 152) = v2;
    v8 = *(v3 + 16);
    *(v9 + 248) = v8;
    MEMORY[0x1E69E5928](v8, v2);
    sub_1C5594CF4();
    v7 = sub_1C5596554();
    *(v9 + 256) = v7;

    *(v9 + 16) = *(v9 + 160);
    *(v9 + 56) = v9 + 272;
    *(v9 + 24) = sub_1C54BFD6C;
    v6 = swift_continuation_init();
    *(v9 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15D7E8, qword_1C55B3348);
    *(v9 + 112) = v6;
    *(v9 + 80) = MEMORY[0x1E69E9820];
    *(v9 + 88) = 1107296256;
    *(v9 + 92) = 0;
    *(v9 + 96) = sub_1C54C06D8;
    *(v9 + 104) = &block_descriptor_11;
    [v8 globalStateForAltDSID:v7 completion:?];

    return MEMORY[0x1EEE6DEC8](v9 + 16);
  }

  else
  {
    LODWORD(v11) = 0;
    BYTE4(v11) = 0;
    sub_1C54BE688(v11);

    v4 = *(*(v9 + 160) + 8);

    return v4();
  }
}

uint64_t sub_1C54BFD6C()
{
  v4 = *v0;
  v4[20] = *v0;
  v1 = v4[6];
  v4[33] = v1;
  if (v1)
  {
    v2 = sub_1C54BFFE4;
  }

  else
  {
    v2 = sub_1C54BFED4;
  }

  return MEMORY[0x1EEE6DFA0](v2);
}

uint64_t sub_1C54BFED4()
{
  v4 = *(v0 + 256);
  v3 = *(v0 + 248);
  *(v0 + 160) = v0;
  LODWORD(v5) = *(v0 + 272);
  BYTE4(v5) = 0;
  sub_1C54BE688(v5);
  MEMORY[0x1E69E5920](v3);
  MEMORY[0x1E69E5920](v4);

  v1 = *(*(v0 + 160) + 8);

  return v1();
}

uint64_t sub_1C54BFFE4(uint64_t a1)
{
  v38 = v1;
  v23 = v1[33];
  v20 = v1[32];
  v19 = v1[31];
  v18 = v1[26];
  v21 = v1[25];
  v22 = v1[24];
  v1[20] = v1;
  swift_willThrow();
  MEMORY[0x1E69E5920](v19);
  MEMORY[0x1E69E5920](v20);
  v2 = v23;
  v1[22] = v23;
  v3 = sub_1C54B05F8();
  (*(v21 + 16))(v18, v3, v22);
  v4 = v23;
  v24 = swift_allocObject();
  *(v24 + 16) = v23;
  sub_1C54398B0();

  v31 = sub_1C5594C54();
  v32 = sub_1C5596954();
  v27 = swift_allocObject();
  *(v27 + 16) = 64;
  v28 = swift_allocObject();
  *(v28 + 16) = 8;
  v25 = swift_allocObject();
  *(v25 + 16) = sub_1C5467F9C;
  *(v25 + 24) = v24;
  v26 = swift_allocObject();
  *(v26 + 16) = sub_1C5467FA4;
  *(v26 + 24) = v25;
  v29 = swift_allocObject();
  *(v29 + 16) = sub_1C545C6DC;
  *(v29 + 24) = v26;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15E1E0, &qword_1C55ADF60);
  sub_1C5596E04();
  v30 = v5;

  *v30 = sub_1C545C6D4;
  v30[1] = v27;

  v30[2] = sub_1C545C6D4;
  v30[3] = v28;

  v30[4] = sub_1C545C6E8;
  v30[5] = v29;
  sub_1C540FCD8();

  if (os_log_type_enabled(v31, v32))
  {
    buf = sub_1C5596A74();
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15C940, qword_1C55ADF70);
    v15 = sub_1C5419DC0(1, v13, v13);
    v16 = sub_1C5419DC0(0, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
    v33 = buf;
    v34 = v15;
    v35 = v16;
    sub_1C5419E14(2, &v33);
    sub_1C5419E14(1, &v33);
    v36 = sub_1C545C6D4;
    v37 = v27;
    sub_1C5419E28(&v36, &v33, &v34, &v35);
    v36 = sub_1C545C6D4;
    v37 = v28;
    sub_1C5419E28(&v36, &v33, &v34, &v35);
    v36 = sub_1C545C6E8;
    v37 = v29;
    sub_1C5419E28(&v36, &v33, &v34, &v35);
    _os_log_impl(&dword_1C5355000, v31, v32, "Failed to fetch attestation state with error: %@", buf, 0xCu);
    sub_1C5419E74(v15, 1, v13);
    sub_1C5419E74(v16, 0, MEMORY[0x1E69E7CA0] + 8);
    sub_1C5596A54();
  }

  else
  {
  }

  v12 = v17[33];
  v10 = v17[26];
  v11 = v17[24];
  v9 = v17[25];
  v6 = MEMORY[0x1E69E5920](v31);
  (*(v9 + 8))(v10, v11, v6);

  v7 = *(v17[20] + 8);

  return v7();
}

double sub_1C54C06D8(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = a2;
  MEMORY[0x1E69E5928](a3, a2);
  v10 = *__swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  if (a3)
  {
    v5 = a3;
    v6 = type metadata accessor for AgeRangeGlobalState(0);
    sub_1C542501C(v10, a3, v6);
  }

  else
  {
    v11 = v7;
    v3 = type metadata accessor for AgeRangeGlobalState(0);
    sub_1C5425080(v10, &v11, v3);
  }

  *&result = MEMORY[0x1E69E5920](a3).n128_u64[0];
  return result;
}

uint64_t sub_1C54C07A4@<X0>(uint64_t a1@<X8>)
{
  v4 = OBJC_IVAR____TtC14AppleAccountUI20AgeRangeRowViewModel___observationRegistrar;
  v2 = sub_1C5594B24();
  return (*(*(v2 - 8) + 16))(a1, v1 + v4);
}

uint64_t sub_1C54C0810(void *a1)
{
  v9 = a1;
  v18 = 0;
  v16 = 0;
  v7 = *a1;
  v14 = sub_1C5594B24();
  v11 = *(v14 - 8);
  v12 = v14 - 8;
  v3 = MEMORY[0x1EEE9AC00](v9, v1, v14, v2);
  v13 = &v7 - v4;
  v18 = v5;
  v17 = *(v7 + *MEMORY[0x1E69E77B0] + 8);
  v16 = v8;
  (*(v11 + 16))(&v7 - v4, v8 + OBJC_IVAR____TtC14AppleAccountUI20AgeRangeRowViewModel___observationRegistrar, v3);
  v10 = &v15;
  v15 = v8;
  sub_1C54C0C5C();
  sub_1C5594AE4();
  return (*(v11 + 8))(v13, v14);
}

uint64_t sub_1C54C0980@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v19 = a5;
  v20 = a1;
  v21 = a2;
  v22 = a3;
  v23 = a4;
  v33 = 0;
  v30 = 0;
  v31 = 0;
  v29 = 0;
  v34 = a4;
  v15 = *a1;
  v13 = sub_1C5594B24();
  v16 = *(v13 - 8);
  v14 = v13 - 8;
  v6 = MEMORY[0x1EEE9AC00](v20, v21, v13, v5);
  v17 = v12 - v7;
  v33 = v8;
  v32 = *(v15 + *MEMORY[0x1E69E77B0] + 8);
  v30 = v9;
  v31 = v22;
  v29 = v18;
  (*(v16 + 16))(v12 - v7, v18 + OBJC_IVAR____TtC14AppleAccountUI20AgeRangeRowViewModel___observationRegistrar, v6);
  v25 = &v28;
  v28 = v18;
  sub_1C54C0C5C();
  v10 = v24;
  sub_1C5594AD4();
  v26 = v10;
  v27 = v10;
  if (v10)
  {
    v12[1] = v27;
  }

  return (*(v16 + 8))(v17, v13);
}

unint64_t sub_1C54C0B98()
{
  v2 = qword_1EC15D7B0;
  if (!qword_1EC15D7B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15C1F0, &qword_1C55AE570);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15D7B0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C54C0C5C()
{
  v2 = qword_1EC15D7B8;
  if (!qword_1EC15D7B8)
  {
    type metadata accessor for AgeRangeRowViewModel(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15D7B8);
    return WitnessTable;
  }

  return v2;
}

uint64_t type metadata accessor for AgeRangeRowViewModel(uint64_t a1)
{
  v2 = qword_1EC164F00;
  if (!qword_1EC164F00)
  {
    return swift_getSingletonMetadata();
  }

  return v2;
}

uint64_t sub_1C54C0D50()
{
  LODWORD(v2) = *(v0 + 24);
  BYTE4(v2) = *(v0 + 28) & 1;
  return sub_1C54BE8C8(*(v0 + 16), v2);
}

unint64_t sub_1C54C0D9C()
{
  v2 = qword_1EC15D7C8;
  if (!qword_1EC15D7C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15D7C0, &qword_1C55B3330);
    sub_1C54C0E34();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15D7C8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C54C0E34()
{
  v2 = qword_1EC15D7D0;
  if (!qword_1EC15D7D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15D7D8, &unk_1C55B3338);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15D7D0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C54C0EE8()
{
  v2 = qword_1EC15D7E0;
  if (!qword_1EC15D7E0)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1EC15D7E0);
    return ObjCClassMetadata;
  }

  return v2;
}

uint64_t sub_1C54C0F8C()
{
  MEMORY[0x1E69E5920](*(v0 + 16));
  sub_1C5401ECC(v0 + 24);
  sub_1C5410D10((v0 + 48));
  v3 = OBJC_IVAR____TtC14AppleAccountUI20AgeRangeRowViewModel___observationRegistrar;
  v1 = sub_1C5594B24();
  (*(*(v1 - 8) + 8))(v0 + v3);
  return v4;
}

uint64_t sub_1C54C10A4(uint64_t a1)
{
  updated = sub_1C5594B24();
  if (v1 <= 0x3F)
  {
    updated = swift_updateClassMetadata2();
    if (!updated)
    {
      return 0;
    }
  }

  return updated;
}

uint64_t __swift_memcpy5_4(uint64_t result, uint64_t a2)
{
  *result = *a2;
  *(result + 4) = *(a2 + 4);
  return result;
}

uint64_t sub_1C54C11C0(uint64_t a1, int a2)
{
  if (a2)
  {
    if (*(a1 + 5))
    {
      v3 = *a1;
    }

    else
    {
      v3 = -1;
    }
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

uint64_t sub_1C54C12D4(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = a2 - 1;
    *(result + 4) = 0;
    if (a3)
    {
      *(result + 5) = 1;
    }
  }

  else if (a3)
  {
    *(result + 5) = 0;
  }

  return result;
}

uint64_t sub_1C54C15F8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v77 = a6;
  v78 = a5;
  v84 = a4;
  v83 = a3;
  v87 = a2;
  v86 = a1;
  v97 = 0;
  v110 = 0;
  v109 = 0;
  v108 = 0;
  v107 = 0;
  v106 = 0;
  v105 = 0;
  v79 = 0;
  v111 = a5;
  v80 = *(a5 - 8);
  v81 = v80;
  MEMORY[0x1EEE9AC00](0, 0, a3, a4);
  v82 = &v44[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v94 = sub_1C5594C74();
  v88 = v94;
  v89 = *(v94 - 8);
  v93 = v89;
  v90 = v89;
  v91 = *(v89 + 64);
  MEMORY[0x1EEE9AC00](v86, v87, v83, v84);
  v7 = &v44[-((v91 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v92 = v7;
  v110 = v8;
  v109 = v9;
  v107 = v10;
  v108 = v11;
  v106 = v12;
  v13 = sub_1C54B05F8();
  (*(v93 + 16))(v7, v13, v94);
  v99 = sub_1C5594C54();
  v95 = v99;
  v98 = sub_1C5596944();
  v96 = v98;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15E1E0, &qword_1C55ADF60);
  v100 = sub_1C5596E04();
  if (os_log_type_enabled(v99, v98))
  {
    v14 = v79;
    v68 = sub_1C5596A74();
    v64 = v68;
    v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15C940, qword_1C55ADF70);
    v66 = 0;
    v69 = sub_1C5419DC0(0, v65, v65);
    v67 = v69;
    v70 = sub_1C5419DC0(v66, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
    v104 = v68;
    v103 = v69;
    v102 = v70;
    v71 = 0;
    v72 = &v104;
    sub_1C5419E14(0, &v104);
    sub_1C5419E14(v71, v72);
    v101 = v100;
    v73 = v44;
    MEMORY[0x1EEE9AC00](v44, v15, v16, v17);
    v74 = &v44[-48];
    *&v44[-32] = v18;
    *&v44[-24] = &v103;
    *&v44[-16] = &v102;
    v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15E1F0, &unk_1C55AE2C0);
    sub_1C5419F0C();
    sub_1C55966B4();
    v76 = v14;
    if (v14)
    {
      __break(1u);
    }

    else
    {
      _os_log_impl(&dword_1C5355000, v95, v96, "presentDetailsView was called.", v64, 2u);
      v62 = 0;
      sub_1C5419E74(v67, 0, v65);
      sub_1C5419E74(v70, v62, MEMORY[0x1E69E7CA0] + 8);
      sub_1C5596A54();

      v63 = v76;
    }
  }

  else
  {

    v63 = v79;
  }

  (*(v90 + 8))(v92, v88);
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15D7F8, qword_1C55B3478);
  v46 = sub_1C5596E04();
  v47 = v19;
  v45 = 1;
  v20 = sub_1C55965F4("contact", 7);
  v21 = v86;
  v22 = v47;
  *v47 = v20;
  v22[1] = v23;
  v24 = v21;
  v25 = sub_1C5403328();
  v26 = v86;
  v27 = v45;
  v28 = v47;
  v47[5] = v25;
  v28[2] = v26;
  v29 = sub_1C55965F4("contactType", 11, v27);
  v30 = v87;
  v31 = v45;
  v33 = v32;
  v34 = v47;
  v47[6] = v29;
  v34[7] = v33;
  v34[11] = MEMORY[0x1E69E6530];
  v34[8] = v30;
  v35 = sub_1C55965F4("telemetryFlowID", 15, v31);
  v36 = v47;
  v47[12] = v35;
  v36[13] = v37;
  sub_1C5594CF4();
  v38 = v83;
  v39 = v47;
  v40 = v84;
  v51 = MEMORY[0x1E69E6158];
  v47[17] = MEMORY[0x1E69E6158];
  v39[14] = v38;
  v39[15] = v40;
  sub_1C540FCD8();
  v54 = MEMORY[0x1E69E7CA0] + 8;
  v52 = MEMORY[0x1E69E6168];
  v61 = sub_1C5596454();
  v105 = v61;
  v60 = [objc_opt_self() defaultCenter];
  v49 = (*(v77 + 16))(v78);
  v50 = v41;
  sub_1C5594CF4();
  v59 = sub_1C5596554();
  v42 = v59;

  (*(v81 + 16))(v82, v85, v78);
  v58 = sub_1C5596E14();
  (*(v81 + 8))(v82, v78);
  sub_1C5594CF4();
  v53 = MEMORY[0x1E69E69B8];
  v55 = MEMORY[0x1E69E69C0];
  v56 = sub_1C5596CB4();
  v57 = sub_1C5596434();

  [v60 postNotificationName:v59 object:v58 userInfo:v57];

  swift_unknownObjectRelease();
}

void sub_1C54C1EA0(uint64_t a1, uint64_t a2)
{
  v35 = a2;
  v36 = a1;
  v47 = 0;
  v55 = 0;
  v37 = 0;
  v56 = a1;
  v44 = sub_1C5594C74();
  v38 = v44;
  v39 = *(v44 - 8);
  v43 = v39;
  v40 = v39;
  v41 = *(v39 + 64);
  MEMORY[0x1EEE9AC00](v44 - 8, v44, v2, v3);
  v4 = v14 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = v4;
  v55 = v5;
  v6 = sub_1C54B05F8();
  (*(v43 + 16))(v4, v6, v44);
  v49 = sub_1C5594C54();
  v45 = v49;
  v48 = sub_1C5596944();
  v46 = v48;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15E1E0, &qword_1C55ADF60);
  v50 = sub_1C5596E04();
  if (os_log_type_enabled(v49, v48))
  {
    v7 = v37;
    v26 = sub_1C5596A74();
    v22 = v26;
    v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15C940, qword_1C55ADF70);
    v24 = 0;
    v27 = sub_1C5419DC0(0, v23, v23);
    v25 = v27;
    v28 = sub_1C5419DC0(v24, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
    v54[0] = v26;
    v53 = v27;
    v52 = v28;
    v29 = 0;
    v30 = v54;
    sub_1C5419E14(0, v54);
    sub_1C5419E14(v29, v30);
    v51 = v50;
    v31 = v14;
    MEMORY[0x1EEE9AC00](v14, v8, v9, v10);
    v32 = &v14[-6];
    v14[-4] = v11;
    v14[-3] = &v53;
    v14[-2] = &v52;
    v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15E1F0, &unk_1C55AE2C0);
    sub_1C5419F0C();
    sub_1C55966B4();
    v34 = v7;
    if (v7)
    {
      __break(1u);
    }

    else
    {
      _os_log_impl(&dword_1C5355000, v45, v46, "presentAddTrustedContactsView was called.", v22, 2u);
      v20 = 0;
      sub_1C5419E74(v25, 0, v23);
      sub_1C5419E74(v28, v20, MEMORY[0x1E69E7CA0] + 8);
      sub_1C5596A54();

      v21 = v34;
    }
  }

  else
  {

    v21 = v37;
  }

  (*(v40 + 8))(v42, v38);
  v15 = [objc_opt_self() defaultCenter];
  v16 = (*(v35 + 8))(v36);
  v18 = v12;
  sub_1C5594CF4();
  v19 = sub_1C5596554();
  v17 = v19;
  v13 = v19;

  memset(&v54[1], 0, 32);
  v14[9] = 0;
  v14[1] = 0;
  [v15 postNotificationName:v17 object:?];
  swift_unknownObjectRelease();
}

uint64_t sub_1C54C25BC()
{
  sub_1C55965F4("Share Accounts", 14, 1);
  sub_1C55953C4();
  sub_1C5439370();
  sub_1C5576C44();
  return sub_1C55959E4();
}

uint64_t sub_1C54C26CC()
{
  sub_1C55965F4("Open the Passwords app to share your Sign in with Apple accounts with family and close friends.", 95, 1);
  sub_1C55953C4();
  sub_1C5439370();
  sub_1C5576C44();
  return sub_1C55959E4();
}

uint64_t sub_1C54C27E8()
{
  v26 = sub_1C54C2E64;
  v44 = 0;
  v39 = 0;
  v40 = 0;
  v38 = 0;
  v36 = 0;
  v27 = 0;
  v28 = (*(*(sub_1C55949C4() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0, v0, v1, v2);
  v29 = v11 - v28;
  v3 = sub_1C5596544();
  v30 = (*(*(v3 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v3, v4, v5, v6);
  v31 = v11 - v30;
  v44 = sub_1C54C2BB4() & 1;
  if (v44)
  {
    v21 = 1;
    sub_1C55965F4("Open Passwords App", 18, 1);
    sub_1C55964E4();
    v22 = 0;
    sub_1C5439370();
    v23 = sub_1C5576C44();
    sub_1C54982B4();
    v32 = 0;
    v33 = 0;
    v34 = 0;
    v35 = v21 & 1;
  }

  else
  {
    *&v18[1] = 1;
    sub_1C55965F4("Get Passwords App", 17, 1);
    sub_1C55964E4();
    v19 = 0;
    sub_1C5439370();
    v20 = sub_1C5576C44();
    sub_1C54982B4();
    v41 = 0;
    v42 = 0;
    v43 = *v18 & 0x100;
  }

  v24 = sub_1C5596594();
  v25 = v7;
  v16 = v7;
  v11[0] = v24;
  v39 = v24;
  v40 = v7;
  v11[2] = 0;
  v11[5] = sub_1C5594DA4();
  v11[4] = sub_1C5596E04();
  v11[1] = v8;
  sub_1C5594CF4();
  v11[3] = v37;
  v37[0] = v11[0];
  v37[1] = v16;
  sub_1C54141E8();
  sub_1C5594D94();
  sub_1C540FCD8();
  v11[6] = v9;
  v12 = sub_1C5594CF4();

  sub_1C5594CF4();
  v15 = &v38;
  v38 = v12;
  v13 = sub_1C5594CF4();

  sub_1C5594CF4();
  v14 = &v36;
  v36 = v13;
  v17 = sub_1C5594D14();

  sub_1C541439C(v14);
  sub_1C541439C(v15);

  return v17;
}

uint64_t sub_1C54C2BB4()
{
  sub_1C54C4CB0();
  v0 = sub_1C55965F4("com.apple.Passwords", 19, 1);
  v13 = sub_1C54C2DD0(v0, v1, 1);
  *&v3 = MEMORY[0x1E69E5928](v13, v2).n128_u64[0];
  if (!v13)
  {
    goto LABEL_10;
  }

  v11 = [v13 applicationState];
  v12 = [v11 isInstalled];
  MEMORY[0x1E69E5920](v11);
  *&v5 = MEMORY[0x1E69E5928](v13, v4).n128_u64[0];
  if (v12)
  {
    v10 = 1;
  }

  else
  {
    v8 = [v13 applicationState];
    v9 = [v8 isPlaceholder];
    MEMORY[0x1E69E5920](v8);
    v10 = v9;
  }

  MEMORY[0x1E69E5920](v13);
  if ((v10 & 1) == 0)
  {
    MEMORY[0x1E69E5920](v13);
LABEL_10:
    MEMORY[0x1E69E5920](v13);
    v7 = 0;
    return v7 & 1;
  }

  MEMORY[0x1E69E5920](v13);
  MEMORY[0x1E69E5920](v13);
  v7 = 1;
  return v7 & 1;
}

id sub_1C54C2DD0(uint64_t a1, uint64_t a2, char a3)
{
  v3 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v10 = sub_1C54C4660(a1, a2, a3 & 1);
  if (v8)
  {
    return v5;
  }

  else
  {
    return v10;
  }
}

uint64_t sub_1C54C2E64()
{
  v30 = 0;
  v17 = 0;
  v27 = sub_1C55948B4();
  v14 = *(v27 - 8);
  v15 = v27 - 8;
  v11 = (*(v14 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v27, v0, v1, v2);
  v3 = &v11 - v11;
  v16 = &v11 - v11;
  v12 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v5, v6, v7, v8);
  v26 = &v11 - v12;
  v30 = &v11 - v12;
  v13 = [objc_opt_self() passwordManagerURL];
  sub_1C5594894();
  (*(v14 + 32))(v26, v3, v27);
  MEMORY[0x1E69E5920](v13);
  v25 = [objc_opt_self() sharedApplication];
  (*(v14 + 16))(v3, v26, v27);
  v24 = sub_1C5594884();
  v29 = *(v14 + 8);
  v28 = v14 + 8;
  v29(v16, v27);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15D848, qword_1C55B43C0);
  v18 = sub_1C5596E04();
  v19 = type metadata accessor for OpenExternalURLOptionsKey(v17);
  v21 = sub_1C54C4C30();
  v20 = MEMORY[0x1E69E7CA0] + 8;
  v22 = sub_1C5596454();
  v23 = sub_1C5596434();

  [v25 openURL:v24 options:v23 completionHandler:0];
  MEMORY[0x1E69E5920](v23);
  MEMORY[0x1E69E5920](v24);
  v9 = MEMORY[0x1E69E5920](v25);
  return (v29)(v26, v27, v9);
}

uint64_t sub_1C54C31E4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v2 = sub_1C54C3224();
  result = MEMORY[0x1C6945830](a1, v2);
  *a2 = result;
  a2[1] = v4;
  return result;
}

unint64_t sub_1C54C3224()
{
  v2 = qword_1EC15D800;
  if (!qword_1EC15D800)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15D800);
    return WitnessTable;
  }

  return v2;
}

uint64_t SIWAShareAccountsTipView.id.getter()
{
  v2 = *v0;
  sub_1C5594CF4();
  return v2;
}

uint64_t SIWAShareAccountsTipView.id.setter(uint64_t a1, uint64_t a2)
{
  sub_1C5594CF4();
  *v2 = a1;
  v2[1] = a2;
}

void SIWAShareAccountsTipView.init(from:)(void *a1@<X0>, void *a2@<X8>)
{
  v7 = 0;
  v8 = 0;
  nullsub_1();
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  v6 = sub_1C5596F04();
  if (v5)
  {
    __swift_destroy_boxed_opaque_existential_0(a1);
  }

  else
  {
    v7 = v6;
    v8 = v2;
    sub_1C54C3530();
    sub_1C5594E04();

    sub_1C5402BDC(&v7, a2);
    __swift_destroy_boxed_opaque_existential_0(a1);
    sub_1C5401ECC(&v7);
  }
}

uint64_t SIWAShareAccountsTipView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v19 = a1;
  v14 = sub_1C54C3CB0;
  v29 = 0;
  v27 = 0;
  v28 = 0;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15D808, &unk_1C55B34C0);
  v11 = (*(*(v20 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v20, v2, v3, v4);
  v22 = (&v10 - v11);
  v12 = (v5 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](&v10 - v11, v6, v7, v8);
  v23 = (&v10 - v12);
  v29 = &v10 - v12;
  v13 = *v1;
  v18 = v1[1];
  v27 = v13;
  v28 = v18;
  sub_1C5594CF4();
  v15 = &v24;
  v25 = v13;
  v26 = v18;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15D678, &qword_1C55B2B98);
  v17 = sub_1C54B923C();
  sub_1C5410F68();
  sub_1C5596074();

  v21 = sub_1C54C3CBC();
  sub_1C540EFD8(v22, v20, v23);
  sub_1C53689D8(v22);
  sub_1C5368A64(v23, v22);
  sub_1C540EFD8(v22, v20, v19);
  sub_1C53689D8(v22);
  return sub_1C53689D8(v23);
}

uint64_t sub_1C54C36FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v33 = a3;
  v47 = a1;
  v46 = a2;
  v34 = MEMORY[0x1E6982BB0];
  v35 = "Fatal error";
  v36 = "Unexpectedly found nil while implicitly unwrapping an Optional value";
  v37 = "AppleAccountUI/SIWAShareAccountsTipView.swift";
  v73 = 0;
  v71 = 0;
  v72 = 0;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15D660, &unk_1C55B2B80);
  v58 = *(v61 - 8);
  v59 = v61 - 8;
  v38 = (*(v58 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v61, v3, v4, v5);
  v60 = &v26 - v38;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15D668, &qword_1C55B34D0);
  v40 = (*(*(v39 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v39, v6, v7, v8);
  v56 = &v26 - v40;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15D670, &qword_1C55B2B90);
  v42 = *(v41 - 8);
  v43 = v41 - 8;
  v44 = (*(v42 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v41, v9, v10, v11);
  v45 = &v26 - v44;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15D678, &qword_1C55B2B98);
  v49 = (*(*(v48 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v47, v46, v12, v13);
  v50 = &v26 - v49;
  v51 = (v14 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v15, v16, &v26 - v49, v17);
  v52 = &v26 - v51;
  v53 = (v18 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v19, v20, &v26 - v51, v21);
  v54 = &v26 - v53;
  v73 = &v26 - v53;
  v71 = v22;
  v72 = v23;
  v55 = &v68;
  v69 = &unk_1F447A5B0;
  v70 = sub_1C54C3224();
  sub_1C54B840C();
  sub_1C5594CD4();
  v57 = sub_1C5595EB4();
  sub_1C54B8428();
  sub_1C5595CF4();

  (*(v58 + 8))(v60, v61);
  v62 = [objc_opt_self() tableCellGroupedBackgroundColor];
  if (v62)
  {
    v32 = v62;
  }

  else
  {
    sub_1C5596C94();
    __break(1u);
  }

  v24 = sub_1C5595E44();
  v26 = &v67;
  v67 = v24;
  v28 = sub_1C54B84B0();
  v27 = MEMORY[0x1E69815C0];
  v29 = MEMORY[0x1E6981568];
  sub_1C5595A44();
  sub_1C5410D10(v26);
  sub_1C54B8558(v56);
  v30 = sub_1C5595804();
  v63 = v39;
  v64 = v27;
  v65 = v28;
  v66 = v29;
  swift_getOpaqueTypeConformance2();
  sub_1C5595D84();
  (*(v42 + 8))(v45, v41);
  v31 = sub_1C54B923C();
  sub_1C540EFD8(v52, v48, v54);
  sub_1C5367DA8(v52);
  sub_1C5368B68(v54, v50);
  sub_1C540EFD8(v50, v48, v33);
  sub_1C5367DA8(v50);
  return sub_1C5367DA8(v54);
}

unint64_t sub_1C54C3CBC()
{
  v2 = qword_1EC15D810;
  if (!qword_1EC15D810)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15D808, &unk_1C55B34C0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15D810);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1C54C3DB0@<X0>(uint64_t *a1@<X8>)
{
  result = SIWAShareAccountsTipView.id.getter();
  *a1 = result;
  a1[1] = v2;
  return result;
}

id static SIWAShareAccountsTipViewFactory.createSIWATip()()
{
  v24 = "Fatal error";
  v25 = "Unexpectedly found nil while implicitly unwrapping an Optional value";
  v26 = "AppleAccountUI/SIWAShareAccountsTipView.swift";
  v45 = 0;
  v44 = 0;
  v40 = 0;
  v0 = sub_1C5595774();
  v27 = (*(*(v0 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v0, v1, v2, v3);
  v28 = &v15[-v27];
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15D660, &unk_1C55B2B80);
  v30 = *(v29 - 8);
  v31 = v29 - 8;
  v33 = *(v30 + 64);
  v32 = (v33 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v29, v4, v5, v6);
  v34 = &v15[-v32];
  v35 = (v33 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](&v15[-v32], v7, v8, v9);
  v36 = &v15[-v35];
  v45 = &v15[-v35];
  v44 = v10;
  v37 = sub_1C54C3530();
  sub_1C5594E04();
  v38 = 0;
  v39 = 0;

  v23 = v38;
  v11 = v38;
  sub_1C5594D34();
  v22 = v11;
  if (v11)
  {
  }

  nullsub_1();
  v19 = &v41;
  v42 = &unk_1F447A5B0;
  v43 = sub_1C54C3224();
  sub_1C54B840C();
  sub_1C5594CD4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15D820, &qword_1C55B34E8);
  (*(v30 + 16))(v34, v36, v29);
  v20 = sub_1C5595484();
  v40 = v20;
  *&v13 = MEMORY[0x1E69E5928](v20, v12).n128_u64[0];
  v21 = [v20 view];
  MEMORY[0x1E69E5920](v20);
  if (v21)
  {
    v18 = v21;
  }

  else
  {
    sub_1C5596C94();
    __break(1u);
  }

  v17 = v18;
  v16 = [objc_opt_self() clearColor];
  [v17 setBackgroundColor_];
  MEMORY[0x1E69E5920](v16);
  MEMORY[0x1E69E5920](v17);
  sub_1C5595764();
  sub_1C5595474();
  (*(v30 + 8))(v36, v29);
  return v20;
}

id SIWAShareAccountsTipViewFactory.init()()
{
  v4 = 0;
  v3.receiver = 0;
  v3.super_class = type metadata accessor for SIWAShareAccountsTipViewFactory();
  v2 = objc_msgSendSuper2(&v3, sel_init);
  MEMORY[0x1E69E5928](v2, v0);
  v4 = v2;
  MEMORY[0x1E69E5920](v2);
  return v2;
}

id SIWAShareAccountsTipViewFactory.__deallocating_deinit()
{
  v3 = v0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SIWAShareAccountsTipViewFactory();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_1C54C43CC()
{
  v2 = qword_1EC15D828;
  if (!qword_1EC15D828)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15D828);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C54C4460()
{
  v2 = qword_1EC15D830;
  if (!qword_1EC15D830)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15D830);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C54C44F4()
{
  v2 = qword_1EC15D838;
  if (!qword_1EC15D838)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15D838);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C54C4588()
{
  v2 = qword_1EC15D840;
  if (!qword_1EC15D840)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15D840);
    return WitnessTable;
  }

  return v2;
}

id sub_1C54C4660(uint64_t a1, uint64_t a2, char a3)
{
  v7 = sub_1C5596554();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15D860, &qword_1C55B3760);
  sub_1C54C4D14();
  sub_1C5596E34();
  v9 = [v6 initWithBundleIdentifier:v7 allowPlaceholder:a3 & 1 error:v10];
  MEMORY[0x1E69E5928](0, v3);
  MEMORY[0x1E69E5920](0);
  if (v9)
  {
    MEMORY[0x1E69E5920](v7);

    return v9;
  }

  else
  {
    sub_1C5594874();
    MEMORY[0x1E69E5920](0);
    swift_willThrow();
    MEMORY[0x1E69E5920](v7);

    return v5;
  }
}

uint64_t sub_1C54C481C(uint64_t a1)
{
  sub_1C54C4F64();
  sub_1C545CCC8();
  return sub_1C5596D54();
}

uint64_t sub_1C54C4858(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1C54C4F64();
  sub_1C545CCC8();
  return sub_1C5596D24();
}

uint64_t sub_1C54C48A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1C54C4F64();
  sub_1C545CCC8();
  return sub_1C5596D34() & 1;
}

uint64_t sub_1C54C48F4(uint64_t a1, uint64_t a2)
{
  sub_1C54C4F64();
  sub_1C545CCC8();
  return sub_1C5596D44();
}

uint64_t sub_1C54C4A5C(uint64_t a1)
{
  sub_1C54C4C30();
  sub_1C54C4F64();
  return sub_1C5596D04();
}

uint64_t sub_1C54C4AA8(uint64_t result)
{
  v3 = result;
  if (result < 0)
  {
    __break(1u);
  }

  else
  {

    if (v3 > 0)
    {

      sub_1C5594D64();
      v1 = sub_1C5596734();
      sub_1C5594CF4();
      *(v1 + 16) = v3;

      v2 = v1;
    }

    else
    {
      v2 = MEMORY[0x1E69E7CC0];
    }

    sub_1C5594D64();
    return v2;
  }

  return result;
}

unint64_t type metadata accessor for OpenExternalURLOptionsKey(uint64_t a1)
{
  v5 = qword_1EC15D870;
  if (!qword_1EC15D870)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_1EC15D870);
      return v2;
    }
  }

  return v5;
}

unint64_t sub_1C54C4C30()
{
  v2 = qword_1EC15D850;
  if (!qword_1EC15D850)
  {
    type metadata accessor for OpenExternalURLOptionsKey(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15D850);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C54C4CB0()
{
  v2 = qword_1EC15D858;
  if (!qword_1EC15D858)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1EC15D858);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_1C54C4D14()
{
  v2 = qword_1EC15D868;
  if (!qword_1EC15D868)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15D860, &qword_1C55B3760);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15D868);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C54C4DB4()
{
  v2 = qword_1EC15D878;
  if (!qword_1EC15D878)
  {
    type metadata accessor for OpenExternalURLOptionsKey(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15D878);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C54C4E4C()
{
  v2 = qword_1EC15D880;
  if (!qword_1EC15D880)
  {
    type metadata accessor for OpenExternalURLOptionsKey(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15D880);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C54C4EE4()
{
  v2 = qword_1EC15D888;
  if (!qword_1EC15D888)
  {
    type metadata accessor for OpenExternalURLOptionsKey(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15D888);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C54C4F64()
{
  v2 = qword_1EC15D890;
  if (!qword_1EC15D890)
  {
    type metadata accessor for OpenExternalURLOptionsKey(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15D890);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1C54C4FE4(uint64_t a1, uint64_t a2)
{
  sub_1C5596E04();
  *v2 = "messageTitle";
  *(v2 + 8) = 12;
  *(v2 + 16) = 2;
  *(v2 + 24) = "messageSubTitle";
  *(v2 + 32) = 15;
  *(v2 + 40) = 2;
  *(v2 + 48) = "acceptButtonLabel";
  *(v2 + 56) = 17;
  *(v2 + 64) = 2;
  *(v2 + 72) = "declineButtonLabel";
  *(v2 + 80) = 18;
  *(v2 + 88) = 2;
  *(v2 + 96) = "acceptedButtonLabel";
  *(v2 + 104) = 19;
  *(v2 + 112) = 2;
  *(v2 + 120) = "declinedButtonLabel";
  *(v2 + 128) = 19;
  *(v2 + 136) = 2;
  *(v2 + 144) = "custodianID";
  *(v2 + 152) = 11;
  *(v2 + 160) = 2;
  *(v2 + 168) = "senderHandle";
  *(v2 + 176) = 12;
  *(v2 + 184) = 2;
  *(v2 + 192) = "unknown";
  *(v2 + 200) = 7;
  *(v2 + 208) = 2;
  sub_1C540FCD8();
  v6 = sub_1C5596D64();

  switch(v6)
  {
    case 0:
      v5 = 0;
LABEL_20:

      return v5;
    case 1:
      v5 = 1;
      goto LABEL_20;
    case 2:
      v5 = 2;
      goto LABEL_20;
    case 3:
      v5 = 3;
      goto LABEL_20;
    case 4:
      v5 = 4;
      goto LABEL_20;
    case 5:
      v5 = 5;
      goto LABEL_20;
    case 6:
      v5 = 6;
      goto LABEL_20;
    case 7:
      v5 = 7;
      goto LABEL_20;
    case 8:
      v5 = 8;
      goto LABEL_20;
  }

  return 9;
}

uint64_t sub_1C54C5314(char a1)
{
  switch(a1)
  {
    case 0:
      return sub_1C55965F4("messageTitle", 12, 1);
    case 1:
      return sub_1C55965F4("messageSubTitle", 15, 1);
    case 2:
      return sub_1C55965F4("acceptButtonLabel", 17, 1);
    case 3:
      return sub_1C55965F4("declineButtonLabel", 18, 1);
    case 4:
      return sub_1C55965F4("acceptedButtonLabel", 19, 1);
    case 5:
      return sub_1C55965F4("declinedButtonLabel", 19, 1);
    case 6:
      return sub_1C55965F4("custodianID", 11, 1);
    case 7:
      return sub_1C55965F4("senderHandle", 12, 1);
  }

  return sub_1C55965F4("unknown", 7, 1);
}

unint64_t sub_1C54C5594()
{
  v2 = qword_1EC15D898;
  if (!qword_1EC15D898)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15D898);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1C54C56E0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1C54C4FE4(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_1C54C5718@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1C54C5314(*v1);
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t InviteMessageDetails.title.getter()
{
  v2 = *v0;
  sub_1C5594CF4();
  return v2;
}

uint64_t InviteMessageDetails.title.setter(uint64_t a1, uint64_t a2)
{
  sub_1C5594CF4();
  *v2 = a1;
  v2[1] = a2;
}

uint64_t InviteMessageDetails.subTitle.getter()
{
  v2 = *(v0 + 16);
  sub_1C5594CF4();
  return v2;
}

uint64_t InviteMessageDetails.subTitle.setter(uint64_t a1, uint64_t a2)
{
  sub_1C5594CF4();
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
}

uint64_t InviteMessageDetails.acceptButttonLabel.getter()
{
  v2 = *(v0 + 32);
  sub_1C5594CF4();
  return v2;
}

uint64_t InviteMessageDetails.acceptButttonLabel.setter(uint64_t a1, uint64_t a2)
{
  sub_1C5594CF4();
  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
}

uint64_t InviteMessageDetails.declineButtonLabel.getter()
{
  v2 = *(v0 + 48);
  sub_1C5594CF4();
  return v2;
}

uint64_t InviteMessageDetails.declineButtonLabel.setter(uint64_t a1, uint64_t a2)
{
  sub_1C5594CF4();
  *(v2 + 48) = a1;
  *(v2 + 56) = a2;
}

uint64_t InviteMessageDetails.acceptedButtonLabel.getter()
{
  v2 = *(v0 + 64);
  sub_1C5594CF4();
  return v2;
}

uint64_t InviteMessageDetails.acceptedButtonLabel.setter(uint64_t a1, uint64_t a2)
{
  sub_1C5594CF4();
  *(v2 + 64) = a1;
  *(v2 + 72) = a2;
}

uint64_t InviteMessageDetails.declinedButtonLabel.getter()
{
  v2 = *(v0 + 80);
  sub_1C5594CF4();
  return v2;
}

uint64_t InviteMessageDetails.declinedButtonLabel.setter(uint64_t a1, uint64_t a2)
{
  sub_1C5594CF4();
  *(v2 + 80) = a1;
  *(v2 + 88) = a2;
}

uint64_t InviteMessageDetails.custodianUID.getter()
{
  v2 = *(v0 + 104);
  sub_1C5594CF4();
  return v2;
}

uint64_t InviteMessageDetails.custodianUID.setter(uint64_t a1, uint64_t a2)
{
  sub_1C5594CF4();
  *(v2 + 104) = a1;
  *(v2 + 112) = a2;
}

uint64_t InviteMessageDetails.senderHandle.getter()
{
  v2 = *(v0 + 128);
  sub_1C5594CF4();
  return v2;
}

uint64_t InviteMessageDetails.senderHandle.setter(uint64_t a1, uint64_t a2)
{
  sub_1C5594CF4();
  *(v2 + 128) = a1;
  *(v2 + 136) = a2;
}

uint64_t InviteMessageDetails.senderFullName.getter()
{
  v2 = *(v0 + 144);
  sub_1C5594CF4();
  return v2;
}

uint64_t InviteMessageDetails.senderFullName.setter(uint64_t a1, uint64_t a2)
{
  sub_1C5594CF4();
  *(v2 + 144) = a1;
  *(v2 + 152) = a2;
}

uint64_t InviteMessageDetails.senderFirstName.getter()
{
  v2 = *(v0 + 160);
  sub_1C5594CF4();
  return v2;
}

uint64_t InviteMessageDetails.senderFirstName.setter(uint64_t a1, uint64_t a2)
{
  sub_1C5594CF4();
  *(v2 + 160) = a1;
  *(v2 + 168) = a2;
}

uint64_t InviteMessageDetails.recipientHandle.getter()
{
  v2 = *(v0 + 176);
  sub_1C5594CF4();
  return v2;
}

uint64_t InviteMessageDetails.recipientHandle.setter(uint64_t a1, uint64_t a2)
{
  sub_1C5594CF4();
  *(v2 + 176) = a1;
  *(v2 + 184) = a2;
}

void __swiftcall InviteMessageDetails.init()(AppleAccountUI::InviteMessageDetails *__return_ptr retstr)
{
  memset(__b, 0, 0xC3uLL);
  __b[0] = sub_1C55965F4("");
  __b[1] = v1;
  __b[2] = sub_1C55965F4("", 0, 1);
  __b[3] = v2;
  __b[4] = sub_1C55965F4("", 0, 1);
  __b[5] = v3;
  __b[6] = sub_1C55965F4("", 0, 1);
  __b[7] = v4;
  __b[8] = sub_1C55965F4("", 0, 1);
  __b[9] = v5;
  __b[10] = sub_1C55965F4("", 0, 1);
  __b[11] = v6;
  LOBYTE(__b[12]) = 0;
  __b[13] = sub_1C55965F4("", 0, 1);
  __b[14] = v7;
  __b[15] = -1;
  __b[16] = sub_1C55965F4("", 0, 1);
  __b[17] = v8;
  __b[18] = sub_1C55965F4("", 0, 1);
  __b[19] = v9;
  __b[20] = sub_1C55965F4("", 0, 1);
  __b[21] = v10;
  __b[22] = sub_1C55965F4("", 0, 1);
  __b[23] = v11;
  LOWORD(__b[24]) = 0;
  BYTE2(__b[24]) = 0;
  memcpy(retstr, __b, 0xC3uLL);
}

uint64_t static InviteMessageDetails.detailsFrom(_:_:)(uint64_t a1, uint64_t a2, char a3)
{
  *(v3 + 541) = a3 & 1;
  *(v3 + 3600) = a2;
  *(v3 + 3592) = a1;
  *(v3 + 3360) = v3;
  *(v3 + 3368) = 0;
  *(v3 + 3816) = 0;
  *(v3 + 3392) = 0;
  memset((v3 + 944), 0, 0xC3uLL);
  *(v3 + 3408) = 0;
  *(v3 + 3456) = 0;
  *(v3 + 3464) = 0;
  *(v3 + 3200) = 0;
  *(v3 + 3208) = 0;
  *(v3 + 3488) = 0;
  *(v3 + 3496) = 0;
  *(v3 + 3248) = 0;
  *(v3 + 3256) = 0;
  *(v3 + 3264) = 0;
  *(v3 + 3272) = 0;
  *(v3 + 3512) = 0;
  *(v3 + 3296) = 0;
  *(v3 + 3304) = 0;
  *(v3 + 3536) = 0;
  *(v3 + 3312) = 0;
  *(v3 + 3320) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15D8A0, &qword_1C55B3990);
  *(v3 + 3608) = swift_task_alloc();
  v4 = sub_1C5594994();
  *(v3 + 3616) = v4;
  *(v3 + 3624) = *(v4 - 8);
  *(v3 + 3632) = swift_task_alloc();
  v5 = sub_1C5594C74();
  *(v3 + 3640) = v5;
  *(v3 + 3648) = *(v5 - 8);
  *(v3 + 3656) = swift_task_alloc();
  *(v3 + 3664) = swift_task_alloc();
  *(v3 + 3672) = swift_task_alloc();
  *(v3 + 3680) = swift_task_alloc();
  *(v3 + 3688) = swift_task_alloc();
  *(v3 + 3696) = swift_task_alloc();
  *(v3 + 3704) = swift_task_alloc();
  *(v3 + 3368) = a2;
  *(v3 + 3816) = a3 & 1;

  return MEMORY[0x1EEE6DFA0](sub_1C54C6860);
}

uint64_t sub_1C54C6860()
{
  *(v0 + 3360) = v0;
  v38 = sub_1C55946B4();
  if (v38)
  {
    *(v37 + 3576) = v38;
    sub_1C54D1DB4();
    *(v37 + 3584) = sub_1C5596414();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15D918, &qword_1C55B39E0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15D920, &qword_1C55B39E8);
    sub_1C54D6CC8();
    sub_1C55966A4();
    sub_1C541439C((v37 + 3576));
    v36 = *(v37 + 3376);
  }

  else
  {
    v36 = 0;
  }

  *(v37 + 3384) = v36;
  if (*(v37 + 3384))
  {
    v39 = *(v37 + 3384);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15D8A8, &unk_1C55B3998);
    sub_1C5596E04();
    sub_1C54D1DB4();
    v39 = sub_1C5596454();
    if (*(v37 + 3384))
    {
      sub_1C541439C((v37 + 3384));
    }
  }

  v1 = *(v37 + 3704);
  v32 = *(v37 + 3640);
  v31 = *(v37 + 3648);
  *(v37 + 3712) = v39;
  *(v37 + 3392) = v39;
  v2 = sub_1C5542A40();
  v3 = *(v31 + 16);
  *(v37 + 3720) = v3;
  *(v37 + 3728) = (v31 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v3(v1, v2, v32);
  oslog = sub_1C5594C54();
  v33 = sub_1C5596974();
  *(v37 + 3736) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15E1E0, &qword_1C55ADF60);
  v35 = sub_1C5596E04();
  if (os_log_type_enabled(oslog, v33))
  {
    buf = sub_1C5596A74();
    v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15C940, qword_1C55ADF70);
    v28 = sub_1C5419DC0(0, v26, v26);
    v29 = sub_1C5419DC0(0, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
    *(v37 + 3544) = buf;
    *(v37 + 3552) = v28;
    *(v37 + 3560) = v29;
    sub_1C5419E14(0, (v37 + 3544));
    sub_1C5419E14(0, (v37 + 3544));
    *(v37 + 3568) = v35;
    v30 = swift_task_alloc();
    v30[2] = v37 + 3544;
    v30[3] = v37 + 3552;
    v30[4] = v37 + 3560;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15E1F0, &unk_1C55AE2C0);
    sub_1C5419F0C();
    sub_1C55966B4();

    _os_log_impl(&dword_1C5355000, oslog, v33, "Building message..", buf, 2u);
    sub_1C5419E74(v28, 0, v26);
    sub_1C5419E74(v29, 0, MEMORY[0x1E69E7CA0] + 8);
    sub_1C5596A54();
  }

  *(v37 + 3744) = 0;
  v24 = *(v37 + 3704);
  v25 = *(v37 + 3640);
  v23 = *(v37 + 3648);
  v4 = MEMORY[0x1E69E5920](oslog);
  v5 = *(v23 + 8);
  *(v37 + 3752) = v5;
  *(v37 + 3760) = (v23 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v5(v24, v25, v4);
  InviteMessageDetails.init()((v37 + 944));
  *(v37 + 339) = 0;
  sub_1C54D1DB4();
  sub_1C5596464();
  v6 = *(v37 + 2984);
  *(v37 + 2992) = *(v37 + 2976);
  *(v37 + 3000) = v6;
  if (*(v37 + 3000))
  {
    v40 = *(v37 + 2992);
    v41 = *(v37 + 3000);
  }

  else
  {
    v40 = sub_1C55965F4("", 0, 1);
    v41 = v7;
    if (*(v37 + 3000))
    {
      sub_1C5401ECC(v37 + 2992);
    }
  }

  *(v37 + 944) = v40;
  *(v37 + 952) = v41;

  *(v37 + 340) = 1;
  sub_1C5596464();
  v8 = *(v37 + 3016);
  *(v37 + 3024) = *(v37 + 3008);
  *(v37 + 3032) = v8;
  if (*(v37 + 3032))
  {
    v42 = *(v37 + 3024);
    v43 = *(v37 + 3032);
  }

  else
  {
    v42 = sub_1C55965F4("", 0, 1);
    v43 = v9;
    if (*(v37 + 3032))
    {
      sub_1C5401ECC(v37 + 3024);
    }
  }

  *(v37 + 960) = v42;
  *(v37 + 968) = v43;

  *(v37 + 341) = 2;
  sub_1C5596464();
  v10 = *(v37 + 3048);
  *(v37 + 3056) = *(v37 + 3040);
  *(v37 + 3064) = v10;
  if (*(v37 + 3064))
  {
    v44 = *(v37 + 3056);
    v45 = *(v37 + 3064);
  }

  else
  {
    v44 = sub_1C55965F4("", 0, 1);
    v45 = v11;
    if (*(v37 + 3064))
    {
      sub_1C5401ECC(v37 + 3056);
    }
  }

  *(v37 + 976) = v44;
  *(v37 + 984) = v45;

  *(v37 + 342) = 3;
  sub_1C5596464();
  v12 = *(v37 + 3080);
  *(v37 + 3088) = *(v37 + 3072);
  *(v37 + 3096) = v12;
  if (*(v37 + 3096))
  {
    v46 = *(v37 + 3088);
    v47 = *(v37 + 3096);
  }

  else
  {
    v46 = sub_1C55965F4("", 0, 1);
    v47 = v13;
    if (*(v37 + 3096))
    {
      sub_1C5401ECC(v37 + 3088);
    }
  }

  *(v37 + 992) = v46;
  *(v37 + 1000) = v47;

  *(v37 + 343) = 4;
  sub_1C5596464();
  v14 = *(v37 + 3112);
  *(v37 + 3120) = *(v37 + 3104);
  *(v37 + 3128) = v14;
  if (*(v37 + 3128))
  {
    v48 = *(v37 + 3120);
    v49 = *(v37 + 3128);
  }

  else
  {
    v48 = sub_1C55965F4("", 0, 1);
    v49 = v15;
    if (*(v37 + 3128))
    {
      sub_1C5401ECC(v37 + 3120);
    }
  }

  *(v37 + 1008) = v48;
  *(v37 + 1016) = v49;

  *(v37 + 539) = 5;
  sub_1C5596464();
  v16 = *(v37 + 3144);
  *(v37 + 3152) = *(v37 + 3136);
  *(v37 + 3160) = v16;
  if (*(v37 + 3160))
  {
    v50 = *(v37 + 3152);
    v51 = *(v37 + 3160);
  }

  else
  {
    v50 = sub_1C55965F4("", 0, 1);
    v51 = v17;
    if (*(v37 + 3160))
    {
      sub_1C5401ECC(v37 + 3152);
    }
  }

  *(v37 + 1024) = v50;
  *(v37 + 1032) = v51;

  *(v37 + 540) = 6;
  sub_1C5596464();
  v18 = *(v37 + 3176);
  *(v37 + 3184) = *(v37 + 3168);
  *(v37 + 3192) = v18;
  if (*(v37 + 3192))
  {
    v52 = *(v37 + 3184);
    v53 = *(v37 + 3192);
  }

  else
  {
    v52 = sub_1C55965F4("", 0, 1);
    v53 = v19;
    if (*(v37 + 3192))
    {
      sub_1C5401ECC(v37 + 3184);
    }
  }

  *(v37 + 1048) = v52;
  *(v37 + 1056) = v53;

  *(v37 + 3768) = sub_1C5404B78();
  v22 = sub_1C5404B48();
  *(v37 + 3776) = v22;
  *(v37 + 16) = *(v37 + 3360);
  *(v37 + 56) = v37 + 3400;
  *(v37 + 24) = sub_1C54C76E8;
  v21 = swift_continuation_init();
  *(v37 + 2800) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15D8B8, &qword_1C55B39A8);
  *(v37 + 2776) = v21;
  *(v37 + 2744) = MEMORY[0x1E69E9820];
  *(v37 + 2752) = 1107296256;
  *(v37 + 2756) = 0;
  *(v37 + 2760) = sub_1C54D1F2C;
  *(v37 + 2768) = &block_descriptor_12;
  [v22 fetchTrustedContactsWithCompletion_];

  return MEMORY[0x1EEE6DEC8](v37 + 16);
}

uint64_t sub_1C54C76E8()
{
  v4 = *v0;
  v5 = *v0;
  *(v5 + 3360) = *v0;
  v1 = *(v4 + 48);
  *(v5 + 3784) = v1;
  if (v1)
  {
    v2 = sub_1C54CE590;
  }

  else
  {
    v2 = sub_1C54C785C;
  }

  return MEMORY[0x1EEE6DFA0](v2);
}

uint64_t sub_1C54C785C()
{
  v175 = v0;
  v1 = v0[472];
  v0[420] = v0;
  v159 = v0[425];
  v0[439] = v159;
  MEMORY[0x1E69E5920](v1);
  sub_1C5594CF4();
  v0[440] = v159;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15D900, &qword_1C55B39D0);
  sub_1C54D6C20();
  sub_1C5596914();
  v160 = v0[468];
  while (1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15D910, &qword_1C55B39D8);
    sub_1C5596C74();
    v157 = *(v158 + 3528);
    if (!v157)
    {
      break;
    }

    v148 = *(v158 + 3632);
    v149 = *(v158 + 3616);
    v147 = *(v158 + 3624);
    *(v158 + 3536) = v157;
    v150 = *(v158 + 1048);
    v154 = *(v158 + 1056);
    sub_1C5594CF4();
    v153 = [v157 custodianID];
    sub_1C5594974();
    v151 = sub_1C5594944();
    v152 = v2;
    (*(v147 + 8))(v148, v149);
    v155 = MEMORY[0x1C69471A0](v150, v154, v151, v152);

    MEMORY[0x1E69E5920](v153);

    if (v155)
    {
      v110 = *(v158 + 3720);
      v3 = *(v158 + 3696);
      v109 = *(v158 + 3640);
      v111 = sub_1C54D20A0(v157);
      v112 = v4;
      *(v158 + 3312) = v111;
      *(v158 + 3320) = v4;
      v5 = sub_1C5542A40();
      v110(v3, v5, v109);
      MEMORY[0x1E69E5928](v157, v6);
      v114 = swift_allocObject();
      *(v114 + 16) = v157;
      sub_1C5594CF4();
      v116 = swift_allocObject();
      *(v116 + 16) = v111;
      *(v116 + 24) = v112;
      MEMORY[0x1E69E5928](v157, v112);
      v118 = swift_allocObject();
      *(v118 + 16) = v157;
      MEMORY[0x1E69E5928](v157, v7);
      v120 = swift_allocObject();
      *(v120 + 16) = v157;
      MEMORY[0x1E69E5928](v157, v8);
      v122 = swift_allocObject();
      *(v122 + 16) = v157;
      MEMORY[0x1E69E5928](v157, v9);
      v113 = swift_allocObject();
      *(v113 + 16) = v157;

      v124 = swift_allocObject();
      *(v124 + 16) = sub_1C54D6A3C;
      *(v124 + 24) = v113;

      oslog = sub_1C5594C54();
      v146 = sub_1C5596974();
      v126 = swift_allocObject();
      *(v126 + 16) = 32;
      v127 = swift_allocObject();
      *(v127 + 16) = 8;
      v115 = swift_allocObject();
      *(v115 + 16) = sub_1C54D6CA8;
      *(v115 + 24) = v114;
      v128 = swift_allocObject();
      *(v128 + 16) = sub_1C5473EFC;
      *(v128 + 24) = v115;
      v129 = swift_allocObject();
      *(v129 + 16) = 32;
      v130 = swift_allocObject();
      *(v130 + 16) = 8;
      v117 = swift_allocObject();
      *(v117 + 16) = sub_1C5499100;
      *(v117 + 24) = v116;
      v131 = swift_allocObject();
      *(v131 + 16) = sub_1C5473EFC;
      *(v131 + 24) = v117;
      v132 = swift_allocObject();
      *(v132 + 16) = 32;
      v133 = swift_allocObject();
      *(v133 + 16) = 8;
      v119 = swift_allocObject();
      *(v119 + 16) = sub_1C54D6CB0;
      *(v119 + 24) = v118;
      v134 = swift_allocObject();
      *(v134 + 16) = sub_1C5473EFC;
      *(v134 + 24) = v119;
      v135 = swift_allocObject();
      *(v135 + 16) = 32;
      v136 = swift_allocObject();
      *(v136 + 16) = 8;
      v121 = swift_allocObject();
      *(v121 + 16) = sub_1C54D6CB8;
      *(v121 + 24) = v120;
      v137 = swift_allocObject();
      *(v137 + 16) = sub_1C5473EFC;
      *(v137 + 24) = v121;
      v138 = swift_allocObject();
      *(v138 + 16) = 32;
      v139 = swift_allocObject();
      *(v139 + 16) = 8;
      v123 = swift_allocObject();
      *(v123 + 16) = sub_1C54D6CC0;
      *(v123 + 24) = v122;
      v140 = swift_allocObject();
      *(v140 + 16) = sub_1C5473EFC;
      *(v140 + 24) = v123;
      v141 = swift_allocObject();
      *(v141 + 16) = 32;
      v142 = swift_allocObject();
      *(v142 + 16) = 8;
      v125 = swift_allocObject();
      *(v125 + 16) = sub_1C54D6A44;
      *(v125 + 24) = v124;
      v143 = swift_allocObject();
      *(v143 + 16) = sub_1C5473EFC;
      *(v143 + 24) = v125;
      sub_1C5596E04();
      v144 = v10;

      *v144 = sub_1C545C6D4;
      v144[1] = v126;

      v144[2] = sub_1C545C6D4;
      v144[3] = v127;

      v144[4] = sub_1C5473FA4;
      v144[5] = v128;

      v144[6] = sub_1C545C6D4;
      v144[7] = v129;

      v144[8] = sub_1C545C6D4;
      v144[9] = v130;

      v144[10] = sub_1C5473FA4;
      v144[11] = v131;

      v144[12] = sub_1C545C6D4;
      v144[13] = v132;

      v144[14] = sub_1C545C6D4;
      v144[15] = v133;

      v144[16] = sub_1C5473FA4;
      v144[17] = v134;

      v144[18] = sub_1C545C6D4;
      v144[19] = v135;

      v144[20] = sub_1C545C6D4;
      v144[21] = v136;

      v144[22] = sub_1C5473FA4;
      v144[23] = v137;

      v144[24] = sub_1C545C6D4;
      v144[25] = v138;

      v144[26] = sub_1C545C6D4;
      v144[27] = v139;

      v144[28] = sub_1C5473FA4;
      v144[29] = v140;

      v144[30] = sub_1C545C6D4;
      v144[31] = v141;

      v144[32] = sub_1C545C6D4;
      v144[33] = v142;

      v144[34] = sub_1C5473FA4;
      v144[35] = v143;
      sub_1C540FCD8();

      if (os_log_type_enabled(oslog, v146))
      {
        buf = sub_1C5596A74();
        v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15C940, qword_1C55ADF70);
        v107 = sub_1C5419DC0(0, v105, v105);
        v108 = sub_1C5419DC0(6, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
        v170 = buf;
        v171 = v107;
        v172 = v108;
        sub_1C5419E14(2, &v170);
        sub_1C5419E14(6, &v170);
        v173 = sub_1C545C6D4;
        v174 = v126;
        sub_1C5419E28(&v173, &v170, &v171, &v172);
        if (v160)
        {
        }

        v173 = sub_1C545C6D4;
        v174 = v127;
        sub_1C5419E28(&v173, &v170, &v171, &v172);
        v173 = sub_1C5473FA4;
        v174 = v128;
        sub_1C5419E28(&v173, &v170, &v171, &v172);
        v173 = sub_1C545C6D4;
        v174 = v129;
        sub_1C5419E28(&v173, &v170, &v171, &v172);
        v173 = sub_1C545C6D4;
        v174 = v130;
        sub_1C5419E28(&v173, &v170, &v171, &v172);
        v173 = sub_1C5473FA4;
        v174 = v131;
        sub_1C5419E28(&v173, &v170, &v171, &v172);
        v173 = sub_1C545C6D4;
        v174 = v132;
        sub_1C5419E28(&v173, &v170, &v171, &v172);
        v173 = sub_1C545C6D4;
        v174 = v133;
        sub_1C5419E28(&v173, &v170, &v171, &v172);
        v173 = sub_1C5473FA4;
        v174 = v134;
        sub_1C5419E28(&v173, &v170, &v171, &v172);
        v173 = sub_1C545C6D4;
        v174 = v135;
        sub_1C5419E28(&v173, &v170, &v171, &v172);
        v173 = sub_1C545C6D4;
        v174 = v136;
        sub_1C5419E28(&v173, &v170, &v171, &v172);
        v173 = sub_1C5473FA4;
        v174 = v137;
        sub_1C5419E28(&v173, &v170, &v171, &v172);
        v173 = sub_1C545C6D4;
        v174 = v138;
        sub_1C5419E28(&v173, &v170, &v171, &v172);
        v173 = sub_1C545C6D4;
        v174 = v139;
        sub_1C5419E28(&v173, &v170, &v171, &v172);
        v173 = sub_1C5473FA4;
        v174 = v140;
        sub_1C5419E28(&v173, &v170, &v171, &v172);
        v173 = sub_1C545C6D4;
        v174 = v141;
        sub_1C5419E28(&v173, &v170, &v171, &v172);
        v173 = sub_1C545C6D4;
        v174 = v142;
        sub_1C5419E28(&v173, &v170, &v171, &v172);
        v173 = sub_1C5473FA4;
        v174 = v143;
        sub_1C5419E28(&v173, &v170, &v171, &v172);
        _os_log_impl(&dword_1C5355000, oslog, v146, "trustedContact is a match message.isSender = true %s %s %s %s %s %s", buf, 0x3Eu);
        sub_1C5419E74(v107, 0, v105);
        sub_1C5419E74(v108, 6, MEMORY[0x1E69E7CA0] + 8);
        sub_1C5596A54();

        v103 = 0;
        v104 = 0;
      }

      else
      {

        v103 = v160;
        v104 = v156;
      }

      v100 = *(v158 + 3752);
      v98 = *(v158 + 3696);
      v99 = *(v158 + 3640);
      v12 = MEMORY[0x1E69E5920](oslog);
      v100(v98, v99, v12);
      v101 = [v157 handle];
      *(v158 + 1072) = sub_1C5596574();
      *(v158 + 1080) = v13;

      *(v158 + 1064) = [v157 status];
      *(v158 + 1136) = 1;
      v102 = [v157 displayName];
      if (v102)
      {
        v94 = sub_1C5596574();
        v95 = v15;
        *&v14 = MEMORY[0x1E69E5920](v102).n128_u64[0];
        v96 = v94;
        v97 = v95;
      }

      else
      {
        v96 = 0;
        v97 = 0;
      }

      *(v158 + 3328) = v96;
      *(v158 + 3336) = v97;
      if (*(v158 + 3336))
      {
        v16 = *(v158 + 3336);
        v166 = *(v158 + 3328);
        v167 = v16;
      }

      else
      {
        v166 = sub_1C55965F4("", 0, 1, v14);
        v167 = v17;
        if (*(v158 + 3336))
        {
          sub_1C5401ECC(v158 + 3328);
        }
      }

      v18 = v167;
      *(v158 + 1088) = v166;
      *(v158 + 1096) = v18;

      v93 = [v157 firstName];
      if (v93)
      {
        v89 = sub_1C5596574();
        v90 = v20;
        *&v19 = MEMORY[0x1E69E5920](v93).n128_u64[0];
        v91 = v89;
        v92 = v90;
      }

      else
      {
        v91 = 0;
        v92 = 0;
      }

      *(v158 + 3344) = v91;
      *(v158 + 3352) = v92;
      if (*(v158 + 3352))
      {
        v21 = *(v158 + 3352);
        v168 = *(v158 + 3344);
        v169 = v21;
      }

      else
      {
        v168 = sub_1C55965F4("", 0, 1, v19);
        v169 = v22;
        if (*(v158 + 3352))
        {
          sub_1C5401ECC(v158 + 3344);
        }
      }

      v23 = v169;
      *(v158 + 1104) = v168;
      *(v158 + 1112) = v23;

      v87 = v103;
      v88 = v104;
    }

    else
    {
      v87 = v160;
      v88 = v156;
    }

    MEMORY[0x1E69E5920](v157);
    v160 = v87;
    v156 = v88;
  }

  sub_1C541439C((v158 + 3296));

  *(v158 + 3792) = v160;
  if (*(v158 + 1136))
  {
    v59 = *(v158 + 3720);
    v24 = *(v158 + 3680);
    v58 = *(v158 + 3640);
    v25 = sub_1C5542A40();
    v59(v24, v25, v58);
    memcpy((v158 + 144), (v158 + 944), 0xC3uLL);
    sub_1C54D605C(v158 + 144, v158 + 1144);
    v60 = swift_allocObject();
    memcpy((v60 + 16), (v158 + 144), 0xC3uLL);
    memcpy((v158 + 344), (v158 + 944), 0xC3uLL);
    sub_1C54D605C(v158 + 344, v158 + 1344);
    v62 = swift_allocObject();
    memcpy((v62 + 16), (v158 + 344), 0xC3uLL);
    memcpy((v158 + 544), (v158 + 944), 0xC3uLL);
    sub_1C54D605C(v158 + 544, v158 + 1544);
    v64 = swift_allocObject();
    memcpy((v64 + 16), (v158 + 544), 0xC3uLL);
    memcpy((v158 + 744), (v158 + 944), 0xC3uLL);
    sub_1C54D605C(v158 + 744, v158 + 1744);
    v68 = swift_allocObject();
    memcpy((v68 + 16), (v158 + 744), 0xC3uLL);
    log = sub_1C5594C54();
    v84 = sub_1C5596974();
    v70 = swift_allocObject();
    *(v70 + 16) = 32;
    v71 = swift_allocObject();
    *(v71 + 16) = 8;
    v61 = swift_allocObject();
    *(v61 + 16) = sub_1C54D6234;
    *(v61 + 24) = v60;
    v72 = swift_allocObject();
    *(v72 + 16) = sub_1C5473EFC;
    *(v72 + 24) = v61;
    v73 = swift_allocObject();
    *(v73 + 16) = 32;
    v74 = swift_allocObject();
    *(v74 + 16) = 8;
    v63 = swift_allocObject();
    *(v63 + 16) = sub_1C54D623C;
    *(v63 + 24) = v62;
    v75 = swift_allocObject();
    *(v75 + 16) = sub_1C5473EFC;
    *(v75 + 24) = v63;
    v76 = swift_allocObject();
    *(v76 + 16) = 0;
    v77 = swift_allocObject();
    *(v77 + 16) = 4;
    v65 = swift_allocObject();
    *(v65 + 16) = sub_1C54D6244;
    *(v65 + 24) = v64;
    v66 = swift_allocObject();
    *(v66 + 16) = sub_1C54D66AC;
    *(v66 + 24) = v65;
    v67 = swift_allocObject();
    *(v67 + 16) = sub_1C54D66E0;
    *(v67 + 24) = v66;
    v78 = swift_allocObject();
    *(v78 + 16) = sub_1C54D6728;
    *(v78 + 24) = v67;
    v79 = swift_allocObject();
    *(v79 + 16) = 32;
    v80 = swift_allocObject();
    *(v80 + 16) = 8;
    v69 = swift_allocObject();
    *(v69 + 16) = sub_1C54D624C;
    *(v69 + 24) = v68;
    v81 = swift_allocObject();
    *(v81 + 16) = sub_1C5473EFC;
    *(v81 + 24) = v69;
    sub_1C5596E04();
    v82 = v26;

    *v82 = sub_1C545C6D4;
    v82[1] = v70;

    v82[2] = sub_1C545C6D4;
    v82[3] = v71;

    v82[4] = sub_1C5473FA4;
    v82[5] = v72;

    v82[6] = sub_1C545C6D4;
    v82[7] = v73;

    v82[8] = sub_1C545C6D4;
    v82[9] = v74;

    v82[10] = sub_1C5473FA4;
    v82[11] = v75;

    v82[12] = sub_1C545C6D4;
    v82[13] = v76;

    v82[14] = sub_1C545C6D4;
    v82[15] = v77;

    v82[16] = sub_1C54D6734;
    v82[17] = v78;

    v82[18] = sub_1C545C6D4;
    v82[19] = v79;

    v82[20] = sub_1C545C6D4;
    v82[21] = v80;

    v82[22] = sub_1C5473FA4;
    v82[23] = v81;
    sub_1C540FCD8();

    if (os_log_type_enabled(log, v84))
    {
      v55 = sub_1C5596A74();
      v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15C940, qword_1C55ADF70);
      v56 = sub_1C5419DC0(0, v54, v54);
      v57 = sub_1C5419DC0(3, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
      v161 = v55;
      v162 = v56;
      v163 = v57;
      sub_1C5419E14(2, &v161);
      sub_1C5419E14(4, &v161);
      v164 = sub_1C545C6D4;
      v165 = v70;
      sub_1C5419E28(&v164, &v161, &v162, &v163);
      if (v160)
      {
      }

      v164 = sub_1C545C6D4;
      v165 = v71;
      sub_1C5419E28(&v164, &v161, &v162, &v163);
      v164 = sub_1C5473FA4;
      v165 = v72;
      sub_1C5419E28(&v164, &v161, &v162, &v163);
      v164 = sub_1C545C6D4;
      v165 = v73;
      sub_1C5419E28(&v164, &v161, &v162, &v163);
      v164 = sub_1C545C6D4;
      v165 = v74;
      sub_1C5419E28(&v164, &v161, &v162, &v163);
      v164 = sub_1C5473FA4;
      v165 = v75;
      sub_1C5419E28(&v164, &v161, &v162, &v163);
      v164 = sub_1C545C6D4;
      v165 = v76;
      sub_1C5419E28(&v164, &v161, &v162, &v163);
      v164 = sub_1C545C6D4;
      v165 = v77;
      sub_1C5419E28(&v164, &v161, &v162, &v163);
      v164 = sub_1C54D6734;
      v165 = v78;
      sub_1C5419E28(&v164, &v161, &v162, &v163);
      v164 = sub_1C545C6D4;
      v165 = v79;
      sub_1C5419E28(&v164, &v161, &v162, &v163);
      v164 = sub_1C545C6D4;
      v165 = v80;
      sub_1C5419E28(&v164, &v161, &v162, &v163);
      v164 = sub_1C5473FA4;
      v165 = v81;
      sub_1C5419E28(&v164, &v161, &v162, &v163);
      _os_log_impl(&dword_1C5355000, log, v84, "trustedContact Message message.senderHandle %s , message.recipientHandle: %s , message.isSender : %{BOOL}d message.custodianUID :%s", v55, 0x26u);
      sub_1C5419E74(v56, 0, v54);
      sub_1C5419E74(v57, 3, MEMORY[0x1E69E7CA0] + 8);
      sub_1C5596A54();

      v53 = 0;
    }

    else
    {

      v53 = v160;
    }

    v51 = *(v158 + 3752);
    v49 = *(v158 + 3680);
    v50 = *(v158 + 3640);
    v52 = *(v158 + 541);
    v27 = MEMORY[0x1E69E5920](log);
    v51(v49, v50, v27);
    if (v52)
    {
      v45 = *(v158 + 3720);
      v28 = *(v158 + 3672);
      v44 = *(v158 + 3640);
      v29 = sub_1C5542A40();
      v45(v28, v29, v44);
      v47 = sub_1C5594C54();
      v46 = sub_1C5596974();
      v48 = sub_1C5596E04();
      if (os_log_type_enabled(v47, v46))
      {
        v40 = sub_1C5596A74();
        v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15C940, qword_1C55ADF70);
        v41 = sub_1C5419DC0(0, v39, v39);
        v42 = sub_1C5419DC0(0, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
        *(v158 + 3416) = v40;
        *(v158 + 3424) = v41;
        *(v158 + 3432) = v42;
        sub_1C5419E14(0, (v158 + 3416));
        sub_1C5419E14(0, (v158 + 3416));
        *(v158 + 3440) = v48;
        v43 = swift_task_alloc();
        v43[2] = v158 + 3416;
        v43[3] = v158 + 3424;
        v43[4] = v158 + 3432;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15E1F0, &unk_1C55AE2C0);
        sub_1C5419F0C();
        sub_1C55966B4();
        if (v53)
        {
        }

        _os_log_impl(&dword_1C5355000, v47, v46, "Message is in compose screen, return message with minimal details", v40, 2u);
        sub_1C5419E74(v41, 0, v39);
        sub_1C5419E74(v42, 0, MEMORY[0x1E69E7CA0] + 8);
        sub_1C5596A54();
      }

      else
      {
      }

      v37 = *(v158 + 3752);
      v35 = *(v158 + 3672);
      v36 = *(v158 + 3640);
      v38 = *(v158 + 3592);
      v30 = MEMORY[0x1E69E5920](v47);
      v37(v35, v36, v30);
      swift_beginAccess();
      memcpy((v158 + 2344), (v158 + 944), 0xC3uLL);
      sub_1C54D605C(v158 + 2344, v158 + 2544);
      swift_endAccess();
      v38[3] = &type metadata for InviteMessageDetails;
      v38[4] = &protocol witness table for InviteMessageDetails;
      v31 = swift_allocObject();
      *v38 = v31;
      memcpy((v31 + 16), (v158 + 2344), 0xC3uLL);
      sub_1C54D6820((v158 + 944));
    }

    else
    {
      v34 = *(v158 + 3592);
      swift_beginAccess();
      memcpy((v158 + 1944), (v158 + 944), 0xC3uLL);
      sub_1C54D605C(v158 + 1944, v158 + 2144);
      swift_endAccess();
      v34[3] = &type metadata for InviteMessageDetails;
      v34[4] = &protocol witness table for InviteMessageDetails;
      v32 = swift_allocObject();
      *v34 = v32;
      memcpy((v32 + 16), (v158 + 1944), 0xC3uLL);
      sub_1C54D6820((v158 + 944));
    }

    v33 = *(*(v158 + 3360) + 8);

    return v33();
  }

  else
  {
    v86 = sub_1C5404B48();
    *(v158 + 3800) = v86;
    *(v158 + 80) = *(v158 + 3360);
    *(v158 + 120) = v158 + 3448;
    *(v158 + 88) = sub_1C54CB748;
    v85 = swift_continuation_init();
    *(v158 + 2864) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15D8C0, &qword_1C55B39B0);
    *(v158 + 2840) = v85;
    *(v158 + 2808) = MEMORY[0x1E69E9820];
    *(v158 + 2816) = 1107296256;
    *(v158 + 2820) = 0;
    *(v158 + 2824) = sub_1C54D2B74;
    *(v158 + 2832) = &block_descriptor_113;
    [v86 fetchCustodianshipInfoWithCompletion_];

    return MEMORY[0x1EEE6DEC8](v158 + 80);
  }
}

uint64_t sub_1C54CB748()
{
  v4 = *v0;
  v5 = *v0;
  *(v5 + 3360) = *v0;
  v1 = *(v4 + 112);
  *(v5 + 3808) = v1;
  if (v1)
  {
    v2 = sub_1C54D0250;
  }

  else
  {
    v2 = sub_1C54CB8BC;
  }

  return MEMORY[0x1EEE6DFA0](v2);
}

uint64_t sub_1C54CB8BC()
{
  v150 = v0;
  v1 = v0[475];
  v0[420] = v0;
  v138 = v0[431];
  v0[433] = v138;
  MEMORY[0x1E69E5920](v1);
  sub_1C5594CF4();
  v0[434] = v138;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15D8C8, &qword_1C55B39B8);
  sub_1C54D6904();
  sub_1C5596914();
  v139 = v0[474];
  while (1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15D8D8, &qword_1C55B39C0);
    sub_1C5596C74();
    v136 = *(v137 + 3480);
    if (!v136)
    {
      break;
    }

    v130 = *(v137 + 3608);
    *(v137 + 3488) = v136;
    v127 = swift_allocObject();
    *(v137 + 3496) = v127 + 16;
    v128 = [v136 0x1FC0F9863];
    *(v127 + 16) = sub_1C5596574();
    *(v127 + 24) = v2;
    v133 = [v136 0x1FC0F9863];
    *(v137 + 3216) = sub_1C5596574();
    *(v137 + 3224) = v3;
    *(v137 + 3232) = sub_1C55965F4("mailto:", 7, 1);
    *(v137 + 3240) = v4;
    v5 = sub_1C55949C4();
    (*(*(v5 - 8) + 56))(v130, 1);
    v129 = sub_1C54141E8();
    sub_1C54D2CA8();
    v29 = v129;
    v131 = sub_1C5596AD4();
    v132 = v6;
    v134 = v7;
    sub_1C54D698C(v130);
    sub_1C5401ECC(v137 + 3232);
    sub_1C5401ECC(v137 + 3216);
    *&v8 = MEMORY[0x1E69E5920](v133).n128_u64[0];
    if ((v134 & 1) == 0)
    {
      *(v137 + 3264) = v131;
      *(v137 + 3272) = v132;
      v126 = [v136 ownerHandle];
      *(v137 + 3280) = sub_1C5596574();
      *(v137 + 3288) = v9;
      *(v137 + 3504) = v132;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15D8E8, &qword_1C55B39C8);
      sub_1C54D6B20();
      sub_1C54D6B98();
      sub_1C5596904();

      v124 = sub_1C5596674();
      v125 = v10;

      MEMORY[0x1E69E5920](v126);
      swift_beginAccess();
      *(v127 + 16) = v124;
      *(v127 + 24) = v125;

      swift_endAccess();
    }

    v116 = *(v137 + 3632);
    v117 = *(v137 + 3616);
    v115 = *(v137 + 3624);
    v112 = [v136 statusDescription];
    v113 = sub_1C5596574();
    v114 = v11;
    *(v137 + 3248) = v113;
    *(v137 + 3256) = v11;
    MEMORY[0x1E69E5920](v112);
    v118 = *(v137 + 1048);
    v122 = *(v137 + 1056);
    sub_1C5594CF4();
    v121 = [v136 custodianID];
    sub_1C5594974();
    v119 = sub_1C5594944();
    v120 = v12;
    (*(v115 + 8))(v116, v117);
    v123 = MEMORY[0x1C69471A0](v118, v122, v119, v120);

    MEMORY[0x1E69E5920](v121);

    if (v123)
    {
      v93 = *(v137 + 3720);
      v13 = *(v137 + 3688);
      v92 = *(v137 + 3640);
      v14 = sub_1C5542A40();
      v93(v13, v14, v92);

      sub_1C5594CF4();
      v96 = swift_allocObject();
      *(v96 + 16) = v113;
      *(v96 + 24) = v114;
      MEMORY[0x1E69E5928](v136, v15);
      v94 = swift_allocObject();
      *(v94 + 16) = v136;

      v98 = swift_allocObject();
      *(v98 + 16) = sub_1C54D6A3C;
      *(v98 + 24) = v94;

      oslog = sub_1C5594C54();
      v111 = sub_1C5596974();
      v100 = swift_allocObject();
      *(v100 + 16) = 32;
      v101 = swift_allocObject();
      *(v101 + 16) = 8;
      v95 = swift_allocObject();
      *(v95 + 16) = sub_1C54D6A34;
      *(v95 + 24) = v127;
      v102 = swift_allocObject();
      *(v102 + 16) = sub_1C5473EFC;
      *(v102 + 24) = v95;
      v103 = swift_allocObject();
      *(v103 + 16) = 32;
      v104 = swift_allocObject();
      *(v104 + 16) = 8;
      v97 = swift_allocObject();
      *(v97 + 16) = sub_1C5499100;
      *(v97 + 24) = v96;
      v105 = swift_allocObject();
      *(v105 + 16) = sub_1C5473EFC;
      *(v105 + 24) = v97;
      v106 = swift_allocObject();
      *(v106 + 16) = 32;
      v107 = swift_allocObject();
      *(v107 + 16) = 8;
      v99 = swift_allocObject();
      *(v99 + 16) = sub_1C54D6A44;
      *(v99 + 24) = v98;
      v108 = swift_allocObject();
      *(v108 + 16) = sub_1C5473EFC;
      *(v108 + 24) = v99;
      sub_1C5596E04();
      v109 = v16;

      *v109 = sub_1C545C6D4;
      v109[1] = v100;

      v109[2] = sub_1C545C6D4;
      v109[3] = v101;

      v109[4] = sub_1C5473FA4;
      v109[5] = v102;

      v109[6] = sub_1C545C6D4;
      v109[7] = v103;

      v109[8] = sub_1C545C6D4;
      v109[9] = v104;

      v109[10] = sub_1C5473FA4;
      v109[11] = v105;

      v109[12] = sub_1C545C6D4;
      v109[13] = v106;

      v109[14] = sub_1C545C6D4;
      v109[15] = v107;

      v109[16] = sub_1C5473FA4;
      v109[17] = v108;
      sub_1C540FCD8();

      if (os_log_type_enabled(oslog, v111))
      {
        buf = sub_1C5596A74();
        v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15C940, qword_1C55ADF70);
        v90 = sub_1C5419DC0(0, v88, v88);
        v91 = sub_1C5419DC0(3, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
        v145 = buf;
        v146 = v90;
        v147 = v91;
        sub_1C5419E14(2, &v145);
        sub_1C5419E14(3, &v145);
        v148 = sub_1C545C6D4;
        v149 = v100;
        sub_1C5419E28(&v148, &v145, &v146, &v147);
        if (v139)
        {
        }

        v148 = sub_1C545C6D4;
        v149 = v101;
        sub_1C5419E28(&v148, &v145, &v146, &v147);
        v148 = sub_1C5473FA4;
        v149 = v102;
        sub_1C5419E28(&v148, &v145, &v146, &v147);
        v148 = sub_1C545C6D4;
        v149 = v103;
        sub_1C5419E28(&v148, &v145, &v146, &v147);
        v148 = sub_1C545C6D4;
        v149 = v104;
        sub_1C5419E28(&v148, &v145, &v146, &v147);
        v148 = sub_1C5473FA4;
        v149 = v105;
        sub_1C5419E28(&v148, &v145, &v146, &v147);
        v148 = sub_1C545C6D4;
        v149 = v106;
        sub_1C5419E28(&v148, &v145, &v146, &v147);
        v148 = sub_1C545C6D4;
        v149 = v107;
        sub_1C5419E28(&v148, &v145, &v146, &v147);
        v148 = sub_1C5473FA4;
        v149 = v108;
        sub_1C5419E28(&v148, &v145, &v146, &v147);
        _os_log_impl(&dword_1C5355000, oslog, v111, "trustedContactOwner is a match %s %s %s", buf, 0x20u);
        sub_1C5419E74(v90, 0, v88);
        sub_1C5419E74(v91, 3, MEMORY[0x1E69E7CA0] + 8);
        sub_1C5596A54();

        v86 = 0;
        v87 = 0;
      }

      else
      {

        v86 = v139;
        v87 = v135;
      }

      v83 = *(v137 + 3752);
      v81 = *(v137 + 3688);
      v82 = *(v137 + 3640);
      v18 = MEMORY[0x1E69E5920](oslog);
      v83(v81, v82, v18);
      *(v137 + 1137) = 1;
      *(v137 + 1064) = [v136 status];
      v84 = v86;
      v85 = v87;
    }

    else
    {
      v84 = v139;
      v85 = v135;
    }

    MEMORY[0x1E69E5920](v136);
    v139 = v84;
    v135 = v85;
  }

  sub_1C541439C((v137 + 3200));

  v55 = *(v137 + 3720);
  v19 = *(v137 + 3680);
  v54 = *(v137 + 3640);
  v20 = sub_1C5542A40();
  v55(v19, v20, v54);
  memcpy((v137 + 144), (v137 + 944), 0xC3uLL);
  sub_1C54D605C(v137 + 144, v137 + 1144);
  v56 = swift_allocObject();
  memcpy((v56 + 16), (v137 + 144), 0xC3uLL);
  memcpy((v137 + 344), (v137 + 944), 0xC3uLL);
  sub_1C54D605C(v137 + 344, v137 + 1344);
  v58 = swift_allocObject();
  memcpy((v58 + 16), (v137 + 344), 0xC3uLL);
  memcpy((v137 + 544), (v137 + 944), 0xC3uLL);
  sub_1C54D605C(v137 + 544, v137 + 1544);
  v60 = swift_allocObject();
  memcpy((v60 + 16), (v137 + 544), 0xC3uLL);
  memcpy((v137 + 744), (v137 + 944), 0xC3uLL);
  sub_1C54D605C(v137 + 744, v137 + 1744);
  v64 = swift_allocObject();
  memcpy((v64 + 16), (v137 + 744), 0xC3uLL);
  log = sub_1C5594C54();
  v80 = sub_1C5596974();
  v66 = swift_allocObject();
  *(v66 + 16) = 32;
  v67 = swift_allocObject();
  *(v67 + 16) = 8;
  v57 = swift_allocObject();
  *(v57 + 16) = sub_1C54D6234;
  *(v57 + 24) = v56;
  v68 = swift_allocObject();
  *(v68 + 16) = sub_1C5473EFC;
  *(v68 + 24) = v57;
  v69 = swift_allocObject();
  *(v69 + 16) = 32;
  v70 = swift_allocObject();
  *(v70 + 16) = 8;
  v59 = swift_allocObject();
  *(v59 + 16) = sub_1C54D623C;
  *(v59 + 24) = v58;
  v71 = swift_allocObject();
  *(v71 + 16) = sub_1C5473EFC;
  *(v71 + 24) = v59;
  v72 = swift_allocObject();
  *(v72 + 16) = 0;
  v73 = swift_allocObject();
  *(v73 + 16) = 4;
  v61 = swift_allocObject();
  *(v61 + 16) = sub_1C54D6244;
  *(v61 + 24) = v60;
  v62 = swift_allocObject();
  *(v62 + 16) = sub_1C54D66AC;
  *(v62 + 24) = v61;
  v63 = swift_allocObject();
  *(v63 + 16) = sub_1C54D66E0;
  *(v63 + 24) = v62;
  v74 = swift_allocObject();
  *(v74 + 16) = sub_1C54D6728;
  *(v74 + 24) = v63;
  v75 = swift_allocObject();
  *(v75 + 16) = 32;
  v76 = swift_allocObject();
  *(v76 + 16) = 8;
  v65 = swift_allocObject();
  *(v65 + 16) = sub_1C54D624C;
  *(v65 + 24) = v64;
  v77 = swift_allocObject();
  *(v77 + 16) = sub_1C5473EFC;
  *(v77 + 24) = v65;
  sub_1C5596E04();
  v78 = v21;

  *v78 = sub_1C545C6D4;
  v78[1] = v66;

  v78[2] = sub_1C545C6D4;
  v78[3] = v67;

  v78[4] = sub_1C5473FA4;
  v78[5] = v68;

  v78[6] = sub_1C545C6D4;
  v78[7] = v69;

  v78[8] = sub_1C545C6D4;
  v78[9] = v70;

  v78[10] = sub_1C5473FA4;
  v78[11] = v71;

  v78[12] = sub_1C545C6D4;
  v78[13] = v72;

  v78[14] = sub_1C545C6D4;
  v78[15] = v73;

  v78[16] = sub_1C54D6734;
  v78[17] = v74;

  v78[18] = sub_1C545C6D4;
  v78[19] = v75;

  v78[20] = sub_1C545C6D4;
  v78[21] = v76;

  v78[22] = sub_1C5473FA4;
  v78[23] = v77;
  sub_1C540FCD8();

  if (os_log_type_enabled(log, v80))
  {
    v51 = sub_1C5596A74();
    v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15C940, qword_1C55ADF70);
    v52 = sub_1C5419DC0(0, v50, v50);
    v53 = sub_1C5419DC0(3, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
    v140 = v51;
    v141 = v52;
    v142 = v53;
    sub_1C5419E14(2, &v140);
    sub_1C5419E14(4, &v140);
    v143 = sub_1C545C6D4;
    v144 = v66;
    sub_1C5419E28(&v143, &v140, &v141, &v142);
    if (v139)
    {
    }

    v143 = sub_1C545C6D4;
    v144 = v67;
    sub_1C5419E28(&v143, &v140, &v141, &v142);
    v143 = sub_1C5473FA4;
    v144 = v68;
    sub_1C5419E28(&v143, &v140, &v141, &v142);
    v143 = sub_1C545C6D4;
    v144 = v69;
    sub_1C5419E28(&v143, &v140, &v141, &v142);
    v143 = sub_1C545C6D4;
    v144 = v70;
    sub_1C5419E28(&v143, &v140, &v141, &v142);
    v143 = sub_1C5473FA4;
    v144 = v71;
    sub_1C5419E28(&v143, &v140, &v141, &v142);
    v143 = sub_1C545C6D4;
    v144 = v72;
    sub_1C5419E28(&v143, &v140, &v141, &v142);
    v143 = sub_1C545C6D4;
    v144 = v73;
    sub_1C5419E28(&v143, &v140, &v141, &v142);
    v143 = sub_1C54D6734;
    v144 = v74;
    sub_1C5419E28(&v143, &v140, &v141, &v142);
    v143 = sub_1C545C6D4;
    v144 = v75;
    sub_1C5419E28(&v143, &v140, &v141, &v142);
    v143 = sub_1C545C6D4;
    v144 = v76;
    sub_1C5419E28(&v143, &v140, &v141, &v142);
    v143 = sub_1C5473FA4;
    v144 = v77;
    sub_1C5419E28(&v143, &v140, &v141, &v142);
    _os_log_impl(&dword_1C5355000, log, v80, "trustedContact Message message.senderHandle %s , message.recipientHandle: %s , message.isSender : %{BOOL}d message.custodianUID :%s", v51, 0x26u);
    sub_1C5419E74(v52, 0, v50);
    sub_1C5419E74(v53, 3, MEMORY[0x1E69E7CA0] + 8);
    sub_1C5596A54();

    v49 = 0;
  }

  else
  {

    v49 = v139;
  }

  v47 = *(v137 + 3752);
  v45 = *(v137 + 3680);
  v46 = *(v137 + 3640);
  v48 = *(v137 + 541);
  v22 = MEMORY[0x1E69E5920](log);
  v47(v45, v46, v22);
  if (v48)
  {
    v41 = *(v137 + 3720);
    v23 = *(v137 + 3672);
    v40 = *(v137 + 3640);
    v24 = sub_1C5542A40();
    v41(v23, v24, v40);
    v43 = sub_1C5594C54();
    v42 = sub_1C5596974();
    v44 = sub_1C5596E04();
    if (os_log_type_enabled(v43, v42))
    {
      v36 = sub_1C5596A74();
      v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15C940, qword_1C55ADF70);
      v37 = sub_1C5419DC0(0, v35, v35);
      v38 = sub_1C5419DC0(0, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
      *(v137 + 3416) = v36;
      *(v137 + 3424) = v37;
      *(v137 + 3432) = v38;
      sub_1C5419E14(0, (v137 + 3416));
      sub_1C5419E14(0, (v137 + 3416));
      *(v137 + 3440) = v44;
      v39 = swift_task_alloc();
      v39[2] = v137 + 3416;
      v39[3] = v137 + 3424;
      v39[4] = v137 + 3432;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15E1F0, &unk_1C55AE2C0);
      sub_1C5419F0C();
      sub_1C55966B4();
      if (v49)
      {
      }

      _os_log_impl(&dword_1C5355000, v43, v42, "Message is in compose screen, return message with minimal details", v36, 2u);
      sub_1C5419E74(v37, 0, v35);
      sub_1C5419E74(v38, 0, MEMORY[0x1E69E7CA0] + 8);
      sub_1C5596A54();
    }

    else
    {
    }

    v33 = *(v137 + 3752);
    v31 = *(v137 + 3672);
    v32 = *(v137 + 3640);
    v34 = *(v137 + 3592);
    v25 = MEMORY[0x1E69E5920](v43);
    v33(v31, v32, v25);
    swift_beginAccess();
    memcpy((v137 + 2344), (v137 + 944), 0xC3uLL);
    sub_1C54D605C(v137 + 2344, v137 + 2544);
    swift_endAccess();
    v34[3] = &type metadata for InviteMessageDetails;
    v34[4] = &protocol witness table for InviteMessageDetails;
    v26 = swift_allocObject();
    *v34 = v26;
    memcpy((v26 + 16), (v137 + 2344), 0xC3uLL);
    sub_1C54D6820((v137 + 944));
  }

  else
  {
    v30 = *(v137 + 3592);
    swift_beginAccess();
    memcpy((v137 + 1944), (v137 + 944), 0xC3uLL);
    sub_1C54D605C(v137 + 1944, v137 + 2144);
    swift_endAccess();
    v30[3] = &type metadata for InviteMessageDetails;
    v30[4] = &protocol witness table for InviteMessageDetails;
    v27 = swift_allocObject();
    *v30 = v27;
    memcpy((v27 + 16), (v137 + 1944), 0xC3uLL);
    sub_1C54D6820((v137 + 944));
  }

  v28 = *(*(v137 + 3360) + 8);

  return v28();
}

uint64_t sub_1C54CE590(uint64_t a1)
{
  v102 = v1;
  v83 = v1[473];
  v80 = v1[472];
  v82 = v1[465];
  v79 = v1[458];
  v81 = v1[455];
  v1[420] = v1;
  swift_willThrow();
  MEMORY[0x1E69E5920](v80);
  v2 = v83;
  v1[426] = v83;
  v3 = sub_1C5542A40();
  v82(v79, v3, v81);
  v4 = v83;
  v84 = swift_allocObject();
  *(v84 + 16) = v83;
  oslog = sub_1C5594C54();
  v91 = sub_1C5596954();
  v86 = swift_allocObject();
  *(v86 + 16) = 32;
  v87 = swift_allocObject();
  *(v87 + 16) = 8;
  v85 = swift_allocObject();
  *(v85 + 16) = sub_1C54D2B6C;
  *(v85 + 24) = v84;
  v88 = swift_allocObject();
  *(v88 + 16) = sub_1C5473EFC;
  *(v88 + 24) = v85;
  sub_1C5596E04();
  v89 = v5;

  *v89 = sub_1C545C6D4;
  v89[1] = v86;

  v89[2] = sub_1C545C6D4;
  v89[3] = v87;

  v89[4] = sub_1C5473FA4;
  v89[5] = v88;
  sub_1C540FCD8();

  if (os_log_type_enabled(oslog, v91))
  {
    v23 = sub_1C5596A74();
    v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15C940, qword_1C55ADF70);
    v24 = sub_1C5419DC0(0, v22, v22);
    v25 = sub_1C5419DC0(1, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
    v97 = v23;
    v98 = v24;
    v99 = v25;
    sub_1C5419E14(2, &v97);
    sub_1C5419E14(1, &v97);
    v100 = sub_1C545C6D4;
    v101 = v86;
    sub_1C5419E28(&v100, &v97, &v98, &v99);
    v100 = sub_1C545C6D4;
    v101 = v87;
    sub_1C5419E28(&v100, &v97, &v98, &v99);
    v100 = sub_1C5473FA4;
    v101 = v88;
    sub_1C5419E28(&v100, &v97, &v98, &v99);
    _os_log_impl(&dword_1C5355000, oslog, v91, "fetchTrustedContacts : %s", v23, 0xCu);
    sub_1C5419E74(v24, 0, v22);
    sub_1C5419E74(v25, 1, MEMORY[0x1E69E7CA0] + 8);
    sub_1C5596A54();
  }

  else
  {
  }

  v21 = *(v78 + 3784);
  v20 = *(v78 + 3752);
  v18 = *(v78 + 3664);
  v19 = *(v78 + 3640);
  v16 = MEMORY[0x1E69E5920](oslog);
  v20(v18, v19, v16);

  *(v78 + 3792) = 0;
  if (*(v78 + 1136))
  {
    v50 = *(v78 + 3720);
    v6 = *(v78 + 3680);
    v49 = *(v78 + 3640);
    v7 = sub_1C5542A40();
    v50(v6, v7, v49);
    memcpy((v78 + 144), (v78 + 944), 0xC3uLL);
    sub_1C54D605C(v78 + 144, v78 + 1144);
    v51 = swift_allocObject();
    memcpy((v51 + 16), (v78 + 144), 0xC3uLL);
    memcpy((v78 + 344), (v78 + 944), 0xC3uLL);
    sub_1C54D605C(v78 + 344, v78 + 1344);
    v53 = swift_allocObject();
    memcpy((v53 + 16), (v78 + 344), 0xC3uLL);
    memcpy((v78 + 544), (v78 + 944), 0xC3uLL);
    sub_1C54D605C(v78 + 544, v78 + 1544);
    v55 = swift_allocObject();
    memcpy((v55 + 16), (v78 + 544), 0xC3uLL);
    memcpy((v78 + 744), (v78 + 944), 0xC3uLL);
    sub_1C54D605C(v78 + 744, v78 + 1744);
    v59 = swift_allocObject();
    memcpy((v59 + 16), (v78 + 744), 0xC3uLL);
    log = sub_1C5594C54();
    v75 = sub_1C5596974();
    v61 = swift_allocObject();
    *(v61 + 16) = 32;
    v62 = swift_allocObject();
    *(v62 + 16) = 8;
    v52 = swift_allocObject();
    *(v52 + 16) = sub_1C54D6234;
    *(v52 + 24) = v51;
    v63 = swift_allocObject();
    *(v63 + 16) = sub_1C5473EFC;
    *(v63 + 24) = v52;
    v64 = swift_allocObject();
    *(v64 + 16) = 32;
    v65 = swift_allocObject();
    *(v65 + 16) = 8;
    v54 = swift_allocObject();
    *(v54 + 16) = sub_1C54D623C;
    *(v54 + 24) = v53;
    v66 = swift_allocObject();
    *(v66 + 16) = sub_1C5473EFC;
    *(v66 + 24) = v54;
    v67 = swift_allocObject();
    *(v67 + 16) = 0;
    v68 = swift_allocObject();
    *(v68 + 16) = 4;
    v56 = swift_allocObject();
    *(v56 + 16) = sub_1C54D6244;
    *(v56 + 24) = v55;
    v57 = swift_allocObject();
    *(v57 + 16) = sub_1C54D66AC;
    *(v57 + 24) = v56;
    v58 = swift_allocObject();
    *(v58 + 16) = sub_1C54D66E0;
    *(v58 + 24) = v57;
    v69 = swift_allocObject();
    *(v69 + 16) = sub_1C54D6728;
    *(v69 + 24) = v58;
    v70 = swift_allocObject();
    *(v70 + 16) = 32;
    v71 = swift_allocObject();
    *(v71 + 16) = 8;
    v60 = swift_allocObject();
    *(v60 + 16) = sub_1C54D624C;
    *(v60 + 24) = v59;
    v72 = swift_allocObject();
    *(v72 + 16) = sub_1C5473EFC;
    *(v72 + 24) = v60;
    sub_1C5596E04();
    v73 = v8;

    *v73 = sub_1C545C6D4;
    v73[1] = v61;

    v73[2] = sub_1C545C6D4;
    v73[3] = v62;

    v73[4] = sub_1C5473FA4;
    v73[5] = v63;

    v73[6] = sub_1C545C6D4;
    v73[7] = v64;

    v73[8] = sub_1C545C6D4;
    v73[9] = v65;

    v73[10] = sub_1C5473FA4;
    v73[11] = v66;

    v73[12] = sub_1C545C6D4;
    v73[13] = v67;

    v73[14] = sub_1C545C6D4;
    v73[15] = v68;

    v73[16] = sub_1C54D6734;
    v73[17] = v69;

    v73[18] = sub_1C545C6D4;
    v73[19] = v70;

    v73[20] = sub_1C545C6D4;
    v73[21] = v71;

    v73[22] = sub_1C5473FA4;
    v73[23] = v72;
    sub_1C540FCD8();

    if (os_log_type_enabled(log, v75))
    {
      buf = sub_1C5596A74();
      v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15C940, qword_1C55ADF70);
      v47 = sub_1C5419DC0(0, v45, v45);
      v48 = sub_1C5419DC0(3, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
      v92 = buf;
      v93 = v47;
      v94 = v48;
      sub_1C5419E14(2, &v92);
      sub_1C5419E14(4, &v92);
      v95 = sub_1C545C6D4;
      v96 = v61;
      sub_1C5419E28(&v95, &v92, &v93, &v94);
      v95 = sub_1C545C6D4;
      v96 = v62;
      sub_1C5419E28(&v95, &v92, &v93, &v94);
      v95 = sub_1C5473FA4;
      v96 = v63;
      sub_1C5419E28(&v95, &v92, &v93, &v94);
      v95 = sub_1C545C6D4;
      v96 = v64;
      sub_1C5419E28(&v95, &v92, &v93, &v94);
      v95 = sub_1C545C6D4;
      v96 = v65;
      sub_1C5419E28(&v95, &v92, &v93, &v94);
      v95 = sub_1C5473FA4;
      v96 = v66;
      sub_1C5419E28(&v95, &v92, &v93, &v94);
      v95 = sub_1C545C6D4;
      v96 = v67;
      sub_1C5419E28(&v95, &v92, &v93, &v94);
      v95 = sub_1C545C6D4;
      v96 = v68;
      sub_1C5419E28(&v95, &v92, &v93, &v94);
      v95 = sub_1C54D6734;
      v96 = v69;
      sub_1C5419E28(&v95, &v92, &v93, &v94);
      v95 = sub_1C545C6D4;
      v96 = v70;
      sub_1C5419E28(&v95, &v92, &v93, &v94);
      v95 = sub_1C545C6D4;
      v96 = v71;
      sub_1C5419E28(&v95, &v92, &v93, &v94);
      v95 = sub_1C5473FA4;
      v96 = v72;
      sub_1C5419E28(&v95, &v92, &v93, &v94);
      _os_log_impl(&dword_1C5355000, log, v75, "trustedContact Message message.senderHandle %s , message.recipientHandle: %s , message.isSender : %{BOOL}d message.custodianUID :%s", buf, 0x26u);
      sub_1C5419E74(v47, 0, v45);
      sub_1C5419E74(v48, 3, MEMORY[0x1E69E7CA0] + 8);
      sub_1C5596A54();
    }

    else
    {
    }

    v43 = *(v78 + 3752);
    v41 = *(v78 + 3680);
    v42 = *(v78 + 3640);
    v44 = *(v78 + 541);
    v9 = MEMORY[0x1E69E5920](log);
    v43(v41, v42, v9);
    if (v44)
    {
      v37 = *(v78 + 3720);
      v10 = *(v78 + 3672);
      v36 = *(v78 + 3640);
      v11 = sub_1C5542A40();
      v37(v10, v11, v36);
      v39 = sub_1C5594C54();
      v38 = sub_1C5596974();
      v40 = sub_1C5596E04();
      if (os_log_type_enabled(v39, v38))
      {
        v32 = sub_1C5596A74();
        v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15C940, qword_1C55ADF70);
        v33 = sub_1C5419DC0(0, v31, v31);
        v34 = sub_1C5419DC0(0, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
        *(v78 + 3416) = v32;
        *(v78 + 3424) = v33;
        *(v78 + 3432) = v34;
        sub_1C5419E14(0, (v78 + 3416));
        sub_1C5419E14(0, (v78 + 3416));
        *(v78 + 3440) = v40;
        v35 = swift_task_alloc();
        v35[2] = v78 + 3416;
        v35[3] = v78 + 3424;
        v35[4] = v78 + 3432;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15E1F0, &unk_1C55AE2C0);
        sub_1C5419F0C();
        sub_1C55966B4();

        _os_log_impl(&dword_1C5355000, v39, v38, "Message is in compose screen, return message with minimal details", v32, 2u);
        sub_1C5419E74(v33, 0, v31);
        sub_1C5419E74(v34, 0, MEMORY[0x1E69E7CA0] + 8);
        sub_1C5596A54();
      }

      v29 = *(v78 + 3752);
      v27 = *(v78 + 3672);
      v28 = *(v78 + 3640);
      v30 = *(v78 + 3592);
      v12 = MEMORY[0x1E69E5920](v39);
      v29(v27, v28, v12);
      swift_beginAccess();
      memcpy((v78 + 2344), (v78 + 944), 0xC3uLL);
      sub_1C54D605C(v78 + 2344, v78 + 2544);
      swift_endAccess();
      v30[3] = &type metadata for InviteMessageDetails;
      v30[4] = &protocol witness table for InviteMessageDetails;
      v13 = swift_allocObject();
      *v30 = v13;
      memcpy((v13 + 16), (v78 + 2344), 0xC3uLL);
      sub_1C54D6820((v78 + 944));
    }

    else
    {
      v26 = *(v78 + 3592);
      swift_beginAccess();
      memcpy((v78 + 1944), (v78 + 944), 0xC3uLL);
      sub_1C54D605C(v78 + 1944, v78 + 2144);
      swift_endAccess();
      v26[3] = &type metadata for InviteMessageDetails;
      v26[4] = &protocol witness table for InviteMessageDetails;
      v14 = swift_allocObject();
      *v26 = v14;
      memcpy((v14 + 16), (v78 + 1944), 0xC3uLL);
      sub_1C54D6820((v78 + 944));
    }

    v15 = *(*(v78 + 3360) + 8);

    return v15();
  }

  else
  {
    v77 = sub_1C5404B48();
    *(v78 + 3800) = v77;
    *(v78 + 80) = *(v78 + 3360);
    *(v78 + 120) = v78 + 3448;
    *(v78 + 88) = sub_1C54CB748;
    v76 = swift_continuation_init();
    *(v78 + 2864) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15D8C0, &qword_1C55B39B0);
    *(v78 + 2840) = v76;
    *(v78 + 2808) = MEMORY[0x1E69E9820];
    *(v78 + 2816) = 1107296256;
    *(v78 + 2820) = 0;
    *(v78 + 2824) = sub_1C54D2B74;
    *(v78 + 2832) = &block_descriptor_113;
    [v77 fetchCustodianshipInfoWithCompletion_];

    return MEMORY[0x1EEE6DEC8](v78 + 80);
  }
}

uint64_t sub_1C54D0250(uint64_t a1)
{
  v100 = v1;
  v81 = v1[476];
  v78 = v1[475];
  v80 = v1[465];
  v77 = v1[457];
  v79 = v1[455];
  v1[420] = v1;
  swift_willThrow();
  MEMORY[0x1E69E5920](v78);
  v2 = v81;
  v1[432] = v81;
  v3 = sub_1C5542A40();
  v80(v77, v3, v79);
  v4 = v81;
  v82 = swift_allocObject();
  *(v82 + 16) = v81;
  oslog = sub_1C5594C54();
  v89 = sub_1C5596954();
  v84 = swift_allocObject();
  *(v84 + 16) = 32;
  v85 = swift_allocObject();
  *(v85 + 16) = 8;
  v83 = swift_allocObject();
  *(v83 + 16) = sub_1C54D2B6C;
  *(v83 + 24) = v82;
  v86 = swift_allocObject();
  *(v86 + 16) = sub_1C5473EFC;
  *(v86 + 24) = v83;
  sub_1C5596E04();
  v87 = v5;

  *v87 = sub_1C545C6D4;
  v87[1] = v84;

  v87[2] = sub_1C545C6D4;
  v87[3] = v85;

  v87[4] = sub_1C5473FA4;
  v87[5] = v86;
  sub_1C540FCD8();

  if (os_log_type_enabled(oslog, v89))
  {
    v36 = sub_1C5596A74();
    v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15C940, qword_1C55ADF70);
    v37 = sub_1C5419DC0(0, v35, v35);
    v38 = sub_1C5419DC0(1, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
    v95 = v36;
    v96 = v37;
    v97 = v38;
    sub_1C5419E14(2, &v95);
    sub_1C5419E14(1, &v95);
    v98 = sub_1C545C6D4;
    v99 = v84;
    sub_1C5419E28(&v98, &v95, &v96, &v97);
    v98 = sub_1C545C6D4;
    v99 = v85;
    sub_1C5419E28(&v98, &v95, &v96, &v97);
    v98 = sub_1C5473FA4;
    v99 = v86;
    sub_1C5419E28(&v98, &v95, &v96, &v97);
    _os_log_impl(&dword_1C5355000, oslog, v89, "fetchMyCustodianshipOwners : %s", v36, 0xCu);
    sub_1C5419E74(v37, 0, v35);
    sub_1C5419E74(v38, 1, MEMORY[0x1E69E7CA0] + 8);
    sub_1C5596A54();
  }

  else
  {
  }

  v21 = *(v76 + 3808);
  v20 = *(v76 + 3752);
  v18 = *(v76 + 3656);
  v19 = *(v76 + 3640);
  v14 = MEMORY[0x1E69E5920](oslog);
  v20(v18, v19, v14);

  v23 = *(v76 + 3720);
  v15 = *(v76 + 3680);
  v22 = *(v76 + 3640);
  v16 = sub_1C5542A40();
  v23(v15, v16, v22);
  memcpy((v76 + 144), (v76 + 944), 0xC3uLL);
  sub_1C54D605C(v76 + 144, v76 + 1144);
  v24 = swift_allocObject();
  memcpy((v24 + 16), (v76 + 144), 0xC3uLL);
  memcpy((v76 + 344), (v76 + 944), 0xC3uLL);
  sub_1C54D605C(v76 + 344, v76 + 1344);
  v26 = swift_allocObject();
  memcpy((v26 + 16), (v76 + 344), 0xC3uLL);
  memcpy((v76 + 544), (v76 + 944), 0xC3uLL);
  sub_1C54D605C(v76 + 544, v76 + 1544);
  v28 = swift_allocObject();
  memcpy((v28 + 16), (v76 + 544), 0xC3uLL);
  memcpy((v76 + 744), (v76 + 944), 0xC3uLL);
  sub_1C54D605C(v76 + 744, v76 + 1744);
  v32 = swift_allocObject();
  memcpy((v32 + 16), (v76 + 744), 0xC3uLL);
  log = sub_1C5594C54();
  v59 = sub_1C5596974();
  v75 = swift_allocObject();
  *(v75 + 16) = 32;
  v60 = swift_allocObject();
  *(v60 + 16) = 8;
  v25 = swift_allocObject();
  *(v25 + 16) = sub_1C54D6234;
  *(v25 + 24) = v24;
  v61 = swift_allocObject();
  *(v61 + 16) = sub_1C5473EFC;
  *(v61 + 24) = v25;
  v62 = swift_allocObject();
  *(v62 + 16) = 32;
  v63 = swift_allocObject();
  *(v63 + 16) = 8;
  v27 = swift_allocObject();
  *(v27 + 16) = sub_1C54D623C;
  *(v27 + 24) = v26;
  v64 = swift_allocObject();
  *(v64 + 16) = sub_1C5473EFC;
  *(v64 + 24) = v27;
  v65 = swift_allocObject();
  *(v65 + 16) = 0;
  v66 = swift_allocObject();
  *(v66 + 16) = 4;
  v29 = swift_allocObject();
  *(v29 + 16) = sub_1C54D6244;
  *(v29 + 24) = v28;
  v30 = swift_allocObject();
  *(v30 + 16) = sub_1C54D66AC;
  *(v30 + 24) = v29;
  v31 = swift_allocObject();
  *(v31 + 16) = sub_1C54D66E0;
  *(v31 + 24) = v30;
  v67 = swift_allocObject();
  *(v67 + 16) = sub_1C54D6728;
  *(v67 + 24) = v31;
  v68 = swift_allocObject();
  *(v68 + 16) = 32;
  v69 = swift_allocObject();
  *(v69 + 16) = 8;
  v33 = swift_allocObject();
  *(v33 + 16) = sub_1C54D624C;
  *(v33 + 24) = v32;
  v70 = swift_allocObject();
  *(v70 + 16) = sub_1C5473EFC;
  *(v70 + 24) = v33;
  sub_1C5596E04();
  v34 = v17;

  *v34 = sub_1C545C6D4;
  v34[1] = v75;

  v34[2] = sub_1C545C6D4;
  v34[3] = v60;

  v34[4] = sub_1C5473FA4;
  v34[5] = v61;

  v34[6] = sub_1C545C6D4;
  v34[7] = v62;

  v34[8] = sub_1C545C6D4;
  v34[9] = v63;

  v34[10] = sub_1C5473FA4;
  v34[11] = v64;

  v34[12] = sub_1C545C6D4;
  v34[13] = v65;

  v34[14] = sub_1C545C6D4;
  v34[15] = v66;

  v34[16] = sub_1C54D6734;
  v34[17] = v67;

  v34[18] = sub_1C545C6D4;
  v34[19] = v68;

  v34[20] = sub_1C545C6D4;
  v34[21] = v69;

  v34[22] = sub_1C5473FA4;
  v34[23] = v70;
  sub_1C540FCD8();

  if (os_log_type_enabled(log, v59))
  {
    buf = sub_1C5596A74();
    v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15C940, qword_1C55ADF70);
    v73 = sub_1C5419DC0(0, v71, v71);
    v74 = sub_1C5419DC0(3, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
    v90 = buf;
    v91 = v73;
    v92 = v74;
    sub_1C5419E14(2, &v90);
    sub_1C5419E14(4, &v90);
    v93 = sub_1C545C6D4;
    v94 = v75;
    sub_1C5419E28(&v93, &v90, &v91, &v92);
    v93 = sub_1C545C6D4;
    v94 = v60;
    sub_1C5419E28(&v93, &v90, &v91, &v92);
    v93 = sub_1C5473FA4;
    v94 = v61;
    sub_1C5419E28(&v93, &v90, &v91, &v92);
    v93 = sub_1C545C6D4;
    v94 = v62;
    sub_1C5419E28(&v93, &v90, &v91, &v92);
    v93 = sub_1C545C6D4;
    v94 = v63;
    sub_1C5419E28(&v93, &v90, &v91, &v92);
    v93 = sub_1C5473FA4;
    v94 = v64;
    sub_1C5419E28(&v93, &v90, &v91, &v92);
    v93 = sub_1C545C6D4;
    v94 = v65;
    sub_1C5419E28(&v93, &v90, &v91, &v92);
    v93 = sub_1C545C6D4;
    v94 = v66;
    sub_1C5419E28(&v93, &v90, &v91, &v92);
    v93 = sub_1C54D6734;
    v94 = v67;
    sub_1C5419E28(&v93, &v90, &v91, &v92);
    v93 = sub_1C545C6D4;
    v94 = v68;
    sub_1C5419E28(&v93, &v90, &v91, &v92);
    v93 = sub_1C545C6D4;
    v94 = v69;
    sub_1C5419E28(&v93, &v90, &v91, &v92);
    v93 = sub_1C5473FA4;
    v94 = v70;
    sub_1C5419E28(&v93, &v90, &v91, &v92);
    _os_log_impl(&dword_1C5355000, log, v59, "trustedContact Message message.senderHandle %s , message.recipientHandle: %s , message.isSender : %{BOOL}d message.custodianUID :%s", buf, 0x26u);
    sub_1C5419E74(v73, 0, v71);
    sub_1C5419E74(v74, 3, MEMORY[0x1E69E7CA0] + 8);
    sub_1C5596A54();
  }

  else
  {
  }

  v56 = *(v76 + 3752);
  v54 = *(v76 + 3680);
  v55 = *(v76 + 3640);
  v57 = *(v76 + 541);
  v6 = MEMORY[0x1E69E5920](log);
  v56(v54, v55, v6);
  if (v57)
  {
    v50 = *(v76 + 3720);
    v7 = *(v76 + 3672);
    v49 = *(v76 + 3640);
    v8 = sub_1C5542A40();
    v50(v7, v8, v49);
    v52 = sub_1C5594C54();
    v51 = sub_1C5596974();
    v53 = sub_1C5596E04();
    if (os_log_type_enabled(v52, v51))
    {
      v45 = sub_1C5596A74();
      v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15C940, qword_1C55ADF70);
      v46 = sub_1C5419DC0(0, v44, v44);
      v47 = sub_1C5419DC0(0, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
      *(v76 + 3416) = v45;
      *(v76 + 3424) = v46;
      *(v76 + 3432) = v47;
      sub_1C5419E14(0, (v76 + 3416));
      sub_1C5419E14(0, (v76 + 3416));
      *(v76 + 3440) = v53;
      v48 = swift_task_alloc();
      v48[2] = v76 + 3416;
      v48[3] = v76 + 3424;
      v48[4] = v76 + 3432;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15E1F0, &unk_1C55AE2C0);
      sub_1C5419F0C();
      sub_1C55966B4();

      _os_log_impl(&dword_1C5355000, v52, v51, "Message is in compose screen, return message with minimal details", v45, 2u);
      sub_1C5419E74(v46, 0, v44);
      sub_1C5419E74(v47, 0, MEMORY[0x1E69E7CA0] + 8);
      sub_1C5596A54();
    }

    v42 = *(v76 + 3752);
    v40 = *(v76 + 3672);
    v41 = *(v76 + 3640);
    v43 = *(v76 + 3592);
    v9 = MEMORY[0x1E69E5920](v52);
    v42(v40, v41, v9);
    swift_beginAccess();
    memcpy((v76 + 2344), (v76 + 944), 0xC3uLL);
    sub_1C54D605C(v76 + 2344, v76 + 2544);
    swift_endAccess();
    v43[3] = &type metadata for InviteMessageDetails;
    v43[4] = &protocol witness table for InviteMessageDetails;
    v10 = swift_allocObject();
    *v43 = v10;
    memcpy((v10 + 16), (v76 + 2344), 0xC3uLL);
    sub_1C54D6820((v76 + 944));
  }

  else
  {
    v39 = *(v76 + 3592);
    swift_beginAccess();
    memcpy((v76 + 1944), (v76 + 944), 0xC3uLL);
    sub_1C54D605C(v76 + 1944, v76 + 2144);
    swift_endAccess();
    v39[3] = &type metadata for InviteMessageDetails;
    v39[4] = &protocol witness table for InviteMessageDetails;
    v11 = swift_allocObject();
    *v39 = v11;
    memcpy((v11 + 16), (v76 + 1944), 0xC3uLL);
    sub_1C54D6820((v76 + 944));
  }

  v12 = *(*(v76 + 3360) + 8);

  return v12();
}

unint64_t sub_1C54D1DB4()
{
  v2 = qword_1EC15D8B0;
  if (!qword_1EC15D8B0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15D8B0);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1C54D1E30(uint64_t a1, uint64_t a2)
{
  v2 = sub_1C5594694();
  sub_1C54C4FE4(v2, v3);
  sub_1C55946A4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15D920, &qword_1C55B39E8);
  return sub_1C5596474();
}

double sub_1C54D1F2C(uint64_t a1, uint64_t a2, void *a3)
{
  MEMORY[0x1E69E5928](a2, a2);
  MEMORY[0x1E69E5928](a3, v3);
  v12 = *__swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  if (a3)
  {
    v7 = a3;
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15D900, &qword_1C55B39D0);
    sub_1C542501C(v12, a3, v8);
  }

  else
  {
    MEMORY[0x1E69E5928](a2, v4);
    sub_1C54D829C();
    v13 = sub_1C5596714();
    v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15D900, &qword_1C55B39D0);
    sub_1C5425080(v12, &v13, v5);
    MEMORY[0x1E69E5920](a2);
  }

  MEMORY[0x1E69E5920](a3);
  *&result = MEMORY[0x1E69E5920](a2).n128_u64[0];
  return result;
}

uint64_t sub_1C54D20A0(void *a1)
{
  v51 = 0;
  v52 = 0;
  v49 = 0;
  v50 = 0;
  v47 = 0;
  v48 = 0;
  v39 = 0;
  v40 = 0;
  v53 = a1;
  if ([a1 isAcceptedAndShared])
  {
    v33 = sub_1C55965F4("ckShareAccepted", 15, 1);
  }

  else
  {
    v33 = sub_1C55965F4("noCKShare", 9, 1);
  }

  v32 = v1;
  v51 = v33;
  v52 = v1;
  if ([a1 isIdMSConfirmed])
  {
    v31 = sub_1C55965F4("idmsFinal", 9, 1);
  }

  else
  {
    v31 = sub_1C55965F4("idmsPending", 11, 1);
  }

  v29 = v2;
  v49 = v31;
  v50 = v2;
  v47 = sub_1C55965F4("");
  v48 = v3;
  v30 = [a1 preflightStatus];
  v46 = -1;
  v45 = v30;
  type metadata accessor for TrustedContactPreflightStatus(0);
  sub_1C54D6DE8();
  if (sub_1C55964D4())
  {
    v25 = sub_1C55965F4("Unknown", 7, 1);
    v26 = v4;
    sub_1C5594CF4();
    v47 = v25;
    v48 = v26;

    v27 = v25;
    v28 = v26;
  }

  else
  {
    v44 = 0;
    v43 = v30;
    if (sub_1C55964D4())
    {
      v23 = sub_1C55965F4("No", 2, 1);
      v24 = v5;
      sub_1C5594CF4();
      v47 = v23;
      v48 = v24;

      v27 = v23;
      v28 = v24;
    }

    else
    {
      v42 = 1;
      v41 = v30;
      if (sub_1C55964D4())
      {
        v21 = sub_1C55965F4("Yes", 3, 1);
        v22 = v6;
        sub_1C5594CF4();
        v47 = v21;
        v48 = v22;

        v27 = v21;
        v28 = v22;
      }

      else
      {
        v19 = sub_1C55965F4("InvalidStatus", 13, 1);
        v20 = v7;
        sub_1C5594CF4();
        v47 = v19;
        v48 = v20;

        v27 = v19;
        v28 = v20;
      }
    }
  }

  v16 = sub_1C54D4F3C(a1);
  v17 = v8;
  sub_1C5594CF4();
  v39 = v16;
  v40 = v17;
  v38[0] = v16;
  v38[1] = v17;
  v37[0] = sub_1C5596DF4();
  v37[1] = v9;
  v10 = sub_1C55965F4(" [", 2, 1);
  MEMORY[0x1C6947980](v10);

  v36[4] = v33;
  v36[5] = v32;
  sub_1C5596DD4();
  v11 = sub_1C55965F4("] [", 3, 1);
  MEMORY[0x1C6947980](v11);

  v36[2] = v31;
  v36[3] = v29;
  sub_1C5596DD4();
  v12 = sub_1C55965F4("] [CanHelpRecover:", 18, 1);
  MEMORY[0x1C6947980](v12);

  v36[0] = v27;
  v36[1] = v28;
  sub_1C5596DD4();
  sub_1C5401ECC(v36);
  v13 = sub_1C55965F4("]", 1, 1);
  MEMORY[0x1C6947980](v13);

  sub_1C5594CF4();
  sub_1C5401ECC(v37);
  v35[0] = sub_1C55965D4();
  v35[1] = v14;
  sub_1C54141E8();
  v18 = sub_1C5596AE4();
  sub_1C5401ECC(v35);
  sub_1C5401ECC(v38);
  sub_1C5401ECC(&v39);
  sub_1C5401ECC(&v47);

  return v18;
}

uint64_t sub_1C54D26BC(void *a1)
{
  v2 = [a1 handle];
  v3 = sub_1C5596574();
  MEMORY[0x1E69E5920](v2);
  return v3;
}

uint64_t sub_1C54D2718(void *a1)
{
  v9 = [a1 firstName];
  if (v9)
  {
    v5 = sub_1C5596574();
    v6 = v2;
    *&v1 = MEMORY[0x1E69E5920](v9).n128_u64[0];
    v7 = v5;
    v8 = v6;
  }

  else
  {
    v7 = 0;
    v8 = 0;
  }

  v10 = v7;
  v11 = v8;
  if (v8)
  {
    v12 = v10;
    v13 = v11;
  }

  else
  {
    v12 = sub_1C55965F4("", 0, 1, v1);
    v13 = v3;
  }

  return v12;
}

uint64_t sub_1C54D2824(void *a1)
{
  v9 = [a1 lastName];
  if (v9)
  {
    v5 = sub_1C5596574();
    v6 = v2;
    *&v1 = MEMORY[0x1E69E5920](v9).n128_u64[0];
    v7 = v5;
    v8 = v6;
  }

  else
  {
    v7 = 0;
    v8 = 0;
  }

  v10 = v7;
  v11 = v8;
  if (v8)
  {
    v12 = v10;
    v13 = v11;
  }

  else
  {
    v12 = sub_1C55965F4("", 0, 1, v1);
    v13 = v3;
  }

  return v12;
}

uint64_t sub_1C54D2930(void *a1)
{
  v9 = [a1 displayName];
  if (v9)
  {
    v5 = sub_1C5596574();
    v6 = v2;
    *&v1 = MEMORY[0x1E69E5920](v9).n128_u64[0];
    v7 = v5;
    v8 = v6;
  }

  else
  {
    v7 = 0;
    v8 = 0;
  }

  v10 = v7;
  v11 = v8;
  if (v8)
  {
    v12 = v10;
    v13 = v11;
  }

  else
  {
    v12 = sub_1C55965F4("", 0, 1, v1);
    v13 = v3;
  }

  return v12;
}

double sub_1C54D2A3C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v12 = a2;
  v8 = a1;
  v14 = sub_1C5594994();
  v10 = *(v14 - 8);
  v11 = v14 - 8;
  v9 = (*(v10 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v5 = MEMORY[0x1EEE9AC00](v8, v2, v3, v4);
  v13 = &v8 - v9;
  v15 = [v6 custodianID];
  sub_1C5594974();
  (*(v10 + 32))(v12, v13, v14);
  *&result = MEMORY[0x1E69E5920](v15).n128_u64[0];
  return result;
}

double sub_1C54D2B74(uint64_t a1, uint64_t a2, void *a3)
{
  MEMORY[0x1E69E5928](a2, a2);
  MEMORY[0x1E69E5928](a3, v3);
  v12 = *__swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  if (a3)
  {
    v7 = a3;
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15D8C8, &qword_1C55B39B8);
    sub_1C542501C(v12, a3, v8);
  }

  else
  {
    MEMORY[0x1E69E5928](a2, v4);
    sub_1C54D8208();
    v13 = sub_1C5596714();
    v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15D8C8, &qword_1C55B39B8);
    sub_1C5425080(v12, &v13, v5);
    MEMORY[0x1E69E5920](a2);
  }

  MEMORY[0x1E69E5920](a3);
  *&result = MEMORY[0x1E69E5920](a2).n128_u64[0];
  return result;
}

uint64_t sub_1C54D2CA8()
{
  sub_1C54D5FB0(0);

  return 0;
}

uint64_t sub_1C54D2CE0(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(a1 + 16);
  sub_1C5594CF4();
  swift_endAccess();
  return v3;
}

uint64_t sub_1C54D2D44(uint64_t a1)
{
  v2 = *(a1 + 128);
  sub_1C5594CF4();
  return v2;
}

uint64_t sub_1C54D2D88(uint64_t a1)
{
  v2 = *(a1 + 176);
  sub_1C5594CF4();
  return v2;
}

uint64_t sub_1C54D2DEC(uint64_t a1)
{
  v2 = *(a1 + 104);
  sub_1C5594CF4();
  return v2;
}

uint64_t static InviteMessageDetails.detailsPreviewFrom(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  MEMORY[0x1EEE9AC00](a1, a2, a3, a4);
  v330 = &title;
  v331 = &v454;
  v332 = &v442;
  v333 = &v430;
  v334 = &v424;
  v335 = &v380;
  v336 = &v366;
  v341 = v4;
  v6 = v5;
  v337 = v7;
  v338 = v4;
  v429 = 0;
  v428 = 0;
  v425 = 0;
  v339 = 0u;
  memset(&v424, 0, 195);
  v340 = 0;
  v342 = sub_1C5594C74();
  v343 = *(v342 - 8);
  v344 = v343;
  v346 = *(v343 + 64);
  MEMORY[0x1EEE9AC00](v342 - 8, v341, v342, v8);
  v348 = (v346 + 15) & 0xFFFFFFFFFFFFFFF0;
  v345 = &v186 - v348;
  MEMORY[0x1EEE9AC00](&v186 - v348, v9, v10, v11);
  v347 = &v186 - v348;
  MEMORY[0x1EEE9AC00](&v186 - v348, v12, v13, v14);
  v349 = &v186 - v348;
  v429 = v6;
  v428 = v15;
  v350 = sub_1C55946B4();
  if (v350)
  {
    v329 = v350;
    v16 = v340;
    v352[0] = v350;
    sub_1C54D1DB4();
    v351 = sub_1C5596414();
    v326 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15D918, &qword_1C55B39E0);
    v327 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15D920, &qword_1C55B39E8);
    sub_1C54D6CC8();
    sub_1C55966A4();
    v328 = v16;
    if (v16)
    {
      result = 0;
      __break(1u);
      return result;
    }

    sub_1C541439C(v352);
    v324 = v426[1];
    v325 = v328;
  }

  else
  {
    v324 = 0;
    v325 = v340;
  }

  v323 = v325;
  v426[0] = v324;
  if (v324)
  {
    v427 = v426[0];
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15D8A8, &unk_1C55B3998);
    v322 = sub_1C5596E04();
    sub_1C54D1DB4();
    v427 = sub_1C5596454();
    if (v426[0])
    {
      sub_1C541439C(v426);
    }
  }

  v17 = v349;
  v313 = v427;
  v425 = v427;
  v18 = sub_1C5542A40();
  v314 = *(v344 + 16);
  v315 = (v344 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v314(v17, v18, v342);
  v320 = sub_1C5594C54();
  v316 = v320;
  v319 = sub_1C5596974();
  v317 = v319;
  v318 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15E1E0, &qword_1C55ADF60);
  v321 = sub_1C5596E04();
  if (os_log_type_enabled(v320, v319))
  {
    v19 = v323;
    v304 = sub_1C5596A74();
    v300 = v304;
    v301 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15C940, qword_1C55ADF70);
    v302 = 0;
    v305 = sub_1C5419DC0(0, v301, v301);
    v303 = v305;
    v306 = sub_1C5419DC0(v302, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
    v355 = v304;
    v354 = v305;
    v353 = v306;
    v307 = 0;
    v308 = &v355;
    sub_1C5419E14(0, &v355);
    sub_1C5419E14(v307, v308);
    v352[1] = v321;
    v309 = &v186;
    MEMORY[0x1EEE9AC00](&v186, v20, v21, v22);
    v310 = &v186 - 6;
    *(&v186 - 4) = v23;
    *(&v186 - 3) = &v354;
    *(&v186 - 2) = &v353;
    v311 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15E1F0, &unk_1C55AE2C0);
    sub_1C5419F0C();
    sub_1C55966B4();
    v312 = v19;
    if (v19)
    {
      __break(1u);
    }

    else
    {
      _os_log_impl(&dword_1C5355000, v316, v317, "Building message..", v300, 2u);
      v298 = 0;
      sub_1C5419E74(v303, 0, v301);
      sub_1C5419E74(v306, v298, MEMORY[0x1E69E7CA0] + 8);
      sub_1C5596A54();

      v299 = v312;
    }
  }

  else
  {

    v299 = v323;
  }

  v294 = v299;

  v295 = *(v344 + 8);
  v296 = (v344 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v295(v349, v342);
  InviteMessageDetails.init()(&v424);
  v421 = 0;
  v297 = sub_1C54D1DB4();
  sub_1C5596464();
  v420 = v422;
  if (v422._object)
  {
    v423 = v420;
  }

  else
  {
    v423._countAndFlagsBits = sub_1C55965F4("", 0, 1);
    v423._object = v24;
    if (v420._object)
    {
      sub_1C5401ECC(&v420);
    }
  }

  v424.title = v423;

  v417 = 1;
  sub_1C5596464();
  v416 = v418;
  if (v418._object)
  {
    v419 = v416;
  }

  else
  {
    v419._countAndFlagsBits = sub_1C55965F4("", 0, 1);
    v419._object = v25;
    if (v416._object)
    {
      sub_1C5401ECC(&v416);
    }
  }

  v424.subTitle = v419;

  v413 = 2;
  sub_1C5596464();
  v412 = v414;
  if (v414._object)
  {
    v415 = v412;
  }

  else
  {
    v415._countAndFlagsBits = sub_1C55965F4("", 0, 1);
    v415._object = v26;
    if (v412._object)
    {
      sub_1C5401ECC(&v412);
    }
  }

  v424.acceptButttonLabel = v415;

  v409 = 3;
  sub_1C5596464();
  v408 = v410;
  if (v410._object)
  {
    v411 = v408;
  }

  else
  {
    v411._countAndFlagsBits = sub_1C55965F4("", 0, 1);
    v411._object = v27;
    if (v408._object)
    {
      sub_1C5401ECC(&v408);
    }
  }

  v424.declineButtonLabel = v411;

  v405 = 4;
  sub_1C5596464();
  v404 = v406;
  if (v406._object)
  {
    v407 = v404;
  }

  else
  {
    v407._countAndFlagsBits = sub_1C55965F4("", 0, 1);
    v407._object = v28;
    if (v404._object)
    {
      sub_1C5401ECC(&v404);
    }
  }

  v424.acceptedButtonLabel = v407;

  v401 = 5;
  sub_1C5596464();
  v400 = v402;
  if (v402._object)
  {
    v403 = v400;
  }

  else
  {
    v403._countAndFlagsBits = sub_1C55965F4("", 0, 1);
    v403._object = v29;
    if (v400._object)
    {
      sub_1C5401ECC(&v400);
    }
  }

  v424.declinedButtonLabel = v403;

  v397 = 6;
  sub_1C5596464();
  v396 = v398;
  if (v398._object)
  {
    v399 = v396;
  }

  else
  {
    v399._countAndFlagsBits = sub_1C55965F4("", 0, 1);
    v399._object = v30;
    if (v396._object)
    {
      sub_1C5401ECC(&v396);
    }
  }

  v31 = v347;
  v424.custodianUID = v399;

  v424.isPreview = 1;
  v32 = sub_1C5542A40();
  v314(v31, v32, v342);
  title = v424.title;
  acceptedButtonLabel = v424.acceptedButtonLabel;
  declineButtonLabel = v424.declineButtonLabel;
  acceptButttonLabel = v424.acceptButttonLabel;
  subTitle = v424.subTitle;
  senderHandle = v424.senderHandle;
  v473 = *&v424.custodianUID._object;
  v472 = *&v424.isPending;
  declinedButtonLabel = v424.declinedButtonLabel;
  senderFullName = v424.senderFullName;
  senderFirstName = v424.senderFirstName;
  recipientHandle = v424.recipientHandle;
  *(&v330[11]._object + 7) = *(&v334->recipientHandle._object + 7);
  v477 = recipientHandle;
  v476 = senderFirstName;
  v475 = senderFullName;
  sub_1C54D605C(&title, &v395);
  v248 = 211;
  v274 = 7;
  v36 = swift_allocObject();
  v37 = v330;
  v38 = v331;
  v39 = v334;
  v253 = v36;
  *(v36 + 16) = title;
  v40 = subTitle;
  v41 = acceptButttonLabel;
  v42 = declineButtonLabel;
  *(v36 + 80) = acceptedButtonLabel;
  *(v36 + 64) = v42;
  *(v36 + 48) = v41;
  *(v36 + 32) = v40;
  v43 = declinedButtonLabel;
  v44 = v472;
  v45 = v473;
  *(v36 + 144) = senderHandle;
  *(v36 + 128) = v45;
  *(v36 + 112) = v44;
  *(v36 + 96) = v43;
  v46 = v475;
  v47 = v476;
  v48 = v477;
  *(v36 + 207) = *(&v37[11]._object + 7);
  *(v36 + 192) = v48;
  *(v36 + 176) = v47;
  *(v36 + 160) = v46;
  v454 = v424.title;
  v458 = v424.acceptedButtonLabel;
  v457 = v424.declineButtonLabel;
  v456 = v424.acceptButttonLabel;
  v455 = v424.subTitle;
  v462 = v424.senderHandle;
  v461 = *&v424.custodianUID._object;
  v460 = *&v424.isPending;
  v459 = v424.declinedButtonLabel;
  v49 = v424.senderFullName;
  v50 = v424.senderFirstName;
  v51 = v424.recipientHandle;
  *(&v38[11]._object + 7) = *(&v39->recipientHandle._object + 7);
  v465 = v51;
  v464 = v50;
  v463 = v49;
  sub_1C54D605C(&v454, &v394);
  v52 = swift_allocObject();
  v53 = v331;
  v54 = v332;
  v55 = v334;
  v258 = v52;
  *(v52 + 16) = v454;
  v56 = v455;
  v57 = v456;
  v58 = v457;
  *(v52 + 80) = v458;
  *(v52 + 64) = v58;
  *(v52 + 48) = v57;
  *(v52 + 32) = v56;
  v59 = v459;
  v60 = v460;
  v61 = v461;
  *(v52 + 144) = v462;
  *(v52 + 128) = v61;
  *(v52 + 112) = v60;
  *(v52 + 96) = v59;
  v62 = v463;
  v63 = v464;
  v64 = v465;
  *(v52 + 207) = *(&v53[11]._object + 7);
  *(v52 + 192) = v64;
  *(v52 + 176) = v63;
  *(v52 + 160) = v62;
  v442 = v424.title;
  v446 = v424.acceptedButtonLabel;
  v445 = v424.declineButtonLabel;
  v444 = v424.acceptButttonLabel;
  v443 = v424.subTitle;
  v450 = v424.senderHandle;
  v449 = *&v424.custodianUID._object;
  v448 = *&v424.isPending;
  v447 = v424.declinedButtonLabel;
  v65 = v424.senderFullName;
  v66 = v424.senderFirstName;
  v67 = v424.recipientHandle;
  *(&v54[11]._object + 7) = *(&v55->recipientHandle._object + 7);
  v453 = v67;
  v452 = v66;
  v451 = v65;
  sub_1C54D605C(&v442, &v393);
  v68 = swift_allocObject();
  v69 = v332;
  v70 = v334;
  v71 = v333;
  v263 = v68;
  *(v68 + 16) = v442;
  v72 = v443;
  v73 = v444;
  v74 = v445;
  *(v68 + 80) = v446;
  *(v68 + 64) = v74;
  *(v68 + 48) = v73;
  *(v68 + 32) = v72;
  v75 = v447;
  v76 = v448;
  v77 = v449;
  *(v68 + 144) = v450;
  *(v68 + 128) = v77;
  *(v68 + 112) = v76;
  *(v68 + 96) = v75;
  v78 = v451;
  v79 = v452;
  v80 = v453;
  *(v68 + 207) = *(&v69[11]._object + 7);
  *(v68 + 192) = v80;
  *(v68 + 176) = v79;
  *(v68 + 160) = v78;
  v430 = v424.title;
  v434 = v424.acceptedButtonLabel;
  v433 = v424.declineButtonLabel;
  v432 = v424.acceptButttonLabel;
  v431 = v424.subTitle;
  v438 = v424.senderHandle;
  v437 = *&v424.custodianUID._object;
  v436 = *&v424.isPending;
  v435 = v424.declinedButtonLabel;
  v81 = v424.senderFullName;
  v82 = v424.senderFirstName;
  v83 = v424.recipientHandle;
  *(&v71[11]._object + 7) = *(&v70->recipientHandle._object + 7);
  v441 = v83;
  v440 = v82;
  v439 = v81;
  sub_1C54D605C(&v430, &v392);
  v84 = swift_allocObject();
  v85 = v333;
  v275 = v84;
  *(v84 + 16) = v430;
  v86 = v431;
  v87 = v432;
  v88 = v433;
  *(v84 + 80) = v434;
  *(v84 + 64) = v88;
  *(v84 + 48) = v87;
  *(v84 + 32) = v86;
  v89 = v435;
  v90 = v436;
  v91 = v437;
  *(v84 + 144) = v438;
  *(v84 + 128) = v91;
  *(v84 + 112) = v90;
  *(v84 + 96) = v89;
  v92 = v439;
  v93 = v440;
  v94 = v441;
  *(v84 + 207) = *(&v85[11]._object + 7);
  *(v84 + 192) = v94;
  *(v84 + 176) = v93;
  *(v84 + 160) = v92;
  v293 = sub_1C5594C54();
  v249 = v293;
  v292 = sub_1C5596974();
  v250 = v292;
  v269 = 17;
  v278 = swift_allocObject();
  v251 = v278;
  v268 = 32;
  *(v278 + 16) = 32;
  v95 = swift_allocObject();
  v96 = v268;
  v279 = v95;
  v252 = v95;
  v271 = 8;
  *(v95 + 16) = 8;
  v273 = v96;
  v97 = swift_allocObject();
  v98 = v253;
  v254 = v97;
  *(v97 + 16) = sub_1C54D6234;
  *(v97 + 24) = v98;
  v99 = swift_allocObject();
  v100 = v254;
  v280 = v99;
  v255 = v99;
  *(v99 + 16) = sub_1C5473EFC;
  *(v99 + 24) = v100;
  v281 = swift_allocObject();
  v256 = v281;
  *(v281 + 16) = v268;
  v282 = swift_allocObject();
  v257 = v282;
  *(v282 + 16) = v271;
  v101 = swift_allocObject();
  v102 = v258;
  v259 = v101;
  *(v101 + 16) = sub_1C54D623C;
  *(v101 + 24) = v102;
  v103 = swift_allocObject();
  v104 = v259;
  v283 = v103;
  v260 = v103;
  *(v103 + 16) = sub_1C5473EFC;
  *(v103 + 24) = v104;
  v284 = swift_allocObject();
  v261 = v284;
  *(v284 + 16) = 0;
  v285 = swift_allocObject();
  v262 = v285;
  *(v285 + 16) = 4;
  v105 = swift_allocObject();
  v106 = v263;
  v264 = v105;
  *(v105 + 16) = sub_1C54D6244;
  *(v105 + 24) = v106;
  v107 = swift_allocObject();
  v108 = v264;
  v265 = v107;
  *(v107 + 16) = sub_1C54D66AC;
  *(v107 + 24) = v108;
  v109 = swift_allocObject();
  v110 = v265;
  v266 = v109;
  *(v109 + 16) = sub_1C54D66E0;
  *(v109 + 24) = v110;
  v111 = swift_allocObject();
  v112 = v266;
  v286 = v111;
  v267 = v111;
  *(v111 + 16) = sub_1C54D6728;
  *(v111 + 24) = v112;
  v287 = swift_allocObject();
  v270 = v287;
  *(v287 + 16) = v268;
  v288 = swift_allocObject();
  v272 = v288;
  *(v288 + 16) = v271;
  v113 = swift_allocObject();
  v114 = v275;
  v276 = v113;
  *(v113 + 16) = sub_1C54D624C;
  *(v113 + 24) = v114;
  v115 = swift_allocObject();
  v116 = v276;
  v291 = v115;
  v277 = v115;
  *(v115 + 16) = sub_1C5473EFC;
  *(v115 + 24) = v116;
  v289 = sub_1C5596E04();
  v290 = v117;

  v118 = v278;
  v119 = v290;
  *v290 = sub_1C545C6D4;
  v119[1] = v118;

  v120 = v279;
  v121 = v290;
  v290[2] = sub_1C545C6D4;
  v121[3] = v120;

  v122 = v280;
  v123 = v290;
  v290[4] = sub_1C5473FA4;
  v123[5] = v122;

  v124 = v281;
  v125 = v290;
  v290[6] = sub_1C545C6D4;
  v125[7] = v124;

  v126 = v282;
  v127 = v290;
  v290[8] = sub_1C545C6D4;
  v127[9] = v126;

  v128 = v283;
  v129 = v290;
  v290[10] = sub_1C5473FA4;
  v129[11] = v128;

  v130 = v284;
  v131 = v290;
  v290[12] = sub_1C545C6D4;
  v131[13] = v130;

  v132 = v285;
  v133 = v290;
  v290[14] = sub_1C545C6D4;
  v133[15] = v132;

  v134 = v286;
  v135 = v290;
  v290[16] = sub_1C54D6734;
  v135[17] = v134;

  v136 = v287;
  v137 = v290;
  v290[18] = sub_1C545C6D4;
  v137[19] = v136;

  v138 = v288;
  v139 = v290;
  v290[20] = sub_1C545C6D4;
  v139[21] = v138;

  v140 = v290;
  v141 = v291;
  v290[22] = sub_1C5473FA4;
  v140[23] = v141;
  sub_1C540FCD8();

  if (os_log_type_enabled(v293, v292))
  {
    v142 = v294;
    v242 = sub_1C5596A74();
    v239 = v242;
    v240 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15C940, qword_1C55ADF70);
    v243 = sub_1C5419DC0(0, v240, v240);
    v241 = v243;
    v244 = sub_1C5419DC0(3, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
    v360[0] = v242;
    v359 = v243;
    v358 = v244;
    v245 = v360;
    sub_1C5419E14(2, v360);
    sub_1C5419E14(4, v245);
    v356 = sub_1C545C6D4;
    v357 = v251;
    sub_1C5419E28(&v356, v245, &v359, &v358);
    v246 = v142;
    v247 = v142;
    if (v142)
    {
      v237 = 0;

      __break(1u);
    }

    else
    {
      v356 = sub_1C545C6D4;
      v357 = v252;
      sub_1C5419E28(&v356, v360, &v359, &v358);
      v235 = 0;
      v236 = 0;
      v356 = sub_1C5473FA4;
      v357 = v255;
      sub_1C5419E28(&v356, v360, &v359, &v358);
      v233 = 0;
      v234 = 0;
      v356 = sub_1C545C6D4;
      v357 = v256;
      sub_1C5419E28(&v356, v360, &v359, &v358);
      v231 = 0;
      v232 = 0;
      v356 = sub_1C545C6D4;
      v357 = v257;
      sub_1C5419E28(&v356, v360, &v359, &v358);
      v229 = 0;
      v230 = 0;
      v356 = sub_1C5473FA4;
      v357 = v260;
      sub_1C5419E28(&v356, v360, &v359, &v358);
      v227 = 0;
      v228 = 0;
      v356 = sub_1C545C6D4;
      v357 = v261;
      sub_1C5419E28(&v356, v360, &v359, &v358);
      v225 = 0;
      v226 = 0;
      v356 = sub_1C545C6D4;
      v357 = v262;
      sub_1C5419E28(&v356, v360, &v359, &v358);
      v223 = 0;
      v224 = 0;
      v356 = sub_1C54D6734;
      v357 = v267;
      sub_1C5419E28(&v356, v360, &v359, &v358);
      v221 = 0;
      v222 = 0;
      v356 = sub_1C545C6D4;
      v357 = v270;
      sub_1C5419E28(&v356, v360, &v359, &v358);
      v219 = 0;
      v220 = 0;
      v356 = sub_1C545C6D4;
      v357 = v272;
      sub_1C5419E28(&v356, v360, &v359, &v358);
      v217 = 0;
      v218 = 0;
      v356 = sub_1C5473FA4;
      v357 = v277;
      sub_1C5419E28(&v356, v360, &v359, &v358);
      v215 = 0;
      v216 = 0;
      _os_log_impl(&dword_1C5355000, v249, v250, "trustedContact Message message.senderHandle %s , message.recipientHandle: %s , message.isSender : %{BOOL}d message.custodianUID :%s", v239, 0x26u);
      sub_1C5419E74(v241, 0, v240);
      sub_1C5419E74(v244, 3, MEMORY[0x1E69E7CA0] + 8);
      sub_1C5596A54();

      v238 = v215;
    }
  }

  else
  {
    v143 = v294;

    v238 = v143;
  }

  v214 = v238;

  v295(v347, v342);
  if (v338)
  {
    v144 = v345;
    v145 = sub_1C5542A40();
    v314(v144, v145, v342);
    v212 = sub_1C5594C54();
    v209 = v212;
    v211 = sub_1C5596974();
    v210 = v211;
    v213 = sub_1C5596E04();
    if (os_log_type_enabled(v212, v211))
    {
      v146 = v214;
      v200 = sub_1C5596A74();
      v196 = v200;
      v197 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15C940, qword_1C55ADF70);
      v198 = 0;
      v201 = sub_1C5419DC0(0, v197, v197);
      v199 = v201;
      v202 = sub_1C5419DC0(v198, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
      v363 = v200;
      v362 = v201;
      v361 = v202;
      v203 = 0;
      v204 = &v363;
      sub_1C5419E14(0, &v363);
      sub_1C5419E14(v203, v204);
      v360[2] = v213;
      v205 = &v186;
      MEMORY[0x1EEE9AC00](&v186, v147, v148, v149);
      v206 = &v186 - 6;
      *(&v186 - 4) = v150;
      *(&v186 - 3) = &v362;
      *(&v186 - 2) = &v361;
      v207 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15E1F0, &unk_1C55AE2C0);
      sub_1C5419F0C();
      sub_1C55966B4();
      v208 = v146;
      if (v146)
      {
        __break(1u);
      }

      else
      {
        _os_log_impl(&dword_1C5355000, v209, v210, "Message is in compose screen, return message with minimal details", v196, 2u);
        v194 = 0;
        sub_1C5419E74(v199, 0, v197);
        sub_1C5419E74(v202, v194, MEMORY[0x1E69E7CA0] + 8);
        sub_1C5596A54();

        v195 = v208;
      }
    }

    else
    {

      v195 = v214;
    }

    v192 = v195;

    v295(v345, v342);
    v190 = &v424;
    v189 = &v365;
    swift_beginAccess();
    v366 = v424.title;
    v370 = v424.acceptedButtonLabel;
    v369 = v424.declineButtonLabel;
    v368 = v424.acceptButttonLabel;
    v367 = v424.subTitle;
    v374 = v424.senderHandle;
    v373 = *&v424.custodianUID._object;
    v372 = *&v424.isPending;
    v371 = v424.declinedButtonLabel;
    v151 = v424.senderFullName;
    v152 = v424.senderFirstName;
    v153 = v424.recipientHandle;
    *(&v336[11]._object + 7) = *(&v334->recipientHandle._object + 7);
    v377 = v153;
    v376 = v152;
    v375 = v151;
    sub_1C54D605C(&v366, &v364);
    swift_endAccess();
    v154 = v337;
    v337[3] = &type metadata for InviteMessageDetails;
    v154[4] = &protocol witness table for InviteMessageDetails;
    v155 = swift_allocObject();
    v156 = v336;
    v157 = v155;
    v158 = v190;
    v191 = v157;
    *v337 = v157;
    *(v157 + 16) = v366;
    v159 = v367;
    v160 = v368;
    v161 = v369;
    *(v157 + 80) = v370;
    *(v157 + 64) = v161;
    *(v157 + 48) = v160;
    *(v157 + 32) = v159;
    v162 = v371;
    v163 = v372;
    v164 = v373;
    *(v157 + 144) = v374;
    *(v157 + 128) = v164;
    *(v157 + 112) = v163;
    *(v157 + 96) = v162;
    v165 = v375;
    v166 = v376;
    v167 = v377;
    *(v157 + 207) = *(&v156[11]._object + 7);
    *(v157 + 192) = v167;
    *(v157 + 176) = v166;
    *(v157 + 160) = v165;
    sub_1C54D6820(v158);

    return v192;
  }

  else
  {
    v187 = &v424;
    v186 = &v379;
    swift_beginAccess();
    v380 = v424.title;
    v384 = v424.acceptedButtonLabel;
    v383 = v424.declineButtonLabel;
    v382 = v424.acceptButttonLabel;
    v381 = v424.subTitle;
    v388 = v424.senderHandle;
    v387 = *&v424.custodianUID._object;
    v386 = *&v424.isPending;
    v385 = v424.declinedButtonLabel;
    v168 = v424.senderFullName;
    v169 = v424.senderFirstName;
    v170 = v424.recipientHandle;
    *(&v335[11]._object + 7) = *(&v334->recipientHandle._object + 7);
    v391 = v170;
    v390 = v169;
    v389 = v168;
    sub_1C54D605C(&v380, &v378);
    swift_endAccess();
    v171 = v337;
    v337[3] = &type metadata for InviteMessageDetails;
    v171[4] = &protocol witness table for InviteMessageDetails;
    v172 = swift_allocObject();
    v173 = v335;
    v174 = v172;
    v175 = v187;
    v188 = v174;
    *v337 = v174;
    *(v174 + 16) = v380;
    v176 = v381;
    v177 = v382;
    v178 = v383;
    *(v174 + 80) = v384;
    *(v174 + 64) = v178;
    *(v174 + 48) = v177;
    *(v174 + 32) = v176;
    v179 = v385;
    v180 = v386;
    v181 = v387;
    *(v174 + 144) = v388;
    *(v174 + 128) = v181;
    *(v174 + 112) = v180;
    *(v174 + 96) = v179;
    v182 = v389;
    v183 = v390;
    v184 = v391;
    *(v174 + 207) = *(&v173[11]._object + 7);
    *(v174 + 192) = v184;
    *(v174 + 176) = v183;
    *(v174 + 160) = v182;
    sub_1C54D6820(v175);

    return v214;
  }
}

uint64_t sub_1C54D4F3C(void *a1)
{
  [a1 status];
  type metadata accessor for Status(0);
  sub_1C5462A94();
  if (sub_1C55964D4())
  {
    return sub_1C55965F4("unknown", 7, 1);
  }

  if ((sub_1C55964D4() & 1) == 0)
  {
    if (sub_1C55964D4())
    {
      return sub_1C55965F4("accepted", 8, 1);
    }

    if (sub_1C55964D4())
    {
      return sub_1C55965F4("declined", 8, 1);
    }

    if (sub_1C55964D4())
    {
      return sub_1C55965F4("unreachable", 11, 1);
    }

    if (sub_1C55964D4())
    {
      return sub_1C55965F4("ineligible", 10, 1);
    }

    return sub_1C55965F4("unknown", 7, 1);
  }

  return sub_1C55965F4("pending", 7, 1);
}

void (*sub_1C54D5224(void *a1))(void (***a1)(void *, uint64_t), char a2)
{
  v2 = __swift_coroFrameAllocStub(0x28uLL, 43089);
  *a1 = v2;
  v2[4] = InviteMessageDetails.title.modify();
  return sub_1C545A074;
}

void (*sub_1C54D52C4(void *a1))(void (***a1)(void *, uint64_t), char a2)
{
  v2 = __swift_coroFrameAllocStub(0x28uLL, 6548);
  *a1 = v2;
  v2[4] = InviteMessageDetails.subTitle.modify();
  return sub_1C545A074;
}

void (*sub_1C54D5364(void *a1))(void (***a1)(void *, uint64_t), char a2)
{
  v2 = __swift_coroFrameAllocStub(0x28uLL, 7967);
  *a1 = v2;
  v2[4] = InviteMessageDetails.acceptButttonLabel.modify();
  return sub_1C545A074;
}

void (*sub_1C54D5404(void *a1))(void (***a1)(void *, uint64_t), char a2)
{
  v2 = __swift_coroFrameAllocStub(0x28uLL, 4252);
  *a1 = v2;
  v2[4] = InviteMessageDetails.declineButtonLabel.modify();
  return sub_1C545A074;
}

void (*sub_1C54D54A4(void *a1))(void (***a1)(void *, uint64_t), char a2)
{
  v2 = __swift_coroFrameAllocStub(0x28uLL, 61582);
  *a1 = v2;
  v2[4] = InviteMessageDetails.acceptedButtonLabel.modify();
  return sub_1C545A074;
}

void (*sub_1C54D5544(void *a1))(void (***a1)(void *, uint64_t), char a2)
{
  v2 = __swift_coroFrameAllocStub(0x28uLL, 30367);
  *a1 = v2;
  v2[4] = InviteMessageDetails.declinedButtonLabel.modify();
  return sub_1C545A074;
}

void (*sub_1C54D55EC(void *a1))(void (***a1)(void *, uint64_t), char a2)
{
  v2 = __swift_coroFrameAllocStub(0x28uLL, 44474);
  *a1 = v2;
  v2[4] = InviteMessageDetails.isPending.modify();
  return sub_1C545A074;
}

void (*sub_1C54D568C(void *a1))(void (***a1)(void *, uint64_t), char a2)
{
  v2 = __swift_coroFrameAllocStub(0x28uLL, 37918);
  *a1 = v2;
  v2[4] = InviteMessageDetails.custodianUID.modify();
  return sub_1C545A074;
}

void (*sub_1C54D572C(void *a1))(void (***a1)(void *, uint64_t), char a2)
{
  v2 = __swift_coroFrameAllocStub(0x28uLL, 27330);
  *a1 = v2;
  v2[4] = InviteMessageDetails.inviteStatus.modify();
  return sub_1C545A074;
}

void (*sub_1C54D57CC(void *a1))(void (***a1)(void *, uint64_t), char a2)
{
  v2 = __swift_coroFrameAllocStub(0x28uLL, 34412);
  *a1 = v2;
  v2[4] = InviteMessageDetails.senderHandle.modify();
  return sub_1C545A074;
}

void (*sub_1C54D586C(void *a1))(void (***a1)(void *, uint64_t), char a2)
{
  v2 = __swift_coroFrameAllocStub(0x28uLL, 54748);
  *a1 = v2;
  v2[4] = InviteMessageDetails.senderFullName.modify();
  return sub_1C545A074;
}

void (*sub_1C54D590C(void *a1))(void (***a1)(void *, uint64_t), char a2)
{
  v2 = __swift_coroFrameAllocStub(0x28uLL, 29836);
  *a1 = v2;
  v2[4] = InviteMessageDetails.senderFirstName.modify();
  return sub_1C545A074;
}

void (*sub_1C54D59AC(void *a1))(void (***a1)(void *, uint64_t), char a2)
{
  v2 = __swift_coroFrameAllocStub(0x28uLL, 30863);
  *a1 = v2;
  v2[4] = InviteMessageDetails.recipientHandle.modify();
  return sub_1C545A074;
}

void (*sub_1C54D5A54(void *a1))(void (***a1)(void *, uint64_t), char a2)
{
  v2 = __swift_coroFrameAllocStub(0x28uLL, 21837);
  *a1 = v2;
  v2[4] = InviteMessageDetails.isSender.modify();
  return sub_1C545A074;
}

void (*sub_1C54D5AFC(void *a1))(void (***a1)(void *, uint64_t), char a2)
{
  v2 = __swift_coroFrameAllocStub(0x28uLL, 58021);
  *a1 = v2;
  v2[4] = InviteMessageDetails.isRecipient.modify();
  return sub_1C545A074;
}

void (*sub_1C54D5BA4(void *a1))(void (***a1)(void *, uint64_t), char a2)
{
  v2 = __swift_coroFrameAllocStub(0x28uLL, 50077);
  *a1 = v2;
  v2[4] = InviteMessageDetails.isPreview.modify();
  return sub_1C545A074;
}

uint64_t sub_1C54D5C2C(uint64_t a1, uint64_t a2, char a3)
{
  v6 = v3;
  *(v3 + 16) = v3;
  v4 = swift_task_alloc();
  *(v6 + 24) = v4;
  *v4 = *(v6 + 16);
  v4[1] = sub_1C5405B1C;

  return static InviteMessageDetails.detailsFrom(_:_:)(a1, a2, a3 & 1);
}

uint64_t sub_1C54D5D10(uint64_t a1)
{
  sub_1C54D8070();
  sub_1C5462B94();
  return sub_1C5596D54();
}

uint64_t sub_1C54D5D4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1C54D8070();
  sub_1C5462B94();
  return sub_1C5596D24();
}

uint64_t sub_1C54D5D98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1C54D8070();
  sub_1C5462B94();
  return sub_1C5596D34() & 1;
}

uint64_t sub_1C54D5DE8(uint64_t a1, uint64_t a2)
{
  sub_1C54D8070();
  sub_1C5462B94();
  return sub_1C5596D44();
}

uint64_t sub_1C54D5E80(uint64_t a1)
{
  sub_1C54D80F0();
  sub_1C54D8070();
  return sub_1C5596D04();
}

uint64_t sub_1C54D5FB0(uint64_t result)
{
  v3 = result;
  if (result < 0)
  {
    __break(1u);
  }

  else
  {

    if (v3 <= 0)
    {
      return MEMORY[0x1E69E7CC0];
    }

    type metadata accessor for CompareOptions(0);
    v1 = sub_1C5596734();
    sub_1C5594CF4();
    *(v1 + 16) = v3;

    return v1;
  }

  return result;
}

uint64_t sub_1C54D605C(uint64_t a1, uint64_t a2)
{
  *a2 = *a1;
  v3 = *(a1 + 8);
  sub_1C5594CF4();
  *(a2 + 8) = v3;
  *(a2 + 16) = *(a1 + 16);
  v4 = *(a1 + 24);
  sub_1C5594CF4();
  *(a2 + 24) = v4;
  *(a2 + 32) = *(a1 + 32);
  v5 = *(a1 + 40);
  sub_1C5594CF4();
  *(a2 + 40) = v5;
  *(a2 + 48) = *(a1 + 48);
  v6 = *(a1 + 56);
  sub_1C5594CF4();
  *(a2 + 56) = v6;
  *(a2 + 64) = *(a1 + 64);
  v7 = *(a1 + 72);
  sub_1C5594CF4();
  *(a2 + 72) = v7;
  *(a2 + 80) = *(a1 + 80);
  v8 = *(a1 + 88);
  sub_1C5594CF4();
  *(a2 + 88) = v8;
  *(a2 + 96) = *(a1 + 96);
  *(a2 + 104) = *(a1 + 104);
  v9 = *(a1 + 112);
  sub_1C5594CF4();
  *(a2 + 112) = v9;
  *(a2 + 120) = *(a1 + 120);
  *(a2 + 128) = *(a1 + 128);
  v10 = *(a1 + 136);
  sub_1C5594CF4();
  *(a2 + 136) = v10;
  *(a2 + 144) = *(a1 + 144);
  v11 = *(a1 + 152);
  sub_1C5594CF4();
  *(a2 + 152) = v11;
  *(a2 + 160) = *(a1 + 160);
  v12 = *(a1 + 168);
  sub_1C5594CF4();
  *(a2 + 168) = v12;
  *(a2 + 176) = *(a1 + 176);
  v14 = *(a1 + 184);
  sub_1C5594CF4();
  result = a2;
  *(a2 + 184) = v14;
  *(a2 + 192) = *(a1 + 192);
  *(a2 + 193) = *(a1 + 193);
  *(a2 + 194) = *(a1 + 194);
  return result;
}

uint64_t sub_1C54D6254(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v26 = a7;
  v25 = a6;
  v27 = a1;
  v21 = 0;
  v31 = a6;
  v22 = *(a6 - 8);
  v23 = v22;
  v7 = MEMORY[0x1EEE9AC00](0, a2, a3, a4);
  v24 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9(v7);
  v28 = sub_1C5596C84() >> 3;
  v29 = *v27;
  v30 = v29;
  if (v28 < 0)
  {
    result = sub_1C5596CC4();
    __break(1u);
  }

  else
  {
    v20 = v29 + v28;
    v19 = &v19;
    MEMORY[0x1EEE9AC00](v24, &v19, v10, v25);
    v17 = v30;
    v18 = v11;
    sub_1C54D6490(v12, sub_1C54D826C, &v16, v13, MEMORY[0x1E69E73E0], MEMORY[0x1E69E7CA8] + 8, v14, MEMORY[0x1E69E7CA8]);
    (*(v23 + 8))(v24, v25);
    result = v19;
    *v27 = v20;
  }

  return result;
}

uint64_t sub_1C54D6490@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(uint64_t, uint64_t, char *)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X7>, uint64_t a8@<X8>)
{
  v12[2] = a8;
  v13 = a1;
  v14 = a2;
  v15 = a3;
  v16 = a5;
  v18 = a7;
  v19 = "Fatal error";
  v20 = "UnsafeRawBufferPointer with negative count";
  v21 = "Swift/UnsafeRawBufferPointer.swift";
  v29 = a4;
  v28 = a5;
  v27 = a6;
  v22 = *(a5 - 8);
  v23 = a5 - 8;
  v24 = (*(v22 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v8 = MEMORY[0x1EEE9AC00](a1, a2, a3, a4);
  v25 = v12 - v24;
  v26 = *(*(v9 - 8) + 64);
  if (v26 < 0)
  {
    result = sub_1C5596CC4();
    __break(1u);
  }

  else
  {
    v10 = v17;
    result = (v14)(v13, v13 + v26, v25, v8);
    v12[1] = v10;
    if (v10)
    {
      return (*(v22 + 32))(v18, v25, v16);
    }
  }

  return result;
}

uint64_t sub_1C54D66EC@<X0>(uint64_t (*a1)(void)@<X0>, _DWORD *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

uint64_t sub_1C54D6734(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v9 = *(v3 + 16);
  v10 = *(v3 + 24);
  v4 = sub_1C54D67A8();
  v5 = MEMORY[0x1E69E72F0];

  return sub_1C54D6254(a1, a2, a3, v9, v10, v5, v4);
}

unint64_t sub_1C54D67A8()
{
  v2 = qword_1EC15E480;
  if (!qword_1EC15E480)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15E480);
    return WitnessTable;
  }

  return v2;
}

void __spoils<X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> sub_1C54D6820(void *a1)
{
}

unint64_t sub_1C54D6904()
{
  v2 = qword_1EC15D8D0;
  if (!qword_1EC15D8D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15D8C8, &qword_1C55B39B8);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15D8D0);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1C54D698C(uint64_t a1)
{
  v3 = sub_1C55949C4();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(a1, 1))
  {
    (*(v4 + 8))(a1, v3);
  }

  return a1;
}

uint64_t sub_1C54D6A44()
{
  v5 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = sub_1C5594994();
  v1 = sub_1C54D6AA0();

  return sub_1C54AE938(v5, v3, v4, v1);
}

unint64_t sub_1C54D6AA0()
{
  v2 = qword_1EC15D8E0;
  if (!qword_1EC15D8E0)
  {
    sub_1C5594994();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15D8E0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C54D6B20()
{
  v2 = qword_1EC15D8F0;
  if (!qword_1EC15D8F0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15D8F0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C54D6B98()
{
  v2 = qword_1EC15D8F8;
  if (!qword_1EC15D8F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15D8E8, &qword_1C55B39C8);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15D8F8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C54D6C20()
{
  v2 = qword_1EC15D908;
  if (!qword_1EC15D908)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15D900, &qword_1C55B39D0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15D908);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C54D6CC8()
{
  v2 = qword_1EC15D928;
  if (!qword_1EC15D928)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15D918, &qword_1C55B39E0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15D928);
    return WitnessTable;
  }

  return v2;
}

unint64_t type metadata accessor for TrustedContactPreflightStatus(uint64_t a1)
{
  v5 = qword_1EC15D940;
  if (!qword_1EC15D940)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_1EC15D940);
      return v2;
    }
  }

  return v5;
}

unint64_t sub_1C54D6DE8()
{
  v2 = qword_1EC15D930;
  if (!qword_1EC15D930)
  {
    type metadata accessor for TrustedContactPreflightStatus(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15D930);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C54D6E80()
{
  v2 = qword_1EC15D938;
  if (!qword_1EC15D938)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15D938);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1C54D6EFC(unsigned __int8 *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 <= 0xF7)
    {
      goto LABEL_15;
    }

    v7 = ((a2 + 8) >> 8) + 1;
    v8 = 1;
    if (v7 >= 0x100)
    {
      if (v7 >= 0x10000)
      {
        v2 = 4;
      }

      else
      {
        v2 = 2;
      }

      v8 = v2;
    }

    if (v8 == 1)
    {
      v6 = a1[1];
    }

    else
    {
      v6 = v8 == 2 ? *(a1 + 1) : *(a1 + 1);
    }

    if (v6)
    {
      v5 = (*a1 | ((v6 - 1) << 8)) + 247;
    }

    else
    {
LABEL_15:
      v3 = *a1 - 9;
      if (v3 < 0)
      {
        v3 = -1;
      }

      v5 = v3;
    }
  }

  else
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *sub_1C54D7064(_BYTE *result, unsigned int a2, unsigned int a3)
{
  v7 = 0;
  if (a3 > 0xF7)
  {
    v5 = ((a3 + 8) >> 8) + 1;
    v6 = 1;
    if (v5 >= 0x100)
    {
      if (v5 >= 0x10000)
      {
        v3 = 4;
      }

      else
      {
        v3 = 2;
      }

      v6 = v3;
    }

    v7 = v6;
  }

  if (a2 > 0xF7)
  {
    v4 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
    if (v7)
    {
      if (v7 == 1)
      {
        result[1] = v4;
      }

      else if (v7 == 2)
      {
        *(result + 1) = v4;
      }

      else
      {
        *(result + 1) = v4;
      }
    }
  }

  else
  {
    if (v7)
    {
      if (v7 == 1)
      {
        result[1] = 0;
      }

      else if (v7 == 2)
      {
        *(result + 1) = 0;
      }

      else
      {
        *(result + 1) = 0;
      }
    }

    if (a2)
    {
      *result = a2 + 8;
    }
  }

  return result;
}

uint64_t dispatch thunk of static InviteMessageDetailsProtocol.detailsFrom(_:_:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  v8 = v5;
  *(v5 + 16) = v5;
  v13 = (*(a5 + 400) + **(a5 + 400));
  v6 = swift_task_alloc();
  *(v8 + 24) = v6;
  *v6 = *(v8 + 16);
  v6[1] = sub_1C5405B1C;

  return v13(a1, a2, a3 & 1, a4, a5);
}

uint64_t sub_1C54D7BE8(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 195))
    {
      v4 = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v3 = -1;
      if (!HIDWORD(*(a1 + 8)))
      {
        v3 = *(a1 + 8);
      }

      v4 = v3;
    }
  }

  else
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_1C54D7D00(uint64_t result, int a2, int a3)
{
  v3 = (result + 195);
  if (a2 < 0)
  {
    *(result + 184) = 0;
    *(result + 176) = 0;
    *(result + 168) = 0;
    *(result + 160) = 0;
    *(result + 152) = 0;
    *(result + 144) = 0;
    *(result + 136) = 0;
    *(result + 128) = 0;
    *(result + 120) = 0;
    *(result + 112) = 0;
    *(result + 104) = 0;
    *(result + 96) = 0;
    *(result + 88) = 0;
    *(result + 80) = 0;
    *(result + 72) = 0;
    *(result + 64) = 0;
    *(result + 56) = 0;
    *(result + 48) = 0;
    *(result + 40) = 0;
    *(result + 32) = 0;
    *(result + 24) = 0;
    *(result + 16) = 0;
    *(result + 8) = 0;
    *result = a2 + 0x80000000;
    *(result + 194) = 0;
    *(result + 192) = 0;
    if (a3 < 0)
    {
      *v3 = 1;
    }
  }

  else
  {
    if (a3 < 0)
    {
      *v3 = 0;
    }

    if (a2)
    {
      *(result + 8) = (a2 - 1);
    }
  }

  return result;
}

unint64_t sub_1C54D7F40()
{
  v2 = qword_1EC15D948;
  if (!qword_1EC15D948)
  {
    type metadata accessor for TrustedContactPreflightStatus(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15D948);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C54D7FD8()
{
  v2 = qword_1EC15D950;
  if (!qword_1EC15D950)
  {
    type metadata accessor for TrustedContactPreflightStatus(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15D950);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C54D8070()
{
  v2 = qword_1EC15D958;
  if (!qword_1EC15D958)
  {
    type metadata accessor for TrustedContactPreflightStatus(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15D958);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C54D80F0()
{
  v2 = qword_1EC15D960;
  if (!qword_1EC15D960)
  {
    type metadata accessor for TrustedContactPreflightStatus(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15D960);
    return WitnessTable;
  }

  return v2;
}

unint64_t type metadata accessor for CompareOptions(uint64_t a1)
{
  v5 = qword_1EC15D978;
  if (!qword_1EC15D978)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_1EC15D978);
      return v2;
    }
  }

  return v5;
}

unint64_t sub_1C54D8208()
{
  v2 = qword_1EC15D968;
  if (!qword_1EC15D968)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1EC15D968);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_1C54D829C()
{
  v2 = qword_1EC15D970;
  if (!qword_1EC15D970)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1EC15D970);
    return ObjCClassMetadata;
  }

  return v2;
}

id static InviteMessageViewFactory.createInviteMessageViewUI(urlComponents:)(uint64_t a1)
{
  v23 = a1;
  v15 = "Fatal error";
  v16 = "Unexpectedly found nil while implicitly unwrapping an Optional value";
  v17 = "AppleAccountUI/InviteMessageView.swift";
  v34 = 0;
  v33 = 0;
  v29 = 0;
  v22 = sub_1C55946D4();
  v19 = *(v22 - 8);
  v20 = v22 - 8;
  v18 = (*(v19 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v23, v2, v3, v4);
  v21 = &v11 - v18;
  v34 = v5;
  v33 = v1;
  MEMORY[0x1E69E5928](v5, &v11 - v18);
  sub_1C55946C4();
  v24 = v32;
  static InviteMessageDetails.detailsPreviewFrom(_:_:)(v21, 0, v6, v7);
  (*(v19 + 8))(v21, v22);
  MEMORY[0x1E69E5920](v23);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15D980, &qword_1C55B3E28);
  v25 = v30;
  sub_1C5432498(v24, v30);
  v26 = v31;
  InviteMessageView.init(message:)(v25, v31);
  v27 = sub_1C5595484();
  v29 = v27;
  *&v9 = MEMORY[0x1E69E5928](v27, v8).n128_u64[0];
  v28 = [v27 view];
  MEMORY[0x1E69E5920](v27);
  if (v28)
  {
    v14 = v28;
  }

  else
  {
    sub_1C5596C94();
    __break(1u);
  }

  v13 = v14;
  v12 = [objc_opt_self() clearColor];
  [v13 setBackgroundColor_];
  MEMORY[0x1E69E5920](v12);
  MEMORY[0x1E69E5920](v13);
  __swift_destroy_boxed_opaque_existential_0(v32);
  return v27;
}

void InviteMessageView.init(message:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  memset(__b, 0, sizeof(__b));
  v5 = a1;
  sub_1C5432498(a1, v4);
  sub_1C5458604(v4, __b);
  sub_1C5432498(__b, a2);
  __swift_destroy_boxed_opaque_existential_0(a1);
  sub_1C54D8644(__b);
}

id InviteMessageViewFactory.init()()
{
  v4 = 0;
  v3.receiver = 0;
  v3.super_class = type metadata accessor for InviteMessageViewFactory();
  v2 = objc_msgSendSuper2(&v3, sel_init);
  MEMORY[0x1E69E5928](v2, v0);
  v4 = v2;
  MEMORY[0x1E69E5920](v2);
  return v2;
}

id InviteMessageViewFactory.__deallocating_deinit()
{
  v3 = v0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for InviteMessageViewFactory();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t InviteMessageView.message.setter(void *a1)
{
  v5 = 0;
  v6 = a1;
  sub_1C5432498(a1, v4);
  __swift_destroy_boxed_opaque_existential_0(__dst);
  sub_1C5458604(v4, __dst);
  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t InviteMessageView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v51 = a1;
  v30 = sub_1C54D9314;
  v60 = 0;
  v59 = 0;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15D988, &qword_1C55B3E30);
  v24 = (*(*(v37 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v37, v2, v3, v4);
  v39 = &v24 - v24;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15D990, &qword_1C55B3E38);
  v25 = (*(*(v41 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v41, v5, v6, v7);
  v43 = &v24 - v25;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15D998, &qword_1C55B3E40);
  v26 = (*(*(v44 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v44, v8, v9, v10);
  v46 = &v24 - v26;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15D9A0, &qword_1C55B3E48);
  v27 = (*(*(v47 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v47, v11, v12, v13);
  v50 = &v24 - v27;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15D9A8, &qword_1C55B3E50);
  v28 = (*(*(v52 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v52, v14, v15, v16);
  v54 = &v24 - v28;
  v29 = (v17 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](&v24 - v28, v18, v19, v20);
  v55 = &v24 - v29;
  v60 = &v24 - v29;
  v59 = v1;
  v33 = sub_1C5595434();
  v31 = &v56;
  v57 = v1;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15D9B0, &qword_1C55B3E58);
  sub_1C54D931C();
  v48 = 0;
  sub_1C5596064();
  v35 = sub_1C5596E04();
  v34 = v21;
  *v21 = sub_1C55957E4();
  v34[1] = sub_1C55957F4();
  sub_1C540FCD8();
  v36 = v22;
  sub_1C54DA7DC();
  sub_1C5596B04();
  v38 = v58;
  sub_1C54DA854();
  v40 = 0x4030000000000000;
  sub_1C5595D84();
  sub_1C54DA8DC(v39);
  v42 = sub_1C55957D4();
  sub_1C54DAFF8();
  sub_1C5595D84();
  sub_1C54DA8DC(v43);
  v45 = sub_1C55957C4();
  sub_1C54DB09C();
  sub_1C5595D84();
  sub_1C54DA8DC(v46);
  v49 = sub_1C54DB140();
  sub_1C5410F68();
  sub_1C5595D24();
  sub_1C54DA8DC(v50);
  v53 = sub_1C54DB1E4();
  sub_1C540EFD8(v54, v52, v55);
  sub_1C54DA8DC(v54);
  sub_1C54DB288(v55, v54);
  sub_1C540EFD8(v54, v52, v51);
  sub_1C54DA8DC(v54);
  return sub_1C54DA8DC(v55);
}

uint64_t sub_1C54D8DF4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v49 = a2;
  v38 = a1;
  v39 = sub_1C54ECBC8;
  v70 = 0;
  v69 = 0;
  v68 = 0;
  v67 = 0;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15DAC0, &qword_1C55B3F48);
  v28 = (*(*(v45 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v45, v2, v3, v4);
  v51 = &v27 - v28;
  v29 = (v5 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](&v27 - v28, v6, v7, v8);
  v54 = &v27 - v29;
  v70 = &v27 - v29;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15DD00, &qword_1C55B4418);
  v30 = (*(*(v44 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v44, v9, v10, v11);
  v52 = &v27 - v30;
  v31 = (v12 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](&v27 - v30, v13, v14, v15);
  v55 = &v27 - v31;
  v69 = &v27 - v31;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15D9D0, &qword_1C55B3E68);
  v32 = (*(*(v43 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v38, v16, v17, v18);
  v53 = &v27 - v32;
  v33 = (v19 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v20, &v27 - v32, v21, v22);
  v56 = &v27 - v33;
  v68 = &v27 - v33;
  v67 = v23;
  v36 = v63;
  sub_1C5432498(v23, v63);
  v35 = v64;
  v34 = v65;
  __swift_project_boxed_opaque_existential_0(v36, v64);
  v24 = (*(v34 + 368))(v35);
  v37 = 1;
  sub_1C54D93A4(v24 & 1, &v66);
  __swift_destroy_boxed_opaque_existential_0(v36);
  v62 = v66;
  sub_1C54ECA24();
  sub_1C5595C34();
  v25 = v38;
  v46 = sub_1C54ECAA0();
  sub_1C540EFD8(v53, v43, v56);
  sub_1C54ECB48(v53);
  v42 = sub_1C5595434();
  v40 = &v57;
  v58 = v25;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15DD18, &qword_1C55B4420);
  sub_1C54ECBD0();
  sub_1C5596064();
  v47 = sub_1C54ECC58();
  sub_1C540EFD8(v52, v44, v55);
  sub_1C54ECCE0(v52);
  InviteMessageView.footerView.getter(v51);
  v48 = sub_1C54DE3D0();
  sub_1C540EFD8(v51, v45, v54);
  sub_1C54DE478(v51);
  sub_1C54ECE24(v56, v53);
  v50 = v61;
  v61[0] = v53;
  sub_1C54ECEC4(v55, v52);
  v61[1] = v52;
  sub_1C54DDB54(v54, v51);
  v61[2] = v51;
  v60[0] = v43;
  v60[1] = v44;
  v60[2] = v45;
  v59[0] = v46;
  v59[1] = v47;
  v59[2] = v48;
  sub_1C540F5A0(v50, 3uLL, v60, v59, v49);
  sub_1C54DE478(v51);
  sub_1C54ECCE0(v52);
  sub_1C54ECB48(v53);
  sub_1C54DE478(v54);
  sub_1C54ECCE0(v55);
  return sub_1C54ECB48(v56);
}

unint64_t sub_1C54D931C()
{
  v2 = qword_1EC15D9B8;
  if (!qword_1EC15D9B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15D9B0, &qword_1C55B3E58);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15D9B8);
    return WitnessTable;
  }

  return v2;
}