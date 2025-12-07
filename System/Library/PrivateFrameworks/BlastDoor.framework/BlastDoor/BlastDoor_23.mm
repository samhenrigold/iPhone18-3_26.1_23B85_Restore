uint64_t sub_21421E62C(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90A1C8, &qword_2146F5CB8);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v22 - v5;
  v7 = v1[3];
  v67 = v1[2];
  v68 = v7;
  v69 = *(v1 + 64);
  v8 = v1[1];
  v65 = *v1;
  v66 = v8;
  v50 = *(v1 + 9);
  v49 = *(v1 + 80);
  v48 = *(v1 + 11);
  v9 = *(v1 + 96);
  v45 = *(v1 + 13);
  v46 = *(v1 + 112);
  v47 = v9;
  v43 = *(v1 + 15);
  v44 = *(v1 + 128);
  v10 = *(v1 + 17);
  v42 = *(v1 + 144);
  v40 = *(v1 + 19);
  v41 = v10;
  v39 = *(v1 + 160);
  v38 = *(v1 + 21);
  LODWORD(v10) = *(v1 + 176);
  v11 = *(v1 + 26);
  v34 = *(v1 + 25);
  v35 = v11;
  v36 = *(v1 + 217);
  v37 = v10;
  v33 = *(v1 + 218);
  v12 = *(v1 + 31);
  v31 = *(v1 + 30);
  v32 = v12;
  v13 = *(v1 + 36);
  v29 = *(v1 + 35);
  v30 = v13;
  v28 = *(v1 + 38);
  v27 = *(v1 + 312);
  v14 = *(v1 + 43);
  v25 = *(v1 + 42);
  v26 = v14;
  v24 = *(v1 + 353);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21430C20C();
  sub_2146DAA28();
  v62 = v67;
  v63 = v68;
  v64 = v69;
  v60 = v65;
  v61 = v66;
  v59 = 0;
  sub_213FB2E54(&v65, &v54, &qword_27C90A020, &qword_2146F5BE0);
  v15 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90A020, &qword_2146F5BE0);
  sub_21430B5C0();
  v16 = v70;
  sub_2146DA388();
  if (v16)
  {
    v56 = v62;
    v57 = v63;
    v58 = v64;
    v54 = v60;
    v55 = v61;
    sub_213FB2DF4(&v54, &qword_27C90A020, &qword_2146F5BE0);
    return (*(v4 + 8))(v6, v3);
  }

  else
  {
    v18 = v47;
    v19 = v48;
    v23 = v4;
    v56 = v62;
    v57 = v63;
    v58 = v64;
    v54 = v60;
    v55 = v61;
    sub_213FB2DF4(&v54, &qword_27C90A020, &qword_2146F5BE0);
    v51 = v50;
    LOBYTE(v52) = v49;
    v53 = 1;
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905698, &qword_2146F3D00);
    v21 = sub_2142E1E84();
    sub_2146DA388();
    v70 = v21;
    v51 = v19;
    LOBYTE(v52) = v18;
    v53 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9058A0, &unk_2147379A0);
    sub_2142E37F4();
    sub_2146DA388();
    v51 = v45;
    LOBYTE(v52) = v46;
    v53 = 3;
    sub_2146DA388();
    v51 = v43;
    LOBYTE(v52) = v44;
    v53 = 4;
    sub_2146DA388();
    v51 = v41;
    LOBYTE(v52) = v42;
    v53 = 5;
    sub_2146DA388();
    v51 = v40;
    LOBYTE(v52) = v39;
    v53 = 6;
    sub_2146DA388();
    v51 = v38;
    LOBYTE(v52) = v37;
    v53 = 7;
    sub_2146DA388();
    v50 = v20;
    if (v35 == 1 || (v51 = v34, v52 = v35, v53 = 8, __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050), sub_214045AC0(), sub_2146DA388(), LOBYTE(v51) = v36, v53 = 9, __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905688, &qword_2146F3CF0), sub_2142E1D30(), sub_2146DA388(), LOBYTE(v51) = v33, v53 = 10, sub_2146DA388(), v32 == 1) || (v51 = v31, v52 = v32, v53 = 11, sub_2146DA388(), v30 == 1) || (v51 = v29, v52 = v30, v53 = 12, sub_2146DA388(), v51 = v28, LOBYTE(v52) = v27, v53 = 13, sub_2146DA388(), v26 == 1))
    {
      result = sub_2146DA018();
      __break(1u);
    }

    else
    {
      v51 = v25;
      v52 = v26;
      v53 = 14;
      sub_2146DA388();
      LOBYTE(v51) = v24;
      v53 = 15;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90A060, &qword_2146F5BF8);
      sub_21430B874();
      sub_2146DA388();
      return (*(v23 + 8))(0, v15);
    }
  }

  return result;
}

void *sub_21421EE14@<X0>(uint64_t (*a1)(void, void, void)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t (*a7)(void, void, void)@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, int a10, char a11, const void *a12)
{
  sub_2145B2A64(&v46);
  v15 = v46;
  v14 = v47;
  v17 = v48;
  v16 = v49;
  v18 = v50;
  sub_2145B2A98(&v66);
  v38 = v67;
  v44 = v68;
  v33 = v66;
  v34 = v69;
  v35 = v70;
  v72[0] = a11 & 1;
  memcpy(&__src[7], a12, 0x189uLL);
  v66 = a1;
  v67 = a2;
  v72[0] = v18;
  v46 = 0xD000000000000032;
  v47 = 0x80000002147918C0;
  v48 = 0xD00000000000001CLL;
  v49 = 0x800000021478A360;

  sub_213FDC9D0(v17, v16);
  v45 = v14;
  v19 = v36;
  v37 = v15;
  v20 = v15(&v66, v72, &v46);
  if (v19)
  {

LABEL_6:

    v24 = v33;
    v23 = v34;
    v27 = v14;

    sub_213FDC6D0(v17, v16);
    v21 = v35;
    v22 = v38;
LABEL_7:
    v46 = v37;
    v47 = v27;
    v48 = v17;
    v49 = v16;
    v50 = v18;
    *v51 = v75[0];
    *&v51[3] = *(v75 + 3);
    v52 = a3;
    v53 = a4;
    v54 = a5;
    v55 = a6;
    v56 = v24;
    v57 = v22;
    v58 = v44;
    v59 = v23;
    v60 = v21;
    v62 = v74;
    v61 = v73;
    v63 = a10;
    v64 = a11 & 1;
    memcpy(v65, __src, sizeof(v65));
    return sub_21430C2BC(&v46);
  }

  v30 = a2;
  if ((v20 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v26 = 0xD000000000000032;
    v26[1] = 0x80000002147918C0;
    v26[2] = 0xD00000000000001CLL;
    v26[3] = 0x800000021478A360;
    swift_willThrow();

    goto LABEL_6;
  }

  sub_213FDC6D0(v17, v16);

  sub_213FDC6D0(v17, v16);
  v66 = a7;
  v67 = a8;
  v21 = v35;
  v72[0] = v35;
  v46 = 0xD000000000000036;
  v47 = 0x8000000214791900;
  v48 = 0xD00000000000001CLL;
  v49 = 0x800000021478A360;
  v22 = v38;

  v23 = v34;
  sub_213FDC9D0(v44, v34);
  v24 = v33;
  v25 = v33(&v66, v72, &v46);
  if ((v25 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v29 = 0xD000000000000036;
    v29[1] = 0x8000000214791900;
    v29[2] = 0xD00000000000001CLL;
    v29[3] = 0x800000021478A360;
    swift_willThrow();

    v17 = a1;

    sub_213FDC6D0(v44, v34);
    v16 = v30;
    v27 = v45;
    goto LABEL_7;
  }

  sub_213FDC6D0(v44, v34);

  sub_213FDC6D0(v44, v34);
  *a9 = v37;
  *(a9 + 8) = v45;
  *(a9 + 16) = a1;
  *(a9 + 24) = v30;
  *(a9 + 32) = v18;
  *(a9 + 40) = a3;
  *(a9 + 48) = a4;
  *(a9 + 56) = a5;
  *(a9 + 64) = a6;
  *(a9 + 72) = v33;
  *(a9 + 80) = v38;
  *(a9 + 88) = a7;
  *(a9 + 96) = a8;
  *(a9 + 104) = v35;
  *(a9 + 108) = a10;
  *(a9 + 112) = a11 & 1;
  return memcpy((a9 + 113), __src, 0x190uLL);
}

unint64_t sub_21421F258()
{
  v1 = *v0;
  v2 = 0x6B616873646E6168;
  v3 = 0x5672657469766E69;
  if (v1 != 4)
  {
    v3 = 0xD000000000000013;
  }

  if (v1 == 3)
  {
    v3 = 0xD000000000000012;
  }

  v4 = 0xD000000000000016;
  if (v1 != 1)
  {
    v4 = 0x4372657469766E69;
  }

  if (*v0)
  {
    v2 = v4;
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

uint64_t sub_21421F33C(uint64_t a1)
{
  v2 = sub_21430C310();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21421F378(uint64_t a1)
{
  v2 = sub_21430C310();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21421F3B4@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90A1D0, &qword_2146F5CC0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v47 - v7;
  v9 = a1[3];
  v98 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v9);
  sub_21430C310();
  sub_2146DAA08();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(v98);
  }

  v69 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
  LOBYTE(v70[0]) = 0;
  sub_2142E12FC();
  sub_2146DA1C8();
  v68 = v6;
  v10 = v72;
  v11 = v73;
  LOBYTE(v70[0]) = 1;
  sub_2146DA1C8();
  v66 = v10;
  v67 = v11;
  v12 = v72;
  v13 = v73;
  LOBYTE(v70[0]) = 2;
  sub_2146DA1C8();
  v64 = v12;
  v65 = v13;
  v14 = v72;
  v15 = v73;
  LOBYTE(v70[0]) = 3;
  sub_2146DA1C8();
  v16 = v68;
  v62 = v14;
  v63 = v15;
  v17 = v72;
  v18 = v73;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905AC0, &unk_2146F3F90);
  LOBYTE(v70[0]) = 4;
  sub_2142E6128();
  sub_2146DA1C8();
  v59 = v17;
  v19 = v72;
  LOBYTE(v17) = BYTE4(v72);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C909E50, &unk_2146F5B30);
  v93[399] = 5;
  sub_21430A4B0();
  sub_2146DA1C8();
  v53 = v18;
  v52 = v19;
  memcpy(v93, v94, 0x189uLL);
  sub_213FB2E54(v93, &v72, &qword_27C909E50, &unk_2146F5B30);
  sub_2145B2A64(&v72);
  v21 = v73;
  v60 = v74;
  v61 = v72;
  v22 = v75;
  LODWORD(v18) = v76;
  sub_2145B2A98(v70);
  v54 = v70[0];
  v56 = v70[2];
  v57 = v70[3];
  v58 = v70[1];
  v55 = LOBYTE(v70[4]);
  memcpy(&v92[7], v93, 0x189uLL);
  v49 = v17;
  v50 = v18;
  v70[0] = v66;
  v70[1] = v67;
  LOBYTE(v71[0]) = v18;
  v72 = 0xD000000000000032;
  v73 = 0x80000002147918C0;
  v74 = 0xD00000000000001CLL;
  v75 = 0x800000021478A360;

  v48 = v22;
  sub_213FDC9D0(v60, v22);
  v51 = v21;
  v23 = v61(v70, v71, &v72);
  v47 = 0x800000021478A360;
  if (v23)
  {
    v24 = v60;
    v25 = v48;
    sub_213FDC6D0(v60, v48);
    v26 = v47;

    v27 = v51;

    sub_213FDC6D0(v24, v25);
    v71[0] = v59;
    v71[1] = v53;
    LOBYTE(v70[0]) = v55;
    v72 = 0xD000000000000036;
    v73 = 0x8000000214791900;
    v74 = 0xD00000000000001CLL;
    v75 = v26;

    sub_213FDC9D0(v56, v57);
    v28 = v54(v71, v70, &v72);
    if (v28)
    {
      v37 = v56;
      v36 = v57;
      sub_213FDC6D0(v56, v57);

      sub_213FB2DF4(v93, &qword_27C909E50, &unk_2146F5B30);
      (*(v16 + 8))(v8, v5);
      v38 = v58;

      sub_213FDC6D0(v37, v36);
      v39 = v62;
      v70[0] = v61;
      v70[1] = v27;
      v40 = v67;
      v70[2] = v66;
      v70[3] = v67;
      LOBYTE(v70[4]) = v50;
      *(&v70[4] + 1) = v97[0];
      HIDWORD(v70[4]) = *(v97 + 3);
      v41 = v64;
      v70[5] = v64;
      v70[6] = v65;
      v42 = v63;
      v70[7] = v62;
      v70[8] = v63;
      v43 = v53;
      v70[9] = v54;
      v70[10] = v38;
      v70[11] = v59;
      v70[12] = v53;
      LOBYTE(v70[13]) = v55;
      BYTE3(v70[13]) = v96;
      *(&v70[13] + 1) = v95;
      HIDWORD(v70[13]) = v52;
      LOBYTE(v36) = v49;
      LOBYTE(v70[14]) = v49;
      memcpy(&v70[14] + 1, v92, 0x190uLL);
      memcpy(v69, v70, 0x201uLL);
      sub_21430C364(v70, &v72);
      __swift_destroy_boxed_opaque_existential_1(v98);
      v72 = v61;
      v73 = v51;
      v74 = v66;
      v75 = v40;
      v76 = v50;
      *v77 = v97[0];
      *&v77[3] = *(v97 + 3);
      v78 = v41;
      v79 = v65;
      v80 = v39;
      v81 = v42;
      v82 = v54;
      v83 = v38;
      v84 = v59;
      v85 = v43;
      v86 = v55;
      v88 = v96;
      v87 = v95;
      v89 = v52;
      v90 = v36;
      goto LABEL_8;
    }

    sub_214031C4C();
    swift_allocError();
    *v44 = 0xD000000000000036;
    v44[1] = 0x8000000214791900;
    v45 = v47;
    v44[2] = 0xD00000000000001CLL;
    v44[3] = v45;
    swift_willThrow();

    sub_213FB2DF4(v93, &qword_27C909E50, &unk_2146F5B30);
    v31 = v66;
    v46 = v67;
    (*(v16 + 8))(v8, v5);

    sub_213FDC6D0(v56, v57);
    v32 = v46;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v29 = 0xD000000000000032;
    v29[1] = 0x80000002147918C0;
    v30 = v47;
    v29[2] = 0xD00000000000001CLL;
    v29[3] = v30;
    swift_willThrow();

    v27 = v51;
    sub_213FB2DF4(v93, &qword_27C909E50, &unk_2146F5B30);
    (*(v16 + 8))(v8, v5);

    v31 = v60;
    v32 = v48;
    sub_213FDC6D0(v60, v48);
  }

  v34 = v64;
  v33 = v65;
  v35 = v63;
  __swift_destroy_boxed_opaque_existential_1(v98);
  v72 = v61;
  v73 = v27;
  v74 = v31;
  v75 = v32;
  v76 = v50;
  *v77 = v97[0];
  *&v77[3] = *(v97 + 3);
  v78 = v34;
  v79 = v33;
  v80 = v62;
  v81 = v35;
  v82 = v54;
  v83 = v58;
  v84 = v56;
  v85 = v57;
  v86 = v55;
  v88 = v96;
  v87 = v95;
  v89 = v52;
  v90 = v49;
LABEL_8:
  memcpy(v91, v92, sizeof(v91));
  return sub_21430C2BC(&v72);
}

uint64_t sub_21421FD24(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90A1E0, &qword_2146F5CC8);
  v22 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = &v14 - v4;
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + 40);
  v19 = *(v1 + 48);
  v20 = v8;
  v9 = *(v1 + 56);
  v17 = *(v1 + 64);
  v18 = v9;
  v10 = *(v1 + 88);
  v15 = *(v1 + 96);
  v16 = v10;
  v26 = *(v1 + 108);
  HIDWORD(v14) = *(v1 + 112);
  memcpy(v25, (v1 + 120), 0x189uLL);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21430C310();
  sub_2146DAA28();
  if (v7 == 1)
  {
    goto LABEL_7;
  }

  v24[0] = v6;
  v24[1] = v7;
  v23[0] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
  sub_214045AC0();
  v11 = v21;
  sub_2146DA388();
  if (v11)
  {
    return (*(v22 + 8))(v5, v3);
  }

  v24[0] = v20;
  v24[1] = v19;
  v23[0] = 1;
  sub_2146DA388();
  v24[0] = v18;
  v24[1] = v17;
  v23[0] = 2;
  sub_2146DA388();
  if (v15 == 1)
  {
LABEL_7:
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v24[0] = v16;
    v24[1] = v15;
    v23[0] = 3;
    sub_2146DA388();
    LODWORD(v24[0]) = v26;
    BYTE4(v24[0]) = BYTE4(v14);
    v23[0] = 4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905AC0, &unk_2146F3F90);
    sub_2142E62D8();
    sub_2146DA388();
    memcpy(v24, v25, 0x189uLL);
    v27 = 5;
    sub_213FB2E54(v25, v23, &qword_27C909E50, &unk_2146F5B30);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C909E50, &unk_2146F5B30);
    sub_21430A714();
    sub_2146DA388();
    v13 = (v22 + 8);
    memcpy(v23, v24, 0x189uLL);
    sub_213FB2DF4(v23, &qword_27C909E50, &unk_2146F5B30);
    return (*v13)(v5, v3);
  }

  return result;
}

void *sub_214220110@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, __int128 *a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, int a10, char a11, const void *a12)
{
  v67 = a2;
  v15 = a6[3];
  v62 = a6[2];
  v63[0] = v15;
  *(v63 + 9) = *(a6 + 57);
  v16 = a6[1];
  v60 = *a6;
  v61 = v16;
  sub_2145B2D30(&v34);
  v17 = v34;
  v18 = v37;
  LOBYTE(v56[0]) = BYTE4(a3) & 1;
  v58[0] = a11 & 1;
  memcpy(&v57[3], a12, 0x189uLL);
  v56[0] = a1;
  v56[1] = v67;
  v28 = v38;
  v58[0] = v38;
  v19 = v36;
  v20 = v35;
  v34 = 0xD000000000000033;
  v35 = 0x8000000214791940;
  v36 = 0xD00000000000001CLL;
  v37 = 0x800000021478A360;

  sub_213FDC9D0(v19, v18);
  v21 = v17(v56, v58, &v34);
  if (v29)
  {
  }

  else
  {
    if (v21)
    {
      sub_213FDC6D0(v19, v18);

      sub_213FDC6D0(v19, v18);
      *a9 = v17;
      *(a9 + 8) = v20;
      v22 = v67;
      *(a9 + 16) = a1;
      *(a9 + 24) = v22;
      *(a9 + 32) = v28;
      *(a9 + 36) = a3;
      *(a9 + 40) = BYTE4(a3) & 1;
      *(a9 + 48) = a4;
      *(a9 + 56) = a5;
      v23 = a6[3];
      *(a9 + 96) = a6[2];
      *(a9 + 112) = v23;
      *(a9 + 121) = *(a6 + 57);
      v24 = a6[1];
      *(a9 + 64) = *a6;
      *(a9 + 80) = v24;
      *(a9 + 144) = a7;
      *(a9 + 152) = a8;
      *(a9 + 160) = a10;
      *(a9 + 164) = a11 & 1;
      return memcpy((a9 + 165), v57, 0x18CuLL);
    }

    sub_214031C4C();
    swift_allocError();
    *v26 = 0xD000000000000033;
    v26[1] = 0x8000000214791940;
    v26[2] = 0xD00000000000001CLL;
    v26[3] = 0x800000021478A360;
    swift_willThrow();
  }

  sub_213FDC6D0(v19, v18);
  v34 = v17;
  v35 = v20;
  v36 = v19;
  v37 = v18;
  v38 = v28;
  v39 = v65;
  v40 = v66;
  v41 = a3;
  v42 = BYTE4(a3) & 1;
  *v43 = v64[0];
  *&v43[3] = *(v64 + 3);
  v44 = a4;
  v45 = a5;
  *&v49[9] = *(v63 + 9);
  v48 = v62;
  *v49 = v63[0];
  v46 = v60;
  v47 = v61;
  *&v50[3] = *(v59 + 3);
  *v50 = v59[0];
  v51 = a7;
  v52 = a8;
  v53 = a10;
  v54 = a11 & 1;
  memcpy(v55, v57, sizeof(v55));
  return sub_21430C3C0(&v34);
}

uint64_t sub_214220450()
{
  v1 = *v0;
  if (v1 <= 2)
  {
    v5 = 0x65736E6F70736572;
    if (v1 != 1)
    {
      v5 = 0xD000000000000016;
    }

    if (*v0)
    {
      return v5;
    }

    else
    {
      return 0x6B616873646E6168;
    }
  }

  else
  {
    v2 = 0x5665657469766E69;
    if (v1 != 5)
    {
      v2 = 0xD000000000000013;
    }

    v3 = 0xD000000000000015;
    if (v1 != 3)
    {
      v3 = 0xD000000000000012;
    }

    if (*v0 <= 4u)
    {
      return v3;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_214220560(uint64_t a1)
{
  v2 = sub_21430C414();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21422059C(uint64_t a1)
{
  v2 = sub_21430C414();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2142205D8@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90A1E8, &qword_2146F5CD0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v32 - v7;
  v9 = a1[3];
  v94 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v9);
  sub_21430C414();
  sub_2146DAA08();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(v94);
  }

  v49 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
  v50[0] = 0;
  sub_2142E12FC();
  sub_2146DA1C8();
  v48 = v6;
  v10 = v51;
  v11 = v52;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905DC8, &qword_2146F40C0);
  v50[0] = 1;
  sub_2142E7FB4();
  sub_2146DA1C8();
  v46 = v10;
  v47 = v11;
  LODWORD(v10) = v51;
  LODWORD(v11) = BYTE4(v51);
  v50[0] = 2;
  sub_2146DA1C8();
  v43 = v11;
  v44 = v10;
  v12 = v51;
  v45 = v52;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C909E68, &qword_214761070);
  v81 = 3;
  sub_21430A588();
  sub_2146DA1C8();
  v13 = v48;
  v42 = v12;
  v79 = v84;
  *v80 = *v85;
  *&v80[9] = *&v85[9];
  v78 = v83;
  v77 = v82;
  v50[0] = 4;
  sub_2146DA1C8();
  v15 = v51;
  v16 = v52;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905AC0, &unk_2146F3F90);
  v50[0] = 5;
  sub_2142E6128();
  sub_2146DA1C8();
  v40 = v15;
  v41 = v16;
  LODWORD(v15) = v51;
  LOBYTE(v16) = BYTE4(v51);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C909E50, &unk_2146F5B30);
  v75[399] = 6;
  sub_21430A4B0();
  sub_2146DA1C8();
  v36 = v15;
  memcpy(v75, v76, 0x189uLL);
  sub_213FB2E54(&v77, &v51, &qword_27C909E68, &qword_214761070);
  sub_213FB2E54(v75, &v51, &qword_27C909E50, &unk_2146F5B30);
  sub_2145B2D30(&v51);
  v17 = v52;
  v38 = v51;
  v39 = v53;
  v37 = v54;
  v89 = v79;
  v90[0] = *v80;
  *(v90 + 9) = *&v80[9];
  v87 = v77;
  v88 = v78;
  memcpy(&v74[3], v75, 0x189uLL);
  v34 = v16;
  v35 = v43;
  v73[0] = v46;
  v73[1] = v47;
  v43 = v55;
  v50[0] = v55;
  v51 = 0xD000000000000033;
  v52 = 0x8000000214791940;
  v53 = 0xD00000000000001CLL;
  v54 = 0x800000021478A360;

  sub_213FDC9D0(v39, v37);
  v33 = v17;
  v18 = v38(v73, v50, &v51);
  if (v18)
  {
    v19 = v39;
    v20 = v37;
    sub_213FDC6D0(v39, v37);

    sub_213FB2DF4(&v77, &qword_27C909E68, &qword_214761070);
    sub_213FB2DF4(v75, &qword_27C909E50, &unk_2146F5B30);
    (*(v13 + 8))(v8, v5);
    v21 = v33;

    sub_213FDC6D0(v19, v20);
    v22 = v38;
    *v50 = v38;
    *&v50[8] = v21;
    v23 = v47;
    *&v50[16] = v46;
    *&v50[24] = v47;
    v50[32] = v43;
    *&v50[33] = v92;
    v50[35] = v93;
    *&v50[36] = v44;
    v50[40] = v35;
    *&v50[41] = *v91;
    *&v50[44] = *&v91[3];
    v24 = v42;
    *&v50[48] = v42;
    *&v50[56] = v45;
    *&v50[96] = v89;
    *&v50[112] = v90[0];
    *&v50[121] = *(v90 + 9);
    *&v50[64] = v87;
    *&v50[80] = v88;
    *&v50[137] = *v86;
    *&v50[140] = *&v86[3];
    v25 = v41;
    *&v50[144] = v40;
    *&v50[152] = v41;
    *&v50[160] = v36;
    v26 = v34;
    v50[164] = v34;
    memcpy(&v50[165], v74, 0x18CuLL);
    memcpy(v49, v50, 0x231uLL);
    sub_21430C468(v50, &v51);
    __swift_destroy_boxed_opaque_existential_1(v94);
    v51 = v22;
    v52 = v21;
    v53 = v46;
    v54 = v23;
    v55 = v43;
    v56 = v92;
    v57 = v93;
    v58 = v44;
    v59 = v35;
    *v60 = *v91;
    *&v60[3] = *&v91[3];
    v61 = v24;
    v62 = v45;
    v65 = v89;
    *v66 = v90[0];
    *&v66[9] = *(v90 + 9);
    v63 = v87;
    v64 = v88;
    *v67 = *v86;
    *&v67[3] = *&v86[3];
    v68 = v40;
    v69 = v25;
    v70 = v36;
    v71 = v26;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v27 = 0xD000000000000033;
    v27[1] = 0x8000000214791940;
    v27[2] = 0xD00000000000001CLL;
    v27[3] = 0x800000021478A360;
    swift_willThrow();

    sub_213FB2DF4(&v77, &qword_27C909E68, &qword_214761070);
    v28 = v44;
    sub_213FB2DF4(v75, &qword_27C909E50, &unk_2146F5B30);
    (*(v13 + 8))(v8, v5);
    v29 = v33;

    v30 = v39;
    v31 = v37;
    sub_213FDC6D0(v39, v37);
    __swift_destroy_boxed_opaque_existential_1(v94);
    v51 = v38;
    v52 = v29;
    v53 = v30;
    v54 = v31;
    v55 = v43;
    v56 = v92;
    v57 = v93;
    v58 = v28;
    v59 = v35;
    *v60 = *v91;
    *&v60[3] = *&v91[3];
    v61 = v42;
    v62 = v45;
    *&v66[9] = *(v90 + 9);
    v65 = v89;
    *v66 = v90[0];
    v63 = v87;
    v64 = v88;
    *&v67[3] = *&v86[3];
    *v67 = *v86;
    v68 = v40;
    v69 = v41;
    v70 = v36;
    v71 = v34;
  }

  memcpy(v72, v74, sizeof(v72));
  return sub_21430C3C0(&v51);
}

uint64_t sub_214220FA8(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90A1F8, &qword_2146F5CD8);
  v41 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = &v17 - v4;
  v7 = *(v1 + 16);
  v6 = *(v1 + 24);
  v8 = *(v1 + 36);
  v24 = *(v1 + 40);
  v25 = v8;
  v9 = *(v1 + 48);
  v22 = *(v1 + 56);
  v23 = v9;
  v10 = *(v1 + 112);
  v38 = *(v1 + 96);
  v39[0] = v10;
  *(v39 + 9) = *(v1 + 121);
  v11 = *(v1 + 64);
  v37 = *(v1 + 80);
  v36 = v11;
  v12 = *(v1 + 144);
  v20 = *(v1 + 152);
  v21 = v12;
  LODWORD(v12) = *(v1 + 160);
  v18 = *(v1 + 164);
  v19 = v12;
  memcpy(v40, (v1 + 168), 0x189uLL);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21430C414();
  sub_2146DAA28();
  if (v6 == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v28[0] = v7;
    v28[1] = v6;
    v27[0] = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
    sub_214045AC0();
    v13 = v3;
    v14 = v26;
    sub_2146DA388();
    if (v14)
    {
      return (*(v41 + 8))(v5, v3);
    }

    else
    {
      LODWORD(v28[0]) = v25;
      BYTE4(v28[0]) = v24;
      v27[0] = 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905DC8, &qword_2146F40C0);
      sub_2142E883C();
      sub_2146DA388();
      v28[0] = v23;
      v28[1] = v22;
      v27[0] = 2;
      sub_2146DA388();
      v34 = v38;
      v35[0] = v39[0];
      *(v35 + 9) = *(v39 + 9);
      v32 = v36;
      v33 = v37;
      v31 = 3;
      sub_213FB2E54(&v36, v28, &qword_27C909E68, &qword_214761070);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C909E68, &qword_214761070);
      sub_21430A7EC();
      sub_2146DA388();
      v29[2] = v34;
      *v30 = v35[0];
      *&v30[9] = *(v35 + 9);
      v29[0] = v32;
      v29[1] = v33;
      sub_213FB2DF4(v29, &qword_27C909E68, &qword_214761070);
      v28[0] = v21;
      v28[1] = v20;
      v27[0] = 4;
      sub_2146DA388();
      LODWORD(v28[0]) = v19;
      BYTE4(v28[0]) = v18;
      v27[0] = 5;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905AC0, &unk_2146F3F90);
      sub_2142E62D8();
      sub_2146DA388();
      memcpy(v28, v40, 0x189uLL);
      v27[399] = 6;
      sub_213FB2E54(v40, v27, &qword_27C909E50, &unk_2146F5B30);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C909E50, &unk_2146F5B30);
      sub_21430A714();
      sub_2146DA388();
      v15 = (v41 + 8);
      memcpy(v27, v28, 0x189uLL);
      sub_213FB2DF4(v27, &qword_27C909E50, &unk_2146F5B30);
      return (*v15)(v5, v13);
    }
  }

  return result;
}

void *sub_2142214C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, __int128 *a3@<X2>, const void *a4@<X3>, uint64_t a5@<X8>)
{
  sub_2145B2EA4(v21);
  v9 = *a3;
  *&v23[23] = a3[1];
  v10 = a3[3];
  *&v23[39] = a3[2];
  *&v23[55] = v10;
  *&v23[64] = *(a3 + 57);
  v11 = v21[0];
  v12 = v21[1];
  v13 = v21[2];
  v14 = v21[3];
  *&v23[7] = v9;
  memcpy(__src + 7, a4, 0x189uLL);
  v24[2] = *&v23[32];
  v24[3] = *&v23[48];
  v24[4] = *&v23[64];
  v24[0] = *v23;
  v24[1] = *&v23[16];
  memcpy(&v24[5], __src, 0x190uLL);
  *v23 = a1;
  *&v23[8] = a2;
  v25 = v22;
  LOBYTE(v21[0]) = v22;
  __src[0] = 0xD000000000000036;
  __src[1] = 0x8000000214791980;
  __src[2] = 0xD00000000000001CLL;
  __src[3] = 0x800000021478A360;

  sub_213FDC9D0(v13, v14);
  v15 = v11(v23, v21, __src);
  if (v19)
  {
  }

  else
  {
    if (v15)
    {
      sub_213FDC6D0(v13, v14);

      sub_213FDC6D0(v13, v14);
      *a5 = v11;
      *(a5 + 8) = v12;
      *(a5 + 16) = a1;
      *(a5 + 24) = a2;
      *(a5 + 32) = v25;
      return memcpy((a5 + 33), v24, 0x1E0uLL);
    }

    sub_214031C4C();
    swift_allocError();
    *v17 = 0xD000000000000036;
    v17[1] = 0x8000000214791980;
    v17[2] = 0xD00000000000001CLL;
    v17[3] = 0x800000021478A360;
    swift_willThrow();
  }

  sub_213FDC6D0(v13, v14);
  __src[0] = v11;
  __src[1] = v12;
  __src[2] = v13;
  __src[3] = v14;
  LOBYTE(__src[4]) = v25;
  memcpy(&__src[4] + 1, v24, 0x1E0uLL);
  return sub_21430C4C4(__src);
}

