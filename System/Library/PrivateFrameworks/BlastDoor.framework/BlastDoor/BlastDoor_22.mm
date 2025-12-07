__n128 sub_214203AC8@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, __int128 a10, __n128 a11, uint64_t a12, uint64_t a13)
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
  *(a9 + 104) = a13;
  return result;
}

uint64_t sub_214203AEC()
{
  v1 = *v0;
  if (v1 <= 2)
  {
    v5 = 0x6D614E6E65766967;
    if (v1 != 1)
    {
      v5 = 0xD000000000000015;
    }

    if (*v0)
    {
      return v5;
    }

    else
    {
      return 0x614E796C696D6166;
    }
  }

  else
  {
    v2 = 0xD000000000000013;
    if (v1 == 5)
    {
      v2 = 0xD000000000000018;
    }

    v3 = 0xD000000000000015;
    if (v1 != 3)
    {
      v3 = 0xD000000000000010;
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

uint64_t sub_214203BE0@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_214377F04(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_214203C08(uint64_t a1)
{
  v2 = sub_214309940();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_214203C44(uint64_t a1)
{
  v2 = sub_214309940();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_214203C80@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C909C80, &qword_2146F5A50);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v30 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214309940();
  sub_2146DAA08();
  if (!v2)
  {
    LOBYTE(v42) = 0;
    v9 = sub_2146DA168();
    v11 = v10;
    v12 = v9;
    LOBYTE(v42) = 1;
    v38 = sub_2146DA168();
    v39 = v12;
    v40 = v13;
    v41 = v11;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
    v44 = 2;
    sub_2142E12FC();
    sub_2146DA1C8();
    v14 = v43;
    v37 = v42;
    v44 = 3;
    sub_2146DA1C8();
    v16 = v42;
    v15 = v43;
    LOBYTE(v42) = 4;
    v33 = sub_2146DA168();
    v34 = v16;
    v35 = v17;
    v36 = v15;
    LOBYTE(v42) = 5;
    v18 = sub_2146DA168();
    v20 = v19;
    v31 = v18;
    LOBYTE(v42) = 6;
    v21 = sub_2146DA168();
    v32 = v22;
    v24 = v21;
    (*(v6 + 8))(v8, v5);
    v25 = v41;
    *a2 = v39;
    a2[1] = v25;
    v26 = v40;
    a2[2] = v38;
    a2[3] = v26;
    a2[4] = v37;
    a2[5] = v14;
    v27 = v36;
    a2[6] = v34;
    a2[7] = v27;
    v28 = v35;
    a2[8] = v33;
    a2[9] = v28;
    v29 = v32;
    a2[10] = v31;
    a2[11] = v20;
    a2[12] = v24;
    a2[13] = v29;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_214204094(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C909C90, &qword_2146F5A58);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v19 - v5;
  v7 = v1[2];
  v24 = v1[3];
  v25 = v7;
  v8 = v1[4];
  v22 = v1[5];
  v23 = v8;
  v9 = v1[6];
  v20 = v1[7];
  v21 = v9;
  v10 = v1[9];
  v19[5] = v1[8];
  v19[6] = v10;
  v11 = v1[11];
  v19[3] = v1[10];
  v19[4] = v11;
  v12 = v1[13];
  v19[1] = v1[12];
  v19[2] = v12;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214309940();
  sub_2146DAA28();
  LOBYTE(v27) = 0;
  v13 = v26;
  sub_2146DA328();
  if (v13)
  {
    return (*(v4 + 8))(v6, v3);
  }

  v16 = v22;
  v15 = v23;
  v17 = v20;
  v18 = v21;
  LOBYTE(v27) = 1;
  sub_2146DA328();
  v27 = v15;
  v28 = v16;
  v29 = 2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
  sub_214045AC0();
  sub_2146DA388();
  v27 = v18;
  v28 = v17;
  v29 = 3;
  sub_2146DA388();
  LOBYTE(v27) = 4;
  sub_2146DA328();
  LOBYTE(v27) = 5;
  sub_2146DA328();
  LOBYTE(v27) = 6;
  sub_2146DA328();
  return MEMORY[8](v6, v3);
}

uint64_t sub_214204408(uint64_t a1)
{
  v2 = sub_214309994();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_214204444(uint64_t a1)
{
  v2 = sub_214309994();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_214204480@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v14 = a2;
  v4 = type metadata accessor for EncodedAppData.EncodedContent(0);
  MEMORY[0x28223BE20](v4);
  v15 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C909C98, &qword_2146F5A60);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v13 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214309994();
  sub_2146DAA08();
  if (!v2)
  {
    v10 = v14;
    sub_214328930(&qword_27C906AB8, type metadata accessor for EncodedAppData.EncodedContent, aIq_0);
    v11 = v15;
    sub_2146DA1C8();
    (*(v7 + 8))(v9, v6);
    sub_214328704(v11, v10, type metadata accessor for EncodedAppData.EncodedContent);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_21420468C(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C909CA8, &qword_2146F5A68);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214309994();
  sub_2146DAA28();
  type metadata accessor for EncodedAppData.EncodedContent(0);
  sub_214328930(&qword_27C906AC8, type metadata accessor for EncodedAppData.EncodedContent, byte_2147030C8);
  sub_2146DA388();
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_21420481C(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C909CA8, &qword_2146F5A68);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214309994();
  sub_2146DAA28();
  type metadata accessor for EncodedAppData.EncodedContent(0);
  sub_214328930(&qword_27C906AC8, type metadata accessor for EncodedAppData.EncodedContent, byte_2147030C8);
  sub_2146DA388();
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_214204994@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t sub_21420499C(uint64_t a1)
{
  v2 = sub_2143099E8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2142049D8(uint64_t a1)
{
  v2 = sub_2143099E8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_214204ADC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x746E65746E6F63 && a2 == 0xE700000000000000)
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

uint64_t sub_214204B64(uint64_t a1)
{
  v2 = sub_214309A3C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_214204BA0(uint64_t a1)
{
  v2 = sub_214309A3C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_214204BDC@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v12 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C909CC8, &qword_2146F5A80);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v11[-v6 - 8];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214309A3C();
  sub_2146DAA08();
  if (!v2)
  {
    v8 = v12;
    sub_214309A90();
    sub_2146DA1C8();
    (*(v5 + 8))(v7, v4);
    memcpy(v8, v11, 0x1DAuLL);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_214204D5C(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C909CE0, &qword_2146F5A88);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214309A3C();
  sub_2146DAA28();
  sub_214309AE4();
  sub_2146DA388();
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_214204EB4(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C909CE0, &qword_2146F5A88);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214309A3C();
  sub_2146DAA28();
  sub_214309AE4();
  sub_2146DA388();
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_214204FF4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
{
  LOWORD(v37[0]) = 0;
  sub_2140615D0(v37);
  v6 = v37[8];
  v7 = v37[10];
  v8 = v37[11];
  *(a4 + 392) = v37[9];
  *(a4 + 408) = v7;
  *(a4 + 424) = v8;
  v9 = v37[4];
  v10 = v37[6];
  v11 = v37[7];
  *(a4 + 328) = v37[5];
  *(a4 + 344) = v10;
  *(a4 + 360) = v11;
  *(a4 + 376) = v6;
  v12 = v37[1];
  *(a4 + 248) = v37[0];
  v13 = v37[2];
  v14 = v37[3];
  *(a4 + 264) = v12;
  *(a4 + 280) = v13;
  *(a4 + 296) = v14;
  *(a4 + 312) = v9;
  *(a4 + 240) = 0;
  *(a4 + 208) = 0u;
  *(a4 + 224) = 0u;
  *(a4 + 176) = 0u;
  *(a4 + 192) = 0u;
  *(a4 + 144) = 0u;
  *(a4 + 160) = 0u;
  *(a4 + 112) = 0u;
  *(a4 + 128) = 0u;
  *(a4 + 80) = 0u;
  *(a4 + 96) = 0u;
  *(a4 + 48) = 0u;
  *(a4 + 64) = 0u;
  *(a4 + 16) = 0u;
  *(a4 + 32) = 0u;
  *a4 = 0u;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v16 = swift_allocObject();
  *(v16 + 16) = sub_214309B38;
  *(v16 + 24) = 0;
  *(inited + 32) = v16;
  sub_214042B80(inited, a4 + 440);
  v17 = *(a4 + 440);
  v18 = *(a4 + 448);
  v19 = *(a4 + 464);
  v31 = *(a4 + 456);
  v20 = *(a4 + 472);
  v35[3] = 0x800000021478A360;
  v36[0] = a2;
  v36[1] = a3;
  v38 = v20;
  v39 = v20;
  v35[0] = 0xD00000000000002ELL;
  v35[1] = 0x8000000214790EC0;
  v35[2] = 0xD00000000000001CLL;

  v21 = v17(v36, &v39, v35);
  if (v33)
  {
  }

  else
  {
    if (v21)
    {

      *(a4 + 440) = v17;
      *(a4 + 448) = v18;
      *(a4 + 456) = a2;
      *(a4 + 464) = a3;
      *(a4 + 472) = v38;
      result = sub_213FB2DF4(a4, &qword_27C904858, &qword_214736F00);
      v23 = *(a1 + 208);
      *(a4 + 192) = *(a1 + 192);
      *(a4 + 208) = v23;
      *(a4 + 224) = *(a1 + 224);
      *(a4 + 240) = *(a1 + 240);
      v24 = *(a1 + 144);
      *(a4 + 128) = *(a1 + 128);
      *(a4 + 144) = v24;
      v25 = *(a1 + 176);
      *(a4 + 160) = *(a1 + 160);
      *(a4 + 176) = v25;
      v26 = *(a1 + 80);
      *(a4 + 64) = *(a1 + 64);
      *(a4 + 80) = v26;
      v27 = *(a1 + 112);
      *(a4 + 96) = *(a1 + 96);
      *(a4 + 112) = v27;
      v28 = *(a1 + 16);
      *a4 = *a1;
      *(a4 + 16) = v28;
      v29 = *(a1 + 48);
      *(a4 + 32) = *(a1 + 32);
      *(a4 + 48) = v29;
      return result;
    }

    sub_214031C4C();
    swift_allocError();
    *v30 = 0xD00000000000002ELL;
    v30[1] = 0x8000000214790EC0;
    v30[2] = 0xD00000000000001CLL;
    v30[3] = 0x800000021478A360;
    swift_willThrow();
  }

  sub_21406D2CC(a1);

  *(a4 + 440) = v17;
  *(a4 + 448) = v18;
  *(a4 + 456) = v31;
  *(a4 + 464) = v19;
  *(a4 + 472) = v38;
  return sub_214309B44(a4);
}

uint64_t sub_214205330()
{
  if (*v0)
  {
    return 0x6C616E696769726FLL;
  }

  else
  {
    return 0x6567616D69;
  }
}

uint64_t sub_214205374@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6567616D69 && a2 == 0xE500000000000000;
  if (v6 || (sub_2146DA6A8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6C616E696769726FLL && a2 == 0xEF65707954495455)
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

uint64_t sub_214205454(uint64_t a1)
{
  v2 = sub_214309B98();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_214205490(uint64_t a1)
{
  v2 = sub_214309B98();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2142054CC@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C909CF0, &qword_2146F5A90);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v22 - v7;
  v9 = a1[3];
  v29 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v9);
  sub_214309B98();
  sub_2146DAA08();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(v29);
  }

  v28 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905500, &qword_2146F2BE0);
  LOBYTE(v30[0]) = 0;
  sub_21432076C(&qword_280B30CB8, &qword_27C905500, &qword_2146F2BE0, aI_83);
  sub_2146DA1C8();
  v36[1] = 1;
  v10 = sub_2146DA168();
  v11 = v6;
  v27 = v5;
  LOWORD(v32[0]) = 0;
  v13 = v10;
  v24 = v14;
  sub_2140615D0(v32);
  *&v34[49] = v32[9];
  *&v34[51] = v32[10];
  *&v34[53] = v32[11];
  *&v34[41] = v32[5];
  *&v34[43] = v32[6];
  *&v34[45] = v32[7];
  *&v34[47] = v32[8];
  *&v34[33] = v32[1];
  *&v34[35] = v32[2];
  *&v34[37] = v32[3];
  *&v34[39] = v32[4];
  *&v34[31] = v32[0];
  memset(v34, 0, 248);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v16 = swift_allocObject();
  *(v16 + 16) = sub_21438F650;
  *(v16 + 24) = 0;
  *(v15 + 32) = v16;
  sub_214042B80(v15, &v34[55]);
  v17 = v34[55];
  v18 = v34[56];
  v22 = v13;
  v23 = v34[57];
  v31[0] = v13;
  v19 = v24;
  v31[1] = v24;
  v35 = LOBYTE(v34[59]);
  v36[0] = v34[59];
  v30[0] = 0xD00000000000002ELL;
  v30[1] = 0x8000000214790EC0;
  v30[2] = 0xD00000000000001CLL;
  v30[3] = 0x800000021478A360;
  v25 = v34[58];

  v26 = v17;
  v20 = v17(v31, v36, v30);
  if (v20)
  {

    (*(v11 + 8))(v8, v27);

    v34[55] = v26;
    v34[56] = v18;
    v34[57] = v22;
    v34[58] = v19;
    LOBYTE(v34[59]) = v35;
    memcpy(v30, v33, sizeof(v30));
    sub_213FB2DF4(v34, &qword_27C905500, &qword_2146F2BE0);
    memcpy(v34, v30, 0x1B8uLL);
    memcpy(v28, v34, 0x1D9uLL);
    return __swift_destroy_boxed_opaque_existential_1(v29);
  }

  sub_214031C4C();
  swift_allocError();
  *v21 = 0xD00000000000002ELL;
  v21[1] = 0x8000000214790EC0;
  v21[2] = 0xD00000000000001CLL;
  v21[3] = 0x800000021478A360;
  swift_willThrow();

  sub_213FB2DF4(v33, &qword_27C905500, &qword_2146F2BE0);
  (*(v11 + 8))(v8, v27);

  v34[55] = v26;
  v34[56] = v18;
  v34[57] = v23;
  v34[58] = v25;
  LOBYTE(v34[59]) = v35;
  __swift_destroy_boxed_opaque_existential_1(v29);
  return sub_214309B44(v34);
}

uint64_t sub_214205A5C(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C909D00, &qword_2146F5A98);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v10[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214309B98();
  sub_2146DAA28();
  v10[15] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905500, &qword_2146F2BE0);
  sub_21432076C(qword_280B2E688, &qword_27C905500, &qword_2146F2BE0, byte_214738EE8);
  sub_2146DA388();
  if (v2)
  {
    return (*(v6 + 8))(v8, v5);
  }

  if (*(v3 + 464))
  {
    v10[14] = 1;

    sub_2146DA328();
    (*(v6 + 8))(v8, v5);
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

uint64_t sub_214205CC0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 1635017060 && a2 == 0xE400000000000000)
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

uint64_t sub_214205D48(uint64_t a1)
{
  v2 = sub_214309BEC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_214205D84(uint64_t a1)
{
  v2 = sub_214309BEC();

  return MEMORY[0x2821FE720](a1, v2);
}

BlastDoor::Handwriting::DrawingStrokePoint __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> Handwriting.DrawingStrokePoint.init(with:force:velocity:)(CGPoint with, Swift::Double force, Swift::Double velocity)
{
  *v3 = with.x;
  v3[1] = with.y;
  v3[2] = force;
  v3[3] = velocity;
  result.location.y = with.y;
  result.location.x = with.x;
  result.velocity = velocity;
  result.force = force;
  return result;
}

uint64_t sub_214205E84()
{
  v1 = 0x6563726F66;
  if (*v0 != 1)
  {
    v1 = 0x797469636F6C6576;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6E6F697461636F6CLL;
  }
}

uint64_t sub_214205EDC@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_214378160(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_214205F04(uint64_t a1)
{
  v2 = sub_214309C40();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_214205F40(uint64_t a1)
{
  v2 = sub_214309C40();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t Handwriting.DrawingStrokePoint.init(from:)@<X0>(void *a1@<X0>, double *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C909D20, &qword_2146F5AB0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v16 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214309C40();
  sub_2146DAA08();
  if (!v2)
  {
    type metadata accessor for CGPoint(0);
    v17 = 0;
    sub_214328930(&qword_27C9058B8, type metadata accessor for CGPoint, MEMORY[0x277CBF2B8]);
    sub_2146DA1C8();
    v9 = v16[0];
    v10 = v16[1];
    LOBYTE(v16[0]) = 1;
    sub_2146DA188();
    v13 = v12;
    LOBYTE(v16[0]) = 2;
    sub_2146DA188();
    v15 = v14;
    (*(v6 + 8))(v8, v5);
    *a2 = v9;
    *(a2 + 1) = v10;
    *(a2 + 2) = v13;
    *(a2 + 3) = v15;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t Handwriting.DrawingStrokePoint.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C909D30, &qword_2146F5AB8);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v11[-v6];
  v8 = *v1;
  v9 = v1[1];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214309C40();
  sub_2146DAA28();
  v12 = v8;
  v13 = v9;
  v11[15] = 0;
  type metadata accessor for CGPoint(0);
  sub_214328930(&qword_27C9058D0, type metadata accessor for CGPoint, MEMORY[0x277CBF2A8]);
  sub_2146DA388();
  if (!v2)
  {
    LOBYTE(v12) = 1;
    sub_2146DA348();
    LOBYTE(v12) = 2;
    sub_2146DA348();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_2142063FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6F50656B6F727473 && a2 == 0xEC00000073746E69)
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

uint64_t sub_214206488(uint64_t a1)
{
  v2 = sub_214309C94();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2142064C4(uint64_t a1)
{
  v2 = sub_214309C94();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t Handwriting.DrawingStroke.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C909D38, &qword_2146F5AC0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v10 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214309C94();
  sub_2146DAA08();
  if (!v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C909D48, &qword_2146F5AC8);
    sub_214309CE8();
    sub_2146DA1C8();
    (*(v6 + 8))(v8, v5);
    *a2 = v10[1];
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t Handwriting.DrawingStroke.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C909D60, &qword_2146F5AD0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v9 - v5;
  v7 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214309C94();

  sub_2146DAA28();
  v9[1] = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C909D48, &qword_2146F5AC8);
  sub_214309DC0();
  sub_2146DA388();

  return (*(v4 + 8))(v6, v3);
}

void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> Handwriting.Drawing.init(with:strokesFrame:strokes:totalPoints:)(BlastDoor::Handwriting::Drawing *__return_ptr retstr, __C::CGRect with, __C::CGRect strokesFrame, Swift::OpaquePointer strokes, Swift::Int totalPoints)
{
  retstr->canvasBounds = with;
  retstr->strokesFrame = strokesFrame;
  retstr->strokes = strokes;
  retstr->totalPoints = totalPoints;
}

uint64_t sub_21420683C()
{
  v1 = 0x6F427361766E6163;
  v2 = 0x73656B6F727473;
  if (*v0 != 2)
  {
    v2 = 0x696F506C61746F74;
  }

  if (*v0)
  {
    v1 = 0x4673656B6F727473;
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

uint64_t sub_2142068D0@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_214378274(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_2142068F8(uint64_t a1)
{
  v2 = sub_214309E98();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_214206934(uint64_t a1)
{
  v2 = sub_214309E98();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t Handwriting.Drawing.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C909D78, &qword_2146F5AD8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v14 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214309E98();
  sub_2146DAA08();
  if (!v2)
  {
    type metadata accessor for CGRect(0);
    v20 = 0;
    sub_214328930(&qword_27C9083F0, type metadata accessor for CGRect, MEMORY[0x277CBF280]);
    sub_2146DA1C8();
    v16 = v18;
    v17 = v19;
    v20 = 1;
    sub_2146DA1C8();
    v14 = v18;
    v15 = v19;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C909D88, &qword_2146F5AE0);
    v20 = 2;
    sub_214309EEC();
    sub_2146DA1C8();
    v10 = v18;
    LOBYTE(v18) = 3;
    v11 = sub_2146DA1A8();
    (*(v6 + 8))(v8, v5);
    v12 = v17;
    *a2 = v16;
    *(a2 + 16) = v12;
    v13 = v15;
    *(a2 + 32) = v14;
    *(a2 + 48) = v13;
    *(a2 + 64) = v10;
    *(a2 + 72) = v11;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t Handwriting.Drawing.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C909DA0, &qword_2146F5AE8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v13 - v7;
  v9 = v3[2];
  v15 = v3[3];
  v16 = v9;
  v14 = *(v3 + 8);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214309E98();
  sub_2146DAA28();
  v10 = v3[1];
  v17 = *v3;
  v18 = v10;
  v19 = 0;
  type metadata accessor for CGRect(0);
  sub_214328930(&qword_27C908438, type metadata accessor for CGRect, MEMORY[0x277CBF268]);
  sub_2146DA388();
  if (!v2)
  {
    v12 = v14;
    v17 = v16;
    v18 = v15;
    v19 = 1;
    sub_2146DA388();
    *&v17 = v12;
    v19 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C909D88, &qword_2146F5AE0);
    sub_214309FC4();
    sub_2146DA388();
    LOBYTE(v17) = 3;
    sub_2146DA368();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_214206ED8@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t (*a4)(void, void, void)@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11)
{
  v97 = a4;
  v12 = type metadata accessor for IDSActivitySharingInvitation.SecureCloudInviteRequest(0);
  sub_213FB2E54(a10, a9 + *(v12 + 32), &qword_27C909DB8, &qword_2146F5AF0);
  sub_2145ED9D0(&v93);
  v68 = v95;
  v69 = v94;
  v13 = v96;
  sub_2145EDA04(&v89);
  v15 = v90;
  v14 = v91;
  v16 = v92;
  sub_2145EDA38(&v85);
  v18 = v86;
  v17 = v87;
  v19 = v88;
  sub_2145EDA74(&v80);
  v20 = v81;
  v21 = v82;
  v22 = v83;
  v23 = v84;
  *a9 = a1;
  *(a9 + 8) = a2 & 1;
  *(a9 + 16) = v93;
  *(a9 + 32) = v69;
  *(a9 + 40) = v68;
  *(a9 + 48) = v13;
  *(a9 + 56) = v89;
  *(a9 + 72) = v15;
  *(a9 + 80) = v14;
  *(a9 + 88) = v16;
  *(a9 + 96) = v85;
  *(a9 + 112) = v18;
  *(a9 + 120) = v17;
  *(a9 + 128) = v19;
  v24 = a9 + *(v12 + 36);
  *v24 = v80;
  *(v24 + 20) = v21;
  *(v24 + 16) = v20;
  *(v24 + 21) = v22;
  *(v24 + 22) = v23;
  v26 = *(a9 + 16);
  v25 = *(a9 + 24);
  v28 = *(a9 + 32);
  v27 = *(a9 + 40);
  LOBYTE(v20) = *(a9 + 48);
  *&v89 = a3;
  *(&v89 + 1) = v97;
  v73 = v20;
  LOBYTE(v85) = v20;
  *&v93 = 0xD000000000000044;
  *(&v93 + 1) = 0x8000000214790EF0;
  v94 = 0xD00000000000001CLL;
  v95 = 0x800000021478A360;

  sub_213FDC9D0(v28, v27);
  v29 = v26(&v89, &v85, &v93);
  if (v79)
  {

LABEL_6:

    sub_213FB2DF4(a10, &qword_27C909DB8, &qword_2146F5AF0);
    v40 = *(a9 + 32);
    v41 = *(a9 + 40);

    sub_213FDC6D0(v40, v41);
    *(a9 + 16) = v26;
    *(a9 + 24) = v25;
    *(a9 + 32) = v28;
    *(a9 + 40) = v27;
    *(a9 + 48) = v73;
    return sub_21432887C(a9, type metadata accessor for IDSActivitySharingInvitation.SecureCloudInviteRequest);
  }

  v70 = v24;
  if ((v29 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v39 = 0xD000000000000044;
    v39[1] = 0x8000000214790EF0;
    v39[2] = 0xD00000000000001CLL;
    v39[3] = 0x800000021478A360;
    swift_willThrow();
    goto LABEL_6;
  }

  sub_213FDC6D0(v28, v27);

  v30 = *(a9 + 32);
  v31 = *(a9 + 40);

  sub_213FDC6D0(v30, v31);
  *(a9 + 16) = v26;
  *(a9 + 24) = v25;
  v32 = v97;
  *(a9 + 32) = a3;
  *(a9 + 40) = v32;
  *(a9 + 48) = v73;
  v34 = *(a9 + 56);
  v33 = *(a9 + 64);
  v35 = *(a9 + 72);
  v36 = *(a9 + 80);
  v37 = *(a9 + 88);
  *&v89 = a5;
  *(&v89 + 1) = a6;
  LOBYTE(v85) = v37;
  *&v93 = 0xD000000000000040;
  *(&v93 + 1) = 0x8000000214790F40;
  v94 = 0xD00000000000001CLL;
  v95 = 0x800000021478A360;

  sub_213FDC9D0(v35, v36);
  v97 = v34;
  v38 = v34(&v89, &v85, &v93);
  if ((v38 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v52 = 0xD000000000000040;
    v52[1] = 0x8000000214790F40;
    v52[2] = 0xD00000000000001CLL;
    v52[3] = 0x800000021478A360;
    swift_willThrow();

    sub_213FB2DF4(a10, &qword_27C909DB8, &qword_2146F5AF0);
    v53 = *(a9 + 72);
    v54 = *(a9 + 80);

    sub_213FDC6D0(v53, v54);
    *(a9 + 56) = v97;
    *(a9 + 64) = v33;
    *(a9 + 72) = v35;
    *(a9 + 80) = v36;
    *(a9 + 88) = v37;
    return sub_21432887C(a9, type metadata accessor for IDSActivitySharingInvitation.SecureCloudInviteRequest);
  }

  sub_213FDC6D0(v35, v36);

  v43 = *(a9 + 72);
  v44 = *(a9 + 80);

  sub_213FDC6D0(v43, v44);
  *(a9 + 56) = v97;
  *(a9 + 64) = v33;
  *(a9 + 72) = a5;
  *(a9 + 80) = a6;
  *(a9 + 88) = v37;
  v46 = *(a9 + 96);
  v45 = *(a9 + 104);
  v47 = *(a9 + 112);
  v48 = *(a9 + 120);
  v49 = *(a9 + 128);
  *&v89 = a7;
  *(&v89 + 1) = a8;
  v77 = v49;
  LOBYTE(v85) = v49;
  *&v93 = 0xD000000000000041;
  *(&v93 + 1) = 0x8000000214790F90;
  v94 = 0xD00000000000001CLL;
  v95 = 0x800000021478A360;
  v50 = v47;

  sub_213FDC9D0(v50, v48);
  v97 = v46;
  v51 = v46(&v89, &v85, &v93);
  if ((v51 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v62 = 0xD000000000000041;
    v62[1] = 0x8000000214790F90;
    v62[2] = 0xD00000000000001CLL;
    v62[3] = 0x800000021478A360;
    swift_willThrow();

    sub_213FB2DF4(a10, &qword_27C909DB8, &qword_2146F5AF0);
    v63 = *(a9 + 112);
    v64 = *(a9 + 120);

    sub_213FDC6D0(v63, v64);
    *(a9 + 96) = v97;
    *(a9 + 104) = v45;
    *(a9 + 112) = v50;
    *(a9 + 120) = v48;
    *(a9 + 128) = v77;
    return sub_21432887C(a9, type metadata accessor for IDSActivitySharingInvitation.SecureCloudInviteRequest);
  }

  sub_213FDC6D0(v50, v48);

  v55 = *(a9 + 112);
  v56 = *(a9 + 120);

  sub_213FDC6D0(v55, v56);
  *(a9 + 96) = v97;
  *(a9 + 104) = v45;
  *(a9 + 112) = a7;
  *(a9 + 120) = a8;
  *(a9 + 128) = v77;
  v58 = *v70;
  v57 = *(v70 + 8);
  v78 = *(v70 + 20);
  v59 = *(v70 + 16);
  LODWORD(v97) = *(v70 + 21);
  v60 = *(v70 + 22);
  LODWORD(v89) = a11;
  BYTE4(v89) = (a11 & 0x100000000) != 0;
  LOBYTE(v85) = v60;
  *&v93 = 0xD00000000000003DLL;
  *(&v93 + 1) = 0x8000000214790FE0;
  v94 = 0xD00000000000001CLL;
  v95 = 0x800000021478A360;

  v61 = v58(&v89, &v85, &v93);
  if ((v61 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v65 = 0xD00000000000003DLL;
    v65[1] = 0x8000000214790FE0;
    v65[2] = 0xD00000000000001CLL;
    v65[3] = 0x800000021478A360;
    swift_willThrow();
    sub_213FB2DF4(a10, &qword_27C909DB8, &qword_2146F5AF0);

    *v70 = v58;
    *(v70 + 8) = v57;
    *(v70 + 20) = (v59 | (v78 << 32)) >> 32;
    *(v70 + 16) = v59;
    *(v70 + 21) = v97;
    *(v70 + 22) = v60;
    return sub_21432887C(a9, type metadata accessor for IDSActivitySharingInvitation.SecureCloudInviteRequest);
  }

  sub_213FB2DF4(a10, &qword_27C909DB8, &qword_2146F5AF0);

  *v70 = v58;
  *(v70 + 8) = v57;
  *(v70 + 20) = BYTE4(a11) & 1;
  *(v70 + 16) = a11;
  *(v70 + 21) = 0;
  *(v70 + 22) = v60;
  return result;
}

uint64_t sub_214207668()
{
  v1 = *v0;
  v2 = 1702125924;
  v3 = 0x6D754E646C697562;
  v4 = 0x6F666E4972657375;
  if (v1 != 4)
  {
    v4 = 0x6E6F6973726576;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x6B616873646E6168;
  if (v1 != 1)
  {
    v5 = 0x696669746E656469;
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

uint64_t sub_214207734@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_2143783E4(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_21420775C(uint64_t a1)
{
  v2 = sub_21430A09C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_214207798(uint64_t a1)
{
  v2 = sub_21430A09C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2142077D4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v112 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C909DB8, &qword_2146F5AF0);
  MEMORY[0x28223BE20](v3);
  v5 = &v96 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C909DC0, &qword_2146F5AF8);
  v113 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v96 - v7;
  v9 = type metadata accessor for IDSActivitySharingInvitation.SecureCloudInviteRequest(0);
  MEMORY[0x28223BE20](v9);
  v11 = &v96 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = a1[3];
  v132 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v12);
  sub_21430A09C();
  v13 = v114;
  sub_2146DAA08();
  if (v13)
  {
    return __swift_destroy_boxed_opaque_existential_1(v132);
  }

  v111 = v3;
  v114 = v5;
  v110 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9058A0, &unk_2147379A0);
  LOBYTE(v124) = 0;
  sub_2142E35EC();
  sub_2146DA1C8();
  v14 = v128;
  v15 = BYTE8(v128);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
  LOBYTE(v124) = 1;
  sub_2142E12FC();
  sub_2146DA1C8();
  LODWORD(v108) = v15;
  v109 = v14;
  v17 = v128;
  LOBYTE(v124) = 2;
  sub_2146DA1C8();
  v107 = v17;
  v18 = *(&v128 + 1);
  v106 = v128;
  LOBYTE(v124) = 3;
  sub_2146DA1C8();
  v105 = v18;
  v104 = *(&v17 + 1);
  v19 = v128;
  LOBYTE(v128) = 4;
  sub_21430A0F0();
  v20 = v114;
  sub_2146DA1C8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905AC0, &unk_2146F3F90);
  LOBYTE(v124) = 5;
  sub_2142E6128();
  sub_2146DA1C8();
  v111 = *(&v19 + 1);
  v98 = v19;
  v97 = v128;
  v96 = BYTE4(v128);
  v21 = v110;
  sub_213FB2E54(v20, &v110[*(v9 + 32)], &qword_27C909DB8, &qword_2146F5AF0);
  sub_2145ED9D0(&v128);
  v103 = v129;
  v102 = v130;
  LODWORD(v101) = v131;
  sub_2145EDA04(&v124);
  v22 = v125;
  v100 = v126;
  LODWORD(v99) = v127;
  sub_2145EDA38(&v120);
  v24 = v121;
  v23 = v122;
  v25 = v123;
  sub_2145EDA74(&v115);
  v26 = v116;
  v27 = v117;
  v28 = v118;
  v29 = v119;
  *v21 = v109;
  *(v21 + 8) = v108;
  *(v21 + 16) = v128;
  v30 = v102;
  *(v21 + 32) = v103;
  *(v21 + 40) = v30;
  *(v21 + 48) = v101;
  *(v21 + 56) = v124;
  *(v21 + 72) = v22;
  v31 = v21;
  *(v21 + 80) = v100;
  *(v21 + 88) = v99;
  *(v21 + 96) = v120;
  *(v21 + 112) = v24;
  *(v21 + 120) = v23;
  *(v21 + 128) = v25;
  v32 = v21 + *(v9 + 36);
  *v32 = v115;
  *(v32 + 20) = v27;
  *(v32 + 16) = v26;
  *(v32 + 21) = v28;
  *(v32 + 22) = v29;
  v34 = *(v21 + 16);
  v33 = *(v21 + 24);
  v35 = *(v21 + 32);
  v36 = *(v21 + 40);
  v37 = *(v21 + 48);
  *&v124 = v107;
  *(&v124 + 1) = v104;
  LODWORD(v108) = v37;
  LOBYTE(v120) = v37;
  *&v128 = 0xD000000000000044;
  *(&v128 + 1) = 0x8000000214790EF0;
  v101 = 0x8000000214790EF0;
  v129 = 0xD00000000000001CLL;
  v130 = 0x800000021478A360;

  v103 = v35;
  v102 = v36;
  sub_213FDC9D0(v35, v36);
  v38 = v33;
  v109 = v34;
  v39 = v34(&v124, &v120, &v128);
  v40 = v101;
  v99 = v32;
  v100 = 0x800000021478A360;
  if (v39)
  {
    sub_213FDC6D0(v103, v102);
    v41 = v100;

    v42 = *(v21 + 32);
    v43 = *(v21 + 40);

    sub_213FDC6D0(v42, v43);
    *(v21 + 16) = v109;
    *(v21 + 24) = v38;
    v44 = v104;
    *(v21 + 32) = v107;
    *(v21 + 40) = v44;
    *(v21 + 48) = v108;
    v46 = *(v21 + 56);
    v45 = *(v31 + 64);
    v47 = *(v31 + 72);
    v48 = *(v31 + 80);
    v49 = *(v31 + 88);
    *&v124 = v106;
    *(&v124 + 1) = v105;
    LODWORD(v108) = v49;
    LOBYTE(v120) = v49;
    *&v128 = 0xD000000000000040;
    *(&v128 + 1) = 0x8000000214790F40;
    v129 = 0xD00000000000001CLL;
    v130 = v41;

    v107 = v47;
    v104 = v48;
    sub_213FDC9D0(v47, v48);
    v109 = v46;
    v50 = v46(&v124, &v120, &v128);
    v51 = v111;
    v102 = v8;
    v103 = v6;
    if (v50)
    {
      sub_213FDC6D0(v107, v104);
      v57 = v100;

      v58 = *(v31 + 72);
      v59 = *(v31 + 80);

      sub_213FDC6D0(v58, v59);
      *(v31 + 56) = v109;
      *(v31 + 64) = v45;
      v60 = v105;
      *(v31 + 72) = v106;
      *(v31 + 80) = v60;
      *(v31 + 88) = v108;
      v61 = *(v31 + 96);
      v62 = *(v31 + 104);
      v63 = *(v31 + 112);
      v64 = *(v31 + 120);
      v65 = *(v31 + 128);
      *&v124 = v98;
      *(&v124 + 1) = v51;
      LODWORD(v109) = v65;
      LOBYTE(v120) = v65;
      *&v128 = 0xD000000000000041;
      *(&v128 + 1) = 0x8000000214790F90;
      v129 = 0xD00000000000001CLL;
      v130 = v57;

      sub_213FDC9D0(v63, v64);
      v108 = v61;
      v66 = v61(&v124, &v120, &v128);
      if (v66)
      {
        sub_213FDC6D0(v63, v64);
        v74 = v100;

        v75 = v110;
        v76 = *(v110 + 14);
        v77 = *(v110 + 15);

        sub_213FDC6D0(v76, v77);
        *(v75 + 96) = v108;
        *(v75 + 104) = v62;
        v78 = v111;
        *(v75 + 112) = v98;
        *(v75 + 120) = v78;
        *(v75 + 128) = v109;
        v80 = *v99;
        v79 = *(v99 + 8);
        v81 = *(v99 + 20);
        v82 = *(v99 + 16);
        v83 = *(v99 + 21);
        v84 = *(v99 + 22);
        LODWORD(v124) = v97;
        BYTE4(v124) = v96;
        LOBYTE(v120) = v84;
        *&v128 = 0xD00000000000003DLL;
        *(&v128 + 1) = 0x8000000214790FE0;
        v129 = 0xD00000000000001CLL;
        v130 = v74;

        v85 = v80(&v124, &v120, &v128);
        if (v85)
        {

          sub_213FB2DF4(v114, &qword_27C909DB8, &qword_2146F5AF0);
          (*(v113 + 8))(v102, v103);
          v90 = v96 != 0;
          v91 = v99;

          *v91 = v80;
          *(v91 + 8) = v79;
          *(v91 + 20) = v90;
          *(v91 + 16) = v97;
          *(v91 + 21) = 0;
          *(v91 + 22) = v84;
          sub_214328704(v110, v112, type metadata accessor for IDSActivitySharingInvitation.SecureCloudInviteRequest);
          return __swift_destroy_boxed_opaque_existential_1(v132);
        }

        sub_214031C4C();
        swift_allocError();
        *v92 = 0xD00000000000003DLL;
        v92[1] = 0x8000000214790FE0;
        v93 = v100;
        v92[2] = 0xD00000000000001CLL;
        v92[3] = v93;
        swift_willThrow();
        sub_213FB2DF4(v114, &qword_27C909DB8, &qword_2146F5AF0);
        (*(v113 + 8))(v102, v103);
        v94 = v82 | (v81 << 32);
        v95 = v99;

        *v95 = v80;
        *(v95 + 8) = v79;
        *(v95 + 20) = BYTE4(v94);
        *(v95 + 16) = v94;
        *(v95 + 21) = v83;
        *(v95 + 22) = v84;
        v31 = v110;
      }

      else
      {
        sub_214031C4C();
        swift_allocError();
        *v86 = 0xD000000000000041;
        v86[1] = 0x8000000214790F90;
        v87 = v100;
        v86[2] = 0xD00000000000001CLL;
        v86[3] = v87;
        swift_willThrow();

        sub_213FB2DF4(v114, &qword_27C909DB8, &qword_2146F5AF0);
        (*(v113 + 8))(v102, v103);
        v31 = v110;
        v88 = *(v110 + 14);
        v89 = *(v110 + 15);

        sub_213FDC6D0(v88, v89);
        *(v31 + 96) = v108;
        *(v31 + 104) = v62;
        *(v31 + 112) = v63;
        *(v31 + 120) = v64;
        *(v31 + 128) = v109;
      }
    }

    else
    {
      sub_214031C4C();
      swift_allocError();
      *v67 = 0xD000000000000040;
      v67[1] = 0x8000000214790F40;
      v68 = v100;
      v67[2] = 0xD00000000000001CLL;
      v67[3] = v68;
      swift_willThrow();

      v69 = v103;
      v70 = v102;
      sub_213FB2DF4(v114, &qword_27C909DB8, &qword_2146F5AF0);
      (*(v113 + 8))(v70, v69);
      v71 = *(v31 + 72);
      v72 = *(v31 + 80);

      sub_213FDC6D0(v71, v72);
      *(v31 + 56) = v109;
      *(v31 + 64) = v45;
      v73 = v104;
      *(v31 + 72) = v107;
      *(v31 + 80) = v73;
      *(v31 + 88) = v108;
    }
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v52 = 0xD000000000000044;
    v52[1] = v40;
    v53 = v100;
    v52[2] = 0xD00000000000001CLL;
    v52[3] = v53;
    swift_willThrow();

    sub_213FB2DF4(v114, &qword_27C909DB8, &qword_2146F5AF0);
    (*(v113 + 8))(v8, v6);
    v54 = *(v21 + 32);
    v55 = *(v21 + 40);

    sub_213FDC6D0(v54, v55);
    *(v31 + 16) = v109;
    *(v31 + 24) = v38;
    v56 = v102;
    *(v31 + 32) = v103;
    *(v31 + 40) = v56;
    *(v31 + 48) = v108;
  }

  __swift_destroy_boxed_opaque_existential_1(v132);
  return sub_21432887C(v31, type metadata accessor for IDSActivitySharingInvitation.SecureCloudInviteRequest);
}

uint64_t sub_214208710(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C909DE0, &qword_2146F5B00);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v17 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21430A09C();
  sub_2146DAA28();
  v9 = *(v3 + 8);
  v18 = *v3;
  LOBYTE(v19) = v9;
  v20 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9058A0, &unk_2147379A0);
  sub_2142E37F4();
  sub_2146DA388();
  if (v2)
  {
    return (*(v6 + 8))(v8, v5);
  }

  v10 = v3[5];
  if (v10 != 1)
  {
    v18 = v3[4];
    v19 = v10;
    v20 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
    sub_214045AC0();
    sub_2146DA388();
    v11 = v3[10];
    if (v11 != 1)
    {
      v18 = v3[9];
      v19 = v11;
      v20 = 2;
      sub_2146DA388();
      v12 = v3[15];
      if (v12 != 1)
      {
        v18 = v3[14];
        v19 = v12;
        v20 = 3;
        sub_2146DA388();
        v13 = type metadata accessor for IDSActivitySharingInvitation.SecureCloudInviteRequest(0);
        LOBYTE(v18) = 4;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C909DB8, &qword_2146F5AF0);
        sub_21430A1A4();
        sub_2146DA388();
        v14 = v3 + *(v13 + 36);
        if ((*(v14 + 21) & 1) == 0)
        {
          v15 = *(v14 + 20);
          LODWORD(v18) = *(v14 + 16);
          BYTE4(v18) = v15 & 1;
          v20 = 5;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905AC0, &unk_2146F3F90);
          sub_2142E62D8();
          sub_2146DA388();
          return (*(v6 + 8))(v8, v5);
        }
      }
    }
  }

  result = sub_2146DA018();
  __break(1u);
  return result;
}

uint64_t sub_214208AAC@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t (*a4)(void, void, void)@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, char *a10, uint64_t a11, uint64_t a12)
{
  v99 = a4;
  v74 = *a10;
  v73 = type metadata accessor for IDSActivitySharingInvitation.SecureCloudInviteResponse(0);
  sub_213FB2E54(a11, a9 + *(v73 + 36), &qword_27C909DB8, &qword_2146F5AF0);
  sub_2145EDC40(&v95);
  v13 = v97;
  v69 = v96;
  v14 = v98;
  sub_2145EDC74(&v91);
  v16 = v92;
  v15 = v93;
  v17 = v94;
  sub_2145EDCA8(&v87);
  v19 = v88;
  v18 = v89;
  v20 = v90;
  sub_2145EDCE4(&v82);
  v21 = v83;
  v22 = v84;
  v23 = v85;
  v24 = v86;
  *a9 = a1;
  *(a9 + 8) = a2 & 1;
  *(a9 + 16) = v95;
  *(a9 + 32) = v69;
  *(a9 + 40) = v13;
  *(a9 + 48) = v14;
  *(a9 + 56) = v91;
  *(a9 + 72) = v16;
  *(a9 + 80) = v15;
  *(a9 + 88) = v17;
  *(a9 + 96) = v87;
  *(a9 + 112) = v19;
  *(a9 + 120) = v18;
  *(a9 + 128) = v20;
  *(a9 + 129) = v74;
  v25 = a9 + *(v73 + 40);
  *v25 = v82;
  *(v25 + 20) = v22;
  *(v25 + 16) = v21;
  *(v25 + 21) = v23;
  *(v25 + 22) = v24;
  v27 = *(a9 + 16);
  v26 = *(a9 + 24);
  v29 = *(a9 + 32);
  v28 = *(a9 + 40);
  LOBYTE(v21) = *(a9 + 48);
  *&v91 = a3;
  *(&v91 + 1) = v99;
  v75 = v21;
  LOBYTE(v87) = v21;
  *&v95 = 0xD000000000000045;
  *(&v95 + 1) = 0x8000000214791020;
  v96 = 0xD00000000000001CLL;
  v97 = 0x800000021478A360;

  sub_213FDC9D0(v29, v28);
  v30 = v27(&v91, &v87, &v95);
  if (v81)
  {

LABEL_6:

    sub_213FB2DF4(a11, &qword_27C909DB8, &qword_2146F5AF0);
    v41 = *(a9 + 32);
    v42 = *(a9 + 40);

    sub_213FDC6D0(v41, v42);
    *(a9 + 16) = v27;
    *(a9 + 24) = v26;
    *(a9 + 32) = v29;
    *(a9 + 40) = v28;
    *(a9 + 48) = v75;
    return sub_21432887C(a9, type metadata accessor for IDSActivitySharingInvitation.SecureCloudInviteResponse);
  }

  v72 = v25;
  if ((v30 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v40 = 0xD000000000000045;
    v40[1] = 0x8000000214791020;
    v40[2] = 0xD00000000000001CLL;
    v40[3] = 0x800000021478A360;
    swift_willThrow();
    goto LABEL_6;
  }

  sub_213FDC6D0(v29, v28);

  v31 = *(a9 + 32);
  v32 = *(a9 + 40);

  sub_213FDC6D0(v31, v32);
  *(a9 + 16) = v27;
  *(a9 + 24) = v26;
  v33 = v99;
  *(a9 + 32) = a3;
  *(a9 + 40) = v33;
  *(a9 + 48) = v75;
  v35 = *(a9 + 56);
  v34 = *(a9 + 64);
  v36 = *(a9 + 72);
  v37 = *(a9 + 80);
  v38 = *(a9 + 88);
  *&v91 = a5;
  *(&v91 + 1) = a6;
  LOBYTE(v87) = v38;
  *&v95 = 0xD000000000000041;
  *(&v95 + 1) = 0x8000000214791070;
  v96 = 0xD00000000000001CLL;
  v97 = 0x800000021478A360;

  sub_213FDC9D0(v36, v37);
  v99 = v35;
  v39 = v35(&v91, &v87, &v95);
  if ((v39 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v53 = 0xD000000000000041;
    v53[1] = 0x8000000214791070;
    v53[2] = 0xD00000000000001CLL;
    v53[3] = 0x800000021478A360;
    swift_willThrow();

    sub_213FB2DF4(a11, &qword_27C909DB8, &qword_2146F5AF0);
    v54 = *(a9 + 72);
    v55 = *(a9 + 80);

    sub_213FDC6D0(v54, v55);
    *(a9 + 56) = v99;
    *(a9 + 64) = v34;
    *(a9 + 72) = v36;
    *(a9 + 80) = v37;
    *(a9 + 88) = v38;
    return sub_21432887C(a9, type metadata accessor for IDSActivitySharingInvitation.SecureCloudInviteResponse);
  }

  sub_213FDC6D0(v36, v37);

  v44 = *(a9 + 72);
  v45 = *(a9 + 80);

  sub_213FDC6D0(v44, v45);
  *(a9 + 56) = v99;
  *(a9 + 64) = v34;
  *(a9 + 72) = a5;
  *(a9 + 80) = a6;
  *(a9 + 88) = v38;
  v47 = *(a9 + 96);
  v46 = *(a9 + 104);
  v48 = *(a9 + 112);
  v49 = *(a9 + 120);
  v50 = *(a9 + 128);
  *&v91 = a7;
  *(&v91 + 1) = a8;
  v79 = v50;
  LOBYTE(v87) = v50;
  *&v95 = 0xD000000000000042;
  *(&v95 + 1) = 0x80000002147910C0;
  v96 = 0xD00000000000001CLL;
  v97 = 0x800000021478A360;
  v51 = v48;

  sub_213FDC9D0(v51, v49);
  v99 = v47;
  v52 = v47(&v91, &v87, &v95);
  if ((v52 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v63 = 0xD000000000000042;
    v63[1] = 0x80000002147910C0;
    v63[2] = 0xD00000000000001CLL;
    v63[3] = 0x800000021478A360;
    swift_willThrow();

    sub_213FB2DF4(a11, &qword_27C909DB8, &qword_2146F5AF0);
    v64 = *(a9 + 112);
    v65 = *(a9 + 120);

    sub_213FDC6D0(v64, v65);
    *(a9 + 96) = v99;
    *(a9 + 104) = v46;
    *(a9 + 112) = v51;
    *(a9 + 120) = v49;
    *(a9 + 128) = v79;
    return sub_21432887C(a9, type metadata accessor for IDSActivitySharingInvitation.SecureCloudInviteResponse);
  }

  sub_213FDC6D0(v51, v49);

  v56 = *(a9 + 112);
  v57 = *(a9 + 120);

  sub_213FDC6D0(v56, v57);
  *(a9 + 96) = v99;
  *(a9 + 104) = v46;
  *(a9 + 112) = a7;
  *(a9 + 120) = a8;
  *(a9 + 128) = v79;
  v59 = *v72;
  v58 = *(v72 + 8);
  v80 = *(v72 + 20);
  v60 = *(v72 + 16);
  LODWORD(v99) = *(v72 + 21);
  v61 = *(v72 + 22);
  LODWORD(v91) = a12;
  BYTE4(v91) = (a12 & 0x100000000) != 0;
  LOBYTE(v87) = v61;
  *&v95 = 0xD00000000000003ELL;
  *(&v95 + 1) = 0x8000000214791110;
  v96 = 0xD00000000000001CLL;
  v97 = 0x800000021478A360;

  v62 = v59(&v91, &v87, &v95);
  if ((v62 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v66 = 0xD00000000000003ELL;
    v66[1] = 0x8000000214791110;
    v66[2] = 0xD00000000000001CLL;
    v66[3] = 0x800000021478A360;
    swift_willThrow();
    sub_213FB2DF4(a11, &qword_27C909DB8, &qword_2146F5AF0);

    *v72 = v59;
    *(v72 + 8) = v58;
    *(v72 + 20) = (v60 | (v80 << 32)) >> 32;
    *(v72 + 16) = v60;
    *(v72 + 21) = v99;
    *(v72 + 22) = v61;
    return sub_21432887C(a9, type metadata accessor for IDSActivitySharingInvitation.SecureCloudInviteResponse);
  }

  sub_213FB2DF4(a11, &qword_27C909DB8, &qword_2146F5AF0);

  *v72 = v59;
  *(v72 + 8) = v58;
  *(v72 + 20) = BYTE4(a12) & 1;
  *(v72 + 16) = a12;
  *(v72 + 21) = 0;
  *(v72 + 22) = v61;
  return result;
}

uint64_t sub_214209250()
{
  v1 = *v0;
  v2 = 1702125924;
  v3 = 0x6F666E4972657375;
  if (v1 != 5)
  {
    v3 = 0x6E6F6973726576;
  }

  v4 = 0x6D754E646C697562;
  if (v1 != 3)
  {
    v4 = 1701869940;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x6B616873646E6168;
  if (v1 != 1)
  {
    v5 = 0x696669746E656469;
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

uint64_t sub_214209334@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_2143785F4(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_21420935C(uint64_t a1)
{
  v2 = sub_21430A258();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_214209398(uint64_t a1)
{
  v2 = sub_21430A258();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2142093D4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v110 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C909DB8, &qword_2146F5AF0);
  MEMORY[0x28223BE20](v3);
  v5 = &v91 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C909DF8, &qword_2146F5B08);
  v111 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v91 - v7;
  v9 = type metadata accessor for IDSActivitySharingInvitation.SecureCloudInviteResponse(0);
  MEMORY[0x28223BE20](v9);
  v11 = &v91 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = a1[3];
  v130 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v12);
  sub_21430A258();
  v13 = v112;
  sub_2146DAA08();
  if (v13)
  {
    return __swift_destroy_boxed_opaque_existential_1(v130);
  }

  v109 = v3;
  v107 = v9;
  v112 = v5;
  v108 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9058A0, &unk_2147379A0);
  LOBYTE(v122) = 0;
  sub_2142E35EC();
  sub_2146DA1C8();
  v14 = v6;
  v15 = v126;
  v16 = BYTE8(v126);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
  LOBYTE(v122) = 1;
  sub_2142E12FC();
  sub_2146DA1C8();
  LODWORD(v105) = v16;
  v106 = v15;
  v17 = v126;
  LOBYTE(v122) = 2;
  sub_2146DA1C8();
  v104 = v17;
  v18 = *(&v126 + 1);
  v103 = v126;
  LOBYTE(v122) = 3;
  sub_2146DA1C8();
  v19 = v126;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C909E08, &qword_2146F5B10);
  LOBYTE(v122) = 4;
  sub_21430A2AC();
  sub_2146DA1C8();
  v101 = v19;
  v102 = v18;
  v20 = v126;
  LOBYTE(v126) = 5;
  sub_21430A0F0();
  v21 = v112;
  sub_2146DA1C8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905AC0, &unk_2146F3F90);
  LOBYTE(v122) = 6;
  sub_2142E6128();
  sub_2146DA1C8();
  v109 = *(&v19 + 1);
  v93 = v126;
  v92 = BYTE4(v126);
  LODWORD(v100) = v20;
  v23 = v107;
  v24 = v108;
  sub_213FB2E54(v21, v108 + *(v107 + 36), &qword_27C909DB8, &qword_2146F5AF0);
  sub_2145EDC40(&v126);
  v25 = v127;
  v99 = v128;
  LODWORD(v98) = v129;
  sub_2145EDC74(&v122);
  v97 = v123;
  v96 = v124;
  v95 = v125;
  sub_2145EDCA8(&v118);
  v26 = v119;
  v27 = v120;
  v94 = v121;
  sub_2145EDCE4(&v113);
  v28 = v114;
  v29 = v115;
  v30 = v116;
  v31 = v117;
  *v24 = v106;
  *(v24 + 8) = v105;
  *(v24 + 1) = v126;
  v32 = v99;
  v24[4] = v25;
  v24[5] = v32;
  *(v24 + 48) = v98;
  *(v24 + 7) = v122;
  v33 = v96;
  v24[9] = v97;
  v24[10] = v33;
  *(v24 + 88) = v95;
  *(v24 + 6) = v118;
  v24[14] = v26;
  v24[15] = v27;
  *(v24 + 128) = v94;
  *(v24 + 129) = v100;
  v34 = v24 + *(v23 + 40);
  *v34 = v113;
  v34[20] = v29;
  *(v34 + 4) = v28;
  v34[21] = v30;
  v97 = v34;
  v34[22] = v31;
  v35 = v24[2];
  v36 = v24[3];
  v37 = v24[4];
  v38 = v24[5];
  v39 = *(v24 + 48);
  *&v122 = v104;
  *(&v122 + 1) = *(&v17 + 1);
  v98 = *(&v17 + 1);
  LODWORD(v106) = v39;
  LOBYTE(v118) = v39;
  *&v126 = 0xD000000000000045;
  *(&v126 + 1) = 0x8000000214791020;
  v99 = 0x8000000214791020;
  v127 = 0xD00000000000001CLL;
  v128 = 0x800000021478A360;

  v105 = v37;
  v100 = v38;
  sub_213FDC9D0(v37, v38);
  v107 = v36;
  v40 = v35(&v122, &v118, &v126);
  v41 = v35;
  v42 = v99;
  if (v40)
  {
    v96 = v8;
    v98 = v14;
    sub_213FDC6D0(v105, v100);

    v43 = v108;
    v44 = v108[4];
    v45 = v41;
    v46 = v108[5];

    sub_213FDC6D0(v44, v46);
    v47 = v107;
    v43[2] = v45;
    v43[3] = v47;
    v43[4] = v104;
    v43[5] = *(&v17 + 1);
    *(v43 + 48) = v106;
    v49 = v43[7];
    v48 = v43[8];
    v50 = v43[9];
    v51 = v43[10];
    v52 = *(v43 + 88);
    *&v122 = v103;
    *(&v122 + 1) = v102;
    LODWORD(v107) = v52;
    LOBYTE(v118) = v52;
    *&v126 = 0xD000000000000041;
    *(&v126 + 1) = 0x8000000214791070;
    v127 = 0xD00000000000001CLL;
    v128 = 0x800000021478A360;

    sub_213FDC9D0(v50, v51);
    v53 = v49(&v122, &v118, &v126);
    if (v53)
    {
      sub_213FDC6D0(v50, v51);

      v60 = v108;
      v61 = v108[9];
      v62 = v108[10];

      sub_213FDC6D0(v61, v62);
      v60[7] = v49;
      v60[8] = v48;
      v63 = v102;
      v60[9] = v103;
      v60[10] = v63;
      *(v60 + 88) = v107;
      v65 = v60[12];
      v64 = v60[13];
      v66 = v60[14];
      v67 = v60[15];
      v68 = *(v60 + 128);
      *&v122 = v101;
      *(&v122 + 1) = v109;
      LODWORD(v107) = v68;
      LOBYTE(v118) = v68;
      *&v126 = 0xD000000000000042;
      *(&v126 + 1) = 0x80000002147910C0;
      v127 = 0xD00000000000001CLL;
      v128 = 0x800000021478A360;

      sub_213FDC9D0(v66, v67);
      v69 = v65(&v122, &v118, &v126);
      if (v69)
      {
        sub_213FDC6D0(v66, v67);

        v73 = v108;
        v74 = v108[14];
        v75 = v108[15];

        sub_213FDC6D0(v74, v75);
        v73[12] = v65;
        v73[13] = v64;
        v76 = v109;
        v73[14] = v101;
        v73[15] = v76;
        *(v73 + 128) = v107;
        v78 = *v97;
        v77 = *(v97 + 1);
        v79 = v97[20];
        v80 = *(v97 + 4);
        LODWORD(v109) = v97[21];
        v81 = v97[22];
        LODWORD(v122) = v93;
        BYTE4(v122) = v92;
        LOBYTE(v118) = v81;
        *&v126 = 0xD00000000000003ELL;
        *(&v126 + 1) = 0x8000000214791110;
        v127 = 0xD00000000000001CLL;
        v128 = 0x800000021478A360;

        v82 = v78(&v122, &v118, &v126);
        if (v82)
        {

          sub_213FB2DF4(v112, &qword_27C909DB8, &qword_2146F5AF0);
          (*(v111 + 8))(v96, v98);
          v86 = v92 != 0;
          v87 = v97;

          *v87 = v78;
          *(v87 + 1) = v77;
          v87[20] = v86;
          *(v87 + 4) = v93;
          v87[21] = 0;
          v87[22] = v81;
          sub_214328704(v108, v110, type metadata accessor for IDSActivitySharingInvitation.SecureCloudInviteResponse);
          return __swift_destroy_boxed_opaque_existential_1(v130);
        }

        sub_214031C4C();
        swift_allocError();
        *v88 = 0xD00000000000003ELL;
        v88[1] = 0x8000000214791110;
        v88[2] = 0xD00000000000001CLL;
        v88[3] = 0x800000021478A360;
        swift_willThrow();
        sub_213FB2DF4(v112, &qword_27C909DB8, &qword_2146F5AF0);
        (*(v111 + 8))(v96, v98);
        v89 = v80 | (v79 << 32);
        v90 = v97;

        *v90 = v78;
        *(v90 + 1) = v77;
        v90[20] = BYTE4(v89);
        *(v90 + 4) = v89;
        v90[21] = v109;
        v90[22] = v81;
        v55 = v108;
      }

      else
      {
        sub_214031C4C();
        swift_allocError();
        *v83 = 0xD000000000000042;
        v83[1] = 0x80000002147910C0;
        v83[2] = 0xD00000000000001CLL;
        v83[3] = 0x800000021478A360;
        swift_willThrow();

        sub_213FB2DF4(v112, &qword_27C909DB8, &qword_2146F5AF0);
        (*(v111 + 8))(v96, v98);
        v55 = v108;
        v84 = v108[14];
        v85 = v108[15];

        sub_213FDC6D0(v84, v85);
        v55[12] = v65;
        v55[13] = v64;
        v55[14] = v66;
        v55[15] = v67;
        *(v55 + 128) = v107;
      }
    }

    else
    {
      sub_214031C4C();
      swift_allocError();
      *v70 = 0xD000000000000041;
      v70[1] = 0x8000000214791070;
      v70[2] = 0xD00000000000001CLL;
      v70[3] = 0x800000021478A360;
      swift_willThrow();

      sub_213FB2DF4(v112, &qword_27C909DB8, &qword_2146F5AF0);
      (*(v111 + 8))(v96, v98);
      v55 = v108;
      v71 = v108[9];
      v72 = v108[10];

      sub_213FDC6D0(v71, v72);
      v55[7] = v49;
      v55[8] = v48;
      v55[9] = v50;
      v55[10] = v51;
      *(v55 + 88) = v107;
    }
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v54 = 0xD000000000000045;
    v54[1] = v42;
    v54[2] = 0xD00000000000001CLL;
    v54[3] = 0x800000021478A360;
    swift_willThrow();

    sub_213FB2DF4(v112, &qword_27C909DB8, &qword_2146F5AF0);
    (*(v111 + 8))(v8, v14);
    v55 = v108;
    v56 = v108[4];
    v57 = v108[5];

    sub_213FDC6D0(v56, v57);
    v58 = v107;
    v55[2] = v41;
    v55[3] = v58;
    v59 = v100;
    v55[4] = v105;
    v55[5] = v59;
    *(v55 + 48) = v106;
  }

  __swift_destroy_boxed_opaque_existential_1(v130);
  return sub_21432887C(v55, type metadata accessor for IDSActivitySharingInvitation.SecureCloudInviteResponse);
}

uint64_t sub_21420A310(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C909E20, &qword_2146F5B18);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v17 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21430A258();
  sub_2146DAA28();
  v9 = *(v3 + 8);
  v18 = *v3;
  LOBYTE(v19) = v9;
  v20 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9058A0, &unk_2147379A0);
  sub_2142E37F4();
  sub_2146DA388();
  if (v2)
  {
    return (*(v6 + 8))(v8, v5);
  }

  v10 = v3[5];
  if (v10 != 1)
  {
    v18 = v3[4];
    v19 = v10;
    v20 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
    sub_214045AC0();
    sub_2146DA388();
    v11 = v3[10];
    if (v11 != 1)
    {
      v18 = v3[9];
      v19 = v11;
      v20 = 2;
      sub_2146DA388();
      v12 = v3[15];
      if (v12 != 1)
      {
        v18 = v3[14];
        v19 = v12;
        v20 = 3;
        sub_2146DA388();
        LOBYTE(v18) = *(v3 + 129);
        v20 = 4;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C909E08, &qword_2146F5B10);
        sub_21430A384();
        sub_2146DA388();
        v13 = type metadata accessor for IDSActivitySharingInvitation.SecureCloudInviteResponse(0);
        LOBYTE(v18) = 5;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C909DB8, &qword_2146F5AF0);
        sub_21430A1A4();
        sub_2146DA388();
        v14 = v3 + *(v13 + 40);
        if ((*(v14 + 21) & 1) == 0)
        {
          v15 = *(v14 + 20);
          LODWORD(v18) = *(v14 + 16);
          BYTE4(v18) = v15 & 1;
          v20 = 6;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905AC0, &unk_2146F3F90);
          sub_2142E62D8();
          sub_2146DA388();
          return (*(v6 + 8))(v8, v5);
        }
      }
    }
  }

  result = sub_2146DA018();
  __break(1u);
  return result;
}

uint64_t sub_21420A700@<X0>(const void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v11 = type metadata accessor for IDSActivitySharingInvitation.SecureCloudInviteUserInfo(0);
  v27 = a5;
  sub_213FB2E54(a5, a6 + *(v11 + 28), &qword_27C909E38, &qword_2146F5B20);
  sub_2145EDEC8(&v32);
  v13 = v32;
  v12 = v33;
  v15 = v34;
  v14 = v35;
  v16 = v36;
  memcpy(a6, a1, 0x189uLL);
  *(a6 + 400) = v13;
  *(a6 + 408) = v12;
  *(a6 + 416) = v15;
  *(a6 + 424) = v14;
  *(a6 + 432) = v16;
  v17 = a4[3];
  *(a6 + 472) = a4[2];
  *(a6 + 488) = v17;
  *(a6 + 497) = *(a4 + 57);
  v18 = a4[1];
  *(a6 + 440) = *a4;
  *(a6 + 456) = v18;
  v31[0] = a2;
  v31[1] = a3;
  v37 = v16;
  v38 = v16;
  v32 = 0xD000000000000046;
  v33 = 0x8000000214791150;
  v34 = 0xD00000000000001CLL;
  v35 = 0x800000021478A360;

  sub_213FDC9D0(v15, v14);
  v19 = v28;
  v29 = v13;
  v20 = v13(v31, &v38, &v32);
  if (v19)
  {
  }

  else
  {
    if (v20)
    {
      sub_213FDC6D0(v15, v14);

      sub_213FB2DF4(v27, &qword_27C909E38, &qword_2146F5B20);
      v21 = *(a6 + 416);
      v22 = *(a6 + 424);

      result = sub_213FDC6D0(v21, v22);
      *(a6 + 400) = v13;
      *(a6 + 408) = v12;
      *(a6 + 416) = a2;
      *(a6 + 424) = a3;
      *(a6 + 432) = v37;
      return result;
    }

    sub_214031C4C();
    swift_allocError();
    *v24 = 0xD000000000000046;
    v24[1] = 0x8000000214791150;
    v24[2] = 0xD00000000000001CLL;
    v24[3] = 0x800000021478A360;
    swift_willThrow();
  }

  sub_213FB2DF4(v27, &qword_27C909E38, &qword_2146F5B20);
  v25 = *(a6 + 416);
  v26 = *(a6 + 424);

  sub_213FDC6D0(v25, v26);
  *(a6 + 400) = v29;
  *(a6 + 408) = v12;
  *(a6 + 416) = v15;
  *(a6 + 424) = v14;
  *(a6 + 432) = v37;
  return sub_21432887C(a6, type metadata accessor for IDSActivitySharingInvitation.SecureCloudInviteUserInfo);
}

unint64_t sub_21420A990()
{
  v1 = 0x74694B64756F6C63;
  if (!*v0)
  {
    v1 = 0xD000000000000013;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000014;
  }
}

uint64_t sub_21420AA20@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_214378850(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_21420AA48(uint64_t a1)
{
  v2 = sub_21430A45C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21420AA84(uint64_t a1)
{
  v2 = sub_21430A45C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21420AAC0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v43 = a2;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C909E38, &qword_2146F5B20);
  MEMORY[0x28223BE20](v45);
  v4 = &v36 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C909E40, &qword_2146F5B28);
  v44 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v36 - v6;
  v8 = type metadata accessor for IDSActivitySharingInvitation.SecureCloudInviteUserInfo(0);
  MEMORY[0x28223BE20](v8);
  v10 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = a1[3];
  v63 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v11);
  sub_21430A45C();
  v12 = v46;
  sub_2146DAA08();
  if (v12)
  {
    return __swift_destroy_boxed_opaque_existential_1(v63);
  }

  v42 = v8;
  v13 = v44;
  v46 = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C909E50, &unk_2146F5B30);
  v61[399] = 0;
  sub_21430A4B0();
  sub_2146DA1C8();
  memcpy(v61, v62, 0x189uLL);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
  LOBYTE(v54) = 1;
  sub_2142E12FC();
  sub_2146DA1C8();
  v41 = v59[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C909E68, &qword_214761070);
  v58 = 2;
  sub_21430A588();
  sub_2146DA1C8();
  v56 = v59[2];
  *v57 = v60[0];
  *&v57[9] = *(v60 + 9);
  v54 = v59[0];
  v55 = v59[1];
  LOBYTE(v49) = 3;
  sub_21430A660();
  v14 = v46;
  sub_2146DA1C8();
  v40 = v5;
  sub_213FB2E54(v14, &v10[*(v42 + 28)], &qword_27C909E38, &qword_2146F5B20);
  sub_2145EDEC8(&v49);
  v16 = v49;
  v17 = v50;
  v45 = v49;
  v18 = v51;
  v42 = v52;
  v19 = v53;
  memcpy(v10, v61, 0x189uLL);
  *(v10 + 50) = v16;
  *(v10 + 51) = v17;
  *(v10 + 52) = v18;
  v20 = v18;
  v21 = v42;
  *(v10 + 53) = v42;
  v10[432] = v19;
  v22 = *v57;
  *(v10 + 472) = v56;
  *(v10 + 488) = v22;
  *(v10 + 497) = *&v57[9];
  v23 = v55;
  *(v10 + 440) = v54;
  *(v10 + 456) = v23;
  v48 = v41;
  v39 = v19;
  v47 = v19;
  v49 = 0xD000000000000046;
  v50 = 0x8000000214791150;
  v36 = 0x8000000214791150;
  v51 = 0xD00000000000001CLL;
  v52 = 0x800000021478A360;

  v37 = v20;
  sub_213FDC9D0(v20, v21);
  v38 = v17;
  v24 = v45(&v48, &v47, &v49);
  v25 = v36;
  if (v24)
  {
    sub_213FDC6D0(v37, v42);

    sub_213FB2DF4(v46, &qword_27C909E38, &qword_2146F5B20);
    (*(v13 + 8))(v7, v40);
    v26 = *(v10 + 52);
    v27 = *(v10 + 53);

    sub_213FDC6D0(v26, v27);
    v28 = v38;
    *(v10 + 50) = v45;
    *(v10 + 51) = v28;
    v29 = *(&v41 + 1);
    *(v10 + 52) = v41;
    *(v10 + 53) = v29;
    v10[432] = v39;
    sub_214328704(v10, v43, type metadata accessor for IDSActivitySharingInvitation.SecureCloudInviteUserInfo);
    return __swift_destroy_boxed_opaque_existential_1(v63);
  }

  sub_214031C4C();
  swift_allocError();
  *v30 = 0xD000000000000046;
  v30[1] = v25;
  v30[2] = 0xD00000000000001CLL;
  v30[3] = 0x800000021478A360;
  swift_willThrow();

  sub_213FB2DF4(v46, &qword_27C909E38, &qword_2146F5B20);
  (*(v13 + 8))(v7, v40);
  v31 = *(v10 + 52);
  v32 = *(v10 + 53);

  sub_213FDC6D0(v31, v32);
  v34 = v37;
  v33 = v38;
  *(v10 + 50) = v45;
  *(v10 + 51) = v33;
  v35 = v42;
  *(v10 + 52) = v34;
  *(v10 + 53) = v35;
  v10[432] = v39;
  __swift_destroy_boxed_opaque_existential_1(v63);
  return sub_21432887C(v10, type metadata accessor for IDSActivitySharingInvitation.SecureCloudInviteUserInfo);
}

uint64_t sub_21420B16C(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C909E90, &qword_2146F5B40);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v14[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21430A45C();
  sub_2146DAA28();
  memcpy(v30, v3, 0x189uLL);
  memcpy(v29, v3, sizeof(v29));
  v28[399] = 0;
  sub_213FB2E54(v30, v28, &qword_27C909E50, &unk_2146F5B30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C909E50, &unk_2146F5B30);
  sub_21430A714();
  sub_2146DA388();
  if (v2)
  {
    memcpy(v28, v29, 0x189uLL);
    sub_213FB2DF4(v28, &qword_27C909E50, &unk_2146F5B30);
    return (*(v6 + 8))(v8, v5);
  }

  memcpy(v28, v29, 0x189uLL);
  sub_213FB2DF4(v28, &qword_27C909E50, &unk_2146F5B30);
  v9 = *(v3 + 424);
  if (v9 != 1)
  {
    v26 = *(v3 + 416);
    v27 = v9;
    v25 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
    sub_214045AC0();
    sub_2146DA388();
    v11 = *(v3 + 456);
    v12 = *(v3 + 488);
    v23 = *(v3 + 472);
    *v24 = v12;
    *&v24[9] = *(v3 + 497);
    v13 = *(v3 + 456);
    v22[0] = *(v3 + 440);
    v22[1] = v13;
    v19 = v11;
    v20 = v23;
    v21[0] = *(v3 + 488);
    *(v21 + 9) = *(v3 + 497);
    v18 = v22[0];
    v17 = 2;
    sub_213FB2E54(v22, v15, &qword_27C909E68, &qword_214761070);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C909E68, &qword_214761070);
    sub_21430A7EC();
    sub_2146DA388();
    v15[2] = v20;
    *v16 = v21[0];
    *&v16[9] = *(v21 + 9);
    v15[0] = v18;
    v15[1] = v19;
    sub_213FB2DF4(v15, &qword_27C909E68, &qword_214761070);
    type metadata accessor for IDSActivitySharingInvitation.SecureCloudInviteUserInfo(0);
    v14[15] = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C909E38, &qword_2146F5B20);
    sub_21430A8C4();
    sub_2146DA388();
    return (*(v6 + 8))(v8, v5);
  }

  result = sub_2146DA018();
  __break(1u);
  return result;
}

uint64_t sub_21420B59C@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void, void, void)@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char *a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, __int128 a10, uint64_t a11)
{
  v100 = a2;
  v73 = *a7;
  v13 = type metadata accessor for IDSActivitySharingInvitation.SecureCloudUpgradeMessage(0);
  v79 = a8;
  sub_213FB2E54(a8, a9 + v13[8], &qword_27C909E38, &qword_2146F5B20);
  sub_2145EE218(&v96);
  v14 = v97;
  v15 = v98;
  v16 = v99;
  sub_2145EE398(&v92);
  v18 = v93;
  v17 = v94;
  LOBYTE(a8) = v95;
  sub_2145EE3CC(&v88);
  v19 = v89;
  v71 = v90;
  v69 = v91;
  sub_2145EE400(&v83);
  v20 = v84;
  v21 = v85;
  v22 = v86;
  v23 = v87;
  *a9 = v96;
  *(a9 + 16) = v14;
  *(a9 + 24) = v15;
  *(a9 + 32) = v16;
  *(a9 + 40) = a3;
  *(a9 + 48) = a4 & 1;
  *(a9 + 56) = v92;
  *(a9 + 72) = v18;
  *(a9 + 80) = v17;
  *(a9 + 88) = a8;
  *(a9 + 89) = v73;
  v24 = a9 + v13[9];
  *v24 = v88;
  *(v24 + 16) = v19;
  *(v24 + 24) = v71;
  *(v24 + 32) = v69;
  v25 = a9 + v13[10];
  *v25 = v83;
  *(v25 + 20) = v21;
  *(v25 + 16) = v20;
  *(v25 + 21) = v22;
  *(v25 + 22) = v23;
  v27 = *a9;
  v26 = *(a9 + 8);
  v29 = *(a9 + 16);
  v28 = *(a9 + 24);
  LOBYTE(v20) = *(a9 + 32);
  *&v92 = a1;
  *(&v92 + 1) = v100;
  v76 = v20;
  LOBYTE(v88) = v20;
  *&v96 = 0xD000000000000042;
  *(&v96 + 1) = 0x80000002147911A0;
  v97 = 0xD00000000000001CLL;
  v98 = 0x800000021478A360;

  sub_213FDC9D0(v29, v28);
  v74 = v27;
  v30 = v27(&v92, &v88, &v96);
  if (v82)
  {

LABEL_6:

    sub_213FB2DF4(v79, &qword_27C909E38, &qword_2146F5B20);
    v40 = *(a9 + 16);
    v41 = *(a9 + 24);

    sub_213FDC6D0(v40, v41);
    *a9 = v27;
    *(a9 + 8) = v26;
    *(a9 + 16) = v29;
    *(a9 + 24) = v28;
    *(a9 + 32) = v76;
    return sub_21432887C(a9, type metadata accessor for IDSActivitySharingInvitation.SecureCloudUpgradeMessage);
  }

  v70 = v24;
  v67 = v25;
  if ((v30 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v39 = 0xD000000000000042;
    v39[1] = 0x80000002147911A0;
    v39[2] = 0xD00000000000001CLL;
    v39[3] = 0x800000021478A360;
    swift_willThrow();
    goto LABEL_6;
  }

  sub_213FDC6D0(v29, v28);

  v31 = *(a9 + 16);
  v32 = *(a9 + 24);

  sub_213FDC6D0(v31, v32);
  *a9 = v74;
  *(a9 + 8) = v26;
  v33 = v100;
  *(a9 + 16) = a1;
  *(a9 + 24) = v33;
  *(a9 + 32) = v76;
  v35 = *(a9 + 56);
  v34 = *(a9 + 64);
  v36 = *(a9 + 72);
  v37 = *(a9 + 80);
  LOBYTE(v33) = *(a9 + 88);
  *&v92 = a5;
  *(&v92 + 1) = a6;
  v81 = v33;
  LOBYTE(v88) = v33;
  *&v96 = 0xD000000000000041;
  *(&v96 + 1) = 0x80000002147911F0;
  v97 = 0xD00000000000001CLL;
  v98 = 0x800000021478A360;

  sub_213FDC9D0(v36, v37);
  v100 = v35;
  v38 = v35(&v92, &v88, &v96);
  if ((v38 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v52 = 0xD000000000000041;
    v52[1] = 0x80000002147911F0;
    v52[2] = 0xD00000000000001CLL;
    v52[3] = 0x800000021478A360;
    swift_willThrow();

    sub_213FB2DF4(v79, &qword_27C909E38, &qword_2146F5B20);
    v53 = *(a9 + 72);
    v54 = *(a9 + 80);

    sub_213FDC6D0(v53, v54);
    *(a9 + 56) = v100;
    *(a9 + 64) = v34;
    *(a9 + 72) = v36;
    *(a9 + 80) = v37;
    *(a9 + 88) = v81;
    return sub_21432887C(a9, type metadata accessor for IDSActivitySharingInvitation.SecureCloudUpgradeMessage);
  }

  sub_213FDC6D0(v36, v37);

  v43 = *(a9 + 72);
  v44 = *(a9 + 80);

  sub_213FDC6D0(v43, v44);
  *(a9 + 56) = v100;
  *(a9 + 64) = v34;
  *(a9 + 72) = a5;
  *(a9 + 80) = a6;
  *(a9 + 88) = v81;
  v46 = *v70;
  v45 = *(v70 + 8);
  v48 = *(v70 + 16);
  v47 = *(v70 + 24);
  v49 = *(v70 + 32);
  v92 = a10;
  LODWORD(v100) = v49;
  LOBYTE(v88) = v49;
  *&v96 = 0xD000000000000043;
  *(&v96 + 1) = 0x8000000214791240;
  v97 = 0xD00000000000001CLL;
  v98 = 0x800000021478A360;

  v78 = v48;
  sub_213FDC9D0(v48, v47);
  v50 = v46;
  v51 = v46(&v92, &v88, &v96);
  if ((v51 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v63 = 0xD000000000000043;
    v63[1] = 0x8000000214791240;
    v63[2] = 0xD00000000000001CLL;
    v63[3] = 0x800000021478A360;
    swift_willThrow();

    sub_213FB2DF4(v79, &qword_27C909E38, &qword_2146F5B20);
    v64 = *(v70 + 16);
    v65 = *(v70 + 24);

    sub_213FDC6D0(v64, v65);
    *v70 = v50;
    *(v70 + 8) = v45;
    *(v70 + 16) = v78;
    *(v70 + 24) = v47;
    *(v70 + 32) = v100;
    return sub_21432887C(a9, type metadata accessor for IDSActivitySharingInvitation.SecureCloudUpgradeMessage);
  }

  sub_213FDC6D0(v78, v47);

  v55 = *(v70 + 16);
  v56 = *(v70 + 24);

  sub_213FDC6D0(v55, v56);
  *v70 = v46;
  *(v70 + 8) = v45;
  *(v70 + 16) = a10;
  *(v70 + 32) = v100;
  v58 = *v25;
  v57 = *(v67 + 8);
  v59 = *(v67 + 20);
  v60 = *(v67 + 16);
  LODWORD(v100) = *(v67 + 21);
  v61 = *(v67 + 22);
  LODWORD(v92) = a11;
  BYTE4(v92) = (a11 & 0x100000000) != 0;
  LOBYTE(v88) = v61;
  *&v96 = 0xD00000000000003ELL;
  *(&v96 + 1) = 0x8000000214791290;
  v97 = 0xD00000000000001CLL;
  v98 = 0x800000021478A360;

  v62 = v58(&v92, &v88, &v96);
  if ((v62 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v66 = 0xD00000000000003ELL;
    v66[1] = 0x8000000214791290;
    v66[2] = 0xD00000000000001CLL;
    v66[3] = 0x800000021478A360;
    swift_willThrow();
    sub_213FB2DF4(v79, &qword_27C909E38, &qword_2146F5B20);

    *v67 = v58;
    *(v67 + 8) = v57;
    *(v67 + 20) = (v60 | (v59 << 32)) >> 32;
    *(v67 + 16) = v60;
    *(v67 + 21) = v100;
    *(v67 + 22) = v61;
    return sub_21432887C(a9, type metadata accessor for IDSActivitySharingInvitation.SecureCloudUpgradeMessage);
  }

  sub_213FB2DF4(v79, &qword_27C909E38, &qword_2146F5B20);

  *v67 = v58;
  *(v67 + 8) = v57;
  *(v67 + 20) = BYTE4(a11) & 1;
  *(v67 + 16) = a11;
  *(v67 + 21) = 0;
  *(v67 + 22) = v61;
  return result;
}

uint64_t sub_21420BD88()
{
  v1 = *v0;
  v2 = 0x6D754E646C697562;
  v3 = 0x5465646172677075;
  if (v1 != 5)
  {
    v3 = 0x6E6F6973726576;
  }

  v4 = 0x546567617373656DLL;
  if (v1 != 3)
  {
    v4 = 0xD000000000000014;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 1702125924;
  if (v1 != 1)
  {
    v5 = 0x696669746E656469;
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

uint64_t sub_21420BE7C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_2143789C8(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_21420BEA4(uint64_t a1)
{
  v2 = sub_21430A978();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21420BEE0(uint64_t a1)
{
  v2 = sub_21430A978();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21420BF1C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v130 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C909E38, &qword_2146F5B20);
  MEMORY[0x28223BE20](v3);
  v5 = &v110 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C909EC8, &qword_2146F5B48);
  v131 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v110 - v7;
  v9 = type metadata accessor for IDSActivitySharingInvitation.SecureCloudUpgradeMessage(0);
  MEMORY[0x28223BE20](v9);
  v11 = &v110 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = a1[3];
  v150 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v12);
  sub_21430A978();
  v13 = v132;
  sub_2146DAA08();
  if (v13)
  {
    return __swift_destroy_boxed_opaque_existential_1(v150);
  }

  v128 = v9;
  v132 = v5;
  v129 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
  LOBYTE(v142) = 0;
  sub_2142E12FC();
  sub_2146DA1C8();
  v14 = v146;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9058A0, &unk_2147379A0);
  LOBYTE(v142) = 1;
  sub_2142E35EC();
  sub_2146DA1C8();
  v127 = *(&v14 + 1);
  v15 = v146;
  v16 = BYTE8(v146);
  LOBYTE(v142) = 2;
  sub_2146DA1C8();
  v124 = v16;
  v125 = v15;
  v126 = v14;
  v17 = v146;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C909ED8, &qword_2146F5B50);
  LOBYTE(v142) = 3;
  sub_21430A9CC();
  sub_2146DA1C8();
  v123 = v17;
  v18 = v146;
  LOBYTE(v146) = 4;
  sub_21430A660();
  v19 = v132;
  sub_2146DA1C8();
  v20 = v127;
  LODWORD(v122) = v18;
  LOBYTE(v142) = 5;
  sub_2146DA1C8();
  v22 = v146;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905AC0, &unk_2146F3F90);
  LOBYTE(v142) = 6;
  sub_2142E6128();
  sub_2146DA1C8();
  v113 = v22;
  v121 = *(&v17 + 1);
  v120 = *(&v22 + 1);
  v112 = v146;
  v111 = BYTE4(v146);
  v23 = v128;
  v24 = v129;
  sub_213FB2E54(v19, v129 + *(v128 + 32), &qword_27C909E38, &qword_2146F5B20);
  sub_2145EE218(&v146);
  v119 = v147;
  v118 = v148;
  LODWORD(v117) = v149;
  sub_2145EE398(&v142);
  v25 = v144;
  v116 = v143;
  v26 = v145;
  sub_2145EE3CC(&v138);
  v27 = v139;
  v115 = v140;
  LODWORD(v114) = v141;
  sub_2145EE400(&v133);
  v28 = v134;
  v29 = v135;
  v30 = v136;
  v31 = v137;
  *v24 = v146;
  v32 = v118;
  v24[2] = v119;
  v24[3] = v32;
  *(v24 + 32) = v117;
  v24[5] = v125;
  *(v24 + 48) = v124;
  *(v24 + 7) = v142;
  v24[9] = v116;
  v24[10] = v25;
  *(v24 + 88) = v26;
  *(v24 + 89) = v122;
  v33 = v24 + *(v23 + 36);
  *v33 = v138;
  v34 = v115;
  *(v33 + 2) = v27;
  *(v33 + 3) = v34;
  v117 = v33;
  v33[32] = v114;
  v35 = v24 + *(v23 + 40);
  *v35 = v133;
  v35[20] = v29;
  *(v35 + 4) = v28;
  v35[21] = v30;
  v35[22] = v31;
  v128 = 0;
  v37 = *v24;
  v36 = v24[1];
  v38 = v20;
  v39 = v24[2];
  v40 = v24[3];
  v41 = *(v24 + 32);
  *&v142 = v126;
  *(&v142 + 1) = v38;
  v124 = v41;
  LOBYTE(v138) = v41;
  *&v146 = 0xD000000000000042;
  *(&v146 + 1) = 0x80000002147911A0;
  v118 = 0x80000002147911A0;
  v147 = 0xD00000000000001CLL;
  v148 = 0x800000021478A360;

  v122 = v39;
  v119 = v40;
  sub_213FDC9D0(v39, v40);
  v42 = v36;
  v43 = v128;
  v125 = v37;
  v44 = v37(&v142, &v138, &v146);
  v128 = v43;
  if (v43)
  {

LABEL_10:

    sub_213FB2DF4(v132, &qword_27C909E38, &qword_2146F5B20);
    (*(v131 + 8))(v8, v6);
    v60 = v129;
    v61 = v129[2];
    v62 = v129[3];

    v63 = v61;
    v64 = v60;
    sub_213FDC6D0(v63, v62);
    *v60 = v125;
    v60[1] = v42;
    v65 = v119;
    v60[2] = v122;
    v60[3] = v65;
    *(v60 + 32) = v124;
LABEL_11:
    __swift_destroy_boxed_opaque_existential_1(v150);
    return sub_21432887C(v64, type metadata accessor for IDSActivitySharingInvitation.SecureCloudUpgradeMessage);
  }

  v45 = v118;
  v116 = 0x800000021478A360;
  v115 = v35;
  if ((v44 & 1) == 0)
  {
    sub_214031C4C();
    v57 = swift_allocError();
    *v58 = 0xD000000000000042;
    v58[1] = v45;
    v59 = v116;
    v58[2] = 0xD00000000000001CLL;
    v58[3] = v59;
    v128 = v57;
    swift_willThrow();
    goto LABEL_10;
  }

  v114 = v6;
  sub_213FDC6D0(v122, v119);
  v46 = v116;

  v47 = v129;
  v48 = v129[2];
  v49 = v129[3];

  sub_213FDC6D0(v48, v49);
  *v47 = v125;
  v47[1] = v42;
  v47[2] = v126;
  v47[3] = v38;
  *(v47 + 32) = v124;
  v51 = v47[7];
  v50 = v47[8];
  v52 = v47[9];
  v53 = v47[10];
  v54 = *(v47 + 88);
  *&v142 = v123;
  *(&v142 + 1) = v121;
  LOBYTE(v138) = v54;
  *&v146 = 0xD000000000000041;
  *(&v146 + 1) = 0x80000002147911F0;
  v147 = 0xD00000000000001CLL;
  v148 = v46;

  sub_213FDC9D0(v52, v53);
  v55 = v128;
  v56 = v51(&v142, &v138, &v146);
  v128 = v55;
  if (v55)
  {

LABEL_16:

    sub_213FB2DF4(v132, &qword_27C909E38, &qword_2146F5B20);
    (*(v131 + 8))(v8, v114);
    v81 = v129;
    v82 = v129[9];
    v83 = v129[10];

    v84 = v82;
    v64 = v81;
    sub_213FDC6D0(v84, v83);
    v81[7] = v51;
    v81[8] = v50;
    v81[9] = v52;
    v81[10] = v53;
    *(v81 + 88) = v54;
    goto LABEL_11;
  }

  if ((v56 & 1) == 0)
  {
    sub_214031C4C();
    v78 = swift_allocError();
    *v79 = 0xD000000000000041;
    v79[1] = 0x80000002147911F0;
    v80 = v116;
    v79[2] = 0xD00000000000001CLL;
    v79[3] = v80;
    v128 = v78;
    swift_willThrow();
    goto LABEL_16;
  }

  sub_213FDC6D0(v52, v53);
  v66 = v116;

  v67 = v129;
  v68 = v129[9];
  v69 = v129[10];

  sub_213FDC6D0(v68, v69);
  v67[7] = v51;
  v67[8] = v50;
  v70 = v121;
  v67[9] = v123;
  v67[10] = v70;
  *(v67 + 88) = v54;
  v72 = *v117;
  v71 = *(v117 + 1);
  v73 = *(v117 + 2);
  v74 = *(v117 + 3);
  v75 = v117[32];
  *&v142 = v113;
  *(&v142 + 1) = v120;
  LOBYTE(v138) = v75;
  *&v146 = 0xD000000000000043;
  *(&v146 + 1) = 0x8000000214791240;
  v147 = 0xD00000000000001CLL;
  v148 = v66;

  sub_213FDC9D0(v73, v74);
  v76 = v128;
  v77 = v72(&v142, &v138, &v146);
  v128 = v76;
  if (v76)
  {

LABEL_21:

    sub_213FB2DF4(v132, &qword_27C909E38, &qword_2146F5B20);
    (*(v131 + 8))(v8, v114);
    v101 = v117;
    v102 = *(v117 + 2);
    v103 = *(v117 + 3);

    sub_213FDC6D0(v102, v103);
    *v101 = v72;
    *(v101 + 1) = v71;
    *(v101 + 2) = v73;
    *(v101 + 3) = v74;
    v101[32] = v75;
LABEL_22:
    v64 = v129;
    goto LABEL_11;
  }

  if ((v77 & 1) == 0)
  {
    sub_214031C4C();
    v98 = swift_allocError();
    *v99 = 0xD000000000000043;
    v99[1] = 0x8000000214791240;
    v100 = v116;
    v99[2] = 0xD00000000000001CLL;
    v99[3] = v100;
    v128 = v98;
    swift_willThrow();
    goto LABEL_21;
  }

  sub_213FDC6D0(v73, v74);
  v85 = v116;

  v86 = v117;
  v87 = *(v117 + 2);
  v88 = *(v117 + 3);

  sub_213FDC6D0(v87, v88);
  *v86 = v72;
  *(v86 + 1) = v71;
  v89 = v120;
  *(v86 + 2) = v113;
  *(v86 + 3) = v89;
  v86[32] = v75;
  v91 = *v115;
  v90 = *(v115 + 1);
  v92 = v115[20];
  v93 = *(v115 + 4);
  v94 = v115[21];
  v95 = v115[22];
  LODWORD(v142) = v112;
  BYTE4(v142) = v111;
  LOBYTE(v138) = v95;
  *&v146 = 0xD00000000000003ELL;
  *(&v146 + 1) = 0x8000000214791290;
  v147 = 0xD00000000000001CLL;
  v148 = v85;

  v96 = v128;
  v97 = v91(&v142, &v138, &v146);
  v128 = v96;
  if (v96)
  {
    sub_213FB2DF4(v132, &qword_27C909E38, &qword_2146F5B20);
    (*(v131 + 8))(v8, v114);

LABEL_26:
    v109 = v115;

    *v109 = v91;
    *(v109 + 1) = v90;
    v109[20] = (v93 | (v92 << 32)) >> 32;
    *(v109 + 4) = v93;
    v109[21] = v94;
    v109[22] = v95;
    goto LABEL_22;
  }

  if ((v97 & 1) == 0)
  {
    sub_214031C4C();
    v106 = swift_allocError();
    *v107 = 0xD00000000000003ELL;
    v107[1] = 0x8000000214791290;
    v108 = v116;
    v107[2] = 0xD00000000000001CLL;
    v107[3] = v108;
    v128 = v106;
    swift_willThrow();
    sub_213FB2DF4(v132, &qword_27C909E38, &qword_2146F5B20);
    (*(v131 + 8))(v8, v114);
    goto LABEL_26;
  }

  sub_213FB2DF4(v132, &qword_27C909E38, &qword_2146F5B20);
  (*(v131 + 8))(v8, v114);
  v104 = v111 != 0;
  v105 = v115;

  *v105 = v91;
  *(v105 + 1) = v90;
  v105[20] = v104;
  *(v105 + 4) = v112;
  v105[21] = 0;
  v105[22] = v95;
  sub_214328704(v129, v130, type metadata accessor for IDSActivitySharingInvitation.SecureCloudUpgradeMessage);
  return __swift_destroy_boxed_opaque_existential_1(v150);
}

uint64_t sub_21420CEDC(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C909EF0, &qword_2146F5B58);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v18 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21430A978();
  sub_2146DAA28();
  v9 = *(v3 + 24);
  if (v9 != 1)
  {
    v20 = *(v3 + 16);
    v21 = v9;
    v22 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
    sub_214045AC0();
    sub_2146DA388();
    if (v2)
    {
      return (*(v6 + 8))(v8, v5);
    }

    v10 = *(v3 + 48);
    v20 = *(v3 + 40);
    LOBYTE(v21) = v10;
    v22 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9058A0, &unk_2147379A0);
    sub_2142E37F4();
    sub_2146DA388();
    v11 = *(v3 + 80);
    if (v11 != 1)
    {
      v20 = *(v3 + 72);
      v21 = v11;
      v22 = 2;
      sub_2146DA388();
      LOBYTE(v20) = *(v3 + 89);
      v22 = 3;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C909ED8, &qword_2146F5B50);
      sub_21430AAA4();
      sub_2146DA388();
      v19 = type metadata accessor for IDSActivitySharingInvitation.SecureCloudUpgradeMessage(0);
      LOBYTE(v20) = 4;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C909E38, &qword_2146F5B20);
      sub_21430A8C4();
      sub_2146DA388();
      v12 = v19;
      v13 = v3 + *(v19 + 36);
      v14 = *(v13 + 24);
      if (v14 != 1)
      {
        v20 = *(v13 + 16);
        v21 = v14;
        v22 = 5;
        sub_2146DA388();
        v15 = v3 + *(v12 + 40);
        if ((*(v15 + 21) & 1) == 0)
        {
          v16 = *(v15 + 20);
          LODWORD(v20) = *(v15 + 16);
          BYTE4(v20) = v16 & 1;
          v22 = 6;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905AC0, &unk_2146F3F90);
          sub_2142E62D8();
          sub_2146DA388();
          return (*(v6 + 8))(v8, v5);
        }
      }
    }
  }

  result = sub_2146DA018();
  __break(1u);
  return result;
}

uint64_t sub_21420D2E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_2145EEB40(&v17);
  v5 = v17;
  v6 = v18;
  v7 = v19;
  v8 = v20;
  v9 = v21;
  v16[0] = a1;
  v16[1] = a2;
  v22 = v21;
  v17 = 0xD00000000000003ELL;
  v18 = 0x80000002147912D0;
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
    *v13 = 0xD00000000000003ELL;
    v13[1] = 0x80000002147912D0;
    v13[2] = 0xD00000000000001CLL;
    v13[3] = 0x800000021478A360;
    swift_willThrow();

    sub_213FDC6D0(v7, v8);
  }

  return sub_213FDC6D0(v7, v8);
}

uint64_t sub_21420D4D0(uint64_t a1)
{
  v2 = sub_21430AB7C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21420D50C(uint64_t a1)
{
  v2 = sub_21430AB7C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21420D548@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C909F08, &qword_2146F5B60);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v22 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21430AB7C();
  sub_2146DAA08();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
  sub_2142E12FC();
  sub_2146DA1C8();
  v23 = a2;
  v10 = v30;
  v11 = v31;
  sub_2145EEB40(&v30);
  v12 = v31;
  v27 = v30;
  v13 = v32;
  v14 = v33;
  v24 = v10;
  v25 = v11;
  v29[0] = v10;
  v29[1] = v11;
  v35 = v34;
  v36 = v34;
  v30 = 0xD00000000000003ELL;
  v31 = 0x80000002147912D0;
  v32 = 0xD00000000000001CLL;
  v33 = 0x800000021478A360;

  v28 = v13;
  v26 = v14;
  sub_213FDC9D0(v13, v14);
  v15 = v27(v29, &v36, &v30);
  if (v15)
  {
    v16 = v26;
    sub_213FDC6D0(v28, v26);

    (*(v6 + 8))(v8, v5);

    sub_213FDC6D0(v28, v16);
    v17 = v23;
    *v23 = v27;
    v17[1] = v12;
    v18 = v25;
    v17[2] = v24;
    v17[3] = v18;
    *(v17 + 32) = v35;
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  sub_214031C4C();
  swift_allocError();
  *v19 = 0xD00000000000003ELL;
  v19[1] = 0x80000002147912D0;
  v19[2] = 0xD00000000000001CLL;
  v19[3] = 0x800000021478A360;
  swift_willThrow();

  (*(v6 + 8))(v8, v5);

  v20 = v28;
  v21 = v26;
  sub_213FDC6D0(v28, v26);
  __swift_destroy_boxed_opaque_existential_1(a1);

  return sub_213FDC6D0(v20, v21);
}

uint64_t sub_21420D8DC(void *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void), uint64_t a5)
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
  if (v11 == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v15 = v13;
    v16 = v11;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
    sub_214045AC0();
    sub_2146DA388();
    return (*(v8 + 8))(v10, v7);
  }

  return result;
}

uint64_t sub_21420DAC8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  sub_2145EEDA0(&v35);
  v9 = v35;
  v8 = v36;
  v11 = v37;
  v10 = v38;
  *v46 = *v40;
  *&v46[3] = *&v40[3];
  v30 = v42;
  v32 = v43;
  v33 = a1;
  v26 = v41;
  v27 = v44;
  v31 = v45;
  v28 = v39;
  v47 = v39;
  v34 = a2;
  v35 = 0xD00000000000003FLL;
  v36 = 0x8000000214791310;
  v37 = 0xD00000000000001CLL;
  v38 = 0x800000021478A360;

  sub_213FDC9D0(v11, v10);
  v25 = v8;
  v12 = v9(&v33, &v47, &v35);
  v13 = v9;
  if (v5)
  {

LABEL_6:

    v16 = v26;
    v15 = v27;
    v14 = v25;

    sub_213FDC6D0(v11, v10);
LABEL_7:
    v35 = v13;
    v36 = v14;
    v37 = v11;
    v38 = v10;
    v39 = v28;
    *v40 = *v46;
    *&v40[3] = *&v46[3];
    v41 = v16;
    v42 = v30;
    v43 = v32;
    v44 = v15;
    v45 = v31;
    return sub_21430ABD0(&v35);
  }

  v22 = a2;
  if ((v12 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v18 = 0xD00000000000003FLL;
    v18[1] = 0x8000000214791310;
    v18[2] = 0xD00000000000001CLL;
    v18[3] = 0x800000021478A360;
    swift_willThrow();

    goto LABEL_6;
  }

  v21 = v9;
  sub_213FDC6D0(v11, v10);

  v14 = v25;

  sub_213FDC6D0(v11, v10);
  v33 = a3;
  v34 = a4;
  v47 = v31;
  v35 = 0xD000000000000046;
  v36 = 0x8000000214791350;
  v37 = 0xD00000000000001CLL;
  v38 = 0x800000021478A360;

  v15 = v27;
  sub_213FDC9D0(v32, v27);
  v16 = v26;
  v17 = v26(&v33, &v47, &v35);
  if ((v17 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v20 = 0xD000000000000046;
    v20[1] = 0x8000000214791350;
    v20[2] = 0xD00000000000001CLL;
    v20[3] = 0x800000021478A360;
    swift_willThrow();

    v11 = a1;

    sub_213FDC6D0(v32, v27);
    v10 = v22;
    v13 = v21;
    goto LABEL_7;
  }

  sub_213FDC6D0(v32, v27);

  result = sub_213FDC6D0(v32, v27);
  *a5 = v21;
  *(a5 + 8) = v25;
  *(a5 + 16) = a1;
  *(a5 + 24) = v22;
  *(a5 + 32) = v28;
  *(a5 + 33) = *v46;
  *(a5 + 36) = *&v46[3];
  *(a5 + 40) = v26;
  *(a5 + 48) = v30;
  *(a5 + 56) = a3;
  *(a5 + 64) = a4;
  *(a5 + 72) = v31;
  return result;
}

uint64_t sub_21420DE78()
{
  if (*v0)
  {
    return 0xD000000000000011;
  }

  else
  {
    return 0x696669746E656469;
  }
}

uint64_t sub_21420DEBC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v6 || (sub_2146DA6A8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000011 && 0x8000000214788420 == a2)
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

uint64_t sub_21420DFA8(uint64_t a1)
{
  v2 = sub_21430AC24();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21420DFE4(uint64_t a1)
{
  v2 = sub_21430AC24();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21420E020@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C909F20, &qword_2146F5B70);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v38 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21430AC24();
  sub_2146DAA08();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
  LOBYTE(v54) = 0;
  sub_2142E12FC();
  sub_2146DA1C8();
  v53 = v59;
  v74 = v60;
  v70 = 1;
  sub_2146DA1C8();
  v40 = v71;
  v46 = v72;
  sub_2145EEDA0(&v59);
  v10 = v60;
  v52 = v59;
  v11 = v61;
  v12 = v62;
  v73[0] = *v64;
  *(v73 + 3) = *&v64[3];
  v45 = v65;
  v50 = v66;
  v51 = v67;
  v49 = v68;
  v48 = v69;
  *&v54 = v53;
  *(&v54 + 1) = v74;
  v44 = v63;
  LOBYTE(v58[0]) = v63;
  v59 = 0xD00000000000003FLL;
  v60 = 0x8000000214791310;
  v41 = 0x8000000214791310;
  v61 = 0xD00000000000001CLL;
  v62 = 0x800000021478A360;

  v43 = v11;
  v42 = v12;
  sub_213FDC9D0(v11, v12);
  v47 = v10;
  v13 = v52(&v54, v58, &v59);
  v39 = 0x800000021478A360;
  if (v13)
  {
    v14 = v43;
    v15 = v42;
    sub_213FDC6D0(v43, v42);
    v16 = v39;

    sub_213FDC6D0(v14, v15);
    v58[0] = v40;
    v58[1] = v46;
    LOBYTE(v54) = v48;
    v59 = 0xD000000000000046;
    v60 = 0x8000000214791350;
    v61 = 0xD00000000000001CLL;
    v62 = v16;

    sub_213FDC9D0(v51, v49);
    v17 = v45;
    v18 = v45(v58, &v54, &v59);
    v19 = v17;
    if (v18)
    {
      v26 = v49;
      sub_213FDC6D0(v51, v49);

      (*(v6 + 8))(v8, v5);
      v27 = v50;

      sub_213FDC6D0(v51, v26);
      v28 = v52;
      *&v54 = v52;
      v29 = v47;
      *(&v54 + 1) = v47;
      *&v55 = v53;
      v30 = v74;
      *(&v55 + 1) = v74;
      LOBYTE(v56) = v44;
      *(&v56 + 1) = v73[0];
      DWORD1(v56) = *(v73 + 3);
      *(&v56 + 1) = v17;
      *v57 = v27;
      v31 = v40;
      v32 = v46;
      *&v57[8] = v40;
      *&v57[16] = v46;
      v57[24] = v48;
      v33 = v54;
      v34 = v55;
      *(a2 + 57) = *&v57[9];
      v35 = *v57;
      a2[2] = v56;
      a2[3] = v35;
      *a2 = v33;
      a2[1] = v34;
      sub_21430AC78(&v54, &v59);
      __swift_destroy_boxed_opaque_existential_1(a1);
      v59 = v28;
      v60 = v29;
      v61 = v53;
      v62 = v30;
      v63 = v44;
      *v64 = v73[0];
      *&v64[3] = *(v73 + 3);
      v65 = v45;
      v66 = v27;
      v67 = v31;
      v68 = v32;
      goto LABEL_8;
    }

    sub_214031C4C();
    swift_allocError();
    *v36 = 0xD000000000000046;
    v36[1] = 0x8000000214791350;
    v37 = v39;
    v36[2] = 0xD00000000000001CLL;
    v36[3] = v37;
    swift_willThrow();

    (*(v6 + 8))(v8, v5);

    sub_213FDC6D0(v51, v49);
    v24 = v53;
    v25 = v74;
    v23 = v47;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    v20 = v41;
    *v21 = 0xD00000000000003FLL;
    v21[1] = v20;
    v22 = v39;
    v21[2] = 0xD00000000000001CLL;
    v21[3] = v22;
    swift_willThrow();

    v19 = v45;
    (*(v6 + 8))(v8, v5);
    v23 = v47;

    v24 = v43;
    v25 = v42;
    sub_213FDC6D0(v43, v42);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  v59 = v52;
  v60 = v23;
  v61 = v24;
  v62 = v25;
  v63 = v44;
  *v64 = v73[0];
  *&v64[3] = *(v73 + 3);
  v65 = v19;
  v66 = v50;
  v67 = v51;
  v68 = v49;
LABEL_8:
  v69 = v48;
  return sub_21430ABD0(&v59);
}

uint64_t sub_21420E7FC@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v6 = v5;
  v26 = a2;
  sub_2145EEF8C(&v21);
  v9 = v21;
  v10 = v22;
  v11 = v23;
  v12 = v24;
  v13 = v25;
  v20[0] = a3;
  v20[1] = a4;
  v27 = v25;
  v21 = 0xD000000000000046;
  v22 = 0x80000002147913A0;
  v23 = 0xD00000000000001CLL;
  v24 = 0x800000021478A360;
  v14 = v9;

  sub_213FDC9D0(v11, v12);
  v15 = v14(v20, &v27, &v21);
  if (v6)
  {
  }

  else
  {
    if (v15)
    {
      sub_213FDC6D0(v11, v12);

      result = sub_213FDC6D0(v11, v12);
      *a5 = a1;
      *(a5 + 8) = v26 & 1;
      *(a5 + 16) = v14;
      *(a5 + 24) = v10;
      *(a5 + 32) = a3;
      *(a5 + 40) = a4;
      *(a5 + 48) = v13;
      return result;
    }

    sub_214031C4C();
    swift_allocError();
    *v17 = 0xD000000000000046;
    v17[1] = 0x80000002147913A0;
    v17[2] = 0xD00000000000001CLL;
    v17[3] = 0x800000021478A360;
    swift_willThrow();
  }

  sub_213FDC6D0(v11, v12);

  return sub_213FDC6D0(v11, v12);
}

uint64_t sub_21420E9D0()
{
  if (*v0)
  {
    return 0x6B616873646E6168;
  }

  else
  {
    return 1702125924;
  }
}

uint64_t sub_21420EA10@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1702125924 && a2 == 0xE400000000000000;
  if (v5 || (sub_2146DA6A8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6B616873646E6168 && a2 == 0xEE006E656B6F5465)
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

uint64_t sub_21420EAF4(uint64_t a1)
{
  v2 = sub_21430ACD4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21420EB30(uint64_t a1)
{
  v2 = sub_21430ACD4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21420EB6C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C909F38, &qword_2146F5B80);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v26 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21430ACD4();
  sub_2146DAA08();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9058A0, &unk_2147379A0);
  LOBYTE(v35[0]) = 0;
  sub_2142E35EC();
  sub_2146DA1C8();
  v9 = v36;
  v10 = v37;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
  LOBYTE(v35[0]) = 1;
  sub_2142E12FC();
  sub_2146DA1C8();
  v41 = v10;
  v29 = v9;
  v13 = v36;
  v12 = v37;
  sub_2145EEF8C(&v36);
  v14 = v37;
  v15 = v39;
  v33 = v36;
  v34 = v38;
  v28 = v13;
  v35[0] = v13;
  v35[1] = v12;
  v32 = v12;
  v27 = v40;
  v42 = v40;
  v36 = 0xD000000000000046;
  v37 = 0x80000002147913A0;
  v38 = 0xD00000000000001CLL;
  v39 = 0x800000021478A360;

  v31 = v15;
  sub_213FDC9D0(v34, v15);
  v30 = v14;
  v16 = v33(v35, &v42, &v36);
  if (v16)
  {
    v17 = v31;
    sub_213FDC6D0(v34, v31);

    (*(v6 + 8))(v8, v5);
    v18 = v30;

    sub_213FDC6D0(v34, v17);
    v19 = v28;
    *a2 = v29;
    *(a2 + 8) = v41;
    v20 = v32;
    *(a2 + 16) = v33;
    *(a2 + 24) = v18;
    *(a2 + 32) = v19;
    *(a2 + 40) = v20;
    *(a2 + 48) = v27;

    sub_213FDC9D0(v19, v20);
    __swift_destroy_boxed_opaque_existential_1(a1);

    v21 = v19;
    v22 = v20;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v23 = 0xD000000000000046;
    v23[1] = 0x80000002147913A0;
    v23[2] = 0xD00000000000001CLL;
    v23[3] = 0x800000021478A360;
    swift_willThrow();

    (*(v6 + 8))(v8, v5);

    v24 = v34;
    v25 = v31;
    sub_213FDC6D0(v34, v31);
    __swift_destroy_boxed_opaque_existential_1(a1);

    v21 = v24;
    v22 = v25;
  }

  return sub_213FDC6D0(v21, v22);
}

uint64_t sub_21420EF5C(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C909F48, &qword_2146F5B88);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v12 - v5;
  v7 = *v1;
  v8 = *(v1 + 8);
  v9 = v1[5];
  v13 = v1[4];
  v14 = v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21430ACD4();
  sub_2146DAA28();
  v16 = v7;
  LOBYTE(v17) = v8;
  v18 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9058A0, &unk_2147379A0);
  sub_2142E37F4();
  v10 = v15;
  sub_2146DA388();
  if (v10)
  {
    return (*(v4 + 8))(v6, v3);
  }

  if (v14 != 1)
  {
    v16 = v13;
    v17 = v14;
    v18 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
    sub_214045AC0();
    sub_2146DA388();
    return (*(v4 + 8))(v6, v3);
  }

  result = sub_2146DA018();
  __break(1u);
  return result;
}

void *sub_21420F1A8@<X0>(void *__src@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X8>)
{
  memcpy(v12, __src, 0x169uLL);
  result = memcpy(a6, v12, 0x170uLL);
  *(a6 + 368) = a2;
  *(a6 + 376) = a3;
  *(a6 + 384) = a4;
  *(a6 + 392) = a5 & 1;
  return result;
}

unint64_t sub_21420F234()
{
  v1 = 0x7374756F6B726F77;
  v2 = 0x6D65766569686361;
  if (*v0 != 2)
  {
    v2 = 1702125924;
  }

  if (!*v0)
  {
    v1 = 0xD000000000000010;
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

uint64_t sub_21420F2B4@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_214378C2C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_21420F2DC(uint64_t a1)
{
  v2 = sub_21430AD28();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21420F318(uint64_t a1)
{
  v2 = sub_21430AD28();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21420F354@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C909F50, &qword_2146F5B90);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v18[-1] - v7;
  v9 = a1[3];
  v17 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v9);
  sub_21430AD28();
  sub_2146DAA08();
  if (!v2)
  {
    v10 = v6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C909F60, &qword_2146F5B98);
    v22[391] = 0;
    sub_21430AD7C();
    v11 = v5;
    sub_2146DA1C8();
    memcpy(v21, v22, sizeof(v21));
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C909F78, &qword_2146F5BA0);
    LOBYTE(v19) = 1;
    sub_21430AE54();
    sub_2146DA1C8();
    v12 = v18[0];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C909F90, &qword_2146F5BA8);
    LOBYTE(v19) = 2;
    sub_21430AF2C();
    sub_2146DA1C8();
    v13 = v18[0];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9058A0, &unk_2147379A0);
    v22[390] = 3;
    sub_2142E35EC();
    sub_2146DA1C8();
    (*(v10 + 8))(v8, v11);
    v15 = v19;
    v16 = v20;
    memcpy(v18, v21, 0x169uLL);
    v22[384] = v20;
    memcpy(a2, v18, 0x170uLL);
    *(a2 + 368) = v12;
    *(a2 + 376) = v13;
    *(a2 + 384) = v15;
    *(a2 + 392) = v16;
  }

  return __swift_destroy_boxed_opaque_existential_1(v17);
}

