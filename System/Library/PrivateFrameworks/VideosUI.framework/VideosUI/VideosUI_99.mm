uint64_t sub_1E3E556F4()
{
  OUTLINED_FUNCTION_27_2();
  OUTLINED_FUNCTION_63_1();
  v2 = *v1;
  OUTLINED_FUNCTION_7();
  *v3 = v2;

  OUTLINED_FUNCTION_66_1();
  v5 = *(v4 + 208);
  v6 = *(v0 + 200);

  return MEMORY[0x1EEE6DFA0](sub_1E3E55824, v6, v5);
}

uint64_t sub_1E3E55824()
{
  OUTLINED_FUNCTION_24();
  v1 = *(v0 + 224);

  OUTLINED_FUNCTION_54();

  return v2();
}

uint64_t sub_1E3E558A0()
{
  OUTLINED_FUNCTION_24();
  v0[14] = v1;
  v0[15] = v2;
  sub_1E4206434();
  OUTLINED_FUNCTION_42_2();
  v0[16] = sub_1E4206424();
  OUTLINED_FUNCTION_50();
  sub_1E42063B4();
  OUTLINED_FUNCTION_51_17();
  v0[17] = v3;
  v0[18] = v4;
  v5 = OUTLINED_FUNCTION_151();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1E3E55924()
{
  OUTLINED_FUNCTION_101_11();
  OUTLINED_FUNCTION_134();
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[19] = Strong;
  if (!Strong)
  {
LABEL_10:

    goto LABEL_11;
  }

  sub_1E41FDF14();
  if (v0[5])
  {
    sub_1E3280A90(0, &qword_1ECF3A0B0, 0x1E69D5A50);
    if (OUTLINED_FUNCTION_60_27())
    {
      v2 = v0[12];
      v0[20] = v2;
      OUTLINED_FUNCTION_39_1();
      sub_1E42074B4();

      OUTLINED_FUNCTION_41_7();
      v19 = v3;
      v4 = TVPPlayerExternalPlaybackType.description.getter([v2 externalPlaybackType]);
      MEMORY[0x1E69109E0](v4);

      MEMORY[0x1E69109E0](41, 0xE100000000000000);
      OUTLINED_FUNCTION_0_266();
      sub_1E3E499A8(v5, v19, v6);

      v7 = swift_task_alloc();
      v0[21] = v7;
      *v7 = v0;
      OUTLINED_FUNCTION_56_1(v7);
      OUTLINED_FUNCTION_100_8();

      return sub_1E3E55DA4(v8);
    }

    goto LABEL_10;
  }

  sub_1E325F6F0((v0 + 2), &unk_1ECF296E0, &unk_1E4298030);
LABEL_11:
  OUTLINED_FUNCTION_54();
  OUTLINED_FUNCTION_100_8();

  return v12(v11, v12, v13, v14, v15, v16, v17, v18);
}

uint64_t sub_1E3E55B1C()
{
  OUTLINED_FUNCTION_27_2();
  OUTLINED_FUNCTION_179();
  OUTLINED_FUNCTION_37_2();
  *v4 = v3;
  *v4 = *v2;
  *(v3 + 176) = v0;

  OUTLINED_FUNCTION_92_3();
  v6 = *(v5 + 144);
  v7 = *(v1 + 136);
  if (v0)
  {
    v8 = sub_1E3E55CAC;
  }

  else
  {
    v8 = sub_1E3E55C44;
  }

  return MEMORY[0x1EEE6DFA0](v8, v7, v6);
}

uint64_t sub_1E3E55C44()
{
  OUTLINED_FUNCTION_24();
  v1 = *(v0 + 160);

  OUTLINED_FUNCTION_54();

  return v2();
}

uint64_t sub_1E3E55CAC()
{
  OUTLINED_FUNCTION_80();
  v1 = *(v0 + 176);
  v2 = *(v0 + 160);

  OUTLINED_FUNCTION_38_1();
  sub_1E42074B4();

  OUTLINED_FUNCTION_41_7();
  v9 = v3;
  swift_getErrorValue();
  v4 = sub_1E4207AB4();
  MEMORY[0x1E69109E0](v4);

  OUTLINED_FUNCTION_1_235();
  sub_1E3E499A8(v5, v9, v6);

  OUTLINED_FUNCTION_54();

  return v7();
}

uint64_t sub_1E3E55DA4(uint64_t a1)
{
  *(v2 + 40) = a1;
  *(v2 + 48) = v1;
  return OUTLINED_FUNCTION_1_6();
}

uint64_t sub_1E3E55DB8()
{
  OUTLINED_FUNCTION_24();
  v1 = [*(v0 + 40) externalPlaybackType];
  if ((v1 - 1) < 2)
  {
    sub_1E3E50944(v1);
LABEL_4:
    OUTLINED_FUNCTION_54();

    return v4();
  }

  v2 = *(v0 + 48);
  v3 = OBJC_IVAR____TtC8VideosUI19PlayerHapticManager_hapticPlayer;
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  if (*(v2 + v3))
  {
    goto LABEL_4;
  }

  v6 = swift_task_alloc();
  *(v0 + 56) = v6;
  *v6 = v0;
  v6[1] = sub_1E3C7C074;

  return sub_1E3E4ED40();
}

uint64_t sub_1E3E55EC0()
{
  OUTLINED_FUNCTION_24();
  v0[17] = v1;
  v0[18] = v2;
  v3 = sub_1E41FDF34();
  v0[19] = v3;
  OUTLINED_FUNCTION_8_0(v3);
  v0[20] = v4;
  v0[21] = OUTLINED_FUNCTION_86_0();
  v5 = sub_1E41FFCB4();
  v0[22] = v5;
  OUTLINED_FUNCTION_8_0(v5);
  v0[23] = v6;
  v0[24] = OUTLINED_FUNCTION_86_0();
  sub_1E4206434();
  OUTLINED_FUNCTION_42_2();
  v0[25] = sub_1E4206424();
  OUTLINED_FUNCTION_50();
  sub_1E42063B4();
  OUTLINED_FUNCTION_109();
  v7 = OUTLINED_FUNCTION_42_5();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

void sub_1E3E55FD8()
{

  sub_1E324FBDC();
  v1 = OUTLINED_FUNCTION_105_13();
  v2(v1);
  v3 = OUTLINED_FUNCTION_118_10();
  v4(v3);
  v5 = sub_1E41FFC94();
  v6 = sub_1E42067E4();
  v7 = OUTLINED_FUNCTION_104_12(v6);
  v9 = *(v0 + 184);
  v8 = *(v0 + 192);
  v10 = *(v0 + 168);
  v11 = *(v0 + 176);
  if (v7)
  {
    OUTLINED_FUNCTION_6_21();
    v34 = v6;
    v12 = OUTLINED_FUNCTION_10_11();
    v36 = v12;
    *v11 = 136315138;
    OUTLINED_FUNCTION_41_55();
    sub_1E3E59608(v13, v14);
    v15 = sub_1E4207944();
    v35 = v8;
    v17 = v16;
    v18 = OUTLINED_FUNCTION_49_49();
    v19(v18);
    sub_1E3270FC8(v15, v17, &v36);
    OUTLINED_FUNCTION_50();

    *(v11 + 4) = v10;
    OUTLINED_FUNCTION_94_19(&dword_1E323F000, v20, v34, "PlayerHapticManager: interruption %s");
    __swift_destroy_boxed_opaque_existential_1(v12);
    OUTLINED_FUNCTION_7_7();
    OUTLINED_FUNCTION_6_0();

    (*(v9 + 8))(v35, v11);
  }

  else
  {

    v21 = OUTLINED_FUNCTION_49_49();
    v22(v21);
    (*(v9 + 8))(v8, v11);
  }

  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  if (!swift_weakLoadStrong())
  {
    goto LABEL_17;
  }

  v23 = sub_1E41FDF24();
  if (v23)
  {
    v24 = v23;
    *(v0 + 112) = sub_1E4205F14();
    *(v0 + 120) = v25;
    sub_1E4207414();
    sub_1E375D7E8(v24, (v0 + 56), v0 + 16);

    sub_1E375D84C(v0 + 16);
    if (*(v0 + 80))
    {
      if (swift_dynamicCast())
      {
        v26 = *(v0 + 128);
        v36 = 0;
        v37 = 0xE000000000000000;
        sub_1E42074B4();

        OUTLINED_FUNCTION_41_7();
        v36 = 0xD00000000000001BLL;
        v37 = v27;
        v28 = v26 == 1 ? 0x6E61676562 : 0x6465646E65;
        MEMORY[0x1E69109E0](v28, 0xE500000000000000);

        v29 = v37;
        OUTLINED_FUNCTION_0_266();
        sub_1E3E499A8(v30, v29, v31);

        if (v26 == 1)
        {
          sub_1E3E50944(3);
        }
      }

LABEL_17:

      OUTLINED_FUNCTION_54();
      OUTLINED_FUNCTION_29_30();

      __asm { BRAA            X1, X16 }
    }
  }

  else
  {

    *(v0 + 72) = 0u;
    *(v0 + 56) = 0u;
  }

  sub_1E325F6F0(v0 + 56, &unk_1ECF296E0, &unk_1E4298030);
  goto LABEL_17;
}

uint64_t sub_1E3E5633C()
{
  OUTLINED_FUNCTION_24();
  v0[9] = v1;
  sub_1E4206434();
  OUTLINED_FUNCTION_42_2();
  v0[10] = sub_1E4206424();
  OUTLINED_FUNCTION_50();
  sub_1E42063B4();
  OUTLINED_FUNCTION_51_17();
  v0[11] = v2;
  v0[12] = v3;
  v4 = OUTLINED_FUNCTION_151();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

char *sub_1E3E563C0()
{
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 104) = Strong;
  if (!Strong)
  {
    goto LABEL_18;
  }

  v2 = Strong;
  v3 = [objc_opt_self() sharedInstance];
  v4 = [v3 currentRoute];

  v5 = [v4 outputs];
  sub_1E3280A90(0, &qword_1EE23AF60, 0x1E6958478);
  OUTLINED_FUNCTION_20_2();
  v6 = sub_1E42062B4();

  v7 = sub_1E32AE9B0(v6);
  if (v7)
  {
    v8 = v7;
    v33 = MEMORY[0x1E69E7CC0];
    result = sub_1E377FD30(0, v7 & ~(v7 >> 63), 0);
    if (v8 < 0)
    {
      __break(1u);
      return result;
    }

    v31 = v2;
    v32 = v0;
    v10 = 0;
    v11 = v33;
    do
    {
      if ((v6 & 0xC000000000000001) != 0)
      {
        v12 = MEMORY[0x1E6911E60](v10, v6);
      }

      else
      {
        v12 = *(v6 + 8 * v10 + 32);
      }

      v13 = v12;
      v14 = [v12 portName];
      v15 = sub_1E4205F14();
      v17 = v16;

      v19 = *(v33 + 16);
      v18 = *(v33 + 24);
      if (v19 >= v18 >> 1)
      {
        sub_1E377FD30((v18 > 1), v19 + 1, 1);
      }

      ++v10;
      *(v33 + 16) = v19 + 1;
      v20 = v33 + 16 * v19;
      *(v20 + 32) = v15;
      *(v20 + 40) = v17;
    }

    while (v8 != v10);

    v2 = v31;
    v0 = v32;
  }

  else
  {

    v11 = MEMORY[0x1E69E7CC0];
  }

  OUTLINED_FUNCTION_12_23();
  sub_1E42074B4();

  OUTLINED_FUNCTION_41_7();
  v34 = v21;
  v22 = MEMORY[0x1E6910C30](v11, MEMORY[0x1E69E6158]);
  v24 = v23;

  MEMORY[0x1E69109E0](v22, v24);

  OUTLINED_FUNCTION_0_266();
  sub_1E3E499A8(v25, v34, v26);

  if ((sub_1E3E4C39C() & 1) == 0)
  {

    sub_1E3E50944(4);
LABEL_18:

    OUTLINED_FUNCTION_54();
    OUTLINED_FUNCTION_29_30();

    __asm { BRAA            X1, X16 }
  }

  if (*(v2 + 16))
  {

    sub_1E3E55120();
    *(v2 + 17) = 1;
    goto LABEL_18;
  }

  v29 = swift_task_alloc();
  *(v0 + 112) = v29;
  *v29 = v0;
  OUTLINED_FUNCTION_56_1(v29);
  OUTLINED_FUNCTION_29_30();

  return sub_1E3E4ED40();
}

uint64_t sub_1E3E5679C()
{
  OUTLINED_FUNCTION_27_2();
  OUTLINED_FUNCTION_179();
  OUTLINED_FUNCTION_37_2();
  *v4 = v3;
  *v4 = *v2;
  *(v3 + 120) = v0;

  OUTLINED_FUNCTION_92_3();
  v6 = *(v5 + 96);
  v7 = *(v1 + 88);
  if (v0)
  {
    v8 = sub_1E3E56930;
  }

  else
  {
    v8 = sub_1E3E568C4;
  }

  return MEMORY[0x1EEE6DFA0](v8, v7, v6);
}

uint64_t sub_1E3E568C4()
{
  OUTLINED_FUNCTION_24();
  v1 = *(v0 + 104);

  *(v1 + 17) = 1;

  OUTLINED_FUNCTION_54();

  return v2();
}

uint64_t sub_1E3E56930()
{
  OUTLINED_FUNCTION_101_11();
  OUTLINED_FUNCTION_134();

  v1 = *(v0 + 120);
  OUTLINED_FUNCTION_39_1();
  sub_1E42074B4();

  OUTLINED_FUNCTION_41_7();
  v15 = v2;
  swift_getErrorValue();
  v3 = OUTLINED_FUNCTION_93_14();
  MEMORY[0x1E69109E0](v3);

  OUTLINED_FUNCTION_1_235();
  sub_1E3E499A8(v4, v15, v5);

  OUTLINED_FUNCTION_54();
  OUTLINED_FUNCTION_100_8();

  return v7(v6, v7, v8, v9, v10, v11, v12, v13);
}

double sub_1E3E56A14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1E41FDF34();
  OUTLINED_FUNCTION_0_10();
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C400, &qword_1E429ABE0);
  OUTLINED_FUNCTION_17_2(v12);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v26 - v14;
  sub_1E4206474();
  OUTLINED_FUNCTION_32_2();
  __swift_storeEnumTagSinglePayload(v16, v17, v18, v19);
  (*(v8 + 16))(&v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v6);
  v20 = (*(v8 + 80) + 48) & ~*(v8 + 80);
  v21 = swift_allocObject();
  *(v21 + 2) = 0;
  *(v21 + 3) = 0;
  *(v21 + 4) = a2;
  *(v21 + 5) = a3;
  (*(v8 + 32))(&v21[v20], &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v6);

  v22 = OUTLINED_FUNCTION_23_7();
  sub_1E376FE58(v22, v23, v15, v24, v21);

  return result;
}

uint64_t sub_1E3E56BBC()
{
  OUTLINED_FUNCTION_27_2();
  v1 = v0;
  v7 = (v2 + *v2);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_30_0(v3);
  *v4 = v5;
  OUTLINED_FUNCTION_56_1(v4);

  return v7(v1);
}

uint64_t type metadata accessor for PlayerHapticManager(uint64_t a1)
{
  result = qword_1EE29EA70;
  if (!qword_1EE29EA70)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1E3E56D04(uint64_t a1)
{
  result = sub_1E41FE5D4();
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

uint64_t get_enum_tag_for_layout_string_8VideosUI19PlayerHapticManagerC0cdE5ErrorO(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

_BYTE *storeEnumTagSinglePayload for PlayerHapticManager.HapticPlayerState(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

id sub_1E3E56EF8()
{
  v5[1] = *MEMORY[0x1E69E9840];
  v5[0] = 0;
  v1 = [v0 initAndReturnError_];
  if (v1)
  {
    v2 = v5[0];
  }

  else
  {
    v3 = v5[0];
    sub_1E41FE274();

    swift_willThrow();
  }

  return v1;
}

id sub_1E3E56FA8(uint64_t a1)
{
  v7[1] = *MEMORY[0x1E69E9840];
  _s3__C3KeyVMa_0();
  sub_1E3E59608(&qword_1ECF2A410, _s3__C3KeyVMa_0);
  v2 = sub_1E4205C44();

  v7[0] = 0;
  v3 = [v1 initWithDictionary:v2 error:v7];

  if (v3)
  {
    v4 = v7[0];
  }

  else
  {
    v5 = v7[0];
    sub_1E41FE274();

    swift_willThrow();
  }

  return v3;
}

uint64_t sub_1E3E570CC()
{
  OUTLINED_FUNCTION_155();

  result = sub_1E4205EF4();
  *v0 = 0;
  return result;
}

uint64_t sub_1E3E5713C()
{
  OUTLINED_FUNCTION_155();

  v2 = sub_1E4205F04();
  *v0 = 0;
  return v2 & 1;
}

uint64_t sub_1E3E571B8(uint64_t a1)
{
  v2 = sub_1E4205F14();
  MEMORY[0x1E6910AA0](v2);
  OUTLINED_FUNCTION_50();

  return v1;
}

uint64_t sub_1E3E571EC(uint64_t a1, uint64_t a2)
{
  sub_1E4205F14();
  sub_1E4207B44();
  sub_1E4206014();
  sub_1E4207BA4();
  OUTLINED_FUNCTION_92_2();

  return a1;
}

unint64_t sub_1E3E57260(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECF651F0[0];
  if (!qword_1ECF651F0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECF651F0);
  }

  return result;
}

uint64_t sub_1E3E572B4()
{
  OUTLINED_FUNCTION_24();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_30_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_15_128(v1);

  return sub_1E3E55EC0();
}

uint64_t sub_1E3E57338()
{
  OUTLINED_FUNCTION_24();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_30_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_56_1(v1);

  return sub_1E3E5633C();
}

uint64_t sub_1E3E573BC(uint64_t a1)
{
  sub_1E3E59608(&qword_1ECF3A1D8, type metadata accessor for Port);
  sub_1E3E59608(&unk_1ECF3A1E0, type metadata accessor for Port);

  return sub_1E4207764();
}

uint64_t sub_1E3E57478(uint64_t a1)
{
  sub_1E3E59608(&qword_1ECF3A018, type metadata accessor for SHMediaItemProperty);
  sub_1E3E59608(&qword_1ECF3A1D0, type metadata accessor for SHMediaItemProperty);

  return sub_1E4207764();
}

uint64_t sub_1E3E57534@<X0>(void *a1@<X8>)
{
  sub_1E4205ED4();
  OUTLINED_FUNCTION_11_5();

  *a1 = v1;
  return result;
}

unint64_t sub_1E3E57578(uint64_t a1)
{
  if (!*(a1 + 16))
  {
    v2 = MEMORY[0x1E69E7CC8];
LABEL_9:

    return v2;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3A070, &qword_1E42D6A70);
  v2 = sub_1E4207744();
  v3 = *(a1 + 16);
  if (!v3)
  {
    goto LABEL_9;
  }

  for (i = (a1 + 40); ; i += 2)
  {
    v5 = *i;
    v6 = *(i - 1);
    v7 = v5;
    result = sub_1E37C375C(v6);
    if (v9)
    {
      break;
    }

    *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    *(v2[6] + 8 * result) = v6;
    *(v2[7] + 8 * result) = v7;
    v10 = v2[2];
    v11 = __OFADD__(v10, 1);
    v12 = v10 + 1;
    if (v11)
    {
      goto LABEL_12;
    }

    v2[2] = v12;
    if (!--v3)
    {

      return v2;
    }
  }

  __break(1u);
LABEL_12:
  __break(1u);
  return result;
}

void sub_1E3E57690()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3A068, &qword_1E42D6A68);
  v2 = *v0;
  v3 = sub_1E4207714();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
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
        v18 = *(*(v2 + 48) + 8 * v17);
        sub_1E328438C(*(v2 + 56) + 32 * v17, v20);
        *(*(v4 + 48) + 8 * v17) = v18;
        sub_1E329504C(v20, (*(v4 + 56) + 32 * v17));
        v19 = v18;
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
}

void sub_1E3E5780C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3A068, &qword_1E42D6A68);
  v35 = v4;
  v6 = sub_1E4207724();
  v7 = v6;
  if (!*(v5 + 16))
  {
LABEL_32:

LABEL_33:
    *v3 = v7;
    return;
  }

  v33 = v2;
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
  v14 = v6 + 64;
  if (!v12)
  {
LABEL_7:
    v16 = v8;
    while (1)
    {
      v8 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v17 = v9[v8];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v12 = (v17 - 1) & v17;
        goto LABEL_12;
      }
    }

    if ((v35 & 1) == 0)
    {

      v3 = v33;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v33;
    if (v32 >= 64)
    {
      bzero(v9, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
    goto LABEL_32;
  }

  while (1)
  {
    v15 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
LABEL_12:
    v18 = v15 | (v8 << 6);
    v19 = *(v5 + 56);
    v20 = *(*(v5 + 48) + 8 * v18);
    v21 = (v19 + 32 * v18);
    if (v35)
    {
      sub_1E329504C(v21, v36);
    }

    else
    {
      sub_1E328438C(v21, v36);
      v22 = v20;
    }

    sub_1E4205F14();
    sub_1E4207B44();
    sub_1E4206014();
    v23 = sub_1E4207BA4();

    v24 = -1 << *(v7 + 32);
    v25 = v23 & ~v24;
    v26 = v25 >> 6;
    if (((-1 << v25) & ~*(v14 + 8 * (v25 >> 6))) == 0)
    {
      break;
    }

    v27 = __clz(__rbit64((-1 << v25) & ~*(v14 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_24:
    *(v14 + ((v27 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v27;
    *(*(v7 + 48) + 8 * v27) = v20;
    sub_1E329504C(v36, (*(v7 + 56) + 32 * v27));
    ++*(v7 + 16);
    v5 = v34;
    if (!v12)
    {
      goto LABEL_7;
    }
  }

  v28 = 0;
  v29 = (63 - v24) >> 6;
  while (++v26 != v29 || (v28 & 1) == 0)
  {
    v30 = v26 == v29;
    if (v26 == v29)
    {
      v26 = 0;
    }

    v28 |= v30;
    v31 = *(v14 + 8 * v26);
    if (v31 != -1)
    {
      v27 = __clz(__rbit64(~v31)) + (v26 << 6);
      goto LABEL_24;
    }
  }

LABEL_35:
  __break(1u);
}

void sub_1E3E57AD8(int64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1E4207304() + 1) & ~v5;
    do
    {
      v9 = *(*(a2 + 48) + 8 * v6);
      sub_1E4205F14();
      sub_1E4207B44();
      v10 = v9;
      sub_1E4206014();
      v11 = sub_1E4207BA4();

      v12 = v11 & v7;
      if (v3 >= v8)
      {
        if (v12 >= v8 && v3 >= v12)
        {
LABEL_14:
          v15 = *(a2 + 48);
          v16 = (v15 + 8 * v3);
          v17 = (v15 + 8 * v6);
          if (v3 != v6 || v16 >= v17 + 1)
          {
            *v16 = *v17;
          }

          v19 = *(a2 + 56);
          v20 = (v19 + 32 * v3);
          v21 = (v19 + 32 * v6);
          if (v3 != v6 || v20 >= v21 + 2)
          {
            v23 = v21[1];
            *v20 = *v21;
            v20[1] = v23;
            v3 = v6;
          }
        }
      }

      else if (v12 >= v8 || v3 >= v12)
      {
        goto LABEL_14;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
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
}

void *sub_1E3E57C90(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1E3E57CB0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1E3E57CB0(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29750, &unk_1E429DD30);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = (2 * ((v11 - 32) / 8)) | 1;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1E3280A90(0, &qword_1ECF3A060, 0x1E697B7B8);
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_1E3E57DE8(uint64_t result)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v1 = result;
    if (result)
    {
      sub_1E3280A90(0, &qword_1ECF2A420, 0x1E695F588);
      result = sub_1E4206314();
      *((result & 0xFFFFFFFFFFFFFF8) + 0x10) = v1;
    }

    else
    {
      return MEMORY[0x1E69E7CC0];
    }
  }

  return result;
}

uint64_t sub_1E3E57E54()
{
  type metadata accessor for Port(0);
  swift_arrayDestroy();

  return MEMORY[0x1EEE6BDC0](v0, 32, 7);
}

char *sub_1E3E57EA8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3A078, &qword_1E42D6A78);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[16 * v8] <= v12)
    {
      memmove(v12, v13, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 16 * v8);
  }

  return v10;
}

char *sub_1E3E57FA8(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1E3E58470(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1E3E57FC8(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1E3E58570(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1E3E57FE8(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1E3E58670(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_1E3E58008(void *a1)
{
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  if (!swift_weakLoadStrong())
  {
    return 1;
  }

  if (a1)
  {
    v2 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF32480, &unk_1E42A9410);
    sub_1E3280A90(0, &qword_1ECF30180, 0x1E696ABC0);
    if (swift_dynamicCast())
    {
      sub_1E4119B04([v12 code]);
      v4 = v3;
      v6 = v5;
    }

    else
    {
      swift_getErrorValue();
      v4 = sub_1E4207AB4();
      v6 = v8;
    }
  }

  else
  {
    v6 = 0xE500000000000000;
    v4 = 0x3E6C696E3CLL;
  }

  sub_1E42074B4();

  OUTLINED_FUNCTION_41_7();
  v13 = v9;
  MEMORY[0x1E69109E0](v4, v6);

  OUTLINED_FUNCTION_0_266();
  sub_1E3E499A8(v10, v13, v11);

  if (a1)
  {
    sub_1E3E50944(5);
  }

  return 2;
}

uint64_t block_copy_helper_13_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

double sub_1E3E581BC()
{
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    OUTLINED_FUNCTION_0_266();
    sub_1E3E499A8(0xD000000000000017, v1 | 0x8000000000000000, v2);
  }

  return result;
}

double sub_1E3E58228(uint64_t a1)
{
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    OUTLINED_FUNCTION_38_1();
    sub_1E42074B4();

    OUTLINED_FUNCTION_41_7();
    v6 = v3;
    sub_1E41199EC(a1);
    OUTLINED_FUNCTION_125_10();

    OUTLINED_FUNCTION_0_266();
    sub_1E3E499A8(v4, v6, v5);

    sub_1E3E50944(5);
  }

  return result;
}

double sub_1E3E582E4(uint64_t a1)
{
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    OUTLINED_FUNCTION_38_1();
    sub_1E42074B4();

    OUTLINED_FUNCTION_41_7();
    v9 = v3;
    if (a1)
    {
      swift_getErrorValue();
      v4 = sub_1E4207AB4();
      v6 = v5;
    }

    else
    {
      v6 = 0xE500000000000000;
      v4 = 0x3E6C696E3CLL;
    }

    MEMORY[0x1E69109E0](v4, v6);

    OUTLINED_FUNCTION_0_266();
    sub_1E3E499A8(v7, v9, v8);

    sub_1E3E50944(6);
  }

  return result;
}

id sub_1E3E583D8(id result)
{
  if (result >= 7)
  {
    return result;
  }

  return result;
}

uint64_t sub_1E3E583E8()
{
  OUTLINED_FUNCTION_24();
  v1 = *(v0 + 32);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_30_0(v2);
  *v3 = v4;
  v5 = OUTLINED_FUNCTION_56_1(v3);

  return sub_1E3E53F38(v5, v6, v7, v1);
}

char *sub_1E3E58470(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3A078, &qword_1E42D6A78);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[16 * v8] <= v12)
    {
      memmove(v12, v13, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 16 * v8);
  }

  return v10;
}

char *sub_1E3E58570(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF3A090, &qword_1E42D6A98);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 32);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[32 * v8] <= v12)
    {
      memmove(v12, v13, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 32 * v8);
  }

  return v10;
}

char *sub_1E3E58670(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3A080, qword_1E429EEE0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 8);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[8 * v8] <= v12)
    {
      memmove(v12, v13, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 8 * v8);
  }

  return v10;
}

uint64_t sub_1E3E58770(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_1E34AF5E0(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  sub_1E3E58854(v6);
  return sub_1E4207554();
}

char *sub_1E3E587EC(int64_t a1, char a2)
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v5;
  if (!result || a1 > *(v5 + 24) >> 1)
  {
    if (*(v5 + 16) <= a1)
    {
      v7 = a1;
    }

    else
    {
      v7 = *(v5 + 16);
    }

    result = sub_1E3E57EA8(result, v7, a2 & 1, v5);
    *v2 = result;
  }

  return result;
}