uint64_t sub_214221708(uint64_t a1)
{
  v2 = sub_21430C518();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_214221744(uint64_t a1)
{
  v2 = sub_21430C518();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_214221780@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90A200, &qword_2146F5CE0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v28 - v7;
  v9 = a1[3];
  v62 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v9);
  sub_21430C518();
  sub_2146DAA08();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(v62);
  }

  v10 = v6;
  v11 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
  LOBYTE(v36[0]) = 0;
  sub_2142E12FC();
  sub_2146DA1C8();
  v12 = v37;
  v13 = v38;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C909E68, &qword_214761070);
  v57 = 1;
  sub_21430A588();
  sub_2146DA1C8();
  v55 = v60;
  *v56 = v61[0];
  *&v56[9] = *(v61 + 9);
  v53 = v58;
  v54 = v59;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C909E50, &unk_2146F5B30);
  v51[399] = 2;
  sub_21430A4B0();
  sub_2146DA1C8();
  v33 = v12;
  memcpy(v51, v52, 0x189uLL);
  sub_213FB2E54(&v53, &v37, &qword_27C909E68, &qword_214761070);
  sub_213FB2E54(v51, &v37, &qword_27C909E50, &unk_2146F5B30);
  sub_2145B2EA4(&v37);
  *(&v50[1] + 7) = v54;
  *(&v50[2] + 7) = v55;
  *(&v50[3] + 7) = *v56;
  v50[4] = *&v56[9];
  v29 = v37;
  v15 = v13;
  v16 = v38;
  v34 = v39;
  v35 = v40;
  *(v50 + 7) = v53;
  memcpy(&v49[7], v51, 0x189uLL);
  v48[0] = v33;
  v30 = v15;
  v48[1] = v15;
  v32 = v41;
  LOBYTE(v36[0]) = v41;
  v37 = 0xD000000000000036;
  v28 = 0x8000000214791980;
  v38 = 0x8000000214791980;
  v39 = 0xD00000000000001CLL;
  v40 = 0x800000021478A360;

  sub_213FDC9D0(v34, v35);
  v31 = v16;
  v17 = v29;
  v18 = v29(v48, v36, &v37);
  v19 = v28;
  if (v18)
  {
    sub_213FDC6D0(v34, v35);

    sub_213FB2DF4(&v53, &qword_27C909E68, &qword_214761070);
    sub_213FB2DF4(v51, &qword_27C909E50, &unk_2146F5B30);
    (*(v10 + 8))(v8, v5);
    v20 = v31;

    sub_213FDC6D0(v34, v35);
    *(&v36[6] + 1) = v50[1];
    *(&v36[8] + 1) = v50[2];
    *(&v36[10] + 1) = v50[3];
    *(&v36[12] + 1) = v50[4];
    v36[0] = v17;
    v36[1] = v20;
    v21 = v33;
    v22 = v30;
    v36[2] = v33;
    v36[3] = v30;
    v23 = v32;
    LOBYTE(v36[4]) = v32;
    *(&v36[4] + 1) = v50[0];
    memcpy(&v36[14] + 1, v49, 0x190uLL);
    memcpy(v11, v36, 0x201uLL);
    sub_21430C56C(v36, &v37);
    __swift_destroy_boxed_opaque_existential_1(v62);
    v43 = v50[1];
    v44 = v50[2];
    v45 = v50[3];
    v46 = v50[4];
    v37 = v17;
    v38 = v20;
    v39 = v21;
    v40 = v22;
    v41 = v23;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v24 = 0xD000000000000036;
    v24[1] = v19;
    v24[2] = 0xD00000000000001CLL;
    v24[3] = 0x800000021478A360;
    swift_willThrow();

    sub_213FB2DF4(&v53, &qword_27C909E68, &qword_214761070);
    sub_213FB2DF4(v51, &qword_27C909E50, &unk_2146F5B30);
    (*(v10 + 8))(v8, v5);
    v25 = v31;

    v27 = v34;
    v26 = v35;
    sub_213FDC6D0(v34, v35);
    __swift_destroy_boxed_opaque_existential_1(v62);
    v43 = v50[1];
    v44 = v50[2];
    v45 = v50[3];
    v46 = v50[4];
    v37 = v17;
    v38 = v25;
    v39 = v27;
    v40 = v26;
    v41 = v32;
  }

  v42 = v50[0];
  memcpy(v47, v49, sizeof(v47));
  return sub_21430C4C4(&v37);
}

uint64_t sub_214221DE0(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90A210, &qword_2146F5CE8);
  v28 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = v13 - v4;
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + 56);
  v9 = *(v1 + 88);
  v25 = *(v1 + 72);
  v26[0] = v9;
  *(v26 + 9) = *(v1 + 97);
  v23 = *(v1 + 40);
  v24 = v8;
  memcpy(v27, (v1 + 120), 0x189uLL);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21430C518();
  sub_2146DAA28();
  if (v7 == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v15[0] = v6;
    v15[1] = v7;
    v14[0] = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
    sub_214045AC0();
    v10 = v13[1];
    sub_2146DA388();
    if (v10)
    {
      return (*(v28 + 8))(v5, v3);
    }

    else
    {
      v21 = v25;
      v22[0] = v26[0];
      *(v22 + 9) = *(v26 + 9);
      v19 = v23;
      v20 = v24;
      v18 = 1;
      sub_213FB2E54(&v23, v15, &qword_27C909E68, &qword_214761070);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C909E68, &qword_214761070);
      sub_21430A7EC();
      sub_2146DA388();
      v16[2] = v21;
      *v17 = v22[0];
      *&v17[9] = *(v22 + 9);
      v16[0] = v19;
      v16[1] = v20;
      sub_213FB2DF4(v16, &qword_27C909E68, &qword_214761070);
      memcpy(v15, v27, 0x189uLL);
      v14[399] = 2;
      sub_213FB2E54(v27, v14, &qword_27C909E50, &unk_2146F5B30);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C909E50, &unk_2146F5B30);
      sub_21430A714();
      sub_2146DA388();
      v11 = (v28 + 8);
      memcpy(v14, v15, 0x189uLL);
      sub_213FB2DF4(v14, &qword_27C909E50, &unk_2146F5B30);
      return (*v11)(v5, v3);
    }
  }

  return result;
}

uint64_t sub_2142221B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_2145B2ED8(&v17);
  v5 = v17;
  v6 = v18;
  v7 = v19;
  v8 = v20;
  v9 = v21;
  v16[0] = a1;
  v16[1] = a2;
  v22 = v21;
  v17 = 0xD00000000000003ALL;
  v18 = 0x80000002147919C0;
  v19 = 0xD00000000000001CLL;
  v20 = 0x800000021478A360;
  v10 = v5;

  sub_213FDC9D0(v7, v8);
  v11 = v10(v16, &v22, &v17);
  if (v15)
  {

    sub_213FDC6D0(v7, v8);
  }

  else
  {
    if (v11)
    {
      sub_213FDC6D0(v7, v8);

      sub_213FDC6D0(v7, v8);

      *a3 = v10;
      *(a3 + 8) = v6;
      *(a3 + 16) = a1;
      *(a3 + 24) = a2;
      *(a3 + 32) = v9;
      return result;
    }

    sub_214031C4C();
    swift_allocError();
    *v13 = 0xD00000000000003ALL;
    v13[1] = 0x80000002147919C0;
    v13[2] = 0xD00000000000001CLL;
    v13[3] = 0x800000021478A360;
    swift_willThrow();

    sub_213FDC6D0(v7, v8);
  }

  return sub_213FDC6D0(v7, v8);
}

uint64_t sub_2142223A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6B616873646E6168 && a2 == 0xEE006E656B6F5465)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_2146DA6A8();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_214222434(uint64_t a1)
{
  v2 = sub_21430C5C8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_214222470(uint64_t a1)
{
  v2 = sub_21430C5C8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2142224AC@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90A218, &qword_2146F5CF0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v26 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21430C5C8();
  sub_2146DAA08();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
  sub_2142E12FC();
  sub_2146DA1C8();
  v26 = a2;
  v10 = v34;
  v11 = v35;
  sub_2145B2ED8(&v34);
  v12 = v35;
  v31 = v34;
  v13 = v36;
  v14 = v37;
  v27 = v10;
  v33[0] = v10;
  v33[1] = v11;
  v29 = v11;
  v39 = v38;
  v40 = v38;
  v34 = 0xD00000000000003ALL;
  v35 = 0x80000002147919C0;
  v36 = 0xD00000000000001CLL;
  v37 = 0x800000021478A360;

  v32 = v13;
  v30 = v14;
  v15 = v14;
  v16 = v31;
  sub_213FDC9D0(v13, v15);
  v28 = v12;
  v17 = v16(v33, &v40, &v34);
  v18 = v39;
  if (v17)
  {
    v19 = v30;
    sub_213FDC6D0(v32, v30);

    (*(v6 + 8))(v8, v5);
    v20 = v28;

    sub_213FDC6D0(v32, v19);
    v21 = v26;
    *v26 = v31;
    v21[1] = v20;
    v22 = v29;
    v21[2] = v27;
    v21[3] = v22;
    *(v21 + 32) = v18;
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  sub_214031C4C();
  swift_allocError();
  *v23 = 0xD00000000000003ALL;
  v23[1] = 0x80000002147919C0;
  v23[2] = 0xD00000000000001CLL;
  v23[3] = 0x800000021478A360;
  swift_willThrow();

  (*(v6 + 8))(v8, v5);

  v24 = v32;
  v25 = v30;
  sub_213FDC6D0(v32, v30);
  __swift_destroy_boxed_opaque_existential_1(a1);

  return sub_213FDC6D0(v24, v25);
}

__n128 sub_21422287C@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, __int128 a10, __n128 a11, uint64_t a12, char a13)
{
  result = a11;
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  *(a9 + 48) = a7;
  *(a9 + 56) = a8;
  *(a9 + 64) = a10;
  *(a9 + 80) = a11;
  *(a9 + 96) = a12;
  *(a9 + 104) = a13 & 1;
  return result;
}

uint64_t sub_2142228B4()
{
  v1 = *v0;
  v2 = 0x6E6F6974706163;
  v3 = 0x6275536567616D69;
  if (v1 != 5)
  {
    v3 = 0x6F69746341706174;
  }

  v4 = 0x7469546567616D69;
  if (v1 == 3)
  {
    v4 = 0xD000000000000012;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0xD000000000000013;
  if (v1 == 1)
  {
    v5 = 0x6974706163627573;
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

uint64_t sub_2142229A8@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_21437A5EC(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_2142229D0(uint64_t a1)
{
  v2 = sub_21430C61C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_214222A0C(uint64_t a1)
{
  v2 = sub_21430C61C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_214222A48@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90A230, &qword_2146F5D00);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v22 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21430C61C();
  sub_2146DAA08();
  if (!v2)
  {
    v33 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
    v36 = 0;
    sub_2142E12FC();
    sub_2146DA1C8();
    v9 = v35;
    v32 = v34;
    v36 = 1;
    sub_2146DA1C8();
    v31 = v9;
    v10 = v34;
    v30 = v35;
    v36 = 2;
    sub_2146DA1C8();
    v28 = v34;
    v29 = v10;
    v11 = v35;
    v36 = 3;
    sub_2146DA1C8();
    v27 = v11;
    v12 = v34;
    v26 = v35;
    v36 = 4;
    sub_2146DA1C8();
    v24 = v12;
    v13 = v34;
    v25 = v35;
    v36 = 5;
    sub_2146DA1C8();
    v14 = v25;
    v15 = v35;
    v23 = v34;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904798, qword_21473CFD0);
    v36 = 6;
    sub_2142E11FC();
    sub_2146DA1C8();
    (*(v6 + 8))(v8, v5);
    v17 = v35;
    v18 = v13;
    v20 = v33;
    v19 = v34;
    *v33 = v32;
    v20[1] = v31;
    v20[2] = v29;
    v20[3] = v30;
    v20[4] = v28;
    v20[5] = v27;
    v20[6] = v24;
    v20[7] = v26;
    v20[8] = v18;
    v21 = v23;
    v20[9] = v14;
    v20[10] = v21;
    v20[11] = v15;
    v20[12] = v19;
    *(v20 + 104) = v17;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_214222F08(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90A240, &qword_2146F5D08);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v17 - v5;
  v8 = *v1;
  v7 = v1[1];
  v9 = v1[2];
  v26 = v1[3];
  v27 = v9;
  v10 = v1[4];
  v24 = v1[5];
  v25 = v10;
  v11 = v1[7];
  v22 = v1[6];
  v23 = v11;
  v12 = v1[9];
  v20 = v1[8];
  v21 = v12;
  v13 = v1[11];
  v18 = v1[10];
  v19 = v13;
  v17 = v1[12];
  v31 = *(v1 + 104);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21430C61C();

  sub_2146DAA28();
  v29 = v8;
  v30 = v7;
  v32 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
  sub_214045AC0();
  v14 = v28;
  sub_2146DA388();
  if (v14)
  {
  }

  else
  {
    v15 = v25;

    v29 = v27;
    v30 = v26;
    v32 = 1;
    sub_2146DA388();
    v29 = v15;
    v30 = v24;
    v32 = 2;
    sub_2146DA388();
    v29 = v22;
    v30 = v23;
    v32 = 3;
    sub_2146DA388();
    v29 = v20;
    v30 = v21;
    v32 = 4;
    sub_2146DA388();
    v29 = v18;
    v30 = v19;
    v32 = 5;
    sub_2146DA388();
    v29 = v17;
    LOBYTE(v30) = v31;
    v32 = 6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904798, qword_21473CFD0);
    sub_2142E1C30();
    sub_2146DA388();
  }

  return (*(v4 + 8))(v6, v3);
}

__n128 sub_21422327C@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_214061854(v21);
  v4 = v21[8];
  v5 = v21[10];
  v6 = v21[11];
  *(a2 + 392) = v21[9];
  *(a2 + 408) = v5;
  *(a2 + 424) = v6;
  v7 = v21[4];
  v8 = v21[6];
  v9 = v21[7];
  *(a2 + 328) = v21[5];
  *(a2 + 344) = v8;
  *(a2 + 360) = v9;
  *(a2 + 376) = v4;
  v10 = v21[1];
  *(a2 + 248) = v21[0];
  v11 = v21[2];
  v12 = v21[3];
  *(a2 + 264) = v10;
  *(a2 + 280) = v11;
  *(a2 + 296) = v12;
  *(a2 + 312) = v7;
  *(a2 + 240) = 0;
  *(a2 + 208) = 0u;
  *(a2 + 224) = 0u;
  *(a2 + 176) = 0u;
  *(a2 + 192) = 0u;
  *(a2 + 144) = 0u;
  *(a2 + 160) = 0u;
  *(a2 + 112) = 0u;
  *(a2 + 128) = 0u;
  *(a2 + 80) = 0u;
  *(a2 + 96) = 0u;
  *(a2 + 48) = 0u;
  *(a2 + 64) = 0u;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *a2 = 0u;
  sub_213FB2DF4(a2, &qword_27C904858, &qword_214736F00);
  v13 = *(a1 + 208);
  *(a2 + 192) = *(a1 + 192);
  *(a2 + 208) = v13;
  *(a2 + 224) = *(a1 + 224);
  *(a2 + 240) = *(a1 + 240);
  v14 = *(a1 + 144);
  *(a2 + 128) = *(a1 + 128);
  *(a2 + 144) = v14;
  v15 = *(a1 + 176);
  *(a2 + 160) = *(a1 + 160);
  *(a2 + 176) = v15;
  v16 = *(a1 + 80);
  *(a2 + 64) = *(a1 + 64);
  *(a2 + 80) = v16;
  v17 = *(a1 + 112);
  *(a2 + 96) = *(a1 + 96);
  *(a2 + 112) = v17;
  v18 = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 16) = v18;
  result = *(a1 + 32);
  v20 = *(a1 + 48);
  *(a2 + 32) = result;
  *(a2 + 48) = v20;
  return result;
}

uint64_t sub_214223380(uint64_t a1)
{
  v2 = sub_21430C670();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2142233BC(uint64_t a1)
{
  v2 = sub_21430C670();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2142233F8@<X0>(void *a1@<X0>, char *a2@<X8>)
{
  v23 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90A248, &qword_2146F5D10);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v20[-v6 - 8];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21430C670();
  sub_2146DAA08();
  if (!v2)
  {
    v19 = v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905500, &qword_2146F2BE0);
    sub_21432076C(&qword_280B30CB8, &qword_27C905500, &qword_2146F2BE0, aI_83);
    sub_2146DA1C8();
    (*(v19 + 8))(v7, v4);
    sub_214061854(v21);
    v8 = v23;
    v9 = v21[8];
    v10 = v21[10];
    v11 = v21[11];
    *(v23 + 392) = v21[9];
    *(v8 + 408) = v10;
    *(v8 + 424) = v11;
    v12 = v21[4];
    v13 = v21[6];
    v14 = v21[7];
    *(v8 + 328) = v21[5];
    *(v8 + 344) = v13;
    *(v8 + 360) = v14;
    *(v8 + 376) = v9;
    v15 = v21[1];
    *(v8 + 248) = v21[0];
    v16 = v21[2];
    v17 = v21[3];
    *(v8 + 264) = v15;
    *(v8 + 280) = v16;
    *(v8 + 296) = v17;
    *(v8 + 312) = v12;
    *(v8 + 30) = 0;
    *(v8 + 13) = 0u;
    *(v8 + 14) = 0u;
    *(v8 + 11) = 0u;
    *(v8 + 12) = 0u;
    *(v8 + 9) = 0u;
    *(v8 + 10) = 0u;
    *(v8 + 7) = 0u;
    *(v8 + 8) = 0u;
    *(v8 + 5) = 0u;
    *(v8 + 6) = 0u;
    *(v8 + 3) = 0u;
    *(v8 + 4) = 0u;
    *(v8 + 1) = 0u;
    *(v8 + 2) = 0u;
    *v8 = 0u;
    memcpy(v20, v22, sizeof(v20));
    sub_213FB2DF4(v8, &qword_27C905500, &qword_2146F2BE0);
    memcpy(v8, v20, 0x1B8uLL);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_214223734@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6C4374756F79616CLL && a2 == 0xEB00000000737361)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_2146DA6A8();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_2142237C0(uint64_t a1)
{
  v2 = sub_21430C6C4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2142237FC(uint64_t a1)
{
  v2 = sub_21430C6C4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2142238F0()
{
  if (*v0)
  {
    return 0xD000000000000011;
  }

  else
  {
    return 0x74536D6F72467369;
  }
}

uint64_t sub_21422393C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x74536D6F72467369 && a2 == 0xED0000656761726FLL;
  if (v6 || (sub_2146DA6A8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000011 && 0x8000000214796B70 == a2)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_2146DA6A8();

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

uint64_t sub_214223A28(uint64_t a1)
{
  v2 = sub_21430C718();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_214223A64(uint64_t a1)
{
  v2 = sub_21430C718();

  return MEMORY[0x2821FE720](a1, v2);
}

_BYTE *sub_214223B58@<X0>(_BYTE *result@<X0>, char a2@<W1>, char a3@<W2>, char a4@<W3>, _BYTE *a5@<X8>)
{
  *a5 = *result;
  a5[1] = a2;
  a5[2] = a3;
  a5[3] = a4;
  return result;
}

uint64_t sub_214223B70()
{
  v1 = 0x65636E6569647561;
  v2 = 0x6B726F46656D616ELL;
  if (*v0 != 2)
  {
    v2 = 0x726F466567616D69;
  }

  if (*v0)
  {
    v1 = 0x45676E6972616873;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_214223C04@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_21437A858(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_214223C2C(uint64_t a1)
{
  v2 = sub_21430C76C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_214223C68(uint64_t a1)
{
  v2 = sub_21430C76C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_214223CA4@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90A288, &qword_2146F5D40);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v12 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21430C76C();
  sub_2146DAA08();
  if (!v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90A298, &qword_2146F5D48);
    v21 = 0;
    sub_21430C7C0();
    sub_2146DA1C8();
    v14 = v22;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905688, &qword_2146F3CF0);
    v19 = 1;
    sub_2142E1378();
    sub_2146DA1C8();
    v13 = v20;
    v17 = 2;
    sub_2146DA1C8();
    HIDWORD(v12) = v18;
    v15 = 3;
    sub_2146DA1C8();
    (*(v6 + 8))(v8, v5);
    v10 = v16;
    v11 = v13;
    *a2 = v14;
    a2[1] = v11;
    a2[2] = BYTE4(v12);
    a2[3] = v10;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_214223F34(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90A2B0, &qword_2146F5D50);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v13 - v6;
  v8 = *v1;
  v9 = v1[1];
  v14 = v1[2];
  v15 = v9;
  HIDWORD(v13) = v1[3];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21430C76C();
  sub_2146DAA28();
  v23 = v8;
  v22 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90A298, &qword_2146F5D48);
  sub_21430C898();
  sub_2146DA388();
  if (!v2)
  {
    v10 = BYTE4(v13);
    v11 = v14;
    v21 = v15;
    v20 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905688, &qword_2146F3CF0);
    sub_2142E1D30();
    sub_2146DA388();
    v19 = v11;
    v18 = 2;
    sub_2146DA388();
    v17 = v10;
    v16 = 3;
    sub_2146DA388();
  }

  return (*(v5 + 8))(v7, v4);
}

double sub_2142241A8@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, uint64_t a7@<X6>, unint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, unint64_t a11, char a12, uint64_t a13, unint64_t a14)
{
  sub_2146ABB50(&v73);
  v16 = v73;
  v18 = v74;
  v17 = v75;
  v19 = v76;
  sub_2146ABCA4(&v118);
  v70 = v118;
  v37 = v119;
  v39 = v120;
  v35 = v121;
  v68 = v122;
  sub_2146ABE0C(v116);
  v129 = v116[0];
  v40 = v116[1];
  v42 = v116[2];
  v64 = v116[3];
  v71 = v117;
  sub_2146ABF7C(v114);
  v63 = v114[0];
  v60 = v114[2];
  v43 = v114[1];
  v45 = v114[3];
  v61 = v115;
  sub_2146AC0EC(v112);
  v52 = v112[0];
  v54 = v112[2];
  v55 = v112[1];
  v56 = v112[3];
  v50 = v113;
  sub_2146AC25C(&v108);
  v48 = v108;
  v46 = v109;
  v49 = v110;
  v47 = v111;
  v118 = a1;
  v119 = a2;
  LOBYTE(v116[0]) = v19;
  *&v73 = 0xD000000000000052;
  *(&v73 + 1) = 0x8000000214791A00;
  v74 = 0xD00000000000001CLL;
  v75 = 0x800000021478A360;

  sub_213FDC9D0(v18, v17);
  v20 = (v16)(&v118, v116, &v73);
  if (!v33)
  {
    if (v20)
    {
      sub_213FDC6D0(v18, v17);

      sub_213FDC6D0(v18, v17);
      *&v73 = v70;
      *(&v73 + 1) = v37;
      v74 = v39;
      v75 = v35;
      v76 = v68;

      sub_21404F7E0(v39, v35);
      sub_214032118(a3, a4, 2, 0xD00000000000004FLL, 0x8000000214791A60, 0xD00000000000001CLL, 0x800000021478A360);

      v22 = v73;
      v31 = v74;
      v34 = v75;
      v69 = v76;

      sub_214032564(v39, v35);
      *&v73 = v129;
      *(&v73 + 1) = v40;
      v74 = v42;
      v75 = v64;
      v76 = v71;

      sub_21404F7E0(v42, v64);
      sub_214032118(a5, a6, 2, 0xD000000000000042, 0x8000000214791AB0, 0xD00000000000001CLL, 0x800000021478A360);

      v30 = *(&v73 + 1);
      v129 = v73;
      v36 = v74;
      v38 = v75;
      v72 = v76;

      sub_214032564(v42, v64);
      *&v73 = v63;
      *(&v73 + 1) = v43;
      v74 = v60;
      v75 = v45;
      v76 = v61;

      sub_21404F7E0(v60, v45);
      sub_214032118(a7, a8, 2, 0xD000000000000048, 0x8000000214791B00, 0xD00000000000001CLL, 0x800000021478A360);

      v23 = v73;
      v24 = v75;
      v65 = v74;
      v62 = v76;

      sub_214032564(v60, v45);
      *&v73 = v52;
      *(&v73 + 1) = v55;
      v74 = v54;
      v75 = v56;
      v76 = v50;

      sub_21404F7E0(v54, v56);
      sub_214032118(a10, a11, 2, 0xD000000000000046, 0x8000000214791B50, 0xD00000000000001CLL, 0x800000021478A360);

      v25 = v73;
      v41 = v74;
      v44 = v75;
      v51 = v76;

      sub_214032564(v54, v56);
      v73 = v48;
      v74 = v46;
      v75 = v49;
      v76 = v47;

      sub_21404F7E0(v46, v49);
      sub_214032118(a13, a14, 2, 0xD000000000000045, 0x8000000214791BA0, 0xD00000000000001CLL, 0x800000021478A360);
      sub_213FDC6BC(a13, a14);
      sub_213FDC6BC(a10, a11);
      sub_213FDC6BC(a7, a8);
      sub_213FDC6BC(a5, a6);
      sub_213FDC6BC(a3, a4);

      v26 = v74;
      v27 = v75;
      v28 = v76;

      sub_214032564(v46, v49);
      *a9 = v16;
      *(a9 + 16) = a1;
      *(a9 + 24) = a2;
      *(a9 + 32) = v19;
      *(a9 + 33) = v128[0];
      *(a9 + 36) = *(v128 + 3);
      *(a9 + 40) = v22;
      *(a9 + 56) = v31;
      *(a9 + 64) = v34;
      *(a9 + 72) = v69;
      *(a9 + 73) = *v127;
      *(a9 + 76) = *&v127[3];
      *(a9 + 80) = v129;
      *(a9 + 88) = v30;
      *(a9 + 96) = v36;
      *(a9 + 104) = v38;
      *(a9 + 112) = v72;
      *(a9 + 113) = *v126;
      *(a9 + 116) = *&v126[3];
      *(a9 + 120) = v23;
      *(a9 + 136) = v65;
      *(a9 + 144) = v24;
      *(a9 + 152) = v62;
      *(a9 + 153) = *v125;
      *(a9 + 156) = *&v125[3];
      *(a9 + 160) = v25;
      *(a9 + 176) = v41;
      *(a9 + 184) = v44;
      *(a9 + 192) = v51;
      *(a9 + 193) = a12;
      *(a9 + 198) = v124;
      *(a9 + 194) = v123;
      result = *&v73;
      *(a9 + 200) = v73;
      *(a9 + 216) = v26;
      *(a9 + 224) = v27;
      *(a9 + 232) = v28;
      return result;
    }

    sub_214031C4C();
    swift_allocError();
    *v21 = 0xD000000000000052;
    v21[1] = 0x8000000214791A00;
    v21[2] = 0xD00000000000001CLL;
    v21[3] = 0x800000021478A360;
    swift_willThrow();
  }

  sub_213FDC6BC(a13, a14);
  sub_213FDC6BC(a10, a11);
  sub_213FDC6BC(a7, a8);
  sub_213FDC6BC(a5, a6);
  sub_213FDC6BC(a3, a4);

  sub_213FDC6D0(v18, v17);
  v73 = v16;
  v74 = v18;
  v75 = v17;
  v76 = v19;
  *v77 = v128[0];
  *&v77[3] = *(v128 + 3);
  v78 = v70;
  v79 = v37;
  v80 = v39;
  v81 = v35;
  v82 = v68;
  *v83 = *v127;
  *&v83[3] = *&v127[3];
  v84 = v129;
  v85 = v40;
  v86 = v42;
  v87 = v64;
  v88 = v71;
  *&v89[3] = *&v126[3];
  *v89 = *v126;
  v90 = v63;
  v91 = v43;
  v92 = v60;
  v93 = v45;
  v94 = v61;
  *v95 = *v125;
  *&v95[3] = *&v125[3];
  v96 = v52;
  v97 = v55;
  v98 = v54;
  v99 = v56;
  v100 = v50;
  v101 = a12;
  v103 = v124;
  v102 = v123;
  v104 = v48;
  v105 = v46;
  v106 = v49;
  v107 = v47;
  sub_2142F9DF8(&v73);
  return result;
}

unint64_t sub_214224E2C()
{
  v1 = *v0;
  v2 = 0x706C6C6157736168;
  if (v1 != 5)
  {
    v2 = 0xD000000000000013;
  }

  v3 = 0xD000000000000016;
  if (v1 != 3)
  {
    v3 = 0xD000000000000014;
  }

  if (*v0 <= 4u)
  {
    v2 = v3;
  }

  v4 = 0xD00000000000001DLL;
  if (v1 != 1)
  {
    v4 = 0xD000000000000010;
  }

  if (!*v0)
  {
    v4 = 0xD000000000000020;
  }

  if (*v0 <= 2u)
  {
    return v4;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_214224F20@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_21437A9D0(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_214224F48(uint64_t a1)
{
  v2 = sub_21430C970();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_214224F84(uint64_t a1)
{
  v2 = sub_21430C970();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_214224FC0@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90A2C8, &qword_2146F5D58);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v67 - v7;
  v9 = a1[3];
  v181 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v9);
  sub_21430C970();
  sub_2146DAA08();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(v181);
  }

  v115 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
  v116[0] = 0;
  sub_2142E12FC();
  sub_2146DA1C8();
  v114 = v6;
  v10 = v5;
  v11 = v128;
  v12 = *v129;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905680, &unk_2146F3CE0);
  v116[0] = 1;
  v13 = sub_2142E1278();
  sub_2146DA1C8();
  *&v113 = v11;
  *(&v113 + 1) = v12;
  v14 = v128;
  v15 = v13;
  v16 = *v129;
  v116[0] = 2;
  sub_2146DA1C8();
  v111 = v14;
  v112 = v16;
  v17 = v128;
  v18 = *v129;
  v116[0] = 3;
  sub_2146DA1C8();
  v109 = v18;
  v110 = v17;
  v19 = v128;
  v20 = *v129;
  v116[0] = 4;
  sub_2146DA1C8();
  v107 = v15;
  v108 = v19;
  v21 = v128;
  v22 = *v129;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905688, &qword_2146F3CF0);
  v116[0] = 5;
  sub_2142E1378();
  sub_2146DA1C8();
  v106 = v21;
  LODWORD(v21) = v128;
  v172 = 6;
  sub_2146DA1C8();
  v87 = v22;
  v89 = v20;
  v76 = v10;
  v78 = v21;
  v79 = v174;
  v80 = v173;
  sub_2146ABB50(&v128);
  v107 = v128;
  v24 = *v129;
  v25 = *&v129[8];
  v26 = v130;
  sub_2146ABCA4(v116);
  v103 = *&v116[8];
  v105 = *v116;
  v102 = *&v116[24];
  v104 = v117;
  sub_2146ABE0C(&v168);
  v98 = v168;
  v93 = v169;
  v100 = *(&v168 + 1);
  v101 = v170;
  v97 = v171;
  sub_2146ABF7C(v166);
  v88 = v166[0];
  v96 = v166[2];
  v94 = v166[1];
  v95 = v166[3];
  v92 = v167;
  sub_2146AC0EC(v163);
  v86 = v163[0];
  v90 = v163[1];
  v91 = v164;
  v85 = v165;
  sub_2146AC25C(&v159);
  v83 = v159;
  v84 = v160;
  v81 = v161;
  v82 = v162;
  *v116 = v113;
  v77 = v26;
  LOBYTE(v168) = v26;
  v128 = 0xD000000000000052;
  *v129 = 0x8000000214791A00;
  *&v129[8] = 0xD00000000000001CLL;
  *&v129[16] = 0x800000021478A360;

  sub_213FDC9D0(v25, *(&v25 + 1));
  v99 = v24;
  v27 = v107(v116, &v168, &v128);
  if (v27)
  {
    sub_213FDC6D0(v25, *(&v25 + 1));

    sub_213FDC6D0(v25, *(&v25 + 1));
    v128 = v105;
    v28 = *(&v103 + 1);
    *v129 = v103;
    v29 = v102;
    *&v129[16] = v102;
    v130 = v104;

    sub_21404F7E0(v28, v29);
    sub_214032118(v111, v112, 2, 0xD00000000000004FLL, 0x8000000214791A60, 0xD00000000000001CLL, 0x800000021478A360);

    v105 = v128;
    v74 = *v129;
    v75 = *&v129[16];
    v104 = v130;

    sub_214032564(v28, v29);
    v128 = v98;
    v39 = v101;
    *v129 = v100;
    v40 = v93;
    *&v129[8] = v93;
    *&v129[16] = v101;
    v130 = v97;

    sub_21404F7E0(v40, v39);
    sub_214032118(v110, v109, 2, 0xD000000000000042, 0x8000000214791AB0, 0xD00000000000001CLL, 0x800000021478A360);

    v98 = v128;
    v72 = *v129;
    v73 = *&v129[8];
    v97 = v130;

    sub_214032564(v93, v101);
    v128 = v88;
    v41 = v95;
    *v129 = v94;
    v42 = v96;
    *&v129[8] = v96;
    *&v129[16] = v95;
    v130 = v92;

    sub_21404F7E0(v42, v41);
    sub_214032118(v108, v89, 2, 0xD000000000000048, 0x8000000214791B00, 0xD00000000000001CLL, 0x800000021478A360);

    v88 = v128;
    v43 = *v129;
    v71 = *&v129[16];
    v93 = *&v129[8];
    v92 = v130;

    sub_214032564(v96, v95);
    v128 = v86;
    v44 = v91;
    *v129 = v90;
    v45 = *(&v91 + 1);
    *&v129[8] = v91;
    v130 = v85;

    sub_21404F7E0(v44, v45);
    sub_214032118(v106, v87, 2, 0xD000000000000046, 0x8000000214791B50, 0xD00000000000001CLL, 0x800000021478A360);

    v86 = v128;
    v69 = *v129;
    v70 = *&v129[8];
    v85 = v130;

    sub_214032564(v91, *(&v91 + 1));
    v168 = v83;
    v46 = v84;
    v47 = v81;
    v169 = v84;
    v170 = v81;
    v171 = v82;

    sub_21404F7E0(v46, v47);
    sub_214032118(v80, v79, 2, 0xD000000000000045, 0x8000000214791BA0, 0xD00000000000001CLL, 0x800000021478A360);

    sub_213FDC6BC(v106, v87);
    sub_213FDC6BC(v108, v89);
    sub_213FDC6BC(v110, v109);
    sub_213FDC6BC(v111, v112);
    sub_213FDC6BC(v80, v79);
    (*(v114 + 8))(v8, v76);
    v48 = v168;
    v114 = v168;
    v49 = v169;
    v111 = v169;
    v112 = *(&v168 + 1);
    v110 = v170;
    v50 = v171;

    sub_214032564(v84, v81);
    *(&v117 + 1) = v180[0];
    DWORD1(v117) = *(v180 + 3);
    *(&v119 + 9) = *v179;
    HIDWORD(v119) = *&v179[3];
    *(&v122 + 1) = *v178;
    DWORD1(v122) = *&v178[3];
    *(&v124 + 9) = *v177;
    HIDWORD(v124) = *&v177[3];
    *&v127[6] = v176;
    *&v127[2] = v175;
    v51 = v99;
    *&v116[8] = v99;
    *&v116[16] = v113;
    LOBYTE(v117) = v77;
    *(&v117 + 1) = v105;
    v118 = v74;
    *&v119 = v75;
    BYTE8(v119) = v104;
    *&v120 = v98;
    *(&v120 + 1) = v72;
    v121 = v73;
    LOBYTE(v122) = v97;
    *(&v122 + 1) = v88;
    v68 = v43;
    *&v123 = v43;
    *(&v123 + 1) = v93;
    v52 = v71;
    *&v124 = v71;
    BYTE8(v124) = v92;
    *&v125 = v86;
    *(&v125 + 1) = v69;
    v126 = v70;
    v127[0] = v85;
    v127[1] = v78;
    *&v127[8] = v48;
    *&v127[24] = v49;
    v53 = v110;
    *&v127[32] = v110;
    v127[40] = v50;
    v54 = *&v127[25];
    v55 = v107;
    *v116 = v107;
    v56 = v113;
    v57 = v115;
    *v115 = *v116;
    v57[1] = v56;
    v58 = v117;
    v59 = v118;
    v60 = v120;
    v57[4] = v119;
    v57[5] = v60;
    v57[2] = v58;
    v57[3] = v59;
    v61 = v121;
    v62 = v122;
    v63 = v124;
    v57[8] = v123;
    v57[9] = v63;
    v57[6] = v61;
    v57[7] = v62;
    v64 = v125;
    v65 = v126;
    *(v57 + 217) = v54;
    v66 = *&v127[16];
    v57[12] = *v127;
    v57[13] = v66;
    v57[10] = v64;
    v57[11] = v65;
    sub_2142FA098(v116, &v128);
    __swift_destroy_boxed_opaque_existential_1(v181);
    v128 = v55;
    *v129 = v51;
    *&v129[8] = v113;
    v130 = v77;
    *v131 = v180[0];
    *&v131[3] = *(v180 + 3);
    v132 = v105;
    v133 = v74;
    v134 = v75;
    v135 = v104;
    *v136 = *v179;
    *&v136[3] = *&v179[3];
    v137 = v98;
    v138 = v72;
    v139 = v73;
    v140 = v97;
    *v141 = *v178;
    *&v141[3] = *&v178[3];
    v142 = v88;
    v143 = v68;
    v144 = v93;
    v145 = v52;
    v146 = v92;
    *v147 = *v177;
    *&v147[3] = *&v177[3];
    v148 = v86;
    v149 = v69;
    v150 = v70;
    v151 = v85;
    v152 = v78;
    v154 = v176;
    v153 = v175;
    *&v155 = v114;
    *(&v155 + 1) = v112;
    v156 = v111;
    v157 = v53;
    v158 = v50;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v30 = 0xD000000000000052;
    v30[1] = 0x8000000214791A00;
    v30[2] = 0xD00000000000001CLL;
    v30[3] = 0x800000021478A360;
    swift_willThrow();

    sub_213FDC6BC(v106, v87);
    v31 = v78;
    v32 = v110;
    sub_213FDC6BC(v108, v89);
    sub_213FDC6BC(v32, v109);
    sub_213FDC6BC(v111, v112);
    sub_213FDC6BC(v80, v79);
    (*(v114 + 8))(v8, v76);
    v33 = v99;

    sub_213FDC6D0(v25, *(&v25 + 1));
    v114 = *(&v25 + 1);
    v115 = v25;
    v34 = v86;
    v35 = v85;
    v36 = v88;
    v37 = v81;
    v38 = v93;
    __swift_destroy_boxed_opaque_existential_1(v181);
    v128 = v107;
    *v129 = v33;
    *&v129[8] = v115;
    *&v129[16] = v114;
    v130 = v77;
    *v131 = v180[0];
    *&v131[3] = *(v180 + 3);
    v132 = v105;
    v133 = v103;
    v134 = v102;
    v135 = v104;
    *v136 = *v179;
    *&v136[3] = *&v179[3];
    v137 = v98;
    v138 = v100;
    *&v139 = v38;
    *(&v139 + 1) = v101;
    v140 = v97;
    *&v141[3] = *&v178[3];
    *v141 = *v178;
    v142 = v36;
    v143 = v94;
    v144 = v96;
    v145 = v95;
    v146 = v92;
    *&v147[3] = *&v177[3];
    *v147 = *v177;
    v148 = v34;
    v149 = v90;
    v150 = v91;
    v151 = v35;
    v152 = v31;
    v154 = v176;
    v153 = v175;
    v155 = v83;
    v156 = v84;
    v157 = v37;
    v158 = v82;
  }

  return sub_2142F9DF8(&v128);
}

uint64_t sub_214226284(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90A2D8, &qword_2146F5D60);
  v27 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = *(v1 + 16);
  v5 = *(v1 + 24);
  v7 = *(v1 + 56);
  v8 = *(v1 + 64);
  v9 = *(v1 + 104);
  v25 = *(v1 + 96);
  v26 = v7;
  v24 = v9;
  v10 = *(v1 + 136);
  v22 = *(v1 + 144);
  v23 = v10;
  v11 = *(v1 + 176);
  v20 = *(v1 + 184);
  v21 = v11;
  v30 = *(v1 + 193);
  v12 = *(v1 + 216);
  v18 = *(v1 + 224);
  v19 = v12;
  v13 = a1[3];
  v14 = a1;
  v16 = &v18 - v15;
  __swift_project_boxed_opaque_existential_1(v14, v13);
  sub_21430C970();
  sub_2146DAA28();
  if (v5 != 1)
  {
    v28 = v6;
    v29 = v5;
    v31 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
    sub_214045AC0();
    sub_2146DA388();
    if (v2)
    {
      return (*(v27 + 8))(v16, v4);
    }

    if (v8 >> 60 != 11)
    {
      v28 = v26;
      v29 = v8;
      v31 = 1;
      sub_213FDCA18(v26, v8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905680, &unk_2146F3CE0);
      sub_2142E1CAC();
      sub_2146DA388();
      sub_213FDC6BC(v28, v29);
      if (v24 >> 60 != 11)
      {
        v28 = v25;
        v29 = v24;
        v31 = 2;
        sub_213FDCA18(v25, v24);
        sub_2146DA388();
        sub_213FDC6BC(v28, v29);
        if (v22 >> 60 != 11)
        {
          v28 = v23;
          v29 = v22;
          v31 = 3;
          sub_213FDCA18(v23, v22);
          sub_2146DA388();
          sub_213FDC6BC(v28, v29);
          if (v20 >> 60 != 11)
          {
            v28 = v21;
            v29 = v20;
            v31 = 4;
            sub_213FDCA18(v21, v20);
            sub_2146DA388();
            sub_213FDC6BC(v28, v29);
            LOBYTE(v28) = v30;
            v31 = 5;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905688, &qword_2146F3CF0);
            sub_2142E1D30();
            sub_2146DA388();
            if (v18 >> 60 != 11)
            {
              v28 = v19;
              v29 = v18;
              v31 = 6;
              sub_213FDCA18(v19, v18);
              sub_2146DA388();
              sub_213FDC6BC(v28, v29);
              return (*(v27 + 8))(v16, v4);
            }
          }
        }
      }
    }
  }

  result = sub_2146DA018();
  __break(1u);
  return result;
}

uint64_t sub_2142266C0@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  sub_2146ACB74(&v16);
  v7 = v16;
  v6 = v17;
  v8 = v18;
  v9 = v19;
  v21 = a3;
  v20 = v19;
  v16 = 0xD000000000000044;
  v17 = 0x8000000214791BF0;
  v18 = 0xD00000000000001CLL;
  v19 = 0x800000021478A360;

  sub_213FBE134(v8);
  v10 = v7(&v21, &v20, &v16);
  if (v4)
  {
  }

  else
  {
    if (v10)
    {
      sub_213FB7170(v8);

      result = sub_213FB7170(v8);
      *a4 = a1;
      *(a4 + 8) = a2 & 1;
      *(a4 + 16) = v7;
      *(a4 + 24) = v6;
      *(a4 + 32) = a3;
      *(a4 + 40) = v9;
      return result;
    }

    sub_214031C4C();
    swift_allocError();
    *v12 = 0xD000000000000044;
    v12[1] = 0x8000000214791BF0;
    v12[2] = 0xD00000000000001CLL;
    v12[3] = 0x800000021478A360;
    swift_willThrow();
  }

  sub_213FB7170(v8);

  return sub_213FB7170(v8);
}

unint64_t sub_214226868()
{
  if (*v0)
  {
    return 0xD000000000000016;
  }

  else
  {
    return 0xD00000000000001ELL;
  }
}

uint64_t sub_2142268A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 0xD00000000000001ELL && 0x8000000214796BE0 == a2;
  if (v5 || (sub_2146DA6A8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000016 && 0x8000000214796C00 == a2)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_2146DA6A8();

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

uint64_t sub_214226988(uint64_t a1)
{
  v2 = sub_21430C9C4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2142269C4(uint64_t a1)
{
  v2 = sub_21430C9C4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_214226A00@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90A2E0, &qword_2146F5D68);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v20 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21430C9C4();
  sub_2146DAA08();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905898, &unk_2146F3E40);
  LOBYTE(v33) = 0;
  sub_2142E3570();
  sub_2146DA1C8();
  v9 = v28;
  v10 = v29;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904000, &unk_2146EA780);
  LOBYTE(v33) = 1;
  sub_2142E1548();
  sub_2146DA1C8();
  v22 = v10;
  v23 = v9;
  v12 = v28;
  sub_2146ACB74(&v28);
  v13 = v29;
  v26 = v12;
  v27 = v28;
  v14 = v30;
  v33 = v12;
  v21 = v31;
  v32 = v31;
  v28 = 0xD000000000000044;
  v29 = 0x8000000214791BF0;
  v30 = 0xD00000000000001CLL;
  v31 = 0x800000021478A360;

  v25 = v14;
  sub_213FBE134(v14);
  v24 = v13;
  v15 = v27(&v33, &v32, &v28);
  if (v15)
  {
    v16 = v25;
    sub_213FB7170(v25);

    (*(v6 + 8))(v8, v5);
    v17 = v24;

    sub_213FB7170(v16);
    *a2 = v23;
    *(a2 + 8) = v22;
    v18 = v26;
    *(a2 + 16) = v27;
    *(a2 + 24) = v17;
    *(a2 + 32) = v18;
    *(a2 + 40) = v21;

    sub_213FBE134(v18);
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v19 = 0xD000000000000044;
    v19[1] = 0x8000000214791BF0;
    v19[2] = 0xD00000000000001CLL;
    v19[3] = 0x800000021478A360;
    swift_willThrow();

    (*(v6 + 8))(v8, v5);

    v18 = v25;
    sub_213FB7170(v25);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);

  return sub_213FB7170(v18);
}

uint64_t sub_214226DAC(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90A2F0, &qword_2146F5D70);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v11 - v5;
  v7 = *v1;
  v8 = *(v1 + 8);
  v11[0] = v1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21430C9C4();
  sub_2146DAA28();
  v12 = v7;
  v13 = v8;
  v14 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905898, &unk_2146F3E40);
  sub_2142E3778();
  v9 = v11[1];
  sub_2146DA388();
  if (v9)
  {
    return (*(v4 + 8))(v6, v3);
  }

  if (v11[0] != 1)
  {
    v12 = v11[0];
    v14 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904000, &unk_2146EA780);
    sub_2140459AC();
    sub_2146DA388();
    return (*(v4 + 8))(v6, v3);
  }

  result = sub_2146DA018();
  __break(1u);
  return result;
}

