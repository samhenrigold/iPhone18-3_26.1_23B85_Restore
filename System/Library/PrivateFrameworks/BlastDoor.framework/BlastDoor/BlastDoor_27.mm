uint64_t sub_21428D150@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, __int128 *a3@<X2>, uint64_t a4@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v9 = swift_allocObject();
  LOBYTE(v23) = 0;
  v10 = swift_allocObject();
  *(v10 + 16) = 100;
  *(v10 + 24) = v23;
  *(v9 + 16) = sub_21438F518;
  *(v9 + 24) = v10;
  *(inited + 32) = v9;
  sub_214042B80(inited, &v23);
  v11 = *a3;
  *&v35[23] = a3[1];
  v12 = a3[3];
  *&v35[39] = a3[2];
  *&v35[55] = v12;
  *&v35[64] = *(a3 + 57);
  v14 = v23;
  v13 = v24;
  v15 = v26;
  v36 = v25;
  v16 = v27;
  *&v35[7] = v11;
  v34[0] = a1;
  v34[1] = a2;
  v33 = v27;
  v23 = 0xD000000000000024;
  v24 = 0x8000000214792F30;
  v25 = 0xD00000000000001CLL;
  v26 = 0x800000021478A360;

  v17 = v14(v34, &v33, &v23);
  if (v4)
  {
  }

  else
  {
    if (v17)
    {

      result = swift_bridgeObjectRelease_n();
      v19 = *v35;
      *(a4 + 49) = *&v35[16];
      v20 = *&v35[48];
      *(a4 + 65) = *&v35[32];
      *(a4 + 81) = v20;
      *(a4 + 97) = *&v35[64];
      *a4 = v14;
      *(a4 + 8) = v13;
      *(a4 + 16) = a1;
      *(a4 + 24) = a2;
      *(a4 + 32) = v16;
      *(a4 + 33) = v19;
      return result;
    }

    sub_214031C4C();
    swift_allocError();
    *v21 = 0xD000000000000024;
    v21[1] = 0x8000000214792F30;
    v21[2] = 0xD00000000000001CLL;
    v21[3] = 0x800000021478A360;
    swift_willThrow();
  }

  v29 = *&v35[16];
  v30 = *&v35[32];
  v31 = *&v35[48];
  v32 = *&v35[64];
  v23 = v14;
  v24 = v13;
  v25 = v36;
  v26 = v15;
  v27 = v16;
  v28 = *v35;
  return sub_21431AB00(&v23);
}

uint64_t sub_21428D3F4()
{
  if (*v0)
  {
    return 0x6B63616274736F70;
  }

  else
  {
    return 0x5479616C70736964;
  }
}

uint64_t sub_21428D438@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x5479616C70736964 && a2 == 0xEB00000000747865;
  if (v6 || (sub_2146DA6A8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6B63616274736F70 && a2 == 0xE800000000000000)
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

uint64_t sub_21428D518(uint64_t a1)
{
  v2 = sub_21431AB54();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21428D554(uint64_t a1)
{
  v2 = sub_21431AB54();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21428D590@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90BFE8, &unk_2146F6A70);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v35 - v7;
  v9 = a1[3];
  v66 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v9);
  sub_21431AB54();
  sub_2146DAA08();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(v66);
  }

  v42 = a2;
  v43 = v6;
  LOBYTE(v47) = 0;
  v10 = sub_2146DA168();
  v12 = v11;
  v41 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90BFF8, &qword_214763E40);
  v63 = 1;
  sub_21431ABA8();
  sub_2146DA1C8();
  v60 = v64[1];
  v61 = v64[2];
  *v62 = v65[0];
  *&v62[9] = *(v65 + 9);
  v59 = v64[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v15 = v12;
  v16 = swift_allocObject();
  LOBYTE(v47) = 0;
  v17 = swift_allocObject();
  *(v17 + 16) = 100;
  *(v17 + 24) = v47;
  *(v16 + 16) = sub_21438F518;
  *(v16 + 24) = v17;
  *(inited + 32) = v16;
  sub_213FB2E54(&v59, &v47, &qword_27C90BFF8, &qword_214763E40);
  sub_214042B80(inited, &v47);
  *(&v58[1] + 7) = v60;
  *(&v58[2] + 7) = v61;
  *(&v58[3] + 7) = *v62;
  v58[4] = *&v62[9];
  v19 = v47;
  v18 = v48;
  v20 = v50;
  v37 = v49;
  *(v58 + 7) = v59;
  v57[0] = v41;
  v57[1] = v15;
  v39 = v51;
  LOBYTE(v44) = v51;
  v47 = 0xD000000000000024;
  v48 = 0x8000000214792F30;
  v49 = 0xD00000000000001CLL;
  v50 = 0x800000021478A360;
  v38 = v20;

  v40 = v19;
  v21 = v19(v57, &v44, &v47);
  v36 = v15;
  if (v21)
  {

    sub_213FB2DF4(&v59, &qword_27C90BFF8, &qword_214763E40);
    (*(v43 + 8))(v8, v5);

    v22 = v40;
    v23 = v41;
    *&v44 = v40;
    *(&v44 + 1) = v18;
    v24 = v36;
    *&v45 = v41;
    *(&v45 + 1) = v36;
    v25 = v39;
    v46[0] = v39;
    *&v46[1] = v58[0];
    *&v46[17] = v58[1];
    *&v46[65] = v58[4];
    *&v46[49] = v58[3];
    *&v46[33] = v58[2];
    v26 = v44;
    v27 = v45;
    v28 = *&v46[16];
    v29 = v42;
    *(v42 + 32) = *v46;
    *(v29 + 48) = v28;
    *v29 = v26;
    *(v29 + 16) = v27;
    v30 = *&v46[32];
    v31 = *&v46[48];
    v32 = *&v46[64];
    *(v29 + 112) = v46[80];
    *(v29 + 80) = v31;
    *(v29 + 96) = v32;
    *(v29 + 64) = v30;
    sub_21431AC80(&v44, &v47);
    __swift_destroy_boxed_opaque_existential_1(v66);
    v53 = v58[1];
    v54 = v58[2];
    v55 = v58[3];
    v56 = v58[4];
    v47 = v22;
    v48 = v18;
    v49 = v23;
    v50 = v24;
    v51 = v25;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v33 = 0xD000000000000024;
    v33[1] = 0x8000000214792F30;
    v33[2] = 0xD00000000000001CLL;
    v33[3] = 0x800000021478A360;
    swift_willThrow();

    sub_213FB2DF4(&v59, &qword_27C90BFF8, &qword_214763E40);
    (*(v43 + 8))(v8, v5);
    v34 = v38;

    __swift_destroy_boxed_opaque_existential_1(v66);
    v53 = v58[1];
    v54 = v58[2];
    v55 = v58[3];
    v56 = v58[4];
    v47 = v40;
    v48 = v18;
    v49 = v37;
    v50 = v34;
    v51 = v39;
  }

  v52 = v58[0];
  return sub_21431AB00(&v47);
}

uint64_t sub_21428DB1C(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90C010, &qword_2146F6A80);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v12 - v5;
  v7 = *(v1 + 24);
  v8 = *(v1 + 56);
  v9 = *(v1 + 88);
  v21 = *(v1 + 72);
  v22[0] = v9;
  *(v22 + 9) = *(v1 + 97);
  v19 = *(v1 + 40);
  v20 = v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21431AB54();
  sub_2146DAA28();
  if (v7)
  {
    LOBYTE(v15) = 0;

    v10 = v23;
    sub_2146DA328();
    if (v10)
    {
      (*(v4 + 8))(v6, v3);
    }

    else
    {

      v17 = v21;
      v18[0] = v22[0];
      *(v18 + 9) = *(v22 + 9);
      v15 = v19;
      v16 = v20;
      v14 = 1;
      sub_213FB2E54(&v19, v12, &qword_27C90BFF8, &qword_214763E40);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90BFF8, &qword_214763E40);
      sub_21431ACDC();
      sub_2146DA388();
      v12[2] = v17;
      *v13 = v18[0];
      *&v13[9] = *(v18 + 9);
      v12[1] = v16;
      v12[0] = v15;
      sub_213FB2DF4(v12, &qword_27C90BFF8, &qword_214763E40);
      return (*(v4 + 8))(v6, v3);
    }
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

__n128 sub_21428DE0C@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 80);
  *(a2 + 64) = *(a1 + 64);
  *(a2 + 80) = v2;
  *(a2 + 96) = *(a1 + 96);
  *(a2 + 112) = *(a1 + 112);
  v3 = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 16) = v3;
  result = *(a1 + 32);
  v5 = *(a1 + 48);
  *(a2 + 32) = result;
  *(a2 + 48) = v5;
  return result;
}

uint64_t sub_21428DE38@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6974736567677573 && a2 == 0xEA00000000006E6FLL)
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

uint64_t sub_21428DEC8(uint64_t a1)
{
  v2 = sub_21431ADB4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21428DF04(uint64_t a1)
{
  v2 = sub_21431ADB4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21428DF40@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90C028, &qword_2146F6A88);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v13[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21431ADB4();
  sub_2146DAA08();
  if (!v2)
  {
    sub_21431AE08();
    sub_2146DA1C8();
    (*(v6 + 8))(v8, v5);
    v9 = v18;
    *(a2 + 64) = v17;
    *(a2 + 80) = v9;
    *(a2 + 96) = v19;
    *(a2 + 112) = v20;
    v10 = v14;
    *a2 = *&v13[8];
    *(a2 + 16) = v10;
    v11 = v16;
    *(a2 + 32) = v15;
    *(a2 + 48) = v11;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_21428E0DC(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90C040, &qword_2146F6A90);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v11 - v5;
  v7 = v1[5];
  v25 = v1[4];
  v26 = v7;
  v27 = v1[6];
  v28 = *(v1 + 112);
  v8 = v1[1];
  v21 = *v1;
  v22 = v8;
  v9 = v1[3];
  v23 = v1[2];
  v24 = v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21431AC80(&v21, &v13);
  sub_21431ADB4();
  sub_2146DAA28();
  v17 = v25;
  v18 = v26;
  v19 = v27;
  v20 = v28;
  v13 = v21;
  v14 = v22;
  v15 = v23;
  v16 = v24;
  sub_21431AE5C();
  sub_2146DA388();
  v11[4] = v17;
  v11[5] = v18;
  v11[6] = v19;
  v12 = v20;
  v11[0] = v13;
  v11[1] = v14;
  v11[2] = v15;
  v11[3] = v16;
  sub_21431AB00(v11);
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_21428E2E8@<X0>(uint64_t (*a1)(void, void, void)@<X0>, unint64_t a2@<X1>, char *a3@<X2>, char *a4@<X3>, uint64_t (*a5)(void, void, void)@<X4>, unint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v28 = *a3;
  v29 = *a4;
  sub_2145C2910(&v34);
  v11 = v34;
  v10 = v35;
  v12 = v37;
  v24 = v36;
  v13 = v38;
  sub_2145C2BC8(&v48);
  v27 = v48;
  v31 = v49;
  v32 = v50;
  v33 = v51;
  v25 = v52;
  v48 = a1;
  v49 = a2;
  v26 = v13;
  v55 = v13;
  v34 = 0xD000000000000023;
  v35 = 0x8000000214792F60;
  v36 = 0xD00000000000001CLL;
  v37 = 0x800000021478A360;

  v14 = v11(&v48, &v55, &v34);
  if (v7)
  {

LABEL_6:

    v17 = v27;

    a1 = v24;
    v15 = v25;
LABEL_7:
    v34 = v11;
    v35 = v10;
    v36 = a1;
    v37 = v12;
    v38 = v26;
    v39 = v28;
    v40 = v29;
    v41 = v53;
    v42 = v54;
    v43 = v17;
    v44 = v31;
    v45 = v32;
    v46 = v33;
    v47 = v15;
    return sub_21431AEB0(&v34);
  }

  v21 = a2;
  if ((v14 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v18 = 0xD000000000000023;
    v18[1] = 0x8000000214792F60;
    v18[2] = 0xD00000000000001CLL;
    v18[3] = 0x800000021478A360;
    swift_willThrow();

    goto LABEL_6;
  }

  v48 = a5;
  v49 = a6;
  v15 = v25;
  v55 = v25;
  v34 = 0xD000000000000024;
  v35 = 0x8000000214792F90;
  v36 = 0xD00000000000001CLL;
  v37 = 0x800000021478A360;

  sub_213FDC9D0(v32, v33);
  v16 = v27(&v48, &v55, &v34);
  v17 = v27;
  if ((v16 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v20 = 0xD000000000000024;
    v20[1] = 0x8000000214792F90;
    v20[2] = 0xD00000000000001CLL;
    v20[3] = 0x800000021478A360;
    swift_willThrow();

    sub_213FDC6D0(v32, v33);
    v12 = v21;
    goto LABEL_7;
  }

  sub_213FDC6D0(v32, v33);

  result = sub_213FDC6D0(v32, v33);
  *a7 = v11;
  *(a7 + 8) = v10;
  *(a7 + 16) = a1;
  *(a7 + 24) = v21;
  *(a7 + 32) = v26;
  *(a7 + 33) = v28;
  *(a7 + 34) = v29;
  *(a7 + 40) = v27;
  *(a7 + 48) = v31;
  *(a7 + 56) = a5;
  *(a7 + 64) = a6;
  *(a7 + 72) = v25;
  return result;
}

uint64_t sub_21428E68C()
{
  v1 = 0x6E697274536C7275;
  v2 = 0x65646F4D77656976;
  if (*v0 != 2)
  {
    v2 = 0x6574656D61726170;
  }

  if (*v0)
  {
    v1 = 0x746163696C707061;
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

uint64_t sub_21428E71C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_214384D0C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_21428E744(uint64_t a1)
{
  v2 = sub_21431AF04();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21428E780(uint64_t a1)
{
  v2 = sub_21431AF04();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21428E7BC@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90C050, &qword_2146F6A98);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v33 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21431AF04();
  sub_2146DAA08();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  LOBYTE(v54) = 0;
  v9 = sub_2146DA168();
  v11 = v10;
  v72 = v9;
  LOBYTE(v49) = 1;
  sub_21431AF58();
  sub_2146DA1C8();
  v12 = v54;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90C068, &qword_2146F6AA0);
  LOBYTE(v49) = 2;
  sub_21431AFAC();
  sub_2146DA1C8();
  v47 = v12;
  v48 = v54;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
  v67 = 3;
  sub_2142E12FC();
  sub_2146DA1C8();
  v34 = v68;
  v41 = v69;
  sub_2145C2910(&v54);
  v14 = v55;
  v46 = v54;
  v35 = v56;
  v45 = v57;
  v15 = v58;
  sub_2145C2BC8(&v49);
  v42 = *(&v49 + 1);
  v39 = v49;
  v44 = v50;
  v40 = v51;
  *&v49 = v72;
  *(&v49 + 1) = v11;
  v38 = v15;
  LOBYTE(v53[0]) = v15;
  v54 = 0xD000000000000023;
  v55 = 0x8000000214792F60;
  v36 = 0x8000000214792F60;
  v56 = 0xD00000000000001CLL;
  v57 = 0x800000021478A360;
  v43 = 0x800000021478A360;

  v37 = v14;
  v16 = v46(&v49, v53, &v54);
  v17 = v36;
  if (v16)
  {

    v18 = v37;

    v53[0] = v34;
    v53[1] = v41;
    LOBYTE(v49) = v40;
    v54 = 0xD000000000000024;
    v55 = 0x8000000214792F90;
    v45 = 0x8000000214792F90;
    v56 = 0xD00000000000001CLL;
    v57 = v43;

    sub_213FDC9D0(v44, *(&v44 + 1));
    v19 = v39(v53, &v49, &v54);
    v23 = v45;
    if (v19)
    {
      sub_213FDC6D0(v44, *(&v44 + 1));

      (*(v6 + 8))(v8, v5);
      v24 = v42;

      sub_213FDC6D0(v44, *(&v44 + 1));
      *&v49 = v46;
      *(&v49 + 1) = v18;
      v25 = v72;
      *&v50 = v72;
      *(&v50 + 1) = v11;
      LOBYTE(v51) = v38;
      v26 = v47;
      BYTE1(v51) = v47;
      BYTE2(v51) = v48;
      v27 = v39;
      *(&v51 + 1) = v39;
      *v52 = v24;
      *&v52[8] = v34;
      *&v52[16] = v41;
      v28 = v40;
      v52[24] = v40;
      v29 = *v52;
      a2[2] = v51;
      a2[3] = v29;
      *(a2 + 57) = *&v52[9];
      v30 = v50;
      *a2 = v49;
      a2[1] = v30;
      sub_21431B084(&v49, &v54);
      __swift_destroy_boxed_opaque_existential_1(a1);
      v54 = v46;
      v55 = v37;
      v56 = v25;
      v57 = v11;
      v58 = v38;
      v59 = v26;
      v60 = v48;
      v63 = v27;
      v64 = v24;
      *&v65 = v34;
      *(&v65 + 1) = v41;
      v66 = v28;
      return sub_21431AEB0(&v54);
    }

    sub_214031C4C();
    swift_allocError();
    *v31 = 0xD000000000000024;
    v31[1] = v23;
    v32 = v43;
    v31[2] = 0xD00000000000001CLL;
    v31[3] = v32;
    swift_willThrow();

    (*(v6 + 8))(v8, v5);

    sub_213FDC6D0(v44, *(&v44 + 1));
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v20 = 0xD000000000000023;
    v20[1] = v17;
    v21 = v43;
    v20[2] = 0xD00000000000001CLL;
    v20[3] = v21;
    swift_willThrow();

    v18 = v37;
    (*(v6 + 8))(v8, v5);
    v11 = v45;

    v72 = v35;
  }

  v22 = v47;
  __swift_destroy_boxed_opaque_existential_1(a1);
  v54 = v46;
  v55 = v18;
  v56 = v72;
  v57 = v11;
  v58 = v38;
  v59 = v22;
  v60 = v48;
  v61 = v70;
  v62 = v71;
  v63 = v39;
  v64 = v42;
  v65 = v44;
  v66 = v40;
  return sub_21431AEB0(&v54);
}

uint64_t sub_21428EFD8(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90C080, &qword_2146F6AA8);
  v13 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v10 - v5;
  v7 = *(v1 + 24);
  v16 = *(v1 + 33);
  v12 = *(v1 + 34);
  v8 = *(v1 + 56);
  v10 = *(v1 + 64);
  v11 = v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21431AF04();
  sub_2146DAA28();
  if (!v7)
  {
    goto LABEL_6;
  }

  LOBYTE(v14) = 0;

  sub_2146DA328();
  if (v2)
  {
    (*(v13 + 8))(v6, v4);
  }

  LOBYTE(v14) = v16;
  v17 = 1;
  sub_21431B0E0();
  sub_2146DA388();
  LOBYTE(v14) = v12;
  v17 = 2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90C068, &qword_2146F6AA0);
  sub_21431B134();
  sub_2146DA388();
  if (v10 == 1)
  {
LABEL_6:
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v14 = v11;
    v15 = v10;
    v17 = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
    sub_214045AC0();
    sub_2146DA388();
    return (*(v13 + 8))(v6, v4);
  }

  return result;
}

uint64_t sub_21428F2E0@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v31 = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F38, &unk_2146E9D40);
  MEMORY[0x28223BE20](v7);
  v9 = (&v26 - v8);
  sub_2145C2E48(a4);
  v11 = *a4;
  v10 = *(a4 + 8);
  v12 = *(a4 + 24);
  v28 = *(a4 + 16);
  v29 = v12;
  v13 = *(a4 + 32);
  v36[0] = a1;
  v36[1] = a2;
  v37 = v13;
  v38 = v13;
  v32 = 0xD000000000000030;
  v33 = 0x8000000214792FC0;
  v34 = 0xD00000000000001CLL;
  v35 = 0x800000021478A360;

  v14 = v30;
  v30 = v11;
  v15 = v11(v36, &v38, &v32);
  if (v14)
  {

LABEL_6:

    sub_213FB2DF4(v31, &unk_27C9131A0, &unk_2146E9D10);

    *a4 = v30;
    *(a4 + 8) = v10;
    v21 = v29;
    *(a4 + 16) = v28;
    *(a4 + 24) = v21;
    *(a4 + 32) = v37;
    return sub_21432887C(a4, type metadata accessor for Chatbot.DialerAction.DialPhoneNumber);
  }

  v27 = v7;
  if ((v15 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v20 = 0xD000000000000030;
    v20[1] = 0x8000000214792FC0;
    v20[2] = 0xD00000000000001CLL;
    v20[3] = 0x800000021478A360;
    swift_willThrow();
    goto LABEL_6;
  }

  *a4 = v30;
  *(a4 + 8) = v10;
  *(a4 + 16) = a1;
  *(a4 + 24) = a2;
  *(a4 + 32) = v37;
  v16 = *(type metadata accessor for Chatbot.DialerAction.DialPhoneNumber(0) + 20);
  sub_213FB2E54(a4 + v16, v9, &qword_27C903F38, &unk_2146E9D40);
  v17 = *v9;
  LOBYTE(v36[0]) = *(v9 + *(v27 + 32));
  v32 = 0xD000000000000030;
  v33 = 0x8000000214793000;
  v34 = 0xD00000000000001CLL;
  v35 = 0x800000021478A360;
  v18 = v31;
  v19 = v17(v31, v36, &v32);
  if ((v19 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v25 = 0xD000000000000030;
    v25[1] = 0x8000000214793000;
    v25[2] = 0xD00000000000001CLL;
    v25[3] = 0x800000021478A360;
    swift_willThrow();
    sub_213FB2DF4(v18, &unk_27C9131A0, &unk_2146E9D10);
    sub_21402EDB8(v9, a4 + v16, &qword_27C903F38, &unk_2146E9D40);
    return sub_21432887C(a4, type metadata accessor for Chatbot.DialerAction.DialPhoneNumber);
  }

  v23 = *(v27 + 28);
  sub_213FB2DF4(v9 + v23, &qword_27C903F40, &unk_2146F1C50);
  sub_21408AC04(v18, v9 + v23, &unk_27C9131A0, &unk_2146E9D10);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9131A0, &unk_2146E9D10);
  (*(*(v24 - 8) + 56))(v9 + v23, 0, 1, v24);
  return sub_21402EDB8(v9, a4 + v16, &qword_27C903F38, &unk_2146E9D40);
}

uint64_t sub_21428F6FC(uint64_t a1)
{
  v2 = sub_21431B20C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21428F738(uint64_t a1)
{
  v2 = sub_21431B20C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21428F774@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v58 = a2;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F38, &unk_2146E9D40);
  MEMORY[0x28223BE20](v60);
  v59 = (&v47 - v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9131A0, &unk_2146E9D10);
  v57 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v47 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90C0A0, &qword_2146F6AB0);
  v61 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v47 - v8;
  v10 = type metadata accessor for Chatbot.DialerAction.DialPhoneNumber(0);
  MEMORY[0x28223BE20](v10);
  v12 = &v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = a1[3];
  v63 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v13);
  sub_21431B20C();
  v14 = v62;
  sub_2146DAA08();
  if (v14)
  {
    return __swift_destroy_boxed_opaque_existential_1(v63);
  }

  v55 = v10;
  v56 = v4;
  v62 = v12;
  LOBYTE(v64) = 0;
  v15 = sub_2146DA168();
  v17 = v16;
  v54 = v15;
  LOBYTE(v64) = 1;
  sub_2142E27A8();
  sub_2146DA1C8();
  v50 = v6;
  v19 = v62;
  sub_2145C2E48(v62);
  v21 = *v19;
  v20 = *(v19 + 8);
  v22 = *(v19 + 24);
  v49 = *(v19 + 16);
  v23 = *(v19 + 32);
  v68[0] = v54;
  v68[1] = v17;
  v51 = v17;
  v52 = v22;
  v69 = v23;
  v70 = v23;
  v64 = 0xD000000000000030;
  v65 = 0x8000000214792FC0;
  v66 = 0xD00000000000001CLL;
  v67 = 0x800000021478A360;

  v53 = v20;
  v24 = v21(v68, &v70, &v64);
  v47 = v21;
  v48 = 0x800000021478A360;
  if (v24)
  {
    v25 = v48;

    v26 = v53;
    v27 = v54;
    *v19 = v47;
    *(v19 + 8) = v26;
    v28 = v51;
    *(v19 + 16) = v27;
    *(v19 + 24) = v28;
    *(v19 + 32) = v69;
    v55 = *(v55 + 20);
    v29 = v19 + v55;
    v30 = v6;
    v31 = v59;
    sub_213FB2E54(v29, v59, &qword_27C903F38, &unk_2146E9D40);
    v32 = *v31;
    v33 = v60;
    LOBYTE(v68[0]) = *(v31 + *(v60 + 32));
    v64 = 0xD000000000000030;
    v65 = 0x8000000214793000;
    v66 = 0xD00000000000001CLL;
    v67 = v25;
    v34 = v32(v30, v68, &v64);
    v35 = v61;
    if (v34)
    {

      (*(v35 + 8))(v9, v7);
      v43 = *(v33 + 28);
      sub_213FB2DF4(v31 + v43, &qword_27C903F40, &unk_2146F1C50);
      sub_21408AC04(v30, v31 + v43, &unk_27C9131A0, &unk_2146E9D10);
      (*(v57 + 56))(v31 + v43, 0, 1, v56);
      v44 = v62;
      sub_21402EDB8(v31, &v62[v55], &qword_27C903F38, &unk_2146E9D40);
      sub_214328704(v44, v58, type metadata accessor for Chatbot.DialerAction.DialPhoneNumber);
      return __swift_destroy_boxed_opaque_existential_1(v63);
    }

    sub_214031C4C();
    swift_allocError();
    *v45 = 0xD000000000000030;
    v45[1] = 0x8000000214793000;
    v46 = v48;
    v45[2] = 0xD00000000000001CLL;
    v45[3] = v46;
    swift_willThrow();
    sub_213FB2DF4(v30, &unk_27C9131A0, &unk_2146E9D10);
    (*(v35 + 8))(v9, v7);
    v40 = v62;
    sub_21402EDB8(v31, &v62[v55], &qword_27C903F38, &unk_2146E9D40);
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v36 = 0xD000000000000030;
    v36[1] = 0x8000000214792FC0;
    v37 = v48;
    v36[2] = 0xD00000000000001CLL;
    v36[3] = v37;
    swift_willThrow();

    v38 = v61;
    v39 = v47;
    sub_213FB2DF4(v50, &unk_27C9131A0, &unk_2146E9D10);
    (*(v38 + 8))(v9, v7);

    v40 = v62;

    v41 = v53;
    *v40 = v39;
    *(v40 + 8) = v41;
    v42 = v52;
    *(v40 + 16) = v49;
    *(v40 + 24) = v42;
    *(v40 + 32) = v69;
  }

  __swift_destroy_boxed_opaque_existential_1(v63);
  return sub_21432887C(v40, type metadata accessor for Chatbot.DialerAction.DialPhoneNumber);
}

uint64_t sub_21428FEBC(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F40, &unk_2146F1C50);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v18 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9131A0, &unk_2146E9D10);
  v19 = *(v7 - 8);
  v20 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = &v18 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90C0B0, &qword_2146F6AB8);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v18 - v12;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21431B20C();
  sub_2146DAA28();
  if (!*(v2 + 24))
  {
    goto LABEL_8;
  }

  v23 = 0;

  v14 = v21;
  sub_2146DA328();
  if (v14)
  {
    (*(v11 + 8))(v13, v10);
  }

  v16 = v2 + *(type metadata accessor for Chatbot.DialerAction.DialPhoneNumber(0) + 20);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F38, &unk_2146E9D40);
  sub_213FB2E54(v16 + *(v17 + 28), v6, &qword_27C903F40, &unk_2146F1C50);
  if ((*(v19 + 48))(v6, 1, v20) == 1)
  {
    sub_213FB2DF4(v6, &qword_27C903F40, &unk_2146F1C50);
LABEL_8:
    result = sub_2146DA018();
    __break(1u);
    return result;
  }

  sub_21408AC04(v6, v9, &unk_27C9131A0, &unk_2146E9D10);
  v22 = 1;
  sub_2142E2910();
  sub_2146DA388();
  sub_213FB2DF4(v9, &unk_27C9131A0, &unk_2146E9D10);
  return (*(v11 + 8))(v13, v10);
}