void sub_1E3E58854(uint64_t *a1)
{
  v3 = a1[1];
  v4 = sub_1E4207914();
  if (v4 < v3)
  {
    v5 = v4;
    v6 = sub_1E3E57DE8(v3 / 2);
    v8[0] = v7;
    v8[1] = (v3 / 2);
    sub_1E3E58A28(v8, v9, a1, v5);
    if (v1)
    {
      if (v3 < -1)
      {
        __break(1u);
        goto LABEL_5;
      }
    }

    else if (v3 < -1)
    {
LABEL_12:
      __break(1u);
      return;
    }

    *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = 0;

    return;
  }

LABEL_5:
  if (v3 < 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  if (v3)
  {
    sub_1E3E58934(0, v3, 1, a1);
  }
}

void sub_1E3E58934(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v5 = *a4;
    v6 = *a4 + 8 * a3 - 8;
    v7 = a1 - a3;
    while (2)
    {
      v8 = *(v5 + 8 * v4);
      v9 = v7;
      v10 = v6;
      do
      {
        v11 = *v10;
        v12 = v8;
        v13 = v11;
        [v12 relativeTime];
        v15 = v14;
        [v13 relativeTime];
        v17 = v16;

        if (v15 >= v17)
        {
          break;
        }

        if (!v5)
        {
          __break(1u);
          return;
        }

        v18 = *v10;
        v8 = *(v10 + 8);
        *v10 = v8;
        *(v10 + 8) = v18;
        v10 -= 8;
      }

      while (!__CFADD__(v9++, 1));
      ++v4;
      v6 += 8;
      --v7;
      if (v4 != a2)
      {
        continue;
      }

      break;
    }
  }
}

void sub_1E3E58A28(void ***a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v4 = a3[1];
  if (v4 < 1)
  {
    v6 = MEMORY[0x1E69E7CC0];
LABEL_93:
    v109 = *a1;
    if (!*a1)
    {
      goto LABEL_134;
    }

    v5 = v111;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_95:
      v95 = v6 + 16;
      v96 = *(v6 + 2);
      while (v96 >= 2)
      {
        if (!*a3)
        {
          goto LABEL_131;
        }

        v97 = v6;
        v6 += 16 * v96;
        v98 = *v6;
        v99 = &v95[2 * v96];
        v100 = v99[1];
        sub_1E3E59090((*a3 + 8 * *v6), (*a3 + 8 * *v99), (*a3 + 8 * v100), v109);
        if (v5)
        {
          break;
        }

        if (v100 < v98)
        {
          goto LABEL_119;
        }

        if (v96 - 2 >= *v95)
        {
          goto LABEL_120;
        }

        *v6 = v98;
        *(v6 + 1) = v100;
        v101 = *v95 - v96;
        if (*v95 < v96)
        {
          goto LABEL_121;
        }

        v96 = *v95 - 1;
        memmove(v99, v99 + 2, 16 * v101);
        *v95 = v96;
        v6 = v97;
      }

LABEL_103:

      return;
    }

LABEL_128:
    v6 = sub_1E37FFF5C(v6);
    goto LABEL_95;
  }

  v5 = 0;
  v6 = MEMORY[0x1E69E7CC0];
  v7 = &selRef_alwaysPrefetchAppConfiguration;
  while (1)
  {
    v8 = v5++;
    if (v5 < v4)
    {
      v103 = v6;
      v9 = v8;
      v10 = (*a3 + 8 * v8);
      v11 = 8 * v9;
      v13 = *v10;
      v12 = v10 + 2;
      v6 = *(*a3 + 8 * v5);
      v14 = v13;
      [v6 v7[224]];
      v16 = v15;
      [v14 v7[224]];
      v18 = v17;

      v106 = v9;
      v19 = v9 + 2;
      while (1)
      {
        v20 = v19;
        if (++v5 >= v4)
        {
          break;
        }

        v21 = *(v12 - 1);
        v6 = *v12;
        v22 = v21;
        [v6 v7[224]];
        v24 = v23;
        [v22 v7[224]];
        v26 = v25;

        ++v12;
        v19 = v20 + 1;
        if (v16 < v18 == v24 >= v26)
        {
          goto LABEL_9;
        }
      }

      v5 = v4;
LABEL_9:
      if (v16 >= v18)
      {
        v6 = v103;
        v8 = v106;
      }

      else
      {
        v8 = v106;
        if (v5 < v106)
        {
          goto LABEL_125;
        }

        if (v106 >= v5)
        {
          v6 = v103;
        }

        else
        {
          if (v4 >= v20)
          {
            v27 = v20;
          }

          else
          {
            v27 = v4;
          }

          v28 = 8 * v27 - 8;
          v29 = v5;
          v30 = v106;
          v6 = v103;
          do
          {
            if (v30 != --v29)
            {
              v31 = *a3;
              if (!*a3)
              {
                goto LABEL_132;
              }

              v32 = *(v31 + v11);
              *(v31 + v11) = *(v31 + v28);
              *(v31 + v28) = v32;
            }

            ++v30;
            v28 -= 8;
            v11 += 8;
          }

          while (v30 < v29);
        }
      }
    }

    v33 = a3[1];
    if (v5 < v33)
    {
      if (__OFSUB__(v5, v8))
      {
        goto LABEL_124;
      }

      if (v5 - v8 < a4)
      {
        break;
      }
    }

LABEL_39:
    if (v5 < v8)
    {
      goto LABEL_123;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v6 = sub_1E37FFF70(0, *(v6 + 2) + 1, 1, v6);
    }

    v51 = *(v6 + 2);
    v50 = *(v6 + 3);
    v52 = v51 + 1;
    if (v51 >= v50 >> 1)
    {
      v6 = sub_1E37FFF70((v50 > 1), v51 + 1, 1, v6);
    }

    *(v6 + 2) = v52;
    v53 = v6 + 32;
    v54 = &v6[16 * v51 + 32];
    *v54 = v8;
    *(v54 + 1) = v5;
    v109 = *a1;
    if (!*a1)
    {
      goto LABEL_133;
    }

    if (v51)
    {
      v108 = v5;
      while (1)
      {
        v55 = v52 - 1;
        v56 = &v53[16 * v52 - 16];
        v57 = &v6[16 * v52];
        if (v52 >= 4)
        {
          break;
        }

        if (v52 == 3)
        {
          v58 = *(v6 + 4);
          v59 = *(v6 + 5);
          v68 = __OFSUB__(v59, v58);
          v60 = v59 - v58;
          v61 = v68;
LABEL_60:
          if (v61)
          {
            goto LABEL_110;
          }

          v73 = *v57;
          v72 = *(v57 + 1);
          v74 = __OFSUB__(v72, v73);
          v75 = v72 - v73;
          v76 = v74;
          if (v74)
          {
            goto LABEL_113;
          }

          v77 = *(v56 + 1);
          v78 = v77 - *v56;
          if (__OFSUB__(v77, *v56))
          {
            goto LABEL_116;
          }

          if (__OFADD__(v75, v78))
          {
            goto LABEL_118;
          }

          if (v75 + v78 >= v60)
          {
            if (v60 < v78)
            {
              v55 = v52 - 2;
            }

            goto LABEL_82;
          }

          goto LABEL_75;
        }

        if (v52 < 2)
        {
          goto LABEL_112;
        }

        v80 = *v57;
        v79 = *(v57 + 1);
        v68 = __OFSUB__(v79, v80);
        v75 = v79 - v80;
        v76 = v68;
LABEL_75:
        if (v76)
        {
          goto LABEL_115;
        }

        v82 = *v56;
        v81 = *(v56 + 1);
        v68 = __OFSUB__(v81, v82);
        v83 = v81 - v82;
        if (v68)
        {
          goto LABEL_117;
        }

        if (v83 < v75)
        {
          goto LABEL_89;
        }

LABEL_82:
        if (v55 - 1 >= v52)
        {
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
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
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
          goto LABEL_127;
        }

        if (!*a3)
        {
          goto LABEL_130;
        }

        v87 = &v53[16 * v55 - 16];
        v88 = *v87;
        v89 = v55;
        v90 = &v53[16 * v55];
        v91 = *(v90 + 1);
        sub_1E3E59090((*a3 + 8 * *v87), (*a3 + 8 * *v90), (*a3 + 8 * v91), v109);
        if (v111)
        {
          goto LABEL_103;
        }

        if (v91 < v88)
        {
          goto LABEL_105;
        }

        v5 = v53;
        v92 = v7;
        v93 = v6;
        v6 = *(v6 + 2);
        if (v89 > v6)
        {
          goto LABEL_106;
        }

        *v87 = v88;
        *(v87 + 1) = v91;
        if (v89 >= v6)
        {
          goto LABEL_107;
        }

        v52 = (v6 - 1);
        memmove(v90, v90 + 16, 16 * &v6[-v89 - 1]);
        *(v93 + 2) = v6 - 1;
        v94 = v6 > 2;
        v6 = v93;
        v7 = v92;
        v53 = v5;
        v5 = v108;
        if (!v94)
        {
          goto LABEL_89;
        }
      }

      v62 = &v53[16 * v52];
      v63 = *(v62 - 8);
      v64 = *(v62 - 7);
      v68 = __OFSUB__(v64, v63);
      v65 = v64 - v63;
      if (v68)
      {
        goto LABEL_108;
      }

      v67 = *(v62 - 6);
      v66 = *(v62 - 5);
      v68 = __OFSUB__(v66, v67);
      v60 = v66 - v67;
      v61 = v68;
      if (v68)
      {
        goto LABEL_109;
      }

      v69 = *(v57 + 1);
      v70 = v69 - *v57;
      if (__OFSUB__(v69, *v57))
      {
        goto LABEL_111;
      }

      v68 = __OFADD__(v60, v70);
      v71 = v60 + v70;
      if (v68)
      {
        goto LABEL_114;
      }

      if (v71 >= v65)
      {
        v85 = *v56;
        v84 = *(v56 + 1);
        v68 = __OFSUB__(v84, v85);
        v86 = v84 - v85;
        if (v68)
        {
          goto LABEL_122;
        }

        if (v60 < v86)
        {
          v55 = v52 - 2;
        }

        goto LABEL_82;
      }

      goto LABEL_60;
    }

LABEL_89:
    v4 = a3[1];
    if (v5 >= v4)
    {
      goto LABEL_93;
    }
  }

  v34 = v8 + a4;
  if (__OFADD__(v8, a4))
  {
    goto LABEL_126;
  }

  if (v34 >= v33)
  {
    v34 = a3[1];
  }

  if (v34 < v8)
  {
LABEL_127:
    __break(1u);
    goto LABEL_128;
  }

  if (v5 == v34)
  {
    goto LABEL_39;
  }

  v104 = v6;
  v35 = *a3;
  v36 = *a3 + 8 * v5 - 8;
  v107 = v8;
  v109 = v34;
  v37 = v8 - v5;
LABEL_32:
  v38 = *(v35 + 8 * v5);
  v39 = v37;
  v40 = v36;
  while (1)
  {
    v41 = *v40;
    v42 = v38;
    v43 = v41;
    [v42 v7[224]];
    v45 = v44;
    [v43 v7[224]];
    v47 = v46;

    if (v45 >= v47)
    {
LABEL_37:
      ++v5;
      v36 += 8;
      --v37;
      if (v5 == v109)
      {
        v5 = v109;
        v6 = v104;
        v8 = v107;
        goto LABEL_39;
      }

      goto LABEL_32;
    }

    if (!v35)
    {
      break;
    }

    v48 = *v40;
    v38 = *(v40 + 8);
    *v40 = v38;
    *(v40 + 8) = v48;
    v40 -= 8;
    if (__CFADD__(v39++, 1))
    {
      goto LABEL_37;
    }
  }

  __break(1u);
LABEL_130:
  __break(1u);
LABEL_131:
  __break(1u);
LABEL_132:
  __break(1u);
LABEL_133:
  __break(1u);
LABEL_134:
  __break(1u);
}

uint64_t sub_1E3E59090(void **__src, id *__dst, id *a3, void **a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __dst;
  v7 = __src;
  v8 = __dst - __src;
  v9 = a3 - __dst;
  if (v8 < v9)
  {
    if (a4 != __src || &__src[v8] <= a4)
    {
      memmove(a4, __src, 8 * v8);
    }

    v11 = &v4[v8];
    while (1)
    {
      if (v4 >= v11 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_38;
      }

      v13 = v5;
      v14 = *v4;
      v15 = *v6;
      v16 = v14;
      [v15 relativeTime];
      v18 = v17;
      [v16 relativeTime];
      v20 = v19;

      if (v18 >= v20)
      {
        break;
      }

      v21 = v6;
      v22 = v7 == v6++;
      if (!v22)
      {
        goto LABEL_17;
      }

LABEL_18:
      ++v7;
      v5 = v13;
    }

    v21 = v4;
    v22 = v7 == v4++;
    if (v22)
    {
      goto LABEL_18;
    }

LABEL_17:
    *v7 = *v21;
    goto LABEL_18;
  }

  if (a4 != __dst || &__dst[v9] <= a4)
  {
    memmove(a4, __dst, 8 * v9);
  }

  v11 = &v4[v9];
  v41 = v4;
LABEL_25:
  v24 = v6 - 1;
  v25 = v5 - 1;
  while (v11 > v4 && v6 > v7)
  {
    v27 = v7;
    v28 = v25;
    v29 = v24;
    v30 = *v24;
    v31 = *(v11 - 1);
    v32 = v30;
    [v31 relativeTime];
    v34 = v33;
    [v32 relativeTime];
    v36 = v35;

    v5 = v28;
    v37 = v28 + 1;
    if (v34 < v36)
    {
      v22 = v37 == v6;
      v6 = v29;
      v7 = v27;
      v4 = v41;
      if (!v22)
      {
        *v5 = *v29;
        v6 = v29;
      }

      goto LABEL_25;
    }

    if (v11 != v37)
    {
      *v28 = *(v11 - 1);
    }

    v25 = v28 - 1;
    --v11;
    v24 = v29;
    v7 = v27;
    v4 = v41;
  }

LABEL_38:
  v38 = v11 - v4;
  if (v6 != v4 || v6 >= &v4[v38])
  {
    memmove(v6, v4, 8 * v38);
  }

  return 1;
}

void *sub_1E3E592F0(unint64_t a1)
{
  if (a1 >> 62)
  {
    v4 = sub_1E4207384();
    if (v4)
    {
      v5 = v4;
      v2 = sub_1E37FEA14(v4, 0);
      sub_1E3E59384((v2 + 4), v5, a1);
      v7 = v6;

      if (v7 == v5)
      {
        return v2;
      }

      __break(1u);
    }

    return MEMORY[0x1E69E7CC0];
  }

  return (a1 & 0xFFFFFFFFFFFFFF8);
}

uint64_t sub_1E3E59384(uint64_t result, uint64_t a2, unint64_t a3)
{
  v5 = result;
  v6 = a3 >> 62;
  if (a3 >> 62)
  {
    result = sub_1E4207384();
    v7 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v7 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      return a3;
    }
  }

  if (v5)
  {
    result = sub_1E32AE9B0(a3);
    if (result > a2)
    {
      __break(1u);
    }

    else
    {
      if (!v6)
      {
        sub_1E3280A90(0, &qword_1ECF2A420, 0x1E695F588);
        swift_arrayInitWithCopy();
        return a3;
      }

      if (v7 >= 1)
      {
        sub_1E328FCF4(&qword_1ECF3A0A8, &qword_1ECF3A0A0, &qword_1E42D6AA0);
        for (i = 0; i != v7; ++i)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3A0A0, &qword_1E42D6AA0);
          v9 = sub_1E374111C(v12, i, a3);
          v11 = *v10;
          (v9)(v12, 0);
          *(v5 + 8 * i) = v11;
        }

        return a3;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1E3E59538()
{
  OUTLINED_FUNCTION_27_2();
  v0 = sub_1E41FDF34();
  OUTLINED_FUNCTION_17_2(v0);
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_30_0(v1);
  *v2 = v3;
  v2[1] = sub_1E327C238;

  return sub_1E3E56BBC();
}

uint64_t sub_1E3E59608(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    OUTLINED_FUNCTION_20_2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1E3E5964C()
{
  OUTLINED_FUNCTION_24();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_30_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_56_1(v1);

  return sub_1E3E49BC0();
}

unint64_t sub_1E3E596EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EE270F20;
  if (!qword_1EE270F20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE270F20);
  }

  return result;
}

uint64_t objectdestroy_55Tm_0()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1E3E59790()
{
  OUTLINED_FUNCTION_24();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_30_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_56_1(v1);

  return sub_1E3E52574();
}

uint64_t sub_1E3E59824()
{
  OUTLINED_FUNCTION_27_2();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_30_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_56_1(v1);

  return sub_1E3E51068();
}

uint64_t sub_1E3E598C4()
{
  OUTLINED_FUNCTION_24();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_30_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_15_128(v1);

  return sub_1E3E54330();
}

uint64_t sub_1E3E59948()
{
  OUTLINED_FUNCTION_24();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_30_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_15_128(v1);

  return sub_1E3E54858();
}

uint64_t sub_1E3E599CC()
{
  OUTLINED_FUNCTION_24();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_30_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_56_1(v1);

  return sub_1E3E54D9C();
}

uint64_t sub_1E3E59A50()
{
  OUTLINED_FUNCTION_24();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_30_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_15_128(v1);

  return sub_1E3E55200();
}

uint64_t sub_1E3E59AD4()
{
  OUTLINED_FUNCTION_24();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_30_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_15_128(v1);

  return sub_1E3E558A0();
}

uint64_t get_enum_tag_for_layout_string_8VideosUI19PlayerHapticManagerC0D13CleanupReason33_8B6EDCD0ECA2EB174AF3BF28DB41AB7ALLO(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1E3E59B70(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_18();
  }

  if (a2 >= 0x7FFFFFF9 && *(a1 + 8))
  {
    return (*a1 + 2147483641);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 6;
  if (v4 >= 8)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1E3E59BC8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFF9)
  {
    *result = 0;
    *result = a2 - 2147483641;
    if (a3 >= 0x7FFFFFF9)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFF9)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 6;
    }
  }

  return result;
}

uint64_t sub_1E3E59D78(uint64_t a1)
{
  sub_1E4205F14();
  sub_1E4205ED4();
  OUTLINED_FUNCTION_50();

  return v1;
}

uint64_t sub_1E3E59E08()
{
  OUTLINED_FUNCTION_24();

  return sub_1E3E520C4();
}

uint64_t OUTLINED_FUNCTION_48_39(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{

  return sub_1E328FCF4(a1, a2, a3);
}

uint64_t OUTLINED_FUNCTION_77_20(uint64_t a1)
{

  return swift_weakInit();
}

uint64_t OUTLINED_FUNCTION_83_16()
{

  return sub_1E41FE404();
}

void OUTLINED_FUNCTION_94_19(void *a1, uint64_t a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, v4, a3, a4, v5, 0xCu);
}

uint64_t OUTLINED_FUNCTION_96_18()
{
  *(v1 + 24) = v0;

  return swift_continuation_init();
}

void OUTLINED_FUNCTION_122_10(void *a1@<X0>, const char *a2@<X3>, os_log_type_t a3@<W8>)
{

  _os_log_impl(a1, v3, a3, a2, v4, 0xCu);
}

void OUTLINED_FUNCTION_125_10()
{

  JUMPOUT(0x1E69109E0);
}

uint64_t OUTLINED_FUNCTION_128_10(uint64_t a1)
{

  return sub_1E4206F64();
}

void OUTLINED_FUNCTION_130_13()
{

  JUMPOUT(0x1E69109E0);
}

void OUTLINED_FUNCTION_131_12()
{

  sub_1E3E4BD68(v0);
}

uint64_t OUTLINED_FUNCTION_132_10(uint64_t a1)
{

  return sub_1E4206F64();
}

void (*sub_1E3E5A0FC(void *a1))(uint64_t a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v3;
  v3[5] = v1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v5 = *(v1 + 256);
  v3[3] = Strong;
  v3[4] = v5;
  return sub_1E37BB578;
}

unint64_t sub_1E3E5A17C()
{
  v1 = v0;
  if (v0[37])
  {
    v2 = v0[36];
  }

  else
  {
    v3 = 0xE000000000000000;
    sub_1E42074B4();

    v4 = v0[3];
    if (v4)
    {
      v5 = v0[2];
    }

    else
    {
      v5 = 0;
    }

    if (v4)
    {
      v3 = v0[3];
    }

    MEMORY[0x1E69109E0](v5, v3);

    v2 = 0xD00000000000001ALL;
    v1[36] = 0xD00000000000001ALL;
    v1[37] = 0x80000001E42863B0;
  }

  return v2;
}

uint64_t sub_1E3E5A250(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = a1;
  swift_allocObject();
  return sub_1E3E5A2A4(v5, a2, a3);
}

uint64_t sub_1E3E5A2A4(__int16 a1, uint64_t a2, uint64_t a3)
{
  v3[32] = 0;
  swift_unknownObjectWeakInit();
  v3[33] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3E1E0, &unk_1E42D6EC0);
  swift_allocObject();
  v3[34] = sub_1E4200544();
  v3[35] = 0;
  v3[36] = 0;
  v3[37] = 0;

  v7 = sub_1E39BEDCC(a1, a2, a3);
  if (!v7)
  {

    goto LABEL_11;
  }

  ViewModelKeys.rawValue.getter(31);
  sub_1E3277E60(v8, v9, a2, &v18);

  if (v19)
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A770, &qword_1E42992B0);
    if (OUTLINED_FUNCTION_3_201(v10, v11))
    {
      *(v7 + 264) = v17;
    }
  }

  else
  {
    sub_1E325F748(&v18, &unk_1ECF296E0, &unk_1E4298030);
  }

  ViewModelKeys.rawValue.getter(33);
  sub_1E3277E60(v12, v13, a2, &v18);

  if (!v19)
  {

    sub_1E325F748(&v18, &unk_1ECF296E0, &unk_1E4298030);
    return v7;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A770, &qword_1E42992B0);
  if ((OUTLINED_FUNCTION_3_201(v14, v15) & 1) == 0)
  {
LABEL_11:

    return v7;
  }

  *(v7 + 280) = v17;

  return v7;
}

uint64_t sub_1E3E5A48C(void *a1)
{
  if (!swift_dynamicCastClass())
  {
    goto LABEL_8;
  }

  v2 = sub_1E39BE4D0();
  if (!v2)
  {

    v9 = sub_1E39BE4D0();

    if (!v9)
    {
      v8 = 1;
      return sub_1E39C0504(a1) & v8 & 1;
    }

    goto LABEL_8;
  }

  v3 = v2;

  v4 = sub_1E39BE4D0();

  if (!v4)
  {

LABEL_8:
    v8 = 0;
    return sub_1E39C0504(a1) & v8 & 1;
  }

  sub_1E3BA3590();
  v5 = sub_1E3744600(v3);

  v6 = sub_1E37766C4(v5);
  sub_1E3744600(v4);

  v7 = sub_1E4205C44();

  v8 = [v6 isEqualToDictionary_];

  return sub_1E39C0504(a1) & v8 & 1;
}

uint64_t sub_1E3E5A658()
{
  sub_1E32AF6F8(v0 + 248);
}

uint64_t sub_1E3E5A6A0()
{
  v0 = ViewModel.deinit();
  sub_1E32AF6F8(v0 + 248);

  return v0;
}

uint64_t sub_1E3E5A6F0()
{
  v0 = sub_1E3E5A6A0();

  return MEMORY[0x1EEE6BDC0](v0, 304, 7);
}

uint64_t sub_1E3E5A720()
{
  v1 = sub_1E4205CB4();
  v2 = v0[35];
  if (v2)
  {

    v1 = v2;
  }

  (*(*v0 + 416))(v7);
  if (v7[3])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3A250, &unk_1E42D6ED0);
    type metadata accessor for TimeBasedVariantResolver(0);
    if (swift_dynamicCast())
    {
      v3 = (*(*v6 + 376))();

      if (v3)
      {
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v7[0] = v1;
        sub_1E3E5B654(v3, sub_1E394C454, 0, isUniquelyReferenced_nonNull_native, v7);
        v1 = v7[0];
      }
    }
  }

  else
  {
    sub_1E325F748(v7, &qword_1ECF2FFF0, &unk_1E42AFDA0);
  }

  if (!*(v1 + 16))
  {

    return 0;
  }

  return v1;
}

uint64_t sub_1E3E5A8E0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3E1E0, &unk_1E42D6EC0);
  sub_1E32752B0(&qword_1ECF2A2A0, &qword_1ECF3E1E0, &unk_1E42D6EC0, MEMORY[0x1E695BF88]);
  return sub_1E42006B4();
}

double sub_1E3E5A96C(void (*a1)(void))
{
  v3 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v9);
  v12 = &v36 - v11;
  (*(*v1 + 416))(&v40, v10);
  if (!*(&v41 + 1))
  {
    sub_1E325F748(&v40, &qword_1ECF2FFF0, &unk_1E42AFDA0);
LABEL_7:
    sub_1E324FBDC();
    OUTLINED_FUNCTION_0_11();
    v23(v8);

    v24 = sub_1E41FFC94();
    v25 = sub_1E4206814();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = OUTLINED_FUNCTION_6_21();
      v27 = OUTLINED_FUNCTION_100();
      v38 = a1;
      v28 = v27;
      *&v40 = v27;
      *v26 = 136315138;
      v29 = sub_1E3E5A17C();
      v31 = sub_1E3270FC8(v29, v30, &v40);
      v37 = v3;
      v32 = v31;

      *(v26 + 4) = v32;
      _os_log_impl(&dword_1E323F000, v24, v25, "%s no children resolver, ignore", v26, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v28);
      a1 = v38;
      OUTLINED_FUNCTION_6_0();
      OUTLINED_FUNCTION_6_0();

      (*(v5 + 8))(v8, v37);
    }

    else
    {

      (*(v5 + 8))(v8, v3);
    }

    goto LABEL_10;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3A250, &unk_1E42D6ED0);
  type metadata accessor for TimeBasedVariantResolver(0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_7;
  }

  v13 = v39;
  sub_1E324FBDC();
  OUTLINED_FUNCTION_0_11();
  v14(v12);

  v15 = sub_1E41FFC94();
  v16 = sub_1E4206814();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = OUTLINED_FUNCTION_6_21();
    v37 = v13;
    v18 = v17;
    v19 = OUTLINED_FUNCTION_100();
    v38 = a1;
    v36 = v19;
    *&v40 = v19;
    *v18 = 136315138;
    v20 = sub_1E3E5A17C();
    v22 = sub_1E3270FC8(v20, v21, &v40);

    *(v18 + 4) = v22;
    _os_log_impl(&dword_1E323F000, v15, v16, "%s resolve children", v18, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v36);
    a1 = v38;
    OUTLINED_FUNCTION_6_0();
    v13 = v37;
    OUTLINED_FUNCTION_6_0();
  }

  (*(v5 + 8))(v12, v3);
  v40 = 0u;
  v41 = 0u;
  (*(*v13 + 368))(&v40);

  sub_1E325F748(&v40, &unk_1ECF296E0, &unk_1E4298030);
LABEL_10:
  a1(1);
  if (v1[3])
  {
    v33 = v1[2];
    v34 = v1[3];
  }

  else
  {
    v33 = 0;
    v34 = 0xE000000000000000;
  }

  *&v40 = v33;
  *(&v40 + 1) = v34;

  sub_1E4200524();

  return result;
}

void (*sub_1E3E5AE1C(void *a1))(void *a1)
{
  v3 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v3;
  v3[4] = (*(*v1 + 888))();
  return sub_1E37BCF0C;
}

double sub_1E3E5AEA0()
{
  v1 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  v6 = v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E324FBDC();
  OUTLINED_FUNCTION_0_11();
  v7(v6);

  v8 = sub_1E41FFC94();
  v9 = sub_1E4206814();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = OUTLINED_FUNCTION_6_21();
    v11 = OUTLINED_FUNCTION_100();
    v18[0] = v11;
    *v10 = 136315138;
    v12 = sub_1E3E5A17C();
    v14 = sub_1E3270FC8(v12, v13, v18);

    *(v10 + 4) = v14;
    _os_log_impl(&dword_1E323F000, v8, v9, "%s didUpdateVariant", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v11);
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_6_0();
  }

  (*(v3 + 8))(v6, v1);
  if (*(v0 + 24))
  {
    v15 = *(v0 + 16);
    v16 = *(v0 + 24);
  }

  else
  {
    v15 = 0;
    v16 = 0xE000000000000000;
  }

  v18[0] = v15;
  v18[1] = v16;

  sub_1E4200524();

  return result;
}

