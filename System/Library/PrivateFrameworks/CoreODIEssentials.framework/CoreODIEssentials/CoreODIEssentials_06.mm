unint64_t sub_1DAFA8F64(uint64_t a1, uint64_t a2)
{
  v2 = sub_1DB09E2B4();

  if (v2 >= 0x11)
  {
    return 17;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1DAFA8FB8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E368, &unk_1DB0A02F0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1DAFA9020()
{
  result = qword_1EE3009F0;
  if (!qword_1EE3009F0)
  {
    type metadata accessor for CFError(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE3009F0);
  }

  return result;
}

unint64_t sub_1DAFA9078()
{
  result = qword_1ECC0E9E0;
  if (!qword_1ECC0E9E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC0E448, &qword_1DB0A3110);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0E9E0);
  }

  return result;
}

id sub_1DAFA90DC()
{
  v0 = sub_1DB09D2A4();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = [objc_allocWithZone(MEMORY[0x1E696ADA0]) init];
  sub_1DB09D1E4();
  v5 = sub_1DB09D214();
  (*(v1 + 8))(v3, v0);
  [v4 setLocale_];

  result = [v4 setMaximumFractionDigits_];
  qword_1ECC0E9F0 = v4;
  return result;
}

id sub_1DAFA9218()
{
  v1 = OBJC_IVAR____TtC17CoreODIEssentials14DIPHTTPSession__urlSession;
  v2 = *(v0 + OBJC_IVAR____TtC17CoreODIEssentials14DIPHTTPSession__urlSession);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC17CoreODIEssentials14DIPHTTPSession__urlSession);
  }

  else
  {
    v4 = *(v0 + OBJC_IVAR____TtC17CoreODIEssentials14DIPHTTPSession_logger + 24);
    v5 = *(v0 + OBJC_IVAR____TtC17CoreODIEssentials14DIPHTTPSession_logger + 32);
    __swift_project_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC17CoreODIEssentials14DIPHTTPSession_logger), v4);
    v12 = 14;
    v6 = v4;
    v7 = v0;
    Loggable.fault(_:category:)(0xD00000000000003CLL, 0x80000001DB0C5630, &v12, v6, v5);
    v8 = [objc_opt_self() sessionWithConfiguration:*(v0 + OBJC_IVAR____TtC17CoreODIEssentials14DIPHTTPSession_nsurlSessionConfiguration) delegate:v0 delegateQueue:0];
    v9 = *(v0 + v1);
    *(v7 + v1) = v8;
    v3 = v8;

    v2 = 0;
  }

  v10 = v2;
  return v3;
}

id sub_1DAFA9308()
{
  v1 = OBJC_IVAR____TtC17CoreODIEssentials14DIPHTTPSession__anonymousURLSession;
  v2 = *(v0 + OBJC_IVAR____TtC17CoreODIEssentials14DIPHTTPSession__anonymousURLSession);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC17CoreODIEssentials14DIPHTTPSession__anonymousURLSession);
  }

  else
  {
    v4 = *(v0 + OBJC_IVAR____TtC17CoreODIEssentials14DIPHTTPSession_logger + 24);
    v5 = *(v0 + OBJC_IVAR____TtC17CoreODIEssentials14DIPHTTPSession_logger + 32);
    __swift_project_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC17CoreODIEssentials14DIPHTTPSession_logger), v4);
    v12 = 14;
    v6 = v4;
    v7 = v0;
    Loggable.fault(_:category:)(0xD000000000000045, 0x80000001DB0C55E0, &v12, v6, v5);
    v8 = [objc_opt_self() sessionWithConfiguration:*(v0 + OBJC_IVAR____TtC17CoreODIEssentials14DIPHTTPSession_anonymousNSURLSessionConfiguration) delegate:v0 delegateQueue:0];
    v9 = *(v0 + v1);
    *(v7 + v1) = v8;
    v3 = v8;

    v2 = 0;
  }

  v10 = v2;
  return v3;
}

uint64_t sub_1DAFA93FC(uint64_t a1)
{
  v2 = *&v1[OBJC_IVAR____TtC17CoreODIEssentials14DIPHTTPSession_logger + 24];
  v3 = *&v1[OBJC_IVAR____TtC17CoreODIEssentials14DIPHTTPSession_logger + 32];
  __swift_project_boxed_opaque_existential_1(&v1[OBJC_IVAR____TtC17CoreODIEssentials14DIPHTTPSession_logger], v2);
  sub_1DB09DE44();
  v4 = [v1 debugDescription];
  v5 = sub_1DB09D6C4();
  v7 = v6;

  v15 = v5;
  v16 = v7;
  MEMORY[0x1E127FE90](0xD000000000000015, 0x80000001DB0C5BA0);
  Strong = swift_unknownObjectWeakLoadStrong();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0EAF0, &qword_1DB0A9578);
  v9 = sub_1DB09DC54();
  v11 = v10;

  MEMORY[0x1E127FE90](v9, v11);

  MEMORY[0x1E127FE90](544175136, 0xE400000000000000);
  v12 = sub_1DB09DC54();
  MEMORY[0x1E127FE90](v12);

  v13 = v16;
  sub_1DAFD2A1C(&v15);
  Loggable.debug(_:category:)(v5, v13, &v15, v2, v3);

  return swift_unknownObjectWeakAssign();
}

uint64_t sub_1DAFA9614()
{
  ObjectType = swift_getObjectType();
  v13 = 0;
  v14 = 0xE000000000000000;
  sub_1DB09DE44();
  v12.receiver = v0;
  v12.super_class = ObjectType;
  v2 = objc_msgSendSuper2(&v12, sel_description);
  v3 = sub_1DB09D6C4();
  v5 = v4;

  MEMORY[0x1E127FE90](v3, v5);

  MEMORY[0x1E127FE90](0x756F656D6974202CLL, 0xEA00000000002074);
  sub_1DB09DAC4();
  MEMORY[0x1E127FE90](2108704, 0xE300000000000000);
  v6 = sub_1DAFA9218();
  v7 = [v6 sessionDescription];

  if (v7)
  {
    v8 = sub_1DB09D6C4();
    v10 = v9;
  }

  else
  {
    v10 = 0x80000001DB0C5D10;
    v8 = 0xD00000000000001ALL;
  }

  MEMORY[0x1E127FE90](v8, v10);

  return v13;
}

id sub_1DAFA9784(char a1)
{
  if (a1)
  {
    v2 = OBJC_IVAR____TtC17CoreODIEssentials14DIPHTTPSession__anonymousURLSession;
    v3 = *(v1 + OBJC_IVAR____TtC17CoreODIEssentials14DIPHTTPSession__anonymousURLSession);
    if (!v3)
    {
      v4 = *(v1 + OBJC_IVAR____TtC17CoreODIEssentials14DIPHTTPSession_logger + 24);
      v5 = *(v1 + OBJC_IVAR____TtC17CoreODIEssentials14DIPHTTPSession_logger + 32);
      __swift_project_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtC17CoreODIEssentials14DIPHTTPSession_logger), v4);
      v16 = 14;
      v6 = v4;
      v7 = v1;
      Loggable.fault(_:category:)(0xD000000000000045, 0x80000001DB0C55E0, &v16, v6, v5);
      v8 = [objc_opt_self() sessionWithConfiguration:*(v1 + OBJC_IVAR____TtC17CoreODIEssentials14DIPHTTPSession_anonymousNSURLSessionConfiguration) delegate:v1 delegateQueue:0];
LABEL_9:
      v13 = v8;
      v14 = *(v7 + v2);
      *(v7 + v2) = v13;
      v15 = v13;

      return v15;
    }
  }

  else
  {
    v2 = OBJC_IVAR____TtC17CoreODIEssentials14DIPHTTPSession__urlSession;
    v3 = *(v1 + OBJC_IVAR____TtC17CoreODIEssentials14DIPHTTPSession__urlSession);
    if (!v3)
    {
      v10 = *(v1 + OBJC_IVAR____TtC17CoreODIEssentials14DIPHTTPSession_logger + 24);
      v11 = *(v1 + OBJC_IVAR____TtC17CoreODIEssentials14DIPHTTPSession_logger + 32);
      __swift_project_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtC17CoreODIEssentials14DIPHTTPSession_logger), v10);
      v17 = 14;
      v12 = v10;
      v7 = v1;
      Loggable.fault(_:category:)(0xD00000000000003CLL, 0x80000001DB0C5630, &v17, v12, v11);
      v8 = [objc_opt_self() sessionWithConfiguration:*(v1 + OBJC_IVAR____TtC17CoreODIEssentials14DIPHTTPSession_nsurlSessionConfiguration) delegate:v1 delegateQueue:0];
      goto LABEL_9;
    }
  }

  return v3;
}

uint64_t sub_1DAFA992C(uint64_t a1, uint64_t a2, char a3, char a4)
{
  *(v5 + 24) = a2;
  *(v5 + 32) = v4;
  *(v5 + 57) = a4;
  *(v5 + 56) = a3;
  *(v5 + 16) = a1;
  return MEMORY[0x1EEE6DFA0](sub_1DAFA9958, 0, 0);
}

void sub_1DAFA9958()
{
  v1 = *(v0 + 56);
  v2 = objc_allocWithZone(MEMORY[0x1E696AD68]);
  v3 = sub_1DB09CEE4();
  v4 = [v2 initWithURL_];
  *(v0 + 40) = v4;

  if (v1)
  {
    v5 = *(v0 + 24);
    [*(v0 + 40) setCachePolicy_];
    if (v5)
    {
      v6 = *(v0 + 24);
      v9 = *(v6 + 64);
      v8 = v6 + 64;
      v7 = v9;
      v10 = -1;
      v11 = -1 << *(*(v0 + 24) + 32);
      if (-v11 < 64)
      {
        v10 = ~(-1 << -v11);
      }

      v12 = v10 & v7;
      v13 = (63 - v11) >> 6;

      v14 = 0;
      if (v12)
      {
        goto LABEL_11;
      }

      while (1)
      {
        v15 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          break;
        }

        if (v15 >= v13)
        {

          goto LABEL_17;
        }

        v12 = *(v8 + 8 * v15);
        ++v14;
        if (v12)
        {
          v14 = v15;
          do
          {
LABEL_11:
            v16 = *(v0 + 40);
            v12 &= v12 - 1;

            v17 = sub_1DB09D6B4();

            v18 = sub_1DB09D6B4();

            [v16 setValue:v17 forHTTPHeaderField:v18];
          }

          while (v12);
          continue;
        }
      }

      __break(1u);
    }

    else
    {
LABEL_17:
      v21 = *(v0 + 8);
      v22 = *(v0 + 40);

      v21(v22);
    }
  }

  else
  {
    v19 = swift_task_alloc();
    *(v0 + 48) = v19;
    *v19 = v0;
    v19[1] = sub_1DAFA9BCC;
    v20 = *(v0 + 57);

    sub_1DAFA9E80(v4, v20);
  }
}

uint64_t sub_1DAFA9BCC()
{

  return MEMORY[0x1EEE6DFA0](sub_1DAFA9CC8, 0, 0);
}

void sub_1DAFA9CC8()
{
  v1 = *(v0 + 24);
  [*(v0 + 40) setCachePolicy_];
  if (v1)
  {
    v14 = v0;
    v2 = *(v0 + 24);
    v3 = -1;
    v4 = -1 << *(v2 + 32);
    if (-v4 < 64)
    {
      v3 = ~(-1 << -v4);
    }

    v5 = v3 & *(v2 + 64);
    v6 = (63 - v4) >> 6;

    v7 = 0;
    if (v5)
    {
      goto LABEL_10;
    }

    while (1)
    {
      v8 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        break;
      }

      if (v8 >= v6)
      {

        v0 = v14;
        goto LABEL_13;
      }

      v5 = *(v2 + 64 + 8 * v8);
      ++v7;
      if (v5)
      {
        v7 = v8;
        do
        {
LABEL_10:
          v9 = *(v14 + 40);
          v5 &= v5 - 1;

          v10 = sub_1DB09D6B4();

          v11 = sub_1DB09D6B4();

          [v9 setValue:v10 forHTTPHeaderField:v11];
        }

        while (v5);
        continue;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_13:
    v12 = *(v0 + 8);
    v13 = *(v0 + 40);

    v12(v13);
  }
}

uint64_t sub_1DAFA9E80(uint64_t a1, char a2)
{
  *(v3 + 192) = a2;
  *(v3 + 72) = a1;
  *(v3 + 80) = v2;
  return MEMORY[0x1EEE6DFA0](sub_1DAFA9EA4, 0, 0);
}

uint64_t sub_1DAFA9EA4()
{
  if ((*(v0 + 192) & 1) != 0 || *(*(v0 + 80) + OBJC_IVAR____TtC17CoreODIEssentials14DIPHTTPSession_configuration + 8) != 1)
  {
    v4 = *(v0 + 72);
    v5 = [objc_opt_self() _deviceLanguage];
    v6 = sub_1DB09D6B4();
    [v4 setValue:v5 forHTTPHeaderField:v6];

    v7 = [v4 HTTPBody];
    if (v7)
    {
      v8 = v7;
      v9 = sub_1DB09D034();
      v11 = v10;

      v12 = v11;
      v13 = v11 >> 62;
      if ((v11 >> 62) <= 1)
      {
        if (!v13)
        {
          sub_1DAF40780(v9, v11);
          v14 = BYTE6(v11);
          goto LABEL_18;
        }

LABEL_14:
        v17 = sub_1DAF40780(v9, v12);
        LODWORD(v14) = HIDWORD(v9) - v9;
        if (__OFSUB__(HIDWORD(v9), v9))
        {
          __break(1u);
          return MEMORY[0x1EEE6DFA0](v17, v18, v19);
        }

        v14 = v14;
LABEL_18:
        v20 = *(v0 + 72);
        *(v0 + 64) = v14;
        v21 = sub_1DB09E1D4();
        MEMORY[0x1E127FE90](v21);

        v22 = sub_1DB09D6B4();

        v23 = sub_1DB09D6B4();
        [v20 setValue:v22 forHTTPHeaderField:v23];

        if (qword_1EE301710 != -1)
        {
          swift_once();
        }

        v18 = qword_1EE30A060;
        *(v0 + 96) = qword_1EE30A060;
        v17 = sub_1DAFAA4E0;
        v19 = 0;

        return MEMORY[0x1EEE6DFA0](v17, v18, v19);
      }

      if (v13 == 2)
      {
        v16 = *(v9 + 16);
        v15 = *(v9 + 24);
        sub_1DAF40780(v9, v12);
        v14 = v15 - v16;
        if (!__OFSUB__(v15, v16))
        {
          goto LABEL_18;
        }

        __break(1u);
        goto LABEL_14;
      }

      sub_1DAF40780(v9, v11);
    }

    v14 = 0;
    goto LABEL_18;
  }

  v1 = swift_task_alloc();
  *(v0 + 88) = v1;
  *v1 = v0;
  v1[1] = sub_1DAFAA190;
  v2 = *(v0 + 72);

  return sub_1DAFAFEF4(v2);
}

uint64_t sub_1DAFAA190()
{

  return MEMORY[0x1EEE6DFA0](sub_1DAFAA28C, 0, 0);
}

uint64_t sub_1DAFAA28C()
{
  v1 = v0[9];
  v2 = [objc_opt_self() _deviceLanguage];
  v3 = sub_1DB09D6B4();
  [v1 setValue:v2 forHTTPHeaderField:v3];

  v4 = [v1 HTTPBody];
  if (!v4)
  {
    goto LABEL_12;
  }

  v5 = v4;
  v6 = sub_1DB09D034();
  v8 = v7;

  v9 = v8;
  v10 = v8 >> 62;
  if ((v8 >> 62) > 1)
  {
    if (v10 == 2)
    {
      v13 = *(v6 + 16);
      v12 = *(v6 + 24);
      sub_1DAF40780(v6, v9);
      v11 = v12 - v13;
      if (!__OFSUB__(v12, v13))
      {
        goto LABEL_13;
      }

      __break(1u);
      goto LABEL_9;
    }

    sub_1DAF40780(v6, v8);
LABEL_12:
    v11 = 0;
    goto LABEL_13;
  }

  if (!v10)
  {
    sub_1DAF40780(v6, v8);
    v11 = BYTE6(v8);
    goto LABEL_13;
  }

LABEL_9:
  v14 = sub_1DAF40780(v6, v9);
  LODWORD(v11) = HIDWORD(v6) - v6;
  if (__OFSUB__(HIDWORD(v6), v6))
  {
    __break(1u);
    return MEMORY[0x1EEE6DFA0](v14, v15, v16);
  }

  v11 = v11;
LABEL_13:
  v17 = v0[9];
  v0[8] = v11;
  v18 = sub_1DB09E1D4();
  MEMORY[0x1E127FE90](v18);

  v19 = sub_1DB09D6B4();

  v20 = sub_1DB09D6B4();
  [v17 setValue:v19 forHTTPHeaderField:v20];

  if (qword_1EE301710 != -1)
  {
    swift_once();
  }

  v15 = qword_1EE30A060;
  v0[12] = qword_1EE30A060;
  v14 = sub_1DAFAA4E0;
  v16 = 0;

  return MEMORY[0x1EEE6DFA0](v14, v15, v16);
}

uint64_t sub_1DAFAA4E0()
{
  v1 = v0[12];
  v2 = *(v1 + 120);
  if (v2)
  {
    v0[16] = *(v1 + 112);
    v0[17] = v2;

    return MEMORY[0x1EEE6DFA0](sub_1DAFAA75C, 0, 0);
  }

  else
  {
    v3 = swift_task_alloc();
    v0[13] = v3;
    *v3 = v0;
    v3[1] = sub_1DAFAA5C0;

    return sub_1DAFB1344();
  }
}

uint64_t sub_1DAFAA5C0(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *(*v2 + 96);
  *(v3 + 112) = a1;
  *(v3 + 120) = a2;

  return MEMORY[0x1EEE6DFA0](sub_1DAFAA6D8, v4, 0);
}

uint64_t sub_1DAFAA6D8()
{
  v1 = v0[15];
  v2 = v0[12];
  *(v2 + 112) = v0[14];
  *(v2 + 120) = v1;

  v3 = v0[15];
  v0[16] = v0[14];
  v0[17] = v3;

  return MEMORY[0x1EEE6DFA0](sub_1DAFAA75C, 0, 0);
}

uint64_t sub_1DAFAA75C()
{
  v1 = *(v0 + 72);
  v2 = sub_1DB09D6B4();

  v3 = sub_1DB09D6B4();
  [v1 setValue:v2 forHTTPHeaderField:v3];

  if (qword_1EE3039A0 != -1)
  {
    swift_once();
  }

  v4 = qword_1EE3039B0;
  *(v0 + 144) = qword_1EE3039B0;

  return MEMORY[0x1EEE6DFA0](sub_1DAFAA858, v4, 0);
}

uint64_t sub_1DAFAA858()
{
  v1 = *(v0 + 144);
  if (*(v1 + 168))
  {

    return MEMORY[0x1EEE6DFA0](sub_1DAFAAA38, v1, 0);
  }

  else
  {
    v2 = swift_task_alloc();
    *(v0 + 152) = v2;
    *v2 = v0;
    v2[1] = sub_1DAFAA928;

    return sub_1DAFC5F3C();
  }
}

uint64_t sub_1DAFAA928()
{
  v1 = *v0;

  v2 = *(v1 + 144);

  return MEMORY[0x1EEE6DFA0](sub_1DAFAAA38, v2, 0);
}

uint64_t sub_1DAFAAA38()
{
  v1 = v0[18];
  v2 = sub_1DAFB3448();
  v3 = swift_task_alloc();
  v0[20] = v3;
  v3[2] = v1;
  v3[3] = 0xD000000000000010;
  v3[4] = 0x80000001DB0C5B20;
  v4 = swift_task_alloc();
  v0[21] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0EAE0, &unk_1DB0A4650);
  *v4 = v0;
  v4[1] = sub_1DAFAAB6C;

  return MEMORY[0x1EEE6DDE0](v0 + 2, v1, v2, 0x736E41474D746567, 0xEF293A5F28726577, sub_1DAFA7214, v3, v5);
}

uint64_t sub_1DAFAAB6C()
{
  v1 = *v0;

  *(v1 + 176) = *(v1 + 16);

  return MEMORY[0x1EEE6DFA0](sub_1DAFAAC8C, 0, 0);
}

uint64_t sub_1DAFAAC8C()
{
  if (*(v0 + 184))
  {
    v1 = *(v0 + 72);
    v2 = sub_1DB09D6B4();

    v3 = sub_1DB09D6B4();
    [v1 setValue:v2 forHTTPHeaderField:v3];
  }

  [*(v0 + 72) ak_addClientInfoHeader];
  v4 = [objc_opt_self() standardUserDefaults];
  v5 = sub_1DB09D6B4();
  v6 = [v4 stringForKey_];

  if (!v6 || (v7 = sub_1DB09D6C4(), v9 = v8, v6, *(v0 + 32) = v7, *(v0 + 40) = v9, *(v0 + 48) = 1685025392, *(v0 + 56) = 0xE400000000000000, sub_1DAF9C5EC(), v10 = sub_1DB09DCB4(), , v10))
  {
    v11 = *(v0 + 72);
    v12 = sub_1DB09D6B4();
    v13 = sub_1DB09D6B4();
    [v11 setValue:v12 forHTTPHeaderField:v13];
  }

  v14 = *(v0 + 8);

  return v14();
}

uint64_t sub_1DAFAAE8C(uint64_t a1, char a2, char a3, _BYTE *a4)
{
  *(v5 + 82) = a3;
  *(v5 + 81) = a2;
  *(v5 + 88) = a1;
  *(v5 + 96) = v4;
  v7 = sub_1DB09CBF4();
  *(v5 + 104) = v7;
  *(v5 + 112) = *(v7 - 8);
  *(v5 + 120) = swift_task_alloc();
  v8 = sub_1DB09CF64();
  *(v5 + 128) = v8;
  *(v5 + 136) = *(v8 - 8);
  *(v5 + 144) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0EAB0, &qword_1DB0A9530);
  *(v5 + 152) = swift_task_alloc();
  *(v5 + 160) = swift_task_alloc();
  *(v5 + 83) = *a4;

  return MEMORY[0x1EEE6DFA0](sub_1DAFAB000, 0, 0);
}

uint64_t sub_1DAFAB000()
{
  v65 = v0;
  v1 = *(v0 + 88);
  sub_1DAF3523C(*(v0 + 96) + OBJC_IVAR____TtC17CoreODIEssentials14DIPHTTPSession_logger, v0 + 16);
  v61 = *(v0 + 48);
  v62 = *(v0 + 40);
  __swift_project_boxed_opaque_existential_1((v0 + 16), v62);
  v63 = 0;
  v64 = 0xE000000000000000;
  sub_1DB09DE44();
  MEMORY[0x1E127FE90](0xD000000000000013, 0x80000001DB0C5670);
  v2 = [v1 HTTPMethod];
  v3 = sub_1DB09D6C4();
  v5 = v4;

  MEMORY[0x1E127FE90](v3, v5);

  MEMORY[0x1E127FE90](32, 0xE100000000000000);
  v6 = [v1 URL];
  if (v6)
  {
    v7 = v6;
    sub_1DB09CF04();

    v8 = 0;
  }

  else
  {
    v8 = 1;
  }

  v10 = *(v0 + 152);
  v9 = *(v0 + 160);
  v12 = *(v0 + 128);
  v11 = *(v0 + 136);
  (*(v11 + 56))(v10, v8, 1, v12);
  sub_1DAF624E8(v10, v9, &unk_1ECC0EAB0, &qword_1DB0A9530);
  v13 = (*(v11 + 48))(v9, 1, v12);
  v14 = *(v0 + 160);
  if (v13)
  {
    sub_1DAF40AEC(*(v0 + 160), &unk_1ECC0EAB0, &qword_1DB0A9530);
    v15 = 0xED0000676E697274;
    v16 = 0x53204C5255206F4ELL;
  }

  else
  {
    v17 = *(v0 + 136);
    v18 = *(v0 + 144);
    v19 = *(v0 + 128);
    (*(v17 + 16))(v18, *(v0 + 160), v19);
    sub_1DAF40AEC(v14, &unk_1ECC0EAB0, &qword_1DB0A9530);
    v16 = sub_1DB09CEA4();
    v15 = v20;
    (*(v17 + 8))(v18, v19);
  }

  v59 = *(v0 + 83);
  v21 = *(v0 + 112);
  v22 = *(v0 + 120);
  v60 = *(v0 + 104);
  v23 = *(v0 + 82);
  v24 = *(v0 + 81);
  v58 = *(v0 + 81);
  MEMORY[0x1E127FE90](v16, v15);

  MEMORY[0x1E127FE90](0x65726F6E67692820, 0xEF203A6568636143);
  if (v24)
  {
    v25 = 1702195828;
  }

  else
  {
    v25 = 0x65736C6166;
  }

  if (v24)
  {
    v26 = 0xE400000000000000;
  }

  else
  {
    v26 = 0xE500000000000000;
  }

  MEMORY[0x1E127FE90](v25, v26);

  MEMORY[0x1E127FE90](0x6E6F6E417369202CLL, 0xEF203A73756F6D79);
  if (v23)
  {
    v27 = 1702195828;
  }

  else
  {
    v27 = 0x65736C6166;
  }

  if (v23)
  {
    v28 = 0xE400000000000000;
  }

  else
  {
    v28 = 0xE500000000000000;
  }

  MEMORY[0x1E127FE90](v27, v28);

  v29 = v63;
  LOBYTE(v63) = 17;
  (*(v61 + 32))(v29, v64, &v63, v62);

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  sub_1DB09CBA4();
  LOBYTE(v63) = v59;
  v30 = sub_1DAFAB868(v22, &v63);
  v32 = v31;
  *(v0 + 168) = v30;
  (*(v21 + 8))(v22, v60);
  if ((v58 & 1) != 0 || (v32 & 1) == 0)
  {
    if (v30)
    {
      v40 = qword_1EE304378;
      v41 = v30;
      if (v40 != -1)
      {
        swift_once();
      }

      sub_1DAFE63DC(v41);
      if (v42)
      {
        v43 = *(v0 + 88);
        v44 = sub_1DB09D6B4();

        v45 = sub_1DB09D6B4();
        [v43 addValue:v44 forHTTPHeaderField:v45];
      }
    }
  }

  else if (v30)
  {
    v33 = [v30 data];
    v34 = sub_1DB09D034();
    v36 = v35;

    v37 = [v30 response];

    v38 = *(v0 + 8);

    return v38(v34, v36, v37, 1);
  }

  v47 = *(v0 + 88);
  v46 = *(v0 + 96);
  v48 = *&v46[OBJC_IVAR____TtC17CoreODIEssentials14DIPHTTPSession_retrier];
  v49 = *&v46[OBJC_IVAR____TtC17CoreODIEssentials14DIPHTTPSession_retrier + 8];
  v50 = v46[OBJC_IVAR____TtC17CoreODIEssentials14DIPHTTPSession_retrier + 16];
  v51 = v30;
  v52 = v46;
  v53 = v47;
  v54 = swift_task_alloc();
  *(v0 + 176) = v54;
  *v54 = v0;
  v54[1] = sub_1DAFAB5FC;
  v55 = *(v0 + 82);
  v57 = *(v0 + 88);
  v56 = *(v0 + 96);

  return sub_1DAF9CF6C(v0 + 56, v48, v49, v50, v56, v57, v55, v30);
}

uint64_t sub_1DAFAB5FC()
{
  *(*v1 + 184) = v0;

  if (v0)
  {
    v2 = sub_1DAFAB7D0;
  }

  else
  {
    v2 = sub_1DAFAB710;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1DAFAB710()
{
  v2 = *(v0 + 56);
  v1 = *(v0 + 64);
  v3 = *(v0 + 72);
  v4 = *(v0 + 80);

  v5 = *(v0 + 8);

  return v5(v2, v1, v3, v4);
}

uint64_t sub_1DAFAB7D0()
{

  v1 = *(v0 + 8);

  return v1();
}

id sub_1DAFAB868(uint64_t a1, unsigned __int8 *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0EAD0, &qword_1DB0AD520);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v113 - v5;
  v7 = sub_1DB09D154();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v124 = &v113 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v113 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0EAB0, &qword_1DB0A9530);
  v14 = MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v113 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v14);
  v18 = MEMORY[0x1EEE9AC00](v17);
  MEMORY[0x1EEE9AC00](v18);
  v20 = MEMORY[0x1EEE9AC00](&v113 - v19);
  v21 = MEMORY[0x1EEE9AC00](v20);
  v23 = &v113 - v22;
  v24 = MEMORY[0x1EEE9AC00](v21);
  v29 = &v113 - v28;
  if (*(v2 + OBJC_IVAR____TtC17CoreODIEssentials14DIPHTTPSession_configuration + 10) != 1)
  {
    return 0;
  }

  v120 = v25;
  v121 = v6;
  v115 = v24;
  v116 = v27;
  v118 = v12;
  v119 = v26;
  v122 = v7;
  v117 = *a2;
  v30 = objc_opt_self();
  v31 = [v30 standardUserDefaults];
  if (qword_1EE301DD8 != -1)
  {
    swift_once();
  }

  v32 = byte_1EE30A140;
  v123 = v8;
  if (byte_1EE30A140 == 1)
  {
    v33 = sub_1DB09D6B4();
    v34 = [v31 BOOLForKey_];

    if (v34)
    {
      return 0;
    }
  }

  else
  {
  }

  v35 = v2;
  v36 = sub_1DB09CB64();
  if (!v37)
  {
    return 0;
  }

  if (v36 == 5522759 && v37 == 0xE300000000000000)
  {

    goto LABEL_13;
  }

  v39 = sub_1DB09E254();

  if ((v39 & 1) == 0)
  {
    return 0;
  }

