uint64_t sub_214253F6C(void *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void), uint64_t a5)
{
  v14 = a4;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v7 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v9 = &v14 - v8;
  v11 = *(v5 + 16);
  v10 = *(v5 + 24);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v14();
  sub_2146DAA28();
  if (v10 >> 60 == 15)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v15 = v11;
    v16 = v10;
    sub_21402D9F8(v11, v10);
    sub_214061684();
    v12 = v17;
    sub_2146DA388();
    sub_213FB54FC(v15, v16);
    return (*(v7 + 8))(v9, v12);
  }

  return result;
}

uint64_t sub_214254154@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F28, &unk_2146E9D30);
  v7 = swift_allocObject();
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_2146ED240;
  *(v7 + 16) = sub_21438F468;
  *(v7 + 24) = v8;
  *(inited + 32) = v7;
  sub_21404328C(inited, &v16);
  v9 = v16;
  v10 = v17;
  v11 = BYTE1(v19);
  v21 = a1;
  v20 = BYTE1(v19);
  v16 = 0xD000000000000026;
  v17 = 0x80000002147928D0;
  v18 = 0xD00000000000001CLL;
  v19 = 0x800000021478A360;

  v12 = v9(&v21, &v20, &v16);
  if (v3)
  {
  }

  else
  {
    if (v12)
    {

      *a3 = v9;
      *(a3 + 8) = v10;
      *(a3 + 16) = a1;
      *(a3 + 24) = 0;
      *(a3 + 25) = v11;
      *(a3 + 32) = a2;
      return result;
    }

    sub_214031C4C();
    swift_allocError();
    *v14 = 0xD000000000000026;
    v14[1] = 0x80000002147928D0;
    v14[2] = 0xD00000000000001CLL;
    v14[3] = 0x800000021478A360;
    swift_willThrow();
  }
}

uint64_t sub_214254340()
{
  v1 = 1701667182;
  if (*v0 != 1)
  {
    v1 = 0x6574656D61726170;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 25705;
  }
}

uint64_t sub_21425438C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_21437E31C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_2142543B4(uint64_t a1)
{
  v2 = sub_214313C50();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2142543F0(uint64_t a1)
{
  v2 = sub_214313C50();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21425442C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90B1A8, &qword_2146F6388);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v19 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214313C50();
  sub_2146DAA08();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  LOBYTE(v25) = 0;
  v24 = sub_2146DA1A8();
  LOBYTE(v25) = 1;
  sub_214313CA4();
  sub_2146DA1C8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90B1C0, &qword_2146F6390);
  LOBYTE(v30) = 2;
  sub_214313CF8();
  sub_2146DA1C8();
  v23 = v25;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F28, &unk_2146E9D30);
  v11 = swift_allocObject();
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_2146ED240;
  *(v11 + 16) = sub_21438F468;
  *(v11 + 24) = v12;
  *(inited + 32) = v11;
  sub_21404328C(inited, &v25);
  v14 = v25;
  v13 = v26;
  v30 = v24;
  v21 = BYTE1(v28);
  v29 = BYTE1(v28);
  v25 = 0xD000000000000026;
  v26 = 0x80000002147928D0;
  v22 = 0x80000002147928D0;
  v27 = 0xD00000000000001CLL;
  v28 = 0x800000021478A360;

  v20 = v14;
  v15 = v14(&v30, &v29, &v25);
  v16 = v22;
  if (v15)
  {

    (*(v6 + 8))(v8, v5);

    *a2 = v20;
    *(a2 + 8) = v13;
    v17 = v23;
    *(a2 + 16) = v24;
    *(a2 + 24) = 0;
    *(a2 + 25) = v21;
    *(a2 + 32) = v17;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v18 = 0xD000000000000026;
    v18[1] = v16;
    v18[2] = 0xD00000000000001CLL;
    v18[3] = 0x800000021478A360;
    swift_willThrow();
    (*(v6 + 8))(v8, v5);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_214254844(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90B1D8, &qword_2146F6398);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v10 - v5;
  v7 = *(v1 + 24);
  v11 = *(v1 + 32);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214313C50();
  sub_2146DAA28();
  if (v7)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v16 = 0;
    v8 = v12;
    sub_2146DA368();
    if (!v8)
    {
      v15 = 1;
      sub_214313DD0();
      sub_2146DA388();
      v13 = v11;
      v14 = 2;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90B1C0, &qword_2146F6390);
      sub_214313E24();
      sub_2146DA388();
    }

    return (*(v4 + 8))(v6, v3);
  }

  return result;
}

uint64_t sub_214254A94@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v7 = swift_allocObject();
  *(v7 + 16) = sub_2140676DC;
  *(v7 + 24) = 0;
  *(inited + 32) = v7;
  sub_214042B80(inited, a4);
  LOWORD(v35[0]) = 0;
  sub_2140615D0(v35);
  v8 = v35[9];
  *(a4 + 416) = v35[8];
  *(a4 + 432) = v8;
  v9 = v35[11];
  *(a4 + 448) = v35[10];
  *(a4 + 464) = v9;
  v10 = v35[5];
  *(a4 + 352) = v35[4];
  *(a4 + 368) = v10;
  v11 = v35[7];
  *(a4 + 384) = v35[6];
  *(a4 + 400) = v11;
  v12 = v35[1];
  *(a4 + 288) = v35[0];
  *(a4 + 304) = v12;
  v13 = v35[3];
  *(a4 + 320) = v35[2];
  *(a4 + 336) = v13;
  *(a4 + 40) = 0u;
  *(a4 + 280) = 0;
  *(a4 + 248) = 0u;
  *(a4 + 232) = 0u;
  *(a4 + 216) = 0u;
  *(a4 + 200) = 0u;
  *(a4 + 184) = 0u;
  *(a4 + 168) = 0u;
  *(a4 + 152) = 0u;
  *(a4 + 136) = 0u;
  *(a4 + 120) = 0u;
  *(a4 + 104) = 0u;
  *(a4 + 88) = 0u;
  *(a4 + 72) = 0u;
  *(a4 + 56) = 0u;
  *(a4 + 264) = 0u;
  v15 = *a4;
  v14 = *(a4 + 8);
  v16 = *(a4 + 24);
  v28 = *(a4 + 16);
  v17 = *(a4 + 32);
  v33[3] = 0x800000021478A360;
  v34[0] = a1;
  v34[1] = a2;
  v36 = v17;
  v37 = v17;
  v33[0] = 0xD00000000000002ALL;
  v33[1] = 0x8000000214792900;
  v33[2] = 0xD00000000000001CLL;
  v29 = v16;

  v18 = v15(v34, &v37, v33);
  if (v31)
  {
  }

  else
  {
    if (v18)
    {

      *a4 = v15;
      *(a4 + 8) = v14;
      *(a4 + 16) = a1;
      *(a4 + 24) = a2;
      *(a4 + 32) = v36;
      result = sub_213FB2DF4(a4 + 40, &qword_27C904858, &qword_214736F00);
      v20 = *(a3 + 208);
      *(a4 + 232) = *(a3 + 192);
      *(a4 + 248) = v20;
      *(a4 + 264) = *(a3 + 224);
      *(a4 + 280) = *(a3 + 240);
      v21 = *(a3 + 144);
      *(a4 + 168) = *(a3 + 128);
      *(a4 + 184) = v21;
      v22 = *(a3 + 176);
      *(a4 + 200) = *(a3 + 160);
      *(a4 + 216) = v22;
      v23 = *(a3 + 80);
      *(a4 + 104) = *(a3 + 64);
      *(a4 + 120) = v23;
      v24 = *(a3 + 112);
      *(a4 + 136) = *(a3 + 96);
      *(a4 + 152) = v24;
      v25 = *(a3 + 16);
      *(a4 + 40) = *a3;
      *(a4 + 56) = v25;
      v26 = *(a3 + 48);
      *(a4 + 72) = *(a3 + 32);
      *(a4 + 88) = v26;
      return result;
    }

    sub_214031C4C();
    swift_allocError();
    *v27 = 0xD00000000000002ALL;
    v27[1] = 0x8000000214792900;
    v27[2] = 0xD00000000000001CLL;
    v27[3] = 0x800000021478A360;
    swift_willThrow();
  }

  sub_21406D2CC(a3);

  *a4 = v15;
  *(a4 + 8) = v14;
  *(a4 + 16) = v28;
  *(a4 + 24) = v29;
  *(a4 + 32) = v36;
  return sub_214313EFC(a4);
}

uint64_t sub_214254DE8()
{
  if (*v0)
  {
    return 0x6567616D69;
  }

  else
  {
    return 0xD000000000000015;
  }
}

uint64_t sub_214254E24@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD000000000000015 && 0x8000000214796270 == a2 || (sub_2146DA6A8() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x6567616D69 && a2 == 0xE500000000000000)
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

uint64_t sub_214254F08(uint64_t a1)
{
  v2 = sub_214313F50();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_214254F44(uint64_t a1)
{
  v2 = sub_214313F50();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_214254F80@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90B1F8, &qword_2146F63A0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v22 - v7;
  v9 = a1[3];
  v38 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v9);
  sub_214313F50();
  sub_2146DAA08();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(v38);
  }

  v10 = v6;
  v30 = a2;
  v36[0] = 0;
  v11 = sub_2146DA168();
  v13 = v12;
  v29 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905500, &qword_2146F2BE0);
  v35 = 1;
  sub_21432076C(&qword_280B30CB8, &qword_27C905500, &qword_2146F2BE0, aI_83);
  sub_2146DA1C8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v16 = swift_allocObject();
  *(v16 + 16) = sub_2140676DC;
  *(v16 + 24) = 0;
  *(v15 + 32) = v16;
  sub_214042B80(v15, v37);
  LOWORD(v34[0]) = 0;
  sub_2140615D0(v34);
  v37[26] = v34[8];
  v37[27] = v34[9];
  v37[28] = v34[10];
  v37[29] = v34[11];
  v37[22] = v34[4];
  v37[23] = v34[5];
  v37[24] = v34[6];
  v37[25] = v34[7];
  v37[18] = v34[0];
  v37[19] = v34[1];
  v37[20] = v34[2];
  v37[21] = v34[3];
  v23 = &v37[2] + 8;
  *(&v37[16] + 8) = 0u;
  *(&v37[17] + 1) = 0;
  *(&v37[15] + 8) = 0u;
  *(&v37[14] + 8) = 0u;
  *(&v37[13] + 8) = 0u;
  *(&v37[12] + 8) = 0u;
  *(&v37[11] + 8) = 0u;
  *(&v37[10] + 8) = 0u;
  *(&v37[9] + 8) = 0u;
  *(&v37[8] + 8) = 0u;
  *(&v37[7] + 8) = 0u;
  *(&v37[6] + 8) = 0u;
  *(&v37[5] + 8) = 0u;
  *(&v37[4] + 8) = 0u;
  *(&v37[3] + 8) = 0u;
  *(&v37[2] + 8) = 0u;
  v17 = v37[0];
  v24 = *&v37[1];
  v33[0] = v29;
  v33[1] = v13;
  v28 = LOBYTE(v37[2]);
  v32 = v37[2];
  v31[0] = 0xD00000000000002ALL;
  v31[1] = 0x8000000214792900;
  v26 = 0x8000000214792900;
  v27 = *(&v37[1] + 1);
  v31[2] = 0xD00000000000001CLL;
  v31[3] = 0x800000021478A360;

  v25 = v17;
  v18 = (v17)(v33, &v32, v31);
  if (v18)
  {

    (*(v10 + 8))(v8, v5);

    *&v37[0] = v25;
    *(&v37[0] + 1) = *(&v17 + 1);
    *&v37[1] = v29;
    *(&v37[1] + 1) = v13;
    LOBYTE(v37[2]) = v28;
    memcpy(v31, v36, sizeof(v31));
    v19 = v23;
    sub_213FB2DF4(v23, &qword_27C905500, &qword_2146F2BE0);
    memcpy(v19, v31, 0x1B8uLL);
    memcpy(v30, v37, 0x1E0uLL);
    return __swift_destroy_boxed_opaque_existential_1(v38);
  }

  sub_214031C4C();
  swift_allocError();
  v20 = v26;
  *v21 = 0xD00000000000002ALL;
  v21[1] = v20;
  v21[2] = 0xD00000000000001CLL;
  v21[3] = 0x800000021478A360;
  swift_willThrow();

  sub_213FB2DF4(v36, &qword_27C905500, &qword_2146F2BE0);
  (*(v10 + 8))(v8, v5);

  *&v37[0] = v25;
  *(&v37[0] + 1) = *(&v17 + 1);
  *&v37[1] = v24;
  *(&v37[1] + 1) = v27;
  LOBYTE(v37[2]) = v28;
  __swift_destroy_boxed_opaque_existential_1(v38);
  return sub_214313EFC(v37);
}

uint64_t sub_214255590(void *a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void), uint64_t a5)
{
  v7 = v5;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - v11;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  a4();
  sub_2146DAA28();
  if (*(v7 + 24))
  {
    v17 = 0;

    v13 = v15[1];
    sub_2146DA328();
    if (v13)
    {
      (*(v10 + 8))(v12, v9);
    }

    else
    {

      v16 = 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905500, &qword_2146F2BE0);
      sub_21432076C(qword_280B2E688, &qword_27C905500, &qword_2146F2BE0, byte_214738EE8);
      sub_2146DA388();
      return (*(v10 + 8))(v12, v9);
    }
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

uint64_t TextMessage.MessageSummaryInfo.init(with:hasBeenRetried:translatedMessageParts:sourceApplicationID:associatedBalloonBundleID:)@<X0>(char a1@<W0>, char a2@<W1>, unint64_t a3@<X2>, uint64_t (*a4)(void, void, void)@<X3>, uint64_t a5@<X4>, uint64_t (*a6)(void, void, void)@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  sub_214668D3C(&v42);
  v11 = v42;
  v10 = v43;
  v37 = v42;
  v13 = v44;
  v12 = v45;
  v14 = v46;
  sub_214668D70(&v56);
  v34 = v56;
  v32 = v57;
  v63 = v58;
  v41 = v59;
  v33 = v60;
  v56 = a4;
  v57 = a5;
  v36 = v14;
  v55 = v14;
  v42 = 0xD000000000000032;
  v43 = 0x8000000214792930;
  v44 = 0xD00000000000001CLL;
  v45 = 0x800000021478A360;

  v31 = v13;
  v15 = v13;
  v16 = v12;
  sub_213FDC9D0(v15, v12);
  v17 = v11(&v56, &v55, &v42);
  if (v30)
  {

LABEL_6:

    v23 = v31;
    v19 = v32;

    sub_213FDC6D0(v31, v12);
    v18 = v33;
    v20 = v34;
LABEL_7:
    LOBYTE(v42) = a1;
    BYTE1(v42) = a2;
    *(&v42 + 2) = *&v61[7];
    HIWORD(v42) = v62;
    v43 = a3;
    v44 = v37;
    v45 = v10;
    v46 = v23;
    v47 = v16;
    v48 = v36;
    *v49 = *v61;
    *&v49[3] = *&v61[3];
    v50 = v20;
    v51 = v19;
    v52 = v63;
    v53 = v41;
    v54 = v18;
    return sub_214313FA4(&v42);
  }

  v27 = a5;
  if ((v17 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v22 = 0xD000000000000032;
    v22[1] = 0x8000000214792930;
    v22[2] = 0xD00000000000001CLL;
    v22[3] = 0x800000021478A360;
    swift_willThrow();

    goto LABEL_6;
  }

  sub_213FDC6D0(v31, v12);

  sub_213FDC6D0(v31, v12);
  v56 = a6;
  v57 = a7;
  v18 = v33;
  v55 = v33;
  v42 = 0xD000000000000038;
  v43 = 0x8000000214792970;
  v44 = 0xD00000000000001CLL;
  v45 = 0x800000021478A360;
  v19 = v32;

  sub_213FDC9D0(v63, v41);
  v20 = v34;
  v21 = v34(&v56, &v55, &v42);
  if ((v21 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v26 = 0xD000000000000038;
    v26[1] = 0x8000000214792970;
    v26[2] = 0xD00000000000001CLL;
    v26[3] = 0x800000021478A360;
    swift_willThrow();

    sub_213FDC6D0(v63, v41);
    v23 = a4;
    v16 = v27;
    goto LABEL_7;
  }

  v25 = v63;
  sub_213FDC6D0(v63, v41);

  result = sub_213FDC6D0(v25, v41);
  *a8 = a1;
  *(a8 + 1) = a2;
  *(a8 + 8) = a3;
  *(a8 + 16) = v37;
  *(a8 + 24) = v10;
  *(a8 + 32) = a4;
  *(a8 + 40) = v27;
  *(a8 + 48) = v36;
  *(a8 + 56) = v34;
  *(a8 + 64) = v32;
  *(a8 + 72) = a6;
  *(a8 + 80) = a7;
  *(a8 + 88) = v33;
  return result;
}

unint64_t sub_214255BF8()
{
  v1 = *v0;
  v2 = 0x526E656542736168;
  v3 = 0xD000000000000013;
  if (v1 != 3)
  {
    v3 = 0xD000000000000019;
  }

  if (v1 == 2)
  {
    v3 = 0xD000000000000016;
  }

  if (!*v0)
  {
    v2 = 0xD000000000000019;
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

uint64_t sub_214255CB0@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_21437E434(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_214255CD8(uint64_t a1)
{
  v2 = sub_214313FF8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_214255D14(uint64_t a1)
{
  v2 = sub_214313FF8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t TextMessage.MessageSummaryInfo.init(from:)@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90B210, &qword_2146F63B0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v44 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214313FF8();
  sub_2146DAA08();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905688, &qword_2146F3CF0);
  LOBYTE(v63) = 0;
  sub_2142E1378();
  sub_2146DA1C8();
  v87 = a2;
  v9 = v69;
  LOBYTE(v63) = 1;
  sub_2146DA1C8();
  v62 = v9;
  v10 = v69;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90B218, &qword_2146F63B8);
  LOBYTE(v63) = 2;
  sub_21431404C();
  sub_2146DA1C8();
  v61 = v10;
  v12 = v69;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
  LOBYTE(v63) = 3;
  sub_2142E12FC();
  sub_2146DA1C8();
  v60 = v12;
  v13 = v70;
  v59 = v69;
  v81 = 4;
  sub_2146DA1C8();
  v47 = v82;
  v54 = v83;
  sub_214668D3C(&v69);
  v14 = v70;
  v58 = v69;
  v15 = v72;
  v57 = v71;
  v16 = v73;
  sub_214668D70(&v63);
  v55 = v63;
  v49 = *(&v64 + 1);
  v56 = v64;
  v53 = v65;
  *&v63 = v59;
  v50 = v13;
  *(&v63 + 1) = v13;
  v51 = v16;
  LOBYTE(v68[0]) = v16;
  v69 = 0xD000000000000032;
  v70 = 0x8000000214792930;
  v71 = 0xD00000000000001CLL;
  v72 = 0x800000021478A360;

  v48 = v15;
  sub_213FDC9D0(v57, v15);
  v52 = v14;
  v17 = v58(&v63, v68, &v69);
  v45 = 0x8000000214792930;
  v46 = 0x800000021478A360;
  if (v17)
  {
    v18 = v57;
    v19 = v48;
    sub_213FDC6D0(v57, v48);
    v20 = v46;

    v21 = v52;

    sub_213FDC6D0(v18, v19);
    v68[0] = v47;
    v68[1] = v54;
    LOBYTE(v63) = v53;
    v69 = 0xD000000000000038;
    v70 = 0x8000000214792970;
    v57 = 0x8000000214792970;
    v71 = 0xD00000000000001CLL;
    v72 = v20;

    v22 = v49;
    sub_213FDC9D0(v56, v49);
    v23 = (v55)(v68, &v63, &v69);
    v32 = v57;
    v27 = v62;
    if (v23)
    {
      sub_213FDC6D0(v56, v22);

      (*(v6 + 8))(v8, v5);
      v33 = *(&v55 + 1);

      sub_213FDC6D0(v56, v22);
      LOBYTE(v63) = v27;
      v34 = v61;
      BYTE1(v63) = v61;
      v35 = v60;
      *(&v63 + 1) = v60;
      v36 = v58;
      *&v64 = v58;
      *(&v64 + 1) = v21;
      *&v65 = v59;
      v37 = v50;
      *(&v65 + 1) = v50;
      LOBYTE(v66) = v51;
      *(&v66 + 1) = v55;
      *v67 = v33;
      *&v67[8] = v47;
      *&v67[16] = v54;
      v38 = v53;
      v67[24] = v53;
      v39 = v66;
      v40 = v87;
      v87[2] = v65;
      v40[3] = v39;
      v40[4] = *v67;
      *(v40 + 73) = *&v67[9];
      v41 = v64;
      *v40 = v63;
      v40[1] = v41;
      sub_2143140D0(&v63, &v69);
      __swift_destroy_boxed_opaque_existential_1(a1);
      LOBYTE(v69) = v27;
      BYTE1(v69) = v34;
      *(&v69 + 2) = v85;
      HIWORD(v69) = v86;
      v70 = v35;
      v71 = v36;
      v72 = v52;
      v73 = v59;
      v74 = v37;
      v75 = v51;
      *v76 = *v84;
      *&v76[3] = *&v84[3];
      *&v77 = v55;
      *(&v77 + 1) = v33;
      v78 = v47;
      v79 = v54;
      v80 = v38;
      return sub_214313FA4(&v69);
    }

    sub_214031C4C();
    swift_allocError();
    *v42 = 0xD000000000000038;
    v42[1] = v32;
    v43 = v46;
    v42[2] = 0xD00000000000001CLL;
    v42[3] = v43;
    swift_willThrow();

    (*(v6 + 8))(v8, v5);

    sub_213FDC6D0(v56, v22);
    v28 = v59;
    v29 = v50;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    v24 = v45;
    *v25 = 0xD000000000000032;
    v25[1] = v24;
    v26 = v46;
    v25[2] = 0xD00000000000001CLL;
    v25[3] = v26;
    swift_willThrow();

    v27 = v62;
    v21 = v52;
    v22 = v49;
    (*(v6 + 8))(v8, v5);

    v28 = v57;
    v29 = v48;
    sub_213FDC6D0(v57, v48);
  }

  v30 = v60;
  v31 = v61;
  __swift_destroy_boxed_opaque_existential_1(a1);
  LOBYTE(v69) = v27;
  BYTE1(v69) = v31;
  *(&v69 + 2) = v85;
  HIWORD(v69) = v86;
  v70 = v30;
  v71 = v58;
  v72 = v21;
  v73 = v28;
  v74 = v29;
  v75 = v51;
  *v76 = *v84;
  *&v76[3] = *&v84[3];
  v77 = v55;
  v78 = v56;
  v79 = v22;
  v80 = v53;
  return sub_214313FA4(&v69);
}

uint64_t TextMessage.MessageSummaryInfo.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90B228, &qword_2146F63C0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v16 - v6;
  v8 = *v1;
  v24 = v1[1];
  v9 = *(v1 + 1);
  v10 = *(v1 + 4);
  v20 = *(v1 + 5);
  v21 = v9;
  v12 = *(v1 + 9);
  v11 = *(v1 + 10);
  v18 = v10;
  v19 = v12;
  v17 = v11;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214313FF8();
  sub_2146DAA28();
  LOBYTE(v22) = v8;
  v25 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905688, &qword_2146F3CF0);
  sub_2142E1D30();
  sub_2146DA388();
  if (v2)
  {
    return (*(v5 + 8))(v7, v4);
  }

  v15 = v20;
  v14 = v21;
  LOBYTE(v22) = v24;
  v25 = 1;
  sub_2146DA388();
  v22 = v14;
  v25 = 2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90B218, &qword_2146F63B8);
  sub_21431412C();
  sub_2146DA388();
  if (v15 == 1 || (v22 = v18, v23 = v15, v25 = 3, __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050), sub_214045AC0(), sub_2146DA388(), v17 == 1))
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v22 = v19;
    v23 = v17;
    v25 = 4;
    sub_2146DA388();
    return (*(v5 + 8))(v7, v4);
  }

  return result;
}

BlastDoor::VideoPreview::VideoFormat __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> VideoPreview.VideoFormat.init(with:codec:)(Swift::String_optional with, Swift::String_optional codec)
{
  *v2 = with;
  v2[1] = codec;
  result.codec = codec;
  result.formatName = with;
  return result;
}