uint64_t sub_1E3E5B0EC(uint64_t a1)
{
  v2 = v1 + OBJC_IVAR____TtC8VideosUI14LockupUpdating_lockupUpdatingObserver;
  *v2 = 0u;
  *(v2 + 16) = 0u;
  *(v2 + 32) = 0;
  *(v1 + OBJC_IVAR____TtC8VideosUI14LockupUpdating_viewModel) = a1;

  v3 = sub_1E3B500B4();

  sub_1E3E5B158();

  return v3;
}

uint64_t sub_1E3E5B158()
{
  v1 = v0;
  result = dynamic_cast_existential_1_conditional(*(v0 + OBJC_IVAR____TtC8VideosUI14LockupUpdating_viewModel), **(v0 + OBJC_IVAR____TtC8VideosUI14LockupUpdating_viewModel), &protocol descriptor for CollectionChildViewModelDataUpdating);
  if (result)
  {
    v4 = v3;
    ObjectType = swift_getObjectType();
    v6 = *(v4 + 32);

    v6(ObjectType, v4);
    swift_allocObject();
    swift_weakInit();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF322E0, &unk_1E42D6F80);
    sub_1E32752B0(&qword_1ECF322E8, &qword_1ECF322E0, &unk_1E42D6F80, MEMORY[0x1E695BED8]);
    v7 = sub_1E4200844();

    v9[3] = sub_1E42004F4();
    v9[4] = MEMORY[0x1E695BF08];

    v9[0] = v7;
    v8 = OBJC_IVAR____TtC8VideosUI14LockupUpdating_lockupUpdatingObserver;
    swift_beginAccess();
    sub_1E3ABD288(v9, v1 + v8);
    return swift_endAccess();
  }

  return result;
}

double sub_1E3E5B314()
{
  v1 = v0;
  v2 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E324FBDC();
  OUTLINED_FUNCTION_0_11();
  v8(v7);

  v9 = sub_1E41FFC94();
  v10 = sub_1E4206814();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = OUTLINED_FUNCTION_6_21();
    v12 = OUTLINED_FUNCTION_100();
    v20 = v12;
    *v11 = 136315138;
    v13 = *(v1 + OBJC_IVAR____TtC8VideosUI14LockupUpdating_viewModel);
    if (*(v13 + 24))
    {
      v14 = *(v13 + 16);
      v15 = *(v13 + 24);
    }

    else
    {
      v15 = 0xE400000000000000;
      v14 = 1819047278;
    }

    v16 = sub_1E3270FC8(v14, v15, &v20);

    *(v11 + 4) = v16;
    _os_log_impl(&dword_1E323F000, v9, v10, "LockupUpdating::handleViewModelChanged id: %s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v12);
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_6_0();
  }

  v17 = (*(v4 + 8))(v7, v2);
  (*(*v1 + 208))(v17);
  type metadata accessor for LockupUpdating(0);
  sub_1E3E5B950();
  sub_1E4200514();
  sub_1E4200594();

  return result;
}

uint64_t sub_1E3E5B5A8()
{
  v0 = sub_1E3B4FF80();

  sub_1E325F748(v0 + OBJC_IVAR____TtC8VideosUI14LockupUpdating_lockupUpdatingObserver, &qword_1ECF322D8, &qword_1E42B8150);
  return v0;
}

uint64_t sub_1E3E5B600()
{
  v0 = sub_1E3E5B5A8();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

void sub_1E3E5B654(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t *a5)
{
  sub_1E394CDB0(a1, a2, a3, v33);
  v29 = v33[0];
  v30 = v33[1];
  v31 = v33[2];
  v32 = v34;

  while (1)
  {
    sub_1E394CDEC(&v27);
    v7 = *(&v27 + 1);
    if (!*(&v27 + 1))
    {
      sub_1E34AF4DC(v29);

      return;
    }

    v8 = v27;
    sub_1E329504C(&v28, v26);
    v9 = *a5;
    v11 = sub_1E327D33C(v8, v7);
    v12 = *(v9 + 16);
    v13 = (v10 & 1) == 0;
    v14 = v12 + v13;
    if (__OFADD__(v12, v13))
    {
      break;
    }

    v15 = v10;
    if (*(v9 + 24) >= v14)
    {
      if (a4)
      {
        if (v10)
        {
          goto LABEL_10;
        }
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2F310, &qword_1E429B110);
        sub_1E4207654();
        if (v15)
        {
          goto LABEL_10;
        }
      }
    }

    else
    {
      sub_1E394C160(v14, a4 & 1);
      v16 = sub_1E327D33C(v8, v7);
      if ((v15 & 1) != (v17 & 1))
      {
        goto LABEL_18;
      }

      v11 = v16;
      if (v15)
      {
LABEL_10:
        v18 = *a5;
        sub_1E328438C(*(*a5 + 56) + 32 * v11, v25);
        __swift_destroy_boxed_opaque_existential_1(v26);

        v19 = (*(v18 + 56) + 32 * v11);
        __swift_destroy_boxed_opaque_existential_1(v19);
        sub_1E329504C(v25, v19);
        goto LABEL_14;
      }
    }

    v20 = *a5;
    *(*a5 + 8 * (v11 >> 6) + 64) |= 1 << v11;
    v21 = (v20[6] + 16 * v11);
    *v21 = v8;
    v21[1] = v7;
    sub_1E329504C(v26, (v20[7] + 32 * v11));
    v22 = v20[2];
    v23 = __OFADD__(v22, 1);
    v24 = v22 + 1;
    if (v23)
    {
      goto LABEL_17;
    }

    v20[2] = v24;
LABEL_14:
    a4 = 1;
  }

  __break(1u);
LABEL_17:
  __break(1u);
LABEL_18:
  sub_1E4207A74();
  __break(1u);
}

uint64_t type metadata accessor for LockupUpdating(uint64_t a1)
{
  result = qword_1EE2A5800;
  if (!qword_1EE2A5800)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1E3E5B950()
{
  result = qword_1ECF36BE0;
  if (!qword_1ECF36BE0)
  {
    type metadata accessor for LockupUpdating(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF36BE0);
  }

  return result;
}

double sub_1E3E5B9A8()
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_1E3E5B314();
  }

  return result;
}

void sub_1E3E5B9FC()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v3 = v2;
  v54 = v4;
  memset(__src, 0, 32);
  LOBYTE(__src[2]) = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3A258, &qword_1E42D6F98);
  sub_1E42038E4();
  v59 = v66;
  v60 = v65;
  v57 = v68;
  v58 = v67;
  v61 = v70;
  v81 = v69;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D3C0, &unk_1E42A9690);
  swift_allocObject();
  v56 = sub_1E4200544();
  if (v1)
  {

    v55 = v1;
    goto LABEL_8;
  }

  v5 = *(*v3 + 392);

  if (v5(v6))
  {
    type metadata accessor for ButtonLayout();
    v7 = swift_dynamicCastClass();
    if (v7)
    {
      v55 = v7;
      goto LABEL_8;
    }
  }

  v55 = 0;
LABEL_8:
  v8 = *(*v3 + 464);

  v10 = (v8)(v9);
  if (!v10)
  {
    v15 = 0;
LABEL_21:
    v62 = v1;
    v16 = v8();
    if (v16)
    {
      v17 = v16;
      v18 = sub_1E32AE9B0(v16);
      for (i = 0; ; ++i)
      {
        if (v18 == i)
        {

          v26 = 0;
          goto LABEL_40;
        }

        if ((v17 & 0xC000000000000001) != 0)
        {
          v20 = MEMORY[0x1E6911E60](i, v17);
        }

        else
        {
          if (i >= *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_85;
          }
        }

        if (__OFADD__(i, 1))
        {
          goto LABEL_84;
        }

        v23 = v20;
        v63[0] = *(v20 + 98);
        LOWORD(v80[0]) = 23;
        sub_1E3742F1C(v20, v21, v22);
        sub_1E4206254();
        sub_1E4206254();
        if (v65 == *&__src[0] && v66 == *(&__src[0] + 1))
        {
          break;
        }

        v25 = OUTLINED_FUNCTION_97_0(v65, v66, *&__src[0]);

        if (v25)
        {
          goto LABEL_37;
        }
      }

LABEL_37:

      v26 = v23;
      if (*v23 == _TtC8VideosUI13TextViewModel)
      {
LABEL_40:
        v27 = (v8)(v16);
        if (v27)
        {
          v28 = v27;
          v29 = sub_1E32AE9B0(v27);
          for (j = 0; ; ++j)
          {
            if (v29 == j)
            {

              v31 = 0;
              goto LABEL_59;
            }

            if ((v28 & 0xC000000000000001) != 0)
            {
              v32 = MEMORY[0x1E6911E60](j, v28);
              v31 = v32;
            }

            else
            {
              if (j >= *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_87;
              }

              v31 = *(v28 + 8 * j + 32);
            }

            if (__OFADD__(j, 1))
            {
              goto LABEL_86;
            }

            v63[0] = *(v31 + 98);
            LOWORD(v80[0]) = 15;
            sub_1E3742F1C(v32, v33, v34);
            OUTLINED_FUNCTION_8_6();
            sub_1E4206254();
            OUTLINED_FUNCTION_8_6();
            sub_1E4206254();
            if (v65 == *&__src[0] && v66 == *(&__src[0] + 1))
            {
              break;
            }

            v36 = OUTLINED_FUNCTION_97_0(v65, v66, *&__src[0]);

            if (v36)
            {
              goto LABEL_56;
            }
          }

LABEL_56:

          if (*v31 == _TtC8VideosUI13TextViewModel)
          {
            goto LABEL_59;
          }
        }

        v31 = 0;
LABEL_59:
        if (v62)
        {
          v37 = *(*v62 + 2096);

          v39 = v37(v38);
          v40 = (*(*v62 + 2048))();
          v41 = (*(*v62 + 2072))();
        }

        else
        {
          if (v15 && (v42 = *(*v15 + 392), v43 = , v44 = v42(v43), , v44))
          {
            type metadata accessor for ImageLayout();
            v39 = swift_dynamicCastClass();
            if (!v39)
            {
            }
          }

          else
          {
            v39 = 0;
          }

          if (v26 && (v45 = , v47 = sub_1E3C27528(v45, v46), , v47))
          {
            type metadata accessor for TextLayout();
            v40 = swift_dynamicCastClass();
            if (!v40)
            {
            }
          }

          else
          {
            v40 = 0;
          }

          if (v31 && (v48 = , v50 = sub_1E3C27528(v48, v49), , v50))
          {
            type metadata accessor for TextLayout();
            v41 = swift_dynamicCastClass();
            if (!v41)
            {
            }
          }

          else
          {
            v41 = 0;
          }
        }

        LOBYTE(__src[0]) = 1;
        (*(*v3 + 776))(&v65, __src, &unk_1F5D5DAC8, &off_1F5D5C998);

        if (v68)
        {
          v51 = v54;
          if (swift_dynamicCast())
          {
            v53 = *(&__src[0] + 1);
            v52 = *&__src[0];
          }

          else
          {
            v52 = 0;
            v53 = 0;
          }
        }

        else
        {
          sub_1E329505C(&v65);
          v52 = 0;
          v53 = 0;
          v51 = v54;
        }

        *&__src[0] = v3;
        *(&__src[0] + 1) = v55;
        *&__src[1] = v39;
        *(&__src[1] + 1) = v40;
        *&__src[2] = v41;
        *(&__src[2] + 1) = v52;
        *&__src[3] = v53;
        *(&__src[3] + 1) = v60;
        *&__src[4] = v59;
        *(&__src[4] + 1) = v58;
        *&__src[5] = v57;
        *(&__src[5] + 9) = v80[0];
        HIDWORD(__src[5]) = *(v80 + 3);
        BYTE8(__src[5]) = v81;
        *&__src[6] = v61;
        *(&__src[6] + 1) = v56;
        v65 = v3;
        v66 = v55;
        v67 = v39;
        v68 = v40;
        v69 = v41;
        v70 = v52;
        v71 = v53;
        v72 = v60;
        v73 = v59;
        v74 = v58;
        v75 = v57;
        v76 = v81;
        *v77 = v80[0];
        *&v77[3] = *(v80 + 3);
        v78 = v61;
        v79 = v56;
        sub_1E3D5CA5C(__src, v63);
        sub_1E3D5D0AC(&v65);
        memcpy(v51, __src, 0x70uLL);
        OUTLINED_FUNCTION_25_2();
        return;
      }
    }

    v26 = 0;
    goto LABEL_40;
  }

  v11 = v10;
  v12 = sub_1E32AE9B0(v10);
  for (k = 0; ; ++k)
  {
    if (v12 == k)
    {

      v15 = 0;
      goto LABEL_21;
    }

    if ((v11 & 0xC000000000000001) != 0)
    {
      MEMORY[0x1E6911E60](k, v11);
    }

    else
    {
      if (k >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_83;
      }
    }

    if (__OFADD__(k, 1))
    {
      break;
    }

    type metadata accessor for ImageViewModel();
    v14 = swift_dynamicCastClass();
    if (v14)
    {
      v15 = v14;

      goto LABEL_21;
    }
  }

  __break(1u);
LABEL_83:
  __break(1u);
LABEL_84:
  __break(1u);
LABEL_85:
  __break(1u);
LABEL_86:
  __break(1u);
LABEL_87:
  __break(1u);
}

uint64_t sub_1E3E5C294()
{
  v0 = OUTLINED_FUNCTION_32_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  sub_1E32752B0(&qword_1EE28A190, &qword_1ECF2D3C0, &unk_1E42A9690, MEMORY[0x1E695BF88]);
  return sub_1E42006B4();
}

void sub_1E3E5C31C()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v3 = v2;
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3A260, &qword_1E42D6FA0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v74 - v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3A268, &qword_1E42D6FA8);
  OUTLINED_FUNCTION_0_10();
  v82 = v8;
  v83 = v7;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_4_6();
  v11 = v9 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v74 - v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3A270, &qword_1E42D6FB0);
  OUTLINED_FUNCTION_0_10();
  v84 = v16;
  v85 = v15;
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_4_6();
  v19 = v17 - v18;
  MEMORY[0x1EEE9AC00](v20);
  v81 = &v74 - v21;
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3A278, &qword_1E42D6FB8);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_4_6();
  v25 = v23 - v24;
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v74 - v27;
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3A280, &qword_1E42D6FC0);
  OUTLINED_FUNCTION_0_10();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_44();
  v32 = v1[6];
  if (!v32)
  {
    goto LABEL_6;
  }

  v33 = v1[1];
  if (!v33)
  {
    goto LABEL_6;
  }

  v76 = v14;
  v77 = v30;
  v78 = v31;
  v79 = v6;
  v80 = v3;
  v75 = v1[5];
  v34 = *(*v33 + 2336);

  if ((v34(v35) & 1) == 0)
  {

    v6 = v79;
LABEL_6:
    OUTLINED_FUNCTION_42_6();
    v56 = swift_allocObject();
    v57 = OUTLINED_FUNCTION_16_121(v56);
    MEMORY[0x1EEE9AC00](v57);
    *(&v74 - 2) = v1;
    sub_1E3D5CA5C(v1, &v89);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3A288, &qword_1E42D6FC8);
    sub_1E3E5EB98();
    sub_1E4203964();
    v58 = v1[1];
    v59 = OUTLINED_FUNCTION_10_139(&qword_1ECF3A318, &qword_1ECF3A268, &qword_1E42D6FA8);
    v60 = v58;
    v61 = v83;
    sub_1E38838AC(v60, 2u, 2, v83, v59, v19);
    (*(v82 + 8))(v11, v61);
    v62 = sub_1E4203DA4();
    v64 = v63;
    v65 = v87;
    v66 = v25 + *(v87 + 36);
    sub_1E3E5DF60();
    v67 = (v66 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3A320, &qword_1E42D7010) + 36));
    *v67 = v62;
    v67[1] = v64;
    v68 = OUTLINED_FUNCTION_159();
    v69(v68);
    sub_1E3743538(v25, v6, &qword_1ECF3A278, &qword_1E42D6FB8);
    swift_storeEnumTagMultiPayload();
    v70 = sub_1E3E5EFB4();
    v73 = sub_1E32822E0(v70, v71, v72);
    v89 = v65;
    v90 = MEMORY[0x1E69E6158];
    v91 = v70;
    v92 = v73;
    OUTLINED_FUNCTION_6_176();
    sub_1E4201F44();
    sub_1E325F6F0(v25, &qword_1ECF3A278, &qword_1E42D6FB8);
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_42_6();
  v36 = swift_allocObject();
  v37 = OUTLINED_FUNCTION_16_121(v36);
  MEMORY[0x1EEE9AC00](v37);
  *(&v74 - 2) = v1;
  sub_1E3D5CA5C(v1, &v89);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3A288, &qword_1E42D6FC8);
  sub_1E3E5EB98();
  v38 = v76;
  sub_1E4203964();
  v39 = OUTLINED_FUNCTION_10_139(&qword_1ECF3A318, &qword_1ECF3A268, &qword_1E42D6FA8);
  v40 = v81;
  v41 = v83;
  sub_1E38838AC(v33, 2u, 2, v83, v39, v81);
  (*(v82 + 8))(v38, v41);
  v42 = sub_1E4203DA4();
  v44 = v43;
  v45 = v87;
  v46 = &v28[*(v87 + 36)];
  sub_1E3E5DF60();
  v47 = &v46[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3A320, &qword_1E42D7010) + 36)];
  *v47 = v42;
  v47[1] = v44;
  (*(v84 + 32))(v28, v40, v85);
  v89 = v75;
  v90 = v32;
  v48 = sub_1E3E5EFB4();
  v51 = sub_1E32822E0(v48, v49, v50);
  v52 = MEMORY[0x1E69E6158];
  v53 = v77;
  sub_1E4203414();
  sub_1E325F6F0(v28, &qword_1ECF3A278, &qword_1E42D6FB8);
  v54 = v78;
  v55 = v86;
  (*(v78 + 16))(v79, v53, v86);
  swift_storeEnumTagMultiPayload();
  v89 = v45;
  v90 = v52;
  v91 = v48;
  v92 = v51;
  OUTLINED_FUNCTION_6_176();
  OUTLINED_FUNCTION_32_0();
  sub_1E4201F44();

  (*(v54 + 8))(v53, v55);
LABEL_7:
  OUTLINED_FUNCTION_25_2();
}

void sub_1E3E5CA80(uint64_t a1)
{
  v2 = *(a1 + 72);
  v21[0] = *(a1 + 56);
  v21[1] = v2;
  v21[2] = *(a1 + 88);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3A348, &qword_1E42D70F0);
  sub_1E42038F4();
  sub_1E40421AC(2, 0, v22, v21);
  v3 = *(&v21[0] + 1);
  v4 = *(a1 + 8);
  if (v4)
  {
    v5 = *(*v4 + 1784);

    v7 = v5(v6);
    if (v7 != 11)
    {
      sub_1E3751DB0(v7, v8, v9);
      if (sub_1E4205E84())
      {
        v10 = (*(**a1 + 624))();
        if (v10)
        {
          while (1)
          {
            type metadata accessor for CollectionViewModel();
            v11 = swift_dynamicCastClass();
            if (v11)
            {
              v12 = *(*v11 + 1440);

              v14 = v12(v13);

              if (v14)
              {
                break;
              }
            }

            v15 = (*(*v10 + 624))();

            v10 = v15;
            if (!v15)
            {
              goto LABEL_11;
            }
          }

          v16 = sub_1E39BE4D0();
          if (!v16)
          {

            goto LABEL_12;
          }

          v17 = sub_1E3744600(v16);

          v18 = sub_1E3744600(v14);

          v19 = objc_allocWithZone(VUIRouterDataSource);
          v3 = sub_1E37C07A4(v17, v18);

          sub_1E38E5014(v21);
        }
      }
    }

LABEL_11:
  }

LABEL_12:
  v20 = v3;
  sub_1E4200524();
}

void sub_1E3E5CD44(void *a1@<X0>, uint64_t a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3A2C0, &qword_1E42D6FE0);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_44();
  v59 = v7;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3A2B0, &qword_1E42D6FD8);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_44();
  v61 = v9;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3A2A0, &qword_1E42D6FD0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_44();
  v62 = v11;
  v12 = (**a1 + 464);
  v64 = *v12;
  v13 = (*v12)();
  v63 = a2;
  if (!v13)
  {
    v17 = 0;
LABEL_14:
    v18 = v64();
    if (v18)
    {
      v19 = v18;
      sub_1E32AE9B0(v18);
      OUTLINED_FUNCTION_14_138();
      while (1)
      {
        if (v2 == v3)
        {

          v20 = 0;
          goto LABEL_33;
        }

        if (v66)
        {
          v29 = OUTLINED_FUNCTION_159();
          v21 = MEMORY[0x1E6911E60](v29);
          v20 = v21;
        }

        else
        {
          if (v3 >= *(v65 + 16))
          {
            goto LABEL_60;
          }

          v20 = *(v19 + 8 * v3 + 32);
        }

        if (__OFADD__(v3, 1))
        {
          goto LABEL_59;
        }

        LOWORD(v67[0]) = *(v20 + 98);
        v24 = sub_1E3742F1C(v21, v22, v23);
        sub_1E4206254();
        OUTLINED_FUNCTION_26_92();
        v25 = OUTLINED_FUNCTION_22_79();
        v27 = v27 && v24 == v67;
        if (v27)
        {
          break;
        }

        v28 = OUTLINED_FUNCTION_97_0(v25, v24, v26);

        if (v28)
        {
          goto LABEL_30;
        }

        ++v3;
      }

LABEL_30:

      if (*v20 == _TtC8VideosUI13TextViewModel)
      {
LABEL_33:
        v30 = (v64)(v18);
        if (v30)
        {
          v31 = v30;
          sub_1E32AE9B0(v30);
          OUTLINED_FUNCTION_14_138();
          while (1)
          {
            if (v2 == v3)
            {

              goto LABEL_51;
            }

            if (v66)
            {
              v41 = OUTLINED_FUNCTION_159();
              v33 = MEMORY[0x1E6911E60](v41);
              v32 = v33;
            }

            else
            {
              if (v3 >= *(v65 + 16))
              {
                goto LABEL_62;
              }

              v32 = *(v31 + 8 * v3 + 32);
            }

            if (__OFADD__(v3, 1))
            {
              goto LABEL_61;
            }

            LOWORD(v67[0]) = *(v32 + 98);
            v36 = sub_1E3742F1C(v33, v34, v35);
            sub_1E4206254();
            OUTLINED_FUNCTION_26_92();
            v37 = OUTLINED_FUNCTION_22_79();
            if (v27 && v36 == v67)
            {
              break;
            }

            v40 = OUTLINED_FUNCTION_97_0(v37, v36, v38);

            if (v40)
            {
              goto LABEL_49;
            }

            ++v3;
          }

LABEL_49:

          if (*v32 == _TtC8VideosUI13TextViewModel)
          {
            goto LABEL_52;
          }
        }

LABEL_51:
        v32 = 0;
LABEL_52:
        sub_1E3E5D3E8(v17, v20, a1, v32, v59);
        if (a1[1] && (OUTLINED_FUNCTION_8(), (*(v42 + 176))(v67), (v68 & 1) == 0))
        {
          v45.n128_u64[0] = v67[2];
          v46.n128_u64[0] = v67[3];
          v43.n128_u64[0] = v67[0];
          v44.n128_u64[0] = v67[1];
          v47 = j_nullsub_1(v43, v44, v45, v46);
        }

        else
        {
          v47 = OUTLINED_FUNCTION_5_8();
        }

        v51 = v47;
        v52 = v48;
        v53 = v49;
        v54 = v50;
        v55 = sub_1E4202734();
        sub_1E3741EA0(v59, v61, &qword_1ECF3A2C0, &qword_1E42D6FE0);
        v56 = v61 + *(v58 + 36);
        *v56 = v55;
        *(v56 + 8) = v51;
        *(v56 + 16) = v52;
        *(v56 + 24) = v53;
        *(v56 + 32) = v54;
        *(v56 + 40) = 0;
        sub_1E4203DA4();
        OUTLINED_FUNCTION_12_135();
        sub_1E42015C4();
        sub_1E3741EA0(v61, v62, &qword_1ECF3A2B0, &qword_1E42D6FD8);
        memcpy((v62 + *(v60 + 36)), v69, 0x70uLL);
        sub_1E4203DA4();
        OUTLINED_FUNCTION_12_135();
        sub_1E42015C4();

        sub_1E3741EA0(v62, v63, &qword_1ECF3A2A0, &qword_1E42D6FD0);
        v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3A288, &qword_1E42D6FC8);
        memcpy((v63 + *(v57 + 36)), __src, 0x70uLL);
        return;
      }
    }

    v20 = 0;
    goto LABEL_33;
  }

  v3 = v13;
  v14 = sub_1E32AE9B0(v13);
  for (i = 0; ; ++i)
  {
    if (v14 == i)
    {

      v17 = 0;
      goto LABEL_14;
    }

    if ((v3 & 0xC000000000000001) != 0)
    {
      v2 = MEMORY[0x1E6911E60](i, v3);
    }

    else
    {
      if (i >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_58;
      }

      v2 = *(v3 + 8 * i + 32);
    }

    if (__OFADD__(i, 1))
    {
      break;
    }

    type metadata accessor for ImageViewModel();
    v16 = swift_dynamicCastClass();
    if (v16)
    {
      v17 = v16;

      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_58:
  __break(1u);
LABEL_59:
  __break(1u);
LABEL_60:
  __break(1u);
LABEL_61:
  __break(1u);
LABEL_62:
  __break(1u);
}

uint64_t sub_1E3E5D3E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v91 = a4;
  v99 = a3;
  v100 = a2;
  v98 = a5;
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29238, &unk_1E42999B0);
  OUTLINED_FUNCTION_0_10();
  v85 = v6;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_44();
  v92 = v8;
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2CDC8, &qword_1E42A8078);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v84 - v10;
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2CDB8, &qword_1E42A8068);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_44();
  v88 = v13;
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28CB8, &unk_1E429B6E0);
  OUTLINED_FUNCTION_0_10();
  v90 = v14;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v84 - v16;
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3A310, &qword_1E42D7008);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v84 - v19;
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3A350, &qword_1E42D70F8);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_44();
  v96 = v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3A358, &qword_1E42D7100);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v84 - v24;
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3A2F0, &qword_1E42D6FF8);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v84 - v27;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3A300, &qword_1E42D7000);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_4_6();
  v32 = (v30 - v31);
  MEMORY[0x1EEE9AC00](v33);
  v36 = &v84 - v35;
  if (a1)
  {
    if (!v100)
    {

      v54 = v92;
      sub_1E3E5DDC4(v53, v92);
      v55 = v85;
      v56 = v89;
      (*(v85 + 16))(v11, v54, v89);
      v57 = swift_storeEnumTagMultiPayload();
      v58 = OUTLINED_FUNCTION_0_21(v57);
      OUTLINED_FUNCTION_6_15(v58);
      v59 = v88;
      sub_1E4201F44();
      sub_1E3743538(v59, v96, &qword_1ECF2CDB8, &qword_1E42A8068);
      swift_storeEnumTagMultiPayload();
      sub_1E3E5EED0();
      sub_1E38ADC9C();
      v60 = v98;
      sub_1E4201F44();

      sub_1E325F6F0(v59, &qword_1ECF2CDB8, &qword_1E42A8068);
      (*(v55 + 8))(v92, v56);
      v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3A2E0, &qword_1E42D6FF0);
      v62 = v60;
      return __swift_storeEnumTagSinglePayload(v62, 0, 1, v61);
    }

    v92 = v34;
    v37 = v99;
    v38 = MEMORY[0x1E69DDCE0];
    if (*(v99 + 16))
    {
      OUTLINED_FUNCTION_8();
      v40 = *(v39 + 152);

      v40(v101, v41);
      v37 = v99;
      if ((v102 & 1) == 0)
      {
        v42 = *&v101[3];
        goto LABEL_12;
      }
    }

    else
    {
    }

    v42 = *(v38 + 24);