uint64_t sub_21429026C@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v52 = a5;
  v53 = a4;
  v47 = a3;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F38, &unk_2146E9D40);
  MEMORY[0x28223BE20](v9);
  v11 = (&v44 - v10);
  sub_2145C306C(a6);
  v13 = *a6;
  v12 = *(a6 + 8);
  v14 = *(a6 + 24);
  v48 = *(a6 + 16);
  v49 = v14;
  v15 = *(a6 + 32);
  v58 = a1;
  v59 = a2;
  LODWORD(v50) = v15;
  v60 = v15;
  v54 = 0xD000000000000031;
  v55 = 0x8000000214793040;
  v56 = 0xD00000000000001CLL;
  v57 = 0x800000021478A360;

  v16 = v51;
  v51 = v13;
  v17 = v13(&v58, &v60, &v54);
  if (v16)
  {

LABEL_6:

    sub_213FB2DF4(v52, &unk_27C9131A0, &unk_2146E9D10);

    *a6 = v51;
    *(a6 + 8) = v12;
    v25 = v49;
    *(a6 + 16) = v48;
    *(a6 + 24) = v25;
    *(a6 + 32) = v50;
    return sub_21432887C(a6, type metadata accessor for Chatbot.DialerAction.DialEnrichedCall);
  }

  v45 = v9;
  v46 = v11;
  if ((v17 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v24 = 0xD000000000000031;
    v24[1] = 0x8000000214793040;
    v24[2] = 0xD00000000000001CLL;
    v24[3] = 0x800000021478A360;
    swift_willThrow();
    goto LABEL_6;
  }

  *a6 = v51;
  *(a6 + 8) = v12;
  *(a6 + 16) = a1;
  *(a6 + 24) = a2;
  *(a6 + 32) = v50;
  v19 = *(a6 + 40);
  v18 = *(a6 + 48);
  v20 = *(a6 + 56);
  v21 = *(a6 + 64);
  v22 = *(a6 + 72);
  v58 = v47;
  v59 = v53;
  LODWORD(v51) = v22;
  v60 = v22;
  v54 = 0xD00000000000002DLL;
  v55 = 0x8000000214793080;
  v56 = 0xD00000000000001CLL;
  v57 = 0x800000021478A360;

  sub_213FDC9D0(v20, v21);
  v23 = v19(&v58, &v60, &v54);
  v50 = 0x800000021478A360;
  if ((v23 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v36 = 0xD00000000000002DLL;
    v36[1] = 0x8000000214793080;
    v37 = v50;
    v36[2] = 0xD00000000000001CLL;
    v36[3] = v37;
    swift_willThrow();

    sub_213FB2DF4(v52, &unk_27C9131A0, &unk_2146E9D10);
    v38 = *(a6 + 56);
    v39 = *(a6 + 64);

    sub_213FDC6D0(v38, v39);
    *(a6 + 40) = v19;
    *(a6 + 48) = v18;
    *(a6 + 56) = v20;
    *(a6 + 64) = v21;
    *(a6 + 72) = v51;
    return sub_21432887C(a6, type metadata accessor for Chatbot.DialerAction.DialEnrichedCall);
  }

  sub_213FDC6D0(v20, v21);
  v27 = v50;

  v28 = *(a6 + 56);
  v29 = *(a6 + 64);

  sub_213FDC6D0(v28, v29);
  *(a6 + 40) = v19;
  *(a6 + 48) = v18;
  v30 = v53;
  *(a6 + 56) = v47;
  *(a6 + 64) = v30;
  *(a6 + 72) = v51;
  v31 = *(type metadata accessor for Chatbot.DialerAction.DialEnrichedCall(0) + 24);
  v32 = v46;
  sub_213FB2E54(a6 + v31, v46, &qword_27C903F38, &unk_2146E9D40);
  v33 = *v32;
  v34 = v45;
  LOBYTE(v58) = *(v32 + *(v45 + 32));
  v54 = 0xD000000000000031;
  v55 = 0x80000002147930B0;
  v56 = 0xD00000000000001CLL;
  v57 = v27;
  v35 = v52;
  if ((v33(v52, &v58, &v54) & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v42 = 0xD000000000000031;
    v42[1] = 0x80000002147930B0;
    v43 = v50;
    v42[2] = 0xD00000000000001CLL;
    v42[3] = v43;
    swift_willThrow();
    sub_213FB2DF4(v35, &unk_27C9131A0, &unk_2146E9D10);
    sub_21402EDB8(v32, a6 + v31, &qword_27C903F38, &unk_2146E9D40);
    return sub_21432887C(a6, type metadata accessor for Chatbot.DialerAction.DialEnrichedCall);
  }

  v40 = *(v34 + 28);
  sub_213FB2DF4(v32 + v40, &qword_27C903F40, &unk_2146F1C50);
  sub_21408AC04(v35, v32 + v40, &unk_27C9131A0, &unk_2146E9D10);
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9131A0, &unk_2146E9D10);
  (*(*(v41 - 8) + 56))(v32 + v40, 0, 1, v41);
  return sub_21402EDB8(v32, a6 + v31, &qword_27C903F38, &unk_2146E9D40);
}

uint64_t sub_214290810()
{
  v1 = 0x7463656A627573;
  if (*v0 != 1)
  {
    v1 = 0x6B6361626C6C6166;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6D754E656E6F6870;
  }
}

uint64_t sub_21429087C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_214384E88(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_2142908A4(uint64_t a1)
{
  v2 = sub_21431B260();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2142908E0(uint64_t a1)
{
  v2 = sub_21431B260();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21429091C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v78 = a2;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F38, &unk_2146E9D40);
  MEMORY[0x28223BE20](v79);
  v80 = &v65 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9131A0, &unk_2146E9D10);
  v77 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v65 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90C0B8, &qword_2146F6AC0);
  v81 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v65 - v8;
  v10 = type metadata accessor for Chatbot.DialerAction.DialEnrichedCall(0);
  MEMORY[0x28223BE20](v10);
  v12 = &v65 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = a1[3];
  v83 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v13);
  sub_21431B260();
  v14 = v82;
  sub_2146DAA08();
  if (v14)
  {
    return __swift_destroy_boxed_opaque_existential_1(v83);
  }

  v82 = v4;
  v75 = v12;
  v76 = v6;
  v15 = v81;
  LOBYTE(v84) = 0;
  v16 = sub_2146DA168();
  v18 = v17;
  v19 = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
  LOBYTE(v88) = 1;
  sub_2142E12FC();
  sub_2146DA1C8();
  v73 = v19;
  v74 = v18;
  v21 = v84;
  v20 = v85;
  LOBYTE(v84) = 2;
  sub_2142E27A8();
  sub_2146DA1C8();
  v66 = v21;
  v72 = v20;
  v23 = v75;
  sub_2145C306C(v75);
  v25 = *v23;
  v24 = *(v23 + 8);
  v26 = *(v23 + 24);
  v67 = *(v23 + 16);
  v27 = *(v23 + 32);
  v88 = v73;
  v89 = v74;
  LODWORD(v70) = v27;
  v90 = v27;
  v84 = 0xD000000000000031;
  v85 = 0x8000000214793040;
  v68 = 0x8000000214793040;
  v86 = 0xD00000000000001CLL;
  v87 = 0x800000021478A360;
  v69 = v26;

  v71 = v24;
  v28 = v25(&v88, &v90, &v84);
  v29 = v25;
  v30 = v68;
  v31 = v76;
  if (v28)
  {
    v65 = 0x800000021478A360;

    v32 = v75;

    v33 = v71;
    *v32 = v29;
    *(v32 + 8) = v33;
    v34 = v74;
    *(v32 + 16) = v73;
    *(v32 + 24) = v34;
    *(v32 + 32) = v70;
    v36 = *(v32 + 40);
    v35 = *(v32 + 48);
    v37 = *(v32 + 56);
    v38 = *(v32 + 64);
    v39 = *(v32 + 72);
    v88 = v66;
    v89 = v72;
    LODWORD(v74) = v39;
    v90 = v39;
    v84 = 0xD00000000000002DLL;
    v85 = 0x8000000214793080;
    v70 = 0x8000000214793080;
    v86 = 0xD00000000000001CLL;
    v87 = v65;

    v73 = v37;
    v71 = v38;
    sub_213FDC9D0(v37, v38);
    v40 = v36;
    v41 = v36(&v88, &v90, &v84);
    v46 = v76;
    if (v41)
    {
      sub_213FDC6D0(v73, v71);

      v47 = v40;
      v48 = v75;
      v73 = *(v75 + 7);
      v71 = *(v75 + 8);

      sub_213FDC6D0(v73, v71);
      *(v48 + 40) = v47;
      *(v48 + 48) = v35;
      v49 = v72;
      *(v48 + 56) = v66;
      *(v48 + 64) = v49;
      *(v48 + 72) = v74;
      v43 = v48;
      v74 = *(v10 + 24);
      v50 = v80;
      sub_213FB2E54(v48 + v74, v80, &qword_27C903F38, &unk_2146E9D40);
      v51 = *v50;
      v52 = v79;
      LOBYTE(v88) = v50[*(v79 + 32)];
      v84 = 0xD000000000000031;
      v85 = 0x80000002147930B0;
      v73 = 0x80000002147930B0;
      v86 = 0xD00000000000001CLL;
      v87 = v65;
      v53 = v51(v76, &v88, &v84);
      v60 = v73;
      if (v53)
      {

        (*(v15 + 8))(v9, v7);
        v61 = *(v52 + 28);
        v62 = v80;
        sub_213FB2DF4(&v80[v61], &qword_27C903F40, &unk_2146F1C50);
        sub_21408AC04(v76, v62 + v61, &unk_27C9131A0, &unk_2146E9D10);
        (*(v77 + 56))(v62 + v61, 0, 1, v82);
        sub_21402EDB8(v62, v43 + v74, &qword_27C903F38, &unk_2146E9D40);
        sub_214328704(v43, v78, type metadata accessor for Chatbot.DialerAction.DialEnrichedCall);
        return __swift_destroy_boxed_opaque_existential_1(v83);
      }

      sub_214031C4C();
      swift_allocError();
      *v63 = 0xD000000000000031;
      v63[1] = v60;
      v64 = v65;
      v63[2] = 0xD00000000000001CLL;
      v63[3] = v64;
      swift_willThrow();
      sub_213FB2DF4(v76, &unk_27C9131A0, &unk_2146E9D10);
      (*(v15 + 8))(v9, v7);
      sub_21402EDB8(v80, v43 + v74, &qword_27C903F38, &unk_2146E9D40);
    }

    else
    {
      sub_214031C4C();
      swift_allocError();
      v54 = v70;
      *v55 = 0xD00000000000002DLL;
      v55[1] = v54;
      v56 = v65;
      v55[2] = 0xD00000000000001CLL;
      v55[3] = v56;
      swift_willThrow();

      sub_213FB2DF4(v46, &unk_27C9131A0, &unk_2146E9D10);
      (*(v15 + 8))(v9, v7);
      v43 = v75;
      v57 = *(v75 + 7);
      v58 = *(v75 + 8);

      sub_213FDC6D0(v57, v58);
      *(v43 + 40) = v40;
      *(v43 + 48) = v35;
      v59 = v71;
      *(v43 + 56) = v73;
      *(v43 + 64) = v59;
      *(v43 + 72) = v74;
    }
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v42 = 0xD000000000000031;
    v42[1] = v30;
    v42[2] = 0xD00000000000001CLL;
    v42[3] = 0x800000021478A360;
    swift_willThrow();

    sub_213FB2DF4(v31, &unk_27C9131A0, &unk_2146E9D10);
    (*(v15 + 8))(v9, v7);
    v43 = v75;

    v44 = v71;
    *v43 = v29;
    *(v43 + 8) = v44;
    v45 = v69;
    *(v43 + 16) = v67;
    *(v43 + 24) = v45;
    *(v43 + 32) = v70;
  }

  __swift_destroy_boxed_opaque_existential_1(v83);
  return sub_21432887C(v43, type metadata accessor for Chatbot.DialerAction.DialEnrichedCall);
}

uint64_t sub_2142912D0(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F40, &unk_2146F1C50);
  MEMORY[0x28223BE20](v5 - 8);
  v22 = &v19 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9131A0, &unk_2146E9D10);
  v20 = *(v7 - 8);
  v21 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = &v19 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90C0C8, &qword_2146F6AC8);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v19 - v12;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21431B260();
  sub_2146DAA28();
  if (v3[3])
  {
    LOBYTE(v23) = 0;

    sub_2146DA328();
    if (v2)
    {
      (*(v11 + 8))(v13, v10);
    }

    v15 = v3[8];
    if (v15 != 1)
    {
      v23 = v3[7];
      v24 = v15;
      v25 = 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
      sub_214045AC0();
      sub_2146DA388();
      v16 = v22;
      v17 = v3 + *(type metadata accessor for Chatbot.DialerAction.DialEnrichedCall(0) + 24);
      v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F38, &unk_2146E9D40);
      sub_213FB2E54(&v17[*(v18 + 28)], v16, &qword_27C903F40, &unk_2146F1C50);
      if ((*(v20 + 48))(v16, 1, v21) != 1)
      {
        sub_21408AC04(v16, v9, &unk_27C9131A0, &unk_2146E9D10);
        LOBYTE(v23) = 2;
        sub_2142E2910();
        sub_2146DA388();
        sub_213FB2DF4(v9, &unk_27C9131A0, &unk_2146E9D10);
        return (*(v11 + 8))(v13, v10);
      }

      sub_213FB2DF4(v16, &qword_27C903F40, &unk_2146F1C50);
    }
  }

  result = sub_2146DA018();
  __break(1u);
  return result;
}

uint64_t sub_2142916E8@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v31 = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F38, &unk_2146E9D40);
  MEMORY[0x28223BE20](v7);
  v9 = (&v26 - v8);
  sub_2145C371C(a4);
  v11 = *a4;
  v10 = *(a4 + 8);
  v12 = *(a4 + 24);
  v28 = *(a4 + 16);
  v29 = v12;
  v13 = *(a4 + 32);
  v36[0] = a1;
  v36[1] = a2;
  v37 = v13;
  v38 = v13;
  v32 = 0xD00000000000002ELL;
  v33 = 0x80000002147930F0;
  v34 = 0xD00000000000001CLL;
  v35 = 0x800000021478A360;

  v14 = v30;
  v30 = v11;
  v15 = v11(v36, &v38, &v32);
  if (v14)
  {

LABEL_6:

    sub_213FB2DF4(v31, &unk_27C9131A0, &unk_2146E9D10);

    *a4 = v30;
    *(a4 + 8) = v10;
    v21 = v29;
    *(a4 + 16) = v28;
    *(a4 + 24) = v21;
    *(a4 + 32) = v37;
    return sub_21432887C(a4, type metadata accessor for Chatbot.DialerAction.DialVideoCall);
  }

  v27 = v7;
  if ((v15 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v20 = 0xD00000000000002ELL;
    v20[1] = 0x80000002147930F0;
    v20[2] = 0xD00000000000001CLL;
    v20[3] = 0x800000021478A360;
    swift_willThrow();
    goto LABEL_6;
  }

  *a4 = v30;
  *(a4 + 8) = v10;
  *(a4 + 16) = a1;
  *(a4 + 24) = a2;
  *(a4 + 32) = v37;
  v16 = *(type metadata accessor for Chatbot.DialerAction.DialVideoCall(0) + 20);
  sub_213FB2E54(a4 + v16, v9, &qword_27C903F38, &unk_2146E9D40);
  v17 = *v9;
  LOBYTE(v36[0]) = *(v9 + *(v27 + 32));
  v32 = 0xD00000000000002ELL;
  v33 = 0x8000000214793120;
  v34 = 0xD00000000000001CLL;
  v35 = 0x800000021478A360;
  v18 = v31;
  v19 = v17(v31, v36, &v32);
  if ((v19 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v25 = 0xD00000000000002ELL;
    v25[1] = 0x8000000214793120;
    v25[2] = 0xD00000000000001CLL;
    v25[3] = 0x800000021478A360;
    swift_willThrow();
    sub_213FB2DF4(v18, &unk_27C9131A0, &unk_2146E9D10);
    sub_21402EDB8(v9, a4 + v16, &qword_27C903F38, &unk_2146E9D40);
    return sub_21432887C(a4, type metadata accessor for Chatbot.DialerAction.DialVideoCall);
  }

  v23 = *(v27 + 28);
  sub_213FB2DF4(v9 + v23, &qword_27C903F40, &unk_2146F1C50);
  sub_21408AC04(v18, v9 + v23, &unk_27C9131A0, &unk_2146E9D10);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9131A0, &unk_2146E9D10);
  (*(*(v24 - 8) + 56))(v9 + v23, 0, 1, v24);
  return sub_21402EDB8(v9, a4 + v16, &qword_27C903F38, &unk_2146E9D40);
}

uint64_t sub_214291B04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6D754E656E6F6870 && a2 == 0xEB00000000726562;
  if (v6 || (sub_2146DA6A8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6B6361626C6C6166 && a2 == 0xEB000000004C5255)
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

uint64_t sub_214291BE8(uint64_t a1)
{
  v2 = sub_21431B2B4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_214291C24(uint64_t a1)
{
  v2 = sub_21431B2B4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_214291C60@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v58 = a2;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F38, &unk_2146E9D40);
  MEMORY[0x28223BE20](v60);
  v59 = (&v47 - v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9131A0, &unk_2146E9D10);
  v57 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v47 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90C0D0, &qword_2146F6AD0);
  v61 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v47 - v8;
  v10 = type metadata accessor for Chatbot.DialerAction.DialVideoCall(0);
  MEMORY[0x28223BE20](v10);
  v12 = &v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = a1[3];
  v63 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v13);
  sub_21431B2B4();
  v14 = v62;
  sub_2146DAA08();
  if (v14)
  {
    return __swift_destroy_boxed_opaque_existential_1(v63);
  }

  v55 = v10;
  v56 = v4;
  v62 = v12;
  LOBYTE(v64) = 0;
  v15 = sub_2146DA168();
  v17 = v16;
  v54 = v15;
  LOBYTE(v64) = 1;
  sub_2142E27A8();
  sub_2146DA1C8();
  v50 = v6;
  v19 = v62;
  sub_2145C371C(v62);
  v21 = *v19;
  v20 = *(v19 + 8);
  v22 = *(v19 + 24);
  v49 = *(v19 + 16);
  v23 = *(v19 + 32);
  v68[0] = v54;
  v68[1] = v17;
  v51 = v17;
  v52 = v22;
  v69 = v23;
  v70 = v23;
  v64 = 0xD00000000000002ELL;
  v65 = 0x80000002147930F0;
  v66 = 0xD00000000000001CLL;
  v67 = 0x800000021478A360;

  v53 = v20;
  v24 = v21(v68, &v70, &v64);
  v47 = v21;
  v48 = 0x800000021478A360;
  if (v24)
  {
    v25 = v48;

    v26 = v53;
    v27 = v54;
    *v19 = v47;
    *(v19 + 8) = v26;
    v28 = v51;
    *(v19 + 16) = v27;
    *(v19 + 24) = v28;
    *(v19 + 32) = v69;
    v55 = *(v55 + 20);
    v29 = v19 + v55;
    v30 = v6;
    v31 = v59;
    sub_213FB2E54(v29, v59, &qword_27C903F38, &unk_2146E9D40);
    v32 = *v31;
    v33 = v60;
    LOBYTE(v68[0]) = *(v31 + *(v60 + 32));
    v64 = 0xD00000000000002ELL;
    v65 = 0x8000000214793120;
    v66 = 0xD00000000000001CLL;
    v67 = v25;
    v34 = v32(v30, v68, &v64);
    v35 = v61;
    if (v34)
    {

      (*(v35 + 8))(v9, v7);
      v43 = *(v33 + 28);
      sub_213FB2DF4(v31 + v43, &qword_27C903F40, &unk_2146F1C50);
      sub_21408AC04(v30, v31 + v43, &unk_27C9131A0, &unk_2146E9D10);
      (*(v57 + 56))(v31 + v43, 0, 1, v56);
      v44 = v62;
      sub_21402EDB8(v31, &v62[v55], &qword_27C903F38, &unk_2146E9D40);
      sub_214328704(v44, v58, type metadata accessor for Chatbot.DialerAction.DialVideoCall);
      return __swift_destroy_boxed_opaque_existential_1(v63);
    }

    sub_214031C4C();
    swift_allocError();
    *v45 = 0xD00000000000002ELL;
    v45[1] = 0x8000000214793120;
    v46 = v48;
    v45[2] = 0xD00000000000001CLL;
    v45[3] = v46;
    swift_willThrow();
    sub_213FB2DF4(v30, &unk_27C9131A0, &unk_2146E9D10);
    (*(v35 + 8))(v9, v7);
    v40 = v62;
    sub_21402EDB8(v31, &v62[v55], &qword_27C903F38, &unk_2146E9D40);
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v36 = 0xD00000000000002ELL;
    v36[1] = 0x80000002147930F0;
    v37 = v48;
    v36[2] = 0xD00000000000001CLL;
    v36[3] = v37;
    swift_willThrow();

    v38 = v61;
    v39 = v47;
    sub_213FB2DF4(v50, &unk_27C9131A0, &unk_2146E9D10);
    (*(v38 + 8))(v9, v7);

    v40 = v62;

    v41 = v53;
    *v40 = v39;
    *(v40 + 8) = v41;
    v42 = v52;
    *(v40 + 16) = v49;
    *(v40 + 24) = v42;
    *(v40 + 32) = v69;
  }

  __swift_destroy_boxed_opaque_existential_1(v63);
  return sub_21432887C(v40, type metadata accessor for Chatbot.DialerAction.DialVideoCall);
}

uint64_t sub_2142923A8(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F40, &unk_2146F1C50);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v18 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9131A0, &unk_2146E9D10);
  v19 = *(v7 - 8);
  v20 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = &v18 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90C0E0, &qword_2146F6AD8);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v18 - v12;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21431B2B4();
  sub_2146DAA28();
  if (!*(v2 + 24))
  {
    goto LABEL_8;
  }

  v23 = 0;

  v14 = v21;
  sub_2146DA328();
  if (v14)
  {
    (*(v11 + 8))(v13, v10);
  }

  v16 = v2 + *(type metadata accessor for Chatbot.DialerAction.DialVideoCall(0) + 20);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F38, &unk_2146E9D40);
  sub_213FB2E54(v16 + *(v17 + 28), v6, &qword_27C903F40, &unk_2146F1C50);
  if ((*(v19 + 48))(v6, 1, v20) == 1)
  {
    sub_213FB2DF4(v6, &qword_27C903F40, &unk_2146F1C50);
LABEL_8:
    result = sub_2146DA018();
    __break(1u);
    return result;
  }

  sub_21408AC04(v6, v9, &unk_27C9131A0, &unk_2146E9D10);
  v22 = 1;
  sub_2142E2910();
  sub_2146DA388();
  sub_213FB2DF4(v9, &unk_27C9131A0, &unk_2146E9D10);
  return (*(v11 + 8))(v13, v10);
}

uint64_t sub_214292758@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v6 = a1[1];
  v24 = *a1;
  v25 = v6;
  *v26 = a1[2];
  *&v26[10] = *(a1 + 42);
  sub_2145C3B6C(&v16);
  v7 = v16;
  v8 = v17;
  v23[0] = a2;
  v23[1] = a3;
  v27 = v18;
  v28 = v18;
  *&v16 = 0xD000000000000020;
  *(&v16 + 1) = 0x8000000214793150;
  *&v17 = 0xD00000000000001CLL;
  *(&v17 + 1) = 0x800000021478A360;

  sub_213FDC9D0(v8, *(&v8 + 1));
  v9 = (v7)(v23, &v28, &v16);
  if (v15)
  {
  }

  else
  {
    if (v9)
    {
      sub_213FDC6D0(v8, *(&v8 + 1));

      result = sub_213FDC6D0(v8, *(&v8 + 1));
      v11 = v25;
      *a4 = v24;
      *(a4 + 16) = v11;
      v12 = *&v26[16];
      *(a4 + 32) = *v26;
      *(a4 + 48) = v12;
      *(a4 + 64) = v7;
      *(a4 + 80) = a2;
      *(a4 + 88) = a3;
      *(a4 + 96) = v27;
      return result;
    }

    sub_214031C4C();
    swift_allocError();
    *v13 = 0xD000000000000020;
    v13[1] = 0x8000000214793150;
    v13[2] = 0xD00000000000001CLL;
    v13[3] = 0x800000021478A360;
    swift_willThrow();
  }

  sub_213FDC6D0(v8, *(&v8 + 1));
  v16 = v24;
  v17 = v25;
  v18 = *v26;
  v19 = *&v26[16];
  v20 = v7;
  v21 = v8;
  v22 = v27;
  return sub_21431B308(&v16);
}

uint64_t sub_214292948()
{
  if (*v0)
  {
    return 0x6C6562616CLL;
  }

  else
  {
    return 0x646F6874656DLL;
  }
}

uint64_t sub_21429297C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x646F6874656DLL && a2 == 0xE600000000000000;
  if (v6 || (sub_2146DA6A8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6C6562616CLL && a2 == 0xE500000000000000)
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

uint64_t sub_214292A50(uint64_t a1)
{
  v2 = sub_21431B35C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_214292A8C(uint64_t a1)
{
  v2 = sub_21431B35C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_214292AC8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90C0E8, &qword_2146F6AE0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v32 - v7;
  v9 = a1[3];
  v67 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v9);
  sub_21431B35C();
  sub_2146DAA08();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(v67);
  }

  v10 = v6;
  v39 = a2;
  v60 = 0;
  sub_21431B3B0();
  sub_2146DA1C8();
  v57 = v61;
  v58 = v62;
  *v59 = v63[0];
  *&v59[10] = *(v63 + 10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
  v54 = 1;
  sub_2142E12FC();
  sub_2146DA1C8();
  v12 = v56;
  v36 = v55;
  sub_21431B458(&v57, &v44);
  sub_2145C3B6C(&v44);
  v13 = *(&v44 + 1);
  v38 = v44;
  v14 = v45;
  v64 = v57;
  v65 = v58;
  *v66 = *v59;
  *&v66[10] = *&v59[10];
  v53[0] = v36;
  v53[1] = v12;
  v34 = v12;
  v35 = v46;
  LOBYTE(v40[0]) = v46;
  *&v44 = 0xD000000000000020;
  *(&v44 + 1) = 0x8000000214793150;
  *&v45 = 0xD00000000000001CLL;
  *(&v45 + 1) = 0x800000021478A360;

  v33 = v14 >> 64;
  v37 = v14;
  sub_213FDC9D0(v14, *(&v14 + 1));
  v15 = v13;
  if (v38(v53, v40, &v44))
  {
    v16 = v33;
    sub_213FDC6D0(v37, v33);

    sub_21431B404(&v57);
    (*(v10 + 8))(v8, v5);
    v17 = v15;

    sub_213FDC6D0(v37, v16);
    v18 = v64;
    v19 = v65;
    v40[0] = v64;
    v40[1] = v65;
    v20 = *v66;
    v21 = *&v66[16];
    v40[2] = *v66;
    v40[3] = *&v66[16];
    v22 = v38;
    v23 = v39;
    *&v41 = v38;
    *(&v41 + 1) = v15;
    v24 = v36;
    v25 = v34;
    *&v42 = v36;
    *(&v42 + 1) = v34;
    v26 = v35;
    v43 = v35;
    *(v39 + 96) = v35;
    *v23 = v18;
    v23[1] = v19;
    v23[2] = v20;
    v23[3] = v21;
    v27 = v42;
    v23[4] = v41;
    v23[5] = v27;
    sub_21431B4B4(v40, &v44);
    __swift_destroy_boxed_opaque_existential_1(v67);
    v44 = v64;
    v45 = v65;
    v46 = *v66;
    v47 = *&v66[16];
    v48 = v22;
    v49 = v17;
    v50 = v24;
    v51 = v25;
    v52 = v26;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v28 = 0xD000000000000020;
    v28[1] = 0x8000000214793150;
    v28[2] = 0xD00000000000001CLL;
    v28[3] = 0x800000021478A360;
    swift_willThrow();

    sub_21431B404(&v57);
    (*(v10 + 8))(v8, v5);
    v29 = v13;

    v30 = v37;
    v31 = v33;
    sub_213FDC6D0(v37, v33);
    __swift_destroy_boxed_opaque_existential_1(v67);
    v44 = v64;
    v45 = v65;
    v46 = *v66;
    v47 = *&v66[16];
    v48 = v38;
    v49 = v29;
    v50 = v30;
    v51 = v31;
    v52 = v35;
  }

  return sub_21431B308(&v44);
}

uint64_t sub_214292F50(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90C100, &qword_2146F6AE8);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v12 - v5;
  v7 = v1[1];
  v23 = *v1;
  v24 = v7;
  v25[0] = v1[2];
  *(v25 + 10) = *(v1 + 42);
  v8 = *(v1 + 11);
  v12 = *(v1 + 10);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21431B35C();
  sub_2146DAA28();
  v20 = v23;
  v21 = v24;
  v22[0] = v25[0];
  *(v22 + 10) = *(v25 + 10);
  v19 = 0;
  sub_21431B458(&v23, &v16);
  sub_21431B510();
  v9 = v26;
  sub_2146DA388();
  if (v9)
  {
    v16 = v20;
    v17 = v21;
    *v18 = v22[0];
    *&v18[10] = *(v22 + 10);
    sub_21431B404(&v16);
    return (*(v4 + 8))(v6, v3);
  }

  v10 = v12;
  v16 = v20;
  v17 = v21;
  *v18 = v22[0];
  *&v18[10] = *(v22 + 10);
  sub_21431B404(&v16);
  if (v8 != 1)
  {
    v14 = v10;
    v15 = v8;
    v13 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
    sub_214045AC0();
    sub_2146DA388();
    return (*(v4 + 8))(v6, v3);
  }

  result = sub_2146DA018();
  __break(1u);
  return result;
}

