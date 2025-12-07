uint64_t sub_25249BA50@<X0>(uint64_t a2@<X8>)
{
  sub_2526925A0();
  v3 = sub_252692330();
  sub_2526908F0();
  v4 = sub_252692920();
  v6 = v5;
  sub_2526925A0();
  v7 = sub_252692330();
  v22[3] = v20;
  v22[4] = v21;
  v22[1] = v18;
  v22[2] = v19;
  v22[0] = v17;
  *&v23 = v3;
  WORD4(v23) = 256;
  *&v24 = v4;
  *(&v24 + 1) = v6;
  v8 = v24;
  v10 = v23;
  v25 = v14;
  v26 = v15;
  *(a2 + 160) = 256;
  *&v27 = v16;
  *(&v27 + 1) = v7;
  v28 = 256;
  v12 = v26;
  v13 = v27;
  v11 = v25;
  *a2 = v17;
  *(a2 + 16) = v18;
  *(a2 + 64) = v21;
  *(a2 + 80) = v10;
  *(a2 + 32) = v19;
  *(a2 + 48) = v20;
  *(a2 + 128) = v12;
  *(a2 + 144) = v13;
  *(a2 + 96) = v8;
  *(a2 + 112) = v11;
  v29[0] = v14;
  v29[1] = v15;
  v30 = v16;
  v31 = v7;
  v32 = 256;
  sub_25237153C(v22, v33, &qword_27F4DEA80, &qword_25269FD60);
  sub_25237153C(&v25, v33, &qword_27F4DEA88, &qword_25269FD68);
  sub_252372288(v29, &qword_27F4DEA88, &qword_25269FD68);
  v33[2] = v19;
  v33[3] = v20;
  v33[4] = v21;
  v33[0] = v17;
  v33[1] = v18;
  v34 = v3;
  v35 = 256;
  v36 = v4;
  v37 = v6;
  return sub_252372288(v33, &qword_27F4DEA80, &qword_25269FD60);
}

uint64_t sub_25249BC34@<X0>(uint64_t a1@<X0>, double *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB2A8, &unk_2526960B0);
  MEMORY[0x28223BE20](v6 - 8);
  v52 = &v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v52 - v9;
  v11 = sub_25268ED20();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v53 = &v52 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v56 = &v52 - v15;
  v16 = sub_2526923E0();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v52 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = _s18ColorControlCircleVMa(0);
  v54 = a2;
  v55 = v20;
  v21 = *(v20 + 20);
  v57 = a1;
  v22 = (a1 + v21);
  if (v22[2] && (*v22 & 0x10100) == 0x100)
  {
    v23 = sub_252692920();
    v25 = v24;
    sub_25249C414(&v78);
    v64 = v84;
    v65 = v85;
    v66 = v86;
    v60 = v80;
    v61 = v81;
    v62 = v82;
    v63 = v83;
    v58 = v78;
    v59 = v79;
    v74 = v84;
    v75 = v85;
    v76 = v86;
    v70 = v80;
    v71 = v81;
    v72 = v82;
    v73 = v83;
    *&v67[0] = *&v87[0];
    *&v77[0] = *&v87[0];
    v68 = v78;
    v69 = v79;
    sub_25237153C(&v58, &v103, &qword_27F4DEAF0, &qword_25269FDE0);
    sub_252372288(&v68, &qword_27F4DEAF0, &qword_25269FDE0);
    v85 = v64;
    v86 = v65;
    v87[0] = v66;
    *&v87[1] = *&v67[0];
    v81 = v60;
    v82 = v61;
    v83 = v62;
    v84 = v63;
    v79 = v58;
    v80 = v59;
    *&v78 = v23;
    *(&v78 + 1) = v25;
    sub_25249D1D0(&v78);
  }

  else
  {
    _s16ColorPickerStateCMa(0);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v27 = [objc_opt_self() bundleForClass_];
    sub_252692440();
    (*(v17 + 104))(v19, *MEMORY[0x277CE0FE0], v16);
    v28 = sub_252692420();

    (*(v17 + 8))(v19, v16);
    v78 = v28;
    LOWORD(v79) = 1;
    sub_25249D090(&v78);
  }

  v96 = v86;
  v97[0] = v87[0];
  *(v97 + 9) = *(v87 + 9);
  v92 = v82;
  v93 = v83;
  v94 = v84;
  v95 = v85;
  v88 = v78;
  v89 = v79;
  v90 = v80;
  v91 = v81;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DEAC8, &qword_25269FDC8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DEAD0, &qword_25269FDD0);
  sub_252400FC8(&qword_27F4DEAD8, &qword_27F4DEAC8, &qword_25269FDC8, MEMORY[0x277CE11A8]);
  sub_25249D09C();
  sub_252691470();
  v29 = v57;
  sub_25237153C(v57, v10, &qword_27F4DB2A8, &unk_2526960B0);
  v30 = *(v12 + 48);
  if (v30(v10, 1, v11) == 1)
  {
    sub_252372288(v10, &qword_27F4DB2A8, &unk_2526960B0);
LABEL_12:
    v37 = 0;
    v38 = 0;
    v39 = 0;
    v40 = 0;
    v42 = 0;
    v36 = 0;
    v41 = 0;
    goto LABEL_13;
  }

  (*(v12 + 32))(v56, v10, v11);
  v31 = *(v29 + *(v55 + 24));
  if (v31 != 2)
  {
    if (v31)
    {
      goto LABEL_9;
    }

LABEL_11:
    (*(v12 + 8))(v56, v11);
    goto LABEL_12;
  }

  v32 = v52;
  sub_25237153C(v29, v52, &qword_27F4DB2A8, &unk_2526960B0);
  v33 = v30(v32, 1, v11);
  sub_252372288(v32, &qword_27F4DB2A8, &unk_2526960B0);
  if (v33 == 1)
  {
    goto LABEL_11;
  }

LABEL_9:
  sub_2526925A0();
  v34 = v53;
  v35 = v56;
  (*(v12 + 16))(v53, v56, v11);
  v36 = sub_25248C4C8(v34);
  (*(v12 + 8))(v35, v11);
  v37 = v98;
  v38 = v99;
  v39 = v100;
  v40 = v101;
  v41 = 256;
  v42 = v102;
LABEL_13:
  v66 = v111;
  v67[0] = v112[0];
  *(v67 + 9) = *(v112 + 9);
  v62 = v107;
  v63 = v108;
  v64 = v109;
  v65 = v110;
  v58 = v103;
  v59 = v104;
  v60 = v105;
  v61 = v106;
  v76 = v111;
  v77[0] = v112[0];
  *(v77 + 9) = *(v112 + 9);
  v72 = v107;
  v73 = v108;
  v74 = v109;
  v75 = v110;
  v68 = v103;
  v69 = v104;
  v43 = v106;
  v70 = v105;
  v71 = v106;
  v86 = v111;
  v87[0] = v112[0];
  *(v87 + 9) = *(v112 + 9);
  v82 = v107;
  v83 = v108;
  v84 = v109;
  v85 = v110;
  v78 = v103;
  v79 = v104;
  v80 = v105;
  v81 = v106;
  v44 = v110;
  v45 = v87[0];
  v46 = v87[1];
  *(a3 + 128) = v111;
  *(a3 + 144) = v45;
  *(a3 + 160) = v46;
  v47 = v83;
  v48 = v84;
  *(a3 + 64) = v82;
  *(a3 + 80) = v47;
  *(a3 + 96) = v48;
  *(a3 + 112) = v44;
  v49 = v79;
  v50 = v80;
  *a3 = v78;
  *(a3 + 16) = v49;
  *(a3 + 32) = v50;
  *(a3 + 48) = v43;
  *(a3 + 176) = v37;
  *(a3 + 184) = v38;
  *(a3 + 192) = v39;
  *(a3 + 200) = v40;
  *(a3 + 208) = v42;
  *(a3 + 216) = v36;
  *(a3 + 224) = v41;
  sub_25237153C(&v68, &v88, &qword_27F4DEAE8, &qword_25269FDD8);
  sub_25249D120(v37, v38, v39, v40, v42, v36);
  sub_25249D178(v37, v38, v39, v40, v42, v36);
  v96 = v66;
  v97[0] = v67[0];
  *(v97 + 9) = *(v67 + 9);
  v92 = v62;
  v93 = v63;
  v94 = v64;
  v95 = v65;
  v88 = v58;
  v89 = v59;
  v90 = v60;
  v91 = v61;
  return sub_252372288(&v88, &qword_27F4DEAE8, &qword_25269FDD8);
}

double sub_25249C414@<D0>(uint64_t a2@<X8>)
{
  sub_25249D1D8(&v18);
  v3 = v18;
  sub_2526925A0();
  sub_2526908F0();
  v4 = sub_2526922F0();
  KeyPath = swift_getKeyPath();
  v21[3] = v16;
  v21[4] = v17;
  v21[1] = v14;
  v21[2] = v15;
  v21[0] = v13;
  *&v22 = KeyPath;
  *(&v22 + 1) = v4;
  v23 = 0x3FB999999999999ALL;
  *&v12[102] = 0x3FB999999999999ALL;
  *&v12[54] = v16;
  *&v12[70] = v17;
  *&v12[6] = v13;
  *&v12[22] = v14;
  *&v12[38] = v15;
  *&v12[86] = v22;
  *a2 = v3;
  v6 = v19;
  *(a2 + 24) = v20;
  *(a2 + 8) = v6;
  *(a2 + 40) = 256;
  v7 = *&v12[48];
  *(a2 + 74) = *&v12[32];
  v8 = *v12;
  *(a2 + 58) = *&v12[16];
  *(a2 + 42) = v8;
  *(a2 + 136) = *&v12[94];
  v9 = *&v12[64];
  *(a2 + 122) = *&v12[80];
  *(a2 + 106) = v9;
  *(a2 + 90) = v7;
  v24[3] = v16;
  v24[4] = v17;
  v24[1] = v14;
  v24[2] = v15;
  v24[0] = v13;
  v25 = KeyPath;
  v26 = v4;
  v27 = 0x3FB999999999999ALL;

  sub_25237153C(v21, &v11, &qword_27F4DD8B0, &qword_25269D738);
  sub_252372288(v24, &qword_27F4DD8B0, &qword_25269D738);

  return result;
}

double sub_25249C5B8@<D0>(uint64_t a2@<X8>)
{
  v3 = sub_2526923E0();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25249CA7C(&v32);
  v27 = v32;
  sub_2526923F0();
  v7 = *MEMORY[0x277CE0FE0];
  v8 = *(v4 + 104);
  v25 = v34;
  v26 = v33;
  v8(v6, v7, v3);
  v24 = sub_252692420();

  (*(v4 + 8))(v6, v3);
  sub_252692920();
  sub_2526909C0();
  v9 = v35;
  v10 = v36;
  v11 = v37;
  v12 = v38;
  v13 = v39;
  v14 = v40;
  v15 = sub_252692330();
  KeyPath = swift_getKeyPath();
  v17 = v24;
  *&v41 = v24;
  *(&v41 + 1) = v9;
  LOBYTE(v42) = v10;
  *(&v42 + 1) = *v31;
  DWORD1(v42) = *&v31[3];
  *(&v42 + 1) = v11;
  LOBYTE(v43) = v12;
  DWORD1(v43) = *&v30[3];
  *(&v43 + 1) = *v30;
  *(&v43 + 1) = v13;
  *&v44 = v14;
  *(&v44 + 1) = KeyPath;
  v45 = v15;
  *&v29[6] = v41;
  *&v29[70] = v15;
  *&v29[54] = v44;
  *&v29[38] = v43;
  *&v29[22] = v42;
  *a2 = v27;
  v18 = v26;
  *(a2 + 24) = v25;
  *(a2 + 8) = v18;
  *(a2 + 40) = 256;
  v19 = *&v29[16];
  *(a2 + 42) = *v29;
  v20 = *&v29[32];
  v21 = *&v29[48];
  *(a2 + 104) = *&v29[62];
  *(a2 + 90) = v21;
  *(a2 + 74) = v20;
  *(a2 + 58) = v19;
  v46[0] = v17;
  v46[1] = v9;
  v47 = v10;
  *&v48[3] = *&v31[3];
  *v48 = *v31;
  v49 = v11;
  v50 = v12;
  *&v51[3] = *&v30[3];
  *v51 = *v30;
  v52 = v13;
  v53 = v14;
  v54 = KeyPath;
  v55 = v15;

  sub_25237153C(&v41, &v28, &qword_27F4DEAC0, &qword_25269FDC0);
  sub_252372288(v46, &qword_27F4DEAC0, &qword_25269FDC0);

  return result;
}

double sub_25249C8A4@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](a1 - 8);
  sub_25249CECC(v2, &v12[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)]);
  v6 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v7 = swift_allocObject();
  sub_25249CF30(&v12[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)], v7 + v6);
  sub_252692920();
  sub_252690D70();
  *&v13[54] = v14[3];
  *&v13[70] = v14[4];
  *&v13[86] = v14[5];
  *&v13[102] = v14[6];
  *&v13[6] = v14[0];
  *&v13[22] = v14[1];
  *&v13[38] = v14[2];
  v8 = *&v13[80];
  *(a2 + 90) = *&v13[64];
  *(a2 + 106) = v8;
  *(a2 + 122) = *&v13[96];
  v9 = *v13;
  *(a2 + 42) = *&v13[16];
  result = *&v13[32];
  v11 = *&v13[48];
  *(a2 + 58) = *&v13[32];
  *(a2 + 74) = v11;
  *a2 = sub_25249CF94;
  *(a2 + 8) = v7;
  *(a2 + 16) = 0x3FF0000000000000;
  *(a2 + 24) = 0;
  *(a2 + 136) = *&v13[110];
  *(a2 + 26) = v9;
  return result;
}

double sub_25249CA7C@<D0>(uint64_t a1@<X8>)
{
  v2 = sub_252692270();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *MEMORY[0x277CE0EE0];
  v8 = *(v3 + 104);
  v8(v6, v7, v2, v4);
  sub_252692390();
  (v8)(v6, v7, v2);
  sub_252692390();
  (v8)(v6, v7, v2);
  sub_252692390();
  (v8)(v6, v7, v2);
  sub_252692390();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DEA38, &unk_25269FCD0);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_25269FCC0;

  *(v9 + 32) = sub_252692830();
  *(v9 + 40) = v10;

  *(v9 + 48) = sub_252692830();
  *(v9 + 56) = v11;

  *(v9 + 64) = sub_252692830();
  *(v9 + 72) = v12;

  *(v9 + 80) = sub_252692830();
  *(v9 + 88) = v13;
  sub_252692840();
  sub_252690AB0();

  result = *&v17;
  v15 = v18;
  *a1 = v17;
  *(a1 + 16) = v15;
  *(a1 + 32) = v19;
  return result;
}

uint64_t _s18ColorControlCircleVMa(uint64_t a1)
{
  result = qword_27F4DEA40;
  if (!qword_27F4DEA40)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_25249CD9C(uint64_t a1)
{
  sub_25249CE58(319);
  if (v1 <= 0x3F)
  {
    sub_2523E19E4(319, &qword_27F4DEA50, &type metadata for AccessoryControl.ColorPickerConfig);
    if (v2 <= 0x3F)
    {
      sub_2523E19E4(319, &qword_27F4DBBB8, MEMORY[0x277D839B0]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_25249CE58(uint64_t a1)
{
  if (!qword_27F4DCBE8)
  {
    sub_25268ED20();
    v1 = sub_252693130();
    if (!v2)
    {
      atomic_store(v1, &qword_27F4DCBE8);
    }
  }
}

uint64_t sub_25249CECC(uint64_t a1, uint64_t a2)
{
  v4 = _s18ColorControlCircleVMa(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_25249CF30(uint64_t a1, uint64_t a2)
{
  v4 = _s18ColorControlCircleVMa(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

double sub_25249CF94@<D0>(uint64_t a1@<X8>)
{
  v3 = *(_s18ColorControlCircleVMa(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_25249AE1C(v4, a1);
}

unint64_t sub_25249D020()
{
  result = qword_27F4DEA70;
  if (!qword_27F4DEA70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4DEA70);
  }

  return result;
}

unint64_t sub_25249D09C()
{
  result = qword_27F4DEAE0;
  if (!qword_27F4DEAE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4DEAD0, &qword_25269FDD0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4DEAE0);
  }

  return result;
}

void sub_25249D120(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a6)
  {
    sub_25249D160(a1, a2, a3, a4, a5);
  }
}

uint64_t sub_25249D160(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 a5)
{
  if (a5 - 2 <= 3)
  {
  }

  return v5;
}

double sub_25249D178(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a6)
  {
    sub_25249D1B8(a1, a2, a3, a4, a5);
  }

  return result;
}

double sub_25249D1B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 a5)
{
  if (a5 - 2 <= 3)
  {
  }

  return result;
}

double sub_25249D1D8@<D0>(uint64_t a1@<X8>)
{
  v2 = sub_252692270();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *MEMORY[0x277CE0EE0];
  v8 = *(v3 + 104);
  v8(v6, v7, v2, v4);
  sub_252692390();
  (v8)(v6, v7, v2);
  sub_252692390();
  (v8)(v6, v7, v2);
  sub_252692390();
  (v8)(v6, v7, v2);
  sub_252692390();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DEA38, &unk_25269FCD0);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_25269FCC0;

  *(v9 + 32) = sub_252692830();
  *(v9 + 40) = v10;

  *(v9 + 48) = sub_252692830();
  *(v9 + 56) = v11;

  *(v9 + 64) = sub_252692830();
  *(v9 + 72) = v12;

  *(v9 + 80) = sub_252692830();
  *(v9 + 88) = v13;
  sub_252692840();
  sub_252690AB0();

  result = *&v17;
  v15 = v18;
  *a1 = v17;
  *(a1 + 16) = v15;
  *(a1 + 32) = v19;
  return result;
}

unint64_t sub_25249D49C()
{
  result = qword_27F4DEAF8;
  if (!qword_27F4DEAF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4DEB00, &qword_25269FDE8);
    sub_25249D528();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4DEAF8);
  }

  return result;
}

unint64_t sub_25249D528()
{
  result = qword_27F4DEB08;
  if (!qword_27F4DEB08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4DEB10, &qword_25269FDF0);
    sub_252400FC8(&qword_27F4DEB18, &qword_27F4DEB20, &unk_25269FDF8, MEMORY[0x277CDF7D8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4DEB08);
  }

  return result;
}

void ControlTextModifier.Config.hash(into:)(uint64_t a1)
{
  v2 = sub_25268D990();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for ControlTextModifier.Config(0);
  MEMORY[0x28223BE20](v6);
  v8 = (&v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_25249F0D0(v1, v8, type metadata accessor for ControlTextModifier.Config);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      MEMORY[0x2530A4FE0](2);
      sub_252692C80();
    }

    else
    {
      v14 = *v8;
      v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB2E0, &unk_252696D30);
      (*(v3 + 32))(v5, v8 + *(v15 + 48), v2);
      MEMORY[0x2530A4FE0](1);
      v16 = 0.0;
      if (v14 != 0.0)
      {
        v16 = v14;
      }

      MEMORY[0x2530A5020](*&v16);
      sub_25249F1E8(&qword_27F4DB768, MEMORY[0x277CC9578], MEMORY[0x277CC9588]);
      sub_252692B30();
      (*(v3 + 8))(v5, v2);
    }
  }

  else
  {
    if (EnumCaseMultiPayload == 2)
    {
      v17 = *v8;
      MEMORY[0x2530A4FE0](3);
      v13 = 0.0;
      if (v17 != 0.0)
      {
        v13 = v17;
      }

      goto LABEL_16;
    }

    if (EnumCaseMultiPayload == 3)
    {
      v10 = *v8;
      v11 = v8[1];
      MEMORY[0x2530A4FE0](4);
      if (v10 == 0.0)
      {
        v12 = 0.0;
      }

      else
      {
        v12 = v10;
      }

      MEMORY[0x2530A5020](*&v12);
      if (v11 == 0.0)
      {
        v13 = 0.0;
      }

      else
      {
        v13 = v11;
      }

LABEL_16:
      MEMORY[0x2530A5020](*&v13);
      return;
    }

    MEMORY[0x2530A4FE0](0);
  }
}

uint64_t ControlTextModifier.Config.hashValue.getter()
{
  sub_252693460();
  ControlTextModifier.Config.hash(into:)(v1);
  return sub_2526934C0();
}

uint64_t sub_25249D8C0()
{
  sub_252693460();
  ControlTextModifier.Config.hash(into:)(v1);
  return sub_2526934C0();
}

uint64_t sub_25249D904(uint64_t a1)
{
  sub_252693460();
  ControlTextModifier.Config.hash(into:)(v2);
  return sub_2526934C0();
}

uint64_t ControlTextModifier.body(content:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DEB28, &qword_25269FE08);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v17 - v8;
  v10 = type metadata accessor for ControlTextModifier(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10 - 8);
  sub_25249F0D0(v3, &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ControlTextModifier);
  (*(v7 + 16))(v9, a1, v6);
  v13 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v14 = (v12 + *(v7 + 80) + v13) & ~*(v7 + 80);
  v15 = swift_allocObject();
  sub_25249F138(&v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v15 + v13);
  result = (*(v7 + 32))(v15 + v14, v9, v6);
  *a2 = sub_25249F19C;
  a2[1] = v15;
  return result;
}

uint64_t sub_25249DB34@<X0>(char *a1@<X1>, uint64_t a2@<X2>, void *a3@<X8>)
{
  v124 = a2;
  v129 = a1;
  v128 = a3;
  v125 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DEB78, &qword_25269FF08);
  MEMORY[0x28223BE20](v125);
  v127 = &v104 - v3;
  v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DEB80, &qword_25269FF10);
  MEMORY[0x28223BE20](v120);
  v122 = &v104 - v4;
  v126 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DEB88, &qword_25269FF18);
  MEMORY[0x28223BE20](v126);
  v123 = &v104 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB2D8, &qword_252696D10);
  MEMORY[0x28223BE20](v6 - 8);
  v114 = &v104 - v7;
  v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DD5E8, &unk_25269D0F0);
  MEMORY[0x28223BE20](v113);
  v9 = &v104 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v111 = &v104 - v11;
  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DD5F0, &qword_25269FF20);
  MEMORY[0x28223BE20](v110);
  v112 = &v104 - v12;
  v119 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DEB90, &qword_25269FF28);
  MEMORY[0x28223BE20](v119);
  v121 = &v104 - v13;
  v14 = sub_25268D990();
  v116 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v16 = &v104 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v104 - v18;
  MEMORY[0x28223BE20](v20);
  v115 = &v104 - v21;
  MEMORY[0x28223BE20](v22);
  v117 = &v104 - v23;
  MEMORY[0x28223BE20](v24);
  v118 = &v104 - v25;
  v26 = type metadata accessor for ControlTextModifier.Config(0);
  MEMORY[0x28223BE20](v26);
  v28 = (&v104 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
  v29 = sub_2526914B0();
  v30 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v32 = &v104 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_252691670();
  sub_252690A00();
  v34 = v33;
  v36 = v35;
  v38 = v37;
  v40 = v39;
  (*(v30 + 8))(v32, v29);
  v146.origin.x = v34;
  v146.origin.y = v36;
  v146.size.width = v38;
  v146.size.height = v40;
  MidX = CGRectGetMidX(v146);
  sub_2526909F0();
  v43 = v42 * 0.75;
  sub_25249F0D0(v129, v28, type metadata accessor for ControlTextModifier.Config);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    v53 = *v28;
    v54 = v28[1];
    v55 = sub_252692910();
    v57 = v56;
    v137 = v53;
    v138 = v54;
    sub_252404480();
    v58 = sub_252691D50();
    v60 = v59;
    v62 = v61;
    v64 = v63 & 1;
    LOBYTE(v130[0]) = v63 & 1;
    *&v133 = v58;
    *(&v133 + 1) = v59;
    LOBYTE(v134) = v63 & 1;
    *(&v134 + 1) = v61;
    *&v135 = MidX;
    *(&v135 + 1) = v43;
    *&v136 = v55;
    *(&v136 + 1) = v57;
    v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DEB28, &qword_25269FE08);
    v66 = v121;
    (*(*(v65 - 8) + 16))(v121, v124, v65);
    v67 = (v66 + *(v119 + 36));
    v68 = v134;
    *v67 = v133;
    v67[1] = v68;
    v69 = v136;
    v67[2] = v135;
    v67[3] = v69;
    v137 = v58;
    v138 = v60;
    v139 = v64;
    v141 = v62;
    v142 = MidX;
    v143 = v43;
    v144 = v55;
    v145 = v57;
    sub_25237153C(&v133, v132, &qword_27F4DEBB8, &qword_25269FF30);
    sub_252372288(&v137, &qword_27F4DEBB8, &qword_25269FF30);
    sub_25237153C(v66, v122, &qword_27F4DEB90, &qword_25269FF28);
    swift_storeEnumTagMultiPayload();
    sub_25249F75C();
    v70 = v123;
    sub_252691470();
    sub_25237153C(v70, v127, &qword_27F4DEB88, &qword_25269FF18);
    swift_storeEnumTagMultiPayload();
    sub_25249F6D8();
    sub_252400FC8(&qword_27F4DEBA8, &qword_27F4DEB28, &qword_25269FE08, MEMORY[0x277CE04B0]);
    sub_252691470();
    sub_252372288(v70, &qword_27F4DEB88, &qword_25269FF18);
    return sub_252372288(v66, &qword_27F4DEB90, &qword_25269FF28);
  }

  else if (EnumCaseMultiPayload)
  {
    v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DEB28, &qword_25269FE08);
    (*(*(v72 - 8) + 16))(v127, v124, v72);
    swift_storeEnumTagMultiPayload();
    sub_25249F6D8();
    sub_252400FC8(&qword_27F4DEBA8, &qword_27F4DEB28, &qword_25269FE08, MEMORY[0x277CE04B0]);
    sub_252691470();
    return sub_25249F840(v28);
  }

  else
  {
    v129 = v9;
    v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB2E0, &unk_252696D30);
    v46 = v116;
    v47 = *(v116 + 32);
    v48 = v118;
    v47(v118, v28 + *(v45 + 48), v14);
    v49 = v117;
    sub_25268D980();
    v50 = *(v46 + 16);
    v50(v16, v48, v14);
    sub_25268D920();
    v51 = sub_25268D940();
    v109 = v47;
    if (v51)
    {
      v52 = v115;
      v47(v115, v19, v14);
    }

    else
    {
      (*(v46 + 8))(v19, v14);
      v52 = v115;
      v50(v115, v49, v14);
    }

    v73 = sub_252692910();
    v75 = v74;
    sub_25249F1E8(&qword_27F4DBC70, MEMORY[0x277CC9578], MEMORY[0x277CC9590]);
    result = sub_252692B60();
    v76 = v129;
    if (result)
    {
      v106 = v73;
      v77 = v111;
      v50(v111, v48, v14);
      v78 = v113;
      v50((v77 + *(v113 + 48)), v52, v14);
      sub_25237153C(v77, v76, &qword_27F4DD5E8, &unk_25269D0F0);
      v104 = *(v78 + 48);
      v79 = v112;
      v80 = v109;
      v109(v112, v76, v14);
      v105 = v75;
      v81 = v116;
      v82 = v116 + 8;
      v83 = *(v116 + 8);
      v83(&v76[v104], v14);
      v107 = v83;
      v108 = v82;
      sub_252461530(v77, v76);
      v80(&v79[*(v110 + 36)], &v76[*(v78 + 48)], v14);
      v83(v76, v14);
      (*(v81 + 56))(v114, 1, 1, v14);
      v84 = sub_252691CA0();
      v86 = v85;
      v88 = v87;
      v89 = sub_252691CE0();
      v91 = v90;
      LOBYTE(v83) = v92;
      v94 = v93;
      sub_2524228D8(v84, v86, v88 & 1);

      v131 = v83 & 1;
      *&v133 = v89;
      *(&v133 + 1) = v91;
      LOBYTE(v134) = v83 & 1;
      *(&v134 + 1) = v130[0];
      DWORD1(v134) = *(v130 + 3);
      *(&v134 + 1) = v94;
      *&v135 = MidX;
      *(&v135 + 1) = v43;
      v95 = v106;
      v96 = v105;
      *&v136 = v106;
      *(&v136 + 1) = v105;
      v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DEB28, &qword_25269FE08);
      v98 = v121;
      (*(*(v97 - 8) + 16))(v121, v124, v97);
      v99 = (v98 + *(v119 + 36));
      v100 = v134;
      *v99 = v133;
      v99[1] = v100;
      v101 = v136;
      v99[2] = v135;
      v99[3] = v101;
      v137 = v89;
      v138 = v91;
      v139 = v83 & 1;
      *v140 = v130[0];
      *&v140[3] = *(v130 + 3);
      v141 = v94;
      v142 = MidX;
      v143 = v43;
      v144 = v95;
      v145 = v96;
      sub_25237153C(&v133, v132, &qword_27F4DEBB8, &qword_25269FF30);
      sub_252372288(&v137, &qword_27F4DEBB8, &qword_25269FF30);
      sub_25237153C(v98, v122, &qword_27F4DEB90, &qword_25269FF28);
      swift_storeEnumTagMultiPayload();
      sub_25249F75C();
      v102 = v123;
      sub_252691470();
      sub_25237153C(v102, v127, &qword_27F4DEB88, &qword_25269FF18);
      swift_storeEnumTagMultiPayload();
      sub_25249F6D8();
      sub_252400FC8(&qword_27F4DEBA8, &qword_27F4DEB28, &qword_25269FE08, MEMORY[0x277CE04B0]);
      sub_252691470();
      sub_252372288(v102, &qword_27F4DEB88, &qword_25269FF18);
      sub_252372288(v98, &qword_27F4DEB90, &qword_25269FF28);
      v103 = v107;
      v107(v117, v14);
      v103(v115, v14);
      return (v103)(v118, v14);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_25249E9B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DEB28, &qword_25269FE08);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v20 - v10;
  v12 = *(a2 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v14);
  v15 = &v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25249F0D0(v5, v15, type metadata accessor for ControlTextModifier);
  (*(v9 + 16))(v11, a1, v8);
  v16 = (*(v12 + 80) + 16) & ~*(v12 + 80);
  v17 = (v13 + v16 + *(v9 + 80)) & ~*(v9 + 80);
  v18 = swift_allocObject();
  sub_25249F138(v15, v18 + v16);
  result = (*(v9 + 32))(v18 + v17, v11, v8);
  *a3 = sub_25249F89C;
  a3[1] = v18;
  return result;
}

