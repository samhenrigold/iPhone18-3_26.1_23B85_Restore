uint64_t sub_1C5D87D38(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = a1;
  if (a4 >> 61)
  {
    if (a4 >> 61 == 3)
    {
      OUTLINED_FUNCTION_14_20();
      if (v5)
      {
        v6 = type metadata accessor for PausedState();
        v7 = OUTLINED_FUNCTION_5_27(v6);
        OUTLINED_FUNCTION_2_27(v7, v8, v9, v10, v11, v12, v13, v14, v16);
        sub_1C5D94070();
      }

      return 1;
    }
  }

  else if (*(v4 + 64) != 1)
  {
    OUTLINED_FUNCTION_14_20();
    return 1;
  }

  return sub_1C5C8CCE8(a1, a2, a3, a4);
}

unint64_t sub_1C5D87DEC()
{
  OUTLINED_FUNCTION_10_20();
  sub_1C6017540();

  if (*(v0 + 64))
  {
    v1 = 1702195828;
  }

  else
  {
    v1 = 0x65736C6166;
  }

  if (*(v0 + 64))
  {
    v2 = 0xE400000000000000;
  }

  else
  {
    v2 = 0xE500000000000000;
  }

  MEMORY[0x1C69534E0](v1, v2);

  OUTLINED_FUNCTION_12_20();
  MEMORY[0x1C69534E0](*(v0 + 16), *(v0 + 24));
  MEMORY[0x1C69534E0](93, 0xE100000000000000);
  return 0xD00000000000001BLL;
}

uint64_t sub_1C5D87EB0()
{
  sub_1C5D88490();
  OUTLINED_FUNCTION_7_24();

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t sub_1C5D87F04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, float a5)
{
  *(v5 + 64) = a3;
  *(v5 + 72) = a1;
  *(v5 + 52) = a5;
  *(v5 + 56) = a2;
  v6 = *(a4 + 16);
  *(v5 + 16) = *a4;
  *(v5 + 32) = v6;
  *(v5 + 47) = *(a4 + 31);
  return v5;
}

void sub_1C5D87F28()
{
  OUTLINED_FUNCTION_13_17();
  memcpy(__dst, __src, sizeof(__dst));
  sub_1C5C8AD44();
  OUTLINED_FUNCTION_6_25();
  sub_1C5D94F80();
}

uint64_t sub_1C5D87F84(unsigned int *a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = *(a1 + 9) | ((*(a1 + 13) | (*(a1 + 15) << 16)) << 32);
  v8 = *(a1 + 2);
  v7 = *(a1 + 3);
  v9 = *(a1 + 4);
  switch(*(a1 + 66) >> 4)
  {
    case 1:
      v10 = v4 | (a1[1] << 32);
      v11 = *(a1 + 40) | (*(a1 + 41) << 8) | (*(a1 + 42) << 16) | (*(a1 + 43) << 24) | (*(a1 + 47) << 56);
      v12 = a1[12] & 1;
      v13 = *(a1 + 49) & 1;
      v25 = *(a1 + 50) & 1;
      type metadata accessor for InitialLoadingState();
      OUTLINED_FUNCTION_7_24();
      v14 = swift_allocObject();
      *(v14 + 56) = v10;
      *(v14 + 64) = v5 & 1;
      *(v14 + 72) = 0;
      *(v14 + 80) = 0;
      *(v14 + 16) = v8;
      *(v14 + 24) = v7;
      *(v14 + 32) = v9;
      *(v14 + 40) = v11;
      *(v14 + 48) = v12;
      *(v14 + 49) = v13;
      *(v14 + 50) = v25;
      *(v14 + 88) = 0;
      swift_unknownObjectRetain();

      sub_1C5C74C28(v9, v11);
      sub_1C5D94070();

      return 1;
    case 2:
      if (*(v2 + 52) == *&v4)
      {
        goto LABEL_13;
      }

      v20 = v5 | (v6 << 8);
      v21 = *(v2 + 72);
      v22 = *(v2 + 32);
      v23 = *(v2 + 40);
      v27[0] = *(v2 + 16);
      type metadata accessor for InitialPreLoadingState();
      v24 = swift_allocObject();
      *(v24 + 64) = v8;
      *(v24 + 72) = v21;
      *(v24 + 52) = v4;
      *(v24 + 56) = v20;
      *(v24 + 16) = *(v2 + 16);
      *(v24 + 32) = v22;
      *(v24 + 40) = v23;
      OUTLINED_FUNCTION_4_29(v24);
      swift_unknownObjectRetain();
      sub_1C5CC57E0(v27, v26);
      sub_1C5C74C28(v22, v23);
      sub_1C5D94070();
      break;
    case 3:
      if (*(v2 + 52) == 0.0)
      {
        goto LABEL_13;
      }

      v16 = *(v2 + 72);
      v17 = *(v2 + 32);
      v18 = *(v2 + 40);
      v27[0] = *(v2 + 16);
      type metadata accessor for InitialPreLoadingState();
      v19 = swift_allocObject();
      *(v19 + 72) = v16;
      *(v19 + 60) = 0;
      *(v19 + 52) = 0;
      *(v19 + 68) = 0;
      *(v19 + 16) = *(v2 + 16);
      *(v19 + 32) = v17;
      *(v19 + 40) = v18;
      OUTLINED_FUNCTION_4_29(v19);
      sub_1C5CC57E0(v27, v26);
      sub_1C5C74C28(v17, v18);
      sub_1C5D94070();
      break;
    case 4:
      LOBYTE(v27[0]) = *(a1 + 8);
      *(v27 + 1) = v6;
      BYTE7(v27[0]) = BYTE6(v6);
      *(v27 + 5) = WORD2(v6);
      OUTLINED_FUNCTION_0_43();
      sub_1C5D94008();
      goto LABEL_13;
    case 10:
      LOBYTE(v27[0]) = *(a1 + 8);
      *(v27 + 1) = v6;
      BYTE7(v27[0]) = BYTE6(v6);
      *(v27 + 5) = WORD2(v6);
      OUTLINED_FUNCTION_0_43();
      sub_1C5D94AAC();
      goto LABEL_13;
    default:

      return sub_1C5D9111C(a1, a2);
  }

LABEL_13:
  sub_1C5D913C8(a1);
  return 1;
}

uint64_t sub_1C5D8827C()
{
  OUTLINED_FUNCTION_11_16();
  if (v1 <= 0x1E && (((1 << v1) & 0x40800300) != 0 || v1 == 29))
  {
    sub_1C5D94358();
    return 1;
  }

  else
  {

    return sub_1C5D912A0(v0);
  }
}

uint64_t sub_1C5D882EC(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = a1;
  if (a4 >> 61)
  {
    if (a4 >> 61 == 3)
    {
      OUTLINED_FUNCTION_14_20();
      if (v5)
      {
        v6 = type metadata accessor for PausedState();
        v7 = OUTLINED_FUNCTION_5_27(v6);
        OUTLINED_FUNCTION_2_27(v7, v8, v9, v10, v11, v12, v13, v14, v16);
        sub_1C5D94070();
      }

      return 1;
    }
  }

  else if (*(v4 + 52) <= 0.0)
  {
    OUTLINED_FUNCTION_14_20();
    return 1;
  }

  return sub_1C5C8CCE8(a1, a2, a3, a4);
}

uint64_t sub_1C5D883A0()
{
  OUTLINED_FUNCTION_10_20();
  sub_1C6017540();
  MEMORY[0x1C69534E0](0xD00000000000001ELL, 0x80000001C604F1B0);
  sub_1C6016D30();
  OUTLINED_FUNCTION_12_20();
  MEMORY[0x1C69534E0](*(v0 + 16), *(v0 + 24));
  MEMORY[0x1C69534E0](93, 0xE100000000000000);
  return v2;
}

uint64_t sub_1C5D88438()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  sub_1C5C74C18(v1, v2);
  swift_unknownObjectRelease();

  return swift_unknownObjectRelease();
}

void *sub_1C5D88490()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  sub_1C5C74C18(v1, v2);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return v0;
}

uint64_t sub_1C5D884E0()
{
  sub_1C5D88490();

  return MEMORY[0x1EEE6BDC0](v0, 80, 7);
}

void OUTLINED_FUNCTION_14_20()
{

  sub_1C5C8A7E4();
}

uint64_t sub_1C5D8856C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v5 = v4;
  v27 = a3;
  v28 = a1;
  v29 = a2;
  v6 = *a4;
  v7 = *(a4 + 8);
  v8 = *(a4 + 16);
  v9 = *(a4 + 24);
  v10 = *(a4 + 34);
  v11 = *(a4 + 32);
  v12 = sub_1C6015060();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v7)
  {
    v16 = v11 | (v10 << 16);
    v17 = (v16 >> 8) & 1;
    v18 = HIWORD(v16) & 1;
    v19 = v27;
  }

  else
  {
    sub_1C6015050();
    sub_1C5D88F50();
    v30 = sub_1C60177D0();
    v31 = v20;
    (*(v13 + 8))(v15, v12);
    v21 = v27;
    if (v27)
    {
      v22 = 0xD000000000000014;
    }

    else
    {
      v22 = 0;
    }

    if (v27)
    {
      v23 = 0x80000001C604F250;
    }

    else
    {
      v23 = 0xE000000000000000;
    }

    MEMORY[0x1C69534E0](v22, v23);

    MEMORY[0x1C69534E0](41, 0xE100000000000000);
    v8 = 0;
    v9 = 0;
    LOBYTE(v16) = 0;
    LOBYTE(v17) = 0;
    LOBYTE(v18) = 0;
    v6 = v30;
    v7 = v31;
    v19 = v21;
  }

  *(v5 + 16) = v6;
  *(v5 + 24) = v7;
  *(v5 + 32) = v8;
  *(v5 + 40) = v9;
  *(v5 + 48) = v16 & 1;
  *(v5 + 49) = v17;
  *(v5 + 50) = v18;
  v24 = v29;
  *(v5 + 56) = v28;
  *(v5 + 64) = v24;
  *(v5 + 72) = v19 & 1;
  return v5;
}

uint64_t sub_1C5D88724()
{
  sub_1C5D8672C(__src);
  memcpy(__dst, __src, sizeof(__dst));
  sub_1C5C8AD44();
  sub_1C5D88DF8();
  sub_1C5D94F00();
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);
  v3 = *(v0 + 72);
  v4 = *(v0 + 32);
  v7 = *(v0 + 16);
  v8[0] = v4;
  *(v8 + 15) = *(v0 + 47);
  return sub_1C5D94FF0(v1, v2, v3, &v7, v5);
}

uint64_t sub_1C5D887B0(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  v6 = *(a1 + 24);
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  v9 = *(a1 + 41);
  v10 = *(a1 + 42);
  v11 = *(a1 + 66);
  v12 = v11 >> 4;
  if (v11 >> 4 == 2)
  {
    v27 = *(a1 + 16);
    v23 = *(a1 + 47);
    v22 = *(a1 + 43);
    v25 = *(a1 + 48);
    v26 = *(a1 + 65);
    v24 = *(a1 + 64);
    sub_1C5D94F00();
    if (v20 != *&v3)
    {
      *&v28[0] = v7;
      *(&v28[0] + 1) = v8 | (v9 << 8) | (v10 << 16) | ((v22 | (v23 << 32)) << 24);
      v28[1] = v25;
      LOBYTE(v28[2]) = v24 & 1;
      BYTE1(v28[2]) = v26 & 1;
      BYTE2(v28[2]) = v11 & 1;
      sub_1C5D94008();
      sub_1C5D94FF0(v5, v27, v6 & 1, v28, *&v3);
    }

    v19 = a1;
    goto LABEL_10;
  }

  v13 = *(a1 + 25) | ((*(a1 + 29) | (*(a1 + 31) << 16)) << 32);
  if (v12 == 10)
  {
    *&v28[0] = *(a1 + 8);
    *(&v28[0] + 1) = v4;
    v16 = v6 | (v13 << 8);
    *&v28[1] = v16;
    *(&v28[1] + 1) = v7;
    LOBYTE(v28[2]) = v8 & 1;
    BYTE1(v28[2]) = v9 & 1;
    BYTE2(v28[2]) = v10 & 1;
    type metadata accessor for PlayingState();
    swift_allocObject();
    OUTLINED_FUNCTION_0_44();
    sub_1C5D94070();

    sub_1C5D94F40();
    v18 = v17;
    type metadata accessor for JumpToTimeState();
    swift_allocObject();
    sub_1C5D89830(0, 2, 0, v28, v3, v18);

    sub_1C5C74C28(v16, v7);
    sub_1C5D945C4();
    goto LABEL_6;
  }

  if (v12 == 3)
  {
    v14 = (v6 | (v13 << 8));
    v15 = *(a1 + 16);
    type metadata accessor for PausedState();
    memset(v28, 0, 35);
    swift_allocObject();
    swift_unknownObjectRetain();
    sub_1C5D869C0(v14);
    sub_1C5D8B884(v5, v15, 0, v14, v28, 0.0);
    sub_1C5D94070();
LABEL_6:

    v19 = a1;
LABEL_10:
    sub_1C5D913C8(v19);
    return 1;
  }

  return sub_1C5D9111C(a1, a2);
}

uint64_t sub_1C5D88A98(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 == 1 && (a1 & 1) == 0)
  {
    v5 = 0;
    memset(v4, 0, sizeof(v4));
    v6 = -1;
    type metadata accessor for ResettingQueueState();
    *(swift_allocObject() + 91) = 0;
    sub_1C5D8562C(v4, 0, 0);
    sub_1C5D945C4();

    return 1;
  }

  else
  {

    return sub_1C5D91320(a1, a2, a3);
  }
}

uint64_t sub_1C5D88B5C(uint64_t *a1, uint64_t a2)
{
  v3 = (a1[8] >> 58) & 0x3C | (a1[8] >> 1) & 3;
  v4 = a1[3];
  switch(v3)
  {
    case 19:
      goto LABEL_12;
    case 20:
    case 23:
      goto LABEL_6;
    case 21:
      OUTLINED_FUNCTION_9_3();
      sub_1C5D94358();
      type metadata accessor for PlayingState();
      swift_allocObject();
      v5 = 1;
      OUTLINED_FUNCTION_0_44();
      sub_1C5D94070();
      goto LABEL_5;
    case 22:
      OUTLINED_FUNCTION_9_3();
      sub_1C5D94358();
      v9 = type metadata accessor for PausedState();
      OUTLINED_FUNCTION_5_27(v9);
      sub_1C5D869C0(v4);
      v10 = OUTLINED_FUNCTION_0_5();
      sub_1C5D8B884(v10, v11, v12, v4, v13, v14);
      sub_1C5D94070();

      return 1;
    case 24:
      if ((v4 - 1) < 2)
      {
        return 0;
      }

LABEL_12:
      OUTLINED_FUNCTION_9_3();
      sub_1C5D94358();
      return 1;
    default:
      if (v3 == 4)
      {
        v6 = a1[1];
        OUTLINED_FUNCTION_9_3();
        sub_1C5D94358();
        type metadata accessor for ErrorResolutionState();
        swift_allocObject();
        v5 = 1;
        sub_1C5D86C6C(a1, 0, 0, 1);
        swift_unknownObjectRetain();
        v7 = v6;

        OUTLINED_FUNCTION_9_3();
        sub_1C5D945C4();
LABEL_5:

        return v5;
      }

      else
      {
LABEL_6:

        return sub_1C5D912A0(a1);
      }
  }
}

uint64_t sub_1C5D88D2C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a1;
  if (a4 >> 61 == 3)
  {
    sub_1C5C8A7E4();
    if (v4)
    {
      v5 = type metadata accessor for PausedState();
      OUTLINED_FUNCTION_5_27(v5);
      v6 = OUTLINED_FUNCTION_0_5();
      sub_1C5D8B884(v6, v7, v8, 4, v9, v10);
      sub_1C5D94070();
    }

    return 1;
  }

  else
  {

    return sub_1C5C8CCE8(a1, a2, a3, a4);
  }
}

void sub_1C5D88DF8()
{
  if (*(v0 + 72) == 1 && [objc_opt_self() isSystemPodcasts])
  {
    v1 = objc_opt_self();

    [v1 requestBackgroundPlaybackInitiation];
  }
}

uint64_t sub_1C5D88E60()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  sub_1C5C74C18(v1, v2);

  return swift_unknownObjectRelease();
}

void *sub_1C5D88EB0()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  sub_1C5C74C18(v1, v2);
  swift_unknownObjectRelease();
  return v0;
}

uint64_t sub_1C5D88EF8()
{
  sub_1C5D88EB0();

  return MEMORY[0x1EEE6BDC0](v0, 73, 7);
}

unint64_t sub_1C5D88F50()
{
  result = qword_1EC1A9718;
  if (!qword_1EC1A9718)
  {
    sub_1C6015060();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1A9718);
  }

  return result;
}

uint64_t sub_1C5D88FA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 280) = 1;
  *(v5 + 288) = 0;
  *(v5 + 256) = a2;
  *(v5 + 264) = a3;
  *(v5 + 272) = a4;
  *(v5 + 240) = a5;
  *(v5 + 248) = a1;
  OUTLINED_FUNCTION_0_1();
  v6 = OUTLINED_FUNCTION_1_35();
  return sub_1C5D8B884(v6, v7, v8, 2, v9, v10);
}

uint64_t sub_1C5D88FF4(uint64_t result)
{
  if (*(v1 + 280) == 1)
  {
    sub_1C5C8A7E4();
    sub_1C5D8BA6C();
    result = sub_1C5D94864();
    if (result)
    {
      objc_opt_self();
      v2 = swift_dynamicCastObjCClass();
      if (v2)
      {
        v3 = v2;
        v4 = sub_1C5D62DEC();
        v5 = *(v1 + 16);
        v11 = xmmword_1C60311B0;
        v10 = v3;
        v12 = v5;
        v13 = v4;
        v14 = xmmword_1C60379B0;
        *&__src[0] = v1;
        *(&__src[0] + 1) = v3;
        __src[1] = xmmword_1C60311B0;
        *&__src[2] = v5;
        *(&__src[2] + 1) = v4;
        __src[4] = xmmword_1C60379B0;
        *&__src[5] = 0xD00000000000002ELL;
        *(&__src[5] + 1) = 0x80000001C604F300;
        memcpy(__dst, __src, 0x60uLL);
        sub_1C5D89738(__dst);
        memcpy(v15, __dst, sizeof(v15));
        sub_1C5D869C0(v5);

        sub_1C5D869C0(v5);

        swift_unknownObjectRetain();
        sub_1C5C8AD44();
        sub_1C5D8974C(__src);
        sub_1C5D94358();
        *&v8[0] = v1;
        *(&v8[0] + 1) = v3;
        v8[1] = xmmword_1C60311B0;
        *&v8[2] = v5;
        *(&v8[2] + 1) = v4;
        v8[4] = xmmword_1C60379B0;
        sub_1C5D8981C(v8);
        memcpy(v9, v8, sizeof(v9));
        sub_1C5D869C0(v5);

        swift_unknownObjectRetain();
        sub_1C5C8AD44();
        swift_unknownObjectRelease();
        sub_1C5D5D584(v5);
        swift_unknownObjectRelease();

        sub_1C5D5D584(v5);

        *(v1 + 288) = v4;
      }

      else
      {

        return swift_unknownObjectRelease();
      }
    }
  }

  return result;
}

uint64_t sub_1C5D89268(uint64_t a1)
{
  if (((*(a1 + 66) << 16) & 0xF00000) == 0x300000)
  {
    return 1;
  }

  else
  {
    return sub_1C5D8C2A4(a1);
  }
}

uint64_t sub_1C5D89288(uint64_t a1, uint64_t a2)
{
  if (((*(a1 + 66) << 16) & 0xF00000) == 0x300000)
  {
    v4 = *(a1 + 48);
    v3 = *(a1 + 56);
    v5 = *(a1 + 16);
    v6 = *(a1 + 24);
    v7 = *(a1 + 8);
    swift_unknownObjectRetain();
    sub_1C5D869C0(v6);

    sub_1C5C74C28(v4, v3);

    sub_1C5C74C18(v4, v3);
    type metadata accessor for PausedState();
    OUTLINED_FUNCTION_0_1();
    swift_allocObject();
    swift_unknownObjectRetain();
    sub_1C5D869C0(v6);
    sub_1C5D8B884(v7, v5, 1, v6, &v9, 0.0);
    sub_1C5D94070();

    sub_1C5D913C8(a1);
    swift_unknownObjectRelease();
    sub_1C5D5D584(v6);
    return 1;
  }

  else
  {

    return sub_1C5D8C350(a1, a2);
  }
}

uint64_t sub_1C5D893F0(uint64_t *a1, uint64_t a2)
{
  if (((a1[8] >> 58) & 0x3C | (a1[8] >> 1) & 3) == 0x16)
  {
    return 0;
  }

  else
  {
    return sub_1C5D8BE88(a1, a2);
  }
}

uint64_t sub_1C5D89414(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v6 = a4 >> 61;
  if (a4 >> 61 == 3)
  {
    sub_1C5C8A7E4();
    return 1;
  }

  if (v6 == 2)
  {
    sub_1C5C8A7E4();
    type metadata accessor for PausedState();
    OUTLINED_FUNCTION_0_1();
    swift_allocObject();
    v11 = OUTLINED_FUNCTION_1_35();
    sub_1C5D8B884(v11, v12, v13, 3, v14, v15);
    goto LABEL_6;
  }

  if (v6 == 1)
  {
    sub_1C5C8A7E4();
    sub_1C5D89528(a5);
    type metadata accessor for InitiatingPlaybackState();
    OUTLINED_FUNCTION_0_1();
    swift_allocObject();
    v7 = OUTLINED_FUNCTION_1_35();
    sub_1C5D8856C(v7, v8, v9, v10);
LABEL_6:
    sub_1C5D94070();

    return 1;
  }

  return sub_1C5D8C640(a1, a2, a3, a4);
}