uint64_t sub_214226FF8@<X0>(unint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  sub_2146ACDE8(&v29);
  v10 = v29;
  v9 = v30;
  v27 = v29;
  v11 = v31;
  v12 = v32;
  sub_2146AD02C(v40);
  v22 = v40[1];
  v23 = v40[0];
  v25 = v41;
  v26 = v12;
  v40[0] = a3;
  v43 = v12;
  v28 = v40[2];
  v29 = 0xD000000000000035;
  v30 = 0x8000000214791C40;
  v31 = 0xD00000000000001CLL;
  v32 = 0x800000021478A360;

  sub_213FBE134(v11);
  v13 = v10(v40, &v43, &v29);
  if (v5)
  {

LABEL_6:
    a3 = v11;
    v14 = v25;
    v15 = v22;
    v16 = v23;
LABEL_7:

    sub_213FB7170(v11);
    v29 = a1;
    LOBYTE(v30) = a2 & 1;
    *(&v30 + 1) = *v44;
    HIDWORD(v30) = *&v44[3];
    v31 = v27;
    v32 = v9;
    v33 = a3;
    v34 = v26;
    *v35 = v42[0];
    *&v35[3] = *(v42 + 3);
    v36 = v16;
    v37 = v15;
    v38 = v28;
    v39 = v14;
    return sub_2142F9EF4(&v29);
  }

  if ((v13 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v18 = 0xD000000000000035;
    v18[1] = 0x8000000214791C40;
    v18[2] = 0xD00000000000001CLL;
    v18[3] = 0x800000021478A360;
    swift_willThrow();

    goto LABEL_6;
  }

  sub_213FB7170(v11);

  sub_213FB7170(v11);
  v40[0] = a4;
  v14 = v25;
  v43 = v25;
  v29 = 0xD000000000000034;
  v30 = 0x8000000214791C80;
  v31 = 0xD00000000000001CLL;
  v32 = 0x800000021478A360;
  v15 = v22;

  sub_213FBE134(v28);
  v16 = v23;
  v17 = v23(v40, &v43, &v29);
  if ((v17 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v20 = 0xD000000000000034;
    v20[1] = 0x8000000214791C80;
    v20[2] = 0xD00000000000001CLL;
    v20[3] = 0x800000021478A360;
    swift_willThrow();

    v11 = v28;
    goto LABEL_7;
  }

  sub_213FB7170(v28);

  result = sub_213FB7170(v28);
  *a5 = a1;
  *(a5 + 8) = a2 & 1;
  *(a5 + 16) = v27;
  *(a5 + 24) = v9;
  *(a5 + 32) = a3;
  *(a5 + 40) = v26;
  *(a5 + 48) = v23;
  *(a5 + 56) = v22;
  *(a5 + 64) = a4;
  *(a5 + 72) = v25;
  return result;
}

uint64_t sub_214227378()
{
  v1 = 0x73694C776F6C6C61;
  if (*v0 != 1)
  {
    v1 = 0x7473694C796E6564;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD00000000000001CLL;
  }
}

uint64_t sub_2142273DC@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_21437AC18(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_214227404(uint64_t a1)
{
  v2 = sub_21430CA18();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_214227440(uint64_t a1)
{
  v2 = sub_21430CA18();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21422747C@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90A2F8, &qword_2146F5D78);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v40 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21430CA18();
  sub_2146DAA08();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905898, &unk_2146F3E40);
  LOBYTE(v55) = 0;
  sub_2142E3570();
  sub_2146DA1C8();
  v54 = a2;
  v75 = v60;
  v9 = v61;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904000, &unk_2146EA780);
  LOBYTE(v55) = 1;
  sub_2142E1548();
  sub_2146DA1C8();
  v53 = v9;
  v11 = v60;
  v71 = 2;
  sub_2146DA1C8();
  v46 = v72;
  sub_2146ACDE8(&v60);
  v12 = v61;
  v50 = v60;
  v13 = v62;
  v14 = v63;
  sub_2146AD02C(&v55);
  v45 = *(&v55 + 1);
  v47 = v55;
  v48 = v56;
  v49 = BYTE8(v56);
  v52 = v11;
  *&v55 = v11;
  v44 = v14;
  LOBYTE(v59) = v14;
  v60 = 0xD000000000000035;
  v61 = 0x8000000214791C40;
  v43 = 0x8000000214791C40;
  v62 = 0xD00000000000001CLL;
  v63 = 0x800000021478A360;

  v51 = v13;
  sub_213FBE134(v13);
  v15 = v12;
  v16 = v50(&v55, &v59, &v60);
  v17 = v49;
  v41 = 0x800000021478A360;
  v18 = v51;
  v42 = v15;
  if (v16)
  {
    sub_213FB7170(v51);
    v19 = v41;

    sub_213FB7170(v18);
    LOBYTE(v55) = v17;
    v59 = v46;
    v60 = 0xD000000000000034;
    v61 = 0x8000000214791C80;
    v62 = 0xD00000000000001CLL;
    v63 = v19;
    v20 = v45;

    sub_213FBE134(v48);
    v21 = v47(&v59, &v55, &v60);
    v27 = v42;
    if (v21)
    {
      v28 = v48;
      sub_213FB7170(v48);

      (*(v6 + 8))(v8, v5);

      sub_213FB7170(v28);
      *&v55 = v75;
      BYTE8(v55) = v53;
      v29 = v50;
      *&v56 = v50;
      v30 = v52;
      *(&v56 + 1) = v27;
      *&v57 = v52;
      v31 = v44;
      BYTE8(v57) = v44;
      v32 = v47;
      *v58 = v47;
      *&v58[8] = v20;
      v33 = v46;
      *&v58[16] = v46;
      v34 = v49;
      v58[24] = v49;
      v35 = *v58;
      v36 = v54;
      v54[2] = v57;
      v36[3] = v35;
      *(v36 + 57) = *&v58[9];
      v37 = v56;
      *v36 = v55;
      v36[1] = v37;
      sub_2142FA19C(&v55, &v60);
      __swift_destroy_boxed_opaque_existential_1(a1);
      v60 = v75;
      LOBYTE(v61) = v53;
      v62 = v29;
      v63 = v42;
      v64 = v30;
      v65 = v31;
      v67 = v32;
      v68 = v20;
      v69 = v33;
      v70 = v34;
      return sub_2142F9EF4(&v60);
    }

    sub_214031C4C();
    swift_allocError();
    *v38 = 0xD000000000000034;
    v38[1] = 0x8000000214791C80;
    v39 = v41;
    v38[2] = 0xD00000000000001CLL;
    v38[3] = v39;
    swift_willThrow();

    v51 = v48;
    v25 = v27;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    v22 = v43;
    *v23 = 0xD000000000000035;
    v23[1] = v22;
    v24 = v41;
    v23[2] = 0xD00000000000001CLL;
    v23[3] = v24;
    swift_willThrow();

    v25 = v42;
    v52 = v18;
  }

  v26 = v75;
  (*(v6 + 8))(v8, v5);

  sub_213FB7170(v51);
  __swift_destroy_boxed_opaque_existential_1(a1);
  v60 = v26;
  LOBYTE(v61) = v53;
  *(&v61 + 1) = *v74;
  HIDWORD(v61) = *&v74[3];
  v62 = v50;
  v63 = v25;
  v64 = v52;
  v65 = v44;
  *v66 = *v73;
  *&v66[3] = *&v73[3];
  v67 = v47;
  v68 = v45;
  v69 = v48;
  v70 = v49;
  return sub_2142F9EF4(&v60);
}

uint64_t sub_214227C30(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90A308, &qword_2146F5D80);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v13 - v5;
  v7 = *v1;
  v8 = *(v1 + 8);
  v9 = v1[4];
  v14 = v1[8];
  v15 = v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21430CA18();
  sub_2146DAA28();
  v17 = v7;
  v18 = v8;
  v19 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905898, &unk_2146F3E40);
  sub_2142E3778();
  v10 = v16;
  sub_2146DA388();
  if (v10)
  {
    return (*(v4 + 8))(v6, v3);
  }

  v11 = v14;
  if (v15 != 1)
  {
    v17 = v15;
    v19 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904000, &unk_2146EA780);
    sub_2140459AC();
    sub_2146DA388();
    if (v11 != 1)
    {
      v17 = v11;
      v19 = 2;
      sub_2146DA388();
      return (*(v4 + 8))(v6, v3);
    }
  }

  result = sub_2146DA018();
  __break(1u);
  return result;
}

uint64_t sub_214227EC0@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  sub_2146AD4A0(&v16);
  v7 = v16;
  v6 = v17;
  v8 = v18;
  v9 = v19;
  v21 = a3;
  v20 = v19;
  v16 = 0xD00000000000003ELL;
  v17 = 0x8000000214791CC0;
  v18 = 0xD00000000000001CLL;
  v19 = 0x800000021478A360;

  sub_213FBE134(v8);
  v10 = v7(&v21, &v20, &v16);
  if (v4)
  {
  }

  else
  {
    if (v10)
    {
      sub_213FB7170(v8);

      result = sub_213FB7170(v8);
      *a4 = a1;
      *(a4 + 8) = a2 & 1;
      *(a4 + 16) = v7;
      *(a4 + 24) = v6;
      *(a4 + 32) = a3;
      *(a4 + 40) = v9;
      return result;
    }

    sub_214031C4C();
    swift_allocError();
    *v12 = 0xD00000000000003ELL;
    v12[1] = 0x8000000214791CC0;
    v12[2] = 0xD00000000000001CLL;
    v12[3] = 0x800000021478A360;
    swift_willThrow();
  }

  sub_213FB7170(v8);

  return sub_213FB7170(v8);
}

unint64_t sub_21422806C()
{
  if (*v0)
  {
    return 0xD000000000000010;
  }

  else
  {
    return 0xD00000000000001FLL;
  }
}

uint64_t sub_2142280A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 0xD00000000000001FLL && 0x8000000214796C40 == a2;
  if (v5 || (sub_2146DA6A8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000214795220 == a2)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_2146DA6A8();

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

uint64_t sub_21422818C(uint64_t a1)
{
  v2 = sub_21430CA6C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2142281C8(uint64_t a1)
{
  v2 = sub_21430CA6C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_214228204@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90A310, &qword_2146F5D88);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v20 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21430CA6C();
  sub_2146DAA08();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905898, &unk_2146F3E40);
  LOBYTE(v33) = 0;
  sub_2142E3570();
  sub_2146DA1C8();
  v9 = v28;
  v10 = v29;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904000, &unk_2146EA780);
  LOBYTE(v33) = 1;
  sub_2142E1548();
  sub_2146DA1C8();
  v21 = v10;
  v22 = v9;
  v12 = v28;
  sub_2146AD4A0(&v28);
  v13 = v29;
  v25 = v12;
  v26 = v28;
  v14 = v30;
  v33 = v12;
  v20 = v31;
  v32 = v31;
  v28 = 0xD00000000000003ELL;
  v29 = 0x8000000214791CC0;
  v23 = 0x8000000214791CC0;
  v30 = 0xD00000000000001CLL;
  v31 = 0x800000021478A360;

  v27 = v14;
  sub_213FBE134(v14);
  v24 = v13;
  v15 = v26(&v33, &v32, &v28);
  v16 = v23;
  if (v15)
  {
    sub_213FB7170(v27);

    (*(v6 + 8))(v8, v5);
    v17 = v24;

    sub_213FB7170(v27);
    *a2 = v22;
    *(a2 + 8) = v21;
    v18 = v25;
    *(a2 + 16) = v26;
    *(a2 + 24) = v17;
    *(a2 + 32) = v18;
    *(a2 + 40) = v20;

    sub_213FBE134(v18);
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v19 = 0xD00000000000003ELL;
    v19[1] = v16;
    v19[2] = 0xD00000000000001CLL;
    v19[3] = 0x800000021478A360;
    swift_willThrow();

    (*(v6 + 8))(v8, v5);

    v18 = v27;
    sub_213FB7170(v27);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);

  return sub_213FB7170(v18);
}

uint64_t sub_2142285B4(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90A320, &qword_2146F5D90);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v11 - v5;
  v7 = *v1;
  v8 = *(v1 + 8);
  v11[0] = v1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21430CA6C();
  sub_2146DAA28();
  v12 = v7;
  v13 = v8;
  v14 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905898, &unk_2146F3E40);
  sub_2142E3778();
  v9 = v11[1];
  sub_2146DA388();
  if (v9)
  {
    return (*(v4 + 8))(v6, v3);
  }

  if (v11[0] != 1)
  {
    v12 = v11[0];
    v14 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904000, &unk_2146EA780);
    sub_2140459AC();
    sub_2146DA388();
    return (*(v4 + 8))(v6, v3);
  }

  result = sub_2146DA018();
  __break(1u);
  return result;
}

uint64_t sub_214228800@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  sub_2146AD6E4(&v16);
  v7 = v16;
  v6 = v17;
  v8 = v18;
  v9 = v19;
  v21 = a3;
  v20 = v19;
  v16 = 0xD000000000000032;
  v17 = 0x8000000214791D00;
  v18 = 0xD00000000000001CLL;
  v19 = 0x800000021478A360;

  sub_213FBE134(v8);
  v10 = v7(&v21, &v20, &v16);
  if (v4)
  {
  }

  else
  {
    if (v10)
    {
      sub_213FB7170(v8);

      result = sub_213FB7170(v8);
      *a4 = a1;
      *(a4 + 8) = a2 & 1;
      *(a4 + 16) = v7;
      *(a4 + 24) = v6;
      *(a4 + 32) = a3;
      *(a4 + 40) = v9;
      return result;
    }

    sub_214031C4C();
    swift_allocError();
    *v12 = 0xD000000000000032;
    v12[1] = 0x8000000214791D00;
    v12[2] = 0xD00000000000001CLL;
    v12[3] = 0x800000021478A360;
    swift_willThrow();
  }

  sub_213FB7170(v8);

  return sub_213FB7170(v8);
}

uint64_t sub_2142289A8()
{
  if (*v0)
  {
    return 0x694C657669746361;
  }

  else
  {
    return 0xD000000000000011;
  }
}

uint64_t sub_2142289EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD000000000000011 && 0x8000000214796C60 == a2 || (sub_2146DA6A8() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x694C657669746361 && a2 == 0xEA00000000007473)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_2146DA6A8();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
  return result;
}

uint64_t sub_214228ADC(uint64_t a1)
{
  v2 = sub_21430CAC0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_214228B18(uint64_t a1)
{
  v2 = sub_21430CAC0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_214228B54@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90A328, &qword_2146F5D98);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v20 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21430CAC0();
  sub_2146DAA08();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905898, &unk_2146F3E40);
  LOBYTE(v33) = 0;
  sub_2142E3570();
  sub_2146DA1C8();
  v9 = v28;
  v10 = v29;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90A338, &qword_2146F5DA0);
  LOBYTE(v33) = 1;
  sub_21430CB14();
  sub_2146DA1C8();
  v22 = v10;
  v23 = v9;
  v12 = v28;
  sub_2146AD6E4(&v28);
  v13 = v29;
  v26 = v12;
  v27 = v28;
  v14 = v30;
  v33 = v12;
  v21 = v31;
  v32 = v31;
  v28 = 0xD000000000000032;
  v29 = 0x8000000214791D00;
  v30 = 0xD00000000000001CLL;
  v31 = 0x800000021478A360;

  v25 = v14;
  sub_213FBE134(v14);
  v24 = v13;
  v15 = v27(&v33, &v32, &v28);
  if (v15)
  {
    v16 = v25;
    sub_213FB7170(v25);

    (*(v6 + 8))(v8, v5);
    v17 = v24;

    sub_213FB7170(v16);
    *a2 = v23;
    *(a2 + 8) = v22;
    v18 = v26;
    *(a2 + 16) = v27;
    *(a2 + 24) = v17;
    *(a2 + 32) = v18;
    *(a2 + 40) = v21;

    sub_213FBE134(v18);
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v19 = 0xD000000000000032;
    v19[1] = 0x8000000214791D00;
    v19[2] = 0xD00000000000001CLL;
    v19[3] = 0x800000021478A360;
    swift_willThrow();

    (*(v6 + 8))(v8, v5);

    v18 = v25;
    sub_213FB7170(v25);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);

  return sub_213FB7170(v18);
}

uint64_t sub_214228F00(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90A348, &qword_2146F5DA8);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v11 - v5;
  v7 = *v1;
  v8 = *(v1 + 8);
  v11[0] = v1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21430CAC0();
  sub_2146DAA28();
  v12 = v7;
  v13 = v8;
  v14 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905898, &unk_2146F3E40);
  sub_2142E3778();
  v9 = v11[1];
  sub_2146DA388();
  if (v9)
  {
    return (*(v4 + 8))(v6, v3);
  }

  if (v11[0] != 1)
  {
    v12 = v11[0];
    v14 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90A338, &qword_2146F5DA0);
    sub_21430CBBC();
    sub_2146DA388();
    return (*(v4 + 8))(v6, v3);
  }

  result = sub_2146DA018();
  __break(1u);
  return result;
}