uint64_t _s22HomeAccessoryControlUI0C12TextModifierV6ConfigO2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v46 = a1;
  v47 = a2;
  v2 = sub_25268D990();
  v44 = *(v2 - 8);
  v45 = v2;
  MEMORY[0x28223BE20](v2);
  v4 = &v44 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v44 - v6;
  v8 = type metadata accessor for ControlTextModifier.Config(0);
  MEMORY[0x28223BE20](v8);
  v10 = (&v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v11);
  v13 = (&v44 - v12);
  MEMORY[0x28223BE20](v14);
  v16 = (&v44 - v15);
  MEMORY[0x28223BE20](v17);
  v19 = (&v44 - v18);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DEBC0, &qword_25269FF38);
  MEMORY[0x28223BE20](v20 - 8);
  v22 = &v44 - v21;
  v24 = (&v44 + *(v23 + 56) - v21);
  sub_25249F0D0(v46, &v44 - v21, type metadata accessor for ControlTextModifier.Config);
  sub_25249F0D0(v47, v24, type metadata accessor for ControlTextModifier.Config);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    v28 = v4;
    v29 = v44;
    v30 = v45;
    if (EnumCaseMultiPayload)
    {
      sub_25249F0D0(v22, v16, type metadata accessor for ControlTextModifier.Config);
      v34 = *v16;
      v33 = v16[1];
      if (swift_getEnumCaseMultiPayload() != 1)
      {

        goto LABEL_25;
      }

      if (v34 == *v24 && v33 == *(v24 + 1))
      {

        goto LABEL_31;
      }

      v36 = sub_2526933B0();

      if (v36)
      {
LABEL_31:
        sub_25249F840(v22);
        v32 = 1;
        return v32 & 1;
      }
    }

    else
    {
      sub_25249F0D0(v22, v19, type metadata accessor for ControlTextModifier.Config);
      v31 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB2E0, &unk_252696D30) + 48);
      if (swift_getEnumCaseMultiPayload())
      {
        (*(v29 + 8))(v19 + v31, v30);
        goto LABEL_25;
      }

      v37 = *v19;
      v38 = *v24;
      v39 = v29;
      v40 = *(v29 + 32);
      v40(v7, v19 + v31, v30);
      v40(v28, v24 + v31, v30);
      if (v37 == v38)
      {
        v32 = sub_25268D970();
        v41 = *(v39 + 8);
        v41(v28, v30);
        v41(v7, v30);
LABEL_29:
        sub_25249F840(v22);
        return v32 & 1;
      }

      v43 = *(v39 + 8);
      v43(v28, v30);
      v43(v7, v30);
    }

LABEL_34:
    sub_25249F840(v22);
    goto LABEL_26;
  }

  if (EnumCaseMultiPayload == 2)
  {
    sub_25249F0D0(v22, v13, type metadata accessor for ControlTextModifier.Config);
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      v27 = *v13 == *v24;
LABEL_12:
      v32 = v27;
      goto LABEL_29;
    }

    goto LABEL_25;
  }

  if (EnumCaseMultiPayload != 3)
  {
    if (swift_getEnumCaseMultiPayload() != 4)
    {
      goto LABEL_25;
    }

    goto LABEL_31;
  }

  sub_25249F0D0(v22, v10, type metadata accessor for ControlTextModifier.Config);
  v26 = v10[1];
  if (swift_getEnumCaseMultiPayload() == 3)
  {
    if (*v10 == *v24)
    {
      v27 = v26 == v24[1];
      goto LABEL_12;
    }

    goto LABEL_34;
  }

LABEL_25:
  sub_252372288(v22, &qword_27F4DEBC0, &qword_25269FF38);
LABEL_26:
  v32 = 0;
  return v32 & 1;
}

uint64_t sub_25249F0D0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_25249F138(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ControlTextModifier(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_25249F1E8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_25249F274(uint64_t a1)
{
  result = type metadata accessor for ControlTextModifier.Config(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_25249F2E0(uint64_t a1)
{
  sub_25249F368(319);
  if (v1 <= 0x3F)
  {
    sub_25249F3D4();
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_25249F368(uint64_t a1)
{
  if (!qword_27F4DEB58)
  {
    sub_25268D990();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_27F4DEB58);
    }
  }
}

void sub_25249F3D4()
{
  if (!qword_27F4DEB60)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27F4DEB60);
    }
  }
}

uint64_t objectdestroyTm_10()
{
  v1 = *(type metadata accessor for ControlTextModifier(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DEB28, &qword_25269FE08);
  v6 = *(v5 - 8);
  v7 = *(v6 + 80);
  v8 = *(v6 + 64);
  type metadata accessor for ControlTextModifier.Config(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
  }

  else if (!EnumCaseMultiPayload)
  {
    v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB2E0, &unk_252696D30) + 48);
    v11 = sub_25268D990();
    (*(*(v11 - 8) + 8))(v0 + v3 + v10, v11);
  }

  v12 = v2 | v7;
  v13 = (v3 + v4 + v7) & ~v7;
  (*(v6 + 8))(v0 + v13, v5);

  return MEMORY[0x2821FE8E8](v0, v13 + v8, v12 | 7);
}

uint64_t sub_25249F5E8@<X0>(void *a1@<X8>)
{
  v3 = *(type metadata accessor for ControlTextModifier(0) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = v4 + *(v3 + 64);
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DEB28, &qword_25269FE08) - 8);
  v7 = v1 + ((v5 + *(v6 + 80)) & ~*(v6 + 80));

  return sub_25249DB34((v1 + v4), v7, a1);
}

unint64_t sub_25249F6D8()
{
  result = qword_27F4DEB98;
  if (!qword_27F4DEB98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4DEB88, &qword_25269FF18);
    sub_25249F75C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4DEB98);
  }

  return result;
}

unint64_t sub_25249F75C()
{
  result = qword_27F4DEBA0;
  if (!qword_27F4DEBA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4DEB90, &qword_25269FF28);
    sub_252400FC8(&qword_27F4DEBA8, &qword_27F4DEB28, &qword_25269FE08, MEMORY[0x277CE04B0]);
    sub_252400FC8(&qword_27F4DEBB0, &qword_27F4DEBB8, &qword_25269FF30, MEMORY[0x277CDFC88]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4DEBA0);
  }

  return result;
}

uint64_t sub_25249F840(uint64_t a1)
{
  v2 = type metadata accessor for ControlTextModifier.Config(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

__n128 __swift_memcpy48_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_25249F8E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = 1.0;
  if (*(v2 + 24))
  {
    goto LABEL_12;
  }

  v6 = *(v2 + 8);
  v7 = *(v2 + 16);
  v8 = v6 < v7 || v7 < *v2;
  v5 = v8 ? 1.02 : 1.0;
  v9 = v6 * 0.5;
  sub_252692910();
  v10 = sub_2526928F0();
  v11 = v7 < v9;
  if (v10)
  {
    v11 = v9 <= v7;
  }

  if (!v11)
  {
LABEL_12:
    sub_252692A20();
  }

  else
  {
    sub_252692A30();
  }

  v14 = v12;
  v15 = v13;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DEBC8, &qword_25269FFD8);
  (*(*(v16 - 8) + 16))(a2, a1, v16);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DEBD0, &qword_25269FFE0);
  v18 = a2 + *(result + 36);
  *v18 = 0x3FF0000000000000;
  *(v18 + 8) = v5;
  *(v18 + 16) = v14;
  *(v18 + 24) = v15;
  return result;
}

unint64_t sub_25249FA28()
{
  result = qword_27F4DEBD8;
  if (!qword_27F4DEBD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4DEBD0, &qword_25269FFE0);
    sub_25249FAB4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4DEBD8);
  }

  return result;
}

unint64_t sub_25249FAB4()
{
  result = qword_27F4DEBE0;
  if (!qword_27F4DEBE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4DEBC8, &qword_25269FFD8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4DEBE0);
  }

  return result;
}

uint64_t ValueThrottleModifier.init(config:updater:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  sub_2526924D0();
  *a4 = v11;
  *(a4 + 16) = v12;
  *(a4 + 32) = v13;
  *(a4 + 48) = v14;
  v8 = type metadata accessor for ValueThrottleModifier(0);
  result = sub_2524A2370(a1, a4 + *(v8 + 20), type metadata accessor for ValueThrottleModifier.Config);
  v10 = (a4 + *(v8 + 24));
  *v10 = a2;
  v10[1] = a3;
  return result;
}

void *ValueThrottleModifier.body(content:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DEBE8, &qword_2526A0010);
  MEMORY[0x28223BE20](v5);
  v7 = v29 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DEBF0, &qword_2526A0018);
  MEMORY[0x28223BE20](v8);
  v10 = v29 - v9;
  v11 = (v2 + *(type metadata accessor for ValueThrottleModifier(0) + 20));
  if (*(v11 + *(type metadata accessor for ValueThrottleModifier.Config(0) + 32)) == 1)
  {
    v12 = sub_252692920();
    v29[0] = v5;
    v29[1] = a2;
    v13 = v12;
    v14 = a1;
    v16 = v15;
    v17 = &v10[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DEC10, &qword_2526A0028) + 36)];
    sub_2524A0158(v2, v17);
    v18 = (v17 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DEC28, &qword_2526A0030) + 36));
    *v18 = v13;
    v18[1] = v16;
    v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DEBF8, &qword_2526A0020);
    (*(*(v19 - 8) + 16))(v10, v14, v19);
    v20 = *v11;
    v21 = v11[1];
    v22 = *(v2 + 16);
    v31 = *v2;
    v32 = v22;
    v33 = *(v2 + 32);
    v34 = *(v2 + 48);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DEC38, &qword_2526A0038);
    sub_2526924E0();
    v23 = v29[6];
    LOBYTE(v16) = v30;
    v24 = sub_25268EE90();
    v25 = &v10[*(v8 + 36)];
    *v25 = v20;
    *(v25 + 1) = v21;
    *(v25 + 2) = v23;
    v25[24] = v16;
    *(v25 + 4) = v24;
    *(v25 + 5) = v26;
    sub_2523182D8(v10, v7);
    swift_storeEnumTagMultiPayload();
    sub_25249FF94();
    sub_252400FC8(&qword_27F4DEC18, &qword_27F4DEBF8, &qword_2526A0020, MEMORY[0x277CE04B0]);
    sub_252691470();
    return sub_252318348(v10);
  }

  else
  {
    v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DEBF8, &qword_2526A0020);
    (*(*(v28 - 8) + 16))(v7, a1, v28);
    swift_storeEnumTagMultiPayload();
    sub_25249FF94();
    sub_252400FC8(&qword_27F4DEC18, &qword_27F4DEBF8, &qword_2526A0020, MEMORY[0x277CE04B0]);
    return sub_252691470();
  }
}

unint64_t sub_25249FF94()
{
  result = qword_27F4DEC00;
  if (!qword_27F4DEC00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4DEBF0, &qword_2526A0018);
    sub_2524A0020();
    sub_2524A0104();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4DEC00);
  }

  return result;
}

unint64_t sub_2524A0020()
{
  result = qword_27F4DEC08;
  if (!qword_27F4DEC08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4DEC10, &qword_2526A0028);
    sub_252400FC8(&qword_27F4DEC18, &qword_27F4DEBF8, &qword_2526A0020, MEMORY[0x277CE04B0]);
    sub_252400FC8(&qword_27F4DEC20, &qword_27F4DEC28, &qword_2526A0030, MEMORY[0x277CDFC88]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4DEC08);
  }

  return result;
}

unint64_t sub_2524A0104()
{
  result = qword_27F4DEC30;
  if (!qword_27F4DEC30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4DEC30);
  }

  return result;
}

double sub_2524A0158@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v26 = a1;
  v33 = a2;
  v3 = type metadata accessor for ValueThrottleModifier(0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3 - 8);
  v25[1] = v5;
  v6 = v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2526914B0();
  MEMORY[0x28223BE20](v7);
  v8 = sub_252690890();
  v27 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DDA80, &qword_25269DD90);
  v12 = *(v11 - 8);
  v28 = v11;
  v29 = v12;
  MEMORY[0x28223BE20](v11);
  v14 = v25 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DDA88, &qword_25269DD98);
  v16 = *(v15 - 8);
  v31 = v15;
  v32 = v16;
  MEMORY[0x28223BE20](v15);
  v18 = v25 - v17;
  v30 = sub_252692310();
  v34 = v30;
  v35 = 256;
  v36 = 0;
  sub_252691670();
  sub_252690860();
  sub_2524A230C(a1, v6);
  v19 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v20 = swift_allocObject();
  sub_2524A2370(v6, v20 + v19, type metadata accessor for ValueThrottleModifier);
  sub_2524A23F0(&qword_27F4DDAA0, MEMORY[0x277CDD730], MEMORY[0x277CDD728]);
  sub_2524A23F0(&qword_27F4DDAA8, MEMORY[0x277CDD708], MEMORY[0x277CDD710]);
  sub_2526927D0();

  (*(v27 + 8))(v10, v8);
  sub_2524A230C(v26, v6);
  v21 = swift_allocObject();
  sub_2524A2370(v6, v21 + v19, type metadata accessor for ValueThrottleModifier);
  sub_252400FC8(&qword_27F4DDAB0, &qword_27F4DDA80, &qword_25269DD90, MEMORY[0x277CDFB18]);
  v22 = v28;
  sub_2526927C0();

  (*(v29 + 8))(v14, v22);
  sub_2526908B0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DD2E0, &qword_2526A0200);
  sub_25245B098();
  sub_252400FC8(&qword_27F4DDAC0, &qword_27F4DDA88, &qword_25269DD98, MEMORY[0x277CDF728]);
  v23 = v31;
  sub_252692000();
  (*(v32 + 8))(v18, v23);

  return result;
}

void *sub_2524A0688(uint64_t a1, __int128 *a2)
{
  sub_252690880();
  v4 = v3;
  sub_252690870();
  sub_2524A07E8(v4, v5);
  v6 = a2[1];
  v20 = *a2;
  v21 = v6;
  v8 = *a2;
  v7 = a2[1];
  v22 = a2[2];
  v23 = *(a2 + 6);
  v16 = v8;
  v17 = v7;
  v18 = a2[2];
  v19 = *(a2 + 6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DEC38, &qword_2526A0038);
  result = sub_2526924E0();
  if ((v14 & 1) == 0)
  {
    v10 = *(a2 + *(type metadata accessor for ValueThrottleModifier(0) + 24));
    sub_2526924E0();
    v16 = v20;
    v17 = v21;
    v18 = v22;
    v19 = v23;
    sub_2526924E0();
    v11 = v15;
    if (v15 == 2)
    {
      v12 = 0;
    }

    else
    {
      v12 = v13;
    }

    if (v15 != 2)
    {
      v11 = v15 & 1;
    }

    *&v16 = v12;
    BYTE8(v16) = v11;
    return v10(&v16);
  }

  return result;
}

void sub_2524A07E8(double a1, double a2)
{
  v5 = sub_25268ED70();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = (v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = (v2 + *(type metadata accessor for ValueThrottleModifier(0) + 20));
  v10 = type metadata accessor for ValueThrottleModifier.Config(0);
  (*(v6 + 16))(v8, v9 + *(v10 + 24), v5);
  v11 = (*(v6 + 88))(v8, v5);
  if (v11 == *MEMORY[0x277D15BB8])
  {
    (*(v6 + 96))(v8, v5);
    sub_2524A18E8(a2, *v8);
  }

  else if (v11 == *MEMORY[0x277D15BB0])
  {
    (*(v6 + 96))(v8, v5);
    v13 = *v8;
    v12 = v8[1];
    v14 = sub_2524A1C5C(v2, a1, v12, *v8);
    v15 = sub_2524A1DCC(v2, v14, v13, v12) - a2;
    if (v14)
    {
      v13 = *v9;
    }

    else
    {
      v12 = v9[1];
    }

    if (v15 >= v13)
    {
      v16 = v15;
    }

    else
    {
      v16 = v13;
    }

    if (v12 >= v16)
    {
      v17 = v16;
    }

    else
    {
      v17 = v12;
    }

    v18 = *(v2 + 16);
    v43 = *v2;
    v44 = v18;
    v20 = *v2;
    v19 = *(v2 + 16);
    v45 = *(v2 + 32);
    v46 = *(v2 + 48);
    v34 = v20;
    v21 = *(v2 + 32);
    v35 = v19;
    v36 = v21;
    v37 = *(v2 + 48);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DEC38, &qword_2526A0038);
    sub_2526924E0();
    v30 = v43;
    v31 = v44;
    v32 = v45;
    v33 = v46;
    v23[2] = v38;
    v24 = v39;
    v25 = v17;
    v26 = 0;
    v27 = v40;
    v28 = v41;
    v29 = v42;
    sub_2526924F0();
    sub_2524A2648(&v43);
    v22 = sub_2526929C0();
    MEMORY[0x28223BE20](v22);
    v23[-2] = v2;
    *&v23[-1] = v15;
    sub_252690A80();
  }

  else
  {
    sub_2526933A0();
    __break(1u);
  }
}

double sub_2524A0B04(uint64_t a1, __int128 *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DEC38, &qword_2526A0038);
  sub_2526924E0();
  if ((v4 & 1) == 0)
  {
    v3 = sub_2526929C0();
    MEMORY[0x28223BE20](v3);
    sub_252690A80();
  }

  return result;
}

uint64_t sub_2524A0BD8(__int128 *a1)
{
  v2 = *(type metadata accessor for ValueThrottleModifier(0) + 24);
  v3 = a1[2];
  v4 = *a1;
  v5 = *a1;
  v22 = a1[1];
  v23 = v3;
  v21 = v4;
  v6 = *(a1 + v2);
  v24 = *(a1 + 6);
  v17 = v5;
  v18 = v22;
  v19 = a1[2];
  v20 = *(a1 + 6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DEC38, &qword_2526A0038);
  sub_2526924E0();
  v7 = 2;
  if (v14)
  {
    v8 = 0;
    v9 = 2;
  }

  else
  {
    v17 = v21;
    v18 = v22;
    v19 = v23;
    v20 = v24;
    sub_2526924E0();
    v9 = v15;
    if (v15 == 2)
    {
      v8 = 0;
    }

    else
    {
      v8 = v12;
    }

    if (v15 != 2)
    {
      v9 = v15 & 1;
    }
  }

  *&v17 = v8;
  BYTE8(v17) = v9;
  v6(&v17);
  v17 = v21;
  v18 = v22;
  v19 = v23;
  v20 = v24;
  swift_retain_n();
  sub_2526924E0();
  sub_2526924F0();
  v17 = v21;
  v18 = v22;
  v19 = v23;
  v20 = v24;

  sub_2526924E0();
  sub_2526924F0();
  sub_2524A2648(&v21);
  v17 = v21;
  v18 = v22;
  v19 = v23;
  v20 = v24;
  sub_2526924E0();
  sub_2526924F0();
  sub_2524A2648(&v21);
  v17 = v21;
  v18 = v22;
  v19 = v23;
  v20 = v24;
  sub_2526924E0();
  v13 = v22;
  v16 = BYTE9(v23);
  sub_2526924F0();
  sub_2524A2648(&v21);
  v17 = v21;
  v18 = v22;
  v19 = v23;
  v20 = v24;
  sub_2526924E0();
  if (BYTE8(v13))
  {
    v10 = 0;
  }

  else
  {
    v17 = v21;
    v18 = v22;
    v19 = v23;
    v20 = v24;
    sub_2526924E0();
    if (v16 == 2)
    {
      v10 = 0;
    }

    else
    {
      v10 = v13;
    }

    if (v16 == 2)
    {
      v7 = v16;
    }

    else
    {
      v7 = v16 & 1;
    }
  }

  *&v17 = v10;
  BYTE8(v17) = v7;
  return (v6)(&v17);
}

uint64_t ValueThrottleModifier.Config.init(lowerLimit:upperLimit:initialValue:alignment:enabled:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, double *a4@<X8>, double a5@<D0>, double a6@<D1>)
{
  *a4 = a5;
  a4[1] = a6;
  v10 = type metadata accessor for ValueThrottleModifier.Config(0);
  v11 = v10[6];
  v12 = sub_25268ED70();
  (*(*(v12 - 8) + 32))(a4 + v11, a1, v12);
  v13 = v10[7];
  v14 = sub_25268EEA0();
  result = (*(*(v14 - 8) + 32))(a4 + v13, a2, v14);
  *(a4 + v10[8]) = a3;
  return result;
}

void sub_2524A10E0(uint64_t a1)
{
  sub_2524A117C();
  if (v1 <= 0x3F)
  {
    type metadata accessor for ValueThrottleModifier.Config(319);
    if (v2 <= 0x3F)
    {
      sub_2524A11CC();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_2524A117C()
{
  if (!qword_27F4DEC50)
  {
    v0 = sub_252692510();
    if (!v1)
    {
      atomic_store(v0, &qword_27F4DEC50);
    }
  }
}

unint64_t sub_2524A11CC()
{
  result = qword_27F4DEC58;
  if (!qword_27F4DEC58)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_27F4DEC58);
  }

  return result;
}

uint64_t sub_2524A1244(uint64_t a1)
{
  result = sub_25268ED70();
  if (v2 <= 0x3F)
  {
    result = sub_25268EEA0();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ValueThrottleModifier.Result(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 9))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 8);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for ValueThrottleModifier.Result(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t sub_2524A136C(uint64_t a1)
{
  if (*(a1 + 8) <= 1u)
  {
    return *(a1 + 8);
  }

  else
  {
    return (*a1 + 2);
  }
}

uint64_t sub_2524A1384(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 8) = a2;
  return result;
}

unint64_t sub_2524A13AC()
{
  result = qword_27F4DEC70;
  if (!qword_27F4DEC70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_27F4DEC78, &unk_2526A00C0);
    sub_25249FF94();
    sub_252400FC8(&qword_27F4DEC18, &qword_27F4DEBF8, &qword_2526A0020, MEMORY[0x277CE04B0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4DEC70);
  }

  return result;
}

uint64_t sub_2524A1464(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_2524A14D4(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (!a2)
  {
    return 0;
  }

  v7 = a2 - v5;
  if (a2 <= v5)
  {
    return (*(v4 + 48))();
  }

  v8 = 8 * v6;
  if (v6 <= 3)
  {
    v10 = ((v7 + ~(-1 << v8)) >> v8) + 1;
    if (HIWORD(v10))
    {
      v9 = *(a1 + v6);
      if (!v9)
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v10 > 0xFF)
    {
      v9 = *(a1 + v6);
      if (!*(a1 + v6))
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v10 < 2)
    {
LABEL_22:
      if (v5)
      {
        return (*(v4 + 48))();
      }

      return 0;
    }
  }

  v9 = *(a1 + v6);
  if (!*(a1 + v6))
  {
    goto LABEL_22;
  }

LABEL_11:
  v11 = (v9 - 1) << v8;
  if (v6 > 3)
  {
    v11 = 0;
  }

  if (v6)
  {
    if (v6 > 3)
    {
      LODWORD(v6) = 4;
    }

    if (v6 > 2)
    {
      if (v6 == 3)
      {
        LODWORD(v6) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v6) = *a1;
      }
    }

    else if (v6 == 1)
    {
      LODWORD(v6) = *a1;
    }

    else
    {
      LODWORD(v6) = *a1;
    }
  }

  return v5 + (v6 | v11) + 1;
}

char *sub_2524A1614(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = *(v5 + 64);
  v8 = a3 >= v6;
  v9 = a3 - v6;
  if (v9 != 0 && v8)
  {
    if (v7 <= 3)
    {
      v14 = ((v9 + ~(-1 << (8 * v7))) >> (8 * v7)) + 1;
      if (HIWORD(v14))
      {
        v10 = 4;
      }

      else
      {
        if (v14 < 0x100)
        {
          v15 = 1;
        }

        else
        {
          v15 = 2;
        }

        if (v14 >= 2)
        {
          v10 = v15;
        }

        else
        {
          v10 = 0;
        }
      }
    }

    else
    {
      v10 = 1;
    }
  }

  else
  {
    v10 = 0;
  }

  if (v6 < a2)
  {
    v11 = ~v6 + a2;
    if (v7 < 4)
    {
      v13 = (v11 >> (8 * v7)) + 1;
      if (v7)
      {
        v16 = v11 & ~(-1 << (8 * v7));
        v17 = result;
        bzero(result, v7);
        result = v17;
        if (v7 != 3)
        {
          if (v7 == 2)
          {
            *v17 = v16;
            if (v10 > 1)
            {
LABEL_39:
              if (v10 == 2)
              {
                *&result[v7] = v13;
              }

              else
              {
                *&result[v7] = v13;
              }

              return result;
            }
          }

          else
          {
            *v17 = v11;
            if (v10 > 1)
            {
              goto LABEL_39;
            }
          }

          goto LABEL_36;
        }

        *v17 = v16;
        v17[2] = BYTE2(v16);
      }

      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v12 = result;
      bzero(result, v7);
      result = v12;
      *v12 = v11;
      v13 = 1;
      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

LABEL_36:
    if (v10)
    {
      result[v7] = v13;
    }

    return result;
  }

  if (v10 > 1)
  {
    if (v10 != 2)
    {
      *&result[v7] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_28;
    }

    *&result[v7] = 0;
  }

  else if (v10)
  {
    result[v7] = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_28;
  }

  if (!a2)
  {
    return result;
  }

LABEL_28:
  v18 = *(v5 + 56);

  return v18();
}

uint64_t sub_2524A1834(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 42))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 41);
  if (v3 <= 2)
  {
    v4 = 2;
  }

  else
  {
    v4 = *(a1 + 41);
  }

  v5 = v4 - 3;
  if (v3 < 2)
  {
    v6 = -1;
  }

  else
  {
    v6 = v5;
  }

  return (v6 + 1);
}

uint64_t sub_2524A1888(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 42) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 42) = 0;
    }

    if (a2)
    {
      *(result + 41) = a2 + 2;
    }
  }

  return result;
}

void sub_2524A18E8(double a1, double a2)
{
  sub_2524A1B2C(v2, a2);
  type metadata accessor for ValueThrottleModifier(0);
  type metadata accessor for ValueThrottleModifier.Config(0);
  sub_25268EE90();
  sub_252692910();
  sub_2526928F0();
  v3 = *(v2 + 16);
  v4[0] = *v2;
  v4[1] = v3;
  v4[2] = *(v2 + 32);
  v5 = *(v2 + 48);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DEC38, &qword_2526A0038);
  sub_2526924E0();
  sub_2526924F0();
  sub_2526924E0();
  sub_2526924F0();
  sub_2524A2648(v4);
  sub_2526929C0();
  sub_252690A80();
}

double sub_2524A1B2C(__int128 *a1, double a2)
{
  v3 = a1[1];
  v7[0] = *a1;
  v7[1] = v3;
  v7[2] = a1[2];
  v8 = *(a1 + 6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DEC38, &qword_2526A0038);
  sub_2526924E0();
  if (v6 != 1)
  {
    return v5;
  }

  sub_2526924E0();
  sub_2526924F0();
  sub_2524A2648(v7);
  return a2;
}

BOOL sub_2524A1C5C(__int128 *a1, double a2, double a3, double a4)
{
  v8 = a1[1];
  v13[0] = *a1;
  v13[1] = v8;
  v13[2] = a1[2];
  v14 = *(a1 + 6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DEC38, &qword_2526A0038);
  sub_2526924E0();
  if (v12 != 2)
  {
    return v12 & 1;
  }

  v9 = *(a1 + *(type metadata accessor for ValueThrottleModifier(0) + 20) + 8) - a2;
  v10 = vabdd_f64(v9, a3) >= vabdd_f64(v9, a4);

  sub_2526924E0();
  sub_2526924F0();
  sub_2524A2648(v13);
  return v10;
}

double sub_2524A1DCC(__int128 *a1, char a2, double a3, double a4)
{
  v7 = a1[1];
  v11[0] = *a1;
  v11[1] = v7;
  v11[2] = a1[2];
  v12 = *(a1 + 6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DEC38, &qword_2526A0038);
  sub_2526924E0();
  if (v10 != 1)
  {
    return v9;
  }

  if (a2)
  {
    a4 = a3;
  }

  sub_2526924E0();
  sub_2526924F0();
  sub_2524A2648(v11);
  return a4;
}

