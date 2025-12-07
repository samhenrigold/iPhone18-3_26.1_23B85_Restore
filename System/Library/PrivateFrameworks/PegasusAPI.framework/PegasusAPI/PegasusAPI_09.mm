void sub_1B8D910F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_284();
  v21 = v6;
  v7 = OUTLINED_FUNCTION_82_0();
  v8(v7);
  OUTLINED_FUNCTION_19_0();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_5_0();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_78();
  v11 = *(v4 + 16);
  OUTLINED_FUNCTION_695();
  if (v12 && v11 && v4 != v3)
  {
    OUTLINED_FUNCTION_58();
    v14 = v3 + v13;
    v16 = *(v15 + 72);
    while (1)
    {
      v17 = OUTLINED_FUNCTION_163();
      sub_1B8D745A4(v17);
      v18 = OUTLINED_FUNCTION_205();
      sub_1B8D745A4(v18);
      OUTLINED_FUNCTION_605();
      if (!v12)
      {

        v19 = v21(v3, v5);

        if ((v19 & 1) == 0)
        {
          break;
        }
      }

      sub_1B964C2B0();
      OUTLINED_FUNCTION_0_2();
      sub_1B8D5C8D0(&qword_1EBAB3B38, v20, MEMORY[0x1E69AAC10]);
      OUTLINED_FUNCTION_259();
      v3 = sub_1B964C850();
      sub_1B8D745F8();
      OUTLINED_FUNCTION_245();
      sub_1B8D745F8();
      if (v3)
      {
        v14 += v16;
        v4 += v16;
        if (--v11)
        {
          continue;
        }
      }

      goto LABEL_13;
    }

    OUTLINED_FUNCTION_604();
    sub_1B8D745F8();
    OUTLINED_FUNCTION_197();
    sub_1B8D745F8();
  }

LABEL_13:
  OUTLINED_FUNCTION_177();
  OUTLINED_FUNCTION_283();
}

void sub_1B8D91314(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_284();
  v7 = OUTLINED_FUNCTION_64();
  type metadata accessor for Searchfoundation_Scene(v7);
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_4_1();
  if (v10 && v6 && v5 != v2)
  {
    OUTLINED_FUNCTION_3_2();
    while (1)
    {
      v11 = OUTLINED_FUNCTION_186();
      sub_1B8D745A4(v11);
      v12 = OUTLINED_FUNCTION_196();
      sub_1B8D745A4(v12);
      OUTLINED_FUNCTION_566();
      if (!v10)
      {
        break;
      }

      v13 = *(v4 + 8);
      v14 = *(v3 + 8);
      if (*(v3 + 16) == 1)
      {
        switch(v14)
        {
          case 1:
            if (v13 != 1)
            {
              goto LABEL_22;
            }

            goto LABEL_13;
          case 2:
            if (v13 != 2)
            {
              goto LABEL_22;
            }

            goto LABEL_13;
          case 3:
            if (v13 != 3)
            {
              goto LABEL_22;
            }

            goto LABEL_13;
          default:
            if (v13)
            {
              goto LABEL_22;
            }

            goto LABEL_13;
        }
      }

      if (v13 != v14)
      {
        break;
      }

LABEL_13:
      OUTLINED_FUNCTION_517();
      OUTLINED_FUNCTION_0_2();
      sub_1B8D5C8D0(&qword_1EBAB3B38, v15, MEMORY[0x1E69AAC10]);
      v16 = OUTLINED_FUNCTION_101();
      sub_1B8D745F8();
      OUTLINED_FUNCTION_199();
      sub_1B8D745F8();
      if (v16)
      {
        OUTLINED_FUNCTION_7_1();
        if (!v10)
        {
          continue;
        }
      }

      goto LABEL_23;
    }

LABEL_22:
    sub_1B8D745F8();
    OUTLINED_FUNCTION_182();
    sub_1B8D745F8();
  }

LABEL_23:
  OUTLINED_FUNCTION_177();
  OUTLINED_FUNCTION_283();
}

void sub_1B8D915B8(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_284();
  v8 = OUTLINED_FUNCTION_82_0();
  v9 = type metadata accessor for Searchfoundation_Text(v8);
  v10 = OUTLINED_FUNCTION_36(v9);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_54();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8E40, &unk_1B964D640);
  OUTLINED_FUNCTION_183(v11);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_88();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8E48, &unk_1B96CCC40);
  OUTLINED_FUNCTION_49(v13);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v14);
  v15 = OUTLINED_FUNCTION_35();
  type metadata accessor for Searchfoundation_MediaDetail(v15);
  OUTLINED_FUNCTION_19_0();
  v17 = MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_31_0(v17, v18, v19, v20, v21, v22, v23, v24, v44);
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_52();
  if (v30 && v7 && v6 != v3)
  {
    OUTLINED_FUNCTION_60_0();
    OUTLINED_FUNCTION_215();
    while (1)
    {
      v26 = OUTLINED_FUNCTION_292();
      sub_1B8D745A4(v26);
      OUTLINED_FUNCTION_604();
      sub_1B8D745A4(v27);
      OUTLINED_FUNCTION_428();
      v30 = v30 && v28 == v29;
      if (!v30 && (sub_1B964C9F0() & 1) == 0)
      {
        break;
      }

      OUTLINED_FUNCTION_224();
      sub_1B8D92024();
      OUTLINED_FUNCTION_479();
      sub_1B8D92024();
      v31 = OUTLINED_FUNCTION_207();
      OUTLINED_FUNCTION_81(v31, v32);
      if (v30)
      {
        OUTLINED_FUNCTION_37_0(v5 + v2);
        if (!v30)
        {
          goto LABEL_31;
        }

        sub_1B8D9207C(v5, &qword_1EBAB8E40, &unk_1B964D640);
      }

      else
      {
        OUTLINED_FUNCTION_186();
        OUTLINED_FUNCTION_515();
        OUTLINED_FUNCTION_37_0(v5 + v2);
        if (v33)
        {
          OUTLINED_FUNCTION_222();
          sub_1B8D745F8();
LABEL_31:
          v42 = &qword_1EBAB8E48;
          v43 = &unk_1B96CCC40;
LABEL_32:
          sub_1B8D9207C(v5, v42, v43);
          break;
        }

        OUTLINED_FUNCTION_281();
        OUTLINED_FUNCTION_74_0();
        v36 = v30 && v34 == v35;
        if (!v36 && (sub_1B964C9F0() & 1) == 0 || *(v4 + 16) != dword_1EBAB8E50)
        {
          OUTLINED_FUNCTION_401();
          sub_1B8D745F8();
          OUTLINED_FUNCTION_182();
          sub_1B8D745F8();
          v42 = &qword_1EBAB8E40;
          v43 = &unk_1B964D640;
          goto LABEL_32;
        }

        v2 = *(v45 + 24);
        sub_1B964C2B0();
        OUTLINED_FUNCTION_0_2();
        sub_1B8D5C8D0(&qword_1EBAB3B38, v37, MEMORY[0x1E69AAC10]);
        v38 = OUTLINED_FUNCTION_181();
        OUTLINED_FUNCTION_401();
        sub_1B8D745F8();
        OUTLINED_FUNCTION_182();
        sub_1B8D745F8();
        sub_1B8D9207C(v5, &qword_1EBAB8E40, &unk_1B964D640);
        if ((v38 & 1) == 0)
        {
          break;
        }
      }

      OUTLINED_FUNCTION_624();
      OUTLINED_FUNCTION_0_2();
      sub_1B8D5C8D0(&qword_1EBAB3B38, v39, MEMORY[0x1E69AAC10]);
      v40 = OUTLINED_FUNCTION_310();
      v41 = OUTLINED_FUNCTION_518(v40);
      OUTLINED_FUNCTION_400();
      sub_1B8D745F8();
      OUTLINED_FUNCTION_197();
      sub_1B8D745F8();
      if (v41)
      {
        OUTLINED_FUNCTION_528();
        OUTLINED_FUNCTION_194();
        if (!v30)
        {
          continue;
        }
      }

      goto LABEL_34;
    }

    OUTLINED_FUNCTION_400();
    sub_1B8D745F8();
    OUTLINED_FUNCTION_197();
    sub_1B8D745F8();
  }

LABEL_34:
  OUTLINED_FUNCTION_177();
  OUTLINED_FUNCTION_283();
}

void sub_1B8D91A08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_284();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9(0) - 8;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_20_0();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_138();
  v12 = *(v8 + 16);
  if (v12 == *(v6 + 16) && v12 && v8 != v6)
  {
    OUTLINED_FUNCTION_60_0();
    v14 = v8 + v13;
    v15 = v6 + v13;
    v17 = *(v16 + 72);
    do
    {
      OUTLINED_FUNCTION_240();
      sub_1B8D745A4(v18);
      v19 = OUTLINED_FUNCTION_275();
      sub_1B8D745A4(v19);
      v20 = OUTLINED_FUNCTION_186();
      v21 = v4(v20);
      OUTLINED_FUNCTION_182();
      sub_1B8D745F8();
      OUTLINED_FUNCTION_202();
      sub_1B8D745F8();
      if ((v21 & 1) == 0)
      {
        break;
      }

      v15 += v17;
      v14 += v17;
      OUTLINED_FUNCTION_194();
    }

    while (!v22);
  }

  OUTLINED_FUNCTION_283();
}

void sub_1B8D91B5C(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_284();
  v5 = OUTLINED_FUNCTION_64();
  type metadata accessor for Searchfoundation_RFHighlightedSubstring(v5);
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_4_1();
  if (v12 && v4 && v3 != v2)
  {
    OUTLINED_FUNCTION_3_2();
    while (1)
    {
      v8 = OUTLINED_FUNCTION_186();
      sub_1B8D745A4(v8);
      v9 = OUTLINED_FUNCTION_196();
      sub_1B8D745A4(v9);
      OUTLINED_FUNCTION_74_0();
      v12 = v12 && v10 == v11;
      if (!v12 && (sub_1B964C9F0() & 1) == 0)
      {
        break;
      }

      sub_1B964C2B0();
      OUTLINED_FUNCTION_0_2();
      sub_1B8D5C8D0(&qword_1EBAB3B38, v13, MEMORY[0x1E69AAC10]);
      v14 = OUTLINED_FUNCTION_101();
      sub_1B8D745F8();
      OUTLINED_FUNCTION_199();
      sub_1B8D745F8();
      if (v14)
      {
        OUTLINED_FUNCTION_7_1();
        if (!v12)
        {
          continue;
        }
      }

      goto LABEL_17;
    }

    sub_1B8D745F8();
    OUTLINED_FUNCTION_182();
    sub_1B8D745F8();
  }

LABEL_17:
  OUTLINED_FUNCTION_177();
  OUTLINED_FUNCTION_283();
}

void sub_1B8D91D0C(uint64_t *__return_ptr a1@<X8>, void *__s1@<X0>, uint64_t a3@<X2>, unint64_t a4@<X3>)
{
  v14 = *MEMORY[0x1E69E9840];
  switch(a4 >> 62)
  {
    case 1uLL:
      if (a3 >> 32 < a3)
      {
        __break(1u);
      }

      v7 = a3;
      goto LABEL_9;
    case 2uLL:
      v7 = *(a3 + 16);
LABEL_9:
      sub_1B8D91F28(v7);
      if (!v4)
      {
        goto LABEL_10;
      }

      goto LABEL_14;
    case 3uLL:
      if (__s1)
      {
        v6 = 1;
LABEL_10:
        *a1 = v6;
      }

      else
      {
        __break(1u);
LABEL_13:
        __break(1u);
LABEL_14:
        MEMORY[0x1BFADCCF0](v4);
        __break(1u);
      }

      return;
    default:
      __s2 = a3;
      v9 = a4;
      v10 = BYTE2(a4);
      v11 = BYTE3(a4);
      v12 = BYTE4(a4);
      v13 = BYTE5(a4);
      if (!__s1)
      {
        goto LABEL_13;
      }

      v6 = memcmp(__s1, &__s2, BYTE6(a4)) == 0;
      goto LABEL_10;
  }
}

uint64_t sub_1B8D91E78(uint64_t a1)
{
  result = OUTLINED_FUNCTION_708(a1);
  if (result)
  {
    result = sub_1B964C090();
    if (__OFSUB__(v3, result))
    {
      goto LABEL_8;
    }
  }

  if (__OFSUB__(v2, v3))
  {
    __break(1u);
LABEL_8:
    __break(1u);
    return result;
  }

  sub_1B964C080();
  OUTLINED_FUNCTION_609();
  OUTLINED_FUNCTION_684();
  sub_1B8D91D0C(v8, v5, v6, v7);
  v9 = OUTLINED_FUNCTION_182();
  sub_1B8D538A0(v9, v10);
  if (!v1)
  {
    v11 = v12;
  }

  return v11 & 1;
}

void sub_1B8D91F28(uint64_t a1)
{
  v4 = OUTLINED_FUNCTION_708(a1);
  if (v4)
  {
    v5 = sub_1B964C090();
    if (__OFSUB__(v3, v5))
    {
LABEL_11:
      __break(1u);
      goto LABEL_12;
    }

    v4 += v3 - v5;
  }

  if (__OFSUB__(v2, v3))
  {
    __break(1u);
    goto LABEL_11;
  }

  sub_1B964C080();
  OUTLINED_FUNCTION_609();
  if (!v1)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (!v4)
  {
LABEL_13:
    __break(1u);
    return;
  }

  if (v4 != v1)
  {
    memcmp(v1, v4, v6);
  }
}

uint64_t sub_1B8D91FCC(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v2;
    }
  }
}

uint64_t sub_1B8D92024()
{
  OUTLINED_FUNCTION_468();
  __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_59_1();
  v3 = OUTLINED_FUNCTION_432();
  v4(v3);
  return v0;
}

uint64_t sub_1B8D9207C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_59_1();
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_1B8D920D4(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_280();
  v3(v2);
  OUTLINED_FUNCTION_59_1();
  v4 = OUTLINED_FUNCTION_432();
  v5(v4);
  return v1;
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t OUTLINED_FUNCTION_9_1(char a1, char a2, size_t a3, char a4, char a5, char a6, char a7, char a8)
{
  *(v15 - 126) = v14;
  *(v15 - 125) = a8;
  *(v15 - 124) = a7;
  *(v15 - 123) = a6;
  *(v15 - 122) = v8;
  *(v15 - 121) = a5;
  *(v15 - 120) = a4;
  *(v15 - 119) = a2;
  *(v15 - 118) = v13;
  *(v15 - 117) = a1;
  *(v15 - 116) = v12;
  *(v15 - 115) = v11;
  *(v15 - 114) = v10;
  *(v15 - 113) = v9;

  return memcmp((v15 - 112), (v15 - 126), a3);
}

void OUTLINED_FUNCTION_10_1(uint64_t a1, char a2, uint64_t a3, char a4, char a5, char a6, char a7, char a8)
{
  *(v9 - 125) = a8;
  *(v9 - 124) = a7;
  *(v9 - 123) = a6;
  *(v9 - 122) = v8;
  *(v9 - 121) = a5;
  *(v9 - 120) = a4;
  *(v9 - 119) = a2;
}

void OUTLINED_FUNCTION_12_2()
{
  *(v3 - 106) = v1;
  *(v3 - 105) = HIBYTE(v0);
  *(v3 - 104) = v2;
}

void OUTLINED_FUNCTION_22_2()
{

  sub_1B8D91D0C((v3 - 112), v0, v2, v1);
}

uint64_t OUTLINED_FUNCTION_47_0(char a1, uint64_t a2, size_t a3)
{
  *(v7 - 117) = a1;
  *(v7 - 116) = v6;
  *(v7 - 115) = v5;
  *(v7 - 114) = v4;
  *(v7 - 113) = v3;

  return memcmp((v7 - 112), (v7 - 126), a3);
}

void OUTLINED_FUNCTION_51_0(uint64_t a1@<X8>)
{
  v2 = *(a1 + 72);
  *(v1 - 160) = 0;
  *(v1 - 152) = v2;
}

uint64_t OUTLINED_FUNCTION_101()
{

  return sub_1B964C850();
}

uint64_t OUTLINED_FUNCTION_152(char a1, char a2, size_t a3, char a4, char a5, char a6, char a7, char a8)
{
  *(v14 - 133) = a8;
  *(v14 - 132) = a7;
  *(v14 - 131) = a6;
  *(v14 - 130) = v8;
  *(v14 - 129) = a5;
  *(v14 - 128) = a4;
  *(v14 - 127) = a2;
  *(v14 - 126) = v13;
  *(v14 - 125) = a1;
  *(v14 - 124) = v12;
  *(v14 - 123) = v11;
  *(v14 - 122) = v10;
  *(v14 - 121) = v9;

  return memcmp((v14 - 120), (v14 - 134), a3);
}

uint64_t OUTLINED_FUNCTION_153()
{

  return sub_1B964C850();
}

uint64_t OUTLINED_FUNCTION_167()
{

  return sub_1B964C850();
}

uint64_t OUTLINED_FUNCTION_180()
{

  return sub_1B964C850();
}

uint64_t OUTLINED_FUNCTION_181()
{

  return sub_1B964C850();
}

void OUTLINED_FUNCTION_184()
{

  sub_1B8D91D0C((v3 - 112), v2, v1, v0);
}

uint64_t OUTLINED_FUNCTION_203()
{
  result = *(v2 - 520);
  *(v2 - 112) = v1;
  *(v2 - 111) = *(v2 - 512);
  *(v2 - 110) = *(v2 - 504);
  *(v2 - 109) = *(v2 - 496);
  *(v2 - 108) = *(v2 - 448);
  *(v2 - 107) = *(v2 - 488);
  *(v2 - 106) = *(v2 - 480);
  *(v2 - 105) = *(v2 - 472);
  *(v2 - 104) = v0;
  *(v2 - 103) = *(v2 - 464);
  *(v2 - 102) = *(v2 - 456);
  *(v2 - 101) = *(v2 - 440);
  *(v2 - 100) = *(v2 - 432);
  *(v2 - 99) = *(v2 - 424);
  return result;
}

void OUTLINED_FUNCTION_204()
{
  *(v2 - 120) = v1;
  *(v2 - 119) = *(v2 - 496);
  *(v2 - 118) = *(v2 - 488);
  *(v2 - 117) = *(v2 - 480);
  *(v2 - 116) = *(v2 - 432);
  *(v2 - 115) = *(v2 - 472);
  *(v2 - 114) = *(v2 - 464);
  *(v2 - 113) = *(v2 - 456);
  *(v2 - 112) = v0;
  *(v2 - 111) = *(v2 - 448);
  *(v2 - 110) = *(v2 - 440);
  *(v2 - 109) = *(v2 - 424);
  *(v2 - 108) = *(v2 - 416);
  *(v2 - 107) = *(v2 - 408);
}

uint64_t OUTLINED_FUNCTION_208_0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v14 - 480) = v13;
  *(v14 - 472) = a8;
  *(v14 - 464) = a7;
  *(v14 - 456) = a6;
  *(v14 - 448) = a5;
  *(v14 - 440) = a4;
  *(v14 - 432) = a2;
  *(v14 - 424) = result;
  *(v14 - 416) = v12;
  *(v14 - 408) = v10;
  *(v14 - 384) = v11;
  *(v14 - 368) = v9;
  *(v14 - 376) = v8;
  *(v14 - 400) = a3;
  return result;
}

void OUTLINED_FUNCTION_213()
{
  *(v3 - 120) = v0;
  *(v3 - 118) = BYTE2(v0);
  *(v3 - 117) = BYTE3(v0);
  *(v3 - 116) = v1;
  *(v3 - 115) = BYTE5(v0);
  *(v3 - 114) = BYTE6(v0);
  *(v3 - 113) = HIBYTE(v0);
  *(v3 - 112) = v2;
  *(v3 - 110) = BYTE2(v2);
  *(v3 - 109) = BYTE3(v2);
  *(v3 - 108) = BYTE4(v2);
  *(v3 - 107) = BYTE5(v2);
}

uint64_t OUTLINED_FUNCTION_219(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v13 - 496) = a8;
  *(v13 - 488) = a7;
  *(v13 - 480) = a6;
  *(v13 - 472) = a5;
  *(v13 - 464) = a4;
  *(v13 - 456) = a2;
  *(v13 - 448) = result;
  *(v13 - 440) = v12;
  *(v13 - 432) = v11;
  *(v13 - 424) = v10;
  *(v13 - 400) = v9;
  *(v13 - 408) = v8;
  *(v13 - 416) = a3;
  return result;
}

uint64_t OUTLINED_FUNCTION_232()
{

  return sub_1B964C850();
}

uint64_t OUTLINED_FUNCTION_255()
{

  return sub_1B8D745A4(v0);
}

uint64_t OUTLINED_FUNCTION_270()
{

  return sub_1B8D92024();
}

uint64_t OUTLINED_FUNCTION_276()
{

  return sub_1B964C850();
}

uint64_t OUTLINED_FUNCTION_277()
{

  return sub_1B964C850();
}

uint64_t OUTLINED_FUNCTION_278()
{

  return sub_1B964C850();
}

uint64_t OUTLINED_FUNCTION_279_0()
{

  return sub_1B964C850();
}

uint64_t OUTLINED_FUNCTION_281()
{

  return sub_1B8D920D4(v1 + v0);
}

uint64_t OUTLINED_FUNCTION_282()
{

  return sub_1B8D920D4(v1 + v0);
}

uint64_t OUTLINED_FUNCTION_426(uint64_t a1)
{

  return sub_1B8D91E78(a1);
}

uint64_t OUTLINED_FUNCTION_429()
{

  return sub_1B964C850();
}

uint64_t OUTLINED_FUNCTION_433()
{

  return sub_1B8D745F8();
}

void OUTLINED_FUNCTION_439(uint64_t a1@<X8>)
{
  *(v4 - 88) = v2 + v1;
  *(v4 - 128) = *(a1 + 72);
  *(v4 - 120) = v3;
}

void OUTLINED_FUNCTION_478()
{
  *(v3 - 106) = v1;
  *(v3 - 105) = HIBYTE(v0);
  *(v3 - 104) = v2;
}

uint64_t OUTLINED_FUNCTION_495()
{

  return sub_1B964C2B0();
}

uint64_t OUTLINED_FUNCTION_496()
{

  return sub_1B964C2B0();
}

uint64_t OUTLINED_FUNCTION_515()
{

  return sub_1B8D92024();
}

void OUTLINED_FUNCTION_516()
{

  sub_1B8D91D0C((v3 - 112), v0, v2, v1);
}

uint64_t OUTLINED_FUNCTION_517()
{

  return sub_1B964C2B0();
}

uint64_t OUTLINED_FUNCTION_518(uint64_t a1)
{

  return sub_1B964C850();
}

uint64_t OUTLINED_FUNCTION_519(uint64_t a1)
{

  return sub_1B964C850();
}

uint64_t OUTLINED_FUNCTION_520()
{

  return sub_1B8D92024();
}

uint64_t OUTLINED_FUNCTION_522()
{

  return sub_1B8D745A4(v1 + v0);
}

uint64_t OUTLINED_FUNCTION_523()
{

  return sub_1B8D745F8();
}

uint64_t OUTLINED_FUNCTION_524()
{

  return sub_1B964C2B0();
}

uint64_t OUTLINED_FUNCTION_525(uint64_t a1)
{

  return sub_1B964C850();
}

uint64_t OUTLINED_FUNCTION_526()
{

  return sub_1B8D745F8();
}

uint64_t OUTLINED_FUNCTION_527(uint64_t a1)
{

  return sub_1B964C850();
}

uint64_t OUTLINED_FUNCTION_546()
{

  return sub_1B964C2B0();
}

uint64_t OUTLINED_FUNCTION_547()
{

  return sub_1B964C2B0();
}

uint64_t OUTLINED_FUNCTION_548()
{

  return sub_1B8D92024();
}

uint64_t OUTLINED_FUNCTION_549()
{

  return sub_1B8D92024();
}

uint64_t OUTLINED_FUNCTION_550()
{

  return sub_1B8D92024();
}

uint64_t OUTLINED_FUNCTION_551()
{

  return sub_1B964C2B0();
}

uint64_t OUTLINED_FUNCTION_552(uint64_t a1)
{

  return sub_1B964C850();
}

uint64_t OUTLINED_FUNCTION_561()
{

  return sub_1B964C2B0();
}

uint64_t OUTLINED_FUNCTION_565()
{

  return sub_1B964C2B0();
}

uint64_t OUTLINED_FUNCTION_571()
{

  return sub_1B8D745F8();
}

uint64_t OUTLINED_FUNCTION_576()
{

  return sub_1B8D92024();
}

uint64_t OUTLINED_FUNCTION_577()
{

  return sub_1B8D92024();
}

uint64_t OUTLINED_FUNCTION_588()
{

  return sub_1B964C850();
}

uint64_t OUTLINED_FUNCTION_589@<X0>(uint64_t a1@<X8>)
{

  return sub_1B8D745A4(a1 + v1);
}

void OUTLINED_FUNCTION_597(uint64_t a1@<X8>)
{
  *(v4 - 96) = a1;
  *(v4 - 88) = v1;
  *(v4 - 112) = v2;
  *(v4 - 104) = v3;
}

uint64_t OUTLINED_FUNCTION_621()
{

  return sub_1B964C2B0();
}

uint64_t OUTLINED_FUNCTION_622()
{

  return sub_1B8D745F8();
}

uint64_t OUTLINED_FUNCTION_623()
{

  return sub_1B8D92024();
}

uint64_t OUTLINED_FUNCTION_624()
{

  return sub_1B964C2B0();
}

uint64_t OUTLINED_FUNCTION_625()
{

  return sub_1B8D92024();
}

uint64_t OUTLINED_FUNCTION_626@<X0>(uint64_t a1@<X8>)
{

  return sub_1B8D745A4(a1 + v1);
}

uint64_t OUTLINED_FUNCTION_627(uint64_t a1)
{

  return sub_1B964C850();
}

uint64_t OUTLINED_FUNCTION_628()
{

  return sub_1B964C2B0();
}

uint64_t OUTLINED_FUNCTION_629()
{

  return sub_1B8D745F8();
}

uint64_t OUTLINED_FUNCTION_630()
{

  return sub_1B964C2B0();
}

uint64_t OUTLINED_FUNCTION_631()
{

  return sub_1B8D92024();
}

uint64_t OUTLINED_FUNCTION_632(uint64_t a1)
{
  *(v2 - 400) = *(v1 + 24);

  return sub_1B964C070();
}

uint64_t OUTLINED_FUNCTION_633()
{

  return sub_1B964C2B0();
}

uint64_t OUTLINED_FUNCTION_635()
{

  return sub_1B8D92024();
}

uint64_t OUTLINED_FUNCTION_636()
{

  return sub_1B964C2B0();
}

uint64_t OUTLINED_FUNCTION_637()
{
  v3 = *(v1 - 88) + v0;

  return sub_1B8D920D4(v3);
}

uint64_t OUTLINED_FUNCTION_638()
{
  v3 = *(v1 - 88) + v0;

  return sub_1B8D920D4(v3);
}

uint64_t OUTLINED_FUNCTION_639()
{

  return sub_1B964C2B0();
}

uint64_t OUTLINED_FUNCTION_640@<X0>(uint64_t a1@<X8>)
{

  return sub_1B8D745A4(a1 + v1);
}

uint64_t OUTLINED_FUNCTION_641()
{

  return sub_1B964C2B0();
}

uint64_t OUTLINED_FUNCTION_642()
{

  return sub_1B964C2B0();
}

uint64_t OUTLINED_FUNCTION_644()
{

  return sub_1B8D92024();
}

uint64_t OUTLINED_FUNCTION_645()
{

  return sub_1B8D92024();
}

uint64_t OUTLINED_FUNCTION_646()
{

  return sub_1B8D92024();
}

uint64_t OUTLINED_FUNCTION_647()
{
}

uint64_t OUTLINED_FUNCTION_648()
{

  return sub_1B8D92024();
}

uint64_t OUTLINED_FUNCTION_649()
{
}

uint64_t OUTLINED_FUNCTION_650()
{

  return sub_1B8D745F8();
}

uint64_t OUTLINED_FUNCTION_651()
{

  return sub_1B8D92024();
}

uint64_t OUTLINED_FUNCTION_700@<X0>(unint64_t a1@<X8>)
{
  if (a1 >= 0xFFFFFFFF)
  {
    LODWORD(a1) = -1;
  }

  return (a1 + 1);
}

uint64_t OUTLINED_FUNCTION_701()
{

  return sub_1B8D92024();
}

uint64_t OUTLINED_FUNCTION_702()
{

  return sub_1B8D745A4(v0);
}

uint64_t OUTLINED_FUNCTION_703()
{
  *(v1 - 400) = v0;

  return sub_1B964C090();
}

uint64_t OUTLINED_FUNCTION_704()
{
  v3 = *(v1 - 136) + v0;

  return sub_1B8D745A4(v3);
}

uint64_t OUTLINED_FUNCTION_705()
{

  return sub_1B964C850();
}

uint64_t OUTLINED_FUNCTION_706()
{

  return sub_1B964C850();
}

uint64_t OUTLINED_FUNCTION_707()
{

  return sub_1B964C850();
}

uint64_t OUTLINED_FUNCTION_708(uint64_t a1)
{

  return sub_1B964C070();
}

void OUTLINED_FUNCTION_709(void *a1@<X0>, uint64_t *a2@<X8>)
{

  sub_1B8D91D0C(a2, a1, v3, v2);
}

uint64_t OUTLINED_FUNCTION_710(int64_t a1)
{
  if (a1 >= v1)
  {
    v5 = v1;
  }

  else
  {
    v5 = a1;
  }

  return memcmp((v3 - 112), v2, v5);
}

uint64_t OUTLINED_FUNCTION_711()
{

  return sub_1B964C2B0();
}

uint64_t OUTLINED_FUNCTION_712(uint64_t a1)
{

  return sub_1B964C850();
}

uint64_t OUTLINED_FUNCTION_713(uint64_t a1)
{

  return sub_1B964C850();
}

uint64_t OUTLINED_FUNCTION_714(uint64_t a1)
{

  return sub_1B8D920D4(a1);
}

uint64_t OUTLINED_FUNCTION_715()
{

  return sub_1B8D92024();
}

uint64_t OUTLINED_FUNCTION_716()
{

  return sub_1B964C2B0();
}

uint64_t OUTLINED_FUNCTION_717(uint64_t a1)
{

  return sub_1B8D745A4(a1);
}

uint64_t OUTLINED_FUNCTION_718()
{

  return sub_1B8D745F8();
}

uint64_t OUTLINED_FUNCTION_719@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 - 256) = a1;

  return sub_1B964C090();
}

uint64_t OUTLINED_FUNCTION_720()
{

  return sub_1B8D92024();
}

uint64_t OUTLINED_FUNCTION_721()
{

  return sub_1B8D745F8();
}

uint64_t OUTLINED_FUNCTION_722(uint64_t a1)
{

  return sub_1B964C850();
}

uint64_t OUTLINED_FUNCTION_723()
{

  return sub_1B964C2B0();
}

unint64_t Amppb_Role.init(rawValue:)@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 8) = result < 6;
  *(a2 + 9) = 0;
  return result;
}