uint64_t sub_21422914C@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  sub_2146AD760(&v16);
  v7 = v16;
  v6 = v17;
  v8 = v18;
  v9 = v19;
  v21 = a3;
  v20 = v19;
  v16 = 0xD000000000000034;
  v17 = 0x8000000214791D40;
  v18 = 0xD00000000000001CLL;
  v19 = 0x800000021478A360;

  sub_213FBE134(v8);
  v10 = v7(&v21, &v20, &v16);
  if (v4)
  {
  }

  else
  {
    if (v10)
    {
      sub_213FB7170(v8);

      result = sub_213FB7170(v8);
      *a4 = a1;
      *(a4 + 8) = a2 & 1;
      *(a4 + 16) = v7;
      *(a4 + 24) = v6;
      *(a4 + 32) = a3;
      *(a4 + 40) = v9;
      return result;
    }

    sub_214031C4C();
    swift_allocError();
    *v12 = 0xD000000000000034;
    v12[1] = 0x8000000214791D40;
    v12[2] = 0xD00000000000001CLL;
    v12[3] = 0x800000021478A360;
    swift_willThrow();
  }

  sub_213FB7170(v8);

  return sub_213FB7170(v8);
}

uint64_t sub_2142292F4()
{
  if (*v0)
  {
    return 0x4C6465726F6E6769;
  }

  else
  {
    return 0xD000000000000012;
  }
}

uint64_t sub_21422933C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD000000000000012 && 0x8000000214796C80 == a2 || (sub_2146DA6A8() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x4C6465726F6E6769 && a2 == 0xEB00000000747369)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_2146DA6A8();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
  return result;
}

uint64_t sub_214229428(uint64_t a1)
{
  v2 = sub_21430CC64();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_214229464(uint64_t a1)
{
  v2 = sub_21430CC64();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2142294A0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90A358, &qword_2146F5DB0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v20 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21430CC64();
  sub_2146DAA08();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905898, &unk_2146F3E40);
  LOBYTE(v33) = 0;
  sub_2142E3570();
  sub_2146DA1C8();
  v9 = v28;
  v10 = v29;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90A338, &qword_2146F5DA0);
  LOBYTE(v33) = 1;
  sub_21430CB14();
  sub_2146DA1C8();
  v22 = v10;
  v23 = v9;
  v12 = v28;
  sub_2146AD760(&v28);
  v13 = v29;
  v26 = v12;
  v27 = v28;
  v14 = v30;
  v33 = v12;
  v21 = v31;
  v32 = v31;
  v28 = 0xD000000000000034;
  v29 = 0x8000000214791D40;
  v30 = 0xD00000000000001CLL;
  v31 = 0x800000021478A360;

  v25 = v14;
  sub_213FBE134(v14);
  v24 = v13;
  v15 = v27(&v33, &v32, &v28);
  if (v15)
  {
    v16 = v25;
    sub_213FB7170(v25);

    (*(v6 + 8))(v8, v5);
    v17 = v24;

    sub_213FB7170(v16);
    *a2 = v23;
    *(a2 + 8) = v22;
    v18 = v26;
    *(a2 + 16) = v27;
    *(a2 + 24) = v17;
    *(a2 + 32) = v18;
    *(a2 + 40) = v21;

    sub_213FBE134(v18);
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v19 = 0xD000000000000034;
    v19[1] = 0x8000000214791D40;
    v19[2] = 0xD00000000000001CLL;
    v19[3] = 0x800000021478A360;
    swift_willThrow();

    (*(v6 + 8))(v8, v5);

    v18 = v25;
    sub_213FB7170(v25);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);

  return sub_213FB7170(v18);
}

uint64_t sub_21422984C(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90A368, &qword_2146F5DB8);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v11 - v5;
  v7 = *v1;
  v8 = *(v1 + 8);
  v11[0] = v1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21430CC64();
  sub_2146DAA28();
  v12 = v7;
  v13 = v8;
  v14 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905898, &unk_2146F3E40);
  sub_2142E3778();
  v9 = v11[1];
  sub_2146DA388();
  if (v9)
  {
    return (*(v4 + 8))(v6, v3);
  }

  if (v11[0] != 1)
  {
    v12 = v11[0];
    v14 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90A338, &qword_2146F5DA0);
    sub_21430CBBC();
    sub_2146DA388();
    return (*(v4 + 8))(v6, v3);
  }

  result = sub_2146DA018();
  __break(1u);
  return result;
}