uint64_t sub_2524A1F0C(__int128 *a1, double a2)
{
  v2 = a1[1];
  v4[0] = *a1;
  v4[1] = v2;
  v4[2] = a1[2];
  v5 = *(a1 + 6);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DEC38, &qword_2526A0038);
  sub_2526924E0();
  sub_2526924F0();
  return sub_2524A2648(v4);
}

uint64_t sub_2524A201C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28212E3C8](a1, a2, a3, WitnessTable);
}

uint64_t sub_2524A2098(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28212E358](a1, a2, a3, WitnessTable);
}

void sub_2524A2114(uint64_t a1)
{
  swift_getWitnessTable();
  sub_252691430();
  __break(1u);
}

uint64_t sub_2524A2170(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](a1);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_252690B60();
  (*(v3 + 16))(v5, v1, v2);
  return sub_252690B40();
}

uint64_t sub_2524A224C(uint64_t a1)
{
  v2 = MEMORY[0x28223BE20](a1);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v1, v2);
  return sub_252690B50();
}

uint64_t sub_2524A230C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ValueThrottleModifier(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2524A2370(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_2524A23F0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t objectdestroyTm_11()
{
  v1 = (type metadata accessor for ValueThrottleModifier(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);

  v5 = v0 + v3 + v1[7];
  v6 = type metadata accessor for ValueThrottleModifier.Config(0);
  v7 = *(v6 + 24);
  v8 = sub_25268ED70();
  (*(*(v8 - 8) + 8))(v5 + v7, v8);
  v9 = *(v6 + 28);
  v10 = sub_25268EEA0();
  (*(*(v10 - 8) + 8))(v5 + v9, v10);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_2524A25A8(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  v4 = *(type metadata accessor for ValueThrottleModifier(0) - 8);
  v5 = v2 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return a2(a1, v5);
}

uint64_t sub_2524A2648(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DEC38, &qword_2526A0038);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_2524A26E4()
{
  result = qword_27F4DED00;
  if (!qword_27F4DED00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4DED00);
  }

  return result;
}

uint64_t static WriteThrottlerInterval.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *(a2 + 8);
  if (*(a1 + 8) != 1)
  {
    return (v4 & 1) == 0 && v2 == v3;
  }

  v5 = *&v3 == 0;
  if (v3 == 0.0)
  {
    v6 = *(a2 + 8);
  }

  else
  {
    v6 = 0;
  }

  if (v5)
  {
    v4 = 0;
  }

  if (v2 == 0.0)
  {
    return v6;
  }

  else
  {
    return v4;
  }
}

double *WriteThrottler.init(writeInterval:)(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  v55 = sub_252692A70();
  v53 = *(v55 - 8);
  MEMORY[0x28223BE20](v55);
  v52 = (v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v56 = sub_252692F80();
  v54 = *(v56 - 8);
  MEMORY[0x28223BE20](v56);
  v51 = v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = *(v4 + 80);
  v70 = *(v4 + 88);
  v69 = type metadata accessor for WriteThrottler.Write(255, v71, v70, v7);
  sub_252693130();
  v8 = sub_2526906A0();
  v60 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v59 = v45 - v9;
  WitnessTable = swift_getWitnessTable();
  v61 = v8;
  v58 = WitnessTable;
  v11 = sub_2526905F0();
  v49 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v57 = v45 - v12;
  v13 = sub_25242D500();
  v67 = v13;
  v14 = swift_getWitnessTable();
  v15 = sub_2524A3174(&qword_27F4DED08, sub_25242D500, MEMORY[0x277D85228]);
  v50 = v11;
  v72 = v11;
  v73 = v13;
  v45[2] = v14;
  v74 = v14;
  v75 = v15;
  v45[1] = v15;
  v48 = sub_252690610();
  v47 = *(v48 - 8);
  MEMORY[0x28223BE20](v48);
  v46 = v45 - v16;
  v68 = sub_2526906B0();
  v66 = *(v68 - 8);
  MEMORY[0x28223BE20](v68);
  v65 = v45 - v17;
  MEMORY[0x28223BE20](v18);
  v64 = v45 - v19;
  v63 = sub_252692FA0();
  v20 = *(v63 - 8);
  MEMORY[0x28223BE20](v63);
  v22 = v45 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_252692F60();
  MEMORY[0x28223BE20](v23);
  v24 = sub_252692AB0();
  MEMORY[0x28223BE20](v24 - 8);
  v25 = *a1;
  v62 = *(a1 + 8);
  v2[4] = 0.0;
  sub_252692AA0();
  v72 = MEMORY[0x277D84F90];
  sub_2524A3174(&qword_27F4DED10, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DED18, &qword_2526A0280);
  sub_2524A31BC();
  sub_252693190();
  (*(v20 + 104))(v22, *MEMORY[0x277D85260], v63);
  v27 = v69;
  v26 = v70;
  *(v2 + 5) = sub_252692FD0();
  v28 = *(*v2 + 120);
  v29 = v64;
  (*(*(v27 - 8) + 56))(v64, 1, 1, v27);
  v30 = v65;
  sub_2524A45A0(v29, v71, v26, type metadata accessor for WriteThrottler.Write);
  (*(v66 + 32))(v2 + v28, v30, v68);
  v2[2] = v25;
  v31 = v62;
  *(v2 + 24) = v62;
  if (v31)
  {
    return v2;
  }

  v32 = v25;
  v33 = v59;
  sub_2524A3B0C();
  v34 = swift_allocObject();
  *(v34 + 16) = v71;
  *(v34 + 24) = v26;
  v35 = v57;
  v36 = v61;
  sub_2526906C0();

  result = (*(v60 + 8))(v33, v36);
  if ((~*&v32 & 0x7FF0000000000000) == 0)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (v32 <= -9.22337204e18)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v32 < 9.22337204e18)
  {
    v38 = v52;
    *v52 = v32;
    (*(v53 + 104))(v38, *MEMORY[0x277D85178], v55);
    v39 = v51;
    sub_252692F90();
    v72 = *(v2 + 5);
    v40 = v46;
    v41 = v50;
    sub_2526906D0();
    (*(v54 + 8))(v39, v56);
    (*(v49 + 8))(v35, v41);
    v42 = swift_allocObject();
    *(v42 + 16) = v71;
    *(v42 + 24) = v26;
    v43 = v48;
    swift_getWitnessTable();
    v44 = sub_2526906E0();

    (*(v47 + 8))(v40, v43);
    *(v2 + 4) = v44;

    return v2;
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t sub_2524A3174(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_2524A31BC()
{
  result = qword_27F4DED20;
  if (!qword_27F4DED20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4DED18, &qword_2526A0280);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4DED20);
  }

  return result;
}

uint64_t sub_2524A3220(uint64_t a1)
{
  v3 = *(a1 + 16);
  v4 = sub_252693130();
  v5 = MEMORY[0x28223BE20](v4);
  v7 = &v11 - v6;
  v8 = *(a1 + 36);
  v9 = *(v3 - 8);
  (*(v9 + 16))(v7, v1 + v8, v3, v5);
  (*(v9 + 56))(v7, 0, 1, v3);
  sub_252692750();
  return sub_2526926B0();
}

uint64_t sub_2524A3328(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v27 = a1;
  v28 = a2;
  v5 = *(*v4 + 80);
  v6 = *(*v4 + 88);
  v7 = type metadata accessor for WriteThrottler.Write(255, v5, v6, a4);
  v8 = sub_252693130();
  v25 = *(v8 - 8);
  v26 = v8;
  MEMORY[0x28223BE20](v8);
  v10 = &v25 - v9;
  v11 = *(v5 - 8);
  MEMORY[0x28223BE20](v12);
  v14 = &v25 - v13;
  sub_252693130();
  v15 = sub_252692750();
  MEMORY[0x28223BE20](v15);
  v17 = &v25 - v16;
  v18 = *(v7 - 8);
  v20 = MEMORY[0x28223BE20](v19);
  v22 = &v25 - v21;
  (*(v23 + 16))(v17, v27, v20);
  (*(v11 + 16))(v14, v28, v5);
  sub_2524A3688(v17, v14, v5, v6, v22);
  if (*(v4 + 24) == 1 && !*(v4 + 16))
  {
    sub_2524A3220(v7);
  }

  else
  {
    (*(v18 + 16))(v10, v22, v7);
    (*(v18 + 56))(v10, 0, 1, v7);
    sub_2524A5634(v10, type metadata accessor for WriteThrottler.Write, &unk_2526A0458, &unk_2526A0490);
    (*(v25 + 8))(v10, v26);
  }

  return (*(v18 + 8))(v22, v7);
}

uint64_t sub_2524A3688@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  sub_252693130();
  v10 = sub_252692750();
  (*(*(v10 - 8) + 32))(a5, a1, v10);
  v12 = type metadata accessor for WriteThrottler.Write(0, a3, a4, v11);
  v13 = *(*(a3 - 8) + 32);
  v14 = a5 + *(v12 + 36);

  return v13(v14, a2, a3);
}

uint64_t sub_2524A3768(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for WriteThrottler.Write(0, *(*v4 + 80), *(*v4 + 88), a4);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v19 - v7;
  v9 = sub_252693130();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v13);
  v16 = &v19 - v15;
  if (*(v4 + 24) == 1 && *(v4 + 16))
  {
    v17 = sub_2524A3AF8();
    if ((*(v6 + 48))(v16, 1, v5, v17))
    {
      (*(v10 + 8))(v16, v9);
    }

    else
    {
      (*(v6 + 16))(v8, v16, v5);
      (*(v10 + 8))(v16, v9);
      sub_2524A3220(v5);
      (*(v6 + 8))(v8, v5);
    }
  }

  (*(v6 + 56))(v12, 1, 1, v5, v14);
  sub_2524A5634(v12, type metadata accessor for WriteThrottler.Write, &unk_2526A0458, &unk_2526A0490);
  return (*(v10 + 8))(v12, v9);
}

uint64_t sub_2524A3A08(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 - 8);
  v5 = MEMORY[0x28223BE20](a1);
  (*(v4 + 16))(&v8 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a1, a2, v5);
  sub_252690660();
  return (*(v4 + 8))(a1, a2);
}

uint64_t sub_2524A3BC8(uint64_t a1, void (*a2)(uint64_t))
{
  v4 = swift_allocObject();
  a2(a1);
  return v4;
}

double *WriteThrottler_ControlBinding.init(writeInterval:)(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  v55 = sub_252692A70();
  v53 = *(v55 - 8);
  MEMORY[0x28223BE20](v55);
  v52 = (v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v56 = sub_252692F80();
  v54 = *(v56 - 8);
  MEMORY[0x28223BE20](v56);
  v51 = v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = *(v4 + 80);
  v70 = *(v4 + 88);
  v69 = type metadata accessor for WriteThrottler_ControlBinding.Write(255, v71, v70, v7);
  sub_252693130();
  v8 = sub_2526906A0();
  v60 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v59 = v45 - v9;
  WitnessTable = swift_getWitnessTable();
  v61 = v8;
  v58 = WitnessTable;
  v11 = sub_2526905F0();
  v49 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v57 = v45 - v12;
  v13 = sub_25242D500();
  v67 = v13;
  v14 = swift_getWitnessTable();
  v15 = sub_2524A3174(&qword_27F4DED08, sub_25242D500, MEMORY[0x277D85228]);
  v50 = v11;
  v72 = v11;
  v73 = v13;
  v45[2] = v14;
  v74 = v14;
  v75 = v15;
  v45[1] = v15;
  v48 = sub_252690610();
  v47 = *(v48 - 8);
  MEMORY[0x28223BE20](v48);
  v46 = v45 - v16;
  v68 = sub_2526906B0();
  v66 = *(v68 - 8);
  MEMORY[0x28223BE20](v68);
  v65 = v45 - v17;
  MEMORY[0x28223BE20](v18);
  v64 = v45 - v19;
  v63 = sub_252692FA0();
  v20 = *(v63 - 8);
  MEMORY[0x28223BE20](v63);
  v22 = v45 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_252692F60();
  MEMORY[0x28223BE20](v23);
  v24 = sub_252692AB0();
  MEMORY[0x28223BE20](v24 - 8);
  v25 = *a1;
  v62 = *(a1 + 8);
  v2[4] = 0.0;
  sub_252692AA0();
  v72 = MEMORY[0x277D84F90];
  sub_2524A3174(&qword_27F4DED10, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DED18, &qword_2526A0280);
  sub_2524A31BC();
  sub_252693190();
  (*(v20 + 104))(v22, *MEMORY[0x277D85260], v63);
  v27 = v69;
  v26 = v70;
  *(v2 + 5) = sub_252692FD0();
  v28 = *(*v2 + 120);
  v29 = v64;
  (*(*(v27 - 8) + 56))(v64, 1, 1, v27);
  v30 = v65;
  sub_2524A45A0(v29, v71, v26, type metadata accessor for WriteThrottler_ControlBinding.Write);
  (*(v66 + 32))(v2 + v28, v30, v68);
  v2[2] = v25;
  v31 = v62;
  *(v2 + 24) = v62;
  if (v31)
  {
    return v2;
  }

  v32 = v25;
  v33 = v59;
  sub_2524A5114();
  v34 = swift_allocObject();
  *(v34 + 16) = v71;
  *(v34 + 24) = v26;
  v35 = v57;
  v36 = v61;
  sub_2526906C0();

  result = (*(v60 + 8))(v33, v36);
  if ((~*&v32 & 0x7FF0000000000000) == 0)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (v32 <= -9.22337204e18)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v32 < 9.22337204e18)
  {
    v38 = v52;
    *v52 = v32;
    (*(v53 + 104))(v38, *MEMORY[0x277D85178], v55);
    v39 = v51;
    sub_252692F90();
    v72 = *(v2 + 5);
    v40 = v46;
    v41 = v50;
    sub_2526906D0();
    (*(v54 + 8))(v39, v56);
    (*(v49 + 8))(v35, v41);
    v42 = swift_allocObject();
    *(v42 + 16) = v71;
    *(v42 + 24) = v26;
    v43 = v48;
    swift_getWitnessTable();
    v44 = sub_2526906E0();

    (*(v47 + 8))(v40, v43);
    *(v2 + 4) = v44;

    return v2;
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t sub_2524A45A0(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, uint64_t))
{
  a4(255, a2, a3);
  v5 = sub_252693130();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v11 - v8;
  (*(v6 + 16))(&v11 - v8, a1, v5, v7);
  sub_2524A3A08(v9, v5);
  return (*(v6 + 8))(a1, v5);
}

uint64_t sub_2524A46A4@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(uint64_t)@<X3>, uint64_t a3@<X8>)
{
  a2(255);
  v5 = sub_252693130();
  v6 = *(*(v5 - 8) + 16);

  return v6(a3, a1, v5);
}

uint64_t sub_2524A4720(uint64_t a1)
{
  v3 = *(a1 + 16);
  v4 = sub_252693130();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = v14 - v7;
  v9 = *(v3 - 8);
  (*(v9 + 16))(v14 - v7, v1 + *(a1 + 36), v3, v6);
  (*(v9 + 56))(v8, 0, 1, v3);
  v14[1] = *(a1 + 24);
  WitnessTable = swift_getWitnessTable();
  v12 = type metadata accessor for ControlBinding(0, v4, WitnessTable, v11);
  ControlBinding.set(value:errorHandler:)(v8, 0, 0, v12);
  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_2524A48C4(void (*a1)(double *), double a2)
{
  v5 = a2;
  v6 = 0;
  v3 = swift_allocObject();
  a1(&v5);
  return v3;
}

uint64_t sub_2524A4918(uint64_t a1, uint64_t a2, __n128 a3, uint64_t a4, uint64_t a5)
{
  v32 = a1;
  v33 = a2;
  v6 = *(*v5 + 80);
  v7 = *(*v5 + 88);
  v8 = type metadata accessor for WriteThrottler_ControlBinding.Write(255, v6, v7, a5);
  v9 = sub_252693130();
  v30 = *(v9 - 8);
  v31 = v9;
  MEMORY[0x28223BE20](v9);
  v11 = &v29 - v10;
  v12 = *(v6 - 8);
  MEMORY[0x28223BE20](v13);
  v15 = &v29 - v14;
  v16 = sub_252693130();
  v34 = v7;
  WitnessTable = swift_getWitnessTable();
  v19 = type metadata accessor for ControlBinding(0, v16, WitnessTable, v18);
  MEMORY[0x28223BE20](v19);
  v21 = &v29 - v20;
  v22 = *(v8 - 8);
  v24 = MEMORY[0x28223BE20](v23);
  v26 = &v29 - v25;
  (*(v27 + 16))(v21, v32, v24);
  (*(v12 + 16))(v15, v33, v6);
  sub_2524A4CA4(v21, v15, v6, v26, v7);
  if (*(v5 + 24) == 1 && !*(v5 + 16))
  {
    sub_2524A4720(v8);
  }

  else
  {
    (*(v22 + 16))(v11, v26, v8);
    (*(v22 + 56))(v11, 0, 1, v8);
    sub_2524A5634(v11, type metadata accessor for WriteThrottler_ControlBinding.Write, &unk_2526A0400, &unk_2526A0438);
    (*(v30 + 8))(v11, v31);
  }

  return (*(v22 + 8))(v26, v8);
}

uint64_t sub_2524A4CA4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, uint64_t a5@<X3>)
{
  v10 = sub_252693130();
  WitnessTable = swift_getWitnessTable();
  v13 = type metadata accessor for ControlBinding(0, v10, WitnessTable, v12);
  (*(*(v13 - 8) + 32))(a4, a1, v13);
  v15 = type metadata accessor for WriteThrottler_ControlBinding.Write(0, a3, a5, v14);
  return (*(*(a3 - 8) + 32))(a4 + *(v15 + 36), a2, a3);
}

uint64_t sub_2524A4DAC(__n128 a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = type metadata accessor for WriteThrottler_ControlBinding.Write(0, *(*v5 + 80), *(*v5 + 88), a5);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v20 - v8;
  v10 = sub_252693130();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v14);
  v17 = &v20 - v16;
  if (*(v5 + 24) == 1 && *(v5 + 16))
  {
    v18 = sub_2524A504C();
    if ((*(v7 + 48))(v17, 1, v6, v18))
    {
      (*(v11 + 8))(v17, v10);
    }

    else
    {
      (*(v7 + 16))(v9, v17, v6);
      (*(v11 + 8))(v17, v10);
      sub_2524A4720(v6);
      (*(v7 + 8))(v9, v6);
    }
  }

  (*(v7 + 56))(v13, 1, 1, v6, v15);
  sub_2524A5634(v13, type metadata accessor for WriteThrottler_ControlBinding.Write, &unk_2526A0400, &unk_2526A0438);
  return (*(v11 + 8))(v13, v10);
}

double sub_2524A5060()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_252690680();

  return result;
}

uint64_t sub_2524A512C(uint64_t (*a1)(uint64_t, void, void, __n128))
{
  v3 = *v1;
  swift_beginAccess();
  (a1)(255, *(v3 + 80), *(v3 + 88));
  sub_252693130();
  sub_2526906B0();
  sub_252690670();
  return swift_endAccess();
}

id *sub_2524A520C(uint64_t (*a1)(uint64_t, void, void))
{
  v3 = *v1;

  v4 = *(*v1 + 15);
  a1(255, v3[10], v3[11]);
  sub_252693130();
  v5 = sub_2526906B0();
  (*(*(v5 - 8) + 8))(v1 + v4, v5);
  return v1;
}

uint64_t sub_2524A52F4(void (*a1)(void))
{
  a1();

  return swift_deallocClassInstance();
}