uint64_t sub_21420F6F4(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C909FA8, &qword_2146F5BB0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v13 - v5;
  memcpy(v22, v1, 0x169uLL);
  v7 = *(v1 + 368);
  v15 = *(v1 + 376);
  v16 = v7;
  v14 = *(v1 + 384);
  v23 = *(v1 + 392);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_213FB2E54(v22, v21, &qword_27C909F60, &qword_2146F5B98);
  sub_21430AD28();
  sub_2146DAA28();
  memcpy(v21, v22, 0x169uLL);
  v25 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C909F60, &qword_2146F5B98);
  sub_21430B004();
  v8 = v17;
  sub_2146DA388();
  if (v8)
  {
    memcpy(v20, v21, 0x169uLL);
    sub_213FB2DF4(v20, &qword_27C909F60, &qword_2146F5B98);
  }

  else
  {
    v9 = v14;
    v10 = v15;
    v11 = v23;
    memcpy(v20, v21, 0x169uLL);
    sub_213FB2DF4(v20, &qword_27C909F60, &qword_2146F5B98);
    v18 = v16;
    v24 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C909F78, &qword_2146F5BA0);
    sub_21430B0DC();
    sub_2146DA388();
    v18 = v10;
    v24 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C909F90, &qword_2146F5BA8);
    sub_21430B1B4();
    sub_2146DA388();
    v18 = v9;
    v19 = v11;
    v24 = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9058A0, &unk_2147379A0);
    sub_2142E37F4();
    sub_2146DA388();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_21420FA38@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  sub_2145EF100(&v35);
  v9 = v35;
  v8 = v36;
  v11 = v37;
  v10 = v38;
  *v46 = *v40;
  *&v46[3] = *&v40[3];
  v30 = v42;
  v32 = v43;
  v33 = a1;
  v26 = v41;
  v27 = v44;
  v31 = v45;
  v28 = v39;
  v47 = v39;
  v34 = a2;
  v35 = 0xD00000000000003CLL;
  v36 = 0x80000002147913F0;
  v37 = 0xD00000000000001CLL;
  v38 = 0x800000021478A360;

  sub_213FDC9D0(v11, v10);
  v25 = v8;
  v12 = v9(&v33, &v47, &v35);
  v13 = v9;
  if (v5)
  {

LABEL_6:

    v16 = v26;
    v15 = v27;
    v14 = v25;

    sub_213FDC6D0(v11, v10);
LABEL_7:
    v35 = v13;
    v36 = v14;
    v37 = v11;
    v38 = v10;
    v39 = v28;
    *v40 = *v46;
    *&v40[3] = *&v46[3];
    v41 = v16;
    v42 = v30;
    v43 = v32;
    v44 = v15;
    v45 = v31;
    return sub_21430B28C(&v35);
  }

  v22 = a2;
  if ((v12 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v18 = 0xD00000000000003CLL;
    v18[1] = 0x80000002147913F0;
    v18[2] = 0xD00000000000001CLL;
    v18[3] = 0x800000021478A360;
    swift_willThrow();

    goto LABEL_6;
  }

  v21 = v9;
  sub_213FDC6D0(v11, v10);

  v14 = v25;

  sub_213FDC6D0(v11, v10);
  v33 = a3;
  v34 = a4;
  v47 = v31;
  v35 = 0xD000000000000040;
  v36 = 0x8000000214791430;
  v37 = 0xD00000000000001CLL;
  v38 = 0x800000021478A360;

  v15 = v27;
  sub_213FDC9D0(v32, v27);
  v16 = v26;
  v17 = v26(&v33, &v47, &v35);
  if ((v17 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v20 = 0xD000000000000040;
    v20[1] = 0x8000000214791430;
    v20[2] = 0xD00000000000001CLL;
    v20[3] = 0x800000021478A360;
    swift_willThrow();

    v11 = a1;

    sub_213FDC6D0(v32, v27);
    v10 = v22;
    v13 = v21;
    goto LABEL_7;
  }

  sub_213FDC6D0(v32, v27);

  result = sub_213FDC6D0(v32, v27);
  *a5 = v21;
  *(a5 + 8) = v25;
  *(a5 + 16) = a1;
  *(a5 + 24) = v22;
  *(a5 + 32) = v28;
  *(a5 + 33) = *v46;
  *(a5 + 36) = *&v46[3];
  *(a5 + 40) = v26;
  *(a5 + 48) = v30;
  *(a5 + 56) = a3;
  *(a5 + 64) = a4;
  *(a5 + 72) = v31;
  return result;
}

unint64_t sub_21420FDD8()
{
  if (*v0)
  {
    return 0xD000000000000014;
  }

  else
  {
    return 0xD000000000000010;
  }
}

uint64_t sub_21420FE14@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD000000000000010 && 0x8000000214796710 == a2 || (sub_2146DA6A8() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0xD000000000000014 && 0x8000000214796730 == a2)
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

uint64_t sub_21420FEF8(uint64_t a1)
{
  v2 = sub_21430B2E0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21420FF34(uint64_t a1)
{
  v2 = sub_21430B2E0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21420FF70@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C909FE0, &qword_2146F5BB8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v38 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21430B2E0();
  sub_2146DAA08();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
  LOBYTE(v54) = 0;
  sub_2142E12FC();
  sub_2146DA1C8();
  v53 = v59;
  v74 = v60;
  v70 = 1;
  sub_2146DA1C8();
  v40 = v71;
  v46 = v72;
  sub_2145EF100(&v59);
  v10 = v60;
  v52 = v59;
  v11 = v61;
  v12 = v62;
  v73[0] = *v64;
  *(v73 + 3) = *&v64[3];
  v45 = v65;
  v50 = v66;
  v51 = v67;
  v49 = v68;
  v48 = v69;
  *&v54 = v53;
  *(&v54 + 1) = v74;
  v44 = v63;
  LOBYTE(v58[0]) = v63;
  v59 = 0xD00000000000003CLL;
  v60 = 0x80000002147913F0;
  v41 = 0x80000002147913F0;
  v61 = 0xD00000000000001CLL;
  v62 = 0x800000021478A360;

  v43 = v11;
  v42 = v12;
  sub_213FDC9D0(v11, v12);
  v47 = v10;
  v13 = v52(&v54, v58, &v59);
  v39 = 0x800000021478A360;
  if (v13)
  {
    v14 = v43;
    v15 = v42;
    sub_213FDC6D0(v43, v42);
    v16 = v39;

    sub_213FDC6D0(v14, v15);
    v58[0] = v40;
    v58[1] = v46;
    LOBYTE(v54) = v48;
    v59 = 0xD000000000000040;
    v60 = 0x8000000214791430;
    v61 = 0xD00000000000001CLL;
    v62 = v16;

    sub_213FDC9D0(v51, v49);
    v17 = v45;
    v18 = v45(v58, &v54, &v59);
    v19 = v17;
    if (v18)
    {
      v26 = v49;
      sub_213FDC6D0(v51, v49);

      (*(v6 + 8))(v8, v5);
      v27 = v50;

      sub_213FDC6D0(v51, v26);
      v28 = v52;
      *&v54 = v52;
      v29 = v47;
      *(&v54 + 1) = v47;
      *&v55 = v53;
      v30 = v74;
      *(&v55 + 1) = v74;
      LOBYTE(v56) = v44;
      *(&v56 + 1) = v73[0];
      DWORD1(v56) = *(v73 + 3);
      *(&v56 + 1) = v17;
      *v57 = v27;
      v31 = v40;
      v32 = v46;
      *&v57[8] = v40;
      *&v57[16] = v46;
      v57[24] = v48;
      v33 = v54;
      v34 = v55;
      *(a2 + 57) = *&v57[9];
      v35 = *v57;
      a2[2] = v56;
      a2[3] = v35;
      *a2 = v33;
      a2[1] = v34;
      sub_21430B334(&v54, &v59);
      __swift_destroy_boxed_opaque_existential_1(a1);
      v59 = v28;
      v60 = v29;
      v61 = v53;
      v62 = v30;
      v63 = v44;
      *v64 = v73[0];
      *&v64[3] = *(v73 + 3);
      v65 = v45;
      v66 = v27;
      v67 = v31;
      v68 = v32;
      goto LABEL_8;
    }

    sub_214031C4C();
    swift_allocError();
    *v36 = 0xD000000000000040;
    v36[1] = 0x8000000214791430;
    v37 = v39;
    v36[2] = 0xD00000000000001CLL;
    v36[3] = v37;
    swift_willThrow();

    (*(v6 + 8))(v8, v5);

    sub_213FDC6D0(v51, v49);
    v24 = v53;
    v25 = v74;
    v23 = v47;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    v20 = v41;
    *v21 = 0xD00000000000003CLL;
    v21[1] = v20;
    v22 = v39;
    v21[2] = 0xD00000000000001CLL;
    v21[3] = v22;
    swift_willThrow();

    v19 = v45;
    (*(v6 + 8))(v8, v5);
    v23 = v47;

    v24 = v43;
    v25 = v42;
    sub_213FDC6D0(v43, v42);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  v59 = v52;
  v60 = v23;
  v61 = v24;
  v62 = v25;
  v63 = v44;
  *v64 = v73[0];
  *&v64[3] = *(v73 + 3);
  v65 = v19;
  v66 = v50;
  v67 = v51;
  v68 = v49;
LABEL_8:
  v69 = v48;
  return sub_21430B28C(&v59);
}

uint64_t sub_214210718(void *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void), uint64_t a5)
{
  v18 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v20 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v15 - v8;
  v11 = v5[2];
  v10 = v5[3];
  v12 = v5[7];
  v16 = v5[8];
  v17 = v12;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v18();
  sub_2146DAA28();
  if (v10 == 1)
  {
    goto LABEL_7;
  }

  v21 = v11;
  v22 = v10;
  v23 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
  sub_214045AC0();
  v13 = v19;
  sub_2146DA388();
  if (v13)
  {
    return (*(v20 + 8))(v9, v7);
  }

  if (v16 == 1)
  {
LABEL_7:
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v21 = v17;
    v22 = v16;
    v23 = 1;
    sub_2146DA388();
    return (*(v20 + 8))(v9, v7);
  }

  return result;
}

uint64_t sub_214210974@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v12 = type metadata accessor for IDSActivitySharingInvitation.SecureCloudShareItem(0);
  v27 = a5;
  sub_213FB2E54(a5, a6 + *(v12 + 24), &qword_27C9041D8, &qword_2146ED5C0);
  sub_2145EF54C(&v31);
  v14 = v31;
  v13 = v32;
  v15 = v33;
  v16 = v34;
  v17 = v35;
  *a6 = a1;
  *(a6 + 8) = a2;
  *(a6 + 16) = v14;
  *(a6 + 24) = v13;
  *(a6 + 32) = v15;
  *(a6 + 40) = v16;
  *(a6 + 48) = v17;
  v30[0] = a3;
  v30[1] = a4;
  v36 = v17;
  v37 = v17;
  v31 = 0xD00000000000003ALL;
  v32 = 0x8000000214791480;
  v33 = 0xD00000000000001CLL;
  v34 = 0x800000021478A360;

  sub_213FDC9D0(v15, v16);
  v18 = v28;
  v29 = v14;
  v19 = v14(v30, &v37, &v31);
  if (v18)
  {
  }

  else
  {
    v26 = a4;
    if (v19)
    {
      sub_213FDC6D0(v15, v16);

      sub_213FB2DF4(v27, &qword_27C9041D8, &qword_2146ED5C0);
      v20 = *(a6 + 32);
      v21 = *(a6 + 40);

      result = sub_213FDC6D0(v20, v21);
      *(a6 + 16) = v14;
      *(a6 + 24) = v13;
      *(a6 + 32) = a3;
      *(a6 + 40) = v26;
      *(a6 + 48) = v36;
      return result;
    }

    sub_214031C4C();
    swift_allocError();
    *v23 = 0xD00000000000003ALL;
    v23[1] = 0x8000000214791480;
    v23[2] = 0xD00000000000001CLL;
    v23[3] = 0x800000021478A360;
    swift_willThrow();
  }

  sub_213FB2DF4(v27, &qword_27C9041D8, &qword_2146ED5C0);
  v24 = *(a6 + 32);
  v25 = *(a6 + 40);

  sub_213FDC6D0(v24, v25);
  *(a6 + 16) = v29;
  *(a6 + 24) = v13;
  *(a6 + 32) = v15;
  *(a6 + 40) = v16;
  *(a6 + 48) = v36;
  return sub_21432887C(a6, type metadata accessor for IDSActivitySharingInvitation.SecureCloudShareItem);
}

uint64_t sub_214210BD4()
{
  v1 = 0x4C52556572616873;
  if (*v0 != 1)
  {
    v1 = 0x6974617469766E69;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x656D614E656E6F7ALL;
  }
}

uint64_t sub_214210C3C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_214378DA0(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_214210C64(uint64_t a1)
{
  v2 = sub_21430B390();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_214210CA0(uint64_t a1)
{
  v2 = sub_21430B390();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_214210CDC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v43 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9041D8, &qword_2146ED5C0);
  MEMORY[0x28223BE20](v3);
  v5 = &v36 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C909FF8, &qword_2146F5BC8);
  v44 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v36 - v7;
  v9 = type metadata accessor for IDSActivitySharingInvitation.SecureCloudShareItem(0);
  MEMORY[0x28223BE20](v9);
  v11 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = a1[3];
  v46 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v12);
  sub_21430B390();
  v13 = v45;
  sub_2146DAA08();
  if (v13)
  {
    return __swift_destroy_boxed_opaque_existential_1(v46);
  }

  v45 = v5;
  v42 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
  LOBYTE(v47[0]) = 0;
  sub_2142E12FC();
  sub_2146DA1C8();
  v14 = v48;
  v15 = v49;
  LOBYTE(v47[0]) = 1;
  sub_2146DA1C8();
  v16 = v49;
  v41 = v48;
  LOBYTE(v48) = 2;
  sub_2142E285C();
  v17 = v45;
  sub_2146DA1C8();
  v19 = v42;
  sub_213FB2E54(v17, &v42[*(v9 + 24)], &qword_27C9041D8, &qword_2146ED5C0);
  sub_2145EF54C(&v48);
  v40 = 0;
  v21 = v48;
  v20 = v49;
  v22 = v50;
  v23 = v51;
  v24 = v52;
  *v19 = v14;
  *(v19 + 8) = v15;
  *(v19 + 16) = v21;
  *(v19 + 24) = v20;
  *(v19 + 32) = v22;
  *(v19 + 40) = v23;
  *(v19 + 48) = v24;
  v47[0] = v41;
  v47[1] = v16;
  v36 = v16;
  v53 = v24;
  v54 = v24;
  v48 = 0xD00000000000003ALL;
  v49 = 0x8000000214791480;
  v50 = 0xD00000000000001CLL;
  v51 = 0x800000021478A360;

  v38 = v23;
  v39 = v22;
  sub_213FDC9D0(v22, v23);
  v37 = v20;
  v25 = v40;
  v40 = v21;
  v26 = v21(v47, &v54, &v48);
  if (v25)
  {
  }

  else
  {
    v27 = v36;
    if (v26)
    {
      sub_213FDC6D0(v39, v38);

      sub_213FB2DF4(v45, &qword_27C9041D8, &qword_2146ED5C0);
      (*(v44 + 8))(v8, v6);
      v28 = *(v19 + 32);
      v29 = *(v19 + 40);

      sub_213FDC6D0(v28, v29);
      v30 = v37;
      *(v19 + 16) = v40;
      *(v19 + 24) = v30;
      *(v19 + 32) = v41;
      *(v19 + 40) = v27;
      *(v19 + 48) = v53;
      sub_214328704(v19, v43, type metadata accessor for IDSActivitySharingInvitation.SecureCloudShareItem);
      return __swift_destroy_boxed_opaque_existential_1(v46);
    }

    sub_214031C4C();
    swift_allocError();
    *v31 = 0xD00000000000003ALL;
    v31[1] = 0x8000000214791480;
    v31[2] = 0xD00000000000001CLL;
    v31[3] = 0x800000021478A360;
    swift_willThrow();
  }

  sub_213FB2DF4(v45, &qword_27C9041D8, &qword_2146ED5C0);
  (*(v44 + 8))(v8, v6);
  v32 = *(v19 + 32);
  v33 = *(v19 + 40);

  sub_213FDC6D0(v32, v33);
  v34 = v37;
  *(v19 + 16) = v40;
  *(v19 + 24) = v34;
  v35 = v38;
  *(v19 + 32) = v39;
  *(v19 + 40) = v35;
  *(v19 + 48) = v53;
  __swift_destroy_boxed_opaque_existential_1(v46);
  return sub_21432887C(v19, type metadata accessor for IDSActivitySharingInvitation.SecureCloudShareItem);
}