id sub_1C5D89528(uint64_t a1)
{
  result = *(a1 + 16);
  if (result)
  {
    result = [result rewindOnInterruptionDuration];
    if (v3 > 0.0)
    {
      v4 = *(v1 + 288);
      if (v4)
      {
        v5 = v3;

        sub_1C5D94F40();
        if (vabdd_f64(v6, *(v4 + 16)) < 0.1)
        {
          sub_1C5D94F40();
          if (v5 <= v7)
          {
            v8 = sub_1C5D950AC();
            if ((v9 & 1) != 0 || (v10 = *&v8, sub_1C5D94F40(), v11 < v10 - v5) || (sub_1C5D94F40(), v5 + v10 < v12))
            {
              sub_1C5D94F40();
              sub_1C5D950F0(v13, 0);
              sub_1C5D94F40();
              sub_1C5D95150();
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_1C5D89664()
{

  sub_1C5C8C748(*(v0 + 248), *(v0 + 256), *(v0 + 264), *(v0 + 272));
}

void *sub_1C5D896A0()
{
  v0 = sub_1C5D8C244();

  sub_1C5C8C748(*(v0 + 248), *(v0 + 256), *(v0 + 264), *(v0 + 272));

  return v0;
}

uint64_t sub_1C5D896E4()
{
  v0 = sub_1C5D896A0();

  return MEMORY[0x1EEE6BDC0](v0, 296, 7);
}

uint64_t sub_1C5D8974C(uint64_t a1)
{
  sub_1C5D897A8(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1C5D897A8(uint64_t a1)
{
  if (!qword_1EC1A8FD8)
  {
    type metadata accessor for State();
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata3, &qword_1EC1A8FD8);
    }
  }
}

uint64_t sub_1C5D89830(char a1, char a2, char a3, uint64_t a4, double a5, double a6)
{
  *(v6 + 136) = 0;
  *(v6 + 120) = 0u;
  *(v6 + 104) = 0u;
  *(v6 + 88) = 0u;
  *(v6 + 144) = xmmword_1C6039DE0;
  *(v6 + 16) = a5;
  *(v6 + 64) = a6;
  *(v6 + 72) = a5;
  *(v6 + 80) = a1;
  *(v6 + 59) = a2;
  *(v6 + 60) = a3;
  v7 = *(a4 + 16);
  *(v6 + 24) = *a4;
  *(v6 + 40) = v7;
  *(v6 + 55) = *(a4 + 31);
  return v6;
}

void sub_1C5D89880()
{
  __src[0] = v0;
  sub_1C5D8672C(__src);
  memcpy(__dst, __src, sizeof(__dst));
  sub_1C5C8AD44();
  if ((*(v0 + 80) & 1) == 0)
  {
    v1 = *(v0 + 40);
    v2 = *(v0 + 55);
    v8 = *(v0 + 24);
    v9[0] = v1;
    *(v9 + 15) = v2;
    v11 = v8;
    sub_1C5CC57E0(&v11, &v7);
    v3 = OUTLINED_FUNCTION_252();
    sub_1C5C74C28(v3, v4);
    sub_1C5D94AAC();
    sub_1C5CC583C(&v11);
    v5 = OUTLINED_FUNCTION_252();
    sub_1C5C74C18(v5, v6);
  }
}

uint64_t sub_1C5D89938(uint64_t *a1, uint64_t a2)
{
  v3 = v2;
  v7 = a1[1];
  v6 = a1[2];
  v8 = a1[3];
  v9 = *(a1 + 66) >> 4;
  switch(v9)
  {
    case 10:
      v30 = *(a1 + 41);
      v31 = *(a1 + 40);
      v32 = *(a1 + 42);
      v33 = a1[4];
      v34 = *a1;
      *&v40[0] = a1[1];
      *(&v40[0] + 1) = v6;
      *&v40[1] = v8;
      *(&v40[1] + 1) = v33;
      LOBYTE(v40[2]) = v31 & 1;
      BYTE1(v40[2]) = v30 & 1;
      BYTE2(v40[2]) = v32 & 1;
      *(v3 + 16) = v34;
      v35 = *(v3 + 40);
      v36 = *(v3 + 48);
      v37 = v40[0];
      v38 = v40[1];
      *(v3 + 55) = *(&v40[1] + 15);
      *(v3 + 40) = v38;
      *(v3 + 24) = v37;

      sub_1C5C74C28(v8, v33);

      sub_1C5C74C18(v35, v36);
      sub_1C5D94AAC();
      return 1;
    case 3:
      sub_1C5D94790();
      OUTLINED_FUNCTION_107();
      v21 = type metadata accessor for PlayingState();
      v22 = OUTLINED_FUNCTION_0(v21);

      if (v22)
      {
        v23 = type metadata accessor for PausedState();
        memset(v40, 0, 35);
        OUTLINED_FUNCTION_14(v23);
        swift_unknownObjectRetain();
        sub_1C5D869C0(v8);
        sub_1C5D8B884(v7, v6, 0, v8, v40, 0.0);
        sub_1C5D94070();

        v25 = *(v2 + 64);
        v24 = *(v2 + 72);
        v26 = *(v2 + 60);
        v15 = *(v2 + 40);
        v16 = *(v3 + 48);
        v41 = *(v3 + 24);
        type metadata accessor for JumpToTimeState();
        v27 = swift_allocObject();
        OUTLINED_FUNCTION_8_23(v27);
        *(v28 + 144) = xmmword_1C6039DE0;
        *(v28 + 16) = v24;
        *(v28 + 64) = v25;
        *(v28 + 72) = v24;
        *(v28 + 80) = 1;
        *(v28 + 59) = 2;
        *(v28 + 60) = v26;
        OUTLINED_FUNCTION_3_28(v28);
        v19 = &v41;
        v20 = &v39;
        goto LABEL_8;
      }

      break;
    case 2:
      sub_1C5D94790();
      OUTLINED_FUNCTION_107();
      v10 = type metadata accessor for PausedState();
      v11 = OUTLINED_FUNCTION_0(v10);

      if (v11)
      {
        type metadata accessor for PlayingState();
        swift_allocObject();
        sub_1C5D8EE9C();
        sub_1C5D94070();

        v13 = *(v2 + 64);
        v12 = *(v2 + 72);
        v14 = *(v2 + 60);
        v15 = *(v2 + 40);
        v16 = *(v3 + 48);
        v40[0] = *(v3 + 24);
        type metadata accessor for JumpToTimeState();
        v17 = swift_allocObject();
        OUTLINED_FUNCTION_8_23(v17);
        *(v18 + 144) = xmmword_1C6039DE0;
        *(v18 + 16) = v12;
        *(v18 + 64) = v13;
        *(v18 + 72) = v12;
        *(v18 + 80) = 1;
        *(v18 + 59) = 2;
        *(v18 + 60) = v14;
        OUTLINED_FUNCTION_3_28(v18);
        v19 = v40;
        v20 = &v41;
LABEL_8:
        sub_1C5CC57E0(v19, v20);
        sub_1C5C74C28(v15, v16);
        sub_1C5D945C4();

        return 1;
      }

      break;
  }

  return sub_1C5D9111C(a1, a2);
}

uint64_t sub_1C5D89C48(uint64_t *a1, uint64_t a2)
{
  v143 = a2;
  v3 = a1[1];
  v141 = *a1;
  v5 = a1[2];
  v4 = a1[3];
  v6 = a1[5];
  v139 = a1[4];
  v7 = a1[6];
  v8 = a1[7];
  v9 = a1[8];
  v10 = sub_1C6015060();
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v133 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = (v9 >> 58) & 0x3C | (v9 >> 1) & 3;
  v140 = v3;
  switch(v14)
  {
    case 19:
      swift_getObjectType();

      v15 = sub_1C5DEA0B4();
      v17 = v16;
      OUTLINED_FUNCTION_19_18();
      if (!sub_1C5D94864())
      {

        goto LABEL_75;
      }

      swift_getObjectType();
      v18 = sub_1C5DEA0B4();
      v20 = v19;
      swift_unknownObjectRelease();
      if (v15 == v18 && v17 == v20)
      {
      }

      else
      {
        v22 = OUTLINED_FUNCTION_71(v15, v17, v18);

        if ((v22 & 1) == 0)
        {
          goto LABEL_75;
        }
      }

      sub_1C5D951B8();
      if (v83 == 0.0)
      {
        goto LABEL_75;
      }

      v24 = 1;
      v102 = v142;
      *(v142 + 60) = 1;
      v103 = *(v102 + 16);
      type metadata accessor for EventTime();
      swift_allocObject();
      v104 = sub_1C5C8A6E0(0, 0, 0, 1, v103, v103);
      v151[0] = v141;
      v151[1] = v140;
      v151[2] = v5;
      v151[3] = v104;
      *&v151[7] = xmmword_1C603A050;
      *&v147[0] = v102;
      *(&v147[0] + 1) = v141;
      *&v147[1] = v140;
      *(&v147[1] + 1) = v5;
      v147[4] = xmmword_1C603A050;
      *&v147[2] = v104;
      *&v147[5] = 0xD000000000000031;
      *(&v147[5] + 1) = 0x80000001C604F400;
      memcpy(v148, v147, 0x60uLL);
      sub_1C5D89738(v148);
      memcpy(v152, v148, 0xD9uLL);
      swift_unknownObjectRetain_n();

      sub_1C5C8AD44();
      sub_1C5D8AE4C(v147, sub_1C5D897A8);
      sub_1C5D94358();

      goto LABEL_115;
    case 20:
    case 21:
    case 22:
    case 23:
    case 25:
    case 27:
    case 28:
      goto LABEL_76;
    case 24:
      swift_getObjectType();
      v33 = sub_1C5DEA0B4();
      v35 = v34;
      if (!sub_1C5D94864())
      {
        goto LABEL_75;
      }

      swift_getObjectType();
      v36 = sub_1C5DEA0B4();
      v38 = v37;
      swift_unknownObjectRelease();
      if (v33 == v36 && v35 == v38)
      {
      }

      else
      {
        v40 = OUTLINED_FUNCTION_71(v33, v35, v36);

        if ((v40 & 1) == 0)
        {
          goto LABEL_76;
        }
      }

      if (vabdd_f64(*&v141, *(v142 + 16)) < 0.5)
      {
        goto LABEL_91;
      }

      goto LABEL_76;
    case 26:
      if ((v140 & 0x7FFFFFFF) != 0)
      {
        goto LABEL_76;
      }

      v54 = sub_1C6016900();
      v55 = sub_1C6016940();
      v57 = v56;
      if (v55 == sub_1C6016940() && v57 == v58)
      {
      }

      else
      {
        v60 = sub_1C6017860();

        if ((v60 & 1) == 0)
        {
          v61 = a1;
          goto LABEL_77;
        }
      }

      v96 = type metadata accessor for PausedAtQueueEndState();
      OUTLINED_FUNCTION_14(v96);
      memset(v152, 0, 35);
      v97 = OUTLINED_FUNCTION_2_2();
      sub_1C5D8B884(v97, v98, v99, 5, v100, v101);
      sub_1C5D94070();
      goto LABEL_105;
    case 29:
      v135 = v13;
      v136 = v10;
      v137 = v9 & 0xFFFFFFFFFFFFFF9;
      v138 = v11;
      if (v4)
      {
        v30 = v142;
        v134 = *(v142 + 64);
        LOBYTE(v152[0]) = 0;
        v4 = 0;
        v31 = v140;
        v32 = v141 & 1;
        v9 = v9 & 0xFFFFFFFFFFFFFF8 | 0x7000000000000002;
        v8 &= 1u;
        swift_unknownObjectRetain();

        v5 = v134;
      }

      else
      {
        v31 = v140;
        swift_unknownObjectRetain();

        v32 = v141;
        v30 = v142;
      }

      v151[0] = v32;
      v151[1] = v31;
      v151[2] = v5;
      v151[3] = v4;
      v62 = v139;
      v151[4] = v139;
      v151[5] = v6;
      v151[6] = v7;
      v151[7] = v8;
      v151[8] = v9;
      memcpy(v147, v151, 0x48uLL);
      OUTLINED_FUNCTION_19_18();
      sub_1C5D94358();
      v63 = v6 == *(v30 + 24) && v7 == *(v30 + 32);
      v64 = v30;
      if (!v63 && (sub_1C6017860() & 1) == 0)
      {
        *&v148[0] = 0xD00000000000003CLL;
        *(&v148[0] + 1) = 0x80000001C604F440;
        sub_1C5D83FAC(v148);
        memcpy(v152, v148, 0xD9uLL);
        sub_1C5C8AD44();
        sub_1C5D7EF0C(v151);
        return 0;
      }

      OUTLINED_FUNCTION_20_17(v146);
      v65 = *v146;
      v66 = *&v146[64];
      if (*&v146[56] >> 1 == 0xFFFFFFFFLL && (*&v146[64] & 0xF000000000000007) == 0)
      {
        goto LABEL_83;
      }

      v148[0] = *v146;
      v148[1] = *&v146[16];
      v148[2] = *&v146[32];
      v148[3] = *&v146[48];
      *&v148[4] = *&v146[64];
      OUTLINED_FUNCTION_20_17(v152);
      sub_1C5D5D5AC(v152, v145);
      sub_1C5D94790();
      OUTLINED_FUNCTION_107();
      v67 = type metadata accessor for PlayingState();
      v68 = OUTLINED_FUNCTION_0(v67);

      if (v68 && ((v66 >> 58) & 0x3C | (v66 >> 1) & 3) == 7)
      {
        memcpy(v145, v146, sizeof(v145));
        sub_1C5D5D5AC(v145, v144);

        swift_getObjectType();
        v69 = sub_1C5DEA0B4();
        v71 = v70;
        v64 = v142;
        if (!v140)
        {
          OUTLINED_FUNCTION_0_45();
          sub_1C5D8AE4C(v146, v125);

          swift_unknownObjectRelease();
          goto LABEL_83;
        }

        v72 = v69;
        swift_getObjectType();
        v73 = sub_1C5DEA0B4();
        if (v72 == v73 && v71 == v74)
        {
        }

        else
        {
          v64 = OUTLINED_FUNCTION_71(v72, v71, v73);

          if ((v64 & 1) == 0)
          {
            OUTLINED_FUNCTION_0_45();
            sub_1C5D8AE4C(v146, v76);
            swift_unknownObjectRelease();
            v64 = v142;
            v62 = v139;
LABEL_83:
            if ((sub_1C5D94820() & 1) == 0 && *(v64 + 60) == 1 && v140)
            {
              v88 = v140;
              swift_unknownObjectRetain();
              sub_1C5D94790();
              OUTLINED_FUNCTION_107();
              v89 = type metadata accessor for PlayingState();
              if (OUTLINED_FUNCTION_0(v89))
              {

                swift_unknownObjectRetain();
                sub_1C5D951B8();
                LOBYTE(v145[0]) = 0;
                *&v152[0] = v88;
                DWORD2(v152[0]) = v90;
                *&v152[1] = v62;
                *(&v152[1] + 1) = 256;
                v152[2] = xmmword_1C60311B0;
                *&v152[3] = v137;
                *(&v152[3] + 8) = xmmword_1C603A060;

                sub_1C5D94358();

                swift_unknownObjectRelease_n();
              }

              else
              {
                swift_unknownObjectRelease();
              }
            }

            if (*(v64 + 59) == 2)
            {
              sub_1C5D943C0();
            }

            else
            {
              OUTLINED_FUNCTION_4_30();
              if (v105)
              {
                OUTLINED_FUNCTION_5_28();
                type metadata accessor for InitiatingPlaybackState();
                swift_allocObject();

                OUTLINED_FUNCTION_21_16();
                v106 = OUTLINED_FUNCTION_2_2();
                sub_1C5D8856C(v106, v107, v108, v109);
              }

              else
              {
                OUTLINED_FUNCTION_5_28();
                v110 = type metadata accessor for PausedState();
                OUTLINED_FUNCTION_14(v110);

                v111 = OUTLINED_FUNCTION_21_16();
                OUTLINED_FUNCTION_12_21(0.0, v111, v112, v113, v114, v145);
              }

              OUTLINED_FUNCTION_17_14();
              sub_1C5D94070();
            }

            if ((sub_1C5D94820() & 1) != 0 && (sub_1C5D94790(), OUTLINED_FUNCTION_107(), v115 = type metadata accessor for PlayingState(), v116 = OUTLINED_FUNCTION_0(v115), , v116))
            {
              type metadata accessor for StallingState();
              swift_allocObject();
              OUTLINED_FUNCTION_17_14();
              sub_1C5D945C4();
              sub_1C5D7EF0C(v151);
LABEL_105:
            }

            else
            {
              sub_1C5D7EF0C(v151);
            }

            return 1;
          }
        }

        OUTLINED_FUNCTION_13_18(v144);
        OUTLINED_FUNCTION_10_21();
        OUTLINED_FUNCTION_1_36(xmmword_1C6039DE0);
        sub_1C5D8AE4C(v144, v126);
        OUTLINED_FUNCTION_19_18();
        sub_1C5D94358();
        v24 = 1;
        sub_1C5D943C0();
        swift_unknownObjectRetain();
        sub_1C6015050();
        v127 = sub_1C6015030();
        v129 = v128;
        v130 = OUTLINED_FUNCTION_18_16();
        v131(v130);
        v149[0] = v127;
        v149[1] = v129;
        type metadata accessor for NaturalTransitionState();
        v150[0] = 0;
        v149[2] = 0;
        *(v150 + 7) = 0;
        v132 = swift_allocObject();
        sub_1C5D9366C(v65, 1, v149, v132);
        sub_1C5D945C4();
        sub_1C5D7EF0C(v151);
        sub_1C5D8AE4C(v146, v64);

LABEL_115:
        swift_unknownObjectRelease();
        return v24;
      }

      OUTLINED_FUNCTION_0_45();
      sub_1C5D8AE4C(v146, v87);
      v64 = v142;
      goto LABEL_83;
    case 30:
      v138 = v11;
      v41 = v142;
      OUTLINED_FUNCTION_20_17(v148);
      v42 = *&v148[0];
      v43 = *&v148[4];
      if (*(&v148[3] + 1) >> 1 == 0xFFFFFFFFLL && (*&v148[4] & 0xF000000000000007) == 0)
      {
        goto LABEL_66;
      }

      v152[0] = v148[0];
      v152[1] = v148[1];
      v152[2] = v148[2];
      v152[3] = v148[3];
      *&v152[4] = *&v148[4];
      OUTLINED_FUNCTION_20_17(v147);
      sub_1C5D5D5AC(v147, v151);
      sub_1C5D94790();
      OUTLINED_FUNCTION_107();
      v44 = type metadata accessor for PlayingState();
      v45 = OUTLINED_FUNCTION_0(v44);

      if (!v45 || ((v43 >> 58) & 0x3C | (v43 >> 1) & 3) != 7)
      {
        OUTLINED_FUNCTION_0_45();
        sub_1C5D8AE4C(v148, v77);
        goto LABEL_65;
      }

      memcpy(v151, v148, sizeof(v151));
      sub_1C5D5D5AC(v151, v146);

      swift_getObjectType();
      v46 = sub_1C5DEA0B4();
      v48 = v47;
      v41 = v142;
      if (!v141)
      {
        OUTLINED_FUNCTION_0_45();
        sub_1C5D8AE4C(v148, v117);

        swift_unknownObjectRelease();
        goto LABEL_66;
      }

      v49 = v46;
      swift_getObjectType();
      v50 = sub_1C5DEA0B4();
      if (v49 == v50 && v48 == v51)
      {

        goto LABEL_111;
      }

      v41 = OUTLINED_FUNCTION_71(v49, v48, v50);

      if (v41)
      {
LABEL_111:
        OUTLINED_FUNCTION_13_18(v146);
        OUTLINED_FUNCTION_10_21();
        OUTLINED_FUNCTION_1_36(xmmword_1C6039DE0);
        sub_1C5D8AE4C(v146, v118);
        OUTLINED_FUNCTION_19_18();
        sub_1C5D94358();
        sub_1C5D943C0();
        swift_unknownObjectRetain();
        sub_1C6015050();
        v119 = sub_1C6015030();
        v121 = v120;
        v122 = OUTLINED_FUNCTION_18_16();
        v123(v122);
        v145[0] = v119;
        v145[1] = v121;
        type metadata accessor for NaturalTransitionState();
        v145[2] = 0;
        v145[3] = 0;
        *(&v145[3] + 7) = 0;
        v124 = swift_allocObject();
        sub_1C5D9366C(v42, 1, v145, v124);
        OUTLINED_FUNCTION_17_14();
        sub_1C5D945C4();
        swift_unknownObjectRelease();

        sub_1C5D8AE4C(v148, v41);
        goto LABEL_91;
      }

      OUTLINED_FUNCTION_0_45();
      sub_1C5D8AE4C(v148, v53);
      swift_unknownObjectRelease();
LABEL_65:
      v41 = v142;
LABEL_66:
      if (*(v41 + 59) == 2)
      {
        sub_1C5D943C0();
      }

      else
      {
        OUTLINED_FUNCTION_4_30();
        if (v78)
        {
          OUTLINED_FUNCTION_7_25();
          type metadata accessor for InitiatingPlaybackState();
          swift_allocObject();

          OUTLINED_FUNCTION_21_16();
          v79 = OUTLINED_FUNCTION_2_2();
          sub_1C5D8856C(v79, v80, v81, v82);
        }

        else
        {
          OUTLINED_FUNCTION_7_25();
          v91 = type metadata accessor for PausedState();
          OUTLINED_FUNCTION_14(v91);

          v92 = OUTLINED_FUNCTION_21_16();
          OUTLINED_FUNCTION_12_21(0.0, v92, v93, v94, v95, v147);
        }

        OUTLINED_FUNCTION_17_14();
        sub_1C5D94070();
      }

LABEL_91:
      sub_1C5D94358();
      return 1;
    default:
      if ((v14 - 4) < 2)
      {
        sub_1C5D94358();
        sub_1C5D943C0();
        v23 = *(v142 + 59);
        type metadata accessor for ErrorResolutionState();
        swift_allocObject();
        sub_1C5D86C6C(a1, v23 != 2, v23 & 1, 1);
        sub_1C5D5D5AC(a1, v152);
        sub_1C5D945C4();

        return 1;
      }

      v140 = v149;
      if (v14 != 7)
      {
        goto LABEL_76;
      }

      swift_getObjectType();
      v138 = sub_1C5DEA0B4();
      v26 = v25;
      if (sub_1C5D94864())
      {
        swift_getObjectType();
        v137 = sub_1C5DEA0B4();
        v28 = v27;
        swift_unknownObjectRelease();
        if (v138 == v137 && v26 == v28)
        {

LABEL_81:
          OUTLINED_FUNCTION_13_18(v152);
          v85 = v140;
          v28[11] = v141;
          v28[12] = v85;
          v28[13] = v5;
          v28[14] = v4;
          v28[15] = v139;
          v28[16] = v6;
          v28[17] = v7;
          v28[18] = v8;
          v28[19] = v9;
          swift_unknownObjectRetain();

          OUTLINED_FUNCTION_0_45();
          sub_1C5D8AE4C(v152, v86);
          return 1;
        }

        LODWORD(v138) = OUTLINED_FUNCTION_71(v138, v26, v137);

        if (v138)
        {
          goto LABEL_81;
        }
      }

      else
      {
LABEL_75:
      }

LABEL_76:
      v61 = a1;
LABEL_77:

      return sub_1C5D912A0(v61);
  }
}

uint64_t sub_1C5D8AB84(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 == 1 && (a1 & 1) == 0)
  {
    sub_1C5D943C0();
    v5 = 0;
    memset(v4, 0, sizeof(v4));
    v6 = -1;
    type metadata accessor for ResettingQueueState();
    *(swift_allocObject() + 91) = 0;
    sub_1C5D8562C(v4, 0, 0);
    sub_1C5D945C4();

    return 1;
  }

  else
  {

    return sub_1C5D91320(a1, a2, a3);
  }
}

uint64_t sub_1C5D8AC54(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a1;
  if (a4 >> 61 == 3)
  {
    sub_1C5C8A7E4();
    if (v4)
    {
      v5 = type metadata accessor for PausedState();
      OUTLINED_FUNCTION_14(v5);
      v6 = OUTLINED_FUNCTION_2_2();
      sub_1C5D8B884(v6, v7, v8, 4, v9, v10);
      sub_1C5D94070();
    }

    return 1;
  }

  else
  {

    return sub_1C5C8CCE8(a1, a2, a3, a4);
  }
}

void *sub_1C5D8AD34()
{

  v0 = OUTLINED_FUNCTION_252();
  sub_1C5C74C18(v0, v1);
  return OUTLINED_FUNCTION_9_21();
}

uint64_t sub_1C5D8AD78()
{

  v1 = OUTLINED_FUNCTION_252();
  sub_1C5C74C18(v1, v2);
  OUTLINED_FUNCTION_9_21();
  return v0;
}

uint64_t sub_1C5D8ADC0()
{
  sub_1C5D8AD78();

  return MEMORY[0x1EEE6BDC0](v0, 160, 7);
}

void *sub_1C5D8AE28(void *result, void *a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, void *a7, unint64_t a8, unint64_t a9)
{
  if (a8 >> 1 != 0xFFFFFFFF || (a9 & 0xF000000000000007) != 0)
  {
    return sub_1C5D5D350(result, a2, a3, a4, a5, a6, a7, a8, a9);
  }

  return result;
}

uint64_t sub_1C5D8AE4C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1C5D8AEAC()
{
  if (!qword_1ED7DFBD8[0])
  {
    v0 = sub_1C6017350();
    if (!v1)
    {
      atomic_store(v0, qword_1ED7DFBD8);
    }
  }
}

double OUTLINED_FUNCTION_8_23(uint64_t a1)
{
  result = 0.0;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0;
  return result;
}

void *OUTLINED_FUNCTION_20_17(void *a1)
{

  return memcpy(a1, (v1 + 88), 0x48uLL);
}

uint64_t sub_1C5D8AF44(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a4 >> 61 == 5)
  {
    v6[30] = result;
    v6[31] = a2;
    v6[32] = a3;
    v6[33] = a4;
    v6[34] = a5;
    v6[35] = a6;
    OUTLINED_FUNCTION_0_1();
    v7 = OUTLINED_FUNCTION_0_46();
    return sub_1C5D8B884(v7, v8, v9, 6, v10, v11);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1C5D8AF8C(uint64_t a1)
{
  v2 = v1;
  sub_1C5D8BA6C();
  type metadata accessor for PausedState();
  if (!swift_dynamicCastClass())
  {
    v3 = *(v1 + 280);
    if (v3)
    {
      v4 = [swift_unknownObjectRetain() avPlayerItem];
      if (v4)
      {
        v5 = v4;
        v6 = sub_1C5D62DEC();
      }

      else
      {
        sub_1C6014F90();
        v8 = v7;
        type metadata accessor for EventTime();
        swift_allocObject();
        v6 = sub_1C5C8A6E0(0, 0, 0, 1, v8, v8);
      }

      v9 = *(v2 + 16);
      v15 = xmmword_1C60311B0;
      v14 = v3;
      v16 = v9;
      v17 = v6;
      v18 = xmmword_1C60379B0;
      *&__src[0] = v2;
      *(&__src[0] + 1) = v3;
      __src[1] = xmmword_1C60311B0;
      *&__src[2] = v9;
      *(&__src[2] + 1) = v6;
      __src[4] = xmmword_1C60379B0;
      *&__src[5] = 0xD000000000000048;
      *(&__src[5] + 1) = 0x80000001C604F520;
      memcpy(__dst, __src, 0x60uLL);
      sub_1C5D89738(__dst);
      memcpy(v19, __dst, sizeof(v19));
      swift_unknownObjectRetain();
      sub_1C5D869C0(v9);

      swift_unknownObjectRetain();
      sub_1C5D869C0(v9);

      sub_1C5C8AD44();
      sub_1C5D8974C(__src);
      sub_1C5D94358();
      *&v12[0] = v2;
      *(&v12[0] + 1) = v3;
      v12[1] = xmmword_1C60311B0;
      *&v12[2] = v9;
      *(&v12[2] + 1) = v6;
      v12[4] = xmmword_1C60379B0;
      sub_1C5D8981C(v12);
      memcpy(v13, v12, sizeof(v13));
      swift_unknownObjectRetain();
      sub_1C5D869C0(v9);

      sub_1C5C8AD44();
      swift_unknownObjectRelease();

      sub_1C5D5D584(v9);
      swift_unknownObjectRelease();

      sub_1C5D5D584(v9);
      swift_unknownObjectRelease();
    }
  }

  sub_1C5C8A7E4();
}

uint64_t sub_1C5D8B200(uint64_t a1)
{
  if (qword_1EC1A9680 != -1)
  {
    swift_once();
  }

  v2 = qword_1EC1BE470;
  v3 = *(a1 + 40);
  v4 = *(a1 + 32);
  switch(*(a1 + 66) >> 4)
  {
    case 2:
    case 3:
      v4 = *(a1 + 48);
      v3 = *(a1 + 56);
      if (v4)
      {
        goto LABEL_8;
      }

      break;
    case 4:
    case 8:
    case 10:
    case 12:
      v4 = *(a1 + 24);
      v3 = *(a1 + 32);
      if (v4)
      {
        goto LABEL_8;
      }

      break;
    case 6:
    case 7:
    case 9:
      v4 = *(a1 + 16);
      v3 = *(a1 + 24);
      goto LABEL_7;
    default:
LABEL_7:
      if (v4)
      {
LABEL_8:
        sub_1C5D61B3C(v10);
        v5 = v10[0];
        v6 = v10[1];
        v7 = v10[2];
        v8 = v10[3];
        sub_1C5C74C28(v4, v3);
        sub_1C5C74C18(v7, v8);
        v4(v5, v6, v2);
        sub_1C5C74C18(v4, v3);
      }

      break;
  }

  return 1;
}

uint64_t sub_1C5D8B334(uint64_t *a1, uint64_t a2)
{
  if (((a1[8] >> 58) & 0x3C | (a1[8] >> 1) & 3) == 0x17)
  {
    return OUTLINED_FUNCTION_2_15();
  }

  else
  {
    return sub_1C5D8BE88(a1, a2);
  }
}

uint64_t sub_1C5D8B358(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4 >> 61 == 6)
  {
    return sub_1C5D8C640(a1, a2, a3, a4);
  }

  else
  {
    return OUTLINED_FUNCTION_2_15();
  }
}

uint64_t sub_1C5D8B388()
{
  sub_1C5C8C748(*(v0 + 240), *(v0 + 248), *(v0 + 256), *(v0 + 264));

  return swift_unknownObjectRelease();
}

uint64_t sub_1C5D8B3C4()
{
  v1 = sub_1C5D8C244();
  OUTLINED_FUNCTION_3_29(v1);

  swift_unknownObjectRelease();
  return v0;
}

uint64_t sub_1C5D8B3FC()
{
  v0 = sub_1C5D8B3C4();

  return MEMORY[0x1EEE6BDC0](v0, 288, 7);
}

uint64_t sub_1C5D8B450(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[30] = a1;
  v4[31] = a2;
  v4[32] = a3;
  v4[33] = a4;
  OUTLINED_FUNCTION_0_1();
  v5 = OUTLINED_FUNCTION_0_46();
  return sub_1C5D8B884(v5, v6, v7, 11, v8, v9);
}

uint64_t sub_1C5D8B4B8(uint64_t *a1, uint64_t a2)
{
  v3 = (a1[8] >> 58) & 0x3C | (a1[8] >> 1) & 3;
  switch(v3)
  {
    case 3:
      sub_1C5D94358();
      type metadata accessor for PausedState();
      OUTLINED_FUNCTION_0_1();
      swift_allocObject();
      v6 = 1;
      v13 = OUTLINED_FUNCTION_0_46();
      sub_1C5D8B884(v13, v14, v15, 7, v16, v17);
      sub_1C5D94070();
      goto LABEL_7;
    case 23:
      return 0;
    case 5:
      v4 = a1[1];
      sub_1C5D94358();
      type metadata accessor for PausedState();
      OUTLINED_FUNCTION_0_1();
      swift_allocObject();
      v5 = v4;
      v6 = 1;
      v7 = OUTLINED_FUNCTION_0_46();
      sub_1C5D8B884(v7, v8, v9, v4, v10, v11);
      sub_1C5D94070();

      type metadata accessor for ErrorResolutionState();
      swift_allocObject();
      sub_1C5D86C6C(a1, 0, 0, 1);
      swift_unknownObjectRetain();
      v12 = v4;

      sub_1C5D945C4();
LABEL_7:

      return v6;
  }

  return sub_1C5D8BE88(a1, a2);
}

uint64_t sub_1C5D8B68C()
{
  v1 = sub_1C5D8C244();
  OUTLINED_FUNCTION_3_29(v1);

  return MEMORY[0x1EEE6BDC0](v0, 272, 7);
}

uint64_t sub_1C5D8B6F0(uint64_t *a1, uint64_t a2)
{
  if (((a1[8] >> 58) & 0x3C | (a1[8] >> 1) & 3) == 0x16)
  {
    v4 = a1[4];
    v6 = a1[1];
    v5 = a1[2];
    v7 = *(v2 + 16);
    v10[0] = *a1;
    v10[1] = v6;
    v10[2] = v5;
    v10[3] = v7;
    v10[4] = v4;
    v11 = xmmword_1C60379B0;
    sub_1C5D8B86C(v6, v5);
    swift_unknownObjectRetain();
    sub_1C5D869C0(v7);

    v8 = sub_1C5D8BE88(v10, a2);
    swift_unknownObjectRelease();
    sub_1C5D5D56C(v6, v5);
    sub_1C5D5D584(v7);

    return v8 & 1;
  }

  else
  {

    return sub_1C5D8BE88(a1, a2);
  }
}

uint64_t sub_1C5D8B818()
{
  v0 = sub_1C5D8C244();

  return MEMORY[0x1EEE6BDC0](v0, 233, 7);
}

uint64_t sub_1C5D8B86C(uint64_t a1, uint64_t a2)
{
  if ((a2 - 1) >= 2)
  {
  }

  return result;
}

uint64_t sub_1C5D8B884(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, double a6)
{
  v7 = v6;
  v27 = a4;
  v28 = a1;
  v30 = a3;
  v29 = a2;
  v10 = *a5;
  v9 = *(a5 + 8);
  v11 = *(a5 + 16);
  v12 = *(a5 + 24);
  v13 = *(a5 + 34);
  v14 = *(a5 + 32);
  v15 = sub_1C6015060();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v27 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v7 + 59) = 0;
  *(v7 + 64) = 0u;
  *(v7 + 80) = 0u;
  *(v7 + 96) = 0u;
  *(v7 + 112) = 0;
  *(v7 + 120) = 0x1FFFFFFFELL;
  *(v7 + 128) = 0u;
  *(v7 + 144) = 0u;
  *(v7 + 160) = 0u;
  *(v7 + 176) = 0u;
  *(v7 + 192) = xmmword_1C6039DE0;
  if (v9)
  {
    v19 = v14 | (v13 << 16);
    v20 = (v19 >> 8) & 1;
    v21 = HIWORD(v19) & 1;
    v22 = v27;
  }

  else
  {
    sub_1C6015050();
    sub_1C5D88F50();
    v31 = sub_1C60177D0();
    v32 = v23;
    (*(v16 + 8))(v18, v15);
    MEMORY[0x1C69534E0](10272, 0xE200000000000000);
    v22 = v27;
    v24 = sub_1C5DD43F0();
    MEMORY[0x1C69534E0](v24);

    MEMORY[0x1C69534E0](41, 0xE100000000000000);
    v11 = 0;
    v12 = 0;
    LOBYTE(v19) = 0;
    LOBYTE(v20) = 0;
    LOBYTE(v21) = 0;
    v10 = v31;
    v9 = v32;
  }

  *(v7 + 32) = v9;
  *(v7 + 40) = v11;
  *(v7 + 48) = v12;
  *(v7 + 56) = v19 & 1;
  *(v7 + 57) = v20;
  *(v7 + 58) = v21;
  *(v7 + 208) = a6;
  v25 = v29;
  *(v7 + 216) = v28;
  *(v7 + 224) = v25;
  *(v7 + 232) = v30 & 1;
  *(v7 + 16) = v22;
  *(v7 + 24) = v10;
  return v7;
}

void *sub_1C5D8BA6C()
{
  v1 = v0;
  sub_1C5D8672C(__src);
  memcpy(__dst, __src, sizeof(__dst));
  sub_1C5C8AD44();
  v2 = "QueueControllerBehaviorPodcastsIdentifierComponents" + 48;
  if (*(v0 + 232) == 1)
  {
    *(v0 + 59) = 1;
  }

  else if (*(v0 + 59) & 1) == 0 && (sub_1C5D951F8())
  {
    v3 = sub_1C5D94864();
    if (v3)
    {
      v4 = [v3 avPlayerItem];
      swift_unknownObjectRelease();
      if (v4)
      {
        *(v0 + 59) = 1;
        v5 = sub_1C5D62DEC();
        v6 = *(v0 + 16);
        v36 = xmmword_1C60311B0;
        v35 = v4;
        v37 = v6;
        v38 = v5;
        v39 = xmmword_1C60379B0;
        *&v25[0] = v0;
        *(&v25[0] + 1) = v4;
        v25[1] = xmmword_1C60311B0;
        *&v25[2] = v6;
        *(&v25[2] + 1) = v5;
        v25[4] = xmmword_1C60379B0;
        *&v25[5] = 0xD000000000000031;
        *(&v25[5] + 1) = 0x80000001C604F670;
        memcpy(v26, v25, 0x60uLL);
        sub_1C5D89738(v26);
        memcpy(v40, v26, sizeof(v40));
        v7 = v4;
        OUTLINED_FUNCTION_2_28();
        v21 = v7;
        OUTLINED_FUNCTION_2_28();

        sub_1C5C8AD44();
        OUTLINED_FUNCTION_1_37();
        sub_1C5D8C774(v25, v8);
        sub_1C5D94358();
        *&v32[0] = v1;
        *(&v32[0] + 1) = v4;
        v32[1] = xmmword_1C60311B0;
        *&v32[2] = v6;
        *(&v32[2] + 1) = v5;
        v32[4] = xmmword_1C60379B0;
        sub_1C5D8981C(v32);
        memcpy(v34, v32, sizeof(v34));
        v9 = v21;
        OUTLINED_FUNCTION_2_28();

        sub_1C5C8AD44();

        sub_1C5D5D584(v6);

        sub_1C5D5D584(v6);

        v2 = "nts";
      }
    }
  }

  v10 = *(v1 + 40);
  v32[14] = *(v1 + 24);
  *v33 = v10;
  *&v33[15] = *(v1 + 55);
  result = sub_1C5D9523C();
  if ((*(v1 + 59) & 1) == 0 && *(v1 + 60) == 1)
  {
    result = sub_1C5D94864();
    if (result)
    {
      v12 = [result avPlayerItem];
      result = swift_unknownObjectRelease();
      if (v12)
      {
        *(v1 + 59) = 1;
        v13 = sub_1C5D62DEC();
        v14 = v2;
        v15 = v13;
        v16 = *(v1 + 16);
        v28 = xmmword_1C60311B0;
        v27 = v12;
        v29 = v16;
        v30 = v13;
        v22 = *(v14 + 155);
        v31 = v22;
        *&v23[0] = v1;
        *(&v23[0] + 1) = v12;
        v23[1] = xmmword_1C60311B0;
        *&v23[2] = v16;
        *(&v23[2] + 1) = v13;
        v23[4] = v22;
        *&v23[5] = 0xD000000000000018;
        *(&v23[5] + 1) = 0x80000001C604F650;
        memcpy(v24, v23, 0x60uLL);
        sub_1C5D89738(v24);
        memcpy(v32, v24, 0xD9uLL);
        v17 = v12;
        OUTLINED_FUNCTION_2_28();

        v18 = v17;
        OUTLINED_FUNCTION_2_28();
        sub_1C5C8AD44();
        OUTLINED_FUNCTION_1_37();
        sub_1C5D8C774(v23, v19);
        sub_1C5D94358();
        *&v25[0] = v1;
        *(&v25[0] + 1) = v12;
        v25[1] = xmmword_1C60311B0;
        *&v25[2] = v16;
        *(&v25[2] + 1) = v15;
        v25[4] = v22;
        sub_1C5D8981C(v25);
        memcpy(v26, v25, 0xD9uLL);

        v20 = v18;
        OUTLINED_FUNCTION_2_28();
        sub_1C5C8AD44();

        sub_1C5D5D584(v16);

        sub_1C5D5D584(v16);
      }
    }
  }

  return result;
}

uint64_t sub_1C5D8BE88(uint64_t *a1, uint64_t a2)
{
  v3 = v2;
  v5 = a1[8];
  v6 = *a1;
  v7 = a1[1];
  v8 = a1[3];
  v9 = a1[4];
  v10 = a1[5];
  v12 = a1[6];
  v11 = a1[7];
  switch((v5 >> 58) & 0x3C | (v5 >> 1) & 3)
  {
    case 3uLL:
    case 0x17uLL:
      goto LABEL_24;
    case 4uLL:
    case 5uLL:
      sub_1C5D94358();
      type metadata accessor for ErrorResolutionState();
      swift_allocObject();
      sub_1C5D86C6C(a1, 0, 0, 1);
      swift_unknownObjectRetain();
      v13 = v7;

      sub_1C5D945C4();

      return 1;
    case 7uLL:
    case 0x18uLL:
      swift_getObjectType();
      v19 = sub_1C5DEA0B4();
      v21 = v20;
      if (sub_1C5D94864())
      {
        swift_getObjectType();
        v22 = sub_1C5DEA0B4();
        v24 = v23;
        swift_unknownObjectRelease();
        if (v19 == v22 && v21 == v24)
        {

LABEL_24:
          sub_1C5D94358();
          return 1;
        }

        v26 = sub_1C6017860();

        if (v26)
        {
          goto LABEL_24;
        }
      }

      else
      {
      }

LABEL_20:

      return sub_1C5D912A0(a1);
    case 0x14uLL:
      v14 = a1[2];
      memcpy(__dst, (v3 + 136), 0x48uLL);
      *(v3 + 136) = v6;
      *(v3 + 144) = v7;
      *(v3 + 152) = v14;
      *(v3 + 160) = v8;
      *(v3 + 168) = v9;
      *(v3 + 176) = v10;
      *(v3 + 184) = v12;
      *(v3 + 192) = v11;
      *(v3 + 200) = v5;
      swift_unknownObjectRetain();
      sub_1C5D8B86C(v14, v8);
      goto LABEL_7;
    case 0x15uLL:
      if (*(v3 + 192) >> 1 == 0xFFFFFFFFLL && (*(v3 + 200) & 0xF000000000000007) == 0)
      {
        goto LABEL_20;
      }

      v15 = a1[2];
      memcpy(__dst, (v3 + 64), 0x48uLL);
      *(v3 + 64) = v6;
      *(v3 + 72) = v7;
      *(v3 + 80) = v15;
      *(v3 + 88) = v8;
      *(v3 + 96) = v9;
      *(v3 + 104) = v10;
      *(v3 + 112) = v12;
      *(v3 + 120) = v11;
      *(v3 + 128) = v5;
      swift_unknownObjectRetain();
      sub_1C5D8B86C(v9, v10);
LABEL_7:

      OUTLINED_FUNCTION_0_47();
      sub_1C5D8C774(__dst, v16);
      return 1;
    case 0x16uLL:
      if (*(v3 + 59))
      {
        goto LABEL_20;
      }

      if (v8 != 11)
      {
        v28 = a1[2];
        swift_unknownObjectRetain();
        sub_1C5D8B86C(v7, v28);
        sub_1C5D869C0(v8);
        __src[0] = v6;
        __src[1] = v7;
        __src[2] = v28;
        __src[3] = v8;
        goto LABEL_27;
      }

      v17 = *(v3 + 16);
      if (v17 == 11)
      {
        v18 = a1[2];
        swift_unknownObjectRetain();
        sub_1C5D8B86C(v7, v18);
        sub_1C5D869C0(0xB);
        __src[0] = v6;
        __src[1] = v7;
        __src[2] = v18;
        __src[3] = 11;
LABEL_27:
        __src[4] = v9;
        __src[5] = v10;
        __src[6] = v12;
        goto LABEL_29;
      }

      v29 = a1[2];
      sub_1C5D8B86C(v7, v29);
      swift_unknownObjectRetain();
      sub_1C5D869C0(v17);
      v11 = 0;
      __src[0] = v6;
      __src[1] = v7;
      __src[2] = v29;
      __src[3] = v17;
      v5 = 0x5000000000000004;
      __src[4] = v9;
LABEL_29:
      __src[7] = v11;
      __src[8] = v5;

      memcpy(__dst, __src, 0x48uLL);
      sub_1C5D94358();
      sub_1C5D7EF0C(__src);
      *(v3 + 59) = 1;
      return 1;
    default:
      goto LABEL_20;
  }
}

uint64_t sub_1C5D8C244()
{
  sub_1C5D5D584(*(v0 + 16));
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);

  sub_1C5C74C18(v1, v2);
  OUTLINED_FUNCTION_4_31();
  OUTLINED_FUNCTION_3_30();
  swift_unknownObjectRelease();
  return v0;
}

uint64_t sub_1C5D8C2A4(uint64_t a1)
{
  v2 = *(a1 + 66) >> 4;
  if ((v2 - 3) < 2)
  {
    return 1;
  }

  if (v2 != 2)
  {
    return sub_1C5D939A4(a1);
  }

  return (*(v1 + 128) & 0xF000000000000007) != 0 || *(v1 + 120) >> 1 != 0xFFFFFFFFLL;
}

void sub_1C5D8C2E8()
{
  __src[0] = v0;
  sub_1C5D8C7D4(__src);
  memcpy(v1, __src, sizeof(v1));
  sub_1C5C8AD44();
  if ((*(v0 + 232) & 1) == 0)
  {
    *(v0 + 59) = 256;
  }
}

uint64_t sub_1C5D8C350(uint64_t a1, uint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  v6 = *(a1 + 24);
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  v9 = *(a1 + 41);
  v10 = *(a1 + 42);
  v11 = *(a1 + 66);
  v12 = v11 >> 4;
  if (v11 >> 4 == 4)
  {
    v20 = *(a1 + 25);
    v21 = *(a1 + 29);
    *&v32 = *(a1 + 8);
    *(&v32 + 1) = v4;
    LOBYTE(v33) = v6;
    *(&v33 + 1) = v20;
    *(&v33 + 5) = v21;
    BYTE7(v33) = *(a1 + 31);
    *(&v33 + 1) = v7;
    LOBYTE(v34) = v8 & 1;
    BYTE1(v34) = v9 & 1;
    BYTE2(v34) = v10 & 1;
    sub_1C5D94008();
    goto LABEL_15;
  }

  if (v12 == 3)
  {
LABEL_15:
    sub_1C5D913C8(a1);
    return 1;
  }

  if (v12 == 2)
  {
    v13 = *(a1 + 48);
    v14 = *(a1 + 56);
    v15 = *(a1 + 65);
    v16 = *(a1 + 64);
    v17 = v8 | (v9 << 8) | (v10 << 16) | (*(a1 + 43) << 24) | (*(a1 + 47) << 56);
    v38 = *(a1 + 32);
    v39 = v17;
    v26 = v17;
    v27 = v14;
    v28 = v13;
    v40 = v13;
    v41 = v14;
    v18 = v16 & 1;
    v42 = v16 & 1;
    v25 = v15;
    v43 = v15 & 1;
    v44 = v11 & 1;
    sub_1C5D94008();
    memcpy(__dst, (v2 + 64), sizeof(__dst));
    if (__dst[7] >> 1 != 0xFFFFFFFFLL || (__dst[8] & 0xF000000000000007) != 0)
    {
      v23 = *(v2 + 80);
      v32 = *(v2 + 64);
      v33 = v23;
      v34 = *(v2 + 96);
      v35 = *(v2 + 112);
      v36 = __dst[7];
      v37 = __dst[8];
      type metadata accessor for PlayingState();
      swift_allocObject();
      memcpy(v30, (v2 + 64), sizeof(v30));
      sub_1C5D5D5AC(v30, v29);
      sub_1C5D8EE9C();
      sub_1C5D94070();

      sub_1C5D94358();
      OUTLINED_FUNCTION_0_47();
      sub_1C5D8C774(__dst, v24);
    }

    else
    {
      if (v25)
      {
        v19 = 256;
      }

      else
      {
        v19 = 0;
      }

      *&v32 = v7;
      *(&v32 + 1) = v26;
      *&v33 = v28;
      *(&v33 + 1) = v27;
      BYTE2(v34) = (v11 & 1) != 0;
      LOWORD(v34) = v19 | v18;
      type metadata accessor for InitiatingPlaybackState();
      swift_allocObject();
      swift_unknownObjectRetain();

      sub_1C5C74C28(v28, v27);
      sub_1C5D8856C(v5, v4, v6 & 1, &v32);
      sub_1C5D94070();
    }

    goto LABEL_15;
  }

  return sub_1C5D93A18(a1, a2);
}

uint64_t sub_1C5D8C640(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4 >> 61 != 3 && a4 >> 61)
  {

    return sub_1C5C8CCE8(a1, a2, a3, a4);
  }

  else
  {
    sub_1C5C8A7E4();
    return 1;
  }
}

uint64_t sub_1C5D8C6B4()
{
  sub_1C5D5D584(*(v0 + 16));
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);

  sub_1C5C74C18(v1, v2);
  OUTLINED_FUNCTION_4_31();
  OUTLINED_FUNCTION_3_30();

  return swift_unknownObjectRelease();
}

uint64_t sub_1C5D8C71C()
{
  sub_1C5D8C244();

  return MEMORY[0x1EEE6BDC0](v0, 233, 7);
}

uint64_t sub_1C5D8C774(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1C5D8C7E8(uint64_t a1)
{
  v2 = *(a1 + 66) >> 4;
  if (v2 == 2)
  {
    return 1;
  }

  if (v2 == 3)
  {
    return *(v1 + 112) != 4;
  }

  return sub_1C5D939A4(a1);
}

void sub_1C5D8C81C()
{
  v1 = v0;
  v2 = sub_1C6015060();
  OUTLINED_FUNCTION_25();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_146();
  v8 = v7 - v6;
  v57[0] = v0;
  sub_1C5D8672C(v57);
  memcpy(v56, v57, sizeof(v56));
  sub_1C5C8AD44();
  sub_1C6015050();
  v9 = sub_1C6015030();
  v11 = v10;
  (*(v4 + 8))(v8, v2);
  v52 = v9;
  v53 = v11;
  v55[0] = 0;
  v54 = 0;
  *(v55 + 7) = 0;
  sub_1C5D952DC();
  if ((v12 & 1) == 0)
  {
    sub_1C5D94AAC();
    sub_1C5D93FA8();
  }

  sub_1C5D951B8();
  v14 = v13;
  sub_1C5D94F00();
  if (v14 != v15)
  {
    sub_1C5D94F00();
    v16 = OUTLINED_FUNCTION_2_2();
    sub_1C5D94FF0(v16, v17, v18, v19, v20);
  }

  if (*(v1 + 16) == 1)
  {
    v21 = sub_1C5D94864();
    if (v21)
    {
      v22 = v21;
      swift_getObjectType();
      v23 = [v22 avPlayerItem];
      if (!v23)
      {
        swift_unknownObjectRelease();
        goto LABEL_22;
      }

      v24 = v23;
      *(v1 + 16) = 0;
      sub_1C5D8EFF0(0);
      v25 = sub_1C5DEA0B4();
      v27 = *(v1 + 32);
      if (!v27)
      {

        goto LABEL_17;
      }

      if (v25 != *(v1 + 24) || v27 != v26)
      {
        v29 = sub_1C6017860();

        if (v29)
        {
          swift_unknownObjectRelease();
LABEL_20:

          goto LABEL_22;
        }

LABEL_17:
        v30 = sub_1C5D94F00();
        v32 = v31;
        sub_1C5D6604C(v30);
        v34 = v33;
        v35 = 0.0;
        if ((v33 & 1) == 0)
        {
          v35 = sub_1C6017220();
        }

        v36 = sub_1C5D8CD30(v1, v22);
        v44 = v22;
        v45 = v32;
        v46 = v35;
        v48 = xmmword_1C60311B0;
        v47 = v34 & 1;
        v49 = v36;
        v50 = xmmword_1C603A060;
        *&v51[0] = 0;
        *(&v51[0] + 1) = 0xE000000000000000;
        swift_unknownObjectRetain_n();

        sub_1C6017540();
        v43[0] = v51[0];
        MEMORY[0x1C69534E0](0xD00000000000003CLL, 0x80000001C604F960);
        memcpy(v51, (v1 + 40), 0x48uLL);
        sub_1C5C674E0(0, qword_1ED7DFBD8, &type metadata for PlayerEvent, MEMORY[0x1E69E6720]);
        sub_1C6017650();
        MEMORY[0x1C69534E0](93, 0xE100000000000000);
        *&v40[0] = v1;
        *(&v40[0] + 1) = v22;
        LODWORD(v40[1]) = v32;
        *(&v40[1] + 1) = v35;
        *&v40[2] = v34 & 1;
        *(&v40[2] + 8) = xmmword_1C60311B0;
        *(&v40[3] + 1) = v36;
        v40[4] = xmmword_1C603A060;
        v40[5] = v43[0];
        memcpy(v41, v40, 0x60uLL);
        sub_1C5D89738(v41);
        memcpy(v51, v41, 0xD9uLL);

        sub_1C5C8AD44();
        sub_1C5D8974C(v40);
        sub_1C5D94358();
        *&v42[0] = v1;
        *(&v42[0] + 1) = v22;
        LODWORD(v42[1]) = v32;
        *(&v42[1] + 1) = v35;
        *(&v42[2] + 8) = xmmword_1C60311B0;
        *&v42[2] = v34 & 1;
        *(&v42[3] + 1) = v36;
        v42[4] = xmmword_1C603A060;
        sub_1C5D8981C(v42);
        memcpy(v43, v42, 0xD9uLL);
        swift_unknownObjectRetain();

        sub_1C5C8AD44();

        swift_unknownObjectRelease_n();

        goto LABEL_20;
      }

      swift_unknownObjectRelease();
    }
  }

LABEL_22:
  memcpy(v42, (v1 + 40), 0x48uLL);
  *(v1 + 40) = 0u;
  *(v1 + 56) = 0u;
  *(v1 + 72) = 0u;
  *(v1 + 88) = 0;
  *(v1 + 96) = xmmword_1C6039DE0;
  sub_1C5D8F2BC(v42);
  if (sub_1C5D94864())
  {
    swift_getObjectType();
    v37 = sub_1C5DEA0B4();
    v39 = v38;
    swift_unknownObjectRelease();
  }

  else
  {

    v37 = 0;
    v39 = 0;
  }

  *(v1 + 24) = v37;
  *(v1 + 32) = v39;

  OUTLINED_FUNCTION_130();
}

double *sub_1C5D8CD30(void *a1, uint64_t a2)
{
  v2 = a1[12];
  v3 = a1[13];
  if (v2 >> 1 == 0xFFFFFFFF && (v3 & 0xF000000000000007) == 0 || ((v3 >> 58) & 0x3C | (v3 >> 1) & 3) != 8)
  {
    return sub_1C5D62DEC();
  }

  v7 = a1[5];
  v8 = a1[8];
  v20 = a1[6];
  v21 = a1[7];
  v9 = a1[9];
  v10 = a1[10];
  v11 = a1[11];
  swift_getObjectType();
  sub_1C5D8F33C(v7, v20, v21, v8, v9, v10, v11, v2, v3);
  v12 = sub_1C5DEA0B4();
  v14 = v13;
  swift_getObjectType();
  if (v12 == sub_1C5DEA0B4() && v14 == v15)
  {
  }

  else
  {
    v17 = sub_1C6017860();

    if ((v17 & 1) == 0)
    {
      swift_unknownObjectRelease();

      return sub_1C5D62DEC();
    }
  }

  v18 = v20[2];
  type metadata accessor for EventTime();
  swift_allocObject();
  v19 = sub_1C5C8A6E0(0, 0, 0, 1, v18, v18);
  swift_unknownObjectRelease();

  return v19;
}

void sub_1C5D8CED8()
{
  __src[0] = v0;
  sub_1C5D8C7D4(__src);
  memcpy(v1, __src, sizeof(v1));
  sub_1C5C8AD44();
  *(v0 + 16) = 1;
  sub_1C5D8EFF0(1);
}

uint64_t sub_1C5D8CF44(unsigned int *a1, uint64_t a2)
{
  v4 = *(a1 + 66);
  v5 = *a1;
  v6 = a1[1];
  v8 = *(a1 + 1);
  v7 = *(a1 + 2);
  v9 = *(a1 + 24);
  v10 = *(a1 + 25) | ((*(a1 + 29) | (*(a1 + 31) << 16)) << 32);
  v11 = *(a1 + 4);
  v12 = *(a1 + 40);
  v13 = *(a1 + 41);
  v14 = *(a1 + 42);
  v15 = *(a1 + 43) | (*(a1 + 47) << 32);
  v17 = *(a1 + 6);
  v16 = *(a1 + 7);
  v18 = *(a1 + 64);
  v19 = *(a1 + 65);
  switch(v4 >> 4)
  {
    case 2u:
      v43 = *(a1 + 6);
      v44 = *(a1 + 7);
      v45 = *(a1 + 4);
      v46 = *(a1 + 1);
      v47 = *(a1 + 2);
      v20 = *a1;
      sub_1C5D951B8();
      if (v21 != v20)
      {
        v48 = v45;
        v49 = v12 | (v13 << 8) | (v14 << 16) | (v15 << 24);
        v50 = v43;
        v51 = v44;
        LOBYTE(v52) = v18 & 1;
        HIBYTE(v52) = v19 & 1;
        v53 = v4 & 1;
        sub_1C5D94008();
        sub_1C5D94FF0(v46, v47, v9 & 1, &v48, v20);
      }

      v22 = a1;
      goto LABEL_14;
    case 3u:
      *&v28 = v5 | (v6 << 32);
      v48 = *(a1 + 4);
      v29 = (v9 | (v10 << 8));
      if (v19)
      {
        v30 = 256;
      }

      else
      {
        v30 = 0;
      }

      v49 = v12 | (v13 << 8) | (v14 << 16) | (v15 << 24);
      v50 = v17;
      v51 = v16;
      v53 = (v4 & 1) != 0;
      v52 = v30 & 0xFFFE | v18 & 1;
      v31 = v7;
      v32 = v8;
      v33 = v17;
      v34 = v16;
      type metadata accessor for PausedState();
      swift_allocObject();
      swift_unknownObjectRetain();
      sub_1C5D869C0(v29);

      sub_1C5C74C28(v33, v34);
      sub_1C5D8B884(v32, v31, 0, v29, &v48, v28);
      sub_1C5D94070();

      v22 = a1;
      goto LABEL_14;
    case 4u:
      v48 = *(a1 + 1);
      v49 = v7;
      LOBYTE(v50) = v9;
      *(&v50 + 1) = v10;
      HIBYTE(v50) = BYTE6(v10);
      *(&v50 + 5) = WORD2(v10);
      v51 = v11;
      OUTLINED_FUNCTION_10_22();
      sub_1C5D94008();
      v23 = OUTLINED_FUNCTION_2_2();
      sub_1C5D94FF0(v23, v24, v25, v26, v27);
      v22 = OUTLINED_FUNCTION_303();
      goto LABEL_14;
    case 0xAu:
      *&v35 = v5 | (v6 << 32);
      v48 = *(a1 + 1);
      v49 = v7;
      v36 = v9 | (v10 << 8);
      v50 = v36;
      v51 = v11;
      OUTLINED_FUNCTION_10_22();
      v38 = v37;
      sub_1C5D94F40();
      v40 = v39;
      v41 = *(v2 + 17);
      type metadata accessor for JumpToTimeState();
      swift_allocObject();
      sub_1C5D89830(0, 2, v41, &v48, v35, v40);

      sub_1C5C74C28(v36, v38);
      sub_1C5D945C4();

      v22 = a1;
LABEL_14:
      sub_1C5D913C8(v22);
      result = 1;
      break;
    default:

      result = sub_1C5D93A18(a1, a2);
      break;
  }

  return result;
}

void sub_1C5D8D2CC(void *a1, uint64_t a2)
{
  v138 = a1[1];
  v3 = a1[2];
  v4 = sub_1C60167E0();
  OUTLINED_FUNCTION_25();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_146();
  v10 = v9 - v8;
  v11 = sub_1C6015060();
  OUTLINED_FUNCTION_25();
  v13 = v12;
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_146();
  v17 = v16 - v15;
  v18 = a1[3];
  switch((a1[8] >> 58) & 0x3C | (a1[8] >> 1) & 3)
  {
    case 4:
      OUTLINED_FUNCTION_14_21();
      sub_1C5DEA0B4();
      v19 = OUTLINED_FUNCTION_2_29();
      if (!v19)
      {
        goto LABEL_119;
      }

      v20 = v19;
      swift_getObjectType();
      sub_1C5DEA0B4();
      OUTLINED_FUNCTION_9_22();
      swift_unknownObjectRelease();
      if (v4 == v6 && v17 == v20)
      {
      }

      else
      {
        OUTLINED_FUNCTION_0_48();
        OUTLINED_FUNCTION_344();

        if ((v4 & 1) == 0)
        {
          goto LABEL_120;
        }
      }

      OUTLINED_FUNCTION_18_17();
      sub_1C5D94358();
      type metadata accessor for ErrorResolutionState();
      swift_allocObject();
      OUTLINED_FUNCTION_22_15();
      swift_unknownObjectRetain();
      v93 = v138;

      sub_1C5D945C4();

      goto LABEL_135;
    case 5:
      OUTLINED_FUNCTION_14_21();
      sub_1C5DEA0B4();
      v57 = OUTLINED_FUNCTION_2_29();
      if (!v57)
      {
        goto LABEL_119;
      }

      v58 = v57;
      swift_getObjectType();
      sub_1C5DEA0B4();
      OUTLINED_FUNCTION_9_22();
      swift_unknownObjectRelease();
      if (v4 == v6 && v17 == v58)
      {
      }

      else
      {
        OUTLINED_FUNCTION_0_48();
        OUTLINED_FUNCTION_344();

        if ((v4 & 1) == 0)
        {
          goto LABEL_120;
        }
      }

      OUTLINED_FUNCTION_18_17();
      sub_1C5D94358();
      type metadata accessor for ErrorResolutionState();
      swift_allocObject();
      OUTLINED_FUNCTION_22_15();
      swift_unknownObjectRetain();
      v98 = v138;

      goto LABEL_128;
    case 7:
      OUTLINED_FUNCTION_14_21();
      v49 = sub_1C5DEA0B4();
      v51 = v50;
      if (!sub_1C5D94864())
      {
        goto LABEL_119;
      }

      swift_getObjectType();
      v52 = sub_1C5DEA0B4();
      v54 = v53;
      swift_unknownObjectRelease();
      if (v49 == v52 && v51 == v54)
      {
      }

      else
      {
        v56 = sub_1C6017860();

        if ((v56 & 1) == 0)
        {
          goto LABEL_120;
        }
      }

      sub_1C5D94358();
      v94 = [*(&v139 + 1) avPlayerItem];
      if (v94)
      {
        v95 = v94;
        [v94 duration];

        v96 = sub_1C6017220() + -0.1;
        v97 = 0.1;
        if (v96 < 0.1)
        {
          v97 = v96;
        }
      }

      else
      {
        v97 = 0.1;
      }

      if (v97 >= v138[2])
      {
        goto LABEL_135;
      }

      swift_unknownObjectRetain();
      sub_1C6015050();
      v104 = sub_1C6015030();
      v106 = v105;
      (*(v13 + 8))(v17, v11);
      v154 = v104;
      v155 = v106;
      type metadata accessor for NaturalTransitionState();
      OUTLINED_FUNCTION_7_26();
      v76 = swift_allocObject();
      v75 = &v154;
      v73 = *(&v139 + 1);
      v74 = 1;
      goto LABEL_127;
    case 8:
      OUTLINED_FUNCTION_14_21();
      *(v139 + 24) = sub_1C5DEA0B4();
      *(v139 + 32) = v48;
      goto LABEL_119;
    case 9:
      *(v139 + 24) = 0;
      *(v139 + 32) = 0;
      goto LABEL_119;
    case 0x11:
      sub_1C5D94358();
      (*(v6 + 104))(v10, *MEMORY[0x1E69D3968], v4);
      sub_1C5D8F264();
      v35 = sub_1C6015290();
      (*(v6 + 8))(v10, v4);
      swift_unknownObjectRetain();
      sub_1C6015050();
      v36 = sub_1C6015030();
      v38 = v37;
      (*(v13 + 8))(v17, v11);
      if (v35)
      {
        v154 = v36;
        v155 = v38;
        type metadata accessor for OverlappedTransitionState();
        OUTLINED_FUNCTION_7_26();
        swift_allocObject();
        v39 = OUTLINED_FUNCTION_20_18();
        sub_1C5D9355C(v39, v40, v41);
      }

      else
      {
        v154 = v36;
        v155 = v38;
        type metadata accessor for NaturalTransitionState();
        OUTLINED_FUNCTION_7_26();
        v72 = swift_allocObject();
        swift_getObjectType();
        v73 = OUTLINED_FUNCTION_20_18();
        v76 = v72;
LABEL_127:
        sub_1C5D9366C(v73, v74, v75, v76);
      }

LABEL_128:
      sub_1C5D945C4();

      goto LABEL_135;
    case 0x13:
      OUTLINED_FUNCTION_14_21();
      sub_1C5DEA0B4();
      v60 = OUTLINED_FUNCTION_2_29();
      if (!v60)
      {
        goto LABEL_119;
      }

      v61 = v60;
      swift_getObjectType();
      sub_1C5DEA0B4();
      OUTLINED_FUNCTION_9_22();
      swift_unknownObjectRelease();
      if (v4 == v6 && v17 == v61)
      {
      }

      else
      {
        OUTLINED_FUNCTION_0_48();
        OUTLINED_FUNCTION_344();

        if ((v4 & 1) == 0)
        {
          goto LABEL_120;
        }
      }

      *(v139 + 17) = 1;
      sub_1C5D94358();
      goto LABEL_135;
    case 0x15:
      if (*(v139 + 17) != 1)
      {
        goto LABEL_111;
      }

      v6 = v3;
      v136 = a1[5];
      v137 = a1[4];
      v63 = a1[6];
      OUTLINED_FUNCTION_14_21();
      sub_1C5DEA0B4();
      if (OUTLINED_FUNCTION_2_29())
      {
        v135 = v63;
        swift_getObjectType();
        v64 = sub_1C5DEA0B4();
        v66 = v65;
        swift_unknownObjectRelease();
        if (v4 == v64 && v17 == v66)
        {

          v68 = v6;
LABEL_130:
          if (*(v139 + 112) != 4)
          {
            OUTLINED_FUNCTION_89();
            v153[0] = 0xD00000000000005BLL;
            v153[1] = v107;
            OUTLINED_FUNCTION_8_24();
            sub_1C5C8AD44();
            sub_1C5D8EFF0(0);
            v68 = v6;
          }

          *(v139 + 17) = 0;
          v145 = *(&v139 + 1);
          v146 = v138;
          v147 = v68;
          v148 = v18 & 1 | 0x100;
          v149 = v137;
          v150 = v136;
          v151 = v135;
          v152 = xmmword_1C603A060;
          OUTLINED_FUNCTION_89();
          v141[0] = v139;
          LODWORD(v141[1]) = v138;
          *(&v141[1] + 1) = v68;
          *&v141[2] = v148;
          *(&v141[2] + 1) = v137;
          *&v141[3] = v136;
          *(&v141[3] + 1) = v135;
          v141[4] = v108;
          *&v141[5] = 0xD000000000000017;
          *(&v141[5] + 1) = v109;
          memcpy(v142, v141, 0x60uLL);
          sub_1C5D89738(v142);
          memcpy(v153, v142, 0xD9uLL);
          swift_unknownObjectRetain();
          v110 = OUTLINED_FUNCTION_300();
          sub_1C5D8B86C(v110, v111);

          swift_unknownObjectRetain();
          v112 = OUTLINED_FUNCTION_300();
          sub_1C5D8B86C(v112, v113);

          sub_1C5C8AD44();
          sub_1C5D8974C(v141);
          sub_1C5D94358();
          v143[0] = v139;
          LODWORD(v143[1]) = v138;
          *(&v143[1] + 1) = v68;
          *&v143[2] = v18 & 1 | 0x100;
          *(&v143[2] + 1) = v137;
          *&v143[3] = v136;
          *(&v143[3] + 1) = v135;
          v143[4] = xmmword_1C603A060;
          sub_1C5D8981C(v143);
          memcpy(v144, v143, sizeof(v144));
          swift_unknownObjectRetain();
          v114 = OUTLINED_FUNCTION_300();
          sub_1C5D8B86C(v114, v115);

          sub_1C5C8AD44();
          swift_unknownObjectRelease();
          v116 = OUTLINED_FUNCTION_300();
          sub_1C5D5D56C(v116, v117);
          swift_unknownObjectRelease();

          v118 = OUTLINED_FUNCTION_300();
          sub_1C5D5D56C(v118, v119);

          goto LABEL_135;
        }

        OUTLINED_FUNCTION_303();
        sub_1C6017860();
        OUTLINED_FUNCTION_344();

        v68 = v6;
        if (v4)
        {
          goto LABEL_130;
        }
      }

      else
      {
      }

LABEL_111:
      if (*(v139 + 112) == 4)
      {
        goto LABEL_120;
      }

      OUTLINED_FUNCTION_14_21();
      sub_1C5DEA0B4();
      v99 = OUTLINED_FUNCTION_2_29();
      if (!v99)
      {
LABEL_119:

        goto LABEL_120;
      }

      v100 = v99;
      swift_getObjectType();
      sub_1C5DEA0B4();
      OUTLINED_FUNCTION_9_22();
      swift_unknownObjectRelease();
      if (v4 == v6 && v17 == v100)
      {
      }

      else
      {
        OUTLINED_FUNCTION_0_48();
        OUTLINED_FUNCTION_344();

        if ((v4 & 1) == 0)
        {
          goto LABEL_120;
        }
      }

      OUTLINED_FUNCTION_89();
      v153[0] = 0xD00000000000005FLL;
      v153[1] = v120;
      OUTLINED_FUNCTION_8_24();
      sub_1C5C8AD44();
      sub_1C5D8EFF0(0);
      goto LABEL_135;
    case 0x16:
      OUTLINED_FUNCTION_14_21();
      sub_1C5DEA0B4();
      v69 = OUTLINED_FUNCTION_2_29();
      if (!v69)
      {
        goto LABEL_119;
      }

      v70 = v69;
      swift_getObjectType();
      sub_1C5DEA0B4();
      OUTLINED_FUNCTION_9_22();
      swift_unknownObjectRelease();
      if (v4 == v6 && v17 == v70)
      {
      }

      else
      {
        OUTLINED_FUNCTION_0_48();
        OUTLINED_FUNCTION_344();

        if ((v4 & 1) == 0)
        {
          goto LABEL_120;
        }
      }

      if (*(v139 + 112) != 4)
      {
        goto LABEL_120;
      }

      sub_1C5D8E57C(a1, a2, 3);
      goto LABEL_135;
    case 0x17:
      goto LABEL_75;
    case 0x18:
      swift_getObjectType();
      sub_1C5DEA0B4();
      v22 = OUTLINED_FUNCTION_2_29();
      if (!v22)
      {
        goto LABEL_119;
      }

      v23 = v22;
      swift_getObjectType();
      sub_1C5DEA0B4();
      OUTLINED_FUNCTION_9_22();
      swift_unknownObjectRelease();
      if (v4 == v6 && v17 == v23)
      {
      }

      else
      {
        OUTLINED_FUNCTION_0_48();
        OUTLINED_FUNCTION_344();

        if ((v4 & 1) == 0)
        {
          goto LABEL_120;
        }
      }

LABEL_75:
      sub_1C5D94358();
      goto LABEL_135;
    case 0x19:
      swift_getObjectType();
      swift_unknownObjectRetain();
      v42 = sub_1C5DEA0B4();
      v44 = v43;
      OUTLINED_FUNCTION_18_17();
      v45 = sub_1C5D94864();
      if (!v45)
      {
        goto LABEL_90;
      }

      v46 = v45;
      v26 = *&v138;
      swift_getObjectType();
      sub_1C5DEA0B4();
      OUTLINED_FUNCTION_9_22();
      swift_unknownObjectRelease();
      if (v42 != v6 || v44 != v46)
      {
        goto LABEL_88;
      }

      goto LABEL_92;
    case 0x1ALL:
      v25 = v3;
      v26 = *&v138;
      swift_getObjectType();
      v27 = sub_1C5DEA0B4();
      v29 = v28;
      if (!sub_1C5D94864())
      {

        goto LABEL_83;
      }

      swift_getObjectType();
      v30 = sub_1C5DEA0B4();
      v32 = v31;
      swift_unknownObjectRelease();
      if (v27 == v30 && v29 == v32)
      {

        if (*&v138 != 0.0)
        {
          goto LABEL_83;
        }

LABEL_77:
        OUTLINED_FUNCTION_19_19();
        sub_1C6017540();
        OUTLINED_FUNCTION_16_16();
        MEMORY[0x1C69534E0](0xD000000000000032, 0x80000001C604F920);
        MEMORY[0x1C69534E0](v25, v18);
        v153[0] = v154;
        v153[1] = v155;
        OUTLINED_FUNCTION_8_24();
        sub_1C5C8AD44();

        v77 = sub_1C6016900();
        v78 = sub_1C6016940();
        v80 = v79;
        if (v78 == sub_1C6016940() && v80 == v81)
        {

          v86 = 0;
          v85 = a2;
        }

        else
        {
          v83 = sub_1C6017860();
          v84 = v77;

          v85 = a2;
          if (v83)
          {

            v86 = 0;
          }

          else
          {
            v121 = sub_1C6016940();
            v123 = v122;
            if (v121 == sub_1C6016940() && v123 == v124)
            {
            }

            else
            {
              v126 = sub_1C6017860();

              if ((v126 & 1) == 0)
              {
                v127 = sub_1C6016940();
                v129 = v128;
                v130 = sub_1C6016940();
                v132 = v131;

                if (v127 == v130 && v129 == v132)
                {

                  v86 = 2;
                }

                else
                {
                  v134 = sub_1C6017860();

                  if (v134)
                  {
                    v86 = 2;
                  }

                  else
                  {
                    v86 = 3;
                  }
                }

                goto LABEL_144;
              }
            }

            v86 = 1;
          }
        }

LABEL_144:
        sub_1C5D8E57C(a1, v85, v86);
        sub_1C5D912A0(a1);
        goto LABEL_135;
      }

      v34 = sub_1C6017860();

      if ((v34 & 1) != 0 && *&v138 == 0.0)
      {
        goto LABEL_77;
      }

LABEL_83:
      swift_unknownObjectRetain();
      v42 = sub_1C5DEA0B4();
      v88 = v87;
      OUTLINED_FUNCTION_18_17();
      if (!sub_1C5D94864())
      {
LABEL_90:

        goto LABEL_91;
      }

      swift_getObjectType();
      v89 = sub_1C5DEA0B4();
      v91 = v90;
      swift_unknownObjectRelease();
      if (v42 != v89 || v88 != v91)
      {
LABEL_88:
        OUTLINED_FUNCTION_303();
        sub_1C6017860();
        OUTLINED_FUNCTION_344();

        if (v42)
        {
          goto LABEL_93;
        }

LABEL_91:
        swift_unknownObjectRelease();
LABEL_120:
        OUTLINED_FUNCTION_130();

        sub_1C5D912A0(v102);
        return;
      }

LABEL_92:

LABEL_93:
      if (v26 != 0.0 && *(v139 + 112) != 4)
      {
        OUTLINED_FUNCTION_19_19();
        sub_1C6017540();
        OUTLINED_FUNCTION_16_16();
        MEMORY[0x1C69534E0](0xD000000000000026, 0x80000001C604F7C0);
        sub_1C6016D30();
        MEMORY[0x1C69534E0](0xD00000000000004BLL, 0x80000001C604F7F0);
        v153[0] = v154;
        v153[1] = v155;
        OUTLINED_FUNCTION_8_24();
        sub_1C5C8AD44();

        sub_1C5D8EFF0(0);
      }

      sub_1C5D94358();
      swift_unknownObjectRelease();
LABEL_135:
      OUTLINED_FUNCTION_130();
      return;
    default:
      goto LABEL_120;
  }
}

uint64_t sub_1C5D8E2CC(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v7 = a1;
  if (a4 >> 61 == 3)
  {
    v8 = *(v4 + 112) & 0xFE;
    sub_1C5D8EFF0(0);
    if ((v7 & 1) != 0 || v8 != 2)
    {
    }

    else
    {
      OUTLINED_FUNCTION_89();
      *&v24[0] = v4;
      *(&v24[0] + 1) = 1;
      *&v24[1] = a2;
      *(&v24[1] + 1) = a3;
      v24[2] = xmmword_1C603FF80;
      *&v24[3] = v9;
      sub_1C5D8F250(v24);
      memcpy(__dst, v24, sizeof(__dst));
      swift_retain_n();
      swift_retain_n();

      sub_1C5C8AD44();
    }

    OUTLINED_FUNCTION_4_32();
    sub_1C5C8A7E4();
    if ((v8 == 2) | v7 & 1)
    {
      type metadata accessor for PausedState();
      memset(v24, 0, 35);
      swift_allocObject();
      v11 = OUTLINED_FUNCTION_2_2();
      sub_1C5D8B884(v11, v12, v13, 4, v14, v15);
      sub_1C5D94070();
      v16 = OUTLINED_FUNCTION_4_32();
      sub_1C5C8C748(v16, v17, v18, v19);
    }

    else
    {
      v20 = OUTLINED_FUNCTION_4_32();
      sub_1C5C8C748(v20, v21, v22, v23);
    }

    return 1;
  }

  else
  {

    return sub_1C5C8CCE8(a1, a2, a3, a4);
  }
}

uint64_t sub_1C5D8E4D8(char a1)
{
  result = 0x7120666F20646E65;
  switch(a1)
  {
    case 1:
      result = 0x7075727265746E69;
      break;
    case 2:
      result = 0x6863206574756F72;
      break;
    case 3:
      result = 0x6E776F6E6B6E75;
      break;
    default:
      return result;
  }

  return result;
}

void sub_1C5D8E57C(const void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *(v3 + 112);
  if (v8 != 4)
  {
    v18 = objc_opt_self();
    v9 = *MEMORY[0x1E69B1338];
    v10 = sub_1C6016900();
    sub_1C6017540();
    MEMORY[0x1C69534E0](0xD000000000000038, 0x80000001C604FA10);
    sub_1C5C972AC(a3, v11);
    MEMORY[0x1C69534E0](0xD000000000000014, 0x80000001C604FA50);
    sub_1C5C972AC(v8, v12);
    v13 = sub_1C6016900();

    v14 = sub_1C6016900();
    sub_1C5C674E0(0, &qword_1ED7DCAE8, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6F90]);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_1C60311E0;
    v16 = sub_1C5D94B14();
    sub_1C5CE5EF4();
    *(v15 + 56) = v17;
    *(v15 + 32) = v16;
    sub_1C5DC9604(v9, v10, v13, v14, 0, v15, 0, v18);
  }

  *(v4 + 112) = a3;

  sub_1C5D8E774(a1, a2, a3);
}

void sub_1C5D8E774(const void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = a3;
  [*(v4 + 120) invalidate];
  swift_beginAccess();
  v9 = COERCE_DOUBLE(sub_1C5CFF33C(a3, *(v4 + 128)));
  if (v8)
  {
    if (v10)
    {
      v11 = 1.0;
    }

    else
    {
      v11 = v9;
    }

    sub_1C5D8F54C();
    v12 = swift_allocObject();
    swift_weakInit();
    v13 = swift_allocObject();
    *(v13 + 16) = v12;
    *(v13 + 24) = a2;
    *(v13 + 32) = v11;
    *(v13 + 40) = a3;
    memcpy((v13 + 48), a1, 0x48uLL);

    sub_1C5D5D5AC(a1, &v21);
    v14 = sub_1C5D5037C(0, sub_1C5D8F590, v13, v11);
    v15 = *(v4 + 120);
    *(v4 + 120) = v14;
  }

  else
  {
    type metadata accessor for PausedAtQueueEndState();
    swift_allocObject();
    v16 = OUTLINED_FUNCTION_2_2();
    sub_1C5D8B884(v16, v17, v18, 5, v19, v20);
    sub_1C5D94070();
  }
}

void sub_1C5D8E90C(uint64_t a1, double a2, uint64_t a3, char a4)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v29 = Strong;
    __dst[0] = 0;
    __dst[1] = 0xE000000000000000;
    sub_1C6017540();
    MEMORY[0x1C69534E0](0xD000000000000011, 0x80000001C604F9A0);
    sub_1C5D5CCF8(0);
    v7 = swift_allocObject();
    v8 = MEMORY[0x1E69E63B0];
    *(v7 + 16) = xmmword_1C60311E0;
    v9 = MEMORY[0x1E69E6438];
    *(v7 + 56) = v8;
    *(v7 + 64) = v9;
    *(v7 + 32) = a2;
    v10 = sub_1C6016960();
    MEMORY[0x1C69534E0](v10);

    MEMORY[0x1C69534E0](0x72202D206F676120, 0xEF203A6E6F736165);
    sub_1C5C972AC(a4, v11);
    MEMORY[0x1C69534E0](0xD000000000000016, 0x80000001C604F9C0);
    __src[0] = __dst[0];
    __src[1] = __dst[1];
    sub_1C5D45B74(__src);
    memcpy(__dst, __src, 0xD9uLL);
    sub_1C5C8AD44();

    v30 = objc_opt_self();
    v12 = *MEMORY[0x1E69B1338];
    v13 = sub_1C6016900();
    *&v32 = 0;
    *(&v32 + 1) = 0xE000000000000000;
    sub_1C6017540();
    MEMORY[0x1C69534E0](0xD000000000000011, 0x80000001C604F9A0);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_1C60311E0;
    *(v14 + 56) = v8;
    *(v14 + 64) = v9;
    *(v14 + 32) = a2;
    v15 = sub_1C6016960();
    MEMORY[0x1C69534E0](v15);

    MEMORY[0x1C69534E0](0x72202D206F676120, 0xEF203A6E6F736165);
    sub_1C5C972AC(a4, v16);
    v17 = sub_1C6016900();

    v18 = sub_1C6016900();
    sub_1C5C674E0(0, &qword_1ED7DCAE8, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6F90]);
    v19 = swift_allocObject();
    *(v19 + 16) = xmmword_1C60311E0;
    v20 = sub_1C5D94B14();
    sub_1C5CE5EF4();
    *(v19 + 56) = v21;
    *(v19 + 32) = v20;
    sub_1C5DC9604(v12, v13, v17, v18, 0, v19, 0, v30);

    switch(a4)
    {
      case 1:
        *&v32 = 0;
        *(&v32 + 1) = 0xE000000000000000;
        sub_1C6017540();
        MEMORY[0x1C69534E0](0xD000000000000011, 0x80000001C604F9A0);
        v22 = swift_allocObject();
        *(v22 + 16) = xmmword_1C60311E0;
        *(v22 + 56) = MEMORY[0x1E69E63B0];
        *(v22 + 64) = MEMORY[0x1E69E6438];
        *(v22 + 32) = a2;
        v23 = sub_1C6016960();
        MEMORY[0x1C69534E0](v23);

        MEMORY[0x1C69534E0](0xD000000000000029, 0x80000001C604F9E0);
        v24 = v32;
        v25 = sub_1C5D5EA28();
        type metadata accessor for InterruptedState();
        swift_allocObject();

        v26 = v29;

        sub_1C5D88FA8(v24, *(&v24 + 1), v25, 0, v29);
        sub_1C5D94070();

        goto LABEL_7;
      case 2:
        type metadata accessor for PausedState();
        v32 = 0u;
        memset(v33, 0, sizeof(v33));
        swift_allocObject();
        v27 = 4;
        goto LABEL_6;
      case 3:
        type metadata accessor for PausedState();
        v32 = 0u;
        memset(v33, 0, sizeof(v33));
        swift_allocObject();
        v27 = 11;
LABEL_6:
        sub_1C5D8B884(0, 0, 0, v27, &v32, 0.0);
        sub_1C5D94070();
        v26 = v29;
LABEL_7:

        v28 = *(v26 + 120);
        [v28 invalidate];

        break;
      default:
        __break(1u);
        break;
    }
  }
}

