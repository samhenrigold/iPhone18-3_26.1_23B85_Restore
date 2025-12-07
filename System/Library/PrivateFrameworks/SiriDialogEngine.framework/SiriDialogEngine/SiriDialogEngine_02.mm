uint64_t sub_222D05F90()
{
  OUTLINED_FUNCTION_42_0();
  OUTLINED_FUNCTION_40_1();
  sub_222CFE2C4();
  return v0 & 1;
}

uint64_t sub_222D05FBC()
{
  OUTLINED_FUNCTION_42_0();
  OUTLINED_FUNCTION_38_0();
  sub_222CFE2C4();
  return v0 & 1;
}

uint64_t sub_222D05FE8()
{
  OUTLINED_FUNCTION_41_0();
  sub_222CFE2C4();
  return v0 & 1;
}

uint64_t sub_222D06014()
{
  OUTLINED_FUNCTION_105();
  sub_222CFE2C4();
  return v0 & 1;
}

uint64_t sub_222D06044()
{
  OUTLINED_FUNCTION_105();
  sub_222CFE2C4();
  return v0 & 1;
}

uint64_t sub_222D06074()
{
  OUTLINED_FUNCTION_105();
  OUTLINED_FUNCTION_30_0();
  sub_222CFE2C4();
  return v0 & 1;
}

uint64_t sub_222D060A0()
{
  OUTLINED_FUNCTION_105();
  OUTLINED_FUNCTION_30_0();
  sub_222CFE2C4();
  return v0 & 1;
}

unint64_t sub_222D060E4(uint64_t a1, uint64_t a2)
{
  v2 = sub_222D5310C();

  if (v2 >= 0x1C)
  {
    return 28;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_222D06160@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_222D060E4(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_222D06190(void *a1@<X8>)
{
  sub_222CF1C08(*v1);
  *a1 = v3;
  a1[1] = v4;
}

uint64_t sub_222D061BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_222D06138(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_222D061F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_222CF1BB4(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_222D0622C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_222CF1BB4(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t SirikitDeviceState.__allocating_init(from:)(void *a1)
{
  OUTLINED_FUNCTION_27_0();
  v2 = swift_allocObject();
  SirikitDeviceState.init(from:)(a1);
  return v2;
}

{
  sub_222D5246C();
  OUTLINED_FUNCTION_3_14();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_4_17();
  sub_222CE3120(a1, v10);
  sub_222D5245C();
  OUTLINED_FUNCTION_1_17(0, v10, v1);
  v5 = OUTLINED_FUNCTION_5_13();
  v6(v5);
  sub_222CDD130(v10, &qword_27D03C438, &unk_222D56DE0);
  OUTLINED_FUNCTION_2_17();
  v8 = v7(v2);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v8;
}

uint64_t SirikitDeviceState.init(from:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03BF90, &qword_222D54298);
  OUTLINED_FUNCTION_113();
  MEMORY[0x28223BE20](v5);
  v7 = &v32 - v6;
  *(v1 + 16) = 0;
  v8 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_222CF1BB4(v8, v9, v10);
  sub_222D5318C();
  if (v2)
  {

    goto LABEL_4;
  }

  LOBYTE(v34) = 0;
  *(v1 + 24) = sub_222D52F5C() & 1;
  *(v1 + 25) = OUTLINED_FUNCTION_3_4(1) & 1;
  *(v1 + 26) = OUTLINED_FUNCTION_3_4(2) & 1;
  *(v1 + 27) = OUTLINED_FUNCTION_3_4(3) & 1;
  *(v1 + 28) = OUTLINED_FUNCTION_3_4(4) & 1;
  *(v1 + 29) = OUTLINED_FUNCTION_3_4(5) & 1;
  *(v1 + 30) = OUTLINED_FUNCTION_3_4(6) & 1;
  *(v1 + 31) = OUTLINED_FUNCTION_3_4(7) & 1;
  *(v1 + 32) = OUTLINED_FUNCTION_3_4(8) & 1;
  *(v1 + 33) = OUTLINED_FUNCTION_3_4(9) & 1;
  *(v1 + 34) = OUTLINED_FUNCTION_3_4(10) & 1;
  *(v1 + 35) = OUTLINED_FUNCTION_3_4(11) & 1;
  *(v1 + 36) = OUTLINED_FUNCTION_3_4(12) & 1;
  *(v1 + 37) = OUTLINED_FUNCTION_3_4(13) & 1;
  *(v1 + 38) = OUTLINED_FUNCTION_3_4(14) & 1;
  *(v1 + 39) = OUTLINED_FUNCTION_3_4(15) & 1;
  *(v1 + 40) = OUTLINED_FUNCTION_3_4(16) & 1;
  v11 = OUTLINED_FUNCTION_3_4(17);
  *(v1 + 41) = v11 & 1;
  v37 = 18;
  v14 = sub_222D0099C(v11, v12, v13);
  OUTLINED_FUNCTION_1_5();
  sub_222D52F1C();
  v16 = v35;
  *(v1 + 48) = v34;
  *(v1 + 64) = v16;
  v37 = 19;
  OUTLINED_FUNCTION_1_5();
  sub_222D52F1C();
  v33 = 0;
  v17 = v35;
  *(v1 + 80) = v34;
  *(v1 + 96) = v17;
  v37 = 20;
  OUTLINED_FUNCTION_1_5();
  v18 = v33;
  sub_222D52F1C();
  if (!v18)
  {
    v21 = v35;
    *(v1 + 112) = v34;
    *(v1 + 128) = v21;
    v37 = 21;
    OUTLINED_FUNCTION_1_5();
    sub_222D52F1C();
    v22 = v35;
    *(v1 + 144) = v34;
    *(v1 + 160) = v22;
    v37 = 22;
    OUTLINED_FUNCTION_1_5();
    sub_222D52F1C();
    v23 = v35;
    *(v1 + 176) = v34;
    *(v1 + 192) = v23;
    v37 = 23;
    OUTLINED_FUNCTION_1_5();
    sub_222D52F1C();
    v24 = v35;
    *(v1 + 208) = v34;
    *(v1 + 224) = v24;
    v37 = 24;
    OUTLINED_FUNCTION_1_5();
    sub_222D52F1C();
    v25 = v35;
    *(v1 + 240) = v34;
    *(v1 + 256) = v25;
    v37 = 25;
    OUTLINED_FUNCTION_1_5();
    sub_222D52F1C();
    v26 = v35;
    *(v1 + 272) = v34;
    *(v1 + 288) = v26;
    v37 = 26;
    OUTLINED_FUNCTION_1_5();
    sub_222D52F1C();
    v27 = v35;
    *(v1 + 304) = v34;
    *(v1 + 320) = v27;
    type metadata accessor for SirikitDeviceRestrictions();
    v37 = 27;
    OUTLINED_FUNCTION_21_0();
    sub_222CF2384(v28, 255, v29, "-TN_̓");
    sub_222D52F1C();
    v30 = OUTLINED_FUNCTION_2();
    v31(v30);
    *(v1 + 336) = v34;
    goto LABEL_5;
  }

  v19 = OUTLINED_FUNCTION_2();
  v20(v19);
  OUTLINED_FUNCTION_8_1();

  sub_222CE2920(*(v1 + 48), *(v1 + 56), *(v1 + 64), *(v1 + 72));
  if (!v33)
  {
    sub_222CE2920(*(v1 + 80), *(v1 + 88), *(v1 + 96), *(v1 + 104));
  }

  if (!v14)
  {
    if (!v7)
    {
      goto LABEL_18;
    }

LABEL_12:
    sub_222CE2920(*(v1 + 240), *(v1 + 248), *(v1 + 256), *(v1 + 264));
    if (v4)
    {
      goto LABEL_19;
    }

LABEL_13:
    if (v36)
    {
      goto LABEL_20;
    }

    goto LABEL_4;
  }

  sub_222CE2920(*(v1 + 208), *(v1 + 216), *(v1 + 224), *(v1 + 232));
  if (v7)
  {
    goto LABEL_12;
  }

LABEL_18:
  if (!v4)
  {
    goto LABEL_13;
  }

LABEL_19:
  sub_222CE2920(*(v1 + 272), *(v1 + 280), *(v1 + 288), *(v1 + 296));
  if (v36)
  {
LABEL_20:
    sub_222CE2920(*(v1 + 304), *(v1 + 312), *(v1 + 320), *(v1 + 328));
  }

LABEL_4:
  type metadata accessor for SirikitDeviceState();
  swift_deallocPartialClassInstance();
LABEL_5:
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v1;
}

uint64_t sub_222D06A44(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = sub_222CF2384(&qword_280D3B680, a2, type metadata accessor for SirikitDeviceState, protocol conformance descriptor for SirikitDeviceState);
  result = sub_222CF2384(qword_280D3B688, v3, type metadata accessor for SirikitDeviceState, protocol conformance descriptor for SirikitDeviceState);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_222D06AC8@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 448))();
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t dispatch thunk of SirikitDeviceState.Builder.withRestrictions(_:)()
{
  return (*(*v0 + 1272))();
}

{
  return (*(*v0 + 1280))();
}

unint64_t sub_222D08350()
{
  result = qword_27D03BFA0;
  if (!qword_27D03BFA0)
  {
    result = swift_getWitnessTable(aEznH, &type metadata for SirikitDeviceState.CodingKeys, v0, v1);
    atomic_store(result, &qword_27D03BFA0);
  }

  return result;
}

unint64_t sub_222D083A8()
{
  result = qword_280D3BBE0;
  if (!qword_280D3BBE0)
  {
    result = swift_getWitnessTable(byte_222D5459C, &type metadata for SirikitDeviceState.CodingKeys, v0, v1);
    atomic_store(result, &qword_280D3BBE0);
  }

  return result;
}

unint64_t sub_222D08400()
{
  result = qword_280D3BBE8;
  if (!qword_280D3BBE8)
  {
    result = swift_getWitnessTable(byte_222D545C4, &type metadata for SirikitDeviceState.CodingKeys, v0, v1);
    atomic_store(result, &qword_280D3BBE8);
  }

  return result;
}

void sub_222D08454(uint64_t a1@<X1>, uint64_t *a2@<X8>)
{
  OUTLINED_FUNCTION_8((v2 + 2), a1);
  v4 = v2[2];
  v5 = v2[3];
  v6 = v2[4];
  v7 = v2[5];
  *a2 = v4;
  a2[1] = v5;
  a2[2] = v6;
  a2[3] = v7;
  sub_222CE3060(v4, v5, v6, v7);
}

__n128 sub_222D08498()
{
  v2 = OUTLINED_FUNCTION_18_1();
  OUTLINED_FUNCTION_67(v2, v3);
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v0[1];
  *(v1 + 1) = *v0;
  *(v1 + 2) = v8;
  sub_222CE2920(v4, v5, v6, v7);
  return result;
}

uint64_t (*sub_222D084D8())(uint64_t a1)
{
  v0 = OUTLINED_FUNCTION_18_1();
  OUTLINED_FUNCTION_87(v0);
  return j_j__swift_endAccess;
}

void sub_222D08518(uint64_t a1@<X1>, uint64_t *a2@<X8>)
{
  OUTLINED_FUNCTION_8((v2 + 6), a1);
  v4 = v2[6];
  v5 = v2[7];
  v6 = v2[8];
  v7 = v2[9];
  *a2 = v4;
  a2[1] = v5;
  a2[2] = v6;
  a2[3] = v7;
  sub_222CE3060(v4, v5, v6, v7);
}

__n128 sub_222D0855C(_OWORD *a1, uint64_t a2)
{
  OUTLINED_FUNCTION_67((v2 + 6), a2);
  v4 = v2[6];
  v5 = v2[7];
  v6 = v2[8];
  v7 = v2[9];
  v8 = a1[1];
  *(v2 + 3) = *a1;
  *(v2 + 4) = v8;
  sub_222CE2920(v4, v5, v6, v7);
  return result;
}

double sub_222D085A0@<D0>(void (*a1)(_OWORD *__return_ptr)@<X3>, _OWORD *a2@<X8>)
{
  a1(v5);
  result = *v5;
  v4 = v5[1];
  *a2 = v5[0];
  a2[1] = v4;
  return result;
}

uint64_t sub_222D085E0(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t *))
{
  v6 = a1[1];
  v7 = a1[2];
  v8 = a1[3];
  v10[0] = *a1;
  v10[1] = v6;
  v10[2] = v7;
  v10[3] = v8;
  sub_222CE3060(v10[0], v6, v7, v8);
  return a5(v10);
}

void sub_222D08634(uint64_t a1@<X1>, uint64_t *a2@<X8>)
{
  OUTLINED_FUNCTION_8((v2 + 10), a1);
  v4 = v2[10];
  v5 = v2[11];
  v6 = v2[12];
  v7 = v2[13];
  *a2 = v4;
  a2[1] = v5;
  a2[2] = v6;
  a2[3] = v7;
  sub_222CE3060(v4, v5, v6, v7);
}

__n128 sub_222D08678(_OWORD *a1, uint64_t a2)
{
  OUTLINED_FUNCTION_67((v2 + 10), a2);
  v4 = v2[10];
  v5 = v2[11];
  v6 = v2[12];
  v7 = v2[13];
  v8 = a1[1];
  *(v2 + 5) = *a1;
  *(v2 + 6) = v8;
  sub_222CE2920(v4, v5, v6, v7);
  return result;
}

double DialogPersonHandle.Builder.__allocating_init()()
{
  OUTLINED_FUNCTION_16_2();
  v0 = swift_allocObject();
  result = 0.0;
  v0[1] = 0u;
  v0[2] = 0u;
  v0[3] = 0u;
  v0[4] = 0u;
  v0[5] = 0u;
  v0[6] = 0u;
  return result;
}

uint64_t DialogPersonHandle.Builder.__allocating_init(type:value:)(uint64_t *a1, uint64_t *a2)
{
  OUTLINED_FUNCTION_16_2();
  v4 = swift_allocObject();
  DialogPersonHandle.Builder.init(type:value:)(a1, a2);
  return v4;
}

uint64_t DialogPersonHandle.Builder.init(type:value:)(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = a1[3];
  v5 = *a2;
  v16 = *(a1 + 1);
  v17 = *(a2 + 1);
  v6 = a2[3];
  *(v2 + 32) = 0u;
  *(v2 + 64) = 0u;
  *(v2 + 80) = 0u;
  *(v2 + 96) = 0u;
  *(v2 + 48) = 0u;
  *(v2 + 16) = 0u;
  swift_beginAccess();
  v7 = *(v2 + 16);
  v8 = *(v2 + 24);
  v9 = *(v2 + 32);
  v10 = *(v2 + 40);
  *(v2 + 16) = v3;
  *(v2 + 24) = v16;
  *(v2 + 40) = v4;
  sub_222CE2920(v7, v8, v9, v10);
  swift_beginAccess();
  v11 = *(v2 + 48);
  v12 = *(v2 + 56);
  v13 = *(v2 + 64);
  v14 = *(v2 + 72);
  *(v2 + 48) = v5;
  *(v2 + 56) = v17;
  *(v2 + 72) = v6;
  sub_222CE2920(v11, v12, v13, v14);
  return v2;
}

void sub_222D08858()
{
  OUTLINED_FUNCTION_116();
  OUTLINED_FUNCTION_2_1();
  if (!v6)
  {

    v3 = v2;
    v4 = v0;
  }

  OUTLINED_FUNCTION_67((v1 + 2), v5);
  v1[2] = v2;
  v1[3] = v0;
  v1[4] = v3;
  v1[5] = v4;

  OUTLINED_FUNCTION_117();

  OUTLINED_FUNCTION_94();
}

void sub_222D088D0()
{
  OUTLINED_FUNCTION_116();
  OUTLINED_FUNCTION_2_1();
  if (!v6)
  {

    v3 = v2;
    v4 = v0;
  }

  OUTLINED_FUNCTION_67((v1 + 6), v5);
  v1[6] = v2;
  v1[7] = v0;
  v1[8] = v3;
  v1[9] = v4;

  OUTLINED_FUNCTION_117();

  OUTLINED_FUNCTION_94();
}

void sub_222D08948()
{
  OUTLINED_FUNCTION_116();
  OUTLINED_FUNCTION_2_1();
  if (!v6)
  {

    v3 = v2;
    v4 = v0;
  }

  OUTLINED_FUNCTION_67((v1 + 10), v5);
  v1[10] = v2;
  v1[11] = v0;
  v1[12] = v3;
  v1[13] = v4;

  OUTLINED_FUNCTION_117();

  OUTLINED_FUNCTION_94();
}

void sub_222D08A0C()
{
  v2 = OUTLINED_FUNCTION_18_1();
  OUTLINED_FUNCTION_67(v2, v3);
  v4 = *(v1 + 16);
  *(v1 + 16) = v0;
}

uint64_t (*sub_222D08A44())(uint64_t a1)
{
  v0 = OUTLINED_FUNCTION_18_1();
  OUTLINED_FUNCTION_87(v0);
  return j__swift_endAccess;
}

double sub_222D08AA8@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = a1 == 1701869940 && a2 == 0xE400000000000000;
  if (!v5 && (OUTLINED_FUNCTION_49(1701869940, 0xE400000000000000) & 1) == 0)
  {
    v14 = a1 == 0x65756C6176 && a2 == 0xE500000000000000;
    if (v14 || (OUTLINED_FUNCTION_49(0x65756C6176, 0xE500000000000000) & 1) != 0)
    {
      v8 = v3[8];
      if (v8)
      {
        v10 = v3[9];
        v9 = v3[10];
        v11 = v3[7];
        goto LABEL_8;
      }
    }

    else
    {
      v15 = a1 == 0x6C6562616CLL && a2 == 0xE500000000000000;
      if (v15 || (OUTLINED_FUNCTION_49(0x6C6562616CLL, 0xE500000000000000) & 1) != 0)
      {
        v8 = v3[12];
        if (v8)
        {
          v10 = v3[13];
          v9 = v3[14];
          v11 = v3[11];
          goto LABEL_8;
        }
      }

      else
      {
        v16 = a1 == 0x676E697274536F74 && a2 == 0xE800000000000000;
        if (v16 || (OUTLINED_FUNCTION_49(0x676E697274536F74, 0xE800000000000000) & 1) != 0 || (a1 == 0x657474616D726F66 ? (v17 = a2 == 0xEE006C6562614C64) : (v17 = 0), v17 || (OUTLINED_FUNCTION_49(0x657474616D726F66, 0xEE006C6562614C64) & 1) != 0 || (a1 == 0x657474616D726F66 ? (v18 = a2 == 0xED00006570795464) : (v18 = 0), v18 || (OUTLINED_FUNCTION_49(0x657474616D726F66, 0xED00006570795464) & 1) != 0 || (a1 == 0xD000000000000015 ? (v20 = 0x8000000222D5A5A0 == a2) : (v20 = 0), v20 || (OUTLINED_FUNCTION_49(0xD000000000000015, 0x8000000222D5A5A0) & 1) != 0 || (a1 == 0x657474616D726F66 ? (v21 = a2 == 0xEE0065756C615664) : (v21 = 0), v21 || (OUTLINED_FUNCTION_49(0x657474616D726F66, 0xEE0065756C615664) & 1) != 0 || (a1 == 0x6D754E656E6F6870 ? (v22 = a2 == 0xEB00000000726562) : (v22 = 0), v22 || (OUTLINED_FUNCTION_49(0x6D754E656E6F6870, 0xEB00000000726562) & 1) != 0 || (a1 == 0x6464416C69616D65 ? (v23 = a2 == 0xEC00000073736572) : (v23 = 0), v23 || (OUTLINED_FUNCTION_49(0x6464416C69616D65, 0xEC00000073736572) & 1) != 0)))))))
        {
          sub_222CF8D24();
          if (v25)
          {
            *(a3 + 24) = &type metadata for SpeakableString;
            v19 = swift_allocObject();
            *a3 = v19;
            v19[2] = v24;
            v19[3] = v25;
            v19[4] = v26;
            v19[5] = v27;
            return result;
          }
        }
      }
    }

LABEL_65:
    result = 0.0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
    return result;
  }

  v8 = v3[4];
  if (!v8)
  {
    goto LABEL_65;
  }

  v10 = v3[5];
  v9 = v3[6];
  v11 = v3[3];
LABEL_8:
  *(a3 + 24) = &type metadata for SpeakableString;
  v12 = swift_allocObject();
  *a3 = v12;
  v12[2] = v11;
  v12[3] = v8;
  v12[4] = v10;
  v12[5] = v9;

  return result;
}

unint64_t sub_222D08EC8(uint64_t a1, uint64_t a2)
{
  v2 = sub_222D52ECC();

  if (v2 >= 3)
  {
    return 3;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_222D08F14(char a1)
{
  if (!a1)
  {
    return 1701869940;
  }

  if (a1 == 1)
  {
    return 0x65756C6176;
  }

  return 0x6C6562616CLL;
}

unint64_t sub_222D08F80@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_222D08EC8(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_222D08FB0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_222D08F14(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_222D08FE4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_222D08EC8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_222D0900C(uint64_t a1)
{
  v2 = sub_222D09224();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_222D09048(uint64_t a1)
{
  v2 = sub_222D09224();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_222D09084(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03BFB0, &qword_222D546F0);
  OUTLINED_FUNCTION_113();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  v10 = &v33 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_222D09224();
  sub_222D531AC();
  v11 = v3[4];
  v12 = v3[5];
  v13 = v3[6];
  v35 = v3[3];
  v36 = v11;
  v37 = v12;
  v38 = v13;
  v34 = 0;
  sub_222CE3060(v35, v11, v12, v13);
  v17 = sub_222CF2084(v14, v15, v16);
  OUTLINED_FUNCTION_6_2(v17, v18, v19, &type metadata for SpeakableString);
  OUTLINED_FUNCTION_17_1();
  if (!v2)
  {
    v20 = v3[8];
    v21 = v3[9];
    v22 = v3[10];
    v35 = v3[7];
    v36 = v20;
    v37 = v21;
    v38 = v22;
    v34 = 1;
    sub_222CE3060(v35, v20, v21, v22);
    OUTLINED_FUNCTION_6_2(v23, v24, v25, &type metadata for SpeakableString);
    OUTLINED_FUNCTION_17_1();
    v26 = v3[12];
    v27 = v3[13];
    v28 = v3[14];
    v35 = v3[11];
    v36 = v26;
    v37 = v27;
    v38 = v28;
    v34 = 2;
    sub_222CE3060(v35, v26, v27, v28);
    OUTLINED_FUNCTION_6_2(v29, v30, v31, &type metadata for SpeakableString);
    OUTLINED_FUNCTION_17_1();
  }

  return (*(v7 + 8))(v10, v5);
}

unint64_t sub_222D09224()
{
  result = qword_280D3D900;
  if (!qword_280D3D900)
  {
    result = swift_getWitnessTable(a5mnT, &type metadata for DialogPersonHandle.CodingKeys, v0, v1);
    atomic_store(result, &qword_280D3D900);
  }

  return result;
}

uint64_t DialogPersonHandle.__allocating_init(from:)(void *a1)
{
  OUTLINED_FUNCTION_15_0();
  v2 = swift_allocObject();
  DialogPersonHandle.init(from:)(a1);
  return v2;
}

uint64_t DialogPersonHandle.init(from:)(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03BFB8, &qword_222D546F8);
  OUTLINED_FUNCTION_113();
  MEMORY[0x28223BE20](v4);
  *(v1 + 16) = 0;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_222D09224();
  v5 = sub_222D5318C();
  if (v2)
  {

    type metadata accessor for DialogPersonHandle();
    swift_deallocPartialClassInstance();
  }

  else
  {
    sub_222D0099C(v5, v6, v7);
    OUTLINED_FUNCTION_1_5();
    sub_222D52F1C();
    *(v1 + 24) = v11;
    *(v1 + 40) = v12;
    OUTLINED_FUNCTION_1_5();
    sub_222D52F1C();
    *(v1 + 56) = v11;
    *(v1 + 72) = v12;
    OUTLINED_FUNCTION_1_5();
    sub_222D52F1C();
    v9 = OUTLINED_FUNCTION_2();
    v10(v9);
    *(v1 + 88) = v11;
    *(v1 + 104) = v12;
  }

  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v1;
}

uint64_t sub_222D09584(uint64_t a1)
{
  *(a1 + 8) = sub_222D095EC(&qword_27D03BFC0, protocol conformance descriptor for DialogPersonHandle);
  result = sub_222D095EC(qword_280D3D7B0, protocol conformance descriptor for DialogPersonHandle);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_222D095EC(unint64_t *a1, const char *a2)
{
  result = *a1;
  if (!result)
  {
    v5 = type metadata accessor for DialogPersonHandle();
    result = swift_getWitnessTable(a2, v5);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_222D0962C@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 240))();
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for DialogPersonHandle.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_222D09BD0()
{
  result = qword_27D03BFC8;
  if (!qword_27D03BFC8)
  {
    result = swift_getWitnessTable(byte_222D548CC, &type metadata for DialogPersonHandle.CodingKeys, v0, v1);
    atomic_store(result, &qword_27D03BFC8);
  }

  return result;
}

unint64_t sub_222D09C28()
{
  result = qword_280D3D8F0;
  if (!qword_280D3D8F0)
  {
    result = swift_getWitnessTable(byte_222D54804, &type metadata for DialogPersonHandle.CodingKeys, v0, v1);
    atomic_store(result, &qword_280D3D8F0);
  }

  return result;
}

unint64_t sub_222D09C80()
{
  result = qword_280D3D8F8;
  if (!qword_280D3D8F8)
  {
    result = swift_getWitnessTable(byte_222D5482C, &type metadata for DialogPersonHandle.CodingKeys, v0, v1);
    atomic_store(result, &qword_280D3D8F8);
  }

  return result;
}

uint64_t DialogPerson.__allocating_init(namedPerson:locale:useConversationalName:useRelationshipName:)(void *a1, uint64_t a2, char a3, uint64_t a4)
{
  v5 = a4;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03BFE8, &qword_222D54960);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v48 - v10;
  type metadata accessor for DialogPerson.Builder();
  swift_allocObject();
  v12 = DialogPerson.Builder.init()();
  if ((sub_222CEAB04() & 1) == 0)
  {
    v13 = sub_222CEAD08(a1);
    if (v14)
    {
      v15 = HIBYTE(v14) & 0xF;
      if ((v14 & 0x2000000000000000) == 0)
      {
        v15 = v13 & 0xFFFFFFFFFFFFLL;
      }

      if (v15)
      {
        v50 = v13;
        v51 = v14;
        v52 = v13;
        v53 = v14;
        OUTLINED_FUNCTION_8_2();
        v17 = *(v16 + 600);

        v17(&v50);

        sub_222CE2920(v50, v51, v52, v53);
      }

      else
      {
      }
    }
  }

  if ([a1 isMe])
  {
    goto LABEL_11;
  }

  v18 = [a1 relationship];
  if (v18)
  {

LABEL_11:
    a3 = 1;
    v19 = 1;
    goto LABEL_12;
  }

  v19 = 0;
LABEL_12:
  OUTLINED_FUNCTION_8_2();
  (*(v20 + 648))(a3 & 1);

  (*(*v12 + 656))(v19);

  v21 = [a1 relationship];
  if (v21)
  {
    v22 = v21;
    v50 = sub_222D5292C();
    v51 = v23;
    v52 = v50;
    v53 = v23;
    OUTLINED_FUNCTION_8_2();
    v25 = *(v24 + 696);

    v25(&v50);

    sub_222CE2920(v50, v51, v52, v53);
  }

  OUTLINED_FUNCTION_8_2();
  (*(v26 + 712))(v5 & 1);

  static PhonemeDataParser.parse(from:)(a1, &v50);
  if (v50)
  {
    v48.n128_u64[0] = v50;
    v48.n128_u32[2] = v51;
    PhonemeData.asNameComponents(locale:)(a2, v11);
  }

  else
  {
    v27 = sub_222D5206C();
    __swift_storeEnumTagSinglePayload(v11, 1, 1, v27);
  }

  swift_getKeyPath();
  OUTLINED_FUNCTION_6_3();
  OUTLINED_FUNCTION_1_6(0, v28);

  v48 = OUTLINED_FUNCTION_7_3();
  v49 = v29;
  v30 = OUTLINED_FUNCTION_4_3();
  v31(v30);

  OUTLINED_FUNCTION_9_2();
  swift_getKeyPath();
  OUTLINED_FUNCTION_6_3();
  OUTLINED_FUNCTION_1_6(1, v32);

  v48 = OUTLINED_FUNCTION_7_3();
  v49 = v33;
  v34 = OUTLINED_FUNCTION_4_3();
  v35(v34);

  OUTLINED_FUNCTION_9_2();
  swift_getKeyPath();
  OUTLINED_FUNCTION_6_3();
  OUTLINED_FUNCTION_1_6(2, v36);

  v48 = OUTLINED_FUNCTION_7_3();
  v49 = v37;
  v38 = OUTLINED_FUNCTION_4_3();
  v39(v38);

  OUTLINED_FUNCTION_9_2();
  swift_getKeyPath();
  OUTLINED_FUNCTION_6_3();
  OUTLINED_FUNCTION_1_6(3, v40);

  v48 = OUTLINED_FUNCTION_7_3();
  v49 = v41;
  v42 = OUTLINED_FUNCTION_4_3();
  v43(v42);

  OUTLINED_FUNCTION_9_2();
  type metadata accessor for DialogPersonHandle();
  v44 = DialogPersonHandle.__allocating_init(handle:)([a1 personHandle]);
  (*(*v12 + 664))(v44);

  v45 = (*(v4 + 240))(v12);

  v46 = sub_222D521AC();
  (*(*(v46 - 8) + 8))(a2, v46);
  sub_222D0B1CC(v11);
  return v45;
}

uint64_t sub_222D0A25C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  v5 = v4;
  v71 = a2;
  v72 = a4;
  v69 = a3;
  v70 = a1;
  v6 = sub_222D5206C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v63 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03BFE8, &qword_222D54960);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v68 = &v63 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v63 - v14;
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v63 - v17;
  v19 = MEMORY[0x28223BE20](v16);
  v21 = &v63 - v20;
  v22 = MEMORY[0x28223BE20](v19);
  v24 = &v63 - v23;
  MEMORY[0x28223BE20](v22);
  v26 = &v63 - v25;
  v27 = [v5 nameComponents];
  if (v27)
  {
    v28 = v27;
    sub_222D5202C();

    v29 = 0;
  }

  else
  {
    v29 = 1;
  }

  __swift_storeEnumTagSinglePayload(v24, v29, 1, v6);
  sub_222D0B234(v24, v26);
  if (__swift_getEnumTagSinglePayload(v26, 1, v6))
  {
    result = sub_222D0B1CC(v26);
LABEL_6:
    v31 = v72;
    *v72 = 0u;
    v31[1] = 0u;
    return result;
  }

  v63 = *(v7 + 16);
  v63(v9, v26, v6);
  sub_222D0B1CC(v26);
  swift_getAtKeyPath();
  v64 = *(v7 + 8);
  v65 = v7 + 8;
  v64(v9, v6);
  v67 = sub_222D1523C(v73, v74);
  v33 = v32;

  v66 = v33;
  if (!v33)
  {
    goto LABEL_6;
  }

  v34 = [v5 nameComponents];
  if (v34)
  {
    v35 = v34;
    sub_222D5202C();

    v36 = 0;
  }

  else
  {
    v36 = 1;
  }

  v37 = 0xE900000000000065;
  __swift_storeEnumTagSinglePayload(v18, v36, 1, v6);
  sub_222D0B234(v18, v21);
  if (__swift_getEnumTagSinglePayload(v21, 1, v6))
  {
    goto LABEL_14;
  }

  sub_222D5201C();
  if (__swift_getEnumTagSinglePayload(v15, 1, v6))
  {
    sub_222D0B1CC(v15);
LABEL_14:
    sub_222D0B1CC(v21);
    goto LABEL_15;
  }

  v63(v9, v15, v6);
  sub_222D0B1CC(v15);
  sub_222D0B1CC(v21);
  swift_getAtKeyPath();
  v64(v9, v6);
  v39 = sub_222D1523C(v73, v74);
  v41 = v55;

  if (v41)
  {
    if (qword_280D3DB78 != -1)
    {
      swift_once();
    }

    sub_222D52C2C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03BDD8, &qword_222D53BD0);
    v56 = swift_allocObject();
    *(v56 + 16) = xmmword_222D53980;
    v59 = 0x6D614E6E65766967;
    v60 = v56;
    switch(v70)
    {
      case 1:
        v61 = 0x656C6464696DLL;
        goto LABEL_40;
      case 2:
        v61 = 0x796C696D6166;
LABEL_40:
        v59 = v61 & 0xFFFFFFFFFFFFLL | 0x614E000000000000;
        v37 = 0xEA0000000000656DLL;
        break;
      case 3:
        v37 = 0xE800000000000000;
        v59 = 0x656D616E6B63696ELL;
        break;
      default:
        break;
    }

    *(v56 + 56) = MEMORY[0x277D837D0];
    *(v56 + 64) = sub_222CDDCB0(v56, v57, v58);
    *(v60 + 32) = v59;
    *(v60 + 40) = v37;
    sub_222D5280C("Using phoneticRepresentation data for spoken version of '%s'", 60);
    goto LABEL_43;
  }

LABEL_15:
  v38 = v68;
  sub_222D0B2A4(v69, v68);
  if (__swift_getEnumTagSinglePayload(v38, 1, v6) == 1)
  {
    sub_222D0B1CC(v38);
LABEL_22:
    if (qword_280D3DB78 != -1)
    {
      swift_once();
    }

    sub_222D52C2C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03BDD8, &qword_222D53BD0);
    v48 = swift_allocObject();
    *(v48 + 16) = xmmword_222D53980;
    v51 = 0x6D614E6E65766967;
    v52 = v48;
    switch(v70)
    {
      case 1:
        v53 = 0x656C6464696DLL;
        goto LABEL_27;
      case 2:
        v53 = 0x796C696D6166;
LABEL_27:
        v51 = v53 & 0xFFFFFFFFFFFFLL | 0x614E000000000000;
        v37 = 0xEA0000000000656DLL;
        break;
      case 3:
        v37 = 0xE800000000000000;
        v51 = 0x656D616E6B63696ELL;
        break;
      default:
        break;
    }

    *(v48 + 56) = MEMORY[0x277D837D0];
    *(v48 + 64) = sub_222CDDCB0(v48, v49, v50);
    *(v52 + 32) = v51;
    *(v52 + 40) = v37;
    sub_222D5280C("Using nil for spoken version of '%s'", v63);

    v54 = v67;
    v39 = v67;
    v41 = result;
    goto LABEL_44;
  }

  swift_getAtKeyPath();
  v39 = sub_222D1523C(v73, v74);
  v41 = v40;

  v64(v38, v6);
  if (!v41)
  {
    goto LABEL_22;
  }

  if (qword_280D3DB78 != -1)
  {
    swift_once();
  }

  sub_222D52C2C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03BDD8, &qword_222D53BD0);
  v42 = swift_allocObject();
  *(v42 + 16) = xmmword_222D53980;
  v45 = 0x6D614E6E65766967;
  v46 = v42;
  switch(v70)
  {
    case 1:
      v47 = 0x656C6464696DLL;
      goto LABEL_36;
    case 2:
      v47 = 0x796C696D6166;
LABEL_36:
      v45 = v47 & 0xFFFFFFFFFFFFLL | 0x614E000000000000;
      v37 = 0xEA0000000000656DLL;
      break;
    case 3:
      v37 = 0xE800000000000000;
      v45 = 0x656D616E6B63696ELL;
      break;
    default:
      break;
  }

  *(v42 + 56) = MEMORY[0x277D837D0];
  *(v42 + 64) = sub_222CDDCB0(v42, v43, v44);
  *(v46 + 32) = v45;
  *(v46 + 40) = v37;
  sub_222D5280C("Using phonemeNameComponents data for spoken version of '%s'", 59);
LABEL_43:

  result = v66;
  v54 = v67;
LABEL_44:
  v62 = v72;
  *v72 = v54;
  v62[1] = result;
  v62[2] = v39;
  v62[3] = v41;
  return result;
}

uint64_t sub_222D0AA44(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  v6 = *a1;
  v7 = a1[1];

  return a5(v6, v7);
}

uint64_t sub_222D0AAA4()
{
  v0 = sub_222D51FBC();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x28223BE20](v0);
  v4 = &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v19 - v6;
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v19 - v9;
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v19 - v12;
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v19 - v15;
  __swift_allocate_value_buffer(v14, qword_27D03BFD0);
  __swift_project_value_buffer(v0, qword_27D03BFD0);
  sub_222D51F4C();
  sub_222D51F5C();
  sub_222D51F8C();
  v17 = *(v1 + 8);
  v17(v4, v0);
  v17(v7, v0);
  sub_222D51F9C();
  sub_222D51F8C();
  v17(v7, v0);
  v17(v10, v0);
  sub_222D51F6C();
  sub_222D51F8C();
  v17(v10, v0);
  v17(v13, v0);
  sub_222D51F7C();
  sub_222D51F8C();
  v17(v13, v0);
  return (v17)(v16, v0);
}