uint64_t sub_214211264(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90A008, &qword_2146F5BD0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v11 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21430B390();
  sub_2146DAA28();
  v13 = *v3;
  v12 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
  sub_214045AC0();
  sub_2146DA388();
  if (v2)
  {
    return (*(v6 + 8))(v8, v5);
  }

  v10 = *(v3 + 5);
  if (v10 == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    *&v13 = *(v3 + 4);
    *(&v13 + 1) = v10;
    v12 = 1;
    sub_2146DA388();
    type metadata accessor for IDSActivitySharingInvitation.SecureCloudShareItem(0);
    LOBYTE(v13) = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9041D8, &qword_2146ED5C0);
    sub_2142E29C4();
    sub_2146DA388();
    return (*(v6 + 8))(v8, v5);
  }

  return result;
}

uint64_t sub_21421151C@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t (*a4)(void, void, void)@<X3>, char a5@<W4>, uint64_t a6@<X5>, char a7@<W6>, uint64_t a8@<X7>, uint64_t a9@<X8>, char a10, uint64_t a11, char a12, uint64_t a13, char a14, uint64_t a15, char a16, uint64_t a17, char a18, uint64_t a19, char a20, uint64_t a21, char a22, uint64_t a23, char a24, uint64_t a25, char a26, uint64_t a27, char a28, uint64_t a29, char a30, uint64_t a31, char a32, uint64_t a33, char a34)
{
  v180 = a3;
  LOBYTE(v179) = *(a1 + 64);
  v34 = a1[3];
  v177 = a1[2];
  v178 = v34;
  v35 = a1[1];
  v175 = *a1;
  v176 = v35;
  sub_2145EF844(&v78);
  v36 = *(&v78 + 1);
  v66 = v78;
  v37 = v79;
  v64 = v80;
  sub_2145EF9AC(&v137);
  v70 = v137;
  v68 = v138;
  v63 = v139;
  v62 = v140;
  v69 = v142;
  v157 = v141;
  v156 = a7 & 1;
  v155 = a10 & 1;
  v38 = v180;
  v154 = a12 & 1;
  v153 = a14 & 1;
  v152 = a16 & 1;
  v151 = a18 & 1;
  v150 = a20 & 1;
  v149 = a22 & 1;
  v148 = a24 & 1;
  v147 = a26 & 1;
  v146 = a28 & 1;
  v145 = a30 & 1;
  v144 = a32 & 1;
  v143 = a34 & 1;
  v67 = v141;
  v173 = v141;
  *&v78 = v66;
  *(&v78 + 1) = v36;
  v79 = v37;
  LOBYTE(v80) = v64;

  sub_21404F7E0(v37, *(&v37 + 1));
  sub_214032118(a2, v38, 2, 0xD000000000000047, 0x80000002147914C0, 0xD00000000000001CLL, 0x800000021478A360);
  if (v71)
  {
    sub_213FDC6BC(a2, v38);

    v72 = v78;
    v40 = *(&v79 + 1);
    v39 = v79;
    v41 = v80;

    sub_214032564(v37, *(&v37 + 1));
    v42 = v72;
    v43 = v69;
    v44 = v67;
    v45 = v70;
    v46 = v68;
  }

  else
  {

    v73 = v78;
    v47 = *(&v79 + 1);
    v65 = v79;
    v41 = v80;

    sub_214032564(v37, *(&v37 + 1));
    v137 = a4;
    LOBYTE(v138) = a5 & 1;
    v43 = v69;
    v157 = v69;
    *&v78 = 0xD00000000000004ALL;
    *(&v78 + 1) = 0x8000000214791510;
    *&v79 = 0xD00000000000001CLL;
    *(&v79 + 1) = 0x800000021478A360;

    v45 = v70;
    if (v70(&v137, &v157, &v78))
    {
      sub_213FDC6BC(a2, v180);
      v180 = v47;

      v49 = v180;
      *(a9 + 88) = v65;
      *(a9 + 96) = v49;
      *(a9 + 104) = v41;
      *(a9 + 112) = v70;
      *(a9 + 120) = v68;
      *(a9 + 128) = a4;
      *(a9 + 138) = v69;
      *(a9 + 64) = v179;
      *(a9 + 105) = *v174;
      *(a9 + 108) = *&v174[3];
      v173 = 0;
      v50 = v178;
      *(a9 + 32) = v177;
      *(a9 + 48) = v50;
      v51 = v176;
      *a9 = v175;
      *(a9 + 16) = v51;
      *(a9 + 72) = v73;
      *(a9 + 136) = a5 & 1;
      *(a9 + 137) = 0;
      *(a9 + 139) = v171;
      *(a9 + 143) = v172;
      *(a9 + 144) = a6;
      *(a9 + 152) = a7 & 1;
      *(a9 + 153) = v170[0];
      *(a9 + 156) = *(v170 + 3);
      *(a9 + 160) = a8;
      *(a9 + 168) = a10 & 1;
      *(a9 + 172) = *(v169 + 3);
      *(a9 + 169) = v169[0];
      *(a9 + 176) = a11;
      *(a9 + 184) = a12 & 1;
      *(a9 + 188) = *(v168 + 3);
      *(a9 + 185) = v168[0];
      *(a9 + 192) = a13;
      *(a9 + 200) = a14 & 1;
      *(a9 + 204) = *(v167 + 3);
      *(a9 + 201) = v167[0];
      *(a9 + 208) = a15;
      *(a9 + 216) = a16 & 1;
      LODWORD(v49) = v166[0];
      *(a9 + 220) = *(v166 + 3);
      *(a9 + 217) = v49;
      *(a9 + 224) = a17;
      *(a9 + 232) = a18 & 1;
      LODWORD(v49) = v165[0];
      *(a9 + 236) = *(v165 + 3);
      *(a9 + 233) = v49;
      *(a9 + 240) = a19;
      *(a9 + 248) = a20 & 1;
      LODWORD(v49) = v164[0];
      *(a9 + 252) = *(v164 + 3);
      *(a9 + 249) = v49;
      *(a9 + 256) = a21;
      *(a9 + 264) = a22 & 1;
      v52 = v163[0];
      *(a9 + 268) = *(v163 + 3);
      *(a9 + 265) = v52;
      *(a9 + 272) = a23;
      *(a9 + 280) = a24 & 1;
      v53 = v162[0];
      *(a9 + 284) = *(v162 + 3);
      *(a9 + 281) = v53;
      *(a9 + 288) = a25;
      *(a9 + 296) = a26 & 1;
      v54 = v161[0];
      *(a9 + 300) = *(v161 + 3);
      *(a9 + 297) = v54;
      *(a9 + 304) = a27;
      *(a9 + 312) = a28 & 1;
      v55 = v160[0];
      *(a9 + 316) = *(v160 + 3);
      *(a9 + 313) = v55;
      *(a9 + 320) = a29;
      *(a9 + 328) = a30 & 1;
      v56 = v159[0];
      *(a9 + 332) = *(v159 + 3);
      *(a9 + 329) = v56;
      *(a9 + 336) = a31;
      *(a9 + 344) = a32 & 1;
      v57 = v158[0];
      *(a9 + 348) = *(v158 + 3);
      *(a9 + 345) = v57;
      *(a9 + 352) = a33;
      *(a9 + 360) = a34 & 1;
      return result;
    }

    v40 = v47;
    sub_214031C4C();
    swift_allocError();
    *v58 = 0xD00000000000004ALL;
    v58[1] = 0x8000000214791510;
    v58[2] = 0xD00000000000001CLL;
    v58[3] = 0x800000021478A360;
    swift_willThrow();
    sub_213FDC6BC(a2, v180);
    v46 = v68;

    v44 = v67;
    v173 = v67;
    v42 = v73;
    v39 = v65;
  }

  v84 = v39;
  v85 = v40;
  v86 = v41;
  v88 = v45;
  v89 = v46;
  v90 = v63;
  v91 = v62;
  v82 = v179;
  *v87 = *v174;
  *&v87[3] = *&v174[3];
  v92 = v44;
  v80 = v177;
  v81 = v178;
  v78 = v175;
  v79 = v176;
  v83 = v42;
  v93 = v43;
  v95 = v172;
  v94 = v171;
  v96 = a6;
  v97 = a7 & 1;
  *&v98[3] = *(v170 + 3);
  *v98 = v170[0];
  v99 = a8;
  v100 = a10 & 1;
  *&v101[3] = *(v169 + 3);
  *v101 = v169[0];
  v102 = a11;
  v103 = a12 & 1;
  *&v104[3] = *(v168 + 3);
  *v104 = v168[0];
  v105 = a13;
  v106 = a14 & 1;
  *&v107[3] = *(v167 + 3);
  *v107 = v167[0];
  v108 = a15;
  v109 = a16 & 1;
  *&v110[3] = *(v166 + 3);
  *v110 = v166[0];
  v111 = a17;
  v112 = a18 & 1;
  *&v113[3] = *(v165 + 3);
  *v113 = v165[0];
  v114 = a19;
  v115 = a20 & 1;
  *&v116[3] = *(v164 + 3);
  *v116 = v164[0];
  v117 = a21;
  v118 = a22 & 1;
  *v119 = v163[0];
  *&v119[3] = *(v163 + 3);
  v120 = a23;
  v121 = a24 & 1;
  *v122 = v162[0];
  *&v122[3] = *(v162 + 3);
  v123 = a25;
  v124 = a26 & 1;
  *v125 = v161[0];
  *&v125[3] = *(v161 + 3);
  v126 = a27;
  v127 = a28 & 1;
  *v128 = v160[0];
  *&v128[3] = *(v160 + 3);
  v129 = a29;
  v130 = a30 & 1;
  *v131 = v159[0];
  *&v131[3] = *(v159 + 3);
  v132 = a31;
  v133 = a32 & 1;
  *v134 = v158[0];
  *&v134[3] = *(v158 + 3);
  v135 = a33;
  v136 = a34 & 1;
  return sub_21430B3E4(&v78);
}