uint64_t WriteThrottlerInterval.hash(into:)()
{
  v1 = *v0;
  if (*(v0 + 8) == 1)
  {
    if (v1)
    {
      v2 = 2;
    }

    else
    {
      v2 = 0;
    }

    return MEMORY[0x2530A4FE0](v2);
  }

  else
  {
    MEMORY[0x2530A4FE0](1);
    if ((v1 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v3 = v1;
    }

    else
    {
      v3 = 0;
    }

    return MEMORY[0x2530A5020](v3);
  }
}

uint64_t WriteThrottlerInterval.hashValue.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_252693460();
  if (v2 == 1)
  {
    if (v1)
    {
      v3 = 2;
    }

    else
    {
      v3 = 0;
    }

    MEMORY[0x2530A4FE0](v3);
  }

  else
  {
    MEMORY[0x2530A4FE0](1);
    if ((v1 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v4 = v1;
    }

    else
    {
      v4 = 0;
    }

    MEMORY[0x2530A5020](v4);
  }

  return sub_2526934C0();
}

uint64_t sub_2524A5438(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  sub_252693460();
  if (v3 == 1)
  {
    if (v2)
    {
      v4 = 2;
    }

    else
    {
      v4 = 0;
    }

    MEMORY[0x2530A4FE0](v4);
  }

  else
  {
    MEMORY[0x2530A4FE0](1);
    if ((v2 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v5 = v2;
    }

    else
    {
      v5 = 0;
    }

    MEMORY[0x2530A5020](v5);
  }

  return sub_2526934C0();
}

uint64_t sub_2524A54B4(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *(a2 + 8);
  if (*(a1 + 8) != 1)
  {
    return (v4 & 1) == 0 && v2 == v3;
  }

  v5 = *&v3 == 0;
  if (v3 == 0.0)
  {
    v6 = *(a2 + 8);
  }

  else
  {
    v6 = 0;
  }

  if (v5)
  {
    v4 = 0;
  }

  if (v2 == 0.0)
  {
    return v6;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_2524A5634(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, uint64_t), uint64_t a3, uint64_t a4)
{
  v6 = *(*v4 + 80);
  v7 = *(*v4 + 88);
  a2(255, v6, v7);
  v8 = sub_252693130();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v13 - v10;
  v13[2] = v6;
  v13[3] = v7;
  swift_getKeyPath();
  v13[0] = v6;
  v13[1] = v7;
  swift_getKeyPath();
  (*(v9 + 16))(v11, a1, v8);

  return sub_252690690();
}

unint64_t sub_2524A57A4()
{
  result = qword_27F4DED28[0];
  if (!qword_27F4DED28[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27F4DED28);
  }

  return result;
}

uint64_t sub_2524A58B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, void, void))
{
  a4(255, *(a1 + 80), *(a1 + 88));
  sub_252693130();
  result = sub_2526906B0();
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

uint64_t getEnumTagSinglePayload for WriteThrottlerInterval(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 9))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for WriteThrottlerInterval(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 1;
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

  *(result + 9) = v3;
  return result;
}

uint64_t sub_2524A5A64(uint64_t a1)
{
  if (*(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2524A5A80(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 1;
  }

  else
  {
    *(result + 8) = 0;
  }

  return result;
}

uint64_t sub_2524A5AB0(uint64_t a1)
{
  v1 = sub_252693130();
  WitnessTable = swift_getWitnessTable();
  result = type metadata accessor for ControlBinding(319, v1, WitnessTable, v3);
  if (v5 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v6 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_2524A5B84(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v6 = *(sub_25268DA10() - 8);
  v7 = v6;
  v8 = *(v6 + 84);
  v9 = *(*(a3 + 16) - 8);
  if (v8 <= 0x7FFFFFFF)
  {
    v10 = 0x7FFFFFFF;
  }

  else
  {
    v10 = *(v6 + 84);
  }

  v11 = *(*(a3 + 16) - 8);
  v12 = *(v9 + 84);
  v13 = *(v6 + 80);
  v14 = *(v6 + 64);
  v15 = *(v9 + 80);
  v16 = *(v9 + 64);
  v17 = v10 - 1;
  v18 = v12 - 1;
  if (!v12)
  {
    v18 = 0;
  }

  if (v17 <= v18)
  {
    v19 = v18;
  }

  else
  {
    v19 = v10 - 1;
  }

  if (v19 <= 0x7FFFFFFF)
  {
    v20 = 0x7FFFFFFF;
  }

  else
  {
    v20 = v19;
  }

  if (v12 <= v20)
  {
    v21 = v20;
  }

  else
  {
    v21 = v12;
  }

  v22 = v16 + v15;
  if (v12)
  {
    v23 = v16 + v15;
  }

  else
  {
    v23 = v22 + 1;
  }

  if (!a2)
  {
    return 0;
  }

  v24 = v13 | 7;
  v25 = ((v13 + 40) & ~v13) + v14 + v15;
  v26 = (v25 + ((v13 + 8) & ~(v13 | 7))) & ~v15;
  v27 = a2 - v21;
  if (a2 <= v21)
  {
    goto LABEL_42;
  }

  v28 = ((v23 + v26) & ~v15) + v16;
  v29 = 8 * v28;
  if (v28 <= 3)
  {
    v32 = ((v27 + ~(-1 << v29)) >> v29) + 1;
    if (HIWORD(v32))
    {
      v30 = *(a1 + v28);
      if (!v30)
      {
        goto LABEL_42;
      }

      goto LABEL_29;
    }

    if (v32 > 0xFF)
    {
      v30 = *(a1 + v28);
      if (!*(a1 + v28))
      {
        goto LABEL_42;
      }

      goto LABEL_29;
    }

    if (v32 < 2)
    {
LABEL_42:
      v36 = ~v15;
      if (v20 >= v12)
      {
        if ((v19 & 0x80000000) != 0)
        {
          v39 = (a1 + v24 + 8) & ~v24;
          if (v17 == v20)
          {
            if ((v8 & 0x80000000) != 0)
            {
              v41 = (*(v7 + 48))((v13 + 40 + v39) & ~v13);
            }

            else
            {
              v40 = *(((a1 + v24 + 8) & ~v24) + 0x18);
              if (v40 >= 0xFFFFFFFF)
              {
                LODWORD(v40) = -1;
              }

              v41 = v40 + 1;
            }
          }

          else
          {
            v41 = (*(v11 + 48))((v25 + v39) & v36, v12);
          }

          if (v41 >= 2)
          {
            return v41 - 1;
          }

          else
          {
            return 0;
          }
        }

        else
        {
          v38 = *a1;
          if (*a1 >= 0xFFFFFFFFuLL)
          {
            LODWORD(v38) = -1;
          }

          return (v38 + 1);
        }
      }

      else
      {
        v37 = *(v11 + 48);

        return v37((a1 + v22 + v26) & v36, v12);
      }
    }
  }

  v30 = *(a1 + v28);
  if (!*(a1 + v28))
  {
    goto LABEL_42;
  }

LABEL_29:
  v33 = (v30 - 1) << v29;
  if (v28 > 3)
  {
    v33 = 0;
  }

  if (v28)
  {
    if (v28 <= 3)
    {
      v34 = v28;
    }

    else
    {
      v34 = 4;
    }

    if (v34 > 2)
    {
      if (v34 == 3)
      {
        v35 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v35 = *a1;
      }
    }

    else if (v34 == 1)
    {
      v35 = *a1;
    }

    else
    {
      v35 = *a1;
    }
  }

  else
  {
    v35 = 0;
  }

  return v21 + (v35 | v33) + 1;
}

void sub_2524A5E8C(_DWORD *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v8 = 0;
  v9 = *(sub_25268DA10() - 8);
  v10 = v9;
  v11 = *(v9 + 84);
  if (v11 <= 0x7FFFFFFF)
  {
    v12 = 0x7FFFFFFF;
  }

  else
  {
    v12 = *(v9 + 84);
  }

  v13 = *(*(a4 + 16) - 8);
  v14 = *(v13 + 84);
  v15 = *(v9 + 80);
  v16 = *(v9 + 64);
  v17 = *(v13 + 80);
  v18 = *(v13 + 64);
  v19 = v12 - 1;
  v20 = v14 - 1;
  if (!v14)
  {
    v20 = 0;
  }

  if (v19 <= v20)
  {
    v21 = v20;
  }

  else
  {
    v21 = v12 - 1;
  }

  if (v21 <= 0x7FFFFFFF)
  {
    v22 = 0x7FFFFFFF;
  }

  else
  {
    v22 = v21;
  }

  if (v14 <= v22)
  {
    v23 = v22;
  }

  else
  {
    v23 = *(v13 + 84);
  }

  v24 = ((v15 + 40) & ~v15) + v16;
  v25 = (v24 + v17 + ((v15 + 8) & ~(v15 | 7))) & ~v17;
  if (v14)
  {
    v26 = *(v13 + 64);
  }

  else
  {
    v26 = v18 + 1;
  }

  v27 = v25 + v26;
  v28 = ((v27 + v17) & ~v17) + v18;
  v29 = a3 >= v23;
  v30 = a3 - v23;
  if (v30 == 0 || !v29)
  {
LABEL_32:
    if (v23 < a2)
    {
      goto LABEL_33;
    }

    goto LABEL_22;
  }

  if (v28 > 3)
  {
    v8 = 1;
    if (v23 < a2)
    {
      goto LABEL_33;
    }

    goto LABEL_22;
  }

  v31 = ((v30 + ~(-1 << (8 * v28))) >> (8 * v28)) + 1;
  if (!HIWORD(v31))
  {
    if (v31 < 0x100)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }

    if (v31 < 2)
    {
      v8 = 0;
    }

    goto LABEL_32;
  }

  v8 = 4;
  if (v23 < a2)
  {
LABEL_33:
    v32 = ~v23 + a2;
    if (v28 >= 4)
    {
      bzero(a1, ((v27 + v17) & ~v17) + v18);
      *a1 = v32;
      v33 = 1;
      if (v8 > 1)
      {
        goto LABEL_35;
      }

      goto LABEL_72;
    }

    v33 = (v32 >> (8 * v28)) + 1;
    if (v28)
    {
      v38 = v32 & ~(-1 << (8 * v28));
      bzero(a1, v28);
      if (v28 != 3)
      {
        if (v28 == 2)
        {
          *a1 = v38;
          if (v8 > 1)
          {
            goto LABEL_35;
          }
        }

        else
        {
          *a1 = v32;
          if (v8 > 1)
          {
LABEL_35:
            if (v8 == 2)
            {
              *(a1 + v28) = v33;
            }

            else
            {
              *(a1 + v28) = v33;
            }

            return;
          }
        }

LABEL_72:
        if (v8)
        {
          *(a1 + v28) = v33;
        }

        return;
      }

      *a1 = v38;
      *(a1 + 2) = BYTE2(v38);
    }

    if (v8 > 1)
    {
      goto LABEL_35;
    }

    goto LABEL_72;
  }

LABEL_22:
  if (v8 > 1)
  {
    if (v8 != 2)
    {
      *(a1 + v28) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_40;
    }

    *(a1 + v28) = 0;
  }

  else if (v8)
  {
    *(a1 + v28) = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_40;
  }

  if (!a2)
  {
    return;
  }

LABEL_40:
  v34 = ~v17;
  if (v22 < v14)
  {
    v35 = *(v13 + 56);
    v36 = (a1 + v18 + v17 + v25) & v34;
    v37 = a2;
LABEL_42:

    v35(v36, v37, v14);
    return;
  }

  if (v22 < a2)
  {
    if (v27 <= 3)
    {
      v39 = ~(-1 << (8 * v27));
    }

    else
    {
      v39 = -1;
    }

    if (!v27)
    {
      return;
    }

    v40 = v39 & (~v22 + a2);
    if (v27 <= 3)
    {
      v41 = v27;
    }

    else
    {
      v41 = 4;
    }

    bzero(a1, v27);
    if (v41 <= 2)
    {
      if (v41 == 1)
      {
LABEL_60:
        *a1 = v40;
        return;
      }

LABEL_93:
      *a1 = v40;
      return;
    }

    goto LABEL_94;
  }

  if ((v21 & 0x80000000) == 0)
  {
    if ((a2 & 0x80000000) != 0)
    {
      v42 = a2 & 0x7FFFFFFF;
    }

    else
    {
      v42 = (a2 - 1);
    }

    *a1 = v42;
    return;
  }

  a1 = ((a1 + (v15 | 7) + 8) & ~(v15 | 7));
  if (v19 != v22)
  {
    v35 = *(v13 + 56);
    v36 = (a1 + v24 + v17) & v34;
    v37 = (a2 + 1);
    goto LABEL_42;
  }

  if (a2 >= v12)
  {
    if (v24 <= 3)
    {
      v44 = ~(-1 << (8 * v24));
    }

    else
    {
      v44 = -1;
    }

    if (!v24)
    {
      return;
    }

    v40 = v44 & (a2 - v12);
    if (v24 <= 3)
    {
      v41 = v24;
    }

    else
    {
      v41 = 4;
    }

    bzero(a1, v24);
    if (v41 <= 2)
    {
      if (v41 == 1)
      {
        goto LABEL_60;
      }

      goto LABEL_93;
    }

LABEL_94:
    if (v41 == 3)
    {
      *a1 = v40;
      *(a1 + 2) = BYTE2(v40);
    }

    else
    {
      *a1 = v40;
    }

    return;
  }

  v43 = (a2 + 1);
  if ((v11 & 0x80000000) != 0)
  {
    v45 = *(v10 + 56);

    v45((a1 + v15 + 40) & ~v15, v43);
  }

  else if ((v43 & 0x80000000) != 0)
  {
    *(a1 + 2) = 0u;
    *(a1 + 6) = 0u;
    *a1 = (a2 - 0x7FFFFFFF);
  }

  else
  {
    *(a1 + 3) = a2;
  }
}

uint64_t sub_2524A6324(uint64_t a1)
{
  sub_252693130();
  result = sub_252692750();
  if (v2 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_2524A63C0(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8);
  v6 = v5;
  v7 = *(v5 + 84);
  if (v7)
  {
    v8 = v7 - 1;
  }

  else
  {
    v8 = 0;
  }

  if (v8 <= 0x7FFFFFFF)
  {
    v9 = 0x7FFFFFFF;
  }

  else
  {
    v9 = v8;
  }

  if (v7 <= v9)
  {
    v10 = v9;
  }

  else
  {
    v10 = *(v5 + 84);
  }

  v11 = *(v5 + 80);
  v12 = *(*(*(a3 + 16) - 8) + 64);
  v13 = v12 + v11;
  if (v7)
  {
    v14 = v12 + v11;
  }

  else
  {
    v14 = v13 + 1;
  }

  if (!a2)
  {
    return 0;
  }

  v15 = (v11 + 16) & ~v11;
  v16 = a2 - v10;
  if (a2 <= v10)
  {
    goto LABEL_35;
  }

  v17 = ((v14 + v15) & ~v11) + v12;
  v18 = 8 * v17;
  if (v17 <= 3)
  {
    v21 = ((v16 + ~(-1 << v18)) >> v18) + 1;
    if (HIWORD(v21))
    {
      v19 = *(a1 + v17);
      if (!v19)
      {
        goto LABEL_35;
      }

      goto LABEL_24;
    }

    if (v21 > 0xFF)
    {
      v19 = *(a1 + v17);
      if (!*(a1 + v17))
      {
        goto LABEL_35;
      }

      goto LABEL_24;
    }

    if (v21 < 2)
    {
LABEL_35:
      v23 = ~v11;
      if (v9 >= v7)
      {
        v26 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
        if ((v8 & 0x80000000) != 0)
        {
          v28 = (*(v6 + 48))((v26 + v11 + 8) & v23);
          if (v28 >= 2)
          {
            return v28 - 1;
          }

          else
          {
            return 0;
          }
        }

        else
        {
          v27 = *v26;
          if (*v26 >= 0xFFFFFFFF)
          {
            LODWORD(v27) = -1;
          }

          return (v27 + 1);
        }
      }

      else
      {
        v24 = *(v6 + 48);
        v25 = (a1 + v13 + v15) & v23;

        return v24(v25);
      }
    }
  }

  v19 = *(a1 + v17);
  if (!*(a1 + v17))
  {
    goto LABEL_35;
  }

LABEL_24:
  v22 = (v19 - 1) << v18;
  if (v17 > 3)
  {
    v22 = 0;
  }

  if (v17)
  {
    if (v17 > 3)
    {
      LODWORD(v17) = 4;
    }

    if (v17 > 2)
    {
      if (v17 == 3)
      {
        LODWORD(v17) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v17) = *a1;
      }
    }

    else if (v17 == 1)
    {
      LODWORD(v17) = *a1;
    }

    else
    {
      LODWORD(v17) = *a1;
    }
  }

  return v10 + (v17 | v22) + 1;
}

void sub_2524A65C4(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = 0;
  v7 = *(*(a4 + 16) - 8);
  v8 = v7;
  v9 = *(v7 + 84);
  v10 = v9 - 1;
  if (!v9)
  {
    v10 = 0;
  }

  if (v10 <= 0x7FFFFFFF)
  {
    v11 = 0x7FFFFFFF;
  }

  else
  {
    v11 = v10;
  }

  if (v9 <= v11)
  {
    v12 = v11;
  }

  else
  {
    v12 = *(v7 + 84);
  }

  v13 = *(v7 + 80);
  v14 = (v13 + 16) & ~v13;
  v15 = *(v7 + 64);
  if (v9)
  {
    v16 = *(v7 + 64);
  }

  else
  {
    v16 = v15 + 1;
  }

  v17 = v14 + v16;
  v18 = ((v14 + v16 + v13) & ~v13) + v15;
  v19 = a3 >= v12;
  v20 = a3 - v12;
  if (v20 == 0 || !v19)
  {
LABEL_27:
    if (v12 < a2)
    {
      goto LABEL_28;
    }

    goto LABEL_16;
  }

  if (v18 > 3)
  {
    v6 = 1;
    if (v12 < a2)
    {
      goto LABEL_28;
    }

    goto LABEL_16;
  }

  v21 = ((v20 + ~(-1 << (8 * v18))) >> (8 * v18)) + 1;
  if (!HIWORD(v21))
  {
    if (v21 < 0x100)
    {
      v22 = 1;
    }

    else
    {
      v22 = 2;
    }

    if (v21 >= 2)
    {
      v6 = v22;
    }

    else
    {
      v6 = 0;
    }

    goto LABEL_27;
  }

  v6 = 4;
  if (v12 < a2)
  {
LABEL_28:
    v23 = ~v12 + a2;
    if (v18 >= 4)
    {
      bzero(a1, v18);
      *a1 = v23;
      v24 = 1;
      if (v6 > 1)
      {
        goto LABEL_30;
      }

      goto LABEL_67;
    }

    v24 = (v23 >> (8 * v18)) + 1;
    if (v18)
    {
      v28 = v23 & ~(-1 << (8 * v18));
      bzero(a1, v18);
      if (v18 != 3)
      {
        if (v18 == 2)
        {
          *a1 = v28;
          if (v6 > 1)
          {
            goto LABEL_30;
          }
        }

        else
        {
          *a1 = v23;
          if (v6 > 1)
          {
LABEL_30:
            if (v6 == 2)
            {
              *&a1[v18] = v24;
            }

            else
            {
              *&a1[v18] = v24;
            }

            return;
          }
        }

LABEL_67:
        if (v6)
        {
          a1[v18] = v24;
        }

        return;
      }

      *a1 = v28;
      a1[2] = BYTE2(v28);
    }

    if (v6 > 1)
    {
      goto LABEL_30;
    }

    goto LABEL_67;
  }

LABEL_16:
  if (v6 > 1)
  {
    if (v6 != 2)
    {
      *&a1[v18] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_35;
    }

    *&a1[v18] = 0;
  }

  else if (v6)
  {
    a1[v18] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_35;
  }

  if (!a2)
  {
    return;
  }

LABEL_35:
  v25 = ~v13;
  if (v11 >= v9)
  {
    if (v11 >= a2)
    {
      v32 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
      if ((v10 & 0x80000000) == 0)
      {
        if ((a2 & 0x80000000) != 0)
        {
          v33 = a2 & 0x7FFFFFFF;
        }

        else
        {
          v33 = a2 - 1;
        }

        *v32 = v33;
        return;
      }

      a1 = ((v32 + v13 + 8) & v25);
      if (v10 >= a2)
      {
        v26 = *(v8 + 56);
        v27 = (v32 + v13 + 8) & v25;
        goto LABEL_37;
      }

      if (v16 <= 3)
      {
        v34 = ~(-1 << (8 * v16));
      }

      else
      {
        v34 = -1;
      }

      if (!v16)
      {
        return;
      }

      v30 = v34 & (~v10 + a2);
      if (v16 <= 3)
      {
        v31 = v16;
      }

      else
      {
        v31 = 4;
      }

      bzero(a1, v16);
      if (v31 <= 2)
      {
        if (v31 == 1)
        {
          goto LABEL_55;
        }

        goto LABEL_82;
      }
    }

    else
    {
      if (v17 <= 3)
      {
        v29 = ~(-1 << (8 * v17));
      }

      else
      {
        v29 = -1;
      }

      if (!v17)
      {
        return;
      }

      v30 = v29 & (~v11 + a2);
      if (v17 <= 3)
      {
        v31 = v17;
      }

      else
      {
        v31 = 4;
      }

      bzero(a1, v17);
      if (v31 <= 2)
      {
        if (v31 == 1)
        {
LABEL_55:
          *a1 = v30;
          return;
        }

LABEL_82:
        *a1 = v30;
        return;
      }
    }

    if (v31 == 3)
    {
      *a1 = v30;
      a1[2] = BYTE2(v30);
    }

    else
    {
      *a1 = v30;
    }

    return;
  }

  v26 = *(v8 + 56);
  v27 = &a1[v15 + v13 + v14] & v25;
LABEL_37:

  v26(v27);
}

uint64_t sub_2524A6950(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 24))
  {
    sub_25235E20C(a1, v9);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v8 = *v2;
    sub_25256D5C4(v9, a2, isUniquelyReferenced_nonNull_native);
    v5 = sub_25268F4D0();
    result = (*(*(v5 - 8) + 8))(a2, v5);
    *v2 = v8;
  }

  else
  {
    sub_252372288(a1, &qword_27F4DE910, &unk_25269F970);
    sub_2524AA8EC(a2, v9);
    v7 = sub_25268F4D0();
    (*(*(v7 - 8) + 8))(a2, v7);
    return sub_252372288(v9, &qword_27F4DE910, &unk_25269F970);
  }

  return result;
}

uint64_t sub_2524A6A6C(uint64_t a1, char a2, uint64_t a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_2523674BC(a3);
    if (v7)
    {
      v8 = v6;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v10 = *v3;
      v16 = *v4;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_25236CF00();
        v10 = v16;
      }

      v11 = *(v10 + 48);
      v12 = type metadata accessor for AccessoryControl.PickerButtonViewConfig.Option.Identifier(0);
      sub_2524AB848(v11 + *(*(v12 - 8) + 72) * v8, type metadata accessor for AccessoryControl.PickerButtonViewConfig.Option.Identifier);
      sub_2524AACE8(v8, v10);
      result = sub_2524AB848(a3, type metadata accessor for AccessoryControl.PickerButtonViewConfig.Option.Identifier);
      *v4 = v10;
    }

    else
    {
      return sub_2524AB848(a3, type metadata accessor for AccessoryControl.PickerButtonViewConfig.Option.Identifier);
    }
  }

  else
  {
    v15 = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v3;
    sub_25256D79C(a3, v15, *&a1);
    result = sub_2524AB848(a3, type metadata accessor for AccessoryControl.PickerButtonViewConfig.Option.Identifier);
    *v3 = v17;
  }

  return result;
}

uint64_t sub_2524A6BB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB458, &qword_2526A0BD0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v24 - v9;
  v11 = type metadata accessor for AccessoryControl.PickerButtonState.SelectionState(0);
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v12 + 48))(a1, 1, v11, v13) == 1)
  {
    sub_252372288(a1, &qword_27F4DB458, &qword_2526A0BD0);
    v16 = sub_25236743C(a2, a3);
    if (v17)
    {
      v18 = v16;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v20 = *v4;
      v25 = *v4;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_25236D37C();
        v20 = v25;
      }

      sub_2524AB768(*(v20 + 56) + *(v12 + 72) * v18, v10, type metadata accessor for AccessoryControl.PickerButtonState.SelectionState);
      sub_2524AB12C(v18, v20, v21);
      *v4 = v20;
      (*(v12 + 56))(v10, 0, 1, v11);
    }

    else
    {
      (*(v12 + 56))(v10, 1, 1, v11);
    }

    return sub_252372288(v10, &qword_27F4DB458, &qword_2526A0BD0);
  }

  else
  {
    sub_2524AB768(a1, v15, type metadata accessor for AccessoryControl.PickerButtonState.SelectionState);
    v22 = swift_isUniquelyReferenced_nonNull_native();
    v25 = *v4;
    result = sub_25256D910(v15, a2, a3, v22);
    *v4 = v25;
  }

  return result;
}

void (*sub_2524A6E18(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0xD8uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = v1[1];
  v6 = v1[2];
  v4[20] = v5;
  v4[21] = v6;
  v7 = v1[3];
  v8 = v1[4];
  v4[22] = v7;
  v4[23] = v8;
  v10 = v1[5];
  v9 = v1[6];
  v4[24] = v10;
  v4[25] = v9;
  *v4 = v5;
  v4[1] = v6;
  v4[2] = v7;
  v4[3] = v8;
  v4[4] = v10;
  v4[5] = v9;

  sub_2523E165C(v7, v8, v10, v9);
  v4[26] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DEF50, &unk_2526A07A0);
  MEMORY[0x2530A4210]();
  return sub_2524A6EFC;
}

void sub_2524A6EFC(uint64_t *a1, char a2)
{
  v3 = *a1;
  v4 = *(*a1 + 168);
  *(v3 + 48) = *(*a1 + 160);
  v5 = *(v3 + 96);
  *(v3 + 128) = v5;
  v6 = *(v3 + 104);
  v7 = *(v3 + 112);
  v8 = *(v3 + 120);
  *(v3 + 56) = v4;
  v9 = *(v3 + 192);
  *(v3 + 64) = *(v3 + 176);
  *(v3 + 80) = v9;
  *(v3 + 136) = v6;
  *(v3 + 144) = v7;
  *(v3 + 152) = v8;
  if (a2)
  {
    sub_2523E165C(v5, v6, v7, v8);
    sub_2526926B0();
    v10 = *(v3 + 64);
    v11 = *(v3 + 72);
    v12 = *(v3 + 80);
    v13 = *(v3 + 88);

    sub_2523E2E24(v10, v11, v12, v13);
    v14 = *(v3 + 96);
    v15 = *(v3 + 104);
    v16 = *(v3 + 112);
    v17 = *(v3 + 120);
  }

  else
  {
    sub_2526926B0();
    v18 = *(v3 + 64);
    v19 = *(v3 + 72);
    v20 = *(v3 + 80);
    v21 = *(v3 + 88);

    v14 = v18;
    v15 = v19;
    v16 = v20;
    v17 = v21;
  }

  sub_2523E2E24(v14, v15, v16, v17);

  free(v3);
}

double sub_2524A7004()
{
  v1 = v0[5];
  v2 = v0[6];
  v3 = v0[3];
  *&v50[16] = v0[4];
  *&v50[32] = v1;
  v51[0] = v2;
  *(v51 + 9) = *(v0 + 105);
  v4 = v0[1];
  v47 = *v0;
  v48 = v4;
  v49 = v0[2];
  *v50 = v3;
  v5 = *(v0 + 24);
  v44 = *(v0 + 8);
  v45 = v5;
  v46 = *(v0 + 40);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DEF50, &unk_2526A07A0);
  MEMORY[0x2530A4210](&v39);
  v52 = *&v50[8];
  v53 = *&v50[24];
  v54 = *&v50[40];
  v7 = swift_allocObject();
  v8 = *&v50[32];
  v7[5] = *&v50[16];
  v7[6] = v8;
  v7[7] = v51[0];
  *(v7 + 121) = *(v51 + 9);
  v9 = v48;
  v7[1] = v47;
  v7[2] = v9;
  v10 = *v50;
  v7[3] = v49;
  v7[4] = v10;
  type metadata accessor for PickerButtonControlView.PickerViewState(0);
  v11 = swift_allocObject();
  *(v11 + 104) = 0;
  *(v11 + 106) = 0;
  *(v11 + 32) = 0u;
  *(v11 + 16) = 0u;
  v37 = v39;
  v38 = v40;
  sub_2524ABCF0(&v52, &v44);
  sub_2524ABD4C(&v47, &v44);
  sub_25268DB60();
  swift_beginAccess();
  v12 = *(v11 + 16);
  v13 = *(v11 + 24);
  v14 = *(v11 + 32);
  v15 = *(v11 + 40);
  *(v11 + 16) = v37;
  *(v11 + 32) = v38;
  sub_2523E2E24(v12, v13, v14, v15);
  v16 = v53;
  *(v11 + 48) = v52;
  *(v11 + 64) = v16;
  *(v11 + 80) = v54;
  *(v11 + 88) = sub_2524ABCE8;
  *(v11 + 96) = v7;

  sub_2524A9130();

  v55 = v51[0];
  v39 = v51[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DC320, &unk_25269FA20);
  sub_252692500();
  v17 = v44;
  v18 = v45;
  v19 = *(v0 + 24);
  v44 = *(v0 + 8);
  v45 = v19;
  v46 = *(v0 + 40);
  MEMORY[0x2530A4210](&v39, v6);
  v20 = *(&v39 + 1);
  if (*(&v39 + 1))
  {
    v21 = v40;
    v22 = v39;

    sub_2523E2E24(v22, v20, v21, *(&v21 + 1));
  }

  else
  {
    v22 = sub_252692C40();
    v20 = v23;
  }

  v24 = swift_allocObject();
  v25 = *&v50[32];
  v24[5] = *&v50[16];
  v24[6] = v25;
  v24[7] = v51[0];
  *(v24 + 121) = *(v51 + 9);
  v26 = v48;
  v24[1] = v47;
  v24[2] = v26;
  v27 = *v50;
  v24[3] = v49;
  v24[4] = v27;
  v39 = v17;
  LOBYTE(v40) = v18;
  *(&v40 + 1) = v22;
  v41 = v20;
  v42 = sub_2524ABD84;
  v43 = v24;
  sub_2524ABD4C(&v47, &v44);
  sub_252692500();
  v28 = swift_allocObject();
  v29 = *&v50[32];
  v28[5] = *&v50[16];
  v28[6] = v29;
  v28[7] = v51[0];
  *(v28 + 121) = *(v51 + 9);
  v30 = v48;
  v28[1] = v47;
  v28[2] = v30;
  v31 = *v50;
  v28[3] = v49;
  v28[4] = v31;
  v32 = swift_allocObject();
  v33 = *&v50[32];
  *(v32 + 80) = *&v50[16];
  *(v32 + 96) = v33;
  *(v32 + 112) = v51[0];
  *(v32 + 121) = *(v51 + 9);
  v34 = v48;
  *(v32 + 16) = v47;
  *(v32 + 32) = v34;
  v35 = *v50;
  *(v32 + 48) = v49;
  *(v32 + 64) = v35;
  *(v32 + 144) = v11;
  sub_2524ABD4C(&v47, &v44);
  sub_2524ABD4C(&v47, &v44);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DEF58, &qword_2526A07B0);
  type metadata accessor for SelectionPickerView(0);
  sub_252400FC8(&qword_27F4DEF60, &qword_27F4DEF58, &qword_2526A07B0, &unk_2526A1010);
  sub_2524ABE74(&qword_27F4DEF68, type metadata accessor for SelectionPickerView, &unk_2526A08F4);
  sub_252692150();

  return result;
}

BOOL sub_2524A74F4(uint64_t a1)
{
  v1 = *(a1 + 24);
  v3 = sub_2524A6E18(v6);
  v4 = *(v2 + 8);
  if (v4)
  {
    *(v2 + 24) = v1;
  }

  v3(v6, 0);
  return v4 == 0;
}

void sub_2524A757C(uint64_t *a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DEF50, &unk_2526A07A0);
  MEMORY[0x2530A4210](&v7, v2);
  v3 = v8;
  if (v8)
  {
    v4 = v9;
    v5 = v10;
    v6 = v7;

    sub_2523E2E24(v6, v3, v4, v5);
  }

  else
  {
    sub_2523E2E24(v7, 0, v9, v10);
    v4 = MEMORY[0x277D84F90];
  }

  *a1 = v4;
}

uint64_t sub_2524A7634@<X0>(uint64_t *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  if (qword_27F4DABD0 != -1)
  {
    swift_once();
  }

  v6 = sub_2526905A0();
  __swift_project_value_buffer(v6, qword_27F4E4B18);
  sub_2524ABD4C(a1, &v24);
  v7 = sub_252690580();
  v8 = sub_252692F10();
  sub_2524ABEBC(a1);
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v23 = v10;
    *v9 = 136315138;
    v11 = *(a1 + 3);
    v24 = *(a1 + 1);
    v25 = v11;
    v26 = *(a1 + 5);
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DEF50, &unk_2526A07A0);
    MEMORY[0x2530A4210](v22, v12);
    v24 = v22[0];
    v25 = v22[1];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB4B8, &qword_252695A50);
    v13 = sub_252692C20();
    v15 = sub_2525BDA90(v13, v14, &v23);

    *(v9 + 4) = v15;
    _os_log_impl(&dword_252309000, v7, v8, "Picker Button tapped %s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v10);
    MEMORY[0x2530A5A40](v10, -1, -1);
    MEMORY[0x2530A5A40](v9, -1, -1);
  }

  v16 = *a1;
  v17 = *(a1 + 9);
  v24 = *(a1 + 7);
  v25 = v17;
  *&v26 = a1[11];
  *a3 = v16;
  v23 = a2;
  sub_2524ABCF0(&v24, v22);
  type metadata accessor for PickerButtonControlView.PickerViewState(0);

  sub_2526924D0();
  v18 = *(&v22[0] + 1);
  *(a3 + 8) = *&v22[0];
  *(a3 + 16) = v18;
  v19 = v25;
  *(a3 + 24) = v24;
  *(a3 + 40) = v19;
  *(a3 + 56) = v26;
  v20 = *(type metadata accessor for SelectionPickerView(0) + 28);
  *(a3 + v20) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DEF70, &qword_2526A0A00);
  return swift_storeEnumTagMultiPayload();
}

void sub_2524A78A4(uint64_t *a1@<X8>)
{
  swift_getKeyPath();
  sub_2524ABE74(&qword_27F4DEF48, type metadata accessor for PickerButtonControlView.PickerViewState, &unk_2526A0628);
  sub_25268DB30();

  swift_beginAccess();
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  v6 = v1[5];
  *a1 = v3;
  a1[1] = v4;
  a1[2] = v5;
  a1[3] = v6;
  sub_2523E165C(v3, v4, v5, v6);
}

void sub_2524A796C(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_2524ABE74(&qword_27F4DEF48, type metadata accessor for PickerButtonControlView.PickerViewState, &unk_2526A0628);
  sub_25268DB30();

  swift_beginAccess();
  v4 = v3[2];
  v5 = v3[3];
  v6 = v3[4];
  v7 = v3[5];
  *a2 = v4;
  a2[1] = v5;
  a2[2] = v6;
  a2[3] = v7;
  sub_2523E165C(v4, v5, v6, v7);
}

void sub_2524A7A34(uint64_t *a1)
{
  v1 = a1[1];
  v2 = a1[2];
  v3 = a1[3];
  v4[0] = *a1;
  v4[1] = v1;
  v4[2] = v2;
  v4[3] = v3;
  sub_2523E165C(v4[0], v1, v2, v3);
  sub_2524A7A80(v4);
}

void sub_2524A7A80(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  swift_beginAccess();
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  sub_2523E165C(v6, v7, v8, v9);
  v10 = sub_2524AB954(v6, v7, v8, v9, v2, v3, v4, v5);
  sub_2523E2E24(v6, v7, v8, v9);
  if (v10)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_2524ABE74(&qword_27F4DEF48, type metadata accessor for PickerButtonControlView.PickerViewState, &unk_2526A0628);
    sub_25268DB20();
    sub_2523E2E24(v2, v3, v4, v5);
  }

  else
  {
    v12 = v1[2];
    v13 = v1[3];
    v14 = v1[4];
    v15 = v1[5];
    v1[2] = v2;
    v1[3] = v3;
    v1[4] = v4;
    v1[5] = v5;
    sub_2523E2E24(v12, v13, v14, v15);
  }
}

void sub_2524A7C30(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_beginAccess();
  v10 = a1[2];
  v11 = a1[3];
  v13 = a1[4];
  v12 = a1[5];
  a1[2] = a2;
  a1[3] = a3;
  a1[4] = a4;
  a1[5] = a5;
  sub_2523E165C(a2, a3, a4, a5);
  sub_2523E2E24(v10, v11, v13, v12);
}

uint64_t (*sub_2524A7CD4(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
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
  v4[5] = OBJC_IVAR____TtCV22HomeAccessoryControlUI23PickerButtonControlView15PickerViewState___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_2524ABE74(&qword_27F4DEF48, type metadata accessor for PickerButtonControlView.PickerViewState, &unk_2526A0628);
  sub_25268DB30();

  *v4 = v1;
  swift_getKeyPath();
  sub_25268DB50();

  v4[7] = sub_25241A368(v4);
  return sub_2524A7E0C;
}

void sub_2524A7E0C(void *a1)
{
  v1 = *a1;
  (*(*a1 + 56))(*a1, 0);
  *v1 = v1[4];
  swift_getKeyPath();
  sub_25268DB40();

  free(v1);
}

uint64_t sub_2524A7EA0()
{
  swift_getKeyPath();
  sub_2524ABE74(&qword_27F4DEF48, type metadata accessor for PickerButtonControlView.PickerViewState, &unk_2526A0628);
  sub_25268DB30();

  v1 = *(v0 + 88);

  return v1;
}

uint64_t sub_2524A7F50@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_2524ABE74(&qword_27F4DEF48, type metadata accessor for PickerButtonControlView.PickerViewState, &unk_2526A0628);
  sub_25268DB30();

  v5 = *(v3 + 88);
  v4 = *(v3 + 96);
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  *(v6 + 24) = v4;
  *a2 = sub_2524AB920;
  a2[1] = v6;
}

double sub_2524A8028(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  *(v4 + 24) = v2;
  swift_getKeyPath();
  sub_2524ABE74(&qword_27F4DEF48, type metadata accessor for PickerButtonControlView.PickerViewState, &unk_2526A0628);

  sub_25268DB20();

  return result;
}

uint64_t sub_2524A8144()
{
  swift_getKeyPath();
  sub_2524ABE74(&qword_27F4DEF48, type metadata accessor for PickerButtonControlView.PickerViewState, &unk_2526A0628);
  sub_25268DB30();

  return *(v0 + 104);
}

void sub_2524A81E4(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_2524ABE74(&qword_27F4DEF48, type metadata accessor for PickerButtonControlView.PickerViewState, &unk_2526A0628);
  sub_25268DB30();

  *a2 = *(v3 + 104);
}