uint64_t sub_222D0AD14(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x2000000000000000) != 0)
  {
    v2 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v2)
  {
    v5 = 0;
    v14 = a2 & 0xFFFFFFFFFFFFFFLL;
    v12 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
    while (1)
    {
      if ((a2 & 0x1000000000000000) != 0)
      {
        sub_222D52DAC();
        v8 = v7;
      }

      else
      {
        if ((a2 & 0x2000000000000000) != 0)
        {
          v13[0] = a1;
          v13[1] = v14;
          if (*(v13 + v5) < 0)
          {
            switch(__clz(*(v13 + v5) ^ 0xFF))
            {
              case 0x1Au:
LABEL_21:
                v8 = 2;
                break;
              case 0x1Bu:
LABEL_22:
                v8 = 3;
                break;
              case 0x1Cu:
LABEL_23:
                v8 = 4;
                break;
              default:
                goto LABEL_14;
            }

            goto LABEL_15;
          }
        }

        else
        {
          v6 = v12;
          if ((a1 & 0x1000000000000000) == 0)
          {
            v6 = sub_222D52E2C();
          }

          if (*(v6 + v5) < 0)
          {
            switch(__clz(*(v6 + v5) ^ 0xFF))
            {
              case 0x1Au:
                goto LABEL_21;
              case 0x1Bu:
                goto LABEL_22;
              case 0x1Cu:
                goto LABEL_23;
              default:
                break;
            }
          }
        }

LABEL_14:
        v8 = 1;
      }

LABEL_15:
      if (qword_27D03BCE0 != -1)
      {
        swift_once();
      }

      v9 = sub_222D51FBC();
      __swift_project_value_buffer(v9, qword_27D03BFD0);
      v10 = sub_222D51FAC();
      if (v10)
      {
        v5 += v8;
        if (v5 < v2)
        {
          continue;
        }
      }

      return v10 & 1;
    }
  }

  v10 = 1;
  return v10 & 1;
}

uint64_t sub_222D0AF3C(uint64_t a1, unint64_t a2)
{
  v25 = sub_222D51FBC();
  MEMORY[0x28223BE20](v25);
  v7 = v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = 0;
  v24 = 0xE000000000000000;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v8 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v8 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v8)
  {
    v9 = a1;
    v19[1] = v2;
    v10 = 0;
    v20 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
    v21 = a2 & 0xFFFFFFFFFFFFFFLL;
    v11 = (v5 + 8);
    while (1)
    {
      if ((a2 & 0x1000000000000000) != 0)
      {
        sub_222D52DAC();
        v15 = v14;
      }

      else
      {
        if ((a2 & 0x2000000000000000) != 0)
        {
          v22[0] = v9;
          v22[1] = v21;
          if (*(v22 + v10) < 0)
          {
            OUTLINED_FUNCTION_2_4();
            switch(v17)
            {
              case 1:
LABEL_20:
                v15 = 2;
                break;
              case 2:
LABEL_21:
                v15 = 3;
                break;
              case 3:
LABEL_22:
                v15 = 4;
                break;
              default:
                goto LABEL_14;
            }

            goto LABEL_15;
          }
        }

        else
        {
          v12 = v20;
          if ((v9 & 0x1000000000000000) == 0)
          {
            v12 = sub_222D52E2C();
          }

          if (*(v12 + v10) < 0)
          {
            OUTLINED_FUNCTION_2_4();
            switch(v13)
            {
              case 1:
                goto LABEL_20;
              case 2:
                goto LABEL_21;
              case 3:
                goto LABEL_22;
              default:
                break;
            }
          }
        }

LABEL_14:
        v15 = 1;
      }

LABEL_15:
      sub_222D51F5C();
      v16 = sub_222D51FAC();
      (*v11)(v7, v25);
      if (v16)
      {
        sub_222D529BC();
      }

      v10 += v15;
      if (v10 >= v8)
      {

        return v23;
      }
    }
  }

  return 0;
}

uint64_t sub_222D0B1CC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03BFE8, &qword_222D54960);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_222D0B234(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03BFE8, &qword_222D54960);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_222D0B2A4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03BFE8, &qword_222D54960);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

id sub_222D0B314(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03C018, &qword_222D54A60);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_222D53970;
  *(inited + 32) = sub_222D5292C();
  *(inited + 40) = v9;
  *(inited + 48) = a1;
  *(inited + 56) = a2;
  *(inited + 64) = sub_222D5292C();
  *(inited + 72) = v10;
  *(inited + 80) = a3;
  *(inited + 88) = a4;

  sub_222D528BC();
  v11 = sub_222CDFAEC();

  v12 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
  return sub_222D3D850(0xD00000000000001FLL, 0x8000000222D5A270, 0, v11);
}

uint64_t sub_222D0B42C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v259 = a4;
  v245 = sub_222D5248C();
  OUTLINED_FUNCTION_113();
  v244 = v8;
  MEMORY[0x28223BE20](v9);
  v246 = v240 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03C008, &qword_222D55030);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v12);
  v247 = v240 - v13;
  v275 = sub_222D5244C();
  OUTLINED_FUNCTION_113();
  v265 = v14;
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_22_1();
  v274 = v16;
  OUTLINED_FUNCTION_20_2();
  MEMORY[0x28223BE20](v17);
  v273 = v240 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03C010, &unk_222D54A50);
  MEMORY[0x28223BE20](v19 - 8);
  OUTLINED_FUNCTION_22_1();
  OUTLINED_FUNCTION_16_3();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_24_1();
  OUTLINED_FUNCTION_16_3();
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_24_1();
  OUTLINED_FUNCTION_16_3();
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_24_1();
  OUTLINED_FUNCTION_16_3();
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_24_1();
  v281 = v24;
  OUTLINED_FUNCTION_20_2();
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_24_1();
  v280 = v26;
  OUTLINED_FUNCTION_20_2();
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_24_1();
  v272 = v28;
  OUTLINED_FUNCTION_20_2();
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_24_1();
  v279 = v30;
  OUTLINED_FUNCTION_20_2();
  MEMORY[0x28223BE20](v31);
  v278 = v240 - v32;
  v282 = sub_222D523CC();
  OUTLINED_FUNCTION_113();
  v34 = v33;
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_22_1();
  OUTLINED_FUNCTION_16_3();
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_24_1();
  v277 = v37;
  OUTLINED_FUNCTION_20_2();
  MEMORY[0x28223BE20](v38);
  v276 = v240 - v39;
  v258 = sub_222D5284C();
  OUTLINED_FUNCTION_113();
  v257 = v40;
  MEMORY[0x28223BE20](v41);
  v43 = v240 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280D3DB78 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_47_0();
  v44 = qword_280D3DB80;
  sub_222D5283C();
  sub_222D52C6C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03BDD8, &qword_222D53BD0);
  v45 = swift_allocObject();
  *(v45 + 16) = xmmword_222D53980;
  *(v45 + 56) = MEMORY[0x277D837D0];
  *(v45 + 64) = sub_222CDDCB0(v45, v46, v47);
  v248 = a2;
  *(v45 + 32) = a2;
  *(v45 + 40) = a3;

  v256 = v44;
  OUTLINED_FUNCTION_35_1();
  *(v48 - 256) = v43;
  sub_222D5281C(v49, v50, v51, v52, v53, v54, v43, v55, 64, 2, v45);

  if (a1 && (v56 = sub_222CE4BD8(a1, &selRef_status), v57))
  {
    v58 = v56;
    v59 = v57;
    if (v56 == v4 && v57 == 0xE700000000000000)
    {

LABEL_14:
      v241 = a1;
      v61 = sub_222CE4C38(a1);
      v62 = MEMORY[0x277D84F90];
      if (v61)
      {
        v62 = v61;
      }

      goto LABEL_23;
    }
  }

  else
  {

    v58 = 0;
    v59 = 0xE000000000000000;
  }

  if ((sub_222D5305C() & 1) == 0)
  {
    sub_222D52C5C();
    OUTLINED_FUNCTION_35_1();
    v64 = *(v63 - 256);
    sub_222D5282C();
    if (a1 && (v65 = sub_222CE4BD8(a1, &selRef_error), v66))
    {
      v67 = v66;
    }

    else
    {

      v65 = 0;
      v67 = 0xE000000000000000;
    }

    v68 = sub_222D0B314(v65, v67, v58, v59);

    (*(v257 + 8))(v64, v258);
    *v259 = v68;
    return swift_storeEnumTagMultiPayload();
  }

  if (a1)
  {
    goto LABEL_14;
  }

  v241 = 0;
  v62 = MEMORY[0x277D84F90];
LABEL_23:
  v240[2] = a3;
  v242 = v11;
  v70 = *(v62 + 16);
  v240[1] = v62;
  if (v70)
  {
    v71 = (v62 + 32);
    v250 = "Engine17CATResultProvider";
    v249 = "unfilteredContent";
    v243 = "unfilteredCaption";
    v255 = (v34 + 16);
    v254 = (v265 + 16);
    v253 = v265 + 8;
    v252 = (v34 + 8);
    v72 = MEMORY[0x277D84F90];
    v251 = v265 + 32;
    do
    {
      v73 = *v71;
      if (*(*v71 + 16))
      {

        v74 = OUTLINED_FUNCTION_23_2();
        v76 = sub_222CE1050(v74, v75);
        if (v77)
        {
          OUTLINED_FUNCTION_19_1(v76);
          v78 = OUTLINED_FUNCTION_7_4();
          if (OUTLINED_FUNCTION_41_1(v78, v79, v80))
          {
            if (v283 == 0x676F6C616964 && v284 == 0xE600000000000000)
            {

LABEL_37:
              if (*(v73 + 16) && (v83 = sub_222CE1050(25705, 0xE200000000000000), (v84 & 1) != 0) && (OUTLINED_FUNCTION_19_1(v83), v85 = OUTLINED_FUNCTION_7_4(), (OUTLINED_FUNCTION_41_1(v85, v86, v87) & 1) != 0))
              {
                v88 = v284;
                v269 = v283;
              }

              else
              {
                v269 = 0;
                v88 = 0xE000000000000000;
              }

              v268 = v88;
              if (*(v73 + 16) && (v89 = OUTLINED_FUNCTION_11_2(), v91 = sub_222CE1050(v89, v90), (v92 & 1) != 0) && (OUTLINED_FUNCTION_19_1(v91), OUTLINED_FUNCTION_7_4(), swift_dynamicCast()))
              {
                v271 = v283;
              }

              else
              {
                v271 = 0;
              }

              if (*(v73 + 16) && (v93 = OUTLINED_FUNCTION_10_1(), v95 = sub_222CE1050(v93, v94), (v96 & 1) != 0) && (OUTLINED_FUNCTION_19_1(v95), OUTLINED_FUNCTION_7_4(), swift_dynamicCast()))
              {
                v267 = v283;
              }

              else
              {
                v267 = 0;
              }

              if (*(v73 + 16) && (v97 = OUTLINED_FUNCTION_17_2(), v99 = sub_222CE1050(v97, v98), (v100 & 1) != 0) && (OUTLINED_FUNCTION_19_1(v99), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03BE48, &unk_222D53E50), OUTLINED_FUNCTION_7_4(), swift_dynamicCast()))
              {
                v101 = v283;
              }

              else
              {
                v101 = MEMORY[0x277D84F98];
              }

              if (*(v101 + 16) && (v102 = OUTLINED_FUNCTION_2_5(), v104 = sub_222CE1050(v102, v103), (v105 & 1) != 0) && (OUTLINED_FUNCTION_30_1(v104, *(v101 + 56)), v106 = OUTLINED_FUNCTION_7_4(), (OUTLINED_FUNCTION_41_1(v106, v107, v108) & 1) != 0))
              {
                v266 = v283;
              }

              else
              {
                v266 = 0;
              }

              if (*(v101 + 16))
              {
                OUTLINED_FUNCTION_3_5();
                OUTLINED_FUNCTION_12_0();
                v111 = sub_222CE1050(v109, v110);
                if (v112)
                {
                  OUTLINED_FUNCTION_30_1(v111, *(v101 + 56));
                  v113 = OUTLINED_FUNCTION_7_4();
                  OUTLINED_FUNCTION_41_1(v113, v114, v115);
                }
              }

              v270 = v72;
              if (v271)
              {
              }

              else
              {
                if (*(v101 + 16))
                {
                  v116 = OUTLINED_FUNCTION_1_7();
                  v118 = sub_222CE1050(v116, v117);
                  if (v119)
                  {
                    OUTLINED_FUNCTION_30_1(v118, *(v101 + 56));
                    v120 = OUTLINED_FUNCTION_7_4();
                    OUTLINED_FUNCTION_41_1(v120, v121, v122);
                  }
                }

                if (*(v101 + 16) && (v123 = OUTLINED_FUNCTION_0_3(), v125 = sub_222CE1050(v123, v124), (v126 & 1) != 0))
                {
                  OUTLINED_FUNCTION_30_1(v125, *(v101 + 56));
                }

                else
                {
                  OUTLINED_FUNCTION_37_1();
                }

                if (v286)
                {
                  OUTLINED_FUNCTION_7_4();
                  swift_dynamicCast();
                }

                else
                {
                  sub_222CDC59C(v285, &qword_27D03BDA8, &unk_222D55070);
                }
              }

              sub_222D523AC();
              sub_222D523AC();
              OUTLINED_FUNCTION_42_1();
              v127 = v282;
              __swift_storeEnumTagSinglePayload(v128, v129, v130, v282);
              OUTLINED_FUNCTION_42_1();
              __swift_storeEnumTagSinglePayload(v131, v132, v133, v127);
              if (*(v73 + 16) && (v134 = OUTLINED_FUNCTION_6_4(), v136 = sub_222CE1050(v134, v135), (v137 & 1) != 0))
              {
                OUTLINED_FUNCTION_19_1(v136);
                sub_222CDC59C(v285, &qword_27D03BDA8, &unk_222D55070);
                v138 = OUTLINED_FUNCTION_6_4();
                sub_222CE5C64(v138, v139, v73, v140);
                if (v286)
                {
                  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03BE48, &unk_222D53E50);
                  OUTLINED_FUNCTION_15_1();
                  if (swift_dynamicCast())
                  {
                    v141 = v283;
                  }

                  else
                  {
                    v141 = MEMORY[0x277D84F98];
                  }
                }

                else
                {
                  OUTLINED_FUNCTION_14_1();
                  v141 = MEMORY[0x277D84F98];
                }

                v142 = OUTLINED_FUNCTION_2_5();
                sub_222CE5C64(v142, v143, v141, v144);
                if (v286)
                {
                  OUTLINED_FUNCTION_15_1();
                  swift_dynamicCast();
                }

                else
                {
                  OUTLINED_FUNCTION_14_1();
                }

                OUTLINED_FUNCTION_3_5();
                OUTLINED_FUNCTION_12_0();
                sub_222CE5C64(v145, v146, v141, v147);
                if (v286)
                {
                  OUTLINED_FUNCTION_15_1();
                  if (swift_dynamicCast())
                  {
                    v148 = v284;
                    v266 = v283;
                    goto LABEL_93;
                  }
                }

                else
                {
                  OUTLINED_FUNCTION_14_1();
                }

                v266 = 0;
                v148 = 0xE000000000000000;
LABEL_93:
                v240[0] = v148;
                if (v271)
                {
                }

                else
                {
                  v149 = OUTLINED_FUNCTION_1_7();
                  sub_222CE5C64(v149, v150, v141, v151);
                  if (v286)
                  {
                    OUTLINED_FUNCTION_15_1();
                    swift_dynamicCast();
                  }

                  else
                  {
                    OUTLINED_FUNCTION_14_1();
                  }

                  v152 = OUTLINED_FUNCTION_0_3();
                  sub_222CE5C64(v152, v153, v141, v154);

                  if (v286)
                  {
                    OUTLINED_FUNCTION_15_1();
                    swift_dynamicCast();
                  }

                  else
                  {
                    sub_222CDC59C(v285, &qword_27D03BDA8, &unk_222D55070);
                  }
                }

                v155 = v272;
                sub_222D523AC();
                v156 = v278;
                sub_222CDC59C(v278, &qword_27D03C010, &unk_222D54A50);
                v157 = OUTLINED_FUNCTION_18_2();
                v158 = v282;
                __swift_storeEnumTagSinglePayload(v157, v159, v160, v282);
                sub_222D0D958(v155, v156, &qword_27D03C010, &unk_222D54A50);
                sub_222D523AC();
                sub_222CDC59C(v279, &qword_27D03C010, &unk_222D54A50);
                v161 = OUTLINED_FUNCTION_18_2();
                __swift_storeEnumTagSinglePayload(v161, v162, v163, v158);
                v164 = OUTLINED_FUNCTION_45();
                sub_222D0D958(v164, v165, &qword_27D03C010, &unk_222D54A50);
              }

              else
              {
                OUTLINED_FUNCTION_37_1();
                sub_222CDC59C(v285, &qword_27D03BDA8, &unk_222D55070);
              }

              OUTLINED_FUNCTION_42_1();
              __swift_storeEnumTagSinglePayload(v166, v167, v168, v282);
              if (*(v73 + 16) && (v169 = OUTLINED_FUNCTION_38_1(&v281), (v170 & 1) != 0))
              {
                OUTLINED_FUNCTION_19_1(v169);
                OUTLINED_FUNCTION_14_1();
                v171 = OUTLINED_FUNCTION_9_3();
                sub_222CE5C64(v171, v172, v73, v173);
                if (v286)
                {
                  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03BE48, &unk_222D53E50);
                  OUTLINED_FUNCTION_7_4();
                  if (swift_dynamicCast())
                  {
                    v174 = v283;
                    goto LABEL_110;
                  }
                }

                else
                {
                  OUTLINED_FUNCTION_14_1();
                }

                v174 = MEMORY[0x277D84F98];
LABEL_110:
                v175 = OUTLINED_FUNCTION_2_5();
                sub_222CE5C64(v175, v176, v174, v177);
                if (v286)
                {
                  v178 = OUTLINED_FUNCTION_7_4();
                  OUTLINED_FUNCTION_39_0(v178, v179, v180);
                }

                else
                {
                  OUTLINED_FUNCTION_14_1();
                }

                v181 = OUTLINED_FUNCTION_1_7();
                sub_222CE5C64(v181, v182, v174, v183);

                if (v286)
                {
                  v184 = OUTLINED_FUNCTION_7_4();
                  OUTLINED_FUNCTION_39_0(v184, v185, v186);
                }

                else
                {
                  OUTLINED_FUNCTION_14_1();
                }

                OUTLINED_FUNCTION_46_0();
                sub_222D523AC();
                sub_222CDC59C(v280, &qword_27D03C010, &unk_222D54A50);
                v187 = OUTLINED_FUNCTION_18_2();
                __swift_storeEnumTagSinglePayload(v187, v188, v189, v282);
                v190 = OUTLINED_FUNCTION_45();
                sub_222D0D958(v190, v191, &qword_27D03C010, &unk_222D54A50);
              }

              else
              {
                OUTLINED_FUNCTION_37_1();
                OUTLINED_FUNCTION_14_1();
              }

              OUTLINED_FUNCTION_42_1();
              __swift_storeEnumTagSinglePayload(v192, v193, v194, v195);
              if (*(v73 + 16) && (v196 = OUTLINED_FUNCTION_38_1(&v280), (v197 & 1) != 0))
              {
                OUTLINED_FUNCTION_19_1(v196);
                OUTLINED_FUNCTION_14_1();
                v198 = OUTLINED_FUNCTION_9_3();
                sub_222CE5C64(v198, v199, v73, v200);
                if (v286)
                {
                  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03BE48, &unk_222D53E50);
                  OUTLINED_FUNCTION_7_4();
                  if (swift_dynamicCast())
                  {
                    v201 = v283;
                    goto LABEL_125;
                  }
                }

                else
                {
                  OUTLINED_FUNCTION_14_1();
                }

                v201 = MEMORY[0x277D84F98];
LABEL_125:
                v202 = OUTLINED_FUNCTION_2_5();
                sub_222CE5C64(v202, v203, v201, v204);
                if (v286)
                {
                  v205 = OUTLINED_FUNCTION_7_4();
                  OUTLINED_FUNCTION_39_0(v205, v206, v207);
                }

                else
                {
                  OUTLINED_FUNCTION_14_1();
                }

                v208 = OUTLINED_FUNCTION_1_7();
                sub_222CE5C64(v208, v209, v201, v210);

                if (v286)
                {
                  v211 = OUTLINED_FUNCTION_7_4();
                  OUTLINED_FUNCTION_39_0(v211, v212, v213);
                }

                else
                {
                  OUTLINED_FUNCTION_14_1();
                }

                OUTLINED_FUNCTION_46_0();
                sub_222D523AC();
                sub_222CDC59C(v281, &qword_27D03C010, &unk_222D54A50);
                v214 = OUTLINED_FUNCTION_18_2();
                __swift_storeEnumTagSinglePayload(v214, v215, v216, v282);
                v217 = OUTLINED_FUNCTION_45();
                sub_222D0D958(v217, v218, &qword_27D03C010, &unk_222D54A50);
              }

              else
              {
                OUTLINED_FUNCTION_37_1();
                OUTLINED_FUNCTION_14_1();
              }

              if (*(v73 + 16) && (v219 = sub_222CE1050(0xD000000000000014, v243 | 0x8000000000000000), (v220 & 1) != 0))
              {
                OUTLINED_FUNCTION_19_1(v219);
              }

              else
              {
                OUTLINED_FUNCTION_37_1();
              }

              if (v286)
              {
                OUTLINED_FUNCTION_7_4();
                if (swift_dynamicCast())
                {
                  v271 = v283;
LABEL_141:
                  v221 = *v255;
                  v222 = v282;
                  (*v255)(v260, v276, v282);
                  sub_222D0D8E8(v278, v272);
                  sub_222D0D8E8(v280, v261);
                  sub_222D0D8E8(v281, v262);
                  v221(v263, v277, v222);
                  v223 = OUTLINED_FUNCTION_18_2();
                  __swift_storeEnumTagSinglePayload(v223, v224, v225, v222);
                  sub_222D0D8E8(v279, v264);
                  v226 = v273;
                  sub_222D5242C();
                  (*v254)(v274, v226, v275);
                  v72 = v270;
                  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                  {
                    sub_222D28428();
                    v72 = v232;
                  }

                  v227 = *(v72 + 16);
                  if (v227 >= *(v72 + 24) >> 1)
                  {
                    sub_222D28428();
                    v72 = v233;
                  }

                  v228 = v265;
                  v229 = v275;
                  (*(v265 + 8))(v273, v275);
                  sub_222CDC59C(v281, &qword_27D03C010, &unk_222D54A50);
                  sub_222CDC59C(v280, &qword_27D03C010, &unk_222D54A50);
                  sub_222CDC59C(v279, &qword_27D03C010, &unk_222D54A50);
                  sub_222CDC59C(v278, &qword_27D03C010, &unk_222D54A50);
                  v230 = *v252;
                  v231 = v282;
                  (*v252)(v277, v282);
                  v230(v276, v231);
                  *(v72 + 16) = v227 + 1;
                  (*(v228 + 32))(v72 + ((*(v228 + 80) + 32) & ~*(v228 + 80)) + *(v228 + 72) * v227, v274, v229);
                  goto LABEL_34;
                }
              }

              else
              {
                OUTLINED_FUNCTION_14_1();
              }

              v271 = 0;
              goto LABEL_141;
            }

            v82 = OUTLINED_FUNCTION_48_0(v283, v284, 0x676F6C616964);

            if (v82)
            {
              goto LABEL_37;
            }
          }
        }
      }

LABEL_34:
      ++v71;
      --v70;
    }

    while (v70);
  }

  (*(v244 + 104))(v246, *MEMORY[0x277D5BF60], v245);
  if (v241)
  {
    sub_222CEE3A4(v241);
  }

  sub_222D523DC();
  swift_storeEnumTagMultiPayload();
  sub_222D52C5C();
  OUTLINED_FUNCTION_35_1();
  v235 = *(v234 - 256);
  sub_222D5282C();
  (*(v257 + 8))(v235, v258);
  v236 = OUTLINED_FUNCTION_45();
  return sub_222D0D958(v236, v237, v238, v239);
}