uint64_t sub_214211E50(char a1)
{
  result = 0x656C706D6173;
  switch(a1)
  {
    case 1:
      result = 0x5555656372756F73;
      break;
    case 2:
      result = 0x746F687370616E73;
      break;
    case 3:
      result = 0xD00000000000001CLL;
      break;
    case 4:
      result = 0x7542796772656E65;
      break;
    case 5:
      result = 0xD000000000000010;
      break;
    case 6:
      result = 0x6E694D6B73697262;
      break;
    case 7:
      result = 0xD000000000000010;
      break;
    case 8:
      result = 0x6F48657669746361;
      break;
    case 9:
      result = 0x6F48657669746361;
      break;
    case 10:
      result = 0xD000000000000019;
      break;
    case 11:
      v3 = 1885697139;
      goto LABEL_8;
    case 12:
      v3 = 1752397168;
LABEL_8:
      result = v3 | 0x6E756F4300000000;
      break;
    case 13:
      result = 0x6168636C65656877;
      break;
    case 14:
      result = 0xD000000000000010;
      break;
    case 15:
      result = 0x756E694D65766F6DLL;
      break;
    case 16:
      result = 0xD000000000000010;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_214212064@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_214378EC0(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_21421208C(uint64_t a1)
{
  v2 = sub_21430B438();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2142120C8(uint64_t a1)
{
  v2 = sub_21430B438();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_214212104@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90A010, &qword_2146F5BD8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v29 - v7;
  v9 = a1[3];
  v186 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v9);
  sub_21430B438();
  sub_2146DAA08();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(v186);
  }

  v73 = a2;
  v74 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90A020, &qword_2146F5BE0);
  v158 = 0;
  sub_21430B48C();
  sub_2146DA1C8();
  v155 = v161;
  v156 = v162;
  v157 = v163;
  v154 = v160;
  v153 = v159;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905680, &unk_2146F3CE0);
  LOBYTE(v75[0]) = 1;
  sub_2142E1278();
  sub_2146DA1C8();
  v10 = *(&v78 + 1);
  v72 = v78;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905698, &qword_2146F3D00);
  LOBYTE(v75[0]) = 2;
  v12 = sub_2142E14CC();
  sub_2146DA1C8();
  v70 = v78;
  v71 = v10;
  LODWORD(v10) = BYTE8(v78);
  LOBYTE(v75[0]) = 3;
  sub_2146DA1C8();
  v68 = v11;
  v69 = v12;
  v66 = v10;
  v13 = v78;
  v67 = BYTE8(v78);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9058A0, &unk_2147379A0);
  LOBYTE(v75[0]) = 4;
  sub_2142E35EC();
  sub_2146DA1C8();
  v63 = v13;
  v64 = v78;
  v65 = BYTE8(v78);
  LOBYTE(v75[0]) = 5;
  sub_2146DA1C8();
  v61 = v78;
  v62 = BYTE8(v78);
  LOBYTE(v75[0]) = 6;
  sub_2146DA1C8();
  v59 = v78;
  v60 = BYTE8(v78);
  LOBYTE(v75[0]) = 7;
  sub_2146DA1C8();
  v58 = v78;
  v15 = v5;
  v16 = BYTE8(v78);
  LOBYTE(v75[0]) = 8;
  sub_2146DA1C8();
  v56 = v78;
  v57 = BYTE8(v78);
  LOBYTE(v75[0]) = 9;
  v17 = v15;
  sub_2146DA1C8();
  v18 = v78;
  v55 = BYTE8(v78);
  LOBYTE(v75[0]) = 10;
  sub_2146DA1C8();
  v53 = v78;
  v54 = BYTE8(v78);
  LOBYTE(v75[0]) = 11;
  sub_2146DA1C8();
  v51 = v78;
  v52 = BYTE8(v78);
  LOBYTE(v75[0]) = 12;
  sub_2146DA1C8();
  v49 = v78;
  v50 = BYTE8(v78);
  LOBYTE(v75[0]) = 13;
  sub_2146DA1C8();
  v47 = v78;
  v48 = BYTE8(v78);
  LOBYTE(v75[0]) = 14;
  sub_2146DA1C8();
  v45 = v78;
  v46 = BYTE8(v78);
  LOBYTE(v75[0]) = 15;
  sub_2146DA1C8();
  v43 = v78;
  v44 = BYTE8(v78);
  v150 = 16;
  sub_2146DA1C8();
  v37 = v151;
  LODWORD(v15) = v152;
  sub_213FB2E54(&v153, &v78, &qword_27C90A020, &qword_2146F5BE0);
  sub_2145EF844(&v78);
  v68 = *(&v78 + 1);
  v40 = v78;
  v19 = *(&v79 + 1);
  v69 = v79;
  LODWORD(v36) = v80;
  sub_2145EF9AC(v75);
  v42 = v75[0];
  v31 = *&v75[1];
  v30 = BYTE8(v75[1]);
  v41 = BYTE10(v75[1]);
  v183 = v155;
  v184 = v156;
  LOBYTE(v185) = v157;
  v181 = v153;
  v182 = v154;
  LOBYTE(v76) = BYTE9(v75[1]);
  v149 = v67;
  v148 = v65;
  v147 = v62;
  v146 = v60;
  v145 = v16;
  v144 = v57;
  v143 = v55;
  v142 = v54;
  v141 = v52;
  v140 = v50;
  v139 = v48;
  v138 = v46;
  v137 = v44;
  v38 = v15;
  v39 = BYTE9(v75[1]);
  v136 = v15;
  v179 = BYTE9(v75[1]);
  *&v78 = v40;
  v20 = v69;
  *(&v78 + 1) = v68;
  *&v79 = v69;
  *(&v79 + 1) = v19;
  LOBYTE(v80) = v36;

  v32 = v19;
  sub_21404F7E0(v20, v19);
  v36 = "ureCloudShareItem.shareURL";
  v40 = 0x800000021478A360;
  sub_214032118(v72, v71, 2, 0xD000000000000047, 0x80000002147914C0, 0xD00000000000001CLL, 0x800000021478A360);
  v21 = v40;

  v35 = v78;
  v34 = *(&v79 + 1);
  v36 = v79;
  v33 = v80;

  sub_214032564(v69, v32);
  v76 = v70;
  v77 = v66;
  LOBYTE(v75[0]) = v41;
  *&v78 = 0xD00000000000004ALL;
  *(&v78 + 1) = 0x8000000214791510;
  *&v79 = 0xD00000000000001CLL;
  *(&v79 + 1) = v21;

  if ((v42)(&v76, v75, &v78))
  {
    sub_213FDC6BC(v72, v71);

    sub_213FB2DF4(&v153, &qword_27C90A020, &qword_2146F5BE0);
    (*(v74 + 8))(v8, v17);
    v22 = *(&v42 + 1);

    *(&v75[8] + 11) = v177;
    *(&v75[9] + 9) = *v176;
    HIDWORD(v75[10]) = *&v175[3];
    *(&v75[10] + 9) = *v175;
    HIDWORD(v75[11]) = *&v174[3];
    *(&v75[11] + 9) = *v174;
    HIDWORD(v75[12]) = *&v173[3];
    *(&v75[12] + 9) = *v173;
    HIDWORD(v75[13]) = *&v172[3];
    *(&v75[13] + 9) = *v172;
    HIDWORD(v75[14]) = *&v171[3];
    *(&v75[14] + 9) = *v171;
    HIDWORD(v75[15]) = *&v170[3];
    *(&v75[15] + 9) = *v170;
    *(&v75[16] + 9) = *v169;
    *(&v75[17] + 9) = *v168;
    *(&v75[18] + 9) = *v167;
    *(&v75[19] + 9) = *v166;
    *(&v75[20] + 9) = *v165;
    *(&v75[21] + 9) = *v164;
    v179 = 0;
    v75[2] = v183;
    v75[3] = v184;
    *&v75[4] = v185;
    v75[0] = v181;
    v75[1] = v182;
    *(&v75[4] + 8) = v35;
    *(&v75[5] + 1) = v36;
    *&v75[6] = v34;
    BYTE8(v75[6]) = v33;
    HIDWORD(v75[6]) = *&v180[3];
    *(&v75[6] + 9) = *v180;
    *&v75[7] = v42;
    *(&v75[7] + 1) = v22;
    *&v75[8] = v70;
    v23 = v66;
    WORD4(v75[8]) = v66;
    HIBYTE(v75[8]) = v178;
    HIDWORD(v75[9]) = *&v176[3];
    HIDWORD(v75[16]) = *&v169[3];
    HIDWORD(v75[17]) = *&v168[3];
    HIDWORD(v75[18]) = *&v167[3];
    HIDWORD(v75[19]) = *&v166[3];
    HIDWORD(v75[20]) = *&v165[3];
    HIDWORD(v75[21]) = *&v164[3];
    v24 = v41;
    BYTE10(v75[8]) = v41;
    v25 = v63;
    *&v75[9] = v63;
    BYTE8(v75[9]) = v67;
    *&v75[10] = v64;
    BYTE8(v75[10]) = v65;
    *&v75[11] = v61;
    BYTE8(v75[11]) = v62;
    *&v75[12] = v59;
    BYTE8(v75[12]) = v60;
    *&v75[13] = v58;
    BYTE8(v75[13]) = v16;
    *&v75[14] = v56;
    BYTE8(v75[14]) = v57;
    v29 = v18;
    *&v75[15] = v18;
    v26 = v55;
    BYTE8(v75[15]) = v55;
    *&v75[16] = v53;
    BYTE8(v75[16]) = v54;
    *&v75[17] = v51;
    BYTE8(v75[17]) = v52;
    *&v75[18] = v49;
    BYTE8(v75[18]) = v50;
    *&v75[19] = v47;
    BYTE8(v75[19]) = v48;
    *&v75[20] = v45;
    BYTE8(v75[20]) = v46;
    *&v75[21] = v43;
    BYTE8(v75[21]) = v44;
    *&v75[22] = v37;
    BYTE8(v75[22]) = v38;
    memcpy(v73, v75, 0x169uLL);
    sub_21430B564(v75, &v78);
    __swift_destroy_boxed_opaque_existential_1(v186);
    v85 = v34;
    v86 = v33;
    v88 = v42;
    v89 = v70;
    v90 = v23;
    v91 = 0;
    v92 = v24;
    v95 = v25;
    v82 = v185;
    v80 = v183;
    v81 = v184;
    v78 = v181;
    v79 = v182;
    v83 = v35;
    v84 = v36;
    *v87 = *v180;
    *&v87[3] = *&v180[3];
    v93 = v177;
    v94 = v178;
    v96 = v67;
    *v97 = *v176;
    *&v97[3] = *&v176[3];
    v98 = v64;
    v99 = v65;
    *&v100[3] = *&v175[3];
    *v100 = *v175;
    v101 = v61;
    v102 = v62;
    *&v103[3] = *&v174[3];
    *v103 = *v174;
    v104 = v59;
    v105 = v60;
    *&v106[3] = *&v173[3];
    *v106 = *v173;
    v107 = v58;
    v108 = v16;
    *&v109[3] = *&v172[3];
    *v109 = *v172;
    v110 = v56;
    v111 = v57;
    *&v112[3] = *&v171[3];
    *v112 = *v171;
    v113 = v29;
    v114 = v26;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v27 = 0xD00000000000004ALL;
    v27[1] = 0x8000000214791510;
    v28 = v40;
    v27[2] = 0xD00000000000001CLL;
    v27[3] = v28;
    swift_willThrow();
    sub_213FDC6BC(v72, v71);
    sub_213FB2DF4(&v153, &qword_27C90A020, &qword_2146F5BE0);
    (*(v74 + 8))(v8, v17);

    v179 = v39;
    __swift_destroy_boxed_opaque_existential_1(v186);
    v85 = v34;
    v86 = v33;
    v88 = v42;
    v89 = v31;
    v90 = v30;
    v91 = v39;
    v92 = v41;
    v82 = v185;
    v80 = v183;
    v81 = v184;
    v78 = v181;
    v79 = v182;
    v83 = v35;
    v84 = v36;
    *v87 = *v180;
    *&v87[3] = *&v180[3];
    v94 = v178;
    v93 = v177;
    v95 = v63;
    v96 = v67;
    *&v97[3] = *&v176[3];
    *v97 = *v176;
    v98 = v64;
    v99 = v65;
    *&v100[3] = *&v175[3];
    *v100 = *v175;
    v101 = v61;
    v102 = v62;
    *&v103[3] = *&v174[3];
    *v103 = *v174;
    v104 = v59;
    v105 = v60;
    *&v106[3] = *&v173[3];
    *v106 = *v173;
    v107 = v58;
    v108 = v16;
    *&v109[3] = *&v172[3];
    *v109 = *v172;
    v110 = v56;
    v111 = v57;
    *&v112[3] = *&v171[3];
    *v112 = *v171;
    v113 = v18;
    v114 = v55;
  }

  *&v115[3] = *&v170[3];
  *v115 = *v170;
  v116 = v53;
  v117 = v54;
  *v118 = *v169;
  *&v118[3] = *&v169[3];
  v119 = v51;
  v120 = v52;
  *v121 = *v168;
  *&v121[3] = *&v168[3];
  v122 = v49;
  v123 = v50;
  *v124 = *v167;
  *&v124[3] = *&v167[3];
  v125 = v47;
  v126 = v48;
  *v127 = *v166;
  *&v127[3] = *&v166[3];
  v128 = v45;
  v129 = v46;
  *v130 = *v165;
  *&v130[3] = *&v165[3];
  v131 = v43;
  v132 = v44;
  *v133 = *v164;
  *&v133[3] = *&v164[3];
  v134 = v37;
  v135 = v38;
  return sub_21430B3E4(&v78);
}