uint64_t sub_214256A50(uint64_t a1)
{
  v2 = sub_2143141B0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_214256A8C(uint64_t a1)
{
  v2 = sub_2143141B0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_214256B80@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x614E74616D726F66 && a2 == 0xEA0000000000656DLL;
  if (v6 || (sub_2146DA6A8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6365646F63 && a2 == 0xE500000000000000)
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

uint64_t sub_214256C60(uint64_t a1)
{
  v2 = sub_214314204();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_214256C9C(uint64_t a1)
{
  v2 = sub_214314204();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_214256D1C@<X0>(void *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t (*a4)(void)@<X3>, void *a6@<X8>)
{
  v20 = a6;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v9 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v11 = &v18 - v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  a4();
  sub_2146DAA08();
  if (!v6)
  {
    v12 = v9;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
    v23 = 0;
    sub_2142E12FC();
    v13 = v21;
    sub_2146DA1C8();
    v14 = *(&v22 + 1);
    v19 = v22;
    v23 = 1;
    sub_2146DA1C8();
    (*(v12 + 8))(v11, v13);
    v15 = v22;
    v16 = v20;
    *v20 = v19;
    v16[1] = v14;
    *(v16 + 1) = v15;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_214256F94@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9040B0, &qword_2146EAA00);
  v6 = swift_allocObject();
  v7 = swift_allocObject();
  *(v7 + 16) = 9;
  *(v6 + 16) = sub_214314258;
  *(v6 + 24) = v7;
  *(inited + 32) = v6;
  sub_214044D60(inited, &v15);
  v9 = v15;
  v8 = v16;
  v10 = BYTE1(v17);
  v20 = v4;
  v19 = BYTE1(v17);
  v15 = 0xD000000000000077;
  v16 = 0x80000002147929B0;
  v17 = 0xD00000000000001CLL;
  v18 = 0x800000021478A360;

  v11 = v9(&v20, &v19, &v15);
  if (v2)
  {
  }

  else
  {
    if (v11)
    {

      v13 = v20;
      *a2 = v9;
      *(a2 + 8) = v8;
      *(a2 + 16) = v13;
      *(a2 + 17) = v10;
      return result;
    }

    sub_214031C4C();
    swift_allocError();
    *v14 = 0xD000000000000077;
    v14[1] = 0x80000002147929B0;
    v14[2] = 0xD00000000000001CLL;
    v14[3] = 0x800000021478A360;
    swift_willThrow();
  }
}

uint64_t sub_214257188(uint64_t a1)
{
  v2 = sub_214314260();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2142571C4(uint64_t a1)
{
  v2 = sub_214314260();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_214257200@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90B268, &qword_2146F63F0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v21 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214314260();
  sub_2146DAA08();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  sub_2143142B4();
  sub_2146DA1C8();
  v22 = a2;
  LODWORD(v23) = v24;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9040B0, &qword_2146EAA00);
  v11 = swift_allocObject();
  v12 = swift_allocObject();
  *(v12 + 16) = 9;
  *(v11 + 16) = sub_21438F52C;
  *(v11 + 24) = v12;
  *(inited + 32) = v11;
  sub_214044D60(inited, &v24);
  v14 = v24;
  v13 = v25;
  v30 = v23;
  v28 = BYTE1(v26);
  v29 = BYTE1(v26);
  v23 = 0x80000002147929B0;
  v24 = 0xD000000000000077;
  v25 = 0x80000002147929B0;
  v26 = 0xD00000000000001CLL;
  v27 = 0x800000021478A360;

  v15 = v14;
  v16 = v14(&v30, &v29, &v24);
  v17 = v23;
  if (v16)
  {

    (*(v6 + 8))(v8, v5);

    v18 = v30;
    v19 = v22;
    *v22 = v15;
    v19[1] = v13;
    *(v19 + 16) = v18;
    *(v19 + 17) = v28;
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  sub_214031C4C();
  swift_allocError();
  *v20 = 0xD000000000000077;
  v20[1] = v17;
  v20[2] = 0xD00000000000001CLL;
  v20[3] = 0x800000021478A360;
  swift_willThrow();
  (*(v6 + 8))(v8, v5);

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_2142575EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v7 = swift_allocObject();
  *(v7 + 16) = sub_214059900;
  *(v7 + 24) = 0;
  *(inited + 32) = v7;
  sub_214042B80(inited, &v16);
  v9 = v16;
  v8 = v17;
  v10 = v20;
  v15[0] = a1;
  v15[1] = a2;
  v21 = v20;
  v16 = 0xD000000000000084;
  v17 = 0x8000000214792A30;
  v18 = 0xD00000000000001CLL;
  v19 = 0x800000021478A360;

  v11 = v9(v15, &v21, &v16);
  if (v3)
  {
  }

  else
  {
    if (v11)
    {

      result = swift_bridgeObjectRelease_n();
      *a3 = v9;
      *(a3 + 8) = v8;
      *(a3 + 16) = a1;
      *(a3 + 24) = a2;
      *(a3 + 32) = v10;
      return result;
    }

    sub_214031C4C();
    swift_allocError();
    *v13 = 0xD000000000000084;
    v13[1] = 0x8000000214792A30;
    v13[2] = 0xD00000000000001CLL;
    v13[3] = 0x800000021478A360;
    swift_willThrow();
  }
}

uint64_t sub_214257804@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000018 && 0x8000000214797360 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = sub_2146DA6A8();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t sub_214257898(uint64_t a1)
{
  v2 = sub_21431435C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2142578D4(uint64_t a1)
{
  v2 = sub_21431435C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_214257910@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90B290, &qword_2146F6400);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v24 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21431435C();
  sub_2146DAA08();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v9 = sub_2146DA168();
  v25 = a2;
  v29 = v9;
  v12 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v14 = swift_allocObject();
  *(v14 + 16) = sub_214059900;
  *(v14 + 24) = 0;
  *(inited + 32) = v14;
  sub_214042B80(inited, &v31);
  v16 = v31;
  v15 = v32;
  v30[0] = v29;
  v30[1] = v12;
  v27 = v34;
  v28 = v12;
  v36 = v35;
  v37 = v35;
  v31 = 0xD000000000000084;
  v32 = 0x8000000214792A30;
  v26 = 0x8000000214792A30;
  v33 = 0xD00000000000001CLL;
  v34 = 0x800000021478A360;

  v17 = v16;
  v18 = v16(v30, &v37, &v31);
  v19 = v36;
  v24 = v17;
  if (v18)
  {

    (*(v6 + 8))(v8, v5);

    v20 = v25;
    *v25 = v24;
    v20[1] = v15;
    v21 = v28;
    v20[2] = v29;
    v20[3] = v21;
    *(v20 + 32) = v19;
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  sub_214031C4C();
  swift_allocError();
  v22 = v26;
  *v23 = 0xD000000000000084;
  v23[1] = v22;
  v23[2] = 0xD00000000000001CLL;
  v23[3] = 0x800000021478A360;
  swift_willThrow();

  (*(v6 + 8))(v8, v5);

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_214257D1C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746E65746E6F63 && a2 == 0xE700000000000000;
  if (v4 || (sub_2146DA6A8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x74616D726F66 && a2 == 0xE600000000000000)
  {

    return 1;
  }

  else
  {
    v6 = sub_2146DA6A8();

    if (v6)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_214257E1C(char a1)
{
  sub_2146DA958();
  MEMORY[0x216055860](a1 & 1);
  return sub_2146DA9B8();
}

uint64_t sub_214257E64(char a1)
{
  if (a1)
  {
    return 0x74616D726F66;
  }

  else
  {
    return 0x746E65746E6F63;
  }
}

uint64_t sub_214257EB4(uint64_t a1)
{
  sub_2146DA958();
  sub_214257DF4(v3, *v1);
  return sub_2146DA9B8();
}

uint64_t sub_214257EFC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_214257D1C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_214257F24@<X0>(_BYTE *a2@<X8>)
{
  result = sub_21437E5F8();
  *a2 = result;
  return result;
}

uint64_t sub_214257F50(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable(byte_214728564, a1);

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_214257FA4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable(byte_214728564, a1);

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t sub_214257FF8@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v24 = a3;
  v26 = *(a2 - 8);
  v6 = MEMORY[0x28223BE20](a1);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v27 = v9;
  v28 = &v22 - v10;
  v13 = _s10CodingKeysOMa_175(255, v11, v9, v12);
  swift_getWitnessTable(byte_214728564, v13);
  v29 = sub_2146DA258();
  v25 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v15 = &v22 - v14;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2146DAA08();
  if (v3)
  {
    v21 = a1;
  }

  else
  {
    v23 = a1;
    v16 = v25;
    v17 = v26;
    v30[3] = 0;
    v18 = v27;
    sub_2146DA1C8();
    v30[1] = 1;
    sub_2143143C8();
    sub_2146DA1C8();
    (*(v16 + 8))(v15, v29);
    v20 = v30[2];
    (*(v17 + 32))(v8, v28, a2);
    v30[0] = v20;
    sub_214424C64(v8, v30, a2, v18, v24);
    v21 = v23;
  }

  return __swift_destroy_boxed_opaque_existential_1(v21);
}

uint64_t sub_2142582D8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[0] = a2;
  v5 = *(a2 + 24);
  v15 = *(a2 + 16);
  v6 = _s10CodingKeysOMa_175(255, v15, v5, a4);
  swift_getWitnessTable(byte_214728564, v6);
  v7 = sub_2146DA3F8();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v14 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v11 = v14[1];
  sub_2146DAA28();
  v19 = 0;
  v12 = v16;
  sub_2146DA388();
  if (!v12)
  {
    v18 = *(v11 + *(v14[0] + 36));
    v17 = 1;
    sub_21431441C();
    sub_2146DA388();
  }

  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_2142584D4@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9040B0, &qword_2146EAA00);
  v6 = swift_allocObject();
  v7 = swift_allocObject();
  *(v7 + 16) = 10;
  *(v6 + 16) = sub_21438F52C;
  *(v6 + 24) = v7;
  *(inited + 32) = v6;
  sub_214044D60(inited, &v15);
  v9 = v15;
  v8 = v16;
  v10 = BYTE1(v17);
  v20 = v4;
  v19 = BYTE1(v17);
  v15 = 0xD000000000000052;
  v16 = 0x8000000214792AC0;
  v17 = 0xD00000000000001CLL;
  v18 = 0x800000021478A360;

  v11 = v9(&v20, &v19, &v15);
  if (v2)
  {
  }

  else
  {
    if (v11)
    {

      v13 = v20;
      *a2 = v9;
      *(a2 + 8) = v8;
      *(a2 + 16) = v13;
      *(a2 + 17) = v10;
      return result;
    }

    sub_214031C4C();
    swift_allocError();
    *v14 = 0xD000000000000052;
    v14[1] = 0x8000000214792AC0;
    v14[2] = 0xD00000000000001CLL;
    v14[3] = 0x800000021478A360;
    swift_willThrow();
  }
}

uint64_t sub_2142586A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x44676E6972616873 && a2 == 0xEF65707954617461)
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

uint64_t sub_214258734(uint64_t a1)
{
  v2 = sub_214314470();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_214258770(uint64_t a1)
{
  v2 = sub_214314470();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2142587AC@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90B2B8, &qword_2146F6410);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v21 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214314470();
  sub_2146DAA08();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  sub_2143142B4();
  sub_2146DA1C8();
  v22 = a2;
  LODWORD(v23) = v24;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9040B0, &qword_2146EAA00);
  v11 = swift_allocObject();
  v12 = swift_allocObject();
  *(v12 + 16) = 10;
  *(v11 + 16) = sub_21438F52C;
  *(v11 + 24) = v12;
  *(inited + 32) = v11;
  sub_214044D60(inited, &v24);
  v14 = v24;
  v13 = v25;
  v30 = v23;
  v28 = BYTE1(v26);
  v29 = BYTE1(v26);
  v23 = 0x8000000214792AC0;
  v24 = 0xD000000000000052;
  v25 = 0x8000000214792AC0;
  v26 = 0xD00000000000001CLL;
  v27 = 0x800000021478A360;

  v15 = v14;
  v16 = v14(&v30, &v29, &v24);
  v17 = v23;
  if (v16)
  {

    (*(v6 + 8))(v8, v5);

    v18 = v30;
    v19 = v22;
    *v22 = v15;
    v19[1] = v13;
    *(v19 + 16) = v18;
    *(v19 + 17) = v28;
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  sub_214031C4C();
  swift_allocError();
  *v20 = 0xD000000000000052;
  v20[1] = v17;
  v20[2] = 0xD00000000000001CLL;
  v20[3] = 0x800000021478A360;
  swift_willThrow();
  (*(v6 + 8))(v8, v5);

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_214258B68(void *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void), uint64_t a5)
{
  v13 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v13 - v9;
  v11 = *(v5 + 16);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v13();
  sub_2146DAA28();
  if (v11 == 14)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v14 = v11;
    sub_214314308();
    sub_2146DA388();
    return (*(v8 + 8))(v10, v7);
  }

  return result;
}

uint64_t sub_214258D34@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_2146A9CEC(&v15);
  v6 = v15;
  v7 = v16;
  v8 = v19;
  v14[0] = a1;
  v14[1] = a2;
  v20 = v19;
  v15 = 0xD00000000000004ALL;
  v16 = 0x8000000214792B20;
  v17 = 0xD00000000000001CLL;
  v18 = 0x800000021478A360;
  v9 = v6;

  v10 = v9(v14, &v20, &v15);
  if (v3)
  {
  }

  else
  {
    if (v10)
    {

      result = swift_bridgeObjectRelease_n();
      *a3 = v9;
      *(a3 + 8) = v7;
      *(a3 + 16) = a1;
      *(a3 + 24) = a2;
      *(a3 + 32) = v8;
      return result;
    }

    sub_214031C4C();
    swift_allocError();
    *v12 = 0xD00000000000004ALL;
    v12[1] = 0x8000000214792B20;
    v12[2] = 0xD00000000000001CLL;
    v12[3] = 0x800000021478A360;
    swift_willThrow();
  }
}

uint64_t sub_214258ECC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 7107189 && a2 == 0xE300000000000000)
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

uint64_t sub_214258F54(uint64_t a1)
{
  v2 = sub_2143144C4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_214258F90(uint64_t a1)
{
  v2 = sub_2143144C4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_214258FCC@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90B2D0, &qword_2146F6420);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v21 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2143144C4();
  sub_2146DAA08();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v9 = sub_2146DA168();
  v23 = a2;
  v12 = v11;
  v13 = v9;
  sub_2146A9CEC(&v29);
  v15 = v29;
  v14 = v30;
  v24 = v13;
  v28[0] = v13;
  v28[1] = v12;
  v26 = v12;
  v27 = v32;
  v34 = v33;
  v35 = v33;
  v29 = 0xD00000000000004ALL;
  v30 = 0x8000000214792B20;
  v31 = 0xD00000000000001CLL;
  v32 = 0x800000021478A360;

  v25 = v14;
  v16 = v15(v28, &v35, &v29);
  v22 = v15;
  if (v16)
  {

    (*(v6 + 8))(v8, v5);

    v17 = v25;

    v18 = v23;
    *v23 = v22;
    v18[1] = v17;
    v19 = v26;
    v18[2] = v24;
    v18[3] = v19;
    *(v18 + 32) = v34;
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  sub_214031C4C();
  swift_allocError();
  *v20 = 0xD00000000000004ALL;
  v20[1] = 0x8000000214792B20;
  v20[2] = 0xD00000000000001CLL;
  v20[3] = 0x800000021478A360;
  swift_willThrow();

  (*(v6 + 8))(v8, v5);

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_214259348@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  sub_21408AC04(a1, a3, &qword_27C904860, &qword_2146EDB50);
  result = type metadata accessor for LinkPresentation.MessagesPayload(0);
  *(a3 + *(result + 20)) = a2;
  return result;
}

uint64_t sub_2142593A4()
{
  if (*v0)
  {
    return 0x686563616C507369;
  }

  else
  {
    return 0x6174654D6B6E696CLL;
  }
}

uint64_t sub_2142593F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6174654D6B6E696CLL && a2 == 0xEC00000061746164;
  if (v6 || (sub_2146DA6A8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x686563616C507369 && a2 == 0xED00007265646C6FLL)
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

uint64_t sub_2142594DC(uint64_t a1)
{
  v2 = sub_214314518();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_214259518(uint64_t a1)
{
  v2 = sub_214314518();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_214259554@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v15 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904860, &qword_2146EDB50);
  MEMORY[0x28223BE20](v4);
  v6 = &v15 - v5;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90B2E8, &qword_2146F6438);
  v7 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v9 = &v15 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214314518();
  sub_2146DAA08();
  if (!v2)
  {
    v10 = v7;
    v11 = v15;
    v18 = 0;
    sub_21431456C();
    v12 = v16;
    sub_2146DA1C8();
    v17 = 1;
    v14 = sub_2146DA178();
    (*(v10 + 8))(v9, v12);
    sub_21408AC04(v6, v11, &qword_27C904860, &qword_2146EDB50);
    *(v11 + *(type metadata accessor for LinkPresentation.MessagesPayload(0) + 20)) = v14 & 1;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_2142597AC(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90B300, &unk_2146F6440);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214314518();
  sub_2146DAA28();
  v8[15] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904860, &qword_2146EDB50);
  sub_214314620();
  sub_2146DA388();
  if (!v1)
  {
    type metadata accessor for LinkPresentation.MessagesPayload(0);
    v8[14] = 1;
    sub_2146DA338();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_214259970@<X0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, _DWORD *a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, _OWORD *a30, uint64_t a31, uint64_t a32, uint64_t a33, _OWORD *a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52)
{
  *a9 = a1;
  v84 = *(a25 + 32);
  v92 = *(a32 + 32);
  v53 = type metadata accessor for LinkPresentation.LinkMetadata(0);
  sub_21408AC04(a2, a9 + v53[5], &unk_27C9131A0, &unk_2146E9D10);
  sub_21408AC04(a3, a9 + v53[6], &unk_27C9131A0, &unk_2146E9D10);
  v54 = (a9 + v53[7]);
  *v54 = a4;
  v54[1] = a5;
  v55 = (a9 + v53[8]);
  *v55 = a6;
  v55[1] = a7;
  v56 = (a9 + v53[9]);
  *v56 = a8;
  v56[1] = a10;
  v57 = (a9 + v53[10]);
  *v57 = a11;
  v57[1] = a12;
  v58 = (a9 + v53[11]);
  *v58 = a13;
  v58[1] = a14;
  sub_21408AC04(a15, a9 + v53[12], &unk_27C9131A0, &unk_2146E9D10);
  v59 = (a9 + v53[13]);
  *v59 = a16;
  v59[1] = a17;
  v60 = (a9 + v53[14]);
  *v60 = a18;
  v60[1] = a19;
  v61 = (a9 + v53[15]);
  *v61 = a20;
  v61[1] = a21;
  v62 = (a9 + v53[16]);
  *v62 = a22;
  v62[1] = a23;
  *(a9 + v53[17]) = a24;
  v63 = a9 + v53[18];
  v64 = *(a25 + 16);
  *v63 = *a25;
  *(v63 + 1) = v64;
  v63[32] = v84;
  v65 = (a9 + v53[19]);
  *v65 = a26;
  v65[1] = a27;
  v66 = (a9 + v53[20]);
  *v66 = a28;
  v66[1] = a29;
  v67 = (a9 + v53[21]);
  v68 = a30[3];
  v67[2] = a30[2];
  v67[3] = v68;
  v69 = a30[1];
  *v67 = *a30;
  v67[1] = v69;
  *(v67 + 105) = *(a30 + 105);
  v70 = a30[6];
  v67[5] = a30[5];
  v67[6] = v70;
  v67[4] = a30[4];
  sub_21408AC04(a31, a9 + v53[22], &qword_27C904C38, &qword_2146EE6B8);
  v71 = a9 + v53[23];
  v72 = *(a32 + 16);
  *v71 = *a32;
  *(v71 + 1) = v72;
  *(v71 + 4) = v92;
  sub_21408AC04(a33, a9 + v53[24], &qword_27C904C40, &qword_2146EE6C0);
  v73 = (a9 + v53[25]);
  v74 = a34[5];
  v73[4] = a34[4];
  v73[5] = v74;
  v73[6] = a34[6];
  *(v73 + 105) = *(a34 + 105);
  v75 = a34[1];
  *v73 = *a34;
  v73[1] = v75;
  v76 = a34[3];
  v73[2] = a34[2];
  v73[3] = v76;
  *(a9 + v53[26]) = a35;
  sub_21408AC04(a36, a9 + v53[27], &qword_27C904C48, &qword_2146EE6C8);
  *(a9 + v53[28]) = a37;
  *(a9 + v53[29]) = a38;
  sub_21408AC04(a39, a9 + v53[30], &qword_27C904888, &unk_2146EDB80);
  sub_21408AC04(a40, a9 + v53[31], &qword_27C904C50, &unk_2146EE6D0);
  sub_21408AC04(a41, a9 + v53[32], &qword_27C904C58, &unk_2146F6450);
  sub_21408AC04(a42, a9 + v53[33], &qword_27C904C60, &qword_2146EE6E0);
  *(a9 + v53[34]) = a43;
  *(a9 + v53[35]) = a44;
  *(a9 + v53[36]) = a45;
  *(a9 + v53[37]) = a46;
  *(a9 + v53[38]) = a47;
  *(a9 + v53[39]) = a48;
  *(a9 + v53[40]) = a49;
  sub_21408AC04(a50, a9 + v53[41], &qword_27C904870, &qword_2146EDB60);
  v77 = a9 + v53[42];
  v78 = *(a51 + 144);
  *(v77 + 8) = *(a51 + 128);
  *(v77 + 9) = v78;
  *(v77 + 10) = *(a51 + 160);
  *(v77 + 22) = *(a51 + 176);
  v79 = *(a51 + 80);
  *(v77 + 4) = *(a51 + 64);
  *(v77 + 5) = v79;
  v80 = *(a51 + 112);
  *(v77 + 6) = *(a51 + 96);
  *(v77 + 7) = v80;
  v81 = *(a51 + 16);
  *v77 = *a51;
  *(v77 + 1) = v81;
  v82 = *(a51 + 48);
  *(v77 + 2) = *(a51 + 32);
  *(v77 + 3) = v82;
  return sub_21408AC04(a52, a9 + v53[43], &qword_27C904C68, &qword_2146EE6E8);
}

unint64_t sub_214259E5C(char a1)
{
  result = 0x6E6F6973726576;
  switch(a1)
  {
    case 1:
      return 0x6C616E696769726FLL;
    case 2:
      return 0x4C525565746973;
    case 3:
      return 0x656C746974;
    case 4:
      return 0x7972616D6D7573;
    case 5:
      return 0x64657463656C6573;
    case 6:
      return 0x656D614E65746973;
    case 7:
      return 0x657079546D657469;
    case 8:
      return 0x55646574616C6572;
    case 9:
      return 0x726F7461657263;
    case 10:
    case 11:
    case 33:
      return 0xD000000000000016;
    case 12:
      return 0x4372657474697774;
    case 13:
      return 0x6974634173657375;
    case 14:
      return 0x6C6F43656D656874;
    case 15:
      return 0x6E6F43656C707061;
    case 16:
      return 0x6D7553656C707061;
    case 17:
      return 1852793705;
    case 18:
      return 0x6174654D6E6F6369;
    case 19:
      return 0x74657373417261;
    case 20:
      return 0x4D74657373417261;
    case 21:
      return 0x6567616D69;
    case 22:
      return 0x74616E7265746C61;
    case 23:
      v4 = 0x4D6567616D69;
      goto LABEL_38;
    case 24:
      return 0x49746E65746E6F63;
    case 25:
      return 0xD000000000000015;
    case 26:
      return 0x6F65646976;
    case 27:
      v3 = 1701079414;
      goto LABEL_37;
    case 28:
      return 0x6F69647561;
    case 29:
      v3 = 1768191329;
LABEL_37:
      v4 = v3 & 0xFFFF0000FFFFFFFFLL | 0x4D6F00000000;
LABEL_38:
      result = v4 & 0xFFFFFFFFFFFFLL | 0x7465000000000000;
      break;
    case 30:
      result = 0x7374657373417261;
      break;
    case 31:
      result = 0x736E6F6369;
      break;
    case 32:
      result = 0x736567616D69;
      break;
    case 34:
      result = 0x736F65646976;
      break;
    case 35:
      result = 0x6E696D6165727473;
      break;
    case 36:
      result = 0x736F69647561;
      break;
    case 37:
      result = 0x696C616963657073;
      break;
    case 38:
      result = 0xD000000000000015;
      break;
    case 39:
      result = 0xD000000000000015;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_21425A278@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_21437E600(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_21425A2A0(uint64_t a1)
{
  v2 = sub_2143146D4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21425A2DC(uint64_t a1)
{
  v2 = sub_2143146D4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21425A318@<X0>(void *a1@<X0>, _DWORD *a2@<X8>)
{
  v178 = a2;
  v177 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904C68, &qword_2146EE6E8);
  MEMORY[0x28223BE20](v177);
  v179 = &v138 - v3;
  v176 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904870, &qword_2146EDB60);
  MEMORY[0x28223BE20](v176);
  v180 = (&v138 - v4);
  v175 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904C60, &qword_2146EE6E0);
  MEMORY[0x28223BE20](v175);
  v181 = (&v138 - v5);
  v174 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904C58, &unk_2146F6450);
  MEMORY[0x28223BE20](v174);
  v182 = (&v138 - v6);
  v173 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904C50, &unk_2146EE6D0);
  MEMORY[0x28223BE20](v173);
  v183 = (&v138 - v7);
  v172 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904888, &unk_2146EDB80);
  MEMORY[0x28223BE20](v172);
  v184 = (&v138 - v8);
  v171 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904C48, &qword_2146EE6C8);
  MEMORY[0x28223BE20](v171);
  v185 = (&v138 - v9);
  v170 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904C40, &qword_2146EE6C0);
  MEMORY[0x28223BE20](v170);
  v186 = (&v138 - v10);
  v169 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904C38, &qword_2146EE6B8);
  MEMORY[0x28223BE20](v169);
  v187 = (&v138 - v11);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9131A0, &unk_2146E9D10);
  v13 = MEMORY[0x28223BE20](v12);
  v15 = &v138 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v138 - v17;
  MEMORY[0x28223BE20](v16);
  v20 = &v138 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90B310, &unk_2146F6460);
  v22 = *(v21 - 8);
  v188 = v21;
  v189 = v22;
  MEMORY[0x28223BE20](v21);
  v24 = &v138 - v23;
  v25 = a1[3];
  v191 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v25);
  sub_2143146D4();
  v190 = v24;
  v26 = v243;
  sub_2146DAA08();
  if (!v26)
  {
    v166 = v15;
    v167 = v18;
    v168 = v20;
    LOBYTE(v206) = 0;
    v27 = v188;
    v28 = v190;
    v29 = sub_2146DA218();
    v243 = 0;
    v30 = v29;
    LOBYTE(v206) = 1;
    sub_2142E27A8();
    v31 = v243;
    sub_2146DA1C8();
    v32 = v189;
    if (v31)
    {
      v243 = v31;
      (*(v189 + 8))(v28, v27);
      return __swift_destroy_boxed_opaque_existential_1(v191);
    }

    LOBYTE(v206) = 2;
    sub_2146DA1C8();
    v243 = 0;
    v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
    LOBYTE(v193) = 3;
    v35 = sub_2142E12FC();
    v36 = v243;
    sub_2146DA1C8();
    if (v36)
    {
      v243 = v36;
      sub_213FB2DF4(v167, &unk_27C9131A0, &unk_2146E9D10);
      sub_213FB2DF4(v168, &unk_27C9131A0, &unk_2146E9D10);
      (*(v32 + 8))(v190, v27);
      return __swift_destroy_boxed_opaque_existential_1(v191);
    }

    v164 = v30;
    v37 = *(&v206 + 1);
    v163 = v206;
    LOBYTE(v193) = 4;
    v165 = v35;
    sub_2146DA1C8();
    v161 = v206;
    v162 = v37;
    v38 = *(&v206 + 1);
    LOBYTE(v193) = 5;
    sub_2146DA1C8();
    v159 = v206;
    v160 = v38;
    v39 = *(&v206 + 1);
    LOBYTE(v193) = 6;
    sub_2146DA1C8();
    v157 = v34;
    v158 = v39;
    v40 = *(&v206 + 1);
    v156 = v206;
    LOBYTE(v193) = 7;
    sub_2146DA1C8();
    v154 = v206;
    v155 = v40;
    v41 = *(&v206 + 1);
    LOBYTE(v206) = 8;
    sub_2146DA1C8();
    v243 = 0;
    LOBYTE(v193) = 9;
    sub_2146DA1C8();
    v243 = 0;
    v153 = *(&v206 + 1);
    v42 = v206;
    LOBYTE(v193) = 10;
    sub_2146DA1C8();
    v243 = 0;
    v152 = *(&v206 + 1);
    v43 = v206;
    LOBYTE(v193) = 11;
    sub_2146DA1C8();
    v243 = 0;
    v151 = v206;
    LOBYTE(v193) = 12;
    sub_2146DA1C8();
    v243 = 0;
    v150 = v206;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905688, &qword_2146F3CF0);
    LOBYTE(v193) = 13;
    sub_2142E1378();
    v44 = v243;
    sub_2146DA1C8();
    v243 = v44;
    if (v44 || (v149 = v206, __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908590, &qword_2146F50C8), LOBYTE(v193) = 14, sub_2142FD5B0(), v45 = v243, sub_2146DA1C8(), (v243 = v45) != 0))
    {

LABEL_13:

LABEL_14:
      sub_213FB2DF4(v166, &unk_27C9131A0, &unk_2146E9D10);
      sub_213FB2DF4(v167, &unk_27C9131A0, &unk_2146E9D10);
      sub_213FB2DF4(v168, &unk_27C9131A0, &unk_2146E9D10);
      (*(v189 + 8))(v190, v188);
      return __swift_destroy_boxed_opaque_existential_1(v191);
    }

    v148 = v207;
    v146 = v206;
    v147 = v208;
    LOBYTE(v193) = 15;
    sub_2146DA1C8();
    v243 = 0;
    v145 = v206;
    LOBYTE(v193) = 16;
    sub_2146DA1C8();
    v243 = 0;
    v165 = *(&v206 + 1);
    v157 = v206;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904868, &qword_2146EDB58);
    v240 = 17;
    sub_214314728();
    v46 = v243;
    sub_2146DA1C8();
    v243 = v46;
    if (v46)
    {

      goto LABEL_13;
    }

    v237 = v241[4];
    v238 = v241[5];
    *v239 = v242[0];
    *&v239[9] = *(v242 + 9);
    v233 = v241[0];
    v234 = v241[1];
    v235 = v241[2];
    v236 = v241[3];
    LOBYTE(v206) = 18;
    sub_2143147AC();
    v47 = v243;
    sub_2146DA1C8();
    v243 = v47;
    if (v47)
    {

      v48 = &qword_27C904868;
      v49 = &qword_2146EDB58;
      v50 = &v233;
LABEL_25:
      sub_213FB2DF4(v50, v48, v49);
      goto LABEL_14;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90B330, &qword_2146F6470);
    LOBYTE(v193) = 19;
    sub_214314860();
    v51 = v243;
    sub_2146DA1C8();
    v243 = v51;
    if (v51)
    {

      v52 = &qword_27C904868;
      v53 = &qword_2146EDB58;
      v54 = &v233;
LABEL_21:
      sub_213FB2DF4(v54, v52, v53);
LABEL_24:
      v48 = &qword_27C904C38;
      v49 = &qword_2146EE6B8;
      v50 = v187;
      goto LABEL_25;
    }

    v143 = v206;
    v169 = *(&v207 + 1);
    v144 = v207;
    v142 = v208;
    LOBYTE(v206) = 20;
    sub_2143148E4();
    v55 = v243;
    sub_2146DA1C8();
    v243 = v55;
    if (v55)
    {

      sub_213FB2DF4(&v233, &qword_27C904868, &qword_2146EDB58);
      sub_214314998(v143, *(&v143 + 1), v144, v169, v142);
      goto LABEL_24;
    }

    v225 = 21;
    sub_2146DA1C8();
    v243 = 0;
    v222 = v230;
    v223 = v231;
    *v224 = v232[0];
    *&v224[9] = *(v232 + 9);
    v218 = v226;
    v219 = v227;
    v220 = v228;
    v221 = v229;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90B348, &unk_2146F6478);
    LOBYTE(v193) = 22;
    sub_2143149E0();
    v56 = v243;
    sub_2146DA1C8();
    v243 = v56;
    if (v56)
    {

LABEL_30:

      sub_213FB2DF4(&v233, &qword_27C904868, &qword_2146EDB58);
      sub_214314998(v143, *(&v143 + 1), v144, v169, v142);
      v58 = &v218;
      v59 = &qword_27C904868;
      v60 = &qword_2146EDB58;
LABEL_31:
      sub_213FB2DF4(v58, v59, v60);
      v52 = &qword_27C904C40;
      v53 = &qword_2146EE6C0;
      v54 = v186;
      goto LABEL_21;
    }

    v170 = v206;
    LOBYTE(v206) = 23;
    sub_214314AE8();
    v57 = v243;
    sub_2146DA1C8();
    v243 = v57;
    if (v57)
    {

      goto LABEL_30;
    }

    LOBYTE(v193) = 24;
    sub_2146DA1C8();
    v243 = 0;
    v171 = v206;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90B368, &qword_2146F6488);
    LOBYTE(v193) = 25;
    sub_214314B9C();
    v61 = v243;
    sub_2146DA1C8();
    v243 = v61;
    if (v61)
    {

LABEL_36:

      sub_213FB2DF4(&v233, &qword_27C904868, &qword_2146EDB58);
      sub_214314998(v143, *(&v143 + 1), v144, v169, v142);
      v63 = &v218;
      v64 = &qword_27C904868;
      v65 = &qword_2146EDB58;
LABEL_37:
      sub_213FB2DF4(v63, v64, v65);
      v59 = &qword_27C904C48;
      v60 = &qword_2146EE6C8;
      v58 = v185;
      goto LABEL_31;
    }

    v141 = v206;
    LOBYTE(v206) = 26;
    sub_214314CD4();
    v62 = v243;
    sub_2146DA1C8();
    v243 = v62;
    if (v62)
    {

      goto LABEL_36;
    }

    LOBYTE(v206) = 27;
    sub_214314D88();
    v66 = v243;
    sub_2146DA1C8();
    v243 = v66;
    if (v66)
    {

      sub_213FB2DF4(&v233, &qword_27C904868, &qword_2146EDB58);
      sub_214314998(v143, *(&v143 + 1), v144, v169, v142);
      v67 = &v218;
      v68 = &qword_27C904868;
      v69 = &qword_2146EDB58;
LABEL_55:
      sub_213FB2DF4(v67, v68, v69);
      v64 = &qword_27C904888;
      v65 = &unk_2146EDB80;
      v63 = v184;
      goto LABEL_37;
    }

    LOBYTE(v206) = 28;
    sub_214314E3C();
    v70 = v243;
    sub_2146DA1C8();
    v243 = v70;
    if (v70)
    {

      sub_213FB2DF4(&v233, &qword_27C904868, &qword_2146EDB58);
      sub_214314998(v143, *(&v143 + 1), v144, v169, v142);
      v71 = &v218;
      v72 = &qword_27C904868;
      v73 = &qword_2146EDB58;
LABEL_54:
      sub_213FB2DF4(v71, v72, v73);
      v68 = &qword_27C904C50;
      v69 = &unk_2146EE6D0;
      v67 = v183;
      goto LABEL_55;
    }

    LOBYTE(v206) = 29;
    sub_214314EF0();
    v74 = v243;
    sub_2146DA1C8();
    v243 = v74;
    if (v74)
    {

      sub_213FB2DF4(&v233, &qword_27C904868, &qword_2146EDB58);
      sub_214314998(v143, *(&v143 + 1), v144, v169, v142);
      v75 = &v218;
      v76 = &qword_27C904868;
      v77 = &qword_2146EDB58;
LABEL_53:
      sub_213FB2DF4(v75, v76, v77);
      v72 = &qword_27C904C58;
      v73 = &unk_2146F6450;
      v71 = v182;
      goto LABEL_54;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90B3A0, &unk_2146F6498);
    LOBYTE(v193) = 30;
    sub_214314FA4();
    v78 = v243;
    sub_2146DA1C8();
    v243 = v78;
    if (v78)
    {
    }

    else
    {
      v175 = v206;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90B3B8, &qword_2146F64A8);
      LOBYTE(v193) = 31;
      sub_2143150DC();
      v79 = v243;
      sub_2146DA1C8();
      v243 = v79;
      if (v79)
      {
      }

      else
      {
        v174 = v206;
        LOBYTE(v193) = 32;
        sub_2146DA1C8();
        v243 = 0;
        v173 = v206;
        LOBYTE(v193) = 33;
        sub_2146DA1C8();
        v243 = 0;
        v172 = v206;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90B3D0, &unk_2146F64B8);
        LOBYTE(v193) = 34;
        sub_214315214();
        v80 = v243;
        sub_2146DA1C8();
        v243 = v80;
        if (v80)
        {
        }

        else
        {
          v140 = v206;
          LOBYTE(v193) = 35;
          sub_2146DA1C8();
          v243 = 0;
          v139 = v206;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90B3E8, &qword_2146F64C8);
          LOBYTE(v193) = 36;
          sub_21431534C();
          v84 = v243;
          sub_2146DA1C8();
          v243 = v84;
          if (v84)
          {
          }

          else
          {
            v85 = v206;
            LOBYTE(v206) = 37;
            sub_214315484();
            v86 = v243;
            sub_2146DA1C8();
            v243 = v86;
            if (!v86)
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90B408, &qword_2146F64D8);
              v205 = 38;
              sub_214315538();
              v87 = v243;
              sub_2146DA1C8();
              v243 = v87;
              if (v87)
              {

                sub_213FB2DF4(&v233, &qword_27C904868, &qword_2146EDB58);
                sub_214314998(v143, *(&v143 + 1), v144, v169, v142);
                v88 = &v218;
                v89 = &qword_27C904868;
                v90 = &qword_2146EDB58;
              }

              else
              {
                v201 = v214;
                v202 = v215;
                v203 = v216;
                v204 = v217;
                v197 = v210;
                v198 = v211;
                v199 = v212;
                v200 = v213;
                v193 = v206;
                v194 = v207;
                v195 = v208;
                v196 = v209;
                v192 = 39;
                sub_2143155BC();
                v91 = v243;
                sub_2146DA1C8();
                v243 = v91;
                if (!v91)
                {
                  (*(v189 + 8))(v190, v188);
                  v92 = type metadata accessor for LinkPresentation.LinkMetadata(0);
                  v93 = v178;
                  sub_21408AC04(v168, v178 + v92[5], &unk_27C9131A0, &unk_2146E9D10);
                  sub_21408AC04(v167, v93 + v92[6], &unk_27C9131A0, &unk_2146E9D10);
                  sub_21408AC04(v166, v93 + v92[12], &unk_27C9131A0, &unk_2146E9D10);
                  sub_21408AC04(v187, v93 + v92[22], &qword_27C904C38, &qword_2146EE6B8);
                  sub_21408AC04(v186, v93 + v92[24], &qword_27C904C40, &qword_2146EE6C0);
                  sub_21408AC04(v185, v93 + v92[27], &qword_27C904C48, &qword_2146EE6C8);
                  sub_21408AC04(v184, v93 + v92[30], &qword_27C904888, &unk_2146EDB80);
                  sub_21408AC04(v183, v93 + v92[31], &qword_27C904C50, &unk_2146EE6D0);
                  sub_21408AC04(v182, v93 + v92[32], &qword_27C904C58, &unk_2146F6450);
                  sub_21408AC04(v181, v93 + v92[33], &qword_27C904C60, &qword_2146EE6E0);
                  sub_21408AC04(v180, v93 + v92[41], &qword_27C904870, &qword_2146EDB60);
                  sub_21408AC04(v179, v93 + v92[43], &qword_27C904C68, &qword_2146EE6E8);
                  *v93 = v164;
                  v94 = (v93 + v92[7]);
                  v95 = v162;
                  *v94 = v163;
                  v94[1] = v95;
                  v96 = (v93 + v92[8]);
                  v97 = v160;
                  *v96 = v161;
                  v96[1] = v97;
                  v98 = (v93 + v92[9]);
                  v99 = v158;
                  *v98 = v159;
                  v98[1] = v99;
                  v100 = (v93 + v92[10]);
                  v101 = v155;
                  *v100 = v156;
                  v100[1] = v101;
                  v102 = (v93 + v92[11]);
                  v103 = v153;
                  *v102 = v154;
                  v102[1] = v41;
                  v104 = (v93 + v92[13]);
                  *v104 = v42;
                  v104[1] = v103;
                  v105 = (v93 + v92[14]);
                  v106 = v152;
                  *v105 = v43;
                  v105[1] = v106;
                  v107 = (v93 + v92[15]);
                  v108 = *(&v151 + 1);
                  *v107 = v151;
                  v107[1] = v108;
                  v109 = (v93 + v92[16]);
                  v110 = *(&v150 + 1);
                  *v109 = v150;
                  v109[1] = v110;
                  *(v93 + v92[17]) = v149;
                  v111 = v93 + v92[18];
                  v112 = v148;
                  *v111 = v146;
                  *(v111 + 1) = v112;
                  v111[32] = v147;
                  v113 = (v93 + v92[19]);
                  v114 = *(&v145 + 1);
                  *v113 = v145;
                  v113[1] = v114;
                  v115 = (v93 + v92[20]);
                  v116 = v165;
                  *v115 = v157;
                  v115[1] = v116;
                  v117 = (v93 + v92[21]);
                  v118 = v238;
                  v117[4] = v237;
                  v117[5] = v118;
                  v117[6] = *v239;
                  *(v117 + 105) = *&v239[9];
                  v119 = v234;
                  *v117 = v233;
                  v117[1] = v119;
                  v120 = v236;
                  v117[2] = v235;
                  v117[3] = v120;
                  v121 = (v93 + v92[23]);
                  v122 = *(&v143 + 1);
                  *v121 = v143;
                  v121[1] = v122;
                  v123 = v169;
                  v121[2] = v144;
                  v121[3] = v123;
                  v121[4] = v142;
                  v124 = (v93 + v92[25]);
                  v125 = v223;
                  v124[4] = v222;
                  v124[5] = v125;
                  v124[6] = *v224;
                  *(v124 + 105) = *&v224[9];
                  v126 = v219;
                  *v124 = v218;
                  v124[1] = v126;
                  v127 = v221;
                  v124[2] = v220;
                  v124[3] = v127;
                  v128 = v171;
                  *(v93 + v92[26]) = v170;
                  *(v93 + v92[28]) = v128;
                  *(v93 + v92[29]) = v141;
                  v129 = v174;
                  *(v93 + v92[34]) = v175;
                  *(v93 + v92[35]) = v129;
                  v130 = v172;
                  *(v93 + v92[36]) = v173;
                  *(v93 + v92[37]) = v130;
                  v131 = v139;
                  *(v93 + v92[38]) = v140;
                  *(v93 + v92[39]) = v131;
                  *(v93 + v92[40]) = v85;
                  v132 = v93 + v92[42];
                  v133 = v202;
                  *(v132 + 8) = v201;
                  *(v132 + 9) = v133;
                  *(v132 + 10) = v203;
                  *(v132 + 22) = v204;
                  v134 = v198;
                  *(v132 + 4) = v197;
                  *(v132 + 5) = v134;
                  v135 = v200;
                  *(v132 + 6) = v199;
                  *(v132 + 7) = v135;
                  v136 = v194;
                  *v132 = v193;
                  *(v132 + 1) = v136;
                  v137 = v196;
                  *(v132 + 2) = v195;
                  *(v132 + 3) = v137;
                  return __swift_destroy_boxed_opaque_existential_1(v191);
                }

                sub_213FB2DF4(&v233, &qword_27C904868, &qword_2146EDB58);
                sub_214314998(v143, *(&v143 + 1), v144, v169, v142);
                sub_213FB2DF4(&v218, &qword_27C904868, &qword_2146EDB58);
                v89 = &qword_27C90B408;
                v90 = &qword_2146F64D8;
                v88 = &v193;
              }

              sub_213FB2DF4(v88, v89, v90);
              v82 = &qword_27C904870;
              v83 = &qword_2146EDB60;
              v81 = v180;
              goto LABEL_52;
            }
          }
        }
      }
    }

    sub_213FB2DF4(&v233, &qword_27C904868, &qword_2146EDB58);
    sub_214314998(v143, *(&v143 + 1), v144, v169, v142);
    v81 = &v218;
    v82 = &qword_27C904868;
    v83 = &qword_2146EDB58;