id sub_222D0C8D4(void *a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  if (!a1 || (v4 = sub_222CE4BD8(a1, &selRef_status), !v5))
  {

    v6 = 0;
    v7 = 0xE000000000000000;
    goto LABEL_10;
  }

  v6 = v4;
  v7 = v5;
  if (v4 != 0x73736563637573 || v5 != 0xE700000000000000)
  {
LABEL_10:
    if ((sub_222D5305C() & 1) == 0)
    {
      if (v3 && (v285 = sub_222CE4BD8(v3, &selRef_error), v286))
      {
        v287 = v286;
      }

      else
      {

        v285 = 0;
        v287 = 0xE000000000000000;
      }

      v289 = sub_222D0B314(v285, v287, v6, v7);

      return v289;
    }
  }

  v9 = [objc_allocWithZone(MEMORY[0x277D052D0]) init];
  v324 = v9;
  v10 = sub_222D528FC();
  [v9 setPatternId_];

  v11 = sub_222CEE364(0, &qword_27D03BFF8, 0x277D052C8);
  v12 = MEMORY[0x277D84F90];
  v13 = sub_222D52B2C();
  [v9 setDialog_];

  if (v3)
  {
    v14 = sub_222CE4C38(v3);
    if (v14)
    {
      v12 = v14;
    }
  }

  v15 = *(v12 + 16);
  v321 = v3;
  if (!v15)
  {

    goto LABEL_143;
  }

  OUTLINED_FUNCTION_26_1();
  v325 = "unfilteredContent";
  v326 = "Engine17CATResultProvider";
  v322 = "unfilteredCaption";
  v323 = v11;
  v16 = 32;
  do
  {
    v17 = *(v12 + v16);
    if (!*(v17 + 16))
    {
      goto LABEL_25;
    }

    v18 = OUTLINED_FUNCTION_23_2();
    v20 = sub_222CE1050(v18, v19);
    if ((v21 & 1) == 0 || (v22 = sub_222CE4EC0(*(v17 + 56) + 32 * v20, &v329), OUTLINED_FUNCTION_5_4(v22, v23, v24, v25, v26, v27, v28, v29, v321, v322, v323, v324, v325, v326, v327), (swift_dynamicCast() & 1) == 0))
    {
LABEL_24:

      goto LABEL_25;
    }

    if (v327 == v9 && v328 == 0xE600000000000000)
    {
    }

    else
    {
      v31 = OUTLINED_FUNCTION_48_0(v327, v328, v9);

      if ((v31 & 1) == 0)
      {
        goto LABEL_24;
      }
    }

    v32 = [objc_allocWithZone(MEMORY[0x277D052C8]) init];
    sub_222CE5C64(25705, 0xE200000000000000, v17, &v329);
    if (!v330)
    {
      sub_222CDC59C(&v329, &qword_27D03BDA8, &unk_222D55070);
LABEL_32:
      OUTLINED_FUNCTION_31_1();
      goto LABEL_33;
    }

    OUTLINED_FUNCTION_5_4(v33, v34, v35, v36, v37, v38, v39, v40, v321, v322, v323, v324, v325, v326, v327);
    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_32;
    }

LABEL_33:
    v41 = sub_222D528FC();

    [v32 setDialogId_];

    v42 = OUTLINED_FUNCTION_11_2();
    sub_222CE5C64(v42, v43, v17, v44);
    if (v330)
    {
      v45 = OUTLINED_FUNCTION_44_1();
      v47 = sub_222CEE364(v45, v46, 0x277CCABB0);
      OUTLINED_FUNCTION_5_4(v47, v48, v49, v47, v50, v51, v52, v53, v321, v322, v323, v324, v325, v326, v327);
      if (swift_dynamicCast())
      {
        v54 = v327;
        goto LABEL_38;
      }
    }

    else
    {
      sub_222CDC59C(&v329, &qword_27D03BDA8, &unk_222D55070);
    }

    v55 = OUTLINED_FUNCTION_44_1();
    sub_222CEE364(v55, v56, 0x277CCABB0);
    v54 = sub_222D52C8C();
LABEL_38:
    [v32 setPrintOnly_];

    v57 = OUTLINED_FUNCTION_10_1();
    sub_222CE5C64(v57, v58, v17, v59);
    if (v330)
    {
      v60 = OUTLINED_FUNCTION_44_1();
      v62 = sub_222CEE364(v60, v61, 0x277CCABB0);
      OUTLINED_FUNCTION_5_4(v62, v63, v64, v62, v65, v66, v67, v68, v321, v322, v323, v324, v325, v326, v327);
      if (swift_dynamicCast())
      {
        v69 = v327;
        goto LABEL_43;
      }
    }

    else
    {
      sub_222CDC59C(&v329, &qword_27D03BDA8, &unk_222D55070);
    }

    v70 = OUTLINED_FUNCTION_44_1();
    sub_222CEE364(v70, v71, 0x277CCABB0);
    v69 = sub_222D52C8C();
LABEL_43:
    [v32 setSpokenOnly_];

    v72 = OUTLINED_FUNCTION_17_2();
    sub_222CE5C64(v72, v73, v17, v74);
    if (v330)
    {
      v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03BE48, &unk_222D53E50);
      OUTLINED_FUNCTION_5_4(v75, v76, v77, v75, v78, v79, v80, v81, v321, v322, v323, v324, v325, v326, v327);
      if (swift_dynamicCast())
      {
        v82 = v327;
        goto LABEL_48;
      }
    }

    else
    {
      sub_222CDC59C(&v329, &qword_27D03BDA8, &unk_222D55070);
    }

    v82 = MEMORY[0x277D84F98];
LABEL_48:
    v83 = OUTLINED_FUNCTION_2_5();
    sub_222CE5C64(v83, v84, v82, v85);
    if (!v330)
    {
      sub_222CDC59C(&v329, &qword_27D03BDA8, &unk_222D55070);
LABEL_52:
      OUTLINED_FUNCTION_25_1();
      goto LABEL_53;
    }

    OUTLINED_FUNCTION_5_4(v86, v87, v88, v89, v90, v91, v92, v93, v321, v322, v323, v324, v325, v326, v327);
    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_52;
    }

LABEL_53:
    sub_222D528FC();
    v94 = OUTLINED_FUNCTION_36_1();
    OUTLINED_FUNCTION_29_1(v94, sel_setFullPrint_);

    v95 = OUTLINED_FUNCTION_1_7();
    sub_222CE5C64(v95, v96, v82, v97);
    if (!v330)
    {
      sub_222CDC59C(&v329, &qword_27D03BDA8, &unk_222D55070);
LABEL_57:
      OUTLINED_FUNCTION_25_1();
      goto LABEL_58;
    }

    OUTLINED_FUNCTION_5_4(v98, v99, v100, v101, v102, v103, v104, v105, v321, v322, v323, v324, v325, v326, v327);
    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_57;
    }

LABEL_58:
    sub_222D528FC();
    v106 = OUTLINED_FUNCTION_36_1();
    OUTLINED_FUNCTION_29_1(v106, sel_setFullSpeak_);

    OUTLINED_FUNCTION_43_0();
    OUTLINED_FUNCTION_12_0();
    sub_222CE5C64(v107, v108, v82, v109);
    if (!v330)
    {
      sub_222CDC59C(&v329, &qword_27D03BDA8, &unk_222D55070);
LABEL_62:
      OUTLINED_FUNCTION_25_1();
      goto LABEL_63;
    }

    OUTLINED_FUNCTION_5_4(v110, v111, v112, v113, v114, v115, v116, v117, v321, v322, v323, v324, v325, v326, v327);
    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_62;
    }

LABEL_63:
    sub_222D528FC();
    v118 = OUTLINED_FUNCTION_36_1();
    OUTLINED_FUNCTION_29_1(v118, sel_setRedactedFullPrint_);

    OUTLINED_FUNCTION_43_0();
    OUTLINED_FUNCTION_8_3();
    sub_222CE5C64(v119, v120, v82, v121);

    if (!v330)
    {
      sub_222CDC59C(&v329, &qword_27D03BDA8, &unk_222D55070);
LABEL_67:
      OUTLINED_FUNCTION_31_1();
      goto LABEL_68;
    }

    OUTLINED_FUNCTION_5_4(v122, v123, v124, v125, v126, v127, v128, v129, v321, v322, v323, v324, v325, v326, v327);
    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_67;
    }

LABEL_68:
    sub_222D528FC();
    v130 = OUTLINED_FUNCTION_40();
    OUTLINED_FUNCTION_29_1(v130, sel_setRedactedFullSpeak_);

    v131 = OUTLINED_FUNCTION_6_4();
    sub_222CE5C64(v131, v132, v17, v133);
    v134 = v330;
    sub_222CDC59C(&v329, &qword_27D03BDA8, &unk_222D55070);
    if (!v134)
    {
      goto LABEL_95;
    }

    v135 = OUTLINED_FUNCTION_6_4();
    sub_222CE5C64(v135, v136, v17, v137);
    if (v330)
    {
      v138 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03BE48, &unk_222D53E50);
      OUTLINED_FUNCTION_5_4(v138, v139, v140, v138, v141, v142, v143, v144, v321, v322, v323, v324, v325, v326, v327);
      if (swift_dynamicCast())
      {
        v145 = v327;
        goto LABEL_74;
      }
    }

    else
    {
      sub_222CDC59C(&v329, &qword_27D03BDA8, &unk_222D55070);
    }

    v145 = MEMORY[0x277D84F98];
LABEL_74:
    v146 = OUTLINED_FUNCTION_2_5();
    sub_222CE5C64(v146, v147, v145, v148);
    if (!v330)
    {
      sub_222CDC59C(&v329, &qword_27D03BDA8, &unk_222D55070);
LABEL_78:
      OUTLINED_FUNCTION_25_1();
      goto LABEL_79;
    }

    OUTLINED_FUNCTION_5_4(v149, v150, v151, v152, v153, v154, v155, v156, v321, v322, v323, v324, v325, v326, v327);
    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_78;
    }

LABEL_79:
    sub_222D528FC();
    v157 = OUTLINED_FUNCTION_36_1();
    OUTLINED_FUNCTION_29_1(v157, sel_setSupportingPrint_);

    v158 = OUTLINED_FUNCTION_1_7();
    sub_222CE5C64(v158, v159, v145, v160);
    if (!v330)
    {
      sub_222CDC59C(&v329, &qword_27D03BDA8, &unk_222D55070);
LABEL_83:
      OUTLINED_FUNCTION_25_1();
      goto LABEL_84;
    }

    OUTLINED_FUNCTION_5_4(v161, v162, v163, v164, v165, v166, v167, v168, v321, v322, v323, v324, v325, v326, v327);
    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_83;
    }

LABEL_84:
    sub_222D528FC();
    v169 = OUTLINED_FUNCTION_36_1();
    OUTLINED_FUNCTION_29_1(v169, sel_setSupportingSpeak_);

    OUTLINED_FUNCTION_43_0();
    OUTLINED_FUNCTION_12_0();
    sub_222CE5C64(v170, v171, v145, v172);
    if (!v330)
    {
      sub_222CDC59C(&v329, &qword_27D03BDA8, &unk_222D55070);
LABEL_88:
      OUTLINED_FUNCTION_25_1();
      goto LABEL_89;
    }

    OUTLINED_FUNCTION_5_4(v173, v174, v175, v176, v177, v178, v179, v180, v321, v322, v323, v324, v325, v326, v327);
    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_88;
    }

LABEL_89:
    sub_222D528FC();
    v181 = OUTLINED_FUNCTION_36_1();
    OUTLINED_FUNCTION_29_1(v181, sel_setRedactedSupportingPrint_);

    OUTLINED_FUNCTION_43_0();
    OUTLINED_FUNCTION_8_3();
    sub_222CE5C64(v182, v183, v145, v184);

    if (v330)
    {
      OUTLINED_FUNCTION_5_4(v185, v186, v187, v188, v189, v190, v191, v192, v321, v322, v323, v324, v325, v326, v327);
      if (swift_dynamicCast())
      {
        goto LABEL_94;
      }
    }

    else
    {
      sub_222CDC59C(&v329, &qword_27D03BDA8, &unk_222D55070);
    }

    OUTLINED_FUNCTION_31_1();
LABEL_94:
    sub_222D528FC();
    v193 = OUTLINED_FUNCTION_40();
    OUTLINED_FUNCTION_29_1(v193, sel_setRedactedSupportingSpeak_);

LABEL_95:
    v194 = OUTLINED_FUNCTION_9_3();
    sub_222CE5C64(v194, v195, v17, v196);
    v197 = v330;
    sub_222CDC59C(&v329, &qword_27D03BDA8, &unk_222D55070);
    if (!v197)
    {
      goto LABEL_112;
    }

    v198 = OUTLINED_FUNCTION_9_3();
    sub_222CE5C64(v198, v199, v17, v200);
    if (v330)
    {
      v201 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03BE48, &unk_222D53E50);
      OUTLINED_FUNCTION_5_4(v201, v202, v203, v201, v204, v205, v206, v207, v321, v322, v323, v324, v325, v326, v327);
      if (swift_dynamicCast())
      {
        v208 = v327;
        goto LABEL_101;
      }
    }

    else
    {
      sub_222CDC59C(&v329, &qword_27D03BDA8, &unk_222D55070);
    }

    v208 = MEMORY[0x277D84F98];
LABEL_101:
    v209 = OUTLINED_FUNCTION_2_5();
    sub_222CE5C64(v209, v210, v208, v211);
    if (!v330)
    {
      sub_222CDC59C(&v329, &qword_27D03BDA8, &unk_222D55070);
LABEL_105:
      OUTLINED_FUNCTION_25_1();
      goto LABEL_106;
    }

    OUTLINED_FUNCTION_5_4(v212, v213, v214, v215, v216, v217, v218, v219, v321, v322, v323, v324, v325, v326, v327);
    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_105;
    }

LABEL_106:
    sub_222D528FC();
    v220 = OUTLINED_FUNCTION_36_1();
    OUTLINED_FUNCTION_29_1(v220, sel_setUnfilteredFullPrint_);

    v221 = OUTLINED_FUNCTION_1_7();
    sub_222CE5C64(v221, v222, v208, v223);

    if (v330)
    {
      OUTLINED_FUNCTION_5_4(v224, v225, v226, v227, v228, v229, v230, v231, v321, v322, v323, v324, v325, v326, v327);
      if (swift_dynamicCast())
      {
        goto LABEL_111;
      }
    }

    else
    {
      sub_222CDC59C(&v329, &qword_27D03BDA8, &unk_222D55070);
    }

    OUTLINED_FUNCTION_31_1();
LABEL_111:
    sub_222D528FC();
    v232 = OUTLINED_FUNCTION_40();
    OUTLINED_FUNCTION_29_1(v232, sel_setUnfilteredFullSpeak_);

LABEL_112:
    v233 = OUTLINED_FUNCTION_9_3();
    sub_222CE5C64(v233, v234, v17, v235);
    v236 = v330;
    sub_222CDC59C(&v329, &qword_27D03BDA8, &unk_222D55070);
    if (!v236)
    {
      goto LABEL_129;
    }

    v237 = OUTLINED_FUNCTION_9_3();
    sub_222CE5C64(v237, v238, v17, v239);
    if (v330)
    {
      v240 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03BE48, &unk_222D53E50);
      OUTLINED_FUNCTION_5_4(v240, v241, v242, v240, v243, v244, v245, v246, v321, v322, v323, v324, v325, v326, v327);
      if (swift_dynamicCast())
      {
        v247 = v327;
        goto LABEL_118;
      }
    }

    else
    {
      sub_222CDC59C(&v329, &qword_27D03BDA8, &unk_222D55070);
    }

    v247 = MEMORY[0x277D84F98];
LABEL_118:
    v248 = OUTLINED_FUNCTION_2_5();
    sub_222CE5C64(v248, v249, v247, v250);
    if (!v330)
    {
      sub_222CDC59C(&v329, &qword_27D03BDA8, &unk_222D55070);
LABEL_122:
      OUTLINED_FUNCTION_25_1();
      goto LABEL_123;
    }

    OUTLINED_FUNCTION_5_4(v251, v252, v253, v254, v255, v256, v257, v258, v321, v322, v323, v324, v325, v326, v327);
    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_122;
    }

LABEL_123:
    sub_222D528FC();
    v259 = OUTLINED_FUNCTION_36_1();
    OUTLINED_FUNCTION_29_1(v259, sel_setUnfilteredSupportingPrint_);

    v260 = OUTLINED_FUNCTION_1_7();
    sub_222CE5C64(v260, v261, v247, v262);

    if (v330)
    {
      OUTLINED_FUNCTION_5_4(v263, v264, v265, v266, v267, v268, v269, v270, v321, v322, v323, v324, v325, v326, v327);
      if (swift_dynamicCast())
      {
        goto LABEL_128;
      }
    }

    else
    {
      sub_222CDC59C(&v329, &qword_27D03BDA8, &unk_222D55070);
    }

    OUTLINED_FUNCTION_31_1();
LABEL_128:
    sub_222D528FC();
    v271 = OUTLINED_FUNCTION_40();
    OUTLINED_FUNCTION_29_1(v271, sel_setUnfilteredSupportingSpeak_);

LABEL_129:
    sub_222CE5C64(0xD000000000000014, v322 | 0x8000000000000000, v17, &v329);

    if (!v330)
    {
      sub_222CDC59C(&v329, &qword_27D03BDA8, &unk_222D55070);
LABEL_133:
      v280 = 0;
      goto LABEL_134;
    }

    OUTLINED_FUNCTION_5_4(v272, v273, v274, v275, v276, v277, v278, v279, v321, v322, v323, v324, v325, v326, v327);
    if (!swift_dynamicCast())
    {
      goto LABEL_133;
    }

    v280 = v327;
LABEL_134:
    [v32 setIsApprovedForGrading_];
    v281 = v32;
    v282 = [v324 dialog];
    v283 = sub_222D52B3C();

    *&v329 = v283;
    MEMORY[0x223DCB5F0]();
    if (*((v329 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v329 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_222D52B5C();
    }

    sub_222D52B7C();
    v9 = v329;
    v284 = sub_222D52B2C();

    [v324 setDialog_];

    OUTLINED_FUNCTION_26_1();
LABEL_25:
    v16 += 8;
    --v15;
  }

  while (v15);

  v3 = v321;
LABEL_143:
  v290 = MEMORY[0x277D84F90];
  if (v3)
  {
    result = sub_222CE4C38(v3);
    if (result)
    {
      v290 = result;
    }
  }

  v291 = *(v290 + 16);
  if (!v291)
  {

LABEL_161:
    v289 = v324;
    goto LABEL_162;
  }

  v292 = 0;
  while (2)
  {
    if (v292 >= *(v290 + 16))
    {
      __break(1u);
      return result;
    }

    v293 = *(v290 + 8 * v292 + 32);
    if (!*(v293 + 16))
    {
      goto LABEL_158;
    }

    v294 = OUTLINED_FUNCTION_23_2();
    v296 = sub_222CE1050(v294, v295);
    if ((v297 & 1) == 0)
    {
      goto LABEL_157;
    }

    v298 = sub_222CE4EC0(*(v293 + 56) + 32 * v296, &v329);
    v306 = OUTLINED_FUNCTION_5_4(v298, v299, v300, v301, v302, v303, v304, v305, v321, v322, v323, v324, v325, v326, v327);
    if ((OUTLINED_FUNCTION_39_0(v306, v307, v308) & 1) == 0)
    {
      goto LABEL_157;
    }

    if (v327 != 0x6C6175736976 || v328 != 0xE600000000000000)
    {
      v9 = OUTLINED_FUNCTION_48_0(v327, v328, 0x6C6175736976);

      if (v9)
      {
        goto LABEL_167;
      }

LABEL_157:

LABEL_158:
      if (v291 == ++v292)
      {

        v3 = v321;
        goto LABEL_161;
      }

      continue;
    }

    break;
  }

LABEL_167:

  sub_222CE5C64(1635017060, 0xE400000000000000, v293, &v329);

  v3 = v321;
  if (v330)
  {
    OUTLINED_FUNCTION_5_4(v310, v311, v312, MEMORY[0x277D837D0], v313, v314, v315, v316, v321, v322, v323, v324, v325, v326, v327);
    if (swift_dynamicCast())
    {
      v289 = v324;
      goto LABEL_172;
    }
  }

  else
  {
    sub_222CDC59C(&v329, &qword_27D03BDA8, &unk_222D55070);
  }

  v289 = v324;
  OUTLINED_FUNCTION_31_1();
LABEL_172:
  v9 = sub_222D5211C();
  v318 = v317;

  if (v318 >> 60 == 15)
  {
    v319 = 0;
  }

  else
  {
    v319 = v9;
  }

  if (v318 >> 60 == 15)
  {
    v320 = 0xC000000000000000;
  }

  else
  {
    v320 = v318;
  }

  sub_222D0D874(v319, v320, v289);
LABEL_162:
  if (v3)
  {
    sub_222CEE3A4(v3);
  }

  sub_222D5288C();
  OUTLINED_FUNCTION_40();
  [v289 setMeta_];

  return v289;
}

void sub_222D0D874(uint64_t a1, unint64_t a2, void *a3)
{
  v6 = sub_222D5212C();
  sub_222CE6210(a1, a2);
  [a3 setVisual_];
}

uint64_t sub_222D0D8E8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03C010, &unk_222D54A50);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_222D0D958(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_34();
  (*(v6 + 32))(a2, a1);
  return a2;
}

uint64_t OUTLINED_FUNCTION_39_0(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return swift_dynamicCast();
}

uint64_t CATWrapper.__allocating_init(templateDir:options:globals:)()
{
  v0 = swift_allocObject();
  CATWrapper.init(templateDir:options:globals:)();
  return v0;
}

void sub_222D0DA34()
{
  OUTLINED_FUNCTION_73();
  v1 = v0;
  v57 = v2;
  v58 = v3;
  v55 = v4;
  v6 = v5;
  v8 = v7;
  sub_222D5284C();
  OUTLINED_FUNCTION_113();
  v59 = v10;
  v60 = v9;
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v9);
  v56 = &v50 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v50 - v14;
  if (qword_280D3DB78 != -1)
  {
    OUTLINED_FUNCTION_0(&qword_280D3DB78);
  }

  v16 = qword_280D3DB80;
  sub_222D5283C();
  sub_222D52C6C();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03BDD8, &qword_222D53BD0);
  v18 = OUTLINED_FUNCTION_3_0(v17);
  v52 = xmmword_222D53980;
  *(v18 + 16) = xmmword_222D53980;
  *(v18 + 56) = MEMORY[0x277D837D0];
  v21 = sub_222CDDCB0(v18, v19, v20);
  *(v18 + 64) = v21;
  *(v18 + 32) = v8;
  *(v18 + 40) = v6;

  OUTLINED_FUNCTION_8_4();
  OUTLINED_FUNCTION_10_2();
  sub_222D5281C(v22, v23, v24, v25, v26, v27, v28, v29);

  v54 = sub_222CDF250(v63, v55, *(v1 + OBJC_IVAR____TtC16SiriDialogEngine10CATWrapper_mockGlobals), 1);
  v55 = v30;
  v31 = v1;
  v32 = v8;
  v33 = sub_222D52C2C();
  v34 = OUTLINED_FUNCTION_3_0(v17);
  *(v34 + 16) = v52;
  *(v34 + 56) = MEMORY[0x277D837D0];
  *(v34 + 64) = v21;
  *(v34 + 32) = v32;
  *(v34 + 40) = v6;

  sub_222D5280C("Invoking CATExecutor (async) for catID: %@", 44, 2, &dword_222CDA000, v16, v33, v34);

  sub_222D52C7C();
  OUTLINED_FUNCTION_2_6();
  v35 = v15;
  v53 = v15;
  sub_222D5281C(v36, &dword_222CDA000, v16, "CATWrapperAsyncExecute", 22, 2, v15, "Parameter conversion completed");
  *&v52 = type metadata accessor for CATExecutor();
  v51 = OBJC_IVAR____TtC16SiriDialogEngine10CATWrapper_templateDir;
  sub_222CE3120(v63, v62);
  v37 = v31;
  v61 = *(v31 + OBJC_IVAR____TtC16SiriDialogEngine10CATWrapper_options);
  v38 = v59;
  v39 = v60;
  v40 = v56;
  (*(v59 + 16))(v56, v35, v60);
  v41 = (*(v38 + 80) + 16) & ~*(v38 + 80);
  v42 = (v12 + v41 + 7) & 0xFFFFFFFFFFFFFFF8;
  v43 = swift_allocObject();
  (*(v38 + 32))(v43 + v41, v40, v39);
  v44 = (v43 + v42);
  *v44 = v32;
  v44[1] = v6;
  v45 = (v43 + ((v42 + 23) & 0xFFFFFFFFFFFFFFF8));
  v46 = v58;
  *v45 = v57;
  v45[1] = v46;

  v47 = v6;
  v48 = v55;
  static CATExecutor.execute(templateDir:catId:parameters:globals:callback:options:_:)(v37 + v51, v32, v47, v54, v55, v62, &v61, sub_222D0DF78, v43, v49, v50, v51, v52, *(&v52 + 1), v53, v54, v55, v56, v57, v58, v59);

  sub_222CDD130(v62, &qword_27D03C020, &unk_222D54A80);
  __swift_destroy_boxed_opaque_existential_1Tm(v63);
  (*(v38 + 8))(v53, v39);
  OUTLINED_FUNCTION_74();
}

uint64_t sub_222D0DE28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t))
{
  sub_222D52C5C();
  if (qword_280D3DB78 != -1)
  {
    swift_once();
  }

  v9 = qword_280D3DB80;
  sub_222D5282C();
  v10 = sub_222D52C2C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03BDD8, &qword_222D53BD0);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_222D53980;
  *(v11 + 56) = MEMORY[0x277D837D0];
  *(v11 + 64) = sub_222CDDCB0(v11, v12, v13);
  *(v11 + 32) = a3;
  *(v11 + 40) = a4;

  sub_222D5280C("CATExecutor (async) completed for catID: %@", 45, 2, &dword_222CDA000, v9, v10, v11);

  return a5(a1);
}

uint64_t sub_222D0DF78(uint64_t a1)
{
  v3 = sub_222D5284C();
  OUTLINED_FUNCTION_24_2(v3);
  v5 = v4;
  v7 = v6;
  v8 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v9 = (*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = (v9 + 23) & 0xFFFFFFFFFFFFFFF8;
  v11 = (v1 + v9);
  v12 = *v11;
  v13 = v11[1];
  v14 = *(v1 + v10);

  return sub_222D0DE28(a1, v1 + v8, v12, v13, v14);
}

uint64_t sub_222D0E020(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  OUTLINED_FUNCTION_23();
  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_222D0E054()
{
  OUTLINED_FUNCTION_11();
  v1 = *(v0 + 48);
  v2 = *(v0 + 24);
  v3 = swift_task_alloc();
  *(v0 + 56) = v3;
  v4 = *(v0 + 32);
  *(v3 + 16) = v1;
  *(v3 + 24) = v2;
  *(v3 + 32) = v4;
  v5 = swift_task_alloc();
  *(v0 + 64) = v5;
  sub_222D5241C();
  *v5 = v0;
  v5[1] = sub_222D0E154;
  OUTLINED_FUNCTION_23();

  return MEMORY[0x2822008A0]();
}

uint64_t sub_222D0E154()
{
  OUTLINED_FUNCTION_14_2();
  OUTLINED_FUNCTION_15_2();
  v3 = v2;
  OUTLINED_FUNCTION_9_4();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_5_5();
  *v6 = v5;
  *(v3 + 72) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_23();

    return MEMORY[0x2822009F8](v7, v8, v9);
  }

  else
  {

    OUTLINED_FUNCTION_13();

    return v10();
  }
}

uint64_t sub_222D0E274()
{
  OUTLINED_FUNCTION_14_2();

  OUTLINED_FUNCTION_13();

  return v0();
}

uint64_t sub_222D0E2D0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03C030, &unk_222D54B30);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v9 - v4;
  (*(v3 + 16))(&v9 - v4, a1, v2);
  v6 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v7 = swift_allocObject();
  (*(v3 + 32))(v7 + v6, v5, v2);
  sub_222D0DA34();
}

uint64_t sub_222D0E444(uint64_t a1)
{
  v2 = sub_222D5241C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03C008, &qword_222D55030);
  MEMORY[0x28223BE20](v6);
  v8 = (v10 - v7);
  sub_222CDD5C0(a1, v10 - v7, &qword_27D03C008, &qword_222D55030);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10[1] = *v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03C030, &unk_222D54B30);
    return sub_222D52B9C();
  }

  else
  {
    (*(v3 + 32))(v5, v8, v2);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03C030, &unk_222D54B30);
    return sub_222D52BAC();
  }
}

void sub_222D0E5F4()
{
  OUTLINED_FUNCTION_73();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v42 = v7;
  sub_222D5284C();
  OUTLINED_FUNCTION_113();
  v43 = v9;
  v44 = v8;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_6_5();
  v12 = v11 - v10;
  if (qword_280D3DB78 != -1)
  {
    OUTLINED_FUNCTION_0(&qword_280D3DB78);
  }

  v13 = qword_280D3DB80;
  sub_222D5283C();
  sub_222D52C6C();
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03BDD8, &qword_222D53BD0);
  v14 = OUTLINED_FUNCTION_3_0(v41);
  *(v14 + 16) = xmmword_222D53980;
  *(v14 + 56) = MEMORY[0x277D837D0];
  v17 = sub_222CDDCB0(v14, v15, v16);
  *(v14 + 64) = v17;
  *(v14 + 32) = v6;
  *(v14 + 40) = v4;

  OUTLINED_FUNCTION_8_4();
  OUTLINED_FUNCTION_10_2();
  sub_222D5281C(v18, v19, v20, v21, v22, v23, v24, v25);

  sub_222CDF250(v46, v2, *(v0 + OBJC_IVAR____TtC16SiriDialogEngine10CATWrapper_mockGlobals), 1);
  v40 = v26;
  v27 = v6;
  v28 = sub_222D52C2C();
  v29 = OUTLINED_FUNCTION_3_0(v41);
  *(v29 + 16) = xmmword_222D53980;
  *(v29 + 56) = MEMORY[0x277D837D0];
  *(v29 + 64) = v17;
  *(v29 + 32) = v27;
  *(v29 + 40) = v4;

  sub_222D5280C("Invoking CATExecutor (sync) for catID: %@", 43, 2, &dword_222CDA000, v13, v28, v29);

  sub_222D52C7C();
  OUTLINED_FUNCTION_2_6();
  OUTLINED_FUNCTION_10_2();
  sub_222D5281C(v30, v31, v32, v33, v34, v35, v36, v37);
  type metadata accessor for CATExecutor();
  sub_222CE3120(v46, v45);
  static CATExecutor.execute(templateDir:catId:parameters:globals:callback:options:)(v27, v4, v42);

  sub_222CDD130(v45, &qword_27D03C020, &unk_222D54A80);
  sub_222D52C5C();
  OUTLINED_FUNCTION_10_2();
  sub_222D5282C();
  v38 = sub_222D52C2C();
  v39 = OUTLINED_FUNCTION_3_0(v41);
  *(v39 + 16) = xmmword_222D53980;
  *(v39 + 56) = MEMORY[0x277D837D0];
  *(v39 + 64) = v17;
  *(v39 + 32) = v27;
  *(v39 + 40) = v4;

  sub_222D5280C("CATExecutor (sync) completed for catID: %@", 44, 2, &dword_222CDA000, v13, v38, v39);

  __swift_destroy_boxed_opaque_existential_1Tm(v46);
  (*(v43 + 8))(v12, v44);
  OUTLINED_FUNCTION_74();
}