uint64_t sub_21421334C(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90A038, &qword_2146F5BE8);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v28 - v5;
  v7 = v1[3];
  v77 = v1[2];
  v78 = v7;
  v79 = *(v1 + 64);
  v8 = v1[1];
  v75 = *v1;
  v76 = v8;
  v9 = *(v1 + 11);
  v58 = *(v1 + 12);
  v10 = *(v1 + 16);
  v56 = v9;
  v57 = v10;
  LODWORD(v60) = *(v1 + 136);
  LODWORD(v59) = *(v1 + 137);
  v54 = *(v1 + 18);
  v55 = *(v1 + 152);
  v52 = *(v1 + 20);
  v53 = *(v1 + 168);
  v50 = *(v1 + 22);
  v51 = *(v1 + 184);
  v11 = *(v1 + 24);
  v49 = *(v1 + 200);
  v47 = *(v1 + 26);
  v48 = v11;
  v46 = *(v1 + 216);
  v45 = *(v1 + 28);
  v44 = *(v1 + 232);
  v43 = *(v1 + 30);
  v42 = *(v1 + 248);
  v41 = *(v1 + 32);
  v40 = *(v1 + 264);
  v39 = *(v1 + 34);
  v38 = *(v1 + 280);
  v37 = *(v1 + 36);
  v36 = *(v1 + 296);
  v35 = *(v1 + 38);
  v34 = *(v1 + 312);
  v33 = *(v1 + 40);
  v32 = *(v1 + 328);
  v31 = *(v1 + 42);
  v30 = *(v1 + 344);
  v29 = *(v1 + 44);
  v12 = *(v1 + 360);
  v13 = a1[3];
  v14 = a1;
  v16 = v15;
  __swift_project_boxed_opaque_existential_1(v14, v13);
  sub_21430B438();
  v17 = v6;
  sub_2146DAA28();
  v72 = v77;
  v73 = v78;
  v74 = v79;
  v70 = v75;
  v71 = v76;
  v69 = 0;
  sub_213FB2E54(&v75, &v64, &qword_27C90A020, &qword_2146F5BE0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90A020, &qword_2146F5BE0);
  sub_21430B5C0();
  v18 = v80;
  sub_2146DA388();
  if (v18)
  {
    v66 = v72;
    v67 = v73;
    v68 = v74;
    v64 = v70;
    v65 = v71;
    sub_213FB2DF4(&v64, &qword_27C90A020, &qword_2146F5BE0);
    return (*(v4 + 8))(v6, v16);
  }

  else
  {
    v20 = v56;
    HIDWORD(v28) = v12;
    v80 = v4;
    v66 = v72;
    v67 = v73;
    v68 = v74;
    v64 = v70;
    v65 = v71;
    sub_213FB2DF4(&v64, &qword_27C90A020, &qword_2146F5BE0);
    if (v58 >> 60 == 11 || (v62 = v20, v63 = v58, v61 = 1, sub_213FDCA18(v20, v58), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905680, &unk_2146F3CE0), sub_2142E1CAC(), sub_2146DA388(), v21 = v80, v22 = v57, v23 = v60, v24 = v59, v58 = 0, sub_213FDC6BC(v62, v63), (v24 & 1) != 0))
    {
      result = sub_2146DA018();
      __break(1u);
    }

    else
    {
      v62 = v22;
      LOBYTE(v63) = v23 & 1;
      v61 = 2;
      v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905698, &qword_2146F3D00);
      v26 = sub_2142E1E84();
      v27 = v58;
      sub_2146DA388();
      if (v27)
      {
        return (*(v21 + 8))(v17, v16);
      }

      else
      {
        v62 = v54;
        LOBYTE(v63) = v55;
        v61 = 3;
        sub_2146DA388();
        v59 = v26;
        v60 = v25;
        v62 = v52;
        LOBYTE(v63) = v53;
        v61 = 4;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9058A0, &unk_2147379A0);
        sub_2142E37F4();
        sub_2146DA388();
        v62 = v50;
        LOBYTE(v63) = v51;
        v61 = 5;
        sub_2146DA388();
        v62 = v48;
        LOBYTE(v63) = v49;
        v61 = 6;
        sub_2146DA388();
        v62 = v47;
        LOBYTE(v63) = v46;
        v61 = 7;
        sub_2146DA388();
        v62 = v45;
        LOBYTE(v63) = v44;
        v61 = 8;
        sub_2146DA388();
        v62 = v43;
        LOBYTE(v63) = v42;
        v61 = 9;
        sub_2146DA388();
        v62 = v41;
        LOBYTE(v63) = v40;
        v61 = 10;
        sub_2146DA388();
        v62 = v39;
        LOBYTE(v63) = v38;
        v61 = 11;
        sub_2146DA388();
        v62 = v37;
        LOBYTE(v63) = v36;
        v61 = 12;
        sub_2146DA388();
        v62 = v35;
        LOBYTE(v63) = v34;
        v61 = 13;
        sub_2146DA388();
        v62 = v33;
        LOBYTE(v63) = v32;
        v61 = 14;
        sub_2146DA388();
        v62 = v31;
        LOBYTE(v63) = v30;
        v61 = 15;
        sub_2146DA388();
        v62 = v29;
        LOBYTE(v63) = BYTE4(v28);
        v61 = 16;
        sub_2146DA388();
        return (*(v80 + 8))(v17, v16);
      }
    }
  }

  return result;
}

uint64_t sub_214213BE4@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X5>, char a7@<W6>, uint64_t a8@<X7>, uint64_t a9@<X8>, char a10, uint64_t a11, char a12, uint64_t a13, char a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, char a19, unsigned __int8 a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26, uint64_t a27, uint64_t a28, char *a29)
{
  v120 = a3;
  v119 = a20;
  LOBYTE(v118) = *(a1 + 64);
  v31 = a1[3];
  v116 = a1[2];
  v117 = v31;
  v32 = a1[1];
  v114 = *a1;
  v115 = v32;
  v49 = *a29;
  sub_2145EFD30(&v50);
  v33 = v50;
  v40 = v51;
  v42 = BYTE8(v51);
  v102 = a10 & 1;
  v101 = a12 & 1;
  v100 = a14 & 1;
  v34 = BYTE10(v51);
  v99 = a16 & 1;
  v98 = a26 & 1;
  v41 = BYTE9(v51);
  v113 = BYTE9(v51);
  v96 = a2;
  v97 = v120 & 1;
  v103[0] = BYTE10(v51);
  *&v50 = 0xD000000000000038;
  *(&v50 + 1) = 0x8000000214791560;
  *&v51 = 0xD00000000000001CLL;
  *(&v51 + 1) = 0x800000021478A360;

  v35 = (v33)(&v96, v103, &v50);
  if (v43)
  {
  }

  else
  {
    if (v35)
    {

      *(a9 + 64) = v118;
      *(a9 + 72) = v33;
      *(a9 + 88) = a2;
      *(a9 + 96) = v120 & 1;
      *(a9 + 98) = v34;
      *(a9 + 104) = a4;
      *(a9 + 112) = a5 & 1;
      *(a9 + 120) = a6;
      *(a9 + 128) = a7 & 1;
      *(a9 + 136) = a8;
      *(a9 + 144) = a10 & 1;
      *(a9 + 152) = a11;
      *(a9 + 160) = a12 & 1;
      *(a9 + 168) = a13;
      *(a9 + 176) = a14 & 1;
      *(a9 + 184) = a15;
      *(a9 + 192) = a16 & 1;
      *(a9 + 200) = a17;
      *(a9 + 208) = a18;
      *(a9 + 216) = a19;
      *(a9 + 217) = v119;
      *(a9 + 224) = a21;
      *(a9 + 232) = a22;
      *(a9 + 240) = a23;
      *(a9 + 248) = a24;
      *(a9 + 256) = a25;
      *(a9 + 264) = a26 & 1;
      *(a9 + 272) = a27;
      *(a9 + 280) = a28;
      *(a9 + 288) = v49;
      v37 = v117;
      *(a9 + 32) = v116;
      *(a9 + 48) = v37;
      v38 = v115;
      *a9 = v114;
      *(a9 + 16) = v38;
      *(a9 + 97) = 0;
      v113 = 0;
      return result;
    }

    sub_214031C4C();
    swift_allocError();
    *v39 = 0xD000000000000038;
    v39[1] = 0x8000000214791560;
    v39[2] = 0xD00000000000001CLL;
    v39[3] = 0x800000021478A360;
    swift_willThrow();
  }

  v56 = v40;
  v52 = v116;
  v53 = v117;
  v50 = v114;
  v51 = v115;
  v54 = v118;
  v55 = v33;
  v57 = v42;
  v58 = v41;
  v59 = v34;
  v61 = v112;
  v60 = v111[2];
  v62 = a4;
  v63 = a5 & 1;
  *&v64[3] = *(v111 + 3);
  *v64 = v111[0];
  v65 = a6;
  v66 = a7 & 1;
  *&v67[3] = *(v110 + 3);
  *v67 = v110[0];
  v68 = a8;
  v69 = a10 & 1;
  *&v70[3] = *(v109 + 3);
  *v70 = v109[0];
  v71 = a11;
  v72 = a12 & 1;
  *&v73[3] = *(v108 + 3);
  *v73 = v108[0];
  v74 = a13;
  v75 = a14 & 1;
  *&v76[3] = *(v107 + 3);
  *v76 = v107[0];
  v77 = a15;
  v78 = a16 & 1;
  *&v79[3] = *(v106 + 3);
  *v79 = v106[0];
  v80 = a17;
  v81 = a18;
  v82 = a19;
  v83 = v119;
  v85 = v105;
  v84 = v104[2];
  v86 = a21;
  v87 = a22;
  v88 = a23;
  v89 = a24;
  v90 = a25;
  v91 = a26 & 1;
  *v92 = v104[0];
  *&v92[3] = *(v104 + 3);
  v93 = a27;
  v94 = a28;
  v95 = v49;
  return sub_21430B698(&v50);
}