LABEL_52:
    sub_213FB2DF4(v81, v82, v83);
    v76 = &qword_27C904C60;
    v77 = &qword_2146EE6E0;
    v75 = v181;
    goto LABEL_53;
  }

  v243 = v26;
  return __swift_destroy_boxed_opaque_existential_1(v191);
}

uint64_t sub_21425C818(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90B420, &qword_2146F64E0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v51 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2143146D4();
  sub_2146DAA28();
  LOBYTE(v69) = 0;
  sub_2146DA3D8();
  if (!v2)
  {
    v9 = type metadata accessor for LinkPresentation.LinkMetadata(0);
    LOBYTE(v69) = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9131A0, &unk_2146E9D10);
    sub_2142E2910();
    v117 = v3;
    sub_2146DA388();
    LOBYTE(v69) = 2;
    sub_2146DA388();
    v52 = v9;
    v69 = *(v117 + *(v9 + 28));
    LOBYTE(v57) = 3;
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
    v11 = sub_214045AC0();
    v51[1] = v10;
    sub_2146DA388();
    v69 = *(v117 + v52[8]);
    LOBYTE(v57) = 4;
    sub_2146DA388();
    v69 = *(v117 + v52[9]);
    LOBYTE(v57) = 5;
    sub_2146DA388();
    v69 = *(v117 + v52[10]);
    LOBYTE(v57) = 6;
    sub_2146DA388();
    v69 = *(v117 + v52[11]);
    LOBYTE(v57) = 7;
    sub_2146DA388();
    v51[0] = v11;
    v12 = v52;
    LOBYTE(v69) = 8;
    sub_2146DA388();
    v13 = v117;
    v69 = *(v117 + v12[13]);
    LOBYTE(v57) = 9;
    sub_2146DA388();
    v69 = *(v13 + v52[14]);
    LOBYTE(v57) = 10;
    sub_2146DA388();
    v69 = *(v117 + v52[15]);
    LOBYTE(v57) = 11;
    sub_2146DA388();
    v69 = *(v117 + v52[16]);
    LOBYTE(v57) = 12;
    sub_2146DA388();
    LOBYTE(v69) = *(v117 + v52[17]);
    LOBYTE(v57) = 13;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905688, &qword_2146F3CF0);
    sub_2142E1D30();
    sub_2146DA388();
    v14 = (v117 + v52[18]);
    v15 = *(v14 + 32);
    v16 = v14[1];
    v69 = *v14;
    v70 = v16;
    LOBYTE(v71) = v15;
    LOBYTE(v57) = 14;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908590, &qword_2146F50C8);
    sub_2142FD688();
    sub_2146DA388();
    v69 = *(v117 + v52[19]);
    LOBYTE(v57) = 15;
    sub_2146DA388();
    v116 = *(v117 + v52[20]);
    v115 = 16;
    sub_2146DA388();
    v17 = (v117 + v52[21]);
    v18 = v17[5];
    v19 = v17[3];
    v112 = v17[4];
    v113 = v18;
    v20 = v17[5];
    *v114 = v17[6];
    *&v114[9] = *(v17 + 105);
    v21 = v17[1];
    v109[0] = *v17;
    v109[1] = v21;
    v22 = v17[3];
    v24 = *v17;
    v23 = v17[1];
    v110 = v17[2];
    v111 = v22;
    v106 = v112;
    v107 = v20;
    v108[0] = v17[6];
    *(v108 + 9) = *(v17 + 105);
    v102 = v24;
    v103 = v23;
    v104 = v110;
    v105 = v19;
    v101 = 17;
    sub_213FB2E54(v109, &v69, &qword_27C904868, &qword_2146EDB58);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904868, &qword_2146EDB58);
    sub_214315670();
    sub_2146DA388();
    v99[4] = v106;
    v99[5] = v107;
    *v100 = v108[0];
    *&v100[9] = *(v108 + 9);
    v99[0] = v102;
    v99[1] = v103;
    v99[2] = v104;
    v99[3] = v105;
    sub_213FB2DF4(v99, &qword_27C904868, &qword_2146EDB58);
    LOBYTE(v69) = 18;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904C38, &qword_2146EE6B8);
    sub_2143156F4();
    sub_2146DA388();
    v25 = (v117 + v52[23]);
    v26 = v25[1];
    v27 = v25[2];
    v28 = v25[3];
    v29 = v25[4];
    *&v69 = *v25;
    *(&v69 + 1) = v26;
    *&v70 = v27;
    *(&v70 + 1) = v28;
    *&v71 = v29;
    LOBYTE(v57) = 19;
    sub_2143157A8(v69, v26, v27, v28, v29);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90B330, &qword_2146F6470);
    sub_2143157F0();
    sub_2146DA388();
    sub_214314998(v69, *(&v69 + 1), v70, *(&v70 + 1), v71);
    v98 = 20;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904C40, &qword_2146EE6C0);
    sub_214315874();
    sub_2146DA388();
    v31 = (v117 + v52[25]);
    v32 = v31[5];
    v33 = v31[3];
    v95 = v31[4];
    v96 = v32;
    v34 = v31[5];
    *v97 = v31[6];
    *&v97[9] = *(v31 + 105);
    v35 = v31[1];
    v92[0] = *v31;
    v92[1] = v35;
    v36 = v31[3];
    v38 = *v31;
    v37 = v31[1];
    v93 = v31[2];
    v94 = v36;
    v89 = v95;
    v90 = v34;
    v91[0] = v31[6];
    *(v91 + 9) = *(v31 + 105);
    v85 = v38;
    v86 = v37;
    v87 = v93;
    v88 = v33;
    v84 = 21;
    sub_213FB2E54(v92, &v69, &qword_27C904868, &qword_2146EDB58);
    sub_2146DA388();
    v82[4] = v89;
    v82[5] = v90;
    *v83 = v91[0];
    *&v83[9] = *(v91 + 9);
    v82[0] = v85;
    v82[1] = v86;
    v82[2] = v87;
    v82[3] = v88;
    sub_213FB2DF4(v82, &qword_27C904868, &qword_2146EDB58);
    *&v69 = *(v117 + v52[26]);
    LOBYTE(v57) = 22;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90B348, &unk_2146F6478);
    sub_214315928();
    sub_2146DA388();
    LOBYTE(v69) = 23;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904C48, &qword_2146EE6C8);
    sub_214315A30();
    sub_2146DA388();
    *&v69 = *(v117 + v52[28]);
    LOBYTE(v57) = 24;
    sub_2146DA388();
    *&v69 = *(v117 + v52[29]);
    LOBYTE(v57) = 25;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90B368, &qword_2146F6488);
    sub_214315AE4();
    sub_2146DA388();
    LOBYTE(v69) = 26;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904888, &unk_2146EDB80);
    sub_214315C1C();
    sub_2146DA388();
    LOBYTE(v69) = 27;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904C50, &unk_2146EE6D0);
    sub_214315CD0();
    sub_2146DA388();
    LOBYTE(v69) = 28;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904C58, &unk_2146F6450);
    sub_214315D84();
    sub_2146DA388();
    LOBYTE(v69) = 29;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904C60, &qword_2146EE6E0);
    sub_214315E38();
    sub_2146DA388();
    *&v69 = *(v117 + v52[34]);
    LOBYTE(v57) = 30;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90B3A0, &unk_2146F6498);
    sub_214315EEC();
    sub_2146DA388();
    *&v69 = *(v117 + v52[35]);
    LOBYTE(v57) = 31;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90B3B8, &qword_2146F64A8);
    sub_214316024();
    sub_2146DA388();
    *&v69 = *(v117 + v52[36]);
    LOBYTE(v57) = 32;
    sub_2146DA388();
    *&v69 = *(v117 + v52[37]);
    LOBYTE(v57) = 33;
    sub_2146DA388();
    *&v69 = *(v117 + v52[38]);
    LOBYTE(v57) = 34;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90B3D0, &unk_2146F64B8);
    sub_21431615C();
    sub_2146DA388();
    *&v69 = *(v117 + v52[39]);
    LOBYTE(v57) = 35;
    sub_2146DA388();
    *&v69 = *(v117 + v52[40]);
    LOBYTE(v57) = 36;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90B3E8, &qword_2146F64C8);
    sub_214316294();
    sub_2146DA388();
    v81 = 37;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904870, &qword_2146EDB60);
    sub_2143163CC();
    sub_2146DA388();
    v39 = (v117 + v52[42]);
    v40 = v39[9];
    v41 = v39[7];
    v77 = v39[8];
    v78 = v40;
    v42 = v39[9];
    v79 = v39[10];
    v43 = v39[5];
    v44 = v39[3];
    v73 = v39[4];
    v74 = v43;
    v45 = v39[5];
    v46 = v39[7];
    v75 = v39[6];
    v76 = v46;
    v47 = v39[1];
    v69 = *v39;
    v70 = v47;
    v48 = v39[3];
    v50 = *v39;
    v49 = v39[1];
    v71 = v39[2];
    v72 = v48;
    v65 = v77;
    v66 = v42;
    v67 = v39[10];
    v61 = v73;
    v62 = v45;
    v63 = v75;
    v64 = v41;
    v57 = v50;
    v58 = v49;
    v80 = *(v39 + 22);
    v68 = *(v39 + 22);
    v59 = v71;
    v60 = v44;
    v56 = 38;
    sub_213FB2E54(&v69, v54, &qword_27C90B408, &qword_2146F64D8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90B408, &qword_2146F64D8);
    sub_214316480();
    sub_2146DA388();
    v54[8] = v65;
    v54[9] = v66;
    v54[10] = v67;
    v55 = v68;
    v54[4] = v61;
    v54[5] = v62;
    v54[6] = v63;
    v54[7] = v64;
    v54[0] = v57;
    v54[1] = v58;
    v54[2] = v59;
    v54[3] = v60;
    sub_213FB2DF4(v54, &qword_27C90B408, &qword_2146F64D8);
    v53 = 39;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904C68, &qword_2146EE6E8);
    sub_214316504();
    sub_2146DA388();
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_21425D9E0()
{
  v1 = 0x6E6F6973726576;
  v2 = 1701869940;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000011;
  }

  if (*v0)
  {
    v1 = 0x5574657373417261;
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

uint64_t sub_21425DA5C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_21437F264(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_21425DA84(uint64_t a1)
{
  v2 = sub_2143165B8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21425DAC0(uint64_t a1)
{
  v2 = sub_2143165B8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21425DAFC@<X0>(void *a1@<X0>, _DWORD *a2@<X8>)
{
  v26 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9131A0, &unk_2146E9D10);
  MEMORY[0x28223BE20](v4);
  v6 = &v24 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90B4E8, &qword_2146F64E8);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v24 - v9;
  v11 = a1[3];
  v27 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v11);
  sub_2143165B8();
  sub_2146DAA08();
  if (!v2)
  {
    v12 = v8;
    LOBYTE(v28) = 0;
    v13 = v7;
    v30 = sub_2146DA218();
    LOBYTE(v28) = 1;
    sub_2142E27A8();
    v14 = v6;
    sub_2146DA1C8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
    v31 = 2;
    sub_2142E12FC();
    sub_2146DA1C8();
    v16 = v29;
    v25 = v28;
    v31 = 3;
    sub_2146DA1C8();
    (*(v12 + 8))(v10, v13);
    v17 = v28;
    v18 = v29;
    v19 = type metadata accessor for LinkPresentation.ARAssetMetadata(0);
    v20 = v14;
    v21 = v26;
    sub_21408AC04(v20, v26 + v19[5], &unk_27C9131A0, &unk_2146E9D10);
    *v21 = v30;
    v22 = (v21 + v19[6]);
    *v22 = v25;
    v22[1] = v16;
    v23 = (v21 + v19[7]);
    *v23 = v17;
    v23[1] = v18;
  }

  return __swift_destroy_boxed_opaque_existential_1(v27);
}

uint64_t sub_21425DE3C(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90B4F8, &qword_2146F64F0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v11 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2143165B8();
  sub_2146DAA28();
  LOBYTE(v11) = 0;
  sub_2146DA3D8();
  if (!v2)
  {
    v9 = type metadata accessor for LinkPresentation.ARAssetMetadata(0);
    LOBYTE(v11) = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9131A0, &unk_2146E9D10);
    sub_2142E2910();
    sub_2146DA388();
    v11 = *(v3 + *(v9 + 24));
    v12 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
    sub_214045AC0();
    sub_2146DA388();
    v11 = *(v3 + *(v9 + 28));
    v12 = 3;
    sub_2146DA388();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_21425E0A4@<X0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, _DWORD *a5@<X8>)
{
  *a5 = a1;
  v9 = type metadata accessor for LinkPresentation.IconMetadata(0);
  result = sub_21408AC04(a2, a5 + *(v9 + 20), &unk_27C9131A0, &unk_2146E9D10);
  v11 = (a5 + *(v9 + 24));
  *v11 = a3;
  v11[1] = a4;
  return result;
}

unint64_t sub_21425E124()
{
  v1 = 0x4C52556E6F6369;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000011;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6E6F6973726576;
  }
}

