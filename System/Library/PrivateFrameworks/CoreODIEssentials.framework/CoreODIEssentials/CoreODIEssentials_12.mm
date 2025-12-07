uint64_t sub_1DB029614()
{
  v27 = *v0;
  v25 = v0[1];
  v26 = v0[2];
  v24 = v0[3];
  v1 = v0[5];
  v63 = v0[4];
  v2 = v0[6];
  v3 = v0[7];
  v4 = v0[9];
  v16 = v0[11];
  v17 = v0[10];
  v5 = v0[12];
  v6 = v0[13];
  v7 = v0[14];
  v28 = v0[8];
  v29 = v0[15];
  v19 = v0[16];
  v18 = v0[17];
  v20 = v0[20];
  v21 = v0[19];
  v22 = v0[22];
  v23 = v0[21];

  sub_1DAF40674(v63, v1);
  sub_1DB042284(v2, v3, v28);
  sub_1DB042284(v4, v17, v16);
  sub_1DB042284(v5, v6, v7);
  sub_1DB042284(v29, v19, v18);
  *&v54 = v2;
  *(&v54 + 1) = v3;
  *&v55 = v28;
  *(&v55 + 1) = v4;
  *&v56 = v17;
  *(&v56 + 1) = v16;
  *&v57 = v5;
  *(&v57 + 1) = v6;
  *&v58 = v7;
  *(&v58 + 1) = v29;
  *&v59 = v19;
  *(&v59 + 1) = v18;
  v60 = sub_1DAF3F2B0(MEMORY[0x1E69E7CC0]);
  v34 = v58;
  v35 = v59;
  v36 = v60;
  v30 = v54;
  v31 = v55;
  v32 = v56;
  v33 = v57;
  type metadata accessor for ProfileSetObject.SingleValidatedConfigProvider();
  v8 = swift_allocObject();
  v9 = v63;
  sub_1DAF40674(v63, v1);
  sub_1DB0423AC(&v54, &v37);
  sub_1DAF40674(v21, v20);
  sub_1DAF40674(v23, v22);
  swift_defaultActor_initialize();
  sub_1DB04210C(v61);
  v10 = v61[7];
  *(v8 + 224) = v61[6];
  *(v8 + 240) = v10;
  *(v8 + 256) = v62;
  v11 = v61[3];
  *(v8 + 160) = v61[2];
  *(v8 + 176) = v11;
  v12 = v61[5];
  *(v8 + 192) = v61[4];
  *(v8 + 208) = v12;
  v13 = v61[1];
  *(v8 + 128) = v61[0];
  *(v8 + 144) = v13;
  *(v8 + 112) = v9;
  *(v8 + 120) = v1;
  *&v37 = v27;
  *(&v37 + 1) = v25;
  v38 = v26;
  v39 = v24;
  v40 = v9;
  v41 = v1;
  v46 = v34;
  v47 = v35;
  v42 = v30;
  v43 = v31;
  v44 = v32;
  v45 = v33;
  v48 = v36;
  v49 = v21;
  v50 = v20;
  v51 = v23;
  v52 = v22;
  v53 = v8;
  if (qword_1ECC0E0F8 != -1)
  {
    swift_once();
  }

  v30 = xmmword_1EE309FE8;
  v31 = *&byte_1EE309FF8;
  LOBYTE(v32) = byte_1EE30A008;
  v14 = sub_1DB03324C(&v37, &v30);
  sub_1DB0423E4(&v54);
  sub_1DB008688(&v37);
  return v14;
}

uint64_t sub_1DB0298C0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E5F0, &unk_1DB0B29A0);
  sub_1DB09CC94();
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1DB0B2CF0;
  sub_1DB09CC84();
  sub_1DB09CC84();
  sub_1DB09CC84();
  sub_1DB09CC84();
  sub_1DB09CC84();
  sub_1DB09CC84();
  sub_1DB09CC84();
  return v0;
}

uint64_t sub_1DB029A78()
{
  if (*v0)
  {
    return 0x4974736575716572;
  }

  else
  {
    return 0x61737265766E6F63;
  }
}