LABEL_13:
  if (qword_1EE304378 != -1)
  {
    swift_once();
  }

  v40 = qword_1EE30A1E0;
  v41 = sub_1DB09CB84();
  v42 = [v40 cachedResponseForRequest_];

  if (!v42)
  {
    sub_1DAF3523C(v35 + OBJC_IVAR____TtC17CoreODIEssentials14DIPHTTPSession_logger, v129);
    v53 = v130;
    v54 = v131;
    __swift_project_boxed_opaque_existential_1(v129, v130);
    *&v127 = 0;
    *(&v127 + 1) = 0xE000000000000000;
    sub_1DB09DE44();

    *&v127 = 0xD00000000000001CLL;
    *(&v127 + 1) = 0x80000001DB0C5A00;
    sub_1DB09CBC4();
    v55 = sub_1DB09CF64();
    v56 = *(v55 - 8);
    if ((*(v56 + 48))(v16, 1, v55) == 1)
    {
      sub_1DAF40AEC(v16, &unk_1ECC0EAB0, &qword_1DB0A9530);
      v57 = 0;
      v58 = 0xE000000000000000;
    }

    else
    {
      v81 = sub_1DB09CEA4();
      v58 = v82;
      (*(v56 + 8))(v16, v55);
      v57 = v81;
    }

    MEMORY[0x1E127FE90](v57, v58);

    v83 = v127;
    sub_1DAFD2A1C(&v127);
    Loggable.debug(_:category:)(v83, *(&v83 + 1), &v127, v53, v54);

    __swift_destroy_boxed_opaque_existential_1Tm(v129);
    return 0;
  }

  v114 = v42;
  v43 = [v30 standardUserDefaults];
  v44 = v43;
  if (v32)
  {
    v45 = sub_1DB09D6B4();
    v46 = [v44 BOOLForKey_];

    if (v46)
    {
      if (qword_1EE301DE8 != -1)
      {
        swift_once();
      }

      v47 = qword_1EE30A148;
      v48 = sub_1DB09DB44();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0EEE0, &qword_1DB0A21E0);
      v49 = swift_allocObject();
      *(v49 + 16) = xmmword_1DB0A04E0;
      v50 = [v114 response];
      v51 = [v50 URL];

      if (v51)
      {
        sub_1DB09CF04();

        v52 = sub_1DB09CF64();
        (*(*(v52 - 8) + 56))(v23, 0, 1, v52);
      }

      else
      {
        v52 = sub_1DB09CF64();
        (*(*(v52 - 8) + 56))(v23, 1, 1, v52);
      }

      sub_1DAF624E8(v23, v29, &unk_1ECC0EAB0, &qword_1DB0A9530);
      sub_1DB09CF64();
      v100 = *(v52 - 8);
      if ((*(v100 + 48))(v29, 1, v52) == 1)
      {
        sub_1DAF40AEC(v29, &unk_1ECC0EAB0, &qword_1DB0A9530);
        v101 = 0;
        v102 = 0;
      }

      else
      {
        v101 = sub_1DB09CEA4();
        v102 = v103;
        (*(v100 + 8))(v29, v52);
      }

      *(v49 + 56) = MEMORY[0x1E69E6158];
      *(v49 + 64) = sub_1DAF4DC24();
      v104 = 0x3E6C696E3CLL;
      if (v102)
      {
        v104 = v101;
      }

      v105 = 0xE500000000000000;
      if (v102)
      {
        v105 = v102;
      }

      *(v49 + 32) = v104;
      *(v49 + 40) = v105;
      sub_1DB09D444("Using cached response for %{public}@ due to user defaults setting", 65, 2, &dword_1DAF16000, v47, v48, v49);

      return v114;
    }
  }

  else
  {
  }

  v59 = [v114 userInfo];
  if (!v59)
  {
    v127 = 0u;
    v128 = 0u;
    v62 = v122;
    goto LABEL_38;
  }

  v60 = v59;
  v61 = sub_1DB09D624();

  v125 = 0x4173657269707865;
  v126 = 0xE900000000000074;
  sub_1DB09DDB4();
  v62 = v122;
  if (!*(v61 + 16) || (v63 = sub_1DAF353E0(v129), (v64 & 1) == 0))
  {

    sub_1DAF4057C(v129);
    v127 = 0u;
    v128 = 0u;
    goto LABEL_38;
  }

  v65 = v35;
  sub_1DAF409DC(*(v61 + 56) + 32 * v63, &v127);
  sub_1DAF4057C(v129);

  if (!*(&v128 + 1))
  {
LABEL_38:
    sub_1DAF40AEC(&v127, &qword_1ECC0E370, &qword_1DB0A09B0);
    v66 = v121;
    (*(v123 + 56))(v121, 1, 1, v62);
    goto LABEL_39;
  }

  v66 = v121;
  v67 = swift_dynamicCast();
  v68 = v123;
  (*(v123 + 56))(v66, v67 ^ 1u, 1, v62);
  if ((*(v68 + 48))(v66, 1, v62) == 1)
  {
LABEL_39:
    sub_1DAF40AEC(v66, &unk_1ECC0EAD0, &qword_1DB0AD520);
LABEL_40:
    v84 = v119;
    v85 = v120;
    if (qword_1EE301DE8 != -1)
    {
      swift_once();
    }

    v86 = qword_1EE30A148;
    v87 = sub_1DB09DB44();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0EEE0, &qword_1DB0A21E0);
    v88 = swift_allocObject();
    *(v88 + 16) = xmmword_1DB0A04E0;
    v89 = [v114 response];
    v90 = [v89 URL];

    if (v90)
    {
      sub_1DB09CF04();

      v91 = 0;
    }

    else
    {
      v91 = 1;
    }

    v92 = MEMORY[0x1E69E6158];
    v93 = sub_1DB09CF64();
    v94 = *(v93 - 8);
    (*(v94 + 56))(v84, v91, 1, v93);
    sub_1DAF624E8(v84, v85, &unk_1ECC0EAB0, &qword_1DB0A9530);
    if ((*(v94 + 48))(v85, 1, v93) == 1)
    {
      sub_1DAF40AEC(v85, &unk_1ECC0EAB0, &qword_1DB0A9530);
      v95 = 0;
      v96 = 0;
    }

    else
    {
      v95 = sub_1DB09CEA4();
      v96 = v97;
      (*(v94 + 8))(v85, v93);
    }

    *(v88 + 56) = v92;
    *(v88 + 64) = sub_1DAF4DC24();
    v98 = 0x3E6C696E3CLL;
    if (v96)
    {
      v98 = v95;
    }

    v99 = 0xE500000000000000;
    if (v96)
    {
      v99 = v96;
    }

    *(v88 + 32) = v98;
    *(v88 + 40) = v99;
    sub_1DB09D444("Cached response is expired, fetching new response for %{public}@", 64, 2, &dword_1DAF16000, v86, v87, v88);

    return v114;
  }

  v69 = v118;
  (*(v68 + 32))(v118, v66, v62);
  v70 = v124;
  sub_1DB09D144();
  v71 = sub_1DB09D0C4();
  v74 = *(v68 + 8);
  v72 = v68 + 8;
  v73 = v74;
  v74(v70, v62);
  if ((v71 & 1) == 0)
  {
    v73(v69, v62);
    goto LABEL_40;
  }

  v123 = v72;
  sub_1DAF3523C(v65 + OBJC_IVAR____TtC17CoreODIEssentials14DIPHTTPSession_logger, v129);
  v75 = v130;
  v76 = v131;
  __swift_project_boxed_opaque_existential_1(v129, v130);
  *&v127 = 0;
  *(&v127 + 1) = 0xE000000000000000;
  sub_1DB09DE44();

  *&v127 = 0xD00000000000001ALL;
  *(&v127 + 1) = 0x80000001DB0C5A90;
  v77 = [v114 response];
  v78 = [v77 URL];

  if (v78)
  {
    v79 = v115;
    sub_1DB09CF04();

    v80 = 0;
  }

  else
  {
    v80 = 1;
    v79 = v115;
  }

  v106 = sub_1DB09CF64();
  v107 = *(v106 - 8);
  (*(v107 + 56))(v79, v80, 1, v106);
  v108 = v116;
  sub_1DAF624E8(v79, v116, &unk_1ECC0EAB0, &qword_1DB0A9530);
  if ((*(v107 + 48))(v108, 1, v106) == 1)
  {
    v109 = 0x3E6C696E3CLL;
    sub_1DAF40AEC(v108, &unk_1ECC0EAB0, &qword_1DB0A9530);
    v110 = 0xE500000000000000;
  }

  else
  {
    v109 = sub_1DB09CEA4();
    v110 = v111;
    (*(v107 + 8))(v108, v106);
  }

  MEMORY[0x1E127FE90](v109, v110);

  v112 = v127;
  LOBYTE(v127) = v117;
  (*(v76 + 32))(v112, *(&v127 + 1), &v127, v75, v76);

  v73(v118, v62);
  __swift_destroy_boxed_opaque_existential_1Tm(v129);
  return v114;
}

uint64_t sub_1DAFAC774(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6)
{
  *(v6 + 1024) = a6;
  *(v6 + 1208) = a5;
  *(v6 + 1016) = a4;
  *(v6 + 1008) = a3;
  *(v6 + 1000) = a1;
  v7 = sub_1DB09CF64();
  *(v6 + 1032) = v7;
  *(v6 + 1040) = *(v7 - 8);
  *(v6 + 1048) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0EAB0, &qword_1DB0A9530);
  *(v6 + 1056) = swift_task_alloc();
  *(v6 + 1064) = swift_task_alloc();
  v8 = sub_1DB09CBF4();
  *(v6 + 1072) = v8;
  *(v6 + 1080) = *(v8 - 8);
  *(v6 + 1088) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DAFAC8E4, 0, 0);
}

uint64_t sub_1DAFAC8E4()
{
  v1 = *(v0 + 1208);
  sub_1DB09CBA4();
  sub_1DAFB01E0();
  *(v0 + 1096) = sub_1DAFA9784(v1);
  v2 = swift_task_alloc();
  *(v0 + 1104) = v2;
  *v2 = v0;
  v2[1] = sub_1DAFAC9B8;
  v3 = *(v0 + 1088);

  return MEMORY[0x1EEDC6260](v3, 0);
}

uint64_t sub_1DAFAC9B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v4;
  v5[139] = a1;
  v5[140] = a2;
  v5[141] = a3;
  v5[142] = v3;

  if (v3)
  {
    v6 = sub_1DAFAE218;
  }

  else
  {
    v6 = sub_1DAFACAD8;
  }

  return MEMORY[0x1EEE6DFA0](v6, 0, 0);
}

uint64_t sub_1DAFACAD8()
{
  v193 = v0;
  objc_opt_self();
  v1 = swift_dynamicCastObjCClass();
  if (v1)
  {
    v2 = v1;
    v3 = (v0 + 1128);
    v4 = *(v0 + 1120);
    v5 = *(v0 + 1112);
    v6 = *(v0 + 1096);
    v7 = *(v0 + 1128);
    sub_1DAF40674(v5, v4);
    sub_1DAFB0610(v2, v5, v4);

    sub_1DAF40780(v5, v4);
  }

  else
  {
    v3 = (v0 + 1096);
  }

  v8 = *(v0 + 1128);
  v9 = *(v0 + 1088);
  v10 = *(v0 + 1080);
  v11 = *(v0 + 1072);

  (*(v10 + 8))(v9, v11);
  v12 = v8;
  v13 = sub_1DAFB23D4(v8, 0);

  if (!v13)
  {
    v25 = *(v0 + 1016);
    sub_1DAF3523C(*(v0 + 1008) + OBJC_IVAR____TtC17CoreODIEssentials14DIPHTTPSession_logger, v0 + 56);
    v26 = *(v0 + 80);
    v27 = *(v0 + 88);
    __swift_project_boxed_opaque_existential_1((v0 + 56), v26);
    sub_1DB09DE44();

    v191 = 0xD000000000000013;
    v192 = 0x80000001DB0C58A0;
    v28 = [v25 HTTPMethod];
    v29 = sub_1DB09D6C4();
    v31 = v30;

    MEMORY[0x1E127FE90](v29, v31);

    MEMORY[0x1E127FE90](32, 0xE100000000000000);
    v32 = [v25 URL];
    if (v32)
    {
      v33 = v32;
      sub_1DB09CF04();

      v34 = 0;
    }

    else
    {
      v34 = 1;
    }

    v80 = *(v0 + 1064);
    v81 = *(v0 + 1056);
    v82 = *(v0 + 1040);
    v83 = *(v0 + 1032);
    (*(v82 + 56))(v81, v34, 1, v83);
    sub_1DAF624E8(v81, v80, &unk_1ECC0EAB0, &qword_1DB0A9530);
    v84 = (*(v82 + 48))(v80, 1, v83);
    v85 = *(v0 + 1064);
    if (v84)
    {
      sub_1DAF40AEC(*(v0 + 1064), &unk_1ECC0EAB0, &qword_1DB0A9530);
      v86 = 0xED0000676E697274;
      v87 = 0x53204C5255206F4ELL;
    }

    else
    {
      v88 = *(v0 + 1048);
      v89 = *(v0 + 1040);
      v90 = *(v0 + 1032);
      (*(v89 + 16))(v88, *(v0 + 1064), v90);
      sub_1DAF40AEC(v85, &unk_1ECC0EAB0, &qword_1DB0A9530);
      v91 = sub_1DB09CEA4();
      v86 = v92;
      (*(v89 + 8))(v88, v90);
      v87 = v91;
    }

    v93 = *(v0 + 1120);
    v94 = *(v0 + 1112);
    v95 = *(v0 + 1000);
    MEMORY[0x1E127FE90](v87, v86);

    v96 = v191;
    LOBYTE(v191) = 17;
    (*(v27 + 16))(v96, v192, &v191, v26, v27);

    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 56));
    *v95 = v94;
    *(v95 + 8) = v93;
    *(v95 + 16) = v8;
    *(v95 + 24) = 0;
    goto LABEL_100;
  }

  v14 = *(v0 + 1128);
  v15 = *(v0 + 1120);
  v16 = *(v0 + 1112);
  swift_willThrow();

  sub_1DAF40780(v16, v15);
  *(v0 + 1144) = v13;
  v17 = v13;
  if (qword_1EE301E08 != -1)
  {
    swift_once();
  }

  v18 = sub_1DAF3E128(MEMORY[0x1E69E7CC0]);
  v19 = v13;
  v20 = sub_1DB09CE64();
  v21 = [v20 domain];
  v22 = sub_1DB09D6C4();
  v24 = v23;

  if (v22 == 0x726F72724549444FLL && v24 == 0xE800000000000000)
  {
  }

  else
  {
    v35 = sub_1DB09E254();

    if ((v35 & 1) == 0)
    {
      v39 = sub_1DB09D6C4();
      v41 = v40;
      *(v0 + 888) = sub_1DAF4D7A4();
      *(v0 + 864) = v20;
      sub_1DAF40D20((v0 + 864), (v0 + 608));
      v42 = v20;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v191 = v18;
      sub_1DAF3B11C((v0 + 608), v39, v41, isUniquelyReferenced_nonNull_native);

      v37 = v18;
      v38 = 138;
      goto LABEL_17;
    }
  }

  ODIErrorCode.init(rawValue:)([v20 code]);
  v36 = [v20 userInfo];
  v37 = sub_1DB09D624();

  if (v191 == 211)
  {
    v38 = 138;
  }

  else
  {
    v38 = v191 ^ 0x80u;
  }

LABEL_17:
  if (*(v37 + 16) && (v44 = sub_1DAF35210(0x636F766E4949444FLL, 0xEE00736E6F697461), (v45 & 1) != 0) && (sub_1DAF409DC(*(v37 + 56) + 32 * v44, v0 + 256), __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0EAC0, &qword_1DB0A3F60), swift_dynamicCast()))
  {
    v46 = *(v0 + 984);
  }

  else
  {
    v46 = MEMORY[0x1E69E7CC0];
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v46 = sub_1DAF72EC0(0, *(v46 + 2) + 1, 1, v46);
  }

  v48 = *(v46 + 2);
  v47 = *(v46 + 3);
  if (v48 >= v47 >> 1)
  {
    v46 = sub_1DAF72EC0((v47 > 1), v48 + 1, 1, v46);
  }

  *(v46 + 2) = v48 + 1;
  v49 = &v46[56 * v48];
  *(v49 + 4) = 0xD00000000000002ALL;
  *(v49 + 5) = 0x80000001DB0C56B0;
  *(v49 + 6) = 0xD000000000000026;
  *(v49 + 7) = 0x80000001DB0C56E0;
  *(v49 + 8) = 0xD00000000000001ELL;
  *(v49 + 9) = 0x80000001DB0C5710;
  *(v49 + 10) = 369;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0EAC0, &qword_1DB0A3F60);
  *(v0 + 1152) = v50;
  *(v0 + 664) = v50;
  *(v0 + 640) = v46;
  sub_1DAF40D20((v0 + 640), (v0 + 160));
  v51 = swift_isUniquelyReferenced_nonNull_native();
  v191 = v37;
  sub_1DAF3B11C((v0 + 160), 0x636F766E4949444FLL, 0xEE00736E6F697461, v51);
  v52 = qword_1DB0A9590[v38];
  v53 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
  v54 = sub_1DB09D6B4();
  v55 = sub_1DB09D604();
  v56 = [v53 initWithDomain:v54 code:v52 userInfo:v55];

  swift_getErrorValue();
  v57 = sub_1DB09E344();
  v59 = v58;
  if (v57 == sub_1DB09D6C4() && v59 == v60)
  {
  }

  else
  {
    v61 = sub_1DB09E254();

    if ((v61 & 1) == 0)
    {
      goto LABEL_39;
    }
  }

  v62 = [*(v0 + 1016) HTTPMethod];
  v63 = sub_1DB09D6C4();
  v65 = v64;

  if (v63 == 5522759 && v65 == 0xE300000000000000)
  {
  }

  else
  {
    v66 = sub_1DB09E254();

    if ((v66 & 1) == 0)
    {
      goto LABEL_39;
    }
  }

  swift_getErrorValue();
  v67 = sub_1DB09E334();
  if (v67 == -1009)
  {
    v97 = sub_1DAF3E128(MEMORY[0x1E69E7CC0]);
    v98 = v13;
    v99 = sub_1DB09CE64();
    v100 = [v99 domain];
    v101 = sub_1DB09D6C4();
    v103 = v102;

    v188 = 0x80000001DB0C56E0;
    if (v101 == 0x726F72724549444FLL && v103 == 0xE800000000000000)
    {
    }

    else
    {
      v109 = sub_1DB09E254();

      if ((v109 & 1) == 0)
      {
        v137 = sub_1DB09D6C4();
        v139 = v138;
        *(v0 + 760) = sub_1DAF4D7A4();
        *(v0 + 736) = v99;
        sub_1DAF40D20((v0 + 736), (v0 + 768));
        v140 = v99;
        v141 = swift_isUniquelyReferenced_nonNull_native();
        v191 = v97;
        sub_1DAF3B11C((v0 + 768), v137, v139, v141);

        v111 = v97;
        v108 = 151;
LABEL_88:
        if (*(v111 + 16) && (v142 = sub_1DAF35210(0x636F766E4949444FLL, 0xEE00736E6F697461), (v143 & 1) != 0) && (sub_1DAF409DC(*(v111 + 56) + 32 * v142, v0 + 800), swift_dynamicCast()))
        {
          v144 = *(v0 + 944);
        }

        else
        {
          v144 = MEMORY[0x1E69E7CC0];
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v144 = sub_1DAF72EC0(0, *(v144 + 2) + 1, 1, v144);
        }

        v146 = *(v144 + 2);
        v145 = *(v144 + 3);
        if (v146 >= v145 >> 1)
        {
          v144 = sub_1DAF72EC0((v145 > 1), v146 + 1, 1, v144);
        }

        *(v144 + 2) = v146 + 1;
        v147 = &v144[56 * v146];
        *(v147 + 4) = 0xD000000000000027;
        *(v147 + 5) = 0x80000001DB0C5820;
        *(v147 + 6) = 0xD000000000000026;
        *(v147 + 7) = v188;
        *(v147 + 8) = 0xD000000000000036;
        *(v147 + 9) = 0x80000001DB0C5750;
        *(v147 + 10) = 290;
        *(v0 + 856) = v50;
        *(v0 + 832) = v144;
        sub_1DAF40D20((v0 + 832), (v0 + 128));
        v135 = swift_isUniquelyReferenced_nonNull_native();
        v191 = v111;
        v136 = (v0 + 128);
        goto LABEL_98;
      }
    }

    ODIErrorCode.init(rawValue:)([v99 code]);
    v110 = [v99 userInfo];
    v111 = sub_1DB09D624();

    if (v191 == 211)
    {
      v108 = 151;
    }

    else
    {
      v108 = v191 ^ 0x80u;
    }

    goto LABEL_88;
  }

  if (v67 == -1005)
  {
    v68 = sub_1DAF3E128(MEMORY[0x1E69E7CC0]);
    v69 = v13;
    v70 = sub_1DB09CE64();
    v71 = [v70 domain];
    v72 = sub_1DB09D6C4();
    v74 = v73;

    v187 = 0x80000001DB0C56E0;
    if (v72 == 0x726F72724549444FLL && v74 == 0xE800000000000000)
    {
    }

    else
    {
      v105 = sub_1DB09E254();

      if ((v105 & 1) == 0)
      {
        v124 = sub_1DB09D6C4();
        v126 = v125;
        *(v0 + 728) = sub_1DAF4D7A4();
        *(v0 + 704) = v70;
        sub_1DAF40D20((v0 + 704), (v0 + 672));
        v127 = v70;
        v128 = swift_isUniquelyReferenced_nonNull_native();
        v191 = v68;
        sub_1DAF3B11C((v0 + 672), v124, v126, v128);

        v107 = v68;
        v108 = 128;
LABEL_77:
        if (*(v107 + 16) && (v129 = sub_1DAF35210(0x636F766E4949444FLL, 0xEE00736E6F697461), (v130 & 1) != 0) && (sub_1DAF409DC(*(v107 + 56) + 32 * v129, v0 + 448), swift_dynamicCast()))
        {
          v131 = *(v0 + 976);
        }

        else
        {
          v131 = MEMORY[0x1E69E7CC0];
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v131 = sub_1DAF72EC0(0, *(v131 + 2) + 1, 1, v131);
        }

        v133 = *(v131 + 2);
        v132 = *(v131 + 3);
        if (v133 >= v132 >> 1)
        {
          v131 = sub_1DAF72EC0((v132 > 1), v133 + 1, 1, v131);
        }

        *(v131 + 2) = v133 + 1;
        v134 = &v131[56 * v133];
        *(v134 + 4) = 0xD000000000000049;
        *(v134 + 5) = 0x80000001DB0C5850;
        *(v134 + 6) = 0xD000000000000026;
        *(v134 + 7) = v187;
        *(v134 + 8) = 0xD000000000000036;
        *(v134 + 9) = 0x80000001DB0C5750;
        *(v134 + 10) = 287;
        *(v0 + 248) = v50;
        *(v0 + 224) = v131;
        sub_1DAF40D20((v0 + 224), (v0 + 192));
        v135 = swift_isUniquelyReferenced_nonNull_native();
        v191 = v107;
        v136 = (v0 + 192);
LABEL_98:
        sub_1DAF3B11C(v136, 0x636F766E4949444FLL, 0xEE00736E6F697461, v135);
        v148 = qword_1DB0A9590[v108];
        v149 = *(v0 + 1000);
        v150 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
        v151 = sub_1DB09D6B4();
        v152 = sub_1DB09D604();
        v153 = [v150 initWithDomain:v151 code:v148 userInfo:v152];

        *(v149 + 8) = 0;
        *(v149 + 16) = 0;
        *v149 = v153;
        v154 = 256;
LABEL_99:
        *(v149 + 24) = v154;
        goto LABEL_100;
      }
    }

    ODIErrorCode.init(rawValue:)([v70 code]);
    v106 = [v70 userInfo];
    v107 = sub_1DB09D624();

    if (v191 == 211)
    {
      v108 = 128;
    }

    else
    {
      v108 = v191 ^ 0x80u;
    }

    goto LABEL_77;
  }

LABEL_39:
  sub_1DAF72C08(&v190);
  if (v190 - 173 > 0xD)
  {
LABEL_73:
    if (v190 - 10 >= 2)
    {
      v123 = *(v0 + 1000);

      *(v123 + 8) = 0;
      *(v123 + 16) = 0;
      *v123 = v13;
      *(v123 + 24) = 256;
      goto LABEL_100;
    }

    goto LABEL_74;
  }

  if (((1 << (v190 + 83)) & 0x3E00) != 0)
  {
LABEL_74:
    v122 = *(v0 + 1000);

    *(v122 + 8) = 0;
    *(v122 + 16) = 0;
    *v122 = v13;
    *(v122 + 24) = 512;
    goto LABEL_100;
  }

  if (((1 << (v190 + 83)) & 0x184) == 0)
  {
    if (v190 == 173)
    {
      v112 = *(v0 + 1024);
      if (v112)
      {
        v113 = v112;

        if (qword_1EE301DE8 != -1)
        {
          swift_once();
        }

        v114 = qword_1EE30A148;
        v115 = sub_1DB09DB54();
        sub_1DB09D444("Server indicated cached response has not been modified; reusing cached response", 79, 2, &dword_1DAF16000, v114, v115, MEMORY[0x1E69E7CC0]);
        if (qword_1EE304378 != -1)
        {
          swift_once();
        }

        v116 = *(v0 + 1000);
        [qword_1EE30A1E0 storeCachedResponse:v113 forRequest:*(v0 + 1016)];
        v117 = [v113 data];
        v118 = sub_1DB09D034();
        v120 = v119;

        v121 = [v113 response];
        *v116 = v118;
        *(v116 + 8) = v120;
        *(v116 + 16) = v121;
        *(v116 + 24) = 1;
        goto LABEL_100;
      }

      v156 = sub_1DAF3E128(MEMORY[0x1E69E7CC0]);
      v157 = v13;
      v158 = sub_1DB09CE64();
      v159 = [v158 domain];
      v160 = sub_1DB09D6C4();
      v162 = v161;

      v189 = 0x80000001DB0C56E0;
      if (v160 == 0x726F72724549444FLL && v162 == 0xE800000000000000)
      {
      }

      else
      {
        v163 = sub_1DB09E254();

        if ((v163 & 1) == 0)
        {
          v169 = sub_1DB09D6C4();
          v171 = v170;
          *(v0 + 504) = sub_1DAF4D7A4();
          *(v0 + 480) = v158;
          sub_1DAF40D20((v0 + 480), (v0 + 512));
          v172 = v158;
          v173 = swift_isUniquelyReferenced_nonNull_native();
          v191 = v156;
          sub_1DAF3B11C((v0 + 512), v169, v171, v173);

          v167 = v191;
          v168 = 128;
LABEL_111:
          if (*(v167 + 16) && (v174 = sub_1DAF35210(0x636F766E4949444FLL, 0xEE00736E6F697461), (v175 & 1) != 0) && (sub_1DAF409DC(*(v167 + 56) + 32 * v174, v0 + 544), swift_dynamicCast()))
          {
            v176 = *(v0 + 992);
          }

          else
          {
            v176 = MEMORY[0x1E69E7CC0];
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v176 = sub_1DAF72EC0(0, *(v176 + 2) + 1, 1, v176);
          }

          v178 = *(v176 + 2);
          v177 = *(v176 + 3);
          if (v178 >= v177 >> 1)
          {
            v176 = sub_1DAF72EC0((v177 > 1), v178 + 1, 1, v176);
          }

          *(v176 + 2) = v178 + 1;
          v179 = &v176[56 * v178];
          *(v179 + 4) = 0xD000000000000031;
          *(v179 + 5) = 0x80000001DB0C5790;
          *(v179 + 6) = 0xD000000000000026;
          *(v179 + 7) = v189;
          *(v179 + 8) = 0xD000000000000036;
          *(v179 + 9) = 0x80000001DB0C5750;
          *(v179 + 10) = 307;
          *(v0 + 600) = v50;
          *(v0 + 576) = v176;
          sub_1DAF40D20((v0 + 576), (v0 + 96));
          v180 = swift_isUniquelyReferenced_nonNull_native();
          v191 = v167;
          sub_1DAF3B11C((v0 + 96), 0x636F766E4949444FLL, 0xEE00736E6F697461, v180);
          v181 = qword_1DB0A9590[v168];
          v149 = *(v0 + 1000);
          v182 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
          v183 = sub_1DB09D6B4();
          v184 = sub_1DB09D604();
          v185 = [v182 initWithDomain:v183 code:v181 userInfo:v184];

          *(v149 + 8) = 0;
          *(v149 + 16) = 0;
          *v149 = v185;
          v154 = 512;
          goto LABEL_99;
        }
      }

      ODIErrorCode.init(rawValue:)([v158 code]);
      v164 = v191;
      v165 = v191 ^ 0x80;
      v166 = [v158 userInfo];
      v167 = sub_1DB09D624();

      if (v164 == 211)
      {
        v168 = 128;
      }

      else
      {
        v168 = v165;
      }

      goto LABEL_111;
    }

    goto LABEL_73;
  }

  v75 = *(v0 + 1208);

  if ((v75 & 1) != 0 || (v76 = *(v0 + 1008), *(v76 + OBJC_IVAR____TtC17CoreODIEssentials14DIPHTTPSession_configuration + 8) != 1))
  {
    v104 = *(v0 + 1000);
    *(v104 + 8) = 0;
    *(v104 + 16) = 0;
    *v104 = v13;
    *(v104 + 24) = 256;
LABEL_100:

    v155 = *(v0 + 8);

    return v155();
  }

  if (qword_1EE302B50 != -1)
  {
    swift_once();
    v76 = *(v0 + 1008);
  }

  v77 = qword_1EE302B58;
  v78 = type metadata accessor for ODIAccountManager();
  *(v0 + 40) = v78;
  *(v0 + 48) = &off_1F56CFCD8;
  *(v0 + 16) = v77;
  *(v0 + 1160) = __swift_project_boxed_opaque_existential_1((v0 + 16), v78);
  v79 = *(v76 + OBJC_IVAR____TtC17CoreODIEssentials14DIPHTTPSession_state);
  *(v0 + 1168) = v79;

  return MEMORY[0x1EEE6DFA0](sub_1DAFAF634, v79, 0);
}

uint64_t sub_1DAFAE218()
{
  v153 = v0;
  v1 = *(v0 + 1088);
  v2 = *(v0 + 1080);
  v3 = *(v0 + 1072);

  (*(v2 + 8))(v1, v3);
  v4 = *(v0 + 1136);
  *(v0 + 1144) = v4;
  v5 = v4;
  if (qword_1EE301E08 != -1)
  {
    swift_once();
  }

  v6 = sub_1DAF3E128(MEMORY[0x1E69E7CC0]);
  v7 = v4;
  v8 = sub_1DB09CE64();
  v9 = [v8 domain];
  v10 = sub_1DB09D6C4();
  v12 = v11;

  if (v10 == 0x726F72724549444FLL && v12 == 0xE800000000000000)
  {
  }

  else
  {
    v13 = sub_1DB09E254();

    if ((v13 & 1) == 0)
    {
      v17 = sub_1DB09D6C4();
      v19 = v18;
      *(v0 + 888) = sub_1DAF4D7A4();
      *(v0 + 864) = v8;
      sub_1DAF40D20((v0 + 864), (v0 + 608));
      v20 = v8;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v152 = v6;
      sub_1DAF3B11C((v0 + 608), v17, v19, isUniquelyReferenced_nonNull_native);

      v15 = v6;
      v16 = 138;
      goto LABEL_11;
    }
  }

  ODIErrorCode.init(rawValue:)([v8 code]);
  v14 = [v8 userInfo];
  v15 = sub_1DB09D624();

  if (v152 == 211)
  {
    v16 = 138;
  }

  else
  {
    v16 = v152 ^ 0x80u;
  }

LABEL_11:
  if (*(v15 + 16) && (v22 = sub_1DAF35210(0x636F766E4949444FLL, 0xEE00736E6F697461), (v23 & 1) != 0) && (sub_1DAF409DC(*(v15 + 56) + 32 * v22, v0 + 256), __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0EAC0, &qword_1DB0A3F60), swift_dynamicCast()))
  {
    v24 = *(v0 + 984);
  }

  else
  {
    v24 = MEMORY[0x1E69E7CC0];
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v24 = sub_1DAF72EC0(0, *(v24 + 2) + 1, 1, v24);
  }

  v26 = *(v24 + 2);
  v25 = *(v24 + 3);
  if (v26 >= v25 >> 1)
  {
    v24 = sub_1DAF72EC0((v25 > 1), v26 + 1, 1, v24);
  }

  *(v24 + 2) = v26 + 1;
  v27 = &v24[56 * v26];
  *(v27 + 4) = 0xD00000000000002ALL;
  *(v27 + 5) = 0x80000001DB0C56B0;
  *(v27 + 6) = 0xD000000000000026;
  *(v27 + 7) = 0x80000001DB0C56E0;
  *(v27 + 8) = 0xD00000000000001ELL;
  *(v27 + 9) = 0x80000001DB0C5710;
  *(v27 + 10) = 369;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0EAC0, &qword_1DB0A3F60);
  *(v0 + 1152) = v28;
  *(v0 + 664) = v28;
  *(v0 + 640) = v24;
  sub_1DAF40D20((v0 + 640), (v0 + 160));
  v29 = swift_isUniquelyReferenced_nonNull_native();
  v152 = v15;
  sub_1DAF3B11C((v0 + 160), 0x636F766E4949444FLL, 0xEE00736E6F697461, v29);
  v30 = qword_1DB0A9590[v16];
  v31 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
  v32 = sub_1DB09D6B4();
  v33 = sub_1DB09D604();
  v34 = [v31 initWithDomain:v32 code:v30 userInfo:v33];

  swift_getErrorValue();
  v35 = sub_1DB09E344();
  v37 = v36;
  if (v35 == sub_1DB09D6C4() && v37 == v38)
  {
  }

  else
  {
    v39 = sub_1DB09E254();

    if ((v39 & 1) == 0)
    {
      goto LABEL_33;
    }
  }

  v40 = [*(v0 + 1016) HTTPMethod];
  v41 = sub_1DB09D6C4();
  v43 = v42;

  if (v41 == 5522759 && v43 == 0xE300000000000000)
  {
  }

  else
  {
    v44 = sub_1DB09E254();

    if ((v44 & 1) == 0)
    {
      goto LABEL_33;
    }
  }

  swift_getErrorValue();
  v45 = sub_1DB09E334();
  if (v45 == -1009)
  {
    v58 = sub_1DAF3E128(MEMORY[0x1E69E7CC0]);
    v59 = v4;
    v60 = sub_1DB09CE64();
    v61 = [v60 domain];
    v62 = sub_1DB09D6C4();
    v64 = v63;

    v150 = v28;
    if (v62 == 0x726F72724549444FLL && v64 == 0xE800000000000000)
    {
    }

    else
    {
      v70 = sub_1DB09E254();

      if ((v70 & 1) == 0)
      {
        v98 = sub_1DB09D6C4();
        v100 = v99;
        *(v0 + 760) = sub_1DAF4D7A4();
        *(v0 + 736) = v60;
        sub_1DAF40D20((v0 + 736), (v0 + 768));
        v101 = v60;
        v102 = swift_isUniquelyReferenced_nonNull_native();
        v152 = v58;
        sub_1DAF3B11C((v0 + 768), v98, v100, v102);

        v72 = v58;
        v69 = 151;
LABEL_77:
        if (*(v72 + 16) && (v103 = sub_1DAF35210(0x636F766E4949444FLL, 0xEE00736E6F697461), (v104 & 1) != 0) && (sub_1DAF409DC(*(v72 + 56) + 32 * v103, v0 + 800), swift_dynamicCast()))
        {
          v105 = *(v0 + 944);
        }

        else
        {
          v105 = MEMORY[0x1E69E7CC0];
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v105 = sub_1DAF72EC0(0, *(v105 + 2) + 1, 1, v105);
        }

        v107 = *(v105 + 2);
        v106 = *(v105 + 3);
        if (v107 >= v106 >> 1)
        {
          v105 = sub_1DAF72EC0((v106 > 1), v107 + 1, 1, v105);
        }

        *(v105 + 2) = v107 + 1;
        v108 = &v105[56 * v107];
        *(v108 + 4) = 0xD000000000000027;
        *(v108 + 5) = 0x80000001DB0C5820;
        *(v108 + 6) = 0xD000000000000026;
        *(v108 + 7) = 0x80000001DB0C56E0;
        *(v108 + 8) = 0xD000000000000036;
        *(v108 + 9) = 0x80000001DB0C5750;
        *(v108 + 10) = 290;
        *(v0 + 856) = v150;
        *(v0 + 832) = v105;
        sub_1DAF40D20((v0 + 832), (v0 + 128));
        v96 = swift_isUniquelyReferenced_nonNull_native();
        v152 = v72;
        v97 = (v0 + 128);
        goto LABEL_87;
      }
    }

    ODIErrorCode.init(rawValue:)([v60 code]);
    v71 = [v60 userInfo];
    v72 = sub_1DB09D624();

    if (v152 == 211)
    {
      v69 = 151;
    }

    else
    {
      v69 = v152 ^ 0x80u;
    }

    goto LABEL_77;
  }

  if (v45 == -1005)
  {
    v46 = sub_1DAF3E128(MEMORY[0x1E69E7CC0]);
    v47 = v4;
    v48 = sub_1DB09CE64();
    v49 = [v48 domain];
    v50 = sub_1DB09D6C4();
    v52 = v51;

    v149 = v28;
    if (v50 == 0x726F72724549444FLL && v52 == 0xE800000000000000)
    {
    }

    else
    {
      v66 = sub_1DB09E254();

      if ((v66 & 1) == 0)
      {
        v85 = sub_1DB09D6C4();
        v87 = v86;
        *(v0 + 728) = sub_1DAF4D7A4();
        *(v0 + 704) = v48;
        sub_1DAF40D20((v0 + 704), (v0 + 672));
        v88 = v48;
        v89 = swift_isUniquelyReferenced_nonNull_native();
        v152 = v46;
        sub_1DAF3B11C((v0 + 672), v85, v87, v89);

        v68 = v46;
        v69 = 128;
LABEL_66:
        if (*(v68 + 16) && (v90 = sub_1DAF35210(0x636F766E4949444FLL, 0xEE00736E6F697461), (v91 & 1) != 0) && (sub_1DAF409DC(*(v68 + 56) + 32 * v90, v0 + 448), swift_dynamicCast()))
        {
          v92 = *(v0 + 976);
        }

        else
        {
          v92 = MEMORY[0x1E69E7CC0];
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v92 = sub_1DAF72EC0(0, *(v92 + 2) + 1, 1, v92);
        }

        v94 = *(v92 + 2);
        v93 = *(v92 + 3);
        if (v94 >= v93 >> 1)
        {
          v92 = sub_1DAF72EC0((v93 > 1), v94 + 1, 1, v92);
        }

        *(v92 + 2) = v94 + 1;
        v95 = &v92[56 * v94];
        *(v95 + 4) = 0xD000000000000049;
        *(v95 + 5) = 0x80000001DB0C5850;
        *(v95 + 6) = 0xD000000000000026;
        *(v95 + 7) = 0x80000001DB0C56E0;
        *(v95 + 8) = 0xD000000000000036;
        *(v95 + 9) = 0x80000001DB0C5750;
        *(v95 + 10) = 287;
        *(v0 + 248) = v149;
        *(v0 + 224) = v92;
        sub_1DAF40D20((v0 + 224), (v0 + 192));
        v96 = swift_isUniquelyReferenced_nonNull_native();
        v152 = v68;
        v97 = (v0 + 192);
LABEL_87:
        sub_1DAF3B11C(v97, 0x636F766E4949444FLL, 0xEE00736E6F697461, v96);
        v109 = qword_1DB0A9590[v69];
        v110 = *(v0 + 1000);
        v111 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
        v112 = sub_1DB09D6B4();
        v113 = sub_1DB09D604();
        v114 = [v111 initWithDomain:v112 code:v109 userInfo:v113];

        *(v110 + 8) = 0;
        *(v110 + 16) = 0;
        *v110 = v114;
        v115 = 256;
LABEL_88:
        *(v110 + 24) = v115;
        goto LABEL_89;
      }
    }

    ODIErrorCode.init(rawValue:)([v48 code]);
    v67 = [v48 userInfo];
    v68 = sub_1DB09D624();

    if (v152 == 211)
    {
      v69 = 128;
    }

    else
    {
      v69 = v152 ^ 0x80u;
    }

    goto LABEL_66;
  }