uint64_t sub_1C5D8EE9C()
{
  *(v0 + 16) = 0;
  *(v0 + 24) = 0u;
  *(v0 + 40) = 0u;
  *(v0 + 56) = 0u;
  *(v0 + 72) = 0u;
  *(v0 + 88) = 0;
  *(v0 + 96) = xmmword_1C6039DE0;
  *(v0 + 112) = 4;
  *(v0 + 120) = 0;
  sub_1C5D8F5A4();
  *(v0 + 128) = sub_1C6016880();
  swift_beginAccess();
  swift_isUniquelyReferenced_nonNull_native();
  v1 = OUTLINED_FUNCTION_1_38();
  sub_1C5E36B1C(1, v1);
  *(v0 + 128) = v5;
  swift_isUniquelyReferenced_nonNull_native();
  v2 = OUTLINED_FUNCTION_1_38();
  sub_1C5E36B1C(2, v2);
  *(v0 + 128) = v5;
  swift_isUniquelyReferenced_nonNull_native();
  v3 = OUTLINED_FUNCTION_1_38();
  sub_1C5E36B1C(3, v3);
  *(v0 + 128) = v5;
  swift_endAccess();
  return v0;
}

void sub_1C5D8EFF0(char a1)
{
  if (*(v1 + 112) != 4)
  {
    [*(v1 + 120) invalidate];
    v3 = *(v1 + 120);
    *(v1 + 120) = 0;

    if ((a1 & 1) == 0)
    {
      *(v1 + 112) = 4;
    }
  }
}