void sub_2524A82B4(char a1)
{
  if (*(v1 + 104) == (a1 & 1))
  {
    *(v1 + 104) = a1 & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_2524ABE74(&qword_27F4DEF48, type metadata accessor for PickerButtonControlView.PickerViewState, &unk_2526A0628);
    sub_25268DB20();
  }
}

uint64_t sub_2524A83CC()
{
  swift_getKeyPath();
  sub_2524ABE74(&qword_27F4DEF48, type metadata accessor for PickerButtonControlView.PickerViewState, &unk_2526A0628);
  sub_25268DB30();

  return *(v0 + 105);
}

void sub_2524A846C(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_2524ABE74(&qword_27F4DEF48, type metadata accessor for PickerButtonControlView.PickerViewState, &unk_2526A0628);
  sub_25268DB30();

  *a2 = *(v3 + 105);
}

void sub_2524A853C(char a1)
{
  if (*(v1 + 105) == (a1 & 1))
  {
    *(v1 + 105) = a1 & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_2524ABE74(&qword_27F4DEF48, type metadata accessor for PickerButtonControlView.PickerViewState, &unk_2526A0628);
    sub_25268DB20();
  }
}

uint64_t sub_2524A8654()
{
  swift_getKeyPath();
  sub_2524ABE74(&qword_27F4DEF48, type metadata accessor for PickerButtonControlView.PickerViewState, &unk_2526A0628);
  sub_25268DB30();

  return *(v0 + 106);
}

void sub_2524A86F4(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_2524ABE74(&qword_27F4DEF48, type metadata accessor for PickerButtonControlView.PickerViewState, &unk_2526A0628);
  sub_25268DB30();

  *a2 = *(v3 + 106);
}

void sub_2524A87C4(char a1)
{
  if (*(v1 + 106) == (a1 & 1))
  {
    *(v1 + 106) = a1 & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_2524ABE74(&qword_27F4DEF48, type metadata accessor for PickerButtonControlView.PickerViewState, &unk_2526A0628);
    sub_25268DB20();
  }
}

uint64_t sub_2524A88DC(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB488, &qword_2526A06A0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v22 - v4;
  v6 = type metadata accessor for AccessoryControl.PickerButtonViewConfig.Option.Identifier(0);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v1 + 80);
  v12 = *(v11 + 16) + 1;
  v13 = v11 + 8;
  while (--v12)
  {
    v14 = v13 + 80;
    v15 = *(v13 + 32);
    v13 += 80;
    if (v15 == 2)
    {
      v16 = *(v14 - 40);
      if ((*(v14 - 32) & 1) == 0)
      {

        return v16;
      }

      v17 = v8;
      sub_25237153C(a1, v5, &qword_27F4DB488, &qword_2526A06A0);
      if ((*(v7 + 48))(v5, 1, v17) == 1)
      {
        sub_252372288(v5, &qword_27F4DB488, &qword_2526A06A0);
      }

      else
      {
        sub_2524AB768(v5, v10, type metadata accessor for AccessoryControl.PickerButtonViewConfig.Option.Identifier);
        if (*(v16 + 16))
        {

          swift_bridgeObjectRetain_n();

          v18 = sub_2523674BC(v10);
          if (v19)
          {
            v20 = *(*(v16 + 56) + 8 * v18);

            sub_2524AB848(v10, type metadata accessor for AccessoryControl.PickerButtonViewConfig.Option.Identifier);

            return v20;
          }

          swift_bridgeObjectRelease_n();
        }

        sub_2524AB848(v10, type metadata accessor for AccessoryControl.PickerButtonViewConfig.Option.Identifier);
      }

      return 0;
    }
  }

  return 0;
}

uint64_t sub_2524A8B8C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for AccessoryControl.PickerButtonState.SelectionState(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v25 - v9;
  MEMORY[0x28223BE20](v11);
  v13 = &v25 - v12;
  swift_getKeyPath();
  v26 = v1;
  sub_2524ABE74(&qword_27F4DEF48, type metadata accessor for PickerButtonControlView.PickerViewState, &unk_2526A0628);
  sub_25268DB30();

  swift_beginAccess();
  if (*(v1 + 24))
  {
    v14 = *(v1 + 40);
    v15 = *(v2 + 80);
    v16 = v15 - 48;
    v17 = *(v15 + 16) + 1;
    while (--v17)
    {
      v18 = (v16 + 80);
      v19 = *(v16 + 88);
      v16 += 80;
      if (!v19)
      {
        if (!*(v14 + 16))
        {
          break;
        }

        v20 = sub_25236743C(*v18, 0);
        if ((v21 & 1) == 0)
        {
          break;
        }

        sub_2524AB7D0(*(v14 + 56) + *(v5 + 72) * v20, v10, type metadata accessor for AccessoryControl.PickerButtonState.SelectionState);
        sub_2524AB768(v10, v13, type metadata accessor for AccessoryControl.PickerButtonState.SelectionState);
        sub_2524AB768(v13, v7, type metadata accessor for AccessoryControl.PickerButtonState.SelectionState);
        if (swift_getEnumCaseMultiPayload())
        {
          sub_2524AB848(v7, type metadata accessor for AccessoryControl.PickerButtonState.SelectionState);
          break;
        }

        sub_2524AB768(v7, a1, type metadata accessor for AccessoryControl.PickerButtonViewConfig.Option.Identifier);
        v22 = 0;
        goto LABEL_10;
      }
    }
  }

  v22 = 1;
LABEL_10:
  v23 = type metadata accessor for AccessoryControl.PickerButtonViewConfig.Option.Identifier(0);
  return (*(*(v23 - 8) + 56))(a1, v22, 1, v23);
}

uint64_t sub_2524A8E50()
{
  v0 = type metadata accessor for AccessoryControl.PickerButtonViewConfig.Option(0);
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v19 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for AccessoryControl.PickerButtonViewConfig.Option.Identifier(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB488, &qword_2526A06A0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v19 - v9;
  sub_2524A8B8C(&v19 - v9);
  v11 = sub_2524A88DC(v10);
  sub_252372288(v10, &qword_27F4DB488, &qword_2526A06A0);
  if (!v11)
  {
    return 0;
  }

  v12 = *(v11 + 16);
  if (v12)
  {
    v20 = MEMORY[0x277D84F90];
    sub_252370068(0, v12, 0);
    v13 = v20;
    v14 = v11 + ((*(v1 + 80) + 32) & ~*(v1 + 80));
    v15 = *(v1 + 72);
    do
    {
      sub_2524AB7D0(v14, v3, type metadata accessor for AccessoryControl.PickerButtonViewConfig.Option);
      sub_2524AB7D0(v3, v7, type metadata accessor for AccessoryControl.PickerButtonViewConfig.Option.Identifier);
      sub_2524AB848(v3, type metadata accessor for AccessoryControl.PickerButtonViewConfig.Option);
      v20 = v13;
      v17 = *(v13 + 16);
      v16 = *(v13 + 24);
      if (v17 >= v16 >> 1)
      {
        sub_252370068((v16 > 1), v17 + 1, 1);
        v13 = v20;
      }

      *(v13 + 16) = v17 + 1;
      sub_2524AB768(v7, v13 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v17, type metadata accessor for AccessoryControl.PickerButtonViewConfig.Option.Identifier);
      v14 += v15;
      --v12;
    }

    while (v12);
  }

  else
  {

    return MEMORY[0x277D84F90];
  }

  return v13;
}

void sub_2524A9130()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB458, &qword_2526A0BD0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = (&v48 - v3);
  v5 = type metadata accessor for AccessoryControl.PickerButtonState.SelectionState(0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v60 = &v48 - v10;
  swift_getKeyPath();
  v11 = OBJC_IVAR____TtCV22HomeAccessoryControlUI23PickerButtonControlView15PickerViewState___observationRegistrar;
  v61[0] = v1;
  v57 = sub_2524ABE74(&qword_27F4DEF48, type metadata accessor for PickerButtonControlView.PickerViewState, &unk_2526A0628);
  v58 = v11;
  sub_25268DB30();

  swift_beginAccess();
  if (*(v1 + 24))
  {
    v51 = v4;
    v12 = *(v1 + 40);
    v13 = v12 + 64;
    v14 = 1 << *(v12 + 32);
    v15 = -1;
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    v16 = v15 & *(v12 + 64);
    v17 = (v14 + 63) >> 6;
    v50 = (v6 + 56);

    v18 = 0;
    v59 = 0;
    v55 = v6;
    v56 = v5;
    v19 = v6;
    v54 = v12;
    if (v16)
    {
      goto LABEL_7;
    }

LABEL_8:
    while (1)
    {
      v20 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v20 >= v17)
      {

        return;
      }

      v16 = *(v13 + 8 * v20);
      ++v18;
      if (v16)
      {
        while (1)
        {
          v21 = __clz(__rbit64(v16));
          v16 &= v16 - 1;
          v22 = v60;
          sub_2524AB7D0(*(v12 + 56) + *(v19 + 72) * (v21 | (v20 << 6)), v60, type metadata accessor for AccessoryControl.PickerButtonState.SelectionState);
          sub_2524AB768(v22, v8, type metadata accessor for AccessoryControl.PickerButtonState.SelectionState);
          if (swift_getEnumCaseMultiPayload() == 2)
          {
            v23 = *v8;
            v24 = v8[8];

            v53 = v24;
            v26 = (v24 & 1) == 0 && v24 != 2;
            if (v26 == *(v1 + 104))
            {
              *(v1 + 104) = v26;
            }

            else
            {
              KeyPath = swift_getKeyPath();
              v52 = &v48;
              MEMORY[0x28223BE20](KeyPath);
              *(&v48 - 2) = v1;
              *(&v48 - 8) = v26;
              v61[0] = v1;
              v28 = v59;
              sub_25268DB20();
              v59 = v28;
            }

            v29 = *(v23 + 16);

            if (!v29)
            {
              v32 = *(v1 + 80);
              v33 = v32 - 48;
              v34 = *(v32 + 16) + 1;
              while (--v34)
              {
                v35 = (v33 + 80);
                v36 = *(v33 + 88);
                v33 += 80;
                if (v36 == 2)
                {
                  v37 = *v35;
                  v38 = sub_2524A8E50();
                  if (v38)
                  {
                    v39 = v38;
                  }

                  else
                  {
                    v39 = MEMORY[0x277D84F90];
                  }

                  v40 = sub_2524A7CD4(v61);
                  if (*(v41 + 8))
                  {
                    v52 = v40;

                    v43 = sub_2526243FC(v42);

                    v49 = v37;
                    v44 = v51;
                    *v51 = v43;
                    *(v44 + 8) = v53;
                    *(v44 + 16) = 0;
                    *(v44 + 24) = 0;
                    v45 = v56;
                    swift_storeEnumTagMultiPayload();
                    (*v50)(v44, 0, 1, v45);
                    sub_2524A6BB8(v44, v49, 2);
                    (v52)(v61, 0);
                  }

                  else
                  {
                    (v40)(v61, 0);
                  }

                  v46 = *(v39 + 16);

                  if (((v46 != 0) ^ *(v1 + 106)))
                  {
                    v47 = swift_getKeyPath();
                    MEMORY[0x28223BE20](v47);
                    *(&v48 - 2) = v1;
                    *(&v48 - 8) = v46 != 0;
                    v61[0] = v1;
                    goto LABEL_25;
                  }

                  *(v1 + 106) = v46 != 0;
                  goto LABEL_26;
                }
              }
            }

            if (*(v1 + 106) == 1)
            {
              *(v1 + 106) = 1;
            }

            else
            {
              v30 = swift_getKeyPath();
              MEMORY[0x28223BE20](v30);
              *(&v48 - 2) = v1;
              *(&v48 - 8) = 1;
              v61[0] = v1;
LABEL_25:
              v31 = v59;
              sub_25268DB20();
              v59 = v31;
            }

LABEL_26:
            v18 = v20;
            v19 = v55;
            v12 = v54;
            if (!v16)
            {
              goto LABEL_8;
            }
          }

          else
          {
            sub_2524AB848(v8, type metadata accessor for AccessoryControl.PickerButtonState.SelectionState);
            v18 = v20;
            if (!v16)
            {
              goto LABEL_8;
            }
          }

LABEL_7:
          v20 = v18;
        }
      }
    }

    __break(1u);
  }
}

double sub_2524A9740()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB458, &qword_2526A0BD0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = (&v44 - v3);
  v5 = type metadata accessor for AccessoryControl.PickerButtonViewConfig.Option(0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for AccessoryControl.PickerButtonViewConfig.Option.Identifier(0);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB488, &qword_2526A06A0);
  *&result = MEMORY[0x28223BE20](v13 - 8).n128_u64[0];
  v16 = &v44 - v15;
  v17 = *(v0 + 80);
  v18 = v17 - 48;
  v19 = *(v17 + 16) + 1;
  while (--v19)
  {
    v20 = (v18 + 80);
    v21 = *(v18 + 88);
    v18 += 80;
    if (v21 == 2)
    {
      v47 = *v20;
      v48 = v4;
      swift_getKeyPath();
      v22 = OBJC_IVAR____TtCV22HomeAccessoryControlUI23PickerButtonControlView15PickerViewState___observationRegistrar;
      v51[0] = v0;
      v49 = sub_2524ABE74(&qword_27F4DEF48, type metadata accessor for PickerButtonControlView.PickerViewState, &unk_2526A0628);
      v50 = v22;
      sub_25268DB30();

      if (*(v0 + 104) == 1)
      {
        sub_2524A8B8C(v16);
        v23 = sub_2524A88DC(v16);
        sub_252372288(v16, &qword_27F4DB488, &qword_2526A06A0);
        if (v23)
        {
          v46 = 0;
          v24 = *(v23 + 16);
          if (v24)
          {
            v45 = v0;
            v51[0] = MEMORY[0x277D84F90];
            sub_252370068(0, v24, 0);
            v25 = v51[0];
            v26 = *(v6 + 80);
            v44 = v23;
            v27 = v23 + ((v26 + 32) & ~v26);
            v28 = *(v6 + 72);
            do
            {
              sub_2524AB7D0(v27, v8, type metadata accessor for AccessoryControl.PickerButtonViewConfig.Option);
              sub_2524AB7D0(v8, v12, type metadata accessor for AccessoryControl.PickerButtonViewConfig.Option.Identifier);
              sub_2524AB848(v8, type metadata accessor for AccessoryControl.PickerButtonViewConfig.Option);
              v51[0] = v25;
              v30 = *(v25 + 16);
              v29 = *(v25 + 24);
              if (v30 >= v29 >> 1)
              {
                sub_252370068((v29 > 1), v30 + 1, 1);
                v25 = v51[0];
              }

              *(v25 + 16) = v30 + 1;
              sub_2524AB768(v12, v25 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * v30, type metadata accessor for AccessoryControl.PickerButtonViewConfig.Option.Identifier);
              v27 += v28;
              --v24;
            }

            while (v24);

            v1 = v45;
          }

          else
          {

            v25 = MEMORY[0x277D84F90];
          }

          v36 = sub_2524A7CD4(v51);
          if (*(v37 + 8))
          {
            v38 = v1;
            v39 = sub_2526243FC(v25);

            v40 = v48;
            *v48 = v39;
            v1 = v38;
            *(v40 + 8) = 0;
            v41 = type metadata accessor for AccessoryControl.PickerButtonState.SelectionState(0);
            *(v40 + 16) = 0;
            *(v40 + 24) = 0;
            swift_storeEnumTagMultiPayload();
            (*(*(v41 - 8) + 56))(v40, 0, 1, v41);
            sub_2524A6BB8(v40, v47, 2);
          }

          else
          {
          }

          (v36)(v51, 0);
        }

        if (*(v1 + 106) == 1)
        {
          *(v1 + 106) = 1;
          goto LABEL_26;
        }

        KeyPath = swift_getKeyPath();
        MEMORY[0x28223BE20](KeyPath);
        *(&v44 - 2) = v1;
        *(&v44 - 8) = 1;
        v51[0] = v1;
      }

      else
      {
        v31 = sub_2524A7CD4(v51);
        if (*(v32 + 8))
        {
          v33 = v48;
          *v48 = MEMORY[0x277D84FA0];
          *(v33 + 8) = 1;
          v34 = type metadata accessor for AccessoryControl.PickerButtonState.SelectionState(0);
          *(v33 + 16) = 0;
          *(v33 + 24) = 0;
          swift_storeEnumTagMultiPayload();
          (*(*(v34 - 8) + 56))(v33, 0, 1, v34);
          sub_2524A6BB8(v33, v47, 2);
        }

        (v31)(v51, 0);
        if ((*(v0 + 106) & 1) == 0)
        {
          *(v0 + 106) = 0;
          goto LABEL_26;
        }

        v35 = swift_getKeyPath();
        MEMORY[0x28223BE20](v35);
        *(&v44 - 2) = v0;
        *(&v44 - 8) = 0;
        v51[0] = v0;
      }

      sub_25268DB20();

LABEL_26:
      if (*(v1 + 105) == 1)
      {
        *(v1 + 105) = 1;
      }

      else
      {
        v43 = swift_getKeyPath();
        MEMORY[0x28223BE20](v43);
        *(&v44 - 2) = v1;
        *(&v44 - 8) = 1;
        v51[0] = v1;
        sub_25268DB20();
      }

      return result;
    }
  }

  return result;
}

uint64_t sub_2524A9E6C()
{
  sub_2523E2E24(v0[2], v0[3], v0[4], v0[5]);

  v1 = OBJC_IVAR____TtCV22HomeAccessoryControlUI23PickerButtonControlView15PickerViewState___observationRegistrar;
  v2 = sub_25268DB70();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for PickerButtonControlView.PickerViewState(uint64_t a1)
{
  result = qword_27F4DEF38;
  if (!qword_27F4DEF38)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2524A9F94(uint64_t a1)
{
  result = sub_25268DB70();
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

uint64_t get_enum_tag_for_layout_string_22HomeAccessoryControlUI0bC0V17PickerButtonStateVSg(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_2524AA07C(uint64_t result)
{
  v1 = result;
  v2 = *(result + 16);
  if (v2 < 2)
  {
    return v1;
  }

  v3 = v2 >> 1;
  v4 = v2 + 3;
  for (i = 4; ; ++i)
  {
    if (i == v4)
    {
      goto LABEL_5;
    }

    v6 = *(v1 + 16);
    if (i - 4 >= v6)
    {
      break;
    }

    if (v4 - 4 >= v6)
    {
      goto LABEL_12;
    }

    v7 = *(v1 + 8 * i);
    v8 = *(v1 + 8 * v4);
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_25261EF74(v1);
      v1 = result;
    }

    *(v1 + 8 * i) = v8;
    *(v1 + 8 * v4) = v7;
LABEL_5:
    --v4;
    if (!--v3)
    {
      return v1;
    }
  }

  __break(1u);
LABEL_12:
  __break(1u);
  return result;
}

void *sub_2524AA134@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DEF78, &qword_2526A0878);
  MEMORY[0x28223BE20](v4);
  v6 = &v17 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DEF80, &qword_2526A0880);
  MEMORY[0x28223BE20](v7);
  v9 = &v17 - v8;
  v10 = *(a1 + 16);
  if (v10)
  {
    *v9 = sub_2526919E0();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DEF88, &unk_2526A0888);
    v17 = a2;
    v11 = sub_25266A1B8(0, v10);
    v18 = sub_2524AA07C(v11);
    KeyPath = swift_getKeyPath();
    v13 = swift_allocObject();
    *(v13 + 16) = a1;

    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DEF90, &unk_2526A08B0);
    v15 = sub_252400FC8(&qword_27F4DEF98, &qword_27F4DEF90, &unk_2526A08B0, MEMORY[0x277D83980]);
    sub_252692790(&v18, KeyPath, sub_2524ABF18, v13, v14, MEMORY[0x277CE0BD8], v15, MEMORY[0x277D83E98], MEMORY[0x277CE0BC8]);
    sub_25237153C(v9, v6, &qword_27F4DEF80, &qword_2526A0880);
    swift_storeEnumTagMultiPayload();
    sub_252400FC8(&qword_27F4DEFA0, &qword_27F4DEF80, &qword_2526A0880, MEMORY[0x277CDD828]);
    sub_252691470();
    return sub_252372288(v9, &qword_27F4DEF80, &qword_2526A0880);
  }

  else
  {
    swift_storeEnumTagMultiPayload();
    sub_252400FC8(&qword_27F4DEFA0, &qword_27F4DEF80, &qword_2526A0880, MEMORY[0x277CDD828]);
    return sub_252691470();
  }
}

unint64_t sub_2524AA42C(unint64_t result, void *a2)
{
  v2 = a2[2];
  if (!(v2 | result))
  {
    return 0;
  }

  if (v2 == 3)
  {
    if (result == 3)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB360, &qword_25269F600);
      v13 = swift_allocObject();
      *(v13 + 16) = xmmword_2526952C0;
      v14 = MEMORY[0x277D837D0];
      *(v13 + 56) = MEMORY[0x277D837D0];
      v15 = sub_2523AB7A4();
      v16 = a2[5];
      *(v13 + 32) = a2[4];
      *(v13 + 40) = v16;
      *(v13 + 96) = v14;
      *(v13 + 104) = v15;
      v17 = a2[6];
      v18 = a2[7];
      *(v13 + 64) = v15;
      *(v13 + 72) = v17;
      *(v13 + 80) = v18;
      *(v13 + 136) = v14;
      *(v13 + 144) = v15;
      v19 = a2[8];
      v20 = a2[9];
      *(v13 + 112) = v19;
      *(v13 + 120) = v20;

      goto LABEL_28;
    }
  }

  else if (v2 == 2)
  {
    if (result == 2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB360, &qword_25269F600);
      v7 = swift_allocObject();
      *(v7 + 16) = xmmword_252694EA0;
      v8 = MEMORY[0x277D837D0];
      *(v7 + 56) = MEMORY[0x277D837D0];
      v9 = sub_2523AB7A4();
      v10 = a2[5];
      *(v7 + 32) = a2[4];
      *(v7 + 40) = v10;
      *(v7 + 96) = v8;
      *(v7 + 104) = v9;
      v11 = a2[6];
      v12 = a2[7];
      *(v7 + 64) = v9;
      *(v7 + 72) = v11;
      *(v7 + 80) = v12;

      goto LABEL_28;
    }
  }

  else if (v2 == 1 && result == 1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB360, &qword_25269F600);
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_252694E90;
    *(v5 + 56) = MEMORY[0x277D837D0];
    *(v5 + 64) = sub_2523AB7A4();
    v6 = a2[5];
    *(v5 + 32) = a2[4];
    *(v5 + 40) = v6;

    goto LABEL_28;
  }

  v21 = v2 - result;
  if (v2 < result)
  {
    __break(1u);
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  switch(result)
  {
    case 2uLL:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB360, &qword_25269F600);
      v30 = swift_allocObject();
      *(v30 + 16) = xmmword_2526952C0;
      v31 = MEMORY[0x277D837D0];
      *(v30 + 56) = MEMORY[0x277D837D0];
      result = sub_2523AB7A4();
      *(v30 + 64) = result;
      if (!v2)
      {
LABEL_31:
        __break(1u);
LABEL_32:
        __break(1u);
        goto LABEL_33;
      }

      v32 = result;
      result = a2[5];
      *(v30 + 32) = a2[4];
      *(v30 + 40) = result;
      *(v30 + 96) = v31;
      *(v30 + 104) = v32;
      if (v2 == 1)
      {
LABEL_33:
        __break(1u);
        goto LABEL_34;
      }

      v33 = a2[6];
      v34 = a2[7];
      v35 = MEMORY[0x277D83E88];
      *(v30 + 72) = v33;
      *(v30 + 80) = v34;
      v36 = MEMORY[0x277D83ED0];
      *(v30 + 136) = v35;
      *(v30 + 144) = v36;
      *(v30 + 112) = v21;

LABEL_28:
      v43 = sub_252692C60();

      return v43;
    case 1uLL:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB360, &qword_25269F600);
      v26 = swift_allocObject();
      *(v26 + 16) = xmmword_252694EA0;
      *(v26 + 56) = MEMORY[0x277D837D0];
      result = sub_2523AB7A4();
      *(v26 + 64) = result;
      if (v2)
      {
        v27 = a2[5];
        v28 = MEMORY[0x277D83E88];
        *(v26 + 32) = a2[4];
        *(v26 + 40) = v27;
        v29 = MEMORY[0x277D83ED0];
        *(v26 + 96) = v28;
        *(v26 + 104) = v29;
        *(v26 + 72) = v21;

        goto LABEL_28;
      }

      goto LABEL_30;
    case 0uLL:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB360, &qword_25269F600);
      v22 = swift_allocObject();
      v23 = MEMORY[0x277D83E88];
      v24 = MEMORY[0x277D83ED0];
      *(v22 + 16) = xmmword_252694E90;
      *(v22 + 56) = v23;
      *(v22 + 64) = v24;
      *(v22 + 32) = v21;
      v25 = sub_252692C60();

      return v25;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB360, &qword_25269F600);
  v37 = swift_allocObject();
  *(v37 + 16) = xmmword_2526952C0;
  v38 = MEMORY[0x277D837D0];
  *(v37 + 56) = MEMORY[0x277D837D0];
  result = sub_2523AB7A4();
  *(v37 + 64) = result;
  if (!v2)
  {
    goto LABEL_32;
  }

  v39 = result;
  result = a2[5];
  *(v37 + 32) = a2[4];
  *(v37 + 40) = result;
  *(v37 + 96) = v38;
  *(v37 + 104) = v39;
  if (v2 != 1)
  {
    v40 = a2[6];
    v41 = a2[7];
    *(v37 + 72) = v40;
    *(v37 + 80) = v41;
    v42 = MEMORY[0x277D83ED0];
    *(v37 + 136) = MEMORY[0x277D83E88];
    *(v37 + 144) = v42;
    *(v37 + 112) = v2 - 2;

    goto LABEL_28;
  }

LABEL_34:
  __break(1u);
  return result;
}

double sub_2524AA8EC@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = v2;
  v5 = sub_2523676D8(a1);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v13 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_25236C9FC();
      v9 = v13;
    }

    v10 = *(v9 + 48);
    v11 = sub_25268F4D0();
    (*(*(v11 - 8) + 8))(v10 + *(*(v11 - 8) + 72) * v7, v11);
    sub_25235E20C((*(v9 + 56) + 32 * v7), a2);
    sub_2524AA9C8(v7, v9);
    *v3 = v9;
  }

  else
  {
    result = 0.0;
    *a2 = 0u;
    a2[1] = 0u;
  }

  return result;
}