LABEL_33:
  sub_1DAF72C08(&v151);
  if (v151 - 173 > 0xD)
  {
LABEL_62:
    if (v151 - 10 >= 2)
    {
      v84 = *(v0 + 1000);

      *(v84 + 8) = 0;
      *(v84 + 16) = 0;
      *v84 = v4;
      *(v84 + 24) = 256;
      goto LABEL_89;
    }

    goto LABEL_63;
  }

  if (((1 << (v151 + 83)) & 0x3E00) != 0)
  {
LABEL_63:
    v83 = *(v0 + 1000);

    *(v83 + 8) = 0;
    *(v83 + 16) = 0;
    *v83 = v4;
    *(v83 + 24) = 512;
    goto LABEL_89;
  }

  if (((1 << (v151 + 83)) & 0x184) == 0)
  {
    if (v151 == 173)
    {
      v73 = *(v0 + 1024);
      if (v73)
      {
        v74 = v73;

        if (qword_1EE301DE8 != -1)
        {
          swift_once();
        }

        v75 = qword_1EE30A148;
        v76 = sub_1DB09DB54();
        sub_1DB09D444("Server indicated cached response has not been modified; reusing cached response", 79, 2, &dword_1DAF16000, v75, v76, MEMORY[0x1E69E7CC0]);
        if (qword_1EE304378 != -1)
        {
          swift_once();
        }

        v77 = *(v0 + 1000);
        [qword_1EE30A1E0 storeCachedResponse:v74 forRequest:*(v0 + 1016)];
        v78 = [v74 data];
        v79 = sub_1DB09D034();
        v81 = v80;

        v82 = [v74 response];
        *v77 = v79;
        *(v77 + 8) = v81;
        *(v77 + 16) = v82;
        *(v77 + 24) = 1;
        goto LABEL_89;
      }

      v117 = sub_1DAF3E128(MEMORY[0x1E69E7CC0]);
      v118 = v4;
      v119 = sub_1DB09CE64();
      v120 = [v119 domain];
      v121 = sub_1DB09D6C4();
      v123 = v122;

      if (v121 == 0x726F72724549444FLL && v123 == 0xE800000000000000)
      {
      }

      else
      {
        v124 = sub_1DB09E254();

        if ((v124 & 1) == 0)
        {
          v130 = sub_1DB09D6C4();
          v132 = v131;
          *(v0 + 504) = sub_1DAF4D7A4();
          *(v0 + 480) = v119;
          sub_1DAF40D20((v0 + 480), (v0 + 512));
          v133 = v119;
          v134 = swift_isUniquelyReferenced_nonNull_native();
          v152 = v117;
          sub_1DAF3B11C((v0 + 512), v130, v132, v134);

          v128 = v152;
          v129 = 128;
LABEL_100:
          v148 = v129;
          if (*(v128 + 16) && (v135 = sub_1DAF35210(0x636F766E4949444FLL, 0xEE00736E6F697461), (v136 & 1) != 0) && (sub_1DAF409DC(*(v128 + 56) + 32 * v135, v0 + 544), swift_dynamicCast()))
          {
            v137 = *(v0 + 992);
          }

          else
          {
            v137 = MEMORY[0x1E69E7CC0];
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v137 = sub_1DAF72EC0(0, *(v137 + 2) + 1, 1, v137);
          }

          v139 = *(v137 + 2);
          v138 = *(v137 + 3);
          if (v139 >= v138 >> 1)
          {
            v137 = sub_1DAF72EC0((v138 > 1), v139 + 1, 1, v137);
          }

          *(v137 + 2) = v139 + 1;
          v140 = &v137[56 * v139];
          *(v140 + 4) = 0xD000000000000031;
          *(v140 + 5) = 0x80000001DB0C5790;
          *(v140 + 6) = 0xD000000000000026;
          *(v140 + 7) = 0x80000001DB0C56E0;
          *(v140 + 8) = 0xD000000000000036;
          *(v140 + 9) = 0x80000001DB0C5750;
          *(v140 + 10) = 307;
          *(v0 + 600) = v28;
          *(v0 + 576) = v137;
          sub_1DAF40D20((v0 + 576), (v0 + 96));
          v141 = swift_isUniquelyReferenced_nonNull_native();
          v152 = v128;
          sub_1DAF3B11C((v0 + 96), 0x636F766E4949444FLL, 0xEE00736E6F697461, v141);
          v142 = qword_1DB0A9590[v148];
          v110 = *(v0 + 1000);
          v143 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
          v144 = sub_1DB09D6B4();
          v145 = sub_1DB09D604();
          v146 = [v143 initWithDomain:v144 code:v142 userInfo:v145];

          *(v110 + 8) = 0;
          *(v110 + 16) = 0;
          *v110 = v146;
          v115 = 512;
          goto LABEL_88;
        }
      }

      ODIErrorCode.init(rawValue:)([v119 code]);
      v125 = v152;
      v126 = v152 ^ 0x80;
      v127 = [v119 userInfo];
      v128 = sub_1DB09D624();

      if (v125 == 211)
      {
        v129 = 128;
      }

      else
      {
        v129 = v126;
      }

      goto LABEL_100;
    }

    goto LABEL_62;
  }

  v53 = *(v0 + 1208);

  if ((v53 & 1) != 0 || (v54 = *(v0 + 1008), *(v54 + OBJC_IVAR____TtC17CoreODIEssentials14DIPHTTPSession_configuration + 8) != 1))
  {
    v65 = *(v0 + 1000);
    *(v65 + 8) = 0;
    *(v65 + 16) = 0;
    *v65 = v4;
    *(v65 + 24) = 256;
LABEL_89:

    v116 = *(v0 + 8);

    return v116();
  }

  if (qword_1EE302B50 != -1)
  {
    swift_once();
    v54 = *(v0 + 1008);
  }

  v55 = qword_1EE302B58;
  v56 = type metadata accessor for ODIAccountManager();
  *(v0 + 40) = v56;
  *(v0 + 48) = &off_1F56CFCD8;
  *(v0 + 16) = v55;
  *(v0 + 1160) = __swift_project_boxed_opaque_existential_1((v0 + 16), v56);
  v57 = *(v54 + OBJC_IVAR____TtC17CoreODIEssentials14DIPHTTPSession_state);
  *(v0 + 1168) = v57;

  return MEMORY[0x1EEE6DFA0](sub_1DAFAF634, v57, 0);
}

uint64_t sub_1DAFAF634()
{
  v1 = v0[146];
  v2 = *(v1 + 112);
  v3 = *(v1 + 120);
  v0[147] = v3;

  v4 = swift_task_alloc();
  v0[148] = v4;
  *v4 = v0;
  v4[1] = sub_1DAFAF6F4;

  return sub_1DB04E7C8(v2, v3);
}

uint64_t sub_1DAFAF6F4()
{
  *(*v1 + 1192) = v0;

  if (v0)
  {
    v2 = sub_1DAFAFA68;
  }

  else
  {
    v2 = sub_1DAFAF828;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1DAFAF828()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  v1 = swift_task_alloc();
  v0[150] = v1;
  *v1 = v0;
  v1[1] = sub_1DAFAF8C8;
  v2 = v0[127];

  return sub_1DAFAFEF4(v2);
}

uint64_t sub_1DAFAF8C8()
{

  return MEMORY[0x1EEE6DFA0](sub_1DAFAF9C4, 0, 0);
}

uint64_t sub_1DAFAF9C4()
{
  v1 = v0[143];
  v2 = v0[125];
  *(v2 + 8) = 0;
  *(v2 + 16) = 0;
  *v2 = v1;
  *(v2 + 24) = 512;

  v3 = v0[1];

  return v3();
}

uint64_t sub_1DAFAFA68()
{
  v1 = *(v0 + 1192);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  v2 = v1;
  v3 = sub_1DAF3E128(MEMORY[0x1E69E7CC0]);
  v4 = v1;
  v5 = sub_1DB09CE64();
  v6 = [v5 domain];
  v7 = sub_1DB09D6C4();
  v9 = v8;

  if (v7 == 0x726F72724549444FLL && v9 == 0xE800000000000000)
  {
  }

  else
  {
    v11 = sub_1DB09E254();

    if ((v11 & 1) == 0)
    {
      v12 = *(v0 + 1192);
      v13 = sub_1DB09D6C4();
      v15 = v14;
      *(v0 + 312) = sub_1DAF4D7A4();
      *(v0 + 288) = v5;
      sub_1DAF40D20((v0 + 288), (v0 + 320));
      v16 = v5;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      sub_1DAF3B11C((v0 + 320), v13, v15, isUniquelyReferenced_nonNull_native);

      v18 = v3;
      v19 = 128;
      goto LABEL_11;
    }
  }

  v20 = *(v0 + 1192);
  ODIErrorCode.init(rawValue:)([v5 code]);
  v21 = [v5 userInfo];
  v18 = sub_1DB09D624();

  if (v40 == 211)
  {
    v19 = 128;
  }

  else
  {
    v19 = v40 ^ 0x80u;
  }

LABEL_11:
  if (*(v18 + 16) && (v22 = sub_1DAF35210(0x636F766E4949444FLL, 0xEE00736E6F697461), (v23 & 1) != 0) && (sub_1DAF409DC(*(v18 + 56) + 32 * v22, v0 + 352), swift_dynamicCast()))
  {
    v24 = *(v0 + 960);
  }

  else
  {
    v24 = MEMORY[0x1E69E7CC0];
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v24 = sub_1DAF72EC0(0, *(v24 + 2) + 1, 1, v24);
  }

  v26 = *(v24 + 2);
  v25 = *(v24 + 3);
  if (v26 >= v25 >> 1)
  {
    v24 = sub_1DAF72EC0((v25 > 1), v26 + 1, 1, v24);
  }

  v27 = *(v0 + 1152);
  *(v24 + 2) = v26 + 1;
  v28 = &v24[56 * v26];
  *(v28 + 4) = 0xD000000000000014;
  *(v28 + 5) = 0x80000001DB0C5730;
  *(v28 + 6) = 0xD000000000000026;
  *(v28 + 7) = 0x80000001DB0C56E0;
  *(v28 + 8) = 0xD000000000000036;
  *(v28 + 9) = 0x80000001DB0C5750;
  *(v28 + 10) = 326;
  *(v0 + 408) = v27;
  *(v0 + 384) = v24;
  sub_1DAF40D20((v0 + 384), (v0 + 416));
  v29 = swift_isUniquelyReferenced_nonNull_native();
  v41 = v18;
  sub_1DAF3B11C((v0 + 416), 0x636F766E4949444FLL, 0xEE00736E6F697461, v29);
  v30 = qword_1DB0A9590[v19];
  v31 = *(v0 + 1192);
  v32 = *(v0 + 1144);
  v33 = *(v0 + 1000);
  v34 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
  v35 = sub_1DB09D6B4();
  v36 = sub_1DB09D604();
  v37 = [v34 initWithDomain:v35 code:v30 userInfo:{v36, v41}];

  *(v33 + 8) = 0;
  *(v33 + 16) = 0;
  *v33 = v37;
  *(v33 + 24) = 256;

  v38 = *(v0 + 8);

  return v38();
}

uint64_t sub_1DAFAFEF4(uint64_t a1)
{
  *(v2 + 56) = a1;
  *(v2 + 64) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1DAFAFF14, 0, 0);
}

uint64_t sub_1DAFAFF14()
{
  if (qword_1EE302B50 != -1)
  {
    swift_once();
  }

  v1 = v0[8];
  v2 = qword_1EE302B58;
  v3 = type metadata accessor for ODIAccountManager();
  v0[5] = v3;
  v0[6] = &off_1F56CFCD8;
  v0[2] = v2;
  v0[9] = __swift_project_boxed_opaque_existential_1(v0 + 2, v3);
  v4 = *(v1 + OBJC_IVAR____TtC17CoreODIEssentials14DIPHTTPSession_state);
  v0[10] = v4;

  return MEMORY[0x1EEE6DFA0](sub_1DAFB0004, v4, 0);
}

uint64_t sub_1DAFB0004()
{
  v1 = v0[9];
  v2 = v0[10];
  v0[11] = *(v2 + 112);
  v0[12] = *(v2 + 120);

  v3 = *v1;

  return MEMORY[0x1EEE6DFA0](sub_1DAFB0084, v3, 0);
}

uint64_t sub_1DAFB0084()
{
  v1 = sub_1DB051F9C(v0[11], v0[12]);
  v3 = v2;

  v0[13] = v1;
  v0[14] = v3;

  return MEMORY[0x1EEE6DFA0](sub_1DAFB0114, 0, 0);
}

uint64_t sub_1DAFB0114()
{
  v1 = v0[7];
  v2 = sub_1DB09D6B4();

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  v3 = sub_1DB09D6B4();
  [v1 setValue:v2 forHTTPHeaderField:v3];

  v4 = v0[1];

  return v4();
}

uint64_t sub_1DAFB01E0()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0EAB0, &qword_1DB0A9530);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = v34 - v3;
  v5 = sub_1DB09D734();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v6 = sub_1DB09CBE4();
  if (v7 >> 60 != 15)
  {
    v8 = v6;
    v9 = v7;
    sub_1DB09D714();
    v10 = sub_1DB09D6E4();
    if (v11)
    {
      v12 = v11;
      v35 = v10;
      sub_1DAF4AC40(v8, v9);
      goto LABEL_6;
    }

    sub_1DAF4AC40(v8, v9);
  }

  v35 = 0;
  v12 = 0xE000000000000000;
LABEL_6:
  v13 = sub_1DB09CB94();
  if (!v13)
  {
    v13 = sub_1DAF3ECE0(MEMORY[0x1E69E7CC0]);
  }

  v14 = v13;
  v15 = [objc_opt_self() standardUserDefaults];
  v16 = sub_1DB09D6B4();
  v17 = [v15 BOOLForKey_];

  if ((v17 & 1) == 0)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v38[0] = v14;
    sub_1DAF3B440(0x455443414445523CLL, 0xEA00000000003E44, 0x7A69726F68747541, 0xED00006E6F697461, isUniquelyReferenced_nonNull_native);
  }

  sub_1DAF3523C(v1 + OBJC_IVAR____TtC17CoreODIEssentials14DIPHTTPSession_logger, v38);
  v19 = v39;
  v20 = v40;
  v34[1] = __swift_project_boxed_opaque_existential_1(v38, v39);
  v21 = 0xE000000000000000;
  v36 = 0;
  v37 = 0xE000000000000000;
  sub_1DB09DE44();

  v36 = 0xD000000000000013;
  v37 = 0x80000001DB0C59C0;
  v22 = sub_1DB09CB64();
  if (v23)
  {
    v21 = v23;
  }

  else
  {
    v22 = 0;
  }

  MEMORY[0x1E127FE90](v22, v21);

  MEMORY[0x1E127FE90](32, 0xE100000000000000);
  sub_1DB09CBC4();
  v24 = sub_1DB09CF64();
  v25 = *(v24 - 8);
  if ((*(v25 + 48))(v4, 1, v24) == 1)
  {
    sub_1DAF40AEC(v4, &unk_1ECC0EAB0, &qword_1DB0A9530);
    v26 = 0;
    v27 = 0xE000000000000000;
  }

  else
  {
    v26 = sub_1DB09CEA4();
    v27 = v28;
    (*(v25 + 8))(v4, v24);
  }

  MEMORY[0x1E127FE90](v26, v27);

  MEMORY[0x1E127FE90](10, 0xE100000000000000);
  v29 = sub_1DB09D634();
  v31 = v30;

  MEMORY[0x1E127FE90](v29, v31);

  MEMORY[0x1E127FE90](10, 0xE100000000000000);
  MEMORY[0x1E127FE90](v35, v12);

  MEMORY[0x1E127FE90](10, 0xE100000000000000);
  v32 = v36;
  LOBYTE(v36) = 17;
  (*(v20 + 16))(v32, v37, &v36, v19, v20);

  return __swift_destroy_boxed_opaque_existential_1Tm(v38);
}

id sub_1DAFB0610(void *a1, uint64_t a2, unint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0EAB0, &qword_1DB0A9530);
  v8 = MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = v31 - v11;
  v13 = sub_1DB09D734();
  MEMORY[0x1EEE9AC00](v13 - 8);
  if (a3 >> 60 != 15)
  {
    sub_1DAF40674(a2, a3);
    sub_1DB09D714();
    v14 = sub_1DB09D6E4();
    if (v15)
    {
      v16 = v14;
      v17 = v15;
      sub_1DAF4AC40(a2, a3);
      goto LABEL_6;
    }

    sub_1DAF4AC40(a2, a3);
  }

  v16 = 0;
  v17 = 0xE000000000000000;
LABEL_6:
  result = [a1 allHeaderFields];
  if (result)
  {
    v19 = result;
    sub_1DAF3523C(v3 + OBJC_IVAR____TtC17CoreODIEssentials14DIPHTTPSession_logger, v39);
    v20 = v41;
    v32 = v40;
    v31[1] = __swift_project_boxed_opaque_existential_1(v39, v40);
    v37 = 0;
    v38 = 0xE000000000000000;
    sub_1DB09DE44();

    v37 = 0x65736E6F70736552;
    v38 = 0xEA00000000000A3ALL;
    v21 = [a1 URL];
    v33 = v16;
    if (v21)
    {
      v22 = v21;
      sub_1DB09CF04();

      v23 = 0;
    }

    else
    {
      v23 = 1;
    }

    v24 = sub_1DB09CF64();
    v25 = *(v24 - 8);
    (*(v25 + 56))(v10, v23, 1, v24);
    sub_1DAF624E8(v10, v12, &unk_1ECC0EAB0, &qword_1DB0A9530);
    if ((*(v25 + 48))(v12, 1, v24) == 1)
    {
      sub_1DAF40AEC(v12, &unk_1ECC0EAB0, &qword_1DB0A9530);
      v26 = 0;
      v27 = 0xE000000000000000;
    }

    else
    {
      v26 = sub_1DB09CEA4();
      v27 = v28;
      (*(v25 + 8))(v12, v24);
    }

    MEMORY[0x1E127FE90](v26, v27);

    MEMORY[0x1E127FE90](32, 0xE100000000000000);
    v35 = [a1 statusCode];
    v29 = sub_1DB09E1D4();
    MEMORY[0x1E127FE90](v29);

    MEMORY[0x1E127FE90](10, 0xE100000000000000);
    v35 = 0;
    v36 = 0xE000000000000000;
    swift_getObjectType();
    v34 = v19;
    sub_1DB09E234();
    MEMORY[0x1E127FE90](v35, v36);

    MEMORY[0x1E127FE90](10, 0xE100000000000000);
    MEMORY[0x1E127FE90](v33, v17);

    MEMORY[0x1E127FE90](10, 0xE100000000000000);
    v30 = v37;
    LOBYTE(v37) = 17;
    (*(v20 + 72))(v30, v38, &v37, v32, v20);

    return __swift_destroy_boxed_opaque_existential_1Tm(v39);
  }

  else
  {
    __break(1u);
  }

  return result;
}

BOOL sub_1DAFB0A50(__SecTrust *a1)
{
  error[1] = *MEMORY[0x1E69E9840];
  v3 = [objc_opt_self() standardUserDefaults];
  if (qword_1EE301DD8 != -1)
  {
    swift_once();
  }

  if (byte_1EE30A140 == 1)
  {
    v4 = sub_1DB09D6B4();
    v5 = [v3 BOOLForKey_];

    if (v5)
    {
      if (qword_1EE301DE8 != -1)
      {
        swift_once();
      }

      v6 = qword_1EE30A148;
      v7 = sub_1DB09DB44();
      sub_1DB09D444("Skipping SSL/TLS verification due to user defaults setting", 58, 2, &dword_1DAF16000, v6, v7, MEMORY[0x1E69E7CC0]);
      return 1;
    }
  }

  else
  {
  }

  error[0] = 0;
  v8 = SecTrustEvaluateWithError(a1, error);
  v9 = error[0];
  if (error[0])
  {
    v10 = error[0];
    v11 = CFErrorCopyDescription(v10);
    if (v11)
    {
      v12 = v11;
      v13 = sub_1DB09D6C4();
      v15 = v14;
    }

    else
    {
      v13 = 0;
      v15 = 0;
    }

    sub_1DAF3523C(v1 + OBJC_IVAR____TtC17CoreODIEssentials14DIPHTTPSession_logger, v24);
    v16 = v25;
    v17 = v26;
    __swift_project_boxed_opaque_existential_1(v24, v25);
    sub_1DB09DE44();

    v22 = 0xD000000000000023;
    v23 = 0x80000001DB0C5C10;
    if (v15)
    {
      v18 = v13;
    }

    else
    {
      v18 = 7104878;
    }

    if (v15)
    {
      v19 = v15;
    }

    else
    {
      v19 = 0xE300000000000000;
    }

    MEMORY[0x1E127FE90](v18, v19);

    v20 = v22;
    LOBYTE(v22) = 17;
    (*(v17 + 40))(v20, v23, &v22, v16, v17);

    __swift_destroy_boxed_opaque_existential_1Tm(v24);
    v9 = error[0];
  }

  return v8;
}

uint64_t sub_1DAFB0D08()
{
  type metadata accessor for DIPHTTPSession.ClientInfoHeaderProvider();
  v0 = swift_allocObject();
  result = swift_defaultActor_initialize();
  *(v0 + 112) = 0;
  *(v0 + 120) = 0;
  qword_1EE30A060 = v0;
  return result;
}

uint64_t sub_1DAFB0D48()
{

  swift_defaultActor_destroy();

  return swift_defaultActor_deallocate();
}

id sub_1DAFB1144()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t __swift_memcpy11_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 7) = *(a2 + 7);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for DIPHTTPSession.Configuration(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 11))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 8);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for DIPHTTPSession.Configuration(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 10) = 0;
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 11) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 11) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_1DAFB1360()
{
  if (qword_1EE3039A0 != -1)
  {
    swift_once();
  }

  v1 = qword_1EE3039B0;
  *(v0 + 176) = qword_1EE3039B0;

  return MEMORY[0x1EEE6DFA0](sub_1DAFB13F8, v1, 0);
}

uint64_t sub_1DAFB13F8()
{
  v1 = *(v0 + 176);
  if (*(v1 + 168))
  {

    return MEMORY[0x1EEE6DFA0](sub_1DAFB15D8, v1, 0);
  }

  else
  {
    v2 = swift_task_alloc();
    *(v0 + 184) = v2;
    *v2 = v0;
    v2[1] = sub_1DAFB14C8;

    return sub_1DAFC5F3C();
  }
}

uint64_t sub_1DAFB14C8()
{
  v1 = *v0;

  v2 = *(v1 + 176);

  return MEMORY[0x1EEE6DFA0](sub_1DAFB15D8, v2, 0);
}

uint64_t sub_1DAFB15D8()
{
  v1 = v0[22];
  v2 = sub_1DAFB3448();
  v0[24] = v2;
  v3 = swift_task_alloc();
  v0[25] = v3;
  v3[2] = v1;
  v3[3] = 0x54746375646F7250;
  v3[4] = 0xEB00000000657079;
  v4 = swift_task_alloc();
  v0[26] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0EAE0, &unk_1DB0A4650);
  v0[27] = v5;
  *v4 = v0;
  v4[1] = sub_1DAFB1718;

  return MEMORY[0x1EEE6DDE0](v0 + 10, v1, v2, 0x736E41474D746567, 0xEF293A5F28726577, sub_1DAFB3BE8, v3, v5);
}

uint64_t sub_1DAFB1718()
{
  v1 = *v0;
  v2 = *(*v0 + 176);

  *(v1 + 224) = *(v1 + 80);

  return MEMORY[0x1EEE6DFA0](sub_1DAFB1854, v2, 0);
}

uint64_t sub_1DAFB1854()
{
  v1 = v0[24];
  v2 = v0[22];
  v3 = swift_task_alloc();
  v0[30] = v3;
  v3[2] = v2;
  v3[3] = 0x4E746375646F7250;
  v3[4] = 0xEB00000000656D61;
  v4 = swift_task_alloc();
  v0[31] = v4;
  *v4 = v0;
  v4[1] = sub_1DAFB1974;
  v5 = v0[27];

  return MEMORY[0x1EEE6DDE0](v0 + 12, v2, v1, 0x736E41474D746567, 0xEF293A5F28726577, sub_1DAFB3BE8, v3, v5);
}

uint64_t sub_1DAFB1974()
{
  v1 = *v0;
  v2 = *(*v0 + 176);

  *(v1 + 256) = *(v1 + 96);

  return MEMORY[0x1EEE6DFA0](sub_1DAFB1AB0, v2, 0);
}

uint64_t sub_1DAFB1AB0()
{
  v1 = v0[24];
  v2 = v0[22];
  v3 = swift_task_alloc();
  v0[34] = v3;
  *(v3 + 16) = v2;
  strcpy((v3 + 24), "ProductVersion");
  *(v3 + 39) = -18;
  v4 = swift_task_alloc();
  v0[35] = v4;
  *v4 = v0;
  v4[1] = sub_1DAFB1BD4;
  v5 = v0[27];

  return MEMORY[0x1EEE6DDE0](v0 + 14, v2, v1, 0x736E41474D746567, 0xEF293A5F28726577, sub_1DAFB3BE8, v3, v5);
}

uint64_t sub_1DAFB1BD4()
{
  v1 = *v0;
  v2 = *(*v0 + 176);

  *(v1 + 288) = *(v1 + 112);

  return MEMORY[0x1EEE6DFA0](sub_1DAFB1D10, v2, 0);
}

uint64_t sub_1DAFB1D10()
{
  v1 = v0[24];
  v2 = v0[22];
  v3 = swift_task_alloc();
  v0[38] = v3;
  *(v3 + 16) = v2;
  strcpy((v3 + 24), "BuildVersion");
  *(v3 + 37) = 0;
  *(v3 + 38) = -5120;
  v4 = swift_task_alloc();
  v0[39] = v4;
  *v4 = v0;
  v4[1] = sub_1DAFB1E30;
  v5 = v0[27];

  return MEMORY[0x1EEE6DDE0](v0 + 16, v2, v1, 0x736E41474D746567, 0xEF293A5F28726577, sub_1DAFB3BE8, v3, v5);
}

uint64_t sub_1DAFB1E30()
{
  v1 = *v0;

  *(v1 + 320) = *(v1 + 128);

  return MEMORY[0x1EEE6DFA0](sub_1DAFB1F50, 0, 0);
}