LABEL_12:
    if (*(v37 + 24) && (OUTLINED_FUNCTION_8(), (*(v63 + 152))(v103), (v104 & 1) == 0))
    {
      v64 = *&v103[1];
    }

    else
    {
      v64 = *(v38 + 8);
    }

    v68 = v42 + v64;
    *v32 = sub_1E4201B84();
    *(v32 + 1) = v68;
    *(v32 + 16) = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3A368, &qword_1E42D7110);
    sub_1E3E5E21C();
    sub_1E3741EA0(v32, v36, &qword_1ECF3A300, &qword_1E42D7000);
    sub_1E3743538(v36, v25, &qword_1ECF3A300, &qword_1E42D7000);
    OUTLINED_FUNCTION_8_6();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_9_0();
    sub_1E32752B0(v69, &qword_1ECF3A300, &qword_1E42D7000, v70);
    OUTLINED_FUNCTION_1();
    sub_1E32752B0(v71, v72, v73, v74);
    sub_1E4201F44();
    OUTLINED_FUNCTION_15_129();
    swift_storeEnumTagMultiPayload();
    sub_1E3E5EED0();
    sub_1E38ADC9C();
    OUTLINED_FUNCTION_13_143();

    sub_1E325F6F0(v28, &qword_1ECF3A2F0, &qword_1E42D6FF8);
    v50 = v36;
    v51 = &qword_1ECF3A300;
    v52 = &qword_1E42D7000;
LABEL_20:
    sub_1E325F6F0(v50, v51, v52);
    v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3A2E0, &qword_1E42D6FF0);
    v62 = v32;
    return __swift_storeEnumTagSinglePayload(v62, 0, 1, v61);
  }

  v43 = v90;
  if (v100)
  {
    if (!v91)
    {

      sub_1E3C27528(v75, v76);

      OUTLINED_FUNCTION_18();
      v77 = v17;
      sub_1E3F23370();
      v78 = v43;
      v79 = v87;
      (*(v43 + 16))(v11, v77, v87);
      v80 = swift_storeEnumTagMultiPayload();
      v81 = OUTLINED_FUNCTION_0_21(v80);
      OUTLINED_FUNCTION_6_15(v81);
      v82 = v88;
      OUTLINED_FUNCTION_159();
      sub_1E4201F44();
      sub_1E3743538(v82, v96, &qword_1ECF2CDB8, &qword_1E42A8068);
      swift_storeEnumTagMultiPayload();
      sub_1E3E5EED0();
      sub_1E38ADC9C();
      v83 = v98;
      sub_1E4201F44();

      sub_1E325F6F0(v82, &qword_1ECF2CDB8, &qword_1E42A8068);
      (*(v78 + 8))(v77, v79);
      v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3A2E0, &qword_1E42D6FF0);
      v62 = v83;
      return __swift_storeEnumTagSinglePayload(v62, 0, 1, v61);
    }

    *v20 = sub_1E4201D44();
    *(v20 + 1) = 0;
    v20[16] = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3A360, &qword_1E42D7108);
    sub_1E3E5E908();
    v32 = &qword_1ECF3A310;
    sub_1E3743538(v20, v25, &qword_1ECF3A310, &qword_1E42D7008);
    OUTLINED_FUNCTION_8_6();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_9_0();
    sub_1E32752B0(v44, v45, v46, v47);
    OUTLINED_FUNCTION_1();
    sub_1E32752B0(v48, &qword_1ECF3A310, &qword_1E42D7008, v49);
    sub_1E4201F44();
    OUTLINED_FUNCTION_15_129();
    swift_storeEnumTagMultiPayload();
    sub_1E3E5EED0();
    sub_1E38ADC9C();
    OUTLINED_FUNCTION_13_143();

    sub_1E325F6F0(v28, &qword_1ECF3A2F0, &qword_1E42D6FF8);
    v50 = v20;
    v51 = &qword_1ECF3A310;
    v52 = &qword_1E42D7008;
    goto LABEL_20;
  }

  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3A2E0, &qword_1E42D6FF0);
  v66 = v98;

  return __swift_storeEnumTagSinglePayload(v66, 1, 1, v65);
}

uint64_t sub_1E3E5DDC4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(v2 + 16);
  if (v5)
  {
    v6 = (*(*v5 + 248))();
    v8 = v7;
    v9 = (*(*v5 + 352))();
    if (v10)
    {
      v11 = 0;
    }

    else
    {
      v11 = v9;
    }

    if (v8)
    {
      v6 = 0;
    }
  }

  else
  {
    v11 = 0;
    v6 = 0;
  }

  v12 = j__OUTLINED_FUNCTION_51_1();
  v13 = j__OUTLINED_FUNCTION_18();
  v14 = j__OUTLINED_FUNCTION_18();
  v15 = sub_1E3EB9C0C(v6, v11, 0, 0, 0, 1, v12 & 1, 2, v18, 0, 1, 0, 1, 0, 2, v13 & 1, v14 & 1);
  (*(*a1 + 392))(v15);

  v16 = OUTLINED_FUNCTION_18();
  sub_1E37E8BE8(a1, v18, v5, v16 & 1, 0, 0, a2);
  return sub_1E375C31C(v18);
}

void sub_1E3E5DF60()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v3 = v2;
  v4 = sub_1E4201274();
  OUTLINED_FUNCTION_0_10();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v22[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3A340, &qword_1E42D70E8);
  OUTLINED_FUNCTION_0_10();
  v12 = v11;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v22[-1] - v14;
  LOBYTE(v23) = 43;
  OUTLINED_FUNCTION_8();
  (*(v16 + 776))(v22, &v23, &unk_1F5D5DAC8, &off_1F5D5C998);
  if (!v22[3])
  {
    sub_1E329505C(v22);
LABEL_6:
    v20 = 1;
    goto LABEL_7;
  }

  if ((swift_dynamicCast() & 1) == 0 || v23 != 1)
  {
    goto LABEL_6;
  }

  v21 = sub_1E42036E4();
  v23 = v21;
  (*(v6 + 104))(v9, *MEMORY[0x1E697E668], v4);
  OUTLINED_FUNCTION_42_6();
  v17 = swift_allocObject();
  OUTLINED_FUNCTION_16_121(v17);
  sub_1E3D5CA5C(v1, v22);
  v18 = MEMORY[0x1E69815C0];
  v19 = OUTLINED_FUNCTION_51_1();
  sub_1E3D951F8(v9, v19 & 1, sub_1E3E5F250, v17, v18, MEMORY[0x1E6981580]);

  (*(v6 + 8))(v9, v4);

  (*(v12 + 32))(v3, v15, v10);
  v20 = 0;
LABEL_7:
  __swift_storeEnumTagSinglePayload(v3, v20, 1, v10);
  OUTLINED_FUNCTION_25_2();
}

void sub_1E3E5E21C()
{
  OUTLINED_FUNCTION_31_1();
  v83 = v0;
  v2 = v1;
  v4 = v3;
  v80 = v5;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3A370, &qword_1E42D7118);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_44();
  v70 = v7;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3A378, &qword_1E42D7120);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_44();
  v78 = v9;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3A380, &qword_1E42D7128);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_44();
  v69 = v11;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28CB8, &unk_1E429B6E0);
  OUTLINED_FUNCTION_0_10();
  v84 = v12;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_4_6();
  v74 = (v14 - v15);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v69 - v17;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29238, &unk_1E42999B0);
  OUTLINED_FUNCTION_0_10();
  v81 = v19;
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_4_6();
  v73 = (v21 - v22);
  v24 = MEMORY[0x1EEE9AC00](v23);
  v26 = &v69 - v25;
  v27 = *(**v4 + 464);
  v28 = v27(v24);
  if (!v28 || (sub_1E3841D9C(v2, v28), v30 = v29, v32 = v31, v28 = , (v32 & 1) != 0))
  {
    v30 = 0;
  }

  v33 = (v27)(v28);
  if (!v33 || (sub_1E3841D9C(v83, v33), v36 = v35, v38 = v37, v33 = , (v38 & 1) != 0))
  {
    v36 = 0;
  }

  v71 = v18;
  v72 = v26;
  if (v30 >= v36)
  {
    sub_1E3C27528(v33, v34);

    OUTLINED_FUNCTION_18();
    sub_1E3F23370();
    sub_1E3E5DDC4(v2, v26);
    v55 = *(v84 + 16);
    v56 = v74;
    v57 = v18;
    v58 = v82;
    v55(v74, v57, v82);
    v59 = v81;
    v60 = *(v81 + 16);
    v61 = v73;
    v62 = v26;
    v63 = v76;
    v60(v73, v62, v76);
    v64 = v70;
    v55(v70, v56, v58);
    v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3A388, &qword_1E42D7130);
    v60(v64 + *(v65 + 48), v61, v63);
    v66 = *(v59 + 8);
    v66(v61, v63);
    v67 = *(v84 + 8);
    v84 += 8;
    v67(v56, v58);
    sub_1E3743538(v64, v78, &qword_1ECF3A370, &qword_1E42D7118);
    swift_storeEnumTagMultiPayload();
    v68 = MEMORY[0x1E6981F48];
    sub_1E32752B0(&qword_1ECF3A390, &qword_1ECF3A380, &qword_1E42D7128, MEMORY[0x1E6981F48]);
    sub_1E32752B0(&qword_1ECF3A398, &qword_1ECF3A370, &qword_1E42D7118, v68);
    sub_1E4201F44();
    sub_1E325F6F0(v64, &qword_1ECF3A370, &qword_1E42D7118);
    v66(v72, v63);
    v67(v71, v58);
  }

  else
  {
    v39 = v26;
    v40 = sub_1E3E5DDC4(v2, v26);
    sub_1E3C27528(v40, v41);

    OUTLINED_FUNCTION_18();
    v42 = v18;
    sub_1E3F23370();
    v43 = *(v81 + 16);
    v44 = v73;
    v45 = v76;
    v43(v73, v39, v76);
    v46 = v84;
    v47 = *(v84 + 16);
    v48 = v74;
    v49 = v82;
    v47(v74, v42, v82);
    v50 = v69;
    v43(v69, v44, v45);
    v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3A3A0, &qword_1E42D7138);
    v47(v50 + *(v51 + 48), v48, v49);
    v52 = *(v46 + 8);
    v52(v48, v49);
    v53 = *(v81 + 8);
    v53(v44, v45);
    sub_1E3743538(v50, v78, &qword_1ECF3A380, &qword_1E42D7128);
    swift_storeEnumTagMultiPayload();
    v54 = MEMORY[0x1E6981F48];
    sub_1E32752B0(&qword_1ECF3A390, &qword_1ECF3A380, &qword_1E42D7128, MEMORY[0x1E6981F48]);
    sub_1E32752B0(&qword_1ECF3A398, &qword_1ECF3A370, &qword_1E42D7118, v54);
    sub_1E4201F44();
    sub_1E325F6F0(v50, &qword_1ECF3A380, &qword_1E42D7128);
    v52(v71, v82);
    v53(v72, v45);
  }

  OUTLINED_FUNCTION_25_2();
}

void sub_1E3E5E908()
{
  OUTLINED_FUNCTION_31_1();
  v26 = v0;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28CB8, &unk_1E429B6E0);
  OUTLINED_FUNCTION_0_10();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_4_6();
  v7 = (v5 - v6);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v25 - v9;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v25 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v25 - v15;
  sub_1E3C27528(v17, v18);

  OUTLINED_FUNCTION_18();
  sub_1E3F23370();
  sub_1E3C27528(v19, v20);

  OUTLINED_FUNCTION_18();
  sub_1E3F23370();
  v21 = *(v3 + 16);
  v21(v10, v16, v1);
  v21(v7, v13, v1);
  v22 = v26;
  v21(v26, v10, v1);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3A3A8, &qword_1E42D7140);
  v21(&v22[*(v23 + 48)], v7, v1);
  v24 = *(v3 + 8);
  v24(v13, v1);
  v24(v16, v1);
  v24(v7, v1);
  v24(v10, v1);
  OUTLINED_FUNCTION_25_2();
}

unint64_t sub_1E3E5EB98()
{
  result = qword_1ECF3A290;
  if (!qword_1ECF3A290)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3A288, &qword_1E42D6FC8);
    sub_1E3E5EC24();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3A290);
  }

  return result;
}

unint64_t sub_1E3E5EC24()
{
  result = qword_1ECF3A298;
  if (!qword_1ECF3A298)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3A2A0, &qword_1E42D6FD0);
    sub_1E3E5ECB0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3A298);
  }

  return result;
}

unint64_t sub_1E3E5ECB0()
{
  result = qword_1ECF3A2A8;
  if (!qword_1ECF3A2A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3A2B0, &qword_1E42D6FD8);
    sub_1E3E5ED3C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3A2A8);
  }

  return result;
}

unint64_t sub_1E3E5ED3C()
{
  result = qword_1ECF3A2B8;
  if (!qword_1ECF3A2B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3A2C0, &qword_1E42D6FE0);
    sub_1E3E5EDC0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3A2B8);
  }

  return result;
}

unint64_t sub_1E3E5EDC0()
{
  result = qword_1ECF3A2C8;
  if (!qword_1ECF3A2C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3A2D0, &qword_1E42D6FE8);
    sub_1E3E5EE44();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3A2C8);
  }

  return result;
}

unint64_t sub_1E3E5EE44()
{
  result = qword_1ECF3A2D8;
  if (!qword_1ECF3A2D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3A2E0, &qword_1E42D6FF0);
    sub_1E3E5EED0();
    sub_1E38ADC9C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3A2D8);
  }

  return result;
}

unint64_t sub_1E3E5EED0()
{
  result = qword_1ECF3A2E8;
  if (!qword_1ECF3A2E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3A2F0, &qword_1E42D6FF8);
    sub_1E32752B0(&qword_1ECF3A2F8, &qword_1ECF3A300, &qword_1E42D7000, MEMORY[0x1E69817F8]);
    sub_1E32752B0(&qword_1ECF3A308, &qword_1ECF3A310, &qword_1E42D7008, MEMORY[0x1E6981870]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3A2E8);
  }

  return result;
}

unint64_t sub_1E3E5EFB4()
{
  result = qword_1ECF3A328;
  if (!qword_1ECF3A328)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3A278, &qword_1E42D6FB8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3A268, &qword_1E42D6FA8);
    sub_1E32752B0(&qword_1ECF3A318, &qword_1ECF3A268, &qword_1E42D6FA8, MEMORY[0x1E697D680]);
    swift_getOpaqueTypeConformance2();
    sub_1E32752B0(&qword_1EE289230, &qword_1ECF3A320, &qword_1E42D7010, MEMORY[0x1E697F940]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3A328);
  }

  return result;
}

unint64_t sub_1E3E5F108()
{
  result = qword_1ECF3A330;
  if (!qword_1ECF3A330)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3A338, &qword_1E42D70E0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3A278, &qword_1E42D6FB8);
    v1 = sub_1E3E5EFB4();
    sub_1E32822E0(v1, v2, v3);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3A330);
  }

  return result;
}

uint64_t objectdestroyTm_45()
{

  OUTLINED_FUNCTION_42_6();

  return swift_deallocObject();
}

double sub_1E3E5F250(double a1, double a2, double a3, double a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3A348, &qword_1E42D70F0);
  sub_1E4203904();
  return result;
}

id sub_1E3E5F2C0()
{
  v1 = [v0 colorWithAlphaComponent_];

  return v1;
}

id sub_1E3E5F2F8(void *a1, void *a2)
{
  OUTLINED_FUNCTION_2_4();
  v4 = swift_allocObject();
  *(v4 + 16) = a2;
  *(v4 + 24) = a1;
  v5 = objc_allocWithZone(MEMORY[0x1E69DC888]);
  v6 = a2;
  v7 = a1;
  return OUTLINED_FUNCTION_18_106();
}

id sub_1E3E5F368(void *a1, void *a2, void *a3)
{
  if ([a1 userInterfaceStyle] == 2)
  {
    v5 = a2;
  }

  else
  {
    v5 = a3;
  }

  return v5;
}

id sub_1E3E5F3B8(void *a1)
{
  v1 = [a1 colorWithAlphaComponent_];

  return v1;
}

id sub_1E3E5F3F0()
{
  v1 = objc_opt_self();
  v2 = [v1 traitCollectionWithUserInterfaceStyle_];
  v3 = [v0 resolvedColorWithTraitCollection_];

  v4 = [v1 traitCollectionWithUserInterfaceStyle_];
  v5 = [v0 resolvedColorWithTraitCollection_];

  return v3;
}

void sub_1E3E5F4B0()
{
  if (qword_1EE28C680 != -1)
  {
    OUTLINED_FUNCTION_11_145(&qword_1EE28C680);
  }

  v1 = qword_1EE28C688;
  OUTLINED_FUNCTION_17_118();
  if (!v2)
  {
    OUTLINED_FUNCTION_10_140(&qword_1EE28C6B0);
  }

  v3 = qword_1EE28C6B8;
  OUTLINED_FUNCTION_2_4();
  v4 = swift_allocObject();
  OUTLINED_FUNCTION_16_122(v4);
  v5 = objc_allocWithZone(MEMORY[0x1E69DC888]);
  v6 = v3;
  v7 = v0;
  v8 = v6;
  v9 = OUTLINED_FUNCTION_1_236();

  qword_1EE2AA768 = v9;
}

uint64_t *sub_1E3E5F58C()
{
  if (qword_1EE28D528 != -1)
  {
    swift_once();
  }

  return &qword_1EE2AA768;
}

void sub_1E3E5F5DC()
{
  if (qword_1EE28C690 != -1)
  {
    OUTLINED_FUNCTION_7_188(&qword_1EE28C690);
  }

  v1 = qword_1EE28C698;
  OUTLINED_FUNCTION_17_118();
  if (!v2)
  {
    OUTLINED_FUNCTION_6_177(&qword_1EE28C6C0);
  }

  v3 = qword_1EE28C6C8;
  OUTLINED_FUNCTION_2_4();
  v4 = swift_allocObject();
  OUTLINED_FUNCTION_16_122(v4);
  v5 = objc_allocWithZone(MEMORY[0x1E69DC888]);
  v6 = v3;
  v7 = v0;
  v8 = v6;
  v9 = OUTLINED_FUNCTION_1_236();

  qword_1EE2AA760 = v9;
}

uint64_t *sub_1E3E5F6B8()
{
  if (qword_1EE28D520 != -1)
  {
    swift_once();
  }

  return &qword_1EE2AA760;
}

void sub_1E3E5F708()
{
  if (qword_1EE28C6A0 != -1)
  {
    OUTLINED_FUNCTION_3_202(&qword_1EE28C6A0);
  }

  v1 = qword_1EE28C6A8;
  OUTLINED_FUNCTION_17_118();
  if (!v2)
  {
    OUTLINED_FUNCTION_2_202(&qword_1EE28C6D0);
  }

  v3 = qword_1EE28C6D8;
  OUTLINED_FUNCTION_2_4();
  v4 = swift_allocObject();
  OUTLINED_FUNCTION_16_122(v4);
  v5 = objc_allocWithZone(MEMORY[0x1E69DC888]);
  v6 = v3;
  v7 = v0;
  v8 = v6;
  v9 = OUTLINED_FUNCTION_1_236();

  qword_1EE2AA758 = v9;
}

uint64_t *sub_1E3E5F7E4()
{
  if (qword_1EE28D518 != -1)
  {
    swift_once();
  }

  return &qword_1EE2AA758;
}

void sub_1E3E5F834()
{
  sub_1E3755B54();
  v0 = sub_1E4206F24();
  v1 = sub_1E4206F24();
  OUTLINED_FUNCTION_2_4();
  v2 = swift_allocObject();
  *(v2 + 16) = v1;
  *(v2 + 24) = v0;
  v3 = objc_allocWithZone(MEMORY[0x1E69DC888]);
  v4 = v1;
  v5 = v0;
  v6 = OUTLINED_FUNCTION_18_106();

  qword_1EE2AA6F8 = v6;
}

uint64_t *sub_1E3E5F90C()
{
  if (qword_1EE28D4B8 != -1)
  {
    swift_once();
  }

  return &qword_1EE2AA6F8;
}

void sub_1E3E5F95C()
{
  sub_1E3755B54();
  OUTLINED_FUNCTION_11_12();
  v0 = sub_1E4206F24();
  v1 = [v0 colorWithAlphaComponent_];

  OUTLINED_FUNCTION_11_12();
  v2 = sub_1E4206F24();
  v3 = [v2 colorWithAlphaComponent_];

  OUTLINED_FUNCTION_2_4();
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  *(v4 + 24) = v1;
  v5 = objc_allocWithZone(MEMORY[0x1E69DC888]);
  v6 = v3;
  v7 = v1;
  v8 = OUTLINED_FUNCTION_20_100();

  qword_1EE2AA6B8 = v8;
}

uint64_t *sub_1E3E5FA50()
{
  if (qword_1EE28D488 != -1)
  {
    swift_once();
  }

  return &qword_1EE2AA6B8;
}

void *sub_1E3E5FACC()
{
  if (qword_1EE28C678 != -1)
  {
    OUTLINED_FUNCTION_13_144(&qword_1EE28C678);
  }

  return &qword_1EE2AA6C8;
}

void **sub_1E3E5FB0C()
{
  if (qword_1EE28D498 != -1)
  {
    swift_once();
  }

  return &qword_1EE2AA6D0;
}

uint64_t *sub_1E3E5FB88()
{
  if (qword_1EE28D4A8 != -1)
  {
    swift_once();
  }

  return &qword_1EE2AA6E0;
}

void sub_1E3E5FC08(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v8 = objc_opt_self();
  v9 = [v8 blackColor];
  v10 = [v9 colorWithAlphaComponent_];

  v11 = [v8 whiteColor];
  v12 = [v11 colorWithAlphaComponent_];

  OUTLINED_FUNCTION_2_4();
  v13 = swift_allocObject();
  *(v13 + 16) = v12;
  *(v13 + 24) = v10;
  v14 = objc_allocWithZone(MEMORY[0x1E69DC888]);
  v15 = v12;
  v16 = v10;
  v17 = sub_1E3E61218(a4, v13);

  *a5 = v17;
}

uint64_t *sub_1E3E5FD24()
{
  if (qword_1EE28D480 != -1)
  {
    swift_once();
  }

  return &qword_1EE2AA6B0;
}

void *sub_1E3E5FD88()
{
  if (qword_1EE28D500 != -1)
  {
    swift_once();
  }

  return &qword_1EE2AA740;
}

void *sub_1E3E5FDEC()
{
  if (qword_1EE28D4E0 != -1)
  {
    swift_once();
  }

  return &qword_1EE2AA720;
}

uint64_t sub_1E3E5FE3C()
{
  sub_1E3755B54();
  OUTLINED_FUNCTION_11_12();
  result = sub_1E4206F24();
  qword_1EE2AA700 = result;
  return result;
}

uint64_t *sub_1E3E5FE74()
{
  if (qword_1EE28D4C0 != -1)
  {
    swift_once();
  }

  return &qword_1EE2AA700;
}

void sub_1E3E5FEC4()
{
  if (qword_1EE28C6B0 != -1)
  {
    OUTLINED_FUNCTION_10_140(&qword_1EE28C6B0);
  }

  v1 = qword_1EE28C6B8;
  OUTLINED_FUNCTION_17_118();
  if (!v2)
  {
    OUTLINED_FUNCTION_11_145(&qword_1EE28C680);
  }

  v3 = qword_1EE28C688;
  OUTLINED_FUNCTION_2_4();
  v4 = swift_allocObject();
  OUTLINED_FUNCTION_16_122(v4);
  v5 = objc_allocWithZone(MEMORY[0x1E69DC888]);
  v6 = v3;
  v7 = v0;
  v8 = v6;
  v9 = OUTLINED_FUNCTION_1_236();

  qword_1ECF716C0 = v9;
}

uint64_t *sub_1E3E5FFA0()
{
  if (qword_1ECF65900 != -1)
  {
    swift_once();
  }

  return &qword_1ECF716C0;
}

void sub_1E3E5FFF0()
{
  if (qword_1EE28C6C0 != -1)
  {
    OUTLINED_FUNCTION_6_177(&qword_1EE28C6C0);
  }

  v1 = qword_1EE28C6C8;
  OUTLINED_FUNCTION_17_118();
  if (!v2)
  {
    OUTLINED_FUNCTION_7_188(&qword_1EE28C690);
  }

  v3 = qword_1EE28C698;
  OUTLINED_FUNCTION_2_4();
  v4 = swift_allocObject();
  OUTLINED_FUNCTION_16_122(v4);
  v5 = objc_allocWithZone(MEMORY[0x1E69DC888]);
  v6 = v3;
  v7 = v0;
  v8 = v6;
  v9 = OUTLINED_FUNCTION_1_236();

  qword_1ECF716C8 = v9;
}

uint64_t *sub_1E3E600CC()
{
  if (qword_1ECF65908 != -1)
  {
    swift_once();
  }

  return &qword_1ECF716C8;
}

void *sub_1E3E6011C()
{
  if (_MergedGlobals_246 != -1)
  {
    OUTLINED_FUNCTION_9_145(&_MergedGlobals_246);
  }

  return &qword_1EE2AA6E8;
}

void *sub_1E3E60170()
{
  if (qword_1EE28D510 != -1)
  {
    swift_once();
  }

  return &qword_1EE2AA750;
}

void *sub_1E3E601D4()
{
  if (qword_1ECF65910 != -1)
  {
    swift_once();
  }

  return &qword_1ECF716D0;
}

void *sub_1E3E60238()
{
  if (qword_1ECF65918 != -1)
  {
    swift_once();
  }

  return &qword_1ECF716D8;
}

void *sub_1E3E6029C()
{
  if (qword_1ECF65920 != -1)
  {
    swift_once();
  }

  return &qword_1ECF716E0;
}

void *sub_1E3E60300()
{
  if (qword_1ECF65928 != -1)
  {
    swift_once();
  }

  return &qword_1ECF716E8;
}

uint64_t *sub_1E3E60364()
{
  if (qword_1EE28D4F0 != -1)
  {
    OUTLINED_FUNCTION_5_188(&qword_1EE28D4F0);
  }

  return &qword_1EE2AA730;
}

void *sub_1E3E603B8()
{
  if (qword_1EE28D4D0 != -1)
  {
    swift_once();
  }

  return &qword_1EE2AA710;
}

void *sub_1E3E6041C()
{
  if (qword_1ECF65930 != -1)
  {
    swift_once();
  }

  return &qword_1ECF716F0;
}

void *sub_1E3E60480()
{
  if (qword_1EE28D4E8 != -1)
  {
    swift_once();
  }

  return &qword_1EE2AA728;
}

void *sub_1E3E604E4()
{
  if (qword_1EE28D4F8 != -1)
  {
    swift_once();
  }

  return &qword_1EE2AA738;
}

void *sub_1E3E60548()
{
  if (qword_1ECF65938 != -1)
  {
    swift_once();
  }

  return &qword_1ECF716F8;
}

void *sub_1E3E605D4()
{
  if (qword_1EE28D4A0 != -1)
  {
    swift_once();
  }

  return &qword_1EE2AA6D8;
}

void *sub_1E3E60638()
{
  if (qword_1ECF65940 != -1)
  {
    swift_once();
  }

  return &qword_1ECF71700;
}

void *sub_1E3E6069C()
{
  if (qword_1EE28D490 != -1)
  {
    swift_once();
  }

  return &qword_1EE2AA6C0;
}

uint64_t *sub_1E3E60700()
{
  if (qword_1EE28D530 != -1)
  {
    OUTLINED_FUNCTION_14_139(&qword_1EE28D530);
  }

  return &qword_1EE2AA770;
}

void sub_1E3E60740()
{
  v1 = [objc_allocWithZone(OUTLINED_FUNCTION_21_92()) initWithRed:0.0 green:0.380392157 blue:0.8 alpha:1.0];
  v2 = [objc_allocWithZone(*(v0 + 2184)) initWithRed:0.152941176 green:0.576470588 blue:1.0 alpha:1.0];
  OUTLINED_FUNCTION_2_4();
  v3 = swift_allocObject();
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  v4 = objc_allocWithZone(*(v0 + 2184));
  v5 = v2;
  v6 = v1;
  v7 = OUTLINED_FUNCTION_18_106();

  qword_1EE2AA708 = v7;
}

uint64_t *sub_1E3E60824()
{
  if (qword_1EE28D4C8 != -1)
  {
    swift_once();
  }

  return &qword_1EE2AA708;
}

void sub_1E3E60874()
{
  if (qword_1EE28D530 != -1)
  {
    OUTLINED_FUNCTION_14_139(&qword_1EE28D530);
  }

  v0 = qword_1EE2AA770;
  v1 = [v0 colorWithAlphaComponent_];

  qword_1EE2AA6F0 = v1;
}

uint64_t *sub_1E3E608EC()
{
  if (qword_1EE28D4B0 != -1)
  {
    swift_once();
  }

  return &qword_1EE2AA6F0;
}

id sub_1E3E6093C()
{
  result = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithWhite:1.0 alpha:0.1];
  qword_1EE2AA748 = result;
  return result;
}