void sub_2524AA9C8(int64_t a1, uint64_t a2)
{
  v39 = sub_25268F4D0();
  v4 = *(v39 - 8);
  MEMORY[0x28223BE20](v39);
  v38 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = a2 + 64;
  v8 = -1 << *(a2 + 32);
  v9 = (a1 + 1) & ~v8;
  if ((*(a2 + 64 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    v40 = v5;
    v11 = sub_2526931B0();
    v12 = v39;
    v5 = v40;
    v13 = v10;
    v37 = (v11 + 1) & v10;
    v15 = *(v4 + 16);
    v14 = v4 + 16;
    v35 = a2 + 64;
    v36 = v15;
    v16 = *(v14 + 56);
    v34 = (v14 - 8);
    do
    {
      v17 = v16;
      v18 = v16 * v9;
      v19 = v38;
      v20 = v13;
      v21 = v14;
      v36(v38, *(v5 + 48) + v16 * v9, v12);
      sub_2524ABE74(&qword_27F4DAF28, MEMORY[0x277D16348], MEMORY[0x277D16350]);
      v22 = sub_252692B20();
      (*v34)(v19, v12);
      v13 = v20;
      v23 = v22 & v20;
      if (a1 >= v37)
      {
        if (v23 >= v37 && a1 >= v23)
        {
LABEL_15:
          v5 = v40;
          v14 = v21;
          if (v17 * a1 < v18 || (v16 = v17, *(v40 + 48) + v17 * a1 >= (*(v40 + 48) + v18 + v17)))
          {
            swift_arrayInitWithTakeFrontToBack();
            v5 = v40;
            v16 = v17;
            v13 = v20;
            v7 = v35;
          }

          else
          {
            v7 = v35;
            if (v17 * a1 != v18)
            {
              swift_arrayInitWithTakeBackToFront();
              v5 = v40;
              v16 = v17;
              v13 = v20;
            }
          }

          v26 = *(v5 + 56);
          v27 = (v26 + 32 * a1);
          v28 = (v26 + 32 * v9);
          if (a1 != v9 || v27 >= v28 + 2)
          {
            v29 = v28[1];
            *v27 = *v28;
            v27[1] = v29;
            a1 = v9;
          }

          goto LABEL_4;
        }
      }

      else if (v23 >= v37 || a1 >= v23)
      {
        goto LABEL_15;
      }

      v14 = v21;
      v7 = v35;
      v16 = v17;
      v5 = v40;
LABEL_4:
      v9 = (v9 + 1) & v13;
    }

    while (((*(v7 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  *(v7 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v30 = *(v5 + 16);
  v31 = __OFSUB__(v30, 1);
  v32 = v30 - 1;
  if (v31)
  {
    __break(1u);
  }

  else
  {
    *(v5 + 16) = v32;
    ++*(v5 + 36);
  }
}

void sub_2524AACE8(int64_t a1, uint64_t a2)
{
  v39 = sub_25268DA10();
  v4 = *(v39 - 8);
  MEMORY[0x28223BE20](v39);
  v38 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for AccessoryControl.PickerButtonViewConfig.Option.Identifier(0);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = (&v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v10);
  v12 = &v34 - v11;
  v13 = -1 << *(a2 + 32);
  v14 = (a1 + 1) & ~v13;
  v42 = a2 + 64;
  if ((*(a2 + 64 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v41 = ~v13;
    v40 = (sub_2526931B0() + 1) & ~v13;
    v15 = *(v7 + 72);
    v35 = (v4 + 8);
    v36 = (v4 + 32);
    v16 = v15;
    v37 = a2;
    do
    {
      v17 = v16;
      v18 = v16 * v14;
      sub_2524AB7D0(*(a2 + 48) + v16 * v14, v12, type metadata accessor for AccessoryControl.PickerButtonViewConfig.Option.Identifier);
      sub_252693460();
      sub_2524AB7D0(v12, v9, type metadata accessor for AccessoryControl.PickerButtonViewConfig.Option.Identifier);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload)
      {
        if (EnumCaseMultiPayload == 1)
        {
          MEMORY[0x2530A4FE0](1);
          sub_2526934A0();
        }

        else
        {
          v21 = v6;
          v23 = v38;
          v22 = v39;
          (*v36)(v38, v9, v39);
          MEMORY[0x2530A4FE0](2);
          sub_2524ABE74(&qword_27F4DAE60, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
          sub_252692B30();
          v24 = v23;
          v6 = v21;
          a2 = v37;
          (*v35)(v24, v22);
        }
      }

      else
      {
        v20 = *v9;
        MEMORY[0x2530A4FE0](0);
        MEMORY[0x2530A4FE0](v20);
      }

      v25 = sub_2526934C0();
      sub_2524AB848(v12, type metadata accessor for AccessoryControl.PickerButtonViewConfig.Option.Identifier);
      v26 = v41;
      v27 = v25 & v41;
      if (a1 >= v40)
      {
        v16 = v17;
        if (v27 < v40)
        {
          goto LABEL_4;
        }
      }

      else
      {
        v16 = v17;
        if (v27 >= v40)
        {
          goto LABEL_15;
        }
      }

      if (a1 >= v27)
      {
LABEL_15:
        if (v16 * a1 < v18 || *(a2 + 48) + v16 * a1 >= (*(a2 + 48) + v18 + v16))
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (v16 * a1 != v18)
        {
          swift_arrayInitWithTakeBackToFront();
        }

        v28 = *(a2 + 56);
        v29 = (v28 + 8 * a1);
        v30 = (v28 + 8 * v14);
        if (a1 != v14 || v29 >= v30 + 1)
        {
          *v29 = *v30;
          a1 = v14;
        }
      }

LABEL_4:
      v14 = (v14 + 1) & v26;
    }

    while (((*(v42 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) != 0);
  }

  *(v42 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v31 = *(a2 + 16);
  v32 = __OFSUB__(v31, 1);
  v33 = v31 - 1;
  if (v32)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v33;
    ++*(a2 + 36);
  }
}

unint64_t sub_2524AB12C(unint64_t result, uint64_t a2, __n128 a3)
{
  v4 = result;
  v5 = a2 + 64;
  v6 = -1 << *(a2 + 32);
  v7 = (result + 1) & ~v6;
  if ((*(a2 + 64 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v8 = ~v6;
    v9 = (sub_2526931B0() + 1) & ~v6;
    while (1)
    {
      v10 = 16 * v7;
      v11 = *(a2 + 48) + 16 * v7;
      v12 = *v11;
      v13 = *(v11 + 8);
      sub_252693460();
      MEMORY[0x2530A4FE0](v12);
      MEMORY[0x2530A4FE0](v13);
      result = sub_2526934C0();
      v14 = result & v8;
      if (v4 >= v9)
      {
        break;
      }

      if (v14 < v9)
      {
        goto LABEL_10;
      }

LABEL_11:
      v15 = *(a2 + 48);
      v16 = (v15 + 16 * v4);
      v17 = (v15 + v10);
      if (16 * v4 != v10 || v16 >= v17 + 1)
      {
        *v16 = *v17;
      }

      v18 = *(a2 + 56);
      v19 = *(*(type metadata accessor for AccessoryControl.PickerButtonState.SelectionState(0) - 8) + 72);
      v20 = v19 * v4;
      result = v18 + v19 * v4;
      v21 = v19 * v7;
      v22 = v18 + v19 * v7 + v19;
      if (v20 < v21 || result >= v22)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v4 = v7;
        if (v20 == v21)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v4 = v7;
LABEL_5:
      v7 = (v7 + 1) & v8;
      if (((*(v5 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    if (v14 < v9)
    {
      goto LABEL_5;
    }

LABEL_10:
    if (v4 < v14)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_20:
  *(v5 + ((v4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v4) - 1;
  v24 = *(a2 + 16);
  v25 = __OFSUB__(v24, 1);
  v26 = v24 - 1;
  if (v25)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v26;
    ++*(a2 + 36);
  }

  return result;
}

BOOL sub_2524AB31C(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  v35 = a1;
  sub_2524ABE74(&qword_27F4DEF48, type metadata accessor for PickerButtonControlView.PickerViewState, &unk_2526A0628);
  sub_25268DB30();

  swift_beginAccess();
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v7 = *(a1 + 32);
  v6 = *(a1 + 40);
  swift_getKeyPath();
  v35 = a2;
  sub_2523E165C(v4, v5, v7, v6);
  sub_25268DB30();

  swift_beginAccess();
  v8 = *(a2 + 16);
  v9 = *(a2 + 24);
  v11 = *(a2 + 32);
  v10 = *(a2 + 40);
  if (!v5)
  {
    if (!v9)
    {
      sub_2523E165C(*(a2 + 16), 0, *(a2 + 32), *(a2 + 40));
      sub_2523E2E24(v4, 0, v7, v6);
      goto LABEL_14;
    }

    sub_2523E165C(*(a2 + 16), *(a2 + 24), *(a2 + 32), *(a2 + 40));
    goto LABEL_12;
  }

  if (!v9)
  {
    sub_2523E165C(*(a2 + 16), 0, *(a2 + 32), *(a2 + 40));
    sub_2523E165C(v4, v5, v7, v6);

LABEL_12:
    sub_2523E2E24(v4, v5, v7, v6);
    v13 = v8;
    v14 = v9;
    v15 = v11;
    v16 = v10;
LABEL_17:
    sub_2523E2E24(v13, v14, v15, v16);
    return 0;
  }

  if ((v4 != v8 || v5 != v9) && (sub_2526933B0() & 1) == 0)
  {
    sub_2523E165C(v8, v9, v11, v10);
    sub_2523E165C(v4, v5, v7, v6);
    goto LABEL_16;
  }

  v28 = sub_2523E5934(v7, v11);
  sub_2523E165C(v8, v9, v11, v10);
  sub_2523E165C(v4, v5, v7, v6);
  if ((v28 & 1) == 0)
  {
LABEL_16:
    sub_2523E2E24(v8, v9, v11, v10);

    v13 = v4;
    v14 = v5;
    v15 = v7;
    v16 = v6;
    goto LABEL_17;
  }

  sub_2523E165C(v8, v9, v11, v10);
  sub_2523E165C(v4, v5, v7, v6);
  sub_252436F58(v6, v10);
  v29 = v12;
  sub_2523E2E24(v8, v9, v11, v10);
  sub_2523E2E24(v4, v5, v7, v6);
  sub_2523E2E24(v8, v9, v11, v10);

  sub_2523E2E24(v4, v5, v7, v6);
  if ((v29 & 1) == 0)
  {
    return 0;
  }

LABEL_14:
  v17 = *(a1 + 48);
  v18 = *(a1 + 64);
  v19 = *(a1 + 72);
  v20 = *(a1 + 80);
  v36 = *(a1 + 56);
  v37 = v18;
  v38 = v19;
  v39 = v20;
  v21 = *(a2 + 48);
  v22 = *(a2 + 56);
  v23 = *(a2 + 64);
  v24 = *(a2 + 72);
  v25 = *(a2 + 80);
  v30 = v21;
  v31 = v22;
  v32 = v23;
  v33 = v24;
  v34 = v25;
  v35 = v17;

  v26 = _s22HomeAccessoryControlUI0bC0V22PickerButtonViewConfigV2eeoiySbAE_AEtFZ_0(&v35, &v30);

  return v26;
}

uint64_t sub_2524AB768(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_2524AB7D0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2524AB848(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_2524AB8E0()
{
  v1 = v0[2];
  v2 = v0[4];
  *(v1 + 88) = v0[3];
  *(v1 + 96) = v2;
}

uint64_t sub_2524AB920@<X0>(_BYTE *a1@<X8>)
{
  result = (*(v1 + 16))();
  *a1 = result & 1;
  return result;
}

uint64_t sub_2524AB954(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a2)
  {
    if (a6)
    {
      if (a1 == a5 && a2 == a6 || (sub_2526933B0() & 1) != 0)
      {
        v16 = sub_2523E5934(a3, a7);
        sub_2523E165C(a1, a2, a3, a4);
        sub_2523E165C(a5, a6, a7, a8);
        sub_2523E165C(a1, a2, a3, a4);
        if (v16)
        {
          sub_252436F58(a4, a8);
          v18 = v17;
          sub_2523E2E24(a5, a6, a7, a8);
          v19 = v18 ^ 1;
LABEL_15:

          sub_2523E2E24(a1, a2, a3, a4);
          return v19 & 1;
        }
      }

      else
      {
        sub_2523E165C(a1, a2, a3, a4);
        sub_2523E165C(a5, a6, a7, a8);
        sub_2523E165C(a1, a2, a3, a4);
      }

      sub_2523E2E24(a5, a6, a7, a8);
      v19 = 1;
      goto LABEL_15;
    }

    sub_2523E165C(a1, a2, a3, a4);
    sub_2523E165C(a5, 0, a7, a8);
    sub_2523E165C(a1, a2, a3, a4);
  }

  else
  {
    sub_2523E165C(a1, 0, a3, a4);
    if (!a6)
    {
      sub_2523E165C(a5, 0, a7, a8);
      sub_2523E2E24(a1, 0, a3, a4);
      v19 = 0;
      return v19 & 1;
    }

    sub_2523E165C(a5, a6, a7, a8);
  }

  sub_2523E2E24(a1, a2, a3, a4);
  sub_2523E2E24(a5, a6, a7, a8);
  v19 = 1;
  return v19 & 1;
}

__n128 __swift_memcpy121_8(uint64_t a1, __int128 *a2)
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
  *(a1 + 105) = *(a2 + 105);
  *(a1 + 80) = v6;
  *(a1 + 96) = v7;
  *(a1 + 64) = result;
  return result;
}

uint64_t sub_2524ABC14(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 121))
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

uint64_t sub_2524ABC5C(uint64_t result, int a2, int a3)
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
    *(result + 120) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 121) = 1;
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

    *(result + 121) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t objectdestroy_60Tm()
{

  if (*(v0 + 48))
  {
  }

  sub_25235E264(*(v0 + 128), *(v0 + 136));

  return MEMORY[0x2821FE8E8](v0, 137, 7);
}

uint64_t sub_2524ABE74(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_2524ABF18@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_2524AA42C(*a1, *(v2 + 16));
  *a2 = result;
  *(a2 + 8) = v5;
  *(a2 + 16) = 0;
  *(a2 + 24) = MEMORY[0x277D84F90];
  return result;
}

unint64_t sub_2524ABF58()
{
  result = qword_27F4DEFA8;
  if (!qword_27F4DEFA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4DEFB0, &qword_2526A08C0);
    sub_252400FC8(&qword_27F4DEFA0, &qword_27F4DEF80, &qword_2526A0880, MEMORY[0x277CDD828]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4DEFA8);
  }

  return result;
}

uint64_t sub_2524AC058@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v32 = a2;
  v29 = sub_252691140();
  v3 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v28 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DF000, &qword_2526A0968);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v25 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DEFF8, &qword_2526A0960);
  v27 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = &v25 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DEFE8, &qword_2526A0950);
  v13 = *(v12 - 8);
  v30 = v12;
  v31 = v13;
  MEMORY[0x28223BE20](v12);
  v15 = &v25 - v14;
  v34 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DF018, &qword_2526A0970);
  sub_2524B4530();
  sub_252691BF0();
  v26 = a1;
  v16 = *(a1 + 48);
  v35 = *(a1 + 40);
  v36 = v16;
  v17 = sub_252400FC8(&qword_27F4DF008, &qword_27F4DF000, &qword_2526A0968, MEMORY[0x277CDE580]);
  v18 = sub_252404480();
  v19 = MEMORY[0x277D837D0];
  sub_252691F40();
  (*(v6 + 8))(v8, v5);
  v20 = v28;
  v21 = v29;
  (*(v3 + 104))(v28, *MEMORY[0x277CDDDC0], v29);
  v35 = v5;
  v36 = v19;
  v37 = v17;
  v38 = v18;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_2526920C0();
  (*(v3 + 8))(v20, v21);
  (*(v27 + 8))(v11, v9);
  v33 = v26;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DEFF0, &qword_2526A0958);
  v35 = v9;
  v36 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  sub_252400FC8(&qword_27F4DF010, &qword_27F4DEFF0, &qword_2526A0958, MEMORY[0x277CDDF68]);
  v23 = v30;
  sub_2526921B0();
  return (*(v31 + 8))(v15, v23);
}

uint64_t sub_2524AC4DC(uint64_t a1)
{
  v2 = type metadata accessor for SelectionPickerView(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v15 = *(a1 + 56);

  sub_2524B2F10(&v15);
  KeyPath = swift_getKeyPath();
  sub_2524B4F94(a1, &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for SelectionPickerView);
  v6 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v7 = swift_allocObject();
  sub_2524B4FFC(&v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + v6, type metadata accessor for SelectionPickerView);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DF118, &qword_2526A0B08);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DF030, &qword_2526A0978);
  v10 = sub_252400FC8(&qword_27F4DF120, &qword_27F4DF118, &qword_2526A0B08, MEMORY[0x277D83980]);
  v11 = sub_2524B4D70();
  v12 = sub_2524B45B4();
  return sub_252692790(&v15, KeyPath, sub_2524B4CF0, v7, v8, v9, v10, v11, v12);
}

void Array<A>.ordered.getter(char *a1)
{
  v1 = a1;

  sub_2524B2F10(&v1);
}

uint64_t sub_2524AC740@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DF050, &qword_2526A0988);
  MEMORY[0x28223BE20](v6);
  v9 = &v22 - v8;
  v10 = a1[1];
  v25 = *a1;
  v26 = v10;
  v11 = a1[3];
  v27 = a1[2];
  v28 = v11;
  v29 = a1[4];
  if (BYTE8(v25))
  {
    if (BYTE8(v25) != 1)
    {
      goto LABEL_6;
    }
  }

  else if ((BYTE8(v26) & 1) == 0 && *(v26 + 16) >= 2uLL)
  {
LABEL_6:
    MEMORY[0x28223BE20](v7);
    *v9 = sub_2526911D0();
    *(v9 + 1) = 0;
    v9[16] = 1;
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DF130, &qword_2526A0B10);
    sub_2524ACFDC(a2, &v25, &v9[*(v12 + 44)]);
    if (*(&v29 + 1))
    {
      v22 = v29;
      sub_252404480();

      v13 = sub_252691D50();
      v17 = v16 & 1;
    }

    else
    {
      v13 = 0;
      v14 = 0;
      v17 = 0;
      v15 = 0;
    }

    *&v22 = v13;
    *(&v22 + 1) = v14;
    v23 = v17;
    v24 = v15;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DF060, &qword_2526A0990);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DF0B0, &unk_2526A7C90);
    sub_252400FC8(&qword_27F4DF048, &qword_27F4DF050, &qword_2526A0988, MEMORY[0x277CE1138]);
    sub_2524B4704();
    sub_2524B48F8();
    sub_252692800();
    v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DF040, &qword_2526A0980);
    return (*(*(v21 - 8) + 56))(a3, 0, 1, v21);
  }

  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DF040, &qword_2526A0980);
  v19 = *(*(v18 - 8) + 56);

  return v19(a3, 1, 1, v18);
}

void *sub_2524ACA58@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v28 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DF0A0, &unk_2526A09B0);
  v24 = *(v4 - 8);
  v25 = v4;
  MEMORY[0x28223BE20](v4);
  v6 = &v23 - v5;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DF180, &qword_2526A0BB0);
  MEMORY[0x28223BE20](v27);
  v8 = &v23 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DF188, &qword_2526A0BB8);
  MEMORY[0x28223BE20](v9);
  v11 = &v23 - v10;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DF070, &qword_2526A0998);
  MEMORY[0x28223BE20](v26);
  v13 = &v23 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DF080, &qword_2526A09A0);
  MEMORY[0x28223BE20](v14);
  v16 = &v23 - v15;
  v17 = *a1;
  if (*(a1 + 8))
  {
    if (*(a1 + 8) == 1)
    {
      swift_storeEnumTagMultiPayload();
      sub_2524B4790();
      return sub_252691470();
    }

    else
    {
      v29 = *a1;
      v30 = 2;
      v32 = *(a1 + 25);
      v33 = *(a1 + 41);
      *v34 = *(a1 + 57);
      *&v34[15] = a1[9];
      v31 = *(a1 + 9);
      v19 = sub_2524AFA8C(&v29);
      v23 = &v23;
      MEMORY[0x28223BE20](v19);
      *(&v23 - 4) = v20;
      *(&v23 - 3) = v2;
      *(&v23 - 2) = v17;
      *(&v23 - 8) = 2;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DF190, &qword_2526A0BC0);
      sub_2524B50D4();
      sub_252691C10();

      v21 = v24;
      v22 = v25;
      (*(v24 + 16))(v11, v6, v25);
      swift_storeEnumTagMultiPayload();
      sub_2524B4848();
      sub_252400FC8(&qword_27F4DF098, &qword_27F4DF0A0, &unk_2526A09B0, MEMORY[0x277CDE5A0]);
      sub_252691470();
      sub_25237153C(v13, v8, &qword_27F4DF070, &qword_2526A0998);
      swift_storeEnumTagMultiPayload();
      sub_2524B4790();
      sub_252691470();
      sub_252372288(v13, &qword_27F4DF070, &qword_2526A0998);
      return (*(v21 + 8))(v6, v22);
    }
  }

  else
  {
    v29 = *a1;
    v30 = 0;
    v32 = *(a1 + 25);
    v33 = *(a1 + 41);
    *v34 = *(a1 + 57);
    *&v34[15] = a1[9];
    v31 = *(a1 + 9);
    sub_2524AF3CC(&v29, v16);
    sub_25237153C(v16, v11, &qword_27F4DF080, &qword_2526A09A0);
    swift_storeEnumTagMultiPayload();
    sub_2524B4848();
    sub_252400FC8(&qword_27F4DF098, &qword_27F4DF0A0, &unk_2526A09B0, MEMORY[0x277CDE5A0]);
    sub_252691470();
    sub_25237153C(v13, v8, &qword_27F4DF070, &qword_2526A0998);
    swift_storeEnumTagMultiPayload();
    sub_2524B4790();
    sub_252691470();
    sub_252372288(v13, &qword_27F4DF070, &qword_2526A0998);
    return sub_252372288(v16, &qword_27F4DF080, &qword_2526A09A0);
  }
}

double sub_2524ACFDC@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DF138, &qword_2526A0B18);
  v57 = *(v6 - 8);
  v58 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = &v47 - v7;
  v9 = type metadata accessor for SelectionPickerView(0);
  v51 = *(v9 - 8);
  v10 = *(v51 + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DF140, &qword_2526A0B20);
  v52 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v53 = &v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v47 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DF148, &qword_2526A0B28);
  MEMORY[0x28223BE20](v16 - 8);
  v56 = &v47 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v55 = &v47 - v19;
  sub_2524AD59C(a2);
  v21 = *(v20 + 16);

  v22 = *(a2 + 56);
  if (v22)
  {
    if (!v21)
    {
      v22 = 0;
      v28 = 0;
      v25 = 0;
      v23 = 0;
      v29 = 1;
      v43 = v55;
      goto LABEL_10;
    }

    v48 = a1;
    v49 = v11;
    v54 = a3;
    v50 = v8;
    v59 = *(a2 + 48);
    v60 = v22;
    sub_252404480();

    v23 = sub_252691D50();
    v25 = v24;
    v22 = v26;
    v28 = v27 & 1;
    sub_25235EABC(v23, v24, v27 & 1);
  }

  else
  {
    v48 = a1;
    v49 = v11;
    v54 = a3;
    v50 = v8;
    v23 = 0;
    v25 = 0;
    v28 = 0;
  }

  v29 = 1;
  if (*(a2 + 8) == 2 && v21)
  {
    v30 = v48;
    sub_2524B4F94(v48, &v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for SelectionPickerView);
    v31 = (*(v51 + 80) + 16) & ~*(v51 + 80);
    v32 = swift_allocObject();
    v33 = sub_2524B4FFC(&v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v32 + v31, type metadata accessor for SelectionPickerView);
    MEMORY[0x28223BE20](v33);
    *(&v47 - 2) = v30;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DF158, &qword_2526A2B50);
    sub_2524B4EDC();
    v51 = v22;
    v34 = v15;
    sub_252692550();
    v35 = v52;
    v36 = v53;
    v37 = *(v52 + 16);
    v38 = v49;
    v37(v53, v34, v49);
    v39 = v50;
    *v50 = 0;
    *(v39 + 8) = 1;
    v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DF178, &qword_2526A0B48);
    v37((v39 + *(v40 + 48)), v36, v38);
    v41 = *(v35 + 8);
    v42 = v34;
    v22 = v51;
    v41(v42, v38);
    v41(v36, v38);
    v43 = v55;
    sub_2523714D4(v39, v55, &qword_27F4DF138, &qword_2526A0B18);
    v29 = 0;
    a3 = v54;
  }

  else
  {
    a3 = v54;
    v43 = v55;
  }

LABEL_10:
  (*(v57 + 56))(v43, v29, 1, v58);
  v44 = v56;
  sub_25237153C(v43, v56, &qword_27F4DF148, &qword_2526A0B28);
  *a3 = v23;
  a3[1] = v25;
  a3[2] = v28;
  a3[3] = v22;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DF150, &unk_2526A0B30);
  sub_25237153C(v44, a3 + *(v45 + 48), &qword_27F4DF148, &qword_2526A0B28);
  sub_2524B4DEC(v23, v25, v28, v22);
  sub_2524B4E30(v23, v25, v28, v22);
  sub_252372288(v43, &qword_27F4DF148, &qword_2526A0B28);
  sub_252372288(v44, &qword_27F4DF148, &qword_2526A0B28);
  return sub_2524B4E30(v23, v25, v28, v22);
}

void sub_2524AD59C(uint64_t a1)
{
  v3 = type metadata accessor for AccessoryControl.PickerButtonViewConfig.Option.Identifier(0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v55 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = type metadata accessor for AccessoryControl.PickerButtonState.SelectionState(0);
  v64 = *(v68 - 8);
  MEMORY[0x28223BE20](v68);
  v67 = v55 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v63 = v55 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB4B0, &unk_252696060);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = v55 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v66 = v55 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB488, &qword_2526A06A0);
  MEMORY[0x28223BE20](v15 - 8);
  v62 = v55 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = v55 - v18;
  v60 = *(a1 + 16);
  v61 = *(a1 + 24);
  v20 = *(v1 + 16);
  v69 = *(v1 + 8);
  v70 = v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DF110, &qword_2526A0A08);
  sub_2526924E0();
  v21 = v71;
  swift_getKeyPath();
  v69 = v21;
  sub_2524B5218(&qword_27F4DEF48, type metadata accessor for PickerButtonControlView.PickerViewState, &unk_2526A0628);
  sub_25268DB30();

  swift_beginAccess();
  v22 = v21[2];
  v23 = v21[3];
  v25 = v21[4];
  v24 = v21[5];
  sub_2523E165C(v22, v23, v25, v24);

  if (v23)
  {
    v58 = v3;
    v59 = v6;
    v56 = v4;
    v57 = v19;
    v55[0] = *(v4 + 56);
    v55[1] = v4 + 56;
    (v55[0])(v19, 1, 1, v3);

    sub_2523E2E24(v22, v23, v25, v24);
    v26 = 0;
    v65 = v24;
    v29 = *(v24 + 64);
    v28 = v24 + 64;
    v27 = v29;
    v30 = 1 << *(v28 - 32);
    v31 = -1;
    if (v30 < 64)
    {
      v31 = ~(-1 << v30);
    }

    v32 = v31 & v27;
    v33 = (v30 + 63) >> 6;
    v35 = v66;
    v34 = v67;
    if ((v31 & v27) != 0)
    {
      while (1)
      {
        v36 = v26;
LABEL_13:
        v39 = __clz(__rbit64(v32));
        v32 &= v32 - 1;
        v40 = v39 | (v36 << 6);
        v41 = *(v65 + 48) + 16 * v40;
        v42 = *v41;
        v43 = *(v41 + 8);
        v44 = v63;
        sub_2524B4F94(*(v65 + 56) + *(v64 + 72) * v40, v63, type metadata accessor for AccessoryControl.PickerButtonState.SelectionState);
        v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB4C0, &qword_252695780);
        v46 = *(v45 + 48);
        *v12 = v42;
        v12[8] = v43;
        sub_2524B4FFC(v44, &v12[v46], type metadata accessor for AccessoryControl.PickerButtonState.SelectionState);
        (*(*(v45 - 8) + 56))(v12, 0, 1, v45);
        v38 = v36;
        v35 = v66;
        v34 = v67;
LABEL_14:
        sub_2523714D4(v12, v35, &qword_27F4DB4B0, &unk_252696060);
        v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB4C0, &qword_252695780);
        if ((*(*(v47 - 8) + 48))(v35, 1, v47) == 1)
        {

          v50 = v57;
          v49 = v58;
          goto LABEL_22;
        }

        sub_2524B4FFC(v35 + *(v47 + 48), v34, type metadata accessor for AccessoryControl.PickerButtonState.SelectionState);
        if (!swift_getEnumCaseMultiPayload())
        {
          break;
        }

        sub_2524B5064(v34, type metadata accessor for AccessoryControl.PickerButtonState.SelectionState);
        v26 = v38;
        if (!v32)
        {
          goto LABEL_6;
        }
      }

      v50 = v57;
      sub_252372288(v57, &qword_27F4DB488, &qword_2526A06A0);
      sub_2524B4FFC(v34, v50, type metadata accessor for AccessoryControl.PickerButtonViewConfig.Option.Identifier);
      v49 = v58;
      (v55[0])(v50, 0, 1, v58);
LABEL_22:
      v51 = v59;
      v52 = v56;
      v53 = v62;
      if (v61)
      {
        sub_25237153C(v50, v62, &qword_27F4DB488, &qword_2526A06A0);
        if ((*(v52 + 48))(v53, 1, v49) != 1)
        {
          sub_2524B4FFC(v53, v51, type metadata accessor for AccessoryControl.PickerButtonViewConfig.Option.Identifier);
          if (*(v60 + 16))
          {

            sub_2523674BC(v51);
            if (v54)
            {

              sub_2524B5064(v51, type metadata accessor for AccessoryControl.PickerButtonViewConfig.Option.Identifier);

              goto LABEL_31;
            }
          }

          sub_2524B5064(v51, type metadata accessor for AccessoryControl.PickerButtonViewConfig.Option.Identifier);
          goto LABEL_31;
        }

        sub_252372288(v53, &qword_27F4DB488, &qword_2526A06A0);
      }

      else
      {
      }

LABEL_31:
      sub_252372288(v50, &qword_27F4DB488, &qword_2526A06A0);
      return;
    }

LABEL_6:
    if (v33 <= v26 + 1)
    {
      v37 = v26 + 1;
    }

    else
    {
      v37 = v33;
    }

    v38 = v37 - 1;
    while (1)
    {
      v36 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        break;
      }

      if (v36 >= v33)
      {
        v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB4C0, &qword_252695780);
        (*(*(v48 - 8) + 56))(v12, 1, 1, v48);
        v32 = 0;
        goto LABEL_14;
      }

      v32 = *(v28 + 8 * v36);
      ++v26;
      if (v32)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
  }
}

uint64_t sub_2524ADD50@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v25 = a2;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DF0B8, &qword_2526A09C0);
  MEMORY[0x28223BE20](v24);
  v4 = &v20 - v3;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DF0C0, &qword_2526A09C8);
  v23 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v6 = &v20 - v5;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DF0C8, &qword_2526A09D0);
  v7 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v9 = &v20 - v8;
  v10 = sub_252691550();
  MEMORY[0x28223BE20](v10 - 8);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DF0D0, &qword_2526A09D8);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v20 - v13;
  sub_252691530();
  v27 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DF0D8, &unk_2526A09E0);
  sub_2524B4984();
  sub_252690900();
  sub_252691540();
  v26 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DF0E8, &unk_2526A09F0);
  sub_2524B4A3C();
  sub_252690900();
  sub_252692250();
  sub_252400FC8(&qword_27F4DF108, &qword_27F4DF0C0, &qword_2526A09C8, MEMORY[0x277CDD7A8]);
  v15 = v21;
  sub_252690B30();

  (*(v23 + 8))(v6, v15);
  v16 = *(v24 + 48);
  (*(v12 + 16))(v4, v14, v11);
  v17 = &v4[v16];
  v18 = v22;
  (*(v7 + 16))(v17, v9, v22);
  sub_252691350();
  (*(v7 + 8))(v9, v18);
  return (*(v12 + 8))(v14, v11);
}