uint64_t sub_214229A98@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
{
  sub_2146ADA20(&v37);
  v9 = v37;
  v8 = v38;
  v10 = v39;
  *v51 = *(&v40 + 1);
  *&v51[3] = HIDWORD(v40);
  v33 = v41;
  v35 = v42;
  v34 = v44;
  v50[0] = *v45;
  *(v50 + 3) = *&v45[3];
  v30 = v46;
  v31 = v47;
  v26 = v43;
  v27 = v48;
  v32 = v49;
  v28 = v40;
  v52 = v40;
  v36 = a1;
  v37 = 0xD000000000000043;
  v38 = 0x8000000214791D80;
  v39 = 0xD00000000000001CLL;
  v40 = 0x800000021478A360;

  sub_213FBE134(v10);
  v11 = v8;
  v29 = v9;
  v12 = v9(&v36, &v52, &v37);
  if (v4)
  {

    v13 = v30;
LABEL_6:
    v17 = v27;
    v14 = v11;

    v19 = v10;
    v15 = v26;
LABEL_7:
    sub_213FB7170(v10);
    v37 = v29;
    v38 = v14;
    v39 = v19;
    LOBYTE(v40) = v28;
    *(&v40 + 1) = *v51;
    HIDWORD(v40) = *&v51[3];
    v41 = v33;
    v42 = v35;
    v43 = v15;
    v44 = v34;
    *v45 = v50[0];
    *&v45[3] = *(v50 + 3);
    v46 = v13;
    v47 = v31;
    v48 = v17;
    v49 = v32;
    return sub_2142FA3F8(&v37);
  }

  v24 = a3;
  if ((v12 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v18 = 0xD000000000000043;
    v18[1] = 0x8000000214791D80;
    v18[2] = 0xD00000000000001CLL;
    v18[3] = 0x800000021478A360;
    swift_willThrow();

    v13 = v30;
    goto LABEL_6;
  }

  sub_213FB7170(v10);

  v14 = v8;

  sub_213FB7170(v10);
  v52 = v34;
  v36 = a2;
  v37 = 0xD000000000000043;
  v38 = 0x8000000214791DD0;
  v39 = 0xD00000000000001CLL;
  v40 = 0x800000021478A360;

  v15 = v26;
  sub_213FBE134(v26);
  v16 = v33(&v36, &v52, &v37);
  v17 = v27;
  if ((v16 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v22 = 0xD000000000000043;
    v22[1] = 0x8000000214791DD0;
    v22[2] = 0xD00000000000001CLL;
    v22[3] = 0x800000021478A360;
    swift_willThrow();

    v13 = v30;

    v10 = v26;
LABEL_11:
    v19 = a1;
    goto LABEL_7;
  }

  sub_213FB7170(v26);

  sub_213FB7170(v26);
  v52 = v32;
  v36 = v24;
  v37 = 0xD000000000000044;
  v38 = 0x8000000214791E20;
  v39 = 0xD00000000000001CLL;
  v40 = 0x800000021478A360;

  sub_213FBE134(v27);
  v21 = v30(&v36, &v52, &v37);
  v13 = v30;
  if ((v21 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v23 = 0xD000000000000044;
    v23[1] = 0x8000000214791E20;
    v23[2] = 0xD00000000000001CLL;
    v23[3] = 0x800000021478A360;
    swift_willThrow();

    v10 = v27;
    v15 = a2;
    goto LABEL_11;
  }

  sub_213FB7170(v27);

  result = sub_213FB7170(v27);
  *a4 = v29;
  *(a4 + 8) = v14;
  *(a4 + 16) = a1;
  *(a4 + 24) = v28;
  *(a4 + 25) = *v51;
  *(a4 + 28) = *&v51[3];
  *(a4 + 32) = v33;
  *(a4 + 40) = v35;
  *(a4 + 48) = a2;
  *(a4 + 56) = v34;
  *(a4 + 57) = v50[0];
  *(a4 + 60) = *(v50 + 3);
  *(a4 + 64) = v30;
  *(a4 + 72) = v31;
  *(a4 + 80) = v24;
  *(a4 + 88) = v32;
  return result;
}

unint64_t sub_214229FD8()
{
  v1 = *v0;
  if (v1 == 1)
  {
    v2 = 0xD000000000000018;
  }

  else
  {
    v2 = 0xD000000000000019;
  }

  if (*v0)
  {
    return v2;
  }

  else
  {
    return 0xD000000000000018;
  }
}

uint64_t sub_21422A028@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_21437AD44(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_21422A050(uint64_t a1)
{
  v2 = sub_21430CCB8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21422A08C(uint64_t a1)
{
  v2 = sub_21430CCB8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21422A0C8@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90A370, &qword_2146F5DC0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v42 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21430CCB8();
  sub_2146DAA08();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v80 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904000, &unk_2146EA780);
  LOBYTE(v57) = 0;
  sub_2142E1548();
  sub_2146DA1C8();
  v9 = v63;
  LOBYTE(v57) = 1;
  sub_2146DA1C8();
  v56 = v9;
  v10 = v63;
  v76 = 2;
  sub_2146DA1C8();
  v50 = v10;
  v47 = v77;
  sub_2146ADA20(&v63);
  v13 = v63;
  v12 = v64;
  v14 = v65;
  *v79 = *(&v66 + 1);
  *&v79[3] = HIDWORD(v66);
  v51 = v67;
  v54 = v68;
  v55 = v69;
  v52 = v70;
  v78[0] = *v71;
  *(v78 + 3) = *&v71[3];
  v45 = v72;
  v49 = v73;
  v48 = v74;
  v46 = v75;
  *&v57 = v56;
  v43 = v66;
  LOBYTE(v62) = v66;
  v63 = 0xD000000000000043;
  v64 = 0x8000000214791D80;
  v65 = 0xD00000000000001CLL;
  v66 = 0x800000021478A360;

  v42 = v14;
  sub_213FBE134(v14);
  v53 = v12;
  v44 = v13;
  v15 = v13(&v57, &v62, &v63);
  if (v15)
  {
    v16 = v42;
    sub_213FB7170(v42);

    sub_213FB7170(v16);
    *&v57 = v50;
    LOBYTE(v62) = v52;
    v63 = 0xD000000000000043;
    v64 = 0x8000000214791DD0;
    v65 = 0xD00000000000001CLL;
    v66 = 0x800000021478A360;

    sub_213FBE134(v55);
    v17 = v51(&v57, &v62, &v63);
    v42 = 0x800000021478A360;
    v23 = v46;
    if ((v17 & 1) == 0)
    {
      sub_214031C4C();
      swift_allocError();
      *v26 = 0xD000000000000043;
      v26[1] = 0x8000000214791DD0;
      v27 = v42;
      v26[2] = 0xD00000000000001CLL;
      v26[3] = v27;
      swift_willThrow();

      v20 = v55;
      v21 = v23;
      v19 = v53;
      goto LABEL_8;
    }

    v24 = v55;
    sub_213FB7170(v55);
    v25 = v42;

    sub_213FB7170(v24);
    LOBYTE(v57) = v23;
    v62 = v47;
    v63 = 0xD000000000000044;
    v64 = 0x8000000214791E20;
    v65 = 0xD00000000000001CLL;
    v66 = v25;

    sub_213FBE134(v48);
    if (v45(&v62, &v57, &v63))
    {
      v28 = v48;
      sub_213FB7170(v48);

      (*(v6 + 8))(v8, v5);
      v29 = v49;

      sub_213FB7170(v28);
      *&v57 = v44;
      *(&v57 + 1) = v53;
      *&v58 = v56;
      BYTE8(v58) = v43;
      HIDWORD(v58) = *&v79[3];
      *(&v58 + 9) = *v79;
      v30 = v51;
      *&v59 = v51;
      v31 = v54;
      *(&v59 + 1) = v54;
      v32 = v50;
      *&v60 = v50;
      v33 = v52;
      BYTE8(v60) = v52;
      *(&v60 + 9) = v78[0];
      HIDWORD(v60) = *(v78 + 3);
      v34 = v45;
      *v61 = v45;
      *&v61[8] = v29;
      *&v61[16] = v47;
      v21 = v46;
      v61[24] = v46;
      v35 = v58;
      v36 = v80;
      *v80 = v57;
      v36[1] = v35;
      v37 = v59;
      v38 = v60;
      v39 = *v61;
      *(v36 + 73) = *&v61[9];
      v36[3] = v38;
      v36[4] = v39;
      v36[2] = v37;
      sub_2142FA348(&v57, &v63);
      __swift_destroy_boxed_opaque_existential_1(a1);
      v63 = v44;
      v64 = v53;
      v65 = v56;
      LOBYTE(v66) = v43;
      *(&v66 + 1) = *v79;
      HIDWORD(v66) = *&v79[3];
      v67 = v30;
      v68 = v31;
      v69 = v32;
      v70 = v33;
      *v71 = v78[0];
      *&v71[3] = *(v78 + 3);
      v72 = v34;
      v73 = v49;
      v22 = &v73;
      goto LABEL_9;
    }

    sub_214031C4C();
    swift_allocError();
    *v40 = 0xD000000000000044;
    v40[1] = 0x8000000214791E20;
    v41 = v42;
    v40[2] = 0xD00000000000001CLL;
    v40[3] = v41;
    swift_willThrow();

    v20 = v48;
    v55 = v50;
    v19 = v53;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v18 = 0xD000000000000043;
    v18[1] = 0x8000000214791D80;
    v18[2] = 0xD00000000000001CLL;
    v18[3] = 0x800000021478A360;
    swift_willThrow();

    v19 = v53;

    v20 = v42;
    v56 = v42;
  }

  v21 = v46;
LABEL_8:
  (*(v6 + 8))(v8, v5);

  sub_213FB7170(v20);
  __swift_destroy_boxed_opaque_existential_1(a1);
  v63 = v44;
  v64 = v19;
  v65 = v56;
  LOBYTE(v66) = v43;
  *(&v66 + 1) = *v79;
  HIDWORD(v66) = *&v79[3];
  v67 = v51;
  v68 = v54;
  v69 = v55;
  v70 = v52;
  *v71 = v78[0];
  *&v71[3] = *(v78 + 3);
  v72 = v45;
  v73 = v49;
  v22 = &v74;
LABEL_9:
  v74 = *(v22 - 32);
  v75 = v21;
  return sub_2142FA3F8(&v63);
}

uint64_t sub_21422AA98(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90A380, &qword_2146F5DC8);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v11 - v6;
  v8 = v1[2];
  v9 = v1[6];
  v12 = v1[10];
  v13 = v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21430CCB8();
  sub_2146DAA28();
  if (v8 == 1)
  {
LABEL_9:
    result = sub_2146DA018();
    __break(1u);
    return result;
  }

  v15 = v8;
  v14 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904000, &unk_2146EA780);
  sub_2140459AC();
  sub_2146DA388();
  if (!v2)
  {
    if (v13 != 1)
    {
      v15 = v13;
      v14 = 1;
      sub_2146DA388();
      if (v12 != 1)
      {
        v15 = v12;
        v14 = 2;
        sub_2146DA388();
        return (*(v5 + 8))(v7, v4);
      }
    }

    goto LABEL_9;
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_21422AD24@<X0>(unint64_t a1@<X0>, char *a2@<X1>, unint64_t a3@<X2>, char *a4@<X3>, unint64_t a5@<X4>, char *a6@<X5>, uint64_t a7@<X6>, unint64_t a8@<X7>, uint64_t a9@<X8>)
{
  sub_2146222A0(&v69);
  v13 = v69;
  v12 = v70;
  v14 = v72;
  v94[0] = *v74;
  *(v94 + 3) = *&v74[3];
  v60 = v75;
  v65 = v76;
  v44 = v71;
  v45 = v77;
  v95 = v78;
  v61 = v79;
  v93[0] = *v80;
  *(v93 + 3) = *&v80[3];
  v64 = v83;
  v62 = v82;
  v63 = v84;
  v49 = v85;
  *(v92 + 3) = *&v86[3];
  v92[0] = *v86;
  v48 = v87;
  v52 = v81;
  v53 = v88;
  v54 = v90;
  v55 = v89;
  v56 = v91;
  v67 = a1;
  v68 = a2;
  v51 = v73;
  v66 = v73;
  v69 = 0xD000000000000034;
  v70 = 0x8000000214791E70;
  v71 = 0xD00000000000001CLL;
  v72 = 0x800000021478A360;

  v15 = v12;
  v50 = v13;
  v16 = v13(&v67, &v66, &v69);
  if (v9)
  {
    sub_213FDC6BC(a7, a8);

    v17 = v60;
    v18 = v15;
LABEL_6:

    v22 = v44;
    v23 = v45;
    v24 = v49;
    v25 = v52;
    v26 = v53;
    v19 = v61;
    v27 = v56;
    v29 = v54;
    v28 = v55;
    v30 = v48;
LABEL_7:
    v69 = v50;
    v70 = v18;
    v71 = v22;
    v72 = v14;
    v73 = v51;
    *v74 = v94[0];
    *&v74[3] = *(v94 + 3);
    v75 = v17;
    v76 = v65;
    v77 = v23;
    v78 = v95;
    v79 = v19;
    *v80 = v93[0];
    *&v80[3] = *(v93 + 3);
    v81 = v25;
    v82 = v62;
    v83 = v64;
    v84 = v63;
    v85 = v24;
    *&v86[3] = *(v92 + 3);
    *v86 = v92[0];
    v87 = v30;
    v88 = v26;
    v89 = v28;
    v90 = v29;
    v91 = v27;
    return sub_21430CD0C(&v69);
  }

  v39 = a1;
  v40 = a2;
  if ((v16 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v21 = 0xD000000000000034;
    v21[1] = 0x8000000214791E70;
    v21[2] = 0xD00000000000001CLL;
    v21[3] = 0x800000021478A360;
    swift_willThrow();

    sub_213FDC6BC(a7, a8);

    v17 = v60;
    v18 = v15;
    goto LABEL_6;
  }

  v18 = v12;

  v67 = a3;
  v68 = a4;
  v19 = v61;
  v66 = v61;
  v69 = 0xD000000000000030;
  v70 = 0x8000000214791EB0;
  v71 = 0xD00000000000001CLL;
  v72 = 0x800000021478A360;

  v20 = v60(&v67, &v66, &v69);
  v17 = v60;
  v24 = v49;
  if ((v20 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v33 = 0xD000000000000030;
    v33[1] = 0x8000000214791EB0;
    v33[2] = 0xD00000000000001CLL;
    v33[3] = 0x800000021478A360;
    swift_willThrow();

    sub_213FDC6BC(a7, a8);

    v25 = v52;

    v22 = a1;
    v14 = v40;
    v27 = v56;
    v29 = v54;
    v28 = v55;
    v30 = v48;
    v26 = v53;
    v23 = v45;
    goto LABEL_7;
  }

  v67 = a5;
  v68 = a6;
  v66 = v49;
  v69 = 0xD000000000000035;
  v70 = 0x8000000214791EF0;
  v71 = 0xD00000000000001CLL;
  v72 = 0x800000021478A360;

  sub_213FDC9D0(v64, v63);
  v25 = v52;
  v32 = v52(&v67, &v66, &v69);
  if ((v32 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v38 = 0xD000000000000035;
    v38[1] = 0x8000000214791EF0;
    v38[2] = 0xD00000000000001CLL;
    v38[3] = 0x800000021478A360;
    swift_willThrow();

    sub_213FDC6BC(a7, a8);

    v17 = v60;

    sub_213FDC6D0(v64, v63);
    v14 = v40;
    v23 = a3;
    v95 = a4;
    v19 = v61;
    v27 = v56;
    v29 = v54;
    v28 = v55;
    v30 = v48;
    v26 = v53;
    v22 = v39;
    goto LABEL_7;
  }

  sub_213FDC6D0(v64, v63);

  sub_213FDC6D0(v64, v63);
  v95 = "onRequest.displayName";
  v69 = v48;
  v70 = v53;
  v71 = v55;
  v72 = v54;
  v73 = v56;

  sub_21404F7E0(v55, v54);
  sub_214032118(a7, a8, 2, 0xD000000000000032, 0x8000000214791F30, 0xD00000000000001CLL, 0x800000021478A360);
  sub_213FDC6BC(a7, a8);

  v34 = v69;
  v35 = v70;
  v37 = v71;
  v36 = v72;
  v57 = v73;

  result = sub_214032564(v55, v54);
  *a9 = v50;
  *(a9 + 8) = v18;
  *(a9 + 16) = v39;
  *(a9 + 24) = v40;
  *(a9 + 32) = v51;
  *(a9 + 33) = v94[0];
  *(a9 + 36) = *(v94 + 3);
  *(a9 + 40) = v60;
  *(a9 + 48) = v65;
  *(a9 + 56) = a3;
  *(a9 + 64) = a4;
  *(a9 + 72) = v61;
  *(a9 + 73) = v93[0];
  *(a9 + 76) = *(v93 + 3);
  *(a9 + 80) = v52;
  *(a9 + 88) = v62;
  *(a9 + 96) = a5;
  *(a9 + 104) = a6;
  *(a9 + 112) = v49;
  *(a9 + 116) = *(v92 + 3);
  *(a9 + 113) = v92[0];
  *(a9 + 120) = v34;
  *(a9 + 128) = v35;
  *(a9 + 136) = v37;
  *(a9 + 144) = v36;
  *(a9 + 152) = v57;
  return result;
}

uint64_t sub_21422B4C8()
{
  v1 = 0x696669746E656469;
  v2 = 0x4E79616C70736964;
  if (*v0 != 2)
  {
    v2 = 0x6F666E4972657375;
  }

  if (*v0)
  {
    v1 = 0x656C646E6168;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_21422B54C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_21437AE6C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_21422B574(uint64_t a1)
{
  v2 = sub_21430CD60();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21422B5B0(uint64_t a1)
{
  v2 = sub_21430CD60();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21422B5EC@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90A388, &qword_2146F5DD0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v62 - v7;
  v9 = a1[3];
  v132 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v9);
  sub_21430CD60();
  sub_2146DAA08();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(v132);
  }

  v10 = v6;
  v91 = a2;
  LOBYTE(v104) = 0;
  v11 = sub_2146DA168();
  v13 = v12;
  v90 = v11;
  LOBYTE(v104) = 1;
  v15 = v5;
  v14 = sub_2146DA168();
  v17 = v16;
  v89 = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
  LOBYTE(v92) = 2;
  sub_2142E12FC();
  sub_2146DA1C8();
  v88 = v17;
  v19 = v104;
  v20 = v105;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905680, &unk_2146F3CE0);
  v126 = 3;
  sub_2142E1278();
  sub_2146DA1C8();
  v65 = v19;
  v69 = v15;
  v77 = v20;
  v71 = v127;
  v72 = v128;
  sub_2146222A0(&v104);
  v21 = v105;
  v22 = v107;
  v131[0] = *v109;
  *(v131 + 3) = *&v109[3];
  v84 = v110;
  v86 = v111;
  v87 = v104;
  v66 = v106;
  v67 = v112;
  v85 = v114;
  v130[0] = *v115;
  *(v130 + 3) = *&v115[3];
  v81 = v117;
  v82 = v113;
  v80 = v118;
  v78 = v119;
  v79 = v120;
  *(v129 + 3) = *&v121[3];
  v129[0] = *v121;
  v74 = v122;
  v75 = v116;
  v76 = v123;
  v23 = v124;
  LODWORD(v73) = v125;
  *&v92 = v90;
  *(&v92 + 1) = v13;
  v70 = v108;
  LOBYTE(v100) = v108;
  v104 = 0xD000000000000034;
  v105 = 0x8000000214791E70;
  v106 = 0xD00000000000001CLL;
  v107 = 0x800000021478A360;
  v68 = v22;

  v83 = v21;
  v24 = v87(&v92, &v100, &v104);
  v63 = v23;
  v64 = 0x800000021478A360;
  v25 = v88;
  if (v24)
  {
    v26 = v64;

    *&v92 = v89;
    *(&v92 + 1) = v25;
    LOBYTE(v100) = v85;
    v104 = 0xD000000000000030;
    v105 = 0x8000000214791EB0;
    v106 = 0xD00000000000001CLL;
    v107 = v26;

    v27 = v84(&v92, &v100, &v104);
    v35 = v77;
    if (v27)
    {
      v36 = v64;

      *&v92 = v65;
      *(&v92 + 1) = v35;
      LOBYTE(v100) = v79;
      v104 = 0xD000000000000035;
      v105 = 0x8000000214791EF0;
      v106 = 0xD00000000000001CLL;
      v107 = v36;

      v37 = v78;
      sub_213FDC9D0(v80, v78);
      v38 = v75(&v92, &v100, &v104);
      if (v38)
      {
        v82 = v13;
        v41 = v80;
        v42 = v37;
        sub_213FDC6D0(v80, v37);
        v43 = v64;

        sub_213FDC6D0(v41, v42);
        v100 = v74;
        v44 = v76;
        v45 = v63;
        v101 = v76;
        v102 = v63;
        v103 = v73;

        sub_21404F7E0(v44, v45);
        sub_214032118(v71, v72, 2, 0xD000000000000032, 0x8000000214791F30, 0xD00000000000001CLL, v43);

        sub_213FDC6BC(v71, v72);
        (*(v10 + 8))(v8, v69);
        v48 = v100;
        v78 = *(&v100 + 1);
        v80 = v100;
        v49 = v102;
        v73 = v101;
        *&v74 = v102;
        LODWORD(v72) = v103;

        sub_214032564(v76, v63);
        v50 = v82;
        *&v92 = v87;
        *(&v92 + 1) = v83;
        *&v93 = v90;
        *(&v93 + 1) = v82;
        LOBYTE(v94) = v70;
        *(&v94 + 1) = v131[0];
        DWORD1(v94) = *(v131 + 3);
        *(&v94 + 1) = v84;
        *&v95 = v86;
        *(&v95 + 1) = v89;
        *&v96 = v88;
        BYTE8(v96) = v85;
        *(&v96 + 9) = v130[0];
        HIDWORD(v96) = *(v130 + 3);
        v51 = v75;
        *&v97 = v75;
        *(&v97 + 1) = v81;
        v52 = v77;
        *&v98 = v65;
        *(&v98 + 1) = v77;
        v99[0] = v79;
        *&v99[1] = v129[0];
        *&v99[4] = *(v129 + 3);
        *&v99[8] = v48;
        v53 = v73;
        *&v99[24] = v73;
        *&v99[32] = v49;
        LOBYTE(v49) = v72;
        v99[40] = v72;
        v54 = v93;
        v55 = v91;
        *v91 = v92;
        v55[1] = v54;
        v56 = v94;
        v57 = v95;
        v58 = v97;
        v55[4] = v96;
        v55[5] = v58;
        v55[2] = v56;
        v55[3] = v57;
        v59 = v98;
        v60 = *v99;
        v61 = *&v99[16];
        *(v55 + 137) = *&v99[25];
        v55[7] = v60;
        v55[8] = v61;
        v55[6] = v59;
        sub_21430CDB4(&v92, &v104);
        __swift_destroy_boxed_opaque_existential_1(v132);
        v104 = v87;
        v105 = v83;
        v106 = v90;
        v107 = v50;
        v108 = v70;
        *v109 = v131[0];
        *&v109[3] = *(v131 + 3);
        v110 = v84;
        v111 = v86;
        v112 = v89;
        v113 = v88;
        v114 = v85;
        *v115 = v130[0];
        *&v115[3] = *(v130 + 3);
        v116 = v51;
        v117 = v81;
        v118 = v65;
        v119 = v52;
        v120 = v79;
        *v121 = v129[0];
        *&v121[3] = *(v129 + 3);
        *&v122 = v80;
        *(&v122 + 1) = v78;
        v123 = v53;
        v124 = v74;
        v125 = v49;
        return sub_21430CD0C(&v104);
      }

      sub_214031C4C();
      swift_allocError();
      *v46 = 0xD000000000000035;
      v46[1] = 0x8000000214791EF0;
      v47 = v64;
      v46[2] = 0xD00000000000001CLL;
      v46[3] = v47;
      swift_willThrow();

      sub_213FDC6BC(v71, v72);
      v30 = v75;
      (*(v10 + 8))(v8, v69);

      sub_213FDC6D0(v80, v37);
      v34 = v88;
      v33 = v89;
      v32 = v83;
      v31 = v63;
    }

    else
    {
      sub_214031C4C();
      swift_allocError();
      *v39 = 0xD000000000000030;
      v39[1] = 0x8000000214791EB0;
      v40 = v64;
      v39[2] = 0xD00000000000001CLL;
      v39[3] = v40;
      swift_willThrow();

      v30 = v75;
      sub_213FDC6BC(v71, v72);
      (*(v10 + 8))(v8, v69);
      v34 = v82;

      v32 = v83;
      v31 = v63;
      v33 = v67;
    }
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v28 = 0xD000000000000034;
    v28[1] = 0x8000000214791E70;
    v29 = v64;
    v28[2] = 0xD00000000000001CLL;
    v28[3] = v29;
    swift_willThrow();

    v30 = v75;
    v31 = v63;

    sub_213FDC6BC(v71, v72);
    (*(v10 + 8))(v8, v69);
    v13 = v68;

    v32 = v83;

    v33 = v67;
    v90 = v66;
    v34 = v82;
  }

  __swift_destroy_boxed_opaque_existential_1(v132);
  v104 = v87;
  v105 = v32;
  v106 = v90;
  v107 = v13;
  v108 = v70;
  *v109 = v131[0];
  *&v109[3] = *(v131 + 3);
  v110 = v84;
  v111 = v86;
  v112 = v33;
  v113 = v34;
  v114 = v85;
  *v115 = v130[0];
  *&v115[3] = *(v130 + 3);
  v116 = v30;
  v117 = v81;
  v118 = v80;
  v119 = v78;
  v120 = v79;
  *&v121[3] = *(v129 + 3);
  *v121 = v129[0];
  v122 = v74;
  v123 = v76;
  v124 = v31;
  v125 = v73;
  return sub_21430CD0C(&v104);
}

uint64_t sub_21422C188(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90A398, &qword_2146F5DD8);
  v20 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = &v13 - v4;
  v6 = v1[3];
  v7 = v1[7];
  v8 = v1[8];
  v9 = v1[13];
  v17 = v1[12];
  v18 = v7;
  v10 = v1[18];
  v15 = v1[17];
  v16 = v9;
  v14 = v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21430CD60();
  sub_2146DAA28();
  if (!v6)
  {
    goto LABEL_8;
  }

  LOBYTE(v21) = 0;

  v11 = v19;
  sub_2146DA328();
  if (v11)
  {
    (*(v20 + 8))(v5, v3);
  }

  if (!v8 || (LOBYTE(v21) = 1, , sub_2146DA328(), , v16 == 1) || (v21 = v17, v22 = v16, v23 = 2, __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050), sub_214045AC0(), sub_2146DA388(), v14 >> 60 == 11))
  {
LABEL_8:
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v21 = v15;
    v22 = v14;
    v23 = 3;
    sub_213FDCA18(v15, v14);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905680, &unk_2146F3CE0);
    sub_2142E1CAC();
    sub_2146DA388();
    sub_213FDC6BC(v21, v22);
    return (*(v20 + 8))(v5, v3);
  }

  return result;
}

uint64_t sub_21422C4D4@<X0>(uint64_t (*a1)(void, void, void)@<X0>, unint64_t a2@<X1>, uint64_t (*a3)(void, void, void)@<X2>, unint64_t a4@<X3>, char *a5@<X4>, uint64_t *a6@<X5>, uint64_t a7@<X8>)
{
  v32 = *a5;
  v33 = *a6;
  v34 = a6[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v9 = swift_allocObject();
  *(v9 + 16) = sub_214059900;
  *(v9 + 24) = 0;
  *(inited + 32) = v9;
  sub_214042B80(inited, &v37);
  v11 = v37;
  v10 = v38;
  v12 = v40;
  v26 = v39;
  v13 = v41;
  v14 = swift_initStackObject();
  *(v14 + 16) = xmmword_2146E9BF0;
  v15 = swift_allocObject();
  *(v15 + 16) = sub_21430CE10;
  *(v15 + 24) = 0;
  *(v14 + 32) = v15;
  sub_214042B80(v14, &v54);
  v35 = v54;
  v36 = v55;
  v25 = v56;
  v62 = v57;
  v29 = v58;
  v30 = v13;
  v54 = a1;
  v55 = a2;
  v53 = v13;
  v37 = 0xD000000000000035;
  v38 = 0x8000000214791F70;
  v39 = 0xD00000000000001CLL;
  v40 = 0x800000021478A360;

  v16 = v11(&v54, &v53, &v37);
  if (v31)
  {

    v17 = v26;
    v18 = v29;
  }

  else
  {
    v17 = v26;
    if (v16)
    {

      v54 = a3;
      v55 = a4;
      v18 = v29;
      v53 = v29;
      v37 = 0xD000000000000031;
      v38 = 0x8000000214791FB0;
      v39 = 0xD00000000000001CLL;
      v40 = 0x800000021478A360;

      v19 = v35(&v54, &v53, &v37);
      v17 = a1;
      if (v19)
      {

        result = swift_bridgeObjectRelease_n();
        *a7 = v11;
        *(a7 + 8) = v10;
        *(a7 + 16) = a1;
        *(a7 + 24) = a2;
        *(a7 + 32) = v30;
        *(a7 + 40) = v35;
        *(a7 + 48) = v36;
        *(a7 + 56) = a3;
        *(a7 + 64) = a4;
        *(a7 + 72) = v29;
        *(a7 + 73) = v32;
        *(a7 + 80) = v33;
        *(a7 + 88) = v34;
        return result;
      }

      sub_214031C4C();
      swift_allocError();
      *v22 = 0xD000000000000031;
      v22[1] = 0x8000000214791FB0;
      v22[2] = 0xD00000000000001CLL;
      v22[3] = 0x800000021478A360;
      swift_willThrow();

      v12 = a2;
    }

    else
    {
      sub_214031C4C();
      swift_allocError();
      *v20 = 0xD000000000000035;
      v20[1] = 0x8000000214791F70;
      v20[2] = 0xD00000000000001CLL;
      v20[3] = 0x800000021478A360;
      swift_willThrow();

      v18 = v29;
    }
  }

  v37 = v11;
  v38 = v10;
  v39 = v17;
  v40 = v12;
  v41 = v30;
  *v42 = v61[0];
  *&v42[3] = *(v61 + 3);
  v43 = v35;
  v44 = v36;
  v45 = v25;
  v46 = v62;
  v47 = v18;
  v48 = v32;
  v49 = v59;
  v50 = v60;
  v51 = v33;
  v52 = v34;
  return sub_21430CE14(&v37);
}

uint64_t sub_21422C948()
{
  v1 = 0x696669746E656469;
  v2 = 0x6F6974617265706FLL;
  if (*v0 != 2)
  {
    v2 = 0x6C61766F72707061;
  }

  if (*v0)
  {
    v1 = 0x656C646E6168;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_21422C9D4@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_21437AFD8(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_21422C9FC(uint64_t a1)
{
  v2 = sub_21430CE68();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21422CA38(uint64_t a1)
{
  v2 = sub_21430CE68();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21422CA74@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90A3A0, &qword_2146F5DE0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v42 - v7;
  v9 = a1[3];
  v86 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v9);
  sub_21430CE68();
  sub_2146DAA08();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(v86);
  }

  v10 = v6;
  LOBYTE(v65) = 0;
  v11 = sub_2146DA168();
  v13 = v12;
  v14 = v11;
  LOBYTE(v65) = 1;
  v56 = sub_2146DA168();
  v57 = v15;
  LOBYTE(v58) = 2;
  sub_21430CEBC();
  sub_2146DA1C8();
  v54 = v65;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90A3B8, &qword_2146F5DE8);
  v80 = 3;
  sub_21430CF10();
  sub_2146DA1C8();
  v55 = v81;
  v53 = v82;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  v48 = xmmword_2146E9BF0;
  *(inited + 16) = xmmword_2146E9BF0;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v18 = swift_allocObject();
  *(v18 + 16) = sub_214059900;
  *(v18 + 24) = 0;
  *(inited + 32) = v18;
  sub_213FDCA18(v55, v53);
  sub_214042B80(inited, &v65);
  v52 = v65;
  v42 = v66;
  v50 = v67;
  v51 = v68;
  v19 = swift_initStackObject();
  *(v19 + 16) = v48;
  v20 = swift_allocObject();
  *(v20 + 16) = sub_21438F68C;
  *(v20 + 24) = 0;
  *(v19 + 32) = v20;
  sub_214042B80(v19, &v58);
  *&v48 = *(&v58 + 1);
  v46 = v58;
  v49 = *(&v59 + 1);
  v43 = v59;
  LODWORD(v47) = v60;
  *&v58 = v14;
  *(&v58 + 1) = v13;
  LOBYTE(v64[0]) = v51;
  *&v65 = 0xD000000000000035;
  *(&v65 + 1) = 0x8000000214791F70;
  v44 = 0x8000000214791F70;
  v45 = 0x800000021478A360;
  v66 = 0xD00000000000001CLL;
  v67 = 0x800000021478A360;

  v21 = (v52)(&v58, v64, &v65);
  v22 = v44;
  if (v21)
  {
    v23 = v45;
    v42 = 0;

    v64[0] = v56;
    v64[1] = v57;
    LOBYTE(v58) = v47;
    *&v65 = 0xD000000000000031;
    *(&v65 + 1) = 0x8000000214791FB0;
    v50 = 0x8000000214791FB0;
    v66 = 0xD00000000000001CLL;
    v67 = v23;

    v24 = v42;
    v25 = v46(v64, &v58, &v65);
    if (v24)
    {
    }

    else
    {
      v31 = v50;
      if (v25)
      {

        v32 = v55;

        sub_213FDC6BC(v32, v53);
        (*(v10 + 8))(v8, v5);

        v33 = v48;

        v58 = v52;
        *&v59 = v14;
        *(&v59 + 1) = v13;
        v34 = v51;
        LOBYTE(v60) = v51;
        *(&v60 + 1) = v85[0];
        DWORD1(v60) = *(v85 + 3);
        *(&v60 + 1) = v46;
        *&v61 = v33;
        *(&v61 + 1) = v56;
        *&v62 = v57;
        BYTE8(v62) = v47;
        v35 = v32;
        LOBYTE(v32) = v54;
        BYTE9(v62) = v54;
        *(&v62 + 10) = v83;
        HIWORD(v62) = v84;
        *&v63 = v35;
        *(&v63 + 1) = v53;
        v36 = v59;
        *a2 = v52;
        a2[1] = v36;
        v37 = v60;
        v38 = v61;
        v39 = v63;
        a2[4] = v62;
        a2[5] = v39;
        a2[2] = v37;
        a2[3] = v38;
        sub_21430CFE8(&v58, &v65);
        __swift_destroy_boxed_opaque_existential_1(v86);
        v65 = v52;
        v66 = v14;
        v67 = v13;
        v68 = v34;
        *v69 = v85[0];
        *&v69[3] = *(v85 + 3);
        v70 = v46;
        v71 = v33;
        v72 = v56;
        v73 = v57;
        v74 = v47;
        v75 = v32;
        v76 = v83;
        v77 = v84;
        v78 = v55;
        v79 = v53;
        return sub_21430CE14(&v65);
      }

      sub_214031C4C();
      swift_allocError();
      *v40 = 0xD000000000000031;
      v40[1] = v31;
      v41 = v45;
      v40[2] = 0xD00000000000001CLL;
      v40[3] = v41;
      swift_willThrow();
    }

    sub_213FDC6BC(v55, v53);
    v56 = v49;
    v57 = v48;
    v29 = v13;
    v30 = *(&v52 + 1);
    v28 = v53;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v26 = 0xD000000000000035;
    v26[1] = v22;
    v27 = v45;
    v26[2] = 0xD00000000000001CLL;
    v26[3] = v27;
    swift_willThrow();

    v28 = v53;
    sub_213FDC6BC(v55, v53);
    v29 = v50;
    v30 = *(&v52 + 1);
    v56 = v50;
    v57 = *(&v52 + 1);
    v14 = v42;
  }

  (*(v10 + 8))(v8, v5);

  __swift_destroy_boxed_opaque_existential_1(v86);
  *&v65 = v52;
  *(&v65 + 1) = v30;
  v66 = v14;
  v67 = v29;
  v68 = v51;
  *v69 = v85[0];
  *&v69[3] = *(v85 + 3);
  v70 = v46;
  v71 = v48;
  v72 = v43;
  v73 = v49;
  v74 = v47;
  v75 = v54;
  v76 = v83;
  v77 = v84;
  v78 = v55;
  v79 = v28;
  return sub_21430CE14(&v65);
}

uint64_t sub_21422D228(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90A3D0, &qword_2146F5DF0);
  v17 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = &v12 - v4;
  v6 = *(v1 + 24);
  v7 = *(v1 + 56);
  v8 = *(v1 + 64);
  v20 = *(v1 + 73);
  v9 = *(v1 + 88);
  v14 = *(v1 + 80);
  v15 = v7;
  v13 = v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21430CE68();
  sub_2146DAA28();
  if (!v6)
  {
    goto LABEL_6;
  }

  LOBYTE(v18) = 0;

  v10 = v16;
  sub_2146DA328();
  if (v10)
  {
    (*(v17 + 8))(v5, v3);
  }

  if (v8)
  {
    LOBYTE(v18) = 1;

    sub_2146DA328();

    LOBYTE(v18) = v20;
    v21 = 2;
    sub_21430D044();
    sub_2146DA388();
    v18 = v14;
    v19 = v13;
    v21 = 3;
    sub_213FDCA18(v14, v13);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90A3B8, &qword_2146F5DE8);
    sub_21430D098();
    sub_2146DA388();
    sub_213FDC6BC(v18, v19);
    return (*(v17 + 8))(v5, v3);
  }

  else
  {
LABEL_6:
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

uint64_t sub_21422D568@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6974617469766E69 && a2 == 0xEE00617461446E6FLL)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_2146DA6A8();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_21422D5F8(uint64_t a1)
{
  v2 = sub_21430D170();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21422D634(uint64_t a1)
{
  v2 = sub_21430D170();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21422D6B4@<X0>(void *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t (*a4)(void)@<X3>, _OWORD *a6@<X8>)
{
  v15 = a6;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v17 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = &v14 - v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  a4();
  sub_2146DAA08();
  if (!v6)
  {
    v12 = v15;
    sub_21406116C();
    sub_2146DA1C8();
    (*(v17 + 8))(v11, v9);
    *v12 = v16;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_21422D870(void *a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(uint64_t), uint64_t a5)
{
  v15[0] = a4;
  v15[1] = a5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v15 - v9;
  v11 = *v5;
  v12 = v5[1];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v13 = sub_21402D9F8(v11, v12);
  (v15[0])(v13);
  sub_2146DAA28();
  v16 = v11;
  v17 = v12;
  sub_214061684();
  sub_2146DA388();
  sub_213FB54FC(v16, v17);
  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_21422DA04@<X0>(uint64_t (*a1)(void, void, void)@<X0>, unint64_t a2@<X1>, uint64_t (*a3)(void, void, void)@<X2>, unint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, char a7@<W6>, uint64_t a8@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v12 = swift_allocObject();
  *(v12 + 16) = sub_214059900;
  *(v12 + 24) = 0;
  *(inited + 32) = v12;
  sub_214042B80(inited, &v58);
  v14 = v58;
  v13 = v59;
  v15 = v61;
  v40 = v60;
  v16 = v62;
  sub_214622C9C(&v78);
  v49 = v78;
  v47 = v79;
  v85 = v80;
  v57 = v81;
  v48 = v82;
  sub_214622DE8(v76);
  v55 = v76[0];
  v46 = v76[1];
  v52 = v76[3];
  v53 = v76[2];
  v44 = v77;
  v78 = a1;
  v79 = a2;
  v50 = v16;
  LOBYTE(v76[0]) = v16;
  v58 = 0xD00000000000002ELL;
  v59 = 0x8000000214791FF0;
  v60 = 0xD00000000000001CLL;
  v61 = 0x800000021478A360;

  v56 = v13;
  v17 = v14(&v78, v76, &v58);
  v18 = v14;
  if (v8)
  {
    sub_213FDC6BC(a5, a6);
LABEL_7:

    v20 = v47;
    v29 = v13;

    v30 = v40;
    v19 = v48;
    v21 = v49;
    v32 = v52;
    v31 = v53;
    v33 = v46;
    v34 = v44;
    goto LABEL_8;
  }

  v36 = a1;
  v37 = a2;
  if ((v17 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v28 = 0xD00000000000002ELL;
    v28[1] = 0x8000000214791FF0;
    v28[2] = 0xD00000000000001CLL;
    v28[3] = 0x800000021478A360;
    swift_willThrow();

    sub_213FDC6BC(a5, a6);
    goto LABEL_7;
  }

  v41 = v14;

  v78 = a3;
  v79 = a4;
  v19 = v48;
  LOBYTE(v76[0]) = v48;
  v58 = 0xD00000000000002FLL;
  v59 = 0x8000000214792020;
  v60 = 0xD00000000000001CLL;
  v61 = 0x800000021478A360;
  v20 = v47;

  sub_213FDC9D0(v85, v57);
  v21 = v49;
  if (v49(&v78, v76, &v58))
  {
    v22 = v85;
    sub_213FDC6D0(v85, v57);

    sub_213FDC6D0(v22, v57);
    v85 = "Message.JoinRequest.displayName";
    v58 = v55;
    v59 = v46;
    v60 = v53;
    v61 = v52;
    v62 = v44;

    sub_21404F7E0(v53, v52);
    sub_214032118(a5, a6, 2, 0xD00000000000002CLL, 0x8000000214792050, 0xD00000000000001CLL, 0x800000021478A360);
    sub_213FDC6BC(a5, a6);

    v24 = v58;
    v23 = v59;
    v25 = v61;
    v45 = v60;
    v26 = v62;

    result = sub_214032564(v53, v52);
    *a8 = v41;
    *(a8 + 8) = v56;
    *(a8 + 16) = v36;
    *(a8 + 24) = v37;
    *(a8 + 32) = v50;
    *(a8 + 40) = v49;
    *(a8 + 48) = v47;
    *(a8 + 56) = a3;
    *(a8 + 64) = a4;
    *(a8 + 72) = v48;
    *(a8 + 80) = v24;
    *(a8 + 88) = v23;
    *(a8 + 96) = v45;
    *(a8 + 104) = v25;
    *(a8 + 112) = v26;
    *(a8 + 113) = a7;
    return result;
  }

  sub_214031C4C();
  swift_allocError();
  *v35 = 0xD00000000000002FLL;
  v35[1] = 0x8000000214792020;
  v35[2] = 0xD00000000000001CLL;
  v35[3] = 0x800000021478A360;
  swift_willThrow();

  sub_213FDC6BC(a5, a6);

  v18 = v41;
  v15 = v37;
  v34 = v44;

  sub_213FDC6D0(v85, v57);
  v29 = v56;
  v32 = v52;
  v31 = v53;
  v30 = v36;
  v33 = v46;
LABEL_8:
  v58 = v18;
  v59 = v29;
  v60 = v30;
  v61 = v15;
  v62 = v50;
  *v63 = v84[0];
  *&v63[3] = *(v84 + 3);
  v64 = v21;
  v65 = v20;
  v66 = v85;
  v67 = v57;
  v68 = v19;
  *v69 = *v83;
  *&v69[3] = *&v83[3];
  v70 = v55;
  v71 = v33;
  v72 = v31;
  v73 = v32;
  v74 = v34;
  v75 = a7;
  return sub_21430D1C4(&v58);
}

uint64_t sub_21422DF8C()
{
  v1 = 0x696669746E656469;
  v2 = 0x6F666E4972657375;
  if (*v0 != 2)
  {
    v2 = 0x6B6F5473746E6177;
  }

  if (*v0)
  {
    v1 = 0x4E79616C70736964;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_21422E020@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_21437B150(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_21422E048(uint64_t a1)
{
  v2 = sub_21430D218();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21422E084(uint64_t a1)
{
  v2 = sub_21430D218();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21422E0C0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90A408, &qword_2146F5E08);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v54 - v7;
  v9 = a1[3];
  v110 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v9);
  sub_21430D218();
  sub_2146DAA08();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(v110);
  }

  v10 = v6;
  v75 = a2;
  LOBYTE(v85) = 0;
  v11 = sub_2146DA168();
  v76 = v12;
  v74 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
  LOBYTE(v77) = 1;
  sub_2142E12FC();
  sub_2146DA1C8();
  v14 = v85;
  v13 = v86;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905680, &unk_2146F3CE0);
  LOBYTE(v77) = 2;
  sub_2142E1278();
  sub_2146DA1C8();
  *(&v71 + 1) = v14;
  v73 = v13;
  v16 = v85;
  v15 = v86;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905688, &qword_2146F3CF0);
  v106 = 3;
  sub_2142E1378();
  sub_2146DA1C8();
  v58 = v16;
  v59 = v15;
  v60 = v5;
  v61 = v107;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v19 = swift_allocObject();
  *(v19 + 16) = sub_214059900;
  *(v19 + 24) = 0;
  *(v18 + 32) = v19;
  sub_214042B80(v18, &v85);
  v20 = v86;
  v72 = v85;
  v21 = v88;
  v55 = v87;
  LODWORD(v18) = v89;
  sub_214622C9C(&v77);
  *&v71 = *(&v77 + 1);
  v69 = v77;
  v66 = *(&v78 + 1);
  v67 = v78;
  v70 = v79;
  sub_214622DE8(&v102);
  v63 = v102;
  v64 = v103;
  v65 = v104;
  v57 = v105;
  *&v77 = v74;
  *(&v77 + 1) = v76;
  v62 = v18;
  LOBYTE(v102) = v18;
  v85 = 0xD00000000000002ELL;
  v86 = 0x8000000214791FF0;
  v87 = 0xD00000000000001CLL;
  v88 = 0x800000021478A360;
  v56 = v21;

  v68 = v20;
  v22 = v72(&v77, &v102, &v85);
  v23 = v73;
  if (v22)
  {

    *&v77 = *(&v71 + 1);
    *(&v77 + 1) = v23;
    LOBYTE(v102) = v70;
    v85 = 0xD00000000000002FLL;
    v86 = 0x8000000214792020;
    v87 = 0xD00000000000001CLL;
    v88 = 0x800000021478A360;

    sub_213FDC9D0(v67, v66);
    v24 = v69(&v77, &v102, &v85);
    if (v24)
    {
      v34 = v67;
      v35 = v66;
      sub_213FDC6D0(v67, v66);

      sub_213FDC6D0(v34, v35);
      v102 = v63;
      v37 = v64;
      v36 = v65;
      v103 = v64;
      v104 = v65;
      v105 = v57;
      v67 = *(&v63 + 1);

      sub_21404F7E0(v37, v36);
      v39 = v58;
      v38 = v59;
      sub_214032118(v58, v59, 2, 0xD00000000000002CLL, 0x8000000214792050, 0xD00000000000001CLL, 0x800000021478A360);
      v40 = v60;

      sub_213FDC6BC(v39, v38);
      (*(v10 + 8))(v8, v40);
      v42 = v102;
      *&v63 = *(&v102 + 1);
      v66 = v102;
      v43 = v103;
      v44 = v104;
      v60 = v103;
      LODWORD(v59) = v105;

      sub_214032564(v64, v65);
      v45 = *(&v71 + 1);
      *&v77 = v72;
      *(&v77 + 1) = v68;
      v46 = v74;
      *&v78 = v74;
      *(&v78 + 1) = v76;
      LOBYTE(v79) = v62;
      *(&v79 + 1) = v109[0];
      DWORD1(v79) = *(v109 + 3);
      *(&v79 + 1) = v69;
      v80 = v71;
      *&v81 = v73;
      BYTE8(v81) = v70;
      *(&v81 + 9) = *v108;
      HIDWORD(v81) = *&v108[3];
      v82 = v42;
      *&v83 = v43;
      *(&v83 + 1) = v44;
      LOBYTE(v40) = v59;
      LOBYTE(v84) = v59;
      LOBYTE(v43) = v61;
      HIBYTE(v84) = v61;
      v47 = v77;
      v48 = v78;
      v49 = v71;
      v50 = v75;
      *(v75 + 32) = v79;
      *(v50 + 48) = v49;
      *v50 = v47;
      *(v50 + 16) = v48;
      v51 = v81;
      v52 = v82;
      v53 = v83;
      *(v50 + 112) = v84;
      *(v50 + 80) = v52;
      *(v50 + 96) = v53;
      *(v50 + 64) = v51;
      sub_21430D26C(&v77, &v85);
      __swift_destroy_boxed_opaque_existential_1(v110);
      v85 = v72;
      v86 = v68;
      v87 = v46;
      v88 = v76;
      v89 = v62;
      *v90 = v109[0];
      *&v90[3] = *(v109 + 3);
      v91 = v69;
      v92 = v71;
      v93 = v45;
      v94 = v73;
      v95 = v70;
      *v96 = *v108;
      *&v96[3] = *&v108[3];
      *&v97 = v66;
      *(&v97 + 1) = v63;
      v98 = v60;
      v99 = v44;
      v100 = v40;
      v101 = v43;
      return sub_21430D1C4(&v85);
    }

    sub_214031C4C();
    swift_allocError();
    *v41 = 0xD00000000000002FLL;
    v41[1] = 0x8000000214792020;
    v41[2] = 0xD00000000000001CLL;
    v41[3] = 0x800000021478A360;
    swift_willThrow();

    sub_213FDC6BC(v58, v59);
    v33 = v70;
    v27 = v66;
    (*(v10 + 8))(v8, v60);

    v32 = v67;
    sub_213FDC6D0(v67, v27);
    v28 = v76;
    v29 = v68;
    v30 = v69;
    v31 = v57;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v25 = 0xD00000000000002ELL;
    v25[1] = 0x8000000214791FF0;
    v25[2] = 0xD00000000000001CLL;
    v25[3] = 0x800000021478A360;
    swift_willThrow();

    v26 = v60;
    v27 = v66;
    sub_213FDC6BC(v58, v59);
    (*(v6 + 8))(v8, v26);
    v28 = v56;

    v29 = v68;

    v74 = v55;
    v30 = v69;
    v31 = v57;
    v32 = v67;
    v33 = v70;
  }

  __swift_destroy_boxed_opaque_existential_1(v110);
  v85 = v72;
  v86 = v29;
  v87 = v74;
  v88 = v28;
  v89 = v62;
  *v90 = v109[0];
  *&v90[3] = *(v109 + 3);
  v91 = v30;
  v92 = v71;
  v93 = v32;
  v94 = v27;
  v95 = v33;
  *v96 = *v108;
  *&v96[3] = *&v108[3];
  v97 = v63;
  v98 = v64;
  v99 = v65;
  v100 = v31;
  v101 = v61;
  return sub_21430D1C4(&v85);
}

uint64_t sub_21422EA68(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90A418, &qword_2146F5E10);
  v16 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v11 - v5;
  v7 = *(v1 + 24);
  v8 = *(v1 + 56);
  v14 = *(v1 + 64);
  v15 = v8;
  v9 = *(v1 + 96);
  v12 = *(v1 + 104);
  v13 = v9;
  v19 = *(v1 + 113);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21430D218();
  sub_2146DAA28();
  if (!v7)
  {
    goto LABEL_7;
  }

  LOBYTE(v17) = 0;

  sub_2146DA328();
  if (v2)
  {
    (*(v16 + 8))(v6, v4);
  }

  if (v14 == 1 || (v17 = v15, v18 = v14, v20 = 1, __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050), sub_214045AC0(), sub_2146DA388(), v12 >> 60 == 11))
  {
LABEL_7:
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v17 = v13;
    v18 = v12;
    v20 = 2;
    sub_213FDCA18(v13, v12);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905680, &unk_2146F3CE0);
    sub_2142E1CAC();
    sub_2146DA388();
    sub_213FDC6BC(v17, v18);
    LOBYTE(v17) = v19;
    v20 = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905688, &qword_2146F3CF0);
    sub_2142E1D30();
    sub_2146DA388();
    return (*(v16 + 8))(v6, v4);
  }

  return result;
}

uint64_t sub_21422EDA0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unsigned __int8 *a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X8>)
{
  v36 = *a3;
  v19 = *a4;
  v20 = a4[1];
  v21 = a4[2];
  v22 = a4[3];
  v23 = a4[4];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v8 = swift_allocObject();
  *(v8 + 16) = sub_214059900;
  *(v8 + 24) = 0;
  *(inited + 32) = v8;
  sub_214042B80(inited, &v24);
  v10 = v24;
  v9 = v25;
  v11 = v27;
  v17 = v26;
  v12 = v28;
  v35[0] = a1;
  v35[1] = a2;
  v37 = v28;
  v24 = 0xD00000000000002FLL;
  v25 = 0x8000000214792080;
  v26 = 0xD00000000000001CLL;
  v27 = 0x800000021478A360;

  v13 = v10(v35, &v37, &v24);
  if (v18)
  {
  }

  else
  {
    if (v13)
    {

      result = swift_bridgeObjectRelease_n();
      *a5 = v10;
      *(a5 + 8) = v9;
      *(a5 + 16) = a1;
      *(a5 + 24) = a2;
      *(a5 + 32) = v12;
      *(a5 + 33) = v36;
      *(a5 + 40) = v19;
      *(a5 + 48) = v20;
      *(a5 + 56) = v21;
      *(a5 + 64) = v22;
      *(a5 + 72) = v23;
      return result;
    }

    sub_214031C4C();
    swift_allocError();
    *v15 = 0xD00000000000002FLL;
    v15[1] = 0x8000000214792080;
    v15[2] = 0xD00000000000001CLL;
    v15[3] = 0x800000021478A360;
    swift_willThrow();
  }

  v24 = v10;
  v25 = v9;
  v26 = v17;
  v27 = v11;
  v28 = v12;
  v29 = v36;
  v30 = v19;
  v31 = v20;
  v32 = v21;
  v33 = v22;
  v34 = v23;
  return sub_21430D2C8(&v24);
}

uint64_t sub_21422F010()
{
  v1 = 0x6F6974617265706FLL;
  if (*v0 != 1)
  {
    v1 = 0x6C61766F72707061;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x696669746E656469;
  }
}

uint64_t sub_21422F080@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_21437B2C8(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_21422F0A8(uint64_t a1)
{
  v2 = sub_21430D31C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21422F0E4(uint64_t a1)
{
  v2 = sub_21430D31C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21422F120@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90A420, &qword_2146F5E18);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v34 - v7;
  v9 = a1[3];
  v47 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v9);
  sub_21430D31C();
  sub_2146DAA08();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(v47);
  }

  v10 = v6;
  v46 = a2;
  LOBYTE(v53) = 0;
  v11 = sub_2146DA168();
  v13 = v12;
  LOBYTE(v48) = 1;
  sub_21430D370();
  sub_2146DA1C8();
  v14 = v53;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90A438, &qword_2146F5E20);
  v72 = 2;
  sub_21430D3C4();
  sub_2146DA1C8();
  v39 = v14;
  v41 = v68;
  v43 = v69;
  v44 = v67;
  v45 = v70;
  v16 = v71;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v18 = swift_allocObject();
  *(v18 + 16) = sub_214059900;
  *(v18 + 24) = 0;
  *(inited + 32) = v18;
  v42 = v16;
  sub_21430D49C(v44, v41, v43, v45, v16);
  sub_214042B80(inited, &v53);
  v19 = v54;
  v40 = v53;
  v20 = v56;
  v66[0] = v11;
  v66[1] = v13;
  v38 = v57;
  LOBYTE(v48) = v57;
  v53 = 0xD00000000000002FLL;
  v54 = 0x8000000214792080;
  v35 = v55;
  v36 = 0x8000000214792080;
  v55 = 0xD00000000000001CLL;
  v56 = 0x800000021478A360;
  v37 = v20;

  if (v40(v66, &v48, &v53))
  {

    sub_21430D4FC(v44, v41, v43, v45, v42);
    (*(v10 + 8))(v8, v5);

    v22 = v40;
    v21 = v41;
    *&v48 = v40;
    *(&v48 + 1) = v19;
    *&v49 = v11;
    *(&v49 + 1) = v13;
    v24 = v38;
    v23 = v39;
    LOBYTE(v50) = v38;
    BYTE1(v50) = v39;
    *(&v50 + 1) = v44;
    *&v51 = v41;
    *(&v51 + 1) = v43;
    *&v52 = v45;
    *(&v52 + 1) = v42;
    v25 = v51;
    v26 = v46;
    v46[2] = v50;
    v26[3] = v25;
    v26[4] = v52;
    v27 = v49;
    *v26 = v48;
    v26[1] = v27;
    sub_21430D55C(&v48, &v53);
    __swift_destroy_boxed_opaque_existential_1(v47);
    v53 = v22;
    v54 = v19;
    v55 = v11;
    v56 = v13;
    v57 = v24;
    v58 = v23;
    v61 = v44;
    v62 = v21;
    v63 = v43;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    v28 = v36;
    *v29 = 0xD00000000000002FLL;
    v29[1] = v28;
    v29[2] = 0xD00000000000001CLL;
    v29[3] = 0x800000021478A360;
    swift_willThrow();

    v31 = v43;
    v30 = v44;
    v32 = v41;
    sub_21430D4FC(v44, v41, v43, v45, v42);
    (*(v10 + 8))(v8, v5);
    v33 = v37;

    __swift_destroy_boxed_opaque_existential_1(v47);
    v53 = v40;
    v54 = v19;
    v55 = v35;
    v56 = v33;
    v57 = v38;
    v58 = v39;
    v59 = v73;
    v60 = v74;
    v61 = v30;
    v62 = v32;
    v63 = v31;
  }

  v64 = v45;
  v65 = v42;
  return sub_21430D2C8(&v53);
}

uint64_t sub_21422F64C(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90A450, &qword_2146F5E28);
  v17 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v11 - v5;
  v7 = *(v1 + 24);
  v23 = *(v1 + 33);
  v8 = *(v1 + 40);
  v15 = *(v1 + 48);
  v16 = v8;
  v9 = *(v1 + 56);
  v13 = *(v1 + 64);
  v14 = v9;
  v12 = *(v1 + 72);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21430D31C();
  sub_2146DAA28();
  if (v7)
  {
    LOBYTE(v18) = 0;

    sub_2146DA328();
    if (v2)
    {
      (*(v17 + 8))(v6, v4);
    }

    else
    {

      LOBYTE(v18) = v23;
      v24 = 1;
      sub_21430D5B8();
      sub_2146DA388();
      v18 = v16;
      v19 = v15;
      v20 = v14;
      v21 = v13;
      v22 = v12;
      v24 = 2;
      sub_21430D49C(v16, v15, v14, v13, v12);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90A438, &qword_2146F5E20);
      sub_21430D60C();
      sub_2146DA388();
      sub_21430D4FC(v18, v19, v20, v21, v22);
      return (*(v17 + 8))(v6, v4);
    }
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

uint64_t sub_21422F920@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  *a6 = result;
  a6[1] = a2;
  a6[2] = a3;
  a6[3] = a4;
  a6[4] = a5;
  return result;
}

uint64_t sub_21422F930()
{
  v1 = 0x61487265626D656DLL;
  if (*v0 != 1)
  {
    v1 = 0x6F666E4972657375;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000011;
  }
}

uint64_t sub_21422F99C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_21437B3F8(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_21422F9C4(uint64_t a1)
{
  v2 = sub_21430D6E4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21422FA00(uint64_t a1)
{
  v2 = sub_21430D6E4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21422FA3C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90A470, &qword_2146F5E30);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v15 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21430D6E4();
  sub_2146DAA08();
  if (!v2)
  {
    LOBYTE(v17) = 0;
    v9 = sub_2146DA168();
    v11 = v10;
    v12 = v9;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C904F20, &qword_2146EE8A0);
    v18 = 1;
    sub_2142E15CC();
    sub_2146DA1C8();
    v16 = v17;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905680, &unk_2146F3CE0);
    v18 = 2;
    sub_2142E1278();
    sub_2146DA1C8();
    (*(v6 + 8))(v8, v5);
    v14 = v17;
    *a2 = v12;
    *(a2 + 8) = v11;
    *(a2 + 16) = v16;
    *(a2 + 24) = v14;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_21422FCBC(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90A480, &qword_2146F5E38);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v12 - v5;
  v7 = v1[2];
  v13 = v1[3];
  v14 = v7;
  v12 = v1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21430D6E4();
  sub_2146DAA28();
  LOBYTE(v16) = 0;
  v8 = v15;
  sub_2146DA328();
  if (!v8)
  {
    v10 = v12;
    v9 = v13;
    v16 = v14;
    v18 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C904F20, &qword_2146EE8A0);
    sub_2142E1F00();
    sub_2146DA388();
    v16 = v9;
    v17 = v10;
    v18 = 2;
    sub_213FDCA18(v9, v10);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905680, &unk_2146F3CE0);
    sub_2142E1CAC();
    sub_2146DA388();
    sub_213FDC6BC(v16, v17);
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_21422FF04@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, _BYTE *a6@<X8>)
{
  *a6 = *a1;
  v11 = type metadata accessor for IDSNearbySessionMessage.GroupMessage(0);
  sub_21408AC04(a2, &a6[v11[5]], &qword_27C90A488, &qword_2146F5E40);
  sub_21408AC04(a3, &a6[v11[6]], &qword_27C90A490, &qword_2146F5E48);
  sub_21408AC04(a4, &a6[v11[7]], &qword_27C90A490, &qword_2146F5E48);
  return sub_21408AC04(a5, &a6[v11[8]], &qword_27C90A498, &qword_2146F5E50);
}

uint64_t sub_21422FFE8()
{
  v1 = *v0;
  v2 = 0x746E657665;
  v3 = 0x64417265626D656DLL;
  v4 = 0x65527265626D656DLL;
  if (v1 != 3)
  {
    v4 = 0x654C7265626D656DLL;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x696C616974696E69;
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

uint64_t sub_2142300A4@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_21437B524(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_2142300CC(uint64_t a1)
{
  v2 = sub_21430D738();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_214230108(uint64_t a1)
{
  v2 = sub_21430D738();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_214230144@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v28 = a2;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90A498, &qword_2146F5E50);
  MEMORY[0x28223BE20](v30);
  v29 = &v26[-v3];
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90A490, &qword_2146F5E48);
  v4 = MEMORY[0x28223BE20](v31);
  v6 = &v26[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v4);
  v8 = &v26[-v7];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90A488, &qword_2146F5E40);
  MEMORY[0x28223BE20](v9);
  v11 = &v26[-v10];
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90A4A0, &qword_2146F5E58);
  v12 = *(v32 - 8);
  MEMORY[0x28223BE20](v32);
  v14 = &v26[-v13];
  v15 = a1[3];
  v35 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v15);
  sub_21430D738();
  v33 = v14;
  v16 = v34;
  sub_2146DAA08();
  if (!v16)
  {
    v34 = v11;
    v17 = v12;
    v18 = v6;
    v40 = 0;
    sub_21430D78C();
    v19 = v32;
    sub_2146DA1C8();
    v20 = v41;
    v39 = 1;
    sub_21430D7E0();
    sub_2146DA1C8();
    v27 = v20;
    v38 = 2;
    sub_21430D894();
    sub_2146DA1C8();
    v37 = 3;
    sub_2146DA1C8();
    v21 = v34;
    v36 = 4;
    sub_21430D948();
    v22 = v29;
    sub_2146DA1C8();
    (*(v17 + 8))(v33, v19);
    v24 = type metadata accessor for IDSNearbySessionMessage.GroupMessage(0);
    v25 = v28;
    sub_21408AC04(v21, &v28[v24[5]], &qword_27C90A488, &qword_2146F5E40);
    sub_21408AC04(v8, &v25[v24[6]], &qword_27C90A490, &qword_2146F5E48);
    sub_21408AC04(v18, &v25[v24[7]], &qword_27C90A490, &qword_2146F5E48);
    sub_21408AC04(v22, &v25[v24[8]], &qword_27C90A498, &qword_2146F5E50);
    *v25 = v27;
  }

  return __swift_destroy_boxed_opaque_existential_1(v35);
}