uint64_t sub_21425E184@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_21437F3D8(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_21425E1AC(uint64_t a1)
{
  v2 = sub_21431660C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21425E1E8(uint64_t a1)
{
  v2 = sub_21431660C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21425E224@<X0>(void *a1@<X0>, _DWORD *a2@<X8>)
{
  v19 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9131A0, &unk_2146E9D10);
  MEMORY[0x28223BE20](v4);
  v6 = &v19 - v5;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90B500, &qword_2146F64F8);
  v7 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v9 = &v19 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21431660C();
  sub_2146DAA08();
  if (!v2)
  {
    v10 = v7;
    v11 = v6;
    v12 = v19;
    v13 = v20;
    LOBYTE(v21) = 0;
    v23 = sub_2146DA218();
    LOBYTE(v21) = 1;
    sub_2142E27A8();
    sub_2146DA1C8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
    v24 = 2;
    sub_2142E12FC();
    sub_2146DA1C8();
    (*(v10 + 8))(v9, v13);
    v15 = v21;
    v16 = v22;
    v17 = type metadata accessor for LinkPresentation.IconMetadata(0);
    sub_21408AC04(v11, v12 + *(v17 + 20), &unk_27C9131A0, &unk_2146E9D10);
    *v12 = v23;
    v18 = (v12 + *(v17 + 24));
    *v18 = v15;
    v18[1] = v16;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_21425E4E0(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90B510, &qword_2146F6500);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v11[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21431660C();
  sub_2146DAA28();
  LOBYTE(v12) = 0;
  sub_2146DA3D8();
  if (!v2)
  {
    v9 = type metadata accessor for LinkPresentation.IconMetadata(0);
    LOBYTE(v12) = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9131A0, &unk_2146E9D10);
    sub_2142E2910();
    sub_2146DA388();
    v12 = *(v3 + *(v9 + 24));
    v11[15] = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
    sub_214045AC0();
    sub_2146DA388();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_21425E72C()
{
  v1 = *v0;
  v2 = 0x6E6F6973726576;
  v3 = 1701869940;
  v4 = 1702521203;
  if (v1 != 3)
  {
    v4 = 0xD000000000000011;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x4C52556567616D69;
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

uint64_t sub_21425E7BC@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_21437F4F8(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_21425E7E4(uint64_t a1)
{
  v2 = sub_214316660();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21425E820(uint64_t a1)
{
  v2 = sub_214316660();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21425E85C@<X0>(void *a1@<X0>, _DWORD *a2@<X8>)
{
  v26 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9131A0, &unk_2146E9D10);
  MEMORY[0x28223BE20](v4);
  v6 = &v24 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90B518, &qword_2146F6508);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v24 - v9;
  v11 = a1[3];
  v27 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v11);
  sub_214316660();
  sub_2146DAA08();
  if (!v2)
  {
    v12 = v6;
    v13 = v26;
    LOBYTE(v28) = 0;
    v30 = sub_2146DA218();
    LOBYTE(v28) = 1;
    sub_2142E27A8();
    sub_2146DA1C8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
    v31 = 2;
    sub_2142E12FC();
    sub_2146DA1C8();
    v24 = v28;
    v25 = v29;
    type metadata accessor for CGSize(0);
    v31 = 3;
    sub_214328930(&qword_280B30B88, type metadata accessor for CGSize, MEMORY[0x277CBF2A0]);
    sub_2146DA1C8();
    v15 = v28;
    v16 = v29;
    v31 = 4;
    sub_2146DA1C8();
    (*(v8 + 8))(v10, v7);
    v17 = v28;
    v18 = v29;
    v19 = type metadata accessor for LinkPresentation.ImageMetadata(0);
    sub_21408AC04(v12, v13 + v19[5], &unk_27C9131A0, &unk_2146E9D10);
    *v13 = v30;
    v20 = (v13 + v19[6]);
    v21 = v25;
    *v20 = v24;
    v20[1] = v21;
    v22 = (v13 + v19[7]);
    *v22 = v15;
    v22[1] = v16;
    v23 = (v13 + v19[8]);
    *v23 = v17;
    v23[1] = v18;
  }

  return __swift_destroy_boxed_opaque_existential_1(v27);
}

uint64_t sub_21425EC2C(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90B528, &qword_2146F6510);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v11 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214316660();
  sub_2146DAA28();
  LOBYTE(v11) = 0;
  sub_2146DA3D8();
  if (!v2)
  {
    v9 = type metadata accessor for LinkPresentation.ImageMetadata(0);
    LOBYTE(v11) = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9131A0, &unk_2146E9D10);
    sub_2142E2910();
    sub_2146DA388();
    v11 = *(v3 + v9[6]);
    v12 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
    sub_214045AC0();
    sub_2146DA388();
    v11 = *(v3 + v9[7]);
    v12 = 3;
    type metadata accessor for CGSize(0);
    sub_214328930(&qword_280B2E368, type metadata accessor for CGSize, MEMORY[0x277CBF288]);
    sub_2146DA388();
    v11 = *(v3 + v9[8]);
    v12 = 4;
    sub_2146DA388();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_21425EF10@<X0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _DWORD *a4@<X8>)
{
  *a4 = a1;
  v7 = type metadata accessor for LinkPresentation.ArtworkMetadata(0);
  result = sub_21408AC04(a2, a4 + *(v7 + 20), &unk_27C9131A0, &unk_2146E9D10);
  *(a4 + *(v7 + 24)) = a3;
  return result;
}

uint64_t sub_21425EF88()
{
  v1 = 0x556B726F77747261;
  if (*v0 != 1)
  {
    v1 = 0x73726F6C6F63;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6E6F6973726576;
  }
}

uint64_t sub_21425EFE4@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_21437F6B0(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_21425F00C(uint64_t a1)
{
  v2 = sub_2143166B4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21425F048(uint64_t a1)
{
  v2 = sub_2143166B4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21425F084@<X0>(void *a1@<X0>, _DWORD *a2@<X8>)
{
  v18 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9131A0, &unk_2146E9D10);
  MEMORY[0x28223BE20](v4);
  v6 = &v17 - v5;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90B530, &qword_2146F6518);
  v7 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v9 = &v17 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2143166B4();
  sub_2146DAA08();
  if (!v2)
  {
    v10 = v7;
    v11 = v6;
    v12 = v18;
    v13 = v19;
    v24 = 0;
    v21 = sub_2146DA218();
    v23 = 1;
    sub_2142E27A8();
    sub_2146DA1C8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90A338, &qword_2146F5DA0);
    v22 = 2;
    sub_21430CB14();
    sub_2146DA1C8();
    (*(v10 + 8))(v9, v13);
    v15 = v20;
    v16 = type metadata accessor for LinkPresentation.ArtworkMetadata(0);
    sub_21408AC04(v11, v12 + *(v16 + 20), &unk_27C9131A0, &unk_2146E9D10);
    *v12 = v21;
    *(v12 + *(v16 + 24)) = v15;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_21425F33C(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90B540, &qword_2146F6520);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v11[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2143166B4();
  sub_2146DAA28();
  v14 = 0;
  sub_2146DA3D8();
  if (!v2)
  {
    v9 = type metadata accessor for LinkPresentation.ArtworkMetadata(0);
    v13 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9131A0, &unk_2146E9D10);
    sub_2142E2910();
    sub_2146DA388();
    v12 = *(v3 + *(v9 + 24));
    v11[15] = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90A338, &qword_2146F5DA0);
    sub_21430CBBC();
    sub_2146DA388();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_21425F588@<X0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t (*a7)(void)@<X6>, _DWORD *a8@<X8>, double a9@<D0>, double a10@<D1>)
{
  *a8 = a1;
  v18 = a7(0);
  result = sub_21408AC04(a2, a8 + v18[5], &unk_27C9131A0, &unk_2146E9D10);
  v20 = (a8 + v18[6]);
  *v20 = a3;
  v20[1] = a4;
  v21 = (a8 + v18[7]);
  *v21 = a9;
  v21[1] = a10;
  v22 = (a8 + v18[8]);
  *v22 = a5;
  v22[1] = a6;
  return result;
}

uint64_t sub_21425F644()
{
  v1 = *v0;
  v2 = 0x6E6F6973726576;
  v3 = 1701869940;
  v4 = 1702521203;
  if (v1 != 3)
  {
    v4 = 0xD000000000000011;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x4C52556F65646976;
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

uint64_t sub_21425F6D4@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_21437F7CC(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_21425F6FC(uint64_t a1)
{
  v2 = sub_214316708();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21425F738(uint64_t a1)
{
  v2 = sub_214316708();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21425F774@<X0>(void *a1@<X0>, _DWORD *a2@<X8>)
{
  v26 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9131A0, &unk_2146E9D10);
  MEMORY[0x28223BE20](v4);
  v6 = &v24 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90B548, &qword_2146F6528);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v24 - v9;
  v11 = a1[3];
  v27 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v11);
  sub_214316708();
  sub_2146DAA08();
  if (!v2)
  {
    v12 = v6;
    v13 = v26;
    LOBYTE(v28) = 0;
    v30 = sub_2146DA218();
    LOBYTE(v28) = 1;
    sub_2142E27A8();
    sub_2146DA1C8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
    v31 = 2;
    sub_2142E12FC();
    sub_2146DA1C8();
    v24 = v28;
    v25 = v29;
    type metadata accessor for CGSize(0);
    v31 = 3;
    sub_214328930(&qword_280B30B88, type metadata accessor for CGSize, MEMORY[0x277CBF2A0]);
    sub_2146DA1C8();
    v15 = v28;
    v16 = v29;
    v31 = 4;
    sub_2146DA1C8();
    (*(v8 + 8))(v10, v7);
    v17 = v28;
    v18 = v29;
    v19 = type metadata accessor for LinkPresentation.VideoMetadata(0);
    sub_21408AC04(v12, v13 + v19[5], &unk_27C9131A0, &unk_2146E9D10);
    *v13 = v30;
    v20 = (v13 + v19[6]);
    v21 = v25;
    *v20 = v24;
    v20[1] = v21;
    v22 = (v13 + v19[7]);
    *v22 = v15;
    v22[1] = v16;
    v23 = (v13 + v19[8]);
    *v23 = v17;
    v23[1] = v18;
  }

  return __swift_destroy_boxed_opaque_existential_1(v27);
}

uint64_t sub_21425FB44(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90B558, &qword_2146F6530);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v11 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214316708();
  sub_2146DAA28();
  LOBYTE(v11) = 0;
  sub_2146DA3D8();
  if (!v2)
  {
    v9 = type metadata accessor for LinkPresentation.VideoMetadata(0);
    LOBYTE(v11) = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9131A0, &unk_2146E9D10);
    sub_2142E2910();
    sub_2146DA388();
    v11 = *(v3 + v9[6]);
    v12 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
    sub_214045AC0();
    sub_2146DA388();
    v11 = *(v3 + v9[7]);
    v12 = 3;
    type metadata accessor for CGSize(0);
    sub_214328930(&qword_280B2E368, type metadata accessor for CGSize, MEMORY[0x277CBF288]);
    sub_2146DA388();
    v11 = *(v3 + v9[8]);
    v12 = 4;
    sub_2146DA388();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_21425FE54@<X0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t (*a7)(void)@<X6>, _DWORD *a8@<X8>)
{
  *a8 = a1;
  v14 = a7(0);
  result = sub_21408AC04(a2, a8 + v14[5], &unk_27C9131A0, &unk_2146E9D10);
  v16 = (a8 + v14[6]);
  *v16 = a3;
  v16[1] = a4;
  v17 = (a8 + v14[7]);
  *v17 = a5;
  v17[1] = a6;
  return result;
}

unint64_t sub_21425FEF4()
{
  v1 = 0x6E6F6973726576;
  v2 = 1701869940;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000011;
  }

  if (*v0)
  {
    v1 = 0x4C52556F69647561;
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

uint64_t sub_21425FF6C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_21437F984(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_21425FF94(uint64_t a1)
{
  v2 = sub_21431675C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21425FFD0(uint64_t a1)
{
  v2 = sub_21431675C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21426000C@<X0>(void *a1@<X0>, _DWORD *a2@<X8>)
{
  v26 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9131A0, &unk_2146E9D10);
  MEMORY[0x28223BE20](v4);
  v6 = &v24 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90B560, &qword_2146F6538);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v24 - v9;
  v11 = a1[3];
  v27 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v11);
  sub_21431675C();
  sub_2146DAA08();
  if (!v2)
  {
    v12 = v8;
    LOBYTE(v28) = 0;
    v13 = v7;
    v30 = sub_2146DA218();
    LOBYTE(v28) = 1;
    sub_2142E27A8();
    v14 = v6;
    sub_2146DA1C8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
    v31 = 2;
    sub_2142E12FC();
    sub_2146DA1C8();
    v16 = v29;
    v25 = v28;
    v31 = 3;
    sub_2146DA1C8();
    (*(v12 + 8))(v10, v13);
    v17 = v28;
    v18 = v29;
    v19 = type metadata accessor for LinkPresentation.AudioMetadata(0);
    v20 = v14;
    v21 = v26;
    sub_21408AC04(v20, v26 + v19[5], &unk_27C9131A0, &unk_2146E9D10);
    *v21 = v30;
    v22 = (v21 + v19[6]);
    *v22 = v25;
    v22[1] = v16;
    v23 = (v21 + v19[7]);
    *v23 = v17;
    v23[1] = v18;
  }

  return __swift_destroy_boxed_opaque_existential_1(v27);
}

uint64_t sub_21426034C(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90B570, &qword_2146F6540);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v11 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21431675C();
  sub_2146DAA28();
  LOBYTE(v11) = 0;
  sub_2146DA3D8();
  if (!v2)
  {
    v9 = type metadata accessor for LinkPresentation.AudioMetadata(0);
    LOBYTE(v11) = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9131A0, &unk_2146E9D10);
    sub_2142E2910();
    sub_2146DA388();
    v11 = *(v3 + *(v9 + 24));
    v12 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
    sub_214045AC0();
    sub_2146DA388();
    v11 = *(v3 + *(v9 + 28));
    v12 = 3;
    sub_2146DA388();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_2142605B4@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X6>, char a8@<W7>, uint64_t a9@<X8>)
{
  *a9 = result;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6 & 1;
  *(a9 + 48) = a7;
  *(a9 + 56) = a8 & 1;
  return result;
}

uint64_t sub_2142605E8()
{
  v1 = 0x73636972796CLL;
  v2 = 0x6D69547472617473;
  if (*v0 != 2)
  {
    v2 = 0x656D6954646E65;
  }

  if (*v0)
  {
    v1 = 0x65676175676E616CLL;
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

uint64_t sub_214260664@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_21437FAF0(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_21426068C(uint64_t a1)
{
  v2 = sub_2143167B0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2142606C8(uint64_t a1)
{
  v2 = sub_2143167B0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_214260704@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90B578, &qword_2146F6548);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v16 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2143167B0();
  sub_2146DAA08();
  if (!v2)
  {
    v22 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
    v27 = 0;
    sub_2142E12FC();
    sub_2146DA1C8();
    v9 = v25;
    v21 = v24;
    v27 = 1;
    sub_2146DA1C8();
    v20 = v9;
    v10 = v24;
    v19 = v25;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9058A0, &unk_2147379A0);
    v27 = 2;
    sub_2142E35EC();
    sub_2146DA1C8();
    v17 = v24;
    v18 = v10;
    LOBYTE(v10) = v25;
    v27 = 3;
    sub_2146DA1C8();
    (*(v6 + 8))(v8, v5);
    v12 = v24;
    v13 = v25;
    v14 = v10;
    v26 = v10;
    v23 = v25;
    v15 = v22;
    *v22 = v21;
    v15[1] = v20;
    v15[2] = v18;
    v15[3] = v19;
    v15[4] = v17;
    *(v15 + 40) = v14;
    v15[6] = v12;
    *(v15 + 56) = v13;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_214260A20(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90B588, &unk_2146F6550);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v14 - v5;
  v7 = *v1;
  v8 = v1[1];
  v9 = v1[2];
  v17 = v1[3];
  v18 = v9;
  v16 = v1[4];
  v22 = *(v1 + 40);
  v14 = v1[6];
  v15 = *(v1 + 56);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2143167B0();

  sub_2146DAA28();
  v20 = v7;
  v21 = v8;
  v23 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
  sub_214045AC0();
  v10 = v19;
  sub_2146DA388();

  if (!v10)
  {
    v11 = v22;
    v12 = v16;
    v20 = v18;
    v21 = v17;
    v23 = 1;
    sub_2146DA388();
    v20 = v12;
    LOBYTE(v21) = v11;
    v23 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9058A0, &unk_2147379A0);
    sub_2142E37F4();
    sub_2146DA388();
    v20 = v14;
    LOBYTE(v21) = v15;
    v23 = 3;
    sub_2146DA388();
  }

  return (*(v4 + 8))(v6, v3);
}

__n128 sub_214260CD4@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, __int128 a10, uint64_t a11, uint64_t a12, _OWORD *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
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
  *(a9 + 88) = a12;
  v18 = a13[5];
  *(a9 + 160) = a13[4];
  *(a9 + 176) = v18;
  *(a9 + 192) = a13[6];
  *(a9 + 201) = *(a13 + 105);
  v19 = a13[1];
  *(a9 + 96) = *a13;
  *(a9 + 112) = v19;
  v20 = a13[3];
  *(a9 + 128) = a13[2];
  *(a9 + 144) = v20;
  v21 = type metadata accessor for LinkPresentation.SongMetadata(0);
  sub_21408AC04(a14, a9 + v21[11], &qword_27C904878, &unk_2146EDB68);
  sub_21408AC04(a15, a9 + v21[12], &unk_27C9131A0, &unk_2146E9D10);
  *(a9 + v21[13]) = a16;
  v22 = a9 + v21[14];
  v23 = *(a17 + 16);
  *v22 = *a17;
  *(v22 + 16) = v23;
  *(v22 + 32) = *(a17 + 32);
  result = *(a17 + 41);
  *(v22 + 41) = result;
  return result;
}

unint64_t sub_214260DDC(unsigned __int8 a1)
{
  if (a1 <= 4u)
  {
    v6 = 0x65644965726F7473;
    v7 = 1701667182;
    v8 = 0x747369747261;
    if (a1 != 3)
    {
      v8 = 0x6D75626C61;
    }

    if (a1 != 2)
    {
      v7 = v8;
    }

    if (!a1)
    {
      v6 = 0xD000000000000014;
    }

    if (a1 <= 1u)
    {
      return v6;
    }

    else
    {
      return v7;
    }
  }

  else
  {
    v1 = 0x5577656976657270;
    v2 = 0x73726566666FLL;
    if (a1 != 9)
    {
      v2 = 0x637845636972796CLL;
    }

    if (a1 != 8)
    {
      v1 = v2;
    }

    v3 = 0x73636972796CLL;
    v4 = 0x6B726F77747261;
    if (a1 != 6)
    {
      v4 = 0x4D6B726F77747261;
    }

    if (a1 != 5)
    {
      v3 = v4;
    }

    if (a1 <= 7u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_214260F50@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_21437FC58(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_214260F78(uint64_t a1)
{
  v2 = sub_214316804();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_214260FB4(uint64_t a1)
{
  v2 = sub_214316804();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_214260FF0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v48 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9131A0, &unk_2146E9D10);
  MEMORY[0x28223BE20](v3);
  v5 = &v37 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904878, &unk_2146EDB68);
  MEMORY[0x28223BE20](v6);
  v8 = &v37 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90B590, &unk_2146F6560);
  v10 = *(v9 - 8);
  v50 = v9;
  v51 = v10;
  MEMORY[0x28223BE20](v9);
  v12 = &v37 - v11;
  v13 = a1[3];
  v75 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v13);
  sub_214316804();
  v49 = v12;
  v14 = v52;
  sub_2146DAA08();
  if (!v14)
  {
    v46 = v5;
    v47 = v6;
    v45 = v3;
    v52 = v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
    LOBYTE(v60) = 0;
    sub_2142E12FC();
    sub_2146DA1C8();
    v15 = v68;
    LOBYTE(v60) = 1;
    sub_2146DA1C8();
    v44 = v15;
    v16 = v68;
    LOBYTE(v60) = 2;
    sub_2146DA1C8();
    v43 = v16;
    v17 = v68;
    LOBYTE(v60) = 3;
    sub_2146DA1C8();
    v42 = v17;
    v18 = *(&v68 + 1);
    LOBYTE(v60) = 4;
    sub_2146DA1C8();
    v41 = v18;
    v40 = *(&v68 + 1);
    v20 = v68;
    LOBYTE(v60) = 5;
    sub_2146DA1C8();
    v38 = v20;
    v39 = v17;
    v21 = v68;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904868, &qword_2146EDB58);
    v67 = 6;
    sub_214314728();
    sub_2146DA1C8();
    v37 = *(&v21 + 1);
    v64 = v72;
    v65 = v73;
    *v66 = v74[0];
    *&v66[9] = *(v74 + 9);
    v60 = v68;
    v61 = v69;
    v62 = v70;
    v63 = v71;
    LOBYTE(v57) = 7;
    sub_214316858();
    sub_2146DA1C8();
    LOBYTE(v57) = 8;
    sub_2142E27A8();
    sub_2146DA1C8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904000, &unk_2146EA780);
    LOBYTE(v53) = 9;
    sub_2142E1548();
    sub_2146DA1C8();
    v22 = v57;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904880, &qword_2146EDB78);
    v56 = 10;
    sub_21431690C();
    sub_2146DA1C8();
    (*(v51 + 8))(v49, v50);
    v53 = v57;
    v54 = v58;
    *v55 = v59[0];
    *&v55[9] = *(v59 + 9);
    v23 = type metadata accessor for LinkPresentation.SongMetadata(0);
    v24 = v48;
    sub_21408AC04(v52, v48 + v23[11], &qword_27C904878, &unk_2146EDB68);
    sub_21408AC04(v46, v24 + v23[12], &unk_27C9131A0, &unk_2146E9D10);
    *v24 = v44;
    *(v24 + 8) = *(&v15 + 1);
    v25 = *(&v43 + 1);
    *(v24 + 16) = v43;
    *(v24 + 24) = v25;
    v28 = v42;
    v26 = v28 >> 64;
    v27 = v28;
    *(v24 + 32) = v39;
    *(v24 + 40) = v26;
    v29 = v41;
    *(v24 + 48) = v27;
    *(v24 + 56) = v29;
    v30 = v40;
    *(v24 + 64) = v38;
    *(v24 + 72) = v30;
    v31 = v37;
    *(v24 + 80) = v21;
    *(v24 + 88) = v31;
    v32 = v65;
    *(v24 + 160) = v64;
    *(v24 + 176) = v32;
    *(v24 + 192) = *v66;
    *(v24 + 201) = *&v66[9];
    v33 = v61;
    *(v24 + 96) = v60;
    *(v24 + 112) = v33;
    v34 = v63;
    *(v24 + 128) = v62;
    *(v24 + 144) = v34;
    *(v24 + v23[13]) = v22;
    v35 = (v24 + v23[14]);
    *(v35 + 41) = *&v55[9];
    v36 = *v55;
    v35[1] = v54;
    v35[2] = v36;
    *v35 = v53;
  }

  return __swift_destroy_boxed_opaque_existential_1(v75);
}

uint64_t sub_2142618B8(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90B5B0, &qword_2146F6570);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v22 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214316804();
  sub_2146DAA28();
  v42[0] = *v3;
  LOBYTE(v35) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
  sub_214045AC0();
  sub_2146DA388();
  if (!v2)
  {
    v42[0] = v3[1];
    LOBYTE(v35) = 1;
    sub_2146DA388();
    v42[0] = v3[2];
    LOBYTE(v35) = 2;
    sub_2146DA388();
    v42[0] = v3[3];
    LOBYTE(v35) = 3;
    sub_2146DA388();
    v42[0] = v3[4];
    LOBYTE(v35) = 4;
    sub_2146DA388();
    v49 = v3[5];
    v48 = 5;
    sub_2146DA388();
    v9 = v3[11];
    v10 = v3[9];
    v45 = v3[10];
    v46 = v9;
    v11 = v3[11];
    *v47 = v3[12];
    *&v47[9] = *(v3 + 201);
    v12 = v3[7];
    v42[0] = v3[6];
    v42[1] = v12;
    v13 = v3[9];
    v15 = v3[6];
    v14 = v3[7];
    v43 = v3[8];
    v44 = v13;
    v39 = v45;
    v40 = v11;
    v41[0] = v3[12];
    *(v41 + 9) = *(v3 + 201);
    v35 = v15;
    v36 = v14;
    v37 = v43;
    v38 = v10;
    v34 = 6;
    sub_213FB2E54(v42, v32, &qword_27C904868, &qword_2146EDB58);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904868, &qword_2146EDB58);
    sub_214315670();
    sub_2146DA388();
    v32[4] = v39;
    v32[5] = v40;
    *v33 = v41[0];
    *&v33[9] = *(v41 + 9);
    v32[0] = v35;
    v32[1] = v36;
    v32[2] = v37;
    v32[3] = v38;
    sub_213FB2DF4(v32, &qword_27C904868, &qword_2146EDB58);
    v16 = type metadata accessor for LinkPresentation.SongMetadata(0);
    LOBYTE(v28[0]) = 7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904878, &unk_2146EDB68);
    sub_214316990();
    sub_2146DA388();
    LOBYTE(v28[0]) = 8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9131A0, &unk_2146E9D10);
    sub_2142E2910();
    sub_2146DA388();
    v31 = *(v3 + *(v16 + 52));
    v30 = 9;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904000, &unk_2146EA780);
    sub_2140459AC();
    sub_2146DA388();
    v17 = (v3 + *(v16 + 56));
    v18 = v17[1];
    v28[0] = *v17;
    v28[1] = v18;
    v20 = *v17;
    v19 = v17[1];
    v29[0] = v17[2];
    *(v29 + 9) = *(v17 + 41);
    v25 = v20;
    v26 = v19;
    v27[0] = v17[2];
    *(v27 + 9) = *(v17 + 41);
    v24 = 10;
    sub_213FB2E54(v28, v22, &qword_27C904880, &qword_2146EDB78);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904880, &qword_2146EDB78);
    sub_214316A44();
    sub_2146DA388();
    v22[0] = v25;
    v22[1] = v26;
    *v23 = v27[0];
    *&v23[9] = *(v27 + 9);
    sub_213FB2DF4(v22, &qword_27C904880, &qword_2146EDB78);
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_214261ED4(uint64_t a1)
{
  v2 = sub_214316AC8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_214261F10(uint64_t a1)
{
  v2 = sub_214316AC8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_214261F4C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v37 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904878, &unk_2146EDB68);
  MEMORY[0x28223BE20](v4);
  v6 = &v29 - v5;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90B5C8, &qword_2146F6578);
  v7 = *(v39 - 8);
  MEMORY[0x28223BE20](v39);
  v9 = &v29 - v8;
  v10 = a1[3];
  v57 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v10);
  sub_214316AC8();
  v38 = v9;
  sub_2146DAA08();
  if (!v2)
  {
    v35 = v6;
    v36 = v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
    LOBYTE(v42) = 0;
    sub_2142E12FC();
    v11 = v38;
    v12 = v39;
    sub_2146DA1C8();
    v13 = v50;
    LOBYTE(v42) = 1;
    sub_2146DA1C8();
    v34 = v13;
    v14 = *(&v50 + 1);
    v33 = v50;
    LOBYTE(v42) = 2;
    sub_2146DA1C8();
    v32 = *(&v50 + 1);
    v16 = v50;
    LOBYTE(v42) = 3;
    sub_2146DA1C8();
    v30 = v16;
    v31 = v14;
    v17 = v50;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904868, &qword_2146EDB58);
    v49 = 4;
    sub_214314728();
    sub_2146DA1C8();
    v18 = v36;
    v29 = v17;
    v46 = v54;
    v47 = v55;
    *v48 = v56[0];
    *&v48[9] = *(v56 + 9);
    v42 = v50;
    v43 = v51;
    v44 = v52;
    v45 = v53;
    LOBYTE(v41) = 5;
    sub_214316858();
    sub_2146DA1C8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904000, &unk_2146EA780);
    v40 = 6;
    sub_2142E1548();
    sub_2146DA1C8();
    v19 = v32;
    (*(v18 + 8))(v11, v12);
    v20 = v41;
    v21 = type metadata accessor for LinkPresentation.AlbumMetadata(0);
    v22 = v37;
    sub_21408AC04(v35, v37 + *(v21 + 36), &qword_27C904878, &unk_2146EDB68);
    v23 = *(&v34 + 1);
    *v22 = v34;
    *(v22 + 8) = v23;
    v24 = v30;
    v25 = v31;
    *(v22 + 16) = v33;
    *(v22 + 24) = v25;
    *(v22 + 32) = v24;
    *(v22 + 40) = v19;
    *(v22 + 48) = v29;
    *(v22 + 56) = *(&v17 + 1);
    v26 = v47;
    *(v22 + 128) = v46;
    *(v22 + 144) = v26;
    *(v22 + 160) = *v48;
    *(v22 + 169) = *&v48[9];
    v27 = v43;
    *(v22 + 64) = v42;
    *(v22 + 80) = v27;
    v28 = v45;
    *(v22 + 96) = v44;
    *(v22 + 112) = v28;
    *(v22 + *(v21 + 40)) = v20;
  }

  return __swift_destroy_boxed_opaque_existential_1(v57);
}

uint64_t sub_214262524(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90B5D8, &qword_2146F6580);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v19[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214316AC8();
  sub_2146DAA28();
  v39 = v3;
  v31[0] = *v3;
  LOBYTE(v24) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
  sub_214045AC0();
  sub_2146DA388();
  if (!v2)
  {
    v10 = v39;
    v31[0] = v39[1];
    LOBYTE(v24) = 1;
    sub_2146DA388();
    v31[0] = v10[2];
    LOBYTE(v24) = 2;
    sub_2146DA388();
    v38 = v10[3];
    v37 = 3;
    sub_2146DA388();
    v11 = v39[9];
    v12 = v39[7];
    v34 = v39[8];
    v35 = v11;
    v13 = v39[9];
    *v36 = v39[10];
    *&v36[9] = *(v39 + 169);
    v14 = v39[5];
    v31[0] = v39[4];
    v31[1] = v14;
    v15 = v39[7];
    v17 = v39[4];
    v16 = v39[5];
    v32 = v39[6];
    v33 = v15;
    v28 = v34;
    v29 = v13;
    v30[0] = v39[10];
    *(v30 + 9) = *(v39 + 169);
    v24 = v17;
    v25 = v16;
    v26 = v32;
    v27 = v12;
    v23 = 4;
    sub_213FB2E54(v31, v21, &qword_27C904868, &qword_2146EDB58);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904868, &qword_2146EDB58);
    sub_214315670();
    sub_2146DA388();
    v21[4] = v28;
    v21[5] = v29;
    *v22 = v30[0];
    *&v22[9] = *(v30 + 9);
    v21[0] = v24;
    v21[1] = v25;
    v21[2] = v26;
    v21[3] = v27;
    sub_213FB2DF4(v21, &qword_27C904868, &qword_2146EDB58);
    v18 = type metadata accessor for LinkPresentation.AlbumMetadata(0);
    LOBYTE(v20) = 5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904878, &unk_2146EDB68);
    sub_214316990();
    sub_2146DA388();
    v20 = *(v39 + *(v18 + 40));
    v19[7] = 6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904000, &unk_2146EA780);
    sub_2140459AC();
    sub_2146DA388();
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_214262A14()
{
  v1 = *v0;
  v2 = 0x65644965726F7473;
  v3 = 0x747369747261;
  v4 = 0x6B726F77747261;
  if (v1 != 4)
  {
    v4 = 0x4D6B726F77747261;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  if (v1 != 1)
  {
    v2 = 1701667182;
  }

  if (!*v0)
  {
    v2 = 0xD000000000000014;
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

uint64_t sub_214262AE0@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_21437FFE8(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_214262B08(uint64_t a1)
{
  v2 = sub_214316B1C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_214262B44(uint64_t a1)
{
  v2 = sub_214316B1C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_214262B80@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v34 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904878, &unk_2146EDB68);
  MEMORY[0x28223BE20](v4);
  v6 = &v27 - v5;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90B5E0, &qword_2146F6588);
  v7 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v9 = &v27 - v8;
  v10 = a1[3];
  v52 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v10);
  sub_214316B1C();
  sub_2146DAA08();
  if (!v2)
  {
    v31 = v4;
    v32 = v6;
    v33 = v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
    LOBYTE(v37) = 0;
    sub_2142E12FC();
    v11 = v35;
    sub_2146DA1C8();
    v12 = v45;
    LOBYTE(v37) = 1;
    sub_2146DA1C8();
    v29 = __PAIR128__(*(&v45 + 1), v12);
    v13 = v45;
    v30 = *(&v12 + 1);
    LOBYTE(v37) = 2;
    sub_2146DA1C8();
    v28 = v13;
    v15 = v45;
    LOBYTE(v37) = 3;
    sub_2146DA1C8();
    v27 = v15;
    v16 = v45;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904868, &qword_2146EDB58);
    v44 = 4;
    sub_214314728();
    sub_2146DA1C8();
    v17 = v33;
    v41 = v49;
    v42 = v50;
    *v43 = v51[0];
    *&v43[9] = *(v51 + 9);
    v37 = v45;
    v38 = v46;
    v39 = v47;
    v40 = v48;
    v36 = 5;
    sub_214316858();
    v18 = v32;
    sub_2146DA1C8();
    (*(v17 + 8))(v9, v11);
    v19 = type metadata accessor for LinkPresentation.MusicVideoMetadata(0);
    v20 = v34;
    sub_21408AC04(v18, v34 + *(v19 + 36), &qword_27C904878, &unk_2146EDB68);
    v21 = v30;
    *v20 = v29;
    *(v20 + 8) = v21;
    v22 = *(&v29 + 1);
    *(v20 + 16) = v28;
    *(v20 + 24) = v22;
    v23 = *(&v27 + 1);
    *(v20 + 32) = v27;
    *(v20 + 40) = v23;
    *(v20 + 48) = v16;
    v24 = v42;
    *(v20 + 128) = v41;
    *(v20 + 144) = v24;
    *(v20 + 160) = *v43;
    *(v20 + 169) = *&v43[9];
    v25 = v38;
    *(v20 + 64) = v37;
    *(v20 + 80) = v25;
    v26 = v40;
    *(v20 + 96) = v39;
    *(v20 + 112) = v26;
  }

  return __swift_destroy_boxed_opaque_existential_1(v52);
}

uint64_t sub_214263084(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90B5F0, &qword_2146F6590);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v18[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214316B1C();
  sub_2146DAA28();
  v37 = v3;
  v29[0] = *v3;
  LOBYTE(v22) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
  sub_214045AC0();
  sub_2146DA388();
  if (!v2)
  {
    v10 = v37;
    v29[0] = v37[1];
    LOBYTE(v22) = 1;
    sub_2146DA388();
    v29[0] = v10[2];
    LOBYTE(v22) = 2;
    sub_2146DA388();
    v36 = v10[3];
    v35 = 3;
    sub_2146DA388();
    v11 = v37[9];
    v12 = v37[7];
    v32 = v37[8];
    v33 = v11;
    v13 = v37[9];
    *v34 = v37[10];
    *&v34[9] = *(v37 + 169);
    v14 = v37[5];
    v29[0] = v37[4];
    v29[1] = v14;
    v15 = v37[7];
    v17 = v37[4];
    v16 = v37[5];
    v30 = v37[6];
    v31 = v15;
    v26 = v32;
    v27 = v13;
    v28[0] = v37[10];
    *(v28 + 9) = *(v37 + 169);
    v22 = v17;
    v23 = v16;
    v24 = v30;
    v25 = v12;
    v21 = 4;
    sub_213FB2E54(v29, v19, &qword_27C904868, &qword_2146EDB58);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904868, &qword_2146EDB58);
    sub_214315670();
    sub_2146DA388();
    v19[4] = v26;
    v19[5] = v27;
    *v20 = v28[0];
    *&v20[9] = *(v28 + 9);
    v19[0] = v22;
    v19[1] = v23;
    v19[2] = v24;
    v19[3] = v25;
    sub_213FB2DF4(v19, &qword_27C904868, &qword_2146EDB58);
    type metadata accessor for LinkPresentation.MusicVideoMetadata(0);
    v18[15] = 5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904878, &unk_2146EDB68);
    sub_214316990();
    sub_2146DA388();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_214263514@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, _OWORD *a10, uint64_t a11, uint64_t (*a12)(void))
{
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  *(a9 + 48) = a7;
  *(a9 + 56) = a8;
  v13 = a10[5];
  *(a9 + 128) = a10[4];
  *(a9 + 144) = v13;
  *(a9 + 160) = a10[6];
  *(a9 + 169) = *(a10 + 105);
  v14 = a10[1];
  *(a9 + 64) = *a10;
  *(a9 + 80) = v14;
  v15 = a10[3];
  *(a9 + 96) = a10[2];
  *(a9 + 112) = v15;
  v16 = a12(0);
  return sub_21408AC04(a11, a9 + *(v16 + 36), &qword_27C904878, &unk_2146EDB68);
}

uint64_t sub_2142635B0(uint64_t a1)
{
  v2 = sub_214316B70();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2142635EC(uint64_t a1)
{
  v2 = sub_214316B70();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_214263628@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v34 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904878, &unk_2146EDB68);
  MEMORY[0x28223BE20](v4);
  v6 = &v27 - v5;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90B5F8, &qword_2146F6598);
  v7 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v9 = &v27 - v8;
  v10 = a1[3];
  v52 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v10);
  sub_214316B70();
  sub_2146DAA08();
  if (!v2)
  {
    v31 = v4;
    v32 = v6;
    v33 = v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
    LOBYTE(v37) = 0;
    sub_2142E12FC();
    v11 = v35;
    sub_2146DA1C8();
    v12 = v45;
    LOBYTE(v37) = 1;
    sub_2146DA1C8();
    v29 = __PAIR128__(*(&v45 + 1), v12);
    v13 = v45;
    v30 = *(&v12 + 1);
    LOBYTE(v37) = 2;
    sub_2146DA1C8();
    v28 = v13;
    v15 = v45;
    LOBYTE(v37) = 3;
    sub_2146DA1C8();
    v27 = v15;
    v16 = v45;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904868, &qword_2146EDB58);
    v44 = 4;
    sub_214314728();
    sub_2146DA1C8();
    v17 = v33;
    v41 = v49;
    v42 = v50;
    *v43 = v51[0];
    *&v43[9] = *(v51 + 9);
    v37 = v45;
    v38 = v46;
    v39 = v47;
    v40 = v48;
    v36 = 5;
    sub_214316858();
    v18 = v32;
    sub_2146DA1C8();
    (*(v17 + 8))(v9, v11);
    v19 = type metadata accessor for LinkPresentation.ArtistMetadata(0);
    v20 = v34;
    sub_21408AC04(v18, v34 + *(v19 + 36), &qword_27C904878, &unk_2146EDB68);
    v21 = v30;
    *v20 = v29;
    *(v20 + 8) = v21;
    v22 = *(&v29 + 1);
    *(v20 + 16) = v28;
    *(v20 + 24) = v22;
    v23 = *(&v27 + 1);
    *(v20 + 32) = v27;
    *(v20 + 40) = v23;
    *(v20 + 48) = v16;
    v24 = v42;
    *(v20 + 128) = v41;
    *(v20 + 144) = v24;
    *(v20 + 160) = *v43;
    *(v20 + 169) = *&v43[9];
    v25 = v38;
    *(v20 + 64) = v37;
    *(v20 + 80) = v25;
    v26 = v40;
    *(v20 + 96) = v39;
    *(v20 + 112) = v26;
  }

  return __swift_destroy_boxed_opaque_existential_1(v52);
}

uint64_t sub_214263B2C(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90B608, &qword_2146F65A0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v18[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214316B70();
  sub_2146DAA28();
  v37 = v3;
  v29[0] = *v3;
  LOBYTE(v22) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
  sub_214045AC0();
  sub_2146DA388();
  if (!v2)
  {
    v10 = v37;
    v29[0] = v37[1];
    LOBYTE(v22) = 1;
    sub_2146DA388();
    v29[0] = v10[2];
    LOBYTE(v22) = 2;
    sub_2146DA388();
    v36 = v10[3];
    v35 = 3;
    sub_2146DA388();
    v11 = v37[9];
    v12 = v37[7];
    v32 = v37[8];
    v33 = v11;
    v13 = v37[9];
    *v34 = v37[10];
    *&v34[9] = *(v37 + 169);
    v14 = v37[5];
    v29[0] = v37[4];
    v29[1] = v14;
    v15 = v37[7];
    v17 = v37[4];
    v16 = v37[5];
    v30 = v37[6];
    v31 = v15;
    v26 = v32;
    v27 = v13;
    v28[0] = v37[10];
    *(v28 + 9) = *(v37 + 169);
    v22 = v17;
    v23 = v16;
    v24 = v30;
    v25 = v12;
    v21 = 4;
    sub_213FB2E54(v29, v19, &qword_27C904868, &qword_2146EDB58);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904868, &qword_2146EDB58);
    sub_214315670();
    sub_2146DA388();
    v19[4] = v26;
    v19[5] = v27;
    *v20 = v28[0];
    *&v20[9] = *(v28 + 9);
    v19[0] = v22;
    v19[1] = v23;
    v19[2] = v24;
    v19[3] = v25;
    sub_213FB2DF4(v19, &qword_27C904868, &qword_2146EDB58);
    type metadata accessor for LinkPresentation.ArtistMetadata(0);
    v18[15] = 5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904878, &unk_2146EDB68);
    sub_214316990();
    sub_2146DA388();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_214263F80@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, _OWORD *a13, uint64_t a14)
{
  *a9 = a1;
  a9[1] = a2;
  a9[2] = a3;
  a9[3] = a4;
  a9[4] = a5;
  a9[5] = a6;
  a9[6] = a7;
  a9[7] = a8;
  v15 = type metadata accessor for LinkPresentation.PlaylistMetadata(0);
  sub_21408AC04(a10, a9 + v15[8], &unk_27C9131A0, &unk_2146E9D10);
  v16 = (a9 + v15[9]);
  *v16 = a11;
  v16[1] = a12;
  v17 = (a9 + v15[10]);
  v18 = a13[5];
  v17[4] = a13[4];
  v17[5] = v18;
  v17[6] = a13[6];
  *(v17 + 105) = *(a13 + 105);
  v19 = a13[1];
  *v17 = *a13;
  v17[1] = v19;
  v20 = a13[3];
  v17[2] = a13[2];
  v17[3] = v20;
  return sub_21408AC04(a14, a9 + v15[11], &qword_27C904878, &unk_2146EDB68);
}