uint64_t sub_1C5D8F044()
{

  OUTLINED_FUNCTION_12_22();
}

uint64_t sub_1C5D8F088()
{

  OUTLINED_FUNCTION_12_22();

  return v0;
}

uint64_t sub_1C5D8F0C4()
{
  sub_1C5D8F088();

  return MEMORY[0x1EEE6BDC0](v0, 136, 7);
}

_BYTE *storeEnumTagSinglePayload for PlayingState.PlaybackStopReason(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1C5D8F1FC()
{
  result = qword_1ED7DC1F0;
  if (!qword_1ED7DC1F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED7DC1F0);
  }

  return result;
}

unint64_t sub_1C5D8F264()
{
  result = qword_1ED7DCF48;
  if (!qword_1ED7DCF48)
  {
    sub_1C60167E0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED7DCF48);
  }

  return result;
}

uint64_t sub_1C5D8F2BC(uint64_t a1)
{
  sub_1C5C674E0(0, qword_1ED7DFBD8, &type metadata for PlayerEvent, MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *sub_1C5D8F33C(void *result, void *a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, int a7, int a8, unint64_t a9)
{
  switch((a9 >> 58) & 0x3C | (a9 >> 1) & 3)
  {
    case 0uLL:
    case 2uLL:
    case 0x10uLL:
    case 0x17uLL:
    case 0x20uLL:
    case 0x24uLL:
      goto LABEL_21;
    case 1uLL:
      v15 = result;
      goto LABEL_21;
    case 3uLL:
    case 7uLL:
    case 8uLL:
    case 9uLL:
    case 0xCuLL:
    case 0xDuLL:
    case 0xEuLL:
    case 0x11uLL:
    case 0x1FuLL:
    case 0x22uLL:
      swift_unknownObjectRetain();
      goto LABEL_21;
    case 4uLL:
    case 5uLL:
    case 6uLL:
      swift_unknownObjectRetain();
      v14 = a2;
      goto LABEL_21;
    case 0xAuLL:
    case 0xBuLL:
    case 0xFuLL:
    case 0x12uLL:
    case 0x19uLL:
    case 0x1BuLL:
    case 0x1CuLL:
    case 0x21uLL:
      swift_unknownObjectRetain();
      goto LABEL_21;
    case 0x13uLL:
      swift_unknownObjectRetain();
      goto LABEL_20;
    case 0x14uLL:
    case 0x18uLL:
      swift_unknownObjectRetain();
      sub_1C5D8B86C(a3, a4);
      goto LABEL_21;
    case 0x15uLL:
      swift_unknownObjectRetain();
      sub_1C5D8B86C(a5, a6);
      goto LABEL_21;
    case 0x16uLL:
      swift_unknownObjectRetain();
      sub_1C5D8B86C(a2, a3);
      sub_1C5D869C0(a4);
      goto LABEL_21;
    case 0x1AuLL:

      swift_unknownObjectRetain();

    case 0x1DuLL:
      swift_unknownObjectRetain();

      goto LABEL_21;
    case 0x1EuLL:
      swift_unknownObjectRetain();

      return swift_unknownObjectRetain();
    case 0x23uLL:
LABEL_20:

LABEL_21:

      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_1C5D8F54C()
{
  result = qword_1ED7DBB30;
  if (!qword_1ED7DBB30)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ED7DBB30);
  }

  return result;
}

unint64_t sub_1C5D8F5A4()
{
  result = qword_1ED7DC200;
  if (!qword_1ED7DC200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED7DC200);
  }

  return result;
}

void *OUTLINED_FUNCTION_8_24()
{
  sub_1C5D7E534(v0 + 920);

  return memcpy((v0 + 1144), (v0 + 920), 0xD9uLL);
}

uint64_t OUTLINED_FUNCTION_14_21()
{

  return swift_getObjectType();
}

void OUTLINED_FUNCTION_16_16()
{
  v1 = *(v0 + 1152);
  *(v0 + 1144) = *(v0 + 1144);
  *(v0 + 1152) = v1;
}

uint64_t sub_1C5D8F678(uint64_t a1, char a2, uint64_t a3, float a4)
{
  *(v4 + 67) = 0;
  *(v4 + 16) = a1;
  *(v4 + 24) = a4;
  v5 = *(a3 + 16);
  *(v4 + 32) = *a3;
  *(v4 + 48) = v5;
  *(v4 + 63) = *(a3 + 31);
  *(v4 + 68) = a2;
  return v4;
}

uint64_t sub_1C5D8F6A0()
{
  OUTLINED_FUNCTION_2_30();
  sub_1C5D8672C(v0);
  memcpy(__dst, __src, sizeof(__dst));
  sub_1C5C8AD44();
  OUTLINED_FUNCTION_0_49();
  v1 = v4[4];
  v2 = v4[5];
  sub_1C5CC57E0(v6, v4);
  sub_1C5C74C28(v1, v2);
  sub_1C5D95320();
  sub_1C5CC583C(v6);
  return sub_1C5C74C18(v1, v2);
}

uint64_t sub_1C5D8F740()
{
  OUTLINED_FUNCTION_2_30();
  sub_1C5D8C7D4(v0);
  memcpy(__dst, __src, sizeof(__dst));
  sub_1C5C8AD44();
  OUTLINED_FUNCTION_0_49();
  v1 = v4[4];
  v2 = v4[5];
  sub_1C5CC57E0(v6, v4);
  sub_1C5C74C28(v1, v2);
  sub_1C5D95380();
  sub_1C5CC583C(v6);
  return sub_1C5C74C18(v1, v2);
}

uint64_t sub_1C5D8F7E8(uint64_t a1)
{
  v1 = *(a1 + 64) | (*(a1 + 66) << 16);
  if ((v1 & 0xF00000) == 0x500000)
  {
    LOBYTE(v2) = 1;
  }

  else
  {
    v3 = v1 >> 20;
    v4 = v3 > 0xC;
    v2 = 0x1A81u >> v3;
    if (v4)
    {
      LOBYTE(v2) = 0;
    }
  }

  return v2 & 1;
}

uint64_t sub_1C5D8F824(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = *(a1 + 8);
  v6 = *(a1 + 16);
  v5 = *(a1 + 24);
  v7 = *(a1 + 32);
  v8 = *(a1 + 33);
  v9 = *(a1 + 34);
  v10 = *(a1 + 66);
  v11 = v10 >> 4;
  if (v10 >> 4 == 6)
  {
    v21 = *(v3 + 48);
    v22 = *(v3 + 56);
    *(v3 + 32) = *a1;
    *(v3 + 40) = v4;
    *(v3 + 48) = v6;
    *(v3 + 56) = v5;
    *(v3 + 64) = v7 & 1;
    *(v3 + 65) = v8 & 1;
    *(v3 + 66) = v9 & 1;

    sub_1C5C74C28(v6, v5);

    sub_1C5C74C18(v21, v22);
    sub_1C5D943C0();
    return 1;
  }

  if (v11 == 5)
  {
LABEL_8:
    sub_1C5D913C8(a1);
    return 1;
  }

  if (v11 == 3)
  {
    v14 = *(a1 + 48);
    v13 = *(a1 + 56);
    v15 = *(a1 + 40);
    v16 = *(a1 + 35);
    v17 = *(a1 + 39);
    v18 = *a1;
    if (*(a1 + 65))
    {
      v19 = 256;
    }

    else
    {
      v19 = 0;
    }

    v20 = v19 & 0xFFFE | *(a1 + 64) & 1;
    v24[0] = *(a1 + 32);
    v24[1] = v8;
    v24[2] = v9;
    v26 = v17;
    v25 = v16;
    v27 = v15;
    v28 = v14;
    v29 = v13;
    v31 = (v10 & 1) != 0;
    v30 = v20;
    type metadata accessor for PausedState();
    swift_allocObject();
    swift_unknownObjectRetain();
    sub_1C5D869C0(v5);

    sub_1C5C74C28(v14, v13);
    sub_1C5D8B884(v4, v6, 0, v5, v24, v18);
    sub_1C5D94070();

    goto LABEL_8;
  }

  return sub_1C5D9111C(a1, a2);
}

uint64_t sub_1C5D8FA30(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = *a1;
  v6 = *(a1 + 16);
  v7 = *(a1 + 8);
  v8 = (*(a1 + 64) >> 58) & 0x3C | (*(a1 + 64) >> 1) & 3;
  switch(v8)
  {
    case 17:
      OUTLINED_FUNCTION_3_31();
      sub_1C5D94358();
      sub_1C5D943C0();
      v14 = *(v2 + 16);
      if (v14 == 1)
      {
        goto LABEL_10;
      }

      if (!v14)
      {
        v14 = -1;
LABEL_10:
        OUTLINED_FUNCTION_1_39();
        v15 = v45;
        v16 = *v46;
        type metadata accessor for NaturalTransitionState();
        v17 = swift_allocObject();
        swift_getObjectType();
        sub_1C5D9366C(v5, v14, &v43, v17);
        swift_unknownObjectRetain();
        sub_1C5CC57E0(v49, v42);
        sub_1C5C74C28(v15, v16);
        sub_1C5D945C4();
        goto LABEL_28;
      }

      swift_unknownObjectRetain();
      result = sub_1C60178A0();
      __break(1u);
      return result;
    case 18:
    case 20:
    case 22:
    case 23:
      goto LABEL_31;
    case 19:
      swift_getObjectType();
      v18 = sub_1C5DEA0B4();
      v20 = v19;
      if (!sub_1C5D94864())
      {
        goto LABEL_30;
      }

      swift_getObjectType();
      v21 = sub_1C5DEA0B4();
      v23 = v22;
      swift_unknownObjectRelease();
      if (v18 == v21 && v20 == v23)
      {

        goto LABEL_2;
      }

      v25 = sub_1C6017860();

      if (v25)
      {
        goto LABEL_2;
      }

      goto LABEL_31;
    case 21:
      if (*(v2 + 67) != 1)
      {
        goto LABEL_31;
      }

      v40 = *(a1 + 32);
      v26 = *(a1 + 48);
      v39 = *(a1 + 24);
      swift_getObjectType();
      v41 = sub_1C5DEA0B4();
      v28 = v27;
      if (!sub_1C5D94864())
      {
LABEL_30:

        goto LABEL_31;
      }

      v38 = v26;
      swift_getObjectType();
      v29 = sub_1C5DEA0B4();
      v31 = v30;
      swift_unknownObjectRelease();
      if (v41 == v29 && v28 == v31)
      {
      }

      else
      {
        v33 = sub_1C6017860();

        if ((v33 & 1) == 0)
        {
          goto LABEL_31;
        }
      }

      *(v3 + 67) = 0;
      v49[0] = v39 & 1;
      v43 = v5;
      LODWORD(v44) = v7;
      v45 = v6;
      *v46 = v39 & 1 | 0x100;
      *&v46[8] = v40;
      v47 = v38;
      v48 = xmmword_1C603A060;
LABEL_2:
      sub_1C5D94358();
      return 1;
    case 24:
    case 25:
      goto LABEL_2;
    default:
      if (v8 == 4)
      {
        v34 = *(a1 + 8);
        OUTLINED_FUNCTION_3_31();
        sub_1C5D94358();
        sub_1C5D943C0();
        type metadata accessor for ErrorResolutionState();
        swift_allocObject();
        sub_1C5D86C6C(a1, 0, 0, 1);
        swift_unknownObjectRetain();
        v35 = v34;

        goto LABEL_27;
      }

      if (v8 == 7)
      {
        v9 = *(a1 + 12);
        OUTLINED_FUNCTION_3_31();
        sub_1C5D94358();
        v10 = *(v2 + 16);
        sub_1C5D943C0();
        if (v10 != 1)
        {
          if (*((v7 | (v9 << 32)) + 0x10) < 0.0)
          {
            v37 = *(v2 + 40);
            v43 = *(v2 + 32);
            v44 = v37;

            MEMORY[0x1C69534E0](0xD000000000000010, 0x80000001C604FAE0);
            v45 = 0;
            *v46 = 0;
            *&v46[7] = 0;
            sub_1C5D94AAC();
          }

          return 1;
        }

        OUTLINED_FUNCTION_1_39();
        v11 = v45;
        v12 = *v46;
        type metadata accessor for NaturalTransitionState();
        v13 = swift_allocObject();
        swift_getObjectType();
        sub_1C5D9366C(v5, 1, &v43, v13);
        swift_unknownObjectRetain();
        sub_1C5CC57E0(v49, v42);
        sub_1C5C74C28(v11, v12);
LABEL_27:
        OUTLINED_FUNCTION_3_31();
        sub_1C5D945C4();
LABEL_28:

        return 1;
      }

LABEL_31:

      return sub_1C5D912A0(a1);
  }
}

uint64_t sub_1C5D8FF10()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);

  return sub_1C5C74C18(v1, v2);
}