id sub_1DAFB1F50()
{
  type metadata accessor for DIPHTTPSession();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = objc_opt_self();
  result = [v2 bundleForClass_];
  v4 = *MEMORY[0x1E695E500];
  if (!*MEMORY[0x1E695E500])
  {
    __break(1u);
    return result;
  }

  v5 = result;
  if ([result objectForInfoDictionaryKey_])
  {
    sub_1DB09DCE4();
    swift_unknownObjectRelease();
  }

  else
  {
    v37 = 0u;
    v40 = 0u;
  }

  *(v0 + 16) = v37;
  *(v0 + 32) = v40;
  if (*(v0 + 40))
  {
    if (swift_dynamicCast())
    {
      v33 = *(v0 + 160);
      v34 = *(v0 + 168);
      goto LABEL_10;
    }
  }

  else
  {
    sub_1DAF40AEC(v0 + 16, &qword_1ECC0E370, &qword_1DB0A09B0);
  }

  v33 = 7104878;
  v34 = 0xE300000000000000;
LABEL_10:
  v6 = [v5 bundleIdentifier];
  if (v6)
  {
    v7 = v6;
    v31 = sub_1DB09D6C4();
    v32 = v8;
  }

  else
  {
    v31 = 7104878;
    v32 = 0xE300000000000000;
  }

  v9 = [v2 mainBundle];
  if ([v9 objectForInfoDictionaryKey_])
  {
    sub_1DB09DCE4();
    swift_unknownObjectRelease();
  }

  else
  {
    v37 = 0u;
    v40 = 0u;
  }

  *(v0 + 48) = v37;
  *(v0 + 64) = v40;
  if (!*(v0 + 72))
  {
    sub_1DAF40AEC(v0 + 48, &qword_1ECC0E370, &qword_1DB0A09B0);
    goto LABEL_20;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_20:
    v11 = 0xE300000000000000;
    v10 = 7104878;
    goto LABEL_21;
  }

  v10 = *(v0 + 144);
  v11 = *(v0 + 152);
LABEL_21:
  v30 = v10;
  v36 = v5;
  v12 = [v9 bundleIdentifier];
  v13 = 0xE300000000000000;
  v35 = v9;
  if (v12)
  {
    v14 = v12;
    v15 = sub_1DB09D6C4();
    v17 = v16;
  }

  else
  {
    v15 = 7104878;
    v17 = 0xE300000000000000;
  }

  v18 = *(v0 + 328);
  v19 = *(v0 + 296);
  v20 = *(v0 + 264);
  if (v18)
  {
    v21 = *(v0 + 328);
  }

  else
  {
    v21 = 0xE300000000000000;
  }

  if (v18)
  {
    v22 = *(v0 + 320);
  }

  else
  {
    v22 = 7104878;
  }

  if (v19)
  {
    v23 = *(v0 + 296);
  }

  else
  {
    v23 = 0xE300000000000000;
  }

  if (v19)
  {
    v24 = *(v0 + 288);
  }

  else
  {
    v24 = 7104878;
  }

  if (v20)
  {
    v25 = *(v0 + 264);
  }

  else
  {
    v25 = 0xE300000000000000;
  }

  if (v20)
  {
    v26 = *(v0 + 256);
  }

  else
  {
    v26 = 7104878;
  }

  if (*(v0 + 232))
  {
    v13 = *(v0 + 232);
    v27 = *(v0 + 224);
  }

  else
  {
    v27 = 7104878;
  }

  v29 = v27;
  v38 = v26;
  v39 = v25;
  MEMORY[0x1E127FE90](59, 0xE100000000000000);
  MEMORY[0x1E127FE90](v24, v23);

  MEMORY[0x1E127FE90](59, 0xE100000000000000);
  MEMORY[0x1E127FE90](v22, v21);

  MEMORY[0x1E127FE90](47, 0xE100000000000000);
  MEMORY[0x1E127FE90](v33, v34);

  MEMORY[0x1E127FE90](10272, 0xE200000000000000);
  MEMORY[0x1E127FE90](v15, v17);

  MEMORY[0x1E127FE90](47, 0xE100000000000000);
  MEMORY[0x1E127FE90](v30, v11);

  MEMORY[0x1E127FE90](41, 0xE100000000000000);
  MEMORY[0x1E127FE90](v29, v13);

  MEMORY[0x1E127FE90](3940414, 0xE300000000000000);
  MEMORY[0x1E127FE90](v38, v39);

  MEMORY[0x1E127FE90](3940414, 0xE300000000000000);
  MEMORY[0x1E127FE90](v31, v32);

  MEMORY[0x1E127FE90](62, 0xE100000000000000);

  v28 = *(v0 + 8);

  return v28(60, 0xE100000000000000);
}

uint64_t sub_1DAFB23D4(void *a1, void *a2)
{
  if (a2)
  {
    if (qword_1EE301E08 != -1)
    {
      swift_once();
    }

    v3 = sub_1DAF3E128(MEMORY[0x1E69E7CC0]);
    v4 = a2;
    v5 = sub_1DB09CE64();
    v6 = [v5 domain];
    v7 = sub_1DB09D6C4();
    v9 = v8;

    if (v7 == 0x726F72724549444FLL && v9 == 0xE800000000000000)
    {
    }

    else
    {
      v11 = sub_1DB09E254();

      if ((v11 & 1) == 0)
      {
        v12 = sub_1DB09D6C4();
        v14 = v13;
        v110 = sub_1DAF4D7A4();
        *&v109 = v5;
        sub_1DAF40D20(&v109, v108);
        v15 = v5;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        sub_1DAF3B11C(v108, v12, v14, isUniquelyReferenced_nonNull_native);

        v17 = v3;
        v18 = 138;
LABEL_24:
        if (*(v17 + 16) && (v32 = sub_1DAF35210(0x636F766E4949444FLL, 0xEE00736E6F697461), (v33 & 1) != 0) && (sub_1DAF409DC(*(v17 + 56) + 32 * v32, &v109), __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0EAC0, &qword_1DB0A3F60), swift_dynamicCast()))
        {
          v34 = *&v108[0];
        }

        else
        {
          v34 = MEMORY[0x1E69E7CC0];
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v34 = sub_1DAF72EC0(0, *(v34 + 2) + 1, 1, v34);
        }

        v36 = *(v34 + 2);
        v35 = *(v34 + 3);
        if (v36 >= v35 >> 1)
        {
          v34 = sub_1DAF72EC0((v35 > 1), v36 + 1, 1, v34);
        }

        *(v34 + 2) = v36 + 1;
        v37 = &v34[56 * v36];
        *(v37 + 4) = 0xD00000000000002ALL;
        *(v37 + 5) = 0x80000001DB0C56B0;
        *(v37 + 6) = 0xD000000000000026;
        *(v37 + 7) = 0x80000001DB0C56E0;
        *(v37 + 8) = 0xD00000000000001ELL;
        *(v37 + 9) = 0x80000001DB0C5710;
        *(v37 + 10) = 369;
        v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0EAC0, &qword_1DB0A3F60);
        *&v109 = v34;
        sub_1DAF40D20(&v109, v108);
        v38 = swift_isUniquelyReferenced_nonNull_native();
        sub_1DAF3B11C(v108, 0x636F766E4949444FLL, 0xEE00736E6F697461, v38);
        v39 = qword_1DB0A9590[v18];
        v40 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
        v41 = sub_1DB09D6B4();
        v42 = sub_1DB09D604();
        v43 = [v40 initWithDomain:v41 code:v39 userInfo:v42];

        return v43;
      }
    }

    ODIErrorCode.init(rawValue:)([v5 code]);
    LODWORD(v18) = v109 ^ 0x80;
    v31 = [v5 userInfo];
    v17 = sub_1DB09D624();

    if (v109 == 211)
    {
      v18 = 138;
    }

    else
    {
      v18 = v18;
    }

    goto LABEL_24;
  }

  if (!a1)
  {
    if (qword_1EE301E08 != -1)
    {
      swift_once();
    }

    v44 = MEMORY[0x1E69E7CC0];
    v45 = sub_1DAF3E128(MEMORY[0x1E69E7CC0]);
    if (*(v45 + 16))
    {
      v46 = sub_1DAF35210(0x636F766E4949444FLL, 0xEE00736E6F697461);
      if (v47)
      {
        sub_1DAF409DC(*(v45 + 56) + 32 * v46, &v109);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0EAC0, &qword_1DB0A3F60);
        if (swift_dynamicCast())
        {
          v44 = *&v108[0];
        }
      }
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v44 = sub_1DAF72EC0(0, *(v44 + 2) + 1, 1, v44);
    }

    v49 = *(v44 + 2);
    v48 = *(v44 + 3);
    if (v49 >= v48 >> 1)
    {
      v44 = sub_1DAF72EC0((v48 > 1), v49 + 1, 1, v44);
    }

    *(v44 + 2) = v49 + 1;
    v50 = &v44[56 * v49];
    *(v50 + 4) = 0xD000000000000019;
    *(v50 + 5) = 0x80000001DB0C58C0;
    *(v50 + 6) = 0xD000000000000026;
    *(v50 + 7) = 0x80000001DB0C56E0;
    *(v50 + 8) = 0xD00000000000001ELL;
    *(v50 + 9) = 0x80000001DB0C5710;
    *(v50 + 10) = 372;
    v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0EAC0, &qword_1DB0A3F60);
    *&v109 = v44;
    sub_1DAF40D20(&v109, v108);
    v51 = swift_isUniquelyReferenced_nonNull_native();
    sub_1DAF3B11C(v108, 0x636F766E4949444FLL, 0xEE00736E6F697461, v51);
    v52 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
    v53 = sub_1DB09D6B4();
    v54 = sub_1DB09D604();
    v43 = [v52 initWithDomain:v53 code:-13 userInfo:v54];

    return v43;
  }

  objc_opt_self();
  v20 = swift_dynamicCastObjCClass();
  if (!v20)
  {
    *&v109 = 0;
    *(&v109 + 1) = 0xE000000000000000;
    v55 = a1;
    sub_1DB09DE44();
    MEMORY[0x1E127FE90](0xD000000000000054, 0x80000001DB0C58E0);
    v56 = v55;
    v57 = [v56 description];
    v58 = sub_1DB09D6C4();
    v60 = v59;

    MEMORY[0x1E127FE90](v58, v60);

    if (qword_1EE301E08 != -1)
    {
      swift_once();
    }

    v61 = MEMORY[0x1E69E7CC0];
    v62 = sub_1DAF3E128(MEMORY[0x1E69E7CC0]);
    v63 = *(v62 + 16);

    if (v63)
    {
      v64 = sub_1DAF35210(0x636F766E4949444FLL, 0xEE00736E6F697461);
      if (v65)
      {
        sub_1DAF409DC(*(v62 + 56) + 32 * v64, &v109);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0EAC0, &qword_1DB0A3F60);
        if (swift_dynamicCast())
        {
          v61 = *&v108[0];
        }
      }
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v61 = sub_1DAF72EC0(0, *(v61 + 2) + 1, 1, v61);
    }

    v67 = *(v61 + 2);
    v66 = *(v61 + 3);
    v68 = v67 + 1;
    if (v67 >= v66 >> 1)
    {
      v106 = sub_1DAF72EC0((v66 > 1), v67 + 1, 1, v61);
      v68 = v67 + 1;
      v61 = v106;
    }

    *(v61 + 2) = v68;
    v69 = &v61[56 * v67];
    *(v69 + 4) = 0;
    *(v69 + 5) = 0xE000000000000000;
    *(v69 + 6) = 0xD000000000000026;
    *(v69 + 7) = 0x80000001DB0C56E0;
    *(v69 + 8) = 0xD00000000000001ELL;
    *(v69 + 9) = 0x80000001DB0C5710;
    *(v69 + 10) = 375;
    v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0EAC0, &qword_1DB0A3F60);
    *&v109 = v61;
    sub_1DAF40D20(&v109, v108);
    v70 = swift_isUniquelyReferenced_nonNull_native();
    sub_1DAF3B11C(v108, 0x636F766E4949444FLL, 0xEE00736E6F697461, v70);
    v71 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
    v72 = sub_1DB09D6B4();
    v73 = sub_1DB09D604();
    v43 = [v71 initWithDomain:v72 code:-13 userInfo:v73];

    return v43;
  }

  v21 = v20;
  v22 = a1;
  v23 = [v21 statusCode];
  v24 = [objc_opt_self() standardUserDefaults];
  if (qword_1EE301DD8 != -1)
  {
    swift_once();
  }

  if (byte_1EE30A140 != 1 || (v25 = sub_1DB09D6B4(), v26 = [v24 stringForKey_], v25, !v26))
  {

    goto LABEL_47;
  }

  v27 = sub_1DB09D6C4();
  v29 = v28;

  if (!v27 && v29 == 0xE000000000000000 || (result = sub_1DB09E254(), (result & 1) != 0) || ((v75 = HIBYTE(v29) & 0xF, v76 = v27 & 0xFFFFFFFFFFFFLL, (v29 & 0x2000000000000000) != 0) ? (v77 = HIBYTE(v29) & 0xF) : (v77 = v27 & 0xFFFFFFFFFFFFLL), !v77))
  {

    goto LABEL_47;
  }

  if ((v29 & 0x1000000000000000) != 0)
  {
    LOBYTE(v108[0]) = 0;
    v79 = sub_1DB04059C(v27, v29, 10);
    v100 = v107;
LABEL_161:

    if ((v100 & 1) == 0)
    {
      if (qword_1EE301DE8 != -1)
      {
        swift_once();
      }

      v101 = qword_1EE30A148;
      v102 = sub_1DB09DB44();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0EEE0, &qword_1DB0A21E0);
      v103 = swift_allocObject();
      v104 = MEMORY[0x1E69E6530];
      *(v103 + 16) = xmmword_1DB0A04E0;
      v105 = MEMORY[0x1E69E65A8];
      *(v103 + 56) = v104;
      *(v103 + 64) = v105;
      *(v103 + 32) = v79;
      sub_1DB09D444("Forcing HTTP status code to %{public}d due to user setting", 58, 2, &dword_1DAF16000, v101, v102, v103);

      v23 = v79;
    }

LABEL_47:
    if (v23 > 427)
    {
      if (v23 > 499)
      {
        if (v23 <= 501)
        {
          if (v23 == 500)
          {
            v74 = -74;
          }

          else
          {
            v74 = -73;
          }

          goto LABEL_117;
        }

        if (v23 == 502)
        {
          v74 = -72;
          goto LABEL_117;
        }

        if (v23 == 503)
        {
          v74 = -71;
          goto LABEL_117;
        }

        goto LABEL_114;
      }

      if (v23 > 432)
      {
        if (v23 == 433)
        {
          v74 = -76;
          goto LABEL_117;
        }

        if (v23 == 434)
        {
          v74 = -75;
          goto LABEL_117;
        }

        goto LABEL_114;
      }

      if (v23 == 428)
      {
        v74 = -78;
        goto LABEL_117;
      }

      if (v23 != 429)
      {
        goto LABEL_114;
      }

      v74 = -77;
    }

    else
    {
      if (v23 <= 399)
      {
        if (v23 <= 300)
        {
          if (v23 == 200 || v23 == 204)
          {

            return 0;
          }

          goto LABEL_114;
        }

        if (v23 == 301)
        {
          v74 = -84;
          goto LABEL_117;
        }

        if (v23 == 304)
        {
          v74 = -83;
          goto LABEL_117;
        }

LABEL_114:
        if (v23 == 504)
        {
          v74 = -70;
        }

        else
        {
          v74 = -85;
        }

        goto LABEL_117;
      }

      if (v23 > 402)
      {
        if (v23 == 403)
        {
          v74 = -80;
          goto LABEL_117;
        }

        if (v23 == 404)
        {
          v74 = -79;
          goto LABEL_117;
        }

        goto LABEL_114;
      }

      if (v23 == 400)
      {
        v74 = -82;
        goto LABEL_117;
      }

      if (v23 != 401)
      {
        goto LABEL_114;
      }

      v74 = -81;
    }

LABEL_117:
    LOBYTE(v109) = v74;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E438, &unk_1DB0A0570);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1DB0A04E0;
    *(inited + 32) = 3;
    v84 = inited + 32;
    *(inited + 64) = MEMORY[0x1E69E6530];
    *(inited + 40) = v23;
    v85 = sub_1DAF3E280(inited);
    swift_setDeallocating();
    sub_1DAF40AEC(v84, &qword_1ECC0E380, &qword_1DB0A0308);
    v43 = ODIError(_:fromError:code:forceCode:properties:file:function:line:)(0xD00000000000001FLL, 0x80000001DB0C5960, 0, &v109, 0, v85, 0xD000000000000026, 0x80000001DB0C56E0, 0xD00000000000001ELL, 0x80000001DB0C5710, 422);

    return v43;
  }

  if ((v29 & 0x2000000000000000) == 0)
  {
    if ((v27 & 0x1000000000000000) != 0)
    {
      result = (v29 & 0xFFFFFFFFFFFFFFFLL) + 32;
    }

    else
    {
      result = sub_1DB09DEC4();
    }

    v78 = *result;
    if (v78 == 43)
    {
      if (v76 >= 1)
      {
        v75 = v76 - 1;
        if (v76 != 1)
        {
          v79 = 0;
          if (result)
          {
            v89 = (result + 1);
            while (1)
            {
              v90 = *v89 - 48;
              if (v90 > 9)
              {
                goto LABEL_159;
              }

              v91 = 10 * v79;
              if ((v79 * 10) >> 64 != (10 * v79) >> 63)
              {
                goto LABEL_159;
              }

              v79 = v91 + v90;
              if (__OFADD__(v91, v90))
              {
                goto LABEL_159;
              }

              ++v89;
              if (!--v75)
              {
                goto LABEL_160;
              }
            }
          }

          goto LABEL_151;
        }

        goto LABEL_159;
      }

      goto LABEL_169;
    }

    if (v78 != 45)
    {
      if (v76)
      {
        v79 = 0;
        if (result)
        {
          while (1)
          {
            v95 = *result - 48;
            if (v95 > 9)
            {
              goto LABEL_159;
            }

            v96 = 10 * v79;
            if ((v79 * 10) >> 64 != (10 * v79) >> 63)
            {
              goto LABEL_159;
            }

            v79 = v96 + v95;
            if (__OFADD__(v96, v95))
            {
              goto LABEL_159;
            }

            ++result;
            if (!--v76)
            {
              goto LABEL_151;
            }
          }
        }

        goto LABEL_151;
      }

LABEL_159:
      v79 = 0;
      LOBYTE(v75) = 1;
      goto LABEL_160;
    }

    if (v76 >= 1)
    {
      v75 = v76 - 1;
      if (v76 != 1)
      {
        v79 = 0;
        if (result)
        {
          v80 = (result + 1);
          while (1)
          {
            v81 = *v80 - 48;
            if (v81 > 9)
            {
              goto LABEL_159;
            }

            v82 = 10 * v79;
            if ((v79 * 10) >> 64 != (10 * v79) >> 63)
            {
              goto LABEL_159;
            }

            v79 = v82 - v81;
            if (__OFSUB__(v82, v81))
            {
              goto LABEL_159;
            }

            ++v80;
            if (!--v75)
            {
              goto LABEL_160;
            }
          }
        }

LABEL_151:
        LOBYTE(v75) = 0;
LABEL_160:
        LOBYTE(v108[0]) = v75;
        v100 = v75;
        goto LABEL_161;
      }

      goto LABEL_159;
    }

    __break(1u);
LABEL_168:
    __break(1u);
LABEL_169:
    __break(1u);
    goto LABEL_170;
  }

  *&v109 = v27;
  *(&v109 + 1) = v29 & 0xFFFFFFFFFFFFFFLL;
  if (v27 != 43)
  {
    if (v27 != 45)
    {
      if (v75)
      {
        v79 = 0;
        v97 = &v109;
        while (1)
        {
          v98 = *v97 - 48;
          if (v98 > 9)
          {
            break;
          }

          v99 = 10 * v79;
          if ((v79 * 10) >> 64 != (10 * v79) >> 63)
          {
            break;
          }

          v79 = v99 + v98;
          if (__OFADD__(v99, v98))
          {
            break;
          }

          ++v97;
          if (!--v75)
          {
            goto LABEL_160;
          }
        }
      }

      goto LABEL_159;
    }

    if (v75)
    {
      if (--v75)
      {
        v79 = 0;
        v86 = &v109 + 1;
        while (1)
        {
          v87 = *v86 - 48;
          if (v87 > 9)
          {
            break;
          }

          v88 = 10 * v79;
          if ((v79 * 10) >> 64 != (10 * v79) >> 63)
          {
            break;
          }

          v79 = v88 - v87;
          if (__OFSUB__(v88, v87))
          {
            break;
          }

          ++v86;
          if (!--v75)
          {
            goto LABEL_160;
          }
        }
      }

      goto LABEL_159;
    }

    goto LABEL_168;
  }

  if (v75)
  {
    if (--v75)
    {
      v79 = 0;
      v92 = &v109 + 1;
      while (1)
      {
        v93 = *v92 - 48;
        if (v93 > 9)
        {
          break;
        }

        v94 = 10 * v79;
        if ((v79 * 10) >> 64 != (10 * v79) >> 63)
        {
          break;
        }

        v79 = v94 + v93;
        if (__OFADD__(v94, v93))
        {
          break;
        }

        ++v92;
        if (!--v75)
        {
          goto LABEL_160;
        }
      }
    }

    goto LABEL_159;
  }

LABEL_170:
  __break(1u);
  return result;
}

unint64_t sub_1DAFB3448()
{
  result = qword_1EE303990;
  if (!qword_1EE303990)
  {
    type metadata accessor for ODIDeviceInfo();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE303990);
  }

  return result;
}

uint64_t sub_1DAFB34A0(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0EAF8, &unk_1DB0A9580);
  v4 = MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v31[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v31[-1] - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0EAB0, &qword_1DB0A9530);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v31[-1] - v10;
  sub_1DAF3523C(v1 + OBJC_IVAR____TtC17CoreODIEssentials14DIPHTTPSession_logger, v32);
  v12 = v33;
  v13 = v34;
  __swift_project_boxed_opaque_existential_1(v32, v33);
  v31[0] = 0;
  v31[1] = 0xE000000000000000;
  sub_1DB09DE44();

  strcpy(v31, "Task for URL ");
  HIWORD(v31[1]) = -4864;
  v14 = [a1 currentRequest];
  if (v14)
  {
    v15 = v14;
    sub_1DB09CBA4();

    v16 = 0;
  }

  else
  {
    v16 = 1;
  }

  v17 = sub_1DB09CBF4();
  v18 = *(v17 - 8);
  (*(v18 + 56))(v6, v16, 1, v17);
  sub_1DAF624E8(v6, v8, &qword_1ECC0EAF8, &unk_1DB0A9580);
  if ((*(v18 + 48))(v8, 1, v17) == 1)
  {
    v19 = &qword_1ECC0EAF8;
    v20 = &unk_1DB0A9580;
    v21 = v8;
  }

  else
  {
    sub_1DB09CBC4();
    (*(v18 + 8))(v8, v17);
    v22 = sub_1DB09CF64();
    v23 = *(v22 - 8);
    if ((*(v23 + 48))(v11, 1, v22) != 1)
    {
      v26 = sub_1DB09CEA4();
      v25 = v27;
      (*(v23 + 8))(v11, v22);
      v24 = v26;
      goto LABEL_10;
    }

    v19 = &unk_1ECC0EAB0;
    v20 = &qword_1DB0A9530;
    v21 = v11;
  }

  sub_1DAF40AEC(v21, v19, v20);
  v24 = 0;
  v25 = 0xE000000000000000;
LABEL_10:
  MEMORY[0x1E127FE90](v24, v25);

  MEMORY[0x1E127FE90](0xD00000000000001CLL, 0x80000001DB0C5CF0);
  v28 = v31[0];
  LOBYTE(v31[0]) = 17;
  (*(v13 + 16))(v28, v31[1], v31, v12, v13);

  return __swift_destroy_boxed_opaque_existential_1Tm(v32);
}

uint64_t sub_1DAFB3854(void *a1)
{
  if (a1)
  {
    v3 = *(v1 + OBJC_IVAR____TtC17CoreODIEssentials14DIPHTTPSession_logger + 24);
    v4 = *(v1 + OBJC_IVAR____TtC17CoreODIEssentials14DIPHTTPSession_logger + 32);
    __swift_project_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtC17CoreODIEssentials14DIPHTTPSession_logger), v3);
    v5 = a1;
    sub_1DB09DE44();

    v14[0] = 0xD000000000000011;
    v14[1] = 0x80000001DB0C5CC0;
    v6 = sub_1DB09CE64();
    v7 = [v6 description];
    v8 = sub_1DB09D6C4();
    v10 = v9;

    MEMORY[0x1E127FE90](v8, v10);

    (*(v4 + 16))(0xD000000000000026, 0x80000001DB0C5CC0, v14, v3, v4);
  }

  else
  {
    v12 = *(v1 + OBJC_IVAR____TtC17CoreODIEssentials14DIPHTTPSession_logger + 24);
    v13 = *(v1 + OBJC_IVAR____TtC17CoreODIEssentials14DIPHTTPSession_logger + 32);
    __swift_project_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtC17CoreODIEssentials14DIPHTTPSession_logger), v12);
    LOBYTE(v14[0]) = 17;
    return (*(v13 + 16))(0xD000000000000035, 0x80000001DB0C5C80, v14, v12, v13);
  }
}

void sub_1DAFB39E4(void *a1, uint64_t a2, uint64_t a3)
{
  v14 = [a1 protectionSpace];
  v4 = [v14 authenticationMethod];
  v5 = sub_1DB09D6C4();
  v7 = v6;

  if (sub_1DB09D6C4() == v5 && v8 == v7)
  {
  }

  else
  {
    v10 = sub_1DB09E254();

    if ((v10 & 1) == 0)
    {
      (*(a3 + 16))(a3, 1, 0);
      goto LABEL_13;
    }
  }

  v11 = [v14 serverTrust];
  if (v11)
  {
    v12 = v11;
    if (sub_1DAFB0A50(v11))
    {
      v13 = [objc_allocWithZone(MEMORY[0x1E696AF30]) initWithTrust_];
      (*(a3 + 16))(a3, 0, v13);

      v14 = v13;
      goto LABEL_13;
    }
  }

  (*(a3 + 16))(a3, 2, 0);
LABEL_13:
}

uint64_t sub_1DAFB3B74(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0EAF8, &unk_1DB0A9580);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DAFB3BEC(void *a1)
{
  v3 = v1;
  v73 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v19 = sub_1DAFD1C2C(0, 0, 0);
    if (!v2)
    {
      error[0] = v19;
      error[1] = v20;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0EB68, &qword_1DB0A9E58);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0EB70, &qword_1DB0A9E60);
      swift_dynamicCast();
      v6 = *(&v70[0] + 1);
      *(v3 + 16) = *&v70[0];
      goto LABEL_23;
    }

    if (qword_1EE301DE8 != -1)
    {
      swift_once();
    }

    v21 = qword_1EE30A148;
    v22 = sub_1DB09DB64();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0EEE0, &qword_1DB0A21E0);
    v23 = swift_allocObject();
    *(v23 + 16) = xmmword_1DB0A04E0;
    swift_getErrorValue();
    v24 = sub_1DB09E324();
    v26 = v25;
    *(v23 + 56) = MEMORY[0x1E69E6158];
    *(v23 + 64) = sub_1DAF4DC24();
    *(v23 + 32) = v24;
    *(v23 + 40) = v26;
    sub_1DB09D444("failed to create key pair for ECIES. %{public}@", 47, 2, &dword_1DAF16000, v21, v22, v23);

    v27 = v2;
    if (qword_1EE300B90 != -1)
    {
      swift_once();
    }

    v28 = sub_1DAF3E128(MEMORY[0x1E69E7CC0]);
    v29 = v2;
    v30 = sub_1DB09CE64();
    v31 = [v30 domain];
    v32 = sub_1DB09D6C4();
    v34 = v33;

    if (v32 == 0x726F727245504944 && v34 == 0xE800000000000000)
    {
      goto LABEL_21;
    }

    v41 = sub_1DB09E254();

    if (v41)
    {
      goto LABEL_28;
    }

    v58 = [v30 domain];
    v59 = sub_1DB09D6C4();
    v61 = v60;

    if (v59 == 0x726F72724549444FLL && v61 == 0xE800000000000000)
    {
LABEL_21:
    }

    else
    {
      v62 = sub_1DB09E254();

      if ((v62 & 1) == 0)
      {
        v63 = sub_1DB09D6C4();
        v65 = v64;
        v72 = sub_1DAF4062C(0, &qword_1EE300980, 0x1E696ABC0);
        error[0] = v30;
        sub_1DAF40D20(error, v70);
        v66 = v30;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        sub_1DAF3B11C(v70, v63, v65, isUniquelyReferenced_nonNull_native);

        v69 = 0;
        v44 = v28;
        goto LABEL_32;
      }
    }

LABEL_28:
    DIPErrorCode.init(rawValue:)([v30 code]);
    if (LOWORD(error[0]) == 462)
    {
      v42 = 0;
    }

    else
    {
      v42 = error[0];
    }

    v43 = [v30 userInfo];
    v44 = sub_1DB09D624();

    v69 = v42;
LABEL_32:
    if (*(v44 + 16) && (v45 = sub_1DAF35210(0x636F766E49504944, 0xEE00736E6F697461), (v46 & 1) != 0) && (sub_1DAF409DC(*(v44 + 56) + 32 * v45, error), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E478, &qword_1DB0A09A0), swift_dynamicCast()))
    {
      v47 = *&v70[0];
    }

    else
    {
      v47 = MEMORY[0x1E69E7CC0];
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v47 = sub_1DAF72FF4(0, *(v47 + 2) + 1, 1, v47);
    }

    v49 = *(v47 + 2);
    v48 = *(v47 + 3);
    v50 = v49 + 1;
    if (v49 >= v48 >> 1)
    {
      v68 = sub_1DAF72FF4((v48 > 1), v49 + 1, 1, v47);
      v50 = v49 + 1;
      v47 = v68;
    }

    *(v47 + 2) = v50;
    v51 = &v47[56 * v49];
    *(v51 + 4) = 0xD000000000000024;
    *(v51 + 5) = 0x80000001DB0C61F0;
    *(v51 + 6) = 0xD000000000000027;
    *(v51 + 7) = 0x80000001DB0C5E30;
    *(v51 + 8) = 0x293A5F2874696E69;
    *(v51 + 9) = 0xE800000000000000;
    *(v51 + 10) = 98;
    v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E478, &qword_1DB0A09A0);
    error[0] = v47;
    sub_1DAF40D20(error, v70);
    v52 = swift_isUniquelyReferenced_nonNull_native();
    sub_1DAF3B11C(v70, 0x636F766E49504944, 0xEE00736E6F697461, v52);
    v53 = qword_1DB0A9EE0[v69];
    v54 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
    v55 = sub_1DB09D6B4();
    v56 = sub_1DB09D604();
    [v54 initWithDomain:v55 code:v53 userInfo:v56];

    swift_willThrow();
    goto LABEL_42;
  }

  *(v3 + 16) = a1;
  v5 = a1;
  v6 = SecKeyCopyPublicKey(v5);
  if (!v6)
  {
    if (qword_1EE300B90 != -1)
    {
      swift_once();
    }

    v7 = MEMORY[0x1E69E7CC0];
    v8 = sub_1DAF3E128(MEMORY[0x1E69E7CC0]);
    if (*(v8 + 16))
    {
      v9 = sub_1DAF35210(0x636F766E49504944, 0xEE00736E6F697461);
      if (v10)
      {
        sub_1DAF409DC(*(v8 + 56) + 32 * v9, error);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E478, &qword_1DB0A09A0);
        if (swift_dynamicCast())
        {
          v7 = *&v70[0];
        }
      }
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v7 = sub_1DAF72FF4(0, *(v7 + 2) + 1, 1, v7);
    }

    v12 = *(v7 + 2);
    v11 = *(v7 + 3);
    if (v12 >= v11 >> 1)
    {
      v7 = sub_1DAF72FF4((v11 > 1), v12 + 1, 1, v7);
    }

    *(v7 + 2) = v12 + 1;
    v13 = &v7[56 * v12];
    *(v13 + 4) = 0xD00000000000001BLL;
    *(v13 + 5) = 0x80000001DB0C6250;
    *(v13 + 6) = 0xD000000000000027;
    *(v13 + 7) = 0x80000001DB0C5E30;
    *(v13 + 8) = 0x293A5F2874696E69;
    *(v13 + 9) = 0xE800000000000000;
    *(v13 + 10) = 90;
    v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E478, &qword_1DB0A09A0);
    error[0] = v7;
    sub_1DAF40D20(error, v70);
    v14 = swift_isUniquelyReferenced_nonNull_native();
    sub_1DAF3B11C(v70, 0x636F766E49504944, 0xEE00736E6F697461, v14);
    v15 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
    v16 = sub_1DB09D6B4();
    v17 = sub_1DB09D604();
    [v15 initWithDomain:v16 code:-3102 userInfo:v17];

    swift_willThrow();
    v18 = *(v3 + 16);
    goto LABEL_26;
  }

LABEL_23:
  *(v3 + 24) = v6;
  v35 = v6;
  error[0] = 0;
  v36 = SecKeyCopyExternalRepresentation(v35, error);

  if (!v36)
  {
    LOWORD(v70[0]) = 121;
    sub_1DAFCF218(error[0], 0xD000000000000021, 0x80000001DB0C6220, v70);
    swift_willThrow();

    v18 = *(v3 + 24);
LABEL_26:

LABEL_42:
    type metadata accessor for DIPECIESSessionECV3();
    swift_deallocPartialClassInstance();
    return v3;
  }

  v37 = v36;
  v38 = sub_1DB09D034();
  v40 = v39;

  *(v3 + 32) = v38;
  *(v3 + 40) = v40;
  return v3;
}