unint64_t sub_214264064()
{
  v1 = *v0;
  v2 = 0x65644965726F7473;
  v3 = 0x6B726F77747261;
  if (v1 != 6)
  {
    v3 = 0x4D6B726F77747261;
  }

  v4 = 0x48726F7461727563;
  if (v1 == 4)
  {
    v4 = 0xD000000000000011;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 1701667182;
  if (v1 != 2)
  {
    v5 = 0x726F7461727563;
  }

  if (!*v0)
  {
    v2 = 0xD000000000000014;
  }

  if (*v0 > 1u)
  {
    v2 = v5;
  }

  if (*v0 <= 3u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_214264180@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_2143801FC(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_2142641A8(uint64_t a1)
{
  v2 = sub_214316BC4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2142641E4(uint64_t a1)
{
  v2 = sub_214316BC4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_214264220@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v45 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904878, &unk_2146EDB68);
  MEMORY[0x28223BE20](v3);
  v5 = &v36 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9131A0, &unk_2146E9D10);
  MEMORY[0x28223BE20](v6);
  v8 = &v36 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90B610, &qword_2146F65A8);
  v10 = *(v9 - 8);
  v46 = v9;
  v47 = v10;
  MEMORY[0x28223BE20](v9);
  v12 = &v36 - v11;
  v13 = a1[3];
  v66 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v13);
  sub_214316BC4();
  v48 = v12;
  v14 = v49;
  sub_2146DAA08();
  if (!v14)
  {
    v49 = v6;
    v42 = v5;
    v43 = v3;
    v44 = v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
    LOBYTE(v51) = 0;
    sub_2142E12FC();
    v15 = v46;
    sub_2146DA1C8();
    v16 = v59;
    LOBYTE(v51) = 1;
    sub_2146DA1C8();
    v41 = v16;
    v17 = v59;
    LOBYTE(v51) = 2;
    sub_2146DA1C8();
    v40 = v17;
    v18 = v59;
    LOBYTE(v51) = 3;
    sub_2146DA1C8();
    v39 = v18;
    v19 = *(&v59 + 1);
    v38 = v59;
    LOBYTE(v59) = 4;
    sub_2142E27A8();
    sub_2146DA1C8();
    v49 = v19;
    LOBYTE(v51) = 5;
    sub_2146DA1C8();
    v21 = *(&v59 + 1);
    v37 = v59;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904868, &qword_2146EDB58);
    v58 = 6;
    sub_214314728();
    sub_2146DA1C8();
    v22 = v47;
    v55 = v63;
    v56 = v64;
    *v57 = v65[0];
    *&v57[9] = *(v65 + 9);
    v51 = v59;
    v52 = v60;
    v53 = v61;
    v54 = v62;
    v50 = 7;
    sub_214316858();
    v23 = v42;
    sub_2146DA1C8();
    (*(v22 + 8))(v48, v15);
    v24 = type metadata accessor for LinkPresentation.PlaylistMetadata(0);
    v25 = v45;
    sub_21408AC04(v44, v45 + v24[8], &unk_27C9131A0, &unk_2146E9D10);
    sub_21408AC04(v23, v25 + v24[11], &qword_27C904878, &unk_2146EDB68);
    v26 = *(&v41 + 1);
    *v25 = v41;
    v25[1] = v26;
    v27 = *(&v40 + 1);
    v25[2] = v40;
    v25[3] = v27;
    v28 = *(&v39 + 1);
    v25[4] = v39;
    v25[5] = v28;
    v29 = v37;
    v30 = v49;
    v25[6] = v38;
    v25[7] = v30;
    v31 = (v25 + v24[9]);
    *v31 = v29;
    v31[1] = v21;
    v32 = (v25 + v24[10]);
    v33 = v56;
    v32[4] = v55;
    v32[5] = v33;
    v32[6] = *v57;
    *(v32 + 105) = *&v57[9];
    v34 = v52;
    *v32 = v51;
    v32[1] = v34;
    v35 = v54;
    v32[2] = v53;
    v32[3] = v35;
  }

  return __swift_destroy_boxed_opaque_existential_1(v66);
}

uint64_t sub_2142648BC(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90B620, &qword_2146F65B0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v21 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214316BC4();
  sub_2146DAA28();
  v41 = v3;
  v33[0] = *v3;
  LOBYTE(v26) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
  sub_214045AC0();
  sub_2146DA388();
  if (v2)
  {
    return (*(v6 + 8))(v8, v5);
  }

  v10 = v41;
  v33[0] = v41[1];
  LOBYTE(v26) = 1;
  v11 = v8;
  sub_2146DA388();
  v33[0] = v10[2];
  LOBYTE(v26) = 2;
  sub_2146DA388();
  v33[0] = v10[3];
  LOBYTE(v26) = 3;
  sub_2146DA388();
  v12 = type metadata accessor for LinkPresentation.PlaylistMetadata(0);
  v21 = v12[8];
  LOBYTE(v33[0]) = 4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9131A0, &unk_2146E9D10);
  sub_2142E2910();
  sub_2146DA388();
  v40 = *(v41 + v12[9]);
  v39 = 5;
  sub_2146DA388();
  v13 = (v41 + v12[10]);
  v14 = v13[5];
  v15 = v13[3];
  v36 = v13[4];
  v37 = v14;
  v16 = v13[5];
  *v38 = v13[6];
  *&v38[9] = *(v13 + 105);
  v17 = v13[1];
  v33[0] = *v13;
  v33[1] = v17;
  v18 = v13[3];
  v20 = *v13;
  v19 = v13[1];
  v34 = v13[2];
  v35 = v18;
  v30 = v36;
  v31 = v16;
  v32[0] = v13[6];
  *(v32 + 9) = *(v13 + 105);
  v26 = v20;
  v27 = v19;
  v28 = v34;
  v29 = v15;
  v25 = 6;
  sub_213FB2E54(v33, v23, &qword_27C904868, &qword_2146EDB58);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904868, &qword_2146EDB58);
  sub_214315670();
  sub_2146DA388();
  v23[4] = v30;
  v23[5] = v31;
  *v24 = v32[0];
  *&v24[9] = *(v32 + 9);
  v23[0] = v26;
  v23[1] = v27;
  v23[2] = v28;
  v23[3] = v29;
  sub_213FB2DF4(v23, &qword_27C904868, &qword_2146EDB58);
  v22 = 7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904878, &unk_2146EDB68);
  sub_214316990();
  sub_2146DA388();
  return (*(v6 + 8))(v11, v5);
}

unint64_t sub_214264DE0()
{
  v1 = *v0;
  v2 = 0x65644965726F7473;
  v3 = 0x726F7461727563;
  v4 = 0x6B726F77747261;
  if (v1 != 4)
  {
    v4 = 0x4D6B726F77747261;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  if (v1 != 1)
  {
    v2 = 1701667182;
  }

  if (!*v0)
  {
    v2 = 0xD000000000000014;
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

uint64_t sub_214264EB0@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_2143804B4(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_214264ED8(uint64_t a1)
{
  v2 = sub_214316C18();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_214264F14(uint64_t a1)
{
  v2 = sub_214316C18();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_214264F50@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v34 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904878, &unk_2146EDB68);
  MEMORY[0x28223BE20](v4);
  v6 = &v27 - v5;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90B628, &qword_2146F65B8);
  v7 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v9 = &v27 - v8;
  v10 = a1[3];
  v52 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v10);
  sub_214316C18();
  sub_2146DAA08();
  if (!v2)
  {
    v31 = v4;
    v32 = v6;
    v33 = v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
    LOBYTE(v37) = 0;
    sub_2142E12FC();
    v11 = v35;
    sub_2146DA1C8();
    v12 = v45;
    LOBYTE(v37) = 1;
    sub_2146DA1C8();
    v29 = __PAIR128__(*(&v45 + 1), v12);
    v13 = v45;
    v30 = *(&v12 + 1);
    LOBYTE(v37) = 2;
    sub_2146DA1C8();
    v28 = v13;
    v15 = v45;
    LOBYTE(v37) = 3;
    sub_2146DA1C8();
    v27 = v15;
    v16 = v45;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904868, &qword_2146EDB58);
    v44 = 4;
    sub_214314728();
    sub_2146DA1C8();
    v17 = v33;
    v41 = v49;
    v42 = v50;
    *v43 = v51[0];
    *&v43[9] = *(v51 + 9);
    v37 = v45;
    v38 = v46;
    v39 = v47;
    v40 = v48;
    v36 = 5;
    sub_214316858();
    v18 = v32;
    sub_2146DA1C8();
    (*(v17 + 8))(v9, v11);
    v19 = type metadata accessor for LinkPresentation.RadioMetadata(0);
    v20 = v34;
    sub_21408AC04(v18, v34 + *(v19 + 36), &qword_27C904878, &unk_2146EDB68);
    v21 = v30;
    *v20 = v29;
    *(v20 + 8) = v21;
    v22 = *(&v29 + 1);
    *(v20 + 16) = v28;
    *(v20 + 24) = v22;
    v23 = *(&v27 + 1);
    *(v20 + 32) = v27;
    *(v20 + 40) = v23;
    *(v20 + 48) = v16;
    v24 = v42;
    *(v20 + 128) = v41;
    *(v20 + 144) = v24;
    *(v20 + 160) = *v43;
    *(v20 + 169) = *&v43[9];
    v25 = v38;
    *(v20 + 64) = v37;
    *(v20 + 80) = v25;
    v26 = v40;
    *(v20 + 96) = v39;
    *(v20 + 112) = v26;
  }

  return __swift_destroy_boxed_opaque_existential_1(v52);
}

uint64_t sub_214265454(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90B638, &qword_2146F65C0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v18[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214316C18();
  sub_2146DAA28();
  v37 = v3;
  v29[0] = *v3;
  LOBYTE(v22) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
  sub_214045AC0();
  sub_2146DA388();
  if (!v2)
  {
    v10 = v37;
    v29[0] = v37[1];
    LOBYTE(v22) = 1;
    sub_2146DA388();
    v29[0] = v10[2];
    LOBYTE(v22) = 2;
    sub_2146DA388();
    v36 = v10[3];
    v35 = 3;
    sub_2146DA388();
    v11 = v37[9];
    v12 = v37[7];
    v32 = v37[8];
    v33 = v11;
    v13 = v37[9];
    *v34 = v37[10];
    *&v34[9] = *(v37 + 169);
    v14 = v37[5];
    v29[0] = v37[4];
    v29[1] = v14;
    v15 = v37[7];
    v17 = v37[4];
    v16 = v37[5];
    v30 = v37[6];
    v31 = v15;
    v26 = v32;
    v27 = v13;
    v28[0] = v37[10];
    *(v28 + 9) = *(v37 + 169);
    v22 = v17;
    v23 = v16;
    v24 = v30;
    v25 = v12;
    v21 = 4;
    sub_213FB2E54(v29, v19, &qword_27C904868, &qword_2146EDB58);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904868, &qword_2146EDB58);
    sub_214315670();
    sub_2146DA388();
    v19[4] = v26;
    v19[5] = v27;
    *v20 = v28[0];
    *&v20[9] = *(v28 + 9);
    v19[0] = v22;
    v19[1] = v23;
    v19[2] = v24;
    v19[3] = v25;
    sub_213FB2DF4(v19, &qword_27C904868, &qword_2146EDB58);
    type metadata accessor for LinkPresentation.RadioMetadata(0);
    v18[15] = 5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904878, &unk_2146EDB68);
    sub_214316990();
    sub_2146DA388();
  }

  return (*(v6 + 8))(v8, v5);
}

__n128 sub_2142658A8@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, __int128 a10, uint64_t a11, uint64_t a12, _OWORD *a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17)
{
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
  *(a9 + 88) = a12;
  v18 = a13[5];
  *(a9 + 160) = a13[4];
  *(a9 + 176) = v18;
  *(a9 + 192) = a13[6];
  *(a9 + 201) = *(a13 + 105);
  v19 = a13[1];
  *(a9 + 96) = *a13;
  *(a9 + 112) = v19;
  v20 = a13[3];
  *(a9 + 128) = a13[2];
  *(a9 + 144) = v20;
  *(a9 + 224) = a14;
  v21 = type metadata accessor for LinkPresentation.SoftwareMetadata(0);
  sub_21408AC04(a15, a9 + v21[12], &qword_27C904888, &unk_2146EDB80);
  *(a9 + v21[13]) = a16;
  v22 = a9 + v21[14];
  v23 = *(a17 + 80);
  *(v22 + 64) = *(a17 + 64);
  *(v22 + 80) = v23;
  *(v22 + 96) = *(a17 + 96);
  *(v22 + 105) = *(a17 + 105);
  v24 = *(a17 + 16);
  *v22 = *a17;
  *(v22 + 16) = v24;
  result = *(a17 + 32);
  v26 = *(a17 + 48);
  *(v22 + 32) = result;
  *(v22 + 48) = v26;
  return result;
}

unint64_t sub_2142659A0(unsigned __int8 a1)
{
  if (a1 <= 4u)
  {
    v6 = 0x65644965726F7473;
    v7 = 1701667182;
    v8 = 0x656C746974627573;
    if (a1 != 3)
    {
      v8 = 0x65726E6567;
    }

    if (a1 != 2)
    {
      v7 = v8;
    }

    if (!a1)
    {
      v6 = 0xD000000000000014;
    }

    if (a1 <= 1u)
    {
      return v6;
    }

    else
    {
      return v7;
    }
  }

  else
  {
    v1 = 0x5677656976657270;
    v2 = 0xD000000000000011;
    if (a1 != 9)
    {
      v2 = 0x736567617373656DLL;
    }

    if (a1 != 8)
    {
      v1 = v2;
    }

    v3 = 0x6D726F6674616C70;
    v4 = 1852793705;
    if (a1 != 6)
    {
      v4 = 0x68736E6565726373;
    }

    if (a1 != 5)
    {
      v3 = v4;
    }

    if (a1 <= 7u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_214265B24@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_2143806CC(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_214265B4C(uint64_t a1)
{
  v2 = sub_214316C6C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_214265B88(uint64_t a1)
{
  v2 = sub_214316C6C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_214265BC4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v45 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904888, &unk_2146EDB80);
  MEMORY[0x28223BE20](v4);
  v6 = v36 - v5;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90B640, &qword_2146F65C8);
  v7 = *(v46 - 8);
  MEMORY[0x28223BE20](v46);
  v9 = v36 - v8;
  v10 = a1[3];
  v78 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v10);
  sub_214316C6C();
  v47 = v9;
  sub_2146DAA08();
  if (!v2)
  {
    v43 = v6;
    v44 = v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
    LOBYTE(v63) = 0;
    sub_2142E12FC();
    sub_2146DA1C8();
    v11 = v71;
    LOBYTE(v63) = 1;
    sub_2146DA1C8();
    v42 = v11;
    v12 = v71;
    LOBYTE(v63) = 2;
    sub_2146DA1C8();
    v41 = v12;
    v14 = v71;
    LOBYTE(v63) = 3;
    sub_2146DA1C8();
    v40 = v14;
    v15 = v71;
    LOBYTE(v63) = 4;
    sub_2146DA1C8();
    v39 = v15;
    v16 = v71;
    LOBYTE(v63) = 5;
    sub_2146DA1C8();
    v37 = v16;
    v38 = *(&v71 + 1);
    v17 = v71;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904868, &qword_2146EDB58);
    v70 = 6;
    v18 = sub_214314728();
    sub_2146DA1C8();
    v36[0] = v17;
    v36[1] = v18;
    v67 = v75;
    v68 = v76;
    *v69 = v77[0];
    *&v69[9] = *(v77 + 9);
    v63 = v71;
    v64 = v72;
    v65 = v73;
    v66 = v74;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90B348, &unk_2146F6478);
    LOBYTE(v48) = 7;
    sub_2143149E0();
    sub_2146DA1C8();
    v19 = v56;
    LOBYTE(v56) = 8;
    sub_214314CD4();
    sub_2146DA1C8();
    LOBYTE(v56) = 9;
    v20 = sub_2146DA178();
    v55 = 10;
    sub_2146DA1C8();
    (*(v44 + 8))(v47, v46);
    v52 = v60;
    v53 = v61;
    *v54 = v62[0];
    *&v54[9] = *(v62 + 9);
    v48 = v56;
    v49 = v57;
    v50 = v58;
    v51 = v59;
    v21 = type metadata accessor for LinkPresentation.SoftwareMetadata(0);
    v22 = v45;
    sub_21408AC04(v43, v45 + v21[12], &qword_27C904888, &unk_2146EDB80);
    v23 = *(&v42 + 1);
    *v22 = v42;
    *(v22 + 8) = v23;
    v24 = *(&v41 + 1);
    *(v22 + 16) = v41;
    *(v22 + 24) = v24;
    v25 = *(&v40 + 1);
    *(v22 + 32) = v40;
    *(v22 + 40) = v25;
    v26 = *(&v39 + 1);
    *(v22 + 48) = v39;
    *(v22 + 56) = v26;
    v27 = *(&v37 + 1);
    *(v22 + 64) = v37;
    *(v22 + 72) = v27;
    v28 = v38;
    *(v22 + 80) = v36[0];
    *(v22 + 88) = v28;
    v29 = v68;
    *(v22 + 160) = v67;
    *(v22 + 176) = v29;
    *(v22 + 192) = *v69;
    *(v22 + 201) = *&v69[9];
    v30 = v64;
    *(v22 + 96) = v63;
    *(v22 + 112) = v30;
    v31 = v66;
    *(v22 + 128) = v65;
    *(v22 + 144) = v31;
    *(v22 + 224) = v19;
    *(v22 + v21[13]) = v20 & 1;
    v32 = (v22 + v21[14]);
    v33 = v53;
    v32[4] = v52;
    v32[5] = v33;
    v32[6] = *v54;
    *(v32 + 105) = *&v54[9];
    v34 = v49;
    *v32 = v48;
    v32[1] = v34;
    v35 = v51;
    v32[2] = v50;
    v32[3] = v35;
  }

  return __swift_destroy_boxed_opaque_existential_1(v78);
}

uint64_t sub_2142663EC(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90B650, &qword_2146F65D0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v28 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214316C6C();
  sub_2146DAA28();
  v56[0] = *v3;
  LOBYTE(v49) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
  sub_214045AC0();
  sub_2146DA388();
  if (!v2)
  {
    v56[0] = *(v3 + 16);
    LOBYTE(v49) = 1;
    sub_2146DA388();
    v56[0] = *(v3 + 32);
    LOBYTE(v49) = 2;
    sub_2146DA388();
    v56[0] = *(v3 + 48);
    LOBYTE(v49) = 3;
    sub_2146DA388();
    v56[0] = *(v3 + 64);
    LOBYTE(v49) = 4;
    sub_2146DA388();
    v63 = *(v3 + 80);
    v62 = 5;
    sub_2146DA388();
    v9 = *(v3 + 176);
    v10 = *(v3 + 144);
    v59 = *(v3 + 160);
    v60 = v9;
    v11 = *(v3 + 176);
    *v61 = *(v3 + 192);
    *&v61[9] = *(v3 + 201);
    v12 = *(v3 + 112);
    v56[0] = *(v3 + 96);
    v56[1] = v12;
    v13 = *(v3 + 144);
    v15 = *(v3 + 96);
    v14 = *(v3 + 112);
    v57 = *(v3 + 128);
    v58 = v13;
    v53 = v59;
    v54 = v11;
    v55[0] = *(v3 + 192);
    *(v55 + 9) = *(v3 + 201);
    v49 = v15;
    v50 = v14;
    v51 = v57;
    v52 = v10;
    v48 = 6;
    sub_213FB2E54(v56, v46, &qword_27C904868, &qword_2146EDB58);
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904868, &qword_2146EDB58);
    v17 = sub_214315670();
    sub_2146DA388();
    v28[1] = v17;
    v64 = v16;
    v46[4] = v53;
    v46[5] = v54;
    *v47 = v55[0];
    *&v47[9] = *(v55 + 9);
    v46[0] = v49;
    v46[1] = v50;
    v46[2] = v51;
    v46[3] = v52;
    sub_213FB2DF4(v46, &qword_27C904868, &qword_2146EDB58);
    *&v39[0] = *(v3 + 224);
    LOBYTE(v32) = 7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90B348, &unk_2146F6478);
    sub_214315928();
    sub_2146DA388();
    v18 = type metadata accessor for LinkPresentation.SoftwareMetadata(0);
    LOBYTE(v39[0]) = 8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904888, &unk_2146EDB80);
    sub_214315C1C();
    sub_2146DA388();
    v45 = 9;
    sub_2146DA338();
    v19 = (v3 + *(v18 + 56));
    v20 = v19[5];
    v21 = v19[3];
    v42 = v19[4];
    v43 = v20;
    v22 = v19[5];
    *v44 = v19[6];
    *&v44[9] = *(v19 + 105);
    v23 = v19[1];
    v39[0] = *v19;
    v39[1] = v23;
    v24 = v19[3];
    v26 = *v19;
    v25 = v19[1];
    v40 = v19[2];
    v41 = v24;
    v36 = v42;
    v37 = v22;
    v38[0] = v19[6];
    *(v38 + 9) = *(v19 + 105);
    v32 = v26;
    v33 = v25;
    v34 = v40;
    v35 = v21;
    v31 = 10;
    sub_213FB2E54(v39, v29, &qword_27C904868, &qword_2146EDB58);
    sub_2146DA388();
    v29[4] = v36;
    v29[5] = v37;
    *v30 = v38[0];
    *&v30[9] = *(v38 + 9);
    v29[0] = v32;
    v29[1] = v33;
    v29[2] = v34;
    v29[3] = v35;
    sub_213FB2DF4(v29, &qword_27C904868, &qword_2146EDB58);
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_2142669BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, _OWORD *a10, uint64_t a11, char a12)
{
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  *(a9 + 48) = a7;
  *(a9 + 56) = a8;
  v13 = a10[5];
  *(a9 + 128) = a10[4];
  *(a9 + 144) = v13;
  *(a9 + 160) = a10[6];
  *(a9 + 169) = *(a10 + 105);
  v14 = a10[1];
  *(a9 + 64) = *a10;
  *(a9 + 80) = v14;
  v15 = a10[3];
  *(a9 + 96) = a10[2];
  *(a9 + 112) = v15;
  v16 = type metadata accessor for LinkPresentation.BookMetadata(0);
  result = sub_21408AC04(a11, a9 + *(v16 + 36), &qword_27C904878, &unk_2146EDB68);
  *(a9 + *(v16 + 40)) = a12;
  return result;
}

unint64_t sub_214266A68()
{
  v1 = *v0;
  v2 = 0x65644965726F7473;
  v3 = 0x4D6B726F77747261;
  if (v1 != 5)
  {
    v3 = 0x656E697053736168;
  }

  v4 = 0x726F68747561;
  if (v1 != 3)
  {
    v4 = 0x6B726F77747261;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  if (v1 != 1)
  {
    v2 = 1701667182;
  }

  if (!*v0)
  {
    v2 = 0xD000000000000014;
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

uint64_t sub_214266B60@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_214380A64(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_214266B88(uint64_t a1)
{
  v2 = sub_214316CC0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_214266BC4(uint64_t a1)
{
  v2 = sub_214316CC0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_214266C00@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v40 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904878, &unk_2146EDB68);
  MEMORY[0x28223BE20](v4);
  v6 = &v30 - v5;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90B658, &qword_2146F65D8);
  v7 = *(v42 - 8);
  MEMORY[0x28223BE20](v42);
  v9 = &v30 - v8;
  v10 = a1[3];
  v59 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v10);
  sub_214316CC0();
  v41 = v9;
  sub_2146DAA08();
  if (!v2)
  {
    v38 = v6;
    v39 = v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
    LOBYTE(v44) = 0;
    sub_2142E12FC();
    v11 = v41;
    v12 = v42;
    sub_2146DA1C8();
    v13 = v52;
    LOBYTE(v44) = 1;
    sub_2146DA1C8();
    v36 = v52;
    v37 = v13;
    v14 = *(&v52 + 1);
    LOBYTE(v44) = 2;
    sub_2146DA1C8();
    v35 = v14;
    v34 = *(&v52 + 1);
    v15 = v52;
    LOBYTE(v44) = 3;
    sub_2146DA1C8();
    v33 = v15;
    v16 = v52;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904868, &qword_2146EDB58);
    v51 = 4;
    sub_214314728();
    sub_2146DA1C8();
    v17 = v39;
    v31 = *(&v16 + 1);
    v32 = *(&v13 + 1);
    v48 = v56;
    v49 = v57;
    *v50 = v58[0];
    *&v50[9] = *(v58 + 9);
    v44 = v52;
    v45 = v53;
    v46 = v54;
    v47 = v55;
    v43 = 5;
    sub_214316858();
    v18 = v38;
    sub_2146DA1C8();
    v43 = 6;
    v19 = sub_2146DA178();
    (*(v17 + 8))(v11, v12);
    v20 = type metadata accessor for LinkPresentation.BookMetadata(0);
    v21 = v40;
    sub_21408AC04(v18, v40 + *(v20 + 36), &qword_27C904878, &unk_2146EDB68);
    v22 = v32;
    *v21 = v37;
    *(v21 + 8) = v22;
    v23 = v35;
    *(v21 + 16) = v36;
    *(v21 + 24) = v23;
    v24 = v34;
    *(v21 + 32) = v33;
    *(v21 + 40) = v24;
    v25 = v31;
    *(v21 + 48) = v16;
    *(v21 + 56) = v25;
    v26 = v49;
    *(v21 + 128) = v48;
    *(v21 + 144) = v26;
    *(v21 + 160) = *v50;
    *(v21 + 169) = *&v50[9];
    v27 = v45;
    *(v21 + 64) = v44;
    *(v21 + 80) = v27;
    v28 = v47;
    *(v21 + 96) = v46;
    *(v21 + 112) = v28;
    *(v21 + *(v20 + 40)) = v19 & 1;
  }

  return __swift_destroy_boxed_opaque_existential_1(v59);
}

uint64_t sub_2142671C4(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90B668, &qword_2146F65E0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v18 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214316CC0();
  sub_2146DAA28();
  v38 = v3;
  v30[0] = *v3;
  LOBYTE(v23) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
  sub_214045AC0();
  sub_2146DA388();
  if (!v2)
  {
    v9 = v38;
    v30[0] = v38[1];
    LOBYTE(v23) = 1;
    sub_2146DA388();
    v30[0] = v9[2];
    LOBYTE(v23) = 2;
    sub_2146DA388();
    v37 = v9[3];
    v36 = 3;
    sub_2146DA388();
    v11 = v38[9];
    v12 = v38[7];
    v33 = v38[8];
    v34 = v11;
    v13 = v38[9];
    *v35 = v38[10];
    *&v35[9] = *(v38 + 169);
    v14 = v38[5];
    v30[0] = v38[4];
    v30[1] = v14;
    v15 = v38[7];
    v17 = v38[4];
    v16 = v38[5];
    v31 = v38[6];
    v32 = v15;
    v27 = v33;
    v28 = v13;
    v29[0] = v38[10];
    *(v29 + 9) = *(v38 + 169);
    v23 = v17;
    v24 = v16;
    v25 = v31;
    v26 = v12;
    v22 = 4;
    sub_213FB2E54(v30, v20, &qword_27C904868, &qword_2146EDB58);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904868, &qword_2146EDB58);
    sub_214315670();
    sub_2146DA388();
    v20[4] = v27;
    v20[5] = v28;
    *v21 = v29[0];
    *&v21[9] = *(v29 + 9);
    v20[0] = v23;
    v20[1] = v24;
    v20[2] = v25;
    v20[3] = v26;
    sub_213FB2DF4(v20, &qword_27C904868, &qword_2146EDB58);
    type metadata accessor for LinkPresentation.BookMetadata(0);
    v19 = 5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904878, &unk_2146EDB68);
    sub_214316990();
    sub_2146DA388();
    v19 = 6;
    sub_2146DA338();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_214267660@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, _OWORD *a12, uint64_t a13, uint64_t a14)
{
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  *(a9 + 48) = a7;
  *(a9 + 56) = a8;
  *(a9 + 64) = a10;
  *(a9 + 72) = a11;
  v15 = a12[5];
  *(a9 + 144) = a12[4];
  *(a9 + 160) = v15;
  *(a9 + 176) = a12[6];
  *(a9 + 185) = *(a12 + 105);
  v16 = a12[1];
  *(a9 + 80) = *a12;
  *(a9 + 96) = v16;
  v17 = a12[3];
  *(a9 + 112) = a12[2];
  *(a9 + 128) = v17;
  v18 = type metadata accessor for LinkPresentation.AudioBookMetadata(0);
  sub_21408AC04(a13, a9 + *(v18 + 40), &qword_27C904878, &unk_2146EDB68);
  return sub_21408AC04(a14, a9 + *(v18 + 44), &unk_27C9131A0, &unk_2146E9D10);
}