uint64_t sub_214230614(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90A4E8, &qword_2146F5E60);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v10 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21430D738();
  sub_2146DAA28();
  v16 = *v3;
  v15 = 0;
  sub_21430D9FC();
  sub_2146DA388();
  if (!v2)
  {
    type metadata accessor for IDSNearbySessionMessage.GroupMessage(0);
    v14 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90A488, &qword_2146F5E40);
    sub_21430DA50();
    sub_2146DA388();
    v13 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90A490, &qword_2146F5E48);
    sub_21430DB04();
    sub_2146DA388();
    v12 = 3;
    sub_2146DA388();
    v11 = 4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90A498, &qword_2146F5E50);
    sub_21430DBB8();
    sub_2146DA388();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_2142308D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_2146D8B88();
  (*(*(v6 - 8) + 32))(a3, a1, v6);
  result = type metadata accessor for IDSNearbySessionMessage.GroupMessage.Initialization(0);
  *(a3 + *(result + 20)) = a2;
  return result;
}

uint64_t sub_214230954()
{
  if (*v0)
  {
    return 0x737265626D656DLL;
  }

  else
  {
    return 0x69755570756F7267;
  }
}

uint64_t sub_214230994@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x69755570756F7267 && a2 == 0xE900000000000064;
  if (v6 || (sub_2146DA6A8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x737265626D656DLL && a2 == 0xE700000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_2146DA6A8();

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

uint64_t sub_214230A78(uint64_t a1)
{
  v2 = sub_21430DC6C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_214230AB4(uint64_t a1)
{
  v2 = sub_21430DC6C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_214230AF0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v16 = a2;
  v4 = sub_2146D8B88();
  v17 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90A528, &qword_2146F5E68);
  v7 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v9 = &v16 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21430DC6C();
  sub_2146DAA08();
  if (!v2)
  {
    v10 = v7;
    v11 = v17;
    v21 = 0;
    sub_214328930(&qword_280B35350, MEMORY[0x277CC95F0], MEMORY[0x277CC9618]);
    v12 = v18;
    sub_2146DA1C8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90A538, &qword_2146F5E70);
    v20 = 1;
    sub_21430DCC0();
    sub_2146DA1C8();
    (*(v10 + 8))(v9, v12);
    v14 = v19;
    v15 = v16;
    (*(v11 + 32))(v16, v6, v4);
    *(v15 + *(type metadata accessor for IDSNearbySessionMessage.GroupMessage.Initialization(0) + 20)) = v14;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_214230DC8(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90A550, &qword_2146F5E78);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v10[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21430DC6C();
  sub_2146DAA28();
  v12 = 0;
  sub_2146D8B88();
  sub_214328930(&qword_280B34D20, MEMORY[0x277CC95F0], MEMORY[0x277CC95F8]);
  sub_2146DA388();
  if (!v2)
  {
    v11 = *(v3 + *(type metadata accessor for IDSNearbySessionMessage.GroupMessage.Initialization(0) + 20));
    v10[15] = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90A538, &qword_2146F5E70);
    sub_21430DD98();
    sub_2146DA388();
  }

  return (*(v6 + 8))(v8, v5);
}

__n128 sub_214230FDC@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_2146D8B88();
  (*(*(v6 - 8) + 32))(a3, a1, v6);
  v7 = a3 + *(type metadata accessor for IDSNearbySessionMessage.GroupMessage.MemberAddedRemoved(0) + 20);
  v8 = *(a2 + 48);
  *(v7 + 32) = *(a2 + 32);
  *(v7 + 48) = v8;
  *(v7 + 57) = *(a2 + 57);
  result = *(a2 + 16);
  *v7 = *a2;
  *(v7 + 16) = result;
  return result;
}

uint64_t sub_214231078()
{
  if (*v0)
  {
    return 0x7265626D656DLL;
  }

  else
  {
    return 0x69755570756F7267;
  }
}

uint64_t sub_2142310B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x69755570756F7267 && a2 == 0xE900000000000064;
  if (v6 || (sub_2146DA6A8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x7265626D656DLL && a2 == 0xE600000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_2146DA6A8();

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

uint64_t sub_214231194(uint64_t a1)
{
  v2 = sub_21430DE70();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2142311D0(uint64_t a1)
{
  v2 = sub_21430DE70();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21423120C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v19 = a2;
  v4 = sub_2146D8B88();
  v20 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90A568, &qword_2146F5E80);
  v7 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v9 = &v18 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21430DE70();
  sub_2146DAA08();
  if (!v2)
  {
    v10 = v7;
    v11 = v20;
    LOBYTE(v26) = 0;
    sub_214328930(&qword_280B35350, MEMORY[0x277CC95F0], MEMORY[0x277CC9618]);
    v12 = v21;
    sub_2146DA1C8();
    v30 = 1;
    sub_21430DD44();
    sub_2146DA1C8();
    (*(v10 + 8))(v9, v12);
    v24 = v28;
    v25[0] = v29[0];
    *(v25 + 9) = *(v29 + 9);
    v22 = v26;
    v23 = v27;
    v14 = v19;
    (*(v11 + 32))(v19, v6, v4);
    v15 = (v14 + *(type metadata accessor for IDSNearbySessionMessage.GroupMessage.MemberAddedRemoved(0) + 20));
    v16 = v25[0];
    v15[2] = v24;
    v15[3] = v16;
    *(v15 + 57) = *(v25 + 9);
    v17 = v23;
    *v15 = v22;
    v15[1] = v17;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_21423151C(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90A578, &qword_2146F5E88);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v15 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21430DE70();
  sub_2146DAA28();
  v25 = 0;
  sub_2146D8B88();
  sub_214328930(&qword_280B34D20, MEMORY[0x277CC95F0], MEMORY[0x277CC95F8]);
  sub_2146DA388();
  if (!v2)
  {
    v10 = (v3 + *(type metadata accessor for IDSNearbySessionMessage.GroupMessage.MemberAddedRemoved(0) + 20));
    v11 = v10[1];
    v12 = v10[3];
    v23 = v10[2];
    *v24 = v12;
    *&v24[9] = *(v10 + 57);
    v13 = v10[1];
    v22[0] = *v10;
    v22[1] = v13;
    v14 = v10[3];
    v20 = v23;
    v21[0] = v14;
    *(v21 + 9) = *(v10 + 57);
    v18 = v22[0];
    v19 = v11;
    v17 = 1;
    sub_21430DEC4(v22, v15);
    sub_21430DE1C();
    sub_2146DA388();
    v15[2] = v20;
    *v16 = v21[0];
    *&v16[9] = *(v21 + 9);
    v15[1] = v19;
    v15[0] = v18;
    sub_21430DF20(v15);
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_2142317C0@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v6 = sub_2146D8B88();
  (*(*(v6 - 8) + 32))(a3, a1, v6);
  result = type metadata accessor for IDSNearbySessionMessage.GroupMessage.MemberLeft(0);
  *(a3 + *(result + 20)) = a2;
  return result;
}

uint64_t sub_214231844()
{
  if (*v0)
  {
    return 0x656B6F5473657375;
  }

  else
  {
    return 0x69755570756F7267;
  }
}

uint64_t sub_214231888@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x69755570756F7267 && a2 == 0xE900000000000064;
  if (v6 || (sub_2146DA6A8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x656B6F5473657375 && a2 == 0xE90000000000006ELL)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_2146DA6A8();

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

uint64_t sub_214231968(uint64_t a1)
{
  v2 = sub_21430DF74();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2142319A4(uint64_t a1)
{
  v2 = sub_21430DF74();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2142319E0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v17 = a2;
  v4 = sub_2146D8B88();
  v18 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90A580, &qword_2146F5E90);
  v7 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v9 = &v16 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21430DF74();
  sub_2146DAA08();
  if (!v2)
  {
    v10 = v7;
    v11 = v18;
    v21 = 0;
    sub_214328930(&qword_280B35350, MEMORY[0x277CC95F0], MEMORY[0x277CC9618]);
    v12 = v19;
    sub_2146DA1C8();
    v20 = 1;
    v14 = sub_2146DA178();
    (*(v10 + 8))(v9, v12);
    v15 = v17;
    (*(v11 + 32))(v17, v6, v4);
    *(v15 + *(type metadata accessor for IDSNearbySessionMessage.GroupMessage.MemberLeft(0) + 20)) = v14 & 1;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_214231C90(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90A590, &qword_2146F5E98);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21430DF74();
  sub_2146DAA28();
  v8[15] = 0;
  sub_2146D8B88();
  sub_214328930(&qword_280B34D20, MEMORY[0x277CC95F0], MEMORY[0x277CC95F8]);
  sub_2146DA388();
  if (!v1)
  {
    type metadata accessor for IDSNearbySessionMessage.GroupMessage.MemberLeft(0);
    v8[14] = 1;
    sub_2146DA338();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_214231E78@<X0>(unint64_t a1@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X8>)
{
  sub_2146233F8(&v34);
  v10 = v34;
  v9 = v35;
  v11 = v37;
  v23 = v36;
  *v45 = *v39;
  *&v45[3] = *&v39[3];
  v27 = v40;
  v28 = v41;
  v30 = v42;
  v31 = v43;
  v24 = v44;
  v32 = a1;
  v33 = a2;
  v26 = v38;
  v46 = v38;
  v34 = 0xD000000000000032;
  v35 = 0x80000002147920B0;
  v36 = 0xD00000000000001CLL;
  v37 = 0x800000021478A360;

  v29 = v9;
  v25 = v10;
  v12 = v10(&v32, &v46, &v34);
  if (v5)
  {

LABEL_6:

    v15 = v27;
    v17 = v29;

    a1 = v23;
    v13 = v24;
LABEL_7:
    v34 = v25;
    v35 = v17;
    v36 = a1;
    v37 = v11;
    v38 = v26;
    *v39 = *v45;
    *&v39[3] = *&v45[3];
    v40 = v15;
    v41 = v28;
    v42 = v30;
    v43 = v31;
    v44 = v13;
    return sub_21430DF20(&v34);
  }

  v20 = a2;
  if ((v12 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v16 = 0xD000000000000032;
    v16[1] = 0x80000002147920B0;
    v16[2] = 0xD00000000000001CLL;
    v16[3] = 0x800000021478A360;
    swift_willThrow();

    goto LABEL_6;
  }

  v32 = a3;
  v33 = a4;
  v13 = v24;
  v46 = v24;
  v34 = 0xD000000000000033;
  v35 = 0x80000002147920F0;
  v36 = 0xD00000000000001CLL;
  v37 = 0x800000021478A360;

  sub_213FDC9D0(v30, v31);
  v14 = v27(&v32, &v46, &v34);
  v15 = v27;
  if ((v14 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v19 = 0xD000000000000033;
    v19[1] = 0x80000002147920F0;
    v19[2] = 0xD00000000000001CLL;
    v19[3] = 0x800000021478A360;
    swift_willThrow();

    v17 = v29;

    sub_213FDC6D0(v30, v31);
    v11 = v20;
    goto LABEL_7;
  }

  sub_213FDC6D0(v30, v31);

  result = sub_213FDC6D0(v30, v31);
  *a5 = v10;
  *(a5 + 8) = v29;
  *(a5 + 16) = a1;
  *(a5 + 24) = v20;
  *(a5 + 32) = v26;
  *(a5 + 33) = *v45;
  *(a5 + 36) = *&v45[3];
  *(a5 + 40) = v27;
  *(a5 + 48) = v28;
  *(a5 + 56) = a3;
  *(a5 + 64) = a4;
  *(a5 + 72) = v24;
  return result;
}

uint64_t sub_214232214()
{
  if (*v0)
  {
    return 0x64496E656B6F74;
  }

  else
  {
    return 0x656C646E6168;
  }
}

uint64_t sub_21423224C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x656C646E6168 && a2 == 0xE600000000000000;
  if (v6 || (sub_2146DA6A8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x64496E656B6F74 && a2 == 0xE700000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_2146DA6A8();

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

uint64_t sub_214232324(uint64_t a1)
{
  v2 = sub_21430DFC8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_214232360(uint64_t a1)
{
  v2 = sub_21430DFC8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21423239C@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90A598, &qword_2146F5EA0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v39 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21430DFC8();
  sub_2146DAA08();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  LOBYTE(v60) = 0;
  v9 = sub_2146DA168();
  v11 = v10;
  v12 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
  v70[7] = 1;
  sub_2142E12FC();
  sub_2146DA1C8();
  v43 = v71;
  v49 = v72;
  sub_2146233F8(&v60);
  v14 = v61;
  v74 = v60;
  v15 = v63;
  v44 = v62;
  *v73 = *v65;
  *&v73[3] = *&v65[3];
  v48 = v66;
  v52 = v67;
  v53 = v68;
  v54 = v69;
  v50 = v70[0];
  v42 = v12;
  *&v55 = v12;
  *(&v55 + 1) = v11;
  v47 = v64;
  LOBYTE(v59[0]) = v64;
  v60 = 0xD000000000000032;
  v61 = 0x80000002147920B0;
  v45 = 0x80000002147920B0;
  v62 = 0xD00000000000001CLL;
  v63 = 0x800000021478A360;
  v46 = v15;

  v51 = v14;
  v16 = v74(&v55, v59, &v60);
  v17 = v45;
  v41 = 0x800000021478A360;
  v40 = v11;
  if (v16)
  {
    v18 = v41;

    v59[0] = v43;
    v59[1] = v49;
    LOBYTE(v55) = v50;
    v60 = 0xD000000000000033;
    v61 = 0x80000002147920F0;
    v62 = 0xD00000000000001CLL;
    v63 = v18;

    sub_213FDC9D0(v53, v54);
    v19 = v48;
    v20 = v48(v59, &v55, &v60);
    v21 = v19;
    if (v20)
    {
      sub_213FDC6D0(v53, v54);

      (*(v6 + 8))(v8, v5);
      v28 = v52;

      sub_213FDC6D0(v53, v54);
      v29 = v74;
      *&v55 = v74;
      *(&v55 + 1) = v51;
      *&v56 = v42;
      v30 = v40;
      *(&v56 + 1) = v40;
      v31 = v47;
      LOBYTE(v57) = v47;
      *(&v57 + 1) = *v73;
      DWORD1(v57) = *&v73[3];
      *(&v57 + 1) = v19;
      *v58 = v28;
      v32 = v49;
      *&v58[8] = v43;
      *&v58[16] = v49;
      v33 = v50;
      v58[24] = v50;
      v34 = v55;
      v35 = v56;
      *(a2 + 57) = *&v58[9];
      v36 = *v58;
      a2[2] = v57;
      a2[3] = v36;
      *a2 = v34;
      a2[1] = v35;
      sub_21430DEC4(&v55, &v60);
      __swift_destroy_boxed_opaque_existential_1(a1);
      v60 = v29;
      v61 = v51;
      v62 = v42;
      v63 = v30;
      v64 = v31;
      *v65 = *v73;
      *&v65[3] = *&v73[3];
      v66 = v48;
      v67 = v28;
      v68 = v43;
      v69 = v32;
      v70[0] = v33;
      return sub_21430DF20(&v60);
    }

    sub_214031C4C();
    swift_allocError();
    *v37 = 0xD000000000000033;
    v37[1] = 0x80000002147920F0;
    v38 = v41;
    v37[2] = 0xD00000000000001CLL;
    v37[3] = v38;
    swift_willThrow();

    (*(v6 + 8))(v8, v5);

    sub_213FDC6D0(v53, v54);
    v24 = v40;
    v25 = v51;
    v26 = &v68;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v22 = 0xD000000000000032;
    v22[1] = v17;
    v23 = v41;
    v22[2] = 0xD00000000000001CLL;
    v22[3] = v23;
    swift_willThrow();

    v21 = v48;
    v24 = v46;
    (*(v6 + 8))(v8, v5);

    v25 = v51;

    v26 = v70;
  }

  v27 = *(v26 - 32);
  __swift_destroy_boxed_opaque_existential_1(a1);
  v60 = v74;
  v61 = v25;
  v62 = v27;
  v63 = v24;
  v64 = v47;
  *v65 = *v73;
  *&v65[3] = *&v73[3];
  v66 = v21;
  v67 = v52;
  v68 = v53;
  v69 = v54;
  v70[0] = v50;
  return sub_21430DF20(&v60);
}

BlastDoor::AvatarRecipe::MonogramRecipe __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> AvatarRecipe.MonogramRecipe.init(with:center:)(Swift::OpaquePointer with, BlastDoor::AvatarRecipe::MonogramRecipe::Point center)
{
  *v3 = with;
  v4 = *v2;
  *(v3 + 8) = *v2;
  result.center.y = center.y;
  result.center.x = *&v4;
  result.commands = with;
  return result;
}

uint64_t sub_214232B5C()
{
  if (*v0)
  {
    return 0x7265746E6563;
  }

  else
  {
    return 0x73646E616D6D6F63;
  }
}

uint64_t sub_214232B94@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x73646E616D6D6F63 && a2 == 0xE800000000000000;
  if (v6 || (sub_2146DA6A8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x7265746E6563 && a2 == 0xE600000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_2146DA6A8();

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

uint64_t sub_214232C6C(uint64_t a1)
{
  v2 = sub_21430E01C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_214232CA8(uint64_t a1)
{
  v2 = sub_21430E01C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t AvatarRecipe.MonogramRecipe.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90A5B0, &qword_2146F5EB0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v12 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21430E01C();
  sub_2146DAA08();
  if (!v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90A5C0, &qword_2146F5EB8);
    v13 = 0;
    sub_21430E070();
    sub_2146DA1C8();
    v9 = v12;
    v13 = 1;
    sub_21430E148();
    sub_2146DA1C8();
    (*(v6 + 8))(v8, v5);
    v10 = v12;
    *a2 = v9;
    *(a2 + 8) = v10;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t AvatarRecipe.MonogramRecipe.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90A5E0, &qword_2146F5EC0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v12 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = v1[2];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21430E01C();

  sub_2146DAA28();
  v12[0] = v8;
  v13 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90A5C0, &qword_2146F5EB8);
  sub_21430E19C();
  sub_2146DA388();

  if (!v2)
  {
    v12[0] = v9;
    v12[1] = v10;
    v13 = 1;
    sub_21430E274();
    sub_2146DA388();
  }

  return (*(v5 + 8))(v7, v4);
}

BlastDoor::AvatarRecipe::MonogramRecipe::Point __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> AvatarRecipe.MonogramRecipe.Point.init(with:y:)(Swift::Double with, Swift::Double y)
{
  *v2 = with;
  v2[1] = y;
  result.y = y;
  result.x = with;
  return result;
}

uint64_t sub_2142330DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 120 && a2 == 0xE100000000000000 || (sub_2146DA6A8() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 121 && a2 == 0xE100000000000000)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_2146DA6A8();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
  return result;
}

uint64_t sub_2142331A4(uint64_t a1)
{
  v2 = sub_21430E2C8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2142331E0(uint64_t a1)
{
  v2 = sub_21430E2C8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_214233260@<X0>(void *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t (*a4)(void)@<X3>, double *a6@<X8>)
{
  v20 = a6;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v19 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = &v19 - v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  a4();
  sub_2146DAA08();
  if (!v6)
  {
    v13 = v19;
    v12 = v20;
    v22 = 0;
    sub_2146DA188();
    v15 = v14;
    v21 = 1;
    sub_2146DA188();
    v17 = v16;
    (*(v13 + 8))(v11, v9);
    *v12 = v15;
    *(v12 + 1) = v17;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_214233454(void *a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void), uint64_t a5)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v13 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  a4();
  sub_2146DAA28();
  v15 = 0;
  v11 = v13[1];
  sub_2146DA348();
  if (!v11)
  {
    v14 = 1;
    sub_2146DA348();
  }

  return (*(v8 + 8))(v10, v7);
}

uint64_t AvatarRecipe.EmojiRecipe.init(with:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v7 = swift_allocObject();
  v8 = swift_allocObject();
  *(v8 + 16) = 1;
  *(v7 + 16) = sub_21438F758;
  *(v7 + 24) = v8;
  *(inited + 32) = v7;
  sub_214042B80(inited, &v17);
  v10 = v17;
  v9 = v18;
  v11 = v21;
  v16[0] = a1;
  v16[1] = a2;
  v22 = v21;
  v17 = 0xD00000000000001ELL;
  v18 = 0x8000000214792130;
  v19 = 0xD00000000000001CLL;
  v20 = 0x800000021478A360;

  v12 = v10(v16, &v22, &v17);
  if (v3)
  {
  }

  else
  {
    if (v12)
    {

      result = swift_bridgeObjectRelease_n();
      *a3 = v10;
      *(a3 + 8) = v9;
      *(a3 + 16) = a1;
      *(a3 + 24) = a2;
      *(a3 + 32) = v11;
      return result;
    }

    sub_214031C4C();
    swift_allocError();
    *v14 = 0xD00000000000001ELL;
    v14[1] = 0x8000000214792130;
    v14[2] = 0xD00000000000001CLL;
    v14[3] = 0x800000021478A360;
    swift_willThrow();
  }
}

uint64_t sub_214233844@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x696A6F6D65 && a2 == 0xE500000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_2146DA6A8();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_2142338C8(uint64_t a1)
{
  v2 = sub_21430E31C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_214233904(uint64_t a1)
{
  v2 = sub_21430E31C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t AvatarRecipe.EmojiRecipe.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90A618, &qword_2146F5ED8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v22 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21430E31C();
  sub_2146DAA08();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v9 = sub_2146DA168();
  v23 = a2;
  v26 = v9;
  v27 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v13 = swift_allocObject();
  v14 = swift_allocObject();
  *(v14 + 16) = 1;
  *(v13 + 16) = sub_21438F758;
  *(v13 + 24) = v14;
  *(inited + 32) = v13;
  sub_214042B80(inited, &v29);
  v16 = v29;
  v15 = v30;
  v28[0] = v26;
  v28[1] = v27;
  v34 = v33;
  v35 = v33;
  v29 = 0xD00000000000001ELL;
  v30 = 0x8000000214792130;
  v24 = 0x8000000214792130;
  v25 = v32;
  v31 = 0xD00000000000001CLL;
  v32 = 0x800000021478A360;

  v17 = v16(v28, &v35, &v29);
  v18 = v24;
  if (v17)
  {

    (*(v6 + 8))(v8, v5);

    v19 = v23;
    *v23 = v16;
    v19[1] = v15;
    v20 = v27;
    v19[2] = v26;
    v19[3] = v20;
    *(v19 + 32) = v34;
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  sub_214031C4C();
  swift_allocError();
  *v21 = 0xD00000000000001ELL;
  v21[1] = v18;
  v21[2] = 0xD00000000000001CLL;
  v21[3] = 0x800000021478A360;
  swift_willThrow();

  (*(v6 + 8))(v8, v5);

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_214233D30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6567616D69 && a2 == 0xE500000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_2146DA6A8();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_214233DB4(uint64_t a1)
{
  v2 = sub_21430E370();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_214233DF0(uint64_t a1)
{
  v2 = sub_21430E370();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_214233F10@<X0>(unint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X2>, char a4@<W3>, char *a5@<X4>, uint64_t *a6@<X5>, uint64_t a7@<X8>, double a8@<D0>, double a9@<D1>)
{
  v13 = *a3;
  v12 = a3[1];
  v15 = a3[2];
  v14 = a3[3];
  v42 = *a5;
  v43 = *a6;
  v44 = a6[1];
  v45 = a6[2];
  v46 = a6[3];
  v16 = *(a6 + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904188, &unk_2146F3E90);
  v18 = swift_allocObject();
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_2146F3C80;
  *(v18 + 16) = sub_21438F53C;
  *(v18 + 24) = v19;
  *(v17 + 32) = v18;
  sub_2140442CC(v17, &v49);
  v21 = v49;
  v20 = v50;
  v22 = *&v51;
  v23 = v52;
  v24 = BYTE1(v52);
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_2146E9BF0;
  v26 = swift_allocObject();
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_2146F3C90;
  *(v26 + 16) = sub_21438F53C;
  *(v26 + 24) = v27;
  *(v25 + 32) = v26;
  sub_2140442CC(v25, v78);
  v28 = v78[1];
  v47 = v78[0];
  v38 = v78[2];
  v29 = v79;
  v48 = v80;
  v81 = v16;
  v91 = v23;
  v88 = v79;
  v83 = v23;
  *v78 = a8;
  v82[0] = v24;
  v49 = 0xD000000000000024;
  v50 = 0x8000000214792150;
  *&v51 = -2.31584178e77;
  v52 = 0x800000021478A360;

  v30 = v21(v78, v82, &v49);
  if (v39)
  {

LABEL_6:

    v91 = v23;
LABEL_7:
    v49 = a1;
    v50 = a2;
    v51 = v21;
    v52 = v20;
    v53 = v22;
    v54 = v91;
    v55 = v24;
    v56 = v89;
    v57 = v90;
    v58 = v47;
    v59 = v28;
    v60 = v38;
    v61 = v88;
    v62 = v48;
    v63 = v86;
    v64 = v87;
    v65 = v13;
    v66 = v12;
    v67 = v15;
    v68 = v14;
    v69 = a4 & 1;
    v70 = v42;
    v71 = v84;
    v72 = v85;
    v73 = v43;
    v74 = v44;
    v75 = v45;
    v76 = v46;
    v77 = v16;
    return sub_21430E3C4(&v49);
  }

  if ((v30 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v32 = 0xD000000000000024;
    v32[1] = 0x8000000214792150;
    v32[2] = 0xD00000000000001CLL;
    v32[3] = 0x800000021478A360;
    swift_willThrow();
    v23 = v83;
    goto LABEL_6;
  }

  v91 = 0;
  v83 = v29;
  *v78 = a9;
  v82[0] = v48;
  v49 = 0xD000000000000026;
  v50 = 0x8000000214792180;
  *&v51 = -2.31584178e77;
  v52 = 0x800000021478A360;

  v31 = v47(v78, v82, &v49);
  if ((v31 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v35 = 0xD000000000000026;
    v35[1] = 0x8000000214792180;
    v35[2] = 0xD00000000000001CLL;
    v35[3] = 0x800000021478A360;
    swift_willThrow();
    v36 = v83;

    v88 = v36;
    v22 = a8;
    goto LABEL_7;
  }

  v88 = 0;
  v34 = v91;
  *a7 = a1;
  *(a7 + 8) = a2;
  *(a7 + 16) = v21;
  *(a7 + 24) = v20;
  *(a7 + 32) = a8;
  *(a7 + 40) = v34;
  *(a7 + 41) = v24;
  *(a7 + 48) = v47;
  *(a7 + 56) = v28;
  *(a7 + 64) = a9;
  *(a7 + 72) = 0;
  *(a7 + 73) = v48;
  *(a7 + 80) = v13;
  *(a7 + 88) = v12;
  *(a7 + 96) = v15;
  *(a7 + 104) = v14;
  *(a7 + 112) = a4 & 1;
  *(a7 + 113) = v42;
  *(a7 + 120) = v43;
  *(a7 + 128) = v44;
  *(a7 + 136) = v45;
  *(a7 + 144) = v46;
  *(a7 + 152) = v16;
  return result;
}

uint64_t sub_214234418()
{
  v1 = *v0;
  v2 = 0x656D614E746E6F66;
  v3 = 1701869940;
  if (v1 != 5)
  {
    v3 = 0x756F72676B636162;
  }

  v4 = 0x6F6C6F43746E6F66;
  if (v1 != 3)
  {
    v4 = 0x6369747265567369;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x657A6953746E6F66;
  if (v1 != 1)
  {
    v5 = 0x67696557746E6F66;
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

uint64_t sub_214234500@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_21437B6EC(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_214234528(uint64_t a1)
{
  v2 = sub_21430E418();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_214234564(uint64_t a1)
{
  v2 = sub_21430E418();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2142345A0@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90A648, &qword_2146F5EF8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v50 - v7;
  v9 = a1[3];
  v68 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v9);
  sub_21430E418();
  sub_2146DAA08();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(v68);
  }

  v10 = v6;
  LOBYTE(v79) = 0;
  v11 = sub_2146DA168();
  v13 = v12;
  v67 = v11;
  LOBYTE(v79) = 1;
  sub_2146DA188();
  v15 = v14;
  LOBYTE(v79) = 2;
  sub_2146DA188();
  v18 = v17;
  LOBYTE(v69) = 3;
  sub_2142FCE0C();
  sub_2146DA1C8();
  v20 = v79;
  v19 = v80;
  v22 = v81;
  v21 = v82;
  LOBYTE(v79) = 4;
  v23 = sub_2146DA178();
  LOBYTE(v69) = 5;
  sub_21430E46C();
  sub_2146DA1C8();
  v66 = v79;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908590, &qword_2146F50C8);
  v109 = 6;
  sub_2142FD5B0();
  sub_2146DA1C8();
  v53 = v111;
  v55 = v110;
  v56 = v112;
  v64 = v113;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  v65 = swift_allocObject();
  v59 = xmmword_2146E9BF0;
  *(v65 + 16) = xmmword_2146E9BF0;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904188, &unk_2146F3E90);
  v24 = swift_allocObject();
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_2146F3C80;
  *(v24 + 16) = sub_21438F53C;
  *(v24 + 24) = v25;
  v26 = v65;
  *(v65 + 32) = v24;
  sub_2140442CC(v26, &v79);
  v63 = v79;
  LODWORD(v57) = v23;
  v65 = v80;
  v27 = v81;
  v61 = v82;
  v62 = BYTE1(v82);
  v28 = swift_allocObject();
  *(v28 + 16) = v59;
  v29 = swift_allocObject();
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_2146F3C90;
  *(v29 + 16) = sub_21438F53C;
  *(v29 + 24) = v30;
  *(v28 + 32) = v29;
  sub_2140442CC(v28, &v69);
  v60 = *(&v69 + 1);
  v58 = v69;
  v52 = v70;
  LODWORD(v59) = BYTE9(v70);
  v54 = v57 & 1;
  v107 = v64;
  v121 = v61;
  v51 = BYTE8(v70);
  v118 = BYTE8(v70);
  LOBYTE(v78) = v61;
  *&v69 = v15;
  v108[0] = v62;
  v79 = 0xD000000000000024;
  v80 = 0x8000000214792150;
  v81 = 0xD00000000000001CLL;
  v82 = 0x800000021478A360;
  v57 = 0x800000021478A360;

  v31 = v63(&v69, v108, &v79);
  if (v31)
  {
    v32 = v57;

    v121 = 0;
    v108[0] = v51;
    v78 = v18;
    LOBYTE(v69) = v59;
    v79 = 0xD000000000000026;
    v80 = 0x8000000214792180;
    v81 = 0xD00000000000001CLL;
    v82 = v32;

    v33 = v58(&v78, &v69, &v79);
    if (v33)
    {

      (*(v10 + 8))(v8, v5);
      v40 = v60;

      v118 = 0;
      *&v69 = v67;
      *(&v69 + 1) = v13;
      *&v70 = v63;
      *(&v70 + 1) = v65;
      *&v71 = v15;
      v61 = v121;
      BYTE8(v71) = v121;
      v41 = v62;
      BYTE9(v71) = v62;
      *(&v71 + 10) = v119;
      HIWORD(v71) = v120;
      *&v72 = v58;
      *(&v72 + 1) = v40;
      *&v73 = v18;
      BYTE8(v73) = 0;
      BYTE9(v73) = v59;
      HIWORD(v73) = v117;
      *(&v73 + 10) = v116;
      *&v74 = v20;
      *(&v74 + 1) = v19;
      *&v75 = v22;
      *(&v75 + 1) = v21;
      LOBYTE(v76) = v54;
      v42 = v66;
      BYTE1(v76) = v66;
      *(&v76 + 2) = v114;
      WORD3(v76) = v115;
      v43 = v53;
      *(&v76 + 1) = v55;
      v77[0] = v53;
      *&v77[1] = v56;
      BYTE8(v77[1]) = v64;
      a2[8] = v53;
      v44 = v74;
      a2[4] = v73;
      a2[5] = v44;
      v45 = v70;
      *a2 = v69;
      a2[1] = v45;
      *(a2 + 137) = *(v77 + 9);
      v46 = v76;
      a2[6] = v75;
      a2[7] = v46;
      v47 = v72;
      a2[2] = v71;
      a2[3] = v47;
      sub_21430E4C0(&v69, &v79);
      __swift_destroy_boxed_opaque_existential_1(v68);
      v79 = v67;
      v80 = v13;
      v81 = v63;
      v82 = v65;
      v83 = v15;
      v84 = v61;
      v85 = v41;
      v86 = v119;
      v87 = v120;
      v88 = v58;
      v89 = v40;
      v90 = v18;
      v91 = 0;
      v92 = v59;
      v93 = v116;
      v94 = v117;
      v95 = v20;
      v96 = v19;
      v97 = v22;
      v98 = v21;
      v99 = v54;
      v100 = v42;
      v101 = v114;
      v102 = v115;
      v103 = v55;
      v104 = v43;
      goto LABEL_8;
    }

    sub_214031C4C();
    swift_allocError();
    *v48 = 0xD000000000000026;
    v48[1] = 0x8000000214792180;
    v49 = v57;
    v48[2] = 0xD00000000000001CLL;
    v48[3] = v49;
    swift_willThrow();
    (*(v10 + 8))(v8, v5);
    v51 = v108[0];

    v118 = v51;
    v27 = v15;
    v37 = v66;
    v39 = v63;
    v38 = v65;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v34 = 0xD000000000000024;
    v34[1] = 0x8000000214792150;
    v35 = v57;
    v34[2] = 0xD00000000000001CLL;
    v34[3] = v35;
    swift_willThrow();
    (*(v10 + 8))(v8, v5);
    v36 = v78;
    v37 = v66;
    v38 = v65;

    v121 = v36;
    v39 = v63;
  }

  __swift_destroy_boxed_opaque_existential_1(v68);
  v79 = v67;
  v80 = v13;
  v81 = v39;
  v82 = v38;
  v83 = v27;
  v84 = v121;
  v85 = v62;
  v86 = v119;
  v87 = v120;
  v88 = v58;
  v89 = v60;
  v90 = v52;
  v91 = v118;
  v92 = v59;
  v94 = v117;
  v93 = v116;
  v95 = v20;
  v96 = v19;
  v97 = v22;
  v98 = v21;
  v99 = v54;
  v100 = v37;
  v101 = v114;
  v102 = v115;
  v103 = v55;
  v104 = v53;
LABEL_8:
  v105 = v56;
  v106 = v64;
  return sub_21430E3C4(&v79);
}

uint64_t sub_214234F18(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90A660, &unk_2146F5F00);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v19 - v5;
  v30 = *(v1 + 40);
  v7 = *(v1 + 72);
  v8 = *(v1 + 80);
  v21 = *(v1 + 96);
  v22 = v8;
  v24 = *(v1 + 112);
  v25 = v7;
  v23 = *(v1 + 113);
  v9 = *(v1 + 120);
  v19 = *(v1 + 136);
  v20 = v9;
  v10 = *(v1 + 152);
  v11 = a1[3];
  v12 = a1;
  v14 = v13;
  __swift_project_boxed_opaque_existential_1(v12, v11);
  sub_21430E418();
  sub_2146DAA28();
  LOBYTE(v27) = 0;
  v15 = v26;
  sub_2146DA328();
  if (v15)
  {
    return (*(v4 + 8))(v6, v14);
  }

  v17 = v25;
  v18 = v23;
  if (v30 & 1) != 0 || (LOBYTE(v27) = 1, sub_2146DA348(), (v17))
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    LOBYTE(v27) = 2;
    sub_2146DA348();
    v28 = v21;
    v27 = v22;
    v31 = 3;
    sub_2142FCF88();
    sub_2146DA388();
    LOBYTE(v27) = 4;
    sub_2146DA338();
    LOBYTE(v27) = v18;
    v31 = 5;
    sub_21430E51C();
    sub_2146DA388();
    v28 = v19;
    v27 = v20;
    v29 = v10;
    v31 = 6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908590, &qword_2146F50C8);
    sub_2142FD688();
    sub_2146DA388();
    return MEMORY[8](v6, v14);
  }

  return result;
}

uint64_t sub_2142352F8@<X0>(unint64_t a1@<X0>, void (*a2)(void, void, void, void)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t (*a6)(void, void, void)@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, unsigned __int8 a12, uint64_t a13, uint64_t a14, unint64_t a15, uint64_t a16, int a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, unsigned __int8 a22, unsigned __int8 a23, uint64_t a24, uint64_t a25, unsigned __int8 a26, unsigned __int8 a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32)
{
  v229 = a7;
  v246 = a6;
  v208 = a5;
  v226 = a3;
  v227 = a4;
  v273 = a2;
  v245 = a1;
  v241 = a32;
  v237 = a29;
  v238 = a21;
  v239 = a20;
  v240 = a19;
  v242 = a16;
  LODWORD(v244) = a27;
  LODWORD(v243) = a26;
  v232 = a25;
  v231 = a24;
  LODWORD(v230) = a23;
  LODWORD(v228) = a22;
  LODWORD(v225) = a12;
  v224 = a11;
  v223 = a10;
  v205 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F38, &unk_2146E9D40);
  v34 = MEMORY[0x28223BE20](v205);
  v204 = &v203 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v34);
  v206 = (&v203 - v36);
  v37 = type metadata accessor for PhotosSharedAlbumMessage.PhotosSharedAlbum(0);
  v38 = a9 + v37[10];
  v236 = a13;
  sub_213FB2E54(a13, v38, &qword_27C913090, &unk_2146E9DB0);
  v39 = a9 + v37[11];
  v235 = a14;
  sub_213FB2E54(a14, v39, &unk_27C904F30, &unk_2146EFA20);
  v40 = a9 + v37[23];
  v234 = a30;
  sub_213FB2E54(a30, v40, &qword_27C913090, &unk_2146E9DB0);
  sub_2143E05AC(&v269);
  v214 = v271;
  v215 = v270;
  v219 = v272;
  sub_2143E05E0(&v265);
  v217 = v267;
  v218 = v266;
  v216 = v268;
  sub_2143E072C(&v261);
  v221 = v263;
  v222 = v262;
  v220 = v264;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  v41 = swift_allocObject();
  *(v41 + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9040B8, &qword_2146EAA08);
  v42 = swift_allocObject();
  v43 = swift_allocObject();
  *(v43 + 16) = 0x600000000;
  *(v42 + 16) = sub_21430E570;
  *(v42 + 24) = v43;
  *(v41 + 32) = v42;
  sub_214044C10(v41, &v257);
  v209 = v259;
  v210 = v258;
  v44 = v260;
  sub_2143E087C(&v253);
  v46 = v254;
  v45 = v255;
  v47 = v256;
  v207 = v37[15];
  sub_2143E08B0((a9 + v207));
  v203 = v37[16];
  sub_2143E0A5C((a9 + v203));
  sub_2143E0C08(&v249);
  v212 = v251;
  v213 = v250;
  v211 = v252;
  sub_2143E0C3C(v247);
  v48 = v214;
  *(a9 + 16) = v215;
  *(a9 + 24) = v48;
  *a9 = v269;
  *(a9 + 32) = v219;
  v49 = v227;
  *(a9 + 40) = v226;
  *(a9 + 48) = v49;
  *(a9 + 56) = v265;
  v50 = v217;
  *(a9 + 72) = v218;
  *(a9 + 80) = v50;
  *(a9 + 88) = v216;
  *(a9 + 96) = v229;
  *(a9 + 104) = a8;
  v51 = v224;
  *(a9 + 112) = v223;
  *(a9 + 120) = v51;
  *(a9 + 128) = v225;
  v52 = a9 + v37[12];
  *v52 = v261;
  v53 = v221;
  *(v52 + 16) = v222;
  *(v52 + 24) = v53;
  *(v52 + 32) = v220;
  v54 = a9 + v37[13];
  *v54 = v257;
  LOBYTE(v53) = v209;
  *(v54 + 16) = v210;
  *(v54 + 20) = v53;
  *(v54 + 21) = v44;
  v55 = a9 + v37[14];
  *v55 = v253;
  *(v55 + 16) = v46;
  *(v55 + 24) = v45;
  v56 = a9;
  *(v55 + 32) = v47;
  *(a9 + v37[17]) = v228;
  *(a9 + v37[18]) = v230;
  v57 = (a9 + v37[19]);
  *v57 = v231;
  v57[1] = v232;
  *(a9 + v37[20]) = v243;
  *(a9 + v37[21]) = v244;
  LOBYTE(v57) = v248;
  v58 = a9 + v37[22];
  *v58 = v249;
  *(v58 + 16) = v213;
  *(v58 + 24) = v212;
  *(v58 + 32) = v211;
  v59 = a9 + v37[24];
  v60 = v247[1];
  *v59 = v247[0];
  *(v59 + 16) = v60;
  *(v59 + 32) = v57;
  v61 = *a9;
  v62 = *(v56 + 8);
  v63 = *(v56 + 16);
  v64 = *(v56 + 24);
  v243 = v56;
  v65 = *(v56 + 32);
  *&v265 = v245;
  *(&v265 + 1) = v273;
  LODWORD(v232) = v65;
  LOBYTE(v261) = v65;
  *&v269 = 0xD000000000000035;
  *(&v269 + 1) = 0x80000002147921B0;
  v228 = 0x80000002147921B0;
  v270 = 0xD00000000000001CLL;
  v271 = 0x800000021478A360;
  v244 = 0x800000021478A360;

  v230 = v64;
  v231 = v63;
  sub_213FDC9D0(v63, v64);
  v229 = v62;
  v66 = v233;
  v233 = v61;
  v67 = v61(&v265, &v261, &v269);
  if (v66)
  {
    v245 = v66;

LABEL_6:

    sub_213FB2DF4(v234, &qword_27C913090, &unk_2146E9DB0);
    sub_213FB2DF4(v238, &unk_27C9131A0, &unk_2146E9D10);
    sub_213FB2DF4(v239, &unk_27C9131A0, &unk_2146E9D10);
    sub_213FB2DF4(v235, &unk_27C904F30, &unk_2146EFA20);
    sub_213FB2DF4(v236, &qword_27C913090, &unk_2146E9DB0);
    v70 = v243;
    v83 = *(v243 + 16);
    v84 = *(v243 + 24);

    sub_213FDC6D0(v83, v84);
    v85 = v229;
    *v70 = v233;
    *(v70 + 8) = v85;
    v86 = v230;
    *(v70 + 16) = v231;
    *(v70 + 24) = v86;
    *(v70 + 32) = v232;
    return sub_21432887C(v70, type metadata accessor for PhotosSharedAlbumMessage.PhotosSharedAlbum);
  }

  v68 = v228;
  v69 = v244;
  v226 = v54;
  v227 = v52;
  v224 = v58;
  v225 = v55;
  if ((v67 & 1) == 0)
  {
    sub_214031C4C();
    v81 = swift_allocError();
    *v82 = 0xD000000000000035;
    v82[1] = v68;
    v82[2] = 0xD00000000000001CLL;
    v82[3] = v69;
    v245 = v81;
    swift_willThrow();
    goto LABEL_6;
  }

  v223 = v59;
  sub_213FDC6D0(v231, v230);

  v70 = v243;
  v71 = *(v243 + 16);
  v72 = *(v243 + 24);

  sub_213FDC6D0(v71, v72);
  v73 = v229;
  *v70 = v233;
  *(v70 + 8) = v73;
  v74 = v273;
  *(v70 + 16) = v245;
  *(v70 + 24) = v74;
  *(v70 + 32) = v232;
  v76 = *(v70 + 56);
  v75 = *(v70 + 64);
  v77 = *(v70 + 72);
  v78 = *(v70 + 80);
  v79 = *(v70 + 88);
  *&v265 = v208;
  *(&v265 + 1) = v246;
  LODWORD(v233) = v79;
  LOBYTE(v261) = v79;
  *&v269 = 0xD000000000000038;
  *(&v269 + 1) = 0x80000002147921F0;
  v270 = 0xD00000000000001CLL;
  v271 = v69;

  sub_213FDC9D0(v77, v78);
  v273 = v76;
  v80 = v76(&v265, &v261, &v269);
  if ((v80 & 1) == 0)
  {
    sub_214031C4C();
    v98 = swift_allocError();
    *v99 = 0xD000000000000038;
    v99[1] = 0x80000002147921F0;
    v100 = v244;
    v99[2] = 0xD00000000000001CLL;
    v99[3] = v100;
    v245 = v98;
    swift_willThrow();

    sub_213FB2DF4(v234, &qword_27C913090, &unk_2146E9DB0);
    sub_213FB2DF4(v238, &unk_27C9131A0, &unk_2146E9D10);
    sub_213FB2DF4(v239, &unk_27C9131A0, &unk_2146E9D10);
    sub_213FB2DF4(v235, &unk_27C904F30, &unk_2146EFA20);
    sub_213FB2DF4(v236, &qword_27C913090, &unk_2146E9DB0);
    v101 = *(v70 + 72);
    v102 = *(v70 + 80);

    sub_213FDC6D0(v101, v102);
    *(v70 + 56) = v273;
    *(v70 + 64) = v75;
    *(v70 + 72) = v77;
    *(v70 + 80) = v78;
    *(v70 + 88) = v233;
    return sub_21432887C(v70, type metadata accessor for PhotosSharedAlbumMessage.PhotosSharedAlbum);
  }

  v245 = 0;
  sub_213FDC6D0(v77, v78);
  v88 = v244;

  v89 = *(v70 + 72);
  v90 = *(v70 + 80);

  sub_213FDC6D0(v89, v90);
  *(v70 + 56) = v273;
  *(v70 + 64) = v75;
  v91 = v246;
  *(v70 + 72) = v208;
  *(v70 + 80) = v91;
  *(v70 + 88) = v233;
  v93 = *v227;
  v92 = *(v227 + 8);
  v94 = *(v227 + 16);
  v95 = *(v227 + 24);
  LODWORD(v91) = *(v227 + 32);
  *&v265 = a15;
  *(&v265 + 1) = v242;
  LODWORD(v246) = v91;
  LOBYTE(v261) = v91;
  *&v269 = 0xD00000000000002FLL;
  *(&v269 + 1) = 0x8000000214792230;
  v270 = 0xD00000000000001CLL;
  v271 = v88;

  v232 = v95;
  v233 = v94;
  sub_213FDC9D0(v94, v95);
  v231 = v92;
  v96 = v245;
  v273 = v93;
  v97 = v93(&v265, &v261, &v269);
  if (v96)
  {

LABEL_15:

    sub_213FB2DF4(v234, &qword_27C913090, &unk_2146E9DB0);
    sub_213FB2DF4(v238, &unk_27C9131A0, &unk_2146E9D10);
    sub_213FB2DF4(v239, &unk_27C9131A0, &unk_2146E9D10);
    sub_213FB2DF4(v235, &unk_27C904F30, &unk_2146EFA20);
    sub_213FB2DF4(v236, &qword_27C913090, &unk_2146E9DB0);
    v116 = v227;
    v117 = *(v227 + 16);
    v118 = *(v227 + 24);

    sub_213FDC6D0(v117, v118);
    v119 = v231;
    *v116 = v273;
    *(v116 + 8) = v119;
    v120 = v232;
    *(v116 + 16) = v233;
    *(v116 + 24) = v120;
    *(v116 + 32) = v246;
    v70 = v243;
    return sub_21432887C(v70, type metadata accessor for PhotosSharedAlbumMessage.PhotosSharedAlbum);
  }

  v245 = a15;
  if ((v97 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v114 = 0xD00000000000002FLL;
    v114[1] = 0x8000000214792230;
    v115 = v244;
    v114[2] = 0xD00000000000001CLL;
    v114[3] = v115;
    swift_willThrow();
    goto LABEL_15;
  }

  sub_213FDC6D0(v233, v232);
  v103 = v244;

  v104 = v227;
  v105 = *(v227 + 16);
  v106 = *(v227 + 24);

  sub_213FDC6D0(v105, v106);
  v107 = v231;
  *v104 = v273;
  *(v104 + 8) = v107;
  v108 = v242;
  *(v104 + 16) = v245;
  *(v104 + 24) = v108;
  *(v104 + 32) = v246;
  v109 = v226;
  v111 = *v226;
  v110 = *(v226 + 8);
  LODWORD(v242) = *(v226 + 16);
  LODWORD(v233) = *(v226 + 20);
  v112 = *(v226 + 21);
  LODWORD(v265) = a17;
  LOBYTE(v261) = v112;
  *&v269 = 0xD00000000000003CLL;
  *(&v269 + 1) = 0x8000000214792260;
  v245 = 0x8000000214792260;
  v270 = 0xD00000000000001CLL;
  v271 = v103;

  v273 = v110;
  v246 = v111;
  v113 = v111(&v265, &v261, &v269);
  v121 = v245;
  LODWORD(v232) = a17;
  if ((v113 & 1) == 0)
  {
    LODWORD(v232) = v112;

    sub_214031C4C();
    swift_allocError();
    *v129 = 0xD00000000000003CLL;
    v129[1] = v121;
    v129[2] = 0xD00000000000001CLL;
    v129[3] = v103;
    swift_willThrow();
    sub_213FB2DF4(v234, &qword_27C913090, &unk_2146E9DB0);
    sub_213FB2DF4(v238, &unk_27C9131A0, &unk_2146E9D10);
    sub_213FB2DF4(v239, &unk_27C9131A0, &unk_2146E9D10);
    sub_213FB2DF4(v235, &unk_27C904F30, &unk_2146EFA20);
    sub_213FB2DF4(v236, &qword_27C913090, &unk_2146E9DB0);
    v70 = v243;
    v130 = v226;

    v131 = v273;
    *v130 = v246;
    *(v130 + 8) = v131;
    *(v130 + 16) = v242;
    *(v130 + 20) = v233;
    *(v130 + 21) = v232;
    return sub_21432887C(v70, type metadata accessor for PhotosSharedAlbumMessage.PhotosSharedAlbum);
  }

  v122 = v273;
  *v109 = v246;
  *(v109 + 8) = v122;
  *(v109 + 16) = v232;
  *(v109 + 20) = 0;
  *(v109 + 21) = v112;
  v124 = *v225;
  v123 = *(v225 + 8);
  v125 = *(v225 + 16);
  v126 = *(v225 + 24);
  v127 = *(v225 + 32);
  *&v265 = a18;
  *(&v265 + 1) = v240;
  LODWORD(v273) = v127;
  LOBYTE(v261) = v127;
  *&v269 = 0xD000000000000036;
  *(&v269 + 1) = 0x80000002147922A0;
  v270 = 0xD00000000000001CLL;
  v271 = v103;

  v246 = v125;
  sub_213FDC9D0(v125, v126);
  v128 = v124(&v265, &v261, &v269);
  v70 = v243;
  if ((v128 & 1) == 0)
  {
    sub_214031C4C();
    v143 = swift_allocError();
    *v144 = 0xD000000000000036;
    v144[1] = 0x80000002147922A0;
    v145 = v244;
    v144[2] = 0xD00000000000001CLL;
    v144[3] = v145;
    v245 = v143;
    swift_willThrow();

    sub_213FB2DF4(v234, &qword_27C913090, &unk_2146E9DB0);
    sub_213FB2DF4(v238, &unk_27C9131A0, &unk_2146E9D10);
    sub_213FB2DF4(v239, &unk_27C9131A0, &unk_2146E9D10);
    sub_213FB2DF4(v235, &unk_27C904F30, &unk_2146EFA20);
    sub_213FB2DF4(v236, &qword_27C913090, &unk_2146E9DB0);
    v146 = v225;
    v147 = *(v225 + 16);
    v148 = *(v225 + 24);

    sub_213FDC6D0(v147, v148);
    *v146 = v124;
    *(v146 + 8) = v123;
    *(v146 + 16) = v246;
    *(v146 + 24) = v126;
    *(v146 + 32) = v273;
    return sub_21432887C(v70, type metadata accessor for PhotosSharedAlbumMessage.PhotosSharedAlbum);
  }

  v245 = 0;
  sub_213FDC6D0(v246, v126);
  v132 = v244;

  v133 = v225;
  v134 = *(v225 + 16);
  v135 = *(v225 + 24);

  sub_213FDC6D0(v134, v135);
  *v133 = v124;
  *(v133 + 8) = v123;
  v136 = v240;
  *(v133 + 16) = a18;
  *(v133 + 24) = v136;
  *(v133 + 32) = v273;
  v137 = v206;
  sub_213FB2E54(v70 + v207, v206, &qword_27C903F38, &unk_2146E9D40);
  v138 = *v137;
  v139 = v205;
  LOBYTE(v265) = *(v137 + *(v205 + 32));
  *&v269 = 0xD00000000000002ELL;
  *(&v269 + 1) = 0x80000002147922E0;
  v270 = 0xD00000000000001CLL;
  v271 = v132;
  v140 = v239;
  v141 = v245;
  v142 = v138(v239, &v265, &v269);
  v245 = v141;
  if (v141)
  {

    sub_213FB2DF4(v234, &qword_27C913090, &unk_2146E9DB0);
    sub_213FB2DF4(v238, &unk_27C9131A0, &unk_2146E9D10);
    sub_213FB2DF4(v140, &unk_27C9131A0, &unk_2146E9D10);
    sub_213FB2DF4(v235, &unk_27C904F30, &unk_2146EFA20);
    sub_213FB2DF4(v236, &qword_27C913090, &unk_2146E9DB0);

LABEL_27:
    sub_21402EDB8(v206, v70 + v207, &qword_27C903F38, &unk_2146E9D40);
    return sub_21432887C(v70, type metadata accessor for PhotosSharedAlbumMessage.PhotosSharedAlbum);
  }

  if ((v142 & 1) == 0)
  {

    sub_214031C4C();
    v158 = swift_allocError();
    *v159 = 0xD00000000000002ELL;
    v159[1] = 0x80000002147922E0;
    v160 = v244;
    v159[2] = 0xD00000000000001CLL;
    v159[3] = v160;
    v245 = v158;
    swift_willThrow();
    sub_213FB2DF4(v234, &qword_27C913090, &unk_2146E9DB0);
    sub_213FB2DF4(v238, &unk_27C9131A0, &unk_2146E9D10);
    sub_213FB2DF4(v239, &unk_27C9131A0, &unk_2146E9D10);
    sub_213FB2DF4(v235, &unk_27C904F30, &unk_2146EFA20);
    sub_213FB2DF4(v236, &qword_27C913090, &unk_2146E9DB0);
    v70 = v243;
    goto LABEL_27;
  }

  v149 = v244;

  v150 = *(v139 + 28);
  sub_213FB2DF4(v137 + v150, &qword_27C903F40, &unk_2146F1C50);
  sub_213FB2E54(v239, v137 + v150, &unk_27C9131A0, &unk_2146E9D10);
  v151 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9131A0, &unk_2146E9D10);
  v273 = *(*(v151 - 8) + 56);
  v273(v137 + v150, 0, 1, v151);
  v152 = v243;
  sub_21402EDB8(v137, v243 + v207, &qword_27C903F38, &unk_2146E9D40);
  v153 = v152 + v203;
  v154 = v204;
  sub_213FB2E54(v153, v204, &qword_27C903F38, &unk_2146E9D40);
  v155 = *v154;
  LOBYTE(v265) = v154[*(v139 + 32)];
  *&v269 = 0xD000000000000034;
  *(&v269 + 1) = 0x8000000214792310;
  v270 = 0xD00000000000001CLL;
  v271 = v149;
  v156 = v245;
  v157 = v155(v238, &v265, &v269);
  if (v156)
  {

    sub_213FB2DF4(v234, &qword_27C913090, &unk_2146E9DB0);
    sub_213FB2DF4(v238, &unk_27C9131A0, &unk_2146E9D10);
    sub_213FB2DF4(v239, &unk_27C9131A0, &unk_2146E9D10);
    sub_213FB2DF4(v235, &unk_27C904F30, &unk_2146EFA20);
    sub_213FB2DF4(v236, &qword_27C913090, &unk_2146E9DB0);

LABEL_31:
    v70 = v243;
    sub_21402EDB8(v204, v243 + v203, &qword_27C903F38, &unk_2146E9D40);
    return sub_21432887C(v70, type metadata accessor for PhotosSharedAlbumMessage.PhotosSharedAlbum);
  }

  if ((v157 & 1) == 0)
  {

    sub_214031C4C();
    swift_allocError();
    *v171 = 0xD000000000000034;
    v171[1] = 0x8000000214792310;
    v172 = v244;
    v171[2] = 0xD00000000000001CLL;
    v171[3] = v172;
    swift_willThrow();
    sub_213FB2DF4(v234, &qword_27C913090, &unk_2146E9DB0);
    sub_213FB2DF4(v238, &unk_27C9131A0, &unk_2146E9D10);
    sub_213FB2DF4(v239, &unk_27C9131A0, &unk_2146E9D10);
    sub_213FB2DF4(v235, &unk_27C904F30, &unk_2146EFA20);
    sub_213FB2DF4(v236, &qword_27C913090, &unk_2146E9DB0);
    goto LABEL_31;
  }

  v161 = v244;

  v162 = v204;
  v163 = *(v205 + 28);
  sub_213FB2DF4(&v204[v163], &qword_27C903F40, &unk_2146F1C50);
  sub_213FB2E54(v238, v162 + v163, &unk_27C9131A0, &unk_2146E9D10);
  v273(v162 + v163, 0, 1, v151);
  sub_21402EDB8(v162, v243 + v203, &qword_27C903F38, &unk_2146E9D40);
  v165 = *v224;
  v164 = *(v224 + 8);
  v166 = *(v224 + 16);
  v167 = *(v224 + 24);
  v168 = *(v224 + 32);
  *&v265 = a28;
  *(&v265 + 1) = v237;
  LOBYTE(v261) = v168;
  *&v269 = 0xD00000000000003FLL;
  *(&v269 + 1) = 0x8000000214792350;
  v270 = 0xD00000000000001CLL;
  v271 = v161;

  v273 = v166;
  sub_213FDC9D0(v166, v167);
  v169 = v165;
  v170 = v165(&v265, &v261, &v269);
  v245 = 0;
  if ((v170 & 1) == 0)
  {
    sub_214031C4C();
    v186 = swift_allocError();
    *v187 = 0xD00000000000003FLL;
    v187[1] = 0x8000000214792350;
    v188 = v244;
    v187[2] = 0xD00000000000001CLL;
    v187[3] = v188;
    v245 = v186;
    swift_willThrow();

    sub_213FB2DF4(v234, &qword_27C913090, &unk_2146E9DB0);
    sub_213FB2DF4(v238, &unk_27C9131A0, &unk_2146E9D10);
    sub_213FB2DF4(v239, &unk_27C9131A0, &unk_2146E9D10);
    sub_213FB2DF4(v235, &unk_27C904F30, &unk_2146EFA20);
    sub_213FB2DF4(v236, &qword_27C913090, &unk_2146E9DB0);
    v189 = v224;
    v190 = *(v224 + 16);
    v191 = *(v224 + 24);

    sub_213FDC6D0(v190, v191);
    *v189 = v165;
    *(v189 + 8) = v164;
    *(v189 + 16) = v273;
    *(v189 + 24) = v167;
    *(v189 + 32) = v168;
    v70 = v243;
    return sub_21432887C(v70, type metadata accessor for PhotosSharedAlbumMessage.PhotosSharedAlbum);
  }

  v242 = a31;
  sub_213FDC6D0(v273, v167);
  v173 = v244;

  v174 = v224;
  v175 = *(v224 + 16);
  v176 = *(v224 + 24);

  sub_213FDC6D0(v175, v176);
  *v174 = v169;
  *(v174 + 8) = v164;
  v177 = v237;
  *(v174 + 16) = a28;
  *(v174 + 24) = v177;
  *(v174 + 32) = v168;
  v179 = *v223;
  v178 = *(v223 + 8);
  v180 = *(v223 + 16);
  v181 = *(v223 + 24);
  v182 = *(v223 + 32);
  v183 = v242;
  *&v265 = v242;
  *(&v265 + 1) = v241;
  LODWORD(v246) = v182;
  LOBYTE(v261) = v182;
  *&v269 = 0xD000000000000039;
  *(&v269 + 1) = 0x8000000214792390;
  v270 = 0xD00000000000001CLL;
  v271 = v173;

  sub_213FDC9D0(v180, v181);
  v273 = v178;
  v184 = v245;
  v185 = v179(&v265, &v261, &v269);
  if (v184)
  {

LABEL_39:

    sub_213FB2DF4(v234, &qword_27C913090, &unk_2146E9DB0);
    sub_213FB2DF4(v238, &unk_27C9131A0, &unk_2146E9D10);
    sub_213FB2DF4(v239, &unk_27C9131A0, &unk_2146E9D10);
    sub_213FB2DF4(v235, &unk_27C904F30, &unk_2146EFA20);
    sub_213FB2DF4(v236, &qword_27C913090, &unk_2146E9DB0);
    v199 = v223;
    v200 = *(v223 + 16);
    v201 = *(v223 + 24);

    sub_213FDC6D0(v200, v201);
    v202 = v273;
    *v199 = v179;
    *(v199 + 8) = v202;
    *(v199 + 16) = v180;
    *(v199 + 24) = v181;
    *(v199 + 32) = v246;
    v70 = v243;
    return sub_21432887C(v70, type metadata accessor for PhotosSharedAlbumMessage.PhotosSharedAlbum);
  }

  if ((v185 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v197 = 0xD000000000000039;
    v197[1] = 0x8000000214792390;
    v198 = v244;
    v197[2] = 0xD00000000000001CLL;
    v197[3] = v198;
    swift_willThrow();
    goto LABEL_39;
  }

  sub_213FDC6D0(v180, v181);

  sub_213FB2DF4(v234, &qword_27C913090, &unk_2146E9DB0);
  sub_213FB2DF4(v238, &unk_27C9131A0, &unk_2146E9D10);
  sub_213FB2DF4(v239, &unk_27C9131A0, &unk_2146E9D10);
  sub_213FB2DF4(v235, &unk_27C904F30, &unk_2146EFA20);
  sub_213FB2DF4(v236, &qword_27C913090, &unk_2146E9DB0);
  v192 = v223;
  v193 = *(v223 + 16);
  v194 = *(v223 + 24);

  result = sub_213FDC6D0(v193, v194);
  v195 = v273;
  *v192 = v179;
  *(v192 + 8) = v195;
  v196 = v241;
  *(v192 + 16) = v183;
  *(v192 + 24) = v196;
  *(v192 + 32) = v246;
  return result;
}

unint64_t sub_214236C04(char a1)
{
  result = 0x616D4572656E776FLL;
  switch(a1)
  {
    case 1:
      result = 0x6C754672656E776FLL;
      break;
    case 2:
      result = 0x72655072656E776FLL;
      break;
    case 3:
      result = 0x72694672656E776FLL;
      break;
    case 4:
      result = 0x73614C72656E776FLL;
      break;
    case 5:
      result = 0xD000000000000012;
      break;
    case 6:
      result = 0xD000000000000010;
      break;
    case 7:
      result = 1684632935;
      break;
    case 8:
      result = 1734440035;
      break;
    case 9:
      result = 0xD000000000000011;
      break;
    case 10:
      result = 0x436E676965726F66;
      break;
    case 11:
      result = 7107189;
      break;
    case 12:
      result = 0x525563696C627570;
      break;
    case 13:
      result = 0xD000000000000013;
      break;
    case 14:
      result = 0x6965726F46657375;
      break;
    case 15:
      result = 0x6D614E6D75626C61;
      break;
    case 16:
      result = 0x63696C6275507369;
      break;
    case 17:
      result = 0xD000000000000019;
      break;
    case 18:
      result = 0xD000000000000014;
      break;
    case 19:
      result = 0x6E6F697461657263;
      break;
    case 20:
      result = 0x4172657469766E69;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_214236EAC@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_21437B950(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_214236EE0(uint64_t a1)
{
  v2 = sub_21430E588();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_214236F1C(uint64_t a1)
{
  v2 = sub_21430E588();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_214236F58@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v220 = a2;
  v217 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F38, &unk_2146E9D40);
  v3 = MEMORY[0x28223BE20](v217);
  v219 = &v176 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v218 = &v176 - v5;
  v223 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9131A0, &unk_2146E9D10);
  v216 = *(v223 - 8);
  v6 = MEMORY[0x28223BE20](v223);
  v222 = &v176 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v224 = &v176 - v8;
  v225 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C904F30, &unk_2146EFA20);
  MEMORY[0x28223BE20](v225);
  v226 = &v176 - v9;
  v227 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C913090, &unk_2146E9DB0);
  v10 = MEMORY[0x28223BE20](v227);
  v221 = &v176 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = &v176 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90A670, &qword_2146F5F10);
  v228 = *(v14 - 8);
  v229 = v14;
  MEMORY[0x28223BE20](v14);
  v16 = &v176 - v15;
  v17 = type metadata accessor for PhotosSharedAlbumMessage.PhotosSharedAlbum(0);
  MEMORY[0x28223BE20](v17);
  v19 = &v176 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21430E588();
  v20 = v256;
  sub_2146DAA08();
  if (v20)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v213 = v17;
  v214 = v19;
  v215 = v13;
  v256 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
  LOBYTE(v248) = 0;
  sub_2142E12FC();
  v21 = v16;
  sub_2146DA1C8();
  v23 = *(&v252 + 1);
  v24 = v252;
  LOBYTE(v248) = 1;
  sub_2146DA1C8();
  v25 = *(&v252 + 1);
  v212 = v252;
  LOBYTE(v248) = 2;
  sub_2146DA1C8();
  v211 = v25;
  v210 = __PAIR128__(v23, v24);
  v26 = *(&v252 + 1);
  v27 = v252;
  LOBYTE(v248) = 3;
  sub_2146DA1C8();
  v209 = v27;
  v28 = v252;
  LOBYTE(v248) = 4;
  sub_2146DA1C8();
  v207 = v28;
  v208 = *(&v252 + 1);
  v206 = v252;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905688, &qword_2146F3CF0);
  LOBYTE(v248) = 5;
  v30 = sub_2142E1378();
  sub_2146DA1C8();
  v203 = v30;
  v204 = v29;
  v205 = v252;
  LOBYTE(v252) = 6;
  v31 = sub_2142EC0C4();
  sub_2146DA1C8();
  v201 = v31;
  v202 = v26;
  LOBYTE(v252) = 7;
  sub_2142EFBA8();
  sub_2146DA1C8();
  LOBYTE(v31) = v205;
  LOBYTE(v248) = 8;
  sub_2146DA1C8();
  v32 = v207;
  v200 = v252;
  LOBYTE(v252) = 9;
  v225 = v21;
  v199 = sub_2146DA1D8();
  LOBYTE(v248) = 10;
  sub_2146DA1C8();
  v198 = v252;
  LOBYTE(v252) = 11;
  sub_2142E27A8();
  sub_2146DA1C8();
  LOBYTE(v252) = 12;
  sub_2146DA1C8();
  LOBYTE(v248) = 13;
  sub_2146DA1C8();
  LOBYTE(v26) = v252;
  LOBYTE(v248) = 14;
  sub_2146DA1C8();
  v197 = v252;
  LOBYTE(v248) = 15;
  sub_2146DA1C8();
  v196 = v252;
  LOBYTE(v248) = 16;
  sub_2146DA1C8();
  v195 = v252;
  LOBYTE(v248) = 17;
  sub_2146DA1C8();
  LODWORD(v204) = v252;
  LOBYTE(v248) = 18;
  sub_2146DA1C8();
  v203 = *(&v252 + 1);
  v194 = v252;
  LOBYTE(v252) = 19;
  sub_2146DA1C8();
  LOBYTE(v248) = 20;
  sub_2146DA1C8();
  v227 = 0;
  v201 = *(&v252 + 1);
  v176 = v252;
  v33 = v213;
  v34 = v214;
  sub_213FB2E54(v215, v214 + *(v213 + 40), &qword_27C913090, &unk_2146E9DB0);
  sub_213FB2E54(v226, v34 + v33[11], &unk_27C904F30, &unk_2146EFA20);
  sub_213FB2E54(v221, v34 + v33[23], &qword_27C913090, &unk_2146E9DB0);
  sub_2143E05AC(&v252);
  v185 = v254;
  v186 = v253;
  v190 = v255;
  sub_2143E05E0(&v248);
  v188 = v250;
  v189 = v249;
  v187 = v251;
  sub_2143E072C(&v244);
  v192 = v246;
  v193 = v245;
  v191 = v247;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  v35 = swift_allocObject();
  *(v35 + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9040B8, &qword_2146EAA08);
  v36 = swift_allocObject();
  v37 = swift_allocObject();
  *(v37 + 16) = 0x600000000;
  *(v36 + 16) = sub_21438F474;
  *(v36 + 24) = v37;
  *(v35 + 32) = v36;
  sub_214044C10(v35, &v240);
  v180 = v242;
  v181 = v241;
  v179 = v243;
  sub_2143E087C(&v236);
  v38 = v237;
  v39 = v238;
  LOBYTE(v36) = v239;
  v178 = v33[15];
  sub_2143E08B0(v34 + v178);
  v177 = v33[16];
  sub_2143E0A5C(v34 + v177);
  sub_2143E0C08(&v232);
  v183 = v234;
  v184 = v233;
  v182 = v235;
  sub_2143E0C3C(v230);
  v40 = v185;
  v34[2] = v186;
  v34[3] = v40;
  *v34 = v252;
  *(v34 + 32) = v190;
  v41 = v211;
  v34[5] = v212;
  v34[6] = v41;
  *(v34 + 7) = v248;
  v42 = v188;
  v34[9] = v189;
  v34[10] = v42;
  *(v34 + 88) = v187;
  v43 = *(&v207 + 1);
  v34[12] = v32;
  v34[13] = v43;
  v44 = v208;
  v34[14] = v206;
  v34[15] = v44;
  *(v34 + 128) = v31;
  v45 = v34 + v33[12];
  *v45 = v244;
  v46 = v192;
  *(v45 + 2) = v193;
  *(v45 + 3) = v46;
  v208 = v45;
  v45[32] = v191;
  v47 = v34 + v33[13];
  *v47 = v240;
  LOBYTE(v45) = v180;
  *(v47 + 4) = v181;
  v47[20] = v45;
  v47[21] = v179;
  v48 = v34 + v33[14];
  *v48 = v236;
  *(v48 + 2) = v38;
  *(v48 + 3) = v39;
  *(&v207 + 1) = v48;
  v48[32] = v36;
  *(v34 + v33[17]) = v26;
  *(v34 + v33[18]) = v197;
  v49 = (v34 + v33[19]);
  v50 = *(&v196 + 1);
  *v49 = v196;
  v49[1] = v50;
  *(v34 + v33[20]) = v195;
  *(v34 + v33[21]) = v204;
  LOBYTE(v49) = v231;
  v51 = v34 + v33[22];
  *v51 = v232;
  v52 = v183;
  *(v51 + 2) = v184;
  *(v51 + 3) = v52;
  *&v207 = v51;
  v51[32] = v182;
  v53 = v34 + v33[24];
  v54 = v230[1];
  *v53 = v230[0];
  *(v53 + 1) = v54;
  v206 = v53;
  v53[32] = v49;
  v56 = *v34;
  v55 = v34[1];
  v57 = v34[2];
  v58 = v34[3];
  LODWORD(v52) = *(v34 + 32);
  v248 = v210;
  LODWORD(v211) = v52;
  LOBYTE(v244) = v52;
  *&v252 = 0xD000000000000035;
  *(&v252 + 1) = 0x80000002147921B0;
  v253 = 0xD00000000000001CLL;
  v254 = 0x800000021478A360;
  v213 = 0x800000021478A360;

  sub_213FDC9D0(v57, v58);
  v59 = v227;
  v212 = v56;
  v60 = v56(&v248, &v244, &v252);
  v227 = v59;
  if (v59)
  {

LABEL_9:

    sub_213FB2DF4(v221, &qword_27C913090, &unk_2146E9DB0);
    sub_213FB2DF4(v222, &unk_27C9131A0, &unk_2146E9D10);
    sub_213FB2DF4(v224, &unk_27C9131A0, &unk_2146E9D10);
    sub_213FB2DF4(v226, &unk_27C904F30, &unk_2146EFA20);
    sub_213FB2DF4(v215, &qword_27C913090, &unk_2146E9DB0);
    (*(v228 + 8))(v225, v229);
    v76 = v214;
LABEL_10:
    v77 = v76[2];
    v78 = v76[3];

    sub_213FDC6D0(v77, v78);
    *v76 = v212;
    v76[1] = v55;
    v76[2] = v57;
    v76[3] = v58;
    v79 = v211;
LABEL_11:
    *(v76 + 32) = v79;
LABEL_12:
    __swift_destroy_boxed_opaque_existential_1(v256);
    return sub_21432887C(v214, type metadata accessor for PhotosSharedAlbumMessage.PhotosSharedAlbum);
  }

  if ((v60 & 1) == 0)
  {
    sub_214031C4C();
    v73 = swift_allocError();
    *v74 = 0xD000000000000035;
    v74[1] = 0x80000002147921B0;
    v75 = v213;
    v74[2] = 0xD00000000000001CLL;
    v74[3] = v75;
    v227 = v73;
    swift_willThrow();
    goto LABEL_9;
  }

  sub_213FDC6D0(v57, v58);
  v61 = v213;

  v62 = v214;
  v63 = v214[2];
  v64 = v214[3];

  sub_213FDC6D0(v63, v64);
  *v62 = v212;
  v62[1] = v55;
  v65 = *(&v210 + 1);
  v62[2] = v210;
  v62[3] = v65;
  *(v62 + 32) = v211;
  v67 = v62[7];
  v66 = v62[8];
  v68 = v62[9];
  v69 = v62[10];
  v70 = *(v62 + 88);
  *&v248 = v209;
  *(&v248 + 1) = v202;
  LODWORD(v211) = v70;
  LOBYTE(v244) = v70;
  *&v252 = 0xD000000000000038;
  *(&v252 + 1) = 0x80000002147921F0;
  v253 = 0xD00000000000001CLL;
  v254 = v61;

  sub_213FDC9D0(v68, v69);
  v71 = v227;
  v212 = v67;
  v72 = v67(&v248, &v244, &v252);
  v227 = v71;
  if (v71)
  {

LABEL_17:

    sub_213FB2DF4(v221, &qword_27C913090, &unk_2146E9DB0);
    sub_213FB2DF4(v222, &unk_27C9131A0, &unk_2146E9D10);
    sub_213FB2DF4(v224, &unk_27C9131A0, &unk_2146E9D10);
    sub_213FB2DF4(v226, &unk_27C904F30, &unk_2146EFA20);
    sub_213FB2DF4(v215, &qword_27C913090, &unk_2146E9DB0);
    (*(v228 + 8))(v225, v229);
    v92 = v214;
    v93 = v214[9];
    v94 = v214[10];

    sub_213FDC6D0(v93, v94);
    v92[7] = v212;
    v92[8] = v66;
    v92[9] = v68;
    v92[10] = v69;
    *(v92 + 88) = v211;
    goto LABEL_12;
  }

  if ((v72 & 1) == 0)
  {
    sub_214031C4C();
    v89 = swift_allocError();
    *v90 = 0xD000000000000038;
    v90[1] = 0x80000002147921F0;
    v91 = v213;
    v90[2] = 0xD00000000000001CLL;
    v90[3] = v91;
    v227 = v89;
    swift_willThrow();
    goto LABEL_17;
  }

  sub_213FDC6D0(v68, v69);
  v80 = v213;

  v81 = v214;
  v82 = v214[9];
  v83 = v214[10];

  sub_213FDC6D0(v82, v83);
  v81[7] = v212;
  v81[8] = v66;
  v84 = v202;
  v81[9] = v209;
  v81[10] = v84;
  *(v81 + 88) = v211;
  v85 = *v208;
  v55 = *(v208 + 1);
  v57 = *(v208 + 2);
  v58 = *(v208 + 3);
  v86 = v208[32];
  v248 = v200;
  LODWORD(v211) = v86;
  LOBYTE(v244) = v86;
  *&v252 = 0xD00000000000002FLL;
  *(&v252 + 1) = 0x8000000214792230;
  v253 = 0xD00000000000001CLL;
  v254 = v80;

  sub_213FDC9D0(v57, v58);
  v87 = v227;
  v212 = v85;
  v88 = v85(&v248, &v244, &v252);
  v227 = v87;
  if (v87)
  {

LABEL_22:

    sub_213FB2DF4(v221, &qword_27C913090, &unk_2146E9DB0);
    sub_213FB2DF4(v222, &unk_27C9131A0, &unk_2146E9D10);
    sub_213FB2DF4(v224, &unk_27C9131A0, &unk_2146E9D10);
    sub_213FB2DF4(v226, &unk_27C904F30, &unk_2146EFA20);
    sub_213FB2DF4(v215, &qword_27C913090, &unk_2146E9DB0);
    (*(v228 + 8))(v225, v229);
    v76 = v208;
    goto LABEL_10;
  }

  if ((v88 & 1) == 0)
  {
    sub_214031C4C();
    v105 = swift_allocError();
    *v106 = 0xD00000000000002FLL;
    v106[1] = 0x8000000214792230;
    v107 = v213;
    v106[2] = 0xD00000000000001CLL;
    v106[3] = v107;
    v227 = v105;
    swift_willThrow();
    goto LABEL_22;
  }

  sub_213FDC6D0(v57, v58);
  v95 = v213;

  v96 = v208;
  v97 = *(v208 + 2);
  v98 = *(v208 + 3);

  sub_213FDC6D0(v97, v98);
  *v96 = v212;
  *(v96 + 1) = v55;
  v99 = *(&v200 + 1);
  *(v96 + 2) = v200;
  *(v96 + 3) = v99;
  v96[32] = v211;
  v101 = *v47;
  v100 = *(v47 + 1);
  LODWORD(v211) = *(v47 + 4);
  DWORD2(v210) = v47[20];
  v102 = v47[21];
  LODWORD(v248) = v199;
  LOBYTE(v244) = v102;
  *&v252 = 0xD00000000000003CLL;
  *(&v252 + 1) = 0x8000000214792260;
  v253 = 0xD00000000000001CLL;
  v254 = v95;

  v103 = v227;
  v212 = v101;
  v104 = v101(&v248, &v244, &v252);
  v227 = v103;
  if (v103)
  {

    sub_213FB2DF4(v221, &qword_27C913090, &unk_2146E9DB0);
    sub_213FB2DF4(v222, &unk_27C9131A0, &unk_2146E9D10);
    sub_213FB2DF4(v224, &unk_27C9131A0, &unk_2146E9D10);
    sub_213FB2DF4(v226, &unk_27C904F30, &unk_2146EFA20);
    sub_213FB2DF4(v215, &qword_27C913090, &unk_2146E9DB0);
    (*(v228 + 8))(v225, v229);

LABEL_29:

    *v47 = v212;
    *(v47 + 1) = v100;
    *(v47 + 4) = v211;
    v47[20] = BYTE8(v210);
    v47[21] = v102;
    goto LABEL_12;
  }

  if ((v104 & 1) == 0)
  {

    sub_214031C4C();
    v122 = swift_allocError();
    *v123 = 0xD00000000000003CLL;
    v123[1] = 0x8000000214792260;
    v124 = v213;
    v123[2] = 0xD00000000000001CLL;
    v123[3] = v124;
    v227 = v122;
    swift_willThrow();
    sub_213FB2DF4(v221, &qword_27C913090, &unk_2146E9DB0);
    sub_213FB2DF4(v222, &unk_27C9131A0, &unk_2146E9D10);
    sub_213FB2DF4(v224, &unk_27C9131A0, &unk_2146E9D10);
    sub_213FB2DF4(v226, &unk_27C904F30, &unk_2146EFA20);
    sub_213FB2DF4(v215, &qword_27C913090, &unk_2146E9DB0);
    (*(v228 + 8))(v225, v229);
    goto LABEL_29;
  }

  v108 = v213;

  *v47 = v212;
  *(v47 + 1) = v100;
  *(v47 + 4) = v199;
  v47[20] = 0;
  v47[21] = v102;
  v109 = **(&v207 + 1);
  v55 = *(*(&v207 + 1) + 8);
  v57 = *(*(&v207 + 1) + 16);
  v58 = *(*(&v207 + 1) + 24);
  v110 = *(*(&v207 + 1) + 32);
  v248 = v198;
  LODWORD(v211) = v110;
  LOBYTE(v244) = v110;
  *&v252 = 0xD000000000000036;
  *(&v252 + 1) = 0x80000002147922A0;
  v253 = 0xD00000000000001CLL;
  v254 = v108;

  sub_213FDC9D0(v57, v58);
  v111 = v227;
  v212 = v109;
  v112 = v109(&v248, &v244, &v252);
  v227 = v111;
  if (v111)
  {
LABEL_31:

    sub_213FB2DF4(v221, &qword_27C913090, &unk_2146E9DB0);
    sub_213FB2DF4(v222, &unk_27C9131A0, &unk_2146E9D10);
    sub_213FB2DF4(v224, &unk_27C9131A0, &unk_2146E9D10);
    sub_213FB2DF4(v226, &unk_27C904F30, &unk_2146EFA20);
    sub_213FB2DF4(v215, &qword_27C913090, &unk_2146E9DB0);
    (*(v228 + 8))(v225, v229);
    v76 = *(&v207 + 1);
    goto LABEL_10;
  }

  if ((v112 & 1) == 0)
  {
    sub_214031C4C();
    v125 = swift_allocError();
    *v126 = 0xD000000000000036;
    v126[1] = 0x80000002147922A0;
    v127 = v213;
    v126[2] = 0xD00000000000001CLL;
    v126[3] = v127;
    v227 = v125;
    swift_willThrow();

    goto LABEL_31;
  }

  sub_213FDC6D0(v57, v58);
  v113 = v213;

  v114 = *(&v207 + 1);
  v115 = *(*(&v207 + 1) + 16);
  v116 = *(*(&v207 + 1) + 24);

  sub_213FDC6D0(v115, v116);
  *v114 = v212;
  *(v114 + 8) = v55;
  v117 = *(&v198 + 1);
  *(v114 + 16) = v198;
  *(v114 + 24) = v117;
  *(v114 + 32) = v211;
  v118 = v218;
  sub_213FB2E54(v214 + v178, v218, &qword_27C903F38, &unk_2146E9D40);
  v119 = *v118;
  LOBYTE(v248) = v118[*(v217 + 32)];
  *&v252 = 0xD00000000000002ELL;
  *(&v252 + 1) = 0x80000002147922E0;
  v253 = 0xD00000000000001CLL;
  v254 = v113;
  v120 = v227;
  v121 = v119(v224, &v248, &v252);
  v227 = v120;
  if (v120)
  {

    sub_213FB2DF4(v221, &qword_27C913090, &unk_2146E9DB0);
    sub_213FB2DF4(v222, &unk_27C9131A0, &unk_2146E9D10);
    sub_213FB2DF4(v224, &unk_27C9131A0, &unk_2146E9D10);
    sub_213FB2DF4(v226, &unk_27C904F30, &unk_2146EFA20);
    sub_213FB2DF4(v215, &qword_27C913090, &unk_2146E9DB0);
    (*(v228 + 8))(v225, v229);

LABEL_36:
    sub_21402EDB8(v218, v214 + v178, &qword_27C903F38, &unk_2146E9D40);
    goto LABEL_12;
  }

  if ((v121 & 1) == 0)
  {

    sub_214031C4C();
    v139 = swift_allocError();
    *v140 = 0xD00000000000002ELL;
    v140[1] = 0x80000002147922E0;
    v141 = v213;
    v140[2] = 0xD00000000000001CLL;
    v140[3] = v141;
    v227 = v139;
    swift_willThrow();
    sub_213FB2DF4(v221, &qword_27C913090, &unk_2146E9DB0);
    sub_213FB2DF4(v222, &unk_27C9131A0, &unk_2146E9D10);
    sub_213FB2DF4(v224, &unk_27C9131A0, &unk_2146E9D10);
    sub_213FB2DF4(v226, &unk_27C904F30, &unk_2146EFA20);
    sub_213FB2DF4(v215, &qword_27C913090, &unk_2146E9DB0);
    (*(v228 + 8))(v225, v229);
    goto LABEL_36;
  }

  v128 = v213;

  v130 = v217;
  v129 = v218;
  v131 = *(v217 + 28);
  sub_213FB2DF4(&v218[v131], &qword_27C903F40, &unk_2146F1C50);
  sub_213FB2E54(v224, v129 + v131, &unk_27C9131A0, &unk_2146E9D10);
  v132 = *(v216 + 56);
  v216 += 56;
  v132(v129 + v131, 0, 1, v223);
  v133 = v214;
  sub_21402EDB8(v129, v214 + v178, &qword_27C903F38, &unk_2146E9D40);
  v134 = v133 + v177;
  v135 = v219;
  sub_213FB2E54(v134, v219, &qword_27C903F38, &unk_2146E9D40);
  v136 = *v135;
  LOBYTE(v248) = v135[*(v130 + 32)];
  *&v252 = 0xD000000000000034;
  *(&v252 + 1) = 0x8000000214792310;
  v253 = 0xD00000000000001CLL;
  v254 = v128;
  v137 = v227;
  v138 = v136(v222, &v248, &v252);
  v227 = v137;
  if (v137)
  {

    sub_213FB2DF4(v221, &qword_27C913090, &unk_2146E9DB0);
    sub_213FB2DF4(v222, &unk_27C9131A0, &unk_2146E9D10);
    sub_213FB2DF4(v224, &unk_27C9131A0, &unk_2146E9D10);
    sub_213FB2DF4(v226, &unk_27C904F30, &unk_2146EFA20);
    sub_213FB2DF4(v215, &qword_27C913090, &unk_2146E9DB0);
    (*(v228 + 8))(v225, v229);

LABEL_41:
    sub_21402EDB8(v219, v214 + v177, &qword_27C903F38, &unk_2146E9D40);
    goto LABEL_12;
  }

  if ((v138 & 1) == 0)
  {

    sub_214031C4C();
    v152 = swift_allocError();
    *v153 = 0xD000000000000034;
    v153[1] = 0x8000000214792310;
    v154 = v213;
    v153[2] = 0xD00000000000001CLL;
    v153[3] = v154;
    v227 = v152;
    swift_willThrow();
    sub_213FB2DF4(v221, &qword_27C913090, &unk_2146E9DB0);
    sub_213FB2DF4(v222, &unk_27C9131A0, &unk_2146E9D10);
    sub_213FB2DF4(v224, &unk_27C9131A0, &unk_2146E9D10);
    sub_213FB2DF4(v226, &unk_27C904F30, &unk_2146EFA20);
    sub_213FB2DF4(v215, &qword_27C913090, &unk_2146E9DB0);
    (*(v228 + 8))(v225, v229);
    goto LABEL_41;
  }

  v142 = v213;

  v143 = *(v217 + 28);
  v144 = v219;
  sub_213FB2DF4(&v219[v143], &qword_27C903F40, &unk_2146F1C50);
  sub_213FB2E54(v222, v144 + v143, &unk_27C9131A0, &unk_2146E9D10);
  v132(v144 + v143, 0, 1, v223);
  sub_21402EDB8(v144, v214 + v177, &qword_27C903F38, &unk_2146E9D40);
  v146 = *v207;
  v145 = *(v207 + 8);
  v147 = *(v207 + 16);
  v148 = *(v207 + 24);
  v149 = *(v207 + 32);
  *&v248 = v194;
  *(&v248 + 1) = v203;
  LODWORD(v219) = v149;
  LOBYTE(v244) = v149;
  *&v252 = 0xD00000000000003FLL;
  *(&v252 + 1) = 0x8000000214792350;
  v253 = 0xD00000000000001CLL;
  v254 = v142;

  sub_213FDC9D0(v147, v148);
  v150 = v227;
  v223 = v146;
  v151 = v146(&v248, &v244, &v252);
  v227 = v150;
  if (v150)
  {

LABEL_46:

    sub_213FB2DF4(v221, &qword_27C913090, &unk_2146E9DB0);
    sub_213FB2DF4(v222, &unk_27C9131A0, &unk_2146E9D10);
    sub_213FB2DF4(v224, &unk_27C9131A0, &unk_2146E9D10);
    sub_213FB2DF4(v226, &unk_27C904F30, &unk_2146EFA20);
    sub_213FB2DF4(v215, &qword_27C913090, &unk_2146E9DB0);
    (*(v228 + 8))(v225, v229);
    v76 = v207;
LABEL_47:
    v167 = v76[2];
    v168 = v76[3];

    sub_213FDC6D0(v167, v168);
    *v76 = v223;
    v76[1] = v145;
    v76[2] = v147;
    v76[3] = v148;
    v79 = v219;
    goto LABEL_11;
  }

  if ((v151 & 1) == 0)
  {
    sub_214031C4C();
    v164 = swift_allocError();
    *v165 = 0xD00000000000003FLL;
    v165[1] = 0x8000000214792350;
    v166 = v213;
    v165[2] = 0xD00000000000001CLL;
    v165[3] = v166;
    v227 = v164;
    swift_willThrow();

    goto LABEL_46;
  }

  sub_213FDC6D0(v147, v148);
  v155 = v213;

  v156 = v207;
  v157 = *(v207 + 16);
  v158 = *(v207 + 24);

  sub_213FDC6D0(v157, v158);
  *v156 = v223;
  *(v156 + 8) = v145;
  v159 = v203;
  *(v156 + 16) = v194;
  *(v156 + 24) = v159;
  *(v156 + 32) = v219;
  v160 = *v206;
  v145 = *(v206 + 1);
  v147 = *(v206 + 2);
  v148 = *(v206 + 3);
  v161 = v206[32];
  *&v248 = v176;
  *(&v248 + 1) = v201;
  LODWORD(v219) = v161;
  LOBYTE(v244) = v161;
  *&v252 = 0xD000000000000039;
  *(&v252 + 1) = 0x8000000214792390;
  v253 = 0xD00000000000001CLL;
  v254 = v155;

  sub_213FDC9D0(v147, v148);
  v162 = v227;
  v223 = v160;
  v163 = v160(&v248, &v244, &v252);
  v227 = v162;
  if (v162)
  {

LABEL_51:

    sub_213FB2DF4(v221, &qword_27C913090, &unk_2146E9DB0);
    sub_213FB2DF4(v222, &unk_27C9131A0, &unk_2146E9D10);
    sub_213FB2DF4(v224, &unk_27C9131A0, &unk_2146E9D10);
    sub_213FB2DF4(v226, &unk_27C904F30, &unk_2146EFA20);
    sub_213FB2DF4(v215, &qword_27C913090, &unk_2146E9DB0);
    (*(v228 + 8))(v225, v229);
    v76 = v206;
    goto LABEL_47;
  }

  if ((v163 & 1) == 0)
  {
    sub_214031C4C();
    v173 = swift_allocError();
    *v174 = 0xD000000000000039;
    v174[1] = 0x8000000214792390;
    v175 = v213;
    v174[2] = 0xD00000000000001CLL;
    v174[3] = v175;
    v227 = v173;
    swift_willThrow();
    goto LABEL_51;
  }

  sub_213FDC6D0(v147, v148);

  sub_213FB2DF4(v221, &qword_27C913090, &unk_2146E9DB0);
  sub_213FB2DF4(v222, &unk_27C9131A0, &unk_2146E9D10);
  sub_213FB2DF4(v224, &unk_27C9131A0, &unk_2146E9D10);
  sub_213FB2DF4(v226, &unk_27C904F30, &unk_2146EFA20);
  sub_213FB2DF4(v215, &qword_27C913090, &unk_2146E9DB0);
  (*(v228 + 8))(v225, v229);
  v169 = v206;
  v170 = *(v206 + 2);
  v171 = *(v206 + 3);

  sub_213FDC6D0(v170, v171);
  *v169 = v223;
  *(v169 + 1) = v145;
  v172 = v201;
  *(v169 + 2) = v176;
  *(v169 + 3) = v172;
  v169[32] = v219;
  sub_214328704(v214, v220, type metadata accessor for PhotosSharedAlbumMessage.PhotosSharedAlbum);
  return __swift_destroy_boxed_opaque_existential_1(v256);
}