uint64_t sub_2142140E0(uint64_t a1)
{
  v2 = sub_21430B6EC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21421411C(uint64_t a1)
{
  v2 = sub_21430B6EC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_214214158@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90A050, &qword_2146F5BF0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v24 - v7;
  v9 = a1[3];
  v138 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v9);
  sub_21430B6EC();
  sub_2146DAA08();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(v138);
  }

  v54 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90A020, &qword_2146F5BE0);
  v115 = 0;
  sub_21430B48C();
  sub_2146DA1C8();
  v112 = v118;
  v113 = v119;
  v114 = v120;
  v110 = v116;
  v111 = v117;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905698, &qword_2146F3D00);
  LOBYTE(v55[0]) = 1;
  v11 = sub_2142E14CC();
  sub_2146DA1C8();
  v52 = v11;
  v53 = v10;
  v51 = v56;
  LODWORD(v10) = BYTE8(v56);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9058A0, &unk_2147379A0);
  LOBYTE(v55[0]) = 2;
  sub_2142E35EC();
  sub_2146DA1C8();
  v50 = v10;
  v49 = v56;
  LODWORD(v10) = BYTE8(v56);
  LOBYTE(v55[0]) = 3;
  sub_2146DA1C8();
  v48 = v10;
  v47 = v56;
  LODWORD(v10) = BYTE8(v56);
  LOBYTE(v55[0]) = 4;
  sub_2146DA1C8();
  v46 = v10;
  v45 = v56;
  LODWORD(v10) = BYTE8(v56);
  LOBYTE(v55[0]) = 5;
  sub_2146DA1C8();
  v44 = v10;
  v43 = v56;
  LODWORD(v10) = BYTE8(v56);
  LOBYTE(v55[0]) = 6;
  sub_2146DA1C8();
  v42 = v10;
  v41 = v56;
  LODWORD(v10) = BYTE8(v56);
  LOBYTE(v55[0]) = 7;
  sub_2146DA1C8();
  v37 = a2;
  v38 = v56;
  v39 = BYTE8(v56);
  v40 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
  LOBYTE(v55[0]) = 8;
  sub_2142E12FC();
  sub_2146DA1C8();
  v35 = v56;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905688, &qword_2146F3CF0);
  LOBYTE(v55[0]) = 9;
  sub_2142E1378();
  v36 = v5;
  v13 = v8;
  sub_2146DA1C8();
  v14 = v56;
  LOBYTE(v55[0]) = 10;
  sub_2146DA1C8();
  v15 = v56;
  LOBYTE(v55[0]) = 11;
  sub_2146DA1C8();
  v16 = *(&v56 + 1);
  v34 = v56;
  LOBYTE(v55[0]) = 12;
  sub_2146DA1C8();
  v33 = v56;
  LOBYTE(v55[0]) = 13;
  sub_2146DA1C8();
  v52 = v56;
  LODWORD(v53) = BYTE8(v56);
  LOBYTE(v55[0]) = 14;
  sub_2146DA1C8();
  v32 = v56;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90A060, &qword_2146F5BF8);
  v108 = 15;
  sub_21430B740();
  sub_2146DA1C8();
  v31 = v109;
  sub_213FB2E54(&v110, &v56, &qword_27C90A020, &qword_2146F5BE0);
  sub_2145EFD30(&v56);
  v17 = v56;
  v25 = v57;
  v26 = BYTE8(v57);
  v135 = v112;
  v136 = v113;
  LOBYTE(v137) = v114;
  v133 = v110;
  v134 = v111;
  v107 = v46;
  v106 = v44;
  v105 = v42;
  v104 = v40;
  v103 = v39;
  v102 = v53;
  HIDWORD(v24) = BYTE9(v57);
  v132 = BYTE9(v57);
  v100 = v51;
  v101 = v50;
  v30 = BYTE10(v57);
  LOBYTE(v55[0]) = BYTE10(v57);
  *&v56 = 0xD000000000000038;
  v27 = 0x8000000214791560;
  *(&v56 + 1) = 0x8000000214791560;
  *&v57 = 0xD00000000000001CLL;
  *(&v57 + 1) = 0x800000021478A360;

  v28 = *(&v17 + 1);
  v29 = v17;
  if ((v17)(&v100, v55, &v56))
  {

    sub_213FB2DF4(&v110, &qword_27C90A020, &qword_2146F5BE0);
    (*(v54 + 8))(v13, v36);
    v18 = v28;

    *(&v55[8] + 1) = *v128;
    DWORD1(v55[9]) = *&v127[3];
    *(&v55[9] + 1) = *v127;
    DWORD1(v55[10]) = *&v126[3];
    *(&v55[10] + 1) = *v126;
    DWORD1(v55[11]) = *&v125[3];
    *(&v55[11] + 1) = *v125;
    DWORD1(v55[12]) = *&v124[3];
    *(&v55[12] + 1) = *v124;
    *(&v55[13] + 10) = v122;
    *(&v55[16] + 9) = *v121;
    *&v55[4] = v137;
    *(&v55[6] + 3) = v130;
    BYTE7(v55[6]) = v131;
    *(&v55[7] + 1) = *v129;
    DWORD1(v55[7]) = *&v129[3];
    DWORD1(v55[8]) = *&v128[3];
    HIWORD(v55[13]) = v123;
    HIDWORD(v55[16]) = *&v121[3];
    v132 = 0;
    v55[2] = v135;
    v55[3] = v136;
    v55[0] = v133;
    v55[1] = v134;
    *(&v55[4] + 1) = v29;
    *&v55[5] = v18;
    v19 = v51;
    *(&v55[5] + 1) = v51;
    LOWORD(v55[6]) = v50;
    BYTE2(v55[6]) = v30;
    *(&v55[6] + 1) = v49;
    LOBYTE(v55[7]) = v48;
    *(&v55[7] + 1) = v47;
    LOBYTE(v55[8]) = v46;
    *(&v55[8] + 1) = v45;
    LOBYTE(v55[9]) = v44;
    *(&v55[9] + 1) = v43;
    LOBYTE(v55[10]) = v42;
    *(&v55[10] + 1) = v41;
    LOBYTE(v55[11]) = v40;
    *(&v55[11] + 1) = v38;
    LOBYTE(v55[12]) = v39;
    *(&v55[12] + 8) = v35;
    BYTE8(v55[13]) = v14;
    BYTE9(v55[13]) = v15;
    *&v55[14] = v34;
    *(&v55[14] + 1) = v16;
    v55[15] = v33;
    *&v55[16] = v52;
    BYTE8(v55[16]) = v53;
    v20 = *(&v32 + 1);
    v55[17] = v32;
    LOBYTE(v55[18]) = v31;
    memcpy(v37, v55, 0x121uLL);
    sub_21430B818(v55, &v56);
    __swift_destroy_boxed_opaque_existential_1(v138);
    v62 = v18;
    v63 = v19;
    v60 = v137;
    v58 = v135;
    v59 = v136;
    v56 = v133;
    v57 = v134;
    v61 = v29;
    v64 = v50;
    v65 = 0;
    v66 = v30;
    v68 = v131;
    v67 = v130;
    v69 = v49;
    v70 = v48;
    *v71 = *v129;
    *&v71[3] = *&v129[3];
    v72 = v47;
    v73 = v46;
    *v74 = *v128;
    *&v74[3] = *&v128[3];
    v75 = v45;
    v76 = v44;
    *&v77[3] = *&v127[3];
    *v77 = *v127;
    v78 = v43;
    v79 = v42;
    *&v80[3] = *&v126[3];
    *v80 = *v126;
    v81 = v41;
    v82 = v40;
    *&v83[3] = *&v125[3];
    *v83 = *v125;
    v84 = v38;
    v85 = v39;
    *&v86[3] = *&v124[3];
    *v86 = *v124;
    v87 = v35;
    v88 = v14;
    v89 = v15;
    v91 = v123;
    v90 = v122;
    v92 = v34;
    v93 = v16;
    v94 = v33;
    v95 = v52;
    v96 = v53;
    *v97 = *v121;
    *&v97[3] = *&v121[3];
    *&v98 = v32;
    *(&v98 + 1) = v20;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    v21 = v27;
    *v22 = 0xD000000000000038;
    v22[1] = v21;
    v22[2] = 0xD00000000000001CLL;
    v22[3] = 0x800000021478A360;
    swift_willThrow();
    sub_213FB2DF4(&v110, &qword_27C90A020, &qword_2146F5BE0);
    (*(v54 + 8))(v13, v36);
    v23 = v28;

    __swift_destroy_boxed_opaque_existential_1(v138);
    v62 = v23;
    v63 = v25;
    v60 = v137;
    v58 = v135;
    v59 = v136;
    v56 = v133;
    v57 = v134;
    v61 = v29;
    v64 = v26;
    v65 = BYTE4(v24);
    v66 = v30;
    v68 = v131;
    v67 = v130;
    v69 = v49;
    v70 = v48;
    *&v71[3] = *&v129[3];
    *v71 = *v129;
    v72 = v47;
    v73 = v46;
    *&v74[3] = *&v128[3];
    *v74 = *v128;
    v75 = v45;
    v76 = v44;
    *&v77[3] = *&v127[3];
    *v77 = *v127;
    v78 = v43;
    v79 = v42;
    *&v80[3] = *&v126[3];
    *v80 = *v126;
    v81 = v41;
    v82 = v40;
    *&v83[3] = *&v125[3];
    *v83 = *v125;
    v84 = v38;
    v85 = v39;
    *&v86[3] = *&v124[3];
    *v86 = *v124;
    v87 = v35;
    v88 = v14;
    v89 = v15;
    v91 = v123;
    v90 = v122;
    v92 = v34;
    v93 = v16;
    v94 = v33;
    v95 = v52;
    v96 = v53;
    *v97 = *v121;
    *&v97[3] = *&v121[3];
    v98 = v32;
  }

  v99 = v31;
  return sub_21430B698(&v56);
}

uint64_t sub_214214FEC(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90A078, &qword_2146F5C00);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v21 - v5;
  v7 = v1[3];
  v66 = v1[2];
  v67 = v7;
  v68 = *(v1 + 64);
  v8 = v1[1];
  v64 = *v1;
  v65 = v8;
  v48 = *(v1 + 11);
  v9 = *(v1 + 96);
  LODWORD(v49) = *(v1 + 97);
  v45 = *(v1 + 13);
  v46 = *(v1 + 112);
  v47 = v9;
  v43 = *(v1 + 15);
  v44 = *(v1 + 128);
  v41 = *(v1 + 17);
  v42 = *(v1 + 144);
  v10 = *(v1 + 19);
  v40 = *(v1 + 160);
  v38 = *(v1 + 21);
  v39 = v10;
  v37 = *(v1 + 176);
  v36 = *(v1 + 23);
  v35 = *(v1 + 192);
  v11 = *(v1 + 25);
  v33 = *(v1 + 26);
  v34 = v11;
  LODWORD(v11) = *(v1 + 216);
  v31 = *(v1 + 217);
  v32 = v11;
  v12 = *(v1 + 28);
  v29 = *(v1 + 29);
  v30 = v12;
  v13 = *(v1 + 30);
  v27 = *(v1 + 31);
  v28 = v13;
  v26 = *(v1 + 32);
  v25 = *(v1 + 264);
  v14 = *(v1 + 34);
  v23 = *(v1 + 35);
  v24 = v14;
  v22 = *(v1 + 288);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21430B6EC();
  sub_2146DAA28();
  v61 = v66;
  v62 = v67;
  v63 = v68;
  v59 = v64;
  v60 = v65;
  v58 = 0;
  sub_213FB2E54(&v64, &v53, &qword_27C90A020, &qword_2146F5BE0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90A020, &qword_2146F5BE0);
  sub_21430B5C0();
  v15 = v69;
  sub_2146DA388();
  if (v15)
  {
    v55 = v61;
    v56 = v62;
    v57 = v63;
    v53 = v59;
    v54 = v60;
    sub_213FB2DF4(&v53, &qword_27C90A020, &qword_2146F5BE0);
    return (*(v4 + 8))(v6, v3);
  }

  else
  {
    v17 = v47;
    v18 = v48;
    v21 = v4;
    v55 = v61;
    v56 = v62;
    v57 = v63;
    v53 = v59;
    v54 = v60;
    sub_213FB2DF4(&v53, &qword_27C90A020, &qword_2146F5BE0);
    if (v49)
    {
      result = sub_2146DA018();
      __break(1u);
    }

    else
    {
      v50 = v18;
      LOBYTE(v51) = v17 & 1;
      v52 = 1;
      v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905698, &qword_2146F3D00);
      sub_2142E1E84();
      sub_2146DA388();
      v69 = v19;
      v50 = v45;
      LOBYTE(v51) = v46;
      v52 = 2;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9058A0, &unk_2147379A0);
      sub_2142E37F4();
      sub_2146DA388();
      v50 = v43;
      LOBYTE(v51) = v44;
      v52 = 3;
      sub_2146DA388();
      v50 = v41;
      LOBYTE(v51) = v42;
      v52 = 4;
      sub_2146DA388();
      v50 = v39;
      LOBYTE(v51) = v40;
      v52 = 5;
      sub_2146DA388();
      v50 = v38;
      LOBYTE(v51) = v37;
      v52 = 6;
      sub_2146DA388();
      v50 = v36;
      LOBYTE(v51) = v35;
      v52 = 7;
      sub_2146DA388();
      v50 = v34;
      v51 = v33;
      v52 = 8;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
      sub_214045AC0();
      sub_2146DA388();
      LOBYTE(v50) = v32;
      v52 = 9;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905688, &qword_2146F3CF0);
      sub_2142E1D30();
      sub_2146DA388();
      LOBYTE(v50) = v31;
      v52 = 10;
      v49 = v3;
      sub_2146DA388();
      v50 = v30;
      v51 = v29;
      v52 = 11;
      sub_2146DA388();
      v50 = v28;
      v51 = v27;
      v52 = 12;
      sub_2146DA388();
      v50 = v26;
      LOBYTE(v51) = v25;
      v52 = 13;
      sub_2146DA388();
      v50 = v24;
      v51 = v23;
      v52 = 14;
      sub_2146DA388();
      LOBYTE(v50) = v22;
      v52 = 15;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90A060, &qword_2146F5BF8);
      sub_21430B874();
      v20 = v49;
      sub_2146DA388();
      return (*(v21 + 8))(0, v20);
    }
  }

  return result;
}

__n128 sub_2142157B0@<Q0>(__int128 *a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X5>, char a7@<W6>, uint64_t a8@<X7>, uint64_t a9@<X8>, char a10, __n128 a11, uint64_t a12, uint64_t a13)
{
  result = a11;
  v16 = a1[3];
  LOBYTE(v17) = *(a1 + 64);
  v14 = *a1;
  v15 = a1[1];
  *(a9 + 32) = a1[2];
  *(a9 + 48) = v16;
  *a9 = v14;
  *(a9 + 16) = v15;
  *(a9 + 64) = v17;
  *(a9 + 72) = a2;
  *(a9 + 80) = a3 & 1;
  *(a9 + 88) = a4;
  *(a9 + 96) = a5 & 1;
  *(a9 + 104) = a6;
  *(a9 + 112) = a7 & 1;
  *(a9 + 120) = a8;
  *(a9 + 128) = a10 & 1;
  *(a9 + 136) = a11;
  *(a9 + 152) = a12;
  *(a9 + 160) = a13;
  return result;
}

uint64_t sub_214215840()
{
  v1 = *v0;
  if (v1 <= 2)
  {
    v5 = 0x6574656C706D6F63;
    if (v1 != 1)
    {
      v5 = 0x6156656C62756F64;
    }

    if (*v0)
    {
      return v5;
    }

    else
    {
      return 0x656C706D6173;
    }
  }

  else
  {
    v2 = 0xD000000000000014;
    if (v1 != 5)
    {
      v2 = 0xD000000000000012;
    }

    v3 = 0xD000000000000013;
    if (v1 == 3)
    {
      v3 = 0x65756C6156746E69;
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

uint64_t sub_214215938@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_214379444(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_214215960(uint64_t a1)
{
  v2 = sub_21430B94C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21421599C(uint64_t a1)
{
  v2 = sub_21430B94C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2142159D8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90A090, &qword_2146F5C08);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v28 - v7;
  v9 = a1[3];
  v58 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v9);
  sub_21430B94C();
  sub_2146DAA08();
  if (!v2)
  {
    v37 = a2;
    v38 = v6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90A020, &qword_2146F5BE0);
    v55 = 0;
    sub_21430B48C();
    v10 = v5;
    sub_2146DA1C8();
    v52 = v56[2];
    v53 = v56[3];
    v54 = v57;
    v50 = v56[0];
    v51 = v56[1];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9058A0, &unk_2147379A0);
    LOBYTE(v49) = 1;
    sub_2142E35EC();
    sub_2146DA1C8();
    v11 = v43;
    v12 = BYTE8(v43);
    LOBYTE(v49) = 2;
    sub_2146DA1C8();
    v35 = v11;
    v36 = v12;
    v13 = v43;
    LODWORD(v11) = BYTE8(v43);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905698, &qword_2146F3D00);
    LOBYTE(v49) = 3;
    sub_2142E14CC();
    sub_2146DA1C8();
    v33 = v11;
    v34 = v13;
    v14 = v43;
    LODWORD(v11) = BYTE8(v43);
    LOBYTE(v49) = 4;
    sub_2146DA1C8();
    v31 = v11;
    v32 = v14;
    v15 = v43;
    LODWORD(v11) = BYTE8(v43);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
    LOBYTE(v49) = 5;
    sub_2142E12FC();
    sub_2146DA1C8();
    v30 = v11;
    v17 = *(&v43 + 1);
    v29 = v43;
    v48 = 6;
    sub_2146DA1C8();
    (*(v38 + 8))(v8, v10);
    v45 = v52;
    v46 = v53;
    LOBYTE(v47) = v54;
    v43 = v50;
    v44 = v51;
    v18 = v36;
    v42 = v36;
    v41 = v33;
    v40 = v31;
    v39 = v30;
    v19 = v33;
    v20 = v31;
    v21 = v30;
    v22 = v50;
    v23 = v51;
    v24 = v53;
    v25 = v47;
    v26 = v17;
    v27 = v37;
    *(v37 + 32) = v52;
    *(v27 + 48) = v24;
    *v27 = v22;
    *(v27 + 16) = v23;
    *(v27 + 64) = v25;
    *(v27 + 72) = v35;
    *(v27 + 80) = v18;
    *(v27 + 88) = v34;
    *(v27 + 96) = v19;
    *(v27 + 104) = v32;
    *(v27 + 112) = v20;
    *(v27 + 120) = v15;
    *(v27 + 128) = v21;
    *(v27 + 136) = v29;
    *(v27 + 144) = v26;
    *(v27 + 152) = v49;
  }

  return __swift_destroy_boxed_opaque_existential_1(v58);
}

uint64_t sub_214215E9C(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90A0A0, &qword_2146F5C10);
  v50 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = &v17 - v4;
  v6 = v1[3];
  v47 = v1[2];
  v48 = v6;
  v49 = *(v1 + 64);
  v7 = v1[1];
  v45 = *v1;
  v46 = v7;
  v29 = *(v1 + 9);
  v28 = *(v1 + 80);
  v27 = *(v1 + 11);
  v8 = *(v1 + 96);
  v24 = *(v1 + 13);
  v25 = *(v1 + 112);
  v26 = v8;
  v9 = *(v1 + 15);
  v23 = *(v1 + 128);
  v10 = *(v1 + 17);
  v21 = *(v1 + 18);
  v22 = v9;
  v11 = *(v1 + 20);
  v18 = *(v1 + 19);
  v19 = v11;
  v20 = v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_213FB2E54(&v45, &v40, &qword_27C90A020, &qword_2146F5BE0);
  sub_21430B94C();
  sub_2146DAA28();
  v42 = v47;
  v43 = v48;
  v44 = v49;
  v40 = v45;
  v41 = v46;
  v39 = 0;
  v12 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90A020, &qword_2146F5BE0);
  sub_21430B5C0();
  v13 = v30;
  sub_2146DA388();
  if (v13)
  {
    v36 = v42;
    v37 = v43;
    v38 = v44;
    v34 = v40;
    v35 = v41;
    sub_213FB2DF4(&v34, &qword_27C90A020, &qword_2146F5BE0);
    return (*(v50 + 8))(v5, v3);
  }

  else
  {
    v15 = v27;
    v16 = v50;
    v36 = v42;
    v37 = v43;
    v38 = v44;
    v34 = v40;
    v35 = v41;
    sub_213FB2DF4(&v34, &qword_27C90A020, &qword_2146F5BE0);
    v31 = v29;
    LOBYTE(v32) = v28;
    v33 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9058A0, &unk_2147379A0);
    sub_2142E37F4();
    sub_2146DA388();
    v31 = v15;
    LOBYTE(v32) = v26;
    v33 = 2;
    sub_2146DA388();
    v31 = v24;
    LOBYTE(v32) = v25;
    v33 = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905698, &qword_2146F3D00);
    sub_2142E1E84();
    sub_2146DA388();
    v31 = v22;
    LOBYTE(v32) = v23;
    v33 = 4;
    sub_2146DA388();
    v31 = v20;
    v32 = v21;
    v33 = 5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
    sub_214045AC0();
    sub_2146DA388();
    v31 = v18;
    v32 = v19;
    v33 = 6;
    sub_2146DA388();
    return (*(v16 + 8))(v12, 0);
  }
}

double sub_214216330@<D0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X8>)
{
  sub_2145EFF6C(&v23);
  v12 = v24;
  v13 = v25;
  v20 = a4 & 1;
  v35 = a6 & 1;
  v31 = v23;
  v32 = v24;
  v33 = v25;
  v34 = v26;

  sub_21404F7E0(v12, v13);
  sub_214032118(a1, a2, 2, 0xD000000000000037, 0x80000002147915A0, 0xD00000000000001CLL, 0x800000021478A360);
  sub_213FDC6BC(a1, a2);

  v14 = v32;
  v15 = v33;
  if (v19)
  {
    v16 = v34;

    sub_214032564(v12, v13);
    v23 = v31;
    v24 = v14;
    v25 = v15;
    v26 = v16;
    v27 = a3;
    v28 = v20;
    v29 = a5;
    v30 = v35;
    sub_21430B9A0(&v23);
  }

  else
  {
    v18 = v34;

    sub_214032564(v12, v13);
    result = *&v31;
    *a7 = v31;
    *(a7 + 16) = v14;
    *(a7 + 24) = v15;
    *(a7 + 32) = v18;
    *(a7 + 40) = a3;
    *(a7 + 48) = v20;
    *(a7 + 56) = a5;
    *(a7 + 64) = v35;
  }

  return result;
}

uint64_t sub_214216504()
{
  v1 = 0x7461447472617473;
  if (*v0 != 1)
  {
    v1 = 0x65746144646E65;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1684632949;
  }
}

uint64_t sub_21421655C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_2143796A0(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_214216584(uint64_t a1)
{
  v2 = sub_21430B9F4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2142165C0(uint64_t a1)
{
  v2 = sub_21430B9F4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2142165FC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90A0A8, &qword_2146F5C18);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v25 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21430B9F4();
  sub_2146DAA08();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905680, &unk_2146F3CE0);
  LOBYTE(v35) = 0;
  sub_2142E1278();
  sub_2146DA1C8();
  v33 = a2;
  v9 = *(&v40 + 1);
  v34 = v40;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9058A0, &unk_2147379A0);
  LOBYTE(v35) = 1;
  sub_2142E35EC();
  sub_2146DA1C8();
  v32 = v9;
  v10 = v40;
  v31 = BYTE8(v40);
  v54 = 2;
  sub_2146DA1C8();
  v30 = v10;
  v28 = v52;
  v11 = v53;
  sub_2145EFF6C(&v40);
  v12 = v41;
  v13 = v42;
  v29 = v11;
  LOBYTE(v35) = v11;
  v48 = v40;
  v49 = v41;
  v50 = v42;
  v51 = v43;
  v25[1] = *(&v40 + 1);

  v27 = v12;
  v26 = v13;
  sub_21404F7E0(v12, v13);
  v25[0] = "ivitySharingWorkout.type";
  v14 = v34;
  v15 = v32;
  sub_214032118(v34, v32, 2, 0xD000000000000037, 0x80000002147915A0, 0xD00000000000001CLL, 0x800000021478A360);

  sub_213FDC6BC(v14, v15);
  (*(v6 + 8))(v8, v5);
  v16 = v48;
  v32 = *(&v48 + 1);
  v34 = v48;
  v17 = v49;
  v18 = v50;
  LOBYTE(v14) = v51;

  sub_214032564(v27, v26);
  v35 = v16;
  *&v36 = v17;
  *(&v36 + 1) = v18;
  LOBYTE(v37) = v14;
  v19 = v30;
  *(&v37 + 1) = v30;
  LOBYTE(v15) = v31;
  LOBYTE(v38) = v31;
  v20 = v28;
  *(&v38 + 1) = v28;
  LOBYTE(v11) = v29;
  v39 = v29;
  v21 = v33;
  *(v33 + 64) = v29;
  v22 = v38;
  v21[2] = v37;
  v21[3] = v22;
  v23 = v36;
  *v21 = v35;
  v21[1] = v23;
  sub_21430BA48(&v35, &v40);
  __swift_destroy_boxed_opaque_existential_1(a1);
  *&v40 = v34;
  *(&v40 + 1) = v32;
  v41 = v17;
  v42 = v18;
  v43 = v14;
  v44 = v19;
  v45 = v15;
  v46 = v20;
  v47 = v11;
  return sub_21430B9A0(&v40);
}

uint64_t sub_214216B6C(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90A0B8, &qword_2146F5C20);
  v14 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v11 - v5;
  v8 = *(v1 + 16);
  v7 = *(v1 + 24);
  v9 = *(v1 + 40);
  v17 = *(v1 + 48);
  v12 = *(v1 + 56);
  v13 = v9;
  HIDWORD(v11) = *(v1 + 64);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21430B9F4();
  sub_2146DAA28();
  if (v7 >> 60 == 11)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v15 = v8;
    v16 = v7;
    v18 = 0;
    sub_213FDCA18(v8, v7);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905680, &unk_2146F3CE0);
    sub_2142E1CAC();
    sub_2146DA388();
    sub_213FDC6BC(v15, v16);
    if (!v2)
    {
      v15 = v13;
      LOBYTE(v16) = v17;
      v18 = 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9058A0, &unk_2147379A0);
      sub_2142E37F4();
      sub_2146DA388();
      v15 = v12;
      LOBYTE(v16) = BYTE4(v11);
      v18 = 2;
      sub_2146DA388();
    }

    return (*(v14 + 8))(v6, v4);
  }

  return result;
}

void *sub_214216E2C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, int a10, char a11, const void *a12)
{
  __src[420] = a11 & 1;
  memcpy(&__src[3], a12, 0x189uLL);
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  *(a9 + 48) = a7;
  *(a9 + 56) = a8;
  *(a9 + 64) = a10;
  *(a9 + 68) = a11 & 1;
  return memcpy((a9 + 69), __src, 0x18CuLL);
}

uint64_t sub_214216EE4(uint64_t a1)
{
  v2 = sub_21430BAA4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_214216F20(uint64_t a1)
{
  v2 = sub_21430BAA4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_214216F5C@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90A0C0, &qword_2146F5C28);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v28 - v7;
  v9 = a1[3];
  v38 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v9);
  sub_21430BAA4();
  sub_2146DAA08();
  if (!v2)
  {
    v36 = a2;
    v37 = v6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
    v43 = 0;
    sub_2142E12FC();
    v10 = v5;
    sub_2146DA1C8();
    v12 = v40[0];
    v11 = v40[1];
    v43 = 1;
    sub_2146DA1C8();
    v34 = v12;
    v35 = v11;
    v13 = v40[1];
    v33 = v40[0];
    v43 = 2;
    sub_2146DA1C8();
    v32 = v13;
    v15 = v40[0];
    v14 = v40[1];
    v43 = 3;
    sub_2146DA1C8();
    v31 = v15;
    v17 = v40[0];
    v18 = v40[1];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905AC0, &unk_2146F3F90);
    v43 = 4;
    sub_2142E6128();
    sub_2146DA1C8();
    v29 = v18;
    v30 = v14;
    v19 = v35;
    LODWORD(v18) = v40[0];
    v20 = v10;
    v21 = v37;
    v41 = BYTE4(v40[0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C909E50, &unk_2146F5B30);
    v43 = 5;
    sub_21430A4B0();
    sub_2146DA1C8();
    (*(v21 + 8))(v8, v20);
    v42 = v41;
    memcpy(&v39[3], v40, 0x189uLL);
    v22 = v41;
    v23 = v17;
    v24 = v36;
    v25 = v33;
    *v36 = v34;
    v24[1] = v19;
    v24[2] = v25;
    v26 = v31;
    v24[3] = v32;
    v24[4] = v26;
    v27 = v29;
    v24[5] = v30;
    v24[6] = v23;
    v24[7] = v27;
    *(v24 + 16) = v18;
    *(v24 + 68) = v22;
    memcpy(v24 + 69, v39, 0x18CuLL);
  }

  return __swift_destroy_boxed_opaque_existential_1(v38);
}

uint64_t sub_2142173CC(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90A0D0, &qword_2146F5C30);
  v25 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = &v17 - v4;
  v6 = *v1;
  v7 = v1[1];
  v8 = v1[2];
  v22 = v1[3];
  v23 = v8;
  v9 = v1[4];
  v20 = v1[5];
  v21 = v9;
  v10 = v1[7];
  v18 = v1[6];
  v19 = v10;
  v29 = *(v1 + 16);
  HIDWORD(v17) = *(v1 + 68);
  memcpy(v28, v1 + 9, 0x189uLL);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21430BAA4();

  sub_2146DAA28();
  v27[0] = v6;
  v27[1] = v7;
  v26[0] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
  sub_214045AC0();
  v11 = v5;
  v12 = v24;
  sub_2146DA388();
  if (v12)
  {

    return (*(v25 + 8))(v5, v3);
  }

  else
  {
    v14 = v21;

    v27[0] = v23;
    v27[1] = v22;
    v26[0] = 1;
    v15 = v11;
    sub_2146DA388();
    v27[0] = v14;
    v27[1] = v20;
    v26[0] = 2;
    sub_2146DA388();
    v27[0] = v18;
    v27[1] = v19;
    v26[0] = 3;
    sub_2146DA388();
    LODWORD(v27[0]) = v29;
    BYTE4(v27[0]) = BYTE4(v17);
    v26[0] = 4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905AC0, &unk_2146F3F90);
    sub_2142E62D8();
    sub_2146DA388();
    v16 = v25;
    memcpy(v27, v28, 0x189uLL);
    v30 = 5;
    sub_213FB2E54(v28, v26, &qword_27C909E50, &unk_2146F5B30);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C909E50, &unk_2146F5B30);
    sub_21430A714();
    sub_2146DA388();
    memcpy(v26, v27, 0x189uLL);
    sub_213FB2DF4(v26, &qword_27C909E50, &unk_2146F5B30);
    return (*(v16 + 8))(v15, v3);
  }
}

void *sub_2142177A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, __int128 *a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, int a10, char a11, const void *a12)
{
  v16 = a3;
  v28 = BYTE4(a3) & 1;
  v27 = a11 & 1;
  memcpy(&__src[3], a12, 0x189uLL);
  v20 = *a6;
  *(a9 + 56) = a6[1];
  v21 = a6[3];
  *(a9 + 72) = a6[2];
  *(a9 + 88) = v21;
  *(a9 + 97) = *(a6 + 57);
  v22 = v28;
  v23 = v27;
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = v16;
  *(a9 + 20) = v22;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = v20;
  *(a9 + 120) = a7;
  *(a9 + 128) = a8;
  *(a9 + 136) = a10;
  *(a9 + 140) = v23;
  return memcpy((a9 + 141), __src, 0x18CuLL);
}

uint64_t sub_214217890(uint64_t a1)
{
  v2 = sub_21430BAF8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2142178CC(uint64_t a1)
{
  v2 = sub_21430BAF8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_214217908@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90A0D8, &qword_2146F5C38);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v26 - v7;
  v9 = a1[3];
  v49 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v9);
  sub_21430BAF8();
  sub_2146DAA08();
  if (!v2)
  {
    v35 = a2;
    v36 = v6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
    LOBYTE(v47[0]) = 0;
    sub_2142E12FC();
    v10 = v5;
    sub_2146DA1C8();
    v11 = *v40;
    v12 = *&v40[8];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905DC8, &qword_2146F40C0);
    LOBYTE(v47[0]) = 1;
    sub_2142E7FB4();
    sub_2146DA1C8();
    v34 = v12;
    v33 = *v40;
    LODWORD(v12) = v40[4];
    LOBYTE(v47[0]) = 2;
    sub_2146DA1C8();
    v30 = v12;
    v31 = *v40;
    v32 = v11;
    v13 = *&v40[8];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C909E68, &qword_214761070);
    v46 = 3;
    sub_21430A588();
    sub_2146DA1C8();
    v14 = v36;
    v29 = v13;
    v44 = v47[2];
    *v45 = v48[0];
    *&v45[9] = *(v48 + 9);
    v42 = v47[0];
    v43 = v47[1];
    v41 = 4;
    sub_2146DA1C8();
    v15 = *v40;
    v16 = *&v40[8];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905AC0, &unk_2146F3F90);
    v41 = 5;
    sub_2142E6128();
    sub_2146DA1C8();
    v17 = v29;
    v28 = v16;
    v27 = *v40;
    LOBYTE(v16) = v40[4];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C909E50, &unk_2146F5B30);
    v41 = 6;
    sub_21430A4B0();
    sub_2146DA1C8();
    (*(v14 + 8))(v8, v10);
    v39 = v30;
    v38 = v16;
    memcpy(&v37[3], v40, 0x189uLL);
    v19 = v42;
    v20 = v35;
    *(v35 + 56) = v43;
    v21 = *v45;
    *(v20 + 72) = v44;
    *(v20 + 88) = v21;
    *(v20 + 97) = *&v45[9];
    v22 = v39;
    v23 = v38;
    v24 = v34;
    *v20 = v32;
    *(v20 + 8) = v24;
    *(v20 + 16) = v33;
    *(v20 + 20) = v22;
    *(v20 + 24) = v31;
    *(v20 + 32) = v17;
    *(v20 + 40) = v19;
    v25 = v28;
    *(v20 + 120) = v15;
    *(v20 + 128) = v25;
    *(v20 + 136) = v27;
    *(v20 + 140) = v23;
    memcpy((v20 + 141), v37, 0x18CuLL);
  }

  return __swift_destroy_boxed_opaque_existential_1(v49);
}