uint64_t sub_21429322C@<X0>(uint64_t a1@<X8>, double a2@<D0>, double a3@<D1>)
{
  sub_2145C3DF8(&v31);
  v8 = v31;
  v7 = v32;
  v9 = *&v33;
  v10 = v34;
  v41 = *(&v34 + 2);
  v42 = HIWORD(v34);
  v27 = v36;
  v23 = v37;
  v24 = v35;
  v11 = v38;
  v25 = v39;
  v43 = v34;
  v40 = v38;
  v30 = v34 & 1;
  v29 = a2;
  v26 = BYTE1(v34);
  v28 = BYTE1(v34);
  v31 = 0xD00000000000002FLL;
  v32 = 0x8000000214793180;
  v33 = 0xD00000000000001CLL;
  v34 = 0x800000021478A360;

  v12 = v8(&v29, &v28, &v31);
  if (v3)
  {

LABEL_6:
    v15 = v24;

    v43 = v10 & 1;
    v13 = v25;
    v14 = v27;
LABEL_7:
    v31 = v8;
    v32 = v7;
    v33 = *&v9;
    LOBYTE(v34) = v43;
    BYTE1(v34) = v26;
    *(&v34 + 2) = v41;
    HIWORD(v34) = v42;
    v35 = v15;
    v36 = v14;
    v37 = v23;
    v38 = v40;
    v39 = v13;
    return sub_21431B564(&v31);
  }

  v22 = a1;
  if ((v12 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v17 = 0xD00000000000002FLL;
    v17[1] = 0x8000000214793180;
    v17[2] = 0xD00000000000001CLL;
    v17[3] = 0x800000021478A360;
    swift_willThrow();
    v10 = v30;
    goto LABEL_6;
  }

  v43 = 0;
  v30 = v11 & 1;
  v29 = a3;
  v13 = v25;
  v28 = v25;
  v31 = 0xD000000000000030;
  v32 = 0x80000002147931B0;
  v33 = 0xD00000000000001CLL;
  v34 = 0x800000021478A360;
  v14 = v27;

  v15 = v24;
  v16 = v24(&v29, &v28, &v31);
  if ((v16 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v20 = 0xD000000000000030;
    v20[1] = 0x80000002147931B0;
    v20[2] = 0xD00000000000001CLL;
    v20[3] = 0x800000021478A360;
    swift_willThrow();
    v21 = v30;

    v40 = v21 & 1;
    v9 = a2;
    goto LABEL_7;
  }

  v40 = 0;
  v19 = v43;
  *v22 = v8;
  *(v22 + 8) = v7;
  *(v22 + 16) = a2;
  *(v22 + 24) = v19;
  *(v22 + 25) = v26;
  *(v22 + 26) = v41;
  *(v22 + 30) = v42;
  *(v22 + 32) = v24;
  *(v22 + 40) = v27;
  *(v22 + 48) = a3;
  *(v22 + 56) = 0;
  *(v22 + 57) = v25;
  return result;
}

uint64_t sub_214293568@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x656475746974616CLL && a2 == 0xE800000000000000;
  if (v6 || (sub_2146DA6A8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x64757469676E6F6CLL && a2 == 0xE900000000000065)
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

uint64_t sub_21429364C(uint64_t a1)
{
  v2 = sub_21431B5B8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_214293688(uint64_t a1)
{
  v2 = sub_21431B5B8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2142936C4@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90C110, &qword_2146F6AF0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v38 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21431B5B8();
  sub_2146DAA08();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  LOBYTE(v54) = 0;
  sub_2146DA188();
  v10 = v9;
  v63 = 1;
  sub_2146DA188();
  v13 = v12;
  sub_2145C3DF8(&v54);
  v14 = v55;
  v48 = v54;
  v15 = v56;
  v65 = *(&v57 + 2);
  v66 = HIWORD(v57);
  v45 = v58;
  v47 = v59;
  v42 = v60;
  v44 = v62;
  v67 = v57;
  v40 = v61;
  v64 = v61;
  LODWORD(v41) = v57;
  LOBYTE(v52) = v57 & 1;
  *&v49 = v10;
  v43 = BYTE1(v57);
  v53[0] = BYTE1(v57);
  v54 = 0xD00000000000002FLL;
  v55 = 0x8000000214793180;
  v56 = 0xD00000000000001CLL;
  v57 = 0x800000021478A360;

  v46 = v14;
  v16 = v48(&v49, v53, &v54);
  v39 = 0x800000021478A360;
  if (v16)
  {
    v17 = v39;
    v41 = 0;

    v67 = 0;
    v53[0] = v40 & 1;
    v52 = v13;
    v18 = v44;
    LOBYTE(v49) = v44;
    v54 = 0xD000000000000030;
    v55 = 0x80000002147931B0;
    v56 = 0xD00000000000001CLL;
    v57 = v17;

    v19 = v41;
    v20 = v45;
    v21 = v45(&v52, &v49, &v54);
    v22 = v20;
    if (v19)
    {
      (*(v6 + 8))(v8, v5);

      v23 = v40;
    }

    else
    {
      if (v21)
      {

        (*(v6 + 8))(v8, v5);
        v28 = v47;

        v64 = 0;
        v29 = v48;
        *&v49 = v48;
        v30 = v46;
        *(&v49 + 1) = v46;
        *&v50 = v10;
        v31 = v67;
        BYTE8(v50) = v67;
        v32 = v43;
        BYTE9(v50) = v43;
        *(&v50 + 10) = v65;
        HIWORD(v50) = v66;
        *v51 = v20;
        *&v51[8] = v28;
        *&v51[16] = v13;
        v51[24] = 0;
        v51[25] = v18;
        v33 = v49;
        v34 = v50;
        v35 = *v51;
        *(a2 + 42) = *&v51[10];
        a2[1] = v34;
        a2[2] = v35;
        *a2 = v33;
        sub_21431B60C(&v49, &v54);
        __swift_destroy_boxed_opaque_existential_1(a1);
        v54 = v29;
        v55 = v30;
        v56 = v10;
        LOBYTE(v57) = v31;
        BYTE1(v57) = v32;
        *(&v57 + 2) = v65;
        HIWORD(v57) = v66;
        v58 = v45;
        v59 = v28;
        v60 = v13;
        v61 = 0;
        goto LABEL_9;
      }

      sub_214031C4C();
      swift_allocError();
      *v36 = 0xD000000000000030;
      v36[1] = 0x80000002147931B0;
      v37 = v39;
      v36[2] = 0xD00000000000001CLL;
      v36[3] = v37;
      swift_willThrow();
      (*(v6 + 8))(v8, v5);
      v23 = v53[0];
    }

    v64 = v23 & 1;
    v15 = v10;
    v27 = v46;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v24 = 0xD00000000000002FLL;
    v24[1] = 0x8000000214793180;
    v25 = v39;
    v24[2] = 0xD00000000000001CLL;
    v24[3] = v25;
    swift_willThrow();
    (*(v6 + 8))(v8, v5);
    v26 = v52;
    v22 = v45;
    v27 = v46;

    v67 = v26 & 1;
    v18 = v44;
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  v54 = v48;
  v55 = v27;
  v56 = v15;
  LOBYTE(v57) = v67;
  BYTE1(v57) = v43;
  *(&v57 + 2) = v65;
  HIWORD(v57) = v66;
  v58 = v22;
  v59 = v47;
  v60 = v42;
  v61 = v64;
LABEL_9:
  v62 = v18;
  return sub_21431B564(&v54);
}

uint64_t sub_214293D60(void *a1, uint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v14[0] = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v14 - v9;
  v11 = *(v5 + 24);
  v15 = *(v5 + 56);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  (v14[0])();
  sub_2146DAA28();
  if (v11)
  {
    goto LABEL_6;
  }

  v17 = 0;
  v12 = v14[1];
  sub_2146DA348();
  if (v12)
  {
    return (*(v8 + 8))(v10, v7);
  }

  if (v15)
  {
LABEL_6:
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v16 = 1;
    sub_2146DA348();
    return (*(v8 + 8))(v10, v7);
  }

  return result;
}

uint64_t sub_214293F80@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v7 = swift_allocObject();
  v8 = swift_allocObject();
  *(v8 + 16) = 200;
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
  v17 = 0xD00000000000002CLL;
  v18 = 0x80000002147931F0;
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
    *v14 = 0xD00000000000002CLL;
    v14[1] = 0x80000002147931F0;
    v14[2] = 0xD00000000000001CLL;
    v14[3] = 0x800000021478A360;
    swift_willThrow();
  }
}

uint64_t sub_2142941BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x7274537972657571 && a2 == 0xEB00000000676E69)
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

uint64_t sub_214294248(uint64_t a1)
{
  v2 = sub_21431B668();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_214294284(uint64_t a1)
{
  v2 = sub_21431B668();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2142942C0@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90C128, &qword_2146F6B00);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v22 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21431B668();
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
  *(v14 + 16) = 200;
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
  v29 = 0xD00000000000002CLL;
  v30 = 0x80000002147931F0;
  v24 = 0x80000002147931F0;
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
  *v21 = 0xD00000000000002CLL;
  v21[1] = v18;
  v21[2] = 0xD00000000000001CLL;
  v21[3] = 0x800000021478A360;
  swift_willThrow();

  (*(v6 + 8))(v8, v5);

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_2142946B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F38, &unk_2146E9D40);
  MEMORY[0x28223BE20](v7);
  v9 = (v20 - v8);
  v10 = *(type metadata accessor for Chatbot.MapAction.ShowLocation(0) + 20);
  sub_2145C4100((a3 + v10));
  v11 = *(a1 + 80);
  *(a3 + 64) = *(a1 + 64);
  *(a3 + 80) = v11;
  *(a3 + 96) = *(a1 + 96);
  v12 = *(a1 + 16);
  *a3 = *a1;
  *(a3 + 16) = v12;
  v13 = *(a1 + 48);
  *(a3 + 32) = *(a1 + 32);
  *(a3 + 48) = v13;
  sub_213FB2E54(a3 + v10, v9, &qword_27C903F38, &unk_2146E9D40);
  v14 = *v9;
  v21 = *(v9 + *(v7 + 32));
  v20[0] = 0xD00000000000002ALL;
  v20[1] = 0x8000000214793220;
  v20[2] = 0xD00000000000001CLL;
  v20[3] = 0x800000021478A360;
  v15 = v14(a2, &v21, v20);
  if (v3)
  {
    sub_213FB2DF4(a2, &unk_27C9131A0, &unk_2146E9D10);
  }

  else
  {
    if (v15)
    {

      v16 = *(v7 + 28);
      sub_213FB2DF4(v9 + v16, &qword_27C903F40, &unk_2146F1C50);
      sub_21408AC04(a2, v9 + v16, &unk_27C9131A0, &unk_2146E9D10);
      v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9131A0, &unk_2146E9D10);
      (*(*(v17 - 8) + 56))(v9 + v16, 0, 1, v17);
      return sub_21402EDB8(v9, a3 + v10, &qword_27C903F38, &unk_2146E9D40);
    }

    sub_214031C4C();
    swift_allocError();
    *v19 = 0xD00000000000002ALL;
    v19[1] = 0x8000000214793220;
    v19[2] = 0xD00000000000001CLL;
    v19[3] = 0x800000021478A360;
    swift_willThrow();
    sub_213FB2DF4(a2, &unk_27C9131A0, &unk_2146E9D10);
  }

  sub_21402EDB8(v9, a3 + v10, &qword_27C903F38, &unk_2146E9D40);
  return sub_21432887C(a3, type metadata accessor for Chatbot.MapAction.ShowLocation);
}

uint64_t sub_214294980()
{
  if (*v0)
  {
    return 0x6B6361626C6C6166;
  }

  else
  {
    return 0x6E6F697461636F6CLL;
  }
}

uint64_t sub_2142949C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6E6F697461636F6CLL && a2 == 0xE800000000000000;
  if (v6 || (sub_2146DA6A8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6B6361626C6C6166 && a2 == 0xEB000000004C5255)
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

uint64_t sub_214294AA4(uint64_t a1)
{
  v2 = sub_21431B6BC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_214294AE0(uint64_t a1)
{
  v2 = sub_21431B6BC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_214294B1C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v31 = a2;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F38, &unk_2146E9D40);
  MEMORY[0x28223BE20](v32);
  v34 = &v27 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9131A0, &unk_2146E9D10);
  v30 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v27 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90C140, &qword_2146F6B10);
  v33 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v27 - v8;
  v10 = type metadata accessor for Chatbot.MapAction.ShowLocation(0);
  MEMORY[0x28223BE20](v10);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = a1[3];
  v36 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v13);
  sub_21431B6BC();
  v14 = v35;
  sub_2146DAA08();
  if (v14)
  {
    return __swift_destroy_boxed_opaque_existential_1(v36);
  }

  v35 = v4;
  v15 = v33;
  v16 = v34;
  v52[1] = 0;
  sub_21431B710();
  sub_2146DA1C8();
  v42 = v49;
  v43 = v50;
  v44 = v51;
  v38 = v45;
  v39 = v46;
  v41 = v48;
  v40 = v47;
  LOBYTE(v37[0]) = 1;
  sub_2142E27A8();
  sub_2146DA1C8();
  v28 = v9;
  v29 = v7;
  v18 = *(v10 + 20);
  sub_2145C4100(&v12[v18]);
  v19 = v43;
  *(v12 + 4) = v42;
  *(v12 + 5) = v19;
  v12[96] = v44;
  v20 = v39;
  *v12 = v38;
  *(v12 + 1) = v20;
  v21 = v41;
  *(v12 + 2) = v40;
  *(v12 + 3) = v21;
  v27 = v18;
  sub_213FB2E54(&v12[v18], v16, &qword_27C903F38, &unk_2146E9D40);
  v22 = *v16;
  v52[0] = *(v16 + *(v32 + 32));
  v37[0] = 0xD00000000000002ALL;
  v37[1] = 0x8000000214793220;
  v37[2] = 0xD00000000000001CLL;
  v37[3] = 0x800000021478A360;
  v23 = v22(v6, v52, v37);
  v24 = v28;
  if (v23)
  {

    (*(v15 + 8))(v24, v29);
    v25 = *(v32 + 28);
    sub_213FB2DF4(v16 + v25, &qword_27C903F40, &unk_2146F1C50);
    sub_21408AC04(v6, v16 + v25, &unk_27C9131A0, &unk_2146E9D10);
    (*(v30 + 56))(v16 + v25, 0, 1, v35);
    sub_21402EDB8(v16, &v12[v27], &qword_27C903F38, &unk_2146E9D40);
    sub_214328704(v12, v31, type metadata accessor for Chatbot.MapAction.ShowLocation);
    return __swift_destroy_boxed_opaque_existential_1(v36);
  }

  sub_214031C4C();
  swift_allocError();
  *v26 = 0xD00000000000002ALL;
  v26[1] = 0x8000000214793220;
  v26[2] = 0xD00000000000001CLL;
  v26[3] = 0x800000021478A360;
  swift_willThrow();
  sub_213FB2DF4(v6, &unk_27C9131A0, &unk_2146E9D10);
  (*(v15 + 8))(v24, v29);
  sub_21402EDB8(v16, &v12[v27], &qword_27C903F38, &unk_2146E9D40);
  __swift_destroy_boxed_opaque_existential_1(v36);
  return sub_21432887C(v12, type metadata accessor for Chatbot.MapAction.ShowLocation);
}

uint64_t sub_214295174(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F40, &unk_2146F1C50);
  MEMORY[0x28223BE20](v4 - 8);
  v28 = &v24 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9131A0, &unk_2146E9D10);
  v26 = *(v6 - 8);
  v27 = v6;
  MEMORY[0x28223BE20](v6);
  v25 = &v24 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90C158, &qword_2146F6B18);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v24 - v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21431B6BC();
  sub_2146DAA28();
  v12 = v2[3];
  v13 = v2[5];
  v48 = v2[4];
  v49 = v13;
  v14 = v2[1];
  v45[0] = *v2;
  v45[1] = v14;
  v15 = v2[3];
  v17 = *v2;
  v16 = v2[1];
  v46 = v2[2];
  v47 = v15;
  v41 = v12;
  v42 = v48;
  v43 = v2[5];
  v38 = v17;
  v50 = *(v2 + 96);
  v44 = *(v2 + 96);
  v39 = v16;
  v40 = v46;
  v37 = 0;
  sub_21431B4B4(v45, &v30);
  sub_21431B764();
  v18 = v51;
  sub_2146DA388();
  if (v18)
  {
    v34 = v42;
    v35 = v43;
    v36 = v44;
    v30 = v38;
    v31 = v39;
    v32 = v40;
    v33 = v41;
    sub_21431B308(&v30);
    return (*(v9 + 8))(v11, v8);
  }

  else
  {
    v51 = v9;
    v20 = v25;
    v34 = v42;
    v35 = v43;
    v36 = v44;
    v30 = v38;
    v31 = v39;
    v32 = v40;
    v33 = v41;
    sub_21431B308(&v30);
    v21 = v2 + *(type metadata accessor for Chatbot.MapAction.ShowLocation(0) + 20);
    v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F38, &unk_2146E9D40);
    v23 = v28;
    sub_213FB2E54(v21 + *(v22 + 28), v28, &qword_27C903F40, &unk_2146F1C50);
    if ((*(v26 + 48))(v23, 1, v27) == 1)
    {
      sub_213FB2DF4(v28, &qword_27C903F40, &unk_2146F1C50);
      result = sub_2146DA018();
      __break(1u);
    }

    else
    {
      sub_21408AC04(v28, v20, &unk_27C9131A0, &unk_2146E9D10);
      v29 = 1;
      sub_2142E2910();
      sub_2146DA388();
      sub_213FB2DF4(v20, &unk_27C9131A0, &unk_2146E9D10);
      return (*(v51 + 8))(v11, v8);
    }
  }

  return result;
}

uint64_t sub_2142955DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v74 = a7;
  v80 = a6;
  v72 = a5;
  *&v82 = a3;
  *(&v82 + 1) = a4;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F38, &unk_2146E9D40);
  MEMORY[0x28223BE20](v71);
  v70 = (&v68 - v11);
  v12 = sub_2146D8B08();
  v75 = *(v12 - 8);
  v13 = *(v75 + 16);
  v78 = a1;
  v13(a8, a1, v12);
  Event = type metadata accessor for Chatbot.CalendarAction.CreateEvent(0);
  v15 = a8 + Event[5];
  v76 = a2;
  v77 = v12;
  v13(v15, a2, v12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v17 = swift_allocObject();
  LOBYTE(v87) = 0;
  v18 = swift_allocObject();
  *(v18 + 16) = 100;
  *(v18 + 24) = v87;
  *(v17 + 16) = sub_21438F518;
  *(v17 + 24) = v18;
  *(inited + 32) = v17;
  sub_214042B80(inited, &v87);
  v19 = v88;
  v20 = v89;
  LOBYTE(inited) = v90;
  sub_2145C42BC(&v83);
  v21 = v84;
  v22 = v85;
  v23 = v86;
  v69 = Event[8];
  sub_2145C4408((a8 + v69));
  v24 = a8 + Event[6];
  *v24 = v87;
  *(v24 + 16) = v19;
  *(v24 + 24) = v20;
  *(v24 + 32) = inited;
  v25 = Event[7];
  v79 = a8;
  v26 = a8 + v25;
  *v26 = v83;
  *(v26 + 16) = v21;
  *(v26 + 24) = v22;
  *(v26 + 32) = v23;
  v28 = *v24;
  v27 = *(v24 + 8);
  v29 = *(v24 + 24);
  v73 = *(v24 + 16);
  v30 = *(v24 + 32);
  v83 = v82;
  v91 = v30;
  *&v87 = 0xD000000000000028;
  *(&v87 + 1) = 0x8000000214793250;
  v88 = 0xD00000000000001CLL;
  v89 = 0x800000021478A360;

  v31 = v81;
  v32 = v28(&v83, &v91, &v87);
  v81 = v31;
  if (v31)
  {

LABEL_7:

    sub_213FB2DF4(v74, &unk_27C9131A0, &unk_2146E9D10);
    v43 = *(v75 + 8);
    v44 = v77;
    v43(v76, v77);
    v43(v78, v44);

    *v24 = v28;
    *(v24 + 8) = v27;
    *(v24 + 16) = v73;
    *(v24 + 24) = v29;
    *(v24 + 32) = v30;
    v45 = v79;
    return sub_21432887C(v45, type metadata accessor for Chatbot.CalendarAction.CreateEvent);
  }

  if ((v32 & 1) == 0)
  {
    sub_214031C4C();
    v41 = swift_allocError();
    *v42 = 0xD000000000000028;
    v42[1] = 0x8000000214793250;
    v42[2] = 0xD00000000000001CLL;
    v42[3] = 0x800000021478A360;
    v81 = v41;
    swift_willThrow();
    goto LABEL_7;
  }

  *v24 = v28;
  *(v24 + 8) = v27;
  v33 = *(&v82 + 1);
  *(v24 + 16) = v82;
  *(v24 + 24) = v33;
  *(v24 + 32) = v30;
  v35 = *v26;
  v34 = *(v26 + 8);
  v36 = *(v26 + 16);
  v37 = *(v26 + 24);
  v38 = *(v26 + 32);
  *&v83 = v72;
  *(&v83 + 1) = v80;
  LODWORD(v82) = v38;
  v91 = v38;
  *&v87 = 0xD00000000000002ELL;
  *(&v87 + 1) = 0x8000000214793280;
  v88 = 0xD00000000000001CLL;
  v89 = 0x800000021478A360;

  sub_213FDC9D0(v36, v37);
  v39 = v81;
  *(&v82 + 1) = v35;
  v40 = v35(&v83, &v91, &v87);
  if (v39)
  {

LABEL_12:

    sub_213FB2DF4(v74, &unk_27C9131A0, &unk_2146E9D10);
    v57 = *(v75 + 8);
    v58 = v77;
    v57(v76, v77);
    v57(v78, v58);
    v59 = *(v26 + 16);
    v60 = *(v26 + 24);

    sub_213FDC6D0(v59, v60);
    *v26 = *(&v82 + 1);
    *(v26 + 8) = v34;
    *(v26 + 16) = v36;
    *(v26 + 24) = v37;
    *(v26 + 32) = v82;
    v45 = v79;
    return sub_21432887C(v45, type metadata accessor for Chatbot.CalendarAction.CreateEvent);
  }

  if ((v40 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v56 = 0xD00000000000002ELL;
    v56[1] = 0x8000000214793280;
    v56[2] = 0xD00000000000001CLL;
    v56[3] = 0x800000021478A360;
    swift_willThrow();
    goto LABEL_12;
  }

  sub_213FDC6D0(v36, v37);

  v47 = *(v26 + 16);
  v48 = *(v26 + 24);

  sub_213FDC6D0(v47, v48);
  *v26 = *(&v82 + 1);
  *(v26 + 8) = v34;
  v49 = v80;
  *(v26 + 16) = v72;
  *(v26 + 24) = v49;
  *(v26 + 32) = v82;
  v50 = v79;
  v51 = v69;
  v52 = v70;
  sub_213FB2E54(v79 + v69, v70, &qword_27C903F38, &unk_2146E9D40);
  v53 = *v52;
  LOBYTE(v83) = *(v52 + *(v71 + 32));
  *&v87 = 0xD00000000000002ELL;
  *(&v87 + 1) = 0x80000002147932B0;
  v88 = 0xD00000000000001CLL;
  v89 = 0x800000021478A360;
  v54 = v74;
  v55 = v53(v74, &v83, &v87);
  if ((v55 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v65 = 0xD00000000000002ELL;
    v65[1] = 0x80000002147932B0;
    v65[2] = 0xD00000000000001CLL;
    v65[3] = 0x800000021478A360;
    swift_willThrow();
    sub_213FB2DF4(v54, &unk_27C9131A0, &unk_2146E9D10);
    v66 = *(v75 + 8);
    v67 = v77;
    v66(v76, v77);
    v66(v78, v67);
    sub_21402EDB8(v52, v50 + v51, &qword_27C903F38, &unk_2146E9D40);
    v45 = v50;
    return sub_21432887C(v45, type metadata accessor for Chatbot.CalendarAction.CreateEvent);
  }

  v61 = *(v75 + 8);
  v62 = v77;
  v61(v76, v77);
  v61(v78, v62);
  v63 = *(v71 + 28);
  sub_213FB2DF4(v52 + v63, &qword_27C903F40, &unk_2146F1C50);
  sub_21408AC04(v54, v52 + v63, &unk_27C9131A0, &unk_2146E9D10);
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9131A0, &unk_2146E9D10);
  (*(*(v64 - 8) + 56))(v52 + v63, 0, 1, v64);
  return sub_21402EDB8(v52, v50 + v51, &qword_27C903F38, &unk_2146E9D40);
}

uint64_t sub_214295E94()
{
  v1 = *v0;
  v2 = 0x6D69547472617473;
  v3 = 0x656C746974;
  v4 = 0x7470697263736564;
  if (v1 != 3)
  {
    v4 = 0x6B6361626C6C6166;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x656D6954646E65;
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

uint64_t sub_214295F40@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_214384FA8(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_214295F68(uint64_t a1)
{
  v2 = sub_21431B7B8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_214295FA4(uint64_t a1)
{
  v2 = sub_21431B7B8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_214295FE0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v102 = a2;
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F38, &unk_2146E9D40);
  MEMORY[0x28223BE20](v103);
  v104 = &v88 - v3;
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9131A0, &unk_2146E9D10);
  v101 = *(v105 - 8);
  MEMORY[0x28223BE20](v105);
  v106 = &v88 - v4;
  v109 = sub_2146D8B08();
  v107 = *(v109 - 8);
  v5 = MEMORY[0x28223BE20](v109);
  v7 = &v88 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v88 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90C168, &qword_2146F6B20);
  v108 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v12 = &v88 - v11;
  Event = type metadata accessor for Chatbot.CalendarAction.CreateEvent(0);
  MEMORY[0x28223BE20](Event);
  v15 = &v88 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a1[3];
  v111 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v16);
  sub_21431B7B8();
  v17 = v110;
  sub_2146DAA08();
  if (v17)
  {
    return __swift_destroy_boxed_opaque_existential_1(v111);
  }

  v18 = Event;
  v110 = v7;
  v19 = v108;
  LOBYTE(v116) = 0;
  sub_214328930(&qword_280B34D28, MEMORY[0x277CC9578], MEMORY[0x277CC95A0]);
  v20 = v109;
  sub_2146DA1C8();
  LOBYTE(v116) = 1;
  sub_2146DA1C8();
  v100 = v9;
  LOBYTE(v116) = 2;
  *&v99 = sub_2146DA168();
  *(&v99 + 1) = v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
  LOBYTE(v112) = 3;
  sub_2142E12FC();
  sub_2146DA1C8();
  v98 = v116;
  LOBYTE(v116) = 4;
  sub_2142E27A8();
  sub_2146DA1C8();
  v96 = v10;
  v23 = *(v107 + 16);
  v92 = v15;
  v23(v15, v100, v20);
  v23(&v15[v18[5]], v110, v20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v25 = swift_allocObject();
  LOBYTE(v116) = 0;
  v26 = swift_allocObject();
  *(v26 + 16) = 100;
  *(v26 + 24) = v116;
  *(v25 + 16) = sub_21438F518;
  *(v25 + 24) = v26;
  *(inited + 32) = v25;
  sub_214042B80(inited, &v116);
  v97 = v117;
  v95 = v118;
  LODWORD(v94) = v119;
  sub_2145C42BC(&v112);
  v27 = v113;
  v28 = v114;
  LODWORD(v93) = v115;
  v29 = v92;
  v89 = v18[8];
  sub_2145C4408(&v92[v89]);
  v30 = &v29[v18[6]];
  *v30 = v116;
  v31 = v95;
  *(v30 + 2) = v97;
  *(v30 + 3) = v31;
  v30[32] = v94;
  v32 = &v29[v18[7]];
  *v32 = v112;
  *(v32 + 16) = v27;
  *(v32 + 24) = v28;
  *(v32 + 32) = v93;
  v34 = *v30;
  v33 = *(v30 + 1);
  v35 = *(v30 + 3);
  v90 = *(v30 + 2);
  v36 = v30[32];
  v112 = v99;
  LODWORD(v95) = v36;
  v120 = v36;
  *&v116 = 0xD000000000000028;
  *(&v116 + 1) = 0x8000000214793250;
  v91 = 0x8000000214793250;
  v117 = 0xD00000000000001CLL;
  v118 = 0x800000021478A360;
  v93 = v35;

  v94 = v34;
  v37 = v34(&v112, &v120, &v116);
  v97 = 0;
  v38 = v91;
  v88 = 0x800000021478A360;
  v39 = v106;
  if ((v37 & 1) == 0)
  {
    sub_214031C4C();
    v50 = swift_allocError();
    *v51 = 0xD000000000000028;
    v51[1] = v38;
    v52 = v88;
    v51[2] = 0xD00000000000001CLL;
    v51[3] = v52;
    v97 = v50;
    swift_willThrow();

    v53 = v96;
    sub_213FB2DF4(v39, &unk_27C9131A0, &unk_2146E9D10);
    v54 = *(v107 + 8);
    v55 = v109;
    v54(v110, v109);
    v54(v100, v55);
    (*(v19 + 8))(v12, v53);

    *v30 = v94;
    *(v30 + 1) = v33;
    v56 = v93;
    *(v30 + 2) = v90;
    *(v30 + 3) = v56;
    v30[32] = v95;
LABEL_8:
    __swift_destroy_boxed_opaque_existential_1(v111);
    return sub_21432887C(v15, type metadata accessor for Chatbot.CalendarAction.CreateEvent);
  }

  v40 = v88;

  *v30 = v94;
  *(v30 + 1) = v33;
  v41 = *(&v99 + 1);
  *(v30 + 2) = v99;
  *(v30 + 3) = v41;
  v30[32] = v95;
  v42 = v32;
  v44 = *v32;
  v43 = *(v32 + 8);
  v45 = *(v32 + 16);
  v46 = *(v32 + 24);
  v47 = *(v42 + 32);
  v112 = v98;
  LODWORD(v99) = v47;
  v120 = v47;
  *&v116 = 0xD00000000000002ELL;
  *(&v116 + 1) = 0x8000000214793280;
  v117 = 0xD00000000000001CLL;
  v118 = v40;

  v95 = v45;
  v94 = v46;
  sub_213FDC9D0(v45, v46);
  v93 = v43;
  v48 = v97;
  *(&v99 + 1) = v44;
  v49 = v44(&v112, &v120, &v116);
  v97 = v48;
  if (v48)
  {
    v105 = v42;

LABEL_13:

    sub_213FB2DF4(v106, &unk_27C9131A0, &unk_2146E9D10);
    v72 = *(v107 + 8);
    v73 = v109;
    v72(v110, v109);
    v72(v100, v73);
    (*(v19 + 8))(v12, v96);
    v74 = v105;
    v75 = *(v105 + 16);
    v76 = *(v105 + 24);

    sub_213FDC6D0(v75, v76);
    v77 = v93;
    *v74 = *(&v99 + 1);
    *(v74 + 8) = v77;
    v78 = v94;
    *(v74 + 16) = v95;
    *(v74 + 24) = v78;
    *(v74 + 32) = v99;
    goto LABEL_8;
  }

  if ((v49 & 1) == 0)
  {
    v105 = v42;
    sub_214031C4C();
    v69 = swift_allocError();
    *v70 = 0xD00000000000002ELL;
    v70[1] = 0x8000000214793280;
    v71 = v88;
    v70[2] = 0xD00000000000001CLL;
    v70[3] = v71;
    v97 = v69;
    swift_willThrow();
    goto LABEL_13;
  }

  sub_213FDC6D0(v95, v94);
  v57 = v88;

  v58 = *(v42 + 16);
  v59 = *(v42 + 24);

  sub_213FDC6D0(v58, v59);
  v60 = v93;
  *v42 = *(&v99 + 1);
  *(v42 + 8) = v60;
  v61 = *(&v98 + 1);
  *(v42 + 16) = v98;
  *(v42 + 24) = v61;
  *(v42 + 32) = v99;
  v62 = v104;
  sub_213FB2E54(&v15[v89], v104, &qword_27C903F38, &unk_2146E9D40);
  v63 = *v62;
  LOBYTE(v112) = v62[*(v103 + 32)];
  *&v116 = 0xD00000000000002ELL;
  *(&v116 + 1) = 0x80000002147932B0;
  v117 = 0xD00000000000001CLL;
  v118 = v57;
  v64 = v106;
  v65 = v97;
  v66 = v63(v106, &v112, &v116);
  v97 = v65;
  if (v65)
  {
    sub_213FB2DF4(v64, &unk_27C9131A0, &unk_2146E9D10);
    v67 = *(v107 + 8);
    v68 = v109;
    v67(v110, v109);
    v67(v100, v68);
    (*(v19 + 8))(v12, v96);

LABEL_17:
    sub_21402EDB8(v104, &v15[v89], &qword_27C903F38, &unk_2146E9D40);
    goto LABEL_8;
  }

  if ((v66 & 1) == 0)
  {
    sub_214031C4C();
    v83 = swift_allocError();
    *v84 = 0xD00000000000002ELL;
    v84[1] = 0x80000002147932B0;
    v85 = v88;
    v84[2] = 0xD00000000000001CLL;
    v84[3] = v85;
    v97 = v83;
    swift_willThrow();
    sub_213FB2DF4(v106, &unk_27C9131A0, &unk_2146E9D10);
    v86 = *(v107 + 8);
    v87 = v109;
    v86(v110, v109);
    v86(v100, v87);
    (*(v19 + 8))(v12, v96);
    goto LABEL_17;
  }

  v79 = *(v107 + 8);
  v80 = v109;
  v79(v110, v109);
  v79(v100, v80);
  (*(v19 + 8))(v12, v96);
  v81 = *(v103 + 28);
  v82 = v104;
  sub_213FB2DF4(&v104[v81], &qword_27C903F40, &unk_2146F1C50);
  sub_21408AC04(v106, v82 + v81, &unk_27C9131A0, &unk_2146E9D10);
  (*(v101 + 56))(v82 + v81, 0, 1, v105);
  sub_21402EDB8(v82, &v15[v89], &qword_27C903F38, &unk_2146E9D40);
  sub_214328704(v15, v102, type metadata accessor for Chatbot.CalendarAction.CreateEvent);
  return __swift_destroy_boxed_opaque_existential_1(v111);
}

uint64_t sub_214296EE8(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F40, &unk_2146F1C50);
  MEMORY[0x28223BE20](v4 - 8);
  v28 = &v28 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9131A0, &unk_2146E9D10);
  v7 = *(v6 - 8);
  v29 = v6;
  v30 = v7;
  MEMORY[0x28223BE20](v6);
  v9 = &v28 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90C178, &qword_2146F6B28);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v28 - v12;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21431B7B8();
  sub_2146DAA28();
  LOBYTE(v32) = 0;
  sub_2146D8B08();
  sub_214328930(&qword_280B34C68, MEMORY[0x277CC9578], MEMORY[0x277CC9580]);
  v14 = v2;
  v15 = v31;
  sub_2146DA388();
  if (v15)
  {
    return (*(v11 + 8))(v13, v10);
  }

  v31 = v9;
  Event = type metadata accessor for Chatbot.CalendarAction.CreateEvent(0);
  LOBYTE(v32) = 1;
  sub_2146DA388();
  if (*(v14 + Event[6] + 24))
  {
    v18 = v11;
    LOBYTE(v32) = 2;

    sub_2146DA328();

    v19 = v14 + Event[7];
    v20 = *(v19 + 24);
    if (v20 != 1)
    {
      v32 = *(v19 + 16);
      v33 = v20;
      v34 = 3;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
      sub_214045AC0();
      sub_2146DA388();
      v21 = v30;
      v22 = v10;
      v23 = v14 + Event[8];
      v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F38, &unk_2146E9D40);
      v25 = v28;
      sub_213FB2E54(v23 + *(v24 + 28), v28, &qword_27C903F40, &unk_2146F1C50);
      if ((*(v21 + 48))(v25, 1, v29) != 1)
      {
        v26 = v25;
        v27 = v31;
        sub_21408AC04(v26, v31, &unk_27C9131A0, &unk_2146E9D10);
        LOBYTE(v32) = 4;
        sub_2142E2910();
        sub_2146DA388();
        sub_213FB2DF4(v27, &unk_27C9131A0, &unk_2146E9D10);
        return (*(v18 + 8))(v13, v22);
      }

      sub_213FB2DF4(v25, &qword_27C903F40, &unk_2146F1C50);
    }
  }

  result = sub_2146DA018();
  __break(1u);
  return result;
}