unint64_t sub_21426772C()
{
  v1 = *v0;
  v2 = 0x65644965726F7473;
  v3 = 0x4D6B726F77747261;
  if (v1 != 6)
  {
    v3 = 0x5577656976657270;
  }

  v4 = 0x726F74617272616ELL;
  if (v1 != 4)
  {
    v4 = 0x6B726F77747261;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 1701667182;
  if (v1 != 2)
  {
    v5 = 0x726F68747561;
  }

  if (!*v0)
  {
    v2 = 0xD000000000000014;
  }

  if (*v0 > 1u)
  {
    v2 = v5;
  }

  if (*v0 <= 3u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_21426783C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_214380CCC(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_214267864(uint64_t a1)
{
  v2 = sub_214316D14();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2142678A0(uint64_t a1)
{
  v2 = sub_214316D14();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2142678DC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v42 = a2;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9131A0, &unk_2146E9D10);
  MEMORY[0x28223BE20](v43);
  v4 = &v33 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904878, &unk_2146EDB68);
  MEMORY[0x28223BE20](v5);
  v7 = &v33 - v6;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90B670, &qword_2146F65E8);
  v8 = *(v45 - 8);
  MEMORY[0x28223BE20](v45);
  v10 = &v33 - v9;
  v11 = a1[3];
  v63 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v11);
  sub_214316D14();
  v44 = v10;
  v12 = v46;
  sub_2146DAA08();
  if (!v12)
  {
    v40 = v4;
    v41 = v7;
    v46 = v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
    LOBYTE(v48) = 0;
    sub_2142E12FC();
    v13 = v44;
    v14 = v45;
    sub_2146DA1C8();
    v15 = v56;
    LOBYTE(v48) = 1;
    sub_2146DA1C8();
    v38 = __PAIR128__(*(&v56 + 1), v15);
    v16 = v56;
    v39 = *(&v15 + 1);
    LOBYTE(v48) = 2;
    sub_2146DA1C8();
    v18 = *(&v56 + 1);
    v37 = v56;
    LOBYTE(v48) = 3;
    sub_2146DA1C8();
    v36 = v18;
    v35 = *(&v56 + 1);
    v19 = v56;
    LOBYTE(v48) = 4;
    sub_2146DA1C8();
    v33 = v19;
    v34 = v16;
    v20 = v56;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904868, &qword_2146EDB58);
    v55 = 5;
    sub_214314728();
    sub_2146DA1C8();
    v21 = v46;
    v52 = v60;
    v53 = v61;
    *v54 = v62[0];
    *&v54[9] = *(v62 + 9);
    v48 = v56;
    v49 = v57;
    v50 = v58;
    v51 = v59;
    v47 = 6;
    sub_214316858();
    v22 = v41;
    sub_2146DA1C8();
    v47 = 7;
    sub_2142E27A8();
    v23 = v40;
    sub_2146DA1C8();
    (*(v21 + 8))(v13, v14);
    v24 = type metadata accessor for LinkPresentation.AudioBookMetadata(0);
    v25 = v42;
    sub_21408AC04(v22, v42 + *(v24 + 40), &qword_27C904878, &unk_2146EDB68);
    sub_21408AC04(v23, v25 + *(v24 + 44), &unk_27C9131A0, &unk_2146E9D10);
    v26 = v39;
    *v25 = v38;
    *(v25 + 8) = v26;
    v27 = *(&v38 + 1);
    *(v25 + 16) = v34;
    *(v25 + 24) = v27;
    v28 = v36;
    *(v25 + 32) = v37;
    *(v25 + 40) = v28;
    v29 = v35;
    *(v25 + 48) = v33;
    *(v25 + 56) = v29;
    *(v25 + 64) = v20;
    v30 = v53;
    *(v25 + 144) = v52;
    *(v25 + 160) = v30;
    *(v25 + 176) = *v54;
    *(v25 + 185) = *&v54[9];
    v31 = v49;
    *(v25 + 80) = v48;
    *(v25 + 96) = v31;
    v32 = v51;
    *(v25 + 112) = v50;
    *(v25 + 128) = v32;
  }

  return __swift_destroy_boxed_opaque_existential_1(v63);
}

uint64_t sub_214267FAC(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90B680, &qword_2146F65F0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v17 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214316D14();
  sub_2146DAA28();
  v29[0] = *v2;
  LOBYTE(v22) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
  sub_214045AC0();
  v8 = v37;
  sub_2146DA388();
  if (!v8)
  {
    v29[0] = v2[1];
    LOBYTE(v22) = 1;
    sub_2146DA388();
    v29[0] = v2[2];
    LOBYTE(v22) = 2;
    sub_2146DA388();
    v29[0] = v2[3];
    LOBYTE(v22) = 3;
    sub_2146DA388();
    v36 = v2[4];
    v35 = 4;
    sub_2146DA388();
    v10 = v2[10];
    v11 = v2[8];
    v32 = v2[9];
    v33 = v10;
    v12 = v2[10];
    *v34 = v2[11];
    *&v34[9] = *(v2 + 185);
    v13 = v2[6];
    v29[0] = v2[5];
    v29[1] = v13;
    v14 = v2[8];
    v16 = v2[5];
    v15 = v2[6];
    v30 = v2[7];
    v31 = v14;
    v26 = v32;
    v27 = v12;
    v28[0] = v2[11];
    *(v28 + 9) = *(v2 + 185);
    v22 = v16;
    v23 = v15;
    v24 = v30;
    v25 = v11;
    v21 = 5;
    sub_213FB2E54(v29, v19, &qword_27C904868, &qword_2146EDB58);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904868, &qword_2146EDB58);
    sub_214315670();
    sub_2146DA388();
    v19[4] = v26;
    v19[5] = v27;
    *v20 = v28[0];
    *&v20[9] = *(v28 + 9);
    v19[0] = v22;
    v19[1] = v23;
    v19[2] = v24;
    v19[3] = v25;
    sub_213FB2DF4(v19, &qword_27C904868, &qword_2146EDB58);
    type metadata accessor for LinkPresentation.AudioBookMetadata(0);
    v18 = 6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904878, &unk_2146EDB68);
    sub_214316990();
    sub_2146DA388();
    v18 = 7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9131A0, &unk_2146E9D10);
    sub_2142E2910();
    sub_2146DA388();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_214268448@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, _OWORD *a13, uint64_t a14, uint64_t a15)
{
  *a9 = a1;
  a9[1] = a2;
  a9[2] = a3;
  a9[3] = a4;
  a9[4] = a5;
  a9[5] = a6;
  a9[6] = a7;
  a9[7] = a8;
  a9[8] = a10;
  a9[9] = a11;
  v16 = type metadata accessor for LinkPresentation.PodcastEpisodeMetadata(0);
  sub_21408AC04(a12, a9 + v16[9], &qword_27C913090, &unk_2146E9DB0);
  v17 = (a9 + v16[10]);
  v18 = a13[5];
  v17[4] = a13[4];
  v17[5] = v18;
  v17[6] = a13[6];
  *(v17 + 105) = *(a13 + 105);
  v19 = a13[1];
  *v17 = *a13;
  v17[1] = v19;
  v20 = a13[3];
  v17[2] = a13[2];
  v17[3] = v20;
  result = sub_21408AC04(a14, a9 + v16[11], &qword_27C904878, &unk_2146EDB68);
  *(a9 + v16[12]) = a15;
  return result;
}

unint64_t sub_21426852C(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v5 = 0x65644965726F7473;
    v6 = 0x4E65646F73697065;
    if (a1 != 2)
    {
      v6 = 0x4E74736163646F70;
    }

    if (!a1)
    {
      v5 = 0xD000000000000014;
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
    v1 = 0x6B726F77747261;
    v2 = 0x4D6B726F77747261;
    if (a1 != 7)
    {
      v2 = 0x73726566666FLL;
    }

    if (a1 != 6)
    {
      v1 = v2;
    }

    v3 = 0x747369747261;
    if (a1 != 4)
    {
      v3 = 0x44657361656C6572;
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

uint64_t sub_214268680@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_214380F80(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_2142686A8(uint64_t a1)
{
  v2 = sub_214316D68();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2142686E4(uint64_t a1)
{
  v2 = sub_214316D68();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_214268720@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v43 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904878, &unk_2146EDB68);
  MEMORY[0x28223BE20](v3);
  v5 = &v36 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C913090, &unk_2146E9DB0);
  MEMORY[0x28223BE20](v6);
  v8 = &v36 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90B688, &qword_2146F65F8);
  v10 = *(v9 - 8);
  v45 = v9;
  v46 = v10;
  MEMORY[0x28223BE20](v9);
  v12 = &v36 - v11;
  v13 = a1[3];
  v65 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v13);
  sub_214316D68();
  v44 = v12;
  v14 = v47;
  sub_2146DAA08();
  if (!v14)
  {
    v41 = v5;
    v42 = v6;
    v40 = v3;
    v47 = v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
    LOBYTE(v50) = 0;
    sub_2142E12FC();
    v15 = v44;
    v16 = v45;
    sub_2146DA1C8();
    v17 = v58;
    LOBYTE(v50) = 1;
    sub_2146DA1C8();
    v39 = v17;
    v18 = *(&v58 + 1);
    v19 = v58;
    LOBYTE(v50) = 2;
    sub_2146DA1C8();
    v38 = v58;
    LOBYTE(v50) = 3;
    sub_2146DA1C8();
    v37 = v58;
    LOBYTE(v50) = 4;
    sub_2146DA1C8();
    v36 = __PAIR128__(*(&v58 + 1), v19);
    v21 = v18;
    v22 = v58;
    LOBYTE(v58) = 5;
    sub_2142EC0C4();
    v23 = v47;
    sub_2146DA1C8();
    v42 = v22;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904868, &qword_2146EDB58);
    v57 = 6;
    sub_214314728();
    sub_2146DA1C8();
    v24 = v46;
    v54 = v62;
    v55 = v63;
    *v56 = v64[0];
    *&v56[9] = *(v64 + 9);
    v50 = v58;
    v51 = v59;
    v52 = v60;
    v53 = v61;
    LOBYTE(v49) = 7;
    sub_214316858();
    sub_2146DA1C8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904000, &unk_2146EA780);
    v48 = 8;
    sub_2142E1548();
    sub_2146DA1C8();
    (*(v24 + 8))(v15, v16);
    v25 = v49;
    v26 = type metadata accessor for LinkPresentation.PodcastEpisodeMetadata(0);
    v27 = v43;
    sub_21408AC04(v23, v43 + v26[9], &qword_27C913090, &unk_2146E9DB0);
    sub_21408AC04(v41, v27 + v26[11], &qword_27C904878, &unk_2146EDB68);
    v28 = *(&v39 + 1);
    *v27 = v39;
    v27[1] = v28;
    v27[2] = v36;
    v27[3] = v21;
    v29 = *(&v38 + 1);
    v27[4] = v38;
    v27[5] = v29;
    v30 = *(&v37 + 1);
    v27[6] = v37;
    v27[7] = v30;
    v31 = *(&v36 + 1);
    v27[8] = v42;
    v27[9] = v31;
    v32 = (v27 + v26[10]);
    v33 = v55;
    v32[4] = v54;
    v32[5] = v33;
    v32[6] = *v56;
    *(v32 + 105) = *&v56[9];
    v34 = v51;
    *v32 = v50;
    v32[1] = v34;
    v35 = v53;
    v32[2] = v52;
    v32[3] = v35;
    *(v27 + v26[12]) = v25;
  }

  return __swift_destroy_boxed_opaque_existential_1(v65);
}

uint64_t sub_214268E5C(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90B698, &qword_2146F6600);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v24 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214316D68();
  sub_2146DAA28();
  v45 = v3;
  v38[0] = *v3;
  LOBYTE(v31) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
  sub_214045AC0();
  sub_2146DA388();
  if (v2)
  {
    return (*(v6 + 8))(v8, v5);
  }

  v9 = v45;
  v38[0] = v45[1];
  LOBYTE(v31) = 1;
  sub_2146DA388();
  v38[0] = v9[2];
  LOBYTE(v31) = 2;
  v25 = v5;
  sub_2146DA388();
  v10 = v6;
  v38[0] = v9[3];
  LOBYTE(v31) = 3;
  sub_2146DA388();
  v38[0] = v9[4];
  LOBYTE(v31) = 4;
  sub_2146DA388();
  v11 = type metadata accessor for LinkPresentation.PodcastEpisodeMetadata(0);
  v44[0] = 5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C913090, &unk_2146E9DB0);
  sub_2142EC30C();
  v12 = v45;
  sub_2146DA388();
  v13 = (v12 + *(v11 + 40));
  v14 = v13[5];
  v15 = v13[3];
  v41 = v13[4];
  v42 = v14;
  v16 = v13[5];
  *v43 = v13[6];
  *&v43[9] = *(v13 + 105);
  v17 = v13[1];
  v38[0] = *v13;
  v38[1] = v17;
  v18 = v13[3];
  v20 = *v13;
  v19 = v13[1];
  v39 = v13[2];
  v40 = v18;
  v35 = v41;
  v36 = v16;
  v37[0] = v13[6];
  *(v37 + 9) = *(v13 + 105);
  v31 = v20;
  v32 = v19;
  v33 = v39;
  v34 = v15;
  v30 = 6;
  sub_213FB2E54(v38, v28, &qword_27C904868, &qword_2146EDB58);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904868, &qword_2146EDB58);
  sub_214315670();
  sub_2146DA388();
  v28[4] = v35;
  v28[5] = v36;
  *v29 = v37[0];
  *&v29[9] = *(v37 + 9);
  v28[0] = v31;
  v28[1] = v32;
  v28[2] = v33;
  v28[3] = v34;
  sub_213FB2DF4(v28, &qword_27C904868, &qword_2146EDB58);
  LOBYTE(v27) = 7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904878, &unk_2146EDB68);
  sub_214316990();
  v21 = v45;
  sub_2146DA388();
  v27 = *(v21 + *(v11 + 48));
  v26 = 8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904000, &unk_2146EA780);
  sub_2140459AC();
  v22 = v25;
  sub_2146DA388();
  return (*(v10 + 8))(v8, v22);
}

uint64_t sub_2142693CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, _OWORD *a10, uint64_t a11, uint64_t a12, uint64_t (*a13)(void))
{
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  *(a9 + 48) = a7;
  *(a9 + 56) = a8;
  v14 = a10[5];
  *(a9 + 128) = a10[4];
  *(a9 + 144) = v14;
  *(a9 + 160) = a10[6];
  *(a9 + 169) = *(a10 + 105);
  v15 = a10[1];
  *(a9 + 64) = *a10;
  *(a9 + 80) = v15;
  v16 = a10[3];
  *(a9 + 96) = a10[2];
  *(a9 + 112) = v16;
  v17 = a13(0);
  result = sub_21408AC04(a11, a9 + *(v17 + 36), &qword_27C904878, &unk_2146EDB68);
  *(a9 + *(v17 + 40)) = a12;
  return result;
}

unint64_t sub_21426947C()
{
  v1 = *v0;
  v2 = 0x65644965726F7473;
  v3 = 0x4D6B726F77747261;
  if (v1 != 5)
  {
    v3 = 0x73726566666FLL;
  }

  v4 = 0x747369747261;
  if (v1 != 3)
  {
    v4 = 0x6B726F77747261;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  if (v1 != 1)
  {
    v2 = 1701667182;
  }

  if (!*v0)
  {
    v2 = 0xD000000000000014;
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

uint64_t sub_214269560(uint64_t a1)
{
  v2 = sub_214316DBC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21426959C(uint64_t a1)
{
  v2 = sub_214316DBC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2142695D8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v37 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904878, &unk_2146EDB68);
  MEMORY[0x28223BE20](v4);
  v6 = &v29 - v5;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90B6A0, &qword_2146F6608);
  v7 = *(v39 - 8);
  MEMORY[0x28223BE20](v39);
  v9 = &v29 - v8;
  v10 = a1[3];
  v57 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v10);
  sub_214316DBC();
  v38 = v9;
  sub_2146DAA08();
  if (!v2)
  {
    v35 = v6;
    v36 = v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
    LOBYTE(v42) = 0;
    sub_2142E12FC();
    v11 = v38;
    v12 = v39;
    sub_2146DA1C8();
    v13 = v50;
    LOBYTE(v42) = 1;
    sub_2146DA1C8();
    v34 = v13;
    v14 = *(&v50 + 1);
    v33 = v50;
    LOBYTE(v42) = 2;
    sub_2146DA1C8();
    v32 = *(&v50 + 1);
    v16 = v50;
    LOBYTE(v42) = 3;
    sub_2146DA1C8();
    v30 = v16;
    v31 = v14;
    v17 = v50;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904868, &qword_2146EDB58);
    v49 = 4;
    sub_214314728();
    sub_2146DA1C8();
    v18 = v36;
    v29 = v17;
    v46 = v54;
    v47 = v55;
    *v48 = v56[0];
    *&v48[9] = *(v56 + 9);
    v42 = v50;
    v43 = v51;
    v44 = v52;
    v45 = v53;
    LOBYTE(v41) = 5;
    sub_214316858();
    sub_2146DA1C8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904000, &unk_2146EA780);
    v40 = 6;
    sub_2142E1548();
    sub_2146DA1C8();
    v19 = v32;
    (*(v18 + 8))(v11, v12);
    v20 = v41;
    v21 = type metadata accessor for LinkPresentation.PodcastMetadata(0);
    v22 = v37;
    sub_21408AC04(v35, v37 + *(v21 + 36), &qword_27C904878, &unk_2146EDB68);
    v23 = *(&v34 + 1);
    *v22 = v34;
    *(v22 + 8) = v23;
    v24 = v30;
    v25 = v31;
    *(v22 + 16) = v33;
    *(v22 + 24) = v25;
    *(v22 + 32) = v24;
    *(v22 + 40) = v19;
    *(v22 + 48) = v29;
    *(v22 + 56) = *(&v17 + 1);
    v26 = v47;
    *(v22 + 128) = v46;
    *(v22 + 144) = v26;
    *(v22 + 160) = *v48;
    *(v22 + 169) = *&v48[9];
    v27 = v43;
    *(v22 + 64) = v42;
    *(v22 + 80) = v27;
    v28 = v45;
    *(v22 + 96) = v44;
    *(v22 + 112) = v28;
    *(v22 + *(v21 + 40)) = v20;
  }

  return __swift_destroy_boxed_opaque_existential_1(v57);
}

uint64_t sub_214269BB0(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90B6B0, &qword_2146F6610);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v19[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214316DBC();
  sub_2146DAA28();
  v39 = v3;
  v31[0] = *v3;
  LOBYTE(v24) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
  sub_214045AC0();
  sub_2146DA388();
  if (!v2)
  {
    v10 = v39;
    v31[0] = v39[1];
    LOBYTE(v24) = 1;
    sub_2146DA388();
    v31[0] = v10[2];
    LOBYTE(v24) = 2;
    sub_2146DA388();
    v38 = v10[3];
    v37 = 3;
    sub_2146DA388();
    v11 = v39[9];
    v12 = v39[7];
    v34 = v39[8];
    v35 = v11;
    v13 = v39[9];
    *v36 = v39[10];
    *&v36[9] = *(v39 + 169);
    v14 = v39[5];
    v31[0] = v39[4];
    v31[1] = v14;
    v15 = v39[7];
    v17 = v39[4];
    v16 = v39[5];
    v32 = v39[6];
    v33 = v15;
    v28 = v34;
    v29 = v13;
    v30[0] = v39[10];
    *(v30 + 9) = *(v39 + 169);
    v24 = v17;
    v25 = v16;
    v26 = v32;
    v27 = v12;
    v23 = 4;
    sub_213FB2E54(v31, v21, &qword_27C904868, &qword_2146EDB58);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904868, &qword_2146EDB58);
    sub_214315670();
    sub_2146DA388();
    v21[4] = v28;
    v21[5] = v29;
    *v22 = v30[0];
    *&v22[9] = *(v30 + 9);
    v21[0] = v24;
    v21[1] = v25;
    v21[2] = v26;
    v21[3] = v27;
    sub_213FB2DF4(v21, &qword_27C904868, &qword_2146EDB58);
    v18 = type metadata accessor for LinkPresentation.PodcastMetadata(0);
    LOBYTE(v20) = 5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904878, &unk_2146EDB68);
    sub_214316990();
    sub_2146DA388();
    v20 = *(v39 + *(v18 + 40));
    v19[7] = 6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904000, &unk_2146EA780);
    sub_2140459AC();
    sub_2146DA388();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_21426A064@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, _OWORD *a12, uint64_t a13)
{
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  *(a9 + 48) = a7;
  *(a9 + 56) = a8;
  *(a9 + 64) = a10;
  *(a9 + 72) = a11;
  v14 = a12[5];
  *(a9 + 144) = a12[4];
  *(a9 + 160) = v14;
  *(a9 + 176) = a12[6];
  *(a9 + 185) = *(a12 + 105);
  v15 = a12[1];
  *(a9 + 80) = *a12;
  *(a9 + 96) = v15;
  v16 = a12[3];
  *(a9 + 112) = a12[2];
  *(a9 + 128) = v16;
  v17 = type metadata accessor for LinkPresentation.TVEpisodeMetadata(0);
  return sub_21408AC04(a13, a9 + *(v17 + 40), &qword_27C904878, &unk_2146EDB68);
}

unint64_t sub_21426A100()
{
  v1 = *v0;
  v2 = 0x65644965726F7473;
  v3 = 0x6B726F77747261;
  if (v1 != 5)
  {
    v3 = 0x4D6B726F77747261;
  }

  v4 = 0x614E6E6F73616573;
  if (v1 != 3)
  {
    v4 = 0x65726E6567;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  if (v1 != 1)
  {
    v2 = 0x4E65646F73697065;
  }

  if (!*v0)
  {
    v2 = 0xD000000000000014;
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

uint64_t sub_21426A200@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_2143814D8(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_21426A228(uint64_t a1)
{
  v2 = sub_214316E10();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21426A264(uint64_t a1)
{
  v2 = sub_214316E10();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21426A2A0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v40 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904878, &unk_2146EDB68);
  MEMORY[0x28223BE20](v4);
  v6 = &v31 - v5;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90B6B8, &qword_2146F6618);
  v7 = *(v42 - 8);
  MEMORY[0x28223BE20](v42);
  v9 = &v31 - v8;
  v10 = a1[3];
  v59 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v10);
  sub_214316E10();
  v41 = v9;
  sub_2146DAA08();
  if (!v2)
  {
    v38 = v6;
    v39 = v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
    LOBYTE(v44) = 0;
    sub_2142E12FC();
    v11 = v41;
    v12 = v42;
    sub_2146DA1C8();
    v13 = v52;
    LOBYTE(v44) = 1;
    sub_2146DA1C8();
    v37 = v13;
    v14 = *(&v52 + 1);
    v36 = v52;
    LOBYTE(v44) = 2;
    sub_2146DA1C8();
    v35 = v14;
    v16 = v52;
    LOBYTE(v44) = 3;
    sub_2146DA1C8();
    v34 = v16;
    v17 = *(&v52 + 1);
    v33 = v52;
    LOBYTE(v44) = 4;
    sub_2146DA1C8();
    v32 = v17;
    v18 = v52;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904868, &qword_2146EDB58);
    v51 = 5;
    sub_214314728();
    sub_2146DA1C8();
    v19 = v39;
    v31 = v18;
    v48 = v56;
    v49 = v57;
    *v50 = v58[0];
    *&v50[9] = *(v58 + 9);
    v44 = v52;
    v45 = v53;
    v46 = v54;
    v47 = v55;
    v43 = 6;
    sub_214316858();
    v20 = v38;
    sub_2146DA1C8();
    (*(v19 + 8))(v11, v12);
    v21 = type metadata accessor for LinkPresentation.TVEpisodeMetadata(0);
    v22 = v40;
    sub_21408AC04(v20, v40 + *(v21 + 40), &qword_27C904878, &unk_2146EDB68);
    v23 = *(&v37 + 1);
    *v22 = v37;
    *(v22 + 8) = v23;
    v24 = v35;
    *(v22 + 16) = v36;
    *(v22 + 24) = v24;
    v25 = *(&v34 + 1);
    *(v22 + 32) = v34;
    *(v22 + 40) = v25;
    v26 = v32;
    *(v22 + 48) = v33;
    *(v22 + 56) = v26;
    v27 = *(&v31 + 1);
    *(v22 + 64) = v31;
    *(v22 + 72) = v27;
    v28 = v49;
    *(v22 + 144) = v48;
    *(v22 + 160) = v28;
    *(v22 + 176) = *v50;
    *(v22 + 185) = *&v50[9];
    v29 = v45;
    *(v22 + 80) = v44;
    *(v22 + 96) = v29;
    v30 = v47;
    *(v22 + 112) = v46;
    *(v22 + 128) = v30;
  }

  return __swift_destroy_boxed_opaque_existential_1(v59);
}

uint64_t sub_21426A820(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90B6C8, &qword_2146F6620);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v20[-v6];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214316E10();
  sub_2146DAA28();
  v8 = v2;
  v31[0] = *v2;
  LOBYTE(v24) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
  sub_214045AC0();
  v9 = v39;
  sub_2146DA388();
  if (v9)
  {
    return (*(v5 + 8))(v7, v4);
  }

  v31[0] = v2[1];
  LOBYTE(v24) = 1;
  sub_2146DA388();
  v31[0] = v2[2];
  LOBYTE(v24) = 2;
  v39 = v7;
  sub_2146DA388();
  v10 = v5;
  v31[0] = v8[3];
  LOBYTE(v24) = 3;
  sub_2146DA388();
  v38 = v8[4];
  v37 = 4;
  sub_2146DA388();
  v11 = v8[10];
  v12 = v8[8];
  v34 = v8[9];
  v35 = v11;
  v13 = v8[10];
  *v36 = v8[11];
  *&v36[9] = *(v8 + 185);
  v14 = v8[6];
  v31[0] = v8[5];
  v31[1] = v14;
  v15 = v8[8];
  v17 = v8[5];
  v16 = v8[6];
  v32 = v8[7];
  v33 = v15;
  v28 = v34;
  v29 = v13;
  v30[0] = v8[11];
  *(v30 + 9) = *(v8 + 185);
  v24 = v17;
  v25 = v16;
  v26 = v32;
  v27 = v12;
  v23 = 5;
  sub_213FB2E54(v31, v21, &qword_27C904868, &qword_2146EDB58);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904868, &qword_2146EDB58);
  sub_214315670();
  sub_2146DA388();
  v21[4] = v28;
  v21[5] = v29;
  *v22 = v30[0];
  *&v22[9] = *(v30 + 9);
  v21[0] = v24;
  v21[1] = v25;
  v21[2] = v26;
  v21[3] = v27;
  sub_213FB2DF4(v21, &qword_27C904868, &qword_2146EDB58);
  type metadata accessor for LinkPresentation.TVEpisodeMetadata(0);
  v20[15] = 6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904878, &unk_2146EDB68);
  sub_214316990();
  v18 = v39;
  sub_2146DA388();
  return (*(v10 + 8))(v18, v4);
}

uint64_t sub_21426ACB8(uint64_t a1)
{
  v2 = sub_214316E64();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21426ACF4(uint64_t a1)
{
  v2 = sub_214316E64();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21426AD30@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v34 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904878, &unk_2146EDB68);
  MEMORY[0x28223BE20](v4);
  v6 = &v27 - v5;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90B6D0, &qword_2146F6628);
  v7 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v9 = &v27 - v8;
  v10 = a1[3];
  v52 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v10);
  sub_214316E64();
  sub_2146DAA08();
  if (!v2)
  {
    v31 = v4;
    v32 = v6;
    v33 = v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
    LOBYTE(v37) = 0;
    sub_2142E12FC();
    v11 = v35;
    sub_2146DA1C8();
    v12 = v45;
    LOBYTE(v37) = 1;
    sub_2146DA1C8();
    v29 = __PAIR128__(*(&v45 + 1), v12);
    v13 = v45;
    v30 = *(&v12 + 1);
    LOBYTE(v37) = 2;
    sub_2146DA1C8();
    v28 = v13;
    v15 = v45;
    LOBYTE(v37) = 3;
    sub_2146DA1C8();
    v27 = v15;
    v16 = v45;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904868, &qword_2146EDB58);
    v44 = 4;
    sub_214314728();
    sub_2146DA1C8();
    v17 = v33;
    v41 = v49;
    v42 = v50;
    *v43 = v51[0];
    *&v43[9] = *(v51 + 9);
    v37 = v45;
    v38 = v46;
    v39 = v47;
    v40 = v48;
    v36 = 5;
    sub_214316858();
    v18 = v32;
    sub_2146DA1C8();
    (*(v17 + 8))(v9, v11);
    v19 = type metadata accessor for LinkPresentation.TVSeasonMetadata(0);
    v20 = v34;
    sub_21408AC04(v18, v34 + *(v19 + 36), &qword_27C904878, &unk_2146EDB68);
    v21 = v30;
    *v20 = v29;
    *(v20 + 8) = v21;
    v22 = *(&v29 + 1);
    *(v20 + 16) = v28;
    *(v20 + 24) = v22;
    v23 = *(&v27 + 1);
    *(v20 + 32) = v27;
    *(v20 + 40) = v23;
    *(v20 + 48) = v16;
    v24 = v42;
    *(v20 + 128) = v41;
    *(v20 + 144) = v24;
    *(v20 + 160) = *v43;
    *(v20 + 169) = *&v43[9];
    v25 = v38;
    *(v20 + 64) = v37;
    *(v20 + 80) = v25;
    v26 = v40;
    *(v20 + 96) = v39;
    *(v20 + 112) = v26;
  }

  return __swift_destroy_boxed_opaque_existential_1(v52);
}

uint64_t sub_21426B234(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90B6E0, &qword_2146F6630);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v18[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214316E64();
  sub_2146DAA28();
  v37 = v3;
  v29[0] = *v3;
  LOBYTE(v22) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
  sub_214045AC0();
  sub_2146DA388();
  if (!v2)
  {
    v10 = v37;
    v29[0] = v37[1];
    LOBYTE(v22) = 1;
    sub_2146DA388();
    v29[0] = v10[2];
    LOBYTE(v22) = 2;
    sub_2146DA388();
    v36 = v10[3];
    v35 = 3;
    sub_2146DA388();
    v11 = v37[9];
    v12 = v37[7];
    v32 = v37[8];
    v33 = v11;
    v13 = v37[9];
    *v34 = v37[10];
    *&v34[9] = *(v37 + 169);
    v14 = v37[5];
    v29[0] = v37[4];
    v29[1] = v14;
    v15 = v37[7];
    v17 = v37[4];
    v16 = v37[5];
    v30 = v37[6];
    v31 = v15;
    v26 = v32;
    v27 = v13;
    v28[0] = v37[10];
    *(v28 + 9) = *(v37 + 169);
    v22 = v17;
    v23 = v16;
    v24 = v30;
    v25 = v12;
    v21 = 4;
    sub_213FB2E54(v29, v19, &qword_27C904868, &qword_2146EDB58);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904868, &qword_2146EDB58);
    sub_214315670();
    sub_2146DA388();
    v19[4] = v26;
    v19[5] = v27;
    *v20 = v28[0];
    *&v20[9] = *(v28 + 9);
    v19[0] = v22;
    v19[1] = v23;
    v19[2] = v24;
    v19[3] = v25;
    sub_213FB2DF4(v19, &qword_27C904868, &qword_2146EDB58);
    type metadata accessor for LinkPresentation.TVSeasonMetadata(0);
    v18[15] = 5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904878, &unk_2146EDB68);
    sub_214316990();
    sub_2146DA388();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_21426B688@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, _OWORD *a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  v11 = a7[5];
  *(a9 + 112) = a7[4];
  *(a9 + 128) = v11;
  *(a9 + 144) = a7[6];
  *(a9 + 153) = *(a7 + 105);
  v12 = a7[1];
  *(a9 + 48) = *a7;
  *(a9 + 64) = v12;
  v13 = a7[3];
  *(a9 + 80) = a7[2];
  *(a9 + 96) = v13;
  v14 = type metadata accessor for LinkPresentation.TVShowMetadata(0);
  return sub_21408AC04(a8, a9 + *(v14 + 32), &qword_27C904878, &unk_2146EDB68);
}