uint64_t *sub_1E3E6097C()
{
  if (qword_1EE28D508 != -1)
  {
    swift_once();
  }

  return &qword_1EE2AA748;
}

id sub_1E3E609CC()
{
  result = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:0.4 green:0.4 blue:0.4 alpha:1.0];
  qword_1EE2AA718 = result;
  return result;
}

uint64_t *sub_1E3E60A14()
{
  if (qword_1EE28D4D8 != -1)
  {
    swift_once();
  }

  return &qword_1EE2AA718;
}

void *sub_1E3E60A78()
{
  if (qword_1ECF65948 != -1)
  {
    swift_once();
  }

  return &qword_1ECF71708;
}

double sub_1E3E60AC8()
{
  v0 = [objc_opt_self() mainScreen];
  [v0 vui_nativeScale];
  v2 = v1;

  result = 1.0 / v2;
  *&qword_1EE2AB220 = 1.0 / v2;
  return result;
}

uint64_t *sub_1E3E60B34()
{
  if (qword_1EE2A6AD8 != -1)
  {
    OUTLINED_FUNCTION_4_204(&qword_1EE2A6AD8);
  }

  return &qword_1EE2AB220;
}

double sub_1E3E60B74()
{
  if (qword_1EE2A6AD8 != -1)
  {
    OUTLINED_FUNCTION_4_204(&qword_1EE2A6AD8);
  }

  result = *&qword_1EE2AB220;
  qword_1EE2AB230 = qword_1EE2AB220;
  return result;
}

uint64_t *sub_1E3E60BBC()
{
  if (qword_1EE2A6AE8 != -1)
  {
    swift_once();
  }

  return &qword_1EE2AB230;
}

void sub_1E3E60C0C()
{
  v0 = [objc_opt_self() blackColor];
  v1 = [v0 colorWithAlphaComponent_];

  if (qword_1EE28D4F0 != -1)
  {
    OUTLINED_FUNCTION_5_188(&qword_1EE28D4F0);
  }

  v2 = qword_1EE2AA730;
  OUTLINED_FUNCTION_2_4();
  v3 = swift_allocObject();
  OUTLINED_FUNCTION_16_122(v3);
  v4 = objc_allocWithZone(MEMORY[0x1E69DC888]);
  v5 = v2;
  v6 = v1;
  v7 = OUTLINED_FUNCTION_1_236();

  qword_1EE2AB228 = v7;
}

uint64_t *sub_1E3E60CFC()
{
  if (qword_1EE2A6AE0 != -1)
  {
    swift_once();
  }

  return &qword_1EE2AB228;
}

void sub_1E3E60D4C()
{
  OUTLINED_FUNCTION_21_92();
  v1 = objc_opt_self();
  v2 = [v1 blackColor];
  v3 = [v2 colorWithAlphaComponent_];

  v4 = [v1 whiteColor];
  v5 = [v4 colorWithAlphaComponent_];

  OUTLINED_FUNCTION_2_4();
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  *(v6 + 24) = v3;
  v7 = objc_allocWithZone(*(v0 + 2184));
  v8 = v5;
  v9 = v3;
  v10 = OUTLINED_FUNCTION_20_100();

  qword_1ECF71710 = v10;
}

uint64_t *sub_1E3E60E58()
{
  if (qword_1ECF65950 != -1)
  {
    swift_once();
  }

  return &qword_1ECF71710;
}

id sub_1E3E60ED4(uint64_t a1, void *a2, void **a3, void **a4, uint64_t a5)
{
  if (*a2 != -1)
  {
    swift_once();
  }

  v7 = *a3;
  *a4 = *a3;

  return v7;
}

void **sub_1E3E60F2C()
{
  if (qword_1EE2A6AF0 != -1)
  {
    swift_once();
  }

  return &qword_1EE2AB238;
}

void sub_1E3E60F7C()
{
  sub_1E3755B54();
  sub_1E39F9114(0x38313831383123, 0xE700000000000000);
  if (!v0)
  {
    v0 = [objc_opt_self() blackColor];
  }

  qword_1ECF71718 = v0;
}

uint64_t *sub_1E3E60FE8()
{
  if (qword_1ECF65958 != -1)
  {
    swift_once();
  }

  return &qword_1ECF71718;
}

void sub_1E3E61038()
{
  sub_1E39537A8();
  qword_1EE2AB200 = v0;
  *algn_1EE2AB208 = v1;
  qword_1EE2AB210 = v2;
  unk_1EE2AB218 = v3;
}

uint64_t *sub_1E3E61064()
{
  if (qword_1EE2A6AD0 != -1)
  {
    OUTLINED_FUNCTION_12_136(&qword_1EE2A6AD0);
  }

  return &qword_1EE2AB200;
}

id sub_1E3E610A4()
{
  result = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithWhite:0.0 alpha:1.0];
  qword_1EE28C688 = result;
  return result;
}

id sub_1E3E610E0()
{
  result = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithWhite:0.0 alpha:0.6];
  qword_1EE28C698 = result;
  return result;
}

id sub_1E3E61120()
{
  result = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithWhite:0.0 alpha:0.4];
  qword_1EE28C6A8 = result;
  return result;
}

id sub_1E3E61160()
{
  result = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithWhite:1.0 alpha:1.0];
  qword_1EE28C6B8 = result;
  return result;
}

id sub_1E3E6119C()
{
  result = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithWhite:1.0 alpha:0.5];
  qword_1EE28C6C8 = result;
  return result;
}

id sub_1E3E611D8()
{
  result = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithWhite:1.0 alpha:0.3];
  qword_1EE28C6D8 = result;
  return result;
}

id sub_1E3E61218(uint64_t a1, uint64_t a2)
{
  v6[4] = a1;
  v6[5] = a2;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 1107296256;
  v6[2] = sub_1E3A01924;
  v6[3] = &block_descriptor_125;
  v3 = _Block_copy(v6);
  v4 = [v2 initWithDynamicProvider_];
  _Block_release(v3);

  return v4;
}

uint64_t sub_1E3E612D0()
{
  if (*(v0 + 112))
  {
    v1 = *(v0 + 112);
  }

  else
  {
    v2 = type metadata accessor for ProgressLayout();
    v1 = sub_1E3FB3220(v2);
    *(v0 + 112) = v1;
  }

  return v1;
}

uint64_t sub_1E3E6136C()
{
  *(v0 + 104) = 0;
  *(v0 + 112) = 0;
  v1 = sub_1E3C2F9A0();

  sub_1E374E9C4();
  v2 = *sub_1E374E9C4();
  (*(v2 + 312))(0x404E000000000000, 0);

  v3 = *(**(v1 + 104) + 208);

  v3(0x404E000000000000, 0);

  OUTLINED_FUNCTION_36();
  v5 = *(v4 + 1808);

  v5(1);

  OUTLINED_FUNCTION_36();
  v7 = *(v6 + 440);

  v7(0x3FF0000000000000, 0);

  v8 = *(v1 + 104);

  sub_1E39537A8();
  *&v22 = v9;
  *(&v22 + 1) = v10;
  *&v23 = v11;
  *(&v23 + 1) = v12;
  v24 = 0;
  (*(*v8 + 560))(&v22);

  v13 = sub_1E3E612D0();
  __asm { FMOV            V1.2D, #5.0 }

  v22 = xmmword_1E42971B0;
  v23 = _Q1;
  v24 = 0;
  (*(*v13 + 160))(&v22);

  sub_1E3C37CBC(v19, 39);

  sub_1E3C37CBC(v20, 115);

  return v1;
}

void sub_1E3E615F0(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v85 = a2;
  v89 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3A3B0, &qword_1E42D7180);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x1EEE9AC00](v6);
  v83 = &v79 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3A3B8, &qword_1E42D7188);
  MEMORY[0x1EEE9AC00](v8 - 8);
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x1EEE9AC00](v9);
  v87 = &v79 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29238, &unk_1E42999B0);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v79 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29938, &unk_1E429C3F0);
  MEMORY[0x1EEE9AC00](v15 - 8);
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v79 - v17;
  OUTLINED_FUNCTION_36();
  v20 = (*(v19 + 464))();
  v91 = v4;
  v90 = v18;
  if (v20)
  {
    v21 = v20;
    v79 = v14;
    v80 = v12;
    v81 = v11;
    v82 = a1;
    v22 = sub_1E32AE9B0(v20);
    for (i = 0; ; ++i)
    {
      if (v22 == i)
      {

        OUTLINED_FUNCTION_201();
        v18 = v90;
        v11 = v81;
        goto LABEL_19;
      }

      if ((v21 & 0xC000000000000001) != 0)
      {
        v25 = MEMORY[0x1E6911E60](i, v21);
        v24 = v25;
      }

      else
      {
        if (i >= *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_42;
        }

        v24 = *(v21 + 8 * i + 32);
      }

      if (__OFADD__(i, 1))
      {
        break;
      }

      LOWORD(v98) = *(v24 + 98);
      v101 = 39;
      sub_1E3742F1C(v25, v26, v27);
      sub_1E4206254();
      sub_1E4206254();
      v4 = v94;
      if (v92[0] == v93 && v92[1] == v94)
      {

LABEL_18:

        sub_1E3EB9BB4(v92);
        v31 = sub_1E374E9C4();
        v32 = OUTLINED_FUNCTION_18();
        v33 = v79;
        sub_1E37E8BE8(v24, v92, v31, v32 & 1, 0, 0, v79);

        sub_1E375C31C(v92);
        v18 = v90;
        v34 = v33;
        v11 = v81;
        (*(v80 + 32))(v90, v34, v81);
        OUTLINED_FUNCTION_201();
        goto LABEL_19;
      }

      v29 = sub_1E42079A4();

      if (v29)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
  }

  else
  {
    v30 = 1;
LABEL_19:
    v35 = 1;
    __swift_storeEnumTagSinglePayload(v18, v30, 1, v11);
    OUTLINED_FUNCTION_36();
    v37 = (*(v36 + 464))();
    if (v37)
    {
      v38 = v37;
      v39 = sub_1E32AE9B0(v37);
      for (j = 0; ; ++j)
      {
        if (v39 == j)
        {

          v35 = 1;
          OUTLINED_FUNCTION_201();
          v47 = v87;
          v18 = v90;
          goto LABEL_40;
        }

        if ((v38 & 0xC000000000000001) != 0)
        {
          v42 = MEMORY[0x1E6911E60](j, v38);
          v41 = v42;
        }

        else
        {
          if (j >= *((v38 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_44;
          }

          v41 = *(v38 + 8 * j + 32);
        }

        if (__OFADD__(j, 1))
        {
          goto LABEL_43;
        }

        v101 = *(v41 + 98);
        v100 = 115;
        sub_1E3742F1C(v42, v43, v44);
        sub_1E4206254();
        sub_1E4206254();
        v4 = v99;
        if (v93 == v98 && v94 == v99)
        {
          break;
        }

        v46 = sub_1E42079A4();

        if (v46)
        {
          goto LABEL_36;
        }
      }

LABEL_36:

      v49 = sub_1E39295EC(v48);
      v50 = sub_1E3E612D0();
      (*(*v50 + 152))(&v93);
      v51 = v93;
      v52 = v94;
      v53 = v95;
      v54 = v96;

      if (v97)
      {
        v59 = OUTLINED_FUNCTION_5_8();
      }

      else
      {
        v55.n128_u64[0] = v51;
        v56.n128_u64[0] = v52;
        v57.n128_u64[0] = v53;
        v58.n128_u64[0] = v54;
        v59 = j_nullsub_1(v55, v56, v57, v58);
      }

      v63 = v59;
      v64 = v60;
      v65 = v61;
      v66 = v62;
      OUTLINED_FUNCTION_201();
      v18 = v90;
      v67 = sub_1E4202734();

      KeyPath = swift_getKeyPath();
      v69 = v84;
      v70 = (v84 + *(v4 + 36));
      v71 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF291E0, &qword_1E42AE9A0) + 28);
      v72 = *MEMORY[0x1E697DBA8];
      sub_1E4200B44();
      OUTLINED_FUNCTION_2();
      (*(v73 + 104))(v70 + v71, v72);
      *v70 = KeyPath;
      *v69 = v49;
      *(v69 + 8) = v67;
      *(v69 + 16) = v63;
      *(v69 + 24) = v64;
      *(v69 + 32) = v65;
      *(v69 + 40) = v66;
      *(v69 + 48) = 0;
      v74 = v83;
      sub_1E3E61ED0(v69, v83);
      v47 = v87;
      sub_1E3E61ED0(v74, v87);
      v35 = 0;
    }

    else
    {
      v47 = v87;
    }

LABEL_40:
    __swift_storeEnumTagSinglePayload(v47, v35, 1, v4);
    v75 = v86;
    sub_1E32D7CE4(v18, v86);
    v76 = v88;
    sub_1E3E61DF8(v47, v88);
    v77 = v89;
    sub_1E32D7CE4(v75, v89);
    v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3A3C0, &qword_1E42D7190);
    sub_1E3E61DF8(v76, v77 + *(v78 + 48));
    sub_1E3E61E68(v47);
    sub_1E32D7D4C(v18);
    sub_1E3E61E68(v76);
    sub_1E32D7D4C(v75);
  }
}

uint64_t sub_1E3E61DF8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3A3B8, &qword_1E42D7188);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E3E61E68(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3A3B8, &qword_1E42D7188);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1E3E61ED0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3A3B0, &qword_1E42D7180);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1E3E61F98()
{
  result = qword_1ECF3A3C8;
  if (!qword_1ECF3A3C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3A3D0, &qword_1E42D72A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3A3C8);
  }

  return result;
}

uint64_t sub_1E3E61FFC(uint64_t a1)
{
  v2 = *(*a1 + 1640);

  v2(v3);

  return a1;
}

uint64_t sub_1E3E62060(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3A3D8, &qword_1E42D72A8);
  v1 = sub_1E32752B0(&qword_1ECF3A3E0, &qword_1ECF3A3D8, &qword_1E42D72A8, MEMORY[0x1E69817F8]);
  sub_1E3E62294(v1, v2, v3);

  return sub_1E4203844();
}

void sub_1E3E6213C(uint64_t a2@<X8>)
{
  v4 = sub_1E4201B84();
  v15 = (*(*v2 + 1208))();
  sub_1E32822E0(v15, v5, v6);
  v7 = sub_1E4202C44();
  v9 = v8;
  v11 = v10;
  v13 = v12;
  KeyPath = swift_getKeyPath();
  sub_1E37E6F1C(v7, v9, v11 & 1);

  sub_1E37434B8(v7, v9, v11 & 1);

  *a2 = v4;
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  *(a2 + 24) = v7;
  *(a2 + 32) = v9;
  *(a2 + 40) = v11 & 1;
  *(a2 + 48) = v13;
  *(a2 + 56) = KeyPath;
  *(a2 + 64) = 0;
  *(a2 + 72) = 0;
  *(a2 + 80) = 0;
}

void sub_1E3E62264(void *a1@<X8>)
{

  sub_1E3A0A6B8(v2);
  *a1 = v3;
  a1[1] = v4;
}

unint64_t sub_1E3E62294(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECF3A3E8;
  if (!qword_1ECF3A3E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3A3E8);
  }

  return result;
}

uint64_t sub_1E3E6231C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1E4201934();
  *a1 = result;
  return result;
}

void *sub_1E3E623A4()
{
  type metadata accessor for TextLayout();
  v0[13] = sub_1E383BCC0();
  v0[14] = sub_1E383BCC0();
  type metadata accessor for DescriptionTemplateLayout();
  v0[15] = sub_1E3D4F8C4();
  type metadata accessor for CanonicalFooterLayout();
  v0[16] = sub_1E3DE9A08(2);
  v1 = sub_1E3C2F9A0();

  (*(v2 + 800))(5);
  v3 = sub_1E3755B54();
  v4 = objc_opt_self();
  v5 = [v4 systemGroupedBackgroundColor];
  v6 = [v4 secondarySystemGroupedBackgroundColor];
  v7 = sub_1E3E5F2F8(v5, v6);

  OUTLINED_FUNCTION_9_2();
  (*(v8 + 752))(v7);
  __asm { FMOV            V0.2D, #24.0 }

  v266 = xmmword_1E42D7370;
  v267 = xmmword_1E42D7380;
  v268 = 0;
  v262 = 0x4024000000000000;
  v263 = _Q0;
  v264 = 0x4038000000000000;
  v265 = 0;
  v258 = xmmword_1E42CDF90;
  v259 = _Q0;
  v260 = 0;
  type metadata accessor for UIEdgeInsets();
  v15 = v14;
  sub_1E3C2FC98();
  OUTLINED_FUNCTION_33_13();
  OUTLINED_FUNCTION_13_19();
  v24 = OUTLINED_FUNCTION_9_146(v16, v17, v18, v19, v20, v21, v22, v23, v195, v204, v213, v222, v233, v234, v235, v236, v237, v238, v239, v240, v241, v242, v243, v244, v245, *(&v245 + 1), v246, *(&v246 + 1), v247, v248, v249, *(&v249 + 1), v250, *(&v250 + 1), v251, v252, 0);
  sub_1E3C2FCB8(v24, v25, v26, &v266, &v262, &v258, v15, v27);
  memcpy(__dst, __src, 0xE9uLL);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_9_2();
  v36 = OUTLINED_FUNCTION_28_1(v28, v29, v30, v31, v32, v33, v34, v35, v196, v205, v214, v223, v233, v234, v235, v236, v237, v238, v239, v240, v241, v242, v243, v244, v245, *(&v245 + 1), v246, *(&v246 + 1), v247, v248, v249, *(&v249 + 1), v250, *(&v250 + 1), v251, v252, __dst[0]);
  v37(v36, 1);
  v38 = *sub_1E3E5FD88();
  v39 = (*v1 + 1720);
  v40 = *v39;
  v41 = v38;
  v40();
  v42 = v40;
  sub_1E3952C58();
  *&v266 = v43;
  *(&v266 + 1) = v44;
  *&v267 = v45;
  *(&v267 + 1) = v46;
  v268 = 0;
  OUTLINED_FUNCTION_8();
  (*(v47 + 160))(&v266);

  (v40)(v48);
  v49 = v39;
  OUTLINED_FUNCTION_2_1();
  v51 = *(v50 + 680);
  v224 = v41;
  v51(v41);

  (v42)(v52);
  OUTLINED_FUNCTION_2_1();
  (*(v53 + 1792))(7);

  (v42)(v54);
  LOBYTE(__dst[0]) = 10;
  LOBYTE(v262) = 11;
  LOBYTE(v258) = 11;
  LOBYTE(v257[0]) = 7;
  sub_1E3C3DE00();
  LOBYTE(v255[0]) = v256;
  v55 = sub_1E3C3DE00();
  LOBYTE(v249) = v254;
  v63 = OUTLINED_FUNCTION_2_203(v55, v56, v57, v58, v59, v60, v61, v62, v49, v42, v41, v224, v233, v234, v235, v236, v237, v238, v239, v240, v241, v242, v243, v244, v245, *(&v245 + 1), v246, *(&v246 + 1), v247, v248, v249, *(&v249 + 1), v250, *(&v250 + 1), v251, v252, __dst[0]);
  sub_1E3C2FCB8(v63, v64, v65, v257, v255, &v249, &qword_1F5D54AF8, v66);
  OUTLINED_FUNCTION_8_159();
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_14();
  v75 = OUTLINED_FUNCTION_28_1(v67, v68, v69, v70, v71, v72, v73, v74, v197, v206, v215, v225, v233, v234, v235, v236, v237, v238, v239, v240, v241, v242, v243, v244, v245, *(&v245 + 1), v246, *(&v246 + 1), v247, v248, v249, *(&v249 + 1), v250, *(&v250 + 1), v251, v252, __dst[0]);
  v76(v75, 54);

  (v42)(v77);
  *&__dst[0] = *sub_1E3E60548();
  v262 = 0;
  *&v258 = 0;
  v78 = *&__dst[0];
  v257[0] = [v4 clearColor];
  sub_1E3C3DE00();
  v255[0] = v256;
  v79 = sub_1E3C3DE00();
  v87 = OUTLINED_FUNCTION_2_203(v79, v80, v81, v82, v83, v84, v85, v86, v198, v207, v216, v226, v233, v234, v235, v236, v237, v238, v239, v240, v241, v242, v243, v244, v245, *(&v245 + 1), v246, *(&v246 + 1), v247, v248, v254, *(&v249 + 1), v250, *(&v250 + 1), v251, v252, __dst[0]);
  sub_1E3C2FCB8(v87, v88, v89, v257, v255, &v249, v3, v90);
  v91 = __src[0];
  v92 = __src[1];
  v93 = __src[2];
  __dst[0] = __src[0];
  __dst[1] = __src[1];
  __dst[2] = __src[2];
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_14();
  v102 = OUTLINED_FUNCTION_28_1(v94, v95, v96, v97, v98, v99, v100, v101, v199, v208, v217, v227, v233, v234, v235, v236, v237, v238, v239, v240, v241, v242, v243, v244, v245, *(&v245 + 1), v246, *(&v246 + 1), v247, v248, v249, *(&v249 + 1), v250, *(&v250 + 1), v251, v252, __dst[0]);
  v103(v102, 24);

  v104 = v209;
  v209();
  LOBYTE(__dst[0]) = 3;
  LOBYTE(v262) = 27;
  LOBYTE(v258) = 27;
  LOBYTE(v257[0]) = 2;
  sub_1E3C3DE00();
  LOBYTE(v255[0]) = v256;
  v105 = sub_1E3C3DE00();
  LOBYTE(v249) = v254;
  v113 = OUTLINED_FUNCTION_2_203(v105, v106, v107, v108, v109, v110, v111, v112, v200, v209, v218, v228, v233, v234, v235, v236, v237, v238, v239, v240, v241, v242, v243, v244, v245, *(&v245 + 1), v246, *(&v246 + 1), v247, v248, v249, *(&v249 + 1), v250, *(&v250 + 1), v251, v252, __dst[0]);
  sub_1E3C2FCB8(v113, v114, v115, v255, &v249, v257, &qword_1F5D549D8, v116);
  OUTLINED_FUNCTION_8_159();
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_14();
  v125 = OUTLINED_FUNCTION_28_1(v117, v118, v119, v120, v121, v122, v123, v124, v201, v210, v219, v229, v233, v234, v235, v236, v237, v238, v239, v240, v241, v242, v243, v244, v245, *(&v245 + 1), v246, *(&v246 + 1), v247, v248, v249, *(&v249 + 1), v250, *(&v250 + 1), v251, v252, __dst[0]);
  v126(v125, 48);

  (v104)(v127);
  OUTLINED_FUNCTION_2_1();
  (*(v128 + 2056))(2, 0);

  (v104)(v129);
  OUTLINED_FUNCTION_2_1();
  (*(v130 + 1984))(1);

  (v104)(v131);
  OUTLINED_FUNCTION_2_1();
  (*(v132 + 256))(0x408C500000000000, 0);

  (v104)(v133);
  OUTLINED_FUNCTION_2_1();
  (*(v134 + 1720))(3);

  OUTLINED_FUNCTION_9_2();
  v136 = *(v135 + 1744);
  v136();
  sub_1E3952C94();
  v262 = v137;
  *&v263 = v138;
  *(&v263 + 1) = v139;
  v264 = v140;
  v265 = 0;
  OUTLINED_FUNCTION_8();
  (*(v141 + 160))(&v262);

  (v136)(v142);
  OUTLINED_FUNCTION_2_1();
  (*(v143 + 680))(v220);

  (v136)(v144);
  OUTLINED_FUNCTION_2_1();
  (*(v145 + 1696))(15);

  (v136)(v146);
  memset(__dst, 0, 32);
  LOBYTE(__dst[2]) = 1;
  sub_1E3952C94();
  *&v258 = v147;
  *(&v258 + 1) = v148;
  *&v259 = v149;
  *(&v259 + 1) = v150;
  v260 = 0;
  sub_1E3C2FC98();
  OUTLINED_FUNCTION_33_13();
  OUTLINED_FUNCTION_13_19();
  sub_1E3C3DE00();
  v245 = v249;
  v246 = v250;
  LOBYTE(v247) = v251;
  v151 = sub_1E3C3DE00();
  LOBYTE(v237) = v243;
  v159 = OUTLINED_FUNCTION_9_146(v151, v152, v153, v154, v155, v156, v157, v158, v202, v211, v220, v230, v239, v240, v241, v242, v237, v238, v239, v240, v241, v242, v243, v244, v245, *(&v245 + 1), v246, *(&v246 + 1), v247, v248, v249, *(&v249 + 1), v250, *(&v250 + 1), v251, v252, __dst[0]);
  sub_1E3C2FCB8(v159, v160, v161, &v245, &v258, &v233, v15, v162);
  memcpy(__dst, __src, 0xE9uLL);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_14();
  v171 = OUTLINED_FUNCTION_28_1(v163, v164, v165, v166, v167, v168, v169, v170, v203, v212, v221, v231, v233, v234, v235, v236, v237, v238, v239, v240, v241, v242, v243, v244, v245, *(&v245 + 1), v246, *(&v246 + 1), v247, v248, v249, *(&v249 + 1), v250, *(&v250 + 1), v251, v252, __dst[0]);
  v172(v171, 1);

  OUTLINED_FUNCTION_9_2();
  v174 = *(v173 + 1768);
  v174();
  sub_1E3952C88();
  *&__src[0] = v175;
  *(&__src[0] + 1) = v176;
  *&__src[1] = v177;
  *(&__src[1] + 1) = v178;
  LOBYTE(__src[2]) = 0;
  OUTLINED_FUNCTION_8();
  (*(v179 + 160))(__src);

  (v174)(v180);
  sub_1E3952C88();
  *&__dst[0] = v181;
  *(&__dst[0] + 1) = v182;
  *&__dst[1] = v183;
  *(&__dst[1] + 1) = v184;
  LOBYTE(__dst[2]) = 0;
  OUTLINED_FUNCTION_8();
  (*(v185 + 184))(__dst);

  v187 = (v104)(v186);
  sub_1E3C37CBC(v187, 23);

  v189 = (v136)(v188);
  sub_1E3C37CBC(v189, 15);

  v191 = (v174)(v190);
  sub_1E3C37CBC(v191, 9);

  OUTLINED_FUNCTION_9_2();
  v193 = (*(v192 + 1792))();
  sub_1E3C37CBC(v193, 107);

  return v1;
}

id sub_1E3E62F38(uint64_t a1, uint64_t a2)
{
  v3 = objc_allocWithZone(MEMORY[0x1E69DD298]);

  return [v3 initWithEffect_];
}

unint64_t sub_1E3E62F90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECF3A400;
  if (!qword_1ECF3A400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3A400);
  }

  return result;
}

uint64_t sub_1E3E63028(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_1_237(a1, a2, a3);
  v3 = OUTLINED_FUNCTION_1_7();

  return MEMORY[0x1EEDDAA28](v3);
}

uint64_t sub_1E3E6306C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_1_237(a1, a2, a3);
  v3 = OUTLINED_FUNCTION_1_7();

  return MEMORY[0x1EEDDA9B8](v3);
}

void sub_1E3E630B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1E3E630E8(a1, a2, a3);
  sub_1E4201F04();
  __break(1u);
}

unint64_t sub_1E3E630E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECF3A408;
  if (!qword_1ECF3A408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3A408);
  }

  return result;
}

uint64_t sub_1E3E6313C@<X0>(uint64_t a1@<X0>, const void *a2@<X1>, uint64_t a3@<X8>)
{
  sub_1E381BEF8(__src);
  memcpy((a3 + 24), __src, 0x150uLL);
  v6 = type metadata accessor for HorizontalMultiGroupCollectionView(0);
  v7 = v6[6];
  *(a3 + v7) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28C18, &qword_1E42982F0);
  swift_storeEnumTagMultiPayload();
  *a3 = sub_1E381AE50;
  *(a3 + 8) = a1;
  *(a3 + 16) = 0;
  *(a3 + v6[8]) = a1;
  memcpy(__dst, (a3 + 24), sizeof(__dst));
  memcpy((a3 + 24), a2, 0x150uLL);

  sub_1E3743538(a2, v15, &qword_1ECF2B5C0, &unk_1E42B4E40);
  sub_1E325F6F0(__dst, &qword_1ECF2B5C0, &unk_1E42B4E40);
  memcpy(v15, a2, sizeof(v15));
  result = sub_1E3748B78(v15);
  v9 = 0.0;
  v10 = 0.0;
  if (result != 1)
  {
    v11 = *&v15[25];
    v12 = *&v15[26];
    v13 = v15[27];
    result = sub_1E325F6F0(a2, &qword_1ECF2B5C0, &unk_1E42B4E40);
    v10 = 0.0;
    if (v13)
    {
      v9 = 0.0;
    }

    else
    {
      v9 = v11;
    }

    if ((v13 & 1) == 0)
    {
      v10 = v12;
    }
  }

  v14 = a3 + v6[7];
  *v14 = v9;
  *(v14 + 8) = v10;
  *(v14 + 16) = 0;
  return result;
}