uint64_t sub_2524AE160@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v22 = a2;
  v3 = type metadata accessor for SelectionPickerView(0);
  v21 = *(v3 - 8);
  v4 = *(v21 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = sub_252690740();
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DDE88, &qword_25269E578);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v20 - v10;
  v12 = a1[2];
  v24 = a1[1];
  v25 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DF110, &qword_2526A0A08);
  sub_2526924E0();
  v13 = v23;
  swift_getKeyPath();
  v24 = v13;
  sub_2524B5218(&qword_27F4DEF48, type metadata accessor for PickerButtonControlView.PickerViewState, &unk_2526A0628);
  sub_25268DB30();

  v14 = *(v13 + 105);

  if ((v14 & 1) != 0 || !*(a1[3] + 16))
  {
    sub_252690720();
    sub_2524B4F94(a1, &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for SelectionPickerView);
    v17 = (*(v21 + 80) + 16) & ~*(v21 + 80);
    v18 = swift_allocObject();
    sub_2524B4FFC(&v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v18 + v17, type metadata accessor for SelectionPickerView);
    MEMORY[0x2530A40D0](v7, sub_2524B4C74, v18);
    v16 = v22;
    (*(v9 + 32))(v22, v11, v8);
    v15 = 0;
  }

  else
  {
    v15 = 1;
    v16 = v22;
  }

  return (*(v9 + 56))(v16, v15, 1, v8);
}

uint64_t sub_2524AE478()
{
  v0 = sub_2526909E0();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = (&v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_27F4DABD0 != -1)
  {
    swift_once();
  }

  v4 = sub_2526905A0();
  __swift_project_value_buffer(v4, qword_27F4E4B18);
  v5 = sub_252690580();
  v6 = sub_252692F10();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_252309000, v5, v6, "Selection Picker Button tapped Cancel", v7, 2u);
    MEMORY[0x2530A5A40](v7, -1, -1);
  }

  type metadata accessor for SelectionPickerView(0);
  sub_25268A564(v3);
  sub_2526909D0();
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_2524AE618@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for SelectionPickerView(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = sub_252690740();
  MEMORY[0x28223BE20](v7 - 8);
  v9 = v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_252690730();
  sub_2524B4F94(a1, v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for SelectionPickerView);
  v10 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v11 = swift_allocObject();
  sub_2524B4FFC(v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v11 + v10, type metadata accessor for SelectionPickerView);
  MEMORY[0x2530A40D0](v9, sub_2524B4B20, v11);
  v12 = *(a1 + 16);
  v19 = *(a1 + 8);
  v20 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DF110, &qword_2526A0A08);
  sub_2526924E0();
  v13 = v18[1];
  swift_getKeyPath();
  v19 = v13;
  sub_2524B5218(&qword_27F4DEF48, type metadata accessor for PickerButtonControlView.PickerViewState, &unk_2526A0628);
  sub_25268DB30();

  LOBYTE(v6) = *(v13 + 106);

  KeyPath = swift_getKeyPath();
  v15 = swift_allocObject();
  *(v15 + 16) = (v6 & 1) == 0;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DF0E8, &unk_2526A09F0);
  v17 = (a2 + *(result + 36));
  *v17 = KeyPath;
  v17[1] = sub_25247D5D8;
  v17[2] = v15;
  return result;
}

uint64_t sub_2524AE8AC()
{
  v1 = v0;
  v2 = sub_2526909E0();
  v3 = *(v2 - 8);
  v36 = v2;
  v37 = v3;
  MEMORY[0x28223BE20](v2);
  v35 = (&v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v34 = type metadata accessor for SelectionPickerView(0);
  MEMORY[0x28223BE20](v34);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27F4DABD0 != -1)
  {
    swift_once();
  }

  v7 = sub_2526905A0();
  __swift_project_value_buffer(v7, qword_27F4E4B18);
  sub_2524B4F94(v0, v6, type metadata accessor for SelectionPickerView);
  v8 = sub_252690580();
  v9 = sub_252692F10();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v43[0] = v33;
    *v10 = 136315138;
    v11 = *(v6 + 2);
    v39 = *(v6 + 1);
    v40 = v11;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DF110, &qword_2526A0A08);
    sub_2526924E0();
    v12 = v38;
    swift_getKeyPath();
    v39 = v12;
    sub_2524B5218(&qword_27F4DEF48, type metadata accessor for PickerButtonControlView.PickerViewState, &unk_2526A0628);
    sub_25268DB30();

    swift_beginAccess();
    v13 = v12[2];
    v14 = v12[3];
    v15 = v1;
    v16 = v12[4];
    v17 = v12[5];
    sub_2523E165C(v13, v14, v16, v17);

    v39 = v13;
    v40 = v14;
    v41 = v16;
    v42 = v17;
    v1 = v15;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB4B8, &qword_252695A50);
    v18 = sub_252692C20();
    v20 = v19;
    sub_2524B5064(v6, type metadata accessor for SelectionPickerView);
    v21 = sub_2525BDA90(v18, v20, v43);

    *(v10 + 4) = v21;
    _os_log_impl(&dword_252309000, v8, v9, "Selection Picker Button tapped Done: %s", v10, 0xCu);
    v22 = v33;
    __swift_destroy_boxed_opaque_existential_1Tm(v33);
    MEMORY[0x2530A5A40](v22, -1, -1);
    MEMORY[0x2530A5A40](v10, -1, -1);
  }

  else
  {

    sub_2524B5064(v6, type metadata accessor for SelectionPickerView);
  }

  v23 = *(v1 + 16);
  v39 = *(v1 + 8);
  v40 = v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DF110, &qword_2526A0A08);
  sub_2526924E0();
  v24 = v43[0];
  swift_getKeyPath();
  v39 = v24;
  sub_2524B5218(&qword_27F4DEF48, type metadata accessor for PickerButtonControlView.PickerViewState, &unk_2526A0628);
  sub_25268DB30();

  swift_beginAccess();
  v25 = v24[3];
  if (v25)
  {
    v27 = v24[4];
    v26 = v24[5];
    v28 = v24[2];
    swift_getKeyPath();
    v39 = v24;

    sub_25268DB30();

    v29 = v24[11];
    v39 = v28;
    v40 = v25;
    v41 = v27;
    v42 = v26;

    v29(&v39);

    sub_2523E2E24(v28, v25, v27, v26);
  }

  else
  {
  }

  v30 = v35;
  sub_25268A564(v35);
  sub_2526909D0();
  return (*(v37 + 8))(v30, v36);
}

double sub_2524AEDC0(uint64_t a1)
{
  v2 = type metadata accessor for SelectionPickerView(0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27F4DABD0 != -1)
  {
    swift_once();
  }

  v5 = sub_2526905A0();
  __swift_project_value_buffer(v5, qword_27F4E4B18);
  sub_2524B4F94(a1, v4, type metadata accessor for SelectionPickerView);
  v6 = sub_252690580();
  v7 = sub_252692F10();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v31 = v25;
    *v8 = 136315138;
    v9 = *(v4 + 2);
    v26 = *(v4 + 1);
    v27 = v9;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DF110, &qword_2526A0A08);
    sub_2526924E0();
    v10 = v30;
    swift_getKeyPath();
    v26 = v10;
    sub_2524B5218(&qword_27F4DEF48, type metadata accessor for PickerButtonControlView.PickerViewState, &unk_2526A0628);
    sub_25268DB30();

    swift_beginAccess();
    v11 = v10[2];
    v12 = v10[3];
    v14 = v10[4];
    v13 = v10[5];
    sub_2523E165C(v11, v12, v14, v13);

    v26 = v11;
    v27 = v12;
    v28 = v14;
    v29 = v13;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB4B8, &qword_252695A50);
    v15 = sub_252692C20();
    v17 = v16;
    sub_2524B5064(v4, type metadata accessor for SelectionPickerView);
    v18 = sub_2525BDA90(v15, v17, &v31);

    *(v8 + 4) = v18;
    _os_log_impl(&dword_252309000, v6, v7, "Select/Deselect All Button tapped %s", v8, 0xCu);
    v19 = v25;
    __swift_destroy_boxed_opaque_existential_1Tm(v25);
    MEMORY[0x2530A5A40](v19, -1, -1);
    MEMORY[0x2530A5A40](v8, -1, -1);
  }

  else
  {

    sub_2524B5064(v4, type metadata accessor for SelectionPickerView);
  }

  v21 = *(a1 + 16);
  v26 = *(a1 + 8);
  v20 = v26;
  v27 = v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DF110, &qword_2526A0A08);
  sub_2526924E0();
  v22 = v31;
  swift_getKeyPath();
  v26 = v22;
  sub_2524B5218(&qword_27F4DEF48, type metadata accessor for PickerButtonControlView.PickerViewState, &unk_2526A0628);
  sub_25268DB30();

  v26 = v22;
  swift_getKeyPath();
  sub_25268DB50();

  *(v22 + 104) = (*(v22 + 104) & 1) == 0;
  v26 = v22;
  swift_getKeyPath();
  sub_25268DB40();

  v26 = v20;
  v27 = v21;
  sub_2526924E0();
  sub_2524A9740();

  return result;
}

uint64_t sub_2524AF1F0@<X0>(uint64_t a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DF110, &qword_2526A0A08);
  sub_2526924E0();
  swift_getKeyPath();
  sub_2524B5218(&qword_27F4DEF48, type metadata accessor for PickerButtonControlView.PickerViewState, &unk_2526A0628);
  sub_25268DB30();

  sub_252692C40();
  sub_252404480();
  v3 = sub_252691D50();
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DF158, &qword_2526A2B50) + 36));
  v11 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DF170, &qword_2526A0B40) + 28);
  v12 = sub_252691CF0();
  (*(*(v12 - 8) + 56))(&v10[v11], 1, 1, v12);
  result = swift_getKeyPath();
  *v10 = result;
  *a2 = v3;
  *(a2 + 8) = v5;
  *(a2 + 16) = v7 & 1;
  *(a2 + 24) = v9;
  return result;
}

uint64_t sub_2524AF3CC@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DF090, &qword_2526A09A8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v42 - v7;
  v9 = type metadata accessor for AccessoryControl.PickerButtonViewConfig.Option(0);
  v46 = *(v9 - 8);
  MEMORY[0x28223BE20](v9 - 8);
  v47 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB458, &qword_2526A0BD0);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v42 - v12;
  v14 = type metadata accessor for AccessoryControl.PickerButtonViewConfig.Option.Identifier(0);
  MEMORY[0x28223BE20](v14 - 8);
  v48 = v2;
  v49 = &v42 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a1[3];
  v55 = a1[2];
  v56 = v16;
  v57 = a1[4];
  v17 = a1[1];
  v53 = *a1;
  v54 = v17;
  v18 = *(v2 + 16);
  v50 = *(v2 + 8);
  v51 = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DF110, &qword_2526A0A08);
  sub_2526924E0();
  v19 = v52;
  swift_getKeyPath();
  v50 = v19;
  sub_2524B5218(&qword_27F4DEF48, type metadata accessor for PickerButtonControlView.PickerViewState, &unk_2526A0628);
  sub_25268DB30();

  swift_beginAccess();
  v21 = v19[2];
  v20 = v19[3];
  v23 = v19[4];
  v22 = v19[5];
  sub_2523E165C(v21, v20, v23, v22);

  if (!v20)
  {
    sub_2523E2E24(v21, 0, v23, v22);
    v33 = type metadata accessor for AccessoryControl.PickerButtonState.SelectionState(0);
    (*(*(v33 - 8) + 56))(v13, 1, 1, v33);
LABEL_10:
    sub_252372288(v13, &qword_27F4DB458, &qword_2526A0BD0);
    return (*(v6 + 56))(a2, 1, 1, v5);
  }

  v24 = *(v22 + 16);
  v44 = v8;
  if (v24)
  {
    v45 = v6;
    v25 = sub_25236743C(v53, BYTE8(v53));
    if (v26)
    {
      v27 = v25;
      v43 = a2;
      v28 = *(v22 + 56);
      v29 = type metadata accessor for AccessoryControl.PickerButtonState.SelectionState(0);
      v30 = *(v29 - 8);
      v42 = v5;
      v31 = v30;
      v32 = v28 + *(v30 + 72) * v27;
      a2 = v43;
      sub_2524B4F94(v32, v13, type metadata accessor for AccessoryControl.PickerButtonState.SelectionState);
      (*(v31 + 56))(v13, 0, 1, v29);
      v5 = v42;
    }

    else
    {
      v29 = type metadata accessor for AccessoryControl.PickerButtonState.SelectionState(0);
      (*(*(v29 - 8) + 56))(v13, 1, 1, v29);
    }

    v6 = v45;
  }

  else
  {
    v29 = type metadata accessor for AccessoryControl.PickerButtonState.SelectionState(0);
    (*(*(v29 - 8) + 56))(v13, 1, 1, v29);
  }

  sub_2523E2E24(v21, v20, v23, v22);
  type metadata accessor for AccessoryControl.PickerButtonState.SelectionState(0);
  if ((*(*(v29 - 8) + 48))(v13, 1, v29) == 1)
  {
    goto LABEL_10;
  }

  if (swift_getEnumCaseMultiPayload())
  {
    v34 = type metadata accessor for AccessoryControl.PickerButtonState.SelectionState;
  }

  else
  {
    v35 = v13;
    v13 = v49;
    sub_2524B4FFC(v35, v49, type metadata accessor for AccessoryControl.PickerButtonViewConfig.Option.Identifier);
    if ((BYTE8(v54) & 1) == 0)
    {
      v36 = v54;
      if (*(v54 + 16))
      {
        v37 = v47;
        v38 = sub_2524B4F94(v54 + ((*(v46 + 80) + 32) & ~*(v46 + 80)), v47, type metadata accessor for AccessoryControl.PickerButtonViewConfig.Option);
        MEMORY[0x28223BE20](v38);
        *(&v42 - 6) = v36;
        *(&v42 - 5) = v13;
        v39 = v48;
        *(&v42 - 4) = v37;
        *(&v42 - 3) = v39;
        *(&v42 - 2) = &v53;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DF1B8, &qword_2526A0BD8);
        sub_2524B5270();
        v40 = v44;
        sub_252691C10();
        (*(v6 + 32))(a2, v40, v5);
        (*(v6 + 56))(a2, 0, 1, v5);
        sub_2524B5064(v37, type metadata accessor for AccessoryControl.PickerButtonViewConfig.Option);
        return sub_2524B5064(v13, type metadata accessor for AccessoryControl.PickerButtonViewConfig.Option.Identifier);
      }
    }

    v34 = type metadata accessor for AccessoryControl.PickerButtonViewConfig.Option.Identifier;
  }

  sub_2524B5064(v13, v34);
  return (*(v6 + 56))(a2, 1, 1, v5);
}

uint64_t sub_2524AFA8C(uint64_t a1)
{
  v24 = type metadata accessor for AccessoryControl.PickerButtonViewConfig.Option(0);
  v2 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v4 = v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for SelectionPickerView.ToggleableItem(0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2524AD59C(a1);
  v10 = v9;
  v11 = *(v9 + 16);
  if (v11)
  {
    v25 = MEMORY[0x277D84F90];
    sub_252370564(0, v11, 0);
    v12 = v25;
    v13 = *(v2 + 80);
    v23[1] = v10;
    v14 = v10 + ((v13 + 32) & ~v13);
    v15 = *(v2 + 72);
    do
    {
      sub_2524B4F94(v14, v4, type metadata accessor for AccessoryControl.PickerButtonViewConfig.Option);
      sub_2524B4FFC(v4, v8, type metadata accessor for AccessoryControl.PickerButtonViewConfig.Option.Identifier);
      v16 = &v4[*(v24 + 20)];
      v18 = *v16;
      v17 = *(v16 + 1);
      v19 = &v8[*(v5 + 20)];
      *v19 = v18;
      *(v19 + 1) = v17;
      v25 = v12;
      v21 = *(v12 + 16);
      v20 = *(v12 + 24);
      if (v21 >= v20 >> 1)
      {
        sub_252370564((v20 > 1), v21 + 1, 1);
        v12 = v25;
      }

      *(v12 + 16) = v21 + 1;
      sub_2524B4FFC(v8, v12 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v21, type metadata accessor for SelectionPickerView.ToggleableItem);
      v14 += v15;
      --v11;
    }

    while (v11);
  }

  else
  {

    return MEMORY[0x277D84F90];
  }

  return v12;
}

uint64_t sub_2524AFD0C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v57 = a4;
  v60 = a6;
  v10 = type metadata accessor for SelectionPickerView(0);
  v58 = *(v10 - 8);
  v56 = *(v58 + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v55 = &v51 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = type metadata accessor for AccessoryControl.PickerButtonViewConfig.Option(0);
  v54 = *(v59 - 8);
  v12 = *(v54 + 64);
  MEMORY[0x28223BE20](v59);
  v52 = &v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for AccessoryControl.PickerButtonViewConfig.Option.Identifier(0);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = &v51 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DF1D8, &qword_2526A0BF0);
  MEMORY[0x28223BE20](v17 - 8);
  v53 = &v51 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v21 = &v51 - v20;
  sub_2524B4F94(a2, v16, type metadata accessor for AccessoryControl.PickerButtonViewConfig.Option.Identifier);
  sub_2524B4F94(a3, &v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for AccessoryControl.PickerButtonViewConfig.Option);
  sub_252692E00();

  v22 = sub_252692DF0();
  v23 = (*(v14 + 80) + 40) & ~*(v14 + 80);
  v24 = (v15 + *(v54 + 80) + v23) & ~*(v54 + 80);
  v25 = swift_allocObject();
  v26 = MEMORY[0x277D85700];
  v25[2] = v22;
  v25[3] = v26;
  v25[4] = a1;
  v27 = a1;
  v28 = v16;
  v29 = v21;
  sub_2524B4FFC(v28, v25 + v23, type metadata accessor for AccessoryControl.PickerButtonViewConfig.Option.Identifier);
  v30 = v25 + v24;
  v31 = v53;
  sub_2524B4FFC(v52, v30, type metadata accessor for AccessoryControl.PickerButtonViewConfig.Option);
  v32 = v55;
  sub_2524B4F94(v57, v55, type metadata accessor for SelectionPickerView);
  sub_2523EAF48(a5, &v62);
  v33 = sub_252692DF0();
  v34 = (*(v58 + 80) + 32) & ~*(v58 + 80);
  v35 = (v56 + v34 + 7) & 0xFFFFFFFFFFFFFFF8;
  v36 = swift_allocObject();
  *(v36 + 16) = v33;
  *(v36 + 24) = MEMORY[0x277D85700];
  sub_2524B4FFC(v32, v36 + v34, type metadata accessor for SelectionPickerView);
  v37 = (v36 + v35);
  v38 = *(a5 + 48);
  v37[2] = *(a5 + 32);
  v37[3] = v38;
  v37[4] = *(a5 + 64);
  v39 = *(a5 + 16);
  *v37 = *a5;
  v37[1] = v39;
  sub_2526926E0();
  v61 = v27;
  sub_25237153C(v29, v31, &qword_27F4DF1D8, &qword_2526A0BF0);
  v40 = *(a5 + 40);
  if (v40)
  {
    v62 = *(a5 + 32);
    v63 = v40;
    sub_252404480();

    v41 = sub_252691D50();
    v45 = v44 & 1;
  }

  else
  {
    v41 = 0;
    v42 = 0;
    v45 = 0;
    v43 = 0;
  }

  v62 = v41;
  v63 = v42;
  v64 = v45;
  v65 = v43;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DF0B0, &unk_2526A7C90);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DF1E0, &unk_2526A0BF8);
  sub_2524B48F8();
  sub_2524B5218(&qword_27F4DF1E8, type metadata accessor for AccessoryControl.PickerButtonViewConfig.Option, &protocol conformance descriptor for AccessoryControl.PickerButtonViewConfig.Option);
  sub_2524B54D8();
  v46 = v60;
  sub_2526925D0();
  v47 = sub_252692380();
  sub_252372288(v29, &qword_27F4DF1D8, &qword_2526A0BF0);
  KeyPath = swift_getKeyPath();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DF1B8, &qword_2526A0BD8);
  v50 = (v46 + *(result + 36));
  *v50 = KeyPath;
  v50[1] = v47;
  return result;
}

uint64_t sub_2524B02B4@<X0>(uint64_t a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t a4@<X8>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DABF0, &qword_2526943F0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v14[-v9];
  v15 = a2;
  sub_2525F88B8(sub_2524B5680, a1, &v14[-v9]);
  v11 = type metadata accessor for AccessoryControl.PickerButtonViewConfig.Option(0);
  v12 = *(*(v11 - 8) + 48);
  if (v12(v10, 1, v11) != 1)
  {
    return sub_2524B4FFC(v10, a4, type metadata accessor for AccessoryControl.PickerButtonViewConfig.Option);
  }

  sub_2524B4F94(a3, a4, type metadata accessor for AccessoryControl.PickerButtonViewConfig.Option);
  result = (v12)(v10, 1, v11);
  if (result != 1)
  {
    return sub_252372288(v10, &qword_27F4DABF0, &qword_2526943F0);
  }

  return result;
}

double sub_2524B0434(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB458, &qword_2526A0BD0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v21 - v9;
  v11 = *(a4 + 8);
  v12 = *(a4 + 16);
  v22 = v11;
  v23 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DF110, &qword_2526A0A08);
  sub_2526924E0();
  v13 = sub_2524A7CD4(&v22);
  if (*(v14 + 8))
  {
    v15 = *a5;
    v16 = *(a5 + 8);
    sub_2524B4F94(a1, v10, type metadata accessor for AccessoryControl.PickerButtonViewConfig.Option.Identifier);
    v17 = type metadata accessor for AccessoryControl.PickerButtonState.SelectionState(0);
    swift_storeEnumTagMultiPayload();
    (*(*(v17 - 8) + 56))(v10, 0, 1, v17);
    sub_2524A6BB8(v10, v15, v16);
  }

  (v13)(&v22, 0);

  v22 = v11;
  v23 = v12;
  sub_2526924E0();
  v18 = v24;
  if (*(v24 + 104) == 1)
  {
    *(v24 + 104) = 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    *(&v21 - 2) = v18;
    *(&v21 - 8) = 1;
    v22 = v18;
    sub_2524B5218(&qword_27F4DEF48, type metadata accessor for PickerButtonControlView.PickerViewState, &unk_2526A0628);
    sub_25268DB20();
  }

  v22 = v11;
  v23 = v12;
  sub_2526924E0();
  sub_2524A9740();

  return result;
}

uint64_t sub_2524B0710(uint64_t a1)
{
  v8 = a1;
  KeyPath = swift_getKeyPath();

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DF200, &qword_2526A0C50);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DF208, &qword_2526A0C58);
  v4 = sub_252400FC8(&qword_27F4DF210, &qword_27F4DF200, &qword_2526A0C50, MEMORY[0x277D83980]);
  v5 = sub_2524B5218(&qword_27F4DF1E8, type metadata accessor for AccessoryControl.PickerButtonViewConfig.Option, &protocol conformance descriptor for AccessoryControl.PickerButtonViewConfig.Option);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4DABF0, &qword_2526943F0);
  sub_2524B55AC();
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  return sub_252692790(&v8, KeyPath, sub_2524B089C, 0, v2, v3, v4, v5, OpaqueTypeConformance2);
}

uint64_t sub_2524B089C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DABF0, &qword_2526943F0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v19 - v5;
  v7 = type metadata accessor for AccessoryControl.PickerButtonViewConfig.Option(0);
  v8 = (a1 + *(v7 + 20));
  v9 = v8[1];
  v19[0] = *v8;
  v19[1] = v9;
  sub_252404480();

  v10 = sub_252691D50();
  v12 = v11;
  v14 = v13;
  v16 = v15;
  sub_2524B4F94(a1, v6, type metadata accessor for AccessoryControl.PickerButtonViewConfig.Option);
  (*(*(v7 - 8) + 56))(v6, 0, 1, v7);
  v17 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DABE8, &unk_2526A0C60) + 36);
  sub_2523714D4(v6, v17, &qword_27F4DABF0, &qword_2526943F0);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DABF8, &qword_2526943F8);
  *(v17 + *(result + 36)) = 1;
  *a2 = v10;
  *(a2 + 8) = v12;
  *(a2 + 16) = v14 & 1;
  *(a2 + 24) = v16;
  return result;
}

uint64_t sub_2524B0A44@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  v26[0] = a5;
  v9 = type metadata accessor for SelectionPickerView(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v27 = a1;
  KeyPath = swift_getKeyPath();
  sub_2524B4F94(a2, v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for SelectionPickerView);
  v13 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v14 = swift_allocObject();
  sub_2524B4FFC(v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v14 + v13, type metadata accessor for SelectionPickerView);
  v15 = v14 + ((v11 + v13 + 7) & 0xFFFFFFFFFFFFFFF8);
  *v15 = a3;
  *(v15 + 8) = a4;

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DF218, &qword_2526A0C88);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DF220, &qword_2526A0C90);
  v18 = sub_252400FC8(&qword_27F4DF228, &qword_27F4DF218, &qword_2526A0C88, MEMORY[0x277D83980]);
  v19 = sub_2524B5218(&qword_27F4DF230, type metadata accessor for SelectionPickerView.ToggleableItem, &unk_2526A0D88);
  v20 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4DF1A0, &qword_2526A0BC8);
  v21 = sub_252690D20();
  v22 = sub_252400FC8(&qword_27F4DF1A8, &qword_27F4DF1A0, &qword_2526A0BC8, MEMORY[0x277CDF028]);
  v23 = sub_2524B5218(&qword_27F4DF1B0, MEMORY[0x277CDDB18], MEMORY[0x277CDDB08]);
  v26[1] = v20;
  v26[2] = v21;
  v26[3] = v22;
  v26[4] = v23;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  return sub_252692790(&v27, KeyPath, sub_2524B56B0, v14, v16, v17, v18, v19, OpaqueTypeConformance2);
}

uint64_t sub_2524B0D34@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, int a3@<W3>, uint64_t a4@<X8>)
{
  v4 = a3;
  v26 = a3;
  v5 = a2;
  v25 = a2;
  v31 = a4;
  v30 = sub_252690D20();
  v32 = *(v30 - 8);
  MEMORY[0x28223BE20](v30);
  v28 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for SelectionPickerView.ToggleableItem(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DF1A0, &qword_2526A0BC8);
  v29 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v12 = &v25 - v11;
  v37 = v5;
  v38 = v4;
  v13 = sub_2524B1114(a1, &v37);
  v15 = v14;
  LOBYTE(v5) = v16;
  sub_2524B4F94(a1, &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for SelectionPickerView.ToggleableItem);
  v17 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v18 = swift_allocObject();
  sub_2524B4FFC(&v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v18 + v17, type metadata accessor for SelectionPickerView.ToggleableItem);
  v19 = v18 + ((v17 + v10 + 7) & 0xFFFFFFFFFFFFFFF8);
  *v19 = v25;
  *(v19 + 8) = v26;
  v20 = v18 + ((v17 + v10 + 23) & 0xFFFFFFFFFFFFFFF8);
  *v20 = v13;
  *(v20 + 8) = v15;
  *(v20 + 16) = v5 & 1;
  v33 = a1;
  v34 = v13;
  v35 = v15;
  v36 = v5 & 1;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DF238, &qword_2526A0C98);
  sub_2524B583C();
  sub_252692550();
  v21 = v28;
  sub_252690D10();
  sub_252400FC8(&qword_27F4DF1A8, &qword_27F4DF1A0, &qword_2526A0BC8, MEMORY[0x277CDF028]);
  sub_2524B5218(&qword_27F4DF1B0, MEMORY[0x277CDDB18], MEMORY[0x277CDDB08]);
  v22 = v30;
  v23 = v27;
  sub_252691DC0();

  (*(v32 + 8))(v21, v22);
  return (*(v29 + 8))(v12, v23);
}