unint64_t sub_21426B718()
{
  v1 = *v0;
  v2 = 0x65644965726F7473;
  v3 = 1701667182;
  v4 = 0x6B726F77747261;
  if (v1 != 3)
  {
    v4 = 0x4D6B726F77747261;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (!*v0)
  {
    v2 = 0xD000000000000014;
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

uint64_t sub_21426B7C8@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_214381744(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_21426B7F0(uint64_t a1)
{
  v2 = sub_214316EB8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21426B82C(uint64_t a1)
{
  v2 = sub_214316EB8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21426B868@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v29 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904878, &unk_2146EDB68);
  MEMORY[0x28223BE20](v4);
  v6 = &v23 - v5;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90B6E8, &qword_2146F6638);
  v7 = *(v30 - 8);
  MEMORY[0x28223BE20](v30);
  v9 = &v23 - v8;
  v10 = a1[3];
  v42 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v10);
  sub_214316EB8();
  sub_2146DAA08();
  if (!v2)
  {
    v26 = v4;
    v27 = v6;
    v28 = v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
    LOBYTE(v32) = 0;
    sub_2142E12FC();
    v11 = v30;
    sub_2146DA1C8();
    v12 = v40[0];
    LOBYTE(v32) = 1;
    sub_2146DA1C8();
    v25 = v12;
    v13 = v40[0];
    LOBYTE(v32) = 2;
    sub_2146DA1C8();
    v15 = v40[0];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904868, &qword_2146EDB58);
    v39 = 3;
    sub_214314728();
    sub_2146DA1C8();
    v24 = v15;
    v36 = v40[4];
    v37 = v40[5];
    *v38 = v41[0];
    *&v38[9] = *(v41 + 9);
    v32 = v40[0];
    v33 = v40[1];
    v34 = v40[2];
    v35 = v40[3];
    v31 = 4;
    sub_214316858();
    v16 = v27;
    sub_2146DA1C8();
    (*(v28 + 8))(v9, v11);
    v17 = type metadata accessor for LinkPresentation.TVShowMetadata(0);
    v18 = v29;
    sub_21408AC04(v16, v29 + *(v17 + 32), &qword_27C904878, &unk_2146EDB68);
    v19 = *(&v25 + 1);
    *v18 = v25;
    *(v18 + 8) = v19;
    *(v18 + 16) = v13;
    *(v18 + 32) = v24;
    *(v18 + 40) = *(&v15 + 1);
    v20 = v37;
    *(v18 + 112) = v36;
    *(v18 + 128) = v20;
    *(v18 + 144) = *v38;
    *(v18 + 153) = *&v38[9];
    v21 = v33;
    *(v18 + 48) = v32;
    *(v18 + 64) = v21;
    v22 = v35;
    *(v18 + 80) = v34;
    *(v18 + 96) = v22;
  }

  return __swift_destroy_boxed_opaque_existential_1(v42);
}

uint64_t sub_21426BCE4(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90B6F8, &qword_2146F6640);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v19 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214316EB8();
  sub_2146DAA28();
  v19 = v2;
  v31[0] = *v2;
  LOBYTE(v24) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
  sub_214045AC0();
  v8 = v7;
  v9 = v39;
  sub_2146DA388();
  if (v9)
  {
    return (*(v5 + 8))(v7, v4);
  }

  v11 = v19;
  v31[0] = v19[1];
  LOBYTE(v24) = 1;
  sub_2146DA388();
  v38 = v11[2];
  v37 = 2;
  sub_2146DA388();
  v12 = v11[8];
  v13 = v11[6];
  v34 = v11[7];
  v35 = v12;
  v14 = v11[8];
  *v36 = v11[9];
  *&v36[9] = *(v11 + 153);
  v15 = v11[4];
  v31[0] = v11[3];
  v31[1] = v15;
  v16 = v11[6];
  v18 = v11[3];
  v17 = v11[4];
  v32 = v11[5];
  v33 = v16;
  v28 = v34;
  v29 = v14;
  v30[0] = v11[9];
  *(v30 + 9) = *(v11 + 153);
  v24 = v18;
  v25 = v17;
  v26 = v32;
  v27 = v13;
  v23 = 3;
  sub_213FB2E54(v31, v21, &qword_27C904868, &qword_2146EDB58);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904868, &qword_2146EDB58);
  sub_214315670();
  sub_2146DA388();
  v21[4] = v28;
  v21[5] = v29;
  *v22 = v30[0];
  *&v22[9] = *(v30 + 9);
  v21[0] = v24;
  v21[1] = v25;
  v21[2] = v26;
  v21[3] = v27;
  sub_213FB2DF4(v21, &qword_27C904868, &qword_2146EDB58);
  type metadata accessor for LinkPresentation.TVShowMetadata(0);
  v20 = 4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904878, &unk_2146EDB68);
  sub_214316990();
  sub_2146DA388();
  return (*(v5 + 8))(v8, v4);
}

__n128 sub_21426C0F8@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, _OWORD *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  *(a9 + 48) = a7;
  *(a9 + 56) = a8;
  v15 = a10[5];
  *(a9 + 128) = a10[4];
  *(a9 + 144) = v15;
  *(a9 + 160) = a10[6];
  *(a9 + 169) = *(a10 + 105);
  v16 = a10[1];
  *(a9 + 64) = *a10;
  *(a9 + 80) = v16;
  v17 = a10[3];
  *(a9 + 96) = a10[2];
  *(a9 + 112) = v17;
  v18 = type metadata accessor for LinkPresentation.MovieMetadata(0);
  sub_21408AC04(a11, a9 + v18[9], &qword_27C904878, &unk_2146EDB68);
  v19 = a9 + v18[10];
  v20 = *(a12 + 80);
  *(v19 + 64) = *(a12 + 64);
  *(v19 + 80) = v20;
  *(v19 + 96) = *(a12 + 96);
  *(v19 + 105) = *(a12 + 105);
  v21 = *(a12 + 16);
  *v19 = *a12;
  *(v19 + 16) = v21;
  result = *(a12 + 32);
  v23 = *(a12 + 48);
  *(v19 + 32) = result;
  *(v19 + 48) = v23;
  v24 = (a9 + v18[11]);
  *v24 = a13;
  v24[1] = a14;
  return result;
}

unint64_t sub_21426C1E4()
{
  v1 = *v0;
  v2 = 0x65644965726F7473;
  v3 = 0x676E69646E617262;
  if (v1 != 6)
  {
    v3 = 0x676E69646E617262;
  }

  v4 = 0x6B726F77747261;
  if (v1 != 4)
  {
    v4 = 0x4D6B726F77747261;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 1701667182;
  if (v1 != 2)
  {
    v5 = 0x65726E6567;
  }

  if (!*v0)
  {
    v2 = 0xD000000000000014;
  }

  if (*v0 > 1u)
  {
    v2 = v5;
  }

  if (*v0 <= 3u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_21426C2F8@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_214381910(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_21426C320(uint64_t a1)
{
  v2 = sub_214316F0C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21426C35C(uint64_t a1)
{
  v2 = sub_214316F0C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21426C398@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v48 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904878, &unk_2146EDB68);
  MEMORY[0x28223BE20](v4);
  v6 = &v38 - v5;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90B700, &qword_2146F6648);
  v7 = *(v50 - 8);
  MEMORY[0x28223BE20](v50);
  v9 = &v38 - v8;
  v10 = a1[3];
  v84 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v10);
  sub_214316F0C();
  v49 = v9;
  sub_2146DAA08();
  if (!v2)
  {
    v45 = v4;
    v46 = v6;
    v47 = v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
    LOBYTE(v69) = 0;
    sub_2142E12FC();
    v11 = v49;
    v12 = v50;
    sub_2146DA1C8();
    v13 = v77;
    LOBYTE(v69) = 1;
    v14 = v12;
    sub_2146DA1C8();
    v44 = v13;
    v15 = v77;
    LOBYTE(v69) = 2;
    sub_2146DA1C8();
    v43 = *(&v15 + 1);
    v42 = *(&v77 + 1);
    v17 = v77;
    LOBYTE(v69) = 3;
    sub_2146DA1C8();
    v40 = v17;
    v41 = __PAIR128__(*(&v77 + 1), v15);
    v39 = v77;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904868, &qword_2146EDB58);
    v76 = 4;
    v18 = sub_214314728();
    sub_2146DA1C8();
    v38 = v18;
    v73 = v81;
    v74 = v82;
    *v75 = v83[0];
    *&v75[9] = *(v83 + 9);
    v69 = v77;
    v70 = v78;
    v71 = v79;
    v72 = v80;
    LOBYTE(v62) = 5;
    sub_214316858();
    v19 = v46;
    sub_2146DA1C8();
    v61 = 6;
    sub_2146DA1C8();
    v20 = v47;
    v21 = *(&v44 + 1);
    v58 = v66;
    v59 = v67;
    *v60 = v68[0];
    *&v60[9] = *(v68 + 9);
    v54 = v62;
    v55 = v63;
    v56 = v64;
    v57 = v65;
    v51 = 7;
    sub_2146DA1C8();
    (*(v20 + 8))(v11, v14);
    v22 = v52;
    v23 = v53;
    v24 = type metadata accessor for LinkPresentation.MovieMetadata(0);
    v25 = v21;
    v26 = v48;
    sub_21408AC04(v19, v48 + v24[9], &qword_27C904878, &unk_2146EDB68);
    *v26 = v44;
    *(v26 + 8) = v25;
    v27 = v43;
    *(v26 + 16) = v41;
    *(v26 + 24) = v27;
    v28 = v42;
    *(v26 + 32) = v40;
    *(v26 + 40) = v28;
    v29 = *(&v41 + 1);
    *(v26 + 48) = v39;
    *(v26 + 56) = v29;
    v30 = v74;
    *(v26 + 128) = v73;
    *(v26 + 144) = v30;
    *(v26 + 160) = *v75;
    *(v26 + 169) = *&v75[9];
    v31 = v70;
    *(v26 + 64) = v69;
    *(v26 + 80) = v31;
    v32 = v72;
    *(v26 + 96) = v71;
    *(v26 + 112) = v32;
    v33 = (v26 + v24[10]);
    v34 = v59;
    v33[4] = v58;
    v33[5] = v34;
    v33[6] = *v60;
    *(v33 + 105) = *&v60[9];
    v35 = v55;
    *v33 = v54;
    v33[1] = v35;
    v36 = v57;
    v33[2] = v56;
    v33[3] = v36;
    v37 = (v26 + v24[11]);
    *v37 = v22;
    v37[1] = v23;
  }

  return __swift_destroy_boxed_opaque_existential_1(v84);
}

uint64_t sub_21426CA50(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90B710, &qword_2146F6650);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v31 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214316F0C();
  sub_2146DAA28();
  v77 = v3;
  v69[0] = *v3;
  LOBYTE(v62) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
  sub_214045AC0();
  sub_2146DA388();
  if (v2)
  {
    return (*(v6 + 8))(v8, v5);
  }

  v9 = v77;
  v69[0] = v77[1];
  LOBYTE(v62) = 1;
  sub_2146DA388();
  v69[0] = v9[2];
  LOBYTE(v62) = 2;
  v34 = v5;
  sub_2146DA388();
  v11 = v6;
  v76 = v9[3];
  v75 = 3;
  sub_2146DA388();
  v33 = 0;
  v12 = v9[9];
  v13 = v9[7];
  v72 = v9[8];
  v73 = v12;
  v14 = v9[9];
  *v74 = v9[10];
  *&v74[9] = *(v9 + 169);
  v15 = v9[5];
  v69[0] = v9[4];
  v69[1] = v15;
  v16 = v9[7];
  v18 = v9[4];
  v17 = v9[5];
  v70 = v9[6];
  v71 = v16;
  v66 = v72;
  v67 = v14;
  v68[0] = v9[10];
  *(v68 + 9) = *(v9 + 169);
  v62 = v18;
  v63 = v17;
  v64 = v70;
  v65 = v13;
  v61 = 4;
  sub_213FB2E54(v69, &v54, &qword_27C904868, &qword_2146EDB58);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904868, &qword_2146EDB58);
  v19 = sub_214315670();
  v20 = v33;
  sub_2146DA388();
  v33 = v20;
  if (v20)
  {
    v58 = v66;
    v59 = v67;
    *v60 = v68[0];
    *&v60[9] = *(v68 + 9);
    v54 = v62;
    v55 = v63;
    v56 = v64;
    v57 = v65;
    sub_213FB2DF4(&v54, &qword_27C904868, &qword_2146EDB58);
    return (*(v11 + 8))(v8, v34);
  }

  v31[1] = v19;
  v58 = v66;
  v59 = v67;
  *v60 = v68[0];
  *&v60[9] = *(v68 + 9);
  v54 = v62;
  v55 = v63;
  v56 = v64;
  v57 = v65;
  sub_213FB2DF4(&v54, &qword_27C904868, &qword_2146EDB58);
  v32 = type metadata accessor for LinkPresentation.MovieMetadata(0);
  v53 = 5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904878, &unk_2146EDB68);
  sub_214316990();
  v21 = v33;
  sub_2146DA388();
  if (v21)
  {
    return (*(v11 + 8))(v8, v34);
  }

  v22 = (v77 + *(v32 + 40));
  v23 = v22[5];
  v24 = v22[3];
  v50 = v22[4];
  v51 = v23;
  v25 = v22[5];
  *v52 = v22[6];
  *&v52[9] = *(v22 + 105);
  v26 = v22[1];
  v47[0] = *v22;
  v47[1] = v26;
  v27 = v22[3];
  v29 = *v22;
  v28 = v22[1];
  v48 = v22[2];
  v49 = v27;
  v44 = v50;
  v45 = v25;
  v46[0] = v22[6];
  *(v46 + 9) = *(v22 + 105);
  v40 = v29;
  v41 = v28;
  v42 = v48;
  v43 = v24;
  v39 = 6;
  sub_213FB2E54(v47, v37, &qword_27C904868, &qword_2146EDB58);
  sub_2146DA388();
  v37[4] = v44;
  v37[5] = v45;
  *v38 = v46[0];
  *&v38[9] = *(v46 + 9);
  v37[0] = v40;
  v37[1] = v41;
  v37[2] = v42;
  v37[3] = v43;
  sub_213FB2DF4(v37, &qword_27C904868, &qword_2146EDB58);
  v36 = *(v77 + *(v32 + 44));
  v35 = 7;
  v30 = v34;
  sub_2146DA388();
  return (*(v11 + 8))(v8, v30);
}

unint64_t sub_21426D06C()
{
  v1 = *v0;
  v2 = 0x65644965726F7473;
  v3 = 0x65726E6567;
  v4 = 0x6B726F77747261;
  if (v1 != 4)
  {
    v4 = 0x4D6B726F77747261;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  if (v1 != 1)
  {
    v2 = 1701667182;
  }

  if (!*v0)
  {
    v2 = 0xD000000000000014;
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

uint64_t sub_21426D138(uint64_t a1)
{
  v2 = sub_214316F60();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21426D174(uint64_t a1)
{
  v2 = sub_214316F60();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21426D1B0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v34 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904878, &unk_2146EDB68);
  MEMORY[0x28223BE20](v4);
  v6 = &v27 - v5;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90B718, &qword_2146F6658);
  v7 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v9 = &v27 - v8;
  v10 = a1[3];
  v52 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v10);
  sub_214316F60();
  sub_2146DAA08();
  if (!v2)
  {
    v31 = v4;
    v32 = v6;
    v33 = v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
    LOBYTE(v37) = 0;
    sub_2142E12FC();
    v11 = v35;
    sub_2146DA1C8();
    v12 = v45;
    LOBYTE(v37) = 1;
    sub_2146DA1C8();
    v29 = __PAIR128__(*(&v45 + 1), v12);
    v13 = v45;
    v30 = *(&v12 + 1);
    LOBYTE(v37) = 2;
    sub_2146DA1C8();
    v28 = v13;
    v15 = v45;
    LOBYTE(v37) = 3;
    sub_2146DA1C8();
    v27 = v15;
    v16 = v45;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904868, &qword_2146EDB58);
    v44 = 4;
    sub_214314728();
    sub_2146DA1C8();
    v17 = v33;
    v41 = v49;
    v42 = v50;
    *v43 = v51[0];
    *&v43[9] = *(v51 + 9);
    v37 = v45;
    v38 = v46;
    v39 = v47;
    v40 = v48;
    v36 = 5;
    sub_214316858();
    v18 = v32;
    sub_2146DA1C8();
    (*(v17 + 8))(v9, v11);
    v19 = type metadata accessor for LinkPresentation.MovieBundleMetadata(0);
    v20 = v34;
    sub_21408AC04(v18, v34 + *(v19 + 36), &qword_27C904878, &unk_2146EDB68);
    v21 = v30;
    *v20 = v29;
    *(v20 + 8) = v21;
    v22 = *(&v29 + 1);
    *(v20 + 16) = v28;
    *(v20 + 24) = v22;
    v23 = *(&v27 + 1);
    *(v20 + 32) = v27;
    *(v20 + 40) = v23;
    *(v20 + 48) = v16;
    v24 = v42;
    *(v20 + 128) = v41;
    *(v20 + 144) = v24;
    *(v20 + 160) = *v43;
    *(v20 + 169) = *&v43[9];
    v25 = v38;
    *(v20 + 64) = v37;
    *(v20 + 80) = v25;
    v26 = v40;
    *(v20 + 96) = v39;
    *(v20 + 112) = v26;
  }

  return __swift_destroy_boxed_opaque_existential_1(v52);
}

uint64_t sub_21426D6B4(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90B728, &qword_2146F6660);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v18[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214316F60();
  sub_2146DAA28();
  v37 = v3;
  v29[0] = *v3;
  LOBYTE(v22) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
  sub_214045AC0();
  sub_2146DA388();
  if (!v2)
  {
    v10 = v37;
    v29[0] = v37[1];
    LOBYTE(v22) = 1;
    sub_2146DA388();
    v29[0] = v10[2];
    LOBYTE(v22) = 2;
    sub_2146DA388();
    v36 = v10[3];
    v35 = 3;
    sub_2146DA388();
    v11 = v37[9];
    v12 = v37[7];
    v32 = v37[8];
    v33 = v11;
    v13 = v37[9];
    *v34 = v37[10];
    *&v34[9] = *(v37 + 169);
    v14 = v37[5];
    v29[0] = v37[4];
    v29[1] = v14;
    v15 = v37[7];
    v17 = v37[4];
    v16 = v37[5];
    v30 = v37[6];
    v31 = v15;
    v26 = v32;
    v27 = v13;
    v28[0] = v37[10];
    *(v28 + 9) = *(v37 + 169);
    v22 = v17;
    v23 = v16;
    v24 = v30;
    v25 = v12;
    v21 = 4;
    sub_213FB2E54(v29, v19, &qword_27C904868, &qword_2146EDB58);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904868, &qword_2146EDB58);
    sub_214315670();
    sub_2146DA388();
    v19[4] = v26;
    v19[5] = v27;
    *v20 = v28[0];
    *&v20[9] = *(v28 + 9);
    v19[0] = v22;
    v19[1] = v23;
    v19[2] = v24;
    v19[3] = v25;
    sub_213FB2DF4(v19, &qword_27C904868, &qword_2146EDB58);
    type metadata accessor for LinkPresentation.MovieBundleMetadata(0);
    v18[15] = 5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904878, &unk_2146EDB68);
    sub_214316990();
    sub_2146DA388();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_21426DB08@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = a1;
  a4[1] = a2;
  v6 = type metadata accessor for LinkPresentation.EncodedToken(0);
  return sub_214328704(a3, a4 + *(v6 + 20), type metadata accessor for CloudKitSharingToken);
}

uint64_t sub_21426DB6C()
{
  if (*v0)
  {
    return 0x6E656B6F74;
  }

  else
  {
    return 0x656C646E6168;
  }
}

uint64_t sub_21426DBA0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x656C646E6168 && a2 == 0xE600000000000000;
  if (v6 || (sub_2146DA6A8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6E656B6F74 && a2 == 0xE500000000000000)
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

uint64_t sub_21426DC74(uint64_t a1)
{
  v2 = sub_214316FB4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21426DCB0(uint64_t a1)
{
  v2 = sub_214316FB4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21426DCEC@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v19 = a2;
  v4 = type metadata accessor for CloudKitSharingToken(0);
  MEMORY[0x28223BE20](v4);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90B730, &qword_2146F6668);
  v7 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v9 = &v17 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214316FB4();
  sub_2146DAA08();
  if (!v2)
  {
    v10 = v7;
    v22 = 0;
    v11 = v20;
    v17 = sub_2146DA168();
    v18 = v12;
    v21 = 1;
    sub_214328930(&qword_27C9057A0, type metadata accessor for CloudKitSharingToken, a9_29);
    sub_2146DA1C8();
    (*(v10 + 8))(v9, v11);
    v13 = type metadata accessor for LinkPresentation.EncodedToken(0);
    v14 = v19;
    sub_214328704(v6, v19 + *(v13 + 20), type metadata accessor for CloudKitSharingToken);
    v15 = v18;
    *v14 = v17;
    v14[1] = v15;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_21426DF7C(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90B740, &qword_2146F6670);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214316FB4();
  sub_2146DAA28();
  v8[15] = 0;
  sub_2146DA328();
  if (!v1)
  {
    type metadata accessor for LinkPresentation.EncodedToken(0);
    v8[14] = 1;
    type metadata accessor for CloudKitSharingToken(0);
    sub_214328930(&qword_27C9057C0, type metadata accessor for CloudKitSharingToken, byte_2146F88F8);
    sub_2146DA388();
  }

  return (*(v4 + 8))(v6, v3);
}

__n128 sub_21426E164@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, _OWORD *a7@<X6>, _OWORD *a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  *&v14[71] = a8[4];
  *&v14[87] = a8[5];
  *&v14[103] = a8[6];
  *&v14[112] = *(a8 + 105);
  *&v14[7] = *a8;
  *&v14[23] = a8[1];
  *&v14[39] = a8[2];
  *&v14[55] = a8[3];
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  v10 = a7[3];
  *(a9 + 80) = a7[2];
  *(a9 + 96) = v10;
  v11 = a7[1];
  *(a9 + 48) = *a7;
  *(a9 + 64) = v11;
  *(a9 + 153) = *(a7 + 105);
  v12 = a7[6];
  *(a9 + 128) = a7[5];
  *(a9 + 144) = v12;
  *(a9 + 112) = a7[4];
  *(a9 + 217) = *&v14[48];
  *(a9 + 201) = *&v14[32];
  *(a9 + 185) = *&v14[16];
  *(a9 + 169) = *v14;
  result = *&v14[64];
  *(a9 + 265) = *&v14[96];
  *(a9 + 281) = *&v14[112];
  *(a9 + 249) = *&v14[80];
  *(a9 + 233) = *&v14[64];
  *(a9 + 304) = a10;
  return result;
}

uint64_t sub_21426E210()
{
  v1 = *v0;
  v2 = 0x746163696C707061;
  v3 = 1852793705;
  v4 = 0x69616E626D756874;
  if (v1 != 4)
  {
    v4 = 0x546465646F636E65;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 1684957547;
  if (v1 != 1)
  {
    v5 = 0x656C746974;
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

uint64_t sub_21426E2D0@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_214381DE4(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_21426E2F8(uint64_t a1)
{
  v2 = sub_214317008();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21426E334(uint64_t a1)
{
  v2 = sub_214317008();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21426E370@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90B748, &qword_2146F6678);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v30 - v7;
  v9 = a1[3];
  v69 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v9);
  sub_214317008();
  sub_2146DAA08();
  if (!v2)
  {
    v34 = a2;
    v35 = v6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
    LOBYTE(v54) = 0;
    sub_2142E12FC();
    v10 = v5;
    sub_2146DA1C8();
    v11 = v62;
    LOBYTE(v54) = 1;
    sub_2146DA1C8();
    v33 = v11;
    v12 = *(&v62 + 1);
    v32 = v62;
    LOBYTE(v54) = 2;
    sub_2146DA1C8();
    v31 = v12;
    v13 = v62;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904868, &qword_2146EDB58);
    v61 = 3;
    sub_214314728();
    sub_2146DA1C8();
    v30 = v13;
    v58 = v66;
    v59 = v67;
    *v60 = v68[0];
    *&v60[9] = *(v68 + 9);
    v54 = v62;
    v55 = v63;
    v56 = v64;
    v57 = v65;
    v46 = 4;
    sub_2146DA1C8();
    v15 = *(&v33 + 1);
    v43 = v51;
    v44 = v52;
    *v45 = v53[0];
    *&v45[9] = *(v53 + 9);
    v39 = v47;
    v40 = v48;
    v41 = v49;
    v42 = v50;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90B758, &qword_2146F6680);
    v37 = 5;
    sub_21431705C();
    sub_2146DA1C8();
    (*(v35 + 8))(v8, v10);
    v16 = v31;
    v17 = v38;
    *(&v36[4] + 7) = v43;
    *(&v36[5] + 7) = v44;
    *(&v36[6] + 7) = *v45;
    v36[7] = *&v45[9];
    *(v36 + 7) = v39;
    *(&v36[1] + 7) = v40;
    *(&v36[2] + 7) = v41;
    *(&v36[3] + 7) = v42;
    v18 = v34;
    v19 = v32;
    *v34 = v33;
    v18[1] = v15;
    v18[2] = v19;
    v18[3] = v16;
    v20 = *(&v30 + 1);
    v18[4] = v30;
    v18[5] = v20;
    v21 = v57;
    *(v18 + 5) = v56;
    *(v18 + 6) = v21;
    v22 = v55;
    *(v18 + 3) = v54;
    *(v18 + 4) = v22;
    *(v18 + 153) = *&v60[9];
    v23 = *v60;
    *(v18 + 8) = v59;
    *(v18 + 9) = v23;
    *(v18 + 7) = v58;
    v24 = v36[0];
    v25 = v36[1];
    v26 = v36[2];
    *(v18 + 217) = v36[3];
    *(v18 + 201) = v26;
    *(v18 + 185) = v25;
    *(v18 + 169) = v24;
    v27 = v36[4];
    v28 = v36[5];
    v29 = v36[7];
    *(v18 + 265) = v36[6];
    *(v18 + 281) = v29;
    *(v18 + 249) = v28;
    *(v18 + 233) = v27;
    v18[38] = v17;
  }

  return __swift_destroy_boxed_opaque_existential_1(v69);
}

uint64_t sub_21426E8AC(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90B768, &qword_2146F6688);
  v26 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = &v21 - v4;
  v6 = *(v1 + 8);
  v65 = *v1;
  v7 = *(v1 + 16);
  v24 = *(v1 + 24);
  v25 = v7;
  v8 = *(v1 + 32);
  v22 = *(v1 + 40);
  v23 = v8;
  v9 = *(v1 + 128);
  v55 = *(v1 + 112);
  v56 = v9;
  v57[0] = *(v1 + 144);
  *(v57 + 9) = *(v1 + 153);
  v10 = *(v1 + 64);
  v51 = *(v1 + 48);
  v52 = v10;
  v11 = *(v1 + 96);
  v53 = *(v1 + 80);
  v54 = v11;
  v12 = *(v1 + 256);
  v62 = *(v1 + 240);
  v63 = v12;
  v64[0] = *(v1 + 272);
  *(v64 + 9) = *(v1 + 281);
  v13 = *(v1 + 192);
  v58 = *(v1 + 176);
  v59 = v13;
  v14 = *(v1 + 224);
  v60 = *(v1 + 208);
  v61 = v14;
  v21 = *(v1 + 304);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214317008();

  sub_2146DAA28();
  *&v44 = v65;
  *(&v44 + 1) = v6;
  LOBYTE(v41[0]) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
  sub_214045AC0();
  v65 = v3;
  v28 = v5;
  v15 = v27;
  sub_2146DA388();
  if (v15)
  {

    return (*(v26 + 8))(v28, v65);
  }

  else
  {
    v17 = v23;
    v18 = v26;

    *&v44 = v25;
    *(&v44 + 1) = v24;
    LOBYTE(v41[0]) = 1;
    sub_2146DA388();
    *&v44 = v17;
    *(&v44 + 1) = v22;
    LOBYTE(v41[0]) = 2;
    sub_2146DA388();
    v48 = v55;
    v49 = v56;
    v50[0] = v57[0];
    *(v50 + 9) = *(v57 + 9);
    v44 = v51;
    v45 = v52;
    v46 = v53;
    v47 = v54;
    v43 = 3;
    sub_213FB2E54(&v51, v41, &qword_27C904868, &qword_2146EDB58);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904868, &qword_2146EDB58);
    sub_214315670();
    sub_2146DA388();
    v41[4] = v48;
    v41[5] = v49;
    *v42 = v50[0];
    *&v42[9] = *(v50 + 9);
    v41[0] = v44;
    v41[1] = v45;
    v41[2] = v46;
    v41[3] = v47;
    sub_213FB2DF4(v41, &qword_27C904868, &qword_2146EDB58);
    v38 = v62;
    v39 = v63;
    v40[0] = v64[0];
    *(v40 + 9) = *(v64 + 9);
    v34 = v58;
    v35 = v59;
    v36 = v60;
    v37 = v61;
    v33 = 4;
    sub_213FB2E54(&v58, v31, &qword_27C904868, &qword_2146EDB58);
    v19 = v28;
    sub_2146DA388();
    v31[4] = v38;
    v31[5] = v39;
    *v32 = v40[0];
    *&v32[9] = *(v40 + 9);
    v31[0] = v34;
    v31[1] = v35;
    v31[2] = v36;
    v31[3] = v37;
    sub_213FB2DF4(v31, &qword_27C904868, &qword_2146EDB58);
    v30 = v21;
    v29 = 5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90B758, &qword_2146F6680);
    sub_214317110();
    v20 = v65;
    sub_2146DA388();
    return (*(v18 + 8))(v19, v20);
  }
}

__n128 sub_21426EE38@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  *a8 = a1;
  *(a8 + 8) = a2;
  *(a8 + 16) = a3;
  *(a8 + 24) = a4;
  *(a8 + 32) = a5;
  *(a8 + 40) = a6;
  v8 = *(a7 + 80);
  *(a8 + 112) = *(a7 + 64);
  *(a8 + 128) = v8;
  *(a8 + 144) = *(a7 + 96);
  *(a8 + 153) = *(a7 + 105);
  v9 = *(a7 + 16);
  *(a8 + 48) = *a7;
  *(a8 + 64) = v9;
  result = *(a7 + 32);
  v11 = *(a7 + 48);
  *(a8 + 80) = result;
  *(a8 + 96) = v11;
  return result;
}