uint64_t type metadata accessor for HorizontalMultiGroupCollectionView(uint64_t a1)
{
  result = qword_1EE2916F0;
  if (!qword_1EE2916F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1E3E63310()
{
  OUTLINED_FUNCTION_41_5();
  v6 = v0;
  v70 = v7;
  v8 = type metadata accessor for HorizontalMultiGroupCollectionView(0);
  v9 = v8 - 8;
  v67 = *(v8 - 8);
  v66 = *(v67 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v65 = v59 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3A410, &qword_1E42D7530);
  OUTLINED_FUNCTION_0_10();
  v63 = v11;
  v64 = v12;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_44();
  v61 = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3A418, &qword_1E42D7538);
  OUTLINED_FUNCTION_0_10();
  v68 = v15;
  v69 = v16;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_44();
  v62 = v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A250, " B\r");
  OUTLINED_FUNCTION_17_2(v19);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_49_2();
  type metadata accessor for CollectionInteractor(0);
  OUTLINED_FUNCTION_2_204();
  sub_1E3E6722C(v21, v22, &unk_1E42BD340);
  v23 = sub_1E4200BC4();
  v24 = OBJC_IVAR____TtC8VideosUI20CollectionInteractor_collectionViewModel;
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  v25 = *(v23 + v24);

  v27 = (*(*v25 + 1040))(v26);
  v59[2] = (*(*v25 + 960))();
  v60 = v9;
  v28 = (v6 + *(v9 + 36));
  v30 = v28[1];
  v31 = v28[2];
  v84 = *v28;
  v29 = v84;
  v85 = v30;
  v86 = v31;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29028, &qword_1E42992D0);
  sub_1E42038F4();
  v32 = *v83[0].i64;
  v59[1] = type metadata accessor for LayoutGrid();
  sub_1E3A258E4(v32);
  j_nullsub_1(v33, v34, v35, v36);
  OUTLINED_FUNCTION_3();
  v84 = v29;
  v85 = v30;
  v86 = v31;
  sub_1E42038F4();
  sub_1E3746E10(v1);
  v37 = sub_1E42012F4();
  __swift_storeEnumTagSinglePayload(v1, 0, 1, v37);
  memcpy(v83, (v6 + 24), 0x150uLL);
  v38 = sub_1E3748B78(v83);
  v39.i32[0] = 1;
  v40.i32[0] = v38;
  v41 = vdupq_lane_s32(*&vceqq_s32(v40, v39), 0);
  v42 = vbicq_s8(v83[15], v41);
  v43 = vbicq_s8(v83[14], v41);
  if (!v27)
  {
    v27 = MEMORY[0x1E69E7CC0];
  }

  v87 = v43;
  v88 = v42;
  v89 = v38 == 1;
  j__OUTLINED_FUNCTION_51_1();
  OUTLINED_FUNCTION_5_11();
  sub_1E389BFA8();
  sub_1E325F6F0(v1, &qword_1ECF2A250, " B\r");
  v80 = v29;
  v81 = v30;
  v82 = v31;
  sub_1E42038F4();
  sub_1E3A25950(v79);
  v45 = v44;
  sub_1E42026E4();
  v71 = v45;
  v72 = v27;
  v73 = v6;
  v74 = &v84;
  v75 = v2;
  v76 = v3;
  v77 = v4;
  v78 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3A420, &qword_1E42D7540);
  sub_1E32752B0(&qword_1ECF3A428, &qword_1ECF3A420, &qword_1E42D7540, MEMORY[0x1E69817F8]);
  v46 = v61;
  sub_1E4200AD4();

  sub_1E42026E4();
  OUTLINED_FUNCTION_18_107();
  v49 = sub_1E32752B0(v47, &qword_1ECF3A410, &qword_1E42D7530, v48);
  v51 = v62;
  v50 = v63;
  sub_1E3E3665C(v63, v62);
  (*(v64 + 8))(v46, v50);
  v79 = *(v6 + *(v60 + 40));
  v52 = v6;
  v53 = v65;
  sub_1E3E65A24(v52, v65);
  v54 = (*(v67 + 80) + 16) & ~*(v67 + 80);
  v55 = swift_allocObject();
  sub_1E3E65A88(v53, v55 + v54);
  type metadata accessor for CollectionViewModel();

  v80 = v50;
  v81 = v49;
  OUTLINED_FUNCTION_13_145();
  swift_getOpaqueTypeConformance2();
  OUTLINED_FUNCTION_12_137();
  sub_1E3E6722C(v56, v57, &protocol conformance descriptor for ViewModel);
  v58 = v68;
  sub_1E4203524();
  sub_1E375B760(&v84);

  (*(v69 + 8))(v51, v58);
  OUTLINED_FUNCTION_42();
}

id sub_1E3E639B0@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, const void *a3@<X2>, uint64_t a4@<X8>, double a5@<D0>, double a6@<D1>, double a7@<D2>, double a8@<D3>, double a9@<D4>)
{
  v69 = a2;
  v70 = a3;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3A488, &qword_1E42D76F8);
  OUTLINED_FUNCTION_0_10();
  KeyPath = v17;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v65 - v19;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3A490, &qword_1E42D7700);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_44();
  v74 = v22;
  v23 = type metadata accessor for HorizontalMultiGroupCollectionView(0);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v25 = &v65 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3A498, &qword_1E42D7708);
  OUTLINED_FUNCTION_0_10();
  v65 = v26;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v65 - v28;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3A4A0, &qword_1E42D7710);
  OUTLINED_FUNCTION_17_2(v30);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_44();
  v71 = v32;
  *a4 = sub_1E4201B64();
  *(a4 + 8) = a5;
  *(a4 + 16) = 0;
  result = [objc_opt_self() sharedInstance];
  if (result)
  {
    v34 = result;
    v67 = v16;
    v68 = a4;
    v35 = [result vStackInForEachEnabled];

    sub_1E3E66208(a1);
    v75[42] = v36;
    if (v35)
    {
      KeyPath = swift_getKeyPath();
      sub_1E3E65A24(v69, &v65 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
      OUTLINED_FUNCTION_32_68();
      v38 = v37 & 0xFFFFFFFFFFFFFFF8;
      v39 = ((v37 & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
      v40 = (v39 + 343) & 0xFFFFFFFFFFFFFFF8;
      v41 = swift_allocObject();
      sub_1E3E65A88(v25, v35 + v41);
      *(v41 + v38) = a1;
      v42 = v70;
      memcpy((v41 + v39), v70, 0x150uLL);
      *(v41 + v40) = a5;
      v43 = (v41 + ((v40 + 15) & 0xFFFFFFFFFFFFFFF8));
      *v43 = a6;
      v43[1] = a7;
      v43[2] = a8;
      v43[3] = a9;
      v44 = swift_allocObject();
      *(v44 + 16) = sub_1E3E66A34;
      *(v44 + 24) = v41;

      sub_1E37E6E1C(v42, v75);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3A4A8, &qword_1E42D7740);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3A4D8, &qword_1E42D7750);
      OUTLINED_FUNCTION_14_11();
      sub_1E32752B0(v45, &qword_1ECF3A4A8, &qword_1E42D7740, v46);
      sub_1E375BEF4();
      OUTLINED_FUNCTION_1();
      sub_1E32752B0(v47, &qword_1ECF3A4D8, &qword_1E42D7750, v48);
      sub_1E4203B34();
      v49 = v65;
      v50 = v72;
      (*(v65 + 16))(v74, v29, v72);
      swift_storeEnumTagMultiPayload();
      sub_1E3E666F4();
      sub_1E3E667A4();
      v51 = v71;
      sub_1E4201F44();
      (*(v49 + 8))(v29, v50);
    }

    else
    {
      v65 = swift_getKeyPath();
      sub_1E3E65A24(v69, &v65 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
      OUTLINED_FUNCTION_32_68();
      v53 = v52 & 0xFFFFFFFFFFFFFFF8;
      v54 = ((v52 & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
      v55 = (v54 + 343) & 0xFFFFFFFFFFFFFFF8;
      v56 = swift_allocObject();
      sub_1E3E65A88(v25, v35 + v56);
      *(v56 + v53) = a1;
      v57 = v70;
      memcpy((v56 + v54), v70, 0x150uLL);
      *(v56 + v55) = a5;
      v58 = (v56 + ((v55 + 15) & 0xFFFFFFFFFFFFFFF8));
      *v58 = a6;
      v58[1] = a7;
      v58[2] = a8;
      v58[3] = a9;
      v59 = swift_allocObject();
      *(v59 + 16) = sub_1E3E663C4;
      *(v59 + 24) = v56;

      sub_1E37E6E1C(v57, v75);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3A4A8, &qword_1E42D7740);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3A4B0, &qword_1E42D7748);
      OUTLINED_FUNCTION_14_11();
      sub_1E32752B0(v60, &qword_1ECF3A4A8, &qword_1E42D7740, v61);
      sub_1E375BEF4();
      sub_1E3E66614();
      sub_1E4203B34();
      v63 = KeyPath;
      v62 = v67;
      (*(KeyPath + 16))(v74, v20, v67);
      swift_storeEnumTagMultiPayload();
      sub_1E3E666F4();
      sub_1E3E667A4();
      v51 = v71;
      sub_1E4201F44();
      (*(v63 + 8))(v20, v62);
    }

    v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3A4E8, &qword_1E42D7758);
    return sub_1E3E66828(v51, v68 + *(v64 + 44));
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1E3E6408C()
{
  OUTLINED_FUNCTION_41_5();
  v1 = v0;
  v69 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2CBE0, &unk_1E42A7B80);
  OUTLINED_FUNCTION_0_10();
  v67 = v4;
  v68 = v3;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_44();
  v66 = v6;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2CBA0, &qword_1E42A7B30);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_44();
  v65 = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3A438, &qword_1E42D7688);
  OUTLINED_FUNCTION_17_2(v9);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v10);
  v12 = v62 - v11;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3A440, &qword_1E42D7690);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_4_6();
  v16 = v14 - v15;
  v18 = MEMORY[0x1EEE9AC00](v17);
  v20 = v62 - v19;
  v21 = *v0;
  if (!(*(**v0 + 968))(v18))
  {
    (*(*v0[3] + 904))();
  }

  type metadata accessor for LayoutGrid();
  sub_1E3A258E4(*(v0 + 51));
  v26.n128_f64[0] = j_nullsub_1(v22, v23, v24, v25);
  v28 = v27;
  v29 = (*(*v21 + 1040))(v26);
  v30 = v29;
  v62[3] = v28;
  if (v29)
  {
    v31 = sub_1E37D027C(v29);

    if (v31)
    {
      v30 = (*(*v31 + 872))(v32);

      if (v30)
      {
        v30 = sub_1E37D027C(v30);
      }
    }

    else
    {
      v30 = 0;
    }
  }

  v71[3] = &unk_1F5D5D888;
  v71[4] = &off_1F5D5C918;
  LOBYTE(v71[0]) = 8;
  v33 = j__OUTLINED_FUNCTION_18();
  sub_1E39C29F0(v71, v33 & 1);
  __swift_destroy_boxed_opaque_existential_1(v71);
  v62[1] = v1[46];
  memcpy(v71, v1 + 4, 0x150uLL);
  sub_1E37E6E1C(v71, &v70);
  OUTLINED_FUNCTION_5_8();
  v34 = v1[50];
  MEMORY[0x1EEE9AC00](v35);
  v62[2] = v30;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3A448, &qword_1E42D7698);
  v37 = sub_1E3E65E7C();
  sub_1E3CBD2B8(v36);
  OUTLINED_FUNCTION_25();
  sub_1E3CBD2BC(v38, v39, v40, v41, v42, v43, v36, v44, v45, v46, v47, v48, v49, v50, v51, v52, v34, v37);
  v53 = sub_1E4202764();
  sub_1E4202774();
  sub_1E4202774();
  if (sub_1E4202774() != v53)
  {
    sub_1E4202774();
  }

  sub_1E4200A54();
  OUTLINED_FUNCTION_3();
  sub_1E3741EA0(v12, v16, &qword_1ECF3A438, &qword_1E42D7688);
  OUTLINED_FUNCTION_7_3(v16 + *(v63 + 36));
  sub_1E3741EA0(v16, v20, &qword_1ECF3A440, &qword_1E42D7690);
  v54 = v69;
  sub_1E3741EA0(v20, v69, &qword_1ECF3A440, &qword_1E42D7690);
  v55 = v66;
  OUTLINED_FUNCTION_25();
  sub_1E39E19A0(v56, v57, v58);
  v59 = sub_1E4202764();
  sub_1E4202774();
  sub_1E4202774();
  if (sub_1E4202774() != v59)
  {
    sub_1E4202774();
  }

  v60 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3A478, &qword_1E42D76B8) + 52);
  sub_1E4200A54();
  OUTLINED_FUNCTION_3();
  v61 = v65;
  (*(v67 + 32))(v65, v55, v68);
  OUTLINED_FUNCTION_7_3(v61 + *(v64 + 36));
  sub_1E3741EA0(v61, v54 + v60, &qword_1ECF2CBA0, &qword_1E42A7B30);

  OUTLINED_FUNCTION_42();
}

void sub_1E3E64640()
{
  OUTLINED_FUNCTION_31_1();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3A470, &qword_1E42D76B0);
  OUTLINED_FUNCTION_0_10();
  KeyPath = v8;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_49_2();
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3A480, &qword_1E42D76C0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_44();
  v42 = v11;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3A460, &unk_1E42D76A0);
  OUTLINED_FUNCTION_0_10();
  v13 = v12;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v37 - v15;
  v17 = [objc_opt_self() sharedInstance];
  if (v17)
  {
    v18 = v17;
    v39 = v6;
    v40 = v7;
    v19 = [v17 vStackInForEachEnabled];

    v20 = (*(*v4[3] + 872))();
    v21 = MEMORY[0x1E69E7CC0];
    if (v20)
    {
      v21 = v20;
    }

    v46 = v21;
    if (v19)
    {
      KeyPath = swift_getKeyPath();
      v22 = swift_allocObject();
      memcpy((v22 + 16), v4, 0x1A8uLL);
      *(v22 + 440) = v2;
      sub_1E3E66100(v4, &v44);

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C790, &qword_1E42996A0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B618, &qword_1E42A0C30);
      OUTLINED_FUNCTION_14_11();
      sub_1E32752B0(v23, &unk_1ECF2C790, &qword_1E42996A0, v24);
      sub_1E375BEF4();
      OUTLINED_FUNCTION_1();
      sub_1E32752B0(v25, &qword_1ECF2B618, &qword_1E42A0C30, v26);
      sub_1E4203B34();
      v27 = v43;
      (*(v13 + 16))(v42, v16, v43);
      swift_storeEnumTagMultiPayload();
      sub_1E3E65F08();
      sub_1E3E65FB8();
      sub_1E4201F44();
      (*(v13 + 8))(v16, v27);
    }

    else
    {
      swift_getKeyPath();
      v28 = swift_allocObject();
      memcpy((v28 + 16), v4, 0x1A8uLL);
      *(v28 + 440) = v2;
      sub_1E3E66100(v4, &v44);

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C790, &qword_1E42996A0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B638, &qword_1E42D76F0);
      OUTLINED_FUNCTION_14_11();
      sub_1E32752B0(v29, &unk_1ECF2C790, &qword_1E42996A0, v30);
      sub_1E375BEF4();
      v31 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2B628, &unk_1E42A0C40);
      v32 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF29060, &qword_1E42A7B70);
      v33 = OUTLINED_FUNCTION_6_8(v32);
      v44 = v32;
      v45 = v33;
      OUTLINED_FUNCTION_9_142();
      OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
      v44 = v31;
      v45 = OpaqueTypeConformance2;
      swift_getOpaqueTypeConformance2();
      sub_1E4203B34();
      v35 = KeyPath;
      v36 = v40;
      (*(KeyPath + 16))(v42, v0, v40);
      swift_storeEnumTagMultiPayload();
      sub_1E3E65F08();
      sub_1E3E65FB8();
      sub_1E4201F44();
      (*(v35 + 8))(v0, v36);
    }

    OUTLINED_FUNCTION_25_2();
  }

  else
  {
    __break(1u);
  }
}

void sub_1E3E64B94()
{
  OUTLINED_FUNCTION_31_1();
  v31 = v2;
  v4 = v3;
  v32 = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29060, &qword_1E42A7B70);
  OUTLINED_FUNCTION_0_10();
  v8 = v7;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_49_2();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B628, &unk_1E42A0C40);
  OUTLINED_FUNCTION_0_10();
  v12 = v11;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v30 - v14;
  memcpy(v36, v0 + 4, sizeof(v36));
  OUTLINED_FUNCTION_25();
  v21 = sub_1E40EA03C(v16, v17, v18, v19, v20);
  v30 = v0;
  v22 = *v0;
  v23 = OUTLINED_FUNCTION_6_8(v21);
  v24 = OUTLINED_FUNCTION_51_1();
  sub_1E3C6184C(v22, v4, v24 & 1, 0, 0, v6, v23);
  (*(v8 + 8))(v1, v6);
  v33 = v4;
  if (v31)
  {
    v34 = v31;
    type metadata accessor for ViewModel();
    sub_1E3E6722C(&qword_1EE23BA60, type metadata accessor for ViewModel, &protocol conformance descriptor for ViewModel);

    v25 = sub_1E4205E84();

    v26 = 0;
    if (v25)
    {
      v27 = v30[2];
      v28 = OBJC_IVAR____TtC8VideosUI20CollectionInteractor_paginator;
      OUTLINED_FUNCTION_25();
      swift_beginAccess();
      v26 = *(v27 + v28);
    }
  }

  else
  {
    v26 = 0;
  }

  v34 = v6;
  v35 = v23;
  OUTLINED_FUNCTION_9_142();
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_1E3A610C8(v26, v10, OpaqueTypeConformance2);

  (*(v12 + 8))(v15, v10);
  OUTLINED_FUNCTION_25_2();
}

void sub_1E3E64EB0()
{
  OUTLINED_FUNCTION_31_1();
  v44 = v0;
  v2 = v1;
  v48 = v3;
  sub_1E4201F84();
  OUTLINED_FUNCTION_0_10();
  v46 = v5;
  v47 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v45 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1ECF3A4F8, &qword_1E42D77E8);
  v8 = sub_1E4201734();
  OUTLINED_FUNCTION_3_203();
  v11 = sub_1E3E6722C(v9, v10, MEMORY[0x1E697ED28]);
  v52 = v8;
  v53 = v11;
  OUTLINED_FUNCTION_5_189();
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v13 = v2[3];
  v42 = v2[5];
  v43 = v13;
  v40 = v2;
  v52 = v13;
  v53 = v7;
  v54 = v42;
  v55 = OpaqueTypeConformance2;
  OUTLINED_FUNCTION_4_205();
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF28960, &unk_1E42D77F0);
  sub_1E42013A4();
  v14 = v2[2];
  swift_getTupleTypeMetadata2();
  sub_1E4203EE4();
  OUTLINED_FUNCTION_15_13();
  WitnessTable = swift_getWitnessTable();
  v15 = sub_1E4203A44();
  OUTLINED_FUNCTION_0_10();
  v17 = v16;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v39 - v19;
  OUTLINED_FUNCTION_0_81();
  v21 = swift_getWitnessTable();
  v52 = v15;
  v53 = v21;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  OUTLINED_FUNCTION_0_10();
  v24 = v23;
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_4_6();
  v28 = v26 - v27;
  MEMORY[0x1EEE9AC00](v29);
  v31 = &v39 - v30;
  sub_1E4201D54();
  *&v32 = v40[4];
  *(&v32 + 1) = v42;
  *&v33 = v14;
  *(&v33 + 1) = v43;
  v49 = v33;
  v50 = v32;
  v51 = v44;
  sub_1E4203A34();
  OUTLINED_FUNCTION_29_81();
  v52 = v35;
  v53 = v34;
  v36 = v45;
  sub_1E4202274();
  sub_1E4202F84();
  (*(v46 + 8))(v36, v47);
  (*(v17 + 8))(v20, v15);
  v37 = *(v24 + 16);
  v37(v31, v28, OpaqueTypeMetadata2);
  v38 = *(v24 + 8);
  v38(v28, OpaqueTypeMetadata2);
  v37(v48, v31, OpaqueTypeMetadata2);
  v38(v31, OpaqueTypeMetadata2);
  OUTLINED_FUNCTION_25_2();
}

void sub_1E3E65298()
{
  OUTLINED_FUNCTION_31_1();
  v78 = v0;
  v79 = v1;
  v73 = v2;
  v77 = v3;
  v75 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_4_6();
  v76 = v4 - v5;
  MEMORY[0x1EEE9AC00](v6);
  v74 = &v64 - v7;
  v84 = v8;
  v85 = v9;
  v10 = v9;
  v86 = v11;
  v87 = v12;
  v13 = v12;
  v65 = v12;
  v14 = type metadata accessor for LazyHStickySection(0, &v84);
  OUTLINED_FUNCTION_0_10();
  v16 = v15;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v64 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1ECF3A4F8, &qword_1E42D77E8);
  v69 = v20;
  v21 = sub_1E4201734();
  OUTLINED_FUNCTION_3_203();
  v24 = sub_1E3E6722C(v22, v23, MEMORY[0x1E697ED28]);
  v84 = v21;
  v85 = v24;
  OUTLINED_FUNCTION_5_189();
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v84 = v10;
  v85 = v20;
  v25 = v10;
  v86 = v13;
  v87 = OpaqueTypeConformance2;
  OUTLINED_FUNCTION_4_205();
  WitnessTable = v26;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v71 = *(OpaqueTypeMetadata2 - 8);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v27);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF28960, &unk_1E42D77F0);
  v72 = sub_1E42013A4();
  OUTLINED_FUNCTION_0_10();
  v80 = v28;
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_4_6();
  v64 = v30 - v31;
  v33 = MEMORY[0x1EEE9AC00](v32);
  v67 = &v64 - v34;
  v35 = v14;
  v36 = v73;
  (*(v16 + 16))(v19, v73, v35, v33);
  v37 = (*(v16 + 80) + 48) & ~*(v16 + 80);
  v38 = swift_allocObject();
  v39 = v79;
  *(v38 + 2) = v78;
  *(v38 + 3) = v25;
  v40 = v25;
  v41 = v65;
  *(v38 + 4) = v39;
  *(v38 + 5) = v41;
  (*(v16 + 32))(&v38[v37], v19, v35);
  v42 = v36;
  v43 = v69;
  v44 = OpaqueTypeConformance2;
  MEMORY[0x1E690D7F0](sub_1E3E67284, v38, v40, v69, v41, OpaqueTypeConformance2);

  v84 = v40;
  v85 = v43;
  v86 = v41;
  v87 = v44;
  v45 = swift_getOpaqueTypeConformance2();
  v46 = v64;
  sub_1E42034A4();
  v47 = OUTLINED_FUNCTION_13_8();
  v48(v47);
  v49 = sub_1E32752B0(&qword_1ECF28958, &qword_1ECF28960, &unk_1E42D77F0, MEMORY[0x1E697FDC0]);
  v83[2] = v45;
  v83[3] = v49;
  v50 = v72;
  WitnessTable = swift_getWitnessTable();
  v51 = v80;
  v52 = *(v80 + 16);
  v53 = v67;
  v52(v67, v46, v50);
  v54 = *(v51 + 8);
  v80 = v51 + 8;
  v71 = v54;
  v54(v46, v50);
  v55 = v74;
  v56 = v75;
  v57 = *(v75 + 16);
  v58 = v42;
  v59 = v78;
  v57(v74, v58, v78);
  v52(v46, v53, v50);
  v84 = v46;
  v60 = v76;
  v57(v76, v55, v59);
  v85 = v60;
  v83[0] = v50;
  v83[1] = v59;
  v81 = WitnessTable;
  v82 = v79;
  sub_1E3910324(&v84, 2, v83);
  v61 = *(v56 + 8);
  v61(v55, v59);
  v62 = v53;
  v63 = v71;
  v71(v62, v50);
  v61(v60, v59);
  v63(v46, v50);
  OUTLINED_FUNCTION_25_2();
}

void sub_1E3E65860()
{
  sub_1E4201F84();
  OUTLINED_FUNCTION_0_10();
  v1 = v0;
  MEMORY[0x1EEE9AC00](v2);
  sub_1E4202264();
  OUTLINED_FUNCTION_13_8();
  sub_1E4200E84();
  v4 = v3;
  v19 = v5;
  v7 = v6;
  v9 = v8;
  v10 = *(v1 + 8);
  v11 = OUTLINED_FUNCTION_13_8();
  v10(v11);
  OUTLINED_FUNCTION_29_81();
  v20 = v13;
  v21 = v12;
  sub_1E4202274();
  sub_1E4200E94();
  v14 = OUTLINED_FUNCTION_13_8();
  v10(v14);
  if (v24)
  {
    v15 = 0.0;
  }

  else
  {
    v15 = v20;
  }

  if (v24)
  {
    v16 = 0.0;
  }

  else
  {
    v16 = v21;
  }

  if (v24)
  {
    v17 = 0.0;
  }

  else
  {
    v17 = v22;
  }

  if (v24)
  {
    v18 = 0.0;
  }

  else
  {
    v18 = v23;
  }

  CGRectGetWidth(*&v15);
  v25.origin.x = v4;
  v25.origin.y = v19;
  v25.size.width = v7;
  v25.size.height = v9;
  CGRectGetWidth(v25);
}

uint64_t sub_1E3E65A24(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HorizontalMultiGroupCollectionView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E3E65A88(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HorizontalMultiGroupCollectionView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

double sub_1E3E65AEC(uint64_t a1, uint64_t *a2)
{
  v3 = type metadata accessor for HorizontalMultiGroupCollectionView(0);
  OUTLINED_FUNCTION_17_2(v3);
  v4 = *a2;
  type metadata accessor for CollectionInteractor(0);
  OUTLINED_FUNCTION_2_204();
  sub_1E3E6722C(v5, v6, &unk_1E42BD340);
  sub_1E4200BC4();
  sub_1E37CDC8C(v4);

  return result;
}

void sub_1E3E65C08(uint64_t a1)
{
  sub_1E3E290B0(319);
  if (v1 <= 0x3F)
  {
    sub_1E39BB660(319, &qword_1EE259C58, &unk_1F5D8B8B8, MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      sub_1E3E29194(319, &qword_1EE289EB0, MEMORY[0x1E697E730], MEMORY[0x1E697DCC0]);
      if (v3 <= 0x3F)
      {
        sub_1E3E29194(319, &qword_1EE288648, type metadata accessor for CGSize, MEMORY[0x1E6981790]);
        if (v4 <= 0x3F)
        {
          type metadata accessor for CollectionViewModel();
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_1E3E65D60(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 424))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1E3E65DA0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 392) = 0u;
    *(result + 408) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 424) = 1;
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
      *result = (a2 - 1);
      return result;
    }

    *(result + 424) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1E3E65E7C()
{
  result = qword_1ECF3A450;
  if (!qword_1ECF3A450)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3A448, &qword_1E42D7698);
    sub_1E3E65F08();
    sub_1E3E65FB8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3A450);
  }

  return result;
}

unint64_t sub_1E3E65F08()
{
  result = qword_1ECF3A458;
  if (!qword_1ECF3A458)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3A460, &unk_1E42D76A0);
    sub_1E32752B0(&qword_1EE288510, &qword_1ECF2B618, &qword_1E42A0C30, MEMORY[0x1E6981870]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3A458);
  }

  return result;
}

unint64_t sub_1E3E65FB8()
{
  result = qword_1ECF3A468;
  if (!qword_1ECF3A468)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3A470, &qword_1E42D76B0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2B628, &unk_1E42A0C40);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF29060, &qword_1E42A7B70);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3A468);
  }

  return result;
}

uint64_t objectdestroy_20Tm()
{

  return swift_deallocObject();
}

void sub_1E3E661A0(uint64_t a2@<X8>)
{
  *a2 = sub_1E4201D44();
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B640, &unk_1E42A0C80);
  sub_1E3E64B94();
}

