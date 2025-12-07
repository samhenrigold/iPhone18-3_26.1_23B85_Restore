uint64_t sub_25BAFA3E8(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v24 = MEMORY[0x277D84F90];
    v4 = OUTLINED_FUNCTION_18_3();
    sub_25BB00DC4(v4, v5, v6);
    v2 = v24;
    v7 = (a1 + 48);
    do
    {
      v8 = *(v7 - 1);
      v9 = *v7;
      v20[0] = *(v7 - 2);
      v20[1] = v8;
      v21 = v9;
      sub_25BCB617C();
      v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3E88, &qword_25BCBBDE0);
      v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3E90, &qword_25BCBBDE8);
      OUTLINED_FUNCTION_86_1(v22, v20, v12, v11);
      v14 = v22[0];
      v13 = v22[1];
      v15 = v23;
      v24 = v2;
      OUTLINED_FUNCTION_49_1();
      if (v17)
      {
        sub_25BB00DC4(v16 > 1, v10, 1);
        v2 = v24;
      }

      v7 += 12;
      *(v2 + 16) = v10;
      v18 = v2 + 24 * a1;
      *(v18 + 32) = v14;
      *(v18 + 40) = v13;
      *(v18 + 48) = v15;
      --v1;
    }

    while (v1);
  }

  return v2;
}

void sub_25BAFA508(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, __int128 a16, __int128 a17, __int128 a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31)
{
  OUTLINED_FUNCTION_90_0();
  a30 = v32;
  a31 = v33;
  v35 = *(v34 + 16);
  if (v35)
  {
    v36 = OUTLINED_FUNCTION_14_4();
    sub_25BB00E28(v36, v37, v38);
    v39 = a19;
    v40 = v31 + 32;
    do
    {
      sub_25BAA486C(v40, &a10, &qword_27FBB3DC0, &qword_25BCBBD30);
      v41 = OUTLINED_FUNCTION_110();
      __swift_instantiateConcreteTypeFromMangledNameV2(v41, v42);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3868, &qword_25BCBE9A0);
      swift_dynamicCast();
      a19 = v39;
      v44 = *(v39 + 16);
      v43 = *(v39 + 24);
      if (v44 >= v43 >> 1)
      {
        sub_25BB00E28((v43 > 1), v44 + 1, 1);
        v39 = a19;
      }

      *(v39 + 16) = v44 + 1;
      v45 = (v39 + 48 * v44);
      v46 = a16;
      v47 = a18;
      v45[3] = a17;
      v45[4] = v47;
      v45[2] = v46;
      v40 += 48;
      --v35;
    }

    while (v35);
  }

  OUTLINED_FUNCTION_89_0();
}

uint64_t sub_25BAFA670(uint64_t a1, uint64_t *a2, uint64_t *a3, void (*a4)(uint64_t, uint64_t, uint64_t *))
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    v5 = sub_25BCB75BC();
  }

  else
  {
    v5 = MEMORY[0x277D84F98];
  }

  v8 = v5;
  v6 = sub_25BCB617C();
  a4(v6, 1, &v8);

  return v8;
}

uint64_t sub_25BAFA724(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v6 = MEMORY[0x277D84F90];
    sub_25BCB727C();
    v4 = a1 + 48;
    do
    {
      v4 += 24;

      sub_25BCB723C();
      sub_25BCB728C();
      sub_25BCB729C();
      sub_25BCB725C();
      --v1;
    }

    while (v1);
    v2 = v6;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3FA0, &qword_25BCBBEC0);
  result = swift_allocObject();
  *(result + 16) = v2;
  return result;
}

uint64_t sub_25BAFA7F0(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v10 = MEMORY[0x277D84F90];
    OUTLINED_FUNCTION_18_3();
    sub_25BB00520();
    v2 = v10;
    v4 = (a1 + 56);
    do
    {
      v5 = *(v4 - 1);
      v6 = *v4;
      sub_25BCB617C();
      v7 = *(v10 + 16);
      if (v7 >= *(v10 + 24) >> 1)
      {
        sub_25BB00520();
      }

      v4 += 32;
      *(v10 + 16) = v7 + 1;
      v8 = v10 + 16 * v7;
      *(v8 + 32) = v5;
      *(v8 + 40) = v6;
      --v1;
    }

    while (v1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3968, &qword_25BCBB908);
  result = swift_allocObject();
  *(result + 16) = v2;
  return result;
}

void sub_25BAFA8E0(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  type metadata accessor for TensorHandle();
  v4 = swift_allocObject();
  *(v4 + 16) = v3;

  sub_25BAA6EB0();
  *a2 = v4;
}

uint64_t sub_25BAFA940(uint64_t a1, uint64_t a2)
{
  result = sub_25BCB73AC();
  if (v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3EC8, qword_25BCC3F80);
    swift_dynamicCast();
    result = swift_willThrowTypedImpl();
    __break(1u);
  }

  return result;
}

uint64_t sub_25BAFA9DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  if (!a4 || !a7)
  {
    return MEMORY[0x277D84F90];
  }

  v15 = MEMORY[0x277D84F90];
  if (a8 && a9)
  {
    v52 = a11;
    v53 = a12;
    v50 = a10;
    v17 = _s9IOMappingVMa(0, a13, a14, a4);

    v51 = v17;
    sub_25BCB68EC();
    v18 = sub_25BCB700C();
    WitnessTable = swift_getWitnessTable();
    MEMORY[0x25F876DF0](v57, v18, WitnessTable);
    v20 = swift_unknownObjectRelease();
    v48 = &v47;
    v47 = v57[0];
    v55 = v57[0];
    v56 = v57[1];
    MEMORY[0x28223BE20](v20);
    v43 = a13;
    v44 = a14;
    v49 = a14;
    v45 = a1;
    MEMORY[0x28223BE20](v21);
    v41[2] = a13;
    v41[3] = a14;
    v42[0] = sub_25BB061B4;
    v42[1] = v22;
    v23 = sub_25BCB754C();
    v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB38E0, &qword_25BCBB888);
    v54 = swift_getWitnessTable();
    v25 = swift_getWitnessTable();
    v27 = sub_25BAB2B20(sub_25BB061C0, v41, v23, v24, MEMORY[0x277D84A98], v25, MEMORY[0x277D84AC0], v26);
    swift_unknownObjectRelease();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB5DF0, &qword_25BCC2AA0);
    *(&v57[0] + 1) = sub_25BCB614C();
    v28 = sub_25BAD8178(v27);

    *&v57[0] = v28;
    sub_25BAD8324(v29);
    v30 = sub_25BAFAE1C(*&v57[0], *(&v57[0] + 1), a9);
    v32 = v31;

    v33 = sub_25BC4F2EC(v30, v32);
    v35 = v34;

    *&v57[0] = a8;
    MEMORY[0x28223BE20](v36);
    v42[2] = a13;
    v42[3] = v49;
    v43 = v52;
    v44 = v53;
    v45 = v33;
    v46 = v35;
    v37 = sub_25BCB68CC();
    v38 = swift_getWitnessTable();
    v15 = sub_25BAB2B20(sub_25BB0622C, v42, v37, &type metadata for InputGradient, MEMORY[0x277D84A98], v38, MEMORY[0x277D84AC0], v39);
  }

  return v15;
}

unint64_t sub_25BAFADB0(unint64_t result, uint64_t a2, uint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*(a3 + 16) > result)
  {
    v3 = *(a2 + 24);
    sub_25BCB617C();

    return v3;
  }

  __break(1u);
  return result;
}

uint64_t sub_25BAFAE1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_25BCB617C();
  v3 = sub_25BCB617C();
  sub_25BC030C0(v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB5DF0, &qword_25BCC2AA0);
  v6 = sub_25BCB614C();
  sub_25BAD8324(v6);
  return a1;
}

void sub_25BAFAEA4(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t *a4@<X8>)
{
  v4 = *(a1 + 40);
  if ((v4 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v4 >= *(a2 + 16))
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v7 = *(a2 + 24 * v4 + 48);
  type metadata accessor for TensorHandle();
  *(swift_initStackObject() + 16) = v7;
  swift_retain_n();
  sub_25BAA6EB0();
  if (v4 < *(a3 + 16))
  {
    v8 = *(a3 + 24 * v4 + 48);
    v9 = swift_allocObject();
    *(v9 + 16) = v8;
    swift_retain_n();
    sub_25BAA6EB0();
    *a4 = v9;

    v10 = sub_25BAC42B0();
    v12 = v11;

    swift_setDeallocating();
    sub_25BA9B528();
    swift_deallocClassInstance();
    a4[1] = v10;
    a4[2] = v12;
    return;
  }

LABEL_7:
  __break(1u);
}

uint64_t sub_25BAFAFE8(uint64_t a1, uint64_t a2)
{
  v2 = sub_25BCB636C();
  v4 = v3;
  v5 = sub_25BCB636C();
  if (v2 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_44(v2, v6, v5);
  }

  return v8 & 1;
}

uint64_t sub_25BAFB060()
{
  OUTLINED_FUNCTION_106();
  if (v0 == v1)
  {
    v2 = 1;
  }

  else
  {
    v2 = sub_25BCB789C();
  }

  swift_bridgeObjectRelease_n();
  return v2 & 1;
}

uint64_t sub_25BAFB0DC()
{
  OUTLINED_FUNCTION_65();
  OUTLINED_FUNCTION_104();
  switch(v2)
  {
    case 1:
      v0 = 0xE500000000000000;
      OUTLINED_FUNCTION_63();
      break;
    case 2:
      v0 = 0xE700000000000000;
      OUTLINED_FUNCTION_46();
      break;
    case 3:
      v0 = 0xEE00736578416465;
      break;
    default:
      break;
  }

  OUTLINED_FUNCTION_119();
  switch(v6)
  {
    case 1:
      v1 = 0xE500000000000000;
      OUTLINED_FUNCTION_76();
      break;
    case 2:
      v1 = 0xE700000000000000;
      OUTLINED_FUNCTION_48_0();
      break;
    case 3:
      v5 = 0x7A696C616D726F6ELL;
      v1 = 0xEE00736578416465;
      break;
    default:
      break;
  }

  if (v3 == v5 && v0 == v1)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_44(v3, v4, v5);
  }

  return v8 & 1;
}

uint64_t sub_25BAFB1F0()
{
  v0 = 0xEA0000000000746ELL;
  OUTLINED_FUNCTION_118();
  v4 = v3;
  v5 = v2;
  v6 = 0xEA0000000000746ELL;
  switch(v4)
  {
    case 1:
      v6 = 0xE600000000000000;
      v5 = 0x74657366666FLL;
      break;
    case 2:
      v6 = 0xE500000000000000;
      v5 = OUTLINED_FUNCTION_63();
      break;
    case 3:
      v6 = 0xE700000000000000;
      v5 = OUTLINED_FUNCTION_46();
      break;
    default:
      break;
  }

  switch(v1)
  {
    case 1:
      v0 = 0xE600000000000000;
      OUTLINED_FUNCTION_65();
      break;
    case 2:
      v0 = 0xE500000000000000;
      OUTLINED_FUNCTION_76();
      break;
    case 3:
      v0 = 0xE700000000000000;
      OUTLINED_FUNCTION_48_0();
      break;
    default:
      break;
  }

  if (v5 == v2 && v6 == v0)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_88_0(v5, v1, v2);
  }

  return v8 & 1;
}

uint64_t sub_25BAFB2EC()
{
  OUTLINED_FUNCTION_116();
  v2 = 0xE800000000000000;
  v4 = v3;
  v5 = v1;
  switch(v4)
  {
    case 1:
      v2 = 0xE600000000000000;
      v5 = 0x74657366666FLL;
      break;
    case 2:
      v2 = 0xE500000000000000;
      v5 = OUTLINED_FUNCTION_63();
      break;
    case 3:
      v2 = 0xE700000000000000;
      v5 = OUTLINED_FUNCTION_46();
      break;
    case 4:
      v6 = OUTLINED_FUNCTION_74();
      v5 = OUTLINED_FUNCTION_115(v6);
      break;
    case 5:
      v7 = OUTLINED_FUNCTION_74();
      v5 = OUTLINED_FUNCTION_98_0(v7);
      break;
    case 6:
      v5 = OUTLINED_FUNCTION_26_3();
      break;
    default:
      break;
  }

  v8 = 0xE800000000000000;
  switch(v0)
  {
    case 1:
      v8 = 0xE600000000000000;
      OUTLINED_FUNCTION_65();
      break;
    case 2:
      v8 = 0xE500000000000000;
      OUTLINED_FUNCTION_76();
      break;
    case 3:
      v8 = 0xE700000000000000;
      OUTLINED_FUNCTION_48_0();
      break;
    case 4:
      OUTLINED_FUNCTION_73();
      OUTLINED_FUNCTION_113_0();
      break;
    case 5:
      OUTLINED_FUNCTION_73();
      OUTLINED_FUNCTION_96();
      break;
    case 6:
      OUTLINED_FUNCTION_25_1();
      break;
    default:
      break;
  }

  if (v5 == v1 && v2 == v8)
  {
    v10 = 1;
  }

  else
  {
    v10 = OUTLINED_FUNCTION_44(v5, v0, v1);
  }

  return v10 & 1;
}

uint64_t sub_25BAFB420(unsigned __int8 a1, uint64_t a2)
{
  v2 = 0xE900000000000079;
  v3 = 0x617267746867696CLL;
  v4 = a1;
  v5 = 0x617267746867696CLL;
  v6 = 0xE900000000000079;
  switch(v4)
  {
    case 1:
      v5 = 0x756C62746867696CLL;
      v7 = 12645;
      goto LABEL_5;
    case 2:
      v5 = 0x657267746867696CLL;
      v7 = 28261;
LABEL_5:
      v6 = v7 & 0xFFFFFFFFFFFFLL | 0xEA00000000000000;
      break;
    case 3:
      v6 = 0xE500000000000000;
      v5 = 0x6B63616C62;
      break;
    case 4:
      v6 = 0xE500000000000000;
      v5 = 0x6574696877;
      break;
    default:
      break;
  }

  switch(a2)
  {
    case 1:
      v3 = 0x756C62746867696CLL;
      v8 = 12645;
      goto LABEL_11;
    case 2:
      v3 = 0x657267746867696CLL;
      v8 = 28261;
LABEL_11:
      v2 = v8 & 0xFFFFFFFFFFFFLL | 0xEA00000000000000;
      break;
    case 3:
      v2 = 0xE500000000000000;
      v3 = 0x6B63616C62;
      break;
    case 4:
      v2 = 0xE500000000000000;
      v3 = 0x6574696877;
      break;
    default:
      break;
  }

  if (v5 == v3 && v6 == v2)
  {
    v10 = 1;
  }

  else
  {
    v10 = OUTLINED_FUNCTION_88_0(v5, a2, v3);
  }

  return v10 & 1;
}

uint64_t sub_25BAFB590(unsigned __int8 a1, uint64_t a2)
{
  v2 = 0xEB00000000797469;
  v3 = 0x6C696261626F7270;
  v4 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      v5 = 0x676E696E7261656CLL;
    }

    else
    {
      v5 = 0x6574617473;
    }

    if (v4 == 1)
    {
      v6 = 0xED00006573616850;
    }

    else
    {
      v6 = 0xE500000000000000;
    }
  }

  else
  {
    v5 = 0x6C696261626F7270;
    v6 = 0xEB00000000797469;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      v3 = 0x676E696E7261656CLL;
    }

    else
    {
      v3 = 0x6574617473;
    }

    if (a2 == 1)
    {
      v2 = 0xED00006573616850;
    }

    else
    {
      v2 = 0xE500000000000000;
    }
  }

  if (v5 == v3 && v6 == v2)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_88_0(v5, a2, v3);
  }

  return v8 & 1;
}

uint64_t sub_25BAFB694()
{
  OUTLINED_FUNCTION_104();
  switch(v2)
  {
    case 1:
      v0 = 0xE400000000000000;
      break;
    case 2:
      v0 = 0x800000025BCD8DF0;
      break;
    case 3:
      OUTLINED_FUNCTION_26_3();
      break;
    default:
      break;
  }

  OUTLINED_FUNCTION_119();
  switch(v7)
  {
    case 1:
      v1 = 0xE400000000000000;
      v5 = 1684366707;
      break;
    case 2:
      v5 = 0xD000000000000018;
      v1 = (v6 - 32) | 0x8000000000000000;
      break;
    case 3:
      OUTLINED_FUNCTION_25_1();
      break;
    default:
      break;
  }

  if (v3 == v5 && v0 == v1)
  {
    v9 = 1;
  }

  else
  {
    v9 = OUTLINED_FUNCTION_44(v3, v4, v5);
  }

  return v9 & 1;
}

uint64_t sub_25BAFB798(char a1, uint64_t a2)
{
  v2 = (a1 & 1) == 0;
  if (a1)
  {
    v3 = 1935763810;
  }

  else
  {
    v3 = 0x746867696577;
  }

  if (v2)
  {
    v4 = 0xE600000000000000;
  }

  else
  {
    v4 = 0xE400000000000000;
  }

  if (a2)
  {
    v5 = 1935763810;
  }

  else
  {
    v5 = 0x746867696577;
  }

  if (a2)
  {
    v6 = 0xE400000000000000;
  }

  else
  {
    v6 = 0xE600000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_44(v3, a2, v5);
  }

  return v8 & 1;
}

uint64_t sub_25BAFB820()
{
  OUTLINED_FUNCTION_106();
  if (v0 == v1)
  {
    v2 = 1;
  }

  else
  {
    v2 = sub_25BCB789C();
  }

  swift_bridgeObjectRelease_n();
  return v2 & 1;
}

uint64_t sub_25BAFB894(char a1)
{
  if (a1)
  {
    v1 = 0xE200000000000000;
  }

  else
  {
    v1 = 0xE300000000000000;
  }

  OUTLINED_FUNCTION_106();
  if (v8)
  {
    v7 = v5;
  }

  else
  {
    v7 = v6;
  }

  v8 = v2 == v4 && v1 == v7;
  if (v8)
  {
    v9 = 1;
  }

  else
  {
    v9 = OUTLINED_FUNCTION_44(v2, v3, v4);
  }

  return v9 & 1;
}

uint64_t sub_25BAFB910(unsigned __int8 a1, uint64_t a2)
{
  v2 = 0x6C61757165;
  v3 = 0xE500000000000000;
  v4 = a1;
  v5 = 0x6C61757165;
  switch(v4)
  {
    case 1:
      v3 = 0xE700000000000000;
      v5 = 0x72657461657267;
      break;
    case 2:
      v5 = 0x4572657461657267;
      v3 = 0xEC0000006C617571;
      break;
    case 3:
      v3 = 0xE400000000000000;
      v5 = 1936942444;
      break;
    case 4:
      v5 = 0x617571457373656CLL;
      v3 = 0xE90000000000006CLL;
      break;
    case 5:
      v3 = 0xE800000000000000;
      v5 = 0x6C61757145746F6ELL;
      break;
    default:
      break;
  }

  v6 = 0xE500000000000000;
  switch(a2)
  {
    case 1:
      v6 = 0xE700000000000000;
      v2 = 0x72657461657267;
      break;
    case 2:
      v2 = 0x4572657461657267;
      v6 = 0xEC0000006C617571;
      break;
    case 3:
      v6 = 0xE400000000000000;
      v2 = 1936942444;
      break;
    case 4:
      v2 = 0x617571457373656CLL;
      v6 = 0xE90000000000006CLL;
      break;
    case 5:
      v6 = 0xE800000000000000;
      v2 = 0x6C61757145746F6ELL;
      break;
    default:
      break;
  }

  if (v5 == v2 && v3 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_44(v5, a2, v2);
  }

  return v8 & 1;
}