uint64_t sub_21426EE70()
{
  v1 = 0x656C746974;
  v2 = 0x6E6F69746361;
  if (*v0 != 2)
  {
    v2 = 0x6567616D69;
  }

  if (*v0)
  {
    v1 = 0x656C746974627573;
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

uint64_t sub_21426EEE0@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_214381FF0(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_21426EF08(uint64_t a1)
{
  v2 = sub_2143171C4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21426EF44(uint64_t a1)
{
  v2 = sub_2143171C4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21426EF80@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90B778, &qword_2146F6690);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v20 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2143171C4();
  sub_2146DAA08();
  if (!v2)
  {
    v23 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
    v31 = 0;
    sub_2142E12FC();
    sub_2146DA1C8();
    v9 = *(&v24 + 1);
    v22 = v24;
    v31 = 1;
    sub_2146DA1C8();
    v21 = v9;
    v20 = *(&v24 + 1);
    v10 = v24;
    v31 = 2;
    sub_2146DA1C8();
    v11 = v10;
    v12 = v24;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904868, &qword_2146EDB58);
    v31 = 3;
    sub_214314728();
    sub_2146DA1C8();
    (*(v6 + 8))(v8, v5);
    v14 = v23;
    v15 = v20;
    v16 = v21;
    *v23 = v22;
    v14[1] = v16;
    v14[2] = v11;
    v14[3] = v15;
    *(v14 + 2) = v12;
    v17 = v29;
    *(v14 + 7) = v28;
    *(v14 + 8) = v17;
    *(v14 + 9) = v30[0];
    *(v14 + 153) = *(v30 + 9);
    v18 = v25;
    *(v14 + 3) = v24;
    *(v14 + 4) = v18;
    v19 = v27;
    *(v14 + 5) = v26;
    *(v14 + 6) = v19;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_21426F2A0(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90B788, &qword_2146F6698);
  v21 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = &v16 - v4;
  v6 = *v1;
  v7 = v1[1];
  v8 = v1[2];
  v19 = v1[3];
  v20 = v8;
  v9 = v1[4];
  v17 = v1[5];
  v18 = v9;
  v10 = *(v1 + 8);
  v36 = *(v1 + 7);
  v37 = v10;
  v38[0] = *(v1 + 9);
  *(v38 + 9) = *(v1 + 153);
  v11 = *(v1 + 4);
  v32 = *(v1 + 3);
  v33 = v11;
  v12 = *(v1 + 6);
  v34 = *(v1 + 5);
  v35 = v12;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2143171C4();

  sub_2146DAA28();
  *&v25 = v6;
  *(&v25 + 1) = v7;
  LOBYTE(v22[0]) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
  sub_214045AC0();
  v13 = v39;
  sub_2146DA388();
  if (v13)
  {

    return (*(v21 + 8))(v5, v3);
  }

  else
  {
    v15 = v21;

    *&v25 = v20;
    *(&v25 + 1) = v19;
    LOBYTE(v22[0]) = 1;
    sub_2146DA388();
    *&v25 = v18;
    *(&v25 + 1) = v17;
    LOBYTE(v22[0]) = 2;
    sub_2146DA388();
    v29 = v36;
    v30 = v37;
    v31[0] = v38[0];
    *(v31 + 9) = *(v38 + 9);
    v25 = v32;
    v26 = v33;
    v27 = v34;
    v28 = v35;
    v24 = 3;
    sub_213FB2E54(&v32, v22, &qword_27C904868, &qword_2146EDB58);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904868, &qword_2146EDB58);
    sub_214315670();
    sub_2146DA388();
    v22[4] = v29;
    v22[5] = v30;
    *v23 = v31[0];
    *&v23[9] = *(v31 + 9);
    v22[0] = v25;
    v22[1] = v26;
    v22[2] = v27;
    v22[3] = v28;
    sub_213FB2DF4(v22, &qword_27C904868, &qword_2146EDB58);
    return (*(v15 + 8))(v5, 0);
  }
}

__n128 sub_21426F62C@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X2>, _OWORD *a4@<X3>, int a5@<W4>, int a6@<W5>, int a7@<W6>, uint64_t a8@<X8>)
{
  *&v12[71] = a4[4];
  *&v12[87] = a4[5];
  *&v12[103] = a4[6];
  *&v12[112] = *(a4 + 105);
  *&v12[7] = *a4;
  *&v12[23] = a4[1];
  *&v12[39] = a4[2];
  *&v12[55] = a4[3];
  *a8 = a1;
  *(a8 + 8) = a2;
  v8 = a3[3];
  *(a8 + 48) = a3[2];
  *(a8 + 64) = v8;
  v9 = a3[1];
  *(a8 + 16) = *a3;
  *(a8 + 32) = v9;
  *(a8 + 121) = *(a3 + 105);
  v10 = a3[6];
  *(a8 + 96) = a3[5];
  *(a8 + 112) = v10;
  *(a8 + 80) = a3[4];
  *(a8 + 185) = *&v12[48];
  *(a8 + 169) = *&v12[32];
  *(a8 + 153) = *&v12[16];
  *(a8 + 137) = *v12;
  result = *&v12[64];
  *(a8 + 249) = *&v12[112];
  *(a8 + 233) = *&v12[96];
  *(a8 + 217) = *&v12[80];
  *(a8 + 201) = *&v12[64];
  *(a8 + 268) = a5;
  *(a8 + 272) = a6;
  *(a8 + 276) = a7;
  return result;
}

unint64_t sub_21426F6D4()
{
  v1 = *v0;
  v2 = 1701667175;
  v3 = 0x664F7265626D756ELL;
  if (v1 != 3)
  {
    v3 = 0xD000000000000016;
  }

  v4 = 0x6567616D69;
  if (v1 != 1)
  {
    v4 = 1852793705;
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

uint64_t sub_21426F790@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_214382148(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_21426F7B8(uint64_t a1)
{
  v2 = sub_214317218();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21426F7F4(uint64_t a1)
{
  v2 = sub_214317218();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21426F830@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90B790, &qword_2146F66A0);
  v5 = *(v63 - 8);
  MEMORY[0x28223BE20](v63);
  v7 = &v26 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214317218();
  sub_2146DAA08();
  if (!v2)
  {
    v29 = a2;
    v30 = v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
    LOBYTE(v48) = 0;
    sub_2142E12FC();
    sub_2146DA1C8();
    v8 = *(&v56 + 1);
    v28 = v56;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904868, &qword_2146EDB58);
    v55 = 1;
    sub_214314728();
    sub_2146DA1C8();
    v27 = v8;
    v52 = v60;
    v53 = v61;
    *v54 = v62[0];
    *&v54[9] = *(v62 + 9);
    v48 = v56;
    v49 = v57;
    v50 = v58;
    v51 = v59;
    v40 = 2;
    sub_2146DA1C8();
    v37 = v45;
    v38 = v46;
    *v39 = v47[0];
    *&v39[9] = *(v47 + 9);
    v33 = v41;
    v34 = v42;
    v35 = v43;
    v36 = v44;
    v32 = 3;
    v9 = sub_2146DA218();
    v10 = v30;
    v11 = v9;
    v32 = 4;
    HIDWORD(v26) = sub_2146DA218();
    v32 = 5;
    v13 = v63;
    v14 = sub_2146DA218();
    (*(v10 + 8))(v7, v13);
    *(&v31[4] + 7) = v37;
    *(&v31[5] + 7) = v38;
    *(&v31[6] + 7) = *v39;
    v31[7] = *&v39[9];
    *(v31 + 7) = v33;
    *(&v31[1] + 7) = v34;
    *(&v31[2] + 7) = v35;
    *(&v31[3] + 7) = v36;
    v15 = v29;
    v16 = v27;
    *v29 = v28;
    v15[1] = v16;
    v17 = v51;
    *(v15 + 3) = v50;
    *(v15 + 4) = v17;
    v18 = v49;
    *(v15 + 1) = v48;
    *(v15 + 2) = v18;
    *(v15 + 121) = *&v54[9];
    v19 = *v54;
    *(v15 + 6) = v53;
    *(v15 + 7) = v19;
    *(v15 + 5) = v52;
    v20 = v31[0];
    v21 = v31[1];
    v22 = v31[2];
    *(v15 + 185) = v31[3];
    *(v15 + 169) = v22;
    *(v15 + 153) = v21;
    *(v15 + 137) = v20;
    v23 = v31[4];
    v24 = v31[5];
    v25 = v31[6];
    *(v15 + 249) = v31[7];
    *(v15 + 233) = v25;
    *(v15 + 217) = v24;
    *(v15 + 201) = v23;
    *(v15 + 67) = v11;
    *(v15 + 68) = HIDWORD(v26);
    *(v15 + 69) = v14;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_21426FCD0(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90B7A0, &qword_2146F66A8);
  v21 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = v19 - v4;
  v6 = v1[1];
  v20 = *v1;
  v7 = *(v1 + 6);
  v47 = *(v1 + 5);
  v48 = v7;
  v49[0] = *(v1 + 7);
  *(v49 + 9) = *(v1 + 121);
  v8 = *(v1 + 2);
  v43 = *(v1 + 1);
  v44 = v8;
  v9 = *(v1 + 4);
  v45 = *(v1 + 3);
  v46 = v9;
  v10 = *(v1 + 14);
  v54 = *(v1 + 13);
  v55 = v10;
  v56[0] = *(v1 + 15);
  *(v56 + 9) = *(v1 + 249);
  v11 = *(v1 + 10);
  v50 = *(v1 + 9);
  v51 = v11;
  v12 = *(v1 + 12);
  v52 = *(v1 + 11);
  v53 = v12;
  v13 = *(v1 + 67);
  v19[4] = *(v1 + 68);
  v19[5] = v13;
  v19[3] = *(v1 + 69);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214317218();

  v14 = v5;
  sub_2146DAA28();
  *&v36 = v20;
  *(&v36 + 1) = v6;
  v15 = v3;
  LOBYTE(v33[0]) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
  sub_214045AC0();
  v16 = v57;
  sub_2146DA388();
  if (v16)
  {

    return (*(v21 + 8))(v14, v3);
  }

  else
  {
    v18 = v21;

    v40 = v47;
    v41 = v48;
    v42[0] = v49[0];
    *(v42 + 9) = *(v49 + 9);
    v36 = v43;
    v37 = v44;
    v38 = v45;
    v39 = v46;
    v35 = 1;
    sub_213FB2E54(&v43, v33, &qword_27C904868, &qword_2146EDB58);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904868, &qword_2146EDB58);
    sub_214315670();
    sub_2146DA388();
    v33[4] = v40;
    v33[5] = v41;
    *v34 = v42[0];
    *&v34[9] = *(v42 + 9);
    v33[0] = v36;
    v33[1] = v37;
    v33[2] = v38;
    v33[3] = v39;
    sub_213FB2DF4(v33, &qword_27C904868, &qword_2146EDB58);
    v30 = v54;
    v31 = v55;
    v32[0] = v56[0];
    *(v32 + 9) = *(v56 + 9);
    v26 = v50;
    v27 = v51;
    v28 = v52;
    v29 = v53;
    v25 = 2;
    sub_213FB2E54(&v50, v23, &qword_27C904868, &qword_2146EDB58);
    sub_2146DA388();
    v23[4] = v30;
    v23[5] = v31;
    *v24 = v32[0];
    *&v24[9] = *(v32 + 9);
    v23[0] = v26;
    v23[1] = v27;
    v23[2] = v28;
    v23[3] = v29;
    sub_213FB2DF4(v23, &qword_27C904868, &qword_2146EDB58);
    v22 = 3;
    sub_2146DA3D8();
    v22 = 4;
    sub_2146DA3D8();
    v22 = 5;
    sub_2146DA3D8();
    return (*(v18 + 8))(v14, v15);
  }
}

__n128 sub_2142701CC@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, __int128 a10, __int128 a11, __n128 a12, uint64_t a13, uint64_t a14)
{
  result = a12;
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
  *(a9 + 112) = a13;
  *(a9 + 120) = a14;
  return result;
}

uint64_t sub_2142701F8()
{
  v1 = *v0;
  v2 = 0x746565727473;
  v3 = 0x7972746E756F63;
  if (v1 != 6)
  {
    v3 = 0x746E756F434F5349;
  }

  v4 = 0x6574617473;
  if (v1 != 4)
  {
    v4 = 0x6F436C6174736F70;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 2037672291;
  if (v1 != 2)
  {
    v5 = 0xD000000000000015;
  }

  if (*v0)
  {
    v2 = 0x6C61636F4C627573;
  }

  if (*v0 > 1u)
  {
    v2 = v5;
  }

  if (*v0 <= 3u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_214270300@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_214382358(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_214270328(uint64_t a1)
{
  v2 = sub_21431726C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_214270364(uint64_t a1)
{
  v2 = sub_21431726C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2142703A0@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90B7A8, &qword_2146F66B0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v26 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21431726C();
  sub_2146DAA08();
  if (!v2)
  {
    v36 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
    v38 = 0;
    sub_2142E12FC();
    sub_2146DA1C8();
    v9 = *(&v37 + 1);
    v35 = v37;
    v38 = 1;
    sub_2146DA1C8();
    v34 = v9;
    v33 = *(&v37 + 1);
    v10 = v37;
    v38 = 2;
    sub_2146DA1C8();
    v31 = v37;
    v32 = v10;
    v11 = *(&v37 + 1);
    v38 = 3;
    sub_2146DA1C8();
    v30 = v11;
    v29 = *(&v37 + 1);
    v12 = v37;
    v38 = 4;
    sub_2146DA1C8();
    v28 = __PAIR128__(*(&v37 + 1), v12);
    v13 = v37;
    v38 = 5;
    sub_2146DA1C8();
    v27 = __PAIR128__(*(&v37 + 1), v13);
    v14 = v37;
    v38 = 6;
    sub_2146DA1C8();
    v26 = __PAIR128__(*(&v37 + 1), v14);
    v15 = v37;
    v38 = 7;
    sub_2146DA1C8();
    (*(v6 + 8))(v8, v5);
    v17 = v15;
    v18 = v36;
    v19 = v34;
    *v36 = v35;
    v18[1] = v19;
    v20 = v33;
    v18[2] = v32;
    v18[3] = v20;
    v21 = v30;
    v18[4] = v31;
    v18[5] = v21;
    v22 = v29;
    v18[6] = v28;
    v18[7] = v22;
    v23 = *(&v28 + 1);
    v18[8] = v27;
    v18[9] = v23;
    v24 = *(&v27 + 1);
    v18[10] = v26;
    v18[11] = v24;
    v25 = *(&v26 + 1);
    v18[12] = v17;
    v18[13] = v25;
    *(v18 + 7) = v37;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_2142708CC(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90B7B8, &qword_2146F66B8);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v19 - v5;
  v8 = *v1;
  v7 = v1[1];
  v9 = v1[2];
  v32 = v1[3];
  v33 = v9;
  v10 = v1[4];
  v30 = v1[5];
  v31 = v10;
  v11 = v1[7];
  v28 = v1[6];
  v29 = v11;
  v12 = v1[9];
  v26 = v1[8];
  v27 = v12;
  v13 = v1[11];
  v24 = v1[10];
  v25 = v13;
  v14 = v1[13];
  v22 = v1[12];
  v23 = v14;
  v15 = v1[15];
  v20 = v1[14];
  v21 = v15;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21431726C();

  sub_2146DAA28();
  v35 = v8;
  v36 = v7;
  v37 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
  sub_214045AC0();
  v16 = v34;
  sub_2146DA388();
  if (v16)
  {
  }

  else
  {
    v17 = v31;

    v35 = v33;
    v36 = v32;
    v37 = 1;
    sub_2146DA388();
    v35 = v17;
    v36 = v30;
    v37 = 2;
    sub_2146DA388();
    v35 = v28;
    v36 = v29;
    v37 = 3;
    sub_2146DA388();
    v35 = v26;
    v36 = v27;
    v37 = 4;
    sub_2146DA388();
    v35 = v24;
    v36 = v25;
    v37 = 5;
    sub_2146DA388();
    v35 = v22;
    v36 = v23;
    v37 = 6;
    sub_2146DA388();
    v35 = v20;
    v36 = v21;
    v37 = 7;
    sub_2146DA388();
  }

  return (*(v4 + 8))(v6, v3);
}

__n128 sub_214270C54@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, _OWORD *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, _OWORD *a8@<X7>, uint64_t a9@<X8>, __int128 a10, __int128 a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, _OWORD *a16, __int128 a17, uint64_t a18, uint64_t a19, __int128 *a20, __int128 a21, uint64_t a22, char a23, _OWORD *a24, _OWORD *a25, _OWORD *a26, char a27)
{
  *&v47[71] = a24[4];
  *&v47[87] = a24[5];
  *&v47[103] = a24[6];
  *&v47[112] = *(a24 + 105);
  *&v47[7] = *a24;
  *&v47[23] = a24[1];
  *&v47[39] = a24[2];
  *&v47[55] = a24[3];
  *&v46[71] = a25[4];
  *&v46[87] = a25[5];
  *&v46[103] = a25[6];
  *&v46[112] = *(a25 + 105);
  *&v46[7] = *a25;
  *&v46[23] = a25[1];
  *&v46[39] = a25[2];
  *&v46[55] = a25[3];
  *&v45[55] = a26[3];
  *&v45[39] = a26[2];
  *&v45[23] = a26[1];
  *&v45[7] = *a26;
  *&v45[112] = *(a26 + 105);
  *&v45[103] = a26[6];
  *&v45[87] = a26[5];
  *&v45[71] = a26[4];
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  v27 = a5[5];
  *(a9 + 96) = a5[4];
  *(a9 + 112) = v27;
  v28 = a5[7];
  *(a9 + 128) = a5[6];
  *(a9 + 144) = v28;
  v29 = a5[1];
  *(a9 + 32) = *a5;
  *(a9 + 48) = v29;
  v30 = a5[3];
  *(a9 + 64) = a5[2];
  *(a9 + 80) = v30;
  *(a9 + 160) = a6;
  *(a9 + 168) = a7;
  v31 = a8[5];
  *(a9 + 240) = a8[4];
  *(a9 + 256) = v31;
  *(a9 + 272) = a8[6];
  *(a9 + 281) = *(a8 + 105);
  v32 = a8[1];
  *(a9 + 176) = *a8;
  *(a9 + 192) = v32;
  v33 = a8[3];
  *(a9 + 208) = a8[2];
  *(a9 + 224) = v33;
  *(a9 + 304) = a10;
  *(a9 + 320) = a11;
  *(a9 + 336) = a12;
  *(a9 + 344) = a13 & 1;
  *(a9 + 352) = a14;
  *(a9 + 360) = a15;
  v34 = a16[7];
  *(a9 + 464) = a16[6];
  *(a9 + 480) = v34;
  v35 = a16[5];
  *(a9 + 432) = a16[4];
  *(a9 + 448) = v35;
  v36 = a16[3];
  *(a9 + 400) = a16[2];
  *(a9 + 416) = v36;
  v37 = a16[1];
  *(a9 + 368) = *a16;
  *(a9 + 384) = v37;
  *(a9 + 496) = a17;
  *(a9 + 512) = a18;
  *(a9 + 520) = a19;
  v38 = *a20;
  v39 = a20[1];
  v40 = a20[3];
  *(a9 + 560) = a20[2];
  *(a9 + 576) = v40;
  *(a9 + 528) = v38;
  *(a9 + 544) = v39;
  v41 = a20[4];
  v42 = a20[5];
  v43 = a20[7];
  *(a9 + 624) = a20[6];
  *(a9 + 640) = v43;
  *(a9 + 592) = v41;
  *(a9 + 608) = v42;
  *(a9 + 656) = a21;
  *(a9 + 672) = a22;
  *(a9 + 680) = a23 & 1;
  *(a9 + 713) = *&v47[32];
  *(a9 + 729) = *&v47[48];
  *(a9 + 681) = *v47;
  *(a9 + 697) = *&v47[16];
  *(a9 + 777) = *&v47[96];
  *(a9 + 793) = *&v47[112];
  *(a9 + 745) = *&v47[64];
  *(a9 + 761) = *&v47[80];
  *(a9 + 841) = *&v46[32];
  *(a9 + 857) = *&v46[48];
  *(a9 + 809) = *v46;
  *(a9 + 825) = *&v46[16];
  *(a9 + 905) = *&v46[96];
  *(a9 + 921) = *&v46[112];
  *(a9 + 873) = *&v46[64];
  *(a9 + 889) = *&v46[80];
  *(a9 + 969) = *&v45[32];
  *(a9 + 985) = *&v45[48];
  *(a9 + 937) = *v45;
  *(a9 + 953) = *&v45[16];
  result = *&v45[64];
  *(a9 + 1033) = *&v45[96];
  *(a9 + 1049) = *&v45[112];
  *(a9 + 1001) = *&v45[64];
  *(a9 + 1017) = *&v45[80];
  *(a9 + 1065) = a27;
  return result;
}

unint64_t sub_214270EB0(char a1)
{
  result = 1701667182;
  switch(a1)
  {
    case 1:
      result = 0x73736572646461;
      break;
    case 2:
      result = 0xD000000000000011;
      break;
    case 3:
    case 4:
      result = 0x79726F6765746163;
      break;
    case 5:
      result = 0x7551686372616573;
      break;
    case 6:
      result = 0x6F69746365726964;
      break;
    case 7:
      result = 0x726F70736E617274;
      break;
    case 8:
      result = 0xD000000000000017;
      break;
    case 9:
    case 13:
      result = 0xD000000000000021;
      break;
    case 10:
    case 11:
      result = 0xD00000000000001CLL;
      break;
    case 12:
      result = 0xD000000000000026;
      break;
    case 14:
      result = 0x65636E6174736964;
      break;
    case 15:
      result = 0x6567616D69;
      break;
    case 16:
      result = 0x67616D496B726164;
      break;
    case 17:
      result = 0x6F724665726F7473;
      break;
    case 18:
      result = 0xD000000000000011;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_2142710C8@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_214382600(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_2142710F0(uint64_t a1)
{
  v2 = sub_2143172C0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21427112C(uint64_t a1)
{
  v2 = sub_2143172C0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_214271168@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90B7C0, &unk_2146F66C0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v68 - v7;
  v9 = a1[3];
  v204 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v9);
  sub_2143172C0();
  sub_2146DAA08();
  if (!v2)
  {
    v86 = v6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
    LOBYTE(v187) = 0;
    v10 = sub_2142E12FC();
    sub_2146DA1C8();
    v85 = a2;
    v11 = v196;
    LOBYTE(v187) = 1;
    sub_2146DA1C8();
    v82 = v11;
    v83 = v10;
    v84 = *(&v11 + 1);
    v12 = *(&v196 + 1);
    v81 = v196;
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904890, &qword_2146EDB90);
    v195 = 2;
    v14 = sub_214317314();
    sub_2146DA1C8();
    v79 = v14;
    v80 = v12;
    v78 = v13;
    v191 = v200;
    v192 = v201;
    v193 = v202;
    v194 = v203;
    v187 = v196;
    v188 = v197;
    v189 = v198;
    v190 = v199;
    LOBYTE(v155) = 3;
    sub_2146DA1C8();
    v77 = v164;
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904868, &qword_2146EDB58);
    v179 = 4;
    v17 = sub_214314728();
    sub_2146DA1C8();
    v75 = v16;
    v76 = v17;
    v176 = v184;
    v177 = v185;
    *v178 = v186[0];
    *&v178[9] = *(v186 + 9);
    v172 = v180;
    v173 = v181;
    v174 = v182;
    v175 = v183;
    LOBYTE(v155) = 5;
    sub_2146DA1C8();
    v74 = v164;
    LOBYTE(v155) = 6;
    sub_2146DA1C8();
    v73 = v164;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905898, &unk_2146F3E40);
    LOBYTE(v155) = 7;
    sub_2142E3570();
    sub_2146DA1C8();
    v72 = v164;
    v71 = BYTE8(v164);
    LOBYTE(v155) = 8;
    sub_2146DA1C8();
    v18 = v82;
    v70 = v164;
    v163 = 9;
    sub_2146DA1C8();
    v159 = v168;
    v160 = v169;
    v161 = v170;
    v162 = v171;
    v155 = v164;
    v156 = v165;
    v157 = v166;
    v158 = v167;
    LOBYTE(v138) = 10;
    sub_2146DA1C8();
    v69 = *(&v147 + 1);
    v19 = v147;
    LOBYTE(v138) = 11;
    sub_2146DA1C8();
    v68 = v147;
    v146 = 12;
    sub_2146DA1C8();
    v142 = v151;
    v143 = v152;
    v144 = v153;
    v145 = v154;
    v138 = v147;
    v139 = v148;
    v140 = v149;
    v141 = v150;
    LOBYTE(v123) = 13;
    sub_2146DA1C8();
    v83 = *(&v131 + 1);
    v20 = v131;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9058A0, &unk_2147379A0);
    LOBYTE(v123) = 14;
    sub_2142E35EC();
    sub_2146DA1C8();
    v21 = v131;
    LODWORD(v79) = BYTE8(v131);
    v130 = 15;
    sub_2146DA1C8();
    v127 = v135;
    v128 = v136;
    *v129 = v137[0];
    *&v129[9] = *(v137 + 9);
    v123 = v131;
    v124 = v132;
    v125 = v133;
    v126 = v134;
    v115 = 16;
    sub_2146DA1C8();
    v112 = v120;
    v113 = v121;
    *v114 = v122[0];
    *&v114[9] = *(v122 + 9);
    v108 = v116;
    v109 = v117;
    v110 = v118;
    v111 = v119;
    v100 = 17;
    sub_2146DA1C8();
    v97 = v105;
    v98 = v106;
    *v99 = v107[0];
    *&v99[9] = *(v107 + 9);
    v93 = v101;
    v94 = v102;
    v95 = v103;
    v96 = v104;
    v92 = 18;
    LODWORD(v78) = sub_2146DA178();
    (*(v86 + 8))(v8, v5);
    v91 = v71;
    v90 = v79;
    *(&v89[4] + 7) = v127;
    *(&v89[5] + 7) = v128;
    *(&v89[6] + 7) = *v129;
    v89[7] = *&v129[9];
    *(v89 + 7) = v123;
    *(&v89[1] + 7) = v124;
    *(&v89[2] + 7) = v125;
    *(&v89[3] + 7) = v126;
    *(&v88[4] + 7) = v112;
    *(&v88[5] + 7) = v113;
    *(&v88[6] + 7) = *v114;
    v88[7] = *&v114[9];
    *(v88 + 7) = v108;
    *(&v88[1] + 7) = v109;
    *(&v88[2] + 7) = v110;
    *(&v88[3] + 7) = v111;
    *(&v87[3] + 7) = v96;
    *(&v87[2] + 7) = v95;
    *(&v87[1] + 7) = v94;
    *(v87 + 7) = v93;
    v87[7] = *&v99[9];
    *(&v87[6] + 7) = *v99;
    *(&v87[5] + 7) = v98;
    *(&v87[4] + 7) = v97;
    v22 = v78 & 1;
    v23 = v71;
    v24 = v79;
    v26 = v84;
    v25 = v85;
    *v85 = v18;
    v25[1] = v26;
    v25[2] = v81;
    v25[3] = v80;
    v27 = v192;
    *(v25 + 6) = v191;
    *(v25 + 7) = v27;
    v28 = v194;
    *(v25 + 8) = v193;
    *(v25 + 9) = v28;
    v29 = v188;
    *(v25 + 2) = v187;
    *(v25 + 3) = v29;
    v30 = v190;
    *(v25 + 4) = v189;
    *(v25 + 5) = v30;
    *(v25 + 10) = v77;
    v31 = v172;
    v32 = v173;
    v33 = v175;
    *(v25 + 13) = v174;
    *(v25 + 14) = v33;
    *(v25 + 11) = v31;
    *(v25 + 12) = v32;
    v34 = v176;
    v35 = v177;
    v36 = *v178;
    *(v25 + 281) = *&v178[9];
    *(v25 + 16) = v35;
    *(v25 + 17) = v36;
    *(v25 + 15) = v34;
    *(v25 + 19) = v74;
    *(v25 + 20) = v73;
    v25[42] = v72;
    *(v25 + 344) = v23;
    *(v25 + 22) = v70;
    v37 = v155;
    v38 = v156;
    v39 = v158;
    *(v25 + 25) = v157;
    *(v25 + 26) = v39;
    *(v25 + 23) = v37;
    *(v25 + 24) = v38;
    v40 = v159;
    v41 = v160;
    v42 = v162;
    *(v25 + 29) = v161;
    *(v25 + 30) = v42;
    *(v25 + 27) = v40;
    *(v25 + 28) = v41;
    v43 = v69;
    v25[62] = v19;
    v25[63] = v43;
    *(v25 + 32) = v68;
    v44 = v138;
    v45 = v139;
    v46 = v141;
    *(v25 + 35) = v140;
    *(v25 + 36) = v46;
    *(v25 + 33) = v44;
    *(v25 + 34) = v45;
    v47 = v142;
    v48 = v143;
    v49 = v145;
    *(v25 + 39) = v144;
    *(v25 + 40) = v49;
    *(v25 + 37) = v47;
    *(v25 + 38) = v48;
    v25[82] = v20;
    v25[83] = v83;
    v25[84] = v21;
    *(v25 + 680) = v24;
    v50 = v89[0];
    v51 = v89[1];
    v52 = v89[3];
    *(v25 + 713) = v89[2];
    *(v25 + 729) = v52;
    *(v25 + 681) = v50;
    *(v25 + 697) = v51;
    v53 = v89[4];
    v54 = v89[5];
    v55 = v89[7];
    *(v25 + 777) = v89[6];
    *(v25 + 793) = v55;
    *(v25 + 745) = v53;
    *(v25 + 761) = v54;
    v56 = v88[0];
    v57 = v88[1];
    v58 = v88[3];
    *(v25 + 841) = v88[2];
    *(v25 + 857) = v58;
    *(v25 + 809) = v56;
    *(v25 + 825) = v57;
    v59 = v88[4];
    v60 = v88[5];
    v61 = v88[7];
    *(v25 + 905) = v88[6];
    *(v25 + 921) = v61;
    *(v25 + 873) = v59;
    *(v25 + 889) = v60;
    v62 = v87[0];
    v63 = v87[1];
    v64 = v87[3];
    *(v25 + 969) = v87[2];
    *(v25 + 985) = v64;
    *(v25 + 937) = v62;
    *(v25 + 953) = v63;
    v65 = v87[4];
    v66 = v87[5];
    v67 = v87[7];
    *(v25 + 1033) = v87[6];
    *(v25 + 1049) = v67;
    *(v25 + 1001) = v65;
    *(v25 + 1017) = v66;
    *(v25 + 1065) = v22;
  }

  return __swift_destroy_boxed_opaque_existential_1(v204);
}