void sub_1E3E66208(unint64_t a1)
{
  v1 = a1;
  v2 = sub_1E32AE9B0(a1);
  v3 = 0;
  v4 = 0;
  v5 = v1 & 0xC000000000000001;
  v6 = MEMORY[0x1E69E7CC0];
  v7 = (MEMORY[0x1E69E7CC0] + 32);
  v8 = v1 & 0xFFFFFFFFFFFFFF8;
  v25 = v1 & 0xFFFFFFFFFFFFFF8;
  v26 = v1;
  while (v2 != v3)
  {
    if (v5)
    {
      v9 = MEMORY[0x1E6911E60](v3, v1);
    }

    else
    {
      if (v3 >= *(v8 + 16))
      {
        goto LABEL_29;
      }

      v9 = *(v1 + 8 * v3 + 32);
    }

    if (__OFADD__(v3, 1))
    {
      __break(1u);
LABEL_29:
      __break(1u);
LABEL_30:
      __break(1u);
LABEL_31:
      __break(1u);
      goto LABEL_32;
    }

    if (!v4)
    {
      v10 = v6[3];
      if (((v10 >> 1) + 0x4000000000000000) < 0)
      {
        goto LABEL_31;
      }

      v11 = v2;
      v12 = v5;
      v13 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if (v13 <= 1)
      {
        v14 = 1;
      }

      else
      {
        v14 = v13;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3A4F0, &unk_1E42D7760);
      v15 = swift_allocObject();
      v16 = (_swift_stdlib_malloc_size(v15) - 32) / 16;
      v15[2] = v14;
      v15[3] = 2 * v16;
      v17 = (v15 + 4);
      v18 = v6[3];
      v19 = v18 >> 1;
      if (v6[2])
      {
        if (v15 != v6 || v17 >= &v6[2 * v19 + 4])
        {
          memmove(v15 + 4, v6 + 4, 16 * v19);
        }

        v6[2] = 0;
      }

      v7 = (v17 + 16 * v19);
      v4 = (v16 & 0x7FFFFFFFFFFFFFFFLL) - (v18 >> 1);

      v6 = v15;
      v5 = v12;
      v2 = v11;
      v8 = v25;
      v1 = v26;
    }

    v21 = __OFSUB__(v4--, 1);
    if (v21)
    {
      goto LABEL_30;
    }

    *v7 = v3;
    v7[1] = v9;
    v7 += 2;
    ++v3;
  }

  v22 = v6[3];
  if (v22 < 2)
  {
    return;
  }

  v23 = v22 >> 1;
  v21 = __OFSUB__(v23, v4);
  v24 = v23 - v4;
  if (!v21)
  {
    v6[2] = v24;
    return;
  }

LABEL_32:
  __break(1u);
}

void sub_1E3E663C4()
{
  OUTLINED_FUNCTION_41_5();
  v8 = v7;
  v10 = v9;
  v11 = type metadata accessor for HorizontalMultiGroupCollectionView(0);
  OUTLINED_FUNCTION_70_4();
  v13 = (*(v12 + 80) + 16) & ~*(v12 + 80);
  OUTLINED_FUNCTION_20_101();
  v15 = *(v0 + v14);
  OUTLINED_FUNCTION_26_93();
  memcpy(__dst, v1, sizeof(__dst));
  if (__OFSUB__(sub_1E32AE9B0(v15), 1))
  {
    __break(1u);
  }

  else
  {
    v16 = *(v0 + v13 + *(v11 + 32));
    type metadata accessor for CollectionInteractor(0);
    OUTLINED_FUNCTION_2_204();
    sub_1E3E6722C(v17, v18, &unk_1E42BD340);

    sub_1E4200BC4();
    v19 = v0 + v13 + *(v11 + 28);
    v20 = *(v19 + 16);
    v30 = *v19;
    v31 = v20;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29028, &qword_1E42992D0);
    sub_1E42038F4();
    v21 = v32;
    v22 = v33;
    v23 = sub_1E42010C4();
    v25 = v24;

    sub_1E37E6E1C(v1, &v30);
    v26 = sub_1E4202784();
    v27 = sub_1E4202774();
    sub_1E4202774();
    if (sub_1E4202774() != v26)
    {
      v27 = sub_1E4202774();
    }

    v29 = v1[14];
    v28 = v1[15];
    sub_1E4200A54();
    OUTLINED_FUNCTION_3();
    LOBYTE(v30) = 0;
    *v10 = v16;
    *(v10 + 8) = v23;
    *(v10 + 16) = v25;
    *(v10 + 24) = v8;
    memcpy((v10 + 32), __dst, 0x150uLL);
    *(v10 + 368) = v6;
    *(v10 + 376) = v29;
    *(v10 + 392) = v28;
    *(v10 + 408) = v21;
    *(v10 + 416) = v22;
    *(v10 + 424) = v27;
    *(v10 + 432) = v2;
    *(v10 + 440) = v3;
    *(v10 + 448) = v4;
    *(v10 + 456) = v5;
    *(v10 + 464) = 0;
    OUTLINED_FUNCTION_42();
  }
}

unint64_t sub_1E3E66614()
{
  result = qword_1ECF3A4C0;
  if (!qword_1ECF3A4C0)
  {
    v1 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3A4B0, &qword_1E42D7748);
    sub_1E3E666A0(v1, v2, v3);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3A4C0);
  }

  return result;
}

unint64_t sub_1E3E666A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EE294B70;
  if (!qword_1EE294B70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE294B70);
  }

  return result;
}

unint64_t sub_1E3E666F4()
{
  result = qword_1ECF3A4C8;
  if (!qword_1ECF3A4C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3A498, &qword_1E42D7708);
    sub_1E32752B0(&qword_1ECF3A4D0, &qword_1ECF3A4D8, &qword_1E42D7750, MEMORY[0x1E6981870]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3A4C8);
  }

  return result;
}

unint64_t sub_1E3E667A4()
{
  result = qword_1ECF3A4E0;
  if (!qword_1ECF3A4E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3A488, &qword_1E42D76F8);
    sub_1E3E66614();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3A4E0);
  }

  return result;
}

uint64_t sub_1E3E66828(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3A4A0, &qword_1E42D7710);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t objectdestroy_28Tm_1()
{
  v1 = type metadata accessor for HorizontalMultiGroupCollectionView(0);
  OUTLINED_FUNCTION_70_4();
  v4 = *(v3 + 64);
  v5 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  sub_1E3264CE0(*(v0 + v5), *(v0 + v5 + 8));
  v6 = *(v0 + v5 + 104);
  if (v6 != 1)
  {
  }

  v7 = *(v1 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28C18, &qword_1E42982F0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1E42012F4();
    OUTLINED_FUNCTION_2();
    (*(v8 + 8))(v0 + v5 + v7);
  }

  else
  {
  }

  return swift_deallocObject();
}

void sub_1E3E66A34()
{
  OUTLINED_FUNCTION_41_5();
  v8 = v7;
  v10 = v9;
  v11 = type metadata accessor for HorizontalMultiGroupCollectionView(0);
  OUTLINED_FUNCTION_70_4();
  v13 = (*(v12 + 80) + 16) & ~*(v12 + 80);
  OUTLINED_FUNCTION_20_101();
  v15 = *(v0 + v14);
  OUTLINED_FUNCTION_26_93();
  memcpy(__dst, v1, sizeof(__dst));
  v16 = sub_1E4201D44();
  v38 = 0;
  if (__OFSUB__(sub_1E32AE9B0(v15), 1))
  {
    __break(1u);
  }

  else
  {
    v32 = v16;
    v17 = v1;
    v18 = *(v0 + v13 + *(v11 + 32));
    type metadata accessor for CollectionInteractor(0);
    OUTLINED_FUNCTION_2_204();
    sub_1E3E6722C(v19, v20, &unk_1E42BD340);

    sub_1E4200BC4();
    v21 = v0 + v13 + *(v11 + 28);
    v22 = *(v21 + 16);
    v34 = *v21;
    v35 = v22;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29028, &qword_1E42992D0);
    sub_1E42038F4();
    v23 = v36;
    v24 = v37;
    v25 = sub_1E42010C4();
    v27 = v26;

    sub_1E37E6E1C(v17, &v34);
    v28 = sub_1E4202784();
    v29 = sub_1E4202774();
    sub_1E4202774();
    if (sub_1E4202774() != v28)
    {
      v29 = sub_1E4202774();
    }

    v33 = *(v17 + 224);
    v31 = *(v17 + 240);
    sub_1E4200A54();
    OUTLINED_FUNCTION_3();
    LOBYTE(v34) = 0;
    v30 = v38;
    *v10 = v32;
    *(v10 + 8) = 0;
    *(v10 + 16) = v30;
    *(v10 + 24) = v18;
    *(v10 + 32) = v25;
    *(v10 + 40) = v27;
    *(v10 + 48) = v8;
    memcpy((v10 + 56), __dst, 0x150uLL);
    *(v10 + 392) = v6;
    *(v10 + 400) = v33;
    *(v10 + 416) = v31;
    *(v10 + 432) = v23;
    *(v10 + 440) = v24;
    *(v10 + 448) = v29;
    *(v10 + 456) = v2;
    *(v10 + 464) = v3;
    *(v10 + 472) = v4;
    *(v10 + 480) = v5;
    *(v10 + 488) = 0;
    OUTLINED_FUNCTION_42();
  }
}

uint64_t sub_1E3E66CA0(uint64_t a1)
{
  result = swift_checkMetadataState();
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

uint64_t sub_1E3E66D2C(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(*(v5 - 8) + 84);
  v7 = *(a3 + 24);
  v8 = *(v7 - 8);
  v9 = *(v8 + 84);
  v10 = *(v8 + 80);
  if (v9 <= v6)
  {
    v11 = *(*(v5 - 8) + 84);
  }

  else
  {
    v11 = *(v8 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v12 = *(*(v5 - 8) + 64) + v10;
  v13 = a2 - v11;
  if (a2 <= v11)
  {
LABEL_25:
    if (v6 < v9)
    {
      a1 = ((a1 + v12) & ~v10);
      v6 = *(v8 + 84);
      v5 = v7;
    }

    return __swift_getEnumTagSinglePayload(a1, v6, v5);
  }

  v14 = (v12 & ~v10) + *(*(v7 - 8) + 64);
  v15 = 8 * v14;
  if (v14 <= 3)
  {
    v17 = ((v13 + ~(-1 << v15)) >> v15) + 1;
    if (HIWORD(v17))
    {
      v16 = *(a1 + v14);
      if (!v16)
      {
        goto LABEL_24;
      }

      goto LABEL_14;
    }

    if (v17 > 0xFF)
    {
      v16 = *(a1 + v14);
      if (!*(a1 + v14))
      {
        goto LABEL_24;
      }

      goto LABEL_14;
    }

    if (v17 < 2)
    {
LABEL_24:
      if (v11)
      {
        goto LABEL_25;
      }

      return 0;
    }
  }

  v16 = *(a1 + v14);
  if (!*(a1 + v14))
  {
    goto LABEL_24;
  }

LABEL_14:
  v18 = (v16 - 1) << v15;
  if (v14 > 3)
  {
    v18 = 0;
  }

  if (v14)
  {
    if (v14 <= 3)
    {
      v19 = v14;
    }

    else
    {
      v19 = 4;
    }

    switch(v19)
    {
      case 2:
        v20 = *a1;
        break;
      case 3:
        v20 = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        v20 = *a1;
        break;
      default:
        v20 = *a1;
        break;
    }
  }

  else
  {
    v20 = 0;
  }

  return v11 + (v20 | v18) + 1;
}

void sub_1E3E66EF4(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = a1;
  v7 = *(a4 + 16);
  v8 = *(a4 + 24);
  v9 = *(*(v7 - 8) + 84);
  v10 = *(v8 - 8);
  v11 = *(v10 + 84);
  if (v11 <= v9)
  {
    v12 = *(*(v7 - 8) + 84);
  }

  else
  {
    v12 = *(v10 + 84);
  }

  v13 = *(v10 + 80);
  v14 = *(*(v7 - 8) + 64) + v13;
  v15 = (v14 & ~v13) + *(*(v8 - 8) + 64);
  v16 = 8 * v15;
  v17 = a3 >= v12;
  v18 = a3 - v12;
  if (v18 != 0 && v17)
  {
    if (v15 <= 3)
    {
      v24 = ((v18 + ~(-1 << v16)) >> v16) + 1;
      if (HIWORD(v24))
      {
        v19 = 4;
      }

      else
      {
        if (v24 < 0x100)
        {
          v25 = 1;
        }

        else
        {
          v25 = 2;
        }

        if (v24 >= 2)
        {
          v19 = v25;
        }

        else
        {
          v19 = 0;
        }
      }
    }

    else
    {
      v19 = 1;
    }
  }

  else
  {
    v19 = 0;
  }

  if (v12 >= a2)
  {
    switch(v19)
    {
      case 1:
        *(a1 + v15) = 0;
        if (a2)
        {
          goto LABEL_27;
        }

        break;
      case 2:
        *(a1 + v15) = 0;
        if (a2)
        {
          goto LABEL_27;
        }

        break;
      case 3:
LABEL_42:
        __break(1u);
        break;
      case 4:
        *(a1 + v15) = 0;
        goto LABEL_26;
      default:
LABEL_26:
        if (a2)
        {
LABEL_27:
          if (v9 < v11)
          {
            a1 = (v14 + a1) & ~v13;
            v9 = v11;
            v7 = v8;
          }

          __swift_storeEnumTagSinglePayload(a1, a2, v9, v7);
        }

        break;
    }
  }

  else
  {
    v20 = ~v12 + a2;
    if (v15 < 4)
    {
      v23 = (v20 >> v16) + 1;
      if (v15)
      {
        v26 = v20 & ~(-1 << v16);
        v27 = OUTLINED_FUNCTION_32_0();
        bzero(v27, v28);
        if (v15 == 3)
        {
          *v6 = v26;
          *(v6 + 2) = BYTE2(v26);
        }

        else if (v15 == 2)
        {
          *v6 = v26;
        }

        else
        {
          *v6 = v20;
        }
      }
    }

    else
    {
      v21 = OUTLINED_FUNCTION_32_0();
      bzero(v21, v22);
      *v6 = v20;
      v23 = 1;
    }

    switch(v19)
    {
      case 1:
        *(v6 + v15) = v23;
        break;
      case 2:
        *(v6 + v15) = v23;
        break;
      case 3:
        goto LABEL_42;
      case 4:
        *(v6 + v15) = v23;
        break;
      default:
        return;
    }
  }
}

unint64_t sub_1E3E67190()
{
  result = qword_1EE2A0A58[0];
  if (!qword_1EE2A0A58[0])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3A478, &qword_1E42D76B8);
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE2A0A58);
  }

  return result;
}

uint64_t sub_1E3E6722C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1E3E67284(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = OUTLINED_FUNCTION_36_58(a1, a2, a3, a4, a5, a6, a7, a8, v23, v25, v27, v29);
  OUTLINED_FUNCTION_36_58(v8, v9, v10, v11, v12, v13, v14, v15, v24, v26, v28, v30);
  sub_1E3E65860();
  v17 = v16;
  v18 = sub_1E4201734();
  OUTLINED_FUNCTION_3_203();
  v21 = sub_1E3E6722C(v19, v20, MEMORY[0x1E697ED28]);
  return MEMORY[0x1E690B6D0](v18, v21, v17, 0.0);
}

uint64_t sub_1E3E67350(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1E37414E0(a1, a2, a3);
  v3 = sub_1E4205DB4();
  sub_1E3E673C4(v3, v4, v5);
  return sub_1E4205DB4();
}

unint64_t sub_1E3E673C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECF3A508;
  if (!qword_1ECF3A508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3A508);
  }

  return result;
}

uint64_t sub_1E3E67418(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = a2;
  v7 = a1;
  if ((sub_1E373F6E0(a1, a2, a3, a4, a5, a6) & 1) == 0)
  {
    return 0;
  }

  return sub_1E389CC78(HIWORD(v7), HIWORD(v6), v8);
}

uint64_t sub_1E3E6746C()
{
  v0 = sub_1E4207B44();
  v3 = sub_1E37414E0(v0, v1, v2);
  v5 = OUTLINED_FUNCTION_43_53(v3, &qword_1F5D5CE68, v3, v4);
  v8 = sub_1E3E673C4(v5, v6, v7);
  OUTLINED_FUNCTION_43_53(v8, &type metadata for CollectionAppearanceType, v8, v9);
  return sub_1E4207BA4();
}

uint64_t sub_1E3E67504(uint64_t a1)
{
  v1 = sub_1E4207B44();
  v4 = sub_1E37414E0(v1, v2, v3);
  v6 = OUTLINED_FUNCTION_43_53(v4, &qword_1F5D5CE68, v4, v5);
  v9 = sub_1E3E673C4(v6, v7, v8);
  OUTLINED_FUNCTION_43_53(v9, &type metadata for CollectionAppearanceType, v9, v10);
  return sub_1E4207BA4();
}

uint64_t sub_1E3E675D0(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_9_1(a1);
  *(v2 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_1E3E67628(void *a1))(uint64_t a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x38uLL);
  *a1 = v3;
  v4 = OBJC_IVAR____TtC8VideosUI25SearchStackViewController_delegate;
  v3[5] = v1;
  v3[6] = v4;
  v5 = v1 + v4;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v7 = *(v5 + 8);
  v3[3] = Strong;
  v3[4] = v7;
  return sub_1E3900F50;
}

uint64_t sub_1E3E676B4(uint64_t a1)
{
  OUTLINED_FUNCTION_29_0(a1);
  v2 = *v1;

  return v2;
}

uint64_t sub_1E3E676F8(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_9_1(a1);
  *v2 = a1;
  v2[1] = a2;
}

uint64_t sub_1E3E67794()
{
  v1 = OBJC_IVAR____TtC8VideosUI25SearchStackViewController_isShowingHints;
  OUTLINED_FUNCTION_5_0(v0 + OBJC_IVAR____TtC8VideosUI25SearchStackViewController_isShowingHints, v3);
  return *(v0 + v1);
}

uint64_t sub_1E3E677D0(char a1)
{
  v3 = OBJC_IVAR____TtC8VideosUI25SearchStackViewController_isShowingHints;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1E3E67870()
{
  v1 = OBJC_IVAR____TtC8VideosUI25SearchStackViewController____lazy_storage___portraitFullScreenSizeClass;
  result = *(v0 + OBJC_IVAR____TtC8VideosUI25SearchStackViewController____lazy_storage___portraitFullScreenSizeClass);
  if (result == 8)
  {
    v3 = v0;
    if ([objc_opt_self() isPad])
    {
      v4 = objc_opt_self();
      v5 = [v4 mainScreen];
      [v5 vui_bounds];
      OUTLINED_FUNCTION_3();

      v6 = OUTLINED_FUNCTION_14_25();
      v7 = [v4 mainScreen];
      [v7 vui_bounds];
      v9 = v8;
      v11 = v10;
      v13 = v12;
      v15 = v14;

      v17.origin.x = v9;
      v17.origin.y = v11;
      v17.size.width = v13;
      v17.size.height = v15;
      Height = CGRectGetHeight(v17);
      if (Height < v6)
      {
        v6 = Height;
      }

      type metadata accessor for LayoutGrid();
      result = sub_1E3A2579C(v6);
    }

    else
    {
      result = 7;
    }

    *(v3 + v1) = result;
  }

  return result;
}

uint64_t sub_1E3E6799C(uint64_t a1)
{
  OUTLINED_FUNCTION_29_0(a1);
  v2 = *v1;
  sub_1E34AF604(*v1, v1[1]);
  return v2;
}

uint64_t sub_1E3E679E4(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_9_1(a1);
  v5 = *v2;
  v6 = v2[1];
  *v2 = a1;
  v2[1] = a2;
  return sub_1E34AF594(v5, v6);
}

uint64_t sub_1E3E67A80()
{
  v1 = OBJC_IVAR____TtC8VideosUI25SearchStackViewController____lazy_storage___prototypeCellDictionary;
  if (*(v0 + OBJC_IVAR____TtC8VideosUI25SearchStackViewController____lazy_storage___prototypeCellDictionary))
  {
    v2 = *(v0 + OBJC_IVAR____TtC8VideosUI25SearchStackViewController____lazy_storage___prototypeCellDictionary);
  }

  else
  {
    v3 = sub_1E3280A90(0, &qword_1EE23B120, 0x1E69DC7F8);
    sub_1E3E67B18(v3, v4, v5);
    v2 = sub_1E4205CB4();
    *(v0 + v1) = v2;
  }

  return v2;
}

unint64_t sub_1E3E67B18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECF3A518;
  if (!qword_1ECF3A518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3A518);
  }

  return result;
}

uint64_t (*sub_1E3E67B84(uint64_t *a1))()
{
  a1[1] = v1;
  *a1 = sub_1E3E67A80();
  return sub_1E3E67BCC;
}

id sub_1E3E67C18(uint64_t a1)
{
  *(v1 + OBJC_IVAR____TtC8VideosUI25SearchStackViewController_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  v2 = (v1 + OBJC_IVAR____TtC8VideosUI25SearchStackViewController_validResultCategoryId);
  *v2 = 0;
  v2[1] = 0;
  *(v1 + OBJC_IVAR____TtC8VideosUI25SearchStackViewController_isShowingHints) = 0;
  *(v1 + OBJC_IVAR____TtC8VideosUI25SearchStackViewController____lazy_storage___portraitFullScreenSizeClass) = 8;
  v3 = (v1 + OBJC_IVAR____TtC8VideosUI25SearchStackViewController_scrollHandler);
  *v3 = 0;
  v3[1] = 0;
  *(v1 + OBJC_IVAR____TtC8VideosUI25SearchStackViewController____lazy_storage___prototypeCellDictionary) = 0;

  j__OUTLINED_FUNCTION_18();
  sub_1E41C9E78();
  v5 = v4;
  v6 = type metadata accessor for CollectionImpressionManager();
  v7 = v5;
  v9[3] = v6;
  v9[4] = &off_1F5D8D100;
  v9[0] = sub_1E3F0AE3C();
  sub_1E41C8454(v9);

  return v7;
}

void sub_1E3E67D0C()
{
  *(v0 + OBJC_IVAR____TtC8VideosUI25SearchStackViewController_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  v1 = (v0 + OBJC_IVAR____TtC8VideosUI25SearchStackViewController_validResultCategoryId);
  *v1 = 0;
  v1[1] = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI25SearchStackViewController_isShowingHints) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI25SearchStackViewController____lazy_storage___portraitFullScreenSizeClass) = 8;
  v2 = (v0 + OBJC_IVAR____TtC8VideosUI25SearchStackViewController_scrollHandler);
  *v2 = 0;
  v2[1] = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI25SearchStackViewController____lazy_storage___prototypeCellDictionary) = 0;
  sub_1E42076B4();
  __break(1u);
}

double sub_1E3E67DE8()
{
  v9.receiver = v0;
  v9.super_class = type metadata accessor for SearchStackViewController(0);
  objc_msgSendSuper2(&v9, sel_vui_viewDidLoad);
  OUTLINED_FUNCTION_26_3();
  v2 = *((*MEMORY[0x1E69E7D40] & v1) + 0x1B8);
  v3 = v2();
  [v3 setKeyboardDismissMode_];

  v4 = v2();
  sub_1E4206934();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D2C0, &unk_1E429D880);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1E4297BE0;
  v6 = sub_1E42001D4();
  v7 = MEMORY[0x1E69DC2B0];
  *(v5 + 32) = v6;
  *(v5 + 40) = v7;
  swift_allocObject();
  swift_unknownObjectWeakInit();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A4F0, &unk_1E429D890);
  sub_1E4206944();
  swift_unknownObjectRelease();

  return result;
}

uint64_t type metadata accessor for SearchStackViewController(uint64_t a1)
{
  result = qword_1EE295FA0;
  if (!qword_1EE295FA0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1E3E67FA4()
{
  OUTLINED_FUNCTION_5_0(v0 + 16, v5);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = (*((*MEMORY[0x1E69E7D40] & *Strong) + 0x5D8))(v4);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3A578, &unk_1E42D79A0);
    sub_1E4205D14();
    v3(v4, 0);
  }
}

id sub_1E3E680BC(void *a1)
{
  v2 = v1;
  v4 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_5();
  v10 = v9 - v8;
  v25.receiver = v2;
  v25.super_class = type metadata accessor for SearchStackViewController(0);
  result = objc_msgSendSuper2(&v25, sel_vui_didMoveToParentViewController_, a1);
  if (a1)
  {
    v12 = sub_1E324FBDC();
    (*(v6 + 16))(v10, v12, v4);
    v13 = a1;
    v14 = sub_1E41FFC94();
    v15 = sub_1E4206814();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      *v16 = 138412290;
      *(v16 + 4) = v13;
      *v17 = a1;
      v18 = v13;
      _os_log_impl(&dword_1E323F000, v14, v15, "SearchController::SearchStack:: calling did host from did move to parent %@", v16, 0xCu);
      sub_1E325F748(v17, &unk_1ECF28E30, &qword_1E429E820);
      OUTLINED_FUNCTION_6_0();
      OUTLINED_FUNCTION_6_0();
    }

    v19 = (*(v6 + 8))(v10, v4);
    result = (*((*MEMORY[0x1E69E7D40] & *v2) + 0x550))(v19);
    if (result)
    {
      v21 = v20;
      ObjectType = swift_getObjectType();
      OUTLINED_FUNCTION_18_1();
      v24 = (*(v23 + 440))();
      (*(v21 + 16))(v24, v2, ObjectType, v21);

      return swift_unknownObjectRelease();
    }
  }

  return result;
}

void sub_1E3E683AC(uint64_t a1)
{
  v3 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_5();
  v9 = v8 - v7;
  if (a1)
  {
    v10 = [v1 parentViewController];
    if (v10)
    {

      v11 = sub_1E324FBDC();
      (*(v5 + 16))(v9, v11, v3);
      v12 = v1;
      v13 = sub_1E41FFC94();
      v14 = sub_1E4206814();

      if (os_log_type_enabled(v13, v14))
      {
        v15 = swift_slowAlloc();
        v16 = swift_slowAlloc();
        *v15 = 138412290;
        v17 = [v12 parentViewController];
        *(v15 + 4) = v17;
        *v16 = v17;
        _os_log_impl(&dword_1E323F000, v13, v14, "SearchController::SearchStack:: calling did host from did move to window with parent %@", v15, 0xCu);
        sub_1E325F748(v16, &unk_1ECF28E30, &qword_1E429E820);
        OUTLINED_FUNCTION_6_0();
        OUTLINED_FUNCTION_6_0();
      }

      v18 = (*(v5 + 8))(v9, v3);
      v19 = MEMORY[0x1E69E7D40];
      if ((*((*MEMORY[0x1E69E7D40] & *v12) + 0x550))(v18))
      {
        v21 = v20;
        ObjectType = swift_getObjectType();
        v23 = (*((*v19 & *v12) + 0x1B8))();
        (*(v21 + 16))(v23, v12, ObjectType, v21);

        swift_unknownObjectRelease();
      }
    }
  }
}

double sub_1E3E686B8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = sub_1E41FE7E4();
  v20.receiver = v3;
  v20.super_class = type metadata accessor for SearchStackViewController(0);
  objc_msgSendSuper2(&v20, sel_vuiCollectionView_didSelectItemAt_, a1, v5);

  v6 = (*((*MEMORY[0x1E69E7D40] & *v3) + 0x218))();
  sub_1E42000B4();

  if (v18)
  {
    OUTLINED_FUNCTION_18_1();
    v9 = *(v8 + 1360);

    if (v9(v10))
    {
      v12 = v11;
      ObjectType = swift_getObjectType();
      (*(v12 + 8))(v19, 0, ObjectType, v12);
      v14 = OUTLINED_FUNCTION_53();
      sub_1E3790548(v14, v15, v19);

      swift_unknownObjectRelease();
    }

    else
    {
      v16 = OUTLINED_FUNCTION_53();
      sub_1E3790548(v16, v17, v19);
    }
  }

  return result;
}

