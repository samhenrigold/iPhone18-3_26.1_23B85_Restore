unint64_t sub_2520A2090()
{
  result = qword_27F4CDB90;
  if (!qword_27F4CDB90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4CDB90);
  }

  return result;
}

uint64_t sub_2520A21CC(void *a1, void *a2)
{
  v4 = **(v2 + 16);
  result = sub_2520A23A0(v4, a1, MEMORY[0x277CB8830]);
  *a2 = *(v4 + 16);
  return result;
}

uint64_t sub_2520A22E4(void *a1, void *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t, uint64_t, void, uint64_t))
{
  v5 = *(v3 + 24);
  v6 = **(v3 + 16);
  result = sub_2520A2430(v6, *v5, a1, a3);
  *a2 = *(v6 + 16);
  return result;
}

void sub_2520A2338(uint64_t a1, void *a2)
{
  v4 = *(v2 + 24);
  v5 = **(v2 + 16);
  sub_2520A2480(v5, *v4, a1);
  *a2 = *(v5 + 16);
}

uint64_t sub_2520A23A0(uint64_t a1, void *a2, uint64_t (*a3)(void, uint64_t, int *))
{
  v6 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 16);
  if (v3 != a2[1])
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v3 >> 31)
  {
LABEL_6:
    __break(1u);
LABEL_7:
    __break(1u);
  }

  v5 = *(a1 + 16);
  if (!*a2)
  {
    goto LABEL_7;
  }

  return a3(*a2, a1 + 32, &v5);
}

uint64_t sub_2520A2430(uint64_t result, uint64_t a2, void *a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t, uint64_t, void, uint64_t))
{
  v4 = a3[1];
  if (*(result + 16) != v4)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (*(a2 + 16) != v4)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (*a3)
  {
    return a4(result + 32, 1, a2 + 32, 1, *a3, 1);
  }

LABEL_7:
  __break(1u);
  return result;
}

void sub_2520A2480(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 8);
  if (*(a1 + 16) != v3)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (*(a2 + 16) != v3)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (*a3)
  {
    vDSP_vsubD((a2 + 32), 1, (a1 + 32), 1, *a3, 1, v3);
    return;
  }

LABEL_7:
  __break(1u);
}

uint64_t sub_2520A24F8(void *a1, void *a2)
{
  v4 = **(v2 + 16);
  result = sub_2520A23A0(v4, a1, MEMORY[0x277CB8808]);
  *a2 = *(v4 + 16);
  return result;
}

uint64_t sub_2520A2584(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_2520A25E4(void *a1, void *a2)
{
  v4 = **(v2 + 16);
  result = sub_2520A23A0(v4, a1, MEMORY[0x277CB8828]);
  *a2 = *(v4 + 16);
  return result;
}

uint64_t sub_2520A26A4(void *a1, void *a2)
{
  v4 = **(v2 + 16);
  result = sub_2520A23A0(v4, a1, MEMORY[0x277CB8800]);
  *a2 = *(v4 + 16);
  return result;
}

uint64_t objectdestroy_886Tm()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CDBD0, &qword_252143D88);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_2520A283C(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t objectdestroy_969Tm()
{

  return MEMORY[0x2821FE8E8](v0, 272, 7);
}

uint64_t sub_2520A28C4()
{
  v1 = *(v0 + 16) + OBJC_IVAR____TtC11HearingTest12HTAudiometry__metricsV2;
  v2 = *(v1 + 48);
  v4 = *v1;
  v3 = *(v1 + 16);
  v28[2] = *(v1 + 32);
  v28[3] = v2;
  v28[0] = v4;
  v28[1] = v3;
  v5 = *(v1 + 112);
  v7 = *(v1 + 64);
  v6 = *(v1 + 80);
  v28[6] = *(v1 + 96);
  v28[7] = v5;
  v28[4] = v7;
  v28[5] = v6;
  v8 = *(v1 + 176);
  v10 = *(v1 + 128);
  v9 = *(v1 + 144);
  v28[10] = *(v1 + 160);
  v28[11] = v8;
  v28[8] = v10;
  v28[9] = v9;
  v12 = *(v1 + 208);
  v11 = *(v1 + 224);
  v13 = *(v1 + 192);
  v29 = *(v1 + 240);
  v28[13] = v12;
  v28[14] = v11;
  v28[12] = v13;
  v14 = *(v0 + 24);
  v15 = *(v0 + 40);
  v16 = *(v0 + 72);
  *(v1 + 32) = *(v0 + 56);
  *(v1 + 48) = v16;
  *v1 = v14;
  *(v1 + 16) = v15;
  v17 = *(v0 + 88);
  v18 = *(v0 + 104);
  v19 = *(v0 + 136);
  *(v1 + 96) = *(v0 + 120);
  *(v1 + 112) = v19;
  *(v1 + 64) = v17;
  *(v1 + 80) = v18;
  v20 = *(v0 + 152);
  v21 = *(v0 + 168);
  v22 = *(v0 + 200);
  *(v1 + 160) = *(v0 + 184);
  *(v1 + 176) = v22;
  *(v1 + 128) = v20;
  *(v1 + 144) = v21;
  v23 = *(v0 + 216);
  v24 = *(v0 + 232);
  v25 = *(v0 + 248);
  *(v1 + 240) = *(v0 + 264);
  *(v1 + 208) = v24;
  *(v1 + 224) = v25;
  *(v1 + 192) = v23;
  sub_2520A2A98(v0 + 24, v27);
  return sub_2520A1F90(v28);
}

uint64_t sub_2520A29BC@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16) + OBJC_IVAR____TtC11HearingTest12HTAudiometry__metricsV2;
  v3 = *(v2 + 48);
  v5 = *v2;
  v4 = *(v2 + 16);
  v24[2] = *(v2 + 32);
  v24[3] = v3;
  v24[0] = v5;
  v24[1] = v4;
  v6 = *(v2 + 112);
  v8 = *(v2 + 64);
  v7 = *(v2 + 80);
  v24[6] = *(v2 + 96);
  v24[7] = v6;
  v24[4] = v8;
  v24[5] = v7;
  v9 = *(v2 + 176);
  v11 = *(v2 + 128);
  v10 = *(v2 + 144);
  v24[10] = *(v2 + 160);
  v24[11] = v9;
  v24[8] = v11;
  v24[9] = v10;
  v13 = *(v2 + 208);
  v12 = *(v2 + 224);
  v14 = *(v2 + 192);
  v25 = *(v2 + 240);
  v24[13] = v13;
  v24[14] = v12;
  v24[12] = v14;
  v15 = *(v2 + 208);
  *(a1 + 192) = *(v2 + 192);
  *(a1 + 208) = v15;
  *(a1 + 224) = *(v2 + 224);
  *(a1 + 240) = *(v2 + 240);
  v16 = *(v2 + 144);
  *(a1 + 128) = *(v2 + 128);
  *(a1 + 144) = v16;
  v17 = *(v2 + 176);
  *(a1 + 160) = *(v2 + 160);
  *(a1 + 176) = v17;
  v18 = *(v2 + 80);
  *(a1 + 64) = *(v2 + 64);
  *(a1 + 80) = v18;
  v19 = *(v2 + 112);
  *(a1 + 96) = *(v2 + 96);
  *(a1 + 112) = v19;
  v20 = *(v2 + 16);
  *a1 = *v2;
  *(a1 + 16) = v20;
  v21 = *(v2 + 48);
  *(a1 + 32) = *(v2 + 32);
  *(a1 + 48) = v21;
  return sub_2520A2A98(v24, v23);
}

uint64_t sub_2520A2AF4()
{
  MEMORY[0x25309A090](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2520A2B2C()
{

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_2520A2B84(void *a1)
{
  v2 = *(v1 + 16) + *a1;
  v3 = *(v1 + 32);
  *v2 = *(v1 + 24);
  *(v2 + 8) = v3;
}

uint64_t sub_2520A2BD8()
{

  return MEMORY[0x2821FE8E8](v0, 28, 7);
}

uint64_t sub_2520A2C10()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2520A2C70(uint64_t *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 48);
  v6 = *a1;
  v3(v5, &v6);
  v2(v5);

  return swift_unknownObjectRelease();
}

uint64_t objectdestroy_1189Tm()
{

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_2520A2D28@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *(v2 + 16);
  v5 = *(v2 + 48);
  v8 = *a1;
  v5(v7, &v8);
  v4(&v9, v7);
  result = swift_unknownObjectRelease();
  *a2 = v9;
  return result;
}

uint64_t sub_2520A2D9C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_2520A2E04@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(v2 + 16) + *a1;
  *a2 = *v3;
  *(a2 + 8) = *(v3 + 8);
}

uint64_t objectdestroy_29Tm(uint64_t a1)
{

  return MEMORY[0x2821FE8E8](v1, a1, 7);
}

uint64_t sub_2520A2E84(void *a1)
{
  *(*(v1 + 16) + *a1) = *(v1 + 24);
}

uint64_t sub_2520A2ED4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2520A2F1C(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2520A2F80()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t objectdestroy_118Tm()
{
  if (*(v0 + 24))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2520A3074(void *a1, void (*a2)(uint64_t), uint64_t (*a3)(uint64_t, uint64_t))
{
  v5 = v3[3];
  v6 = v3[4];
  v7 = (v3[2] + *a1);
  v8 = *v7;
  v9 = v7[1];
  *v7 = v5;
  v7[1] = v6;
  a2(v5);

  return a3(v8, v9);
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_2520A30F0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_2520A3138(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2520A3B78(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

HearingTest::NoiseMode_optional __swiftcall NoiseMode.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 15;
  if (rawValue < 0xF)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t _s11HearingTest12HTFaultStateO9hashValueSivg_0()
{
  v1 = *v0;
  sub_25214255C();
  MEMORY[0x253099700](v1);
  return sub_25214258C();
}

uint64_t sub_2520A3C6C()
{
  v1 = *v0;
  sub_25214255C();
  MEMORY[0x253099700](v1);
  return sub_25214258C();
}

uint64_t HTNoiseSynth.__allocating_init(_:totalTime:transitTime:temporaryTime:queue:)(unsigned __int8 *a1, void *a2, float a3, float a4, float a5)
{
  v10 = swift_allocObject();
  HTNoiseSynth.init(_:totalTime:transitTime:temporaryTime:queue:)(a1, a2, a3, a4, a5);
  return v10;
}

uint64_t HTNoiseSynth.init(_:totalTime:transitTime:temporaryTime:queue:)(unsigned __int8 *a1, void *a2, float a3, float a4, float a5)
{
  v6 = v5;
  v12 = sub_252141A4C();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v98 = &v85 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_252141A8C();
  v97 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v96 = &v85 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v95 = sub_252141A1C();
  v94 = *(v95 - 8);
  MEMORY[0x28223BE20](v95);
  v93 = (&v85 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v18);
  v91 = (&v85 - v19);
  v92 = sub_252141ABC();
  v90 = *(v92 - 8);
  MEMORY[0x28223BE20](v92);
  v89 = &v85 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = sub_25214205C();
  v87 = *(v88 - 8);
  MEMORY[0x28223BE20](v88);
  v86 = &v85 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_252141A5C();
  v23 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v25 = &v85 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = *a1;
  *(v6 + 72) = 0;
  *(v6 + 48) = 0;
  *(v6 + 56) = 0;
  *(v6 + 80) = [objc_allocWithZone(MEMORY[0x277CCAAF8]) init];
  v101 = v12;
  v100 = v13;
  v99 = v15;
  if (a2)
  {
    v27 = a2;
  }

  else
  {
    sub_2520A5A94(0, &qword_27F4CDC50, 0x277D85C78);
    (*(v23 + 104))(v25, *MEMORY[0x277D851C8], v22);
    v27 = sub_25214203C();
    (*(v23 + 8))(v25, v22);
  }

  *(v6 + 32) = v27;
  *(v6 + 16) = v26;
  *(v6 + 20) = a3;
  *(v6 + 24) = a4;
  v102 = v6;
  *(v6 + 28) = a5;
  v28 = lroundf(a3 * 10.0);
  v29 = lroundf(a4 * 10.0);
  v30 = lroundf(a5 * 10.0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CDB20, &qword_252143CD0);
  switch(v26)
  {
    case 1:
      v31 = swift_allocObject();
      *(v31 + 16) = xmmword_252143AB0;
      *(v31 + 32) = 0;
      v32 = (v31 + 40);
      v33 = &unk_28644C218;
      break;
    case 2:
      v31 = swift_allocObject();
      *(v31 + 16) = xmmword_252143AB0;
      *(v31 + 32) = 0;
      v32 = (v31 + 40);
      v33 = &unk_28644C248;
      break;
    case 3:
      v31 = swift_allocObject();
      *(v31 + 16) = xmmword_252143AD0;
      *(v31 + 32) = 0;
      *(v31 + 40) = v29;
      v32 = (v31 + 48);
      v33 = &unk_28644C278;
      break;
    case 4:
      v31 = swift_allocObject();
      *(v31 + 16) = xmmword_252143AD0;
      *(v31 + 32) = 0;
      *(v31 + 40) = v29;
      v32 = (v31 + 48);
      v33 = &unk_28644C2B0;
      break;
    case 5:
      v31 = swift_allocObject();
      *(v31 + 16) = xmmword_252143AD0;
      *(v31 + 32) = 0;
      *(v31 + 40) = v29;
      v32 = (v31 + 48);
      v33 = &unk_28644C2E8;
      break;
    case 6:
      v31 = swift_allocObject();
      *(v31 + 16) = xmmword_252143AD0;
      *(v31 + 32) = 0;
      *(v31 + 40) = v29;
      v32 = (v31 + 48);
      v33 = &unk_28644C320;
      break;
    case 7:
      v31 = swift_allocObject();
      *(v31 + 16) = xmmword_252143AD0;
      *(v31 + 32) = 0;
      *(v31 + 40) = v29;
      v32 = (v31 + 48);
      v33 = &unk_28644C358;
      break;
    case 8:
      v31 = swift_allocObject();
      *(v31 + 16) = xmmword_252143AD0;
      *(v31 + 32) = 0;
      *(v31 + 40) = v29;
      v32 = (v31 + 48);
      v33 = &unk_28644C390;
      break;
    case 9:
      v37 = swift_allocObject();
      *(v37 + 16) = xmmword_252143E80;
      *(v37 + 32) = 0;
      *(v37 + 40) = v29;
      if (__OFADD__(v29, v30))
      {
        goto LABEL_74;
      }

      v31 = v37;
      *(v37 + 48) = v29 + v30;
      v32 = (v37 + 56);
      v33 = &unk_28644C508;
      break;
    case 10:
      v39 = swift_allocObject();
      *(v39 + 16) = xmmword_252143E80;
      *(v39 + 32) = 0;
      *(v39 + 40) = v29;
      if (__OFADD__(v29, v30))
      {
        goto LABEL_76;
      }

      v31 = v39;
      *(v39 + 48) = v29 + v30;
      v32 = (v39 + 56);
      v33 = &unk_28644C4C8;
      break;
    case 11:
      v35 = swift_allocObject();
      *(v35 + 16) = xmmword_252143E80;
      *(v35 + 32) = 0;
      *(v35 + 40) = v29;
      if (__OFADD__(v29, v30))
      {
        goto LABEL_72;
      }

      v31 = v35;
      *(v35 + 48) = v29 + v30;
      v32 = (v35 + 56);
      v33 = &unk_28644C488;
      break;
    case 12:
      v36 = swift_allocObject();
      *(v36 + 16) = xmmword_252143E80;
      *(v36 + 32) = 0;
      *(v36 + 40) = v29;
      if (__OFADD__(v29, v30))
      {
        goto LABEL_73;
      }

      v31 = v36;
      *(v36 + 48) = v29 + v30;
      v32 = (v36 + 56);
      v33 = &unk_28644C448;
      break;
    case 13:
      v38 = swift_allocObject();
      *(v38 + 16) = xmmword_252143E80;
      *(v38 + 32) = 0;
      *(v38 + 40) = v29;
      if (__OFADD__(v29, v30))
      {
        goto LABEL_75;
      }

      v31 = v38;
      *(v38 + 48) = v29 + v30;
      v32 = (v38 + 56);
      v33 = &unk_28644C408;
      break;
    case 14:
      v34 = swift_allocObject();
      *(v34 + 16) = xmmword_252143E80;
      *(v34 + 32) = 0;
      *(v34 + 40) = v29;
      if (__OFADD__(v29, v30))
      {
        goto LABEL_71;
      }

      v31 = v34;
      *(v34 + 48) = v29 + v30;
      v32 = (v34 + 56);
      v33 = &unk_28644C3C8;
      break;
    default:
      v31 = swift_allocObject();
      *(v31 + 16) = xmmword_252143AB0;
      *(v31 + 32) = 0;
      v32 = (v31 + 40);
      v33 = &unk_28644C1E8;
      break;
  }

  v110 = v33;
  *v32 = v28;
  if (v28 < 0)
  {
    goto LABEL_69;
  }

  v85 = a2;

  v40 = MEMORY[0x277D84F90];
  if (v28)
  {
    v40 = sub_252141D3C();
    *(v40 + 16) = v28;
    bzero((v40 + 32), 8 * v28);
  }

  v41 = swift_allocObject();
  *(v41 + 16) = v40;
  v42 = swift_allocObject();
  v43 = sub_252141D3C();
  *(v43 + 16) = 16;
  *(v43 + 32) = 0u;
  *(v43 + 48) = 0u;
  *(v43 + 64) = 0u;
  *(v43 + 80) = 0u;
  v44 = sub_2520F752C(v43, v28);

  *(v42 + 16) = v44;
  v45 = *(v31 + 16);

  v109 = v45 - 2;
  if (v45 < 2)
  {
LABEL_70:
    __break(1u);
LABEL_71:
    __break(1u);
LABEL_72:
    __break(1u);
LABEL_73:
    __break(1u);
LABEL_74:
    __break(1u);
LABEL_75:
    __break(1u);
LABEL_76:
    __break(1u);
    JUMPOUT(0x2520A4C08);
  }

  v46 = 0;
  v47 = v31 + 32;
  v48 = (v110 + 4);
  v49 = *(v31 + 16);
  v50 = v110[2];
  if (v49 <= 1)
  {
    v51 = 1;
  }

  else
  {
    v51 = *(v31 + 16);
  }

  v52 = v51 - 1;
  v107 = v31 + 32;
  v108 = v31;
  v105 = v49;
  v106 = (v110 + 4);
  v104 = v50;
  v103 = v51 - 1;
  v113 = v41;
  do
  {
    if (v46 == v49)
    {
      goto LABEL_64;
    }

    if (v46 == v52)
    {
      goto LABEL_65;
    }

    v53 = *(v47 + 8 * (v46 + 1));
    v54 = v53 - 1;
    if (__OFSUB__(v53, 1))
    {
      goto LABEL_66;
    }

    v115 = *(v47 + 8 * v46);
    if (v54 < v115)
    {
      goto LABEL_67;
    }

    if (v46 == v50)
    {
      goto LABEL_68;
    }

    v111 = v46 + 1;
    v112 = v46;
    v114 = *&v48[8 * v46];
    v55 = v115;
    do
    {
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v41 + 16) = v40;
      if (isUniquelyReferenced_nonNull_native)
      {
        if (v115 < 0)
        {
          goto LABEL_62;
        }
      }

      else
      {
        v40 = sub_2520A59C8(v40);
        if (v115 < 0)
        {
          goto LABEL_62;
        }
      }

      if (v55 >= *(v40 + 16))
      {
        goto LABEL_63;
      }

      *(v40 + 32 + 8 * v55) = v114;
      *(v41 + 16) = v40;
      sub_2520A59F0(0.0, 1.0);
      if (v55 >= *(v40 + 16))
      {
LABEL_59:
        __break(1u);
LABEL_60:
        __break(1u);
LABEL_61:
        __break(1u);
LABEL_62:
        __break(1u);
LABEL_63:
        __break(1u);
LABEL_64:
        __break(1u);
LABEL_65:
        __break(1u);
LABEL_66:
        __break(1u);
LABEL_67:
        __break(1u);
LABEL_68:
        __break(1u);
LABEL_69:
        __break(1u);
        goto LABEL_70;
      }

      v59 = v58;
      v60 = 0;
      v61 = *(v42 + 16);
      while (1)
      {
        v62 = *(v40 + 32 + 8 * v55);
        v63 = swift_isUniquelyReferenced_nonNull_native();
        *(v42 + 16) = v61;
        if ((v63 & 1) == 0)
        {
          v61 = sub_2520A59B4(v61);
          *(v42 + 16) = v61;
        }

        if (v55 >= v61[2])
        {
          goto LABEL_60;
        }

        v64 = v61[v55 + 4];
        v65 = swift_isUniquelyReferenced_nonNull_native();
        v61[v55 + 4] = v64;
        if ((v65 & 1) == 0)
        {
          v64 = sub_2520A59A0(v64);
          v61[v55 + 4] = v64;
        }

        if (v60 >= *(v64 + 2))
        {
          goto LABEL_61;
        }

        *&v64[4 * v60 + 32] = ((v59 * 10.0) + 20.0) * (v62 + 1.0);
        if (v60 == 15)
        {
          break;
        }

        ++v60;
        sub_2520A59F0(0.0, 1.0);
        v59 = v66;
        if (v55 >= *(v40 + 16))
        {
          goto LABEL_59;
        }
      }

      v56 = v55++ == v54;
      v41 = v113;
    }

    while (!v56);
    v46 = v111;
    v48 = v106;
    v47 = v107;
    v49 = v105;
    v50 = v104;
    v52 = v103;
  }

  while (v112 != v109);

  v67 = v102;
  *(v102 + 64) = 0;
  sub_2520A5A94(0, &unk_27F4CDC60, 0x277D85CA0);
  v68 = *(v67 + 32);
  aBlock[0] = MEMORY[0x277D84F90];
  sub_2520A6020(&qword_27F4CEB00, MEMORY[0x277D85278], MEMORY[0x277D85280]);
  v115 = v68;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F4CDC70, &qword_252143E98);
  sub_2520A2F1C(&unk_27F4CEB10, &unk_27F4CDC70, &qword_252143E98, MEMORY[0x277D83970]);
  v69 = v86;
  v70 = v88;
  sub_25214218C();
  v71 = sub_25214206C();

  (*(v87 + 8))(v69, v70);
  *(v67 + 40) = v71;
  ObjectType = swift_getObjectType();
  swift_unknownObjectRetain();
  v73 = v89;
  sub_252141AAC();
  v74 = v91;
  *v91 = 100;
  v75 = v41;
  v76 = v94;
  v77 = v95;
  (*(v94 + 104))(v74, *MEMORY[0x277D85178], v95);
  v78 = v93;
  sub_2520A4C7C(v93);
  MEMORY[0x253099290](v73, v74, v78, ObjectType);
  swift_unknownObjectRelease();
  v79 = *(v76 + 8);
  v79(v78, v77);
  v79(v74, v77);
  (*(v90 + 8))(v73, v92);
  swift_getObjectType();
  v80 = swift_allocObject();
  v80[2] = v67;
  v80[3] = v75;
  v80[4] = v42;
  aBlock[4] = sub_2520A5B24;
  aBlock[5] = v80;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2520A3B78;
  aBlock[3] = &block_descriptor_0;
  v81 = _Block_copy(aBlock);
  swift_unknownObjectRetain();

  v82 = v96;
  sub_252141A6C();
  v83 = v98;
  sub_2520A4E18();
  sub_25214207C();
  _Block_release(v81);
  swift_unknownObjectRelease();

  (*(v100 + 8))(v83, v101);
  (*(v97 + 8))(v82, v99);

  return v67;
}

uint64_t sub_2520A4C44()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2520A4C7C@<X0>(void *a1@<X8>)
{
  *a1 = 0;
  v3 = *MEMORY[0x277D85168];
  v4 = sub_252141A1C();
  v5 = *(*(v4 - 8) + 104);

  return v5(a1, v3, v4);
}

uint64_t sub_2520A4CF4(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = a1[8];
  result = swift_beginAccess();
  v8 = *(a2 + 16);
  if (v6 < *(v8 + 16))
  {
    if (a1[6])
    {
      v9 = a1[7];
      result = swift_getObjectType();
      if ((v6 & 0x8000000000000000) != 0)
      {
LABEL_10:
        __break(1u);
        goto LABEL_11;
      }

      v10 = result;
      v11 = *(v8 + 8 * v6 + 32);
      result = swift_beginAccess();
      v12 = *(a3 + 16);
      if (v6 >= *(v12 + 16))
      {
LABEL_11:
        __break(1u);
        return result;
      }

      v13 = *(v12 + 8 * v6 + 32);
      v14 = *(v9 + 8);
      swift_unknownObjectRetain();

      v14(v11, v13, v10, v9);

      result = swift_unknownObjectRelease();
    }

    v15 = a1[8];
    v16 = __OFADD__(v15, 1);
    v17 = v15 + 1;
    if (!v16)
    {
      a1[8] = v17;
      return result;
    }

    __break(1u);
    goto LABEL_10;
  }

  return result;
}

uint64_t sub_2520A4E18()
{
  sub_252141A4C();
  sub_2520A6020(&qword_27F4CE090, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CDCB0, &qword_252143DE0);
  sub_2520A2F1C(&qword_27F4CE0A0, &qword_27F4CDCB0, &qword_252143DE0, MEMORY[0x277D83970]);
  return sub_25214218C();
}

void sub_2520A4F04()
{
  v1 = v0;
  if ((*(v0 + 72) & 1) == 0)
  {
    v2 = *(v0 + 80);
    [v2 lock];
    swift_getObjectType();
    swift_unknownObjectRetain();
    sub_25214209C();
    swift_unknownObjectRelease();
    *(v0 + 72) = 1;
    [v2 unlock];
    if (qword_27F4CD708 != -1)
    {
      swift_once();
    }

    v3 = sub_25214198C();
    __swift_project_value_buffer(v3, qword_27F4CDE68);
    v4 = sub_25214196C();
    v5 = sub_252141FBC();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v11 = v7;
      *v6 = 136446210;
      v8 = sub_2521425DC();
      v10 = sub_2520A5448(v8, v9, &v11);

      *(v6 + 4) = v10;
      _os_log_impl(&dword_25207E000, v4, v5, "[%{public}s] NoiseSynth timer resumed", v6, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v7);
      MEMORY[0x253099FD0](v7, -1, -1);
      MEMORY[0x253099FD0](v6, -1, -1);
    }
  }

  *(v1 + 64) = 0;
}

void sub_2520A50DC()
{
  v1 = v0;
  if (*(v0 + 72) == 1)
  {
    v2 = *(v0 + 80);
    [v2 lock];
    swift_getObjectType();
    swift_unknownObjectRetain();
    sub_2521420AC();
    swift_unknownObjectRelease();
    *(v0 + 72) = 0;
    [v2 unlock];
    if (qword_27F4CD708 != -1)
    {
      swift_once();
    }

    v3 = sub_25214198C();
    __swift_project_value_buffer(v3, qword_27F4CDE68);
    v4 = sub_25214196C();
    v5 = sub_252141FBC();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v11 = v7;
      *v6 = 136446210;
      v8 = sub_2521425DC();
      v10 = sub_2520A5448(v8, v9, &v11);

      *(v6 + 4) = v10;
      _os_log_impl(&dword_25207E000, v4, v5, "[%{public}s] NoiseSynth timer suspended", v6, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v7);
      MEMORY[0x253099FD0](v7, -1, -1);
      MEMORY[0x253099FD0](v6, -1, -1);
    }
  }

  *(v1 + 64) = 0;
}

uint64_t HTNoiseSynth.deinit()
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return v0;
}

uint64_t HTNoiseSynth.__deallocating_deinit()
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_2520A533C(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

uint64_t sub_2520A5388(uint64_t (*a1)(void))
{
  a1();

  return sub_2521425DC();
}

uint64_t sub_2520A53EC(unint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(unint64_t **, uint64_t))
{
  v6 = a4(a1, a2);
  v8 = sub_2520A5448(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
}

unint64_t sub_2520A5448(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_2520A5514(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_2520A5FC4(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

unint64_t sub_2520A5514(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_2520A5620(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_25214225C();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

void *sub_2520A5620(uint64_t a1, unint64_t a2)
{
  v3 = sub_2520A566C(a1, a2);
  sub_2520A579C(&unk_28644C018);
  return v3;
}

void *sub_2520A566C(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  v6 = sub_2520E7B68(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_25214225C();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_252141C1C();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_2520E7B68(v10, 0);
        result = sub_25214220C();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

void sub_2520A579C(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *v1;
  v4 = *(*v1 + 2);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= *(v3 + 3) >> 1)
  {
    if (*(a1 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  v3 = sub_2520A5888(isUniquelyReferenced_nonNull_native, v12, 1, v3);
  if (!*(a1 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = *(v3 + 2);
  if ((*(v3 + 3) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy(&v3[v8 + 32], (a1 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return;
  }

  v9 = *(v3 + 2);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 2) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
}

char *sub_2520A5888(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F4CDCA0, &unk_2521440E0);
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
    if (v10 != a4 || v12 >= &v13[v8])
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

_BYTE **sub_2520A597C(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

uint64_t sub_2520A59F0(float a1, float a2)
{
  if (a1 == a2)
  {
    __break(1u);
    goto LABEL_7;
  }

  v4 = a2 - a1;
  if (COERCE_INT(fabs(a2 - a1)) > 2139095039)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  v6 = 0;
  result = MEMORY[0x253099FE0](&v6, 8);
  if (((v4 * vcvts_n_f32_u64(v6 & 0xFFFFFF, 0x18uLL)) + a1) == a2)
  {
    return sub_2520A59F0(a1, a2);
  }

  return result;
}

uint64_t sub_2520A5A94(uint64_t a1, unint64_t *a2, void *a3)
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

uint64_t sub_2520A5ADC()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_2520A5B4C()
{
  result = qword_27F4CDC80;
  if (!qword_27F4CDC80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4CDC80);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for NoiseMode(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF2)
  {
    goto LABEL_17;
  }

  if (a2 + 14 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 14) >> 8 < 0xFF)
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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 14;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 14;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 14;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xF;
  v8 = v6 - 15;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for NoiseMode(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 14 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 14) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF2)
  {
    v4 = 0;
  }

  if (a2 > 0xF1)
  {
    v5 = ((a2 - 242) >> 8) + 1;
    *result = a2 + 14;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 14;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for NoiseSynthTimerState(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for NoiseSynthTimerState(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_2520A5F70()
{
  result = qword_27F4CDC98;
  if (!qword_27F4CDC98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4CDC98);
  }

  return result;
}

uint64_t sub_2520A5FC4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_2520A6020(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t HTHearingTestMetrics.duPayload()()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 104);
  v47 = *(v0 + 120);
  v48 = *(v0 + 112);
  v3 = sub_25209CBF8(MEMORY[0x277D84F90]);
  v4 = sub_252141EBC();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_2520A8854(v4, 0x73656E6F54676C61, 0xED0000746E756F43, isUniquelyReferenced_nonNull_native, v6);
  v7 = sub_252141EBC();
  v8 = swift_isUniquelyReferenced_nonNull_native();
  sub_2520A8854(v7, 0x615473694D676C61, 0xEF746E756F437370, v8, v9);
  v10 = sub_252141EBC();
  v11 = swift_isUniquelyReferenced_nonNull_native();
  sub_2520A8854(v10, 0xD000000000000010, 0x80000002521487D0, v11, v12);
  v13 = sub_252141EBC();
  v14 = swift_isUniquelyReferenced_nonNull_native();
  sub_2520A8854(v13, 0xD000000000000012, 0x80000002521487F0, v14, v15);
  v16 = sub_252141EBC();
  v17 = swift_isUniquelyReferenced_nonNull_native();
  sub_2520A8854(v16, 0xD000000000000015, 0x8000000252148810, v17, v18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CDB20, &qword_252143CD0);
  v19 = swift_allocObject();
  v20 = *(v0 + 56);
  v19[2] = *(v0 + 40);
  v19[3] = v20;
  v19[1] = xmmword_252143E80;
  v21 = sub_252141CCC();

  v22 = swift_isUniquelyReferenced_nonNull_native();
  sub_2520A8854(v21, 0x754178614D676C61, 0xEE00726F6F6C4664, v22, v23);
  v24 = sub_252141EBC();
  v25 = swift_isUniquelyReferenced_nonNull_native();
  sub_2520A8854(v24, 0x5472657355676C61, 0xEB00000000737061, v25, v26);
  v27 = sub_252141EBC();
  v28 = swift_isUniquelyReferenced_nonNull_native();
  sub_2520A8854(v27, 0x656B73614D676C61, 0xEE00746E756F4364, v28, v29);
  v30 = sub_252141EBC();
  v31 = swift_isUniquelyReferenced_nonNull_native();
  sub_2520A8854(v30, 0xD000000000000012, 0x8000000252148840, v31, v32);
  v33 = v3;
  result = swift_allocObject();
  *(result + 16) = xmmword_252143AD0;
  *(result + 32) = v1;
  *(result + 40) = v2;
  if (__OFADD__(v1, v2))
  {
    __break(1u);
  }

  else
  {
    *(result + 48) = v1 + v2;
    v35 = sub_252141CCC();

    v36 = swift_isUniquelyReferenced_nonNull_native();
    sub_2520A8854(v35, 0xD000000000000013, 0x8000000252148860, v36, v37);
    result = swift_allocObject();
    *(result + 16) = xmmword_252143AD0;
    *(result + 32) = v48;
    *(result + 40) = v47;
    if (!__OFADD__(v48, v47))
    {
      *(result + 48) = v48 + v47;
      v38 = sub_252141CCC();

      v39 = swift_isUniquelyReferenced_nonNull_native();
      sub_2520A8854(v38, 0xD000000000000011, 0x8000000252148880, v39, v40);
      sub_2520F22E0();
      v41 = sub_252141CCC();

      v42 = swift_isUniquelyReferenced_nonNull_native();
      sub_2520A8854(v41, 0xD00000000000001ALL, 0x80000002521488A0, v42, v43);
      v44 = sub_252141EBC();
      v45 = swift_isUniquelyReferenced_nonNull_native();
      sub_2520A8854(v44, 0xD000000000000016, 0x80000002521488C0, v45, v46);
      return v33;
    }
  }

  __break(1u);
  return result;
}

unint64_t HTHearingTestMetricsV2.duPayload()()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 104);
  v59 = *(v0 + 120);
  v60 = *(v0 + 112);
  v3 = sub_25209CBF8(MEMORY[0x277D84F90]);
  v4 = sub_252141EBC();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_2520A8854(v4, 0x73656E6F54676C61, 0xED0000746E756F43, isUniquelyReferenced_nonNull_native, v6);
  v7 = sub_252141EBC();
  v8 = swift_isUniquelyReferenced_nonNull_native();
  sub_2520A8854(v7, 0x615473694D676C61, 0xEF746E756F437370, v8, v9);
  v10 = sub_252141EBC();
  v11 = swift_isUniquelyReferenced_nonNull_native();
  sub_2520A8854(v10, 0xD000000000000010, 0x80000002521487D0, v11, v12);
  v13 = sub_252141EBC();
  v14 = swift_isUniquelyReferenced_nonNull_native();
  sub_2520A8854(v13, 0xD000000000000012, 0x80000002521487F0, v14, v15);
  v16 = sub_252141EBC();
  v17 = swift_isUniquelyReferenced_nonNull_native();
  sub_2520A8854(v16, 0xD000000000000015, 0x8000000252148810, v17, v18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CDB20, &qword_252143CD0);
  v19 = swift_allocObject();
  v20 = *(v0 + 56);
  v19[2] = *(v0 + 40);
  v19[3] = v20;
  v19[1] = xmmword_252143E80;
  v21 = sub_252141CCC();

  v22 = swift_isUniquelyReferenced_nonNull_native();
  sub_2520A8854(v21, 0x754178614D676C61, 0xEE00726F6F6C4664, v22, v23);
  v24 = sub_252141EBC();
  v25 = swift_isUniquelyReferenced_nonNull_native();
  sub_2520A8854(v24, 0x5472657355676C61, 0xEB00000000737061, v25, v26);
  v27 = sub_252141EBC();
  v28 = swift_isUniquelyReferenced_nonNull_native();
  sub_2520A8854(v27, 0x656B73614D676C61, 0xEE00746E756F4364, v28, v29);
  v30 = sub_252141EBC();
  v31 = swift_isUniquelyReferenced_nonNull_native();
  sub_2520A8854(v30, 0xD000000000000012, 0x8000000252148840, v31, v32);
  v33 = v3;
  result = swift_allocObject();
  *(result + 16) = xmmword_252143AD0;
  *(result + 32) = v1;
  *(result + 40) = v2;
  if (__OFADD__(v1, v2))
  {
    __break(1u);
  }

  else
  {
    *(result + 48) = v1 + v2;
    v35 = sub_252141CCC();

    v36 = swift_isUniquelyReferenced_nonNull_native();
    sub_2520A8854(v35, 0xD000000000000013, 0x8000000252148860, v36, v37);
    result = swift_allocObject();
    *(result + 16) = xmmword_252143AD0;
    *(result + 32) = v60;
    *(result + 40) = v59;
    if (!__OFADD__(v60, v59))
    {
      *(result + 48) = v60 + v59;
      v38 = sub_252141CCC();

      v39 = swift_isUniquelyReferenced_nonNull_native();
      sub_2520A8854(v38, 0xD000000000000011, 0x8000000252148880, v39, v40);
      sub_2520F22E0();
      v41 = sub_252141CCC();

      v42 = swift_isUniquelyReferenced_nonNull_native();
      sub_2520A8854(v41, 0xD00000000000001ALL, 0x80000002521488A0, v42, v43);
      v44 = sub_252141EBC();
      v45 = swift_isUniquelyReferenced_nonNull_native();
      sub_2520A8854(v44, 0xD000000000000016, 0x80000002521488C0, v45, v46);
      v47 = sub_252141E7C();
      v48 = swift_isUniquelyReferenced_nonNull_native();
      sub_2520A8854(v47, 0x73696F4E74617453, 0xE900000000000065, v48, v49);
      v50 = sub_252141E7C();
      v51 = swift_isUniquelyReferenced_nonNull_native();
      sub_2520A8854(v50, 0x73696F4E74736E49, 0xE900000000000065, v51, v52);
      v53 = sub_252141CCC();
      v54 = swift_isUniquelyReferenced_nonNull_native();
      sub_2520A8854(v53, 0x7461745374736948, 0xE800000000000000, v54, v55);
      v56 = sub_252141CCC();
      v57 = swift_isUniquelyReferenced_nonNull_native();
      sub_2520A8854(v56, 0x74736E4974736948, 0xE800000000000000, v57, v58);
      return v33;
    }
  }

  __break(1u);
  return result;
}

void *sub_2520A6BC8()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CDBA0, &qword_252143D58);
  v2 = *v0;
  v3 = sub_25214233C();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 56) + v14) = v17)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = *(*(v2 + 56) + v14);
      *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_2520A6D14()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CDAB8, &qword_252147FA0);
  v2 = *v0;
  v3 = sub_25214233C();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 56) + 8 * v14) = v17)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = *(*(v2 + 56) + 8 * v14);
      *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_2520A6E60()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CDC10, &qword_252143DB0);
  v2 = *v0;
  v3 = sub_25214233C();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

id sub_2520A6FC8()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CDB70, &qword_252143D20);
  v2 = *v0;
  v3 = sub_25214233C();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;

        result = v20;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_2520A7134()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CDCB8, &unk_252144500);
  v2 = *v0;
  v3 = sub_25214233C();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; result = sub_2520A8DDC(&v47, v46))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v16 = v13 | (v8 << 6);
      v17 = 16 * v16;
      v18 = (*(v2 + 48) + 16 * v16);
      v20 = *v18;
      v19 = v18[1];
      v16 *= 232;
      v21 = *(v2 + 56) + v16;
      v22 = *(v21 + 96);
      v24 = *(v21 + 48);
      v23 = *(v21 + 64);
      v52 = *(v21 + 80);
      v53 = v22;
      v50 = v24;
      v51 = v23;
      v25 = *(v21 + 160);
      v27 = *(v21 + 112);
      v26 = *(v21 + 128);
      v56 = *(v21 + 144);
      v57 = v25;
      v54 = v27;
      v55 = v26;
      v29 = *(v21 + 192);
      v28 = *(v21 + 208);
      v30 = *(v21 + 176);
      v61 = *(v21 + 224);
      v59 = v29;
      v60 = v28;
      v58 = v30;
      v32 = *(v21 + 16);
      v31 = *(v21 + 32);
      v47 = *v21;
      v48 = v32;
      v49 = v31;
      v33 = (*(v4 + 48) + v17);
      *v33 = v20;
      v33[1] = v19;
      v34 = *(v4 + 56) + v16;
      v35 = v47;
      v36 = v49;
      *(v34 + 16) = v48;
      *(v34 + 32) = v36;
      *v34 = v35;
      v37 = v50;
      v38 = v51;
      v39 = v53;
      *(v34 + 80) = v52;
      *(v34 + 96) = v39;
      *(v34 + 48) = v37;
      *(v34 + 64) = v38;
      v40 = v54;
      v41 = v55;
      v42 = v57;
      *(v34 + 144) = v56;
      *(v34 + 160) = v42;
      *(v34 + 112) = v40;
      *(v34 + 128) = v41;
      v43 = v58;
      v44 = v59;
      v45 = v60;
      *(v34 + 224) = v61;
      *(v34 + 192) = v44;
      *(v34 + 208) = v45;
      *(v34 + 176) = v43;
    }

    v14 = v8;
    while (1)
    {
      v8 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v15 = *(v2 + 64 + 8 * v8);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v11 = (v15 - 1) & v15;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_2520A7354()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CDAE0, &qword_252143C88);
  v2 = *v0;
  v3 = sub_25214233C();
  v4 = v3;
  if (*(v2 + 16))
  {
    v24 = v1;
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v22 = 32 * v17;
        sub_2520A5FC4(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_2520A1F80(v25, (*(v4 + 56) + v22));
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {

        v1 = v24;
        goto LABEL_21;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v1 = v4;
  }

  return result;
}

uint64_t sub_2520A74F8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CDBA0, &qword_252143D58);
  result = sub_25214234C();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = v3;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = *(*(v5 + 56) + v19);
      result = sub_25214254C();
      v22 = -1 << *(v7 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_33:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_33;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if (v4)
    {
      v29 = 1 << *(v5 + 32);
      if (v29 >= 64)
      {
        bzero((v5 + 64), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v29;
      }

      *(v5 + 16) = 0;
    }

    v3 = v30;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

uint64_t sub_2520A7768(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CDAB8, &qword_252147FA0);
  result = sub_25214234C();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      result = sub_25214254C();
      v22 = -1 << *(v7 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_31:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if (v4)
    {
      v29 = 1 << *(v5 + 32);
      if (v29 >= 64)
      {
        bzero((v5 + 64), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v29;
      }

      *(v5 + 16) = 0;
    }
  }

  *v3 = v7;
  return result;
}

uint64_t sub_2520A79C4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CDC10, &qword_252143DB0);
  v33 = v4;
  result = sub_25214234C();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v33 & 1) == 0)
      {
      }

      sub_25214255C();
      sub_252141BEC();
      result = sub_25214258C();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v33 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_2520A7C68(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CDB70, &qword_252143D20);
  v35 = v4;
  result = sub_25214234C();
  v7 = result;
  if (*(v5 + 16))
  {
    v34 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v35 & 1) == 0)
      {

        v25 = v24;
      }

      sub_25214255C();
      sub_252141BEC();
      result = sub_25214258C();
      v26 = -1 << *(v7 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v14 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v14 + 8 * v28);
          if (v32 != -1)
          {
            v15 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v34;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v35 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v2;
    if (v33 >= 64)
    {
      bzero(v9, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v33;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_2520A7F0C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CDCB8, &unk_252144500);
  v45 = v4;
  result = sub_25214234C();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v18 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v21 = v18 | (v8 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(v5 + 56) + 232 * v21;
      if (v45)
      {
        v72 = *(v25 + 176);
        v73 = *(v25 + 192);
        v74 = *(v25 + 208);
        v75 = *(v25 + 224);
        v68 = *(v25 + 112);
        v69 = *(v25 + 128);
        v70 = *(v25 + 144);
        v71 = *(v25 + 160);
        v64 = *(v25 + 48);
        v65 = *(v25 + 64);
        v66 = *(v25 + 80);
        v67 = *(v25 + 96);
        v61 = *v25;
        v62 = *(v25 + 16);
        v63 = *(v25 + 32);
      }

      else
      {
        v27 = *(v25 + 16);
        v26 = *(v25 + 32);
        v46 = *v25;
        v47 = v27;
        v48 = v26;
        v28 = *(v25 + 96);
        v30 = *(v25 + 48);
        v29 = *(v25 + 64);
        v51 = *(v25 + 80);
        v52 = v28;
        v49 = v30;
        v50 = v29;
        v31 = *(v25 + 160);
        v33 = *(v25 + 112);
        v32 = *(v25 + 128);
        v55 = *(v25 + 144);
        v56 = v31;
        v53 = v33;
        v54 = v32;
        v35 = *(v25 + 192);
        v34 = *(v25 + 208);
        v36 = *(v25 + 176);
        v60 = *(v25 + 224);
        v58 = v35;
        v59 = v34;
        v57 = v36;

        sub_2520A8DDC(&v46, &v61);
        v73 = v58;
        v74 = v59;
        v75 = v60;
        v69 = v54;
        v70 = v55;
        v71 = v56;
        v72 = v57;
        v65 = v50;
        v66 = v51;
        v67 = v52;
        v68 = v53;
        v61 = v46;
        v62 = v47;
        v63 = v48;
        v64 = v49;
      }

      sub_25214255C();
      sub_252141BEC();
      result = sub_25214258C();
      v37 = -1 << *(v7 + 32);
      v38 = result & ~v37;
      v39 = v38 >> 6;
      if (((-1 << v38) & ~*(v14 + 8 * (v38 >> 6))) == 0)
      {
        v40 = 0;
        v41 = (63 - v37) >> 6;
        while (++v39 != v41 || (v40 & 1) == 0)
        {
          v42 = v39 == v41;
          if (v39 == v41)
          {
            v39 = 0;
          }

          v40 |= v42;
          v43 = *(v14 + 8 * v39);
          if (v43 != -1)
          {
            v15 = __clz(__rbit64(~v43)) + (v39 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v38) & ~*(v14 + 8 * (v38 >> 6)))) | v38 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v23;
      v16[1] = v24;
      v17 = *(v7 + 56) + 232 * v15;
      *(v17 + 176) = v72;
      *(v17 + 192) = v73;
      *(v17 + 208) = v74;
      *(v17 + 224) = v75;
      *(v17 + 112) = v68;
      *(v17 + 128) = v69;
      *(v17 + 144) = v70;
      *(v17 + 160) = v71;
      *(v17 + 48) = v64;
      *(v17 + 64) = v65;
      *(v17 + 80) = v66;
      *(v17 + 96) = v67;
      *v17 = v61;
      *(v17 + 16) = v62;
      *(v17 + 32) = v63;
      ++*(v7 + 16);
    }

    v19 = v8;
    while (1)
    {
      v8 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v20 = v9[v8];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v12 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v45 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v44 = 1 << *(v5 + 32);
    v3 = v2;
    if (v44 >= 64)
    {
      bzero((v5 + 64), ((v44 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v44;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

uint64_t sub_2520A8348(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CDAE0, &qword_252143C88);
  v33 = v4;
  result = sub_25214234C();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = (*(v5 + 56) + 32 * v20);
      if (v33)
      {
        sub_2520A1F80(v24, v34);
      }

      else
      {
        sub_2520A5FC4(v24, v34);
      }

      sub_25214255C();
      sub_252141BEC();
      result = sub_25214258C();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      result = sub_2520A1F80(v34, (*(v7 + 56) + 32 * v15));
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v33 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

unint64_t sub_2520A8600(uint64_t a1, char a2, double a3)
{
  v4 = v3;
  v7 = a1;
  v8 = *v3;
  result = sub_25213E6C0(a3);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 >= v14 && (a2 & 1) != 0)
  {
    goto LABEL_8;
  }

  if (v16 >= v14 && (a2 & 1) == 0)
  {
    v17 = result;
    sub_2520A6BC8();
    result = v17;
    goto LABEL_8;
  }

  sub_2520A74F8(v14, a2 & 1);
  result = sub_25213E6C0(a3);
  if ((v15 & 1) == (v18 & 1))
  {
LABEL_8:
    v19 = *v4;
    if (v15)
    {
      *(v19[7] + result) = v7 & 1;
      return result;
    }

    v19[(result >> 6) + 8] |= 1 << result;
    *(v19[6] + 8 * result) = a3;
    *(v19[7] + result) = v7 & 1;
    v20 = v19[2];
    v13 = __OFADD__(v20, 1);
    v21 = v20 + 1;
    if (!v13)
    {
      v19[2] = v21;
      return result;
    }

    goto LABEL_13;
  }

LABEL_14:
  result = sub_2521424CC();
  __break(1u);
  return result;
}

unint64_t sub_2520A8730(uint64_t a1, double a2, double a3)
{
  v4 = v3;
  v5 = a1;
  v8 = *v3;
  result = sub_25213E6C0(a3);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 >= v14 && (v5 & 1) != 0)
  {
    goto LABEL_8;
  }

  if (v16 >= v14 && (v5 & 1) == 0)
  {
    v17 = result;
    sub_2520A6D14();
    result = v17;
    goto LABEL_8;
  }

  sub_2520A7768(v14, v5 & 1);
  result = sub_25213E6C0(a3);
  if ((v15 & 1) == (v18 & 1))
  {
LABEL_8:
    v19 = *v4;
    if (v15)
    {
      *(v19[7] + 8 * result) = a2;
      return result;
    }

    v19[(result >> 6) + 8] |= 1 << result;
    *(v19[6] + 8 * result) = a3;
    *(v19[7] + 8 * result) = a2;
    v20 = v19[2];
    v13 = __OFADD__(v20, 1);
    v21 = v20 + 1;
    if (!v13)
    {
      v19[2] = v21;
      return result;
    }

    goto LABEL_13;
  }

LABEL_14:
  result = sub_2521424CC();
  __break(1u);
  return result;
}

uint64_t sub_2520A8854(uint64_t a1, uint64_t a2, uint64_t a3, char a4, __n128 a5)
{
  v6 = v5;
  v11 = *v5;
  v12 = sub_25213E648(a2, a3);
  v14 = *(v11 + 16);
  v15 = (v13 & 1) == 0;
  v16 = __OFADD__(v14, v15);
  v17 = v14 + v15;
  if (v16)
  {
    __break(1u);
    goto LABEL_17;
  }

  v18 = v13;
  v19 = *(v11 + 24);
  if (v19 < v17 || (a4 & 1) == 0)
  {
    if (v19 < v17 || (a4 & 1) != 0)
    {
      sub_2520A7C68(v17, a4 & 1);
      v12 = sub_25213E648(a2, a3);
      if ((v18 & 1) != (v21 & 1))
      {
LABEL_18:
        sub_2521424CC();
        __break(1u);
        return MEMORY[0x2821F96F8]();
      }
    }

    else
    {
      v20 = v12;
      sub_2520A6FC8();
      v12 = v20;
    }
  }

  v22 = *v6;
  if (v18)
  {
    *(v22[7] + 8 * v12) = a1;

    return MEMORY[0x2821F96F8]();
  }

  v22[(v12 >> 6) + 8] |= 1 << v12;
  v23 = (v22[6] + 16 * v12);
  *v23 = a2;
  v23[1] = a3;
  *(v22[7] + 8 * v12) = a1;
  v24 = v22[2];
  v16 = __OFADD__(v24, 1);
  v25 = v24 + 1;
  if (v16)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v22[2] = v25;
}

uint64_t sub_2520A89CC(__int128 *a1, uint64_t a2, uint64_t a3, char a4, __n128 a5)
{
  v6 = v5;
  v11 = *v5;
  v12 = sub_25213E648(a2, a3);
  v14 = *(v11 + 16);
  v15 = (v13 & 1) == 0;
  v16 = __OFADD__(v14, v15);
  v17 = v14 + v15;
  if (v16)
  {
    __break(1u);
    goto LABEL_17;
  }

  v18 = v13;
  v19 = *(v11 + 24);
  if (v19 < v17 || (a4 & 1) == 0)
  {
    if (v19 < v17 || (a4 & 1) != 0)
    {
      sub_2520A7F0C(v17, a4 & 1);
      v12 = sub_25213E648(a2, a3);
      if ((v18 & 1) != (v21 & 1))
      {
LABEL_18:
        result = sub_2521424CC();
        __break(1u);
        return result;
      }
    }

    else
    {
      v20 = v12;
      sub_2520A7134();
      v12 = v20;
    }
  }

  v22 = *v6;
  if (v18)
  {
    v23 = v22[7] + 232 * v12;

    return sub_2520A8E38(a1, v23);
  }

  v22[(v12 >> 6) + 8] |= 1 << v12;
  v25 = (v22[6] + 16 * v12);
  *v25 = a2;
  v25[1] = a3;
  v26 = v22[7] + 232 * v12;
  v27 = *a1;
  v28 = a1[2];
  *(v26 + 16) = a1[1];
  *(v26 + 32) = v28;
  *v26 = v27;
  v29 = a1[3];
  v30 = a1[4];
  v31 = a1[6];
  *(v26 + 80) = a1[5];
  *(v26 + 96) = v31;
  *(v26 + 48) = v29;
  *(v26 + 64) = v30;
  v32 = a1[7];
  v33 = a1[8];
  v34 = a1[10];
  *(v26 + 144) = a1[9];
  *(v26 + 160) = v34;
  *(v26 + 112) = v32;
  *(v26 + 128) = v33;
  v35 = a1[11];
  v36 = a1[12];
  v37 = a1[13];
  *(v26 + 224) = *(a1 + 28);
  *(v26 + 192) = v36;
  *(v26 + 208) = v37;
  *(v26 + 176) = v35;
  v38 = v22[2];
  v16 = __OFADD__(v38, 1);
  v39 = v38 + 1;
  if (v16)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v22[2] = v39;
}

_OWORD *sub_2520A8B94(_OWORD *a1, uint64_t a2, uint64_t a3, char a4, __n128 a5)
{
  v6 = v5;
  v11 = *v5;
  v12 = sub_25213E648(a2, a3);
  v14 = v11[2];
  v15 = (v13 & 1) == 0;
  v16 = __OFADD__(v14, v15);
  v17 = v14 + v15;
  if (v16)
  {
    __break(1u);
    goto LABEL_16;
  }

  v18 = v13;
  v19 = v11[3];
  if (v19 < v17 || (a4 & 1) == 0)
  {
    if (v19 >= v17 && (a4 & 1) == 0)
    {
      v20 = v12;
      sub_2520A7354();
      v12 = v20;
      goto LABEL_8;
    }

    sub_2520A8348(v17, a4 & 1);
    v12 = sub_25213E648(a2, a3);
    if ((v18 & 1) != (v21 & 1))
    {
LABEL_16:
      result = sub_2521424CC();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v22 = *v6;
  if (v18)
  {
    v23 = (v22[7] + 32 * v12);
    __swift_destroy_boxed_opaque_existential_0(v23);

    return sub_2520A1F80(a1, v23);
  }

  else
  {
    sub_2520A8D70(v12, a2, a3, a1, v22);
  }
}

unint64_t sub_2520A8CE4(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = (a5[6] + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  v6 = a5[7] + 232 * result;
  v7 = *(a4 + 208);
  *(v6 + 192) = *(a4 + 192);
  *(v6 + 208) = v7;
  *(v6 + 224) = *(a4 + 224);
  v8 = *(a4 + 144);
  *(v6 + 128) = *(a4 + 128);
  *(v6 + 144) = v8;
  v9 = *(a4 + 176);
  *(v6 + 160) = *(a4 + 160);
  *(v6 + 176) = v9;
  v10 = *(a4 + 80);
  *(v6 + 64) = *(a4 + 64);
  *(v6 + 80) = v10;
  v11 = *(a4 + 112);
  *(v6 + 96) = *(a4 + 96);
  *(v6 + 112) = v11;
  v12 = *(a4 + 16);
  *v6 = *a4;
  *(v6 + 16) = v12;
  v13 = *(a4 + 48);
  *(v6 + 32) = *(a4 + 32);
  *(v6 + 48) = v13;
  v14 = a5[2];
  v15 = __OFADD__(v14, 1);
  v16 = v14 + 1;
  if (v15)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v16;
  }

  return result;
}

_OWORD *sub_2520A8D70(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_2520A1F80(a4, (a5[7] + 32 * a1));
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

id sub_2520A8E94()
{
  result = [objc_allocWithZone(type metadata accessor for HTNSNotificationManager()) init];
  qword_27F4D3420 = result;
  return result;
}

id sub_2520A8EC4()
{
  v1 = &v0[OBJC_IVAR____TtC11HearingTest23HTNSNotificationManager_onNotificationDidEnterBackgroundForRequirements];
  *v1 = 0;
  *(v1 + 1) = 0;
  v2 = &v0[OBJC_IVAR____TtC11HearingTest23HTNSNotificationManager_onNotificationDidEnterBackgroundForAHPS];
  *v2 = 0;
  *(v2 + 1) = 0;
  v3 = &v0[OBJC_IVAR____TtC11HearingTest23HTNSNotificationManager_onNotificationDidActivateForRequirements];
  *v3 = 0;
  *(v3 + 1) = 0;
  v4 = &v0[OBJC_IVAR____TtC11HearingTest23HTNSNotificationManager_onNotificationDidActivateForAHPS];
  *v4 = 0;
  *(v4 + 1) = 0;
  v5 = &v0[OBJC_IVAR____TtC11HearingTest23HTNSNotificationManager_onNotificationWillDeactivate];
  *v5 = 0;
  *(v5 + 1) = 0;
  v6 = &v0[OBJC_IVAR____TtC11HearingTest23HTNSNotificationManager_onNotificationWillTerminateForNoise];
  *v6 = 0;
  *(v6 + 1) = 0;
  v7 = &v0[OBJC_IVAR____TtC11HearingTest23HTNSNotificationManager_onNotificationWillTerminateForTones];
  *v7 = 0;
  *(v7 + 1) = 0;
  v8 = &v0[OBJC_IVAR____TtC11HearingTest23HTNSNotificationManager_onNotificationSetSmartRountingArbitrationBlockingMode];
  *v8 = 0;
  *(v8 + 1) = 0;
  v9 = &v0[OBJC_IVAR____TtC11HearingTest23HTNSNotificationManager_onNotificationWillDeactivateForRequirements];
  v10 = type metadata accessor for HTNSNotificationManager();
  *v9 = 0;
  *(v9 + 1) = 0;
  v30.receiver = v0;
  v30.super_class = v10;
  v11 = objc_msgSendSuper2(&v30, sel_init);
  v12 = objc_opt_self();
  v13 = v11;
  v14 = [v12 defaultCenter];
  v15 = *MEMORY[0x277D76E58];
  [v14 addObserver:v13 selector:sel_deactivateArbitrationBlocking name:*MEMORY[0x277D76E58] object:0];

  v16 = [v12 defaultCenter];
  v17 = *MEMORY[0x277D76E78];
  [v16 addObserver:v13 selector:sel_deactivateArbitrationBlocking name:*MEMORY[0x277D76E78] object:0];

  v18 = [v12 defaultCenter];
  v19 = *MEMORY[0x277D76E80];
  [v18 addObserver:v13 selector:sel_activateArbitrationBlocking name:*MEMORY[0x277D76E80] object:0];

  v20 = [v12 defaultCenter];
  v21 = *MEMORY[0x277D76E48];
  [v20 addObserver:v13 selector:sel_activateArbitrationBlocking name:*MEMORY[0x277D76E48] object:0];

  v22 = [v12 defaultCenter];
  [v22 addObserver:v13 selector:sel_notifyTestResumed name:v21 object:0];

  v23 = [v12 defaultCenter];
  [v23 addObserver:v13 selector:sel_notifyTestResumed name:v19 object:0];

  v24 = [v12 defaultCenter];
  [v24 addObserver:v13 selector:sel_updateTimestamp name:v17 object:0];

  v25 = [v12 defaultCenter];
  [v25 addObserver:v13 selector:sel_handleDidEnterBackground name:v15 object:0];

  v26 = [v12 defaultCenter];
  [v26 addObserver:v13 selector:sel_handleDidActivate name:v21 object:0];

  v27 = [v12 defaultCenter];
  [v27 addObserver:v13 selector:sel_handleWillTerminate name:*MEMORY[0x277D76770] object:0];

  v28 = [v12 defaultCenter];
  [v28 addObserver:v13 selector:sel_handleWillDeactivate name:v17 object:0];

  return v13;
}

id sub_2520A92A0()
{
  v1 = [objc_opt_self() defaultCenter];
  [v1 removeObserver_];

  v3.receiver = v0;
  v3.super_class = type metadata accessor for HTNSNotificationManager();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

void sub_2520A94E0()
{
  v1 = v0;
  if (qword_27F4CD740 != -1)
  {
    swift_once();
  }

  v2 = sub_25214198C();
  __swift_project_value_buffer(v2, qword_27F4CDF10);
  v3 = sub_25214196C();
  v4 = sub_252141FBC();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v17 = v6;
    *v5 = 136315138;
    v7 = [objc_opt_self() processInfo];
    v8 = [v7 processName];

    v9 = sub_252141B9C();
    v11 = v10;

    v12 = sub_2520A5448(v9, v11, &v17);

    *(v5 + 4) = v12;
    _os_log_impl(&dword_25207E000, v3, v4, "%s handleWillDeactivate", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v6);
    MEMORY[0x253099FD0](v6, -1, -1);
    MEMORY[0x253099FD0](v5, -1, -1);
  }

  v13 = v1 + OBJC_IVAR____TtC11HearingTest23HTNSNotificationManager_onNotificationWillDeactivateForRequirements;
  v14 = *(v1 + OBJC_IVAR____TtC11HearingTest23HTNSNotificationManager_onNotificationWillDeactivateForRequirements);
  if (v14)
  {
    v15 = *(v13 + 8);

    v14(v16);

    sub_2520A1FE4(v14, v15);
  }
}

void sub_2520A97A0(const char *a1, void *a2, void *a3, ...)
{
  v7 = v3;
  if (qword_27F4CD740 != -1)
  {
    swift_once();
  }

  v8 = sub_25214198C();
  __swift_project_value_buffer(v8, qword_27F4CDF10);
  v9 = sub_25214196C();
  v10 = sub_252141FBC();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v31 = v30;
    *v11 = 136315138;
    v12 = [objc_opt_self() processInfo];
    v13 = [v12 processName];

    v14 = sub_252141B9C();
    v15 = a2;
    v16 = a1;
    v17 = a3;
    v19 = v18;

    v20 = sub_2520A5448(v14, v19, &v31);
    a3 = v17;

    *(v11 + 4) = v20;
    v21 = v16;
    a2 = v15;
    _os_log_impl(&dword_25207E000, v9, v10, v21, v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v30);
    MEMORY[0x253099FD0](v30, -1, -1);
    MEMORY[0x253099FD0](v11, -1, -1);
  }

  v22 = v7 + *a2;
  v23 = *v22;
  if (*v22)
  {
    v24 = *(v22 + 8);

    v23(v25);
    sub_2520A1FE4(v23, v24);
  }

  v26 = v7 + *a3;
  v27 = *v26;
  if (*v26)
  {
    v28 = *(v26 + 8);

    v27(v29);

    sub_2520A1FE4(v27, v28);
  }
}

char *sub_2520A9A44(char *result, uint64_t a2, char a3)
{
  v3 = *&result[OBJC_IVAR____TtC11HearingTest23HTNSNotificationManager_onNotificationSetSmartRountingArbitrationBlockingMode];
  if (v3)
  {
    v5 = *&result[OBJC_IVAR____TtC11HearingTest23HTNSNotificationManager_onNotificationSetSmartRountingArbitrationBlockingMode + 8];
    v6 = result;
    sub_2520A283C(v3, v5);
    v3(a3 & 1);

    return sub_2520A1FE4(v3, v5);
  }

  return result;
}

void sub_2520A9AD4()
{
  swift_getObjectType();
  v0 = CFNotificationCenterGetDarwinNotifyCenter();
  v1 = sub_252141B6C();
  CFNotificationCenterPostNotification(v0, v1, 0, 0, 1u);

  if (qword_27F4CD708 != -1)
  {
    swift_once();
  }

  v2 = sub_25214198C();
  __swift_project_value_buffer(v2, qword_27F4CDE68);
  oslog = sub_25214196C();
  v3 = sub_252141FBC();
  if (os_log_type_enabled(oslog, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v10 = v5;
    *v4 = 136446466;
    v6 = sub_2521425DC();
    v8 = sub_2520A5448(v6, v7, &v10);

    *(v4 + 4) = v8;
    *(v4 + 12) = 2080;
    *(v4 + 14) = sub_2520A5448(0xD000000000000022, 0x8000000252149200, &v10);
    _os_log_impl(&dword_25207E000, oslog, v3, "[%{public}s] posted notification %s on app activation", v4, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x253099FD0](v5, -1, -1);
    MEMORY[0x253099FD0](v4, -1, -1);
  }
}

uint64_t sub_2520AA46C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CDD08, &unk_252144B00);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2520AA4DC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CDD08, &unk_252144B00);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2520AA548(uint64_t a1, uint64_t a2)
{

  return sub_2520AA5B4(a1, a2, sub_2520AAE88);
}

uint64_t sub_2520AA5B4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void *, uint64_t *))
{
  __C[3] = *MEMORY[0x277D85DE8];
  *&__C[1] = a2;
  *&__C[2] = a1;
  v4 = *(a2 + 16);
  __C[0] = NAN;
  vDSP_maxvD((a2 + 32), 1, __C, v4);
  if ((*&__C[0] & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (__C[0] <= -9.22337204e18)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (__C[0] >= 9.22337204e18)
  {
LABEL_8:
    __break(1u);
LABEL_9:
    __break(1u);
  }

  if (__OFADD__(__C[0], 1))
  {
    goto LABEL_9;
  }

  MEMORY[0x28223BE20](__C[0] + 1);
  return sub_2520AABEC(v5, a3);
}

uint64_t Array.partitioningIndex(where:)(uint64_t (*a1)(char *), uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[0] = a1;
  v6 = *(a4 - 8);
  MEMORY[0x28223BE20](a1);
  v8 = v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16[1] = v9;
  result = sub_252141D5C();
  v11 = result;
  v17 = 0;
  v12 = (v6 + 8);
  while (1)
  {
    if (v11 < 1)
    {
      return v17;
    }

    v13 = v11;
    v11 = v11 >> 1;
    v14 = v17 + v11;
    if (__OFADD__(v17, v11))
    {
      break;
    }

    sub_252141DCC();
    v15 = (v16[0])(v8);
    result = (*v12)(v8, a4);
    if (v4)
    {
      return v17;
    }

    if ((v15 & 1) == 0)
    {
      v17 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        goto LABEL_10;
      }

      v11 = v13 + ~v11;
    }
  }

  __break(1u);
LABEL_10:
  __break(1u);
  return result;
}

uint64_t static Interpolators.interp(indices:xValues:yValues:)(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = *(result + 16);
  if (v3 < 2)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (*(a2 + 16) != *(a3 + 16))
  {
LABEL_9:
    __break(1u);
    return result;
  }

  v6 = result;
  v12 = MEMORY[0x277D84F90];
  sub_2520A3448(0, v3, 0);
  v7 = (v6 + 32);
  do
  {
    _s11HearingTest13InterpolatorsC8interp1d7xValues01yE06xPointSdSaySdG_AHSdtFZ_0(a2, a3, *v7);
    v10 = *(v12 + 16);
    v9 = *(v12 + 24);
    if (v10 >= v9 >> 1)
    {
      v11 = v8;
      sub_2520A3448(v9 > 1, v10 + 1, 1);
      v8 = v11;
    }

    *(v12 + 16) = v10 + 1;
    *(v12 + 8 * v10 + 32) = v8;
    ++v7;
    --v3;
  }

  while (v3);
  return v12;
}

void static Interpolators.log2Interpolate(values:atIndices:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = MEMORY[0x277D84F90];
  if (v2)
  {
    v5 = a2;
    v19 = MEMORY[0x277D84F90];
    sub_2520A3448(0, v2, 0);
    v6 = v19;
    v7 = (a1 + 32);
    do
    {
      v8 = log2(*v7);
      v10 = *(v19 + 16);
      v9 = *(v19 + 24);
      if (v10 >= v9 >> 1)
      {
        v11 = v8;
        sub_2520A3448(v9 > 1, v10 + 1, 1);
        v8 = v11;
      }

      *(v19 + 16) = v10 + 1;
      *(v19 + 8 * v10 + 32) = v8;
      ++v7;
      --v2;
    }

    while (v2);
    a2 = v5;
  }

  else
  {
    v6 = MEMORY[0x277D84F90];
  }

  v12 = sub_2520AA5B4(v6, a2, sub_2520AAEA8);

  v13 = *(v12 + 16);
  if (v13)
  {
    sub_2520A3448(0, v13, 0);
    v14 = 0;
    while (v14 < *(v12 + 16))
    {
      v15 = exp2(*(v12 + 8 * v14 + 32));
      v17 = *(v3 + 16);
      v16 = *(v3 + 24);
      if (v17 >= v16 >> 1)
      {
        v18 = v15;
        sub_2520A3448(v16 > 1, v17 + 1, 1);
        v15 = v18;
      }

      ++v14;
      *(v3 + 16) = v17 + 1;
      *(v3 + 8 * v17 + 32) = v15;
      if (v13 == v14)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_14:
  }
}

id Interpolators.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id Interpolators.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for Interpolators();
  return objc_msgSendSuper2(&v2, sel_init);
}

id Interpolators.__deallocating_deinit(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for Interpolators();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t sub_2520AABEC(uint64_t result, uint64_t (*a2)(void *, uint64_t *))
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_16;
  }

  v4 = result;
  if (result)
  {
    v5 = sub_252141D3C();
    *(v5 + 16) = v4;
  }

  else
  {
    v5 = MEMORY[0x277D84F90];
  }

  v6 = v5 + 32;
  v8 = 0;
  v7[0] = v5 + 32;
  v7[1] = v4;
  result = a2(v7, &v8);
  if (v2)
  {
    if (v8 <= v4)
    {
      if (!v7[0])
      {
LABEL_20:
        __break(1u);
        goto LABEL_21;
      }

      if (v6 == v7[0])
      {
        *(v5 + 16) = v8;

        return v5;
      }

      goto LABEL_17;
    }

LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (v8 > v4)
  {
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (v7[0])
  {
    if (v6 == v7[0])
    {
      *(v5 + 16) = v8;
      return v5;
    }

    goto LABEL_19;
  }

LABEL_21:
  __break(1u);
  return result;
}

void sub_2520AAD04(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *(*a4 + 16);
  if (v5 != *(*a3 + 16))
  {
    __break(1u);
    goto LABEL_6;
  }

  v6 = *(a1 + 8);
  if ((v6 & 0x8000000000000000) != 0)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (*a1)
  {
    vDSP_vgenpD((*a3 + 32), 1, (*a4 + 32), 1, *a1, 1, v6, v5);
    *a2 = a5;
    return;
  }

LABEL_7:
  __break(1u);
}

uint64_t _s11HearingTest13InterpolatorsC8interp1d7xValues01yE06xPointSdSaySdG_AHSdtFZ_0(uint64_t result, uint64_t a2, double a3)
{
  v3 = *(result + 16);
  if (v3 < 2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (v3 != *(a2 + 16))
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v4 = 0;
  v5 = *(result + 16);
  while (1)
  {
    v6 = v5 >> 1;
    v7 = v4 + (v5 >> 1);
    if (__OFADD__(v4, v5 >> 1))
    {
      __break(1u);
LABEL_16:
      __break(1u);
      goto LABEL_17;
    }

    if (v7 >= v3)
    {
      goto LABEL_16;
    }

    if (*(result + 32 + 8 * v7) < a3)
    {
      break;
    }

LABEL_4:
    v5 = v6;
    if (v6 <= 0)
    {
      goto LABEL_11;
    }
  }

  v4 = v7 + 1;
  if (!__OFADD__(v7, 1))
  {
    v6 = v5 + ~v6;
    goto LABEL_4;
  }

  __break(1u);
LABEL_11:
  v8 = v3 - 1;
  if (v8 >= v4)
  {
    v8 = v4;
  }

  if (v8 < 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

uint64_t sub_2520AAEC0()
{
  type metadata accessor for HTNoiseMetadata();
  v0 = swift_allocObject();
  result = sub_2520AD088();
  qword_27F4D3428 = v0;
  return result;
}

double sub_2520AAEFC@<D0>(uint64_t a1@<X0>, double *a2@<X8>)
{
  result = *(a1 + 24);
  *a2 = result;
  return result;
}

uint64_t sub_2520AAF08@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 48);
  v3 = *(a1 + 56);
  *a2 = *(a1 + 32);
  *(a2 + 16) = v2;
  *(a2 + 24) = v3;
}

uint64_t sub_2520AAF44(uint64_t a1, uint64_t a2, uint64_t a3, double a4, double a5)
{
  *(a1 + 32) = a4;
  *(a1 + 40) = a5;
  *(a1 + 48) = a2;
  *(a1 + 56) = a3;
}

uint64_t sub_2520AAFA4()
{
  isEscapingClosureAtFileLocation = v0;
  if (qword_27F4CD7B0 != -1)
  {
    swift_once();
  }

  if (byte_27F4D3492 != 1)
  {
    goto LABEL_8;
  }

  if (qword_27F4CD738 != -1)
  {
    goto LABEL_13;
  }

  while (1)
  {
    v2 = sub_25214198C();
    __swift_project_value_buffer(v2, qword_27F4CDEF8);

    v3 = sub_25214196C();
    v4 = sub_252141FBC();

    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      aBlock = v6;
      *v5 = 136446722;
      v7 = sub_2521425DC();
      v9 = sub_2520A5448(v7, v8, &aBlock);

      *(v5 + 4) = v9;
      *(v5 + 12) = 2048;
      sub_25214200C();
      *(v5 + 14) = v18;
      *(v5 + 22) = 2048;
      sub_25214200C();
      *(v5 + 24) = v18;
      _os_log_impl(&dword_25207E000, v3, v4, "[%{public}s] before reset count %f, mean %f", v5, 0x20u);
      __swift_destroy_boxed_opaque_existential_0(v6);
      MEMORY[0x253099FD0](v6, -1, -1);
      MEMORY[0x253099FD0](v5, -1, -1);
    }

LABEL_8:
    v10 = *(isEscapingClosureAtFileLocation + 80);
    v11 = swift_allocObject();
    *(v11 + 16) = isEscapingClosureAtFileLocation;
    *(v11 + 24) = 0;
    v12 = swift_allocObject();
    *(v12 + 16) = sub_2520AD4D0;
    *(v12 + 24) = v11;
    v23 = sub_2520ADA58;
    v24 = v12;
    aBlock = MEMORY[0x277D85DD0];
    v20 = 1107296256;
    v21 = sub_252083924;
    v22 = &block_descriptor_72;
    v13 = _Block_copy(&aBlock);

    dispatch_sync(v10, v13);
    _Block_release(v13);
    LOBYTE(v13) = swift_isEscapingClosureAtFileLocation();

    if (v13)
    {
      __break(1u);
      goto LABEL_12;
    }

    v14 = swift_allocObject();
    *(v14 + 16) = isEscapingClosureAtFileLocation;
    *(v14 + 24) = 0;
    v15 = swift_allocObject();
    *(v15 + 16) = sub_2520AD4E0;
    *(v15 + 24) = v14;
    v23 = sub_2520ADA58;
    v24 = v15;
    aBlock = MEMORY[0x277D85DD0];
    v20 = 1107296256;
    v21 = sub_252083924;
    v22 = &block_descriptor_82;
    v16 = _Block_copy(&aBlock);

    dispatch_sync(v10, v16);
    _Block_release(v16);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      return result;
    }

LABEL_12:
    __break(1u);
LABEL_13:
    swift_once();
  }
}

uint64_t sub_2520AB414()
{
  isEscapingClosureAtFileLocation = v0;
  if (qword_27F4CD7B0 != -1)
  {
    swift_once();
  }

  if (byte_27F4D3492 != 1)
  {
    goto LABEL_9;
  }

  if (qword_27F4CD738 != -1)
  {
    goto LABEL_22;
  }

  while (1)
  {
    v2 = sub_25214198C();
    __swift_project_value_buffer(v2, qword_27F4CDEF8);

    v3 = sub_25214196C();
    v4 = sub_252141FBC();

    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v48 = v6;
      *v5 = 136446978;
      v7 = sub_2521425DC();
      v9 = sub_2520A5448(v7, v8, &v48);

      *(v5 + 4) = v9;
      *(v5 + 12) = 2048;
      sub_25214200C();
      *(v5 + 14) = aBlock;
      *(v5 + 22) = 2048;
      sub_25214200C();
      v10 = v43;

      *(v5 + 24) = v10;
      *(v5 + 32) = 2048;
      sub_25214200C();
      v11 = aBlock;

      *(v5 + 34) = v11;
      _os_log_impl(&dword_25207E000, v3, v4, "[%{public}s] before reset count %f, mean inst %f, stat %f", v5, 0x2Au);
      __swift_destroy_boxed_opaque_existential_0(v6);
      MEMORY[0x253099FD0](v6, -1, -1);
      MEMORY[0x253099FD0](v5, -1, -1);
    }

LABEL_9:
    v12 = *(isEscapingClosureAtFileLocation + 80);
    sub_25214200C();
    v49 = 0;
    v13 = v48;
    v14 = swift_allocObject();
    *(v14 + 16) = isEscapingClosureAtFileLocation;
    *(v14 + 24) = v13;
    *(v14 + 32) = 0;
    *(v14 + 40) = v50;
    v15 = swift_allocObject();
    *(v15 + 16) = sub_2520AD480;
    *(v15 + 24) = v14;
    v46 = sub_2520AD484;
    v47 = v15;
    aBlock = MEMORY[0x277D85DD0];
    v43 = 1107296256;
    v44 = sub_252083924;
    v45 = &block_descriptor_1;
    v16 = _Block_copy(&aBlock);

    dispatch_sync(v12, v16);
    _Block_release(v16);
    LOBYTE(v16) = swift_isEscapingClosureAtFileLocation();

    if (v16)
    {
      __break(1u);
LABEL_17:
      __break(1u);
LABEL_18:
      __break(1u);
LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
      goto LABEL_21;
    }

    sub_25214200C();
    v48 = 0;
    v17 = v49;
    v18 = swift_allocObject();
    *(v18 + 16) = isEscapingClosureAtFileLocation;
    *(v18 + 24) = 0;
    *(v18 + 32) = v17;
    *(v18 + 40) = v50;
    v19 = swift_allocObject();
    *(v19 + 16) = sub_2520ADA00;
    *(v19 + 24) = v18;
    v46 = sub_2520ADA58;
    v47 = v19;
    aBlock = MEMORY[0x277D85DD0];
    v43 = 1107296256;
    v44 = sub_252083924;
    v45 = &block_descriptor_16_0;
    v20 = _Block_copy(&aBlock);

    dispatch_sync(v12, v20);
    _Block_release(v20);
    LOBYTE(v20) = swift_isEscapingClosureAtFileLocation();

    if (v20)
    {
      goto LABEL_17;
    }

    v21 = sub_252141D3C();
    *(v21 + 16) = 8;
    *(v21 + 32) = 0u;
    *(v21 + 48) = 0u;
    *(v21 + 64) = 0u;
    *(v21 + 80) = 0u;
    sub_25214200C();

    *(&v50 + 1) = v21;
    v22 = v48;
    v23 = v49;
    v24 = v50;
    v25 = swift_allocObject();
    v25[2] = isEscapingClosureAtFileLocation;
    v25[3] = v22;
    v25[4] = v23;
    v25[5] = v24;
    v25[6] = v21;
    v26 = swift_allocObject();
    *(v26 + 16) = sub_2520ADA00;
    *(v26 + 24) = v25;
    v46 = sub_2520ADA58;
    v47 = v26;
    aBlock = MEMORY[0x277D85DD0];
    v43 = 1107296256;
    v44 = sub_252083924;
    v45 = &block_descriptor_28;
    v27 = _Block_copy(&aBlock);

    dispatch_sync(v12, v27);
    _Block_release(v27);
    LOBYTE(v27) = swift_isEscapingClosureAtFileLocation();

    if (v27)
    {
      goto LABEL_18;
    }

    v28 = sub_252141D3C();
    *(v28 + 16) = 8;
    *(v28 + 32) = 0u;
    *(v28 + 48) = 0u;
    *(v28 + 64) = 0u;
    *(v28 + 80) = 0u;
    sub_25214200C();

    *&v50 = v28;
    v29 = v48;
    v30 = v49;
    v31 = *(&v50 + 1);
    v32 = swift_allocObject();
    v32[2] = isEscapingClosureAtFileLocation;
    v32[3] = v29;
    v32[4] = v30;
    v32[5] = v28;
    v32[6] = v31;
    v33 = swift_allocObject();
    *(v33 + 16) = sub_2520ADA00;
    *(v33 + 24) = v32;
    v46 = sub_2520ADA58;
    v47 = v33;
    aBlock = MEMORY[0x277D85DD0];
    v43 = 1107296256;
    v44 = sub_252083924;
    v45 = &block_descriptor_40;
    v34 = _Block_copy(&aBlock);

    dispatch_sync(v12, v34);
    _Block_release(v34);
    LOBYTE(v34) = swift_isEscapingClosureAtFileLocation();

    if (v34)
    {
      goto LABEL_19;
    }

    v35 = swift_allocObject();
    *(v35 + 16) = isEscapingClosureAtFileLocation;
    *(v35 + 24) = 0;
    v36 = swift_allocObject();
    *(v36 + 16) = sub_2520AD4A4;
    *(v36 + 24) = v35;
    v46 = sub_2520ADA58;
    v47 = v36;
    aBlock = MEMORY[0x277D85DD0];
    v43 = 1107296256;
    v44 = sub_252083924;
    v45 = &block_descriptor_50;
    v37 = _Block_copy(&aBlock);

    dispatch_sync(v12, v37);
    _Block_release(v37);
    LOBYTE(v37) = swift_isEscapingClosureAtFileLocation();

    if (v37)
    {
      goto LABEL_20;
    }

    v38 = swift_allocObject();
    *(v38 + 16) = isEscapingClosureAtFileLocation;
    *(v38 + 24) = 0;
    v39 = swift_allocObject();
    *(v39 + 16) = sub_2520AD4B4;
    *(v39 + 24) = v38;
    v46 = sub_2520ADA58;
    v47 = v39;
    aBlock = MEMORY[0x277D85DD0];
    v43 = 1107296256;
    v44 = sub_252083924;
    v45 = &block_descriptor_60_0;
    v40 = _Block_copy(&aBlock);

    dispatch_sync(v12, v40);
    _Block_release(v40);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      return result;
    }

LABEL_21:
    __break(1u);
LABEL_22:
    swift_once();
  }
}

void sub_2520ABE70(double a1, double a2)
{
  sub_2520AC25C(a1, a2);
  sub_2520AC804(a1, a2);
  if (qword_27F4CD7B0 != -1)
  {
    swift_once();
  }

  if (byte_27F4D3492 == 1)
  {
    if (qword_27F4CD738 != -1)
    {
      swift_once();
    }

    v4 = sub_25214198C();
    __swift_project_value_buffer(v4, qword_27F4CDEF8);

    oslog = sub_25214196C();
    v5 = sub_252141FBC();

    if (os_log_type_enabled(oslog, v5))
    {
      v6 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v25 = v19;
      *v6 = 136447490;
      v7 = sub_2521425DC();
      v9 = sub_2520A5448(v7, v8, &v25);

      *(v6 + 4) = v9;
      *(v6 + 12) = 2048;
      v10 = MEMORY[0x277D839F8];
      sub_25214200C();
      *(v6 + 14) = v21;
      *(v6 + 22) = 2048;
      sub_25214200C();

      *(v6 + 24) = v22;
      *(v6 + 32) = 2048;
      sub_25214200C();

      *(v6 + 34) = v21;
      *(v6 + 42) = 2080;
      sub_25214200C();

      v11 = MEMORY[0x253098E80](v24, v10);
      v13 = v12;

      v14 = sub_2520A5448(v11, v13, &v25);

      *(v6 + 44) = v14;
      *(v6 + 52) = 2080;
      sub_25214200C();

      v15 = MEMORY[0x253098E80](v23, MEMORY[0x277D839F8]);
      v17 = v16;

      v18 = sub_2520A5448(v15, v17, &v25);

      *(v6 + 54) = v18;
      _os_log_impl(&dword_25207E000, oslog, v5, "[%{public}s] metadata count %f, mean inst %f, stat %f, hist inst %s, stat %s", v6, 0x3Eu);
      swift_arrayDestroy();
      MEMORY[0x253099FD0](v19, -1, -1);
      MEMORY[0x253099FD0](v6, -1, -1);
    }

    else
    {
    }
  }
}

uint64_t sub_2520AC25C(double a1, double a2)
{
  v3 = v2;
  v6 = *(v2 + 80);
  sub_25214200C();
  sub_25214200C();
  v7 = aBlock + 1.0;
  v34 = v34 + (a1 - v34) / (aBlock + 1.0);
  v8 = swift_allocObject();
  *(v8 + 16) = v3;
  *(v8 + 24) = v7;
  v9 = swift_allocObject();
  *(v9 + 16) = sub_2520AD9D0;
  *(v9 + 24) = v8;
  v31 = sub_2520ADA58;
  v32 = v9;
  aBlock = MEMORY[0x277D85DD0];
  v28 = 1107296256;
  v29 = sub_252083924;
  v30 = &block_descriptor_124;
  v10 = _Block_copy(&aBlock);

  dispatch_sync(v6, v10);
  _Block_release(v10);
  LOBYTE(v10) = swift_isEscapingClosureAtFileLocation();

  if (v10)
  {
    __break(1u);
    goto LABEL_7;
  }

  v12 = v33;
  v13 = v34;
  v14 = swift_allocObject();
  *(v14 + 16) = v3;
  *(v14 + 24) = v12;
  *(v14 + 32) = v13;
  *(v14 + 40) = v35;
  v15 = swift_allocObject();
  *(v15 + 16) = sub_2520ADA00;
  *(v15 + 24) = v14;
  v31 = sub_2520ADA58;
  v32 = v15;
  aBlock = MEMORY[0x277D85DD0];
  v28 = 1107296256;
  v29 = sub_252083924;
  v30 = &block_descriptor_135;
  v16 = _Block_copy(&aBlock);

  dispatch_sync(v6, v16);
  _Block_release(v16);
  LOBYTE(v16) = swift_isEscapingClosureAtFileLocation();

  if (v16)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  sub_25214200C();
  sub_25214200C();
  v17 = aBlock + 1.0;
  v33 = v33 + (a2 - v33) / (aBlock + 1.0);
  v18 = swift_allocObject();
  *(v18 + 16) = v3;
  *(v18 + 24) = v17;
  v19 = swift_allocObject();
  *(v19 + 16) = sub_2520AD9D4;
  *(v19 + 24) = v18;
  v31 = sub_2520ADA58;
  v32 = v19;
  aBlock = MEMORY[0x277D85DD0];
  v28 = 1107296256;
  v29 = sub_252083924;
  v30 = &block_descriptor_147;
  v20 = _Block_copy(&aBlock);

  dispatch_sync(v6, v20);
  _Block_release(v20);
  LOBYTE(v20) = swift_isEscapingClosureAtFileLocation();

  if (v20)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v21 = v33;
  v22 = v34;
  v23 = swift_allocObject();
  *(v23 + 16) = v3;
  *(v23 + 24) = v21;
  *(v23 + 32) = v22;
  *(v23 + 40) = v35;
  v24 = swift_allocObject();
  *(v24 + 16) = sub_2520ADA00;
  *(v24 + 24) = v23;
  v31 = sub_2520ADA58;
  v32 = v24;
  aBlock = MEMORY[0x277D85DD0];
  v28 = 1107296256;
  v29 = sub_252083924;
  v30 = &block_descriptor_158;
  v25 = _Block_copy(&aBlock);

  dispatch_sync(v6, v25);
  _Block_release(v25);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
LABEL_9:
    __break(1u);
  }

  return result;
}

uint64_t sub_2520AC804(double a1, double a2)
{
  v3 = v2;
  v6 = *(v2 + 80);
  sub_25214200C();
  sub_2520AD5C4(&v27 + 1, a1);
  v7 = v25;
  v8 = v26;
  v9 = swift_allocObject();
  *(v9 + 16) = v3;
  *(v9 + 24) = v7;
  *(v9 + 32) = v8;
  *(v9 + 40) = v27;
  v10 = swift_allocObject();
  *(v10 + 16) = sub_2520ADA00;
  *(v10 + 24) = v9;
  v23 = sub_2520ADA58;
  v24 = v10;
  aBlock = MEMORY[0x277D85DD0];
  v20 = 1107296256;
  v21 = sub_252083924;
  v22 = &block_descriptor_99;
  v11 = _Block_copy(&aBlock);

  dispatch_sync(v6, v11);
  _Block_release(v11);
  LOBYTE(v11) = swift_isEscapingClosureAtFileLocation();

  if (v11)
  {
    __break(1u);
    goto LABEL_5;
  }

  sub_25214200C();
  sub_2520AD5C4(&v27, a2);
  v13 = v25;
  v14 = v26;
  v15 = swift_allocObject();
  *(v15 + 16) = v3;
  *(v15 + 24) = v13;
  *(v15 + 32) = v14;
  *(v15 + 40) = v27;
  v16 = swift_allocObject();
  *(v16 + 16) = sub_2520ADA00;
  *(v16 + 24) = v15;
  v23 = sub_2520ADA58;
  v24 = v16;
  aBlock = MEMORY[0x277D85DD0];
  v20 = 1107296256;
  v21 = sub_252083924;
  v22 = &block_descriptor_111;
  v17 = _Block_copy(&aBlock);

  dispatch_sync(v6, v17);
  _Block_release(v17);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
LABEL_5:
    __break(1u);
  }

  return result;
}

void sub_2520ACB18(double a1)
{
  v2 = v1;
  v4 = *(v1 + 80);
  sub_25214200C();
  v5 = aBlock;
  sub_25214200C();
  v6 = aBlock + 1.0;
  v7 = swift_allocObject();
  *(v7 + 16) = v2;
  *(v7 + 24) = v6;
  v8 = swift_allocObject();
  *(v8 + 16) = sub_2520AD9D8;
  *(v8 + 24) = v7;
  v26 = sub_2520ADA58;
  v27 = v8;
  aBlock = MEMORY[0x277D85DD0];
  v23 = 1107296256;
  v24 = sub_252083924;
  v25 = &block_descriptor_171;
  v9 = _Block_copy(&aBlock);

  dispatch_sync(v4, v9);
  _Block_release(v9);
  LOBYTE(v9) = swift_isEscapingClosureAtFileLocation();

  if (v9)
  {
    __break(1u);
  }

  else
  {
    v10 = swift_allocObject();
    *(v10 + 16) = v2;
    *(v10 + 24) = v5 + (a1 - v5) / v6;
    v11 = swift_allocObject();
    *(v11 + 16) = sub_2520AD9DC;
    *(v11 + 24) = v10;
    v26 = sub_2520ADA58;
    v27 = v11;
    aBlock = MEMORY[0x277D85DD0];
    v23 = 1107296256;
    v24 = sub_252083924;
    v25 = &block_descriptor_182;
    v12 = _Block_copy(&aBlock);

    dispatch_sync(v4, v12);
    _Block_release(v12);
    LOBYTE(v12) = swift_isEscapingClosureAtFileLocation();

    if ((v12 & 1) == 0)
    {
      if (qword_27F4CD7B0 == -1)
      {
        goto LABEL_4;
      }

      goto LABEL_13;
    }
  }

  __break(1u);
LABEL_13:
  swift_once();
LABEL_4:
  if (byte_27F4D3492 == 1)
  {
    if (qword_27F4CD738 != -1)
    {
      swift_once();
    }

    v13 = sub_25214198C();
    __swift_project_value_buffer(v13, qword_27F4CDEF8);

    v14 = sub_25214196C();
    v15 = sub_252141FBC();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      aBlock = *&v17;
      *v16 = 136446978;
      v18 = sub_2521425DC();
      v20 = sub_2520A5448(v18, v19, &aBlock);

      *(v16 + 4) = v20;
      *(v16 + 12) = 2048;
      *(v16 + 14) = a1;
      *(v16 + 22) = 2048;
      sub_25214200C();
      *(v16 + 24) = v21;
      *(v16 + 32) = 2048;
      sub_25214200C();
      *(v16 + 34) = v21;
      _os_log_impl(&dword_25207E000, v14, v15, "[%{public}s] val %f mean %f, count %f", v16, 0x2Au);
      __swift_destroy_boxed_opaque_existential_0(v17);
      MEMORY[0x253099FD0](v17, -1, -1);
      MEMORY[0x253099FD0](v16, -1, -1);
    }
  }
}

uint64_t sub_2520AD014()
{

  return swift_deallocClassInstance();
}

uint64_t sub_2520AD088()
{
  v9[0] = sub_252141FEC();
  v1 = *(v9[0] - 8);
  MEMORY[0x28223BE20](v9[0]);
  v3 = v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_252141FCC();
  MEMORY[0x28223BE20](v4);
  v5 = sub_252141A8C();
  MEMORY[0x28223BE20](v5 - 8);
  *(v0 + 16) = 0u;
  *(v0 + 32) = 0u;
  v6 = sub_252141D3C();
  *(v6 + 16) = 8;
  *(v6 + 32) = 0u;
  *(v6 + 48) = 0u;
  *(v6 + 64) = 0u;
  *(v6 + 80) = 0u;
  *(v0 + 48) = v6;
  v7 = sub_252141D3C();
  *(v7 + 16) = 8;
  *(v7 + 32) = 0u;
  *(v7 + 48) = 0u;
  *(v7 + 64) = 0u;
  *(v7 + 80) = 0u;
  *(v0 + 56) = v7;
  sub_25209D56C();
  *(v0 + 64) = 0;
  *(v0 + 72) = 0;
  sub_252141A6C();
  v9[1] = MEMORY[0x277D84F90];
  sub_2520AD508();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CD970, &qword_252143B50);
  sub_2520AD560();
  sub_25214218C();
  (*(v1 + 104))(v3, *MEMORY[0x277D85260], v9[0]);
  *(v0 + 80) = sub_25214202C();
  return v0;
}

uint64_t sub_2520AD2F8(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = (result + 32);
  v4 = (a2 + 32);
  while (v2)
  {
    v5 = *v3++;
    v6 = v5;
    v7 = *v4++;
    result = v6 == v7;
    if (v6 != v7 || v2-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2520AD354(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = (result + 32);
  v4 = (a2 + 32);
  while (v2)
  {
    v6 = *v3++;
    v5 = v6;
    v7 = *v4++;
    result = v5 == v7;
    if (v5 != v7 || v2-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

BOOL sub_2520AD3B0(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16) != *(a2 + 16) || *(a1 + 24) != *(a2 + 24))
  {
    return 0;
  }

  if (*(a1 + 32) != *(a2 + 32) || *(a1 + 40) != *(a2 + 40))
  {
    return 0;
  }

  v5 = *(a2 + 56);
  v7 = *(a1 + 56);
  return (sub_2520AD2F8(*(a1 + 48), *(a2 + 48)) & 1) != 0 && (sub_2520AD2F8(v7, v5) & 1) != 0 && *(a1 + 64) == *(a2 + 64) && *(a1 + 72) == *(a2 + 72);
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

double sub_2520AD4A4()
{
  result = *(v0 + 24);
  *(*(v0 + 16) + 64) = result;
  return result;
}

double sub_2520AD4B4()
{
  result = *(v0 + 24);
  *(*(v0 + 16) + 72) = result;
  return result;
}

double sub_2520AD4C4@<D0>(double *a1@<X8>)
{
  result = *(v1 + 64);
  *a1 = result;
  return result;
}

double sub_2520AD4D0()
{
  result = *(v0 + 24);
  *(*(v0 + 16) + 16) = result;
  return result;
}

double sub_2520AD4E0()
{
  result = *(v0 + 24);
  *(*(v0 + 16) + 24) = result;
  return result;
}

double sub_2520AD4F0@<D0>(double *a1@<X8>)
{
  result = *(v1 + 16);
  *a1 = result;
  return result;
}

double sub_2520AD4FC@<D0>(double *a1@<X8>)
{
  result = *(v1 + 24);
  *a1 = result;
  return result;
}

unint64_t sub_2520AD508()
{
  result = qword_27F4CE0E0;
  if (!qword_27F4CE0E0)
  {
    sub_252141FCC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4CE0E0);
  }

  return result;
}

unint64_t sub_2520AD560()
{
  result = qword_27F4CE0F0;
  if (!qword_27F4CE0F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4CD970, &qword_252143B50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4CE0F0);
  }

  return result;
}

void sub_2520AD5C4(char **a1, double a2)
{
  if (a2 < 20.0)
  {
    v3 = *a1;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      if (*(v3 + 2))
      {
LABEL_4:
        v4 = (v3 + 32);
LABEL_17:
        *v4 = *v4 + 1.0;
        *a1 = v3;
        return;
      }
    }

    else
    {
      v3 = sub_2520A598C(v3);
      if (*(v3 + 2))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
    goto LABEL_36;
  }

  if (a2 < 25.0)
  {
    v3 = *a1;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_12:
      if (*(v3 + 2) >= 2uLL)
      {
        v4 = (v3 + 40);
        goto LABEL_17;
      }

      __break(1u);
      goto LABEL_38;
    }

LABEL_36:
    v3 = sub_2520A598C(v3);
    goto LABEL_12;
  }

  if (a2 < 30.0)
  {
    v3 = *a1;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_15:
      if (*(v3 + 2) >= 3uLL)
      {
        v4 = (v3 + 48);
        goto LABEL_17;
      }

      __break(1u);
      goto LABEL_40;
    }

LABEL_38:
    v3 = sub_2520A598C(v3);
    goto LABEL_15;
  }

  if (a2 < 33.0)
  {
    v3 = *a1;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_9:
      if (*(v3 + 2) >= 4uLL)
      {
        v4 = (v3 + 56);
        goto LABEL_17;
      }

      __break(1u);
      goto LABEL_42;
    }

LABEL_40:
    v3 = sub_2520A598C(v3);
    goto LABEL_9;
  }

  if (a2 < 35.0)
  {
    v3 = *a1;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_20:
      if (*(v3 + 2) >= 5uLL)
      {
        v4 = (v3 + 64);
        goto LABEL_17;
      }

      __break(1u);
      goto LABEL_44;
    }

LABEL_42:
    v3 = sub_2520A598C(v3);
    goto LABEL_20;
  }

  if (a2 < 40.0)
  {
    v3 = *a1;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_24:
      if (*(v3 + 2) >= 6uLL)
      {
        v4 = (v3 + 72);
        goto LABEL_17;
      }

      __break(1u);
LABEL_46:
      v3 = sub_2520A598C(v3);
      goto LABEL_32;
    }

LABEL_44:
    v3 = sub_2520A598C(v3);
    goto LABEL_24;
  }

  v3 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (a2 >= 40.0 && a2 < 45.0)
  {
    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_29;
    }

    goto LABEL_48;
  }

  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_46;
  }

LABEL_32:
  if (*(v3 + 2) >= 8uLL)
  {
    v4 = (v3 + 88);
    goto LABEL_17;
  }

  __break(1u);
LABEL_48:
  v3 = sub_2520A598C(v3);
LABEL_29:
  if (*(v3 + 2) >= 7uLL)
  {
    v4 = (v3 + 80);
    goto LABEL_17;
  }

  __break(1u);
}

uint64_t sub_2520AD878()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2520AD8B0@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 48);
  v3 = *(v1 + 56);
  *a1 = *(v1 + 32);
  *(a1 + 16) = v2;
  *(a1 + 24) = v3;
}

double sub_2520AD8E8@<D0>(double *a1@<X8>)
{
  result = *(v1 + 72);
  *a1 = result;
  return result;
}

uint64_t objectdestroyTm()
{

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_2520ADAD8(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (!v1)
  {
    return v2;
  }

  v27 = MEMORY[0x277D84F90];
  sub_25209B354(0, v1, 0);
  v2 = v27;
  v4 = a1 + 56;
  result = sub_25214219C();
  v6 = result;
  v7 = 0;
  v21 = v1;
  while ((v6 & 0x8000000000000000) == 0 && v6 < 1 << *(a1 + 32))
  {
    v9 = v6 >> 6;
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) == 0)
    {
      goto LABEL_21;
    }

    v22 = *(a1 + 36);
    sub_2520CB768(*(a1 + 48) + 40 * v6, v24);
    v10 = v26;
    v23 = v25;

    result = sub_2520CB7D8(v24);
    v27 = v2;
    v12 = *(v2 + 16);
    v11 = *(v2 + 24);
    if (v12 >= v11 >> 1)
    {
      result = sub_25209B354((v11 > 1), v12 + 1, 1);
      v2 = v27;
    }

    *(v2 + 16) = v12 + 1;
    v13 = v2 + 16 * v12;
    *(v13 + 32) = v23;
    *(v13 + 40) = v10;
    v8 = 1 << *(a1 + 32);
    if (v6 >= v8)
    {
      goto LABEL_22;
    }

    v4 = a1 + 56;
    v14 = *(a1 + 56 + 8 * v9);
    if ((v14 & (1 << v6)) == 0)
    {
      goto LABEL_23;
    }

    if (v22 != *(a1 + 36))
    {
      goto LABEL_24;
    }

    v15 = v14 & (-2 << (v6 & 0x3F));
    if (v15)
    {
      v8 = __clz(__rbit64(v15)) | v6 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v16 = v9 << 6;
      v17 = v9 + 1;
      v18 = (a1 + 64 + 8 * v9);
      while (v17 < (v8 + 63) >> 6)
      {
        v20 = *v18++;
        v19 = v20;
        v16 += 64;
        ++v17;
        if (v20)
        {
          result = sub_2520A1FF4(v6, v22, 0);
          v8 = __clz(__rbit64(v19)) + v16;
          goto LABEL_4;
        }
      }

      result = sub_2520A1FF4(v6, v22, 0);
    }

LABEL_4:
    ++v7;
    v6 = v8;
    if (v7 == v21)
    {
      return v2;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

uint64_t sub_2520ADD14(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  v5 = *(a2 + 16);
  if (v5 >= v4)
  {
    v6 = *(a1 + 16);
  }

  else
  {
    v6 = *(a2 + 16);
  }

  v27 = MEMORY[0x277D84F90];
  sub_2520A3448(0, v6, 0);
  result = v27;
  v26 = v4;
  v24 = a1;
  v25 = a2;
  if (v6)
  {
    v8 = (a1 + 32);
    v9 = (a2 + 32);
    v10 = v6;
    v11 = v5;
    v12 = v5;
    while (v4)
    {
      if (!v11)
      {
        goto LABEL_23;
      }

      v13 = *v8;
      v14 = *v9;
      v28 = result;
      v16 = *(result + 16);
      v15 = *(result + 24);
      if (v16 >= v15 >> 1)
      {
        v23 = v12;
        sub_2520A3448(v15 > 1, v16 + 1, 1);
        v12 = v23;
        result = v28;
      }

      --v11;
      *(result + 16) = v16 + 1;
      *(result + 8 * v16 + 32) = v13 + v14;
      --v4;
      ++v9;
      ++v8;
      if (!--v10)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v12 = v5;
LABEL_13:
  if (v26 > v12)
  {
    while (v6 < v26)
    {
      v17 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        goto LABEL_25;
      }

      if (v12 != v6)
      {
        if (v6 >= v12)
        {
          goto LABEL_26;
        }

        v18 = *(v24 + 32 + 8 * v6);
        v19 = *(v25 + 32 + 8 * v6);
        v29 = result;
        v21 = *(result + 16);
        v20 = *(result + 24);
        if (v21 >= v20 >> 1)
        {
          v22 = v12;
          sub_2520A3448(v20 > 1, v21 + 1, 1);
          v12 = v22;
          result = v29;
        }

        *(result + 16) = v21 + 1;
        *(result + 8 * v21 + 32) = v18 + v19;
        ++v6;
        if (v17 != v26)
        {
          continue;
        }
      }

      return result;
    }

LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
  }

  return result;
}

void sub_2520ADEF0(uint64_t a1, void (*a2)(uint64_t, uint64_t))
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    a2(Strong, *(a1 + 8));

    swift_unknownObjectRelease();
  }

  else
  {
    if (qword_27F4CD708 != -1)
    {
      swift_once();
    }

    v5 = sub_25214198C();
    __swift_project_value_buffer(v5, qword_27F4CDE68);
    oslog = sub_25214196C();
    v6 = sub_252141FAC();
    if (os_log_type_enabled(oslog, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v10 = v8;
      *v7 = 136446210;
      *(v7 + 4) = sub_2520A5448(0xD000000000000021, 0x8000000252144390, &v10);
      _os_log_impl(&dword_25207E000, oslog, v6, "[%{public}s] missing observer!", v7, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v8);
      MEMORY[0x253099FD0](v8, -1, -1);
      MEMORY[0x253099FD0](v7, -1, -1);
    }
  }
}

uint64_t sub_2520AE084()
{
  sub_25214255C();
  sub_252141BEC();
  return sub_25214258C();
}

uint64_t sub_2520AE0D0()
{
  sub_25214255C();
  sub_252141BEC();
  return sub_25214258C();
}

uint64_t sub_2520AE110(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 24) == *(a2 + 24) && *(a1 + 32) == *(a2 + 32))
  {
    return 1;
  }

  else
  {
    return sub_25214247C();
  }
}

uint64_t sub_2520AE140(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = (result + 32);
  v4 = (a2 + 32);
  while (v2)
  {
    v5 = *v4++;
    v6 = v5;
    v7 = *v3++;
    result = v7 == v6;
    if (v7 != v6 || v2-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2520AE19C(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 16);
  v5 = swift_allocObject();
  *(v5 + 16) = v2;
  *(v5 + 24) = a1;
  v6 = swift_allocObject();
  *(v6 + 16) = sub_2520CC00C;
  *(v6 + 24) = v5;
  v9[4] = sub_2520ADA58;
  v9[5] = v6;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 1107296256;
  v9[2] = sub_252083924;
  v9[3] = &block_descriptor_237;
  v7 = _Block_copy(v9);

  dispatch_sync(v4, v7);
  _Block_release(v7);
  LOBYTE(v4) = swift_isEscapingClosureAtFileLocation();

  if (v4)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2520AE2F4(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  if (*(a2 + 16) <= 0x14uLL)
  {
  }

  else
  {
    sub_252098E44(a2, a2 + 32, 0, 0x29uLL);
    v2 = v4;
  }

  *(a1 + 24) = v2;
}

uint64_t sub_2520AE360(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 16);
  v5 = swift_allocObject();
  *(v5 + 16) = v2;
  *(v5 + 24) = a1;
  v6 = swift_allocObject();
  *(v6 + 16) = sub_2520CBFA0;
  *(v6 + 24) = v5;
  v9[4] = sub_2520ADA58;
  v9[5] = v6;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 1107296256;
  v9[2] = sub_252083924;
  v9[3] = &block_descriptor_197;
  v7 = _Block_copy(v9);

  dispatch_sync(v4, v7);
  _Block_release(v7);
  LOBYTE(v4) = swift_isEscapingClosureAtFileLocation();

  if (v4)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2520AE4B8(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  if (*(a2 + 16) <= 0x32uLL)
  {
  }

  else
  {
    sub_2520990C4(a2, a2 + 32, 0, 0x65uLL);
    v2 = v4;
  }

  *(a1 + 32) = v2;
}

uint64_t sub_2520AE524(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 16);
  v5 = swift_allocObject();
  *(v5 + 16) = v2;
  *(v5 + 24) = a1;
  v6 = swift_allocObject();
  *(v6 + 16) = sub_2520CBF94;
  *(v6 + 24) = v5;
  v9[4] = sub_2520ADA58;
  v9[5] = v6;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 1107296256;
  v9[2] = sub_252083924;
  v9[3] = &block_descriptor_187;
  v7 = _Block_copy(v9);

  dispatch_sync(v4, v7);
  _Block_release(v7);
  LOBYTE(v4) = swift_isEscapingClosureAtFileLocation();

  if (v4)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2520AE67C(double a1)
{
  v3 = *(v1 + 16);
  v4 = swift_allocObject();
  *(v4 + 16) = v1;
  *(v4 + 24) = a1;
  v5 = swift_allocObject();
  *(v5 + 16) = sub_2520CBFA8;
  *(v5 + 24) = v4;
  v8[4] = sub_2520ADA58;
  v8[5] = v5;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 1107296256;
  v8[2] = sub_252083924;
  v8[3] = &block_descriptor_207;
  v6 = _Block_copy(v8);

  dispatch_sync(v3, v6);
  _Block_release(v6);
  LOBYTE(v3) = swift_isEscapingClosureAtFileLocation();

  if (v3)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2520AE7E0(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 16);
  v5 = swift_allocObject();
  *(v5 + 16) = v2;
  *(v5 + 24) = a1;
  v6 = swift_allocObject();
  *(v6 + 16) = sub_2520CBF68;
  *(v6 + 24) = v5;
  v9[4] = sub_2520ADA58;
  v9[5] = v6;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 1107296256;
  v9[2] = sub_252083924;
  v9[3] = &block_descriptor_137_0;
  v7 = _Block_copy(v9);

  dispatch_sync(v4, v7);
  _Block_release(v7);
  LOBYTE(v4) = swift_isEscapingClosureAtFileLocation();

  if (v4)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2520AE938(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  if (*(a2 + 16) <= 0x32uLL)
  {
  }

  else
  {
    sub_2520990C4(a2, a2 + 32, 0, 0x65uLL);
    v2 = v4;
  }

  *(a1 + 56) = v2;
}

uint64_t sub_2520AE9A4(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 16);
  v5 = swift_allocObject();
  *(v5 + 16) = v2;
  *(v5 + 24) = a1;
  v6 = swift_allocObject();
  *(v6 + 16) = sub_2520CBF58;
  *(v6 + 24) = v5;
  v9[4] = sub_2520ADA58;
  v9[5] = v6;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 1107296256;
  v9[2] = sub_252083924;
  v9[3] = &block_descriptor_127;
  v7 = _Block_copy(v9);

  dispatch_sync(v4, v7);
  _Block_release(v7);
  LOBYTE(v4) = swift_isEscapingClosureAtFileLocation();

  if (v4)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2520AEAFC(double a1)
{
  v3 = *(v1 + 16);
  v4 = swift_allocObject();
  *(v4 + 16) = v1;
  *(v4 + 24) = a1;
  v5 = swift_allocObject();
  *(v5 + 16) = sub_2520AD4B4;
  *(v5 + 24) = v4;
  v8[4] = sub_2520ADA58;
  v8[5] = v5;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 1107296256;
  v8[2] = sub_252083924;
  v8[3] = &block_descriptor_147_0;
  v6 = _Block_copy(v8);

  dispatch_sync(v3, v6);
  _Block_release(v6);
  LOBYTE(v3) = swift_isEscapingClosureAtFileLocation();

  if (v3)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2520AEC60(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 16);
  v5 = swift_allocObject();
  *(v5 + 16) = v2;
  *(v5 + 24) = a1;
  v6 = swift_allocObject();
  *(v6 + 16) = sub_2520CBF7C;
  *(v6 + 24) = v5;
  v9[4] = sub_2520ADA58;
  v9[5] = v6;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 1107296256;
  v9[2] = sub_252083924;
  v9[3] = &block_descriptor_167;
  v7 = _Block_copy(v9);

  dispatch_sync(v4, v7);
  _Block_release(v7);
  LOBYTE(v4) = swift_isEscapingClosureAtFileLocation();

  if (v4)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2520AEDB8(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  if (*(a2 + 16) <= 0x32uLL)
  {
  }

  else
  {
    sub_2520990C4(a2, a2 + 32, 0, 0x65uLL);
    v2 = v4;
  }

  *(a1 + 80) = v2;
}

uint64_t sub_2520AEE24(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 16);
  v5 = swift_allocObject();
  *(v5 + 16) = v2;
  *(v5 + 24) = a1;
  v6 = swift_allocObject();
  *(v6 + 16) = sub_2520CBF70;
  *(v6 + 24) = v5;
  v9[4] = sub_2520ADA58;
  v9[5] = v6;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 1107296256;
  v9[2] = sub_252083924;
  v9[3] = &block_descriptor_157;
  v7 = _Block_copy(v9);

  dispatch_sync(v4, v7);
  _Block_release(v7);
  LOBYTE(v4) = swift_isEscapingClosureAtFileLocation();

  if (v4)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2520AEF7C(double a1)
{
  v3 = *(v1 + 16);
  v4 = swift_allocObject();
  *(v4 + 16) = v1;
  *(v4 + 24) = a1;
  v5 = swift_allocObject();
  *(v5 + 16) = sub_2520CBF84;
  *(v5 + 24) = v4;
  v8[4] = sub_2520ADA58;
  v8[5] = v5;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 1107296256;
  v8[2] = sub_252083924;
  v8[3] = &block_descriptor_177;
  v6 = _Block_copy(v8);

  dispatch_sync(v3, v6);
  _Block_release(v6);
  LOBYTE(v3) = swift_isEscapingClosureAtFileLocation();

  if (v3)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2520AF0E0(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 16);
  v5 = swift_allocObject();
  *(v5 + 16) = v2;
  *(v5 + 24) = a1;
  v6 = swift_allocObject();
  *(v6 + 16) = sub_2520CBEF8;
  *(v6 + 24) = v5;
  v9[4] = sub_2520ADA58;
  v9[5] = v6;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 1107296256;
  v9[2] = sub_252083924;
  v9[3] = &block_descriptor_107;
  v7 = _Block_copy(v9);

  dispatch_sync(v4, v7);
  _Block_release(v7);
  LOBYTE(v4) = swift_isEscapingClosureAtFileLocation();

  if (v4)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2520AF238(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  if (*(a2 + 16) <= 0x32uLL)
  {
  }

  else
  {
    sub_2520990C4(a2, a2 + 32, 0, 0x65uLL);
    v2 = v4;
  }

  *(a1 + 104) = v2;
}

uint64_t sub_2520AF2A4(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 16);
  v5 = swift_allocObject();
  *(v5 + 16) = v2;
  *(v5 + 24) = a1;
  v6 = swift_allocObject();
  *(v6 + 16) = sub_2520CBEEC;
  *(v6 + 24) = v5;
  v9[4] = sub_2520ADA58;
  v9[5] = v6;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 1107296256;
  v9[2] = sub_252083924;
  v9[3] = &block_descriptor_97;
  v7 = _Block_copy(v9);

  dispatch_sync(v4, v7);
  _Block_release(v7);
  LOBYTE(v4) = swift_isEscapingClosureAtFileLocation();

  if (v4)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2520AF3FC(double a1)
{
  v3 = *(v1 + 16);
  v4 = swift_allocObject();
  *(v4 + 16) = v1;
  *(v4 + 24) = a1;
  v5 = swift_allocObject();
  *(v5 + 16) = sub_2520CBF48;
  *(v5 + 24) = v4;
  v8[4] = sub_2520ADA58;
  v8[5] = v5;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 1107296256;
  v8[2] = sub_252083924;
  v8[3] = &block_descriptor_117;
  v6 = _Block_copy(v8);

  dispatch_sync(v3, v6);
  _Block_release(v6);
  LOBYTE(v3) = swift_isEscapingClosureAtFileLocation();

  if (v3)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2520AF560(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 16);
  v5 = swift_allocObject();
  *(v5 + 16) = v2;
  *(v5 + 24) = a1;
  v6 = swift_allocObject();
  *(v6 + 16) = sub_2520CBEE0;
  *(v6 + 24) = v5;
  v9[4] = sub_2520ADA58;
  v9[5] = v6;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 1107296256;
  v9[2] = sub_252083924;
  v9[3] = &block_descriptor_87;
  v7 = _Block_copy(v9);

  dispatch_sync(v4, v7);
  _Block_release(v7);
  LOBYTE(v4) = swift_isEscapingClosureAtFileLocation();

  if (v4)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2520AF6B8(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 16);
  v5 = swift_allocObject();
  *(v5 + 16) = v2;
  *(v5 + 24) = a1;
  v6 = swift_allocObject();
  *(v6 + 16) = sub_2520CC004;
  *(v6 + 24) = v5;
  v9[4] = sub_2520ADA58;
  v9[5] = v6;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 1107296256;
  v9[2] = sub_252083924;
  v9[3] = &block_descriptor_227;
  v7 = _Block_copy(v9);

  dispatch_sync(v4, v7);
  _Block_release(v7);
  LOBYTE(v4) = swift_isEscapingClosureAtFileLocation();

  if (v4)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2520AF810(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  if (*(a2 + 16) <= 0x14uLL)
  {
  }

  else
  {
    sub_252098E44(a2, a2 + 32, 0, 0x29uLL);
    v2 = v4;
  }

  *(a1 + 136) = v2;
}

uint64_t sub_2520AF87C()
{

  return v0;
}

uint64_t sub_2520AF8CC()
{
  sub_2520AF87C();

  return swift_deallocClassInstance();
}

uint64_t sub_2520AF944(uint64_t a1)
{
  v3 = *&v1[OBJC_IVAR____TtC11HearingTest13HTNoiseOutput_queue];
  v4 = swift_allocObject();
  *(v4 + 16) = v1;
  *(v4 + 24) = a1;
  v5 = swift_allocObject();
  *(v5 + 16) = sub_2520CBEB4;
  *(v5 + 24) = v4;
  v10[4] = sub_2520AD484;
  v10[5] = v5;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 1107296256;
  v10[2] = sub_252083924;
  v10[3] = &block_descriptor_2;
  v6 = _Block_copy(v10);
  v7 = v1;

  dispatch_sync(v3, v6);
  _Block_release(v6);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2520AFAC4(uint64_t a1)
{
  v3 = *&v1[OBJC_IVAR____TtC11HearingTest13HTNoiseOutput_queue];
  v4 = swift_allocObject();
  *(v4 + 16) = v1;
  *(v4 + 24) = a1;
  v5 = swift_allocObject();
  *(v5 + 16) = sub_2520CC030;
  *(v5 + 24) = v4;
  v10[4] = sub_2520ADA58;
  v10[5] = v5;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 1107296256;
  v10[2] = sub_252083924;
  v10[3] = &block_descriptor_247_0;
  v6 = _Block_copy(v10);
  v7 = v1;

  dispatch_sync(v3, v6);
  _Block_release(v6);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2520AFC1C(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  if (*(a2 + 16) <= 0x10uLL)
  {
  }

  else
  {
    sub_252098E44(a2, a2 + 32, 0, 0x21uLL);
    v2 = v4;
  }

  *(a1 + OBJC_IVAR____TtC11HearingTest13HTNoiseOutput__drumOctBandSm) = v2;
}

uint64_t sub_2520AFCA4(uint64_t a1)
{
  v3 = *&v1[OBJC_IVAR____TtC11HearingTest13HTNoiseOutput_queue];
  v4 = swift_allocObject();
  *(v4 + 16) = v1;
  *(v4 + 24) = a1;
  v5 = swift_allocObject();
  *(v5 + 16) = sub_2520CBFF0;
  *(v5 + 24) = v4;
  v10[4] = sub_2520ADA58;
  v10[5] = v5;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 1107296256;
  v10[2] = sub_252083924;
  v10[3] = &block_descriptor_217;
  v6 = _Block_copy(v10);
  v7 = v1;

  dispatch_sync(v3, v6);
  _Block_release(v6);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return result;
}

char *sub_2520AFDFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v34 = a3;
  v35 = a2;
  v41 = a1;
  ObjectType = swift_getObjectType();
  v39 = sub_252141FEC();
  v4 = *(v39 - 8);
  MEMORY[0x28223BE20](v39);
  v6 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_252141FCC();
  MEMORY[0x28223BE20](v7);
  v8 = sub_252141A8C();
  MEMORY[0x28223BE20](v8 - 8);
  v38 = OBJC_IVAR____TtC11HearingTest13HTNoiseOutput_queue;
  v9 = sub_25209D56C();
  v36 = "MaxInputReportSize";
  v37 = v9;
  sub_252141A6C();
  aBlock = MEMORY[0x277D84F90];
  sub_2520A2ED4(&qword_27F4CE0E0, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CD970, &qword_252143B50);
  sub_2520A2F1C(&qword_27F4CE0F0, &qword_27F4CD970, &qword_252143B50, MEMORY[0x277D83970]);
  sub_25214218C();
  (*(v4 + 104))(v6, *MEMORY[0x277D85260], v39);
  *&v3[v38] = sub_25214202C();
  *&v3[OBJC_IVAR____TtC11HearingTest13HTNoiseOutput__noiseResult] = 0;
  v10 = OBJC_IVAR____TtC11HearingTest13HTNoiseOutput__drumOctBandSm;
  v11 = sub_252141D3C();
  *(v11 + 16) = 16;
  *(v11 + 32) = 0u;
  *(v11 + 48) = 0u;
  *(v11 + 64) = 0u;
  *(v11 + 80) = 0u;
  *(v11 + 96) = 0u;
  *(v11 + 112) = 0u;
  *(v11 + 128) = 0u;
  *(v11 + 144) = 0u;
  *&v3[v10] = v11;
  *&v3[OBJC_IVAR____TtC11HearingTest13HTNoiseOutput__toneInterferenceFlag] = 0;
  v48.receiver = v3;
  v48.super_class = ObjectType;
  v12 = objc_msgSendSuper2(&v48, sel_init);
  v13 = OBJC_IVAR____TtC11HearingTest13HTNoiseOutput_queue;
  v14 = *&v12[OBJC_IVAR____TtC11HearingTest13HTNoiseOutput_queue];
  v15 = swift_allocObject();
  v16 = v41;
  *(v15 + 16) = v12;
  *(v15 + 24) = v16;
  v17 = swift_allocObject();
  *(v17 + 16) = sub_2520CC594;
  *(v17 + 24) = v15;
  v46 = sub_2520ADA58;
  v47 = v17;
  aBlock = MEMORY[0x277D85DD0];
  v43 = 1107296256;
  v44 = sub_252083924;
  v45 = &block_descriptor_467;
  v18 = _Block_copy(&aBlock);
  v19 = v12;

  dispatch_sync(v14, v18);
  _Block_release(v18);
  LOBYTE(v14) = swift_isEscapingClosureAtFileLocation();

  if (v14)
  {
    __break(1u);
    goto LABEL_6;
  }

  v21 = *&v12[v13];
  v22 = swift_allocObject();
  v23 = v35;
  *(v22 + 16) = v19;
  *(v22 + 24) = v23;
  v24 = swift_allocObject();
  *(v24 + 16) = sub_2520CC680;
  *(v24 + 24) = v22;
  v46 = sub_2520ADA58;
  v47 = v24;
  aBlock = MEMORY[0x277D85DD0];
  v43 = 1107296256;
  v44 = sub_252083924;
  v45 = &block_descriptor_478_0;
  v25 = _Block_copy(&aBlock);
  v26 = v19;

  dispatch_sync(v21, v25);
  _Block_release(v25);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v28 = *&v12[v13];
  v29 = swift_allocObject();
  v30 = v34;
  *(v29 + 16) = v26;
  *(v29 + 24) = v30;
  v31 = swift_allocObject();
  *(v31 + 16) = sub_2520CC598;
  *(v31 + 24) = v29;
  v46 = sub_2520ADA58;
  v47 = v31;
  aBlock = MEMORY[0x277D85DD0];
  v43 = 1107296256;
  v44 = sub_252083924;
  v45 = &block_descriptor_489;
  v32 = _Block_copy(&aBlock);
  v33 = v26;

  dispatch_sync(v28, v32);
  _Block_release(v32);
  LOBYTE(v28) = swift_isEscapingClosureAtFileLocation();

  if ((v28 & 1) == 0)
  {
    return v33;
  }

LABEL_7:
  __break(1u);
  return result;
}

id sub_2520B0484()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_2520B052C()
{
  sub_25214222C();
  MEMORY[0x253098DA0](0x53646E614274636FLL, 0xED0000203A63546DLL);
  sub_252141E8C();
  MEMORY[0x253098DA0](8236, 0xE200000000000000);
  strcpy(v9, "HTNoiseTuning<");
  MEMORY[0x253098DA0](0, 0xE000000000000000);

  sub_25214222C();
  MEMORY[0x253098DA0](0xD000000000000012, 0x80000002521497A0);
  sub_252141E8C();
  MEMORY[0x253098DA0](44, 0xE100000000000000);

  MEMORY[0x253098DA0](0, 0xE000000000000000);

  sub_25214222C();

  v0 = sub_25214244C();
  MEMORY[0x253098DA0](v0);

  MEMORY[0x253098DA0](8236, 0xE200000000000000);

  MEMORY[0x253098DA0](0xD00000000000001BLL, 0x80000002521497C0);

  sub_25214222C();

  v1 = sub_25214244C();
  MEMORY[0x253098DA0](v1);

  MEMORY[0x253098DA0](8236, 0xE200000000000000);

  MEMORY[0x253098DA0](0xD000000000000024, 0x80000002521497E0);

  sub_25214222C();
  MEMORY[0x253098DA0](0xD000000000000023, 0x8000000252149810);
  sub_252141E8C();
  MEMORY[0x253098DA0](8236, 0xE200000000000000);

  MEMORY[0x253098DA0](0, 0xE000000000000000);

  sub_25214222C();
  MEMORY[0x253098DA0](0xD000000000000025, 0x8000000252149840);
  sub_252141E8C();
  MEMORY[0x253098DA0](8236, 0xE200000000000000);

  MEMORY[0x253098DA0](0, 0xE000000000000000);

  sub_25214222C();
  MEMORY[0x253098DA0](0xD00000000000001DLL, 0x8000000252149870);
  sub_252141E8C();
  MEMORY[0x253098DA0](8236, 0xE200000000000000);

  MEMORY[0x253098DA0](0, 0xE000000000000000);

  sub_25214222C();
  MEMORY[0x253098DA0]();
  sub_252141E8C();
  MEMORY[0x253098DA0](8236, 0xE200000000000000);

  MEMORY[0x253098DA0](0, 0xE000000000000000);

  sub_25214222C();
  MEMORY[0x253098DA0](0xD000000000000019, 0x80000002521498B0);
  sub_252141E8C();
  MEMORY[0x253098DA0](8236, 0xE200000000000000);

  MEMORY[0x253098DA0](0, 0xE000000000000000);

  sub_25214222C();

  v2 = sub_25214244C();
  MEMORY[0x253098DA0](v2);

  MEMORY[0x253098DA0](8236, 0xE200000000000000);

  MEMORY[0x253098DA0](0xD000000000000019, 0x80000002521498D0);

  sub_25214222C();
  MEMORY[0x253098DA0](0xD000000000000025, 0x80000002521498F0);
  sub_252141E8C();
  MEMORY[0x253098DA0](8236, 0xE200000000000000);

  MEMORY[0x253098DA0](0, 0xE000000000000000);

  sub_25214222C();
  MEMORY[0x253098DA0](0xD000000000000025, 0x8000000252149920);
  sub_252141E8C();
  MEMORY[0x253098DA0](8236, 0xE200000000000000);

  MEMORY[0x253098DA0](0, 0xE000000000000000);

  sub_25214222C();

  v3 = sub_25214244C();
  MEMORY[0x253098DA0](v3);

  MEMORY[0x253098DA0](8236, 0xE200000000000000);

  MEMORY[0x253098DA0](0xD000000000000016, 0x8000000252149950);

  sub_25214222C();
  MEMORY[0x253098DA0]();
  sub_252141E8C();
  MEMORY[0x253098DA0](8236, 0xE200000000000000);

  MEMORY[0x253098DA0](0, 0xE000000000000000);

  sub_25214222C();
  MEMORY[0x253098DA0](0xD000000000000016, 0x8000000252149990);
  sub_252141E8C();
  MEMORY[0x253098DA0](8236, 0xE200000000000000);

  MEMORY[0x253098DA0](0, 0xE000000000000000);

  sub_25214222C();
  MEMORY[0x253098DA0](0xD000000000000022, 0x80000002521499B0);
  sub_252141E8C();
  MEMORY[0x253098DA0](8236, 0xE200000000000000);

  MEMORY[0x253098DA0](0, 0xE000000000000000);

  sub_25214222C();
  MEMORY[0x253098DA0](0xD000000000000022, 0x80000002521499E0);
  sub_252141E8C();
  MEMORY[0x253098DA0](8236, 0xE200000000000000);

  MEMORY[0x253098DA0](0, 0xE000000000000000);

  sub_25214222C();
  MEMORY[0x253098DA0](0x53646E614274636FLL, 0xEC000000203A576DLL);
  sub_252141E8C();
  MEMORY[0x253098DA0](8236, 0xE200000000000000);

  MEMORY[0x253098DA0](0, 0xE000000000000000);

  sub_25214222C();

  v4 = sub_25214244C();
  MEMORY[0x253098DA0](v4);

  MEMORY[0x253098DA0](8236, 0xE200000000000000);

  MEMORY[0x253098DA0](0xD000000000000018, 0x8000000252149A10);

  sub_25214222C();
  MEMORY[0x253098DA0](0xD00000000000001FLL, 0x8000000252149A30);
  sub_252141E8C();
  MEMORY[0x253098DA0](8236, 0xE200000000000000);

  MEMORY[0x253098DA0](0, 0xE000000000000000);

  sub_25214222C();

  v5 = sub_25214244C();
  MEMORY[0x253098DA0](v5);

  MEMORY[0x253098DA0](8236, 0xE200000000000000);

  MEMORY[0x253098DA0](0xD000000000000019, 0x8000000252149A50);

  sub_25214222C();

  v6 = sub_25214244C();
  MEMORY[0x253098DA0](v6);

  MEMORY[0x253098DA0](8236, 0xE200000000000000);

  MEMORY[0x253098DA0](0xD000000000000022, 0x8000000252149A70);

  sub_25214222C();
  MEMORY[0x253098DA0](0xD000000000000021, 0x8000000252149AA0);
  sub_252141E8C();
  MEMORY[0x253098DA0](8236, 0xE200000000000000);

  MEMORY[0x253098DA0](0, 0xE000000000000000);

  sub_25214222C();
  MEMORY[0x253098DA0](0xD000000000000023, 0x8000000252149AD0);
  sub_252141E8C();
  MEMORY[0x253098DA0](8236, 0xE200000000000000);

  MEMORY[0x253098DA0](0, 0xE000000000000000);

  sub_25214222C();
  MEMORY[0x253098DA0](0xD00000000000001BLL, 0x8000000252149B00);
  sub_252141E8C();
  MEMORY[0x253098DA0](8236, 0xE200000000000000);

  MEMORY[0x253098DA0](0, 0xE000000000000000);

  sub_25214222C();

  v7 = sub_25214244C();
  MEMORY[0x253098DA0](v7);

  MEMORY[0x253098DA0](8236, 0xE200000000000000);

  MEMORY[0x253098DA0](0xD000000000000014, 0x8000000252149B20);

  sub_25214222C();
  MEMORY[0x253098DA0](0xD000000000000019, 0x8000000252149B40);
  sub_252141E8C();
  MEMORY[0x253098DA0](8236, 0xE200000000000000);

  MEMORY[0x253098DA0](0, 0xE000000000000000);

  sub_25214222C();
  MEMORY[0x253098DA0](0xD000000000000015, 0x8000000252149B60);
  sub_252141E8C();
  MEMORY[0x253098DA0](62, 0xE100000000000000);

  MEMORY[0x253098DA0](0, 0xE000000000000000);

  return v9[0];
}

char *sub_2520B16A4(__int128 *a1)
{
  v565 = a1;
  ObjectType = swift_getObjectType();
  v2 = sub_252141FEC();
  v570 = *(v2 - 8);
  v571 = v2;
  MEMORY[0x28223BE20](v2);
  v569 = &v561 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v567 = sub_252141FCC();
  MEMORY[0x28223BE20](v567);
  v568 = &v561 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_252141A8C();
  MEMORY[0x28223BE20](v5 - 8);
  v566 = &v561 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2520F25A8(&v1[OBJC_IVAR____TtC11HearingTest15HTNoiseAnalyzer_metrics]);
  v1[OBJC_IVAR____TtC11HearingTest15HTNoiseAnalyzer_hidActivated] = 0;
  v1[OBJC_IVAR____TtC11HearingTest15HTNoiseAnalyzer_currentCheck1A] = 0;
  v1[OBJC_IVAR____TtC11HearingTest15HTNoiseAnalyzer_currentCheck1B] = 0;
  v1[OBJC_IVAR____TtC11HearingTest15HTNoiseAnalyzer_currentCheck2A] = 0;
  v572 = v1;
  v1[OBJC_IVAR____TtC11HearingTest15HTNoiseAnalyzer_currentCheck2B] = 0;
  v677 = MEMORY[0x277D84F90];
  v7 = 4;
  sub_25209B334(0, 4, 0);
  v8 = &unk_28644C818;
  v9 = v677;
  v582 = xmmword_252144200;
  v581 = xmmword_252144210;
  v580 = xmmword_252144220;
  v578 = xmmword_252144230;
  v579 = xmmword_252144240;
  v576 = xmmword_252144250;
  v577 = xmmword_252144260;
  v575 = xmmword_252144270;
  do
  {
    v11 = *(v8 - 1);
    v10 = *v8;
    v677 = v9;
    v13 = *(v9 + 16);
    v12 = *(v9 + 24);

    if (v13 >= v12 >> 1)
    {
      sub_25209B334((v12 > 1), v13 + 1, 1);
      v9 = v677;
    }

    *(v9 + 16) = v13 + 1;
    v14 = v9 + 248 * v13;
    *(v14 + 32) = v11;
    *(v14 + 40) = v10;
    v15 = v581;
    *(v14 + 48) = v582;
    *(v14 + 64) = &unk_28644C548;
    *(v14 + 72) = v15;
    *(v14 + 88) = v580;
    v16 = v579;
    *(v14 + 104) = v578;
    *(v14 + 120) = 0x4037000000000000;
    *(v14 + 128) = 50;
    *(v14 + 136) = v16;
    *(v14 + 152) = 50;
    *(v14 + 160) = v576;
    *(v14 + 176) = v16;
    *(v14 + 192) = 0x3FA999999999999ALL;
    *(v14 + 200) = 30;
    *(v14 + 208) = 0x400C000000000000;
    *(v14 + 216) = v577;
    *(v14 + 232) = v575;
    *(v14 + 248) = 0x3FE0000000000000;
    *(v14 + 256) = 2;
    v8 += 2;
    *(v14 + 264) = 0;
    *(v14 + 272) = 0;
    --v7;
  }

  while (v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CDCB8, &unk_252144500);
  *&v600 = sub_25214235C();

  v18 = 0;
  sub_2520CAB3C(v17, 1, &v600);

  v19 = OBJC_IVAR____TtC11HearingTest15HTNoiseAnalyzer_tuningDict;
  v20 = v572;
  *&v572[OBJC_IVAR____TtC11HearingTest15HTNoiseAnalyzer_tuningDict] = v600;
  v21 = &v20[OBJC_IVAR____TtC11HearingTest15HTNoiseAnalyzer_currentTuningProductID];
  *v21 = 0x6E776F6E6B6E75;
  *(v21 + 1) = 0xE700000000000000;
  *&v20[OBJC_IVAR____TtC11HearingTest15HTNoiseAnalyzer_kHIDPrimaryUsagePage] = 65280;
  *&v20[OBJC_IVAR____TtC11HearingTest15HTNoiseAnalyzer_kHIDPrimaryUsage] = 96;
  *&v20[OBJC_IVAR____TtC11HearingTest15HTNoiseAnalyzer_hidManager] = 0;
  *&v20[OBJC_IVAR____TtC11HearingTest15HTNoiseAnalyzer_hidEnvNoiseData] = xmmword_252144280;
  v20[OBJC_IVAR____TtC11HearingTest15HTNoiseAnalyzer_hidListening] = 0;
  v22 = OBJC_IVAR____TtC11HearingTest15HTNoiseAnalyzer_hidLock;
  *&v20[v22] = [objc_allocWithZone(MEMORY[0x277CCAAF8]) init];
  v564 = OBJC_IVAR____TtC11HearingTest15HTNoiseAnalyzer_queue;
  *&v20[OBJC_IVAR____TtC11HearingTest15HTNoiseAnalyzer_queue] = 0;
  v23 = OBJC_IVAR____TtC11HearingTest15HTNoiseAnalyzer_accessoryManager;
  *&v20[OBJC_IVAR____TtC11HearingTest15HTNoiseAnalyzer_accessoryManager] = 0;
  v24 = &v20[OBJC_IVAR____TtC11HearingTest15HTNoiseAnalyzer_response];
  *v24 = 0;
  *(v24 + 1) = 0;
  *(v24 + 1) = xmmword_252143B10;
  *(v24 + 32) = 0;
  v25 = OBJC_IVAR____TtC11HearingTest15HTNoiseAnalyzer_responseLock;
  *&v20[v25] = [objc_allocWithZone(MEMORY[0x277CCAAF8]) init];
  v26 = OBJC_IVAR____TtC11HearingTest15HTNoiseAnalyzer_noiseMetaData;
  *&v20[OBJC_IVAR____TtC11HearingTest15HTNoiseAnalyzer_noiseMetaData] = 0;
  v20[OBJC_IVAR____TtC11HearingTest15HTNoiseAnalyzer_timerStarted] = 0;
  v20[OBJC_IVAR____TtC11HearingTest15HTNoiseAnalyzer_timerDone] = 0;
  v27 = &v20[OBJC_IVAR____TtC11HearingTest15HTNoiseAnalyzer_lastNoiseCheckStatusDescription];
  *v27 = 0;
  *(v27 + 1) = 0xE000000000000000;
  v28 = OBJC_IVAR____TtC11HearingTest15HTNoiseAnalyzer_requestLock;
  *&v20[v28] = [objc_allocWithZone(MEMORY[0x277CCAAF8]) init];
  v20[OBJC_IVAR____TtC11HearingTest15HTNoiseAnalyzer_processTerminating] = 0;
  v29 = OBJC_IVAR____TtC11HearingTest15HTNoiseAnalyzer_notificationManager;
  if (qword_27F4CD6F0 != -1)
  {
LABEL_214:
    swift_once();
  }

  v30 = qword_27F4D3420;
  *&v20[v29] = qword_27F4D3420;
  v31 = qword_27F4CD708;
  v32 = v30;
  if (v31 != -1)
  {
    swift_once();
  }

  v33 = sub_25214198C();
  v574 = __swift_project_value_buffer(v33, qword_27F4CDE68);
  v34 = sub_25214196C();
  v35 = sub_252141FBC();
  v36 = os_log_type_enabled(v34, v35);
  v563 = v18;
  if (v36)
  {
    v37 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    v562 = v23;
    v39 = v38;
    *&v600 = v38;
    *v37 = 136446210;
    v40 = sub_2521425DC();
    v42 = sub_2520A5448(v40, v41, &v600);

    *(v37 + 4) = v42;
    _os_log_impl(&dword_25207E000, v34, v35, "[%{public}s] Init noise analyzer", v37, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v39);
    v43 = v39;
    v23 = v562;
    MEMORY[0x253099FD0](v43, -1, -1);
    MEMORY[0x253099FD0](v37, -1, -1);
  }

  v44 = v565;
  if (v565)
  {
    v45 = v565;
  }

  else
  {
    v562 = sub_25209D56C();
    v565 = v26;
    sub_252141A6C();
    *&v600 = MEMORY[0x277D84F90];
    sub_2520A2ED4(&qword_27F4CE0E0, MEMORY[0x277D85230], MEMORY[0x277D85238]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CD970, &qword_252143B50);
    sub_2520A2F1C(&qword_27F4CE0F0, &qword_27F4CD970, &qword_252143B50, MEMORY[0x277D83970]);
    sub_25214218C();
    (*(v570 + 104))(v569, *MEMORY[0x277D85260], v571);
    v26 = v565;
    v45 = sub_25214202C();
  }

  v46 = *(v564 + v20);
  *(v564 + v20) = v45;
  v565 = v45;
  v564 = v44;

  if (qword_27F4CD7C0 != -1)
  {
    swift_once();
  }

  v47 = qword_27F4D3498;
  v48 = *&v20[v23];
  *&v20[v23] = qword_27F4D3498;
  v49 = v47;

  if (qword_27F4CD6F8 != -1)
  {
    swift_once();
  }

  *(v26 + v20) = qword_27F4D3428;

  *&v20[OBJC_IVAR____TtC11HearingTest15HTNoiseAnalyzer_requests] = MEMORY[0x277D84FA0];
  v50 = sub_252141D3C();
  *(v50 + 16) = 16;
  v51 = type metadata accessor for HTNoiseOutput();
  *(v50 + 32) = 0u;
  *(v50 + 48) = 0u;
  *(v50 + 64) = 0u;
  *(v50 + 80) = 0u;
  *(v50 + 96) = 0u;
  *(v50 + 112) = 0u;
  *(v50 + 128) = 0u;
  *(v50 + 144) = 0u;
  v52 = objc_allocWithZone(v51);
  *&v20[OBJC_IVAR____TtC11HearingTest15HTNoiseAnalyzer_output] = sub_2520AFDFC(3, v50, 1);
  v53 = &v20[OBJC_IVAR____TtC11HearingTest15HTNoiseAnalyzer_cachedTuning];
  v54 = v582;
  *v53 = v582;
  v55 = v54;
  *(v53 + 2) = &unk_28644C548;
  v56 = v581;
  *(v53 + 24) = v581;
  v57 = v56;
  v58 = v580;
  *(v53 + 40) = v580;
  v59 = v58;
  v60 = v578;
  *(v53 + 56) = v578;
  v61 = v60;
  *(v53 + 9) = 0x4037000000000000;
  *(v53 + 10) = 50;
  v62 = v579;
  *(v53 + 88) = v579;
  *(v53 + 13) = 50;
  v63 = v576;
  *(v53 + 7) = v576;
  *(v53 + 8) = v62;
  v64 = v62;
  *(v53 + 18) = 0x3FA999999999999ALL;
  *(v53 + 19) = 30;
  *(v53 + 20) = 0x400C000000000000;
  v65 = v577;
  *(v53 + 168) = v577;
  v66 = v65;
  v67 = v575;
  *(v53 + 184) = v575;
  *(v53 + 25) = 0x3FE0000000000000;
  *(v53 + 26) = 2;
  *(v53 + 27) = 0;
  *(v53 + 28) = 0;
  v735 = v55;
  v737 = v57;
  v738 = v59;
  v739 = v61;
  v736 = &unk_28644CC00;
  v740 = 0x4037000000000000;
  v742 = v64;
  v741 = 50;
  v743 = 50;
  v744 = v63;
  v745 = v64;
  v746 = 0x3FA999999999999ALL;
  v747 = 30;
  v749 = v66;
  v750 = v67;
  v748 = 0x400C000000000000;
  v751 = 0x3FE0000000000000;
  v754 = 0;
  v752 = 2;
  v753 = 0;
  v617 = v55;
  v619 = v57;
  v620 = v59;
  v621 = v61;
  v618 = &unk_28644CC00;
  v622 = 0x4037000000000000;
  v624 = v64;
  v623 = 50;
  v625 = 50;
  v626 = v63;
  v627 = v64;
  v628 = 0x3FA999999999999ALL;
  v629 = 30;
  v631 = v66;
  v632 = v67;
  v630 = 0x400C000000000000;
  v633 = 0x3FE0000000000000;
  v636 = 0;
  v634 = 2;
  v635 = 0;
  sub_2520A8DDC(&v735, &v600);
  sub_2520CB568(&v617);
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v600 = *&v20[v19];
  *&v20[v19] = 0x8000000000000000;
  sub_2520A89CC(&v735, 943273570, 0xE400000000000000, isUniquelyReferenced_nonNull_native, v69);
  *&v20[v19] = v600;
  v715 = v582;
  v717 = v581;
  v718 = v580;
  v719 = v578;
  v716 = &unk_28644CEA8;
  v720 = 0x4037000000000000;
  v722 = v579;
  v721 = 50;
  v723 = 50;
  v724 = v576;
  v725 = v579;
  v726 = 0x3FA999999999999ALL;
  v727 = 30;
  v729 = v577;
  v730 = v575;
  v728 = 0x400C000000000000;
  v731 = 0x3FE0000000000000;
  v734 = 0;
  v732 = 2;
  v733 = 0;
  v637 = v582;
  v639 = v581;
  v640 = v580;
  v641 = v578;
  v638 = &unk_28644CEA8;
  v642 = 0x4037000000000000;
  v644 = v579;
  v643 = 50;
  v645 = 50;
  v646 = v576;
  v647 = v579;
  v648 = 0x3FA999999999999ALL;
  v649 = 30;
  v651 = v577;
  v652 = v575;
  v650 = 0x400C000000000000;
  v653 = 0x3FE0000000000000;
  v656 = 0;
  v654 = 2;
  v655 = 0;
  sub_2520A8DDC(&v715, &v600);
  sub_2520CB568(&v637);
  v70 = swift_isUniquelyReferenced_nonNull_native();
  *&v600 = *&v20[v19];
  *&v20[v19] = 0x8000000000000000;
  sub_2520A89CC(&v715, 0x6338393662, 0xE500000000000000, v70, v71);
  *&v20[v19] = v600;
  v695 = v582;
  v697 = v581;
  v698 = v580;
  v699 = v578;
  v696 = &unk_28644D150;
  v700 = 0x4037000000000000;
  v702 = v579;
  v701 = 50;
  v703 = 50;
  v704 = v576;
  v705 = v579;
  v706 = 0x3FA999999999999ALL;
  v707 = 30;
  v709 = v577;
  v710 = v575;
  v708 = 0x400C000000000000;
  v711 = 0x3FE0000000000000;
  v714 = 0;
  v712 = 2;
  v713 = 0;
  v657 = v582;
  v659 = v581;
  v660 = v580;
  v661 = v578;
  v658 = &unk_28644D150;
  v662 = 0x4037000000000000;
  v664 = v579;
  v663 = 50;
  v665 = 50;
  v666 = v576;
  v667 = v579;
  v668 = 0x3FA999999999999ALL;
  v669 = 30;
  v671 = v577;
  v672 = v575;
  v670 = 0x400C000000000000;
  v673 = 0x3FE0000000000000;
  v676 = 0;
  v674 = 2;
  v675 = 0;
  sub_2520A8DDC(&v695, &v600);
  sub_2520CB568(&v657);
  v72 = swift_isUniquelyReferenced_nonNull_native();
  *&v600 = *&v20[v19];
  *&v20[v19] = 0x8000000000000000;
  sub_2520A89CC(&v695, 943208290, 0xE400000000000000, v72, v73);
  *&v20[v19] = v600;
  swift_endAccess();
  *&v582 = sub_2520F1EEC(*(v53 + 3), 0.0);
  *&v581 = sub_2520F1F9C(1uLL, *(v53 + 10));
  *&v580 = sub_2520F1F9C(1uLL, *(v53 + 10));
  *&v579 = sub_2520F1F9C(1uLL, *(v53 + 13));
  *&v578 = sub_2520F1F9C(1uLL, *(v53 + 13));
  v74 = sub_252141D3C();
  *(v74 + 16) = 20;
  type metadata accessor for HTNoiseBuffer();
  *(v74 + 32) = 0u;
  *(v74 + 48) = 0u;
  *(v74 + 64) = 0u;
  *(v74 + 80) = 0u;
  *(v74 + 96) = 0u;
  *(v74 + 112) = 0u;
  *(v74 + 128) = 0u;
  *(v74 + 144) = 0u;
  *(v74 + 160) = 0u;
  *(v74 + 176) = 0u;
  *&v577 = v74;
  v75 = swift_allocObject();
  sub_25209D56C();
  sub_252141A6C();
  *&v600 = MEMORY[0x277D84F90];
  sub_2520A2ED4(&qword_27F4CE0E0, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CD970, &qword_252143B50);
  sub_2520A2F1C(&qword_27F4CE0F0, &qword_27F4CD970, &qword_252143B50, MEMORY[0x277D83970]);
  sub_25214218C();
  (*(v570 + 104))(v569, *MEMORY[0x277D85260], v571);
  v75[2] = sub_25214202C();
  v76 = sub_252141D3C();
  *(v76 + 16) = 20;
  *(v76 + 32) = 0u;
  *(v76 + 48) = 0u;
  *(v76 + 64) = 0u;
  *(v76 + 80) = 0u;
  *(v76 + 96) = 0u;
  *(v76 + 112) = 0u;
  *(v76 + 128) = 0u;
  *(v76 + 144) = 0u;
  *(v76 + 160) = 0u;
  *(v76 + 176) = 0u;
  v75[3] = v76;
  v77 = sub_252141D3C();
  *(v77 + 16) = 50;
  *(v77 + 32) = 0u;
  *(v77 + 48) = 0u;
  *(v77 + 64) = 0u;
  *(v77 + 80) = 0u;
  *(v77 + 96) = 0u;
  *(v77 + 112) = 0u;
  *(v77 + 128) = 0u;
  *(v77 + 144) = 0u;
  *(v77 + 160) = 0u;
  *(v77 + 176) = 0u;
  *(v77 + 192) = 0u;
  *(v77 + 208) = 0u;
  *(v77 + 224) = 0u;
  *(v77 + 240) = 0u;
  *(v77 + 256) = 0u;
  *(v77 + 272) = 0u;
  *(v77 + 288) = 0u;
  *(v77 + 304) = 0u;
  *(v77 + 320) = 0u;
  *(v77 + 336) = 0u;
  *(v77 + 352) = 0u;
  *(v77 + 368) = 0u;
  *(v77 + 384) = 0u;
  *(v77 + 400) = 0u;
  *(v77 + 416) = 0u;
  v75[4] = v77;
  v75[5] = 0;
  v75[6] = 0x3FD999999999999ALL;
  v78 = sub_252141D3C();
  *(v78 + 16) = 50;
  *(v78 + 32) = 0u;
  *(v78 + 48) = 0u;
  *(v78 + 64) = 0u;
  *(v78 + 80) = 0u;
  *(v78 + 96) = 0u;
  *(v78 + 112) = 0u;
  *(v78 + 128) = 0u;
  *(v78 + 144) = 0u;
  *(v78 + 160) = 0u;
  *(v78 + 176) = 0u;
  *(v78 + 192) = 0u;
  *(v78 + 208) = 0u;
  *(v78 + 224) = 0u;
  *(v78 + 240) = 0u;
  *(v78 + 256) = 0u;
  *(v78 + 272) = 0u;
  *(v78 + 288) = 0u;
  *(v78 + 304) = 0u;
  *(v78 + 320) = 0u;
  *(v78 + 336) = 0u;
  *(v78 + 352) = 0u;
  *(v78 + 368) = 0u;
  *(v78 + 384) = 0u;
  *(v78 + 400) = 0u;
  *(v78 + 416) = 0u;
  v75[7] = v78;
  v75[8] = 0;
  v75[9] = 0x3FD999999999999ALL;
  v79 = sub_252141D3C();
  *(v79 + 16) = 50;
  *(v79 + 32) = 0u;
  *(v79 + 48) = 0u;
  *(v79 + 64) = 0u;
  *(v79 + 80) = 0u;
  *(v79 + 96) = 0u;
  *(v79 + 112) = 0u;
  *(v79 + 128) = 0u;
  *(v79 + 144) = 0u;
  *(v79 + 160) = 0u;
  *(v79 + 176) = 0u;
  *(v79 + 192) = 0u;
  *(v79 + 208) = 0u;
  *(v79 + 224) = 0u;
  *(v79 + 240) = 0u;
  *(v79 + 256) = 0u;
  *(v79 + 272) = 0u;
  *(v79 + 288) = 0u;
  *(v79 + 304) = 0u;
  *(v79 + 320) = 0u;
  *(v79 + 336) = 0u;
  *(v79 + 352) = 0u;
  *(v79 + 368) = 0u;
  *(v79 + 384) = 0u;
  *(v79 + 400) = 0u;
  *(v79 + 416) = 0u;
  v75[10] = v79;
  v75[11] = 0;
  v75[12] = 0x3FD3333333333333;
  v80 = sub_252141D3C();
  *(v80 + 16) = 50;
  *(v80 + 32) = 0u;
  *(v80 + 48) = 0u;
  *(v80 + 64) = 0u;
  *(v80 + 80) = 0u;
  *(v80 + 96) = 0u;
  *(v80 + 112) = 0u;
  *(v80 + 128) = 0u;
  *(v80 + 144) = 0u;
  *(v80 + 160) = 0u;
  *(v80 + 176) = 0u;
  *(v80 + 192) = 0u;
  *(v80 + 208) = 0u;
  *(v80 + 224) = 0u;
  *(v80 + 240) = 0u;
  *(v80 + 256) = 0u;
  *(v80 + 272) = 0u;
  *(v80 + 288) = 0u;
  *(v80 + 304) = 0u;
  *(v80 + 320) = 0u;
  *(v80 + 336) = 0u;
  *(v80 + 352) = 0u;
  *(v80 + 368) = 0u;
  *(v80 + 384) = 0u;
  *(v80 + 400) = 0u;
  *(v80 + 416) = 0u;
  v75[13] = v80;
  v75[14] = 0;
  v75[15] = 0x3FD3333333333333;
  v75[16] = 0;
  v81 = sub_252141D3C();
  *(v81 + 16) = 20;
  *(v81 + 32) = 0u;
  *(v81 + 48) = 0u;
  *(v81 + 64) = 0u;
  *(v81 + 80) = 0u;
  *(v81 + 96) = 0u;
  *(v81 + 112) = 0u;
  *(v81 + 128) = 0u;
  *(v81 + 144) = 0u;
  *(v81 + 160) = 0u;
  *(v81 + 176) = 0u;
  v75[17] = v81;
  v82 = v75[2];
  v83 = swift_allocObject();
  v84 = v582;
  *(v83 + 16) = v75;
  *(v83 + 24) = v84;
  v85 = swift_allocObject();
  *(v85 + 16) = sub_2520CC668;
  *(v85 + 24) = v83;
  *&v602 = sub_2520ADA58;
  *(&v602 + 1) = v85;
  *&v600 = MEMORY[0x277D85DD0];
  *(&v600 + 1) = 1107296256;
  *&v601 = sub_252083924;
  *(&v601 + 1) = &block_descriptor_263;
  v86 = _Block_copy(&v600);

  dispatch_sync(v82, v86);
  _Block_release(v86);
  LOBYTE(v86) = swift_isEscapingClosureAtFileLocation();

  if (v86)
  {
    __break(1u);
    goto LABEL_216;
  }

  v87 = v75[2];
  v88 = swift_allocObject();
  v89 = v581;
  *(v88 + 16) = v75;
  *(v88 + 24) = v89;
  v90 = swift_allocObject();
  *(v90 + 16) = sub_2520CC66C;
  *(v90 + 24) = v88;
  *&v602 = sub_2520ADA58;
  *(&v602 + 1) = v90;
  *&v600 = MEMORY[0x277D85DD0];
  *(&v600 + 1) = 1107296256;
  *&v601 = sub_252083924;
  *(&v601 + 1) = &block_descriptor_274;
  v91 = _Block_copy(&v600);

  dispatch_sync(v87, v91);
  _Block_release(v91);
  LOBYTE(v87) = swift_isEscapingClosureAtFileLocation();

  if (v87)
  {
LABEL_216:
    __break(1u);
    goto LABEL_217;
  }

  v92 = v75[2];
  v93 = swift_allocObject();
  *(v93 + 16) = v75;
  *(v93 + 24) = 0;
  v94 = swift_allocObject();
  *(v94 + 16) = sub_2520CC510;
  *(v94 + 24) = v93;
  *&v602 = sub_2520ADA58;
  *(&v602 + 1) = v94;
  *&v600 = MEMORY[0x277D85DD0];
  *(&v600 + 1) = 1107296256;
  *&v601 = sub_252083924;
  *(&v601 + 1) = &block_descriptor_285;
  v95 = _Block_copy(&v600);

  dispatch_sync(v92, v95);
  _Block_release(v95);
  LOBYTE(v92) = swift_isEscapingClosureAtFileLocation();

  if (v92)
  {
LABEL_217:
    __break(1u);
    goto LABEL_218;
  }

  v96 = v75[2];
  v97 = swift_allocObject();
  *(v97 + 16) = v75;
  *(v97 + 24) = 0x3FF0000000000000;
  v98 = swift_allocObject();
  *(v98 + 16) = sub_2520CC514;
  *(v98 + 24) = v97;
  *&v602 = sub_2520ADA58;
  *(&v602 + 1) = v98;
  *&v600 = MEMORY[0x277D85DD0];
  *(&v600 + 1) = 1107296256;
  *&v601 = sub_252083924;
  *(&v601 + 1) = &block_descriptor_296;
  v99 = _Block_copy(&v600);

  dispatch_sync(v96, v99);
  _Block_release(v99);
  LOBYTE(v96) = swift_isEscapingClosureAtFileLocation();

  if (v96)
  {
LABEL_218:
    __break(1u);
    goto LABEL_219;
  }

  v100 = v75[2];
  v101 = swift_allocObject();
  v102 = v580;
  *(v101 + 16) = v75;
  *(v101 + 24) = v102;
  v103 = swift_allocObject();
  *(v103 + 16) = sub_2520CC670;
  *(v103 + 24) = v101;
  *&v602 = sub_2520ADA58;
  *(&v602 + 1) = v103;
  *&v600 = MEMORY[0x277D85DD0];
  *(&v600 + 1) = 1107296256;
  *&v601 = sub_252083924;
  *(&v601 + 1) = &block_descriptor_307;
  v104 = _Block_copy(&v600);

  dispatch_sync(v100, v104);
  _Block_release(v104);
  LOBYTE(v100) = swift_isEscapingClosureAtFileLocation();

  if (v100)
  {
LABEL_219:
    __break(1u);
    goto LABEL_220;
  }

  v105 = v75[2];
  v106 = swift_allocObject();
  *(v106 + 16) = v75;
  *(v106 + 24) = 0;
  v107 = swift_allocObject();
  *(v107 + 16) = sub_2520CC518;
  *(v107 + 24) = v106;
  *&v602 = sub_2520ADA58;
  *(&v602 + 1) = v107;
  *&v600 = MEMORY[0x277D85DD0];
  *(&v600 + 1) = 1107296256;
  *&v601 = sub_252083924;
  *(&v601 + 1) = &block_descriptor_318;
  v108 = _Block_copy(&v600);

  dispatch_sync(v105, v108);
  _Block_release(v108);
  LOBYTE(v105) = swift_isEscapingClosureAtFileLocation();

  if (v105)
  {
LABEL_220:
    __break(1u);
    goto LABEL_221;
  }

  v109 = v75[2];
  v110 = swift_allocObject();
  *(v110 + 16) = v75;
  *(v110 + 24) = 0x3FF0000000000000;
  v111 = swift_allocObject();
  *(v111 + 16) = sub_2520AD9D4;
  *(v111 + 24) = v110;
  *&v602 = sub_2520ADA58;
  *(&v602 + 1) = v111;
  *&v600 = MEMORY[0x277D85DD0];
  *(&v600 + 1) = 1107296256;
  *&v601 = sub_252083924;
  *(&v601 + 1) = &block_descriptor_329;
  v112 = _Block_copy(&v600);

  dispatch_sync(v109, v112);
  _Block_release(v112);
  LOBYTE(v109) = swift_isEscapingClosureAtFileLocation();

  if (v109)
  {
LABEL_221:
    __break(1u);
    goto LABEL_222;
  }

  v113 = v75[2];
  v114 = swift_allocObject();
  v115 = v579;
  *(v114 + 16) = v75;
  *(v114 + 24) = v115;
  v116 = swift_allocObject();
  *(v116 + 16) = sub_2520CC674;
  *(v116 + 24) = v114;
  *&v602 = sub_2520ADA58;
  *(&v602 + 1) = v116;
  *&v600 = MEMORY[0x277D85DD0];
  *(&v600 + 1) = 1107296256;
  *&v601 = sub_252083924;
  *(&v601 + 1) = &block_descriptor_340;
  v117 = _Block_copy(&v600);

  dispatch_sync(v113, v117);
  _Block_release(v117);
  LOBYTE(v113) = swift_isEscapingClosureAtFileLocation();

  if (v113)
  {
LABEL_222:
    __break(1u);
    goto LABEL_223;
  }

  v118 = v75[2];
  v119 = swift_allocObject();
  *(v119 + 16) = v75;
  *(v119 + 24) = 0;
  v120 = swift_allocObject();
  *(v120 + 16) = sub_2520CC51C;
  *(v120 + 24) = v119;
  *&v602 = sub_2520ADA58;
  *(&v602 + 1) = v120;
  *&v600 = MEMORY[0x277D85DD0];
  *(&v600 + 1) = 1107296256;
  *&v601 = sub_252083924;
  *(&v601 + 1) = &block_descriptor_351;
  v121 = _Block_copy(&v600);

  dispatch_sync(v118, v121);
  _Block_release(v121);
  LOBYTE(v118) = swift_isEscapingClosureAtFileLocation();

  if (v118)
  {
LABEL_223:
    __break(1u);
    goto LABEL_224;
  }

  v122 = v75[2];
  v123 = swift_allocObject();
  *(v123 + 16) = v75;
  *(v123 + 24) = 0x3FF0000000000000;
  v124 = swift_allocObject();
  *(v124 + 16) = sub_2520CC520;
  *(v124 + 24) = v123;
  *&v602 = sub_2520ADA58;
  *(&v602 + 1) = v124;
  *&v600 = MEMORY[0x277D85DD0];
  *(&v600 + 1) = 1107296256;
  *&v601 = sub_252083924;
  *(&v601 + 1) = &block_descriptor_362;
  v125 = _Block_copy(&v600);

  dispatch_sync(v122, v125);
  _Block_release(v125);
  LOBYTE(v122) = swift_isEscapingClosureAtFileLocation();

  if (v122)
  {
LABEL_224:
    __break(1u);
    goto LABEL_225;
  }

  v126 = v75[2];
  v127 = swift_allocObject();
  v128 = v578;
  *(v127 + 16) = v75;
  *(v127 + 24) = v128;
  v129 = swift_allocObject();
  *(v129 + 16) = sub_2520CC678;
  *(v129 + 24) = v127;
  *&v602 = sub_2520ADA58;
  *(&v602 + 1) = v129;
  *&v600 = MEMORY[0x277D85DD0];
  *(&v600 + 1) = 1107296256;
  *&v601 = sub_252083924;
  *(&v601 + 1) = &block_descriptor_373;
  v130 = _Block_copy(&v600);

  dispatch_sync(v126, v130);
  _Block_release(v130);
  LOBYTE(v126) = swift_isEscapingClosureAtFileLocation();

  if (v126)
  {
LABEL_225:
    __break(1u);
    goto LABEL_226;
  }

  v131 = v75[2];
  v132 = swift_allocObject();
  *(v132 + 16) = v75;
  *(v132 + 24) = 0;
  v133 = swift_allocObject();
  *(v133 + 16) = sub_2520CC524;
  *(v133 + 24) = v132;
  *&v602 = sub_2520ADA58;
  *(&v602 + 1) = v133;
  *&v600 = MEMORY[0x277D85DD0];
  *(&v600 + 1) = 1107296256;
  *&v601 = sub_252083924;
  *(&v601 + 1) = &block_descriptor_384_0;
  v134 = _Block_copy(&v600);

  dispatch_sync(v131, v134);
  _Block_release(v134);
  LOBYTE(v131) = swift_isEscapingClosureAtFileLocation();

  if (v131)
  {
LABEL_226:
    __break(1u);
    goto LABEL_227;
  }

  v135 = v75[2];
  v136 = swift_allocObject();
  *(v136 + 16) = v75;
  *(v136 + 24) = 0x3FF0000000000000;
  v137 = swift_allocObject();
  *(v137 + 16) = sub_2520CC528;
  *(v137 + 24) = v136;
  *&v602 = sub_2520ADA58;
  *(&v602 + 1) = v137;
  *&v600 = MEMORY[0x277D85DD0];
  *(&v600 + 1) = 1107296256;
  *&v601 = sub_252083924;
  *(&v601 + 1) = &block_descriptor_395;
  v138 = _Block_copy(&v600);

  dispatch_sync(v135, v138);
  _Block_release(v138);
  LOBYTE(v135) = swift_isEscapingClosureAtFileLocation();

  if (v135)
  {
LABEL_227:
    __break(1u);
    goto LABEL_228;
  }

  v139 = v75[2];
  v140 = swift_allocObject();
  *(v140 + 16) = v75;
  *(v140 + 24) = 1;
  v141 = swift_allocObject();
  *(v141 + 16) = sub_2520CC52C;
  *(v141 + 24) = v140;
  *&v602 = sub_2520ADA58;
  *(&v602 + 1) = v141;
  *&v600 = MEMORY[0x277D85DD0];
  *(&v600 + 1) = 1107296256;
  *&v601 = sub_252083924;
  *(&v601 + 1) = &block_descriptor_406;
  v142 = _Block_copy(&v600);

  dispatch_sync(v139, v142);
  _Block_release(v142);
  LOBYTE(v139) = swift_isEscapingClosureAtFileLocation();

  if (v139)
  {
LABEL_228:
    __break(1u);
    goto LABEL_229;
  }

  v143 = v75[2];
  v144 = swift_allocObject();
  v145 = v577;
  *(v144 + 16) = v75;
  *(v144 + 24) = v145;
  v146 = swift_allocObject();
  *(v146 + 16) = sub_2520CC67C;
  *(v146 + 24) = v144;
  *&v602 = sub_2520ADA58;
  *(&v602 + 1) = v146;
  *&v600 = MEMORY[0x277D85DD0];
  *(&v600 + 1) = 1107296256;
  *&v601 = sub_252083924;
  *(&v601 + 1) = &block_descriptor_417;
  v147 = _Block_copy(&v600);

  dispatch_sync(v143, v147);
  _Block_release(v147);
  LOBYTE(v143) = swift_isEscapingClosureAtFileLocation();

  if (v143)
  {
LABEL_229:
    __break(1u);
    goto LABEL_230;
  }

  v148 = v572;
  *&v572[OBJC_IVAR____TtC11HearingTest15HTNoiseAnalyzer_buffer] = v75;
  v616 = __PAIR128__(ObjectType, v148);
  v149 = objc_msgSendSuper2(&v616, sel_init);
  v150 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v151 = v149;
  *&v582 = "tat";
  v152 = sub_252141B6C();
  v153 = [v150 initWithSuiteName_];

  if (!v153)
  {
LABEL_230:
    __break(1u);
LABEL_231:
    __break(1u);
LABEL_232:
    __break(1u);
LABEL_233:
    __break(1u);
LABEL_234:
    __break(1u);
LABEL_235:
    __break(1u);
LABEL_236:
    __break(1u);
LABEL_237:
    __break(1u);
LABEL_238:
    __break(1u);
LABEL_239:
    __break(1u);
LABEL_240:
    __break(1u);
LABEL_241:
    __break(1u);
LABEL_242:
    __break(1u);
LABEL_243:
    __break(1u);
LABEL_244:
    __break(1u);
LABEL_245:
    __break(1u);
LABEL_246:
    __break(1u);
LABEL_247:
    __break(1u);
LABEL_248:
    __break(1u);
LABEL_249:
    __break(1u);
LABEL_250:
    __break(1u);
LABEL_251:
    __break(1u);
LABEL_252:
    __break(1u);
LABEL_253:
    __break(1u);
LABEL_254:
    __break(1u);
LABEL_255:
    __break(1u);
LABEL_256:
    __break(1u);
LABEL_257:
    __break(1u);
LABEL_258:
    __break(1u);
LABEL_259:
    __break(1u);
    goto LABEL_260;
  }

  v154 = sub_252141B6C();
  v155 = [v153 objectForKey_];

  if (v155)
  {
    sub_25214215C();
    swift_unknownObjectRelease();
    sub_2520A2584(&v600, &unk_27F4CE0B0, &unk_252144AF0);
    v156 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
    v157 = sub_252141B6C();
    v158 = [v156 initWithSuiteName_];

    if (!v158)
    {
LABEL_260:
      __break(1u);
      goto LABEL_261;
    }

    v159 = sub_252141B6C();
    [v158 doubleForKey_];
    v161 = v160;

    *(v151 + OBJC_IVAR____TtC11HearingTest15HTNoiseAnalyzer_cachedTuning) = v161;
  }

  else
  {
    v600 = 0u;
    v601 = 0u;
    sub_2520A2584(&v600, &unk_27F4CE0B0, &unk_252144AF0);
  }

  v162 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v163 = sub_252141B6C();
  v164 = [v162 initWithSuiteName_];

  if (!v164)
  {
    goto LABEL_231;
  }

  v165 = sub_252141B6C();
  v166 = [v164 objectForKey_];

  if (v166)
  {
    sub_25214215C();
    swift_unknownObjectRelease();
    sub_2520A2584(&v600, &unk_27F4CE0B0, &unk_252144AF0);
    v167 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
    v168 = sub_252141B6C();
    v169 = [v167 initWithSuiteName_];

    if (!v169)
    {
LABEL_261:
      __break(1u);
      goto LABEL_262;
    }

    v170 = sub_252141B6C();
    [v169 doubleForKey_];
    v172 = v171;

    *(v151 + OBJC_IVAR____TtC11HearingTest15HTNoiseAnalyzer_cachedTuning + 8) = v172;
  }

  else
  {
    v600 = 0u;
    v601 = 0u;
    sub_2520A2584(&v600, &unk_27F4CE0B0, &unk_252144AF0);
  }

  v173 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v174 = sub_252141B6C();
  v175 = [v173 initWithSuiteName_];

  if (!v175)
  {
    goto LABEL_232;
  }

  v176 = sub_252141B6C();
  v177 = [v175 objectForKey_];

  if (v177)
  {
    sub_25214215C();
    swift_unknownObjectRelease();
    sub_2520A2584(&v600, &unk_27F4CE0B0, &unk_252144AF0);
    v178 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
    v179 = sub_252141B6C();
    v180 = [v178 initWithSuiteName_];

    if (!v180)
    {
LABEL_262:
      __break(1u);
      goto LABEL_263;
    }

    v181 = sub_252141B6C();
    v182 = [v180 integerForKey_];

    *(v151 + OBJC_IVAR____TtC11HearingTest15HTNoiseAnalyzer_cachedTuning + 24) = v182;
  }

  else
  {
    v600 = 0u;
    v601 = 0u;
    sub_2520A2584(&v600, &unk_27F4CE0B0, &unk_252144AF0);
  }

  v183 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v184 = sub_252141B6C();
  v185 = [v183 initWithSuiteName_];

  if (!v185)
  {
    goto LABEL_233;
  }

  v186 = sub_252141B6C();
  v187 = [v185 objectForKey_];

  if (v187)
  {
    sub_25214215C();
    swift_unknownObjectRelease();
    sub_2520A2584(&v600, &unk_27F4CE0B0, &unk_252144AF0);
    v188 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
    v189 = sub_252141B6C();
    v190 = [v188 initWithSuiteName_];

    if (!v190)
    {
LABEL_263:
      __break(1u);
      goto LABEL_264;
    }

    v191 = sub_252141B6C();
    v192 = [v190 integerForKey_];

    *(v151 + OBJC_IVAR____TtC11HearingTest15HTNoiseAnalyzer_cachedTuning + 32) = v192;
  }

  else
  {
    v600 = 0u;
    v601 = 0u;
    sub_2520A2584(&v600, &unk_27F4CE0B0, &unk_252144AF0);
  }

  v193 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v194 = sub_252141B6C();
  v195 = [v193 initWithSuiteName_];

  if (!v195)
  {
    goto LABEL_234;
  }

  v196 = sub_252141B6C();
  v197 = [v195 objectForKey_];

  if (v197)
  {
    sub_25214215C();
    swift_unknownObjectRelease();
    sub_2520A2584(&v600, &unk_27F4CE0B0, &unk_252144AF0);
    v198 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
    v199 = sub_252141B6C();
    v200 = [v198 initWithSuiteName_];

    if (!v200)
    {
LABEL_264:
      __break(1u);
      goto LABEL_265;
    }

    v201 = sub_252141B6C();
    [v200 doubleForKey_];
    v203 = v202;

    *(v151 + OBJC_IVAR____TtC11HearingTest15HTNoiseAnalyzer_cachedTuning + 40) = v203;
  }

  else
  {
    v600 = 0u;
    v601 = 0u;
    sub_2520A2584(&v600, &unk_27F4CE0B0, &unk_252144AF0);
  }

  v204 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v205 = sub_252141B6C();
  v206 = [v204 initWithSuiteName_];

  if (!v206)
  {
    goto LABEL_235;
  }

  v207 = sub_252141B6C();
  v208 = [v206 objectForKey_];

  if (v208)
  {
    sub_25214215C();
    swift_unknownObjectRelease();
    sub_2520A2584(&v600, &unk_27F4CE0B0, &unk_252144AF0);
    v209 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
    v210 = sub_252141B6C();
    v211 = [v209 initWithSuiteName_];

    if (!v211)
    {
LABEL_265:
      __break(1u);
      goto LABEL_266;
    }

    v212 = sub_252141B6C();
    [v211 doubleForKey_];
    v214 = v213;

    *(v151 + OBJC_IVAR____TtC11HearingTest15HTNoiseAnalyzer_cachedTuning + 48) = v214;
  }

  else
  {
    v600 = 0u;
    v601 = 0u;
    sub_2520A2584(&v600, &unk_27F4CE0B0, &unk_252144AF0);
  }

  v215 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v216 = sub_252141B6C();
  v217 = [v215 initWithSuiteName_];

  if (!v217)
  {
    goto LABEL_236;
  }

  v218 = sub_252141B6C();
  v219 = [v217 objectForKey_];

  if (v219)
  {
    sub_25214215C();
    swift_unknownObjectRelease();
    sub_2520A2584(&v600, &unk_27F4CE0B0, &unk_252144AF0);
    v220 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
    v221 = sub_252141B6C();
    v222 = [v220 initWithSuiteName_];

    if (!v222)
    {
LABEL_266:
      __break(1u);
      goto LABEL_267;
    }

    v223 = sub_252141B6C();
    [v222 doubleForKey_];
    v225 = v224;

    *(v151 + OBJC_IVAR____TtC11HearingTest15HTNoiseAnalyzer_cachedTuning + 56) = v225;
  }

  else
  {
    v600 = 0u;
    v601 = 0u;
    sub_2520A2584(&v600, &unk_27F4CE0B0, &unk_252144AF0);
  }

  v226 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v227 = sub_252141B6C();
  v228 = [v226 initWithSuiteName_];

  if (!v228)
  {
    goto LABEL_237;
  }

  v229 = sub_252141B6C();
  v230 = [v228 objectForKey_];

  if (v230)
  {
    sub_25214215C();
    swift_unknownObjectRelease();
    sub_2520A2584(&v600, &unk_27F4CE0B0, &unk_252144AF0);
    v231 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
    v232 = sub_252141B6C();
    v233 = [v231 initWithSuiteName_];

    if (!v233)
    {
LABEL_267:
      __break(1u);
      goto LABEL_268;
    }

    v234 = sub_252141B6C();
    [v233 doubleForKey_];
    v236 = v235;

    *(v151 + OBJC_IVAR____TtC11HearingTest15HTNoiseAnalyzer_cachedTuning + 64) = v236;
  }

  else
  {
    v600 = 0u;
    v601 = 0u;
    sub_2520A2584(&v600, &unk_27F4CE0B0, &unk_252144AF0);
  }

  v237 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v238 = sub_252141B6C();
  v239 = [v237 initWithSuiteName_];

  if (!v239)
  {
    goto LABEL_238;
  }

  v240 = sub_252141B6C();
  v241 = [v239 objectForKey_];

  if (v241)
  {
    sub_25214215C();
    swift_unknownObjectRelease();
    sub_2520A2584(&v600, &unk_27F4CE0B0, &unk_252144AF0);
    v242 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
    v243 = sub_252141B6C();
    v244 = [v242 initWithSuiteName_];

    if (!v244)
    {
LABEL_268:
      __break(1u);
      goto LABEL_269;
    }

    v245 = sub_252141B6C();
    [v244 doubleForKey_];
    v247 = v246;

    *(v151 + OBJC_IVAR____TtC11HearingTest15HTNoiseAnalyzer_cachedTuning + 72) = v247;
  }

  else
  {
    v600 = 0u;
    v601 = 0u;
    sub_2520A2584(&v600, &unk_27F4CE0B0, &unk_252144AF0);
  }

  v248 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v249 = sub_252141B6C();
  v250 = [v248 initWithSuiteName_];

  if (!v250)
  {
    goto LABEL_239;
  }

  v251 = sub_252141B6C();
  v252 = [v250 objectForKey_];

  if (v252)
  {
    sub_25214215C();
    swift_unknownObjectRelease();
    sub_2520A2584(&v600, &unk_27F4CE0B0, &unk_252144AF0);
    v253 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
    v254 = sub_252141B6C();
    v255 = [v253 initWithSuiteName_];

    if (!v255)
    {
LABEL_269:
      __break(1u);
      goto LABEL_270;
    }

    v256 = sub_252141B6C();
    v257 = [v255 integerForKey_];

    *(v151 + OBJC_IVAR____TtC11HearingTest15HTNoiseAnalyzer_cachedTuning + 80) = v257;
  }

  else
  {
    v600 = 0u;
    v601 = 0u;
    sub_2520A2584(&v600, &unk_27F4CE0B0, &unk_252144AF0);
  }

  v258 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v259 = sub_252141B6C();
  v260 = [v258 initWithSuiteName_];

  if (!v260)
  {
    goto LABEL_240;
  }

  v261 = sub_252141B6C();
  v262 = [v260 objectForKey_];

  if (v262)
  {
    sub_25214215C();
    swift_unknownObjectRelease();
    sub_2520A2584(&v600, &unk_27F4CE0B0, &unk_252144AF0);
    v263 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
    v264 = sub_252141B6C();
    v265 = [v263 initWithSuiteName_];

    if (!v265)
    {
LABEL_270:
      __break(1u);
      goto LABEL_271;
    }

    v266 = sub_252141B6C();
    [v265 doubleForKey_];
    v268 = v267;

    *(v151 + OBJC_IVAR____TtC11HearingTest15HTNoiseAnalyzer_cachedTuning + 88) = v268;
  }

  else
  {
    v600 = 0u;
    v601 = 0u;
    sub_2520A2584(&v600, &unk_27F4CE0B0, &unk_252144AF0);
  }

  v269 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v270 = sub_252141B6C();
  v271 = [v269 initWithSuiteName_];

  if (!v271)
  {
    goto LABEL_241;
  }

  v272 = sub_252141B6C();
  v273 = [v271 objectForKey_];

  if (v273)
  {
    sub_25214215C();
    swift_unknownObjectRelease();
    sub_2520A2584(&v600, &unk_27F4CE0B0, &unk_252144AF0);
    v274 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
    v275 = sub_252141B6C();
    v276 = [v274 initWithSuiteName_];

    if (!v276)
    {
LABEL_271:
      __break(1u);
      goto LABEL_272;
    }

    v277 = sub_252141B6C();
    [v276 doubleForKey_];
    v279 = v278;

    *(v151 + OBJC_IVAR____TtC11HearingTest15HTNoiseAnalyzer_cachedTuning + 96) = v279;
  }

  else
  {
    v600 = 0u;
    v601 = 0u;
    sub_2520A2584(&v600, &unk_27F4CE0B0, &unk_252144AF0);
  }

  v280 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v281 = sub_252141B6C();
  v282 = [v280 initWithSuiteName_];

  if (!v282)
  {
    goto LABEL_242;
  }

  v283 = sub_252141B6C();
  v284 = [v282 objectForKey_];

  if (v284)
  {
    sub_25214215C();
    swift_unknownObjectRelease();
    sub_2520A2584(&v600, &unk_27F4CE0B0, &unk_252144AF0);
    v285 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
    v286 = sub_252141B6C();
    v287 = [v285 initWithSuiteName_];

    if (!v287)
    {
LABEL_272:
      __break(1u);
      goto LABEL_273;
    }

    v288 = sub_252141B6C();
    v289 = [v287 integerForKey_];

    *(v151 + OBJC_IVAR____TtC11HearingTest15HTNoiseAnalyzer_cachedTuning + 104) = v289;
  }

  else
  {
    v600 = 0u;
    v601 = 0u;
    sub_2520A2584(&v600, &unk_27F4CE0B0, &unk_252144AF0);
  }

  v290 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v291 = sub_252141B6C();
  v292 = [v290 initWithSuiteName_];

  if (!v292)
  {
    goto LABEL_243;
  }

  v293 = sub_252141B6C();
  v294 = [v292 objectForKey_];

  if (v294)
  {
    sub_25214215C();
    swift_unknownObjectRelease();
    sub_2520A2584(&v600, &unk_27F4CE0B0, &unk_252144AF0);
    v295 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
    v296 = sub_252141B6C();
    v297 = [v295 initWithSuiteName_];

    if (!v297)
    {
LABEL_273:
      __break(1u);
      goto LABEL_274;
    }

    v298 = sub_252141B6C();
    [v297 doubleForKey_];
    v300 = v299;

    *(v151 + OBJC_IVAR____TtC11HearingTest15HTNoiseAnalyzer_cachedTuning + 112) = v300;
  }

  else
  {
    v600 = 0u;
    v601 = 0u;
    sub_2520A2584(&v600, &unk_27F4CE0B0, &unk_252144AF0);
  }

  v301 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v302 = sub_252141B6C();
  v303 = [v301 initWithSuiteName_];

  if (!v303)
  {
    goto LABEL_244;
  }

  v304 = sub_252141B6C();
  v305 = [v303 objectForKey_];

  if (v305)
  {
    sub_25214215C();
    swift_unknownObjectRelease();
    sub_2520A2584(&v600, &unk_27F4CE0B0, &unk_252144AF0);
    v306 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
    v307 = sub_252141B6C();
    v308 = [v306 initWithSuiteName_];

    if (!v308)
    {
LABEL_274:
      __break(1u);
      goto LABEL_275;
    }

    v309 = sub_252141B6C();
    [v308 doubleForKey_];
    v311 = v310;

    *(v151 + OBJC_IVAR____TtC11HearingTest15HTNoiseAnalyzer_cachedTuning + 120) = v311;
  }

  else
  {
    v600 = 0u;
    v601 = 0u;
    sub_2520A2584(&v600, &unk_27F4CE0B0, &unk_252144AF0);
  }

  v312 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v313 = sub_252141B6C();
  v314 = [v312 initWithSuiteName_];

  if (!v314)
  {
    goto LABEL_245;
  }

  v315 = sub_252141B6C();
  v316 = [v314 objectForKey_];

  if (v316)
  {
    sub_25214215C();
    swift_unknownObjectRelease();
    sub_2520A2584(&v600, &unk_27F4CE0B0, &unk_252144AF0);
    v317 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
    v318 = sub_252141B6C();
    v319 = [v317 initWithSuiteName_];

    if (!v319)
    {
LABEL_275:
      __break(1u);
      goto LABEL_276;
    }

    v320 = sub_252141B6C();
    [v319 doubleForKey_];
    v322 = v321;

    *(v151 + OBJC_IVAR____TtC11HearingTest15HTNoiseAnalyzer_cachedTuning + 128) = v322;
  }

  else
  {
    v600 = 0u;
    v601 = 0u;
    sub_2520A2584(&v600, &unk_27F4CE0B0, &unk_252144AF0);
  }

  v323 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v324 = sub_252141B6C();
  v325 = [v323 initWithSuiteName_];

  if (!v325)
  {
    goto LABEL_246;
  }

  v326 = sub_252141B6C();
  v327 = [v325 objectForKey_];

  if (v327)
  {
    sub_25214215C();
    swift_unknownObjectRelease();
    sub_2520A2584(&v600, &unk_27F4CE0B0, &unk_252144AF0);
    v328 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
    v329 = sub_252141B6C();
    v330 = [v328 initWithSuiteName_];

    if (!v330)
    {
LABEL_276:
      __break(1u);
      goto LABEL_277;
    }

    v331 = sub_252141B6C();
    [v330 doubleForKey_];
    v333 = v332;

    *(v151 + OBJC_IVAR____TtC11HearingTest15HTNoiseAnalyzer_cachedTuning + 136) = v333;
  }

  else
  {
    v600 = 0u;
    v601 = 0u;
    sub_2520A2584(&v600, &unk_27F4CE0B0, &unk_252144AF0);
  }

  v334 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v335 = sub_252141B6C();
  v336 = [v334 initWithSuiteName_];

  if (!v336)
  {
    goto LABEL_247;
  }

  v337 = sub_252141B6C();
  v338 = [v336 objectForKey_];

  if (v338)
  {
    sub_25214215C();
    swift_unknownObjectRelease();
    sub_2520A2584(&v600, &unk_27F4CE0B0, &unk_252144AF0);
    v339 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
    v340 = sub_252141B6C();
    v341 = [v339 initWithSuiteName_];

    if (!v341)
    {
LABEL_277:
      __break(1u);
      goto LABEL_278;
    }

    v342 = sub_252141B6C();
    [v341 doubleForKey_];
    v344 = v343;

    *(v151 + OBJC_IVAR____TtC11HearingTest15HTNoiseAnalyzer_cachedTuning + 144) = v344;
  }

  else
  {
    v600 = 0u;
    v601 = 0u;
    sub_2520A2584(&v600, &unk_27F4CE0B0, &unk_252144AF0);
  }

  v345 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v346 = sub_252141B6C();
  v347 = [v345 initWithSuiteName_];

  if (!v347)
  {
    goto LABEL_248;
  }

  v348 = sub_252141B6C();
  v349 = [v347 objectForKey_];

  if (v349)
  {
    sub_25214215C();
    swift_unknownObjectRelease();
    sub_2520A2584(&v600, &unk_27F4CE0B0, &unk_252144AF0);
    v350 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
    v351 = sub_252141B6C();
    v352 = [v350 initWithSuiteName_];

    if (!v352)
    {
LABEL_278:
      __break(1u);
      goto LABEL_279;
    }

    v353 = sub_252141B6C();
    v354 = [v352 integerForKey_];

    *(v151 + OBJC_IVAR____TtC11HearingTest15HTNoiseAnalyzer_cachedTuning + 152) = v354;
  }

  else
  {
    v600 = 0u;
    v601 = 0u;
    sub_2520A2584(&v600, &unk_27F4CE0B0, &unk_252144AF0);
  }

  v355 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v356 = sub_252141B6C();
  v357 = [v355 initWithSuiteName_];

  if (!v357)
  {
    goto LABEL_249;
  }

  v358 = sub_252141B6C();
  v359 = [v357 objectForKey_];

  if (v359)
  {
    sub_25214215C();
    swift_unknownObjectRelease();
    sub_2520A2584(&v600, &unk_27F4CE0B0, &unk_252144AF0);
    v360 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
    v361 = sub_252141B6C();
    v362 = [v360 initWithSuiteName_];

    if (!v362)
    {
LABEL_279:
      __break(1u);
      goto LABEL_280;
    }

    v363 = sub_252141B6C();
    [v362 doubleForKey_];
    v365 = v364;

    *(v151 + OBJC_IVAR____TtC11HearingTest15HTNoiseAnalyzer_cachedTuning + 160) = v365;
  }

  else
  {
    v600 = 0u;
    v601 = 0u;
    sub_2520A2584(&v600, &unk_27F4CE0B0, &unk_252144AF0);
  }

  v366 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v367 = sub_252141B6C();
  v368 = [v366 initWithSuiteName_];

  if (!v368)
  {
    goto LABEL_250;
  }

  v369 = sub_252141B6C();
  v370 = [v368 objectForKey_];

  if (v370)
  {
    sub_25214215C();
    swift_unknownObjectRelease();
    sub_2520A2584(&v600, &unk_27F4CE0B0, &unk_252144AF0);
    v371 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
    v372 = sub_252141B6C();
    v373 = [v371 initWithSuiteName_];

    if (!v373)
    {
LABEL_280:
      __break(1u);
      goto LABEL_281;
    }

    v374 = sub_252141B6C();
    v375 = [v373 integerForKey_];

    *(v151 + OBJC_IVAR____TtC11HearingTest15HTNoiseAnalyzer_cachedTuning + 168) = v375;
  }

  else
  {
    v600 = 0u;
    v601 = 0u;
    sub_2520A2584(&v600, &unk_27F4CE0B0, &unk_252144AF0);
  }

  v376 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v377 = sub_252141B6C();
  v378 = [v376 initWithSuiteName_];

  if (!v378)
  {
    goto LABEL_251;
  }

  v379 = sub_252141B6C();
  v380 = [v378 objectForKey_];

  if (v380)
  {
    sub_25214215C();
    swift_unknownObjectRelease();
    sub_2520A2584(&v600, &unk_27F4CE0B0, &unk_252144AF0);
    v381 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
    v382 = sub_252141B6C();
    v383 = [v381 initWithSuiteName_];

    if (!v383)
    {
LABEL_281:
      __break(1u);
      goto LABEL_282;
    }

    v384 = sub_252141B6C();
    v385 = [v383 integerForKey_];

    *(v151 + OBJC_IVAR____TtC11HearingTest15HTNoiseAnalyzer_cachedTuning + 176) = v385;
  }

  else
  {
    v600 = 0u;
    v601 = 0u;
    sub_2520A2584(&v600, &unk_27F4CE0B0, &unk_252144AF0);
  }

  v386 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v387 = sub_252141B6C();
  v388 = [v386 initWithSuiteName_];

  if (!v388)
  {
    goto LABEL_252;
  }

  v389 = sub_252141B6C();
  v390 = [v388 objectForKey_];

  if (v390)
  {
    sub_25214215C();
    swift_unknownObjectRelease();
    sub_2520A2584(&v600, &unk_27F4CE0B0, &unk_252144AF0);
    v391 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
    v392 = sub_252141B6C();
    v393 = [v391 initWithSuiteName_];

    if (!v393)
    {
LABEL_282:
      __break(1u);
      goto LABEL_283;
    }

    v394 = sub_252141B6C();
    [v393 doubleForKey_];
    v396 = v395;

    *(v151 + OBJC_IVAR____TtC11HearingTest15HTNoiseAnalyzer_cachedTuning + 184) = v396;
  }

  else
  {
    v600 = 0u;
    v601 = 0u;
    sub_2520A2584(&v600, &unk_27F4CE0B0, &unk_252144AF0);
  }

  v397 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v398 = sub_252141B6C();
  v399 = [v397 initWithSuiteName_];

  if (!v399)
  {
    goto LABEL_253;
  }

  v400 = sub_252141B6C();
  v401 = [v399 objectForKey_];

  if (v401)
  {
    sub_25214215C();
    swift_unknownObjectRelease();
    sub_2520A2584(&v600, &unk_27F4CE0B0, &unk_252144AF0);
    v402 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
    v403 = sub_252141B6C();
    v404 = [v402 initWithSuiteName_];

    if (!v404)
    {
LABEL_283:
      __break(1u);
      goto LABEL_284;
    }

    v405 = sub_252141B6C();
    [v404 doubleForKey_];
    v407 = v406;

    *(v151 + OBJC_IVAR____TtC11HearingTest15HTNoiseAnalyzer_cachedTuning + 192) = v407;
  }

  else
  {
    v600 = 0u;
    v601 = 0u;
    sub_2520A2584(&v600, &unk_27F4CE0B0, &unk_252144AF0);
  }

  v408 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v409 = sub_252141B6C();
  v410 = [v408 initWithSuiteName_];

  if (!v410)
  {
    goto LABEL_254;
  }

  v411 = sub_252141B6C();
  v412 = [v410 objectForKey_];

  if (v412)
  {
    sub_25214215C();
    swift_unknownObjectRelease();
    sub_2520A2584(&v600, &unk_27F4CE0B0, &unk_252144AF0);
    v413 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
    v414 = sub_252141B6C();
    v415 = [v413 initWithSuiteName_];

    if (!v415)
    {
LABEL_284:
      __break(1u);
      goto LABEL_285;
    }

    v416 = sub_252141B6C();
    [v415 doubleForKey_];
    v418 = v417;

    *(v151 + OBJC_IVAR____TtC11HearingTest15HTNoiseAnalyzer_cachedTuning + 200) = v418;
  }

  else
  {
    v600 = 0u;
    v601 = 0u;
    sub_2520A2584(&v600, &unk_27F4CE0B0, &unk_252144AF0);
  }

  v419 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v420 = sub_252141B6C();
  v421 = [v419 initWithSuiteName_];

  if (!v421)
  {
    goto LABEL_255;
  }

  v422 = sub_252141B6C();
  v423 = [v421 objectForKey_];

  if (v423)
  {
    sub_25214215C();
    swift_unknownObjectRelease();
    sub_2520A2584(&v600, &unk_27F4CE0B0, &unk_252144AF0);
    v424 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
    v425 = sub_252141B6C();
    v426 = [v424 initWithSuiteName_];

    if (!v426)
    {
LABEL_285:
      __break(1u);
      goto LABEL_286;
    }

    v427 = sub_252141B6C();
    v428 = [v426 integerForKey_];

    *(v151 + OBJC_IVAR____TtC11HearingTest15HTNoiseAnalyzer_cachedTuning + 208) = v428;
  }

  else
  {
    v600 = 0u;
    v601 = 0u;
    sub_2520A2584(&v600, &unk_27F4CE0B0, &unk_252144AF0);
  }

  v429 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v430 = sub_252141B6C();
  v431 = [v429 initWithSuiteName_];

  if (!v431)
  {
    goto LABEL_256;
  }

  v20 = "NTdBAInstSnrThPct";
  v432 = sub_252141B6C();
  v433 = [v431 objectForKey_];

  if (v433)
  {
    sub_25214215C();
    swift_unknownObjectRelease();
    sub_2520A2584(&v600, &unk_27F4CE0B0, &unk_252144AF0);
    v434 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
    v435 = sub_252141B6C();
    v436 = [v434 initWithSuiteName_];

    if (!v436)
    {
LABEL_286:
      __break(1u);
      goto LABEL_287;
    }

    v437 = sub_252141B6C();
    [v436 doubleForKey_];
    v439 = v438;

    *(v151 + OBJC_IVAR____TtC11HearingTest15HTNoiseAnalyzer_cachedTuning + 216) = v439;
  }

  else
  {
    v600 = 0u;
    v601 = 0u;
    sub_2520A2584(&v600, &unk_27F4CE0B0, &unk_252144AF0);
  }

  v440 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v441 = sub_252141B6C();
  v442 = [v440 initWithSuiteName_];

  if (!v442)
  {
    goto LABEL_257;
  }

  v443 = sub_252141B6C();
  v444 = [v442 objectForKey_];

  if (v444)
  {
    sub_25214215C();
    swift_unknownObjectRelease();
    sub_2520A2584(&v600, &unk_27F4CE0B0, &unk_252144AF0);
    v445 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
    v446 = sub_252141B6C();
    v447 = [v445 initWithSuiteName_];

    if (!v447)
    {
LABEL_287:
      __break(1u);
      result = swift_unexpectedError();
      __break(1u);
      return result;
    }

    v448 = sub_252141B6C();
    [v447 doubleForKey_];
    v450 = v449;

    *(v151 + OBJC_IVAR____TtC11HearingTest15HTNoiseAnalyzer_cachedTuning + 224) = v450;
  }

  else
  {
    v600 = 0u;
    v601 = 0u;
    sub_2520A2584(&v600, &unk_27F4CE0B0, &unk_252144AF0);
  }

  v451 = v151;
  v452 = sub_25214196C();
  v23 = sub_252141FBC();

  if (os_log_type_enabled(v452, v23))
  {
    v453 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    *&v678 = v20;
    *v453 = 136446466;
    v454 = sub_2521425DC();
    v456 = sub_2520A5448(v454, v455, &v678);

    *(v453 + 4) = v456;
    *(v453 + 12) = 2080;
    v458 = *(v451 + OBJC_IVAR____TtC11HearingTest15HTNoiseAnalyzer_cachedTuning + 16);
    v457 = *(v451 + OBJC_IVAR____TtC11HearingTest15HTNoiseAnalyzer_cachedTuning + 32);
    v693[0] = *(v451 + OBJC_IVAR____TtC11HearingTest15HTNoiseAnalyzer_cachedTuning);
    v693[1] = v458;
    v693[2] = v457;
    v459 = *(v451 + OBJC_IVAR____TtC11HearingTest15HTNoiseAnalyzer_cachedTuning + 80);
    v461 = *(v451 + OBJC_IVAR____TtC11HearingTest15HTNoiseAnalyzer_cachedTuning + 48);
    v460 = *(v451 + OBJC_IVAR____TtC11HearingTest15HTNoiseAnalyzer_cachedTuning + 64);
    v693[6] = *(v451 + OBJC_IVAR____TtC11HearingTest15HTNoiseAnalyzer_cachedTuning + 96);
    v693[5] = v459;
    v693[3] = v461;
    v693[4] = v460;
    v462 = *(v451 + OBJC_IVAR____TtC11HearingTest15HTNoiseAnalyzer_cachedTuning + 144);
    v464 = *(v451 + OBJC_IVAR____TtC11HearingTest15HTNoiseAnalyzer_cachedTuning + 112);
    v463 = *(v451 + OBJC_IVAR____TtC11HearingTest15HTNoiseAnalyzer_cachedTuning + 128);
    v693[10] = *(v451 + OBJC_IVAR____TtC11HearingTest15HTNoiseAnalyzer_cachedTuning + 160);
    v693[9] = v462;
    v693[7] = v464;
    v693[8] = v463;
    v466 = *(v451 + OBJC_IVAR____TtC11HearingTest15HTNoiseAnalyzer_cachedTuning + 192);
    v465 = *(v451 + OBJC_IVAR____TtC11HearingTest15HTNoiseAnalyzer_cachedTuning + 208);
    v467 = *(v451 + OBJC_IVAR____TtC11HearingTest15HTNoiseAnalyzer_cachedTuning + 176);
    v694 = *(v451 + OBJC_IVAR____TtC11HearingTest15HTNoiseAnalyzer_cachedTuning + 224);
    v693[13] = v465;
    v693[11] = v467;
    v693[12] = v466;
    sub_2520A8DDC(v693, &v600);
    v468 = sub_2520B052C();
    v470 = v469;
    sub_2520CB568(v693);
    v471 = sub_2520A5448(v468, v470, &v678);

    *(v453 + 14) = v471;
    _os_log_impl(&dword_25207E000, v452, v23, "[%{public}s] [Noise Tuning] Cached Tuning %s", v453, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x253099FD0](v20, -1, -1);
    MEMORY[0x253099FD0](v453, -1, -1);
  }

  v472 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v473 = sub_252141B6C();
  v474 = [v472 initWithSuiteName_];

  if (!v474)
  {
    goto LABEL_258;
  }

  v475 = sub_252141B6C();
  v476 = [v474 objectForKey_];

  if (v476)
  {
    sub_25214215C();
    swift_unknownObjectRelease();
  }

  else
  {
    v679 = 0u;
    v678 = 0u;
  }

  v600 = v678;
  v601 = v679;
  if (*(&v679 + 1))
  {
    v477 = swift_dynamicCast();
    if (v477)
    {
      v478 = *(&v585 + 1);
      v23 = v585;
      v600 = v585;
      MEMORY[0x28223BE20](v477);
      *(&v561 - 2) = &v600;
      v479 = v563;
      v480 = sub_2520CAA90(sub_2520CC0E0, (&v561 - 4), &unk_28644C7F0);
      v563 = v479;
      if (v480)
      {
        sub_2520B6E28(v23);

        v481 = sub_25214196C();
        v482 = sub_252141FAC();

        if (os_log_type_enabled(v481, v482))
        {
          v483 = swift_slowAlloc();
          v20 = swift_slowAlloc();
          *&v600 = v20;
          *v483 = 136446466;
          v484 = sub_2521425DC();
          v486 = sub_2520A5448(v484, v485, &v600);

          *(v483 + 4) = v486;
          *(v483 + 12) = 2080;
          v23 = sub_2520A5448(v23, v478, &v600);

          *(v483 + 14) = v23;
          v487 = "[%{public}s] [Noise Tuning] Applying tunings to given user default product ID %s.";
LABEL_188:
          _os_log_impl(&dword_25207E000, v481, v482, v487, v483, 0x16u);
          swift_arrayDestroy();
          v492 = v20;
          goto LABEL_189;
        }
      }

      else
      {

        v481 = sub_25214196C();
        v482 = sub_252141FAC();

        if (os_log_type_enabled(v481, v482))
        {
          v483 = swift_slowAlloc();
          v20 = swift_slowAlloc();
          *&v600 = v20;
          *v483 = 136446466;
          v493 = sub_2521425DC();
          v495 = sub_2520A5448(v493, v494, &v600);

          *(v483 + 4) = v495;
          *(v483 + 12) = 2080;
          v23 = sub_2520A5448(v23, v478, &v600);

          *(v483 + 14) = v23;
          v487 = "[%{public}s] [Noise Tuning] Invalid product ID: %s, cannot apply user default tunnings.";
          goto LABEL_188;
        }
      }

      goto LABEL_191;
    }
  }

  else
  {
    sub_2520A2584(&v600, &unk_27F4CE0B0, &unk_252144AF0);
  }

  sub_2520B6E28(0x6E776F6E6B6E75);
  v481 = sub_25214196C();
  v488 = sub_252141FBC();
  if (os_log_type_enabled(v481, v488))
  {
    v483 = swift_slowAlloc();
    v489 = swift_slowAlloc();
    *&v600 = v489;
    *v483 = 136446210;
    v490 = sub_2521425DC();
    v23 = v491;
    v20 = sub_2520A5448(v490, v491, &v600);

    *(v483 + 4) = v20;
    _os_log_impl(&dword_25207E000, v481, v488, "[%{public}s] [Noise Tuning] User did not specify any productID, saving user default tunings to target profile determined by the next connected device.", v483, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v489);
    v492 = v489;
LABEL_189:
    MEMORY[0x253099FD0](v492, -1, -1);
    MEMORY[0x253099FD0](v483, -1, -1);
  }

LABEL_191:

  v496 = OBJC_IVAR____TtC11HearingTest15HTNoiseAnalyzer_tuningDict;
  swift_beginAccess();
  *&v578 = v451;
  v29 = *(v451 + v496);
  v497 = 1 << *(v29 + 32);
  v498 = -1;
  if (v497 < 64)
  {
    v498 = ~(-1 << v497);
  }

  v18 = v498 & *(v29 + 64);
  v19 = (v497 + 63) >> 6;
  v26 = &v600;
  swift_bridgeObjectRetain_n();
  v499 = 0;
  if (v18)
  {
    while (1)
    {
      v500 = v499;
LABEL_199:
      v501 = __clz(__rbit64(v18));
      v18 &= v18 - 1;
      v502 = v501 | (v500 << 6);
      v503 = (*(v29 + 48) + 16 * v502);
      v23 = *v503;
      v20 = v503[1];
      v504 = *(v29 + 56) + 232 * v502;
      v506 = *(v504 + 16);
      v505 = *(v504 + 32);
      v678 = *v504;
      v679 = v506;
      v680 = v505;
      v507 = *(v504 + 80);
      v509 = *(v504 + 48);
      v508 = *(v504 + 64);
      v684 = *(v504 + 96);
      v683 = v507;
      v681 = v509;
      v682 = v508;
      v510 = *(v504 + 144);
      v512 = *(v504 + 112);
      v511 = *(v504 + 128);
      v688 = *(v504 + 160);
      v687 = v510;
      v685 = v512;
      v686 = v511;
      v514 = *(v504 + 192);
      v513 = *(v504 + 208);
      v515 = *(v504 + 176);
      v692 = *(v504 + 224);
      v691 = v513;
      v689 = v515;
      v690 = v514;
      v596 = *(v504 + 176);
      v597 = *(v504 + 192);
      v598 = *(v504 + 208);
      v599 = *(v504 + 224);
      v592 = *(v504 + 112);
      v593 = *(v504 + 128);
      v594 = *(v504 + 144);
      v595 = *(v504 + 160);
      v588 = *(v504 + 48);
      v589 = *(v504 + 64);
      v590 = *(v504 + 80);
      v591 = *(v504 + 96);
      v585 = *v504;
      v586 = *(v504 + 16);
      v587 = *(v504 + 32);
      *&v600 = v23;
      *(&v600 + 1) = v20;
      v613 = v597;
      v614 = v598;
      v615 = v599;
      v609 = v593;
      v610 = v594;
      v611 = v595;
      v612 = v596;
      v605 = v589;
      v606 = v590;
      v607 = v591;
      v608 = v592;
      v601 = v585;
      v602 = v586;
      v603 = v587;
      v604 = v588;

      sub_2520A8DDC(&v678, v584);
      sub_2520C172C(v23, v20, &v678, ObjectType);
      sub_2520A2584(&v600, &qword_27F4CDE48, &qword_252144510);
      if (!v18)
      {
        goto LABEL_195;
      }
    }
  }

  while (1)
  {
LABEL_195:
    v500 = v499 + 1;
    if (__OFADD__(v499, 1))
    {
      __break(1u);
      goto LABEL_214;
    }

    if (v500 >= v19)
    {
      break;
    }

    v18 = *(v29 + 64 + 8 * v500);
    ++v499;
    if (v18)
    {
      v499 = v500;
      goto LABEL_199;
    }
  }

  v516 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v517 = sub_252141B6C();
  v518 = [v516 initWithSuiteName_];

  if (!v518)
  {
    goto LABEL_259;
  }

  v519 = [v518 dictionaryRepresentation];

  v520 = sub_252141B1C();
  v521 = &off_28644C878;
  v522 = 57;
  v523 = &unk_27F4CE0B0;
  *&v524 = 136446722;
  v579 = v524;
  *&v580 = v520;
  do
  {
    v526 = *(v521 - 1);
    v527 = *v521;
    if (*(v520 + 16))
    {

      v528 = sub_25213E648(v526, v527);
      if (v529)
      {
        sub_2520A5FC4(*(v520 + 56) + 32 * v528, &v600);
      }

      else
      {
        v600 = 0u;
        v601 = 0u;
      }
    }

    else
    {
      v600 = 0u;
      v601 = 0u;
    }

    sub_2520A2D9C(&v600, &v585, v523, &unk_252144AF0);

    v530 = sub_25214196C();
    v531 = sub_252141FBC();

    if (os_log_type_enabled(v530, v531))
    {
      v532 = swift_slowAlloc();
      *&v582 = swift_slowAlloc();
      v583 = v582;
      *v532 = v579;
      v533 = sub_2521425DC();
      v535 = sub_2520A5448(v533, v534, &v583);
      LODWORD(v581) = v531;
      v536 = v526;
      v537 = v523;
      v538 = v535;

      *(v532 + 4) = v538;
      *(v532 + 12) = 2080;
      v539 = sub_2520A5448(v536, v527, &v583);

      *(v532 + 14) = v539;
      *(v532 + 22) = 2080;
      sub_2520A2D9C(&v585, v584, v537, &unk_252144AF0);
      __swift_instantiateConcreteTypeFromMangledNameV2(v537, &unk_252144AF0);
      v540 = sub_252141BCC();
      v542 = v541;
      sub_2520A2584(&v585, v537, &unk_252144AF0);
      v543 = sub_2520A5448(v540, v542, &v583);
      v523 = v537;

      *(v532 + 24) = v543;
      v520 = v580;
      _os_log_impl(&dword_25207E000, v530, v581, "[%{public}s] [Noise Tuning] %s %s", v532, 0x20u);
      v544 = v582;
      swift_arrayDestroy();
      MEMORY[0x253099FD0](v544, -1, -1);
      MEMORY[0x253099FD0](v532, -1, -1);

      v525 = v537;
    }

    else
    {

      sub_2520A2584(&v585, v523, &unk_252144AF0);
      v525 = v523;
    }

    sub_2520A2584(&v600, v525, &unk_252144AF0);
    v521 += 2;
    --v522;
  }

  while (v522);

  v545 = [objc_allocWithZone(MEMORY[0x277D0EEF8]) initWithOptions_];
  v546 = v578;
  v547 = *(v578 + OBJC_IVAR____TtC11HearingTest15HTNoiseAnalyzer_hidManager);
  *(v578 + OBJC_IVAR____TtC11HearingTest15HTNoiseAnalyzer_hidManager) = v545;
  v548 = v545;

  sub_25209CCFC(&unk_28644D3F8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CDE50, &unk_252144518);
  swift_arrayDestroy();
  v549 = sub_252141B0C();

  [v548 setDeviceMatching_];

  v550 = v565;
  [v548 setDispatchQueue_];
  v551 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v552 = swift_allocObject();
  v552[2] = v550;
  v552[3] = v551;
  v552[4] = ObjectType;
  *&v602 = sub_2520CC0CC;
  *(&v602 + 1) = v552;
  *&v600 = MEMORY[0x277D85DD0];
  *(&v600 + 1) = 1107296256;
  *&v601 = sub_2520C7444;
  *(&v601 + 1) = &block_descriptor_428;
  v553 = _Block_copy(&v600);
  v554 = v546;

  [v548 setDeviceNotificationHandler_];

  _Block_release(v553);
  v555 = *&v554[OBJC_IVAR____TtC11HearingTest15HTNoiseAnalyzer_notificationManager];

  v556 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v557 = &v555[OBJC_IVAR____TtC11HearingTest23HTNSNotificationManager_onNotificationWillTerminateForNoise];
  v558 = *&v555[OBJC_IVAR____TtC11HearingTest23HTNSNotificationManager_onNotificationWillTerminateForNoise];
  v559 = *&v555[OBJC_IVAR____TtC11HearingTest23HTNSNotificationManager_onNotificationWillTerminateForNoise + 8];
  *v557 = sub_2520CC0D8;
  v557[1] = v556;

  sub_2520A3730(v558, v559);

  return v554;
}

void sub_2520B6E28(uint64_t a1)
{
  MEMORY[0x28223BE20](a1);
  v3 = v2;
  v5 = v4;
  v650 = v1;
  ObjectType = swift_getObjectType();
  if (qword_27F4CD708 != -1)
  {
    swift_once();
  }

  v7 = sub_25214198C();
  __swift_project_value_buffer(v7, qword_27F4CDE68);
  v8 = swift_allocObject();
  *(v8 + 16) = ObjectType;
  v9 = swift_allocObject();
  *(v9 + 16) = v5;
  *(v9 + 24) = v3;

  v10 = sub_25214196C();
  v652 = sub_252141FAC();
  v11 = swift_allocObject();
  *(v11 + 16) = 34;
  v12 = swift_allocObject();
  *(v12 + 16) = 8;
  v13 = swift_allocObject();
  *(v13 + 16) = sub_2520CB5FC;
  *(v13 + 24) = v8;
  v14 = swift_allocObject();
  *(v14 + 16) = sub_2520CB6BC;
  *(v14 + 24) = v13;
  v15 = swift_allocObject();
  *(v15 + 16) = sub_2520CB6C4;
  *(v15 + 24) = v14;
  v16 = swift_allocObject();
  *(v16 + 16) = 32;
  v17 = swift_allocObject();
  *(v17 + 16) = 8;
  v18 = swift_allocObject();
  *(v18 + 16) = sub_2520CB63C;
  *(v18 + 24) = v9;
  v19 = swift_allocObject();
  *(v19 + 16) = sub_2520CC664;
  *(v19 + 24) = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CDE28, &qword_2521444D0);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_252144290;
  *(v20 + 32) = sub_2520CB67C;
  *(v20 + 40) = v11;
  *(v20 + 48) = sub_2520CC768;
  *(v20 + 56) = v12;
  *(v20 + 64) = sub_2520CB6CC;
  *(v20 + 72) = v15;
  *(v20 + 80) = sub_2520CC768;
  *(v20 + 88) = v16;
  *(v20 + 96) = sub_2520CC768;
  *(v20 + 104) = v17;
  *(v20 + 112) = sub_2520CC50C;
  *(v20 + 120) = v19;

  v651 = v3;
  if (os_log_type_enabled(v10, v652))
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    *v940 = v22;
    *v21 = 136446466;
    v23 = sub_2521425DC();
    sub_2520A5448(v23, v24, v940);

    sub_25214213C();
    *(v21 + 12) = 2080;
    *v939 = sub_2520A5448(v5, v3, v940);
    sub_25214213C();
    _os_log_impl(&dword_25207E000, v10, v652, "[%{public}s] overWriteTuningWithUserDefaults for %s", v21, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x253099FD0](v22, -1, -1);
    MEMORY[0x253099FD0](v21, -1, -1);
  }

  else
  {
  }

  v25 = v5;
  v26 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v27 = sub_252141B6C();
  v28 = [v26 initWithSuiteName_];

  v29 = v650;
  if (!v28)
  {
    goto LABEL_567;
  }

  v30 = sub_252141B6C();
  v31 = [v28 objectForKey_];

  if (v31)
  {
    sub_25214215C();
    swift_unknownObjectRelease();
    sub_2520A2584(v940, &unk_27F4CE0B0, &unk_252144AF0);
    v32 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
    v33 = sub_252141B6C();
    v34 = [v32 initWithSuiteName_];

    if (!v34)
    {
LABEL_595:
      __break(1u);
      goto LABEL_596;
    }

    v35 = sub_252141B6C();
    [v34 doubleForKey_];
    v37 = v36;

    v38 = OBJC_IVAR____TtC11HearingTest15HTNoiseAnalyzer_tuningDict;
    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v908 = *(v650 + v38);
    v40 = v908;
    *(v650 + v38) = 0x8000000000000000;
    v41 = sub_25213E648(v25, v3);
    v43 = v42;
    v44 = *(v40 + 16);
    v45 = (v42 & 1) == 0;
    if (__OFADD__(v44, v45))
    {
      __break(1u);
      goto LABEL_540;
    }

    v46 = v41;
    if (sub_2520CB1CC(isUniquelyReferenced_nonNull_native, v44 + v45))
    {
      v47 = sub_25213E648(v25, v3);
      if ((v43 & 1) != (v48 & 1))
      {
        goto LABEL_651;
      }

      v46 = v47;
    }

    if (v43)
    {
      memmove(v940, (*(v908 + 56) + 232 * v46), 0xE8uLL);
      nullsub_1();
    }

    else
    {
      sub_2520CB6D4(v940);
    }

    *&v917[128] = *&v940[168];
    *&v917[144] = *&v940[184];
    *&v917[160] = *&v940[200];
    *&v917[176] = *&v940[216];
    *&v917[64] = *&v940[104];
    *&v917[80] = *&v940[120];
    *&v917[96] = *&v940[136];
    *&v917[112] = *&v940[152];
    *v917 = *&v940[40];
    *&v917[16] = *&v940[56];
    *&v917[32] = *&v940[72];
    *&v917[48] = *&v940[88];
    v915 = *&v940[8];
    v916 = *&v940[24];
    *&v939[168] = *&v940[168];
    *&v939[184] = *&v940[184];
    *&v939[200] = *&v940[200];
    *&v939[216] = *&v940[216];
    *&v939[104] = *&v940[104];
    *&v939[120] = *&v940[120];
    *&v939[136] = *&v940[136];
    *&v939[152] = *&v940[152];
    *&v939[40] = *&v940[40];
    *&v939[56] = *&v940[56];
    *&v939[72] = *&v940[72];
    *&v939[88] = *&v940[88];
    *&v939[8] = *&v940[8];
    *&v939[24] = *&v940[24];
    *v939 = *v940;
    if (sub_2520CB6FC(v939) == 1)
    {
      goto LABEL_597;
    }

    *v923 = v37;
    *&v923[168] = *&v917[128];
    *&v923[184] = *&v917[144];
    *&v923[200] = *&v917[160];
    *&v923[216] = *&v917[176];
    *&v923[104] = *&v917[64];
    *&v923[120] = *&v917[80];
    *&v923[136] = *&v917[96];
    *&v923[152] = *&v917[112];
    *&v923[40] = *v917;
    *&v923[56] = *&v917[16];
    *&v923[72] = *&v917[32];
    *&v923[88] = *&v917[48];
    *&v923[8] = v915;
    *&v923[24] = v916;
    v936 = *&v923[192];
    v937 = *&v923[208];
    v938 = *&v917[184];
    v932 = *&v923[128];
    v933 = *&v923[144];
    v935 = *&v923[176];
    v934 = *&v923[160];
    v928 = *&v923[64];
    v929 = *&v923[80];
    v931 = *&v923[112];
    v930 = *&v923[96];
    v924 = *v923;
    v925 = *&v923[16];
    v927 = *&v923[48];
    v926 = *&v923[32];
    if (sub_2520CB6FC(&v924) == 1)
    {
      if (v43)
      {
        sub_2520CB714(*(v908 + 48) + 16 * v46);
        sub_2520CB018(v46, v908);
      }
    }

    else if (v43)
    {
      memmove((*(v908 + 56) + 232 * v46), v923, 0xE8uLL);
    }

    else
    {
      *&v940[192] = *&v923[192];
      *&v940[208] = *&v923[208];
      *&v940[224] = *&v923[224];
      *&v940[128] = *&v923[128];
      *&v940[144] = *&v923[144];
      *&v940[176] = *&v923[176];
      *&v940[160] = *&v923[160];
      *&v940[64] = *&v923[64];
      *&v940[80] = *&v923[80];
      *&v940[112] = *&v923[112];
      *&v940[96] = *&v923[96];
      *v940 = *v923;
      *&v940[16] = *&v923[16];
      *&v940[48] = *&v923[48];
      *&v940[32] = *&v923[32];
      sub_2520A8CE4(v46, v25, v3, v940, v908);
    }

    *v922 = v37;
    *&v922[168] = *&v917[128];
    *&v922[184] = *&v917[144];
    *&v922[200] = *&v917[160];
    *&v922[216] = *&v917[176];
    *&v922[104] = *&v917[64];
    *&v922[120] = *&v917[80];
    *&v922[136] = *&v917[96];
    *&v922[152] = *&v917[112];
    *&v922[40] = *v917;
    *&v922[56] = *&v917[16];
    *&v922[72] = *&v917[32];
    *&v922[88] = *&v917[48];
    *&v922[8] = v915;
    *&v922[24] = v916;
    sub_2520A2D9C(v923, &v918, &qword_27F4CDE30, &qword_2521444D8);
    sub_2520A2584(v922, &qword_27F4CDE30, &qword_2521444D8);
    *(v650 + v38) = v908;
    swift_endAccess();
  }

  else
  {
    memset(v940, 0, 32);
    sub_2520A2584(v940, &unk_27F4CE0B0, &unk_252144AF0);
  }

  v49 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v50 = sub_252141B6C();
  v51 = [v49 initWithSuiteName_];

  if (!v51)
  {
LABEL_568:
    __break(1u);
    goto LABEL_569;
  }

  v52 = sub_252141B6C();
  v53 = [v51 objectForKey_];

  if (!v53)
  {
    memset(v939, 0, 32);
    sub_2520A2584(v939, &unk_27F4CE0B0, &unk_252144AF0);
    v71 = 0x277CBE000;
    goto LABEL_44;
  }

  sub_25214215C();
  swift_unknownObjectRelease();
  sub_2520A2584(v939, &unk_27F4CE0B0, &unk_252144AF0);
  v54 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v55 = sub_252141B6C();
  v56 = [v54 initWithSuiteName_];

  if (!v56)
  {
LABEL_596:
    __break(1u);
LABEL_597:
    __break(1u);
    goto LABEL_598;
  }

  v57 = sub_252141B6C();
  [v56 doubleForKey_];
  v59 = v58;

  v60 = OBJC_IVAR____TtC11HearingTest15HTNoiseAnalyzer_tuningDict;
  swift_beginAccess();
  v61 = swift_isUniquelyReferenced_nonNull_native();
  *&v904 = *(v650 + v60);
  v62 = v904;
  *(v650 + v60) = 0x8000000000000000;
  v63 = sub_25213E648(v25, v3);
  v65 = v64;
  v66 = *(v62 + 16);
  v67 = (v64 & 1) == 0;
  if (__OFADD__(v66, v67))
  {
LABEL_540:
    __break(1u);
    goto LABEL_541;
  }

  v68 = v63;
  if (sub_2520CB1CC(v61, v66 + v67))
  {
    v69 = sub_25213E648(v25, v3);
    v71 = 0x277CBE000;
    if ((v65 & 1) != (v70 & 1))
    {
      goto LABEL_651;
    }

    v68 = v69;
    if ((v65 & 1) == 0)
    {
      goto LABEL_32;
    }

LABEL_35:
    memmove(v939, (*(v904 + 56) + 232 * v68), 0xE8uLL);
    nullsub_1();
    goto LABEL_36;
  }

  v71 = 0x277CBE000uLL;
  if (v65)
  {
    goto LABEL_35;
  }

LABEL_32:
  sub_2520CB6D4(v939);
LABEL_36:
  v72 = *v939;
  *&v914[128] = *&v939[176];
  *&v914[144] = *&v939[192];
  *&v914[160] = *&v939[208];
  *&v914[176] = *&v939[224];
  *&v914[64] = *&v939[112];
  *&v914[80] = *&v939[128];
  *&v914[96] = *&v939[144];
  *&v914[112] = *&v939[160];
  *v914 = *&v939[48];
  *&v914[16] = *&v939[64];
  *&v914[32] = *&v939[80];
  *&v914[48] = *&v939[96];
  v912 = *&v939[16];
  v913 = *&v939[32];
  v935 = *&v939[176];
  v936 = *&v939[192];
  v937 = *&v939[208];
  v938 = *&v939[224];
  v931 = *&v939[112];
  v932 = *&v939[128];
  v933 = *&v939[144];
  v934 = *&v939[160];
  v927 = *&v939[48];
  v928 = *&v939[64];
  v929 = *&v939[80];
  v930 = *&v939[96];
  v925 = *&v939[16];
  v926 = *&v939[32];
  v924 = *v939;
  if (sub_2520CB6FC(&v924) == 1)
  {
LABEL_599:
    __break(1u);
    goto LABEL_600;
  }

  *v922 = v72;
  *&v922[8] = v59;
  *&v922[176] = *&v914[128];
  *&v922[192] = *&v914[144];
  *&v922[208] = *&v914[160];
  *&v922[224] = *&v914[176];
  *&v922[112] = *&v914[64];
  *&v922[128] = *&v914[80];
  *&v922[144] = *&v914[96];
  *&v922[160] = *&v914[112];
  *&v922[48] = *v914;
  *&v922[64] = *&v914[16];
  *&v922[80] = *&v914[32];
  *&v922[96] = *&v914[48];
  *&v922[16] = v912;
  *&v922[32] = v913;
  *&v923[192] = *&v914[144];
  *&v923[208] = *&v914[160];
  *&v923[224] = *&v914[176];
  *&v923[128] = *&v914[80];
  *&v923[144] = *&v914[96];
  *&v923[176] = *&v914[128];
  *&v923[160] = *&v914[112];
  *&v923[64] = *&v914[16];
  *&v923[80] = *&v914[32];
  *&v923[112] = *&v914[64];
  *&v923[96] = *&v914[48];
  *v923 = *v922;
  *&v923[16] = v912;
  *&v923[48] = *v914;
  *&v923[32] = v913;
  if (sub_2520CB6FC(v923) == 1)
  {
    if (v65)
    {
      sub_2520CB714(*(v904 + 48) + 16 * v68);
      sub_2520CB018(v68, v904);
    }
  }

  else if (v65)
  {
    memmove((*(v904 + 56) + 232 * v68), v922, 0xE8uLL);
  }

  else
  {
    *&v939[192] = *&v922[192];
    *&v939[208] = *&v922[208];
    *&v939[224] = *&v922[224];
    *&v939[128] = *&v922[128];
    *&v939[144] = *&v922[144];
    *&v939[176] = *&v922[176];
    *&v939[160] = *&v922[160];
    *&v939[64] = *&v922[64];
    *&v939[80] = *&v922[80];
    *&v939[112] = *&v922[112];
    *&v939[96] = *&v922[96];
    *v939 = *v922;
    *&v939[16] = *&v922[16];
    *&v939[48] = *&v922[48];
    *&v939[32] = *&v922[32];
    sub_2520A8CE4(v68, v25, v651, v939, v904);
  }

  *&v918 = v72;
  *(&v918 + 1) = v59;
  *&v921[128] = *&v914[128];
  *&v921[144] = *&v914[144];
  *&v921[160] = *&v914[160];
  *&v921[176] = *&v914[176];
  *&v921[64] = *&v914[64];
  *&v921[80] = *&v914[80];
  *&v921[96] = *&v914[96];
  *&v921[112] = *&v914[112];
  *v921 = *v914;
  *&v921[16] = *&v914[16];
  *&v921[32] = *&v914[32];
  *&v921[48] = *&v914[48];
  v919 = v912;
  v920 = v913;
  sub_2520A2D9C(v922, &v915, &qword_27F4CDE30, &qword_2521444D8);
  sub_2520A2584(&v918, &qword_27F4CDE30, &qword_2521444D8);
  *(v650 + v60) = v904;
  swift_endAccess();

LABEL_44:
  v73 = objc_allocWithZone(*(v71 + 3024));
  v74 = sub_252141B6C();
  v75 = [v73 initWithSuiteName_];

  if (!v75)
  {
LABEL_569:
    __break(1u);
    goto LABEL_570;
  }

  v76 = sub_252141B6C();
  v77 = [v75 objectForKey_];

  v653 = v25;
  if (!v77)
  {
    v925 = 0u;
    v924 = 0u;
    sub_2520A2584(&v924, &unk_27F4CE0B0, &unk_252144AF0);
    goto LABEL_63;
  }

  sub_25214215C();
  swift_unknownObjectRelease();
  sub_2520A2584(&v924, &unk_27F4CE0B0, &unk_252144AF0);
  v78 = objc_allocWithZone(*(v71 + 3024));
  v79 = sub_252141B6C();
  v80 = [v78 initWithSuiteName_];

  if (!v80)
  {
LABEL_598:
    __break(1u);
    goto LABEL_599;
  }

  v81 = sub_252141B6C();
  v82 = [v80 integerForKey_];

  v83 = OBJC_IVAR____TtC11HearingTest15HTNoiseAnalyzer_tuningDict;
  swift_beginAccess();
  v84 = swift_isUniquelyReferenced_nonNull_native();
  *&v894 = *(v650 + v83);
  v85 = v894;
  *(v650 + v83) = 0x8000000000000000;
  v86 = sub_25213E648(v25, v651);
  v88 = v87;
  v89 = *(v85 + 16);
  v90 = (v87 & 1) == 0;
  if (__OFADD__(v89, v90))
  {
LABEL_541:
    __break(1u);
    goto LABEL_542;
  }

  v91 = v86;
  if (sub_2520CB1CC(v84, v89 + v90))
  {
    v92 = sub_25213E648(v653, v651);
    if ((v88 & 1) != (v93 & 1))
    {
      goto LABEL_651;
    }

    v91 = v92;
  }

  if (v88)
  {
    memmove(&v924, (*(v894 + 56) + 232 * v91), 0xE8uLL);
    nullsub_1();
  }

  else
  {
    sub_2520CB6D4(&v924);
  }

  v899 = v924;
  *&v900 = v925;
  *&v911[112] = v936;
  *&v911[128] = v937;
  *&v911[144] = v938;
  *&v911[48] = v932;
  *&v911[64] = v933;
  *&v911[96] = v935;
  *&v911[80] = v934;
  v910 = v928;
  *v911 = v929;
  *&v911[32] = v931;
  *&v911[16] = v930;
  v909 = v927;
  v908 = v926;
  *v923 = v924;
  *&v923[224] = v938;
  *&v923[192] = v936;
  *&v923[208] = v937;
  *&v923[128] = v932;
  *&v923[144] = v933;
  *&v923[176] = v935;
  *&v923[160] = v934;
  *&v923[64] = v928;
  *&v923[80] = v929;
  *&v923[112] = v931;
  *&v923[96] = v930;
  *&v923[48] = v927;
  *&v923[32] = v926;
  *&v923[16] = v925;
  if (sub_2520CB6FC(v923) == 1)
  {
    goto LABEL_601;
  }

  v918 = v899;
  *&v919 = v900;
  *(&v919 + 1) = v82;
  *&v921[144] = *&v911[112];
  *&v921[160] = *&v911[128];
  *&v921[176] = *&v911[144];
  *&v921[80] = *&v911[48];
  *&v921[96] = *&v911[64];
  *&v921[128] = *&v911[96];
  *&v921[112] = *&v911[80];
  *&v921[16] = v910;
  *&v921[32] = *v911;
  *&v921[64] = *&v911[32];
  *&v921[48] = *&v911[16];
  *v921 = v909;
  v920 = v908;
  *&v922[192] = *&v911[112];
  *&v922[208] = *&v911[128];
  *&v922[224] = *&v911[144];
  *&v922[128] = *&v911[48];
  *&v922[144] = *&v911[64];
  *&v922[176] = *&v911[96];
  *&v922[160] = *&v911[80];
  *&v922[64] = v910;
  *&v922[80] = *v911;
  *&v922[112] = *&v911[32];
  *&v922[96] = *&v911[16];
  *v922 = v899;
  *&v922[16] = v919;
  *&v922[48] = v909;
  *&v922[32] = v908;
  if (sub_2520CB6FC(v922) == 1)
  {
    if (v88)
    {
      sub_2520CB714(*(v894 + 48) + 16 * v91);
      sub_2520CB018(v91, v894);
    }
  }

  else if (v88)
  {
    memmove((*(v894 + 56) + 232 * v91), &v918, 0xE8uLL);
  }

  else
  {
    v936 = *&v921[144];
    v937 = *&v921[160];
    v938 = *&v921[176];
    v932 = *&v921[80];
    v933 = *&v921[96];
    v935 = *&v921[128];
    v934 = *&v921[112];
    v928 = *&v921[16];
    v929 = *&v921[32];
    v931 = *&v921[64];
    v930 = *&v921[48];
    v924 = v918;
    v925 = v919;
    v927 = *v921;
    v926 = v920;
    sub_2520A8CE4(v91, v653, v651, &v924, v894);
  }

  v915 = v899;
  *&v916 = v900;
  *(&v916 + 1) = v82;
  *&v917[160] = *&v911[112];
  *&v917[176] = *&v911[128];
  *&v917[192] = *&v911[144];
  *&v917[96] = *&v911[48];
  *&v917[112] = *&v911[64];
  *&v917[144] = *&v911[96];
  *&v917[128] = *&v911[80];
  *&v917[32] = v910;
  *&v917[48] = *v911;
  *&v917[80] = *&v911[32];
  *&v917[64] = *&v911[16];
  *&v917[16] = v909;
  *v917 = v908;
  sub_2520A2D9C(&v918, &v912, &qword_27F4CDE30, &qword_2521444D8);
  sub_2520A2584(&v915, &qword_27F4CDE30, &qword_2521444D8);
  v29 = v650;
  *(v650 + v83) = v894;
  swift_endAccess();

LABEL_63:
  v94 = objc_allocWithZone(*(v71 + 3024));
  v95 = sub_252141B6C();
  v96 = [v94 initWithSuiteName_];

  if (!v96)
  {
LABEL_570:
    __break(1u);
    goto LABEL_571;
  }

  v97 = sub_252141B6C();
  v98 = [v96 objectForKey_];

  if (!v98)
  {
    memset(v923, 0, 32);
    sub_2520A2584(v923, &unk_27F4CE0B0, &unk_252144AF0);
    goto LABEL_82;
  }

  sub_25214215C();
  swift_unknownObjectRelease();
  sub_2520A2584(v923, &unk_27F4CE0B0, &unk_252144AF0);
  v99 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v100 = sub_252141B6C();
  v101 = [v99 initWithSuiteName_];

  if (!v101)
  {
LABEL_600:
    __break(1u);
LABEL_601:
    __break(1u);
    goto LABEL_602;
  }

  v102 = sub_252141B6C();
  v103 = [v101 integerForKey_];

  v104 = OBJC_IVAR____TtC11HearingTest15HTNoiseAnalyzer_tuningDict;
  swift_beginAccess();
  v105 = swift_isUniquelyReferenced_nonNull_native();
  *&v888 = *(v650 + v104);
  v106 = v888;
  *(v650 + v104) = 0x8000000000000000;
  v107 = sub_25213E648(v653, v651);
  v109 = v108;
  v110 = *(v106 + 16);
  v111 = (v108 & 1) == 0;
  if (__OFADD__(v110, v111))
  {
LABEL_542:
    __break(1u);
    goto LABEL_543;
  }

  v112 = v107;
  if (sub_2520CB1CC(v105, v110 + v111))
  {
    v113 = sub_25213E648(v653, v651);
    if ((v109 & 1) != (v114 & 1))
    {
      goto LABEL_651;
    }

    v112 = v113;
  }

  if (v109)
  {
    memmove(v923, (*(v888 + 56) + 232 * v112), 0xE8uLL);
    nullsub_1();
  }

  else
  {
    sub_2520CB6D4(v923);
  }

  v899 = *v923;
  v900 = *&v923[16];
  *&v907[80] = *&v923[168];
  *&v907[96] = *&v923[184];
  *&v907[112] = *&v923[200];
  *&v907[128] = *&v923[216];
  *&v907[16] = *&v923[104];
  *&v907[32] = *&v923[120];
  *&v907[48] = *&v923[136];
  *&v907[64] = *&v923[152];
  v904 = *&v923[40];
  v905 = *&v923[56];
  v906 = *&v923[72];
  *v907 = *&v923[88];
  *v922 = *v923;
  *&v922[16] = *&v923[16];
  *&v922[168] = *&v923[168];
  *&v922[184] = *&v923[184];
  *&v922[200] = *&v923[200];
  *&v922[216] = *&v923[216];
  *&v922[104] = *&v923[104];
  *&v922[120] = *&v923[120];
  *&v922[136] = *&v923[136];
  *&v922[152] = *&v923[152];
  *&v922[40] = *&v923[40];
  *&v922[56] = *&v923[56];
  *&v922[72] = *&v923[72];
  *&v922[88] = *&v923[88];
  *&v922[32] = *&v923[32];
  if (sub_2520CB6FC(v922) == 1)
  {
    goto LABEL_603;
  }

  v915 = v899;
  v916 = v900;
  *v917 = v103;
  *&v917[136] = *&v907[80];
  *&v917[152] = *&v907[96];
  *&v917[168] = *&v907[112];
  *&v917[184] = *&v907[128];
  *&v917[72] = *&v907[16];
  *&v917[88] = *&v907[32];
  *&v917[104] = *&v907[48];
  *&v917[120] = *&v907[64];
  *&v917[8] = v904;
  *&v917[24] = v905;
  *&v917[40] = v906;
  *&v917[56] = *v907;
  *&v921[144] = *&v917[160];
  *&v921[160] = *&v917[176];
  *&v921[176] = *&v907[136];
  *&v921[80] = *&v917[96];
  *&v921[96] = *&v917[112];
  *&v921[128] = *&v917[144];
  *&v921[112] = *&v917[128];
  *&v921[16] = *&v917[32];
  *&v921[32] = *&v917[48];
  *&v921[64] = *&v917[80];
  *&v921[48] = *&v917[64];
  v918 = v899;
  v919 = v900;
  *v921 = *&v917[16];
  v920 = *v917;
  if (sub_2520CB6FC(&v918) == 1)
  {
    if (v109)
    {
      sub_2520CB714(*(v888 + 48) + 16 * v112);
      sub_2520CB018(v112, v888);
    }
  }

  else if (v109)
  {
    memmove((*(v888 + 56) + 232 * v112), &v915, 0xE8uLL);
  }

  else
  {
    *&v923[192] = *&v917[160];
    *&v923[208] = *&v917[176];
    *&v923[224] = *&v917[192];
    *&v923[128] = *&v917[96];
    *&v923[144] = *&v917[112];
    *&v923[176] = *&v917[144];
    *&v923[160] = *&v917[128];
    *&v923[64] = *&v917[32];
    *&v923[80] = *&v917[48];
    *&v923[112] = *&v917[80];
    *&v923[96] = *&v917[64];
    *v923 = v915;
    *&v923[16] = v916;
    *&v923[48] = *&v917[16];
    *&v923[32] = *v917;
    sub_2520A8CE4(v112, v653, v651, v923, v888);
  }

  v912 = v899;
  v913 = v900;
  *&v914[136] = *&v907[80];
  *&v914[152] = *&v907[96];
  *&v914[168] = *&v907[112];
  *&v914[184] = *&v907[128];
  *&v914[72] = *&v907[16];
  *&v914[88] = *&v907[32];
  *&v914[104] = *&v907[48];
  *&v914[120] = *&v907[64];
  *&v914[8] = v904;
  *&v914[24] = v905;
  *&v914[40] = v906;
  *v914 = v103;
  *&v914[56] = *v907;
  sub_2520A2D9C(&v915, &v908, &qword_27F4CDE30, &qword_2521444D8);
  sub_2520A2584(&v912, &qword_27F4CDE30, &qword_2521444D8);
  v29 = v650;
  *(v650 + v104) = v888;
  swift_endAccess();

LABEL_82:
  v115 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v116 = sub_252141B6C();
  v117 = [v115 initWithSuiteName_];

  if (!v117)
  {
LABEL_571:
    __break(1u);
    goto LABEL_572;
  }

  v118 = sub_252141B6C();
  v119 = [v117 objectForKey_];

  if (!v119)
  {
    memset(v922, 0, 32);
    sub_2520A2584(v922, &unk_27F4CE0B0, &unk_252144AF0);
    v137 = 0x277CBE000;
    goto LABEL_101;
  }

  sub_25214215C();
  swift_unknownObjectRelease();
  sub_2520A2584(v922, &unk_27F4CE0B0, &unk_252144AF0);
  v120 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v121 = sub_252141B6C();
  v122 = [v120 initWithSuiteName_];

  if (!v122)
  {
LABEL_602:
    __break(1u);
LABEL_603:
    __break(1u);
    goto LABEL_604;
  }

  v123 = sub_252141B6C();
  [v122 doubleForKey_];
  v125 = v124;

  v126 = OBJC_IVAR____TtC11HearingTest15HTNoiseAnalyzer_tuningDict;
  swift_beginAccess();
  v127 = swift_isUniquelyReferenced_nonNull_native();
  *&v882 = *(v29 + v126);
  v128 = v882;
  *(v29 + v126) = 0x8000000000000000;
  v129 = sub_25213E648(v653, v651);
  v131 = v130;
  v132 = *(v128 + 16);
  v133 = (v130 & 1) == 0;
  if (__OFADD__(v132, v133))
  {
LABEL_543:
    __break(1u);
    goto LABEL_544;
  }

  v134 = v129;
  if (sub_2520CB1CC(v127, v132 + v133))
  {
    v135 = sub_25213E648(v653, v651);
    v137 = 0x277CBE000;
    if ((v131 & 1) != (v136 & 1))
    {
      goto LABEL_651;
    }

    v134 = v135;
    if ((v131 & 1) == 0)
    {
      goto LABEL_89;
    }

LABEL_92:
    memmove(v922, (*(v882 + 56) + 232 * v134), 0xE8uLL);
    nullsub_1();
    goto LABEL_93;
  }

  v137 = 0x277CBE000uLL;
  if (v131)
  {
    goto LABEL_92;
  }

LABEL_89:
  sub_2520CB6D4(v922);
LABEL_93:
  v894 = *v922;
  v895 = *&v922[16];
  *&v896 = *&v922[32];
  *&v903[64] = *&v922[176];
  *&v903[80] = *&v922[192];
  *&v903[96] = *&v922[208];
  *&v903[112] = *&v922[224];
  *v903 = *&v922[112];
  *&v903[16] = *&v922[128];
  *&v903[32] = *&v922[144];
  *&v903[48] = *&v922[160];
  v899 = *&v922[48];
  v900 = *&v922[64];
  v901 = *&v922[80];
  v902 = *&v922[96];
  v918 = *v922;
  v919 = *&v922[16];
  v920 = *&v922[32];
  *&v921[128] = *&v922[176];
  *&v921[144] = *&v922[192];
  *&v921[160] = *&v922[208];
  *&v921[176] = *&v922[224];
  *&v921[64] = *&v922[112];
  *&v921[80] = *&v922[128];
  *&v921[96] = *&v922[144];
  *&v921[112] = *&v922[160];
  *v921 = *&v922[48];
  *&v921[16] = *&v922[64];
  *&v921[32] = *&v922[80];
  *&v921[48] = *&v922[96];
  if (sub_2520CB6FC(&v918) == 1)
  {
LABEL_605:
    __break(1u);
    goto LABEL_606;
  }

  v912 = v894;
  v913 = v895;
  *v914 = v896;
  *&v914[8] = v125;
  *&v914[144] = *&v903[64];
  *&v914[160] = *&v903[80];
  *&v914[176] = *&v903[96];
  *&v914[192] = *&v903[112];
  *&v914[80] = *v903;
  *&v914[96] = *&v903[16];
  *&v914[112] = *&v903[32];
  *&v914[128] = *&v903[48];
  *&v914[16] = v899;
  *&v914[32] = v900;
  *&v914[48] = v901;
  *&v914[64] = v902;
  *&v917[160] = *&v903[80];
  *&v917[176] = *&v903[96];
  *&v917[192] = *&v903[112];
  *&v917[96] = *&v903[16];
  *&v917[112] = *&v903[32];
  *&v917[144] = *&v903[64];
  *&v917[128] = *&v903[48];
  *&v917[32] = v900;
  *&v917[48] = v901;
  *&v917[80] = *v903;
  *&v917[64] = v902;
  v915 = v894;
  v916 = v895;
  *&v917[16] = v899;
  *v917 = *v914;
  if (sub_2520CB6FC(&v915) == 1)
  {
    if (v131)
    {
      sub_2520CB714(*(v882 + 48) + 16 * v134);
      sub_2520CB018(v134, v882);
    }
  }

  else if (v131)
  {
    memmove((*(v882 + 56) + 232 * v134), &v912, 0xE8uLL);
  }

  else
  {
    *&v922[192] = *&v914[160];
    *&v922[208] = *&v914[176];
    *&v922[224] = *&v914[192];
    *&v922[128] = *&v914[96];
    *&v922[144] = *&v914[112];
    *&v922[176] = *&v914[144];
    *&v922[160] = *&v914[128];
    *&v922[64] = *&v914[32];
    *&v922[80] = *&v914[48];
    *&v922[112] = *&v914[80];
    *&v922[96] = *&v914[64];
    *v922 = v912;
    *&v922[16] = v913;
    *&v922[48] = *&v914[16];
    *&v922[32] = *v914;
    sub_2520A8CE4(v134, v653, v651, v922, v882);
  }

  v908 = v894;
  v909 = v895;
  *&v910 = v896;
  *(&v910 + 1) = v125;
  *&v911[128] = *&v903[64];
  *&v911[144] = *&v903[80];
  *&v911[160] = *&v903[96];
  *&v911[176] = *&v903[112];
  *&v911[64] = *v903;
  *&v911[80] = *&v903[16];
  *&v911[96] = *&v903[32];
  *&v911[112] = *&v903[48];
  *v911 = v899;
  *&v911[16] = v900;
  *&v911[32] = v901;
  *&v911[48] = v902;
  sub_2520A2D9C(&v912, &v904, &qword_27F4CDE30, &qword_2521444D8);
  sub_2520A2584(&v908, &qword_27F4CDE30, &qword_2521444D8);
  v29 = v650;
  *(v650 + v126) = v882;
  swift_endAccess();

LABEL_101:
  v138 = objc_allocWithZone(*(v137 + 3024));
  v139 = sub_252141B6C();
  v140 = [v138 initWithSuiteName_];

  if (!v140)
  {
LABEL_572:
    __break(1u);
    goto LABEL_573;
  }

  v141 = sub_252141B6C();
  v142 = [v140 objectForKey_];

  if (!v142)
  {
    v919 = 0u;
    v918 = 0u;
    sub_2520A2584(&v918, &unk_27F4CE0B0, &unk_252144AF0);
    v160 = 0x277CBE000;
    goto LABEL_121;
  }

  sub_25214215C();
  swift_unknownObjectRelease();
  sub_2520A2584(&v918, &unk_27F4CE0B0, &unk_252144AF0);
  v143 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v144 = sub_252141B6C();
  v145 = [v143 initWithSuiteName_];

  if (!v145)
  {
LABEL_604:
    __break(1u);
    goto LABEL_605;
  }

  v146 = sub_252141B6C();
  [v145 doubleForKey_];
  v148 = v147;

  v149 = OBJC_IVAR____TtC11HearingTest15HTNoiseAnalyzer_tuningDict;
  swift_beginAccess();
  v150 = swift_isUniquelyReferenced_nonNull_native();
  *&v875 = *(v29 + v149);
  v151 = v875;
  *(v29 + v149) = 0x8000000000000000;
  v152 = sub_25213E648(v653, v651);
  v154 = v153;
  v155 = *(v151 + 16);
  v156 = (v153 & 1) == 0;
  if (__OFADD__(v155, v156))
  {
LABEL_544:
    __break(1u);
    goto LABEL_545;
  }

  v157 = v152;
  if (sub_2520CB1CC(v150, v155 + v156))
  {
    v158 = sub_25213E648(v653, v651);
    v160 = 0x277CBE000;
    if ((v154 & 1) != (v159 & 1))
    {
      goto LABEL_651;
    }

    v157 = v158;
  }

  else
  {
    v160 = 0x277CBE000uLL;
  }

  if (v154)
  {
    memmove(&v918, (*(v875 + 56) + 232 * v157), 0xE8uLL);
    nullsub_1();
  }

  else
  {
    sub_2520CB6D4(&v918);
  }

  v888 = v918;
  v889 = v919;
  v890 = v920;
  *&v898[64] = *&v921[136];
  *&v898[80] = *&v921[152];
  *&v898[96] = *&v921[168];
  *v898 = *&v921[72];
  *&v898[16] = *&v921[88];
  *&v898[48] = *&v921[120];
  *&v898[32] = *&v921[104];
  v894 = *&v921[8];
  v895 = *&v921[24];
  v897 = *&v921[56];
  v896 = *&v921[40];
  v915 = v918;
  v916 = v919;
  *v917 = v920;
  *&v917[136] = *&v921[120];
  *&v917[152] = *&v921[136];
  *&v917[168] = *&v921[152];
  *&v917[184] = *&v921[168];
  *&v917[72] = *&v921[56];
  *&v917[88] = *&v921[72];
  *&v917[104] = *&v921[88];
  *&v917[120] = *&v921[104];
  *&v917[24] = *&v921[8];
  *&v917[40] = *&v921[24];
  *&v917[56] = *&v921[40];
  *&v917[16] = *v921;
  if (sub_2520CB6FC(&v915) == 1)
  {
    goto LABEL_607;
  }

  v908 = v888;
  v909 = v889;
  v910 = v890;
  *&v911[120] = *&v898[48];
  *&v911[136] = *&v898[64];
  *&v911[152] = *&v898[80];
  *&v911[168] = *&v898[96];
  *&v911[56] = v897;
  *&v911[72] = *v898;
  *&v911[88] = *&v898[16];
  *&v911[104] = *&v898[32];
  *&v911[8] = v894;
  *v911 = v148;
  *&v911[24] = v895;
  *&v911[40] = v896;
  *&v914[160] = *&v911[144];
  *&v914[176] = *&v911[160];
  *&v914[192] = *&v898[104];
  *&v914[96] = *&v911[80];
  *&v914[112] = *&v911[96];
  *&v914[144] = *&v911[128];
  *&v914[128] = *&v911[112];
  *&v914[32] = *&v911[16];
  *&v914[48] = *&v911[32];
  *&v914[80] = *&v911[64];
  *&v914[64] = *&v911[48];
  v912 = v888;
  v913 = v889;
  *&v914[16] = *v911;
  *v914 = v890;
  if (sub_2520CB6FC(&v912) == 1)
  {
    if (v154)
    {
      sub_2520CB714(*(v875 + 48) + 16 * v157);
      sub_2520CB018(v157, v875);
    }
  }

  else if (v154)
  {
    memmove((*(v875 + 56) + 232 * v157), &v908, 0xE8uLL);
  }

  else
  {
    *&v921[144] = *&v911[144];
    *&v921[160] = *&v911[160];
    *&v921[176] = *&v911[176];
    *&v921[80] = *&v911[80];
    *&v921[96] = *&v911[96];
    *&v921[128] = *&v911[128];
    *&v921[112] = *&v911[112];
    *&v921[16] = *&v911[16];
    *&v921[32] = *&v911[32];
    *&v921[64] = *&v911[64];
    *&v921[48] = *&v911[48];
    v918 = v908;
    v919 = v909;
    *v921 = *v911;
    v920 = v910;
    sub_2520A8CE4(v157, v653, v651, &v918, v875);
  }

  v904 = v888;
  v905 = v889;
  v906 = v890;
  *v907 = v148;
  *&v907[120] = *&v898[48];
  *&v907[136] = *&v898[64];
  *&v907[152] = *&v898[80];
  *&v907[168] = *&v898[96];
  *&v907[56] = v897;
  *&v907[72] = *v898;
  *&v907[88] = *&v898[16];
  *&v907[104] = *&v898[32];
  *&v907[8] = v894;
  *&v907[24] = v895;
  *&v907[40] = v896;
  sub_2520A2D9C(&v908, &v899, &qword_27F4CDE30, &qword_2521444D8);
  sub_2520A2584(&v904, &qword_27F4CDE30, &qword_2521444D8);
  v29 = v650;
  *(v650 + v149) = v875;
  swift_endAccess();

LABEL_121:
  v161 = objc_allocWithZone(*(v160 + 3024));
  v162 = sub_252141B6C();
  v163 = [v161 initWithSuiteName_];

  if (!v163)
  {
LABEL_573:
    __break(1u);
    goto LABEL_574;
  }

  v164 = sub_252141B6C();
  v165 = [v163 objectForKey_];

  if (!v165)
  {
    v916 = 0u;
    v915 = 0u;
    sub_2520A2584(&v915, &unk_27F4CE0B0, &unk_252144AF0);
    goto LABEL_140;
  }

  sub_25214215C();
  swift_unknownObjectRelease();
  sub_2520A2584(&v915, &unk_27F4CE0B0, &unk_252144AF0);
  v166 = objc_allocWithZone(*(v160 + 3024));
  v167 = sub_252141B6C();
  v168 = [v166 initWithSuiteName_];

  if (!v168)
  {
LABEL_606:
    __break(1u);
LABEL_607:
    __break(1u);
    goto LABEL_608;
  }

  v169 = sub_252141B6C();
  [v168 doubleForKey_];
  v171 = v170;

  v172 = OBJC_IVAR____TtC11HearingTest15HTNoiseAnalyzer_tuningDict;
  swift_beginAccess();
  v173 = swift_isUniquelyReferenced_nonNull_native();
  *&v868 = *(v29 + v172);
  v174 = v868;
  *(v29 + v172) = 0x8000000000000000;
  v175 = sub_25213E648(v653, v651);
  v177 = v176;
  v178 = *(v174 + 16);
  v179 = (v176 & 1) == 0;
  if (__OFADD__(v178, v179))
  {
LABEL_545:
    __break(1u);
    goto LABEL_546;
  }

  v180 = v175;
  if (sub_2520CB1CC(v173, v178 + v179))
  {
    v181 = sub_25213E648(v653, v651);
    if ((v177 & 1) != (v182 & 1))
    {
      goto LABEL_651;
    }

    v180 = v181;
  }

  if (v177)
  {
    memmove(&v915, (*(v868 + 56) + 232 * v180), 0xE8uLL);
    nullsub_1();
  }

  else
  {
    sub_2520CB6D4(&v915);
  }

  v882 = v915;
  v883 = v916;
  v884 = *v917;
  *&v885 = *&v917[16];
  *&v893[48] = *&v917[160];
  *&v893[64] = *&v917[176];
  *&v893[80] = *&v917[192];
  v892 = *&v917[96];
  *v893 = *&v917[112];
  *&v893[32] = *&v917[144];
  *&v893[16] = *&v917[128];
  v888 = *&v917[32];
  v889 = *&v917[48];
  v891 = *&v917[80];
  v890 = *&v917[64];
  v912 = v915;
  v913 = v916;
  *v914 = *v917;
  *&v914[16] = *&v917[16];
  *&v914[160] = *&v917[160];
  *&v914[176] = *&v917[176];
  *&v914[192] = *&v917[192];
  *&v914[96] = *&v917[96];
  *&v914[112] = *&v917[112];
  *&v914[144] = *&v917[144];
  *&v914[128] = *&v917[128];
  *&v914[32] = *&v917[32];
  *&v914[48] = *&v917[48];
  *&v914[80] = *&v917[80];
  *&v914[64] = *&v917[64];
  if (sub_2520CB6FC(&v912) == 1)
  {
    goto LABEL_609;
  }

  v904 = v882;
  v905 = v883;
  v906 = v884;
  *v907 = v885;
  *&v907[8] = v171;
  *&v907[144] = *&v893[48];
  *&v907[160] = *&v893[64];
  *&v907[176] = *&v893[80];
  *&v907[80] = v892;
  *&v907[96] = *v893;
  *&v907[128] = *&v893[32];
  *&v907[112] = *&v893[16];
  *&v907[16] = v888;
  *&v907[32] = v889;
  *&v907[64] = v891;
  *&v907[48] = v890;
  *&v911[144] = *&v893[48];
  *&v911[160] = *&v893[64];
  *&v911[176] = *&v893[80];
  *&v911[80] = v892;
  *&v911[96] = *v893;
  *&v911[128] = *&v893[32];
  *&v911[112] = *&v893[16];
  *&v911[16] = v888;
  *&v911[32] = v889;
  *&v911[64] = v891;
  *&v911[48] = v890;
  v908 = v882;
  v909 = v883;
  *v911 = *v907;
  v910 = v884;
  if (sub_2520CB6FC(&v908) == 1)
  {
    if (v177)
    {
      sub_2520CB714(*(v868 + 48) + 16 * v180);
      sub_2520CB018(v180, v868);
    }
  }

  else if (v177)
  {
    memmove((*(v868 + 56) + 232 * v180), &v904, 0xE8uLL);
  }

  else
  {
    *&v917[160] = *&v907[144];
    *&v917[176] = *&v907[160];
    *&v917[192] = *&v907[176];
    *&v917[96] = *&v907[80];
    *&v917[112] = *&v907[96];
    *&v917[144] = *&v907[128];
    *&v917[128] = *&v907[112];
    *&v917[32] = *&v907[16];
    *&v917[48] = *&v907[32];
    *&v917[80] = *&v907[64];
    *&v917[64] = *&v907[48];
    v915 = v904;
    v916 = v905;
    *&v917[16] = *v907;
    *v917 = v906;
    sub_2520A8CE4(v180, v653, v651, &v915, v868);
  }

  v899 = v882;
  v900 = v883;
  v901 = v884;
  *&v902 = v885;
  *(&v902 + 1) = v171;
  *&v903[128] = *&v893[48];
  *&v903[144] = *&v893[64];
  *&v903[160] = *&v893[80];
  *&v903[64] = v892;
  *&v903[80] = *v893;
  *&v903[112] = *&v893[32];
  *&v903[96] = *&v893[16];
  *v903 = v888;
  *&v903[16] = v889;
  *&v903[48] = v891;
  *&v903[32] = v890;
  sub_2520A2D9C(&v904, &v894, &qword_27F4CDE30, &qword_2521444D8);
  sub_2520A2584(&v899, &qword_27F4CDE30, &qword_2521444D8);
  v29 = v650;
  *(v650 + v172) = v868;
  swift_endAccess();

LABEL_140:
  v183 = objc_allocWithZone(*(v160 + 3024));
  v184 = sub_252141B6C();
  v185 = [v183 initWithSuiteName_];

  if (!v185)
  {
LABEL_574:
    __break(1u);
    goto LABEL_575;
  }

  v186 = sub_252141B6C();
  v187 = [v185 objectForKey_];

  if (!v187)
  {
    v913 = 0u;
    v912 = 0u;
    sub_2520A2584(&v912, &unk_27F4CE0B0, &unk_252144AF0);
    goto LABEL_159;
  }

  sub_25214215C();
  swift_unknownObjectRelease();
  sub_2520A2584(&v912, &unk_27F4CE0B0, &unk_252144AF0);
  v188 = objc_allocWithZone(*(v160 + 3024));
  v189 = sub_252141B6C();
  v190 = [v188 initWithSuiteName_];

  if (!v190)
  {
LABEL_608:
    __break(1u);
LABEL_609:
    __break(1u);
    goto LABEL_610;
  }

  v191 = sub_252141B6C();
  [v190 doubleForKey_];
  v193 = v192;

  v194 = OBJC_IVAR____TtC11HearingTest15HTNoiseAnalyzer_tuningDict;
  swift_beginAccess();
  v195 = swift_isUniquelyReferenced_nonNull_native();
  *&v860 = *(v29 + v194);
  v196 = v860;
  *(v29 + v194) = 0x8000000000000000;
  v197 = sub_25213E648(v653, v651);
  v199 = v198;
  v200 = *(v196 + 16);
  v201 = (v198 & 1) == 0;
  if (__OFADD__(v200, v201))
  {
LABEL_546:
    __break(1u);
    goto LABEL_547;
  }

  v202 = v197;
  if (sub_2520CB1CC(v195, v200 + v201))
  {
    v203 = sub_25213E648(v653, v651);
    if ((v199 & 1) != (v204 & 1))
    {
      goto LABEL_651;
    }

    v202 = v203;
  }

  if (v199)
  {
    memmove(&v912, (*(v860 + 56) + 232 * v202), 0xE8uLL);
    nullsub_1();
  }

  else
  {
    sub_2520CB6D4(&v912);
  }

  v875 = v912;
  v876 = v913;
  v877 = *v914;
  v878 = *&v914[16];
  *&v887[16] = *&v914[136];
  *&v887[32] = *&v914[152];
  *&v887[48] = *&v914[168];
  *&v887[64] = *&v914[184];
  v884 = *&v914[72];
  v885 = *&v914[88];
  v886 = *&v914[104];
  *v887 = *&v914[120];
  v882 = *&v914[40];
  v883 = *&v914[56];
  v908 = v912;
  v909 = v913;
  v910 = *v914;
  *v911 = *&v914[16];
  *&v911[120] = *&v914[136];
  *&v911[136] = *&v914[152];
  *&v911[152] = *&v914[168];
  *&v911[168] = *&v914[184];
  *&v911[56] = *&v914[72];
  *&v911[72] = *&v914[88];
  *&v911[88] = *&v914[104];
  *&v911[104] = *&v914[120];
  *&v911[24] = *&v914[40];
  *&v911[40] = *&v914[56];
  *&v911[16] = *&v914[32];
  if (sub_2520CB6FC(&v908) == 1)
  {
    goto LABEL_611;
  }

  v899 = v875;
  v900 = v876;
  v901 = v877;
  v902 = v878;
  *v903 = v193;
  *&v903[104] = *&v887[16];
  *&v903[120] = *&v887[32];
  *&v903[136] = *&v887[48];
  *&v903[152] = *&v887[64];
  *&v903[40] = v884;
  *&v903[56] = v885;
  *&v903[72] = v886;
  *&v903[88] = *v887;
  *&v903[8] = v882;
  *&v903[24] = v883;
  *&v907[144] = *&v903[128];
  *&v907[160] = *&v903[144];
  *&v907[176] = *&v887[72];
  *&v907[80] = *&v903[64];
  *&v907[96] = *&v903[80];
  *&v907[128] = *&v903[112];
  *&v907[112] = *&v903[96];
  *&v907[16] = *v903;
  *&v907[32] = *&v903[16];
  *&v907[64] = *&v903[48];
  *&v907[48] = *&v903[32];
  v904 = v875;
  v905 = v876;
  *v907 = v878;
  v906 = v877;
  if (sub_2520CB6FC(&v904) == 1)
  {
    if (v199)
    {
      sub_2520CB714(*(v860 + 48) + 16 * v202);
      sub_2520CB018(v202, v860);
    }
  }

  else if (v199)
  {
    memmove((*(v860 + 56) + 232 * v202), &v899, 0xE8uLL);
  }

  else
  {
    *&v914[160] = *&v903[128];
    *&v914[176] = *&v903[144];
    *&v914[192] = *&v903[160];
    *&v914[96] = *&v903[64];
    *&v914[112] = *&v903[80];
    *&v914[144] = *&v903[112];
    *&v914[128] = *&v903[96];
    *&v914[32] = *v903;
    *&v914[48] = *&v903[16];
    *&v914[80] = *&v903[48];
    *&v914[64] = *&v903[32];
    v912 = v899;
    v913 = v900;
    *&v914[16] = v902;
    *v914 = v901;
    sub_2520A8CE4(v202, v653, v651, &v912, v860);
  }

  v894 = v875;
  v895 = v876;
  v896 = v877;
  v897 = v878;
  *v898 = v193;
  *&v898[104] = *&v887[16];
  *&v898[120] = *&v887[32];
  *&v898[136] = *&v887[48];
  *&v898[152] = *&v887[64];
  *&v898[40] = v884;
  *&v898[56] = v885;
  *&v898[72] = v886;
  *&v898[88] = *v887;
  *&v898[8] = v882;
  *&v898[24] = v883;
  sub_2520A2D9C(&v899, &v888, &qword_27F4CDE30, &qword_2521444D8);
  sub_2520A2584(&v894, &qword_27F4CDE30, &qword_2521444D8);
  v29 = v650;
  *(v650 + v194) = v860;
  swift_endAccess();

  v160 = 0x277CBE000uLL;
LABEL_159:
  v205 = objc_allocWithZone(*(v160 + 3024));
  v206 = sub_252141B6C();
  v207 = [v205 initWithSuiteName_];

  if (!v207)
  {
LABEL_575:
    __break(1u);
    goto LABEL_576;
  }

  v208 = sub_252141B6C();
  v209 = [v207 objectForKey_];

  if (!v209)
  {
    v909 = 0u;
    v908 = 0u;
    sub_2520A2584(&v908, &unk_27F4CE0B0, &unk_252144AF0);
    goto LABEL_178;
  }

  sub_25214215C();
  swift_unknownObjectRelease();
  sub_2520A2584(&v908, &unk_27F4CE0B0, &unk_252144AF0);
  v210 = objc_allocWithZone(*(v160 + 3024));
  v211 = sub_252141B6C();
  v212 = [v210 initWithSuiteName_];

  if (!v212)
  {
LABEL_610:
    __break(1u);
LABEL_611:
    __break(1u);
    goto LABEL_612;
  }

  v213 = sub_252141B6C();
  [v212 doubleForKey_];
  v215 = v214;

  v216 = OBJC_IVAR____TtC11HearingTest15HTNoiseAnalyzer_tuningDict;
  swift_beginAccess();
  v217 = swift_isUniquelyReferenced_nonNull_native();
  *&__src = *(v29 + v216);
  v218 = __src;
  *(v29 + v216) = 0x8000000000000000;
  v219 = sub_25213E648(v653, v651);
  v221 = v220;
  v222 = *(v218 + 16);
  v223 = (v220 & 1) == 0;
  if (__OFADD__(v222, v223))
  {
LABEL_547:
    __break(1u);
    goto LABEL_548;
  }

  v224 = v219;
  if (sub_2520CB1CC(v217, v222 + v223))
  {
    v225 = sub_25213E648(v653, v651);
    if ((v221 & 1) != (v226 & 1))
    {
      goto LABEL_651;
    }

    v224 = v225;
  }

  if (v221)
  {
    memmove(&v908, (*(__src + 56) + 232 * v224), 0xE8uLL);
    nullsub_1();
  }

  else
  {
    sub_2520CB6D4(&v908);
  }

  v870 = v910;
  v871 = *v911;
  *&v872 = *&v911[16];
  v869 = v909;
  v868 = v908;
  *v881 = *&v911[128];
  *&v881[16] = *&v911[144];
  *&v881[32] = *&v911[160];
  *&v881[48] = *&v911[176];
  v877 = *&v911[64];
  v878 = *&v911[80];
  v879 = *&v911[96];
  v880 = *&v911[112];
  v875 = *&v911[32];
  v876 = *&v911[48];
  v906 = v910;
  *v907 = *v911;
  *&v907[16] = *&v911[16];
  v905 = v909;
  v904 = v908;
  *&v907[128] = *&v911[128];
  *&v907[144] = *&v911[144];
  *&v907[160] = *&v911[160];
  *&v907[176] = *&v911[176];
  *&v907[64] = *&v911[64];
  *&v907[80] = *&v911[80];
  *&v907[96] = *&v911[96];
  *&v907[112] = *&v911[112];
  *&v907[32] = *&v911[32];
  *&v907[48] = *&v911[48];
  if (sub_2520CB6FC(&v904) == 1)
  {
    goto LABEL_613;
  }

  v896 = v870;
  v897 = v871;
  *v898 = v872;
  v895 = v869;
  v894 = v868;
  *&v898[8] = v215;
  *&v898[112] = *v881;
  *&v898[128] = *&v881[16];
  *&v898[144] = *&v881[32];
  *&v898[160] = *&v881[48];
  *&v898[48] = v877;
  *&v898[64] = v878;
  *&v898[80] = v879;
  *&v898[96] = v880;
  *&v898[16] = v875;
  *&v898[32] = v876;
  *&v903[128] = *&v881[16];
  *&v903[144] = *&v881[32];
  *&v903[160] = *&v881[48];
  *&v903[64] = v878;
  *&v903[80] = v879;
  *&v903[112] = *v881;
  *&v903[96] = v880;
  *v903 = *v898;
  *&v903[16] = v875;
  *&v903[48] = v877;
  *&v903[32] = v876;
  v899 = v868;
  v900 = v869;
  v902 = v871;
  v901 = v870;
  if (sub_2520CB6FC(&v899) == 1)
  {
    if (v221)
    {
      sub_2520CB714(*(__src + 48) + 16 * v224);
      sub_2520CB018(v224, __src);
    }
  }

  else if (v221)
  {
    memmove((*(__src + 56) + 232 * v224), &v894, 0xE8uLL);
  }

  else
  {
    *&v911[144] = *&v898[128];
    *&v911[160] = *&v898[144];
    *&v911[176] = *&v898[160];
    *&v911[80] = *&v898[64];
    *&v911[96] = *&v898[80];
    *&v911[128] = *&v898[112];
    *&v911[112] = *&v898[96];
    *&v911[16] = *v898;
    *&v911[32] = *&v898[16];
    *&v911[64] = *&v898[48];
    *&v911[48] = *&v898[32];
    v908 = v894;
    v909 = v895;
    *v911 = v897;
    v910 = v896;
    sub_2520A8CE4(v224, v653, v651, &v908, __src);
  }

  v890 = v870;
  v891 = v871;
  *&v892 = v872;
  v889 = v869;
  v888 = v868;
  *(&v892 + 1) = v215;
  *&v893[96] = *v881;
  *&v893[112] = *&v881[16];
  *&v893[128] = *&v881[32];
  *&v893[144] = *&v881[48];
  *&v893[32] = v877;
  *&v893[48] = v878;
  *&v893[64] = v879;
  *&v893[80] = v880;
  *v893 = v875;
  *&v893[16] = v876;
  sub_2520A2D9C(&v894, &v882, &qword_27F4CDE30, &qword_2521444D8);
  sub_2520A2584(&v888, &qword_27F4CDE30, &qword_2521444D8);
  v29 = v650;
  *(v650 + v216) = __src;
  swift_endAccess();

LABEL_178:
  v227 = objc_allocWithZone(*(v160 + 3024));
  v228 = sub_252141B6C();
  v229 = [v227 initWithSuiteName_];

  if (!v229)
  {
LABEL_576:
    __break(1u);
    goto LABEL_577;
  }

  v230 = sub_252141B6C();
  v231 = [v229 objectForKey_];

  if (!v231)
  {
    v905 = 0u;
    v904 = 0u;
    sub_2520A2584(&v904, &unk_27F4CE0B0, &unk_252144AF0);
    goto LABEL_197;
  }

  sub_25214215C();
  swift_unknownObjectRelease();
  sub_2520A2584(&v904, &unk_27F4CE0B0, &unk_252144AF0);
  v232 = objc_allocWithZone(*(v160 + 3024));
  v233 = sub_252141B6C();
  v234 = [v232 initWithSuiteName_];

  if (!v234)
  {
LABEL_612:
    __break(1u);
LABEL_613:
    __break(1u);
    goto LABEL_614;
  }

  v235 = sub_252141B6C();
  v236 = [v234 integerForKey_];

  v237 = OBJC_IVAR____TtC11HearingTest15HTNoiseAnalyzer_tuningDict;
  swift_beginAccess();
  v238 = swift_isUniquelyReferenced_nonNull_native();
  *&__dst = *(v29 + v237);
  v239 = __dst;
  *(v29 + v237) = 0x8000000000000000;
  v240 = sub_25213E648(v653, v651);
  v242 = v241;
  v243 = *(v239 + 16);
  v244 = (v241 & 1) == 0;
  if (__OFADD__(v243, v244))
  {
LABEL_548:
    __break(1u);
    goto LABEL_549;
  }

  v245 = v240;
  if (sub_2520CB1CC(v238, v243 + v244))
  {
    v246 = sub_25213E648(v653, v651);
    if ((v242 & 1) != (v247 & 1))
    {
      goto LABEL_651;
    }

    v245 = v246;
    if ((v242 & 1) == 0)
    {
      goto LABEL_185;
    }

LABEL_188:
    memmove(&v904, (*(__dst + 56) + 232 * v245), 0xE8uLL);
    nullsub_1();
    goto LABEL_189;
  }

  if (v242)
  {
    goto LABEL_188;
  }

LABEL_185:
  sub_2520CB6D4(&v904);
LABEL_189:
  v862 = v906;
  v863 = *v907;
  v864 = *&v907[16];
  v861 = v905;
  v860 = v904;
  *v874 = *&v907[136];
  *&v874[16] = *&v907[152];
  *&v874[32] = *&v907[168];
  v870 = *&v907[72];
  v871 = *&v907[88];
  v873 = *&v907[120];
  v872 = *&v907[104];
  v869 = *&v907[56];
  v868 = *&v907[40];
  v901 = v906;
  v902 = *v907;
  *v903 = *&v907[16];
  v900 = v905;
  v899 = v904;
  *&v903[104] = *&v907[120];
  *&v903[120] = *&v907[136];
  *&v903[136] = *&v907[152];
  *&v903[152] = *&v907[168];
  *&v903[40] = *&v907[56];
  *&v903[56] = *&v907[72];
  *&v903[72] = *&v907[88];
  *&v903[88] = *&v907[104];
  *&v903[24] = *&v907[40];
  *&v903[16] = *&v907[32];
  if (sub_2520CB6FC(&v899) == 1)
  {
LABEL_615:
    __break(1u);
    goto LABEL_616;
  }

  v890 = v862;
  v891 = v863;
  v892 = v864;
  v889 = v861;
  v888 = v860;
  *&v893[88] = v873;
  *&v893[104] = *v874;
  *&v893[120] = *&v874[16];
  *&v893[136] = *&v874[32];
  *&v893[24] = v869;
  *&v893[40] = v870;
  *&v893[56] = v871;
  *v893 = v236;
  *&v893[72] = v872;
  *&v893[8] = v868;
  *&v898[128] = *&v893[112];
  *&v898[144] = *&v893[128];
  *&v898[160] = *&v874[40];
  *&v898[64] = *&v893[48];
  *&v898[80] = *&v893[64];
  *&v898[112] = *&v893[96];
  *&v898[96] = *&v893[80];
  *v898 = v864;
  *&v898[16] = *v893;
  *&v898[48] = *&v893[32];
  *&v898[32] = *&v893[16];
  v894 = v860;
  v895 = v861;
  v897 = v863;
  v896 = v862;
  if (sub_2520CB6FC(&v894) == 1)
  {
    if (v242)
    {
      sub_2520CB714(*(__dst + 48) + 16 * v245);
      sub_2520CB018(v245, __dst);
    }
  }

  else if (v242)
  {
    memmove((*(__dst + 56) + 232 * v245), &v888, 0xE8uLL);
  }

  else
  {
    *&v907[144] = *&v893[112];
    *&v907[160] = *&v893[128];
    *&v907[176] = *&v893[144];
    *&v907[80] = *&v893[48];
    *&v907[96] = *&v893[64];
    *&v907[128] = *&v893[96];
    *&v907[112] = *&v893[80];
    *&v907[16] = v892;
    *&v907[32] = *v893;
    *&v907[64] = *&v893[32];
    *&v907[48] = *&v893[16];
    v904 = v888;
    v905 = v889;
    *v907 = v891;
    v906 = v890;
    sub_2520A8CE4(v245, v653, v651, &v904, __dst);
  }

  v884 = v862;
  v885 = v863;
  v886 = v864;
  v883 = v861;
  v882 = v860;
  *&v887[88] = v873;
  *&v887[104] = *v874;
  *&v887[120] = *&v874[16];
  *&v887[136] = *&v874[32];
  *&v887[24] = v869;
  *&v887[40] = v870;
  *&v887[56] = v871;
  *&v887[72] = v872;
  *v887 = v236;
  *&v887[8] = v868;
  sub_2520A2D9C(&v888, &v875, &qword_27F4CDE30, &qword_2521444D8);
  sub_2520A2584(&v882, &qword_27F4CDE30, &qword_2521444D8);
  v29 = v650;
  *(v650 + v237) = __dst;
  swift_endAccess();

  v160 = 0x277CBE000uLL;
LABEL_197:
  v248 = objc_allocWithZone(*(v160 + 3024));
  v249 = sub_252141B6C();
  v250 = [v248 initWithSuiteName_];

  if (!v250)
  {
LABEL_577:
    __break(1u);
    goto LABEL_578;
  }

  v251 = sub_252141B6C();
  v252 = [v250 objectForKey_];

  if (!v252)
  {
    v900 = 0u;
    v899 = 0u;
    sub_2520A2584(&v899, &unk_27F4CE0B0, &unk_252144AF0);
    goto LABEL_216;
  }

  sub_25214215C();
  swift_unknownObjectRelease();
  sub_2520A2584(&v899, &unk_27F4CE0B0, &unk_252144AF0);
  v253 = objc_allocWithZone(*(v160 + 3024));
  v254 = sub_252141B6C();
  v255 = [v253 initWithSuiteName_];

  if (!v255)
  {
LABEL_614:
    __break(1u);
    goto LABEL_615;
  }

  v256 = sub_252141B6C();
  [v255 doubleForKey_];
  v258 = v257;

  v259 = OBJC_IVAR____TtC11HearingTest15HTNoiseAnalyzer_tuningDict;
  swift_beginAccess();
  v260 = swift_isUniquelyReferenced_nonNull_native();
  *&v834 = *(v29 + v259);
  v261 = v834;
  *(v29 + v259) = 0x8000000000000000;
  v262 = sub_25213E648(v653, v651);
  v264 = v263;
  v265 = *(v261 + 16);
  v266 = (v263 & 1) == 0;
  if (__OFADD__(v265, v266))
  {
LABEL_549:
    __break(1u);
    goto LABEL_550;
  }

  v267 = v262;
  if (sub_2520CB1CC(v260, v265 + v266))
  {
    v268 = sub_25213E648(v653, v651);
    if ((v264 & 1) != (v269 & 1))
    {
      goto LABEL_651;
    }

    v267 = v268;
  }

  if (v264)
  {
    memmove(&v899, (*(v834 + 56) + 232 * v267), 0xE8uLL);
    nullsub_1();
  }

  else
  {
    sub_2520CB6D4(&v899);
  }

  v854 = v901;
  v855 = v902;
  v856 = *v903;
  *&v857 = *&v903[16];
  __src = v899;
  v853 = v900;
  v863 = *&v903[80];
  v862 = *&v903[64];
  *&v867[16] = *&v903[160];
  *v867 = *&v903[144];
  v866 = *&v903[128];
  v864 = *&v903[96];
  v865 = *&v903[112];
  v861 = *&v903[48];
  v860 = *&v903[32];
  v896 = v901;
  v897 = v902;
  *v898 = *v903;
  *&v898[16] = *&v903[16];
  v894 = v899;
  v895 = v900;
  *&v898[160] = *&v903[160];
  *&v898[144] = *&v903[144];
  *&v898[128] = *&v903[128];
  *&v898[112] = *&v903[112];
  *&v898[96] = *&v903[96];
  *&v898[80] = *&v903[80];
  *&v898[64] = *&v903[64];
  *&v898[48] = *&v903[48];
  *&v898[32] = *&v903[32];
  if (sub_2520CB6FC(&v894) == 1)
  {
    goto LABEL_617;
  }

  v884 = v854;
  v885 = v855;
  v886 = v856;
  *v887 = v857;
  v882 = __src;
  v883 = v853;
  *&v887[8] = v258;
  *&v887[64] = v863;
  *&v887[48] = v862;
  *&v887[16] = v860;
  *&v887[32] = v861;
  *&v887[144] = *&v867[16];
  *&v887[128] = *v867;
  *&v887[112] = v866;
  *&v887[80] = v864;
  *&v887[96] = v865;
  *&v893[112] = v866;
  *&v893[128] = *v867;
  *&v893[144] = *&v867[16];
  *&v893[48] = v862;
  *&v893[64] = v863;
  *&v893[96] = v865;
  *&v893[80] = v864;
  v892 = v856;
  *v893 = *v887;
  *&v893[32] = v861;
  *&v893[16] = v860;
  v888 = __src;
  v889 = v853;
  v891 = v855;
  v890 = v854;
  if (sub_2520CB6FC(&v888) == 1)
  {
    if (v264)
    {
      sub_2520CB714(*(v834 + 48) + 16 * v267);
      sub_2520CB018(v267, v834);
    }
  }

  else if (v264)
  {
    memmove((*(v834 + 56) + 232 * v267), &v882, 0xE8uLL);
  }

  else
  {
    *&v903[128] = *&v887[112];
    *&v903[144] = *&v887[128];
    *&v903[160] = *&v887[144];
    *&v903[64] = *&v887[48];
    *&v903[80] = *&v887[64];
    *&v903[112] = *&v887[96];
    *&v903[96] = *&v887[80];
    *v903 = v886;
    *&v903[16] = *v887;
    *&v903[48] = *&v887[32];
    *&v903[32] = *&v887[16];
    v899 = v882;
    v900 = v883;
    v902 = v885;
    v901 = v884;
    sub_2520A8CE4(v267, v653, v651, &v899, v834);
  }

  v877 = v854;
  v878 = v855;
  v879 = v856;
  *&v880 = v857;
  v875 = __src;
  v876 = v853;
  *(&v880 + 1) = v258;
  *&v881[48] = v863;
  *&v881[32] = v862;
  *v881 = v860;
  *&v881[16] = v861;
  *&v881[128] = *&v867[16];
  *&v881[112] = *v867;
  *&v881[96] = v866;
  *&v881[64] = v864;
  *&v881[80] = v865;
  sub_2520A2D9C(&v882, &v868, &qword_27F4CDE30, &qword_2521444D8);
  sub_2520A2584(&v875, &qword_27F4CDE30, &qword_2521444D8);
  v29 = v650;
  *(v650 + v259) = v834;
  swift_endAccess();

LABEL_216:
  v270 = objc_allocWithZone(*(v160 + 3024));
  v271 = sub_252141B6C();
  v272 = [v270 initWithSuiteName_];

  if (!v272)
  {
LABEL_578:
    __break(1u);
    goto LABEL_579;
  }

  v273 = sub_252141B6C();
  v274 = [v272 objectForKey_];

  if (!v274)
  {
    v895 = 0u;
    v894 = 0u;
    sub_2520A2584(&v894, &unk_27F4CE0B0, &unk_252144AF0);
    goto LABEL_235;
  }

  sub_25214215C();
  swift_unknownObjectRelease();
  sub_2520A2584(&v894, &unk_27F4CE0B0, &unk_252144AF0);
  v275 = objc_allocWithZone(*(v160 + 3024));
  v276 = sub_252141B6C();
  v277 = [v275 initWithSuiteName_];

  if (!v277)
  {
LABEL_616:
    __break(1u);
LABEL_617:
    __break(1u);
    goto LABEL_618;
  }

  v278 = sub_252141B6C();
  [v277 doubleForKey_];
  v280 = v279;

  v281 = OBJC_IVAR____TtC11HearingTest15HTNoiseAnalyzer_tuningDict;
  swift_beginAccess();
  v282 = swift_isUniquelyReferenced_nonNull_native();
  *&v824 = *(v29 + v281);
  v283 = v824;
  *(v29 + v281) = 0x8000000000000000;
  v284 = sub_25213E648(v653, v651);
  v286 = v285;
  v287 = *(v283 + 16);
  v288 = (v285 & 1) == 0;
  if (__OFADD__(v287, v288))
  {
LABEL_550:
    __break(1u);
    goto LABEL_551;
  }

  v289 = v284;
  if (sub_2520CB1CC(v282, v287 + v288))
  {
    v290 = sub_25213E648(v653, v651);
    if ((v286 & 1) != (v291 & 1))
    {
      goto LABEL_651;
    }

    v289 = v290;
  }

  if (v286)
  {
    memmove(&v894, (*(v824 + 56) + 232 * v289), 0xE8uLL);
    nullsub_1();
  }

  else
  {
    sub_2520CB6D4(&v894);
  }

  v845 = v896;
  v846 = v897;
  v847 = *v898;
  v848 = *&v898[16];
  __dst = v894;
  v844 = v895;
  v855 = *&v898[88];
  v854 = *&v898[72];
  v853 = *&v898[56];
  __src = *&v898[40];
  *v859 = *&v898[152];
  v858 = *&v898[136];
  v857 = *&v898[120];
  v856 = *&v898[104];
  v890 = v896;
  v891 = v897;
  v892 = *v898;
  *v893 = *&v898[16];
  v888 = v894;
  v889 = v895;
  *&v893[136] = *&v898[152];
  *&v893[120] = *&v898[136];
  *&v893[104] = *&v898[120];
  *&v893[88] = *&v898[104];
  *&v893[72] = *&v898[88];
  *&v893[56] = *&v898[72];
  *&v893[40] = *&v898[56];
  *&v893[24] = *&v898[40];
  *&v893[16] = *&v898[32];
  if (sub_2520CB6FC(&v888) == 1)
  {
    goto LABEL_619;
  }

  v877 = v845;
  v878 = v846;
  v879 = v847;
  v880 = v848;
  v875 = __dst;
  v876 = v844;
  *v881 = v280;
  *&v881[56] = v855;
  *&v881[40] = v854;
  *&v881[24] = v853;
  *&v881[8] = __src;
  *&v881[120] = *v859;
  *&v881[104] = v858;
  *&v881[88] = v857;
  *&v881[72] = v856;
  v883 = v844;
  v882 = __dst;
  *v887 = v848;
  v886 = v847;
  v884 = v845;
  v885 = v846;
  *&v887[64] = *&v881[48];
  *&v887[48] = *&v881[32];
  *&v887[16] = *v881;
  *&v887[32] = *&v881[16];
  *&v887[144] = *&v859[8];
  *&v887[128] = *&v881[112];
  *&v887[112] = *&v881[96];
  *&v887[80] = *&v881[64];
  *&v887[96] = *&v881[80];
  if (sub_2520CB6FC(&v882) == 1)
  {
    if (v286)
    {
      sub_2520CB714(*(v824 + 48) + 16 * v289);
      sub_2520CB018(v289, v824);
    }
  }

  else if (v286)
  {
    memmove((*(v824 + 56) + 232 * v289), &v875, 0xE8uLL);
  }

  else
  {
    *&v898[128] = *&v881[96];
    *&v898[144] = *&v881[112];
    *&v898[160] = *&v881[128];
    *&v898[64] = *&v881[32];
    *&v898[80] = *&v881[48];
    *&v898[112] = *&v881[80];
    *&v898[96] = *&v881[64];
    *v898 = v879;
    *&v898[16] = v880;
    *&v898[48] = *&v881[16];
    *&v898[32] = *v881;
    v894 = v875;
    v895 = v876;
    v897 = v878;
    v896 = v877;
    sub_2520A8CE4(v289, v653, v651, &v894, v824);
  }

  v870 = v845;
  v871 = v846;
  v872 = v847;
  v873 = v848;
  v868 = __dst;
  v869 = v844;
  *v874 = v280;
  *&v874[56] = v855;
  *&v874[40] = v854;
  *&v874[24] = v853;
  *&v874[8] = __src;
  *&v874[120] = *v859;
  *&v874[104] = v858;
  *&v874[88] = v857;
  *&v874[72] = v856;
  sub_2520A2D9C(&v875, &v860, &qword_27F4CDE30, &qword_2521444D8);
  sub_2520A2584(&v868, &qword_27F4CDE30, &qword_2521444D8);
  *(v29 + v281) = v824;
  swift_endAccess();

  v160 = 0x277CBE000uLL;
LABEL_235:
  v292 = objc_allocWithZone(*(v160 + 3024));
  v293 = sub_252141B6C();
  v294 = [v292 initWithSuiteName_];

  if (!v294)
  {
LABEL_579:
    __break(1u);
    goto LABEL_580;
  }

  v295 = sub_252141B6C();
  v296 = [v294 objectForKey_];

  if (!v296)
  {
    v889 = 0u;
    v888 = 0u;
    sub_2520A2584(&v888, &unk_27F4CE0B0, &unk_252144AF0);
    goto LABEL_254;
  }

  sub_25214215C();
  swift_unknownObjectRelease();
  sub_2520A2584(&v888, &unk_27F4CE0B0, &unk_252144AF0);
  v297 = objc_allocWithZone(*(v160 + 3024));
  v298 = sub_252141B6C();
  v299 = [v297 initWithSuiteName_];

  if (!v299)
  {
LABEL_618:
    __break(1u);
LABEL_619:
    __break(1u);
    goto LABEL_620;
  }

  v300 = sub_252141B6C();
  v301 = [v299 integerForKey_];

  v302 = OBJC_IVAR____TtC11HearingTest15HTNoiseAnalyzer_tuningDict;
  swift_beginAccess();
  v303 = swift_isUniquelyReferenced_nonNull_native();
  *&v814 = *(v29 + v302);
  v304 = v814;
  *(v29 + v302) = 0x8000000000000000;
  v305 = sub_25213E648(v653, v651);
  v307 = v306;
  v308 = *(v304 + 16);
  v309 = (v306 & 1) == 0;
  if (__OFADD__(v308, v309))
  {
LABEL_551:
    __break(1u);
    goto LABEL_552;
  }

  v310 = v305;
  if (sub_2520CB1CC(v303, v308 + v309))
  {
    v311 = sub_25213E648(v653, v651);
    if ((v307 & 1) != (v312 & 1))
    {
      goto LABEL_651;
    }

    v310 = v311;
  }

  if (v307)
  {
    memmove(&v888, (*(v814 + 56) + 232 * v310), 0xE8uLL);
    nullsub_1();
  }

  else
  {
    sub_2520CB6D4(&v888);
  }

  v838 = v892;
  v839 = *v893;
  *&v840 = *&v893[16];
  v834 = v888;
  v835 = v889;
  v837 = v891;
  v836 = v890;
  v846 = *&v893[80];
  v845 = *&v893[64];
  v844 = *&v893[48];
  __dst = *&v893[32];
  *&v850 = *&v893[144];
  v849 = *&v893[128];
  v848 = *&v893[112];
  v847 = *&v893[96];
  v886 = v892;
  *v887 = *v893;
  *&v887[144] = *&v893[144];
  v882 = v888;
  v883 = v889;
  v885 = v891;
  v884 = v890;
  *&v887[80] = *&v893[80];
  *&v887[64] = *&v893[64];
  *&v887[48] = *&v893[48];
  *&v887[32] = *&v893[32];
  *&v887[128] = *&v893[128];
  *&v887[112] = *&v893[112];
  *&v887[96] = *&v893[96];
  *&v887[16] = *&v893[16];
  if (sub_2520CB6FC(&v882) == 1)
  {
    goto LABEL_621;
  }

  v872 = v838;
  v873 = v839;
  v868 = v834;
  v869 = v835;
  v871 = v837;
  v870 = v836;
  *v874 = v840;
  *&v874[8] = v301;
  *&v874[64] = v846;
  *&v874[48] = v845;
  *&v874[32] = v844;
  *&v874[16] = __dst;
  *&v874[128] = v850;
  *&v874[112] = v849;
  *&v874[96] = v848;
  *&v874[80] = v847;
  v876 = v835;
  v875 = v834;
  v880 = v839;
  v879 = v838;
  v877 = v836;
  v878 = v837;
  *&v881[48] = v845;
  *&v881[32] = v844;
  *v881 = *v874;
  *&v881[16] = __dst;
  *&v881[128] = v850;
  *&v881[112] = v849;
  *&v881[96] = v848;
  *&v881[64] = v846;
  *&v881[80] = v847;
  if (sub_2520CB6FC(&v875) == 1)
  {
    if (v307)
    {
      sub_2520CB714(*(v814 + 48) + 16 * v310);
      sub_2520CB018(v310, v814);
    }
  }

  else if (v307)
  {
    memmove((*(v814 + 56) + 232 * v310), &v868, 0xE8uLL);
  }

  else
  {
    *&v893[112] = *&v874[96];
    *&v893[128] = *&v874[112];
    *&v893[144] = *&v874[128];
    *&v893[48] = *&v874[32];
    *&v893[64] = *&v874[48];
    *&v893[96] = *&v874[80];
    *&v893[80] = *&v874[64];
    v892 = v872;
    *v893 = v873;
    *&v893[32] = *&v874[16];
    *&v893[16] = *v874;
    v888 = v868;
    v889 = v869;
    v891 = v871;
    v890 = v870;
    sub_2520A8CE4(v310, v653, v651, &v888, v814);
  }

  v864 = v838;
  v865 = v839;
  v860 = v834;
  v861 = v835;
  v863 = v837;
  v862 = v836;
  *&v866 = v840;
  *(&v866 + 1) = v301;
  *&v867[48] = v846;
  *&v867[32] = v845;
  *&v867[16] = v844;
  *v867 = __dst;
  *&v867[112] = v850;
  *&v867[96] = v849;
  *&v867[80] = v848;
  *&v867[64] = v847;
  sub_2520A2D9C(&v868, &__src, &qword_27F4CDE30, &qword_2521444D8);
  sub_2520A2584(&v860, &qword_27F4CDE30, &qword_2521444D8);
  v29 = v650;
  *(v650 + v302) = v814;
  swift_endAccess();

LABEL_254:
  v313 = objc_allocWithZone(*(v160 + 3024));
  v314 = sub_252141B6C();
  v315 = [v313 initWithSuiteName_];

  if (!v315)
  {
LABEL_580:
    __break(1u);
    goto LABEL_581;
  }

  v316 = sub_252141B6C();
  v317 = [v315 objectForKey_];

  if (!v317)
  {
    v883 = 0u;
    v882 = 0u;
    sub_2520A2584(&v882, &unk_27F4CE0B0, &unk_252144AF0);
    goto LABEL_273;
  }

  sub_25214215C();
  swift_unknownObjectRelease();
  sub_2520A2584(&v882, &unk_27F4CE0B0, &unk_252144AF0);
  v318 = objc_allocWithZone(*(v160 + 3024));
  v319 = sub_252141B6C();
  v320 = [v318 initWithSuiteName_];

  if (!v320)
  {
LABEL_620:
    __break(1u);
LABEL_621:
    __break(1u);
    goto LABEL_622;
  }

  v321 = sub_252141B6C();
  [v320 doubleForKey_];
  v323 = v322;

  v324 = OBJC_IVAR____TtC11HearingTest15HTNoiseAnalyzer_tuningDict;
  swift_beginAccess();
  v325 = swift_isUniquelyReferenced_nonNull_native();
  *&v803 = *(v29 + v324);
  v326 = v803;
  *(v29 + v324) = 0x8000000000000000;
  v327 = sub_25213E648(v653, v651);
  v329 = v328;
  v330 = *(v326 + 16);
  v331 = (v328 & 1) == 0;
  if (__OFADD__(v330, v331))
  {
LABEL_552:
    __break(1u);
    goto LABEL_553;
  }

  v332 = v327;
  if (sub_2520CB1CC(v325, v330 + v331))
  {
    v333 = sub_25213E648(v653, v651);
    if ((v329 & 1) != (v334 & 1))
    {
      goto LABEL_651;
    }

    v332 = v333;
  }

  if (v329)
  {
    memmove(&v882, (*(v803 + 56) + 232 * v332), 0xE8uLL);
    nullsub_1();
  }

  else
  {
    sub_2520CB6D4(&v882);
  }

  v838 = v886;
  v839 = *v887;
  v840 = *&v887[16];
  v834 = v882;
  v835 = v883;
  v837 = v885;
  v836 = v884;
  v825 = *&v887[56];
  v824 = *&v887[40];
  v830 = *&v887[136];
  v829 = *&v887[120];
  v828 = *&v887[104];
  v826 = *&v887[72];
  v827 = *&v887[88];
  v879 = v886;
  v880 = *v887;
  *v881 = *&v887[16];
  v875 = v882;
  v876 = v883;
  v878 = v885;
  v877 = v884;
  *&v881[56] = *&v887[72];
  *&v881[40] = *&v887[56];
  *&v881[24] = *&v887[40];
  *&v881[120] = *&v887[136];
  *&v881[104] = *&v887[120];
  *&v881[88] = *&v887[104];
  *&v881[72] = *&v887[88];
  *&v881[16] = *&v887[32];
  if (sub_2520CB6FC(&v875) == 1)
  {
    goto LABEL_623;
  }

  v864 = v838;
  v865 = v839;
  v866 = v840;
  v860 = v834;
  v861 = v835;
  v863 = v837;
  v862 = v836;
  *v867 = v323;
  *&v867[40] = v826;
  *&v867[24] = v825;
  *&v867[8] = v824;
  *&v867[104] = v830;
  *&v867[88] = v829;
  *&v867[72] = v828;
  *&v867[56] = v827;
  v869 = v835;
  v868 = v834;
  v873 = v839;
  v872 = v838;
  v870 = v836;
  v871 = v837;
  *&v874[48] = *&v867[32];
  *&v874[32] = *&v867[16];
  *v874 = v840;
  *&v874[16] = *v867;
  *&v874[128] = *(&v830 + 1);
  *&v874[112] = *&v867[96];
  *&v874[96] = *&v867[80];
  *&v874[64] = *&v867[48];
  *&v874[80] = *&v867[64];
  if (sub_2520CB6FC(&v868) == 1)
  {
    if (v329)
    {
      sub_2520CB714(*(v803 + 48) + 16 * v332);
      sub_2520CB018(v332, v803);
    }
  }

  else if (v329)
  {
    memmove((*(v803 + 56) + 232 * v332), &v860, 0xE8uLL);
  }

  else
  {
    *&v887[112] = *&v867[80];
    *&v887[128] = *&v867[96];
    *&v887[144] = *&v867[112];
    *&v887[48] = *&v867[16];
    *&v887[64] = *&v867[32];
    *&v887[96] = *&v867[64];
    *&v887[80] = *&v867[48];
    v886 = v864;
    *v887 = v865;
    *&v887[32] = *v867;
    *&v887[16] = v866;
    v882 = v860;
    v883 = v861;
    v885 = v863;
    v884 = v862;
    sub_2520A8CE4(v332, v653, v651, &v882, v803);
  }

  v856 = v838;
  v857 = v839;
  v858 = v840;
  __src = v834;
  v853 = v835;
  v855 = v837;
  v854 = v836;
  *v859 = v323;
  *&v859[40] = v826;
  *&v859[24] = v825;
  *&v859[8] = v824;
  *&v859[104] = v830;
  *&v859[88] = v829;
  *&v859[72] = v828;
  *&v859[56] = v827;
  sub_2520A2D9C(&v860, &__dst, &qword_27F4CDE30, &qword_2521444D8);
  sub_2520A2584(&__src, &qword_27F4CDE30, &qword_2521444D8);
  *(v29 + v324) = v803;
  swift_endAccess();

  v160 = 0x277CBE000uLL;
LABEL_273:
  v335 = objc_allocWithZone(*(v160 + 3024));
  v336 = sub_252141B6C();
  v337 = [v335 initWithSuiteName_];

  if (!v337)
  {
LABEL_581:
    __break(1u);
    goto LABEL_582;
  }

  v338 = sub_252141B6C();
  v339 = [v337 objectForKey_];

  if (!v339)
  {
    v876 = 0u;
    v875 = 0u;
    sub_2520A2584(&v875, &unk_27F4CE0B0, &unk_252144AF0);
    goto LABEL_292;
  }

  sub_25214215C();
  swift_unknownObjectRelease();
  sub_2520A2584(&v875, &unk_27F4CE0B0, &unk_252144AF0);
  v340 = objc_allocWithZone(*(v160 + 3024));
  v341 = sub_252141B6C();
  v342 = [v340 initWithSuiteName_];

  if (!v342)
  {
LABEL_622:
    __break(1u);
LABEL_623:
    __break(1u);
    goto LABEL_624;
  }

  v343 = sub_252141B6C();
  [v342 doubleForKey_];
  v345 = v344;

  v346 = OBJC_IVAR____TtC11HearingTest15HTNoiseAnalyzer_tuningDict;
  swift_beginAccess();
  v347 = swift_isUniquelyReferenced_nonNull_native();
  *&v792 = *(v29 + v346);
  v348 = v792;
  *(v29 + v346) = 0x8000000000000000;
  v349 = sub_25213E648(v653, v651);
  v351 = v350;
  v352 = *(v348 + 16);
  v353 = (v350 & 1) == 0;
  if (__OFADD__(v352, v353))
  {
LABEL_553:
    __break(1u);
    goto LABEL_554;
  }

  v354 = v349;
  if (sub_2520CB1CC(v347, v352 + v353))
  {
    v355 = sub_25213E648(v653, v651);
    if ((v351 & 1) != (v356 & 1))
    {
      goto LABEL_651;
    }

    v354 = v355;
  }

  if (v351)
  {
    memmove(&v875, (*(v792 + 56) + 232 * v354), 0xE8uLL);
    nullsub_1();
  }

  else
  {
    sub_2520CB6D4(&v875);
  }

  v828 = v879;
  v829 = v880;
  v830 = *v881;
  *&v831 = *&v881[16];
  v824 = v875;
  v825 = v876;
  v826 = v877;
  v827 = v878;
  *&v820 = *&v881[128];
  v819 = *&v881[112];
  v818 = *&v881[96];
  v814 = *&v881[32];
  v815 = *&v881[48];
  v817 = *&v881[80];
  v816 = *&v881[64];
  v872 = v879;
  v873 = v880;
  *v874 = *v881;
  *&v874[16] = *&v881[16];
  v868 = v875;
  v869 = v876;
  v870 = v877;
  v871 = v878;
  *&v874[48] = *&v881[48];
  *&v874[32] = *&v881[32];
  *&v874[128] = *&v881[128];
  *&v874[112] = *&v881[112];
  *&v874[96] = *&v881[96];
  *&v874[64] = *&v881[64];
  *&v874[80] = *&v881[80];
  if (sub_2520CB6FC(&v868) == 1)
  {
    goto LABEL_625;
  }

  *v859 = v831;
  v856 = v828;
  v857 = v829;
  v858 = v830;
  __src = v824;
  v853 = v825;
  v854 = v826;
  v855 = v827;
  *&v859[8] = v345;
  *&v859[32] = v815;
  *&v859[16] = v814;
  *&v859[112] = v820;
  *&v859[96] = v819;
  *&v859[80] = v818;
  *&v859[48] = v816;
  *&v859[64] = v817;
  v861 = v825;
  v860 = v824;
  v865 = v829;
  v864 = v828;
  v862 = v826;
  v863 = v827;
  *&v867[32] = v815;
  *&v867[16] = v814;
  v866 = v830;
  *v867 = *v859;
  *&v867[112] = v820;
  *&v867[96] = v819;
  *&v867[80] = v818;
  *&v867[48] = v816;
  *&v867[64] = v817;
  if (sub_2520CB6FC(&v860) == 1)
  {
    if (v351)
    {
      sub_2520CB714(*(v792 + 48) + 16 * v354);
      sub_2520CB018(v354, v792);
    }
  }

  else if (v351)
  {
    memmove((*(v792 + 56) + 232 * v354), &__src, 0xE8uLL);
  }

  else
  {
    *&v881[96] = *&v859[80];
    *&v881[112] = *&v859[96];
    *&v881[128] = *&v859[112];
    *&v881[32] = *&v859[16];
    *&v881[48] = *&v859[32];
    *&v881[80] = *&v859[64];
    *&v881[64] = *&v859[48];
    v879 = v856;
    v880 = v857;
    *&v881[16] = *v859;
    *v881 = v858;
    v875 = __src;
    v876 = v853;
    v878 = v855;
    v877 = v854;
    sub_2520A8CE4(v354, v653, v651, &v875, v792);
  }

  v847 = v828;
  v848 = v829;
  v849 = v830;
  *&v850 = v831;
  __dst = v824;
  v844 = v825;
  v845 = v826;
  v846 = v827;
  *(&v850 + 1) = v345;
  *&v851[96] = v820;
  *&v851[80] = v819;
  *&v851[64] = v818;
  *&v851[48] = v817;
  *&v851[32] = v816;
  *&v851[16] = v815;
  *v851 = v814;
  sub_2520A2D9C(&__src, &v834, &qword_27F4CDE30, &qword_2521444D8);
  sub_2520A2584(&__dst, &qword_27F4CDE30, &qword_2521444D8);
  *(v29 + v346) = v792;
  swift_endAccess();

  v160 = 0x277CBE000uLL;
LABEL_292:
  v357 = objc_allocWithZone(*(v160 + 3024));
  v358 = sub_252141B6C();
  v359 = [v357 initWithSuiteName_];

  if (!v359)
  {
LABEL_582:
    __break(1u);
    goto LABEL_583;
  }

  v360 = sub_252141B6C();
  v361 = [v359 objectForKey_];

  if (!v361)
  {
    v869 = 0u;
    v868 = 0u;
    sub_2520A2584(&v868, &unk_27F4CE0B0, &unk_252144AF0);
    v379 = v653;
    goto LABEL_311;
  }

  sub_25214215C();
  swift_unknownObjectRelease();
  sub_2520A2584(&v868, &unk_27F4CE0B0, &unk_252144AF0);
  v362 = objc_allocWithZone(*(v160 + 3024));
  v363 = sub_252141B6C();
  v364 = [v362 initWithSuiteName_];

  if (!v364)
  {
LABEL_624:
    __break(1u);
LABEL_625:
    __break(1u);
    goto LABEL_626;
  }

  v365 = sub_252141B6C();
  [v364 doubleForKey_];
  v367 = v366;

  v368 = OBJC_IVAR____TtC11HearingTest15HTNoiseAnalyzer_tuningDict;
  swift_beginAccess();
  v369 = swift_isUniquelyReferenced_nonNull_native();
  *&v780 = *(v29 + v368);
  v370 = v780;
  *(v29 + v368) = 0x8000000000000000;
  v371 = sub_25213E648(v653, v651);
  v373 = v372;
  v374 = *(v370 + 16);
  v375 = (v372 & 1) == 0;
  if (__OFADD__(v374, v375))
  {
LABEL_554:
    __break(1u);
    goto LABEL_555;
  }

  v376 = v371;
  if (sub_2520CB1CC(v369, v374 + v375))
  {
    v377 = sub_25213E648(v653, v651);
    if ((v373 & 1) != (v378 & 1))
    {
      goto LABEL_651;
    }

    v376 = v377;
  }

  if (v373)
  {
    memmove(&v868, (*(v780 + 56) + 232 * v376), 0xE8uLL);
    nullsub_1();
  }

  else
  {
    sub_2520CB6D4(&v868);
  }

  v818 = v872;
  v819 = v873;
  v820 = *v874;
  v821 = *&v874[16];
  v814 = v868;
  v815 = v869;
  v816 = v870;
  v817 = v871;
  v808 = *&v874[120];
  v807 = *&v874[104];
  v806 = *&v874[88];
  v805 = *&v874[72];
  v804 = *&v874[56];
  v803 = *&v874[40];
  v864 = v872;
  v865 = v873;
  v866 = *v874;
  *v867 = *&v874[16];
  v860 = v868;
  v861 = v869;
  v862 = v870;
  v863 = v871;
  *&v867[40] = *&v874[56];
  *&v867[24] = *&v874[40];
  *&v867[104] = *&v874[120];
  *&v867[88] = *&v874[104];
  *&v867[72] = *&v874[88];
  *&v867[56] = *&v874[72];
  *&v867[16] = *&v874[32];
  if (sub_2520CB6FC(&v860) == 1)
  {
    goto LABEL_627;
  }

  v847 = v818;
  v848 = v819;
  v849 = v820;
  v850 = v821;
  __dst = v814;
  v844 = v815;
  v845 = v816;
  v846 = v817;
  *v851 = v367;
  *&v851[24] = v804;
  *&v851[8] = v803;
  *&v851[88] = v808;
  *&v851[72] = v807;
  *&v851[56] = v806;
  *&v851[40] = v805;
  v853 = v815;
  __src = v814;
  v857 = v819;
  v856 = v818;
  v854 = v816;
  v855 = v817;
  *&v859[32] = *&v851[16];
  *&v859[16] = *v851;
  v858 = v820;
  *v859 = v821;
  *&v859[112] = *(&v808 + 1);
  *&v859[96] = *&v851[80];
  *&v859[80] = *&v851[64];
  *&v859[48] = *&v851[32];
  *&v859[64] = *&v851[48];
  v379 = v653;
  if (sub_2520CB6FC(&__src) == 1)
  {
    if (v373)
    {
      sub_2520CB714(*(v780 + 48) + 16 * v376);
      sub_2520CB018(v376, v780);
    }
  }

  else if (v373)
  {
    memmove((*(v780 + 56) + 232 * v376), &__dst, 0xE8uLL);
  }

  else
  {
    *&v874[96] = *&v851[64];
    *&v874[112] = *&v851[80];
    *&v874[128] = *&v851[96];
    *&v874[32] = *v851;
    *&v874[48] = *&v851[16];
    *&v874[80] = *&v851[48];
    *&v874[64] = *&v851[32];
    v872 = v847;
    v873 = v848;
    *&v874[16] = v850;
    *v874 = v849;
    v868 = __dst;
    v869 = v844;
    v871 = v846;
    v870 = v845;
    sub_2520A8CE4(v376, v653, v651, &v868, v780);
  }

  v838 = v818;
  v839 = v819;
  v840 = v820;
  v841 = v821;
  v834 = v814;
  v835 = v815;
  v836 = v816;
  v837 = v817;
  *v842 = v367;
  *&v842[88] = v808;
  *&v842[72] = v807;
  *&v842[56] = v806;
  *&v842[40] = v805;
  *&v842[24] = v804;
  *&v842[8] = v803;
  sub_2520A2D9C(&__dst, &v824, &qword_27F4CDE30, &qword_2521444D8);
  sub_2520A2584(&v834, &qword_27F4CDE30, &qword_2521444D8);
  v29 = v650;
  *(v650 + v368) = v780;
  swift_endAccess();

  v160 = 0x277CBE000uLL;
LABEL_311:
  v380 = objc_allocWithZone(*(v160 + 3024));
  v381 = sub_252141B6C();
  v382 = [v380 initWithSuiteName_];

  if (!v382)
  {
LABEL_583:
    __break(1u);
    goto LABEL_584;
  }

  v383 = sub_252141B6C();
  v384 = [v382 objectForKey_];

  if (!v384)
  {
    v861 = 0u;
    v860 = 0u;
    sub_2520A2584(&v860, &unk_27F4CE0B0, &unk_252144AF0);
    goto LABEL_330;
  }

  sub_25214215C();
  swift_unknownObjectRelease();
  sub_2520A2584(&v860, &unk_27F4CE0B0, &unk_252144AF0);
  v385 = objc_allocWithZone(*(v160 + 3024));
  v386 = sub_252141B6C();
  v387 = [v385 initWithSuiteName_];

  if (!v387)
  {
LABEL_626:
    __break(1u);
LABEL_627:
    __break(1u);
    goto LABEL_628;
  }

  v388 = sub_252141B6C();
  [v387 doubleForKey_];
  v390 = v389;

  v391 = OBJC_IVAR____TtC11HearingTest15HTNoiseAnalyzer_tuningDict;
  swift_beginAccess();
  v392 = swift_isUniquelyReferenced_nonNull_native();
  *&v768 = *(v29 + v391);
  v393 = v768;
  *(v29 + v391) = 0x8000000000000000;
  v394 = sub_25213E648(v379, v651);
  v396 = v395;
  v397 = *(v393 + 16);
  v398 = (v395 & 1) == 0;
  if (__OFADD__(v397, v398))
  {
LABEL_555:
    __break(1u);
    goto LABEL_556;
  }

  v399 = v394;
  if (sub_2520CB1CC(v392, v397 + v398))
  {
    v400 = sub_25213E648(v379, v651);
    if ((v396 & 1) != (v401 & 1))
    {
      goto LABEL_651;
    }

    v399 = v400;
  }

  if (v396)
  {
    memmove(&v860, (*(v768 + 56) + 232 * v399), 0xE8uLL);
    nullsub_1();
  }

  else
  {
    sub_2520CB6D4(&v860);
  }

  v809 = v866;
  v810 = *v867;
  *&v811 = *&v867[16];
  v805 = v862;
  v806 = v863;
  v808 = v865;
  v807 = v864;
  v804 = v861;
  v803 = v860;
  v794 = *&v867[64];
  v795 = *&v867[80];
  v796 = *&v867[96];
  *&v797 = *&v867[112];
  v792 = *&v867[32];
  v793 = *&v867[48];
  v858 = v866;
  *v859 = *v867;
  *&v859[16] = *&v867[16];
  v854 = v862;
  v855 = v863;
  v857 = v865;
  v856 = v864;
  v853 = v861;
  __src = v860;
  *&v859[64] = *&v867[64];
  *&v859[80] = *&v867[80];
  *&v859[96] = *&v867[96];
  *&v859[112] = *&v867[112];
  *&v859[32] = *&v867[32];
  *&v859[48] = *&v867[48];
  if (sub_2520CB6FC(&__src) == 1)
  {
    goto LABEL_629;
  }

  v840 = v809;
  v841 = v810;
  *v842 = v811;
  v836 = v805;
  v837 = v806;
  v839 = v808;
  v838 = v807;
  v835 = v804;
  v834 = v803;
  *&v842[8] = v390;
  *&v842[48] = v794;
  *&v842[64] = v795;
  *&v842[80] = v796;
  *&v842[96] = v797;
  *&v842[16] = v792;
  *&v842[32] = v793;
  v844 = v804;
  __dst = v803;
  v848 = v808;
  v847 = v807;
  v845 = v805;
  v846 = v806;
  v849 = v809;
  v850 = v810;
  *&v851[96] = v797;
  *&v851[80] = v796;
  *&v851[64] = v795;
  *&v851[32] = v793;
  *&v851[48] = v794;
  *&v851[16] = v792;
  *v851 = *v842;
  if (sub_2520CB6FC(&__dst) == 1)
  {
    if (v396)
    {
      sub_2520CB714(*(v768 + 48) + 16 * v399);
      sub_2520CB018(v399, v768);
    }
  }

  else if (v396)
  {
    memmove((*(v768 + 56) + 232 * v399), &v834, 0xE8uLL);
  }

  else
  {
    *&v867[80] = *&v842[64];
    *&v867[96] = *&v842[80];
    *&v867[112] = *&v842[96];
    *&v867[16] = *v842;
    *&v867[32] = *&v842[16];
    *&v867[64] = *&v842[48];
    *&v867[48] = *&v842[32];
    v864 = v838;
    v865 = v839;
    *v867 = v841;
    v866 = v840;
    v860 = v834;
    v861 = v835;
    v863 = v837;
    v862 = v836;
    sub_2520A8CE4(v399, v379, v651, &v860, v768);
  }

  v830 = v809;
  v831 = v810;
  *&v832 = v811;
  v826 = v805;
  v827 = v806;
  v829 = v808;
  v828 = v807;
  v825 = v804;
  v824 = v803;
  *(&v832 + 1) = v390;
  *&v833[32] = v794;
  *&v833[48] = v795;
  *&v833[64] = v796;
  *&v833[80] = v797;
  *v833 = v792;
  *&v833[16] = v793;
  sub_2520A2D9C(&v834, &v814, &qword_27F4CDE30, &qword_2521444D8);
  sub_2520A2584(&v824, &qword_27F4CDE30, &qword_2521444D8);
  v29 = v650;
  *(v650 + v391) = v768;
  swift_endAccess();

  v160 = 0x277CBE000uLL;
LABEL_330:
  v402 = objc_allocWithZone(*(v160 + 3024));
  v403 = sub_252141B6C();
  v404 = [v402 initWithSuiteName_];

  if (!v404)
  {
LABEL_584:
    __break(1u);
    goto LABEL_585;
  }

  v405 = sub_252141B6C();
  v406 = [v404 objectForKey_];

  if (!v406)
  {
    v853 = 0u;
    __src = 0u;
    sub_2520A2584(&__src, &unk_27F4CE0B0, &unk_252144AF0);
    goto LABEL_349;
  }

  sub_25214215C();
  swift_unknownObjectRelease();
  sub_2520A2584(&__src, &unk_27F4CE0B0, &unk_252144AF0);
  v407 = objc_allocWithZone(*(v160 + 3024));
  v408 = sub_252141B6C();
  v409 = [v407 initWithSuiteName_];

  if (!v409)
  {
LABEL_628:
    __break(1u);
LABEL_629:
    __break(1u);
    goto LABEL_630;
  }

  v410 = sub_252141B6C();
  [v409 doubleForKey_];
  v412 = v411;

  v413 = OBJC_IVAR____TtC11HearingTest15HTNoiseAnalyzer_tuningDict;
  swift_beginAccess();
  v414 = swift_isUniquelyReferenced_nonNull_native();
  *&v755 = *(v29 + v413);
  v415 = v755;
  *(v29 + v413) = 0x8000000000000000;
  v416 = sub_25213E648(v653, v651);
  v418 = v417;
  v419 = *(v415 + 16);
  v420 = (v417 & 1) == 0;
  if (__OFADD__(v419, v420))
  {
LABEL_556:
    __break(1u);
    goto LABEL_557;
  }

  v421 = v416;
  if (sub_2520CB1CC(v414, v419 + v420))
  {
    v422 = sub_25213E648(v653, v651);
    if ((v418 & 1) != (v423 & 1))
    {
      goto LABEL_651;
    }

    v421 = v422;
  }

  if (v418)
  {
    memmove(&__src, (*(v755 + 56) + 232 * v421), 0xE8uLL);
    nullsub_1();
  }

  else
  {
    sub_2520CB6D4(&__src);
  }

  v798 = v858;
  v799 = *v859;
  v800 = *&v859[16];
  v794 = v854;
  v795 = v855;
  v797 = v857;
  v796 = v856;
  v793 = v853;
  v792 = __src;
  v782 = *&v859[72];
  v783 = *&v859[88];
  v784 = *&v859[104];
  v781 = *&v859[56];
  v780 = *&v859[40];
  v849 = v858;
  v850 = *v859;
  *v851 = *&v859[16];
  v845 = v854;
  v846 = v855;
  v848 = v857;
  v847 = v856;
  v844 = v853;
  __dst = __src;
  *&v851[40] = *&v859[56];
  *&v851[56] = *&v859[72];
  *&v851[72] = *&v859[88];
  *&v851[88] = *&v859[104];
  *&v851[24] = *&v859[40];
  *&v851[16] = *&v859[32];
  if (sub_2520CB6FC(&__dst) == 1)
  {
    goto LABEL_631;
  }

  v830 = v798;
  v831 = v799;
  v832 = v800;
  v826 = v794;
  v827 = v795;
  v829 = v797;
  v828 = v796;
  *&v833[40] = v782;
  *&v833[24] = v781;
  *&v833[56] = v783;
  *&v833[72] = v784;
  v825 = v793;
  v824 = v792;
  *v833 = v412;
  *&v833[8] = v780;
  v838 = v796;
  v839 = v797;
  v841 = v799;
  v840 = v798;
  v834 = v792;
  v835 = v793;
  v837 = v795;
  v836 = v794;
  *&v842[64] = *&v833[48];
  *&v842[80] = *&v833[64];
  *&v842[96] = *(&v784 + 1);
  *v842 = v800;
  *&v842[16] = *v833;
  *&v842[48] = *&v833[32];
  *&v842[32] = *&v833[16];
  if (sub_2520CB6FC(&v834) == 1)
  {
    if (v418)
    {
      sub_2520CB714(*(v755 + 48) + 16 * v421);
      sub_2520CB018(v421, v755);
    }
  }

  else if (v418)
  {
    memmove((*(v755 + 56) + 232 * v421), &v824, 0xE8uLL);
  }

  else
  {
    *&v859[80] = *&v833[48];
    *&v859[96] = *&v833[64];
    *&v859[112] = *&v833[80];
    *&v859[16] = v832;
    *&v859[32] = *v833;
    *&v859[64] = *&v833[32];
    *&v859[48] = *&v833[16];
    v856 = v828;
    v857 = v829;
    *v859 = v831;
    v858 = v830;
    __src = v824;
    v853 = v825;
    v855 = v827;
    v854 = v826;
    sub_2520A8CE4(v421, v653, v651, &__src, v755);
  }

  v820 = v798;
  v821 = v799;
  v822 = v800;
  v816 = v794;
  v817 = v795;
  v819 = v797;
  v818 = v796;
  v815 = v793;
  v814 = v792;
  *v823 = v412;
  *&v823[24] = v781;
  *&v823[40] = v782;
  *&v823[56] = v783;
  *&v823[72] = v784;
  *&v823[8] = v780;
  sub_2520A2D9C(&v824, &v803, &qword_27F4CDE30, &qword_2521444D8);
  sub_2520A2584(&v814, &qword_27F4CDE30, &qword_2521444D8);
  v29 = v650;
  *(v650 + v413) = v755;
  swift_endAccess();

  v160 = 0x277CBE000uLL;
LABEL_349:
  v424 = objc_allocWithZone(*(v160 + 3024));
  v425 = sub_252141B6C();
  v426 = [v424 initWithSuiteName_];

  if (!v426)
  {
LABEL_585:
    __break(1u);
    goto LABEL_586;
  }

  v427 = sub_252141B6C();
  v428 = [v426 objectForKey_];

  if (!v428)
  {
    v844 = 0u;
    __dst = 0u;
    sub_2520A2584(&__dst, &unk_27F4CE0B0, &unk_252144AF0);
    goto LABEL_368;
  }

  sub_25214215C();
  swift_unknownObjectRelease();
  sub_2520A2584(&__dst, &unk_27F4CE0B0, &unk_252144AF0);
  v429 = objc_allocWithZone(*(v160 + 3024));
  v430 = sub_252141B6C();
  v431 = [v429 initWithSuiteName_];

  if (!v431)
  {
LABEL_630:
    __break(1u);
LABEL_631:
    __break(1u);
    goto LABEL_632;
  }

  v432 = sub_252141B6C();
  v433 = [v431 integerForKey_];

  v434 = OBJC_IVAR____TtC11HearingTest15HTNoiseAnalyzer_tuningDict;
  swift_beginAccess();
  v435 = swift_isUniquelyReferenced_nonNull_native();
  *&v742 = *(v29 + v434);
  v436 = v742;
  *(v29 + v434) = 0x8000000000000000;
  v437 = sub_25213E648(v653, v651);
  v439 = v438;
  v440 = *(v436 + 16);
  v441 = (v438 & 1) == 0;
  if (__OFADD__(v440, v441))
  {
LABEL_557:
    __break(1u);
    goto LABEL_558;
  }

  v442 = v437;
  if (sub_2520CB1CC(v435, v440 + v441))
  {
    v443 = sub_25213E648(v653, v651);
    if ((v439 & 1) != (v444 & 1))
    {
      goto LABEL_651;
    }

    v442 = v443;
  }

  if (v439)
  {
    memmove(&__dst, (*(v742 + 56) + 232 * v442), 0xE8uLL);
    nullsub_1();
  }

  else
  {
    sub_2520CB6D4(&__dst);
  }

  v786 = v849;
  v787 = v850;
  v788 = *v851;
  *&v789 = *&v851[16];
  v782 = v845;
  v783 = v846;
  v784 = v847;
  v785 = v848;
  v780 = __dst;
  v781 = v844;
  v770 = *&v851[64];
  v771 = *&v851[80];
  *&v772 = *&v851[96];
  v769 = *&v851[48];
  v768 = *&v851[32];
  v840 = v849;
  v841 = v850;
  *v842 = *v851;
  *&v842[96] = *&v851[96];
  v836 = v845;
  v837 = v846;
  v838 = v847;
  v839 = v848;
  v834 = __dst;
  v835 = v844;
  *&v842[64] = *&v851[64];
  *&v842[80] = *&v851[80];
  *&v842[48] = *&v851[48];
  *&v842[32] = *&v851[32];
  *&v842[16] = *&v851[16];
  if (sub_2520CB6FC(&v834) == 1)
  {
    goto LABEL_633;
  }

  v820 = v786;
  v821 = v787;
  v822 = v788;
  v816 = v782;
  v817 = v783;
  v818 = v784;
  v819 = v785;
  v814 = v780;
  v815 = v781;
  *v823 = v789;
  *&v823[8] = v433;
  *&v823[48] = v770;
  *&v823[64] = v771;
  *&v823[80] = v772;
  *&v823[32] = v769;
  *&v823[16] = v768;
  *&v833[48] = v770;
  *&v833[64] = v771;
  *&v833[80] = v772;
  v830 = v786;
  v831 = v787;
  *&v833[32] = v769;
  *&v833[16] = v768;
  v826 = v782;
  v827 = v783;
  v828 = v784;
  v829 = v785;
  v824 = v780;
  v825 = v781;
  v832 = v788;
  *v833 = *v823;
  if (sub_2520CB6FC(&v824) == 1)
  {
    if (v439)
    {
      sub_2520CB714(*(v742 + 48) + 16 * v442);
      sub_2520CB018(v442, v742);
    }
  }

  else if (v439)
  {
    memmove((*(v742 + 56) + 232 * v442), &v814, 0xE8uLL);
  }

  else
  {
    *&v851[64] = *&v823[48];
    *&v851[80] = *&v823[64];
    *&v851[96] = *&v823[80];
    *v851 = v822;
    *&v851[16] = *v823;
    *&v851[48] = *&v823[32];
    *&v851[32] = *&v823[16];
    v847 = v818;
    v848 = v819;
    v850 = v821;
    v849 = v820;
    __dst = v814;
    v844 = v815;
    v846 = v817;
    v845 = v816;
    sub_2520A8CE4(v442, v653, v651, &__dst, v742);
  }

  v809 = v786;
  v810 = v787;
  v811 = v788;
  v805 = v782;
  v806 = v783;
  v807 = v784;
  v808 = v785;
  v803 = v780;
  v804 = v781;
  *&v812 = v789;
  *(&v812 + 1) = v433;
  *&v813[32] = v770;
  *&v813[48] = v771;
  *&v813[64] = v772;
  *&v813[16] = v769;
  *v813 = v768;
  sub_2520A2D9C(&v814, &v792, &qword_27F4CDE30, &qword_2521444D8);
  sub_2520A2584(&v803, &qword_27F4CDE30, &qword_2521444D8);
  v29 = v650;
  *(v650 + v434) = v742;
  swift_endAccess();

  v160 = 0x277CBE000uLL;
LABEL_368:
  v445 = objc_allocWithZone(*(v160 + 3024));
  v446 = sub_252141B6C();
  v447 = [v445 initWithSuiteName_];

  if (!v447)
  {
LABEL_586:
    __break(1u);
    goto LABEL_587;
  }

  v448 = sub_252141B6C();
  v449 = [v447 objectForKey_];

  if (!v449)
  {
    v835 = 0u;
    v834 = 0u;
    sub_2520A2584(&v834, &unk_27F4CE0B0, &unk_252144AF0);
    v467 = v653;
    goto LABEL_387;
  }

  sub_25214215C();
  swift_unknownObjectRelease();
  sub_2520A2584(&v834, &unk_27F4CE0B0, &unk_252144AF0);
  v450 = objc_allocWithZone(*(v160 + 3024));
  v451 = sub_252141B6C();
  v452 = [v450 initWithSuiteName_];

  if (!v452)
  {
LABEL_632:
    __break(1u);
LABEL_633:
    __break(1u);
    goto LABEL_634;
  }

  v453 = sub_252141B6C();
  [v452 doubleForKey_];
  v455 = v454;

  v456 = OBJC_IVAR____TtC11HearingTest15HTNoiseAnalyzer_tuningDict;
  swift_beginAccess();
  v457 = swift_isUniquelyReferenced_nonNull_native();
  *&v712 = *(v29 + v456);
  v458 = v712;
  *(v29 + v456) = 0x8000000000000000;
  v459 = sub_25213E648(v653, v651);
  v461 = v460;
  v462 = *(v458 + 16);
  v463 = (v460 & 1) == 0;
  if (__OFADD__(v462, v463))
  {
LABEL_558:
    __break(1u);
    goto LABEL_559;
  }

  v464 = v459;
  if (sub_2520CB1CC(v457, v462 + v463))
  {
    v465 = sub_25213E648(v653, v651);
    if ((v461 & 1) != (v466 & 1))
    {
      goto LABEL_651;
    }

    v464 = v465;
  }

  if (v461)
  {
    memmove(&v834, (*(v712 + 56) + 232 * v464), 0xE8uLL);
    nullsub_1();
  }

  else
  {
    sub_2520CB6D4(&v834);
  }

  v774 = v840;
  v775 = v841;
  v776 = *v842;
  v777 = *&v842[16];
  v770 = v836;
  v771 = v837;
  v772 = v838;
  v773 = v839;
  v768 = v834;
  v769 = v835;
  v755 = *&v842[40];
  v756 = *&v842[56];
  v757 = *&v842[72];
  v758 = *&v842[88];
  v830 = v840;
  v831 = v841;
  v832 = *v842;
  *v833 = *&v842[16];
  v826 = v836;
  v827 = v837;
  v828 = v838;
  v829 = v839;
  v824 = v834;
  v825 = v835;
  *&v833[24] = *&v842[40];
  *&v833[40] = *&v842[56];
  *&v833[56] = *&v842[72];
  *&v833[72] = *&v842[88];
  *&v833[16] = *&v842[32];
  if (sub_2520CB6FC(&v824) == 1)
  {
    goto LABEL_635;
  }

  v809 = v774;
  v810 = v775;
  v811 = v776;
  v812 = v777;
  v805 = v770;
  v806 = v771;
  v807 = v772;
  v808 = v773;
  v803 = v768;
  v804 = v769;
  *v813 = v455;
  *&v813[24] = v756;
  *&v813[8] = v755;
  *&v813[40] = v757;
  *&v813[56] = v758;
  v820 = v774;
  v821 = v775;
  v822 = v776;
  *v823 = v777;
  v816 = v770;
  v817 = v771;
  v818 = v772;
  v819 = v773;
  v814 = v768;
  v815 = v769;
  *&v823[48] = *&v813[32];
  *&v823[64] = *&v813[48];
  *&v823[80] = *(&v758 + 1);
  *&v823[32] = *&v813[16];
  *&v823[16] = *v813;
  v467 = v653;
  if (sub_2520CB6FC(&v814) == 1)
  {
    if (v461)
    {
      sub_2520CB714(*(v712 + 48) + 16 * v464);
      sub_2520CB018(v464, v712);
    }
  }

  else if (v461)
  {
    memmove((*(v712 + 56) + 232 * v464), &v803, 0xE8uLL);
  }

  else
  {
    *&v842[64] = *&v813[32];
    *&v842[80] = *&v813[48];
    *&v842[96] = *&v813[64];
    *v842 = v811;
    *&v842[16] = v812;
    *&v842[48] = *&v813[16];
    *&v842[32] = *v813;
    v838 = v807;
    v839 = v808;
    v841 = v810;
    v840 = v809;
    v834 = v803;
    v835 = v804;
    v837 = v806;
    v836 = v805;
    sub_2520A8CE4(v464, v653, v651, &v834, v712);
  }

  v798 = v774;
  v799 = v775;
  v800 = v776;
  v801 = v777;
  v794 = v770;
  v795 = v771;
  v796 = v772;
  v797 = v773;
  v792 = v768;
  v793 = v769;
  *v802 = v455;
  *&v802[8] = v755;
  *&v802[24] = v756;
  *&v802[40] = v757;
  *&v802[56] = v758;
  sub_2520A2D9C(&v803, &v780, &qword_27F4CDE30, &qword_2521444D8);
  sub_2520A2584(&v792, &qword_27F4CDE30, &qword_2521444D8);
  *(v29 + v456) = v712;
  swift_endAccess();

  v160 = 0x277CBE000uLL;
LABEL_387:
  v468 = objc_allocWithZone(*(v160 + 3024));
  v469 = sub_252141B6C();
  v470 = [v468 initWithSuiteName_];

  if (!v470)
  {
LABEL_587:
    __break(1u);
    goto LABEL_588;
  }

  v471 = sub_252141B6C();
  v472 = [v470 objectForKey_];

  if (!v472)
  {
    v825 = 0u;
    v824 = 0u;
    sub_2520A2584(&v824, &unk_27F4CE0B0, &unk_252144AF0);
    goto LABEL_406;
  }

  sub_25214215C();
  swift_unknownObjectRelease();
  sub_2520A2584(&v824, &unk_27F4CE0B0, &unk_252144AF0);
  v473 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v474 = sub_252141B6C();
  v475 = [v473 initWithSuiteName_];

  if (!v475)
  {
LABEL_634:
    __break(1u);
LABEL_635:
    __break(1u);
    goto LABEL_636;
  }

  v476 = sub_252141B6C();
  v477 = [v475 integerForKey_];

  v478 = OBJC_IVAR____TtC11HearingTest15HTNoiseAnalyzer_tuningDict;
  swift_beginAccess();
  v479 = swift_isUniquelyReferenced_nonNull_native();
  *&v698 = *(v29 + v478);
  v480 = v698;
  *(v29 + v478) = 0x8000000000000000;
  v481 = sub_25213E648(v467, v651);
  v483 = v482;
  v484 = *(v480 + 16);
  v485 = (v482 & 1) == 0;
  if (__OFADD__(v484, v485))
  {
LABEL_559:
    __break(1u);
    goto LABEL_560;
  }

  v486 = v481;
  if (sub_2520CB1CC(v479, v484 + v485))
  {
    v487 = sub_25213E648(v653, v651);
    if ((v483 & 1) != (v488 & 1))
    {
      goto LABEL_651;
    }

    v486 = v487;
  }

  if (v483)
  {
    memmove(&v824, (*(v698 + 56) + 232 * v486), 0xE8uLL);
    nullsub_1();
  }

  else
  {
    sub_2520CB6D4(&v824);
  }

  v763 = v832;
  v764 = *v833;
  *&v765 = *&v833[16];
  v759 = v828;
  v760 = v829;
  v762 = v831;
  v761 = v830;
  v755 = v824;
  v756 = v825;
  v758 = v827;
  v757 = v826;
  v742 = *&v833[32];
  v743 = *&v833[48];
  v744 = *&v833[64];
  *&v745 = *&v833[80];
  v822 = v832;
  *v823 = *v833;
  *&v823[80] = *&v833[80];
  v818 = v828;
  v819 = v829;
  v821 = v831;
  v820 = v830;
  v814 = v824;
  v815 = v825;
  v817 = v827;
  v816 = v826;
  *&v823[32] = *&v833[32];
  *&v823[48] = *&v833[48];
  *&v823[64] = *&v833[64];
  *&v823[16] = *&v833[16];
  if (sub_2520CB6FC(&v814) == 1)
  {
    goto LABEL_637;
  }

  v800 = v763;
  v801 = v764;
  v796 = v759;
  v797 = v760;
  v799 = v762;
  v798 = v761;
  v792 = v755;
  v793 = v756;
  v795 = v758;
  v794 = v757;
  *v802 = v765;
  *&v802[8] = v477;
  *&v802[16] = v742;
  *&v802[32] = v743;
  *&v802[48] = v744;
  *&v813[32] = v743;
  *&v813[48] = v744;
  v811 = v763;
  v812 = v764;
  v807 = v759;
  v808 = v760;
  v810 = v762;
  v809 = v761;
  v803 = v755;
  v804 = v756;
  *&v802[64] = v745;
  *&v813[64] = v745;
  v806 = v758;
  v805 = v757;
  *&v813[16] = v742;
  *v813 = *v802;
  if (sub_2520CB6FC(&v803) == 1)
  {
    if (v483)
    {
      sub_2520CB714(*(v698 + 48) + 16 * v486);
      sub_2520CB018(v486, v698);
    }
  }

  else if (v483)
  {
    memmove((*(v698 + 56) + 232 * v486), &v792, 0xE8uLL);
  }

  else
  {
    *&v833[48] = *&v802[32];
    *&v833[64] = *&v802[48];
    *&v833[80] = *&v802[64];
    v832 = v800;
    *v833 = v801;
    *&v833[32] = *&v802[16];
    *&v833[16] = *v802;
    v828 = v796;
    v829 = v797;
    v831 = v799;
    v830 = v798;
    v824 = v792;
    v825 = v793;
    v827 = v795;
    v826 = v794;
    sub_2520A8CE4(v486, v653, v651, &v824, v698);
  }

  v788 = v763;
  v789 = v764;
  v784 = v759;
  v785 = v760;
  v787 = v762;
  v786 = v761;
  v780 = v755;
  v781 = v756;
  v783 = v758;
  v782 = v757;
  *&v790 = v765;
  *(&v790 + 1) = v477;
  *v791 = v742;
  *&v791[16] = v743;
  *&v791[32] = v744;
  *&v791[48] = v745;
  sub_2520A2D9C(&v792, &v768, &qword_27F4CDE30, &qword_2521444D8);
  sub_2520A2584(&v780, &qword_27F4CDE30, &qword_2521444D8);
  v29 = v650;
  *(v650 + v478) = v698;
  swift_endAccess();

LABEL_406:
  v489 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v490 = sub_252141B6C();
  v491 = [v489 initWithSuiteName_];

  if (!v491)
  {
LABEL_588:
    __break(1u);
    goto LABEL_589;
  }

  v492 = sub_252141B6C();
  v493 = [v491 objectForKey_];

  if (!v493)
  {
    v815 = 0u;
    v814 = 0u;
    sub_2520A2584(&v814, &unk_27F4CE0B0, &unk_252144AF0);
    goto LABEL_425;
  }

  sub_25214215C();
  swift_unknownObjectRelease();
  sub_2520A2584(&v814, &unk_27F4CE0B0, &unk_252144AF0);
  v494 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v495 = sub_252141B6C();
  v496 = [v494 initWithSuiteName_];

  if (!v496)
  {
LABEL_636:
    __break(1u);
LABEL_637:
    __break(1u);
    goto LABEL_638;
  }

  v497 = sub_252141B6C();
  v498 = [v496 integerForKey_];

  v499 = OBJC_IVAR____TtC11HearingTest15HTNoiseAnalyzer_tuningDict;
  swift_beginAccess();
  v500 = swift_isUniquelyReferenced_nonNull_native();
  *&v683 = *(v29 + v499);
  v501 = v683;
  *(v29 + v499) = 0x8000000000000000;
  v502 = sub_25213E648(v653, v651);
  v504 = v503;
  v505 = *(v501 + 16);
  v506 = (v503 & 1) == 0;
  if (__OFADD__(v505, v506))
  {
LABEL_560:
    __break(1u);
    goto LABEL_561;
  }

  v507 = v502;
  if (sub_2520CB1CC(v500, v505 + v506))
  {
    v508 = sub_25213E648(v653, v651);
    if ((v504 & 1) != (v509 & 1))
    {
      goto LABEL_651;
    }

    v507 = v508;
  }

  if (v504)
  {
    memmove(&v814, (*(v683 + 56) + 232 * v507), 0xE8uLL);
    nullsub_1();
  }

  else
  {
    sub_2520CB6D4(&v814);
  }

  v750 = v822;
  v751 = *v823;
  v752 = *&v823[16];
  v746 = v818;
  v747 = v819;
  v749 = v821;
  v748 = v820;
  v742 = v814;
  v743 = v815;
  v745 = v817;
  v744 = v816;
  v712 = *&v823[40];
  v713 = *&v823[56];
  v714 = *&v823[72];
  v811 = v822;
  v812 = *v823;
  *v813 = *&v823[16];
  v807 = v818;
  v808 = v819;
  v810 = v821;
  v809 = v820;
  v803 = v814;
  v804 = v815;
  v806 = v817;
  v805 = v816;
  *&v813[24] = *&v823[40];
  *&v813[40] = *&v823[56];
  *&v813[56] = *&v823[72];
  *&v813[16] = *&v823[32];
  if (sub_2520CB6FC(&v803) == 1)
  {
    goto LABEL_639;
  }

  v788 = v750;
  v789 = v751;
  v790 = v752;
  v784 = v746;
  v785 = v747;
  v787 = v749;
  v786 = v748;
  v780 = v742;
  v781 = v743;
  v783 = v745;
  v782 = v744;
  *&v791[8] = v712;
  *&v791[24] = v713;
  *&v791[40] = v714;
  v800 = v750;
  v801 = v751;
  v796 = v746;
  v797 = v747;
  v799 = v749;
  v798 = v748;
  v792 = v742;
  v793 = v743;
  *v791 = v498;
  v795 = v745;
  v794 = v744;
  *v802 = v752;
  *&v802[16] = *v791;
  *&v802[32] = *&v791[16];
  *&v802[48] = *&v791[32];
  *&v802[64] = *(&v714 + 1);
  if (sub_2520CB6FC(&v792) == 1)
  {
    if (v504)
    {
      sub_2520CB714(*(v683 + 48) + 16 * v507);
      sub_2520CB018(v507, v683);
    }
  }

  else if (v504)
  {
    memmove((*(v683 + 56) + 232 * v507), &v780, 0xE8uLL);
  }

  else
  {
    *&v823[48] = *&v791[16];
    *&v823[64] = *&v791[32];
    *&v823[80] = *&v791[48];
    v822 = v788;
    *v823 = v789;
    *&v823[32] = *v791;
    *&v823[16] = v790;
    v818 = v784;
    v819 = v785;
    v821 = v787;
    v820 = v786;
    v814 = v780;
    v815 = v781;
    v817 = v783;
    v816 = v782;
    sub_2520A8CE4(v507, v653, v651, &v814, v683);
  }

  v776 = v750;
  v777 = v751;
  v778 = v752;
  v772 = v746;
  v773 = v747;
  v775 = v749;
  v774 = v748;
  v768 = v742;
  v769 = v743;
  v771 = v745;
  v770 = v744;
  *&v779[8] = v712;
  *v779 = v498;
  *&v779[24] = v713;
  *&v779[40] = v714;
  sub_2520A2D9C(&v780, &v755, &qword_27F4CDE30, &qword_2521444D8);
  sub_2520A2584(&v768, &qword_27F4CDE30, &qword_2521444D8);
  v29 = v650;
  *(v650 + v499) = v683;
  swift_endAccess();

LABEL_425:
  v510 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v511 = sub_252141B6C();
  v512 = [v510 initWithSuiteName_];

  if (!v512)
  {
LABEL_589:
    __break(1u);
    goto LABEL_590;
  }

  v513 = sub_252141B6C();
  v514 = [v512 objectForKey_];

  if (!v514)
  {
    v804 = 0u;
    v803 = 0u;
    sub_2520A2584(&v803, &unk_27F4CE0B0, &unk_252144AF0);
    goto LABEL_444;
  }

  sub_25214215C();
  swift_unknownObjectRelease();
  sub_2520A2584(&v803, &unk_27F4CE0B0, &unk_252144AF0);
  v515 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v516 = sub_252141B6C();
  v517 = [v515 initWithSuiteName_];

  if (!v517)
  {
LABEL_638:
    __break(1u);
LABEL_639:
    __break(1u);
    goto LABEL_640;
  }

  v518 = sub_252141B6C();
  [v517 doubleForKey_];
  v520 = v519;

  v521 = OBJC_IVAR____TtC11HearingTest15HTNoiseAnalyzer_tuningDict;
  swift_beginAccess();
  v522 = swift_isUniquelyReferenced_nonNull_native();
  *&v668 = *(v29 + v521);
  v523 = v668;
  *(v29 + v521) = 0x8000000000000000;
  v524 = sub_25213E648(v653, v651);
  v526 = v525;
  v527 = *(v523 + 16);
  v528 = (v525 & 1) == 0;
  if (__OFADD__(v527, v528))
  {
LABEL_561:
    __break(1u);
    goto LABEL_562;
  }

  v529 = v524;
  if (sub_2520CB1CC(v522, v527 + v528))
  {
    v530 = sub_25213E648(v653, v651);
    if ((v526 & 1) != (v531 & 1))
    {
      goto LABEL_651;
    }

    v529 = v530;
  }

  if (v526)
  {
    memmove(&v803, (*(v668 + 56) + 232 * v529), 0xE8uLL);
    nullsub_1();
  }

  else
  {
    sub_2520CB6D4(&v803);
  }

  v720 = v811;
  v721 = v812;
  v722 = *v813;
  *&v723 = *&v813[16];
  v716 = v807;
  v717 = v808;
  v718 = v809;
  v719 = v810;
  v712 = v803;
  v713 = v804;
  v714 = v805;
  v715 = v806;
  v698 = *&v813[32];
  v699 = *&v813[48];
  *&v700 = *&v813[64];
  v800 = v811;
  v801 = v812;
  *v802 = *v813;
  *&v802[16] = *&v813[16];
  v796 = v807;
  v797 = v808;
  v798 = v809;
  v799 = v810;
  v792 = v803;
  v793 = v804;
  v794 = v805;
  v795 = v806;
  *&v802[32] = *&v813[32];
  *&v802[48] = *&v813[48];
  *&v802[64] = *&v813[64];
  if (sub_2520CB6FC(&v792) == 1)
  {
    goto LABEL_641;
  }

  v776 = v720;
  v777 = v721;
  v778 = v722;
  *v779 = v723;
  v772 = v716;
  v773 = v717;
  v774 = v718;
  v775 = v719;
  v768 = v712;
  v769 = v713;
  v770 = v714;
  v771 = v715;
  *&v779[8] = v520;
  *&v779[16] = v698;
  *&v779[32] = v699;
  *&v779[48] = v700;
  *&v791[16] = v698;
  *&v791[32] = v699;
  *&v791[48] = v700;
  v788 = v720;
  v789 = v721;
  v784 = v716;
  v785 = v717;
  v787 = v719;
  v786 = v718;
  v780 = v712;
  v781 = v713;
  v783 = v715;
  v782 = v714;
  v790 = v722;
  *v791 = *v779;
  if (sub_2520CB6FC(&v780) == 1)
  {
    if (v526)
    {
      sub_2520CB714(*(v668 + 48) + 16 * v529);
      sub_2520CB018(v529, v668);
    }
  }

  else if (v526)
  {
    memmove((*(v668 + 56) + 232 * v529), &v768, 0xE8uLL);
  }

  else
  {
    *&v813[32] = *&v779[16];
    *&v813[48] = *&v779[32];
    *&v813[64] = *&v779[48];
    v811 = v776;
    v812 = v777;
    *&v813[16] = *v779;
    *v813 = v778;
    v807 = v772;
    v808 = v773;
    v810 = v775;
    v809 = v774;
    v803 = v768;
    v804 = v769;
    v806 = v771;
    v805 = v770;
    sub_2520A8CE4(v529, v653, v651, &v803, v668);
  }

  v763 = v720;
  v764 = v721;
  v765 = v722;
  *&v766 = v723;
  v759 = v716;
  v760 = v717;
  v761 = v718;
  v762 = v719;
  v755 = v712;
  v756 = v713;
  v757 = v714;
  v758 = v715;
  *(&v766 + 1) = v520;
  *v767 = v698;
  *&v767[16] = v699;
  *&v767[32] = v700;
  sub_2520A2D9C(&v768, &v742, &qword_27F4CDE30, &qword_2521444D8);
  sub_2520A2584(&v755, &qword_27F4CDE30, &qword_2521444D8);
  v29 = v650;
  *(v650 + v521) = v668;
  swift_endAccess();

LABEL_444:
  v532 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v533 = sub_252141B6C();
  v534 = [v532 initWithSuiteName_];

  if (!v534)
  {
LABEL_590:
    __break(1u);
    goto LABEL_591;
  }

  v535 = sub_252141B6C();
  v536 = [v534 objectForKey_];

  if (!v536)
  {
    v793 = 0u;
    v792 = 0u;
    sub_2520A2584(&v792, &unk_27F4CE0B0, &unk_252144AF0);
    goto LABEL_463;
  }

  sub_25214215C();
  swift_unknownObjectRelease();
  sub_2520A2584(&v792, &unk_27F4CE0B0, &unk_252144AF0);
  v537 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v538 = sub_252141B6C();
  v539 = [v537 initWithSuiteName_];

  if (!v539)
  {
LABEL_640:
    __break(1u);
LABEL_641:
    __break(1u);
    goto LABEL_642;
  }

  v540 = sub_252141B6C();
  [v539 doubleForKey_];
  v542 = v541;

  v543 = OBJC_IVAR____TtC11HearingTest15HTNoiseAnalyzer_tuningDict;
  swift_beginAccess();
  v544 = swift_isUniquelyReferenced_nonNull_native();
  *&v654 = *(v29 + v543);
  v545 = v654;
  *(v29 + v543) = 0x8000000000000000;
  v546 = sub_25213E648(v653, v651);
  v548 = v547;
  v549 = *(v545 + 16);
  v550 = (v547 & 1) == 0;
  if (__OFADD__(v549, v550))
  {
LABEL_562:
    __break(1u);
    goto LABEL_563;
  }

  v551 = v546;
  if (sub_2520CB1CC(v544, v549 + v550))
  {
    v552 = sub_25213E648(v653, v651);
    if ((v548 & 1) != (v553 & 1))
    {
      goto LABEL_651;
    }

    v551 = v552;
  }

  if (v548)
  {
    memmove(&v792, (*(v654 + 56) + 232 * v551), 0xE8uLL);
    nullsub_1();
  }

  else
  {
    sub_2520CB6D4(&v792);
  }

  v706 = v800;
  v707 = v801;
  v708 = *v802;
  v709 = *&v802[16];
  v702 = v796;
  v703 = v797;
  v704 = v798;
  v705 = v799;
  v698 = v792;
  v699 = v793;
  v700 = v794;
  v701 = v795;
  v683 = *&v802[40];
  v684 = *&v802[56];
  v788 = v800;
  v789 = v801;
  v790 = *v802;
  *v791 = *&v802[16];
  v784 = v796;
  v785 = v797;
  v786 = v798;
  v787 = v799;
  v780 = v792;
  v781 = v793;
  v782 = v794;
  v783 = v795;
  *&v791[24] = *&v802[40];
  *&v791[40] = *&v802[56];
  *&v791[16] = *&v802[32];
  if (sub_2520CB6FC(&v780) == 1)
  {
    goto LABEL_643;
  }

  v763 = v706;
  v764 = v707;
  v765 = v708;
  v766 = v709;
  v759 = v702;
  v760 = v703;
  v761 = v704;
  v762 = v705;
  v755 = v698;
  v756 = v699;
  v757 = v700;
  v758 = v701;
  *v767 = v542;
  *&v767[8] = v683;
  *&v767[24] = v684;
  v776 = v706;
  v777 = v707;
  *v779 = v709;
  v778 = v708;
  v772 = v702;
  v773 = v703;
  v775 = v705;
  v774 = v704;
  v768 = v698;
  v769 = v699;
  v771 = v701;
  v770 = v700;
  *&v779[16] = *v767;
  *&v779[32] = *&v767[16];
  *&v779[48] = *(&v684 + 1);
  if (sub_2520CB6FC(&v768) == 1)
  {
    if (v548)
    {
      sub_2520CB714(*(v654 + 48) + 16 * v551);
      sub_2520CB018(v551, v654);
    }
  }

  else if (v548)
  {
    memmove((*(v654 + 56) + 232 * v551), &v755, 0xE8uLL);
  }

  else
  {
    *&v802[32] = *v767;
    *&v802[48] = *&v767[16];
    *&v802[64] = *&v767[32];
    v800 = v763;
    v801 = v764;
    *&v802[16] = v766;
    *v802 = v765;
    v796 = v759;
    v797 = v760;
    v799 = v762;
    v798 = v761;
    v792 = v755;
    v793 = v756;
    v795 = v758;
    v794 = v757;
    sub_2520A8CE4(v551, v653, v651, &v792, v654);
  }

  v750 = v706;
  v751 = v707;
  v752 = v708;
  v753 = v709;
  v746 = v702;
  v747 = v703;
  v748 = v704;
  v749 = v705;
  v742 = v698;
  v743 = v699;
  v744 = v700;
  v745 = v701;
  *v754 = v542;
  *&v754[8] = v683;
  *&v754[24] = v684;
  sub_2520A2D9C(&v755, &v712, &qword_27F4CDE30, &qword_2521444D8);
  sub_2520A2584(&v742, &qword_27F4CDE30, &qword_2521444D8);
  v29 = v650;
  *(v650 + v543) = v654;
  swift_endAccess();

LABEL_463:
  v554 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v555 = sub_252141B6C();
  v556 = [v554 initWithSuiteName_];

  if (!v556)
  {
LABEL_591:
    __break(1u);
    goto LABEL_592;
  }

  v557 = sub_252141B6C();
  v558 = [v556 objectForKey_];

  if (!v558)
  {
    v781 = 0u;
    v780 = 0u;
    sub_2520A2584(&v780, &unk_27F4CE0B0, &unk_252144AF0);
    goto LABEL_482;
  }

  sub_25214215C();
  swift_unknownObjectRelease();
  sub_2520A2584(&v780, &unk_27F4CE0B0, &unk_252144AF0);
  v559 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v560 = sub_252141B6C();
  v561 = [v559 initWithSuiteName_];

  if (!v561)
  {
LABEL_642:
    __break(1u);
LABEL_643:
    __break(1u);
    goto LABEL_644;
  }

  v562 = sub_252141B6C();
  [v561 doubleForKey_];
  v564 = v563;

  v565 = OBJC_IVAR____TtC11HearingTest15HTNoiseAnalyzer_tuningDict;
  swift_beginAccess();
  v566 = swift_isUniquelyReferenced_nonNull_native();
  *&v741 = *(v29 + v565);
  v567 = v741;
  *(v29 + v565) = 0x8000000000000000;
  v568 = sub_25213E648(v653, v651);
  v570 = v569;
  v571 = *(v567 + 16);
  v572 = (v569 & 1) == 0;
  if (__OFADD__(v571, v572))
  {
LABEL_563:
    __break(1u);
    goto LABEL_564;
  }

  v573 = v568;
  if (sub_2520CB1CC(v566, v571 + v572))
  {
    v574 = sub_25213E648(v653, v651);
    if ((v570 & 1) != (v575 & 1))
    {
      goto LABEL_651;
    }

    v573 = v574;
  }

  if (v570)
  {
    memmove(&v780, (*(v741 + 56) + 232 * v573), 0xE8uLL);
    nullsub_1();
  }

  else
  {
    sub_2520CB6D4(&v780);
  }

  v693 = v790;
  v694 = *v791;
  *&v695 = *&v791[16];
  v689 = v786;
  v690 = v787;
  v691 = v788;
  v692 = v789;
  v685 = v782;
  v686 = v783;
  v687 = v784;
  v688 = v785;
  v683 = v780;
  v684 = v781;
  v654 = *&v791[32];
  *&v655 = *&v791[48];
  v778 = v790;
  *v779 = *v791;
  *&v779[16] = *&v791[16];
  v774 = v786;
  v775 = v787;
  v777 = v789;
  v776 = v788;
  v770 = v782;
  v771 = v783;
  v773 = v785;
  v772 = v784;
  v769 = v781;
  v768 = v780;
  *&v779[32] = *&v791[32];
  *&v779[48] = *&v791[48];
  if (sub_2520CB6FC(&v768) == 1)
  {
    goto LABEL_645;
  }

  v752 = v693;
  v753 = v694;
  *v754 = v695;
  v748 = v689;
  v749 = v690;
  v751 = v692;
  v750 = v691;
  v744 = v685;
  v745 = v686;
  v747 = v688;
  v746 = v687;
  v743 = v684;
  v742 = v683;
  *&v754[8] = v564;
  *&v754[16] = v654;
  *&v754[32] = v655;
  *&v767[32] = v655;
  v763 = v691;
  v764 = v692;
  v766 = v694;
  v765 = v693;
  v759 = v687;
  v760 = v688;
  v762 = v690;
  v761 = v689;
  v755 = v683;
  v756 = v684;
  v758 = v686;
  v757 = v685;
  *&v767[16] = v654;
  *v767 = *v754;
  v576 = sub_2520CB6FC(&v755);
  v577 = v741;
  if (v576 == 1)
  {
    if (v570)
    {
      sub_2520CB714(*(v741 + 48) + 16 * v573);
      sub_2520CB018(v573, v577);
    }
  }

  else if (v570)
  {
    memmove((*(v741 + 56) + 232 * v573), &v742, 0xE8uLL);
  }

  else
  {
    *&v791[16] = *v754;
    *&v791[32] = *&v754[16];
    *&v791[48] = *&v754[32];
    v788 = v750;
    v789 = v751;
    *v791 = v753;
    v790 = v752;
    v784 = v746;
    v785 = v747;
    v787 = v749;
    v786 = v748;
    v780 = v742;
    v781 = v743;
    v783 = v745;
    v782 = v744;
    sub_2520A8CE4(v573, v653, v651, &v780, v741);
  }

  v722 = v693;
  v723 = v694;
  *&v724 = v695;
  v718 = v689;
  v719 = v690;
  v721 = v692;
  v720 = v691;
  v714 = v685;
  v715 = v686;
  v717 = v688;
  v716 = v687;
  v712 = v683;
  v713 = v684;
  *(&v724 + 1) = v564;
  *v725 = v654;
  *&v725[16] = v655;
  sub_2520A2D9C(&v742, &v698, &qword_27F4CDE30, &qword_2521444D8);
  sub_2520A2584(&v712, &qword_27F4CDE30, &qword_2521444D8);
  *(v29 + v565) = v577;
  swift_endAccess();

LABEL_482:
  v578 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v579 = sub_252141B6C();
  v580 = [v578 initWithSuiteName_];

  if (!v580)
  {
LABEL_592:
    __break(1u);
    goto LABEL_593;
  }

  v581 = sub_252141B6C();
  v582 = [v580 objectForKey_];

  if (!v582)
  {
    v769 = 0u;
    v768 = 0u;
    sub_2520A2584(&v768, &unk_27F4CE0B0, &unk_252144AF0);
    goto LABEL_501;
  }

  sub_25214215C();
  swift_unknownObjectRelease();
  sub_2520A2584(&v768, &unk_27F4CE0B0, &unk_252144AF0);
  v583 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v584 = sub_252141B6C();
  v585 = [v583 initWithSuiteName_];

  if (!v585)
  {
LABEL_644:
    __break(1u);
LABEL_645:
    __break(1u);
    goto LABEL_646;
  }

  v586 = sub_252141B6C();
  v587 = [v585 integerForKey_];

  v588 = OBJC_IVAR____TtC11HearingTest15HTNoiseAnalyzer_tuningDict;
  swift_beginAccess();
  v589 = swift_isUniquelyReferenced_nonNull_native();
  v740 = *(v29 + v588);
  v590 = v740;
  *(v29 + v588) = 0x8000000000000000;
  v591 = sub_25213E648(v653, v651);
  v593 = v592;
  v594 = v590[2];
  v595 = (v592 & 1) == 0;
  if (__OFADD__(v594, v595))
  {
LABEL_564:
    __break(1u);
    goto LABEL_565;
  }

  v596 = v591;
  if (sub_2520CB1CC(v589, v594 + v595))
  {
    v597 = sub_25213E648(v653, v651);
    if ((v593 & 1) != (v598 & 1))
    {
      goto LABEL_651;
    }

    v596 = v597;
  }

  if (v593)
  {
    memmove(&v768, (v740[7] + 232 * v596), 0xE8uLL);
    nullsub_1();
  }

  else
  {
    sub_2520CB6D4(&v768);
  }

  v678 = v778;
  v679 = *v779;
  v680 = *&v779[16];
  v674 = v774;
  v675 = v775;
  v676 = v776;
  v677 = v777;
  v670 = v770;
  v671 = v771;
  v672 = v772;
  v673 = v773;
  v668 = v768;
  v669 = v769;
  v741 = *&v779[40];
  v765 = v778;
  v766 = *v779;
  *v767 = *&v779[16];
  v761 = v774;
  v762 = v775;
  v764 = v777;
  v763 = v776;
  v757 = v770;
  v758 = v771;
  v760 = v773;
  v759 = v772;
  v756 = v769;
  v755 = v768;
  *&v767[24] = *&v779[40];
  *&v767[16] = *&v779[32];
  if (sub_2520CB6FC(&v755) == 1)
  {
    goto LABEL_647;
  }

  v722 = v678;
  v723 = v679;
  v724 = v680;
  v718 = v674;
  v719 = v675;
  v721 = v677;
  v720 = v676;
  v714 = v670;
  v715 = v671;
  v717 = v673;
  v716 = v672;
  v712 = v668;
  v713 = v669;
  *v725 = v587;
  *&v725[8] = v741;
  v750 = v676;
  v751 = v677;
  v753 = v679;
  v752 = v678;
  v746 = v672;
  v747 = v673;
  v749 = v675;
  v748 = v674;
  v742 = v668;
  v743 = v669;
  v745 = v671;
  v744 = v670;
  *v754 = v680;
  *&v754[16] = *v725;
  *&v754[32] = *(&v741 + 1);
  v599 = sub_2520CB6FC(&v742);
  v600 = v740;
  if (v599 == 1)
  {
    if (v593)
    {
      sub_2520CB714(v740[6] + 16 * v596);
      sub_2520CB018(v596, v600);
    }
  }

  else if (v593)
  {
    memmove((v740[7] + 232 * v596), &v712, 0xE8uLL);
  }

  else
  {
    *&v779[16] = v724;
    *&v779[32] = *v725;
    *&v779[48] = *&v725[16];
    v776 = v720;
    v777 = v721;
    *v779 = v723;
    v778 = v722;
    v772 = v716;
    v773 = v717;
    v775 = v719;
    v774 = v718;
    v768 = v712;
    v769 = v713;
    v771 = v715;
    v770 = v714;
    sub_2520A8CE4(v596, v653, v651, &v768, v740);
  }

  v708 = v678;
  v709 = v679;
  v710 = v680;
  v704 = v674;
  v705 = v675;
  v706 = v676;
  v707 = v677;
  v700 = v670;
  v701 = v671;
  v702 = v672;
  v703 = v673;
  v698 = v668;
  v699 = v669;
  *v711 = v587;
  *&v711[8] = v741;
  sub_2520A2D9C(&v712, &v683, &qword_27F4CDE30, &qword_2521444D8);
  sub_2520A2584(&v698, &qword_27F4CDE30, &qword_2521444D8);
  v29 = v650;
  *(v650 + v588) = v600;
  swift_endAccess();

LABEL_501:
  v601 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v602 = sub_252141B6C();
  v603 = [v601 initWithSuiteName_];

  if (!v603)
  {
LABEL_593:
    __break(1u);
    goto LABEL_594;
  }

  v604 = sub_252141B6C();
  v605 = [v603 objectForKey_];

  if (!v605)
  {
    v756 = 0u;
    v755 = 0u;
    sub_2520A2584(&v755, &unk_27F4CE0B0, &unk_252144AF0);
    goto LABEL_520;
  }

  sub_25214215C();
  swift_unknownObjectRelease();
  sub_2520A2584(&v755, &unk_27F4CE0B0, &unk_252144AF0);
  v606 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v607 = sub_252141B6C();
  v608 = [v606 initWithSuiteName_];

  if (!v608)
  {
LABEL_646:
    __break(1u);
LABEL_647:
    __break(1u);
LABEL_648:
    __break(1u);
    goto LABEL_649;
  }

  v609 = sub_252141B6C();
  [v608 doubleForKey_];
  v611 = v610;

  v612 = OBJC_IVAR____TtC11HearingTest15HTNoiseAnalyzer_tuningDict;
  swift_beginAccess();
  v613 = swift_isUniquelyReferenced_nonNull_native();
  v740 = *(v29 + v612);
  v614 = v740;
  *(v29 + v612) = 0x8000000000000000;
  v615 = sub_25213E648(v653, v651);
  v617 = v616;
  v618 = v614[2];
  v619 = (v616 & 1) == 0;
  if (__OFADD__(v618, v619))
  {
LABEL_565:
    __break(1u);
LABEL_566:
    __break(1u);
LABEL_567:
    __break(1u);
    goto LABEL_568;
  }

  v620 = v615;
  if (sub_2520CB1CC(v613, v618 + v619))
  {
    v621 = sub_25213E648(v653, v651);
    if ((v617 & 1) != (v622 & 1))
    {
      goto LABEL_651;
    }

    v620 = v621;
    if ((v617 & 1) == 0)
    {
      goto LABEL_508;
    }

LABEL_511:
    memmove(&v755, (v740[7] + 232 * v620), 0xE8uLL);
    nullsub_1();
    goto LABEL_512;
  }

  if (v617)
  {
    goto LABEL_511;
  }

LABEL_508:
  sub_2520CB6D4(&v755);
LABEL_512:
  v664 = v765;
  v665 = v766;
  v666 = *v767;
  v667 = *&v767[16];
  v660 = v761;
  v661 = v762;
  v662 = v763;
  v663 = v764;
  v656 = v757;
  v657 = v758;
  v658 = v759;
  v659 = v760;
  v654 = v755;
  v655 = v756;
  v623 = *&v767[32];
  v752 = v765;
  v753 = v766;
  *v754 = *v767;
  *&v754[16] = *&v767[16];
  v748 = v761;
  v749 = v762;
  v750 = v763;
  v751 = v764;
  v744 = v757;
  v745 = v758;
  v746 = v759;
  v747 = v760;
  v742 = v755;
  v743 = v756;
  *&v754[32] = *&v767[32];
  if (sub_2520CB6FC(&v742) == 1)
  {
LABEL_649:
    __break(1u);
LABEL_650:
    __break(1u);
    goto LABEL_651;
  }

  v708 = v664;
  v709 = v665;
  v710 = v666;
  *v711 = v667;
  v704 = v660;
  v705 = v661;
  v706 = v662;
  v707 = v663;
  v700 = v656;
  v701 = v657;
  v702 = v658;
  v703 = v659;
  v698 = v654;
  v699 = v655;
  *&v711[8] = v611;
  *&v711[16] = v623;
  *&v725[16] = v623;
  v720 = v662;
  v721 = v663;
  v723 = v665;
  v722 = v664;
  v716 = v658;
  v717 = v659;
  v719 = v661;
  v718 = v660;
  v712 = v654;
  v713 = v655;
  v715 = v657;
  v714 = v656;
  v724 = v666;
  *v725 = *v711;
  v624 = sub_2520CB6FC(&v712);
  v625 = v740;
  if (v624 == 1)
  {
    if (v617)
    {
      sub_2520CB714(v740[6] + 16 * v620);
      sub_2520CB018(v620, v625);
    }
  }

  else if (v617)
  {
    memmove((v740[7] + 232 * v620), &v698, 0xE8uLL);
  }

  else
  {
    *v767 = v710;
    *&v767[16] = *v711;
    *&v767[32] = *&v711[16];
    v763 = v706;
    v764 = v707;
    v766 = v709;
    v765 = v708;
    v759 = v702;
    v760 = v703;
    v762 = v705;
    v761 = v704;
    v755 = v698;
    v756 = v699;
    v758 = v701;
    v757 = v700;
    sub_2520A8CE4(v620, v653, v651, &v755, v740);
  }

  v693 = v664;
  v694 = v665;
  v695 = v666;
  *&v696 = v667;
  v689 = v660;
  v690 = v661;
  v691 = v662;
  v692 = v663;
  v685 = v656;
  v686 = v657;
  v687 = v658;
  v688 = v659;
  v683 = v654;
  v684 = v655;
  *(&v696 + 1) = v611;
  v697 = v623;
  sub_2520A2D9C(&v698, &v668, &qword_27F4CDE30, &qword_2521444D8);
  sub_2520A2584(&v683, &qword_27F4CDE30, &qword_2521444D8);
  *(v29 + v612) = v625;
  swift_endAccess();

LABEL_520:
  v626 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v627 = sub_252141B6C();
  v628 = [v626 initWithSuiteName_];

  if (!v628)
  {
LABEL_594:
    __break(1u);
    goto LABEL_595;
  }

  v629 = sub_252141B6C();
  v630 = [v628 objectForKey_];

  if (!v630)
  {
    v743 = 0u;
    v742 = 0u;
    sub_2520A2584(&v742, &unk_27F4CE0B0, &unk_252144AF0);
    return;
  }

  sub_25214215C();
  swift_unknownObjectRelease();
  sub_2520A2584(&v742, &unk_27F4CE0B0, &unk_252144AF0);
  v631 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v632 = sub_252141B6C();
  v633 = [v631 initWithSuiteName_];

  if (!v633)
  {
    goto LABEL_648;
  }

  v634 = sub_252141B6C();
  [v633 doubleForKey_];
  v636 = v635;

  v637 = OBJC_IVAR____TtC11HearingTest15HTNoiseAnalyzer_tuningDict;
  swift_beginAccess();
  v638 = swift_isUniquelyReferenced_nonNull_native();
  v740 = *(v29 + v637);
  v639 = v740;
  *(v29 + v637) = 0x8000000000000000;
  v640 = sub_25213E648(v653, v651);
  v642 = v641;
  v643 = v639[2];
  v644 = (v641 & 1) == 0;
  if (__OFADD__(v643, v644))
  {
    goto LABEL_566;
  }

  v645 = v640;
  if ((sub_2520CB1CC(v638, v643 + v644) & 1) == 0)
  {
    goto LABEL_527;
  }

  v646 = sub_25213E648(v653, v651);
  if ((v642 & 1) != (v647 & 1))
  {
LABEL_651:
    sub_2521424CC();
    __break(1u);
    return;
  }

  v645 = v646;
LABEL_527:
  if (v642)
  {
    memmove(&v742, (v740[7] + 232 * v645), 0xE8uLL);
    nullsub_1();
  }

  else
  {
    sub_2520CB6D4(&v742);
  }

  v736 = v752;
  v737 = v753;
  v738 = *v754;
  v739 = *&v754[16];
  v732 = v748;
  v733 = v749;
  v734 = v750;
  v735 = v751;
  v728 = v744;
  v729 = v745;
  v730 = v746;
  v731 = v747;
  v726 = v742;
  v727 = v743;
  v722 = v752;
  v723 = v753;
  v724 = *v754;
  *v725 = *&v754[16];
  v718 = v748;
  v719 = v749;
  v720 = v750;
  v721 = v751;
  v714 = v744;
  v715 = v745;
  v716 = v746;
  v717 = v747;
  v712 = v742;
  v713 = v743;
  *&v725[16] = *&v754[32];
  if (sub_2520CB6FC(&v712) == 1)
  {
    goto LABEL_650;
  }

  v693 = v736;
  v694 = v737;
  v695 = v738;
  v696 = v739;
  v689 = v732;
  v690 = v733;
  v691 = v734;
  v692 = v735;
  v685 = v728;
  v686 = v729;
  v687 = v730;
  v688 = v731;
  v683 = v726;
  v684 = v727;
  v697 = v636;
  v710 = v738;
  *v711 = v739;
  v706 = v734;
  v707 = v735;
  v708 = v736;
  v709 = v737;
  v702 = v730;
  v703 = v731;
  v704 = v732;
  v705 = v733;
  v698 = v726;
  v699 = v727;
  v700 = v728;
  v701 = v729;
  *&v711[16] = v636;
  v648 = sub_2520CB6FC(&v698);
  v649 = v740;
  if (v648 == 1)
  {
    if (v642)
    {
      sub_2520CB714(v740[6] + 16 * v645);
      sub_2520CB018(v645, v649);
    }
  }

  else if (v642)
  {
    memmove((v740[7] + 232 * v645), &v683, 0xE8uLL);
  }

  else
  {
    *v754 = v695;
    *&v754[16] = v696;
    *&v754[32] = v697;
    v750 = v691;
    v751 = v692;
    v753 = v694;
    v752 = v693;
    v746 = v687;
    v747 = v688;
    v749 = v690;
    v748 = v689;
    v742 = v683;
    v743 = v684;
    v745 = v686;
    v744 = v685;
    sub_2520A8CE4(v645, v653, v651, &v742, v740);
  }

  v678 = v736;
  v679 = v737;
  v680 = v738;
  v681 = v739;
  v674 = v732;
  v675 = v733;
  v676 = v734;
  v677 = v735;
  v670 = v728;
  v671 = v729;
  v672 = v730;
  v673 = v731;
  v668 = v726;
  v669 = v727;
  v682 = v636;
  sub_2520A2D9C(&v683, &v654, &qword_27F4CDE30, &qword_2521444D8);
  sub_2520A2584(&v668, &qword_27F4CDE30, &qword_2521444D8);
  *(v29 + v637) = v649;
  swift_endAccess();
}