uint64_t sub_1B8D957F4@<X0>(uint64_t *a1@<X8>)
{
  result = Amppb_Role.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1B8D95828(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8D977B4();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t static Amppb_Role.allCases.setter(void *a1)
{
  swift_beginAccess();
  off_1EBAB9300 = a1;
}

void *__swift_coroFrameAllocStub(size_t a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    return swift_coroFrameAlloc();
  }

  return malloc(a1);
}

uint64_t sub_1B8D959C0@<X0>(uint64_t *a1@<X8>)
{
  result = static Amppb_Role.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t Amppb_Availability.unknownFields.getter()
{
  OUTLINED_FUNCTION_27();
  sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1();
  v0 = OUTLINED_FUNCTION_432();

  return v1(v0);
}

uint64_t Amppb_Availability.unknownFields.setter()
{
  OUTLINED_FUNCTION_313();
  sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1();
  v4 = *(v3 + 40);

  return v4(v1, v0, v2);
}

uint64_t Amppb_CastAndCrew.role.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t Amppb_CastAndCrew.person.getter@<X0>(void *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9398, &qword_1B964E4C0);
  OUTLINED_FUNCTION_183(v3);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v15 - v5;
  v7 = type metadata accessor for Amppb_CastAndCrew(0);
  sub_1B8D95D8C(v1 + *(v7 + 24), v6);
  v8 = type metadata accessor for Amppb_Person(0);
  v9 = OUTLINED_FUNCTION_493();
  OUTLINED_FUNCTION_178(v9, v10, v8);
  if (!v11)
  {
    return sub_1B8D95E1C(v6, a1);
  }

  *a1 = 0;
  a1[1] = 0xE000000000000000;
  a1[2] = MEMORY[0x1E69E7CC0];
  a1[3] = 0;
  a1[4] = 0xE000000000000000;
  a1[5] = 0;
  a1[6] = 0xE000000000000000;
  _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
  v12 = OUTLINED_FUNCTION_493();
  result = OUTLINED_FUNCTION_178(v12, v13, v8);
  if (!v11)
  {
    return sub_1B8D9207C(v6, &qword_1EBAB9398, &qword_1B964E4C0);
  }

  return result;
}

uint64_t sub_1B8D95C18(uint64_t a1)
{
  v2 = type metadata accessor for Amppb_Person(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  sub_1B8D960C8(a1, &v5 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  return Amppb_CastAndCrew.person.setter();
}

uint64_t Amppb_CastAndCrew.person.setter()
{
  v2 = OUTLINED_FUNCTION_313();
  v3 = *(type metadata accessor for Amppb_CastAndCrew(v2) + 24);
  sub_1B8D9207C(v1 + v3, &qword_1EBAB9398, &qword_1B964E4C0);
  sub_1B8D95E1C(v0, v1 + v3);
  v4 = type metadata accessor for Amppb_Person(0);

  return __swift_storeEnumTagSinglePayload(v1 + v3, 0, 1, v4);
}

uint64_t Amppb_Person.init()@<X0>(void *a1@<X8>)
{
  v2 = MEMORY[0x1E69E7CC0];
  *a1 = 0;
  a1[1] = 0xE000000000000000;
  a1[2] = v2;
  a1[3] = 0;
  a1[4] = 0xE000000000000000;
  a1[5] = 0;
  a1[6] = 0xE000000000000000;
  type metadata accessor for Amppb_Person(0);
  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

uint64_t sub_1B8D95D8C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9398, &qword_1B964E4C0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B8D95E1C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Amppb_Person(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void (*Amppb_CastAndCrew.person.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v3;
  *v3 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9398, &qword_1B964E4C0);
  OUTLINED_FUNCTION_183(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v3[1] = v6;
  v7 = type metadata accessor for Amppb_Person(0);
  v3[2] = v7;
  OUTLINED_FUNCTION_59_1();
  v9 = *(v8 + 64);
  v3[3] = __swift_coroFrameAllocStub(v9);
  v10 = __swift_coroFrameAllocStub(v9);
  v3[4] = v10;
  v11 = *(type metadata accessor for Amppb_CastAndCrew(0) + 24);
  *(v3 + 10) = v11;
  sub_1B8D95D8C(v1 + v11, v6);
  v12 = OUTLINED_FUNCTION_493();
  OUTLINED_FUNCTION_178(v12, v13, v7);
  if (v14)
  {
    *v10 = 0;
    v10[1] = 0xE000000000000000;
    v10[2] = MEMORY[0x1E69E7CC0];
    v10[3] = 0;
    v10[4] = 0xE000000000000000;
    v10[5] = 0;
    v10[6] = 0xE000000000000000;
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    v15 = OUTLINED_FUNCTION_493();
    OUTLINED_FUNCTION_178(v15, v16, v7);
    if (!v14)
    {
      sub_1B8D9207C(v6, &qword_1EBAB9398, &qword_1B964E4C0);
    }
  }

  else
  {
    sub_1B8D95E1C(v6, v10);
  }

  return sub_1B8D95FE8;
}

void sub_1B8D95FE8(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 10);
  v4 = (*a1)[3];
  v5 = (*a1)[4];
  v6 = (*a1)[1];
  v7 = **a1;
  if (a2)
  {
    sub_1B8D960C8((*a1)[4], v4);
    sub_1B8D9207C(v7 + v3, &qword_1EBAB9398, &qword_1B964E4C0);
    sub_1B8D95E1C(v4, v7 + v3);
    OUTLINED_FUNCTION_30_2();
    sub_1B8D9612C(v5);
  }

  else
  {
    sub_1B8D9207C(v7 + v3, &qword_1EBAB9398, &qword_1B964E4C0);
    sub_1B8D95E1C(v5, v7 + v3);
    OUTLINED_FUNCTION_30_2();
  }

  free(v5);
  free(v4);
  free(v6);

  free(v2);
}

uint64_t sub_1B8D960C8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Amppb_Person(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B8D9612C(uint64_t a1)
{
  v2 = type metadata accessor for Amppb_Person(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t Amppb_CastAndCrew.hasPerson.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9398, &qword_1B964E4C0);
  OUTLINED_FUNCTION_183(v1);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v12 - v3;
  v5 = type metadata accessor for Amppb_CastAndCrew(0);
  sub_1B8D95D8C(v0 + *(v5 + 24), v4);
  type metadata accessor for Amppb_Person(0);
  v6 = OUTLINED_FUNCTION_493();
  OUTLINED_FUNCTION_178(v6, v7, v8);
  if (v9)
  {
    v10 = 0;
  }

  else
  {
    v10 = 1;
  }

  sub_1B8D9207C(v4, &qword_1EBAB9398, &qword_1B964E4C0);
  return v10;
}

Swift::Void __swiftcall Amppb_CastAndCrew.clearPerson()()
{
  v1 = *(type metadata accessor for Amppb_CastAndCrew(0) + 24);
  sub_1B8D9207C(v0 + v1, &qword_1EBAB9398, &qword_1B964E4C0);
  v2 = type metadata accessor for Amppb_Person(0);

  __swift_storeEnumTagSinglePayload(v0 + v1, 1, 1, v2);
}

uint64_t Amppb_CastAndCrew.unknownFields.getter()
{
  v0 = OUTLINED_FUNCTION_27();
  type metadata accessor for Amppb_CastAndCrew(v0);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1();
  v1 = OUTLINED_FUNCTION_18_1();

  return v2(v1);
}

uint64_t Amppb_CastAndCrew.unknownFields.setter()
{
  v2 = OUTLINED_FUNCTION_313();
  v3 = *(type metadata accessor for Amppb_CastAndCrew(v2) + 20);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1();
  v5 = *(v4 + 40);

  return v5(v1 + v3, v0);
}

uint64_t Amppb_CastAndCrew.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Amppb_CastAndCrew(v0);
  return OUTLINED_FUNCTION_25();
}

uint64_t Amppb_CastAndCrew.init()@<X0>(void *a1@<X8>)
{
  *a1 = MEMORY[0x1E69E7CC0];
  v2 = type metadata accessor for Amppb_CastAndCrew(0);
  _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
  v3 = *(v2 + 24);
  v4 = type metadata accessor for Amppb_Person(0);

  return __swift_storeEnumTagSinglePayload(a1 + v3, 1, 1, v4);
}

uint64_t Amppb_Person.id.setter()
{
  OUTLINED_FUNCTION_16();

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t Amppb_Person.name.setter(uint64_t a1)
{

  *(v1 + 16) = a1;
  return result;
}

uint64_t Amppb_Person.thumbnail.setter()
{
  OUTLINED_FUNCTION_16();

  *(v1 + 24) = v2;
  *(v1 + 32) = v0;
  return result;
}

uint64_t Amppb_Person.gender.setter()
{
  OUTLINED_FUNCTION_16();

  *(v1 + 40) = v2;
  *(v1 + 48) = v0;
  return result;
}

uint64_t Amppb_Person.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Amppb_Person(v0);
  return OUTLINED_FUNCTION_25();
}

uint64_t Amppb_LocalizedField.language.setter()
{
  OUTLINED_FUNCTION_16();

  *(v1 + 16) = v2;
  *(v1 + 24) = v0;
  return result;
}

uint64_t Amppb_LocalizedField.value.setter()
{
  OUTLINED_FUNCTION_16();

  *(v1 + 32) = v2;
  *(v1 + 40) = v0;
  return result;
}

uint64_t sub_1B8D967CC()
{
  v0 = OUTLINED_FUNCTION_27();
  v1(v0);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1();
  v2 = OUTLINED_FUNCTION_18_1();

  return v3(v2);
}

uint64_t sub_1B8D96874()
{
  v2 = OUTLINED_FUNCTION_313();
  v4 = *(v3(v2) + 32);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1();
  v6 = *(v5 + 40);

  return v6(v1 + v4, v0);
}

uint64_t Amppb_LocalizedField.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Amppb_LocalizedField(v0);
  return OUTLINED_FUNCTION_25();
}

uint64_t Amppb_LocalizedField.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0xE000000000000000;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0xE000000000000000;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0xE000000000000000;
  *(a1 + 48) = 0;
  type metadata accessor for Amppb_LocalizedField(0);
  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

uint64_t Amppb_RottenTomatoes.rottenTomatoURL.setter()
{
  OUTLINED_FUNCTION_16();

  *(v1 + 8) = v2;
  *(v1 + 16) = v0;
  return result;
}

uint64_t Amppb_RottenTomatoes.unknownFields.getter()
{
  v0 = OUTLINED_FUNCTION_27();
  type metadata accessor for Amppb_RottenTomatoes(v0);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1();
  v1 = OUTLINED_FUNCTION_18_1();

  return v2(v1);
}

uint64_t Amppb_RottenTomatoes.unknownFields.setter()
{
  v2 = OUTLINED_FUNCTION_313();
  v3 = *(type metadata accessor for Amppb_RottenTomatoes(v2) + 24);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1();
  v5 = *(v4 + 40);

  return v5(v1 + v3, v0);
}

uint64_t Amppb_RottenTomatoes.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Amppb_RottenTomatoes(v0);
  return OUTLINED_FUNCTION_25();
}

uint64_t Amppb_RottenTomatoes.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0xE000000000000000;
  type metadata accessor for Amppb_RottenTomatoes(0);
  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

uint64_t sub_1B8D96B98()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAB9308);
  __swift_project_value_buffer(v0, qword_1EBAB9308);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964E4A0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "ACTOR";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "DIRECTOR";
  *(v10 + 8) = 8;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "WRITER";
  *(v12 + 1) = 6;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "PRODUCER";
  *(v14 + 1) = 8;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 4;
  *v16 = "VOICE_ONLY";
  *(v16 + 1) = 10;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 5;
  *v18 = "HOST";
  *(v18 + 1) = 4;
  v18[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t sub_1B8D96E94()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAB9320);
  __swift_project_value_buffer(v0, qword_1EBAB9320);
  return sub_1B964C770();
}

uint64_t Amppb_Availability.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2)
{
  do
  {
    result = sub_1B964C3C0();
  }

  while (!v2 && (v4 & 1) == 0);
  return result;
}

uint64_t static Amppb_Availability.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_28_1();
  sub_1B964C2B0();
  OUTLINED_FUNCTION_0_3();
  sub_1B8CD18C8(v2, v3, MEMORY[0x1E69AAC10]);
  return sub_1B964C850() & 1;
}

uint64_t sub_1B8D97098(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD18C8(&qword_1EBAB9500, type metadata accessor for Amppb_Availability, protocol conformance descriptor for Amppb_Availability);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B8D97118(uint64_t a1)
{
  v2 = sub_1B8CD18C8(&qword_1EBAB9418, type metadata accessor for Amppb_Availability, protocol conformance descriptor for Amppb_Availability);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B8D97188(uint64_t a1, uint64_t a2)
{
  sub_1B8CD18C8(&qword_1EBAB9418, type metadata accessor for Amppb_Availability, protocol conformance descriptor for Amppb_Availability);

  return sub_1B964C5D0();
}

uint64_t sub_1B8D97244()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAB9338);
  __swift_project_value_buffer(v0, qword_1EBAB9338);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964D060;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "role";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "person";
  *(v10 + 1) = 6;
  v10[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t Amppb_CastAndCrew.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_692();
  while (1)
  {
    result = OUTLINED_FUNCTION_31_1();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 2)
    {
      v7 = OUTLINED_FUNCTION_9();
      sub_1B8D974F8(v7, v8, v9, v10);
    }

    else if (result == 1)
    {
      v3 = OUTLINED_FUNCTION_9();
      sub_1B8D97490(v3, v4, v5, v6);
    }
  }

  return result;
}

uint64_t sub_1B8D974F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Amppb_CastAndCrew(0);
  type metadata accessor for Amppb_Person(0);
  sub_1B8CD18C8(&qword_1EBAB93B0, type metadata accessor for Amppb_Person, protocol conformance descriptor for Amppb_Person);
  return sub_1B964C580();
}

uint64_t Amppb_CastAndCrew.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9398, &qword_1B964E4C0);
  OUTLINED_FUNCTION_183(v6);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v7);
  v9 = v16 - v8;
  v10 = type metadata accessor for Amppb_Person(0);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v11);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!*(*v3 + 16) || (sub_1B8D977B4(), result = sub_1B964C600(), !v4))
  {
    v16[1] = a1;
    v15 = type metadata accessor for Amppb_CastAndCrew(0);
    sub_1B8D95D8C(v3 + *(v15 + 24), v9);
    if (__swift_getEnumTagSinglePayload(v9, 1, v10) == 1)
    {
      sub_1B8D9207C(v9, &qword_1EBAB9398, &qword_1B964E4C0);
    }

    else
    {
      sub_1B8D95E1C(v9, v13);
      sub_1B8CD18C8(&qword_1EBAB93B0, type metadata accessor for Amppb_Person, protocol conformance descriptor for Amppb_Person);
      sub_1B964C740();
      result = sub_1B8D9612C(v13);
      if (v4)
      {
        return result;
      }
    }

    return sub_1B964C290();
  }

  return result;
}

unint64_t sub_1B8D977B4()
{
  result = qword_1EBAB93A8;
  if (!qword_1EBAB93A8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Amppb_Role, &type metadata for Amppb_Role, v0, v1);
    atomic_store(result, &qword_1EBAB93A8);
  }

  return result;
}

uint64_t static Amppb_CastAndCrew.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_28_1();
  v5 = type metadata accessor for Amppb_Person(v4);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9398, &qword_1B964E4C0);
  OUTLINED_FUNCTION_183(v9);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v26 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB93B8, &qword_1B964E4C8);
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v26 - v15;
  if ((sub_1B8D921AC() & 1) == 0)
  {
    goto LABEL_11;
  }

  v17 = *(type metadata accessor for Amppb_CastAndCrew(0) + 24);
  v18 = *(v13 + 48);
  sub_1B8D95D8C(v2 + v17, v16);
  sub_1B8D95D8C(a2 + v17, &v16[v18]);
  OUTLINED_FUNCTION_178(v16, 1, v5);
  if (v19)
  {
    OUTLINED_FUNCTION_178(&v16[v18], 1, v5);
    if (v19)
    {
      sub_1B8D9207C(v16, &qword_1EBAB9398, &qword_1B964E4C0);
LABEL_14:
      sub_1B964C2B0();
      OUTLINED_FUNCTION_0_3();
      v25 = sub_1B8CD18C8(v23, v24, MEMORY[0x1E69AAC10]);
      v20 = OUTLINED_FUNCTION_634(v25);
      return v20 & 1;
    }

    goto LABEL_10;
  }

  sub_1B8D95D8C(v16, v12);
  OUTLINED_FUNCTION_178(&v16[v18], 1, v5);
  if (v19)
  {
    sub_1B8D9612C(v12);
LABEL_10:
    sub_1B8D9207C(v16, &qword_1EBAB93B8, &qword_1B964E4C8);
    goto LABEL_11;
  }

  sub_1B8D95E1C(&v16[v18], v8);
  v22 = static Amppb_Person.== infix(_:_:)(v12);
  sub_1B8D9612C(v8);
  sub_1B8D9612C(v12);
  sub_1B8D9207C(v16, &qword_1EBAB9398, &qword_1B964E4C0);
  if (v22)
  {
    goto LABEL_14;
  }

LABEL_11:
  v20 = 0;
  return v20 & 1;
}

uint64_t sub_1B8D97B0C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD18C8(&qword_1EBAB94F8, type metadata accessor for Amppb_CastAndCrew, protocol conformance descriptor for Amppb_CastAndCrew);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B8D97B8C(uint64_t a1)
{
  v2 = sub_1B8CD18C8(&qword_1EBAB9430, type metadata accessor for Amppb_CastAndCrew, protocol conformance descriptor for Amppb_CastAndCrew);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B8D97BFC(uint64_t a1, uint64_t a2)
{
  sub_1B8CD18C8(&qword_1EBAB9430, type metadata accessor for Amppb_CastAndCrew, protocol conformance descriptor for Amppb_CastAndCrew);

  return sub_1B964C5D0();
}

uint64_t sub_1B8D97C9C()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAB9350);
  __swift_project_value_buffer(v0, qword_1EBAB9350);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964E4B0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "id";
  *(v6 + 8) = 2;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "name";
  *(v10 + 8) = 4;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "thumbnail";
  *(v12 + 1) = 9;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "gender";
  *(v14 + 1) = 6;
  v14[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t Amppb_Person.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_692();
  while (1)
  {
    result = OUTLINED_FUNCTION_31_1();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
      case 3:
      case 4:
        OUTLINED_FUNCTION_12();
        sub_1B964C530();
        break;
      case 2:
        v3 = OUTLINED_FUNCTION_9();
        sub_1B8D97F8C(v3, v4, v5, v6);
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1B8D97F8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Amppb_LocalizedField(0);
  sub_1B8CD18C8(&qword_1EBAB93C8, type metadata accessor for Amppb_LocalizedField, protocol conformance descriptor for Amppb_LocalizedField);
  return sub_1B964C570();
}

uint64_t Amppb_Person.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_614();
  OUTLINED_FUNCTION_1();
  if (!v5 || (result = OUTLINED_FUNCTION_3(v3, v4, 1), (v0 = v1) == 0))
  {
    if (!*(*(v2 + 16) + 16) || (type metadata accessor for Amppb_LocalizedField(0), sub_1B8CD18C8(&qword_1EBAB93C8, type metadata accessor for Amppb_LocalizedField, protocol conformance descriptor for Amppb_LocalizedField), v1 = v0, result = sub_1B964C730(), !v0))
    {
      OUTLINED_FUNCTION_1();
      if (!v9 || (result = OUTLINED_FUNCTION_3(v7, v8, 3), !v1))
      {
        OUTLINED_FUNCTION_1();
        if (!v12 || (result = OUTLINED_FUNCTION_3(v10, v11, 4), !v1))
        {
          type metadata accessor for Amppb_Person(0);
          return OUTLINED_FUNCTION_8_1();
        }
      }
    }
  }

  return result;
}

uint64_t static Amppb_Person.== infix(_:_:)(uint64_t a1)
{
  OUTLINED_FUNCTION_17_1(a1);
  v5 = v5 && v3 == v4;
  if (!v5 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  sub_1B8D7DFD0(v2[2], v1[2]);
  if ((v6 & 1) == 0)
  {
    return 0;
  }

  v7 = v2[3] == v1[3] && v2[4] == v1[4];
  if (!v7 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  v8 = v2[5] == v1[5] && v2[6] == v1[6];
  if (!v8 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for Amppb_Person(0);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_0_3();
  v11 = sub_1B8CD18C8(v9, v10, MEMORY[0x1E69AAC10]);
  return OUTLINED_FUNCTION_634(v11) & 1;
}

uint64_t sub_1B8D982E8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD18C8(&qword_1EBAB94F0, type metadata accessor for Amppb_Person, protocol conformance descriptor for Amppb_Person);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B8D98368(uint64_t a1)
{
  v2 = sub_1B8CD18C8(&qword_1EBAB93B0, type metadata accessor for Amppb_Person, protocol conformance descriptor for Amppb_Person);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B8D983D8(uint64_t a1, uint64_t a2)
{
  sub_1B8CD18C8(&qword_1EBAB93B0, type metadata accessor for Amppb_Person, protocol conformance descriptor for Amppb_Person);

  return sub_1B964C5D0();
}

uint64_t sub_1B8D98464()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAB9368);
  __swift_project_value_buffer(v0, qword_1EBAB9368);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964E4B0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "country";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "language";
  *(v10 + 8) = 8;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "value";
  *(v12 + 1) = 5;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "isPhonetic";
  *(v14 + 1) = 10;
  v14[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t Amppb_LocalizedField.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_692();
  while (1)
  {
    result = OUTLINED_FUNCTION_31_1();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
      case 2:
      case 3:
        OUTLINED_FUNCTION_12();
        sub_1B964C530();
        break;
      case 4:
        OUTLINED_FUNCTION_12();
        sub_1B964C400();
        break;
      default:
        continue;
    }
  }
}

uint64_t Amppb_LocalizedField.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_614();
  OUTLINED_FUNCTION_1();
  if (!v4 || (result = OUTLINED_FUNCTION_3(v2, v3, 1), !v0))
  {
    OUTLINED_FUNCTION_1();
    if (!v8 || (result = OUTLINED_FUNCTION_3(v6, v7, 2), !v0))
    {
      OUTLINED_FUNCTION_1();
      if (!v11 || (result = OUTLINED_FUNCTION_3(v9, v10, 3), !v0))
      {
        if (*(v1 + 48) != 1 || (OUTLINED_FUNCTION_29(), result = sub_1B964C670(), !v0))
        {
          type metadata accessor for Amppb_LocalizedField(0);
          return OUTLINED_FUNCTION_8_1();
        }
      }
    }
  }

  return result;
}

uint64_t static Amppb_LocalizedField.== infix(_:_:)(uint64_t a1)
{
  OUTLINED_FUNCTION_17_1(a1);
  v5 = v5 && v3 == v4;
  if (!v5 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  v6 = *(v2 + 16) == *(v1 + 16) && *(v2 + 24) == *(v1 + 24);
  if (!v6 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  v7 = *(v2 + 32) == *(v1 + 32) && *(v2 + 40) == *(v1 + 40);
  if (!v7 && (sub_1B964C9F0() & 1) == 0 || *(v2 + 48) != *(v1 + 48))
  {
    return 0;
  }

  type metadata accessor for Amppb_LocalizedField(0);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_0_3();
  v11 = sub_1B8CD18C8(v9, v10, MEMORY[0x1E69AAC10]);
  return OUTLINED_FUNCTION_634(v11) & 1;
}

uint64_t sub_1B8D9899C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD18C8(&qword_1EBAB94E8, type metadata accessor for Amppb_LocalizedField, protocol conformance descriptor for Amppb_LocalizedField);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B8D98A1C(uint64_t a1)
{
  v2 = sub_1B8CD18C8(&qword_1EBAB93C8, type metadata accessor for Amppb_LocalizedField, protocol conformance descriptor for Amppb_LocalizedField);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B8D98A8C(uint64_t a1, uint64_t a2)
{
  sub_1B8CD18C8(&qword_1EBAB93C8, type metadata accessor for Amppb_LocalizedField, protocol conformance descriptor for Amppb_LocalizedField);

  return sub_1B964C5D0();
}

uint64_t sub_1B8D98B18()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAB9380);
  __swift_project_value_buffer(v0, qword_1EBAB9380);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964D060;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "tomato_meter";
  *(v6 + 8) = 12;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "rotten_tomato_url";
  *(v10 + 1) = 17;
  v10[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t Amppb_RottenTomatoes.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_692();
  while (1)
  {
    result = OUTLINED_FUNCTION_31_1();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 2)
    {
      OUTLINED_FUNCTION_12();
      sub_1B964C530();
    }

    else if (result == 1)
    {
      OUTLINED_FUNCTION_12();
      sub_1B964C4A0();
    }
  }

  return result;
}

uint64_t Amppb_RottenTomatoes.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_614();
  if (!*v0 || (OUTLINED_FUNCTION_29(), result = sub_1B964C6C0(), !v1))
  {
    OUTLINED_FUNCTION_1();
    if (!v5 || (result = OUTLINED_FUNCTION_3(v3, v4, 2), !v1))
    {
      type metadata accessor for Amppb_RottenTomatoes(0);
      return OUTLINED_FUNCTION_8_1();
    }
  }

  return result;
}

uint64_t static Amppb_RottenTomatoes.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v2 = *(a1 + 8) == *(a2 + 8) && *(a1 + 16) == *(a2 + 16);
  if (!v2 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for Amppb_RottenTomatoes(0);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_0_3();
  v5 = sub_1B8CD18C8(v3, v4, MEMORY[0x1E69AAC10]);
  return OUTLINED_FUNCTION_634(v5) & 1;
}

uint64_t sub_1B8D98EE0(uint64_t (*a1)(void), unint64_t *a2, uint64_t (*a3)(uint64_t), const char *a4)
{
  sub_1B964CA70();
  a1(0);
  sub_1B8CD18C8(a2, a3, a4);
  sub_1B964C7E0();
  return sub_1B964CA90();
}

uint64_t sub_1B8D98FC4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD18C8(&qword_1EBAB94E0, type metadata accessor for Amppb_RottenTomatoes, protocol conformance descriptor for Amppb_RottenTomatoes);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B8D99044(uint64_t a1)
{
  v2 = sub_1B8CD18C8(&qword_1EBAB9468, type metadata accessor for Amppb_RottenTomatoes, protocol conformance descriptor for Amppb_RottenTomatoes);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B8D990B4(uint64_t a1, uint64_t a2)
{
  sub_1B8CD18C8(&qword_1EBAB9468, type metadata accessor for Amppb_RottenTomatoes, protocol conformance descriptor for Amppb_RottenTomatoes);

  return sub_1B964C5D0();
}

unint64_t sub_1B8D99138()
{
  result = qword_1EBAB93E8;
  if (!qword_1EBAB93E8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Amppb_Role, &type metadata for Amppb_Role, v0, v1);
    atomic_store(result, &qword_1EBAB93E8);
  }

  return result;
}

unint64_t sub_1B8D99190()
{
  result = qword_1EBAB93F0;
  if (!qword_1EBAB93F0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Amppb_Role, &type metadata for Amppb_Role, v0, v1);
    atomic_store(result, &qword_1EBAB93F0);
  }

  return result;
}

unint64_t sub_1B8D991E8()
{
  result = qword_1EBAB93F8;
  if (!qword_1EBAB93F8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Amppb_Role, &type metadata for Amppb_Role, v0, v1);
    atomic_store(result, &qword_1EBAB93F8);
  }

  return result;
}

unint64_t sub_1B8D99240()
{
  result = qword_1EBAB9400;
  if (!qword_1EBAB9400)
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBAB9408, &qword_1B964E5B8);
    result = swift_getWitnessTable(MEMORY[0x1E69E6340], v3, v0, v1);
    atomic_store(result, &qword_1EBAB9400);
  }

  return result;
}