uint64_t sub_214217E8C(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90A0E8, &qword_2146F5C40);
  v42 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = &v18 - v4;
  v6 = *v1;
  v7 = v1[1];
  v8 = *(v1 + 4);
  v25 = *(v1 + 20);
  v26 = v8;
  v9 = v1[3];
  v23 = v1[4];
  v24 = v9;
  v10 = *(v1 + 7);
  v11 = *(v1 + 11);
  v39 = *(v1 + 9);
  v40[0] = v11;
  *(v40 + 9) = *(v1 + 97);
  v12 = *(v1 + 5);
  v38 = v10;
  v37 = v12;
  v13 = v1[15];
  v21 = v1[16];
  v22 = v13;
  LODWORD(v13) = *(v1 + 34);
  v19 = *(v1 + 140);
  v20 = v13;
  memcpy(v41, v1 + 18, 0x189uLL);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21430BAF8();

  sub_2146DAA28();
  v29[0] = v6;
  v29[1] = v7;
  v28[0] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
  sub_214045AC0();
  v14 = v27;
  sub_2146DA388();
  if (v14)
  {

    return (*(v42 + 8))(v5, v3);
  }

  else
  {
    v16 = v24;

    LODWORD(v29[0]) = v26;
    BYTE4(v29[0]) = v25;
    v28[0] = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905DC8, &qword_2146F40C0);
    sub_2142E883C();
    sub_2146DA388();
    v29[0] = v16;
    v29[1] = v23;
    v28[0] = 2;
    sub_2146DA388();
    v35 = v39;
    v36[0] = v40[0];
    *(v36 + 9) = *(v40 + 9);
    v33 = v37;
    v34 = v38;
    v32 = 3;
    sub_213FB2E54(&v37, v29, &qword_27C909E68, &qword_214761070);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C909E68, &qword_214761070);
    sub_21430A7EC();
    sub_2146DA388();
    v30[2] = v35;
    *v31 = v36[0];
    *&v31[9] = *(v36 + 9);
    v30[0] = v33;
    v30[1] = v34;
    sub_213FB2DF4(v30, &qword_27C909E68, &qword_214761070);
    v29[0] = v22;
    v29[1] = v21;
    v28[0] = 4;
    sub_2146DA388();
    LODWORD(v29[0]) = v20;
    BYTE4(v29[0]) = v19;
    v28[0] = 5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905AC0, &unk_2146F3F90);
    sub_2142E62D8();
    sub_2146DA388();
    v17 = v42;
    memcpy(v29, v41, 0x189uLL);
    v28[399] = 6;
    sub_213FB2E54(v41, v28, &qword_27C909E50, &unk_2146F5B30);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C909E50, &unk_2146F5B30);
    sub_21430A714();
    sub_2146DA388();
    memcpy(v28, v29, 0x189uLL);
    sub_213FB2DF4(v28, &qword_27C909E50, &unk_2146F5B30);
    return (*(v17 + 8))(v5, v3);
  }
}

void *sub_214218398@<X0>(void *__src@<X3>, uint64_t a2@<X0>, uint64_t a3@<X1>, _OWORD *a4@<X2>, uint64_t a5@<X8>)
{
  memcpy(&v12[7], __src, 0x189uLL);
  *a5 = a2;
  *(a5 + 8) = a3;
  v9 = a4[3];
  *(a5 + 48) = a4[2];
  *(a5 + 64) = v9;
  *(a5 + 73) = *(a4 + 57);
  v10 = a4[1];
  *(a5 + 16) = *a4;
  *(a5 + 32) = v10;
  return memcpy((a5 + 89), v12, 0x190uLL);
}

uint64_t sub_214218424(uint64_t a1)
{
  v2 = sub_21430BB4C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_214218460(uint64_t a1)
{
  v2 = sub_21430BB4C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21421849C@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90A0F0, &qword_2146F5C48);
  v5 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v7 = &v17 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21430BB4C();
  sub_2146DAA08();
  if (!v2)
  {
    v8 = v5;
    v19 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
    LOBYTE(v27[0]) = 0;
    sub_2142E12FC();
    v9 = v29;
    sub_2146DA1C8();
    v10 = v21[0];
    v11 = v21[1];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C909E68, &qword_214761070);
    v26 = 1;
    sub_21430A588();
    sub_2146DA1C8();
    v17 = v10;
    v18 = v11;
    v24 = v27[2];
    *v25 = v28[0];
    *&v25[9] = *(v28 + 9);
    v22 = v27[0];
    v23 = v27[1];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C909E50, &unk_2146F5B30);
    v20[407] = 2;
    sub_21430A4B0();
    sub_2146DA1C8();
    (*(v8 + 8))(v7, v9);
    memcpy(&v20[7], v21, 0x189uLL);
    v13 = v19;
    v14 = v18;
    *v19 = v17;
    v13[1] = v14;
    v15 = *v25;
    *(v13 + 3) = v24;
    *(v13 + 4) = v15;
    *(v13 + 73) = *&v25[9];
    v16 = v23;
    *(v13 + 1) = v22;
    *(v13 + 2) = v16;
    memcpy(v13 + 89, v20, 0x190uLL);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_2142187A4(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90A100, &qword_2146F5C50);
  v14 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = &v13 - v4;
  v6 = *v1;
  v7 = v1[1];
  v8 = *(v1 + 4);
  v26 = *(v1 + 3);
  v27[0] = v8;
  *(v27 + 9) = *(v1 + 73);
  v9 = *(v1 + 2);
  v24 = *(v1 + 1);
  v25 = v9;
  memcpy(v28, v1 + 12, 0x189uLL);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21430BB4C();

  sub_2146DAA28();
  v16[0] = v6;
  v16[1] = v7;
  v15[0] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
  sub_214045AC0();
  v10 = v29;
  sub_2146DA388();
  if (v10)
  {

    return (*(v14 + 8))(v5, v3);
  }

  else
  {
    v12 = v14;

    v22 = v26;
    v23[0] = v27[0];
    *(v23 + 9) = *(v27 + 9);
    v20 = v24;
    v21 = v25;
    v19 = 1;
    sub_213FB2E54(&v24, v16, &qword_27C909E68, &qword_214761070);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C909E68, &qword_214761070);
    sub_21430A7EC();
    sub_2146DA388();
    v17[2] = v22;
    *v18 = v23[0];
    *&v18[9] = *(v23 + 9);
    v17[0] = v20;
    v17[1] = v21;
    sub_213FB2DF4(v17, &qword_27C909E68, &qword_214761070);
    memcpy(v16, v28, 0x189uLL);
    v15[399] = 2;
    sub_213FB2E54(v28, v15, &qword_27C909E50, &unk_2146F5B30);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C909E50, &unk_2146F5B30);
    sub_21430A714();
    sub_2146DA388();
    memcpy(v15, v16, 0x189uLL);
    sub_213FB2DF4(v15, &qword_27C909E50, &unk_2146F5B30);
    return (*(v12 + 8))(v5, v3);
  }
}

uint64_t sub_214218B80(uint64_t a1)
{
  v2 = sub_21430BBA0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_214218BBC(uint64_t a1)
{
  v2 = sub_21430BBA0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_214218C3C@<X0>(void *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t (*a4)(void)@<X3>, _OWORD *a6@<X8>)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
    sub_2142E12FC();
    sub_2146DA1C8();
    (*(v17 + 8))(v11, v9);
    *v12 = v16;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_214218E3C@<X0>(char *a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, unsigned __int8 *a7@<X6>, uint64_t a8@<X7>, char **a9@<X8>, uint64_t a10, uint64_t a11)
{
  v89 = a8;
  v99 = a6;
  v90 = a5;
  v114 = a2;
  v100 = a1;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C907570, &qword_214732A10);
  v17 = MEMORY[0x28223BE20](v16 - 8);
  v19 = &v88 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  LODWORD(v101) = *a7;
  v97 = a3;
  v93 = &v88 - v20;
  sub_213FB2E54(a3, &v88 - v20, &qword_27C907570, &qword_214732A10);
  v96 = a4;
  v95 = v19;
  sub_213FB2E54(a4, v19, &qword_27C907570, &qword_214732A10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  v22 = swift_initStackObject();
  *(v22 + 16) = xmmword_2146EAEB0;
  v23 = objc_allocWithZone(MEMORY[0x277CCAC68]);
  v24 = sub_2142E0E94(0xD000000000000013, 0x80000002147915E0, 0);
  v94 = v11;
  if (v11)
  {
    result = swift_unexpectedError();
    __break(1u);
  }

  else
  {
    v25 = v24;
    v92 = a11;
    v98 = a10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
    v26 = swift_allocObject();
    v27 = swift_allocObject();
    *(v27 + 16) = v25;
    *(v26 + 16) = sub_21430BBF4;
    *(v26 + 24) = v27;
    *(v22 + 32) = v26;
    v28 = swift_allocObject();
    *(v28 + 16) = sub_2140676DC;
    *(v28 + 24) = 0;
    *(v22 + 40) = v28;
    v29 = sub_2142E091C(v22, &qword_27C903F20, &unk_2146E9D20, sub_21438ED7C, sub_21438F6FC);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130C0, &unk_2146EAA60);
    v30 = swift_allocObject();
    v31 = swift_allocObject();
    *(v31 + 16) = v29;
    *(v30 + 16) = sub_214032610;
    *(v30 + 24) = v31;
    *(inited + 32) = v30;
    sub_214042A28(inited, &v110);
    v32 = v111;
    v33 = v112;
    LOBYTE(v30) = v113;
    sub_214393C20(&v106);
    v34 = v107;
    v35 = v108;
    v36 = v109;
    sub_214393C54(&v102);
    v37 = v103;
    v38 = v104;
    v91 = v105;
    *a9 = v110;
    a9[2] = v32;
    a9[3] = v33;
    *(a9 + 32) = v30;
    v39 = type metadata accessor for IDSHealthInvitation.SharingSetupMetadata(0);
    sub_21408AC04(v93, a9 + v39[5], &qword_27C907570, &qword_214732A10);
    sub_21408AC04(v95, a9 + v39[6], &qword_27C907570, &qword_214732A10);
    v40 = a9 + v39[7];
    *v40 = v106;
    *(v40 + 2) = v34;
    *(v40 + 3) = v35;
    v40[32] = v36;
    *(a9 + v39[8]) = v101;
    v41 = a9 + v39[9];
    *v41 = v102;
    *(v41 + 2) = v37;
    *(v41 + 3) = v38;
    v41[32] = v91;
    *(a9 + v39[10]) = v92;
    v43 = *a9;
    v42 = a9[1];
    v44 = a9[2];
    v45 = a9[3];
    v46 = *(a9 + 32);
    *&v106 = v100;
    *(&v106 + 1) = v114;
    LODWORD(v93) = v46;
    LOBYTE(v102) = v46;
    *&v110 = 0xD00000000000003DLL;
    *(&v110 + 1) = 0x8000000214791630;
    v111 = 0xD00000000000001CLL;
    v112 = 0x800000021478A360;

    sub_213FDC9D0(v44, v45);
    v47 = v94;
    v95 = v43;
    v48 = (v43)(&v106, &v102, &v110);
    v101 = v47;
    if (v47)
    {

LABEL_8:

      sub_213FB2DF4(v96, &qword_27C907570, &qword_214732A10);
      sub_213FB2DF4(v97, &qword_27C907570, &qword_214732A10);
      v62 = a9[2];
      v63 = a9[3];

      sub_213FDC6D0(v62, v63);
      *a9 = v95;
      a9[1] = v42;
      a9[2] = v44;
      a9[3] = v45;
      *(a9 + 32) = v93;
      return sub_21432887C(a9, type metadata accessor for IDSHealthInvitation.SharingSetupMetadata);
    }

    v94 = 0x800000021478A360;
    v92 = v41;
    if ((v48 & 1) == 0)
    {
      sub_214031C4C();
      swift_allocError();
      *v60 = 0xD00000000000003DLL;
      v60[1] = 0x8000000214791630;
      v61 = v94;
      v60[2] = 0xD00000000000001CLL;
      v60[3] = v61;
      swift_willThrow();

      goto LABEL_8;
    }

    sub_213FDC6D0(v44, v45);
    v49 = v94;

    v50 = a9[2];
    v51 = a9[3];

    sub_213FDC6D0(v50, v51);
    *a9 = v95;
    a9[1] = v42;
    v52 = v114;
    a9[2] = v100;
    a9[3] = v52;
    *(a9 + 32) = v93;
    v54 = *v40;
    v53 = *(v40 + 1);
    v55 = *(v40 + 2);
    v56 = *(v40 + 3);
    v57 = v40[32];
    *&v106 = v90;
    *(&v106 + 1) = v99;
    LODWORD(v100) = v57;
    LOBYTE(v102) = v57;
    *&v110 = 0xD00000000000003ALL;
    *(&v110 + 1) = 0x8000000214791670;
    v111 = 0xD00000000000001CLL;
    v112 = v49;

    sub_213FDC9D0(v55, v56);
    v58 = v101;
    v114 = v54;
    v59 = (v54)(&v106, &v102, &v110);
    v101 = v58;
    if (v58)
    {

LABEL_14:

      sub_213FB2DF4(v96, &qword_27C907570, &qword_214732A10);
      sub_213FB2DF4(v97, &qword_27C907570, &qword_214732A10);
      v77 = *(v40 + 2);
      v78 = *(v40 + 3);

      sub_213FDC6D0(v77, v78);
      *v40 = v114;
      *(v40 + 1) = v53;
      *(v40 + 2) = v55;
      *(v40 + 3) = v56;
      v40[32] = v100;
      return sub_21432887C(a9, type metadata accessor for IDSHealthInvitation.SharingSetupMetadata);
    }

    if ((v59 & 1) == 0)
    {
      sub_214031C4C();
      v75 = swift_allocError();
      *v76 = 0xD00000000000003ALL;
      v76[1] = 0x8000000214791670;
      v76[2] = 0xD00000000000001CLL;
      v76[3] = v49;
      v101 = v75;
      swift_willThrow();

      goto LABEL_14;
    }

    sub_213FDC6D0(v55, v56);

    v65 = *(v40 + 2);
    v66 = *(v40 + 3);

    sub_213FDC6D0(v65, v66);
    *v40 = v114;
    *(v40 + 1) = v53;
    v67 = v99;
    *(v40 + 2) = v90;
    *(v40 + 3) = v67;
    v40[32] = v100;
    v69 = *v92;
    v68 = *(v92 + 8);
    v70 = *(v92 + 16);
    v71 = *(v92 + 24);
    v72 = *(v92 + 32);
    *&v106 = v89;
    *(&v106 + 1) = v98;
    LODWORD(v100) = v72;
    LOBYTE(v102) = v72;
    *&v110 = 0xD000000000000042;
    *(&v110 + 1) = 0x80000002147916B0;
    v111 = 0xD00000000000001CLL;
    v112 = v49;

    sub_213FDC9D0(v70, v71);
    v73 = v101;
    v114 = v69;
    v74 = (v69)(&v106, &v102, &v110);
    if (v73)
    {

LABEL_18:

      v85 = v92;
      sub_213FB2DF4(v96, &qword_27C907570, &qword_214732A10);
      sub_213FB2DF4(v97, &qword_27C907570, &qword_214732A10);
      v86 = *(v85 + 16);
      v87 = *(v85 + 24);

      sub_213FDC6D0(v86, v87);
      *v85 = v114;
      *(v85 + 8) = v68;
      *(v85 + 16) = v70;
      *(v85 + 24) = v71;
      *(v85 + 32) = v100;
      return sub_21432887C(a9, type metadata accessor for IDSHealthInvitation.SharingSetupMetadata);
    }

    if ((v74 & 1) == 0)
    {
      sub_214031C4C();
      swift_allocError();
      *v83 = 0xD000000000000042;
      v83[1] = 0x80000002147916B0;
      v84 = v94;
      v83[2] = 0xD00000000000001CLL;
      v83[3] = v84;
      swift_willThrow();
      goto LABEL_18;
    }

    sub_213FDC6D0(v70, v71);

    sub_213FB2DF4(v96, &qword_27C907570, &qword_214732A10);
    sub_213FB2DF4(v97, &qword_27C907570, &qword_214732A10);
    v79 = v92;
    v80 = *(v92 + 16);
    v81 = *(v92 + 24);

    result = sub_213FDC6D0(v80, v81);
    *v79 = v114;
    *(v79 + 8) = v68;
    v82 = v98;
    *(v79 + 16) = v89;
    *(v79 + 24) = v82;
    *(v79 + 32) = v100;
  }

  return result;
}

unint64_t sub_2142198B4()
{
  v1 = 0xD000000000000010;
  v2 = 0xD000000000000019;
  if (*v0 != 5)
  {
    v2 = 0xD000000000000010;
  }

  if (*v0 <= 4u)
  {
    v2 = 0xD000000000000011;
  }

  if (!*v0)
  {
    v1 = 0xD000000000000014;
  }

  if (*v0 <= 2u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_21421996C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_2143797C0(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_214219994(uint64_t a1)
{
  v2 = sub_21430BBFC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2142199D0(uint64_t a1)
{
  v2 = sub_21430BBFC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_214219A0C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v108 = a2;
  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C907570, &qword_214732A10);
  v3 = MEMORY[0x28223BE20](v110);
  v109 = (&v91 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v91 - v6;
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v91 - v9;
  MEMORY[0x28223BE20](v8);
  v12 = &v91 - v11;
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90A120, &qword_2146F5C68);
  v111 = *(v112 - 8);
  MEMORY[0x28223BE20](v112);
  v14 = &v91 - v13;
  v15 = type metadata accessor for IDSHealthInvitation.SharingSetupMetadata(0);
  MEMORY[0x28223BE20](v15);
  v17 = &v91 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = a1[3];
  v126 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v18);
  sub_21430BBFC();
  v19 = v113;
  sub_2146DAA08();
  if (v19)
  {
    return __swift_destroy_boxed_opaque_existential_1(v126);
  }

  v104 = v15;
  v105 = v7;
  v113 = v10;
  v107 = v12;
  v106 = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
  LOBYTE(v118) = 0;
  v20 = sub_2142E12FC();
  sub_2146DA1C8();
  v103 = v20;
  v21 = v122;
  LOBYTE(v122) = 1;
  sub_2142F4AA4();
  sub_2146DA1C8();
  LOBYTE(v122) = 2;
  sub_2146DA1C8();
  v110 = *(&v21 + 1);
  v102 = v21;
  LOBYTE(v118) = 3;
  sub_2146DA1C8();
  v22 = v14;
  v23 = v122;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90A130, &qword_2146F5C70);
  LOBYTE(v118) = 4;
  sub_21430BC50();
  sub_2146DA1C8();
  v101 = v23;
  v24 = v122;
  LOBYTE(v118) = 5;
  sub_2146DA1C8();
  v25 = v113;
  v27 = *(&v122 + 1);
  v103 = v122;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90A148, &qword_2146F5C78);
  LOBYTE(v118) = 6;
  sub_21430BD28();
  sub_2146DA1C8();
  LODWORD(v97) = v24;
  v100 = *(&v23 + 1);
  v99 = v27;
  v98 = v22;
  v96 = v122;
  v28 = v105;
  sub_213FB2E54(v107, v105, &qword_27C907570, &qword_214732A10);
  v29 = v25;
  v30 = v109;
  sub_213FB2E54(v29, v109, &qword_27C907570, &qword_214732A10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  v32 = swift_initStackObject();
  *(v32 + 16) = xmmword_2146EAEB0;
  v33 = objc_allocWithZone(MEMORY[0x277CCAC68]);
  v34 = sub_2142E0E94(0xD000000000000013, 0x80000002147915E0, 0);
  v95 = 0;
  v35 = v34;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v36 = swift_allocObject();
  v37 = swift_allocObject();
  *(v37 + 16) = v35;
  *(v36 + 16) = sub_21438F528;
  *(v36 + 24) = v37;
  *(v32 + 32) = v36;
  v38 = swift_allocObject();
  *(v38 + 16) = sub_2140676DC;
  *(v38 + 24) = 0;
  *(v32 + 40) = v38;
  v39 = sub_2142E091C(v32, &qword_27C903F20, &unk_2146E9D20, sub_21438ED7C, sub_21438F6FC);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130C0, &unk_2146EAA60);
  v40 = swift_allocObject();
  v41 = swift_allocObject();
  *(v41 + 16) = v39;
  *(v40 + 16) = sub_214032610;
  *(v40 + 24) = v41;
  *(inited + 32) = v40;
  sub_214042A28(inited, &v122);
  v42 = v123;
  v43 = v124;
  LOBYTE(v40) = v125;
  sub_214393C20(&v118);
  v44 = v119;
  v45 = v120;
  v91 = v121;
  sub_214393C54(&v114);
  v94 = v115;
  v93 = v116;
  v92 = v117;
  v46 = v106;
  *v106 = v122;
  *(v46 + 2) = v42;
  *(v46 + 3) = v43;
  *(v46 + 32) = v40;
  v47 = v104;
  sub_21408AC04(v28, v46 + v104[5], &qword_27C907570, &qword_214732A10);
  sub_21408AC04(v30, v46 + v47[6], &qword_27C907570, &qword_214732A10);
  v48 = v46 + v47[7];
  *v48 = v118;
  *(v48 + 2) = v44;
  *(v48 + 3) = v45;
  v48[32] = v91;
  *(v46 + v47[8]) = v97;
  v49 = v46 + v47[9];
  *v49 = v114;
  v50 = v93;
  *(v49 + 2) = v94;
  *(v49 + 3) = v50;
  v97 = v49;
  v49[32] = v92;
  *(v46 + v47[10]) = v96;
  v52 = *v46;
  v51 = *(v46 + 1);
  v53 = *(v46 + 2);
  v54 = *(v46 + 3);
  LODWORD(v50) = *(v46 + 32);
  *&v118 = v102;
  *(&v118 + 1) = v110;
  LODWORD(v105) = v50;
  LOBYTE(v114) = v50;
  *&v122 = 0xD00000000000003DLL;
  *(&v122 + 1) = 0x8000000214791630;
  v123 = 0xD00000000000001CLL;
  v124 = 0x800000021478A360;

  sub_213FDC9D0(v53, v54);
  v55 = v95;
  v109 = v52;
  v56 = (v52)(&v118, &v114, &v122);
  if (v55)
  {

LABEL_9:

    sub_213FB2DF4(v113, &qword_27C907570, &qword_214732A10);
    sub_213FB2DF4(v107, &qword_27C907570, &qword_214732A10);
    (*(v111 + 8))(v98, v112);
    v68 = *(v46 + 2);
    v69 = *(v46 + 3);

    sub_213FDC6D0(v68, v69);
    *v46 = v109;
    *(v46 + 1) = v51;
    *(v46 + 2) = v53;
    *(v46 + 3) = v54;
    *(v46 + 32) = v105;
LABEL_10:
    __swift_destroy_boxed_opaque_existential_1(v126);
    return sub_21432887C(v46, type metadata accessor for IDSHealthInvitation.SharingSetupMetadata);
  }

  if ((v56 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v67 = 0xD00000000000003DLL;
    v67[1] = 0x8000000214791630;
    v67[2] = 0xD00000000000001CLL;
    v67[3] = 0x800000021478A360;
    swift_willThrow();

    goto LABEL_9;
  }

  sub_213FDC6D0(v53, v54);

  v57 = *(v46 + 2);
  v58 = *(v46 + 3);

  sub_213FDC6D0(v57, v58);
  *v46 = v109;
  *(v46 + 1) = v51;
  v59 = v110;
  *(v46 + 2) = v102;
  *(v46 + 3) = v59;
  *(v46 + 32) = v105;
  v61 = *v48;
  v60 = *(v48 + 1);
  v62 = *(v48 + 2);
  v63 = *(v48 + 3);
  v64 = v48[32];
  *&v118 = v101;
  *(&v118 + 1) = v100;
  LODWORD(v110) = v64;
  LOBYTE(v114) = v64;
  *&v122 = 0xD00000000000003ALL;
  *(&v122 + 1) = 0x8000000214791670;
  v123 = 0xD00000000000001CLL;
  v124 = 0x800000021478A360;

  sub_213FDC9D0(v62, v63);
  v65 = v61;
  v66 = v61(&v118, &v114, &v122);
  if ((v66 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v80 = 0xD00000000000003ALL;
    v80[1] = 0x8000000214791670;
    v80[2] = 0xD00000000000001CLL;
    v80[3] = 0x800000021478A360;
    swift_willThrow();

    sub_213FB2DF4(v113, &qword_27C907570, &qword_214732A10);
    sub_213FB2DF4(v107, &qword_27C907570, &qword_214732A10);
    (*(v111 + 8))(v98, v112);
    v81 = *(v48 + 2);
    v82 = *(v48 + 3);

    sub_213FDC6D0(v81, v82);
    *v48 = v65;
    *(v48 + 1) = v60;
    *(v48 + 2) = v62;
    *(v48 + 3) = v63;
    v48[32] = v110;
LABEL_14:
    v46 = v106;
    goto LABEL_10;
  }

  sub_213FDC6D0(v62, v63);

  v70 = *(v48 + 2);
  v71 = *(v48 + 3);

  sub_213FDC6D0(v70, v71);
  *v48 = v61;
  *(v48 + 1) = v60;
  v72 = v100;
  *(v48 + 2) = v101;
  *(v48 + 3) = v72;
  v48[32] = v110;
  v74 = *v97;
  v73 = *(v97 + 1);
  v75 = *(v97 + 2);
  v76 = *(v97 + 3);
  v77 = v97[32];
  *&v118 = v103;
  *(&v118 + 1) = v99;
  LOBYTE(v114) = v77;
  *&v122 = 0xD000000000000042;
  *(&v122 + 1) = 0x80000002147916B0;
  v123 = 0xD00000000000001CLL;
  v124 = 0x800000021478A360;

  sub_213FDC9D0(v75, v76);
  v78 = v74;
  v79 = v74(&v118, &v114, &v122);
  if ((v79 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v87 = 0xD000000000000042;
    v87[1] = 0x80000002147916B0;
    v87[2] = 0xD00000000000001CLL;
    v87[3] = 0x800000021478A360;
    swift_willThrow();

    sub_213FB2DF4(v113, &qword_27C907570, &qword_214732A10);
    sub_213FB2DF4(v107, &qword_27C907570, &qword_214732A10);
    (*(v111 + 8))(v98, v112);
    v88 = v97;
    v89 = *(v97 + 2);
    v90 = *(v97 + 3);

    sub_213FDC6D0(v89, v90);
    *v88 = v78;
    *(v88 + 1) = v73;
    *(v88 + 2) = v75;
    *(v88 + 3) = v76;
    v88[32] = v77;
    goto LABEL_14;
  }

  sub_213FDC6D0(v75, v76);

  sub_213FB2DF4(v113, &qword_27C907570, &qword_214732A10);
  sub_213FB2DF4(v107, &qword_27C907570, &qword_214732A10);
  (*(v111 + 8))(v98, v112);
  v83 = v97;
  v84 = *(v97 + 2);
  v85 = *(v97 + 3);

  sub_213FDC6D0(v84, v85);
  *v83 = v74;
  *(v83 + 1) = v73;
  v86 = v99;
  *(v83 + 2) = v103;
  *(v83 + 3) = v86;
  v83[32] = v77;
  sub_214328704(v106, v108, type metadata accessor for IDSHealthInvitation.SharingSetupMetadata);
  return __swift_destroy_boxed_opaque_existential_1(v126);
}

uint64_t sub_21421AB54(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90A158, &qword_2146F5C80);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v17 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21430BBFC();
  sub_2146DAA28();
  v9 = *(v3 + 24);
  if (v9 != 1)
  {
    v19 = *(v3 + 16);
    v20 = v9;
    v21 = 0;
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
    sub_214045AC0();
    sub_2146DA388();
    if (v2)
    {
      return (*(v6 + 8))(v8, v5);
    }

    v17 = v10;
    v18 = v6;
    v12 = type metadata accessor for IDSHealthInvitation.SharingSetupMetadata(0);
    LOBYTE(v19) = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C907570, &qword_214732A10);
    sub_2142F511C();
    sub_2146DA388();
    LOBYTE(v19) = 2;
    sub_2146DA388();
    v13 = v3 + v12[7];
    v14 = *(v13 + 24);
    v6 = v18;
    if (v14 != 1)
    {
      v19 = *(v13 + 16);
      v20 = v14;
      v21 = 3;
      sub_2146DA388();
      LOBYTE(v19) = *(v3 + v12[8]);
      v21 = 4;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90A130, &qword_2146F5C70);
      sub_21430BDDC();
      sub_2146DA388();
      v15 = v3 + v12[9];
      v16 = *(v15 + 24);
      if (v16 != 1)
      {
        v19 = *(v15 + 16);
        v20 = v16;
        v21 = 5;
        sub_2146DA388();
        v19 = *(v3 + v12[10]);
        v21 = 6;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90A148, &qword_2146F5C78);
        sub_21430BEB4();
        sub_2146DA388();
        return (*(v6 + 8))(v8, v5);
      }
    }
  }

  result = sub_2146DA018();
  __break(1u);
  return result;
}

uint64_t sub_21421AF54@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  sub_2143940DC(&v23);
  v10 = v23;
  v9 = v24;
  v11 = v25;
  v12 = v26;
  v33[0] = a1;
  v33[1] = a2;
  v17 = v27;
  v35 = v27;
  v23 = 0xD000000000000040;
  v24 = 0x8000000214791700;
  v25 = 0xD00000000000001CLL;
  v26 = 0x800000021478A360;

  sub_213FDC9D0(v11, v12);
  v13 = v10(v33, &v35, &v23);
  if (v18)
  {
  }

  else
  {
    if (v13)
    {
      sub_213FDC6D0(v11, v12);

      result = sub_213FDC6D0(v11, v12);
      *a7 = v10;
      *(a7 + 8) = v9;
      *(a7 + 16) = a1;
      *(a7 + 24) = a2;
      *(a7 + 32) = v17;
      *(a7 + 40) = a3;
      *(a7 + 48) = a4;
      *(a7 + 56) = a5;
      *(a7 + 64) = a6;
      return result;
    }

    sub_214031C4C();
    swift_allocError();
    *v15 = 0xD000000000000040;
    v15[1] = 0x8000000214791700;
    v15[2] = 0xD00000000000001CLL;
    v15[3] = 0x800000021478A360;
    swift_willThrow();
  }

  sub_213FDC6D0(v11, v12);
  v23 = v10;
  v24 = v9;
  v25 = v11;
  v26 = v12;
  v27 = v17;
  *v28 = *v34;
  *&v28[3] = *&v34[3];
  v29 = a3;
  v30 = a4;
  v31 = a5;
  v32 = a6;
  return sub_21430BF68(&v23);
}

uint64_t sub_21421B148()
{
  v1 = 0x4E79616C70736964;
  if (*v0 != 1)
  {
    v1 = 0x5379616C70736964;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000017;
  }
}

