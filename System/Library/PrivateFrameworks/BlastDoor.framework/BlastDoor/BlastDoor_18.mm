uint64_t AvatarRecord.init(with:descriptor:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v16 = *a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v8 = swift_allocObject();
  *(v8 + 16) = sub_2140676DC;
  *(v8 + 24) = 0;
  *(inited + 32) = v8;
  sub_214042B80(inited, &v18);
  v10 = v18;
  v9 = v19;
  v11 = v22;
  v17[0] = a1;
  v17[1] = a2;
  v23 = v22;
  v18 = 0xD000000000000017;
  v19 = 0x800000021478F410;
  v20 = 0xD00000000000001CLL;
  v21 = 0x800000021478A360;

  v12 = v10(v17, &v23, &v18);
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
      *(a4 + 40) = v16;
      return result;
    }

    sub_214031C4C();
    swift_allocError();
    *v14 = 0xD000000000000017;
    v14[1] = 0x800000021478F410;
    v14[2] = 0xD00000000000001CLL;
    v14[3] = 0x800000021478A360;
    swift_willThrow();
  }

  swift_bridgeObjectRelease_n();
}

uint64_t sub_214199C4C()
{
  if (*v0)
  {
    return 0x7470697263736564;
  }

  else
  {
    return 0x696669746E656469;
  }
}

uint64_t sub_214199C90@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v6 || (sub_2146DA6A8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x7470697263736564 && a2 == 0xEA0000000000726FLL)
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

uint64_t sub_214199D70(uint64_t a1)
{
  v2 = sub_2142FCCBC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_214199DAC(uint64_t a1)
{
  v2 = sub_2142FCCBC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t AvatarRecord.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908480, &qword_2146F5060);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v25 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142FCCBC();
  sub_2146DAA08();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  LOBYTE(v32) = 0;
  v9 = sub_2146DA168();
  v11 = v10;
  v30 = v9;
  LOBYTE(v31[0]) = 1;
  sub_2142FCD10();
  sub_2146DA1C8();
  v13 = v32;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v15 = swift_allocObject();
  *(v15 + 16) = sub_2140676DC;
  *(v15 + 24) = 0;
  *(inited + 32) = v15;
  v29 = v13;

  sub_214042B80(inited, &v32);
  v16 = v11;
  v18 = v32;
  v17 = v33;
  v19 = v35;
  v31[0] = v30;
  v31[1] = v16;
  v26 = v16;
  v27 = 0x800000021478F410;
  v37 = v36;
  v38 = v36;
  v32 = 0xD000000000000017;
  v33 = 0x800000021478F410;
  v34 = 0xD00000000000001CLL;
  v35 = 0x800000021478A360;
  v28 = v19;

  v25 = v18;
  v20 = v18(v31, &v38, &v32);
  v21 = v26;
  if (v20)
  {

    (*(v6 + 8))(v8, v5);

    *a2 = v25;
    *(a2 + 8) = v17;
    v22 = v29;
    *(a2 + 16) = v30;
    *(a2 + 24) = v21;
    *(a2 + 32) = v37;
    *(a2 + 40) = v22;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    v23 = v27;
    *v24 = 0xD000000000000017;
    v24[1] = v23;
    v24[2] = 0xD00000000000001CLL;
    v24[3] = 0x800000021478A360;
    swift_willThrow();

    (*(v6 + 8))(v8, v5);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t AvatarRecord.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908498, &qword_2146F5068);
  v11 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v9 - v5;
  v7 = *(v1 + 24);
  v10 = *(v1 + 40);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142FCCBC();
  sub_2146DAA28();
  if (v7)
  {
    v14 = 0;

    sub_2146DA328();
    if (v2)
    {
      (*(v11 + 8))(v6, v4);
    }

    else
    {

      v12 = v10;
      v13 = 1;
      sub_2142FCD64();

      sub_2146DA388();

      return (*(v11 + 8))(v6, v4);
    }
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

__n128 MemojiPoster.init(with:avatarImage:avatarRecord:hasBody:)@<Q0>(_OWORD *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  v10 = *(a3 + 32);
  v11 = *(a3 + 40);
  LOWORD(v31[0]) = 0;
  sub_2140615D0(v31);
  v12 = v31[9];
  *(a5 + 408) = v31[8];
  *(a5 + 424) = v12;
  v13 = v31[11];
  *(a5 + 440) = v31[10];
  *(a5 + 456) = v13;
  v14 = v31[5];
  *(a5 + 344) = v31[4];
  *(a5 + 360) = v14;
  v15 = v31[7];
  *(a5 + 376) = v31[6];
  *(a5 + 392) = v15;
  v16 = v31[1];
  *(a5 + 280) = v31[0];
  *(a5 + 296) = v16;
  v17 = v31[3];
  *(a5 + 312) = v31[2];
  *(a5 + 328) = v17;
  *(a5 + 272) = 0;
  *(a5 + 240) = 0u;
  *(a5 + 256) = 0u;
  *(a5 + 208) = 0u;
  *(a5 + 224) = 0u;
  *(a5 + 176) = 0u;
  *(a5 + 192) = 0u;
  *(a5 + 144) = 0u;
  *(a5 + 160) = 0u;
  *(a5 + 112) = 0u;
  *(a5 + 128) = 0u;
  *(a5 + 80) = 0u;
  *(a5 + 96) = 0u;
  *(a5 + 48) = 0u;
  *(a5 + 64) = 0u;
  *(a5 + 32) = 0u;
  v18 = a1[1];
  *a5 = *a1;
  *(a5 + 16) = v18;
  v19 = *(a3 + 16);
  *(a5 + 472) = *a3;
  *(a5 + 488) = v19;
  *(a5 + 504) = v10;
  *(a5 + 512) = v11;
  *(a5 + 520) = a4;
  sub_213FB2DF4(a5 + 32, &qword_27C904858, &qword_214736F00);
  v20 = *(a2 + 192);
  v21 = *(a2 + 224);
  *(a5 + 240) = *(a2 + 208);
  *(a5 + 256) = v21;
  v22 = *(a2 + 128);
  v23 = *(a2 + 160);
  v24 = *(a2 + 176);
  *(a5 + 176) = *(a2 + 144);
  *(a5 + 192) = v23;
  *(a5 + 208) = v24;
  *(a5 + 224) = v20;
  result = *(a2 + 64);
  v26 = *(a2 + 96);
  v27 = *(a2 + 112);
  *(a5 + 112) = *(a2 + 80);
  *(a5 + 128) = v26;
  *(a5 + 144) = v27;
  *(a5 + 160) = v22;
  v28 = *(a2 + 16);
  *(a5 + 32) = *a2;
  v29 = *(a2 + 32);
  v30 = *(a2 + 48);
  *(a5 + 48) = v28;
  *(a5 + 64) = v29;
  *(a5 + 272) = *(a2 + 240);
  *(a5 + 80) = v30;
  *(a5 + 96) = result;
  return result;
}

uint64_t sub_21419A5E4()
{
  v1 = 0x756F72676B636162;
  v2 = 0x6552726174617661;
  if (*v0 != 2)
  {
    v2 = 0x79646F42736168;
  }

  if (*v0)
  {
    v1 = 0x6D49726174617661;
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

uint64_t sub_21419A67C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_21436E898(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_21419A6A4(uint64_t a1)
{
  v2 = sub_2142FCDB8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21419A6E0(uint64_t a1)
{
  v2 = sub_2142FCDB8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MemojiPoster.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9084A8, &qword_2146F5070);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v25 - v7;
  v9 = a1[3];
  v36 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v9);
  sub_2142FCDB8();
  sub_2146DAA08();
  if (!v2)
  {
    v31 = v6;
    LOBYTE(v32[0]) = 0;
    sub_2142FCE0C();
    v10 = v5;
    sub_2146DA1C8();
    v29 = v35[1];
    v30 = v35[0];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905500, &qword_2146F2BE0);
    LOBYTE(v32[0]) = 1;
    sub_21432076C(&qword_280B30CB8, &qword_27C905500, &qword_2146F2BE0, aI_83);
    sub_2146DA1C8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9084C0, &qword_2146F5078);
    LOBYTE(v33[0]) = 2;
    sub_2142FCE60();
    sub_2146DA1C8();
    v13 = v32[0];
    v12 = v32[1];
    v26 = v32[2];
    v27 = v32[3];
    v14 = v32[5];
    v28 = v32[4];
    v34 = 3;
    v15 = sub_2146DA178();
    v16 = *(v31 + 8);
    LODWORD(v31) = v15;
    v16(v8, v10);
    LOWORD(v33[0]) = 0;
    sub_2140615D0(v33);
    v17 = v33[9];
    *(a2 + 408) = v33[8];
    *(a2 + 424) = v17;
    v18 = v33[11];
    *(a2 + 440) = v33[10];
    *(a2 + 456) = v18;
    v19 = v33[5];
    *(a2 + 344) = v33[4];
    *(a2 + 360) = v19;
    v20 = v33[7];
    *(a2 + 376) = v33[6];
    *(a2 + 392) = v20;
    v21 = v33[1];
    *(a2 + 280) = v33[0];
    *(a2 + 296) = v21;
    v22 = v33[3];
    *(a2 + 312) = v33[2];
    *(a2 + 328) = v22;
    *(a2 + 272) = 0;
    *(a2 + 240) = 0u;
    *(a2 + 256) = 0u;
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
    *(a2 + 32) = 0u;
    v23 = v29;
    *a2 = v30;
    *(a2 + 16) = v23;
    *(a2 + 472) = v13;
    *(a2 + 480) = v12;
    v24 = v27;
    *(a2 + 488) = v26;
    *(a2 + 496) = v24;
    *(a2 + 504) = v28;
    *(a2 + 512) = v14;
    *(a2 + 520) = v31 & 1;
    memcpy(v32, v35, sizeof(v32));
    sub_213FB2DF4(a2 + 32, &qword_27C905500, &qword_2146F2BE0);
    memcpy((a2 + 32), v32, 0x1B8uLL);
  }

  return __swift_destroy_boxed_opaque_existential_1(v36);
}

uint64_t MemojiPoster.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9084D8, &qword_2146F5080);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v16 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142FCDB8();
  sub_2146DAA28();
  v9 = v3[1];
  v16 = *v3;
  v17 = v9;
  v20 = 0;
  sub_2142FCF88();
  sub_2146DA388();
  if (!v2)
  {
    LOBYTE(v16) = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905500, &qword_2146F2BE0);
    sub_21432076C(qword_280B2E688, &qword_27C905500, &qword_2146F2BE0, byte_214738EE8);
    sub_2146DA388();
    v10 = *(v3 + 60);
    v11 = *(v3 + 61);
    v12 = *(v3 + 62);
    v13 = *(v3 + 63);
    v14 = *(v3 + 64);
    *&v16 = *(v3 + 59);
    *(&v16 + 1) = v10;
    *&v17 = v11;
    *(&v17 + 1) = v12;
    v18 = v13;
    v19 = v14;
    v20 = 2;
    sub_2142FCFDC(v16, v10, v11, v12, v13, v14);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9084C0, &qword_2146F5078);
    sub_2142FD02C();
    sub_2146DA388();
    sub_2142FCF38(v16, *(&v16 + 1), v17, *(&v17 + 1), v18, v19);
    LOBYTE(v16) = 3;
    sub_2146DA338();
  }

  return (*(v6 + 8))(v8, v5);
}

__n128 sub_21419ADA8@<Q0>(__int128 *a1@<X0>, _OWORD *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X8>)
{
  LOBYTE(v16) = *(a1 + 112);
  v7 = a1[4];
  v8 = a1[6];
  v9 = *a1;
  v14 = a1[1];
  v10 = a1[2];
  v15 = a1[3];
  *(a7 + 80) = a1[5];
  *(a7 + 96) = v8;
  *(a7 + 48) = v15;
  *(a7 + 64) = v7;
  *(a7 + 16) = v14;
  *(a7 + 32) = v10;
  *a7 = v9;
  *(a7 + 112) = v16;
  v11 = a2[1];
  *(a7 + 120) = *a2;
  *(a7 + 136) = v11;
  result = *a3;
  v13 = *(a3 + 16);
  *(a7 + 152) = *a3;
  *(a7 + 168) = v13;
  *(a7 + 184) = a4;
  *(a7 + 192) = a5;
  *(a7 + 200) = a6;
  return result;
}

uint64_t sub_21419AE14()
{
  v1 = *v0;
  v2 = 0x756F72676B636162;
  v3 = 0x736C616974696E69;
  if (v1 != 3)
  {
    v3 = 0xD00000000000001ALL;
  }

  if (v1 != 2)
  {
    v2 = v3;
  }

  if (*v0 <= 1u)
  {
    return 0xD000000000000012;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_21419AECC@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_21436EA0C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_21419AEF4(uint64_t a1)
{
  v2 = sub_2142FD104();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21419AF30(uint64_t a1)
{
  v2 = sub_2142FD104();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21419AF6C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9084F8, &qword_2146F5088);
  v5 = *(v48 - 8);
  MEMORY[0x28223BE20](v48);
  v7 = &v21 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142FD104();
  sub_2146DAA08();
  if (!v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908508, &qword_2146F5090);
    v45 = 0;
    sub_2142FD158();
    sub_2146DA1C8();
    v41 = v46[4];
    v42 = v46[5];
    v43 = v46[6];
    v44 = v47;
    v37 = v46[0];
    v38 = v46[1];
    v39 = v46[2];
    v40 = v46[3];
    v36 = 1;
    sub_2142FCE0C();
    sub_2146DA1C8();
    v25 = v28;
    v26 = v27;
    v36 = 2;
    sub_2146DA1C8();
    v23 = v28;
    v24 = v27;
    LOBYTE(v27) = 3;
    v8 = sub_2146DA168();
    v11 = v10;
    v22 = v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905688, &qword_2146F3CF0);
    v35 = 4;
    sub_2142E1378();
    sub_2146DA1C8();
    (*(v5 + 8))(v7, v48);
    v12 = v36;
    LOBYTE(v34) = v44;
    v14 = v42;
    v13 = v43;
    v32 = v42;
    v33 = v43;
    v30 = v40;
    v31 = v41;
    v16 = v37;
    v15 = v38;
    v27 = v37;
    v28 = v38;
    v17 = v39;
    v29 = v39;
    *(a2 + 64) = v41;
    *(a2 + 80) = v14;
    *(a2 + 96) = v13;
    *a2 = v16;
    *(a2 + 16) = v15;
    *(a2 + 112) = v34;
    v18 = v30;
    *(a2 + 32) = v17;
    *(a2 + 48) = v18;
    v19 = v26;
    *(a2 + 136) = v25;
    *(a2 + 120) = v19;
    v20 = v24;
    *(a2 + 168) = v23;
    *(a2 + 152) = v20;
    *(a2 + 184) = v22;
    *(a2 + 192) = v11;
    *(a2 + 200) = v12;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_21419B328(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908520, &qword_2146F5098);
  v52 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = &v15 - v4;
  v6 = v1[5];
  v48 = v1[4];
  v49 = v6;
  v50 = v1[6];
  v51 = *(v1 + 112);
  v7 = v1[1];
  v44 = *v1;
  v45 = v7;
  v8 = v1[3];
  v46 = v1[2];
  v47 = v8;
  v9 = *(v1 + 120);
  v21 = *(v1 + 136);
  v22 = v9;
  v10 = *(v1 + 152);
  v17 = *(v1 + 168);
  v18 = v10;
  v11 = *(v1 + 23);
  v19 = *(v1 + 24);
  v20 = v11;
  v16 = *(v1 + 200);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_213FB2E54(&v44, &v36, &qword_27C908508, &qword_2146F5090);
  sub_2142FD104();
  sub_2146DAA28();
  v40 = v48;
  v41 = v49;
  v42 = v50;
  v43 = v51;
  v36 = v44;
  v37 = v45;
  v38 = v46;
  v39 = v47;
  v35 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908508, &qword_2146F5090);
  sub_2142FD230();
  v12 = v23;
  sub_2146DA388();
  if (v12)
  {
    v31 = v40;
    v32 = v41;
    v33 = v42;
    v34 = v43;
    v27 = v36;
    v28 = v37;
    v29 = v38;
    v30 = v39;
    sub_213FB2DF4(&v27, &qword_27C908508, &qword_2146F5090);
    return (*(v52 + 8))(v5, v3);
  }

  else
  {
    v14 = v52;
    v31 = v40;
    v32 = v41;
    v33 = v42;
    v34 = v43;
    v27 = v36;
    v28 = v37;
    v29 = v38;
    v30 = v39;
    sub_213FB2DF4(&v27, &qword_27C908508, &qword_2146F5090);
    v25 = v22;
    v26 = v21;
    v24 = 1;
    sub_2142FCF88();
    sub_2146DA388();
    v25 = v18;
    v26 = v17;
    v24 = 2;
    sub_2146DA388();
    LOBYTE(v25) = 3;
    sub_2146DA328();
    LOBYTE(v25) = v16;
    v24 = 4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905688, &qword_2146F3CF0);
    sub_2142E1D30();
    sub_2146DA388();
    return (*(v14 + 8))(v5, v3);
  }
}

__n128 sub_21419B6F4@<Q0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a2;
  result = *a1;
  v5 = *(a1 + 16);
  *a3 = *a1;
  *(a3 + 16) = v5;
  *(a3 + 32) = v3;
  return result;
}

uint64_t sub_21419B708()
{
  if (*v0)
  {
    return 0x746E6169726176;
  }

  else
  {
    return 0x6F6C6F4365736162;
  }
}