uint64_t sub_21429740C@<X0>(unint64_t a1@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X8>)
{
  sub_2145C4A54(&v32);
  v9 = v32;
  v8 = v33;
  v10 = v34;
  v11 = v35;
  *v43 = *v37;
  *&v43[3] = *&v37[3];
  v26 = v38;
  v22 = v40;
  v28 = v41;
  v29 = v39;
  v23 = v36;
  v24 = v42;
  v30 = a1;
  v31 = a2;
  v44 = v36;
  v32 = 0xD000000000000034;
  v33 = 0x80000002147932E0;
  v34 = 0xD00000000000001CLL;
  v35 = 0x800000021478A360;

  v25 = v9;
  v12 = v9(&v30, &v44, &v32);
  if (v5)
  {

LABEL_6:
    v13 = v24;
    v14 = v26;
LABEL_7:

    v32 = v25;
    v33 = v8;
    v34 = v10;
    v35 = v11;
    v36 = v23;
    *v37 = *v43;
    *&v37[3] = *&v43[3];
    v38 = v14;
    v39 = v29;
    v40 = v22;
    v41 = v28;
    v42 = v13;
    return sub_21431B80C(&v32);
  }

  v19 = a2;
  if ((v12 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v16 = 0xD000000000000034;
    v16[1] = 0x80000002147932E0;
    v16[2] = 0xD00000000000001CLL;
    v16[3] = 0x800000021478A360;
    swift_willThrow();

    goto LABEL_6;
  }

  v30 = a3;
  v31 = a4;
  v13 = v24;
  v44 = v24;
  v32 = 0xD00000000000002DLL;
  v33 = 0x8000000214793320;
  v34 = 0xD00000000000001CLL;
  v35 = 0x800000021478A360;

  v14 = v26;
  v15 = v26(&v30, &v44, &v32);
  if ((v15 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v18 = 0xD00000000000002DLL;
    v18[1] = 0x8000000214793320;
    v18[2] = 0xD00000000000001CLL;
    v18[3] = 0x800000021478A360;
    swift_willThrow();

    v10 = a1;
    v11 = v19;
    goto LABEL_7;
  }

  result = swift_bridgeObjectRelease_n();
  *a5 = v25;
  *(a5 + 8) = v8;
  *(a5 + 16) = a1;
  *(a5 + 24) = v19;
  *(a5 + 32) = v23;
  *(a5 + 33) = *v43;
  *(a5 + 36) = *&v43[3];
  *(a5 + 40) = v26;
  *(a5 + 48) = v29;
  *(a5 + 56) = a3;
  *(a5 + 64) = a4;
  *(a5 + 72) = v24;
  return result;
}

uint64_t sub_21429778C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6D754E656E6F6870 && a2 == 0xEB00000000726562;
  if (v6 || (sub_2146DA6A8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 1954047348 && a2 == 0xE400000000000000)
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

uint64_t sub_21429786C(uint64_t a1)
{
  v2 = sub_21431B860();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2142978A8(uint64_t a1)
{
  v2 = sub_21431B860();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2142978E4@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90C180, &qword_2146F6B30);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v34 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21431B860();
  sub_2146DAA08();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  LOBYTE(v53) = 0;
  v9 = sub_2146DA168();
  v11 = v10;
  v47 = a2;
  v12 = v9;
  v64 = 1;
  v35 = sub_2146DA168();
  v42 = v14;
  v66 = v12;
  sub_2145C4A54(&v53);
  v16 = v53;
  v15 = v54;
  v17 = v56;
  v36 = v55;
  v65[0] = *v58;
  *(v65 + 3) = *&v58[3];
  v43 = v59;
  v46 = v60;
  v37 = v61;
  v45 = v62;
  v44 = v63;
  *&v48 = v66;
  v39 = v11;
  *(&v48 + 1) = v11;
  v40 = v57;
  LOBYTE(v52[0]) = v57;
  v53 = 0xD000000000000034;
  v54 = 0x80000002147932E0;
  v55 = 0xD00000000000001CLL;
  v56 = 0x800000021478A360;
  v38 = v17;

  v41 = v16;
  v18 = v16(&v48, v52, &v53);
  v19 = v38;
  v34 = v15;
  if (v18)
  {

    v52[0] = v35;
    v52[1] = v42;
    LOBYTE(v48) = v44;
    v53 = 0xD00000000000002DLL;
    v54 = 0x8000000214793320;
    v55 = 0xD00000000000001CLL;
    v56 = 0x800000021478A360;

    v20 = v43(v52, &v48, &v53);
    v19 = v39;
    if (v20)
    {

      (*(v6 + 8))(v8, v5);

      v23 = v46;

      v24 = v41;
      *&v48 = v41;
      v25 = v34;
      *(&v48 + 1) = v34;
      *&v49 = v66;
      *(&v49 + 1) = v19;
      v26 = v40;
      LOBYTE(v50) = v40;
      *(&v50 + 1) = v65[0];
      DWORD1(v50) = *(v65 + 3);
      v27 = v43;
      *(&v50 + 1) = v43;
      *v51 = v23;
      *&v51[8] = v35;
      *&v51[16] = v42;
      v28 = v44;
      v51[24] = v44;
      v29 = v48;
      v30 = v47;
      *(v47 + 57) = *&v51[9];
      v31 = v49;
      v32 = *v51;
      v30[2] = v50;
      v30[3] = v32;
      *v30 = v29;
      v30[1] = v31;
      sub_21431B8B4(&v48, &v53);
      __swift_destroy_boxed_opaque_existential_1(a1);
      v53 = v24;
      v54 = v25;
      v55 = v66;
      v56 = v19;
      v57 = v26;
      *v58 = v65[0];
      *&v58[3] = *(v65 + 3);
      v59 = v27;
      v60 = v23;
      v61 = v35;
      v62 = v42;
      v63 = v28;
      return sub_21431B80C(&v53);
    }

    sub_214031C4C();
    swift_allocError();
    *v33 = 0xD00000000000002DLL;
    v33[1] = 0x8000000214793320;
    v33[2] = 0xD00000000000001CLL;
    v33[3] = 0x800000021478A360;
    swift_willThrow();

    v22 = v34;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v21 = 0xD000000000000034;
    v21[1] = 0x80000002147932E0;
    v21[2] = 0xD00000000000001CLL;
    v21[3] = 0x800000021478A360;
    swift_willThrow();

    v22 = v34;
    v66 = v36;
  }

  (*(v6 + 8))(v8, v5);

  __swift_destroy_boxed_opaque_existential_1(a1);
  v53 = v41;
  v54 = v22;
  v55 = v66;
  v56 = v19;
  v57 = v40;
  *v58 = v65[0];
  *&v58[3] = *(v65 + 3);
  v59 = v43;
  v60 = v46;
  v61 = v37;
  v62 = v45;
  v63 = v44;
  return sub_21431B80C(&v53);
}

uint64_t sub_214297FF4(void *a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void), uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v20 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = v16 - v9;
  v11 = v5[2];
  v12 = v5[3];
  v13 = v5[8];
  v16[1] = v5[7];
  v17 = v13;
  v18 = v11;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  a4();
  sub_2146DAA28();
  if (v12)
  {
    v22 = 0;

    v14 = v19;
    sub_2146DA328();
    if (v14)
    {
      (*(v20 + 8))(v10, v8);
    }

    if (v17)
    {
      v21 = 1;

      sub_2146DA328();
      (*(v20 + 8))(v10, v8);
    }
  }

  result = sub_2146DA018();
  __break(1u);
  return result;
}

uint64_t sub_214298238@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unsigned __int8 *a3@<X2>, uint64_t a4@<X8>)
{
  v22 = *a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v8 = swift_allocObject();
  *(v8 + 16) = sub_21403281C;
  *(v8 + 24) = 0;
  *(inited + 32) = v8;
  sub_214042B80(inited, &v17);
  v10 = v17;
  v9 = v18;
  v11 = v21;
  v16[0] = a1;
  v16[1] = a2;
  v23 = v21;
  v17 = 0xD000000000000039;
  v18 = 0x8000000214793350;
  v19 = 0xD00000000000001CLL;
  v20 = 0x800000021478A360;

  v12 = v10(v16, &v23, &v17);
  if (v4)
  {
  }

  else
  {
    if (v12)
    {

      *a4 = v10;
      *(a4 + 8) = v9;
      *(a4 + 16) = a1;
      *(a4 + 24) = a2;
      *(a4 + 32) = v11;
      *(a4 + 33) = v22;
      return result;
    }

    sub_214031C4C();
    swift_allocError();
    *v14 = 0xD000000000000039;
    v14[1] = 0x8000000214793350;
    v14[2] = 0xD00000000000001CLL;
    v14[3] = 0x800000021478A360;
    swift_willThrow();
  }

  swift_bridgeObjectRelease_n();
}

uint64_t sub_214298438()
{
  if (*v0)
  {
    return 0x707954616964656DLL;
  }

  else
  {
    return 0x6D754E656E6F6870;
  }
}

uint64_t sub_214298480@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6D754E656E6F6870 && a2 == 0xEB00000000726562;
  if (v6 || (sub_2146DA6A8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x707954616964656DLL && a2 == 0xE900000000000065)
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

uint64_t sub_214298568(uint64_t a1)
{
  v2 = sub_21431B910();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2142985A4(uint64_t a1)
{
  v2 = sub_21431B910();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2142985E0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90C198, &qword_2146F6B40);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v23 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21431B910();
  sub_2146DAA08();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  LOBYTE(v30) = 0;
  v9 = sub_2146DA168();
  v11 = v10;
  v28 = v9;
  LOBYTE(v29[0]) = 1;
  sub_21431B964();
  sub_2146DA1C8();
  v35 = v30;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v14 = swift_allocObject();
  *(v14 + 16) = sub_21403281C;
  *(v14 + 24) = 0;
  *(inited + 32) = v14;
  sub_214042B80(inited, &v30);
  v15 = v11;
  v17 = v30;
  v16 = v31;
  v18 = v33;
  v29[0] = v28;
  v29[1] = v15;
  v25 = v15;
  v26 = 0x8000000214793350;
  HIDWORD(v23) = v34;
  v36 = v34;
  v30 = 0xD000000000000039;
  v31 = 0x8000000214793350;
  v32 = 0xD00000000000001CLL;
  v33 = 0x800000021478A360;
  v27 = v18;

  v24 = v17;
  v19 = v17(v29, &v36, &v30);
  v20 = v25;
  if (v19)
  {

    (*(v6 + 8))(v8, v5);

    *a2 = v24;
    *(a2 + 8) = v16;
    *(a2 + 16) = v28;
    *(a2 + 24) = v20;
    *(a2 + 32) = BYTE4(v23);
    *(a2 + 33) = v35;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    v21 = v26;
    *v22 = 0xD000000000000039;
    v22[1] = v21;
    v22[2] = 0xD00000000000001CLL;
    v22[3] = 0x800000021478A360;
    swift_willThrow();

    (*(v6 + 8))(v8, v5);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_2142989D8(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90C1B0, &qword_2146F6B48);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v10 - v5;
  v7 = *(v1 + 24);
  v11 = *(v1 + 33);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21431B910();
  sub_2146DAA28();
  if (v7)
  {
    v14 = 0;

    v8 = v10[1];
    sub_2146DA328();
    if (v8)
    {
      (*(v4 + 8))(v6, v3);
    }

    else
    {

      v13 = v11;
      v12 = 1;
      sub_21431B9B8();
      sub_2146DA388();
      return (*(v4 + 8))(v6, v3);
    }
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

uint64_t sub_214298C14@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *(a1 + 80);
  *(a3 + 64) = *(a1 + 64);
  *(a3 + 80) = v5;
  *(a3 + 96) = *(a1 + 96);
  *(a3 + 112) = *(a1 + 112);
  v6 = *(a1 + 16);
  *a3 = *a1;
  *(a3 + 16) = v6;
  v7 = *(a1 + 48);
  *(a3 + 32) = *(a1 + 32);
  *(a3 + 48) = v7;
  v8 = type metadata accessor for Chatbot.Action(0);
  return sub_214328704(a2, a3 + *(v8 + 20), type metadata accessor for Chatbot.Action.ActionType);
}

uint64_t sub_214298C9C()
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

uint64_t sub_214298CD8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6974736567677573 && a2 == 0xEA00000000006E6FLL;
  if (v6 || (sub_2146DA6A8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6E6F69746361 && a2 == 0xE600000000000000)
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

uint64_t sub_214298DB8(uint64_t a1)
{
  v2 = sub_21431BA0C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_214298DF4(uint64_t a1)
{
  v2 = sub_21431BA0C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_214298E30@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v19 = a2;
  v4 = type metadata accessor for Chatbot.Action.ActionType(0);
  MEMORY[0x28223BE20](v4);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90C1C0, &qword_2146F6B50);
  v7 = *(v32 - 8);
  MEMORY[0x28223BE20](v32);
  v9 = &v19 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21431BA0C();
  sub_2146DAA08();
  if (!v2)
  {
    v10 = v7;
    v11 = v6;
    v12 = v19;
    v29 = 0;
    sub_21431AE08();
    v13 = v32;
    sub_2146DA1C8();
    v25 = v30[4];
    v26 = v30[5];
    v27 = v30[6];
    v21 = v30[0];
    v22 = v30[1];
    v28 = v31;
    v23 = v30[2];
    v24 = v30[3];
    v20 = 1;
    sub_214328930(&qword_27C90C1D0, type metadata accessor for Chatbot.Action.ActionType, aF_5);
    sub_2146DA1C8();
    (*(v10 + 8))(v9, v13);
    v14 = type metadata accessor for Chatbot.Action(0);
    sub_214328704(v11, v12 + *(v14 + 20), type metadata accessor for Chatbot.Action.ActionType);
    v15 = v26;
    *(v12 + 64) = v25;
    *(v12 + 80) = v15;
    *(v12 + 96) = v27;
    *(v12 + 112) = v28;
    v16 = v22;
    *v12 = v21;
    *(v12 + 16) = v16;
    v17 = v24;
    *(v12 + 32) = v23;
    *(v12 + 48) = v17;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_214299154(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90C1D8, &qword_2146F6B58);
  v35 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v16[-v6];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21431BA0C();
  sub_2146DAA28();
  v8 = v3[5];
  v9 = v3[3];
  v31 = v3[4];
  v32 = v8;
  v10 = v3[5];
  v33 = v3[6];
  v11 = v3[1];
  v28[0] = *v3;
  v28[1] = v11;
  v12 = v3[3];
  v14 = *v3;
  v13 = v3[1];
  v29 = v3[2];
  v30 = v12;
  v24 = v31;
  v25 = v10;
  v26 = v3[6];
  v20 = v14;
  v21 = v13;
  v34 = *(v3 + 112);
  v27 = *(v3 + 112);
  v22 = v29;
  v23 = v9;
  v19 = 0;
  sub_21431AC80(v28, v17);
  sub_21431AE5C();
  sub_2146DA388();
  v17[4] = v24;
  v17[5] = v25;
  v17[6] = v26;
  v18 = v27;
  v17[0] = v20;
  v17[1] = v21;
  v17[2] = v22;
  v17[3] = v23;
  sub_21431AB00(v17);
  if (!v2)
  {
    type metadata accessor for Chatbot.Action(0);
    v16[15] = 1;
    type metadata accessor for Chatbot.Action.ActionType(0);
    sub_214328930(&qword_27C90C1E0, type metadata accessor for Chatbot.Action.ActionType, byte_214703C08);
    sub_2146DA388();
  }

  return (*(v35 + 8))(v7, v5);
}

uint64_t sub_214299420@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>, char a10, unsigned __int8 *a11, uint64_t a12, uint64_t a13)
{
  v148 = a3;
  v135 = a8;
  v136 = a6;
  v150 = a7;
  v151 = a5;
  v140 = a4;
  v141 = a2;
  v155 = a1;
  v149 = a13;
  v138 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F38, &unk_2146E9D40);
  MEMORY[0x28223BE20](v138);
  v139 = &v134 - v14;
  v153 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9131D0, &qword_2146EAA70);
  MEMORY[0x28223BE20](v153);
  v176 = (&v134 - v15);
  LODWORD(v154) = *a11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  v156 = xmmword_2146E9BF0;
  *(inited + 16) = xmmword_2146E9BF0;
  v17 = sub_214069764(&unk_282654778);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904110, qword_214734DE0);
  v18 = swift_allocObject();
  v19 = swift_allocObject();
  *(v19 + 16) = v17;
  *(v18 + 16) = sub_21438F524;
  *(v18 + 24) = v19;
  *(inited + 32) = v18;
  sub_214042F80(inited, a9);
  v20 = swift_initStackObject();
  *(v20 + 16) = v156;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v21 = swift_allocObject();
  *(v21 + 16) = sub_214064194;
  *(v21 + 24) = 0;
  *(v20 + 32) = v21;
  sub_214042B80(v20, &v172);
  v22 = v173;
  v23 = v174;
  LODWORD(v152) = v175;
  v24 = swift_initStackObject();
  *(v24 + 16) = v156;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F28, &unk_2146E9D30);
  v25 = swift_allocObject();
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_2146ED240;
  *(v25 + 16) = sub_21438F468;
  *(v25 + 24) = v26;
  *(v24 + 32) = v25;
  sub_21404328C(v24, &v168);
  *&v156 = v169;
  LODWORD(v146) = v170;
  LODWORD(v145) = v171;
  v27 = type metadata accessor for Chatbot.CardMedia(0);
  v137 = v27[7];
  sub_2145C4DD8(&a9[v137]);
  sub_2145C4F2C(&v164);
  v28 = v166;
  v144 = v165;
  LODWORD(v143) = v167;
  sub_2145C4F60(&v159);
  v29 = v160;
  LOBYTE(v24) = v161;
  LODWORD(v142) = v162;
  LOBYTE(v25) = v163;
  sub_2145C50A4(v157);
  v30 = v158;
  v31 = a9;
  v32 = &a9[v27[5]];
  *v32 = v172;
  *(v32 + 2) = v22;
  *(v32 + 3) = v23;
  v32[32] = v152;
  v33 = &v31[v27[6]];
  *v33 = v168;
  *(v33 + 16) = v156;
  *(v33 + 24) = v146;
  *(v33 + 25) = v145;
  v34 = &v31[v27[8]];
  *v34 = v164;
  *(v34 + 2) = v144;
  *(v34 + 3) = v28;
  v34[32] = v143;
  v35 = &v31[v27[9]];
  *v35 = v159;
  *(v35 + 2) = v29;
  v35[24] = v24;
  v35[25] = v142;
  v35[26] = v25;
  v31[v27[10]] = v154;
  v36 = &v31[v27[11]];
  v37 = v157[1];
  *v36 = v157[0];
  *(v36 + 1) = v37;
  v36[32] = v30;
  *&v156 = 0x8000000214793390;
  v154 = v31;
  v38 = v176;
  sub_213FB2E54(v31, v176, &unk_27C9131D0, &qword_2146EAA70);
  v39 = *v38;
  LOBYTE(v164) = *(v38 + *(v153 + 32));
  *&v172 = 0xD00000000000001ALL;
  *(&v172 + 1) = v156;
  v173 = 0xD00000000000001CLL;
  v174 = 0x800000021478A360;
  v152 = 0x800000021478A360;
  v40 = v155;
  v41 = v147;
  v42 = v39();
  if (v41)
  {

    sub_213FB2DF4(v151, &unk_27C9131A0, &unk_2146E9D10);
    v43 = sub_2146D8958();
    (*(*(v43 - 8) + 8))(v40, v43);

LABEL_6:
    v62 = v154;
    sub_21402EDB8(v176, v154, &unk_27C9131D0, &qword_2146EAA70);
    v63 = v62;
    return sub_21432887C(v63, type metadata accessor for Chatbot.CardMedia);
  }

  v146 = v33;
  v147 = v32;
  v44 = v148;
  v144 = v35;
  v145 = v34;
  v143 = v36;
  if ((v42 & 1) == 0)
  {

    sub_214031C4C();
    swift_allocError();
    v58 = v156;
    *v59 = 0xD00000000000001ALL;
    v59[1] = v58;
    v60 = v152;
    v59[2] = 0xD00000000000001CLL;
    v59[3] = v60;
    swift_willThrow();
    sub_213FB2DF4(v151, &unk_27C9131A0, &unk_2146E9D10);
    v61 = sub_2146D8958();
    (*(*(v61 - 8) + 8))(v155, v61);
    goto LABEL_6;
  }

  v45 = v152;

  v46 = *(v153 + 28);
  v47 = v176;
  sub_213FB2DF4(v176 + v46, &unk_27C9131A0, &unk_2146E9D10);
  v48 = sub_2146D8958();
  v49 = *(v48 - 8);
  (*(v49 + 16))(v47 + v46, v155, v48);
  *&v156 = v49;
  v50 = *(v49 + 56);
  v153 = v48;
  v50(v47 + v46, 0, 1, v48);
  sub_21402EDB8(v47, v154, &unk_27C9131D0, &qword_2146EAA70);
  v52 = *v147;
  v51 = *(v147 + 1);
  v53 = *(v147 + 3);
  v142 = *(v147 + 2);
  v54 = v147[32];
  *&v164 = v141;
  *(&v164 + 1) = v44;
  v55 = v44;
  LODWORD(v176) = v54;
  LOBYTE(v157[0]) = v54;
  *&v172 = 0xD000000000000022;
  *(&v172 + 1) = 0x80000002147933B0;
  v173 = 0xD00000000000001CLL;
  v174 = v45;

  v56 = v52;
  v57 = v52(&v164, v157, &v172);
  v65 = v154;
  if ((v57 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v73 = 0xD000000000000022;
    v73[1] = 0x80000002147933B0;
    v74 = v152;
    v73[2] = 0xD00000000000001CLL;
    v73[3] = v74;
    swift_willThrow();

    v75 = v147;

    sub_213FB2DF4(v151, &unk_27C9131A0, &unk_2146E9D10);
    (*(v156 + 8))(v155, v153);

    *v75 = v56;
    *(v75 + 1) = v51;
    *(v75 + 2) = v142;
    *(v75 + 3) = v53;
    v75[32] = v176;
LABEL_11:
    v63 = v65;
    return sub_21432887C(v63, type metadata accessor for Chatbot.CardMedia);
  }

  v66 = v152;

  v67 = v147;

  *v67 = v56;
  *(v67 + 1) = v51;
  *(v67 + 2) = v141;
  *(v67 + 3) = v55;
  v67[32] = v176;
  v69 = *v146;
  v68 = *(v146 + 8);
  v148 = *(v146 + 16);
  v70 = *(v146 + 25);
  LOBYTE(v157[0]) = *(v146 + 24);
  v71 = v140;
  *&v164 = v140;
  LODWORD(v176) = v70;
  LOBYTE(v159) = v70;
  *&v172 = 0xD00000000000001FLL;
  *(&v172 + 1) = 0x80000002147933E0;
  v173 = 0xD00000000000001CLL;
  v174 = v66;

  v72 = v69(&v164, &v159, &v172);
  if ((v72 & 1) == 0)
  {

    sub_214031C4C();
    swift_allocError();
    *v83 = 0xD00000000000001FLL;
    v83[1] = 0x80000002147933E0;
    v84 = v152;
    v83[2] = 0xD00000000000001CLL;
    v83[3] = v84;
    swift_willThrow();
    sub_213FB2DF4(v151, &unk_27C9131A0, &unk_2146E9D10);
    (*(v156 + 8))(v155, v153);
    v85 = v157[0];
    v86 = v146;

    *v86 = v69;
    *(v86 + 8) = v68;
    *(v86 + 16) = v148;
    *(v86 + 24) = v85;
    *(v86 + 25) = v176;
    goto LABEL_11;
  }

  v76 = v152;

  v77 = v146;

  *v77 = v69;
  *(v77 + 8) = v68;
  *(v77 + 16) = v71;
  *(v77 + 24) = 0;
  *(v77 + 25) = v176;
  v78 = v137;
  v79 = v139;
  sub_213FB2E54(v65 + v137, v139, &qword_27C903F38, &unk_2146E9D40);
  v80 = *v79;
  LOBYTE(v164) = v79[*(v138 + 32)];
  *&v172 = 0xD00000000000001ELL;
  *(&v172 + 1) = 0x8000000214793400;
  v173 = 0xD00000000000001CLL;
  v174 = v76;
  v81 = v151;
  v82 = v80(v151, &v164, &v172);
  if ((v82 & 1) == 0)
  {

    sub_214031C4C();
    swift_allocError();
    *v98 = 0xD00000000000001ELL;
    v98[1] = 0x8000000214793400;
    v99 = v152;
    v98[2] = 0xD00000000000001CLL;
    v98[3] = v99;
    swift_willThrow();
    sub_213FB2DF4(v81, &unk_27C9131A0, &unk_2146E9D10);
    (*(v156 + 8))(v155, v153);
    sub_21402EDB8(v139, v65 + v78, &qword_27C903F38, &unk_2146E9D40);
    v63 = v65;
    return sub_21432887C(v63, type metadata accessor for Chatbot.CardMedia);
  }

  v87 = v139;
  v88 = *(v138 + 28);
  sub_213FB2DF4(&v139[v88], &qword_27C903F40, &unk_2146F1C50);
  v176 = 0;
  sub_213FB2E54(v81, v87 + v88, &unk_27C9131A0, &unk_2146E9D10);
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9131A0, &unk_2146E9D10);
  (*(*(v89 - 8) + 56))(v87 + v88, 0, 1, v89);
  sub_21402EDB8(v87, v65 + v78, &qword_27C903F38, &unk_2146E9D40);
  v90 = v145;
  v92 = *v145;
  v91 = *(v145 + 1);
  v94 = *(v145 + 2);
  v93 = *(v145 + 3);
  v95 = v145[32];
  *&v164 = v136;
  *(&v164 + 1) = v150;
  LODWORD(v148) = v95;
  LOBYTE(v157[0]) = v95;
  *&v172 = 0xD000000000000026;
  *(&v172 + 1) = 0x8000000214793420;
  v173 = 0xD00000000000001CLL;
  v174 = v152;

  v146 = v93;
  sub_213FDC9D0(v94, v93);
  v96 = v176;
  v147 = v92;
  v97 = (v92)(&v164, v157, &v172);
  v176 = v96;
  if (v96)
  {
    v144 = v94;

LABEL_23:

    sub_213FB2DF4(v151, &unk_27C9131A0, &unk_2146E9D10);
    (*(v156 + 8))(v155, v153);
    v113 = *(v90 + 2);
    v114 = *(v90 + 3);

    sub_213FDC6D0(v113, v114);
    *v90 = v147;
    *(v90 + 1) = v91;
    v115 = v146;
    *(v90 + 2) = v144;
    *(v90 + 3) = v115;
    v90[32] = v148;
    return sub_21432887C(v65, type metadata accessor for Chatbot.CardMedia);
  }

  if ((v97 & 1) == 0)
  {
    v144 = v94;
    sub_214031C4C();
    v110 = swift_allocError();
    *v111 = 0xD000000000000026;
    v111[1] = 0x8000000214793420;
    v112 = v152;
    v111[2] = 0xD00000000000001CLL;
    v111[3] = v112;
    v176 = v110;
    swift_willThrow();

    goto LABEL_23;
  }

  sub_213FDC6D0(v94, v146);
  v100 = v152;

  v101 = *(v90 + 2);
  v102 = *(v90 + 3);

  sub_213FDC6D0(v101, v102);
  *v90 = v147;
  *(v90 + 1) = v91;
  v103 = v150;
  *(v90 + 2) = v136;
  *(v90 + 3) = v103;
  v90[32] = v148;
  v104 = v144;
  v106 = *v144;
  v105 = *(v144 + 8);
  v148 = *(v144 + 16);
  LODWORD(v150) = *(v144 + 24);
  v107 = *(v144 + 26);
  LOBYTE(v157[0]) = *(v144 + 25);
  *&v164 = v135;
  BYTE8(v164) = a10 & 1;
  LOBYTE(v159) = v107;
  *&v172 = 0xD000000000000023;
  *(&v172 + 1) = 0x8000000214793450;
  v173 = 0xD00000000000001CLL;
  v174 = v100;

  v108 = v176;
  v109 = v106(&v164, &v159, &v172);
  if (v108)
  {

    sub_213FB2DF4(v151, &unk_27C9131A0, &unk_2146E9D10);
    (*(v156 + 8))(v155, v153);

LABEL_27:
    v124 = v157[0];

    *v104 = v106;
    *(v104 + 8) = v105;
    *(v104 + 16) = v148;
    *(v104 + 24) = v150;
    *(v104 + 25) = v124;
    *(v104 + 26) = v107;
    return sub_21432887C(v154, type metadata accessor for Chatbot.CardMedia);
  }

  if ((v109 & 1) == 0)
  {

    sub_214031C4C();
    swift_allocError();
    *v122 = 0xD000000000000023;
    v122[1] = 0x8000000214793450;
    v123 = v152;
    v122[2] = 0xD00000000000001CLL;
    v122[3] = v123;
    swift_willThrow();
    sub_213FB2DF4(v151, &unk_27C9131A0, &unk_2146E9D10);
    (*(v156 + 8))(v155, v153);
    goto LABEL_27;
  }

  *v104 = v106;
  *(v104 + 8) = v105;
  *(v104 + 16) = v135;
  *(v104 + 24) = a10 & 1;
  *(v104 + 25) = 0;
  *(v104 + 26) = v107;
  v117 = *v143;
  v116 = *(v143 + 1);
  v118 = *(v143 + 2);
  v119 = *(v143 + 3);
  v120 = v143[32];
  v150 = a12;
  *&v164 = a12;
  *(&v164 + 1) = v149;
  LODWORD(v176) = v120;
  LOBYTE(v157[0]) = v120;
  *&v172 = 0xD000000000000024;
  *(&v172 + 1) = 0x8000000214793480;
  v173 = 0xD00000000000001CLL;
  v174 = v152;

  sub_213FDC9D0(v118, v119);
  v121 = v117(&v164, v157, &v172);
  if ((v121 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v129 = 0xD000000000000024;
    v129[1] = 0x8000000214793480;
    v130 = v152;
    v129[2] = 0xD00000000000001CLL;
    v129[3] = v130;
    swift_willThrow();

    sub_213FB2DF4(v151, &unk_27C9131A0, &unk_2146E9D10);
    (*(v156 + 8))(v155, v153);
    v131 = v143;
    v132 = *(v143 + 2);
    v133 = *(v143 + 3);

    sub_213FDC6D0(v132, v133);
    *v131 = v117;
    *(v131 + 1) = v116;
    *(v131 + 2) = v118;
    *(v131 + 3) = v119;
    v131[32] = v176;
    v63 = v154;
    return sub_21432887C(v63, type metadata accessor for Chatbot.CardMedia);
  }

  sub_213FDC6D0(v118, v119);

  sub_213FB2DF4(v151, &unk_27C9131A0, &unk_2146E9D10);
  (*(v156 + 8))(v155, v153);
  v125 = v143;
  v126 = *(v143 + 2);
  v127 = *(v143 + 3);

  result = sub_213FDC6D0(v126, v127);
  *v125 = v117;
  *(v125 + 1) = v116;
  v128 = v149;
  *(v125 + 2) = v150;
  *(v125 + 3) = v128;
  v125[32] = v176;
  return result;
}

uint64_t sub_21429A634()
{
  v1 = *v0;
  if (v1 > 3)
  {
    v5 = 0x746867696568;
    if (v1 != 6)
    {
      v5 = 0xD000000000000012;
    }

    v6 = 0xD000000000000011;
    if (v1 == 4)
    {
      v6 = 0xD000000000000014;
    }

    if (*v0 <= 5u)
    {
      return v6;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v2 = 0x4C5255616964656DLL;
    v3 = 0x6C6946616964656DLL;
    if (v1 != 2)
    {
      v3 = 0x69616E626D756874;
    }

    if (*v0)
    {
      v2 = 0xD000000000000010;
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
}

uint64_t sub_21429A74C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_214385164(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_21429A774(uint64_t a1)
{
  v2 = sub_21431BA60();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21429A7B0(uint64_t a1)
{
  v2 = sub_21431BA60();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21429A7EC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v141 = a2;
  v143 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F38, &unk_2146E9D40);
  MEMORY[0x28223BE20](v143);
  v144 = &v121 - v3;
  v145 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9131D0, &qword_2146EAA70);
  MEMORY[0x28223BE20](v145);
  v146 = &v121 - v4;
  v147 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9131A0, &unk_2146E9D10);
  v142 = *(v147 - 8);
  MEMORY[0x28223BE20](v147);
  v148 = &v121 - v5;
  v151 = sub_2146D8958();
  v149 = *(v151 - 8);
  MEMORY[0x28223BE20](v151);
  v152 = &v121 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90C1E8, &qword_2146F6B60);
  v150 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v121 - v8;
  v10 = type metadata accessor for Chatbot.CardMedia(0);
  MEMORY[0x28223BE20](v10);
  v12 = &v121 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21431BA60();
  v13 = v172;
  sub_2146DAA08();
  if (v13)
  {
    v14 = a1;
    return __swift_destroy_boxed_opaque_existential_1(v14);
  }

  v15 = v10;
  v172 = a1;
  v140 = v12;
  LOBYTE(v168) = 0;
  sub_214328930(&qword_280B2FDD8, MEMORY[0x277CC9260], MEMORY[0x277CC9280]);
  sub_2146DA1C8();
  LOBYTE(v168) = 1;
  *&v139 = sub_2146DA168();
  *(&v139 + 1) = v17;
  LOBYTE(v168) = 2;
  v138 = sub_2146DA1A8();
  LOBYTE(v168) = 3;
  sub_2142E27A8();
  sub_2146DA1C8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
  LOBYTE(v160) = 4;
  *&v137 = sub_2142E12FC();
  sub_2146DA1C8();
  v136 = v168;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904798, qword_21473CFD0);
  LOBYTE(v160) = 5;
  sub_2142E11FC();
  sub_2146DA1C8();
  v135 = v168;
  v134 = BYTE8(v168);
  LOBYTE(v160) = 6;
  sub_21431BAB4();
  sub_2146DA1C8();
  LODWORD(v133) = v168;
  LOBYTE(v160) = 7;
  sub_2146DA1C8();
  v130 = v9;
  v131 = v7;
  v132 = *(&v168 + 1);
  v121 = v168;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  v137 = xmmword_2146E9BF0;
  *(inited + 16) = xmmword_2146E9BF0;
  v19 = sub_214069764(&unk_282654778);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904110, qword_214734DE0);
  v20 = swift_allocObject();
  v21 = swift_allocObject();
  *(v21 + 16) = v19;
  *(v20 + 16) = sub_21438F524;
  *(v20 + 24) = v21;
  *(inited + 32) = v20;
  v22 = v140;
  sub_214042F80(inited, v140);
  v23 = swift_initStackObject();
  *(v23 + 16) = v137;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v24 = swift_allocObject();
  *(v24 + 16) = sub_214064194;
  *(v24 + 24) = 0;
  *(v23 + 32) = v24;
  sub_214042B80(v23, &v168);
  v25 = v169;
  v129 = v170;
  LODWORD(v128) = v171;
  v26 = swift_initStackObject();
  *(v26 + 16) = v137;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F28, &unk_2146E9D30);
  v27 = swift_allocObject();
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_2146ED240;
  *(v27 + 16) = sub_21438F468;
  *(v27 + 24) = v28;
  *(v26 + 32) = v27;
  sub_21404328C(v26, &v164);
  v29 = v165;
  LODWORD(v137) = v166;
  LODWORD(v127) = v167;
  v30 = v15;
  v122 = v15[7];
  sub_2145C4DD8(&v22[v122]);
  sub_2145C4F2C(&v160);
  v125 = v162;
  v126 = v161;
  v124 = v163;
  sub_2145C4F60(&v155);
  v31 = v156;
  LOBYTE(v15) = v157;
  LOBYTE(v19) = v158;
  v123 = v159;
  sub_2145C50A4(v153);
  v32 = v154;
  v33 = &v22[v30[5]];
  *v33 = v168;
  v34 = v129;
  *(v33 + 2) = v25;
  *(v33 + 3) = v34;
  v129 = v33;
  v33[32] = v128;
  v35 = &v22[v30[6]];
  *v35 = v164;
  *(v35 + 2) = v29;
  v35[24] = v137;
  *&v137 = v35;
  v35[25] = v127;
  v36 = &v22[v30[8]];
  *v36 = v160;
  v37 = v125;
  *(v36 + 2) = v126;
  *(v36 + 3) = v37;
  v128 = v36;
  LOBYTE(v37) = v123;
  v36[32] = v124;
  v38 = &v22[v30[9]];
  *v38 = v155;
  *(v38 + 2) = v31;
  v38[24] = v15;
  v38[25] = v19;
  v127 = v38;
  v38[26] = v37;
  v22[v30[10]] = v133;
  v39 = &v22[v30[11]];
  v40 = v153[1];
  *v39 = v153[0];
  *(v39 + 1) = v40;
  v126 = v39;
  v39[32] = v32;
  v41 = v146;
  sub_213FB2E54(v22, v146, &unk_27C9131D0, &qword_2146EAA70);
  v42 = *v41;
  LOBYTE(v160) = v41[*(v145 + 32)];
  *&v168 = 0xD00000000000001ALL;
  *(&v168 + 1) = 0x8000000214793390;
  v169 = 0xD00000000000001CLL;
  v170 = 0x800000021478A360;
  v43 = v42(v152, &v160, &v168);
  v133 = 0x800000021478A360;
  if ((v43 & 1) == 0)
  {

    sub_214031C4C();
    swift_allocError();
    *v59 = 0xD00000000000001ALL;
    v59[1] = 0x8000000214793390;
    v59[2] = 0xD00000000000001CLL;
    v59[3] = v133;
    swift_willThrow();
    sub_213FB2DF4(v148, &unk_27C9131A0, &unk_2146E9D10);
    (*(v149 + 8))(v152, v151);
    (*(v150 + 8))(v130, v131);
    v60 = v140;
    v61 = &unk_27C9131D0;
    v62 = &qword_2146EAA70;
    v63 = v146;
    v64 = v140;
    goto LABEL_9;
  }

  v44 = v133;

  v45 = v146;
  v46 = *(v145 + 28);
  sub_213FB2DF4(&v146[v46], &unk_27C9131A0, &unk_2146E9D10);
  v47 = v149;
  v48 = v151;
  (*(v149 + 16))(v45 + v46, v152, v151);
  (*(v47 + 56))(v45 + v46, 0, 1, v48);
  sub_21402EDB8(v45, v140, &unk_27C9131D0, &qword_2146EAA70);
  v50 = *v129;
  v49 = *(v129 + 8);
  v51 = *(v129 + 24);
  v145 = *(v129 + 16);
  v52 = *(v129 + 32);
  v160 = v139;
  LODWORD(v146) = v52;
  LOBYTE(v153[0]) = v52;
  *&v168 = 0xD000000000000022;
  *(&v168 + 1) = 0x80000002147933B0;
  v169 = 0xD00000000000001CLL;
  v170 = v44;

  if ((v50(&v160, v153, &v168) & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v65 = 0xD000000000000022;
    v65[1] = 0x80000002147933B0;
    v66 = v133;
    v65[2] = 0xD00000000000001CLL;
    v65[3] = v66;
    swift_willThrow();

    sub_213FB2DF4(v148, &unk_27C9131A0, &unk_2146E9D10);
    (*(v149 + 8))(v152, v151);
    (*(v150 + 8))(v130, v131);
    v67 = v129;

    *v67 = v50;
    *(v67 + 8) = v49;
    *(v67 + 16) = v145;
    *(v67 + 24) = v51;
    *(v67 + 32) = v146;
LABEL_12:
    v60 = v140;
    goto LABEL_10;
  }

  v53 = v133;

  v54 = v129;

  *v54 = v50;
  *(v54 + 8) = v49;
  v55 = *(&v139 + 1);
  *(v54 + 16) = v139;
  *(v54 + 24) = v55;
  *(v54 + 32) = v146;
  v57 = *v137;
  v56 = *(v137 + 8);
  v146 = *(v137 + 16);
  v58 = *(v137 + 25);
  LOBYTE(v153[0]) = *(v137 + 24);
  *&v160 = v138;
  LOBYTE(v155) = v58;
  *&v168 = 0xD00000000000001FLL;
  *(&v168 + 1) = 0x80000002147933E0;
  v169 = 0xD00000000000001CLL;
  v170 = v53;

  if ((v57(&v160, &v155, &v168) & 1) == 0)
  {

    sub_214031C4C();
    swift_allocError();
    *v72 = 0xD00000000000001FLL;
    v72[1] = 0x80000002147933E0;
    v73 = v133;
    v72[2] = 0xD00000000000001CLL;
    v72[3] = v73;
    swift_willThrow();
    sub_213FB2DF4(v148, &unk_27C9131A0, &unk_2146E9D10);
    (*(v149 + 8))(v152, v151);
    (*(v150 + 8))(v130, v131);
    v74 = v153[0];
    v75 = v137;

    *v75 = v57;
    *(v75 + 8) = v56;
    *(v75 + 16) = v146;
    *(v75 + 24) = v74;
    *(v75 + 25) = v58;
    goto LABEL_12;
  }

  v68 = v133;

  v69 = v137;

  *v69 = v57;
  *(v69 + 8) = v56;
  *(v69 + 16) = v138;
  *(v69 + 24) = 0;
  *(v69 + 25) = v58;
  v70 = v144;
  sub_213FB2E54(&v140[v122], v144, &qword_27C903F38, &unk_2146E9D40);
  v71 = *v70;
  LOBYTE(v160) = v70[*(v143 + 32)];
  *&v168 = 0xD00000000000001ELL;
  *(&v168 + 1) = 0x8000000214793400;
  v169 = 0xD00000000000001CLL;
  v170 = v68;
  if (v71(v148, &v160, &v168))
  {
    v76 = v133;

    v77 = v144;
    v78 = *(v143 + 28);
    sub_213FB2DF4(&v144[v78], &qword_27C903F40, &unk_2146F1C50);
    sub_213FB2E54(v148, v77 + v78, &unk_27C9131A0, &unk_2146E9D10);
    (*(v142 + 56))(v77 + v78, 0, 1, v147);
    sub_21402EDB8(v77, &v140[v122], &qword_27C903F38, &unk_2146E9D40);
    v80 = *v128;
    v79 = *(v128 + 1);
    v81 = *(v128 + 2);
    v82 = *(v128 + 3);
    v83 = v128[32];
    v160 = v136;
    LOBYTE(v153[0]) = v83;
    *&v168 = 0xD000000000000026;
    *(&v168 + 1) = 0x8000000214793420;
    v169 = 0xD00000000000001CLL;
    v170 = v76;

    v146 = v81;
    sub_213FDC9D0(v81, v82);
    v147 = v80;
    if (v80(&v160, v153, &v168))
    {
      sub_213FDC6D0(v146, v82);
      v86 = v133;

      v87 = v128;
      v88 = *(v128 + 2);
      v89 = *(v128 + 3);

      sub_213FDC6D0(v88, v89);
      *v87 = v147;
      *(v87 + 1) = v79;
      v90 = *(&v136 + 1);
      *(v87 + 2) = v136;
      *(v87 + 3) = v90;
      v87[32] = v83;
      v92 = *v127;
      v91 = *(v127 + 1);
      v93 = *(v127 + 2);
      LODWORD(v147) = v127[24];
      v94 = v127[26];
      LOBYTE(v153[0]) = v127[25];
      *&v160 = v135;
      BYTE8(v160) = v134;
      LOBYTE(v155) = v94;
      *&v168 = 0xD000000000000023;
      *(&v168 + 1) = 0x8000000214793450;
      v169 = 0xD00000000000001CLL;
      v170 = v86;

      if (v92(&v160, &v155, &v168))
      {
        v101 = v133;

        v102 = v127;

        *v102 = v92;
        *(v102 + 1) = v91;
        *(v102 + 2) = v135;
        v102[24] = v134;
        v102[25] = 0;
        v102[26] = v94;
        v104 = *v126;
        v103 = *(v126 + 1);
        v105 = *(v126 + 2);
        v106 = *(v126 + 3);
        v107 = v126[32];
        *&v160 = v121;
        *(&v160 + 1) = v132;
        LODWORD(v147) = v107;
        LOBYTE(v153[0]) = v107;
        *&v168 = 0xD000000000000024;
        *(&v168 + 1) = 0x8000000214793480;
        v169 = 0xD00000000000001CLL;
        v170 = v101;

        v146 = v105;
        sub_213FDC9D0(v105, v106);
        if (v104(&v160, v153, &v168))
        {
          sub_213FDC6D0(v146, v106);

          sub_213FB2DF4(v148, &unk_27C9131A0, &unk_2146E9D10);
          (*(v149 + 8))(v152, v151);
          (*(v150 + 8))(v130, v131);
          v112 = v126;
          v113 = *(v126 + 2);
          v114 = *(v126 + 3);

          sub_213FDC6D0(v113, v114);
          *v112 = v104;
          *(v112 + 1) = v103;
          v115 = v132;
          *(v112 + 2) = v121;
          *(v112 + 3) = v115;
          v112[32] = v147;
          sub_214328704(v140, v141, type metadata accessor for Chatbot.CardMedia);
          v14 = v172;
          return __swift_destroy_boxed_opaque_existential_1(v14);
        }

        sub_214031C4C();
        swift_allocError();
        *v116 = 0xD000000000000024;
        v116[1] = 0x8000000214793480;
        v117 = v133;
        v116[2] = 0xD00000000000001CLL;
        v116[3] = v117;
        swift_willThrow();

        sub_213FB2DF4(v148, &unk_27C9131A0, &unk_2146E9D10);
        (*(v149 + 8))(v152, v151);
        (*(v150 + 8))(v130, v131);
        v118 = v126;
        v119 = *(v126 + 2);
        v120 = *(v126 + 3);

        sub_213FDC6D0(v119, v120);
        *v118 = v104;
        *(v118 + 1) = v103;
        *(v118 + 2) = v146;
        *(v118 + 3) = v106;
        v118[32] = v147;
      }

      else
      {

        sub_214031C4C();
        swift_allocError();
        *v108 = 0xD000000000000023;
        v108[1] = 0x8000000214793450;
        v109 = v133;
        v108[2] = 0xD00000000000001CLL;
        v108[3] = v109;
        swift_willThrow();
        sub_213FB2DF4(v148, &unk_27C9131A0, &unk_2146E9D10);
        (*(v149 + 8))(v152, v151);
        (*(v150 + 8))(v130, v131);
        v110 = v153[0];
        v111 = v127;

        *v111 = v92;
        *(v111 + 1) = v91;
        *(v111 + 2) = v93;
        v111[24] = v147;
        v111[25] = v110;
        v111[26] = v94;
      }
    }

    else
    {
      sub_214031C4C();
      swift_allocError();
      *v95 = 0xD000000000000026;
      v95[1] = 0x8000000214793420;
      v96 = v133;
      v95[2] = 0xD00000000000001CLL;
      v95[3] = v96;
      swift_willThrow();

      sub_213FB2DF4(v148, &unk_27C9131A0, &unk_2146E9D10);
      (*(v149 + 8))(v152, v151);
      (*(v150 + 8))(v130, v131);
      v97 = v128;
      v98 = *(v128 + 2);
      v99 = *(v128 + 3);

      sub_213FDC6D0(v98, v99);
      v100 = v146;
      *v97 = v147;
      *(v97 + 1) = v79;
      *(v97 + 2) = v100;
      *(v97 + 3) = v82;
      v97[32] = v83;
    }

    goto LABEL_12;
  }

  sub_214031C4C();
  swift_allocError();
  *v84 = 0xD00000000000001ELL;
  v84[1] = 0x8000000214793400;
  v85 = v133;
  v84[2] = 0xD00000000000001CLL;
  v84[3] = v85;
  swift_willThrow();
  sub_213FB2DF4(v148, &unk_27C9131A0, &unk_2146E9D10);
  (*(v149 + 8))(v152, v151);
  (*(v150 + 8))(v130, v131);
  v61 = &qword_27C903F38;
  v62 = &unk_2146E9D40;
  v60 = v140;
  v64 = &v140[v122];
  v63 = v144;
LABEL_9:
  sub_21402EDB8(v63, v64, v61, v62);
LABEL_10:
  __swift_destroy_boxed_opaque_existential_1(v172);
  return sub_21432887C(v60, type metadata accessor for Chatbot.CardMedia);
}

uint64_t sub_21429BE9C(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F40, &unk_2146F1C50);
  MEMORY[0x28223BE20](v2 - 8);
  v38 = &v36 - v3;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9131A0, &unk_2146E9D10);
  v37 = *(v39 - 8);
  v4 = MEMORY[0x28223BE20](v39);
  v40 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v7 = &v36 - v6;
  v8 = sub_2146D8958();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90C200, &qword_2146F6B68);
  v43 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v14 = &v36 - v13;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21431BA60();
  v15 = v41;
  sub_2146DAA28();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9131D0, &qword_2146EAA70);
  sub_213FB2E54(v15 + *(v16 + 28), v7, &unk_27C9131A0, &unk_2146E9D10);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    v33 = &unk_27C9131A0;
    v34 = &unk_2146E9D10;
    v35 = v7;
    goto LABEL_12;
  }

  (*(v9 + 32))(v11, v7, v8);
  LOBYTE(v44) = 0;
  sub_214328930(&qword_280B2FDE0, MEMORY[0x277CC9260], MEMORY[0x277CC9268]);
  v17 = v42;
  sub_2146DA388();
  v18 = v12;
  if (v17)
  {
    (*(v9 + 8))(v11, v8);
    return (*(v43 + 8))(v14, v12);
  }

  else
  {
    (*(v9 + 8))(v11, v8);
    v20 = type metadata accessor for Chatbot.CardMedia(0);
    if (!*(v15 + *(v20 + 20) + 24))
    {
      goto LABEL_13;
    }

    v21 = v20;
    LOBYTE(v44) = 1;

    sub_2146DA328();

    if (*(v15 + v21[6] + 24))
    {
      goto LABEL_13;
    }

    LOBYTE(v44) = 2;
    sub_2146DA368();
    v22 = v14;
    v23 = v15;
    v24 = v15 + v21[7];
    v25 = v24 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F38, &unk_2146E9D40) + 28);
    v15 = v38;
    sub_213FB2E54(v25, v38, &qword_27C903F40, &unk_2146F1C50);
    if ((*(v37 + 48))(v15, 1, v39) == 1)
    {
      goto LABEL_14;
    }

    v26 = v15;
    v15 = v40;
    sub_21408AC04(v26, v40, &unk_27C9131A0, &unk_2146E9D10);
    LOBYTE(v44) = 3;
    sub_2142E2910();
    sub_2146DA388();
    sub_213FB2DF4(v15, &unk_27C9131A0, &unk_2146E9D10);
    v27 = v23 + v21[8];
    v28 = *(v27 + 24);
    if (v28 == 1 || (v15 = v23, v44 = *(v27 + 16), v45 = v28, v46 = 4, __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050), sub_214045AC0(), sub_2146DA388(), v29 = v23 + v21[9], (*(v29 + 25) & 1) != 0) || (v30 = *(v29 + 24), v44 = *(v29 + 16), LOBYTE(v45) = v30 & 1, v46 = 5, v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904798, qword_21473CFD0), sub_2142E1C30(), sub_2146DA388(), LOBYTE(v44) = *(v23 + v21[10]), v46 = 6, sub_21431BB08(), sub_2146DA388(), v31 = v23 + v21[11], v32 = *(v31 + 24), v32 == 1))
    {
LABEL_13:
      while (1)
      {
        sub_2146DA018();
        __break(1u);
LABEL_14:
        v33 = &qword_27C903F40;
        v34 = &unk_2146F1C50;
        v35 = v15;
LABEL_12:
        sub_213FB2DF4(v35, v33, v34);
      }
    }

    v44 = *(v31 + 16);
    v45 = v32;
    v46 = 7;
    sub_2146DA388();
    return (*(v43 + 8))(v22, v18);
  }
}