uint64_t sub_21421B1BC@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_214379A10(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_21421B1E4(uint64_t a1)
{
  v2 = sub_21430BFBC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21421B220(uint64_t a1)
{
  v2 = sub_21430BFBC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21421B25C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90A178, &qword_2146F5C88);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v32 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21430BFBC();
  sub_2146DAA08();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v63 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
  LOBYTE(v43) = 0;
  sub_2142E12FC();
  sub_2146DA1C8();
  v9 = v49;
  v42 = v48;
  LOBYTE(v43) = 1;
  sub_2146DA1C8();
  v41 = v9;
  v10 = v49;
  v40 = v48;
  v59 = 2;
  sub_2146DA1C8();
  v36 = v10;
  v34 = v60;
  v35 = v61;
  sub_2143940DC(&v48);
  v13 = v48;
  v12 = v49;
  v14 = v50;
  v15 = v51;
  v58[0] = v42;
  v58[1] = v41;
  v38 = v52;
  LOBYTE(v43) = v52;
  v48 = 0xD000000000000040;
  v49 = 0x8000000214791700;
  v32 = 0x8000000214791700;
  v50 = 0xD00000000000001CLL;
  v51 = 0x800000021478A360;

  v37 = v14;
  v33 = v15;
  sub_213FDC9D0(v14, v15);
  v16 = v12;
  v39 = v13;
  v17 = v13(v58, &v43, &v48);
  v18 = v32;
  if (v17)
  {
    v19 = v33;
    sub_213FDC6D0(v37, v33);

    (*(v6 + 8))(v8, v5);
    v20 = v16;

    sub_213FDC6D0(v37, v19);
    *&v43 = v39;
    *(&v43 + 1) = v16;
    *&v44 = v42;
    v21 = v41;
    *(&v44 + 1) = v41;
    LOBYTE(v45) = v38;
    v22 = v40;
    v23 = v36;
    *(&v45 + 1) = v40;
    *&v46 = v36;
    v24 = v34;
    v25 = v35;
    *(&v46 + 1) = v34;
    v47 = v35;
    v26 = v63;
    *(v63 + 64) = v35;
    v27 = v46;
    v26[2] = v45;
    v26[3] = v27;
    v28 = v44;
    *v26 = v43;
    v26[1] = v28;
    sub_21430C010(&v43, &v48);
    __swift_destroy_boxed_opaque_existential_1(a1);
    v48 = v39;
    v49 = v20;
    v50 = v42;
    v51 = v21;
    v52 = v38;
    v54 = v22;
    v55 = v23;
    v56 = v24;
    v57 = v25;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v29 = 0xD000000000000040;
    v29[1] = v18;
    v29[2] = 0xD00000000000001CLL;
    v29[3] = 0x800000021478A360;
    swift_willThrow();

    (*(v6 + 8))(v8, v5);

    v30 = v37;
    v31 = v33;
    sub_213FDC6D0(v37, v33);
    __swift_destroy_boxed_opaque_existential_1(a1);
    v48 = v39;
    v49 = v16;
    v50 = v30;
    v51 = v31;
    v52 = v38;
    *v53 = *v62;
    *&v53[3] = *&v62[3];
    v54 = v40;
    v55 = v36;
    v56 = v34;
    v57 = v35;
  }

  return sub_21430BF68(&v48);
}

uint64_t sub_21421B7E8(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90A188, &qword_2146F5C90);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v13 - v5;
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[5];
  v16 = v1[6];
  v17 = v9;
  v10 = v1[7];
  v14 = v1[8];
  v15 = v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21430BFBC();
  sub_2146DAA28();
  if (v8 == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v19 = v7;
    v20 = v8;
    v21 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
    sub_214045AC0();
    v11 = v18;
    sub_2146DA388();
    if (v11)
    {
      return (*(v4 + 8))(v6, v3);
    }

    else
    {
      v19 = v17;
      v20 = v16;
      v21 = 1;
      sub_2146DA388();
      v19 = v15;
      v20 = v14;
      v21 = 2;
      sub_2146DA388();
      return (*(v4 + 8))(v6, v3);
    }
  }

  return result;
}

uint64_t sub_21421BA68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  sub_2144B3CA4(&v13);
  v7 = v13;
  v6 = v14;
  v8 = v16;
  v18 = a1;
  v17 = v16;
  v13 = 0xD000000000000054;
  v14 = 0x8000000214791750;
  v15 = 0xD00000000000001CLL;
  v16 = 0x800000021478A360;

  v9 = v7(&v18, &v17, &v13);
  if (v3)
  {
  }

  else
  {
    if (v9)
    {

      *a2 = a3;
      *(a2 + 8) = v7;
      *(a2 + 16) = v6;
      *(a2 + 24) = a1;
      *(a2 + 32) = v8;
      return result;
    }

    sub_214031C4C();
    swift_allocError();
    *v11 = 0xD000000000000054;
    v11[1] = 0x8000000214791750;
    v11[2] = 0xD00000000000001CLL;
    v11[3] = 0x800000021478A360;
    swift_willThrow();
  }

  swift_bridgeObjectRelease_n();
}

uint64_t sub_21421BBFC()
{
  if (*v0)
  {
    return 0xD000000000000015;
  }

  else
  {
    return 0x6E6F6973726576;
  }
}

uint64_t sub_21421BC3C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6E6F6973726576 && a2 == 0xE700000000000000;
  if (v6 || (sub_2146DA6A8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000015 && 0x8000000214796B10 == a2)
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

uint64_t sub_21421BD20(uint64_t a1)
{
  v2 = sub_21430C06C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21421BD5C(uint64_t a1)
{
  v2 = sub_21430C06C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21421BD98@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90A190, &qword_2146F5C98);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v19 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21430C06C();
  sub_2146DAA08();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  LOBYTE(v25) = 0;
  sub_2146DA188();
  v10 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9041D0, &qword_2146F5CA0);
  LOBYTE(v30) = 1;
  sub_21430C0C0();
  sub_2146DA1C8();
  v12 = v25;
  sub_2144B3CA4(&v25);
  v14 = v25;
  v13 = v26;
  v23 = v12;
  v24 = v27;
  v30 = v12;
  v20 = v28;
  v29 = v28;
  v25 = 0xD000000000000054;
  v26 = 0x8000000214791750;
  v21 = 0x8000000214791750;
  v27 = 0xD00000000000001CLL;
  v28 = 0x800000021478A360;

  v22 = v13;
  v15 = v14(&v30, &v29, &v25);
  v19 = v14;
  v16 = v21;
  if (v15)
  {

    (*(v6 + 8))(v8, v5);

    v17 = v22;

    *a2 = v10;
    *(a2 + 8) = v19;
    *(a2 + 16) = v17;
    *(a2 + 24) = v23;
    *(a2 + 32) = v20;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v18 = 0xD000000000000054;
    v18[1] = v16;
    v18[2] = 0xD00000000000001CLL;
    v18[3] = 0x800000021478A360;
    swift_willThrow();

    (*(v6 + 8))(v8, v5);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_21421C10C(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90A1A8, &qword_2146F5CA8);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v10[-v6];
  v8 = *(v1 + 24);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21430C06C();
  sub_2146DAA28();
  v12 = 0;
  sub_2146DA348();
  if (v2)
  {
    return (*(v5 + 8))(v7, v4);
  }

  if (v8)
  {
    v11 = v8;
    v10[15] = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9041D0, &qword_2146F5CA0);
    sub_21430C13C();
    sub_2146DA388();
    return (*(v5 + 8))(v7, v4);
  }

  result = sub_2146DA018();
  __break(1u);
  return result;
}

__n128 sub_21421C324@<Q0>(__int128 *a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X5>, char a7@<W6>, uint64_t a8@<X7>, uint64_t a9@<X8>, char a10, uint64_t a11, char a12, uint64_t a13, char a14, uint64_t a15, char a16, uint64_t (*a17)(void, void, void), uint64_t a18, char a19, char a20, uint64_t (*a21)(void, void, void), uint64_t (*a22)(void, void, void), uint64_t (*a23)(void, void, void), uint64_t a24, uint64_t a25, char a26, uint64_t (*a27)(void, void, void), uint64_t a28, char *a29)
{
  v29 = a1[3];
  v170 = a1[2];
  v171 = v29;
  LOBYTE(v172) = *(a1 + 64);
  v30 = a1[1];
  v168 = *a1;
  v169 = v30;
  v66 = *a29;
  sub_2145B2490(&v83);
  v31 = v83;
  v32 = v84;
  v33 = v85;
  sub_2145B24C4(&v143);
  v80 = v143;
  v82 = v144;
  v79 = v145;
  v173 = v146;
  v75 = v147;
  sub_2145B24F8(v141);
  v76 = v141[0];
  v74 = v141[2];
  v77 = v141[1];
  v78 = v141[3];
  v81 = v142;
  sub_2145B252C(v139);
  v68 = v139[0];
  v71 = v139[2];
  v72 = v139[3];
  v73 = v139[1];
  v69 = v140;
  v155 = a3 & 1;
  v154 = a5 & 1;
  v153 = a7 & 1;
  v152 = a10 & 1;
  v151 = a12 & 1;
  v150 = a14 & 1;
  v149 = a16 & 1;
  v148 = a26 & 1;
  v143 = a17;
  v144 = a18;
  v63 = v33;
  LOBYTE(v141[0]) = v33;
  *&v83 = 0xD000000000000035;
  *(&v83 + 1) = 0x80000002147917B0;
  v84.n128_u64[0] = 0xD00000000000001CLL;
  v84.n128_u64[1] = 0x800000021478A360;

  v34 = v32.n128_u64[0];
  sub_213FDC9D0(v32.n128_i64[0], v32.n128_i64[1]);
  v35 = (v31)(&v143, v141, &v83);
  if (v70)
  {

    v36 = v69;
    v37 = *(&v31 + 1);
    v38 = v68;
LABEL_6:

    v42 = v32.n128_i64[1];
    sub_213FDC6D0(v32.n128_i64[0], v32.n128_i64[1]);
    v39 = v75;
    v43 = v74;
    v44 = v79;
    v45 = a26 & 1;
LABEL_7:
    v89 = a3 & 1;
    v91 = a4;
    v92 = a5 & 1;
    v94 = a6;
    v95 = a7 & 1;
    v97 = a8;
    v98 = a10 & 1;
    v100 = a11;
    v101 = a12 & 1;
    v87 = v172;
    v88 = a2;
    *v90 = *v167;
    *&v90[3] = *&v167[3];
    *&v93[3] = *&v166[3];
    *v93 = *v166;
    *&v96[3] = *&v165[3];
    *v96 = *v165;
    *&v99[3] = *&v164[3];
    *v99 = *v164;
    *&v102[3] = *&v163[3];
    *v102 = *v163;
    v85 = v170;
    v86 = v171;
    v83 = v168;
    v84 = v169;
    v103 = a13;
    v104 = a14 & 1;
    *&v105[3] = *&v162[3];
    *v105 = *v162;
    v106 = a15;
    v107 = a16 & 1;
    *&v108[3] = *&v161[3];
    *v108 = *v161;
    v109 = v31;
    v110 = v37;
    v111 = v34;
    v112 = v42;
    v113 = v63;
    v114 = a19;
    v115 = a20;
    v117 = v160;
    v116 = v159;
    v118 = v80;
    v119 = v82;
    v120 = v44;
    v121 = v173;
    v122 = v39;
    *v123 = *v158;
    *&v123[3] = *&v158[3];
    v124 = v76;
    v125 = v77;
    v126 = v43;
    v127 = v78;
    v128 = v81;
    *v129 = v157[0];
    *&v129[3] = *(v157 + 3);
    v130 = a25;
    v131 = v45;
    *v132 = v156[0];
    *&v132[3] = *(v156 + 3);
    v133 = v38;
    v134 = v73;
    v135 = v71;
    v136 = v72;
    v137 = v36;
    v138 = v66;
    sub_21430C1B8(&v83);
    return result;
  }

  if ((v35 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v41 = 0xD000000000000035;
    v41[1] = 0x80000002147917B0;
    v41[2] = 0xD00000000000001CLL;
    v41[3] = 0x800000021478A360;
    swift_willThrow();

    v36 = v69;
    v37 = *(&v31 + 1);
    v38 = v68;
    goto LABEL_6;
  }

  sub_213FDC6D0(v32.n128_i64[0], v32.n128_i64[1]);

  v37 = *(&v31 + 1);

  sub_213FDC6D0(v32.n128_i64[0], v32.n128_i64[1]);
  v143 = a21;
  v144 = a22;
  v39 = v75;
  LOBYTE(v141[0]) = v75;
  *&v83 = 0xD00000000000003FLL;
  *(&v83 + 1) = 0x80000002147917F0;
  v84.n128_u64[0] = 0xD00000000000001CLL;
  v84.n128_u64[1] = 0x800000021478A360;

  sub_213FDC9D0(v79, v173);
  v40 = v80(&v143, v141, &v83);
  if ((v40 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v49 = 0xD00000000000003FLL;
    v49[1] = 0x80000002147917F0;
    v49[2] = 0xD00000000000001CLL;
    v49[3] = 0x800000021478A360;
    swift_willThrow();

    v38 = v68;

    v44 = v79;
    sub_213FDC6D0(v79, v173);
    v34 = a17;
    v42 = a18;
    v45 = a26 & 1;
    v36 = v69;
    v43 = v74;
    goto LABEL_7;
  }

  v43 = a23;
  v47 = v173;
  sub_213FDC6D0(v79, v173);

  sub_213FDC6D0(v79, v47);
  v143 = a23;
  v144 = a24;
  LOBYTE(v141[0]) = v81;
  *&v83 = 0xD000000000000038;
  *(&v83 + 1) = 0x8000000214791830;
  v84.n128_u64[0] = 0xD00000000000001CLL;
  v84.n128_u64[1] = 0x800000021478A360;

  sub_213FDC9D0(v74, v78);
  v48 = v76(&v143, v141, &v83);
  if ((v48 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v51 = 0xD000000000000038;
    v51[1] = 0x8000000214791830;
    v51[2] = 0xD00000000000001CLL;
    v51[3] = 0x800000021478A360;
    swift_willThrow();

    v38 = v68;

    v43 = v74;
    sub_213FDC6D0(v74, v78);
    v34 = a17;
    v42 = a18;
    v44 = a21;
    v173 = a22;
    v39 = v75;
    v45 = a26 & 1;
    v36 = v69;
    goto LABEL_7;
  }

  sub_213FDC6D0(v74, v78);

  sub_213FDC6D0(v74, v78);
  v143 = a27;
  v144 = a28;
  LOBYTE(v141[0]) = v69;
  *&v83 = 0xD00000000000004CLL;
  *(&v83 + 1) = 0x8000000214791870;
  v84.n128_u64[0] = 0xD00000000000001CLL;
  v84.n128_u64[1] = 0x800000021478A360;

  sub_213FDC9D0(v71, v72);
  v50 = v68(&v143, v141, &v83);
  v173 = a27;
  if ((v50 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v57 = 0xD00000000000004CLL;
    v57[1] = 0x8000000214791870;
    v57[2] = 0xD00000000000001CLL;
    v57[3] = 0x800000021478A360;
    swift_willThrow();

    sub_213FDC6D0(v71, v72);
    v34 = a17;
    v42 = a18;
    v44 = a21;
    v173 = a22;
    v37 = *(&v31 + 1);
    v78 = a24;
    v39 = v75;
    v45 = a26 & 1;
    v36 = v69;
    v38 = v68;
    goto LABEL_7;
  }

  sub_213FDC6D0(v71, v72);

  sub_213FDC6D0(v71, v72);
  *(a9 + 80) = a3 & 1;
  *(a9 + 88) = a4;
  *(a9 + 96) = a5 & 1;
  *(a9 + 104) = a6;
  *(a9 + 112) = a7 & 1;
  *(a9 + 120) = a8;
  *(a9 + 128) = a10 & 1;
  *(a9 + 136) = a11;
  *(a9 + 144) = a12 & 1;
  *(a9 + 152) = a13;
  v52 = v172;
  v53 = v171;
  *(a9 + 32) = v170;
  *(a9 + 48) = v53;
  result = v169;
  *a9 = v168;
  *(a9 + 16) = result;
  *(a9 + 64) = v52;
  *(a9 + 72) = a2;
  *(a9 + 81) = *v167;
  *(a9 + 84) = *&v167[3];
  *(a9 + 100) = *&v166[3];
  *(a9 + 97) = *v166;
  *(a9 + 116) = *&v165[3];
  *(a9 + 113) = *v165;
  *(a9 + 132) = *&v164[3];
  *(a9 + 129) = *v164;
  *(a9 + 148) = *&v163[3];
  *(a9 + 145) = *v163;
  *(a9 + 160) = a14 & 1;
  v54 = *v162;
  *(a9 + 164) = *&v162[3];
  *(a9 + 161) = v54;
  *(a9 + 168) = a15;
  *(a9 + 176) = a16 & 1;
  v55 = *v161;
  *(a9 + 180) = *&v161[3];
  *(a9 + 177) = v55;
  *(a9 + 184) = v31;
  *(a9 + 200) = a17;
  *(a9 + 208) = a18;
  *(a9 + 216) = v33;
  *(a9 + 217) = a19;
  *(a9 + 218) = a20;
  v56 = v159;
  *(a9 + 223) = v160;
  *(a9 + 219) = v56;
  *(a9 + 224) = v80;
  *(a9 + 232) = v82;
  *(a9 + 240) = a21;
  *(a9 + 248) = a22;
  *(a9 + 256) = v75;
  LODWORD(v52) = *v158;
  *(a9 + 260) = *&v158[3];
  *(a9 + 257) = v52;
  *(a9 + 264) = v76;
  *(a9 + 272) = v77;
  *(a9 + 280) = a23;
  *(a9 + 288) = a24;
  *(a9 + 296) = v81;
  LODWORD(v52) = v157[0];
  *(a9 + 300) = *(v157 + 3);
  *(a9 + 297) = v52;
  *(a9 + 304) = a25;
  *(a9 + 312) = a26 & 1;
  LODWORD(v52) = v156[0];
  *(a9 + 316) = *(v156 + 3);
  *(a9 + 313) = v52;
  *(a9 + 320) = v68;
  *(a9 + 328) = v73;
  *(a9 + 336) = v173;
  *(a9 + 344) = a28;
  *(a9 + 352) = v69;
  *(a9 + 353) = v66;
  return result;
}

unint64_t sub_21421CEE4(char a1)
{
  result = 0x656C706D6173;
  switch(a1)
  {
    case 1:
      result = 1701869940;
      break;
    case 2:
      result = 0x6E6F697461727564;
      break;
    case 3:
      result = 0xD000000000000020;
      break;
    case 4:
      result = 0xD000000000000025;
      break;
    case 5:
      result = 0xD00000000000001CLL;
      break;
    case 6:
      result = 0x657079546C616F67;
      break;
    case 7:
      result = 0xD000000000000013;
      break;
    case 8:
      result = 0x4449656C646E7562;
      break;
    case 9:
      result = 0x5768637461577369;
      break;
    case 10:
      result = 0x726F6F646E497369;
      break;
    case 11:
      result = 0xD000000000000012;
      break;
    case 12:
      result = 0x6F4D656369766564;
      break;
    case 13:
      result = 0xD000000000000010;
      break;
    case 14:
      result = 0xD00000000000001FLL;
      break;
    case 15:
      result = 0xD000000000000010;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_21421D0CC(uint64_t a1)
{
  v2 = sub_21430C20C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21421D108(uint64_t a1)
{
  v2 = sub_21430C20C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21421D144@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90A1B8, &qword_2146F5CB0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v36 - v7;
  v9 = a1[3];
  v180 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v9);
  sub_21430C20C();
  sub_2146DAA08();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(v180);
  }

  v79 = a2;
  v80 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90A020, &qword_2146F5BE0);
  v157 = 0;
  sub_21430B48C();
  sub_2146DA1C8();
  v154 = v160;
  v155 = v161;
  v156 = v162;
  v153 = v159;
  v152 = v158;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905698, &qword_2146F3D00);
  LOBYTE(v81[0]) = 1;
  v10 = sub_2142E14CC();
  sub_2146DA1C8();
  v76 = v82;
  v77 = v10;
  LODWORD(v10) = BYTE8(v82);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9058A0, &unk_2147379A0);
  LOBYTE(v81[0]) = 2;
  v78 = sub_2142E35EC();
  sub_2146DA1C8();
  v75 = v10;
  v74 = v82;
  LODWORD(v10) = BYTE8(v82);
  LOBYTE(v81[0]) = 3;
  sub_2146DA1C8();
  v73 = v10;
  v72 = v82;
  LODWORD(v10) = BYTE8(v82);
  LOBYTE(v81[0]) = 4;
  sub_2146DA1C8();
  v71 = v10;
  v70 = v82;
  LODWORD(v10) = BYTE8(v82);
  LOBYTE(v81[0]) = 5;
  sub_2146DA1C8();
  v69 = v10;
  v68 = v82;
  LODWORD(v10) = BYTE8(v82);
  LOBYTE(v81[0]) = 6;
  sub_2146DA1C8();
  v67 = v10;
  v66 = v82;
  LODWORD(v10) = BYTE8(v82);
  LOBYTE(v81[0]) = 7;
  sub_2146DA1C8();
  v64 = v10;
  v63 = v82;
  LODWORD(v10) = BYTE8(v82);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
  LOBYTE(v81[0]) = 8;
  v12 = sub_2142E12FC();
  v78 = v11;
  v65 = v12;
  sub_2146DA1C8();
  v61 = v10;
  v14 = *(&v82 + 1);
  v60 = v82;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905688, &qword_2146F3CF0);
  LOBYTE(v81[0]) = 9;
  sub_2142E1378();
  v62 = v8;
  sub_2146DA1C8();
  v59 = v82;
  LOBYTE(v81[0]) = 10;
  sub_2146DA1C8();
  v15 = v82;
  LOBYTE(v81[0]) = 11;
  sub_2146DA1C8();
  v16 = v82;
  LOBYTE(v81[0]) = 12;
  sub_2146DA1C8();
  v58 = v82;
  LOBYTE(v81[0]) = 13;
  sub_2146DA1C8();
  v57 = v82;
  LODWORD(v77) = BYTE8(v82);
  LOBYTE(v81[0]) = 14;
  sub_2146DA1C8();
  v78 = *(&v82 + 1);
  v52 = v82;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90A060, &qword_2146F5BF8);
  v150 = 15;
  sub_21430B740();
  sub_2146DA1C8();
  v37 = v151;
  sub_213FB2E54(&v152, &v82, &qword_27C90A020, &qword_2146F5BE0);
  sub_2145B2490(&v82);
  v17 = *(&v82 + 1);
  v55 = v82;
  v18 = *(&v83 + 1);
  v65 = v83;
  v54 = v84;
  sub_2145B24C4(v81);
  v49 = *(&v81[0] + 1);
  v47 = *&v81[0];
  v50 = v81[1];
  v48 = LOBYTE(v81[2]);
  sub_2145B24F8(&v138);
  v43 = v138;
  v45 = v139;
  v46 = v140;
  v44 = v141;
  sub_2145B252C(v136);
  v38 = v136[0];
  v41 = v136[2];
  v42 = v136[1];
  v40 = v136[3];
  v39 = v137;
  v177 = v154;
  v178 = v155;
  LOBYTE(v179) = v156;
  v175 = v152;
  v176 = v153;
  v149 = v75;
  v148 = v73;
  v147 = v71;
  v146 = v69;
  v145 = v67;
  v144 = v64;
  v143 = v61;
  v142 = v77;
  *&v81[0] = v60;
  *(&v81[0] + 1) = v14;
  LOBYTE(v138) = v54;
  *&v82 = 0xD000000000000035;
  v36 = 0x80000002147917B0;
  *(&v82 + 1) = 0x80000002147917B0;
  *&v83 = 0xD00000000000001CLL;
  v51 = 0x800000021478A360;
  *(&v83 + 1) = 0x800000021478A360;

  v56 = v18;
  sub_213FDC9D0(v65, v18);
  v53 = v17;
  if (v55(v81, &v138, &v82))
  {
    v19 = v65;
    v20 = v56;
    sub_213FDC6D0(v65, v56);

    sub_213FDC6D0(v19, v20);
    v81[0] = v16;
    LOBYTE(v138) = v48;
    *&v82 = 0xD00000000000003FLL;
    *(&v82 + 1) = 0x80000002147917F0;
    *&v83 = 0xD00000000000001CLL;
    *(&v83 + 1) = v51;

    sub_213FDC9D0(v50, *(&v50 + 1));
    if (v47(v81, &v138, &v82))
    {
      v25 = v50;
      sub_213FDC6D0(v50, *(&v50 + 1));

      sub_213FDC6D0(v25, *(&v50 + 1));
      v81[0] = v58;
      LOBYTE(v138) = v44;
      *&v82 = 0xD000000000000038;
      *(&v82 + 1) = 0x8000000214791830;
      *&v83 = 0xD00000000000001CLL;
      *(&v83 + 1) = v51;

      sub_213FDC9D0(v46, *(&v46 + 1));
      if (v43(v81, &v138, &v82))
      {
        v28 = v46;
        sub_213FDC6D0(v46, *(&v46 + 1));

        sub_213FDC6D0(v28, *(&v46 + 1));
        v138 = v52;
        v139 = v78;
        LOBYTE(v81[0]) = v39;
        *&v82 = 0xD00000000000004CLL;
        *(&v82 + 1) = 0x8000000214791870;
        *&v83 = 0xD00000000000001CLL;
        *(&v83 + 1) = v51;

        sub_213FDC9D0(v41, v40);
        if (v38(&v138, v81, &v82))
        {
          v31 = v40;
          sub_213FDC6D0(v41, v40);

          sub_213FB2DF4(&v152, &qword_27C90A020, &qword_2146F5BE0);
          (*(v80 + 8))(v62, v5);

          sub_213FDC6D0(v41, v31);
          *(&v81[8] + 1) = *v171;
          DWORD1(v81[9]) = *&v170[3];
          *(&v81[9] + 1) = *v170;
          DWORD1(v81[10]) = *&v169[3];
          *(&v81[10] + 1) = *v169;
          DWORD1(v81[11]) = *&v168[3];
          *(&v81[11] + 1) = *v168;
          *(&v81[13] + 11) = v166;
          *(&v81[16] + 1) = *v165;
          *(&v81[18] + 9) = *v164;
          *(&v81[19] + 9) = *v163;
          *&v81[4] = v179;
          *(&v81[5] + 1) = *v174;
          DWORD1(v81[5]) = *&v174[3];
          *(&v81[6] + 1) = *v173;
          DWORD1(v81[6]) = *&v173[3];
          *(&v81[7] + 1) = *v172;
          DWORD1(v81[7]) = *&v172[3];
          DWORD1(v81[8]) = *&v171[3];
          HIBYTE(v81[13]) = v167;
          DWORD1(v81[16]) = *&v165[3];
          HIDWORD(v81[18]) = *&v164[3];
          HIDWORD(v81[19]) = *&v163[3];
          v81[2] = v177;
          v81[3] = v178;
          v81[0] = v175;
          v81[1] = v176;
          *(&v81[4] + 1) = v76;
          v32 = v75;
          LOBYTE(v81[5]) = v75;
          *(&v81[5] + 1) = v74;
          LOBYTE(v81[6]) = v73;
          *(&v81[6] + 1) = v72;
          LOBYTE(v81[7]) = v71;
          *(&v81[7] + 1) = v70;
          LOBYTE(v81[8]) = v69;
          *(&v81[8] + 1) = v68;
          LOBYTE(v81[9]) = v67;
          *(&v81[9] + 1) = v66;
          v33 = v64;
          LOBYTE(v81[10]) = v64;
          *(&v81[10] + 1) = v63;
          LOBYTE(v81[11]) = v61;
          *(&v81[11] + 1) = v55;
          *&v81[12] = v53;
          *(&v81[12] + 1) = v60;
          *&v81[13] = v14;
          BYTE8(v81[13]) = v54;
          BYTE9(v81[13]) = v59;
          BYTE10(v81[13]) = v15;
          *&v81[14] = v47;
          *(&v81[14] + 1) = v49;
          v81[15] = v16;
          LOBYTE(v81[16]) = v48;
          *(&v81[16] + 1) = v43;
          *&v81[17] = v45;
          *(&v81[17] + 8) = v58;
          BYTE8(v81[18]) = v44;
          *&v81[19] = v57;
          BYTE8(v81[19]) = v77;
          *&v81[20] = v38;
          *(&v81[20] + 1) = v42;
          *&v81[21] = v52;
          *(&v81[21] + 1) = v78;
          LOBYTE(v81[22]) = v39;
          BYTE1(v81[22]) = v37;
          memcpy(v79, v81, 0x162uLL);
          sub_21430C260(v81, &v82);
          __swift_destroy_boxed_opaque_existential_1(v180);
          v88 = v32;
          v90 = v74;
          v91 = v73;
          v93 = v72;
          v94 = v71;
          v96 = v70;
          v97 = v69;
          v99 = v68;
          v100 = v67;
          v102 = v66;
          v103 = v33;
          v86 = v179;
          v84 = v177;
          v85 = v178;
          v82 = v175;
          v83 = v176;
          v87 = v76;
          *v89 = *v174;
          *&v89[3] = *&v174[3];
          *v92 = *v173;
          *&v92[3] = *&v173[3];
          *v95 = *v172;
          *&v95[3] = *&v172[3];
          *v98 = *v171;
          *&v98[3] = *&v171[3];
          *&v101[3] = *&v170[3];
          *v101 = *v170;
          *&v104[3] = *&v169[3];
          *v104 = *v169;
          v105 = v63;
          v106 = v61;
          *&v107[3] = *&v168[3];
          *v107 = *v168;
          v108 = v55;
          v109 = v53;
          v110 = v60;
          v111 = v14;
          v112 = v54;
          v113 = v59;
          v114 = v15;
          v116 = v167;
          v115 = v166;
          v117 = v47;
          v118 = v49;
          v119 = v16;
          v120 = v48;
          *v121 = *v165;
          *&v121[3] = *&v165[3];
          v122 = v43;
          v123 = v45;
          v124 = v58;
          v125 = v44;
          *v126 = *v164;
          *&v126[3] = *&v164[3];
          v127 = v57;
          v128 = v77;
          *v129 = *v163;
          *&v129[3] = *&v163[3];
          v130 = v38;
          v131 = v42;
          v132 = v52;
          v24 = v78;
          goto LABEL_8;
        }

        sub_214031C4C();
        swift_allocError();
        *v34 = 0xD00000000000004CLL;
        v34[1] = 0x8000000214791870;
        v35 = v51;
        v34[2] = 0xD00000000000001CLL;
        v34[3] = v35;
        swift_willThrow();

        sub_213FB2DF4(&v152, &qword_27C90A020, &qword_2146F5BE0);
        (*(v80 + 8))(v62, v5);

        sub_213FDC6D0(v41, v40);
        v65 = v60;
        v56 = v14;
        v50 = v16;
        v46 = v58;
      }

      else
      {
        sub_214031C4C();
        swift_allocError();
        *v29 = 0xD000000000000038;
        v29[1] = 0x8000000214791830;
        v30 = v51;
        v29[2] = 0xD00000000000001CLL;
        v29[3] = v30;
        swift_willThrow();

        sub_213FB2DF4(&v152, &qword_27C90A020, &qword_2146F5BE0);
        (*(v80 + 8))(v62, v5);

        sub_213FDC6D0(v46, *(&v46 + 1));
        v65 = v60;
        v56 = v14;
        v50 = v16;
      }
    }

    else
    {
      sub_214031C4C();
      swift_allocError();
      *v26 = 0xD00000000000003FLL;
      v26[1] = 0x80000002147917F0;
      v27 = v51;
      v26[2] = 0xD00000000000001CLL;
      v26[3] = v27;
      swift_willThrow();

      sub_213FB2DF4(&v152, &qword_27C90A020, &qword_2146F5BE0);
      (*(v80 + 8))(v62, v5);

      sub_213FDC6D0(v50, *(&v50 + 1));
      v65 = v60;
      v56 = v14;
    }
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    v21 = v36;
    *v22 = 0xD000000000000035;
    v22[1] = v21;
    v23 = v51;
    v22[2] = 0xD00000000000001CLL;
    v22[3] = v23;
    swift_willThrow();

    sub_213FB2DF4(&v152, &qword_27C90A020, &qword_2146F5BE0);
    (*(v80 + 8))(v62, v5);

    sub_213FDC6D0(v65, v56);
  }

  __swift_destroy_boxed_opaque_existential_1(v180);
  v88 = v75;
  v90 = v74;
  v91 = v73;
  v93 = v72;
  v94 = v71;
  v96 = v70;
  v97 = v69;
  v99 = v68;
  v100 = v67;
  v102 = v66;
  v86 = v179;
  v84 = v177;
  v85 = v178;
  v82 = v175;
  v83 = v176;
  v87 = v76;
  *v89 = *v174;
  *&v89[3] = *&v174[3];
  *&v92[3] = *&v173[3];
  *v92 = *v173;
  *&v95[3] = *&v172[3];
  *v95 = *v172;
  *&v98[3] = *&v171[3];
  *v98 = *v171;
  *&v101[3] = *&v170[3];
  *v101 = *v170;
  v103 = v64;
  *&v104[3] = *&v169[3];
  *v104 = *v169;
  v105 = v63;
  v106 = v61;
  *&v107[3] = *&v168[3];
  *v107 = *v168;
  v108 = v55;
  v109 = v53;
  v110 = v65;
  v111 = v56;
  v112 = v54;
  v113 = v59;
  v114 = v15;
  v116 = v167;
  v115 = v166;
  v117 = v47;
  v118 = v49;
  v119 = v50;
  v120 = v48;
  *v121 = *v165;
  *&v121[3] = *&v165[3];
  v122 = v43;
  v123 = v45;
  v124 = v46;
  v125 = v44;
  *v126 = *v164;
  *&v126[3] = *&v164[3];
  v127 = v57;
  v128 = v77;
  *v129 = *v163;
  *&v129[3] = *&v163[3];
  v130 = v38;
  v131 = v42;
  v132 = v41;
  v24 = v40;
LABEL_8:
  v133 = v24;
  v134 = v39;
  v135 = v37;
  return sub_21430C1B8(&v82);
}