uint64_t sub_1B8D9987C(uint64_t a1)
{
  result = sub_1B964C2B0();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_1B8D99910(uint64_t a1)
{
  sub_1B8D999DC();
  if (v1 <= 0x3F)
  {
    sub_1B964C2B0();
    if (v2 <= 0x3F)
    {
      sub_1B8D99B20(319, &qword_1EBAB94A0, type metadata accessor for Amppb_Person, MEMORY[0x1E69E6720]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1B8D999DC()
{
  if (!qword_1EBAB9498)
  {
    v0 = sub_1B964C910();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBAB9498);
    }
  }
}

void sub_1B8D99A54(uint64_t a1)
{
  sub_1B8D99B20(319, &qword_1EBAB94B8, type metadata accessor for Amppb_LocalizedField, MEMORY[0x1E69E62F8]);
  if (v1 <= 0x3F)
  {
    sub_1B964C2B0();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1B8D99B20(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t __swift_get_extra_inhabitant_index_25Tm()
{
  OUTLINED_FUNCTION_19_1();
  if (v2)
  {
    return OUTLINED_FUNCTION_700(*(v0 + 8));
  }

  OUTLINED_FUNCTION_24_1();
  v4 = OUTLINED_FUNCTION_699(*(v1 + 32));

  return __swift_getEnumTagSinglePayload(v4, v5, v6);
}

void __swift_store_extra_inhabitant_index_26Tm()
{
  OUTLINED_FUNCTION_7();
  if (v3)
  {
    *(v1 + 8) = (v0 - 1);
  }

  else
  {
    v4 = v2;
    sub_1B964C2B0();
    v5 = OUTLINED_FUNCTION_699(*(v4 + 32));

    __swift_storeEnumTagSinglePayload(v5, v6, v0, v7);
  }
}

uint64_t sub_1B8D99C80(uint64_t a1)
{
  result = sub_1B964C2B0();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1B8D99D30(uint64_t a1)
{
  result = sub_1B964C2B0();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_8_1()
{

  return sub_1B964C290();
}

uint64_t OUTLINED_FUNCTION_24_1()
{

  return sub_1B964C2B0();
}

uint64_t OUTLINED_FUNCTION_30_2()
{

  return __swift_storeEnumTagSinglePayload(v2 + v1, 0, 1, v0);
}

uint64_t OUTLINED_FUNCTION_31_1()
{

  return sub_1B964C3C0();
}

BOOL sub_1B8D99EA8(uint64_t a1, unint64_t a2)
{
  v2 = 0;
  v3 = 0;
  switch(a2 >> 62)
  {
    case 1uLL:
      v3 = a1;
      v2 = a1 >> 32;
      break;
    case 2uLL:
      v3 = *(a1 + 16);
      v2 = *(a1 + 24);
      break;
    case 3uLL:
      return v3 == v2;
    default:
      v3 = 0;
      v2 = BYTE6(a2);
      break;
  }

  return v3 == v2;
}

unint64_t Amppb_MediaKindType.init(rawValue:)@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 8) = result < 0x17;
  *(a2 + 9) = 0;
  return result;
}

uint64_t sub_1B8D99F40@<X0>(uint64_t *a1@<X8>)
{
  result = Amppb_MediaKindType.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1B8D99F74(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8DAF9CC();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t static Amppb_MediaKindType.allCases.setter(void *a1)
{
  OUTLINED_FUNCTION_211_0(a1, v3);
  off_1EBAB9508 = a1;
}

uint64_t (*static Amppb_MediaKindType.allCases.modify())(uint64_t a1)
{
  OUTLINED_FUNCTION_288();
  OUTLINED_FUNCTION_131();
  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_1B8D9A0A0@<X0>(uint64_t *a1@<X8>)
{
  result = static Amppb_MediaKindType.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t Amppb_Artwork.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Amppb_Artwork(v0);
  return OUTLINED_FUNCTION_25();
}

uint64_t Amppb_Artwork.init()@<X0>(void *a1@<X8>)
{
  OUTLINED_FUNCTION_228_0(a1);
  *(v1 + 16) = 0;
  *(v1 + 24) = v2;
  type metadata accessor for Amppb_Artwork(0);
  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

uint64_t Amppb_ContentRating.unknownFields.getter()
{
  v0 = OUTLINED_FUNCTION_27();
  type metadata accessor for Amppb_ContentRating(v0);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1();
  v1 = OUTLINED_FUNCTION_18_1();

  return v2(v1);
}

uint64_t Amppb_ContentRating.unknownFields.setter()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Amppb_ContentRating(v0);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1();
  v1 = OUTLINED_FUNCTION_209();

  return v2(v1);
}

uint64_t Amppb_ContentRating.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Amppb_ContentRating(v0);
  return OUTLINED_FUNCTION_25();
}

uint64_t Amppb_ContentRating.init()@<X0>(void *a1@<X8>)
{
  *a1 = MEMORY[0x1E69E7CC0];
  a1[1] = 0;
  a1[2] = 0;
  a1[3] = 0;
  a1[4] = 0xE000000000000000;
  a1[5] = 0;
  a1[6] = 0xE000000000000000;
  type metadata accessor for Amppb_ContentRating(0);
  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

uint64_t Amppb_Description.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Amppb_Description(v0);
  return OUTLINED_FUNCTION_25();
}

uint64_t Amppb_EbookInfo.seller.setter()
{
  OUTLINED_FUNCTION_16();

  *(v1 + 40) = v2;
  *(v1 + 48) = v0;
  return result;
}

uint64_t Amppb_EbookInfo.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Amppb_EbookInfo(v0);
  return OUTLINED_FUNCTION_25();
}

uint64_t Amppb_EbookInfo.init()@<X0>(void *a1@<X8>)
{
  OUTLINED_FUNCTION_118_0(a1);
  v1[2] = 0;
  v1[3] = 0;
  v1[4] = v2;
  v1[5] = 0;
  v1[6] = v2;
  type metadata accessor for Amppb_EbookInfo(0);
  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

uint64_t sub_1B8D9A6CC()
{
  v0 = OUTLINED_FUNCTION_27();
  v1(v0);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1();
  v2 = OUTLINED_FUNCTION_18_1();

  return v3(v2);
}

uint64_t sub_1B8D9A774()
{
  v0 = OUTLINED_FUNCTION_313();
  v1(v0);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1();
  v2 = OUTLINED_FUNCTION_209();

  return v3(v2);
}

uint64_t Amppb_Preview.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Amppb_Preview(v0);
  return OUTLINED_FUNCTION_25();
}

uint64_t Amppb_Preview.init()@<X0>(void *a1@<X8>)
{
  OUTLINED_FUNCTION_228_0(a1);
  *(v1 + 16) = v2;
  type metadata accessor for Amppb_Preview(0);
  return OUTLINED_FUNCTION_279();
}

uint64_t Amppb_MovieClip.previewArtwork.getter()
{
  v1 = OUTLINED_FUNCTION_206_0();
  OUTLINED_FUNCTION_183(v1);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v2);
  v3 = OUTLINED_FUNCTION_22_3();
  type metadata accessor for Amppb_MovieClip(v3);
  OUTLINED_FUNCTION_100_0();
  type metadata accessor for Amppb_Artwork(0);
  v4 = OUTLINED_FUNCTION_9_2();
  if (v5)
  {
    OUTLINED_FUNCTION_176_0(v4);
    result = OUTLINED_FUNCTION_9_2();
    if (!v5)
    {
      return sub_1B8D9207C(v0, &qword_1EBAB9680, &unk_1B964EEA0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_2_2();
    OUTLINED_FUNCTION_182();
    return sub_1B8D9ADF8();
  }

  return result;
}

uint64_t Amppb_MovieClip.previewArtwork.setter()
{
  v1 = OUTLINED_FUNCTION_313();
  v2 = type metadata accessor for Amppb_MovieClip(v1);
  sub_1B8D9207C(v0 + *(v2 + 28), &qword_1EBAB9680, &unk_1B964EEA0);
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_122_0();
  sub_1B8D9ADF8();
  type metadata accessor for Amppb_Artwork(0);
  v3 = OUTLINED_FUNCTION_59();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

void Amppb_MovieClip.previewArtwork.modify()
{
  OUTLINED_FUNCTION_243();
  v2 = OUTLINED_FUNCTION_212();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_86(v3);
  v4 = OUTLINED_FUNCTION_686();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_183(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_85(v8);
  *(v1 + 16) = type metadata accessor for Amppb_Artwork(v9);
  OUTLINED_FUNCTION_59_1();
  v11 = __swift_coroFrameAllocStub(*(v10 + 64));
  v12 = OUTLINED_FUNCTION_202_0(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  v14 = OUTLINED_FUNCTION_89_0(v13);
  v15 = type metadata accessor for Amppb_MovieClip(v14);
  OUTLINED_FUNCTION_64_0(*(v15 + 28));
  OUTLINED_FUNCTION_16_2();
  if (v16)
  {
    OUTLINED_FUNCTION_215_0();
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    OUTLINED_FUNCTION_16_2();
    if (!v16)
    {
      sub_1B8D9207C(v0, &qword_1EBAB9680, &unk_1B964EEA0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_2_2();
    OUTLINED_FUNCTION_461();
    sub_1B8D9ADF8();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_242();
}

uint64_t Amppb_MovieClip.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Amppb_MovieClip(v0);
  return OUTLINED_FUNCTION_25();
}

uint64_t Amppb_MovieClip.init()@<X0>(void *a1@<X8>)
{
  OUTLINED_FUNCTION_118_0(a1);
  *(v1 + 16) = MEMORY[0x1E69E7CC0];
  type metadata accessor for Amppb_MovieClip(0);
  OUTLINED_FUNCTION_279();
  OUTLINED_FUNCTION_197_0();
  OUTLINED_FUNCTION_83();

  return __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
}

uint64_t Amppb_Asset.flavor.setter()
{
  OUTLINED_FUNCTION_16();

  *(v1 + 16) = v2;
  *(v1 + 24) = v0;
  return result;
}

uint64_t Amppb_Asset.preview.getter@<X0>(void *a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_206_0();
  OUTLINED_FUNCTION_183(v3);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v4);
  v5 = OUTLINED_FUNCTION_22_3();
  type metadata accessor for Amppb_Asset(v5);
  OUTLINED_FUNCTION_100_0();
  type metadata accessor for Amppb_Preview(0);
  v6 = OUTLINED_FUNCTION_9_2();
  if (v7)
  {
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0xE000000000000000;
    OUTLINED_FUNCTION_251_0(v6);
    result = OUTLINED_FUNCTION_9_2();
    if (!v7)
    {
      return sub_1B8D9207C(v1, &qword_1EBAB92E0, &qword_1B964DAC0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_6_1();
    OUTLINED_FUNCTION_182();
    return sub_1B8D9ADF8();
  }

  return result;
}

uint64_t sub_1B8D9ADF8()
{
  OUTLINED_FUNCTION_468();
  v1(0);
  OUTLINED_FUNCTION_59_1();
  v2 = OUTLINED_FUNCTION_432();
  v3(v2);
  return v0;
}

uint64_t Amppb_Asset.preview.setter()
{
  v1 = OUTLINED_FUNCTION_313();
  v2 = type metadata accessor for Amppb_Asset(v1);
  sub_1B8D9207C(v0 + *(v2 + 36), &qword_1EBAB92E0, &qword_1B964DAC0);
  OUTLINED_FUNCTION_6_1();
  OUTLINED_FUNCTION_122_0();
  sub_1B8D9ADF8();
  type metadata accessor for Amppb_Preview(0);
  v3 = OUTLINED_FUNCTION_59();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

void Amppb_Asset.preview.modify()
{
  OUTLINED_FUNCTION_243();
  v2 = OUTLINED_FUNCTION_212();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_86(v3);
  v4 = OUTLINED_FUNCTION_686();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_183(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_85(v8);
  *(v1 + 16) = type metadata accessor for Amppb_Preview(v9);
  OUTLINED_FUNCTION_59_1();
  v11 = *(v10 + 64);
  v12 = __swift_coroFrameAllocStub(v11);
  v13 = OUTLINED_FUNCTION_202_0(v12);
  v14 = __swift_coroFrameAllocStub(v13);
  v15 = OUTLINED_FUNCTION_89_0(v14);
  v16 = type metadata accessor for Amppb_Asset(v15);
  OUTLINED_FUNCTION_64_0(*(v16 + 36));
  OUTLINED_FUNCTION_16_2();
  if (v17)
  {
    *v11 = 0;
    v11[1] = 0;
    v11[2] = 0xE000000000000000;
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    OUTLINED_FUNCTION_16_2();
    if (!v17)
    {
      sub_1B8D9207C(v0, &qword_1EBAB92E0, &qword_1B964DAC0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_6_1();
    OUTLINED_FUNCTION_461();
    sub_1B8D9ADF8();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_242();
}

void sub_1B8D9AFDC()
{
  OUTLINED_FUNCTION_243();
  OUTLINED_FUNCTION_67();
  if (v5)
  {
    OUTLINED_FUNCTION_277_0();
    sub_1B8D9207C(v4 + v3, &qword_1EBAB92E0, &qword_1B964DAC0);
    OUTLINED_FUNCTION_6_1();
    OUTLINED_FUNCTION_282_0();
    OUTLINED_FUNCTION_30_2();
    OUTLINED_FUNCTION_55_0();
    sub_1B8D9B104();
  }

  else
  {
    sub_1B8D9207C(v4 + v3, &qword_1EBAB92E0, &qword_1B964DAC0);
    OUTLINED_FUNCTION_6_1();
    OUTLINED_FUNCTION_283_0();
    OUTLINED_FUNCTION_30_2();
  }

  free(v2);
  free(v0);
  free(v1);
  OUTLINED_FUNCTION_242();

  free(v6);
}

uint64_t sub_1B8D9B0AC()
{
  OUTLINED_FUNCTION_468();
  v1(0);
  OUTLINED_FUNCTION_59_1();
  v2 = OUTLINED_FUNCTION_432();
  v3(v2);
  return v0;
}

uint64_t sub_1B8D9B104()
{
  v1 = OUTLINED_FUNCTION_313();
  v2(v1);
  OUTLINED_FUNCTION_59_1();
  (*(v3 + 8))(v0);
  return v0;
}

uint64_t sub_1B8D9B210()
{
  v0 = OUTLINED_FUNCTION_27();
  v1(v0);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1();
  v2 = OUTLINED_FUNCTION_18_1();

  return v3(v2);
}

uint64_t sub_1B8D9B298()
{
  v0 = OUTLINED_FUNCTION_313();
  v1(v0);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1();
  v2 = OUTLINED_FUNCTION_209();

  return v3(v2);
}

uint64_t Amppb_Asset.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Amppb_Asset(v0);
  return OUTLINED_FUNCTION_25();
}

uint64_t Amppb_Asset.init()@<X0>(void *a1@<X8>)
{
  OUTLINED_FUNCTION_228_0(a1);
  *(v1 + 16) = 0;
  *(v1 + 24) = v2;
  *(v1 + 32) = 0;
  type metadata accessor for Amppb_Asset(0);
  _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
  type metadata accessor for Amppb_Preview(0);
  OUTLINED_FUNCTION_83();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

uint64_t Amppb_SoftwareInfo.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Amppb_SoftwareInfo(v0);
  return OUTLINED_FUNCTION_25();
}

uint64_t sub_1B8D9B490()
{
  OUTLINED_FUNCTION_92_0();
  v0(0);
  return OUTLINED_FUNCTION_279();
}

uint64_t Amppb_Offer.assets.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t Amppb_Offer.variant.setter()
{
  OUTLINED_FUNCTION_16();

  *(v1 + 8) = v2;
  *(v1 + 16) = v0;
  return result;
}

uint64_t Amppb_Offer.type.setter()
{
  OUTLINED_FUNCTION_16();

  *(v1 + 24) = v2;
  *(v1 + 32) = v0;
  return result;
}

uint64_t sub_1B8D9B624()
{
  v0 = OUTLINED_FUNCTION_27();
  v1(v0);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1();
  v2 = OUTLINED_FUNCTION_18_1();

  return v3(v2);
}

uint64_t sub_1B8D9B6CC()
{
  v0 = OUTLINED_FUNCTION_313();
  v1(v0);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1();
  v2 = OUTLINED_FUNCTION_209();

  return v3(v2);
}

uint64_t Amppb_Offer.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Amppb_Offer(v0);
  return OUTLINED_FUNCTION_25();
}

uint64_t Amppb_Offer.init()@<X0>(void *a1@<X8>)
{
  *a1 = MEMORY[0x1E69E7CC0];
  a1[1] = 0;
  a1[2] = 0xE000000000000000;
  a1[3] = 0;
  a1[4] = 0xE000000000000000;
  type metadata accessor for Amppb_Offer(0);
  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

uint64_t Amppb_UserRating.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Amppb_UserRating(v0);
  return OUTLINED_FUNCTION_25();
}

uint64_t Amppb_UserRating.init()()
{
  v1 = OUTLINED_FUNCTION_27();
  type metadata accessor for Amppb_UserRating(v1);
  *v0 = 0u;
  v0[1] = 0u;
  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

uint64_t Amppb_RottenTomatoesReviews.unknownFields.getter()
{
  v0 = OUTLINED_FUNCTION_27();
  type metadata accessor for Amppb_RottenTomatoesReviews(v0);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1();
  v1 = OUTLINED_FUNCTION_18_1();

  return v2(v1);
}

uint64_t Amppb_RottenTomatoesReviews.unknownFields.setter()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Amppb_RottenTomatoesReviews(v0);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1();
  v1 = OUTLINED_FUNCTION_209();

  return v2(v1);
}

uint64_t Amppb_RottenTomatoesReviews.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Amppb_RottenTomatoesReviews(v0);
  return OUTLINED_FUNCTION_25();
}

uint64_t Amppb_RottenTomatoesReviews.init()@<X0>(void *a1@<X8>)
{
  *a1 = 0;
  type metadata accessor for Amppb_RottenTomatoesReviews(0);
  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

uint64_t Amppb_Child.name.setter()
{
  OUTLINED_FUNCTION_16();

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t Amppb_Child.parentName.setter()
{
  OUTLINED_FUNCTION_16();

  *(v1 + 32) = v2;
  *(v1 + 40) = v0;
  return result;
}

uint64_t Amppb_Child.offers.setter(uint64_t a1)
{

  *(v1 + 48) = a1;
  return result;
}

void Amppb_Child.kind.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 80);
  *a1 = *(v1 + 72);
  *(a1 + 8) = v2;
}

uint64_t Amppb_Child.kind.setter(uint64_t result)
{
  v2 = *(result + 8);
  *(v1 + 72) = *result;
  *(v1 + 80) = v2;
  return result;
}

uint64_t Amppb_Child.artwork.getter()
{
  v1 = OUTLINED_FUNCTION_206_0();
  OUTLINED_FUNCTION_183(v1);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v2);
  v3 = OUTLINED_FUNCTION_22_3();
  type metadata accessor for Amppb_Child(v3);
  OUTLINED_FUNCTION_100_0();
  type metadata accessor for Amppb_Artwork(0);
  v4 = OUTLINED_FUNCTION_9_2();
  if (v5)
  {
    OUTLINED_FUNCTION_176_0(v4);
    result = OUTLINED_FUNCTION_9_2();
    if (!v5)
    {
      return sub_1B8D9207C(v0, &qword_1EBAB9680, &unk_1B964EEA0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_2_2();
    OUTLINED_FUNCTION_182();
    return sub_1B8D9ADF8();
  }

  return result;
}

uint64_t Amppb_Child.artwork.setter()
{
  v1 = OUTLINED_FUNCTION_313();
  v2 = type metadata accessor for Amppb_Child(v1);
  sub_1B8D9207C(v0 + *(v2 + 52), &qword_1EBAB9680, &unk_1B964EEA0);
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_122_0();
  sub_1B8D9ADF8();
  type metadata accessor for Amppb_Artwork(0);
  v3 = OUTLINED_FUNCTION_59();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

void Amppb_Child.artwork.modify()
{
  OUTLINED_FUNCTION_243();
  v2 = OUTLINED_FUNCTION_212();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_86(v3);
  v4 = OUTLINED_FUNCTION_686();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_183(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_85(v8);
  *(v1 + 16) = type metadata accessor for Amppb_Artwork(v9);
  OUTLINED_FUNCTION_59_1();
  v11 = __swift_coroFrameAllocStub(*(v10 + 64));
  v12 = OUTLINED_FUNCTION_202_0(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  v14 = OUTLINED_FUNCTION_89_0(v13);
  v15 = type metadata accessor for Amppb_Child(v14);
  OUTLINED_FUNCTION_64_0(*(v15 + 52));
  OUTLINED_FUNCTION_16_2();
  if (v16)
  {
    OUTLINED_FUNCTION_215_0();
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    OUTLINED_FUNCTION_16_2();
    if (!v16)
    {
      sub_1B8D9207C(v0, &qword_1EBAB9680, &unk_1B964EEA0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_2_2();
    OUTLINED_FUNCTION_461();
    sub_1B8D9ADF8();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_242();
}

void sub_1B8D9BF28()
{
  OUTLINED_FUNCTION_243();
  OUTLINED_FUNCTION_67();
  if (v5)
  {
    OUTLINED_FUNCTION_277_0();
    sub_1B8D9207C(v4 + v3, &qword_1EBAB9680, &unk_1B964EEA0);
    OUTLINED_FUNCTION_2_2();
    OUTLINED_FUNCTION_282_0();
    OUTLINED_FUNCTION_30_2();
    OUTLINED_FUNCTION_11_2();
    sub_1B8D9B104();
  }

  else
  {
    sub_1B8D9207C(v4 + v3, &qword_1EBAB9680, &unk_1B964EEA0);
    OUTLINED_FUNCTION_2_2();
    OUTLINED_FUNCTION_283_0();
    OUTLINED_FUNCTION_30_2();
  }

  free(v2);
  free(v0);
  free(v1);
  OUTLINED_FUNCTION_242();

  free(v6);
}

uint64_t Amppb_Child.hasArtwork.getter()
{
  v1 = OUTLINED_FUNCTION_514();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_183(v3);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v4);
  v5 = OUTLINED_FUNCTION_22_3();
  type metadata accessor for Amppb_Child(v5);
  OUTLINED_FUNCTION_274_0();
  v6 = type metadata accessor for Amppb_Artwork(0);
  OUTLINED_FUNCTION_178(v0, 1, v6);
  if (v7)
  {
    v8 = 0;
  }

  else
  {
    v8 = 1;
  }

  v9 = OUTLINED_FUNCTION_182();
  sub_1B8D9207C(v9, v10, &unk_1B964EEA0);
  return v8;
}

Swift::Void __swiftcall Amppb_Child.clearArtwork()()
{
  v1 = type metadata accessor for Amppb_Child(0);
  sub_1B8D9207C(v0 + *(v1 + 52), &qword_1EBAB9680, &unk_1B964EEA0);
  OUTLINED_FUNCTION_197_0();
  OUTLINED_FUNCTION_83();

  __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
}

uint64_t Amppb_Child.releaseDate.setter()
{
  OUTLINED_FUNCTION_16();

  *(v1 + 88) = v2;
  *(v1 + 96) = v0;
  return result;
}

uint64_t Amppb_Child.unknownFields.getter()
{
  v0 = OUTLINED_FUNCTION_27();
  type metadata accessor for Amppb_Child(v0);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1();
  v1 = OUTLINED_FUNCTION_18_1();

  return v2(v1);
}

uint64_t Amppb_Child.unknownFields.setter()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Amppb_Child(v0);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1();
  v1 = OUTLINED_FUNCTION_209();

  return v2(v1);
}

uint64_t Amppb_Child.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Amppb_Child(v0);
  return OUTLINED_FUNCTION_25();
}

uint64_t Amppb_Child.init()@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_92_0();
  *(a1 + 32) = 0;
  *(a1 + 40) = v2;
  *(a1 + 48) = MEMORY[0x1E69E7CC0];
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  *(a1 + 80) = 1;
  *(a1 + 88) = 0;
  *(a1 + 96) = v2;
  type metadata accessor for Amppb_Child(0);
  _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
  OUTLINED_FUNCTION_197_0();
  OUTLINED_FUNCTION_83();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

uint64_t Amppb_Parent.description_p.getter()
{
  v1 = OUTLINED_FUNCTION_206_0();
  OUTLINED_FUNCTION_183(v1);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v2);
  v3 = OUTLINED_FUNCTION_22_3();
  type metadata accessor for Amppb_Parent(v3);
  OUTLINED_FUNCTION_100_0();
  OUTLINED_FUNCTION_281_0();
  OUTLINED_FUNCTION_9_2();
  if (v4)
  {
    OUTLINED_FUNCTION_92_0();
    OUTLINED_FUNCTION_251_0(v5);
    result = OUTLINED_FUNCTION_9_2();
    if (!v4)
    {
      return sub_1B8D9207C(v0, &qword_1EBAB9688, &qword_1B964EEB0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_1_3();
    OUTLINED_FUNCTION_182();
    return sub_1B8D9ADF8();
  }

  return result;
}

uint64_t Amppb_Parent.description_p.setter()
{
  v1 = OUTLINED_FUNCTION_313();
  v2 = type metadata accessor for Amppb_Parent(v1);
  sub_1B8D9207C(v0 + *(v2 + 28), &qword_1EBAB9688, &qword_1B964EEB0);
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_122_0();
  sub_1B8D9ADF8();
  type metadata accessor for Amppb_Description(0);
  v3 = OUTLINED_FUNCTION_59();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

void Amppb_Parent.description_p.modify()
{
  OUTLINED_FUNCTION_243();
  v2 = OUTLINED_FUNCTION_212();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_86(v3);
  v4 = OUTLINED_FUNCTION_686();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_183(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_85(v8);
  *(v1 + 16) = type metadata accessor for Amppb_Description(v9);
  OUTLINED_FUNCTION_59_1();
  v11 = __swift_coroFrameAllocStub(*(v10 + 64));
  v12 = OUTLINED_FUNCTION_202_0(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  v14 = OUTLINED_FUNCTION_89_0(v13);
  v15 = type metadata accessor for Amppb_Parent(v14);
  OUTLINED_FUNCTION_64_0(*(v15 + 28));
  OUTLINED_FUNCTION_16_2();
  if (v16)
  {
    OUTLINED_FUNCTION_114_0();
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    OUTLINED_FUNCTION_16_2();
    if (!v16)
    {
      sub_1B8D9207C(v0, &qword_1EBAB9688, &qword_1B964EEB0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_1_3();
    OUTLINED_FUNCTION_461();
    sub_1B8D9ADF8();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_242();
}

uint64_t sub_1B8D9C5C4()
{
  OUTLINED_FUNCTION_111_0();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_137();
  v1(0);
  OUTLINED_FUNCTION_225_0();
  sub_1B8D92024();
  v7 = v0(0);
  OUTLINED_FUNCTION_178(v2, 1, v7);
  if (v8)
  {
    v9 = 0;
  }

  else
  {
    v9 = 1;
  }

  OUTLINED_FUNCTION_12();
  sub_1B8D9207C(v10, v11, v12);
  return v9;
}

uint64_t sub_1B8D9C6B0()
{
  OUTLINED_FUNCTION_111_0();
  v5 = v4(0);
  sub_1B8D9207C(v1 + *(v5 + 28), v3, v2);
  v0(0);
  OUTLINED_FUNCTION_83();

  return __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
}

uint64_t Amppb_Parent.itunesNotes.getter()
{
  v1 = OUTLINED_FUNCTION_206_0();
  OUTLINED_FUNCTION_183(v1);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v2);
  v3 = OUTLINED_FUNCTION_22_3();
  type metadata accessor for Amppb_Parent(v3);
  OUTLINED_FUNCTION_100_0();
  OUTLINED_FUNCTION_281_0();
  OUTLINED_FUNCTION_9_2();
  if (v4)
  {
    OUTLINED_FUNCTION_92_0();
    OUTLINED_FUNCTION_251_0(v5);
    result = OUTLINED_FUNCTION_9_2();
    if (!v4)
    {
      return sub_1B8D9207C(v0, &qword_1EBAB9688, &qword_1B964EEB0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_1_3();
    OUTLINED_FUNCTION_182();
    return sub_1B8D9ADF8();
  }

  return result;
}

uint64_t Amppb_Parent.itunesNotes.setter()
{
  v1 = OUTLINED_FUNCTION_313();
  v2 = type metadata accessor for Amppb_Parent(v1);
  sub_1B8D9207C(v0 + *(v2 + 32), &qword_1EBAB9688, &qword_1B964EEB0);
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_122_0();
  sub_1B8D9ADF8();
  type metadata accessor for Amppb_Description(0);
  v3 = OUTLINED_FUNCTION_59();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

void Amppb_Parent.itunesNotes.modify()
{
  OUTLINED_FUNCTION_243();
  v2 = OUTLINED_FUNCTION_212();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_86(v3);
  v4 = OUTLINED_FUNCTION_686();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_183(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_85(v8);
  *(v1 + 16) = type metadata accessor for Amppb_Description(v9);
  OUTLINED_FUNCTION_59_1();
  v11 = __swift_coroFrameAllocStub(*(v10 + 64));
  v12 = OUTLINED_FUNCTION_202_0(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  v14 = OUTLINED_FUNCTION_89_0(v13);
  v15 = type metadata accessor for Amppb_Parent(v14);
  OUTLINED_FUNCTION_64_0(*(v15 + 32));
  OUTLINED_FUNCTION_16_2();
  if (v16)
  {
    OUTLINED_FUNCTION_114_0();
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    OUTLINED_FUNCTION_16_2();
    if (!v16)
    {
      sub_1B8D9207C(v0, &qword_1EBAB9688, &qword_1B964EEB0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_1_3();
    OUTLINED_FUNCTION_461();
    sub_1B8D9ADF8();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_242();
}

void sub_1B8D9C970()
{
  OUTLINED_FUNCTION_243();
  OUTLINED_FUNCTION_67();
  if (v5)
  {
    OUTLINED_FUNCTION_277_0();
    sub_1B8D9207C(v4 + v3, &qword_1EBAB9688, &qword_1B964EEB0);
    OUTLINED_FUNCTION_1_3();
    OUTLINED_FUNCTION_282_0();
    OUTLINED_FUNCTION_30_2();
    OUTLINED_FUNCTION_10_2();
    sub_1B8D9B104();
  }

  else
  {
    sub_1B8D9207C(v4 + v3, &qword_1EBAB9688, &qword_1B964EEB0);
    OUTLINED_FUNCTION_1_3();
    OUTLINED_FUNCTION_283_0();
    OUTLINED_FUNCTION_30_2();
  }

  free(v2);
  free(v0);
  free(v1);
  OUTLINED_FUNCTION_242();

  free(v6);
}

uint64_t Amppb_Parent.hasItunesNotes.getter()
{
  v1 = OUTLINED_FUNCTION_514();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_183(v3);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v4);
  v5 = OUTLINED_FUNCTION_22_3();
  type metadata accessor for Amppb_Parent(v5);
  OUTLINED_FUNCTION_274_0();
  v6 = type metadata accessor for Amppb_Description(0);
  OUTLINED_FUNCTION_178(v0, 1, v6);
  if (v7)
  {
    v8 = 0;
  }

  else
  {
    v8 = 1;
  }

  v9 = OUTLINED_FUNCTION_182();
  sub_1B8D9207C(v9, v10, &qword_1B964EEB0);
  return v8;
}

Swift::Void __swiftcall Amppb_Parent.clearItunesNotes()()
{
  v1 = type metadata accessor for Amppb_Parent(0);
  sub_1B8D9207C(v0 + *(v1 + 32), &qword_1EBAB9688, &qword_1B964EEB0);
  type metadata accessor for Amppb_Description(0);
  OUTLINED_FUNCTION_83();

  __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
}

uint64_t Amppb_Parent.userRating.getter()
{
  v1 = OUTLINED_FUNCTION_206_0();
  OUTLINED_FUNCTION_183(v1);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v2);
  v3 = OUTLINED_FUNCTION_22_3();
  type metadata accessor for Amppb_Parent(v3);
  OUTLINED_FUNCTION_100_0();
  type metadata accessor for Amppb_UserRating(0);
  v4 = OUTLINED_FUNCTION_9_2();
  if (v5)
  {
    OUTLINED_FUNCTION_275_0(v4);
    result = OUTLINED_FUNCTION_9_2();
    if (!v5)
    {
      return sub_1B8D9207C(v0, &qword_1EBAB9690, &qword_1B964EEB8);
    }
  }

  else
  {
    OUTLINED_FUNCTION_3_3();
    OUTLINED_FUNCTION_182();
    return sub_1B8D9ADF8();
  }

  return result;
}

uint64_t Amppb_Parent.userRating.setter()
{
  v1 = OUTLINED_FUNCTION_313();
  v2 = type metadata accessor for Amppb_Parent(v1);
  sub_1B8D9207C(v0 + *(v2 + 36), &qword_1EBAB9690, &qword_1B964EEB8);
  OUTLINED_FUNCTION_3_3();
  OUTLINED_FUNCTION_122_0();
  sub_1B8D9ADF8();
  type metadata accessor for Amppb_UserRating(0);
  v3 = OUTLINED_FUNCTION_59();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

void Amppb_Parent.userRating.modify()
{
  OUTLINED_FUNCTION_243();
  v2 = OUTLINED_FUNCTION_212();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_86(v3);
  v4 = OUTLINED_FUNCTION_686();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_183(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_85(v8);
  *(v1 + 16) = type metadata accessor for Amppb_UserRating(v9);
  OUTLINED_FUNCTION_59_1();
  v11 = *(v10 + 64);
  v12 = __swift_coroFrameAllocStub(v11);
  v13 = OUTLINED_FUNCTION_202_0(v12);
  v14 = __swift_coroFrameAllocStub(v13);
  v15 = OUTLINED_FUNCTION_89_0(v14);
  v16 = type metadata accessor for Amppb_Parent(v15);
  OUTLINED_FUNCTION_64_0(*(v16 + 36));
  OUTLINED_FUNCTION_16_2();
  if (v17)
  {
    *v11 = 0u;
    v11[1] = 0u;
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    OUTLINED_FUNCTION_16_2();
    if (!v17)
    {
      sub_1B8D9207C(v0, &qword_1EBAB9690, &qword_1B964EEB8);
    }
  }

  else
  {
    OUTLINED_FUNCTION_3_3();
    OUTLINED_FUNCTION_461();
    sub_1B8D9ADF8();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_242();
}

void sub_1B8D9CD90()
{
  OUTLINED_FUNCTION_243();
  OUTLINED_FUNCTION_67();
  if (v5)
  {
    OUTLINED_FUNCTION_277_0();
    sub_1B8D9207C(v4 + v3, &qword_1EBAB9690, &qword_1B964EEB8);
    OUTLINED_FUNCTION_3_3();
    OUTLINED_FUNCTION_282_0();
    OUTLINED_FUNCTION_30_2();
    OUTLINED_FUNCTION_51_1();
    sub_1B8D9B104();
  }

  else
  {
    sub_1B8D9207C(v4 + v3, &qword_1EBAB9690, &qword_1B964EEB8);
    OUTLINED_FUNCTION_3_3();
    OUTLINED_FUNCTION_283_0();
    OUTLINED_FUNCTION_30_2();
  }

  free(v2);
  free(v0);
  free(v1);
  OUTLINED_FUNCTION_242();

  free(v6);
}

uint64_t sub_1B8D9CE9C()
{
  OUTLINED_FUNCTION_111_0();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_137();
  v1(0);
  OUTLINED_FUNCTION_225_0();
  sub_1B8D92024();
  v7 = v0(0);
  OUTLINED_FUNCTION_178(v2, 1, v7);
  if (v8)
  {
    v9 = 0;
  }

  else
  {
    v9 = 1;
  }

  OUTLINED_FUNCTION_12();
  sub_1B8D9207C(v10, v11, v12);
  return v9;
}

uint64_t sub_1B8D9CF88()
{
  OUTLINED_FUNCTION_111_0();
  v5 = v4(0);
  sub_1B8D9207C(v1 + *(v5 + 36), v3, v2);
  v0(0);
  OUTLINED_FUNCTION_83();

  return __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
}

uint64_t Amppb_Parent.children.setter(uint64_t a1)
{

  *(v1 + 16) = a1;
  return result;
}

uint64_t Amppb_Parent.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Amppb_Parent(v0);
  return OUTLINED_FUNCTION_25();
}

uint64_t Amppb_Parent.init()@<X0>(void *a1@<X8>)
{
  OUTLINED_FUNCTION_118_0(a1);
  type metadata accessor for Amppb_Child(0);
  *(v1 + 16) = sub_1B964C7B0();
  type metadata accessor for Amppb_Parent(0);
  OUTLINED_FUNCTION_279();
  OUTLINED_FUNCTION_281_0();
  OUTLINED_FUNCTION_83();
  __swift_storeEnumTagSinglePayload(v3, v4, v5, v2);
  OUTLINED_FUNCTION_83();
  __swift_storeEnumTagSinglePayload(v6, v7, v8, v2);
  OUTLINED_FUNCTION_235_0();
  OUTLINED_FUNCTION_83();

  return __swift_storeEnumTagSinglePayload(v9, v10, v11, v12);
}

uint64_t Amppb_Content.name.getter()
{
  OUTLINED_FUNCTION_27_2();
  OUTLINED_FUNCTION_521(v0 + 16, v2);

  return OUTLINED_FUNCTION_432();
}

uint64_t Amppb_Content.name.setter()
{
  OUTLINED_FUNCTION_16();
  v4 = OUTLINED_FUNCTION_69_0();
  v5 = *(v1 + v3);
  if ((v4 & 1) == 0)
  {
    OUTLINED_FUNCTION_63_1();
    v6 = OUTLINED_FUNCTION_40_0();
    v7 = sub_1B8DA90EC(v6);
    OUTLINED_FUNCTION_135(v7);
  }

  OUTLINED_FUNCTION_18(v5 + 16, v9);
  *(v5 + 16) = v2;
  *(v5 + 24) = v0;
}

uint64_t Amppb_Content.name.modify()
{
  v2 = OUTLINED_FUNCTION_126();
  v3 = __swift_coroFrameAllocStub(v2);
  *(OUTLINED_FUNCTION_99(v3) + 64) = v0;
  OUTLINED_FUNCTION_38_0();
  *(v1 + 72) = v4;
  v5 = *(v0 + v4);
  OUTLINED_FUNCTION_521(v5 + 16, v1);
  v6 = *(v5 + 24);
  *(v1 + 48) = *(v5 + 16);
  *(v1 + 56) = v6;

  return OUTLINED_FUNCTION_514();
}

void sub_1B8D9D31C()
{
  OUTLINED_FUNCTION_238();
  v2 = *(v1 + 48);
  v3 = *(v0 + 56);
  if (v4)
  {

    OUTLINED_FUNCTION_461();
    Amppb_Content.name.setter();
  }

  else
  {
    v5 = *(v0 + 72);
    v6 = *(v0 + 64);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v8 = *(v6 + v5);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v9 = *(v0 + 72);
      v10 = *(v0 + 64);
      OUTLINED_FUNCTION_63_1();
      v11 = OUTLINED_FUNCTION_40_0();
      v8 = sub_1B8DA90EC(v11);
      *(v10 + v9) = v8;
    }

    OUTLINED_FUNCTION_18(v8 + 16, v0 + 24);
    *(v8 + 16) = v2;
    *(v8 + 24) = v3;
  }

  free(v0);
}

uint64_t Amppb_Content.artwork.getter()
{
  v1 = OUTLINED_FUNCTION_206_0();
  OUTLINED_FUNCTION_183(v1);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v2);
  v3 = OUTLINED_FUNCTION_22_3();
  OUTLINED_FUNCTION_57_1(v3);
  OUTLINED_FUNCTION_101_0();
  OUTLINED_FUNCTION_106_0();
  type metadata accessor for Amppb_Artwork(0);
  v4 = OUTLINED_FUNCTION_9_2();
  if (v5)
  {
    OUTLINED_FUNCTION_176_0(v4);
    result = OUTLINED_FUNCTION_9_2();
    if (!v5)
    {
      return sub_1B8D9207C(v0, &qword_1EBAB9680, &unk_1B964EEA0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_2_2();
    OUTLINED_FUNCTION_182();
    return sub_1B8D9ADF8();
  }

  return result;
}

uint64_t Amppb_Content.artwork.setter()
{
  OUTLINED_FUNCTION_183_0();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9680, &unk_1B964EEA0);
  OUTLINED_FUNCTION_183(v0);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v1);
  v2 = OUTLINED_FUNCTION_31_2();
  if ((OUTLINED_FUNCTION_127_0(v2) & 1) == 0)
  {
    OUTLINED_FUNCTION_63_1();
    v3 = OUTLINED_FUNCTION_40_0();
    v4 = sub_1B8DA90EC(v3);
    OUTLINED_FUNCTION_135(v4);
  }

  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_294();
  sub_1B8D9ADF8();
  OUTLINED_FUNCTION_197_0();
  v5 = OUTLINED_FUNCTION_53_0();
  __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
  OUTLINED_FUNCTION_73_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  return swift_endAccess();
}

void Amppb_Content.artwork.modify()
{
  OUTLINED_FUNCTION_284();
  v2 = OUTLINED_FUNCTION_185_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_66_0(v3);
  v4 = OUTLINED_FUNCTION_491();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_183(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_71(v8);
  type metadata accessor for Amppb_Artwork(v9);
  OUTLINED_FUNCTION_59_1();
  v11 = __swift_coroFrameAllocStub(*(v10 + 64));
  v12 = OUTLINED_FUNCTION_187(v11);
  *(v1 + 48) = __swift_coroFrameAllocStub(v12);
  OUTLINED_FUNCTION_27_2();
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_82();
  OUTLINED_FUNCTION_17_2();
  if (v13)
  {
    OUTLINED_FUNCTION_215_0();
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    OUTLINED_FUNCTION_17_2();
    if (!v13)
    {
      sub_1B8D9207C(v0, &qword_1EBAB9680, &unk_1B964EEA0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_2_2();
    OUTLINED_FUNCTION_246();
    sub_1B8D9ADF8();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_283();
}

uint64_t Amppb_Content.genreNames.modify()
{
  v0 = OUTLINED_FUNCTION_194_0();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_23_1(v1);
  OUTLINED_FUNCTION_68_0();
  OUTLINED_FUNCTION_195_0();

  return OUTLINED_FUNCTION_514();
}

uint64_t sub_1B8D9D80C(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return Amppb_Content.url.setter(v1, v2);
}

uint64_t Amppb_Content.url.modify()
{
  v0 = OUTLINED_FUNCTION_126();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_7_2(v1);
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_130_0();

  return OUTLINED_FUNCTION_514();
}

uint64_t sub_1B8D9D8E8(uint64_t *a1)
{
  OUTLINED_FUNCTION_27_2();
  OUTLINED_FUNCTION_521(v1 + *a1, v4);
}

uint64_t sub_1B8D9D964(uint64_t a1, uint64_t a2)
{
  v6 = OUTLINED_FUNCTION_69_0();
  v7 = *(v2 + v3);
  if ((v6 & 1) == 0)
  {
    OUTLINED_FUNCTION_63_1();
    v8 = OUTLINED_FUNCTION_40_0();
    v9 = sub_1B8DA90EC(v8);
    OUTLINED_FUNCTION_135(v9);
  }

  v10 = OUTLINED_FUNCTION_271_0();
  OUTLINED_FUNCTION_18(v10, v12);
  *(v7 + a2) = a1;
}

uint64_t Amppb_Content.contentRatingsBySystem.modify()
{
  v0 = OUTLINED_FUNCTION_194_0();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_23_1(v1);
  OUTLINED_FUNCTION_68_0();
  OUTLINED_FUNCTION_195_0();

  return OUTLINED_FUNCTION_514();
}

uint64_t sub_1B8D9DA68(void *a1)
{
  OUTLINED_FUNCTION_38_0();
  OUTLINED_FUNCTION_521(*(v1 + v3) + *a1, v5);

  return OUTLINED_FUNCTION_288();
}

uint64_t sub_1B8D9DABC(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return Amppb_Content.bornOrFormed.setter(v1, v2);
}

uint64_t sub_1B8D9DB08(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = v4;
  v8 = OUTLINED_FUNCTION_112();
  v9 = *(type metadata accessor for Amppb_Content(v8) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v4 + v9);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    OUTLINED_FUNCTION_63_1();
    v12 = OUTLINED_FUNCTION_40_0();
    isUniquelyReferenced_nonNull_native = sub_1B8DA90EC(v12);
    v11 = isUniquelyReferenced_nonNull_native;
    *(v7 + v9) = isUniquelyReferenced_nonNull_native;
  }

  v13 = (v11 + *a3);
  OUTLINED_FUNCTION_211_0(isUniquelyReferenced_nonNull_native, v15);
  *v13 = v5;
  v13[1] = v3;
}

uint64_t Amppb_Content.bornOrFormed.modify()
{
  v0 = OUTLINED_FUNCTION_126();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_7_2(v1);
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_130_0();

  return OUTLINED_FUNCTION_514();
}

uint64_t sub_1B8D9DC20(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return Amppb_Content.origin.setter(v1, v2);
}

uint64_t Amppb_Content.origin.modify()
{
  v0 = OUTLINED_FUNCTION_126();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_7_2(v1);
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_130_0();

  return OUTLINED_FUNCTION_514();
}

uint64_t Amppb_Content.offers.modify()
{
  v0 = OUTLINED_FUNCTION_194_0();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_23_1(v1);
  OUTLINED_FUNCTION_68_0();
  OUTLINED_FUNCTION_195_0();

  return OUTLINED_FUNCTION_514();
}

uint64_t Amppb_Content.softwareInfo.getter()
{
  v1 = OUTLINED_FUNCTION_206_0();
  OUTLINED_FUNCTION_183(v1);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v2);
  v3 = OUTLINED_FUNCTION_22_3();
  OUTLINED_FUNCTION_57_1(v3);
  OUTLINED_FUNCTION_101_0();
  OUTLINED_FUNCTION_106_0();
  type metadata accessor for Amppb_SoftwareInfo(0);
  OUTLINED_FUNCTION_9_2();
  if (v4)
  {
    OUTLINED_FUNCTION_92_0();
    OUTLINED_FUNCTION_251_0(v5);
    result = OUTLINED_FUNCTION_9_2();
    if (!v4)
    {
      return sub_1B8D9207C(v0, &qword_1EBAB9698, &qword_1B964EEC0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_52_0();
    OUTLINED_FUNCTION_182();
    return sub_1B8D9ADF8();
  }

  return result;
}

uint64_t Amppb_Content.softwareInfo.setter()
{
  OUTLINED_FUNCTION_183_0();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9698, &qword_1B964EEC0);
  OUTLINED_FUNCTION_183(v0);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v1);
  v2 = OUTLINED_FUNCTION_31_2();
  if ((OUTLINED_FUNCTION_127_0(v2) & 1) == 0)
  {
    OUTLINED_FUNCTION_63_1();
    v3 = OUTLINED_FUNCTION_40_0();
    v4 = sub_1B8DA90EC(v3);
    OUTLINED_FUNCTION_135(v4);
  }

  OUTLINED_FUNCTION_52_0();
  OUTLINED_FUNCTION_294();
  sub_1B8D9ADF8();
  type metadata accessor for Amppb_SoftwareInfo(0);
  v5 = OUTLINED_FUNCTION_53_0();
  __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
  OUTLINED_FUNCTION_73_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  return swift_endAccess();
}

void Amppb_Content.softwareInfo.modify()
{
  OUTLINED_FUNCTION_284();
  v2 = OUTLINED_FUNCTION_185_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_66_0(v3);
  v4 = OUTLINED_FUNCTION_491();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_183(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_71(v8);
  type metadata accessor for Amppb_SoftwareInfo(v9);
  OUTLINED_FUNCTION_59_1();
  v11 = __swift_coroFrameAllocStub(*(v10 + 64));
  v12 = OUTLINED_FUNCTION_187(v11);
  *(v1 + 48) = __swift_coroFrameAllocStub(v12);
  OUTLINED_FUNCTION_27_2();
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_82();
  OUTLINED_FUNCTION_17_2();
  if (v13)
  {
    OUTLINED_FUNCTION_114_0();
    OUTLINED_FUNCTION_280_0(v14);
    OUTLINED_FUNCTION_17_2();
    if (!v13)
    {
      sub_1B8D9207C(v0, &qword_1EBAB9698, &qword_1B964EEC0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_52_0();
    OUTLINED_FUNCTION_246();
    sub_1B8D9ADF8();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_283();
}

void sub_1B8D9E0C0()
{
  OUTLINED_FUNCTION_243();
  v2 = v1;
  v3 = *(*v0 + 40);
  v4 = *(*v0 + 48);
  v5 = *(*v0 + 32);
  if (v6)
  {
    OUTLINED_FUNCTION_186();
    sub_1B8D9B0AC();
    v2(v3);
    sub_1B8D9B104();
  }

  else
  {
    v1(*(*v0 + 48));
  }

  free(v4);
  free(v3);
  free(v5);
  OUTLINED_FUNCTION_242();

  free(v7);
}

uint64_t sub_1B8D9E194(uint64_t a1, uint64_t a2, void *a3, void (*a4)(void))
{
  OUTLINED_FUNCTION_16();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(v9, v10);
  OUTLINED_FUNCTION_183(v11);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_137();
  OUTLINED_FUNCTION_27_2();
  OUTLINED_FUNCTION_521(v5 + *a3, v19);
  sub_1B8D92024();
  v13 = (a4)(0);
  OUTLINED_FUNCTION_178(v6, 1, v13);
  if (v14)
  {
    v15 = 0;
  }

  else
  {
    v15 = 1;
  }

  v16 = OUTLINED_FUNCTION_196();
  sub_1B8D9207C(v16, v17, v4);
  return v15;
}

void sub_1B8D9E288()
{
  OUTLINED_FUNCTION_243();
  v2 = v1;
  OUTLINED_FUNCTION_16();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_208();
  v7 = *(type metadata accessor for Amppb_Content(0) + 20);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    OUTLINED_FUNCTION_63_1();
    v8 = OUTLINED_FUNCTION_40_0();
    *(v0 + v7) = sub_1B8DA90EC(v8);
  }

  v2(0);
  OUTLINED_FUNCTION_257_0();
  OUTLINED_FUNCTION_83();
  __swift_storeEnumTagSinglePayload(v9, v10, v11, v12);
  OUTLINED_FUNCTION_131();
  swift_beginAccess();
  sub_1B8DAA170();
  swift_endAccess();
  OUTLINED_FUNCTION_242();
}

uint64_t sub_1B8D9E380(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return Amppb_Content.collectionID.setter(v1, v2);
}

uint64_t Amppb_Content.collectionID.modify()
{
  v0 = OUTLINED_FUNCTION_126();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_7_2(v1);
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_130_0();

  return OUTLINED_FUNCTION_514();
}

uint64_t sub_1B8D9E45C(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return Amppb_Content.collectionName.setter(v1, v2);
}

uint64_t Amppb_Content.collectionName.modify()
{
  v0 = OUTLINED_FUNCTION_126();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_7_2(v1);
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_130_0();

  return OUTLINED_FUNCTION_514();
}

uint64_t sub_1B8D9E538()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9688, &qword_1B964EEB0);
  OUTLINED_FUNCTION_183(v1);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v2);
  v3 = OUTLINED_FUNCTION_22_3();
  OUTLINED_FUNCTION_57_1(v3);
  v4 = OUTLINED_FUNCTION_271_0();
  OUTLINED_FUNCTION_521(v4, v8);
  sub_1B8D92024();
  OUTLINED_FUNCTION_281_0();
  OUTLINED_FUNCTION_9_2();
  if (v5)
  {
    OUTLINED_FUNCTION_92_0();
    OUTLINED_FUNCTION_251_0(v6);
    result = OUTLINED_FUNCTION_9_2();
    if (!v5)
    {
      return sub_1B8D9207C(v0, &qword_1EBAB9688, &qword_1B964EEB0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_182();
    return sub_1B8D9ADF8();
  }

  return result;
}

uint64_t Amppb_Content.description_p.setter()
{
  OUTLINED_FUNCTION_183_0();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9688, &qword_1B964EEB0);
  OUTLINED_FUNCTION_183(v0);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v1);
  v2 = OUTLINED_FUNCTION_31_2();
  if ((OUTLINED_FUNCTION_127_0(v2) & 1) == 0)
  {
    OUTLINED_FUNCTION_63_1();
    v3 = OUTLINED_FUNCTION_40_0();
    v4 = sub_1B8DA90EC(v3);
    OUTLINED_FUNCTION_135(v4);
  }

  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_294();
  sub_1B8D9ADF8();
  type metadata accessor for Amppb_Description(0);
  v5 = OUTLINED_FUNCTION_53_0();
  __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
  OUTLINED_FUNCTION_73_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  return swift_endAccess();
}

void Amppb_Content.description_p.modify()
{
  OUTLINED_FUNCTION_284();
  v2 = OUTLINED_FUNCTION_185_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_66_0(v3);
  v4 = OUTLINED_FUNCTION_491();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_183(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_71(v8);
  type metadata accessor for Amppb_Description(v9);
  OUTLINED_FUNCTION_59_1();
  v11 = __swift_coroFrameAllocStub(*(v10 + 64));
  v12 = OUTLINED_FUNCTION_187(v11);
  *(v1 + 48) = __swift_coroFrameAllocStub(v12);
  OUTLINED_FUNCTION_27_2();
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_82();
  OUTLINED_FUNCTION_17_2();
  if (v13)
  {
    OUTLINED_FUNCTION_114_0();
    OUTLINED_FUNCTION_280_0(v14);
    OUTLINED_FUNCTION_17_2();
    if (!v13)
    {
      sub_1B8D9207C(v0, &qword_1EBAB9688, &qword_1B964EEB0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_1_3();
    OUTLINED_FUNCTION_246();
    sub_1B8D9ADF8();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_283();
}

uint64_t Amppb_Content.itunesNotes.setter()
{
  OUTLINED_FUNCTION_183_0();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9688, &qword_1B964EEB0);
  OUTLINED_FUNCTION_183(v0);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v1);
  v2 = OUTLINED_FUNCTION_31_2();
  if ((OUTLINED_FUNCTION_127_0(v2) & 1) == 0)
  {
    OUTLINED_FUNCTION_63_1();
    v3 = OUTLINED_FUNCTION_40_0();
    v4 = sub_1B8DA90EC(v3);
    OUTLINED_FUNCTION_135(v4);
  }

  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_294();
  sub_1B8D9ADF8();
  type metadata accessor for Amppb_Description(0);
  v5 = OUTLINED_FUNCTION_53_0();
  __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
  OUTLINED_FUNCTION_73_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  return swift_endAccess();
}

void Amppb_Content.itunesNotes.modify()
{
  OUTLINED_FUNCTION_284();
  v2 = OUTLINED_FUNCTION_185_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_66_0(v3);
  v4 = OUTLINED_FUNCTION_491();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_183(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_71(v8);
  type metadata accessor for Amppb_Description(v9);
  OUTLINED_FUNCTION_59_1();
  v11 = __swift_coroFrameAllocStub(*(v10 + 64));
  v12 = OUTLINED_FUNCTION_187(v11);
  *(v1 + 48) = __swift_coroFrameAllocStub(v12);
  OUTLINED_FUNCTION_27_2();
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_82();
  OUTLINED_FUNCTION_17_2();
  if (v13)
  {
    OUTLINED_FUNCTION_114_0();
    OUTLINED_FUNCTION_280_0(v14);
    OUTLINED_FUNCTION_17_2();
    if (!v13)
    {
      sub_1B8D9207C(v0, &qword_1EBAB9688, &qword_1B964EEB0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_1_3();
    OUTLINED_FUNCTION_246();
    sub_1B8D9ADF8();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_283();
}

uint64_t Amppb_Content.deviceFamilies.modify()
{
  v0 = OUTLINED_FUNCTION_194_0();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_23_1(v1);
  OUTLINED_FUNCTION_68_0();
  OUTLINED_FUNCTION_195_0();

  return OUTLINED_FUNCTION_514();
}

uint64_t sub_1B8D9EC30(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return Amppb_Content.bundleID.setter(v1, v2);
}

uint64_t Amppb_Content.bundleID.modify()
{
  v0 = OUTLINED_FUNCTION_126();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_7_2(v1);
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_130_0();

  return OUTLINED_FUNCTION_514();
}

uint64_t sub_1B8D9ED0C(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return Amppb_Content.bundleDisplayName.setter(v1, v2);
}

uint64_t Amppb_Content.bundleDisplayName.modify()
{
  v0 = OUTLINED_FUNCTION_126();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_7_2(v1);
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_130_0();

  return OUTLINED_FUNCTION_514();
}

uint64_t sub_1B8D9EDE8(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return Amppb_Content.copyright.setter(v1, v2);
}

uint64_t Amppb_Content.copyright.modify()
{
  v0 = OUTLINED_FUNCTION_126();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_7_2(v1);
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_130_0();

  return OUTLINED_FUNCTION_514();
}

uint64_t Amppb_Content.kind.getter@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_38_0();
  v4 = *(v1 + v3) + OBJC_IVAR____TtCV10PegasusAPI13Amppb_ContentP33_DBCA56248B3174DB33A494A6214DCF2913_StorageClass__kind;
  result = OUTLINED_FUNCTION_521(v4, v7);
  v6 = *(v4 + 8);
  *a1 = *v4;
  *(a1 + 8) = v6;
  return result;
}

uint64_t sub_1B8D9EF10@<X0>(uint64_t a1@<X8>)
{
  result = Amppb_Content.kind.getter(&v4);
  v3 = v5;
  *a1 = v4;
  *(a1 + 8) = v3;
  return result;
}

uint64_t sub_1B8D9EF54(uint64_t *a1)
{
  v1 = *(a1 + 8);
  v3 = *a1;
  v4 = v1;
  return Amppb_Content.kind.setter(&v3);
}

uint64_t Amppb_Content.kind.setter(uint64_t *a1)
{
  v3 = v1;
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = OUTLINED_FUNCTION_69_0();
  v7 = *(v1 + v2);
  if ((v6 & 1) == 0)
  {
    OUTLINED_FUNCTION_63_1();
    v8 = OUTLINED_FUNCTION_40_0();
    v7 = sub_1B8DA90EC(v8);
    *(v3 + v2) = v7;
  }

  v9 = v7 + OBJC_IVAR____TtCV10PegasusAPI13Amppb_ContentP33_DBCA56248B3174DB33A494A6214DCF2913_StorageClass__kind;
  result = OUTLINED_FUNCTION_18(v7 + OBJC_IVAR____TtCV10PegasusAPI13Amppb_ContentP33_DBCA56248B3174DB33A494A6214DCF2913_StorageClass__kind, v11);
  *v9 = v4;
  *(v9 + 8) = v5;
  return result;
}

uint64_t Amppb_Content.kind.modify()
{
  v2 = __swift_coroFrameAllocStub(0x60uLL);
  *(OUTLINED_FUNCTION_99(v2) + 88) = v0;
  OUTLINED_FUNCTION_38_0();
  *(v1 + 84) = v3;
  OUTLINED_FUNCTION_41();
  v4 = *(v0 + 8);
  *(v1 + 72) = *v0;
  *(v1 + 80) = v4;
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B8D9F090()
{
  OUTLINED_FUNCTION_243();
  v2 = v1;
  OUTLINED_FUNCTION_238();
  v4 = *(v3 + 72);
  v5 = *(v0 + 84);
  v6 = *(v0 + 88);
  v7 = *(v0 + 80);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v6 + v5);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = *(v0 + 84);
    v11 = *(v0 + 88);
    OUTLINED_FUNCTION_63_1();
    v12 = OUTLINED_FUNCTION_40_0();
    isUniquelyReferenced_nonNull_native = sub_1B8DA90EC(v12);
    v9 = isUniquelyReferenced_nonNull_native;
    *(v11 + v10) = isUniquelyReferenced_nonNull_native;
  }

  v13 = 48;
  if (v2)
  {
    v13 = 24;
  }

  v14 = v9 + OBJC_IVAR____TtCV10PegasusAPI13Amppb_ContentP33_DBCA56248B3174DB33A494A6214DCF2913_StorageClass__kind;
  OUTLINED_FUNCTION_211_0(isUniquelyReferenced_nonNull_native, v0 + v13);
  *v14 = v4;
  *(v14 + 8) = v7;
  OUTLINED_FUNCTION_242();

  free(v15);
}

uint64_t sub_1B8D9F14C(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return Amppb_Content.id.setter(v1, v2);
}

uint64_t Amppb_Content.id.modify()
{
  v0 = OUTLINED_FUNCTION_126();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_7_2(v1);
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_130_0();

  return OUTLINED_FUNCTION_514();
}

uint64_t sub_1B8D9F228(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return Amppb_Content.nameRaw.setter(v1, v2);
}

uint64_t Amppb_Content.nameRaw.modify()
{
  v0 = OUTLINED_FUNCTION_126();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_7_2(v1);
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_130_0();

  return OUTLINED_FUNCTION_514();
}

uint64_t Amppb_Content.userRating.getter()
{
  v1 = OUTLINED_FUNCTION_206_0();
  OUTLINED_FUNCTION_183(v1);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v2);
  v3 = OUTLINED_FUNCTION_22_3();
  OUTLINED_FUNCTION_57_1(v3);
  OUTLINED_FUNCTION_101_0();
  OUTLINED_FUNCTION_106_0();
  type metadata accessor for Amppb_UserRating(0);
  v4 = OUTLINED_FUNCTION_9_2();
  if (v5)
  {
    OUTLINED_FUNCTION_275_0(v4);
    result = OUTLINED_FUNCTION_9_2();
    if (!v5)
    {
      return sub_1B8D9207C(v0, &qword_1EBAB9690, &qword_1B964EEB8);
    }
  }

  else
  {
    OUTLINED_FUNCTION_3_3();
    OUTLINED_FUNCTION_182();
    return sub_1B8D9ADF8();
  }

  return result;
}

uint64_t Amppb_Content.userRating.setter()
{
  OUTLINED_FUNCTION_183_0();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9690, &qword_1B964EEB8);
  OUTLINED_FUNCTION_183(v0);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v1);
  v2 = OUTLINED_FUNCTION_31_2();
  if ((OUTLINED_FUNCTION_127_0(v2) & 1) == 0)
  {
    OUTLINED_FUNCTION_63_1();
    v3 = OUTLINED_FUNCTION_40_0();
    v4 = sub_1B8DA90EC(v3);
    OUTLINED_FUNCTION_135(v4);
  }

  OUTLINED_FUNCTION_3_3();
  OUTLINED_FUNCTION_294();
  sub_1B8D9ADF8();
  OUTLINED_FUNCTION_235_0();
  v5 = OUTLINED_FUNCTION_53_0();
  __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
  OUTLINED_FUNCTION_73_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  return swift_endAccess();
}

void Amppb_Content.userRating.modify()
{
  OUTLINED_FUNCTION_284();
  v2 = OUTLINED_FUNCTION_185_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_66_0(v3);
  v4 = OUTLINED_FUNCTION_491();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_183(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_71(v8);
  type metadata accessor for Amppb_UserRating(v9);
  OUTLINED_FUNCTION_59_1();
  v11 = __swift_coroFrameAllocStub(*(v10 + 64));
  v12 = OUTLINED_FUNCTION_187(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  *(v1 + 48) = v13;
  OUTLINED_FUNCTION_27_2();
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_82();
  OUTLINED_FUNCTION_17_2();
  if (v14)
  {
    *v13 = 0u;
    v13[1] = 0u;
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    OUTLINED_FUNCTION_17_2();
    if (!v14)
    {
      sub_1B8D9207C(v0, &qword_1EBAB9690, &qword_1B964EEB8);
    }
  }

  else
  {
    OUTLINED_FUNCTION_3_3();
    OUTLINED_FUNCTION_246();
    sub_1B8D9ADF8();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_283();
}

uint64_t Amppb_Content.rottenTomatoesReviews.getter@<X0>(void *a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_206_0();
  OUTLINED_FUNCTION_183(v3);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v4);
  v5 = OUTLINED_FUNCTION_22_3();
  OUTLINED_FUNCTION_57_1(v5);
  OUTLINED_FUNCTION_101_0();
  OUTLINED_FUNCTION_106_0();
  type metadata accessor for Amppb_RottenTomatoesReviews(0);
  OUTLINED_FUNCTION_9_2();
  if (v6)
  {
    *a1 = 0;
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    result = OUTLINED_FUNCTION_9_2();
    if (!v6)
    {
      return sub_1B8D9207C(v1, &qword_1EBAB96A0, &qword_1B964EEC8);
    }
  }

  else
  {
    OUTLINED_FUNCTION_50_0();
    OUTLINED_FUNCTION_182();
    return sub_1B8D9ADF8();
  }

  return result;
}

uint64_t Amppb_Content.rottenTomatoesReviews.setter()
{
  OUTLINED_FUNCTION_183_0();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB96A0, &qword_1B964EEC8);
  OUTLINED_FUNCTION_183(v0);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v1);
  v2 = OUTLINED_FUNCTION_31_2();
  if ((OUTLINED_FUNCTION_127_0(v2) & 1) == 0)
  {
    OUTLINED_FUNCTION_63_1();
    v3 = OUTLINED_FUNCTION_40_0();
    v4 = sub_1B8DA90EC(v3);
    OUTLINED_FUNCTION_135(v4);
  }

  OUTLINED_FUNCTION_50_0();
  OUTLINED_FUNCTION_294();
  sub_1B8D9ADF8();
  type metadata accessor for Amppb_RottenTomatoesReviews(0);
  v5 = OUTLINED_FUNCTION_53_0();
  __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
  OUTLINED_FUNCTION_73_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  return swift_endAccess();
}

void Amppb_Content.rottenTomatoesReviews.modify()
{
  OUTLINED_FUNCTION_284();
  v1 = OUTLINED_FUNCTION_185_0();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_66_0(v2);
  v3 = OUTLINED_FUNCTION_491();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  *(v0 + 32) = v7;
  type metadata accessor for Amppb_RottenTomatoesReviews(0);
  OUTLINED_FUNCTION_59_1();
  v9 = __swift_coroFrameAllocStub(*(v8 + 64));
  v10 = OUTLINED_FUNCTION_187(v9);
  v11 = __swift_coroFrameAllocStub(v10);
  *(v0 + 48) = v11;
  OUTLINED_FUNCTION_27_2();
  OUTLINED_FUNCTION_74();
  sub_1B8D92024();
  OUTLINED_FUNCTION_16_2();
  if (v12)
  {
    *v11 = 0;
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    OUTLINED_FUNCTION_16_2();
    if (!v12)
    {
      sub_1B8D9207C(v7, &qword_1EBAB96A0, &qword_1B964EEC8);
    }
  }

  else
  {
    OUTLINED_FUNCTION_50_0();
    OUTLINED_FUNCTION_461();
    sub_1B8D9ADF8();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_283();
}

uint64_t Amppb_Content.eBookInfo.getter@<X0>(void *a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_206_0();
  OUTLINED_FUNCTION_183(v3);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v4);
  v5 = OUTLINED_FUNCTION_22_3();
  OUTLINED_FUNCTION_57_1(v5);
  OUTLINED_FUNCTION_101_0();
  OUTLINED_FUNCTION_106_0();
  type metadata accessor for Amppb_EbookInfo(0);
  OUTLINED_FUNCTION_9_2();
  if (v6)
  {
    *a1 = 0;
    a1[1] = 0xE000000000000000;
    a1[2] = 0;
    a1[3] = 0;
    a1[4] = 0xE000000000000000;
    a1[5] = 0;
    a1[6] = 0xE000000000000000;
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    result = OUTLINED_FUNCTION_9_2();
    if (!v6)
    {
      return sub_1B8D9207C(v1, &qword_1EBAB96A8, &qword_1B964EED0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_49_0();
    OUTLINED_FUNCTION_182();
    return sub_1B8D9ADF8();
  }

  return result;
}

uint64_t Amppb_Content.eBookInfo.setter()
{
  OUTLINED_FUNCTION_183_0();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB96A8, &qword_1B964EED0);
  OUTLINED_FUNCTION_183(v0);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v1);
  v2 = OUTLINED_FUNCTION_31_2();
  if ((OUTLINED_FUNCTION_127_0(v2) & 1) == 0)
  {
    OUTLINED_FUNCTION_63_1();
    v3 = OUTLINED_FUNCTION_40_0();
    v4 = sub_1B8DA90EC(v3);
    OUTLINED_FUNCTION_135(v4);
  }

  OUTLINED_FUNCTION_49_0();
  OUTLINED_FUNCTION_294();
  sub_1B8D9ADF8();
  type metadata accessor for Amppb_EbookInfo(0);
  v5 = OUTLINED_FUNCTION_53_0();
  __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
  OUTLINED_FUNCTION_73_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  return swift_endAccess();
}

void Amppb_Content.eBookInfo.modify()
{
  OUTLINED_FUNCTION_284();
  v2 = OUTLINED_FUNCTION_185_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_66_0(v3);
  v4 = OUTLINED_FUNCTION_491();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_183(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_71(v8);
  type metadata accessor for Amppb_EbookInfo(v9);
  OUTLINED_FUNCTION_59_1();
  v11 = __swift_coroFrameAllocStub(*(v10 + 64));
  v12 = OUTLINED_FUNCTION_187(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  *(v1 + 48) = v13;
  OUTLINED_FUNCTION_27_2();
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_82();
  OUTLINED_FUNCTION_17_2();
  if (v14)
  {
    *v13 = 0;
    v13[1] = 0xE000000000000000;
    v13[2] = 0;
    v13[3] = 0;
    v13[4] = 0xE000000000000000;
    v13[5] = 0;
    v13[6] = 0xE000000000000000;
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    OUTLINED_FUNCTION_17_2();
    if (!v14)
    {
      sub_1B8D9207C(v0, &qword_1EBAB96A8, &qword_1B964EED0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_49_0();
    OUTLINED_FUNCTION_246();
    sub_1B8D9ADF8();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_283();
}

uint64_t Amppb_Content.discNumber.modify()
{
  v2 = __swift_coroFrameAllocStub(0x60uLL);
  *(OUTLINED_FUNCTION_99(v2) + 80) = v0;
  OUTLINED_FUNCTION_38_0();
  *(v1 + 88) = v3;
  v4 = *(v0 + v3);
  v5 = OBJC_IVAR____TtCV10PegasusAPI13Amppb_ContentP33_DBCA56248B3174DB33A494A6214DCF2913_StorageClass__discNumber;
  OUTLINED_FUNCTION_68_0();
  *(v1 + 72) = *(v4 + v5);
  return OUTLINED_FUNCTION_105_0();
}

uint64_t sub_1B8D9FE2C(uint64_t *a1)
{
  OUTLINED_FUNCTION_27_2();
  v3 = *a1;
  OUTLINED_FUNCTION_521(v1 + v3, v5);
  return *(v1 + v3);
}

uint64_t sub_1B8D9FE78(uint64_t a1, uint64_t a2)
{
  v6 = OUTLINED_FUNCTION_69_0();
  v7 = *(v2 + v3);
  if ((v6 & 1) == 0)
  {
    OUTLINED_FUNCTION_63_1();
    v8 = OUTLINED_FUNCTION_40_0();
    v9 = sub_1B8DA90EC(v8);
    OUTLINED_FUNCTION_135(v9);
  }

  v10 = OUTLINED_FUNCTION_271_0();
  result = OUTLINED_FUNCTION_18(v10, v12);
  *(v7 + a2) = a1;
  return result;
}

uint64_t Amppb_Content.trackNumber.modify()
{
  v2 = __swift_coroFrameAllocStub(0x60uLL);
  *(OUTLINED_FUNCTION_99(v2) + 80) = v0;
  OUTLINED_FUNCTION_38_0();
  *(v1 + 88) = v3;
  v4 = *(v0 + v3);
  v5 = OBJC_IVAR____TtCV10PegasusAPI13Amppb_ContentP33_DBCA56248B3174DB33A494A6214DCF2913_StorageClass__trackNumber;
  OUTLINED_FUNCTION_68_0();
  *(v1 + 72) = *(v4 + v5);
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B8D9FF64()
{
  OUTLINED_FUNCTION_243();
  v2 = v1;
  OUTLINED_FUNCTION_238();
  v4 = *(v3 + 72);
  v5 = *(v0 + 88);
  v6 = *(v0 + 80);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *(v6 + v5);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v9 = *(v0 + 88);
    v10 = *(v0 + 80);
    OUTLINED_FUNCTION_63_1();
    v11 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B8DA90EC(v11);
    *(v10 + v9) = v8;
  }

  v12 = OUTLINED_FUNCTION_271_0();
  OUTLINED_FUNCTION_18(v12, v0 + v13);
  *(v8 + v2) = v4;
  OUTLINED_FUNCTION_242();

  free(v14);
}

uint64_t sub_1B8DA0014(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return Amppb_Content.artistName.setter(v1, v2);
}

uint64_t Amppb_Content.artistName.modify()
{
  v0 = OUTLINED_FUNCTION_126();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_7_2(v1);
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_130_0();

  return OUTLINED_FUNCTION_514();
}

uint64_t Amppb_Content.artistBio.modify()
{
  v0 = OUTLINED_FUNCTION_194_0();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_23_1(v1);
  OUTLINED_FUNCTION_68_0();
  OUTLINED_FUNCTION_195_0();

  return OUTLINED_FUNCTION_514();
}

uint64_t sub_1B8DA01B8(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return Amppb_Content.releaseDate.setter(v1, v2);
}

uint64_t Amppb_Content.releaseDate.modify()
{
  v0 = OUTLINED_FUNCTION_126();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_7_2(v1);
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_130_0();

  return OUTLINED_FUNCTION_514();
}

void sub_1B8DA0288()
{
  OUTLINED_FUNCTION_243();
  OUTLINED_FUNCTION_238();
  v4 = *(v3 + 48);
  v5 = *(v0 + 56);
  if (v6)
  {
    v7 = v2;

    v8 = OUTLINED_FUNCTION_461();
    v7(v8);
  }

  else
  {
    v9 = v1;
    v10 = *(v0 + 72);
    v11 = *(v0 + 64);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v13 = *(v11 + v10);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v14 = *(v0 + 72);
      v15 = *(v0 + 64);
      OUTLINED_FUNCTION_63_1();
      v16 = OUTLINED_FUNCTION_40_0();
      isUniquelyReferenced_nonNull_native = sub_1B8DA90EC(v16);
      v13 = isUniquelyReferenced_nonNull_native;
      *(v15 + v14) = isUniquelyReferenced_nonNull_native;
    }

    v17 = (v13 + *v9);
    OUTLINED_FUNCTION_211_0(isUniquelyReferenced_nonNull_native, v0 + 24);
    *v17 = v4;
    v17[1] = v5;
  }

  OUTLINED_FUNCTION_242();

  free(v18);
}

uint64_t Amppb_Content.children.modify()
{
  v0 = OUTLINED_FUNCTION_194_0();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_23_1(v1);
  OUTLINED_FUNCTION_68_0();
  OUTLINED_FUNCTION_195_0();

  return OUTLINED_FUNCTION_514();
}

uint64_t Amppb_Content.movieClips.modify()
{
  v0 = OUTLINED_FUNCTION_194_0();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_23_1(v1);
  OUTLINED_FUNCTION_68_0();
  OUTLINED_FUNCTION_195_0();

  return OUTLINED_FUNCTION_514();
}

void sub_1B8DA04E0()
{
  OUTLINED_FUNCTION_238();
  v4 = *(v3 + 48);
  if (v5)
  {
    v6 = v2;

    v6(v7);
  }

  else
  {
    v8 = v1;
    v9 = *(v0 + 64);
    v10 = *(v0 + 56);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *(v10 + v9);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v13 = *(v0 + 64);
      v14 = *(v0 + 56);
      OUTLINED_FUNCTION_63_1();
      v15 = OUTLINED_FUNCTION_40_0();
      v12 = sub_1B8DA90EC(v15);
      *(v14 + v13) = v12;
    }

    v16 = *v8;
    OUTLINED_FUNCTION_18(v12 + v16, v0 + 24);
    *(v12 + v16) = v4;
  }

  free(v0);
}

uint64_t Amppb_Content.parent.getter@<X0>(void *a1@<X8>)
{
  v2 = OUTLINED_FUNCTION_206_0();
  OUTLINED_FUNCTION_183(v2);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v19 - v4;
  OUTLINED_FUNCTION_27_2();
  OUTLINED_FUNCTION_101_0();
  sub_1B8D92024();
  type metadata accessor for Amppb_Parent(0);
  OUTLINED_FUNCTION_57(v5);
  if (v6)
  {
    *a1 = 0;
    a1[1] = 0xE000000000000000;
    type metadata accessor for Amppb_Child(0);
    a1[2] = sub_1B964C7B0();
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    v7 = type metadata accessor for Amppb_Description(0);
    OUTLINED_FUNCTION_83();
    __swift_storeEnumTagSinglePayload(v8, v9, v10, v7);
    OUTLINED_FUNCTION_83();
    __swift_storeEnumTagSinglePayload(v11, v12, v13, v7);
    OUTLINED_FUNCTION_235_0();
    OUTLINED_FUNCTION_83();
    __swift_storeEnumTagSinglePayload(v14, v15, v16, v17);
    result = OUTLINED_FUNCTION_57(v5);
    if (!v6)
    {
      return sub_1B8D9207C(v5, &qword_1EBAB96B0, &qword_1B964EED8);
    }
  }

  else
  {
    OUTLINED_FUNCTION_54_0();
    return sub_1B8D9ADF8();
  }

  return result;
}

uint64_t sub_1B8DA0718(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t a6, uint64_t (*a7)(uint64_t))
{
  v9 = (a5)(0, a2, a3, a4);
  OUTLINED_FUNCTION_183(v9);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_208();
  sub_1B8D9B0AC();
  return a7(v7);
}

uint64_t Amppb_Content.parent.setter()
{
  OUTLINED_FUNCTION_183_0();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB96B0, &qword_1B964EED8);
  OUTLINED_FUNCTION_183(v0);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v1);
  v2 = OUTLINED_FUNCTION_31_2();
  if ((OUTLINED_FUNCTION_127_0(v2) & 1) == 0)
  {
    OUTLINED_FUNCTION_63_1();
    v3 = OUTLINED_FUNCTION_40_0();
    v4 = sub_1B8DA90EC(v3);
    OUTLINED_FUNCTION_135(v4);
  }

  OUTLINED_FUNCTION_54_0();
  OUTLINED_FUNCTION_294();
  sub_1B8D9ADF8();
  type metadata accessor for Amppb_Parent(0);
  v5 = OUTLINED_FUNCTION_53_0();
  __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
  OUTLINED_FUNCTION_73_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  return swift_endAccess();
}

void Amppb_Content.parent.modify()
{
  OUTLINED_FUNCTION_284();
  v2 = OUTLINED_FUNCTION_185_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_66_0(v3);
  v4 = OUTLINED_FUNCTION_491();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_183(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_71(v8);
  type metadata accessor for Amppb_Parent(v9);
  OUTLINED_FUNCTION_59_1();
  v11 = __swift_coroFrameAllocStub(*(v10 + 64));
  v12 = OUTLINED_FUNCTION_187(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  *(v1 + 48) = v13;
  OUTLINED_FUNCTION_27_2();
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_82();
  OUTLINED_FUNCTION_17_2();
  if (v14)
  {
    *v13 = 0;
    v13[1] = 0xE000000000000000;
    type metadata accessor for Amppb_Child(0);
    v15 = sub_1B964C7B0();
    v13[2] = v15;
    OUTLINED_FUNCTION_280_0(v15);
    v16 = type metadata accessor for Amppb_Description(0);
    OUTLINED_FUNCTION_83();
    __swift_storeEnumTagSinglePayload(v17, v18, v19, v16);
    OUTLINED_FUNCTION_83();
    __swift_storeEnumTagSinglePayload(v20, v21, v22, v16);
    OUTLINED_FUNCTION_235_0();
    OUTLINED_FUNCTION_83();
    __swift_storeEnumTagSinglePayload(v23, v24, v25, v26);
    OUTLINED_FUNCTION_17_2();
    if (!v14)
    {
      sub_1B8D9207C(v0, &qword_1EBAB96B0, &qword_1B964EED8);
    }
  }

  else
  {
    OUTLINED_FUNCTION_54_0();
    OUTLINED_FUNCTION_246();
    sub_1B8D9ADF8();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_283();
}

uint64_t Amppb_Content.unknownFields.getter()
{
  OUTLINED_FUNCTION_27();
  sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1();
  v0 = OUTLINED_FUNCTION_432();

  return v1(v0);
}

uint64_t Amppb_Content.unknownFields.setter()
{
  OUTLINED_FUNCTION_313();
  sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1();
  v0 = OUTLINED_FUNCTION_288();

  return v1(v0);
}

uint64_t Amppb_Content.init()@<X0>(uint64_t a2@<X8>)
{
  _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
  v3 = *(type metadata accessor for Amppb_Content(0) + 20);
  if (qword_1EBAB5EC0 != -1)
  {
    swift_once();
  }

  *(a2 + v3) = qword_1EBAB9678;
}

uint64_t sub_1B8DA0C04()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAB9510);
  __swift_project_value_buffer(v0, qword_1EBAB9510);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v52 = swift_allocObject();
  *(v52 + 16) = xmmword_1B964EE50;
  v4 = v52 + v3 + v1[14];
  *(v52 + v3) = 0;
  *v4 = "NotSet";
  *(v4 + 8) = 6;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x1E69AADC8];
  v6 = sub_1B964C750();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v52 + v3 + v2 + v1[14];
  *(v52 + v3 + v2) = 1;
  *v8 = "AlbumID";
  *(v8 + 8) = 7;
  *(v8 + 16) = 2;
  v7();
  v9 = (v52 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 2;
  *v10 = "ArtistID";
  *(v10 + 1) = 8;
  v10[16] = 2;
  v7();
  v11 = (v52 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "MusicVideoID";
  *(v12 + 1) = 12;
  v12[16] = 2;
  v7();
  v13 = (v52 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "PlaylistID";
  *(v14 + 1) = 10;
  v14[16] = 2;
  v7();
  v15 = (v52 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "TvEpisodeID";
  *(v16 + 1) = 11;
  v16[16] = 2;
  v7();
  v17 = (v52 + v3 + 6 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "TvSeasonID";
  *(v18 + 1) = 10;
  v18[16] = 2;
  v7();
  v19 = (v52 + v3 + 7 * v2);
  v20 = v19 + v1[14];
  *v19 = 7;
  *v20 = "MovieID";
  *(v20 + 1) = 7;
  v20[16] = 2;
  v7();
  v21 = (v52 + v3 + 8 * v2);
  v22 = v21 + v1[14];
  *v21 = 8;
  *v22 = "MovieBundleID";
  *(v22 + 1) = 13;
  v22[16] = 2;
  v7();
  v23 = (v52 + v3 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 9;
  *v24 = "ShortFilmID";
  *(v24 + 1) = 11;
  v24[16] = 2;
  v7();
  v25 = (v52 + v3 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 10;
  *v26 = "EpubBookID";
  *(v26 + 1) = 10;
  v26[16] = 2;
  v7();
  v27 = (v52 + v3 + 11 * v2);
  v28 = v27 + v1[14];
  *v27 = 11;
  *v28 = "BookID";
  *(v28 + 1) = 6;
  v28[16] = 2;
  v7();
  v29 = (v52 + v3 + 12 * v2);
  v30 = v29 + v1[14];
  *v29 = 12;
  *v30 = "AudioBookID";
  *(v30 + 1) = 11;
  v30[16] = 2;
  v7();
  v31 = (v52 + v3 + 13 * v2);
  v32 = v31 + v1[14];
  *v31 = 13;
  *v32 = "CourseID";
  *(v32 + 1) = 8;
  v32[16] = 2;
  v7();
  v33 = (v52 + v3 + 14 * v2);
  v34 = v33 + v1[14];
  *v33 = 14;
  *v34 = "PodcastID";
  *(v34 + 1) = 9;
  v34[16] = 2;
  v7();
  v35 = (v52 + v3 + 15 * v2);
  v36 = v35 + v1[14];
  *v35 = 15;
  *v36 = "PodcastEpisodeID";
  *(v36 + 1) = 16;
  v36[16] = 2;
  v7();
  v37 = (v52 + v3 + 16 * v2);
  v38 = v37 + v1[14];
  *v37 = 16;
  *v38 = "IOSSoftwareID";
  *(v38 + 1) = 13;
  v38[16] = 2;
  v7();
  v39 = (v52 + v3 + 17 * v2);
  v40 = v39 + v1[14];
  *v39 = 17;
  *v40 = "DesktopAppID";
  *(v40 + 1) = 12;
  v40[16] = 2;
  v7();
  v41 = (v52 + v3 + 18 * v2);
  v42 = v41 + v1[14];
  *v41 = 18;
  *v42 = "AppCategoryID";
  *(v42 + 1) = 13;
  v42[16] = 2;
  v7();
  v43 = (v52 + v3 + 19 * v2);
  v44 = v43 + v1[14];
  *v43 = 19;
  *v44 = "MoreResultsID";
  *(v44 + 1) = 13;
  v44[16] = 2;
  v7();
  v45 = (v52 + v3 + 20 * v2);
  v46 = v45 + v1[14];
  *v45 = 20;
  *v46 = "IBookID";
  *(v46 + 1) = 7;
  v46[16] = 2;
  v7();
  v47 = (v52 + v3 + 21 * v2);
  v48 = v47 + v1[14];
  *v47 = 21;
  *v48 = "SongID";
  *(v48 + 1) = 6;
  v48[16] = 2;
  v7();
  v49 = (v52 + v3 + 22 * v2);
  v50 = v49 + v1[14];
  *v49 = 22;
  *v50 = "RadioStation";
  *(v50 + 1) = 12;
  v50[16] = 2;
  v7();
  return sub_1B964C760();
}

uint64_t sub_1B8DA12F0()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAB9528);
  __swift_project_value_buffer(v0, qword_1EBAB9528);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964EE60;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "width";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "height";
  *(v10 + 1) = 6;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "url";
  *(v12 + 1) = 3;
  v12[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t Amppb_Artwork.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_692();
  while (1)
  {
    OUTLINED_FUNCTION_186();
    result = sub_1B964C3C0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 3)
    {
      OUTLINED_FUNCTION_12();
      sub_1B964C530();
    }

    else if (result == 2 || result == 1)
    {
      OUTLINED_FUNCTION_12();
      sub_1B964C560();
    }
  }

  return result;
}

uint64_t Amppb_Artwork.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_614();
  if (!*v0 || (OUTLINED_FUNCTION_29(), result = sub_1B964C720(), !v1))
  {
    if (!*(v2 + 8) || (OUTLINED_FUNCTION_29(), result = sub_1B964C720(), !v1))
    {
      OUTLINED_FUNCTION_1();
      if (!v6 || (result = OUTLINED_FUNCTION_3(v4, v5, 3), !v1))
      {
        type metadata accessor for Amppb_Artwork(0);
        return OUTLINED_FUNCTION_8_1();
      }
    }
  }

  return result;
}

uint64_t static Amppb_Artwork.== infix(_:_:)()
{
  OUTLINED_FUNCTION_227_0();
  if (!v4)
  {
    return 0;
  }

  OUTLINED_FUNCTION_468();
  if (*(v0 + 8) != *(v1 + 8))
  {
    return 0;
  }

  OUTLINED_FUNCTION_265_0();
  v4 = v4 && v2 == v3;
  if (!v4 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for Amppb_Artwork(0);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_0_4();
  v7 = sub_1B8CD1910(v5, v6, MEMORY[0x1E69AAC10]);
  return OUTLINED_FUNCTION_634(v7) & 1;
}

uint64_t sub_1B8DA17A4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD1910(&qword_1EBAB99C0, type metadata accessor for Amppb_Artwork, protocol conformance descriptor for Amppb_Artwork);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B8DA1824(uint64_t a1)
{
  v2 = sub_1B8CD1910(&qword_1EBAB96E8, type metadata accessor for Amppb_Artwork, protocol conformance descriptor for Amppb_Artwork);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B8DA1894(uint64_t a1, uint64_t a2)
{
  sub_1B8CD1910(&qword_1EBAB96E8, type metadata accessor for Amppb_Artwork, protocol conformance descriptor for Amppb_Artwork);

  return sub_1B964C5D0();
}

uint64_t sub_1B8DA192C()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAB9540);
  __swift_project_value_buffer(v0, qword_1EBAB9540);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964EE70;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "advisories";
  *(v6 + 8) = 10;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "rank";
  *(v10 + 8) = 4;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "value";
  *(v12 + 1) = 5;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "name";
  *(v14 + 1) = 4;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "system";
  *(v16 + 1) = 6;
  v16[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t Amppb_ContentRating.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_692();
  while (1)
  {
    OUTLINED_FUNCTION_186();
    result = sub_1B964C3C0();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        OUTLINED_FUNCTION_12();
        sub_1B964C4D0();
        break;
      case 2:
      case 3:
        OUTLINED_FUNCTION_12();
        sub_1B964C560();
        break;
      case 4:
      case 5:
        OUTLINED_FUNCTION_12();
        sub_1B964C530();
        break;
      default:
        continue;
    }
  }
}

uint64_t Amppb_ContentRating.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_614();
  if (!*(*v0 + 16) || (OUTLINED_FUNCTION_29(), result = sub_1B964C6E0(), !v1))
  {
    if (!*(v2 + 8) || (OUTLINED_FUNCTION_29(), result = sub_1B964C720(), !v1))
    {
      if (!*(v2 + 16) || (OUTLINED_FUNCTION_29(), result = sub_1B964C720(), !v1))
      {
        OUTLINED_FUNCTION_1();
        if (!v6 || (result = OUTLINED_FUNCTION_3(v4, v5, 4), !v1))
        {
          OUTLINED_FUNCTION_1();
          if (!v9 || (result = OUTLINED_FUNCTION_3(v7, v8, 5), !v1))
          {
            type metadata accessor for Amppb_ContentRating(0);
            return OUTLINED_FUNCTION_8_1();
          }
        }
      }
    }
  }

  return result;
}

uint64_t static Amppb_ContentRating.== infix(_:_:)()
{
  OUTLINED_FUNCTION_468();
  if ((sub_1B8D6123C(*v2, *v3) & 1) == 0)
  {
    return 0;
  }

  if (v1[1] != v0[1])
  {
    return 0;
  }

  OUTLINED_FUNCTION_234_0();
  if (!v6)
  {
    return 0;
  }

  OUTLINED_FUNCTION_226_0();
  v6 = v6 && v4 == v5;
  if (!v6 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  v7 = v1[5] == v0[5] && v1[6] == v0[6];
  if (!v7 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for Amppb_ContentRating(0);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_0_4();
  v10 = sub_1B8CD1910(v8, v9, MEMORY[0x1E69AAC10]);
  return OUTLINED_FUNCTION_634(v10) & 1;
}

uint64_t sub_1B8DA1EF0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD1910(&qword_1EBAB99B8, type metadata accessor for Amppb_ContentRating, protocol conformance descriptor for Amppb_ContentRating);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B8DA1F70(uint64_t a1)
{
  v2 = sub_1B8CD1910(&qword_1EBAB97C0, type metadata accessor for Amppb_ContentRating, protocol conformance descriptor for Amppb_ContentRating);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B8DA1FE0(uint64_t a1, uint64_t a2)
{
  sub_1B8CD1910(&qword_1EBAB97C0, type metadata accessor for Amppb_ContentRating, protocol conformance descriptor for Amppb_ContentRating);

  return sub_1B964C5D0();
}

uint64_t sub_1B8DA2078()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAB9558);
  __swift_project_value_buffer(v0, qword_1EBAB9558);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964D060;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "short";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "standard";
  *(v10 + 1) = 8;
  v10[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t sub_1B8DA234C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD1910(&qword_1EBAB99B0, type metadata accessor for Amppb_Description, protocol conformance descriptor for Amppb_Description);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B8DA23CC(uint64_t a1)
{
  v2 = sub_1B8CD1910(&qword_1EBAB9758, type metadata accessor for Amppb_Description, protocol conformance descriptor for Amppb_Description);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B8DA243C(uint64_t a1, uint64_t a2)
{
  sub_1B8CD1910(&qword_1EBAB9758, type metadata accessor for Amppb_Description, protocol conformance descriptor for Amppb_Description);

  return sub_1B964C5D0();
}

uint64_t sub_1B8DA24E0()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAB9570);
  __swift_project_value_buffer(v0, qword_1EBAB9570);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964E4B0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "language_display_string";
  *(v6 + 8) = 23;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "page_count";
  *(v10 + 8) = 10;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "publisher";
  *(v12 + 1) = 9;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "seller";
  *(v14 + 1) = 6;
  v14[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t Amppb_EbookInfo.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_692();
  while (1)
  {
    OUTLINED_FUNCTION_186();
    result = sub_1B964C3C0();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
      case 3:
      case 4:
        OUTLINED_FUNCTION_12();
        sub_1B964C530();
        break;
      case 2:
        OUTLINED_FUNCTION_12();
        sub_1B964C560();
        break;
      default:
        continue;
    }
  }
}

uint64_t Amppb_EbookInfo.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_614();
  OUTLINED_FUNCTION_1();
  if (!v4 || (result = OUTLINED_FUNCTION_3(v2, v3, 1), !v0))
  {
    if (!*(v1 + 16) || (OUTLINED_FUNCTION_29(), result = sub_1B964C720(), !v0))
    {
      OUTLINED_FUNCTION_1();
      if (!v8 || (result = OUTLINED_FUNCTION_3(v6, v7, 3), !v0))
      {
        OUTLINED_FUNCTION_1();
        if (!v11 || (result = OUTLINED_FUNCTION_3(v9, v10, 4), !v0))
        {
          type metadata accessor for Amppb_EbookInfo(0);
          return OUTLINED_FUNCTION_8_1();
        }
      }
    }
  }

  return result;
}

uint64_t static Amppb_EbookInfo.== infix(_:_:)()
{
  OUTLINED_FUNCTION_468();
  OUTLINED_FUNCTION_428();
  v4 = v4 && v2 == v3;
  if (!v4 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_234_0();
  if (!v4)
  {
    return 0;
  }

  OUTLINED_FUNCTION_226_0();
  v7 = v4 && v5 == v6;
  if (!v7 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  v8 = *(v1 + 40) == *(v0 + 40) && *(v1 + 48) == *(v0 + 48);
  if (!v8 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for Amppb_EbookInfo(0);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_0_4();
  v11 = sub_1B8CD1910(v9, v10, MEMORY[0x1E69AAC10]);
  return OUTLINED_FUNCTION_634(v11) & 1;
}

uint64_t sub_1B8DA2A24(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD1910(&qword_1EBAB99A8, type metadata accessor for Amppb_EbookInfo, protocol conformance descriptor for Amppb_EbookInfo);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B8DA2AA4(uint64_t a1)
{
  v2 = sub_1B8CD1910(&qword_1EBAB97E8, type metadata accessor for Amppb_EbookInfo, protocol conformance descriptor for Amppb_EbookInfo);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B8DA2B14(uint64_t a1, uint64_t a2)
{
  sub_1B8CD1910(&qword_1EBAB97E8, type metadata accessor for Amppb_EbookInfo, protocol conformance descriptor for Amppb_EbookInfo);

  return sub_1B964C5D0();
}

uint64_t sub_1B8DA2BB4()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAB9588);
  __swift_project_value_buffer(v0, qword_1EBAB9588);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964D060;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "duration";
  *(v6 + 8) = 8;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "url";
  *(v10 + 1) = 3;
  v10[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t Amppb_Preview.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_692();
  while (1)
  {
    OUTLINED_FUNCTION_186();
    result = sub_1B964C3C0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 2)
    {
      OUTLINED_FUNCTION_12();
      sub_1B964C530();
    }

    else if (result == 1)
    {
      OUTLINED_FUNCTION_12();
      sub_1B964C560();
    }
  }

  return result;
}

uint64_t Amppb_Preview.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_614();
  if (!*v0 || (OUTLINED_FUNCTION_29(), result = sub_1B964C720(), !v1))
  {
    OUTLINED_FUNCTION_1();
    if (!v5 || (result = OUTLINED_FUNCTION_3(v3, v4, 2), !v1))
    {
      type metadata accessor for Amppb_Preview(0);
      return OUTLINED_FUNCTION_8_1();
    }
  }

  return result;
}

uint64_t static Amppb_Preview.== infix(_:_:)()
{
  OUTLINED_FUNCTION_227_0();
  if (!v3)
  {
    return 0;
  }

  OUTLINED_FUNCTION_468();
  v3 = *(v2 + 8) == *(v0 + 8) && *(v1 + 16) == *(v0 + 16);
  if (!v3 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for Amppb_Preview(0);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_0_4();
  v6 = sub_1B8CD1910(v4, v5, MEMORY[0x1E69AAC10]);
  return OUTLINED_FUNCTION_634(v6) & 1;
}

uint64_t sub_1B8DA2FD4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD1910(&qword_1EBAB99A0, type metadata accessor for Amppb_Preview, protocol conformance descriptor for Amppb_Preview);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B8DA3054(uint64_t a1)
{
  v2 = sub_1B8CD1910(&qword_1EBAB96E0, type metadata accessor for Amppb_Preview, protocol conformance descriptor for Amppb_Preview);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B8DA30C4(uint64_t a1, uint64_t a2)
{
  sub_1B8CD1910(&qword_1EBAB96E0, type metadata accessor for Amppb_Preview, protocol conformance descriptor for Amppb_Preview);

  return sub_1B964C5D0();
}

uint64_t sub_1B8DA3168()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAB95A0);
  __swift_project_value_buffer(v0, qword_1EBAB95A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964EE60;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "title";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "preview_artwork";
  *(v10 + 1) = 15;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "clip_assets";
  *(v12 + 1) = 11;
  v12[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t Amppb_MovieClip.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_692();
  while (1)
  {
    OUTLINED_FUNCTION_186();
    result = sub_1B964C3C0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(result)
    {
      case 3:
        v7 = OUTLINED_FUNCTION_9();
        sub_1B8DA34D4(v7, v8, v9, v10);
        break;
      case 2:
        v3 = OUTLINED_FUNCTION_9();
        sub_1B8DA3420(v3, v4, v5, v6);
        break;
      case 1:
        OUTLINED_FUNCTION_12();
        sub_1B964C530();
        break;
    }
  }

  return result;
}

uint64_t sub_1B8DA3420(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Amppb_MovieClip(0);
  type metadata accessor for Amppb_Artwork(0);
  sub_1B8CD1910(&qword_1EBAB96E8, type metadata accessor for Amppb_Artwork, protocol conformance descriptor for Amppb_Artwork);
  return sub_1B964C580();
}

uint64_t sub_1B8DA34D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Amppb_Preview(0);
  sub_1B8CD1910(&qword_1EBAB96E0, type metadata accessor for Amppb_Preview, protocol conformance descriptor for Amppb_Preview);
  return sub_1B964C570();
}

void Amppb_MovieClip.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_273_0();
  a19 = v22;
  a20 = v23;
  OUTLINED_FUNCTION_614();
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9680, &unk_1B964EEA0);
  OUTLINED_FUNCTION_183(v24);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v25);
  v27 = &a9 - v26;
  v28 = type metadata accessor for Amppb_Artwork(0);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_1();
  if (!v32 || (OUTLINED_FUNCTION_3(v30, v31, 1), !v20))
  {
    a10 = type metadata accessor for Amppb_MovieClip(0);
    sub_1B8D92024();
    if (__swift_getEnumTagSinglePayload(v27, 1, v28) == 1)
    {
      sub_1B8D9207C(v27, &qword_1EBAB9680, &unk_1B964EEA0);
    }

    else
    {
      OUTLINED_FUNCTION_2_2();
      OUTLINED_FUNCTION_190_0();
      sub_1B8D9ADF8();
      OUTLINED_FUNCTION_141_0();
      sub_1B8CD1910(v33, v34, protocol conformance descriptor for Amppb_Artwork);
      OUTLINED_FUNCTION_687();
      sub_1B964C740();
      OUTLINED_FUNCTION_11_2();
      sub_1B8D9B104();
      if (v20)
      {
        goto LABEL_9;
      }
    }

    if (!*(*(v21 + 16) + 16) || (type metadata accessor for Amppb_Preview(0), OUTLINED_FUNCTION_137_0(), sub_1B8CD1910(v35, v36, protocol conformance descriptor for Amppb_Preview), OUTLINED_FUNCTION_231(), OUTLINED_FUNCTION_687(), sub_1B964C730(), !v20))
    {
      OUTLINED_FUNCTION_8_1();
    }
  }

LABEL_9:
  OUTLINED_FUNCTION_268_0();
  OUTLINED_FUNCTION_272_0();
}

void static Amppb_MovieClip.== infix(_:_:)()
{
  OUTLINED_FUNCTION_284();
  v5 = OUTLINED_FUNCTION_112();
  type metadata accessor for Amppb_Artwork(v5);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_208();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9680, &unk_1B964EEA0);
  OUTLINED_FUNCTION_183(v7);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_137();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB96F0, &unk_1B964EEE0);
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_88();
  OUTLINED_FUNCTION_428();
  v13 = v13 && v11 == v12;
  if (!v13 && (sub_1B964C9F0() & 1) == 0)
  {
    goto LABEL_29;
  }

  type metadata accessor for Amppb_MovieClip(0);
  v14 = *(v9 + 48);
  OUTLINED_FUNCTION_201_0();
  OUTLINED_FUNCTION_200_0();
  OUTLINED_FUNCTION_37_0(v2);
  if (v13)
  {
    OUTLINED_FUNCTION_37_0(v2 + v14);
    if (v13)
    {
      sub_1B8D9207C(v2, &qword_1EBAB9680, &unk_1B964EEA0);
      goto LABEL_11;
    }

    goto LABEL_16;
  }

  OUTLINED_FUNCTION_1_0();
  sub_1B8D92024();
  OUTLINED_FUNCTION_37_0(v2 + v14);
  if (v20)
  {
    OUTLINED_FUNCTION_11_2();
    sub_1B8D9B104();
LABEL_16:
    v21 = &qword_1EBAB96F0;
    v22 = &unk_1B964EEE0;
LABEL_28:
    sub_1B8D9207C(v2, v21, v22);
    goto LABEL_29;
  }

  OUTLINED_FUNCTION_2_2();
  sub_1B8D9ADF8();
  OUTLINED_FUNCTION_229_0();
  if (!v23 || v4[1] != v3[1] || (v4[2] == v3[2] ? (v24 = v4[3] == v3[3]) : (v24 = 0), !v24 && (sub_1B964C9F0() & 1) == 0))
  {
    OUTLINED_FUNCTION_155_0();
    sub_1B8D9B104();
    OUTLINED_FUNCTION_195();
    sub_1B8D9B104();
    v21 = &qword_1EBAB9680;
    v22 = &unk_1B964EEA0;
    goto LABEL_28;
  }

  v25 = sub_1B964C2B0();
  OUTLINED_FUNCTION_0_4();
  sub_1B8CD1910(v26, v27, MEMORY[0x1E69AAC10]);
  OUTLINED_FUNCTION_198_0();
  OUTLINED_FUNCTION_133_0();
  sub_1B8D9B104();
  OUTLINED_FUNCTION_278_0();
  sub_1B8D9207C(v2, &qword_1EBAB9680, &unk_1B964EEA0);
  if ((v25 & 1) == 0)
  {
    goto LABEL_29;
  }

LABEL_11:
  sub_1B8D7DE40(*(v1 + 16), *(v0 + 16));
  if ((v15 & 1) == 0)
  {
LABEL_29:
    v19 = 0;
    goto LABEL_30;
  }

  sub_1B964C2B0();
  OUTLINED_FUNCTION_0_4();
  v18 = sub_1B8CD1910(v16, v17, MEMORY[0x1E69AAC10]);
  v19 = OUTLINED_FUNCTION_199_0(v18);
LABEL_30:
  OUTLINED_FUNCTION_264(v19);
  OUTLINED_FUNCTION_283();
}

uint64_t sub_1B8DA3AEC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD1910(&qword_1EBAB9998, type metadata accessor for Amppb_MovieClip, protocol conformance descriptor for Amppb_MovieClip);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B8DA3B6C(uint64_t a1)
{
  v2 = sub_1B8CD1910(&qword_1EBAB9810, type metadata accessor for Amppb_MovieClip, protocol conformance descriptor for Amppb_MovieClip);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B8DA3BDC(uint64_t a1, uint64_t a2)
{
  sub_1B8CD1910(&qword_1EBAB9810, type metadata accessor for Amppb_MovieClip, protocol conformance descriptor for Amppb_MovieClip);

  return sub_1B964C5D0();
}

uint64_t sub_1B8DA3C78()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAB95B8);
  __swift_project_value_buffer(v0, qword_1EBAB95B8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964EE70;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "duration";
  *(v6 + 8) = 8;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "size";
  *(v10 + 8) = 4;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "flavor";
  *(v12 + 1) = 6;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "preview";
  *(v14 + 1) = 7;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "is_closed_captioned";
  *(v16 + 1) = 19;
  v16[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t Amppb_Asset.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_692();
  while (1)
  {
    OUTLINED_FUNCTION_186();
    result = sub_1B964C3C0();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        OUTLINED_FUNCTION_12();
        sub_1B964C560();
        break;
      case 2:
        OUTLINED_FUNCTION_12();
        sub_1B964C510();
        break;
      case 3:
        OUTLINED_FUNCTION_12();
        sub_1B964C530();
        break;
      case 4:
        v3 = OUTLINED_FUNCTION_9();
        sub_1B8DA3FE4(v3, v4, v5, v6);
        break;
      case 5:
        OUTLINED_FUNCTION_12();
        sub_1B964C400();
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1B8DA3FE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Amppb_Asset(0);
  type metadata accessor for Amppb_Preview(0);
  sub_1B8CD1910(&qword_1EBAB96E0, type metadata accessor for Amppb_Preview, protocol conformance descriptor for Amppb_Preview);
  return sub_1B964C580();
}

void Amppb_Asset.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_273_0();
  OUTLINED_FUNCTION_614();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92E0, &qword_1B964DAC0);
  OUTLINED_FUNCTION_183(v7);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v8);
  v9 = OUTLINED_FUNCTION_151();
  v10 = type metadata accessor for Amppb_Preview(v9);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_62();
  if (!*v3 || (OUTLINED_FUNCTION_29(), sub_1B964C720(), !v4))
  {
    if (*(v5 + 8) == 0.0 || (OUTLINED_FUNCTION_79_0(), OUTLINED_FUNCTION_12(), sub_1B964C6F0(), !v4))
    {
      OUTLINED_FUNCTION_1();
      if (!v14 || (OUTLINED_FUNCTION_3(v12, v13, 3), !v4))
      {
        type metadata accessor for Amppb_Asset(0);
        sub_1B8D92024();
        v15 = OUTLINED_FUNCTION_443();
        if (__swift_getEnumTagSinglePayload(v15, v16, v10) == 1)
        {
          sub_1B8D9207C(v6, &qword_1EBAB92E0, &qword_1B964DAC0);
        }

        else
        {
          OUTLINED_FUNCTION_6_1();
          sub_1B8D9ADF8();
          OUTLINED_FUNCTION_137_0();
          sub_1B8CD1910(v17, v18, protocol conformance descriptor for Amppb_Preview);
          OUTLINED_FUNCTION_687();
          sub_1B964C740();
          OUTLINED_FUNCTION_55_0();
          sub_1B8D9B104();
          if (v4)
          {
            goto LABEL_14;
          }
        }

        if (*(v5 + 32) != 1 || (OUTLINED_FUNCTION_29(), sub_1B964C670(), !v4))
        {
          OUTLINED_FUNCTION_8_1();
        }
      }
    }
  }

LABEL_14:
  OUTLINED_FUNCTION_268_0();
  OUTLINED_FUNCTION_272_0();
}

void static Amppb_Asset.== infix(_:_:)()
{
  OUTLINED_FUNCTION_284();
  v5 = OUTLINED_FUNCTION_112();
  type metadata accessor for Amppb_Preview(v5);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_208();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92E0, &qword_1B964DAC0);
  OUTLINED_FUNCTION_183(v7);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_137();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92E8, &qword_1B964DAC8);
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_88();
  if (*v1 != *v0 || *(v1 + 8) != *(v0 + 8))
  {
    goto LABEL_30;
  }

  OUTLINED_FUNCTION_265_0();
  v13 = v13 && v11 == v12;
  if (!v13 && (sub_1B964C9F0() & 1) == 0)
  {
    goto LABEL_30;
  }

  type metadata accessor for Amppb_Asset(0);
  v14 = *(v9 + 48);
  OUTLINED_FUNCTION_201_0();
  OUTLINED_FUNCTION_200_0();
  OUTLINED_FUNCTION_37_0(v2);
  if (v13)
  {
    OUTLINED_FUNCTION_37_0(v2 + v14);
    if (v13)
    {
      sub_1B8D9207C(v2, &qword_1EBAB92E0, &qword_1B964DAC0);
      goto LABEL_13;
    }

    goto LABEL_18;
  }

  OUTLINED_FUNCTION_1_0();
  sub_1B8D92024();
  OUTLINED_FUNCTION_37_0(v2 + v14);
  if (v19)
  {
    OUTLINED_FUNCTION_55_0();
    sub_1B8D9B104();
LABEL_18:
    v20 = &qword_1EBAB92E8;
    v21 = &qword_1B964DAC8;
LABEL_29:
    sub_1B8D9207C(v2, v20, v21);
    goto LABEL_30;
  }

  OUTLINED_FUNCTION_6_1();
  sub_1B8D9ADF8();
  OUTLINED_FUNCTION_229_0();
  if (!v22 || (*(v4 + 8) == *(v3 + 8) ? (v23 = *(v4 + 16) == *(v3 + 16)) : (v23 = 0), !v23 && (sub_1B964C9F0() & 1) == 0))
  {
    sub_1B8D9B104();
    OUTLINED_FUNCTION_195();
    sub_1B8D9B104();
    v20 = &qword_1EBAB92E0;
    v21 = &qword_1B964DAC0;
    goto LABEL_29;
  }

  sub_1B964C2B0();
  OUTLINED_FUNCTION_0_4();
  sub_1B8CD1910(v24, v25, MEMORY[0x1E69AAC10]);
  v26 = OUTLINED_FUNCTION_198_0();
  sub_1B8D9B104();
  OUTLINED_FUNCTION_278_0();
  sub_1B8D9207C(v2, &qword_1EBAB92E0, &qword_1B964DAC0);
  if ((v26 & 1) == 0)
  {
    goto LABEL_30;
  }

LABEL_13:
  if (*(v1 + 32) != *(v0 + 32))
  {
LABEL_30:
    v18 = 0;
    goto LABEL_31;
  }

  sub_1B964C2B0();
  OUTLINED_FUNCTION_0_4();
  v17 = sub_1B8CD1910(v15, v16, MEMORY[0x1E69AAC10]);
  v18 = OUTLINED_FUNCTION_199_0(v17);
LABEL_31:
  OUTLINED_FUNCTION_264(v18);
  OUTLINED_FUNCTION_283();
}

uint64_t sub_1B8DA4650(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD1910(&qword_1EBAB9990, type metadata accessor for Amppb_Asset, protocol conformance descriptor for Amppb_Asset);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B8DA46D0(uint64_t a1)
{
  v2 = sub_1B8CD1910(&qword_1EBAB9710, type metadata accessor for Amppb_Asset, protocol conformance descriptor for Amppb_Asset);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B8DA4740(uint64_t a1, uint64_t a2)
{
  sub_1B8CD1910(&qword_1EBAB9710, type metadata accessor for Amppb_Asset, protocol conformance descriptor for Amppb_Asset);

  return sub_1B964C5D0();
}

uint64_t sub_1B8DA47D8()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAB95D0);
  __swift_project_value_buffer(v0, qword_1EBAB95D0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964D060;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "support_url";
  *(v6 + 8) = 11;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "website_url";
  *(v10 + 1) = 11;
  v10[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t sub_1B8DA49C4()
{
  OUTLINED_FUNCTION_692();
  while (1)
  {
    OUTLINED_FUNCTION_186();
    result = sub_1B964C3C0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 2 || result == 1)
    {
      OUTLINED_FUNCTION_12();
      sub_1B964C530();
    }
  }

  return result;
}

uint64_t sub_1B8DA4A50(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  OUTLINED_FUNCTION_614();
  OUTLINED_FUNCTION_1();
  if (!v8 || (result = OUTLINED_FUNCTION_3(v6, v7, 1), !v4))
  {
    OUTLINED_FUNCTION_1();
    if (!v12 || (result = OUTLINED_FUNCTION_3(v10, v11, 2), !v4))
    {
      a4(0);
      return OUTLINED_FUNCTION_8_1();
    }
  }

  return result;
}

uint64_t sub_1B8DA4AF8(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  OUTLINED_FUNCTION_468();
  OUTLINED_FUNCTION_428();
  v6 = v6 && v4 == v5;
  if (!v6 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_265_0();
  v9 = v6 && v7 == v8;
  if (!v9 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  a3(0);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_0_4();
  v12 = sub_1B8CD1910(v10, v11, MEMORY[0x1E69AAC10]);
  return OUTLINED_FUNCTION_634(v12) & 1;
}

uint64_t sub_1B8DA4C3C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD1910(&qword_1EBAB9988, type metadata accessor for Amppb_SoftwareInfo, protocol conformance descriptor for Amppb_SoftwareInfo);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B8DA4CBC(uint64_t a1)
{
  v2 = sub_1B8CD1910(&qword_1EBAB9838, type metadata accessor for Amppb_SoftwareInfo, protocol conformance descriptor for Amppb_SoftwareInfo);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B8DA4D2C(uint64_t a1, uint64_t a2)
{
  sub_1B8CD1910(&qword_1EBAB9838, type metadata accessor for Amppb_SoftwareInfo, protocol conformance descriptor for Amppb_SoftwareInfo);

  return sub_1B964C5D0();
}

uint64_t sub_1B8DA4DC8()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAB95E8);
  __swift_project_value_buffer(v0, qword_1EBAB95E8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964EE60;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "assets";
  *(v6 + 8) = 6;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "variant";
  *(v10 + 1) = 7;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "type";
  *(v12 + 1) = 4;
  v12[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t Amppb_Offer.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_692();
  while (1)
  {
    OUTLINED_FUNCTION_186();
    result = sub_1B964C3C0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 3 || result == 2)
    {
      OUTLINED_FUNCTION_12();
      sub_1B964C530();
    }

    else if (result == 1)
    {
      v3 = OUTLINED_FUNCTION_9();
      sub_1B8DA506C(v3, v4, v5, v6);
    }
  }

  return result;
}

uint64_t sub_1B8DA506C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Amppb_Asset(0);
  sub_1B8CD1910(&qword_1EBAB9710, type metadata accessor for Amppb_Asset, protocol conformance descriptor for Amppb_Asset);
  return sub_1B964C570();
}

uint64_t Amppb_Offer.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_614();
  if (!*(*v0 + 16) || (type metadata accessor for Amppb_Asset(0), sub_1B8CD1910(&qword_1EBAB9710, type metadata accessor for Amppb_Asset, protocol conformance descriptor for Amppb_Asset), OUTLINED_FUNCTION_231(), OUTLINED_FUNCTION_687(), result = sub_1B964C730(), !v1))
  {
    OUTLINED_FUNCTION_1();
    if (!v5 || (result = OUTLINED_FUNCTION_3(v3, v4, 2), !v1))
    {
      OUTLINED_FUNCTION_1();
      if (!v8 || (result = OUTLINED_FUNCTION_3(v6, v7, 3), !v1))
      {
        type metadata accessor for Amppb_Offer(0);
        return OUTLINED_FUNCTION_8_1();
      }
    }
  }

  return result;
}

uint64_t static Amppb_Offer.== infix(_:_:)()
{
  OUTLINED_FUNCTION_468();
  sub_1B8D7E1B8(*v2, *v3);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = *(v1 + 8) == *(v0 + 8) && *(v1 + 16) == *(v0 + 16);
  if (!v5 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_226_0();
  v8 = v5 && v6 == v7;
  if (!v8 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for Amppb_Offer(0);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_0_4();
  v11 = sub_1B8CD1910(v9, v10, MEMORY[0x1E69AAC10]);
  return OUTLINED_FUNCTION_634(v11) & 1;
}

uint64_t sub_1B8DA535C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD1910(&qword_1EBAB9980, type metadata accessor for Amppb_Offer, protocol conformance descriptor for Amppb_Offer);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B8DA53DC(uint64_t a1)
{
  v2 = sub_1B8CD1910(&qword_1EBAB9730, type metadata accessor for Amppb_Offer, protocol conformance descriptor for Amppb_Offer);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B8DA544C(uint64_t a1, uint64_t a2)
{
  sub_1B8CD1910(&qword_1EBAB9730, type metadata accessor for Amppb_Offer, protocol conformance descriptor for Amppb_Offer);

  return sub_1B964C5D0();
}

uint64_t sub_1B8DA54E4()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAB9600);
  __swift_project_value_buffer(v0, qword_1EBAB9600);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964E4B0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "rating_count_current_version";
  *(v6 + 8) = 28;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "value_current_version";
  *(v10 + 8) = 21;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "value";
  *(v12 + 1) = 5;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "rating_count";
  *(v14 + 1) = 12;
  v14[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t Amppb_UserRating.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_692();
  while (1)
  {
    OUTLINED_FUNCTION_186();
    result = sub_1B964C3C0();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
      case 4:
        OUTLINED_FUNCTION_12();
        sub_1B964C560();
        break;
      case 2:
      case 3:
        OUTLINED_FUNCTION_12();
        sub_1B964C510();
        break;
      default:
        continue;
    }
  }
}

uint64_t Amppb_UserRating.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_614();
  if (!*v0 || (OUTLINED_FUNCTION_29(), result = sub_1B964C720(), !v1))
  {
    if (*(v2 + 8) == 0.0 || (OUTLINED_FUNCTION_79_0(), OUTLINED_FUNCTION_12(), result = sub_1B964C6F0(), !v1))
    {
      if (*(v2 + 16) == 0.0 || (OUTLINED_FUNCTION_79_0(), OUTLINED_FUNCTION_12(), result = sub_1B964C6F0(), !v1))
      {
        if (!*(v2 + 24) || (OUTLINED_FUNCTION_29(), result = sub_1B964C720(), !v1))
        {
          type metadata accessor for Amppb_UserRating(0);
          return OUTLINED_FUNCTION_8_1();
        }
      }
    }
  }

  return result;
}

uint64_t static Amppb_UserRating.== infix(_:_:)()
{
  OUTLINED_FUNCTION_227_0();
  if (!v2)
  {
    return 0;
  }

  OUTLINED_FUNCTION_468();
  if (*(v3 + 8) != *(v4 + 8) || *(v1 + 16) != *(v0 + 16) || *(v1 + 24) != *(v0 + 24))
  {
    return 0;
  }

  type metadata accessor for Amppb_UserRating(0);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_0_4();
  v7 = sub_1B8CD1910(v5, v6, MEMORY[0x1E69AAC10]);
  return OUTLINED_FUNCTION_634(v7) & 1;
}

uint64_t sub_1B8DA5A0C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD1910(&qword_1EBAB9978, type metadata accessor for Amppb_UserRating, protocol conformance descriptor for Amppb_UserRating);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B8DA5A8C(uint64_t a1)
{
  v2 = sub_1B8CD1910(&qword_1EBAB9750, type metadata accessor for Amppb_UserRating, protocol conformance descriptor for Amppb_UserRating);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B8DA5AFC(uint64_t a1, uint64_t a2)
{
  sub_1B8CD1910(&qword_1EBAB9750, type metadata accessor for Amppb_UserRating, protocol conformance descriptor for Amppb_UserRating);

  return sub_1B964C5D0();
}

uint64_t sub_1B8DA5B94()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAB9618);
  __swift_project_value_buffer(v0, qword_1EBAB9618);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1B964D050;
  v4 = v3 + v2 + v1[14];
  *(v3 + v2) = 1;
  *v4 = "tomato_meter_percentage";
  *(v4 + 8) = 23;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x1E69AADE8];
  v6 = sub_1B964C750();
  (*(*(v6 - 8) + 104))(v4, v5, v6);
  return sub_1B964C760();
}

uint64_t Amppb_RottenTomatoesReviews.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_692();
  while (1)
  {
    OUTLINED_FUNCTION_186();
    result = sub_1B964C3C0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      OUTLINED_FUNCTION_12();
      sub_1B964C510();
    }
  }

  return result;
}

uint64_t Amppb_RottenTomatoesReviews.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_614();
  if (*v0 == 0.0 || (OUTLINED_FUNCTION_79_0(), OUTLINED_FUNCTION_12(), result = sub_1B964C6F0(), !v1))
  {
    type metadata accessor for Amppb_RottenTomatoesReviews(0);
    return OUTLINED_FUNCTION_8_1();
  }

  return result;
}

uint64_t static Amppb_RottenTomatoesReviews.== infix(_:_:)(double *a1, double *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  OUTLINED_FUNCTION_468();
  type metadata accessor for Amppb_RottenTomatoesReviews(0);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_0_4();
  v4 = sub_1B8CD1910(v2, v3, MEMORY[0x1E69AAC10]);
  return OUTLINED_FUNCTION_634(v4) & 1;
}

uint64_t sub_1B8DA5F0C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD1910(&qword_1EBAB9970, type metadata accessor for Amppb_RottenTomatoesReviews, protocol conformance descriptor for Amppb_RottenTomatoesReviews);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B8DA5F8C(uint64_t a1)
{
  v2 = sub_1B8CD1910(&qword_1EBAB9870, type metadata accessor for Amppb_RottenTomatoesReviews, protocol conformance descriptor for Amppb_RottenTomatoesReviews);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B8DA5FFC(uint64_t a1, uint64_t a2)
{
  sub_1B8CD1910(&qword_1EBAB9870, type metadata accessor for Amppb_RottenTomatoesReviews, protocol conformance descriptor for Amppb_RottenTomatoesReviews);

  return sub_1B964C5D0();
}

uint64_t sub_1B8DA6098()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAB9630);
  __swift_project_value_buffer(v0, qword_1EBAB9630);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_1B964EE80;
  v4 = v24 + v3 + v1[14];
  *(v24 + v3) = 1;
  *v4 = "name";
  *(v4 + 8) = 4;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x1E69AADC8];
  v6 = sub_1B964C750();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v24 + v3 + v2 + v1[14];
  *(v24 + v3 + v2) = 2;
  *v8 = "url";
  *(v8 + 8) = 3;
  *(v8 + 16) = 2;
  v7();
  v9 = (v24 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 3;
  *v10 = "parent_name";
  *(v10 + 1) = 11;
  v10[16] = 2;
  v7();
  v11 = (v24 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 4;
  *v12 = "offers";
  *(v12 + 1) = 6;
  v12[16] = 2;
  v7();
  v13 = (v24 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 5;
  *v14 = "disc_number";
  *(v14 + 1) = 11;
  v14[16] = 2;
  v7();
  v15 = (v24 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 6;
  *v16 = "track_number";
  *(v16 + 1) = 12;
  v16[16] = 2;
  v7();
  v17 = (v24 + v3 + 6 * v2);
  v18 = v17 + v1[14];
  *v17 = 7;
  *v18 = "kind";
  *(v18 + 1) = 4;
  v18[16] = 2;
  v7();
  v19 = (v24 + v3 + 7 * v2);
  v20 = v19 + v1[14];
  *v19 = 8;
  *v20 = "artwork";
  *(v20 + 1) = 7;
  v20[16] = 2;
  v7();
  v21 = (v24 + v3 + 8 * v2);
  v22 = v21 + v1[14];
  *v21 = 9;
  *v22 = "release_date";
  *(v22 + 1) = 12;
  v22[16] = 2;
  v7();
  return sub_1B964C760();
}

uint64_t Amppb_Child.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_692();
  while (1)
  {
    OUTLINED_FUNCTION_186();
    result = sub_1B964C3C0();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
      case 2:
      case 3:
      case 9:
        OUTLINED_FUNCTION_12();
        sub_1B964C530();
        break;
      case 4:
        v3 = OUTLINED_FUNCTION_9();
        sub_1B8DA6510(v3, v4, v5, v6);
        break;
      case 5:
      case 6:
        OUTLINED_FUNCTION_12();
        sub_1B964C560();
        break;
      case 7:
        v11 = OUTLINED_FUNCTION_9();
        sub_1B8DA65B0(v11, v12, v13, v14);
        break;
      case 8:
        v7 = OUTLINED_FUNCTION_9();
        sub_1B8DA6618(v7, v8, v9, v10);
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1B8DA6510(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Amppb_Offer(0);
  sub_1B8CD1910(&qword_1EBAB9730, type metadata accessor for Amppb_Offer, protocol conformance descriptor for Amppb_Offer);
  return sub_1B964C570();
}

uint64_t sub_1B8DA6618(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Amppb_Child(0);
  type metadata accessor for Amppb_Artwork(0);
  sub_1B8CD1910(&qword_1EBAB96E8, type metadata accessor for Amppb_Artwork, protocol conformance descriptor for Amppb_Artwork);
  return sub_1B964C580();
}

void Amppb_Child.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_273_0();
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9680, &unk_1B964EEA0);
  OUTLINED_FUNCTION_183(v21);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v22);
  v23 = OUTLINED_FUNCTION_151();
  v24 = type metadata accessor for Amppb_Artwork(v23);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_1();
  if (!v28 || (OUTLINED_FUNCTION_95_1(v26, v27, 1), !v19))
  {
    OUTLINED_FUNCTION_1();
    if (!v31 || (OUTLINED_FUNCTION_95_1(v29, v30, 2), !v19))
    {
      OUTLINED_FUNCTION_1();
      if (!v34 || (OUTLINED_FUNCTION_95_1(v32, v33, 3), !v19))
      {
        if (!*(v18[6] + 16) || (type metadata accessor for Amppb_Offer(0), sub_1B8CD1910(&qword_1EBAB9730, type metadata accessor for Amppb_Offer, protocol conformance descriptor for Amppb_Offer), OUTLINED_FUNCTION_231(), OUTLINED_FUNCTION_687(), sub_1B964C730(), !v19))
        {
          if (!v18[7] || (OUTLINED_FUNCTION_29(), sub_1B964C720(), !v19))
          {
            if (!v18[8] || (OUTLINED_FUNCTION_29(), sub_1B964C720(), !v19))
            {
              if (!v18[9] || (sub_1B8DAF9CC(), OUTLINED_FUNCTION_687(), sub_1B964C680(), !v19))
              {
                type metadata accessor for Amppb_Child(0);
                sub_1B8D92024();
                v35 = OUTLINED_FUNCTION_443();
                if (__swift_getEnumTagSinglePayload(v35, v36, v24) == 1)
                {
                  sub_1B8D9207C(v20, &qword_1EBAB9680, &unk_1B964EEA0);
                }

                else
                {
                  OUTLINED_FUNCTION_2_2();
                  sub_1B8D9ADF8();
                  OUTLINED_FUNCTION_141_0();
                  sub_1B8CD1910(v37, v38, protocol conformance descriptor for Amppb_Artwork);
                  OUTLINED_FUNCTION_687();
                  sub_1B964C740();
                  OUTLINED_FUNCTION_11_2();
                  sub_1B8D9B104();
                  if (v19)
                  {
                    goto LABEL_21;
                  }
                }

                OUTLINED_FUNCTION_1();
                if (!v41 || (OUTLINED_FUNCTION_3(v39, v40, 9), !v19))
                {
                  OUTLINED_FUNCTION_8_1();
                }
              }
            }
          }
        }
      }
    }
  }

LABEL_21:
  OUTLINED_FUNCTION_268_0();
  OUTLINED_FUNCTION_272_0();
}

void static Amppb_Child.== infix(_:_:)()
{
  OUTLINED_FUNCTION_284();
  v5 = OUTLINED_FUNCTION_112();
  type metadata accessor for Amppb_Artwork(v5);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_208();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9680, &unk_1B964EEA0);
  OUTLINED_FUNCTION_183(v7);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_137();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB96F0, &unk_1B964EEE0);
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_88();
  OUTLINED_FUNCTION_428();
  v13 = v13 && v11 == v12;
  if (!v13 && (sub_1B964C9F0() & 1) == 0)
  {
    goto LABEL_47;
  }

  OUTLINED_FUNCTION_265_0();
  v16 = v13 && v14 == v15;
  if (!v16 && (sub_1B964C9F0() & 1) == 0)
  {
    goto LABEL_47;
  }

  v17 = *(v1 + 32) == v0[4] && *(v1 + 40) == v0[5];
  if (!v17 && (sub_1B964C9F0() & 1) == 0)
  {
    goto LABEL_47;
  }

  sub_1B8D7E5B8(*(v1 + 48), v0[6]);
  if ((v18 & 1) == 0 || *(v1 + 56) != v0[7] || *(v1 + 64) != v0[8] || !sub_1B8D92198(*(v1 + 72), *(v1 + 80), v0[9]))
  {
    goto LABEL_47;
  }

  type metadata accessor for Amppb_Child(0);
  v19 = *(v9 + 48);
  OUTLINED_FUNCTION_201_0();
  OUTLINED_FUNCTION_200_0();
  OUTLINED_FUNCTION_37_0(v2);
  if (v13)
  {
    OUTLINED_FUNCTION_37_0(v2 + v19);
    if (v13)
    {
      sub_1B8D9207C(v2, &qword_1EBAB9680, &unk_1B964EEA0);
      goto LABEL_25;
    }

    goto LABEL_34;
  }

  OUTLINED_FUNCTION_1_0();
  sub_1B8D92024();
  OUTLINED_FUNCTION_37_0(v2 + v19);
  if (v25)
  {
    OUTLINED_FUNCTION_11_2();
    sub_1B8D9B104();
LABEL_34:
    v26 = &qword_1EBAB96F0;
    v27 = &unk_1B964EEE0;
LABEL_46:
    sub_1B8D9207C(v2, v26, v27);
LABEL_47:
    v24 = 0;
    goto LABEL_48;
  }

  OUTLINED_FUNCTION_2_2();
  sub_1B8D9ADF8();
  OUTLINED_FUNCTION_229_0();
  if (!v28 || v4[1] != v3[1] || (v4[2] == v3[2] ? (v29 = v4[3] == v3[3]) : (v29 = 0), !v29 && (sub_1B964C9F0() & 1) == 0))
  {
    OUTLINED_FUNCTION_155_0();
    sub_1B8D9B104();
    OUTLINED_FUNCTION_195();
    sub_1B8D9B104();
    v26 = &qword_1EBAB9680;
    v27 = &unk_1B964EEA0;
    goto LABEL_46;
  }

  v30 = sub_1B964C2B0();
  OUTLINED_FUNCTION_0_4();
  sub_1B8CD1910(v31, v32, MEMORY[0x1E69AAC10]);
  OUTLINED_FUNCTION_198_0();
  OUTLINED_FUNCTION_133_0();
  sub_1B8D9B104();
  OUTLINED_FUNCTION_278_0();
  sub_1B8D9207C(v2, &qword_1EBAB9680, &unk_1B964EEA0);
  if ((v30 & 1) == 0)
  {
    goto LABEL_47;
  }

LABEL_25:
  v20 = *(v1 + 88) == v0[11] && *(v1 + 96) == v0[12];
  if (!v20 && (sub_1B964C9F0() & 1) == 0)
  {
    goto LABEL_47;
  }

  sub_1B964C2B0();
  OUTLINED_FUNCTION_0_4();
  v23 = sub_1B8CD1910(v21, v22, MEMORY[0x1E69AAC10]);
  v24 = OUTLINED_FUNCTION_199_0(v23);
LABEL_48:
  OUTLINED_FUNCTION_264(v24);
  OUTLINED_FUNCTION_283();
}

uint64_t sub_1B8DA6DF0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD1910(&qword_1EBAB9968, type metadata accessor for Amppb_Child, protocol conformance descriptor for Amppb_Child);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B8DA6E70(uint64_t a1)
{
  v2 = sub_1B8CD1910(&qword_1EBAB9748, type metadata accessor for Amppb_Child, protocol conformance descriptor for Amppb_Child);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B8DA6EE0(uint64_t a1, uint64_t a2)
{
  sub_1B8CD1910(&qword_1EBAB9748, type metadata accessor for Amppb_Child, protocol conformance descriptor for Amppb_Child);

  return sub_1B964C5D0();
}

uint64_t sub_1B8DA6F80()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAB9648);
  __swift_project_value_buffer(v0, qword_1EBAB9648);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964EE70;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "release_date";
  *(v6 + 8) = 12;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "description";
  *(v10 + 8) = 11;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "itunes_notes";
  *(v12 + 1) = 12;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "user_rating";
  *(v14 + 1) = 11;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "children";
  *(v16 + 1) = 8;
  v16[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t Amppb_Parent.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_692();
  while (1)
  {
    OUTLINED_FUNCTION_186();
    result = sub_1B964C3C0();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        OUTLINED_FUNCTION_12();
        sub_1B964C530();
        break;
      case 2:
        v15 = OUTLINED_FUNCTION_9();
        sub_1B8DA72E8(v15, v16, v17, v18);
        break;
      case 3:
        v7 = OUTLINED_FUNCTION_9();
        sub_1B8DA739C(v7, v8, v9, v10);
        break;
      case 4:
        v11 = OUTLINED_FUNCTION_9();
        sub_1B8DA7450(v11, v12, v13, v14);
        break;
      case 5:
        v3 = OUTLINED_FUNCTION_9();
        sub_1B8DA7504(v3, v4, v5, v6);
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1B8DA72E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Amppb_Parent(0);
  type metadata accessor for Amppb_Description(0);
  sub_1B8CD1910(&qword_1EBAB9758, type metadata accessor for Amppb_Description, protocol conformance descriptor for Amppb_Description);
  return sub_1B964C580();
}

uint64_t sub_1B8DA739C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Amppb_Parent(0);
  type metadata accessor for Amppb_Description(0);
  sub_1B8CD1910(&qword_1EBAB9758, type metadata accessor for Amppb_Description, protocol conformance descriptor for Amppb_Description);
  return sub_1B964C580();
}

uint64_t sub_1B8DA7450(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Amppb_Parent(0);
  type metadata accessor for Amppb_UserRating(0);
  sub_1B8CD1910(&qword_1EBAB9750, type metadata accessor for Amppb_UserRating, protocol conformance descriptor for Amppb_UserRating);
  return sub_1B964C580();
}

uint64_t sub_1B8DA7504(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1B964C280();
  type metadata accessor for Amppb_Child(0);
  sub_1B8CD1910(&qword_1EBAB9748, type metadata accessor for Amppb_Child, protocol conformance descriptor for Amppb_Child);
  sub_1B8CD1910(&qword_1EBAB9740, type metadata accessor for Amppb_Child, protocol conformance descriptor for Amppb_Child);
  return sub_1B964C3A0();
}

void Amppb_Parent.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_273_0();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9690, &qword_1B964EEB8);
  OUTLINED_FUNCTION_183(v17);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v18);
  v41 = v40 - v19;
  v42 = type metadata accessor for Amppb_UserRating(0);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_256_0(v22 - v21);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9688, &qword_1B964EEB0);
  v24 = OUTLINED_FUNCTION_183(v23);
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_66();
  OUTLINED_FUNCTION_265();
  MEMORY[0x1EEE9AC00](v25);
  v27 = v40 - v26;
  v28 = type metadata accessor for Amppb_Description(0);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_44_0();
  v40[3] = v30;
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_219_0();
  OUTLINED_FUNCTION_1();
  if (!v32 || (sub_1B964C700(), !v15))
  {
    v40[1] = type metadata accessor for Amppb_Parent(0);
    sub_1B8D92024();
    if (__swift_getEnumTagSinglePayload(v27, 1, v28) == 1)
    {
      sub_1B8D9207C(v27, &qword_1EBAB9688, &qword_1B964EEB0);
    }

    else
    {
      OUTLINED_FUNCTION_1_3();
      sub_1B8D9ADF8();
      OUTLINED_FUNCTION_144_0();
      sub_1B8CD1910(v33, v34, protocol conformance descriptor for Amppb_Description);
      sub_1B964C740();
      OUTLINED_FUNCTION_10_2();
      sub_1B8D9B104();
      if (v15)
      {
        goto LABEL_15;
      }
    }

    sub_1B8D92024();
    v35 = OUTLINED_FUNCTION_443();
    if (__swift_getEnumTagSinglePayload(v35, v36, v28) == 1)
    {
      sub_1B8D9207C(v16, &qword_1EBAB9688, &qword_1B964EEB0);
    }

    else
    {
      OUTLINED_FUNCTION_1_3();
      sub_1B8D9ADF8();
      OUTLINED_FUNCTION_144_0();
      sub_1B8CD1910(v37, v38, protocol conformance descriptor for Amppb_Description);
      OUTLINED_FUNCTION_257_0();
      sub_1B964C740();
      OUTLINED_FUNCTION_10_2();
      sub_1B8D9B104();
      if (v15)
      {
        goto LABEL_15;
      }
    }

    v39 = v41;
    sub_1B8D92024();
    if (__swift_getEnumTagSinglePayload(v39, 1, v42) == 1)
    {
      sub_1B8D9207C(v39, &qword_1EBAB9690, &qword_1B964EEB8);
    }

    else
    {
      OUTLINED_FUNCTION_3_3();
      sub_1B8D9ADF8();
      sub_1B8CD1910(&qword_1EBAB9750, type metadata accessor for Amppb_UserRating, protocol conformance descriptor for Amppb_UserRating);
      OUTLINED_FUNCTION_257_0();
      sub_1B964C740();
      OUTLINED_FUNCTION_51_1();
      sub_1B8D9B104();
      if (v15)
      {
        goto LABEL_15;
      }
    }

    if (!*(*(v14 + 16) + 16) || (sub_1B964C280(), type metadata accessor for Amppb_Child(0), sub_1B8CD1910(&qword_1EBAB9748, type metadata accessor for Amppb_Child, protocol conformance descriptor for Amppb_Child), sub_1B8CD1910(&qword_1EBAB9740, type metadata accessor for Amppb_Child, protocol conformance descriptor for Amppb_Child), sub_1B964C5E0(), !v15))
    {
      sub_1B964C290();
    }
  }

LABEL_15:
  OUTLINED_FUNCTION_268_0();
  OUTLINED_FUNCTION_272_0();
}

void static Amppb_Parent.== infix(_:_:)()
{
  OUTLINED_FUNCTION_284();
  v3 = v2;
  v5 = v4;
  v64 = type metadata accessor for Amppb_UserRating(0);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_62();
  v9 = v8 - v7;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9690, &qword_1B964EEB8);
  OUTLINED_FUNCTION_183(v10);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v11);
  v13 = v61 - v12;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9760, &qword_1B964EEF0);
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v14);
  v65 = v61 - v15;
  type metadata accessor for Amppb_Description(0);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_44_0();
  v62 = v17;
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v18);
  v20 = (v61 - v19);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9688, &qword_1B964EEB0);
  v22 = OUTLINED_FUNCTION_183(v21);
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_44_0();
  OUTLINED_FUNCTION_94_0();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_87_0();
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9768, &qword_1B964EEF8);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_66();
  v28 = v26 - v27;
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_219_0();
  OUTLINED_FUNCTION_428();
  v32 = v32 && v30 == v31;
  if (!v32 && (sub_1B964C9F0() & 1) == 0)
  {
    goto LABEL_59;
  }

  v61[0] = v9;
  v61[1] = v13;
  v33 = type metadata accessor for Amppb_Parent(0);
  v67 = v3;
  v34 = *(v24 + 48);
  v61[2] = v33;
  v61[3] = v5;
  sub_1B8D92024();
  sub_1B8D92024();
  OUTLINED_FUNCTION_99_0(v0);
  if (v32)
  {
    OUTLINED_FUNCTION_99_0(v0 + v34);
    if (v32)
    {
      sub_1B8D9207C(v0, &qword_1EBAB9688, &qword_1B964EEB0);
      goto LABEL_27;
    }

    goto LABEL_14;
  }

  sub_1B8D92024();
  OUTLINED_FUNCTION_99_0(v0 + v34);
  if (v35)
  {
    OUTLINED_FUNCTION_10_2();
    sub_1B8D9B104();
LABEL_14:
    v36 = &qword_1EBAB9768;
    v37 = &qword_1B964EEF8;
LABEL_15:
    v38 = v0;
LABEL_58:
    sub_1B8D9207C(v38, v36, v37);
    goto LABEL_59;
  }

  OUTLINED_FUNCTION_1_3();
  sub_1B8D9ADF8();
  v39 = *v1 == *v20 && v1[1] == v20[1];
  if (!v39 && (sub_1B964C9F0() & 1) == 0 || (v1[2] == v20[2] ? (v40 = v1[3] == v20[3]) : (v40 = 0), !v40 && (sub_1B964C9F0() & 1) == 0))
  {
    OUTLINED_FUNCTION_148_0();
    sub_1B8D9B104();
    sub_1B8D9B104();
    v36 = &qword_1EBAB9688;
    v37 = &qword_1B964EEB0;
    goto LABEL_15;
  }

  v41 = sub_1B964C2B0();
  OUTLINED_FUNCTION_0_4();
  sub_1B8CD1910(v42, v43, MEMORY[0x1E69AAC10]);
  sub_1B964C850();
  OUTLINED_FUNCTION_168_1();
  sub_1B8D9B104();
  sub_1B8D9B104();
  sub_1B8D9207C(v0, &qword_1EBAB9688, &qword_1B964EEB0);
  if ((v41 & 1) == 0)
  {
    goto LABEL_59;
  }

LABEL_27:
  v44 = *(v24 + 48);
  sub_1B8D92024();
  sub_1B8D92024();
  OUTLINED_FUNCTION_99_0(v28);
  if (v32)
  {
    OUTLINED_FUNCTION_99_0(v28 + v44);
    if (v32)
    {
      sub_1B8D9207C(v28, &qword_1EBAB9688, &qword_1B964EEB0);
      goto LABEL_49;
    }

    goto LABEL_35;
  }

  v45 = v66;
  sub_1B8D92024();
  OUTLINED_FUNCTION_99_0(v28 + v44);
  if (v46)
  {
    OUTLINED_FUNCTION_10_2();
    sub_1B8D9B104();
LABEL_35:
    v36 = &qword_1EBAB9768;
    v37 = &qword_1B964EEF8;
LABEL_36:
    v38 = v28;
    goto LABEL_58;
  }

  OUTLINED_FUNCTION_1_3();
  v47 = v62;
  sub_1B8D9ADF8();
  v48 = *v45 == *v47 && v45[1] == v47[1];
  if (!v48 && (sub_1B964C9F0() & 1) == 0 || (v45[2] == v47[2] ? (v49 = v45[3] == v47[3]) : (v49 = 0), !v49 && (sub_1B964C9F0() & 1) == 0))
  {
    OUTLINED_FUNCTION_148_0();
    sub_1B8D9B104();
    sub_1B8D9B104();
    v36 = &qword_1EBAB9688;
    v37 = &qword_1B964EEB0;
    goto LABEL_36;
  }

  v50 = sub_1B964C2B0();
  OUTLINED_FUNCTION_0_4();
  sub_1B8CD1910(v51, v52, MEMORY[0x1E69AAC10]);
  sub_1B964C850();
  OUTLINED_FUNCTION_168_1();
  sub_1B8D9B104();
  sub_1B8D9B104();
  sub_1B8D9207C(v28, &qword_1EBAB9688, &qword_1B964EEB0);
  if ((v50 & 1) == 0)
  {
    goto LABEL_59;
  }

LABEL_49:
  v53 = *(v63 + 48);
  v54 = v65;
  sub_1B8D92024();
  sub_1B8D92024();
  OUTLINED_FUNCTION_178(v54, 1, v64);
  if (!v32)
  {
    sub_1B8D92024();
    OUTLINED_FUNCTION_37_0(v54 + v53);
    if (!v55)
    {
      OUTLINED_FUNCTION_3_3();
      sub_1B8D9ADF8();
      v57 = static Amppb_UserRating.== infix(_:_:)();
      sub_1B8D9B104();
      sub_1B8D9B104();
      sub_1B8D9207C(v54, &qword_1EBAB9690, &qword_1B964EEB8);
      if ((v57 & 1) == 0)
      {
        goto LABEL_59;
      }

      goto LABEL_63;
    }

    OUTLINED_FUNCTION_51_1();
    sub_1B8D9B104();
    goto LABEL_57;
  }

  OUTLINED_FUNCTION_37_0(v54 + v53);
  if (!v32)
  {
LABEL_57:
    v36 = &qword_1EBAB9760;
    v37 = &qword_1B964EEF0;
    v38 = v54;
    goto LABEL_58;
  }

  sub_1B8D9207C(v54, &qword_1EBAB9690, &qword_1B964EEB8);
LABEL_63:
  sub_1B8DB2AD0();
  if (v58)
  {
    sub_1B964C2B0();
    OUTLINED_FUNCTION_0_4();
    sub_1B8CD1910(v59, v60, MEMORY[0x1E69AAC10]);
    v56 = sub_1B964C850();
    goto LABEL_60;
  }

LABEL_59:
  v56 = 0;
LABEL_60:
  OUTLINED_FUNCTION_264(v56);
  OUTLINED_FUNCTION_283();
}

uint64_t sub_1B8DA8350(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD1910(&qword_1EBAB9960, type metadata accessor for Amppb_Parent, protocol conformance descriptor for Amppb_Parent);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B8DA83D0(uint64_t a1)
{
  v2 = sub_1B8CD1910(&qword_1EBAB9898, type metadata accessor for Amppb_Parent, protocol conformance descriptor for Amppb_Parent);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B8DA8440(uint64_t a1, uint64_t a2)
{
  sub_1B8CD1910(&qword_1EBAB9898, type metadata accessor for Amppb_Parent, protocol conformance descriptor for Amppb_Parent);

  return sub_1B964C5D0();
}

uint64_t sub_1B8DA84E0()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAB9660);
  __swift_project_value_buffer(v0, qword_1EBAB9660);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v68 = swift_allocObject();
  *(v68 + 16) = xmmword_1B964EE90;
  v4 = v68 + v3 + v1[14];
  *(v68 + v3) = 1;
  *v4 = "name";
  *(v4 + 8) = 4;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x1E69AADC8];
  v6 = sub_1B964C750();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v68 + v3 + v2 + v1[14];
  *(v68 + v3 + v2) = 2;
  *v8 = "artwork";
  *(v8 + 8) = 7;
  *(v8 + 16) = 2;
  v7();
  v9 = (v68 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 3;
  *v10 = "genre_names";
  *(v10 + 1) = 11;
  v10[16] = 2;
  v7();
  v11 = (v68 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 4;
  *v12 = "url";
  *(v12 + 1) = 3;
  v12[16] = 2;
  v7();
  v13 = (v68 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 5;
  *v14 = "content_ratings_by_system";
  *(v14 + 1) = 25;
  v14[16] = 2;
  v7();
  v15 = (v68 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 6;
  *v16 = "born_or_formed";
  *(v16 + 1) = 14;
  v16[16] = 2;
  v7();
  v17 = (v68 + v3 + 6 * v2);
  v18 = v17 + v1[14];
  *v17 = 7;
  *v18 = "origin";
  *(v18 + 1) = 6;
  v18[16] = 2;
  v7();
  v19 = (v68 + v3 + 7 * v2);
  v20 = v19 + v1[14];
  *v19 = 8;
  *v20 = "offers";
  *(v20 + 1) = 6;
  v20[16] = 2;
  v7();
  v21 = (v68 + v3 + 8 * v2);
  v22 = v21 + v1[14];
  *v21 = 9;
  *v22 = "software_info";
  *(v22 + 1) = 13;
  v22[16] = 2;
  v7();
  v23 = (v68 + v3 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 10;
  *v24 = "collection_id";
  *(v24 + 1) = 13;
  v24[16] = 2;
  v7();
  v25 = (v68 + v3 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 11;
  *v26 = "collection_name";
  *(v26 + 1) = 15;
  v26[16] = 2;
  v7();
  v27 = (v68 + v3 + 11 * v2);
  v28 = v27 + v1[14];
  *v27 = 12;
  *v28 = "description";
  *(v28 + 1) = 11;
  v28[16] = 2;
  v7();
  v29 = (v68 + v3 + 12 * v2);
  v30 = v29 + v1[14];
  *v29 = 13;
  *v30 = "itunes_notes";
  *(v30 + 1) = 12;
  v30[16] = 2;
  v7();
  v31 = (v68 + v3 + 13 * v2);
  v32 = v31 + v1[14];
  *v31 = 14;
  *v32 = "device_families";
  *(v32 + 1) = 15;
  v32[16] = 2;
  v7();
  v33 = (v68 + v3 + 14 * v2);
  v34 = v33 + v1[14];
  *v33 = 15;
  *v34 = "bundle_id";
  *(v34 + 1) = 9;
  v34[16] = 2;
  v7();
  v35 = (v68 + v3 + 15 * v2);
  v36 = v35 + v1[14];
  *v35 = 16;
  *v36 = "bundle_display_name";
  *(v36 + 1) = 19;
  v36[16] = 2;
  v7();
  v37 = (v68 + v3 + 16 * v2);
  v38 = v37 + v1[14];
  *v37 = 17;
  *v38 = "copyright";
  *(v38 + 1) = 9;
  v38[16] = 2;
  v7();
  v39 = (v68 + v3 + 17 * v2);
  v40 = v39 + v1[14];
  *v39 = 18;
  *v40 = "kind";
  *(v40 + 1) = 4;
  v40[16] = 2;
  v7();
  v41 = (v68 + v3 + 18 * v2);
  v42 = v41 + v1[14];
  *v41 = 19;
  *v42 = "id";
  *(v42 + 1) = 2;
  v42[16] = 2;
  v7();
  v43 = (v68 + v3 + 19 * v2);
  v44 = v43 + v1[14];
  *v43 = 20;
  *v44 = "name_raw";
  *(v44 + 1) = 8;
  v44[16] = 2;
  v7();
  v45 = (v68 + v3 + 20 * v2);
  v46 = v45 + v1[14];
  *v45 = 21;
  *v46 = "user_rating";
  *(v46 + 1) = 11;
  v46[16] = 2;
  v7();
  v47 = (v68 + v3 + 21 * v2);
  v48 = v47 + v1[14];
  *v47 = 22;
  *v48 = "rotten_tomatoes_reviews";
  *(v48 + 1) = 23;
  v48[16] = 2;
  v7();
  v49 = (v68 + v3 + 22 * v2);
  v50 = v49 + v1[14];
  *v49 = 23;
  *v50 = "e_book_info";
  *(v50 + 1) = 11;
  v50[16] = 2;
  v7();
  v51 = (v68 + v3 + 23 * v2);
  v52 = v51 + v1[14];
  *v51 = 24;
  *v52 = "disc_number";
  *(v52 + 1) = 11;
  v52[16] = 2;
  v7();
  v53 = (v68 + v3 + 24 * v2);
  v54 = v53 + v1[14];
  *v53 = 25;
  *v54 = "track_number";
  *(v54 + 1) = 12;
  v54[16] = 2;
  v7();
  v55 = (v68 + v3 + 25 * v2);
  v56 = v55 + v1[14];
  *v55 = 26;
  *v56 = "artist_name";
  *(v56 + 1) = 11;
  v56[16] = 2;
  v7();
  v57 = (v68 + v3 + 26 * v2);
  v58 = v57 + v1[14];
  *v57 = 27;
  *v58 = "artist_bio";
  *(v58 + 1) = 10;
  v58[16] = 2;
  v7();
  v59 = (v68 + v3 + 27 * v2);
  v60 = v59 + v1[14];
  *v59 = 28;
  *v60 = "release_date";
  *(v60 + 1) = 12;
  v60[16] = 2;
  v7();
  v61 = (v68 + v3 + 28 * v2);
  v62 = v61 + v1[14];
  *v61 = 29;
  *v62 = "children";
  *(v62 + 1) = 8;
  v62[16] = 2;
  v7();
  v63 = (v68 + v3 + 29 * v2);
  v64 = v63 + v1[14];
  *v63 = 30;
  *v64 = "movie_clips";
  *(v64 + 1) = 11;
  v64[16] = 2;
  v7();
  v65 = (v68 + v3 + 30 * v2);
  v66 = v65 + v1[14];
  *v65 = 31;
  *v66 = "parent";
  *(v66 + 1) = 6;
  v66[16] = 2;
  v7();
  return sub_1B964C760();
}

uint64_t sub_1B8DA8DBC()
{
  type metadata accessor for Amppb_Content._StorageClass(0);
  swift_allocObject();
  result = sub_1B8DA8DFC();
  qword_1EBAB9678 = result;
  return result;
}

uint64_t sub_1B8DA8DFC()
{
  *(v0 + 16) = 0;
  *(v0 + 24) = 0xE000000000000000;
  v1 = OBJC_IVAR____TtCV10PegasusAPI13Amppb_ContentP33_DBCA56248B3174DB33A494A6214DCF2913_StorageClass__artwork;
  v2 = type metadata accessor for Amppb_Artwork(0);
  __swift_storeEnumTagSinglePayload(v0 + v1, 1, 1, v2);
  v3 = MEMORY[0x1E69E7CC0];
  *(v0 + OBJC_IVAR____TtCV10PegasusAPI13Amppb_ContentP33_DBCA56248B3174DB33A494A6214DCF2913_StorageClass__genreNames) = MEMORY[0x1E69E7CC0];
  v4 = (v0 + OBJC_IVAR____TtCV10PegasusAPI13Amppb_ContentP33_DBCA56248B3174DB33A494A6214DCF2913_StorageClass__url);
  *v4 = 0;
  v4[1] = 0xE000000000000000;
  v5 = OBJC_IVAR____TtCV10PegasusAPI13Amppb_ContentP33_DBCA56248B3174DB33A494A6214DCF2913_StorageClass__contentRatingsBySystem;
  type metadata accessor for Amppb_ContentRating(0);
  *(v0 + v5) = sub_1B964C7B0();
  v6 = (v0 + OBJC_IVAR____TtCV10PegasusAPI13Amppb_ContentP33_DBCA56248B3174DB33A494A6214DCF2913_StorageClass__bornOrFormed);
  *v6 = 0;
  v6[1] = 0xE000000000000000;
  v7 = (v0 + OBJC_IVAR____TtCV10PegasusAPI13Amppb_ContentP33_DBCA56248B3174DB33A494A6214DCF2913_StorageClass__origin);
  *v7 = 0;
  v7[1] = 0xE000000000000000;
  *(v0 + OBJC_IVAR____TtCV10PegasusAPI13Amppb_ContentP33_DBCA56248B3174DB33A494A6214DCF2913_StorageClass__offers) = v3;
  v8 = OBJC_IVAR____TtCV10PegasusAPI13Amppb_ContentP33_DBCA56248B3174DB33A494A6214DCF2913_StorageClass__softwareInfo;
  v9 = type metadata accessor for Amppb_SoftwareInfo(0);
  __swift_storeEnumTagSinglePayload(v0 + v8, 1, 1, v9);
  v10 = (v0 + OBJC_IVAR____TtCV10PegasusAPI13Amppb_ContentP33_DBCA56248B3174DB33A494A6214DCF2913_StorageClass__collectionID);
  *v10 = 0;
  v10[1] = 0xE000000000000000;
  v11 = (v0 + OBJC_IVAR____TtCV10PegasusAPI13Amppb_ContentP33_DBCA56248B3174DB33A494A6214DCF2913_StorageClass__collectionName);
  *v11 = 0;
  v11[1] = 0xE000000000000000;
  v12 = OBJC_IVAR____TtCV10PegasusAPI13Amppb_ContentP33_DBCA56248B3174DB33A494A6214DCF2913_StorageClass__description_p;
  v13 = type metadata accessor for Amppb_Description(0);
  __swift_storeEnumTagSinglePayload(v0 + v12, 1, 1, v13);
  __swift_storeEnumTagSinglePayload(v0 + OBJC_IVAR____TtCV10PegasusAPI13Amppb_ContentP33_DBCA56248B3174DB33A494A6214DCF2913_StorageClass__itunesNotes, 1, 1, v13);
  *(v0 + OBJC_IVAR____TtCV10PegasusAPI13Amppb_ContentP33_DBCA56248B3174DB33A494A6214DCF2913_StorageClass__deviceFamilies) = v3;
  v14 = (v0 + OBJC_IVAR____TtCV10PegasusAPI13Amppb_ContentP33_DBCA56248B3174DB33A494A6214DCF2913_StorageClass__bundleID);
  *v14 = 0;
  v14[1] = 0xE000000000000000;
  v15 = (v0 + OBJC_IVAR____TtCV10PegasusAPI13Amppb_ContentP33_DBCA56248B3174DB33A494A6214DCF2913_StorageClass__bundleDisplayName);
  *v15 = 0;
  v15[1] = 0xE000000000000000;
  v16 = (v0 + OBJC_IVAR____TtCV10PegasusAPI13Amppb_ContentP33_DBCA56248B3174DB33A494A6214DCF2913_StorageClass__copyright);
  *v16 = 0;
  v16[1] = 0xE000000000000000;
  v17 = v0 + OBJC_IVAR____TtCV10PegasusAPI13Amppb_ContentP33_DBCA56248B3174DB33A494A6214DCF2913_StorageClass__kind;
  *v17 = 0;
  *(v17 + 8) = 1;
  v18 = (v0 + OBJC_IVAR____TtCV10PegasusAPI13Amppb_ContentP33_DBCA56248B3174DB33A494A6214DCF2913_StorageClass__id);
  *v18 = 0;
  v18[1] = 0xE000000000000000;
  v19 = (v0 + OBJC_IVAR____TtCV10PegasusAPI13Amppb_ContentP33_DBCA56248B3174DB33A494A6214DCF2913_StorageClass__nameRaw);
  *v19 = 0;
  v19[1] = 0xE000000000000000;
  v20 = OBJC_IVAR____TtCV10PegasusAPI13Amppb_ContentP33_DBCA56248B3174DB33A494A6214DCF2913_StorageClass__userRating;
  v21 = type metadata accessor for Amppb_UserRating(0);
  __swift_storeEnumTagSinglePayload(v0 + v20, 1, 1, v21);
  v22 = OBJC_IVAR____TtCV10PegasusAPI13Amppb_ContentP33_DBCA56248B3174DB33A494A6214DCF2913_StorageClass__rottenTomatoesReviews;
  v23 = type metadata accessor for Amppb_RottenTomatoesReviews(0);
  __swift_storeEnumTagSinglePayload(v0 + v22, 1, 1, v23);
  v24 = OBJC_IVAR____TtCV10PegasusAPI13Amppb_ContentP33_DBCA56248B3174DB33A494A6214DCF2913_StorageClass__eBookInfo;
  v25 = type metadata accessor for Amppb_EbookInfo(0);
  __swift_storeEnumTagSinglePayload(v0 + v24, 1, 1, v25);
  *(v0 + OBJC_IVAR____TtCV10PegasusAPI13Amppb_ContentP33_DBCA56248B3174DB33A494A6214DCF2913_StorageClass__discNumber) = 0;
  *(v0 + OBJC_IVAR____TtCV10PegasusAPI13Amppb_ContentP33_DBCA56248B3174DB33A494A6214DCF2913_StorageClass__trackNumber) = 0;
  v26 = (v0 + OBJC_IVAR____TtCV10PegasusAPI13Amppb_ContentP33_DBCA56248B3174DB33A494A6214DCF2913_StorageClass__artistName);
  *v26 = 0;
  v26[1] = 0xE000000000000000;
  *(v0 + OBJC_IVAR____TtCV10PegasusAPI13Amppb_ContentP33_DBCA56248B3174DB33A494A6214DCF2913_StorageClass__artistBio) = v3;
  v27 = (v0 + OBJC_IVAR____TtCV10PegasusAPI13Amppb_ContentP33_DBCA56248B3174DB33A494A6214DCF2913_StorageClass__releaseDate);
  *v27 = 0;
  v27[1] = 0xE000000000000000;
  v28 = OBJC_IVAR____TtCV10PegasusAPI13Amppb_ContentP33_DBCA56248B3174DB33A494A6214DCF2913_StorageClass__children;
  type metadata accessor for Amppb_Child(0);
  *(v0 + v28) = sub_1B964C7B0();
  *(v0 + OBJC_IVAR____TtCV10PegasusAPI13Amppb_ContentP33_DBCA56248B3174DB33A494A6214DCF2913_StorageClass__movieClips) = v3;
  v29 = OBJC_IVAR____TtCV10PegasusAPI13Amppb_ContentP33_DBCA56248B3174DB33A494A6214DCF2913_StorageClass__parent;
  v30 = type metadata accessor for Amppb_Parent(0);
  __swift_storeEnumTagSinglePayload(v0 + v29, 1, 1, v30);
  return v0;
}

uint64_t sub_1B8DA90EC(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB96B0, &qword_1B964EED8);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v158 = v126 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB96A8, &qword_1B964EED0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v157 = v126 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB96A0, &qword_1B964EEC8);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v156 = v126 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9690, &qword_1B964EEB8);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v154 = v126 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9688, &qword_1B964EEB0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v139 = v126 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9698, &qword_1B964EEC0);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v134 = v126 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9680, &unk_1B964EEA0);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v126[1] = v126 - v16;
  *(v1 + 16) = 0;
  *(v1 + 24) = 0xE000000000000000;
  v17 = OBJC_IVAR____TtCV10PegasusAPI13Amppb_ContentP33_DBCA56248B3174DB33A494A6214DCF2913_StorageClass__artwork;
  v126[0] = OBJC_IVAR____TtCV10PegasusAPI13Amppb_ContentP33_DBCA56248B3174DB33A494A6214DCF2913_StorageClass__artwork;
  v18 = type metadata accessor for Amppb_Artwork(0);
  __swift_storeEnumTagSinglePayload(v1 + v17, 1, 1, v18);
  v127 = OBJC_IVAR____TtCV10PegasusAPI13Amppb_ContentP33_DBCA56248B3174DB33A494A6214DCF2913_StorageClass__genreNames;
  v19 = MEMORY[0x1E69E7CC0];
  *(v1 + OBJC_IVAR____TtCV10PegasusAPI13Amppb_ContentP33_DBCA56248B3174DB33A494A6214DCF2913_StorageClass__genreNames) = MEMORY[0x1E69E7CC0];
  v20 = (v1 + OBJC_IVAR____TtCV10PegasusAPI13Amppb_ContentP33_DBCA56248B3174DB33A494A6214DCF2913_StorageClass__url);
  *v20 = 0;
  v20[1] = 0xE000000000000000;
  v21 = OBJC_IVAR____TtCV10PegasusAPI13Amppb_ContentP33_DBCA56248B3174DB33A494A6214DCF2913_StorageClass__contentRatingsBySystem;
  v128 = OBJC_IVAR____TtCV10PegasusAPI13Amppb_ContentP33_DBCA56248B3174DB33A494A6214DCF2913_StorageClass__contentRatingsBySystem;
  type metadata accessor for Amppb_ContentRating(0);
  *(v1 + v21) = sub_1B964C7B0();
  v22 = (v1 + OBJC_IVAR____TtCV10PegasusAPI13Amppb_ContentP33_DBCA56248B3174DB33A494A6214DCF2913_StorageClass__bornOrFormed);
  *v22 = 0;
  v22[1] = 0xE000000000000000;
  v23 = (v1 + OBJC_IVAR____TtCV10PegasusAPI13Amppb_ContentP33_DBCA56248B3174DB33A494A6214DCF2913_StorageClass__origin);
  v129 = (v1 + OBJC_IVAR____TtCV10PegasusAPI13Amppb_ContentP33_DBCA56248B3174DB33A494A6214DCF2913_StorageClass__origin);
  *v23 = 0;
  v23[1] = 0xE000000000000000;
  v130 = OBJC_IVAR____TtCV10PegasusAPI13Amppb_ContentP33_DBCA56248B3174DB33A494A6214DCF2913_StorageClass__offers;
  *(v1 + OBJC_IVAR____TtCV10PegasusAPI13Amppb_ContentP33_DBCA56248B3174DB33A494A6214DCF2913_StorageClass__offers) = v19;
  v24 = OBJC_IVAR____TtCV10PegasusAPI13Amppb_ContentP33_DBCA56248B3174DB33A494A6214DCF2913_StorageClass__softwareInfo;
  v131 = OBJC_IVAR____TtCV10PegasusAPI13Amppb_ContentP33_DBCA56248B3174DB33A494A6214DCF2913_StorageClass__softwareInfo;
  v25 = type metadata accessor for Amppb_SoftwareInfo(0);
  __swift_storeEnumTagSinglePayload(v1 + v24, 1, 1, v25);
  v26 = (v1 + OBJC_IVAR____TtCV10PegasusAPI13Amppb_ContentP33_DBCA56248B3174DB33A494A6214DCF2913_StorageClass__collectionID);
  v132 = (v1 + OBJC_IVAR____TtCV10PegasusAPI13Amppb_ContentP33_DBCA56248B3174DB33A494A6214DCF2913_StorageClass__collectionID);
  *v26 = 0;
  v26[1] = 0xE000000000000000;
  v27 = (v1 + OBJC_IVAR____TtCV10PegasusAPI13Amppb_ContentP33_DBCA56248B3174DB33A494A6214DCF2913_StorageClass__collectionName);
  v133 = (v1 + OBJC_IVAR____TtCV10PegasusAPI13Amppb_ContentP33_DBCA56248B3174DB33A494A6214DCF2913_StorageClass__collectionName);
  *v27 = 0;
  v27[1] = 0xE000000000000000;
  v28 = OBJC_IVAR____TtCV10PegasusAPI13Amppb_ContentP33_DBCA56248B3174DB33A494A6214DCF2913_StorageClass__description_p;
  v29 = type metadata accessor for Amppb_Description(0);
  __swift_storeEnumTagSinglePayload(v1 + v28, 1, 1, v29);
  v135 = OBJC_IVAR____TtCV10PegasusAPI13Amppb_ContentP33_DBCA56248B3174DB33A494A6214DCF2913_StorageClass__itunesNotes;
  __swift_storeEnumTagSinglePayload(v1 + OBJC_IVAR____TtCV10PegasusAPI13Amppb_ContentP33_DBCA56248B3174DB33A494A6214DCF2913_StorageClass__itunesNotes, 1, 1, v29);
  v136 = OBJC_IVAR____TtCV10PegasusAPI13Amppb_ContentP33_DBCA56248B3174DB33A494A6214DCF2913_StorageClass__deviceFamilies;
  *(v1 + OBJC_IVAR____TtCV10PegasusAPI13Amppb_ContentP33_DBCA56248B3174DB33A494A6214DCF2913_StorageClass__deviceFamilies) = v19;
  v30 = (v1 + OBJC_IVAR____TtCV10PegasusAPI13Amppb_ContentP33_DBCA56248B3174DB33A494A6214DCF2913_StorageClass__bundleID);
  v137 = (v1 + OBJC_IVAR____TtCV10PegasusAPI13Amppb_ContentP33_DBCA56248B3174DB33A494A6214DCF2913_StorageClass__bundleID);
  *v30 = 0;
  v30[1] = 0xE000000000000000;
  v31 = (v1 + OBJC_IVAR____TtCV10PegasusAPI13Amppb_ContentP33_DBCA56248B3174DB33A494A6214DCF2913_StorageClass__bundleDisplayName);
  v138 = (v1 + OBJC_IVAR____TtCV10PegasusAPI13Amppb_ContentP33_DBCA56248B3174DB33A494A6214DCF2913_StorageClass__bundleDisplayName);
  *v31 = 0;
  v31[1] = 0xE000000000000000;
  v32 = (v1 + OBJC_IVAR____TtCV10PegasusAPI13Amppb_ContentP33_DBCA56248B3174DB33A494A6214DCF2913_StorageClass__copyright);
  v140 = (v1 + OBJC_IVAR____TtCV10PegasusAPI13Amppb_ContentP33_DBCA56248B3174DB33A494A6214DCF2913_StorageClass__copyright);
  *v32 = 0;
  v32[1] = 0xE000000000000000;
  v33 = v1 + OBJC_IVAR____TtCV10PegasusAPI13Amppb_ContentP33_DBCA56248B3174DB33A494A6214DCF2913_StorageClass__kind;
  v141 = v1 + OBJC_IVAR____TtCV10PegasusAPI13Amppb_ContentP33_DBCA56248B3174DB33A494A6214DCF2913_StorageClass__kind;
  *v33 = 0;
  *(v33 + 8) = 1;
  v34 = (v1 + OBJC_IVAR____TtCV10PegasusAPI13Amppb_ContentP33_DBCA56248B3174DB33A494A6214DCF2913_StorageClass__id);
  v142 = (v1 + OBJC_IVAR____TtCV10PegasusAPI13Amppb_ContentP33_DBCA56248B3174DB33A494A6214DCF2913_StorageClass__id);
  *v34 = 0;
  v34[1] = 0xE000000000000000;
  v35 = (v1 + OBJC_IVAR____TtCV10PegasusAPI13Amppb_ContentP33_DBCA56248B3174DB33A494A6214DCF2913_StorageClass__nameRaw);
  v143 = (v1 + OBJC_IVAR____TtCV10PegasusAPI13Amppb_ContentP33_DBCA56248B3174DB33A494A6214DCF2913_StorageClass__nameRaw);
  *v35 = 0;
  v35[1] = 0xE000000000000000;
  v36 = OBJC_IVAR____TtCV10PegasusAPI13Amppb_ContentP33_DBCA56248B3174DB33A494A6214DCF2913_StorageClass__userRating;
  v144 = OBJC_IVAR____TtCV10PegasusAPI13Amppb_ContentP33_DBCA56248B3174DB33A494A6214DCF2913_StorageClass__userRating;
  v37 = type metadata accessor for Amppb_UserRating(0);
  __swift_storeEnumTagSinglePayload(v1 + v36, 1, 1, v37);
  v38 = OBJC_IVAR____TtCV10PegasusAPI13Amppb_ContentP33_DBCA56248B3174DB33A494A6214DCF2913_StorageClass__rottenTomatoesReviews;
  v145 = OBJC_IVAR____TtCV10PegasusAPI13Amppb_ContentP33_DBCA56248B3174DB33A494A6214DCF2913_StorageClass__rottenTomatoesReviews;
  v39 = type metadata accessor for Amppb_RottenTomatoesReviews(0);
  __swift_storeEnumTagSinglePayload(v1 + v38, 1, 1, v39);
  v40 = OBJC_IVAR____TtCV10PegasusAPI13Amppb_ContentP33_DBCA56248B3174DB33A494A6214DCF2913_StorageClass__eBookInfo;
  v146 = OBJC_IVAR____TtCV10PegasusAPI13Amppb_ContentP33_DBCA56248B3174DB33A494A6214DCF2913_StorageClass__eBookInfo;
  v41 = type metadata accessor for Amppb_EbookInfo(0);
  __swift_storeEnumTagSinglePayload(v1 + v40, 1, 1, v41);
  v147 = OBJC_IVAR____TtCV10PegasusAPI13Amppb_ContentP33_DBCA56248B3174DB33A494A6214DCF2913_StorageClass__discNumber;
  *(v1 + OBJC_IVAR____TtCV10PegasusAPI13Amppb_ContentP33_DBCA56248B3174DB33A494A6214DCF2913_StorageClass__discNumber) = 0;
  v148 = OBJC_IVAR____TtCV10PegasusAPI13Amppb_ContentP33_DBCA56248B3174DB33A494A6214DCF2913_StorageClass__trackNumber;
  *(v1 + OBJC_IVAR____TtCV10PegasusAPI13Amppb_ContentP33_DBCA56248B3174DB33A494A6214DCF2913_StorageClass__trackNumber) = 0;
  v42 = (v1 + OBJC_IVAR____TtCV10PegasusAPI13Amppb_ContentP33_DBCA56248B3174DB33A494A6214DCF2913_StorageClass__artistName);
  v149 = (v1 + OBJC_IVAR____TtCV10PegasusAPI13Amppb_ContentP33_DBCA56248B3174DB33A494A6214DCF2913_StorageClass__artistName);
  *v42 = 0;
  v42[1] = 0xE000000000000000;
  v150 = OBJC_IVAR____TtCV10PegasusAPI13Amppb_ContentP33_DBCA56248B3174DB33A494A6214DCF2913_StorageClass__artistBio;
  *(v1 + OBJC_IVAR____TtCV10PegasusAPI13Amppb_ContentP33_DBCA56248B3174DB33A494A6214DCF2913_StorageClass__artistBio) = v19;
  v43 = (v1 + OBJC_IVAR____TtCV10PegasusAPI13Amppb_ContentP33_DBCA56248B3174DB33A494A6214DCF2913_StorageClass__releaseDate);
  v151 = (v1 + OBJC_IVAR____TtCV10PegasusAPI13Amppb_ContentP33_DBCA56248B3174DB33A494A6214DCF2913_StorageClass__releaseDate);
  *v43 = 0;
  v43[1] = 0xE000000000000000;
  v44 = OBJC_IVAR____TtCV10PegasusAPI13Amppb_ContentP33_DBCA56248B3174DB33A494A6214DCF2913_StorageClass__children;
  v152 = OBJC_IVAR____TtCV10PegasusAPI13Amppb_ContentP33_DBCA56248B3174DB33A494A6214DCF2913_StorageClass__children;
  type metadata accessor for Amppb_Child(0);
  *(v1 + v44) = sub_1B964C7B0();
  v153 = OBJC_IVAR____TtCV10PegasusAPI13Amppb_ContentP33_DBCA56248B3174DB33A494A6214DCF2913_StorageClass__movieClips;
  *(v1 + OBJC_IVAR____TtCV10PegasusAPI13Amppb_ContentP33_DBCA56248B3174DB33A494A6214DCF2913_StorageClass__movieClips) = v19;
  v45 = OBJC_IVAR____TtCV10PegasusAPI13Amppb_ContentP33_DBCA56248B3174DB33A494A6214DCF2913_StorageClass__parent;
  v155 = OBJC_IVAR____TtCV10PegasusAPI13Amppb_ContentP33_DBCA56248B3174DB33A494A6214DCF2913_StorageClass__parent;
  v46 = type metadata accessor for Amppb_Parent(0);
  __swift_storeEnumTagSinglePayload(v1 + v45, 1, 1, v46);
  swift_beginAccess();
  v48 = *(a1 + 16);
  v47 = *(a1 + 24);
  swift_beginAccess();
  *(v1 + 16) = v48;
  *(v1 + 24) = v47;

  swift_beginAccess();
  sub_1B8D92024();
  swift_beginAccess();
  sub_1B8DAA170();
  swift_endAccess();
  v49 = OBJC_IVAR____TtCV10PegasusAPI13Amppb_ContentP33_DBCA56248B3174DB33A494A6214DCF2913_StorageClass__genreNames;
  swift_beginAccess();
  v50 = *(a1 + v49);
  v51 = v127;
  swift_beginAccess();
  *(v1 + v51) = v50;

  v52 = (a1 + OBJC_IVAR____TtCV10PegasusAPI13Amppb_ContentP33_DBCA56248B3174DB33A494A6214DCF2913_StorageClass__url);
  swift_beginAccess();
  v54 = *v52;
  v53 = v52[1];
  swift_beginAccess();
  *v20 = v54;
  v20[1] = v53;

  v55 = OBJC_IVAR____TtCV10PegasusAPI13Amppb_ContentP33_DBCA56248B3174DB33A494A6214DCF2913_StorageClass__contentRatingsBySystem;
  swift_beginAccess();
  v56 = *(a1 + v55);
  v57 = v128;
  swift_beginAccess();
  *(v1 + v57) = v56;

  v58 = (a1 + OBJC_IVAR____TtCV10PegasusAPI13Amppb_ContentP33_DBCA56248B3174DB33A494A6214DCF2913_StorageClass__bornOrFormed);
  swift_beginAccess();
  v60 = *v58;
  v59 = v58[1];
  swift_beginAccess();
  *v22 = v60;
  v22[1] = v59;

  v61 = (a1 + OBJC_IVAR____TtCV10PegasusAPI13Amppb_ContentP33_DBCA56248B3174DB33A494A6214DCF2913_StorageClass__origin);
  swift_beginAccess();
  v63 = *v61;
  v62 = v61[1];
  v64 = v129;
  swift_beginAccess();
  *v64 = v63;
  v64[1] = v62;

  v65 = OBJC_IVAR____TtCV10PegasusAPI13Amppb_ContentP33_DBCA56248B3174DB33A494A6214DCF2913_StorageClass__offers;
  swift_beginAccess();
  v66 = *(a1 + v65);
  v67 = v130;
  swift_beginAccess();
  *(v1 + v67) = v66;

  swift_beginAccess();
  sub_1B8D92024();
  swift_beginAccess();
  sub_1B8DAA170();
  swift_endAccess();
  v68 = (a1 + OBJC_IVAR____TtCV10PegasusAPI13Amppb_ContentP33_DBCA56248B3174DB33A494A6214DCF2913_StorageClass__collectionID);
  swift_beginAccess();
  v70 = *v68;
  v69 = v68[1];
  v71 = v132;
  swift_beginAccess();
  *v71 = v70;
  v71[1] = v69;

  v72 = (a1 + OBJC_IVAR____TtCV10PegasusAPI13Amppb_ContentP33_DBCA56248B3174DB33A494A6214DCF2913_StorageClass__collectionName);
  swift_beginAccess();
  v74 = *v72;
  v73 = v72[1];
  v75 = v133;
  swift_beginAccess();
  *v75 = v74;
  v75[1] = v73;

  swift_beginAccess();
  sub_1B8D92024();
  swift_beginAccess();
  sub_1B8DAA170();
  swift_endAccess();
  swift_beginAccess();
  sub_1B8D92024();
  swift_beginAccess();
  sub_1B8DAA170();
  swift_endAccess();
  v76 = OBJC_IVAR____TtCV10PegasusAPI13Amppb_ContentP33_DBCA56248B3174DB33A494A6214DCF2913_StorageClass__deviceFamilies;
  swift_beginAccess();
  v77 = *(a1 + v76);
  v78 = v136;
  swift_beginAccess();
  *(v1 + v78) = v77;

  v79 = (a1 + OBJC_IVAR____TtCV10PegasusAPI13Amppb_ContentP33_DBCA56248B3174DB33A494A6214DCF2913_StorageClass__bundleID);
  swift_beginAccess();
  v81 = *v79;
  v80 = v79[1];
  v82 = v137;
  swift_beginAccess();
  *v82 = v81;
  v82[1] = v80;

  v83 = (a1 + OBJC_IVAR____TtCV10PegasusAPI13Amppb_ContentP33_DBCA56248B3174DB33A494A6214DCF2913_StorageClass__bundleDisplayName);
  swift_beginAccess();
  v85 = *v83;
  v84 = v83[1];
  v86 = v138;
  swift_beginAccess();
  *v86 = v85;
  v86[1] = v84;

  v87 = (a1 + OBJC_IVAR____TtCV10PegasusAPI13Amppb_ContentP33_DBCA56248B3174DB33A494A6214DCF2913_StorageClass__copyright);
  swift_beginAccess();
  v89 = *v87;
  v88 = v87[1];
  v90 = v140;
  swift_beginAccess();
  *v90 = v89;
  v90[1] = v88;

  v91 = (a1 + OBJC_IVAR____TtCV10PegasusAPI13Amppb_ContentP33_DBCA56248B3174DB33A494A6214DCF2913_StorageClass__kind);
  swift_beginAccess();
  v92 = *v91;
  LOBYTE(v91) = *(v91 + 8);
  v93 = v141;
  swift_beginAccess();
  *v93 = v92;
  *(v93 + 8) = v91;
  v94 = (a1 + OBJC_IVAR____TtCV10PegasusAPI13Amppb_ContentP33_DBCA56248B3174DB33A494A6214DCF2913_StorageClass__id);
  swift_beginAccess();
  v96 = *v94;
  v95 = v94[1];
  v97 = v142;
  swift_beginAccess();
  *v97 = v96;
  v97[1] = v95;

  v98 = (a1 + OBJC_IVAR____TtCV10PegasusAPI13Amppb_ContentP33_DBCA56248B3174DB33A494A6214DCF2913_StorageClass__nameRaw);
  swift_beginAccess();
  v100 = *v98;
  v99 = v98[1];
  v101 = v143;
  swift_beginAccess();
  *v101 = v100;
  v101[1] = v99;

  swift_beginAccess();
  sub_1B8D92024();
  swift_beginAccess();
  sub_1B8DAA170();
  swift_endAccess();
  swift_beginAccess();
  sub_1B8D92024();
  swift_beginAccess();
  sub_1B8DAA170();
  swift_endAccess();
  swift_beginAccess();
  sub_1B8D92024();
  swift_beginAccess();
  sub_1B8DAA170();
  swift_endAccess();
  v102 = OBJC_IVAR____TtCV10PegasusAPI13Amppb_ContentP33_DBCA56248B3174DB33A494A6214DCF2913_StorageClass__discNumber;
  swift_beginAccess();
  v103 = *(a1 + v102);
  v104 = v147;
  swift_beginAccess();
  *(v1 + v104) = v103;
  v105 = OBJC_IVAR____TtCV10PegasusAPI13Amppb_ContentP33_DBCA56248B3174DB33A494A6214DCF2913_StorageClass__trackNumber;
  swift_beginAccess();
  v106 = *(a1 + v105);
  v107 = v148;
  swift_beginAccess();
  *(v1 + v107) = v106;
  v108 = (a1 + OBJC_IVAR____TtCV10PegasusAPI13Amppb_ContentP33_DBCA56248B3174DB33A494A6214DCF2913_StorageClass__artistName);
  swift_beginAccess();
  v110 = *v108;
  v109 = v108[1];
  v111 = v149;
  swift_beginAccess();
  *v111 = v110;
  v111[1] = v109;

  v112 = OBJC_IVAR____TtCV10PegasusAPI13Amppb_ContentP33_DBCA56248B3174DB33A494A6214DCF2913_StorageClass__artistBio;
  swift_beginAccess();
  v113 = *(a1 + v112);
  v114 = v150;
  swift_beginAccess();
  *(v1 + v114) = v113;

  v115 = (a1 + OBJC_IVAR____TtCV10PegasusAPI13Amppb_ContentP33_DBCA56248B3174DB33A494A6214DCF2913_StorageClass__releaseDate);
  swift_beginAccess();
  v117 = *v115;
  v116 = v115[1];
  v118 = v151;
  swift_beginAccess();
  *v118 = v117;
  v118[1] = v116;

  v119 = OBJC_IVAR____TtCV10PegasusAPI13Amppb_ContentP33_DBCA56248B3174DB33A494A6214DCF2913_StorageClass__children;
  swift_beginAccess();
  v120 = *(a1 + v119);
  v121 = v152;
  swift_beginAccess();
  *(v1 + v121) = v120;

  v122 = OBJC_IVAR____TtCV10PegasusAPI13Amppb_ContentP33_DBCA56248B3174DB33A494A6214DCF2913_StorageClass__movieClips;
  swift_beginAccess();
  v123 = *(a1 + v122);
  v124 = v153;
  swift_beginAccess();
  *(v1 + v124) = v123;

  swift_beginAccess();
  sub_1B8D92024();

  swift_beginAccess();
  sub_1B8DAA170();
  swift_endAccess();
  return v1;
}

uint64_t sub_1B8DAA170()
{
  OUTLINED_FUNCTION_468();
  __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_59_1();
  v3 = OUTLINED_FUNCTION_432();
  v4(v3);
  return v0;
}

uint64_t sub_1B8DAA1C8()
{

  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI13Amppb_ContentP33_DBCA56248B3174DB33A494A6214DCF2913_StorageClass__artwork, &qword_1EBAB9680, &unk_1B964EEA0);

  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI13Amppb_ContentP33_DBCA56248B3174DB33A494A6214DCF2913_StorageClass__softwareInfo, &qword_1EBAB9698, &qword_1B964EEC0);

  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI13Amppb_ContentP33_DBCA56248B3174DB33A494A6214DCF2913_StorageClass__description_p, &qword_1EBAB9688, &qword_1B964EEB0);
  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI13Amppb_ContentP33_DBCA56248B3174DB33A494A6214DCF2913_StorageClass__itunesNotes, &qword_1EBAB9688, &qword_1B964EEB0);

  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI13Amppb_ContentP33_DBCA56248B3174DB33A494A6214DCF2913_StorageClass__userRating, &qword_1EBAB9690, &qword_1B964EEB8);
  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI13Amppb_ContentP33_DBCA56248B3174DB33A494A6214DCF2913_StorageClass__rottenTomatoesReviews, &qword_1EBAB96A0, &qword_1B964EEC8);
  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI13Amppb_ContentP33_DBCA56248B3174DB33A494A6214DCF2913_StorageClass__eBookInfo, &qword_1EBAB96A8, &qword_1B964EED0);

  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI13Amppb_ContentP33_DBCA56248B3174DB33A494A6214DCF2913_StorageClass__parent, &qword_1EBAB96B0, &qword_1B964EED8);
  return v0;
}

uint64_t sub_1B8DAA458()
{
  v0 = sub_1B8DAA1C8();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t Amppb_Content.decodeMessage<A>(decoder:)()
{
  v1 = *(type metadata accessor for Amppb_Content(0) + 20);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    type metadata accessor for Amppb_Content._StorageClass(0);
    swift_allocObject();
    v2 = OUTLINED_FUNCTION_40_0();
    *(v0 + v1) = sub_1B8DA90EC(v2);
  }

  OUTLINED_FUNCTION_225_0();
  return sub_1B8DAA544(v3, v4, v5, v6);
}

uint64_t sub_1B8DAA544(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  while (1)
  {
    result = sub_1B964C3C0();
    if (v4 || (v10 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        sub_1B8DAA85C(a2, a1);
        continue;
      case 2:
        sub_1B8DAA8E0(a2, a1, a3, a4);
        continue;
      case 3:
        v11 = &OBJC_IVAR____TtCV10PegasusAPI13Amppb_ContentP33_DBCA56248B3174DB33A494A6214DCF2913_StorageClass__genreNames;
        goto LABEL_25;
      case 4:
      case 6:
      case 7:
      case 10:
      case 11:
      case 15:
      case 16:
      case 17:
      case 19:
      case 20:
      case 26:
      case 28:
        sub_1B8DAB218();
        continue;
      case 5:
        sub_1B8DAA9BC(a2, a1, a3, a4);
        continue;
      case 8:
        sub_1B8DAAAE4(a2, a1, a3, a4);
        continue;
      case 9:
        sub_1B8DAABC0(a2, a1, a3, a4);
        continue;
      case 12:
        sub_1B8DAAC9C(a2, a1, a3, a4);
        continue;
      case 13:
        sub_1B8DAAD78(a2, a1, a3, a4);
        continue;
      case 14:
        v11 = &OBJC_IVAR____TtCV10PegasusAPI13Amppb_ContentP33_DBCA56248B3174DB33A494A6214DCF2913_StorageClass__deviceFamilies;
        goto LABEL_25;
      case 18:
        sub_1B8DAAE54(a2, a1, a3, a4);
        continue;
      case 21:
        sub_1B8DAAEF0(a2, a1, a3, a4);
        continue;
      case 22:
        sub_1B8DAAFCC(a2, a1, a3, a4);
        continue;
      case 23:
        sub_1B8DAB0A8(a2, a1, a3, a4);
        continue;
      case 24:
        v11 = &OBJC_IVAR____TtCV10PegasusAPI13Amppb_ContentP33_DBCA56248B3174DB33A494A6214DCF2913_StorageClass__discNumber;
        goto LABEL_21;
      case 25:
        v11 = &OBJC_IVAR____TtCV10PegasusAPI13Amppb_ContentP33_DBCA56248B3174DB33A494A6214DCF2913_StorageClass__trackNumber;
LABEL_21:
        v12 = MEMORY[0x1E69AAD00];
        goto LABEL_26;
      case 27:
        v11 = &OBJC_IVAR____TtCV10PegasusAPI13Amppb_ContentP33_DBCA56248B3174DB33A494A6214DCF2913_StorageClass__artistBio;
LABEL_25:
        v12 = MEMORY[0x1E69AACB8];
LABEL_26:
        sub_1B8DAB184(a2, a1, a3, a4, v11, v12);
        break;
      case 29:
        sub_1B8DAB298(a2, a1, a3, a4);
        break;
      case 30:
        sub_1B8DAB3C0(a2, a1, a3, a4);
        break;
      case 31:
        sub_1B8DAB49C(a2, a1, a3, a4);
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1B8DAA85C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  sub_1B964C530();
  return swift_endAccess();
}

uint64_t sub_1B8DAA8E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Amppb_Artwork(0);
  sub_1B8CD1910(&qword_1EBAB96E8, type metadata accessor for Amppb_Artwork, protocol conformance descriptor for Amppb_Artwork);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B8DAA9BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_1B964C280();
  type metadata accessor for Amppb_ContentRating(0);
  sub_1B8CD1910(&qword_1EBAB97C0, type metadata accessor for Amppb_ContentRating, protocol conformance descriptor for Amppb_ContentRating);
  sub_1B8CD1910(&qword_1EBAB96C0, type metadata accessor for Amppb_ContentRating, protocol conformance descriptor for Amppb_ContentRating);
  sub_1B964C3A0();
  return swift_endAccess();
}

uint64_t sub_1B8DAAAE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Amppb_Offer(0);
  sub_1B8CD1910(&qword_1EBAB9730, type metadata accessor for Amppb_Offer, protocol conformance descriptor for Amppb_Offer);
  sub_1B964C570();
  return swift_endAccess();
}

uint64_t sub_1B8DAABC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Amppb_SoftwareInfo(0);
  sub_1B8CD1910(&qword_1EBAB9838, type metadata accessor for Amppb_SoftwareInfo, protocol conformance descriptor for Amppb_SoftwareInfo);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B8DAAC9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Amppb_Description(0);
  sub_1B8CD1910(&qword_1EBAB9758, type metadata accessor for Amppb_Description, protocol conformance descriptor for Amppb_Description);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B8DAAD78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Amppb_Description(0);
  sub_1B8CD1910(&qword_1EBAB9758, type metadata accessor for Amppb_Description, protocol conformance descriptor for Amppb_Description);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B8DAAE54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_1B8DAF9CC();
  sub_1B964C420();
  return swift_endAccess();
}

uint64_t sub_1B8DAAEF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Amppb_UserRating(0);
  sub_1B8CD1910(&qword_1EBAB9750, type metadata accessor for Amppb_UserRating, protocol conformance descriptor for Amppb_UserRating);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B8DAAFCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Amppb_RottenTomatoesReviews(0);
  sub_1B8CD1910(&qword_1EBAB9870, type metadata accessor for Amppb_RottenTomatoesReviews, protocol conformance descriptor for Amppb_RottenTomatoesReviews);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B8DAB0A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Amppb_EbookInfo(0);
  sub_1B8CD1910(&qword_1EBAB97E8, type metadata accessor for Amppb_EbookInfo, protocol conformance descriptor for Amppb_EbookInfo);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B8DAB184(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, void (*a6)(uint64_t, uint64_t, uint64_t))
{
  v10 = *a5;
  OUTLINED_FUNCTION_131();
  swift_beginAccess();
  a6(a2 + v10, a3, a4);
  return swift_endAccess();
}

uint64_t sub_1B8DAB218()
{
  OUTLINED_FUNCTION_131();
  swift_beginAccess();
  OUTLINED_FUNCTION_12();
  sub_1B964C530();
  return swift_endAccess();
}

uint64_t sub_1B8DAB298(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_1B964C280();
  type metadata accessor for Amppb_Child(0);
  sub_1B8CD1910(&qword_1EBAB9748, type metadata accessor for Amppb_Child, protocol conformance descriptor for Amppb_Child);
  sub_1B8CD1910(&qword_1EBAB9740, type metadata accessor for Amppb_Child, protocol conformance descriptor for Amppb_Child);
  sub_1B964C3A0();
  return swift_endAccess();
}

uint64_t sub_1B8DAB3C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Amppb_MovieClip(0);
  sub_1B8CD1910(&qword_1EBAB9810, type metadata accessor for Amppb_MovieClip, protocol conformance descriptor for Amppb_MovieClip);
  sub_1B964C570();
  return swift_endAccess();
}

uint64_t sub_1B8DAB49C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Amppb_Parent(0);
  sub_1B8CD1910(&qword_1EBAB9898, type metadata accessor for Amppb_Parent, protocol conformance descriptor for Amppb_Parent);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t Amppb_Content.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for Amppb_Content(0);
  OUTLINED_FUNCTION_12();
  result = sub_1B8DAB5DC(v5, v6, v7, a3);
  if (!v3)
  {
    OUTLINED_FUNCTION_186();
    return sub_1B964C290();
  }

  return result;
}

uint64_t sub_1B8DAB5DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v147 = a4;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB96B0, &qword_1B964EED8);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v124 = &v121 - v10;
  v123 = type metadata accessor for Amppb_Parent(0);
  MEMORY[0x1EEE9AC00](v123);
  v12 = &v121 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB96A8, &qword_1B964EED0);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v128 = &v121 - v14;
  v127 = type metadata accessor for Amppb_EbookInfo(0);
  MEMORY[0x1EEE9AC00](v127);
  v125 = &v121 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB96A0, &qword_1B964EEC8);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v132 = &v121 - v17;
  v131 = type metadata accessor for Amppb_RottenTomatoesReviews(0);
  MEMORY[0x1EEE9AC00](v131);
  v126 = &v121 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9690, &qword_1B964EEB8);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v129 = &v121 - v20;
  v133 = type metadata accessor for Amppb_UserRating(0);
  MEMORY[0x1EEE9AC00](v133);
  v130 = &v121 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9688, &qword_1B964EEB0);
  v23 = MEMORY[0x1EEE9AC00](v22 - 8);
  v136 = &v121 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v137 = &v121 - v25;
  v138 = type metadata accessor for Amppb_Description(0);
  v26 = MEMORY[0x1EEE9AC00](v138);
  v134 = &v121 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v135 = &v121 - v28;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9698, &qword_1B964EEC0);
  MEMORY[0x1EEE9AC00](v29 - 8);
  v140 = &v121 - v30;
  v141 = type metadata accessor for Amppb_SoftwareInfo(0);
  MEMORY[0x1EEE9AC00](v141);
  v139 = &v121 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9680, &unk_1B964EEA0);
  MEMORY[0x1EEE9AC00](v32 - 8);
  v34 = &v121 - v33;
  v35 = type metadata accessor for Amppb_Artwork(0);
  MEMORY[0x1EEE9AC00](v35);
  swift_beginAccess();
  v143 = a1;
  v36 = *(a1 + 16);
  v37 = *(a1 + 24);
  v38 = HIBYTE(v37) & 0xF;
  if ((v37 & 0x2000000000000000) == 0)
  {
    v38 = v36 & 0xFFFFFFFFFFFFLL;
  }

  if (v38)
  {

    sub_1B964C700();
    if (v5)
    {
    }

    v122 = v12;
    v39 = a2;
    v142 = a3;
    v144 = 0;
  }

  else
  {
    v122 = v12;
    v39 = a2;
    v142 = a3;
    v144 = v5;
  }

  v40 = v143;
  swift_beginAccess();
  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v34, 1, v35) == 1)
  {
    sub_1B8D9207C(v34, &qword_1EBAB9680, &unk_1B964EEA0);
  }

  else
  {
    sub_1B8D9ADF8();
    sub_1B8CD1910(&qword_1EBAB96E8, type metadata accessor for Amppb_Artwork, protocol conformance descriptor for Amppb_Artwork);
    v41 = v144;
    sub_1B964C740();
    if (v41)
    {
      return sub_1B8D9B104();
    }

    v144 = 0;
    sub_1B8D9B104();
  }

  v43 = OBJC_IVAR____TtCV10PegasusAPI13Amppb_ContentP33_DBCA56248B3174DB33A494A6214DCF2913_StorageClass__genreNames;
  swift_beginAccess();
  if (*(*(v40 + v43) + 16))
  {

    v44 = v144;
    sub_1B964C6E0();
    if (v44)
    {
    }

    v144 = 0;
  }

  v45 = (v40 + OBJC_IVAR____TtCV10PegasusAPI13Amppb_ContentP33_DBCA56248B3174DB33A494A6214DCF2913_StorageClass__url);
  swift_beginAccess();
  v46 = *v45;
  v47 = v45[1];
  v48 = HIBYTE(v47) & 0xF;
  if ((v47 & 0x2000000000000000) == 0)
  {
    v48 = v46 & 0xFFFFFFFFFFFFLL;
  }

  if (v48)
  {

    v49 = v144;
    sub_1B964C700();
    if (v49)
    {
    }

    v144 = 0;
  }

  v147 = v39;
  v50 = OBJC_IVAR____TtCV10PegasusAPI13Amppb_ContentP33_DBCA56248B3174DB33A494A6214DCF2913_StorageClass__contentRatingsBySystem;
  swift_beginAccess();
  if (*(*(v40 + v50) + 16))
  {
    sub_1B964C280();
    type metadata accessor for Amppb_ContentRating(0);
    sub_1B8CD1910(&qword_1EBAB97C0, type metadata accessor for Amppb_ContentRating, protocol conformance descriptor for Amppb_ContentRating);
    sub_1B8CD1910(&qword_1EBAB96C0, type metadata accessor for Amppb_ContentRating, protocol conformance descriptor for Amppb_ContentRating);

    v51 = v144;
    sub_1B964C5E0();
    if (v51)
    {
    }

    v144 = 0;
  }

  v52 = (v143 + OBJC_IVAR____TtCV10PegasusAPI13Amppb_ContentP33_DBCA56248B3174DB33A494A6214DCF2913_StorageClass__bornOrFormed);
  swift_beginAccess();
  v53 = v52[1];
  v54 = HIBYTE(v53) & 0xF;
  if ((v53 & 0x2000000000000000) == 0)
  {
    v54 = *v52 & 0xFFFFFFFFFFFFLL;
  }

  if (v54)
  {

    v55 = v144;
    sub_1B964C700();
    if (v55)
    {
    }

    v144 = 0;
  }

  v56 = (v143 + OBJC_IVAR____TtCV10PegasusAPI13Amppb_ContentP33_DBCA56248B3174DB33A494A6214DCF2913_StorageClass__origin);
  swift_beginAccess();
  v57 = v56[1];
  v58 = HIBYTE(v57) & 0xF;
  if ((v57 & 0x2000000000000000) == 0)
  {
    v58 = *v56 & 0xFFFFFFFFFFFFLL;
  }

  if (v58)
  {

    v59 = v144;
    sub_1B964C700();
    if (v59)
    {
    }

    v144 = 0;
  }

  v60 = OBJC_IVAR____TtCV10PegasusAPI13Amppb_ContentP33_DBCA56248B3174DB33A494A6214DCF2913_StorageClass__offers;
  v61 = v143;
  swift_beginAccess();
  if (*(*(v61 + v60) + 16))
  {
    type metadata accessor for Amppb_Offer(0);
    sub_1B8CD1910(&qword_1EBAB9730, type metadata accessor for Amppb_Offer, protocol conformance descriptor for Amppb_Offer);

    v62 = v144;
    sub_1B964C730();
    if (v62)
    {
    }

    v144 = 0;
  }

  swift_beginAccess();
  v63 = v140;
  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v63, 1, v141) == 1)
  {
    sub_1B8D9207C(v63, &qword_1EBAB9698, &qword_1B964EEC0);
  }

  else
  {
    sub_1B8D9ADF8();
    sub_1B8CD1910(&qword_1EBAB9838, type metadata accessor for Amppb_SoftwareInfo, protocol conformance descriptor for Amppb_SoftwareInfo);
    v64 = v144;
    sub_1B964C740();
    if (v64)
    {
      return sub_1B8D9B104();
    }

    v144 = 0;
    sub_1B8D9B104();
  }

  v65 = (v143 + OBJC_IVAR____TtCV10PegasusAPI13Amppb_ContentP33_DBCA56248B3174DB33A494A6214DCF2913_StorageClass__collectionID);
  swift_beginAccess();
  v66 = v65[1];
  v67 = HIBYTE(v66) & 0xF;
  if ((v66 & 0x2000000000000000) == 0)
  {
    v67 = *v65 & 0xFFFFFFFFFFFFLL;
  }

  if (v67)
  {

    v68 = v144;
    sub_1B964C700();
    if (v68)
    {
    }

    v144 = 0;
  }

  v69 = (v143 + OBJC_IVAR____TtCV10PegasusAPI13Amppb_ContentP33_DBCA56248B3174DB33A494A6214DCF2913_StorageClass__collectionName);
  swift_beginAccess();
  v70 = v69[1];
  v71 = HIBYTE(v70) & 0xF;
  if ((v70 & 0x2000000000000000) == 0)
  {
    v71 = *v69 & 0xFFFFFFFFFFFFLL;
  }

  if (v71)
  {

    v72 = v144;
    sub_1B964C700();
    if (v72)
    {
    }

    v144 = 0;
  }

  swift_beginAccess();
  v73 = v137;
  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v73, 1, v138) == 1)
  {
    sub_1B8D9207C(v73, &qword_1EBAB9688, &qword_1B964EEB0);
  }

  else
  {
    sub_1B8D9ADF8();
    sub_1B8CD1910(&qword_1EBAB9758, type metadata accessor for Amppb_Description, protocol conformance descriptor for Amppb_Description);
    v74 = v144;
    sub_1B964C740();
    if (v74)
    {
      return sub_1B8D9B104();
    }

    v144 = 0;
    sub_1B8D9B104();
  }

  swift_beginAccess();
  v75 = v136;
  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v75, 1, v138) == 1)
  {
    sub_1B8D9207C(v75, &qword_1EBAB9688, &qword_1B964EEB0);
  }

  else
  {
    sub_1B8D9ADF8();
    sub_1B8CD1910(&qword_1EBAB9758, type metadata accessor for Amppb_Description, protocol conformance descriptor for Amppb_Description);
    v76 = v144;
    sub_1B964C740();
    if (v76)
    {
      return sub_1B8D9B104();
    }

    v144 = 0;
    sub_1B8D9B104();
  }

  v77 = OBJC_IVAR____TtCV10PegasusAPI13Amppb_ContentP33_DBCA56248B3174DB33A494A6214DCF2913_StorageClass__deviceFamilies;
  v78 = v143;
  swift_beginAccess();
  if (*(*(v78 + v77) + 16))
  {

    v79 = v144;
    sub_1B964C6E0();
    if (v79)
    {
    }

    v144 = 0;
  }

  v80 = (v143 + OBJC_IVAR____TtCV10PegasusAPI13Amppb_ContentP33_DBCA56248B3174DB33A494A6214DCF2913_StorageClass__bundleID);
  swift_beginAccess();
  v81 = v80[1];
  v82 = HIBYTE(v81) & 0xF;
  if ((v81 & 0x2000000000000000) == 0)
  {
    v82 = *v80 & 0xFFFFFFFFFFFFLL;
  }

  if (v82)
  {

    v83 = v144;
    sub_1B964C700();
    if (v83)
    {
    }

    v144 = 0;
  }

  v84 = (v143 + OBJC_IVAR____TtCV10PegasusAPI13Amppb_ContentP33_DBCA56248B3174DB33A494A6214DCF2913_StorageClass__bundleDisplayName);
  swift_beginAccess();
  v85 = v84[1];
  v86 = HIBYTE(v85) & 0xF;
  if ((v85 & 0x2000000000000000) == 0)
  {
    v86 = *v84 & 0xFFFFFFFFFFFFLL;
  }

  if (v86)
  {

    v87 = v144;
    sub_1B964C700();
    if (v87)
    {
    }

    v144 = 0;
  }

  v88 = (v143 + OBJC_IVAR____TtCV10PegasusAPI13Amppb_ContentP33_DBCA56248B3174DB33A494A6214DCF2913_StorageClass__copyright);
  swift_beginAccess();
  v89 = v88[1];
  v90 = HIBYTE(v89) & 0xF;
  if ((v89 & 0x2000000000000000) == 0)
  {
    v90 = *v88 & 0xFFFFFFFFFFFFLL;
  }

  if (v90)
  {

    v91 = v144;
    sub_1B964C700();
    v92 = v91;
    if (v91)
    {
    }
  }

  else
  {
    v92 = v144;
  }

  v93 = v143 + OBJC_IVAR____TtCV10PegasusAPI13Amppb_ContentP33_DBCA56248B3174DB33A494A6214DCF2913_StorageClass__kind;
  swift_beginAccess();
  if (*v93)
  {
    v94 = *(v93 + 8);
    v145 = *v93;
    v146 = v94;
    sub_1B8DAF9CC();
    result = sub_1B964C680();
    if (v92)
    {
      return result;
    }
  }

  v95 = (v143 + OBJC_IVAR____TtCV10PegasusAPI13Amppb_ContentP33_DBCA56248B3174DB33A494A6214DCF2913_StorageClass__id);
  swift_beginAccess();
  v96 = v95[1];
  v97 = HIBYTE(v96) & 0xF;
  if ((v96 & 0x2000000000000000) == 0)
  {
    v97 = *v95 & 0xFFFFFFFFFFFFLL;
  }

  if (v97)
  {

    sub_1B964C700();
    if (!v92)
    {

      goto LABEL_86;
    }
  }