void sub_1E3E68924(uint64_t a1)
{
  sub_1E41CCFC8(a1);
  type metadata accessor for HintListCell();
  swift_getObjCClassFromMetadata();
  sub_1E384EE08(218);
  sub_1E4205ED4();
  OUTLINED_FUNCTION_7_8();
  v3 = OUTLINED_FUNCTION_1_238();
  [v3 v4];

  if (sub_1E39DFFC8() & 1) != 0 || (TVAppFeature.isEnabled.getter(10, v5, v6))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF3A530, &qword_1E42A98A8);
    swift_getObjCClassFromMetadata();
    sub_1E384EE08(220);
    sub_1E4205ED4();
    OUTLINED_FUNCTION_7_8();
    v9 = OUTLINED_FUNCTION_1_238();
    [v9 v10];
  }

  if (TVAppFeature.isEnabled.getter(10, v7, v8))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF3A530, &qword_1E42A98A8);
    swift_getObjCClassFromMetadata();
    sub_1E384EE08(219);
    sub_1E4205ED4();
    OUTLINED_FUNCTION_7_8();
    v11 = OUTLINED_FUNCTION_1_238();
    [v11 v12];

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D518, &unk_1E42D7820);
    swift_getObjCClassFromMetadata();
    sub_1E384EE08(221);
    sub_1E4205ED4();
    OUTLINED_FUNCTION_7_8();
    v13 = OUTLINED_FUNCTION_1_238();
    [v13 v14];

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF3A540, &qword_1E42A98B8);
    swift_getObjCClassFromMetadata();
    v15 = 213;
  }

  else
  {
    type metadata accessor for CardCollectionViewCell();
    swift_getObjCClassFromMetadata();
    sub_1E384EE08(213);
    sub_1E4205ED4();
    OUTLINED_FUNCTION_7_8();
    v16 = OUTLINED_FUNCTION_1_238();
    [v16 v17];

    v15 = 216;
  }

  sub_1E384EE08(v15);
  v18 = sub_1E4205ED4();

  v19 = OUTLINED_FUNCTION_1_238();
  [v19 v20];

  type metadata accessor for SearchListCell();
  swift_getObjCClassFromMetadata();
  v21 = sub_1E4205ED4();
  v22 = OUTLINED_FUNCTION_1_238();
  [v22 v23];

  v24 = sub_1E4205ED4();
  v25 = OUTLINED_FUNCTION_1_238();
  [v25 v26];

  if (TVAppFeature.isEnabled.getter(10, v27, v28))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D4F0, &unk_1E42D7800);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    sub_1E384EE08(214);
    v30 = MEMORY[0x1E69E6158];
    OUTLINED_FUNCTION_17_119(v31, v32, v33, v34, v35, v36, v37, v38, v31);
    sub_1E4205ED4();
    OUTLINED_FUNCTION_10_65();
    v39 = OUTLINED_FUNCTION_6_178();
    [v39 v40];

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF3A520, &qword_1E42A98C8);
    v41 = swift_getObjCClassFromMetadata();
    sub_1E384EE08(217);
    OUTLINED_FUNCTION_17_119(v42, v43, v44, v45, v46, v47, v48, v49, v42);
    sub_1E4205ED4();
    OUTLINED_FUNCTION_10_65();
    v50 = OUTLINED_FUNCTION_6_178();
    [v50 v51];

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D4A0, &unk_1E42D7810);
    v52 = swift_getObjCClassFromMetadata();
    sub_1E384EE08(170);
    OUTLINED_FUNCTION_17_119(v53, v54, v55, v56, v57, v58, v59, v60, v53);
    sub_1E4205ED4();
    OUTLINED_FUNCTION_38();

    v61 = OUTLINED_FUNCTION_6_178();
    v63 = v52;
  }

  else
  {
    type metadata accessor for CardCollectionViewCell();
    v30 = swift_getObjCClassFromMetadata();
    sub_1E384EE08(214);
    OUTLINED_FUNCTION_9_147(v64, v65, v66, v67, v68, v69, v70, v71, v64);
    sub_1E4205ED4();
    OUTLINED_FUNCTION_10_65();
    v72 = OUTLINED_FUNCTION_1_238();
    [v72 v73];

    type metadata accessor for MonogramLockupCell();
    v74 = swift_getObjCClassFromMetadata();
    sub_1E384EE08(217);
    OUTLINED_FUNCTION_9_147(v75, v76, v77, v78, v79, v80, v81, v82, v75);
    sub_1E4205ED4();
    OUTLINED_FUNCTION_38();

    v61 = OUTLINED_FUNCTION_6_178();
    v63 = v74;
  }

  [v61 v62];

  type metadata accessor for MonogramLockupCell();
  swift_getObjCClassFromMetadata();
  sub_1E384EE08(215);
  v83 = MEMORY[0x1E69E61D0];
  OUTLINED_FUNCTION_9_147(v84, v85, v86, v87, v88, v89, v90, v91, v84);
  sub_1E4205ED4();
  OUTLINED_FUNCTION_10_65();
  v92 = OUTLINED_FUNCTION_1_238();
  [v92 v93];

  type metadata accessor for QueryDescriptionBannerViewCell();
  swift_getObjCClassFromMetadata();
  sub_1E384EE08(89);
  OUTLINED_FUNCTION_9_147(v94, v95, v96, v97, v98, v99, v100, v101, v94);
  sub_1E4205ED4();
  OUTLINED_FUNCTION_7_8();
  v102 = OUTLINED_FUNCTION_1_238();
  [v102 v103];
}

uint64_t sub_1E3E68DB8(uint64_t a1)
{
  v2 = v1;
  sub_1E41CCFCC(a1);
  v3 = sub_1E41D6804();
  v4 = *v3;
  v5 = v3[1];
  v6 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x210);

  v7 = v6(v153);
  v9 = v8;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v150 = *v9;
  sub_1E38C5C90(v4, v5, 0xD000000000000029, 0x80000001E4286510, isUniquelyReferenced_nonNull_native);
  *v9 = v150;
  v19 = OUTLINED_FUNCTION_20_102(v11, v12, v13, v14, v15, v16, v17, v18, v109, a1, v123, v129, v136, v144, v145, v146, v147, v148, v149, v150, v151, v152, v153[0]);
  v7(v19);
  v130 = sub_1E3CE414C();
  v20 = *v130;
  v21 = v130[1];

  v30 = OUTLINED_FUNCTION_34_63(v22, v23, v24, v25, v26, v27, v28, v29, v110, v117, "-list-header-element-kind", v130, v137, v144, v145, v146, v147, v148, v149, v150, v151, v152, v153[0]);
  v31 = v6(v30);
  v33 = v32;
  v34 = swift_isUniquelyReferenced_nonNull_native();
  v150 = *v33;
  sub_1E38C5C90(v20, v21, 0xD000000000000026, 0x80000001E4286540, v34);
  *v33 = v150;
  v43 = OUTLINED_FUNCTION_20_102(v35, v36, v37, v38, v39, v40, v41, v42, v111, v118, v124, v131, v138, v144, v145, v146, v147, v148, v149, v150, v151, v152, v153[0]);
  v31(v43);
  type metadata accessor for SearchTopResultsListHeader();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v45 = sub_1E4205ED4();

  v46 = sub_1E4205ED4();

  v47 = v119;
  [v119 vui:ObjCClassFromMetadata registerClass:v45 forSupplementaryViewOfKind:v46 withReuseIdentifier:?];

  v48 = *((*MEMORY[0x1E69E7D40] & *v2) + 0x1E0);
  v57 = OUTLINED_FUNCTION_34_63(v49, v50, v51, v52, v53, v54, v55, v56, v112, v119, v125, v132, v139, v144, v145, v146, v147, v148, v149, v150, v151, v152, v153[0]);
  v58 = v48(v57);
  v60 = v59;
  v61 = swift_isUniquelyReferenced_nonNull_native();
  v150 = *v60;
  v62 = sub_1E3E6C880(0xD000000000000029, 0x80000001E4286510, 142, v61);
  *v60 = v150;
  v70 = OUTLINED_FUNCTION_20_102(v62, v63, v64, v65, v66, v67, v68, v69, v113, v120, v126, v133, v140, v144, v145, v146, v147, v148, v149, v150, v151, v152, v153[0]);
  v58(v70);
  type metadata accessor for QueryDescriptionBannerViewCell();
  v71 = swift_getObjCClassFromMetadata();
  v72 = sub_1E3EF63A0();
  OUTLINED_FUNCTION_5_0(v72, &v150);

  v73 = sub_1E4205ED4();

  v74 = sub_1E3EF6394();
  OUTLINED_FUNCTION_5_0(v74, &v147);

  v75 = sub_1E4205ED4();

  [v47 vui:v71 registerClass:v73 forSupplementaryViewOfKind:v75 withReuseIdentifier:?];

  OUTLINED_FUNCTION_5_0(v72, &v144);
  v76 = *v72;
  v77 = v72[1];

  v86 = OUTLINED_FUNCTION_34_63(v78, v79, v80, v81, v82, v83, v84, v85, v114, v121, v127, v134, v141, v144, v145, v146, v147, v148, v149, v150, v151, v152, v153[0]);
  v87 = v48(v86);
  v89 = v88;
  v90 = swift_isUniquelyReferenced_nonNull_native();
  v142 = *v89;
  sub_1E3E6C880(v76, v77, 89, v90);
  *v89 = v142;
  v87(v153, 0);
  type metadata accessor for SearchHistoryListHeaderView();
  v91 = swift_getObjCClassFromMetadata();
  v92 = v128;
  v93 = sub_1E4205ED4();

  v94 = sub_1E4205ED4();

  [v47 vui:v91 registerClass:v93 forSupplementaryViewOfKind:v94 withReuseIdentifier:?];

  v103 = OUTLINED_FUNCTION_34_63(v95, v96, v97, v98, v99, v100, v101, v102, v115, v122, v128, v135, v142, v144, v145, v146, v147, v148, v149, v150, v151, v152, v153[0]);
  v104 = v48(v103);
  v106 = v105;
  v107 = swift_isUniquelyReferenced_nonNull_native();
  v143 = *v106;
  sub_1E3E6C880(0xD000000000000026, v92 | 0x8000000000000000, 143, v107);
  *v106 = v143;
  return v104(v153, 0);
}

uint64_t sub_1E3E69240(uint64_t a1)
{
  OUTLINED_FUNCTION_21();
  v2 += 173;
  v3 = *v2;
  (*v2)();
  if (!v4)
  {
LABEL_11:
    v11 = 1;
    return v11 & 1;
  }

  v6 = *(a1 + 16);
  v7 = *(a1 + 24);
  v8 = (v3)(v5);
  if (!v7)
  {
    if (v9)
    {
      v11 = 0;
LABEL_14:

      return v11 & 1;
    }

    goto LABEL_11;
  }

  if (v9)
  {
    if (v6 == v8 && v7 == v9)
    {
      v11 = 1;
    }

    else
    {
      v11 = sub_1E42079A4();
    }

    goto LABEL_14;
  }

  v11 = 0;
  return v11 & 1;
}

void sub_1E3E69328(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v7 = type metadata accessor for SearchCollectionViewModel();
  v8 = OUTLINED_FUNCTION_22_10(v7);
  if (v8)
  {
    v9 = v8;
    if (a3)
    {
      swift_getObjectType();
      OUTLINED_FUNCTION_38();

      v10 = sub_1E40175B0();
    }

    else
    {

      v10 = 0.0;
    }

    type metadata accessor for LayoutGrid();
    v24 = sub_1E3A2579C(v10);
    (*(*v9 + 1664))();
    if ((TVAppFeature.isEnabled.getter(10, v25, v26) & 1) == 0 || (sub_1E373F6E0(v9[49], 133, v27, v28, v29, v30) & 1) == 0 || (v31 = (*(*v9 + 1344))(), (sub_1E373F6E0(v31, 118, v32, v33, v34, v35) & 1) == 0))
    {
      v36 = sub_1E373F6E0(v9[49], 132, v27, v28, v29, v30);
      v37 = *v9;
      if (v36)
      {
        v38 = (*(v37 + 1344))();
        if (sub_1E373F6E0(v38, 119, v39, v40, v41, v42))
        {
          OUTLINED_FUNCTION_5_190();
          v23 = sub_1E3ADB20C();
          if ((sub_1E3A24FDC(v24) & 1) == 0)
          {
            goto LABEL_34;
          }

LABEL_25:
          OUTLINED_FUNCTION_154();
          if (((*(v50 + 1408))() & 1) == 0)
          {
            sub_1E3280A90(0, &qword_1EE23AEC0, 0x1E6995548);
            v51 = sub_1E42062A4();
            [v23 setBoundarySupplementaryItems_];
          }

          goto LABEL_34;
        }

        if (sub_1E373F6E0(v38, 118, v43, v44, v45, v46))
        {
          goto LABEL_28;
        }
      }

      else if (((*(v37 + 1672))() & 1) == 0)
      {
        OUTLINED_FUNCTION_5_190();
        v23 = sub_1E3ADB20C();
        v47 = sub_1E3A24FDC(v24);
        if ((v47 & 1) == 0)
        {
          goto LABEL_34;
        }

        *v68 = v9[49];
        sub_1E3741534(v47, v48, v49);
        if (sub_1E4205E84())
        {
          goto LABEL_34;
        }

        goto LABEL_25;
      }

      OUTLINED_FUNCTION_5_190();
      sub_1E3AD9A2C(v53);
      goto LABEL_30;
    }

LABEL_28:
    OUTLINED_FUNCTION_5_190();
    sub_1E3ADA628(v52);
LABEL_30:
    v23 = *v68;
    v54 = v69;
    v55 = v70;
    v56 = v71;
    v57 = v72;
    v58 = v73;
    v59 = v74;

    v61 = *&v68[8];
    v60 = *&v68[24];
    v63 = *&v68[40];
    v62 = *&v68[56];
    v65 = *&v68[72];
    v64 = *&v68[88];
    v67 = *&v68[104];
    v66 = *&v68[120];
    goto LABEL_36;
  }

  v11 = type metadata accessor for CollectionViewModel();
  v12 = OUTLINED_FUNCTION_22_10(v11);
  if (v12)
  {
    v18 = *(v12 + 16);
    v17 = *(v12 + 24);

    v19 = sub_1E3BA9824();
    if (v17)
    {
      if (v18 == *v19 && v17 == v19[1])
      {
      }

      else
      {
        v21 = sub_1E42079A4();

        if ((v21 & 1) == 0)
        {
          goto LABEL_11;
        }
      }

      v23 = sub_1E3ADB20C();
LABEL_34:

      goto LABEL_35;
    }

LABEL_11:
  }

  if (sub_1E373F6E0(*(a2 + 98), 89, v13, v14, v15, v16))
  {
    sub_1E3AD9330();
    v23 = v22;
LABEL_35:
    sub_1E3790540(v68);
    v66 = *&v68[112];
    v67 = *&v68[96];
    v64 = *&v68[80];
    v65 = *&v68[64];
    v62 = *&v68[48];
    v63 = *&v68[32];
    v60 = *&v68[16];
    v61 = *v68;
    v54 = *&v68[128];
    v55 = v69;
    v56 = v70;
    v57 = v71;
    v58 = v72;
    v59 = v73;
    goto LABEL_36;
  }

  sub_1E41CCFD0();
  v23 = *v68;
  v66 = *&v68[120];
  v64 = *&v68[88];
  v67 = *&v68[104];
  v62 = *&v68[56];
  v65 = *&v68[72];
  v60 = *&v68[24];
  v63 = *&v68[40];
  v61 = *&v68[8];
  v54 = v69;
  v55 = v70;
  v56 = v71;
  v57 = v72;
  v58 = v73;
  v59 = v74;
LABEL_36:
  *a4 = v23;
  *(a4 + 8) = v61;
  *(a4 + 24) = v60;
  *(a4 + 40) = v63;
  *(a4 + 56) = v62;
  *(a4 + 72) = v65;
  *(a4 + 88) = v64;
  *(a4 + 104) = v67;
  *(a4 + 120) = v66;
  *(a4 + 136) = v54;
  *(a4 + 144) = v55;
  *(a4 + 152) = v56;
  *(a4 + 160) = v57;
  *(a4 + 168) = v58;
  *(a4 + 176) = v59;
}

void sub_1E3E697C8(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for SearchCollectionViewModel();
  v5 = OUTLINED_FUNCTION_4_84(v4);
  if (v5)
  {
    v6 = v5;
    v7 = *(*a1 + 960);

    if (v7(v8))
    {
      v9 = type metadata accessor for SearchViewModel();
      v10 = OUTLINED_FUNCTION_22_10(v9);
      if (v10)
      {
        v11 = v10;
        v12 = sub_1E38BAE74(v107);
        v100 = v107[0];
        v103 = v107[4];
        v104 = v107[3];
        v13 = v109;
        v14 = v108;
        v99 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x1B8);
        v15 = v99(v12);
        v16 = sub_1E407F528(v15);
        v18 = v17;

        v19 = (*(*v6 + 1584))();
        OUTLINED_FUNCTION_23_86();

        if (sub_1E373F6E0(v6, 216, v20, v21, v22, v23) & 1) != 0 || (sub_1E373F6E0(v11[49], 215, v24, v25, v26, v27))
        {
          sub_1E389CC78(v19, 1, v24);
        }

        v102 = v14 | (v13 << 16);
        OUTLINED_FUNCTION_26();
        v98 = v30;
        v105 = (*(v29 + 1064))(v19, v30 & 1);
        v31 = *(*v11 + 392);
        if (v31())
        {
          OUTLINED_FUNCTION_30();
          v33 = (*(v32 + 1560))();

          if ((v31)(v34))
          {
            OUTLINED_FUNCTION_26_0();
            v36 = (*(v35 + 1576))();

            if (v36)
            {
              v97 = v36;
              v96 = v33;
              sub_1E3C2AE10();
              v38 = v37;
              v40 = v39;
              v42 = v41;
              if (TVAppFeature.isEnabled.getter(10, v39, v41))
              {
                if (v31())
                {
                  OUTLINED_FUNCTION_30();
                  (*(v44 + 1640))(v38, v40, v42);
                }
              }

              else
              {
                OUTLINED_FUNCTION_26();
                (*(v45 + 1056))(v38, v40, v42, v19);
              }

              if (sub_1E389CC78(v19, 1, v43))
              {
                sub_1E3E6C0C8(v105, v96, v46);
              }
            }
          }
        }

        v47 = v100 & 0xFFFFFFFFFFFFFF00;
        v48 = v11[49];
        OUTLINED_FUNCTION_15_94();
        v50 = (*(v49 + 1480))();
        v51 = v48 & 0xFF00FFFF | (v19 << 16);
        v52 = sub_1E3E6A064(v51, v50);

        if (v52)
        {

          [v52 prepareForReuse];
          v54 = [v52 vuiCellView];
          v55 = OUTLINED_FUNCTION_4_206();
          [v56 v57];

          v58 = v52;
LABEL_47:
          type metadata accessor for SearchCellFactory();
          v110[0] = v47 | 1;
          *&v110[1] = v16;
          v110[2] = v18;
          v110[3] = v104;
          v110[4] = v103;
          v112 = BYTE2(v102);
          v111 = v102;
          sub_1E3B44C90(v58, v11, v110, v6, v105);

          OUTLINED_FUNCTION_45_54();
          return;
        }

        v101 = v100 & 0xFFFFFFFFFFFFFF00;
        if (sub_1E389CC78(v19, 2, v53))
        {
          v61 = 0x80000001E42864F0;
          v62 = TVAppFeature.isEnabled.getter(10, v59, v60);
          if ((v62 & 1) != 0 && (LOWORD(v110[0]) = v11[49], sub_1E3741534(v62, v63, v64), (sub_1E4205E84() & 1) == 0))
          {
            OUTLINED_FUNCTION_23_86();

            sub_1E384EE08(&qword_1F5D5CE68);
            v66 = v65;
            v61 = v78;
          }

          else
          {

            v66 = 0xD00000000000001ALL;
          }

          v79 = (v99)(v65);
          OUTLINED_FUNCTION_15_94();
          v81 = (*(v80 + 224))(v66, v61);

          if (v81)
          {
            goto LABEL_41;
          }
        }

        else if (sub_1E389CC78(v19, 1, v60))
        {
          v69 = 0x80000001E42864B0;
          if (v98)
          {
            v70 = 0xD000000000000018;
            OUTLINED_FUNCTION_23_86();

            if (sub_1E373F6E0(v50, 216, v71, v72, v73, v74))
            {
              v70 = 0xD00000000000001DLL;
              v69 = 0x80000001E42864D0;
            }
          }

          else if (TVAppFeature.isEnabled.getter(10, v67, v68))
          {
            OUTLINED_FUNCTION_23_86();

            sub_1E384EE08(v50);
            v70 = v82;
            v69 = v83;
          }

          else
          {
            v70 = 0xD000000000000018;
          }

          v84 = (v99)();
          OUTLINED_FUNCTION_15_94();
          v86 = (*(v85 + 224))(v70, v69);

          if (v86)
          {
            goto LABEL_41;
          }
        }

        else
        {
          v75 = (v99)();
          OUTLINED_FUNCTION_23_86();

          sub_1E384EE08(v2);
          OUTLINED_FUNCTION_15_94();
          v77 = (*(v76 + 224))();

          if (v77)
          {
LABEL_41:
            swift_getObjCClassFromMetadata();
            v87 = OUTLINED_FUNCTION_4_206();
            v58 = [v88 v89];
LABEL_43:
            OUTLINED_FUNCTION_15_94();
            v91 = *(v90 + 1496);
            v52 = v58;
            v92 = v91(v110);
            v94 = v93;
            if (v58)
            {
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v106 = *v94;
              sub_1E3E6C9B0(v52, v51, isUniquelyReferenced_nonNull_native);
              *v94 = v106;
            }

            else
            {
            }

            v92(v110, 0);
            v47 = v101;
            goto LABEL_47;
          }
        }

        v58 = 0;
        goto LABEL_43;
      }
    }
  }

  OUTLINED_FUNCTION_45_54();

  j__OUTLINED_FUNCTION_3_24();
}

void *sub_1E3E6A064(int a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v3 = sub_1E3E6C518(a1 & 0xFFFFFF);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = *(*(a2 + 56) + 8 * v3);
  v6 = v5;
  return v5;
}

void sub_1E3E6A0B0(void *a1, uint64_t a2, unsigned __int16 *a3)
{
  v112 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF296B0, &unk_1E429BA90);
  OUTLINED_FUNCTION_0_10();
  v109 = v6;
  MEMORY[0x1EEE9AC00](v7);
  v9 = v100 - v8;
  OUTLINED_FUNCTION_26_3();
  v11 = *((*MEMORY[0x1E69E7D40] & v10) + 0x218);
  v12 = v11();
  sub_1E4200104();

  v13 = v11();
  sub_1E42000B4();

  v110 = v9;
  if (v122)
  {
    v114 = v121;
    v115 = v122;
    v116 = v123;
    sub_1E4200034();

    v14 = v121;
    v15 = v122;
    v113 = v123;
  }

  else
  {
    v14 = 0;
    v113 = 0;
    v15 = 0;
  }

  type metadata accessor for LayoutGrid();
  sub_1E3E6C2B0();
  v17 = sub_1E3A2579C(v16);
  type metadata accessor for SearchViewModel();
  v18 = swift_dynamicCastClass();
  v108 = v14;
  v111 = v15;
  if (v18)
  {
    if (v15)
    {
      v23 = v18;
      type metadata accessor for SearchCollectionViewModel();
      v24 = swift_dynamicCastClass();
      if (v24)
      {
        v25 = v24;
        v106 = v5;
        OUTLINED_FUNCTION_26_0();
        v27 = *(v26 + 1656);

        v27(v17);

        v28 = sub_1E3E6BCE4(a3, v25);
        v30 = v29;

        v121 = v28;
        v122 = v30;
        sub_1E4206174();
        v31 = sub_1E4205ED4();

        v32 = sub_1E41FE7E4();
        v107 = [v112 vui:v31 dequeueReusableCellWithIdentifier:v32 indexPath:?];

        v33 = *(*v25 + 1584);
        v103 = *v25 + 1584;
        v102 = v33;
        v34 = v33();
        v35 = a3[49];
        v40 = sub_1E373F6E0(v35, 216, v36, v37, v38, v39);
        v104 = v34;
        if (v40 & 1) != 0 || (sub_1E373F6E0(v35, 215, v41, v42, v43, v44))
        {
          v45 = sub_1E389CC78(v34, 1, v41);
        }

        else
        {
          v45 = 0;
        }

        v63 = [v112 vuiTraitCollection];
        sub_1E3C2AE10();
        v67 = v66;
        v68 = v64;
        v69 = v65;
        v105 = v64;
        if ((v45 & 1) != 0 || (TVAppFeature.isEnabled.getter(10, v64, v65) & 1) == 0)
        {
          v75 = v67;
          v74 = v104;
          v73 = (*(*v23 + 1056))(v75, v68, v69, v104);
        }

        else
        {
          v70 = (*v23 + 392);
          v101 = *v70;
          v100[1] = v70;

          v72 = v101(v71);

          if (v72)
          {
            (*(*v72 + 1640))(v67, v105, v69);
          }

          v74 = v104;
        }

        v76 = (v102)(v73);
        v77 = (*(*v23 + 1064))(v76, v45 & 1);
        if (sub_1E389CC78(v74, 1, v78))
        {
          sub_1E3E6C0C8(v77, v17, v80);
        }

        v81 = 0;
        if ((v45 & 1) != 0 || (TVAppFeature.isEnabled.getter(10, v79, v80) & 1) == 0)
        {
          v84 = 0;
          v85 = 0;
          v86 = 0;
          v83 = 2;
          v87 = 0;
        }

        else
        {
          v82 = sub_1E38BAE74(&v114);
          v83 = v114;
          v84 = v117;
          v85 = v118;
          v86 = v119 | (v120 << 16);
          if (v114 == 2)
          {
            v81 = v115;
            v87 = v116;
          }

          else
          {
            [v112 frame];
            v81 = v94;
            v87 = v95;
          }
        }

        type metadata accessor for SearchCellFactory();
        v121 = v83;
        v122 = v81;
        v123 = v87;
        v124 = v84;
        v125 = v85;
        v127 = BYTE2(v86);
        v126 = v86;
        v88 = v107;
        v89 = v107;

        type metadata accessor for Accessibility();
        sub_1E40A8408();
        if (v90)
        {
          v91 = sub_1E4205ED4();
        }

        else
        {
          v91 = 0;
        }

        v5 = v106;
        v54 = v113;
        [v89 setVuiAccessibilityIdentifier_];

        v61 = v109;
        v62 = v110;
        goto LABEL_51;
      }
    }
  }

  v46 = sub_1E373F6E0(a3[49], 218, v19, v20, v21, v22);
  v47 = sub_1E41CD42C(v112, a2, a3);
  if ((v46 & 1) == 0)
  {
    goto LABEL_16;
  }

  v107 = v47;
  v48 = (*(*a3 + 392))(v47);
  sub_1E3E6C0C8(v48, v17, v49);

  if (!v15)
  {
    v62 = v110;
    v54 = v113;
    if (v107)
    {
      v56 = v107;
LABEL_47:
      v97 = type metadata accessor for Accessibility();
      v98 = v56;
      sub_1E40A8408();
      if (v99)
      {
        sub_1E4205ED4();
        OUTLINED_FUNCTION_38();
      }

      else
      {
        v97 = 0;
      }

      v61 = v109;
      [v98 setVuiAccessibilityIdentifier_];

      goto LABEL_51;
    }

    v61 = v109;
LABEL_51:
    (*(v61 + 8))(v62, v5);
    sub_1E3790548(v108, v111, v54);
    OUTLINED_FUNCTION_54_0();
    return;
  }

  v50 = v107;
  if (!v107)
  {
LABEL_16:
    v61 = v109;
    v62 = v110;
    v54 = v113;
    goto LABEL_51;
  }

  v106 = v5;
  type metadata accessor for HintListCell();
  v51 = swift_dynamicCastClass();
  v52 = v15;
  v53 = v15;
  v54 = v113;
  sub_1E3E6CAD4(v14, v52);
  if (!v51)
  {

    v56 = v50;
    v5 = v106;
    v62 = v110;
    goto LABEL_47;
  }

  v55 = v14;
  v56 = v50;
  v57 = v110;
  v58 = sub_1E4200014();
  v121 = v55;
  v122 = v53;
  v123 = v54;
  v59 = sub_1E41FFFA4();
  if (sub_1E39DFFC8())
  {
    OUTLINED_FUNCTION_154();
    (*(v60 + 152))(1);

LABEL_46:

    v5 = v106;
    v62 = v57;
    goto LABEL_47;
  }

  if (v58 < 2)
  {
    goto LABEL_44;
  }

  v92 = sub_1E41FE844();
  if (!__OFSUB__(v59, 1))
  {
    if (v92 == v59 - 1)
    {
      OUTLINED_FUNCTION_154();
      (*(v93 + 152))(0);
LABEL_45:

      v54 = v113;

      goto LABEL_46;
    }

LABEL_44:
    OUTLINED_FUNCTION_154();
    (*(v96 + 152))(1);
    goto LABEL_45;
  }

  __break(1u);
}