uint64_t sub_25BAFBAB4(unsigned __int8 a1, uint64_t a2)
{
  v2 = 6579297;
  v3 = 0xE300000000000000;
  v4 = a1;
  v5 = 6579297;
  switch(v4)
  {
    case 1:
      v3 = 0xE800000000000000;
      v5 = 0x7463617274627573;
      break;
    case 2:
      v3 = 0xE800000000000000;
      v5 = 0x796C7069746C756DLL;
      break;
    case 3:
      v3 = 0xE800000000000000;
      v5 = 0x6E6F697369766964;
      break;
    case 4:
      v3 = 0xE500000000000000;
      v5 = 0x7265776F70;
      break;
    case 5:
      v3 = 0xE700000000000000;
      v6 = 1769496941;
      goto LABEL_9;
    case 6:
      v3 = 0xE700000000000000;
      v6 = 1768843629;
LABEL_9:
      v5 = v6 | 0x6D756D00000000;
      break;
    case 7:
      v3 = 0xE600000000000000;
      v5 = 0x6F6C75646F6DLL;
      break;
    default:
      break;
  }

  v7 = 0xE300000000000000;
  switch(a2)
  {
    case 1:
      v7 = 0xE800000000000000;
      v2 = 0x7463617274627573;
      break;
    case 2:
      v7 = 0xE800000000000000;
      v2 = 0x796C7069746C756DLL;
      break;
    case 3:
      v7 = 0xE800000000000000;
      v2 = 0x6E6F697369766964;
      break;
    case 4:
      v7 = 0xE500000000000000;
      v2 = 0x7265776F70;
      break;
    case 5:
      v7 = 0xE700000000000000;
      v8 = 1769496941;
      goto LABEL_18;
    case 6:
      v7 = 0xE700000000000000;
      v8 = 1768843629;
LABEL_18:
      v2 = v8 | 0x6D756D00000000;
      break;
    case 7:
      v7 = 0xE600000000000000;
      v2 = 0x6F6C75646F6DLL;
      break;
    default:
      break;
  }

  if (v5 == v2 && v3 == v7)
  {
    v10 = 1;
  }

  else
  {
    v10 = OUTLINED_FUNCTION_44(v5, a2, v2);
  }

  return v10 & 1;
}

uint64_t sub_25BAFBC90(char a1, char a2)
{
  v3 = sub_25BABE12C(a1);
  v5 = v4;
  v6 = sub_25BABE12C(a2);
  if (v3 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = OUTLINED_FUNCTION_44(v3, v7, v6);
  }

  return v9 & 1;
}

uint64_t sub_25BAFBD08(char a1)
{
  if (a1)
  {
    v1 = 0xE500000000000000;
  }

  else
  {
    v1 = 0xE200000000000000;
  }

  OUTLINED_FUNCTION_106();
  if (v8)
  {
    v7 = v5;
  }

  else
  {
    v7 = v6;
  }

  v8 = v2 == v4 && v1 == v7;
  if (v8)
  {
    v9 = 1;
  }

  else
  {
    v9 = OUTLINED_FUNCTION_44(v2, v3, v4);
  }

  return v9 & 1;
}

uint64_t sub_25BAFBD88(unsigned __int8 a1, uint64_t a2)
{
  v2 = 6581857;
  v3 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      v4 = 29295;
    }

    else
    {
      v4 = 7499640;
    }

    if (v3 == 1)
    {
      v5 = 0xE200000000000000;
    }

    else
    {
      v5 = 0xE300000000000000;
    }
  }

  else
  {
    v5 = 0xE300000000000000;
    v4 = 6581857;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      v2 = 29295;
    }

    else
    {
      v2 = 7499640;
    }

    if (a2 == 1)
    {
      v6 = 0xE200000000000000;
    }

    else
    {
      v6 = 0xE300000000000000;
    }
  }

  else
  {
    v6 = 0xE300000000000000;
  }

  if (v4 == v2 && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_44(v4, a2, v2);
  }

  return v8 & 1;
}

uint64_t sub_25BAFBE4C(unsigned __int8 a1, uint64_t a2)
{
  v2 = 6713957;
  v3 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      v4 = 0x64696F6D676973;
    }

    else
    {
      v4 = 0x4C6552796B61656CLL;
    }

    if (v3 == 1)
    {
      v5 = 0xE700000000000000;
    }

    else
    {
      v5 = 0xE900000000000055;
    }
  }

  else
  {
    v5 = 0xE300000000000000;
    v4 = 6713957;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      v2 = 0x64696F6D676973;
    }

    else
    {
      v2 = 0x4C6552796B61656CLL;
    }

    if (a2 == 1)
    {
      v6 = 0xE700000000000000;
    }

    else
    {
      v6 = 0xE900000000000055;
    }
  }

  else
  {
    v6 = 0xE300000000000000;
  }

  if (v4 == v2 && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_44(v4, a2, v2);
  }

  return v8 & 1;
}

uint64_t sub_25BAFBF40(unsigned __int8 a1, uint64_t a2)
{
  v2 = 0x6D756D6978616DLL;
  v3 = 0xE700000000000000;
  v4 = a1;
  v5 = 0x6D756D6978616DLL;
  switch(v4)
  {
    case 1:
      v5 = 0x6D756D696E696DLL;
      break;
    case 2:
      v3 = 0xE400000000000000;
      v5 = 1851876717;
      break;
    case 3:
      v5 = 0x746375646F7270;
      break;
    case 4:
      v3 = 0xE300000000000000;
      v5 = 7173491;
      break;
    default:
      break;
  }

  v6 = 0xE700000000000000;
  switch(a2)
  {
    case 1:
      v2 = 0x6D756D696E696DLL;
      break;
    case 2:
      v6 = 0xE400000000000000;
      v2 = 1851876717;
      break;
    case 3:
      v2 = 0x746375646F7270;
      break;
    case 4:
      v6 = 0xE300000000000000;
      v2 = 7173491;
      break;
    default:
      break;
  }

  if (v5 == v2 && v3 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_44(v5, a2, v2);
  }

  return v8 & 1;
}

uint64_t sub_25BAFC080()
{
  OUTLINED_FUNCTION_104();
  switch(v2)
  {
    case 1:
      v0 = 0xE400000000000000;
      break;
    case 3:
      v0 = 0xE700000000000000;
      break;
    case 4:
      v0 = 0xE800000000000000;
      break;
    case 5:
      v0 = 0xEA0000000000746ELL;
      break;
    default:
      break;
  }

  OUTLINED_FUNCTION_119();
  switch(v6)
  {
    case 1:
      v1 = 0xE400000000000000;
      v5 = 1935763810;
      break;
    case 2:
      v5 = 0x656469727473;
      break;
    case 3:
      v1 = 0xE700000000000000;
      v5 = 0x676E6964646170;
      break;
    case 4:
      v1 = 0xE800000000000000;
      v5 = 0x6E6F6974616C6964;
      break;
    case 5:
      OUTLINED_FUNCTION_118();
      v1 = 0xEA0000000000746ELL;
      break;
    default:
      break;
  }

  if (v3 == v5 && v0 == v1)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_44(v3, v4, v5);
  }

  return v8 & 1;
}

BOOL sub_25BAFC1F0(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 12;
  switch(a1 >> 6)
  {
    case 1:
      v2 = (a1 & 0x3F) + 4;
      break;
    case 2:
      v2 = (a1 & 0x3F) + 8;
      break;
    case 3:
      break;
    default:
      v2 = a1;
      break;
  }

  v3 = 12;
  switch(a2 >> 6)
  {
    case 1:
      v3 = (a2 & 0x3F) + 4;
      break;
    case 2:
      v3 = (a2 & 0x3F) + 8;
      break;
    case 3:
      return v2 == v3;
    default:
      v3 = a2;
      break;
  }

  return v2 == v3;
}

uint64_t sub_25BAFC28C(char a1, char a2)
{
  if (qword_25BCBBEC8[a1] == qword_25BCBBEC8[a2])
  {
    v2 = 1;
  }

  else
  {
    v2 = sub_25BCB789C();
  }

  swift_bridgeObjectRelease_n();
  return v2 & 1;
}

uint64_t sub_25BAFC2F4(char a1, uint64_t a2)
{
  v2 = (a1 & 1) == 0;
  if (a1)
  {
    v3 = 0x65756C6176;
  }

  else
  {
    v3 = 1702521203;
  }

  if (v2)
  {
    v4 = 0xE400000000000000;
  }

  else
  {
    v4 = 0xE500000000000000;
  }

  if (a2)
  {
    v5 = 0x65756C6176;
  }

  else
  {
    v5 = 1702521203;
  }

  if (a2)
  {
    v6 = 0xE500000000000000;
  }

  else
  {
    v6 = 0xE400000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_44(v3, a2, v5);
  }

  return v8 & 1;
}

uint64_t sub_25BAFC37C(unsigned __int8 a1, uint64_t a2)
{
  v2 = 0xEA0000000000657ALL;
  v3 = 0x69536C656E72656BLL;
  v4 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      v5 = 0x656469727473;
    }

    else
    {
      v5 = 0x676E6964646170;
    }

    if (v4 == 1)
    {
      v6 = 0xE600000000000000;
    }

    else
    {
      v6 = 0xE700000000000000;
    }
  }

  else
  {
    v5 = 0x69536C656E72656BLL;
    v6 = 0xEA0000000000657ALL;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      v3 = 0x656469727473;
    }

    else
    {
      v3 = 0x676E6964646170;
    }

    if (a2 == 1)
    {
      v2 = 0xE600000000000000;
    }

    else
    {
      v2 = 0xE700000000000000;
    }
  }

  if (v5 == v3 && v6 == v2)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_88_0(v5, a2, v3);
  }

  return v8 & 1;
}

uint64_t sub_25BAFC468()
{
  OUTLINED_FUNCTION_65();
  OUTLINED_FUNCTION_104();
  switch(v2)
  {
    case 1:
      v0 = 0xE500000000000000;
      OUTLINED_FUNCTION_63();
      break;
    case 2:
      v3 = OUTLINED_FUNCTION_74();
      OUTLINED_FUNCTION_115(v3);
      break;
    case 3:
      v4 = OUTLINED_FUNCTION_74();
      OUTLINED_FUNCTION_98_0(v4);
      break;
    case 4:
      v0 = 0xE800000000000000;
      break;
    case 5:
      v0 = 0xE700000000000000;
      OUTLINED_FUNCTION_46();
      break;
    case 6:
      OUTLINED_FUNCTION_26_3();
      break;
    default:
      break;
  }

  OUTLINED_FUNCTION_119();
  switch(v8)
  {
    case 1:
      v1 = 0xE500000000000000;
      OUTLINED_FUNCTION_76();
      break;
    case 2:
      OUTLINED_FUNCTION_73();
      OUTLINED_FUNCTION_113_0();
      break;
    case 3:
      OUTLINED_FUNCTION_73();
      OUTLINED_FUNCTION_96();
      break;
    case 4:
      v1 = 0xE800000000000000;
      OUTLINED_FUNCTION_116();
      break;
    case 5:
      v1 = 0xE700000000000000;
      OUTLINED_FUNCTION_48_0();
      break;
    case 6:
      OUTLINED_FUNCTION_25_1();
      break;
    default:
      break;
  }

  if (v5 == v7 && v0 == v1)
  {
    v10 = 1;
  }

  else
  {
    v10 = OUTLINED_FUNCTION_44(v5, v6, v7);
  }

  return v10 & 1;
}

uint64_t sub_25BAFC598(char a1, uint64_t a2)
{
  v2 = (a1 & 1) == 0;
  if (a1)
  {
    v3 = 0x64656C6C6966;
  }

  else
  {
    v3 = 0;
  }

  if (v2)
  {
    v4 = 0xE000000000000000;
  }

  else
  {
    v4 = 0xE600000000000000;
  }

  if (a2)
  {
    v5 = 0x64656C6C6966;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    v6 = 0xE600000000000000;
  }

  else
  {
    v6 = 0xE000000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_44(v3, a2, v5);
  }

  return v8 & 1;
}

uint64_t sub_25BAFC618(unsigned __int8 a1, uint64_t a2)
{
  v2 = 1701736302;
  v3 = 0xE400000000000000;
  v4 = a1;
  v5 = 1701736302;
  switch(v4)
  {
    case 1:
      v5 = 1818326639;
      break;
    case 2:
      v3 = 0xE600000000000000;
      v5 = 0x657261757173;
      break;
    case 3:
      v3 = 0xE300000000000000;
      v5 = 7892834;
      break;
    case 4:
      v3 = 0xE600000000000000;
      v5 = 0x656C63726963;
      break;
    case 5:
      v3 = 0xE700000000000000;
      v5 = 0x6E6F67796C6F70;
      break;
    case 6:
      v3 = 0xE700000000000000;
      v5 = 0x657370696C6C65;
      break;
    case 7:
      v3 = 0xE800000000000000;
      v5 = 0x656C676E61697274;
      break;
    default:
      break;
  }

  v6 = 0xE400000000000000;
  switch(a2)
  {
    case 1:
      v2 = 1818326639;
      break;
    case 2:
      v6 = 0xE600000000000000;
      v2 = 0x657261757173;
      break;
    case 3:
      v6 = 0xE300000000000000;
      v2 = 7892834;
      break;
    case 4:
      v6 = 0xE600000000000000;
      v2 = 0x656C63726963;
      break;
    case 5:
      v6 = 0xE700000000000000;
      v2 = 0x6E6F67796C6F70;
      break;
    case 6:
      v6 = 0xE700000000000000;
      v2 = 0x657370696C6C65;
      break;
    case 7:
      v6 = 0xE800000000000000;
      v2 = 0x656C676E61697274;
      break;
    default:
      break;
  }

  if (v5 == v2 && v3 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_44(v5, a2, v2);
  }

  return v8 & 1;
}

void sub_25BAFC800()
{
  OUTLINED_FUNCTION_71();
  OUTLINED_FUNCTION_22_1();
  while (1)
  {
    OUTLINED_FUNCTION_108();
    if (v3)
    {
      OUTLINED_FUNCTION_64();
      return;
    }

    OUTLINED_FUNCTION_55_0();
    if (v5)
    {
      break;
    }

    v7 = *(v4 - 2);
    v6 = *(v4 - 1);
    v8 = *v4;
    v9 = *(*(v1 + 8) + 16);
    sub_25BCB617C();
    v24 = v8;
    if (v9)
    {
      OUTLINED_FUNCTION_0_6();
      v11 = sub_25BA92684(v7, v6, v10);
      if (v12)
      {
        OUTLINED_FUNCTION_103(v11);
      }
    }

    v13 = v0;
    sub_25BA95FB0(v0);
    OUTLINED_FUNCTION_123();
    v25 = *(v1 + 8);
    OUTLINED_FUNCTION_0_6();
    v14 = v7;
    sub_25BA92684(v7, v6, v15);
    OUTLINED_FUNCTION_41_0();
    v1 = v16 + v17;
    if (__OFADD__(v16, v17))
    {
      goto LABEL_19;
    }

    OUTLINED_FUNCTION_117_0();
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3878, &qword_25BCBB838);
    if (OUTLINED_FUNCTION_60(v18))
    {
      OUTLINED_FUNCTION_0_6();
      sub_25BA92684(v7, v6, v19);
      OUTLINED_FUNCTION_69();
      if (!v3)
      {
        goto LABEL_21;
      }

      v7 = v20;
    }

    if (v2)
    {
      OUTLINED_FUNCTION_68_0();
    }

    else
    {
      OUTLINED_FUNCTION_11_7();
      *v21 = v14;
      v21[1] = v6;
      *(*(v25 + 56) + 8 * v7) = v8;

      OUTLINED_FUNCTION_105();
      if (v23)
      {
        goto LABEL_20;
      }

      *(v25 + 16) = v22;
    }

    OUTLINED_FUNCTION_66_0();
    v0 = v13 + 1;
  }

  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  sub_25BCB795C();
  __break(1u);
}

uint64_t sub_25BAFC990()
{
  OUTLINED_FUNCTION_120();
  v34 = v1;
  v2 = v0;
  v3 = 0;
  v30 = sub_25BCB617C();
  v4 = v30 + 48;
  while (1)
  {
    v5 = *(v30 + 16);
    if (v3 == v5)
    {
      break;
    }

    if (v3 >= v5)
    {
      __break(1u);
LABEL_22:
      __break(1u);
LABEL_23:
      __break(1u);
LABEL_24:
      result = sub_25BCB795C();
      __break(1u);
      return result;
    }

    v6 = *(v4 - 8);
    v7 = *(v4 - 16);
    sub_25BCB617C();
    sub_25BCB617C();
    if (!v6)
    {
      break;
    }

    v31 = v4;
    v8 = *(v2 + 8);
    v9 = *(v8 + 16);
    swift_bridgeObjectRetain_n();
    swift_bridgeObjectRetain_n();
    if (v9 && (OUTLINED_FUNCTION_0_6(), v11 = sub_25BA92684(v7, v6, v10), (v12 & 1) != 0))
    {
      v13 = *(*(v8 + 56) + 8 * v11);
      sub_25BCB617C();
    }

    else
    {
      v13 = MEMORY[0x277D84F90];
    }

    v32 = v3;
    sub_25BA95FB0(v3);
    swift_isUniquelyReferenced_nonNull_native();
    v14 = v2;
    v33 = *(v2 + 8);
    OUTLINED_FUNCTION_0_6();
    sub_25BA92684(v7, v6, v15);
    OUTLINED_FUNCTION_41_0();
    if (__OFADD__(v18, v19))
    {
      goto LABEL_22;
    }

    v20 = v16;
    v21 = v17;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3878, &qword_25BCBB838);
    if (sub_25BCB745C())
    {
      OUTLINED_FUNCTION_0_6();
      v23 = sub_25BA92684(v7, v6, v22);
      if ((v21 & 1) != (v24 & 1))
      {
        goto LABEL_24;
      }

      v20 = v23;
    }

    if (v21)
    {
      *(v33[7] + 8 * v20) = v13;
    }

    else
    {
      OUTLINED_FUNCTION_40_1(&v33[v20 >> 6]);
      v25 = (v33[6] + 16 * v20);
      *v25 = v7;
      v25[1] = v6;
      *(v33[7] + 8 * v20) = v13;
      v26 = v33[2];
      v27 = __OFADD__(v26, 1);
      v28 = v26 + 1;
      if (v27)
      {
        goto LABEL_23;
      }

      v33[2] = v28;
    }

    v2 = v14;
    *(v14 + 8) = v33;

    v4 = v31 + 32;
    v3 = v32 + 1;
  }
}