uint64_t sub_1DB029AC4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x61737265766E6F63 && a2 == 0xEE0064496E6F6974;
  if (v6 || (sub_1DB09E254() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x4974736575716572 && a2 == 0xE900000000000064)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1DB09E254();

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

uint64_t sub_1DB029BB0(uint64_t a1)
{
  v2 = sub_1DB0494EC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DB029BEC(uint64_t a1)
{
  v2 = sub_1DB0494EC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DB029C28()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1DB029C68(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0FAA8, &unk_1DB0B68C0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DB0494EC();
  sub_1DB09E434();
  v8[15] = 0;

  sub_1DB09E154();
  if (!v1)
  {

    v8[14] = 1;

    sub_1DB09E154();
  }

  (*(v4 + 8))(v6, v3);
}

void *sub_1DB029E1C(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0F9B8, &qword_1DB0B6830);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v13 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DB0494EC();
  sub_1DB09E414();
  if (v2)
  {
    type metadata accessor for RequestHeader();
    swift_deallocPartialClassInstance();
  }

  else
  {
    v15 = 0;
    v1[2] = sub_1DB09E084();
    v1[3] = v8;
    v14 = 1;
    v10 = sub_1DB09E084();
    v12 = v11;
    (*(v5 + 8))(v7, v4);
    v1[4] = v10;
    v1[5] = v12;
  }

  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v1;
}

uint64_t sub_1DB029FFC(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0FA00, &qword_1DB0B6850);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DB04966C();
  sub_1DB09E434();
  v8[15] = 0;
  sub_1DB09E104();
  if (v1)
  {
    return (*(v4 + 8))(v6, v3);
  }

  v8[14] = 1;
  sub_1DB09E154();
  v8[13] = 2;
  sub_1DB09E154();
  v8[12] = 3;
  sub_1DB09E154();
  v8[11] = 4;
  sub_1DB09E104();
  v8[10] = 5;
  sub_1DB09E104();
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_1DB02A264()
{
  v1 = *v0;
  v2 = 0x61737265766E6F63;
  v3 = 0x6F43737574617473;
  v4 = 0x7574617453627573;
  if (v1 != 4)
  {
    v4 = 0x654D737574617473;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x4974736575716572;
  if (v1 != 1)
  {
    v5 = 0x65736E6F70736572;
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

uint64_t sub_1DB02A354@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1DB04658C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1DB02A37C(uint64_t a1)
{
  v2 = sub_1DB04966C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DB02A3B8(uint64_t a1)
{
  v2 = sub_1DB04966C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

double sub_1DB02A3F4@<D0>(_OWORD *a1@<X8>, void *a2@<X0>)
{
  sub_1DB0467B4(a2, v8);
  if (!v2)
  {
    v5 = v8[3];
    a1[2] = v8[2];
    a1[3] = v5;
    v6 = v8[5];
    a1[4] = v8[4];
    a1[5] = v6;
    result = *v8;
    v7 = v8[1];
    *a1 = v8[0];
    a1[1] = v7;
  }

  return result;
}

uint64_t sub_1DB02A458(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x45656D69746E7572;
  }

  else
  {
    v3 = 0x65736E6F70736572;
  }

  if (v2)
  {
    v4 = 0xEE00726564616548;
  }

  else
  {
    v4 = 0xEC000000726F7272;
  }

  if (*a2)
  {
    v5 = 0x45656D69746E7572;
  }

  else
  {
    v5 = 0x65736E6F70736572;
  }

  if (*a2)
  {
    v6 = 0xEC000000726F7272;
  }

  else
  {
    v6 = 0xEE00726564616548;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1DB09E254();
  }

  return v8 & 1;
}

uint64_t sub_1DB02A514()
{
  sub_1DB09E3A4();
  sub_1DB09D794();

  return sub_1DB09E3E4();
}

uint64_t sub_1DB02A5AC(uint64_t a1)
{
  sub_1DB09D794();
}

uint64_t sub_1DB02A630()
{
  sub_1DB09E3A4();
  sub_1DB09D794();

  return sub_1DB09E3E4();
}

void sub_1DB02A6D0(uint64_t *a1@<X8>)
{
  v2 = 0x65736E6F70736572;
  if (*v1)
  {
    v2 = 0x45656D69746E7572;
  }

  v3 = 0xEE00726564616548;
  if (*v1)
  {
    v3 = 0xEC000000726F7272;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_1DB02A724()
{
  if (*v0)
  {
    return 0x45656D69746E7572;
  }

  else
  {
    return 0x65736E6F70736572;
  }
}

uint64_t sub_1DB02A780(uint64_t a1)
{
  v2 = sub_1DB049540();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DB02A7BC(uint64_t a1)
{
  v2 = sub_1DB049540();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

_OWORD *sub_1DB02A7F8(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0F9C8, &qword_1DB0B6838);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v16[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DB049540();
  sub_1DB09E414();
  if (v2)
  {
    type metadata accessor for GenericResponse();
    swift_deallocPartialClassInstance();
  }

  else
  {
    v24 = 0;
    sub_1DB049594();
    sub_1DB09E0C4();
    v9 = v20;
    v1[3] = v19;
    v1[4] = v9;
    v10 = v22;
    v1[5] = v21;
    v1[6] = v10;
    v11 = v18;
    v1[1] = v17;
    v1[2] = v11;
    v23 = 1;
    v13 = sub_1DB09E044();
    v15 = v14;
    (*(v6 + 8))(v8, v5);
    *(v3 + 14) = v13;
    *(v3 + 15) = v15;
  }

  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v3;
}

uint64_t sub_1DB02AA40()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1DB02AAD4(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0FA98, &qword_1DB0B68B8);
  v30 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v15[-v6];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DB049540();
  sub_1DB09E434();
  v8 = v3[3];
  v9 = v3[5];
  v27 = v3[4];
  v28 = v9;
  v10 = v3[5];
  v29 = v3[6];
  v11 = v3[1];
  v12 = v3[3];
  v25 = v3[2];
  v26 = v12;
  v13 = v3[1];
  v21 = v27;
  v22 = v10;
  v23 = v3[6];
  v24 = v13;
  v18 = v11;
  v19 = v25;
  v20 = v8;
  v17 = 0;
  sub_1DB0496C0(&v24, v16);
  sub_1DB049B40();
  sub_1DB09E194();
  v16[2] = v20;
  v16[3] = v21;
  v16[4] = v22;
  v16[5] = v23;
  v16[0] = v18;
  v16[1] = v19;
  sub_1DB0495E8(v16);
  if (!v2)
  {
    v15[15] = 1;
    sub_1DB09E104();
  }

  return (*(v30 + 8))(v7, v5);
}

uint64_t sub_1DB02AD54()
{
  sub_1DB09E3A4();
  sub_1DB09D794();
  return sub_1DB09E3E4();
}

uint64_t sub_1DB02ADD8()
{
  sub_1DB09E3A4();
  sub_1DB09D794();
  return sub_1DB09E3E4();
}

uint64_t sub_1DB02AE8C@<X0>(BOOL *a3@<X8>)
{
  v4 = sub_1DB09E004();

  *a3 = v4 != 0;
  return result;
}

uint64_t sub_1DB02AEE4(uint64_t a1)
{
  v2 = sub_1DB049AEC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DB02AF20(uint64_t a1)
{
  v2 = sub_1DB049AEC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void sub_1DB02AF5C(void *a1)
{
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  sub_1DB09DFA4();
  __break(1u);
}

uint64_t sub_1DB02AFBC(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0FA80, &qword_1DB0B68B0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v10 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DB049AEC();
  sub_1DB09E434();
  v10[1] = *(v2 + 16);
  type metadata accessor for RequestHeader();
  sub_1DB049B94(&qword_1ECC0FA90, v8, type metadata accessor for RequestHeader, &unk_1DB0B6268);
  sub_1DB09E194();
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_1DB02B13C()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1DB02B174@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 96))();
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_1DB02B1F4()
{
  v1 = 0x6449656369766564;
  if (*v0 != 1)
  {
    v1 = 0x6E49746E65696C63;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x7A69726F68747561;
  }
}

uint64_t sub_1DB02B260@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1DB046C50(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1DB02B288(uint64_t a1)
{
  v2 = sub_1DB049618();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DB02B2C4(uint64_t a1)
{
  v2 = sub_1DB049618();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DB02B300()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1DB02B348(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0FA78, &qword_1DB0B68A8);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DB049618();
  sub_1DB09E434();
  v8[15] = 0;

  sub_1DB09E154();
  if (v1)
  {
    (*(v4 + 8))(v6, v3);
  }

  else
  {

    v8[14] = 1;

    sub_1DB09E154();

    v8[13] = 2;

    sub_1DB09E154();
    (*(v4 + 8))(v6, v3);
  }
}

void *sub_1DB02B53C(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0F9E0, &qword_1DB0B6840);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v14 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DB049618();
  sub_1DB09E414();
  if (v2)
  {
    type metadata accessor for AppleCredentials();
    swift_deallocPartialClassInstance();
  }

  else
  {
    v17 = 0;
    v1[2] = sub_1DB09E084();
    v1[3] = v8;
    v16 = 1;
    v1[4] = sub_1DB09E084();
    v1[5] = v9;
    v15 = 2;
    v11 = sub_1DB09E084();
    v13 = v12;
    (*(v5 + 8))(v7, v4);
    v1[6] = v11;
    v1[7] = v13;
  }

  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v1;
}

uint64_t sub_1DB02B7AC@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X3>, uint64_t (*a4)(uint64_t)@<X5>, uint64_t *a5@<X8>)
{
  a2();
  v9 = swift_allocObject();
  result = a4(a1);
  if (!v5)
  {
    *a5 = v9;
  }

  return result;
}

uint64_t sub_1DB02B840()
{
  sub_1DB09E3A4();
  sub_1DB09D794();
  return sub_1DB09E3E4();
}

uint64_t sub_1DB02B8B4()
{
  sub_1DB09E3A4();
  sub_1DB09D794();
  return sub_1DB09E3E4();
}

uint64_t sub_1DB02B914@<X0>(BOOL *a3@<X8>)
{
  v4 = sub_1DB09E004();

  *a3 = v4 != 0;
  return result;
}

uint64_t sub_1DB02B9A0@<X0>(BOOL *a3@<X8>)
{
  v4 = sub_1DB09E004();

  *a3 = v4 != 0;
  return result;
}

uint64_t sub_1DB02B9F8(uint64_t a1)
{
  v2 = sub_1DB0499E4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DB02BA34(uint64_t a1)
{
  v2 = sub_1DB0499E4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void sub_1DB02BA70(void *a1)
{
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  sub_1DB09DFA4();
  __break(1u);
}

uint64_t sub_1DB02BAD0(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0FA50, &qword_1DB0B6898);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v9 - v6;
  if (!*(v1 + 24))
  {
    return sub_1DB02AFBC(a1);
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DB0499E4();
  sub_1DB09E434();
  v9[1] = *(v1 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0FA60, &qword_1DB0B68A0);
  sub_1DB049A38();
  sub_1DB09E194();
  result = (*(v5 + 8))(v7, v4);
  if (!v2)
  {
    return sub_1DB02AFBC(a1);
  }

  return result;
}

uint64_t sub_1DB02BC5C()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1DB02BC9C()
{
  if (*v0)
  {
    return 0xD000000000000012;
  }

  else
  {
    return 0x6E6F6973726576;
  }
}

uint64_t sub_1DB02BCDC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6E6F6973726576 && a2 == 0xE700000000000000;
  if (v6 || (sub_1DB09E254() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001DB0CABB0 == a2)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1DB09E254();

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

uint64_t sub_1DB02BDC0(uint64_t a1)
{
  v2 = sub_1DB041AE8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DB02BDFC(uint64_t a1)
{
  v2 = sub_1DB041AE8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DB02BEF0()
{
  if (*v0)
  {
    return 0x656D737365737361;
  }

  else
  {
    return 0x6E6F6973726576;
  }
}

uint64_t sub_1DB02BF38@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6E6F6973726576 && a2 == 0xE700000000000000;
  if (v6 || (sub_1DB09E254() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x656D737365737361 && a2 == 0xEF646975675F746ELL)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1DB09E254();

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

uint64_t sub_1DB02C01C(uint64_t a1)
{
  v2 = sub_1DB041B3C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DB02C058(uint64_t a1)
{
  v2 = sub_1DB041B3C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DB02C0D8(void *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void), uint64_t a5)
{
  v14 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v16 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v13 - v8;
  v10 = *(v5 + 16);
  v13[1] = *(v5 + 24);
  v13[2] = v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v14();
  sub_1DB09E434();
  v18 = 0;
  v11 = v15;
  sub_1DB09E154();
  if (!v11)
  {
    v17 = 1;
    sub_1DB09E154();
  }

  return (*(v16 + 8))(v9, v7);
}

uint64_t sub_1DB02C2B8@<X0>(void *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t (*a4)(void)@<X3>, uint64_t *a6@<X8>)
{
  v24 = a6;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v23 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v21 - v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  a4();
  sub_1DB09E414();
  if (v6)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  else
  {
    v12 = v23;
    v13 = v24;
    v26 = 0;
    v14 = sub_1DB09E084();
    v16 = v15;
    v22 = v14;
    v25 = 1;
    v18 = sub_1DB09E084();
    v20 = v19;
    (*(v12 + 8))(v11, v9);
    *v13 = v22;
    v13[1] = v16;
    v13[2] = v18;
    v13[3] = v20;

    __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }
}

uint64_t ProfileSetObjectInfo.profileSetObjectId.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t ProfileSetObjectInfo.profileBagSetId.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t ProfileSetObjectInfo.orderedProfileBagId.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t ProfileSetObjectInfo.assessmentConfigId.getter()
{
  v1 = *(v0 + 48);

  return v1;
}

uint64_t ProfileSetObjectInfo.orderedProfileBagName.getter()
{
  v1 = *(v0 + 64);

  return v1;
}

unint64_t sub_1DB02C5D8()
{
  v1 = *v0;
  v2 = 0x42656C69666F7270;
  v3 = 0xD000000000000013;
  v4 = 0xD000000000000012;
  if (v1 != 3)
  {
    v4 = 0xD000000000000015;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (!*v0)
  {
    v2 = 0xD000000000000012;
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

uint64_t sub_1DB02C690@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1DB046D78(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1DB02C6B8(uint64_t a1)
{
  v2 = sub_1DB041B90();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DB02C6F4(uint64_t a1)
{
  v2 = sub_1DB041B90();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ProfileSetObjectInfo.init(from:)@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0F580, &qword_1DB0B2D30);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v24 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DB041B90();
  sub_1DB09E414();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  LOBYTE(v36[0]) = 0;
  v9 = sub_1DB09E084();
  v30 = v10;
  LOBYTE(v36[0]) = 1;
  v11 = sub_1DB09E084();
  v29 = v12;
  v26 = v11;
  LOBYTE(v36[0]) = 2;
  v25 = sub_1DB09E084();
  v28 = v13;
  LOBYTE(v36[0]) = 3;
  v24 = sub_1DB09E084();
  v27 = v14;
  v37 = 4;
  v15 = sub_1DB09E084();
  v17 = v16;
  (*(v6 + 8))(v8, v5);
  *&v31 = v9;
  *(&v31 + 1) = v30;
  v18 = v29;
  *&v32 = v26;
  *(&v32 + 1) = v29;
  v19 = v28;
  *&v33 = v25;
  *(&v33 + 1) = v28;
  v20 = v27;
  *&v34 = v24;
  *(&v34 + 1) = v27;
  *&v35 = v15;
  *(&v35 + 1) = v17;
  v21 = v34;
  a2[2] = v33;
  a2[3] = v21;
  a2[4] = v35;
  v22 = v32;
  *a2 = v31;
  a2[1] = v22;
  sub_1DB041BE4(&v31, v36);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  v36[0] = v9;
  v36[1] = v30;
  v36[2] = v26;
  v36[3] = v18;
  v36[4] = v25;
  v36[5] = v19;
  v36[6] = v24;
  v36[7] = v20;
  v36[8] = v15;
  v36[9] = v17;
  return sub_1DB041C1C(v36);
}

unint64_t sub_1DB02CB7C(unsigned __int8 a1)
{
  if (a1 > 5u)
  {
    v6 = 0xD000000000000013;
    v7 = 0x6567416568636163;
    if (a1 != 10)
    {
      v7 = 0x6563697665447369;
    }

    if (a1 != 9)
    {
      v6 = v7;
    }

    v8 = 0xD00000000000002DLL;
    v9 = 0x42676E697373696DLL;
    if (a1 != 7)
    {
      v9 = 0xD000000000000011;
    }

    if (a1 != 6)
    {
      v8 = v9;
    }

    if (a1 <= 8u)
    {
      return v8;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 0x776F6C666B726F77;
    v2 = 0x6E65674172657375;
    v3 = 0xD000000000000022;
    if (a1 == 4)
    {
      v3 = 0xD000000000000011;
    }

    if (a1 != 3)
    {
      v2 = v3;
    }

    v4 = 0x49656C69666F7270;
    if (a1 != 1)
    {
      v4 = 0xD000000000000014;
    }

    if (a1)
    {
      v1 = v4;
    }

    if (a1 <= 2u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_1DB02CD30(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0FA38, &qword_1DB0B6880);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v19 - v5;
  v7 = *v1;
  v8 = *(v1 + 24);
  v33 = *(v1 + 16);
  v34 = v7;
  v9 = *(v1 + 80);
  v46 = *(v1 + 64);
  v47 = v9;
  v48 = *(v1 + 96);
  v10 = *(v1 + 48);
  v44 = *(v1 + 32);
  v45 = v10;
  v11 = *(v1 + 120);
  v31 = *(v1 + 112);
  v32 = v8;
  v12 = *(v1 + 136);
  v29 = *(v1 + 128);
  v30 = v11;
  v13 = *(v1 + 152);
  v27 = *(v1 + 144);
  v28 = v12;
  v26 = *(v1 + 160);
  v14 = *(v1 + 176);
  v24 = *(v1 + 168);
  v25 = v13;
  v15 = *(v1 + 184);
  v22 = v14;
  v23 = v15;
  v21 = *(v1 + 192);
  v20 = *(v1 + 200);
  v19[1] = *(v1 + 208);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DB049894();
  sub_1DB09E434();
  LOBYTE(v39) = 0;
  v16 = v49;
  sub_1DB09E154();
  if (v16)
  {
    return (*(v4 + 8))(v6, v3);
  }

  v49 = v4;
  LOBYTE(v39) = 1;
  sub_1DB09E104();
  v41 = v46;
  v42 = v47;
  v43 = v48;
  v39 = v44;
  v40 = v45;
  v38 = 2;
  sub_1DAF40A84(&v44, v37, &qword_1ECC0E8A0, &qword_1DB0A6650);
  sub_1DAF9C290();
  sub_1DB09E144();
  v37[2] = v41;
  v37[3] = v42;
  v37[4] = v43;
  v37[0] = v39;
  v37[1] = v40;
  sub_1DAF40AEC(v37, &qword_1ECC0E8A0, &qword_1DB0A6650);
  LOBYTE(v36) = 3;
  sub_1DB09E154();
  LOBYTE(v36) = 4;
  sub_1DB09E154();
  v36 = v27;
  v35 = 5;
  v34 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E880, &qword_1DB0A6640);
  sub_1DAF4AA8C(&qword_1EE300F28, &qword_1ECC0E880, &qword_1DB0A6640, &protocol conformance descriptor for EncryptedDataContainer<A>);
  sub_1DB09E144();
  LOBYTE(v36) = 6;
  sub_1DB09E134();
  v36 = v24;
  v35 = 7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E448, &qword_1DB0A3110);
  sub_1DAF673C8(&qword_1EE301938, MEMORY[0x1E69E6160], MEMORY[0x1E69E6300]);
  sub_1DB09E144();
  LOBYTE(v36) = 8;
  sub_1DB09E104();
  LOBYTE(v36) = v21;
  v35 = 9;
  sub_1DB04993C();
  sub_1DB09E144();
  LOBYTE(v36) = 10;
  sub_1DB09E184();
  LOBYTE(v36) = 11;
  v18 = v34;
  sub_1DB09E164();
  return (*(v49 + 8))(v6, v18);
}

uint64_t sub_1DB02D26C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0FA28, &qword_1DB0B6878);
  v5 = *(v88 - 8);
  MEMORY[0x1EEE9AC00](v88);
  v7 = &v27 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DB049894();
  sub_1DB09E414();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  LOBYTE(v55[0]) = 0;
  v38 = sub_1DB09E084();
  v40 = v8;
  LOBYTE(v55[0]) = 1;
  v9 = sub_1DB09E044();
  v39 = v10;
  v35 = v9;
  v75 = 2;
  sub_1DAF9C184();
  sub_1DB09E074();
  v84 = v77;
  v85 = v78;
  v86 = v79;
  v87 = v80;
  v83 = v76;
  LOBYTE(v55[0]) = 3;
  v34 = sub_1DB09E084();
  v37 = v11;
  LOBYTE(v55[0]) = 4;
  v33 = sub_1DB09E084();
  v36 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E880, &qword_1DB0A6640);
  LOBYTE(v41) = 5;
  sub_1DAF4AA8C(&qword_1ECC0E888, &qword_1ECC0E880, &qword_1DB0A6640, &protocol conformance descriptor for EncryptedDataContainer<A>);
  sub_1DB09E074();
  v32 = v55[0];
  LOBYTE(v55[0]) = 6;
  v31 = sub_1DB09E064();
  v82 = v13 & 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E448, &qword_1DB0A3110);
  LOBYTE(v41) = 7;
  sub_1DAF673C8(&qword_1EE301928, MEMORY[0x1E69E6190], MEMORY[0x1E69E6330]);
  sub_1DB09E074();
  v14 = v55[0];
  LOBYTE(v55[0]) = 8;
  *&v30 = sub_1DB09E044();
  *(&v30 + 1) = v15;
  LOBYTE(v41) = 9;
  sub_1DB0498E8();
  sub_1DB09E074();
  v29 = LOBYTE(v55[0]);
  LOBYTE(v55[0]) = 10;
  v28 = sub_1DB09E0B4();
  v74 = 11;
  v16 = sub_1DB09E094();
  (*(v5 + 8))(v7, v88);
  *&v41 = v38;
  *(&v41 + 1) = v40;
  *&v42 = v35;
  *(&v42 + 1) = v39;
  v45 = v85;
  v46 = v86;
  v47 = v87;
  v44 = v84;
  v43 = v83;
  *&v48 = v34;
  *(&v48 + 1) = v37;
  *&v49 = v33;
  *(&v49 + 1) = v36;
  *&v50 = v32;
  *(&v50 + 1) = v31;
  LODWORD(v88) = v82;
  LOBYTE(v51) = v82;
  v17 = v30;
  *(&v51 + 1) = v14;
  v52 = v30;
  LOBYTE(v53) = v29;
  *(&v53 + 1) = v28;
  v16 &= 1u;
  v54 = v16;
  *(a2 + 208) = v16;
  v18 = v44;
  *(a2 + 32) = v43;
  *(a2 + 48) = v18;
  v19 = v46;
  *(a2 + 64) = v45;
  *(a2 + 80) = v19;
  v20 = v42;
  *a2 = v41;
  *(a2 + 16) = v20;
  v21 = v53;
  v22 = v47;
  v23 = v48;
  v24 = v50;
  *(a2 + 128) = v49;
  *(a2 + 144) = v24;
  *(a2 + 96) = v22;
  *(a2 + 112) = v23;
  v25 = v51;
  *(a2 + 176) = v52;
  *(a2 + 192) = v21;
  *(a2 + 160) = v25;
  sub_1DAF8BDD0(&v41, v55);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  v55[0] = v38;
  v55[1] = v40;
  v55[2] = v35;
  v55[3] = v39;
  v58 = v85;
  v59 = v86;
  v60 = v87;
  v56 = v83;
  v57 = v84;
  v61 = v34;
  v62 = v37;
  v63 = v33;
  v64 = v36;
  v65 = v32;
  v66 = v31;
  v67 = v88;
  v68 = v14;
  v69 = v17;
  v70 = v29;
  *&v71[3] = *&v81[3];
  *v71 = *v81;
  v72 = v28;
  v73 = v16;
  return sub_1DAF8BE80(v55);
}

uint64_t sub_1DB02DAD8@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1DB046F3C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1DB02DB00(uint64_t a1)
{
  v2 = sub_1DB049894();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DB02DB3C(uint64_t a1)
{
  v2 = sub_1DB049894();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DB02DBA8(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0FA18, &qword_1DB0B6868);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v22 - v5;
  v7 = *v1;
  v8 = *(v1 + 2);
  v48 = *(v1 + 1);
  v49 = v8;
  v9 = *(v1 + 4);
  v50 = *(v1 + 3);
  v51 = v9;
  v10 = *(v1 + 5);
  v22 = *(v1 + 6);
  v23 = v10;
  v24 = v1[14];
  v25 = v7;
  v11 = *(v1 + 29);
  v58 = *(v1 + 27);
  v59 = v11;
  v12 = *(v1 + 33);
  v13 = *(v1 + 35);
  v60 = *(v1 + 31);
  v61 = v12;
  v14 = *(v1 + 21);
  v54 = *(v1 + 19);
  v55 = v14;
  v15 = *(v1 + 25);
  v56 = *(v1 + 23);
  v57 = v15;
  v16 = *(v1 + 17);
  v52 = *(v1 + 15);
  v53 = v16;
  v17 = *(v1 + 37);
  v18 = *(v1 + 39);
  v65 = *(v1 + 328);
  v63 = v17;
  v64 = v18;
  v62 = v13;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DB0496F8();
  sub_1DB09E434();
  LOBYTE(v29) = 0;
  v19 = v26;
  sub_1DB09E104();
  if (!v19)
  {
    v20 = v24;
    v44 = v48;
    v45 = v49;
    v46 = v50;
    v47 = v51;
    v67 = 1;
    sub_1DAF40A84(&v48, &v29, &qword_1ECC0E7A8, &unk_1DB0ABEB0);
    sub_1DB0497EC();
    sub_1DB09E144();
    v43[0] = v44;
    v43[1] = v45;
    v43[2] = v46;
    v43[3] = v47;
    sub_1DAF40AEC(v43, &qword_1ECC0E7A8, &unk_1DB0ABEB0);
    v29 = v23;
    v30 = v22;
    *&v31 = v20;
    LOBYTE(v27[0]) = 2;
    sub_1DAF9C544();
    sub_1DB09E144();
    v39 = v62;
    v40 = v63;
    v41 = v64;
    v42 = v65;
    v35 = v58;
    v36 = v59;
    v37 = v60;
    v38 = v61;
    v31 = v54;
    v32 = v55;
    v33 = v56;
    v34 = v57;
    v29 = v52;
    v30 = v53;
    v66 = 3;
    sub_1DAF40A84(&v52, v27, &qword_1ECC0FA20, &qword_1DB0B6870);
    sub_1DB049840();
    sub_1DB09E144();
    v27[10] = v39;
    v27[11] = v40;
    v27[12] = v41;
    v28 = v42;
    v27[6] = v35;
    v27[7] = v36;
    v27[8] = v37;
    v27[9] = v38;
    v27[2] = v31;
    v27[3] = v32;
    v27[4] = v33;
    v27[5] = v34;
    v27[0] = v29;
    v27[1] = v30;
    sub_1DAF40AEC(v27, &qword_1ECC0FA20, &qword_1DB0B6870);
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_1DB02DF74@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0FA08, &unk_1DB0B6858);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v20 - v7;
  v9 = a1[3];
  v92 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v9);
  sub_1DB0496F8();
  sub_1DB09E414();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(v92);
  }

  v27 = a2;
  LOBYTE(v29) = 0;
  v10 = sub_1DB09E044();
  v12 = v11;
  v24 = v10;
  v69 = 1;
  sub_1DAF8C3D4();
  sub_1DB09E074();
  v88 = v70;
  v89 = v71;
  v90 = v72;
  v91 = v73;
  LOBYTE(v28[0]) = 2;
  sub_1DAF9C3E0();
  sub_1DB09E074();
  v23 = v31;
  v21 = v30;
  v22 = *(&v31 + 1);
  v25 = v32;
  v26 = v29;
  v54 = 3;
  sub_1DB049760();
  sub_1DB09E074();
  (*(v6 + 8))(v8, v5);
  v84 = v65;
  v85 = v66;
  v86 = v67;
  v80 = v61;
  v81 = v62;
  v82 = v63;
  v83 = v64;
  v76 = v57;
  v77 = v58;
  v78 = v59;
  v79 = v60;
  v74 = v55;
  v75 = v56;
  v28[1] = v88;
  v28[2] = v89;
  v28[3] = v90;
  v28[4] = v91;
  *(&v28[18] + 8) = v66;
  *(&v28[19] + 8) = v67;
  *(&v28[16] + 8) = v64;
  *(&v28[17] + 8) = v65;
  *(&v28[8] + 8) = v56;
  *(&v28[7] + 8) = v55;
  v87 = v68;
  v13 = v23;
  v14 = v24;
  *&v28[0] = v24;
  *(&v28[0] + 1) = v12;
  v15 = v25;
  v16 = v26;
  v18 = v21;
  v17 = v22;
  *&v28[5] = v26;
  *(&v28[5] + 1) = v21;
  *&v28[6] = v23;
  *(&v28[6] + 1) = v22;
  *&v28[7] = v25;
  *(&v28[12] + 8) = v60;
  *(&v28[11] + 8) = v59;
  *(&v28[10] + 8) = v58;
  *(&v28[9] + 8) = v57;
  *(&v28[15] + 8) = v63;
  *(&v28[14] + 8) = v62;
  *(&v28[13] + 8) = v61;
  BYTE8(v28[20]) = v68;
  memcpy(v27, v28, 0x149uLL);
  sub_1DB0497B4(v28, &v29);
  __swift_destroy_boxed_opaque_existential_1Tm(v92);
  v29 = v14;
  v30 = v12;
  v31 = v88;
  v32 = v89;
  v33 = v90;
  v34 = v91;
  v35 = v16;
  v36 = v18;
  v37 = v13;
  v38 = v17;
  v39 = v15;
  v51 = v85;
  v52 = v86;
  v49 = v83;
  v50 = v84;
  v41 = v75;
  v40 = v74;
  v45 = v79;
  v44 = v78;
  v43 = v77;
  v42 = v76;
  v48 = v82;
  v47 = v81;
  v46 = v80;
  v53 = v87;
  return sub_1DAFB7FA0(&v29);
}

uint64_t sub_1DB02E438()
{
  v1 = 0x6F6C79615069646FLL;
  v2 = 0x666E49726F727265;
  if (*v0 != 2)
  {
    v2 = 0x6E6F697469646461;
  }

  if (*v0)
  {
    v1 = 0x7364656573;
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

uint64_t sub_1DB02E4C4@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1DB04731C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1DB02E4EC(uint64_t a1)
{
  v2 = sub_1DB0496F8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DB02E528(uint64_t a1)
{
  v2 = sub_1DB0496F8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

Swift::String_optional __swiftcall EmptyProfileIdentifiers.getProfileId()()
{
  v0 = 0;
  v1 = 0;
  result.value._object = v1;
  result.value._countAndFlagsBits = v0;
  return result;
}

Swift::String_optional __swiftcall EmptyProfileIdentifiers.getProfileSetId()()
{
  v0 = 0;
  v1 = 0;
  result.value._object = v1;
  result.value._countAndFlagsBits = v0;
  return result;
}

Swift::String_optional __swiftcall EmptyProfileIdentifiers.getProfileBagSetId()()
{
  v0 = 0;
  v1 = 0;
  result.value._object = v1;
  result.value._countAndFlagsBits = v0;
  return result;
}

Swift::String_optional __swiftcall EmptyProfileIdentifiers.getOrderedProfileBagId()()
{
  v0 = 0;
  v1 = 0;
  result.value._object = v1;
  result.value._countAndFlagsBits = v0;
  return result;
}

Swift::String_optional __swiftcall EmptyProfileIdentifiers.getAssessmentConfigId()()
{
  v0 = 0;
  v1 = 0;
  result.value._object = v1;
  result.value._countAndFlagsBits = v0;
  return result;
}

void __swiftcall EmptyProfileIdentifiers.getProfileSetObjectInfo()(CoreODIEssentials::ProfileSetObjectInfo_optional *__return_ptr retstr)
{
  retstr->value.assessmentConfigId = 0u;
  retstr->value.orderedProfileBagName = 0u;
  retstr->value.profileBagSetId = 0u;
  retstr->value.orderedProfileBagId = 0u;
  retstr->value.profileSetObjectId = 0u;
}

uint64_t sub_1DB02E5F0(uint64_t a1)
{
  v2 = sub_1DB041C4C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DB02E62C(uint64_t a1)
{
  v2 = sub_1DB041C4C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t EmptyProfileIdentifiers.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0F588, &qword_1DB0B2D38);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DB041C4C();
  sub_1DB09E434();
  return (*(v3 + 8))(v5, v2);
}

double sub_1DB02E7A4@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  a1[3] = 0u;
  a1[4] = 0u;
  a1[1] = 0u;
  a1[2] = 0u;
  *a1 = 0u;
  return result;
}

uint64_t sub_1DB02E7E0(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0F588, &qword_1DB0B2D38);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DB041C4C();
  sub_1DB09E434();
  return (*(v3 + 8))(v5, v2);
}

uint64_t LegacyAugmentedProfileIdentifiers.profileId.getter()
{
  v1 = *v0;

  return v1;
}

Swift::String_optional __swiftcall LegacyAugmentedProfileIdentifiers.getProfileId()()
{
  v1 = *v0;
  v2 = v0[1];

  v3 = v1;
  v4 = v2;
  result.value._object = v4;
  result.value._countAndFlagsBits = v3;
  return result;
}

Swift::String_optional __swiftcall LegacyAugmentedProfileIdentifiers.getProfileSetId()()
{
  v0 = 0;
  v1 = 0;
  result.value._object = v1;
  result.value._countAndFlagsBits = v0;
  return result;
}

Swift::String_optional __swiftcall LegacyAugmentedProfileIdentifiers.getProfileBagSetId()()
{
  v0 = 0;
  v1 = 0;
  result.value._object = v1;
  result.value._countAndFlagsBits = v0;
  return result;
}

Swift::String_optional __swiftcall LegacyAugmentedProfileIdentifiers.getOrderedProfileBagId()()
{
  v0 = 0;
  v1 = 0;
  result.value._object = v1;
  result.value._countAndFlagsBits = v0;
  return result;
}

Swift::String_optional __swiftcall LegacyAugmentedProfileIdentifiers.getAssessmentConfigId()()
{
  v0 = 0;
  v1 = 0;
  result.value._object = v1;
  result.value._countAndFlagsBits = v0;
  return result;
}

uint64_t sub_1DB02E9A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x49656C69666F7270 && a2 == 0xE900000000000064)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1DB09E254();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1DB02EA30(uint64_t a1)
{
  v2 = sub_1DB041CA0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DB02EA6C(uint64_t a1)
{
  v2 = sub_1DB041CA0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t LegacyAugmentedProfileIdentifiers.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0F598, &qword_1DB0B2D40);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DB041CA0();
  sub_1DB09E434();
  sub_1DB09E154();
  return (*(v3 + 8))(v5, v2);
}

uint64_t LegacyAugmentedProfileIdentifiers.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0F5A8, &qword_1DB0B2D48);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v13 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DB041CA0();
  sub_1DB09E414();
  if (!v2)
  {
    v9 = sub_1DB09E084();
    v11 = v10;
    (*(v6 + 8))(v8, v5);
    *a2 = v9;
    a2[1] = v11;
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

uint64_t sub_1DB02ED58()
{
  v1 = *v0;

  return v1;
}

void __swiftcall ProfileSetIdentifiers.init(profileSetId:profileBagSetId:orderedProfileBagId:assessmentConfigId:bagName:)(CoreODIEssentials::ProfileSetIdentifiers *__return_ptr retstr, Swift::String profileSetId, Swift::String profileBagSetId, Swift::String orderedProfileBagId, Swift::String assessmentConfigId, Swift::String bagName)
{
  retstr->profileSetId = profileSetId;
  retstr->profileBagSetId = profileBagSetId;
  retstr->orderedProfileBagId = orderedProfileBagId;
  retstr->assessmentConfigId = assessmentConfigId;
  retstr->bagName = bagName;
}

Swift::String_optional __swiftcall ProfileSetIdentifiers.getProfileId()()
{
  v0 = 0;
  v1 = 0;
  result.value._object = v1;
  result.value._countAndFlagsBits = v0;
  return result;
}

Swift::String_optional __swiftcall ProfileSetIdentifiers.getProfileSetId()()
{
  v1 = *v0;
  v2 = v0[1];

  v3 = v1;
  v4 = v2;
  result.value._object = v4;
  result.value._countAndFlagsBits = v3;
  return result;
}

Swift::String_optional __swiftcall ProfileSetIdentifiers.getProfileBagSetId()()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  v3 = v1;
  v4 = v2;
  result.value._object = v4;
  result.value._countAndFlagsBits = v3;
  return result;
}

Swift::String_optional __swiftcall ProfileSetIdentifiers.getOrderedProfileBagId()()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  v3 = v1;
  v4 = v2;
  result.value._object = v4;
  result.value._countAndFlagsBits = v3;
  return result;
}

Swift::String_optional __swiftcall ProfileSetIdentifiers.getAssessmentConfigId()()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);

  v3 = v1;
  v4 = v2;
  result.value._object = v4;
  result.value._countAndFlagsBits = v3;
  return result;
}

void __swiftcall ProfileSetIdentifiers.getProfileSetObjectInfo()(CoreODIEssentials::ProfileSetObjectInfo_optional *__return_ptr retstr)
{
  v3 = *v1;
  v2 = v1[1];
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = v1[9];
  retstr->value.profileSetObjectId._countAndFlagsBits = v3;
  retstr->value.profileSetObjectId._object = v2;
  retstr->value.profileBagSetId._countAndFlagsBits = v4;
  retstr->value.profileBagSetId._object = v5;
  retstr->value.orderedProfileBagId._countAndFlagsBits = v6;
  retstr->value.orderedProfileBagId._object = v7;
  retstr->value.assessmentConfigId._countAndFlagsBits = v8;
  retstr->value.assessmentConfigId._object = v9;
  retstr->value.orderedProfileBagName._countAndFlagsBits = v10;
  retstr->value.orderedProfileBagName._object = v11;
}

unint64_t sub_1DB02EF48()
{
  v1 = *v0;
  v2 = 0x53656C69666F7270;
  v3 = 0xD000000000000013;
  v4 = 0xD000000000000012;
  if (v1 != 3)
  {
    v4 = 0x656D614E676162;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x42656C69666F7270;
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

uint64_t sub_1DB02F004@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1DB047494(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1DB02F02C(uint64_t a1)
{
  v2 = sub_1DB041CF4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DB02F068(uint64_t a1)
{
  v2 = sub_1DB041CF4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DB02F0E8(void *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void), uint64_t a5)
{
  v19 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v18 - v9;
  v11 = *v5;
  v12 = v5[3];
  v18[8] = v5[2];
  v18[9] = v11;
  v13 = v5[5];
  v18[6] = v5[4];
  v18[7] = v12;
  v14 = v5[7];
  v18[4] = v5[6];
  v18[5] = v13;
  v15 = v5[9];
  v18[2] = v5[8];
  v18[3] = v14;
  v18[1] = v15;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v19();
  sub_1DB09E434();
  v25 = 0;
  v16 = v20;
  sub_1DB09E154();
  if (v16)
  {
    return (*(v8 + 8))(v10, v7);
  }

  v24 = 1;
  sub_1DB09E154();
  v23 = 2;
  sub_1DB09E154();
  v22 = 3;
  sub_1DB09E154();
  v21 = 4;
  sub_1DB09E154();
  return (*(v8 + 8))(v10, v7);
}

uint64_t ProfileSetIdentifiers.init(from:)@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0F5C0, &qword_1DB0B2D58);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v24 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DB041CF4();
  sub_1DB09E414();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  LOBYTE(v36[0]) = 0;
  v9 = sub_1DB09E084();
  v30 = v10;
  LOBYTE(v36[0]) = 1;
  v11 = sub_1DB09E084();
  v29 = v12;
  v26 = v11;
  LOBYTE(v36[0]) = 2;
  v25 = sub_1DB09E084();
  v28 = v13;
  LOBYTE(v36[0]) = 3;
  v24 = sub_1DB09E084();
  v27 = v14;
  v37 = 4;
  v15 = sub_1DB09E084();
  v17 = v16;
  (*(v6 + 8))(v8, v5);
  *&v31 = v9;
  *(&v31 + 1) = v30;
  v18 = v29;
  *&v32 = v26;
  *(&v32 + 1) = v29;
  v19 = v28;
  *&v33 = v25;
  *(&v33 + 1) = v28;
  v20 = v27;
  *&v34 = v24;
  *(&v34 + 1) = v27;
  *&v35 = v15;
  *(&v35 + 1) = v17;
  v21 = v34;
  a2[2] = v33;
  a2[3] = v21;
  a2[4] = v35;
  v22 = v32;
  *a2 = v31;
  a2[1] = v22;
  sub_1DB041D48(&v31, v36);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  v36[0] = v9;
  v36[1] = v30;
  v36[2] = v26;
  v36[3] = v18;
  v36[4] = v25;
  v36[5] = v19;
  v36[6] = v24;
  v36[7] = v20;
  v36[8] = v15;
  v36[9] = v17;
  return sub_1DB041D80(v36);
}

unint64_t sub_1DB02F6CC(char a1)
{
  result = 0x617461645F617564;
  switch(a1)
  {
    case 1:
      return result;
    case 2:
      result = 0x7364656573;
      break;
    case 3:
      result = 0x776F6C666B726F77;
      break;
    case 4:
    case 7:
      result = 0x5F656C69666F7270;
      break;
    case 5:
      result = 0xD000000000000012;
      break;
    case 6:
      result = 0xD000000000000016;
      break;
    case 8:
      result = 0xD000000000000014;
      break;
    case 9:
      result = 0x726F727265;
      break;
    case 10:
      result = 0xD000000000000010;
      break;
    case 11:
      result = 0xD000000000000026;
      break;
    case 12:
      result = 0xD000000000000033;
      break;
    case 13:
      result = 0x5F64616F6C796170;
      break;
    default:
      result = 0xD000000000000012;
      break;
  }

  return result;
}

uint64_t sub_1DB02F878(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0FBC0, &qword_1DB0B7770);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v20 - v5;
  v7 = *(v1 + 24);
  v42 = *(v1 + 16);
  v41 = v7;
  v8 = *(v1 + 48);
  v53 = *(v1 + 32);
  v54 = v8;
  v9 = *(v1 + 80);
  v55 = *(v1 + 64);
  v56 = v9;
  v10 = *(v1 + 104);
  v40 = *(v1 + 96);
  v39 = v10;
  v11 = *(v1 + 120);
  v38 = *(v1 + 112);
  v37 = v11;
  v12 = *(v1 + 136);
  v35 = *(v1 + 128);
  v36 = v12;
  v13 = *(v1 + 152);
  v33 = *(v1 + 144);
  v34 = v13;
  v14 = *(v1 + 168);
  v31 = *(v1 + 160);
  v32 = v14;
  v15 = *(v1 + 184);
  v29 = *(v1 + 176);
  v30 = v15;
  v16 = *(v1 + 192);
  v27 = *(v1 + 208);
  v28 = v16;
  v26 = *(v1 + 224);
  v25 = *(v1 + 232);
  v17 = *(v1 + 248);
  v24 = *(v1 + 240);
  v22 = v17;
  v23 = *(v1 + 256);
  v20[1] = *(v1 + 264);
  v21 = *(v1 + 272);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DB04AF08();
  sub_1DB09E434();
  LOBYTE(v49) = 0;
  v18 = v57;
  sub_1DB09E154();
  if (v18)
  {
    return (*(v4 + 8))(v6, v3);
  }

  v57 = v4;
  LOBYTE(v49) = 1;
  sub_1DB09E104();
  v49 = v53;
  v50 = v54;
  v51 = v55;
  v52 = v56;
  v48 = 2;
  sub_1DAF40A84(&v53, v47, &qword_1ECC0E7A8, &unk_1DB0ABEB0);
  sub_1DB0497EC();
  sub_1DB09E144();
  v47[0] = v49;
  v47[1] = v50;
  v47[2] = v51;
  v47[3] = v52;
  sub_1DAF40AEC(v47, &qword_1ECC0E7A8, &unk_1DB0ABEB0);
  LOBYTE(v44) = 3;
  sub_1DB09E104();
  LOBYTE(v44) = 4;
  sub_1DB09E104();
  LOBYTE(v44) = 5;
  sub_1DB09E104();
  LOBYTE(v44) = 6;
  sub_1DB09E104();
  LOBYTE(v44) = 7;
  sub_1DB09E104();
  LOBYTE(v44) = 8;
  sub_1DB09E104();
  v45 = v27;
  v44 = v28;
  v46 = v26;
  v43 = 9;
  sub_1DAF9C544();
  sub_1DB09E144();
  LOBYTE(v44) = 10;
  sub_1DB09E114();
  *&v44 = v24;
  v43 = 11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E880, &qword_1DB0A6640);
  sub_1DAF4AA8C(&qword_1EE300F28, &qword_1ECC0E880, &qword_1DB0A6640, &protocol conformance descriptor for EncryptedDataContainer<A>);
  sub_1DB09E144();
  LOBYTE(v44) = 12;
  sub_1DB09E134();
  LOBYTE(v44) = 13;
  sub_1DB09E134();
  return (*(v57 + 8))(0, v3);
}

uint64_t sub_1DB02FEE4@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0FC08, &qword_1DB0B77A8);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v33 - v7;
  v9 = a1[3];
  v98 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v9);
  sub_1DB04AF08();
  sub_1DB09E414();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(v98);
  }

  v10 = v6;
  v56 = a2;
  LOBYTE(v58) = 0;
  v12 = sub_1DB09E084();
  v54 = v13;
  LOBYTE(v58) = 1;
  v14 = sub_1DB09E044();
  v53 = v15;
  v16 = v14;
  v88 = 2;
  sub_1DAF8C3D4();
  sub_1DB09E074();
  v94 = v89[0];
  v95 = v89[1];
  v96 = v89[2];
  v97 = v89[3];
  LOBYTE(v58) = 3;
  v46 = sub_1DB09E044();
  v52 = v17;
  LOBYTE(v58) = 4;
  v45 = sub_1DB09E044();
  v51 = v18;
  LOBYTE(v58) = 5;
  v44 = sub_1DB09E044();
  v50 = v19;
  LOBYTE(v58) = 6;
  v43 = sub_1DB09E044();
  v49 = v20;
  LOBYTE(v58) = 7;
  v42 = sub_1DB09E044();
  v48 = v21;
  LOBYTE(v58) = 8;
  v41 = sub_1DB09E044();
  v47 = v22;
  v55 = 0;
  v57[0] = 9;
  sub_1DAF9C3E0();
  v23 = v55;
  sub_1DB09E074();
  v55 = v23;
  if (v23)
  {
    (*(v10 + 8))(v8, v5);
    __swift_destroy_boxed_opaque_existential_1Tm(v98);

    v58 = v94;
    v59 = v95;
    v60 = v96;
    v61 = v97;
    sub_1DAF40AEC(&v58, &qword_1ECC0E7A8, &unk_1DB0ABEB0);
  }

  else
  {
    v39 = v58;
    v40 = v59;
    v38 = v60;
    LOBYTE(v58) = 10;
    v37 = sub_1DB09E054();
    v55 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E880, &qword_1DB0A6640);
    v57[0] = 11;
    sub_1DAF4AA8C(&qword_1ECC0E888, &qword_1ECC0E880, &qword_1DB0A6640, &protocol conformance descriptor for EncryptedDataContainer<A>);
    v24 = v55;
    sub_1DB09E074();
    v55 = v24;
    if (v24)
    {
      (*(v10 + 8))(v8, v5);
      __swift_destroy_boxed_opaque_existential_1Tm(v98);

      v58 = v94;
      v59 = v95;
      v60 = v96;
      v61 = v97;
      sub_1DAF40AEC(&v58, &qword_1ECC0E7A8, &unk_1DB0ABEB0);

      return sub_1DB04974C(v39, *(&v39 + 1), v40, *(&v40 + 1), v38);
    }

    else
    {
      v25 = v58;
      LOBYTE(v58) = 12;
      v36 = sub_1DB09E064();
      v55 = 0;
      v92 = v26 & 1;
      v87 = 13;
      v35 = sub_1DB09E064();
      v55 = 0;
      v28 = v27;
      (*(v10 + 8))(v8, v5);
      v90 = v28 & 1;
      v29 = v53;
      *v57 = v12;
      *&v57[8] = v54;
      *&v57[16] = v16;
      *&v57[24] = v53;
      *&v57[32] = v94;
      *&v57[48] = v95;
      *&v57[64] = v96;
      *&v57[80] = v97;
      v30 = v51;
      v31 = v52;
      *&v57[96] = v46;
      *&v57[104] = v52;
      *&v57[112] = v45;
      *&v57[120] = v51;
      *&v57[128] = v44;
      *&v57[136] = v50;
      *&v57[144] = v43;
      *&v57[152] = v49;
      *&v57[160] = v42;
      *&v57[168] = v48;
      *&v57[176] = v41;
      *&v57[184] = v47;
      *&v57[192] = v39;
      *&v57[208] = v40;
      v32 = v38;
      *&v57[224] = v38;
      v57[232] = v37;
      *&v57[240] = v25;
      *&v57[248] = v36;
      v33 = v92;
      v57[256] = v92;
      *&v57[264] = v35;
      v34 = v90;
      v57[272] = v90;
      memcpy(v56, v57, 0x111uLL);
      sub_1DAFFCFE4(v57, &v58);
      __swift_destroy_boxed_opaque_existential_1Tm(v98);
      *&v58 = v12;
      *(&v58 + 1) = v54;
      *&v59 = v16;
      *(&v59 + 1) = v29;
      v60 = v94;
      v61 = v95;
      v62 = v96;
      v63 = v97;
      v64 = v46;
      v65 = v31;
      v66 = v45;
      v67 = v30;
      v68 = v44;
      v69 = v50;
      v70 = v43;
      v71 = v49;
      v72 = v42;
      v73 = v48;
      v74 = v41;
      v75 = v47;
      v76 = v39;
      v77 = v40;
      v78 = v32;
      v79 = v37;
      *&v80[3] = *&v93[3];
      *v80 = *v93;
      v81 = v25;
      v82 = v36;
      v83 = v33;
      *v84 = *v91;
      *&v84[3] = *&v91[3];
      v85 = v35;
      v86 = v34;
      return sub_1DAFFD1F4(&v58);
    }
  }
}

uint64_t sub_1DB0308C4(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0FA48, &qword_1DB0B6890);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DB049990();
  sub_1DB09E434();
  v8[15] = 0;
  sub_1DB09E184();
  if (v1)
  {
    return (*(v4 + 8))(v6, v3);
  }

  v8[14] = 1;
  sub_1DB09E134();
  v8[13] = 2;
  sub_1DB09E104();
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_1DB030A68()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t sub_1DB030A98()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t sub_1DB030AC8()
{
  v1 = *(v0 + 48);

  return v1;
}

uint64_t sub_1DB030AF8@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  v2 = v1[1];
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = v1[9];
  *a1 = v3;
  a1[1] = v2;
  a1[2] = v4;
  a1[3] = v5;
  a1[4] = v6;
  a1[5] = v7;
  a1[6] = v8;
  a1[7] = v9;
  a1[8] = v10;
  a1[9] = v11;
}

uint64_t sub_1DB030BAC@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1DB047660(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1DB030BD4(uint64_t a1)
{
  v2 = sub_1DB04AF08();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DB030C10(uint64_t a1)
{
  v2 = sub_1DB04AF08();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DB030C7C()
{
  v1 = 0x6F7272655F6E646FLL;
  if (*v0 != 1)
  {
    v1 = 0x776F6C666B726F77;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6F7272655F766469;
  }
}

uint64_t sub_1DB030CE0@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1DB047AC8(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1DB030D08(uint64_t a1)
{
  v2 = sub_1DB049990();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DB030D44(uint64_t a1)
{
  v2 = sub_1DB049990();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

double sub_1DB030D80@<D0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_1DB047BF4(a2, v6);
  if (!v2)
  {
    result = *v6;
    v5 = v6[1];
    *a1 = v6[0];
    *(a1 + 16) = v5;
    *(a1 + 32) = v7;
  }

  return result;
}

uint64_t sub_1DB030E00@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x666F72705F617564 && a2 == 0xEB00000000656C69)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1DB09E254();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1DB030E8C(uint64_t a1)
{
  v2 = sub_1DB04B058();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DB030EC8(uint64_t a1)
{
  v2 = sub_1DB04B058();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DB030FA0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x656D697473 && a2 == 0xE500000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1DB09E254();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1DB031024(uint64_t a1)
{
  v2 = sub_1DB04B0AC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DB031060(uint64_t a1)
{
  v2 = sub_1DB04B0AC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DB0310E0@<X0>(void *a1@<X0>, uint64_t *a2@<X3>, uint64_t *a3@<X4>, uint64_t (*a4)(void)@<X5>, uint64_t *a6@<X8>)
{
  v20 = a6;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v19 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v18 - v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  a4();
  sub_1DB09E414();
  if (v6)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v12 = v19;
  v13 = v20;
  v14 = sub_1DB09E084();
  v16 = v15;
  (*(v12 + 8))(v11, v9);
  result = __swift_destroy_boxed_opaque_existential_1Tm(a1);
  *v13 = v14;
  v13[1] = v16;
  return result;
}

uint64_t sub_1DB0312AC(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, void (*a6)(void), uint64_t a7)
{
  v15 = a6;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v14 - v11;
  v14 = *v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v15();
  sub_1DB09E434();
  sub_1DB09E154();
  return (*(v10 + 8))(v12, v9);
}

uint64_t static TSID.== infix(_:_:)(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_1DB09E254();
  }
}

uint64_t sub_1DB031424()
{
  v1 = 0x5F6E6F6973736573;
  if (*v0 != 1)
  {
    v1 = 0x65636E6F6E5F7374;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1684632436;
  }
}

uint64_t sub_1DB03147C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1DB047DE4(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1DB0314A4(uint64_t a1)
{
  v2 = sub_1DB041DB0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DB0314E0(uint64_t a1)
{
  v2 = sub_1DB041DB0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t TSID.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0F5C8, &qword_1DB0B2D60);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v11 - v5;
  v7 = v1[2];
  v11[3] = v1[3];
  v11[4] = v7;
  v8 = v1[4];
  v11[1] = v1[5];
  v11[2] = v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DB041DB0();
  sub_1DB09E434();
  v14 = 0;
  v9 = v11[5];
  sub_1DB09E154();
  if (v9)
  {
    return (*(v4 + 8))(v6, v3);
  }

  v13 = 1;
  sub_1DB09E154();
  v12 = 2;
  sub_1DB09E104();
  return (*(v4 + 8))(v6, v3);
}

uint64_t TSID.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0F5D0, &qword_1DB0B2D68);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v19 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DB041DB0();
  sub_1DB09E414();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v25 = 0;
  v9 = sub_1DB09E084();
  v11 = v10;
  v22 = v9;
  v24 = 1;
  v20 = sub_1DB09E084();
  v21 = v12;
  v23 = 2;
  v13 = sub_1DB09E044();
  v15 = v14;
  v16 = v13;
  (*(v6 + 8))(v8, v5);
  v17 = v21;
  *a2 = v22;
  a2[1] = v11;
  a2[2] = v20;
  a2[3] = v17;
  a2[4] = v16;
  a2[5] = v15;

  __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

uint64_t sub_1DB031958(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[1] = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0FC60, &qword_1DB0B7E60);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v11 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DB04B968();
  sub_1DB09E434();
  v13 = 0;
  sub_1DB09E154();
  if (!v4)
  {
    v12 = 1;
    sub_1DB09E184();
  }

  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_1DB031B1C(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_1DB09E254();
  }
}

uint64_t sub_1DB031B4C()
{
  if (*v0)
  {
    return 0x695F747365676964;
  }

  else
  {
    return 0x64616F6C796170;
  }
}

uint64_t sub_1DB031B90@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x64616F6C796170 && a2 == 0xE700000000000000;
  if (v6 || (sub_1DB09E254() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x695F747365676964 && a2 == 0xEC0000007865646ELL)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1DB09E254();

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

uint64_t sub_1DB031C70(uint64_t a1)
{
  v2 = sub_1DB04B968();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DB031CAC(uint64_t a1)
{
  v2 = sub_1DB04B968();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DB031CE8@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_1DB047F04(a2);
  if (!v2)
  {
    *a1 = result;
    a1[1] = v5;
    a1[2] = v6;
  }

  return result;
}

CoreODIEssentials::DUATaskType_optional __swiftcall DUATaskType.init(rawValue:)(Swift::Int rawValue)
{
  if (rawValue == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (!rawValue)
  {
    v2 = 0;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t sub_1DB031D5C(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0FBE0, &qword_1DB0B7780);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v11 - v5;
  v7 = *(v1 + 24);
  v11[2] = *(v1 + 25);
  v12 = v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DB04AF5C();
  sub_1DB09E434();
  v18 = 0;
  v8 = v13;
  sub_1DB09E154();
  if (!v8)
  {
    v9 = v12;
    v17 = 1;
    sub_1DB09E174();
    v16 = v9;
    v15 = 2;
    sub_1DB04B004();
    sub_1DB09E194();
    v14 = 3;
    sub_1DB09E114();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_1DB031F80@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0FBD0, &qword_1DB0B7778);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v17 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DB04AF5C();
  sub_1DB09E414();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v22 = 0;
  v9 = sub_1DB09E084();
  v11 = v10;
  v12 = v9;
  v21 = 1;
  sub_1DB09E0A4();
  v14 = v13;
  v19 = 2;
  sub_1DB04AFB0();
  sub_1DB09E0C4();
  HIDWORD(v17) = v20;
  v18 = 3;
  v16 = sub_1DB09E054();
  (*(v6 + 8))(v8, v5);
  *a2 = v12;
  *(a2 + 8) = v11;
  *(a2 + 16) = v14;
  *(a2 + 24) = BYTE4(v17);
  *(a2 + 25) = v16;

  __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

unint64_t sub_1DB0322B0()
{
  v1 = 0x617461645F617564;
  v2 = 0x7079745F6B736174;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000010;
  }

  if (*v0)
  {
    v1 = 0x6E6F697461727564;
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

uint64_t sub_1DB032334@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1DB0480DC(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1DB03235C(uint64_t a1)
{
  v2 = sub_1DB04AF5C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DB032398(uint64_t a1)
{
  v2 = sub_1DB04AF5C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

unint64_t sub_1DB032404(char a1)
{
  result = 0x6E6F635F64697374;
  switch(a1)
  {
    case 1:
      result = 0x7364656573;
      break;
    case 2:
      result = 0xD000000000000017;
      break;
    case 3:
      result = 0x776F6C666B726F77;
      break;
    case 4:
      result = 0x617461645F617564;
      break;
    case 5:
      result = 0x6E6F6973726576;
      break;
    case 6:
      result = 0xD000000000000010;
      break;
    case 7:
      result = 0xD000000000000023;
      break;
    case 8:
      result = 0xD000000000000030;
      break;
    case 9:
      result = 0x726F727265;
      break;
    case 10:
    case 11:
      result = 0x6B63616264656566;
      break;
    case 12:
      result = 0xD000000000000010;
      break;
    case 13:
    case 15:
      result = 0xD000000000000012;
      break;
    case 14:
      result = 0xD000000000000018;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1DB0325E0(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0FBB8, &qword_1DB0B7768);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v29 - v5;
  v7 = v1[1];
  v49 = *v1;
  v8 = v1[2];
  v9 = *(v1 + 5);
  v65 = *(v1 + 3);
  v66 = v9;
  v10 = *(v1 + 9);
  v67 = *(v1 + 7);
  v68 = v10;
  v11 = *(v1 + 13);
  v12 = *(v1 + 17);
  v71 = *(v1 + 15);
  v72 = v12;
  v73 = *(v1 + 19);
  v69 = *(v1 + 11);
  v70 = v11;
  v13 = v1[21];
  v47 = v1[22];
  v48 = v13;
  v14 = v1[24];
  v45 = v1[23];
  v46 = v14;
  v44 = v1[25];
  v74 = *(v1 + 208);
  v15 = v1[28];
  v43 = v1[27];
  v41 = v15;
  v42 = *(v1 + 232);
  v16 = *(v1 + 15);
  v39 = *(v1 + 16);
  v40 = v16;
  v17 = v1[35];
  v38 = v1[34];
  v37 = *(v1 + 288);
  v18 = v1[37];
  v35 = v1[38];
  v36 = v17;
  v19 = v1[40];
  v33 = v1[39];
  v34 = v18;
  v31 = v19;
  v32 = *(v1 + 328);
  v20 = v1[42];
  v30 = *(v1 + 344);
  v21 = v1[45];
  v29[0] = v1[44];
  v29[1] = v21;
  v29[2] = v20;
  v22 = a1[3];
  v23 = a1;
  v25 = v24;
  __swift_project_boxed_opaque_existential_1(v23, v22);
  sub_1DB04AD88();

  sub_1DB09E434();
  *&v55 = v49;
  *(&v55 + 1) = v7;
  *&v56 = v8;
  LOBYTE(v54[0]) = 0;
  sub_1DB04ADDC();
  v26 = v50;
  sub_1DB09E194();
  if (v26)
  {

    return (*(v4 + 8))(v6, v25);
  }

  else
  {
    v50 = v4;

    v61 = v65;
    v62 = v66;
    v63 = v67;
    v64 = v68;
    v77 = 1;
    sub_1DAF40A84(&v65, &v55, &qword_1ECC0E7A8, &unk_1DB0ABEB0);
    sub_1DB0497EC();
    sub_1DB09E144();
    v60[0] = v61;
    v60[1] = v62;
    v60[2] = v63;
    v60[3] = v64;
    sub_1DAF40AEC(v60, &qword_1ECC0E7A8, &unk_1DB0ABEB0);
    v57 = v71;
    v58 = v72;
    v59 = v73;
    v55 = v69;
    v56 = v70;
    v76 = 2;
    sub_1DAF40A84(&v69, v54, &qword_1ECC0E8A0, &qword_1DB0A6650);
    sub_1DAF9C290();
    sub_1DB09E144();
    v54[2] = v57;
    v54[3] = v58;
    v54[4] = v59;
    v54[0] = v55;
    v54[1] = v56;
    sub_1DAF40AEC(v54, &qword_1ECC0E8A0, &qword_1DB0A6650);
    LOBYTE(v51) = 3;
    sub_1DB09E104();
    LOBYTE(v51) = 4;
    sub_1DB09E154();
    LOBYTE(v51) = 5;
    sub_1DB09E184();
    LOBYTE(v51) = 6;
    sub_1DB09E114();
    *&v51 = v43;
    v75 = 7;
    v49 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0F018, &unk_1DB0AFAA0);
    sub_1DAF4AA8C(&qword_1EE300F18, &qword_1ECC0F018, &unk_1DB0AFAA0, &protocol conformance descriptor for EncryptedDataContainer<A>);
    sub_1DB09E144();
    LOBYTE(v51) = 8;
    sub_1DB09E134();
    v52 = v39;
    v51 = v40;
    v53 = v38;
    v75 = 9;
    sub_1DAF9C544();
    sub_1DB09E144();
    LOBYTE(v51) = 10;
    sub_1DB09E124();
    LOBYTE(v51) = 11;
    sub_1DB09E104();
    *&v51 = v33;
    v75 = 12;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0F358, &qword_1DB0AFAC8);
    sub_1DB04AE30();
    sub_1DB09E194();
    LOBYTE(v51) = 13;
    sub_1DB09E124();
    LOBYTE(v51) = 14;
    sub_1DB09E124();
    LOBYTE(v51) = 15;
    v28 = v49;
    sub_1DB09E104();
    return (*(v50 + 8))(v28, v25);
  }
}

uint64_t sub_1DB032CB8@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1DB048250(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1DB032CE0(uint64_t a1)
{
  v2 = sub_1DB04AD88();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DB032D1C(uint64_t a1)
{
  v2 = sub_1DB04AD88();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void *ProfileSetObject.profileIdentifiers(for:)@<X0>(unsigned __int8 *a1@<X0>, void *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0F5D8, &qword_1DB0B2D70);
  v5 = MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v30 - v8;
  LODWORD(a1) = *a1;
  v11 = *v2;
  v12 = v2[1];
  v13 = v2[3];
  v33 = v2[2];
  v31 = v11;
  v32 = v13;
  v14 = v2[21];
  v15 = v2[22];
  if (a1 > 1)
  {
    if (a1 == 2)
    {
      if (v2[14])
      {
        v16 = v2[12];
        v17 = v2[13];
        goto LABEL_12;
      }
    }

    else if (v2[17])
    {
      v16 = v2[15];
      v17 = v2[16];
      goto LABEL_12;
    }
  }

  else if (a1)
  {
    if (v2[11])
    {
      v16 = v2[9];
      v17 = v2[10];
      goto LABEL_12;
    }
  }

  else if (v2[8])
  {
    v16 = v2[6];
    v17 = v2[7];
LABEL_12:
    sub_1DAF40674(v16, v17);
    goto LABEL_14;
  }

  v16 = 0;
  v17 = 0xF000000000000000;
LABEL_14:
  a1 = a1;
  v30 = v12;

  Data.uuid.getter(v14, v15, v9);
  sub_1DAF40A84(v9, v7, &qword_1ECC0F5D8, &qword_1DB0B2D70);
  v18 = sub_1DB09D1D4();
  v19 = *(v18 - 8);
  if ((*(v19 + 48))(v7, 1, v18) == 1)
  {
    sub_1DAF40AEC(v7, &qword_1ECC0F5D8, &qword_1DB0B2D70);
    v20 = 0xEC0000002D64692DLL;
    v21 = 0x676E697373696D2DLL;
  }

  else
  {
    sub_1DB09D174();
    (*(v19 + 8))(v7, v18);
    v21 = sub_1DB09D754();
    v20 = v22;
  }

  sub_1DAF40AEC(v9, &qword_1ECC0F5D8, &qword_1DB0B2D70);
  v23 = sub_1DB041EF4(v16);
  v25 = v24;
  v26 = qword_1DB0B7F80[a1];
  v27 = v32;

  sub_1DAF4AC40(v16, v17);
  a2[3] = &type metadata for ProfileSetIdentifiers;
  a2[4] = sub_1DAFEA5B4();
  result = swift_allocObject();
  *a2 = result;
  v29 = v30;
  result[2] = v31;
  result[3] = v29;
  result[4] = v21;
  result[5] = v20;
  result[6] = v23;
  result[7] = v25;
  result[8] = v33;
  result[9] = v27;
  result[10] = v26;
  result[11] = 0xE300000000000000;
  return result;
}

uint64_t ProfileSetObject.ProfileBagSet.ProfileBag.updateFileIDs(fileIdMapping:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = v2;
  v6 = *v3;
  v7 = v3[1];
  v8 = v3[2];
  v9 = *(v8 + 16);
  result = sub_1DAF40674(*v3, v7);
  if (v9)
  {
    v11 = 0;
    v12 = v8 + 40;
    v13 = MEMORY[0x1E69E7CC0];
    v28 = v7;
    v29 = v6;
    while (1)
    {
      v14 = v9 - v11;
      v15 = (v12 + 16 * v11);
      while (1)
      {
        if (v11 >= *(v8 + 16))
        {
          __break(1u);
          return result;
        }

        if (*(a1 + 16))
        {
          break;
        }

LABEL_4:
        v15 += 2;
        ++v11;
        if (!--v14)
        {
          v7 = v28;
          v6 = v29;
          goto LABEL_18;
        }
      }

      v16 = *(v15 - 1);
      v17 = *v15;
      sub_1DAF40674(v16, *v15);
      v18 = sub_1DAF354E0(v16, v17);
      if ((v19 & 1) == 0)
      {
        break;
      }

      v20 = (*(a1 + 56) + 16 * v18);
      v21 = *v20;
      v27 = v20[1];
      sub_1DAF40674(*v20, v27);
      sub_1DAF40780(v16, v17);
      result = swift_isUniquelyReferenced_nonNull_native();
      v22 = v21;
      if ((result & 1) == 0)
      {
        result = sub_1DAF735C8(0, *(v13 + 16) + 1, 1, v13);
        v13 = result;
      }

      v24 = *(v13 + 16);
      v23 = *(v13 + 24);
      if (v24 >= v23 >> 1)
      {
        result = sub_1DAF735C8((v23 > 1), v24 + 1, 1, v13);
        v13 = result;
      }

      ++v11;
      *(v13 + 16) = v24 + 1;
      v25 = v13 + 16 * v24;
      *(v25 + 32) = v22;
      *(v25 + 40) = v27;
      v26 = v14 == 1;
      v7 = v28;
      v6 = v29;
      v12 = v8 + 40;
      if (v26)
      {
        goto LABEL_18;
      }
    }

    result = sub_1DAF40780(v16, v17);
    goto LABEL_4;
  }

  v13 = MEMORY[0x1E69E7CC0];
LABEL_18:
  *a2 = v6;
  a2[1] = v7;
  a2[2] = v13;
  return result;
}

__n128 ProfileSetObject.ProfileBagSet.init(criticalPath:pregeneratedAssessment:populateCache:fallbackAssessment:files:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, __n128 *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v6 = *(a1 + 16);
  v7 = *(a2 + 16);
  v8 = *(a3 + 16);
  v9 = a4[1].n128_u64[0];
  *a6 = *a1;
  *(a6 + 16) = v6;
  *(a6 + 24) = *a2;
  *(a6 + 40) = v7;
  *(a6 + 48) = *a3;
  *(a6 + 64) = v8;
  result = *a4;
  *(a6 + 72) = *a4;
  *(a6 + 88) = v9;
  *(a6 + 96) = a5;
  return result;
}

uint64_t sub_1DB03324C(__int128 *a1, uint64_t a2)
{
  v4 = type metadata accessor for ODISignpost(0);
  v5 = MEMORY[0x1EEE9AC00](v4);
  v7 = &v27[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v8 = MEMORY[0x1EEE9AC00](v5);
  v10 = &v27[-v9 - 8];
  v11 = a1[9];
  v36 = a1[8];
  v37 = v11;
  v12 = a1[11];
  v38 = a1[10];
  v39 = v12;
  v13 = a1[5];
  v32 = a1[4];
  v33 = v13;
  v14 = a1[7];
  v34 = a1[6];
  v35 = v14;
  v15 = a1[1];
  v28 = *a1;
  v29 = v15;
  v16 = a1[3];
  v30 = a1[2];
  v31 = v16;
  *(v7 + 4) = "enableTelemetry=YES";
  *(v7 + 5) = 19;
  v7[48] = 2;
  v17 = *a2;
  v18 = *(a2 + 8);
  v19 = *(a2 + 16);
  *v7 = *a2;
  *(v7 + 1) = v18;
  v7[16] = v19;
  v20 = *(a2 + 24);
  *(v7 + 3) = v20;
  v40 = v8;
  v21 = *(v8 + 28);
  sub_1DAFA7110(a2, v27);
  v22 = v20;
  sub_1DB09D474();
  LOBYTE(a2) = *(a2 + 32);
  v23 = sub_1DB09DC14();
  if (a2)
  {
    sub_1DB09D454(v23, &dword_1DAF16000, v22, v17, v18, v19, &v7[v21], "enableTelemetry=YES", 19, 2, MEMORY[0x1E69E7CC0]);
  }

  else
  {
    sub_1DB09D464();
  }

  sub_1DAF5F604(v7, v10);
  sub_1DB09D404();
  swift_allocObject();
  sub_1DB09D3F4();
  sub_1DB043BC8();
  v24 = sub_1DB09D3E4();

  sub_1DB09DC04();
  sub_1DB09D464();
  sub_1DAF60868(v10);
  return v24;
}

uint64_t ProfileSetObject.resolvedProfileInfo.getter()
{
  v1 = *(v0 + 152);
  sub_1DAF40674(v1, *(v0 + 160));
  return v1;
}

__n128 ProfileSetObject.config.getter@<Q0>(__n128 *a1@<X8>)
{
  sub_1DB0954E0(*(v1 + 32), *(v1 + 40), v16);
  v13 = v16[6];
  v14 = v16[7];
  v15 = v17;
  v9 = v16[2];
  v10 = v16[3];
  v11 = v16[4];
  v12 = v16[5];
  v7 = v16[0];
  v8 = v16[1];
  nullsub_3();
  v3 = v14;
  a1[6] = v13;
  a1[7] = v3;
  a1[8].n128_u8[0] = v15;
  v4 = v10;
  a1[2] = v9;
  a1[3] = v4;
  v5 = v12;
  a1[4] = v11;
  a1[5] = v5;
  result = v8;
  *a1 = v7;
  a1[1] = result;
  return result;
}

uint64_t ProfileSetObject.ProfileBagSet.ProfileBag.id.getter()
{
  v1 = *v0;
  sub_1DAF40674(*v0, *(v0 + 8));
  return v1;
}

uint64_t sub_1DB0335F0@<X0>(char *a4@<X8>)
{
  v5 = sub_1DB09E004();

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *a4 = v7;
  return result;
}

uint64_t ProfileSetObject.ProfileBagSet.ProfileBag.CodingKeys.stringValue.getter()
{
  if (*v0)
  {
    return 0xD000000000000010;
  }

  else
  {
    return 25705;
  }
}

uint64_t sub_1DB03369C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0xD000000000000010;
  }

  else
  {
    v3 = 25705;
  }

  if (v2)
  {
    v4 = 0xE200000000000000;
  }

  else
  {
    v4 = 0x80000001DB0C1ED0;
  }

  if (*a2)
  {
    v5 = 0xD000000000000010;
  }

  else
  {
    v5 = 25705;
  }

  if (*a2)
  {
    v6 = 0x80000001DB0C1ED0;
  }

  else
  {
    v6 = 0xE200000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1DB09E254();
  }

  return v8 & 1;
}

uint64_t sub_1DB03373C()
{
  sub_1DB09E3A4();
  sub_1DB09D794();

  return sub_1DB09E3E4();
}

uint64_t sub_1DB0337B8(uint64_t a1)
{
  sub_1DB09D794();
}

uint64_t sub_1DB033820()
{
  sub_1DB09E3A4();
  sub_1DB09D794();

  return sub_1DB09E3E4();
}

uint64_t sub_1DB0338A4@<X0>(char *a3@<X8>)
{
  v4 = sub_1DB09E004();

  if (v4 == 1)
  {
    v6 = 1;
  }

  else
  {
    v6 = 2;
  }

  if (!v4)
  {
    v6 = 0;
  }

  *a3 = v6;
  return result;
}

void sub_1DB033900(unint64_t *a1@<X8>)
{
  v2 = 0x80000001DB0C1ED0;
  v3 = 25705;
  if (*v1)
  {
    v3 = 0xD000000000000010;
  }

  else
  {
    v2 = 0xE200000000000000;
  }

  *a1 = v3;
  a1[1] = v2;
}

uint64_t sub_1DB033938()
{
  if (*v0)
  {
    return 0xD000000000000010;
  }

  else
  {
    return 25705;
  }
}

uint64_t sub_1DB033978@<X0>(char *a4@<X8>)
{
  v5 = sub_1DB09E004();

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *a4 = v7;
  return result;
}

uint64_t sub_1DB0339D8(uint64_t a1)
{
  v2 = sub_1DB042128();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DB033A14(uint64_t a1)
{
  v2 = sub_1DB042128();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ProfileSetObject.ProfileBagSet.ProfileBag.init(id:profileIDs:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = result;
  a4[1] = a2;
  a4[2] = a3;
  return result;
}

uint64_t ProfileSetObject.ProfileBagSet.ProfileBag.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0F5E0, &qword_1DB0B2D78);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v13 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DB042128();
  sub_1DB09E414();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v14 = 0;
  sub_1DAFEA408();
  sub_1DB09E0C4();
  v10 = v13[0];
  v9 = v13[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0F5F0, &qword_1DB0B2D80);
  v14 = 1;
  sub_1DB04217C();
  sub_1DB09E0C4();
  (*(v6 + 8))(v8, v5);
  v11 = v13[0];
  *a2 = v10;
  a2[1] = v9;
  a2[2] = v11;
  sub_1DAF40674(v10, v9);

  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  sub_1DAF40780(v10, v9);
}

uint64_t ProfileSetObject.ProfileBagSet.ProfileBag.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0F600, &qword_1DB0B2D88);
  v11 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v10 - v5;
  v7 = *v1;
  v8 = v1[1];
  v10 = v1[2];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DAF40674(v7, v8);
  sub_1DB042128();
  sub_1DB09E434();
  v12 = v7;
  v13 = v8;
  v14 = 0;
  sub_1DAFEA608();
  sub_1DB09E194();
  sub_1DAF40780(v12, v13);
  if (!v2)
  {
    v12 = v10;
    v14 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0F5F0, &qword_1DB0B2D80);
    sub_1DB042200();
    sub_1DB09E194();
  }

  return (*(v11 + 8))(v6, v4);
}

CoreODIEssentials::ProfileSetObject::ProfileBagSet::CodingKeys_optional __swiftcall ProfileSetObject.ProfileBagSet.CodingKeys.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1DB09E004();

  v5 = 5;
  if (v3 < 5)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

CoreODIEssentials::ProfileSetObject::ProfileBagSet::CodingKeys_optional __swiftcall ProfileSetObject.ProfileBagSet.CodingKeys.init(stringValue:)(Swift::String stringValue)
{
  v2 = v1;
  result.value = ProfileSetObject.ProfileBagSet.CodingKeys.init(rawValue:)(stringValue).value;
  *v2 = v4;
  return result;
}

uint64_t ProfileSetObject.ProfileBagSet.CodingKeys.stringValue.getter()
{
  v1 = *v0;
  v2 = 6382448;
  v3 = 0x73656C6966;
  if (v1 == 3)
  {
    v3 = 6382182;
  }

  if (v1 != 2)
  {
    v2 = v3;
  }

  v4 = 6383472;
  if (!*v0)
  {
    v4 = 6385763;
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

uint64_t sub_1DB033FB0()
{
  sub_1DB09E3A4();
  sub_1DB09D794();

  return sub_1DB09E3E4();
}

uint64_t sub_1DB034064(uint64_t a1)
{
  sub_1DB09D794();
}

uint64_t sub_1DB034104()
{
  sub_1DB09E3A4();
  sub_1DB09D794();

  return sub_1DB09E3E4();
}

void sub_1DB0341C0(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 6382448;
  v4 = 0xE300000000000000;
  v5 = 0xE300000000000000;
  v6 = 0x73656C6966;
  if (v2 == 3)
  {
    v6 = 6382182;
  }

  else
  {
    v5 = 0xE500000000000000;
  }

  if (v2 != 2)
  {
    v3 = v6;
    v4 = v5;
  }

  v7 = 6383472;
  if (!*v1)
  {
    v7 = 6385763;
  }

  if (*v1 <= 1u)
  {
    v8 = 0xE300000000000000;
  }

  else
  {
    v7 = v3;
    v8 = v4;
  }

  *a1 = v7;
  a1[1] = v8;
}

uint64_t sub_1DB034230()
{
  v1 = *v0;
  v2 = 6382448;
  v3 = 0x73656C6966;
  if (v1 == 3)
  {
    v3 = 6382182;
  }

  if (v1 != 2)
  {
    v2 = v3;
  }

  v4 = 6383472;
  if (!*v0)
  {
    v4 = 6385763;
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

CoreODIEssentials::ProfileSetObject::ProfileBagSet::CodingKeys_optional sub_1DB03429C@<W0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result.value = ProfileSetObject.ProfileBagSet.CodingKeys.init(rawValue:)(*&a1).value;
  *a2 = v5;
  return result;
}

uint64_t sub_1DB0342D4(uint64_t a1)
{
  v2 = sub_1DB0422C4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DB034310(uint64_t a1)
{
  v2 = sub_1DB0422C4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ProfileSetObject.ProfileBagSet.criticalPath.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = v1[2];
  *a1 = *v1;
  a1[1] = v3;
  a1[2] = v4;
  return sub_1DB042284(v2, v3, v4);
}

uint64_t ProfileSetObject.ProfileBagSet.pregeneratedAssessment.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[3];
  v3 = v1[4];
  v4 = v1[5];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  return sub_1DB042284(v2, v3, v4);
}

uint64_t ProfileSetObject.ProfileBagSet.populateCache.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[6];
  v3 = v1[7];
  v4 = v1[8];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  return sub_1DB042284(v2, v3, v4);
}

uint64_t ProfileSetObject.ProfileBagSet.fallbackAssessment.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[9];
  v3 = v1[10];
  v4 = v1[11];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  return sub_1DB042284(v2, v3, v4);
}

uint64_t ProfileSetObject.ProfileBagSet.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v41 = a2;
  v43 = sub_1DB09DEA4();
  v40 = *(v43 - 8);
  v3 = MEMORY[0x1EEE9AC00](v43);
  v5 = &v28[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = MEMORY[0x1EEE9AC00](v3);
  v8 = &v28[-v7];
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v28[-v9];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0F610, &qword_1DB0B2D90);
  v42 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v28[-v12];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DB0422C4();
  v14 = v61;
  sub_1DB09E414();
  if (v14)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v61 = v5;
  v38 = v10;
  v15 = v42;
  v39 = v8;
  LOBYTE(v44) = 0;
  sub_1DB042318();
  sub_1DB09E074();
  v37 = *v51;
  v36 = *&v51[16];
  LOBYTE(v44) = 1;
  v16 = v13;
  sub_1DB09E074();
  v33 = *&v51[8];
  v34 = *v51;
  LOBYTE(v44) = 2;
  v32 = 0;
  sub_1DB09E074();
  v35 = *v51;
  v29 = *&v51[16];
  LOBYTE(v44) = 3;
  sub_1DB09E074();
  v31 = *&v51[8];
  v17 = *v51;
  v30 = *&v51[16];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0F628, &qword_1DB0B2D98);
  LOBYTE(v44) = 4;
  sub_1DB042468(&qword_1ECC0F630, sub_1DAFEA408, MEMORY[0x1E69E5E58]);
  sub_1DB09E0C4();
  v18 = v34;
  (*(v15 + 8))(v16, v11);
  v61 = *v51;
  v44 = v37;
  v19 = v36;
  *&v45 = v36;
  *(&v45 + 1) = v18;
  v20 = v33;
  v46 = v33;
  v21 = *(&v33 + 1);
  v47 = v35;
  *&v48 = v29;
  *(&v48 + 1) = v17;
  *&v49 = v31;
  v22 = *v51;
  *(&v49 + 1) = v30;
  v50 = *v51;
  v23 = v41;
  *(v41 + 96) = *v51;
  v24 = v49;
  v23[4] = v48;
  v23[5] = v24;
  v25 = v45;
  *v23 = v44;
  v23[1] = v25;
  v26 = v47;
  v23[2] = v46;
  v23[3] = v26;
  sub_1DB0423AC(&v44, v51);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  *v51 = v37;
  *&v51[16] = v19;
  v52 = v18;
  v53 = v20;
  v54 = v21;
  v55 = v35;
  v56 = v29;
  v57 = v17;
  v58 = v31;
  v59 = v30;
  v60 = v22;
  return sub_1DB0423E4(v51);
}

uint64_t ProfileSetObject.ProfileBagSet.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0F640, &qword_1DB0B2DA0);
  v34 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v22 - v4;
  v7 = *v1;
  v6 = v1[1];
  v9 = v1[2];
  v8 = v1[3];
  v10 = v1[5];
  v31 = v1[4];
  v32 = v8;
  v11 = v1[7];
  v29 = v1[6];
  v30 = v10;
  v12 = v1[9];
  v27 = v1[8];
  v28 = v11;
  v14 = v1[10];
  v13 = v1[11];
  v24 = v12;
  v25 = v14;
  v26 = v13;
  v23 = v1[12];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DB042284(v7, v6, v9);
  sub_1DB0422C4();
  sub_1DB09E434();
  v35 = v7;
  v36 = v6;
  v37 = v9;
  v15 = v3;
  v38 = 0;
  sub_1DB042414();
  v16 = v33;
  sub_1DB09E144();
  if (v16)
  {
    sub_1DB04236C(v35, v36, v37);
    return (*(v34 + 8))(v5, v3);
  }

  else
  {
    v19 = v27;
    v18 = v28;
    v20 = v29;
    v21 = v34;
    sub_1DB04236C(v35, v36, v37);
    v35 = v32;
    v36 = v31;
    v37 = v30;
    v38 = 1;
    sub_1DB042284(v32, v31, v30);
    sub_1DB09E144();
    sub_1DB04236C(v35, v36, v37);
    v35 = v20;
    v36 = v18;
    v37 = v19;
    v38 = 2;
    sub_1DB042284(v20, v18, v19);
    sub_1DB09E144();
    sub_1DB04236C(v35, v36, v37);
    v35 = v24;
    v36 = v25;
    v37 = v26;
    v38 = 3;
    sub_1DB042284(v24, v25, v26);
    sub_1DB09E144();
    sub_1DB04236C(v35, v36, v37);
    v35 = v23;
    v38 = 4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0F628, &qword_1DB0B2D98);
    sub_1DB042468(&qword_1ECC0F650, sub_1DAFEA608, MEMORY[0x1E69E5E38]);
    sub_1DB09E194();
    return (*(v21 + 8))(v5, v15);
  }
}

uint64_t sub_1DB035068()
{
  sub_1DAF40780(*(v0 + 112), *(v0 + 120));
  v1 = *(v0 + 240);
  v6[6] = *(v0 + 224);
  v6[7] = v1;
  v7 = *(v0 + 256);
  v2 = *(v0 + 176);
  v6[2] = *(v0 + 160);
  v6[3] = v2;
  v3 = *(v0 + 208);
  v6[4] = *(v0 + 192);
  v6[5] = v3;
  v4 = *(v0 + 144);
  v6[0] = *(v0 + 128);
  v6[1] = v4;
  sub_1DAF40AEC(v6, &qword_1ECC0F680, &qword_1DB0B2DC0);
  swift_defaultActor_destroy();
  return swift_defaultActor_deallocate();
}

uint64_t ProfileSetObject.id.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t ProfileSetObject.assessmentConfigID.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t ProfileSetObject.profileBagSet.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 128);
  v13 = *(v1 + 112);
  v2 = v13;
  v14 = v3;
  v15 = *(v1 + 144);
  v4 = v15;
  v5 = *(v1 + 64);
  v10[0] = *(v1 + 48);
  v10[1] = v5;
  v6 = *(v1 + 96);
  v11 = *(v1 + 80);
  v7 = v11;
  v12 = v6;
  *a1 = v10[0];
  *(a1 + 16) = v5;
  *(a1 + 32) = v7;
  *(a1 + 48) = v6;
  *(a1 + 64) = v2;
  *(a1 + 80) = v3;
  *(a1 + 96) = v4;
  return sub_1DB0423AC(v10, v9);
}

uint64_t ProfileSetObject.profileBagSetId.getter()
{
  v1 = *(v0 + 168);
  sub_1DAF40674(v1, *(v0 + 176));
  return v1;
}

uint64_t sub_1DB0351E0(uint64_t a1)
{
  sub_1DB09D794();
}

unint64_t sub_1DB0352F8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1DB04875C(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_1DB035328(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE200000000000000;
  v4 = 25705;
  v5 = 0xEF64497465536761;
  v6 = 0x42656C69666F7270;
  v7 = 0xED00007465536761;
  v8 = 0x42656C69666F7270;
  if (v2 != 4)
  {
    v8 = 0x49656C69666F7270;
    v7 = 0xEB000000006F666ELL;
  }

  if (v2 != 3)
  {
    v6 = v8;
    v5 = v7;
  }

  if (v2 == 1)
  {
    v4 = 0xD000000000000010;
    v3 = 0x80000001DB0C1F20;
  }

  if (!*v1)
  {
    v4 = 0xD000000000000012;
    v3 = 0x80000001DB0C1F00;
  }

  if (*v1 <= 2u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 2u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

unint64_t sub_1DB035408()
{
  v1 = *v0;
  v2 = 25705;
  v3 = 0x42656C69666F7270;
  v4 = 0x42656C69666F7270;
  if (v1 != 4)
  {
    v4 = 0x49656C69666F7270;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  if (v1 == 1)
  {
    v2 = 0xD000000000000010;
  }

  if (!*v0)
  {
    v2 = 0xD000000000000012;
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

unint64_t sub_1DB0354E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DB04875C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DB03550C(uint64_t a1)
{
  v2 = sub_1DB0424E0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DB035548(uint64_t a1)
{
  v2 = sub_1DB0424E0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ProfileSetObject.init(from:)@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v67 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0F5D8, &qword_1DB0B2D70);
  v4 = MEMORY[0x1EEE9AC00](v3 - 8);
  v68 = &v54 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v69 = &v54 - v7;
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v54 - v9;
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v54 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0F658, &qword_1DB0B2DA8);
  v70 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v54 - v14;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DB0424E0();
  v16 = v121;
  sub_1DB09E414();
  if (v16)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v66 = v12;
  v121 = a1;
  LOBYTE(v73) = 2;
  v17 = sub_1DAFEA408();
  sub_1DB09E0C4();
  v18 = v15;
  v65 = v13;
  v20 = v66;
  v62 = v86;
  v63 = v85;
  Data.uuid.getter(v85, v86, v66);
  sub_1DAF40A84(v20, v10, &qword_1ECC0F5D8, &qword_1DB0B2D70);
  v21 = sub_1DB09D1D4();
  v22 = *(v21 - 8);
  v59 = *(v22 + 48);
  v60 = v22 + 48;
  v23 = v59(v10, 1, v21);
  v61 = v21;
  v58 = v22;
  if (v23 == 1)
  {
    v57 = 0x676E697373696D2DLL;
    sub_1DAF40AEC(v10, &qword_1ECC0F5D8, &qword_1DB0B2D70);
    v64 = 0xEC0000002D64692DLL;
  }

  else
  {
    sub_1DB09D174();
    v20 = v66;
    (*(v22 + 8))(v10, v21);
    v57 = sub_1DB09D754();
    v64 = v24;
  }

  sub_1DAF40780(v63, v62);
  sub_1DAF40AEC(v20, &qword_1ECC0F5D8, &qword_1DB0B2D70);
  LOBYTE(v73) = 3;
  sub_1DB09E0C4();
  v66 = 0;
  v25 = v18;
  v26 = v85;
  v63 = v86;
  LOBYTE(v73) = 5;
  sub_1DB09E0C4();
  v62 = v85;
  v56 = v86;
  LOBYTE(v73) = 0;
  sub_1DB09E0C4();
  v54 = v17;
  v55 = v25;
  v27 = v85;
  v28 = v86;
  v29 = v69;
  Data.uuid.getter(v85, v86, v69);
  v30 = v68;
  sub_1DAF40A84(v29, v68, &qword_1ECC0F5D8, &qword_1DB0B2D70);
  v31 = v61;
  if (v59(v30, 1, v61) == 1)
  {
    v61 = 0x676E697373696D2DLL;
    sub_1DAF40AEC(v30, &qword_1ECC0F5D8, &qword_1DB0B2D70);
    v32 = 0xEC0000002D64692DLL;
  }

  else
  {
    sub_1DB09D174();
    (*(v58 + 8))(v30, v31);
    v61 = sub_1DB09D754();
    v32 = v33;
    v29 = v69;
  }

  sub_1DAF40780(v27, v28);
  sub_1DAF40AEC(v29, &qword_1ECC0F5D8, &qword_1DB0B2D70);
  v106 = 4;
  sub_1DB042534();
  v34 = v65;
  v35 = v55;
  sub_1DB09E0C4();
  v118 = v111;
  v119 = v112;
  v120 = v113;
  v114 = v107;
  v115 = v108;
  v116 = v109;
  v117 = v110;
  v103 = 1;
  sub_1DB09E0C4();
  v36 = v105;
  v68 = v105;
  v69 = v104;
  type metadata accessor for ProfileSetObject.SingleValidatedConfigProvider();
  v37 = swift_allocObject();
  sub_1DAF40674(v69, v36);
  swift_defaultActor_initialize();
  (*(v70 + 8))(v35, v34);
  sub_1DB04210C(v71);
  v38 = v71[7];
  *(v37 + 224) = v71[6];
  *(v37 + 240) = v38;
  *(v37 + 256) = v72;
  v39 = v71[3];
  *(v37 + 160) = v71[2];
  *(v37 + 176) = v39;
  v40 = v71[5];
  *(v37 + 192) = v71[4];
  *(v37 + 208) = v40;
  v41 = v71[1];
  *(v37 + 128) = v71[0];
  *(v37 + 144) = v41;
  v42 = v68;
  v43 = v69;
  *(v37 + 112) = v69;
  *(v37 + 120) = v42;
  v66 = v37;
  v44 = v57;
  v45 = v64;
  *&v73 = v57;
  *(&v73 + 1) = v64;
  *&v74 = v61;
  *(&v74 + 1) = v32;
  *&v75 = v43;
  *(&v75 + 1) = v42;
  v80 = v118;
  v81 = v119;
  v76 = v114;
  v77 = v115;
  v78 = v116;
  v79 = v117;
  v46 = v63;
  *&v82 = v120;
  *(&v82 + 1) = v62;
  *&v83 = v56;
  *(&v83 + 1) = v26;
  *&v84 = v63;
  *(&v84 + 1) = v37;
  v47 = v114;
  v48 = v67;
  v67[2] = v75;
  v48[3] = v47;
  v49 = v74;
  *v48 = v73;
  v48[1] = v49;
  v50 = v80;
  v48[6] = v79;
  v48[7] = v50;
  v51 = v78;
  v48[4] = v77;
  v48[5] = v51;
  v52 = v84;
  v48[10] = v83;
  v48[11] = v52;
  v53 = v82;
  v48[8] = v81;
  v48[9] = v53;
  sub_1DB0425AC(&v73, &v85);
  __swift_destroy_boxed_opaque_existential_1Tm(v121);
  v85 = v44;
  v86 = v45;
  v87 = v61;
  v88 = v32;
  v89 = v69;
  v90 = v68;
  v95 = v118;
  v96 = v119;
  v91 = v114;
  v92 = v115;
  v93 = v116;
  v94 = v117;
  v97 = v120;
  v98 = v62;
  v99 = v56;
  v100 = v26;
  v101 = v46;
  v102 = v66;
  return sub_1DB008688(&v85);
}

uint64_t ProfileSetObject.encode(to:)(void *a1)
{
  v62 = a1;
  v89 = *MEMORY[0x1E69E9840];
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0F670, &qword_1DB0B2DB0);
  v65 = *(v2 - 8);
  v66 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v64 = &v55 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0F5D8, &qword_1DB0B2D70);
  v5 = MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v55 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v55 - v8;
  v10 = *(v1 + 16);
  v67 = *(v1 + 24);
  v68 = v10;
  v11 = *(v1 + 32);
  v60 = *(v1 + 40);
  v61 = v11;
  v12 = *(v1 + 128);
  v86 = *(v1 + 112);
  v87 = v12;
  v13 = *(v1 + 152);
  v88 = *(v1 + 144);
  v14 = *(v1 + 64);
  v82 = *(v1 + 48);
  v83 = v14;
  v15 = *(v1 + 96);
  v84 = *(v1 + 80);
  v85 = v15;
  v16 = *(v1 + 168);
  v57 = *(v1 + 160);
  v58 = v13;
  v59 = v16;
  v17 = *(v1 + 176);
  sub_1DB09D164();
  v18 = sub_1DB09D1D4();
  v19 = *(v18 - 8);
  v20 = *(v19 + 48);
  if (v20(v9, 1, v18) == 1)
  {
    sub_1DAF40AEC(v9, &qword_1ECC0F5D8, &qword_1DB0B2D70);
    if (qword_1EE301E08 != -1)
    {
      swift_once();
    }

    v21 = MEMORY[0x1E69E7CC0];
    v22 = sub_1DAF3E128(MEMORY[0x1E69E7CC0]);
    if (*(v22 + 16))
    {
      v23 = sub_1DAF35210(0x636F766E4949444FLL, 0xEE00736E6F697461);
      if (v24)
      {
        sub_1DAF409DC(*(v22 + 56) + 32 * v23, &v75);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0EAC0, &qword_1DB0A3F60);
        if (swift_dynamicCast())
        {
          v21 = *&v73[0];
        }
      }
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v21 = sub_1DAF72EC0(0, *(v21 + 2) + 1, 1, v21);
    }

    v26 = *(v21 + 2);
    v25 = *(v21 + 3);
    if (v26 >= v25 >> 1)
    {
      v21 = sub_1DAF72EC0((v25 > 1), v26 + 1, 1, v21);
    }

    *(v21 + 2) = v26 + 1;
    v27 = &v21[56 * v26];
    *(v27 + 4) = 0;
    *(v27 + 5) = 0xE000000000000000;
    *(v27 + 6) = 0xD000000000000023;
    *(v27 + 7) = 0x80000001DB0CA830;
    *(v27 + 8) = 0x742865646F636E65;
    *(v27 + 9) = 0xEB00000000293A6FLL;
    *(v27 + 10) = 686;
    *(&v76 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0EAC0, &qword_1DB0A3F60);
    *&v75 = v21;
    sub_1DAF40D20(&v75, v73);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v71 = v22;
    sub_1DAF3B11C(v73, 0x636F766E4949444FLL, 0xEE00736E6F697461, isUniquelyReferenced_nonNull_native);
    v29 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
    v30 = sub_1DB09D6B4();
    v31 = sub_1DB09D604();
    [v29 initWithDomain:v30 code:-2129 userInfo:v31];

    return swift_willThrow();
  }

  else
  {
    v55 = v17;
    *&v75 = sub_1DB09D1B4();
    *(&v75 + 1) = v33;
    *&v56 = sub_1DAF48A04(&v75, &v76);
    *(&v56 + 1) = v34;
    v35 = *(v19 + 8);
    v35(v9, v18);
    sub_1DB09D164();
    if (v20(v7, 1, v18) == 1)
    {
      sub_1DAF40AEC(v7, &qword_1ECC0F5D8, &qword_1DB0B2D70);
      if (qword_1EE301E08 != -1)
      {
        swift_once();
      }

      v36 = MEMORY[0x1E69E7CC0];
      v37 = sub_1DAF3E128(MEMORY[0x1E69E7CC0]);
      if (*(v37 + 16))
      {
        v38 = sub_1DAF35210(0x636F766E4949444FLL, 0xEE00736E6F697461);
        if (v39)
        {
          sub_1DAF409DC(*(v37 + 56) + 32 * v38, &v75);
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0EAC0, &qword_1DB0A3F60);
          if (swift_dynamicCast())
          {
            v36 = *&v73[0];
          }
        }
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v36 = sub_1DAF72EC0(0, *(v36 + 2) + 1, 1, v36);
      }

      v41 = *(v36 + 2);
      v40 = *(v36 + 3);
      if (v41 >= v40 >> 1)
      {
        v36 = sub_1DAF72EC0((v40 > 1), v41 + 1, 1, v36);
      }

      *(v36 + 2) = v41 + 1;
      v42 = &v36[56 * v41];
      *(v42 + 4) = 0;
      *(v42 + 5) = 0xE000000000000000;
      *(v42 + 6) = 0xD000000000000023;
      *(v42 + 7) = 0x80000001DB0CA830;
      *(v42 + 8) = 0x742865646F636E65;
      *(v42 + 9) = 0xEB00000000293A6FLL;
      *(v42 + 10) = 689;
      *(&v76 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0EAC0, &qword_1DB0A3F60);
      *&v75 = v36;
      sub_1DAF40D20(&v75, v73);
      v43 = swift_isUniquelyReferenced_nonNull_native();
      v71 = v37;
      sub_1DAF3B11C(v73, 0x636F766E4949444FLL, 0xEE00736E6F697461, v43);
      v44 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
      v45 = sub_1DB09D6B4();
      v46 = sub_1DB09D604();
      [v44 initWithDomain:v45 code:-2129 userInfo:v46];

      swift_willThrow();
      return sub_1DAF40780(v56, *(&v56 + 1));
    }

    else
    {
      *&v75 = sub_1DB09D1B4();
      *(&v75 + 1) = v47;
      v48 = sub_1DAF48A04(&v75, &v76);
      v50 = v49;
      v35(v7, v18);
      __swift_project_boxed_opaque_existential_1(v62, v62[3]);
      sub_1DB0424E0();
      v51 = v64;
      sub_1DB09E434();
      *&v75 = v48;
      *(&v75 + 1) = v50;
      LOBYTE(v73[0]) = 0;
      sub_1DAFEA608();
      v52 = v66;
      v53 = v63;
      sub_1DB09E194();
      if (v53)
      {
        (*(v65 + 8))(v51, v52);
        sub_1DAF40780(v56, *(&v56 + 1));
        return sub_1DAF40780(v48, v50);
      }

      else
      {
        v67 = v48;
        v68 = v50;
        v54 = v56;
        v75 = v56;
        LOBYTE(v73[0]) = 2;
        sub_1DB09E194();
        *&v75 = v61;
        *(&v75 + 1) = v60;
        LOBYTE(v73[0]) = 1;
        sub_1DAF40674(v61, v60);
        sub_1DB09E194();
        sub_1DAF40780(v75, *(&v75 + 1));
        *&v75 = v59;
        *(&v75 + 1) = v55;
        LOBYTE(v73[0]) = 3;
        sub_1DAF40674(v59, v55);
        sub_1DB09E194();
        sub_1DAF40780(v75, *(&v75 + 1));
        v79 = v86;
        v80 = v87;
        v81 = v88;
        v75 = v82;
        v76 = v83;
        v77 = v84;
        v78 = v85;
        v70 = 4;
        sub_1DB0423AC(&v82, v73);
        sub_1DB0425E4();
        sub_1DB09E194();
        v73[4] = v79;
        v73[5] = v80;
        v74 = v81;
        v73[0] = v75;
        v73[1] = v76;
        v73[2] = v77;
        v73[3] = v78;
        sub_1DB0423E4(v73);
        v71 = v58;
        v72 = v57;
        v69 = 5;
        sub_1DAF40674(v58, v57);
        sub_1DB09E194();
        sub_1DAF40780(v67, v68);
        sub_1DAF40780(v54, *(&v54 + 1));
        sub_1DAF40780(v71, v72);
        return (*(v65 + 8))(v51, v52);
      }
    }
  }
}

uint64_t ProfileSetObject.profile(for:)@<X0>(unsigned __int8 *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_1DB09D1D4();
  v38 = *(v5 - 8);
  v6 = MEMORY[0x1EEE9AC00](v5);
  v39 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v40 = &v36 - v8;
  v9 = *a1;
  v36 = a2;
  if (v9 > 1)
  {
    if (v9 == 2)
    {
      v10 = v2[14];
      if (!v10)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v10 = v2[17];
      if (!v10)
      {
        goto LABEL_4;
      }
    }

LABEL_11:

    goto LABEL_12;
  }

  if (v9)
  {
    v10 = v2[11];
    if (!v10)
    {
      goto LABEL_4;
    }

    goto LABEL_11;
  }

  v10 = v2[8];
  if (v10)
  {
    goto LABEL_11;
  }

LABEL_4:
  v10 = MEMORY[0x1E69E7CC0];
LABEL_12:
  v41 = *(v10 + 16);
  if (!v41)
  {
    v14 = MEMORY[0x1E69E7CC0];
LABEL_46:

    v35 = v36;
    *v36 = v14;
    v35[1] = 0x2000000000000000;
    return result;
  }

  v11 = 0;
  v12 = (v38 + 32);
  v13 = (v10 + 40);
  v14 = MEMORY[0x1E69E7CC0];
  v37 = v5;
  while (v11 < *(v10 + 16))
  {
    v16 = *(v13 - 1);
    v15 = *v13;
    v17 = *v13 >> 62;
    if (v17 > 1)
    {
      if (v17 != 2)
      {
        goto LABEL_14;
      }

      v19 = *(v16 + 16);
      v18 = *(v16 + 24);
      v20 = v18 - v19;
      if (__OFSUB__(v18, v19))
      {
        goto LABEL_48;
      }
    }

    else
    {
      if (!v17)
      {
        if (BYTE6(v15) == 16)
        {
          goto LABEL_28;
        }

        goto LABEL_14;
      }

      if (__OFSUB__(HIDWORD(v16), v16))
      {
        goto LABEL_49;
      }

      v20 = HIDWORD(v16) - v16;
    }

    sub_1DAF40674(*(v13 - 1), *v13);
    if (v20 == 16)
    {
LABEL_28:
      v21 = v39;
      if (v17 != 2)
      {
        if (v17 == 1)
        {
          if (v16 > v16 >> 32)
          {
            goto LABEL_50;
          }

          v22 = sub_1DB09CD44();
          if (!v22)
          {
            goto LABEL_55;
          }

          v23 = v22;
          v24 = sub_1DB09CD74();
          if (__OFSUB__(v16, v24))
          {
            goto LABEL_52;
          }

          v25 = v16 - v24 + v23;
          result = sub_1DB09CD64();
          if (!v25)
          {
            goto LABEL_56;
          }

LABEL_38:
          v21 = v39;
          sub_1DB09D1A4();
          v5 = v37;
        }

        else
        {
          sub_1DB09D1A4();
        }

        sub_1DAF40780(v16, v15);
        v32 = *v12;
        (*v12)(v40, v21, v5);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v14 = sub_1DAF733C4(0, *(v14 + 2) + 1, 1, v14);
        }

        v34 = *(v14 + 2);
        v33 = *(v14 + 3);
        if (v34 >= v33 >> 1)
        {
          v14 = sub_1DAF733C4((v33 > 1), v34 + 1, 1, v14);
        }

        *(v14 + 2) = v34 + 1;
        v32(&v14[((*(v38 + 80) + 32) & ~*(v38 + 80)) + *(v38 + 72) * v34], v40, v5);
        goto LABEL_15;
      }

      v27 = *(v16 + 16);
      v28 = sub_1DB09CD44();
      if (!v28)
      {
        goto LABEL_53;
      }

      v29 = v28;
      v30 = sub_1DB09CD74();
      if (__OFSUB__(v27, v30))
      {
        goto LABEL_51;
      }

      v31 = v27 - v30 + v29;
      sub_1DB09CD64();
      if (!v31)
      {
        goto LABEL_54;
      }

      goto LABEL_38;
    }

LABEL_14:
    sub_1DAF40780(v16, v15);
LABEL_15:
    ++v11;
    v13 += 2;
    if (v41 == v11)
    {
      goto LABEL_46;
    }
  }

  __break(1u);
LABEL_48:
  __break(1u);
LABEL_49:
  __break(1u);
LABEL_50:
  __break(1u);
LABEL_51:
  __break(1u);
LABEL_52:
  __break(1u);
LABEL_53:
  sub_1DB09CD64();
LABEL_54:
  __break(1u);
LABEL_55:
  result = sub_1DB09CD64();
  __break(1u);
LABEL_56:
  __break(1u);
  return result;
}

uint64_t ProfileSetObject.resolvedConfig()(uint64_t a1)
{
  *(v2 + 832) = a1;
  v3 = *(v1 + 184);
  *(v2 + 840) = v3;
  return MEMORY[0x1EEE6DFA0](sub_1DB036DB4, v3, 0);
}

uint64_t sub_1DB036DB4()
{
  v57 = v0;
  v1 = *(v0 + 840);
  *(v0 + 152) = *(v1 + 128);
  v2 = *(v1 + 176);
  v3 = *(v1 + 192);
  v4 = *(v1 + 160);
  *(v0 + 168) = *(v1 + 144);
  *(v0 + 216) = v3;
  *(v0 + 200) = v2;
  *(v0 + 184) = v4;
  v6 = *(v1 + 224);
  v5 = *(v1 + 240);
  v7 = *(v1 + 256);
  *(v0 + 232) = *(v1 + 208);
  *(v0 + 280) = v7;
  *(v0 + 264) = v5;
  *(v0 + 248) = v6;
  memmove((v0 + 16), (v1 + 128), 0x81uLL);
  if (sub_1DB042638(v0 + 16) == 1)
  {
    sub_1DB0954E0(*(*(v0 + 840) + 112), *(*(v0 + 840) + 120), &v48);
    v15 = v54;
    v16 = v55;
    v17 = v55;
    *(v0 + 656) = v54;
    *(v0 + 672) = v16;
    v18 = v50;
    v19 = v51;
    v20 = v51;
    *(v0 + 592) = v50;
    *(v0 + 608) = v19;
    v21 = v53;
    v22 = v53;
    v23 = v52;
    *(v0 + 624) = v52;
    *(v0 + 640) = v21;
    v24 = v49;
    v25 = v49;
    v26 = v48;
    *(v0 + 560) = v48;
    *(v0 + 576) = v24;
    *(v0 + 520) = v15;
    *(v0 + 536) = v17;
    *(v0 + 456) = v18;
    *(v0 + 472) = v20;
    *(v0 + 488) = v23;
    *(v0 + 504) = v22;
    v27 = *(v0 + 832);
    *(v0 + 688) = v56;
    *(v0 + 552) = v56;
    *(v0 + 424) = v26;
    *(v0 + 440) = v25;
    nullsub_3();
    *(v0 + 288) = *(v1 + 128);
    v28 = *(v1 + 144);
    v29 = *(v1 + 160);
    v30 = *(v1 + 192);
    *(v0 + 336) = *(v1 + 176);
    *(v0 + 352) = v30;
    *(v0 + 304) = v28;
    *(v0 + 320) = v29;
    v31 = *(v1 + 208);
    v32 = *(v1 + 224);
    v33 = *(v1 + 240);
    *(v0 + 416) = *(v1 + 256);
    *(v0 + 384) = v32;
    *(v0 + 400) = v33;
    *(v0 + 368) = v31;
    *(v1 + 128) = *(v0 + 424);
    v34 = *(v0 + 440);
    v35 = *(v0 + 456);
    v36 = *(v0 + 488);
    *(v1 + 176) = *(v0 + 472);
    *(v1 + 192) = v36;
    *(v1 + 144) = v34;
    *(v1 + 160) = v35;
    v37 = *(v0 + 504);
    v38 = *(v0 + 520);
    v39 = *(v0 + 536);
    *(v1 + 256) = *(v0 + 552);
    *(v1 + 224) = v38;
    *(v1 + 240) = v39;
    *(v1 + 208) = v37;
    sub_1DB042650(v0 + 560, v0 + 696);
    sub_1DAF40AEC(v0 + 288, &qword_1ECC0F680, &qword_1DB0B2DC0);
    *v27 = *(v0 + 560);
    v40 = *(v0 + 624);
    v42 = *(v0 + 576);
    v41 = *(v0 + 592);
    *(v27 + 48) = *(v0 + 608);
    *(v27 + 64) = v40;
    *(v27 + 16) = v42;
    *(v27 + 32) = v41;
    v44 = *(v0 + 656);
    v43 = *(v0 + 672);
    v45 = *(v0 + 640);
    *(v27 + 128) = *(v0 + 688);
    *(v27 + 96) = v44;
    *(v27 + 112) = v43;
    *(v27 + 80) = v45;
  }

  else
  {
    v8 = *(v0 + 832);
    *v8 = *(v0 + 16);
    v9 = *(v0 + 32);
    v10 = *(v0 + 48);
    v11 = *(v0 + 80);
    *(v8 + 48) = *(v0 + 64);
    *(v8 + 64) = v11;
    *(v8 + 16) = v9;
    *(v8 + 32) = v10;
    v12 = *(v0 + 96);
    v13 = *(v0 + 112);
    v14 = *(v0 + 128);
    *(v8 + 128) = *(v0 + 144);
    *(v8 + 96) = v13;
    *(v8 + 112) = v14;
    *(v8 + 80) = v12;
  }

  sub_1DAF40A84(v0 + 152, v0 + 288, &qword_1ECC0F680, &qword_1DB0B2DC0);
  v46 = *(v0 + 8);

  return v46();
}

uint64_t ProfileSetObject.encapsulatingConfig()(uint64_t a1)
{
  *(v2 + 480) = a1;
  v3 = v1[9];
  *(v2 + 144) = v1[8];
  *(v2 + 160) = v3;
  v4 = v1[11];
  *(v2 + 176) = v1[10];
  *(v2 + 192) = v4;
  v5 = v1[5];
  *(v2 + 80) = v1[4];
  *(v2 + 96) = v5;
  v6 = v1[7];
  *(v2 + 112) = v1[6];
  *(v2 + 128) = v6;
  v7 = v1[1];
  *(v2 + 16) = *v1;
  *(v2 + 32) = v7;
  v8 = v1[3];
  *(v2 + 48) = v1[2];
  *(v2 + 64) = v8;
  v9 = swift_task_alloc();
  *(v2 + 488) = v9;
  *v9 = v2;
  v9[1] = sub_1DB037364;

  return ProfileSetObject.resolvedConfig()(v2 + 208);
}

uint64_t sub_1DB037364()
{
  *(*v1 + 496) = v0;

  if (v0)
  {
    v2 = sub_1DB03753C;
  }

  else
  {
    v2 = sub_1DB037478;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1DB037478()
{
  v1 = *(v0 + 480);
  v2 = *(v0 + 320);
  *(v0 + 440) = *(v0 + 304);
  *(v0 + 456) = v2;
  *(v0 + 472) = *(v0 + 336);
  v3 = *(v0 + 256);
  *(v0 + 376) = *(v0 + 240);
  *(v0 + 392) = v3;
  v4 = *(v0 + 288);
  *(v0 + 408) = *(v0 + 272);
  *(v0 + 424) = v4;
  v5 = *(v0 + 224);
  *(v0 + 344) = *(v0 + 208);
  *(v0 + 360) = v5;
  v6 = *(v0 + 448);
  v7 = *(v0 + 456);

  sub_1DAF8BA14(v0 + 344);
  v8 = *(v0 + 464);
  v9 = *(v0 + 472);
  *v1 = v6;
  *(v1 + 8) = v7;
  *(v1 + 16) = v8;
  *(v1 + 24) = v9;
  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_1DB037554()
{
  v1 = *(v0 + 152);
  sub_1DAF40674(v1, *(v0 + 160));
  return v1;
}

__n128 sub_1DB037588@<Q0>(__n128 *a1@<X8>)
{
  sub_1DB0954E0(*(v1 + 32), *(v1 + 40), v16);
  v13 = v16[6];
  v14 = v16[7];
  v15 = v17;
  v9 = v16[2];
  v10 = v16[3];
  v11 = v16[4];
  v12 = v16[5];
  v7 = v16[0];
  v8 = v16[1];
  nullsub_3();
  v3 = v14;
  a1[6] = v13;
  a1[7] = v3;
  a1[8].n128_u8[0] = v15;
  v4 = v10;
  a1[2] = v9;
  a1[3] = v4;
  v5 = v12;
  a1[4] = v11;
  a1[5] = v5;
  result = v8;
  *a1 = v7;
  a1[1] = result;
  return result;
}

uint64_t sub_1DB037644(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1DAF63DEC;

  return ProfileSetObject.resolvedConfig()(a1);
}

uint64_t sub_1DB0376DC(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1DAF63DEC;

  return ProfileSetObject.encapsulatingConfig()(a1);
}

unint64_t sub_1DB0377C0()
{
  v1 = 0x696C6C694D616C73;
  if (*v0 == 1)
  {
    v1 = 0xD000000000000011;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000010;
  }
}

uint64_t sub_1DB037820@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1DB0487A8(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1DB037848(uint64_t a1)
{
  v2 = sub_1DB042688();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DB037884(uint64_t a1)
{
  v2 = sub_1DB042688();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t EncapsulatedConfig.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0F688, &qword_1DB0B2DD0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v11 - v6;
  v9 = *v1;
  v8 = v1[1];
  v12 = v1[2];
  v13 = v8;
  v11[1] = *(v1 + 24);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DB042688();

  sub_1DB09E434();
  v15 = v9;
  v14 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0F698, &qword_1DB0B2DD8);
  sub_1DB0427B4(&qword_1ECC0F6A0, sub_1DB0426DC, MEMORY[0x1E69E6160], MEMORY[0x1E69E5E38]);
  sub_1DB09E194();

  if (!v2)
  {
    v15 = v13;
    v14 = 1;
    sub_1DB09E144();
    LOBYTE(v15) = 2;
    sub_1DB09E134();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t EncapsulatedConfig.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0F6C0, &qword_1DB0B2DE8);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v15 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DB042688();
  sub_1DB09E414();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0F698, &qword_1DB0B2DD8);
  v16 = 0;
  sub_1DB0427B4(&qword_1ECC0F6C8, sub_1DB042838, MEMORY[0x1E69E6190], MEMORY[0x1E69E5E58]);
  sub_1DB09E0C4();
  v15 = v17;
  v16 = 1;
  sub_1DB09E074();
  v9 = v17;
  LOBYTE(v17) = 2;
  v10 = sub_1DB09E064();
  v11 = v8;
  v13 = v12;
  (*(v6 + 8))(v11, v5);
  *a2 = v15;
  *(a2 + 8) = v9;
  *(a2 + 16) = v10;
  *(a2 + 24) = v13 & 1;

  __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

uint64_t AugmentedProfile.resolvedProfileInfo.getter()
{

  v0 = sub_1DB09CFA4();
  v2 = v1;

  if (v2 >> 60 == 15)
  {
    return 0;
  }

  else
  {
    return v0;
  }
}

__n128 AugmentedProfile.config.getter@<Q0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  if (*v1)
  {
    v4 = *(v3 + 232);
    v5 = *(v3 + 264);
    v21[6] = *(v3 + 248);
    v21[7] = v5;
    v22 = *(v3 + 280);
    v6 = *(v3 + 168);
    v7 = *(v3 + 200);
    v21[2] = *(v3 + 184);
    v21[3] = v7;
    v21[4] = *(v3 + 216);
    v21[5] = v4;
    v21[0] = *(v3 + 152);
    v21[1] = v6;
    v8 = *(v3 + 232);
    v9 = *(v3 + 264);
    v29 = *(v3 + 248);
    v30 = v9;
    v31 = *(v3 + 280);
    v10 = *(v3 + 168);
    v11 = *(v3 + 200);
    v25 = *(v3 + 184);
    v26 = v11;
    v27 = *(v3 + 216);
    v28 = v8;
    v23 = *(v3 + 152);
    v24 = v10;
    nullsub_3();
    v12 = v30;
    *(a1 + 96) = v29;
    *(a1 + 112) = v12;
    *(a1 + 128) = v31;
    v13 = v26;
    *(a1 + 32) = v25;
    *(a1 + 48) = v13;
    v14 = v28;
    *(a1 + 64) = v27;
    *(a1 + 80) = v14;
    v15 = v24;
    *a1 = v23;
    *(a1 + 16) = v15;
    sub_1DB042650(v21, v20);
  }

  else
  {
    sub_1DB04210C(&v23);
    v17 = v30;
    *(a1 + 96) = v29;
    *(a1 + 112) = v17;
    *(a1 + 128) = v31;
    v18 = v26;
    *(a1 + 32) = v25;
    *(a1 + 48) = v18;
    v19 = v28;
    *(a1 + 64) = v27;
    *(a1 + 80) = v19;
    result = v24;
    *a1 = v23;
    *(a1 + 16) = result;
  }

  return result;
}

uint64_t AugmentedProfile.profileIdentifiers(for:)@<X0>(void *a1@<X8>)
{
  v4 = *(v1 + 40);
  v3 = *(v1 + 48);
  a1[3] = &type metadata for LegacyAugmentedProfileIdentifiers;
  a1[4] = sub_1DAFEA504();
  *a1 = v4;
  a1[1] = v3;
}

uint64_t AugmentedProfile.profile.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t AugmentedProfile.profileInfo.getter()
{
  v1 = *(v0 + 24);

  return v1;
}

uint64_t AugmentedProfile.profileID.getter()
{
  v1 = *(v0 + 40);

  return v1;
}

uint64_t sub_1DB038094()
{
  sub_1DB09E3A4();
  sub_1DB09D794();

  return sub_1DB09E3E4();
}

uint64_t sub_1DB038188(uint64_t a1)
{
  sub_1DB09D794();
}

uint64_t sub_1DB038268()
{
  sub_1DB09E3A4();
  sub_1DB09D794();

  return sub_1DB09E3E4();
}

unint64_t sub_1DB038358@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1DB0488D0(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_1DB038388(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0x656C69666F7270;
  v5 = 0xEB000000006F666ELL;
  v6 = 0x49656C69666F7270;
  v7 = 0xE900000000000064;
  v8 = 0x49656C69666F7270;
  if (v2 != 3)
  {
    v8 = 0x6E6F6973726576;
    v7 = 0xE700000000000000;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (!*v1)
  {
    v4 = 0xD000000000000010;
    v3 = 0x80000001DB0C1F20;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

unint64_t sub_1DB038438()
{
  v1 = *v0;
  v2 = 0x656C69666F7270;
  v3 = 0x49656C69666F7270;
  v4 = 0x49656C69666F7270;
  if (v1 != 3)
  {
    v4 = 0x6E6F6973726576;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (!*v0)
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

unint64_t sub_1DB0384E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DB0488D0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DB03850C(uint64_t a1)
{
  v2 = sub_1DB042910();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DB038548(uint64_t a1)
{
  v2 = sub_1DB042910();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t AugmentedProfile.init(from:)@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0F6D0, &qword_1DB0B2DF0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v25 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DB042910();
  sub_1DB09E414();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0F6D8, &qword_1DB0B2DF8);
  LOBYTE(v32) = 0;
  sub_1DAF4AA8C(qword_1EE3039B8, &qword_1ECC0F6D8, &qword_1DB0B2DF8, &protocol conformance descriptor for JWSSignedJSON<A>);
  sub_1DB09E074();
  v10 = v36[0];
  LOBYTE(v36[0]) = 1;
  v11 = sub_1DB09E084();
  v31 = v12;
  v29 = v11;
  LOBYTE(v36[0]) = 2;
  v13 = sub_1DB09E044();
  v15 = 0x80000001DB0CA920;
  v16 = 0xD000000000000013;
  if (v14)
  {
    v16 = v13;
    v15 = v14;
  }

  v27 = v16;
  v28 = v15;
  LOBYTE(v36[0]) = 3;
  v26 = sub_1DB09E084();
  v30 = v17;
  v37 = 4;
  v18 = sub_1DB09E0B4();
  (*(v6 + 8))(v8, v5);
  v19 = v28;
  v20 = v29;
  *&v32 = v10;
  *(&v32 + 1) = v29;
  v22 = v30;
  v21 = v31;
  *&v33 = v31;
  *(&v33 + 1) = v27;
  *&v34 = v28;
  *(&v34 + 1) = v26;
  *&v35 = v30;
  *(&v35 + 1) = v18;
  v23 = v33;
  *a2 = v32;
  a2[1] = v23;
  v24 = v35;
  a2[2] = v34;
  a2[3] = v24;
  sub_1DB042964(&v32, v36);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  v36[0] = v10;
  v36[1] = v20;
  v36[2] = v21;
  v36[3] = v27;
  v36[4] = v19;
  v36[5] = v26;
  v36[6] = v22;
  v36[7] = v18;
  return sub_1DB04299C(v36);
}

uint64_t AugmentedProfile.profile(for:)@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1DB09CFA4();
  if (v3 >> 60 == 15)
  {
    v4 = 0;
  }

  else
  {
    v4 = result;
  }

  v5 = 0xC000000000000000;
  if (v3 >> 60 != 15)
  {
    v5 = v3;
  }

  *a1 = v4;
  a1[1] = v5;
  return result;
}

uint64_t AugmentedProfile.resolvedConfig()(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 288) = a1;
  *(v2 + 296) = v3;
  return MEMORY[0x1EEE6DFA0](sub_1DB0389D8, 0, 0);
}

uint64_t sub_1DB0389D8()
{
  v1 = *(v0 + 296);
  if (v1)
  {
    v2 = *(v0 + 288);
    *(v0 + 16) = *(v1 + 152);
    v3 = *(v1 + 184);
    v4 = *(v1 + 216);
    v5 = *(v1 + 168);
    *(v0 + 64) = *(v1 + 200);
    *(v0 + 80) = v4;
    *(v0 + 32) = v5;
    *(v0 + 48) = v3;
    v6 = *(v1 + 248);
    v7 = *(v1 + 264);
    v8 = *(v1 + 232);
    *(v0 + 144) = *(v1 + 280);
    *(v0 + 112) = v6;
    *(v0 + 128) = v7;
    *(v0 + 96) = v8;
    v9 = *(v1 + 168);
    v10 = *(v1 + 184);
    v11 = *(v1 + 216);
    *(v2 + 48) = *(v1 + 200);
    *(v2 + 64) = v11;
    *(v2 + 16) = v9;
    *(v2 + 32) = v10;
    *v2 = *(v1 + 152);
    v12 = *(v1 + 232);
    v13 = *(v1 + 248);
    v14 = *(v1 + 264);
    *(v2 + 128) = *(v1 + 280);
    *(v2 + 96) = v13;
    *(v2 + 112) = v14;
    *(v2 + 80) = v12;
    sub_1DB042650(v0 + 16, v0 + 152);
    v15 = *(v0 + 8);
  }

  else
  {
    if (qword_1EE301E08 != -1)
    {
      swift_once();
    }

    v16 = MEMORY[0x1E69E7CC0];
    v17 = sub_1DAF3E128(MEMORY[0x1E69E7CC0]);
    if (*(v17 + 16))
    {
      v18 = sub_1DAF35210(0x636F766E4949444FLL, 0xEE00736E6F697461);
      if (v19)
      {
        sub_1DAF409DC(*(v17 + 56) + 32 * v18, v0 + 16);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0EAC0, &qword_1DB0A3F60);
        if (swift_dynamicCast())
        {
          v16 = *(v0 + 152);
        }
      }
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v16 = sub_1DAF72EC0(0, *(v16 + 2) + 1, 1, v16);
    }

    v21 = *(v16 + 2);
    v20 = *(v16 + 3);
    if (v21 >= v20 >> 1)
    {
      v16 = sub_1DAF72EC0((v20 > 1), v21 + 1, 1, v16);
    }

    *(v16 + 2) = v21 + 1;
    v22 = &v16[56 * v21];
    *(v22 + 4) = 0;
    *(v22 + 5) = 0xE000000000000000;
    *(v22 + 6) = 0xD000000000000023;
    *(v22 + 7) = 0x80000001DB0CA830;
    *(v22 + 8) = 0xD000000000000010;
    *(v22 + 9) = 0x80000001DB0CA940;
    *(v22 + 10) = 801;
    *(v0 + 40) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0EAC0, &qword_1DB0A3F60);
    *(v0 + 16) = v16;
    sub_1DAF40D20((v0 + 16), (v0 + 152));
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_1DAF3B11C((v0 + 152), 0x636F766E4949444FLL, 0xEE00736E6F697461, isUniquelyReferenced_nonNull_native);
    v24 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
    v25 = sub_1DB09D6B4();
    v26 = sub_1DB09D604();
    [v24 initWithDomain:v25 code:-2128 userInfo:v26];

    swift_willThrow();
    v15 = *(v0 + 8);
  }

  return v15();
}

uint64_t AugmentedProfile.encapsulatingConfig()(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 288) = a1;
  *(v2 + 296) = v3;
  return MEMORY[0x1EEE6DFA0](sub_1DB038D5C, 0, 0);
}

uint64_t sub_1DB038D5C()
{
  v1 = *(v0 + 296);
  if (v1)
  {
    v2 = *(v0 + 288);
    *(v0 + 16) = *(v1 + 152);
    v3 = *(v1 + 184);
    v4 = *(v1 + 216);
    v5 = *(v1 + 168);
    *(v0 + 64) = *(v1 + 200);
    *(v0 + 80) = v4;
    *(v0 + 32) = v5;
    *(v0 + 48) = v3;
    v6 = *(v1 + 248);
    v7 = *(v1 + 264);
    v8 = *(v1 + 232);
    *(v0 + 144) = *(v1 + 280);
    *(v0 + 112) = v6;
    *(v0 + 128) = v7;
    *(v0 + 96) = v8;
    sub_1DB042650(v0 + 16, v0 + 152);
    v10 = *(v0 + 120);
    v9 = *(v0 + 128);

    sub_1DAF8BA14(v0 + 16);
    v11 = *(v0 + 136);
    v12 = *(v0 + 144);
    *v2 = v10;
    *(v2 + 8) = v9;
    *(v2 + 16) = v11;
    *(v2 + 24) = v12;
    v13 = *(v0 + 8);
  }

  else
  {
    if (qword_1EE301E08 != -1)
    {
      swift_once();
    }

    v14 = MEMORY[0x1E69E7CC0];
    v15 = sub_1DAF3E128(MEMORY[0x1E69E7CC0]);
    if (*(v15 + 16))
    {
      v16 = sub_1DAF35210(0x636F766E4949444FLL, 0xEE00736E6F697461);
      if (v17)
      {
        sub_1DAF409DC(*(v15 + 56) + 32 * v16, v0 + 16);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0EAC0, &qword_1DB0A3F60);
        if (swift_dynamicCast())
        {
          v14 = *(v0 + 152);
        }
      }
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v14 = sub_1DAF72EC0(0, *(v14 + 2) + 1, 1, v14);
    }

    v19 = *(v14 + 2);
    v18 = *(v14 + 3);
    if (v19 >= v18 >> 1)
    {
      v14 = sub_1DAF72EC0((v18 > 1), v19 + 1, 1, v14);
    }

    *(v14 + 2) = v19 + 1;
    v20 = &v14[56 * v19];
    *(v20 + 4) = 0;
    *(v20 + 5) = 0xE000000000000000;
    *(v20 + 6) = 0xD000000000000023;
    *(v20 + 7) = 0x80000001DB0CA830;
    *(v20 + 8) = 0xD000000000000010;
    *(v20 + 9) = 0x80000001DB0CA940;
    *(v20 + 10) = 801;
    *(v0 + 40) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0EAC0, &qword_1DB0A3F60);
    *(v0 + 16) = v14;
    sub_1DAF40D20((v0 + 16), (v0 + 152));
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_1DAF3B11C((v0 + 152), 0x636F766E4949444FLL, 0xEE00736E6F697461, isUniquelyReferenced_nonNull_native);
    v22 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
    v23 = sub_1DB09D6B4();
    v24 = sub_1DB09D604();
    [v22 initWithDomain:v23 code:-2128 userInfo:v24];

    swift_willThrow();
    v13 = *(v0 + 8);
  }

  return v13();
}

uint64_t AugmentedProfile.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0F6E0, &qword_1DB0B2E10);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v14 - v6;
  v9 = *v1;
  v8 = v1[1];
  v10 = v1[3];
  v14[5] = v1[2];
  v14[6] = v8;
  v11 = v1[5];
  v14[3] = v1[4];
  v14[4] = v10;
  v12 = v1[7];
  v14[1] = v1[6];
  v14[2] = v11;
  v14[0] = v12;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DB042910();

  sub_1DB09E434();
  v20 = v9;
  v19 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0F6D8, &qword_1DB0B2DF8);
  sub_1DAF4AA8C(&qword_1ECC0F6E8, &qword_1ECC0F6D8, &qword_1DB0B2DF8, &protocol conformance descriptor for JWSSignedJSON<A>);
  sub_1DB09E144();

  if (!v2)
  {
    v18 = 1;
    sub_1DB09E154();
    v17 = 2;
    sub_1DB09E104();
    v16 = 3;
    sub_1DB09E154();
    v15 = 4;
    sub_1DB09E184();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_1DB039328()
{

  v0 = sub_1DB09CFA4();
  v2 = v1;

  if (v2 >> 60 == 15)
  {
    return 0;
  }

  else
  {
    return v0;
  }
}

__n128 sub_1DB0393A0@<Q0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  if (*v1)
  {
    v4 = *(v3 + 232);
    v5 = *(v3 + 264);
    v21[6] = *(v3 + 248);
    v21[7] = v5;
    v22 = *(v3 + 280);
    v6 = *(v3 + 168);
    v7 = *(v3 + 200);
    v21[2] = *(v3 + 184);
    v21[3] = v7;
    v21[4] = *(v3 + 216);
    v21[5] = v4;
    v21[0] = *(v3 + 152);
    v21[1] = v6;
    v8 = *(v3 + 232);
    v9 = *(v3 + 264);
    v29 = *(v3 + 248);
    v30 = v9;
    v31 = *(v3 + 280);
    v10 = *(v3 + 168);
    v11 = *(v3 + 200);
    v25 = *(v3 + 184);
    v26 = v11;
    v27 = *(v3 + 216);
    v28 = v8;
    v23 = *(v3 + 152);
    v24 = v10;
    nullsub_3();
    v12 = v30;
    *(a1 + 96) = v29;
    *(a1 + 112) = v12;
    *(a1 + 128) = v31;
    v13 = v26;
    *(a1 + 32) = v25;
    *(a1 + 48) = v13;
    v14 = v28;
    *(a1 + 64) = v27;
    *(a1 + 80) = v14;
    v15 = v24;
    *a1 = v23;
    *(a1 + 16) = v15;
    sub_1DB042650(v21, v20);
  }

  else
  {
    sub_1DB04210C(&v23);
    v17 = v30;
    *(a1 + 96) = v29;
    *(a1 + 112) = v17;
    *(a1 + 128) = v31;
    v18 = v26;
    *(a1 + 32) = v25;
    *(a1 + 48) = v18;
    v19 = v28;
    *(a1 + 64) = v27;
    *(a1 + 80) = v19;
    result = v24;
    *a1 = v23;
    *(a1 + 16) = result;
  }

  return result;
}

uint64_t sub_1DB0394C0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1DB09CFA4();
  if (v3 >> 60 == 15)
  {
    v4 = 0;
  }

  else
  {
    v4 = result;
  }

  v5 = 0xC000000000000000;
  if (v3 >> 60 != 15)
  {
    v5 = v3;
  }

  *a1 = v4;
  a1[1] = v5;
  return result;
}

uint64_t sub_1DB039504@<X0>(void *a1@<X8>)
{
  v4 = *(v1 + 40);
  v3 = *(v1 + 48);
  a1[3] = &type metadata for LegacyAugmentedProfileIdentifiers;
  a1[4] = sub_1DAFEA504();
  *a1 = v4;
  a1[1] = v3;
}

uint64_t sub_1DB03955C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1DAF62CC4;

  return AugmentedProfile.resolvedConfig()(a1);
}

uint64_t sub_1DB0395F4(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1DAF63DEC;

  return AugmentedProfile.encapsulatingConfig()(a1);
}

CoreODIEssentials::DsidType_optional __swiftcall DsidType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1DB09E004();

  v5 = 4;
  if (v3 < 4)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_1DB039724()
{
  sub_1DB09E3A4();
  sub_1DB09D794();

  return sub_1DB09E3E4();
}

uint64_t sub_1DB0397D0(uint64_t a1)
{
  sub_1DB09D794();
}

uint64_t sub_1DB039868()
{
  sub_1DB09E3A4();
  sub_1DB09D794();

  return sub_1DB09E3E4();
}

void sub_1DB03991C(uint64_t *a1@<X8>)
{
  v2 = 0xE600000000000000;
  v3 = 0x64756F6C4369;
  v4 = 1684628325;
  if (*v1 != 2)
  {
    v4 = 1869903201;
  }

  if (*v1)
  {
    v3 = 0x73656E755469;
    v2 = 0xE600000000000000;
  }

  if (*v1 <= 1u)
  {
    v5 = v3;
  }

  else
  {
    v5 = v4;
  }

  if (*v1 > 1u)
  {
    v2 = 0xE400000000000000;
  }

  *a1 = v5;
  a1[1] = v2;
}

CoreODIEssentials::ArmandDataSource_optional __swiftcall ArmandDataSource.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1DB09E004();

  v5 = 15;
  if (v3 < 0xF)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t ArmandDataSource.rawValue.getter()
{
  result = 0x73746E756F636341;
  switch(*v0)
  {
    case 1:
      result = 0x6547656C69626F4DLL;
      break;
    case 2:
      result = 0x6974726543616162;
      break;
    case 3:
      result = 0x6C6569467261654ELL;
      break;
    case 4:
      result = 5456969;
      break;
    case 5:
      result = 0x656C655465726F43;
      break;
    case 6:
      result = 0x61636F4C65726F43;
      break;
    case 7:
      result = 0xD000000000000012;
      break;
    case 8:
      result = 0x656E6F5A656D6954;
      break;
    case 9:
      result = 0x6C4372656C6C6143;
      break;
    case 0xA:
      result = 0x614E646573726150;
      break;
    case 0xB:
      result = 0x7265646F636F6547;
      break;
    case 0xC:
      result = 0x657474616D726F46;
      break;
    case 0xD:
      result = 0x6553656369766544;
      break;
    case 0xE:
      result = 0x72756769666E6F43;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_1DB039CA8@<X0>(unint64_t *a1@<X8>)
{
  result = ArmandDataSource.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t AssessmentConfigFieldName.description.getter()
{
  v1 = *v0;
  if (v0[2])
  {
    v2 = v0[1];
    sub_1DB09DE44();

    strcpy(v5, "BindingsField(");
    HIBYTE(v5[1]) = -18;
    MEMORY[0x1E127FE90](v1, v2);
  }

  else
  {
    sub_1DB09DE44();

    v5[0] = 0xD000000000000010;
    v5[1] = 0x80000001DB0CA960;
    v3 = ArmandDeviceDataFieldName.rawValue.getter();
    MEMORY[0x1E127FE90](v3);
  }

  MEMORY[0x1E127FE90](41, 0xE100000000000000);
  return v5[0];
}

unint64_t ArmandDeviceDataFieldName.rawValue.getter()
{
  result = 0x726556646C697542;
  switch(*v0)
  {
    case 1:
      result = 1684628851;
      break;
    case 2:
      result = 0x754E6C6169726553;
      break;
    case 3:
      result = 0x6544657571696E55;
      break;
    case 4:
      result = 0x6843657571696E55;
      break;
    case 5:
      result = 0x6F6973726556736FLL;
      break;
    case 6:
      result = 0x7265626D756ELL;
      break;
    case 7:
      result = 0xD000000000000018;
      break;
    case 8:
      result = 0x746E6564494D4953;
      break;
    case 9:
      result = 0xD000000000000018;
      break;
    case 0xA:
      result = 0x6E6F697461636F6CLL;
      break;
    case 0xB:
      result = 0xD000000000000017;
      break;
    case 0xC:
      result = 0x6E69726168537369;
      break;
    case 0xD:
      result = 0xD000000000000012;
      break;
    case 0xE:
      result = 0x696669746E656469;
      break;
    case 0xF:
      result = 0x736572705F6D6973;
      break;
    case 0x10:
      result = 0x6F737265705F6161;
      break;
    case 0x11:
      result = 0x7A696C616D726F6ELL;
      break;
    case 0x12:
      result = 0x6469656C707061;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1DB03A0D4(uint64_t a1)
{
  v2 = sub_1DB042A20();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DB03A110(uint64_t a1)
{
  v2 = sub_1DB042A20();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DB03A14C()
{
  if (*v0)
  {
    return 0x73676E69646E6962;
  }

  else
  {
    return 0x6144656369766564;
  }
}

uint64_t sub_1DB03A1A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6144656369766564 && a2 == 0xEF646C6569466174;
  if (v6 || (sub_1DB09E254() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x73676E69646E6962 && a2 == 0xED0000646C656946)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1DB09E254();

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

uint64_t sub_1DB03A28C(uint64_t a1)
{
  v2 = sub_1DB0429CC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DB03A2C8(uint64_t a1)
{
  v2 = sub_1DB0429CC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DB03A304@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1DB09E254();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1DB03A384(uint64_t a1)
{
  v2 = sub_1DB042A74();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DB03A3C0(uint64_t a1)
{
  v2 = sub_1DB042A74();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t AssessmentConfigFieldName.hash(into:)(uint64_t a1)
{
  if (*(v1 + 16))
  {
    MEMORY[0x1E1280A80](1);

    return sub_1DB09D794();
  }

  else
  {
    MEMORY[0x1E1280A80](0);
    ArmandDeviceDataFieldName.rawValue.getter();
    sub_1DB09D794();
  }
}

uint64_t AssessmentConfigFieldName.hashValue.getter()
{
  v1 = *(v0 + 16);
  sub_1DB09E3A4();
  if (v1)
  {
    MEMORY[0x1E1280A80](1);
    sub_1DB09D794();
  }

  else
  {
    MEMORY[0x1E1280A80](0);
    ArmandDeviceDataFieldName.rawValue.getter();
    sub_1DB09D794();
  }

  return sub_1DB09E3E4();
}

uint64_t AssessmentConfigFieldName.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v30 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0F6F0, &qword_1DB0B2E18);
  v29 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v28 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0F6F8, &qword_1DB0B2E20);
  v28 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v28 - v7;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0F700, &qword_1DB0B2E28);
  v9 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31);
  v11 = &v28 - v10;
  v12 = a1[3];
  v33 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v12);
  sub_1DB0429CC();
  v13 = v32;
  sub_1DB09E414();
  if (!v13)
  {
    v32 = v9;
    v14 = v30;
    v15 = sub_1DB09E0D4();
    if (*(v15 + 16) == 1)
    {
      v16 = v31;
      v34 = *(v15 + 32);
      if (v34)
      {
        v37 = 1;
        sub_1DB042A20();
        v17 = v16;
        sub_1DB09E024();
        v23 = sub_1DB09E084();
        v28 = v24;
        v25 = v5;
        v26 = v32;
        (*(v29 + 8))(v25, v3);
        (*(v26 + 8))(v11, v17);
        swift_unknownObjectRelease();
      }

      else
      {
        v36 = 0;
        sub_1DB042A74();
        sub_1DB09E024();
        sub_1DB042AC8();
        sub_1DB09E0C4();
        (*(v28 + 8))(v8, v6);
        (*(v32 + 8))(v11, v16);
        swift_unknownObjectRelease();
        v28 = 0;
        v23 = v35;
      }

      v27 = v28;
      *v14 = v23;
      *(v14 + 8) = v27;
      *(v14 + 16) = v34;
    }

    else
    {
      v18 = sub_1DB09DEA4();
      swift_allocError();
      v20 = v19;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0F638, qword_1DB0B9380);
      *v20 = &type metadata for AssessmentConfigFieldName;
      v21 = v31;
      sub_1DB09E034();
      sub_1DB09DE84();
      (*(*(v18 - 8) + 104))(v20, *MEMORY[0x1E69E6AF8], v18);
      swift_willThrow();
      (*(v32 + 8))(v11, v21);
      swift_unknownObjectRelease();
    }
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(v33);
}

uint64_t sub_1DB03AA74()
{
  v1 = *(v0 + 16);
  sub_1DB09E3A4();
  if (v1)
  {
    MEMORY[0x1E1280A80](1);
    sub_1DB09D794();
  }

  else
  {
    MEMORY[0x1E1280A80](0);
    ArmandDeviceDataFieldName.rawValue.getter();
    sub_1DB09D794();
  }

  return sub_1DB09E3E4();
}

uint64_t sub_1DB03AB18(uint64_t a1)
{
  if (*(v1 + 16))
  {
    MEMORY[0x1E1280A80](1);

    return sub_1DB09D794();
  }

  else
  {
    MEMORY[0x1E1280A80](0);
    ArmandDeviceDataFieldName.rawValue.getter();
    sub_1DB09D794();
  }
}

uint64_t sub_1DB03ABD8()
{
  v1 = *(v0 + 16);
  sub_1DB09E3A4();
  if (v1)
  {
    MEMORY[0x1E1280A80](1);
    sub_1DB09D794();
  }

  else
  {
    MEMORY[0x1E1280A80](0);
    ArmandDeviceDataFieldName.rawValue.getter();
    sub_1DB09D794();
  }

  return sub_1DB09E3E4();
}

CoreODIEssentials::ArmandDeviceDataFieldName_optional __swiftcall ArmandDeviceDataFieldName.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1DB09E2B4();

  v5 = 19;
  if (v3 < 0x13)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t sub_1DB03AD50@<X0>(unint64_t *a1@<X8>)
{
  result = ArmandDeviceDataFieldName.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

CoreODIEssentials::ODIComputableBindingsName_optional __swiftcall ODIComputableBindingsName.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1DB09E004();

  v5 = 12;
  if (v3 < 0xC)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t ODIComputableBindingsName.rawValue.getter()
{
  v1 = *v0;
  if (v1 > 5)
  {
    v6 = 0xD000000000000012;
    if (v1 == 10)
    {
      v6 = 0xD000000000000014;
    }

    if (v1 == 9)
    {
      v7 = 0xD000000000000014;
    }

    else
    {
      v7 = v6;
    }

    v8 = 0xD000000000000013;
    if (v1 != 7)
    {
      v8 = 0xD000000000000014;
    }

    if (v1 == 6)
    {
      v8 = 0xD000000000000014;
    }

    if (*v0 <= 8u)
    {
      return v8;
    }

    else
    {
      return v7;
    }
  }

  else
  {
    v2 = 0x6947646573726170;
    v3 = 0xD000000000000010;
    v4 = 0xD000000000000010;
    if (v1 != 4)
    {
      v4 = 0x694E646573726170;
    }

    if (v1 != 3)
    {
      v3 = v4;
    }

    if (v1 != 1)
    {
      v2 = 0xD000000000000010;
    }

    if (!*v0)
    {
      v2 = 0xD000000000000010;
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
}

uint64_t sub_1DB03B03C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = a5();
  v8 = v7;
  if (v6 == a5() && v8 == v9)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1DB09E254();
  }

  return v11 & 1;
}

uint64_t sub_1DB03B0FC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void *))
{
  v4 = sub_1DB09E3A4();
  a3(v4);
  sub_1DB09D794();

  return sub_1DB09E3E4();
}

uint64_t sub_1DB03B184(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  a4();
  sub_1DB09D794();
}

uint64_t sub_1DB03B204(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *))
{
  v5 = sub_1DB09E3A4();
  a4(v5);
  sub_1DB09D794();

  return sub_1DB09E3E4();
}

unint64_t sub_1DB03B27C@<X0>(unint64_t *a1@<X8>)
{
  result = ODIComputableBindingsName.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

CoreODIEssentials::ODIFormattedPhoneNumberBindings_optional __swiftcall ODIFormattedPhoneNumberBindings.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1DB09E004();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t ODIFormattedPhoneNumberBindings.rawValue.getter()
{
  v1 = 0xD000000000000018;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000017;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000014;
  }
}

uint64_t sub_1DB03B3B8(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = "formattedPhoneNumber";
  v4 = 0xD000000000000018;
  if (v2 == 1)
  {
    v5 = 0xD000000000000018;
  }

  else
  {
    v5 = 0xD000000000000017;
  }

  if (v2 == 1)
  {
    v6 = "formattedPhoneNumber";
  }

  else
  {
    v6 = "formattedPeerPhoneNumber";
  }

  if (*a1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0xD000000000000014;
  }

  if (v2)
  {
    v8 = v6;
  }

  else
  {
    v8 = "e";
  }

  if (*a2 != 1)
  {
    v4 = 0xD000000000000017;
    v3 = "formattedPeerPhoneNumber";
  }

  if (*a2)
  {
    v9 = v4;
  }

  else
  {
    v9 = 0xD000000000000014;
  }

  if (*a2)
  {
    v10 = v3;
  }

  else
  {
    v10 = "e";
  }

  if (v7 == v9 && (v8 | 0x8000000000000000) == (v10 | 0x8000000000000000))
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1DB09E254();
  }

  return v11 & 1;
}

uint64_t sub_1DB03B490()
{
  sub_1DB09E3A4();
  sub_1DB09D794();

  return sub_1DB09E3E4();
}

uint64_t sub_1DB03B52C(uint64_t a1)
{
  sub_1DB09D794();
}

uint64_t sub_1DB03B5B4()
{
  sub_1DB09E3A4();
  sub_1DB09D794();

  return sub_1DB09E3E4();
}

void sub_1DB03B658(unint64_t *a1@<X8>)
{
  v2 = 0xD000000000000014;
  v3 = "formattedPhoneNumber";
  v4 = 0xD000000000000018;
  if (*v1 != 1)
  {
    v4 = 0xD000000000000017;
    v3 = "formattedPeerPhoneNumber";
  }

  if (*v1)
  {
    v2 = v4;
    v5 = v3;
  }

  else
  {
    v5 = "e";
  }

  *a1 = v2;
  a1[1] = v5 | 0x8000000000000000;
}

CoreODIEssentials::ODIGeocoderBindingsName_optional __swiftcall ODIGeocoderBindingsName.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1DB09E004();

  v5 = 8;
  if (v3 < 8)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t ODIGeocoderBindingsName.rawValue.getter()
{
  v1 = *v0;
  if (v1 > 3)
  {
    v5 = 0xD000000000000016;
    v6 = 0xD000000000000017;
    if (v1 != 6)
    {
      v5 = 0xD000000000000017;
    }

    if (v1 != 4)
    {
      v6 = 0xD000000000000018;
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
    v2 = 0x4C73736572646461;
    v3 = 0xD000000000000012;
    if (v1 != 2)
    {
      v3 = 0xD000000000000013;
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

void sub_1DB03B8B8(unint64_t *a1@<X8>)
{
  v2 = *v1;
  if (v2 > 3)
  {
    v8 = 0x80000001DB0C1110;
    v9 = 0xD000000000000016;
    v10 = 0xD000000000000017;
    if (v2 != 6)
    {
      v9 = 0xD000000000000017;
      v8 = 0x80000001DB0C1130;
    }

    v11 = 0x80000001DB0C10D0;
    if (v2 != 4)
    {
      v10 = 0xD000000000000018;
      v11 = 0x80000001DB0C10F0;
    }

    if (*v1 <= 5u)
    {
      v12 = v10;
    }

    else
    {
      v12 = v9;
    }

    if (*v1 <= 5u)
    {
      v8 = v11;
    }

    *a1 = v12;
    a1[1] = v8;
  }

  else
  {
    v3 = 0xEF65647574697461;
    v4 = 0x4C73736572646461;
    v5 = 0x80000001DB0C1090;
    v6 = 0xD000000000000012;
    if (v2 != 2)
    {
      v6 = 0xD000000000000013;
      v5 = 0x80000001DB0C10B0;
    }

    if (*v1)
    {
      v4 = 0xD000000000000010;
      v3 = 0x80000001DB0C1070;
    }

    if (*v1 <= 1u)
    {
      v7 = v4;
    }

    else
    {
      v7 = v6;
    }

    if (*v1 > 1u)
    {
      v3 = v5;
    }

    *a1 = v7;
    a1[1] = v3;
  }
}

CoreODIEssentials::ODIDeviceSettingsBindingsName_optional __swiftcall ODIDeviceSettingsBindingsName.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1DB09E004();

  v5 = 6;
  if (v3 < 6)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t ODIDeviceSettingsBindingsName.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x6563697665447369;
  v3 = 0x614C656E6F687069;
  if (v1 != 4)
  {
    v3 = 0x7365727574616566;
  }

  if (v1 == 3)
  {
    v3 = 0xD000000000000011;
  }

  if (v1 == 1)
  {
    v4 = 0xD000000000000014;
  }

  else
  {
    v4 = 0xD000000000000012;
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

uint64_t sub_1DB03BB78(uint64_t a1)
{
  sub_1DB09D794();
}

void sub_1DB03BC94(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEE0064656B636F4CLL;
  v4 = 0x6563697665447369;
  v5 = 0x80000001DB0C1320;
  v6 = 0xEE0065676175676ELL;
  v7 = 0x614C656E6F687069;
  if (v2 != 4)
  {
    v7 = 0x7365727574616566;
    v6 = 0xE800000000000000;
  }

  if (v2 == 3)
  {
    v7 = 0xD000000000000011;
  }

  else
  {
    v5 = v6;
  }

  v8 = 0x80000001DB0C1300;
  if (v2 == 1)
  {
    v9 = 0xD000000000000014;
  }

  else
  {
    v9 = 0xD000000000000012;
  }

  if (v2 != 1)
  {
    v8 = 0x80000001DB0C0FC0;
  }

  if (*v1)
  {
    v4 = v9;
    v3 = v8;
  }

  if (*v1 <= 2u)
  {
    v10 = v4;
  }

  else
  {
    v10 = v7;
  }

  if (*v1 > 2u)
  {
    v3 = v5;
  }

  *a1 = v10;
  a1[1] = v3;
}

CoreODIEssentials::ODILocationBindingsName_optional __swiftcall ODILocationBindingsName.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1DB09E004();

  v5 = 5;
  if (v3 < 5)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t ODILocationBindingsName.rawValue.getter()
{
  v1 = 0x656475746974616CLL;
  v2 = *v0;
  v3 = 0xD000000000000012;
  v4 = 0xD000000000000010;
  if (v2 != 3)
  {
    v4 = 0x6564757469746C61;
  }

  if (v2 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v1 = 0x64757469676E6F6CLL;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1DB03BED4()
{
  sub_1DB09E3A4();
  sub_1DB09D794();

  return sub_1DB09E3E4();
}

uint64_t sub_1DB03BFBC(uint64_t a1)
{
  sub_1DB09D794();
}

uint64_t sub_1DB03C090()
{
  sub_1DB09E3A4();
  sub_1DB09D794();

  return sub_1DB09E3E4();
}

void sub_1DB03C180(uint64_t *a1@<X8>)
{
  v2 = 0x656475746974616CLL;
  v3 = *v1;
  v4 = 0xE800000000000000;
  v5 = 0x80000001DB0C1160;
  v6 = 0xD000000000000012;
  v7 = 0xD000000000000010;
  v8 = 0x80000001DB0C1180;
  if (v3 != 3)
  {
    v7 = 0x6564757469746C61;
    v8 = 0xE800000000000000;
  }

  if (v3 != 2)
  {
    v6 = v7;
    v5 = v8;
  }

  if (*v1)
  {
    v2 = 0x64757469676E6F6CLL;
    v4 = 0xE900000000000065;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v2 = v6;
    v9 = v5;
  }

  *a1 = v2;
  a1[1] = v9;
}

uint64_t DeviceDataField.identifier.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t DeviceDataField.fieldName.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  return sub_1DB042B1C(v2, v3, v4);
}

uint64_t sub_1DB03C2F0()
{
  v1 = *v0;
  v2 = 0x696669746E656469;
  v3 = 0x797469726F697270;
  v4 = 0x4D74756F656D6974;
  if (v1 != 4)
  {
    v4 = 0x67656C6976697270;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x6D614E646C656966;
  if (v1 != 1)
  {
    v5 = 0x656372756F73;
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

uint64_t sub_1DB03C3B8@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1DB04891C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1DB03C3E0(uint64_t a1)
{
  v2 = sub_1DB042B2C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DB03C41C(uint64_t a1)
{
  v2 = sub_1DB042B2C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t DeviceDataField.init(identifier:bindingName:source:priority:timeout:requiresEntitlements:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char a8@<W7>, uint64_t a9@<X8>, char a10)
{
  v10 = *a5;
  *a9 = result;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = 1;
  *(a9 + 33) = v10;
  *(a9 + 40) = a6;
  *(a9 + 48) = a7;
  *(a9 + 56) = a8 & 1;
  *(a9 + 57) = a10;
  return result;
}

uint64_t DeviceDataField.init(identifier:fieldName:source:priority:timeout:requiresEntitlements:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, unsigned __int8 *a3@<X2>, char *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char a7@<W6>, char a8@<W7>, uint64_t a9@<X8>)
{
  v9 = *a3;
  v10 = *a4;
  *a9 = result;
  *(a9 + 8) = a2;
  *(a9 + 16) = v9;
  *(a9 + 24) = 0;
  *(a9 + 32) = 0;
  *(a9 + 33) = v10;
  *(a9 + 40) = a5;
  *(a9 + 48) = a6;
  *(a9 + 56) = a7 & 1;
  *(a9 + 57) = a8;
  return result;
}

uint64_t DeviceDataField.init(from:)@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0F720, &qword_1DB0B2E30);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v27 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DB042B2C();
  sub_1DB09E414();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  LOBYTE(v37[0]) = 0;
  v33 = sub_1DB09E084();
  v50 = v10;
  LOBYTE(v35[0]) = 1;
  sub_1DB042AC8();
  sub_1DB09E0C4();
  v34 = LOBYTE(v37[0]);
  v49 = 0;
  LOBYTE(v35[0]) = 2;
  sub_1DB042B80();
  sub_1DB09E0C4();
  v11 = LOBYTE(v37[0]);
  LOBYTE(v37[0]) = 3;
  v12 = sub_1DB09E064();
  v32 = v11;
  if (v13)
  {
    v14 = 3;
  }

  else
  {
    v14 = v12;
  }

  LOBYTE(v37[0]) = 4;
  v30 = sub_1DB09E064();
  v31 = v14;
  v46 = v15 & 1;
  LOBYTE(v37[0]) = 5;
  v16 = sub_1DB09E054();
  v29 = 0;
  (*(v6 + 8))(v8, v5);
  v17 = v16 & 1;
  v27 = v16 & 1;
  v18 = v33;
  v19 = v50;
  *&v35[0] = v33;
  *(&v35[0] + 1) = v50;
  v35[1] = v34;
  v28 = v49;
  v36[0] = v49;
  v20 = v32;
  v36[1] = v32;
  *&v36[2] = v47;
  *&v36[6] = v48;
  v21 = v31;
  v22 = v30;
  *&v36[8] = v31;
  *&v36[16] = v30;
  v23 = v46;
  v36[24] = v46;
  v36[25] = v17;
  v24 = v35[0];
  v25 = v34;
  v26 = *v36;
  *(a2 + 42) = *&v36[10];
  a2[1] = v25;
  a2[2] = v26;
  *a2 = v24;
  sub_1DB042BD4(v35, v37);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  v37[0] = v18;
  v37[1] = v19;
  v37[2] = v34;
  v37[3] = v29;
  v38 = v28;
  v39 = v20;
  v40 = v47;
  v41 = v48;
  v42 = v21;
  v43 = v22;
  v44 = v23;
  v45 = v27;
  return sub_1DB042C0C(v37);
}

uint64_t DeviceDataField.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0F728, &qword_1DB0B2E38);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v14 - v5;
  v7 = *(v1 + 16);
  v19 = *(v1 + 24);
  v20 = v7;
  v24 = *(v1 + 32);
  v18 = *(v1 + 33);
  v8 = *(v1 + 48);
  v15 = *(v1 + 40);
  v17 = v8;
  HIDWORD(v14) = *(v1 + 56);
  v16 = *(v1 + 57);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DB042B2C();
  sub_1DB09E434();
  LOBYTE(v22) = 0;
  v9 = v21;
  sub_1DB09E154();
  if (!v9)
  {
    v10 = v18;
    v11 = v17;
    if (v24)
    {
      LOBYTE(v22) = 1;
      sub_1DB09E154();
    }

    else
    {
      LOBYTE(v22) = v20;
      v25 = 1;
      sub_1DB042D0C();
      sub_1DB09E194();
    }

    LOBYTE(v22) = v10;
    v25 = 2;
    sub_1DB042C3C();
    sub_1DB09E194();
    v12 = BYTE4(v14);
    LOBYTE(v22) = 3;
    sub_1DB09E184();
    v22 = v11;
    v23 = v12;
    v25 = 4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E430, &unk_1DB0A0550);
    sub_1DB042C90();
    sub_1DB09E194();
    LOBYTE(v22) = 5;
    sub_1DB09E164();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t DeviceDataField.debugDescription.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 56);
  v4 = *(v0 + 57);
  sub_1DB09DE44();
  MEMORY[0x1E127FE90](0x203A64692020, 0xE600000000000000);
  MEMORY[0x1E127FE90](v1, v2);
  MEMORY[0x1E127FE90](0x614E646C65696620, 0xEC000000203A656DLL);
  v5 = AssessmentConfigFieldName.description.getter();
  MEMORY[0x1E127FE90](v5);

  MEMORY[0x1E127FE90](0x3A656372756F7320, 0xE900000000000020);
  sub_1DB09DF94();
  MEMORY[0x1E127FE90](0x7469726F69727020, 0xEB00000000203A79);
  v6 = sub_1DB09E1D4();
  MEMORY[0x1E127FE90](v6);

  MEMORY[0x1E127FE90](0x74756F656D697420, 0xEA0000000000203ALL);
  if (v3)
  {
    v7 = 0xE300000000000000;
    v8 = 7104878;
  }

  else
  {
    sub_1DAF988A8();
    v8 = sub_1DB09DCD4();
    v7 = v9;
  }

  MEMORY[0x1E127FE90](v8, v7);

  MEMORY[0x1E127FE90](0x203A7669727020, 0xE700000000000000);
  if (v4)
  {
    v10 = 1702195828;
  }

  else
  {
    v10 = 0x65736C6166;
  }

  if (v4)
  {
    v11 = 0xE400000000000000;
  }

  else
  {
    v11 = 0xE500000000000000;
  }

  MEMORY[0x1E127FE90](v10, v11);

  return 0;
}

uint64_t DeviceDataField.hash(into:)(uint64_t a1)
{
  v2 = *(v1 + 32);
  v4 = *(v1 + 40);
  v3 = *(v1 + 48);
  v5 = *(v1 + 56);
  sub_1DB09D794();
  if (v2)
  {
    MEMORY[0x1E1280A80](1);
    sub_1DB09D794();
  }

  else
  {
    MEMORY[0x1E1280A80](0);
    ArmandDeviceDataFieldName.rawValue.getter();
    sub_1DB09D794();
  }

  ArmandDataSource.rawValue.getter();
  sub_1DB09D794();

  MEMORY[0x1E1280A80](v4);
  sub_1DB09E3C4();
  if (!v5)
  {
    MEMORY[0x1E1280A80](v3);
  }

  return sub_1DB09E3C4();
}

uint64_t DeviceDataField.hashValue.getter()
{
  sub_1DB09E3A4();
  DeviceDataField.hash(into:)(v1);
  return sub_1DB09E3E4();
}

uint64_t sub_1DB03D044()
{
  sub_1DB09E3A4();
  DeviceDataField.hash(into:)(v1);
  return sub_1DB09E3E4();
}

uint64_t sub_1DB03D088()
{
  sub_1DB09E3A4();
  DeviceDataField.hash(into:)(v1);
  return sub_1DB09E3E4();
}

uint64_t sub_1DB03D0C8()
{
  v1 = 0x6D614E646C656966;
  if (*v0 != 1)
  {
    v1 = 0x656372756F73;
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

uint64_t sub_1DB03D128@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1DB048B30(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1DB03D150(uint64_t a1)
{
  v2 = sub_1DB04AD34();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DB03D18C(uint64_t a1)
{
  v2 = sub_1DB04AD34();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

double sub_1DB03D1C8@<D0>(_OWORD *a1@<X8>, void *a2@<X0>)
{
  sub_1DB048C54(a2, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a1 = v6[0];
    a1[1] = v5;
    result = *&v7;
    a1[2] = v7;
  }

  return result;
}

char *sub_1DB03D20C@<X0>(char **a1@<X8>, void *a2@<X0>)
{
  result = sub_1DB048E9C(a2);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

Swift::String __swiftcall ODIFieldsCategory.combinedWorkflow(from:)(Swift::String from)
{
  object = from._object;
  countAndFlagsBits = from._countAndFlagsBits;
  if (*v1)
  {
    v4 = 0x4661746144776172;
  }

  else
  {
    v4 = 0x73676E69646E6962;
  }

  if (*v1)
  {
    v5 = 0xED000073646C6569;
  }

  else
  {
    v5 = 0xEE0073646C656946;
  }

  MEMORY[0x1E127FE90](v4, v5);

  MEMORY[0x1E127FE90](95, 0xE100000000000000);
  MEMORY[0x1E127FE90](countAndFlagsBits, object);
  v6 = 0;
  v7 = 0xE000000000000000;
  result._object = v7;
  result._countAndFlagsBits = v6;
  return result;
}

uint64_t ODIFieldsCategory.hashValue.getter()
{
  v1 = *v0;
  sub_1DB09E3A4();
  MEMORY[0x1E1280A80](v1);
  return sub_1DB09E3E4();
}

uint64_t sub_1DB03D394()
{
  sub_1DB09E3A4();
  sub_1DB09D794();

  return sub_1DB09E3E4();
}

uint64_t sub_1DB03D47C(uint64_t a1)
{
  sub_1DB09D794();
}

uint64_t sub_1DB03D550()
{
  sub_1DB09E3A4();
  sub_1DB09D794();

  return sub_1DB09E3E4();
}

unint64_t sub_1DB03D634@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1DB046540(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_1DB03D664(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE600000000000000;
  v4 = 0x64756F6C4369;
  v5 = 0xE600000000000000;
  v6 = 0x64726143656DLL;
  v7 = 0xEB00000000726562;
  v8 = 0x6D754E656E6F6870;
  if (v2 != 3)
  {
    v8 = 0x726F707075736E75;
    v7 = 0xEB00000000646574;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0x73656E755469;
    v3 = 0xE600000000000000;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

uint64_t sub_1DB03D708@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  sub_1DAF3523C(a1, v7);
  v5 = sub_1DAFC2B3C(v7, 4u);
  result = __swift_destroy_boxed_opaque_existential_1Tm(a1);
  if (!v2)
  {
    *a2 = v5;
  }

  return result;
}

uint64_t AssessmentConfig.Sources.init(from:)@<X0>(void *a1@<X0>, char *a2@<X8>)
{
  sub_1DAF3523C(a1, v10);
  __swift_project_boxed_opaque_existential_1(v10, v10[3]);
  sub_1DB09E404();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v10);
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  else
  {
    __swift_project_boxed_opaque_existential_1(v9, v9[3]);
    sub_1DB09E274();
    AssessmentConfig.Sources.init(rawValue:)(v8);
    if (v7 == 7)
    {
      v6 = 6;
    }

    else
    {
      v6 = v7;
    }

    __swift_destroy_boxed_opaque_existential_1Tm(v9);
    __swift_destroy_boxed_opaque_existential_1Tm(v10);
    result = __swift_destroy_boxed_opaque_existential_1Tm(a1);
    *a2 = v6;
  }

  return result;
}

CoreODIEssentials::AssessmentConfig::Sources_optional __swiftcall AssessmentConfig.Sources.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1DB09E004();

  v5 = 7;
  if (v3 < 7)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t AssessmentConfig.Sources.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x64726143654DLL;
  if (v1 != 5)
  {
    v2 = 0x726F707075736E75;
  }

  v3 = 0x656C655465726F43;
  if (v1 != 3)
  {
    v3 = 0x797469746E656449;
  }

  if (*v0 <= 4u)
  {
    v2 = v3;
  }

  if (*v0 <= 2u)
  {
    return 0x73746E756F636341;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1DB03DA10(unsigned __int8 a1)
{
  if (a1 <= 4u)
  {
    v5 = 0x74616E6974736564;
    v6 = 0xD000000000000011;
    v7 = 0x5468736572666572;
    if (a1 == 3)
    {
      v7 = 0xD000000000000011;
    }

    if (a1 != 2)
    {
      v6 = v7;
    }

    if (a1)
    {
      v5 = 0xD000000000000019;
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
    v1 = 0xD000000000000010;
    if (a1 != 9)
    {
      v1 = 0x696C6C694D616C73;
    }

    if (a1 == 8)
    {
      v1 = 0xD000000000000014;
    }

    v2 = 0x4F646E6553657375;
    v3 = 0x4F646E6553657375;
    if (a1 != 6)
    {
      v3 = 0x447972616D697270;
    }

    if (a1 != 5)
    {
      v2 = v3;
    }

    if (a1 <= 7u)
    {
      return v2;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_1DB03DBAC(uint64_t a1)
{
  sub_1DB09D794();
}

void sub_1DB03DCD0(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE800000000000000;
  v4 = 0xE600000000000000;
  v5 = 0x64726143654DLL;
  if (v2 != 5)
  {
    v5 = 0x726F707075736E75;
    v4 = 0xEB00000000646574;
  }

  v6 = 0xED0000796E6F6870;
  v7 = 0x656C655465726F43;
  if (v2 != 3)
  {
    v7 = 0x797469746E656449;
    v6 = 0xE800000000000000;
  }

  if (*v1 <= 4u)
  {
    v5 = v7;
    v4 = v6;
  }

  v8 = 0xEF64756F6C43692ELL;
  if (v2 != 1)
  {
    v8 = 0xEF73656E7554692ELL;
  }

  if (*v1)
  {
    v3 = v8;
  }

  if (*v1 <= 2u)
  {
    v9 = 0x73746E756F636341;
  }

  else
  {
    v9 = v5;
  }

  if (*v1 > 2u)
  {
    v3 = v4;
  }

  *a1 = v9;
  a1[1] = v3;
}

uint64_t sub_1DB03DE08@<X0>(void *a1@<X0>, uint64_t a2@<X3>, void (*a3)(uint64_t *__return_ptr, _BYTE *, uint64_t)@<X4>, _BYTE *a4@<X8>)
{
  sub_1DAF3523C(a1, v10);
  a3(&v11, v10, a2);
  result = __swift_destroy_boxed_opaque_existential_1Tm(a1);
  if (!v4)
  {
    *a4 = v11;
  }

  return result;
}

uint64_t sub_1DB03DEDC(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = sub_1DB03DA10(*a1);
  v5 = v4;
  if (v3 == sub_1DB03DA10(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1DB09E254();
  }

  return v8 & 1;
}

uint64_t sub_1DB03DF64()
{
  v1 = *v0;
  sub_1DB09E3A4();
  sub_1DB03DA10(v1);
  sub_1DB09D794();

  return sub_1DB09E3E4();
}

uint64_t sub_1DB03DFC8(uint64_t a1)
{
  sub_1DB03DA10(*v1);
  sub_1DB09D794();
}

uint64_t sub_1DB03E01C()
{
  v1 = *v0;
  sub_1DB09E3A4();
  sub_1DB03DA10(v1);
  sub_1DB09D794();

  return sub_1DB09E3E4();
}

unint64_t sub_1DB03E07C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1DB04929C(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_1DB03E0AC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1DB03DA10(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_1DB03E0F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DB04929C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DB03E128(uint64_t a1)
{
  v2 = sub_1DB042D60();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DB03E164(uint64_t a1)
{
  v2 = sub_1DB042D60();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t AssessmentConfig.destinations.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1[1];
  v7[0] = *v1;
  v7[1] = v2;
  v4 = v1[3];
  v8 = v1[2];
  v3 = v8;
  v9 = v4;
  *a1 = v7[0];
  a1[1] = v2;
  a1[2] = v3;
  a1[3] = v4;
  return sub_1DAF40A84(v7, &v6, &qword_1ECC0E7C0, &qword_1DB0A51B0);
}

void *AssessmentConfig.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v145 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0F748, &qword_1DB0B2E40);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v94 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DB042D60();
  sub_1DB09E414();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v107 = a1;
  v108 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0F750, &qword_1DB0B2E48);
  LOBYTE(v109) = 1;
  sub_1DB042DB4();
  sub_1DB09E0C4();
  v9 = v118;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0F758, &qword_1DB0B2E50);
  LOBYTE(v109) = 2;
  sub_1DB042E8C();
  sub_1DB09E0C4();
  v10 = v118;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E448, &qword_1DB0A3110);
  LOBYTE(v109) = 3;
  sub_1DAF673C8(&qword_1EE301928, MEMORY[0x1E69E6190], MEMORY[0x1E69E6330]);
  sub_1DB09E074();
  v105 = v10;
  v106 = v118;
  if (v118)
  {
LABEL_18:
    v136 = 0;
    sub_1DB043074();
    sub_1DB09E074();
    v100 = v9;
    v141 = v137[0];
    v142 = v137[1];
    v143 = v137[2];
    v144 = v137[3];
    LOBYTE(v118) = 4;
    v104 = sub_1DB09E0B4();
    LOBYTE(v118) = 5;
    v24 = sub_1DB09E054();
    v25 = v24 == 2;
    LOBYTE(v118) = 6;
    LODWORD(v10) = v24;
    v26 = sub_1DB09E054();
    LODWORD(v102) = v25;
    LODWORD(v103) = v10;
    LOBYTE(v10) = v26;
    LOBYTE(a1) = v26 == 2;
    LOBYTE(v109) = 7;
    sub_1DB0430C8();
    sub_1DB09E074();
    v27 = v118;
    if (v118 == 4)
    {
      v27 = 0;
    }

    v96 = v27;
    v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0F770, &unk_1DB0B2E70);
    LOBYTE(v109) = 8;
    v29 = sub_1DB04311C();
    v101 = v28;
    v99 = v29;
    sub_1DB09E074();
  }

  else
  {
    v100 = v9;
    v11 = (v10 + 64);
    v12 = 1 << *(v10 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v10 + 64);
    v102 = (v12 + 63) >> 6;

    v15 = 0;
    v106 = MEMORY[0x1E69E7CC0];
    v101 = (v10 + 64);
    v16 = v102;
    if (v14)
    {
      goto LABEL_11;
    }

    while (1)
    {
      v17 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v17 >= v16)
      {

        v9 = v100;
        goto LABEL_18;
      }

      v14 = v11[v17];
      ++v15;
      if (v14)
      {
        v15 = v17;
        do
        {
LABEL_11:
          v18 = (*(v10 + 48) + 16 * (__clz(__rbit64(v14)) | (v15 << 6)));
          v19 = *v18;
          v103 = v18[1];
          v104 = v19;
          swift_bridgeObjectRetain_n();

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v106 = sub_1DAF72DB4(0, *(v106 + 2) + 1, 1, v106);
          }

          v21 = *(v106 + 2);
          v20 = *(v106 + 3);
          if (v21 >= v20 >> 1)
          {
            v106 = sub_1DAF72DB4((v20 > 1), v21 + 1, 1, v106);
          }

          v14 &= v14 - 1;

          a1 = v103;

          v22 = v106;
          *(v106 + 2) = v21 + 1;
          v23 = &v22[16 * v21];
          v10 = v105;
          *(v23 + 4) = v104;
          *(v23 + 5) = a1;
          v11 = v101;
          v16 = v102;
        }

        while (v14);
      }
    }

    __break(1u);
  }

  v97 = v7;
  v98 = v4;
  LODWORD(v102) = (v102 | v103) & 1;
  v95 = (a1 | v10) & 1;
  v30 = v118;
  if (!v118)
  {
    v30 = sub_1DAF3FB3C(MEMORY[0x1E69E7CC0]);
  }

  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E2B8, &qword_1DB0A0240);
  result = sub_1DB09DFD4();
  v31 = 0;
  v32 = 1 << *(v30 + 32);
  v33 = -1;
  if (v32 < 64)
  {
    v33 = ~(-1 << v32);
  }

  v34 = v33 & *(v30 + 64);
  v35 = (v32 + 63) >> 6;
  v36 = result;
  v103 = result + 8;
  if (v34)
  {
    while (1)
    {
      v37 = __clz(__rbit64(v34));
      v34 &= v34 - 1;
LABEL_33:
      v40 = v37 | (v31 << 6);
      v41 = (*(v30 + 48) + 16 * v40);
      v42 = *(*(v30 + 56) + 8 * v40);
      v43 = *v41;
      result = v41[1];
      *(v103 + ((v40 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v40;
      v44 = (v36[6] + 16 * v40);
      *v44 = v43;
      v44[1] = result;
      *(v36[7] + 8 * v40) = v42;
      v45 = v36[2];
      v46 = __OFADD__(v45, 1);
      v47 = v45 + 1;
      if (v46)
      {
        break;
      }

      v36[2] = v47;

      if (!v34)
      {
        goto LABEL_28;
      }
    }

LABEL_66:
    __break(1u);
  }

  else
  {
LABEL_28:
    v38 = v31;
    while (1)
    {
      v31 = v38 + 1;
      if (__OFADD__(v38, 1))
      {
        __break(1u);
        goto LABEL_66;
      }

      if (v31 >= v35)
      {
        break;
      }

      v39 = *(v30 + 64 + 8 * v31);
      ++v38;
      if (v39)
      {
        v37 = __clz(__rbit64(v39));
        v34 = (v39 - 1) & v39;
        goto LABEL_33;
      }
    }

    LOBYTE(v109) = 9;
    result = sub_1DB09E074();
    if (!v118)
    {
      v103 = 0;
LABEL_64:
      v135 = 10;
      v81 = sub_1DB09E064();
      v83 = v82;
      (*(v108 + 8))(v97, v98);
      v138 = v83 & 1;
      v109 = v141;
      v110 = v142;
      v111 = v143;
      v112 = v144;
      v84 = v105;
      v85 = v106;
      *&v113 = v100;
      *(&v113 + 1) = v105;
      v86 = v103;
      *&v114 = v106;
      *(&v114 + 1) = v104;
      LOBYTE(v115) = v102;
      BYTE1(v115) = v95;
      BYTE2(v115) = v96;
      BYTE7(v115) = v140;
      *(&v115 + 3) = v139;
      *(&v115 + 1) = v36;
      *&v116 = v103;
      *(&v116 + 1) = v81;
      v83 &= 1u;
      v117 = v83;
      v87 = v115;
      v88 = v116;
      v89 = v145;
      *(v145 + 128) = v83;
      v89[6] = v87;
      v89[7] = v88;
      v90 = v109;
      v91 = v110;
      v92 = v114;
      v89[4] = v113;
      v89[5] = v92;
      v93 = v112;
      v89[2] = v111;
      v89[3] = v93;
      *v89 = v90;
      v89[1] = v91;
      sub_1DB042650(&v109, &v118);
      __swift_destroy_boxed_opaque_existential_1Tm(v107);
      v118 = v141;
      v119 = v142;
      v120 = v143;
      v121 = v144;
      v122 = v100;
      v123 = v84;
      v124 = v85;
      v125 = v104;
      v126 = v102;
      v127 = v95;
      v128 = v96;
      v129 = v139;
      v130 = v140;
      v131 = v36;
      v132 = v86;
      v133 = v81;
      v134 = v83;
      return sub_1DAF8BA14(&v118);
    }

    v48 = v118;
    v49 = 0;
    v50 = v118 + 64;
    v51 = 1 << *(v118 + 32);
    v52 = -1;
    if (v51 < 64)
    {
      v52 = ~(-1 << v51);
    }

    v53 = v52 & *(v118 + 64);
    v54 = (v51 + 63) >> 6;
    if (v53)
    {
LABEL_40:
      v55 = v49;
LABEL_44:
      v56 = __clz(__rbit64(v53));
      v53 &= v53 - 1;
      v57 = *(*(v118 + 56) + ((v55 << 9) | (8 * v56)));
      v58 = (v57 + 88);
      v59 = *(v57 + 16) + 1;
      do
      {
        if (!--v59)
        {
          v49 = v55;
          if (!v53)
          {
            goto LABEL_41;
          }

          goto LABEL_40;
        }

        v60 = *v58;
        v58 += 64;
      }

      while (v60 != 1);

      v61 = sub_1DB09DEA4();
      swift_allocError();
      v63 = v62;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0F638, qword_1DB0B9380);
      *v63 = MEMORY[0x1E69E6158];
      sub_1DB09DE84();
      (*(*(v61 - 8) + 104))(v63, *MEMORY[0x1E69E6AF8], v61);
      swift_willThrow();
      (*(v108 + 8))(v97, v98);
      __swift_destroy_boxed_opaque_existential_1Tm(v107);
      v118 = v141;
      v119 = v142;
      v120 = v143;
      v121 = v144;
      sub_1DAF40AEC(&v118, &qword_1ECC0E7C0, &qword_1DB0A51B0);
    }

LABEL_41:
    while (1)
    {
      v55 = v49 + 1;
      if (__OFADD__(v49, 1))
      {
        break;
      }

      if (v55 >= v54)
      {
        result = sub_1DB09DFD4();
        v64 = 0;
        v65 = 1 << *(v48 + 32);
        v66 = *(v48 + 64);
        v67 = -1;
        if (v65 < 64)
        {
          v67 = ~(-1 << v65);
        }

        v68 = v67 & v66;
        v69 = (v65 + 63) >> 6;
        v103 = result;
        v101 = result + 8;
        if ((v67 & v66) == 0)
        {
LABEL_55:
          v71 = v64;
          while (1)
          {
            v64 = v71 + 1;
            if (__OFADD__(v71, 1))
            {
              goto LABEL_68;
            }

            if (v64 >= v69)
            {

              goto LABEL_64;
            }

            v72 = *(v50 + 8 * v64);
            ++v71;
            if (v72)
            {
              v70 = __clz(__rbit64(v72));
              v68 = (v72 - 1) & v72;
              goto LABEL_60;
            }
          }
        }

        while (1)
        {
          v70 = __clz(__rbit64(v68));
          v68 &= v68 - 1;
LABEL_60:
          v73 = v70 | (v64 << 6);
          v74 = (*(v48 + 48) + 16 * v73);
          v75 = *(*(v48 + 56) + 8 * v73);
          v76 = *v74;
          result = v74[1];
          *(v101 + ((v73 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v73;
          v77 = v103;
          v78 = (v103[6] + 16 * v73);
          *v78 = v76;
          v78[1] = result;
          *(v77[7] + 8 * v73) = v75;
          v79 = v77[2];
          v46 = __OFADD__(v79, 1);
          v80 = v79 + 1;
          if (v46)
          {
            goto LABEL_69;
          }

          v103[2] = v80;

          if (!v68)
          {
            goto LABEL_55;
          }
        }
      }

      v53 = *(v50 + 8 * v55);
      ++v49;
      if (v53)
      {
        goto LABEL_44;
      }
    }
  }

  __break(1u);
LABEL_68:
  __break(1u);
LABEL_69:
  __break(1u);
  return result;
}

uint64_t AssessmentConfig.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0F778, &qword_1DB0B2E80);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v16 - v6;
  v8 = v1[1];
  v37 = *v1;
  v38 = v8;
  v9 = v1[3];
  v39 = v1[2];
  v40 = v9;
  v10 = *(v1 + 9);
  v26 = *(v1 + 8);
  v25 = v10;
  v11 = *(v1 + 11);
  v24 = *(v1 + 10);
  v23 = v11;
  v41 = *(v1 + 96);
  v22 = *(v1 + 97);
  v21 = *(v1 + 98);
  v12 = *(v1 + 14);
  v20 = *(v1 + 13);
  v19 = v12;
  v17 = *(v1 + 15);
  v18 = *(v1 + 128);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DAF40A84(&v37, &v33, &qword_1ECC0E7C0, &qword_1DB0A51B0);
  sub_1DB042D60();
  sub_1DB09E434();
  v33 = v37;
  v34 = v38;
  v35 = v39;
  v36 = v40;
  v43 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E7C0, &qword_1DB0A51B0);
  sub_1DB0431FC();
  sub_1DB09E194();
  if (v2)
  {
    v29 = v33;
    v30 = v34;
    v31 = v35;
    v32 = v36;
    sub_1DAF40AEC(&v29, &qword_1ECC0E7C0, &qword_1DB0A51B0);
  }

  else
  {
    v13 = v25;
    v14 = v24;
    v29 = v33;
    v30 = v34;
    v31 = v35;
    v32 = v36;
    sub_1DAF40AEC(&v29, &qword_1ECC0E7C0, &qword_1DB0A51B0);
    v27 = v26;
    v42 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0F750, &qword_1DB0B2E48);
    sub_1DB0432D4();
    sub_1DB09E194();
    v27 = v13;
    v42 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0F758, &qword_1DB0B2E50);
    sub_1DB0433AC();
    sub_1DB09E194();
    v27 = v14;
    v42 = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E448, &qword_1DB0A3110);
    sub_1DAF673C8(&qword_1EE301938, MEMORY[0x1E69E6160], MEMORY[0x1E69E6300]);
    sub_1DB09E194();
    LOBYTE(v27) = 4;
    sub_1DB09E184();
    LOBYTE(v27) = 5;
    sub_1DB09E164();
    LOBYTE(v27) = 6;
    sub_1DB09E164();
    LOBYTE(v27) = v21;
    v42 = 7;
    sub_1DB043594();
    sub_1DB09E194();
    v27 = v20;
    v42 = 8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0F698, &qword_1DB0B2DD8);
    sub_1DB0427B4(&qword_1ECC0F6A0, sub_1DB0426DC, MEMORY[0x1E69E6160], MEMORY[0x1E69E5E38]);
    sub_1DB09E194();
    v27 = v19;
    v42 = 9;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0F7C8, &qword_1DB0B2E88);
    sub_1DB0435E8();
    sub_1DB09E194();
    v27 = v17;
    v28 = v18;
    v42 = 10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E430, &unk_1DB0A0550);
    sub_1DB042C90();
    sub_1DB09E194();
  }

  return (*(v5 + 8))(v7, v4);
}

void *AssessmentConfig.deviceFields()()
{
  v1 = v0[5];
  v12 = v0[4];
  v13 = v1;
  v2 = v0[1];
  v8 = *v0;
  v9 = v2;
  v3 = v0[3];
  v10 = v0[2];
  v11 = v3;
  v17 = *(v0 + 128);
  v5 = *(v0 + 12);
  v4 = *(v0 + 13);
  v16 = v0[7];
  v14 = v5;
  v15 = v4;
  v7 = 1;
  return sub_1DB03F4F0(&v7, v4);
}

void *sub_1DB03F4F0(unsigned __int8 *a1, uint64_t a2)
{
  v59 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E2C0, &qword_1DB0A0248);
  v3 = sub_1DB09DFD4();
  v4 = v3;
  v5 = 0;
  v61 = a2;
  v8 = *(a2 + 64);
  v7 = a2 + 64;
  v6 = v8;
  v9 = 1 << *(v7 - 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & v6;
  v12 = (v9 + 63) >> 6;
  v13 = v3 + 64;
  v66 = v3 + 64;
  v67 = v3;
  v60 = v12;
  if ((v10 & v6) != 0)
  {
    while (1)
    {
      v14 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_10:
      v17 = v14 | (v5 << 6);
      v18 = (*(v61 + 48) + 16 * v17);
      v68 = *v18;
      v19 = *(*(*(v61 + 56) + 8 * v17) + 16);
      if (v19)
      {
        v64 = v11;
        v70 = MEMORY[0x1E69E7CC0];
        v62 = v18[1];

        sub_1DAF5F55C(0, v19, 0);
        v20 = v70;
        v21 = 32;
        do
        {
          v22 = sub_1DB0273D4();
          v71 = v20;
          v24 = *(v20 + 16);
          v23 = *(v20 + 24);
          if (v24 >= v23 >> 1)
          {
            v25 = v22;
            sub_1DAF5F55C((v23 > 1), v24 + 1, 1);
            v22 = v25;
            v20 = v71;
          }

          *(v20 + 16) = v24 + 1;
          *(v20 + 8 * v24 + 32) = v22;
          v21 += 64;
          --v19;
        }

        while (v19);

        v13 = v66;
        v4 = v67;
        v12 = v60;
        v26 = v62;
        v11 = v64;
      }

      else
      {

        v20 = MEMORY[0x1E69E7CC0];
      }

      *(v13 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      v27 = (*(v4 + 48) + 16 * v17);
      *v27 = v68;
      v27[1] = v26;
      *(*(v4 + 56) + 8 * v17) = v20;
      v28 = *(v4 + 16);
      v29 = __OFADD__(v28, 1);
      v30 = v28 + 1;
      if (v29)
      {
        break;
      }

      *(v4 + 16) = v30;
      if (!v11)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    v15 = v5;
    while (1)
    {
      v5 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_45;
      }

      if (v5 >= v12)
      {
        break;
      }

      v16 = *(v7 + 8 * v5);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v11 = (v16 - 1) & v16;
        goto LABEL_10;
      }
    }

    v31 = sub_1DAF3FC68(MEMORY[0x1E69E7CC0]);
    v32 = 1 << *(v4 + 32);
    v33 = -1;
    if (v32 < 64)
    {
      v33 = ~(-1 << v32);
    }

    v34 = v33 & *(v4 + 64);
    v35 = (v32 + 63) >> 6;
    v36 = 0x73676E69646E6962;
    if (v59)
    {
      v36 = 0x4661746144776172;
    }

    v69 = v36;
    v37 = 0xEE0073646C656946;
    if (v59)
    {
      v37 = 0xED000073646C6569;
    }

    v65 = v37;

    v38 = 0;
    v63 = v35;
    while (v34)
    {
      v40 = v38;
LABEL_34:
      v41 = __clz(__rbit64(v34)) | (v40 << 6);
      v42 = (*(v4 + 48) + 16 * v41);
      v43 = *v42;
      v44 = v42[1];
      v45 = *(*(v4 + 56) + 8 * v41);

      MEMORY[0x1E127FE90](v69, v65);

      MEMORY[0x1E127FE90](95, 0xE100000000000000);
      MEMORY[0x1E127FE90](v43, v44);

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v47 = sub_1DAF35210(0, 0xE000000000000000);
      v49 = v31[2];
      v50 = (v48 & 1) == 0;
      v29 = __OFADD__(v49, v50);
      v51 = v49 + v50;
      if (v29)
      {
        goto LABEL_47;
      }

      v52 = v48;
      if (v31[3] >= v51)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v57 = v47;
          sub_1DAF3DAA4();
          v47 = v57;
        }
      }

      else
      {
        sub_1DAF3A818(v51, isUniquelyReferenced_nonNull_native);
        v47 = sub_1DAF35210(0, 0xE000000000000000);
        if ((v52 & 1) != (v53 & 1))
        {
          goto LABEL_49;
        }
      }

      v34 &= v34 - 1;
      if (v52)
      {
        v39 = v47;

        *(v31[7] + 8 * v39) = v45;
      }

      else
      {
        v31[(v47 >> 6) + 8] |= 1 << v47;
        v54 = (v31[6] + 16 * v47);
        *v54 = 0;
        v54[1] = 0xE000000000000000;
        *(v31[7] + 8 * v47) = v45;

        v55 = v31[2];
        v29 = __OFADD__(v55, 1);
        v56 = v55 + 1;
        if (v29)
        {
          goto LABEL_48;
        }

        v31[2] = v56;
      }

      v38 = v40;
      v13 = v66;
      v4 = v67;
      v35 = v63;
    }

    while (1)
    {
      v40 = v38 + 1;
      if (__OFADD__(v38, 1))
      {
        break;
      }

      if (v40 >= v35)
      {

        return v31;
      }

      v34 = *(v13 + 8 * v40);
      ++v38;
      if (v34)
      {
        goto LABEL_34;
      }
    }

LABEL_45:
    __break(1u);
  }

  __break(1u);
LABEL_47:
  __break(1u);
LABEL_48:
  __break(1u);
LABEL_49:
  result = sub_1DB09E2E4();
  __break(1u);
  return result;
}

void *AssessmentConfig.bindingsFields()()
{
  v1 = v0[5];
  v14 = v0[4];
  v15 = v1;
  v16 = v0[6];
  v2 = v0[1];
  v10 = *v0;
  v11 = v2;
  v3 = v0[3];
  v12 = v0[2];
  v13 = v3;
  v19 = *(v0 + 128);
  v4 = *(v0 + 14);
  v5 = *(v0 + 15);
  v17 = v4;
  v18 = v5;
  v9 = 0;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = sub_1DAF3FC7C(MEMORY[0x1E69E7CC0]);
  }

  v7 = sub_1DB03F4F0(&v9, v6);

  return v7;
}

uint64_t AssessmentServerDestinations.otd.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t AssessmentServerDestinations.tsidEncryptionCert.getter()
{
  v1 = *(v0 + 48);

  return v1;
}

unint64_t sub_1DB03FB1C()
{
  v1 = 0xD000000000000012;
  if (*v0 == 2)
  {
    v1 = 6581359;
  }

  v2 = 6583407;
  if (!*v0)
  {
    v2 = 6582895;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_1DB03FB7C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1DB049390(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1DB03FBA4(uint64_t a1)
{
  v2 = sub_1DB0436A4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DB03FBE0(uint64_t a1)
{
  v2 = sub_1DB0436A4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t AssessmentServerDestinations.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0F7D8, &qword_1DB0B2E90);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v12 - v5;
  v7 = v1[2];
  v12[5] = v1[3];
  v12[6] = v7;
  v8 = v1[4];
  v12[3] = v1[5];
  v12[4] = v8;
  v9 = v1[6];
  v12[1] = v1[7];
  v12[2] = v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DB0436A4();
  sub_1DB09E434();
  v16 = 0;
  v10 = v12[7];
  sub_1DB09E154();
  if (v10)
  {
    return (*(v4 + 8))(v6, v3);
  }

  v15 = 1;
  sub_1DB09E154();
  v14 = 2;
  sub_1DB09E154();
  v13 = 3;
  sub_1DB09E154();
  return (*(v4 + 8))(v6, v3);
}

uint64_t AssessmentServerDestinations.init(from:)@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0F7E0, &qword_1DB0B2E98);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v23 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DB0436A4();
  sub_1DB09E414();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  LOBYTE(v32[0]) = 0;
  v9 = sub_1DB09E084();
  v27 = v10;
  LOBYTE(v32[0]) = 1;
  v11 = sub_1DB09E084();
  v26 = v12;
  v24 = v11;
  LOBYTE(v32[0]) = 2;
  v23 = sub_1DB09E084();
  v25 = v13;
  v33 = 3;
  v14 = sub_1DB09E084();
  v16 = v15;
  (*(v6 + 8))(v8, v5);
  v17 = v27;
  *&v28 = v9;
  *(&v28 + 1) = v27;
  v19 = v24;
  v18 = v25;
  *&v29 = v24;
  *(&v29 + 1) = v26;
  *&v30 = v23;
  *(&v30 + 1) = v25;
  *&v31 = v14;
  *(&v31 + 1) = v16;
  v20 = v29;
  *a2 = v28;
  a2[1] = v20;
  v21 = v31;
  a2[2] = v30;
  a2[3] = v21;
  sub_1DB0436F8(&v28, v32);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  v32[0] = v9;
  v32[1] = v17;
  v32[2] = v19;
  v32[3] = v26;
  v32[4] = v23;
  v32[5] = v18;
  v32[6] = v14;
  v32[7] = v16;
  return sub_1DB043730(v32);
}

void *sub_1DB040134(uint64_t a1)
{
  v2 = a1 + 64;
  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  v9 = 0;
  v10 = MEMORY[0x1E69E7CC0];
  v11 = MEMORY[0x1E69E7CC0] + 32;
  if (v5)
  {
    while (1)
    {
      v12 = v9;
LABEL_8:
      v13 = __clz(__rbit64(v5)) | (v12 << 6);
      v14 = (*(a1 + 48) + 16 * v13);
      v15 = *v14;
      v16 = v14[1];
      result = sub_1DAF3523C(*(a1 + 56) + 40 * v13, v34);
      *&v33 = v15;
      *(&v33 + 1) = v16;
      v39 = v35;
      v37 = v34[0];
      v38 = v34[1];
      v36 = v33;
      if (v8)
      {

        v17 = v10;
        v18 = __OFSUB__(v8--, 1);
        if (v18)
        {
          goto LABEL_33;
        }
      }

      else
      {
        v19 = v10[3];
        if (((v19 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_34;
        }

        v20 = v19 & 0xFFFFFFFFFFFFFFFELL;
        if (v20 <= 1)
        {
          v21 = 1;
        }

        else
        {
          v21 = v20;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0FAF8, &unk_1DB0B68D0);
        v17 = swift_allocObject();
        v22 = (_swift_stdlib_malloc_size(v17) - 32) / 56;
        v17[2] = v21;
        v17[3] = 2 * v22;
        v23 = v17 + 4;
        v24 = v10[3] >> 1;
        v11 = &v17[7 * v24 + 4];
        v25 = (v22 & 0x7FFFFFFFFFFFFFFFLL) - v24;
        if (v10[2])
        {
          if (v17 != v10 || v23 >= &v10[7 * v24 + 4])
          {
            memmove(v23, v10 + 4, 56 * v24);
          }

          v10[2] = 0;
        }

        else
        {
        }

        v18 = __OFSUB__(v25, 1);
        v8 = v25 - 1;
        if (v18)
        {
          goto LABEL_33;
        }
      }

      v5 &= v5 - 1;
      v27 = v36;
      v28 = v37;
      v29 = v38;
      *(v11 + 48) = v39;
      *(v11 + 16) = v28;
      *(v11 + 32) = v29;
      *v11 = v27;
      v11 += 56;
      v10 = v17;
      v9 = v12;
      if (!v5)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      __break(1u);
LABEL_33:
      __break(1u);
LABEL_34:
      __break(1u);
      goto LABEL_35;
    }

    if (v12 >= v6)
    {
      break;
    }

    v5 = *(v2 + 8 * v12);
    ++v9;
    if (v5)
    {
      goto LABEL_8;
    }
  }

  v30 = v10[3];
  if (v30 < 2)
  {
    return v10;
  }

  v31 = v30 >> 1;
  v18 = __OFSUB__(v31, v8);
  v32 = v31 - v8;
  if (!v18)
  {
    v10[2] = v32;
    return v10;
  }

LABEL_35:
  __break(1u);
  return result;
}

void *sub_1DB0403A0(void *result, uint64_t a2)
{
  v2 = result[2];
  v3 = MEMORY[0x1E69E7CC0];
  v4 = v2 - a2;
  if (v2 != a2)
  {
    if (v2 > a2)
    {
      if (a2 < 0)
      {
LABEL_30:
        __break(1u);
        goto LABEL_31;
      }

      if (!v2)
      {
LABEL_31:
        __break(1u);
        goto LABEL_32;
      }

      v5 = 0;
      v6 = result + a2 + 32;
      v7 = (MEMORY[0x1E69E7CC0] + 32);
      while (1)
      {
        v9 = *v6++;
        v8 = v9;
        if (!v5)
        {
          v10 = v3[3];
          if (((v10 >> 1) + 0x4000000000000000) < 0)
          {
            goto LABEL_28;
          }

          v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
          if (v11 <= 1)
          {
            v12 = 1;
          }

          else
          {
            v12 = v11;
          }

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E768, &qword_1DB0A4690);
          v13 = swift_allocObject();
          v14 = 2 * _swift_stdlib_malloc_size(v13) - 64;
          v13[2] = v12;
          v13[3] = v14;
          v15 = (v13 + 4);
          v16 = v3[3] >> 1;
          if (v3[2])
          {
            if (v13 != v3 || v15 >= v3 + v16 + 32)
            {
              memmove(v13 + 4, v3 + 4, v16);
            }

            v3[2] = 0;
          }

          v7 = (v15 + v16);
          v5 = (v14 >> 1) - v16;

          v3 = v13;
        }

        v18 = __OFSUB__(v5--, 1);
        if (v18)
        {
          break;
        }

        *v7++ = v8;
        if (!--v4)
        {
          goto LABEL_23;
        }
      }

      __break(1u);
LABEL_28:
      __break(1u);
    }

    __break(1u);
    goto LABEL_30;
  }

  v5 = 0;
LABEL_23:
  v19 = v3[3];
  if (v19 < 2)
  {
    return v3;
  }

  v20 = v19 >> 1;
  v18 = __OFSUB__(v20, v5);
  v21 = v20 - v5;
  if (!v18)
  {
    v3[2] = v21;
    return v3;
  }

LABEL_32:
  __break(1u);
  return result;
}