void sub_222D0E95C()
{
  OUTLINED_FUNCTION_73();
  v57 = v1;
  v54 = v2;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03C028, &qword_222D54A90);
  v10 = OUTLINED_FUNCTION_52(v9);
  MEMORY[0x28223BE20](v10);
  v55 = v53 - v11;
  sub_222D5284C();
  OUTLINED_FUNCTION_113();
  v58 = v13;
  v59 = v12;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_6_5();
  v16 = v15 - v14;
  if (qword_280D3DB78 != -1)
  {
    OUTLINED_FUNCTION_0(&qword_280D3DB78);
  }

  qword_280D3DB80;
  sub_222D5283C();
  sub_222D52C6C();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03BDD8, &qword_222D53BD0);
  v18 = OUTLINED_FUNCTION_3_0(v17);
  *(v18 + 16) = xmmword_222D53980;
  *(v18 + 56) = MEMORY[0x277D837D0];
  *(v18 + 64) = sub_222CDDCB0(v18, v19, v20);
  v21 = v8;
  *(v18 + 32) = v8;
  *(v18 + 40) = v6;

  OUTLINED_FUNCTION_31_2();
  OUTLINED_FUNCTION_10_2();
  sub_222D5281C(v22, v23, v24, v25, v26, v27, v28, v29);

  v53[0] = sub_222CDF250(v61, v4, *(v0 + OBJC_IVAR____TtC16SiriDialogEngine10CATWrapper_mockGlobals), 1);
  v31 = v30;
  if (qword_280D3B218 != -1)
  {
    OUTLINED_FUNCTION_4_5(&qword_280D3B218);
  }

  v56 = v0;
  v32 = sub_222D5286C();
  v33 = __swift_project_value_buffer(v32, qword_280D3DDA8);

  v53[1] = v33;
  v34 = sub_222D5285C();
  v35 = sub_222D52C2C();

  if (os_log_type_enabled(v34, v35))
  {
    v36 = OUTLINED_FUNCTION_26_2();
    *&v60[0] = OUTLINED_FUNCTION_25_2();
    *v36 = 136315138;
    *(v36 + 4) = sub_222CE548C(v21, v6, v60);
    _os_log_impl(&dword_222CDA000, v34, v35, "Invoking CATExecutor (completion) for patternId: %s", v36, 0xCu);
    OUTLINED_FUNCTION_7_5();
    OUTLINED_FUNCTION_17_3();
  }

  sub_222D52C7C();
  OUTLINED_FUNCTION_2_6();
  OUTLINED_FUNCTION_10_2();
  sub_222D5281C(v37, v38, v39, v40, v41, v42, v43, v44);
  v45 = sub_222D52BCC();
  v46 = v55;
  __swift_storeEnumTagSinglePayload(v55, 1, 1, v45);
  sub_222CE3120(v61, v60);
  v47 = swift_allocObject();
  v47[2] = 0;
  v47[3] = 0;
  v47[4] = v56;
  v47[5] = v21;
  v48 = v53[0];
  v47[6] = v6;
  v47[7] = v48;
  v47[8] = v31;
  sub_222CE2D34(v60, (v47 + 9));
  v49 = v57;
  v47[14] = v54;
  v47[15] = v49;

  v50 = v31;

  sub_222D0F340(0, 0, v46, &unk_222D54AA0, v47);

  sub_222D52C5C();
  OUTLINED_FUNCTION_10_2();
  sub_222D5282C();

  v51 = sub_222D5285C();
  v52 = sub_222D52C2C();

  if (os_log_type_enabled(v51, v52))
  {
    OUTLINED_FUNCTION_26_2();
    *&v60[0] = OUTLINED_FUNCTION_20_3();
    *v49 = 136315138;
    *(v49 + 4) = sub_222CE548C(v21, v6, v60);
    _os_log_impl(&dword_222CDA000, v51, v52, "CATExecutor (completion) completed for patternId: %s", v49, 0xCu);
    OUTLINED_FUNCTION_7_5();
    OUTLINED_FUNCTION_17_3();
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v61);
  (*(v58 + 8))(v16, v59);
  OUTLINED_FUNCTION_74();
}

uint64_t sub_222D0EDFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 120) = v11;
  *(v8 + 104) = v10;
  *(v8 + 88) = a7;
  *(v8 + 96) = a8;
  *(v8 + 72) = a5;
  *(v8 + 80) = a6;
  *(v8 + 64) = a4;
  return MEMORY[0x2822009F8](sub_222D0EE38, 0, 0);
}

uint64_t sub_222D0EE38()
{
  OUTLINED_FUNCTION_11();
  v1 = v0[13];
  v2 = v0[8];
  type metadata accessor for CATResponse();
  v3 = OBJC_IVAR____TtC16SiriDialogEngine10CATWrapper_templateDir;
  sub_222CE3120(v1, (v0 + 2));
  v0[7] = *(v2 + OBJC_IVAR____TtC16SiriDialogEngine10CATWrapper_options);
  v4 = swift_task_alloc();
  v0[16] = v4;
  *v4 = v0;
  v4[1] = sub_222D0EF24;
  v5 = v0[11];
  v6 = v0[12];
  v7 = v0[9];
  v8 = v0[10];

  return static CATResponse.executePattern(templateDir:patternId:parameters:globals:callback:options:)(v2 + v3, v7, v8, v5, v6, (v0 + 2), v0 + 7);
}

uint64_t sub_222D0EF24()
{
  OUTLINED_FUNCTION_11();
  v3 = v2;
  OUTLINED_FUNCTION_15_2();
  v5 = v4;
  OUTLINED_FUNCTION_9_4();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_5_5();
  *v8 = v7;
  *(v5 + 136) = v0;

  if (!v0)
  {
    *(v5 + 144) = v3;
  }

  sub_222CDD130(v5 + 16, &qword_27D03C020, &unk_222D54A80);
  OUTLINED_FUNCTION_23();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_222D0F060()
{
  OUTLINED_FUNCTION_11();
  v1 = *(v0 + 144);
  v2 = *(v0 + 112);
  v3 = v1;
  v2(v1, 0);

  OUTLINED_FUNCTION_13();

  return v4();
}

uint64_t sub_222D0F0E0()
{
  OUTLINED_FUNCTION_11();
  v1 = *(v0 + 136);
  v2 = *(v0 + 112);
  v3 = v1;
  v2(v1, 1);

  OUTLINED_FUNCTION_13();

  return v4();
}

uint64_t sub_222D0F168(uint64_t a1)
{
  v14 = v1[2];
  v12 = v1[3];
  v3 = v1[4];
  v4 = v1[5];
  v5 = v1[6];
  v6 = v1[7];
  v7 = v1[8];
  v8 = swift_task_alloc();
  v9 = OUTLINED_FUNCTION_12_1(v8);
  *v9 = v10;
  v9[1] = sub_222D0F260;

  return sub_222D0EDFC(a1, v14, v12, v3, v4, v5, v6, v7);
}

uint64_t sub_222D0F260()
{
  OUTLINED_FUNCTION_14_2();
  OUTLINED_FUNCTION_15_2();
  v1 = *v0;
  OUTLINED_FUNCTION_5_5();
  *v2 = v1;

  OUTLINED_FUNCTION_13();

  return v3();
}

uint64_t sub_222D0F340(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03C028, &qword_222D54A90);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v24 - v10;
  sub_222CDD5C0(a3, v24 - v10, &qword_27D03C028, &qword_222D54A90);
  v12 = sub_222D52BCC();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v11, 1, v12);

  if (EnumTagSinglePayload == 1)
  {
    sub_222CDD130(v11, &qword_27D03C028, &qword_222D54A90);
  }

  else
  {
    sub_222D52BBC();
    (*(*(v12 - 8) + 8))(v11, v12);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_222D52B8C();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = sub_222D5299C() + 32;
      v19 = swift_allocObject();
      *(v19 + 16) = a4;
      *(v19 + 24) = a5;

      if (v17 | v15)
      {
        v25[0] = 0;
        v25[1] = 0;
        v20 = v25;
        v25[2] = v15;
        v25[3] = v17;
      }

      else
      {
        v20 = 0;
      }

      v24[1] = 7;
      v24[2] = v20;
      v24[3] = v18;
      v22 = swift_task_create();

      sub_222CDD130(a3, &qword_27D03C028, &qword_222D54A90);

      return v22;
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

  sub_222CDD130(a3, &qword_27D03C028, &qword_222D54A90);
  v21 = swift_allocObject();
  *(v21 + 16) = a4;
  *(v21 + 24) = a5;
  if (v17 | v15)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v15;
    v25[7] = v17;
  }

  return swift_task_create();
}

uint64_t sub_222D0F624()
{
  OUTLINED_FUNCTION_33_2();
  sub_222D52C5C();
  OUTLINED_FUNCTION_10_2();
  sub_222D5282C();

  v2 = sub_222D5285C();
  v3 = sub_222D52C2C();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = v0[25];
    OUTLINED_FUNCTION_26_2();
    v5 = OUTLINED_FUNCTION_20_3();
    *(v1 + 4) = OUTLINED_FUNCTION_18_3(4.8149e-34, v5, v6, v7, v8, v9, v10, v11, v12, v5);
    OUTLINED_FUNCTION_19_2(&dword_222CDA000, v13, v14, "CATExecutor (async) completed for patternId: %s");
    OUTLINED_FUNCTION_7_5();
    OUTLINED_FUNCTION_17_3();
  }

  else
  {
    v15 = v0[25];
  }

  v17 = v0[21];
  v16 = v0[22];
  v18 = v0[20];
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  (*(v17 + 8))(v16, v18);

  OUTLINED_FUNCTION_13();

  return v19();
}

uint64_t sub_222D0F780()
{
  OUTLINED_FUNCTION_14_2();
  v1[15] = v2;
  v1[16] = v0;
  v1[13] = v3;
  v1[14] = v4;
  v5 = sub_222D5284C();
  v1[17] = v5;
  OUTLINED_FUNCTION_24_2(v5);
  v1[18] = v6;
  v1[19] = swift_task_alloc();
  OUTLINED_FUNCTION_23();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_222D0F834()
{
  if (qword_280D3DB78 != -1)
  {
    OUTLINED_FUNCTION_0(&qword_280D3DB78);
  }

  v2 = v0[13];
  v1 = v0[14];
  v3 = qword_280D3DB80;
  v0[20] = qword_280D3DB80;
  v4 = v3;
  sub_222D5283C();
  sub_222D52C6C();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03BDD8, &qword_222D53BD0);
  v6 = OUTLINED_FUNCTION_3_0(v5);
  *(v6 + 16) = xmmword_222D53980;
  *(v6 + 56) = MEMORY[0x277D837D0];
  *(v6 + 64) = sub_222CDDCB0(v6, v7, v8);
  *(v6 + 32) = v2;
  *(v6 + 40) = v1;

  OUTLINED_FUNCTION_8_4();
  OUTLINED_FUNCTION_10_2();
  sub_222D5281C(v9, v10, v11, v12, v13, v14, v15, v16);

  v0[21] = OUTLINED_FUNCTION_35_2(OBJC_IVAR____TtC16SiriDialogEngine10CATWrapper_mockGlobals);
  v0[22] = v17;
  if (qword_280D3B218 != -1)
  {
    OUTLINED_FUNCTION_4_5(&qword_280D3B218);
  }

  v18 = sub_222D5286C();
  v0[23] = __swift_project_value_buffer(v18, qword_280D3DDA8);

  v19 = sub_222D5285C();
  v20 = sub_222D52C2C();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = OUTLINED_FUNCTION_26_2();
    v43 = OUTLINED_FUNCTION_25_2();
    *(v21 + 4) = OUTLINED_FUNCTION_34_2(4.8149e-34, v43, v22, v23, v24, v25, v26, v27, v28);
    OUTLINED_FUNCTION_36_2(&dword_222CDA000, v29, v30, "Invoking CATExecutor (async) for catId: %s");
    __swift_destroy_boxed_opaque_existential_1Tm(v43);
    OUTLINED_FUNCTION_17_3();
    OUTLINED_FUNCTION_17_3();
  }

  v31 = v0[19];
  v32 = v0[16];
  sub_222D52C7C();
  OUTLINED_FUNCTION_2_6();
  sub_222D5281C(v33, &dword_222CDA000, v4, "CATWrapperAsyncExecute", 22, 2, v31, "Parameter conversion completed");
  type metadata accessor for CATResponse();
  sub_222CE3120((v0 + 2), (v0 + 7));
  v0[12] = *(v32 + OBJC_IVAR____TtC16SiriDialogEngine10CATWrapper_options);
  v34 = swift_task_alloc();
  v0[24] = v34;
  *v34 = v0;
  v34[1] = sub_222D0FB14;
  v35 = OUTLINED_FUNCTION_22_2();

  return static CATResponse.executeDialog(templateDir:catId:parameters:globals:callback:options:)(v35, v36, v37, v38, v39, v40, v41);
}

uint64_t sub_222D0FB14()
{
  OUTLINED_FUNCTION_11();
  v3 = v2;
  OUTLINED_FUNCTION_15_2();
  v5 = v4;
  OUTLINED_FUNCTION_9_4();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_5_5();
  *v8 = v7;
  *(v5 + 200) = v0;

  if (!v0)
  {
    *(v5 + 208) = v3;
  }

  sub_222CDD130(v5 + 56, &qword_27D03C020, &unk_222D54A80);

  OUTLINED_FUNCTION_23();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_222D0FC68()
{
  v18 = v0;
  v1 = v0[26];
  v2 = [v1 dialog];
  sub_222D10AD8();
  v3 = sub_222D52B3C();

  sub_222D52C5C();
  sub_222D5282C();

  v4 = sub_222D5285C();
  v5 = sub_222D52C2C();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[22];
    v8 = v0[13];
    v7 = v0[14];
    v9 = OUTLINED_FUNCTION_26_2();
    v10 = OUTLINED_FUNCTION_25_2();
    v17 = v10;
    *v9 = 136315138;
    *(v9 + 4) = sub_222CE548C(v8, v7, &v17);
    _os_log_impl(&dword_222CDA000, v4, v5, "CATExecutor (async) completed for catId: %s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v10);
    OUTLINED_FUNCTION_17_3();
    OUTLINED_FUNCTION_17_3();
  }

  else
  {
    v11 = v0[22];
  }

  v13 = v0[18];
  v12 = v0[19];
  v14 = v0[17];
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  (*(v13 + 8))(v12, v14);

  v15 = v0[1];

  return v15(v3);
}

uint64_t sub_222D0FE4C()
{
  OUTLINED_FUNCTION_33_2();
  sub_222D52C5C();
  OUTLINED_FUNCTION_10_2();
  sub_222D5282C();

  v2 = sub_222D5285C();
  v3 = sub_222D52C2C();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = v0[22];
    OUTLINED_FUNCTION_26_2();
    v5 = OUTLINED_FUNCTION_20_3();
    *(v1 + 4) = OUTLINED_FUNCTION_18_3(4.8149e-34, v5, v6, v7, v8, v9, v10, v11, v12, v5);
    OUTLINED_FUNCTION_19_2(&dword_222CDA000, v13, v14, "CATExecutor (async) completed for catId: %s");
    OUTLINED_FUNCTION_7_5();
    OUTLINED_FUNCTION_17_3();
  }

  else
  {
    v15 = v0[22];
  }

  v17 = v0[18];
  v16 = v0[19];
  v18 = v0[17];
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  (*(v17 + 8))(v16, v18);

  OUTLINED_FUNCTION_13();

  return v19();
}

uint64_t CATWrapper.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC16SiriDialogEngine10CATWrapper_templateDir;
  sub_222D5210C();
  OUTLINED_FUNCTION_3_6();
  (*(v2 + 8))(v0 + v1);

  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v3, v4);
}

uint64_t TemplatingResult.withBehaviorAfterSpeaking(_:)(uint64_t a1)
{
  v2 = sub_222D5248C();
  OUTLINED_FUNCTION_113();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_6_5();
  v8 = v7 - v6;
  sub_222D523FC();
  sub_222D5240C();
  (*(v4 + 16))(v8, a1, v2);
  return sub_222D523EC();
}

uint64_t sub_222D10178(uint64_t a1, uint64_t a2)
{
  v3 = sub_222D5248C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_222D523FC();
  sub_222D5240C();
  (*(v4 + 16))(v6, a2, v3);
  return sub_222D523EC();
}

uint64_t sub_222D1027C@<X0>(void (*a1)(char *)@<X0>, void *a2@<X2>, uint64_t a4@<X8>)
{
  v7 = a2[2];
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](a1);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v14 + 16))(v13, v15);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(*(a2[3] - 8) + 32))(a4, v13, a2[3]);
  }

  else
  {
    (*(v8 + 32))(v11, v13, v7);
    a1(v11);
    (*(v8 + 8))(v11, v7);
  }

  sub_222D5316C();
  return swift_storeEnumTagMultiPayload();
}

void Result<>.firstPrint.getter()
{
  OUTLINED_FUNCTION_73();
  v2 = v1;
  sub_222D523CC();
  OUTLINED_FUNCTION_113();
  v36 = v4;
  v37 = v3;
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_6_5();
  v35 = v6 - v5;
  sub_222D5244C();
  OUTLINED_FUNCTION_113();
  v33 = v8;
  v34 = v7;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_6_5();
  v32 = v10 - v9;
  v11 = *(v2 + 16);
  v38 = *(v11 - 8);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_6_5();
  v15 = v14 - v13;
  v16 = *(v2 - 8);
  v18 = MEMORY[0x28223BE20](v17);
  v20 = &v31 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v31 - v21;
  v23 = *(v16 + 16);
  v23(&v31 - v21, v0, v2);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    goto LABEL_6;
  }

  v23(v20, v22, v2);
  v24 = v38;
  (*(v38 + 32))(v15, v20, v11);
  v25 = *(sub_222D5240C() + 16);

  if (!v25)
  {
    (*(v24 + 8))(v15, v11);
    goto LABEL_6;
  }

  v26 = sub_222D5240C();
  if (*(v26 + 16))
  {
    v27 = v32;
    v28 = v33;
    v29 = v34;
    (*(v33 + 16))(v32, v26 + ((*(v28 + 80) + 32) & ~*(v28 + 80)), v34);

    v30 = v35;
    sub_222D5243C();
    (*(v28 + 8))(v27, v29);
    sub_222D523BC();
    (*(v36 + 8))(v30, v37);
    (*(v24 + 8))(v15, v11);
LABEL_6:
    (*(v16 + 8))(v22, v2);
    OUTLINED_FUNCTION_74();
    return;
  }

  __break(1u);
}

uint64_t sub_222D10808(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_222D10900;

  return v6(a1);
}

uint64_t sub_222D10900()
{
  OUTLINED_FUNCTION_14_2();
  OUTLINED_FUNCTION_15_2();
  v1 = *v0;
  OUTLINED_FUNCTION_5_5();
  *v2 = v1;

  OUTLINED_FUNCTION_13();

  return v3();
}

char *sub_222D109E4(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03BDC0, &qword_222D54B10);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[v8] <= v12)
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

unint64_t sub_222D10AD8()
{
  result = qword_27D03BFF8;
  if (!qword_27D03BFF8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27D03BFF8);
  }

  return result;
}

uint64_t type metadata accessor for CATWrapper(uint64_t a1)
{
  result = qword_280D3D948;
  if (!qword_280D3D948)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_222D10B78(uint64_t a1)
{
  result = sub_222D5210C();
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

uint64_t dispatch thunk of CATWrapper.execute(catId:parameters:)()
{
  OUTLINED_FUNCTION_33_2();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v13 = (*(*v0 + 120) + **(*v0 + 120));
  v9 = swift_task_alloc();
  v10 = OUTLINED_FUNCTION_12_1(v9);
  *v10 = v11;
  v10[1] = sub_222D0F260;

  return v13(v8, v6, v4, v2);
}

{
  return (*(*v0 + 128))();
}

uint64_t dispatch thunk of CATWrapper.executeDialog(catId:parameters:)()
{
  OUTLINED_FUNCTION_28_2();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v2 = OUTLINED_FUNCTION_21_2(v1);

  return v3(v2);
}

uint64_t sub_222D10F04()
{
  OUTLINED_FUNCTION_11();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_12_1(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_16_4(v1);

  return v4(v3);
}

uint64_t sub_222D10F98(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03C030, &unk_222D54B30);
  OUTLINED_FUNCTION_52(v2);

  return sub_222D0E444(a1);
}

double sub_222D11014@<D0>(uint64_t a1@<X1>, _OWORD *a2@<X8>)
{
  sub_222D08454(a1, v5);
  result = *v5;
  v4 = v5[1];
  *a2 = v5[0];
  a2[1] = v4;
  return result;
}

double sub_222D11050(uint64_t *a1)
{
  v1 = a1[1];
  v2 = a1[2];
  v3 = a1[3];
  *&v5 = *a1;
  *(&v5 + 1) = v1;
  v6 = v2;
  v7 = v3;
  sub_222CE3060(v5, v1, v2, v3);
  *&result = sub_222D1109C(&v5).n128_u64[0];
  return result;
}

__n128 sub_222D1109C(_OWORD *a1)
{
  OUTLINED_FUNCTION_1_0(a1);
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  v6 = v1[5];
  v7 = a1[1];
  *(v1 + 1) = *a1;
  *(v1 + 2) = v7;
  sub_222CE2920(v3, v4, v5, v6);
  return result;
}

uint64_t sub_222D11134(uint64_t a1)
{
  OUTLINED_FUNCTION_5_6(a1);
  *(v2 + 48) = v1;
}

double SirikitApp.Builder.__allocating_init()()
{
  v0 = swift_allocObject();
  result = 0.0;
  *(v0 + 16) = 0u;
  *(v0 + 32) = 0u;
  *(v0 + 48) = MEMORY[0x277D84F90];
  return result;
}

double SirikitApp.Builder.init()()
{
  result = 0.0;
  *(v0 + 16) = 0u;
  *(v0 + 32) = 0u;
  *(v0 + 48) = MEMORY[0x277D84F90];
  return result;
}

uint64_t sub_222D1120C(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  OUTLINED_FUNCTION_1_0(a1);
  v1[2] = v2;
  v1[3] = v3;
  v1[4] = v4;
  v1[5] = v5;
  sub_222CE3060(v2, v3, v4, v5);
  OUTLINED_FUNCTION_117();
}

uint64_t sub_222D1128C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = a1;
  v8 = a4;
  if (!a4)
  {

    a3 = v7;
    v8 = a2;
  }

  OUTLINED_FUNCTION_1_0(a1);
  v4[2] = v7;
  v4[3] = a2;
  v4[4] = a3;
  v4[5] = v8;

  OUTLINED_FUNCTION_117();
}

uint64_t sub_222D11328(uint64_t a1)
{
  OUTLINED_FUNCTION_5_6(a1);
  *(v2 + 48) = v1;
}

uint64_t sub_222D11378()
{
  type metadata accessor for SirikitApp();
  v0 = swift_allocObject();

  SirikitApp.init(builder:)(v1);
  return v0;
}

uint64_t SirikitApp.__allocating_init(builder:)(void *a1)
{
  OUTLINED_FUNCTION_4_6();
  v2 = swift_allocObject();
  SirikitApp.init(builder:)(a1);
  return v2;
}

uint64_t *SirikitApp.Builder.deinit()
{
  sub_222CE2920(v0[2], v0[3], v0[4], v0[5]);

  return v0;
}

uint64_t SirikitApp.Builder.__deallocating_deinit()
{
  SirikitApp.Builder.deinit();

  return MEMORY[0x2821FE8D8](v0, 56, 7);
}

void sub_222D11498(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_222D114C8(v1);
}

void sub_222D114C8(uint64_t a1)
{
  OUTLINED_FUNCTION_1_0(a1);
  v3 = *(v1 + 16);
  *(v1 + 16) = a1;
}

void SirikitApp.appId.getter(uint64_t *a1@<X8>)
{
  v2 = v1[3];
  v3 = v1[4];
  v4 = v1[5];
  v5 = v1[6];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  sub_222CE3060(v2, v3, v4, v5);
}

void *SirikitApp.init(builder:)(void *a1)
{
  v1[2] = 0;
  swift_beginAccess();
  v3 = a1[2];
  v4 = a1[3];
  v5 = a1[4];
  v6 = a1[5];
  v1[3] = v3;
  v1[4] = v4;
  v1[5] = v5;
  v1[6] = v6;
  swift_beginAccess();
  v7 = a1[6];
  sub_222CE3060(v3, v4, v5, v6);

  v1[7] = v7;
  return v1;
}

double sub_222D115C8@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = a1 == 0x6449707061 && a2 == 0xE500000000000000;
  if (!v6 && (OUTLINED_FUNCTION_49(0x6449707061, 0xE500000000000000) & 1) == 0)
  {
    v13 = a1 == 0xD000000000000011 && 0x8000000222D59A40 == a2;
    if (v13 || (OUTLINED_FUNCTION_49(0xD000000000000011, 0x8000000222D59A40) & 1) != 0)
    {
      v14 = v3[7];
      *(a3 + 24) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03C038, &qword_222D54B40);
      *a3 = v14;
      goto LABEL_14;
    }

    v16 = a1 == 0x676E697274536F74 && a2 == 0xE800000000000000;
    if (v16 || (OUTLINED_FUNCTION_49(0x676E697274536F74, 0xE800000000000000) & 1) != 0)
    {
      sub_222CFDBD8();
      if (v21)
      {
        *(a3 + 24) = &type metadata for SpeakableString;
        v17 = swift_allocObject();
        *a3 = v17;
        v17[2] = v20;
        v17[3] = v21;
        v17[4] = v22;
        v17[5] = v23;
        return result;
      }
    }

    else
    {
      v18 = a1 == 0xD000000000000011 && 0x8000000222D5AA80 == a2;
      if (v18 || (OUTLINED_FUNCTION_49(0xD000000000000011, 0x8000000222D5AA80) & 1) != 0)
      {
        v19 = sub_222D117E4();
        *(a3 + 24) = MEMORY[0x277D839B0];
        *a3 = v19 & 1;
        return result;
      }
    }

LABEL_30:
    result = 0.0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
    return result;
  }

  v8 = v3[4];
  if (!v8)
  {
    goto LABEL_30;
  }

  v10 = v3[5];
  v9 = v3[6];
  v11 = v3[3];
  *(a3 + 24) = &type metadata for SpeakableString;
  v12 = swift_allocObject();
  *a3 = v12;
  v12[2] = v11;
  v12[3] = v8;
  v12[4] = v10;
  v12[5] = v9;

LABEL_14:

  return result;
}