uint64_t sub_25BAFCD30()
{
  OUTLINED_FUNCTION_71();
  v1 = v0;
  v2 = 0;
  v51 = v0;
  v3 = sub_25BCB617C() + 64;
  while (1)
  {
    OUTLINED_FUNCTION_55_0();
    if (v5)
    {
      break;
    }

    if (v4)
    {
      __break(1u);
LABEL_22:
      __break(1u);
LABEL_23:
      __break(1u);
LABEL_24:
      result = sub_25BCB795C();
      __break(1u);
      return result;
    }

    v6 = *(v3 - 32);
    v7 = *(v3 - 24);
    sub_25BCB617C();
    v8 = OUTLINED_FUNCTION_27_0();
    sub_25BB060F0(v8, v9, v10);
    if (!v7)
    {
      break;
    }

    v52 = v3;
    v11 = *(v1 + 8);
    v12 = *(v11 + 16);
    sub_25BCB617C();
    v13 = OUTLINED_FUNCTION_27_0();
    sub_25BB060F0(v13, v14, v15);
    sub_25BCB617C();
    v16 = OUTLINED_FUNCTION_27_0();
    sub_25BB060F0(v16, v17, v18);
    if (v12 && (OUTLINED_FUNCTION_0_6(), v20 = sub_25BA92684(v6, v7, v19), (v21 & 1) != 0))
    {
      v22 = *(*(v11 + 56) + 8 * v20);
      sub_25BCB617C();
    }

    else
    {
      v22 = MEMORY[0x277D84F90];
    }

    v23 = OUTLINED_FUNCTION_27_0();
    sub_25BB06134(v23, v24, v25);

    sub_25BA95FB0(v2);
    v53 = v22;
    swift_isUniquelyReferenced_nonNull_native();
    v54 = *(v1 + 8);
    OUTLINED_FUNCTION_0_6();
    v26 = v6;
    sub_25BA92684(v6, v7, v27);
    OUTLINED_FUNCTION_41_0();
    if (__OFADD__(v30, v31))
    {
      goto LABEL_22;
    }

    v32 = v28;
    v33 = v29;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3878, &qword_25BCBB838);
    if (sub_25BCB745C())
    {
      OUTLINED_FUNCTION_0_6();
      v34 = OUTLINED_FUNCTION_99();
      v37 = sub_25BA92684(v34, v35, v36);
      if ((v33 & 1) != (v38 & 1))
      {
        goto LABEL_24;
      }

      v32 = v37;
    }

    if (v33)
    {
      *(v54[7] + 8 * v32) = v53;
    }

    else
    {
      OUTLINED_FUNCTION_40_1(&v54[v32 >> 6]);
      v39 = (v54[6] + 16 * v32);
      *v39 = v26;
      v39[1] = v7;
      *(v54[7] + 8 * v32) = v53;
      v40 = v54[2];
      v41 = __OFADD__(v40, 1);
      v42 = v40 + 1;
      if (v41)
      {
        goto LABEL_23;
      }

      v54[2] = v42;
    }

    v43 = OUTLINED_FUNCTION_27_0();
    sub_25BB06134(v43, v44, v45);
    v1 = v51;
    *(v51 + 8) = v54;
    v46 = OUTLINED_FUNCTION_27_0();
    sub_25BB06134(v46, v47, v48);
    v3 = v52 + 40;
    ++v2;
  }

  OUTLINED_FUNCTION_64();
}

uint64_t sub_25BAFCF80(uint64_t a1)
{
  if (a1 < 16)
  {
    return 0;
  }

  sub_25BCB70FC();
  return 0;
}

void sub_25BAFCFC8()
{
  v2 = OUTLINED_FUNCTION_124_0();
  *v1 = v0;
  if (!v2)
  {
    OUTLINED_FUNCTION_36_1();
    OUTLINED_FUNCTION_62();
    sub_25BA97A8C();
    *v1 = v3;
  }
}

void sub_25BAFD048()
{
  v2 = OUTLINED_FUNCTION_124_0();
  *v1 = v0;
  if (!v2)
  {
    OUTLINED_FUNCTION_33_1();
    OUTLINED_FUNCTION_62();
    sub_25BAB1E60();
    *v1 = v3;
  }
}

void sub_25BAFD118()
{
  OUTLINED_FUNCTION_47_1();
  if (!(v2 ^ v3 | v1))
  {
    OUTLINED_FUNCTION_36_1();
    sub_25BA97A8C();
    *v0 = v4;
  }
}

void sub_25BAFD1A8()
{
  OUTLINED_FUNCTION_47_1();
  if (!(v2 ^ v3 | v1))
  {
    OUTLINED_FUNCTION_33_1();
    sub_25BAB1E60();
    *v0 = v4;
  }
}