uint64_t sub_1DAFB45CC(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a4 || (v6 = v4, v7 = a4, !*(a4 + 16)) || (v11 = sub_1DAF35474(0), (v12 & 1) == 0) || !*(v7 + 2) || (v13 = *(v7 + 7) + 16 * v11, v14 = *v13, v15 = *(v13 + 8), v16 = sub_1DAF35474(1), (v17 & 1) == 0))
  {
    if (qword_1EE300B90 != -1)
    {
      swift_once();
    }

    v21 = MEMORY[0x1E69E7CC0];
    v22 = sub_1DAF3E128(MEMORY[0x1E69E7CC0]);
    if (*(v22 + 16))
    {
      v23 = sub_1DAF35210(0x636F766E49504944, 0xEE00736E6F697461);
      if (v24)
      {
        sub_1DAF409DC(*(v22 + 56) + 32 * v23, &v75);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E478, &qword_1DB0A09A0);
        if (swift_dynamicCast())
        {
          v21 = *&v74[0];
        }
      }
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v21 = sub_1DAF72FF4(0, *(v21 + 2) + 1, 1, v21);
    }

    v26 = *(v21 + 2);
    v25 = *(v21 + 3);
    if (v26 >= v25 >> 1)
    {
      v21 = sub_1DAF72FF4((v25 > 1), v26 + 1, 1, v21);
    }

    *(v21 + 2) = v26 + 1;
    v27 = &v21[56 * v26];
    *(v27 + 4) = 0xD000000000000053;
    *(v27 + 5) = 0x80000001DB0C5E80;
    *(v27 + 6) = 0xD000000000000027;
    *(v27 + 7) = 0x80000001DB0C5E30;
    *(v27 + 8) = 0x2874707972636E65;
    *(v27 + 9) = 0xEF293A5F3A5F3A5FLL;
    *(v27 + 10) = 141;
    v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E478, &qword_1DB0A09A0);
    *&v75 = v21;
    sub_1DAF40D20(&v75, v74);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v77 = v22;
    sub_1DAF3B11C(v74, 0x636F766E49504944, 0xEE00736E6F697461, isUniquelyReferenced_nonNull_native);
    v29 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
    v30 = sub_1DB09D6B4();
    v31 = sub_1DB09D604();
    [v29 initWithDomain:v30 code:-1202 userInfo:v31];

    return swift_willThrow();
  }

  v18 = (*(v7 + 7) + 16 * v16);
  v19 = *v18;
  v72 = v18[1];
  v73 = v14;
  v20 = a2 >> 62;
  v71 = v19;
  if ((a2 >> 62) <= 1)
  {
    if (!v20)
    {
      v14 = BYTE6(a2);
      goto LABEL_27;
    }

    goto LABEL_24;
  }

  if (v20 != 2)
  {
    v14 = 0;
    goto LABEL_27;
  }

  v34 = *(a1 + 16);
  v33 = *(a1 + 24);
  v14 = v33 - v34;
  if (__OFSUB__(v33, v34))
  {
    __break(1u);
LABEL_24:
    if (__OFSUB__(HIDWORD(a1), a1))
    {
      __break(1u);
LABEL_56:
      swift_once();
LABEL_43:
      v52 = v14 - 32;
      v53 = v7 - 32;
      v54 = MEMORY[0x1E69E7CC0];
      v55 = sub_1DAF3E128(MEMORY[0x1E69E7CC0]);
      if (*(v55 + 16))
      {
        v56 = sub_1DAF35210(0x636F766E49504944, 0xEE00736E6F697461);
        if (v57)
        {
          sub_1DAF409DC(*(v55 + 56) + 32 * v56, &v75);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E478, &qword_1DB0A09A0);
          if (swift_dynamicCast())
          {
            v54 = *&v74[0];
          }
        }
      }

      v58 = v53 | 0x8000000000000000;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v54 = sub_1DAF72FF4(0, *(v54 + 2) + 1, 1, v54);
      }

      v60 = *(v54 + 2);
      v59 = *(v54 + 3);
      if (v60 >= v59 >> 1)
      {
        v54 = sub_1DAF72FF4((v59 > 1), v60 + 1, 1, v54);
      }

      *(v54 + 2) = v60 + 1;
      v61 = &v54[56 * v60];
      *(v61 + 4) = 0xD000000000000022;
      *(v61 + 5) = v52 | 0x8000000000000000;
      *(v61 + 6) = 0xD000000000000027;
      *(v61 + 7) = v58;
      *(v61 + 8) = 0x2874707972636E65;
      *(v61 + 9) = 0xEF293A5F3A5F3A5FLL;
      *(v61 + 10) = 147;
      v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E478, &qword_1DB0A09A0);
      *&v75 = v54;
      sub_1DAF40D20(&v75, v74);
      v62 = swift_isUniquelyReferenced_nonNull_native();
      v77 = v55;
      sub_1DAF3B11C(v74, 0x636F766E49504944, 0xEE00736E6F697461, v62);
      v63 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
      v64 = sub_1DB09D6B4();
      v65 = sub_1DB09D604();
      [v63 initWithDomain:v64 code:-1 userInfo:v65];

      swift_willThrow();
LABEL_52:
      sub_1DAF40780(v71, v72);
      v40 = v73;
      return sub_1DAF40780(v40, v70);
    }

    v14 = HIDWORD(a1) - a1;
  }

LABEL_27:
  v35 = objc_allocWithZone(MEMORY[0x1E695DF88]);
  v70 = v15;
  sub_1DAF40674(v73, v15);
  sub_1DAF40674(v71, v72);
  v36 = [v35 initWithLength_];
  if (!v36)
  {
    if (qword_1EE300B90 != -1)
    {
      swift_once();
    }

    v41 = MEMORY[0x1E69E7CC0];
    v42 = sub_1DAF3E128(MEMORY[0x1E69E7CC0]);
    if (*(v42 + 16))
    {
      v43 = sub_1DAF35210(0x636F766E49504944, 0xEE00736E6F697461);
      if (v44)
      {
        sub_1DAF409DC(*(v42 + 56) + 32 * v43, &v75);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E478, &qword_1DB0A09A0);
        if (swift_dynamicCast())
        {
          v41 = *&v74[0];
        }
      }
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v41 = sub_1DAF72FF4(0, *(v41 + 2) + 1, 1, v41);
    }

    v46 = *(v41 + 2);
    v45 = *(v41 + 3);
    if (v46 >= v45 >> 1)
    {
      v41 = sub_1DAF72FF4((v45 > 1), v46 + 1, 1, v41);
    }

    *(v41 + 2) = v46 + 1;
    v47 = &v41[56 * v46];
    *(v47 + 4) = 0xD000000000000029;
    *(v47 + 5) = 0x80000001DB0C6130;
    *(v47 + 6) = 0xD000000000000027;
    *(v47 + 7) = 0x80000001DB0C5E30;
    *(v47 + 8) = 0x2874707972636E65;
    *(v47 + 9) = 0xEF293A5F3A5F3A5FLL;
    *(v47 + 10) = 144;
    v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E478, &qword_1DB0A09A0);
    *&v75 = v41;
    sub_1DAF40D20(&v75, v74);
    v48 = swift_isUniquelyReferenced_nonNull_native();
    v77 = v42;
    sub_1DAF3B11C(v74, 0x636F766E49504944, 0xEE00736E6F697461, v48);
    v49 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
    v50 = sub_1DB09D6B4();
    v51 = sub_1DB09D604();
    [v49 initWithDomain:v50 code:-1 userInfo:v51];

    swift_willThrow();
    goto LABEL_52;
  }

  v69 = v36;
  v37 = [objc_allocWithZone(MEMORY[0x1E695DF88]) initWithLength_];
  if (!v37)
  {
    v14 = "Failed to allocate buffer for tag.";
    v7 = "CoreODIEssentials/DIPECIESSession.swift";
    if (qword_1EE300B90 == -1)
    {
      goto LABEL_43;
    }

    goto LABEL_56;
  }

  v38 = v37;
  v39 = (*(*v6 + 152))(0, a3, v73, v15, v71, v72);
  if (v5)
  {

    sub_1DAF40780(v71, v72);
    v40 = v73;
    return sub_1DAF40780(v40, v70);
  }

  v66 = v39;

  v67 = v69;
  v68 = v38;
  sub_1DAFB736C(a1, a2, v66, v67, v68, &v75);
  sub_1DAF40780(v73, v15);
  sub_1DAF40780(v71, v72);

  return v75;
}

uint64_t sub_1DAFB4F70@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, void *a5@<X4>, uint64_t *a6@<X8>)
{
  v11 = *(a3 + 16);
  result = CFDataGetBytePtr(v11);
  if (!result)
  {
    __break(1u);
    goto LABEL_11;
  }

  v29 = a6;
  result = CFDataGetBytePtr(v11);
  if (!result)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (a1)
  {
    v13 = a2 - a1;
  }

  else
  {
    v13 = 0;
  }

  v14 = [a4 mutableBytes];
  v28 = [a5 mutableBytes];
  v15 = CCCryptorGCMOneshotEncrypt();
  if (v15)
  {
    v16 = v15;
    sub_1DB09DE44();

    v30[0] = 0xD00000000000007ALL;
    v30[1] = 0x80000001DB0C6190;
    v31 = v16;
    v17 = MEMORY[0x1E69E72F0];
    v18 = sub_1DB09E1D4();
    MEMORY[0x1E127FE90](v18);

    MEMORY[0x1E127FE90](46, 0xE100000000000000);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E9D0, &unk_1DB0A9420);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1DB0A04E0;
    *(inited + 32) = 20;
    v20 = inited + 32;
    *(inited + 64) = v17;
    *(inited + 40) = v16;
    v21 = sub_1DAF3E3C8(inited);
    swift_setDeallocating();
    sub_1DAF40AEC(v20, &qword_1ECC0E368, &unk_1DB0A02F0);
    DIPError(_:fromError:code:forceCode:properties:file:function:line:)(0xD000000000000027, 0x80000001DB0C6190, 0, v30, 0, v21, 0xD000000000000027, 0x80000001DB0C5E30, 0x2874707972636E65, 0xEF293A5F3A5F3A5FLL, 171);

    return swift_willThrow();
  }

  [a4 appendData_];
  result = CFDataGetBytePtr(v11);
  if (result)
  {
    v22 = sub_1DAFB7678((result + 16), 0x10uLL);
    v24 = v23;
    *v29 = v22;
    v29[1] = v23;
    sub_1DAF40674(v22, v23);
    v25 = sub_1DB09D034();
    v27 = v26;
    result = sub_1DAF40780(v22, v24);
    v29[2] = v25;
    v29[3] = v27;
    return result;
  }

LABEL_12:
  __break(1u);
  return result;
}

__int128 *sub_1DAFB5240(char a1, SecKeyRef key, unint64_t a3, unint64_t a4, const __CFString *a5, unint64_t a6)
{
  v8 = v7;
  v9 = a6;
  v10 = a5;
  v11 = a4;
  v12 = a3;
  v93 = *MEMORY[0x1E69E9840];
  v13 = a4 >> 62;
  if ((a4 >> 62) > 1)
  {
    if (v13 != 2)
    {
      goto LABEL_14;
    }

    v15 = *(a3 + 16);
    v14 = *(a3 + 24);
    v16 = __OFSUB__(v14, v15);
    v17 = v14 - v15;
    if (!v16)
    {
      if (v17 == 65)
      {
        goto LABEL_8;
      }

      goto LABEL_14;
    }

    __break(1u);
LABEL_79:
    __break(1u);
LABEL_80:
    swift_once();
LABEL_64:
    v65 = v8 - 32;
    v66 = v6 - 2;
    v67 = MEMORY[0x1E69E7CC0];
    v6 = sub_1DAF3E128(MEMORY[0x1E69E7CC0]);
    v68 = *(v6 + 2);

    if (v68)
    {
      v69 = sub_1DAF35210(0x636F766E49504944, 0xEE00736E6F697461);
      if (v70)
      {
        sub_1DAF409DC(*(v6 + 7) + 32 * v69, &v91);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E478, &qword_1DB0A09A0);
        if (swift_dynamicCast())
        {
          v67 = error[0];
        }
      }
    }

    v71 = v66 | 0x8000000000000000;
    v72 = v11;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v67 = sub_1DAF72FF4(0, *(v67 + 2) + 1, 1, v67);
    }

    v74 = *(v67 + 2);
    v73 = *(v67 + 3);
    if (v74 >= v73 >> 1)
    {
      v67 = sub_1DAF72FF4((v73 > 1), v74 + 1, 1, v67);
    }

    *(v67 + 2) = v74 + 1;
    v75 = &v67[56 * v74];
    *(v75 + 4) = v72;
    *(v75 + 5) = v13;
    *(v75 + 6) = 0xD000000000000027;
    *(v75 + 7) = v65 | 0x8000000000000000;
    *(v75 + 8) = 0xD00000000000001CLL;
    *(v75 + 9) = v71;
    *(v75 + 10) = 248;
    v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E478, &qword_1DB0A09A0);
    *&v91 = v67;
    sub_1DAF40D20(&v91, error);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v89 = v6;
    sub_1DAF3B11C(error, 0x636F766E49504944, 0xEE00736E6F697461, isUniquelyReferenced_nonNull_native);
    v59 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
    v60 = sub_1DB09D6B4();
    goto LABEL_73;
  }

  if (v13)
  {
    if (!__OFSUB__(HIDWORD(a3), a3))
    {
      if (HIDWORD(a3) - a3 == 65)
      {
        goto LABEL_8;
      }

LABEL_14:
      *&v91 = 0;
      *(&v91 + 1) = 0xE000000000000000;
      v6 = &v91;
      sub_1DB09DE44();
      a1 = MEMORY[0x1E127FE90](0xD00000000000003ALL, 0x80000001DB0C6090);
      if (v13 <= 1)
      {
        if (!v13)
        {
          v18 = BYTE6(v11);
LABEL_41:
          error[0] = v18;
          v49 = sub_1DB09E1D4();
          MEMORY[0x1E127FE90](v49);

          v50 = v91;
          if (qword_1EE300B90 != -1)
          {
            swift_once();
          }

          v51 = MEMORY[0x1E69E7CC0];
          v6 = sub_1DAF3E128(MEMORY[0x1E69E7CC0]);
          v52 = *(v6 + 2);

          if (v52)
          {
            v53 = sub_1DAF35210(0x636F766E49504944, 0xEE00736E6F697461);
            if (v54)
            {
              sub_1DAF409DC(*(v6 + 7) + 32 * v53, &v91);
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E478, &qword_1DB0A09A0);
              if (swift_dynamicCast())
              {
                v51 = error[0];
              }
            }
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v51 = sub_1DAF72FF4(0, *(v51 + 2) + 1, 1, v51);
          }

          v56 = *(v51 + 2);
          v55 = *(v51 + 3);
          if (v56 >= v55 >> 1)
          {
            v51 = sub_1DAF72FF4((v55 > 1), v56 + 1, 1, v51);
          }

          *(v51 + 2) = v50 + 1;
          v57 = &v51[56 * v50];
          *(v57 + 2) = v50;
          *(v57 + 6) = 0xD000000000000027;
          *(v57 + 7) = 0x80000001DB0C5E30;
          *(v57 + 8) = 0xD00000000000001CLL;
          *(v57 + 9) = 0x80000001DB0C60D0;
          *(v57 + 10) = 245;
          v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E478, &qword_1DB0A09A0);
          *&v91 = v51;
          sub_1DAF40D20(&v91, error);
          v58 = swift_isUniquelyReferenced_nonNull_native();
          v89 = v6;
          sub_1DAF3B11C(error, 0x636F766E49504944, 0xEE00736E6F697461, v58);
          v59 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
          v60 = sub_1DB09D6B4();
LABEL_73:
          v77 = sub_1DB09D604();
          [v59 initWithDomain:v60 code:-1202 userInfo:v77];

LABEL_74:
          swift_willThrow();
          return v6;
        }

        LODWORD(v18) = HIDWORD(v12) - v12;
        if (!__OFSUB__(HIDWORD(v12), v12))
        {
          v18 = v18;
          goto LABEL_41;
        }

        __break(1u);
        goto LABEL_82;
      }

      v18 = 0;
      if (v13 != 2)
      {
        goto LABEL_41;
      }

      v20 = *(v12 + 16);
      v19 = *(v12 + 24);
      v16 = __OFSUB__(v19, v20);
      v18 = (v19 - v20);
      if (!v16)
      {
        goto LABEL_41;
      }

      __break(1u);
      goto LABEL_21;
    }

    goto LABEL_79;
  }

  if (BYTE6(a4) != 65)
  {
    goto LABEL_14;
  }

LABEL_8:
  v13 = a6 >> 62;
  if ((a6 >> 62) <= 1)
  {
    if (v13)
    {
      if (__OFSUB__(HIDWORD(a5), a5))
      {
LABEL_83:
        __break(1u);
LABEL_84:
        swift_once();
        goto LABEL_37;
      }

      if (HIDWORD(a5) - a5 == 65)
      {
        goto LABEL_24;
      }
    }

    else if (BYTE6(a6) == 65)
    {
      goto LABEL_24;
    }

LABEL_54:
    *&v91 = 0;
    *(&v91 + 1) = 0xE000000000000000;
    sub_1DB09DE44();
    MEMORY[0x1E127FE90](0xD00000000000003DLL, 0x80000001DB0C60F0);
    if (v13 > 1)
    {
      v61 = 0;
      if (v13 != 2)
      {
        goto LABEL_63;
      }

      data = v10->data;
      length = v10->length;
      v16 = __OFSUB__(length, data);
      v61 = length - data;
      if (!v16)
      {
        goto LABEL_63;
      }

      __break(1u);
    }

    else if (!v13)
    {
      v61 = BYTE6(v9);
      goto LABEL_63;
    }

    LODWORD(v61) = HIDWORD(v10) - v10;
    if (__OFSUB__(HIDWORD(v10), v10))
    {
      __break(1u);
    }

    v61 = v61;
LABEL_63:
    error[0] = v61;
    v64 = sub_1DB09E1D4();
    MEMORY[0x1E127FE90](v64);

    v8 = "CoreODIEssentials/DIPECIESSession.swift";
    v13 = *(&v91 + 1);
    v11 = v91;
    v6 = "deriveSharedSecret(_:_:_:_:)";
    if (qword_1EE300B90 == -1)
    {
      goto LABEL_64;
    }

    goto LABEL_80;
  }

LABEL_21:
  if (v13 != 2)
  {
    goto LABEL_54;
  }

  v22 = v10->data;
  v21 = v10->length;
  v16 = __OFSUB__(v21, v22);
  v23 = v21 - v22;
  if (v16)
  {
LABEL_82:
    __break(1u);
    goto LABEL_83;
  }

  if (v23 != 65)
  {
    goto LABEL_54;
  }

LABEL_24:
  v87 = a1;
  error[0] = 0;
  publicKey = key;
  v24 = SecKeyCopyExternalRepresentation(key, error);
  if (!v24)
  {
    LOWORD(v91) = 121;
    sub_1DAFCF218(error[0], 0xD000000000000029, 0x80000001DB0C6020, &v91);
    goto LABEL_74;
  }

  v25 = v6;
  v26 = v24;
  v27 = sub_1DB09D034();
  v29 = v28;

  v82 = v25;
  v30 = *(v25 + 4);
  v31 = *(v25 + 5);
  sub_1DAF40674(v30, v31);
  v32 = (v87 & 1) == 0;
  if (v87)
  {
    v33 = v30;
  }

  else
  {
    v33 = v27;
  }

  if (v87)
  {
    v34 = v31;
  }

  else
  {
    v34 = v29;
  }

  v85 = v33;
  v86 = v34;
  if (v32)
  {
    v35 = v30;
  }

  else
  {
    v35 = v27;
  }

  v84 = v35;
  if (!v32)
  {
    v31 = v29;
  }

  v91 = xmmword_1DB0A0510;
  v80 = v27;
  v81 = v29;
  sub_1DAF40674(v27, v29);
  v79 = v31;
  sub_1DB09D054();
  sub_1DB09D054();
  sub_1DB09D054();
  sub_1DB09D054();
  v6 = *(v82 + 2);
  v10 = *MEMORY[0x1E697B0D8];
  v12 = *(&v91 + 1);
  v9 = v91;
  v89 = 0;
  if (qword_1EE301DE8 != -1)
  {
    goto LABEL_84;
  }

LABEL_37:
  v36 = qword_1EE30A148;
  v37 = sub_1DB09DB54();
  sub_1DB09D444("coreidvd: derive shared secret", 30, 2, &dword_1DAF16000, v36, v37, MEMORY[0x1E69E7CC0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0EB60, &qword_1DB0A9E50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DB0A0500;
  v39 = *MEMORY[0x1E697B228];
  *(inited + 32) = *MEMORY[0x1E697B228];
  v40 = MEMORY[0x1E69E6530];
  *(inited + 40) = 32;
  v41 = *MEMORY[0x1E697B230];
  *(inited + 64) = v40;
  *(inited + 72) = v41;
  *(inited + 104) = MEMORY[0x1E6969080];
  *(inited + 80) = v9;
  *(inited + 88) = v12;
  v42 = v39;
  v43 = v41;
  sub_1DAF40674(v9, v12);
  sub_1DAF3E794(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0E288, &qword_1DB0A0218);
  swift_arrayDestroy();
  sub_1DAF4062C(0, &qword_1EE3018B0, 0x1E696AEC0);
  sub_1DAFB79E8();
  v44 = sub_1DB09D604();

  v45 = SecKeyCopyKeyExchangeResult(v6, v10, publicKey, v44, &v89);

  if (v45)
  {
    type metadata accessor for DIPSecureData();
    v6 = swift_allocObject();
    *(v6 + 2) = v45;
    v46 = v45;
    BytePtr = CFDataGetBytePtr(v46);
    v48 = CFDataGetLength(v46);

    mlock(BytePtr, v48);
    sub_1DAF40780(v84, v79);
    sub_1DAF40780(v85, v86);
    sub_1DAF40780(v80, v81);
    sub_1DAF40780(v91, *(&v91 + 1));
  }

  else
  {
    v88 = 203;
    sub_1DAFCF218(v89, 0xD00000000000001DLL, 0x80000001DB0C6070, &v88);
    swift_willThrow();
    sub_1DAF40780(v84, v79);
    sub_1DAF40780(v85, v86);
    sub_1DAF40780(v80, v81);
    sub_1DAF40780(v91, *(&v91 + 1));
  }

  return v6;
}

uint64_t sub_1DAFB5D68()
{
  v1 = *v0;
  v2 = *(*v0 + 32);
  sub_1DAF40674(v2, *(v1 + 40));
  return v2;
}

const __CFDictionary *sub_1DAFB5DB0(char a1, SecKeyRef key)
{
  error[1] = *MEMORY[0x1E69E9840];
  error[0] = 0;
  v5 = SecKeyCopyExternalRepresentation(key, error);
  if (v5)
  {
    publicKey = key;
    v6 = v5;
    v7 = sub_1DB09D034();
    v9 = v8;

    v10 = *(v2 + 4);
    v11 = *(v2 + 5);
    sub_1DAF40674(v10, v11);
    if (a1)
    {
      v12 = v10;
    }

    else
    {
      v12 = v7;
    }

    if (a1)
    {
      v13 = v11;
    }

    else
    {
      v13 = v9;
    }

    if (a1)
    {
      v14 = v7;
    }

    else
    {
      v14 = v10;
    }

    if (a1)
    {
      v15 = v9;
    }

    else
    {
      v15 = v11;
    }

    v42 = xmmword_1DB0A0510;
    v36 = v7;
    v37 = v9;
    v16 = v7;
    v17 = v14;
    v18 = v9;
    v19 = v15;
    sub_1DAF40674(v16, v18);
    sub_1DB09D054();
    v38 = v12;
    v39 = v13;
    sub_1DB09D054();
    v20 = *(v2 + 2);
    v21 = *MEMORY[0x1E697B0D8];
    v41 = 0;
    if (qword_1EE301DE8 != -1)
    {
      swift_once();
    }

    v22 = qword_1EE30A148;
    v23 = sub_1DB09DB54();
    sub_1DB09D444("coreidvd: derive shared secret", 30, 2, &dword_1DAF16000, v22, v23, MEMORY[0x1E69E7CC0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0EB60, &qword_1DB0A9E50);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1DB0A0500;
    v25 = *MEMORY[0x1E697B228];
    *(inited + 32) = *MEMORY[0x1E697B228];
    v26 = MEMORY[0x1E69E6530];
    *(inited + 40) = 32;
    v27 = *MEMORY[0x1E697B230];
    *(inited + 64) = v26;
    *(inited + 72) = v27;
    *(inited + 104) = MEMORY[0x1E6969080];
    *(inited + 80) = 0;
    *(inited + 88) = 0xC000000000000000;
    v28 = v25;
    v29 = v27;
    sub_1DAF40674(0, 0xC000000000000000);
    sub_1DAF3E794(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0E288, &qword_1DB0A0218);
    swift_arrayDestroy();
    sub_1DAF4062C(0, &qword_1EE3018B0, 0x1E696AEC0);
    sub_1DAFB79E8();
    v2 = sub_1DB09D604();

    v30 = SecKeyCopyKeyExchangeResult(v20, v21, publicKey, v2, &v41);

    if (v30)
    {
      type metadata accessor for DIPSecureData();
      v2 = swift_allocObject();
      *(v2 + 2) = v30;
      v31 = v30;
      BytePtr = CFDataGetBytePtr(v31);
      Length = CFDataGetLength(v31);

      mlock(BytePtr, Length);
      sub_1DAF40780(v17, v19);
      sub_1DAF40780(v38, v39);
      sub_1DAF40780(v36, v37);
      sub_1DAF40780(v42, *(&v42 + 1));
    }

    else
    {
      v40 = 203;
      sub_1DAFCF218(v41, 0xD00000000000001DLL, 0x80000001DB0C6070, &v40);
      swift_willThrow();
      sub_1DAF40780(v17, v19);
      sub_1DAF40780(v38, v39);
      sub_1DAF40780(v36, v37);
      sub_1DAF40780(v42, *(&v42 + 1));
    }
  }

  else
  {
    LOWORD(v42) = 121;
    sub_1DAFCF218(error[0], 0xD000000000000029, 0x80000001DB0C6020, &v42);
    swift_willThrow();
  }

  return v2;
}

uint64_t sub_1DAFB619C()
{
  sub_1DAF40780(*(v0 + 32), *(v0 + 40));

  return swift_deallocClassInstance();
}

void sub_1DAFB6208(unint64_t a1, unint64_t a2, __SecKey *a3, uint64_t a4)
{
  v127 = *MEMORY[0x1E69E9840];
  if (a4)
  {
    v5 = v4;
    if (*(a4 + 16))
    {
      v10 = sub_1DAF35474(0);
      if (v11)
      {
        if (*(a4 + 16))
        {
          v12 = (*(a4 + 56) + 16 * v10);
          v14 = *v12;
          v13 = v12[1];
          v15 = sub_1DAF35474(1);
          if (v16)
          {
            v17 = (*(a4 + 56) + 16 * v15);
            v18 = v17[1];
            v120 = v18;
            v121 = *v17;
            v19 = v13 >> 62;
            v118 = v13;
            v119 = v14;
            if ((v13 >> 62) > 1)
            {
              if (v19 != 2)
              {
                goto LABEL_30;
              }

              v33 = *(v14 + 16);
              v32 = *(v14 + 24);
              v34 = __OFSUB__(v32, v33);
              v20 = v32 - v33;
              if (!v34)
              {
LABEL_26:
                if (v20 == 65)
                {
                  v19 = v18 >> 62;
                  if ((v18 >> 62) <= 1)
                  {
                    if (!v19)
                    {
                      v35 = BYTE6(v18);
                      goto LABEL_56;
                    }

                    LODWORD(v35) = HIDWORD(v121) - v121;
                    if (!__OFSUB__(HIDWORD(v121), v121))
                    {
                      v35 = v35;
                      goto LABEL_56;
                    }

LABEL_115:
                    __break(1u);
                    goto LABEL_116;
                  }

                  goto LABEL_37;
                }

LABEL_30:
                *&v125 = 0;
                *(&v125 + 1) = 0xE000000000000000;
                sub_1DAF40674(v14, v13);
                sub_1DAF40674(v121, v18);
                v18 = &v125;
                sub_1DB09DE44();

                *&v125 = 0xD00000000000002FLL;
                *(&v125 + 1) = 0x80000001DB0C5EE0;
                if (v19 <= 1)
                {
                  if (!v19)
                  {
                    v36 = BYTE6(v13);
                    goto LABEL_43;
                  }

LABEL_41:
                  LODWORD(v36) = HIDWORD(v14) - v14;
                  if (__OFSUB__(HIDWORD(v14), v14))
                  {
                    __break(1u);
                    goto LABEL_115;
                  }

                  v36 = v36;
LABEL_43:
                  *&v124[0] = v36;
                  v41 = sub_1DB09E1D4();
                  MEMORY[0x1E127FE90](v41);

                  v42 = *(&v125 + 1);
                  v117 = v125;
                  if (qword_1EE300B90 != -1)
                  {
                    swift_once();
                  }

                  v43 = MEMORY[0x1E69E7CC0];
                  v44 = sub_1DAF3E128(MEMORY[0x1E69E7CC0]);
                  v45 = *(v44 + 16);

                  if (v45)
                  {
                    v46 = sub_1DAF35210(0x636F766E49504944, 0xEE00736E6F697461);
                    if (v47)
                    {
                      sub_1DAF409DC(*(v44 + 56) + 32 * v46, &v125);
                      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E478, &qword_1DB0A09A0);
                      if (swift_dynamicCast())
                      {
                        v43 = *&v124[0];
                      }
                    }
                  }

                  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                  {
                    v43 = sub_1DAF72FF4(0, *(v43 + 2) + 1, 1, v43);
                  }

                  v49 = *(v43 + 2);
                  v48 = *(v43 + 3);
                  if (v49 >= v48 >> 1)
                  {
                    v43 = sub_1DAF72FF4((v48 > 1), v49 + 1, 1, v43);
                  }

                  *(v43 + 2) = v49 + 1;
                  v50 = &v43[56 * v49];
                  *(v50 + 4) = v117;
                  *(v50 + 5) = v42;
                  *(v50 + 6) = 0xD000000000000027;
                  *(v50 + 7) = 0x80000001DB0C5E30;
                  *(v50 + 8) = 0x2874707972636E65;
                  *(v50 + 9) = 0xEF293A5F3A5F3A5FLL;
                  *(v50 + 10) = 323;
                  v126 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E478, &qword_1DB0A09A0);
                  *&v125 = v43;
                  sub_1DAF40D20(&v125, v124);
                  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                  sub_1DAF3B11C(v124, 0x636F766E49504944, 0xEE00736E6F697461, isUniquelyReferenced_nonNull_native);
                  v52 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
                  v53 = sub_1DB09D6B4();
                  goto LABEL_81;
                }

                v36 = 0;
                if (v19 != 2)
                {
                  goto LABEL_43;
                }

                v38 = *(v14 + 16);
                v37 = *(v14 + 24);
                v34 = __OFSUB__(v37, v38);
                v36 = v37 - v38;
                if (!v34)
                {
                  goto LABEL_43;
                }

                __break(1u);
LABEL_37:
                if (v19 != 2)
                {
LABEL_62:
                  *&v125 = 0;
                  *(&v125 + 1) = 0xE000000000000000;
                  sub_1DAF40674(v14, v13);
                  sub_1DAF40674(v121, v18);
                  v18 = &v125;
                  sub_1DB09DE44();
                  MEMORY[0x1E127FE90](0xD000000000000032, 0x80000001DB0C5F10);
                  if (v19 > 1)
                  {
                    v68 = 0;
                    if (v19 != 2 || (v70 = *(v121 + 16), v69 = *(v121 + 24), v34 = __OFSUB__(v69, v70), v68 = v69 - v70, !v34))
                    {
LABEL_71:
                      *&v124[0] = v68;
                      v71 = sub_1DB09E1D4();
                      MEMORY[0x1E127FE90](v71);

                      a1 = *(&v125 + 1);
                      v19 = v125;
                      v13 = "CoreODIEssentials/DIPECIESSession.swift";
                      if (qword_1EE300B90 == -1)
                      {
                        goto LABEL_72;
                      }

                      goto LABEL_113;
                    }

                    __break(1u);
                  }

                  else if (!v19)
                  {
                    v68 = BYTE6(v120);
                    goto LABEL_71;
                  }

                  LODWORD(v68) = HIDWORD(v121) - v121;
                  if (!__OFSUB__(HIDWORD(v121), v121))
                  {
                    v68 = v68;
                    goto LABEL_71;
                  }

LABEL_116:
                  __break(1u);
LABEL_117:
                  swift_once();
LABEL_97:
                  v98 = v13 - 32;
                  v99 = v18 - 32;
                  v100 = MEMORY[0x1E69E7CC0];
                  v101 = sub_1DAF3E128(MEMORY[0x1E69E7CC0]);
                  if (*(v101 + 16))
                  {
                    v102 = sub_1DAF35210(0x636F766E49504944, 0xEE00736E6F697461);
                    if (v103)
                    {
                      sub_1DAF409DC(*(v101 + 56) + 32 * v102, &v125);
                      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E478, &qword_1DB0A09A0);
                      if (swift_dynamicCast())
                      {
                        v100 = *&v124[0];
                      }
                    }
                  }

                  v104 = v98 | 0x8000000000000000;
                  v105 = v99 | 0x8000000000000000;
                  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                  {
                    v100 = sub_1DAF72FF4(0, *(v100 + 2) + 1, 1, v100);
                  }

                  v107 = *(v100 + 2);
                  v106 = *(v100 + 3);
                  if (v107 >= v106 >> 1)
                  {
                    v100 = sub_1DAF72FF4((v106 > 1), v107 + 1, 1, v100);
                  }

                  *(v100 + 2) = v107 + 1;
                  v108 = &v100[56 * v107];
                  *(v108 + 4) = 0xD000000000000032;
                  *(v108 + 5) = v104;
                  *(v108 + 6) = 0xD000000000000027;
                  *(v108 + 7) = v105;
                  *(v108 + 8) = 0x2874707972636E65;
                  *(v108 + 9) = 0xEF293A5F3A5F3A5FLL;
                  *(v108 + 10) = 346;
                  v126 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E478, &qword_1DB0A09A0);
                  *&v125 = v100;
                  sub_1DAF40D20(&v125, v124);
                  v109 = swift_isUniquelyReferenced_nonNull_native();
                  sub_1DAF3B11C(v124, 0x636F766E49504944, 0xEE00736E6F697461, v109);
                  v110 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
                  v111 = sub_1DB09D6B4();
                  v112 = sub_1DB09D604();
                  [v110 initWithDomain:v111 code:-3102 userInfo:v112];

                  swift_willThrow();
                  sub_1DAF40780(v116, v115);
                  v85 = a3;
                  v86 = a2;
                  goto LABEL_106;
                }

                v40 = *(v121 + 16);
                v39 = *(v121 + 24);
                v34 = __OFSUB__(v39, v40);
                v35 = v39 - v40;
                if (!v34)
                {
LABEL_56:
                  if (v35 == 65)
                  {
                    error = 0;
                    sub_1DAF40674(v14, v13);
                    sub_1DAF40674(v121, v18);
                    v54 = SecKeyCopyExternalRepresentation(a3, &error);
                    if (v54)
                    {
                      v55 = v54;
                      v116 = sub_1DB09D034();
                      v57 = v56;

                      v122 = xmmword_1DB0A0510;
                      sub_1DB09D054();
                      v115 = v57;
                      sub_1DB09D054();
                      sub_1DB09D054();
                      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0EB60, &qword_1DB0A9E50);
                      inited = swift_initStackObject();
                      v59 = MEMORY[0x1E697B230];
                      *(inited + 16) = xmmword_1DB0A04E0;
                      v60 = *v59;
                      *(inited + 32) = v60;
                      *(inited + 64) = MEMORY[0x1E6969080];
                      *(inited + 40) = xmmword_1DB0A0510;
                      v61 = v60;
                      sub_1DAF40674(0, 0xC000000000000000);
                      sub_1DAF3E794(inited);
                      swift_setDeallocating();
                      sub_1DAF40AEC(inited + 32, &unk_1ECC0E288, &qword_1DB0A0218);
                      v62 = sub_1DB09D004();
                      sub_1DAF4062C(0, &qword_1EE3018B0, 0x1E696AEC0);
                      sub_1DAFB79E8();
                      v63 = sub_1DB09D604();

                      EncryptedDataWithParameters = DIPSecKeyCreateEncryptedDataWithParameters();

                      if (!EncryptedDataWithParameters)
                      {
                        LOWORD(v125) = 121;
                        sub_1DAFCF218(error, 0xD00000000000003DLL, 0x80000001DB0C5FA0, &v125);
                        swift_willThrow();
                        v86 = v115;
                        v85 = v116;
LABEL_106:
                        sub_1DAF40780(v85, v86);
                        sub_1DAF40780(v121, v120);
                        sub_1DAF40780(v14, v118);
                        v84 = *(&v122 + 1);
                        v83 = v122;
                        goto LABEL_82;
                      }

                      a3 = sub_1DB09D034();
                      a2 = v65;

                      v66 = a2 >> 62;
                      if ((a2 >> 62) > 1)
                      {
                        if (v66 != 2)
                        {
                          goto LABEL_96;
                        }

                        v88 = *(a3 + 2);
                        v87 = *(a3 + 3);
                        v34 = __OFSUB__(v87, v88);
                        v67 = v87 - v88;
                        if (!v34)
                        {
LABEL_91:
                          if (v67 >= 66)
                          {
                            v89 = sub_1DB09D064();
                            v90 = *(v5 + 16);
                            v91 = *(v5 + 24);
                            *(v5 + 16) = v89;
                            *(v5 + 24) = v92;
                            sub_1DAF4AC40(v90, v91);
                            if (v66 == 2)
                            {
                              v114 = *(a3 + 2);
                              v113 = *(a3 + 3);
                              v97 = v113 - v114;
                              v93 = v14;
                              v94 = v115;
                              v95 = v116;
                              if (__OFSUB__(v113, v114))
                              {
LABEL_120:
                                __break(1u);
LABEL_121:
                                __break(1u);
                                return;
                              }

                              v96 = v118;
                            }

                            else
                            {
                              v93 = v14;
                              v94 = v115;
                              v95 = v116;
                              if (v66 == 1)
                              {
                                v96 = v118;
                                if (!__OFSUB__(HIDWORD(a3), a3))
                                {
                                  v97 = HIDWORD(a3) - a3;
                                  goto LABEL_110;
                                }

                                goto LABEL_119;
                              }

                              v96 = v118;
                              v97 = BYTE6(a2);
                            }

LABEL_110:
                            if (v97 >= 65)
                            {
                              sub_1DB09D064();
                              sub_1DAF40780(v95, v94);
                              sub_1DAF40780(a3, a2);
                              sub_1DAF40780(v121, v120);
                              sub_1DAF40780(v93, v96);
                              sub_1DAF40780(0, 0xC000000000000000);
                              return;
                            }

                            goto LABEL_121;
                          }

LABEL_96:
                          v13 = "Failed to perform encryption - output is too short";
                          v18 = "CoreODIEssentials/DIPECIESSession.swift";
                          if (qword_1EE300B90 == -1)
                          {
                            goto LABEL_97;
                          }

                          goto LABEL_117;
                        }

                        __break(1u);
                      }

                      else if (!v66)
                      {
                        v67 = BYTE6(a2);
                        goto LABEL_91;
                      }

                      LODWORD(v67) = HIDWORD(a3) - a3;
                      if (__OFSUB__(HIDWORD(a3), a3))
                      {
                        __break(1u);
LABEL_119:
                        __break(1u);
                        goto LABEL_120;
                      }

                      v67 = v67;
                      goto LABEL_91;
                    }

                    LOWORD(v125) = 198;
                    sub_1DAFCF218(error, 0xD000000000000049, 0x80000001DB0C5F50, &v125);
                    swift_willThrow();
                    sub_1DAF40780(v14, v13);
                    v83 = v121;
                    v84 = v18;
LABEL_82:
                    sub_1DAF40780(v83, v84);
                    return;
                  }

                  goto LABEL_62;
                }

                __break(1u);
                goto LABEL_41;
              }

              __break(1u);
            }

            else if (!v19)
            {
              v20 = BYTE6(v13);
              goto LABEL_26;
            }

            LODWORD(v20) = HIDWORD(v14) - v14;
            if (__OFSUB__(HIDWORD(v14), v14))
            {
              __break(1u);
LABEL_113:
              swift_once();
LABEL_72:
              v72 = MEMORY[0x1E69E7CC0];
              v73 = sub_1DAF3E128(MEMORY[0x1E69E7CC0]);
              v74 = *(v73 + 16);

              if (v74)
              {
                v75 = sub_1DAF35210(0x636F766E49504944, 0xEE00736E6F697461);
                if (v76)
                {
                  sub_1DAF409DC(*(v73 + 56) + 32 * v75, &v125);
                  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E478, &qword_1DB0A09A0);
                  if (swift_dynamicCast())
                  {
                    v72 = *&v124[0];
                  }
                }
              }

              v77 = (v13 - 32) | 0x8000000000000000;
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v72 = sub_1DAF72FF4(0, *(v72 + 2) + 1, 1, v72);
              }

              v79 = *(v72 + 2);
              v78 = *(v72 + 3);
              if (v79 >= v78 >> 1)
              {
                v72 = sub_1DAF72FF4((v78 > 1), v79 + 1, 1, v72);
              }

              *(v72 + 2) = v79 + 1;
              v80 = &v72[56 * v79];
              *(v80 + 4) = v19;
              *(v80 + 5) = a1;
              *(v80 + 6) = 0xD000000000000027;
              *(v80 + 7) = v77;
              *(v80 + 8) = 0x2874707972636E65;
              *(v80 + 9) = 0xEF293A5F3A5F3A5FLL;
              *(v80 + 10) = 326;
              v126 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E478, &qword_1DB0A09A0);
              *&v125 = v72;
              sub_1DAF40D20(&v125, v124);
              v81 = swift_isUniquelyReferenced_nonNull_native();
              sub_1DAF3B11C(v124, 0x636F766E49504944, 0xEE00736E6F697461, v81);
              v52 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
              v53 = sub_1DB09D6B4();
LABEL_81:
              v82 = sub_1DB09D604();
              [v52 initWithDomain:v53 code:-1202 userInfo:v82];

              swift_willThrow();
              sub_1DAF40780(v121, v120);
              v84 = v118;
              v83 = v119;
              goto LABEL_82;
            }

            v20 = v20;
            goto LABEL_26;
          }
        }
      }
    }
  }

  if (qword_1EE300B90 != -1)
  {
    swift_once();
  }

  v21 = MEMORY[0x1E69E7CC0];
  v22 = sub_1DAF3E128(MEMORY[0x1E69E7CC0]);
  if (*(v22 + 16))
  {
    v23 = sub_1DAF35210(0x636F766E49504944, 0xEE00736E6F697461);
    if (v24)
    {
      sub_1DAF409DC(*(v22 + 56) + 32 * v23, &v125);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E478, &qword_1DB0A09A0);
      if (swift_dynamicCast())
      {
        v21 = *&v124[0];
      }
    }
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v21 = sub_1DAF72FF4(0, *(v21 + 2) + 1, 1, v21);
  }

  v26 = *(v21 + 2);
  v25 = *(v21 + 3);
  if (v26 >= v25 >> 1)
  {
    v21 = sub_1DAF72FF4((v25 > 1), v26 + 1, 1, v21);
  }

  *(v21 + 2) = v26 + 1;
  v27 = &v21[56 * v26];
  *(v27 + 4) = 0xD000000000000053;
  *(v27 + 5) = 0x80000001DB0C5E80;
  *(v27 + 6) = 0xD000000000000027;
  *(v27 + 7) = 0x80000001DB0C5E30;
  *(v27 + 8) = 0x2874707972636E65;
  *(v27 + 9) = 0xEF293A5F3A5F3A5FLL;
  *(v27 + 10) = 320;
  v126 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E478, &qword_1DB0A09A0);
  *&v125 = v21;
  sub_1DAF40D20(&v125, v124);
  v28 = swift_isUniquelyReferenced_nonNull_native();
  sub_1DAF3B11C(v124, 0x636F766E49504944, 0xEE00736E6F697461, v28);
  v29 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
  v30 = sub_1DB09D6B4();
  v31 = sub_1DB09D604();
  [v29 initWithDomain:v30 code:-1202 userInfo:v31];

  swift_willThrow();
}