uint64_t sub_222D11818(uint64_t a1, uint64_t a2)
{
  v2 = sub_222D52ECC();

  if (v2 == 1)
  {
    v3 = 1;
  }

  else
  {
    v3 = 2;
  }

  if (v2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_222D1186C(char a1)
{
  if (a1)
  {
    return 0xD000000000000011;
  }

  else
  {
    return 0x6449707061;
  }
}

uint64_t sub_222D118C8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_222D11818(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_222D118F8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_222D1186C(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_222D1192C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_222D11818(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_222D11960(uint64_t a1)
{
  v2 = sub_222D11C24();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_222D1199C(uint64_t a1)
{
  v2 = sub_222D11C24();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SirikitApp.deinit()
{
  sub_222CE2920(*(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48));

  return v0;
}

uint64_t SirikitApp.__deallocating_deinit()
{
  SirikitApp.deinit();
  v0 = OUTLINED_FUNCTION_4_6();

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_222D11A38(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03C040, &qword_222D54B48);
  OUTLINED_FUNCTION_113();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  v10 = &v18 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_222D11C24();
  sub_222D531AC();
  v11 = v3[4];
  v12 = v3[5];
  v13 = v3[6];
  v20 = v3[3];
  v21 = v11;
  v22 = v12;
  v23 = v13;
  v19 = 0;
  sub_222CE3060(v20, v11, v12, v13);
  sub_222CF2084(v14, v15, v16);
  sub_222D52FBC();
  sub_222CE2920(v20, v21, v22, v23);
  if (!v2)
  {
    v20 = v3[7];
    v19 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03C038, &qword_222D54B40);
    sub_222D11F1C(&qword_27D03C050, &qword_27D03C058, protocol conformance descriptor for SirikitLocalizedAppName, MEMORY[0x277D83948]);
    sub_222D5300C();
  }

  return (*(v7 + 8))(v10, v5);
}

unint64_t sub_222D11C24()
{
  result = qword_27D03C048;
  if (!qword_27D03C048)
  {
    result = swift_getWitnessTable(byte_222D54D34, &type metadata for SirikitApp.CodingKeys, v0, v1);
    atomic_store(result, &qword_27D03C048);
  }

  return result;
}

uint64_t SirikitApp.__allocating_init(from:)(void *a1)
{
  OUTLINED_FUNCTION_4_6();
  v2 = swift_allocObject();
  SirikitApp.init(from:)(a1);
  return v2;
}

uint64_t SirikitApp.init(from:)(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03C060, &qword_222D54B50);
  OUTLINED_FUNCTION_113();
  MEMORY[0x28223BE20](v4);
  *(v1 + 16) = 0;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_222D11C24();
  v5 = sub_222D5318C();
  if (v2)
  {

    type metadata accessor for SirikitApp();
    swift_deallocPartialClassInstance();
  }

  else
  {
    sub_222D0099C(v5, v6, v7);
    sub_222D52F1C();
    *(v1 + 24) = v11;
    *(v1 + 40) = v12;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03C038, &qword_222D54B40);
    sub_222D11F1C(&qword_27D03C068, &qword_27D03C070, protocol conformance descriptor for SirikitLocalizedAppName, MEMORY[0x277D83978]);
    sub_222D52F6C();
    v9 = OUTLINED_FUNCTION_2();
    v10(v9);
    *(v1 + 56) = v11;
  }

  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v1;
}

uint64_t sub_222D11F1C(unint64_t *a1, unint64_t *a2, const char *a3, const char *a4)
{
  result = *a1;
  if (!result)
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D03C038, &qword_222D54B40);
    v10 = sub_222D120C0(a2, 255, type metadata accessor for SirikitLocalizedAppName, a3);
    result = swift_getWitnessTable(a4, v9, &v10);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_222D1203C(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = sub_222D120C0(&qword_27D03C078, a2, type metadata accessor for SirikitApp, protocol conformance descriptor for SirikitApp);
  result = sub_222D120C0(&qword_27D03BEE0, v3, type metadata accessor for SirikitApp, protocol conformance descriptor for SirikitApp);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_222D120C0(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), const char *a4)
{
  result = *a1;
  if (!result)
  {
    v7 = a3(a2);
    result = swift_getWitnessTable(a4, v7);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_222D12108@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 192))();
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SirikitApp.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFF)
  {
    if (a2 + 1 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 1) >> 8 < 0xFF)
    {
      v3 = 1;
    }

    else
    {
      v3 = v2;
    }

    if (v3 == 4)
    {
      v4 = *(a1 + 1);
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 2;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v5 = v6 - 2;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for SirikitApp.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_222D12648()
{
  result = qword_27D03C080;
  if (!qword_27D03C080)
  {
    result = swift_getWitnessTable(byte_222D54D0C, &type metadata for SirikitApp.CodingKeys, v0, v1);
    atomic_store(result, &qword_27D03C080);
  }

  return result;
}

unint64_t sub_222D126A0()
{
  result = qword_27D03C088;
  if (!qword_27D03C088)
  {
    result = swift_getWitnessTable(aCn, &type metadata for SirikitApp.CodingKeys, v0, v1);
    atomic_store(result, &qword_27D03C088);
  }

  return result;
}

unint64_t sub_222D126F8()
{
  result = qword_27D03C090;
  if (!qword_27D03C090)
  {
    result = swift_getWitnessTable("m_N_Ԕ", &type metadata for SirikitApp.CodingKeys, v0, v1);
    atomic_store(result, &qword_27D03C090);
  }

  return result;
}

uint64_t sub_222D1274C()
{
  v0 = DEVersion();
  v1 = sub_222D5292C();

  return v1;
}

uint64_t sub_222D12798(uint64_t a1, uint64_t a2)
{
  v2 = sub_222D528FC();
  v3 = DEHasFeature();

  return v3;
}

uint64_t sub_222D12868(uint64_t a1)
{
  v2 = a1;
  result = OUTLINED_FUNCTION_1_0(a1);
  *(v1 + 16) = v2;
  return result;
}

uint64_t SirikitDeviceRestrictions.Builder.__allocating_init()()
{
  result = swift_allocObject();
  *(result + 16) = 0;
  return result;
}

uint64_t SirikitDeviceRestrictions.Builder.init()()
{
  result = v0;
  *(v0 + 16) = 0;
  return result;
}

uint64_t sub_222D128CC(uint64_t a1)
{
  v2 = a1;
  OUTLINED_FUNCTION_1_0(a1);
  *(v1 + 16) = v2;
}

uint64_t sub_222D12904()
{
  type metadata accessor for SirikitDeviceRestrictions();
  v0 = swift_allocObject();

  SirikitDeviceRestrictions.init(builder:)(v1, v2);
  return v0;
}

uint64_t SirikitDeviceRestrictions.__allocating_init(builder:)(uint64_t a1)
{
  OUTLINED_FUNCTION_1_8();
  v2 = swift_allocObject();
  SirikitDeviceRestrictions.init(builder:)(a1, v3);
  return v2;
}

double sub_222D129AC@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = a1 == 0xD000000000000010 && 0x8000000222D59A60 == a2;
  if (v5 || (sub_222D5305C() & 1) != 0)
  {
    v7 = *(v3 + 24);
    *(a3 + 24) = MEMORY[0x277D839B0];
    *a3 = v7;
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
  }

  return result;
}

BOOL sub_222D12A2C(uint64_t a1, uint64_t a2)
{
  v2 = sub_222D52ECC();

  return v2 != 0;
}

BOOL sub_222D12A80@<W0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_222D12A2C(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t sub_222D12AB4@<X0>(void *a1@<X8>)
{
  result = sub_222CF25AC();
  *a1 = 0xD000000000000010;
  a1[1] = v3;
  return result;
}

BOOL sub_222D12AE4@<W0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_222D12A2C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_222D12B10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_222CF2534(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_222D12B4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_222CF2534(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t SirikitDeviceRestrictions.__allocating_init(from:)(void *a1)
{
  OUTLINED_FUNCTION_1_8();
  v2 = swift_allocObject();
  SirikitDeviceRestrictions.init(from:)(a1);
  return v2;
}

uint64_t SirikitDeviceRestrictions.init(from:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03C0A0, &qword_222D54DB8);
  OUTLINED_FUNCTION_113();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  v10 = &v16 - v9;
  *(v1 + 16) = 0;
  v11 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_222CF2534(v11, v12, v13);
  sub_222D5318C();
  if (v2)
  {

    type metadata accessor for SirikitDeviceRestrictions();
    swift_deallocPartialClassInstance();
  }

  else
  {
    v15 = sub_222D52F5C();
    (*(v7 + 8))(v10, v5);
    *(v3 + 24) = v15 & 1;
  }

  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v3;
}

uint64_t sub_222D12DEC(uint64_t a1)
{
  *(a1 + 8) = sub_222D12E54(&qword_27D03BF98, "-TN_̓");
  result = sub_222D12E54(qword_280D3B310, protocol conformance descriptor for SirikitDeviceRestrictions);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_222D12E54(unint64_t *a1, const char *a2)
{
  result = *a1;
  if (!result)
  {
    v5 = type metadata accessor for SirikitDeviceRestrictions();
    result = swift_getWitnessTable(a2, v5);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_222D12E94@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 168))();
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for SirikitDeviceRestrictions.CodingKeys(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

unint64_t sub_222D131C8()
{
  result = qword_27D03C0A8;
  if (!qword_27D03C0A8)
  {
    result = swift_getWitnessTable(aUqn, &type metadata for SirikitDeviceRestrictions.CodingKeys, v0, v1);
    atomic_store(result, &qword_27D03C0A8);
  }

  return result;
}

unint64_t sub_222D13220()
{
  result = qword_280D3B3E0;
  if (!qword_280D3B3E0)
  {
    result = swift_getWitnessTable(byte_222D54EAC, &type metadata for SirikitDeviceRestrictions.CodingKeys, v0, v1);
    atomic_store(result, &qword_280D3B3E0);
  }

  return result;
}

unint64_t sub_222D13278()
{
  result = qword_280D3B3E8;
  if (!qword_280D3B3E8)
  {
    result = swift_getWitnessTable(byte_222D54ED4, &type metadata for SirikitDeviceRestrictions.CodingKeys, v0, v1);
    atomic_store(result, &qword_280D3B3E8);
  }

  return result;
}

uint64_t sub_222D132CC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03C128, &qword_222D55000);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_222D54FF0;
  *(inited + 32) = 25956;
  *(inited + 40) = 0xE200000000000000;
  if (qword_27D03BCF8 != -1)
  {
    swift_once();
  }

  v1 = qword_27D03C0C0;
  *(inited + 48) = qword_27D03C0C0;
  *(inited + 56) = 0x45445F6564;
  *(inited + 64) = 0xE500000000000000;
  *(inited + 72) = v1;
  *(inited + 80) = 28261;
  *(inited + 88) = 0xE200000000000000;
  v2 = qword_27D03BD08;
  swift_bridgeObjectRetain_n();
  if (v2 != -1)
  {
    swift_once();
  }

  v3 = qword_27D03C0D0;
  *(inited + 96) = qword_27D03C0D0;
  *(inited + 104) = 0x55415F6E65;
  *(inited + 112) = 0xE500000000000000;
  v4 = qword_27D03BD00;

  if (v4 != -1)
  {
    swift_once();
    v3 = qword_27D03C0D0;
  }

  *(inited + 120) = qword_27D03C0C8;
  *(inited + 128) = 0x42475F6E65;
  *(inited + 136) = 0xE500000000000000;
  *(inited + 144) = v3;
  *(inited + 152) = 0x53555F6E65;
  *(inited + 160) = 0xE500000000000000;
  v5 = qword_27D03BD10;

  if (v5 != -1)
  {
    swift_once();
  }

  *(inited + 168) = qword_27D03C0D8;
  *(inited + 176) = 29541;
  *(inited + 184) = 0xE200000000000000;
  v6 = qword_27D03BD20;

  if (v6 != -1)
  {
    swift_once();
  }

  v7 = qword_27D03C0E8;
  *(inited + 192) = qword_27D03C0E8;
  *(inited + 200) = 0x53455F7365;
  *(inited + 208) = 0xE500000000000000;
  v8 = qword_27D03BD18;

  if (v8 != -1)
  {
    swift_once();
    v7 = qword_27D03C0E8;
  }

  *(inited + 216) = qword_27D03C0E0;
  *(inited + 224) = 0x584D5F7365;
  *(inited + 232) = 0xE500000000000000;
  *(inited + 240) = v7;
  *(inited + 248) = 29286;
  *(inited + 256) = 0xE200000000000000;
  v9 = qword_27D03BD58;

  if (v9 != -1)
  {
    swift_once();
  }

  v10 = qword_27D03C120;
  *(inited + 264) = qword_27D03C120;
  *(inited + 272) = 0x52465F7266;
  *(inited + 280) = 0xE500000000000000;
  *(inited + 288) = v10;
  *(inited + 296) = 0x41435F7266;
  *(inited + 304) = 0xE500000000000000;
  v11 = qword_27D03BD50;
  swift_bridgeObjectRetain_n();
  if (v11 != -1)
  {
    swift_once();
  }

  *(inited + 312) = qword_27D03C118;
  *(inited + 320) = 29801;
  *(inited + 328) = 0xE200000000000000;
  v12 = qword_27D03BD48;

  if (v12 != -1)
  {
    swift_once();
  }

  v13 = qword_27D03C110;
  *(inited + 336) = qword_27D03C110;
  *(inited + 344) = 0x54495F7469;
  *(inited + 352) = 0xE500000000000000;
  *(inited + 360) = v13;
  *(inited + 368) = 24938;
  *(inited + 376) = 0xE200000000000000;
  v14 = qword_27D03BD40;
  swift_bridgeObjectRetain_n();
  if (v14 != -1)
  {
    swift_once();
  }

  v15 = qword_27D03C108;
  *(inited + 384) = qword_27D03C108;
  *(inited + 392) = 0x504A5F616ALL;
  *(inited + 400) = 0xE500000000000000;
  *(inited + 408) = v15;
  *(inited + 416) = 28523;
  *(inited + 424) = 0xE200000000000000;
  v16 = qword_27D03BD38;
  swift_bridgeObjectRetain_n();
  if (v16 != -1)
  {
    swift_once();
  }

  v17 = qword_27D03C100;
  *(inited + 432) = qword_27D03C100;
  *(inited + 440) = 0x524B5F6F6BLL;
  *(inited + 448) = 0xE500000000000000;
  *(inited + 456) = v17;
  *(inited + 464) = 26746;
  *(inited + 472) = 0xE200000000000000;
  v18 = qword_27D03BCF0;
  swift_bridgeObjectRetain_n();
  if (v18 != -1)
  {
    swift_once();
  }

  v19 = qword_27D03C0B8;
  *(inited + 480) = qword_27D03C0B8;
  *(inited + 488) = 0x4E435F687ALL;
  *(inited + 496) = 0xE500000000000000;
  *(inited + 504) = v19;
  *(inited + 512) = 0x736E61485F687ALL;
  *(inited + 520) = 0xE700000000000000;
  *(inited + 528) = v19;
  *(inited + 536) = 0x746E61485F687ALL;
  *(inited + 544) = 0xE700000000000000;
  v20 = qword_27D03BD30;
  swift_bridgeObjectRetain_n();
  if (v20 != -1)
  {
    swift_once();
  }

  v21 = qword_27D03C0F8;
  *(inited + 552) = qword_27D03C0F8;
  *(inited + 560) = 0x4B485F687ALL;
  *(inited + 568) = 0xE500000000000000;
  v22 = qword_27D03BD28;

  if (v22 != -1)
  {
    swift_once();
    v21 = qword_27D03C0F8;
  }

  *(inited + 576) = qword_27D03C0F0;
  *(inited + 584) = 0x57545F687ALL;
  *(inited + 592) = 0xE500000000000000;
  *(inited + 600) = v21;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03C130, &qword_222D55008);
  result = sub_222D528BC();
  qword_27D03C0B0 = result;
  return result;
}

uint64_t sub_222D138BC()
{
  result = sub_222D528BC();
  qword_27D03C0B8 = result;
  return result;
}

uint64_t sub_222D138F8()
{
  result = sub_222D528BC();
  qword_27D03C0C0 = result;
  return result;
}

uint64_t sub_222D13934()
{
  result = sub_222D528BC();
  qword_27D03C0C8 = result;
  return result;
}

uint64_t sub_222D13970()
{
  result = sub_222D528BC();
  qword_27D03C0D0 = result;
  return result;
}

uint64_t sub_222D139AC()
{
  result = sub_222D528BC();
  qword_27D03C0D8 = result;
  return result;
}

uint64_t sub_222D139E8()
{
  result = sub_222D528BC();
  qword_27D03C0E0 = result;
  return result;
}

uint64_t sub_222D13A24()
{
  result = sub_222D528BC();
  qword_27D03C0E8 = result;
  return result;
}

uint64_t sub_222D13A60()
{
  result = sub_222D528BC();
  qword_27D03C0F0 = result;
  return result;
}

uint64_t sub_222D13A9C()
{
  result = sub_222D528BC();
  qword_27D03C0F8 = result;
  return result;
}

uint64_t sub_222D13AD8()
{
  result = sub_222D528BC();
  qword_27D03C100 = result;
  return result;
}

uint64_t sub_222D13B14()
{
  result = sub_222D528BC();
  qword_27D03C108 = result;
  return result;
}

uint64_t sub_222D13B50()
{
  result = sub_222D528BC();
  qword_27D03C110 = result;
  return result;
}

uint64_t sub_222D13B8C()
{
  result = sub_222D528BC();
  qword_27D03C118 = result;
  return result;
}

uint64_t sub_222D13BC8()
{
  result = sub_222D528BC();
  qword_27D03C120 = result;
  return result;
}

void static CATTester.execute(templateDir:catId:parameters:globals:callback:options:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  OUTLINED_FUNCTION_73();
  v53 = v21;
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v35 = v34;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03C008, &qword_222D55030);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v36);
  v38 = (&v52 - v37);
  v54[0] = *v23;
  v39 = sub_222D13E54(v35, v33, v31, v29, v27, v25, v54);
  v41 = v39;
  if (v40)
  {
    v42 = v40;
    *v38 = v40;
    swift_storeEnumTagMultiPayload();
    v43 = v42;
    v53(v38);
  }

  else
  {
    v44 = v31;
    v45 = v53;
    if (v39)
    {
      v46 = swift_allocObject();
      v46[2] = v45;
      v46[3] = a21;
      v46[4] = v33;
      v46[5] = v44;
      v54[4] = sub_222D144D0;
      v54[5] = v46;
      v54[0] = MEMORY[0x277D85DD0];
      v54[1] = 1107296256;
      v54[2] = sub_222CE3BA4;
      v54[3] = &block_descriptor;
      v47 = _Block_copy(v54);
      v48 = v41;

      [v48 executeWithCompletionBlock_];
      _Block_release(v47);

      goto LABEL_6;
    }

    type metadata accessor for CATResultProvider();
    OUTLINED_FUNCTION_0_5();
    *v38 = sub_222D0B314(0xD00000000000001ALL, v49, v50, v51);
    swift_storeEnumTagMultiPayload();
    v45(v38);
  }

  sub_222CDC59C(v38, &qword_27D03C008, &qword_222D55030);
LABEL_6:
  OUTLINED_FUNCTION_74();
}

id sub_222D13E54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t *a7)
{
  v12 = *a7;
  v13 = sub_222D5217C();
  v15 = v14;
  if (v13)
  {
    v16 = 0;
  }

  else
  {
    v16 = v14 == 0xE000000000000000;
  }

  if (v16 || (v17 = v13, (sub_222D5305C() & 1) != 0))
  {

    type metadata accessor for CATResultProvider();
    OUTLINED_FUNCTION_0_5();
    sub_222D0B314(0xD000000000000023, v18, v19, v20);
    return 0;
  }

  else
  {
    sub_222CEE42C(a4);
    v21 = [objc_allocWithZone(MEMORY[0x277D05290]) init];
    v22 = sub_222D520FC();
    sub_222CE8B08(v22, v23, v21, &selRef_setTemplateDir_);
    sub_222CEEA28(a2, a3, v21);
    sub_222CEEA8C();
    v25 = v24;

    sub_222CEECE8(v25, v21);
    v26 = *(a5 + OBJC_IVAR____TtC16SiriDialogEngine10CATGlobals_globalParameters);
    if (v26)
    {
      sub_222CEEA8C();
      v27 = sub_222D5288C();
    }

    else
    {
      v27 = 0;
    }

    OUTLINED_FUNCTION_3_7(v26, sel_setGlobalParameters_);

    sub_222CE8B08(v17, v15, v21, &selRef_setLocale_);
    v28 = *(a5 + OBJC_IVAR____TtC16SiriDialogEngine10CATGlobals_dialogMetadata);
    if (v28)
    {
      sub_222CEED68();
      v29 = sub_222D5288C();
    }

    else
    {
      v29 = 0;
    }

    OUTLINED_FUNCTION_3_7(v28, sel_setDialogMetadata_);

    if (qword_280D3DAE0 != -1)
    {
      swift_once();
    }

    [v21 setDebug_];
    [v21 setTest_];
    if (qword_280D3DB48 != -1)
    {
      swift_once();
    }

    [v21 setResetState_];
    [v21 setEnableUpdates_];
    if (qword_280D3DB28 != -1)
    {
      swift_once();
    }

    [v21 setCreateTrace_];
    [v21 setMultiuser_];
    [v21 setGrounding_];
    v30 = sub_222D528FC();
    OUTLINED_FUNCTION_3_7(v30, sel_setVoiceGender_);

    [v21 setRandomSeed_];
    [v21 setCurrentTime_];
    v31 = *(a5 + OBJC_IVAR____TtC16SiriDialogEngine10CATGlobals_userSettings);
    if (v31)
    {
      sub_222CEEA8C();
      v32 = sub_222D5288C();
    }

    else
    {
      v32 = 0;
    }

    OUTLINED_FUNCTION_3_7(v31, sel_setUserSettings_);

    v33 = *(a5 + OBJC_IVAR____TtC16SiriDialogEngine10CATGlobals_customPronunciations);
    if (v33)
    {
      sub_222CEED68();
      v34 = sub_222D5288C();
    }

    else
    {
      v34 = 0;
    }

    OUTLINED_FUNCTION_3_7(v33, sel_setCustomPronunciations_);

    if (*(a6 + 24))
    {
      sub_222CEEFC0(a6, v42, &qword_27D03C020, &unk_222D54A80);
      v35 = swift_allocObject();
      v36 = v42[1];
      *(v35 + 16) = v42[0];
      *(v35 + 32) = v36;
      *(v35 + 48) = v43;
      v37 = swift_allocObject();
      *(v37 + 16) = sub_222D151A0;
      *(v37 + 24) = v35;
      aBlock[4] = sub_222D151A8;
      aBlock[5] = v37;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_222D14E84;
      aBlock[3] = &block_descriptor_11;
      v38 = _Block_copy(aBlock);

      OUTLINED_FUNCTION_3_7(v39, sel_setCallback_);
      _Block_release(v38);
    }
  }

  return v21;
}

uint64_t sub_222D143EC(void *a1, void (*a2)(uint64_t *), uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03C008, &qword_222D55030);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = (&v13 - v10);
  type metadata accessor for CATResultProvider();
  sub_222D0B42C(a1, a4, a5, v11);
  a2(v11);
  return sub_222CDC59C(v11, &qword_27D03C008, &qword_222D55030);
}

void static CATTester.execute(templateDir:catId:parameters:globals:callback:options:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t *a7@<X6>, uint64_t *a8@<X8>)
{
  v19 = *a7;
  v11 = sub_222D13E54(a1, a2, a3, a4, a5, a6, &v19);
  if (v12)
  {
    v13 = v12;

    *a8 = v13;
LABEL_3:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03C008, &qword_222D55030);

    swift_storeEnumTagMultiPayload();
    return;
  }

  if (!v11)
  {
    type metadata accessor for CATResultProvider();
    OUTLINED_FUNCTION_0_5();
    *a8 = sub_222D0B314(0xD00000000000001DLL, v15, v16, v17);
    goto LABEL_3;
  }

  v14 = v11;
  v18 = [v14 execute];
  type metadata accessor for CATResultProvider();
  sub_222D0B42C(v18, a2, a3, a8);
}

void static CATTester.execute(bundle:catId:parameters:globals:callback:options:)()
{
  OUTLINED_FUNCTION_73();
  v2 = v1;
  v23 = v3;
  v24 = v4;
  v22 = v5;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  sub_222D5210C();
  OUTLINED_FUNCTION_2_7();
  v15 = v14;
  MEMORY[0x28223BE20](v16);
  v18 = &v22 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *v2;
  v20 = [objc_opt_self() bundleTemplateDir_];
  if (v20)
  {
    v21 = v20;
    sub_222D5292C();

    sub_222D520BC();

    v25 = v19;
    static CATTester.execute(templateDir:catId:parameters:globals:callback:options:)(v18, v9, v7, v22, v23, v24, &v25, v13);
    (*(v15 + 8))(v18, v0);
    OUTLINED_FUNCTION_74();
  }

  else
  {
    __break(1u);
  }
}

uint64_t static CATTester.downloadMorphunData(locale:)(uint64_t a1, uint64_t a2)
{
  v4 = [objc_allocWithZone(MEMORY[0x277D05298]) init];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03C138, &qword_222D55038);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_222D53980;
  *(v5 + 32) = a1;
  *(v5 + 40) = a2;

  LOBYTE(a2) = sub_222D14FCC(v5, v4);

  return a2 & 1;
}

uint64_t static CATTester.downloadMorphunData(locales:)(uint64_t a1)
{
  v2 = [objc_allocWithZone(MEMORY[0x277D05298]) init];
  LOBYTE(a1) = sub_222D15030(a1, v2);

  return a1 & 1;
}

uint64_t static CATTester.morphunPath(locale:)(uint64_t a1, uint64_t a2)
{
  v4 = [objc_allocWithZone(MEMORY[0x277D05298]) init];
  result = sub_222D15080(a1, a2, v4);
  if (v6)
  {
    v7 = result;

    return v7;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t static CATTester.morphunPaths()()
{
  v0 = [objc_allocWithZone(MEMORY[0x277D05298]) init];
  result = sub_222D15100(v0);
  if (result)
  {
    v2 = result;

    return v2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_222D14AA0(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, uint64_t a8)
{
  sub_222CEEFC0(a8, &v34, &qword_27D03C020, &unk_222D54A80);
  if (*(&v35 + 1))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03C148, &qword_222D59880);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03C150, &qword_222D55080);
    if ((swift_dynamicCast() & 1) == 0)
    {
      v39 = 0;
      v37 = 0u;
      v38 = 0u;
      sub_222CDC59C(&v37, &qword_27D03C140, &qword_222D55068);
      memset(v36, 0, 24);
      *(&v36[1] + 8) = xmmword_222D55020;
      v28 = &unk_27D03C158;
      v29 = &unk_222D55088;
      v30 = v36;
LABEL_33:
      sub_222CDC59C(v30, v28, v29);
      return 0;
    }

    sub_222CE2D34(&v37, v36);
  }

  else
  {
    sub_222CDC59C(&v34, &qword_27D03C020, &unk_222D54A80);
    memset(v36, 0, 40);
  }

  v37 = v36[0];
  v38 = v36[1];
  v39 = *&v36[2];
  if (a7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03BDA8, &unk_222D55070);
    a7 = sub_222D5288C();
  }

  v15 = objc_allocWithZone(type metadata accessor for CATCallbackParams());
  v16 = CATCallbackParams.init(fromParams:)(a7);
  sub_222CEEFC0(&v37, v36, &qword_27D03C140, &qword_222D55068);
  v17 = *(&v36[1] + 1);
  if (!*(&v36[1] + 1))
  {
    sub_222CDC59C(&v37, &qword_27D03C140, &qword_222D55068);

    sub_222CDC59C(v36, &qword_27D03C140, &qword_222D55068);
    v34 = 0u;
    v35 = 0u;
LABEL_32:
    v28 = &qword_27D03BDA8;
    v29 = &unk_222D55070;
    v30 = &v34;
    goto LABEL_33;
  }

  v18 = *&v36[2];
  __swift_project_boxed_opaque_existential_1(v36, *(&v36[1] + 1));
  if (a2)
  {
    v19 = a1;
  }

  else
  {
    v19 = 0;
  }

  v33 = v19;
  if (a2)
  {
    v20 = a2;
  }

  else
  {
    v20 = 0xE000000000000000;
  }

  if (a4)
  {
    v21 = a3;
  }

  else
  {
    v21 = 0;
  }

  v22 = a5;
  if (a4)
  {
    v23 = a4;
  }

  else
  {
    v23 = 0xE000000000000000;
  }

  if (a6)
  {
    v24 = v22;
  }

  else
  {
    v24 = 0;
  }

  v25 = v16;
  if (a6)
  {
    v26 = a6;
  }

  else
  {
    v26 = 0xE000000000000000;
  }

  v31 = v21;
  v32 = *(v18 + 16);

  v32(&v34, v33, v20, v31, v23, v24, v26, v25, v17, v18);

  sub_222CDC59C(&v37, &qword_27D03C140, &qword_222D55068);
  __swift_destroy_boxed_opaque_existential_1Tm(v36);
  if (!*(&v35 + 1))
  {
    goto LABEL_32;
  }

  sub_222D151D0();
  if (swift_dynamicCast())
  {
    return *&v36[0];
  }

  else
  {
    return 0;
  }
}

void sub_222D14DEC()
{
  OUTLINED_FUNCTION_73();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  if (v14)
  {
    sub_222D3B5CC();
    v16 = v15;
  }

  else
  {
    v16 = 0;
  }

  v1(v13, v11, v9, v7, v5, v3, v16);

  OUTLINED_FUNCTION_74();
}

id sub_222D14E84()
{
  OUTLINED_FUNCTION_73();
  v2 = v1;
  v4 = v3;
  v5 = v0;
  v7 = *(v6 + 32);
  if (v8)
  {
    v9 = sub_222D5292C();
    v11 = v10;
    if (v5)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v9 = 0;
    v11 = 0;
    if (v0)
    {
LABEL_3:
      v12 = sub_222D5292C();
      v5 = v13;
      if (v4)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  v12 = 0;
  if (v4)
  {
LABEL_4:
    v14 = sub_222D5292C();
    v4 = v15;
    if (!v2)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_11:
  v14 = 0;
  if (v2)
  {
LABEL_5:
    v2 = sub_222D5289C();
  }

LABEL_6:

  v7(v9, v11, v12, v5, v14, v4, v2);

  OUTLINED_FUNCTION_74();

  return v16;
}

id sub_222D14FCC(uint64_t a1, void *a2)
{
  v3 = sub_222D52B2C();

  v4 = [a2 downloadData_];

  return v4;
}

id sub_222D15030(uint64_t a1, void *a2)
{
  v3 = sub_222D52B2C();
  v4 = [a2 downloadData_];

  return v4;
}

uint64_t sub_222D15080(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_222D528FC();
  v5 = [a3 getPath_];

  if (!v5)
  {
    return 0;
  }

  v6 = sub_222D5292C();

  return v6;
}

uint64_t sub_222D15100(void *a1)
{
  v1 = [a1 getAllPaths];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_222D5289C();

  return v3;
}

unint64_t sub_222D151D0()
{
  result = qword_280D3B138;
  if (!qword_280D3B138)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280D3B138);
  }

  return result;
}

BOOL sub_222D15214(uint64_t a1, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  v3 = v2 == 0;
  return !a2 || v3;
}

uint64_t sub_222D1523C(uint64_t a1, unint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  v2 = a1;
  v3 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v3 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v3)
  {
    return 0;
  }

  return v2;
}

uint64_t sub_222D1531C()
{
  type metadata accessor for DialogArea();
  OUTLINED_FUNCTION_2_0();
  swift_allocObject();

  return DialogAbstractMeasurement.init(builder:)(v0);
}

uint64_t DialogArea.__allocating_init(builder:)(uint64_t a1)
{
  OUTLINED_FUNCTION_2_0();
  swift_allocObject();
  return DialogAbstractMeasurement.init(builder:)(a1);
}

uint64_t DialogArea.Builder.__deallocating_deinit()
{
  sub_222CE2920(v0[4], v0[5], v0[6], v0[7]);

  return MEMORY[0x2821FE8D8](v0, 64, 7);
}

void sub_222D15434(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = a1 == 0x676E697274536F74 && a2 == 0xE800000000000000;
  if (v4 || (sub_222D5305C() & 1) != 0)
  {
    v7 = 0x676E697274536F74;
    v8 = 0xE800000000000000;
    goto LABEL_14;
  }

  v9 = 0xEB00000000657461;
  v10 = 0x6D69786F72707061;
  v11 = a1 == 0x6D69786F72707061 && a2 == 0xEB00000000657461;
  if (v11 || (OUTLINED_FUNCTION_1_1(0x6D69786F72707061) & 1) != 0)
  {
    goto LABEL_12;
  }

  v9 = 0x8000000222D5ACF0;
  v13 = a1 == 0xD000000000000012 && 0x8000000222D5ACF0 == a2;
  if (v13 || (OUTLINED_FUNCTION_1_1(0xD000000000000012) & 1) != 0)
  {
    v7 = 0xD000000000000012;
    goto LABEL_13;
  }

  v9 = 0x8000000222D5AD10;
  v10 = 0xD000000000000013;
  v14 = a1 == 0xD000000000000013 && 0x8000000222D5AD10 == a2;
  if (v14 || (OUTLINED_FUNCTION_1_1(0xD000000000000013) & 1) != 0)
  {
LABEL_12:
    v7 = v10;
LABEL_13:
    v8 = v9;
LABEL_14:
    sub_222CFA364(v7, v8);
    if (v16)
    {
      *(a3 + 24) = &type metadata for SpeakableString;
      v12 = swift_allocObject();
      *a3 = v12;
      v12[2] = v15;
      v12[3] = v16;
      v12[4] = v17;
      v12[5] = v18;
    }

    else
    {
      *a3 = 0u;
      *(a3 + 16) = 0u;
    }

    return;
  }

  sub_222D1C028(a1, a2, a3);
}

uint64_t DialogArea.__allocating_init(from:)(void *a1)
{
  OUTLINED_FUNCTION_2_0();
  swift_allocObject();
  return DialogArea.init(from:)(a1);
}

uint64_t DialogArea.init(from:)(void *a1)
{
  sub_222CE3120(a1, v4);
  v2 = DialogAbstractMeasurement.init(from:)(v4);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v2;
}

uint64_t DialogArea.__deallocating_deinit()
{
  DialogAbstractMeasurement.deinit();
  OUTLINED_FUNCTION_2_0();

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t DialogPerson.Builder.__allocating_init()()
{
  v0 = swift_allocObject();
  *(v0 + 224) = 0;
  *(v0 + 232) = 0;
  bzero((v0 + 16), 0xCAuLL);
  *(v0 + 272) = 0;
  *(v0 + 240) = 0u;
  *(v0 + 256) = 0u;
  return v0;
}

__n128 sub_222D15944(_OWORD *a1, uint64_t a2)
{
  OUTLINED_FUNCTION_67((v2 + 14), a2);
  v4 = v2[14];
  v5 = v2[15];
  v6 = v2[16];
  v7 = v2[17];
  v8 = a1[1];
  *(v2 + 7) = *a1;
  *(v2 + 8) = v8;
  sub_222CE2920(v4, v5, v6, v7);
  return result;
}

__n128 sub_222D15A08(_OWORD *a1, uint64_t a2)
{
  OUTLINED_FUNCTION_67((v2 + 18), a2);
  v4 = v2[18];
  v5 = v2[19];
  v6 = v2[20];
  v7 = v2[21];
  v8 = a1[1];
  *(v2 + 9) = *a1;
  *(v2 + 10) = v8;
  sub_222CE2920(v4, v5, v6, v7);
  return result;
}

uint64_t sub_222D15AE8(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_67(v2 + 176, a2);
  *(v2 + 176) = a1;
}

__n128 sub_222D15BA4(_OWORD *a1, uint64_t a2)
{
  OUTLINED_FUNCTION_67((v2 + 23), a2);
  v4 = v2[23];
  v5 = v2[24];
  v6 = v2[25];
  v7 = v2[26];
  v8 = a1[1];
  *(v2 + 23) = *a1;
  *(v2 + 25) = v8;
  sub_222CE2920(v4, v5, v6, v7);
  return result;
}

uint64_t sub_222D15C58(char a1, uint64_t a2)
{
  result = OUTLINED_FUNCTION_67(v2 + 216, a2);
  *(v2 + 216) = a1;
  return result;
}

uint64_t sub_222D15CF8(char a1, uint64_t a2)
{
  result = OUTLINED_FUNCTION_67(v2 + 217, a2);
  *(v2 + 217) = a1;
  return result;
}

uint64_t sub_222D15DC8(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_67(v2 + 224, a2);
  *(v2 + 224) = a1;
}

uint64_t sub_222D15E70(char a1, uint64_t a2)
{
  result = OUTLINED_FUNCTION_67(v2 + 232, a2);
  *(v2 + 232) = a1;
  return result;
}

uint64_t sub_222D15ECC(char a1, uint64_t a2)
{
  result = OUTLINED_FUNCTION_67(v2 + 233, a2);
  *(v2 + 233) = a1;
  return result;
}

double sub_222D15F44()
{
  OUTLINED_FUNCTION_17_0();
  v1(v4);
  result = *v4;
  v3 = v4[1];
  *v0 = v4[0];
  v0[1] = v3;
  return result;
}

uint64_t sub_222D15F80(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t *))
{
  v6 = a1[1];
  v7 = a1[2];
  v8 = a1[3];
  v10[0] = *a1;
  v10[1] = v6;
  v10[2] = v7;
  v10[3] = v8;
  sub_222CE3060(v10[0], v6, v7, v8);
  return a5(v10);
}