LABEL_86:
  v98 = (v143 + OBJC_IVAR____TtCV10PegasusAPI13Amppb_ContentP33_DBCA56248B3174DB33A494A6214DCF2913_StorageClass__nameRaw);
  swift_beginAccess();
  v99 = v98[1];
  v100 = HIBYTE(v99) & 0xF;
  if ((v99 & 0x2000000000000000) == 0)
  {
    v100 = *v98 & 0xFFFFFFFFFFFFLL;
  }

  if (v100)
  {

    sub_1B964C700();
    if (v92)
    {
    }
  }

  swift_beginAccess();
  v101 = v129;
  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v101, 1, v133) == 1)
  {
    sub_1B8D9207C(v101, &qword_1EBAB9690, &qword_1B964EEB8);
  }

  else
  {
    sub_1B8D9ADF8();
    sub_1B8CD1910(&qword_1EBAB9750, type metadata accessor for Amppb_UserRating, protocol conformance descriptor for Amppb_UserRating);
    sub_1B964C740();
    if (v92)
    {
      return sub_1B8D9B104();
    }

    sub_1B8D9B104();
  }

  swift_beginAccess();
  v102 = v132;
  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v102, 1, v131) == 1)
  {
    sub_1B8D9207C(v132, &qword_1EBAB96A0, &qword_1B964EEC8);
  }

  else
  {
    sub_1B8D9ADF8();
    sub_1B8CD1910(&qword_1EBAB9870, type metadata accessor for Amppb_RottenTomatoesReviews, protocol conformance descriptor for Amppb_RottenTomatoesReviews);
    sub_1B964C740();
    if (v92)
    {
      return sub_1B8D9B104();
    }

    sub_1B8D9B104();
  }

  swift_beginAccess();
  v103 = v128;
  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v103, 1, v127) == 1)
  {
    sub_1B8D9207C(v128, &qword_1EBAB96A8, &qword_1B964EED0);
    goto LABEL_106;
  }

  sub_1B8D9ADF8();
  sub_1B8CD1910(&qword_1EBAB97E8, type metadata accessor for Amppb_EbookInfo, protocol conformance descriptor for Amppb_EbookInfo);
  sub_1B964C740();
  if (v92)
  {
    return sub_1B8D9B104();
  }

  sub_1B8D9B104();