uint64_t sub_1DAFB7254()
{
  sub_1DAF4AC40(*(v0 + 16), *(v0 + 24));

  return swift_deallocClassInstance();
}

uint64_t sub_1DAFB72E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t (*a7)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  result = a7(a1, a2, a3, a4, a5, a6);
  if (v7)
  {
    return v9;
  }

  return result;
}

uint64_t sub_1DAFB7320()
{
  result = sub_1DAFB7728();
  if (!v0)
  {
    v3 = result;
    sub_1DAF40674(result, v2);
    return v3;
  }

  return result;
}

void sub_1DAFB736C(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, void *a5@<X4>, uint64_t *a6@<X8>)
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v28[2] = *MEMORY[0x1E69E9840];
  v10 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v10)
    {
      v28[0] = a1;
      LOWORD(v28[1]) = a2;
      BYTE2(v28[1]) = BYTE2(a2);
      BYTE3(v28[1]) = BYTE3(a2);
      BYTE4(v28[1]) = BYTE4(a2);
      BYTE5(v28[1]) = BYTE5(a2);
      v11 = v28 + BYTE6(a2);
      v12 = v28;
      goto LABEL_24;
    }

    v22 = a1;
    v23 = (a1 >> 32) - a1;
    if (a1 >> 32 >= a1)
    {
      v13 = a6;
      v27 = v6;
      v16 = sub_1DB09CD44();
      if (!v16)
      {
        goto LABEL_16;
      }

      v24 = sub_1DB09CD74();
      if (!__OFSUB__(v22, v24))
      {
        v16 += v22 - v24;
LABEL_16:
        v25 = sub_1DB09CD64();
        if (v25 >= v23)
        {
          v21 = v23;
        }

        else
        {
          v21 = v25;
        }

        goto LABEL_19;
      }

LABEL_31:
      __break(1u);
    }

    __break(1u);
    goto LABEL_29;
  }

  if (v10 != 2)
  {
    memset(v28, 0, 14);
    v12 = v28;
    v11 = v28;
    goto LABEL_24;
  }

  v13 = a6;
  v27 = v6;
  v15 = *(a1 + 16);
  v14 = *(a1 + 24);
  v16 = sub_1DB09CD44();
  if (v16)
  {
    v17 = sub_1DB09CD74();
    if (__OFSUB__(v15, v17))
    {
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    v16 += v15 - v17;
  }

  v18 = __OFSUB__(v14, v15);
  v19 = v14 - v15;
  if (v18)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v20 = sub_1DB09CD64();
  if (v20 >= v19)
  {
    v21 = v19;
  }

  else
  {
    v21 = v20;
  }

LABEL_19:
  v26 = (v21 + v16);
  if (v16)
  {
    v11 = v26;
  }

  else
  {
    v11 = 0;
  }

  a6 = v13;
  v12 = v16;
  a3 = v9;
  a4 = v8;
  a5 = v7;
  v6 = v27;
LABEL_24:
  sub_1DAFB4F70(v12, v11, a3, a4, a5, a6);
  if (v6)
  {
  }

  else
  {
  }
}

unint64_t sub_1DAFB75A0(unint64_t result)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (result <= 0xFF)
  {
    return 0;
  }

  __break(1u);
  return result;
}

uint64_t sub_1DAFB75C0(_BYTE *__src, _BYTE *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = a2 - __src;
  if (__src)
  {
    v3 = a2 - __src;
  }

  else
  {
    v3 = 0;
  }

  if ((v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_11:
    __break(1u);
  }

  if (v3 > 0xFF)
  {
    goto LABEL_11;
  }

  result = 0;
  __dst = 0;
  v9 = v3;
  v8 = 0;
  v7 = 0;
  if (__src)
  {
    if (a2 != __src)
    {
      memcpy(&__dst, __src, v2);
      return __dst;
    }
  }

  return result;
}

unint64_t sub_1DAFB7678(_BYTE *a1, unint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 <= 14)
  {
    return sub_1DAFB75C0(a1, &a1[a2]);
  }

  sub_1DB09CD84();
  swift_allocObject();
  sub_1DB09CD34();
  if (a2 < 0x7FFFFFFF)
  {
    return a2 << 32;
  }

  sub_1DB09CFB4();
  result = swift_allocObject();
  *(result + 16) = 0;
  *(result + 24) = a2;
  return result;
}

uint64_t sub_1DAFB7728()
{
  if (*(v0 + 24) >> 60 != 15)
  {
    return *(v0 + 16);
  }

  if (qword_1EE300B90 != -1)
  {
    swift_once();
  }

  v1 = MEMORY[0x1E69E7CC0];
  v2 = sub_1DAF3E128(MEMORY[0x1E69E7CC0]);
  if (*(v2 + 16))
  {
    v3 = sub_1DAF35210(0x636F766E49504944, 0xEE00736E6F697461);
    if (v4)
    {
      sub_1DAF409DC(*(v2 + 56) + 32 * v3, &v14);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E478, &qword_1DB0A09A0);
      if (swift_dynamicCast())
      {
        v1 = *&v13[0];
      }
    }
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v1 = sub_1DAF72FF4(0, *(v1 + 2) + 1, 1, v1);
  }

  v6 = *(v1 + 2);
  v5 = *(v1 + 3);
  if (v6 >= v5 >> 1)
  {
    v1 = sub_1DAF72FF4((v5 > 1), v6 + 1, 1, v1);
  }

  *(v1 + 2) = v6 + 1;
  v7 = &v1[56 * v6];
  *(v7 + 4) = 0xD000000000000020;
  *(v7 + 5) = 0x80000001DB0C5E00;
  *(v7 + 6) = 0xD000000000000027;
  *(v7 + 7) = 0x80000001DB0C5E30;
  *(v7 + 8) = 0xD000000000000013;
  *(v7 + 9) = 0x80000001DB0C5E60;
  *(v7 + 10) = 391;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E478, &qword_1DB0A09A0);
  *&v14 = v1;
  sub_1DAF40D20(&v14, v13);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v16 = v2;
  sub_1DAF3B11C(v13, 0x636F766E49504944, 0xEE00736E6F697461, isUniquelyReferenced_nonNull_native);
  v9 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
  v10 = sub_1DB09D6B4();
  v11 = sub_1DB09D604();
  [v9 initWithDomain:v10 code:-1201 userInfo:v11];

  return swift_willThrow();
}

unint64_t sub_1DAFB79E8()
{
  result = qword_1EE3018A8;
  if (!qword_1EE3018A8)
  {
    sub_1DAF4062C(255, &qword_1EE3018B0, 0x1E696AEC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE3018A8);
  }

  return result;
}

unint64_t sub_1DAFB7A64()
{
  result = qword_1EE304358;
  if (!qword_1EE304358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE304358);
  }

  return result;
}