uint64_t sub_1C5D8FF50()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);

  sub_1C5C74C18(v1, v2);

  return MEMORY[0x1EEE6BDC0](v0, 69, 7);
}

uint64_t sub_1C5D8FFE0(uint64_t a1, char a2, uint64_t a3)
{
  *(v3 + 16) = a1;
  *(v3 + 24) = a2 & 1;
  v4 = *(a3 + 16);
  *(v3 + 32) = *a3;
  *(v3 + 48) = v4;
  *(v3 + 63) = *(a3 + 31);
  return v3;
}

uint64_t sub_1C5D90004(uint64_t a1)
{
  v1 = *(a1 + 64) | (*(a1 + 66) << 16);
  if ((v1 & 0xF00000) == 0x900000)
  {
    LOBYTE(v2) = 1;
  }

  else
  {
    v3 = v1 >> 20;
    v4 = v3 > 0xC;
    v2 = 0x1A81u >> v3;
    if (v4)
    {
      LOBYTE(v2) = 0;
    }
  }

  return v2 & 1;
}

uint64_t sub_1C5D90040()
{
  __src[0] = v0;
  sub_1C5D8672C(__src);
  memcpy(__dst, __src, sizeof(__dst));
  sub_1C5C8AD44();
  v1 = *(v0 + 63);
  v2 = *(v0 + 48);
  v15 = *(v0 + 32);
  v16[0] = v2;
  *(v16 + 15) = v1;
  v18 = v15;
  sub_1C5CC57E0(&v18, v14);
  v3 = OUTLINED_FUNCTION_38_0();
  sub_1C5C74C28(v3, v4);
  sub_1C5D95408();
  sub_1C5CC583C(&v18);
  v5 = OUTLINED_FUNCTION_38_0();
  result = sub_1C5C74C18(v5, v6);
  if ((*(v0 + 24) & 1) == 0)
  {
    OUTLINED_FUNCTION_1_40();
    v19 = v8;
    sub_1C5CC57E0(&v19, &v13);
    v9 = OUTLINED_FUNCTION_38_0();
    sub_1C5C74C28(v9, v10);
    sub_1C5D95150();
    sub_1C5CC583C(&v19);
    v11 = OUTLINED_FUNCTION_38_0();
    result = sub_1C5C74C18(v11, v12);
    *(v0 + 16) = 0;
    *(v0 + 24) = 1;
  }

  return result;
}

uint64_t sub_1C5D90140()
{
  __src[0] = v0;
  sub_1C5D8C7D4(__src);
  memcpy(__dst, __src, sizeof(__dst));
  sub_1C5C8AD44();
  OUTLINED_FUNCTION_1_40();
  v7 = v1;
  v2 = v5[4];
  v3 = v5[5];
  sub_1C5CC57E0(&v7, v5);
  sub_1C5C74C28(v2, v3);
  sub_1C5D95464();
  sub_1C5CC583C(&v7);
  return sub_1C5C74C18(v2, v3);
}

uint64_t sub_1C5D901D8(uint64_t *a1, uint64_t a2)
{
  v5 = *a1;
  v4 = a1[1];
  v7 = a1[2];
  v6 = a1[3];
  v8 = *(a1 + 32);
  v9 = *(a1 + 33);
  v10 = *(a1 + 34);
  v11 = *(a1 + 66) >> 4;
  if (v11 == 9)
  {
    v12 = *(v2 + 48);
    v13 = *(v2 + 56);
    *(v2 + 32) = v5;
    *(v2 + 40) = v4;
    *(v2 + 48) = v7;
    *(v2 + 56) = v6;
    *(v2 + 64) = v8 & 1;
    *(v2 + 65) = v9 & 1;
    *(v2 + 66) = v10 & 1;

    sub_1C5C74C28(v7, v6);

    sub_1C5C74C18(v12, v13);
    sub_1C5D943C0();
    goto LABEL_5;
  }

  if (v11 == 8)
  {
    sub_1C5D95150();
LABEL_5:
    sub_1C5D913C8(a1);
    return 1;
  }

  return sub_1C5D9111C(a1, a2);
}

uint64_t sub_1C5D90340(uint64_t *a1, uint64_t a2)
{
  v3 = (a1[8] >> 58) & 0x3C | (a1[8] >> 1) & 3;
  if (v3 == 4)
  {
    v4 = a1[1];
    sub_1C5D94358();
    sub_1C5D943C0();
    type metadata accessor for ErrorResolutionState();
    swift_allocObject();
    sub_1C5D86C6C(a1, 0, 0, 1);
    swift_unknownObjectRetain();
    v5 = v4;

    sub_1C5D945C4();

    return 1;
  }

  if (v3 == 24)
  {
    sub_1C5D94358();
    return 1;
  }

  return sub_1C5D912A0(a1);
}

uint64_t sub_1C5D90468()
{

  v1 = OUTLINED_FUNCTION_38_0();
  sub_1C5C74C18(v1, v2);

  return MEMORY[0x1EEE6BDC0](v0, 67, 7);
}

uint64_t sub_1C5D90514(unsigned int *a1, uint64_t a2)
{
  v4 = sub_1C6015060();
  OUTLINED_FUNCTION_25();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_4_33();
  v8 = *(a1 + 66);
  v9 = *a1;
  v10 = a1[1];
  v11 = *(a1 + 8);
  v12 = *(a1 + 9) | ((*(a1 + 13) | (*(a1 + 15) << 16)) << 32);
  v14 = *(a1 + 2);
  v13 = *(a1 + 3);
  v15 = *(a1 + 4);
  v16 = *(a1 + 40);
  v17 = *(a1 + 41);
  v18 = *(a1 + 42);
  v19 = *(a1 + 43) | (*(a1 + 47) << 32);
  v20 = *(a1 + 48);
  v21 = *(a1 + 49);
  v22 = *(a1 + 50);
  v23 = *(a1 + 51) | (*(a1 + 55) << 32);
  v24 = *(a1 + 7);
  v25 = *(a1 + 64);
  v26 = *(a1 + 65);
  switch(v8 >> 4)
  {
    case 2u:
      v78 = *(a1 + 4);
      v79 = v16 | (v17 << 8) | (v18 << 16) | (v19 << 24);
      LOBYTE(v80) = v20;
      BYTE1(v80) = v21;
      BYTE2(v80) = v22;
      *(&v80 + 3) = v23;
      HIBYTE(v80) = BYTE4(v23);
      v81[0] = v24;
      LOBYTE(v81[1]) = v25 & 1;
      BYTE1(v81[1]) = v26 & 1;
      v27 = v8 & 1;
      goto LABEL_4;
    case 3u:
      *&v35 = v9 | (v10 << 32);
      v36 = v20 | (v21 << 8);
      if (*(a1 + 65))
      {
        v37 = 256;
      }

      else
      {
        v37 = 0;
      }

      v78 = *(a1 + 4);
      v79 = v16 | (v17 << 8) | (v18 << 16) | (v19 << 24);
      v80 = v36 | (v22 << 16) | (v23 << 24);
      v81[0] = v24;
      BYTE2(v81[1]) = (v8 & 1) != 0;
      LOWORD(v81[1]) = v37 & 0xFFFE | v25 & 1;
      v38 = v11 | (v12 << 8);
      v39 = v13;
      v40 = v14;
      type metadata accessor for PausedState();
      swift_allocObject();
      swift_unknownObjectRetain();
      sub_1C5D869C0(v39);

      sub_1C5C74C28(v80, v24);
      sub_1C5D8B884(v38, v40, 0, v39, &v78, v35);
      sub_1C5D94070();
      goto LABEL_26;
    case 4u:
      LOBYTE(v78) = *(a1 + 8);
      OUTLINED_FUNCTION_1_41();
      v79 = v29;
      v80 = v28;
      v81[0] = v30;
      OUTLINED_FUNCTION_0_50();
LABEL_4:
      BYTE2(v81[1]) = v27;
      sub_1C5D94008();
      goto LABEL_27;
    case 5u:
      v57 = v9 | (v10 << 32);
      v78 = *(a1 + 2);
      v79 = v13;
      v58 = v16 | (v17 << 8) | (v18 << 16) | (v19 << 24);
      v80 = v15;
      v81[0] = v58;
      LOBYTE(v81[1]) = v20 & 1;
      BYTE1(v81[1]) = v21 & 1;
      OUTLINED_FUNCTION_2_31(v22 & 1);
      v60 = v59;
      sub_1C5D943C0();
      sub_1C5D951B8();
      v62 = v61;
      type metadata accessor for ScanningState();
      swift_allocObject();
      sub_1C5D8F678(v57, v60 & 1, &v78, v62);

      v55 = v18;
      v56 = v58;
      goto LABEL_14;
    case 6u:
      v34 = a1;
      goto LABEL_28;
    case 7u:
      sub_1C5D943C0();
      sub_1C6015050();
      v31 = sub_1C6015030();
      v33 = v32;
      (*(v6 + 8))(v2, v4);
      v78 = v31;
      v79 = v33;
      type metadata accessor for SeekingState();
      v80 = 0;
      memset(v81, 0, 11);
      swift_allocObject();
      sub_1C5D8FFE0(0, 1, &v78);
      sub_1C5D945C4();

      v34 = a1;
      goto LABEL_28;
    case 8u:
      LOBYTE(v78) = *(a1 + 8);
      OUTLINED_FUNCTION_1_41();
      v42 = v41 | (v10 << 32);
      v79 = v44;
      v80 = v43;
      v81[0] = v45;
      OUTLINED_FUNCTION_0_50();
      OUTLINED_FUNCTION_2_31(v46);
      sub_1C5D943C0();
      type metadata accessor for SeekingState();
      swift_allocObject();
      sub_1C5D8FFE0(v42, 0, &v78);
      goto LABEL_12;
    case 0xAu:
      LOBYTE(v78) = *(a1 + 8);
      OUTLINED_FUNCTION_1_41();
      *&v48 = v47 | (v10 << 32);
      v79 = v50;
      v80 = v49;
      v81[0] = v51;
      OUTLINED_FUNCTION_0_50();
      OUTLINED_FUNCTION_2_31(v52);
      sub_1C5D943C0();
      sub_1C5D94F40();
      v54 = v53;
      type metadata accessor for JumpToTimeState();
      swift_allocObject();
      sub_1C5D89830(0, 2, 1, &v78, v48, v54);
LABEL_12:

      v55 = v12;
      v56 = v18;
LABEL_14:
      sub_1C5C74C28(v55, v56);
      sub_1C5D945C4();

      v34 = a1;
      goto LABEL_28;
    case 0xBu:
      v69 = v9 | (v10 << 32);
      v70 = v11 | (v12 << 8);
      v78 = *(a1 + 2);
      v79 = v13;
      v71 = v16 | (v17 << 8) | (v18 << 16) | (v19 << 24);
      v80 = v15;
      v81[0] = v71;
      LOBYTE(v81[1]) = v20 & 1;
      BYTE1(v81[1]) = v21 & 1;
      BYTE2(v81[1]) = v22 & 1;
      v72 = v15;
      sub_1C5D943C0();
      type metadata accessor for SkippingTransitionState();
      swift_getObjectType();
      sub_1C5D935F4(v69, v70, &v78);
      swift_unknownObjectRetain();

      sub_1C5C74C28(v72, v71);
      sub_1C5D945C4();
      goto LABEL_26;
    case 0xCu:
      v75 = *(a1 + 3);
      v76 = *(a1 + 4);
      v73 = *a1;
      v74 = *(a1 + 2);
      v63 = *(a1 + 8);
      if (!sub_1C5D94864())
      {
        goto LABEL_22;
      }

      swift_unknownObjectRelease();
      LOBYTE(v78) = v63;
      OUTLINED_FUNCTION_1_41();
      v79 = v74;
      v80 = v75;
      v81[0] = v76;
      OUTLINED_FUNCTION_0_50();
      BYTE2(v81[1]) = v64;
      sub_1C5D943C0();
      v65 = sub_1C5D94864();
      if (!v65)
      {
        __break(1u);
        goto LABEL_30;
      }

      v66 = v65;
      v67 = v73 | (v10 << 32);
      if (v67 == 1)
      {
        goto LABEL_21;
      }

      if (v67)
      {
LABEL_30:
        result = sub_1C60178A0();
        __break(1u);
        return result;
      }

      v67 = -1;
LABEL_21:
      type metadata accessor for SkippingTransitionState();
      swift_getObjectType();
      sub_1C5D935F4(v66, v67, &v78);

      sub_1C5C74C28(v75, v76);
      sub_1C5D945C4();
LABEL_26:

LABEL_27:
      v34 = a1;
LABEL_28:
      sub_1C5D913C8(v34);
      return 1;
    default:
LABEL_22:

      return sub_1C5D9111C(a1, a2);
  }
}

uint64_t sub_1C5D90B90(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  sub_1C6015060();
  OUTLINED_FUNCTION_25();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_4_33();
  v8 = (*(a1 + 64) >> 58) & 0x3C | (*(a1 + 64) >> 1) & 3;
  switch(v8)
  {
    case 4:
    case 5:
      OUTLINED_FUNCTION_9_3();
      sub_1C5D94358();
      sub_1C5D943C0();
      type metadata accessor for ErrorResolutionState();
      swift_allocObject();
      sub_1C5D86C6C(a1, 0, 0, 1);
      swift_unknownObjectRetain();
      v17 = v5;

      OUTLINED_FUNCTION_9_3();
      sub_1C5D945C4();
LABEL_31:

      return 1;
    case 7:
      swift_getObjectType();
      v39 = sub_1C5DEA0B4();
      v19 = v18;
      if (!sub_1C5D94864())
      {
        goto LABEL_24;
      }

      swift_getObjectType();
      v20 = sub_1C5DEA0B4();
      v22 = v21;
      swift_unknownObjectRelease();
      if (v39 == v20 && v19 == v22)
      {
      }

      else
      {
        v24 = sub_1C6017860();

        if ((v24 & 1) == 0)
        {
          goto LABEL_25;
        }
      }

      OUTLINED_FUNCTION_9_3();
      sub_1C5D94358();
      sub_1C5D943C0();
      swift_unknownObjectRetain();
      sub_1C6015050();
      sub_1C6015030();
      v36 = OUTLINED_FUNCTION_5_29();
      v37(v36);
      v40 = v2;
      v41 = a1;
      v38 = type metadata accessor for NaturalTransitionState();
      v34 = OUTLINED_FUNCTION_7_27(v38);
      v33 = v4;
      goto LABEL_30;
    case 17:
      OUTLINED_FUNCTION_9_3();
      sub_1C5D94358();
      swift_unknownObjectRetain();
      sub_1C6015050();
      sub_1C6015030();
      v29 = OUTLINED_FUNCTION_5_29();
      v30(v29);
      v40 = v2;
      v41 = a1;
      v31 = type metadata accessor for NaturalTransitionState();
      v32 = OUTLINED_FUNCTION_7_27(v31);
      swift_getObjectType();
      v33 = v4;
      v34 = v32;
LABEL_30:
      sub_1C5D9366C(v33, 1, &v40, v34);
      sub_1C5D945C4();
      goto LABEL_31;
    case 21:
      v26 = *(a1 + 40);
      v25 = *(a1 + 48);
      v27 = *(a1 + 32);
      v28 = *(a1 + 24) & 1;
      v40 = v4;
      LODWORD(v41) = v5;
      v42 = v6;
      v43 = v28 | 0x100;
      v44 = v27;
      v45 = v26;
      v46 = v25;
      v47 = xmmword_1C603A060;
      sub_1C5D8B86C(v27, v26);
      swift_unknownObjectRetain();

      sub_1C5D94358();
      sub_1C5D943C0();
      swift_unknownObjectRelease();
      sub_1C5D5D56C(v27, v26);
      goto LABEL_31;
  }

  if (v8 != 24)
  {
    goto LABEL_25;
  }

  swift_getObjectType();
  v9 = sub_1C5DEA0B4();
  v11 = v10;
  if (!sub_1C5D94864())
  {
LABEL_24:

    goto LABEL_25;
  }

  swift_getObjectType();
  v12 = sub_1C5DEA0B4();
  v14 = v13;
  swift_unknownObjectRelease();
  if (v9 == v12 && v11 == v14)
  {

LABEL_34:
    OUTLINED_FUNCTION_9_3();
    sub_1C5D94358();
    return 1;
  }

  v16 = sub_1C6017860();

  if (v16)
  {
    goto LABEL_34;
  }

LABEL_25:

  return sub_1C5D912A0(a1);
}

uint64_t sub_1C5D90FC8(uint64_t a1, uint64_t a2, char a3)
{
  if (!a3)
  {
    goto LABEL_4;
  }

  if (a3 == 1)
  {
    if ((a1 & 1) == 0)
    {
      sub_1C5D943C0();
      v5 = 0;
      memset(v4, 0, sizeof(v4));
      v6 = -1;
      type metadata accessor for ResettingQueueState();
      *(swift_allocObject() + 91) = 0;
      sub_1C5D8562C(v4, 0, 0);
      sub_1C5D945C4();

      return 1;
    }

LABEL_4:
    sub_1C5D949CC();
    return 1;
  }

  return sub_1C5D91320(a1, a2, a3);
}

uint64_t sub_1C5D9111C(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  if (*(a1 + 66) >> 4 == 1)
  {
    OUTLINED_FUNCTION_1_42();
    type metadata accessor for InitialLoadingState();
    swift_allocObject();
    sub_1C5D87688(v2, v3 & 1, 0, 0, 0, v11);
    swift_unknownObjectRetain();

    v8 = OUTLINED_FUNCTION_303();
    sub_1C5C74C28(v8, v9);
    sub_1C5D94070();

    return 1;
  }

  if (!(*(a1 + 66) >> 4))
  {
    v5 = (*(a1 + 9) << 8) | (*(a1 + 11) << 24) | v3;
    OUTLINED_FUNCTION_1_42();
    type metadata accessor for InitialPreLoadingState();
    swift_allocObject();
    sub_1C5D87F04(v2, 0, 0, v11, *&v5);
    swift_unknownObjectRetain();

    v6 = OUTLINED_FUNCTION_303();
    sub_1C5C74C28(v6, v7);
    sub_1C5D94070();

    sub_1C5D913C8(a1);
    return 1;
  }

  return 0;
}

uint64_t sub_1C5D912A0(uint64_t a1)
{
  result = 0;
  v3 = (*(a1 + 64) >> 58) & 0x3C | (*(a1 + 64) >> 1) & 3;
  if (v3 <= 0x24)
  {
    if (((1 << ((*(a1 + 64) >> 58) & 0x3C | (*(a1 + 64) >> 1) & 3)) & 0x1FDC05AE47) != 0)
    {
LABEL_3:
      sub_1C5D94358();
      return 1;
    }

    if (v3 == 8)
    {
      sub_1C5D950F0(0, 1);
      goto LABEL_3;
    }
  }

  return result;
}

uint64_t sub_1C5D91320(uint64_t a1, uint64_t a2, char a3)
{
  if (!a3)
  {
    sub_1C5D949CC();
    return 1;
  }

  if (a3 == 2)
  {
    type metadata accessor for EndOfQueueState();
    swift_allocObject();

    sub_1C5D869D0(a1, a2);
    sub_1C5D94070();

    return 1;
  }

  return 0;
}

uint64_t sub_1C5D913C8(uint64_t a1)
{
  result = (*(*v1 + 80))();
  if (result)
  {
    v4 = *(a1 + 32);
    switch(*(a1 + 66) >> 4)
    {
      case 2:
      case 3:
        v4 = *(a1 + 48);
        if (v4)
        {
          goto LABEL_7;
        }

        break;
      case 4:
      case 8:
      case 10:
      case 12:
        v4 = *(a1 + 24);
        if (v4)
        {
          goto LABEL_7;
        }

        break;
      case 6:
      case 7:
      case 9:
        v4 = *(a1 + 16);
        goto LABEL_6;
      default:
LABEL_6:
        if (v4)
        {
LABEL_7:
          sub_1C5D61B3C(v13);
          v5 = v13[0];
          v6 = v13[1];
          v7 = v13[2];
          v8 = v13[3];
          v9 = OUTLINED_FUNCTION_303();
          sub_1C5C74C28(v9, v10);
          sub_1C5C74C18(v7, v8);
          v4(v5, v6, 0);
          v11 = OUTLINED_FUNCTION_303();
          sub_1C5C74C18(v11, v12);
        }

        break;
    }
  }

  return result;
}

void sub_1C5D9152C(uint64_t a1, void (*a2)(void *))
{
  a2(__src);
  memcpy(v2, __src, sizeof(v2));
  sub_1C5C8AD44();
}

uint64_t sub_1C5D91604()
{
  sub_1C6015060();
  OUTLINED_FUNCTION_18_18();
  MEMORY[0x1EEE9AC00](v1);
  v6[0] = v0;
  sub_1C5D8672C(v6);
  memcpy(v5, v6, sizeof(v5));
  sub_1C5C8AD44();
  sub_1C6015050();
  sub_1C6015030();
  v2 = OUTLINED_FUNCTION_32();
  v3(v2);
  sub_1C5D93FA8();
}

uint64_t sub_1C5D9172C(uint64_t a1)
{
  v1 = *(a1 + 64) | (*(a1 + 66) << 16);
  if ((v1 & 0xF00000) == 0x600000)
  {
    LOBYTE(v2) = 1;
  }

  else
  {
    v3 = v1 >> 20;
    v4 = v3 > 0xC;
    v2 = 0x1A81u >> v3;
    if (v4)
    {
      LOBYTE(v2) = 0;
    }
  }

  return v2 & 1;
}

uint64_t sub_1C5D91768(unsigned int *a1)
{
  v1 = *(a1 + 66);
  v3 = *(a1 + 1);
  v2 = *(a1 + 2);
  v4 = *(a1 + 3);
  switch(v1 >> 4)
  {
    case 3u:
      v6 = *(a1 + 6);
      v5 = *(a1 + 7);
      *&v7 = *a1 | (a1[1] << 32);
      v8 = *(a1 + 40) | (*(a1 + 41) << 8) | (*(a1 + 42) << 16) | (*(a1 + 43) << 24) | (*(a1 + 47) << 56);
      if (*(a1 + 65))
      {
        v9 = 256;
      }

      else
      {
        v9 = 0;
      }

      v10 = v9 & 0xFFFE | a1[16] & 1;
      v16 = *(a1 + 4);
      v17 = v8;
      v18 = v6;
      v19 = v5;
      v21 = (v1 & 1) != 0;
      v20 = v10;
      v11 = type metadata accessor for PausedState();
      OUTLINED_FUNCTION_14(v11);
      swift_unknownObjectRetain();
      sub_1C5D869C0(v4);

      sub_1C5C74C28(v6, v5);
      sub_1C5D8B884(v3, v2, 0, v4, &v16, v7);
      sub_1C5D94070();

      goto LABEL_8;
    case 4u:
      v16 = *(a1 + 1);
      v17 = v2;
      OUTLINED_FUNCTION_10_23();
      sub_1C5D94008();
      goto LABEL_8;
    case 6u:
      goto LABEL_8;
    case 0xAu:
      v16 = *(a1 + 1);
      v17 = v2;
      OUTLINED_FUNCTION_10_23();
      sub_1C5D93FA8();
LABEL_8:
      v12 = OUTLINED_FUNCTION_303();
      sub_1C5D913C8(v12);
      result = 1;
      break;
    default:
      v14 = OUTLINED_FUNCTION_303();

      result = sub_1C5D9111C(v14, v15);
      break;
  }

  return result;
}

void sub_1C5D91958(uint64_t a1, uint64_t a2, char a3)
{
  sub_1C6015060();
  OUTLINED_FUNCTION_18_18();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  switch(a3)
  {
    case 1:
      OUTLINED_FUNCTION_13_19();
      sub_1C5D949CC();
      break;
    case 2:
      type metadata accessor for EndOfQueueState();
      swift_allocObject();

      v13 = OUTLINED_FUNCTION_13_19();
      sub_1C5D869D0(v13, v14);
      OUTLINED_FUNCTION_22_16();
      sub_1C5D94070();
      goto LABEL_8;
    case 3:
      OUTLINED_FUNCTION_20_19();
      v15 = *(v3 + 16);
      if (v15)
      {
        swift_unknownObjectRetain();
        sub_1C6015050();
        v16 = sub_1C6015030();
        v18 = v17;
        (*(v7 + 8))(v10, v4);
        type metadata accessor for WaitingForItemTransitionState();
        v19 = swift_allocObject();
        *(v19 + 16) = v15;
        *(v19 + 24) = 1;
        *(v19 + 32) = v16;
        *(v19 + 40) = v18;
        *(v19 + 48) = 0;
        *(v19 + 56) = 0;
        *(v19 + 63) = 0;
        sub_1C5D945C4();
LABEL_8:
      }

      else
      {
        __break(1u);
      }

      break;
    default:
      v11 = OUTLINED_FUNCTION_13_19();

      sub_1C5D91320(v11, v12, 0);
      break;
  }
}

void sub_1C5D91B3C(void *a1)
{
  v2 = v1;
  v3 = a1[1];
  OUTLINED_FUNCTION_4_34();
  if (v4 == 26)
  {
    if ((v3 & 0x7FFFFFFF) == 0)
    {
      v12 = sub_1C6016900();
      v13 = sub_1C6016940();
      v15 = v14;
      if (v13 == sub_1C6016940() && v15 == v16)
      {
      }

      else
      {
        v18 = sub_1C6017860();

        if ((v18 & 1) == 0)
        {
          goto LABEL_6;
        }
      }

      v19 = type metadata accessor for PausedAtQueueEndState();
      OUTLINED_FUNCTION_14(v19);
      OUTLINED_FUNCTION_0_1();
      v20 = OUTLINED_FUNCTION_62();
      sub_1C5D8B884(v20, v21, 0, 5, v22, v23);
      goto LABEL_18;
    }
  }

  else if (v4 == 5)
  {
    sub_1C5D94358();
    v5 = sub_1C5D94790();

    if (v5 != v2)
    {
      OUTLINED_FUNCTION_20_19();
      v6 = type metadata accessor for ErrorResolutionState();
      OUTLINED_FUNCTION_24_14(v6);
      OUTLINED_FUNCTION_15_17();
      swift_unknownObjectRetain();
      v7 = v3;

      sub_1C5D945C4();
LABEL_19:

      OUTLINED_FUNCTION_23_3();
      return;
    }

    v10 = type metadata accessor for ErrorResolutionState();
    OUTLINED_FUNCTION_24_14(v10);
    OUTLINED_FUNCTION_15_17();
    swift_unknownObjectRetain();
    v11 = v3;

LABEL_18:
    sub_1C5D94070();
    goto LABEL_19;
  }

LABEL_6:
  OUTLINED_FUNCTION_23_3();

  sub_1C5D912A0(v8);
}

uint64_t sub_1C5D91D3C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a1;
  if (a4 >> 61 == 3)
  {
    sub_1C5C8A7E4();
    if (v4)
    {
      type metadata accessor for PausedState();
      OUTLINED_FUNCTION_0_1();
      OUTLINED_FUNCTION_14(v5);
      v6 = OUTLINED_FUNCTION_62();
      sub_1C5D8B884(v6, v7, 0, 4, v8, v9);
      OUTLINED_FUNCTION_22_16();
      sub_1C5D94070();
    }

    return 1;
  }

  else
  {

    return sub_1C5C8CCE8(a1, a2, a3, a4);
  }
}

uint64_t sub_1C5D91DF8()
{
  swift_unknownObjectRelease();
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);

  return sub_1C5C74C18(v1, v2);
}

uint64_t sub_1C5D91E40()
{
  swift_unknownObjectRelease();
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);

  sub_1C5C74C18(v1, v2);
  return v0;
}

uint64_t sub_1C5D91E88()
{
  sub_1C5D91E40();

  return MEMORY[0x1EEE6BDC0](v0, 67, 7);
}

void sub_1C5D91EE0(uint64_t *a1)
{
  v2 = a1[8];
  v3 = (v2 >> 58) & 0x3C | (v2 >> 1) & 3;
  if (v3 == 8)
  {
    v4 = *a1;
    v11 = *(a1 + 3);
    v12 = *(a1 + 1);
    v10 = *(a1 + 5);
    v5 = a1[7];
    sub_1C5D94358();
    sub_1C5D94790();
    type metadata accessor for PlayingState();
    OUTLINED_FUNCTION_303();
    v6 = swift_dynamicCastClass();
    if (v6)
    {
      v7 = v6;
      memcpy(__dst, (v6 + 40), sizeof(__dst));
      *(v7 + 40) = v4;
      *(v7 + 48) = v12;
      *(v7 + 64) = v11;
      *(v7 + 80) = v10;
      *(v7 + 96) = v5;
      *(v7 + 104) = v2;
      swift_unknownObjectRetain();

      sub_1C5CCB5EC(__dst, qword_1ED7DFBD8, &type metadata for PlayerEvent);
    }

    if ((sub_1C5D94820() & 1) != 0 && (sub_1C5D94790(), v8 = swift_dynamicCastClass(), , v8))
    {
      sub_1C5D943C0();
      type metadata accessor for StallingState();
      swift_allocObject();
      sub_1C5D945C4();
    }

    else
    {
      v9 = sub_1C5C8A688();

      if (v9 == v1)
      {
        sub_1C5D943C0();
      }
    }
  }

  else if (v3 == 23 || v3 == 17)
  {
    sub_1C5D94358();
  }

  else
  {

    sub_1C5D91B3C(a1);
  }
}

uint64_t sub_1C5D920E4(uint64_t a1)
{
  v1 = *(a1 + 66) >> 4;
  if (v1 > 0xC)
  {
    return 0;
  }

  result = 1;
  if (((1 << v1) & 0x1AC1) != 0)
  {
    return result;
  }

  if (v1 != 3)
  {
    return 0;
  }

  sub_1C5D94790();
  type metadata accessor for PausedState();
  v3 = swift_dynamicCastClass();

  if (v3 || !sub_1C5D94864())
  {
    return 1;
  }

  swift_unknownObjectRelease();
  return 0;
}