uint64_t sub_21429C614@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v7 = swift_allocObject();
  LOBYTE(v17) = 0;
  v8 = swift_allocObject();
  *(v8 + 16) = 200;
  *(v8 + 24) = v17;
  *(v7 + 16) = sub_21438F518;
  *(v7 + 24) = v8;
  *(inited + 32) = v7;
  sub_214042B80(inited, &v17);
  v10 = v17;
  v9 = v18;
  v11 = v21;
  v16[0] = a1;
  v16[1] = a2;
  v22 = v21;
  v17 = 0xD00000000000001DLL;
  v18 = 0x80000002147934B0;
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
    *v14 = 0xD00000000000001DLL;
    v14[1] = 0x80000002147934B0;
    v14[2] = 0xD00000000000001CLL;
    v14[3] = 0x800000021478A360;
    swift_willThrow();
  }
}

uint64_t sub_21429C85C(uint64_t a1)
{
  v2 = sub_21431BB5C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21429C898(uint64_t a1)
{
  v2 = sub_21431BB5C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21429C8D4@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90C210, &qword_2146F6B70);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v22 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21431BB5C();
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
  LOBYTE(v29) = 0;
  v14 = swift_allocObject();
  *(v14 + 16) = 200;
  *(v14 + 24) = v29;
  *(v13 + 16) = sub_21438F518;
  *(v13 + 24) = v14;
  *(inited + 32) = v13;
  sub_214042B80(inited, &v29);
  v16 = v29;
  v15 = v30;
  v28[0] = v26;
  v28[1] = v27;
  v34 = v33;
  v35 = v33;
  v29 = 0xD00000000000001DLL;
  v30 = 0x80000002147934B0;
  v24 = 0x80000002147934B0;
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
  *v21 = 0xD00000000000001DLL;
  v21[1] = v18;
  v21[2] = 0xD00000000000001CLL;
  v21[3] = 0x800000021478A360;
  swift_willThrow();

  (*(v6 + 8))(v8, v5);

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_21429CCD0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v7 = swift_allocObject();
  LOBYTE(v17) = 0;
  v8 = swift_allocObject();
  *(v8 + 16) = 2000;
  *(v8 + 24) = v17;
  *(v7 + 16) = sub_21438F518;
  *(v7 + 24) = v8;
  *(inited + 32) = v7;
  sub_214042B80(inited, &v17);
  v10 = v17;
  v9 = v18;
  v11 = v21;
  v16[0] = a1;
  v16[1] = a2;
  v22 = v21;
  v17 = 0xD000000000000023;
  v18 = 0x80000002147934D0;
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
    *v14 = 0xD000000000000023;
    v14[1] = 0x80000002147934D0;
    v14[2] = 0xD00000000000001CLL;
    v14[3] = 0x800000021478A360;
    swift_willThrow();
  }
}

uint64_t sub_21429CEF8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6156676E69727473 && a2 == 0xEB0000000065756CLL)
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