LABEL_106:
  v104 = OBJC_IVAR____TtCV10PegasusAPI13Amppb_ContentP33_DBCA56248B3174DB33A494A6214DCF2913_StorageClass__discNumber;
  v105 = v143;
  swift_beginAccess();
  if (!*(v105 + v104) || (result = sub_1B964C720(), !v92))
  {
    v106 = OBJC_IVAR____TtCV10PegasusAPI13Amppb_ContentP33_DBCA56248B3174DB33A494A6214DCF2913_StorageClass__trackNumber;
    v107 = v143;
    swift_beginAccess();
    if (!*(v107 + v106) || (result = sub_1B964C720(), !v92))
    {
      v108 = (v143 + OBJC_IVAR____TtCV10PegasusAPI13Amppb_ContentP33_DBCA56248B3174DB33A494A6214DCF2913_StorageClass__artistName);
      swift_beginAccess();
      v109 = v108[1];
      v110 = HIBYTE(v109) & 0xF;
      if ((v109 & 0x2000000000000000) == 0)
      {
        v110 = *v108 & 0xFFFFFFFFFFFFLL;
      }

      if (!v110 || (, sub_1B964C700(), result = , !v92))
      {
        v111 = OBJC_IVAR____TtCV10PegasusAPI13Amppb_ContentP33_DBCA56248B3174DB33A494A6214DCF2913_StorageClass__artistBio;
        v112 = v143;
        swift_beginAccess();
        if (!*(*(v112 + v111) + 16) || (, sub_1B964C6E0(), result = , !v92))
        {
          v113 = (v143 + OBJC_IVAR____TtCV10PegasusAPI13Amppb_ContentP33_DBCA56248B3174DB33A494A6214DCF2913_StorageClass__releaseDate);
          swift_beginAccess();
          v114 = v113[1];
          v115 = HIBYTE(v114) & 0xF;
          if ((v114 & 0x2000000000000000) == 0)
          {
            v115 = *v113 & 0xFFFFFFFFFFFFLL;
          }

          if (!v115 || (, sub_1B964C700(), result = , !v92))
          {
            v116 = OBJC_IVAR____TtCV10PegasusAPI13Amppb_ContentP33_DBCA56248B3174DB33A494A6214DCF2913_StorageClass__children;
            v117 = v143;
            swift_beginAccess();
            if (!*(*(v117 + v116) + 16) || (sub_1B964C280(), type metadata accessor for Amppb_Child(0), sub_1B8CD1910(&qword_1EBAB9748, type metadata accessor for Amppb_Child, protocol conformance descriptor for Amppb_Child), sub_1B8CD1910(&qword_1EBAB9740, type metadata accessor for Amppb_Child, protocol conformance descriptor for Amppb_Child), , sub_1B964C5E0(), result = , !v92))
            {
              v118 = OBJC_IVAR____TtCV10PegasusAPI13Amppb_ContentP33_DBCA56248B3174DB33A494A6214DCF2913_StorageClass__movieClips;
              v119 = v143;
              swift_beginAccess();
              if (!*(*(v119 + v118) + 16) || (type metadata accessor for Amppb_MovieClip(0), sub_1B8CD1910(&qword_1EBAB9810, type metadata accessor for Amppb_MovieClip, protocol conformance descriptor for Amppb_MovieClip), , sub_1B964C730(), result = , !v92))
              {
                swift_beginAccess();
                v120 = v124;
                sub_1B8D92024();
                if (__swift_getEnumTagSinglePayload(v120, 1, v123) == 1)
                {
                  return sub_1B8D9207C(v124, &qword_1EBAB96B0, &qword_1B964EED8);
                }

                else
                {
                  sub_1B8D9ADF8();
                  sub_1B8CD1910(&qword_1EBAB9898, type metadata accessor for Amppb_Parent, protocol conformance descriptor for Amppb_Parent);
                  sub_1B964C740();
                  return sub_1B8D9B104();
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}