void sub_1C5D9218C(_OWORD *a1)
{
  OUTLINED_FUNCTION_16_17();
  if (v2)
  {
    sub_1C5D94358();
    sub_1C5D94358();
    v3 = sub_1C5D94790();

    if (v3 != v1)
    {
      sub_1C5D943C0();
    }
  }

  else
  {
    v4 = OUTLINED_FUNCTION_13_19();

    sub_1C5D91B3C(v4);
  }
}

uint64_t sub_1C5D92274(uint64_t a1)
{
  if (((*(a1 + 66) << 16) & 0xF00000) == 0x300000)
  {
    return 1;
  }

  else
  {
    return sub_1C5D920E4(a1) & 1;
  }
}

void sub_1C5D922AC(uint64_t a1)
{
  v2 = v1;
  OUTLINED_FUNCTION_4_34();
  if (v4 == 3)
  {
    OUTLINED_FUNCTION_3_31();
    sub_1C5D94358();
    if (*(v1 + 67) == 1)
    {
      type metadata accessor for InitiatingPlaybackState();
      OUTLINED_FUNCTION_0_1();
      swift_allocObject();
      v9 = OUTLINED_FUNCTION_62();
      sub_1C5D8856C(v9, v10, 0, v11);
    }

    else
    {
      type metadata accessor for PausedState();
      OUTLINED_FUNCTION_0_1();
      OUTLINED_FUNCTION_14(v14);
      v15 = OUTLINED_FUNCTION_62();
      sub_1C5D8B884(v15, v16, 1, 0, v17, v18);
    }

    OUTLINED_FUNCTION_22_16();
    sub_1C5D94070();
    goto LABEL_13;
  }

  if (v4 == 5)
  {
    v5 = *(a1 + 8);
    OUTLINED_FUNCTION_3_31();
    sub_1C5D94358();
    v6 = sub_1C5D94790();

    if (v6 == v2)
    {
      v19 = type metadata accessor for ErrorResolutionState();
      OUTLINED_FUNCTION_24_14(v19);
      OUTLINED_FUNCTION_14_22();
      swift_unknownObjectRetain();
      v20 = v5;

      OUTLINED_FUNCTION_3_31();
      sub_1C5D94070();
    }

    else
    {
      OUTLINED_FUNCTION_20_19();
      v7 = type metadata accessor for ErrorResolutionState();
      OUTLINED_FUNCTION_24_14(v7);
      OUTLINED_FUNCTION_14_22();
      swift_unknownObjectRetain();
      v8 = v5;

      OUTLINED_FUNCTION_3_31();
      sub_1C5D945C4();
    }

LABEL_13:

    OUTLINED_FUNCTION_23_3();
    return;
  }

  OUTLINED_FUNCTION_23_3();

  sub_1C5D9218C(v12);
}

uint64_t sub_1C5D92478()
{
  sub_1C5D91E40();

  return MEMORY[0x1EEE6BDC0](v0, 68, 7);
}

uint64_t sub_1C5D924D0(uint64_t a1)
{
  v1 = *(a1 + 66) >> 4;
  if (v1 <= 0xC)
  {
    result = 1;
    if (((1 << v1) & 0x1AC1) != 0)
    {
      return result;
    }

    if (v1 == 2)
    {
      v5 = *a1;
      sub_1C5D951B8();
      if (v5 == v6)
      {
        return 1;
      }
    }

    else if (v1 == 3)
    {
      sub_1C5D951B8();
      if (v4 == 0.0)
      {
        return 1;
      }
    }
  }

  return 0;
}

uint64_t sub_1C5D9255C(uint64_t a1)
{
  v4 = *a1;
  v3 = *(a1 + 8);
  v6 = *(a1 + 16);
  v5 = *(a1 + 24);
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);
  v9 = *(a1 + 48);
  v10 = *(a1 + 64) | (*(a1 + 66) << 16);
  v11 = *(a1 + 66) >> 4;
  switch(v11)
  {
    case 2:
      v21 = *(a1 + 56);
      v23 = *(a1 + 8);
      sub_1C5D951B8();
      if (v15 == *&v4)
      {
        sub_1C5D951B8();
        if (v16 != *&v4)
        {
          break;
        }

        goto LABEL_7;
      }

      __dst[9] = v8;
      __dst[10] = v7;
      v25 = v9;
      v26 = BYTE2(v9);
      v28 = HIBYTE(v9);
      v27 = v9 >> 24;
      v29 = v21;
      v30 = v10 & 0x101;
      v31 = BYTE2(v10) & 1;
      sub_1C5D94008();
      memcpy(__dst, (v1 + 72), 0x43uLL);
      *(v1 + 72) = v4;
      *(v1 + 80) = v23;
      *(v1 + 88) = v6;
      *(v1 + 96) = v5;
      *(v1 + 104) = v8;
      *(v1 + 112) = v7;
      *(v1 + 120) = v9;
      *(v1 + 128) = v21;
      *(v1 + 138) = BYTE2(v10);
      *(v1 + 136) = v10;
      swift_unknownObjectRetain();

      v18 = v9;
      v19 = v21;
LABEL_15:
      sub_1C5C74C28(v18, v19);
      sub_1C5CCB5EC(__dst, &qword_1ED7DC2D0, &type metadata for UserEvent);
      return 1;
    case 3:
      v20 = *(a1 + 56);
      v22 = *(a1 + 8);
      sub_1C5D951B8();
      if (v13 == 0.0)
      {
        sub_1C5D951B8();
        if (v14 != 0.0)
        {
          break;
        }

LABEL_7:
        sub_1C5D913C8(a1);
        return 1;
      }

      memcpy(__dst, (v1 + 72), 0x43uLL);
      *(v1 + 72) = v4;
      *(v1 + 80) = v22;
      *(v1 + 88) = v6;
      *(v1 + 96) = v5;
      *(v1 + 104) = v8;
      *(v1 + 112) = v7;
      *(v1 + 120) = v9;
      *(v1 + 128) = v20;
      *(v1 + 138) = BYTE2(v10);
      *(v1 + 136) = v10;
      swift_unknownObjectRetain();
      sub_1C5D869C0(v5);

      v18 = v9;
      v19 = v20;
      goto LABEL_15;
    case 11:
      __dst[0] = *(a1 + 16);
      __dst[1] = v5;
      __dst[2] = v8;
      __dst[3] = v7;
      LOWORD(__dst[4]) = v9 & 0x101;
      BYTE2(__dst[4]) = BYTE2(v9) & 1;
      v12 = v3;
      sub_1C5D943C0();
      type metadata accessor for SkippingTransitionState();
      swift_getObjectType();
      sub_1C5D935F4(v4, v12, __dst);
      swift_unknownObjectRetain();

      sub_1C5C74C28(v8, v7);
      sub_1C5D945C4();

      return 1;
  }

  return sub_1C5D91768(a1);
}

void sub_1C5D92810()
{
  OUTLINED_FUNCTION_16_17();
  if (v2)
  {
    sub_1C5D94358();
    memcpy(__dst, (v0 + 72), 0x43uLL);
    v3 = LOWORD(__dst[8]) | (BYTE2(__dst[8]) << 16);
    if ((~v3 & 0xFEFEFE) != 0)
    {
      v4 = (v3 >> 20) & 0xF;
      if (v4 == 3)
      {
        v16 = (LOBYTE(__dst[3]) | ((*(&__dst[3] + 1) | ((*(&__dst[3] + 5) | (HIBYTE(__dst[3]) << 16)) << 32)) << 8));
        v31 = __dst[4];
        v32 = __dst[5];
        if ((v3 & 0x10000) != 0)
        {
          v17 = 0x10000;
        }

        else
        {
          v17 = 0;
        }

        OUTLINED_FUNCTION_17_15(v17);
        v18 = type metadata accessor for PausedState();
        OUTLINED_FUNCTION_14(v18);
        swift_unknownObjectRetain();
        sub_1C5D869C0(v16);

        v19 = OUTLINED_FUNCTION_32();
        sub_1C5C74C28(v19, v20);
        sub_1C5D936A8(__dst, v29);
        swift_unknownObjectRetain();
        sub_1C5D869C0(v16);

        v21 = OUTLINED_FUNCTION_32();
        sub_1C5C74C28(v21, v22);
        v23 = OUTLINED_FUNCTION_13_19();
        sub_1C5D8B884(v23, v24, 0, v16, v25, v26);
        sub_1C5D94070();

        v27 = OUTLINED_FUNCTION_32();
        sub_1C5C74C18(v27, v28);
        sub_1C5D5D584(v16);
        goto LABEL_18;
      }

      if (v4 == 2)
      {
        v31 = __dst[4];
        v32 = __dst[5];
        if ((v3 & 0x10000) != 0)
        {
          v5 = 0x10000;
        }

        else
        {
          v5 = 0;
        }

        OUTLINED_FUNCTION_17_15(v5);
        type metadata accessor for InitiatingPlaybackState();
        swift_allocObject();
        swift_unknownObjectRetain();

        v6 = OUTLINED_FUNCTION_32();
        sub_1C5C74C28(v6, v7);
        swift_unknownObjectRetain();

        v8 = OUTLINED_FUNCTION_32();
        sub_1C5C74C28(v8, v9);
        sub_1C5D936A8(__dst, v29);
        v10 = OUTLINED_FUNCTION_13_19();
        sub_1C5D8856C(v10, v11, v12, v13);
        sub_1C5D94070();

        v14 = OUTLINED_FUNCTION_32();
        sub_1C5C74C18(v14, v15);
LABEL_18:
        swift_unknownObjectRelease();
        sub_1C5CCB5EC(__dst, &qword_1ED7DC2D0, &type metadata for UserEvent);
        return;
      }
    }

    sub_1C5D943C0();
    return;
  }

  sub_1C5D91B3C(v1);
}

uint64_t sub_1C5D92B00()
{
  sub_1C5D91E40();
  OUTLINED_FUNCTION_11_17();

  return MEMORY[0x1EEE6BDC0](v0, 139, 7);
}

void sub_1C5D92B7C()
{
  sub_1C5D91604();
  OUTLINED_FUNCTION_62();
  sub_1C5D949CC();
}

uint64_t sub_1C5D92BB0(uint64_t a1)
{
  if (((*(a1 + 66) << 16) & 0xF00000) == 0xB00000)
  {
    return 0;
  }

  else
  {
    return sub_1C5D91768(a1);
  }
}

void sub_1C5D92BD0(uint64_t a1, char a2, char a3)
{
  switch(a3)
  {
    case 1:
      if ((a1 & 1) == 0)
      {
        OUTLINED_FUNCTION_20_19();
        OUTLINED_FUNCTION_8_1();
        type metadata accessor for ResettingQueueState();
        *(swift_allocObject() + 91) = 0;
        goto LABEL_9;
      }

      OUTLINED_FUNCTION_303();
      sub_1C5D949CC();
      break;
    case 2:
      v6 = OUTLINED_FUNCTION_303();

      sub_1C5D91958(v6, v7, 2);
      break;
    case 3:
      return;
    default:

      OUTLINED_FUNCTION_20_19();
      OUTLINED_FUNCTION_8_1();
      type metadata accessor for ChangingCurrentItemState();
      v5 = swift_allocObject();
      *(v5 + 96) = a1;
      *(v5 + 104) = a2 & 1;
LABEL_9:
      sub_1C5D8562C(&v8, 0, 0);
      OUTLINED_FUNCTION_22_16();
      sub_1C5D945C4();

      break;
  }
}

void sub_1C5D92D10(uint64_t a1)
{
  v2 = v1;
  __src[0] = v2;
  sub_1C5D8C7D4(__src);
  memcpy(v4, __src, sizeof(v4));
  sub_1C5C8AD44();
  if ((*(v2 + 67) & 1) == 0)
  {
    sub_1C5D93510(a1, 0, 1);
  }
}

void sub_1C5D92D84(unsigned __int8 *a1, uint64_t a2)
{
  v3 = v2;
  if (*(v2 + 67) == 1)
  {
LABEL_2:

    sub_1C5D91EE0(a1);
  }

  else
  {
    OUTLINED_FUNCTION_4_34();
    v7 = *a1;
    switch(v6)
    {
      case 4:
      case 5:
        sub_1C5D93164(a2);
        goto LABEL_2;
      case 6:
      case 7:
      case 10:
      case 11:
      case 12:
      case 13:
      case 15:
      case 16:
      case 17:
        goto LABEL_2;
      case 8:
      case 9:
        goto LABEL_10;
      case 14:
        v10 = ((*(a1 + 1) << 8) | ((*(a1 + 5) | (a1[7] << 16)) << 40) | v7);
        sub_1C5D94358();
        sub_1C5D93164(a2);
        v11 = [v10 avPlayerItem];
        if (v11)
        {
          v12 = v11;
          v13 = sub_1C5D62DEC();

          *v14 = v13[2];
          v14[1] = v10;
          v15 = xmmword_1C60311B0;
          v16 = v13;
          v17 = xmmword_1C603A080;
          swift_unknownObjectRetain();

          sub_1C5D94358();

          swift_unknownObjectRelease();
        }

        else
        {
          __break(1u);
        }

        return;
      case 18:
        sub_1C5D94358();
        if (v7)
        {
          sub_1C5D93510(a2, 0, 1);
        }

        else
        {
          sub_1C5D93164(a2);
        }

        return;
      default:
        if (v6 == 24)
        {
          return;
        }

        if (v6 != 30 && v6 != 34)
        {
          goto LABEL_2;
        }

LABEL_10:
        swift_beginAccess();
        sub_1C5D293C8();
        v8 = *(*(v2 + 72) + 16);
        sub_1C5D2949C(v8);
        v9 = *(v2 + 72);
        *(v9 + 16) = v8 + 1;
        memcpy((v9 + 72 * v8 + 32), a1, 0x48uLL);
        *(v3 + 72) = v9;
        swift_endAccess();
        sub_1C5D5D5AC(a1, v14);
        break;
    }
  }
}

uint64_t sub_1C5D92FCC(uint64_t a1, uint64_t a2)
{
  if (*(v2 + 67) != 1)
  {
    v4 = *(a1 + 66) >> 4;
    if (v4 == 10)
    {
      v7 = *(a1 + 41);
      v8 = *(a1 + 40);
      v9 = *(a1 + 42);
      v11 = *(a1 + 24);
      v10 = *(a1 + 32);
      v12 = *(a1 + 16);
      v13 = *a1;
      v14 = *a1;
      v18[0] = *(a1 + 8);
      v18[1] = v12;
      v18[2] = v11;
      v18[3] = v10;
      v19 = v8 & 1;
      v20 = v7 & 1;
      v21 = v9 & 1;
      sub_1C5D93510(a2, v13, 0);
      sub_1C5D943C0();
      sub_1C5D94F40();
      v16 = v15;
      type metadata accessor for JumpToTimeState();
      swift_allocObject();
      sub_1C5D89830(0, 2, 0, v18, v14, v16);

      sub_1C5C74C28(v11, v10);
      sub_1C5D945C4();

      v17 = OUTLINED_FUNCTION_303();
      sub_1C5D913C8(v17);
      return 1;
    }

    if (v4 == 3)
    {
      *(v2 + 69) = 1;
    }
  }

  v5 = OUTLINED_FUNCTION_303();

  return sub_1C5D91768(v5);
}

uint64_t sub_1C5D93164(uint64_t result)
{
  if ((*(v1 + 67) & 1) == 0)
  {
    v4 = result;
    *(v1 + 67) = 1;
    swift_beginAccess();
    v5 = *(v1 + 72);
    *(v1 + 72) = MEMORY[0x1E69E7CC0];
    v6 = *(v5 + 16);
    if (v6)
    {
      v7 = v6 - 1;
      for (i = 32; ; i += 72)
      {
        memcpy(__dst, (v5 + i), sizeof(__dst));
        v9 = __dst[0];
        OUTLINED_FUNCTION_4_34();
        switch(v10)
        {
          case 34:
            OUTLINED_FUNCTION_0_52();
            switch(v20 & 0xFFFFFFFC | (v19 >> 1) & 3)
            {
              case 0x1Du:
                OUTLINED_FUNCTION_2_32();
                break;
              default:
                break;
            }

            v59 = OUTLINED_FUNCTION_26_11();
            v60 = OUTLINED_FUNCTION_25_11(v59);
            OUTLINED_FUNCTION_12_23(v60, v61, v62, v63, v64, v65, v66, v67, v72, v74, v76, v78, v80, v82, v84, v85, v86, v87, v88, v89, v90, v91, v92, __src[0], __src[1], __src[2], __src[3], __src[4], __src[5], __src[6], __src[7], __src[8]);
            swift_unknownObjectRetain();
            v70 = OUTLINED_FUNCTION_1_43(v68, v69);
            v33 = v81 & 1;
            v34 = v83 & 0xFFFFFFFFFFFFFF8 | 0x8000000000000004;
            __src[0] = v9;
            __src[1] = v70;
            v80 = v33;
            v82 = v34;
            break;
          case 9:
            OUTLINED_FUNCTION_0_52();
            switch(v14 & 0xFFFFFFFC | (v13 >> 1) & 3)
            {
              case 0x1Du:
                OUTLINED_FUNCTION_2_32();
                break;
              default:
                break;
            }

            v21 = OUTLINED_FUNCTION_26_11();
            v22 = OUTLINED_FUNCTION_25_11(v21);
            OUTLINED_FUNCTION_12_23(v22, v23, v24, v25, v26, v27, v28, v29, v72, v74, v76, v78, v80, v82, v84, v85, v86, v87, v88, v89, v90, v91, v92, __src[0], __src[1], __src[2], __src[3], __src[4], __src[5], __src[6], __src[7], __src[8]);
            swift_unknownObjectRetain();
            v32 = OUTLINED_FUNCTION_1_43(v30, v31);
            v33 = v3 & 1;
            v34 = v2 & 0xFFFFFFFFFFFFFF8 | 0x2000000000000002;
            __src[0] = v9;
            __src[1] = v32;
            v2 = v34;
            v3 &= 1u;
            break;
          case 30:
            v15 = v2;
            v16 = __dst[1];
            OUTLINED_FUNCTION_0_52();
            switch(v18 & 0xFFFFFFFC | (v17 >> 1) & 3)
            {
              case 0x1Du:
                OUTLINED_FUNCTION_2_32();
                break;
              default:
                break;
            }

            v47 = OUTLINED_FUNCTION_26_11();
            v48 = OUTLINED_FUNCTION_25_11(v47);
            OUTLINED_FUNCTION_12_23(v48, v49, v50, v51, v52, v53, v54, v55, v72, v74, v76, v78, v80, v82, v84, v85, v86, v87, v88, v89, v90, v91, v92, __src[0], __src[1], __src[2], __src[3], __src[4], __src[5], __src[6], __src[7], __src[8]);
            swift_unknownObjectRetain();
            swift_unknownObjectRetain();
            v58 = OUTLINED_FUNCTION_1_43(v56, v57);
            v33 = v75 & 1;
            v34 = v79 & 0xFFFFFFFFFFFFFF8 | 0x7000000000000004;
            __src[0] = v9;
            __src[1] = v16;
            __src[2] = v58;
            v78 = v34;
            v74 = v33;
            v2 = v15;
            break;
          case 8:
            OUTLINED_FUNCTION_0_52();
            switch(v12 & 0xFFFFFFFC | (v11 >> 1) & 3)
            {
              case 0x1Du:
                OUTLINED_FUNCTION_2_32();
                break;
              default:
                break;
            }

            v35 = OUTLINED_FUNCTION_26_11();
            v36 = OUTLINED_FUNCTION_25_11(v35);
            OUTLINED_FUNCTION_12_23(v36, v37, v38, v39, v40, v41, v42, v43, v72, v74, v76, v78, v80, v82, v84, v85, v86, v87, v88, v89, v90, v91, v92, __src[0], __src[1], __src[2], __src[3], __src[4], __src[5], __src[6], __src[7], __src[8]);
            swift_unknownObjectRetain();
            v46 = OUTLINED_FUNCTION_1_43(v44, v45);
            v33 = v73 & 1;
            v34 = v77 & 0xFFFFFFFFFFFFFF8 | 0x2000000000000000;
            __src[0] = v9;
            __src[1] = v46;
            v76 = v34;
            v72 = v33;
            break;
          default:
            goto LABEL_21;
        }

        __src[7] = v33;
        __src[8] = v34;
        memcpy(v95, __src, 0x48uLL);
        v71 = sub_1C5C8A688();
        (*(*v71 + 128))(v95, v4);

        sub_1C5D7EF0C(__src);
        sub_1C5D7EF0C(__dst);
LABEL_21:
        if (!v7)
        {
        }

        --v7;
      }
    }
  }

  return result;
}

void sub_1C5D93510(uint64_t result, uint64_t a2, char a3)
{
  if ((*(v3 + 68) & 1) == 0)
  {
    *(v3 + 68) = 1;
    if (*(v3 + 16))
    {
      sub_1C5D954C0();
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t sub_1C5D9355C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 67) = 0;
  *(v3 + 69) = 0;
  *(v3 + 72) = MEMORY[0x1E69E7CC0];
  *(v3 + 16) = a1;
  *(v3 + 24) = a2;
  v4 = *(a3 + 16);
  *(v3 + 32) = *a3;
  *(v3 + 48) = v4;
  *(v3 + 63) = *(a3 + 31);
  return v3;
}

uint64_t sub_1C5D93594()
{
  sub_1C5D91E40();

  return MEMORY[0x1EEE6BDC0](v0, 80, 7);
}

__n128 sub_1C5D935F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for SkippingTransitionState();
  v6 = swift_allocObject();
  *(v6 + 72) = 0u;
  *(v6 + 88) = 0u;
  *(v6 + 104) = 0u;
  *(v6 + 120) = 0u;
  *(v6 + 138) = -2;
  *(v6 + 136) = -258;
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  result = *a3;
  v8 = *(a3 + 16);
  *(v6 + 32) = *a3;
  *(v6 + 48) = v8;
  *(v6 + 63) = *(a3 + 31);
  return result;
}

uint64_t sub_1C5D9366C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(a4 + 16) = a1;
  *(a4 + 24) = a2;
  v4 = *(a3 + 16);
  *(a4 + 32) = *a3;
  *(a4 + 48) = v4;
  *(a4 + 63) = *(a3 + 31);
  return a4;
}

void sub_1C5D93688(uint64_t result, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unsigned int a9)
{
  if ((~a9 & 0xFEFEFE) != 0)
  {
    sub_1C5D867AC(result, a2, a3, a4, a5, a6, a7, a8, a9);
  }
}