void *sub_2524B1114(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v52 = a1;
  v5 = type metadata accessor for SelectionPickerView(0);
  v53 = *(v5 - 8);
  v6 = *(v53 + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for SelectionPickerView.ToggleableItem(0);
  v50 = *(v8 - 8);
  v9 = *(v50 + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v51 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB458, &qword_2526A0BD0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = (&v45 - v11);
  v55 = *a2;
  v54 = *(a2 + 8);
  v13 = *(v2 + 16);
  v58 = *(v2 + 8);
  v59 = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DF110, &qword_2526A0A08);
  sub_2526924E0();
  v14 = v57;
  swift_getKeyPath();
  v58 = v14;
  sub_2524B5218(&qword_27F4DEF48, type metadata accessor for PickerButtonControlView.PickerViewState, &unk_2526A0628);
  sub_25268DB30();

  swift_beginAccess();
  v15 = v14[2];
  v16 = v14[3];
  v18 = v14[4];
  v17 = v14[5];
  sub_2523E165C(v15, v16, v18, v17);

  if (!v16)
  {
    sub_2523E2E24(v15, 0, v18, v17);
    v26 = type metadata accessor for AccessoryControl.PickerButtonState.SelectionState(0);
    (*(*(v26 - 8) + 56))(v12, 1, 1, v26);
LABEL_10:
    sub_252372288(v12, &qword_27F4DB458, &qword_2526A0BD0);
    goto LABEL_11;
  }

  v19 = *(v17 + 16);
  v48 = v3;
  if (v19)
  {
    v49 = v6;
    v20 = sub_25236743C(v55, v54);
    if (v21)
    {
      v22 = v20;
      v46 = *(v17 + 56);
      v23 = type metadata accessor for AccessoryControl.PickerButtonState.SelectionState(0);
      v24 = *(v23 - 8);
      v47 = v7;
      v25 = v24;
      sub_2524B4F94(v46 + *(v24 + 72) * v22, v12, type metadata accessor for AccessoryControl.PickerButtonState.SelectionState);
      (*(v25 + 56))(v12, 0, 1, v23);
      v7 = v47;
    }

    else
    {
      v23 = type metadata accessor for AccessoryControl.PickerButtonState.SelectionState(0);
      (*(*(v23 - 8) + 56))(v12, 1, 1, v23);
    }

    v6 = v49;
  }

  else
  {
    v23 = type metadata accessor for AccessoryControl.PickerButtonState.SelectionState(0);
    (*(*(v23 - 8) + 56))(v12, 1, 1, v23);
  }

  sub_2523E2E24(v15, v16, v18, v17);
  type metadata accessor for AccessoryControl.PickerButtonState.SelectionState(0);
  if ((*(*(v23 - 8) + 48))(v12, 1, v23) == 1)
  {
    goto LABEL_10;
  }

  if (swift_getEnumCaseMultiPayload() == 2)
  {
    v28 = *v12;
    v47 = v12[3];

    v30 = v51;
    v29 = v52;
    sub_2524B4F94(v52, v51, type metadata accessor for SelectionPickerView.ToggleableItem);
    sub_252692E00();
    v46 = v28;

    v31 = sub_252692DF0();
    v49 = v6;
    v32 = v31;
    v33 = *(v50 + 80);
    v34 = (v33 + 40) & ~v33;
    v50 = v33 | 7;
    v35 = swift_allocObject();
    v36 = MEMORY[0x277D85700];
    v35[2] = v32;
    v35[3] = v36;
    v35[4] = v28;
    sub_2524B4FFC(v30, v35 + v34, type metadata accessor for SelectionPickerView.ToggleableItem);
    sub_2524B4F94(v29, v30, type metadata accessor for SelectionPickerView.ToggleableItem);
    v37 = v7;
    sub_2524B4F94(v48, v7, type metadata accessor for SelectionPickerView);
    v38 = sub_252692DF0();
    v39 = (v34 + v9 + *(v53 + 80)) & ~*(v53 + 80);
    v40 = (v39 + v49 + 7) & 0xFFFFFFFFFFFFFFF8;
    v41 = (v39 + v49 + 23) & 0xFFFFFFFFFFFFFFF8;
    v42 = swift_allocObject();
    v42[2] = v38;
    v43 = v46;
    v42[3] = MEMORY[0x277D85700];
    v42[4] = v43;
    sub_2524B4FFC(v30, v42 + v34, type metadata accessor for SelectionPickerView.ToggleableItem);
    sub_2524B4FFC(v37, v42 + v39, type metadata accessor for SelectionPickerView);
    v44 = v42 + v40;
    *v44 = v55;
    v44[8] = v54;
    *(v42 + v41) = v47;
    sub_2526926E0();
    return v57;
  }

  sub_2524B5064(v12, type metadata accessor for AccessoryControl.PickerButtonState.SelectionState);
LABEL_11:
  v56 = 0;
  sub_2526926F0();
  return v57;
}

uint64_t sub_2524B17D4(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, int a6)
{
  LODWORD(v6) = a6;
  v12 = type metadata accessor for SelectionPickerView.ToggleableItem(0);
  MEMORY[0x28223BE20](v12);
  v14 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v34 - v16;
  if (qword_27F4DABD0 != -1)
  {
    swift_once();
  }

  v18 = sub_2526905A0();
  __swift_project_value_buffer(v18, qword_27F4E4B18);
  sub_2524B4F94(a1, v17, type metadata accessor for SelectionPickerView.ToggleableItem);
  v19 = sub_252690580();
  v20 = sub_252692F10();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v34 = a2;
    v22 = v21;
    v23 = swift_slowAlloc();
    v35 = v6;
    v6 = v23;
    v37[0] = v23;
    *v22 = 136315650;
    *(v22 + 4) = sub_2525BDA90(0xD000000000000030, 0x80000002526AFBF0, v37);
    *(v22 + 12) = 2080;
    sub_2524B4F94(v17, v14, type metadata accessor for SelectionPickerView.ToggleableItem);
    v24 = sub_252692C20();
    v26 = v25;
    sub_2524B5064(v17, type metadata accessor for SelectionPickerView.ToggleableItem);
    v27 = sub_2525BDA90(v24, v26, v37);

    *(v22 + 14) = v27;
    *(v22 + 22) = 2080;
    v39 = v34;
    LOBYTE(v40) = a3;
    v28 = sub_252692C20();
    v30 = sub_2525BDA90(v28, v29, v37);

    *(v22 + 24) = v30;
    _os_log_impl(&dword_252309000, v19, v20, "%s Option tapped %s %s", v22, 0x20u);
    swift_arrayDestroy();
    v31 = v6;
    LOBYTE(v6) = v35;
    MEMORY[0x2530A5A40](v31, -1, -1);
    MEMORY[0x2530A5A40](v22, -1, -1);
  }

  else
  {

    sub_2524B5064(v17, type metadata accessor for SelectionPickerView.ToggleableItem);
  }

  v39 = a4;
  v40 = a5;
  v32 = v6 & 1;
  v41 = v32;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DD300, &unk_2526A0CD0);
  MEMORY[0x2530A4210](&v42);
  v37[0] = a4;
  v37[1] = a5;
  v38 = v32;
  v36 = (v42 & 1) == 0;
  return sub_2526926B0();
}

uint64_t sub_2524B1B1C@<X0>(uint64_t a5@<X8>)
{
  type metadata accessor for SelectionPickerView.ToggleableItemView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DF258, &qword_2526A0CB0);
  sub_2524B5218(&qword_27F4DF260, type metadata accessor for SelectionPickerView.ToggleableItemView, &unk_2526A0D38);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4DF268, &qword_2526A0CB8);
  sub_252400FC8(&qword_27F4DF270, &qword_27F4DF268, &qword_2526A0CB8, MEMORY[0x277CDF068]);
  sub_2524B5980();
  swift_getOpaqueTypeConformance2();
  sub_252692450();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DF238, &qword_2526A0C98);
  *(a5 + *(result + 36)) = 0;
  return result;
}

uint64_t sub_2524B1CA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DF268, &qword_2526A0CB8);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v13 - v5;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DF280, &unk_2526A0CC0);
  sub_2524B59D4();
  sub_252692600();
  __asm { FMOV            V0.2D, #24.0 }

  v13 = _Q0;
  sub_252400FC8(&qword_27F4DF270, &qword_27F4DF268, &qword_2526A0CB8, MEMORY[0x277CDF068]);
  sub_2524B5980();
  sub_252691E10();
  return (*(v4 + 8))(v6, v3);
}

double sub_2524B1E58@<D0>(uint64_t a1@<X8>)
{
  v2 = sub_2526923E0();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v9[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_2526923D0();
  (*(v3 + 104))(v5, *MEMORY[0x277CE0FE0], v2);
  v6 = sub_252692420();

  (*(v3 + 8))(v5, v2);
  sub_252692920();
  sub_2526909C0();
  *&v9[40] = v12;
  *&v9[24] = v11;
  *&v9[8] = v10;
  v7 = *&v9[18];
  *(a1 + 18) = *&v9[2];
  *a1 = v6;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  *(a1 + 34) = v7;
  result = *&v9[34];
  *(a1 + 50) = *&v9[34];
  *(a1 + 64) = *&v9[48];
  return result;
}

uint64_t sub_2524B1FF4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DEFE0, &qword_2526A0948);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4DEFE8, &qword_2526A0950);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4DEFF0, &qword_2526A0958);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4DEFF8, &qword_2526A0960);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4DF000, &qword_2526A0968);
  sub_252400FC8(&qword_27F4DF008, &qword_27F4DF000, &qword_2526A0968, MEMORY[0x277CDE580]);
  sub_252404480();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  sub_252400FC8(&qword_27F4DF010, &qword_27F4DEFF0, &qword_2526A0958, MEMORY[0x277CDDF68]);
  swift_getOpaqueTypeConformance2();
  return sub_252690C40();
}

uint64_t sub_2524B21C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((_s22HomeAccessoryControlUI0bC0V22PickerButtonViewConfigV6OptionV10IdentifierO2eeoiySbAI_AItFZ_0(a1, a2) & 1) == 0)
  {
    return 0;
  }

  v6 = *(a3 + 20);
  v7 = *(a1 + v6);
  v8 = *(a1 + v6 + 8);
  v9 = (a2 + v6);
  if (v7 == *v9 && v8 == v9[1])
  {
    return 1;
  }

  return sub_2526933B0();
}

uint64_t sub_2524B2250(uint64_t a1)
{
  sub_252693460();
  AccessoryControl.PickerButtonViewConfig.Option.Identifier.hash(into:)(v2);
  sub_252692C80();
  return sub_2526934C0();
}

uint64_t sub_2524B22A8(uint64_t a1, uint64_t a2)
{
  AccessoryControl.PickerButtonViewConfig.Option.Identifier.hash(into:)(a1);

  return sub_252692C80();
}

uint64_t sub_2524B22F8(uint64_t a1, uint64_t a2)
{
  sub_252693460();
  AccessoryControl.PickerButtonViewConfig.Option.Identifier.hash(into:)(v3);
  sub_252692C80();
  return sub_2526934C0();
}

double sub_2524B234C(unsigned __int8 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unsigned int a8, uint64_t a9)
{
  v51 = a7;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB458, &qword_2526A0BD0);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v48[-v15];
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB488, &qword_2526A06A0);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = &v48[-v18];
  v20 = type metadata accessor for AccessoryControl.PickerButtonViewConfig.Option.Identifier(0);
  MEMORY[0x28223BE20](v20 - 8);
  v22 = &v48[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v23);
  v25 = &v48[-v24];
  v26 = *a1;
  v55 = a4;
  if (v26 == 1)
  {
    sub_2524B4F94(a5, v22, type metadata accessor for AccessoryControl.PickerButtonViewConfig.Option.Identifier);

    sub_252412450(v25, v22);
    sub_2524B5064(v25, type metadata accessor for AccessoryControl.PickerButtonViewConfig.Option.Identifier);
  }

  else
  {

    sub_2524B38C4(a5, v19);
    sub_252372288(v19, &qword_27F4DB488, &qword_2526A06A0);
  }

  v28 = *(a6 + 8);
  v27 = *(a6 + 16);
  v52 = v28;
  v53 = v27;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DF110, &qword_2526A0A08);
  sub_2526924E0();
  v30 = sub_2524A8E50();

  v32 = 1;
  if (v30)
  {
    v31 = *(v30 + 16);

    if (v31 == *(v55 + 16))
    {
      v32 = 0;
    }
  }

  v52 = v28;
  v53 = v27;
  sub_2526924E0();
  v33 = sub_2524A7CD4(&v52);
  if (*(v34 + 8))
  {
    v49 = a8;
    v50 = v29;
    *v16 = v55;
    v16[8] = v32;
    *(v16 + 2) = 0;
    *(v16 + 3) = a9;
    v35 = v28;
    v36 = type metadata accessor for AccessoryControl.PickerButtonState.SelectionState(0);
    swift_storeEnumTagMultiPayload();
    v37 = *(*(v36 - 8) + 56);
    v38 = v36;
    v28 = v35;
    v37(v16, 0, 1, v38);

    sub_2524A6BB8(v16, v51, v49);
  }

  (v33)(&v52, 0);

  v52 = v28;
  v53 = v27;
  sub_2526924E0();
  v39 = v54;
  v40 = !v32;
  if (!v32 == *(v54 + 104))
  {
    *(v54 + 104) = v40;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    *&v48[-16] = v39;
    v48[-8] = v40;
    v52 = v39;
    sub_2524B5218(&qword_27F4DEF48, type metadata accessor for PickerButtonControlView.PickerViewState, &unk_2526A0628);
    sub_25268DB20();
  }

  v52 = v28;
  v53 = v27;
  sub_2526924E0();
  v42 = v54;
  if (*(v54 + 105) == 1)
  {
    *(v54 + 105) = 1;
  }

  else
  {
    v43 = swift_getKeyPath();
    MEMORY[0x28223BE20](v43);
    *&v48[-16] = v42;
    v48[-8] = 1;
    v52 = v42;
    sub_2524B5218(&qword_27F4DEF48, type metadata accessor for PickerButtonControlView.PickerViewState, &unk_2526A0628);
    sub_25268DB20();
  }

  v52 = v28;
  v53 = v27;
  sub_2526924E0();
  v44 = v54;
  v45 = *(v55 + 16);

  if (((v45 != 0) ^ *(v44 + 106)))
  {
    v46 = swift_getKeyPath();
    MEMORY[0x28223BE20](v46);
    *&v48[-16] = v44;
    v48[-8] = v45 != 0;
    v52 = v44;
    sub_2524B5218(&qword_27F4DEF48, type metadata accessor for PickerButtonControlView.PickerViewState, &unk_2526A0628);
    sub_25268DB20();
  }

  else
  {
    *(v44 + 106) = v45 != 0;
  }

  return result;
}

uint64_t sub_2524B29E0@<X0>(uint64_t a2@<X8>)
{
  type metadata accessor for SelectionPickerView.ToggleableItem(0);
  sub_252404480();

  result = sub_252691D50();
  *a2 = result;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5 & 1;
  *(a2 + 24) = v6;
  return result;
}

uint64_t sub_2524B2A60@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DF2C8, &qword_2526A0DC8);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8[-v5];
  *a1 = sub_2526911D0();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DF2D0, &unk_2526A0DD0);
  v9 = v1;
  sub_252692450();
  sub_252400FC8(&qword_27F4DF2D8, &qword_27F4DF2C8, &qword_2526A0DC8, MEMORY[0x277CDEFF0]);
  sub_2524B5DC4();
  sub_252691DB0();
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_2524B2C14@<X0>(char *a1@<X8>)
{
  v29 = sub_252691690();
  v26 = *(v29 - 8);
  v2 = v26;
  MEMORY[0x28223BE20](v29);
  v28 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v6 = &v25 - v5;
  v25 = &v25 - v5;
  v7 = sub_2526916B0();
  v27 = *(v7 - 8);
  v8 = v27;
  MEMORY[0x28223BE20](v7);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v25 - v12;
  sub_2526916C0();
  sub_2526916A0();
  v14 = *(v8 + 16);
  v14(v10, v13, v7);
  v30 = 1;
  v15 = *(v2 + 16);
  v16 = v28;
  v17 = v6;
  v18 = v29;
  v15(v28, v17, v29);
  v14(a1, v10, v7);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DF300, &qword_2526A0E40);
  v20 = &a1[*(v19 + 48)];
  v21 = v30;
  *v20 = 0;
  v20[8] = v21;
  v15(&a1[*(v19 + 64)], v16, v18);
  v22 = *(v26 + 8);
  v22(v25, v18);
  v23 = *(v27 + 8);
  v23(v13, v7);
  v22(v16, v18);
  return (v23)(v10, v7);
}

uint64_t sub_2524B2EB8@<X0>(uint64_t a2@<X8>)
{
  *a2 = sub_2526911D0();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DF2F8, &qword_2526A0E38);
  return sub_2524B2C14((a2 + *(v3 + 44)));
}

void sub_2524B2F10(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_2526242E4(v2);
  }

  v3 = *(v2 + 2);
  v29[0] = (v2 + 32);
  v29[1] = v3;
  v4 = sub_252693360();
  if (v4 >= v3)
  {
    if (v3 >= 2)
    {
      v8 = v2 + 112;
      v9 = -1;
      for (i = 1; i != v3; ++i)
      {
        v11 = v9;
        v12 = v8;
        do
        {
          if (v12[8] >= *(v12 - 72))
          {
            break;
          }

          v13 = v12 - 80;
          v24 = *v12;
          v14 = *(v12 + 1);
          v15 = *(v12 + 2);
          v16 = *(v12 + 4);
          v27 = *(v12 + 3);
          v28 = v16;
          v25 = v14;
          v26 = v15;
          v17 = *(v12 - 1);
          *(v12 + 3) = *(v12 - 2);
          *(v12 + 4) = v17;
          v18 = *(v12 - 3);
          *(v12 + 1) = *(v12 - 4);
          *(v12 + 2) = v18;
          *v12 = *(v12 - 5);
          *v13 = v24;
          v19 = v28;
          v20 = v25;
          v21 = v26;
          *(v13 + 3) = v27;
          *(v13 + 4) = v19;
          *(v13 + 1) = v20;
          *(v13 + 2) = v21;
          v12 -= 80;
        }

        while (!__CFADD__(v11++, 1));
        v8 += 80;
        --v9;
      }
    }
  }

  else
  {
    v5 = v4;
    v6 = v3 >> 1;
    if (v3 >= 2)
    {
      v7 = sub_252692DC0();
      *(v7 + 16) = v6;
    }

    else
    {
      v7 = MEMORY[0x277D84F90];
    }

    *&v24 = v7 + 32;
    *(&v24 + 1) = v6;
    sub_2524B3090(&v24, v23, v29, v5);
    *(v7 + 16) = 0;
  }

  *a1 = v2;
}

void sub_2524B3090(unsigned __int8 *a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = a3[1];
  if (v5 < 1)
  {
    v7 = MEMORY[0x277D84F90];
LABEL_88:
    a1 = *a1;
    if (!a1)
    {
      goto LABEL_126;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_120:
      v7 = sub_252624154(v7);
    }

    v78 = v7 + 16;
    v79 = *(v7 + 2);
    if (v79 >= 2)
    {
      while (*a3)
      {
        v80 = &v7[16 * v79];
        v81 = *v80;
        v82 = &v78[2 * v79];
        v83 = v82[1];
        sub_2524B368C((*a3 + 80 * *v80), (*a3 + 80 * *v82), (*a3 + 80 * v83), a1);
        if (v4)
        {
          goto LABEL_97;
        }

        if (v83 < v81)
        {
          goto LABEL_112;
        }

        if (v79 - 2 >= *v78)
        {
          goto LABEL_113;
        }

        *v80 = v81;
        *(v80 + 1) = v83;
        v84 = *v78 - v79;
        if (*v78 < v79)
        {
          goto LABEL_114;
        }

        v79 = *v78 - 1;
        memmove(v82, v82 + 2, 16 * v84);
        *v78 = v79;
        if (v79 <= 1)
        {
          goto LABEL_97;
        }
      }

      goto LABEL_124;
    }

LABEL_97:

    return;
  }

  v6 = 0;
  v7 = MEMORY[0x277D84F90];
  while (1)
  {
    v8 = v6++;
    if (v6 < v5)
    {
      v9 = *(*a3 + 80 * v6 + 8);
      v10 = 80 * v8;
      v11 = *a3 + 80 * v8;
      v12 = *(v11 + 8);
      v13 = v8 + 2;
      v14 = (v11 + 168);
      v15 = v9;
      while (v5 != v13)
      {
        v16 = *v14;
        v14 += 80;
        v17 = (v9 < v12) ^ (v16 >= v15);
        ++v13;
        v15 = v16;
        if ((v17 & 1) == 0)
        {
          v6 = v13 - 1;
          if (v9 >= v12)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v6 = v5;
      if (v9 >= v12)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v6 < v8)
      {
        goto LABEL_117;
      }

      if (v8 < v6)
      {
        v18 = 80 * v6 - 80;
        v19 = v6;
        v85 = v8;
        do
        {
          if (v8 != --v19)
          {
            v21 = *a3;
            if (!*a3)
            {
              goto LABEL_123;
            }

            v20 = (v21 + v18);
            v93 = *(v21 + v10 + 32);
            v95 = *(v21 + v10 + 48);
            v97 = *(v21 + v10 + 64);
            v89 = *(v21 + v10);
            v91 = *(v21 + v10 + 16);
            memmove((v21 + v10), (v21 + v18), 0x50uLL);
            v20[2] = v93;
            v20[3] = v95;
            v20[4] = v97;
            *v20 = v89;
            v20[1] = v91;
          }

          ++v8;
          v18 -= 80;
          v10 += 80;
        }

        while (v8 < v19);
        v5 = a3[1];
        v8 = v85;
      }
    }

LABEL_20:
    if (v6 < v5)
    {
      if (__OFSUB__(v6, v8))
      {
        goto LABEL_116;
      }

      if (v6 - v8 < a4)
      {
        if (__OFADD__(v8, a4))
        {
          goto LABEL_118;
        }

        if (v8 + a4 < v5)
        {
          v5 = v8 + a4;
        }

        if (v5 < v8)
        {
LABEL_119:
          __break(1u);
          goto LABEL_120;
        }

        if (v6 != v5)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v6 < v8)
    {
      goto LABEL_115;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v7 = sub_252368690(0, *(v7 + 2) + 1, 1, v7);
    }

    v32 = *(v7 + 2);
    v31 = *(v7 + 3);
    v33 = v32 + 1;
    if (v32 >= v31 >> 1)
    {
      v7 = sub_252368690((v31 > 1), v32 + 1, 1, v7);
    }

    *(v7 + 2) = v33;
    v34 = &v7[16 * v32];
    *(v34 + 4) = v8;
    *(v34 + 5) = v6;
    v35 = *a1;
    if (!*a1)
    {
      goto LABEL_125;
    }

    if (v32)
    {
      while (1)
      {
        v36 = v33 - 1;
        if (v33 >= 4)
        {
          break;
        }

        if (v33 == 3)
        {
          v37 = *(v7 + 4);
          v38 = *(v7 + 5);
          v47 = __OFSUB__(v38, v37);
          v39 = v38 - v37;
          v40 = v47;
LABEL_57:
          if (v40)
          {
            goto LABEL_103;
          }

          v53 = &v7[16 * v33];
          v55 = *v53;
          v54 = *(v53 + 1);
          v56 = __OFSUB__(v54, v55);
          v57 = v54 - v55;
          v58 = v56;
          if (v56)
          {
            goto LABEL_106;
          }

          v59 = &v7[16 * v36 + 32];
          v61 = *v59;
          v60 = *(v59 + 1);
          v47 = __OFSUB__(v60, v61);
          v62 = v60 - v61;
          if (v47)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v57, v62))
          {
            goto LABEL_110;
          }

          if (v57 + v62 >= v39)
          {
            if (v39 < v62)
            {
              v36 = v33 - 2;
            }

            goto LABEL_78;
          }

          goto LABEL_71;
        }

        v63 = &v7[16 * v33];
        v65 = *v63;
        v64 = *(v63 + 1);
        v47 = __OFSUB__(v64, v65);
        v57 = v64 - v65;
        v58 = v47;
LABEL_71:
        if (v58)
        {
          goto LABEL_105;
        }

        v66 = &v7[16 * v36];
        v68 = *(v66 + 4);
        v67 = *(v66 + 5);
        v47 = __OFSUB__(v67, v68);
        v69 = v67 - v68;
        if (v47)
        {
          goto LABEL_108;
        }

        if (v69 < v57)
        {
          goto LABEL_3;
        }

LABEL_78:
        v74 = v36 - 1;
        if (v36 - 1 >= v33)
        {
          __break(1u);
LABEL_99:
          __break(1u);
LABEL_100:
          __break(1u);
LABEL_101:
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
          __break(1u);
LABEL_104:
          __break(1u);
LABEL_105:
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
          goto LABEL_119;
        }

        if (!*a3)
        {
          goto LABEL_122;
        }

        v75 = *&v7[16 * v74 + 32];
        v76 = *&v7[16 * v36 + 40];
        sub_2524B368C((*a3 + 80 * v75), (*a3 + 80 * *&v7[16 * v36 + 32]), (*a3 + 80 * v76), v35);
        if (v4)
        {
          goto LABEL_97;
        }

        if (v76 < v75)
        {
          goto LABEL_99;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v7 = sub_252624154(v7);
        }

        if (v74 >= *(v7 + 2))
        {
          goto LABEL_100;
        }

        v77 = &v7[16 * v74];
        *(v77 + 4) = v75;
        *(v77 + 5) = v76;
        sub_2526240C8(v36);
        v33 = *(v7 + 2);
        if (v33 <= 1)
        {
          goto LABEL_3;
        }
      }

      v41 = &v7[16 * v33 + 32];
      v42 = *(v41 - 64);
      v43 = *(v41 - 56);
      v47 = __OFSUB__(v43, v42);
      v44 = v43 - v42;
      if (v47)
      {
        goto LABEL_101;
      }

      v46 = *(v41 - 48);
      v45 = *(v41 - 40);
      v47 = __OFSUB__(v45, v46);
      v39 = v45 - v46;
      v40 = v47;
      if (v47)
      {
        goto LABEL_102;
      }

      v48 = &v7[16 * v33];
      v50 = *v48;
      v49 = *(v48 + 1);
      v47 = __OFSUB__(v49, v50);
      v51 = v49 - v50;
      if (v47)
      {
        goto LABEL_104;
      }

      v47 = __OFADD__(v39, v51);
      v52 = v39 + v51;
      if (v47)
      {
        goto LABEL_107;
      }

      if (v52 >= v44)
      {
        v70 = &v7[16 * v36 + 32];
        v72 = *v70;
        v71 = *(v70 + 1);
        v47 = __OFSUB__(v71, v72);
        v73 = v71 - v72;
        if (v47)
        {
          goto LABEL_111;
        }

        if (v39 < v73)
        {
          v36 = v33 - 2;
        }

        goto LABEL_78;
      }

      goto LABEL_57;
    }

LABEL_3:
    v5 = a3[1];
    if (v6 >= v5)
    {
      goto LABEL_88;
    }
  }

  v22 = *a3;
  v23 = *a3 + 80 * v6;
  v24 = v8 - v6;
LABEL_30:
  v25 = v24;
  v26 = v23;
  while (1)
  {
    if (*(v26 + 8) >= *(v26 - 72))
    {
LABEL_29:
      ++v6;
      v23 += 80;
      --v24;
      if (v6 != v5)
      {
        goto LABEL_30;
      }

      v6 = v5;
      goto LABEL_37;
    }

    if (!v22)
    {
      break;
    }

    v27 = (v26 - 80);
    v94 = *(v26 + 32);
    v96 = *(v26 + 48);
    v98 = *(v26 + 64);
    v90 = *v26;
    v92 = *(v26 + 16);
    v28 = *(v26 - 32);
    *(v26 + 32) = *(v26 - 48);
    *(v26 + 48) = v28;
    *(v26 + 64) = *(v26 - 16);
    v29 = *(v26 - 64);
    *v26 = *(v26 - 80);
    *(v26 + 16) = v29;
    v27[3] = v96;
    v27[4] = v98;
    v27[1] = v92;
    v27[2] = v94;
    v26 -= 80;
    *v27 = v90;
    if (__CFADD__(v25++, 1))
    {
      goto LABEL_29;
    }
  }

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
}

uint64_t sub_2524B368C(unsigned __int8 *__dst, unsigned __int8 *__src, unsigned __int8 *a3, unsigned __int8 *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = (__src - __dst) / 80;
  v10 = a3 - __src;
  v11 = (a3 - __src) / 80;
  if (v9 < v11)
  {
    if (a4 != __dst || &__dst[80 * v9] <= a4)
    {
      memmove(a4, __dst, 80 * v9);
    }

    v12 = &v4[80 * v9];
    if (v8 < 80)
    {
LABEL_6:
      v6 = v7;
      goto LABEL_31;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_6;
      }

      if (v6[8] < v4[8])
      {
        break;
      }

      v13 = v4;
      v14 = v7 == v4;
      v4 += 80;
      if (!v14)
      {
        goto LABEL_8;
      }

LABEL_9:
      v7 += 80;
      if (v4 >= v12)
      {
        goto LABEL_6;
      }
    }

    v13 = v6;
    v14 = v7 == v6;
    v6 += 80;
    if (v14)
    {
      goto LABEL_9;
    }

LABEL_8:
    memmove(v7, v13, 0x50uLL);
    goto LABEL_9;
  }

  if (a4 != __src || &__src[80 * v11] <= a4)
  {
    memmove(a4, __src, 80 * v11);
  }

  v12 = &v4[80 * v11];
  if (v10 >= 80 && v6 > v7)
  {
LABEL_20:
    v5 -= 80;
    do
    {
      v15 = v5 + 80;
      if (*(v12 - 72) < *(v6 - 72))
      {
        v17 = v6 - 80;
        if (v15 != v6)
        {
          memmove(v5, v6 - 80, 0x50uLL);
        }

        if (v12 <= v4 || (v6 -= 80, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_31;
        }

        goto LABEL_20;
      }

      v16 = (v12 - 80);
      if (v15 != v12)
      {
        memmove(v5, v12 - 80, 0x50uLL);
      }

      v5 -= 80;
      v12 -= 80;
    }

    while (v16 > v4);
    v12 = v16;
  }

LABEL_31:
  v18 = (v12 - v4) / 80;
  if (v6 != v4 || v6 >= &v4[80 * v18])
  {
    memmove(v6, v4, 80 * v18);
  }

  return 1;
}