void sub_25BAFD258()
{
  OUTLINED_FUNCTION_37();
  if ((v3 & 1) == 0 || (OUTLINED_FUNCTION_6_10(), v4 == v5))
  {
LABEL_6:
    OUTLINED_FUNCTION_8_5();
    if (v2)
    {
      v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3850, &qword_25BCBB820);
      v7 = OUTLINED_FUNCTION_38_1(v6);
      OUTLINED_FUNCTION_1_5(v7);
      if (v1)
      {
LABEL_8:
        v8 = OUTLINED_FUNCTION_7_4();
        sub_25BAC9480(v8, v9, v10);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3858, &qword_25BCBE980);
    OUTLINED_FUNCTION_17(v11);
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_31_0();
  if (!v4)
  {
    OUTLINED_FUNCTION_5_7();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_25BAFD334()
{
  OUTLINED_FUNCTION_37();
  if ((v3 & 1) == 0 || (OUTLINED_FUNCTION_6_10(), v4 == v5))
  {
LABEL_6:
    OUTLINED_FUNCTION_8_5();
    if (v2)
    {
      v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3948, &qword_25BCBB8E8);
      v7 = OUTLINED_FUNCTION_38_1(v6);
      OUTLINED_FUNCTION_1_5(v7);
      if (v1)
      {
LABEL_8:
        OUTLINED_FUNCTION_7_4();
        sub_25BAC947C();
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3950, &qword_25BCBB8F0);
    OUTLINED_FUNCTION_17(v8);
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_31_0();
  if (!v4)
  {
    OUTLINED_FUNCTION_5_7();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_25BAFD3E8()
{
  OUTLINED_FUNCTION_37();
  if ((v3 & 1) == 0 || (OUTLINED_FUNCTION_6_10(), v4 == v5))
  {
LABEL_6:
    OUTLINED_FUNCTION_8_5();
    if (v2)
    {
      v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3860, &qword_25BCBB828);
      v7 = OUTLINED_FUNCTION_43_0(v6);
      OUTLINED_FUNCTION_3_5(v7);
      if (v1)
      {
LABEL_8:
        v8 = OUTLINED_FUNCTION_7_4();
        sub_25BC5615C(v8, v9, v10);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3868, &qword_25BCBE9A0);
    OUTLINED_FUNCTION_17(v11);
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_31_0();
  if (!v4)
  {
    OUTLINED_FUNCTION_5_7();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_25BAFD4A8()
{
  OUTLINED_FUNCTION_37();
  if ((v3 & 1) == 0 || (OUTLINED_FUNCTION_6_10(), v4 == v5))
  {
LABEL_6:
    OUTLINED_FUNCTION_8_5();
    if (v2)
    {
      v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB39F0, &qword_25BCBB970);
      v7 = OUTLINED_FUNCTION_30_2(v6);
      OUTLINED_FUNCTION_3_5(v7);
      if (v1)
      {
LABEL_8:
        OUTLINED_FUNCTION_7_4();
        sub_25BAC9924();
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB39F8, &qword_25BCBB978);
    OUTLINED_FUNCTION_17(v8);
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_31_0();
  if (!v4)
  {
    OUTLINED_FUNCTION_5_7();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_25BAFD564()
{
  OUTLINED_FUNCTION_37();
  if ((v3 & 1) == 0 || (OUTLINED_FUNCTION_6_10(), v4 == v5))
  {
LABEL_6:
    OUTLINED_FUNCTION_8_5();
    if (v2)
    {
      v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3910, &qword_25BCBB8B0);
      v7 = OUTLINED_FUNCTION_30_2(v6);
      OUTLINED_FUNCTION_3_5(v7);
      if (v1)
      {
LABEL_8:
        OUTLINED_FUNCTION_7_4();
        sub_25BAC9924();
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3918, &qword_25BCBB8B8);
    OUTLINED_FUNCTION_17(v8);
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_31_0();
  if (!v4)
  {
    OUTLINED_FUNCTION_5_7();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_25BAFD648()
{
  OUTLINED_FUNCTION_37();
  if ((v3 & 1) == 0 || (OUTLINED_FUNCTION_6_10(), v4 == v5))
  {
LABEL_6:
    OUTLINED_FUNCTION_8_5();
    if (v2)
    {
      v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB38C0, &unk_25BCC8950);
      v7 = OUTLINED_FUNCTION_30_2(v6);
      OUTLINED_FUNCTION_3_5(v7);
      if (v1)
      {
LABEL_8:
        OUTLINED_FUNCTION_7_4();
        sub_25BAC9924();
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB38C8, &unk_25BCCEC20);
    OUTLINED_FUNCTION_17(v8);
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_31_0();
  if (!v4)
  {
    OUTLINED_FUNCTION_5_7();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_25BAFD704()
{
  OUTLINED_FUNCTION_37();
  if ((v3 & 1) == 0 || (OUTLINED_FUNCTION_6_10(), v4 == v5))
  {
LABEL_6:
    OUTLINED_FUNCTION_8_5();
    if (v2)
    {
      v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3998, &unk_25BCC5B70);
      v10 = OUTLINED_FUNCTION_43_0(v9);
      v6 = OUTLINED_FUNCTION_3_5(v10);
      if (v1)
      {
LABEL_8:
        v11 = OUTLINED_FUNCTION_7_4();
        sub_25BC56184(v11, v12, v13);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    OUTLINED_FUNCTION_29_3(v6, v7, v8, &type metadata for LazyTensorFunction);
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_31_0();
  if (!v4)
  {
    OUTLINED_FUNCTION_5_7();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_25BAFD7B8()
{
  OUTLINED_FUNCTION_37();
  if ((v3 & 1) == 0 || (OUTLINED_FUNCTION_6_10(), v4 == v5))
  {
LABEL_6:
    OUTLINED_FUNCTION_8_5();
    if (v2)
    {
      v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3E00, &qword_25BCBBD68);
      v10 = OUTLINED_FUNCTION_43_0(v9);
      v6 = OUTLINED_FUNCTION_3_5(v10);
      if (v1)
      {
LABEL_8:
        v11 = OUTLINED_FUNCTION_7_4();
        sub_25BAE3A78(v11, v12, v13);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    OUTLINED_FUNCTION_29_3(v6, v7, v8, &type metadata for LazyTensorFunctionBuilder.Consumer);
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_31_0();
  if (!v4)
  {
    OUTLINED_FUNCTION_5_7();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_25BAFD89C()
{
  OUTLINED_FUNCTION_37();
  if ((v3 & 1) == 0 || (OUTLINED_FUNCTION_6_10(), v4 == v5))
  {
LABEL_6:
    OUTLINED_FUNCTION_8_5();
    if (v2)
    {
      v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3E38, &qword_25BCBBDA0);
      v7 = OUTLINED_FUNCTION_38_1(v6);
      OUTLINED_FUNCTION_1_5(v7);
      if (v1)
      {
LABEL_8:
        OUTLINED_FUNCTION_7_4();
        sub_25BAC947C();
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3E40, &qword_25BCC88E0);
    OUTLINED_FUNCTION_17(v8);
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_31_0();
  if (!v4)
  {
    OUTLINED_FUNCTION_5_7();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_25BAFD950()
{
  OUTLINED_FUNCTION_37();
  if ((v3 & 1) == 0 || (OUTLINED_FUNCTION_6_10(), v4 == v5))
  {
LABEL_6:
    OUTLINED_FUNCTION_8_5();
    if (v2)
    {
      v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3E08, &qword_25BCBBD70);
      v7 = OUTLINED_FUNCTION_43_0(v6);
      OUTLINED_FUNCTION_3_5(v7);
      if (v1)
      {
LABEL_8:
        v8 = OUTLINED_FUNCTION_7_4();
        sub_25BC5645C(v8, v9, v10);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3E10, &qword_25BCBBD78);
    OUTLINED_FUNCTION_17(v11);
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_31_0();
  if (!v4)
  {
    OUTLINED_FUNCTION_5_7();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_25BAFDA10()
{
  OUTLINED_FUNCTION_37();
  if ((v3 & 1) == 0 || (OUTLINED_FUNCTION_6_10(), v4 == v5))
  {
LABEL_6:
    OUTLINED_FUNCTION_8_5();
    if (v2)
    {
      v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3E60, &qword_25BCBBDC0);
      v10 = OUTLINED_FUNCTION_43_0(v9);
      v6 = OUTLINED_FUNCTION_3_5(v10);
      if (v1)
      {
LABEL_8:
        v11 = OUTLINED_FUNCTION_7_4();
        sub_25BC561B0(v11, v12, v13);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    OUTLINED_FUNCTION_29_3(v6, v7, v8, &type metadata for LazyTensorFunctionBuilder.Occurance);
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_31_0();
  if (!v4)
  {
    OUTLINED_FUNCTION_5_7();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_25BAFDAC4()
{
  OUTLINED_FUNCTION_37();
  if ((v3 & 1) == 0 || (OUTLINED_FUNCTION_6_10(), v4 == v5))
  {
LABEL_6:
    OUTLINED_FUNCTION_8_5();
    if (v2)
    {
      v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3DF0, &qword_25BCBBD58);
      v7 = OUTLINED_FUNCTION_38_1(v6);
      OUTLINED_FUNCTION_1_5(v7);
      if (v1)
      {
LABEL_8:
        v8 = OUTLINED_FUNCTION_7_4();
        sub_25BAC9480(v8, v9, v10);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3DF8, &qword_25BCBBD60);
    OUTLINED_FUNCTION_17(v11);
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_31_0();
  if (!v4)
  {
    OUTLINED_FUNCTION_5_7();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_25BAFDB78()
{
  OUTLINED_FUNCTION_37();
  if ((v3 & 1) == 0 || (OUTLINED_FUNCTION_6_10(), v4 == v5))
  {
LABEL_6:
    OUTLINED_FUNCTION_8_5();
    if (v2)
    {
      v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB39B8, &unk_25BCC5B90);
      v7 = OUTLINED_FUNCTION_50_0(v6);
      OUTLINED_FUNCTION_4_8(v7);
      if (v1)
      {
LABEL_8:
        v8 = OUTLINED_FUNCTION_7_4();
        sub_25BC56450(v8, v9, v10);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB39B0, &qword_25BCBB948);
    OUTLINED_FUNCTION_17(v11);
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_31_0();
  if (!v4)
  {
    OUTLINED_FUNCTION_5_7();
    goto LABEL_6;
  }

  __break(1u);
}

void *sub_25BAFDC2C(void *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 3);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
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
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3DD8, &qword_25BCBBD48);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 64);
      if (v5)
      {
LABEL_13:
        sub_25BC561D4(a4 + 32, v8, (v10 + 32));
        *(a4 + 2) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x277D84F90];
      if (result)
      {
        goto LABEL_13;
      }
    }

    memcpy((v10 + 32), a4 + 32, v8 << 6);
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void sub_25BAFDD24()
{
  OUTLINED_FUNCTION_37();
  if ((v3 & 1) == 0 || (OUTLINED_FUNCTION_6_10(), v4 == v5))
  {
LABEL_6:
    OUTLINED_FUNCTION_8_5();
    if (v2)
    {
      v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3F10, &qword_25BCBBE50);
      v7 = OUTLINED_FUNCTION_50_0(v6);
      OUTLINED_FUNCTION_4_8(v7);
      if (v1)
      {
LABEL_8:
        v8 = OUTLINED_FUNCTION_7_4();
        sub_25BC56450(v8, v9, v10);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3F18, &qword_25BCBBE58);
    OUTLINED_FUNCTION_17(v11);
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_31_0();
  if (!v4)
  {
    OUTLINED_FUNCTION_5_7();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_25BAFDDD8()
{
  OUTLINED_FUNCTION_37();
  if ((v3 & 1) == 0 || (OUTLINED_FUNCTION_6_10(), v4 == v5))
  {
LABEL_6:
    OUTLINED_FUNCTION_8_5();
    if (v2)
    {
      v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB39E0, &qword_25BCBB968);
      v7 = OUTLINED_FUNCTION_30_2(v6);
      OUTLINED_FUNCTION_3_5(v7);
      if (v1)
      {
LABEL_8:
        OUTLINED_FUNCTION_7_4();
        sub_25BAC9924();
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB39E8, &qword_25BCCF2F0);
    OUTLINED_FUNCTION_17(v8);
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_31_0();
  if (!v4)
  {
    OUTLINED_FUNCTION_5_7();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_25BAFDE94()
{
  OUTLINED_FUNCTION_37();
  if ((v3 & 1) == 0 || (OUTLINED_FUNCTION_6_10(), v4 == v5))
  {
LABEL_6:
    OUTLINED_FUNCTION_8_5();
    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3F68, &qword_25BCBBE90);
      v9 = swift_allocObject();
      v6 = OUTLINED_FUNCTION_3_5(v9);
      if (v1)
      {
LABEL_8:
        v10 = OUTLINED_FUNCTION_7_4();
        sub_25BC561F4(v10, v11, v12);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    OUTLINED_FUNCTION_29_3(v6, v7, v8, &type metadata for Context);
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_31_0();
  if (!v4)
  {
    OUTLINED_FUNCTION_5_7();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_25BAFDF7C()
{
  OUTLINED_FUNCTION_37();
  if ((v3 & 1) == 0 || (OUTLINED_FUNCTION_6_10(), v4 == v5))
  {
LABEL_6:
    OUTLINED_FUNCTION_8_5();
    if (v2)
    {
      v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB50C0, &qword_25BCBB8D8);
      v7 = OUTLINED_FUNCTION_38_1(v6);
      OUTLINED_FUNCTION_1_5(v7);
      if (v1)
      {
LABEL_8:
        OUTLINED_FUNCTION_7_4();
        sub_25BAC947C();
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3938, &qword_25BCBE490);
    OUTLINED_FUNCTION_17(v8);
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_31_0();
  if (!v4)
  {
    OUTLINED_FUNCTION_5_7();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_25BAFE070()
{
  OUTLINED_FUNCTION_37();
  if ((v3 & 1) == 0 || (OUTLINED_FUNCTION_6_10(), v4 == v5))
  {
LABEL_6:
    OUTLINED_FUNCTION_8_5();
    if (v2)
    {
      v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3ED0, &qword_25BCBBE18);
      v10 = OUTLINED_FUNCTION_50_0(v9);
      v6 = OUTLINED_FUNCTION_4_8(v10);
      if (v1)
      {
LABEL_8:
        v11 = OUTLINED_FUNCTION_7_4();
        sub_25BAE3A58(v11, v12, v13);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    OUTLINED_FUNCTION_29_3(v6, v7, v8, MEMORY[0x277D83E40]);
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_31_0();
  if (!v4)
  {
    OUTLINED_FUNCTION_5_7();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_25BAFE118()
{
  OUTLINED_FUNCTION_37();
  if ((v4 & 1) == 0 || (OUTLINED_FUNCTION_6_10(), v5 == v6))
  {
LABEL_6:
    OUTLINED_FUNCTION_8_5();
    if (v3)
    {
      v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3F70, &qword_25BCBBE98);
      v8 = OUTLINED_FUNCTION_50_0(v7);
      OUTLINED_FUNCTION_4_8(v8);
      if (v1)
      {
LABEL_8:
        v9 = OUTLINED_FUNCTION_7_4();
        sub_25BC56450(v9, v10, v11);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else
    {
      v3 = MEMORY[0x277D84F90];
      if (v1)
      {
        goto LABEL_8;
      }
    }

    memcpy((v3 + 32), (v0 + 32), 32 * v2);
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_31_0();
  if (!v5)
  {
    OUTLINED_FUNCTION_5_7();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_25BAFE1C4()
{
  OUTLINED_FUNCTION_37();
  if ((v3 & 1) == 0 || (OUTLINED_FUNCTION_6_10(), v4 == v5))
  {
LABEL_6:
    OUTLINED_FUNCTION_8_5();
    if (v2)
    {
      v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3970, &qword_25BCBB910);
      v7 = OUTLINED_FUNCTION_50_0(v6);
      OUTLINED_FUNCTION_4_8(v7);
      if (v1)
      {
LABEL_8:
        v8 = OUTLINED_FUNCTION_7_4();
        sub_25BC56450(v8, v9, v10);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3978, &qword_25BCBB918);
    OUTLINED_FUNCTION_17(v11);
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_31_0();
  if (!v4)
  {
    OUTLINED_FUNCTION_5_7();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_25BAFE278()
{
  OUTLINED_FUNCTION_37();
  if ((v3 & 1) == 0 || (OUTLINED_FUNCTION_6_10(), v4 == v5))
  {
LABEL_6:
    OUTLINED_FUNCTION_8_5();
    if (v2)
    {
      v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB38F8, &qword_25BCBB8A0);
      v7 = OUTLINED_FUNCTION_50_0(v6);
      OUTLINED_FUNCTION_4_8(v7);
      if (v1)
      {
LABEL_8:
        v8 = OUTLINED_FUNCTION_7_4();
        sub_25BC56450(v8, v9, v10);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB38F0, &qword_25BCBB898);
    OUTLINED_FUNCTION_17(v11);
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_31_0();
  if (!v4)
  {
    OUTLINED_FUNCTION_5_7();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_25BAFE32C()
{
  OUTLINED_FUNCTION_37();
  if ((v3 & 1) == 0 || (OUTLINED_FUNCTION_6_10(), v4 == v5))
  {
LABEL_6:
    OUTLINED_FUNCTION_8_5();
    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB39A0, &qword_25BCBB938);
      v6 = OUTLINED_FUNCTION_77();
      OUTLINED_FUNCTION_10_0(v6);
      OUTLINED_FUNCTION_9_1(v7);
      if (v1)
      {
LABEL_8:
        v8 = OUTLINED_FUNCTION_7_4();
        sub_25BAB254C(v8);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB39A8, &qword_25BCBB940);
    OUTLINED_FUNCTION_17(v9);
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_31_0();
  if (!v4)
  {
    OUTLINED_FUNCTION_5_7();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_25BAFE3EC()
{
  OUTLINED_FUNCTION_37();
  if ((v4 & 1) == 0 || (OUTLINED_FUNCTION_6_10(), v5 == v6))
  {
LABEL_6:
    OUTLINED_FUNCTION_8_5();
    if (v3)
    {
      v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB38D0, &qword_25BCBB880);
      v8 = OUTLINED_FUNCTION_43_0(v7);
      OUTLINED_FUNCTION_3_5(v8);
      if (v1)
      {
LABEL_8:
        v9 = OUTLINED_FUNCTION_7_4();
        sub_25BC56218(v9, v10, v11);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else
    {
      v3 = MEMORY[0x277D84F90];
      if (v1)
      {
        goto LABEL_8;
      }
    }

    memcpy((v3 + 32), (v0 + 32), 176 * v2);
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_31_0();
  if (!v5)
  {
    OUTLINED_FUNCTION_5_7();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_25BAFE4A8()
{
  OUTLINED_FUNCTION_37();
  if ((v3 & 1) == 0 || (OUTLINED_FUNCTION_6_10(), v4 == v5))
  {
LABEL_6:
    OUTLINED_FUNCTION_8_5();
    if (v2)
    {
      v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3958, &qword_25BCBB8F8);
      v7 = OUTLINED_FUNCTION_50_0(v6);
      OUTLINED_FUNCTION_4_8(v7);
      if (v1)
      {
LABEL_8:
        v8 = OUTLINED_FUNCTION_7_4();
        sub_25BAE3A58(v8, v9, v10);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3960, &qword_25BCBB900);
    OUTLINED_FUNCTION_17(v11);
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_31_0();
  if (!v4)
  {
    OUTLINED_FUNCTION_5_7();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_25BAFE55C()
{
  OUTLINED_FUNCTION_37();
  if ((v3 & 1) == 0 || (OUTLINED_FUNCTION_6_10(), v4 == v5))
  {
LABEL_6:
    OUTLINED_FUNCTION_8_5();
    if (v2)
    {
      v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3898, &qword_25BCBB858);
      v7 = OUTLINED_FUNCTION_50_0(v6);
      OUTLINED_FUNCTION_4_8(v7);
      if (v1)
      {
LABEL_8:
        v8 = OUTLINED_FUNCTION_7_4();
        sub_25BC56450(v8, v9, v10);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3880, &qword_25BCBB840);
    OUTLINED_FUNCTION_17(v11);
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_31_0();
  if (!v4)
  {
    OUTLINED_FUNCTION_5_7();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_25BAFE660()
{
  OUTLINED_FUNCTION_21_0();
  if ((v5 & 1) == 0 || (OUTLINED_FUNCTION_6_10(), v6 == v7))
  {
LABEL_6:
    OUTLINED_FUNCTION_20();
    if (v4)
    {
      OUTLINED_FUNCTION_87(v8, v9, v10, v11, v12, v13);
      v14 = OUTLINED_FUNCTION_77();
      _swift_stdlib_malloc_size(v14);
      OUTLINED_FUNCTION_39_2();
      v14[2] = v3;
      v14[3] = v15;
      if (v2)
      {
LABEL_8:
        v16 = OUTLINED_FUNCTION_23_1();
        v1(v16);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v2)
    {
      goto LABEL_8;
    }

    v17 = OUTLINED_FUNCTION_78();
    memcpy(v17, v18, v19);
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_31_0();
  if (!v6)
  {
    OUTLINED_FUNCTION_5_7();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_25BAFE71C()
{
  OUTLINED_FUNCTION_37();
  if ((v3 & 1) == 0 || (OUTLINED_FUNCTION_6_10(), v4 == v5))
  {
LABEL_6:
    OUTLINED_FUNCTION_8_5();
    if (v2)
    {
      v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3F50, &qword_25BCBBE78);
      v7 = OUTLINED_FUNCTION_50_0(v6);
      OUTLINED_FUNCTION_4_8(v7);
      if (v1)
      {
LABEL_8:
        v8 = OUTLINED_FUNCTION_7_4();
        sub_25BAE3A58(v8, v9, v10);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3F58, &qword_25BCBBE80);
    OUTLINED_FUNCTION_17(v11);
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_31_0();
  if (!v4)
  {
    OUTLINED_FUNCTION_5_7();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_25BAFE7D0()
{
  OUTLINED_FUNCTION_37();
  if ((v3 & 1) == 0 || (OUTLINED_FUNCTION_6_10(), v4 == v5))
  {
LABEL_6:
    OUTLINED_FUNCTION_8_5();
    if (v2)
    {
      v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3F60, &qword_25BCBBE88);
      v10 = OUTLINED_FUNCTION_43_0(v9);
      v6 = OUTLINED_FUNCTION_3_5(v10);
      if (v1)
      {
LABEL_8:
        v11 = OUTLINED_FUNCTION_7_4();
        sub_25BC56420(v11, v12, v13);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    OUTLINED_FUNCTION_29_3(v6, v7, v8, &type metadata for DotNodeDescriptor);
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_31_0();
  if (!v4)
  {
    OUTLINED_FUNCTION_5_7();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_25BAFE884()
{
  OUTLINED_FUNCTION_37();
  if ((v3 & 1) == 0 || (OUTLINED_FUNCTION_6_10(), v4 == v5))
  {
LABEL_6:
    OUTLINED_FUNCTION_8_5();
    if (v2)
    {
      v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3EF8, &qword_25BCBBE40);
      v7 = OUTLINED_FUNCTION_30_2(v6);
      OUTLINED_FUNCTION_3_5(v7);
      if (v1)
      {
LABEL_8:
        OUTLINED_FUNCTION_7_4();
        sub_25BAC9924();
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3F00, &qword_25BCCF340);
    OUTLINED_FUNCTION_17(v8);
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_31_0();
  if (!v4)
  {
    OUTLINED_FUNCTION_5_7();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_25BAFE980(char a1, uint64_t a2, char a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t), uint64_t (*a6)(void), void (*a7)(unint64_t, uint64_t, unint64_t))
{
  if (a3)
  {
    OUTLINED_FUNCTION_6_10();
    if (v12 != v13)
    {
      OUTLINED_FUNCTION_31_0();
      if (v12)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_5_7();
    }
  }

  else
  {
    v11 = a2;
  }

  v14 = *(a4 + 16);
  v15 = a5(v14, v11);
  v16 = *(a6(0) - 8);
  if (a1)
  {
    v17 = (*(v16 + 80) + 32) & ~*(v16 + 80);
    a7(a4 + v17, v14, v15 + v17);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_25BAFEA74()
{
  OUTLINED_FUNCTION_37();
  if ((v3 & 1) == 0 || (OUTLINED_FUNCTION_6_10(), v4 == v5))
  {
LABEL_6:
    OUTLINED_FUNCTION_8_5();
    if (v2)
    {
      v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3EF0, &qword_25BCBBE38);
      v7 = OUTLINED_FUNCTION_43_0(v6);
      OUTLINED_FUNCTION_3_5(v7);
      if (v1)
      {
LABEL_8:
        v8 = OUTLINED_FUNCTION_7_4();
        sub_25BC5645C(v8, v9, v10);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3EE8, &qword_25BCBBE30);
    OUTLINED_FUNCTION_17(v11);
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_31_0();
  if (!v4)
  {
    OUTLINED_FUNCTION_5_7();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_25BAFEB34()
{
  OUTLINED_FUNCTION_37();
  if ((v3 & 1) == 0 || (OUTLINED_FUNCTION_6_10(), v4 == v5))
  {
LABEL_6:
    OUTLINED_FUNCTION_8_5();
    if (v2)
    {
      v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3E98, &qword_25BCBBDF0);
      v7 = OUTLINED_FUNCTION_30_2(v6);
      OUTLINED_FUNCTION_3_5(v7);
      if (v1)
      {
LABEL_8:
        v8 = OUTLINED_FUNCTION_7_4();
        sub_25BC56454(v8, v9, v10);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3E88, &qword_25BCBBDE0);
    OUTLINED_FUNCTION_17(v11);
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_31_0();
  if (!v4)
  {
    OUTLINED_FUNCTION_5_7();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_25BAFEC18()
{
  OUTLINED_FUNCTION_21_0();
  if ((v5 & 1) == 0 || (OUTLINED_FUNCTION_6_10(), v6 == v7))
  {
LABEL_6:
    OUTLINED_FUNCTION_20();
    if (v4)
    {
      OUTLINED_FUNCTION_87(v8, v9, v10, v11, v12, v13);
      v14 = swift_allocObject();
      v15 = _swift_stdlib_malloc_size(v14);
      v14[2] = v3;
      v14[3] = 2 * v15 - 64;
      if (v2)
      {
LABEL_8:
        v16 = OUTLINED_FUNCTION_23_1();
        v1(v16);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v2)
    {
      goto LABEL_8;
    }

    v17 = OUTLINED_FUNCTION_78();
    memcpy(v17, v18, v3);
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_31_0();
  if (!v6)
  {
    OUTLINED_FUNCTION_5_7();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_25BAFECFC()
{
  OUTLINED_FUNCTION_21_0();
  if ((v5 & 1) == 0 || (OUTLINED_FUNCTION_6_10(), v6 == v7))
  {
LABEL_6:
    OUTLINED_FUNCTION_20();
    if (v4)
    {
      OUTLINED_FUNCTION_87(v8, v9, v10, v11, v12, v13);
      v14 = OUTLINED_FUNCTION_77();
      OUTLINED_FUNCTION_2_2(v14);
      v14[2] = v3;
      v14[3] = v15;
      if (v2)
      {
LABEL_8:
        v16 = OUTLINED_FUNCTION_23_1();
        v1(v16);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v2)
    {
      goto LABEL_8;
    }

    v17 = OUTLINED_FUNCTION_78();
    memcpy(v17, v18, v19);
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_31_0();
  if (!v6)
  {
    OUTLINED_FUNCTION_5_7();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_25BAFEDAC()
{
  OUTLINED_FUNCTION_37();
  if ((v3 & 1) == 0 || (OUTLINED_FUNCTION_6_10(), v4 == v5))
  {
LABEL_6:
    OUTLINED_FUNCTION_8_5();
    if (v2)
    {
      v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3DB8, &qword_25BCBF750);
      v7 = OUTLINED_FUNCTION_43_0(v6);
      OUTLINED_FUNCTION_3_5(v7);
      if (v1)
      {
LABEL_8:
        v8 = OUTLINED_FUNCTION_7_4();
        sub_25BC5615C(v8, v9, v10);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3DC0, &qword_25BCBBD30);
    OUTLINED_FUNCTION_17(v11);
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_31_0();
  if (!v4)
  {
    OUTLINED_FUNCTION_5_7();
    goto LABEL_6;
  }

  __break(1u);
}

unint64_t sub_25BAFEE6C(uint64_t a1)
{
  v2 = sub_25BCB6DEC();

  return sub_25BAFF0DC(a1, v2);
}

unint64_t sub_25BAFEEEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = a3;
  OUTLINED_FUNCTION_100(a1);
  MEMORY[0x25F878200](v3);
  v6 = OUTLINED_FUNCTION_94();
  MEMORY[0x25F878200](v6);
  sub_25BCB79EC();
  v7 = sub_25BCB7A3C();

  return sub_25BAFF19C(v3, a2, v4, v7);
}

unint64_t sub_25BAFEF78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_100(a1);
  MEMORY[0x25F878200](v3);
  MEMORY[0x25F878200](a3);
  v6 = sub_25BCB7A3C();

  return sub_25BAFF228(v3, a2, a3, v6);
}

unint64_t sub_25BAFEFFC(uint64_t a1)
{
  sub_25BCB741C();
  v2 = sub_25BCB623C();

  return sub_25BAFF2A4(a1, v2);
}

unint64_t sub_25BAFF060(uint64_t a1, unint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_100(a1);
  sub_25BBA31D0(v11, v3, a2, a3);
  sub_25BCB7A3C();
  OUTLINED_FUNCTION_109();

  return sub_25BAFF428(v6, v7, v8, v9);
}

unint64_t sub_25BAFF0DC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = v2 + 64;
  v5 = ~(-1 << *(v2 + 32));
  for (i = a2 & v5; ((1 << i) & *(v4 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v5)
  {
    sub_25BB0607C();
    v7 = *(*(v3 + 48) + 8 * i);
    v8 = sub_25BCB6DFC();

    if (v8)
    {
      break;
    }
  }

  return i;
}

unint64_t sub_25BAFF19C(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v6 = -1 << *(v4 + 32);
  result = a4 & ~v6;
  if ((*(v4 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v8 = ~v6;
    do
    {
      v9 = *(v4 + 48) + 24 * result;
      v10 = *v9;
      v11 = *(v9 + 8);
      v12 = *(v9 + 16);
      v14 = v10 != a1 || v11 != a2;
      if (((v14 | (v12 ^ a3)) & 1) == 0)
      {
        break;
      }

      result = (result + 1) & v8;
    }

    while (((*(v4 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_25BAFF228(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = -1 << *(v4 + 32);
  result = a4 & ~v6;
  if ((*(v4 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v8 = ~v6;
    do
    {
      v9 = (*(v4 + 48) + 24 * result);
      v10 = *v9;
      v11 = v9[2];
      if (v10 == a1 && v11 == a3)
      {
        break;
      }

      result = (result + 1) & v8;
    }

    while (((*(v4 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_25BAFF2A4(uint64_t a1, uint64_t a2)
{
  v13[1] = a1;
  v4 = sub_25BCB741C();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = v2;
  v15 = v2 + 64;
  v9 = ~(-1 << *(v2 + 32));
  for (i = a2 & v9; ((1 << i) & *(v15 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v9)
  {
    (*(v5 + 16))(v8, *(v14 + 48) + *(v5 + 72) * i, v4, v6);
    v11 = sub_25BCB630C();
    (*(v5 + 8))(v8, v4);
    if (v11)
    {
      break;
    }
  }

  return i;
}

unint64_t sub_25BAFF428(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4 + 64;
  v6 = -1 << *(v4 + 32);
  v7 = a4 & ~v6;
  if ((*(v4 + 64 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v8 = ~v6;
    v9 = a2 & 0xC000000000000000;
    v43 = a2 & 0x3FFFFFFFFFFFFFFFLL;
    v42 = a2 >> 62;
    v41 = ~v6;
    v40 = a2 & 0xC000000000000000;
    do
    {
      v10 = (*(v4 + 48) + 24 * v7);
      v11 = *v10;
      v12 = v10[1];
      if (v12 >> 62)
      {
        v13 = v10[2];
        if (v12 >> 62 == 1)
        {
          if (v9 == 0x4000000000000000)
          {
            ObjectType = swift_getObjectType();
            v15 = *((v12 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
            swift_unknownObjectRetain();
            v16 = v15(ObjectType, v12 & 0x3FFFFFFFFFFFFFFFLL);
            v18 = v17;
            v20 = v19;
            v21 = swift_getObjectType();
            if (v16 != (*(v43 + 16))(v21))
            {
              goto LABEL_25;
            }

            if (v18 == v22 && v20 == v23)
            {
              sub_25BB060C0(v11, v12);

              return v7;
            }

            v25 = sub_25BCB789C();
            sub_25BB060C0(v11, v12);

            v8 = v41;
            v5 = v4 + 64;
            v9 = v40;
            if (v25)
            {
              return v7;
            }
          }
        }

        else if (v9 == 0x8000000000000000)
        {
          v27 = swift_getObjectType();
          v28 = *((v12 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
          swift_unknownObjectRetain();
          LODWORD(v27) = v28(v27, v12 & 0x3FFFFFFFFFFFFFFFLL);
          v30 = v29;
          v32 = v31;
          v33 = swift_getObjectType();
          if (v27 != (*(v43 + 16))(v33))
          {
LABEL_25:
            sub_25BB060C0(v11, v12);

            v8 = v41;
            v5 = v4 + 64;
            v9 = v40;
            goto LABEL_26;
          }

          if (v30 == v34 && v32 == v35)
          {
            sub_25BB060C0(v11, v12);

            v9 = v40;
            v8 = v41;
            v5 = v4 + 64;
            if (v13 == a3)
            {
              return v7;
            }
          }

          else
          {
            v37 = sub_25BCB789C();
            sub_25BB060C0(v11, v12);

            v8 = v41;
            v5 = v4 + 64;
            v9 = v40;
            if ((v37 & 1) != 0 && v13 == a3)
            {
              return v7;
            }
          }
        }
      }

      else if (!v42)
      {
        v26 = sub_25BAC4018();
        if (v26 == sub_25BAC4018())
        {
          return v7;
        }
      }

LABEL_26:
      v7 = (v7 + 1) & v8;
    }

    while (((*(v5 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0);
  }

  return v7;
}

unint64_t sub_25BAFF78C(uint64_t a1, uint64_t a2)
{
  v3 = ~(-1 << *(v2 + 32));
    ;
  }

  return i;
}

void *sub_25BAFF7EC(uint64_t *a1)
{
  v1 = *(*a1 + 16);
  if (!v1)
  {
    return MEMORY[0x277D84F90];
  }

  v2 = sub_25BABD89C(*(*a1 + 16), 0);
  sub_25BCB617C();
  v3 = sub_25BABD918(&v5, v2 + 4, v1);

  if (v3 != v1)
  {
    __break(1u);
    return MEMORY[0x277D84F90];
  }

  return v2;
}

void sub_25BAFF8B8(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    __break(1u);
LABEL_9:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 >= 1)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB5060, &unk_25BCBF6E0);
      v7 = swift_allocObject();
      v8 = _swift_stdlib_malloc_size(v7);
      v7[2] = v5;
      v7[3] = (2 * ((v8 - 32) / 8)) | 1;
    }

    if (v4 != a3)
    {
      type metadata accessor for TensorRepresentation();
      swift_arrayInitWithCopy();
      return;
    }

    goto LABEL_9;
  }
}

void sub_25BAFFA14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  OUTLINED_FUNCTION_71();
  a25 = v26;
  a26 = v31;
  v32 = *(v27 + 16);
  if (v32)
  {
    v33 = v30;
    v34 = v29;
    v35 = v27;
    v36 = v28(*(v27 + 16), 0);
    v37 = v34(&a10, v36 + 32, v32, v35);
    v38 = a10;
    v39 = a11;
    v40 = a12;
    v41 = a13;
    v42 = a14;
    sub_25BCB617C();
    v33(v38, v39, v40, v41, v42);
    if (v37 != v32)
    {
      __break(1u);
    }
  }

  OUTLINED_FUNCTION_64();
}

void sub_25BAFFAD0(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    __break(1u);
LABEL_9:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 >= 1)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB50D0, &unk_25BCC5B60);
      v7 = OUTLINED_FUNCTION_77();
      OUTLINED_FUNCTION_2_2(v7);
      v7[2] = v5;
      v7[3] = v8;
    }

    if (v4 != a3)
    {
      swift_arrayInitWithCopy();
      return;
    }

    goto LABEL_9;
  }
}

void sub_25BAFFB88(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = a4 >> 1;
  v6 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    __break(1u);
LABEL_9:
    __break(1u);
    return;
  }

  if (v6)
  {
    if (v6 >= 1)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB39C0, &unk_25BCC8940);
      v8 = OUTLINED_FUNCTION_77();
      OUTLINED_FUNCTION_10_0(v8);
      OUTLINED_FUNCTION_39_2();
      *(v4 + 16) = v6;
      *(v4 + 24) = v9;
    }

    if (v5 != a3)
    {
      swift_arrayInitWithCopy();
      return;
    }

    goto LABEL_9;
  }
}

uint64_t sub_25BAFFC44(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x277D84F90];
  }

  v3 = sub_25BB720F0();
  sub_25BCB617C();
  v4 = sub_25BCA5444(&v6, (v3 + 32), v1, a1);

  if (v4 != v1)
  {
    __break(1u);
    return MEMORY[0x277D84F90];
  }

  return v3;
}

void sub_25BAFFCCC(uint64_t a1, char a2, void *a3)
{
  v4 = 0;
  v25 = *(a1 + 16);
  for (i = (a1 + 48); ; i += 3)
  {
    if (v25 == v4)
    {
LABEL_17:

      return;
    }

    if (v4 >= *(a1 + 16))
    {
      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      __break(1u);
LABEL_22:
      sub_25BCB795C();
      __break(1u);
      goto LABEL_23;
    }

    v7 = *(i - 1);
    v6 = *i;
    v8 = *(i - 2);
    sub_25BCB617C();

    if (!v7)
    {
      goto LABEL_17;
    }

    v9 = *a3;
    v11 = sub_25BA92684(v8, v7, sub_25BA92750);
    v12 = v9[2];
    v13 = (v10 & 1) == 0;
    v14 = v12 + v13;
    if (__OFADD__(v12, v13))
    {
      goto LABEL_20;
    }

    v15 = v10;
    if (v9[3] < v14)
    {
      break;
    }

    if (a2)
    {
      if (v10)
      {
        goto LABEL_15;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB66F0, &unk_25BCCBEE0);
      sub_25BCB746C();
      if (v15)
      {
        goto LABEL_15;
      }
    }

LABEL_12:
    v18 = *a3;
    *(*a3 + 8 * (v11 >> 6) + 64) |= 1 << v11;
    v19 = (v18[6] + 16 * v11);
    *v19 = v8;
    v19[1] = v7;
    *(v18[7] + 8 * v11) = v6;
    v20 = v18[2];
    v21 = __OFADD__(v20, 1);
    v22 = v20 + 1;
    if (v21)
    {
      goto LABEL_21;
    }

    v18[2] = v22;
    ++v4;
    a2 = 1;
  }

  sub_25BBB92D4(v14, a2 & 1);
  v16 = sub_25BA92684(v8, v7, sub_25BA92750);
  if ((v15 & 1) != (v17 & 1))
  {
    goto LABEL_22;
  }

  v11 = v16;
  if ((v15 & 1) == 0)
  {
    goto LABEL_12;
  }

LABEL_15:
  v23 = swift_allocError();
  swift_willThrow();
  v24 = v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3EC8, qword_25BCC3F80);
  if ((swift_dynamicCast() & 1) == 0)
  {

    return;
  }

LABEL_23:
  sub_25BCB70FC();
  MEMORY[0x25F876C90](0xD00000000000001BLL, 0x800000025BCD9300);
  sub_25BCB73CC();
  MEMORY[0x25F876C90](39, 0xE100000000000000);
  sub_25BCB74CC("Fatal error", 11, 2, 0, 0xE000000000000000, "Swift/NativeDictionary.swift", 28, 2, 792);
  __break(1u);
}

void sub_25BAFFFDC(uint64_t a1, char a2, void *a3)
{
  v48 = a3;
  v6 = sub_25BCB5CDC();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v47 = v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3EB8, &qword_25BCBBE08);
  MEMORY[0x28223BE20](v9);
  v45 = (v38 - v12);
  v44 = *(a1 + 16);
  if (!v44)
  {
LABEL_13:

    return;
  }

  v38[1] = v3;
  v39 = a1;
  v13 = 0;
  v43 = a1 + ((*(v11 + 80) + 32) & ~*(v11 + 80));
  v14 = *(v10 + 48);
  v41 = v7;
  v42 = v14;
  v46 = (v7 + 32);
  v40 = v6;
  while (1)
  {
    if (v13 >= *(a1 + 16))
    {
      __break(1u);
LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      sub_25BCB795C();
      __break(1u);
      goto LABEL_22;
    }

    v15 = v11;
    v16 = v45;
    sub_25BAA486C(v43 + *(v11 + 72) * v13, v45, &qword_27FBB3EB8, &qword_25BCBBE08);
    v18 = v16[1];
    v51 = *v16;
    v17 = v51;
    v52 = v18;
    v19 = *v46;
    (*v46)(v47, v16 + v42, v6);
    v20 = *v48;
    v22 = sub_25BA92684(v17, v18, sub_25BA92750);
    v23 = v20[2];
    v24 = (v21 & 1) == 0;
    v25 = v23 + v24;
    if (__OFADD__(v23, v24))
    {
      goto LABEL_19;
    }

    v26 = v21;
    if (v20[3] < v25)
    {
      break;
    }

    if (a2)
    {
      if (v21)
      {
        goto LABEL_15;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3EC0, &qword_25BCBBE10);
      sub_25BCB746C();
      if (v26)
      {
        goto LABEL_15;
      }
    }

LABEL_11:
    v29 = v47;
    v30 = *v48;
    *(*v48 + 8 * (v22 >> 6) + 64) |= 1 << v22;
    v31 = (v30[6] + 16 * v22);
    *v31 = v17;
    v31[1] = v18;
    v32 = v30[7] + *(v41 + 72) * v22;
    v6 = v40;
    v19(v32, v29, v40);
    v33 = v30[2];
    v34 = __OFADD__(v33, 1);
    v35 = v33 + 1;
    if (v34)
    {
      goto LABEL_20;
    }

    ++v13;
    v30[2] = v35;
    a2 = 1;
    a1 = v39;
    v11 = v15;
    if (v44 == v13)
    {
      goto LABEL_13;
    }
  }

  sub_25BBB9508(v25, a2 & 1);
  v27 = sub_25BA92684(v17, v18, sub_25BA92750);
  if ((v26 & 1) != (v28 & 1))
  {
    goto LABEL_21;
  }

  v22 = v27;
  if ((v26 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_15:
  v36 = swift_allocError();
  swift_willThrow();
  v53 = v36;
  v37 = v36;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3EC8, qword_25BCC3F80);
  if ((swift_dynamicCast() & 1) == 0)
  {

    (*(v41 + 8))(v47, v40);

    return;
  }

LABEL_22:
  v49 = 0;
  v50 = 0xE000000000000000;
  sub_25BCB70FC();
  MEMORY[0x25F876C90](0xD00000000000001BLL, 0x800000025BCD9300);
  sub_25BCB73CC();
  MEMORY[0x25F876C90](39, 0xE100000000000000);
  sub_25BCB74CC("Fatal error", 11, 2, v49, v50, "Swift/NativeDictionary.swift", 28, 2, 792);
  __break(1u);
}

uint64_t sub_25BB0048C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62)
  {
    result = sub_25BCB749C();
  }

  else
  {
    result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (result < a1)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (a1 < 0)
  {
LABEL_8:
    __break(1u);
  }

  return result;
}

void sub_25BB004E4()
{
  OUTLINED_FUNCTION_83();
  sub_25BAD4CF4();
  *v0 = v1;
}

uint64_t sub_25BB005B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_25BB013B8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_25BB005D0(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_25BB014C8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_25BB00634(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_25BB0169C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_25BB00654(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_25BB017B4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_25BB00674(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_25BB018CC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_25BB00694(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_25BB019DC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_25BB006B4(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_25BB01B14(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_25BB00718(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_25BB01C2C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_25BB00784(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_25BB01DF0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_25BB007F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_25BB01FBC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_25BB00810(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_25BB020D4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_25BB00830(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_25BB021E4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_25BB00850(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_25BB022F4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_25BB00AB4(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_25BB02F4C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_25BB00AD4(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_25BB03050(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_25BB00AF4(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_25BB0321C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_25BB00B9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_25BB033D0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_25BB00C00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_25BB03584(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_25BB00C64(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_25BB03ACC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_25BB00D58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_25BB03DB0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_25BB00DC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_25BB03F74(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_25BB00E28(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_25BB04148(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_25BB013B8(uint64_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3958, &qword_25BCBB8F8);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 32);
      if (v5)
      {
LABEL_13:
        sub_25BAE3A58((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x277D84F90];
      if (result)
      {
        goto LABEL_13;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3960, &qword_25BCBB900);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void *sub_25BB014C8(void *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB39E0, &qword_25BCBB968);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      v10[2] = v8;
      v10[3] = 2 * ((v11 - 32) / 24);
      if (v5)
      {
LABEL_13:
        sub_25BAC9924();
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x277D84F90];
      if (result)
      {
        goto LABEL_13;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB39E8, &qword_25BCCF2F0);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void sub_25BB015E0()
{
  OUTLINED_FUNCTION_37();
  if ((v3 & 1) == 0 || (OUTLINED_FUNCTION_6_10(), v4 == v5))
  {
LABEL_6:
    OUTLINED_FUNCTION_8_5();
    if (v2)
    {
      v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB38C0, &unk_25BCC8950);
      v7 = OUTLINED_FUNCTION_30_2(v6);
      OUTLINED_FUNCTION_3_5(v7);
      if (v1)
      {
LABEL_8:
        OUTLINED_FUNCTION_7_4();
        sub_25BAC9924();
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB38C8, &unk_25BCCEC20);
    OUTLINED_FUNCTION_17(v8);
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_31_0();
  if (!v4)
  {
    OUTLINED_FUNCTION_5_7();
    goto LABEL_6;
  }

  __break(1u);
}

void *sub_25BB0169C(void *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3928, &qword_25BCBB8C8);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      v10[2] = v8;
      v10[3] = 2 * ((v11 - 32) / 24);
      if (v5)
      {
LABEL_13:
        sub_25BAC9924();
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x277D84F90];
      if (result)
      {
        goto LABEL_13;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3920, &qword_25BCBB8C0);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void *sub_25BB017B4(void *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3910, &qword_25BCBB8B0);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      v10[2] = v8;
      v10[3] = 2 * ((v11 - 32) / 24);
      if (v5)
      {
LABEL_13:
        sub_25BAC9924();
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x277D84F90];
      if (result)
      {
        goto LABEL_13;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3918, &qword_25BCBB8B8);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

uint64_t sub_25BB018CC(uint64_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB38F8, &qword_25BCBB8A0);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 32);
      if (v5)
      {
LABEL_13:
        sub_25BC56450((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x277D84F90];
      if (result)
      {
        goto LABEL_13;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB38F0, &qword_25BCBB898);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

uint64_t sub_25BB019DC(uint64_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3900, &qword_25BCBB8A8);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 32);
      if (v5)
      {
LABEL_13:
        sub_25BC56450((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x277D84F90];
      if (result)
      {
        goto LABEL_13;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB38E8, &qword_25BCBB890);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void *sub_25BB01B14(void *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB39F0, &qword_25BCBB970);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      v10[2] = v8;
      v10[3] = 2 * ((v11 - 32) / 24);
      if (v5)
      {
LABEL_13:
        sub_25BAC9924();
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x277D84F90];
      if (result)
      {
        goto LABEL_13;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB39F8, &qword_25BCBB978);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

uint64_t sub_25BB01C2C(uint64_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3E58, &qword_25BCBBDB8);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 56);
      if (v5)
      {
LABEL_13:
        sub_25BAD5810((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x277D84F90];
      if (result)
      {
        goto LABEL_13;
      }
    }

    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void sub_25BB01D34()
{
  OUTLINED_FUNCTION_37();
  if ((v3 & 1) == 0 || (OUTLINED_FUNCTION_6_10(), v4 == v5))
  {
LABEL_6:
    OUTLINED_FUNCTION_8_5();
    if (v2)
    {
      v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3DE0, &unk_25BCC2B00);
      v7 = OUTLINED_FUNCTION_30_2(v6);
      OUTLINED_FUNCTION_3_5(v7);
      if (v1)
      {
LABEL_8:
        OUTLINED_FUNCTION_7_4();
        sub_25BAC9924();
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3DE8, &qword_25BCBBD50);
    OUTLINED_FUNCTION_17(v8);
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_31_0();
  if (!v4)
  {
    OUTLINED_FUNCTION_5_7();
    goto LABEL_6;
  }

  __break(1u);
}

uint64_t sub_25BB01DF0(uint64_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3E08, &qword_25BCBBD70);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 40);
      if (v5)
      {
LABEL_13:
        sub_25BC5645C((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x277D84F90];
      if (result)
      {
        goto LABEL_13;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3E10, &qword_25BCBBD78);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void sub_25BB01F08()
{
  OUTLINED_FUNCTION_37();
  if ((v3 & 1) == 0 || (OUTLINED_FUNCTION_6_10(), v4 == v5))
  {
LABEL_6:
    OUTLINED_FUNCTION_8_5();
    if (v2)
    {
      v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB50E0, &qword_25BCBBD88);
      v7 = OUTLINED_FUNCTION_50_0(v6);
      OUTLINED_FUNCTION_4_8(v7);
      if (v1)
      {
LABEL_8:
        v8 = OUTLINED_FUNCTION_7_4();
        sub_25BAE3A58(v8, v9, v10);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3E20, &unk_25BCCEC00);
    OUTLINED_FUNCTION_17(v11);
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_31_0();
  if (!v4)
  {
    OUTLINED_FUNCTION_5_7();
    goto LABEL_6;
  }

  __break(1u);
}

uint64_t sub_25BB01FBC(uint64_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3E48, &qword_25BCBBDA8);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 40);
      if (v5)
      {
LABEL_13:
        sub_25BC5645C((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x277D84F90];
      if (result)
      {
        goto LABEL_13;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3E50, &qword_25BCBBDB0);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

uint64_t sub_25BB020D4(uint64_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB39B8, &unk_25BCC5B90);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 32);
      if (v5)
      {
LABEL_13:
        sub_25BC56450((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x277D84F90];
      if (result)
      {
        goto LABEL_13;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB39B0, &qword_25BCBB948);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

uint64_t sub_25BB021E4(uint64_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3970, &qword_25BCBB910);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 32);
      if (v5)
      {
LABEL_13:
        sub_25BC56450((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x277D84F90];
      if (result)
      {
        goto LABEL_13;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3978, &qword_25BCBB918);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void *sub_25BB022F4(void *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB38D8, &qword_25BCC5BA0);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      v10[2] = v8;
      v10[3] = 2 * ((v11 - 32) / 24);
      if (v5)
      {
LABEL_13:
        sub_25BAC9924();
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x277D84F90];
      if (result)
      {
        goto LABEL_13;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB38E0, &qword_25BCBB888);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void sub_25BB0240C()
{
  OUTLINED_FUNCTION_37();
  if ((v3 & 1) == 0 || (OUTLINED_FUNCTION_6_10(), v4 == v5))
  {
LABEL_6:
    OUTLINED_FUNCTION_8_5();
    if (v2)
    {
      v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3C28, &qword_25BCBBBA8);
      v7 = OUTLINED_FUNCTION_38_1(v6);
      OUTLINED_FUNCTION_1_5(v7);
      if (v1)
      {
LABEL_8:
        OUTLINED_FUNCTION_7_4();
        sub_25BAC947C();
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3C30, &qword_25BCBBBB0);
    OUTLINED_FUNCTION_17(v8);
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_31_0();
  if (!v4)
  {
    OUTLINED_FUNCTION_5_7();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_25BB024C0()
{
  OUTLINED_FUNCTION_37();
  if ((v3 & 1) == 0 || (OUTLINED_FUNCTION_6_10(), v4 == v5))
  {
LABEL_6:
    OUTLINED_FUNCTION_8_5();
    if (v2)
    {
      v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3C10, &qword_25BCBBB90);
      v7 = OUTLINED_FUNCTION_38_1(v6);
      OUTLINED_FUNCTION_1_5(v7);
      if (v1)
      {
LABEL_8:
        OUTLINED_FUNCTION_7_4();
        sub_25BAC947C();
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3C18, &qword_25BCBBB98);
    OUTLINED_FUNCTION_17(v8);
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_31_0();
  if (!v4)
  {
    OUTLINED_FUNCTION_5_7();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_25BB02574()
{
  OUTLINED_FUNCTION_37();
  if ((v3 & 1) == 0 || (OUTLINED_FUNCTION_6_10(), v4 == v5))
  {
LABEL_6:
    OUTLINED_FUNCTION_8_5();
    if (v2)
    {
      v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3A10, &qword_25BCBB990);
      v7 = OUTLINED_FUNCTION_38_1(v6);
      OUTLINED_FUNCTION_1_5(v7);
      if (v1)
      {
LABEL_8:
        OUTLINED_FUNCTION_7_4();
        sub_25BAC947C();
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3A18, &qword_25BCBB998);
    OUTLINED_FUNCTION_17(v8);
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_31_0();
  if (!v4)
  {
    OUTLINED_FUNCTION_5_7();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_25BB02628()
{
  OUTLINED_FUNCTION_37();
  if ((v3 & 1) == 0 || (OUTLINED_FUNCTION_6_10(), v4 == v5))
  {
LABEL_6:
    OUTLINED_FUNCTION_8_5();
    if (v2)
    {
      v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3D58, &qword_25BCBBCD8);
      v7 = OUTLINED_FUNCTION_38_1(v6);
      OUTLINED_FUNCTION_1_5(v7);
      if (v1)
      {
LABEL_8:
        OUTLINED_FUNCTION_7_4();
        sub_25BAC947C();
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3D60, &qword_25BCBBCE0);
    OUTLINED_FUNCTION_17(v8);
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_31_0();
  if (!v4)
  {
    OUTLINED_FUNCTION_5_7();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_25BB026DC()
{
  OUTLINED_FUNCTION_37();
  if ((v3 & 1) == 0 || (OUTLINED_FUNCTION_6_10(), v4 == v5))
  {
LABEL_6:
    OUTLINED_FUNCTION_8_5();
    if (v2)
    {
      v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3D48, &qword_25BCBBCC8);
      v7 = OUTLINED_FUNCTION_38_1(v6);
      OUTLINED_FUNCTION_1_5(v7);
      if (v1)
      {
LABEL_8:
        OUTLINED_FUNCTION_7_4();
        sub_25BAC947C();
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3D50, &qword_25BCBBCD0);
    OUTLINED_FUNCTION_17(v8);
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_31_0();
  if (!v4)
  {
    OUTLINED_FUNCTION_5_7();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_25BB02790()
{
  OUTLINED_FUNCTION_37();
  if ((v3 & 1) == 0 || (OUTLINED_FUNCTION_6_10(), v4 == v5))
  {
LABEL_6:
    OUTLINED_FUNCTION_8_5();
    if (v2)
    {
      v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3A60, &qword_25BCBB9E0);
      v7 = OUTLINED_FUNCTION_38_1(v6);
      OUTLINED_FUNCTION_1_5(v7);
      if (v1)
      {
LABEL_8:
        OUTLINED_FUNCTION_7_4();
        sub_25BAC947C();
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3A68, &qword_25BCBB9E8);
    OUTLINED_FUNCTION_17(v8);
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_31_0();
  if (!v4)
  {
    OUTLINED_FUNCTION_5_7();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_25BB02844()
{
  OUTLINED_FUNCTION_37();
  if ((v3 & 1) == 0 || (OUTLINED_FUNCTION_6_10(), v4 == v5))
  {
LABEL_6:
    OUTLINED_FUNCTION_8_5();
    if (v2)
    {
      v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3B50, &qword_25BCBBAD0);
      v7 = OUTLINED_FUNCTION_38_1(v6);
      OUTLINED_FUNCTION_1_5(v7);
      if (v1)
      {
LABEL_8:
        OUTLINED_FUNCTION_7_4();
        sub_25BAC947C();
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3B58, &qword_25BCBBAD8);
    OUTLINED_FUNCTION_17(v8);
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_31_0();
  if (!v4)
  {
    OUTLINED_FUNCTION_5_7();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_25BB028F8()
{
  OUTLINED_FUNCTION_37();
  if ((v3 & 1) == 0 || (OUTLINED_FUNCTION_6_10(), v4 == v5))
  {
LABEL_6:
    OUTLINED_FUNCTION_8_5();
    if (v2)
    {
      v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3CB8, &qword_25BCBBC38);
      v7 = OUTLINED_FUNCTION_38_1(v6);
      OUTLINED_FUNCTION_1_5(v7);
      if (v1)
      {
LABEL_8:
        OUTLINED_FUNCTION_7_4();
        sub_25BAC947C();
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3CC0, &qword_25BCBBC40);
    OUTLINED_FUNCTION_17(v8);
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_31_0();
  if (!v4)
  {
    OUTLINED_FUNCTION_5_7();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_25BB029AC()
{
  OUTLINED_FUNCTION_37();
  if ((v3 & 1) == 0 || (OUTLINED_FUNCTION_6_10(), v4 == v5))
  {
LABEL_6:
    OUTLINED_FUNCTION_8_5();
    if (v2)
    {
      v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3AD0, &qword_25BCBBA50);
      v7 = OUTLINED_FUNCTION_38_1(v6);
      OUTLINED_FUNCTION_1_5(v7);
      if (v1)
      {
LABEL_8:
        OUTLINED_FUNCTION_7_4();
        sub_25BAC947C();
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3AD8, &qword_25BCBBA58);
    OUTLINED_FUNCTION_17(v8);
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_31_0();
  if (!v4)
  {
    OUTLINED_FUNCTION_5_7();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_25BB02A60()
{
  OUTLINED_FUNCTION_37();
  if ((v3 & 1) == 0 || (OUTLINED_FUNCTION_6_10(), v4 == v5))
  {
LABEL_6:
    OUTLINED_FUNCTION_8_5();
    if (v2)
    {
      v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3AB0, &qword_25BCBBA30);
      v7 = OUTLINED_FUNCTION_38_1(v6);
      OUTLINED_FUNCTION_1_5(v7);
      if (v1)
      {
LABEL_8:
        OUTLINED_FUNCTION_7_4();
        sub_25BAC947C();
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3AB8, &qword_25BCBBA38);
    OUTLINED_FUNCTION_17(v8);
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_31_0();
  if (!v4)
  {
    OUTLINED_FUNCTION_5_7();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_25BB02B14()
{
  OUTLINED_FUNCTION_37();
  if ((v3 & 1) == 0 || (OUTLINED_FUNCTION_6_10(), v4 == v5))
  {
LABEL_6:
    OUTLINED_FUNCTION_8_5();
    if (v2)
    {
      v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3D78, &qword_25BCBBCF8);
      v7 = OUTLINED_FUNCTION_38_1(v6);
      OUTLINED_FUNCTION_1_5(v7);
      if (v1)
      {
LABEL_8:
        OUTLINED_FUNCTION_7_4();
        sub_25BAC947C();
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3D80, &qword_25BCBBD00);
    OUTLINED_FUNCTION_17(v8);
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_31_0();
  if (!v4)
  {
    OUTLINED_FUNCTION_5_7();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_25BB02BC8()
{
  OUTLINED_FUNCTION_37();
  if ((v3 & 1) == 0 || (OUTLINED_FUNCTION_6_10(), v4 == v5))
  {
LABEL_6:
    OUTLINED_FUNCTION_8_5();
    if (v2)
    {
      v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3D68, &qword_25BCBBCE8);
      v7 = OUTLINED_FUNCTION_38_1(v6);
      OUTLINED_FUNCTION_1_5(v7);
      if (v1)
      {
LABEL_8:
        OUTLINED_FUNCTION_7_4();
        sub_25BAC947C();
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3D70, &qword_25BCBBCF0);
    OUTLINED_FUNCTION_17(v8);
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_31_0();
  if (!v4)
  {
    OUTLINED_FUNCTION_5_7();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_25BB02C7C()
{
  OUTLINED_FUNCTION_37();
  if ((v3 & 1) == 0 || (OUTLINED_FUNCTION_6_10(), v4 == v5))
  {
LABEL_6:
    OUTLINED_FUNCTION_8_5();
    if (v2)
    {
      v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3A30, &qword_25BCBB9B0);
      v7 = OUTLINED_FUNCTION_38_1(v6);
      OUTLINED_FUNCTION_1_5(v7);
      if (v1)
      {
LABEL_8:
        OUTLINED_FUNCTION_7_4();
        sub_25BAC947C();
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3A38, &qword_25BCBB9B8);
    OUTLINED_FUNCTION_17(v8);
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_31_0();
  if (!v4)
  {
    OUTLINED_FUNCTION_5_7();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_25BB02D30()
{
  OUTLINED_FUNCTION_37();
  if ((v3 & 1) == 0 || (OUTLINED_FUNCTION_6_10(), v4 == v5))
  {
LABEL_6:
    OUTLINED_FUNCTION_8_5();
    if (v2)
    {
      v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3A50, &qword_25BCBB9D0);
      v7 = OUTLINED_FUNCTION_38_1(v6);
      OUTLINED_FUNCTION_1_5(v7);
      if (v1)
      {
LABEL_8:
        OUTLINED_FUNCTION_7_4();
        sub_25BAC947C();
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3A58, &qword_25BCBB9D8);
    OUTLINED_FUNCTION_17(v8);
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_31_0();
  if (!v4)
  {
    OUTLINED_FUNCTION_5_7();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_25BB02DE4()
{
  OUTLINED_FUNCTION_37();
  if ((v3 & 1) == 0 || (OUTLINED_FUNCTION_6_10(), v4 == v5))
  {
LABEL_6:
    OUTLINED_FUNCTION_8_5();
    if (v2)
    {
      v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3A00, &qword_25BCBB980);
      v7 = OUTLINED_FUNCTION_38_1(v6);
      OUTLINED_FUNCTION_1_5(v7);
      if (v1)
      {
LABEL_8:
        OUTLINED_FUNCTION_7_4();
        sub_25BAC947C();
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3A08, &qword_25BCBB988);
    OUTLINED_FUNCTION_17(v8);
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_31_0();
  if (!v4)
  {
    OUTLINED_FUNCTION_5_7();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_25BB02E98()
{
  OUTLINED_FUNCTION_37();
  if ((v3 & 1) == 0 || (OUTLINED_FUNCTION_6_10(), v4 == v5))
  {
LABEL_6:
    OUTLINED_FUNCTION_8_5();
    if (v2)
    {
      v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3A20, &qword_25BCBB9A0);
      v7 = OUTLINED_FUNCTION_38_1(v6);
      OUTLINED_FUNCTION_1_5(v7);
      if (v1)
      {
LABEL_8:
        OUTLINED_FUNCTION_7_4();
        sub_25BAC947C();
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3A28, &qword_25BCBB9A8);
    OUTLINED_FUNCTION_17(v8);
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_31_0();
  if (!v4)
  {
    OUTLINED_FUNCTION_5_7();
    goto LABEL_6;
  }

  __break(1u);
}

void *sub_25BB02F4C(void *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 3);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
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
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB38D0, &qword_25BCBB880);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 176);
      if (v5)
      {
LABEL_13:
        sub_25BC56218(a4 + 32, v8, (v10 + 32));
        *(a4 + 2) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x277D84F90];
      if (result)
      {
        goto LABEL_13;
      }
    }

    memcpy((v10 + 32), a4 + 32, 176 * v8);
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void *sub_25BB03050(void *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_25:
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

  v8 = *(a4 + 16);
  if (v7 <= v8)
  {
    v9 = *(a4 + 16);
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3ED8, &qword_25BCBBE20);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3EB8, &qword_25BCBBE08) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if ((result - v12) == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_24;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3EB8, &qword_25BCBBE08);
  if (v5)
  {
    sub_25BC56240();
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

void *sub_25BB0321C(void *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_25:
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

  v8 = *(a4 + 16);
  if (v7 <= v8)
  {
    v9 = *(a4 + 16);
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3EA8, &qword_25BCC2B10);
  v10 = *(sub_25BCB5BCC() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if ((result - v12) == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_24;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(sub_25BCB5BCC() - 8);
  if (v5)
  {
    v16 = (*(v15 + 80) + 32) & ~*(v15 + 80);
    sub_25BC56324(a4 + v16, v8, v13 + v16);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

uint64_t sub_25BB033D0(uint64_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB39D8, &qword_25BCBB960);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 24);
      if (v5)
      {
LABEL_13:
        sub_25BAC9928((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x277D84F90];
      if (result)
      {
        goto LABEL_13;
      }
    }

    memcpy((v10 + 32), (a4 + 32), 24 * v8);
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void sub_25BB034D4()
{
  OUTLINED_FUNCTION_21_0();
  if ((v5 & 1) == 0 || (OUTLINED_FUNCTION_6_10(), v6 == v7))
  {
LABEL_6:
    OUTLINED_FUNCTION_20();
    if (v4)
    {
      OUTLINED_FUNCTION_87(v8, v9, v10, v11, v12, v13);
      v14 = OUTLINED_FUNCTION_77();
      OUTLINED_FUNCTION_2_2(v14);
      v14[2] = v3;
      v14[3] = v15;
      if (v2)
      {
LABEL_8:
        v16 = OUTLINED_FUNCTION_23_1();
        v1(v16);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v2)
    {
      goto LABEL_8;
    }

    v17 = OUTLINED_FUNCTION_78();
    memcpy(v17, v18, v19);
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_31_0();
  if (!v6)
  {
    OUTLINED_FUNCTION_5_7();
    goto LABEL_6;
  }

  __break(1u);
}

uint64_t sub_25BB03584(uint64_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3F70, &qword_25BCBBE98);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 32);
      if (v5)
      {
LABEL_13:
        sub_25BC56450((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x277D84F90];
      if (result)
      {
        goto LABEL_13;
      }
    }

    memcpy((v10 + 32), (a4 + 32), 32 * v8);
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

uint64_t sub_25BB0367C(uint64_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB38B0, &qword_25BCBB870);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 40);
      if (v5)
      {
LABEL_13:
        sub_25BC5645C((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x277D84F90];
      if (result)
      {
        goto LABEL_13;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB38A8, &qword_25BCBB868);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

uint64_t sub_25BB03794(uint64_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB38B8, &qword_25BCBB878);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 40);
      if (v5)
      {
LABEL_13:
        sub_25BC5645C((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x277D84F90];
      if (result)
      {
        goto LABEL_13;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB38A0, &qword_25BCBB860);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

uint64_t sub_25BB038AC(uint64_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3890, &qword_25BCBB850);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 32);
      if (v5)
      {
LABEL_13:
        sub_25BC56450((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x277D84F90];
      if (result)
      {
        goto LABEL_13;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3888, &qword_25BCBB848);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

uint64_t sub_25BB039BC(uint64_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3898, &qword_25BCBB858);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 32);
      if (v5)
      {
LABEL_13:
        sub_25BC56450((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x277D84F90];
      if (result)
      {
        goto LABEL_13;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3880, &qword_25BCBB840);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void *sub_25BB03ACC(void *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3990, &qword_25BCBB930);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 40);
      if (v5)
      {
LABEL_13:
        sub_25BC563FC((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x277D84F90];
      if (result)
      {
        goto LABEL_13;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3988, &qword_25BCBB928);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void *sub_25BB03BE4(void *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB50C0, &qword_25BCBB8D8);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      v10[2] = v8;
      v10[3] = 2 * ((v11 - 32) / 16);
      if (v5)
      {
LABEL_13:
        sub_25BAC947C();
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x277D84F90];
      if (result)
      {
        goto LABEL_13;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3938, &qword_25BCBE490);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void sub_25BB03CF4()
{
  OUTLINED_FUNCTION_21_0();
  if ((v5 & 1) == 0 || (OUTLINED_FUNCTION_6_10(), v6 == v7))
  {
LABEL_6:
    OUTLINED_FUNCTION_20();
    if (v4)
    {
      OUTLINED_FUNCTION_87(v8, v9, v10, v11, v12, v13);
      v14 = OUTLINED_FUNCTION_77();
      _swift_stdlib_malloc_size(v14);
      OUTLINED_FUNCTION_39_2();
      v14[2] = v3;
      v14[3] = v15;
      if (v2)
      {
LABEL_8:
        v16 = OUTLINED_FUNCTION_23_1();
        v1(v16);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v2)
    {
      goto LABEL_8;
    }

    v17 = OUTLINED_FUNCTION_78();
    memcpy(v17, v18, v19);
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_31_0();
  if (!v6)
  {
    OUTLINED_FUNCTION_5_7();
    goto LABEL_6;
  }

  __break(1u);
}

uint64_t sub_25BB03DB0(uint64_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3E78, &qword_25BCCC700);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 40);
      if (v5)
      {
LABEL_13:
        sub_25BC5645C((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x277D84F90];
      if (result)
      {
        goto LABEL_13;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3E80, &qword_25BCBBDD8);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void sub_25BB03EC8()
{
  OUTLINED_FUNCTION_75();
  if ((v4 & 1) == 0 || (OUTLINED_FUNCTION_6_10(), v5 == v6))
  {
LABEL_6:
    OUTLINED_FUNCTION_52();
    if (v3)
    {
      v13 = OUTLINED_FUNCTION_87(v7, v8, v9, v10, v11, v12);
      v14 = OUTLINED_FUNCTION_121(v13);
      v15 = _swift_stdlib_malloc_size(v14);
      OUTLINED_FUNCTION_111(v15);
      if (v2)
      {
LABEL_8:
        v16 = OUTLINED_FUNCTION_54_0();
        v1(v16);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v2)
    {
      goto LABEL_8;
    }

    OUTLINED_FUNCTION_51_2();
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_31_0();
  if (!v5)
  {
    OUTLINED_FUNCTION_5_7();
    goto LABEL_6;
  }

  __break(1u);
}

uint64_t sub_25BB03F74(uint64_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3EA0, &qword_25BCBBDF8);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 24);
      if (v5)
      {
LABEL_13:
        sub_25BC56454((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x277D84F90];
      if (result)
      {
        goto LABEL_13;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3E90, &qword_25BCBBDE8);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void sub_25BB0408C()
{
  OUTLINED_FUNCTION_21_0();
  if ((v5 & 1) == 0 || (OUTLINED_FUNCTION_6_10(), v6 == v7))
  {
LABEL_6:
    OUTLINED_FUNCTION_20();
    if (v4)
    {
      OUTLINED_FUNCTION_87(v8, v9, v10, v11, v12, v13);
      v14 = swift_allocObject();
      v15 = _swift_stdlib_malloc_size(v14);
      v14[2] = v3;
      v14[3] = 2 * v15 - 64;
      if (v2)
      {
LABEL_8:
        v16 = OUTLINED_FUNCTION_23_1();
        v1(v16);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v2)
    {
      goto LABEL_8;
    }

    v17 = OUTLINED_FUNCTION_78();
    memcpy(v17, v18, v3);
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_31_0();
  if (!v6)
  {
    OUTLINED_FUNCTION_5_7();
    goto LABEL_6;
  }

  __break(1u);
}

void *sub_25BB04148(void *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3860, &qword_25BCBB828);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 48);
      if (v5)
      {
LABEL_13:
        sub_25BC5615C((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x277D84F90];
      if (result)
      {
        goto LABEL_13;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3868, &qword_25BCBE9A0);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void sub_25BB04260()
{
  OUTLINED_FUNCTION_37();
  if ((v3 & 1) == 0 || (OUTLINED_FUNCTION_6_10(), v4 == v5))
  {
LABEL_6:
    OUTLINED_FUNCTION_8_5();
    if (v2)
    {
      v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3D98, &qword_25BCBBD18);
      v7 = OUTLINED_FUNCTION_38_1(v6);
      OUTLINED_FUNCTION_1_5(v7);
      if (v1)
      {
LABEL_8:
        OUTLINED_FUNCTION_7_4();
        sub_25BAC947C();
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3DA0, &qword_25BCBBD20);
    OUTLINED_FUNCTION_17(v8);
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_31_0();
  if (!v4)
  {
    OUTLINED_FUNCTION_5_7();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_25BB04314()
{
  OUTLINED_FUNCTION_37();
  if ((v3 & 1) == 0 || (OUTLINED_FUNCTION_6_10(), v4 == v5))
  {
LABEL_6:
    OUTLINED_FUNCTION_8_5();
    if (v2)
    {
      v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3B10, &qword_25BCBBA90);
      v7 = OUTLINED_FUNCTION_38_1(v6);
      OUTLINED_FUNCTION_1_5(v7);
      if (v1)
      {
LABEL_8:
        OUTLINED_FUNCTION_7_4();
        sub_25BAC947C();
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3B18, &qword_25BCBBA98);
    OUTLINED_FUNCTION_17(v8);
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_31_0();
  if (!v4)
  {
    OUTLINED_FUNCTION_5_7();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_25BB043C8()
{
  OUTLINED_FUNCTION_37();
  if ((v3 & 1) == 0 || (OUTLINED_FUNCTION_6_10(), v4 == v5))
  {
LABEL_6:
    OUTLINED_FUNCTION_8_5();
    if (v2)
    {
      v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3BC0, &qword_25BCBBB40);
      v7 = OUTLINED_FUNCTION_38_1(v6);
      OUTLINED_FUNCTION_1_5(v7);
      if (v1)
      {
LABEL_8:
        OUTLINED_FUNCTION_7_4();
        sub_25BAC947C();
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3BC8, &qword_25BCBBB48);
    OUTLINED_FUNCTION_17(v8);
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_31_0();
  if (!v4)
  {
    OUTLINED_FUNCTION_5_7();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_25BB0447C()
{
  OUTLINED_FUNCTION_37();
  if ((v3 & 1) == 0 || (OUTLINED_FUNCTION_6_10(), v4 == v5))
  {
LABEL_6:
    OUTLINED_FUNCTION_8_5();
    if (v2)
    {
      v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3B80, &qword_25BCBBB00);
      v7 = OUTLINED_FUNCTION_38_1(v6);
      OUTLINED_FUNCTION_1_5(v7);
      if (v1)
      {
LABEL_8:
        OUTLINED_FUNCTION_7_4();
        sub_25BAC947C();
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3B88, &qword_25BCBBB08);
    OUTLINED_FUNCTION_17(v8);
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_31_0();
  if (!v4)
  {
    OUTLINED_FUNCTION_5_7();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_25BB04530()
{
  OUTLINED_FUNCTION_37();
  if ((v3 & 1) == 0 || (OUTLINED_FUNCTION_6_10(), v4 == v5))
  {
LABEL_6:
    OUTLINED_FUNCTION_8_5();
    if (v2)
    {
      v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3BE0, &qword_25BCBBB60);
      v7 = OUTLINED_FUNCTION_38_1(v6);
      OUTLINED_FUNCTION_1_5(v7);
      if (v1)
      {
LABEL_8:
        OUTLINED_FUNCTION_7_4();
        sub_25BAC947C();
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3BE8, &qword_25BCBBB68);
    OUTLINED_FUNCTION_17(v8);
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_31_0();
  if (!v4)
  {
    OUTLINED_FUNCTION_5_7();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_25BB045E4()
{
  OUTLINED_FUNCTION_37();
  if ((v3 & 1) == 0 || (OUTLINED_FUNCTION_6_10(), v4 == v5))
  {
LABEL_6:
    OUTLINED_FUNCTION_8_5();
    if (v2)
    {
      v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3AE0, &qword_25BCBBA60);
      v7 = OUTLINED_FUNCTION_38_1(v6);
      OUTLINED_FUNCTION_1_5(v7);
      if (v1)
      {
LABEL_8:
        OUTLINED_FUNCTION_7_4();
        sub_25BAC947C();
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3AE8, &qword_25BCBBA68);
    OUTLINED_FUNCTION_17(v8);
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_31_0();
  if (!v4)
  {
    OUTLINED_FUNCTION_5_7();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_25BB04698()
{
  OUTLINED_FUNCTION_37();
  if ((v3 & 1) == 0 || (OUTLINED_FUNCTION_6_10(), v4 == v5))
  {
LABEL_6:
    OUTLINED_FUNCTION_8_5();
    if (v2)
    {
      v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3AF0, &qword_25BCBBA70);
      v7 = OUTLINED_FUNCTION_38_1(v6);
      OUTLINED_FUNCTION_1_5(v7);
      if (v1)
      {
LABEL_8:
        OUTLINED_FUNCTION_7_4();
        sub_25BAC947C();
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3AF8, &qword_25BCBBA78);
    OUTLINED_FUNCTION_17(v8);
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_31_0();
  if (!v4)
  {
    OUTLINED_FUNCTION_5_7();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_25BB0474C()
{
  OUTLINED_FUNCTION_37();
  if ((v3 & 1) == 0 || (OUTLINED_FUNCTION_6_10(), v4 == v5))
  {
LABEL_6:
    OUTLINED_FUNCTION_8_5();
    if (v2)
    {
      v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3D88, &qword_25BCBBD08);
      v7 = OUTLINED_FUNCTION_38_1(v6);
      OUTLINED_FUNCTION_1_5(v7);
      if (v1)
      {
LABEL_8:
        OUTLINED_FUNCTION_7_4();
        sub_25BAC947C();
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3D90, &qword_25BCBBD10);
    OUTLINED_FUNCTION_17(v8);
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_31_0();
  if (!v4)
  {
    OUTLINED_FUNCTION_5_7();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_25BB04800()
{
  OUTLINED_FUNCTION_37();
  if ((v3 & 1) == 0 || (OUTLINED_FUNCTION_6_10(), v4 == v5))
  {
LABEL_6:
    OUTLINED_FUNCTION_8_5();
    if (v2)
    {
      v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3A90, &qword_25BCBBA10);
      v7 = OUTLINED_FUNCTION_38_1(v6);
      OUTLINED_FUNCTION_1_5(v7);
      if (v1)
      {
LABEL_8:
        OUTLINED_FUNCTION_7_4();
        sub_25BAC947C();
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3A98, &qword_25BCBBA18);
    OUTLINED_FUNCTION_17(v8);
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_31_0();
  if (!v4)
  {
    OUTLINED_FUNCTION_5_7();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_25BB048B4()
{
  OUTLINED_FUNCTION_37();
  if ((v3 & 1) == 0 || (OUTLINED_FUNCTION_6_10(), v4 == v5))
  {
LABEL_6:
    OUTLINED_FUNCTION_8_5();
    if (v2)
    {
      v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3C88, &qword_25BCBBC08);
      v7 = OUTLINED_FUNCTION_38_1(v6);
      OUTLINED_FUNCTION_1_5(v7);
      if (v1)
      {
LABEL_8:
        OUTLINED_FUNCTION_7_4();
        sub_25BAC947C();
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3C90, &qword_25BCBBC10);
    OUTLINED_FUNCTION_17(v8);
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_31_0();
  if (!v4)
  {
    OUTLINED_FUNCTION_5_7();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_25BB04968()
{
  OUTLINED_FUNCTION_37();
  if ((v3 & 1) == 0 || (OUTLINED_FUNCTION_6_10(), v4 == v5))
  {
LABEL_6:
    OUTLINED_FUNCTION_8_5();
    if (v2)
    {
      v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3C78, &qword_25BCBBBF8);
      v7 = OUTLINED_FUNCTION_38_1(v6);
      OUTLINED_FUNCTION_1_5(v7);
      if (v1)
      {
LABEL_8:
        OUTLINED_FUNCTION_7_4();
        sub_25BAC947C();
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3C80, &qword_25BCBBC00);
    OUTLINED_FUNCTION_17(v8);
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_31_0();
  if (!v4)
  {
    OUTLINED_FUNCTION_5_7();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_25BB04A1C()
{
  OUTLINED_FUNCTION_37();
  if ((v3 & 1) == 0 || (OUTLINED_FUNCTION_6_10(), v4 == v5))
  {
LABEL_6:
    OUTLINED_FUNCTION_8_5();
    if (v2)
    {
      v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3CD8, &qword_25BCBBC58);
      v7 = OUTLINED_FUNCTION_38_1(v6);
      OUTLINED_FUNCTION_1_5(v7);
      if (v1)
      {
LABEL_8:
        OUTLINED_FUNCTION_7_4();
        sub_25BAC947C();
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3CE0, &qword_25BCBBC60);
    OUTLINED_FUNCTION_17(v8);
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_31_0();
  if (!v4)
  {
    OUTLINED_FUNCTION_5_7();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_25BB04AD0()
{
  OUTLINED_FUNCTION_37();
  if ((v3 & 1) == 0 || (OUTLINED_FUNCTION_6_10(), v4 == v5))
  {
LABEL_6:
    OUTLINED_FUNCTION_8_5();
    if (v2)
    {
      v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3CC8, &qword_25BCBBC48);
      v7 = OUTLINED_FUNCTION_38_1(v6);
      OUTLINED_FUNCTION_1_5(v7);
      if (v1)
      {
LABEL_8:
        OUTLINED_FUNCTION_7_4();
        sub_25BAC947C();
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3CD0, &qword_25BCBBC50);
    OUTLINED_FUNCTION_17(v8);
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_31_0();
  if (!v4)
  {
    OUTLINED_FUNCTION_5_7();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_25BB04B84()
{
  OUTLINED_FUNCTION_37();
  if ((v3 & 1) == 0 || (OUTLINED_FUNCTION_6_10(), v4 == v5))
  {
LABEL_6:
    OUTLINED_FUNCTION_8_5();
    if (v2)
    {
      v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3CF8, &qword_25BCBBC78);
      v7 = OUTLINED_FUNCTION_38_1(v6);
      OUTLINED_FUNCTION_1_5(v7);
      if (v1)
      {
LABEL_8:
        OUTLINED_FUNCTION_7_4();
        sub_25BAC947C();
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3D00, &qword_25BCBBC80);
    OUTLINED_FUNCTION_17(v8);
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_31_0();
  if (!v4)
  {
    OUTLINED_FUNCTION_5_7();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_25BB04C38()
{
  OUTLINED_FUNCTION_37();
  if ((v3 & 1) == 0 || (OUTLINED_FUNCTION_6_10(), v4 == v5))
  {
LABEL_6:
    OUTLINED_FUNCTION_8_5();
    if (v2)
    {
      v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3CE8, &qword_25BCBBC68);
      v7 = OUTLINED_FUNCTION_38_1(v6);
      OUTLINED_FUNCTION_1_5(v7);
      if (v1)
      {
LABEL_8:
        OUTLINED_FUNCTION_7_4();
        sub_25BAC947C();
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3CF0, &qword_25BCBBC70);
    OUTLINED_FUNCTION_17(v8);
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_31_0();
  if (!v4)
  {
    OUTLINED_FUNCTION_5_7();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_25BB04CEC()
{
  OUTLINED_FUNCTION_37();
  if ((v3 & 1) == 0 || (OUTLINED_FUNCTION_6_10(), v4 == v5))
  {
LABEL_6:
    OUTLINED_FUNCTION_8_5();
    if (v2)
    {
      v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3C48, &qword_25BCBBBC8);
      v7 = OUTLINED_FUNCTION_38_1(v6);
      OUTLINED_FUNCTION_1_5(v7);
      if (v1)
      {
LABEL_8:
        OUTLINED_FUNCTION_7_4();
        sub_25BAC947C();
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3C50, &qword_25BCBBBD0);
    OUTLINED_FUNCTION_17(v8);
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_31_0();
  if (!v4)
  {
    OUTLINED_FUNCTION_5_7();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_25BB04DA0()
{
  OUTLINED_FUNCTION_37();
  if ((v3 & 1) == 0 || (OUTLINED_FUNCTION_6_10(), v4 == v5))
  {
LABEL_6:
    OUTLINED_FUNCTION_8_5();
    if (v2)
    {
      v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3C38, &qword_25BCBBBB8);
      v7 = OUTLINED_FUNCTION_38_1(v6);
      OUTLINED_FUNCTION_1_5(v7);
      if (v1)
      {
LABEL_8:
        OUTLINED_FUNCTION_7_4();
        sub_25BAC947C();
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3C40, &qword_25BCBBBC0);
    OUTLINED_FUNCTION_17(v8);
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_31_0();
  if (!v4)
  {
    OUTLINED_FUNCTION_5_7();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_25BB04E54()
{
  OUTLINED_FUNCTION_37();
  if ((v3 & 1) == 0 || (OUTLINED_FUNCTION_6_10(), v4 == v5))
  {
LABEL_6:
    OUTLINED_FUNCTION_8_5();
    if (v2)
    {
      v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3D18, &qword_25BCBBC98);
      v7 = OUTLINED_FUNCTION_38_1(v6);
      OUTLINED_FUNCTION_1_5(v7);
      if (v1)
      {
LABEL_8:
        OUTLINED_FUNCTION_7_4();
        sub_25BAC947C();
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3D20, &qword_25BCBBCA0);
    OUTLINED_FUNCTION_17(v8);
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_31_0();
  if (!v4)
  {
    OUTLINED_FUNCTION_5_7();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_25BB04F08()
{
  OUTLINED_FUNCTION_37();
  if ((v3 & 1) == 0 || (OUTLINED_FUNCTION_6_10(), v4 == v5))
  {
LABEL_6:
    OUTLINED_FUNCTION_8_5();
    if (v2)
    {
      v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3D08, &qword_25BCBBC88);
      v7 = OUTLINED_FUNCTION_38_1(v6);
      OUTLINED_FUNCTION_1_5(v7);
      if (v1)
      {
LABEL_8:
        OUTLINED_FUNCTION_7_4();
        sub_25BAC947C();
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3D10, &qword_25BCBBC90);
    OUTLINED_FUNCTION_17(v8);
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_31_0();
  if (!v4)
  {
    OUTLINED_FUNCTION_5_7();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_25BB04FBC()
{
  OUTLINED_FUNCTION_37();
  if ((v3 & 1) == 0 || (OUTLINED_FUNCTION_6_10(), v4 == v5))
  {
LABEL_6:
    OUTLINED_FUNCTION_8_5();
    if (v2)
    {
      v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3C68, &qword_25BCBBBE8);
      v7 = OUTLINED_FUNCTION_38_1(v6);
      OUTLINED_FUNCTION_1_5(v7);
      if (v1)
      {
LABEL_8:
        OUTLINED_FUNCTION_7_4();
        sub_25BAC947C();
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3C70, &qword_25BCBBBF0);
    OUTLINED_FUNCTION_17(v8);
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_31_0();
  if (!v4)
  {
    OUTLINED_FUNCTION_5_7();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_25BB05070()
{
  OUTLINED_FUNCTION_37();
  if ((v3 & 1) == 0 || (OUTLINED_FUNCTION_6_10(), v4 == v5))
  {
LABEL_6:
    OUTLINED_FUNCTION_8_5();
    if (v2)
    {
      v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3C58, &qword_25BCBBBD8);
      v7 = OUTLINED_FUNCTION_38_1(v6);
      OUTLINED_FUNCTION_1_5(v7);
      if (v1)
      {
LABEL_8:
        OUTLINED_FUNCTION_7_4();
        sub_25BAC947C();
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3C60, &qword_25BCBBBE0);
    OUTLINED_FUNCTION_17(v8);
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_31_0();
  if (!v4)
  {
    OUTLINED_FUNCTION_5_7();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_25BB05124()
{
  OUTLINED_FUNCTION_37();
  if ((v3 & 1) == 0 || (OUTLINED_FUNCTION_6_10(), v4 == v5))
  {
LABEL_6:
    OUTLINED_FUNCTION_8_5();
    if (v2)
    {
      v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3B70, &qword_25BCBBAF0);
      v7 = OUTLINED_FUNCTION_38_1(v6);
      OUTLINED_FUNCTION_1_5(v7);
      if (v1)
      {
LABEL_8:
        OUTLINED_FUNCTION_7_4();
        sub_25BAC947C();
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3B78, &qword_25BCBBAF8);
    OUTLINED_FUNCTION_17(v8);
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_31_0();
  if (!v4)
  {
    OUTLINED_FUNCTION_5_7();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_25BB051D8()
{
  OUTLINED_FUNCTION_37();
  if ((v3 & 1) == 0 || (OUTLINED_FUNCTION_6_10(), v4 == v5))
  {
LABEL_6:
    OUTLINED_FUNCTION_8_5();
    if (v2)
    {
      v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3B00, &qword_25BCBBA80);
      v7 = OUTLINED_FUNCTION_38_1(v6);
      OUTLINED_FUNCTION_1_5(v7);
      if (v1)
      {
LABEL_8:
        OUTLINED_FUNCTION_7_4();
        sub_25BAC947C();
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3B08, &qword_25BCBBA88);
    OUTLINED_FUNCTION_17(v8);
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_31_0();
  if (!v4)
  {
    OUTLINED_FUNCTION_5_7();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_25BB0528C()
{
  OUTLINED_FUNCTION_37();
  if ((v3 & 1) == 0 || (OUTLINED_FUNCTION_6_10(), v4 == v5))
  {
LABEL_6:
    OUTLINED_FUNCTION_8_5();
    if (v2)
    {
      v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3B60, &qword_25BCBBAE0);
      v7 = OUTLINED_FUNCTION_38_1(v6);
      OUTLINED_FUNCTION_1_5(v7);
      if (v1)
      {
LABEL_8:
        OUTLINED_FUNCTION_7_4();
        sub_25BAC947C();
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3B68, &qword_25BCBBAE8);
    OUTLINED_FUNCTION_17(v8);
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_31_0();
  if (!v4)
  {
    OUTLINED_FUNCTION_5_7();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_25BB05340()
{
  OUTLINED_FUNCTION_37();
  if ((v3 & 1) == 0 || (OUTLINED_FUNCTION_6_10(), v4 == v5))
  {
LABEL_6:
    OUTLINED_FUNCTION_8_5();
    if (v2)
    {
      v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3B20, &qword_25BCBBAA0);
      v7 = OUTLINED_FUNCTION_38_1(v6);
      OUTLINED_FUNCTION_1_5(v7);
      if (v1)
      {
LABEL_8:
        OUTLINED_FUNCTION_7_4();
        sub_25BAC947C();
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3B28, &qword_25BCBBAA8);
    OUTLINED_FUNCTION_17(v8);
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_31_0();
  if (!v4)
  {
    OUTLINED_FUNCTION_5_7();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_25BB053F4()
{
  OUTLINED_FUNCTION_37();
  if ((v3 & 1) == 0 || (OUTLINED_FUNCTION_6_10(), v4 == v5))
  {
LABEL_6:
    OUTLINED_FUNCTION_8_5();
    if (v2)
    {
      v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3BF0, &qword_25BCBBB70);
      v7 = OUTLINED_FUNCTION_38_1(v6);
      OUTLINED_FUNCTION_1_5(v7);
      if (v1)
      {
LABEL_8:
        OUTLINED_FUNCTION_7_4();
        sub_25BAC947C();
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3BF8, &qword_25BCBBB78);
    OUTLINED_FUNCTION_17(v8);
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_31_0();
  if (!v4)
  {
    OUTLINED_FUNCTION_5_7();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_25BB054A8()
{
  OUTLINED_FUNCTION_37();
  if ((v3 & 1) == 0 || (OUTLINED_FUNCTION_6_10(), v4 == v5))
  {
LABEL_6:
    OUTLINED_FUNCTION_8_5();
    if (v2)
    {
      v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3B40, &qword_25BCBBAC0);
      v7 = OUTLINED_FUNCTION_38_1(v6);
      OUTLINED_FUNCTION_1_5(v7);
      if (v1)
      {
LABEL_8:
        OUTLINED_FUNCTION_7_4();
        sub_25BAC947C();
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3B48, &qword_25BCBBAC8);
    OUTLINED_FUNCTION_17(v8);
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_31_0();
  if (!v4)
  {
    OUTLINED_FUNCTION_5_7();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_25BB0555C()
{
  OUTLINED_FUNCTION_37();
  if ((v3 & 1) == 0 || (OUTLINED_FUNCTION_6_10(), v4 == v5))
  {
LABEL_6:
    OUTLINED_FUNCTION_8_5();
    if (v2)
    {
      v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3A40, &qword_25BCBB9C0);
      v7 = OUTLINED_FUNCTION_38_1(v6);
      OUTLINED_FUNCTION_1_5(v7);
      if (v1)
      {
LABEL_8:
        OUTLINED_FUNCTION_7_4();
        sub_25BAC947C();
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3A48, &qword_25BCBB9C8);
    OUTLINED_FUNCTION_17(v8);
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_31_0();
  if (!v4)
  {
    OUTLINED_FUNCTION_5_7();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_25BB05610()
{
  OUTLINED_FUNCTION_37();
  if ((v3 & 1) == 0 || (OUTLINED_FUNCTION_6_10(), v4 == v5))
  {
LABEL_6:
    OUTLINED_FUNCTION_8_5();
    if (v2)
    {
      v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3C00, &qword_25BCBBB80);
      v7 = OUTLINED_FUNCTION_38_1(v6);
      OUTLINED_FUNCTION_1_5(v7);
      if (v1)
      {
LABEL_8:
        OUTLINED_FUNCTION_7_4();
        sub_25BAC947C();
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3C08, &qword_25BCBBB88);
    OUTLINED_FUNCTION_17(v8);
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_31_0();
  if (!v4)
  {
    OUTLINED_FUNCTION_5_7();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_25BB056C4()
{
  OUTLINED_FUNCTION_37();
  if ((v3 & 1) == 0 || (OUTLINED_FUNCTION_6_10(), v4 == v5))
  {
LABEL_6:
    OUTLINED_FUNCTION_8_5();
    if (v2)
    {
      v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3BD0, &qword_25BCBBB50);
      v7 = OUTLINED_FUNCTION_38_1(v6);
      OUTLINED_FUNCTION_1_5(v7);
      if (v1)
      {
LABEL_8:
        OUTLINED_FUNCTION_7_4();
        sub_25BAC947C();
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3BD8, &qword_25BCBBB58);
    OUTLINED_FUNCTION_17(v8);
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_31_0();
  if (!v4)
  {
    OUTLINED_FUNCTION_5_7();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_25BB05778()
{
  OUTLINED_FUNCTION_37();
  if ((v3 & 1) == 0 || (OUTLINED_FUNCTION_6_10(), v4 == v5))
  {
LABEL_6:
    OUTLINED_FUNCTION_8_5();
    if (v2)
    {
      v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3B90, &qword_25BCBBB10);
      v7 = OUTLINED_FUNCTION_38_1(v6);
      OUTLINED_FUNCTION_1_5(v7);
      if (v1)
      {
LABEL_8:
        OUTLINED_FUNCTION_7_4();
        sub_25BAC947C();
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3B98, &qword_25BCBBB18);
    OUTLINED_FUNCTION_17(v8);
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_31_0();
  if (!v4)
  {
    OUTLINED_FUNCTION_5_7();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_25BB0582C()
{
  OUTLINED_FUNCTION_37();
  if ((v3 & 1) == 0 || (OUTLINED_FUNCTION_6_10(), v4 == v5))
  {
LABEL_6:
    OUTLINED_FUNCTION_8_5();
    if (v2)
    {
      v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3AA0, &qword_25BCBBA20);
      v7 = OUTLINED_FUNCTION_38_1(v6);
      OUTLINED_FUNCTION_1_5(v7);
      if (v1)
      {
LABEL_8:
        OUTLINED_FUNCTION_7_4();
        sub_25BAC947C();
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3AA8, &qword_25BCBBA28);
    OUTLINED_FUNCTION_17(v8);
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_31_0();
  if (!v4)
  {
    OUTLINED_FUNCTION_5_7();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_25BB058E0()
{
  OUTLINED_FUNCTION_37();
  if ((v3 & 1) == 0 || (OUTLINED_FUNCTION_6_10(), v4 == v5))
  {
LABEL_6:
    OUTLINED_FUNCTION_8_5();
    if (v2)
    {
      v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3AC0, &qword_25BCBBA40);
      v7 = OUTLINED_FUNCTION_38_1(v6);
      OUTLINED_FUNCTION_1_5(v7);
      if (v1)
      {
LABEL_8:
        OUTLINED_FUNCTION_7_4();
        sub_25BAC947C();
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3AC8, &qword_25BCBBA48);
    OUTLINED_FUNCTION_17(v8);
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_31_0();
  if (!v4)
  {
    OUTLINED_FUNCTION_5_7();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_25BB05994()
{
  OUTLINED_FUNCTION_37();
  if ((v3 & 1) == 0 || (OUTLINED_FUNCTION_6_10(), v4 == v5))
  {
LABEL_6:
    OUTLINED_FUNCTION_8_5();
    if (v2)
    {
      v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3BB0, &qword_25BCBBB30);
      v7 = OUTLINED_FUNCTION_38_1(v6);
      OUTLINED_FUNCTION_1_5(v7);
      if (v1)
      {
LABEL_8:
        OUTLINED_FUNCTION_7_4();
        sub_25BAC947C();
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3BB8, &qword_25BCBBB38);
    OUTLINED_FUNCTION_17(v8);
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_31_0();
  if (!v4)
  {
    OUTLINED_FUNCTION_5_7();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_25BB05A48()
{
  OUTLINED_FUNCTION_37();
  if ((v3 & 1) == 0 || (OUTLINED_FUNCTION_6_10(), v4 == v5))
  {
LABEL_6:
    OUTLINED_FUNCTION_8_5();
    if (v2)
    {
      v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3BA0, &qword_25BCBBB20);
      v7 = OUTLINED_FUNCTION_38_1(v6);
      OUTLINED_FUNCTION_1_5(v7);
      if (v1)
      {
LABEL_8:
        OUTLINED_FUNCTION_7_4();
        sub_25BAC947C();
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3BA8, &qword_25BCBBB28);
    OUTLINED_FUNCTION_17(v8);
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_31_0();
  if (!v4)
  {
    OUTLINED_FUNCTION_5_7();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_25BB05AFC()
{
  OUTLINED_FUNCTION_37();
  if ((v3 & 1) == 0 || (OUTLINED_FUNCTION_6_10(), v4 == v5))
  {
LABEL_6:
    OUTLINED_FUNCTION_8_5();
    if (v2)
    {
      v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3A70, &qword_25BCBB9F0);
      v7 = OUTLINED_FUNCTION_38_1(v6);
      OUTLINED_FUNCTION_1_5(v7);
      if (v1)
      {
LABEL_8:
        OUTLINED_FUNCTION_7_4();
        sub_25BAC947C();
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3A78, &qword_25BCBB9F8);
    OUTLINED_FUNCTION_17(v8);
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_31_0();
  if (!v4)
  {
    OUTLINED_FUNCTION_5_7();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_25BB05BB0()
{
  OUTLINED_FUNCTION_37();
  if ((v3 & 1) == 0 || (OUTLINED_FUNCTION_6_10(), v4 == v5))
  {
LABEL_6:
    OUTLINED_FUNCTION_8_5();
    if (v2)
    {
      v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3B30, &qword_25BCBBAB0);
      v7 = OUTLINED_FUNCTION_38_1(v6);
      OUTLINED_FUNCTION_1_5(v7);
      if (v1)
      {
LABEL_8:
        OUTLINED_FUNCTION_7_4();
        sub_25BAC947C();
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3B38, &qword_25BCBBAB8);
    OUTLINED_FUNCTION_17(v8);
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_31_0();
  if (!v4)
  {
    OUTLINED_FUNCTION_5_7();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_25BB05C64()
{
  OUTLINED_FUNCTION_37();
  if ((v3 & 1) == 0 || (OUTLINED_FUNCTION_6_10(), v4 == v5))
  {
LABEL_6:
    OUTLINED_FUNCTION_8_5();
    if (v2)
    {
      v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3CA8, &qword_25BCBBC28);
      v7 = OUTLINED_FUNCTION_38_1(v6);
      OUTLINED_FUNCTION_1_5(v7);
      if (v1)
      {
LABEL_8:
        OUTLINED_FUNCTION_7_4();
        sub_25BAC947C();
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3CB0, &qword_25BCBBC30);
    OUTLINED_FUNCTION_17(v8);
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_31_0();
  if (!v4)
  {
    OUTLINED_FUNCTION_5_7();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_25BB05D18()
{
  OUTLINED_FUNCTION_37();
  if ((v3 & 1) == 0 || (OUTLINED_FUNCTION_6_10(), v4 == v5))
  {
LABEL_6:
    OUTLINED_FUNCTION_8_5();
    if (v2)
    {
      v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3C98, &qword_25BCBBC18);
      v7 = OUTLINED_FUNCTION_38_1(v6);
      OUTLINED_FUNCTION_1_5(v7);
      if (v1)
      {
LABEL_8:
        OUTLINED_FUNCTION_7_4();
        sub_25BAC947C();
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3CA0, &qword_25BCBBC20);
    OUTLINED_FUNCTION_17(v8);
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_31_0();
  if (!v4)
  {
    OUTLINED_FUNCTION_5_7();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_25BB05DCC()
{
  OUTLINED_FUNCTION_37();
  if ((v3 & 1) == 0 || (OUTLINED_FUNCTION_6_10(), v4 == v5))
  {
LABEL_6:
    OUTLINED_FUNCTION_8_5();
    if (v2)
    {
      v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3A80, &qword_25BCBBA00);
      v7 = OUTLINED_FUNCTION_38_1(v6);
      OUTLINED_FUNCTION_1_5(v7);
      if (v1)
      {
LABEL_8:
        OUTLINED_FUNCTION_7_4();
        sub_25BAC947C();
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3A88, &qword_25BCBBA08);
    OUTLINED_FUNCTION_17(v8);
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_31_0();
  if (!v4)
  {
    OUTLINED_FUNCTION_5_7();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_25BB05E80()
{
  OUTLINED_FUNCTION_37();
  if ((v3 & 1) == 0 || (OUTLINED_FUNCTION_6_10(), v4 == v5))
  {
LABEL_6:
    OUTLINED_FUNCTION_8_5();
    if (v2)
    {
      v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3D38, &qword_25BCBBCB8);
      v7 = OUTLINED_FUNCTION_38_1(v6);
      OUTLINED_FUNCTION_1_5(v7);
      if (v1)
      {
LABEL_8:
        OUTLINED_FUNCTION_7_4();
        sub_25BAC947C();
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3D40, &qword_25BCBBCC0);
    OUTLINED_FUNCTION_17(v8);
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_31_0();
  if (!v4)
  {
    OUTLINED_FUNCTION_5_7();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_25BB05F34()
{
  OUTLINED_FUNCTION_37();
  if ((v3 & 1) == 0 || (OUTLINED_FUNCTION_6_10(), v4 == v5))
  {
LABEL_6:
    OUTLINED_FUNCTION_8_5();
    if (v2)
    {
      v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3D28, &qword_25BCBBCA8);
      v7 = OUTLINED_FUNCTION_38_1(v6);
      OUTLINED_FUNCTION_1_5(v7);
      if (v1)
      {
LABEL_8:
        OUTLINED_FUNCTION_7_4();
        sub_25BAC947C();
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3D30, &qword_25BCBBCB0);
    OUTLINED_FUNCTION_17(v8);
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_31_0();
  if (!v4)
  {
    OUTLINED_FUNCTION_5_7();
    goto LABEL_6;
  }

  __break(1u);
}

uint64_t sub_25BB06024(uint64_t *a1, uint64_t (*a2)(uint64_t *))
{
  v4 = *a1;
  result = a2(&v4);
  if (v2)
  {
    return swift_allocError();
  }

  return result;
}

unint64_t sub_25BB0607C()
{
  result = qword_27FBB3908;
  if (!qword_27FBB3908)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27FBB3908);
  }

  return result;
}

uint64_t sub_25BB060C0(uint64_t result, unint64_t a2)
{
  switch(a2 >> 62)
  {
    case 1uLL:
    case 2uLL:
      v2 = swift_unknownObjectRelease();
      break;
    case 3uLL:
      return v2;
    default:

      break;
  }

  return v2;
}

uint64_t sub_25BB060F0(uint64_t result, uint64_t a2, char a3)
{
  switch(a3)
  {
    case 4:
    case 5:
    case 6:
    case 7:
      v3 = sub_25BCB617C();
      break;
    case 8:
      v3 = swift_unknownObjectRetain();
      break;
    default:
      return v3;
  }

  return v3;
}

uint64_t sub_25BB06134(uint64_t result, uint64_t a2, char a3)
{
  switch(a3)
  {
    case 4:
    case 5:
    case 6:
    case 7:

      break;
    case 8:
      v3 = swift_unknownObjectRelease();
      break;
    default:
      return v3;
  }

  return v3;
}

double sub_25BB06178(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if ((a3 & 0x2000000000000000) == 0)
  {
    return sub_25BB06184(a1, a2, a3);
  }

  return result;
}

double sub_25BB06184(uint64_t a1, uint64_t a2, unint64_t a3)
{
  switch(a3 >> 62)
  {
    case 2uLL:

      break;
    case 3uLL:
      return result;
    default:
      sub_25BCB617C();
      break;
  }

  return result;
}

uint64_t sub_25BB061C0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(v2 + 32);
  v5 = *a1;
  v6 = *(a1 + 3);
  v10[0] = *(a1 + 1);
  v10[1] = v6;
  v10[2] = *(a1 + 5);
  result = v4(v5, v10);
  *a2 = result;
  a2[1] = v8;
  a2[2] = v9;
  return result;
}

uint64_t OUTLINED_FUNCTION_51_2()
{

  return swift_arrayInitWithCopy();
}

void OUTLINED_FUNCTION_95(__n128 a1)
{
  *(v1 + 16) = v4;
  v7 = (v1 + v3 * v2);
  v7[2].n128_u64[0] = v5;
  v7[2].n128_u64[1] = v6;
  v7[3] = a1;
}

uint64_t OUTLINED_FUNCTION_101_0(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{

  return sub_25BA92684(v4, v3, a3);
}

uint64_t sub_25BB06478(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3FA8, &qword_25BCBBF00);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void *Dataset.init<>(samples:sampler:batchSize:batchSampler:dropsLastPartialBatch:prefetchMode:transform:)@<X0>(char a1@<W4>, uint64_t *a2@<X5>, uint64_t a3@<X8>, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v23 = a2[1];
  v24 = *a2;
  v22 = *(a2 + 16);
  OUTLINED_FUNCTION_14_5();
  if (v13 < 1)
  {
    OUTLINED_FUNCTION_18();
    result = OUTLINED_FUNCTION_0_7("Fatal error", "/Library/Caches/com.apple.xbs/Sources/NeuralNetworks/Sources/NeuralNetworks/Data/Dataset.swift", v20, 162, v21);
    __break(1u);
  }

  else
  {
    v14 = v12;
    v15 = v11;
    v16 = v10;
    v17 = v9;
    sub_25BB6DA90(v10, a4, a6, &v26);
    __swift_destroy_boxed_opaque_existential_1(v16);
    OUTLINED_FUNCTION_11_1();
    (*(v18 + 8))(v17, a4);
    result = OUTLINED_FUNCTION_21_1(v26);
    *(a3 + 80) = a1 & 1;
    *(a3 + 88) = v24;
    *(a3 + 96) = v23;
    *(a3 + 104) = v22;
    if (!v15)
    {
      result = swift_allocObject();
      v14 = result;
      result[2] = a4;
      result[3] = a5;
      result[4] = a6;
      result[5] = a7;
      result[6] = a8;
      v15 = sub_25BB0689C;
    }

    *(a3 + 64) = v15;
    *(a3 + 72) = v14;
  }

  return result;
}

uint64_t Dataset.makeIterator()@<X0>(void *a1@<X0>, uint64_t a2@<X8>, uint64_t a3@<X3>)
{
  if (*(v3 + 104) == 1)
  {
    v6 = *(v3 + 8);
    *&__dst[0] = *v3;
    *(&__dst[0] + 1) = v6;
    v7 = a1[2];
    v8 = a1[4];
    type metadata accessor for Sampling(0, v7, v8, a3);
    v9 = OUTLINED_FUNCTION_8_6();
    MEMORY[0x25F876E40](&v135, v4, v9);
    v126 = v135;
    v127 = v136;
    OUTLINED_FUNCTION_11_1();
    v100 = *(v10 + 16);
    v105 = v10 + 16;
    v100(__src, v3, a1);
    OUTLINED_FUNCTION_13_1();
    v11 = swift_allocObject();
    v12 = a1[3];
    *&v13 = v7;
    *(&v13 + 1) = v12;
    *&v14 = v8;
    *(&v14 + 1) = a1[5];
    *(v11 + 16) = v13;
    *(v11 + 32) = v14;
    OUTLINED_FUNCTION_10_1(v11, a1[6], v69, v73, v78, a1[6], v8, *(&v14 + 1), v7, v12, v96, v100, v105, a2, *&__dst[0], *(&__dst[0] + 1), *&__dst[1], *(&__dst[1] + 1), *&__dst[2], *(&__dst[2] + 1), *&__dst[3], *(&__dst[3] + 1), *&__dst[4], *(&__dst[4] + 1), v115, *(&v115 + 1), v116, *(&v116 + 1), *&v117[0], *(&v117[0] + 1), *&v117[1], *(&v117[1] + 1), v118, v119, v120, v121, v122, v123, v124, v125, v126, v127, v128, v129, v130, v131, v132, v133);
    v15 = sub_25BCB711C();
    OUTLINED_FUNCTION_3_6();
    WitnessTable = swift_getWitnessTable();
    sub_25BB67658(1, 0, sub_25BB07598, v11, v15, v12, WitnessTable, v137);

    OUTLINED_FUNCTION_5_8();
    v17 = *(v3 + 80);
    OUTLINED_FUNCTION_4_9();
    swift_getWitnessTable();
    v18 = OUTLINED_FUNCTION_12_0();
    v21 = type metadata accessor for LazyPrefetchingMapSequence(v18, v19, v12, v20);
    OUTLINED_FUNCTION_2_3();
    swift_getWitnessTable();
    v22 = OUTLINED_FUNCTION_17_0();
    sub_25BC9CFDC(v22, v17, v21, v7, v23);

    v32 = OUTLINED_FUNCTION_6_11(v24, v25, v26, v27, v28, v29, v30, v31, v70, v74, v79, v83, v86, v89, v91, v94, v97, v101, v106, v111, __dst[0], __dst[1], __dst[2], *&__dst[3], SBYTE8(__dst[3]));
    type metadata accessor for Batches(v32, v21, v7, v33);
  }

  else
  {
    v76 = *(v3 + 88);
    v81 = *(v3 + 96);
    v39 = *(v3 + 8);
    *&__dst[0] = *v3;
    *(&__dst[0] + 1) = v39;
    v40 = a1[2];
    v41 = a1[4];
    v42 = OUTLINED_FUNCTION_12_0();
    type metadata accessor for Sampling(v42, v43, v41, v44);
    v45 = OUTLINED_FUNCTION_8_6();
    MEMORY[0x25F876E40](&v135, v4, v45);
    v126 = v135;
    v127 = v136;
    OUTLINED_FUNCTION_11_1();
    v103 = *(v46 + 16);
    v108 = v46 + 16;
    v103(__src, v3, a1);
    OUTLINED_FUNCTION_13_1();
    v47 = swift_allocObject();
    v48 = a1[3];
    *&v49 = v40;
    *(&v49 + 1) = v48;
    *&v50 = v41;
    *(&v50 + 1) = a1[5];
    *(v47 + 16) = v49;
    *(v47 + 32) = v50;
    OUTLINED_FUNCTION_10_1(v47, a1[6], v69, v76, v81, a1[6], v41, *(&v50 + 1), v40, v48, v96, v103, v108, a2, *&__dst[0], *(&__dst[0] + 1), *&__dst[1], *(&__dst[1] + 1), *&__dst[2], *(&__dst[2] + 1), *&__dst[3], *(&__dst[3] + 1), *&__dst[4], *(&__dst[4] + 1), v115, *(&v115 + 1), v116, *(&v116 + 1), *&v117[0], *(&v117[0] + 1), *&v117[1], *(&v117[1] + 1), v118, v119, v120, v121, v122, v123, v124, v125, v126, v127, v128, v129, v130, v131, v132, v133);
    v51 = sub_25BCB711C();
    OUTLINED_FUNCTION_3_6();
    v52 = swift_getWitnessTable();
    sub_25BB67658(v77, v82, sub_25BB06EC0, v47, v51, v48, v52, v137);

    OUTLINED_FUNCTION_5_8();
    v21 = *(v3 + 80);
    OUTLINED_FUNCTION_4_9();
    v53 = swift_getWitnessTable();
    v54 = type metadata accessor for LazyPrefetchingMapSequence(0, v51, v48, v53);
    OUTLINED_FUNCTION_2_3();
    swift_getWitnessTable();
    v55 = OUTLINED_FUNCTION_17_0();
    sub_25BC9CFDC(v55, v21, v54, v51, v56);

    v65 = OUTLINED_FUNCTION_6_11(v57, v58, v59, v60, v61, v62, v63, v64, v72, v77, v82, v85, v88, v90, v93, v95, v99, v104, v109, v113, __dst[0], __dst[1], __dst[2], *&__dst[3], SBYTE8(__dst[3]));
    type metadata accessor for Batches(v65, v54, v51, v66);
  }

  OUTLINED_FUNCTION_7_5();
  OUTLINED_FUNCTION_15_1();
  OUTLINED_FUNCTION_11_1();
  (*(v34 + 8))(&v135, v21);
  v35 = OUTLINED_FUNCTION_9_2();
  v36(v35);
  OUTLINED_FUNCTION_13_1();
  v37 = swift_allocObject();
  *(v37 + 16) = v92;
  *(v37 + 32) = *v87;
  OUTLINED_FUNCTION_10_1(v37, v84, v71, v75, v80, v84, v87[0], v87[1], v92, *(&v92 + 1), v98, v102, v107, v112, *&__dst[0], *(&__dst[0] + 1), *&__dst[1], *(&__dst[1] + 1), *&__dst[2], *(&__dst[2] + 1), *&__dst[3], *(&__dst[3] + 1), *&__dst[4], *(&__dst[4] + 1), v115, *(&v115 + 1), v116, *(&v116 + 1), *&v117[0], *(&v117[0] + 1), *&v117[1], *(&v117[1] + 1), v118, v119, v120, v121, v122, v123, v124, v125, v126, v127, v128, v129, v130, v131, v132, v133);
  OUTLINED_FUNCTION_12_0();
  v38 = sub_25BCB711C();
  swift_getWitnessTable();
  sub_25BCB75FC();

  v137[0] = v115;
  v137[1] = v116;
  v138[0] = v117[0];
  *(v138 + 9) = *(v117 + 9);
  OUTLINED_FUNCTION_11_1();
  (*(v67 + 8))(v137, v38);
  memcpy(__dst, __src, sizeof(__dst));
  OUTLINED_FUNCTION_12_0();
  sub_25BCB735C();
  return sub_25BCB734C();
}