uint64_t sub_21429CF84(uint64_t a1)
{
  v2 = sub_21431BBB0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21429CFC0(uint64_t a1)
{
  v2 = sub_21431BBB0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21429CFFC@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90C228, &qword_2146F6B80);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v22 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21431BBB0();
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
  LOBYTE(v29) = 0;
  v14 = swift_allocObject();
  *(v14 + 16) = 2000;
  *(v14 + 24) = v29;
  *(v13 + 16) = sub_21438F518;
  *(v13 + 24) = v14;
  *(inited + 32) = v13;
  sub_214042B80(inited, &v29);
  v16 = v29;
  v15 = v30;
  v28[0] = v26;
  v28[1] = v27;
  v34 = v33;
  v35 = v33;
  v29 = 0xD000000000000023;
  v30 = 0x80000002147934D0;
  v24 = 0x80000002147934D0;
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
  *v21 = 0xD000000000000023;
  v21[1] = v18;
  v21[2] = 0xD00000000000001CLL;
  v21[3] = 0x800000021478A360;
  swift_willThrow();

  (*(v6 + 8))(v8, v5);

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_21429D3C8(void *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void), uint64_t a5)
{
  v14 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v13 - v9;
  v11 = *(v5 + 24);
  v13 = *(v5 + 16);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v14();
  sub_2146DAA28();
  if (v11)
  {

    sub_2146DA328();
    (*(v8 + 8))(v10, v7);
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

uint64_t sub_21429D5EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t (*a4)(void)@<X3>, uint64_t (*a5)(void)@<X4>, uint64_t a6@<X8>)
{
  sub_214328704(a1, a6, a3);
  v10 = a4(0);
  return sub_214328704(a2, a6 + *(v10 + 20), a5);
}

uint64_t sub_21429D658(uint64_t a1)
{
  v2 = sub_21431BC04();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21429D694(uint64_t a1)
{
  v2 = sub_21431BC04();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21429D6D0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v17 = a2;
  v3 = type metadata accessor for Chatbot.GeneralPurposeCardMessage.Content(0);
  MEMORY[0x28223BE20](v3);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Chatbot.GeneralPurposeCardMessage.Layout(0);
  MEMORY[0x28223BE20](v6);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90C240, &qword_2146F6B90);
  v18 = *(v9 - 8);
  v19 = v9;
  MEMORY[0x28223BE20](v9);
  v11 = &v17 - v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21431BC04();
  v12 = v20;
  sub_2146DAA08();
  if (!v12)
  {
    v13 = v18;
    v22 = 0;
    sub_214328930(&qword_27C90C250, type metadata accessor for Chatbot.GeneralPurposeCardMessage.Layout, byte_214703C30);
    sub_2146DA1C8();
    v21 = 1;
    sub_214328930(&qword_27C90C258, type metadata accessor for Chatbot.GeneralPurposeCardMessage.Content, aI_41);
    sub_2146DA1C8();
    (*(v13 + 8))(v11, v19);
    v15 = v17;
    sub_214328704(v8, v17, type metadata accessor for Chatbot.GeneralPurposeCardMessage.Layout);
    v16 = type metadata accessor for Chatbot.GeneralPurposeCardMessage(0);
    sub_214328704(v5, v15 + *(v16 + 20), type metadata accessor for Chatbot.GeneralPurposeCardMessage.Content);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_21429D9F8(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90C260, &qword_2146F6B98);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21431BC04();
  sub_2146DAA28();
  v8[15] = 0;
  type metadata accessor for Chatbot.GeneralPurposeCardMessage.Layout(0);
  sub_214328930(&qword_27C90C268, type metadata accessor for Chatbot.GeneralPurposeCardMessage.Layout, byte_214703C58);
  sub_2146DA388();
  if (!v1)
  {
    type metadata accessor for Chatbot.GeneralPurposeCardMessage(0);
    v8[14] = 1;
    type metadata accessor for Chatbot.GeneralPurposeCardMessage.Content(0);
    sub_214328930(&qword_27C90C270, type metadata accessor for Chatbot.GeneralPurposeCardMessage.Content, byte_2147024E8);
    sub_2146DA388();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_21429DC28@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F38, &unk_2146E9D40);
  MEMORY[0x28223BE20](v8);
  v10 = (&v19 - v9);
  v11 = *(type metadata accessor for Chatbot.GeneralPurposeCardMessage.Layout.VerticalLayout(0) + 24);
  sub_2145C5B2C(&a4[v11]);
  *a4 = a1;
  *(a4 + 1) = a2;
  v20 = v11;
  sub_213FB2E54(&a4[v11], v10, &qword_27C903F38, &unk_2146E9D40);
  v12 = *v10;
  v22 = *(v10 + *(v8 + 32));
  v21[0] = 0xD000000000000040;
  v21[1] = 0x8000000214793500;
  v21[2] = 0xD00000000000001CLL;
  v21[3] = 0x800000021478A360;
  v13 = v19;
  v14 = v12(a3, &v22, v21);
  if (v13)
  {
    sub_213FB2DF4(a3, &unk_27C9131A0, &unk_2146E9D10);
  }

  else
  {
    if (v14)
    {

      v15 = *(v8 + 28);
      sub_213FB2DF4(v10 + v15, &qword_27C903F40, &unk_2146F1C50);
      sub_21408AC04(a3, v10 + v15, &unk_27C9131A0, &unk_2146E9D10);
      v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9131A0, &unk_2146E9D10);
      (*(*(v16 - 8) + 56))(v10 + v15, 0, 1, v16);
      return sub_21402EDB8(v10, &a4[v20], &qword_27C903F38, &unk_2146E9D40);
    }

    sub_214031C4C();
    swift_allocError();
    *v18 = 0xD000000000000040;
    v18[1] = 0x8000000214793500;
    v18[2] = 0xD00000000000001CLL;
    v18[3] = 0x800000021478A360;
    swift_willThrow();
    sub_213FB2DF4(a3, &unk_27C9131A0, &unk_2146E9D10);
  }

  sub_21402EDB8(v10, &a4[v20], &qword_27C903F38, &unk_2146E9D40);
  return sub_21432887C(a4, type metadata accessor for Chatbot.GeneralPurposeCardMessage.Layout.VerticalLayout);
}

unint64_t sub_21429DEE4()
{
  v1 = 0xD000000000000014;
  if (*v0 != 1)
  {
    v1 = 0x4C5255656C797473;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6E6F46656C746974;
  }
}

uint64_t sub_21429DF50@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_214385404(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_21429DF78(uint64_t a1)
{
  v2 = sub_21431BC58();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21429DFB4(uint64_t a1)
{
  v2 = sub_21431BC58();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21429DFF0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v34 = a2;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F38, &unk_2146E9D40);
  MEMORY[0x28223BE20](v35);
  v36 = &v30 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9131A0, &unk_2146E9D10);
  v33 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v30 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90C278, &qword_2146F6BA0);
  v37 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v30 - v8;
  v10 = type metadata accessor for Chatbot.GeneralPurposeCardMessage.Layout.VerticalLayout(0);
  MEMORY[0x28223BE20](v10);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = a1[3];
  v39 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v13);
  sub_21431BC58();
  v14 = v38;
  sub_2146DAA08();
  if (v14)
  {
    return __swift_destroy_boxed_opaque_existential_1(v39);
  }

  v38 = v6;
  v32 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90C288, &qword_2146F6BA8);
  v41 = 0;
  sub_21431BCAC();
  sub_2146DA1C8();
  v15 = v40[0];
  v41 = 1;
  sub_2146DA1C8();
  v16 = v40[0];
  LOBYTE(v40[0]) = 2;
  sub_2142E27A8();
  sub_2146DA1C8();
  v30 = v9;
  v31 = v7;
  v18 = *(v10 + 24);
  v19 = v15;
  v20 = v32;
  sub_2145C5B2C(v32 + v18);
  *v20 = v19;
  v20[1] = v16;
  v21 = v36;
  sub_213FB2E54(v20 + v18, v36, &qword_27C903F38, &unk_2146E9D40);
  v22 = *v21;
  v23 = v21[*(v35 + 32)];
  v24 = v38;
  v41 = v23;
  v40[0] = 0xD000000000000040;
  v40[1] = 0x8000000214793500;
  v40[2] = 0xD00000000000001CLL;
  v40[3] = 0x800000021478A360;
  v25 = v22(v38, &v41, v40);
  v26 = v37;
  if (v25)
  {

    (*(v26 + 8))(v30, v31);
    v27 = *(v35 + 28);
    v28 = v36;
    sub_213FB2DF4(&v36[v27], &qword_27C903F40, &unk_2146F1C50);
    sub_21408AC04(v24, v28 + v27, &unk_27C9131A0, &unk_2146E9D10);
    (*(v33 + 56))(v28 + v27, 0, 1, v4);
    sub_21402EDB8(v28, v20 + v18, &qword_27C903F38, &unk_2146E9D40);
    sub_214328704(v20, v34, type metadata accessor for Chatbot.GeneralPurposeCardMessage.Layout.VerticalLayout);
    return __swift_destroy_boxed_opaque_existential_1(v39);
  }

  sub_214031C4C();
  swift_allocError();
  *v29 = 0xD000000000000040;
  v29[1] = 0x8000000214793500;
  v29[2] = 0xD00000000000001CLL;
  v29[3] = 0x800000021478A360;
  swift_willThrow();
  sub_213FB2DF4(v24, &unk_27C9131A0, &unk_2146E9D10);
  (*(v26 + 8))(v30, v31);
  sub_21402EDB8(v36, v20 + v18, &qword_27C903F38, &unk_2146E9D40);
  __swift_destroy_boxed_opaque_existential_1(v39);
  return sub_21432887C(v20, type metadata accessor for Chatbot.GeneralPurposeCardMessage.Layout.VerticalLayout);
}

uint64_t sub_21429E5E4(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F40, &unk_2146F1C50);
  MEMORY[0x28223BE20](v4 - 8);
  v21 = &v19 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9131A0, &unk_2146E9D10);
  v20 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v19 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90C2B0, &qword_2146F6BB8);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v19 - v11;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21431BC58();
  sub_2146DAA28();
  v22 = v2;
  v25 = *v2;
  v24 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90C288, &qword_2146F6BA8);
  sub_21431BE08();
  v13 = v23;
  sub_2146DA388();
  if (v13)
  {
    return (*(v10 + 8))(v12, v9);
  }

  v23 = v8;
  v15 = v21;
  v25 = v22[1];
  v24 = 1;
  sub_2146DA388();
  v16 = v22 + *(type metadata accessor for Chatbot.GeneralPurposeCardMessage.Layout.VerticalLayout(0) + 24);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F38, &unk_2146E9D40);
  sub_213FB2E54(&v16[*(v17 + 28)], v15, &qword_27C903F40, &unk_2146F1C50);
  if ((*(v20 + 48))(v15, 1, v6) == 1)
  {
    sub_213FB2DF4(v15, &qword_27C903F40, &unk_2146F1C50);
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v18 = v23;
    sub_21408AC04(v15, v23, &unk_27C9131A0, &unk_2146E9D10);
    LOBYTE(v25) = 2;
    sub_2142E2910();
    sub_2146DA388();
    sub_213FB2DF4(v18, &unk_27C9131A0, &unk_2146E9D10);
    return (*(v10 + 8))(v12, v9);
  }

  return result;
}

uint64_t sub_21429EA18@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F38, &unk_2146E9D40);
  MEMORY[0x28223BE20](v10);
  v12 = (&v21 - v11);
  LOBYTE(a1) = *a1;
  v13 = *(type metadata accessor for Chatbot.GeneralPurposeCardMessage.Layout.HorizontalLayout(0) + 28);
  sub_2145C5D08((a5 + v13));
  *a5 = a1;
  *(a5 + 8) = a2;
  *(a5 + 16) = a3;
  v22 = v13;
  sub_213FB2E54(a5 + v13, v12, &qword_27C903F38, &unk_2146E9D40);
  v14 = *v12;
  v24 = *(v12 + *(v10 + 32));
  v23[0] = 0xD000000000000042;
  v23[1] = 0x8000000214793550;
  v23[2] = 0xD00000000000001CLL;
  v23[3] = 0x800000021478A360;
  v15 = v21;
  v16 = v14(a4, &v24, v23);
  if (v15)
  {
    sub_213FB2DF4(a4, &unk_27C9131A0, &unk_2146E9D10);
  }

  else
  {
    if (v16)
    {

      v17 = *(v10 + 28);
      sub_213FB2DF4(v12 + v17, &qword_27C903F40, &unk_2146F1C50);
      sub_21408AC04(a4, v12 + v17, &unk_27C9131A0, &unk_2146E9D10);
      v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9131A0, &unk_2146E9D10);
      (*(*(v18 - 8) + 56))(v12 + v17, 0, 1, v18);
      return sub_21402EDB8(v12, a5 + v22, &qword_27C903F38, &unk_2146E9D40);
    }

    sub_214031C4C();
    swift_allocError();
    *v20 = 0xD000000000000042;
    v20[1] = 0x8000000214793550;
    v20[2] = 0xD00000000000001CLL;
    v20[3] = 0x800000021478A360;
    swift_willThrow();
    sub_213FB2DF4(a4, &unk_27C9131A0, &unk_2146E9D10);
  }

  sub_21402EDB8(v12, a5 + v22, &qword_27C903F38, &unk_2146E9D40);
  return sub_21432887C(a5, type metadata accessor for Chatbot.GeneralPurposeCardMessage.Layout.HorizontalLayout);
}

unint64_t sub_21429ECE0()
{
  v1 = 0x696C416567616D69;
  v2 = 0xD000000000000014;
  if (*v0 != 2)
  {
    v2 = 0x4C5255656C797473;
  }

  if (*v0)
  {
    v1 = 0x6E6F46656C746974;
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

uint64_t sub_21429ED78@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_21438552C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_21429EDA0(uint64_t a1)
{
  v2 = sub_21431BF64();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21429EDDC(uint64_t a1)
{
  v2 = sub_21431BF64();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21429EE18@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v34 = a2;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F38, &unk_2146E9D40);
  MEMORY[0x28223BE20](v36);
  v35 = (&v28 - v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9131A0, &unk_2146E9D10);
  v33 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v28 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90C2D0, &qword_2146F6BC0);
  v37 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v28 - v8;
  v10 = type metadata accessor for Chatbot.GeneralPurposeCardMessage.Layout.HorizontalLayout(0);
  MEMORY[0x28223BE20](v10);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = a1[3];
  v39 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v13);
  sub_21431BF64();
  v14 = v38;
  sub_2146DAA08();
  if (v14)
  {
    return __swift_destroy_boxed_opaque_existential_1(v39);
  }

  v38 = v4;
  v31 = v12;
  v32 = v6;
  v15 = v37;
  v41 = 0;
  sub_21431BFB8();
  sub_2146DA1C8();
  v16 = LOBYTE(v40[0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90C288, &qword_2146F6BA8);
  v41 = 1;
  sub_21431BCAC();
  sub_2146DA1C8();
  LODWORD(v30) = v16;
  v18 = v40[0];
  v41 = 2;
  sub_2146DA1C8();
  v29 = v40[0];
  LOBYTE(v40[0]) = 3;
  sub_2142E27A8();
  v19 = v32;
  sub_2146DA1C8();
  v28 = v7;
  v20 = *(v10 + 28);
  v21 = v18;
  v22 = v31;
  sub_2145C5D08(&v31[v20]);
  *v22 = v30;
  v23 = v29;
  *(v22 + 8) = v21;
  *(v22 + 16) = v23;
  v30 = v20;
  v24 = v35;
  sub_213FB2E54(v22 + v20, v35, &qword_27C903F38, &unk_2146E9D40);
  v25 = *v24;
  v41 = *(v24 + *(v36 + 32));
  v40[0] = 0xD000000000000042;
  v40[1] = 0x8000000214793550;
  v40[2] = 0xD00000000000001CLL;
  v40[3] = 0x800000021478A360;
  if (v25(v19, &v41, v40))
  {

    (*(v15 + 8))(v9, v28);
    v26 = *(v36 + 28);
    sub_213FB2DF4(v24 + v26, &qword_27C903F40, &unk_2146F1C50);
    sub_21408AC04(v19, v24 + v26, &unk_27C9131A0, &unk_2146E9D10);
    (*(v33 + 56))(v24 + v26, 0, 1, v38);
    sub_21402EDB8(v24, v22 + v30, &qword_27C903F38, &unk_2146E9D40);
    sub_214328704(v22, v34, type metadata accessor for Chatbot.GeneralPurposeCardMessage.Layout.HorizontalLayout);
    return __swift_destroy_boxed_opaque_existential_1(v39);
  }

  sub_214031C4C();
  swift_allocError();
  *v27 = 0xD000000000000042;
  v27[1] = 0x8000000214793550;
  v27[2] = 0xD00000000000001CLL;
  v27[3] = 0x800000021478A360;
  swift_willThrow();
  sub_213FB2DF4(v19, &unk_27C9131A0, &unk_2146E9D10);
  (*(v15 + 8))(v9, v28);
  sub_21402EDB8(v24, v22 + v30, &qword_27C903F38, &unk_2146E9D40);
  __swift_destroy_boxed_opaque_existential_1(v39);
  return sub_21432887C(v22, type metadata accessor for Chatbot.GeneralPurposeCardMessage.Layout.HorizontalLayout);
}

uint64_t sub_21429F45C(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F40, &unk_2146F1C50);
  MEMORY[0x28223BE20](v4 - 8);
  v25 = &v23 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9131A0, &unk_2146E9D10);
  v24 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v23 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90C2E8, &qword_2146F6BC8);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v23 - v11;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21431BF64();
  sub_2146DAA28();
  v26 = v2;
  LOBYTE(v28) = *v2;
  v29 = 0;
  sub_21431C00C();
  v13 = v27;
  sub_2146DA388();
  if (v13)
  {
    return (*(v10 + 8))(v12, v9);
  }

  v27 = v8;
  v14 = v25;
  v28 = *(v26 + 1);
  v29 = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90C288, &qword_2146F6BA8);
  sub_21431BE08();
  sub_2146DA388();
  v28 = *(v26 + 2);
  v29 = 2;
  sub_2146DA388();
  v16 = v9;
  v17 = v10;
  v18 = v16;
  v19 = &v26[*(type metadata accessor for Chatbot.GeneralPurposeCardMessage.Layout.HorizontalLayout(0) + 28)];
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F38, &unk_2146E9D40);
  sub_213FB2E54(&v19[*(v20 + 28)], v14, &qword_27C903F40, &unk_2146F1C50);
  if ((*(v24 + 48))(v14, 1, v6) == 1)
  {
    sub_213FB2DF4(v14, &qword_27C903F40, &unk_2146F1C50);
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v21 = v14;
    v22 = v27;
    sub_21408AC04(v21, v27, &unk_27C9131A0, &unk_2146E9D10);
    LOBYTE(v28) = 3;
    sub_2142E2910();
    sub_2146DA388();
    sub_213FB2DF4(v22, &unk_27C9131A0, &unk_2146E9D10);
    return (*(v17 + 8))(v12, v18);
  }

  return result;
}

uint64_t sub_21429F8F4(uint64_t a1)
{
  v2 = sub_21431C060();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21429F930(uint64_t a1)
{
  v2 = sub_21431C060();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21429F96C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v35 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90C2F8, &qword_2146F6BD0);
  MEMORY[0x28223BE20](v4);
  v6 = &v28 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90C300, &qword_2146F6BD8);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v28 - v9;
  v11 = a1[3];
  v36 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v11);
  sub_21431C060();
  sub_2146DAA08();
  if (!v2)
  {
    v12 = v35;
    v13 = v8;
    LOBYTE(v37) = 0;
    sub_21431C0B4();
    v14 = v7;
    sub_2146DA1C8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90C320, &qword_2146F6BE0);
    v43 = 1;
    sub_21431C168();
    sub_2146DA1C8();
    v15 = v38;
    v33 = v37;
    v34 = v6;
    v17 = v39;
    v16 = v40;
    v42 = v41;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90C338, &qword_2146F6BE8);
    v43 = 2;
    sub_21431C240();
    sub_2146DA1C8();
    v30 = v15;
    v31 = v17;
    v32 = v16;
    v28 = v37;
    v29 = v38;
    v19 = v39;
    v18 = v40;
    LOBYTE(v15) = v41;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90C350, &qword_2146F6BF0);
    v43 = 3;
    sub_21431C318();
    sub_2146DA1C8();
    (*(v13 + 8))(v10, v14);
    v21 = v37;
    sub_21408AC04(v34, v12, &qword_27C90C2F8, &qword_2146F6BD0);
    v22 = type metadata accessor for Chatbot.GeneralPurposeCardMessage.Content(0);
    v23 = v12 + v22[5];
    v25 = v30;
    v24 = v31;
    *v23 = v33;
    *(v23 + 8) = v25;
    *(v23 + 16) = v24;
    *(v23 + 24) = v32;
    *(v23 + 32) = v42;
    v26 = v12 + v22[6];
    v27 = v29;
    *v26 = v28;
    *(v26 + 8) = v27;
    *(v26 + 16) = v19;
    *(v26 + 24) = v18;
    *(v26 + 32) = v15;
    *(v12 + v22[7]) = v21;
  }

  return __swift_destroy_boxed_opaque_existential_1(v36);
}

uint64_t sub_21429FD50(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90C378, &qword_2146F6C00);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v21 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21431C060();
  sub_2146DAA28();
  LOBYTE(v22) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90C2F8, &qword_2146F6BD0);
  sub_21431C450();
  sub_2146DA388();
  if (!v2)
  {
    v9 = type metadata accessor for Chatbot.GeneralPurposeCardMessage.Content(0);
    v10 = v3 + v9[5];
    v11 = *(v10 + 8);
    v12 = *(v10 + 16);
    v13 = *(v10 + 24);
    v14 = *(v10 + 32);
    v22 = *v10;
    v23 = v11;
    v24 = v12;
    v25 = v13;
    v26 = v14;
    HIBYTE(v21) = 1;
    sub_21431C5DC(v22, v11, v12, v13);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90C320, &qword_2146F6BE0);
    sub_21431C504();
    sub_2146DA388();
    sub_21431E10C(v22, v23, v24, v25);
    v15 = v3 + v9[6];
    v16 = *(v15 + 8);
    v17 = *(v15 + 16);
    v18 = *(v15 + 24);
    v19 = *(v15 + 32);
    v22 = *v15;
    v23 = v16;
    v24 = v17;
    v25 = v18;
    v26 = v19;
    HIBYTE(v21) = 2;
    sub_21431C5DC(v22, v16, v17, v18);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90C338, &qword_2146F6BE8);
    sub_21431C620();
    sub_2146DA388();
    sub_21431E10C(v22, v23, v24, v25);
    v22 = *(v3 + v9[7]);
    HIBYTE(v21) = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90C350, &qword_2146F6BF0);
    sub_21431C6F8();
    sub_2146DA388();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_2142A0044@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_214328704(a1, a3, type metadata accessor for Chatbot.GeneralPurposeCardCarouselMessage.Layout);
  result = type metadata accessor for Chatbot.GeneralPurposeCardCarouselMessage(0);
  *(a3 + *(result + 20)) = a2;
  return result;
}

uint64_t sub_2142A00A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x74756F79616CLL && a2 == 0xE600000000000000;
  if (v6 || (sub_2146DA6A8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x746E65746E6F63 && a2 == 0xE700000000000000)
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

uint64_t sub_2142A017C(uint64_t a1)
{
  v2 = sub_21431C830();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2142A01B8(uint64_t a1)
{
  v2 = sub_21431C830();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2142A01F4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v16 = a2;
  v4 = type metadata accessor for Chatbot.GeneralPurposeCardCarouselMessage.Layout(0);
  MEMORY[0x28223BE20](v4);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90C3C8, &qword_2146F6C08);
  v7 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v9 = &v15 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21431C830();
  sub_2146DAA08();
  if (!v2)
  {
    v10 = v7;
    v11 = v16;
    v20 = 0;
    sub_214328930(&qword_27C90C3D8, type metadata accessor for Chatbot.GeneralPurposeCardCarouselMessage.Layout, byte_214702560);
    v12 = v17;
    sub_2146DA1C8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90C3E0, &qword_2146F6C10);
    v19 = 1;
    sub_21431C884();
    sub_2146DA1C8();
    (*(v10 + 8))(v9, v12);
    v14 = v18;
    sub_214328704(v6, v11, type metadata accessor for Chatbot.GeneralPurposeCardCarouselMessage.Layout);
    *(v11 + *(type metadata accessor for Chatbot.GeneralPurposeCardCarouselMessage(0) + 20)) = v14;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_2142A04A4(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90C3F8, &qword_2146F6C18);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v10[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21431C830();
  sub_2146DAA28();
  v12 = 0;
  type metadata accessor for Chatbot.GeneralPurposeCardCarouselMessage.Layout(0);
  sub_214328930(&qword_27C90C400, type metadata accessor for Chatbot.GeneralPurposeCardCarouselMessage.Layout, aQx);
  sub_2146DA388();
  if (!v2)
  {
    v11 = *(v3 + *(type metadata accessor for Chatbot.GeneralPurposeCardCarouselMessage(0) + 20));
    v10[15] = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90C3E0, &qword_2146F6C10);
    sub_21431C938();
    sub_2146DA388();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_2142A06B8@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F38, &unk_2146E9D40);
  MEMORY[0x28223BE20](v10);
  v12 = (&v21 - v11);
  LOBYTE(a1) = *a1;
  v13 = *(type metadata accessor for Chatbot.GeneralPurposeCardCarouselMessage.Layout(0) + 28);
  sub_2145C6114((a5 + v13));
  *a5 = a1;
  *(a5 + 8) = a2;
  *(a5 + 16) = a3;
  v22 = v13;
  sub_213FB2E54(a5 + v13, v12, &qword_27C903F38, &unk_2146E9D40);
  v14 = *v12;
  v24 = *(v12 + *(v10 + 32));
  v23[0] = 0xD000000000000039;
  v23[1] = 0x80000002147935A0;
  v23[2] = 0xD00000000000001CLL;
  v23[3] = 0x800000021478A360;
  v15 = v21;
  v16 = v14(a4, &v24, v23);
  if (v15)
  {
    sub_213FB2DF4(a4, &unk_27C9131A0, &unk_2146E9D10);
  }

  else
  {
    if (v16)
    {

      v17 = *(v10 + 28);
      sub_213FB2DF4(v12 + v17, &qword_27C903F40, &unk_2146F1C50);
      sub_21408AC04(a4, v12 + v17, &unk_27C9131A0, &unk_2146E9D10);
      v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9131A0, &unk_2146E9D10);
      (*(*(v18 - 8) + 56))(v12 + v17, 0, 1, v18);
      return sub_21402EDB8(v12, a5 + v22, &qword_27C903F38, &unk_2146E9D40);
    }

    sub_214031C4C();
    swift_allocError();
    *v20 = 0xD000000000000039;
    v20[1] = 0x80000002147935A0;
    v20[2] = 0xD00000000000001CLL;
    v20[3] = 0x800000021478A360;
    swift_willThrow();
    sub_213FB2DF4(a4, &unk_27C9131A0, &unk_2146E9D10);
  }

  sub_21402EDB8(v12, a5 + v22, &qword_27C903F38, &unk_2146E9D40);
  return sub_21432887C(a5, type metadata accessor for Chatbot.GeneralPurposeCardCarouselMessage.Layout);
}

unint64_t sub_2142A0980()
{
  v1 = 0x6874646977;
  v2 = 0xD000000000000014;
  if (*v0 != 2)
  {
    v2 = 0x4C5255656C797473;
  }

  if (*v0)
  {
    v1 = 0x6E6F46656C746974;
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

uint64_t sub_2142A0A08@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_2143856A8(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_2142A0A30(uint64_t a1)
{
  v2 = sub_21431C9EC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2142A0A6C(uint64_t a1)
{
  v2 = sub_21431C9EC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2142A0AA8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v34 = a2;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F38, &unk_2146E9D40);
  MEMORY[0x28223BE20](v36);
  v35 = (&v28 - v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9131A0, &unk_2146E9D10);
  v33 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v28 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90C418, &qword_2146F6C20);
  v37 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v28 - v8;
  v10 = type metadata accessor for Chatbot.GeneralPurposeCardCarouselMessage.Layout(0);
  MEMORY[0x28223BE20](v10);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = a1[3];
  v39 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v13);
  sub_21431C9EC();
  v14 = v38;
  sub_2146DAA08();
  if (v14)
  {
    return __swift_destroy_boxed_opaque_existential_1(v39);
  }

  v38 = v4;
  v31 = v12;
  v32 = v6;
  v15 = v37;
  v41 = 0;
  sub_21431CA40();
  sub_2146DA1C8();
  v16 = LOBYTE(v40[0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90C288, &qword_2146F6BA8);
  v41 = 1;
  sub_21431BCAC();
  sub_2146DA1C8();
  LODWORD(v30) = v16;
  v18 = v40[0];
  v41 = 2;
  sub_2146DA1C8();
  v29 = v40[0];
  LOBYTE(v40[0]) = 3;
  sub_2142E27A8();
  v19 = v32;
  sub_2146DA1C8();
  v28 = v7;
  v20 = *(v10 + 28);
  v21 = v18;
  v22 = v31;
  sub_2145C6114(&v31[v20]);
  *v22 = v30;
  v23 = v29;
  *(v22 + 8) = v21;
  *(v22 + 16) = v23;
  v30 = v20;
  v24 = v35;
  sub_213FB2E54(v22 + v20, v35, &qword_27C903F38, &unk_2146E9D40);
  v25 = *v24;
  v41 = *(v24 + *(v36 + 32));
  v40[0] = 0xD000000000000039;
  v40[1] = 0x80000002147935A0;
  v40[2] = 0xD00000000000001CLL;
  v40[3] = 0x800000021478A360;
  if (v25(v19, &v41, v40))
  {

    (*(v15 + 8))(v9, v28);
    v26 = *(v36 + 28);
    sub_213FB2DF4(v24 + v26, &qword_27C903F40, &unk_2146F1C50);
    sub_21408AC04(v19, v24 + v26, &unk_27C9131A0, &unk_2146E9D10);
    (*(v33 + 56))(v24 + v26, 0, 1, v38);
    sub_21402EDB8(v24, v22 + v30, &qword_27C903F38, &unk_2146E9D40);
    sub_214328704(v22, v34, type metadata accessor for Chatbot.GeneralPurposeCardCarouselMessage.Layout);
    return __swift_destroy_boxed_opaque_existential_1(v39);
  }

  sub_214031C4C();
  swift_allocError();
  *v27 = 0xD000000000000039;
  v27[1] = 0x80000002147935A0;
  v27[2] = 0xD00000000000001CLL;
  v27[3] = 0x800000021478A360;
  swift_willThrow();
  sub_213FB2DF4(v19, &unk_27C9131A0, &unk_2146E9D10);
  (*(v15 + 8))(v9, v28);
  sub_21402EDB8(v24, v22 + v30, &qword_27C903F38, &unk_2146E9D40);
  __swift_destroy_boxed_opaque_existential_1(v39);
  return sub_21432887C(v22, type metadata accessor for Chatbot.GeneralPurposeCardCarouselMessage.Layout);
}

uint64_t sub_2142A10EC(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F40, &unk_2146F1C50);
  MEMORY[0x28223BE20](v4 - 8);
  v25 = &v23 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9131A0, &unk_2146E9D10);
  v24 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v23 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90C430, &qword_2146F6C28);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v23 - v11;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21431C9EC();
  sub_2146DAA28();
  v26 = v2;
  LOBYTE(v28) = *v2;
  v29 = 0;
  sub_21431CA94();
  v13 = v27;
  sub_2146DA388();
  if (v13)
  {
    return (*(v10 + 8))(v12, v9);
  }

  v27 = v8;
  v14 = v25;
  v28 = *(v26 + 1);
  v29 = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90C288, &qword_2146F6BA8);
  sub_21431BE08();
  sub_2146DA388();
  v28 = *(v26 + 2);
  v29 = 2;
  sub_2146DA388();
  v16 = v9;
  v17 = v10;
  v18 = v16;
  v19 = &v26[*(type metadata accessor for Chatbot.GeneralPurposeCardCarouselMessage.Layout(0) + 28)];
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F38, &unk_2146E9D40);
  sub_213FB2E54(&v19[*(v20 + 28)], v14, &qword_27C903F40, &unk_2146F1C50);
  if ((*(v24 + 48))(v14, 1, v6) == 1)
  {
    sub_213FB2DF4(v14, &qword_27C903F40, &unk_2146F1C50);
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v21 = v14;
    v22 = v27;
    sub_21408AC04(v21, v27, &unk_27C9131A0, &unk_2146E9D10);
    LOBYTE(v28) = 3;
    sub_2142E2910();
    sub_2146DA388();
    sub_213FB2DF4(v22, &unk_27C9131A0, &unk_2146E9D10);
    return (*(v17 + 8))(v12, v18);
  }

  return result;
}