uint64_t sub_21419B748@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6F6C6F4365736162 && a2 == 0xE900000000000072;
  if (v6 || (sub_2146DA6A8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x746E6169726176 && a2 == 0xE700000000000000)
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

uint64_t sub_21419B82C(uint64_t a1)
{
  v2 = sub_2142FD308();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21419B868(uint64_t a1)
{
  v2 = sub_2142FD308();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21419B8A4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908538, &qword_2146F50A0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v12 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142FD308();
  sub_2146DAA08();
  if (!v2)
  {
    v16 = 0;
    sub_2142FCE0C();
    sub_2146DA1C8();
    v12 = v15;
    v13 = v14;
    v16 = 1;
    sub_2142FD35C();
    sub_2146DA1C8();
    (*(v6 + 8))(v8, v5);
    v9 = v14;
    v10 = v12;
    *a2 = v13;
    *(a2 + 16) = v10;
    *(a2 + 32) = v9;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_21419BA84(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908550, &qword_2146F50A8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v12 - v7;
  v9 = *(v3 + 32);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142FD308();
  sub_2146DAA28();
  v10 = *(v3 + 16);
  v12[0] = *v3;
  v12[1] = v10;
  v13 = 0;
  sub_2142FCF88();
  sub_2146DA388();
  if (!v2)
  {
    LOBYTE(v12[0]) = v9;
    v13 = 1;
    sub_2142FD3B0();
    sub_2146DA388();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_21419BC50@<X0>(uint64_t a1@<X8>, float a2@<S0>, float a3@<S1>, float a4@<S2>, float a5@<S3>, float a6@<S4>, float a7@<S5>, float a8@<S6>, float a9@<S7>)
{
  sub_214449A94(&v97);
  v16 = v98;
  v149 = v97;
  v17 = *&v99;
  v18 = BYTE5(v99);
  v67 = HIWORD(v99);
  v92 = v100;
  v94 = v101;
  v57 = v102;
  v93 = v104;
  v69 = v105;
  v89 = v106;
  v91 = v107;
  v58 = v108;
  v90 = v110;
  v70 = v111;
  v86 = v112;
  v88 = v113;
  v59 = v114;
  v87 = v116;
  v71 = v117;
  v84 = v118;
  v85 = v119;
  v60 = v120;
  v19 = v121;
  v79 = v122;
  v72 = v123;
  v81 = v124;
  v80 = v125;
  v61 = v126;
  v20 = v127;
  v82 = v128;
  v62 = v132;
  v21 = v133;
  v22 = v139;
  v148 = BYTE4(v99);
  v147 = v103;
  v146 = v109;
  v56 = v115;
  v145 = v115;
  v144 = v121;
  v143 = v127;
  v142 = v133;
  v141 = v139;
  v96 = a2;
  v95 = BYTE5(v99);
  v97 = 0xD000000000000016;
  v98 = 0x800000021478F430;
  v99 = 0xD00000000000001CLL;
  v100 = 0x800000021478A360;
  v65 = v129;
  v66 = v18;
  v77 = v130;
  v83 = v131;
  v78 = v134;
  v68 = v135;
  v73 = v136;
  v75 = v137;
  v63 = v138;
  v74 = v140;

  v76 = v16;
  v23 = v149(&v96, &v95, &v97);
  if (v64)
  {

LABEL_6:
    v24 = v16;

LABEL_7:
    v27 = v82;
    v28 = v80;
    v29 = v81;
    v30 = v79;
    a7 = v61;
    a8 = v62;
    a6 = v60;
    a4 = v58;
    a5 = v59;
    a3 = v57;
LABEL_8:
    v97 = v149;
    v98 = v24;
    BYTE4(v99) = v148;
    *&v99 = v17;
    BYTE5(v99) = v66;
    HIWORD(v99) = v67;
    v100 = v92;
    v101 = v94;
    v102 = a3;
    v103 = v147;
    v104 = v93;
    v105 = v69;
    v106 = v89;
    v107 = v91;
    v108 = a4;
    v109 = v146;
    v110 = v90;
    v111 = v70;
    v112 = v86;
    v113 = v88;
    v114 = a5;
    v115 = v145;
    v116 = v87;
    v117 = v71;
    v118 = v84;
    v119 = v85;
    v120 = a6;
    v121 = v144;
    v122 = v30;
    v123 = v72;
    v124 = v29;
    v125 = v28;
    v126 = a7;
    v127 = v143;
    v128 = v27;
    v129 = v65;
    v130 = v77;
    v131 = v83;
    v132 = a8;
    v133 = v142;
    v134 = v78;
    v135 = v68;
    v136 = v73;
    v137 = v75;
    v138 = v63;
    v139 = v141;
    v140 = v74;
    return sub_2142FD404(&v97);
  }

  v53 = v20;
  v51 = v22;
  v52 = v21;
  if ((v23 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v26 = 0xD000000000000016;
    v26[1] = 0x800000021478F430;
    v26[2] = 0xD00000000000001CLL;
    v26[3] = 0x800000021478A360;
    swift_willThrow();
    goto LABEL_6;
  }

  v24 = v16;

  v148 = 0;
  v96 = a3;
  v95 = v93;
  v97 = 0xD000000000000018;
  v98 = 0x800000021478F450;
  v99 = 0xD00000000000001CLL;
  v100 = 0x800000021478A360;

  v25 = v92(&v96, &v95, &v97);
  if ((v25 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v33 = 0xD000000000000018;
    v33[1] = 0x800000021478F450;
    v33[2] = 0xD00000000000001CLL;
    v33[3] = 0x800000021478A360;
    swift_willThrow();

    v17 = a2;
    goto LABEL_7;
  }

  v147 = 0;
  v96 = a4;
  v95 = v90;
  v97 = 0xD000000000000017;
  v98 = 0x800000021478F470;
  v99 = 0xD00000000000001CLL;
  v100 = 0x800000021478A360;

  v32 = v89(&v96, &v95, &v97);
  if ((v32 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v35 = 0xD000000000000017;
    v35[1] = 0x800000021478F470;
    v35[2] = 0xD00000000000001CLL;
    v35[3] = 0x800000021478A360;
    swift_willThrow();

    v17 = a2;
    v27 = v82;
    v28 = v80;
    v29 = v81;
    v30 = v79;
    a7 = v61;
    a8 = v62;
    a6 = v60;
    a4 = v58;
    a5 = v59;
    goto LABEL_8;
  }

  v146 = 0;
  v96 = a5;
  v95 = v87;
  v97 = 0xD000000000000018;
  v98 = 0x800000021478F490;
  v99 = 0xD00000000000001CLL;
  v100 = 0x800000021478A360;

  v34 = v86(&v96, &v95, &v97);
  if ((v34 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v37 = 0xD000000000000018;
    v37[1] = 0x800000021478F490;
    v37[2] = 0xD00000000000001CLL;
    v37[3] = 0x800000021478A360;
    swift_willThrow();

    v145 = v56 & 1;
    v17 = a2;
    v27 = v82;
    v28 = v80;
    v29 = v81;
    v30 = v79;
    a7 = v61;
    a8 = v62;
    a6 = v60;
    a5 = v59;
    goto LABEL_8;
  }

  v145 = 0;
  v96 = a6;
  v30 = v79;
  v95 = v79;
  v97 = 0xD000000000000016;
  v98 = 0x800000021478F4B0;
  v99 = 0xD00000000000001CLL;
  v100 = 0x800000021478A360;

  v36 = v84(&v96, &v95, &v97);
  v28 = v80;
  if ((v36 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v39 = 0xD000000000000016;
    v39[1] = 0x800000021478F4B0;
    v39[2] = 0xD00000000000001CLL;
    v39[3] = 0x800000021478A360;
    swift_willThrow();

    v144 = v19 & 1;
    v17 = a2;
    v27 = v82;
    v29 = v81;
    a7 = v61;
    a8 = v62;
    a6 = v60;
    goto LABEL_8;
  }

  v144 = 0;
  v96 = a7;
  v27 = v82;
  v95 = v82;
  v97 = 0xD000000000000018;
  v98 = 0x800000021478F4D0;
  v99 = 0xD00000000000001CLL;
  v100 = 0x800000021478A360;

  v29 = v81;
  v38 = v81(&v96, &v95, &v97);
  if ((v38 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v41 = 0xD000000000000018;
    v41[1] = 0x800000021478F4D0;
    v41[2] = 0xD00000000000001CLL;
    v41[3] = 0x800000021478A360;
    swift_willThrow();
    v17 = a2;

    v143 = v53 & 1;
    a7 = v61;
    a8 = v62;
    goto LABEL_8;
  }

  v143 = 0;
  v96 = a8;
  v95 = v78;
  v97 = 0xD000000000000017;
  v98 = 0x800000021478F4F0;
  v99 = 0xD00000000000001CLL;
  v100 = 0x800000021478A360;

  v40 = v77(&v96, &v95, &v97);
  if ((v40 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v43 = 0xD000000000000017;
    v43[1] = 0x800000021478F4F0;
    v43[2] = 0xD00000000000001CLL;
    v43[3] = 0x800000021478A360;
    swift_willThrow();

    v17 = a2;
    v142 = v52 & 1;
    v27 = v82;
    v28 = v80;
    v29 = v81;
    v30 = v79;
    v24 = v76;
    a8 = v62;
    goto LABEL_8;
  }

  v142 = 0;
  v96 = a9;
  v95 = v74;
  v97 = 0xD000000000000018;
  v98 = 0x800000021478F510;
  v99 = 0xD00000000000001CLL;
  v100 = 0x800000021478A360;

  v42 = v73(&v96, &v95, &v97);
  if ((v42 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v50 = 0xD000000000000018;
    v50[1] = 0x800000021478F510;
    v50[2] = 0xD00000000000001CLL;
    v50[3] = 0x800000021478A360;
    swift_willThrow();

    v141 = v51 & 1;
    v17 = a2;
    v27 = v82;
    v28 = v80;
    v29 = v81;
    v30 = v79;
    v24 = v76;
    goto LABEL_8;
  }

  *a1 = v149;
  *(a1 + 8) = v76;
  v141 = 0;
  *(a1 + 20) = v148;
  v44 = v147;
  *(a1 + 21) = v66;
  v45 = v146;
  *(a1 + 22) = v67;
  v46 = v145;
  *(a1 + 24) = v92;
  v47 = v144;
  *(a1 + 32) = v94;
  v48 = v143;
  *(a1 + 44) = v44;
  v49 = v142;
  *(a1 + 16) = a2;
  *(a1 + 40) = a3;
  *(a1 + 45) = v93;
  *(a1 + 46) = v69;
  *(a1 + 48) = v89;
  *(a1 + 56) = v91;
  *(a1 + 64) = a4;
  *(a1 + 68) = v45;
  *(a1 + 69) = v90;
  *(a1 + 70) = v70;
  *(a1 + 72) = v86;
  *(a1 + 80) = v88;
  *(a1 + 88) = a5;
  *(a1 + 92) = v46;
  *(a1 + 93) = v87;
  *(a1 + 94) = v71;
  *(a1 + 96) = v84;
  *(a1 + 104) = v85;
  *(a1 + 112) = a6;
  *(a1 + 116) = v47;
  *(a1 + 117) = v79;
  *(a1 + 118) = v72;
  *(a1 + 120) = v81;
  *(a1 + 128) = v80;
  *(a1 + 136) = a7;
  *(a1 + 140) = v48;
  *(a1 + 141) = v82;
  *(a1 + 142) = v65;
  *(a1 + 144) = v77;
  *(a1 + 152) = v83;
  *(a1 + 160) = a8;
  *(a1 + 164) = v49;
  *(a1 + 165) = v78;
  *(a1 + 166) = v68;
  *(a1 + 168) = v73;
  *(a1 + 176) = v75;
  *(a1 + 184) = a9;
  *(a1 + 188) = 0;
  *(a1 + 189) = v74;
  return result;
}

uint64_t sub_21419C8A0()
{
  v1 = *v0;
  v2 = 828663154;
  v3 = 0x3265756C62;
  if (v1 != 6)
  {
    v3 = 0x326168706C61;
  }

  v4 = 845440370;
  if (v1 != 4)
  {
    v4 = 0x326E65657267;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 0x3165756C62;
  if (v1 != 2)
  {
    v5 = 0x316168706C61;
  }

  if (*v0)
  {
    v2 = 0x316E65657267;
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

uint64_t sub_21419C96C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_21436EBD4(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_21419C994(uint64_t a1)
{
  v2 = sub_2142FD458();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21419C9D0(uint64_t a1)
{
  v2 = sub_2142FD458();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21419CA0C@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v114 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908560, &qword_2146F50B0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v66 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142FD458();
  sub_2146DAA08();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v113 = a1;
  v8 = v5;
  v9 = v114;
  LOBYTE(v127) = 0;
  sub_2146DA198();
  v11 = v10;
  LOBYTE(v127) = 1;
  sub_2146DA198();
  v13 = v12;
  LOBYTE(v127) = 2;
  sub_2146DA198();
  v15 = v14;
  LOBYTE(v127) = 3;
  sub_2146DA198();
  v17 = v16;
  LOBYTE(v127) = 4;
  sub_2146DA198();
  v19 = v18;
  LOBYTE(v127) = 5;
  sub_2146DA198();
  v21 = v20;
  LOBYTE(v127) = 6;
  sub_2146DA198();
  v112 = v23;
  v179 = 7;
  sub_2146DA198();
  v69 = v24;
  sub_214449A94(&v127);
  v25 = v128;
  v26 = v129;
  v27 = BYTE5(v129);
  v83 = HIWORD(v129);
  v110 = v131;
  v111 = v127;
  v28 = v132;
  v109 = v134;
  v85 = v135;
  v104 = v136;
  v106 = v137;
  v107 = v130;
  v105 = v140;
  v86 = v141;
  v101 = v142;
  v103 = v143;
  v75 = v138;
  v76 = v144;
  v102 = v146;
  v87 = v147;
  v98 = v148;
  v100 = v149;
  v99 = v152;
  v88 = v153;
  v95 = v154;
  v97 = v155;
  v77 = v150;
  v78 = v156;
  v96 = v158;
  v79 = v162;
  v178 = BYTE4(v129);
  v177 = v133;
  v176 = v139;
  v72 = v151;
  v73 = v145;
  v175 = v145;
  v174 = v151;
  v70 = v163;
  v71 = v157;
  v173 = v157;
  v172 = v163;
  v68 = v169;
  v171 = v169;
  LODWORD(v115) = v11;
  LOBYTE(v126) = BYTE5(v129);
  v74 = 0xD000000000000016;
  v127 = 0xD000000000000016;
  v128 = 0x800000021478F430;
  v129 = 0xD00000000000001CLL;
  v130 = 0x800000021478A360;
  v81 = v27;
  v82 = v159;
  v94 = v161;
  v93 = v164;
  v84 = v165;
  v90 = v166;
  v91 = v167;
  v92 = v160;
  v80 = v168;
  v89 = v170;

  v108 = v25;
  v29 = v111(&v115, &v126, &v127);
  v67 = 0x800000021478A360;
  if (v29)
  {
    v30 = v67;

    v178 = 0;
    LODWORD(v115) = v13;
    LOBYTE(v126) = v109;
    v66 = 0xD000000000000018;
    v127 = 0xD000000000000018;
    v128 = 0x800000021478F450;
    v129 = 0xD00000000000001CLL;
    v130 = v30;

    if (v107(&v115, &v126, &v127))
    {
      v35 = v67;

      v177 = 0;
      LODWORD(v115) = v15;
      LOBYTE(v126) = v105;
      v127 = 0xD000000000000017;
      v128 = 0x800000021478F470;
      v129 = 0xD00000000000001CLL;
      v130 = v35;

      if (v104(&v115, &v126, &v127))
      {
        v38 = v67;

        v176 = 0;
        LODWORD(v115) = v17;
        LOBYTE(v126) = v102;
        v127 = v66;
        v128 = 0x800000021478F490;
        v129 = 0xD00000000000001CLL;
        v130 = v38;

        if (v101(&v115, &v126, &v127))
        {
          v40 = v67;

          v175 = 0;
          LODWORD(v115) = v19;
          LOBYTE(v126) = v99;
          v127 = v74;
          v128 = 0x800000021478F4B0;
          v129 = 0xD00000000000001CLL;
          v130 = v40;

          if (v98(&v115, &v126, &v127))
          {
            v42 = v67;

            v174 = 0;
            LODWORD(v115) = v21;
            LOBYTE(v126) = v96;
            v127 = v66;
            v128 = 0x800000021478F4D0;
            v129 = 0xD00000000000001CLL;
            v130 = v42;

            if (v95(&v115, &v126, &v127))
            {
              v44 = v67;

              v173 = 0;
              LODWORD(v115) = v112;
              LOBYTE(v126) = v93;
              v127 = 0xD000000000000017;
              v128 = 0x800000021478F4F0;
              v129 = 0xD00000000000001CLL;
              v130 = v44;

              if (v92(&v115, &v126, &v127))
              {
                v46 = v67;

                v172 = 0;
                v126 = v69;
                LOBYTE(v115) = v89;
                v127 = v66;
                v128 = 0x800000021478F510;
                v129 = 0xD00000000000001CLL;
                v130 = v46;

                if (v90(&v126, &v115, &v127))
                {

                  (*(v8 + 8))(v7, v4);
                  v48 = v91;

                  v171 = 0;
                  v49 = v110;
                  v50 = v107;
                  *&v115 = v111;
                  *(&v115 + 1) = v108;
                  LODWORD(v116) = v11;
                  v75 = v178;
                  BYTE4(v116) = v178;
                  v51 = v81;
                  BYTE5(v116) = v81;
                  WORD3(v116) = v83;
                  *(&v116 + 1) = v107;
                  *&v117 = v110;
                  DWORD2(v117) = v13;
                  v52 = v177;
                  BYTE12(v117) = v177;
                  BYTE13(v117) = v109;
                  HIWORD(v117) = v85;
                  *&v118 = v104;
                  *(&v118 + 1) = v106;
                  LODWORD(v119) = v15;
                  v80 = v176;
                  BYTE4(v119) = v176;
                  BYTE5(v119) = v105;
                  WORD3(v119) = v86;
                  *(&v119 + 1) = v101;
                  *&v120 = v103;
                  DWORD2(v120) = v17;
                  v79 = v175;
                  BYTE12(v120) = v175;
                  BYTE13(v120) = v102;
                  HIWORD(v120) = v87;
                  *&v121 = v98;
                  *(&v121 + 1) = v100;
                  LODWORD(v122) = v19;
                  v78 = v174;
                  BYTE4(v122) = v174;
                  BYTE5(v122) = v99;
                  WORD3(v122) = v88;
                  *(&v122 + 1) = v95;
                  *&v123 = v97;
                  DWORD2(v123) = v21;
                  v77 = v173;
                  BYTE12(v123) = v173;
                  BYTE13(v123) = v96;
                  HIWORD(v123) = v82;
                  *&v124 = v92;
                  *(&v124 + 1) = v94;
                  v53 = v112;
                  LODWORD(v125[0]) = v112;
                  v76 = v172;
                  BYTE4(v125[0]) = v172;
                  BYTE5(v125[0]) = v93;
                  WORD3(v125[0]) = v84;
                  *(&v125[0] + 1) = v90;
                  *&v125[1] = v48;
                  v54 = v69;
                  DWORD2(v125[1]) = v69;
                  LODWORD(v74) = 0;
                  BYTE12(v125[1]) = 0;
                  v55 = v89;
                  BYTE13(v125[1]) = v89;
                  v56 = v115;
                  v57 = v116;
                  v58 = v118;
                  v9[2] = v117;
                  v9[3] = v58;
                  *v9 = v56;
                  v9[1] = v57;
                  v59 = v119;
                  v60 = v120;
                  v61 = v122;
                  v9[6] = v121;
                  v9[7] = v61;
                  v9[4] = v59;
                  v9[5] = v60;
                  v62 = v123;
                  v63 = v124;
                  v64 = v125[0];
                  *(v9 + 174) = *(v125 + 14);
                  v9[9] = v63;
                  v9[10] = v64;
                  v9[8] = v62;
                  sub_2142FD4AC(&v115, &v127);
                  __swift_destroy_boxed_opaque_existential_1(v113);
                  v127 = v111;
                  v128 = v108;
                  BYTE4(v129) = v75;
                  BYTE5(v129) = v51;
                  HIWORD(v129) = v83;
                  v130 = v50;
                  v131 = v49;
                  v133 = v52;
                  LODWORD(v129) = v11;
                  v132 = v13;
                  v134 = v109;
                  v135 = v85;
                  v136 = v104;
                  v137 = v106;
                  v138 = v15;
                  v139 = v80;
                  v140 = v105;
                  v141 = v86;
                  v142 = v101;
                  v143 = v103;
                  v144 = v17;
                  v145 = v79;
                  v146 = v102;
                  v147 = v87;
                  v148 = v98;
                  v149 = v100;
                  v150 = v19;
                  v151 = v78;
                  v152 = v99;
                  v153 = v88;
                  v154 = v95;
                  v155 = v97;
                  v156 = v21;
                  v157 = v77;
                  v158 = v96;
                  v159 = v82;
                  v160 = v92;
                  v161 = v94;
                  v162 = v53;
                  v163 = v76;
                  v164 = v93;
                  v165 = v84;
                  v166 = v90;
                  v167 = v48;
                  v168 = v54;
                  v169 = v74;
                  v170 = v55;
                  return sub_2142FD404(&v127);
                }

                sub_214031C4C();
                swift_allocError();
                *v65 = v66;
                v65[1] = 0x800000021478F510;
                v65[2] = 0xD00000000000001CLL;
                v65[3] = v67;
                swift_willThrow();
                (*(v8 + 8))(v7, v4);

                v171 = v68 & 1;
                v26 = v11;
                v28 = v13;
                v34 = v112;
              }

              else
              {
                sub_214031C4C();
                swift_allocError();
                *v47 = 0xD000000000000017;
                v47[1] = 0x800000021478F4F0;
                v47[2] = 0xD00000000000001CLL;
                v47[3] = v67;
                swift_willThrow();
                (*(v8 + 8))(v7, v4);

                v26 = v11;
                v172 = v70 & 1;
                v28 = v13;
                v34 = v79;
              }
            }

            else
            {
              sub_214031C4C();
              swift_allocError();
              *v45 = v66;
              v45[1] = 0x800000021478F4D0;
              v45[2] = 0xD00000000000001CLL;
              v45[3] = v67;
              swift_willThrow();
              (*(v8 + 8))(v7, v4);

              v26 = v11;
              v173 = v71 & 1;
              v28 = v13;
              v21 = v78;
              v34 = v79;
            }
          }

          else
          {
            sub_214031C4C();
            swift_allocError();
            *v43 = v74;
            v43[1] = 0x800000021478F4B0;
            v43[2] = 0xD00000000000001CLL;
            v43[3] = v67;
            swift_willThrow();
            (*(v8 + 8))(v7, v4);

            v174 = v72 & 1;
            v26 = v11;
            v28 = v13;
            v21 = v78;
            v34 = v79;
            v19 = v77;
          }
        }

        else
        {
          sub_214031C4C();
          swift_allocError();
          *v41 = v66;
          v41[1] = 0x800000021478F490;
          v41[2] = 0xD00000000000001CLL;
          v41[3] = v67;
          swift_willThrow();
          (*(v8 + 8))(v7, v4);

          v175 = v73 & 1;
          v26 = v11;
          v28 = v13;
          v21 = v78;
          v34 = v79;
          v17 = v76;
          v19 = v77;
        }

        goto LABEL_12;
      }

      sub_214031C4C();
      swift_allocError();
      *v39 = 0xD000000000000017;
      v39[1] = 0x800000021478F470;
      v39[2] = 0xD00000000000001CLL;
      v39[3] = v67;
      swift_willThrow();
      (*(v8 + 8))(v7, v4);

      v26 = v11;
      v28 = v13;
    }

    else
    {
      sub_214031C4C();
      swift_allocError();
      v36 = v67;
      *v37 = v66;
      v37[1] = 0x800000021478F450;
      v37[2] = 0xD00000000000001CLL;
      v37[3] = v36;
      swift_willThrow();
      (*(v8 + 8))(v7, v4);

      v26 = v11;
    }

    v21 = v78;
    v34 = v79;
    v17 = v76;
    v19 = v77;
    v15 = v75;
LABEL_12:
    v32 = v111;
    v33 = v108;
    goto LABEL_6;
  }

  sub_214031C4C();
  swift_allocError();
  *v31 = v74;
  v31[1] = 0x800000021478F430;
  v31[2] = 0xD00000000000001CLL;
  v31[3] = v67;
  swift_willThrow();
  (*(v8 + 8))(v7, v4);
  v32 = v111;
  v33 = v108;

  v21 = v78;
  v34 = v79;
  v17 = v76;
  v19 = v77;
  v15 = v75;
LABEL_6:
  __swift_destroy_boxed_opaque_existential_1(v113);
  v127 = v32;
  v128 = v33;
  LODWORD(v129) = v26;
  BYTE4(v129) = v178;
  BYTE5(v129) = v81;
  HIWORD(v129) = v83;
  v130 = v107;
  v131 = v110;
  v132 = v28;
  v133 = v177;
  v134 = v109;
  v135 = v85;
  v136 = v104;
  v137 = v106;
  v138 = v15;
  v139 = v176;
  v140 = v105;
  v141 = v86;
  v142 = v101;
  v143 = v103;
  v144 = v17;
  v145 = v175;
  v146 = v102;
  v147 = v87;
  v148 = v98;
  v149 = v100;
  v150 = v19;
  v151 = v174;
  v152 = v99;
  v153 = v88;
  v154 = v95;
  v155 = v97;
  v156 = v21;
  v157 = v173;
  v158 = v96;
  v159 = v82;
  v160 = v92;
  v161 = v94;
  v162 = v34;
  v163 = v172;
  v164 = v93;
  v165 = v84;
  v166 = v90;
  v167 = v91;
  v168 = v80;
  v169 = v171;
  v170 = v89;
  return sub_2142FD404(&v127);
}

uint64_t sub_21419DC74(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908570, &qword_2146F50B8);
  v19 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v13 - v5;
  v7 = v1[20];
  v8 = v1[44];
  v9 = v1[68];
  v17 = v1[92];
  v18 = v9;
  v10 = v1[116];
  v15 = v1[140];
  v16 = v10;
  v11 = v1[164];
  v13 = v1[188];
  v14 = v11;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142FD458();
  sub_2146DAA28();
  if (v7)
  {
    goto LABEL_13;
  }

  v27 = 0;
  sub_2146DA358();
  if (v2)
  {
    return (*(v19 + 8))(v6, v4);
  }

  if (v8 & 1) != 0 || (v26 = 1, sub_2146DA358(), (v18) || (v25 = 2, sub_2146DA358(), (v17) || (v24 = 3, sub_2146DA358(), (v16) || (v23 = 4, sub_2146DA358(), (v15) || (v22 = 5, sub_2146DA358(), (v14) || (v21 = 6, sub_2146DA358(), (v13))
  {
LABEL_13:
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v20 = 7;
    sub_2146DA358();
    return (*(v19 + 8))(v6, v4);
  }

  return result;
}

void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> DynamicPoster.init(with:customColor:)(BlastDoor::DynamicPoster *__return_ptr retstr, BlastDoor::DynamicPoster::DynamicPosterType with, BlastDoor::Color_optional *customColor)
{
  is_nil = customColor->is_nil;
  retstr->posterType = *with;
  v4 = *&customColor->value.blue;
  *(&retstr->customColor.value.red + 7) = *&customColor->value.red;
  *(&retstr->customColor.value.blue + 7) = v4;
  BYTE5(retstr[1].customColor.value.red) = is_nil;
}

uint64_t sub_21419DFF8()
{
  if (*v0)
  {
    return 0x6F436D6F74737563;
  }

  else
  {
    return 0x7954726574736F70;
  }
}

uint64_t sub_21419E040@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x7954726574736F70 && a2 == 0xEA00000000006570;
  if (v6 || (sub_2146DA6A8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6F436D6F74737563 && a2 == 0xEB00000000726F6CLL)
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

uint64_t sub_21419E128(uint64_t a1)
{
  v2 = sub_2142FD508();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21419E164(uint64_t a1)
{
  v2 = sub_2142FD508();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t DynamicPoster.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908578, &qword_2146F50C0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v14 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142FD508();
  sub_2146DAA08();
  if (!v2)
  {
    v16 = 0;
    sub_2142FD55C();
    sub_2146DA1C8();
    v9 = v14[0];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908590, &qword_2146F50C8);
    v16 = 1;
    sub_2142FD5B0();
    sub_2146DA1C8();
    (*(v6 + 8))(v8, v5);
    v10 = v15;
    v11 = v14[0];
    v12 = v14[1];
    *a2 = v9;
    *(a2 + 8) = v11;
    *(a2 + 24) = v12;
    *(a2 + 40) = v10;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t DynamicPoster.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9085A0, &qword_2146F50D0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v11 - v6;
  v8 = *v1;
  v9 = *(v1 + 8);
  v11 = *(v1 + 24);
  v12 = v9;
  v16 = v1[40];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142FD508();
  sub_2146DAA28();
  LOBYTE(v13) = v8;
  v17 = 0;
  sub_2142FD634();
  sub_2146DA388();
  if (!v2)
  {
    v14 = v11;
    v13 = v12;
    v15 = v16;
    v17 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908590, &qword_2146F50C8);
    sub_2142FD688();
    sub_2146DA388();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_21419E594@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_2143287C0(a1, a3, type metadata accessor for Metadata);
  sub_214684434(&v15);
  v6 = v15;
  v5 = v16;
  v7 = v17;
  v8 = v18;
  v9 = a3 + *(type metadata accessor for PriorityMessageCommand(0) + 20);
  *v9 = v6;
  *(v9 + 8) = v5;
  *(v9 + 16) = v7;
  *(v9 + 24) = v8;
  v20 = a2;
  v19 = v8;
  v15 = 0xD00000000000002BLL;
  v16 = 0x800000021478F530;
  v17 = 0xD00000000000001CLL;
  v18 = 0x800000021478A360;

  v10 = v6(&v20, &v19, &v15);
  if (v13)
  {
  }

  else
  {
    if (v10)
    {

      sub_21432887C(a1, type metadata accessor for Metadata);

      *v9 = v6;
      *(v9 + 8) = v5;
      *(v9 + 16) = a2;
      *(v9 + 24) = v8;
      return result;
    }

    sub_214031C4C();
    swift_allocError();
    *v12 = 0xD00000000000002BLL;
    v12[1] = 0x800000021478F530;
    v12[2] = 0xD00000000000001CLL;
    v12[3] = 0x800000021478A360;
    swift_willThrow();
  }

  sub_21432887C(a1, type metadata accessor for Metadata);

  *v9 = v6;
  *(v9 + 8) = v5;
  *(v9 + 16) = v7;
  *(v9 + 24) = v8;
  return sub_21432887C(a3, type metadata accessor for PriorityMessageCommand);
}

uint64_t sub_21419E7B8()
{
  if (*v0)
  {
    return 0xD000000000000014;
  }

  else
  {
    return 0x617461646174656DLL;
  }
}

uint64_t sub_21419E7F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x617461646174656DLL && a2 == 0xE800000000000000;
  if (v6 || (sub_2146DA6A8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000014 && 0x80000002147954E0 == a2)
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

uint64_t sub_21419E8DC(uint64_t a1)
{
  v2 = sub_2142FD70C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21419E918(uint64_t a1)
{
  v2 = sub_2142FD70C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21419E954@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v30 = a2;
  v3 = type metadata accessor for Metadata(0);
  MEMORY[0x28223BE20](v3);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9085B8, &qword_2146F50D8);
  v31 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v25 - v7;
  v9 = type metadata accessor for PriorityMessageCommand(0);
  MEMORY[0x28223BE20](v9);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = a1[3];
  v33 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v12);
  sub_2142FD70C();
  v13 = v32;
  sub_2146DAA08();
  if (v13)
  {
    return __swift_destroy_boxed_opaque_existential_1(v33);
  }

  LOBYTE(v34) = 0;
  sub_214328930(&qword_280B2E650, type metadata accessor for Metadata, byte_2146FB080);
  sub_2146DA1C8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C904F20, &qword_2146EE8A0);
  LOBYTE(v39) = 1;
  sub_2142E15CC();
  sub_2146DA1C8();
  v15 = v34;
  v32 = v5;
  sub_2143287C0(v5, v11, type metadata accessor for Metadata);
  sub_214684434(&v34);
  v16 = v34;
  v17 = v35;
  v18 = v36;
  v19 = v37;
  v20 = *(v9 + 20);
  v28 = v11;
  v21 = &v11[v20];
  *v21 = v34;
  *(v21 + 1) = v17;
  *(v21 + 2) = v18;
  v21[24] = v19;
  v39 = v15;
  v27 = v19;
  v38 = v19;
  v34 = 0xD00000000000002BLL;
  v35 = 0x800000021478F530;
  v36 = 0xD00000000000001CLL;
  v37 = 0x800000021478A360;
  v26 = v18;

  v29 = v16;
  v22 = v16(&v39, &v38, &v34);
  if (v22)
  {

    sub_21432887C(v32, type metadata accessor for Metadata);
    (*(v31 + 8))(v8, v6);

    v23 = v28;
    *v21 = v29;
    *(v21 + 1) = v17;
    *(v21 + 2) = v15;
    v21[24] = v27;
    sub_214328704(v23, v30, type metadata accessor for PriorityMessageCommand);
    return __swift_destroy_boxed_opaque_existential_1(v33);
  }

  sub_214031C4C();
  swift_allocError();
  *v24 = 0xD00000000000002BLL;
  v24[1] = 0x800000021478F530;
  v24[2] = 0xD00000000000001CLL;
  v24[3] = 0x800000021478A360;
  swift_willThrow();

  sub_21432887C(v32, type metadata accessor for Metadata);
  (*(v31 + 8))(v8, v6);

  *v21 = v29;
  *(v21 + 1) = v17;
  *(v21 + 2) = v26;
  v21[24] = v27;
  __swift_destroy_boxed_opaque_existential_1(v33);
  return sub_21432887C(v28, type metadata accessor for PriorityMessageCommand);
}

uint64_t sub_21419EE74(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9085C8, &qword_2146F50E0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v11[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142FD70C();
  sub_2146DAA28();
  v13 = 0;
  type metadata accessor for Metadata(0);
  sub_214328930(&qword_280B2E658, type metadata accessor for Metadata, a1_27);
  sub_2146DA388();
  if (v2)
  {
    return (*(v6 + 8))(v8, v5);
  }

  v9 = *(v3 + *(type metadata accessor for PriorityMessageCommand(0) + 20) + 16);
  if (v9)
  {
    v12 = v9;
    v11[15] = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C904F20, &qword_2146EE8A0);
    sub_2142E1F00();
    sub_2146DA388();
    return (*(v6 + 8))(v8, v5);
  }

  result = sub_2146DA018();
  __break(1u);
  return result;
}

__n128 sub_21419F0D4@<Q0>(_BYTE *a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X2>, uint64_t a4@<X8>)
{
  *&v6[119] = *(a2 + 112);
  *&v6[135] = *(a2 + 128);
  *&v6[151] = *(a2 + 144);
  *&v6[55] = *(a2 + 48);
  *&v6[71] = *(a2 + 64);
  *&v6[87] = *(a2 + 80);
  *&v6[103] = *(a2 + 96);
  *&v6[7] = *a2;
  *&v6[23] = *(a2 + 16);
  *&v6[39] = *(a2 + 32);
  *&v5[151] = a3[9];
  *&v5[167] = a3[10];
  *&v5[183] = a3[11];
  *&v5[192] = *(a3 + 185);
  *&v5[87] = a3[5];
  *&v5[103] = a3[6];
  *&v5[119] = a3[7];
  *&v5[135] = a3[8];
  *&v5[23] = a3[1];
  *&v5[39] = a3[2];
  *&v5[55] = a3[3];
  *&v5[71] = a3[4];
  *&v5[7] = *a3;
  *(a4 + 113) = *&v6[112];
  *(a4 + 129) = *&v6[128];
  *(a4 + 145) = *&v6[144];
  *(a4 + 49) = *&v6[48];
  *(a4 + 65) = *&v6[64];
  *(a4 + 81) = *&v6[80];
  *(a4 + 97) = *&v6[96];
  *(a4 + 1) = *v6;
  *(a4 + 17) = *&v6[16];
  *(a4 + 33) = *&v6[32];
  *(a4 + 329) = *&v5[160];
  *(a4 + 345) = *&v5[176];
  *(a4 + 361) = *&v5[192];
  *(a4 + 249) = *&v5[80];
  *(a4 + 265) = *&v5[96];
  *(a4 + 281) = *&v5[112];
  *(a4 + 297) = *&v5[128];
  *(a4 + 313) = *&v5[144];
  *(a4 + 185) = *&v5[16];
  result = *&v5[32];
  *(a4 + 201) = *&v5[32];
  *(a4 + 217) = *&v5[48];
  *(a4 + 233) = *&v5[64];
  v6[167] = *(a2 + 160);
  *a4 = *a1;
  *(a4 + 161) = *&v6[160];
  *(a4 + 169) = *v5;
  return result;
}

uint64_t sub_21419F25C()
{
  v1 = 0x654D646E65697266;
  if (*v0 != 1)
  {
    v1 = 0x654D796C696D6166;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x546567617373656DLL;
  }
}

uint64_t sub_21419F2D8@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_21436EE50(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_21419F300(uint64_t a1)
{
  v2 = sub_2142FD760();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21419F33C(uint64_t a1)
{
  v2 = sub_2142FD760();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21419F378@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9085D0, &qword_2146F50E8);
  v5 = *(v63 - 8);
  MEMORY[0x28223BE20](v63);
  v7 = v25 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142FD760();
  sub_2146DAA08();
  if (v2)
  {
    v24 = a1;
  }

  else
  {
    v8 = a1;
    v9 = v5;
    LOBYTE(v52) = 0;
    sub_2142FD7B4();
    v10 = v63;
    sub_2146DA1C8();
    v11 = v28;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9085E8, &qword_2146F50F0);
    v51 = 1;
    sub_2142FD808();
    sub_2146DA1C8();
    v48 = v60;
    v49 = v61;
    v50 = v62;
    v44 = v56;
    v45 = v57;
    v46 = v58;
    v47 = v59;
    v40 = v52;
    v41 = v53;
    v42 = v54;
    v43 = v55;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908600, &qword_2146F50F8);
    v27 = 2;
    sub_2142FD8E0();
    sub_2146DA1C8();
    (*(v9 + 8))(v7, v10);
    *&v26[119] = v47;
    *&v26[135] = v48;
    *&v26[151] = v49;
    *&v26[55] = v43;
    *&v26[71] = v44;
    *&v26[87] = v45;
    *&v26[103] = v46;
    *&v26[7] = v40;
    *&v26[23] = v41;
    *&v26[39] = v42;
    *(&v25[9] + 7) = v37;
    *(&v25[10] + 7) = v38;
    *(&v25[11] + 7) = v39[0];
    v25[12] = *(v39 + 9);
    *(&v25[5] + 7) = v33;
    *(&v25[6] + 7) = v34;
    *(&v25[7] + 7) = v35;
    *(&v25[8] + 7) = v36;
    *(&v25[1] + 7) = v29;
    *(&v25[2] + 7) = v30;
    *(&v25[3] + 7) = v31;
    *(&v25[4] + 7) = v32;
    *(v25 + 7) = v28;
    v13 = *&v26[96];
    *(a2 + 113) = *&v26[112];
    v14 = *&v26[144];
    *(a2 + 129) = *&v26[128];
    *(a2 + 145) = v14;
    v15 = *&v26[32];
    *(a2 + 49) = *&v26[48];
    v16 = *&v26[80];
    *(a2 + 65) = *&v26[64];
    *(a2 + 81) = v16;
    *(a2 + 97) = v13;
    v17 = *&v26[16];
    *(a2 + 1) = *v26;
    *(a2 + 17) = v17;
    *(a2 + 33) = v15;
    v18 = v25[11];
    *(a2 + 329) = v25[10];
    *(a2 + 345) = v18;
    *(a2 + 361) = v25[12];
    v19 = v25[4];
    *(a2 + 249) = v25[5];
    v20 = v25[7];
    *(a2 + 265) = v25[6];
    *(a2 + 281) = v20;
    v21 = v25[9];
    *(a2 + 297) = v25[8];
    *(a2 + 313) = v21;
    v22 = v25[0];
    *(a2 + 185) = v25[1];
    v23 = v25[3];
    *(a2 + 201) = v25[2];
    *(a2 + 217) = v23;
    *(a2 + 233) = v19;
    v26[167] = v50;
    *a2 = v11;
    *(a2 + 161) = *&v26[160];
    *(a2 + 169) = v22;
    v24 = v8;
  }

  return __swift_destroy_boxed_opaque_existential_1(v24);
}

uint64_t sub_21419F740(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908618, &qword_2146F5100);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v21 - v5;
  v7 = *v1;
  v8 = *(v1 + 120);
  v9 = *(v1 + 152);
  v58 = *(v1 + 136);
  v59 = v9;
  v60 = v1[168];
  v10 = *(v1 + 56);
  v11 = *(v1 + 88);
  v54 = *(v1 + 72);
  v55 = v11;
  v56 = *(v1 + 104);
  v57 = v8;
  v12 = *(v1 + 24);
  v50 = *(v1 + 8);
  v51 = v12;
  v52 = *(v1 + 40);
  v53 = v10;
  v13 = *(v1 + 22);
  v71 = *(v1 + 21);
  v72[0] = v13;
  *(v72 + 9) = *(v1 + 361);
  v14 = *(v1 + 18);
  v67 = *(v1 + 17);
  v68 = v14;
  v15 = *(v1 + 19);
  v70 = *(v1 + 20);
  v69 = v15;
  v16 = *(v1 + 14);
  v63 = *(v1 + 13);
  v64 = v16;
  v17 = *(v1 + 16);
  v65 = *(v1 + 15);
  v66 = v17;
  v18 = *(v1 + 12);
  v61 = *(v1 + 11);
  v62 = v18;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142FD760();
  sub_2146DAA28();
  LOBYTE(v24) = v7;
  LOBYTE(v21[0]) = 0;
  sub_2142FD9B8();
  v19 = v73;
  sub_2146DA388();
  if (!v19)
  {
    v47 = v58;
    v48 = v59;
    v49 = v60;
    v43 = v54;
    v44 = v55;
    v45 = v56;
    v46 = v57;
    v39 = v50;
    v40 = v51;
    v41 = v52;
    v42 = v53;
    v38 = 1;
    sub_213FB2E54(&v50, &v24, &qword_27C9085E8, &qword_2146F50F0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9085E8, &qword_2146F50F0);
    sub_2142FDA0C();
    sub_2146DA388();
    v36[8] = v47;
    v36[9] = v48;
    v37 = v49;
    v36[4] = v43;
    v36[5] = v44;
    v36[6] = v45;
    v36[7] = v46;
    v36[0] = v39;
    v36[1] = v40;
    v36[2] = v41;
    v36[3] = v42;
    sub_213FB2DF4(v36, &qword_27C9085E8, &qword_2146F50F0);
    v34 = v71;
    v35[0] = v72[0];
    *(v35 + 9) = *(v72 + 9);
    v30 = v67;
    v31 = v68;
    v32 = v69;
    v33 = v70;
    v26 = v63;
    v27 = v64;
    v28 = v65;
    v29 = v66;
    v24 = v61;
    v25 = v62;
    v23 = 2;
    sub_213FB2E54(&v61, v21, &qword_27C908600, &qword_2146F50F8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908600, &qword_2146F50F8);
    sub_2142FDAE4();
    sub_2146DA388();
    v21[10] = v34;
    *v22 = v35[0];
    *&v22[9] = *(v35 + 9);
    v21[6] = v30;
    v21[7] = v31;
    v21[8] = v32;
    v21[9] = v33;
    v21[2] = v26;
    v21[3] = v27;
    v21[4] = v28;
    v21[5] = v29;
    v21[0] = v24;
    v21[1] = v25;
    sub_213FB2DF4(v21, &qword_27C908600, &qword_2146F50F8);
  }

  return (*(v4 + 8))(v6, v3);
}

__n128 sub_21419FBA4@<Q0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t (*a3)(void, void, void)@<X2>, uint64_t a4@<X3>, uint64_t (*a5)(void, void, void)@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, unint64_t a10)
{
  sub_2143DAF70(&v71);
  v13 = v71;
  v15 = v72;
  v14 = v73;
  v16 = v74;
  sub_2143DB0D8(&v101);
  v60 = v101;
  v112 = v102;
  v48 = v103;
  v68 = v104;
  v70 = v105;
  sub_2143DB274(v99);
  v55 = v99[0];
  v67 = v99[2];
  v65 = v99[1];
  v66 = v99[3];
  v64 = v100;
  sub_2143DB2A8(v97);
  v61 = v97[0];
  v53 = v97[1];
  v58 = v97[3];
  v59 = v97[2];
  v62 = v98;
  v56 = a7;
  v106 = BYTE4(a7) & 1;
  v54 = BYTE4(a7) & 1;
  v71 = v13;
  v72 = v15;
  v73 = v14;
  v74 = v16;

  sub_21404F7E0(v15, v14);
  sub_214032118(a1, a2, 2, 0xD000000000000027, 0x800000021478F560, 0xD00000000000001CLL, 0x800000021478A360);
  if (v50)
  {
    sub_213FDC6BC(a8, a10);
    sub_213FDC6BC(a1, a2);

    v51 = v71;
    v17 = v72;
    v18 = v73;
    v19 = v74;

    sub_214032564(v15, v14);
    v20 = v19;
    v21 = v18;
    v22 = v51;
    v23 = v17;
    v24 = v64;
    v25 = v55;
    v26 = v70;
    v27 = v65;
    v28 = v59;
    v29 = v60;
    v30 = v112;
    v31 = v58;
    v32 = v53;
    v33 = v48;
    v34 = v68;
  }

  else
  {

    v52 = v71;
    v43 = v73;
    v44 = v72;
    v42 = v74;

    sub_214032564(v15, v14);
    v101 = a3;
    v102 = a4;
    LOBYTE(v99[0]) = v70;
    v71.n128_u64[0] = 0xD000000000000023;
    v71.n128_u64[1] = 0x800000021478F590;
    v72 = 0xD00000000000001CLL;
    v73 = 0x800000021478A360;

    sub_213FDC9D0(v48, v68);
    v29 = v60;
    if (v60(&v101, v99, &v71))
    {
      sub_213FDC6D0(v48, v68);

      sub_213FDC6D0(v48, v68);
      v101 = a5;
      v102 = a6;
      LOBYTE(v99[0]) = v64;
      v24 = v64;
      v71.n128_u64[0] = 0xD000000000000031;
      v71.n128_u64[1] = 0x800000021478F5C0;
      v72 = 0xD00000000000001CLL;
      v73 = 0x800000021478A360;

      sub_213FDC9D0(v67, v66);
      v25 = v55;
      if (v55(&v101, v99, &v71))
      {
        sub_213FDC6D0(v67, v66);

        sub_213FDC6D0(v67, v66);
        v71.n128_u64[0] = v61;
        v71.n128_u64[1] = v53;
        v72 = v59;
        v73 = v58;
        v74 = v62;

        sub_21404F7E0(v59, v58);
        sub_214032118(a8, a10, 2, 0xD000000000000022, 0x800000021478F600, 0xD00000000000001CLL, 0x800000021478A360);
        sub_213FDC6BC(a8, a10);
        sub_213FDC6BC(a1, a2);

        v35 = v71;
        v36 = v73;
        v69 = v72;
        v37 = v74;

        sub_214032564(v59, v58);
        result = v52;
        *a9 = v52;
        *(a9 + 16) = v44;
        *(a9 + 24) = v43;
        *(a9 + 32) = v42;
        *(a9 + 33) = v111[0];
        *(a9 + 36) = *(v111 + 3);
        v41 = v112;
        *(a9 + 40) = v60;
        *(a9 + 48) = v41;
        *(a9 + 56) = a3;
        *(a9 + 64) = a4;
        *(a9 + 72) = v70;
        *(a9 + 80) = v55;
        *(a9 + 88) = v65;
        *(a9 + 96) = a5;
        *(a9 + 104) = a6;
        *(a9 + 112) = v64;
        *(a9 + 116) = a7;
        *(a9 + 120) = v54;
        *(a9 + 128) = v35;
        *(a9 + 144) = v69;
        *(a9 + 152) = v36;
        *(a9 + 160) = v37;
        return result;
      }

      sub_214031C4C();
      swift_allocError();
      *v39 = 0xD000000000000031;
      v39[1] = 0x800000021478F5C0;
      v39[2] = 0xD00000000000001CLL;
      v39[3] = 0x800000021478A360;
      swift_willThrow();

      sub_213FDC6BC(a8, a10);

      sub_213FDC6BC(a1, a2);
      v30 = v112;
      v27 = v65;

      sub_213FDC6D0(v67, v66);
      v33 = a3;
      v34 = a4;
      v31 = v58;
      v28 = v59;
      v32 = v53;
      v21 = v43;
      v23 = v44;
      v22 = v52;
      v20 = v42;
      v26 = v70;
    }

    else
    {
      sub_214031C4C();
      swift_allocError();
      *v38 = 0xD000000000000023;
      v38[1] = 0x800000021478F590;
      v38[2] = 0xD00000000000001CLL;
      v38[3] = 0x800000021478A360;
      swift_willThrow();

      sub_213FDC6BC(a8, a10);

      sub_213FDC6BC(a1, a2);
      v25 = v55;
      v30 = v112;

      sub_213FDC6D0(v48, v68);
      v34 = v68;
      v33 = v48;
      v31 = v58;
      v28 = v59;
      v32 = v53;
      v21 = v43;
      v23 = v44;
      v22 = v52;
      v20 = v42;
      v26 = v70;
      v24 = v64;
      v27 = v65;
    }
  }

  v71 = v22;
  v72 = v23;
  v73 = v21;
  v74 = v20;
  *v75 = v111[0];
  *&v75[3] = *(v111 + 3);
  v76 = v29;
  v77 = v30;
  v78 = v33;
  v79 = v34;
  v80 = v26;
  *v81 = *v110;
  *&v81[3] = *&v110[3];
  v82 = v25;
  v83 = v27;
  v84 = v67;
  v85 = v66;
  v86 = v24;
  v88 = v109;
  v87 = v108;
  v89 = v56;
  v90 = v54;
  *&v91[3] = *(v107 + 3);
  *v91 = v107[0];
  v92 = v61;
  v93 = v32;
  v94 = v28;
  v95 = v31;
  v96 = v62;
  sub_2142FDBBC(&v71);
  return result;
}

unint64_t sub_2141A0300()
{
  v1 = *v0;
  v2 = 0xD00000000000001FLL;
  v3 = 0xD000000000000018;
  if (v1 != 3)
  {
    v3 = 0xD000000000000010;
  }

  if (v1 != 2)
  {
    v2 = v3;
  }

  if (*v0)
  {
    v4 = 0xD000000000000011;
  }

  else
  {
    v4 = 0xD000000000000015;
  }

  if (*v0 <= 1u)
  {
    return v4;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_2141A0390@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_21436EF7C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_2141A03B8(uint64_t a1)
{
  v2 = sub_2142FDC10();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2141A03F4(uint64_t a1)
{
  v2 = sub_2142FDC10();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2141A0430@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v148 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908648, &qword_2146F5108);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v60 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142FDC10();
  sub_2146DAA08();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v94 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905680, &unk_2146F3CE0);
  LOBYTE(v95) = 0;
  sub_2142E1278();
  sub_2146DA1C8();
  v92 = v106;
  v93 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
  v8 = v7;
  LOBYTE(v95) = 1;
  sub_2142E12FC();
  sub_2146DA1C8();
  v9 = *(&v106 + 1);
  v91 = v106;
  LOBYTE(v95) = 2;
  sub_2146DA1C8();
  v89 = v106;
  v90 = v9;
  v10 = *(&v106 + 1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905AC0, &unk_2146F3F90);
  LOBYTE(v95) = 3;
  sub_2142E6128();
  sub_2146DA1C8();
  v88 = v10;
  v11 = v106;
  LODWORD(v10) = BYTE4(v106);
  v140 = 4;
  sub_2146DA1C8();
  v67 = v8;
  v68 = v4;
  v69 = v11;
  v71 = v141;
  v72 = v142;
  sub_2143DAF70(&v106);
  v13 = v106;
  v14 = v107;
  v15 = v108;
  v16 = v109;
  sub_2143DB0D8(&v95);
  v83 = v95;
  v86 = v96;
  v87 = *(&v95 + 1);
  v85 = *(&v96 + 1);
  v84 = v97;
  sub_2143DB274(&v135);
  v78 = v135;
  v79 = v136;
  v81 = v137;
  v82 = *(&v135 + 1);
  v80 = v138;
  sub_2143DB2A8(&v131);
  v74 = v131;
  v76 = v132;
  v77 = v133;
  v73 = v134;
  v139 = v10;
  v75 = v10;
  v106 = v13;
  v107 = v14;
  v108 = v15;
  v109 = v16;
  v64 = *(&v13 + 1);

  v65 = v15;
  v66 = v14;
  sub_21404F7E0(v14, v15);
  sub_214032118(v92, *(&v92 + 1), 2, 0xD000000000000027, 0x800000021478F560, 0xD00000000000001CLL, 0x800000021478A360);

  v70 = v106;
  v17 = v108;
  v63 = v107;
  v61 = v109;

  sub_214032564(v66, v65);
  *&v95 = v91;
  *(&v95 + 1) = v90;
  LOBYTE(v135) = v84;
  *&v106 = 0xD000000000000023;
  *(&v106 + 1) = 0x800000021478F590;
  v107 = 0xD00000000000001CLL;
  v108 = 0x800000021478A360;

  v19 = v85;
  v18 = v86;
  sub_213FDC9D0(v86, v85);
  v20 = v83(&v95, &v135, &v106);
  v62 = v17;
  v66 = 0x800000021478A360;
  v21 = v80;
  if ((v20 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v26 = 0xD000000000000023;
    v26[1] = 0x800000021478F590;
    v27 = v66;
    v26[2] = 0xD00000000000001CLL;
    v26[3] = v27;
    swift_willThrow();

    v28 = v71;
    sub_213FDC6BC(v92, *(&v92 + 1));
    sub_213FDC6BC(v28, v72);
    (*(v94 + 8))(v67, v68);
    v29 = v87;

    sub_213FDC6D0(v18, v19);
    v30 = v84;
LABEL_7:
    v31 = v62;
    v32 = v63;
    v33 = v61;
    v34 = v80;
    __swift_destroy_boxed_opaque_existential_1(v93);
    v106 = v70;
    v107 = v32;
    v108 = v31;
    v109 = v33;
    *v110 = v147[0];
    *&v110[3] = *(v147 + 3);
    v111 = v83;
    v112 = v29;
    v113 = v86;
    v114 = v85;
    v115 = v30;
    *v116 = *v146;
    *&v116[3] = *&v146[3];
    v117 = v78;
    v118 = v82;
    v119 = v79;
    v120 = v81;
    v121 = v34;
    v123 = v145;
    v122 = v144;
    v124 = v69;
    v125 = v75;
    *&v126[3] = *&v143[3];
    *v126 = *v143;
    v127 = v74;
    v128 = v76;
    v129 = v77;
    v130 = v73;
    return sub_2142FDBBC(&v106);
  }

  v22 = v19;
  sub_213FDC6D0(v18, v19);
  v23 = v21;
  v24 = v66;

  sub_213FDC6D0(v18, v22);
  *&v95 = v89;
  *(&v95 + 1) = v88;
  LOBYTE(v135) = v23;
  *&v106 = 0xD000000000000031;
  *(&v106 + 1) = 0x800000021478F5C0;
  v107 = 0xD00000000000001CLL;
  v108 = v24;

  sub_213FDC9D0(v79, v81);
  v25 = v78(&v95, &v135, &v106);
  v35 = v75;
  if ((v25 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v41 = 0xD000000000000031;
    v41[1] = 0x800000021478F5C0;
    v42 = v66;
    v41[2] = 0xD00000000000001CLL;
    v41[3] = v42;
    swift_willThrow();

    sub_213FDC6BC(v92, *(&v92 + 1));
    v43 = v79;
    sub_213FDC6BC(v71, v72);
    (*(v94 + 8))(v67, v68);

    sub_213FDC6D0(v43, v81);
    v85 = v90;
    v86 = v91;
    v30 = v84;
    v29 = v87;
    goto LABEL_7;
  }

  v36 = v79;
  v37 = v81;
  sub_213FDC6D0(v79, v81);
  v38 = v66;

  sub_213FDC6D0(v36, v37);
  v135 = v74;
  v39 = v76;
  v40 = v77;
  v136 = v76;
  v137 = v77;
  v138 = v73;

  sub_21404F7E0(v39, v40);
  sub_214032118(v71, v72, 2, 0xD000000000000022, 0x800000021478F600, 0xD00000000000001CLL, v38);
  v65 = 0;

  sub_213FDC6BC(v92, *(&v92 + 1));
  sub_213FDC6BC(v71, v72);
  (*(v94 + 8))(v67, v68);
  v44 = v135;
  v94 = v135;
  v45 = v137;
  v86 = v136;
  *&v92 = v137;
  *(&v92 + 1) = *(&v135 + 1);
  LODWORD(v85) = v138;

  sub_214032564(v76, v77);
  v95 = v70;
  *&v96 = v63;
  *(&v96 + 1) = v62;
  LOBYTE(v97) = v61;
  *(&v97 + 1) = v147[0];
  DWORD1(v97) = *(v147 + 3);
  *(&v97 + 1) = v83;
  *&v98 = v87;
  *(&v98 + 1) = v91;
  *&v99 = v90;
  BYTE8(v99) = v84;
  *(&v99 + 9) = *v146;
  HIDWORD(v99) = *&v146[3];
  v46 = v78;
  *&v100 = v78;
  *(&v100 + 1) = v82;
  *&v101 = v89;
  *(&v101 + 1) = v88;
  v47 = v80;
  LOBYTE(v102) = v80;
  *(&v102 + 1) = v144;
  BYTE3(v102) = v145;
  v48 = v69;
  DWORD1(v102) = v69;
  BYTE8(v102) = v35;
  *(&v102 + 9) = *v143;
  HIDWORD(v102) = *&v143[3];
  v103 = v44;
  v49 = v86;
  *&v104 = v86;
  *(&v104 + 1) = v45;
  v50 = v85;
  v105 = v85;
  v51 = v96;
  v52 = v148;
  *v148 = v70;
  v52[1] = v51;
  v53 = v97;
  v54 = v98;
  v55 = v100;
  v52[4] = v99;
  v52[5] = v55;
  v52[2] = v53;
  v52[3] = v54;
  v56 = v101;
  v57 = v102;
  v58 = v103;
  v59 = v104;
  *(v52 + 160) = v50;
  LOBYTE(v45) = v50;
  v52[8] = v58;
  v52[9] = v59;
  v52[6] = v56;
  v52[7] = v57;
  sub_2142FDC64(&v95, &v106);
  __swift_destroy_boxed_opaque_existential_1(v93);
  v106 = v70;
  v107 = v63;
  v108 = v62;
  v109 = v61;
  *v110 = v147[0];
  *&v110[3] = *(v147 + 3);
  v111 = v83;
  v112 = v87;
  v113 = v91;
  v114 = v90;
  v115 = v84;
  *v116 = *v146;
  *&v116[3] = *&v146[3];
  v117 = v46;
  v118 = v82;
  v119 = v89;
  v120 = v88;
  v121 = v47;
  v123 = v145;
  v122 = v144;
  v124 = v48;
  v125 = v35;
  *&v126[3] = *&v143[3];
  *v126 = *v143;
  *&v127 = v94;
  *(&v127 + 1) = *(&v92 + 1);
  v128 = v49;
  v129 = v92;
  v130 = v45;
  return sub_2142FDBBC(&v106);
}

uint64_t sub_2141A1124(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908658, &qword_2146F5110);
  v20 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v13 - v5;
  v8 = *(v1 + 16);
  v7 = *(v1 + 24);
  v9 = *(v1 + 56);
  v18 = *(v1 + 64);
  v19 = v9;
  v10 = *(v1 + 96);
  v16 = *(v1 + 104);
  v17 = v10;
  v23 = *(v1 + 116);
  v15 = *(v1 + 120);
  v11 = *(v1 + 144);
  v13 = *(v1 + 152);
  v14 = v11;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142FDC10();
  sub_2146DAA28();
  if (v7 >> 60 == 11)
  {
    goto LABEL_12;
  }

  v21 = v8;
  v22 = v7;
  v24 = 0;
  sub_213FDCA18(v8, v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905680, &unk_2146F3CE0);
  sub_2142E1CAC();
  sub_2146DA388();
  if (v2)
  {
    goto LABEL_3;
  }

  sub_213FDC6BC(v21, v22);
  if (v18 == 1 || (v21 = v19, v22 = v18, v24 = 1, __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050), sub_214045AC0(), sub_2146DA388(), v16 == 1 || (v21 = v17, v22 = v16, v24 = 2, sub_2146DA388(), LODWORD(v21) = v23, BYTE4(v21) = v15, v24 = 3, __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905AC0, &unk_2146F3F90), sub_2142E62D8(), sub_2146DA388(), v13 >> 60 == 11)))
  {
LABEL_12:
    result = sub_2146DA018();
    __break(1u);
    return result;
  }

  v21 = v14;
  v22 = v13;
  v24 = 4;
  sub_213FDCA18(v14, v13);
  sub_2146DA388();
LABEL_3:
  sub_213FDC6BC(v21, v22);
  return (*(v20 + 8))(v6, v4);
}

uint64_t sub_2141A14B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, unint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, unint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_2143DB928(&v82);
  v16 = v82;
  v15 = v83;
  v17 = v84;
  v18 = v85;
  v19 = v86;
  sub_2143DBAC4(&v118);
  v130 = v118;
  v49 = v119;
  v77 = v121;
  v79 = v120;
  v81 = v122;
  sub_2143DBC34(v116);
  v75 = v116[0];
  v69 = v116[1];
  v70 = v116[2];
  v76 = v116[3];
  v59 = v117;
  sub_2143DBC68(v114);
  v50 = v114[1];
  v51 = v114[2];
  v64 = v114[0];
  v66 = v114[3];
  v62 = v115;
  sub_2143DBDD0(v112);
  v55 = v112[0];
  v56 = v112[1];
  v60 = v112[2];
  v61 = v112[3];
  v58 = v113;
  v54 = a1;
  v123 = BYTE4(a1) & 1;
  v52 = BYTE4(a1) & 1;
  v53 = v19;
  v20 = a2;
  v118 = a2;
  v119 = a3;
  LOBYTE(v116[0]) = v19;
  v82 = 0xD000000000000023;
  v83 = 0x800000021478F630;
  v84 = 0xD00000000000001CLL;
  v85 = 0x800000021478A360;

  v21 = v17;
  sub_213FDC9D0(v17, v18);
  v74 = v15;
  v22 = v16(&v118, v116, &v82);
  if (v68)
  {
    sub_213FDC6BC(a8, a10);
    sub_213FDC6BC(a4, a5);
LABEL_6:

    v25 = v55;
    v26 = v74;
    v23 = v64;

    sub_213FDC6D0(v21, v18);
    v27 = v18;
    v36 = v59;
    v38 = v62;
    v28 = v50;
    v29 = v51;
    v30 = v66;
    v31 = v70;
    v33 = v77;
    v32 = v79;
    v34 = v49;
LABEL_7:
    LODWORD(v82) = v54;
    BYTE4(v82) = v52;
    *(&v82 + 5) = v128;
    HIBYTE(v82) = v129;
    v83 = v16;
    v84 = v26;
    v85 = v21;
    v86 = v27;
    v87 = v53;
    *v88 = *v127;
    *&v88[3] = *&v127[3];
    v89 = v130;
    v90 = v34;
    v91 = v32;
    v92 = v33;
    v93 = v81;
    *&v94[3] = *&v126[3];
    *v94 = *v126;
    v95 = v75;
    v96 = v69;
    v97 = v31;
    v98 = v76;
    v99 = v36;
    *&v100[3] = *&v125[3];
    *v100 = *v125;
    v101 = v23;
    v102 = v28;
    v103 = v29;
    v104 = v30;
    v105 = v38;
    *&v106[3] = *&v124[3];
    *v106 = *v124;
    v107 = v25;
    v108 = v56;
    v109 = v60;
    v110 = v61;
    v111 = v58;
    return sub_2142FDCC0(&v82);
  }

  v45 = a3;
  if ((v22 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v24 = 0xD000000000000023;
    v24[1] = 0x800000021478F630;
    v24[2] = 0xD00000000000001CLL;
    v24[3] = 0x800000021478A360;
    swift_willThrow();

    sub_213FDC6BC(a8, a10);
    sub_213FDC6BC(a4, a5);
    goto LABEL_6;
  }

  sub_213FDC6D0(v17, v18);

  sub_213FDC6D0(v17, v18);
  v82 = v130;
  v83 = v49;
  v84 = v79;
  v85 = v77;
  LOBYTE(v86) = v81;

  sub_21404F7E0(v79, v77);
  sub_214032118(a4, a5, 2, 0xD000000000000022, 0x800000021478F660, 0xD00000000000001CLL, 0x800000021478A360);
  v23 = v64;

  v130 = v82;
  v43 = v83;
  v44 = v84;
  v48 = v85;
  v81 = v86;

  sub_214032564(v79, v77);
  v118 = a6;
  v119 = a7;
  v36 = v59;
  LOBYTE(v116[0]) = v59;
  v82 = 0xD000000000000031;
  v83 = 0x800000021478F690;
  v84 = 0xD00000000000001CLL;
  v85 = 0x800000021478A360;

  sub_213FDC9D0(v70, v76);
  v37 = v75(&v118, v116, &v82);
  v38 = v62;
  if ((v37 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v39 = 0xD000000000000031;
    v39[1] = 0x800000021478F690;
    v39[2] = 0xD00000000000001CLL;
    v39[3] = 0x800000021478A360;
    swift_willThrow();

    sub_213FDC6BC(a8, a10);

    sub_213FDC6BC(a4, a5);
    v25 = v55;

    v31 = v70;
    sub_213FDC6D0(v70, v76);
    v27 = v45;
    v34 = v43;
    v32 = v44;
    v33 = v48;
    v21 = v20;
    v26 = v74;
    v28 = v50;
    v29 = v51;
    v30 = v66;
    goto LABEL_7;
  }

  sub_213FDC6D0(v70, v76);

  sub_213FDC6D0(v70, v76);
  v82 = v64;
  v83 = v50;
  v84 = v51;
  v85 = v66;
  LOBYTE(v86) = v62;

  sub_21404F7E0(v51, v66);
  sub_214032118(a8, a10, 2, 0xD000000000000027, 0x800000021478F6D0, 0xD00000000000001CLL, 0x800000021478A360);

  v65 = v82;
  v71 = v83;
  v78 = v84;
  v80 = v85;
  v63 = v86;

  sub_214032564(v51, v66);
  v118 = a11;
  v119 = a12;
  LOBYTE(v116[0]) = v58;
  v82 = 0xD000000000000022;
  v83 = 0x800000021478F700;
  v84 = 0xD00000000000001CLL;
  v85 = 0x800000021478A360;

  sub_213FDC9D0(v60, v61);
  v40 = v55(&v118, v116, &v82);
  v25 = v55;
  if ((v40 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v42 = 0xD000000000000022;
    v42[1] = 0x800000021478F700;
    v42[2] = 0xD00000000000001CLL;
    v42[3] = 0x800000021478A360;
    swift_willThrow();

    sub_213FDC6BC(a8, a10);
    sub_213FDC6BC(a4, a5);
    v21 = v20;
    v31 = a6;

    sub_213FDC6D0(v60, v61);
    v27 = v45;
    v34 = v43;
    v32 = v44;
    v33 = v48;
    v76 = a7;
    v28 = v71;
    v29 = v78;
    v30 = v80;
    v26 = v74;
    v23 = v65;
    v38 = v63;
    goto LABEL_7;
  }

  sub_213FDC6D0(v60, v61);
  sub_213FDC6BC(a8, a10);
  sub_213FDC6BC(a4, a5);

  result = sub_213FDC6D0(v60, v61);
  *a9 = v54;
  *(a9 + 4) = v52;
  *(a9 + 5) = v128;
  *(a9 + 7) = v129;
  *(a9 + 8) = v16;
  *(a9 + 16) = v74;
  *(a9 + 24) = v20;
  *(a9 + 32) = v45;
  *(a9 + 40) = v53;
  *(a9 + 41) = *v127;
  *(a9 + 44) = *&v127[3];
  *(a9 + 48) = v130;
  *(a9 + 56) = v43;
  *(a9 + 64) = v44;
  *(a9 + 72) = v48;
  *(a9 + 80) = v81;
  *(a9 + 84) = *&v126[3];
  *(a9 + 81) = *v126;
  *(a9 + 88) = v75;
  *(a9 + 96) = v69;
  *(a9 + 104) = a6;
  *(a9 + 112) = a7;
  *(a9 + 120) = v59;
  *(a9 + 124) = *&v125[3];
  *(a9 + 121) = *v125;
  *(a9 + 128) = v65;
  *(a9 + 136) = v71;
  *(a9 + 144) = v78;
  *(a9 + 152) = v80;
  *(a9 + 160) = v63;
  v41 = *v124;
  *(a9 + 164) = *&v124[3];
  *(a9 + 161) = v41;
  *(a9 + 168) = v55;
  *(a9 + 176) = v56;
  *(a9 + 184) = a11;
  *(a9 + 192) = a12;
  *(a9 + 200) = v58;
  return result;
}

unint64_t sub_2141A1F20()
{
  v1 = 0xD000000000000010;
  v2 = *v0;
  v3 = 0xD00000000000001FLL;
  v4 = 0xD000000000000015;
  if (v2 != 4)
  {
    v4 = 0xD000000000000010;
  }

  if (v2 != 3)
  {
    v3 = v4;
  }

  if (v2 == 1)
  {
    v1 = 0xD000000000000011;
  }

  if (!*v0)
  {
    v1 = 0xD000000000000018;
  }

  if (*v0 <= 2u)
  {
    return v1;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_2141A1FC4@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_21436F138(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_2141A1FEC(uint64_t a1)
{
  v2 = sub_2142FDD14();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2141A2028(uint64_t a1)
{
  v2 = sub_2142FDD14();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2141A2064@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908660, &qword_2146F5118);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v76 - v7;
  v9 = a1[3];
  v183 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v9);
  sub_2142FDD14();
  sub_2146DAA08();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(v183);
  }

  v121 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905AC0, &unk_2146F3F90);
  LOBYTE(v122) = 0;
  sub_2142E6128();
  sub_2146DA1C8();
  v120 = v6;
  v10 = v134;
  v11 = v5;
  v12 = BYTE4(v134);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
  LOBYTE(v122) = 1;
  v13 = sub_2142E12FC();
  sub_2146DA1C8();
  v119 = v13;
  v116 = v10;
  v118 = v12;
  v117 = v134;
  v14 = v135;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905680, &unk_2146F3CE0);
  LOBYTE(v122) = 2;
  v16 = sub_2142E1278();
  sub_2146DA1C8();
  v113 = v16;
  v114 = v15;
  v115 = v14;
  v17 = v134;
  v18 = v135;
  LOBYTE(v122) = 3;
  sub_2146DA1C8();
  v111 = v17;
  v112 = v18;
  v19 = v134;
  v20 = v135;
  LOBYTE(v122) = 4;
  sub_2146DA1C8();
  v109 = v19;
  v114 = v20;
  v21 = v134;
  v22 = v135;
  v174 = 5;
  sub_2146DA1C8();
  v93 = v21;
  v94 = v22;
  v82 = v175;
  v83 = v11;
  v85 = v176;
  sub_2143DB928(&v134);
  v110 = v134;
  v24 = v135;
  v119 = v136;
  v25 = v137;
  v26 = v138;
  sub_2143DBAC4(&v122);
  v100 = v122;
  v104 = v123;
  v107 = *(&v122 + 1);
  v108 = *(&v123 + 1);
  v106 = v124;
  sub_2143DBC34(&v168);
  v98 = v168;
  v103 = v170;
  v101 = v169;
  v102 = v171;
  v99 = v172;
  sub_2143DBC68(v166);
  v91 = v166[0];
  v92 = v166[2];
  v96 = v166[1];
  v97 = v166[3];
  v95 = v167;
  sub_2143DBDD0(v164);
  v87 = v164[0];
  v88 = v164[2];
  v89 = v164[3];
  v90 = v164[1];
  v86 = v165;
  v173 = v118;
  *&v122 = v117;
  *(&v122 + 1) = v115;
  v84 = v26;
  LOBYTE(v168) = v26;
  v134 = 0xD000000000000023;
  v135 = 0x800000021478F630;
  v136 = 0xD00000000000001CLL;
  v137 = 0x800000021478A360;

  v113 = v25;
  sub_213FDC9D0(v119, v25);
  v105 = v24;
  v27 = v110(&v122, &v168, &v134);
  v81 = 0x800000021478A360;
  v28 = v111;
  if (v27)
  {
    v29 = v119;
    v30 = v113;
    sub_213FDC6D0(v119, v113);
    v31 = v81;

    sub_213FDC6D0(v29, v30);
    v134 = v100;
    v32 = v108;
    v135 = v107;
    v33 = v104;
    v136 = v104;
    v137 = v108;
    LOBYTE(v138) = v106;

    sub_21404F7E0(v33, v32);
    sub_214032118(v28, v112, 2, 0xD000000000000022, 0x800000021478F660, 0xD00000000000001CLL, v31);
    v45 = v85;

    v100 = v134;
    v79 = v135;
    v80 = v136;
    v78 = v137;
    v106 = v138;

    sub_214032564(v104, v108);
    *&v122 = v109;
    *(&v122 + 1) = v114;
    LOBYTE(v168) = v99;
    v134 = 0xD000000000000031;
    v135 = 0x800000021478F690;
    v136 = 0xD00000000000001CLL;
    v137 = v31;

    sub_213FDC9D0(v103, v102);
    v46 = v98(&v122, &v168, &v134);
    if (v46)
    {
      v48 = v102;
      v47 = v103;
      sub_213FDC6D0(v103, v102);
      v49 = v81;

      sub_213FDC6D0(v47, v48);
      v50 = v92;
      v134 = v91;
      v51 = v97;
      v135 = v96;
      v136 = v92;
      v137 = v97;
      LOBYTE(v138) = v95;

      sub_21404F7E0(v50, v51);
      sub_214032118(v93, v94, 2, 0xD000000000000027, 0x800000021478F6D0, 0xD00000000000001CLL, v49);
      v54 = v81;

      v91 = v134;
      v55 = v135;
      v77 = v136;
      v104 = v137;
      v95 = v138;

      sub_214032564(v92, v97);
      v168 = v82;
      v169 = v45;
      LOBYTE(v122) = v86;
      v134 = 0xD000000000000022;
      v135 = 0x800000021478F700;
      v136 = 0xD00000000000001CLL;
      v137 = v54;

      sub_213FDC9D0(v88, v89);
      v56 = v87(&v168, &v122, &v134);
      if (v56)
      {
        v58 = v88;
        v57 = v89;
        sub_213FDC6D0(v88, v89);

        sub_213FDC6BC(v93, v94);
        sub_213FDC6BC(v111, v112);

        (*(v120 + 8))(v8, v83);
        v59 = v90;

        sub_213FDC6D0(v58, v57);
        *(&v122 + 5) = v181;
        BYTE7(v122) = v182;
        *(&v124 + 9) = *v180;
        HIDWORD(v124) = *&v180[3];
        *(&v127 + 1) = *v179;
        DWORD1(v127) = *&v179[3];
        *(&v129 + 9) = *v178;
        HIDWORD(v129) = *&v178[3];
        DWORD1(v132) = *&v177[3];
        *(&v132 + 1) = *v177;
        v60 = v116;
        LODWORD(v122) = v116;
        v61 = v118;
        BYTE4(v122) = v118;
        v62 = v110;
        *(&v122 + 1) = v110;
        *&v123 = v105;
        *(&v123 + 1) = v117;
        *&v124 = v115;
        BYTE8(v124) = v84;
        *&v125 = v100;
        *(&v125 + 1) = v79;
        v63 = v78;
        *&v126 = v80;
        *(&v126 + 1) = v78;
        LOBYTE(v127) = v106;
        *(&v127 + 1) = v98;
        *&v128 = v101;
        *(&v128 + 1) = v109;
        *&v129 = v114;
        BYTE8(v129) = v99;
        *&v130 = v91;
        *(&v130 + 1) = v55;
        v76 = v55;
        *&v131 = v77;
        *(&v131 + 1) = v104;
        LOBYTE(v132) = v95;
        *(&v132 + 1) = v87;
        *&v133[0] = v59;
        *(&v133[0] + 1) = v82;
        *&v133[1] = v85;
        LOBYTE(v59) = v86;
        BYTE8(v133[1]) = v86;
        v64 = v122;
        v65 = v123;
        v66 = v125;
        v67 = v121;
        v121[2] = v124;
        v67[3] = v66;
        *v67 = v64;
        v67[1] = v65;
        v68 = v126;
        v69 = v127;
        v70 = v129;
        v67[6] = v128;
        v67[7] = v70;
        v67[4] = v68;
        v67[5] = v69;
        v71 = v130;
        v72 = v131;
        *(v67 + 185) = *(v133 + 9);
        v73 = v133[0];
        v67[10] = v132;
        v67[11] = v73;
        v67[8] = v71;
        v67[9] = v72;
        sub_2142FDD68(&v122, &v134);
        __swift_destroy_boxed_opaque_existential_1(v183);
        LODWORD(v134) = v60;
        BYTE4(v134) = v61;
        *(&v134 + 5) = v181;
        HIBYTE(v134) = v182;
        v135 = v62;
        v136 = v105;
        v137 = v117;
        v138 = v115;
        v139 = v84;
        *v140 = *v180;
        *&v140[3] = *&v180[3];
        v141 = v100;
        v142 = v79;
        v143 = v80;
        v144 = v63;
        v145 = v106;
        *v146 = *v179;
        *&v146[3] = *&v179[3];
        v147 = v98;
        v148 = v101;
        v149 = v109;
        v150 = v114;
        v151 = v99;
        *v152 = *v178;
        *&v152[3] = *&v178[3];
        v153 = v91;
        v154 = v76;
        v155 = v77;
        v156 = v104;
        v157 = v95;
        *&v158[3] = *&v177[3];
        *v158 = *v177;
        v159 = v87;
        v160 = v90;
        v161 = v82;
        v162 = v85;
        v163 = v59;
        return sub_2142FDCC0(&v134);
      }

      sub_214031C4C();
      swift_allocError();
      *v74 = 0xD000000000000022;
      v74[1] = 0x800000021478F700;
      v75 = v81;
      v74[2] = 0xD00000000000001CLL;
      v74[3] = v75;
      swift_willThrow();
      sub_213FDC6BC(v93, v94);
      sub_213FDC6BC(v111, v112);

      (*(v120 + 8))(v8, v83);

      sub_213FDC6D0(v88, v89);
      v119 = v117;
      v113 = v115;
      v44 = v80;
      v41 = v77;
      v107 = v79;
      v108 = v78;
      v102 = v114;
      v103 = v109;
      v37 = v105;
      v96 = v55;
      v97 = v104;
      v36 = v118;
      v40 = v116;
      v42 = v91;
      v43 = v100;
    }

    else
    {
      sub_214031C4C();
      swift_allocError();
      *v52 = 0xD000000000000031;
      v52[1] = 0x800000021478F690;
      v53 = v81;
      v52[2] = 0xD00000000000001CLL;
      v52[3] = v53;
      swift_willThrow();

      sub_213FDC6BC(v93, v94);
      sub_213FDC6BC(v111, v112);
      (*(v120 + 8))(v8, v83);

      sub_213FDC6D0(v103, v102);
      v119 = v117;
      v113 = v115;
      v44 = v80;
      v107 = v79;
      v108 = v78;
      v36 = v118;
      v40 = v116;
      v37 = v105;
      v42 = v91;
      v41 = v92;
      v43 = v100;
    }
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v34 = 0xD000000000000023;
    v34[1] = 0x800000021478F630;
    v35 = v81;
    v34[2] = 0xD00000000000001CLL;
    v34[3] = v35;
    swift_willThrow();

    v36 = v118;
    v37 = v105;
    v38 = v119;
    v39 = v113;

    sub_213FDC6BC(v93, v94);
    sub_213FDC6BC(v28, v112);
    (*(v120 + 8))(v8, v83);

    sub_213FDC6D0(v38, v39);
    v40 = v116;
    v42 = v91;
    v41 = v92;
    v43 = v100;
    v44 = v104;
  }

  __swift_destroy_boxed_opaque_existential_1(v183);
  LODWORD(v134) = v40;
  BYTE4(v134) = v36;
  *(&v134 + 5) = v181;
  HIBYTE(v134) = v182;
  v135 = v110;
  v136 = v37;
  v137 = v119;
  v138 = v113;
  v139 = v84;
  *v140 = *v180;
  *&v140[3] = *&v180[3];
  v141 = v43;
  v142 = v107;
  v143 = v44;
  v144 = v108;
  v145 = v106;
  *&v146[3] = *&v179[3];
  *v146 = *v179;
  v147 = v98;
  v148 = v101;
  v149 = v103;
  v150 = v102;
  v151 = v99;
  *&v152[3] = *&v178[3];
  *v152 = *v178;
  v153 = v42;
  v154 = v96;
  v155 = v41;
  v156 = v97;
  v157 = v95;
  *&v158[3] = *&v177[3];
  *v158 = *v177;
  v159 = v87;
  v160 = v90;
  v161 = v88;
  v162 = v89;
  v163 = v86;
  return sub_2142FDCC0(&v134);
}

uint64_t sub_2141A30C0(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908670, &qword_2146F5120);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v20 - v5;
  v7 = *v1;
  v8 = *(v1 + 4);
  v9 = *(v1 + 4);
  v29 = *(v1 + 3);
  v30 = v9;
  v10 = *(v1 + 8);
  v27 = *(v1 + 9);
  v28 = v10;
  v11 = *(v1 + 13);
  v25 = *(v1 + 14);
  v26 = v11;
  v12 = *(v1 + 18);
  v23 = *(v1 + 19);
  v24 = v12;
  v13 = *(v1 + 24);
  v21 = *(v1 + 23);
  v22 = v13;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142FDD14();
  sub_2146DAA28();
  LODWORD(v32) = v7;
  BYTE4(v32) = v8;
  v14 = v6;
  v34 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905AC0, &unk_2146F3F90);
  sub_2142E62D8();
  v15 = v31;
  sub_2146DA388();
  if (v15)
  {
    return (*(v4 + 8))(v14, v3);
  }

  v16 = v28;
  v17 = v27;
  if (v30 != 1)
  {
    v32 = v29;
    v33 = v30;
    v34 = 1;
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
    sub_214045AC0();
    sub_2146DA388();
    v31 = v18;
    if (v17 >> 60 != 11)
    {
      v32 = v16;
      v33 = v17;
      v34 = 2;
      sub_213FDCA18(v16, v17);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905680, &unk_2146F3CE0);
      sub_2142E1CAC();
      sub_2146DA388();
      sub_213FDC6BC(v32, v33);
      if (v25 != 1)
      {
        v32 = v26;
        v33 = v25;
        v34 = 3;
        sub_2146DA388();
        if (v23 >> 60 != 11)
        {
          v32 = v24;
          v33 = v23;
          v34 = 4;
          sub_213FDCA18(v24, v23);
          sub_2146DA388();
          sub_213FDC6BC(v32, v33);
          if (v22 != 1)
          {
            v32 = v21;
            v33 = v22;
            v34 = 5;
            sub_2146DA388();
            return (*(v4 + 8))(v14, v3);
          }
        }
      }
    }
  }

  result = sub_2146DA018();
  __break(1u);
  return result;
}

uint64_t ReadReceipt.init(with:metadata:participantDestinationIdentifiers:groupID:groupName:originalMessageTimestamp:)@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, char a10)
{
  v55 = *a1;
  sub_2143287C0(a2, a9, type metadata accessor for Metadata);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  *(inited + 32) = sub_2142E0CB4();
  sub_2140433DC(inited, &v52);
  v13 = v53;
  LOBYTE(inited) = v54;
  sub_21469E590(&v48);
  v14 = v49;
  v15 = v50;
  v16 = v51;
  Receipt = type metadata accessor for ReadReceipt(0);
  v18 = a9 + Receipt[5];
  *v18 = v52;
  *(v18 + 16) = v13;
  *(v18 + 24) = inited;
  v19 = a9 + Receipt[6];
  *v19 = v48;
  *(v19 + 16) = v14;
  *(v19 + 24) = v15;
  *(v19 + 32) = v16;
  v20 = (a9 + Receipt[7]);
  *v20 = a6;
  v20[1] = a7;
  v21 = a9 + Receipt[8];
  *v21 = a8;
  *(v21 + 8) = a10 & 1;
  v22 = *v19;
  v23 = *(v19 + 8);
  v24 = *(v19 + 16);
  v25 = *(v19 + 24);
  v26 = *(v19 + 32);
  v39 = a4;
  *&v52 = a4;
  *(&v52 + 1) = a5;
  v27 = v22;
  v44 = v26;
  v56 = v26;
  *&v48 = 0xD000000000000013;
  *(&v48 + 1) = 0x800000021478F730;
  v49 = 0xD00000000000001CLL;
  v50 = 0x800000021478A360;

  sub_213FDC9D0(v24, v25);
  v28 = v27(&v52, &v56, &v48);
  if (v42)
  {
  }

  else
  {
    if (v28)
    {
      sub_213FDC6D0(v24, v25);

      v29 = *(v19 + 16);
      v30 = *(v19 + 24);

      sub_213FDC6D0(v29, v30);
      *v19 = v27;
      *(v19 + 8) = v23;
      *(v19 + 16) = v39;
      *(v19 + 24) = a5;
      *(v19 + 32) = v44;
      v31 = *(v18 + 8);
      v32 = *(v18 + 16);
      v33 = *(v18 + 24);
      *&v48 = *v18;
      *(&v48 + 1) = v31;
      v49 = v32;
      LOBYTE(v50) = v33;

      sub_2140325F8(a3, v55, 0xD00000000000002DLL, 0x800000021478F750, 0xD00000000000001CLL, 0x800000021478A360);

      sub_21432887C(a2, type metadata accessor for Metadata);
      v34 = v49;
      LOBYTE(v30) = v50;

      *v18 = v48;
      *(v18 + 16) = v34;
      *(v18 + 24) = v30;
      return result;
    }

    sub_214031C4C();
    swift_allocError();
    *v36 = 0xD000000000000013;
    v36[1] = 0x800000021478F730;
    v36[2] = 0xD00000000000001CLL;
    v36[3] = 0x800000021478A360;
    swift_willThrow();
  }

  sub_21432887C(a2, type metadata accessor for Metadata);
  v37 = *(v19 + 16);
  v38 = *(v19 + 24);

  sub_213FDC6D0(v37, v38);
  *v19 = v27;
  *(v19 + 8) = v23;
  *(v19 + 16) = v24;
  *(v19 + 24) = v25;
  *(v19 + 32) = v44;
  return sub_21432887C(a9, type metadata accessor for ReadReceipt);
}

uint64_t sub_2141A385C()
{
  v1 = *v0;
  v2 = 0x617461646174656DLL;
  v3 = 0x444970756F7267;
  v4 = 0x6D614E70756F7267;
  if (v1 != 4)
  {
    v4 = 0xD000000000000018;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0xD000000000000021;
  if (v1 != 1)
  {
    v5 = 0xD000000000000032;
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

uint64_t sub_2141A3920@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_21436F338(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_2141A3948(uint64_t a1)
{
  v2 = sub_2142FDDC4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2141A3984(uint64_t a1)
{
  v2 = sub_2142FDDC4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ReadReceipt.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v71 = a2;
  v72 = type metadata accessor for Metadata(0);
  MEMORY[0x28223BE20](v72);
  v4 = &v59 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908678, &qword_2146F5128);
  v73 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v59 - v6;
  Receipt = type metadata accessor for ReadReceipt(0);
  MEMORY[0x28223BE20](Receipt);
  v10 = &v59 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142FDDC4();
  v11 = v74;
  sub_2146DAA08();
  if (v11)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v69 = Receipt;
  v70 = v10;
  v74 = v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v12 = sub_2146DA9F8();
  if (qword_27C903238 != -1)
  {
    swift_once();
  }

  v13 = sub_2146DA008();
  v14 = __swift_project_value_buffer(v13, qword_27CA19EC8);
  v15 = v7;
  if (*(v12 + 16) && (v16 = sub_21408C508(v14), (v17 & 1) != 0))
  {
    sub_2140537E4(*(v12 + 56) + 32 * v16, &v75);

    if (swift_dynamicCast())
    {
      v18 = v78;
    }

    else
    {
      v18 = 2;
    }
  }

  else
  {

    v18 = 2;
  }

  v19 = v74;
  LOBYTE(v75) = 0;
  sub_214328930(&qword_280B2E650, type metadata accessor for Metadata, byte_2146FB080);
  sub_2146DA1C8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C904F20, &qword_2146EE8A0);
  LOBYTE(v78) = 1;
  sub_2142E15CC();
  sub_2146DA1C8();
  v81 = v18;
  v20 = v75;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
  LOBYTE(v78) = 3;
  v72 = sub_2142E12FC();
  sub_2146DA1C8();
  v68 = v20;
  v22 = *(&v75 + 1);
  v67 = v75;
  LOBYTE(v78) = 4;
  sub_2146DA1C8();
  v72 = v22;
  v23 = v75;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9056B8, &qword_2146F3D20);
  LOBYTE(v78) = 5;
  sub_2142E18D0();
  sub_2146DA1C8();
  v66 = v75;
  LODWORD(v65) = BYTE8(v75);
  v24 = v19;
  v25 = v70;
  sub_2143287C0(v24, v70, type metadata accessor for Metadata);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  *(inited + 32) = sub_2142E0CB4();
  sub_2140433DC(inited, &v78);
  v27 = v79;
  v28 = v80;
  sub_21469E590(&v75);
  v29 = v77;
  v30 = v69;
  v31 = v25 + v69[5];
  *v31 = v78;
  *(v31 + 16) = v27;
  *(v31 + 24) = v28;
  v32 = v25 + v30[6];
  v33 = v76;
  *v32 = v75;
  *(v32 + 16) = v33;
  *(v32 + 32) = v29;
  *(v25 + v30[7]) = v23;
  v34 = v25 + v30[8];
  *v34 = v66;
  *(v34 + 8) = v65;
  v36 = *v32;
  v35 = *(v32 + 8);
  v37 = *(v32 + 16);
  v38 = *(v32 + 24);
  v39 = *(v32 + 32);
  *&v78 = v67;
  *(&v78 + 1) = v72;
  LODWORD(v66) = v39;
  v82 = v39;
  v60 = 0xD000000000000013;
  *&v75 = 0xD000000000000013;
  *(&v75 + 1) = 0x800000021478F730;
  v62 = 0x800000021478F730;
  *&v76 = 0xD00000000000001CLL;
  *(&v76 + 1) = 0x800000021478A360;
  v61 = 0x800000021478A360;

  v65 = v37;
  v64 = v38;
  sub_213FDC9D0(v37, v38);
  v63 = v35;
  v69 = v36;
  v40 = (v36)(&v78, &v82, &v75);
  v41 = v62;
  v42 = v31;
  v43 = v61;
  if (v40)
  {
    sub_213FDC6D0(v65, v64);

    v44 = *(v32 + 16);
    v45 = *(v32 + 24);

    sub_213FDC6D0(v44, v45);
    v46 = v63;
    *v32 = v69;
    *(v32 + 8) = v46;
    v47 = v72;
    *(v32 + 16) = v67;
    *(v32 + 24) = v47;
    *(v32 + 32) = v66;
    v48 = *(v42 + 8);
    v49 = *(v42 + 16);
    v50 = *(v42 + 24);
    *&v75 = *v42;
    *(&v75 + 1) = v48;
    *&v76 = v49;
    BYTE8(v76) = v50;

    sub_2140325F8(v68, v81, 0xD00000000000002DLL, 0x800000021478F750, 0xD00000000000001CLL, v43);

    sub_21432887C(v74, type metadata accessor for Metadata);
    (*(v73 + 8))(v15, v5);
    v57 = v76;
    v58 = BYTE8(v76);

    *v42 = v75;
    *(v42 + 16) = v57;
    *(v42 + 24) = v58;
    sub_214328704(v70, v71, type metadata accessor for ReadReceipt);
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  sub_214031C4C();
  swift_allocError();
  *v51 = v60;
  v51[1] = v41;
  v51[2] = 0xD00000000000001CLL;
  v51[3] = v43;
  swift_willThrow();

  sub_21432887C(v74, type metadata accessor for Metadata);
  (*(v73 + 8))(v15, v5);
  v52 = *(v32 + 16);
  v53 = *(v32 + 24);

  sub_213FDC6D0(v52, v53);
  v54 = v63;
  *v32 = v69;
  *(v32 + 8) = v54;
  v55 = v64;
  *(v32 + 16) = v65;
  *(v32 + 24) = v55;
  *(v32 + 32) = v66;
  v56 = v70;
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_21432887C(v56, type metadata accessor for ReadReceipt);
}

uint64_t ReadReceipt.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908680, &qword_2146F5130);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v16 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142FDDC4();
  sub_2146DAA28();
  LOBYTE(v16) = 0;
  type metadata accessor for Metadata(0);
  sub_214328930(&qword_280B2E658, type metadata accessor for Metadata, a1_27);
  sub_2146DA388();
  if (v2)
  {
    return (*(v6 + 8))(v8, v5);
  }

  Receipt = type metadata accessor for ReadReceipt(0);
  if (*(v3 + *(Receipt + 20) + 16))
  {
    v10 = Receipt;
    *&v16 = *(v3 + *(Receipt + 20) + 16);
    v17 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C904F20, &qword_2146EE8A0);
    sub_2142E1F00();
    sub_2146DA388();
    v11 = v3 + v10[6];
    v12 = *(v11 + 24);
    if (v12 != 1)
    {
      *&v16 = *(v11 + 16);
      *(&v16 + 1) = v12;
      v17 = 3;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
      sub_214045AC0();
      sub_2146DA388();
      v16 = *(v3 + v10[7]);
      v17 = 4;
      sub_2146DA388();
      v13 = (v3 + v10[8]);
      v14 = *v13;
      LOBYTE(v13) = *(v13 + 8);
      *&v16 = v14;
      BYTE8(v16) = v13;
      v17 = 5;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9056B8, &qword_2146F3D20);
      sub_2142E2204();
      sub_2146DA388();
      return (*(v6 + 8))(v8, v5);
    }
  }

  result = sub_2146DA018();
  __break(1u);
  return result;
}

uint64_t sub_2141A473C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x617461646174656DLL && a2 == 0xE800000000000000)
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

uint64_t sub_2141A47C4(uint64_t a1)
{
  v2 = sub_2142FDE18();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2141A4800(uint64_t a1)
{
  v2 = sub_2142FDE18();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2141A483C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v14 = a2;
  v4 = type metadata accessor for Metadata(0);
  MEMORY[0x28223BE20](v4);
  v15 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908688, &qword_2146F5138);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v13 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142FDE18();
  sub_2146DAA08();
  if (!v2)
  {
    v10 = v14;
    sub_214328930(&qword_280B2E650, type metadata accessor for Metadata, byte_2146FB080);
    v11 = v15;
    sub_2146DA1C8();
    (*(v7 + 8))(v9, v6);
    sub_214328704(v11, v10, type metadata accessor for Metadata);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_2141A4A48(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908698, &qword_2146F5140);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142FDE18();
  sub_2146DAA28();
  type metadata accessor for Metadata(0);
  sub_214328930(&qword_280B2E658, type metadata accessor for Metadata, a1_27);
  sub_2146DA388();
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_2141A4BD8(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908698, &qword_2146F5140);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142FDE18();
  sub_2146DAA28();
  type metadata accessor for Metadata(0);
  sub_214328930(&qword_280B2E658, type metadata accessor for Metadata, a1_27);
  sub_2146DA388();
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_2141A4D50@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, __int128 *a5@<X4>, __int128 *a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, unsigned __int8 a11, __int128 *a12)
{
  *&v65 = a1;
  *(&v65 + 1) = a2;
  v73 = a11;
  v16 = *(a5 + 3);
  v54 = *(a5 + 2);
  v17 = *(a5 + 32);
  v56 = *(a6 + 3);
  v57 = *(a6 + 2);
  v55 = *(a6 + 32);
  v60 = *(a12 + 16);
  v18 = type metadata accessor for RelayGroupMutationMessage(0);
  v19 = v18[8];
  v20 = sub_2146D8B88();
  v62 = *(v20 - 8);
  v63 = v20;
  v52 = a12[1];
  v53 = *a12;
  v50 = *a5;
  v51 = *a6;
  v64 = a7;
  (*(v62 + 16))(a9 + v19, a7);
  sub_21461A82C(&v69);
  v21 = v70;
  v22 = v71;
  LOBYTE(v19) = v72;
  sub_21461AA54(v67);
  v23 = v68;
  *a9 = v69;
  *(a9 + 16) = v21;
  *(a9 + 24) = v22;
  *(a9 + 32) = v19;
  *(a9 + 40) = a3;
  *(a9 + 48) = a4;
  *(a9 + 56) = v50;
  *(a9 + 72) = v54;
  *(a9 + 80) = v16;
  *(a9 + 88) = v17;
  *(a9 + 96) = v51;
  *(a9 + 112) = v57;
  *(a9 + 120) = v56;
  *(a9 + 128) = v55;
  v24 = a9 + v18[9];
  v25 = v67[1];
  *v24 = v67[0];
  *(v24 + 16) = v25;
  *(v24 + 32) = v23;
  *(a9 + v18[10]) = v73;
  v26 = a9 + v18[11];
  *v26 = v53;
  *(v26 + 16) = v52;
  *(v26 + 32) = v60;
  v28 = *a9;
  v27 = *(a9 + 8);
  v30 = *(a9 + 16);
  v29 = *(a9 + 24);
  LODWORD(v26) = *(a9 + 32);
  v67[0] = v65;
  v73 = v26;
  v74 = v26;
  *&v69 = 0xD000000000000020;
  *(&v69 + 1) = 0x800000021478F780;
  v70 = 0xD00000000000001CLL;
  v71 = 0x800000021478A360;

  sub_213FDC9D0(v30, v29);
  v31 = v28(v67, &v74, &v69);
  if (v61)
  {

LABEL_6:
    (*(v62 + 8))(v64, v63);
    v41 = *(a9 + 16);
    v42 = *(a9 + 24);

    sub_213FDC6D0(v41, v42);
    *a9 = v28;
    *(a9 + 8) = v27;
    *(a9 + 16) = v30;
    *(a9 + 24) = v29;
    *(a9 + 32) = v73;
    return sub_21432887C(a9, type metadata accessor for RelayGroupMutationMessage);
  }

  if ((v31 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v40 = 0xD000000000000020;
    v40[1] = 0x800000021478F780;
    v40[2] = 0xD00000000000001CLL;
    v40[3] = 0x800000021478A360;
    swift_willThrow();

    goto LABEL_6;
  }

  sub_213FDC6D0(v30, v29);

  v32 = *(a9 + 16);
  v33 = *(a9 + 24);

  sub_213FDC6D0(v32, v33);
  *a9 = v28;
  *(a9 + 8) = v27;
  *(a9 + 16) = v65;
  *(a9 + 32) = v73;
  v35 = *v24;
  v34 = *(v24 + 8);
  v36 = *(v24 + 16);
  v37 = *(v24 + 24);
  v38 = *(v24 + 32);
  *&v67[0] = a8;
  *(&v67[0] + 1) = a10;
  v66 = v38;
  v74 = v38;
  *&v69 = 0xD00000000000002DLL;
  *(&v69 + 1) = 0x800000021478F7B0;
  v70 = 0xD00000000000001CLL;
  v71 = 0x800000021478A360;

  sub_213FDC9D0(v36, v37);
  v39 = v35(v67, &v74, &v69);
  if ((v39 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v46 = 0xD00000000000002DLL;
    v46[1] = 0x800000021478F7B0;
    v46[2] = 0xD00000000000001CLL;
    v46[3] = 0x800000021478A360;
    swift_willThrow();

    (*(v62 + 8))(v64, v63);
    v47 = *(v24 + 16);
    v48 = *(v24 + 24);

    sub_213FDC6D0(v47, v48);
    *v24 = v35;
    *(v24 + 8) = v34;
    *(v24 + 16) = v36;
    *(v24 + 24) = v37;
    *(v24 + 32) = v66;
    return sub_21432887C(a9, type metadata accessor for RelayGroupMutationMessage);
  }

  sub_213FDC6D0(v36, v37);

  (*(v62 + 8))(v64, v63);
  v44 = *(v24 + 16);
  v45 = *(v24 + 24);

  result = sub_213FDC6D0(v44, v45);
  *v24 = v35;
  *(v24 + 8) = v34;
  *(v24 + 16) = a8;
  *(v24 + 24) = a10;
  *(v24 + 32) = v66;
  return result;
}

uint64_t sub_2141A5244()
{
  v1 = *v0;
  v2 = 0x7265646E6573;
  v3 = 0x654D6D6F7266;
  if (v1 != 6)
  {
    v3 = 0x6E6F69746174756DLL;
  }

  v4 = 1684632935;
  if (v1 != 4)
  {
    v4 = 0xD000000000000013;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 0x444970756F7267;
  if (v1 != 2)
  {
    v5 = 0x6C616E696769726FLL;
  }

  if (*v0)
  {
    v2 = 0x65636976726573;
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

uint64_t sub_2141A5340@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_21436F544(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_2141A5368(uint64_t a1)
{
  v2 = sub_2142FDE6C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2141A53A4(uint64_t a1)
{
  v2 = sub_2142FDE6C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2141A53E0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v92 = a2;
  v3 = sub_2146D8B88();
  v93 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = &v71[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9086A0, &qword_2146F5148);
  v94 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v71[-v7];
  v9 = type metadata accessor for RelayGroupMutationMessage(0);
  MEMORY[0x28223BE20](v9);
  v11 = &v71[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = a1[3];
  v96 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v12);
  sub_2142FDE6C();
  v13 = v95;
  sub_2146DAA08();
  if (v13)
  {
    return __swift_destroy_boxed_opaque_existential_1(v96);
  }

  v89 = v9;
  v90 = v3;
  v95 = v11;
  v91 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
  LOBYTE(v97[0]) = 0;
  sub_2142E12FC();
  sub_2146DA1C8();
  v14 = v99;
  LOBYTE(v99) = 1;
  v15 = sub_2146DA168();
  v17 = v16;
  v87 = v15;
  v88 = *(&v14 + 1);
  LOBYTE(v97[0]) = 2;
  sub_2142FDEC0();
  sub_2146DA1C8();
  v85 = v17;
  v18 = *(&v99 + 1);
  v84 = v99;
  v86 = *(&v100 + 1);
  v83 = v100;
  LODWORD(v82) = v101;
  LOBYTE(v97[0]) = 3;
  sub_2146DA1C8();
  v80 = v18;
  v79 = __PAIR128__(*(&v99 + 1), v14);
  v78 = v99;
  v81 = *(&v100 + 1);
  v77 = v100;
  v102 = v101;
  LOBYTE(v99) = 4;
  sub_214328930(&qword_280B35350, MEMORY[0x277CC95F0], MEMORY[0x277CC9618]);
  sub_2146DA1C8();
  LOBYTE(v97[0]) = 5;
  sub_2146DA1C8();
  v21 = *(&v99 + 1);
  v20 = v99;
  LOBYTE(v99) = 6;
  v22 = sub_2146DA178();
  v23 = v93;
  v24 = v90;
  v76 = __PAIR128__(v21, v20);
  LOBYTE(v21) = v22;
  LOBYTE(v97[0]) = 7;
  sub_2142FDF14();
  sub_2146DA1C8();
  v75 = v101;
  v72 = v21 & 1;
  v74 = v100;
  v73 = v99;
  v25 = v89;
  v26 = v95;
  (*(v23 + 16))(&v95[v89[8]], v91, v24);
  sub_21461A82C(&v99);
  v27 = v100;
  LOBYTE(v20) = v101;
  sub_21461AA54(v97);
  v28 = v98;
  *v26 = v99;
  *(v26 + 16) = v27;
  *(v26 + 32) = v20;
  v29 = v85;
  *(v26 + 40) = v87;
  *(v26 + 48) = v29;
  v30 = v80;
  *(v26 + 56) = v84;
  *(v26 + 64) = v30;
  v31 = v86;
  *(v26 + 72) = v83;
  *(v26 + 80) = v31;
  *(v26 + 88) = v82;
  v32 = *(&v79 + 1);
  *(v26 + 96) = v78;
  *(v26 + 104) = v32;
  v33 = v81;
  *(v26 + 112) = v77;
  *(v26 + 120) = v33;
  *(v26 + 128) = v102;
  v34 = v26 + v25[9];
  v35 = v97[1];
  *v34 = v97[0];
  *(v34 + 16) = v35;
  *(v34 + 32) = v28;
  *(v26 + v25[10]) = v72;
  v36 = v26 + v25[11];
  v37 = v74;
  *v36 = v73;
  *(v36 + 16) = v37;
  *(v36 + 32) = v75;
  v39 = *v26;
  v38 = *(v26 + 8);
  v40 = *(v26 + 16);
  v41 = *(v26 + 24);
  LODWORD(v33) = *(v26 + 32);
  *&v97[0] = v79;
  *(&v97[0] + 1) = v88;
  LODWORD(v87) = v33;
  v103 = v33;
  *&v99 = 0xD000000000000020;
  *(&v99 + 1) = 0x800000021478F780;
  v84 = 0x800000021478F780;
  *&v100 = 0xD00000000000001CLL;
  *(&v100 + 1) = 0x800000021478A360;
  v83 = 0x800000021478A360;

  v86 = v40;
  v85 = v41;
  sub_213FDC9D0(v40, v41);
  v42 = v38;
  v89 = v39;
  v43 = (v39)(v97, &v103, &v99);
  v44 = v84;
  v45 = v83;
  v82 = v6;
  if (v43)
  {
    v46 = v34;
    sub_213FDC6D0(v86, v85);

    v47 = v95;
    v48 = *(v95 + 2);
    v49 = *(v95 + 3);

    sub_213FDC6D0(v48, v49);
    *v47 = v89;
    *(v47 + 8) = v42;
    v50 = v88;
    *(v47 + 16) = v79;
    *(v47 + 24) = v50;
    *(v47 + 32) = v87;
    v52 = *v46;
    v51 = *(v46 + 8);
    v54 = *(v46 + 16);
    v53 = *(v46 + 24);
    v55 = *(v46 + 32);
    v97[0] = v76;
    LODWORD(v89) = v55;
    v103 = v55;
    *&v99 = 0xD00000000000002DLL;
    *(&v99 + 1) = 0x800000021478F7B0;
    *&v100 = 0xD00000000000001CLL;
    *(&v100 + 1) = v45;

    v88 = v53;
    sub_213FDC9D0(v54, v53);
    v56 = v52;
    v57 = v52(v97, &v103, &v99);
    if (v57)
    {
      sub_213FDC6D0(v54, v88);

      (*(v93 + 8))(v91, v90);
      (*(v94 + 8))(v8, v82);
      v64 = *(v46 + 16);
      v65 = *(v46 + 24);

      sub_213FDC6D0(v64, v65);
      *v46 = v56;
      *(v46 + 8) = v51;
      v66 = *(&v76 + 1);
      *(v46 + 16) = v76;
      *(v46 + 24) = v66;
      *(v46 + 32) = v89;
      sub_214328704(v95, v92, type metadata accessor for RelayGroupMutationMessage);
      return __swift_destroy_boxed_opaque_existential_1(v96);
    }

    sub_214031C4C();
    swift_allocError();
    *v67 = 0xD00000000000002DLL;
    v67[1] = 0x800000021478F7B0;
    v67[2] = 0xD00000000000001CLL;
    v67[3] = v45;
    swift_willThrow();

    (*(v93 + 8))(v91, v90);
    (*(v94 + 8))(v8, v82);
    v68 = *(v46 + 16);
    v69 = *(v46 + 24);

    sub_213FDC6D0(v68, v69);
    *v46 = v56;
    *(v46 + 8) = v51;
    v70 = v88;
    *(v46 + 16) = v54;
    *(v46 + 24) = v70;
    *(v46 + 32) = v89;
    v60 = v95;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v58 = 0xD000000000000020;
    v58[1] = v44;
    v58[2] = 0xD00000000000001CLL;
    v58[3] = v45;
    swift_willThrow();

    v59 = v82;
    v60 = v95;
    (*(v93 + 8))(v91, v90);
    (*(v94 + 8))(v8, v59);
    v61 = *(v60 + 16);
    v62 = *(v60 + 24);

    sub_213FDC6D0(v61, v62);
    *v60 = v89;
    *(v60 + 8) = v42;
    v63 = v85;
    *(v60 + 16) = v86;
    *(v60 + 24) = v63;
    *(v60 + 32) = v87;
  }

  __swift_destroy_boxed_opaque_existential_1(v96);
  return sub_21432887C(v60, type metadata accessor for RelayGroupMutationMessage);
}

uint64_t sub_2141A6030(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9086C0, &qword_2146F5150);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v28 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142FDE6C();
  sub_2146DAA28();
  v9 = *(v3 + 24);
  if (v9 != 1)
  {
    v29 = *(v3 + 16);
    v30 = v9;
    v35 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
    sub_214045AC0();
    sub_2146DA388();
    if (v2)
    {
      return (*(v6 + 8))(v8, v5);
    }

    LOBYTE(v29) = 1;
    sub_2146DA328();
    v10 = *(v3 + 64);
    v11 = *(v3 + 72);
    v12 = *(v3 + 80);
    v13 = *(v3 + 88);
    v29 = *(v3 + 56);
    v30 = v10;
    v31 = v11;
    v32 = v12;
    v33 = v13;
    v35 = 2;
    sub_2142FDF68();

    sub_2146DA388();

    v14 = *(v3 + 104);
    v16 = *(v3 + 112);
    v15 = *(v3 + 120);
    v17 = *(v3 + 128);
    v29 = *(v3 + 96);
    v30 = v14;
    v31 = v16;
    v32 = v15;
    v33 = v17;
    v35 = 3;

    sub_2146DA388();

    v28 = type metadata accessor for RelayGroupMutationMessage(0);
    LOBYTE(v29) = 4;
    sub_2146D8B88();
    sub_214328930(&qword_280B34D20, MEMORY[0x277CC95F0], MEMORY[0x277CC95F8]);
    sub_2146DA388();
    v19 = v28;
    v20 = v3 + *(v28 + 36);
    v21 = *(v20 + 24);
    if (v21 != 1)
    {
      v29 = *(v20 + 16);
      v30 = v21;
      v35 = 5;
      sub_2146DA388();
      LOBYTE(v29) = 6;
      sub_2146DA338();
      v22 = v3 + *(v19 + 44);
      v23 = *(v22 + 8);
      v24 = *(v22 + 16);
      v25 = *(v22 + 24);
      v26 = *(v22 + 33);
      v27 = *(v22 + 32);
      v29 = *v22;
      v30 = v23;
      v31 = v24;
      v32 = v25;
      v33 = v27;
      v34 = v26;
      v35 = 7;
      sub_2142FDFBC(v29, v23, v24, v25, v27, v26);
      sub_2142FDFFC();
      sub_2146DA388();
      sub_2142FE050(v29, v30, v31, v32, v33, v34);
      return (*(v6 + 8))(v8, v5);
    }
  }

  result = sub_2146DA018();
  __break(1u);
  return result;
}

__n128 sub_2141A64C0@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 32);
  result = *a1;
  v4 = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 16) = v4;
  *(a2 + 32) = v2;
  return result;
}

uint64_t sub_2141A64F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x4E64657461647075 && a2 == 0xEB00000000656D61)
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

uint64_t sub_2141A6580(uint64_t a1)
{
  v2 = sub_2142FE090();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2141A65BC(uint64_t a1)
{
  v2 = sub_2142FE090();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2141A65F8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9086D8, &qword_2146F5158);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v12 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142FE090();
  sub_2146DAA08();
  if (!v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9086E8, &qword_2146F5160);
    sub_2142FE0E4();
    sub_2146DA1C8();
    (*(v6 + 8))(v8, v5);
    v9 = v13;
    v10 = v12[1];
    *a2 = v12[0];
    *(a2 + 16) = v10;
    *(a2 + 32) = v9;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_2141A6784(void *a1)
{
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908700, &qword_2146F5168);
  v20 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v4 = &v13 - v3;
  v5 = *v1;
  v6 = *(v1 + 8);
  v7 = *(v1 + 16);
  v8 = *(v1 + 24);
  v9 = a1[3];
  v13 = a1[4];
  v10 = *(v1 + 32);
  __swift_project_boxed_opaque_existential_1(a1, v9);
  sub_21431C5DC(v5, v6, v7, v8);
  sub_2142FE090();
  sub_2146DAA28();
  v15 = v5;
  v16 = v6;
  v17 = v7;
  v18 = v8;
  v19 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9086E8, &qword_2146F5160);
  sub_2142FE1BC();
  v11 = v14;
  sub_2146DA388();
  sub_21431E10C(v15, v16, v17, v18);
  return (*(v20 + 8))(v4, v11);
}

uint64_t sub_2141A6958@<X0>(unint64_t a1@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X8>)
{
  sub_21461AF7C(&v32);
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
  v32 = 0xD000000000000026;
  v33 = 0x800000021478F7E0;
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
    return sub_2142FE294(&v32);
  }

  v19 = a2;
  if ((v12 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v16 = 0xD000000000000026;
    v16[1] = 0x800000021478F7E0;
    v16[2] = 0xD00000000000001CLL;
    v16[3] = 0x800000021478A360;
    swift_willThrow();

    goto LABEL_6;
  }

  v30 = a3;
  v31 = a4;
  v13 = v24;
  v44 = v24;
  v32 = 0xD000000000000024;
  v33 = 0x800000021478F810;
  v34 = 0xD00000000000001CLL;
  v35 = 0x800000021478A360;

  v14 = v26;
  v15 = v26(&v30, &v44, &v32);
  if ((v15 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v18 = 0xD000000000000024;
    v18[1] = 0x800000021478F810;
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

uint64_t sub_2141A6CD8()
{
  if (*v0)
  {
    return 0x44496D657469;
  }

  else
  {
    return 0x4449656C646E6168;
  }
}

uint64_t sub_2141A6D10@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x4449656C646E6168 && a2 == 0xE800000000000000;
  if (v6 || (sub_2146DA6A8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x44496D657469 && a2 == 0xE600000000000000)
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

uint64_t sub_2141A6DE8(uint64_t a1)
{
  v2 = sub_2142FE2E8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2141A6E24(uint64_t a1)
{
  v2 = sub_2142FE2E8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2141A6E60@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908718, &qword_2146F5170);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v34 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142FE2E8();
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
  sub_21461AF7C(&v53);
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
  v53 = 0xD000000000000026;
  v54 = 0x800000021478F7E0;
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
    v53 = 0xD000000000000024;
    v54 = 0x800000021478F810;
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
      sub_2142FE33C(&v48, &v53);
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
      return sub_2142FE294(&v53);
    }

    sub_214031C4C();
    swift_allocError();
    *v33 = 0xD000000000000024;
    v33[1] = 0x800000021478F810;
    v33[2] = 0xD00000000000001CLL;
    v33[3] = 0x800000021478A360;
    swift_willThrow();

    v22 = v34;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v21 = 0xD000000000000026;
    v21[1] = 0x800000021478F7E0;
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
  return sub_2142FE294(&v53);
}

uint64_t sub_2141A75A0()
{
  if (*v0)
  {
    return 0xD000000000000013;
  }

  else
  {
    return 1701869940;
  }
}

uint64_t sub_2141A75D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1701869940 && a2 == 0xE400000000000000;
  if (v5 || (sub_2146DA6A8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000013 && 0x8000000214795600 == a2)
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

uint64_t sub_2141A76BC(uint64_t a1)
{
  v2 = sub_2142FE398();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2141A76F8(uint64_t a1)
{
  v2 = sub_2142FE398();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2141A7734@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908730, &qword_2146F5180);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v12 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142FE398();
  sub_2146DAA08();
  if (!v2)
  {
    v14 = 0;
    sub_2142FE3EC();
    sub_2146DA1C8();
    v9 = v15;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908748, &qword_2146F5188);
    v13 = 1;
    sub_2142FE440();
    sub_2146DA1C8();
    (*(v6 + 8))(v8, v5);
    v10 = v12[1];
    *a2 = v9;
    *(a2 + 8) = v10;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_2141A7920(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908760, &qword_2146F5190);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v10 - v6;
  v8 = *v1;
  v10[0] = *(v1 + 1);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142FE398();
  sub_2146DAA28();
  v13 = v8;
  v12 = 0;
  sub_2142FE518();
  sub_2146DA388();
  if (!v2)
  {
    v10[1] = v10[0];
    v11 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908748, &qword_2146F5188);
    sub_2142FE56C();
    sub_2146DA388();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_2141A7B04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, char a12, char a13, char a14, char a15, char a16, char a17, char a18)
{
  v73 = a2;
  v58 = *a3;
  v20 = type metadata accessor for RelayReachabilityContext(0);
  v63 = a6;
  sub_213FB2E54(a6, a9 + v20[7], &unk_27C904F30, &unk_2146EFA20);
  sub_21463839C(&v69);
  v21 = v70;
  v22 = v71;
  v23 = v72;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  v25 = swift_initStackObject();
  *(v25 + 16) = xmmword_2146E9BF0;
  *(v25 + 32) = sub_21469B388();
  v26 = sub_2142E091C(v25, &qword_27C903F20, &unk_2146E9D20, sub_21438ED7C, sub_21438F6FC);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130C0, &unk_2146EAA60);
  v27 = swift_allocObject();
  v28 = swift_allocObject();
  *(v28 + 16) = v26;
  *(v27 + 16) = sub_21403254C;
  *(v27 + 24) = v28;
  *(inited + 32) = v27;
  sub_214042A28(inited, v67);
  *a9 = v69;
  v29 = v67[1];
  *(a9 + 40) = v67[0];
  v30 = v68;
  *(a9 + 16) = v21;
  *(a9 + 24) = v22;
  *(a9 + 32) = v23;
  *(a9 + 33) = v58;
  *(a9 + 56) = v29;
  *(a9 + 72) = v30;
  v31 = (a9 + v20[8]);
  *v31 = a7;
  v31[1] = a8;
  v32 = (a9 + v20[9]);
  *v32 = a10;
  v32[1] = a11;
  *(a9 + v20[10]) = a12;
  *(a9 + v20[11]) = a13;
  *(a9 + v20[12]) = a14;
  *(a9 + v20[13]) = a15;
  *(a9 + v20[14]) = a16;
  *(a9 + v20[15]) = a17;
  *(a9 + v20[16]) = a18;
  v34 = *a9;
  v33 = *(a9 + 8);
  v36 = *(a9 + 16);
  v35 = *(a9 + 24);
  v37 = *(a9 + 32);
  *&v67[0] = a1;
  *(&v67[0] + 1) = v73;
  v61 = v37;
  v66 = v37;
  *&v69 = 0xD000000000000027;
  *(&v69 + 1) = 0x800000021478F840;
  v70 = 0xD00000000000001CLL;
  v71 = 0x800000021478A360;

  sub_213FDC9D0(v36, v35);
  v38 = v34(v67, &v66, &v69);
  if (v62)
  {

LABEL_6:

    sub_213FB2DF4(v63, &unk_27C904F30, &unk_2146EFA20);
    v49 = *(a9 + 16);
    v50 = *(a9 + 24);

    sub_213FDC6D0(v49, v50);
    *a9 = v34;
    *(a9 + 8) = v33;
    *(a9 + 16) = v36;
    *(a9 + 24) = v35;
    *(a9 + 32) = v61;
    return sub_21432887C(a9, type metadata accessor for RelayReachabilityContext);
  }

  if ((v38 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v48 = 0xD000000000000027;
    v48[1] = 0x800000021478F840;
    v48[2] = 0xD00000000000001CLL;
    v48[3] = 0x800000021478A360;
    swift_willThrow();

    goto LABEL_6;
  }

  sub_213FDC6D0(v36, v35);

  v39 = *(a9 + 16);
  v40 = *(a9 + 24);

  sub_213FDC6D0(v39, v40);
  *a9 = v34;
  *(a9 + 8) = v33;
  v41 = v73;
  *(a9 + 16) = a1;
  *(a9 + 24) = v41;
  *(a9 + 32) = v61;
  v43 = *(a9 + 40);
  v42 = *(a9 + 48);
  v44 = *(a9 + 56);
  v45 = *(a9 + 64);
  v46 = *(a9 + 72);
  *&v67[0] = a4;
  *(&v67[0] + 1) = a5;
  LODWORD(v73) = v46;
  v66 = v46;
  *&v69 = 0xD000000000000032;
  *(&v69 + 1) = 0x800000021478F870;
  v70 = 0xD00000000000001CLL;
  v71 = 0x800000021478A360;

  sub_213FDC9D0(v44, v45);
  v47 = v43(v67, &v66, &v69);
  if ((v47 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v54 = 0xD000000000000032;
    v54[1] = 0x800000021478F870;
    v54[2] = 0xD00000000000001CLL;
    v54[3] = 0x800000021478A360;
    swift_willThrow();

    sub_213FB2DF4(v63, &unk_27C904F30, &unk_2146EFA20);
    v55 = *(a9 + 56);
    v56 = *(a9 + 64);

    sub_213FDC6D0(v55, v56);
    *(a9 + 40) = v43;
    *(a9 + 48) = v42;
    *(a9 + 56) = v44;
    *(a9 + 64) = v45;
    *(a9 + 72) = v73;
    return sub_21432887C(a9, type metadata accessor for RelayReachabilityContext);
  }

  sub_213FDC6D0(v44, v45);

  sub_213FB2DF4(v63, &unk_27C904F30, &unk_2146EFA20);
  v52 = *(a9 + 56);
  v53 = *(a9 + 64);

  result = sub_213FDC6D0(v52, v53);
  *(a9 + 40) = v43;
  *(a9 + 48) = v42;
  *(a9 + 56) = a4;
  *(a9 + 64) = a5;
  *(a9 + 72) = v73;
  return result;
}

unint64_t sub_2141A80C4(char a1)
{
  result = 0x6E65644974616863;
  switch(a1)
  {
    case 1:
      result = 0x6C79745374616863;
      break;
    case 2:
    case 6:
      result = 0xD000000000000019;
      break;
    case 3:
      result = 0xD000000000000018;
      break;
    case 4:
      result = 0xD000000000000013;
      break;
    case 5:
      result = 0xD000000000000014;
      break;
    case 7:
      result = 0xD000000000000016;
      break;
    case 8:
      result = 0xD00000000000001ELL;
      break;
    case 9:
      result = 0x534D4D6563726F66;
      break;
    case 10:
      result = 0xD000000000000018;
      break;
    case 11:
      result = 0xD000000000000015;
      break;
    case 12:
      result = 0xD000000000000010;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_2141A8264@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_21436F7E0(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_2141A828C(uint64_t a1)
{
  v2 = sub_2142FE644();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2141A82C8(uint64_t a1)
{
  v2 = sub_2142FE644();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2141A8304@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v93 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C904F30, &unk_2146EFA20);
  MEMORY[0x28223BE20](v3);
  v5 = &v73 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908780, &qword_2146F5198);
  v94 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v73 - v7;
  v9 = type metadata accessor for RelayReachabilityContext(0);
  MEMORY[0x28223BE20](v9);
  v11 = &v73 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = a1[3];
  v103 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v12);
  sub_2142FE644();
  v13 = v95;
  sub_2146DAA08();
  if (v13)
  {
    return __swift_destroy_boxed_opaque_existential_1(v103);
  }

  v91 = v9;
  v92 = v11;
  v95 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
  LOBYTE(v97[0]) = 0;
  sub_2142E12FC();
  v14 = v8;
  sub_2146DA1C8();
  v15 = v99;
  LOBYTE(v97[0]) = 1;
  sub_2142FE698();
  sub_2146DA1C8();
  v90 = *(&v15 + 1);
  v89 = v99;
  LOBYTE(v97[0]) = 2;
  sub_2146DA1C8();
  v88 = v15;
  v16 = *(&v99 + 1);
  v87 = v99;
  LOBYTE(v99) = 3;
  sub_2142EFBA8();
  sub_2146DA1C8();
  LOBYTE(v97[0]) = 4;
  sub_2146DA1C8();
  v86 = v99;
  LOBYTE(v97[0]) = 5;
  sub_2146DA1C8();
  v19 = *(&v99 + 1);
  v18 = v99;
  LOBYTE(v99) = 6;
  v84 = sub_2146DA178();
  v85 = __PAIR128__(v19, v18);
  LOBYTE(v99) = 7;
  LOBYTE(v18) = sub_2146DA178();
  v20 = v86;
  LOBYTE(v99) = 8;
  v83 = sub_2146DA178();
  v21 = v90;
  v82 = v16;
  LOBYTE(v99) = 9;
  v22 = v6;
  v23 = v14;
  v81 = sub_2146DA178();
  LOBYTE(v99) = 10;
  v80 = sub_2146DA178();
  LOBYTE(v99) = 11;
  v79 = sub_2146DA178();
  LOBYTE(v99) = 12;
  v77 = sub_2146DA178();
  v78 = 0;
  v24 = v91;
  v25 = v92;
  sub_213FB2E54(v95, v92 + *(v91 + 28), &unk_27C904F30, &unk_2146EFA20);
  sub_21463839C(&v99);
  v76 = v100;
  v75 = v101;
  v74 = v102;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  v73 = xmmword_2146E9BF0;
  *(inited + 16) = xmmword_2146E9BF0;
  v27 = swift_initStackObject();
  *(v27 + 16) = v73;
  *(v27 + 32) = sub_21469B388();
  *&v73 = sub_2142E091C(v27, &qword_27C903F20, &unk_2146E9D20, sub_21438ED7C, sub_21438F6FC);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130C0, &unk_2146EAA60);
  v28 = swift_allocObject();
  v29 = swift_allocObject();
  *(v29 + 16) = v73;
  *(v28 + 16) = sub_214032610;
  *(v28 + 24) = v29;
  *(inited + 32) = v28;
  sub_214042A28(inited, v97);
  *v25 = v99;
  v30 = v97[1];
  *(v25 + 5) = v97[0];
  v31 = v98;
  v32 = v75;
  v25[2] = v76;
  v25[3] = v32;
  *(v25 + 32) = v74;
  *(v25 + 33) = v89;
  *(v25 + 7) = v30;
  *(v25 + 72) = v31;
  v33 = (v25 + v24[8]);
  v34 = *(&v86 + 1);
  *v33 = v20;
  v33[1] = v34;
  v35 = (v25 + v24[9]);
  v36 = *(&v85 + 1);
  *v35 = v85;
  v35[1] = v36;
  *(v25 + v24[10]) = v84 & 1;
  *(v25 + v24[11]) = v18 & 1;
  *(v25 + v24[12]) = v83 & 1;
  *(v25 + v24[13]) = v81 & 1;
  *(v25 + v24[14]) = v80 & 1;
  *(v25 + v24[15]) = v79 & 1;
  *(v25 + v24[16]) = v77 & 1;
  v38 = *v25;
  v37 = v25[1];
  v40 = v25[2];
  v39 = v25[3];
  LODWORD(v36) = *(v25 + 32);
  *&v97[0] = v88;
  *(&v97[0] + 1) = v21;
  v89 = v36;
  v96 = v36;
  *&v99 = 0xD000000000000027;
  *(&v99 + 1) = 0x800000021478F840;
  v100 = 0xD00000000000001CLL;
  v101 = 0x800000021478A360;
  v91 = 0x800000021478A360;

  *(&v86 + 1) = v40;
  *&v86 = v39;
  sub_213FDC9D0(v40, v39);
  v41 = v78;
  v42 = v38;
  v43 = v38(v97, &v96, &v99);
  v78 = v41;
  if (v41)
  {

LABEL_10:

    sub_213FB2DF4(v95, &unk_27C904F30, &unk_2146EFA20);
    (*(v94 + 8))(v23, v22);
    v59 = v92;
    v60 = v92[2];
    v61 = v92[3];

    sub_213FDC6D0(v60, v61);
    *v59 = v38;
    v59[1] = v37;
    v62 = v86;
    v59[2] = *(&v86 + 1);
    v59[3] = v62;
    *(v59 + 32) = v89;
LABEL_11:
    __swift_destroy_boxed_opaque_existential_1(v103);
    return sub_21432887C(v92, type metadata accessor for RelayReachabilityContext);
  }

  if ((v43 & 1) == 0)
  {
    sub_214031C4C();
    v56 = swift_allocError();
    *v57 = 0xD000000000000027;
    v57[1] = 0x800000021478F840;
    v58 = v91;
    v57[2] = 0xD00000000000001CLL;
    v57[3] = v58;
    v78 = v56;
    swift_willThrow();
    goto LABEL_10;
  }

  sub_213FDC6D0(*(&v86 + 1), v86);
  v44 = v91;

  v45 = v92;
  v46 = v92[2];
  v47 = v92[3];

  sub_213FDC6D0(v46, v47);
  *v45 = v42;
  v45[1] = v37;
  v45[2] = v88;
  v45[3] = v21;
  *(v45 + 32) = v89;
  v49 = v45[5];
  v48 = v45[6];
  v51 = v45[7];
  v50 = v45[8];
  v52 = *(v45 + 72);
  *&v97[0] = v87;
  *(&v97[0] + 1) = v82;
  LODWORD(v90) = v52;
  v96 = v52;
  *&v99 = 0xD000000000000032;
  *(&v99 + 1) = 0x800000021478F870;
  v100 = 0xD00000000000001CLL;
  v101 = v44;

  sub_213FDC9D0(v51, v50);
  v53 = v78;
  v54 = v49;
  v55 = v49(v97, &v96, &v99);
  v78 = v53;
  if (v53)
  {

LABEL_15:

    sub_213FB2DF4(v95, &unk_27C904F30, &unk_2146EFA20);
    (*(v94 + 8))(v23, v22);
    v70 = v92;
    v71 = v92[7];
    v72 = v92[8];

    sub_213FDC6D0(v71, v72);
    v70[5] = v54;
    v70[6] = v48;
    v70[7] = v51;
    v70[8] = v50;
    *(v70 + 72) = v90;
    goto LABEL_11;
  }

  if ((v55 & 1) == 0)
  {
    sub_214031C4C();
    v67 = swift_allocError();
    *v68 = 0xD000000000000032;
    v68[1] = 0x800000021478F870;
    v69 = v91;
    v68[2] = 0xD00000000000001CLL;
    v68[3] = v69;
    v78 = v67;
    swift_willThrow();
    goto LABEL_15;
  }

  sub_213FDC6D0(v51, v50);

  sub_213FB2DF4(v95, &unk_27C904F30, &unk_2146EFA20);
  (*(v94 + 8))(v23, v22);
  v63 = v92;
  v64 = v92[7];
  v65 = v92[8];

  sub_213FDC6D0(v64, v65);
  v63[5] = v54;
  v63[6] = v48;
  v66 = v82;
  v63[7] = v87;
  v63[8] = v66;
  *(v63 + 72) = v90;
  sub_214328704(v63, v93, type metadata accessor for RelayReachabilityContext);
  return __swift_destroy_boxed_opaque_existential_1(v103);
}

uint64_t sub_2141A9160(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908798, &unk_2146F51A0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v13 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142FE644();
  sub_2146DAA28();
  v9 = *(v3 + 24);
  if (v9 != 1)
  {
    *&v15 = *(v3 + 16);
    *(&v15 + 1) = v9;
    v16 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
    sub_214045AC0();
    sub_2146DA388();
    if (v2)
    {
      return (*(v6 + 8))(v8, v5);
    }

    LOBYTE(v15) = *(v3 + 33);
    v16 = 1;
    sub_2142FE6EC();
    sub_2146DA388();
    v10 = *(v3 + 64);
    if (v10 != 1)
    {
      *&v15 = *(v3 + 56);
      *(&v15 + 1) = v10;
      v16 = 2;
      sub_2146DA388();
      v14 = type metadata accessor for RelayReachabilityContext(0);
      LOBYTE(v15) = 3;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C904F30, &unk_2146EFA20);
      sub_2142EFE18();
      sub_2146DA388();
      v11 = v14;
      v15 = *(v3 + *(v14 + 32));
      v16 = 4;
      sub_2146DA388();
      v15 = *(v3 + *(v11 + 36));
      v16 = 5;
      sub_2146DA388();
      LOBYTE(v15) = 6;
      sub_2146DA338();
      LOBYTE(v15) = 7;
      sub_2146DA338();
      LOBYTE(v15) = 8;
      sub_2146DA338();
      LOBYTE(v15) = 9;
      sub_2146DA338();
      LOBYTE(v15) = 10;
      sub_2146DA338();
      LOBYTE(v15) = 11;
      sub_2146DA338();
      LOBYTE(v15) = 12;
      sub_2146DA338();
      return (*(v6 + 8))(v8, v5);
    }
  }

  result = sub_2146DA018();
  __break(1u);
  return result;
}

uint64_t sub_2141A95EC@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v11 = type metadata accessor for RelayReachabilityRequest(0);
  v22 = a4;
  sub_2143287C0(a4, a5 + *(v11 + 24), type metadata accessor for RelayReachabilityContext);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  v13 = sub_21469B388();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904180, &qword_2146EAAE0);
  v14 = swift_allocObject();
  *(v14 + 16) = sub_2142FE740;
  *(v14 + 24) = v13;
  *(inited + 32) = v14;
  sub_2140433DC(inited, &v23);
  v16 = v23;
  v15 = v24;
  v17 = v25;
  v18 = v26;
  *a5 = v23;
  *(a5 + 8) = v15;
  *(a5 + 16) = v17;
  *(a5 + 24) = v18;
  *(a5 + 32) = a2;
  *(a5 + 40) = a3;
  v28 = a1;
  v27 = v18;
  v23 = 0xD000000000000020;
  v24 = 0x800000021478F8B0;
  v25 = 0xD00000000000001CLL;
  v26 = 0x800000021478A360;

  v19 = v16(&v28, &v27, &v23);
  if (v5)
  {
  }

  else
  {
    if (v19)
    {

      sub_21432887C(v22, type metadata accessor for RelayReachabilityContext);

      *a5 = v16;
      *(a5 + 8) = v15;
      *(a5 + 16) = a1;
      *(a5 + 24) = v18;
      return result;
    }

    sub_214031C4C();
    swift_allocError();
    *v21 = 0xD000000000000020;
    v21[1] = 0x800000021478F8B0;
    v21[2] = 0xD00000000000001CLL;
    v21[3] = 0x800000021478A360;
    swift_willThrow();
  }

  sub_21432887C(v22, type metadata accessor for RelayReachabilityContext);

  *a5 = v16;
  *(a5 + 8) = v15;
  *(a5 + 16) = v17;
  *(a5 + 24) = v18;
  return sub_21432887C(a5, type metadata accessor for RelayReachabilityRequest);
}

uint64_t sub_2141A9884()
{
  v1 = 0x4E65636976726573;
  if (*v0 != 1)
  {
    v1 = 0x747865746E6F63;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x73656C646E6168;
  }
}

uint64_t sub_2141A98E8@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_21436FBF4(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_2141A9910(uint64_t a1)
{
  v2 = sub_2142FE744();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2141A994C(uint64_t a1)
{
  v2 = sub_2142FE744();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2141A9988@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v34 = a2;
  v3 = type metadata accessor for RelayReachabilityContext(0);
  MEMORY[0x28223BE20](v3);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9087A8, &qword_2146F51B0);
  v35 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v30 - v7;
  v9 = type metadata accessor for RelayReachabilityRequest(0);
  MEMORY[0x28223BE20](v9);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = a1[3];
  v37 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v12);
  sub_2142FE744();
  v13 = v36;
  sub_2146DAA08();
  if (v13)
  {
    return __swift_destroy_boxed_opaque_existential_1(v37);
  }

  v36 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C904F20, &qword_2146EE8A0);
  LOBYTE(v43) = 0;
  sub_2142E15CC();
  sub_2146DA1C8();
  v14 = v8;
  v15 = v38;
  LOBYTE(v38) = 1;
  v31 = sub_2146DA168();
  v32 = v16;
  v33 = v15;
  LOBYTE(v38) = 2;
  sub_214328930(&qword_27C9087B8, type metadata accessor for RelayReachabilityContext, aY_81);
  v17 = v36;
  sub_2146DA1C8();
  v30 = v6;
  v19 = v11;
  sub_2143287C0(v17, &v11[*(v9 + 24)], type metadata accessor for RelayReachabilityContext);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  v21 = sub_21469B388();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904180, &qword_2146EAAE0);
  v22 = swift_allocObject();
  *(v22 + 16) = sub_21438F680;
  *(v22 + 24) = v21;
  *(inited + 32) = v22;
  sub_2140433DC(inited, &v38);
  v24 = v38;
  v23 = v39;
  v25 = v40;
  v26 = v41;
  *v19 = v38;
  *(v19 + 8) = v23;
  *(v19 + 16) = v25;
  *(v19 + 24) = v26;
  v27 = v32;
  *(v19 + 32) = v31;
  *(v19 + 40) = v27;
  v43 = v33;
  LODWORD(v32) = v26;
  v42 = v26;
  v38 = 0xD000000000000020;
  v39 = 0x800000021478F8B0;
  v40 = 0xD00000000000001CLL;
  v41 = 0x800000021478A360;

  if (v24(&v43, &v42, &v38))
  {

    sub_21432887C(v36, type metadata accessor for RelayReachabilityContext);
    (*(v35 + 8))(v14, v30);

    *v19 = v24;
    *(v19 + 8) = v23;
    v28 = v34;
    *(v19 + 16) = v33;
    *(v19 + 24) = v32;
    sub_214328704(v19, v28, type metadata accessor for RelayReachabilityRequest);
    return __swift_destroy_boxed_opaque_existential_1(v37);
  }

  sub_214031C4C();
  swift_allocError();
  *v29 = 0xD000000000000020;
  v29[1] = 0x800000021478F8B0;
  v29[2] = 0xD00000000000001CLL;
  v29[3] = 0x800000021478A360;
  swift_willThrow();

  sub_21432887C(v36, type metadata accessor for RelayReachabilityContext);
  (*(v35 + 8))(v14, v30);

  *v19 = v24;
  *(v19 + 8) = v23;
  *(v19 + 16) = v25;
  *(v19 + 24) = v32;
  __swift_destroy_boxed_opaque_existential_1(v37);
  return sub_21432887C(v19, type metadata accessor for RelayReachabilityRequest);
}

uint64_t sub_2141A9F50(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9087C0, &qword_2146F51B8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v10[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142FE744();
  sub_2146DAA28();
  if (*(v3 + 16))
  {
    v11 = *(v3 + 16);
    v10[7] = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C904F20, &qword_2146EE8A0);
    sub_2142E1F00();
    sub_2146DA388();
    if (!v2)
    {
      v10[6] = 1;
      sub_2146DA328();
      type metadata accessor for RelayReachabilityRequest(0);
      v10[5] = 2;
      type metadata accessor for RelayReachabilityContext(0);
      sub_214328930(&qword_27C9087C8, type metadata accessor for RelayReachabilityContext, byte_2146FBCD8);
      sub_2146DA388();
    }

    return (*(v6 + 8))(v8, v5);
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

uint64_t sub_2141AA210@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, int a6@<W5>, __int128 *a7@<X6>, const void *a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v40 = a6;
  sub_213FB2E54(a10, a9 + 640, &qword_27C9087D0, &qword_2146F51C0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  *(inited + 32) = sub_21469B388();
  sub_214042B80(inited, &v35);
  v18 = v35;
  v17 = v36;
  v19 = v37;
  v20 = v38;
  v21 = v39;
  *a9 = v35;
  *(a9 + 8) = v17;
  v30 = v19;
  *(a9 + 16) = v19;
  *(a9 + 24) = v20;
  *(a9 + 32) = v21;
  *(a9 + 40) = a3;
  *(a9 + 48) = a4;
  *(a9 + 56) = a5;
  *(a9 + 57) = v40;
  v22 = *a7;
  v23 = a7[1];
  v24 = a7[4];
  *(a9 + 112) = a7[3];
  *(a9 + 128) = v24;
  v25 = a7[2];
  v26 = v21;
  *(a9 + 80) = v23;
  *(a9 + 96) = v25;
  *(a9 + 64) = v22;
  memcpy((a9 + 144), a8, 0x1F0uLL);
  v34[0] = a1;
  v34[1] = a2;
  v41 = v26;
  v35 = 0xD000000000000026;
  v36 = 0x800000021478F8E0;
  v37 = 0xD00000000000001CLL;
  v38 = 0x800000021478A360;

  v27 = v18(v34, &v41, &v35);
  if (v33)
  {
  }

  else
  {
    if (v27)
    {

      sub_213FB2DF4(a10, &qword_27C9087D0, &qword_2146F51C0);

      *a9 = v18;
      *(a9 + 8) = v17;
      *(a9 + 16) = a1;
      *(a9 + 24) = a2;
      *(a9 + 32) = v26;
      return result;
    }

    sub_214031C4C();
    swift_allocError();
    *v29 = 0xD000000000000026;
    v29[1] = 0x800000021478F8E0;
    v29[2] = 0xD00000000000001CLL;
    v29[3] = 0x800000021478A360;
    swift_willThrow();
  }

  sub_213FB2DF4(a10, &qword_27C9087D0, &qword_2146F51C0);

  *a9 = v18;
  *(a9 + 8) = v17;
  *(a9 + 16) = v30;
  *(a9 + 24) = v20;
  *(a9 + 32) = v26;
  return sub_2142FE798(a9);
}

uint64_t sub_2141AA4B8()
{
  v1 = *v0;
  v2 = 0x4449656C646E6168;
  v3 = 0x666E49646E617262;
  if (v1 != 5)
  {
    v3 = 0x676F4C646E617262;
  }

  v4 = 0xD000000000000012;
  if (v1 != 3)
  {
    v4 = 0x6574736973726570;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x65636976726573;
  if (v1 != 1)
  {
    v5 = 0x6168636165527369;
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

uint64_t sub_2141AA5B4@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_21436FD10(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_2141AA5DC(uint64_t a1)
{
  v2 = sub_2142FE7EC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2141AA618(uint64_t a1)
{
  v2 = sub_2142FE7EC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2141AA654@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9087D8, &qword_2146F51C8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v24 - v7;
  v9 = a1[3];
  v52 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v9);
  sub_2142FE7EC();
  sub_2146DAA08();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(v52);
  }

  v31 = a2;
  v39[0] = 0;
  v10 = sub_2146DA168();
  v12 = v11;
  v30 = v10;
  v39[0] = 1;
  v13 = v5;
  v14 = v6;
  v15 = sub_2146DA168();
  v17 = v16;
  v39[0] = 2;
  v29 = sub_2146DA178();
  v39[0] = 3;
  LODWORD(v28) = sub_2146DA178();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9087E8, &qword_2146F51D0);
  v45 = 4;
  sub_2142FE840();
  sub_2146DA1C8();
  v42 = v48;
  v43 = v49;
  v44 = v50;
  v40 = v46;
  v41 = v47;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908800, &qword_2146F51D8);
  v38[503] = 5;
  sub_2142FE918();
  sub_2146DA1C8();
  memcpy(v38, v39, 0x1F0uLL);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9087D0, &qword_2146F51C0);
  LOBYTE(v34) = 6;
  sub_2142FE9F0();
  sub_2146DA1C8();
  v26 = v13;
  sub_213FB2E54(v37, &v51[40], &qword_27C9087D0, &qword_2146F51C0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_2146E9BF0;
  *(v19 + 32) = sub_21469B388();
  sub_214042B80(v19, &v34);
  v20 = *(&v34 + 1);
  v27 = v34;
  v21 = *(&v35 + 1);
  v51[0] = v34;
  v25 = v35;
  v51[1] = v35;
  LOBYTE(v51[2]) = v36;
  *(&v51[2] + 1) = v15;
  *&v51[3] = v17;
  BYTE8(v51[3]) = v29 & 1;
  BYTE9(v51[3]) = v28 & 1;
  v51[4] = v40;
  v51[7] = v43;
  v51[8] = v44;
  v51[5] = v41;
  v51[6] = v42;
  memcpy(&v51[9], v38, 0x1F0uLL);
  v33[0] = v30;
  v33[1] = v12;
  v29 = v36;
  v32 = v36;
  *&v34 = 0xD000000000000026;
  *(&v34 + 1) = 0x800000021478F8E0;
  *&v35 = 0xD00000000000001CLL;
  *(&v35 + 1) = 0x800000021478A360;
  v28 = v21;

  v22 = v27(v33, &v32, &v34);
  if (v22)
  {

    sub_213FB2DF4(v37, &qword_27C9087D0, &qword_2146F51C0);
    (*(v14 + 8))(v8, v26);

    *&v51[0] = v27;
    *(&v51[0] + 1) = v20;
    *&v51[1] = v30;
    *(&v51[1] + 1) = v12;
    LOBYTE(v51[2]) = v29;
    memcpy(v31, v51, 0x438uLL);
    return __swift_destroy_boxed_opaque_existential_1(v52);
  }

  sub_214031C4C();
  swift_allocError();
  *v23 = 0xD000000000000026;
  v23[1] = 0x800000021478F8E0;
  v23[2] = 0xD00000000000001CLL;
  v23[3] = 0x800000021478A360;
  swift_willThrow();

  sub_213FB2DF4(v37, &qword_27C9087D0, &qword_2146F51C0);
  (*(v14 + 8))(v8, v26);

  *&v51[0] = v27;
  *(&v51[0] + 1) = v20;
  *&v51[1] = v25;
  *(&v51[1] + 1) = v28;
  LOBYTE(v51[2]) = v29;
  __swift_destroy_boxed_opaque_existential_1(v52);
  return sub_2142FE798(v51);
}

uint64_t sub_2141AACE0(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908828, &qword_2146F51E0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v15[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142FE7EC();
  sub_2146DAA28();
  if (*(v3 + 24))
  {
    v19[0] = 0;

    sub_2146DA328();
    if (v2)
    {
      (*(v6 + 8))(v8, v5);
    }

    else
    {

      v19[0] = 1;
      sub_2146DA328();
      v19[0] = 2;
      sub_2146DA338();
      v30 = 3;
      sub_2146DA338();
      v10 = *(v3 + 96);
      v11 = *(v3 + 64);
      v26 = *(v3 + 80);
      v27 = v10;
      v12 = *(v3 + 96);
      v13 = *(v3 + 128);
      v28 = *(v3 + 112);
      v29 = v13;
      v14 = *(v3 + 64);
      v22 = v12;
      v23 = v28;
      v24 = *(v3 + 128);
      v25 = v14;
      v20 = v11;
      v21 = v26;
      v19[511] = 4;
      sub_213FB2E54(&v25, v19, &qword_27C9087E8, &qword_2146F51D0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9087E8, &qword_2146F51D0);
      sub_2142FEAC8();
      sub_2146DA388();
      v18[2] = v22;
      v18[3] = v23;
      v18[4] = v24;
      v18[0] = v20;
      v18[1] = v21;
      sub_213FB2DF4(v18, &qword_27C9087E8, &qword_2146F51D0);
      memcpy(v19, (v3 + 144), 0x1F0uLL);
      memcpy(v17, (v3 + 144), sizeof(v17));
      v16[503] = 5;
      sub_213FB2E54(v19, v16, &qword_27C908800, &qword_2146F51D8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908800, &qword_2146F51D8);
      sub_2142FEBA0();
      sub_2146DA388();
      memcpy(v16, v17, 0x1F0uLL);
      sub_213FB2DF4(v16, &qword_27C908800, &qword_2146F51D8);
      v15[7] = 6;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9087D0, &qword_2146F51C0);
      sub_2142FEC78();
      sub_2146DA388();
      return (*(v6 + 8))(v8, v5);
    }
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

uint64_t sub_2141AB170@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, char a6@<W5>, char a7@<W6>, uint64_t a8@<X8>)
{
  v8 = *a3;
  *a8 = result;
  *(a8 + 8) = a2;
  *(a8 + 16) = v8;
  *(a8 + 24) = a4;
  *(a8 + 32) = a5;
  *(a8 + 33) = a6;
  *(a8 + 34) = a7;
  return result;
}

uint64_t sub_2141AB190()
{
  v1 = *v0;
  v2 = 0x65636976726573;
  v3 = 0x6C616E69467369;
  v4 = 0x65526572416C6C61;
  if (v1 != 4)
  {
    v4 = 0x6B63656843646964;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x726F727265;
  if (v1 != 1)
  {
    v5 = 0x6552656C646E6168;
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

uint64_t sub_2141AB26C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_21436FF7C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_2141AB294(uint64_t a1)
{
  v2 = sub_2142FED50();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2141AB2D0(uint64_t a1)
{
  v2 = sub_2142FED50();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2141AB30C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908860, &qword_2146F51E8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v18 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142FED50();
  sub_2146DAA08();
  if (!v2)
  {
    v29 = 0;
    v9 = sub_2146DA168();
    v11 = v10;
    v21 = v9;
    v27 = 1;
    sub_2142FEDA4();
    sub_2146DA1C8();
    v12 = v28;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908878, &qword_2146F51F0);
    v26 = 2;
    sub_2142FEDF8();
    sub_2146DA1C8();
    v20 = v12;
    v14 = v22;
    v25 = 3;
    v19 = sub_2146DA178();
    v24 = 4;
    HIDWORD(v18) = sub_2146DA178();
    v23 = 5;
    v15 = sub_2146DA178();
    (*(v6 + 8))(v8, v5);
    v16 = v19 & 1;
    v17 = BYTE4(v18) & 1;
    *a2 = v21;
    *(a2 + 8) = v11;
    *(a2 + 16) = v20;
    *(a2 + 24) = v14;
    *(a2 + 32) = v16;
    *(a2 + 33) = v17;
    *(a2 + 34) = v15 & 1;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_2141AB600(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908890, &qword_2146F51F8);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v11 - v5;
  v13 = *(v1 + 16);
  v12 = *(v1 + 24);
  v7 = *(v1 + 32);
  v11[2] = *(v1 + 33);
  v11[3] = v7;
  v11[1] = *(v1 + 34);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142FED50();
  sub_2146DAA28();
  v22 = 0;
  v8 = v14;
  sub_2146DA328();
  if (!v8)
  {
    v9 = v12;
    v21 = v13;
    v20 = 1;
    sub_2142FEED0();
    sub_2146DA388();
    v15 = v9;
    v19 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908878, &qword_2146F51F0);
    sub_2142FEF24();
    sub_2146DA388();
    v18 = 3;
    sub_2146DA338();
    v17 = 4;
    sub_2146DA338();
    v16 = 5;
    sub_2146DA338();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_2141AB8B4@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2 = *(result + 8);
  v3 = *(result + 16);
  v4 = *(result + 24);
  v5 = *(result + 32);
  v6 = *(result + 33);
  v7 = *(result + 34);
  *a2 = *result;
  *(a2 + 8) = v2;
  *(a2 + 16) = v3;
  *(a2 + 24) = v4;
  *(a2 + 32) = v5;
  *(a2 + 33) = v6;
  *(a2 + 34) = v7;
  return result;
}

uint64_t sub_2141AB8E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x746C75736572 && a2 == 0xE600000000000000)
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

uint64_t sub_2141AB96C(uint64_t a1)
{
  v2 = sub_2142FEFFC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2141AB9A8(uint64_t a1)
{
  v2 = sub_2142FEFFC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2141AB9E4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9088B0, &qword_2146F5200);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v16 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142FEFFC();
  sub_2146DAA08();
  if (!v2)
  {
    sub_2142FF050();
    sub_2146DA1C8();
    (*(v6 + 8))(v8, v5);
    v9 = v16[2];
    v10 = v17;
    v11 = v18;
    v12 = v19;
    v13 = v20;
    v14 = v21;
    *a2 = v16[1];
    *(a2 + 8) = v9;
    *(a2 + 16) = v10;
    *(a2 + 24) = v11;
    *(a2 + 32) = v12;
    *(a2 + 33) = v13;
    *(a2 + 34) = v14;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_2141ABB7C(void *a1)
{
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9088C8, &qword_2146F5208);
  v3 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v5 = &v13 - v4;
  v6 = *v1;
  v7 = v1[1];
  v8 = *(v1 + 16);
  v9 = v1[3];
  v15 = *(v1 + 32);
  v16 = v8;
  v10 = *(v1 + 33);
  v13 = *(v1 + 34);
  v14 = v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142FEFFC();

  sub_2146DAA28();
  v18 = v6;
  v19 = v7;
  v20 = v16;
  v21 = v9;
  v22 = v15;
  v23 = v14;
  v24 = v13;
  sub_2142FF0A4();
  v11 = v17;
  sub_2146DA388();

  return (*(v3 + 8))(v5, v11);
}

void *sub_2141ABD60@<X0>(uint64_t a1@<X0>, const void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  sub_214328704(a1, a5, type metadata accessor for Metadata);
  v9 = type metadata accessor for RepositionStickerCommand(0);
  result = memcpy((a5 + *(v9 + 20)), a2, 0x139uLL);
  v11 = (a5 + *(v9 + 24));
  *v11 = a3;
  v11[1] = a4;
  return result;
}

unint64_t sub_2141ABDEC()
{
  v1 = 0x4D72656B63697473;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000018;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x617461646174656DLL;
  }
}

uint64_t sub_2141ABE58@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_21437018C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_2141ABE80(uint64_t a1)
{
  v2 = sub_2142FF0F8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2141ABEBC(uint64_t a1)
{
  v2 = sub_2142FF0F8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2141ABEF8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v21 = a2;
  v4 = type metadata accessor for Metadata(0);
  MEMORY[0x28223BE20](v4);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9088D8, &qword_2146F5210);
  v22 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v8 = &v20 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142FF0F8();
  v23 = v8;
  sub_2146DAA08();
  if (v2)
  {
    v19 = a1;
  }

  else
  {
    v20 = a1;
    v9 = v22;
    v26[0] = 0;
    sub_214328930(&qword_280B2E650, type metadata accessor for Metadata, byte_2146FB080);
    v10 = v23;
    sub_2146DA1C8();
    v26[343] = 1;
    sub_2142FF14C();
    sub_2146DA1C8();
    memcpy(v25, v26, sizeof(v25));
    v26[342] = 2;
    v12 = sub_2146DA168();
    v14 = v13;
    (*(v9 + 8))(v10, v24);
    v15 = v6;
    v16 = v21;
    sub_214328704(v15, v21, type metadata accessor for Metadata);
    v17 = type metadata accessor for RepositionStickerCommand(0);
    memcpy((v16 + *(v17 + 20)), v25, 0x139uLL);
    v18 = (v16 + *(v17 + 24));
    *v18 = v12;
    v18[1] = v14;
    v19 = v20;
  }

  return __swift_destroy_boxed_opaque_existential_1(v19);
}

uint64_t sub_2141AC234(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9088F0, &qword_2146F5218);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v12[-v7 - 8];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142FF0F8();
  sub_2146DAA28();
  v14[343] = 0;
  type metadata accessor for Metadata(0);
  sub_214328930(&qword_280B2E658, type metadata accessor for Metadata, a1_27);
  sub_2146DA388();
  if (!v2)
  {
    v9 = *(type metadata accessor for RepositionStickerCommand(0) + 20);
    memcpy(v14, (v3 + v9), 0x139uLL);
    memcpy(v13, (v3 + v9), sizeof(v13));
    v14[342] = 1;
    sub_2142E371C(v14, v12);
    sub_2142FF1A0();
    sub_2146DA388();
    memcpy(v12, v13, 0x139uLL);
    sub_2142E34C8(v12);
    v14[341] = 2;
    sub_2146DA328();
  }

  return (*(v6 + 8))(v8, v5);
}

void *MBDRichCard.init(with:media:title:cardDescription:chipList:)@<X0>(uint64_t a1@<X0>, const void *a2@<X1>, uint64_t (*a3)(void, void, void)@<X2>, uint64_t a4@<X3>, uint64_t (*a5)(void, void, void)@<X4>, uint64_t a6@<X5>, uint64_t *a7@<X6>, uint64_t a8@<X8>)
{
  v11 = *(a1 + 16);
  __src[0] = *a1;
  __src[1] = v11;
  __src[2] = *(a1 + 32);
  LOBYTE(__src[3]) = *(a1 + 48);
  memcpy(&__src[3] + 8, a2, 0x101uLL);
  v36 = *a7;
  v37 = *(a7 + 8);
  sub_21462CA80(__dst);
  v13 = __dst[0];
  v12 = __dst[1];
  v14 = __dst[2];
  v15 = __dst[3];
  v16 = __dst[4];
  sub_21462CBCC(&v52);
  v33 = v52;
  v38 = v53;
  v39 = v54;
  v60 = v55;
  v34 = v56;
  v29 = a3;
  v52 = a3;
  v53 = a4;
  v51 = v16;
  __dst[0] = 0xD000000000000011;
  __dst[1] = 0x800000021478F910;
  __dst[2] = 0xD00000000000001CLL;
  __dst[3] = 0x800000021478A360;

  v31 = v14;
  v17 = v14;
  v18 = v15;
  sub_213FDC9D0(v17, v15);
  v19 = v13(&v52, &v51, __dst);
  if (v35)
  {

LABEL_6:

    v21 = v33;
    v24 = v31;

    sub_213FDC6D0(v31, v18);
    v20 = v34;
LABEL_7:
    memcpy(__dst, __src, 0x140uLL);
    __dst[40] = v13;
    __dst[41] = v12;
    __dst[42] = v24;
    __dst[43] = v18;
    v41 = v16;
    *v42 = v59[0];
    *&v42[3] = *(v59 + 3);
    v43 = v21;
    v44 = v38;
    v45 = v39;
    v46 = v60;
    v47 = v20;
    *v48 = v58[0];
    *&v48[3] = *(v58 + 3);
    v49 = v36;
    v50 = v37;
    return sub_2142FF1F4(__dst);
  }

  if ((v19 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v23 = 0xD000000000000011;
    v23[1] = 0x800000021478F910;
    v23[2] = 0xD00000000000001CLL;
    v23[3] = 0x800000021478A360;
    swift_willThrow();

    goto LABEL_6;
  }

  sub_213FDC6D0(v31, v15);

  sub_213FDC6D0(v31, v15);
  v52 = a5;
  v53 = a6;
  v20 = v34;
  v51 = v34;
  __dst[0] = 0xD00000000000001BLL;
  __dst[1] = 0x800000021478F930;
  __dst[2] = 0xD00000000000001CLL;
  __dst[3] = 0x800000021478A360;

  sub_213FDC9D0(v39, v60);
  v21 = v33;
  v22 = v33(&v52, &v51, __dst);
  if ((v22 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v27 = 0xD00000000000001BLL;
    v27[1] = 0x800000021478F930;
    v27[2] = 0xD00000000000001CLL;
    v27[3] = 0x800000021478A360;
    swift_willThrow();

    sub_213FDC6D0(v39, v60);
    v24 = v29;
    v18 = a4;
    goto LABEL_7;
  }

  v26 = v60;
  sub_213FDC6D0(v39, v60);

  sub_213FDC6D0(v39, v26);
  result = memcpy(a8, __src, 0x140uLL);
  *(a8 + 320) = v13;
  *(a8 + 328) = v12;
  *(a8 + 336) = v29;
  *(a8 + 344) = a4;
  *(a8 + 352) = v16;
  *(a8 + 360) = v33;
  *(a8 + 368) = v38;
  *(a8 + 376) = a5;
  *(a8 + 384) = a6;
  *(a8 + 392) = v34;
  *(a8 + 400) = v36;
  *(a8 + 408) = v37;
  return result;
}

uint64_t sub_2141AC924()
{
  v1 = *v0;
  v2 = 0x74756F79616CLL;
  v3 = 0x656C746974;
  v4 = 0x6373654464726163;
  if (v1 != 3)
  {
    v4 = 0x7473694C70696863;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x616964656DLL;
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

uint64_t sub_2141AC9C0@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_2143702B4(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_2141AC9E8(uint64_t a1)
{
  v2 = sub_2142FF248();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2141ACA24(uint64_t a1)
{
  v2 = sub_2142FF248();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MBDRichCard.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908900, &unk_2146F5220);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v37 - v7;
  v9 = a1[3];
  v91 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v9);
  sub_2142FF248();
  sub_2146DAA08();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(v91);
  }

  v55 = a2;
  v56 = v6;
  v84 = 0;
  sub_2142FF29C();
  sub_2146DA1C8();
  v80 = v85;
  v81 = v86;
  v82 = v87;
  v83 = v88;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908918, &qword_214767BD0);
  v78[263] = 1;
  sub_2142FF2F0();
  sub_2146DA1C8();
  memcpy(v78, v79, 0x101uLL);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
  LOBYTE(v57[0]) = 2;
  sub_2142E12FC();
  sub_2146DA1C8();
  v10 = v59[0];
  v11 = v59[1];
  LOBYTE(v57[0]) = 3;
  sub_2146DA1C8();
  v54 = v11;
  v12 = v59[0];
  v13 = v59[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908928, &qword_2146F5230);
  v75 = 4;
  sub_2142FF374();
  sub_2146DA1C8();
  v40 = v12;
  v45 = v13;
  v42 = v76;
  v43 = v77;
  sub_2142FF3F8(&v80, v59);
  sub_213FB2E54(v78, v59, &qword_27C908918, &qword_214767BD0);
  sub_21462CA80(v59);
  v15 = v59[1];
  v52 = v59[2];
  v53 = v59[0];
  v51 = v59[3];
  LODWORD(v13) = LOBYTE(v59[4]);
  sub_21462CBCC(v57);
  v47 = v57[0];
  v48 = v57[2];
  v49 = v57[3];
  v50 = v57[1];
  v46 = LOBYTE(v57[4]);
  v74[0] = v80;
  v74[1] = v81;
  v74[2] = v82;
  LOBYTE(v74[3]) = v83;
  memcpy(&v74[3] + 8, v78, 0x101uLL);
  v39 = v10;
  v57[0] = v10;
  v57[1] = v54;
  v41 = v13;
  LOBYTE(v58[0]) = v13;
  v59[0] = 0xD000000000000011;
  v59[1] = 0x800000021478F910;
  v59[2] = 0xD00000000000001CLL;
  v59[3] = 0x800000021478A360;

  sub_213FDC9D0(v52, v51);
  v44 = v15;
  v16 = v53(v57, v58, v59);
  v38 = 0x800000021478A360;
  if (v16)
  {
    v18 = v51;
    v17 = v52;
    sub_213FDC6D0(v52, v51);
    v19 = v38;

    v20 = v44;

    sub_213FDC6D0(v17, v18);
    v58[0] = v40;
    v58[1] = v45;
    LOBYTE(v57[0]) = v46;
    v52 = 0xD00000000000001BLL;
    v59[0] = 0xD00000000000001BLL;
    v59[1] = 0x800000021478F930;
    v59[2] = 0xD00000000000001CLL;
    v59[3] = v19;

    sub_213FDC9D0(v48, v49);
    v21 = v47(v58, v57, v59);
    v27 = v52;
    v28 = v56;
    if (v21)
    {
      v29 = v48;
      v30 = v49;
      sub_213FDC6D0(v48, v49);

      sub_21405C980(&v80);
      sub_213FB2DF4(v78, &qword_27C908918, &qword_214767BD0);
      (*(v28 + 8))(v8, v5);
      v31 = v50;

      sub_213FDC6D0(v29, v30);
      memcpy(v57, v74, 0x140uLL);
      v32 = v53;
      v57[40] = v53;
      v57[41] = v20;
      v33 = v54;
      v57[42] = v39;
      v57[43] = v54;
      LOBYTE(v29) = v41;
      LOBYTE(v57[44]) = v41;
      *(&v57[44] + 1) = v90[0];
      HIDWORD(v57[44]) = *(v90 + 3);
      v57[45] = v47;
      v57[46] = v31;
      v57[47] = v40;
      v57[48] = v45;
      LOBYTE(v31) = v46;
      LOBYTE(v57[49]) = v46;
      *(&v57[49] + 1) = *v89;
      HIDWORD(v57[49]) = *&v89[3];
      v34 = v42;
      v57[50] = v42;
      v35 = v43;
      LOBYTE(v57[51]) = v43;
      memcpy(v55, v57, 0x199uLL);
      sub_2142FF454(v57, v59);
      __swift_destroy_boxed_opaque_existential_1(v91);
      memcpy(v59, v74, sizeof(v59));
      v60 = v32;
      v61 = v44;
      v62 = v39;
      v63 = v33;
      v64 = v29;
      *v65 = v90[0];
      *&v65[3] = *(v90 + 3);
      v66 = v47;
      v67 = v50;
      v68 = v40;
      v69 = v45;
      v70 = v31;
      *v71 = *v89;
      *&v71[3] = *&v89[3];
      v72 = v34;
      v73 = v35;
      return sub_2142FF1F4(v59);
    }

    sub_214031C4C();
    swift_allocError();
    *v36 = v27;
    v36[1] = 0x800000021478F930;
    v36[2] = 0xD00000000000001CLL;
    v36[3] = v38;
    swift_willThrow();

    sub_21405C980(&v80);
    sub_213FB2DF4(v78, &qword_27C908918, &qword_214767BD0);
    (*(v28 + 8))(v8, v5);

    sub_213FDC6D0(v48, v49);
    v25 = v39;
    v26 = v54;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v22 = 0xD000000000000011;
    v22[1] = 0x800000021478F910;
    v23 = v38;
    v22[2] = 0xD00000000000001CLL;
    v22[3] = v23;
    swift_willThrow();

    v24 = v56;
    v20 = v44;
    sub_21405C980(&v80);
    sub_213FB2DF4(v78, &qword_27C908918, &qword_214767BD0);
    (*(v24 + 8))(v8, v5);

    v26 = v51;
    v25 = v52;
    sub_213FDC6D0(v52, v51);
  }

  __swift_destroy_boxed_opaque_existential_1(v91);
  memcpy(v59, v74, sizeof(v59));
  v60 = v53;
  v61 = v20;
  v62 = v25;
  v63 = v26;
  v64 = v41;
  *v65 = v90[0];
  *&v65[3] = *(v90 + 3);
  v66 = v47;
  v67 = v50;
  v68 = v48;
  v69 = v49;
  v70 = v46;
  *v71 = *v89;
  *&v71[3] = *&v89[3];
  v72 = v42;
  v73 = v43;
  return sub_2142FF1F4(v59);
}

uint64_t MBDRichCard.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908938, &qword_2146F5238);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v18 - v5;
  v7 = v1[1];
  v36 = *v1;
  v37 = v7;
  v38 = v1[2];
  v39 = *(v1 + 48);
  memcpy(v40, v1 + 56, 0x101uLL);
  v8 = *(v1 + 42);
  v9 = *(v1 + 43);
  v10 = *(v1 + 48);
  v20 = *(v1 + 47);
  v21 = v8;
  v19 = v10;
  v22 = *(v1 + 50);
  v23 = v9;
  HIDWORD(v18) = *(v1 + 408);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142FF248();
  v11 = v6;
  sub_2146DAA28();
  v32 = v36;
  v33 = v37;
  v34 = v38;
  v35 = v39;
  v31 = 0;
  sub_2142FF3F8(&v36, v28);
  sub_2142FF4B0();
  v12 = v41;
  sub_2146DA388();
  if (v12)
  {
    v28[0] = v32;
    v28[1] = v33;
    v28[2] = v34;
    LOBYTE(v28[3]) = v35;
    sub_21405C980(v28);
    return (*(v4 + 8))(v6, v3);
  }

  else
  {
    v13 = v23;
    v29[0] = v32;
    v29[1] = v33;
    v29[2] = v34;
    v30 = v35;
    sub_21405C980(v29);
    memcpy(v28, v40, 0x101uLL);
    v27[263] = 1;
    sub_213FB2E54(v40, v27, &qword_27C908918, &qword_214767BD0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908918, &qword_214767BD0);
    sub_2142FF504();
    sub_2146DA388();
    v41 = v11;
    memcpy(v27, v28, 0x101uLL);
    sub_213FB2DF4(v27, &qword_27C908918, &qword_214767BD0);
    if (v13 == 1 || (v15 = v4, v25 = v21, v26 = v13, v24 = 2, __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050), sub_214045AC0(), sub_2146DA388(), v16 = v22, v19 == 1))
    {
      result = sub_2146DA018();
      __break(1u);
    }

    else
    {
      v25 = v20;
      v26 = v19;
      v24 = 3;
      v17 = v41;
      sub_2146DA388();
      v25 = v16;
      LOBYTE(v26) = BYTE4(v18);
      v24 = 4;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908928, &qword_2146F5230);
      sub_2142FF588();
      sub_2146DA388();

      return (*(v15 + 8))(v17, 0);
    }
  }

  return result;
}

uint64_t sub_2141AD89C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_214370460(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_2141AD8C4(uint64_t a1)
{
  v2 = sub_2142FF60C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2141AD900(uint64_t a1)
{
  v2 = sub_2142FF60C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2141AD93C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908958, &unk_2146F5240);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v31 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142FF60C();
  sub_2146DAA08();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  LOBYTE(v41) = 0;
  sub_2142FF660();
  sub_2146DA1C8();
  v9 = v45;
  LOBYTE(v41) = 1;
  sub_2142FF6B4();
  sub_2146DA1C8();
  v10 = v45;
  LOBYTE(v41) = 2;
  sub_2142FF708();
  sub_2146DA1C8();
  v57 = v10;
  v58 = v9;
  v40 = v45;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904478, &qword_2146EC048);
  LOBYTE(v41) = 3;
  sub_2142FF75C();
  sub_2146DA1C8();
  v39[0] = BYTE2(v45);
  LODWORD(v38) = v45;
  LOBYTE(v41) = 4;
  sub_2146DA1C8();
  v11 = v38;
  v12 = v39[0];
  LODWORD(v37) = BYTE2(v45);
  LODWORD(v36) = v45;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
  v53 = 5;
  sub_2142E12FC();
  sub_2146DA1C8();
  v35 = v11 | (v12 << 16);
  v14 = v55;
  v38 = v54;
  v34 = v36 | (v37 << 16);
  sub_214509038(&v45);
  v15 = v46;
  *v39 = v45;
  v16 = v47;
  v17 = v48;
  v52[0] = v38;
  v52[1] = v14;
  v32 = v14;
  v33 = v49;
  LOBYTE(v41) = v49;
  v45 = 0xD00000000000001ELL;
  v46 = 0x800000021478B1A0;
  v47 = 0xD00000000000001CLL;
  v48 = 0x800000021478A360;
  v31 = 0x800000021478A360;

  v37 = v16;
  v36 = v17;
  sub_213FDC9D0(v16, v17);
  v18 = v15;
  v19 = (*v39)(v52, &v41, &v45);
  v20 = v31;
  if (v19)
  {
    sub_213FDC6D0(v37, v36);

    (*(v6 + 8))(v8, v5);
    v21 = v15;

    sub_213FDC6D0(v37, v36);
    LOBYTE(v41) = v58;
    BYTE1(v41) = v57;
    BYTE2(v41) = v40;
    v22 = v35;
    LODWORD(v37) = HIWORD(v35);
    BYTE5(v41) = BYTE2(v35);
    *(&v41 + 3) = v35;
    v23 = v34;
    LODWORD(v36) = HIWORD(v34);
    BYTE8(v41) = BYTE2(v34);
    WORD3(v41) = v34;
    v24 = *v39;
    *&v42 = *v39;
    *(&v42 + 1) = v15;
    v25 = v32;
    *&v43 = v38;
    *(&v43 + 1) = v32;
    v26 = v33;
    v44 = v33;
    *(a2 + 48) = v33;
    v27 = v42;
    *a2 = v41;
    *(a2 + 16) = v27;
    *(a2 + 32) = v43;
    sub_2142FF3F8(&v41, &v45);
    __swift_destroy_boxed_opaque_existential_1(a1);
    LOBYTE(v45) = v58;
    BYTE1(v45) = v57;
    BYTE2(v45) = v40;
    BYTE5(v45) = v37;
    *(&v45 + 3) = v22;
    LOBYTE(v46) = v36;
    HIWORD(v45) = v23;
    v47 = v24;
    v48 = v21;
    v49 = v38;
    v50 = v25;
    v51 = v26;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v28 = 0xD00000000000001ELL;
    v28[1] = 0x800000021478B1A0;
    v28[2] = 0xD00000000000001CLL;
    v28[3] = v20;
    swift_willThrow();

    (*(v6 + 8))(v8, v5);

    v29 = v37;
    v30 = v36;
    sub_213FDC6D0(v37, v36);
    __swift_destroy_boxed_opaque_existential_1(a1);
    LOBYTE(v45) = v58;
    BYTE1(v45) = v57;
    BYTE2(v45) = v40;
    BYTE5(v45) = BYTE2(v35);
    *(&v45 + 3) = v35;
    LOBYTE(v46) = BYTE2(v34);
    HIWORD(v45) = v34;
    *(&v46 + 1) = v56[0];
    HIDWORD(v46) = *(v56 + 3);
    v47 = *v39;
    v48 = v18;
    v49 = v29;
    v50 = v30;
    v51 = v33;
  }

  return sub_21405C980(&v45);
}

uint64_t sub_2141ADFC8(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908988, &qword_2146F5250);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v17 - v6;
  v8 = *v1;
  v27 = v1[1];
  v9 = v1[2];
  v23 = v1[5];
  v24 = v9;
  v10 = *(v1 + 3);
  v20 = v1[8];
  v21 = *(v1 + 3);
  v22 = v10;
  v11 = *(v1 + 4);
  v18 = *(v1 + 5);
  v19 = v11;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142FF60C();
  sub_2146DAA28();
  LOBYTE(v25) = v8;
  v28 = 0;
  sub_2142FF7E0();
  sub_2146DA388();
  if (v2)
  {
    return (*(v5 + 8))(v7, v4);
  }

  v13 = v23;
  v12 = v24;
  v14 = v21;
  v15 = v22;
  LOBYTE(v25) = v27;
  v28 = 1;
  sub_2142FF834();
  sub_2146DA388();
  LOBYTE(v25) = v12;
  v28 = 2;
  sub_2142FF888();
  sub_2146DA388();
  BYTE2(v25) = (v15 | (v13 << 16)) >> 16;
  LOWORD(v25) = v15;
  v28 = 3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904478, &qword_2146EC048);
  sub_21405C9D4();
  sub_2146DA388();
  BYTE2(v25) = (v14 | (v20 << 16)) >> 16;
  LOWORD(v25) = v14;
  v28 = 4;
  sub_2146DA388();
  if (v18 != 1)
  {
    v25 = v19;
    v26 = v18;
    v28 = 5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
    sub_214045AC0();
    sub_2146DA388();
    return (*(v5 + 8))(v7, v4);
  }

  result = sub_2146DA018();
  __break(1u);
  return result;
}

uint64_t sub_2141AE36C@<X0>(uint64_t (*a1)(void, void, void)@<X0>, unint64_t a2@<X1>, uint64_t (*a3)(void, void, void)@<X2>, uint64_t a4@<X3>, uint64_t (*a5)(void, void, void)@<X4>, uint64_t (*a6)(void, void, void)@<X5>, uint64_t a7@<X6>, uint64_t (*a8)(void, void, void)@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t (*a11)(void, void, void), char a12, char *a13, uint64_t (*a14)(void, void, void), uint64_t a15)
{
  v70 = *a13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_2146E9BF0;
  v17 = sub_214069764(&unk_2826534E0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v18 = swift_allocObject();
  v19 = swift_allocObject();
  *(v19 + 16) = v17;
  *(v18 + 16) = sub_2142FF8DC;
  *(v18 + 24) = v19;
  *(v16 + 32) = v18;
  sub_214042B80(v16, &v100);
  v20 = v101;
  v96 = v100;
  v21 = v103;
  v64 = v102;
  v22 = v104;
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_2146E9BF0;
  v24 = swift_allocObject();
  *(v24 + 16) = sub_2142E3358;
  *(v24 + 24) = 0;
  *(v23 + 32) = v24;
  sub_214042B80(v23, &v156);
  v97 = v156;
  v98 = v157;
  v65 = v158;
  v171 = v159;
  v74 = v160;
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F28, &unk_2146E9D30);
  v26 = swift_allocObject();
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_2146ED240;
  *(v26 + 16) = sub_21438F468;
  *(v26 + 24) = v27;
  *(v25 + 32) = v26;
  sub_21404328C(v25, v153);
  v92 = v153[0];
  v95 = v153[1];
  v66 = v153[2];
  v28 = v154;
  v93 = v155;
  sub_2140637C0(v151);
  v87 = v151[2];
  v88 = v151[0];
  v90 = v151[1];
  v91 = v151[3];
  v89 = v152;
  sub_214063914(v149);
  v86 = v149[1];
  v83 = v149[2];
  v84 = v149[0];
  v82 = v149[3];
  v85 = v150;
  sub_214063A34(v145);
  v79 = v145[0];
  v81 = v145[1];
  v67 = v145[2];
  v71 = v146;
  v29 = v147;
  v80 = v148;
  sub_214063B78(v143);
  v72 = v143[0];
  v75 = v143[2];
  v76 = v143[3];
  v77 = v143[1];
  v73 = v144;
  v162 = v28;
  v161 = v29;
  v168 = v28;
  v163 = v29;
  v156 = a1;
  v157 = a2;
  v69 = v22;
  LOBYTE(v151[0]) = v22;
  v100 = 0xD000000000000019;
  v101 = 0x800000021478F950;
  v102 = 0xD00000000000001CLL;
  v103 = 0x800000021478A360;

  v30 = v96(&v156, v151, &v100);
  v31 = v96;
  if (v68)
  {

LABEL_7:
    v35 = v21;

    v36 = v20;

    a1 = v64;
    v32 = v74;
LABEL_8:
    v38 = v66;
    v37 = v67;
    v40 = v82;
    v39 = v83;
    v41 = v87;
    v42 = v65;
LABEL_9:
    v100 = v31;
    v101 = v36;
    v102 = a1;
    v103 = v35;
    v104 = v69;
    *v105 = v170[0];
    *&v105[3] = *(v170 + 3);
    v106 = v97;
    v107 = v98;
    v108 = v42;
    v109 = v171;
    v110 = v32;
    *v111 = *v169;
    *&v111[3] = *&v169[3];
    v112 = v92;
    v113 = v95;
    v114 = v38;
    v115 = v168;
    v116 = v93;
    v117 = v166;
    v118 = v167;
    v119 = v88;
    v120 = v90;
    v121 = v41;
    v122 = v91;
    v123 = v89;
    *&v124[3] = *&v165[3];
    *v124 = *v165;
    v125 = v84;
    v126 = v86;
    v127 = v39;
    v128 = v40;
    v129 = v85;
    *&v130[3] = *&v164[3];
    *v130 = *v164;
    v131 = v79;
    v132 = v81;
    v133 = v37;
    v134 = v71;
    v135 = v163;
    v136 = v80;
    v137 = v70;
    v138 = v72;
    v139 = v77;
    v140 = v75;
    v141 = v76;
    v142 = v73;
    return sub_2142FF8EC(&v100);
  }

  if ((v30 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v34 = 0xD000000000000019;
    v34[1] = 0x800000021478F950;
    v34[2] = 0xD00000000000001CLL;
    v34[3] = 0x800000021478A360;
    swift_willThrow();

    goto LABEL_7;
  }

  v156 = a3;
  v157 = a4;
  v32 = v74;
  LOBYTE(v151[0]) = v74;
  v100 = 0xD000000000000021;
  v101 = 0x800000021478F970;
  v102 = 0xD00000000000001CLL;
  v103 = 0x800000021478A360;

  if ((v97(&v156, v151, &v100) & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v44 = 0xD000000000000021;
    v44[1] = 0x800000021478F970;
    v44[2] = 0xD00000000000001CLL;
    v44[3] = 0x800000021478A360;
    swift_willThrow();

    v31 = v96;

    v35 = a2;
    v36 = v20;
    goto LABEL_8;
  }

  LOBYTE(v151[0]) = v28;
  v156 = a5;
  LOBYTE(v149[0]) = v93;
  v100 = 0xD00000000000001ELL;
  v101 = 0x800000021478F9A0;
  v102 = 0xD00000000000001CLL;
  v103 = 0x800000021478A360;

  v33 = v92(&v156, v149, &v100);
  v35 = a2;
  if ((v33 & 1) == 0)
  {

    sub_214031C4C();
    swift_allocError();
    *v46 = 0xD00000000000001ELL;
    v46[1] = 0x800000021478F9A0;
    v46[2] = 0xD00000000000001CLL;
    v46[3] = 0x800000021478A360;
    swift_willThrow();
    v47 = v151[0];
    v31 = v96;

    v168 = v47;
    v42 = a3;
    v171 = a4;
    v36 = v20;
    v38 = v66;
    v37 = v67;
    v40 = v82;
    v39 = v83;
    v41 = v87;
    goto LABEL_9;
  }

  v168 = 0;
  v156 = a6;
  v157 = a7;
  LOBYTE(v151[0]) = v89;
  v100 = 0xD00000000000001DLL;
  v101 = 0x800000021478F9C0;
  v102 = 0xD00000000000001CLL;
  v103 = 0x800000021478A360;

  sub_213FDC9D0(v87, v91);
  v45 = v88(&v156, v151, &v100);
  if ((v45 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v49 = 0xD00000000000001DLL;
    v49[1] = 0x800000021478F9C0;
    v49[2] = 0xD00000000000001CLL;
    v49[3] = 0x800000021478A360;
    swift_willThrow();

    v31 = v96;

    v41 = v87;
    sub_213FDC6D0(v87, v91);
    v42 = a3;
    v171 = a4;
    v38 = a5;
    v36 = v20;
    v37 = v67;
    v40 = v82;
    v39 = v83;
    goto LABEL_9;
  }

  sub_213FDC6D0(v87, v91);

  sub_213FDC6D0(v87, v91);
  v156 = a8;
  v157 = a10;
  LOBYTE(v151[0]) = v85;
  v100 = 0xD000000000000025;
  v101 = 0x800000021478F9E0;
  v102 = 0xD00000000000001CLL;
  v103 = 0x800000021478A360;

  sub_213FDC9D0(v83, v82);
  v48 = v84(&v156, v151, &v100);
  if ((v48 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v51 = 0xD000000000000025;
    v51[1] = 0x800000021478F9E0;
    v51[2] = 0xD00000000000001CLL;
    v51[3] = 0x800000021478A360;
    swift_willThrow();

    v31 = v96;

    v40 = v82;
    v39 = v83;
    sub_213FDC6D0(v83, v82);
    v42 = a3;
    v171 = a4;
    v41 = a6;
    v38 = a5;
    v91 = a7;
LABEL_20:
    v36 = v20;
    v37 = v67;
    goto LABEL_9;
  }

  sub_213FDC6D0(v83, v82);

  sub_213FDC6D0(v83, v82);
  v156 = a11;
  LOBYTE(v157) = a12 & 1;
  LOBYTE(v151[0]) = v80;
  v100 = 0xD000000000000022;
  v101 = 0x800000021478FA10;
  v102 = 0xD00000000000001CLL;
  v103 = 0x800000021478A360;

  v50 = v79(&v156, v151, &v100);
  if ((v50 & 1) == 0)
  {

    sub_214031C4C();
    swift_allocError();
    *v53 = 0xD000000000000022;
    v53[1] = 0x800000021478FA10;
    v53[2] = 0xD00000000000001CLL;
    v53[3] = 0x800000021478A360;
    swift_willThrow();
    v31 = v96;
    v39 = a8;

    v163 = v29;
    v35 = a2;
    v42 = a3;
    v171 = a4;
    v41 = a6;
    v38 = a5;
    v91 = a7;
    v40 = a10;
    goto LABEL_20;
  }

  v71 = a12 & 1;

  v163 = 0;
  v156 = a14;
  v157 = a15;
  LOBYTE(v151[0]) = v73;
  v100 = 0xD000000000000023;
  v101 = 0x800000021478FA40;
  v102 = 0xD00000000000001CLL;
  v103 = 0x800000021478A360;

  sub_213FDC9D0(v75, v76);
  v52 = v72(&v156, v151, &v100);
  if ((v52 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v58 = 0xD000000000000023;
    v58[1] = 0x800000021478FA40;
    v58[2] = 0xD00000000000001CLL;
    v58[3] = 0x800000021478A360;
    swift_willThrow();

    sub_213FDC6D0(v75, v76);
    v35 = a2;
    v42 = a3;
    v171 = a4;
    v41 = a6;
    v38 = a5;
    v91 = a7;
    v39 = a8;
    v40 = a10;
    v37 = a11;
    v32 = v74;
    v31 = v96;
    v36 = v20;
    goto LABEL_9;
  }

  sub_213FDC6D0(v75, v76);

  result = sub_213FDC6D0(v75, v76);
  *a9 = v96;
  *(a9 + 8) = v20;
  *(a9 + 16) = a1;
  *(a9 + 24) = a2;
  *(a9 + 32) = v69;
  *(a9 + 40) = v97;
  *(a9 + 48) = v98;
  *(a9 + 33) = v170[0];
  *(a9 + 36) = *(v170 + 3);
  v54 = v168;
  v55 = v163;
  *(a9 + 56) = a3;
  *(a9 + 64) = a4;
  *(a9 + 72) = v74;
  v56 = *v169;
  *(a9 + 76) = *&v169[3];
  *(a9 + 73) = v56;
  *(a9 + 80) = v92;
  *(a9 + 88) = v95;
  *(a9 + 96) = a5;
  *(a9 + 104) = v54;
  *(a9 + 105) = v93;
  *(a9 + 106) = v166;
  *(a9 + 110) = v167;
  *(a9 + 112) = v88;
  *(a9 + 120) = v90;
  *(a9 + 128) = a6;
  *(a9 + 136) = a7;
  *(a9 + 144) = v89;
  v57 = *v165;
  *(a9 + 148) = *&v165[3];
  *(a9 + 145) = v57;
  *(a9 + 152) = v84;
  *(a9 + 160) = v86;
  *(a9 + 168) = a8;
  *(a9 + 176) = a10;
  *(a9 + 184) = v85;
  *(a9 + 188) = *&v164[3];
  *(a9 + 185) = *v164;
  *(a9 + 192) = v79;
  *(a9 + 200) = v81;
  *(a9 + 208) = a11;
  *(a9 + 216) = v71;
  *(a9 + 217) = v55;
  *(a9 + 218) = v80;
  *(a9 + 219) = v70;
  *(a9 + 224) = v72;
  *(a9 + 232) = v77;
  *(a9 + 240) = a14;
  *(a9 + 248) = a15;
  *(a9 + 256) = v73;
  return result;
}

uint64_t sub_2141AF290()
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
    v2 = 0x6C7255616964656DLL;
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

uint64_t sub_2141AF3A8@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_214370678(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_2141AF3D0(uint64_t a1)
{
  v2 = sub_2142FF940();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2141AF40C(uint64_t a1)
{
  v2 = sub_2142FF940();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2141AF448@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v187 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9089A8, &qword_2146F5258);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v61 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142FF940();
  sub_2146DAA08();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v112 = a1;
  v113 = v5;
  LOBYTE(v115) = 0;
  v9 = v7;
  v8 = sub_2146DA168();
  v11 = v10;
  v111 = v8;
  LOBYTE(v115) = 1;
  v12 = sub_2146DA168();
  v14 = v13;
  v110 = v12;
  LOBYTE(v115) = 2;
  v107 = sub_2146DA1A8();
  v108 = v14;
  v109 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
  LOBYTE(v114[0]) = 3;
  sub_2142E12FC();
  sub_2146DA1C8();
  v105 = v115;
  v106 = v116;
  LOBYTE(v114[0]) = 4;
  sub_2146DA1C8();
  v103 = v115;
  v104 = v116;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904798, qword_21473CFD0);
  LOBYTE(v114[0]) = 5;
  sub_2142E11FC();
  sub_2146DA1C8();
  v101 = v115;
  v102 = v116;
  LOBYTE(v114[0]) = 6;
  sub_214063DDC();
  sub_2146DA1C8();
  v100 = v115;
  v176 = 7;
  sub_2146DA1C8();
  v61 = v177;
  v67 = v178;
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  v16 = swift_allocObject();
  v96 = xmmword_2146E9BF0;
  *(v16 + 16) = xmmword_2146E9BF0;
  v99 = sub_214069764(&unk_2826534E0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v17 = swift_allocObject();
  v18 = swift_allocObject();
  *(v18 + 16) = v99;
  *(v17 + 16) = sub_21438F45C;
  *(v17 + 24) = v18;
  *(v16 + 32) = v17;
  sub_214042B80(v16, &v115);
  v94 = v115;
  v99 = v116;
  v64 = v117;
  v97 = v118;
  v98 = v119;
  v19 = swift_allocObject();
  *(v19 + 16) = v96;
  v20 = swift_allocObject();
  *(v20 + 16) = sub_214064194;
  *(v20 + 24) = 0;
  *(v19 + 32) = v20;
  sub_214042B80(v19, v114);
  v91 = v114[0];
  v93 = v114[1];
  v87 = v114[2];
  v95 = v114[3];
  v92 = LOBYTE(v114[4]);
  v21 = swift_allocObject();
  *(v21 + 16) = v96;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F28, &unk_2146E9D30);
  v22 = swift_allocObject();
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_2146ED240;
  *(v22 + 16) = sub_21438F468;
  *(v22 + 24) = v23;
  *(v21 + 32) = v22;
  sub_21404328C(v21, v171);
  v89 = v171[0];
  v90 = v171[1];
  v81 = v171[2];
  LODWORD(v22) = v172;
  v88 = v173;
  sub_2140637C0(&v166);
  v82 = v166;
  v86 = v168;
  v84 = v167;
  v85 = v169;
  v83 = v170;
  sub_214063914(v164);
  v76 = v164[0];
  v80 = v164[2];
  v78 = v164[1];
  v79 = v164[3];
  v77 = v165;
  sub_214063A34(v160);
  v73 = v160[0];
  v75 = v160[1];
  v66 = v160[2];
  v65 = v161;
  LODWORD(v21) = v162;
  v74 = v163;
  sub_214063B78(v158);
  v68 = v158[0];
  v70 = v158[2];
  v71 = v158[3];
  v72 = v158[1];
  v69 = v159;
  v175 = v22;
  v174 = v21;
  v62 = v21;
  v63 = v22;
  v184 = v22;
  v179 = v21;
  v114[0] = v111;
  v114[1] = v109;
  LOBYTE(v166) = v98;
  v115 = 0xD000000000000019;
  v116 = 0x800000021478F950;
  v117 = 0xD00000000000001CLL;
  *&v96 = 0x800000021478A360;
  v118 = 0x800000021478A360;

  if (v94(v114, &v166, &v115))
  {
    v24 = v96;

    v114[0] = v110;
    v114[1] = v108;
    LOBYTE(v166) = v92;
    v115 = 0xD000000000000021;
    v116 = 0x800000021478F970;
    v117 = 0xD00000000000001CLL;
    v118 = v24;

    if (v91(v114, &v166, &v115))
    {
      v25 = v96;

      LOBYTE(v166) = v63;
      v114[0] = v107;
      LOBYTE(v164[0]) = v88;
      v115 = 0xD00000000000001ELL;
      v116 = 0x800000021478F9A0;
      v117 = 0xD00000000000001CLL;
      v118 = v25;

      if (v89(v114, v164, &v115))
      {
        v36 = v96;

        v184 = 0;
        v114[0] = v105;
        v114[1] = v106;
        LOBYTE(v166) = v83;
        v115 = 0xD00000000000001DLL;
        v116 = 0x800000021478F9C0;
        v117 = 0xD00000000000001CLL;
        v118 = v36;

        sub_213FDC9D0(v86, v85);
        if (v82(v114, &v166, &v115))
        {
          v40 = v85;
          v39 = v86;
          sub_213FDC6D0(v86, v85);
          v41 = v96;

          sub_213FDC6D0(v39, v40);
          v114[0] = v103;
          v114[1] = v104;
          LOBYTE(v166) = v77;
          v115 = 0xD000000000000025;
          v116 = 0x800000021478F9E0;
          v117 = 0xD00000000000001CLL;
          v118 = v41;

          sub_213FDC9D0(v80, v79);
          if (v76(v114, &v166, &v115))
          {
            v45 = v79;
            v44 = v80;
            sub_213FDC6D0(v80, v79);
            v46 = v96;

            sub_213FDC6D0(v44, v45);
            v114[0] = v101;
            LOBYTE(v114[1]) = v102;
            LOBYTE(v166) = v74;
            v115 = 0xD000000000000022;
            v116 = 0x800000021478FA10;
            v117 = 0xD00000000000001CLL;
            v118 = v46;

            if (v73(v114, &v166, &v115))
            {
              v49 = v96;

              v179 = 0;
              v166 = v61;
              v167 = v67;
              LOBYTE(v114[0]) = v69;
              v115 = 0xD000000000000023;
              v116 = 0x800000021478FA40;
              v117 = 0xD00000000000001CLL;
              v118 = v49;

              sub_213FDC9D0(v70, v71);
              if (v68(&v166, v114, &v115))
              {
                v53 = v70;
                v52 = v71;
                sub_213FDC6D0(v70, v71);

                (*(v113 + 8))(v7, v4);
                v54 = v72;

                sub_213FDC6D0(v53, v52);
                v114[0] = v94;
                v114[1] = v99;
                v114[2] = v111;
                v114[3] = v109;
                LOBYTE(v114[4]) = v98;
                *(&v114[4] + 1) = v186[0];
                HIDWORD(v114[4]) = *(v186 + 3);
                v114[5] = v91;
                v114[6] = v93;
                v114[7] = v110;
                v114[8] = v108;
                LOBYTE(v114[9]) = v92;
                *(&v114[9] + 1) = *v185;
                HIDWORD(v114[9]) = *&v185[3];
                v114[10] = v89;
                v114[11] = v90;
                v114[12] = v107;
                *(&v114[18] + 1) = *v181;
                HIDWORD(v114[23]) = *&v180[3];
                *(&v114[23] + 1) = *v180;
                LODWORD(v97) = v184;
                LOBYTE(v114[13]) = v184;
                LOBYTE(v53) = v88;
                BYTE1(v114[13]) = v88;
                *(&v114[13] + 2) = v182;
                HIWORD(v114[13]) = v183;
                v55 = v82;
                v114[14] = v82;
                v56 = v84;
                v114[15] = v84;
                v57 = v106;
                v114[16] = v105;
                v114[17] = v106;
                LOBYTE(v52) = v83;
                LOBYTE(v114[18]) = v83;
                HIDWORD(v114[18]) = *&v181[3];
                v114[19] = v76;
                v114[20] = v78;
                v114[21] = v103;
                v114[22] = v104;
                LOBYTE(v114[23]) = v77;
                v114[24] = v73;
                v114[25] = v75;
                v114[26] = v101;
                LOBYTE(v114[27]) = v102;
                LODWORD(v113) = v179;
                BYTE1(v114[27]) = v179;
                BYTE2(v114[27]) = v74;
                BYTE3(v114[27]) = v100;
                v114[28] = v68;
                v114[29] = v54;
                v58 = v61;
                v114[30] = v61;
                v114[31] = v67;
                LOBYTE(v114[32]) = v69;
                memcpy(v187, v114, 0x101uLL);
                sub_2142FF994(v114, &v115);
                __swift_destroy_boxed_opaque_existential_1(v112);
                v115 = v94;
                v116 = v99;
                v117 = v111;
                v118 = v109;
                v119 = v98;
                v121 = v91;
                v122 = v93;
                v123 = v110;
                v124 = v108;
                *v120 = v186[0];
                *&v120[3] = *(v186 + 3);
                v125 = v92;
                *v126 = *v185;
                *&v126[3] = *&v185[3];
                v127 = v89;
                v128 = v90;
                v129 = v107;
                v130 = v97;
                v131 = v53;
                v132 = v182;
                v133 = v183;
                v134 = v55;
                v135 = v56;
                v136 = v105;
                v137 = v57;
                v138 = v52;
                *v139 = *v181;
                *&v139[3] = *&v181[3];
                v140 = v76;
                v141 = v78;
                v142 = v103;
                v143 = v104;
                v144 = v77;
                *&v145[3] = *&v180[3];
                *v145 = *v180;
                v146 = v73;
                v147 = v75;
                v148 = v101;
                v149 = v102;
                v150 = v113;
                v151 = v74;
                v152 = v100;
                v153 = v68;
                v154 = v72;
                v155 = v58;
                v33 = v67;
                goto LABEL_8;
              }

              sub_214031C4C();
              swift_allocError();
              *v59 = 0xD000000000000023;
              v59[1] = 0x800000021478FA40;
              v60 = v96;
              v59[2] = 0xD00000000000001CLL;
              v59[3] = v60;
              swift_willThrow();

              (*(v113 + 8))(v7, v4);

              sub_213FDC6D0(v70, v71);
              v31 = v109;
              v95 = v108;
              v86 = v105;
              v87 = v110;
              v85 = v106;
              v80 = v103;
              v81 = v107;
              v79 = v104;
              v66 = v101;
              v65 = v102;
            }

            else
            {

              sub_214031C4C();
              swift_allocError();
              *v50 = 0xD000000000000022;
              v50[1] = 0x800000021478FA10;
              v51 = v96;
              v50[2] = 0xD00000000000001CLL;
              v50[3] = v51;
              swift_willThrow();
              (*(v113 + 8))(v7, v4);

              v179 = v62;
              v31 = v109;
              v95 = v108;
              v86 = v105;
              v87 = v110;
              v85 = v106;
              v80 = v103;
              v81 = v107;
              v79 = v104;
            }
          }

          else
          {
            sub_214031C4C();
            swift_allocError();
            *v47 = 0xD000000000000025;
            v47[1] = 0x800000021478F9E0;
            v48 = v96;
            v47[2] = 0xD00000000000001CLL;
            v47[3] = v48;
            swift_willThrow();

            (*(v113 + 8))(v7, v4);

            sub_213FDC6D0(v80, v79);
            v31 = v109;
            v95 = v108;
            v81 = v107;
            v86 = v105;
            v87 = v110;
            v85 = v106;
          }
        }

        else
        {
          sub_214031C4C();
          swift_allocError();
          *v42 = 0xD00000000000001DLL;
          v42[1] = 0x800000021478F9C0;
          v43 = v96;
          v42[2] = 0xD00000000000001CLL;
          v42[3] = v43;
          swift_willThrow();

          (*(v113 + 8))(v7, v4);

          sub_213FDC6D0(v86, v85);
          v31 = v109;
          v87 = v110;
          v95 = v108;
          v81 = v107;
        }
      }

      else
      {

        sub_214031C4C();
        swift_allocError();
        *v37 = 0xD00000000000001ELL;
        v37[1] = 0x800000021478F9A0;
        v38 = v96;
        v37[2] = 0xD00000000000001CLL;
        v37[3] = v38;
        swift_willThrow();
        (*(v113 + 8))(v7, v4);
        v63 = v166;

        v184 = v63;
        v31 = v109;
        v87 = v110;
        v95 = v108;
      }
    }

    else
    {
      sub_214031C4C();
      swift_allocError();
      *v34 = 0xD000000000000021;
      v34[1] = 0x800000021478F970;
      v35 = v96;
      v34[2] = 0xD00000000000001CLL;
      v34[3] = v35;
      swift_willThrow();

      (*(v113 + 8))(v7, v4);

      v31 = v109;
    }

    v28 = v94;
    v32 = v99;
    v29 = v112;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v26 = 0xD000000000000019;
    v26[1] = 0x800000021478F950;
    v27 = v96;
    v26[2] = 0xD00000000000001CLL;
    v26[3] = v27;
    swift_willThrow();

    v28 = v94;
    v29 = v112;
    v30 = v113;

    (*(v30 + 8))(v9, v4);
    v31 = v97;

    v32 = v99;

    v111 = v64;
  }

  __swift_destroy_boxed_opaque_existential_1(v29);
  v115 = v28;
  v116 = v32;
  v117 = v111;
  v118 = v31;
  v119 = v98;
  v121 = v91;
  v122 = v93;
  *v120 = v186[0];
  *&v120[3] = *(v186 + 3);
  v123 = v87;
  v124 = v95;
  v125 = v92;
  *v126 = *v185;
  *&v126[3] = *&v185[3];
  v127 = v89;
  v128 = v90;
  v129 = v81;
  v130 = v184;
  v131 = v88;
  v132 = v182;
  v133 = v183;
  v134 = v82;
  v135 = v84;
  v136 = v86;
  v137 = v85;
  v138 = v83;
  *v139 = *v181;
  *&v139[3] = *&v181[3];
  v140 = v76;
  v141 = v78;
  v142 = v80;
  v143 = v79;
  v144 = v77;
  *&v145[3] = *&v180[3];
  *v145 = *v180;
  v146 = v73;
  v147 = v75;
  v148 = v66;
  v149 = v65;
  v150 = v179;
  v151 = v74;
  v152 = v100;
  v153 = v68;
  v154 = v72;
  v33 = v71;
  v155 = v70;
LABEL_8:
  v156 = v33;
  v157 = v69;
  return sub_2142FF8EC(&v115);
}

uint64_t sub_2141B09D0(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9089B8, &qword_2146F5260);
  v28 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v5 = *(v1 + 24);
  v6 = *(v1 + 56);
  v7 = *(v1 + 64);
  v26 = *(v1 + 96);
  v27 = v6;
  v31 = *(v1 + 104);
  v8 = *(v1 + 128);
  v24 = *(v1 + 136);
  v25 = v8;
  v9 = *(v1 + 168);
  v22 = *(v1 + 176);
  v23 = v9;
  v21 = *(v1 + 208);
  LODWORD(v9) = *(v1 + 216);
  v19 = *(v1 + 217);
  v20 = v9;
  v18 = *(v1 + 219);
  v10 = *(v1 + 240);
  v16 = *(v1 + 248);
  v17 = v10;
  v11 = a1[3];
  v12 = a1;
  v14 = &v16 - v13;
  __swift_project_boxed_opaque_existential_1(v12, v11);
  sub_2142FF940();
  sub_2146DAA28();
  if (!v5)
  {
    goto LABEL_11;
  }

  LOBYTE(v29) = 0;

  sub_2146DA328();
  if (v2)
  {
    (*(v28 + 8))(v14, v4);
  }

  if (!v7 || (LOBYTE(v29) = 1, , sub_2146DA328(), , (v31 & 1) != 0) || (LOBYTE(v29) = 2, sub_2146DA368(), v24 == 1) || (v29 = v25, v30 = v24, v32 = 3, __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050), sub_214045AC0(), sub_2146DA388(), v22 == 1) || (v29 = v23, v30 = v22, v32 = 4, sub_2146DA388(), (v19 & 1) != 0) || (v29 = v21, LOBYTE(v30) = v20 & 1, v32 = 5, __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904798, qword_21473CFD0), sub_2142E1C30(), sub_2146DA388(), LOBYTE(v29) = v18, v32 = 6, sub_214063E30(), sub_2146DA388(), v16 == 1))
  {
LABEL_11:
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v29 = v17;
    v30 = v16;
    v32 = 7;
    sub_2146DA388();
    return (*(v28 + 8))(v14, v4);
  }

  return result;
}

uint64_t sub_2141B0E68@<X0>(uint64_t result@<X0>, char a2@<W1>, char a3@<W2>, _BYTE *a4@<X8>)
{
  *a4 = result;
  a4[1] = a2;
  a4[2] = a3;
  return result;
}

uint64_t sub_2141B0E78()
{
  v1 = 0x7363696C617469;
  if (*v0 != 1)
  {
    v1 = 0x6E696C7265646E75;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1684828002;
  }
}

uint64_t sub_2141B0ED0@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_214370918(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_2141B0EF8(uint64_t a1)
{
  v2 = sub_2142FF9F0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2141B0F34(uint64_t a1)
{
  v2 = sub_2142FF9F0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2141B0F70@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9089C0, &qword_2146F5268);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v13 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142FF9F0();
  sub_2146DAA08();
  if (!v2)
  {
    v17 = 0;
    v9 = sub_2146DA178();
    v16 = 1;
    v14 = sub_2146DA178();
    v15 = 2;
    v11 = sub_2146DA178();
    (*(v6 + 8))(v8, v5);
    v12 = v14 & 1;
    *a2 = v9 & 1;
    a2[1] = v12;
    a2[2] = v11 & 1;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_2141B1148(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9089D0, &qword_2146F5270);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v9 - v6;
  v9[6] = *(v1 + 1);
  v9[3] = *(v1 + 2);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142FF9F0();
  sub_2146DAA28();
  v12 = 0;
  sub_2146DA338();
  if (v2)
  {
    return (*(v5 + 8))(v7, v4);
  }

  v11 = 1;
  sub_2146DA338();
  v10 = 2;
  sub_2146DA338();
  return (*(v5 + 8))(v7, v4);
}

BlastDoor::MBDRichCards __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> MBDRichCards.init(with:urlToTransferMap:)(Swift::OpaquePointer with, BlastDoor::MBDUrlToTransferMap_optional urlToTransferMap)
{
  v3 = *urlToTransferMap.value.urlToTransferGuids._rawValue;
  v2->_rawValue = with._rawValue;
  v2[1]._rawValue = v3;
  result.urlToTransferMap = urlToTransferMap;
  result.cards = with;
  return result;
}

uint64_t sub_2141B1340()
{
  if (*v0)
  {
    return 0xD000000000000010;
  }

  else
  {
    return 0x7364726163;
  }
}

uint64_t sub_2141B137C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x7364726163 && a2 == 0xE500000000000000;
  if (v6 || (sub_2146DA6A8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000214788010 == a2)
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

uint64_t sub_2141B145C(uint64_t a1)
{
  v2 = sub_2142FFA44();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2141B1498(uint64_t a1)
{
  v2 = sub_2142FFA44();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MBDRichCards.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9089D8, &qword_2146F5278);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v12 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142FFA44();
  sub_2146DAA08();
  if (!v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9089E8, &qword_2146F5280);
    v13 = 0;
    sub_2142FFA98();
    sub_2146DA1C8();
    v9 = v14;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908A00, &qword_2146F5288);
    v13 = 1;
    sub_2142FFB70();
    sub_2146DA1C8();
    (*(v6 + 8))(v8, v5);
    v10 = v14;
    *a2 = v9;
    a2[1] = v10;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t MBDRichCards.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908A18, &qword_2146F5290);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v10 - v6;
  v8 = *v1;
  v10 = v1[1];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142FFA44();

  sub_2146DAA28();
  v12 = v8;
  v11 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9089E8, &qword_2146F5280);
  sub_2142FFC48();
  sub_2146DA388();

  if (!v2)
  {
    v12 = v10;
    v11 = 1;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908A00, &qword_2146F5288);
    sub_2142FFD20();
    sub_2146DA388();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_2141B190C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000012 && 0x80000002147957A0 == a2)
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

uint64_t sub_2141B19A0(uint64_t a1)
{
  v2 = sub_2142FFDF8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2141B19DC(uint64_t a1)
{
  v2 = sub_2142FFDF8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2141B1A18@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908A40, &unk_2146F5298);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v10 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142FFDF8();
  sub_2146DAA08();
  if (!v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904CA0, &qword_2146EE770);
    sub_2142FFE4C(&qword_27C908A50, MEMORY[0x277D83808], MEMORY[0x277D83528]);
    sub_2146DA1C8();
    (*(v6 + 8))(v8, v5);
    *a2 = v10[1];
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_2141B1BBC(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908A58, &qword_2146F52A8);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v9 - v5;
  v7 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142FFDF8();

  sub_2146DAA28();
  v9[1] = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904CA0, &qword_2146EE770);
  sub_2142FFE4C(&qword_27C908A60, MEMORY[0x277D837D8], MEMORY[0x277D83508]);
  sub_2146DA388();

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_2141B1DA0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x73656C7572 && a2 == 0xE500000000000000)
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

uint64_t sub_2141B1E24(uint64_t a1)
{
  v2 = sub_2142FFEB8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2141B1E60(uint64_t a1)
{
  v2 = sub_2142FFEB8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t StyleSheet.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908A68, &qword_2146F52B0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v10 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142FFEB8();
  sub_2146DAA08();
  if (!v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908A78, &qword_2146F52B8);
    sub_2142FFF0C();
    sub_2146DA1C8();
    (*(v6 + 8))(v8, v5);
    *a2 = v10[1];
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t StyleSheet.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908A90, &qword_2146F52C0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v9 - v5;
  v7 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142FFEB8();

  sub_2146DAA28();
  v9[1] = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908A78, &qword_2146F52B8);
  sub_2142FFFE4();
  sub_2146DA388();

  return (*(v4 + 8))(v6, v3);
}

__n128 sub_2141B21C0@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v8 = *(a7 + 32);
  *a8 = a1;
  *(a8 + 8) = a2;
  *(a8 + 16) = a3;
  *(a8 + 24) = a4;
  *(a8 + 32) = a5;
  *(a8 + 40) = a6;
  result = *a7;
  v10 = *(a7 + 16);
  *(a8 + 48) = *a7;
  *(a8 + 64) = v10;
  *(a8 + 80) = v8;
  return result;
}

uint64_t sub_2141B21E0()
{
  v1 = 0x54746E65746E6F63;
  v2 = 0x4C746E65746E6F63;
  if (*v0 != 2)
  {
    v2 = 0x746E65746E6F63;
  }

  if (*v0)
  {
    v1 = 0x49746E65746E6F63;
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

uint64_t sub_2141B2274@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_214370A38(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_2141B229C(uint64_t a1)
{
  v2 = sub_2143000BC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2141B22D8(uint64_t a1)
{
  v2 = sub_2143000BC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2141B2314@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908AA8, &qword_2146F52C8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v19 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2143000BC();
  sub_2146DAA08();
  if (!v2)
  {
    v22 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
    v26 = 0;
    sub_2142E12FC();
    sub_2146DA1C8();
    v9 = *(&v23 + 1);
    v21 = v23;
    v26 = 1;
    sub_2146DA1C8();
    v20 = v9;
    v19 = *(&v23 + 1);
    v10 = v23;
    v26 = 2;
    sub_2146DA1C8();
    v11 = v10;
    v12 = v23;
    v26 = 3;
    sub_21405D0D0();
    sub_2146DA1C8();
    (*(v6 + 8))(v8, v5);
    v14 = v25;
    v15 = v22;
    v16 = v20;
    *v22 = v21;
    v15[1] = v16;
    v17 = v19;
    v15[2] = v11;
    v15[3] = v17;
    *(v15 + 2) = v12;
    v18 = v24;
    *(v15 + 3) = v23;
    *(v15 + 4) = v18;
    *(v15 + 80) = v14;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_2141B260C(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908AB0, &qword_2146F52D0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v17 - v5;
  v8 = *v1;
  v7 = *(v1 + 8);
  v9 = *(v1 + 16);
  v23 = *(v1 + 24);
  v24 = v9;
  v10 = *(v1 + 32);
  v21 = *(v1 + 40);
  v22 = v10;
  v11 = *(v1 + 48);
  v12 = *(v1 + 56);
  v13 = *(v1 + 72);
  v19 = *(v1 + 64);
  v20 = v12;
  v17 = v11;
  v18 = v13;
  v31 = *(v1 + 80);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2143000BC();

  sub_2146DAA28();
  v26 = v8;
  v27 = v7;
  v32 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
  sub_214045AC0();
  v14 = v25;
  sub_2146DA388();
  if (v14)
  {
  }

  else
  {
    v15 = v22;

    v26 = v24;
    v27 = v23;
    v32 = 1;
    sub_2146DA388();
    v26 = v15;
    v27 = v21;
    v32 = 2;
    sub_2146DA388();
    v26 = v17;
    v27 = v20;
    v28 = v19;
    v29 = v18;
    v30 = v31;
    v32 = 3;
    sub_214300110(v17, v20, v19, v18, v31);
    sub_21405D124();
    sub_2146DA388();
    sub_2143001FC(v26, v27, v28, v29, v30);
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_2141B28D0@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t sub_2141B28F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000014 && 0x80000002147957C0 == a2)
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

uint64_t sub_2141B2988(uint64_t a1)
{
  v2 = sub_2143002E4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2141B29C4(uint64_t a1)
{
  v2 = sub_2143002E4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2141B2A00@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908AB8, &qword_2146F52D8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v10 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2143002E4();
  sub_2146DAA08();
  if (!v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
    sub_2142E12FC();
    sub_2146DA1C8();
    (*(v6 + 8))(v8, v5);
    *a2 = v10;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_2141B2BC8(void *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void), uint64_t a5)
{
  v14 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v13 - v9;
  v11 = v5[1];
  v13 = *v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v14();

  sub_2146DAA28();
  v15 = v13;
  v16 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
  sub_214045AC0();
  sub_2146DA388();

  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_2141B2D7C@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2 = *(result + 8);
  *a2 = *result;
  *(a2 + 8) = v2;
  return result;
}

uint64_t sub_2141B2DA8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x7473694C70696863 && a2 == 0xE800000000000000)
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

uint64_t sub_2141B2E30(uint64_t a1)
{
  v2 = sub_214300338();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2141B2E6C(uint64_t a1)
{
  v2 = sub_214300338();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2141B2EA8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908AD0, &qword_2146F52E8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v11 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214300338();
  sub_2146DAA08();
  if (!v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908928, &qword_2146F5230);
    sub_2142FF374();
    sub_2146DA1C8();
    (*(v6 + 8))(v8, v5);
    v9 = v12;
    *a2 = v11;
    *(a2 + 8) = v9;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}