uint64_t sub_1C5D936A8(uint64_t a1, uint64_t a2)
{
  sub_1C5C67444(0, &qword_1ED7DC2D0, &type metadata for UserEvent);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t *OUTLINED_FUNCTION_14_22()
{

  return sub_1C5D86C6C(v1, 1, v0, v2);
}

void OUTLINED_FUNCTION_20_19()
{

  sub_1C5D943C0();
}

uint64_t sub_1C5D93790(uint64_t a1, char a2, char a3)
{
  if (a3 == 1)
  {
    if (a1)
    {
      OUTLINED_FUNCTION_303();
LABEL_24:
      sub_1C5D949CC();
      return 1;
    }

    OUTLINED_FUNCTION_8_1();
    type metadata accessor for ResettingQueueState();
    *(swift_allocObject() + 91) = 0;
LABEL_21:
    sub_1C5D8562C(&v20, 0, 0);
    sub_1C5D945C4();

    return 1;
  }

  if (!a3)
  {

    if (sub_1C5D94864())
    {
      swift_getObjectType();
      v5 = sub_1C5DEA0B4();
      v7 = v6;
      swift_unknownObjectRelease();
      if (!sub_1C5C6AA20())
      {

LABEL_20:
        OUTLINED_FUNCTION_8_1();
        type metadata accessor for ChangingCurrentItemState();
        v17 = swift_allocObject();
        *(v17 + 96) = a1;
        *(v17 + 104) = a2 & 1;
        goto LABEL_21;
      }

      sub_1C5C8CEE0();
      if ((a1 & 0xC000000000000001) != 0)
      {
        MEMORY[0x1C6954040](0, a1);
      }

      else
      {
        swift_unknownObjectRetain();
      }

      swift_getObjectType();
      v8 = sub_1C5DEA0B4();
      v10 = v9;
      swift_unknownObjectRelease();
      if (v8 != v5 || v10 != v7)
      {
        v12 = sub_1C6017860();

        if (v12)
        {
          goto LABEL_23;
        }

        goto LABEL_20;
      }
    }

LABEL_23:
    v18 = OUTLINED_FUNCTION_303();
    sub_1C5D868E4(v18, v19, 0);
    OUTLINED_FUNCTION_303();
    goto LABEL_24;
  }

  v13 = OUTLINED_FUNCTION_303();

  return sub_1C5D91320(v13, v14, v15);
}

uint64_t sub_1C5D939A4(uint64_t a1)
{
  v1 = *(a1 + 66) >> 4;
  if (v1 > 0xC)
  {
    return 0;
  }

  result = 1;
  if (((1 << v1) & 0x1AC1) != 0)
  {
    return result;
  }

  if (v1 != 5)
  {
    return 0;
  }

  if (!sub_1C5D94864())
  {
    return 1;
  }

  swift_unknownObjectRelease();
  return 0;
}

uint64_t sub_1C5D93A18(uint64_t a1, uint64_t a2)
{
  v65 = a2;
  v3 = sub_1C6015060();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v59 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *a1;
  v8 = *(a1 + 8);
  v10 = *(a1 + 16);
  v9 = *(a1 + 24);
  v11 = *(a1 + 32);
  v12 = *(a1 + 40);
  v13 = *(a1 + 41);
  v14 = *(a1 + 42);
  v15 = *(a1 + 43) | (*(a1 + 47) << 32);
  switch(*(a1 + 66) >> 4)
  {
    case 5:
      v16 = *(a1 + 41);
      v17 = *(a1 + 42);
      v60 = *(a1 + 8);
      v61 = v7;
      v62 = v10;
      v63 = v9;
      v64 = v11;
      if (sub_1C5D94864())
      {
        v18 = v12 | (v16 << 8) | (v17 << 16) | (v15 << 24);
        swift_unknownObjectRelease();
        v67 = v62;
        v68 = v63;
        v19 = v64;
        v69 = v64;
        v70[0] = v18;
        OUTLINED_FUNCTION_3_32();
        sub_1C5D951B8();
        v21 = v20;
        type metadata accessor for ScanningState();
        swift_allocObject();
        sub_1C5D8F678(v61, v60 & 1, &v67, v21);
        goto LABEL_13;
      }

      if (sub_1C5D94864())
      {
        swift_unknownObjectRelease();
        goto LABEL_16;
      }

      v28 = a1;
      goto LABEL_24;
    case 6:
      v28 = a1;
      goto LABEL_24;
    case 7:
      sub_1C6015050();
      v41 = sub_1C6015030();
      v43 = v42;
      (*(v4 + 8))(v6, v3);
      v67 = v41;
      v68 = v43;
      type metadata accessor for SeekingState();
      v69 = 0;
      memset(v70, 0, 11);
      swift_allocObject();
      sub_1C5D8FFE0(0, 1, &v67);
      sub_1C5D945C4();
      goto LABEL_23;
    case 8:
      LOBYTE(v67) = *(a1 + 8);
      OUTLINED_FUNCTION_0_53();
      OUTLINED_FUNCTION_1_44(v44);
      v46 = v45;
      v48 = v47;
      v50 = v49;
      type metadata accessor for SeekingState();
      swift_allocObject();
      sub_1C5D8FFE0(v50, 0, &v67);

      sub_1C5C74C28(v48, v46);
      goto LABEL_22;
    case 10:
      v51 = *a1;
      LOBYTE(v67) = *(a1 + 8);
      OUTLINED_FUNCTION_0_53();
      OUTLINED_FUNCTION_1_44(v52);
      v18 = v53;
      v19 = v54;
      sub_1C5D94F40();
      v56 = v55;
      type metadata accessor for JumpToTimeState();
      swift_allocObject();
      sub_1C5D89830(0, 2, 0, &v67, v51, v56);
LABEL_13:

      sub_1C5C74C28(v19, v18);
      sub_1C5D945C4();

      v28 = a1;
      goto LABEL_24;
    case 11:
      v22 = v8 | ((*(a1 + 9) | ((*(a1 + 13) | (*(a1 + 15) << 16)) << 32)) << 8);
      v67 = *(a1 + 16);
      v68 = v9;
      v23 = v12 | (v13 << 8) | (v14 << 16) | (v15 << 24);
      v69 = v11;
      v70[0] = v23;
      OUTLINED_FUNCTION_3_32();
      v25 = v24;
      v27 = v26;
      type metadata accessor for SkippingTransitionState();
      swift_getObjectType();
      sub_1C5D935F4(v27, v22, &v67);
      swift_unknownObjectRetain();

      sub_1C5C74C28(v25, v23);
      sub_1C5D945C4();
      goto LABEL_23;
    case 12:
      v63 = *(a1 + 24);
      v64 = v11;
      v29 = v7;
      v62 = v10;
      v30 = v8;
      v31 = v14;
      v32 = v13;
      if (!sub_1C5D94864())
      {
        goto LABEL_16;
      }

      v33 = v31;
      v34 = v30;
      v35 = v64;
      v36 = v63;
      v37 = v62;
      swift_unknownObjectRelease();
      LOBYTE(v67) = v34;
      OUTLINED_FUNCTION_0_53();
      v68 = v37;
      v69 = v36;
      v70[0] = v35;
      LOBYTE(v70[1]) = v12 & 1;
      BYTE1(v70[1]) = v32 & 1;
      BYTE2(v70[1]) = v33 & 1;
      v38 = sub_1C5D94864();
      if (!v38)
      {
        __break(1u);
        goto LABEL_27;
      }

      v39 = v38;
      if (v29 == 1)
      {
        v40 = 1;
        goto LABEL_21;
      }

      if (v29)
      {
LABEL_27:
        v66 = v29;
        result = sub_1C60178A0();
        __break(1u);
        return result;
      }

      v40 = -1;
LABEL_21:
      type metadata accessor for SkippingTransitionState();
      swift_getObjectType();
      sub_1C5D935F4(v39, v40, &v67);

      sub_1C5C74C28(v63, v64);
LABEL_22:
      sub_1C5D945C4();
LABEL_23:

      v28 = a1;
LABEL_24:
      sub_1C5D913C8(v28);
      return 1;
    default:
LABEL_16:
      v57 = v65;

      return sub_1C5D9111C(a1, v57);
  }
}

void sub_1C5D93FA8()
{
  OUTLINED_FUNCTION_13_20();
  OUTLINED_FUNCTION_11_18();
  OUTLINED_FUNCTION_4_35();
  v1 = *(v0 + 96);
  swift_unknownObjectRetain();
  OUTLINED_FUNCTION_29_12();
  OUTLINED_FUNCTION_9_23();
  v1();
  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_12_24();
}

void sub_1C5D94008()
{
  OUTLINED_FUNCTION_15_18();
  OUTLINED_FUNCTION_26_12();
  OUTLINED_FUNCTION_1_45();
  v1 = *(v0 + 40);
  swift_unknownObjectRetain();
  v2 = OUTLINED_FUNCTION_3_33();
  v1(v2);
  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_14_23();
}

void sub_1C5D94070()
{
  OUTLINED_FUNCTION_247();
  v4 = OUTLINED_FUNCTION_34_9();
  swift_beginAccess();
  v5 = *(v1 + 40);
  __src[0] = v0;
  __src[1] = v5;
  sub_1C5D95FC0(__src);
  memcpy(__dst, __src, 0xD9uLL);
  OUTLINED_FUNCTION_33_5();

  v3(__dst, v4, v2);
  swift_unknownObjectRelease();

  if (sub_1C5C6AA20())
  {
    v6 = *(v1 + 40);
    if (!sub_1C5C6AA20())
    {
      goto LABEL_23;
    }

    sub_1C5C8CEE0();
    if ((v6 & 0xC000000000000001) != 0)
    {
      goto LABEL_24;
    }

    while (1)
    {
      v6 = *(v1 + 40);

      v8 = sub_1C5C8CEE4(v7);

      if (!v8)
      {
        break;
      }

      v9 = *(v1 + 40);
      if (v9 >> 62)
      {
        v10 = sub_1C6017440();
        if (!v10)
        {
          goto LABEL_17;
        }
      }

      else
      {
        v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v10)
        {
          goto LABEL_17;
        }
      }

      while (!__OFSUB__(v10--, 1))
      {
        if ((v9 & 0xC000000000000001) != 0)
        {
          v12 = OUTLINED_FUNCTION_15_1();
          v6 = MEMORY[0x1C6954040](v12);
        }

        else
        {
          if ((v10 & 0x8000000000000000) != 0)
          {
            goto LABEL_21;
          }

          if (v10 >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_22;
          }

          v6 = *(v9 + 32 + 8 * v10);
        }

        (*(*v6 + 104))(v1);

        if (!v10)
        {

          goto LABEL_17;
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

      MEMORY[0x1C6954040](0, v6);
    }

    __break(1u);
  }

  else
  {
LABEL_17:
    sub_1C5D95FD4(0, &qword_1ED7DCAF0, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_1C60311F0;
    *(v13 + 32) = v0;
    *(v1 + 40) = v13;

    if (swift_unknownObjectWeakLoadStrong())
    {
      v14 = sub_1C5D94790();
      OUTLINED_FUNCTION_25_12(v14);

      swift_unknownObjectRelease();
    }

    (*(*v0 + 96))(v1);

    OUTLINED_FUNCTION_237();
  }
}

void sub_1C5D94358()
{
  OUTLINED_FUNCTION_22_17();
  OUTLINED_FUNCTION_21_17();
  v1 = *(*(v0 + 16) + 16);
  swift_unknownObjectRetain();
  v2 = OUTLINED_FUNCTION_3_33();
  v1(v2);
  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_16_18();
}

void sub_1C5D943C0()
{
  OUTLINED_FUNCTION_247();
  v1 = v0;
  v10 = v2;
  sub_1C5D94790();
  OUTLINED_FUNCTION_27(v0 + 40, v12);
  v3 = *(v0 + 40);
  swift_beginAccess();

  v4 = sub_1C5D95544();
  swift_endAccess();
  if (v4)
  {
    v5 = *(v0 + 56);
    ObjectType = swift_getObjectType();
    __src[0] = v4;
    __src[1] = v3;
    sub_1C5D96038(__src);
    memcpy(__dst, __src, 0xD9uLL);
    v7 = *(v5 + 48);
    v8 = *(v7 + 8);
    swift_unknownObjectRetain();

    v8(__dst, ObjectType, v7);
    swift_unknownObjectRelease();

    (*(*v4 + 104))(v1);
    if (sub_1C5C6AA20())
    {
      if (swift_unknownObjectWeakLoadStrong())
      {

        sub_1C5C8A688();
        sub_1C5D94790();
        sub_1C5DE4A20();

        swift_unknownObjectRelease();
      }

      if ((v10 & 1) == 0)
      {
        sub_1C5C8A688();
        OUTLINED_FUNCTION_2_33();
        (*(v9 + 96))(v1);
      }
    }

    OUTLINED_FUNCTION_237();
  }

  else
  {
    __break(1u);
  }
}

void sub_1C5D945C4()
{
  OUTLINED_FUNCTION_247();
  v4 = OUTLINED_FUNCTION_34_9();
  OUTLINED_FUNCTION_27(v1 + 40, v9);
  v5 = *(v1 + 40);
  __src[0] = v0;
  __src[1] = v5;
  sub_1C5D96024(__src);
  memcpy(__dst, __src, 0xD9uLL);
  OUTLINED_FUNCTION_33_5();

  v3(__dst, v4, v2);
  swift_unknownObjectRelease();

  if (sub_1C5C6AA20())
  {
    sub_1C5D94790();
    sub_1C5C8A688();
    sub_1C5C8A688();
    OUTLINED_FUNCTION_2_33();
    (*(v6 + 104))(v1);
  }

  swift_beginAccess();

  MEMORY[0x1C69535C0](v7);
  sub_1C5C68934(*((*(v1 + 40) & 0xFFFFFFFFFFFFFF8) + 0x10));
  sub_1C6016B70();
  swift_endAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v8 = sub_1C5D94790();
    OUTLINED_FUNCTION_25_12(v8);

    swift_unknownObjectRelease();
  }

  (*(*v0 + 96))(v1);

  OUTLINED_FUNCTION_237();
}

uint64_t sub_1C5D94790()
{
  OUTLINED_FUNCTION_27(v0 + 40, v4);
  v1 = *(v0 + 40);
  if (!sub_1C5C6AA20())
  {
    __break(1u);
    goto LABEL_6;
  }

  sub_1C5C8CEE0();
  if ((v1 & 0xC000000000000001) != 0)
  {
LABEL_6:

    v2 = MEMORY[0x1C6954040](0, v1);

    return v2;
  }

  v2 = *(v1 + 32);

  return v2;
}

uint64_t sub_1C5D94820()
{
  OUTLINED_FUNCTION_23_12();
  OUTLINED_FUNCTION_0_54();
  return (*(v0 + 80))() & 1;
}

uint64_t sub_1C5D94864()
{
  OUTLINED_FUNCTION_23_12();
  OUTLINED_FUNCTION_0_54();
  return (*(v0 + 48))();
}

void sub_1C5D94900()
{
  OUTLINED_FUNCTION_22_17();
  v5 = v4;
  OUTLINED_FUNCTION_10_24();
  OUTLINED_FUNCTION_19_20();
  v6 = *(v0 + 8);
  OUTLINED_FUNCTION_17_16();
  v3(v1, v5, v2, v6);
  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_16_18();
}

void sub_1C5D94968()
{
  OUTLINED_FUNCTION_22_17();
  OUTLINED_FUNCTION_10_24();
  OUTLINED_FUNCTION_19_20();
  v1 = *(*(v0 + 8) + 24);
  swift_unknownObjectRetain();
  v2 = OUTLINED_FUNCTION_5_30();
  v1(v2);
  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_16_18();
}

void sub_1C5D949CC()
{
  OUTLINED_FUNCTION_13_20();
  v2 = v1;
  v4 = v3;
  v5 = *(v0 + 56);
  ObjectType = swift_getObjectType();
  v7 = *(v5 + 8);
  v8 = *(v7 + 32);
  swift_unknownObjectRetain();
  v9 = OUTLINED_FUNCTION_29_12();
  v8(v9, v4, v2, ObjectType, v7);
  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_12_24();
}

void sub_1C5D94A54()
{
  OUTLINED_FUNCTION_22_17();
  OUTLINED_FUNCTION_10_24();
  OUTLINED_FUNCTION_19_20();
  OUTLINED_FUNCTION_17_16();
  v1 = OUTLINED_FUNCTION_5_30();
  v0(v1);
  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_16_18();
}

void sub_1C5D94AAC()
{
  OUTLINED_FUNCTION_15_18();
  OUTLINED_FUNCTION_26_12();
  OUTLINED_FUNCTION_1_45();
  v1 = *(v0 + 88);
  swift_unknownObjectRetain();
  v2 = OUTLINED_FUNCTION_3_33();
  v1(v2);
  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_14_23();
}

char *sub_1C5D94B14()
{
  v1 = v0;
  sub_1C5D5D630(0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C60379A0;
  *(inited + 32) = 0x74617453746F6F52;
  *(inited + 40) = 0xE900000000000065;
  sub_1C5D94790();
  OUTLINED_FUNCTION_2_33();
  v4 = (*(v3 + 144))();
  v6 = v5;

  v7 = MEMORY[0x1E69E6158];
  *(inited + 48) = v4;
  *(inited + 56) = v6;
  *(inited + 72) = v7;
  strcpy((inited + 80), "CurrentState");
  *(inited + 93) = 0;
  *(inited + 94) = -5120;
  sub_1C5C8A688();
  OUTLINED_FUNCTION_2_33();
  v9 = (*(v8 + 144))();
  v11 = v10;

  *(inited + 96) = v9;
  *(inited + 104) = v11;
  *(inited + 120) = v7;
  *(inited + 128) = 0x736574617453;
  *(inited + 136) = 0xE600000000000000;
  OUTLINED_FUNCTION_27(v0 + 40, v35);
  v12 = *(v0 + 40);
  v13 = sub_1C5C6AA20();
  v14 = MEMORY[0x1E69E7CC0];
  if (v13)
  {
    v15 = v13;
    v33 = inited;
    v34[0] = MEMORY[0x1E69E7CC0];
    v16 = v13 & ~(v13 >> 63);

    result = sub_1C5C66A1C(0, v16, 0);
    if (v15 < 0)
    {
      __break(1u);
      return result;
    }

    v18 = 0;
    v14 = v34[0];
    do
    {
      if ((v12 & 0xC000000000000001) != 0)
      {
        v19 = MEMORY[0x1C6954040](v18, v12);
      }

      else
      {
        v19 = *(v12 + 8 * v18 + 32);
      }

      v20 = (*(*v19 + 144))();
      v22 = v21;

      v34[0] = v14;
      v24 = *(v14 + 16);
      v23 = *(v14 + 24);
      if (v24 >= v23 >> 1)
      {
        sub_1C5C66A1C((v23 > 1), v24 + 1, 1);
        v14 = v34[0];
      }

      ++v18;
      *(v14 + 16) = v24 + 1;
      v25 = v14 + 16 * v24;
      *(v25 + 32) = v20;
      *(v25 + 40) = v22;
    }

    while (v15 != v18);

    inited = v33;
  }

  v26 = MEMORY[0x1E69E6158];
  sub_1C5D95FD4(0, &qword_1ED7DCF10, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
  *(inited + 144) = v14;
  *(inited + 168) = v27;
  *(inited + 176) = 0x65746167656C6544;
  *(inited + 184) = 0xE800000000000000;
  Strong = swift_unknownObjectWeakLoadStrong();
  v29 = Strong;
  if (Strong)
  {
    Strong = swift_getObjectType();
  }

  else
  {
    v34[1] = 0;
    v34[2] = 0;
  }

  v34[3] = Strong;
  v34[0] = v29;
  DefaultStringInterpolation.appendInterpolation(describing:default:)(v34, 7104878, 0xE300000000000000);
  sub_1C5CBCF4C(v34);
  *(inited + 192) = 0;
  *(inited + 200) = 0xE000000000000000;
  *(inited + 216) = v26;
  *(inited + 224) = 0x6C6C6F72746E6F43;
  *(inited + 232) = 0xEA00000000007265;
  v30 = [*(v1 + 48) stateDictionary];
  v31 = sub_1C6016860();

  sub_1C5CE5EF4();
  *(inited + 264) = v32;
  *(inited + 240) = v31;
  return sub_1C6016880();
}

void sub_1C5D94EA0()
{
  OUTLINED_FUNCTION_13_20();
  OUTLINED_FUNCTION_11_18();
  OUTLINED_FUNCTION_4_35();
  v1 = *(v0 + 16);
  swift_unknownObjectRetain();
  OUTLINED_FUNCTION_29_12();
  OUTLINED_FUNCTION_9_23();
  v1();
  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_12_24();
}

uint64_t sub_1C5D94F00()
{
  OUTLINED_FUNCTION_23_12();
  OUTLINED_FUNCTION_0_54();
  return (*(v0 + 32))();
}

uint64_t sub_1C5D94F40()
{
  OUTLINED_FUNCTION_23_12();
  OUTLINED_FUNCTION_0_54();
  return (*(v0 + 8))();
}

void sub_1C5D94F80()
{
  OUTLINED_FUNCTION_15_18();
  v5 = v4;
  v7 = v6;
  OUTLINED_FUNCTION_10_24();
  OUTLINED_FUNCTION_19_20();
  v8 = *(v0 + 24);
  OUTLINED_FUNCTION_17_16();
  v3(v1, v5, v2, v8, v7);
  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_14_23();
}

uint64_t sub_1C5D94FF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, float a5)
{
  v11 = *(v5 + 56);
  ObjectType = swift_getObjectType();
  v13 = *(v11 + 24);
  v14 = *(v13 + 24);
  swift_unknownObjectRetain();
  v14(a1, a2, a3, a4, ObjectType, v13, a5);
  return swift_unknownObjectRelease();
}

uint64_t sub_1C5D950AC()
{
  OUTLINED_FUNCTION_23_12();
  OUTLINED_FUNCTION_0_54();
  return (*(v0 + 88))();
}

void sub_1C5D95150()
{
  OUTLINED_FUNCTION_15_18();
  OUTLINED_FUNCTION_26_12();
  OUTLINED_FUNCTION_1_45();
  v1 = *(v0 + 72);
  swift_unknownObjectRetain();
  v2 = OUTLINED_FUNCTION_3_33();
  v1(v2);
  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_14_23();
}

uint64_t sub_1C5D951B8()
{
  OUTLINED_FUNCTION_23_12();
  OUTLINED_FUNCTION_0_54();
  return (*(v0 + 16))();
}

uint64_t sub_1C5D951F8()
{
  OUTLINED_FUNCTION_23_12();
  OUTLINED_FUNCTION_0_54();
  return (*(v0 + 72))() & 1;
}

uint64_t sub_1C5D9523C()
{
  swift_getObjectType();
  OUTLINED_FUNCTION_4_35();
  v1 = *(v0 + 32);
  swift_unknownObjectRetain();
  OUTLINED_FUNCTION_9_23();
  v1();
  return swift_unknownObjectRelease();
}

uint64_t sub_1C5D952DC()
{
  OUTLINED_FUNCTION_23_12();
  OUTLINED_FUNCTION_0_54();
  return (*(v0 + 40))();
}

void sub_1C5D95320()
{
  OUTLINED_FUNCTION_13_20();
  OUTLINED_FUNCTION_11_18();
  OUTLINED_FUNCTION_4_35();
  v1 = *(v0 + 48);
  swift_unknownObjectRetain();
  OUTLINED_FUNCTION_29_12();
  OUTLINED_FUNCTION_9_23();
  v1();
  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_12_24();
}

void sub_1C5D95380()
{
  OUTLINED_FUNCTION_15_18();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = *(v0 + 56);
  swift_getObjectType();
  OUTLINED_FUNCTION_19_20();
  v9 = *(v8 + 24);
  v10 = *(v9 + 56);
  swift_unknownObjectRetain();
  v10(v5, v3, v1, v9, v7);
  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_14_23();
}

void sub_1C5D95408()
{
  OUTLINED_FUNCTION_22_17();
  OUTLINED_FUNCTION_21_17();
  OUTLINED_FUNCTION_1_45();
  v1 = *(v0 + 64);
  swift_unknownObjectRetain();
  v2 = OUTLINED_FUNCTION_3_33();
  v1(v2);
  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_16_18();
}

void sub_1C5D95464()
{
  OUTLINED_FUNCTION_22_17();
  OUTLINED_FUNCTION_21_17();
  OUTLINED_FUNCTION_1_45();
  v1 = *(v0 + 80);
  swift_unknownObjectRetain();
  v2 = OUTLINED_FUNCTION_3_33();
  v1(v2);
  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_16_18();
}

void sub_1C5D954C0()
{
  OUTLINED_FUNCTION_13_20();
  v4 = v3;
  v6 = v5;
  v7 = OUTLINED_FUNCTION_36_7();
  v8 = *(v0 + 16);
  v9 = *(v8 + 24);
  swift_unknownObjectRetain();
  v9(v2, v1, v6 & 1, v4, v7, v8);
  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_12_24();
}

uint64_t sub_1C5D95544()
{
  if (*v0 >> 62)
  {
    result = sub_1C6017440();
    if (!result)
    {
      return result;
    }
  }

  else
  {
    result = *((*v0 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
      return result;
    }
  }

  result = sub_1C5D9604C();
  if (!result)
  {
    v2 = sub_1C5C6AA20();
    v3 = __OFSUB__(v2, 1);
    result = v2 - 1;
    if (v3)
    {
      __break(1u);
    }

    else
    {
      return sub_1C5D0D3F4(result);
    }
  }

  return result;
}

uint64_t sub_1C5D955A8()
{
  swift_unknownObjectRelease();
  sub_1C5C96DF0(v0 + 24);

  swift_unknownObjectRelease();
  return v0;
}

uint64_t sub_1C5D955E0()
{
  sub_1C5D955A8();

  return MEMORY[0x1EEE6BDC0](v0, 64, 7);
}

uint64_t sub_1C5D95638(uint64_t a1, uint64_t a2)
{
  *(*v2 + 32) = a2;
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

void sub_1C5D9587C()
{
  OUTLINED_FUNCTION_22_17();
  OUTLINED_FUNCTION_10_24();
  OUTLINED_FUNCTION_19_20();
  OUTLINED_FUNCTION_17_16();
  v1 = OUTLINED_FUNCTION_5_30();
  v0(v1);
  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_16_18();
}

uint64_t sub_1C5D958F8()
{
  OUTLINED_FUNCTION_23_12();
  OUTLINED_FUNCTION_0_54();
  return (*(v0 + 56))();
}

uint64_t sub_1C5D95938()
{
  OUTLINED_FUNCTION_23_12();
  OUTLINED_FUNCTION_0_54();
  return (*(v0 + 24))();
}

void sub_1C5D95C90(uint64_t a1)
{
  v2 = *sub_1C5C8A688();

  if (v2 != _TtC17MediaPlaybackCore29MediaServicesInterruptedState)
  {
    type metadata accessor for IdleState();
    swift_allocObject();
    sub_1C5D94070();
  }

  v3 = *(v1 + 48);
  v4 = sub_1C6014D30();
  [v3 resetWithReason_];
}

uint64_t sub_1C5D95E1C(uint64_t a1, uint64_t a2, char a3)
{
  if (!a3 || a3 == 2)
  {
  }

  return result;
}

uint64_t sub_1C5D95ED0(uint64_t a1)
{
  sub_1C5D95F2C(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1C5D95F2C(uint64_t a1)
{
  if (!qword_1EC1A95D8)
  {
    type metadata accessor for State();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC1A95D8);
    }
  }
}

void sub_1C5D95FD4(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_1C5D9604C()
{
  v1 = *v0;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  if (!result || v1 < 0 || (v1 & 0x4000000000000000) != 0)
  {
    result = sub_1C5D120FC();
    v1 = result;
  }

  v3 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v3)
  {
    v4 = v3 - 1;
    result = *((v1 & 0xFFFFFFFFFFFFFF8) + 8 * v4 + 0x20);
    *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10) = v4;
    *v0 = v1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *OUTLINED_FUNCTION_8_25(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t __src, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, __int128 a26, uint64_t a27, uint64_t a28, uint64_t a29, __int128 a30, __int128 a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, ...)
{
  va_start(va, a58);
  __src = a10;
  a22 = v60;
  a23 = v59;
  a24 = v58;
  a25 = v61;
  a26 = a30;
  *(v62 + 56) = a31;
  *(v62 + 71) = *(v62 + 111);

  return memcpy(va, &__src, 0x4BuLL);
}

void *OUTLINED_FUNCTION_18_19()
{

  return memcpy(&STACK[0x490], &STACK[0x288], 0xD9uLL);
}

uint64_t OUTLINED_FUNCTION_23_12()
{

  return swift_getObjectType();
}

void OUTLINED_FUNCTION_27_13()
{

  sub_1C5C8AD44();
}

uint64_t OUTLINED_FUNCTION_36_7()
{

  return swift_getObjectType();
}

void sub_1C5D96190()
{
  v0 = sub_1C6014B70();
  if (v1)
  {
    v48 = v1;
    v49 = v0;
    v2 = sub_1C6014B30();
    v3 = MEMORY[0x1E69E7CC0];
    v64 = MEMORY[0x1E69E7CC0];
    v4 = sub_1C5D965A0(v2);
    v5 = v4;
    v6 = v4[2];
    if (v6)
    {
      v7 = 0;
      v8 = v4 + 4;
      v9 = v3;
      v52 = v4;
      v53 = v2;
      v50 = (v4 + 4);
      v51 = v4[2];
      while (v7 < v5[2])
      {
        if (*(v2 + 16))
        {
          v10 = &v8[3 * v7];
          v55 = v10[1];
          v56 = *v10;
          v57 = v10[2];
          v11 = sub_1C5CE230C(*v10, v55, v57);
          if (v12)
          {
            v13 = *(*(v2 + 56) + 8 * v11);
            v14 = *(v13 + 16);
            if (v14)
            {
              v54 = v7;
              v63 = v3;

              sub_1C60175F0();
              v16 = sub_1C5D978E0(v13);
              v18 = v17;
              v19 = 0;
              v62 = v13 + 64;
              v59 = v17;
              v58 = v13 + 72;
              while ((v16 & 0x8000000000000000) == 0 && v16 < 1 << *(v13 + 32))
              {
                v20 = v16 >> 6;
                if ((*(v62 + 8 * (v16 >> 6)) & (1 << v16)) == 0)
                {
                  goto LABEL_35;
                }

                if (*(v13 + 36) != v18)
                {
                  goto LABEL_36;
                }

                v61 = v15;
                v21 = *(*(v13 + 48) + 4 * v16);
                v22 = *(*(v13 + 56) + 4 * v16);
                v23 = objc_allocWithZone(MEMORY[0x1E6987F38]);
                LODWORD(v24) = v22;
                [v23 initWithFourCharCode:v21 value:v24];
                sub_1C60175D0();
                sub_1C6017600();
                sub_1C6017610();
                v25 = sub_1C60175E0();
                v33 = 1 << *(v13 + 32);
                if (v16 >= v33)
                {
                  goto LABEL_37;
                }

                v34 = *(v62 + 8 * v20);
                if ((v34 & (1 << v16)) == 0)
                {
                  goto LABEL_38;
                }

                if (*(v13 + 36) != v18)
                {
                  goto LABEL_39;
                }

                v35 = v34 & (-2 << (v16 & 0x3F));
                if (v35)
                {
                  v33 = __clz(__rbit64(v35)) | v16 & 0x7FFFFFFFFFFFFFC0;
                }

                else
                {
                  v36 = v20 << 6;
                  v37 = v20 + 1;
                  v38 = (v58 + 8 * v20);
                  while (v37 < (v33 + 63) >> 6)
                  {
                    v40 = *v38++;
                    v39 = v40;
                    v36 += 64;
                    ++v37;
                    if (v40)
                    {
                      OUTLINED_FUNCTION_5_31(v25, v26, v27, v28, v29, v30, v31, v32, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61);
                      v33 = __clz(__rbit64(v39)) + v36;
                      goto LABEL_23;
                    }
                  }

                  OUTLINED_FUNCTION_5_31(v25, v26, v27, v28, v29, v30, v31, v32, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61);
                }

LABEL_23:
                v15 = 0;
                ++v19;
                v16 = v33;
                v18 = v59;
                if (v19 == v14)
                {

                  v41 = v63;
                  v5 = v52;
                  v2 = v53;
                  v3 = MEMORY[0x1E69E7CC0];
                  v8 = v50;
                  v6 = v51;
                  v7 = v54;
                  goto LABEL_26;
                }
              }

              __break(1u);
LABEL_35:
              __break(1u);
LABEL_36:
              __break(1u);
LABEL_37:
              __break(1u);
LABEL_38:
              __break(1u);
LABEL_39:
              __break(1u);
              break;
            }

            v41 = v3;
LABEL_26:
            sub_1C5C64D74(0, &qword_1EC1AB6A0, 0x1E6987F40);
            v42 = sub_1C5D96684(v41, v56, v55, v57);
            MEMORY[0x1C69535C0]();
            if (*((v64 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v64 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              sub_1C6016B30();
            }

            sub_1C6016B70();

            v9 = v64;
          }
        }

        if (++v7 == v6)
        {

          goto LABEL_33;
        }
      }

      __break(1u);
    }

    else
    {

      v9 = MEMORY[0x1E69E7CC0];
LABEL_33:
      sub_1C5C64D74(0, &qword_1ED7DCCD0, 0x1E696AD98);
      sub_1C5D96868();
      sub_1C5D968D0();
      v43 = sub_1C6016880();
      v44 = sub_1C6014B80();
      v46 = v45;
      v47 = objc_allocWithZone(MEMORY[0x1E6987F30]);
      sub_1C5D96744(v49, v48, v43, v9, v44, v46);
    }
  }
}

void *sub_1C5D965A0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    goto LABEL_4;
  }

  v3 = sub_1C5D0EAF8(*(a1 + 16), 0);
  v4 = sub_1C5D977B8(&v7, v3 + 4, v1, a1);
  v5 = v7;

  sub_1C5C8C7F4(v5);
  if (v4 != v1)
  {
    __break(1u);
LABEL_4:
    v3 = MEMORY[0x1E69E7CC0];
  }

  v7 = v3;
  sub_1C5D96938(&v7);
  return v7;
}

id sub_1C5D96684(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v5 = a3;
  v7 = HIDWORD(a3);
  v8 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  sub_1C5C64D74(0, &qword_1EC1AB6A8, 0x1E6987F38);
  v9 = sub_1C6016AF0();

  v12 = a2;
  v13 = v5;
  v14 = v7;
  v15 = a4;
  v10 = [v8 initWithParameters:v9 at:&v12];

  return v10;
}

id sub_1C5D96744(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = sub_1C6016900();

  sub_1C5C64D74(0, &qword_1ED7DCCD0, 0x1E696AD98);
  sub_1C5D96868();
  sub_1C5D968D0();
  v8 = sub_1C6016840();

  sub_1C5C64D74(0, &qword_1EC1AB6A0, 0x1E6987F40);
  v9 = sub_1C6016AF0();

  v10 = sub_1C6016900();

  v11 = [v6 initWithDSPGraphText:v7 properties:v8 parameterSchedule:v9 identifier:v10];

  return v11;
}

unint64_t sub_1C5D96868()
{
  result = qword_1EC1AB690;
  if (!qword_1EC1AB690)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EC1AB690);
  }

  return result;
}

unint64_t sub_1C5D968D0()
{
  result = qword_1EC1AB698;
  if (!qword_1EC1AB698)
  {
    sub_1C5C64D74(255, &qword_1ED7DCCD0, 0x1E696AD98);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1AB698);
  }

  return result;
}

uint64_t sub_1C5D96938(uint64_t *a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1C5D978CC();
    v2 = v3;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  result = sub_1C5D969A4(v6);
  *a1 = v2;
  return result;
}

uint64_t sub_1C5D969A4(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_1C60177C0();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        type metadata accessor for CMTime();
        v6 = sub_1C6016B60();
        *(v6 + 16) = v5;
      }

      v7[0] = (v6 + 32);
      v7[1] = v5;
      sub_1C5D96BA0(v7, v8, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_1C5D96A9C(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1C5D96A9C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 24 * a3 - 24;
    v8 = result - a3;
    while (2)
    {
      v9 = v8;
      v10 = v7;
      do
      {
        result = sub_1C60171A0();
        if ((result & 1) == 0)
        {
          break;
        }

        if (!v6)
        {
          __break(1u);
          return result;
        }

        v12 = *(v10 + 32);
        v11 = *(v10 + 36);
        v13 = *(v10 + 40);
        v14 = *(v10 + 16);
        result = *(v10 + 24);
        *(v10 + 24) = *v10;
        *(v10 + 40) = v14;
        *v10 = result;
        *(v10 + 8) = v12;
        *(v10 + 12) = v11;
        *(v10 + 16) = v13;
        v10 -= 24;
      }

      while (!__CFADD__(v9++, 1));
      ++v4;
      v7 += 24;
      --v8;
      if (v4 != a2)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

void sub_1C5D96BA0(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v4 = a3[1];
  if (v4 < 1)
  {
    v6 = MEMORY[0x1E69E7CC0];
LABEL_89:
    v93 = *a1;
    if (!*a1)
    {
      goto LABEL_130;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_91:
      v83 = v6 + 16;
      v84 = *(v6 + 2);
      while (v84 >= 2)
      {
        if (!*a3)
        {
          goto LABEL_127;
        }

        v85 = v6;
        v6 += 16 * v84;
        v86 = *v6;
        v87 = &v83[2 * v84];
        v88 = v87[1];
        sub_1C5D971B8((*a3 + 24 * *v6), (*a3 + 24 * *v87), *a3 + 24 * v88, v93);
        if (v95)
        {
          break;
        }

        if (v88 < v86)
        {
          goto LABEL_115;
        }

        if (v84 - 2 >= *v83)
        {
          goto LABEL_116;
        }

        *v6 = v86;
        *(v6 + 1) = v88;
        v89 = *v83 - v84;
        if (*v83 < v84)
        {
          goto LABEL_117;
        }

        v95 = 0;
        v84 = *v83 - 1;
        memmove(v87, v87 + 2, 16 * v89);
        *v83 = v84;
        v6 = v85;
      }

LABEL_99:

      return;
    }

LABEL_124:
    v6 = sub_1C5D9736C(v6);
    goto LABEL_91;
  }

  v5 = 0;
  v6 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v7 = v5++;
    if (v5 < v4)
    {
      v8 = *a3 + 24 * v7;
      v9 = 24 * v7;
      v10 = sub_1C60171A0();
      v11 = v8 + 64;
      v12 = v7 + 2;
      while (1)
      {
        v13 = v12;
        if (++v5 >= v4)
        {
          break;
        }

        v14 = sub_1C60171A0();
        v11 += 24;
        v12 = v13 + 1;
        if ((v10 & 1) != (v14 & 1))
        {
          if ((v10 & 1) == 0)
          {
            goto LABEL_20;
          }

          goto LABEL_10;
        }
      }

      v5 = v4;
      if ((v10 & 1) == 0)
      {
        goto LABEL_20;
      }

LABEL_10:
      if (v5 < v7)
      {
        goto LABEL_121;
      }

      if (v7 < v5)
      {
        if (v4 >= v13)
        {
          v15 = v13;
        }

        else
        {
          v15 = v4;
        }

        v16 = 24 * v15 - 8;
        v17 = v5;
        v18 = v7;
        do
        {
          if (v18 != --v17)
          {
            v19 = *a3;
            if (!*a3)
            {
              goto LABEL_128;
            }

            v20 = (v19 + v9);
            v21 = (v19 + v16);
            v22 = *v20;
            v23 = v20[2];
            v24 = v20[1];
            v25 = *v21;
            *v20 = *(v21 - 1);
            v20[2] = v25;
            *(v21 - 2) = v22;
            *(v21 - 1) = v24;
            *v21 = v23;
          }

          ++v18;
          v16 -= 24;
          v9 += 24;
        }

        while (v18 < v17);
      }
    }

LABEL_20:
    v26 = a3[1];
    if (v5 < v26)
    {
      if (__OFSUB__(v5, v7))
      {
        goto LABEL_120;
      }

      if (v5 - v7 < a4)
      {
        break;
      }
    }

LABEL_37:
    if (v5 < v7)
    {
      goto LABEL_119;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1C5D0DDF8();
      v6 = v81;
    }

    v40 = *(v6 + 2);
    v41 = v40 + 1;
    if (v40 >= *(v6 + 3) >> 1)
    {
      sub_1C5D0DDF8();
      v6 = v82;
    }

    *(v6 + 2) = v41;
    v42 = v6 + 32;
    v43 = &v6[16 * v40 + 32];
    *v43 = v7;
    *(v43 + 1) = v5;
    v93 = *a1;
    if (!*a1)
    {
      goto LABEL_129;
    }

    if (v40)
    {
      while (1)
      {
        v44 = v41 - 1;
        v45 = &v42[16 * v41 - 16];
        v46 = &v6[16 * v41];
        if (v41 >= 4)
        {
          break;
        }

        if (v41 == 3)
        {
          v47 = *(v6 + 4);
          v48 = *(v6 + 5);
          v57 = __OFSUB__(v48, v47);
          v49 = v48 - v47;
          v50 = v57;
LABEL_57:
          if (v50)
          {
            goto LABEL_106;
          }

          v62 = *v46;
          v61 = *(v46 + 1);
          v63 = __OFSUB__(v61, v62);
          v64 = v61 - v62;
          v65 = v63;
          if (v63)
          {
            goto LABEL_109;
          }

          v66 = *(v45 + 1);
          v67 = v66 - *v45;
          if (__OFSUB__(v66, *v45))
          {
            goto LABEL_112;
          }

          if (__OFADD__(v64, v67))
          {
            goto LABEL_114;
          }

          if (v64 + v67 >= v49)
          {
            if (v49 < v67)
            {
              v44 = v41 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v41 < 2)
        {
          goto LABEL_108;
        }

        v69 = *v46;
        v68 = *(v46 + 1);
        v57 = __OFSUB__(v68, v69);
        v64 = v68 - v69;
        v65 = v57;
LABEL_72:
        if (v65)
        {
          goto LABEL_111;
        }

        v71 = *v45;
        v70 = *(v45 + 1);
        v57 = __OFSUB__(v70, v71);
        v72 = v70 - v71;
        if (v57)
        {
          goto LABEL_113;
        }

        if (v72 < v64)
        {
          goto LABEL_86;
        }

LABEL_79:
        if (v44 - 1 >= v41)
        {
          __break(1u);
LABEL_101:
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
          __break(1u);
LABEL_104:
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
          goto LABEL_123;
        }

        if (!*a3)
        {
          goto LABEL_126;
        }

        v76 = v6;
        v77 = &v42[16 * v44 - 16];
        v78 = *v77;
        v6 = &v42[16 * v44];
        v79 = *(v6 + 1);
        sub_1C5D971B8((*a3 + 24 * *v77), (*a3 + 24 * *v6), *a3 + 24 * v79, v93);
        if (v95)
        {
          goto LABEL_99;
        }

        if (v79 < v78)
        {
          goto LABEL_101;
        }

        v80 = *(v76 + 2);
        if (v44 > v80)
        {
          goto LABEL_102;
        }

        *v77 = v78;
        *(v77 + 1) = v79;
        if (v44 >= v80)
        {
          goto LABEL_103;
        }

        v95 = 0;
        v41 = v80 - 1;
        memmove(&v42[16 * v44], v6 + 16, 16 * (v80 - 1 - v44));
        v6 = v76;
        *(v76 + 2) = v80 - 1;
        if (v80 <= 2)
        {
          goto LABEL_86;
        }
      }

      v51 = &v42[16 * v41];
      v52 = *(v51 - 8);
      v53 = *(v51 - 7);
      v57 = __OFSUB__(v53, v52);
      v54 = v53 - v52;
      if (v57)
      {
        goto LABEL_104;
      }

      v56 = *(v51 - 6);
      v55 = *(v51 - 5);
      v57 = __OFSUB__(v55, v56);
      v49 = v55 - v56;
      v50 = v57;
      if (v57)
      {
        goto LABEL_105;
      }

      v58 = *(v46 + 1);
      v59 = v58 - *v46;
      if (__OFSUB__(v58, *v46))
      {
        goto LABEL_107;
      }

      v57 = __OFADD__(v49, v59);
      v60 = v49 + v59;
      if (v57)
      {
        goto LABEL_110;
      }

      if (v60 >= v54)
      {
        v74 = *v45;
        v73 = *(v45 + 1);
        v57 = __OFSUB__(v73, v74);
        v75 = v73 - v74;
        if (v57)
        {
          goto LABEL_118;
        }

        if (v49 < v75)
        {
          v44 = v41 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_86:
    v4 = a3[1];
    if (v5 >= v4)
    {
      goto LABEL_89;
    }
  }

  if (__OFADD__(v7, a4))
  {
    goto LABEL_122;
  }

  if (v7 + a4 >= v26)
  {
    v27 = a3[1];
  }

  else
  {
    v27 = v7 + a4;
  }

  if (v27 < v7)
  {
LABEL_123:
    __break(1u);
    goto LABEL_124;
  }

  if (v5 == v27)
  {
    goto LABEL_37;
  }

  v93 = v6;
  v28 = *a3;
  v29 = *a3 + 24 * v5 - 24;
  v90 = v7;
  v30 = v7 - v5;
LABEL_30:
  v31 = v27;
  v32 = v30;
  v33 = v29;
  while (1)
  {
    if ((sub_1C60171A0() & 1) == 0)
    {
LABEL_35:
      ++v5;
      v29 += 24;
      --v30;
      v27 = v31;
      if (v5 == v31)
      {
        v5 = v31;
        v7 = v90;
        goto LABEL_37;
      }

      goto LABEL_30;
    }

    if (!v28)
    {
      break;
    }

    v35 = *(v33 + 32);
    v34 = *(v33 + 36);
    v36 = *(v33 + 40);
    v38 = *(v33 + 16);
    v37 = *(v33 + 24);
    *(v33 + 24) = *v33;
    *(v33 + 40) = v38;
    *v33 = v37;
    *(v33 + 8) = v35;
    *(v33 + 12) = v34;
    *(v33 + 16) = v36;
    v33 -= 24;
    if (__CFADD__(v32++, 1))
    {
      goto LABEL_35;
    }
  }

  __break(1u);
LABEL_126:
  __break(1u);
LABEL_127:
  __break(1u);
LABEL_128:
  __break(1u);
LABEL_129:
  __break(1u);
LABEL_130:
  __break(1u);
}

uint64_t sub_1C5D971B8(char *a1, char *a2, unint64_t a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = (a2 - a1) / 24;
  v9 = (a3 - a2) / 24;
  if (v8 < v9)
  {
    sub_1C5D0ECD4(a1, (a2 - a1) / 24, a4);
    v10 = &v4[24 * v8];
    while (1)
    {
      if (v4 >= v10 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_28;
      }

      if ((sub_1C60171A0() & 1) == 0)
      {
        break;
      }

      v12 = v6;
      v13 = v7 == v6;
      v6 += 24;
      if (!v13)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 24;
    }

    v12 = v4;
    v13 = v7 == v4;
    v4 += 24;
    if (v13)
    {
      goto LABEL_13;
    }

LABEL_12:
    v14 = *v12;
    *(v7 + 2) = *(v12 + 2);
    *v7 = v14;
    goto LABEL_13;
  }

  sub_1C5D0ECD4(a2, (a3 - a2) / 24, a4);
  v10 = &v4[24 * v9];
LABEL_15:
  v15 = v6 - 24;
  for (v5 -= 24; v10 > v4 && v6 > v7; v5 -= 24)
  {
    v17 = sub_1C60171A0();
    v18 = (v5 + 24);
    if (v17)
    {
      v13 = v18 == v6;
      v6 -= 24;
      if (!v13)
      {
        v20 = *v15;
        *(v5 + 16) = *(v15 + 2);
        *v5 = v20;
        v6 = v15;
      }

      goto LABEL_15;
    }

    if (v10 != v18)
    {
      v19 = *(v10 - 24);
      *(v5 + 16) = *(v10 - 1);
      *v5 = v19;
    }

    v10 -= 24;
  }

LABEL_28:
  v21 = (v10 - v4) / 24;
  if (v6 != v4 || v6 >= &v4[24 * v21])
  {
    memmove(v6, v4, 24 * v21);
  }

  return 1;
}

char *sub_1C5D97380(char *__src, uint64_t a2, char *__dst)
{
  if (__dst != __src || &__src[16 * a2] <= __dst)
  {
    return memmove(__dst, __src, 16 * a2);
  }

  return __src;
}

char *sub_1C5D973AC(char *result, int64_t a2, char a3, char *a4)
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
    sub_1C5D97920(0);
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

void sub_1C5D974A0()
{
  OUTLINED_FUNCTION_3_34();
  v4 = v1 + 64;
  OUTLINED_FUNCTION_0_55();
  if (!v6)
  {
    v8 = 0;
LABEL_17:
    OUTLINED_FUNCTION_4_36(v8);
    return;
  }

  v7 = v5;
  if (!v5)
  {
    v8 = 0;
    goto LABEL_17;
  }

  if ((v5 & 0x8000000000000000) == 0)
  {
    OUTLINED_FUNCTION_2_34();
    while (v9 < v7)
    {
      v10 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        goto LABEL_21;
      }

      if (!v2)
      {
        while (1)
        {
          v11 = v8 + 1;
          if (__OFADD__(v8, 1))
          {
            break;
          }

          if (v11 >= v3)
          {
            goto LABEL_17;
          }

          v2 = *(v4 + 8 * v11);
          ++v8;
          if (v2)
          {
            goto LABEL_12;
          }
        }

        __break(1u);
        break;
      }

      v11 = v8;
LABEL_12:
      OUTLINED_FUNCTION_1_46();
      if (v12)
      {

        v8 = v11;
        goto LABEL_17;
      }

      v0 += 16;

      v9 = v10;
      v8 = v11;
    }

    __break(1u);
LABEL_21:
    __break(1u);
  }

  __break(1u);
}

void sub_1C5D97590()
{
  OUTLINED_FUNCTION_3_34();
  v5 = v2 + 64;
  OUTLINED_FUNCTION_0_55();
  if (!v6)
  {
    v11 = 0;
LABEL_16:
    *v0 = v1;
    v0[1] = v5;
    v0[2] = ~v3;
    v0[3] = v11;
    v0[4] = v4;
    return;
  }

  v8 = v7;
  if (!v7)
  {
    v11 = 0;
    goto LABEL_16;
  }

  if ((v7 & 0x8000000000000000) == 0)
  {
    v9 = v6;
    v10 = 0;
    v11 = 0;
    while (1)
    {
      v12 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      if (!v4)
      {
        while (1)
        {
          v13 = v11 + 1;
          if (__OFADD__(v11, 1))
          {
            break;
          }

          if (v13 >= ((63 - v3) >> 6))
          {
            v4 = 0;
            goto LABEL_16;
          }

          v4 = *(v5 + 8 * v13);
          ++v11;
          if (v4)
          {
            v11 = v13;
            goto LABEL_11;
          }
        }

        __break(1u);
        break;
      }

LABEL_11:
      v14 = __clz(__rbit64(v4));
      v4 &= v4 - 1;
      sub_1C5C653C8(*(v1 + 56) + ((v11 << 11) | (32 * v14)), v15);
      sub_1C5C70758(v15, v16);
      sub_1C5C70758(v16, v9);
      v9 += 2;
      v10 = v12;
      if (v12 == v8)
      {
        goto LABEL_16;
      }
    }

    __break(1u);
  }

  __break(1u);
}

void sub_1C5D976C8()
{
  OUTLINED_FUNCTION_3_34();
  v4 = v1 + 56;
  OUTLINED_FUNCTION_0_55();
  if (!v6)
  {
    v8 = 0;
LABEL_17:
    OUTLINED_FUNCTION_4_36(v8);
    return;
  }

  v7 = v5;
  if (!v5)
  {
    v8 = 0;
    goto LABEL_17;
  }

  if ((v5 & 0x8000000000000000) == 0)
  {
    OUTLINED_FUNCTION_2_34();
    while (v9 < v7)
    {
      v10 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        goto LABEL_21;
      }

      if (!v2)
      {
        while (1)
        {
          v11 = v8 + 1;
          if (__OFADD__(v8, 1))
          {
            break;
          }

          if (v11 >= v3)
          {
            goto LABEL_17;
          }

          v2 = *(v4 + 8 * v11);
          ++v8;
          if (v2)
          {
            goto LABEL_12;
          }
        }

        __break(1u);
        break;
      }

      v11 = v8;
LABEL_12:
      OUTLINED_FUNCTION_1_46();
      if (v12)
      {

        v8 = v11;
        goto LABEL_17;
      }

      v0 += 16;

      v9 = v10;
      v8 = v11;
    }

    __break(1u);
LABEL_21:
    __break(1u);
  }

  __break(1u);
}

void *sub_1C5D977B8(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 + 64;
  v5 = -1;
  v6 = -1 << *(a4 + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & *(a4 + 64);
  if (!a2)
  {
    v9 = 0;
    a3 = 0;
LABEL_18:
    *result = a4;
    result[1] = v4;
    result[2] = ~v6;
    result[3] = v9;
    result[4] = v7;
    return a3;
  }

  if (!a3)
  {
    v9 = 0;
    goto LABEL_18;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v8 = 0;
    v9 = 0;
    while (1)
    {
      v10 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      if (!v7)
      {
        while (1)
        {
          v11 = v9 + 1;
          if (__OFADD__(v9, 1))
          {
            break;
          }

          if (v11 >= ((63 - v6) >> 6))
          {
            v7 = 0;
            a3 = v8;
            goto LABEL_18;
          }

          v7 = *(v4 + 8 * v11);
          ++v9;
          if (v7)
          {
            v9 = v11;
            goto LABEL_13;
          }
        }

        __break(1u);
        break;
      }

LABEL_13:
      v12 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      v13 = (*(a4 + 48) + 24 * (v12 | (v9 << 6)));
      v14 = v13[2];
      v15 = v13[1];
      *a2 = *v13;
      a2[1] = v15;
      a2[2] = v14;
      a2 += 3;
      v8 = v10;
      if (v10 == a3)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_1C5D97920(uint64_t a1)
{
  if (!qword_1EC1AAE38)
  {
    sub_1C5D11EE4();
    v1 = sub_1C60177E0();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC1AAE38);
    }
  }
}

__n128 sub_1C5D97978@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 112);
  v3 = *(v1 + 80);
  *a1 = *(v1 + 64);
  *(a1 + 16) = v3;
  result = *(v1 + 96);
  *(a1 + 32) = result;
  *(a1 + 48) = v2 & 1 | 0x40;
  return result;
}

uint64_t sub_1C5D9799C()
{
  if (*(v0 + 297) & 1) != 0 || (*(v0 + 241))
  {
    return qword_1C6040680[*(v0 + 184)];
  }

  v2 = *(v0 + 248);
  v3 = sub_1C5D9A58C();
  if (v4)
  {
    return *&v3;
  }

  if (sub_1C5D9A6FC())
  {
    return 4;
  }

  return v2;
}

id sub_1C5D97A10(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  *(v7 + 168) = 0;
  swift_unknownObjectWeakInit();
  *(v7 + 248) = 0u;
  *(v7 + 176) = 0;
  *(v7 + 184) = 0;
  *(v7 + 192) = 0u;
  *(v7 + 208) = 0u;
  *(v7 + 224) = 0u;
  *(v7 + 240) = 256;
  *(v7 + 264) = 0u;
  *(v7 + 280) = 0u;
  *(v7 + 296) = 256;
  result = [a1 isAssetLoaded];
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  result = [a2 isAssetLoaded];
  if (!result)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  *(v7 + 32) = a1;
  result = [swift_unknownObjectRetain() avPlayerItem];
  if (!result)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  *(v7 + 40) = result;
  *(v7 + 48) = a2;
  result = [swift_unknownObjectRetain() avPlayerItem];
  if (result)
  {
    *(v7 + 56) = result;
    v14 = *(a3 + 16);
    *(v7 + 64) = *a3;
    *(v7 + 80) = v14;
    *(v7 + 96) = *(a3 + 32);
    *(v7 + 112) = *(a3 + 48);
    sub_1C5D7E40C(a4, v7 + 120);
    *(v7 + 168) = a6;
    swift_unknownObjectWeakAssign();
    v15 = *(v7 + 40);
    v16 = [v15 description];
    v17 = sub_1C6016940();
    v19 = v18;

    v25 = v17;
    v26 = v19;
    MEMORY[0x1C69534E0](0x209D8A80F420, 0xA600000000000000);
    v20 = *(v7 + 56);
    v21 = [v20 description];
    v22 = sub_1C6016940();
    v24 = v23;

    MEMORY[0x1C69534E0](v22, v24);
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();

    sub_1C5D7E4D8(a4);
    *(v7 + 16) = v25;
    *(v7 + 24) = v26;
    *(v7 + 176) = *a3;
    return v7;
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t sub_1C5D97C58()
{
  OUTLINED_FUNCTION_13();
  v1 = v0[335];
  *(v1 + 184) = 0;
  v2 = sub_1C6016CA0();
  sub_1C5D7E40C(v1 + 120, (v0 + 82));
  v3 = v0[85];
  if (v2)
  {
    if (v3)
    {
      v4 = v0[335];
      __swift_project_boxed_opaque_existential_0(v0 + 82, v3);
      v5 = *(v4 + 24);
      OUTLINED_FUNCTION_9_24();
      v0[2] = v6;
      v0[3] = v5;
      v0[4] = 0xD000000000000027;
      v0[5] = v7;
      sub_1C5D5CEC8((v0 + 2));
      memcpy(v0 + 223, v0 + 2, 0xD9uLL);

      sub_1C5DBBF0C();

      __swift_destroy_boxed_opaque_existential_0(v0 + 82);
    }

    else
    {
      sub_1C5D7E4D8((v0 + 82));
    }

    sub_1C5D9AFB4();
    OUTLINED_FUNCTION_10_1();
    swift_allocError();
    OUTLINED_FUNCTION_19_21(v12, 2);
    OUTLINED_FUNCTION_172();

    return v13();
  }

  else
  {
    if (v3)
    {
      v8 = v0[335];
      __swift_project_boxed_opaque_existential_0(v0 + 82, v3);
      v9 = *(v8 + 24);
      OUTLINED_FUNCTION_9_24();
      v0[2] = v10;
      v0[3] = v9;
      v0[4] = 0xD00000000000001ELL;
      v0[5] = v11;
      sub_1C5D5CEC8((v0 + 2));
      memcpy(v0 + 167, v0 + 2, 0xD9uLL);

      sub_1C5DBBF0C();

      __swift_destroy_boxed_opaque_existential_0(v0 + 82);
    }

    else
    {
      sub_1C5D7E4D8((v0 + 82));
    }

    sub_1C5D995F0();

    swift_asyncLet_begin();

    swift_asyncLet_begin();

    return MEMORY[0x1EEE6DEC0](v0 + 2);
  }
}

uint64_t sub_1C5D97EA0(uint64_t a1, uint64_t a2)
{
  *(v3 + 2688) = v2;
  if (v2)
  {
    return OUTLINED_FUNCTION_2_35(a1, a2, sub_1C5D98B48);
  }

  else
  {
    return MEMORY[0x1EEE6DEC0](v3 + 656);
  }
}

uint64_t sub_1C5D97ED8(uint64_t a1, uint64_t a2)
{
  *(v3 + 2696) = v2;
  if (v2)
  {
    return OUTLINED_FUNCTION_2_35(a1, a2, sub_1C5D98BDC);
  }

  else
  {
    return OUTLINED_FUNCTION_0_2(sub_1C5D97F08);
  }
}

uint64_t sub_1C5D97F08(uint64_t a1)
{
  v2 = sub_1C6016CA0();
  v3 = *(v1 + 2680);
  if (v2)
  {
    sub_1C5D7E40C(v3 + 120, v1 + 1296);
    v4 = *(v1 + 1320);
    if (v4)
    {
      v5 = *(v1 + 2680);
      __swift_project_boxed_opaque_existential_0((v1 + 1296), v4);
      v7 = *(v5 + 16);
      v6 = *(v5 + 24);

      sub_1C6017540();

      MEMORY[0x1C69534E0](v7, v6);
      *(v1 + 1560) = v7;
      *(v1 + 1568) = v6;
      *(v1 + 1576) = 0xD000000000000027;
      *(v1 + 1584) = 0x80000001C6050120;
      sub_1C5D5CEC8(v1 + 1560);
      memcpy((v1 + 2456), (v1 + 1560), 0xD9uLL);
      sub_1C5DBBF0C();

      __swift_destroy_boxed_opaque_existential_0((v1 + 1296));
    }

    else
    {
      sub_1C5D7E4D8(v1 + 1296);
    }

    sub_1C5D9AFB4();
    OUTLINED_FUNCTION_10_1();
    *(v1 + 2704) = swift_allocError();
    OUTLINED_FUNCTION_19_21(v24, 2);
    v26 = sub_1C5D98378;
    goto LABEL_18;
  }

  v8 = *(v3 + 40);
  *(v1 + 2712) = v8;
  [v8 forwardPlaybackEndTime];
  if ((sub_1C60171C0() & 1) == 0)
  {
    sub_1C5D7E40C(*(v1 + 2680) + 120, v1 + 1296);
    v12 = *(v1 + 1320);
    if (v12)
    {
      v13 = *(v1 + 2680);
      __swift_project_boxed_opaque_existential_0((v1 + 1296), v12);
      v15 = *(v13 + 16);
      v14 = *(v13 + 24);

      sub_1C6017540();
      MEMORY[0x1C69534E0](0xD000000000000023, 0x80000001C60500A0);
      [v8 forwardPlaybackEndTime];
      sub_1C6017220();
      v16 = OUTLINED_FUNCTION_3_35();
      sub_1C5C72B9C(v16, v17, v18, v19, v20);
      OUTLINED_FUNCTION_8_26();
      v21 = swift_allocObject();
      v22 = MEMORY[0x1E69E63B0];
      *(v21 + 16) = xmmword_1C60311E0;
      OUTLINED_FUNCTION_7_29(v21, v22);
      v23 = sub_1C6016960();
      MEMORY[0x1C69534E0](v23);

      MEMORY[0x1C69534E0](0xD00000000000001CLL, 0x80000001C60500D0);
      *(v1 + 1560) = v15;
      *(v1 + 1568) = v14;
      *(v1 + 1576) = 0;
      *(v1 + 1584) = 0xE000000000000000;
      sub_1C5D5CEC8(v1 + 1560);
      memcpy((v1 + 2232), (v1 + 1560), 0xD9uLL);
      sub_1C5DBBF0C();

      __swift_destroy_boxed_opaque_existential_0((v1 + 1296));
    }

    else
    {
      sub_1C5D7E4D8(v1 + 1296);
    }

    sub_1C5D9AFB4();
    OUTLINED_FUNCTION_10_1();
    *(v1 + 2832) = swift_allocError();
    OUTLINED_FUNCTION_19_21(v27, 4);
    v26 = sub_1C5D98AB4;
    goto LABEL_18;
  }

  if (swift_unknownObjectWeakLoadStrong())
  {
    if ((sub_1C5DE3F2C(v8) & 1) == 0)
    {
      *(*(v1 + 2680) + 184) = 1;
      sub_1C5D9AFB4();
      OUTLINED_FUNCTION_10_1();
      *(v1 + 2720) = swift_allocError();
      OUTLINED_FUNCTION_19_21(v28, 3);
      swift_unknownObjectRelease();
      v26 = sub_1C5D9840C;
LABEL_18:

      return MEMORY[0x1EEE6DEB0](v1 + 656, v25, v26, v1 + 1296);
    }

    swift_unknownObjectRelease();
  }

  [v8 currentTime];
  *(v1 + 2728) = sub_1C6017220();
  *(v1 + 2736) = sub_1C6016C10();
  *(v1 + 2744) = sub_1C6016C00();
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_117();
  v9 = OUTLINED_FUNCTION_6_27();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1C5D983B4()
{
  OUTLINED_FUNCTION_248();
  OUTLINED_FUNCTION_15_19();
  OUTLINED_FUNCTION_172();

  return v0();
}

uint64_t sub_1C5D98448()
{
  OUTLINED_FUNCTION_248();
  OUTLINED_FUNCTION_15_19();
  OUTLINED_FUNCTION_172();

  return v0();
}

uint64_t sub_1C5D984A0()
{
  OUTLINED_FUNCTION_248();
  v1 = *(v0 + 2712);

  *(v0 + 2752) = [v1 asset];
  v2 = OUTLINED_FUNCTION_10();

  return MEMORY[0x1EEE6DFA0](v2, v3, v4);
}

uint64_t sub_1C5D9851C()
{
  v1 = *(v0 + 2752);
  v2 = *(v0 + 2680);
  [v1 duration];

  *(v0 + 2760) = sub_1C6017220();
  *(v0 + 2768) = *(v2 + 64);
  *(v0 + 2776) = sub_1C6016C00();
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_117();
  v3 = OUTLINED_FUNCTION_6_27();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1C5D985F0()
{
  OUTLINED_FUNCTION_13();
  v8 = v0;
  v1 = *(v0 + 2712);

  [v1 overlappedPlaybackSafetyMargin];
  *(v0 + 2784) = v6;
  *(v0 + 2800) = v7;
  v2 = OUTLINED_FUNCTION_10();

  return MEMORY[0x1EEE6DFA0](v2, v3, v4);
}

uint64_t sub_1C5D98674()
{
  v1 = *(v0 + 2768);
  v2 = *(v0 + 2760);
  v3 = *(v0 + 2728);
  if (v3 >= v2 - sub_1C6017220() - v1)
  {
    sub_1C5D7E40C(*(v0 + 2680) + 120, v0 + 1296);
    v7 = *(v0 + 1320);
    if (v7)
    {
      v8 = *(v0 + 2680);
      __swift_project_boxed_opaque_existential_0((v0 + 1296), v7);
      v9 = *(v8 + 24);
      OUTLINED_FUNCTION_9_24();
      *(v0 + 1560) = v10;
      *(v0 + 1568) = v9;
      *(v0 + 1576) = 0xD000000000000024;
      *(v0 + 1584) = v11;
      sub_1C5D5CEC8(v0 + 1560);
      memcpy((v0 + 2008), (v0 + 1560), 0xD9uLL);

      sub_1C5DBBF0C();

      __swift_destroy_boxed_opaque_existential_0((v0 + 1296));
    }

    else
    {
      sub_1C5D7E4D8(v0 + 1296);
    }

    *(*(v0 + 2680) + 184) = 2;
    sub_1C5D9AFB4();
    OUTLINED_FUNCTION_10_1();
    *(v0 + 2824) = swift_allocError();
    OUTLINED_FUNCTION_19_21(v12, 1);

    return MEMORY[0x1EEE6DEB0](v0 + 656, v13, sub_1C5D98A20, v0 + 1296);
  }

  else
  {
    *(v0 + 2808) = sub_1C6016C00();
    OUTLINED_FUNCTION_9_1();
    OUTLINED_FUNCTION_117();
    v4 = OUTLINED_FUNCTION_6_27();

    return MEMORY[0x1EEE6DFA0](v4, v5, v6);
  }
}

uint64_t sub_1C5D9883C()
{
  OUTLINED_FUNCTION_13();
  v1 = v0[337];
  v2 = v0[335];

  sub_1C5D98EB8(v2);
  v0[352] = v1;
  if (v1)
  {
    v3 = sub_1C5D98978;
  }

  else
  {
    v3 = sub_1C5D988D0;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1C5D98920()
{
  OUTLINED_FUNCTION_248();
  OUTLINED_FUNCTION_15_19();
  OUTLINED_FUNCTION_172();

  return v0();
}