__n128 sub_2142A1584@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t (*a5)(void)@<X4>, uint64_t a6@<X8>)
{
  v11 = *(a2 + 32);
  v12 = *(a3 + 32);
  sub_21408AC04(a1, a6, &qword_27C90C2F8, &qword_2146F6BD0);
  v13 = a5(0);
  v14 = a6 + v13[5];
  v15 = *(a2 + 16);
  *v14 = *a2;
  *(v14 + 16) = v15;
  *(v14 + 32) = v11;
  v16 = a6 + v13[6];
  result = *a3;
  v18 = *(a3 + 16);
  *v16 = *a3;
  *(v16 + 16) = v18;
  *(v16 + 32) = v12;
  *(a6 + v13[7]) = a4;
  return result;
}

uint64_t sub_2142A1630(uint64_t a1)
{
  v2 = sub_21431CAE8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2142A166C(uint64_t a1)
{
  v2 = sub_21431CAE8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2142A16A8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v35 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90C2F8, &qword_2146F6BD0);
  MEMORY[0x28223BE20](v4);
  v6 = &v28 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90C440, &qword_2146F6C30);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v28 - v9;
  v11 = a1[3];
  v36 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v11);
  sub_21431CAE8();
  sub_2146DAA08();
  if (!v2)
  {
    v12 = v35;
    v13 = v8;
    LOBYTE(v37) = 0;
    sub_21431C0B4();
    v14 = v7;
    sub_2146DA1C8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90C320, &qword_2146F6BE0);
    v43 = 1;
    sub_21431C168();
    sub_2146DA1C8();
    v15 = v38;
    v33 = v37;
    v34 = v6;
    v17 = v39;
    v16 = v40;
    v42 = v41;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90C338, &qword_2146F6BE8);
    v43 = 2;
    sub_21431C240();
    sub_2146DA1C8();
    v30 = v15;
    v31 = v17;
    v32 = v16;
    v28 = v37;
    v29 = v38;
    v19 = v39;
    v18 = v40;
    LOBYTE(v15) = v41;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90C350, &qword_2146F6BF0);
    v43 = 3;
    sub_21431C318();
    sub_2146DA1C8();
    (*(v13 + 8))(v10, v14);
    v21 = v37;
    sub_21408AC04(v34, v12, &qword_27C90C2F8, &qword_2146F6BD0);
    v22 = type metadata accessor for Chatbot.GeneralPurposeCardCarouselMessage.Content(0);
    v23 = v12 + v22[5];
    v25 = v30;
    v24 = v31;
    *v23 = v33;
    *(v23 + 8) = v25;
    *(v23 + 16) = v24;
    *(v23 + 24) = v32;
    *(v23 + 32) = v42;
    v26 = v12 + v22[6];
    v27 = v29;
    *v26 = v28;
    *(v26 + 8) = v27;
    *(v26 + 16) = v19;
    *(v26 + 24) = v18;
    *(v26 + 32) = v15;
    *(v12 + v22[7]) = v21;
  }

  return __swift_destroy_boxed_opaque_existential_1(v36);
}

uint64_t sub_2142A1A8C(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90C450, &qword_2146F6C38);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v21 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21431CAE8();
  sub_2146DAA28();
  LOBYTE(v22) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90C2F8, &qword_2146F6BD0);
  sub_21431C450();
  sub_2146DA388();
  if (!v2)
  {
    v9 = type metadata accessor for Chatbot.GeneralPurposeCardCarouselMessage.Content(0);
    v10 = v3 + v9[5];
    v11 = *(v10 + 8);
    v12 = *(v10 + 16);
    v13 = *(v10 + 24);
    v14 = *(v10 + 32);
    v22 = *v10;
    v23 = v11;
    v24 = v12;
    v25 = v13;
    v26 = v14;
    HIBYTE(v21) = 1;
    sub_21431C5DC(v22, v11, v12, v13);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90C320, &qword_2146F6BE0);
    sub_21431C504();
    sub_2146DA388();
    sub_21431E10C(v22, v23, v24, v25);
    v15 = v3 + v9[6];
    v16 = *(v15 + 8);
    v17 = *(v15 + 16);
    v18 = *(v15 + 24);
    v19 = *(v15 + 32);
    v22 = *v15;
    v23 = v16;
    v24 = v17;
    v25 = v18;
    v26 = v19;
    HIBYTE(v21) = 2;
    sub_21431C5DC(v22, v16, v17, v18);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90C338, &qword_2146F6BE8);
    sub_21431C620();
    sub_2146DA388();
    sub_21431E10C(v22, v23, v24, v25);
    v22 = *(v3 + v9[7]);
    HIBYTE(v21) = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90C350, &qword_2146F6BF0);
    sub_21431C6F8();
    sub_2146DA388();
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_2142A1D50(char a1)
{
  result = 0x727474416B6E696CLL;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000014;
      break;
    case 2:
      result = 0xD000000000000022;
      break;
    case 4:
      result = 0xD000000000000010;
      break;
    case 5:
      result = 0xD000000000000013;
      break;
    case 6:
      result = 0xD000000000000011;
      break;
    case 7:
      result = 0xD000000000000013;
      break;
    case 8:
      result = 0xD000000000000016;
      break;
    case 9:
      result = 0xD00000000000001ALL;
      break;
    case 10:
      return result;
    case 11:
      result = 0xD000000000000017;
      break;
    case 12:
      result = 0xD000000000000015;
      break;
    default:
      result = 0xD00000000000001DLL;
      break;
  }

  return result;
}