__n128 sub_222D16010(_OWORD *a1, uint64_t a2)
{
  OUTLINED_FUNCTION_67((v2 + 30), a2);
  v4 = v2[30];
  v5 = v2[31];
  v6 = v2[32];
  v7 = v2[33];
  v8 = a1[1];
  *(v2 + 15) = *a1;
  *(v2 + 16) = v8;
  sub_222CE2920(v4, v5, v6, v7);
  return result;
}

uint64_t sub_222D160C0(char a1, uint64_t a2)
{
  result = OUTLINED_FUNCTION_67(v2 + 272, a2);
  *(v2 + 272) = a1;
  return result;
}

void sub_222D16138()
{
  OUTLINED_FUNCTION_116();
  OUTLINED_FUNCTION_2_1();
  if (!v6)
  {

    OUTLINED_FUNCTION_22();
  }

  OUTLINED_FUNCTION_67((v1 + 2), v5);
  v1[2] = v2;
  v1[3] = v0;
  v1[4] = v3;
  v1[5] = v4;

  OUTLINED_FUNCTION_117();

  OUTLINED_FUNCTION_94();
}

void sub_222D161AC()
{
  OUTLINED_FUNCTION_116();
  OUTLINED_FUNCTION_2_1();
  if (!v6)
  {

    OUTLINED_FUNCTION_22();
  }

  OUTLINED_FUNCTION_67((v1 + 6), v5);
  v1[6] = v2;
  v1[7] = v0;
  v1[8] = v3;
  v1[9] = v4;

  OUTLINED_FUNCTION_117();

  OUTLINED_FUNCTION_94();
}

void sub_222D16220()
{
  OUTLINED_FUNCTION_116();
  OUTLINED_FUNCTION_2_1();
  if (!v6)
  {

    OUTLINED_FUNCTION_22();
  }

  OUTLINED_FUNCTION_67((v1 + 10), v5);
  v1[10] = v2;
  v1[11] = v0;
  v1[12] = v3;
  v1[13] = v4;

  OUTLINED_FUNCTION_117();

  OUTLINED_FUNCTION_94();
}

void sub_222D16294()
{
  OUTLINED_FUNCTION_116();
  OUTLINED_FUNCTION_2_1();
  if (!v6)
  {

    OUTLINED_FUNCTION_22();
  }

  OUTLINED_FUNCTION_67((v1 + 14), v5);
  v1[14] = v2;
  v1[15] = v0;
  v1[16] = v3;
  v1[17] = v4;

  OUTLINED_FUNCTION_117();

  OUTLINED_FUNCTION_94();
}

void sub_222D16308()
{
  OUTLINED_FUNCTION_116();
  OUTLINED_FUNCTION_2_1();
  if (!v6)
  {

    OUTLINED_FUNCTION_22();
  }

  OUTLINED_FUNCTION_67((v1 + 18), v5);
  v1[18] = v2;
  v1[19] = v0;
  v1[20] = v3;
  v1[21] = v4;

  OUTLINED_FUNCTION_117();

  OUTLINED_FUNCTION_94();
}

uint64_t sub_222D1637C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (a1)
  {
    v4 = (*(*a1 + 184))(a1, a2);
  }

  else
  {
    v4 = 0;
  }

  OUTLINED_FUNCTION_67(v3 + 176, a2);
  *(v3 + 176) = v4;
}

void sub_222D163F8()
{
  OUTLINED_FUNCTION_116();
  OUTLINED_FUNCTION_2_1();
  if (!v6)
  {

    OUTLINED_FUNCTION_22();
  }

  OUTLINED_FUNCTION_67((v1 + 23), v5);
  v1[23] = v2;
  v1[24] = v0;
  v1[25] = v3;
  v1[26] = v4;

  OUTLINED_FUNCTION_117();

  OUTLINED_FUNCTION_94();
}

uint64_t sub_222D1646C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (a1)
  {
    v4 = (*(*a1 + 240))(a1, a2);
  }

  else
  {
    v4 = 0;
  }

  OUTLINED_FUNCTION_67(v3 + 224, a2);
  *(v3 + 224) = v4;
}

uint64_t sub_222D164E8(char a1, uint64_t a2)
{
  OUTLINED_FUNCTION_67(v2 + 233, a2);
  *(v2 + 233) = a1;
}

void sub_222D16524()
{
  OUTLINED_FUNCTION_116();
  OUTLINED_FUNCTION_23_0();
  OUTLINED_FUNCTION_67((v1 + 30), v5);
  v1[30] = v0;
  v1[31] = v2;
  v1[32] = v3;
  v1[33] = v4;
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_117();

  OUTLINED_FUNCTION_94();
}

void sub_222D1657C()
{
  OUTLINED_FUNCTION_116();
  OUTLINED_FUNCTION_2_1();
  if (!v6)
  {

    OUTLINED_FUNCTION_22();
  }

  OUTLINED_FUNCTION_67((v1 + 30), v5);
  v1[30] = v2;
  v1[31] = v0;
  v1[32] = v3;
  v1[33] = v4;

  OUTLINED_FUNCTION_117();

  OUTLINED_FUNCTION_94();
}

uint64_t sub_222D165F0(char a1, uint64_t a2)
{
  OUTLINED_FUNCTION_67(v2 + 272, a2);
  *(v2 + 272) = a1;
}

double sub_222D166A0@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = a1 == 0x6D614E6E65766967 && a2 == 0xE900000000000065;
  if (v6 || (OUTLINED_FUNCTION_49(0x6D614E6E65766967, 0xE900000000000065) & 1) != 0)
  {
    v8 = *(v3 + 32);
    if (v8)
    {
      v10 = *(v3 + 40);
      v9 = *(v3 + 48);
      v11 = *(v3 + 24);
LABEL_8:
      *(a3 + 24) = &type metadata for SpeakableString;
      v12 = swift_allocObject();
      *a3 = v12;
      v12[2] = v11;
      v12[3] = v8;
      v12[4] = v10;
      v12[5] = v9;

      return result;
    }

    goto LABEL_127;
  }

  v14 = a1 == 0x614E656C6464696DLL && a2 == 0xEA0000000000656DLL;
  if (v14 || (OUTLINED_FUNCTION_49(0x614E656C6464696DLL, 0xEA0000000000656DLL) & 1) != 0)
  {
    v8 = *(v3 + 64);
    if (v8)
    {
      v10 = *(v3 + 72);
      v9 = *(v3 + 80);
      v11 = *(v3 + 56);
      goto LABEL_8;
    }

LABEL_127:
    result = 0.0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
    return result;
  }

  v15 = a1 == 0x614E796C696D6166 && a2 == 0xEA0000000000656DLL;
  if (v15 || (OUTLINED_FUNCTION_49(0x614E796C696D6166, 0xEA0000000000656DLL) & 1) != 0)
  {
    v8 = *(v3 + 96);
    if (v8)
    {
      v10 = *(v3 + 104);
      v9 = *(v3 + 112);
      v11 = *(v3 + 88);
      goto LABEL_8;
    }

    goto LABEL_127;
  }

  v16 = a1 == 0x656D616E6B63696ELL && a2 == 0xE800000000000000;
  if (v16 || (OUTLINED_FUNCTION_49(0x656D616E6B63696ELL, 0xE800000000000000) & 1) != 0)
  {
    v8 = *(v3 + 128);
    if (v8)
    {
      v10 = *(v3 + 136);
      v9 = *(v3 + 144);
      v11 = *(v3 + 120);
      goto LABEL_8;
    }

    goto LABEL_127;
  }

  v17 = OUTLINED_FUNCTION_38_2();
  v18 = a1 == v17 && a2 == 0xE800000000000000;
  if (v18 || (OUTLINED_FUNCTION_49(v17, 0xE800000000000000) & 1) != 0)
  {
    sub_222D16C60(&v46);
    goto LABEL_38;
  }

  v24 = a1 == 0x6E756F6E6F7270 && a2 == 0xE700000000000000;
  if (!v24 && (OUTLINED_FUNCTION_49(0x6E756F6E6F7270, 0xE700000000000000) & 1) == 0)
  {
    v27 = a1 == 0x796E61706D6F63 && a2 == 0xE700000000000000;
    if (v27 || (OUTLINED_FUNCTION_49(0x796E61706D6F63, 0xE700000000000000) & 1) != 0)
    {
      v8 = *(v3 + 200);
      if (v8)
      {
        v10 = *(v3 + 208);
        v9 = *(v3 + 216);
        v11 = *(v3 + 192);
        goto LABEL_8;
      }

      goto LABEL_127;
    }

    v28 = a1 == 0xD000000000000015 && 0x8000000222D59A90 == a2;
    if (v28 || (OUTLINED_FUNCTION_49(0xD000000000000015, 0x8000000222D59A90) & 1) != 0)
    {
      v29 = *(v3 + 224);
    }

    else
    {
      v30 = a1 == 0x646574616C6572 && a2 == 0xE700000000000000;
      if (v30 || (OUTLINED_FUNCTION_49(0x646574616C6572, 0xE700000000000000) & 1) != 0)
      {
        v29 = *(v3 + 225);
      }

      else
      {
        v31 = OUTLINED_FUNCTION_36_3();
        v33 = a1 == v31 && a2 == v32;
        if (v33 || (OUTLINED_FUNCTION_49(v31, v32) & 1) != 0)
        {
          v25 = *(v3 + 232);
          if (!v25)
          {
            goto LABEL_127;
          }

          v26 = type metadata accessor for DialogPersonHandle();
          goto LABEL_47;
        }

        v34 = a1 == 0xD000000000000017 && 0x8000000222D59AC0 == a2;
        if (v34 || (OUTLINED_FUNCTION_49(0xD000000000000017, 0x8000000222D59AC0) & 1) != 0)
        {
          v29 = *(v3 + 240);
        }

        else
        {
          v35 = a1 == 0xD00000000000001CLL && 0x8000000222D59AE0 == a2;
          if (v35 || (OUTLINED_FUNCTION_49(0xD00000000000001CLL, 0x8000000222D59AE0) & 1) != 0)
          {
            v29 = *(v3 + 241);
          }

          else
          {
            v36 = OUTLINED_FUNCTION_35_3();
            v38 = a1 == v36 && a2 == v37;
            if (v38 || (OUTLINED_FUNCTION_49(v36, v37) & 1) != 0)
            {
              v8 = *(v3 + 256);
              if (v8)
              {
                v10 = *(v3 + 264);
                v9 = *(v3 + 272);
                v11 = *(v3 + 248);
                goto LABEL_8;
              }

              goto LABEL_127;
            }

            v39 = a1 == 0xD000000000000013 && 0x8000000222D59B10 == a2;
            if (!v39 && (OUTLINED_FUNCTION_49(0xD000000000000013, 0x8000000222D59B10) & 1) == 0)
            {
              v40 = a1 == 0x676E697274536F74 && a2 == 0xE800000000000000;
              if (v40 || (OUTLINED_FUNCTION_49(0x676E697274536F74, 0xE800000000000000) & 1) != 0)
              {
                v41 = 0x676E697274536F74;
                v42 = 0xE800000000000000;
              }

              else
              {
                v43 = a1 == 0x614E656C706D6973 && a2 == 0xEA0000000000656DLL;
                if (v43 || (OUTLINED_FUNCTION_49(0x614E656C706D6973, 0xEA0000000000656DLL) & 1) != 0)
                {
                  v41 = 0x614E656C706D6973;
                  v42 = 0xEA0000000000656DLL;
                }

                else
                {
                  v44 = a1 == 0xD000000000000010 && 0x8000000222D5AD90 == a2;
                  if (v44 || (OUTLINED_FUNCTION_49(0xD000000000000010, 0x8000000222D5AD90) & 1) != 0)
                  {
                    v41 = 0xD000000000000010;
                    v42 = 0x8000000222D5AD90;
                  }

                  else
                  {
                    v45 = a1 == 0xD000000000000012 && 0x8000000222D5ADB0 == a2;
                    if (!v45 && (OUTLINED_FUNCTION_49(0xD000000000000012, 0x8000000222D5ADB0) & 1) == 0)
                    {
                      goto LABEL_127;
                    }

                    v41 = 0xD000000000000012;
                    v42 = 0x8000000222D5ADB0;
                  }
                }
              }

              sub_222CFB804(v41, v42);
LABEL_38:
              v19 = v47;
              if (v47)
              {
                v21 = v48;
                v20 = v49;
                v22 = v46;
                *(a3 + 24) = &type metadata for SpeakableString;
                v23 = swift_allocObject();
                *a3 = v23;
                v23[2] = v22;
                v23[3] = v19;
                v23[4] = v21;
                v23[5] = v20;
                return result;
              }

              goto LABEL_127;
            }

            v29 = *(v3 + 280);
          }
        }
      }
    }

    *(a3 + 24) = MEMORY[0x277D839B0];
    *a3 = v29;
    return result;
  }

  v25 = *(v3 + 184);
  if (!v25)
  {
    goto LABEL_127;
  }

  v26 = type metadata accessor for DialogPronoun();
LABEL_47:
  *(a3 + 24) = v26;
  *a3 = v25;

  return result;
}

void sub_222D16C60(uint64_t *a1@<X8>)
{
  v3 = v1[19];
  v2 = v1[20];
  v4 = v1[21];
  v5 = v1[22];
  if (v2)
  {
    *a1 = v3;
    a1[1] = v2;
    a1[2] = v4;
    a1[3] = v5;
  }

  else
  {
    v6 = OUTLINED_FUNCTION_38_2();
    sub_222CFB804(v6, 0xE800000000000000);
  }

  sub_222CE3060(v3, v2, v4, v5);
}