uint64_t type metadata accessor for ODNAssessmentResult(uint64_t a1)
{
  result = qword_1EE3011F0;
  if (!qword_1EE3011F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1DAFB7B30(uint64_t a1)
{
  sub_1DAFB7C64(319, qword_1EE301738, &type metadata for ODIClientGUID);
  if (v1 <= 0x3F)
  {
    sub_1DAFB7C64(319, &qword_1EE300A40, MEMORY[0x1E69E6158]);
    if (v2 <= 0x3F)
    {
      sub_1DAFB7C64(319, &qword_1EE3017E8, &type metadata for ODNErrorInfo);
      if (v3 <= 0x3F)
      {
        sub_1DAFB7C64(319, &qword_1EE301350, &type metadata for ODIClientGUIDSeeds);
        if (v4 <= 0x3F)
        {
          sub_1DAFB7CB0();
          if (v5 <= 0x3F)
          {
            sub_1DB09DF64();
            if (v6 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_1DAFB7C64(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = sub_1DB09DC64();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_1DAFB7CB0()
{
  result = qword_1ECC0EB78;
  if (!qword_1ECC0EB78)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1ECC0EB78);
  }

  return result;
}

uint64_t ODIAssessmentAdapter.adapt(withError:)@<X0>(unsigned __int8 *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E6A8, &qword_1DB0A3CB0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v21[-v6 - 8];
  v8 = qword_1DB0AADB0[*a1 ^ 0x80];
  v10 = *v2;
  v9 = v2[1];
  sub_1DAFB7F78(v22);
  *&v24[37] = v22[11];
  *&v24[39] = v22[12];
  *&v24[33] = v22[9];
  *&v24[35] = v22[10];
  *&v24[27] = v22[6];
  *&v24[29] = v22[7];
  *&v24[31] = v22[8];
  *&v24[19] = v22[2];
  *&v24[21] = v22[3];
  *&v24[23] = v22[4];
  *&v24[25] = v22[5];
  *&v24[15] = v22[0];
  LOBYTE(v24[41]) = v23;
  *&v24[17] = v22[1];
  memset(v24, 0, 80);
  *&v24[11] = xmmword_1DB0A7A90;
  v24[10] = v8;
  v24[13] = v10;
  v24[14] = v9;
  v11 = v2[5];
  v12 = v2[6];
  __swift_project_boxed_opaque_existential_1(v2 + 2, v11);
  memcpy(v21, v24, 0x149uLL);
  v13 = *(v12 + 8);

  v14 = v13(v21, v11, v12);
  v16 = v15;
  sub_1DB09DF34();
  sub_1DAFB7FA0(v24);
  v17 = sub_1DB09DF64();
  (*(*(v17 - 8) + 56))(v7, 0, 1, v17);
  a2[1] = v14;
  a2[2] = v16;
  *a2 = v8;
  v18 = type metadata accessor for ODIErrorAssessment(0);
  sub_1DAF6FBA0(v7, a2 + *(v18 + 24));
  type metadata accessor for ODIAssessmentResult(0);
  return swift_storeEnumTagMultiPayload();
}

double sub_1DAFB7F78(uint64_t a1)
{
  *(a1 + 208) = 0;
  result = 0.0;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  return result;
}

uint64_t sub_1DAFB7FF4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v66 = a2;
  v72 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E6A8, &qword_1DB0A3CB0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v71 = &v59 - v6;
  v7 = *(a1 + 376);
  v75 = *(a1 + 360);
  v76 = v7;
  v8 = *(a1 + 408);
  v77 = *(a1 + 392);
  v78 = v8;
  v9 = *(a1 + 496);
  v10 = *(a1 + 512);
  v11 = *(a1 + 560);
  v12 = *(a1 + 528);
  v80 = *(a1 + 544);
  v81 = v11;
  v13 = *(a1 + 512);
  v14 = *(a1 + 528);
  v15 = *(a1 + 496);
  v79[0] = v9;
  v79[1] = v13;
  v79[2] = v12;
  v88 = *(a1 + 560);
  v16 = *(a1 + 288);
  v17 = *(a1 + 296);
  v19 = *(a1 + 320);
  v18 = *(a1 + 328);
  v20 = *(a1 + 336);
  v21 = *(a1 + 344);
  v61 = *(a1 + 352);
  v62 = v16;
  v23 = *(a1 + 464);
  v22 = *(a1 + 472);
  v25 = *(a1 + 480);
  v24 = *(a1 + 488);
  v26 = *(a1 + 576);
  v63 = *(a1 + 584);
  v64 = v22;
  v27 = *(a1 + 592);
  v65 = *(a1 + 600);
  v28 = *(a1 + 624);
  v29 = *(a1 + 640);
  v30 = *(a1 + 648);
  v67 = v24;
  v68 = v30;
  v31 = *(a1 + 656);
  v32 = *(a1 + 664);
  v33 = *(a1 + 672);
  v86 = v14;
  v87 = v80;
  v84 = v15;
  v85 = v10;
  LOBYTE(v74[0]) = v28;
  *&v82 = v23;
  *(&v82 + 1) = v22;
  *&v83 = v25;
  *(&v83 + 1) = v24;
  *&v89 = v26;
  *(&v89 + 1) = v63;
  *&v90 = v27;
  *(&v90 + 1) = v65;
  v69 = *(a1 + 608);
  v91 = v69;
  LOBYTE(v92) = v28;
  *(&v92 + 1) = a2;
  *&v93 = v29;
  *(&v93 + 1) = v30;
  LOBYTE(v94) = v31;
  *(&v94 + 1) = v32;
  v95 = v33;
  nullsub_3();
  v96[1] = v75;
  v96[2] = v76;
  v96[3] = v77;
  v96[4] = v78;
  *(&v96[18] + 8) = v93;
  *(&v96[19] + 8) = v94;
  *(&v96[16] + 8) = v91;
  *(&v96[17] + 8) = v92;
  *(&v96[13] + 8) = v88;
  *(&v96[14] + 8) = v89;
  *(&v96[15] + 8) = v90;
  *(&v96[9] + 8) = v84;
  *(&v96[10] + 8) = v85;
  *(&v96[11] + 8) = v86;
  *(&v96[12] + 8) = v87;
  *(&v96[7] + 8) = v82;
  BYTE8(v96[20]) = v95;
  *(&v96[8] + 8) = v83;
  v34 = v61;
  *&v96[0] = v62;
  *(&v96[0] + 1) = v17;
  *&v96[5] = v19;
  *(&v96[5] + 1) = v18;
  *&v96[6] = v20;
  *(&v96[6] + 1) = v21;
  *&v96[7] = v61;
  v35 = v70[6];
  v62 = v70[5];
  v70 = __swift_project_boxed_opaque_existential_1(v70 + 2, v62);
  memcpy(v74, v96, 0x149uLL);
  v60 = *(v35 + 8);

  sub_1DAF40A84(&v75, v73, &qword_1ECC0E7A8, &unk_1DB0ABEB0);
  v36 = v20;
  v37 = v34;
  sub_1DAFB85E4(v19, v18, v36, v21, v34);

  sub_1DAF40A84(v79, v73, &qword_1ECC0E8A0, &qword_1DB0A6650);

  v38 = v60(v74, v62, v35);
  v39 = v38;
  v41 = v40;
  v42 = *(a1 + 280);
  if (v42)
  {
    v43 = *(a1 + 272);

    sub_1DAFB7FA0(v96);
    v44 = *(type metadata accessor for ODNAssessmentResult(0) + 52);
    v45 = sub_1DB09DF64();
    v46 = *(v45 - 8);
    v47 = a1 + v44;
    v48 = v71;
    (*(v46 + 16))(v71, v47, v45);
    (*(v46 + 56))(v48, 0, 1, v45);
    v49 = v72;
    *v72 = v43;
    v49[1] = v42;
    v49[2] = v39;
    v49[3] = v41;
    v50 = type metadata accessor for ODIAssessment(0);
  }

  else
  {
    v70 = v38;
    v51 = v19;
    v53 = v71;
    v52 = v72;
    if (v37 == 1)
    {
      v74[0] = 45;
      v74[1] = 0xE100000000000000;
      v73[0] = 14;
      CoreODILogger.fault(_:category:)(0xD000000000000033, 0x80000001DB0C6270, v73);
      sub_1DAFB7FA0(v96);
      v51 = -1;
    }

    else
    {
      sub_1DAFB7FA0(v96);
    }

    v54 = *(type metadata accessor for ODNAssessmentResult(0) + 52);
    v55 = sub_1DB09DF64();
    v56 = *(v55 - 8);
    v57 = a1 + v54;
    v48 = v53;
    (*(v56 + 16))(v53, v57, v55);
    (*(v56 + 56))(v53, 0, 1, v55);
    v49 = v52;
    v52[1] = v70;
    v52[2] = v41;
    *v52 = v51;
    v50 = type metadata accessor for ODIErrorAssessment(0);
  }

  sub_1DAF6FBA0(v48, v49 + *(v50 + 24));
  type metadata accessor for ODIAssessmentResult(0);
  return swift_storeEnumTagMultiPayload();
}

uint64_t ODIAssessmentAdapter.init(providerID:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  if (sub_1DAF92FC8(0x6C7070612E6D6F63, 0xED0000706D612E65, a1, a2))
  {
    v6 = &type metadata for AMPAssessmentPayloadAdapter;
    v7 = &off_1F56CFE08;
  }

  else
  {
    v6 = &type metadata for Base64AssessmentPayloadAdapter;
    v7 = &off_1F56CCDB0;
  }

  a3[5] = v6;
  a3[6] = v7;
  a3[2] = 45;
  a3[3] = 0xE100000000000000;
  result = MEMORY[0x1E127FE90](0x5F762E6C6C75662ELL, 0xED0000312E302E30);
  *a3 = a1;
  a3[1] = a2;
  return result;
}

uint64_t sub_1DAFB85E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a5 != 1)
  {
  }

  return result;
}

unint64_t sub_1DAFB8614(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0EB80, &unk_1DB0B26F0);
  if (a1 < 0)
  {
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1DB0A0500;
    *(inited + 32) = 0xD000000000000012;
    *(inited + 40) = 0x80000001DB0C62E0;
    *(inited + 48) = sub_1DB09DAE4();
    *(inited + 56) = 0x646F43726F727265;
    *(inited + 64) = 0xE900000000000065;
    *(inited + 72) = sub_1DB09DB14();
    v4 = sub_1DAF3F518(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0EB88, &unk_1DB0AB610);
    swift_arrayDestroy();
  }

  else
  {
    v3 = swift_initStackObject();
    *(v3 + 16) = xmmword_1DB0A04E0;
    *(v3 + 32) = 0xD000000000000012;
    *(v3 + 40) = 0x80000001DB0C62E0;
    *(v3 + 48) = sub_1DB09DAE4();
    v4 = sub_1DAF3F518(v3);
    swift_setDeallocating();
    sub_1DAFB8900(v3 + 32);
  }

  return v4;
}

void _s17CoreODIEssentials19ODIAnalyticsManagerC5track5eventyAA0C5EventO_tF_0(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = sub_1DB09D6B4();

  v4 = swift_allocObject();
  *(v4 + 16) = v1;
  *(v4 + 24) = v2;
  v6[4] = sub_1DAFB8968;
  v6[5] = v4;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 1107296256;
  v6[2] = sub_1DAFD2A28;
  v6[3] = &block_descriptor_7;
  v5 = _Block_copy(v6);

  AnalyticsSendEventLazy();
  _Block_release(v5);
}

uint64_t sub_1DAFB8900(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0EB88, &unk_1DB0AB610);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t block_copy_helper_7(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t PGAStore.init(providerID:primaryDSID:conversationID:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v11 = *a3;
  v12 = type metadata accessor for ODNAssessmentsFactory();
  result = swift_allocObject();
  *(a6 + 64) = v12;
  *(a6 + 72) = &off_1F56CC998;
  *(a6 + 40) = result;
  *(a6 + 104) = &type metadata for FeatureStore;
  *(a6 + 112) = &off_1F56CE240;
  *a6 = a1;
  *(a6 + 8) = a2;
  *(a6 + 16) = v11;
  *(a6 + 24) = a4;
  *(a6 + 32) = a5;
  return result;
}

uint64_t PGAStore.fetchFallback()(uint64_t a1)
{
  v2[168] = v1;
  v2[167] = a1;
  type metadata accessor for ODNAssessmentResult(0);
  v2[169] = swift_task_alloc();
  type metadata accessor for PregeneratedAssessment(0);
  v2[170] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DAFB8ADC, 0, 0);
}

uint64_t sub_1DAFB8ADC()
{
  v1 = v0[168];
  v2 = *v1;
  v0[171] = *v1;
  v3 = v1[1];
  v0[172] = v3;
  v7 = v2;
  v8 = v3;

  MEMORY[0x1E127FE90](0x5F762E6C6C75662ELL, 0xED0000312E302E30);
  v0[173] = v7;
  v0[174] = v8;
  v4 = qword_1EE304008;

  if (v4 != -1)
  {
    swift_once();
  }

  v5 = swift_task_alloc();
  v0[175] = v5;
  *v5 = v0;
  v5[1] = sub_1DAFB8BFC;

  return sub_1DAFEFC24((v0 + 132));
}

uint64_t sub_1DAFB8BFC()
{

  return MEMORY[0x1EEE6DFA0](sub_1DAFB8CF8, 0, 0);
}

uint64_t sub_1DAFB8CF8()
{
  v17 = v0;
  v1 = *(v0 + 1232);
  *(v0 + 992) = *(v0 + 1216);
  *(v0 + 1008) = v1;
  *(v0 + 1024) = *(v0 + 1248);
  *(v0 + 1040) = *(v0 + 1264);
  v2 = *(v0 + 1168);
  *(v0 + 928) = *(v0 + 1152);
  *(v0 + 944) = v2;
  v3 = *(v0 + 1200);
  *(v0 + 960) = *(v0 + 1184);
  *(v0 + 976) = v3;
  v4 = *(v0 + 1104);
  *(v0 + 864) = *(v0 + 1088);
  *(v0 + 880) = v4;
  v5 = *(v0 + 1136);
  *(v0 + 896) = *(v0 + 1120);
  *(v0 + 912) = v5;
  v6 = *(v0 + 1072);
  *(v0 + 832) = *(v0 + 1056);
  *(v0 + 848) = v6;
  v7 = *(v0 + 1048);
  if (v7)
  {
  }

  else
  {
    v7 = sub_1DAF3EE1C(MEMORY[0x1E69E7CC0]);
  }

  v8 = *(v0 + 1392);
  v9 = *(v0 + 1384);
  sub_1DAF791EC(v0 + 832);
  v16[0] = 2;
  LOBYTE(v9) = sub_1DAFFF15C(v16, v9, v8, v7);

  if (v9)
  {
    v10 = swift_task_alloc();
    *(v0 + 1408) = v10;
    *v10 = v0;
    v10[1] = sub_1DAFB8ED8;
    v11 = *(v0 + 1392);
    v12 = *(v0 + 1384);
    v13 = *(v0 + 1360);

    return sub_1DAFB95D8(v13, v12, v11);
  }

  else
  {

    sub_1DAFBA708();
    swift_allocError();
    swift_willThrow();

    v15 = *(v0 + 8);

    return v15();
  }
}

uint64_t sub_1DAFB8ED8()
{
  v2 = *v1;
  v2[177] = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1DAFB94DC, 0, 0);
  }

  else
  {

    v3 = swift_task_alloc();
    v2[178] = v3;
    *v3 = v2;
    v3[1] = sub_1DAFB9060;
    v4 = v2[170];

    return sub_1DAFB993C((v2 + 2), v4);
  }
}

uint64_t sub_1DAFB9060()
{
  *(*v1 + 1432) = v0;

  if (v0)
  {
    v2 = sub_1DAFB954C;
  }

  else
  {
    v2 = sub_1DAFB9174;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1DAFB9174()
{
  memcpy(v0 + 18, v0 + 1, 0x110uLL);
  memcpy(v0 + 35, v0 + 1, 0x110uLL);
  v1 = swift_task_alloc();
  *(v0 + 180) = v1;
  *v1 = v0;
  v1[1] = sub_1DAFB9234;
  v2 = *(v0 + 170);
  v3 = *(v0 + 169);

  return sub_1DAFB9CB8(v3, v2, v0 + 35);
}

uint64_t sub_1DAFB9234()
{
  v1 = *v0;

  sub_1DAF8C380(v1 + 288);

  return MEMORY[0x1EEE6DFA0](sub_1DAFB9338, 0, 0);
}

uint64_t sub_1DAFB9338()
{
  v1 = v0[172];
  v2 = v0[171];

  v3 = sub_1DAF92FC8(0x6C7070612E6D6F63, 0xED0000706D612E65, v2, v1);
  v4 = v0[172];
  v5 = v0[171];
  if (v3)
  {
    v0[165] = &type metadata for AMPAssessmentPayloadAdapter;
    v6 = &off_1F56CFE08;
  }

  else
  {
    v0[165] = &type metadata for Base64AssessmentPayloadAdapter;
    v6 = &off_1F56CCDB0;
  }

  v0[166] = v6;
  v0[162] = 45;
  v0[163] = 0xE100000000000000;
  v12 = v5;
  v13 = v4;
  MEMORY[0x1E127FE90](0x5F762E6C6C75662ELL, 0xED0000312E302E30);
  v7 = v0[170];
  v8 = v0[169];
  v9 = v0[167];
  v0[160] = v12;
  v0[161] = v13;
  sub_1DAFB7FF4(v8, MEMORY[0x1E69E7CC0], v9);
  sub_1DAF949F0((v0 + 160));
  sub_1DAFBA75C(v8, type metadata accessor for ODNAssessmentResult);
  sub_1DAFBA75C(v7, type metadata accessor for PregeneratedAssessment);

  v10 = v0[1];

  return v10();
}

uint64_t sub_1DAFB94DC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1DAFB954C()
{
  sub_1DAFBA75C(*(v0 + 1360), type metadata accessor for PregeneratedAssessment);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1DAFB95D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[9] = a2;
  v3[10] = a3;
  v3[8] = a1;
  type metadata accessor for PregeneratedAssessment(0);
  v3[11] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DAFB966C, 0, 0);
}

uint64_t sub_1DAFB966C()
{
  v0[5] = &type metadata for AssessmentPregenerator;
  v0[6] = &off_1F56C5468;
  __swift_project_boxed_opaque_existential_1(v0 + 2, &type metadata for AssessmentPregenerator);
  ODIBindingsDict.init(dictionaryLiteral:)(MEMORY[0x1E69E7CC0], v0 + 7);
  v1 = swift_task_alloc();
  v0[12] = v1;
  *v1 = v0;
  v1[1] = sub_1DAFB9734;
  v3 = v0[10];
  v2 = v0[11];
  v4 = v0[9];

  return sub_1DAFF5D44(v2, v0 + 7, v4, v3);
}

uint64_t sub_1DAFB9734()
{
  *(*v1 + 104) = v0;

  if (v0)
  {
    v2 = sub_1DAFB98CC;
  }

  else
  {
    v2 = sub_1DAFB9850;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1DAFB9850()
{
  sub_1DAFBA96C(v0[11], v0[8]);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1DAFB98CC()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1DAFB993C(uint64_t a1, uint64_t a2)
{
  v3[36] = a2;
  v3[37] = v2;
  v3[35] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1DAFB9960, 0, 0);
}

uint64_t sub_1DAFB9960()
{
  *(v0 + 320) = *(*(v0 + 296) + 16);
  v1 = swift_task_alloc();
  *(v0 + 304) = v1;
  *v1 = v0;
  v1[1] = sub_1DAFB9A08;

  return DIPClientGUIDFactory.init(primaryDSIDBehavior:)(v0 + 16, (v0 + 320));
}

uint64_t sub_1DAFB9A08()
{
  *(*v1 + 312) = v0;

  if (v0)
  {
    v2 = sub_1DAFB9CA0;
  }

  else
  {
    v2 = sub_1DAFB9B1C;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1DAFB9B1C()
{
  v14 = v0;
  v1 = *(v0 + 312);
  v2 = *(v0 + 288);
  type metadata accessor for ODNAssessmentGUIDManager();
  v3 = swift_allocObject();
  *(v3 + 16) = 45;
  *(v3 + 24) = 0xE100000000000000;
  v4 = *(v0 + 64);
  *(v3 + 64) = *(v0 + 48);
  *(v3 + 80) = v4;
  *(v3 + 96) = *(v0 + 80);
  *(v3 + 112) = *(v0 + 96);
  v5 = *(v0 + 32);
  *(v3 + 32) = *(v0 + 16);
  *(v3 + 48) = v5;
  sub_1DAFDBC18(v2, __src);
  if (v1)
  {
    swift_setDeallocating();

    v6 = *(v3 + 80);
    *(v0 + 136) = *(v3 + 64);
    *(v0 + 152) = v6;
    *(v0 + 168) = *(v3 + 96);
    *(v0 + 184) = *(v3 + 112);
    v7 = *(v3 + 48);
    *(v0 + 104) = *(v3 + 32);
    *(v0 + 120) = v7;
    sub_1DAFBA904(v0 + 104);
    swift_deallocClassInstance();
  }

  else
  {
    v9 = *(v0 + 280);
    swift_setDeallocating();

    v10 = *(v3 + 80);
    *(v0 + 224) = *(v3 + 64);
    *(v0 + 240) = v10;
    *(v0 + 256) = *(v3 + 96);
    *(v0 + 272) = *(v3 + 112);
    v11 = *(v3 + 48);
    *(v0 + 192) = *(v3 + 32);
    *(v0 + 208) = v11;
    sub_1DAFBA904(v0 + 192);
    swift_deallocClassInstance();
    memcpy(v9, __src, 0x110uLL);
  }

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_1DAFB9CB8(uint64_t a1, uint64_t a2, __int128 *a3)
{
  *(v4 + 848) = v3;
  *(v4 + 840) = a2;
  *(v4 + 832) = a1;
  *(v4 + 856) = type metadata accessor for PregeneratedAssessment(0);
  *(v4 + 864) = swift_task_alloc();
  *(v4 + 872) = swift_task_alloc();
  v6 = a3[4];
  *(v4 + 232) = a3[5];
  v7 = a3[7];
  *(v4 + 248) = a3[6];
  *(v4 + 264) = v7;
  *(v4 + 280) = *(a3 + 16);
  v8 = *a3;
  *(v4 + 168) = a3[1];
  v9 = a3[3];
  *(v4 + 184) = a3[2];
  *(v4 + 200) = v9;
  *(v4 + 216) = v6;
  *(v4 + 152) = v8;
  v10 = *(a3 + 216);
  v11 = *(a3 + 248);
  *(v4 + 112) = *(a3 + 232);
  *(v4 + 128) = v11;
  *(v4 + 144) = *(a3 + 33);
  v12 = *(a3 + 152);
  v13 = *(a3 + 184);
  *(v4 + 48) = *(a3 + 168);
  *(v4 + 64) = v13;
  *(v4 + 80) = *(a3 + 200);
  *(v4 + 96) = v10;
  *(v4 + 16) = *(a3 + 136);
  *(v4 + 32) = v12;
  sub_1DAF49ECC(v4 + 16, v4 + 288);

  return MEMORY[0x1EEE6DFA0](sub_1DAFB9DEC, 0, 0);
}

uint64_t sub_1DAFB9DEC()
{
  sub_1DAF8C428(*(v0 + 840), *(v0 + 872));
  *(v0 + 880) = *(v0 + 152) + 49;
  v1 = *(v0 + 864);
  v2 = *(v0 + 232);
  *(v0 + 888) = *(v0 + 224);
  v3 = *(v0 + 248);
  *(v0 + 904) = *(v0 + 240);
  v4 = *(v0 + 264);
  *(v0 + 920) = *(v0 + 256);
  v5 = *(v0 + 840);
  *(v0 + 896) = v2;
  *(v0 + 912) = v3;
  *(v0 + 928) = v4;
  sub_1DAF8C428(v5, v1);

  sub_1DAF49ECC(v0 + 152, v0 + 424);
  if (qword_1EE301710 != -1)
  {
    swift_once();
  }

  v6 = qword_1EE30A060;
  *(v0 + 936) = qword_1EE30A060;

  return MEMORY[0x1EEE6DFA0](sub_1DAFB9EFC, v6, 0);
}

uint64_t sub_1DAFB9EFC()
{
  v1 = v0[117];
  v2 = *(v1 + 120);
  if (v2)
  {
    v3 = *(v1 + 112);
    v0[122] = v2;
    v0[121] = v3;

    return MEMORY[0x1EEE6DFA0](sub_1DAFBA18C, 0, 0);
  }

  else
  {
    v4 = swift_task_alloc();
    v0[118] = v4;
    *v4 = v0;
    v4[1] = sub_1DAFB9FE0;

    return sub_1DAFB1344();
  }
}

uint64_t sub_1DAFB9FE0(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *(*v2 + 936);
  *(v3 + 952) = a1;
  *(v3 + 960) = a2;

  return MEMORY[0x1EEE6DFA0](sub_1DAFBA0FC, v4, 0);
}

uint64_t sub_1DAFBA0FC()
{
  v1 = v0[120];
  v2 = v0[117];
  *(v2 + 112) = v0[119];
  *(v2 + 120) = v1;

  v3 = v0[119];
  v0[122] = v0[120];
  v0[121] = v3;

  return MEMORY[0x1EEE6DFA0](sub_1DAFBA18C, 0, 0);
}

uint64_t sub_1DAFBA18C()
{
  v80 = v0;
  v1 = *(v0 + 864);
  v2 = *(v0 + 856);
  v3 = *(v0 + 848);
  v74 = *(v3 + 32);
  v75 = *(v3 + 24);
  v4 = (v1 + v2[15]);
  v6 = *v4;
  v5 = v4[1];
  v7 = (v1 + v2[16]);
  v8 = *v7;
  v9 = v7[1];

  v10 = sub_1DAFDD930(v6, v5, v8, v9);
  v76 = v11;
  v71 = sub_1DAF8B2AC(*(v1 + v2[7]), *(v1 + v2[7] + 8));

  v12 = v1[1];
  v73 = *v1;
  v13 = (v1 + v2[19]);
  v14 = v13[3];
  v15 = v13[4];
  __swift_project_boxed_opaque_existential_1(v13, v14);
  v16 = *(v15 + 24);
  v72 = v12;

  v17 = v16(v14, v15);
  v19 = v18;
  v20 = v13[3];
  v21 = v13[4];
  __swift_project_boxed_opaque_existential_1(v13, v20);
  (*(v21 + 64))(v78, v20, v21);
  if (v10)
  {
  }

  v22 = *(*(v0 + 864) + *(*(v0 + 856) + 52));
  v23 = v22 + 1;
  if (__OFADD__(v22, 1))
  {
    __break(1u);
  }

  else
  {
    v79 = 0;
    if (qword_1EE301DD0 == -1)
    {
      goto LABEL_5;
    }
  }

  swift_once();
LABEL_5:
  v25 = qword_1EE309EE0;
  v24 = qword_1EE309EE8;

  sub_1DB09D0F4();
  v27 = v26;
  v28 = v26;
  result = sub_1DAF8C48C(v10, v76);
  if ((*&v28 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_14;
  }

  if (v27 <= -9.22337204e18)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v27 >= 9.22337204e18)
  {
LABEL_15:
    __break(1u);
    return result;
  }

  v77 = v23;
  v69 = v25;
  v70 = *(v0 + 976);
  v63 = *(v0 + 920);
  v64 = *(v0 + 928);
  v61 = *(v0 + 888);
  v62 = *(v0 + 904);
  v60 = *(v0 + 880);
  v30 = *(v0 + 872);
  v67 = v24;
  v31 = *(v0 + 856);
  v65 = v17;
  v32 = *(v0 + 832);
  v68 = *(v0 + 968);
  sub_1DAFBA75C(*(v0 + 864), type metadata accessor for PregeneratedAssessment);
  v66 = v79;
  type metadata accessor for ODNAssessmentResult(0);
  sub_1DB09DF34();
  v33 = *(v0 + 232);
  v34 = *(v0 + 264);
  *(v0 + 792) = *(v0 + 248);
  *(v0 + 808) = v34;
  *(v0 + 824) = *(v0 + 280);
  v35 = *(v0 + 168);
  v36 = *(v0 + 200);
  *(v0 + 728) = *(v0 + 184);
  *(v0 + 744) = v36;
  *(v0 + 760) = *(v0 + 216);
  *(v0 + 776) = v33;
  *(v0 + 696) = *(v0 + 152);
  *(v0 + 712) = v35;
  nullsub_3();
  *v32 = *(v0 + 696);
  v37 = *(v0 + 712);
  v38 = *(v0 + 728);
  v39 = *(v0 + 760);
  *(v32 + 48) = *(v0 + 744);
  *(v32 + 64) = v39;
  *(v32 + 16) = v37;
  *(v32 + 32) = v38;
  v40 = *(v0 + 776);
  v41 = *(v0 + 792);
  v42 = *(v0 + 808);
  *(v32 + 128) = *(v0 + 824);
  *(v32 + 96) = v41;
  *(v32 + 112) = v42;
  *(v32 + 80) = v40;
  v43 = *(v0 + 128);
  *(v0 + 656) = *(v0 + 112);
  *(v0 + 672) = v43;
  *(v0 + 688) = *(v0 + 144);
  v44 = *(v0 + 64);
  *(v0 + 592) = *(v0 + 48);
  *(v0 + 608) = v44;
  v45 = *(v0 + 96);
  *(v0 + 624) = *(v0 + 80);
  *(v0 + 640) = v45;
  v46 = *(v0 + 32);
  *(v0 + 560) = *(v0 + 16);
  *(v0 + 576) = v46;
  nullsub_3();
  *(v32 + 136) = *(v0 + 560);
  v47 = *(v0 + 576);
  v48 = *(v0 + 592);
  v49 = *(v0 + 608);
  *(v32 + 200) = *(v0 + 624);
  *(v32 + 184) = v49;
  *(v32 + 168) = v48;
  *(v32 + 152) = v47;
  v50 = *(v0 + 640);
  v51 = *(v0 + 656);
  v52 = *(v0 + 672);
  *(v32 + 264) = *(v0 + 688);
  *(v32 + 248) = v52;
  *(v32 + 232) = v51;
  *(v32 + 216) = v50;
  v53 = (v30 + *(v31 + 48));
  v54 = v53[1];
  *(v32 + 272) = *v53;
  *(v32 + 280) = v54;
  v55 = (v30 + *(v31 + 24));
  v56 = v55[1];
  *(v32 + 288) = *v55;
  *(v32 + 296) = v56;
  *(v32 + 304) = 0u;
  *(v32 + 320) = 0u;
  *(v32 + 336) = 0u;
  *(v32 + 352) = 1;
  *(v32 + 360) = v60;
  *(v32 + 368) = 0xE100000000000000;
  *(v32 + 376) = v61;
  *(v32 + 392) = v62;
  *(v32 + 408) = v63;
  *(v32 + 416) = v64;
  sub_1DAF3523C(v30 + v2[19], v32 + 424);

  sub_1DAFBA75C(v30, type metadata accessor for PregeneratedAssessment);
  *(v32 + 464) = v73;
  *(v32 + 472) = v72;
  *(v32 + 480) = v65;
  *(v32 + 488) = v19;
  v57 = v78[3];
  *(v32 + 528) = v78[2];
  *(v32 + 544) = v57;
  *(v32 + 560) = v78[4];
  v58 = v78[1];
  *(v32 + 496) = v78[0];
  *(v32 + 512) = v58;
  *(v32 + 576) = v68;
  *(v32 + 584) = v70;
  *(v32 + 592) = v75;
  *(v32 + 600) = v74;
  *(v32 + 608) = v10;
  *(v32 + 616) = v77;
  *(v32 + 624) = v66;
  *(v32 + 632) = 0;
  *(v32 + 640) = v69;
  *(v32 + 648) = v67;
  *(v32 + 656) = -45;
  *(v32 + 664) = v27;
  *(v32 + 672) = v71 & 1;

  v59 = *(v0 + 8);

  return v59();
}

uint64_t sub_1DAFBA684()
{
  sub_1DB09E3A4();
  MEMORY[0x1E1280A80](0);
  return sub_1DB09E3E4();
}

uint64_t sub_1DAFBA6C8()
{
  sub_1DB09E3A4();
  MEMORY[0x1E1280A80](0);
  return sub_1DB09E3E4();
}

unint64_t sub_1DAFBA708()
{
  result = qword_1ECC0EB90;
  if (!qword_1ECC0EB90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0EB90);
  }

  return result;
}

uint64_t sub_1DAFBA75C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

__n128 __swift_memcpy120_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[6];
  *(a1 + 112) = *(a2 + 14);
  *(a1 + 80) = v6;
  *(a1 + 96) = v7;
  *(a1 + 64) = result;
  return result;
}

uint64_t sub_1DAFBA7E8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 120))
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

uint64_t sub_1DAFBA830(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 120) = 1;
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

    *(result + 120) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1DAFBA8B0()
{
  result = qword_1ECC0EB98;
  if (!qword_1ECC0EB98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0EB98);
  }

  return result;
}

uint64_t sub_1DAFBA904(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E7E8, &qword_1DB0A51D8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1DAFBA96C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PregeneratedAssessment(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DAFBA9D0(void *a1, char a2)
{
  v5 = sub_1DB09D4C4();
  v22 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_1DB09D4F4();
  v8 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  MEMORY[0x1EEE9AC00](v11);
  (*(v13 + 16))(&v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = sub_1DB09D744();
  v16 = v15;
  v17 = swift_allocObject();
  *(v17 + 16) = v2;
  *(v17 + 24) = v14;
  *(v17 + 32) = v16;
  *(v17 + 40) = a2;
  aBlock[4] = sub_1DAFBAF14;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1DAF75DB0;
  aBlock[3] = &block_descriptor_8;
  v18 = _Block_copy(aBlock);

  sub_1DB09D4E4();
  v23 = MEMORY[0x1E69E7CC0];
  sub_1DAF75F08(&unk_1EE301990, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0F010, &qword_1DB0A0948);
  sub_1DAF75F50(&qword_1EE301940, &qword_1ECC0F010, &qword_1DB0A0948);
  sub_1DB09DCF4();
  MEMORY[0x1E12802A0](0, v10, v7, v18);
  _Block_release(v18);
  (*(v22 + 8))(v7, v5);
  (*(v8 + 8))(v10, v21);
}

uint64_t sub_1DAFBAD44()
{
  type metadata accessor for CertUsageMapper();
  v0 = swift_allocObject();
  result = sub_1DAFBAF3C();
  qword_1EE30A1D8 = v0;
  return result;
}

uint64_t sub_1DAFBAD80(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *(a1 + 16);
  *(a1 + 16) = 0x8000000000000000;
  sub_1DAF3B958(a4, a2, a3, isUniquelyReferenced_nonNull_native);
  *(a1 + 16) = v10;
  return swift_endAccess();
}

uint64_t sub_1DAFBAE18@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  swift_beginAccess();
  v8 = *(a1 + 16);
  if (*(v8 + 16) && (v9 = sub_1DAF35210(a2, a3), (v10 & 1) != 0))
  {
    v11 = *(*(v8 + 56) + v9);
  }

  else
  {
    v11 = 17;
  }

  *a4 = v11;
  return swift_endAccess();
}

uint64_t sub_1DAFBAEB0()
{

  return swift_deallocClassInstance();
}

uint64_t block_copy_helper_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1DAFBAF3C()
{
  v13 = sub_1DB09DBB4();
  v1 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v3 = v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1DB09DBA4();
  MEMORY[0x1EEE9AC00](v4);
  v5 = sub_1DB09D4F4();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v6 = MEMORY[0x1E69E7CC0];
  *(v0 + 16) = sub_1DAF3F3F4(MEMORY[0x1E69E7CC0]);
  v7 = sub_1DAFBB1A4();
  v11[1] = "geMapper";
  v11[2] = v7;
  sub_1DB09D4E4();
  v14 = v6;
  sub_1DAF75F08(&qword_1EE3018F0, MEMORY[0x1E69E8030], MEMORY[0x1E69E8040]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0EEB0, &unk_1DB0A4ED0);
  sub_1DAF75F50(&qword_1EE301918, &unk_1ECC0EEB0, &unk_1DB0A4ED0);
  sub_1DB09DCF4();
  (*(v1 + 104))(v3, *MEMORY[0x1E69E8090], v13);
  v8 = sub_1DB09DBE4();
  v9 = v12;
  *(v12 + 24) = v8;
  return v9;
}

unint64_t sub_1DAFBB1A4()
{
  result = qword_1EE3018E0;
  if (!qword_1EE3018E0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EE3018E0);
  }

  return result;
}

uint64_t sub_1DAFBB1F0(uint64_t a1)
{
  v32 = sub_1DB09CC94();
  v3 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 16);
  v7 = MEMORY[0x1E69E7CC0];
  if (!v6)
  {
    return v7;
  }

  v30 = v5;
  v25 = v1;
  v35 = MEMORY[0x1E69E7CC0];
  sub_1DAF5F668(0, v6, 0);
  v7 = v35;
  v8 = a1 + 64;
  result = sub_1DB09DD04();
  v10 = result;
  v11 = 0;
  v34 = *(a1 + 36);
  v28 = a1 + 64;
  v29 = v3 + 32;
  v26 = a1 + 72;
  v27 = v6;
  v31 = v3;
  while ((v10 & 0x8000000000000000) == 0 && v10 < 1 << *(a1 + 32))
  {
    v13 = v10 >> 6;
    if ((*(v8 + 8 * (v10 >> 6)) & (1 << v10)) == 0)
    {
      goto LABEL_23;
    }

    if (v34 != *(a1 + 36))
    {
      goto LABEL_24;
    }

    v33 = v11;
    v14 = a1;

    v15 = v30;
    sub_1DB09CC84();

    v35 = v7;
    v17 = *(v7 + 16);
    v16 = *(v7 + 24);
    if (v17 >= v16 >> 1)
    {
      sub_1DAF5F668((v16 > 1), v17 + 1, 1);
      v7 = v35;
    }

    *(v7 + 16) = v17 + 1;
    result = (*(v31 + 32))(v7 + ((*(v31 + 80) + 32) & ~*(v31 + 80)) + *(v31 + 72) * v17, v15, v32);
    v12 = 1 << *(v14 + 32);
    if (v10 >= v12)
    {
      goto LABEL_25;
    }

    v8 = v28;
    v18 = *(v28 + 8 * v13);
    if ((v18 & (1 << v10)) == 0)
    {
      goto LABEL_26;
    }

    a1 = v14;
    if (v34 != *(v14 + 36))
    {
      goto LABEL_27;
    }

    v19 = v18 & (-2 << (v10 & 0x3F));
    if (v19)
    {
      v12 = __clz(__rbit64(v19)) | v10 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v20 = v13 << 6;
      v21 = v13 + 1;
      v22 = (v26 + 8 * v13);
      while (v21 < (v12 + 63) >> 6)
      {
        v24 = *v22++;
        v23 = v24;
        v20 += 64;
        ++v21;
        if (v24)
        {
          result = sub_1DAFBD7C8(v10, v34, 0);
          v12 = __clz(__rbit64(v23)) + v20;
          goto LABEL_20;
        }
      }

      result = sub_1DAFBD7C8(v10, v34, 0);
LABEL_20:
      a1 = v14;
    }

    v11 = v33 + 1;
    v10 = v12;
    if (v33 + 1 == v27)
    {
      return v7;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
  return result;
}

uint64_t TapToRadar.__allocating_init()()
{
  v0 = sub_1DB09D344();
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v8 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = [objc_opt_self() standardUserDefaults];
  type metadata accessor for DeepLink();
  v4 = swift_allocObject();
  v5 = v3;

  sub_1DB09D334();
  v6 = sub_1DAF601B4(v5, v4, 45, 0xE100000000000000, v2);

  return v6;
}

uint64_t TapToRadar.trigger(error:for:file:line:timestamp:)(void *a1, uint64_t a2, void (*a3)(void, void, void), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  sub_1DAFBB880(a1, a2, a3, a4, a5, a6, a7);
}

id sub_1DAFBB68C()
{
  v1 = OBJC_IVAR____TtC17CoreODIEssentials10TapToRadar____lazy_storage___formatter;
  v2 = *(v0 + OBJC_IVAR____TtC17CoreODIEssentials10TapToRadar____lazy_storage___formatter);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC17CoreODIEssentials10TapToRadar____lazy_storage___formatter);
  }

  else
  {
    v4 = sub_1DAFBB6F0();
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_1DAFBB6F0()
{
  v0 = sub_1DB09D2A4();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = [objc_allocWithZone(MEMORY[0x1E696AB78]) init];
  v5 = sub_1DB09D324();
  [v4 setTimeZone_];

  sub_1DB09D1E4();
  v6 = sub_1DB09D214();
  (*(v1 + 8))(v3, v0);
  [v4 setLocale_];

  v7 = sub_1DB09D6B4();
  [v4 setDateFormat_];

  return v4;
}

uint64_t sub_1DAFBB880(void *a1, uint64_t a2, void (*a3)(void, void, void), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v117 = a6;
  v115 = a7;
  v116 = a5;
  v126 = a4;
  v122 = a3;
  v108 = a2;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0ECE0, &unk_1DB0A21D0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v105 = &v97 - v10;
  v11 = sub_1DB09CC94();
  v100 = *(v11 - 8);
  v101 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v99 = &v97 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1DB09CD14();
  v120 = *(v13 - 8);
  v121 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v97 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1DB09CE94();
  v113 = *(v16 - 8);
  v114 = v16;
  MEMORY[0x1EEE9AC00](v16);
  v112 = &v97 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0EAB0, &qword_1DB0A9530);
  v19 = MEMORY[0x1EEE9AC00](v18 - 8);
  v111 = &v97 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v119 = &v97 - v21;
  v125 = sub_1DB09CF64();
  v123 = *(v125 - 8);
  v22 = MEMORY[0x1EEE9AC00](v125);
  v103 = &v97 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x1EEE9AC00](v22);
  v26 = &v97 - v25;
  v102 = v27;
  MEMORY[0x1EEE9AC00](v24);
  v104 = &v97 - v28;
  v30 = v7[10];
  v29 = v7[11];
  v124 = v7;
  __swift_project_boxed_opaque_existential_1(v7 + 7, v30);
  sub_1DAFD2A1C(&v128);
  Loggable.info(_:category:)(0xD000000000000017, 0x80000001DB0C6490, &v128, v30, v29);
  *&v127[0] = a1;
  v31 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0ECF0, &unk_1DB0A1310);
  v32 = swift_dynamicCast();
  v110 = v15;
  if (v32)
  {
    v33 = v108;
    v34 = v122;
    v35 = v128;
    if (v129 > 1u)
    {
      v36 = v125;
      v40 = v116;
      if (v129 == 2)
      {
        *&v128 = 0;
        *(&v128 + 1) = 0xE000000000000000;
        sub_1DB09DE44();

        *&v128 = 0xD000000000000018;
        *(&v128 + 1) = 0x80000001DB0C65B0;
        MEMORY[0x1E127FE90](v35, *(&v35 + 1));
        v109 = *(&v128 + 1);
        v106 = v128;
        strcpy(&v128, "workflow ID: ");
        HIWORD(v128) = -4864;
        MEMORY[0x1E127FE90](v33, v34);
        sub_1DAFBD764(v35, *(&v35 + 1), 2);
        v98 = 0;
        v122 = 0;
        v107 = *(&v128 + 1);
        v108 = v128;
      }

      else
      {
        v109 = 0x80000001DB0C65D0;
        strcpy(&v128, "workflow ID: ");
        HIWORD(v128) = -4864;
        MEMORY[0x1E127FE90](v108, v122);
        v98 = 0;
        v122 = 0;
        v107 = *(&v128 + 1);
        v108 = v128;
        v106 = 0xD000000000000012;
      }
    }

    else
    {
      v36 = v125;
      if (v129)
      {
        *&v128 = 0;
        *(&v128 + 1) = 0xE000000000000000;
        sub_1DB09DE44();
        MEMORY[0x1E127FE90](0x776F6C666B726F77, 0xED0000203A444920);
        MEMORY[0x1E127FE90](v33, v34);
        MEMORY[0x1E127FE90](0x74756F656D69740ALL, 0xEA0000000000203ALL);
        sub_1DB09DAC4();
        v107 = *(&v128 + 1);
        v108 = v128;
        v122 = 0x80000001DB0C65F0;
        v98 = 0xD000000000000013;
        v109 = 0xE700000000000000;
        v38 = 0x74756F656D6954;
      }

      else
      {
        v109 = 0x80000001DB0C6610;
        *&v128 = 0;
        *(&v128 + 1) = 0xE000000000000000;
        sub_1DB09DE44();

        strcpy(&v128, "workflow ID: ");
        HIWORD(v128) = -4864;
        MEMORY[0x1E127FE90](v33, v34);
        MEMORY[0x1E127FE90](0xD000000000000013, 0x80000001DB0C6630);
        v37 = MEMORY[0x1E1280010](v35, MEMORY[0x1E69E6158]);
        MEMORY[0x1E127FE90](v37);

        v107 = *(&v128 + 1);
        v108 = v128;
        v122 = 0x80000001DB0C6650;
        sub_1DAFBD764(v35, *(&v35 + 1), 0);
        v98 = 0xD00000000000001CLL;
        v38 = 0xD000000000000010;
      }

      v106 = v38;
      v40 = v116;
    }
  }

  else
  {
    *&v128 = 0;
    *(&v128 + 1) = 0xE000000000000000;
    v109 = 0xE000000000000000;
    sub_1DB09DE44();

    strcpy(&v128, "workflow ID: ");
    HIWORD(v128) = -4864;
    MEMORY[0x1E127FE90](v108, v122);
    MEMORY[0x1E127FE90](10, 0xE100000000000000);
    swift_getErrorValue();
    v39 = sub_1DB09E324();
    MEMORY[0x1E127FE90](v39);

    v98 = 0;
    v122 = 0;
    v108 = v128;
    v106 = 0;
    v107 = *(&v128 + 1);
    v36 = v125;
    v40 = v116;
  }

  v41 = v123;
  (*(v123 + 56))(v111, 1, 1, v36);
  (*(v113 + 104))(v112, *MEMORY[0x1E6968F70], v114);

  sub_1DB09CF34();
  v42 = sub_1DB09CEB4();
  v43 = *(v41 + 8);
  v116 = v41 + 8;
  v114 = v43;
  v43(v26, v36);
  v44 = *(v42 + 16);
  if (v44)
  {
    v45 = (v42 + 16 + 16 * v44);
    v46 = v45[1];
    v126 = *v45;
  }

  else
  {

    v46 = v40;
  }

  v47 = sub_1DAFBB68C();
  v48 = sub_1DB09D0B4();
  v49 = [v47 stringFromDate_];

  v50 = sub_1DB09D6C4();
  v52 = v51;

  v53 = v110;
  sub_1DB09CD04();
  sub_1DB09CCF4();
  MEMORY[0x1E127F3B0](7824750, 0xE300000000000000);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0EBB8, &qword_1DB0AB850);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DB0AB780;
  *(inited + 32) = 0x656C746954;
  *(inited + 40) = 0xE500000000000000;
  strcpy(&v128, "[CoreODI] - ");
  BYTE13(v128) = 0;
  HIWORD(v128) = -5120;
  MEMORY[0x1E127FE90](v106, v109);
  v55 = v53;

  v56 = *(&v128 + 1);
  *(inited + 48) = v128;
  *(inited + 56) = v56;
  *(inited + 64) = 0x7470697263736544;
  *(inited + 72) = 0xEB000000006E6F69;
  *&v128 = 0;
  *(&v128 + 1) = 0xE000000000000000;
  sub_1DB09DE44();

  *&v128 = v108;
  *(&v128 + 1) = v107;
  MEMORY[0x1E127FE90](0x3A656C69660ALL, 0xE600000000000000);
  MEMORY[0x1E127FE90](v126, v46);

  MEMORY[0x1E127FE90](0x3A656E696C20, 0xE600000000000000);
  *&v127[0] = v117;
  v57 = sub_1DB09E1D4();
  MEMORY[0x1E127FE90](v57);

  MEMORY[0x1E127FE90](0xD000000000000012, 0x80000001DB0C64B0);
  MEMORY[0x1E127FE90](v50, v52);

  v58 = *(&v128 + 1);
  *(inited + 80) = v128;
  *(inited + 88) = v58;
  *(inited + 96) = 0x6E656E6F706D6F43;
  *(inited + 104) = 0xEB00000000444974;
  *(inited + 112) = xmmword_1DB0AB790;
  strcpy((inited + 128), "ComponentName");
  *(inited + 142) = -4864;
  *(inited + 144) = 0xD00000000000001ALL;
  *(inited + 152) = 0x80000001DB0C64D0;
  *(inited + 160) = 0xD000000000000010;
  *(inited + 168) = 0x80000001DB0C64F0;
  *(inited + 176) = xmmword_1DB0AB7A0;
  strcpy((inited + 192), "Classification");
  *(inited + 207) = -18;
  *(inited + 208) = 0xD000000000000014;
  *(inited + 216) = 0x80000001DB0C6510;
  v59 = sub_1DAF3E658(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0EBC0, &unk_1DB0AB858);
  swift_arrayDestroy();
  v60 = v118;
  sub_1DAFBB1F0(v59);
  v126 = v60;

  sub_1DB09CCB4();
  v61 = v125;
  if (v122)
  {
    v63 = sub_1DB09CCA4();
    if (*v62)
    {
      v64 = v62;
      v65 = v99;
      sub_1DB09CC84();
      v66 = *v64;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *v64 = v66;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v66 = sub_1DAF73268(0, v66[2] + 1, 1, v66);
        *v64 = v66;
      }

      v69 = v66[2];
      v68 = v66[3];
      if (v69 >= v68 >> 1)
      {
        v66 = sub_1DAF73268((v68 > 1), v69 + 1, 1, v66);
        *v64 = v66;
      }

      v66[2] = v69 + 1;
      (*(v100 + 32))(v66 + ((*(v100 + 80) + 32) & ~*(v100 + 80)) + *(v100 + 72) * v69, v65, v101);
      v63(&v128, 0);
      v61 = v125;
    }

    else
    {
      v63(&v128, 0);
    }
  }

  v70 = v119;
  sub_1DB09CCD4();

  (*(v120 + 8))(v55, v121);
  v71 = v123;
  if ((*(v123 + 48))(v70, 1, v61) == 1)
  {
    sub_1DAF783EC(v70);
    v72 = v124[10];
    v73 = v124[11];
    __swift_project_boxed_opaque_existential_1(v124 + 7, v72);
    LOBYTE(v128) = 14;
    Loggable.error(_:category:)(0xD00000000000001BLL, 0x80000001DB0C6530, &v128, v72, v73);
    if (qword_1EE301E08 != -1)
    {
      swift_once();
    }

    v74 = MEMORY[0x1E69E7CC0];
    v75 = sub_1DAF3E128(MEMORY[0x1E69E7CC0]);
    if (*(v75 + 16))
    {
      v76 = sub_1DAF35210(0x636F766E4949444FLL, 0xEE00736E6F697461);
      if (v77)
      {
        sub_1DAF409DC(*(v75 + 56) + 32 * v76, &v128);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0EAC0, &qword_1DB0A3F60);
        if (swift_dynamicCast())
        {
          v74 = *&v127[0];
        }
      }
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v74 = sub_1DAF72EC0(0, *(v74 + 2) + 1, 1, v74);
    }

    v79 = *(v74 + 2);
    v78 = *(v74 + 3);
    if (v79 >= v78 >> 1)
    {
      v74 = sub_1DAF72EC0((v78 > 1), v79 + 1, 1, v74);
    }

    *(v74 + 2) = v79 + 1;
    v80 = &v74[56 * v79];
    *(v80 + 4) = 0;
    *(v80 + 5) = 0xE000000000000000;
    *(v80 + 6) = 0xD000000000000022;
    *(v80 + 7) = 0x80000001DB0C6550;
    *(v80 + 8) = 0xD00000000000002BLL;
    *(v80 + 9) = 0x80000001DB0C6580;
    *(v80 + 10) = 94;
    v130 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0EAC0, &qword_1DB0A3F60);
    *&v128 = v74;
    sub_1DAF40D20(&v128, v127);
    v81 = swift_isUniquelyReferenced_nonNull_native();
    v131 = v75;
    sub_1DAF3B11C(v127, 0x636F766E4949444FLL, 0xEE00736E6F697461, v81);
    v82 = v131;
    v83 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
    v84 = sub_1DB09D6B4();
    v85 = sub_1DB09D604();
    [v83 initWithDomain:v84 code:-1 userInfo:v85];

    swift_willThrow();
  }

  else
  {
    v86 = v71;
    v122 = *(v71 + 32);
    v87 = v61;
    v88 = v104;
    v122(v104, v70, v87);
    v89 = sub_1DB09DA24();
    v90 = v105;
    (*(*(v89 - 8) + 56))(v105, 1, 1, v89);
    v91 = v124;
    v92 = *(v124 + OBJC_IVAR____TtC17CoreODIEssentials10TapToRadar_ttrDelay);
    sub_1DAF3523C((v124 + 7), &v128);
    sub_1DAF3523C((v91 + 2), v127);
    v93 = v103;
    (*(v86 + 16))(v103, v88, v87);
    v94 = (*(v86 + 80) + 120) & ~*(v86 + 80);
    v95 = swift_allocObject();
    v95[2] = 0;
    v95[3] = 0;
    sub_1DAF332B8(&v128, (v95 + 4));
    v95[9] = v92;
    sub_1DAF332B8(v127, (v95 + 10));
    v122(v95 + v94, v93, v87);
    v82 = sub_1DAF5B2C0(0, 0, v90, &unk_1DB0AB870, v95);
    v114(v88, v87);
  }

  return v82;
}