unint64_t sub_2142A1F84@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_21438597C(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t sub_2142A1FB4@<X0>(unint64_t *a1@<X8>)
{
  result = sub_2142A1D50(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_2142A2090()
{
  if (*v0)
  {
    return 0x6F69746365726964;
  }

  else
  {
    return 0x65676E6172;
  }
}

uint64_t sub_2142A20CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x65676E6172 && a2 == 0xE500000000000000;
  if (v6 || (sub_2146DA6A8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6F69746365726964 && a2 == 0xE90000000000006ELL)
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

uint64_t sub_2142A21AC(uint64_t a1)
{
  v2 = sub_21431CB3C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2142A21E8(uint64_t a1)
{
  v2 = sub_21431CB3C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2142A2224@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90C458, &qword_2146F6C40);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v13 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21431CB3C();
  sub_2146DAA08();
  if (!v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904770, &qword_2146ED4C0);
    v14 = 0;
    sub_2142E50D0();
    sub_2146DA1C8();
    v9 = v13[0];
    v10 = v13[1];
    v14 = 1;
    sub_21431CB90();
    sub_2146DA1C8();
    (*(v6 + 8))(v8, v5);
    v11 = v13[0];
    *a2 = v9;
    *(a2 + 8) = v10;
    *(a2 + 16) = v11;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_2142A2410(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90C460, &qword_2146F6C48);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v11 - v5;
  v8 = *v1;
  v7 = v1[1];
  v14 = *(v1 + 16);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21431CB3C();
  sub_2146DAA28();
  v12 = v8;
  v13 = v7;
  v15 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904770, &qword_2146ED4C0);
  sub_2142E53D4();
  v9 = v11[1];
  sub_2146DA388();
  if (!v9)
  {
    LOBYTE(v12) = v14;
    v15 = 1;
    sub_21431CBE4();
    sub_2146DA388();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_2142A25F4()
{
  if (*v0)
  {
    return 0x626D754E74726170;
  }

  else
  {
    return 0x65676E6172;
  }
}

uint64_t sub_2142A2630@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x65676E6172 && a2 == 0xE500000000000000;
  if (v6 || (sub_2146DA6A8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x626D754E74726170 && a2 == 0xEA00000000007265)
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

uint64_t sub_2142A2710(uint64_t a1)
{
  v2 = sub_21431CC38();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2142A274C(uint64_t a1)
{
  v2 = sub_21431CC38();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2142A2840@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = result;
  a4[1] = a2;
  a4[2] = a3;
  return result;
}

uint64_t sub_2142A284C()
{
  if (*v0)
  {
    return 0x6C466E6F6974706FLL;
  }

  else
  {
    return 0x65676E6172;
  }
}

uint64_t sub_2142A288C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x65676E6172 && a2 == 0xE500000000000000;
  if (v6 || (sub_2146DA6A8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6C466E6F6974706FLL && a2 == 0xEB00000000736761)
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

uint64_t sub_2142A2968(uint64_t a1)
{
  v2 = sub_21431CC8C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2142A29A4(uint64_t a1)
{
  v2 = sub_21431CC8C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2142A2A24@<X0>(void *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t (*a4)(void)@<X3>, void *a6@<X8>)
{
  v19 = a6;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v18 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = &v18 - v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  a4();
  sub_2146DAA08();
  if (!v6)
  {
    v13 = v18;
    v12 = v19;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904770, &qword_2146ED4C0);
    v22 = 0;
    sub_2142E50D0();
    sub_2146DA1C8();
    v14 = v20;
    v15 = v21;
    LOBYTE(v20) = 1;
    v16 = sub_2146DA1B8();
    (*(v13 + 8))(v11, v9);
    *v12 = v14;
    v12[1] = v15;
    v12[2] = v16;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_2142A2C40(void *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void), uint64_t a5)
{
  v15 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v17 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v14 - v8;
  v11 = *v5;
  v10 = v5[1];
  v14 = v5[2];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v15();
  sub_2146DAA28();
  v18 = v11;
  v19 = v10;
  v20 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904770, &qword_2146ED4C0);
  sub_2142E53D4();
  v12 = v16;
  sub_2146DA388();
  if (!v12)
  {
    LOBYTE(v18) = 1;
    sub_2146DA378();
  }

  return (*(v17 + 8))(v9, v7);
}

uint64_t sub_2142A2E30()
{
  if (*v0)
  {
    return 0x7572636461657262;
  }

  else
  {
    return 0x65676E6172;
  }
}

uint64_t sub_2142A2E74@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x65676E6172 && a2 == 0xE500000000000000;
  if (v6 || (sub_2146DA6A8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x7572636461657262 && a2 == 0xEE0074786554626DLL)
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

uint64_t sub_2142A2F54(uint64_t a1)
{
  v2 = sub_21431CCE0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2142A2F90(uint64_t a1)
{
  v2 = sub_21431CCE0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2142A3084()
{
  if (*v0)
  {
    return 6910581;
  }

  else
  {
    return 0x65676E6172;
  }
}

uint64_t sub_2142A30B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x65676E6172 && a2 == 0xE500000000000000;
  if (v6 || (sub_2146DA6A8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 6910581 && a2 == 0xE300000000000000)
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

uint64_t sub_2142A318C(uint64_t a1)
{
  v2 = sub_21431CD34();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2142A31C8(uint64_t a1)
{
  v2 = sub_21431CD34();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2142A3248@<X0>(void *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t (*a4)(void)@<X3>, void *a6@<X8>)
{
  v20 = a6;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v9 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v11 = &v20 - v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  a4();
  sub_2146DAA08();
  if (!v6)
  {
    v12 = v9;
    v13 = v20;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904770, &qword_2146ED4C0);
    v24 = 0;
    sub_2142E50D0();
    sub_2146DA1C8();
    v14 = v22;
    v15 = v23;
    LOBYTE(v22) = 1;
    v17 = sub_2146DA168();
    v19 = v18;
    (*(v12 + 8))(v11, v21);
    *v13 = v14;
    v13[1] = v15;
    v13[2] = v17;
    v13[3] = v19;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_2142A3480(void *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void), uint64_t a5)
{
  v16 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v18 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = v15 - v8;
  v11 = *v5;
  v10 = v5[1];
  v12 = v5[2];
  v15[1] = v5[3];
  v15[2] = v12;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v16();
  sub_2146DAA28();
  v19 = v11;
  v20 = v10;
  v21 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904770, &qword_2146ED4C0);
  sub_2142E53D4();
  v13 = v17;
  sub_2146DA388();
  if (!v13)
  {
    LOBYTE(v19) = 1;
    sub_2146DA328();
  }

  return (*(v18 + 8))(v9, v7);
}

uint64_t sub_2142A3670@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  *a5 = result;
  a5[1] = a2;
  a5[2] = a3;
  a5[3] = a4;
  return result;
}

uint64_t sub_2142A367C()
{
  if (*v0)
  {
    return 1701869940;
  }

  else
  {
    return 0x65676E6172;
  }
}

uint64_t sub_2142A36AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x65676E6172 && a2 == 0xE500000000000000;
  if (v6 || (sub_2146DA6A8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 1701869940 && a2 == 0xE400000000000000)
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

uint64_t sub_2142A3784(uint64_t a1)
{
  v2 = sub_21431CD88();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2142A37C0(uint64_t a1)
{
  v2 = sub_21431CD88();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2142A37FC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90C4C0, &qword_2146F6C90);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v13 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21431CD88();
  sub_2146DAA08();
  if (!v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904770, &qword_2146ED4C0);
    v14 = 0;
    sub_2142E50D0();
    sub_2146DA1C8();
    v9 = v13[0];
    v10 = v13[1];
    v14 = 1;
    sub_21431CDDC();
    sub_2146DA1C8();
    (*(v6 + 8))(v8, v5);
    v11 = v13[0];
    *a2 = v9;
    *(a2 + 8) = v10;
    *(a2 + 16) = v11;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_2142A39E8(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90C4D8, &qword_2146F6C98);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v11 - v5;
  v8 = *v1;
  v7 = v1[1];
  v14 = *(v1 + 16);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21431CD88();
  sub_2146DAA28();
  v12 = v8;
  v13 = v7;
  v15 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904770, &qword_2146ED4C0);
  sub_2142E53D4();
  v9 = v11[1];
  sub_2146DA388();
  if (!v9)
  {
    LOBYTE(v12) = v14;
    v15 = 1;
    sub_21431CE30();
    sub_2146DA388();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_2142A3BCC@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X8>)
{
  v4 = *a3;
  *a4 = result;
  *(a4 + 8) = a2;
  *(a4 + 16) = v4;
  return result;
}

uint64_t sub_2142A3BF0(uint64_t a1)
{
  v2 = sub_21431CE84();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2142A3C2C(uint64_t a1)
{
  v2 = sub_21431CE84();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2142A3D20@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t sub_2142A3D28(uint64_t a1)
{
  v2 = sub_21431CED8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2142A3D64(uint64_t a1)
{
  v2 = sub_21431CED8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2142A3DE4@<X0>(void *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t (*a4)(void)@<X3>, _OWORD *a6@<X8>)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904770, &qword_2146ED4C0);
    sub_2142E50D0();
    sub_2146DA1C8();
    (*(v17 + 8))(v11, v9);
    *v12 = v16;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_2142A3FB4(void *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void), uint64_t a5)
{
  v14 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v13 - v9;
  v11 = *v5;
  v13 = v5[1];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v14();
  sub_2146DAA28();
  v15 = v11;
  v16 = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904770, &qword_2146ED4C0);
  sub_2142E53D4();
  sub_2146DA388();
  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_2142A4154(uint64_t a1)
{
  v2 = sub_21431CF2C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2142A4190(uint64_t a1)
{
  v2 = sub_21431CF2C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2142A4284@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x65676E6172 && a2 == 0xE500000000000000)
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

uint64_t sub_2142A4308(uint64_t a1)
{
  v2 = sub_21431CF80();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2142A4344(uint64_t a1)
{
  v2 = sub_21431CF80();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2142A4438()
{
  if (*v0)
  {
    return 1802398060;
  }

  else
  {
    return 0x65676E6172;
  }
}

uint64_t sub_2142A4468@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x65676E6172 && a2 == 0xE500000000000000;
  if (v6 || (sub_2146DA6A8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 1802398060 && a2 == 0xE400000000000000)
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

uint64_t sub_2142A4540(uint64_t a1)
{
  v2 = sub_21431CFD4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2142A457C(uint64_t a1)
{
  v2 = sub_21431CFD4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t LinkAttribute.init(from:)@<X0>(void *a1@<X0>, char *a2@<X8>)
{
  v21 = a2;
  v4 = sub_2146D8958();
  v20 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90C548, &qword_2146F6CE0);
  v7 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v9 = &v17 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21431CFD4();
  sub_2146DAA08();
  if (!v2)
  {
    v10 = v7;
    v11 = v4;
    v12 = v21;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904770, &qword_2146ED4C0);
    v25 = 0;
    sub_2142E50D0();
    v13 = v22;
    sub_2146DA1C8();
    v18 = v24;
    v19 = v23;
    LOBYTE(v23) = 1;
    sub_214328930(&qword_280B2FDD8, MEMORY[0x277CC9260], MEMORY[0x277CC9280]);
    sub_2146DA1C8();
    (*(v10 + 8))(v9, v13);
    v14 = type metadata accessor for LinkAttribute(0);
    (*(v20 + 32))(&v12[*(v14 + 20)], v6, v11);
    v15 = v18;
    *v12 = v19;
    *(v12 + 1) = v15;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t LinkAttribute.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90C558, &qword_2146F6CE8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v10[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21431CFD4();
  sub_2146DAA28();
  v11 = *v3;
  v10[15] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904770, &qword_2146ED4C0);
  sub_2142E53D4();
  sub_2146DA388();
  if (!v2)
  {
    type metadata accessor for LinkAttribute(0);
    LOBYTE(v11) = 1;
    sub_2146D8958();
    sub_214328930(&qword_280B2FDE0, MEMORY[0x277CC9260], MEMORY[0x277CC9268]);
    sub_2146DA388();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_2142A4AD8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t (*a4)(void)@<X3>, uint64_t (*a5)(void)@<X4>, char *a6@<X8>)
{
  *a6 = a1;
  *(a6 + 1) = a2;
  v9 = *(a4(0) + 20);
  v10 = a5(0);
  return (*(*(v10 - 8) + 32))(&a6[v9], a3, v10);
}

uint64_t sub_2142A4B6C()
{
  if (*v0)
  {
    return 0x694C686369527369;
  }

  else
  {
    return 0x65676E6172;
  }
}

uint64_t sub_2142A4BA8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x65676E6172 && a2 == 0xE500000000000000;
  if (v6 || (sub_2146DA6A8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x694C686369527369 && a2 == 0xEA00000000006B6ELL)
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

uint64_t sub_2142A4C88(uint64_t a1)
{
  v2 = sub_21431D028();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2142A4CC4(uint64_t a1)
{
  v2 = sub_21431D028();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t LinkIsRichLinkAttribute.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90C560, &qword_2146F6CF0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v13 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21431D028();
  sub_2146DAA08();
  if (!v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904770, &qword_2146ED4C0);
    v14 = 0;
    sub_2142E50D0();
    sub_2146DA1C8();
    v9 = v13[0];
    v10 = v13[1];
    LOBYTE(v13[0]) = 1;
    v11 = sub_2146DA178();
    (*(v6 + 8))(v8, v5);
    *a2 = v9;
    *(a2 + 8) = v10;
    *(a2 + 16) = v11 & 1;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t LinkIsRichLinkAttribute.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90C570, &qword_2146F6CF8);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v11 - v5;
  v8 = *v1;
  v7 = v1[1];
  v14 = *(v1 + 16);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21431D028();
  sub_2146DAA28();
  v12 = v8;
  v13 = v7;
  v15 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904770, &qword_2146ED4C0);
  sub_2142E53D4();
  v9 = v11[1];
  sub_2146DA388();
  if (!v9)
  {
    LOBYTE(v12) = 1;
    sub_2146DA338();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t LinkIsRichLinkAttribute.init(with:isRichLink:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  *a4 = result;
  *(a4 + 8) = a2;
  *(a4 + 16) = a3;
  return result;
}

uint64_t sub_2142A50CC(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v5 = 0x65676E6172;
    v6 = 0x666E496567616D69;
    if (a1 != 2)
    {
      v6 = 0x657A697361746164;
    }

    if (a1)
    {
      v5 = 0x656D686361747461;
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
    v1 = 0x6E4179636167656CLL;
    v2 = 0xD000000000000011;
    if (a1 != 7)
    {
      v2 = 1701667182;
    }

    if (a1 != 6)
    {
      v1 = v2;
    }

    v3 = 0x65707954697475;
    if (a1 != 4)
    {
      v3 = 0x65707954656D696DLL;
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

uint64_t sub_2142A5200@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_2143859C8(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_2142A5228(uint64_t a1)
{
  v2 = sub_21431D07C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2142A5264(uint64_t a1)
{
  v2 = sub_21431D07C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2142A52A0@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90C578, &qword_2146F6D00);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v42 - v7;
  v9 = a1[3];
  v104 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v9);
  sub_21431D07C();
  sub_2146DAA08();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(v104);
  }

  v69 = a2;
  v70 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904770, &qword_2146ED4C0);
  LOBYTE(v71[0]) = 0;
  sub_2142E50D0();
  sub_2146DA1C8();
  v10 = v73;
  v11 = v74;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90C580, &qword_2146F6D08);
  LOBYTE(v71[0]) = 1;
  sub_21431D0D0();
  sub_2146DA1C8();
  v68 = v10;
  v12 = v73;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90C588, &qword_2146F6D10);
  LOBYTE(v71[0]) = 2;
  sub_21431D184();
  sub_2146DA1C8();
  v66 = v73;
  v67 = v74;
  v13 = v75;
  LOBYTE(v73) = 3;
  v14 = sub_2146DA1B8();
  v63 = v11;
  v64 = v14;
  v65 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
  LOBYTE(v71[0]) = 4;
  sub_2142E12FC();
  sub_2146DA1C8();
  LODWORD(v61) = v13;
  v62 = v73;
  v16 = v74;
  LOBYTE(v71[0]) = 5;
  sub_2146DA1C8();
  v17 = v16;
  v18 = v73;
  v19 = v74;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904798, qword_21473CFD0);
  LOBYTE(v71[0]) = 6;
  sub_2142E11FC();
  sub_2146DA1C8();
  v60 = v19;
  v58 = v18;
  v59 = v73;
  LOBYTE(v18) = v74;
  v99[319] = 7;
  sub_21431D25C();
  sub_2146DA1C8();
  memcpy(v99, v100, 0x139uLL);
  v98[327] = 8;
  v56 = sub_2146DA168();
  v57 = v20;
  v47 = v5;
  sub_21431D304(v99, &v73);
  sub_214473580(&v73);
  v48 = v73;
  v21 = v74;
  v44 = v76;
  v45 = v75;
  v22 = v77;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v24 = swift_allocObject();
  *(v24 + 16) = sub_2140676DC;
  *(v24 + 24) = 0;
  *(v23 + 32) = v24;
  sub_214042B80(v23, v71);
  v52 = v71[0];
  v43 = v71[2];
  v54 = v71[3];
  v55 = v71[1];
  v53 = LOBYTE(v71[4]);
  v98[320] = v18;
  memcpy(&v98[7], v99, 0x139uLL);
  v49 = v61;
  v50 = v22;
  v46 = v18;
  v71[0] = v62;
  v71[1] = v17;
  LOBYTE(v72[0]) = v22;
  v73 = 0xD00000000000001DLL;
  v74 = 0x80000002147935E0;
  v75 = 0xD00000000000001CLL;
  v51 = 0x800000021478A360;
  v76 = 0x800000021478A360;

  v25 = v45;
  v26 = v44;
  sub_213FDC9D0(v45, v44);
  v61 = v21;
  v27 = v48;
  v28 = v48(v71, v72, &v73);
  if (v28)
  {
    sub_213FDC6D0(v25, v26);
    v29 = v51;

    sub_213FDC6D0(v25, v26);
    v72[0] = v56;
    v72[1] = v57;
    LOBYTE(v71[0]) = v53;
    v73 = 0xD00000000000001ALL;
    v74 = 0x8000000214793600;
    v75 = 0xD00000000000001CLL;
    v76 = v29;

    v30 = v52(v72, v71, &v73);
    if (v30)
    {

      sub_21431D2B0(v99);
      (*(v70 + 8))(v8, v47);

      v33 = v55;

      v71[0] = v68;
      v71[1] = v63;
      v71[2] = v65;
      v71[3] = v66;
      v71[4] = v67;
      LOBYTE(v71[5]) = v49;
      *(&v71[5] + 1) = v103[0];
      HIDWORD(v71[5]) = *(v103 + 3);
      v71[6] = v64;
      v71[7] = v27;
      v34 = v61;
      v71[8] = v61;
      v71[9] = v62;
      v42 = v17;
      v71[10] = v17;
      LOBYTE(v71[11]) = v50;
      *(&v71[11] + 1) = *v102;
      HIDWORD(v71[11]) = *&v102[3];
      v71[12] = v58;
      v71[13] = v60;
      v71[14] = v59;
      v35 = v46;
      LOBYTE(v71[15]) = v46;
      memcpy(&v71[15] + 1, v98, 0x140uLL);
      *(&v71[55] + 1) = *v101;
      HIDWORD(v71[55]) = *&v101[3];
      v36 = v52;
      v71[56] = v52;
      v71[57] = v33;
      v37 = v56;
      v38 = v57;
      v71[58] = v56;
      v71[59] = v57;
      v39 = v53;
      LOBYTE(v71[60]) = v53;
      memcpy(v69, v71, 0x1E1uLL);
      sub_21431D360(v71, &v73);
      __swift_destroy_boxed_opaque_existential_1(v104);
      v73 = v68;
      v74 = v63;
      v75 = v65;
      v76 = v66;
      v77 = v67;
      v78 = v49;
      *v79 = v103[0];
      *&v79[3] = *(v103 + 3);
      v80 = v64;
      v81 = v48;
      v82 = v34;
      v83 = v62;
      v84 = v42;
      v85 = v50;
      *v86 = *v102;
      *&v86[3] = *&v102[3];
      v87 = v58;
      v88 = v60;
      v89 = v59;
      v90 = v35;
      memcpy(v91, v98, sizeof(v91));
      *v92 = *v101;
      *&v92[3] = *&v101[3];
      v93 = v36;
      v94 = v55;
      v95 = v37;
      v96 = v38;
      v97 = v39;
      return sub_2142E44CC(&v73);
    }

    sub_214031C4C();
    swift_allocError();
    *v40 = 0xD00000000000001ALL;
    v40[1] = 0x8000000214793600;
    v41 = v51;
    v40[2] = 0xD00000000000001CLL;
    v40[3] = v41;
    swift_willThrow();

    sub_21431D2B0(v99);
    (*(v70 + 8))(v8, v47);

    v25 = v62;
    v26 = v17;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v31 = 0xD00000000000001DLL;
    v31[1] = 0x80000002147935E0;
    v32 = v51;
    v31[2] = 0xD00000000000001CLL;
    v31[3] = v32;
    swift_willThrow();

    sub_21431D2B0(v99);
    (*(v70 + 8))(v8, v47);

    sub_213FDC6D0(v25, v26);
  }

  __swift_destroy_boxed_opaque_existential_1(v104);
  v73 = v68;
  v74 = v63;
  v75 = v65;
  v76 = v66;
  v77 = v67;
  v78 = v49;
  *v79 = v103[0];
  *&v79[3] = *(v103 + 3);
  v80 = v64;
  v81 = v27;
  v82 = v61;
  v83 = v25;
  v84 = v26;
  v85 = v50;
  *v86 = *v102;
  *&v86[3] = *&v102[3];
  v87 = v58;
  v88 = v60;
  v89 = v59;
  v90 = v46;
  memcpy(v91, v98, sizeof(v91));
  *v92 = *v101;
  *&v92[3] = *&v101[3];
  v93 = v52;
  v94 = v55;
  v95 = v43;
  v96 = v54;
  v97 = v53;
  return sub_2142E44CC(&v73);
}

uint64_t sub_2142A5E40(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90C590, &qword_2146F6D18);
  v36 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = v19 - v4;
  v7 = *v1;
  v6 = v1[1];
  v8 = v1[2];
  v29 = v1[3];
  v30 = v8;
  v28 = v1[4];
  v27 = *(v1 + 40);
  v9 = v1[6];
  v10 = v1[10];
  v25 = v1[9];
  v26 = v9;
  v11 = v1[13];
  v22 = v1[12];
  v23 = v11;
  v24 = v10;
  v20 = v1[14];
  v21 = *(v1 + 120);
  memcpy(v35, v1 + 16, 0x139uLL);
  v12 = v1[58];
  v19[0] = v1[59];
  v19[1] = v12;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21431D07C();
  sub_2146DAA28();
  v34[0] = v7;
  v34[1] = v6;
  v33[0] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904770, &qword_2146ED4C0);
  sub_2142E53D4();
  v13 = v31;
  sub_2146DA388();
  if (v13)
  {
    return (*(v36 + 8))(v5, v3);
  }

  v15 = v27;
  v16 = v28;
  v17 = v29;
  v34[0] = v30;
  v33[0] = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90C580, &qword_2146F6D08);
  sub_21431D3BC();
  sub_2146DA388();
  v34[0] = v17;
  v34[1] = v16;
  LOBYTE(v34[2]) = v15;
  v33[0] = 2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90C588, &qword_2146F6D10);
  sub_21431D470();
  sub_2146DA388();
  v18 = v36;
  LOBYTE(v34[0]) = 3;
  sub_2146DA378();
  if (v24 == 1 || (v34[0] = v25, v34[1] = v24, v33[0] = 4, __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050), sub_214045AC0(), sub_2146DA388(), v34[0] = v22, v34[1] = v23, v33[0] = 5, sub_2146DA388(), v34[0] = v20, LOBYTE(v34[1]) = v21, v33[0] = 6, __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904798, qword_21473CFD0), sub_2142E1C30(), sub_2146DA388(), memcpy(v34, v35, 0x139uLL), v33[319] = 7, sub_21431D304(v35, v33), sub_21431D548(), sub_2146DA388(), memcpy(v33, v34, 0x139uLL), sub_21431D2B0(v33), !v19[0]))
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v32 = 8;

    sub_2146DA328();
    (*(v18 + 8))(v5, v3);
  }

  return result;
}

void *sub_2142A6370@<X0>(unint64_t a1@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t (*a6)(void, void, void)@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, char a12, const void *a13, uint64_t (*a14)(void, void, void), uint64_t a15)
{
  v39 = *a4;
  v40 = *(a4 + 8);
  v17 = *(a4 + 16);
  sub_214473580(&v49);
  v18 = v50;
  v47 = v49;
  v19 = v51;
  v35 = v52;
  v20 = v53;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v22 = swift_allocObject();
  *(v22 + 16) = sub_2140676DC;
  *(v22 + 24) = 0;
  *(v21 + 32) = v22;
  sub_214042B80(v21, &v74);
  v48 = v74;
  v46 = v75;
  v34 = v76;
  v84 = v77;
  v38 = v78;
  v80[0] = v17;
  __src[320] = a12 & 1;
  memcpy(&__src[7], a13, 0x139uLL);
  v23 = a6;
  v74 = a6;
  v75 = a7;
  v80[0] = v20;
  v49 = 0xD00000000000001DLL;
  v50 = 0x80000002147935E0;
  v51 = 0xD00000000000001CLL;
  v52 = 0x800000021478A360;

  v36 = v19;
  v24 = v19;
  v25 = v35;
  sub_213FDC9D0(v24, v35);
  v26 = v47(&v74, v80, &v49);
  v27 = v47;
  if (v37)
  {

LABEL_6:

    v23 = v36;
    sub_213FDC6D0(v36, v35);
    v28 = v38;
LABEL_7:
    v49 = a1;
    v50 = a2;
    v51 = a3;
    v52 = v39;
    v53 = v40;
    v54 = v17;
    *v55 = v83[0];
    *&v55[3] = *(v83 + 3);
    v56 = a5;
    v57 = v27;
    v58 = v18;
    v59 = v23;
    v60 = v25;
    v61 = v20;
    *&v62[3] = *(v82 + 3);
    *v62 = v82[0];
    v63 = a8;
    v64 = a10;
    v65 = a11;
    v66 = a12 & 1;
    memcpy(v67, __src, sizeof(v67));
    *v68 = v81[0];
    *&v68[3] = *(v81 + 3);
    v69 = v48;
    v70 = v46;
    v71 = v34;
    v72 = v84;
    v73 = v28;
    return sub_2142E44CC(&v49);
  }

  if ((v26 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v30 = 0xD00000000000001DLL;
    v30[1] = 0x80000002147935E0;
    v30[2] = 0xD00000000000001CLL;
    v30[3] = 0x800000021478A360;
    swift_willThrow();

    goto LABEL_6;
  }

  sub_213FDC6D0(v36, v35);

  sub_213FDC6D0(v36, v35);
  v74 = a14;
  v75 = a15;
  v28 = v38;
  v80[0] = v38;
  v49 = 0xD00000000000001ALL;
  v50 = 0x8000000214793600;
  v51 = 0xD00000000000001CLL;
  v52 = 0x800000021478A360;

  v29 = v48(&v74, v80, &v49);
  v27 = v47;
  if ((v29 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v32 = 0xD00000000000001ALL;
    v32[1] = 0x8000000214793600;
    v32[2] = 0xD00000000000001CLL;
    v32[3] = 0x800000021478A360;
    swift_willThrow();

    v25 = a7;
    goto LABEL_7;
  }

  swift_bridgeObjectRelease_n();
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = v39;
  *(a9 + 32) = v40;
  *(a9 + 40) = v17;
  *(a9 + 48) = a5;
  *(a9 + 56) = v47;
  *(a9 + 64) = v18;
  *(a9 + 72) = v23;
  *(a9 + 80) = a7;
  *(a9 + 88) = v20;
  *(a9 + 96) = a8;
  *(a9 + 104) = a10;
  *(a9 + 112) = a11;
  *(a9 + 120) = a12 & 1;
  result = memcpy((a9 + 121), __src, 0x140uLL);
  *(a9 + 448) = v48;
  *(a9 + 456) = v46;
  *(a9 + 464) = a14;
  *(a9 + 472) = a15;
  *(a9 + 480) = v38;
  return result;
}

uint64_t sub_2142A68D8()
{
  v1 = 0x61565F796C706572;
  if (*v0 != 1)
  {
    v1 = 0x565F6E6F69746361;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x437069684344426DLL;
  }
}

uint64_t sub_2142A6950@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_214385CC0(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_2142A6978(uint64_t a1)
{
  v2 = sub_21431D59C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2142A69B4(uint64_t a1)
{
  v2 = sub_21431D59C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2142A69F0(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE500000000000000;
  v4 = 0x796C706572;
  if (v2 != 1)
  {
    v4 = 0x6E6F69746361;
    v3 = 0xE600000000000000;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x64696C61766E69;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE700000000000000;
  }

  v7 = 0xE500000000000000;
  v8 = 0x796C706572;
  if (*a2 != 1)
  {
    v8 = 0x6E6F69746361;
    v7 = 0xE600000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x64696C61766E69;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE700000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_2146DA6A8();
  }

  return v11 & 1;
}

uint64_t sub_2142A6AE4()
{
  sub_2146DA958();
  sub_2146D9698();

  return sub_2146DA9B8();
}

uint64_t sub_2142A6B80(uint64_t a1)
{
  sub_2146D9698();
}

uint64_t sub_2142A6C08(uint64_t a1)
{
  sub_2146DA958();
  sub_2146D9698();

  return sub_2146DA9B8();
}

unint64_t sub_2142A6CA0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_214385E3C(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_2142A6CD0(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0xE500000000000000;
  v5 = 0x796C706572;
  if (v2 != 1)
  {
    v5 = 0x6E6F69746361;
    v4 = 0xE600000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x64696C61766E69;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_2142A6DD8(void *a1)
{
  v2 = v1;
  v22 = type metadata accessor for MBDChipAction(0);
  MEMORY[0x28223BE20](v22);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for MBDChipContent(0);
  MEMORY[0x28223BE20](v6);
  v8 = (&v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90C598, &qword_2146F6D20);
  v24 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = &v21 - v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21431D59C();
  sub_2146DAA28();
  sub_2143287C0(v2, v8, type metadata accessor for MBDChipContent);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_214328704(v8, v5, type metadata accessor for MBDChipAction);
      LOBYTE(v25) = 2;
      v31 = 0;
      sub_21431D5F0();
      v13 = v23;
      sub_2146DA388();
      if (!v13)
      {
        LOBYTE(v25) = 2;
        sub_214328930(&qword_27C90C5B0, type metadata accessor for MBDChipAction, protocol conformance descriptor for MBDChipAction);
        sub_2146DA388();
      }

      sub_21432887C(v5, type metadata accessor for MBDChipAction);
    }

    else
    {
      LOBYTE(v25) = 0;
      v31 = 0;
      sub_21431D5F0();
      sub_2146DA388();
    }

    return (*(v24 + 8))(v11, v9);
  }

  else
  {
    v15 = *v8;
    v14 = v8[1];
    v16 = v8[3];
    v22 = v8[2];
    v17 = v8[4];
    v18 = v8[5];
    LOBYTE(v25) = 1;
    v31 = 0;
    sub_21431D5F0();
    v19 = v23;
    sub_2146DA388();
    if (!v19)
    {
      v25 = v15;
      v26 = v14;
      v27 = v22;
      v28 = v16;
      v29 = v17;
      v30 = v18;
      v31 = 1;
      sub_21431D644();
      sub_2146DA388();
    }

    (*(v24 + 8))(v11, v9);
  }
}

uint64_t sub_2142A71A4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v25 = a2;
  v3 = type metadata accessor for MBDChipAction(0);
  MEMORY[0x28223BE20](v3);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90C5C0, &qword_2146F6D28);
  v24 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v22 - v7;
  v9 = type metadata accessor for MBDChipContent(0);
  MEMORY[0x28223BE20](v9);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = a1[3];
  v27 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v12);
  sub_21431D59C();
  v13 = v26;
  sub_2146DAA08();
  if (!v13)
  {
    v23 = v11;
    v26 = v9;
    v14 = v24;
    v15 = v25;
    v32 = 0;
    sub_21431D698();
    sub_2146DA1C8();
    if (v28)
    {
      if (v28 == 1)
      {
        v32 = 1;
        sub_21431D6EC();
        sub_2146DA1C8();
        (*(v14 + 8))(v8, v6);
        v16 = v15;
        v17 = v29;
        v18 = v30;
        v19 = v31;
        v20 = v23;
        *v23 = v28;
        v20[1] = v17;
        *(v20 + 1) = v18;
        *(v20 + 2) = v19;
      }

      else
      {
        LOBYTE(v28) = 2;
        sub_214328930(&qword_27C90C5D0, type metadata accessor for MBDChipAction, protocol conformance descriptor for MBDChipAction);
        sub_2146DA1C8();
        (*(v14 + 8))(v8, v6);
        v20 = v23;
        sub_214328704(v5, v23, type metadata accessor for MBDChipAction);
        v16 = v15;
      }
    }

    else
    {
      (*(v14 + 8))(v8, v6);
      v16 = v15;
      v20 = v23;
    }

    swift_storeEnumTagMultiPayload();
    sub_214328704(v20, v16, type metadata accessor for MBDChipContent);
  }

  return __swift_destroy_boxed_opaque_existential_1(v27);
}

unint64_t sub_2142A754C(char a1)
{
  result = 0x5F6265576E65706FLL;
  switch(a1)
  {
    case 1:
      return result;
    case 2:
      result = 0x5F7070416E65706FLL;
      break;
    case 3:
      result = 0xD000000000000011;
      break;
    case 4:
      result = 0xD000000000000012;
      break;
    case 5:
      result = 0xD000000000000012;
      break;
    case 6:
      result = 0xD000000000000012;
      break;
    case 7:
      result = 0xD000000000000015;
      break;
    case 8:
      result = 0x7261646E656C6163;
      break;
    case 9:
      result = 0x656469566C616964;
      break;
    case 10:
      result = 0xD000000000000012;
      break;
    case 11:
      result = 0x6E6F68506C616964;
      break;
    case 12:
      result = 0x565F656369766564;
      break;
    case 13:
      result = 0x73676E6974746573;
      break;
    default:
      result = 0xD000000000000010;
      break;
  }

  return result;
}

uint64_t sub_2142A7708(char a1)
{
  result = 0x64696C61766E69;
  switch(a1)
  {
    case 1:
      result = 0x6265576E65706FLL;
      break;
    case 2:
      result = 0x7070416E65706FLL;
      break;
    case 3:
      result = 0x5465736F706D6F63;
      break;
    case 4:
      result = 0x4165736F706D6F63;
      break;
    case 5:
      result = 0x5665736F706D6F63;
      break;
    case 6:
      result = 0x61636F4C776F6873;
      break;
    case 7:
      result = 0x4C74736575716572;
      break;
    case 8:
      result = 0x7261646E656C6163;
      break;
    case 9:
      result = 0x656469566C616964;
      break;
    case 10:
      result = 0x69726E456C616964;
      break;
    case 11:
      result = 0x6E6F68506C616964;
      break;
    case 12:
      result = 0x656369766564;
      break;
    case 13:
      result = 0x73676E6974746573;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_2142A78EC@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_214385E88(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_2142A7914(uint64_t a1)
{
  v2 = sub_21431D740();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2142A7950(uint64_t a1)
{
  v2 = sub_21431D740();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_2142A79EC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_214386370(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_2142A7A1C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2142A7708(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_2142A7AF8(void *a1)
{
  v2 = v1;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90C5E0, &qword_2146F6D30);
  MEMORY[0x28223BE20](v77);
  v5 = &v77 - v4;
  v6 = type metadata accessor for MBDActionContent(0);
  MEMORY[0x28223BE20](v6);
  v8 = &v77 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90C5E8, &qword_2146F6D38);
  v104 = *(v80 - 8);
  MEMORY[0x28223BE20](v80);
  v10 = &v77 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21431D740();
  v79 = v10;
  sub_2146DAA28();
  sub_2143287C0(v2, v8, type metadata accessor for MBDActionContent);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v22 = *v8;
      v23 = *(v8 + 1);
      v24 = *(v8 + 2);
      v48 = *(v8 + 3);
      v49 = v8[32];
      LOBYTE(v92) = 2;
      LOBYTE(v81) = 0;
      sub_21431D794();
      v26 = v79;
      v27 = v80;
      v50 = v78;
      sub_2146DA388();
      if (v50)
      {
        (*(v104 + 8))(v26, v27);
        v51 = v22;
        v52 = v23;
        v53 = v24;
        v54 = v48;
        return sub_21431E10C(v51, v52, v53, v54);
      }

      *&v92 = v22;
      *(&v92 + 1) = v23;
      *&v93 = v24;
      *(&v93 + 1) = v48;
      v77 = v48;
      LOBYTE(v94) = v49;
      LOBYTE(v81) = 2;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90C700, &unk_2146F6D90);
      sub_21431E150();
      goto LABEL_40;
    case 2u:
      v37 = *(v8 + 3);
      v94 = *(v8 + 2);
      v95[0] = v37;
      *(v95 + 9) = *(v8 + 57);
      v38 = *(v8 + 1);
      v92 = *v8;
      v93 = v38;
      LOBYTE(v81) = 3;
      v103 = 0;
      sub_21431D794();
      v39 = v79;
      v40 = v80;
      v41 = v78;
      sub_2146DA388();
      if (!v41)
      {
        v83 = v94;
        v84[0] = v95[0];
        *(v84 + 9) = *(v95 + 9);
        v81 = v92;
        v82 = v93;
        v103 = 3;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90C6E8, &qword_2146F6D88);
        sub_21431E034();
        sub_2146DA388();
      }

      (*(v104 + 8))(v39, v40);
      v16 = &qword_27C90C6E8;
      v17 = &qword_2146F6D88;
      goto LABEL_37;
    case 3u:
      v22 = *v8;
      v23 = *(v8 + 1);
      v24 = *(v8 + 2);
      v77 = *(v8 + 3);
      v42 = v8[32];
      LOBYTE(v92) = 4;
      LOBYTE(v81) = 0;
      sub_21431D794();
      v26 = v79;
      v27 = v80;
      v43 = v78;
      sub_2146DA388();
      if (v43)
      {
        goto LABEL_41;
      }

      *&v92 = v22;
      *(&v92 + 1) = v23;
      *&v93 = v24;
      *(&v93 + 1) = v77;
      LOBYTE(v94) = v42;
      LOBYTE(v81) = 4;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90C6D0, &qword_2146F6D80);
      sub_21431DF5C();
      goto LABEL_40;
    case 4u:
      v22 = *v8;
      v23 = *(v8 + 1);
      v24 = *(v8 + 2);
      v77 = *(v8 + 3);
      v25 = v8[32];
      LOBYTE(v92) = 5;
      LOBYTE(v81) = 0;
      sub_21431D794();
      v26 = v79;
      v27 = v80;
      v28 = v78;
      sub_2146DA388();
      if (v28)
      {
        goto LABEL_41;
      }

      *&v92 = v22;
      *(&v92 + 1) = v23;
      *&v93 = v24;
      *(&v93 + 1) = v77;
      LOBYTE(v94) = v25;
      LOBYTE(v81) = 5;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90C6B8, &qword_214747AE0);
      sub_21431DE84();
LABEL_40:
      sub_2146DA388();
LABEL_41:
      (*(v104 + 8))(v26, v27);
      v51 = v22;
      v52 = v23;
      v53 = v24;
      v54 = v77;
      return sub_21431E10C(v51, v52, v53, v54);
    case 5u:
      v55 = *(v8 + 9);
      v99 = *(v8 + 8);
      v100 = v55;
      v101 = *(v8 + 10);
      v102 = v8[176];
      v56 = *(v8 + 5);
      v95[1] = *(v8 + 4);
      v96 = v56;
      v57 = *(v8 + 7);
      v97 = *(v8 + 6);
      v98 = v57;
      v58 = *(v8 + 1);
      v92 = *v8;
      v93 = v58;
      v59 = *(v8 + 3);
      v94 = *(v8 + 2);
      v95[0] = v59;
      LOBYTE(v81) = 6;
      v103 = 0;
      sub_21431D794();
      v60 = v79;
      v61 = v80;
      v62 = v78;
      sub_2146DA388();
      if (!v62)
      {
        v88 = v99;
        v89 = v100;
        v90 = v101;
        v91 = v102;
        v84[1] = v95[1];
        v85 = v96;
        v86 = v97;
        v87 = v98;
        v81 = v92;
        v82 = v93;
        v83 = v94;
        v84[0] = v95[0];
        v103 = 6;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90C6A0, &unk_2146F6D70);
        sub_21431DDAC();
        sub_2146DA388();
      }

      (*(v104 + 8))(v60, v61);
      v16 = &qword_27C90C6A0;
      v17 = &unk_2146F6D70;
      goto LABEL_37;
    case 6u:
      v65 = *v8;
      LOBYTE(v92) = 7;
      LOBYTE(v81) = 0;
      sub_21431D794();
      v19 = v79;
      v20 = v80;
      v66 = v78;
      sub_2146DA388();
      if (v66)
      {
        goto LABEL_30;
      }

      LOBYTE(v92) = v65;
      LOBYTE(v81) = 7;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90C688, &qword_2146F6D68);
      sub_21431DCD4();
      goto LABEL_29;
    case 7u:
      sub_21408AC04(v8, v5, &qword_27C90C5E0, &qword_2146F6D30);
      LOBYTE(v92) = 8;
      LOBYTE(v81) = 0;
      sub_21431D794();
      v44 = v79;
      v45 = v80;
      v46 = v78;
      sub_2146DA388();
      if (!v46)
      {
        LOBYTE(v92) = 8;
        sub_21431DC20();
        sub_2146DA388();
      }

      sub_213FB2DF4(v5, &qword_27C90C5E0, &qword_2146F6D30);
      return (*(v104 + 8))(v44, v45);
    case 8u:
      v72 = *(v8 + 3);
      v94 = *(v8 + 2);
      v95[0] = v72;
      *(v95 + 9) = *(v8 + 57);
      v73 = *(v8 + 1);
      v92 = *v8;
      v93 = v73;
      LOBYTE(v81) = 9;
      v103 = 0;
      sub_21431D794();
      v74 = v79;
      v75 = v80;
      v76 = v78;
      sub_2146DA388();
      if (!v76)
      {
        v83 = v94;
        v84[0] = v95[0];
        *(v84 + 9) = *(v95 + 9);
        v81 = v92;
        v82 = v93;
        v103 = 9;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90C660, &qword_2146F6D60);
        sub_21431DB48();
        sub_2146DA388();
      }

      (*(v104 + 8))(v74, v75);
      v16 = &qword_27C90C660;
      v17 = &qword_2146F6D60;
      goto LABEL_37;
    case 9u:
      v31 = *(v8 + 5);
      v95[1] = *(v8 + 4);
      v96 = v31;
      v97 = *(v8 + 6);
      LOBYTE(v98) = v8[112];
      v32 = *(v8 + 1);
      v92 = *v8;
      v93 = v32;
      v33 = *(v8 + 3);
      v94 = *(v8 + 2);
      v95[0] = v33;
      LOBYTE(v81) = 10;
      v103 = 0;
      sub_21431D794();
      v34 = v79;
      v35 = v80;
      v36 = v78;
      sub_2146DA388();
      if (!v36)
      {
        v84[1] = v95[1];
        v85 = v96;
        v86 = v97;
        LOBYTE(v87) = v98;
        v81 = v92;
        v82 = v93;
        v83 = v94;
        v84[0] = v95[0];
        v103 = 10;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90C648, &unk_214747AA0);
        sub_21431DA70();
        sub_2146DA388();
      }

      (*(v104 + 8))(v34, v35);
      v16 = &qword_27C90C648;
      v17 = &unk_214747AA0;
      goto LABEL_37;
    case 0xAu:
      v67 = *(v8 + 3);
      v94 = *(v8 + 2);
      v95[0] = v67;
      *(v95 + 9) = *(v8 + 57);
      v68 = *(v8 + 1);
      v92 = *v8;
      v93 = v68;
      LOBYTE(v81) = 11;
      v103 = 0;
      sub_21431D794();
      v69 = v79;
      v70 = v80;
      v71 = v78;
      sub_2146DA388();
      if (!v71)
      {
        v83 = v94;
        v84[0] = v95[0];
        *(v84 + 9) = *(v95 + 9);
        v81 = v92;
        v82 = v93;
        v103 = 11;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90C630, &unk_2146F6D50);
        sub_21431D998();
        sub_2146DA388();
      }

      (*(v104 + 8))(v69, v70);
      v16 = &qword_27C90C630;
      v17 = &unk_2146F6D50;
      goto LABEL_37;
    case 0xBu:
      v18 = *v8;
      LOBYTE(v92) = 12;
      LOBYTE(v81) = 0;
      sub_21431D794();
      v19 = v79;
      v20 = v80;
      v21 = v78;
      sub_2146DA388();
      if (v21)
      {
        goto LABEL_30;
      }

      LOBYTE(v92) = v18;
      LOBYTE(v81) = 12;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90C618, &unk_214747AD0);
      sub_21431D8C0();
      goto LABEL_29;
    case 0xCu:
      v29 = *v8;
      LOBYTE(v92) = 13;
      LOBYTE(v81) = 0;
      sub_21431D794();
      v19 = v79;
      v20 = v80;
      v30 = v78;
      sub_2146DA388();
      if (v30)
      {
        goto LABEL_30;
      }

      LOBYTE(v92) = v29;
      LOBYTE(v81) = 13;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90C600, &unk_2146F6D40);
      sub_21431D7E8();
LABEL_29:
      sub_2146DA388();
LABEL_30:
      result = (*(v104 + 8))(v19, v20);
      break;
    case 0xDu:
      LOBYTE(v92) = 0;
      LOBYTE(v81) = 0;
      sub_21431D794();
      v63 = v79;
      v64 = v80;
      sub_2146DA388();
      return (*(v104 + 8))(v63, v64);
    default:
      v11 = *(v8 + 3);
      v94 = *(v8 + 2);
      v95[0] = v11;
      v95[1] = *(v8 + 4);
      LOBYTE(v96) = v8[80];
      v12 = *(v8 + 1);
      v92 = *v8;
      v93 = v12;
      LOBYTE(v81) = 1;
      v103 = 0;
      sub_21431D794();
      v13 = v79;
      v14 = v80;
      v15 = v78;
      sub_2146DA388();
      if (v15)
      {
        (*(v104 + 8))(v13, v14);
        v16 = &qword_27C90C718;
        v17 = &qword_214747AB0;
LABEL_37:
        result = sub_213FB2DF4(&v92, v16, v17);
      }

      else
      {
        v83 = v94;
        v84[0] = v95[0];
        v84[1] = v95[1];
        LOBYTE(v85) = v96;
        v81 = v92;
        v82 = v93;
        v103 = 1;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90C718, &qword_214747AB0);
        sub_21431E228();
        sub_2146DA388();
        (*(v104 + 8))(v13, v14);
        result = sub_213FB2DF4(&v92, &qword_27C90C718, &qword_214747AB0);
      }

      break;
  }

  return result;
}

uint64_t sub_2142A8760@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v44 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90C5E0, &qword_2146F6D30);
  MEMORY[0x28223BE20](v3);
  v5 = &v41 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90C730, &qword_2146F6DA0);
  v43 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v41 - v7;
  v9 = type metadata accessor for MBDActionContent(0);
  MEMORY[0x28223BE20](v9);
  v11 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = a1[3];
  v46 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v12);
  sub_21431D740();
  v13 = v45;
  sub_2146DAA08();
  if (v13)
  {
    return __swift_destroy_boxed_opaque_existential_1(v46);
  }

  v14 = v43;
  v45 = v9;
  v42 = v11;
  v15 = v44;
  v58 = 0;
  sub_21431E300();
  sub_2146DA1C8();
  switch(v47)
  {
    case 1:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90C718, &qword_214747AB0);
      v58 = 1;
      sub_21431ED50();
      sub_2146DA1C8();
      (*(v14 + 8))(v8, v6);
      v28 = *v50;
      v17 = v42;
      v42[2] = v49;
      v17[3] = v28;
      v17[4] = *&v50[16];
      *(v17 + 80) = v51;
      v29 = v48;
      *v17 = v47;
      v17[1] = v29;
      break;
    case 2:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90C700, &unk_2146F6D90);
      v58 = 2;
      sub_21431EC78();
      sub_2146DA1C8();
      (*(v14 + 8))(v8, v6);
      v24 = v49;
      v25 = v48;
      v17 = v42;
      *v42 = v47;
      v17[1] = v25;
      *(v17 + 32) = v24;
      break;
    case 3:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90C6E8, &qword_2146F6D88);
      v58 = 3;
      sub_21431EBA0();
      sub_2146DA1C8();
      (*(v14 + 8))(v8, v6);
      v26 = *v50;
      v17 = v42;
      v42[2] = v49;
      v17[3] = v26;
      *(v17 + 57) = *&v50[9];
      v27 = v48;
      *v17 = v47;
      v17[1] = v27;
      break;
    case 4:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90C6D0, &qword_2146F6D80);
      v58 = 4;
      sub_21431EAC8();
      sub_2146DA1C8();
      (*(v14 + 8))(v8, v6);
      v20 = v49;
      v21 = v48;
      v17 = v42;
      *v42 = v47;
      v17[1] = v21;
      *(v17 + 32) = v20;
      break;
    case 5:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90C6B8, &qword_214747AE0);
      v58 = 5;
      sub_21431E9F0();
      sub_2146DA1C8();
      (*(v14 + 8))(v8, v6);
      v30 = v49;
      v31 = v48;
      v17 = v42;
      *v42 = v47;
      v17[1] = v31;
      *(v17 + 32) = v30;
      break;
    case 6:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90C6A0, &unk_2146F6D70);
      v58 = 6;
      sub_21431E918();
      sub_2146DA1C8();
      (*(v14 + 8))(v8, v6);
      v32 = v55;
      v17 = v42;
      v42[8] = v54;
      v17[9] = v32;
      v17[10] = v56;
      *(v17 + 176) = v57;
      v33 = v51;
      v17[4] = *&v50[16];
      v17[5] = v33;
      v34 = v53;
      v17[6] = v52;
      v17[7] = v34;
      v35 = v48;
      *v17 = v47;
      v17[1] = v35;
      v36 = *v50;
      v17[2] = v49;
      v17[3] = v36;
      break;
    case 7:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90C688, &qword_2146F6D68);
      v58 = 7;
      sub_21431E840();
      sub_2146DA1C8();
      (*(v14 + 8))(v8, v6);
      v17 = v42;
      *v42 = v47;
      break;
    case 8:
      LOBYTE(v47) = 8;
      sub_21431E78C();
      sub_2146DA1C8();
      (*(v14 + 8))(v8, v6);
      v17 = v42;
      sub_21408AC04(v5, v42, &qword_27C90C5E0, &qword_2146F6D30);
      break;
    case 9:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90C660, &qword_2146F6D60);
      v58 = 9;
      sub_21431E6B4();
      sub_2146DA1C8();
      (*(v14 + 8))(v8, v6);
      v22 = *v50;
      v17 = v42;
      v42[2] = v49;
      v17[3] = v22;
      *(v17 + 57) = *&v50[9];
      v23 = v48;
      *v17 = v47;
      v17[1] = v23;
      break;
    case 10:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90C648, &unk_214747AA0);
      v58 = 10;
      sub_21431E5DC();
      sub_2146DA1C8();
      (*(v14 + 8))(v8, v6);
      v37 = v51;
      v17 = v42;
      v42[4] = *&v50[16];
      v17[5] = v37;
      v17[6] = v52;
      *(v17 + 112) = v53;
      v38 = v48;
      *v17 = v47;
      v17[1] = v38;
      v39 = *v50;
      v17[2] = v49;
      v17[3] = v39;
      break;
    case 11:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90C630, &unk_2146F6D50);
      v58 = 11;
      sub_21431E504();
      sub_2146DA1C8();
      (*(v14 + 8))(v8, v6);
      v18 = *v50;
      v17 = v42;
      v42[2] = v49;
      v17[3] = v18;
      *(v17 + 57) = *&v50[9];
      v19 = v48;
      *v17 = v47;
      v17[1] = v19;
      break;
    case 12:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90C618, &unk_214747AD0);
      v58 = 12;
      sub_21431E42C();
      sub_2146DA1C8();
      (*(v14 + 8))(v8, v6);
      v17 = v42;
      *v42 = v47;
      break;
    case 13:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90C600, &unk_2146F6D40);
      v58 = 13;
      sub_21431E354();
      sub_2146DA1C8();
      (*(v14 + 8))(v8, v6);
      v17 = v42;
      *v42 = v47;
      break;
    default:
      (*(v14 + 8))(v8, v6);
      v17 = v42;
      break;
  }

  swift_storeEnumTagMultiPayload();
  v40 = v46;
  sub_214328704(v17, v15, type metadata accessor for MBDActionContent);
  return __swift_destroy_boxed_opaque_existential_1(v40);
}