unint64_t sub_222D16D28(uint64_t a1, uint64_t a2)
{
  v2 = sub_222D52ECC();

  if (v2 >= 0xE)
  {
    return 14;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_222D16D7C(char a1)
{
  result = 0x6D614E6E65766967;
  switch(a1)
  {
    case 1:
      v3 = 0x656C6464696DLL;
      return v3 & 0xFFFFFFFFFFFFLL | 0x614E000000000000;
    case 2:
      v3 = 0x796C696D6166;
      return v3 & 0xFFFFFFFFFFFFLL | 0x614E000000000000;
    case 3:
      v4 = 0x616E6B63696ELL;
      goto LABEL_10;
    case 4:
      v4 = 0x614E6C6C7566;
LABEL_10:
      result = v4 & 0xFFFFFFFFFFFFLL | 0x656D000000000000;
      break;
    case 5:
      result = 0x6E756F6E6F7270;
      break;
    case 6:
      result = 0x796E61706D6F63;
      break;
    case 7:
      result = 0xD000000000000015;
      break;
    case 8:
      result = 0x646574616C6572;
      break;
    case 9:
      result = OUTLINED_FUNCTION_36_3();
      break;
    case 10:
      result = 0xD000000000000017;
      break;
    case 11:
      result = 0xD00000000000001CLL;
      break;
    case 12:
      result = OUTLINED_FUNCTION_35_3();
      break;
    case 13:
      result = 0xD000000000000013;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_222D16F2C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_222D16D28(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t sub_222D16F5C@<X0>(unint64_t *a1@<X8>)
{
  result = sub_222D16D7C(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_222D16FA4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_222D16D74(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_222D16FD8(uint64_t a1)
{
  v2 = sub_222D173BC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_222D17014(uint64_t a1)
{
  v2 = sub_222D173BC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_222D17050(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03C160, &qword_222D550E0);
  OUTLINED_FUNCTION_113();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  v10 = &v70 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_222D173BC();
  sub_222D531AC();
  v11 = OUTLINED_FUNCTION_24_0(v3[3], v3[4], v3[5], v3[6]);
  v71 = 0;
  sub_222CE3060(v11, v12, v13, v14);
  v18 = sub_222CF2084(v15, v16, v17);
  OUTLINED_FUNCTION_3_8(v18, v19, v20, &type metadata for SpeakableString);
  if (v2)
  {
    OUTLINED_FUNCTION_26();
  }

  else
  {
    OUTLINED_FUNCTION_26();
    v21 = OUTLINED_FUNCTION_24_0(v3[7], v3[8], v3[9], v3[10]);
    v71 = 1;
    sub_222CE3060(v21, v22, v23, v24);
    OUTLINED_FUNCTION_3_8(v25, v26, v27, &type metadata for SpeakableString);
    OUTLINED_FUNCTION_26();
    v28 = OUTLINED_FUNCTION_24_0(v3[11], v3[12], v3[13], v3[14]);
    v71 = 2;
    sub_222CE3060(v28, v29, v30, v31);
    OUTLINED_FUNCTION_3_8(v32, v33, v34, &type metadata for SpeakableString);
    OUTLINED_FUNCTION_26();
    v35 = OUTLINED_FUNCTION_24_0(v3[15], v3[16], v3[17], v3[18]);
    v71 = 3;
    sub_222CE3060(v35, v36, v37, v38);
    OUTLINED_FUNCTION_3_8(v39, v40, v41, &type metadata for SpeakableString);
    OUTLINED_FUNCTION_26();
    v42 = OUTLINED_FUNCTION_24_0(v3[19], v3[20], v3[21], v3[22]);
    v71 = 4;
    sub_222CE3060(v42, v43, v44, v45);
    OUTLINED_FUNCTION_3_8(v46, v47, v48, &type metadata for SpeakableString);
    OUTLINED_FUNCTION_26();
    v72 = v3[23];
    v71 = 5;
    type metadata accessor for DialogPronoun();
    OUTLINED_FUNCTION_19_3();
    v52 = sub_222D17B24(v50, 255, v51, protocol conformance descriptor for DialogPronoun);
    OUTLINED_FUNCTION_29_2(v52);
    v53 = OUTLINED_FUNCTION_24_0(v3[24], v3[25], v3[26], v3[27]);
    v71 = 6;
    sub_222CE3060(v53, v54, v55, v56);
    OUTLINED_FUNCTION_3_8(v57, v58, v59, &type metadata for SpeakableString);
    OUTLINED_FUNCTION_26();
    OUTLINED_FUNCTION_10_3(7);
    OUTLINED_FUNCTION_10_3(8);
    v72 = v3[29];
    v71 = 9;
    type metadata accessor for DialogPersonHandle();
    OUTLINED_FUNCTION_20_4();
    v62 = sub_222D17B24(v60, 255, v61, protocol conformance descriptor for DialogPersonHandle);
    OUTLINED_FUNCTION_29_2(v62);
    OUTLINED_FUNCTION_10_3(10);
    OUTLINED_FUNCTION_10_3(11);
    v63 = OUTLINED_FUNCTION_24_0(v3[31], v3[32], v3[33], v3[34]);
    v71 = 12;
    sub_222CE3060(v63, v64, v65, v66);
    OUTLINED_FUNCTION_3_8(v67, v68, v69, &type metadata for SpeakableString);
    OUTLINED_FUNCTION_26();
    OUTLINED_FUNCTION_10_3(13);
  }

  return (*(v7 + 8))(v10, v5);
}

unint64_t sub_222D173BC()
{
  result = qword_280D3CE70;
  if (!qword_280D3CE70)
  {
    result = swift_getWitnessTable(aUbn, &type metadata for DialogPerson.CodingKeys, v0, v1);
    atomic_store(result, &qword_280D3CE70);
  }

  return result;
}

uint64_t DialogPerson.__allocating_init(from:)(void *a1)
{
  OUTLINED_FUNCTION_30_2();
  v2 = swift_allocObject();
  DialogPerson.init(from:)(a1);
  return v2;
}

uint64_t DialogPerson.init(from:)(void *a1)
{
  v3 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03C168, &qword_222D550E8);
  OUTLINED_FUNCTION_113();
  MEMORY[0x28223BE20](v5);
  *(v1 + 16) = 0;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_222D173BC();
  v6 = sub_222D5318C();
  if (v2)
  {

    type metadata accessor for DialogPerson();
    swift_deallocPartialClassInstance();
  }

  else
  {
    sub_222D0099C(v6, v7, v8);
    OUTLINED_FUNCTION_1_9();
    sub_222D52F1C();
    *(v1 + 24) = v19;
    *(v1 + 40) = v20;
    OUTLINED_FUNCTION_1_9();
    sub_222D52F1C();
    *(v1 + 56) = v19;
    *(v1 + 72) = v20;
    OUTLINED_FUNCTION_1_9();
    sub_222D52F1C();
    *(v1 + 88) = v19;
    *(v1 + 104) = v20;
    OUTLINED_FUNCTION_1_9();
    sub_222D52F1C();
    *(v1 + 120) = v19;
    *(v1 + 136) = v20;
    OUTLINED_FUNCTION_1_9();
    sub_222D52F1C();
    *(v1 + 152) = v19;
    *(v1 + 168) = v20;
    type metadata accessor for DialogPronoun();
    OUTLINED_FUNCTION_19_3();
    v12 = sub_222D17B24(v10, 255, v11, protocol conformance descriptor for DialogPronoun);
    OUTLINED_FUNCTION_28_3(v12);
    *(v1 + 184) = v19;
    OUTLINED_FUNCTION_1_9();
    sub_222D52F1C();
    *(v1 + 192) = v19;
    *(v1 + 208) = v20;
    *(v1 + 224) = OUTLINED_FUNCTION_9_5(7) & 1;
    *(v1 + 225) = OUTLINED_FUNCTION_9_5(8) & 1;
    type metadata accessor for DialogPersonHandle();
    OUTLINED_FUNCTION_20_4();
    v15 = sub_222D17B24(v13, 255, v14, protocol conformance descriptor for DialogPersonHandle);
    OUTLINED_FUNCTION_28_3(v15);
    *(v1 + 232) = v19;
    *(v1 + 240) = OUTLINED_FUNCTION_9_5(10) & 1;
    *(v1 + 241) = OUTLINED_FUNCTION_9_5(11) & 1;
    OUTLINED_FUNCTION_1_9();
    sub_222D52F1C();
    *(v1 + 248) = v19;
    *(v1 + 264) = v20;
    v16 = OUTLINED_FUNCTION_9_5(13);
    v17 = OUTLINED_FUNCTION_4_7();
    v18(v17);
    *(v3 + 280) = v16 & 1;
  }

  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v3;
}

uint64_t sub_222D17AA0(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = sub_222D17B24(&qword_280D3CB38, a2, type metadata accessor for DialogPerson, protocol conformance descriptor for DialogPerson);
  result = sub_222D17B24(qword_280D3CB40, v3, type metadata accessor for DialogPerson, protocol conformance descriptor for DialogPerson);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_222D17B24(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), const char *a4)
{
  result = *a1;
  if (!result)
  {
    v7 = a3(a2);
    result = swift_getWitnessTable(a4, v7);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_222D17B6C@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 352))();
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DialogPerson.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF3)
  {
    if (a2 + 13 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 13) >> 8 < 0xFF)
    {
      v3 = 1;
    }

    else
    {
      v3 = v2;
    }

    if (v3 == 4)
    {
      v4 = *(a1 + 1);
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 14;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xE;
  v5 = v6 - 14;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for DialogPerson.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 13 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 13) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF2)
  {
    v6 = ((a2 - 243) >> 8) + 1;
    *result = a2 + 13;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 13;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_222D189B0()
{
  result = qword_27D03C178;
  if (!qword_27D03C178)
  {
    result = swift_getWitnessTable(aMnD, &type metadata for DialogPerson.CodingKeys, v0, v1);
    atomic_store(result, &qword_27D03C178);
  }

  return result;
}

unint64_t sub_222D18A08()
{
  result = qword_280D3CE60;
  if (!qword_280D3CE60)
  {
    result = swift_getWitnessTable(byte_222D552C4, &type metadata for DialogPerson.CodingKeys, v0, v1);
    atomic_store(result, &qword_280D3CE60);
  }

  return result;
}

unint64_t sub_222D18A60()
{
  result = qword_280D3CE68;
  if (!qword_280D3CE68)
  {
    result = swift_getWitnessTable(byte_222D552EC, &type metadata for DialogPerson.CodingKeys, v0, v1);
    atomic_store(result, &qword_280D3CE68);
  }

  return result;
}

__n128 sub_222D18AB8(_OWORD *a1, uint64_t a2)
{
  OUTLINED_FUNCTION_67((v2 + 2), a2);
  v4 = v2[2];
  v5 = v2[3];
  v6 = v2[4];
  v7 = v2[5];
  v8 = a1[1];
  *(v2 + 1) = *a1;
  *(v2 + 2) = v8;
  sub_222CE2920(v4, v5, v6, v7);
  return result;
}

double sub_222D18AFC@<D0>(void (*a1)(_OWORD *__return_ptr)@<X3>, _OWORD *a2@<X8>)
{
  a1(v5);
  result = *v5;
  v4 = v5[1];
  *a2 = v5[0];
  a2[1] = v4;
  return result;
}

uint64_t sub_222D18B3C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t *))
{
  v6 = a1[1];
  v7 = a1[2];
  v8 = a1[3];
  v10[0] = *a1;
  v10[1] = v6;
  v10[2] = v7;
  v10[3] = v8;
  sub_222CE3060(v10[0], v6, v7, v8);
  return a5(v10);
}

double SirikitLocalizedAppName.Builder.__allocating_init()()
{
  OUTLINED_FUNCTION_5_7();
  v0 = swift_allocObject();
  result = 0.0;
  v0[1] = 0u;
  v0[2] = 0u;
  v0[3] = 0u;
  v0[4] = 0u;
  return result;
}

double SirikitLocalizedAppName.Builder.init()()
{
  result = 0.0;
  v0[3] = 0u;
  v0[4] = 0u;
  v0[1] = 0u;
  v0[2] = 0u;
  return result;
}

uint64_t SirikitLocalizedAppName.Builder.__allocating_init(locale:appName:)(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_5_7();
  v4 = swift_allocObject();
  SirikitLocalizedAppName.Builder.init(locale:appName:)(a1, a2);
  return v4;
}

uint64_t *SirikitLocalizedAppName.Builder.init(locale:appName:)(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(a1 + 24);
  v5 = *a2;
  v16 = *(a1 + 8);
  v17 = *(a2 + 8);
  v6 = *(a2 + 24);
  *(v2 + 2) = 0u;
  *(v2 + 4) = 0u;
  *(v2 + 3) = 0u;
  *(v2 + 1) = 0u;
  swift_beginAccess();
  v7 = v2[2];
  v8 = v2[3];
  v9 = v2[4];
  v10 = v2[5];
  v2[2] = v3;
  *(v2 + 3) = v16;
  v2[5] = v4;
  sub_222CE2920(v7, v8, v9, v10);
  swift_beginAccess();
  v11 = v2[6];
  v12 = v2[7];
  v13 = v2[8];
  v14 = v2[9];
  v2[6] = v5;
  *(v2 + 7) = v17;
  v2[9] = v6;
  sub_222CE2920(v11, v12, v13, v14);
  return v2;
}

uint64_t sub_222D18CF4()
{
  type metadata accessor for SirikitLocalizedAppName();
  v0 = swift_allocObject();

  SirikitLocalizedAppName.init(builder:)(v1);
  return v0;
}

uint64_t SirikitLocalizedAppName.__allocating_init(builder:)(void *a1)
{
  OUTLINED_FUNCTION_92();
  v2 = swift_allocObject();
  SirikitLocalizedAppName.init(builder:)(a1);
  return v2;
}

uint64_t *SirikitLocalizedAppName.Builder.deinit()
{
  sub_222CE2920(v0[2], v0[3], v0[4], v0[5]);
  sub_222CE2920(v0[6], v0[7], v0[8], v0[9]);
  return v0;
}

uint64_t SirikitLocalizedAppName.Builder.__deallocating_deinit()
{
  SirikitLocalizedAppName.Builder.deinit();
  v0 = OUTLINED_FUNCTION_5_7();

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

void *SirikitLocalizedAppName.init(builder:)(void *a1)
{
  v1[2] = 0;
  swift_beginAccess();
  v3 = a1[2];
  v4 = a1[3];
  v5 = a1[4];
  v6 = a1[5];
  v1[3] = v3;
  v1[4] = v4;
  v1[5] = v5;
  v1[6] = v6;
  swift_beginAccess();
  v7 = a1[6];
  v8 = a1[7];
  v9 = a1[8];
  v10 = a1[9];
  v1[7] = v7;
  v1[8] = v8;
  v1[9] = v9;
  v1[10] = v10;
  v18 = *(*v1 + 152);
  sub_222CE3060(v3, v4, v5, v6);
  sub_222CE3060(v7, v8, v9, v10);
  if ((v18() & 1) == 0)
  {
    if (qword_280D3DB78 != -1)
    {
      swift_once();
    }

    sub_222D52C3C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03BDD8, &qword_222D53BD0);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_222D53980;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03C180, &qword_222D55408);
    v12 = sub_222D5297C();
    v14 = v13;
    *(v11 + 56) = MEMORY[0x277D837D0];
    *(v11 + 64) = sub_222CDDCB0(v12, v13, v15);
    *(v11 + 32) = v12;
    *(v11 + 40) = v14;
    sub_222D5280C("Building an instance of %s without all required inputs", v17);
  }

  return v1;
}

double sub_222D19020@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = a1 == 0x656C61636F6CLL && a2 == 0xE600000000000000;
  if (!v6 && (sub_222D5305C() & 1) == 0)
  {
    v14 = a1 == 0x656D614E707061 && a2 == 0xE700000000000000;
    if (v14 || (sub_222D5305C() & 1) != 0)
    {
      v8 = v3[8];
      if (v8)
      {
        v10 = v3[9];
        v9 = v3[10];
        v11 = v3[7];
        goto LABEL_8;
      }
    }

LABEL_18:
    result = 0.0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
    return result;
  }

  v8 = v3[4];
  if (!v8)
  {
    goto LABEL_18;
  }

  v10 = v3[5];
  v9 = v3[6];
  v11 = v3[3];
LABEL_8:
  *(a3 + 24) = &type metadata for SpeakableString;
  v12 = swift_allocObject();
  *a3 = v12;
  v12[2] = v11;
  v12[3] = v8;
  v12[4] = v10;
  v12[5] = v9;

  return result;
}

uint64_t sub_222D1914C(uint64_t a1, uint64_t a2)
{
  v2 = sub_222D52ECC();

  if (v2 == 1)
  {
    v3 = 1;
  }

  else
  {
    v3 = 2;
  }

  if (v2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_222D191A0(char a1)
{
  if (a1)
  {
    return 0x656D614E707061;
  }

  else
  {
    return 0x656C61636F6CLL;
  }
}

uint64_t sub_222D191F8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_222D1914C(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_222D19228@<X0>(uint64_t *a1@<X8>)
{
  result = sub_222D191A0(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_222D1925C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_222D1914C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_222D19284(uint64_t a1)
{
  v2 = sub_222D194E8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_222D192C0(uint64_t a1)
{
  v2 = sub_222D194E8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SirikitLocalizedAppName.deinit()
{
  sub_222CE2920(*(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48));
  sub_222CE2920(*(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80));
  return v0;
}

uint64_t SirikitLocalizedAppName.__deallocating_deinit()
{
  SirikitLocalizedAppName.deinit();
  v0 = OUTLINED_FUNCTION_92();

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_222D19360(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03C188, &qword_222D55410);
  OUTLINED_FUNCTION_113();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  v10 = &v27 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_222D194E8();
  sub_222D531AC();
  v11 = v3[4];
  v12 = v3[5];
  v13 = v3[6];
  v29 = v3[3];
  v30 = v11;
  v31 = v12;
  v32 = v13;
  v28 = 0;
  sub_222CE3060(v29, v11, v12, v13);
  v17 = sub_222CF2084(v14, v15, v16);
  OUTLINED_FUNCTION_6_2(v17, v18, v19, &type metadata for SpeakableString);
  sub_222CE2920(v29, v30, v31, v32);
  if (!v2)
  {
    v20 = v3[8];
    v21 = v3[9];
    v22 = v3[10];
    v29 = v3[7];
    v30 = v20;
    v31 = v21;
    v32 = v22;
    v28 = 1;
    sub_222CE3060(v29, v20, v21, v22);
    OUTLINED_FUNCTION_6_2(v23, v24, v25, &type metadata for SpeakableString);
    sub_222CE2920(v29, v30, v31, v32);
  }

  return (*(v7 + 8))(v10, v5);
}

unint64_t sub_222D194E8()
{
  result = qword_27D03C190;
  if (!qword_27D03C190)
  {
    result = swift_getWitnessTable(aN0, &type metadata for SirikitLocalizedAppName.CodingKeys, v0, v1);
    atomic_store(result, &qword_27D03C190);
  }

  return result;
}

uint64_t SirikitLocalizedAppName.__allocating_init(from:)(void *a1)
{
  OUTLINED_FUNCTION_92();
  v2 = swift_allocObject();
  SirikitLocalizedAppName.init(from:)(a1);
  return v2;
}

uint64_t SirikitLocalizedAppName.init(from:)(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03C198, &qword_222D55418);
  OUTLINED_FUNCTION_113();
  MEMORY[0x28223BE20](v4);
  *(v1 + 16) = 0;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_222D194E8();
  v5 = sub_222D5318C();
  if (v2)
  {

    type metadata accessor for SirikitLocalizedAppName();
    swift_deallocPartialClassInstance();
  }

  else
  {
    sub_222D0099C(v5, v6, v7);
    OUTLINED_FUNCTION_3(&type metadata for SpeakableString);
    *(v1 + 24) = v11;
    *(v1 + 40) = v12;
    OUTLINED_FUNCTION_3(&type metadata for SpeakableString);
    v9 = OUTLINED_FUNCTION_2();
    v10(v9);
    *(v1 + 56) = v11;
    *(v1 + 72) = v12;
  }

  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v1;
}

uint64_t sub_222D197CC(uint64_t a1)
{
  *(a1 + 8) = sub_222D19834(&qword_27D03C070, protocol conformance descriptor for SirikitLocalizedAppName);
  result = sub_222D19834(&qword_27D03C058, protocol conformance descriptor for SirikitLocalizedAppName);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_222D19834(unint64_t *a1, const char *a2)
{
  result = *a1;
  if (!result)
  {
    v5 = type metadata accessor for SirikitLocalizedAppName();
    result = swift_getWitnessTable(a2, v5);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_222D19874@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 176))();
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for SirikitLocalizedAppName.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_222D19D2C()
{
  result = qword_27D03C1A0;
  if (!qword_27D03C1A0)
  {
    result = swift_getWitnessTable(byte_222D555D4, &type metadata for SirikitLocalizedAppName.CodingKeys, v0, v1);
    atomic_store(result, &qword_27D03C1A0);
  }

  return result;
}

unint64_t sub_222D19D84()
{
  result = qword_27D03C1A8;
  if (!qword_27D03C1A8)
  {
    result = swift_getWitnessTable(byte_222D5550C, &type metadata for SirikitLocalizedAppName.CodingKeys, v0, v1);
    atomic_store(result, &qword_27D03C1A8);
  }

  return result;
}

unint64_t sub_222D19DDC()
{
  result = qword_27D03C1B0;
  if (!qword_27D03C1B0)
  {
    result = swift_getWitnessTable(byte_222D55534, &type metadata for SirikitLocalizedAppName.CodingKeys, v0, v1);
    atomic_store(result, &qword_27D03C1B0);
  }

  return result;
}

uint64_t static CATEvaluator.evaluate(typeName:propName:parameters:globals:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03BE40, &unk_222D54A70);
  MEMORY[0x28223BE20](v11 - 8);
  OUTLINED_FUNCTION_0_7();
  v12 = sub_222D5210C();
  __swift_storeEnumTagSinglePayload(v6, 1, 1, v12);
  v13 = OUTLINED_FUNCTION_2_8();
  static CATEvaluator.evaluate(templateDir:typeName:propName:parameters:globals:)(v13, v14, v15, a3, a4, a5, a6, v16);
  return sub_222D1A39C(v6);
}

void static CATEvaluator.evaluate(templateDir:typeName:propName:parameters:globals:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03BE40, &unk_222D54A70);
  MEMORY[0x28223BE20](v16 - 8);
  OUTLINED_FUNCTION_0_7();
  if (sub_222D5217C())
  {
    v18 = 0;
  }

  else
  {
    v18 = v17 == 0xE000000000000000;
  }

  if (v18 || (sub_222D5305C() & 1) != 0)
  {

    if (qword_280D3DB78 != -1)
    {
      swift_once();
    }

    v19 = qword_280D3DB80;
    v20 = sub_222D52C3C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03BDD8, &qword_222D53BD0);
    v21 = swift_allocObject();
    *(v21 + 16) = xmmword_222D53970;
    v22 = MEMORY[0x277D837D0];
    *(v21 + 56) = MEMORY[0x277D837D0];
    v25 = sub_222CDDCB0(v21, v23, v24);
    *(v21 + 32) = a2;
    *(v21 + 40) = a3;
    *(v21 + 96) = v22;
    *(v21 + 104) = v25;
    *(v21 + 64) = v25;
    *(v21 + 72) = a4;
    *(v21 + 80) = a5;

    sub_222D5280C("CATEvaluator called for %@.%@ with no locale defined", 52, 2, &dword_222CDA000, v19, v20, v21);

    goto LABEL_9;
  }

  v40 = a1;
  v26 = [objc_allocWithZone(MEMORY[0x277D05288]) init];
  v27 = sub_222D528FC();

  OUTLINED_FUNCTION_1_10(v28, sel_setLocale_);

  v29 = *(a7 + OBJC_IVAR____TtC16SiriDialogEngine10CATGlobals_globalParameters);
  if (v29)
  {
    v29 = sub_222D5288C();
  }

  OUTLINED_FUNCTION_1_10(v29, sel_setGlobalParameters_);
  swift_unknownObjectRelease();
  v30 = *(a7 + OBJC_IVAR____TtC16SiriDialogEngine10CATGlobals_userSettings);
  if (v30)
  {
    v30 = sub_222D5288C();
  }

  OUTLINED_FUNCTION_1_10(v30, sel_setUserSettings_);
  swift_unknownObjectRelease();
  __swift_project_boxed_opaque_existential_1(a6, a6[3]);
  v31 = sub_222D5304C();
  OUTLINED_FUNCTION_1_10(v31, sel_setParameters_);
  swift_unknownObjectRelease();
  v32 = sub_222D528FC();
  OUTLINED_FUNCTION_1_10(v32, sel_setTypeName_);

  v33 = sub_222D528FC();
  OUTLINED_FUNCTION_1_10(v33, sel_setPropName_);

  sub_222CDCA28(v40, v8);
  v34 = sub_222D5210C();
  if (__swift_getEnumTagSinglePayload(v8, 1, v34) == 1)
  {
    sub_222D1A39C(v8);
  }

  else
  {
    sub_222D520FC();
    (*(*(v34 - 8) + 8))(v8, v34);
    v35 = sub_222D528FC();

    OUTLINED_FUNCTION_1_10(v36, sel_setTemplateDir_);
  }

  v37 = [v26 evaluate];
  if (!v37)
  {

LABEL_9:
    *a8 = 0u;
    *(a8 + 16) = 0u;
    return;
  }

  v38 = v37;
  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    v39 = v38;
    sub_222D5291C();
  }

  *(a8 + 24) = sub_222D151D0();

  *a8 = v38;
}

uint64_t sub_222D1A39C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03BE40, &unk_222D54A70);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id static CATEvaluator.evaluate(bundle:typeName:propName:parameters:globals:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7)
{
  v22 = a6;
  v23 = a7;
  v20 = a4;
  v21 = a5;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03BE40, &unk_222D54A70);
  MEMORY[0x28223BE20](v9 - 8);
  OUTLINED_FUNCTION_0_7();
  v10 = sub_222D5210C();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [objc_opt_self() bundleTemplateDir_];
  if (result)
  {
    v15 = result;
    sub_222D5292C();

    sub_222D520BC();

    (*(v11 + 16))(v7, v13, v10);
    __swift_storeEnumTagSinglePayload(v7, 0, 1, v10);
    v16 = OUTLINED_FUNCTION_2_8();
    static CATEvaluator.evaluate(templateDir:typeName:propName:parameters:globals:)(v16, v17, v18, v20, v21, v22, v23, v19);
    sub_222D1A39C(v7);
    return (*(v11 + 8))(v13, v10);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void static CATExecutor.execute(templateDir:catId:parameters:globals:callback:options:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  OUTLINED_FUNCTION_73();
  v45 = v21;
  v23 = v22;
  v25 = v24;
  v27 = v26;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03C008, &qword_222D55030);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v28);
  v30 = (&v44 - v29);
  v46[0] = *v23;
  sub_222CECA4C();
  v33 = v31;
  if (v32)
  {
    v34 = v32;
    *v30 = v32;
    swift_storeEnumTagMultiPayload();
    v35 = v34;
    v45(v30);
  }

  else
  {
    v36 = v25;
    v37 = v45;
    if (v31)
    {
      v38 = swift_allocObject();
      v38[2] = v37;
      v38[3] = a21;
      v38[4] = v27;
      v38[5] = v36;
      v46[4] = sub_222D1AAC0;
      v46[5] = v38;
      v46[0] = MEMORY[0x277D85DD0];
      v46[1] = 1107296256;
      v46[2] = sub_222CE3BA4;
      v46[3] = &block_descriptor_0;
      v39 = _Block_copy(v46);
      v40 = v33;

      [v40 executeWithCompletionBlock_];
      _Block_release(v39);

      goto LABEL_6;
    }

    type metadata accessor for CATResultProvider();
    OUTLINED_FUNCTION_0_5();
    *v30 = sub_222D0B314(0xD00000000000001DLL, v41, v42, v43);
    swift_storeEnumTagMultiPayload();
    v37(v30);
  }

  sub_222CDC59C(v30, &qword_27D03C008, &qword_222D55030);
LABEL_6:
  OUTLINED_FUNCTION_74();
}

void static CATExecutor.execute(templateDir:catId:parameters:globals:callback:options:)(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  sub_222CECA4C();
  if (v7)
  {
    v8 = v7;

    *a3 = v8;
LABEL_3:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03C008, &qword_222D55030);

    swift_storeEnumTagMultiPayload();
    return;
  }

  if (!v6)
  {
    type metadata accessor for CATResultProvider();
    OUTLINED_FUNCTION_0_5();
    *a3 = sub_222D0B314(0xD00000000000001DLL, v10, v11, v12);
    goto LABEL_3;
  }

  v9 = v6;
  v13 = [v9 execute];
  type metadata accessor for CATResultProvider();
  sub_222D0B42C(v13, a1, a2, a3);
}

id static CATExecutor.preload()()
{
  v0 = objc_opt_self();

  return [v0 preload];
}

uint64_t sub_222D1A9DC(void *a1, void (*a2)(uint64_t *), uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03C008, &qword_222D55030);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = (&v13 - v10);
  type metadata accessor for CATResultProvider();
  sub_222D0B42C(a1, a4, a5, v11);
  a2(v11);
  return sub_222CDC59C(v11, &qword_27D03C008, &qword_222D55030);
}

void static CATExecutor.execute(bundle:catId:parameters:globals:callback:options:)()
{
  OUTLINED_FUNCTION_73();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = sub_222D5210C();
  OUTLINED_FUNCTION_113();
  v10 = v9;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_6_5();
  v14 = v13 - v12;
  [objc_opt_self() registerBundle_];
  v15 = [objc_opt_self() bundleTemplateDir_];
  if (v15)
  {
    v16 = v15;
    sub_222D5292C();

    sub_222D520BC();

    static CATExecutor.execute(templateDir:catId:parameters:globals:callback:options:)(v3, v1, v7);
    (*(v10 + 8))(v14, v8);
    OUTLINED_FUNCTION_74();
  }

  else
  {
    __break(1u);
  }
}

void static CATExecutor.execute(catId:parameters:globals:callback:options:)()
{
  OUTLINED_FUNCTION_73();
  v16 = v0;
  v15 = v1;
  v3 = v2;
  v4 = sub_222D5210C();
  OUTLINED_FUNCTION_113();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_6_5();
  v10 = v9 - v8;
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v12 = [objc_opt_self() bundleForClass_];
  [objc_opt_self() registerBundle_];
  v13 = [objc_opt_self() bundleTemplateDir_];
  if (v13)
  {
    v14 = v13;
    sub_222D5292C();

    sub_222D520BC();

    static CATExecutor.execute(templateDir:catId:parameters:globals:callback:options:)(v15, v16, v3);

    (*(v6 + 8))(v10, v4);
    OUTLINED_FUNCTION_74();
  }

  else
  {
    __break(1u);
  }
}

id static CATExecutor.registerBundle(bundle:)(uint64_t a1)
{
  v2 = objc_opt_self();

  return [v2 registerBundle_];
}

void static CATExecutor.registerBundle(bundle:templateDir:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = objc_opt_self();
  v5 = sub_222D528FC();
  [v4 registerBundle:a1 withTemplateDir:v5];
}

void static CATExecutor.registerBundle(bundleId:templateDir:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = objc_opt_self();
  v5 = sub_222D528FC();
  v6 = sub_222D528FC();
  [v4 registerBundleId:v5 withTemplateDir:v6];
}

uint64_t sub_222D1B274()
{
  OUTLINED_FUNCTION_14_2();

  OUTLINED_FUNCTION_13();

  return v1();
}

uint64_t static CATDialog.execute(bundle:catId:parameters:globals:callback:options:)()
{
  OUTLINED_FUNCTION_14_2();
  v3 = v2;
  v1[8] = v4;
  v1[9] = v0;
  v1[6] = v5;
  v1[7] = v6;
  v1[4] = v7;
  v1[5] = v8;
  v1[3] = v9;
  v10 = sub_222D5210C();
  v1[10] = v10;
  v1[11] = *(v10 - 8);
  v11 = swift_task_alloc();
  v12 = *v3;
  v1[12] = v11;
  v1[13] = v12;
  OUTLINED_FUNCTION_23();

  return MEMORY[0x2822009F8](v13, v14, v15);
}

id sub_222D1B3A4()
{
  v1 = v0[3];
  [objc_opt_self() registerBundle_];
  result = [objc_opt_self() bundleTemplateDir_];
  if (result)
  {
    v3 = result;
    v4 = v0[13];
    sub_222D5292C();

    sub_222D520BC();

    v0[2] = v4;
    v5 = swift_task_alloc();
    v0[14] = v5;
    *v5 = v0;
    v5[1] = sub_222D1B4DC;
    v6 = v0[12];
    v7 = v0[7];
    v8 = v0[8];
    v9 = v0[5];
    v10 = v0[6];
    v11 = v0[4];

    return static CATDialog.execute(templateDir:catId:parameters:globals:callback:options:)(v6, v11, v9, v10, v7, v8, v0 + 2);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_222D1B4DC()
{
  OUTLINED_FUNCTION_11();
  v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_9_4();
  *v5 = v4;
  v6 = *v1;
  OUTLINED_FUNCTION_9_4();
  *v7 = v6;
  *(v4 + 120) = v0;

  if (!v0)
  {
    *(v4 + 128) = v3;
  }

  OUTLINED_FUNCTION_23();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_222D1B5F4()
{
  OUTLINED_FUNCTION_14_2();
  v0 = OUTLINED_FUNCTION_4_9();
  v1(v0);

  v2 = OUTLINED_FUNCTION_6_8();

  return v3(v2);
}

uint64_t sub_222D1B65C()
{
  OUTLINED_FUNCTION_14_2();
  v0 = OUTLINED_FUNCTION_4_9();
  v1(v0);

  OUTLINED_FUNCTION_13();

  return v2();
}

uint64_t static CATDialog.execute(catId:parameters:globals:callback:options:)()
{
  OUTLINED_FUNCTION_14_2();
  v3 = v2;
  v1[7] = v4;
  v1[8] = v0;
  v1[5] = v5;
  v1[6] = v6;
  v1[3] = v7;
  v1[4] = v8;
  v9 = sub_222D5210C();
  v1[9] = v9;
  v1[10] = *(v9 - 8);
  v10 = swift_task_alloc();
  v11 = *v3;
  v1[11] = v10;
  v1[12] = v11;
  OUTLINED_FUNCTION_23();

  return MEMORY[0x2822009F8](v12, v13, v14);
}

id sub_222D1B790()
{
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = [objc_opt_self() bundleForClass_];
  v0[13] = v2;
  [objc_opt_self() registerBundle_];
  result = [objc_opt_self() bundleTemplateDir_];
  if (result)
  {
    v4 = result;
    v5 = v0[12];
    sub_222D5292C();

    sub_222D520BC();

    v0[2] = v5;
    v6 = swift_task_alloc();
    v0[14] = v6;
    *v6 = v0;
    v6[1] = sub_222D1B8FC;
    v7 = v0[11];
    v8 = v0[6];
    v9 = v0[7];
    v10 = v0[4];
    v11 = v0[5];
    v12 = v0[3];

    return static CATDialog.execute(templateDir:catId:parameters:globals:callback:options:)(v7, v12, v10, v11, v8, v9, v0 + 2);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_222D1B8FC()
{
  OUTLINED_FUNCTION_11();
  v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_9_4();
  *v5 = v4;
  v6 = *v1;
  OUTLINED_FUNCTION_9_4();
  *v7 = v6;
  *(v4 + 120) = v0;

  if (!v0)
  {
    *(v4 + 128) = v3;
  }

  OUTLINED_FUNCTION_23();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_222D1BA14()
{
  OUTLINED_FUNCTION_11();
  v2 = *(v0 + 80);
  v1 = *(v0 + 88);
  v3 = *(v0 + 72);

  (*(v2 + 8))(v1, v3);

  v4 = OUTLINED_FUNCTION_6_8();

  return v5(v4);
}

uint64_t sub_222D1BA9C()
{
  OUTLINED_FUNCTION_11();
  v2 = *(v0 + 80);
  v1 = *(v0 + 88);
  v3 = *(v0 + 72);

  (*(v2 + 8))(v1, v3);

  OUTLINED_FUNCTION_13();

  return v4();
}

double DialogAbstractMeasurement.Builder.init()()
{
  *(v0 + 16) = 0;
  *(v0 + 24) = 1;
  result = 0.0;
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0u;
  return result;
}

uint64_t DialogAbstractMeasurement.Builder.init(value:)(double a1)
{
  *(v1 + 16) = 0;
  *(v1 + 24) = 1;
  *(v1 + 32) = 0u;
  *(v1 + 48) = 0u;
  swift_beginAccess();
  *(v1 + 16) = a1;
  *(v1 + 24) = 0;
  return v1;
}

uint64_t DialogAbstractMeasurement.Builder.deinit()
{
  v1 = OUTLINED_FUNCTION_7_0();
  sub_222CE2920(v1, v2, v3, v4);
  return v0;
}

uint64_t sub_222D1BC28(uint64_t a1, uint64_t a2)
{
  v3 = a2;
  result = OUTLINED_FUNCTION_67(v2 + 16, a2);
  *(v2 + 16) = a1;
  *(v2 + 24) = v3 & 1;
  return result;
}

void sub_222D1BC70(uint64_t a1@<X1>, uint64_t *a2@<X8>)
{
  OUTLINED_FUNCTION_8(v2 + 32, a1);
  v4 = OUTLINED_FUNCTION_7_0();
  *a2 = v4;
  a2[1] = v5;
  a2[2] = v6;
  a2[3] = v7;
  sub_222CE3060(v4, v5, v6, v7);
}

__n128 sub_222D1BCB0(_OWORD *a1, uint64_t a2)
{
  OUTLINED_FUNCTION_67(v2 + 32, a2);
  v4 = OUTLINED_FUNCTION_7_0();
  v5 = a1[1];
  *(v2 + 32) = *a1;
  *(v2 + 48) = v5;
  sub_222CE2920(v4, v6, v7, v8);
  return result;
}

uint64_t sub_222D1BCF0(uint64_t a1, uint64_t a2)
{
  v3 = a2;
  OUTLINED_FUNCTION_67(v2 + 16, a2);
  *(v2 + 16) = a1;
  *(v2 + 24) = v3 & 1;
}

uint64_t sub_222D1BD40(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = a1[2];
  v6 = a1[3];
  OUTLINED_FUNCTION_67((v2 + 4), a2);
  v2[4] = v3;
  v2[5] = v4;
  v2[6] = v5;
  v2[7] = v6;
  sub_222CE3060(v3, v4, v5, v6);
  OUTLINED_FUNCTION_117();
}

uint64_t sub_222D1BDC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = a4;
  if (!a4)
  {

    a3 = a1;
    v8 = a2;
  }

  OUTLINED_FUNCTION_67((v4 + 4), a2);
  v4[4] = a1;
  v4[5] = a2;
  v4[6] = a3;
  v4[7] = v8;

  OUTLINED_FUNCTION_117();
}

uint64_t DialogAbstractMeasurement.init(builder:)(uint64_t a1)
{
  *(v1 + 16) = 0;
  swift_beginAccess();
  v3 = *(a1 + 24);
  *(v1 + 24) = *(a1 + 16);
  *(v1 + 32) = v3;
  swift_beginAccess();
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  v6 = *(a1 + 56);
  *(v1 + 40) = *(a1 + 32);
  *(v1 + 48) = v4;
  *(v1 + 56) = v5;
  *(v1 + 64) = v6;
  OUTLINED_FUNCTION_96();
  v8 = *(v7 + 152);
  sub_222CE3060(v9, v10, v11, v12);
  if ((v8() & 1) == 0)
  {
    if (qword_280D3DB78 != -1)
    {
      swift_once();
    }

    sub_222D52C3C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03BDD8, &qword_222D53BD0);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_222D53980;
    OUTLINED_FUNCTION_96();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03C1C0, &qword_222D556D8);
    v14 = sub_222D5297C();
    v16 = v15;
    *(v13 + 56) = MEMORY[0x277D837D0];
    *(v13 + 64) = sub_222CDDCB0(v14, v15, v17);
    *(v13 + 32) = v14;
    *(v13 + 40) = v16;
    sub_222D5280C("Building an instance of %s without all required inputs", v19);
  }

  return v1;
}

uint64_t sub_222D1C028@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = 0x65756C6176;
  v7 = a1 == 0x65756C6176 && a2 == 0xE500000000000000;
  if (v7 || (result = OUTLINED_FUNCTION_8_5(0x65756C6176), (result & 1) != 0))
  {
    if (*(v3 + 32))
    {
LABEL_7:
      *a3 = 0u;
      *(a3 + 16) = 0u;
      return result;
    }

    v9 = *(v3 + 24);
    *(a3 + 24) = MEMORY[0x277D839F8];
    *a3 = v9;
  }

  else
  {
    result = 0x7374696E75;
    if (a1 != 0x7374696E75 || a2 != 0xE500000000000000)
    {
      result = OUTLINED_FUNCTION_8_5(0x7374696E75);
      if ((result & 1) == 0)
      {
        goto LABEL_7;
      }
    }

    v11 = *(v3 + 48);
    if (!v11)
    {
      goto LABEL_7;
    }

    v13 = *(v3 + 56);
    v12 = *(v3 + 64);
    v14 = *(v3 + 40);
    *(a3 + 24) = &type metadata for SpeakableString;
    v15 = swift_allocObject();
    *a3 = v15;
    v15[2] = v14;
    v15[3] = v11;
    v15[4] = v13;
    v15[5] = v12;
  }

  return result;
}

uint64_t DialogAbstractMeasurement.init(from:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03C1C8, &qword_222D556E0);
  OUTLINED_FUNCTION_113();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  v9 = v15 - v8;
  *(v1 + 16) = 0;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_222D1C320();
  sub_222D5318C();
  if (v2)
  {

    type metadata accessor for DialogAbstractMeasurement();
    swift_deallocPartialClassInstance();
  }

  else
  {
    LOBYTE(v15[0]) = 0;
    v10 = sub_222D52EFC();
    *(v1 + 24) = v10;
    *(v1 + 32) = v11 & 1;
    v16 = 1;
    sub_222D0099C(v10, v11, v12);
    sub_222D52F1C();
    (*(v6 + 8))(v9, v4);
    v14 = v15[1];
    *(v1 + 40) = v15[0];
    *(v1 + 56) = v14;
  }

  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v1;
}

unint64_t sub_222D1C320()
{
  result = qword_280D3D080;
  if (!qword_280D3D080)
  {
    result = swift_getWitnessTable(aUN, &type metadata for DialogAbstractMeasurement.CodingKeys, v0, v1);
    atomic_store(result, &qword_280D3D080);
  }

  return result;
}

uint64_t sub_222D1C398(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03C1D0, &qword_222D556E8);
  OUTLINED_FUNCTION_113();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  v10 = &v18[-v9];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_222D1C320();
  sub_222D531AC();
  LOBYTE(v19) = 0;
  sub_222D52FAC();
  if (!v2)
  {
    v11 = v3[6];
    v12 = v3[7];
    v13 = v3[8];
    v19 = v3[5];
    v20 = v11;
    v21 = v12;
    v22 = v13;
    v18[15] = 1;
    sub_222CE3060(v19, v11, v12, v13);
    sub_222CF2084(v14, v15, v16);
    sub_222D52FBC();
    sub_222CE2920(v19, v20, v21, v22);
  }

  return (*(v7 + 8))(v10, v5);
}

double sub_222D1C594@<D0>(uint64_t a1@<X1>, _OWORD *a2@<X8>)
{
  sub_222D1BC70(a1, v5);
  result = *v5;
  v4 = v5[1];
  *a2 = v5[0];
  a2[1] = v4;
  return result;
}

double sub_222D1C5D0(void *a1)
{
  v1 = a1[1];
  v2 = a1[2];
  v3 = a1[3];
  *&v6 = *a1;
  *(&v6 + 1) = v1;
  v7 = v2;
  v8 = v3;
  sub_222CE3060(v6, v1, v2, v3);
  *&result = sub_222D1BCB0(&v6, v4).n128_u64[0];
  return result;
}

double DialogAbstractMeasurement.Builder.__allocating_init()()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 0;
  *(v0 + 24) = 1;
  result = 0.0;
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0u;
  return result;
}

uint64_t DialogAbstractMeasurement.Builder.__allocating_init(value:)(double a1)
{
  v2 = swift_allocObject();
  DialogAbstractMeasurement.Builder.init(value:)(a1);
  return v2;
}

uint64_t sub_222D1C69C()
{
  type metadata accessor for DialogAbstractMeasurement();
  v0 = swift_allocObject();

  DialogAbstractMeasurement.init(builder:)(v1);
  return v0;
}

uint64_t DialogAbstractMeasurement.__allocating_init(builder:)(uint64_t a1)
{
  OUTLINED_FUNCTION_2_9();
  v2 = swift_allocObject();
  DialogAbstractMeasurement.init(builder:)(a1);
  return v2;
}

uint64_t DialogAbstractMeasurement.Builder.__deallocating_deinit()
{
  v1 = OUTLINED_FUNCTION_7_0();
  sub_222CE2920(v1, v2, v3, v4);

  return MEMORY[0x2821FE8D8](v0, 64, 7);
}

void DialogAbstractMeasurement.units.getter(uint64_t *a1@<X8>)
{
  v2 = v1[5];
  v3 = v1[6];
  v4 = v1[7];
  v5 = v1[8];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  sub_222CE3060(v2, v3, v4, v5);
}

uint64_t sub_222D1C78C(uint64_t a1, uint64_t a2)
{
  v2 = sub_222D52ECC();

  if (v2 == 1)
  {
    v3 = 1;
  }

  else
  {
    v3 = 2;
  }

  if (v2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_222D1C7E0(char a1)
{
  if (a1)
  {
    return 0x7374696E75;
  }

  else
  {
    return 0x65756C6176;
  }
}

uint64_t sub_222D1C82C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_222D1C78C(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_222D1C85C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_222D1C7E0(*v1);
  *a1 = result;
  a1[1] = 0xE500000000000000;
  return result;
}

uint64_t sub_222D1C8AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_222D1C78C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_222D1C8D4(uint64_t a1)
{
  v2 = sub_222D1C320();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_222D1C910(uint64_t a1)
{
  v2 = sub_222D1C320();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t DialogAbstractMeasurement.__deallocating_deinit()
{
  DialogAbstractMeasurement.deinit();
  v0 = OUTLINED_FUNCTION_2_9();

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t DialogAbstractMeasurement.__allocating_init(from:)(void *a1)
{
  OUTLINED_FUNCTION_2_9();
  v2 = swift_allocObject();
  DialogAbstractMeasurement.init(from:)(a1);
  return v2;
}

uint64_t sub_222D1CA1C(uint64_t a1)
{
  *(a1 + 8) = sub_222D1CA84(&qword_27D03C1D8, protocol conformance descriptor for DialogAbstractMeasurement);
  result = sub_222D1CA84(&qword_27D03C1E0, protocol conformance descriptor for DialogAbstractMeasurement);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_222D1CA84(unint64_t *a1, const char *a2)
{
  result = *a1;
  if (!result)
  {
    v5 = type metadata accessor for DialogAbstractMeasurement();
    result = swift_getWitnessTable(a2, v5);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_222D1CAC4@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 176))();
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for DialogAbstractMeasurement.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_222D1CF68()
{
  result = qword_27D03C1E8;
  if (!qword_27D03C1E8)
  {
    result = swift_getWitnessTable(byte_222D558AC, &type metadata for DialogAbstractMeasurement.CodingKeys, v0, v1);
    atomic_store(result, &qword_27D03C1E8);
  }

  return result;
}

unint64_t sub_222D1CFC0()
{
  result = qword_280D3D070;
  if (!qword_280D3D070)
  {
    result = swift_getWitnessTable(byte_222D557E4, &type metadata for DialogAbstractMeasurement.CodingKeys, v0, v1);
    atomic_store(result, &qword_280D3D070);
  }

  return result;
}

unint64_t sub_222D1D018()
{
  result = qword_280D3D078;
  if (!qword_280D3D078)
  {
    result = swift_getWitnessTable(byte_222D5580C, &type metadata for DialogAbstractMeasurement.CodingKeys, v0, v1);
    atomic_store(result, &qword_280D3D078);
  }

  return result;
}

double sub_222D1D098@<D0>(uint64_t a1@<X1>, _OWORD *a2@<X8>)
{
  sub_222D08518(a1, v5);
  result = *v5;
  v4 = v5[1];
  *a2 = v5[0];
  a2[1] = v4;
  return result;
}

double sub_222D1D0D4(void *a1)
{
  v1 = a1[1];
  v2 = a1[2];
  v3 = a1[3];
  *&v6 = *a1;
  *(&v6 + 1) = v1;
  v7 = v2;
  v8 = v3;
  sub_222CE3060(v6, v1, v2, v3);
  *&result = sub_222D0855C(&v6, v4).n128_u64[0];
  return result;
}

uint64_t sub_222D1D178(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_67(v2 + 80, a2);
  *(v2 + 80) = a1;
}

double DialogCalendar.Builder.__allocating_init()()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 0;
  *(v0 + 24) = 1;
  *(v0 + 32) = 0;
  *(v0 + 40) = 1;
  result = 0.0;
  *(v0 + 48) = 0u;
  *(v0 + 64) = 0u;
  *(v0 + 80) = 0;
  return result;
}

double DialogCalendar.Builder.init()()
{
  *(v0 + 16) = 0;
  *(v0 + 24) = 1;
  *(v0 + 32) = 0;
  *(v0 + 40) = 1;
  result = 0.0;
  *(v0 + 48) = 0u;
  *(v0 + 64) = 0u;
  *(v0 + 80) = 0;
  return result;
}

uint64_t DialogCalendar.Builder.__allocating_init(secs:)(double a1)
{
  v2 = swift_allocObject();
  DialogCalendar.Builder.init(secs:)(a1);
  return v2;
}

uint64_t DialogCalendar.Builder.init(secs:)(double a1)
{
  *(v1 + 16) = 0;
  *(v1 + 24) = 1;
  *(v1 + 32) = 0;
  *(v1 + 40) = 1;
  *(v1 + 48) = 0u;
  *(v1 + 64) = 0u;
  *(v1 + 80) = 0;
  swift_beginAccess();
  *(v1 + 16) = a1;
  *(v1 + 24) = 0;
  return v1;
}

uint64_t sub_222D1D2DC(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = a1[2];
  v6 = a1[3];
  OUTLINED_FUNCTION_67((v2 + 6), a2);
  v2[6] = v3;
  v2[7] = v4;
  v2[8] = v5;
  v2[9] = v6;
  sub_222CE3060(v3, v4, v5, v6);
  OUTLINED_FUNCTION_117();
}

uint64_t sub_222D1D360(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = a4;
  if (!a4)
  {

    a3 = a1;
    v8 = a2;
  }

  OUTLINED_FUNCTION_67((v4 + 6), a2);
  v4[6] = a1;
  v4[7] = a2;
  v4[8] = a3;
  v4[9] = v8;

  OUTLINED_FUNCTION_117();
}

uint64_t sub_222D1D400(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_67(v2 + 80, a2);
  *(v2 + 80) = a1;
}

uint64_t sub_222D1D458(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (a1)
  {
    v4 = (*(*a1 + 176))(a1, a2);
  }

  else
  {
    v4 = 0;
  }

  OUTLINED_FUNCTION_67(v3 + 80, a2);
  *(v3 + 80) = v4;
}

uint64_t sub_222D1D4D4(uint64_t a1)
{
  type metadata accessor for DialogCalendar();
  v1 = swift_allocObject();

  DialogCalendar.init(builder:)(v2);
  return v1;
}

uint64_t DialogCalendar.__allocating_init(builder:)(uint64_t a1)
{
  OUTLINED_FUNCTION_23_4();
  v2 = swift_allocObject();
  DialogCalendar.init(builder:)(a1);
  return v2;
}

uint64_t *DialogCalendar.Builder.deinit()
{
  sub_222CE2920(v0[6], v0[7], v0[8], v0[9]);

  return v0;
}

uint64_t DialogCalendar.Builder.__deallocating_deinit()
{
  DialogCalendar.Builder.deinit();

  return MEMORY[0x2821FE8D8](v0, 88, 7);
}

void DialogCalendar.timeZone.getter(uint64_t *a1@<X8>)
{
  v2 = v1[7];
  v3 = v1[8];
  v4 = v1[9];
  v5 = v1[10];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  sub_222CE3060(v2, v3, v4, v5);
}

uint64_t DialogCalendar.init(builder:)(uint64_t a1)
{
  *(v1 + 16) = 0;
  OUTLINED_FUNCTION_25(a1 + 16, v22);
  v3 = *(a1 + 24);
  *(v1 + 24) = *(a1 + 16);
  *(v1 + 32) = v3;
  OUTLINED_FUNCTION_25(a1 + 32, v21);
  v4 = *(a1 + 40);
  *(v1 + 40) = *(a1 + 32);
  *(v1 + 48) = v4;
  OUTLINED_FUNCTION_25(a1 + 48, v20);
  v5 = *(a1 + 48);
  v6 = *(a1 + 56);
  v7 = *(a1 + 64);
  v8 = *(a1 + 72);
  *(v1 + 56) = v5;
  *(v1 + 64) = v6;
  *(v1 + 72) = v7;
  *(v1 + 80) = v8;
  OUTLINED_FUNCTION_25(a1 + 80, v19);
  *(v1 + 88) = *(a1 + 80);
  OUTLINED_FUNCTION_96();
  v10 = *(v9 + 168);
  sub_222CE3060(v5, v6, v7, v8);

  if ((v10(v11) & 1) == 0)
  {
    if (qword_280D3DB78 != -1)
    {
      swift_once();
    }

    sub_222D52C3C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03BDD8, &qword_222D53BD0);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_222D53980;
    OUTLINED_FUNCTION_96();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03C1F0, &qword_222D55928);
    v13 = sub_222D5297C();
    v15 = v14;
    *(v12 + 56) = MEMORY[0x277D837D0];
    *(v12 + 64) = sub_222CDDCB0(v13, v14, v16);
    *(v12 + 32) = v13;
    *(v12 + 40) = v15;
    sub_222D5280C("Building an instance of %s without all required inputs", v18);
  }

  return v1;
}

void sub_222D1D830(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = a1 == 1935893875 && a2 == 0xE400000000000000;
  if (v5 || (OUTLINED_FUNCTION_49(1935893875, 0xE400000000000000) & 1) != 0)
  {
    if (*(v3 + 32))
    {
LABEL_7:
      *a3 = 0u;
      *(a3 + 16) = 0u;
LABEL_10:
      OUTLINED_FUNCTION_52_0();
      return;
    }

    v8 = *(v3 + 24);
LABEL_9:
    *(a3 + 24) = MEMORY[0x277D839F8];
    *a3 = v8;
    goto LABEL_10;
  }

  v9 = OUTLINED_FUNCTION_28_4();
  v11 = a1 == v9 && a2 == v10;
  if (v11 || (OUTLINED_FUNCTION_49(v9, v10) & 1) != 0)
  {
    if (*(v3 + 48))
    {
      goto LABEL_7;
    }

    v8 = *(v3 + 40);
    goto LABEL_9;
  }

  v12 = a1 == 0x656E6F5A656D6974 && a2 == 0xE800000000000000;
  if (!v12 && (OUTLINED_FUNCTION_49(0x656E6F5A656D6974, 0xE800000000000000) & 1) == 0)
  {
    v19 = OUTLINED_FUNCTION_27_2();
    v21 = a1 == v19 && a2 == v20;
    if (v21 || (OUTLINED_FUNCTION_49(v19, v20) & 1) != 0)
    {
      v22 = *(v3 + 88);
      if (!v22)
      {
        goto LABEL_7;
      }

      *(a3 + 24) = type metadata accessor for DialogDateFormatter();
      *a3 = v22;
      OUTLINED_FUNCTION_52_0();

      return;
    }

    v24 = OUTLINED_FUNCTION_36_4() | 0x79616400000000;
    v25 = a1 == v24 && a2 == 0xE700000000000000;
    if (v25 || (OUTLINED_FUNCTION_49(v24, 0xE700000000000000) & 1) != 0)
    {
      v26 = sub_222D1E810();
      goto LABEL_42;
    }

    v27 = OUTLINED_FUNCTION_36_4() | 0x72726F6D00000000;
    v29 = a1 == v27 && a2 == v28;
    if (v29 || (OUTLINED_FUNCTION_49(v27, 0xEA0000000000776FLL) & 1) != 0)
    {
      v26 = sub_222D1E83C();
      goto LABEL_42;
    }

    v30 = OUTLINED_FUNCTION_40_2();
    v32 = a1 == v30 && a2 == v31;
    if (v32 || (OUTLINED_FUNCTION_49(v30, v31) & 1) != 0)
    {
      v26 = sub_222D1E86C();
      goto LABEL_42;
    }

    v33 = a1 == (OUTLINED_FUNCTION_4_10() & 0xFFFFFFFFFFFFLL | 0x6557000000000000) && a2 == 0xEA00000000006B65;
    if (v33 || (OUTLINED_FUNCTION_22_4(), (OUTLINED_FUNCTION_49(v34, v35) & 1) != 0))
    {
      v26 = sub_222D1E898();
      goto LABEL_42;
    }

    v36 = OUTLINED_FUNCTION_4_10() & 0xFFFFFFFFFFFFLL | 0x6F4D000000000000;
    v37 = a1 == v36 && a2 == 0xEB0000000068746ELL;
    if (v37 || (OUTLINED_FUNCTION_1_1(v36) & 1) != 0)
    {
      v26 = sub_222D1E8C0();
      goto LABEL_42;
    }

    v38 = OUTLINED_FUNCTION_4_10() & 0xFFFFFFFFFFFFLL | 0x6559000000000000;
    v39 = a1 == v38 && a2 == 0xEA00000000007261;
    if (v39 || (OUTLINED_FUNCTION_48(v38) & 1) != 0)
    {
      v26 = sub_222D1E8E0();
      goto LABEL_42;
    }

    v40 = a1 == (OUTLINED_FUNCTION_5_8() & 0xFFFFFFFFFFFFLL | 0x6557000000000000) && a2 == 0xEA00000000006B65;
    if (v40 || (OUTLINED_FUNCTION_22_4(), (OUTLINED_FUNCTION_49(v41, v42) & 1) != 0))
    {
      v26 = sub_222D1E900();
      goto LABEL_42;
    }

    v43 = OUTLINED_FUNCTION_5_8() & 0xFFFFFFFFFFFFLL | 0x6F4D000000000000;
    v44 = a1 == v43 && a2 == 0xEB0000000068746ELL;
    if (v44 || (OUTLINED_FUNCTION_1_1(v43) & 1) != 0)
    {
      v26 = sub_222D1E928();
      goto LABEL_42;
    }

    v45 = OUTLINED_FUNCTION_5_8() & 0xFFFFFFFFFFFFLL | 0x6559000000000000;
    v46 = a1 == v45 && a2 == 0xEA00000000007261;
    if (v46 || (OUTLINED_FUNCTION_49(v45, 0xEA00000000007261) & 1) != 0)
    {
      v26 = sub_222D1E948();
      goto LABEL_42;
    }

    v47 = a1 == (OUTLINED_FUNCTION_6_9() & 0xFFFFFFFFFFFFLL | 0x6557000000000000) && a2 == 0xEA00000000006B65;
    if (v47 || (OUTLINED_FUNCTION_22_4(), (OUTLINED_FUNCTION_49(v48, v49) & 1) != 0))
    {
      v26 = sub_222D1E968();
      goto LABEL_42;
    }

    v50 = OUTLINED_FUNCTION_6_9() & 0xFFFFFFFFFFFFLL | 0x6F4D000000000000;
    v51 = a1 == v50 && a2 == 0xEB0000000068746ELL;
    if (v51 || (OUTLINED_FUNCTION_1_1(v50) & 1) != 0)
    {
      v26 = sub_222D1E990();
      goto LABEL_42;
    }

    v52 = OUTLINED_FUNCTION_6_9() & 0xFFFFFFFFFFFFLL | 0x6559000000000000;
    v53 = a1 == v52 && a2 == 0xEA00000000007261;
    if (v53 || (OUTLINED_FUNCTION_49(v52, 0xEA00000000007261) & 1) != 0)
    {
      v26 = sub_222D1E9B0();
      goto LABEL_42;
    }

    OUTLINED_FUNCTION_105();
    v55 = a1 == 0xD000000000000011 && v54 == a2;
    if (v55 || (OUTLINED_FUNCTION_49(0xD000000000000011, v54) & 1) != 0)
    {
      v26 = sub_222D1E9D0();
      goto LABEL_42;
    }

    OUTLINED_FUNCTION_105();
    v57 = a1 == 0xD000000000000014 && v56 == a2;
    if (v57 || (OUTLINED_FUNCTION_49(0xD000000000000014, v56) & 1) != 0)
    {
      v26 = sub_222D1EA00();
      goto LABEL_42;
    }

    OUTLINED_FUNCTION_105();
    v59 = a1 == 0xD000000000000015 && v58 == a2;
    if (v59 || (OUTLINED_FUNCTION_49(0xD000000000000015, v58) & 1) != 0)
    {
      v26 = sub_222D1EA30();
      goto LABEL_42;
    }

    OUTLINED_FUNCTION_105();
    v61 = a1 == 0xD000000000000010 && v60 == a2;
    if (v61 || (OUTLINED_FUNCTION_49(0xD000000000000010, v60) & 1) != 0)
    {
      v26 = sub_222D1EA60();
      goto LABEL_42;
    }

    v62 = OUTLINED_FUNCTION_14_3() & 0xFFFFFFFFFFFFLL | 0x4D79000000000000;
    v63 = a1 == v62 && a2 == 0xEE00676E696E726FLL;
    if (v63 || (OUTLINED_FUNCTION_49(v62, 0xEE00676E696E726FLL) & 1) != 0)
    {
      v26 = sub_222D1EA90();
      goto LABEL_42;
    }

    v64 = OUTLINED_FUNCTION_43_1();
    v65 = a1 == v64 && a2 == 0xE900000000000067;
    if (v65 || (OUTLINED_FUNCTION_49(v64, 0xE900000000000067) & 1) != 0)
    {
      v26 = sub_222D1EAC4();
      goto LABEL_42;
    }

    v66 = a1 == 0x6E6F6F4E7369 && a2 == 0xE600000000000000;
    if (v66 || (OUTLINED_FUNCTION_49(0x6E6F6F4E7369, 0xE600000000000000) & 1) != 0)
    {
      v26 = sub_222D1EAEC();
      goto LABEL_42;
    }

    OUTLINED_FUNCTION_105();
    v68 = a1 == 0xD000000000000010 && v67 == a2;
    if (v68 || (OUTLINED_FUNCTION_49(0xD000000000000010, v67) & 1) != 0)
    {
      v26 = sub_222D1EB18();
      goto LABEL_42;
    }

    v69 = OUTLINED_FUNCTION_33_3();
    v71 = a1 == v69 && a2 == v70;
    if (v71 || (OUTLINED_FUNCTION_49(v69, v70) & 1) != 0)
    {
      v26 = sub_222D1EB48();
      goto LABEL_42;
    }

    v72 = OUTLINED_FUNCTION_14_3() & 0xFFFFFFFFFFFFLL | 0x4579000000000000;
    v73 = a1 == v72 && a2 == 0xEE00676E696E6576;
    if (v73 || (OUTLINED_FUNCTION_1_1(v72) & 1) != 0)
    {
      v26 = sub_222D1EB74();
      goto LABEL_42;
    }

    v74 = OUTLINED_FUNCTION_44_2();
    v75 = a1 == v74 && a2 == 0xE900000000000067;
    if (v75 || (OUTLINED_FUNCTION_49(v74, 0xE900000000000067) & 1) != 0)
    {
      v26 = sub_222D1EBA8();
      goto LABEL_42;
    }

    v76 = OUTLINED_FUNCTION_31_3();
    v77 = a1 == v76 && a2 == 0xE700000000000000;
    if (v77 || (OUTLINED_FUNCTION_49(v76, 0xE700000000000000) & 1) != 0)
    {
      v26 = sub_222D1EBD0();
      goto LABEL_42;
    }

    v78 = OUTLINED_FUNCTION_38_3();
    v79 = a1 == v78 && a2 == 0xEB00000000746867;
    if (v79 || (OUTLINED_FUNCTION_1_1(v78) & 1) != 0)
    {
      v26 = sub_222D1EBF4();
      goto LABEL_42;
    }

    v80 = OUTLINED_FUNCTION_37_2() | 0x666B616500000000;
    v81 = a1 == v80 && a2 == 0xEB00000000747361;
    if (v81 || (OUTLINED_FUNCTION_49(v80, 0xEB00000000747361) & 1) != 0)
    {
      v26 = sub_222D1EC20();
      goto LABEL_42;
    }

    v82 = OUTLINED_FUNCTION_37_2() | 0x68636E7500000000;
    v83 = a1 == v82 && a2 == 0xE800000000000000;
    if (v83 || (OUTLINED_FUNCTION_49(v82, 0xE800000000000000) & 1) != 0)
    {
      v26 = sub_222D1EC54();
      goto LABEL_42;
    }

    v84 = OUTLINED_FUNCTION_45_1();
    v85 = a1 == v84 && a2 == 0xE700000000000000;
    if (v85 || (OUTLINED_FUNCTION_49(v84, 0xE700000000000000) & 1) != 0)
    {
      v26 = sub_222D1EC80();
      goto LABEL_42;
    }

    v86 = OUTLINED_FUNCTION_39_1();
    v87 = a1 == v86 && a2 == 0xE800000000000000;
    if (v87 || (OUTLINED_FUNCTION_49(v86, 0xE800000000000000) & 1) != 0)
    {
      v26 = sub_222D1ECA4();
      goto LABEL_42;
    }

    v88 = a1 == OUTLINED_FUNCTION_42_2() && a2 == 0xE900000000000065;
    if (v88 || (OUTLINED_FUNCTION_30_3(), (OUTLINED_FUNCTION_49(v89, v90) & 1) != 0))
    {
      v26 = sub_222D1ECC8();
      goto LABEL_42;
    }

    v91 = a1 == OUTLINED_FUNCTION_34_3() && a2 == 0xE900000000000065;
    if (v91 || (OUTLINED_FUNCTION_30_3(), (OUTLINED_FUNCTION_49(v92, v93) & 1) != 0))
    {
      v26 = sub_222D1ECEC();
      goto LABEL_42;
    }

    v94 = OUTLINED_FUNCTION_35_4();
    v96 = a1 == v94 && a2 == v95;
    if (v96 || (OUTLINED_FUNCTION_49(v94, v95) & 1) != 0)
    {
      v26 = sub_222D1ED10();
      goto LABEL_42;
    }

    v97 = a1 == 0x6D6F724673796164 && a2 == 0xED00007961646F54;
    if (!v97 && (OUTLINED_FUNCTION_1_1(0x6D6F724673796164) & 1) == 0)
    {
      v98 = OUTLINED_FUNCTION_15_3() & 0xFFFFFFFFFFFFLL | 0x654E000000000000;
      v99 = a1 == v98 && a2 == 0xEE006B6565577478;
      if (v99 || (OUTLINED_FUNCTION_49(v98, 0xEE006B6565577478) & 1) != 0)
      {
        v26 = sub_222D1ED78();
        goto LABEL_42;
      }

      v100 = OUTLINED_FUNCTION_15_3() & 0xFFFFFFFFFFFFLL | 0x6150000000000000;
      v101 = a1 == v100 && a2 == 0xEE006B6565577473;
      if (v101 || (OUTLINED_FUNCTION_1_1(v100) & 1) != 0)
      {
        v26 = sub_222D1EDAC();
        goto LABEL_42;
      }

      v102 = a1 == 0x6373654465746164 && a2 == 0xEF65766974706972;
      if (v102 || (OUTLINED_FUNCTION_17_4(), (OUTLINED_FUNCTION_49(v103, v104) & 1) != 0))
      {
        OUTLINED_FUNCTION_47_1();
LABEL_307:
        OUTLINED_FUNCTION_17_4();
        goto LABEL_435;
      }

      OUTLINED_FUNCTION_13_2();
      v105 = a1 == 0xD000000000000017 && a2 == 0x6373654465746164;
      if (v105 || (OUTLINED_FUNCTION_1_1(0xD000000000000017) & 1) != 0)
      {
        goto LABEL_435;
      }

      OUTLINED_FUNCTION_13_2();
      v106 = a1 == 0xD000000000000024 && a2 == 0x6373654465746164;
      if (v106 || (OUTLINED_FUNCTION_1_1(0xD000000000000024) & 1) != 0)
      {
        goto LABEL_435;
      }

      OUTLINED_FUNCTION_13_2();
      v107 = a1 == 0xD000000000000017 && a2 == 0x6373654465746164;
      if (v107 || (OUTLINED_FUNCTION_1_1(0xD000000000000017) & 1) != 0)
      {
        goto LABEL_435;
      }

      OUTLINED_FUNCTION_13_2();
      v108 = a1 == 0xD000000000000023 && a2 == 0x6373654465746164;
      if (v108 || (OUTLINED_FUNCTION_1_1(0xD000000000000023) & 1) != 0)
      {
        goto LABEL_435;
      }

      OUTLINED_FUNCTION_13_2();
      v109 = a1 == 0xD000000000000019 && a2 == 0x6373654465746164;
      if (v109 || (OUTLINED_FUNCTION_1_1(0xD000000000000019) & 1) != 0)
      {
        goto LABEL_435;
      }

      OUTLINED_FUNCTION_13_2();
      v110 = a1 == 0xD00000000000001CLL && a2 == 0x6373654465746164;
      if (v110 || (OUTLINED_FUNCTION_1_1(0xD00000000000001CLL) & 1) != 0)
      {
        goto LABEL_435;
      }

      OUTLINED_FUNCTION_13_2();
      v111 = a1 == 0xD00000000000001DLL && a2 == 0x6373654465746164;
      if (v111 || (OUTLINED_FUNCTION_1_1(0xD00000000000001DLL) & 1) != 0)
      {
        goto LABEL_435;
      }

      OUTLINED_FUNCTION_13_2();
      v112 = a1 == 0xD00000000000001BLL && a2 == 0x6373654465746164;
      if (v112 || (OUTLINED_FUNCTION_1_1(0xD00000000000001BLL) & 1) != 0)
      {
        goto LABEL_435;
      }

      OUTLINED_FUNCTION_20_5();
      v113 = a1 == 0xD00000000000001ELL && a2 == 0xE900000000000067;
      if (v113 || (OUTLINED_FUNCTION_49(0xD00000000000001ELL, 0xE900000000000067) & 1) != 0)
      {
        goto LABEL_435;
      }

      if (a1 == 0x63736544656D6974 && a2 == 0xEF65766974706972)
      {
        goto LABEL_307;
      }

      OUTLINED_FUNCTION_17_4();
      if (OUTLINED_FUNCTION_49(v115, v116))
      {
        goto LABEL_307;
      }

      OUTLINED_FUNCTION_20_5();
      v117 = a1 == 0xD000000000000019 && a2 == 0x63736544656D6974;
      if (v117 || (OUTLINED_FUNCTION_49(0xD000000000000019, 0x63736544656D6974) & 1) != 0 || ((OUTLINED_FUNCTION_20_5(), a1 == 0xD00000000000001CLL) ? (v118 = a2 == 0x63736544656D6974) : (v118 = 0), v118 || (OUTLINED_FUNCTION_49(0xD00000000000001CLL, 0x63736544656D6974) & 1) != 0 || ((OUTLINED_FUNCTION_20_5(), a1 == 0xD00000000000001DLL) ? (v119 = a2 == 0x63736544656D6974) : (v119 = 0), v119 || (OUTLINED_FUNCTION_49(0xD00000000000001DLL, 0x63736544656D6974) & 1) != 0 || ((OUTLINED_FUNCTION_20_5(), a1 == 0xD00000000000001BLL) ? (v120 = a2 == 0x63736544656D6974) : (v120 = 0), v120 || (OUTLINED_FUNCTION_49(0xD00000000000001BLL, 0x63736544656D6974) & 1) != 0 || ((OUTLINED_FUNCTION_20_5(), a1 == 0xD00000000000001ELL) ? (v121 = a2 == 0x63736544656D6974) : (v121 = 0), v121 || (OUTLINED_FUNCTION_49(0xD00000000000001ELL, 0x63736544656D6974) & 1) != 0 || ((OUTLINED_FUNCTION_20_5(), a1 == 0xD000000000000017) ? (v122 = a2 == 0x63736544656D6974) : (v122 = 0), v122 || (OUTLINED_FUNCTION_49(0xD000000000000017, 0x63736544656D6974) & 1) != 0 || ((OUTLINED_FUNCTION_98(), a1 == 0xD000000000000021) ? (v123 = a2 == 0xD00000000000001BLL) : (v123 = 0), v123 || (OUTLINED_FUNCTION_48(0xD000000000000021) & 1) != 0)))))))
      {
LABEL_435:
        sub_222CFC688();
        if (v157)
        {
          *(a3 + 24) = &type metadata for SpeakableString;
          v141 = swift_allocObject();
          *a3 = v141;
          v141[2] = v156;
          v141[3] = v157;
          v141[4] = v158;
          v141[5] = v159;
          goto LABEL_10;
        }

        goto LABEL_7;
      }

      OUTLINED_FUNCTION_98();
      v124 = a1 == 0xD000000000000013 && a2 == 0xD00000000000001BLL;
      if (v124 || (OUTLINED_FUNCTION_48(0xD000000000000013) & 1) != 0)
      {
        goto LABEL_434;
      }

      OUTLINED_FUNCTION_98();
      v125 = a1 == 0xD00000000000001DLL && a2 == 0xD00000000000001BLL;
      if (v125 || (OUTLINED_FUNCTION_48(0xD00000000000001DLL) & 1) != 0)
      {
        goto LABEL_435;
      }

      OUTLINED_FUNCTION_98();
      v126 = a1 == 0xD000000000000020 && a2 == 0xD00000000000001BLL;
      if (v126 || (OUTLINED_FUNCTION_48(0xD000000000000020) & 1) != 0)
      {
LABEL_434:
        OUTLINED_FUNCTION_47_1();
        goto LABEL_435;
      }

      OUTLINED_FUNCTION_98();
      v127 = a1 == 0xD000000000000021 && a2 == 0xD00000000000001BLL;
      if (v127 || (OUTLINED_FUNCTION_48(0xD000000000000021) & 1) != 0)
      {
        goto LABEL_435;
      }

      OUTLINED_FUNCTION_98();
      v128 = a1 == 0xD00000000000001FLL && a2 == 0xD00000000000001BLL;
      if (v128 || (OUTLINED_FUNCTION_48(0xD00000000000001FLL) & 1) != 0)
      {
        goto LABEL_435;
      }

      OUTLINED_FUNCTION_98();
      v129 = a1 == 0xD000000000000022 && a2 == 0xD00000000000001BLL;
      if (v129 || (OUTLINED_FUNCTION_48(0xD000000000000022) & 1) != 0)
      {
        goto LABEL_435;
      }

      OUTLINED_FUNCTION_98();
      v130 = a1 == 0xD00000000000001ELL && a2 == 0xD00000000000001BLL;
      if (v130 || (OUTLINED_FUNCTION_48(0xD00000000000001ELL) & 1) != 0)
      {
        goto LABEL_435;
      }

      OUTLINED_FUNCTION_13_2();
      v131 = a1 == 0xD000000000000028 && a2 == 0xD000000000000020;
      if (v131 || (OUTLINED_FUNCTION_1_1(0xD000000000000028) & 1) != 0)
      {
        goto LABEL_435;
      }

      OUTLINED_FUNCTION_13_2();
      v132 = a1 == 0xD00000000000002ALL && a2 == 0xD000000000000020;
      if (v132 || (OUTLINED_FUNCTION_1_1(0xD00000000000002ALL) & 1) != 0)
      {
        goto LABEL_435;
      }

      v133 = a1 == 0x664F6574756E696DLL && a2 == 0xEC00000072756F48;
      if (!v133 && (OUTLINED_FUNCTION_1_1(0x664F6574756E696DLL) & 1) == 0)
      {
        v134 = a1 == 0x6144664F72756F68 && a2 == 0xE900000000000079;
        if (!v134 && (OUTLINED_FUNCTION_48(0x6144664F72756F68) & 1) == 0)
        {
          v135 = a1 == 0x68746E6F6DLL && a2 == 0xE500000000000000;
          if (!v135 && (OUTLINED_FUNCTION_49(0x68746E6F6DLL, 0xE500000000000000) & 1) == 0)
          {
            v136 = a1 == 0x6D614E68746E6F6DLL && a2 == 0xE900000000000065;
            if (v136 || (OUTLINED_FUNCTION_30_3(), (OUTLINED_FUNCTION_49(v137, v138) & 1) != 0))
            {
              OUTLINED_FUNCTION_47_1();
              OUTLINED_FUNCTION_30_3();
              goto LABEL_435;
            }

            v139 = a1 == 0x6E6F4D664F796164 && a2 == 0xEA00000000006874;
            if (!v139 && (OUTLINED_FUNCTION_48(0x6E6F4D664F796164) & 1) == 0)
            {
              v140 = a1 == 0x656D614E796164 && a2 == 0xE700000000000000;
              if (v140 || (OUTLINED_FUNCTION_49(0x656D614E796164, 0xE700000000000000) & 1) != 0)
              {
                goto LABEL_434;
              }

              if (a1 != 1918985593 || a2 != 0xE400000000000000)
              {
                v143 = OUTLINED_FUNCTION_24_3();
                if ((OUTLINED_FUNCTION_49(v143, v144) & 1) == 0)
                {
                  OUTLINED_FUNCTION_51_0();
                  v147 = OUTLINED_FUNCTION_32_2();
                  v149 = a1 == v147 && a2 == v148;
                  if (v149 || (OUTLINED_FUNCTION_49(v147, v148) & 1) != 0)
                  {
                    v26 = sub_222D1F194();
                  }

                  else
                  {
                    v150 = a1 == 0x747361507369 && a2 == 0xE600000000000000;
                    if (v150 || (OUTLINED_FUNCTION_49(0x747361507369, 0xE600000000000000) & 1) != 0)
                    {
                      v26 = sub_222D1F1B8();
                    }

                    else
                    {
                      v151 = OUTLINED_FUNCTION_41_2();
                      v152 = a1 == v151 && a2 == 0xE800000000000000;
                      if (!v152 && (OUTLINED_FUNCTION_49(v151, 0xE800000000000000) & 1) == 0)
                      {
                        v153 = a1 == 0x6954657461447361 && a2 == 0xEA0000000000656DLL;
                        if (v153 || (OUTLINED_FUNCTION_48(0x6954657461447361) & 1) != 0)
                        {
                          sub_222CFCA00(0x6954657461447361, 0xEA0000000000656DLL);
                          if (v154)
                          {
                            v155 = v154;
                            *(a3 + 24) = type metadata accessor for DialogDateTime();
                            *a3 = v155;
                            goto LABEL_10;
                          }
                        }

                        goto LABEL_7;
                      }

                      v26 = sub_222D1F1E4();
                    }
                  }

LABEL_42:
                  *(a3 + 24) = MEMORY[0x277D839B0];
                  *a3 = v26 & 1;
                  goto LABEL_10;
                }
              }

              OUTLINED_FUNCTION_24_3();
            }
          }
        }
      }
    }

    sub_222CFC318();
    if ((v146 & 1) == 0)
    {
      *(a3 + 24) = MEMORY[0x277D839F8];
      *a3 = v145;
      goto LABEL_10;
    }

    goto LABEL_7;
  }

  v13 = *(v3 + 64);
  if (!v13)
  {
    goto LABEL_7;
  }

  v15 = *(v3 + 72);
  v14 = *(v3 + 80);
  v16 = *(v3 + 56);
  *(a3 + 24) = &type metadata for SpeakableString;
  v17 = swift_allocObject();
  *a3 = v17;
  v17[2] = v16;
  v17[3] = v13;
  v17[4] = v15;
  v17[5] = v14;

  OUTLINED_FUNCTION_52_0();
}