uint64_t sub_1DAFBCA14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a5;
  v7[5] = a7;
  v7[3] = a4;
  v8 = sub_1DB09DF74();
  v7[6] = v8;
  v7[7] = *(v8 - 8);
  v7[8] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DAFBCAD8, 0, 0);
}

uint64_t sub_1DAFBCAD8()
{
  v11 = v0;
  v1 = v0[3];
  v2 = v0[4];
  v3 = v1[3];
  v4 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v3);
  sub_1DB09DE44();

  strcpy(v10, "Awaiting for ");
  HIWORD(v10[1]) = -4864;
  v0[2] = v2;
  v5 = sub_1DB09E1D4();
  MEMORY[0x1E127FE90](v5);

  MEMORY[0x1E127FE90](0xD00000000000001DLL, 0x80000001DB0C6670);
  v6 = v10[0];
  v7 = v10[1];
  sub_1DAFD2A1C(v10);
  Loggable.info(_:category:)(v6, v7, v10, v3, v4);

  sub_1DB09E314();
  v8 = swift_task_alloc();
  v0[9] = v8;
  *v8 = v0;
  v8[1] = sub_1DAFBCCB4;

  return sub_1DAFBD08C(1000000000000000000 * v2, ((v2 >> 63) & 0xF21F494C589C0000) + ((v2 * 0xDE0B6B3A7640000uLL) >> 64), 0, 0, 1);
}

uint64_t sub_1DAFBCCB4()
{
  v2 = *(*v1 + 64);
  v3 = *(*v1 + 56);
  v4 = *(*v1 + 48);
  *(*v1 + 80) = v0;

  (*(v3 + 8))(v2, v4);
  if (v0)
  {
    v5 = sub_1DAFBCEEC;
  }

  else
  {
    v5 = sub_1DAFBCE24;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

id sub_1DAFBCE24()
{
  result = [objc_opt_self() defaultWorkspace];
  if (result)
  {
    v2 = result;
    v3 = sub_1DB09CEE4();
    [v2 openURL:v3 withOptions:0];

    v4 = *(v0 + 8);

    return v4();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1DAFBCEEC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t TapToRadar.deinit()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 56));
  v1 = OBJC_IVAR____TtC17CoreODIEssentials10TapToRadar_timeZone;
  v2 = sub_1DB09D344();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t TapToRadar.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 56));
  v1 = OBJC_IVAR____TtC17CoreODIEssentials10TapToRadar_timeZone;
  v2 = sub_1DB09D344();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_1DAFBD08C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 56) = v5;
  v12 = sub_1DB09DF64();
  *(v6 + 64) = v12;
  *(v6 + 72) = *(v12 - 8);
  *(v6 + 80) = swift_task_alloc();
  *(v6 + 88) = swift_task_alloc();
  *(v6 + 40) = a1;
  *(v6 + 48) = a2;
  *(v6 + 16) = a3;
  *(v6 + 24) = a4;
  *(v6 + 32) = a5 & 1;

  return MEMORY[0x1EEE6DFA0](sub_1DAFBD18C, 0, 0);
}

uint64_t sub_1DAFBD18C()
{
  v1 = v0[10];
  v2 = v0[8];
  v3 = v0[9];
  v4 = sub_1DB09DF74();
  v5 = sub_1DAFBD780(&qword_1ECC0EBC8, MEMORY[0x1E69E8820], MEMORY[0x1E69E8828]);
  sub_1DB09E2F4();
  sub_1DAFBD780(&qword_1ECC0EBD0, MEMORY[0x1E69E87E8], MEMORY[0x1E69E8818]);
  sub_1DB09DF84();
  v6 = *(v3 + 8);
  v0[12] = v6;
  v0[13] = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v6(v1, v2);
  v7 = swift_task_alloc();
  v0[14] = v7;
  *v7 = v0;
  v7[1] = sub_1DAFBD31C;
  v8 = v0[11];

  return MEMORY[0x1EEE6DE58](v8, v0 + 2, v4, v5);
}

uint64_t sub_1DAFBD31C()
{
  v2 = *(*v1 + 96);
  v3 = *(*v1 + 88);
  v4 = *(*v1 + 64);
  v5 = *v1;
  *(v5 + 120) = v0;

  v2(v3, v4);
  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1DAFBD4D8, 0, 0);
  }

  else
  {

    v6 = *(v5 + 8);

    return v6();
  }
}

uint64_t sub_1DAFBD4D8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t type metadata accessor for TapToRadar(uint64_t a1)
{
  result = qword_1ECC0EBA8;
  if (!qword_1ECC0EBA8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1DAFBD598(uint64_t a1)
{
  result = sub_1DB09D344();
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

uint64_t sub_1DAFBD664(uint64_t a1)
{
  v4 = *(sub_1DB09CF64() - 8);
  v5 = (*(v4 + 80) + 120) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[9];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1DAF62CC4;

  return sub_1DAFBCA14(a1, v6, v7, (v1 + 4), v8, (v1 + 10), v1 + v5);
}

uint64_t sub_1DAFBD764(uint64_t result, uint64_t a2, char a3)
{
  if (!a3 || a3 == 2)
  {
  }

  return v3;
}

uint64_t sub_1DAFBD780(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1DAFBD7C8(uint64_t result, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return v3;
}

uint64_t FeedbackState.state.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t FeedbackState.trainingSignalID.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t sub_1DAFBD860()
{
  sub_1DB09E3A4();
  sub_1DB09D794();

  return sub_1DB09E3E4();
}

uint64_t sub_1DAFBD964(uint64_t a1)
{
  sub_1DB09D794();
}

uint64_t sub_1DAFBDA54()
{
  sub_1DB09E3A4();
  sub_1DB09D794();

  return sub_1DB09E3E4();
}

unint64_t sub_1DAFBDB54@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1DAFBE26C(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_1DAFBDB84(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE500000000000000;
  v4 = 0x6574617473;
  v5 = 0x42746E6572727563;
  v6 = 0xEF73676E69646E69;
  v7 = 0xE900000000000065;
  v8 = 0x646F43726F727265;
  if (v2 != 3)
  {
    v8 = 0x616E696D6F4E7369;
    v7 = 0xEB00000000646574;
  }

  if (v2 != 2)
  {
    v5 = v8;
    v6 = v7;
  }

  if (*v1)
  {
    v4 = 0x42676E697373696DLL;
    v3 = 0xEF73676E69646E69;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v5;
  }

  if (*v1 > 1u)
  {
    v3 = v6;
  }

  *a1 = v9;
  a1[1] = v3;
}

uint64_t sub_1DAFBDC44()
{
  v1 = *v0;
  v2 = 0x6574617473;
  v3 = 0x42746E6572727563;
  v4 = 0x646F43726F727265;
  if (v1 != 3)
  {
    v4 = 0x616E696D6F4E7369;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x42676E697373696DLL;
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

unint64_t sub_1DAFBDD00@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DAFBE26C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DAFBDD28(uint64_t a1)
{
  v2 = sub_1DAFBE024();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DAFBDD64(uint64_t a1)
{
  v2 = sub_1DAFBE024();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void __swiftcall FeedbackState.init(state:missingBindings:currentBindings:trainingSignalID:errorCode:)(CoreODIEssentials::FeedbackState *__return_ptr retstr, Swift::String state, Swift::Int missingBindings, Swift::Int currentBindings, Swift::String_optional trainingSignalID, Swift::Int errorCode)
{
  retstr->state = state;
  retstr->missingBindings = missingBindings;
  retstr->currentBindings = currentBindings;
  retstr->trainingSignalID = trainingSignalID;
  retstr->errorCode = errorCode;
  retstr->isNominated = 0;
}

void __swiftcall FeedbackState.nominated()(CoreODIEssentials::FeedbackState *__return_ptr retstr)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 32);
  retstr->state._countAndFlagsBits = *v1;
  retstr->state._object = v2;
  *&retstr->missingBindings = *(v1 + 16);
  retstr->trainingSignalID.value._countAndFlagsBits = v3;
  *&retstr->trainingSignalID.value._object = *(v1 + 40);
  retstr->isNominated = 1;
}

uint64_t FeedbackState.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0EBD8, &qword_1DB0AB880);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v10 - v5;
  v7 = *(v1 + 16);
  v12 = *(v1 + 24);
  v13 = v7;
  v11 = *(v1 + 48);
  v10[3] = *(v1 + 56);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DAFBE024();
  sub_1DB09E434();
  v19 = 0;
  v8 = v14;
  sub_1DB09E154();
  if (v8)
  {
    return (*(v4 + 8))(v6, v3);
  }

  v18 = 1;
  sub_1DB09E184();
  v17 = 2;
  sub_1DB09E184();
  v16 = 3;
  sub_1DB09E184();
  v15 = 4;
  sub_1DB09E164();
  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_1DAFBE024()
{
  result = qword_1ECC0EBE0;
  if (!qword_1ECC0EBE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0EBE0);
  }

  return result;
}

__n128 __swift_memcpy57_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 41) = *(a2 + 41);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_1DAFBE0AC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 57))
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

uint64_t sub_1DAFBE0F4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 57) = 1;
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

    *(result + 57) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1DAFBE168()
{
  result = qword_1ECC0EBE8;
  if (!qword_1ECC0EBE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0EBE8);
  }

  return result;
}

unint64_t sub_1DAFBE1C0()
{
  result = qword_1ECC0EBF0;
  if (!qword_1ECC0EBF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0EBF0);
  }

  return result;
}

unint64_t sub_1DAFBE218()
{
  result = qword_1ECC0EBF8;
  if (!qword_1ECC0EBF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0EBF8);
  }

  return result;
}

unint64_t sub_1DAFBE26C(uint64_t a1, uint64_t a2)
{
  v2 = sub_1DB09E004();

  if (v2 >= 5)
  {
    return 5;
  }

  else
  {
    return v2;
  }
}

void *PrecomputationSession.__allocating_init(workflowID:)(uint64_t a1, uint64_t a2)
{
  v4 = sub_1DB09D1D4();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v22[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DB09D1C4();
  v8 = sub_1DB09D174();
  v10 = v9;
  (*(v5 + 8))(v7, v4);
  v11 = type metadata accessor for DIPAssessmentStaticWebService();
  v12 = objc_allocWithZone(v11);
  v12[OBJC_IVAR____TtC17CoreODIEssentials29DIPAssessmentStaticWebService_serverRepo] = 5;
  v12[OBJC_IVAR____TtC17CoreODIEssentials29DIPAssessmentStaticWebService_mode] = 1;
  v13 = sub_1DAFBF408(v8, v10, 0x10000, 0xD000000000000015, 0x80000001DB0ABA40, v12, 10.0);
  v22[3] = v11;
  v22[4] = &off_1F56C4838;
  v22[0] = v13;
  v14 = swift_allocObject();
  v15 = __swift_mutable_project_boxed_opaque_existential_1(v22, v11);
  MEMORY[0x1EEE9AC00](v15);
  v17 = (&v22[-1] - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v18 + 16))(v17);
  v19 = sub_1DAFBFAE8(a1, a2, *v17, v14);
  __swift_destroy_boxed_opaque_existential_1Tm(v22);
  return v19;
}

void *PrecomputationSession.__allocating_init(workflowID:diskCommand:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  v8 = sub_1DB09D1D4();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v27[-1] - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DB09D1C4();
  v12 = sub_1DB09D174();
  v14 = v13;
  (*(v9 + 8))(v11, v8);
  v15 = type metadata accessor for DIPAssessmentStaticWebService();
  v16 = objc_allocWithZone(v15);
  v16[OBJC_IVAR____TtC17CoreODIEssentials29DIPAssessmentStaticWebService_serverRepo] = 5;
  v16[OBJC_IVAR____TtC17CoreODIEssentials29DIPAssessmentStaticWebService_mode] = 1;
  v17 = sub_1DAFBF408(v12, v14, 0x10000, 0xD000000000000015, 0x80000001DB0ABA40, v16, 10.0);
  sub_1DAF3523C(a3, v27);
  v18 = v28;
  v19 = v29;
  v20 = __swift_mutable_project_boxed_opaque_existential_1(v27, v28);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v27[-1] - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v23 + 16))(v22);
  v26 = v17;
  v24 = sub_1DAFBF884(a1, a2, &v26, v22, v4, v15, v18, &off_1F56C4838, v19);
  __swift_destroy_boxed_opaque_existential_1Tm(a3);
  __swift_destroy_boxed_opaque_existential_1Tm(v27);
  return v24;
}

uint64_t PrecomputationSession.fetchEncapsulatedProfile()(uint64_t a1)
{
  *(v2 + 136) = a1;
  *(v2 + 144) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1DAFBE764, 0, 0);
}

uint64_t sub_1DAFBE764()
{
  v1 = v0[18];
  v21 = *(v1 + 24);
  v22 = *(v1 + 16);
  sub_1DAF3523C(v1 + 32, (v0 + 2));
  sub_1DAF3523C(v1 + 72, (v0 + 7));
  v2 = v0[5];
  v3 = __swift_mutable_project_boxed_opaque_existential_1((v0 + 2), v2);
  v4 = *(v2 - 8);
  v5 = swift_task_alloc();
  (*(v4 + 16))(v5, v3, v2);
  v6 = *v5;
  v7 = type metadata accessor for DIPAssessmentStaticWebService();
  v0[15] = v7;
  v0[16] = &off_1F56C4838;
  v0[12] = v6;
  type metadata accessor for ProfileManager();
  v20 = swift_allocObject();
  v8 = __swift_mutable_project_boxed_opaque_existential_1((v0 + 12), v7);
  v9 = *(v7 - 8);
  v10 = swift_task_alloc();
  (*(v9 + 16))(v10, v8, v7);
  v11 = *v10;
  v12 = v0[10];
  v13 = v0[11];
  v14 = __swift_mutable_project_boxed_opaque_existential_1((v0 + 7), v12);
  v15 = *(v12 - 8);
  v16 = swift_task_alloc();
  (*(v15 + 16))(v16, v14, v12);

  v0[19] = sub_1DAFA6E04(v22, v21, v11, v16, v20, v12, v13);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 7);

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 12);

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);

  v17 = swift_task_alloc();
  v0[20] = v17;
  *v17 = v0;
  v17[1] = sub_1DAFBEA5C;
  v18 = v0[17];

  return sub_1DAFA41D8(v18);
}

uint64_t sub_1DAFBEA5C()
{
  *(*v1 + 168) = v0;

  if (v0)
  {
    v2 = sub_1DAFBEBD4;
  }

  else
  {
    v2 = sub_1DAFBEB70;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1DAFBEB70()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1DAFBEBD4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1DAFBEC58()
{
  v1 = v0[17];
  v20 = *(v1 + 24);
  v21 = *(v1 + 16);
  sub_1DAF3523C(v1 + 32, (v0 + 2));
  sub_1DAF3523C(v1 + 72, (v0 + 7));
  v2 = v0[5];
  v3 = __swift_mutable_project_boxed_opaque_existential_1((v0 + 2), v2);
  v4 = *(v2 - 8);
  v5 = swift_task_alloc();
  (*(v4 + 16))(v5, v3, v2);
  v6 = *v5;
  v7 = type metadata accessor for DIPAssessmentStaticWebService();
  v0[15] = v7;
  v0[16] = &off_1F56C4838;
  v0[12] = v6;
  type metadata accessor for ProfileManager();
  v19 = swift_allocObject();
  v8 = __swift_mutable_project_boxed_opaque_existential_1((v0 + 12), v7);
  v9 = *(v7 - 8);
  v10 = swift_task_alloc();
  (*(v9 + 16))(v10, v8, v7);
  v11 = *v10;
  v12 = v0[10];
  v13 = v0[11];
  v14 = __swift_mutable_project_boxed_opaque_existential_1((v0 + 7), v12);
  v15 = *(v12 - 8);
  v16 = swift_task_alloc();
  (*(v15 + 16))(v16, v14, v12);

  v0[18] = sub_1DAFA6E04(v21, v20, v11, v16, v19, v12, v13);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 7);

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 12);

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);

  v17 = swift_task_alloc();
  v0[19] = v17;
  *v17 = v0;
  v17[1] = sub_1DAFBEF48;

  return sub_1DAFA0BEC();
}

uint64_t sub_1DAFBEF48()
{
  *(*v1 + 160) = v0;

  if (v0)
  {
    v2 = sub_1DAFBF0C0;
  }

  else
  {
    v2 = sub_1DAFBF05C;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1DAFBF05C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1DAFBF0C0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1DAFBF144()
{
  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  *v1 = v0;
  v1[1] = sub_1DAFBF1D8;

  return sub_1DAFA5D90();
}

uint64_t sub_1DAFBF1D8(uint64_t a1, uint64_t a2)
{
  v7 = *v2;

  v5 = *(v7 + 8);

  return v5(a1, a2);
}

void *PrecomputationSession.deinit()
{

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 32));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 72));

  return v0;
}

uint64_t PrecomputationSession.__deallocating_deinit()
{

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 32));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 72));

  return swift_deallocClassInstance();
}

uint64_t sub_1DAFBF380()
{
  sub_1DAFC003C();
  swift_allocError();
  swift_willThrow();
  v1 = *(v0 + 8);

  return v1();
}

char *sub_1DAFBF408(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, char *a6, double a7)
{
  v20[3] = &type metadata for CoreODILogger;
  v20[4] = &protocol witness table for CoreODILogger;
  v20[0] = a4;
  v20[1] = a5;
  v12 = &a6[OBJC_IVAR____TtC17CoreODIEssentials13DIPWebService_conversationID];
  *v12 = a1;
  *(v12 + 1) = a2;
  v13 = objc_allocWithZone(type metadata accessor for DIPHTTPSession());

  *&a6[OBJC_IVAR____TtC17CoreODIEssentials13DIPWebService_httpSession] = sub_1DAFBF538(a3 & 0x10101, a4, a5, v13, a7);
  sub_1DAF3523C(v20, &a6[OBJC_IVAR____TtC17CoreODIEssentials13DIPWebService_logger]);
  v19.receiver = a6;
  v19.super_class = type metadata accessor for DIPWebService();
  v14 = objc_msgSendSuper2(&v19, sel_init);
  v15 = *&v14[OBJC_IVAR____TtC17CoreODIEssentials13DIPWebService_httpSession];
  v16 = v14;
  v17 = v15;
  sub_1DAFA93FC(v14);

  __swift_destroy_boxed_opaque_existential_1Tm(v20);
  return v16;
}

char *sub_1DAFBF538(int a1, uint64_t a2, uint64_t a3, char *a4, double a5)
{
  ObjectType = swift_getObjectType();
  v32[3] = &type metadata for CoreODILogger;
  v32[4] = &protocol witness table for CoreODILogger;
  v32[0] = a2;
  v32[1] = a3;
  *&a4[OBJC_IVAR____TtC17CoreODIEssentials14DIPHTTPSession__urlSession] = 0;
  *&a4[OBJC_IVAR____TtC17CoreODIEssentials14DIPHTTPSession__anonymousURLSession] = 0;
  v11 = OBJC_IVAR____TtC17CoreODIEssentials14DIPHTTPSession_state;
  type metadata accessor for DIPHTTPSession.SessionState();
  v12 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v12 + 112) = 0;
  *(v12 + 120) = 0;
  *&a4[v11] = v12;
  swift_unknownObjectWeakInit();
  sub_1DAF3523C(v32, &a4[OBJC_IVAR____TtC17CoreODIEssentials14DIPHTTPSession_logger]);
  v13 = &a4[OBJC_IVAR____TtC17CoreODIEssentials14DIPHTTPSession_configuration];
  *v13 = a5;
  v13[8] = a1 & 1;
  v13[9] = BYTE1(a1) & 1;
  v13[10] = BYTE2(a1) & 1;
  v14 = &a4[OBJC_IVAR____TtC17CoreODIEssentials14DIPHTTPSession_retrier];
  *v14 = xmmword_1DB0ABA50;
  v14[16] = 1;
  v15 = objc_opt_self();
  v16 = [v15 defaultSessionConfiguration];
  v17 = [v15 defaultSessionConfiguration];
  [v16 setTimeoutIntervalForRequest_];
  [v17 setTimeoutIntervalForRequest_];
  [v16 setURLCache_];
  [v17 setURLCache_];
  [v16 setRequestCachePolicy_];
  [v17 setRequestCachePolicy_];
  if ((a1 & 0x100) != 0)
  {
    v18 = [objc_opt_self() mainBundle];
    v19 = [v18 bundleIdentifier];

    v20 = [objc_allocWithZone(MEMORY[0x1E698DCC8]) initWithIdentifier_];
    [v16 set:v20 appleIDContext:?];
  }

  *&a4[OBJC_IVAR____TtC17CoreODIEssentials14DIPHTTPSession_nsurlSessionConfiguration] = v16;
  *&a4[OBJC_IVAR____TtC17CoreODIEssentials14DIPHTTPSession_anonymousNSURLSessionConfiguration] = v17;
  v31.receiver = a4;
  v31.super_class = ObjectType;
  v21 = v16;
  v22 = v17;
  v23 = objc_msgSendSuper2(&v31, sel_init);
  v24 = objc_opt_self();
  v25 = v23;
  v26 = [v24 sessionWithConfiguration:v21 delegate:v25 delegateQueue:0];
  v27 = *&v25[OBJC_IVAR____TtC17CoreODIEssentials14DIPHTTPSession__urlSession];
  *&v25[OBJC_IVAR____TtC17CoreODIEssentials14DIPHTTPSession__urlSession] = v26;

  v28 = [v24 sessionWithConfiguration:v22 delegate:v25 delegateQueue:0];
  __swift_destroy_boxed_opaque_existential_1Tm(v32);
  v29 = *&v25[OBJC_IVAR____TtC17CoreODIEssentials14DIPHTTPSession__anonymousURLSession];
  *&v25[OBJC_IVAR____TtC17CoreODIEssentials14DIPHTTPSession__anonymousURLSession] = v28;

  return v25;
}

void *sub_1DAFBF884(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v31 = a2;
  v14 = *(a7 - 8);
  v15 = MEMORY[0x1EEE9AC00](a1);
  v17 = &v32[-1] - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v32[-1] - v18;
  v33 = v20;
  v34 = v21;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v32);
  (*(*(a6 - 8) + 32))(boxed_opaque_existential_0, a3, a6);
  (*(v14 + 32))(v19, a4, a7);
  v23 = swift_allocObject();
  v24 = __swift_mutable_project_boxed_opaque_existential_1(v32, v33);
  MEMORY[0x1EEE9AC00](v24);
  v26 = (&v32[-1] - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v27 + 16))(v26);
  v28 = *v26;
  (*(v14 + 16))(v17, v19, a7);
  v29 = sub_1DAFBFD90(a1, v31, v28, v17, v23, a7, a9);
  (*(v14 + 8))(v19, a7);
  __swift_destroy_boxed_opaque_existential_1Tm(v32);
  return v29;
}

void *sub_1DAFBFAE8(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v28[3] = &type metadata for NullDiskCommand;
  v28[4] = &off_1F56CD610;
  v8 = type metadata accessor for DIPAssessmentStaticWebService();
  v27[3] = v8;
  v27[4] = &off_1F56C4838;
  v27[0] = a3;
  a4[2] = a1;
  a4[3] = a2;
  sub_1DAF3523C(v27, (a4 + 4));
  sub_1DAF3523C(v28, (a4 + 9));
  sub_1DAF3523C(v27, v26);
  v9 = __swift_mutable_project_boxed_opaque_existential_1(v26, v26[3]);
  MEMORY[0x1EEE9AC00](v9);
  v11 = (&v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v12 + 16))(v11);
  v13 = *v11;
  v25[3] = v8;
  v25[4] = &off_1F56C4838;
  v25[0] = v13;
  type metadata accessor for ServerTimeSeedProvider();
  v14 = swift_allocObject();
  v15 = __swift_mutable_project_boxed_opaque_existential_1(v25, v8);
  MEMORY[0x1EEE9AC00](v15);
  v17 = (&v21 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v18 + 16))(v17);
  v19 = *v17;
  v23 = v8;
  v24 = &off_1F56C4838;
  *&v22 = v19;

  swift_defaultActor_initialize();
  *(v14 + 168) = 0;
  *(v14 + 176) = MEMORY[0x1E69E7CC0];
  *(v14 + 184) = 0;
  *(v14 + 192) = 0;
  *(v14 + 200) = 45;
  *(v14 + 208) = 0xE100000000000000;
  sub_1DAF96EAC(&v22, v14 + 112);
  *(v14 + 152) = a1;
  *(v14 + 160) = a2;
  __swift_destroy_boxed_opaque_existential_1Tm(v25);
  __swift_destroy_boxed_opaque_existential_1Tm(v28);
  __swift_destroy_boxed_opaque_existential_1Tm(v27);
  __swift_destroy_boxed_opaque_existential_1Tm(v26);
  a4[14] = v14;
  return a4;
}

void *sub_1DAFBFD90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7)
{
  v34[3] = a6;
  v34[4] = a7;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v34);
  (*(*(a6 - 8) + 32))(boxed_opaque_existential_0, a4, a6);
  v14 = type metadata accessor for DIPAssessmentStaticWebService();
  v33[3] = v14;
  v33[4] = &off_1F56C4838;
  v33[0] = a3;
  a5[2] = a1;
  a5[3] = a2;
  sub_1DAF3523C(v33, (a5 + 4));
  sub_1DAF3523C(v34, (a5 + 9));
  sub_1DAF3523C(v33, v32);
  v15 = __swift_mutable_project_boxed_opaque_existential_1(v32, v32[3]);
  MEMORY[0x1EEE9AC00](v15);
  v17 = (&v27 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v18 + 16))(v17);
  v19 = *v17;
  v31[3] = v14;
  v31[4] = &off_1F56C4838;
  v31[0] = v19;
  type metadata accessor for ServerTimeSeedProvider();
  v20 = swift_allocObject();
  v21 = __swift_mutable_project_boxed_opaque_existential_1(v31, v14);
  MEMORY[0x1EEE9AC00](v21);
  v23 = (&v27 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v24 + 16))(v23);
  v25 = *v23;
  v29 = v14;
  v30 = &off_1F56C4838;
  *&v28 = v25;

  swift_defaultActor_initialize();
  *(v20 + 168) = 0;
  *(v20 + 176) = MEMORY[0x1E69E7CC0];
  *(v20 + 184) = 0;
  *(v20 + 192) = 0;
  *(v20 + 200) = 45;
  *(v20 + 208) = 0xE100000000000000;
  sub_1DAF96EAC(&v28, v20 + 112);
  *(v20 + 152) = a1;
  *(v20 + 160) = a2;
  __swift_destroy_boxed_opaque_existential_1Tm(v31);
  __swift_destroy_boxed_opaque_existential_1Tm(v34);
  __swift_destroy_boxed_opaque_existential_1Tm(v33);
  __swift_destroy_boxed_opaque_existential_1Tm(v32);
  a5[14] = v20;
  return a5;
}

unint64_t sub_1DAFC003C()
{
  result = qword_1ECC0EC00;
  if (!qword_1ECC0EC00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0EC00);
  }

  return result;
}

unint64_t sub_1DAFC00A4()
{
  result = qword_1ECC0EC08;
  if (!qword_1ECC0EC08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0EC08);
  }

  return result;
}