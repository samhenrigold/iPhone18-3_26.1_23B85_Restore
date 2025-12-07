uint64_t sub_1A7D5864C()
{
  sub_1A7D2BA50();
  sub_1A7E21E70();
  sub_1A7CC99E0(v0 + 16, v0 + 96);
  sub_1A7CC7FFC(&qword_1EB2B6620, &qword_1A7E4A880);
  sub_1A7CC7FFC(&qword_1EB2B6628, &qword_1A7E4A888);
  if (swift_dynamicCast())
  {
    sub_1A7B14FF0((v0 + 136), v0 + 56);
    v4 = *(v0 + 80);
    v5 = *(v0 + 88);
    sub_1A7CC9920(v0 + 56, v4);
    v6 = swift_task_alloc();
    *(v0 + 184) = v6;
    *v6 = v0;
    v6[1] = sub_1A7D588AC;

    return MEMORY[0x1EEDEE498](v4, v5);
  }

  else
  {
    *(v0 + 168) = 0;
    *(v0 + 152) = 0u;
    *(v0 + 136) = 0u;
    sub_1A7D58E5C(v0 + 136);
    sub_1A7CC9920(v0 + 16, *(v0 + 40));
    sub_1A7E21E50();
    sub_1A7B0CD6C((v0 + 16));
    v1 = *(v0 + 8);

    return v1(0);
  }
}

uint64_t sub_1A7D588AC()
{
  *(*v1 + 192) = v0;

  if (v0)
  {
    v2 = sub_1A7D58A2C;
  }

  else
  {
    v2 = sub_1A7D589C0;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1A7D589C0()
{
  sub_1A7B0CD6C(v0 + 7);
  sub_1A7B0CD6C(v0 + 2);
  v1 = v0[1];

  return v1(0);
}

uint64_t sub_1A7D58A2C()
{
  sub_1A7B0CD6C(v0 + 7);
  sub_1A7B0CD6C(v0 + 2);
  v1 = v0[24];
  sub_1A7CC7FFC(&qword_1EB2B5CF8, &qword_1A7E523D0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1A7E418C0;
  sub_1A7D58E08();
  v3 = sub_1A7E21F10();
  *(v2 + 56) = MEMORY[0x1E69E6158];
  *(v2 + 32) = v3;
  *(v2 + 40) = v4;
  sub_1A7E231D0();

  v5 = v0[1];

  return v5(1);
}

uint64_t sub_1A7D58B30(uint64_t a1, uint64_t a2, double a3)
{
  v18 = a2;
  v20 = a1;
  v3 = sub_1A7E21F80();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EB2B3010 != -1)
  {
    goto LABEL_14;
  }

  while (1)
  {
    sub_1A7B0CB00(v3, qword_1EB2DC0B0);
    v7 = sub_1A7E21F60();
    v8 = v7;
    v9 = *(v7 + 16);
    if (!v9)
    {
      break;
    }

    v19 = v3;
    v3 = 0;
    v10 = (v4 + 8);
    v11 = v7 + 40;
    while (v3 < *(v8 + 16))
    {
      v4 = *(v11 - 8);
      sub_1A7E21E40();
      v13 = sub_1A7E21F50();
      v15 = v14;
      (*v10)(v6, v19);
      if (v15)
      {
        if (v13 == v20 && v15 == v18)
        {

LABEL_11:

          sub_1A7D2BA50();
          return sub_1A7E21E60();
        }

        v12 = sub_1A7E230D0();

        if (v12)
        {
          goto LABEL_11;
        }
      }

      ++v3;
      v11 += 16;
      if (v9 == v3)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_14:
    swift_once();
  }

LABEL_12:

  return 0;
}

uint64_t sub_1A7D58D54()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1A7CD2A2C;

  return sub_1A7D57ED0(v2, v3, v4);
}

unint64_t sub_1A7D58E08()
{
  result = qword_1EB2B6618;
  if (!qword_1EB2B6618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B6618);
  }

  return result;
}

uint64_t sub_1A7D58E5C(uint64_t a1)
{
  v2 = sub_1A7CC7FFC(&unk_1EB2B6630, qword_1A7E4A890);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

char *sub_1A7D59110(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v9 = a2;
  v10 = a1;
  *(v5 + OBJC_IVAR___IDSGLP2PLinkEngineHandle_engine) = 0;
  *(v5 + OBJC_IVAR___IDSGLP2PLinkEngineHandle_idsPrimarySecondaryLinkSelector) = 0;
  v15.super_class = IDSGLP2PLinkEngineHandle;
  v11 = objc_msgSendSuper2(&v15, sel_init);
  type metadata accessor for IDSConfigurationDefaults();
  inited = swift_initStackObject();
  v13 = v11;
  *&v13[OBJC_IVAR___IDSGLP2PLinkEngineHandle_engine] = sub_1A7D5A9EC(v10, v9, a3, inited, a4, a5);

  return v13;
}

void sub_1A7D595F8(char *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t))
{
  if (a3)
  {
    v6 = sub_1A7E22290();
    if (*&a1[OBJC_IVAR___IDSGLP2PLinkEngineHandle_engine])
    {
      v8 = v6;
      v9 = v7;
      v10 = a1;

      a4(v8, v9);
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_1A7D59920(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(v3 + OBJC_IVAR___IDSGLP2PLinkEngineHandle_engine))
  {
    v6 = *(a1 + OBJC_IVAR___IDSTestableLinkWithScheduler_link);
    v7 = sub_1A7D5AF44();

    v8 = LinkEngine.link(_:)(a2, a3);
    if (v8)
    {
      v9 = v8;
      swift_retain_n();
      os_unfair_lock_lock(v9 + 10);
      v10[3] = &type metadata for LinkEngineLinkIDSTestableLinkComponent;
      v10[0] = v6;
      v10[1] = v7;

      sub_1A7CC8D74(v10, &type metadata for LinkEngineLinkIDSTestableLinkComponent);
      os_unfair_lock_unlock(v9 + 10);
    }

    else
    {
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_1A7D59AAC()
{
  if (*(v0 + OBJC_IVAR___IDSGLP2PLinkEngineHandle_engine))
  {
    v1 = qword_1EB2B2DC8;

    if (v1 != -1)
    {
      swift_once();
    }

    os_unfair_lock_lock(&dword_1EB2DC090);

    MEMORY[0x1AC561DF0](v2);
    if (*((qword_1EB2DC098 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((qword_1EB2DC098 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1A7E22560();
    }

    sub_1A7E225A0();
    os_unfair_lock_unlock(&dword_1EB2DC090);
  }

  else
  {
    __break(1u);
  }
}

void sub_1A7D59BEC()
{
  v1 = *(v0 + OBJC_IVAR___IDSGLP2PLinkEngineHandle_engine);
  if (!v1)
  {
    goto LABEL_11;
  }

  v2 = qword_1EB2B2DC8;

  if (v2 != -1)
  {
    swift_once();
  }

  os_unfair_lock_lock(&dword_1EB2DC090);

  v3 = sub_1A7D5AD1C(&qword_1EB2DC098, v1);

  if (qword_1EB2DC098 >> 62)
  {
    v5 = sub_1A7E22DA0();
    if (v5 >= v3)
    {
      goto LABEL_6;
    }

    goto LABEL_10;
  }

  v5 = *((qword_1EB2DC098 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v5 < v3)
  {
LABEL_10:
    __break(1u);
LABEL_11:
    __break(1u);
    return;
  }

LABEL_6:
  sub_1A7DE5610(v3, v4, v5);
  os_unfair_lock_unlock(&dword_1EB2DC090);
}

uint64_t sub_1A7D59D44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[11] = a4;
  v5[12] = v4;
  v5[9] = a2;
  v5[10] = a3;
  v5[8] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1A7D59D6C, 0, 0);
}

void sub_1A7D59D6C()
{
  v1 = v0[12];
  v2 = OBJC_IVAR___IDSGLP2PLinkEngineHandle_engine;
  if (!*(v1 + OBJC_IVAR___IDSGLP2PLinkEngineHandle_engine))
  {
    __break(1u);
    goto LABEL_18;
  }

  v3 = v0[10];
  v4 = v0[11];

  v5 = LinkEngine.link(_:)(v3, v4);
  v0[13] = v5;

  if (!v5)
  {
    goto LABEL_14;
  }

  v6 = LinkEngineLink.testableLink.getter();
  v0[14] = v6;
  if (!v6)
  {

    goto LABEL_14;
  }

  v8 = *(v1 + v2);
  if (!v8)
  {
LABEL_18:
    __break(1u);
    return;
  }

  v9 = v7;
  v10 = v6;
  v11 = *(v8 + 16);

  os_unfair_lock_lock((v11 + 200));
  sub_1A7CC9630((v11 + 208), v0 + 2);
  os_unfair_lock_unlock((v11 + 200));
  sub_1A7CC7FFC(&qword_1EB2B66D0, &unk_1A7E41920);
  type metadata accessor for IDSLinksQualityBurstsOngoingTask();
  v12 = swift_dynamicCast();
  if (v12)
  {
    v13 = v0[6];
    v0[15] = v13;

    if (v13)
    {
      v14 = swift_task_alloc();
      v0[16] = v14;
      *v14 = v0;
      v14[1] = sub_1A7D59FA8;
      v16 = v0[8];
      v15 = v0[9];

      sub_1A7DFDEDC(v16, v15, v10, v9);
      return;
    }
  }

  else
  {
    v0[6] = 0;
  }

  swift_unknownObjectRelease();
LABEL_14:
  v17 = v0[1];

  v17();
}

uint64_t sub_1A7D59FA8()
{

  return MEMORY[0x1EEE6DFA0](sub_1A7D5A0C0, 0, 0);
}

uint64_t sub_1A7D5A0C0()
{
  swift_unknownObjectRelease();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A7D5A2B8(void *a1, void *a2, void *aBlock, void *a4)
{
  v4[2] = a4;
  v4[3] = _Block_copy(aBlock);
  v8 = a1;
  v9 = a2;
  a4;
  v10 = sub_1A7E21A10();
  v12 = v11;

  v4[4] = v10;
  v4[5] = v12;
  v13 = sub_1A7E22290();
  v15 = v14;

  v4[6] = v15;
  v16 = swift_task_alloc();
  v4[7] = v16;
  *v16 = v4;
  v16[1] = sub_1A7D5A3C8;

  return sub_1A7D59D44(v10, v12, v13, v15);
}

uint64_t sub_1A7D5A3C8()
{
  v1 = *v0;
  v2 = *(*v0 + 40);
  v3 = *(*v0 + 32);
  v4 = *(*v0 + 24);
  v5 = *(*v0 + 16);
  v6 = *v0;

  sub_1A7CC7E50(v3, v2);

  if (v4)
  {
    v7 = *(v1 + 24);
    v7[2](v7);
    _Block_release(v7);
  }

  v8 = *(v6 + 8);

  return v8();
}

void sub_1A7D5A568()
{
  v1 = *(v0 + OBJC_IVAR___IDSGLP2PLinkEngineHandle_engine);
  if (v1)
  {
    if (*(v1 + 24))
    {

      sub_1A7D99998(&v2);
      IDSLinksCompactQualityReport.asArray.getter();
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_1A7D5A6C8(char a1, uint64_t a2, uint64_t a3)
{
  if (*(v3 + OBJC_IVAR___IDSGLP2PLinkEngineHandle_engine))
  {

    v7 = LinkEngine.link(_:)(a2, a3);

    if (v7)
    {
      os_unfair_lock_lock(v7 + 10);
      v9 = &type metadata for IDSLinkIDComponent;
      v8[0] = a1;
      sub_1A7CC8D74(v8, &type metadata for IDSLinkIDComponent);
      os_unfair_lock_unlock(v7 + 10);
    }
  }

  else
  {
    __break(1u);
  }
}

void __swiftcall IDSGLP2PLinkEngineHandle.init()(IDSGLP2PLinkEngineHandle *__return_ptr retstr)
{
  v1 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  [v1 init];
}

unint64_t type metadata accessor for IDSGLP2PLinkEngineHandle()
{
  result = qword_1EB2B66B8;
  if (!qword_1EB2B66B8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EB2B66B8);
  }

  return result;
}

uint64_t sub_1A7D5A92C()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_1A7CD2A2C;

  return sub_1A7D5A2B8(v2, v3, v5, v4);
}

uint64_t sub_1A7D5A9EC(char a1, char a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{

  type metadata accessor for IDSGLP2PLinkEngine();
  v11 = swift_allocObject();
  type metadata accessor for LinkEngine();
  swift_allocObject();
  v12 = LinkEngine.init()();
  *(v11 + 16) = v12;
  if (a1)
  {
    v13 = v12;
    type metadata accessor for IDSLinksQualityBasicStatsPlugin();
    v14 = swift_allocObject();
    *(v14 + 16) = 0xD00000000000001FLL;
    *(v14 + 24) = 0x80000001A7EAFA90;

    v15 = sub_1A7CE2B54(MEMORY[0x1E69E7CC0]);
    *(v14 + 64) = 0;
    *(v14 + 72) = v15;
    *(v14 + 48) = xmmword_1A7E494C0;
    *(v14 + 32) = a5;
    *(v14 + 40) = a6;

    sub_1A7D9A2BC(v16, v13);

    if (a2)
    {
      type metadata accessor for IDSLinksQualityBurstsPlugin();
      v17 = swift_allocObject();
      *(v17 + 16) = 0xD00000000000001BLL;
      *(v17 + 24) = 0x80000001A7EAFAD0;
      *(v17 + 48) = xmmword_1A7E494C0;
      *(v17 + 32) = a5;
      *(v17 + 40) = a6;

      sub_1A7D9A480(v18, v13);
    }

    type metadata accessor for IDSLinksQualityReportPlugin();
    v19 = swift_allocObject();
    swift_weakInit();
    *(v19 + 16) = 0;
    *(v19 + 24) = 0;
    sub_1A7D5AF9C(v22, v19 + 24);
    *(v19 + 32) = 0xD000000000000014;
    *(v19 + 40) = 0x80000001A7EAFAB0;

    sub_1A7D9A5E4(v20, v13);
  }

  else
  {

    v19 = 0;
  }

  *(v11 + 24) = v19;
  return v11;
}

unint64_t sub_1A7D5AC18(unint64_t a1, uint64_t a2)
{
  v2 = a1 & 0xFFFFFFFFFFFFFF8;
  if (a1 >> 62)
  {
LABEL_16:
    v11 = a1;
    v12 = a2;
    v13 = sub_1A7E22DA0();
    a2 = v12;
    v3 = v13;
    a1 = v11;
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = 0;
  v5 = a1 & 0xC000000000000001;
  while (v3 != v4)
  {
    if (v5)
    {
      v7 = a1;
      v8 = a2;
      v9 = MEMORY[0x1AC562480](v4, a1);
      swift_unknownObjectRelease();
      a1 = v7;
      a2 = v8;
      if (v9 == v8)
      {
        return v4;
      }
    }

    else
    {
      if (v4 >= *(v2 + 16))
      {
        __break(1u);
LABEL_15:
        __break(1u);
        goto LABEL_16;
      }

      if (*(a1 + 8 * v4 + 32) == a2)
      {
        return v4;
      }
    }

    if (__OFADD__(v4++, 1))
    {
      goto LABEL_15;
    }
  }

  return 0;
}

uint64_t sub_1A7D5AD1C(unint64_t *a1, uint64_t a2)
{
  v7 = *a1;
  v8 = sub_1A7D5AC18(*a1, a2);
  v10 = v8;
  if (v2)
  {
    return v10;
  }

  if (v9)
  {
    if (v7 >> 62)
    {
      return sub_1A7E22DA0();
    }

    return *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v11 = v8 + 1;
  if (__OFADD__(v8, 1))
  {
    __break(1u);
    goto LABEL_8;
  }

  while (1)
  {
    if (v7 >> 62)
    {
      if (v11 == sub_1A7E22DA0())
      {
        return v10;
      }
    }

    else if (v11 == *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      return v10;
    }

    if ((v7 & 0xC000000000000001) == 0)
    {
      break;
    }

    v16 = MEMORY[0x1AC562480](v11, v7);
    swift_unknownObjectRelease();
    if (v16 != a2)
    {
      if (v10 != v11)
      {
        v3 = MEMORY[0x1AC562480](v10, v7);
        v14 = MEMORY[0x1AC562480](v11, v7);
        goto LABEL_21;
      }

LABEL_9:
      v12 = __OFADD__(v10++, 1);
      if (v12)
      {
        goto LABEL_42;
      }
    }

LABEL_10:
    v12 = __OFADD__(v11++, 1);
    if (v12)
    {
      goto LABEL_41;
    }
  }

  if ((v11 & 0x8000000000000000) == 0)
  {
    v13 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v11 >= v13)
    {
      goto LABEL_40;
    }

    v14 = *(v7 + 32 + 8 * v11);
    if (v14 != a2)
    {
      if (v10 != v11)
      {
        if ((v10 & 0x8000000000000000) != 0)
        {
          goto LABEL_43;
        }

        if (v10 >= v13)
        {
          goto LABEL_44;
        }

        v3 = *(v7 + 32 + 8 * v10);

LABEL_21:
        if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v7 & 0x8000000000000000) != 0 || (v7 & 0x4000000000000000) != 0)
        {
          v7 = sub_1A7CDD634();
          v15 = (v7 >> 62) & 1;
        }

        else
        {
          LODWORD(v15) = 0;
        }

        v4 = v7 & 0xFFFFFFFFFFFFFF8;
        *((v7 & 0xFFFFFFFFFFFFFF8) + 8 * v10 + 0x20) = v14;

        if ((v7 & 0x8000000000000000) != 0 || v15)
        {
          v7 = sub_1A7CDD634();
          v4 = v7 & 0xFFFFFFFFFFFFFF8;
          if ((v11 & 0x8000000000000000) != 0)
          {
LABEL_37:
            __break(1u);
            return v10;
          }
        }

        else if ((v11 & 0x8000000000000000) != 0)
        {
          goto LABEL_37;
        }

        if (v11 >= *(v4 + 16))
        {
          goto LABEL_45;
        }

LABEL_8:
        *(v4 + 8 * v11 + 32) = v3;

        *a1 = v7;
      }

      goto LABEL_9;
    }

    goto LABEL_10;
  }

  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
  return sub_1A7E22DA0();
}

unint64_t sub_1A7D5AF44()
{
  result = qword_1EB2B3108;
  if (!qword_1EB2B3108)
  {
    type metadata accessor for _IDSTestableLinkWithScheduler();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B3108);
  }

  return result;
}

uint64_t CLIString.color(_:)@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = *(v2 + 8);
  v5 = *(v2 + 16);
  v6 = *(v2 + 40);
  *a2 = *v2;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5;
  *(a2 + 24) = *(v2 + 24);
  *(a2 + 40) = v6;
  *(a2 + 17) = v3;
}

uint64_t CLIString.wrapped(toMaxWidth:indent:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *(v3 + 8);
  v5 = *(v3 + 16);
  v6 = *(v3 + 17);
  *a3 = *v3;
  *(a3 + 8) = v4;
  *(a3 + 16) = v5;
  *(a3 + 17) = v6;
  *(a3 + 24) = a1;
  *(a3 + 32) = a2;
  *(a3 + 40) = 1;
}

uint64_t CLIString.bold.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 17);
  v4 = *(v1 + 40);
  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 17) = v3;
  *(a1 + 24) = *(v1 + 24);
  *(a1 + 40) = v4;
  *(a1 + 16) = 1;
}

uint64_t CLIString.description.getter()
{
  v0 = sub_1A7D5B478(0);
  v1 = *(v0 + 16);
  if (v1)
  {
    v10 = MEMORY[0x1E69E7CC0];
    sub_1A7CCE918(0, v1, 0);
    v2 = (v0 + 40);
    do
    {
      v4 = *(v2 - 1);
      v3 = *v2;
      v6 = *(v10 + 16);
      v5 = *(v10 + 24);

      if (v6 >= v5 >> 1)
      {
        sub_1A7CCE918((v5 > 1), v6 + 1, 1);
      }

      *(v10 + 16) = v6 + 1;
      v7 = v10 + 16 * v6;
      *(v7 + 32) = v4;
      *(v7 + 40) = v3;
      v2 += 3;
      --v1;
    }

    while (v1);
  }

  sub_1A7CC7FFC(&qword_1EB2B4AA0, &qword_1A7E45010);
  sub_1A7CD0F8C();
  v8 = sub_1A7E221F0();

  return v8;
}

uint64_t CLIString.Style.hashValue.getter()
{
  v1 = *v0;
  sub_1A7E23200();
  MEMORY[0x1AC562AF0](v1);
  return sub_1A7E23240();
}

uint64_t CLIString.Color.hashValue.getter()
{
  v1 = *v0;
  sub_1A7E23200();
  MEMORY[0x1AC562AF0](v1);
  return sub_1A7E23240();
}

uint64_t CLIString.string.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t CLIString.string.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

__n128 CLIString.format.getter@<Q0>(__n128 *a1@<X8>)
{
  v2 = *(v1 + 40);
  result = *(v1 + 24);
  *a1 = result;
  a1[1].n128_u8[0] = v2;
  return result;
}

__n128 CLIString.format.setter(__n128 *a1)
{
  v2 = a1[1].n128_u8[0];
  result = *a1;
  *(v1 + 24) = *a1;
  *(v1 + 40) = v2;
  return result;
}

uint64_t CLIString.padded(toWidth:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(v2 + 8);
  v4 = *(v2 + 16);
  v5 = *(v2 + 17);
  *a2 = *v2;
  *(a2 + 8) = v3;
  *(a2 + 16) = v4;
  *(a2 + 17) = v5;
  *(a2 + 24) = a1;
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
}

uint64_t sub_1A7D5B478(uint64_t result)
{
  v3 = *v1;
  v2 = *(v1 + 8);
  v35 = *(v1 + 16);
  v4 = *(v1 + 17);
  v5 = *(v1 + 24);
  if (*(v1 + 40))
  {
    if (*(v1 + 40) == 1)
    {
      v6 = *(v1 + 32);
      v7 = result;

      String.wrappedLines(toMaxWidth:indent:firstLineStartingLength:)(v5, v6, v7, v3, v2);

      sub_1A7CC7FFC(&qword_1EB2B4AA0, &qword_1A7E45010);
      sub_1A7CD0F8C();
      sub_1A7E221F0();
    }

    else
    {
    }

LABEL_7:
    sub_1A7CC7DFC();
    v8 = sub_1A7E22A40();

    if (v4 || (v35 & 1) != 0)
    {
      v9 = *(v8 + 16);
      if (v9)
      {
        v37 = MEMORY[0x1E69E7CC0];
        sub_1A7CCE968(0, v9, 0);
        v10 = v37;
        v11 = (v8 + 56);
        do
        {
          v12 = *(v11 - 3);
          v13 = *(v11 - 2);
          v14 = *v11;
          v36 = *(v11 - 1);

          sub_1A7E22B70();

          v15 = sub_1A7E23090();
          MEMORY[0x1AC561C90](v15);

          MEMORY[0x1AC561C90](59, 0xE100000000000000);
          v16 = sub_1A7E23090();
          MEMORY[0x1AC561C90](v16);

          MEMORY[0x1AC561C90](109, 0xE100000000000000);
          v17 = MEMORY[0x1AC561BF0](v12, v13, v36, v14);
          MEMORY[0x1AC561C90](v17);

          MEMORY[0x1AC561C90](0x6D303B305B1BLL, 0xE600000000000000);
          v18 = sub_1A7E229D0();

          v20 = *(v37 + 16);
          v19 = *(v37 + 24);
          if (v20 >= v19 >> 1)
          {
            sub_1A7CCE968((v19 > 1), v20 + 1, 1);
          }

          *(v37 + 16) = v20 + 1;
          v21 = (v37 + 24 * v20);
          v21[4] = 23323;
          v21[5] = 0xE200000000000000;
          v21[6] = v18;
          v11 += 4;
          --v9;
        }

        while (v9);
LABEL_20:

        return v10;
      }
    }

    else
    {
      v22 = *(v8 + 16);
      if (v22)
      {
        v38 = MEMORY[0x1E69E7CC0];
        sub_1A7CCE968(0, v22, 0);
        v10 = v38;
        v23 = (v8 + 56);
        do
        {
          v24 = *(v23 - 3);
          v25 = *(v23 - 2);
          v26 = *(v23 - 1);
          v27 = *v23;

          v28 = MEMORY[0x1AC561BF0](v24, v25, v26, v27);
          v30 = v29;
          v31 = sub_1A7E229D0();

          v33 = *(v38 + 16);
          v32 = *(v38 + 24);
          if (v33 >= v32 >> 1)
          {
            sub_1A7CCE968((v32 > 1), v33 + 1, 1);
          }

          *(v38 + 16) = v33 + 1;
          v34 = (v38 + 24 * v33);
          v34[4] = v28;
          v34[5] = v30;
          v34[6] = v31;
          v23 += 4;
          --v22;
        }

        while (v22);
        goto LABEL_20;
      }
    }

    return MEMORY[0x1E69E7CC0];
  }

  if (!__OFSUB__(v5, result))
  {
    sub_1A7CC7DFC();
    sub_1A7E22A30();
    goto LABEL_7;
  }

  __break(1u);
  return result;
}

unint64_t sub_1A7D5B938()
{
  result = qword_1EB2B66D8;
  if (!qword_1EB2B66D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B66D8);
  }

  return result;
}

unint64_t sub_1A7D5B990()
{
  result = qword_1EB2B66E0;
  if (!qword_1EB2B66E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B66E0);
  }

  return result;
}

__n128 sub_1A7D5B9E4(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 25) = *(a2 + 25);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1A7D5B9F8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 41))
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

uint64_t sub_1A7D5BA40(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 41) = 1;
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

    *(result + 41) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CLIString.Format(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 17))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 16);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for CLIString.Format(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_1A7D5BB28(uint64_t a1)
{
  if (*(a1 + 16) <= 1u)
  {
    return *(a1 + 16);
  }

  else
  {
    return (*a1 + 2);
  }
}

uint64_t sub_1A7D5BB40(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    LOBYTE(a2) = 2;
  }

  *(result + 16) = a2;
  return result;
}

uint64_t getEnumTagSinglePayload for CLIString.Color(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
    goto LABEL_17;
  }

  if (a2 + 6 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 6) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 6;
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

      return (*a1 | (v4 << 8)) - 6;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v8 = v6 - 7;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for CLIString.Color(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFA)
  {
    v4 = 0;
  }

  if (a2 > 0xF9)
  {
    v5 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
    *result = a2 + 6;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_1A7D5BCC8(uint64_t a1)
{
  v2 = v1;
  v25 = *MEMORY[0x1E69E9840];
  v22[0] = 0;
  v3 = sub_1A7E22070();
  if (MEMORY[0x1AC561960](1, v3, v22))
  {
    v4 = 80;
  }

  else
  {
    v4 = WORD1(v22[0]);
  }

  v5 = v1[3];
  v6 = v1[4];
  sub_1A7CC9878(v1, v5);
  v7 = sub_1A7E22360();
  v8 = __OFSUB__(v4, v7);
  v9 = v4 - v7;
  if (v8)
  {
    __break(1u);
LABEL_8:
    __break(1u);
  }

  (*(v6 + 16))(v22, v9, 0, 0, v5, v6);
  v10 = v23;
  v11 = v24;
  sub_1A7CC9878(v22, v23);
  v12 = (*(v11 + 8))(v10, v11);
  if (__OFADD__(v12, sub_1A7E22360()))
  {
    goto LABEL_8;
  }

  v13 = v23;
  v14 = v24;
  sub_1A7CC9878(v22, v23);
  (*(v14 + 16))(v13, v14);
  v15 = v23;
  v16 = v24;
  sub_1A7CC9878(v22, v23);
  v17 = (*(v16 + 24))(v15, v16);
  MEMORY[0x1EEE9AC00](v17);
  v21[2] = v2;
  v18 = sub_1A7DDEC24(sub_1A7CD2DA4, v21, v17);

  sub_1A7B0CD6C(v22);
  v22[0] = v18;

  sub_1A7CC7FFC(&qword_1EB2B4AA0, &qword_1A7E45010);
  sub_1A7CD0F8C();
  v19 = sub_1A7E221F0();
  swift_bridgeObjectRelease_n();
  return v19;
}

uint64_t sub_1A7D5BF20(uint64_t a1)
{
  v1 = a1;
  v20 = *MEMORY[0x1E69E9840];
  v17[0] = 0;
  v2 = sub_1A7E22070();
  if (MEMORY[0x1AC561960](1, v2, v17))
  {
    v5 = 80;
  }

  else
  {
    v5 = WORD1(v17[0]);
  }

  v17[0] = 0;
  v17[1] = 0xE000000000000000;
  sub_1A7D7EE30(v1 | (v1 << 8), v3, v4);
  sub_1A7CC7DFC();
  v6 = sub_1A7E22A30();
  v8 = v7;

  v9 = sub_1A7CCC2B0(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v11 = *(v9 + 2);
  v10 = *(v9 + 3);
  if (v11 >= v10 >> 1)
  {
    v9 = sub_1A7CCC2B0((v10 > 1), v11 + 1, 1, v9);
  }

  *(v9 + 2) = v11 + 1;
  v12 = &v9[48 * v11];
  *(v12 + 4) = v6;
  *(v12 + 5) = v8;
  *(v12 + 24) = 0;
  *(v12 + 7) = 0;
  *(v12 + 8) = 0;
  v12[72] = 2;
  CLIText.formatted(maxWidth:pad:useColors:)(v5, 0, v17);

  v13 = v18;
  v14 = v19;
  sub_1A7CC9878(v17, v18);
  (*(v14 + 24))(v13, v14);
  sub_1A7CC7FFC(&qword_1EB2B4AA0, &qword_1A7E45010);
  sub_1A7CD0F8C();
  v15 = sub_1A7E221F0();

  sub_1A7B0CD6C(v17);
  return v15;
}

uint64_t sub_1A7D5C128(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v7[0] = 0;
  v1 = sub_1A7E22070();
  if (MEMORY[0x1AC561960](1, v1, v7))
  {
    v2 = 80;
  }

  else
  {
    v2 = WORD1(v7[0]);
  }

  CLIText.formatted(maxWidth:pad:useColors:)(v2, 0, v7);
  v3 = v8;
  v4 = v9;
  sub_1A7CC9878(v7, v8);
  (*(v4 + 24))(v3, v4);
  sub_1A7CC7FFC(&qword_1EB2B4AA0, &qword_1A7E45010);
  sub_1A7CD0F8C();
  v5 = sub_1A7E221F0();

  sub_1A7B0CD6C(v7);
  return v5;
}

uint64_t CLIRule.formatted(maxWidth:pad:useColors:)@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>, uint64_t a4@<X2>)
{
  v5 = a2;
  sub_1A7D7EE30(*v4 | (*v4 << 8), a2, a4);
  sub_1A7CC7DFC();
  v8 = sub_1A7E22A30();
  v10 = v9;

  v11 = sub_1A7CCC2B0(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v13 = *(v11 + 2);
  v12 = *(v11 + 3);
  if (v13 >= v12 >> 1)
  {
    v11 = sub_1A7CCC2B0((v12 > 1), v13 + 1, 1, v11);
  }

  *(v11 + 2) = v13 + 1;
  v14 = &v11[48 * v13];
  *(v14 + 4) = v8;
  *(v14 + 5) = v10;
  *(v14 + 24) = 0;
  *(v14 + 7) = 0;
  *(v14 + 8) = 0;
  v14[72] = 2;
  CLIText.formatted(maxWidth:pad:useColors:)(a1, v5 & 1, a3);
}

unint64_t sub_1A7D5C3A0(uint64_t a1)
{
  result = sub_1A7D5C3C8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1A7D5C3C8()
{
  result = qword_1EB2B66E8;
  if (!qword_1EB2B66E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B66E8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CLIBorderWeight(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF7)
  {
    goto LABEL_17;
  }

  if (a2 + 9 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 9) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 9;
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

      return (*a1 | (v4 << 8)) - 9;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 9;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xA;
  v8 = v6 - 10;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for CLIBorderWeight(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 9 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 9) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF7)
  {
    v4 = 0;
  }

  if (a2 > 0xF6)
  {
    v5 = ((a2 - 247) >> 8) + 1;
    *result = a2 + 9;
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
    *result = a2 + 9;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t LinkEndpoint.isCellular.getter()
{
  v1 = *v0;
  if (*(v1 + 16) && (v2 = sub_1A7CD0DFC(&type metadata for LinkEndpointIDSRAT), (v3 & 1) != 0) && (sub_1A7B0CD10(*(v1 + 56) + 32 * v2, v7), sub_1A7B1503C(v7, &v6), sub_1A7CC7FFC(&qword_1EB2B5040, &qword_1A7E44C60), swift_dynamicCast()))
  {
    v4 = 0x1FEu >> v8;
    if (v8 > 0xA)
    {
      LOBYTE(v4) = 1;
    }
  }

  else
  {
    LOBYTE(v4) = 0;
  }

  return v4 & 1;
}

unint64_t LinkEndpoint.rat.getter()
{
  v1 = *v0;
  if (!*(v1 + 16) || (v2 = sub_1A7CD0DFC(&type metadata for LinkEndpointIDSRAT), (v3 & 1) == 0))
  {
    v5 = 0;
    v6 = 1;
LABEL_6:
    LOBYTE(v9[0]) = v6;
    return v5 | (LOBYTE(v9[0]) << 32);
  }

  sub_1A7B0CD10(*(v1 + 56) + 32 * v2, v9);
  sub_1A7B1503C(v9, &v8);
  sub_1A7CC7FFC(&qword_1EB2B5040, &qword_1A7E44C60);
  v4 = swift_dynamicCast();
  if ((v4 & 1) == 0)
  {
    v5 = 0;
    v6 = v4 ^ 1;
    goto LABEL_6;
  }

  v5 = v10;
  LOBYTE(v9[0]) = 0;
  return v5 | (LOBYTE(v9[0]) << 32);
}

_OWORD *LinkEndpoint.rat.setter(uint64_t a1)
{
  if ((a1 & 0x100000000) != 0)
  {
    v2 = 0u;
    v3 = 0u;
  }

  else
  {
    *(&v3 + 1) = &type metadata for LinkEndpointIDSRAT;
    LODWORD(v2) = a1;
  }

  return sub_1A7CC8D74(&v2, &type metadata for LinkEndpointIDSRAT);
}

_OWORD *sub_1A7D5C730(int *a1)
{
  if (a1[1])
  {
    v3 = 0u;
    v4 = 0u;
  }

  else
  {
    v1 = *a1;
    *(&v4 + 1) = &type metadata for LinkEndpointIDSRAT;
    LODWORD(v3) = v1;
  }

  return sub_1A7CC8D74(&v3, &type metadata for LinkEndpointIDSRAT);
}

uint64_t (*LinkEndpoint.rat.modify(uint64_t a1))()
{
  *a1 = v1;
  sub_1A7CE072C(*v1, &v6);
  v3 = v6;
  v4 = v7;
  if (v7)
  {
    v3 = 0;
  }

  *(a1 + 8) = v3;
  *(a1 + 12) = v4;
  return sub_1A7D5C7FC;
}

_OWORD *sub_1A7D5C7FC(uint64_t a1)
{
  if (*(a1 + 12))
  {
    v3 = 0u;
    v4 = 0u;
  }

  else
  {
    v1 = *(a1 + 8);
    *(&v4 + 1) = &type metadata for LinkEndpointIDSRAT;
    LODWORD(v3) = v1;
  }

  return sub_1A7CC8D74(&v3, &type metadata for LinkEndpointIDSRAT);
}

uint64_t LinkDefinition.isDelegated.getter()
{
  v1 = *(v0 + 8);
  if (!*(v1 + 16) || (v2 = sub_1A7CD0DFC(&type metadata for LinkEndpointInterface), (v3 & 1) == 0) || (sub_1A7B0CD10(*(v1 + 56) + 32 * v2, v7), sub_1A7B1503C(v7, &v6), sub_1A7CC7FFC(&qword_1EB2B5040, &qword_1A7E44C60), (swift_dynamicCast() & 1) == 0))
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v11 = 0u;
  }

  v9 = v14;
  v10 = v15;
  v7[1] = v12;
  v8 = v13;
  v7[0] = v11;
  if (!*(&v15 + 1))
  {
    return 0;
  }

  v4 = *(&v8 + 1);

  sub_1A7D5C958(v7);
  if (!v4)
  {
    return 0;
  }

  return 1;
}

uint64_t sub_1A7D5C958(uint64_t a1)
{
  v2 = sub_1A7CC7FFC(&qword_1EB2B5038, &unk_1A7E431C0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t LinkEndpoint.idsRelaySessionID.getter()
{
  v1 = *v0;
  if (!*(v1 + 16))
  {
    return 0;
  }

  v2 = sub_1A7CD0DFC(&type metadata for IDSLinkEndpointRelaySessionID);
  if ((v3 & 1) == 0)
  {
    return 0;
  }

  sub_1A7B0CD10(*(v1 + 56) + 32 * v2, v10);
  sub_1A7B1503C(v10, &v9);
  sub_1A7CC7FFC(&qword_1EB2B5040, &qword_1A7E44C60);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  v4 = v14;
  if (!v14)
  {
    return 0;
  }

  v6 = v12;
  v5 = v13;
  v7 = v11;

  sub_1A7D25988(v7, v6, v5, v4);
  return v7;
}

uint64_t IDSLinkEndpointRelaySessionID.relaySessionID.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t IDSLinkEndpointRelaySessionID.relaySessionID.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t IDSLinkEndpointRelaySessionID.uniqueIDSortableIdentifier.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t IDSLinkEndpointRelaySessionID.uniqueID.getter()
{
  if (v0[1])
  {
    v1 = *v0;
  }

  else
  {
    v1 = 7104878;
  }

  return v1;
}

uint64_t sub_1A7D5CB98()
{
  if (v0[1])
  {
    v1 = *v0;
  }

  else
  {
    v1 = 7104878;
  }

  return v1;
}

void sub_1A7D5CBE0(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_1A7CE07D8(*a1, &v7);
  v3 = v9;
  if (v9)
  {
    v4 = *(&v7 + 1);
    v5 = v8;
    v6 = v7;

    sub_1A7D25988(v6, v4, v5, v3);
  }

  else
  {
    v6 = 0;
    v4 = 0;
  }

  *a2 = v6;
  a2[1] = v4;
}

_OWORD *sub_1A7D5CC60(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v5[3] = &type metadata for IDSLinkEndpointRelaySessionID;
  v3 = swift_allocObject();
  v5[0] = v3;
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  strcpy((v3 + 32), "relaySessionID");
  *(v3 + 47) = -18;

  return sub_1A7CC8D74(v5, &type metadata for IDSLinkEndpointRelaySessionID);
}

_OWORD *LinkEndpoint.idsRelaySessionID.setter(uint64_t a1, uint64_t a2)
{
  v6[3] = &type metadata for IDSLinkEndpointRelaySessionID;
  v4 = swift_allocObject();
  v6[0] = v4;
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  strcpy((v4 + 32), "relaySessionID");
  *(v4 + 47) = -18;
  return sub_1A7CC8D74(v6, &type metadata for IDSLinkEndpointRelaySessionID);
}

uint64_t (*LinkEndpoint.idsRelaySessionID.modify(uint64_t *a1))()
{
  a1[2] = v1;
  sub_1A7CE07D8(*v1, &v8);
  v3 = v10;
  if (v10)
  {
    v4 = *(&v8 + 1);
    v5 = v9;
    v6 = v8;

    sub_1A7D25988(v6, v4, v5, v3);
  }

  else
  {
    v6 = 0;
    v4 = 0;
  }

  *a1 = v6;
  a1[1] = v4;
  return sub_1A7D5CE20;
}

_OWORD *sub_1A7D5CE20(uint64_t *a1, char a2)
{
  v3 = *a1;
  v2 = a1[1];
  if (a2)
  {
    v8 = &type metadata for IDSLinkEndpointRelaySessionID;
    v4 = swift_allocObject();
    v7[0] = v4;
    *(v4 + 16) = v3;
    *(v4 + 24) = v2;
    strcpy((v4 + 32), "relaySessionID");
    *(v4 + 47) = -18;

    sub_1A7CC8D74(v7, &type metadata for IDSLinkEndpointRelaySessionID);
  }

  else
  {
    v8 = &type metadata for IDSLinkEndpointRelaySessionID;
    v6 = swift_allocObject();
    v7[0] = v6;
    *(v6 + 16) = v3;
    *(v6 + 24) = v2;
    strcpy((v6 + 32), "relaySessionID");
    *(v6 + 47) = -18;
    return sub_1A7CC8D74(v7, &type metadata for IDSLinkEndpointRelaySessionID);
  }
}

uint64_t type metadata accessor for IDSToolOptions(uint64_t a1)
{
  result = qword_1EB2B66F8;
  if (!qword_1EB2B66F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1A7D5CFA0(uint64_t a1)
{
  sub_1A7D5D0A8(319, &qword_1EB2B6708, &type metadata for IDSToolOutputStyleFlag, MEMORY[0x1E698CF60]);
  if (v1 <= 0x3F)
  {
    sub_1A7D5D0A8(319, &qword_1EB2B5A70, MEMORY[0x1E69E6370], MEMORY[0x1E698CF60]);
    if (v2 <= 0x3F)
    {
      sub_1A7D5D0A8(319, &qword_1EB2B6710, MEMORY[0x1E69E63B0], MEMORY[0x1E698CF70]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1A7D5D0A8(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_1A7D5D0F8(double a1)
{
  v2 = sub_1A7E21FA0();
  MEMORY[0x1EEE9AC00](v2 - 8);
  v3 = sub_1A7CC7FFC(&qword_1EB2B59B8, &qword_1A7E468C0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = v13 - v4;
  v6 = sub_1A7CC7FFC(&qword_1EB2B59C0, &qword_1A7E468C8);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = v13 - v7;
  v9 = sub_1A7E21EF0();
  MEMORY[0x1EEE9AC00](v9 - 8);
  *&v13[1] = a1;
  sub_1A7CC7FFC(&qword_1EB2B5A80, &qword_1A7E46DA0);
  sub_1A7E21EE0();
  *(swift_allocObject() + 16) = xmmword_1A7E418D0;
  sub_1A7E21EC0();
  sub_1A7E21ED0();
  sub_1A7E21EA0();
  v10 = sub_1A7E21DA0();
  (*(*(v10 - 8) + 56))(v8, 1, 1, v10);
  v11 = sub_1A7E21DF0();
  (*(*(v11 - 8) + 56))(v5, 1, 1, v11);
  sub_1A7E21F90();
  return sub_1A7E22020();
}

uint64_t sub_1A7D5D3F0@<X0>(uint64_t a1@<X8>)
{
  v9 = a1;
  v1 = sub_1A7E21EF0();
  MEMORY[0x1EEE9AC00](v1 - 8);
  v2 = sub_1A7E21E30();
  MEMORY[0x1EEE9AC00](v2 - 8);
  v3 = sub_1A7CC7FFC(&qword_1EB2B59C0, &qword_1A7E468C8);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v9 - v4;
  v10 = 0;
  v6 = sub_1A7E21DA0();
  v7 = *(*(v6 - 8) + 56);
  v7(v5, 1, 1, v6);
  sub_1A7E21E20();
  sub_1A7D5DF84();
  sub_1A7E21FD0();
  type metadata accessor for IDSToolOptions(0);
  sub_1A7CC7FFC(&qword_1EB2B5A80, &qword_1A7E46DA0);
  sub_1A7E21EE0();
  *(swift_allocObject() + 16) = xmmword_1A7E418D0;
  sub_1A7E21EC0();
  sub_1A7E21ED0();
  sub_1A7E21EA0();
  v7(v5, 1, 1, v6);
  sub_1A7E21FE0();
  return sub_1A7D5D0F8(1.0);
}

uint64_t sub_1A7D5D6A4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v45 = a1;
  v32 = a2;
  v35 = sub_1A7CC7FFC(&qword_1EB2B66F0, &qword_1A7E4AB80);
  v31 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v34 = &v30 - v2;
  v38 = sub_1A7CC7FFC(&qword_1EB2B5A48, &unk_1A7E53E20);
  v33 = *(v38 - 8);
  MEMORY[0x1EEE9AC00](v38);
  v37 = &v30 - v3;
  v41 = sub_1A7CC7FFC(&qword_1EB2B5A88, &qword_1A7E4F430);
  v36 = *(v41 - 8);
  MEMORY[0x1EEE9AC00](v41);
  v40 = &v30 - v4;
  v42 = sub_1A7CC7FFC(&qword_1EB2B6728, &qword_1A7E4AC08);
  v39 = *(v42 - 8);
  MEMORY[0x1EEE9AC00](v42);
  v44 = &v30 - v5;
  v6 = sub_1A7E21EF0();
  MEMORY[0x1EEE9AC00](v6 - 8);
  v43 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1A7E21E30();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v9 = sub_1A7CC7FFC(&qword_1EB2B59C0, &qword_1A7E468C8);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v30 - v10;
  v12 = type metadata accessor for IDSToolOptions(0);
  v13 = v12 - 8;
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = 0;
  v16 = sub_1A7E21DA0();
  v17 = *(*(v16 - 8) + 56);
  v17(v11, 1, 1, v16);
  sub_1A7E21E20();
  sub_1A7D5DF84();
  sub_1A7E21FD0();
  v47 = *(v13 + 28);
  sub_1A7CC7FFC(&qword_1EB2B5A80, &qword_1A7E46DA0);
  sub_1A7E21EE0();
  *(swift_allocObject() + 16) = xmmword_1A7E418D0;
  sub_1A7E21EC0();
  sub_1A7E21ED0();
  sub_1A7E21EA0();
  v17(v11, 1, 1, v16);
  v18 = v45;
  sub_1A7E21FE0();
  v19 = *(v13 + 32);
  sub_1A7D5D0F8(1.0);
  sub_1A7CC9878(v18, v18[3]);
  sub_1A7D5DFD8();
  v20 = v44;
  v21 = v46;
  sub_1A7E23250();
  if (!v21)
  {
    v23 = v36;
    v22 = v37;
    v24 = v38;
    v50 = 0;
    sub_1A7CF3788(&qword_1EB2B6738, &qword_1EB2B5A88, &qword_1A7E4F430, MEMORY[0x1E698CF68]);
    sub_1A7E22F30();
    (*(v23 + 40))(v15, v40, v41);
    v49 = 1;
    sub_1A7CF3788(&qword_1EB2B5AA8, &qword_1EB2B5A48, &unk_1A7E53E20, MEMORY[0x1E698CF68]);
    sub_1A7E22F30();
    v26 = *(v33 + 40);
    v46 = v15;
    v26(&v15[v47], v22, v24);
    v48 = 2;
    sub_1A7CF3788(&qword_1EB2B6740, &qword_1EB2B66F0, &qword_1A7E4AB80, MEMORY[0x1E698CF78]);
    v28 = v34;
    v27 = v35;
    v29 = v42;
    sub_1A7E22F30();
    (*(v39 + 8))(v20, v29);
    v15 = v46;
    (*(v31 + 40))(&v46[v19], v28, v27);
    sub_1A7D5E088(v15, v32);
  }

  sub_1A7B0CD6C(v18);
  return sub_1A7D5E02C(v15);
}

uint64_t sub_1A7D5DE14()
{
  v1 = 0x6863746177;
  if (*v0 != 1)
  {
    v1 = 0x636E657571657266;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x656C797473;
  }
}

uint64_t sub_1A7D5DE6C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1A7D5E204(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1A7D5DE94(uint64_t a1)
{
  v2 = sub_1A7D5DFD8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A7D5DED0(uint64_t a1)
{
  v2 = sub_1A7D5DFD8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

unint64_t sub_1A7D5DF2C()
{
  result = qword_1EB2B6718;
  if (!qword_1EB2B6718)
  {
    type metadata accessor for IDSToolOptions(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B6718);
  }

  return result;
}

unint64_t sub_1A7D5DF84()
{
  result = qword_1EB2B6720;
  if (!qword_1EB2B6720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B6720);
  }

  return result;
}

unint64_t sub_1A7D5DFD8()
{
  result = qword_1EB2B6730;
  if (!qword_1EB2B6730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B6730);
  }

  return result;
}

uint64_t sub_1A7D5E02C(uint64_t a1)
{
  v2 = type metadata accessor for IDSToolOptions(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1A7D5E088(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for IDSToolOptions(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1A7D5E100()
{
  result = qword_1EB2B6748;
  if (!qword_1EB2B6748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B6748);
  }

  return result;
}

unint64_t sub_1A7D5E158()
{
  result = qword_1EB2B6750;
  if (!qword_1EB2B6750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B6750);
  }

  return result;
}

unint64_t sub_1A7D5E1B0()
{
  result = qword_1EB2B6758;
  if (!qword_1EB2B6758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B6758);
  }

  return result;
}

uint64_t sub_1A7D5E204(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656C797473 && a2 == 0xE500000000000000;
  if (v4 || (sub_1A7E230D0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6863746177 && a2 == 0xE500000000000000 || (sub_1A7E230D0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x636E657571657266 && a2 == 0xE900000000000079)
  {

    return 2;
  }

  else
  {
    v6 = sub_1A7E230D0();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_1A7D5E31C()
{
  v0 = sub_1A7E22060();
  sub_1A7CC7A10(v0, qword_1EB2B6760);
  sub_1A7B0CB00(v0, qword_1EB2B6760);
  return sub_1A7E22050();
}

uint64_t sub_1A7D5E3B0()
{
  v1 = *(v0 + 16);
  if (*(v0 + 24) == 1)
  {
    v2 = *(v0 + 40);
    if ((v2 & 0x8000000000000000) == 0)
    {
      if (v2 < *(v1 + 16))
      {
        return *(v1 + 8 * v2 + 32);
      }

      goto LABEL_9;
    }

    __break(1u);
  }

  else if (*(v1 + 16))
  {
    return *(v1 + 32);
  }

  __break(1u);
LABEL_9:
  __break(1u);
  return result;
}

void IDSLinkPacketBitfield.init(capacity:timestampCapacity:earliestTime:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  *(a4 + 24) = 0;
  *(a4 + 40) = 0;
  *(a4 + 48) = 0;
  v5 = a1 + 63;
  if (a1 >= 0)
  {
    v5 = a1;
  }

  *(a4 + 56) = 0;
  *(a4 + 64) = 0;
  if (a1 < -63)
  {
    __break(1u);
LABEL_13:
    __break(1u);
    return;
  }

  if (a1 < 64)
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    v9 = v5 >> 6;
    v10 = sub_1A7E22580();
    *(v10 + 16) = v9;
    bzero((v10 + 32), 8 * v9);
  }

  *a4 = v10;
  *(a4 + 8) = a1;
  if (a2 < 0)
  {
    goto LABEL_13;
  }

  if (a2)
  {
    v11 = sub_1A7E22580();
    *(v11 + 16) = a2;
    bzero((v11 + 32), 8 * a2);
  }

  else
  {
    v11 = MEMORY[0x1E69E7CC0];
  }

  *(a4 + 16) = v11;
  *(a4 + 32) = a3;
}

Swift::Bool __swiftcall IDSLinkPacketBitfield.didHearOfPacket(withSequenceNumber:)(Swift::UInt16 withSequenceNumber)
{
  v3 = *(v1 + 64);
  if (!v3)
  {
    goto LABEL_11;
  }

  v4 = *(v1 + 48);
  if (v4 > withSequenceNumber)
  {
    if ((v4 - withSequenceNumber) < 0x401u)
    {
LABEL_28:
      LOBYTE(v14) = 0;
      goto LABEL_40;
    }

    if (v4 > 0x7FE)
    {
      goto LABEL_30;
    }

    v3 = v4 + 1;
    v5 = *v1;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v5 = sub_1A7D6002C(v5);
    }

    v6 = v3 >> 6;
    v7 = *(v5 + 2);
    if (v3 >> 6 < v7)
    {
      while (1)
      {
        *&v5[8 * v6 + 32] &= (-1 << v3) - 1;
        if (v3 == 2047)
        {
          break;
        }

        v6 = ++v3 >> 6;
        if (v3 >> 6 >= v7)
        {
          goto LABEL_10;
        }
      }

      *v1 = v5;
LABEL_30:
      if (withSequenceNumber)
      {
        v16 = *v1;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v16 = sub_1A7D6002C(v16);
        }

        v18 = *(v16 + 2);
        if (v18)
        {
          v19 = 0;
          v20 = 0;
          v3 = 2048;
          while (1)
          {
            *&v16[8 * v19 + 32] &= ~(1 << v20);
            if (withSequenceNumber == v20)
            {
              break;
            }

            v19 = ++v20 >> 6;
            if (v20 >> 6 >= v18)
            {
              goto LABEL_37;
            }
          }
        }

        else
        {
LABEL_37:
          __break(1u);
        }

LABEL_38:
        *v1 = v16;
      }

      else
      {
        v3 = 2048;
      }

      *(v1 + 48) = withSequenceNumber;
      LOBYTE(v14) = 1;
      goto LABEL_40;
    }

LABEL_10:
    __break(1u);
LABEL_11:
    v8 = *v1;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v8 = sub_1A7D6002C(v8);
    }

    v10 = *(v8 + 2);
    if (v10)
    {
      v11 = 0;
      v12 = 0;
      v9 = withSequenceNumber;
      while (1)
      {
        *&v8[8 * v11 + 32] &= ~(1 << v12);
        if (withSequenceNumber == v12)
        {
          break;
        }

        v11 = ++v12 >> 6;
        if (v12 >> 6 >= v10)
        {
          goto LABEL_17;
        }
      }
    }

    else
    {
LABEL_17:
      __break(1u);
    }

    *v1 = v8;
    *(v1 + 48) = withSequenceNumber;
    v13 = v9 + 1;
    LOBYTE(v14) = 1;
    goto LABEL_43;
  }

  LOBYTE(v14) = 0;
  if (v4 < withSequenceNumber && (withSequenceNumber - v4) <= 0x3FFu)
  {
    v15 = v4 + 1;
    v16 = *v1;
    LOBYTE(v14) = swift_isUniquelyReferenced_nonNull_native();
    if ((v14 & 1) == 0)
    {
      v14 = sub_1A7D6002C(v16);
      v16 = v14;
    }

    while (v15 >> 6 < *(v16 + 2))
    {
      *&v16[8 * (v15 >> 6) + 32] &= ~(1 << v15);
      if (withSequenceNumber == v15)
      {
        goto LABEL_38;
      }

      if (__OFADD__(v15++, 1))
      {
        __break(1u);
        goto LABEL_28;
      }
    }

    __break(1u);
    goto LABEL_46;
  }

LABEL_40:
  if (((withSequenceNumber + 1) & 0x10000) != 0)
  {
LABEL_46:
    __break(1u);
    return v14;
  }

  v13 = (withSequenceNumber + 1);
  if (v3 > v13)
  {
    v13 = v3;
  }

LABEL_43:
  *(v1 + 64) = v13;
  return v14;
}

Swift::Void __swiftcall IDSLinkPacketBitfield.didReceivePacket(withSequenceNumber:timestamp:)(Swift::UInt16 withSequenceNumber, Swift::UInt64 timestamp)
{
  IDSLinkPacketBitfield.didHearOfPacket(withSequenceNumber:)(withSequenceNumber);
  v5 = withSequenceNumber >> 6;
  v6 = *v2;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v6 = sub_1A7D6002C(v6);
  }

  if (v5 >= *(v6 + 2))
  {
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  *&v6[8 * v5 + 32] = *&v6[8 * v5 + 32] & ((-1 << withSequenceNumber) - 1) | (1 << (withSequenceNumber & 0x3F));
  *v2 = v6;
  v7 = *(v2 + 40);
  v8 = *(v2 + 16);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v8 = sub_1A7D6002C(v8);
  }

  if ((v7 & 0x8000000000000000) != 0)
  {
    goto LABEL_14;
  }

  v9 = *(v8 + 2);
  if (v7 >= v9)
  {
LABEL_15:
    __break(1u);
    return;
  }

  *&v8[8 * v7 + 32] = timestamp;
  *(v2 + 16) = v8;
  *(v2 + 40) = v7 + 1;
  v10 = *(v2 + 56);
  if ((v7 + 1) > v10)
  {
    v10 = v7 + 1;
  }

  *(v2 + 56) = v10;
  if (v7 + 1 >= v9)
  {
    *(v2 + 40) = 0;
    *(v2 + 24) = 1;
  }
}

void IDSLinkPacketBitfield.packetLoss.getter()
{
  v1 = v0[8];
  if (v1)
  {
    v2 = (*v0)[2];
    if (v2)
    {
      v3 = 0;
      v4 = *v0 + 4;
      while (1)
      {
        v5 = *v4++;
        v6 = vcnt_s8(v5);
        v6.i16[0] = vaddlv_u8(v6);
        v7 = __OFADD__(v3, v6.u32[0]);
        v3 += v6.u32[0];
        if (v7)
        {
          break;
        }

        if (!--*&v2)
        {
          if (!__OFSUB__(v1, v3))
          {
            return;
          }

          __break(1u);
          break;
        }
      }

      __break(1u);
    }
  }
}

int8x8_t *IDSLinkPacketBitfield.packetsMissing.getter()
{
  v1 = v0[8];
  v2 = (*v0)[2];
  if (!*&v2)
  {
    return v0[8];
  }

  v3 = 0;
  v4 = *v0 + 4;
  while (1)
  {
    v5 = *v4++;
    v6 = vcnt_s8(v5);
    v6.i16[0] = vaddlv_u8(v6);
    v7 = __OFADD__(v3, v6.u32[0]);
    v3 += v6.u32[0];
    if (v7)
    {
      break;
    }

    if (!--*&v2)
    {
      result = (v1 - v3);
      if (!__OFSUB__(v1, v3))
      {
        return result;
      }

      __break(1u);
      break;
    }
  }

  __break(1u);
  return result;
}

uint64_t IDSLinkPacketBitfield.packetsReceived.getter()
{
  v1 = (*v0)[2];
  if (!*&v1)
  {
    return 0;
  }

  result = 0;
  v3 = *v0 + 4;
  while (1)
  {
    v4 = *v3++;
    v5 = vcnt_s8(v4);
    v5.i16[0] = vaddlv_u8(v5);
    v6 = __OFADD__(result, v5.u32[0]);
    result += v5.u32[0];
    if (v6)
    {
      break;
    }

    if (!--*&v1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t IDSLinkPacketBitfield.reducePackets<A>(_:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  v10 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v29 - v14;
  v16 = *(v5 + 48);
  v31[2] = *(v5 + 32);
  v32 = v16;
  v33 = *(v5 + 64);
  v17 = *(v5 + 16);
  v31[0] = *v5;
  v31[1] = v17;
  result = (*(v10 + 16))(&v29 - v14);
  if (v33)
  {
    v30 = 0;
    if (v33 < *(&v31[0] + 1))
    {
      goto LABEL_8;
    }

    v19 = v33 - 1;
    if (__OFSUB__(v33, 1))
    {
      __break(1u);
    }

    else if (((v32 + 1) & 0x10000) == 0)
    {
      v20 = v19 - (v32 + 1);
      if (v19 >= (v32 + 1))
      {
        v21 = __OFADD__(v20, 1);
        v22 = v20 + 1;
        if (!v21)
        {
          v30 = v22;
          MEMORY[0x1EEE9AC00](result);
          *(&v29 - 6) = a4;
          *(&v29 - 5) = a2;
          *(&v29 - 4) = a3;
          *(&v29 - 12) = v23;
          *(&v29 - 2) = v31;
          sub_1A7D64224(v15, v24, v25, sub_1A7D60040, v26, a4, v12);
          (*(v10 + 8))(v15, a4);
          result = (*(v10 + 32))(v15, v12, a4);
          goto LABEL_8;
        }

        goto LABEL_13;
      }

LABEL_8:
      MEMORY[0x1EEE9AC00](result);
      *(&v29 - 6) = a4;
      *(&v29 - 5) = a2;
      *(&v29 - 4) = a3;
      *(&v29 - 3) = &v30;
      *(&v29 - 2) = v31;
      sub_1A7D64224(v15, 0, v27, sub_1A7D60088, v28, a4, a5);
      return (*(v10 + 8))(v15, a4);
    }

    __break(1u);
LABEL_13:
    __break(1u);
    return result;
  }

  return (*(v10 + 32))(a5, v15, a4);
}

unint64_t IDSLinkPacketBitfield.reducePacketsReverse<A>(_:_:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  MEMORY[0x1EEE9AC00](a4);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v28 - v13;
  v15 = *(v4 + 64);
  v32 = v15;
  v16 = *(v4 + 48);
  v30[2] = *(v4 + 32);
  v31 = v16;
  v17 = *(v4 + 16);
  v30[0] = *v4;
  v30[1] = v17;
  if (v15)
  {
    v28 = v11;
    v18 = v31;
    MEMORY[0x1EEE9AC00](v11);
    v29 = v19;
    *(&v28 - 6) = a3;
    *(&v28 - 5) = a1;
    *(&v28 - 4) = a2;
    *(&v28 - 3) = v18;
    *(&v28 - 2) = v30;
    v20 = v30[0];
    result = sub_1A7D6452C(v21, 0, v18, sub_1A7D600C0, (&v28 - 8), *&v30[0], a3, v14);
    v23 = v29;
    if (v15 < *(&v20 + 1))
    {
      return (*(v23 + 32))(v28, v14, a3);
    }

    if (__OFSUB__(v15, 1))
    {
      __break(1u);
    }

    else if (((v18 + 1) & 0x10000) == 0)
    {
      if (v15 - 1 >= (v18 + 1))
      {
        MEMORY[0x1EEE9AC00](result);
        *(&v28 - 6) = a3;
        *(&v28 - 5) = a1;
        *(&v28 - 4) = a2;
        *(&v28 - 3) = v24;
        *(&v28 - 2) = v25;
        *(&v28 - 1) = v30;
        sub_1A7D6452C(v14, v26, v24, sub_1A7D60108, (&v28 - 8), v20, a3, v9);
        (*(v29 + 8))(v14, a3);
        (*(v29 + 32))(v14, v9, a3);
        v23 = v29;
      }

      return (*(v23 + 32))(v28, v14, a3);
    }

    __break(1u);
  }

  else
  {
    v27 = *(v12 + 16);

    return v27();
  }

  return result;
}

Swift::Void __swiftcall IDSLinkPacketBitfield.inferPackets(upTo:knownPacketsMissing:)(Swift::UInt16 upTo, Swift::Int knownPacketsMissing)
{
  if (!IDSLinkPacketBitfield.didHearOfPacket(withSequenceNumber:)(upTo))
  {
    return;
  }

  v5 = *v2;
  v6 = *(v2 + 64);
  v7 = sub_1A7D641E0(*v2);
  v8 = v6 - v7;
  if (__OFSUB__(v6, v7))
  {
LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
LABEL_48:
    __break(1u);
LABEL_49:
    __break(1u);
    return;
  }

  if ((v6 & 0x8000000000000000) != 0)
  {
    goto LABEL_47;
  }

  if (v6)
  {
    v9 = 0;
    while (2)
    {
      v10 = upTo - v9;
      for (i = v9; ; ++i)
      {
        if (i >= v6)
        {
          __break(1u);
LABEL_41:
          __break(1u);
LABEL_42:
          __break(1u);
LABEL_43:
          __break(1u);
LABEL_44:
          __break(1u);
LABEL_45:
          __break(1u);
          goto LABEL_46;
        }

        v9 = i + 1;
        if (__OFADD__(i, 1))
        {
          goto LABEL_41;
        }

        if (v8 == knownPacketsMissing)
        {
          return;
        }

        v12 = (v6 & (v10 >> 63)) + v10;
        if (v8 < knownPacketsMissing)
        {
          v13 = v12 + 63;
          if (v12 >= 0)
          {
            v13 = (v6 & (v10 >> 63)) + v10;
          }

          if (v12 < -63)
          {
            goto LABEL_42;
          }

          v14 = v13 >> 6;
          if (v13 >> 6 >= *&v5[2])
          {
            goto LABEL_43;
          }

          v15 = v12 - (v13 & 0xFFFFFFFFFFFFFFC0);
          if ((v15 & 0x8000000000000000) == 0)
          {
            v16 = 1 << v15;
            if ((*&v5[v14 + 4] & (1 << v15)) != 0)
            {
              break;
            }
          }
        }

        if (v8 > knownPacketsMissing)
        {
          v17 = v12 + 63;
          if (v12 >= 0)
          {
            v17 = (v6 & (v10 >> 63)) + v10;
          }

          if (v12 < -63)
          {
            goto LABEL_44;
          }

          v18 = v17 >> 6;
          if (v17 >> 6 >= *&v5[2])
          {
            goto LABEL_45;
          }

          v19 = v12 - (v17 & 0xFFFFFFFFFFFFFFC0);
          if (v19 < 0)
          {
            v20 = -1;
            goto LABEL_26;
          }

          if ((*&v5[v18 + 4] & (1 << v19)) == 0)
          {
            v20 = ~(1 << v19);
LABEL_26:
            v23 = v20;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v5 = sub_1A7D6002C(v5);
            }

            if (v18 >= *&v5[2])
            {
              goto LABEL_49;
            }

            v21 = 1 << v19;
            if (v19 < 0)
            {
              v21 = 0;
            }

            v5[v18 + 4] = (*&v5[v18 + 4] & v23 | v21);
            v22 = -1;
            goto LABEL_36;
          }
        }

        --v10;
        if (v9 == v6)
        {
          return;
        }
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v5 = sub_1A7D6002C(v5);
      }

      if (v14 >= *&v5[2])
      {
        goto LABEL_48;
      }

      *&v5[v14 + 4] &= ~v16;
      v22 = 1;
LABEL_36:
      *v2 = v5;
      v8 += v22;
      if (v9 != v6)
      {
        continue;
      }

      break;
    }
  }
}

Swift::tuple_Int_outOf_Int __swiftcall IDSLinkPacketBitfield.packetsReceived(outOfMostRecent:)(Swift::Int outOfMostRecent)
{
  v7 = v1[8];
  if (v7 >= outOfMostRecent)
  {
    v8 = outOfMostRecent;
  }

  else
  {
    v8 = v1[8];
  }

  if (!v8)
  {
    goto LABEL_41;
  }

  v9 = *(v1 + 24);
  v10 = v9 - v8;
  if (__OFSUB__(v9, v8))
  {
    goto LABEL_101;
  }

  v11 = __OFADD__(v10, 1);
  v12 = v10 + 1;
  if (v11)
  {
    goto LABEL_102;
  }

  v3 = *v1;
  v5 = v12 & ~(v12 >> 63);
  v13 = *(*v1 + 16);
  if (v13 >= v5 >> 6)
  {
    v14 = v5 >> 6;
  }

  else
  {
    v14 = *(*v1 + 16);
  }

  if (v13 >= v9 >> 6)
  {
    v15 = v9 >> 6;
  }

  else
  {
    v15 = *(*v1 + 16);
  }

  if (v9 >> 6 < v14)
  {
    goto LABEL_103;
  }

  if (v13 <= v5 >> 6)
  {
LABEL_40:
    __break(1u);
LABEL_41:
    v2 = 0;
    goto LABEL_89;
  }

  v2 = 0;
  v4 = v3 + 32;
  v16 = v5 - (v14 << 6);
  v17 = v9 - (v14 << 6);
  while (2)
  {
    if (v16 >= 63)
    {
      v18 = 63;
    }

    else
    {
      v18 = v16;
    }

    if (v17 >= 63)
    {
      v19 = 63;
    }

    else
    {
      v19 = v17;
    }

    if ((v14 - 0x200000000000000) >> 58 != 63)
    {
LABEL_93:
      __break(1u);
      goto LABEL_94;
    }

    v20 = v14 << 6;
    v21 = v5 - (v14 << 6);
    if (__OFSUB__(v5, v14 << 6))
    {
LABEL_94:
      __break(1u);
      goto LABEL_95;
    }

    v11 = __OFSUB__(v9, v20);
    v22 = v9 - v20;
    if (v11)
    {
LABEL_95:
      __break(1u);
      break;
    }

    if (v21 >= 63)
    {
      v21 = 63;
    }

    if (v22 >= 63)
    {
      v22 = 63;
    }

    if (v21 <= (v22 & ~(v22 >> 63)))
    {
      v23 = v18 & ~(v18 >> 63);
      v24 = v19 & ~(v19 >> 63);
      while (1)
      {
        if (v23 <= 0x3F && ((*(v4 + 8 * v14) >> v23) & 1) != 0)
        {
          v11 = __OFADD__(v2++, 1);
          if (v11)
          {
            goto LABEL_91;
          }
        }

        if (v24 == v23)
        {
          break;
        }

        v11 = __OFADD__(v23++, 1);
        if (v11)
        {
          __break(1u);
LABEL_90:
          __break(1u);
LABEL_91:
          __break(1u);
LABEL_92:
          __break(1u);
          goto LABEL_93;
        }
      }

      if (v14 == v15)
      {
        v25 = v9 - v5 + 1;
        v6 = v8 - v25;
        if (!__OFSUB__(v8, v25))
        {
          if (qword_1EB2B4800 == -1)
          {
            goto LABEL_44;
          }

          goto LABEL_105;
        }

        goto LABEL_104;
      }

      ++v14;
      v16 -= 64;
      v17 -= 64;
      if (v14 != v13)
      {
        continue;
      }

      goto LABEL_40;
    }

    break;
  }

  __break(1u);
LABEL_97:
  __break(1u);
LABEL_98:
  __break(1u);
LABEL_99:
  __break(1u);
  while (1)
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
    swift_once();
LABEL_44:
    v26 = sub_1A7E22060();
    sub_1A7B0CB00(v26, qword_1EB2B6760);
    v27 = sub_1A7E22040();
    v28 = sub_1A7E228D0();
    if (os_log_type_enabled(v27, v28))
    {
      v52 = v3;
      v29 = swift_slowAlloc();
      *v29 = 134218752;
      *(v29 + 4) = v8;
      *(v29 + 12) = 2048;
      *(v29 + 14) = v5;
      *(v29 + 22) = 2048;
      *(v29 + 24) = v9;
      *(v29 + 32) = 2048;
      *(v29 + 34) = v6;
      _os_log_impl(&dword_1A7AD9000, v27, v28, "packetsReceived(outOfMostRecent: %ld): minBit: %ld, maxBit: %ld, remaining: %ld", v29, 0x2Au);
      v30 = v29;
      v3 = v52;
      MEMORY[0x1AC5654B0](v30, -1, -1);
    }

    if (v6 < 1)
    {
      break;
    }

    v33 = v7 - v6;
    if (__OFSUB__(v7, v6))
    {
      __break(1u);
LABEL_107:
      __break(1u);
LABEL_108:
      __break(1u);
      goto LABEL_109;
    }

    v34 = v7 - 1;
    if (__OFSUB__(v7, 1))
    {
      goto LABEL_107;
    }

    v35 = v33 + 63;
    if (v33 >= 0)
    {
      v35 = v7 - v6;
    }

    v36 = v35 >> 6;
    v37 = *(v3 + 16);
    if (v37 < v36)
    {
      v36 = *(v3 + 16);
    }

    v38 = v7 + 62;
    if (v34 >= 0)
    {
      v38 = v7 - 1;
    }

    v39 = v38 >> 6;
    if (v37 >= v38 >> 6)
    {
      v40 = v38 >> 6;
    }

    else
    {
      v40 = *(v3 + 16);
    }

    if (v39 < v36)
    {
      goto LABEL_108;
    }

    if (v37 <= v36)
    {
      v41 = v36;
    }

    else
    {
      v41 = *(v3 + 16);
    }

    if (v36 >= v37)
    {
LABEL_88:
      __break(1u);
      break;
    }

    v42 = v7 + v9 - v8 - v5 - (v36 << 6) + 1;
    v43 = ~(v36 << 6) + v7;
LABEL_64:
    if (v42 >= 63)
    {
      v44 = 63;
    }

    else
    {
      v44 = v42;
    }

    if (v43 >= 63)
    {
      v45 = 63;
    }

    else
    {
      v45 = v43;
    }

    if ((v36 - 0x200000000000000) >> 58 != 63)
    {
      goto LABEL_97;
    }

    v46 = v36 << 6;
    v47 = v33 - (v36 << 6);
    if (__OFSUB__(v33, v36 << 6))
    {
      goto LABEL_98;
    }

    v11 = __OFSUB__(v34, v46);
    v48 = v34 - v46;
    if (v11)
    {
      goto LABEL_99;
    }

    if (v47 >= 63)
    {
      v47 = 63;
    }

    if (v48 >= 63)
    {
      v48 = 63;
    }

    if (v47 <= (v48 & ~(v48 >> 63)))
    {
      v49 = v44 & ~(v44 >> 63);
      v50 = v45 & ~(v45 >> 63);
      while (1)
      {
        if (v49 <= 0x3F && ((*(v4 + 8 * v36) >> v49) & 1) != 0)
        {
          v11 = __OFADD__(v2++, 1);
          if (v11)
          {
            goto LABEL_92;
          }
        }

        if (v50 == v49)
        {
          if (v36 == v40)
          {
            goto LABEL_89;
          }

          ++v36;
          v42 -= 64;
          v43 -= 64;
          if (v36 != v41)
          {
            goto LABEL_64;
          }

          goto LABEL_88;
        }

        v11 = __OFADD__(v49++, 1);
        if (v11)
        {
          goto LABEL_90;
        }
      }
    }
  }

LABEL_89:
  v31 = v2;
  v32 = v8;
LABEL_109:
  result.outOf = v32;
  result._0 = v31;
  return result;
}

void __swiftcall IDSLinkPacketBitfield.stats(forTime:)(IDSFoundation::IDSLinkPacketBitfield::Stats *__return_ptr retstr, Swift::UInt64 forTime)
{
  v6 = *(v2 + 56);
  v5 = *(v2 + 64);
  v7 = sub_1A7D641E0(*v2);
  v8 = v5 - v7;
  if (__OFSUB__(v5, v7))
  {
    __break(1u);
    goto LABEL_7;
  }

  v9 = v7;
  v10 = sub_1A7D5E3B0();
  v11 = forTime - v10;
  if (forTime < v10)
  {
LABEL_7:
    __break(1u);
    return;
  }

  v12 = v6;
  if (v11)
  {
    v12 = v12 / (v11 / 1000000.0);
  }

  retstr->expected = v5;
  retstr->received = v9;
  retstr->lost = v8;
  retstr->loss = v8 / v5;
  retstr->packetsPerSecond = v12;
}

Swift::Bool __swiftcall IDSLinkPacketBitfield.isPacketReceived(sequenceNumber:)(Swift::Int sequenceNumber)
{
  if (sequenceNumber >= 0)
  {
    v2 = sequenceNumber;
  }

  else
  {
    v2 = sequenceNumber + 63;
  }

  if (sequenceNumber < -63)
  {
    __break(1u);
    goto LABEL_10;
  }

  v3 = v2 >> 6;
  if (v3 >= *(*v1 + 16))
  {
LABEL_10:
    __break(1u);
    return sequenceNumber;
  }

  v4 = sequenceNumber - (v3 << 6);
  v5 = *(*v1 + 8 * v3 + 32);
  v6 = 1 << v4;
  if (v4 < 0)
  {
    v6 = 0;
  }

  LOBYTE(sequenceNumber) = (v5 & v6) != 0;
  return sequenceNumber;
}

Swift::tuple_OpaquePointer_earliestTime_UInt64_maxCount_Int __swiftcall IDSLinkPacketBitfield.packetsReceived(since:)(Swift::UInt64 since)
{
  v2 = v1[2];
  v3 = v1[4];
  v4 = v1[7];
  v5 = v2[2];
  if (v5)
  {

    v7 = 0;
    v8 = MEMORY[0x1E69E7CC0];
    while (v7 < v2[2])
    {
      v11 = v2[v7 + 4];
      if (v11 >= since && v11 != 0)
      {
        v16 = v8;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1A7CCE938(0, *(v8 + 2) + 1, 1);
          v8 = v16;
        }

        v10 = *(v8 + 2);
        v9 = *(v8 + 3);
        if (v10 >= v9 >> 1)
        {
          sub_1A7CCE938((v9 > 1), v10 + 1, 1);
          v8 = v16;
        }

        *(v8 + 2) = v10 + 1;
        *&v8[8 * v10 + 32] = v11;
      }

      if (v5 == ++v7)
      {

        goto LABEL_16;
      }
    }

    __break(1u);

    __break(1u);
  }

  else
  {
    v8 = MEMORY[0x1E69E7CC0];
LABEL_16:
    v16 = v8;

    sub_1A7D5F7A4(&v16);

    v13 = v16;
    v14 = v3;
    v15 = v4;
  }

  result.maxCount = v15;
  result.earliestTime = v14;
  result._0._rawValue = v13;
  return result;
}

uint64_t sub_1A7D5F7A4(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1A7D6002C(v2);
  }

  v3 = *(v2 + 2);
  v18[0] = (v2 + 32);
  v18[1] = v3;
  result = sub_1A7E23080();
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = -1;
      v9 = 1;
      v10 = v2 + 32;
      do
      {
        v11 = *&v2[8 * v9 + 32];
        v12 = v8;
        v13 = v10;
        do
        {
          v14 = *v13;
          if (v11 >= *v13)
          {
            break;
          }

          *v13 = v11;
          *(v13 + 1) = v14;
          v13 -= 8;
        }

        while (!__CFADD__(v12++, 1));
        ++v9;
        v10 += 8;
        --v8;
      }

      while (v9 != v3);
    }
  }

  else
  {
    v5 = result;
    v6 = v3 >> 1;
    if (v3 >= 2)
    {
      v7 = sub_1A7E22580();
      *(v7 + 16) = v6;
    }

    else
    {
      v7 = MEMORY[0x1E69E7CC0];
    }

    v16[0] = v7 + 32;
    v16[1] = v6;
    sub_1A7D5F8D8(v16, v17, v18, v5);
    *(v7 + 16) = 0;
  }

  *a1 = v2;
  return result;
}

uint64_t sub_1A7D5F8D8(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v83 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x1E69E7CC0];
LABEL_88:
    v5 = *v83;
    if (!*v83)
    {
      goto LABEL_128;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_122:
      result = sub_1A7CF0024(v8);
      v8 = result;
    }

    v75 = (v8 + 16);
    v76 = *(v8 + 16);
    if (v76 >= 2)
    {
      while (*a3)
      {
        v77 = (v8 + 16 * v76);
        v78 = *v77;
        v79 = &v75[2 * v76];
        v80 = v79[1];
        sub_1A7D5FE24((*a3 + 8 * *v77), (*a3 + 8 * *v79), (*a3 + 8 * v80), v5);
        if (v4)
        {
        }

        if (v80 < v78)
        {
          goto LABEL_114;
        }

        if (v76 - 2 >= *v75)
        {
          goto LABEL_115;
        }

        *v77 = v78;
        v77[1] = v80;
        v81 = *v75 - v76;
        if (*v75 < v76)
        {
          goto LABEL_116;
        }

        v76 = *v75 - 1;
        result = memmove(v79, v79 + 2, 16 * v81);
        *v75 = v76;
        if (v76 <= 1)
        {
        }
      }

      goto LABEL_126;
    }
  }

  v7 = 0;
  v8 = MEMORY[0x1E69E7CC0];
  v82 = a4;
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = *(*a3 + 8 * v7);
      v11 = *(*a3 + 8 * v9);
      v12 = v9 + 2;
      v13 = v10;
      while (v6 != v12)
      {
        v14 = *(*a3 + 8 * v12);
        v15 = (v10 < v11) ^ (v14 >= v13);
        ++v12;
        v13 = v14;
        if ((v15 & 1) == 0)
        {
          v7 = v12 - 1;
          if (v10 >= v11)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v7 = v6;
      if (v10 >= v11)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v7 < v9)
      {
        goto LABEL_119;
      }

      if (v9 < v7)
      {
        v16 = v7 - 1;
        v17 = v9;
        do
        {
          if (v17 != v16)
          {
            v20 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v18 = *(v20 + 8 * v17);
            *(v20 + 8 * v17) = *(v20 + 8 * v16);
            *(v20 + 8 * v16) = v18;
          }
        }

        while (++v17 < v16--);
        v6 = a3[1];
      }
    }

LABEL_20:
    if (v7 < v6)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_118;
      }

      if (v7 - v9 < a4)
      {
        if (__OFADD__(v9, a4))
        {
          goto LABEL_120;
        }

        if (v9 + a4 < v6)
        {
          v6 = v9 + a4;
        }

        if (v6 < v9)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v7 != v6)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v7 < v9)
    {
      goto LABEL_117;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1A7CCC08C(0, *(v8 + 16) + 1, 1, v8);
      v8 = result;
    }

    v5 = *(v8 + 16);
    v29 = *(v8 + 24);
    v30 = v5 + 1;
    if (v5 >= v29 >> 1)
    {
      result = sub_1A7CCC08C((v29 > 1), v5 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 16) = v30;
    v31 = v8 + 32;
    v32 = (v8 + 32 + 16 * v5);
    *v32 = v9;
    v32[1] = v7;
    v84 = *v83;
    if (!*v83)
    {
      goto LABEL_127;
    }

    if (v5)
    {
      while (1)
      {
        v5 = v30 - 1;
        if (v30 >= 4)
        {
          break;
        }

        if (v30 == 3)
        {
          v33 = *(v8 + 32);
          v34 = *(v8 + 40);
          v43 = __OFSUB__(v34, v33);
          v35 = v34 - v33;
          v36 = v43;
LABEL_57:
          if (v36)
          {
            goto LABEL_104;
          }

          v49 = (v8 + 16 * v30);
          v51 = *v49;
          v50 = v49[1];
          v52 = __OFSUB__(v50, v51);
          v53 = v50 - v51;
          v54 = v52;
          if (v52)
          {
            goto LABEL_106;
          }

          v55 = (v31 + 16 * v5);
          v57 = *v55;
          v56 = v55[1];
          v43 = __OFSUB__(v56, v57);
          v58 = v56 - v57;
          if (v43)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v53, v58))
          {
            goto LABEL_111;
          }

          if (v53 + v58 >= v35)
          {
            if (v35 < v58)
            {
              v5 = v30 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v30 < 2)
        {
          goto LABEL_112;
        }

        v59 = (v8 + 16 * v30);
        v61 = *v59;
        v60 = v59[1];
        v43 = __OFSUB__(v60, v61);
        v53 = v60 - v61;
        v54 = v43;
LABEL_72:
        if (v54)
        {
          goto LABEL_108;
        }

        v62 = (v31 + 16 * v5);
        v64 = *v62;
        v63 = v62[1];
        v43 = __OFSUB__(v63, v64);
        v65 = v63 - v64;
        if (v43)
        {
          goto LABEL_110;
        }

        if (v65 < v53)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v5 - 1 >= v30)
        {
          __break(1u);
LABEL_99:
          __break(1u);
LABEL_100:
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
          goto LABEL_121;
        }

        if (!*a3)
        {
          goto LABEL_124;
        }

        v70 = (v31 + 16 * (v5 - 1));
        v71 = *v70;
        v72 = (v31 + 16 * v5);
        v73 = v72[1];
        sub_1A7D5FE24((*a3 + 8 * *v70), (*a3 + 8 * *v72), (*a3 + 8 * v73), v84);
        if (v4)
        {
        }

        if (v73 < v71)
        {
          goto LABEL_99;
        }

        if (v5 > *(v8 + 16))
        {
          goto LABEL_100;
        }

        *v70 = v71;
        v70[1] = v73;
        v74 = *(v8 + 16);
        if (v5 >= v74)
        {
          goto LABEL_101;
        }

        v30 = v74 - 1;
        result = memmove((v31 + 16 * v5), v72 + 2, 16 * (v74 - 1 - v5));
        *(v8 + 16) = v74 - 1;
        if (v74 <= 2)
        {
          goto LABEL_3;
        }
      }

      v37 = v31 + 16 * v30;
      v38 = *(v37 - 64);
      v39 = *(v37 - 56);
      v43 = __OFSUB__(v39, v38);
      v40 = v39 - v38;
      if (v43)
      {
        goto LABEL_102;
      }

      v42 = *(v37 - 48);
      v41 = *(v37 - 40);
      v43 = __OFSUB__(v41, v42);
      v35 = v41 - v42;
      v36 = v43;
      if (v43)
      {
        goto LABEL_103;
      }

      v44 = (v8 + 16 * v30);
      v46 = *v44;
      v45 = v44[1];
      v43 = __OFSUB__(v45, v46);
      v47 = v45 - v46;
      if (v43)
      {
        goto LABEL_105;
      }

      v43 = __OFADD__(v35, v47);
      v48 = v35 + v47;
      if (v43)
      {
        goto LABEL_107;
      }

      if (v48 >= v40)
      {
        v66 = (v31 + 16 * v5);
        v68 = *v66;
        v67 = v66[1];
        v43 = __OFSUB__(v67, v68);
        v69 = v67 - v68;
        if (v43)
        {
          goto LABEL_113;
        }

        if (v35 < v69)
        {
          v5 = v30 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v6 = a3[1];
    a4 = v82;
    if (v7 >= v6)
    {
      goto LABEL_88;
    }
  }

  v21 = *a3;
  v22 = *a3 + 8 * v7 - 8;
  v23 = v9 - v7;
LABEL_30:
  v24 = *(v21 + 8 * v7);
  v25 = v23;
  v26 = v22;
  while (1)
  {
    v27 = *v26;
    if (v24 >= *v26)
    {
LABEL_29:
      ++v7;
      v22 += 8;
      --v23;
      if (v7 != v6)
      {
        goto LABEL_30;
      }

      v7 = v6;
      goto LABEL_37;
    }

    if (!v21)
    {
      break;
    }

    *v26 = v24;
    v26[1] = v27;
    --v26;
    if (__CFADD__(v25++, 1))
    {
      goto LABEL_29;
    }
  }

  __break(1u);
LABEL_124:
  __break(1u);
LABEL_125:
  __break(1u);
LABEL_126:
  __break(1u);
LABEL_127:
  __break(1u);
LABEL_128:
  __break(1u);
  return result;
}

uint64_t sub_1A7D5FE24(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 7;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 3;
  v11 = a3 - __src;
  v12 = a3 - __src + 7;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 3;
  if (v10 < v12 >> 3)
  {
    if (a4 != __dst || &__dst[8 * v10] <= a4)
    {
      memmove(a4, __dst, 8 * v10);
    }

    v14 = &v4[8 * v10];
    if (v8 < 8)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_35;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v15 = *v6;
      if (*v6 < *v4)
      {
        break;
      }

      v15 = *v4;
      v16 = v7 == v4;
      v4 += 8;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 8;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v16 = v7 == v6;
    v6 += 8;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[8 * v13] <= a4)
  {
    memmove(a4, __src, 8 * v13);
  }

  v14 = &v4[8 * v13];
  if (v11 >= 8 && v6 > v7)
  {
LABEL_24:
    v17 = v6 - 8;
    v5 -= 8;
    v18 = v14;
    do
    {
      v19 = v5 + 8;
      v21 = *(v18 - 8);
      v18 -= 8;
      v20 = v21;
      if (v21 < *v17)
      {
        if (v19 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (v6 -= 8, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_35;
        }

        goto LABEL_24;
      }

      if (v19 != v14)
      {
        *v5 = v20;
      }

      v5 -= 8;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_35:
  v22 = v14 - v4 + (v14 - v4 < 0 ? 7uLL : 0);
  if (v6 != v4 || v6 >= &v4[v22 & 0xFFFFFFFFFFFFFFF8])
  {
    memmove(v6, v4, 8 * (v22 >> 3));
  }

  return 1;
}

uint64_t sub_1A7D60040(uint64_t result, char a2, uint64_t a3)
{
  v4 = *(v3 + 40);
  v5 = __OFSUB__(a3, v4);
  v6 = a3 - v4;
  if (!v5)
  {
    return (*(v3 + 24))(result, a2 & 1, v6, *(*(v3 + 48) + 64));
  }

  __break(1u);
  return result;
}

uint64_t sub_1A7D600C0(uint64_t result, char a2, uint64_t a3)
{
  v4 = *(v3 + 40);
  v5 = __OFSUB__(v4, a3);
  v6 = v4 - a3;
  if (!v5)
  {
    return (*(v3 + 24))(result, a2 & 1, v6, *(*(v3 + 48) + 64));
  }

  __break(1u);
  return result;
}

uint64_t sub_1A7D60108(uint64_t result, char a2, uint64_t a3)
{
  v4 = *(v3 + 40);
  v5 = __OFSUB__(v4, a3);
  v6 = v4 - a3;
  if (v5)
  {
    __break(1u);
  }

  else
  {
    v7 = *(v3 + 48);
    if (!__OFADD__(v6, v7))
    {
      return (*(v3 + 24))(result, a2 & 1, v6 + v7, *(*(v3 + 56) + 64));
    }
  }

  __break(1u);
  return result;
}

double destroy for IDSLinkPacketBitfield(void *a1)
{

  return result;
}

__n128 initializeWithTake for IDSLinkPacketBitfield(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t *assignWithTake for IDSLinkPacketBitfield(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  v4 = a2[2];
  a1[1] = a2[1];
  a1[2] = v4;

  *(a1 + 24) = *(a2 + 24);
  *(a1 + 2) = *(a2 + 2);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 7) = *(a2 + 7);
  return a1;
}

uint64_t getEnumTagSinglePayload for IDSLinkPacketBitfield(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for IDSLinkPacketBitfield(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1A7D60360()
{
  v0 = sub_1A7E22060();
  sub_1A7CC7A10(v0, qword_1EB2B6778);
  sub_1A7B0CB00(v0, qword_1EB2B6778);
  return sub_1A7E22050();
}

void sub_1A7D603E8(Swift::UInt16 withSequenceNumber@<W1>, char *a2@<X8>)
{
  IDSLinkPacketBitfield.didHearOfPacket(withSequenceNumber:)(withSequenceNumber);
  if (IDSLinkPacketBitfield.isPacketReceived(sequenceNumber:)(withSequenceNumber))
  {
    if (qword_1EB2B4808 != -1)
    {
      swift_once();
    }

    v4 = sub_1A7E22060();
    sub_1A7B0CB00(v4, qword_1EB2B6778);
    v5 = sub_1A7E22040();
    v6 = sub_1A7E228D0();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 33554688;
      *(v7 + 4) = withSequenceNumber;
      _os_log_impl(&dword_1A7AD9000, v5, v6, "Received duplicate packet: %hu", v7, 6u);
      MEMORY[0x1AC5654B0](v7, -1, -1);
    }

    v8 = 0;
    goto LABEL_17;
  }

  if (qword_1EB2B4808 != -1)
  {
    swift_once();
  }

  v9 = sub_1A7E22060();
  sub_1A7B0CB00(v9, qword_1EB2B6778);
  v10 = sub_1A7E22040();
  v11 = sub_1A7E228D0();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 33554688;
    *(v12 + 4) = withSequenceNumber;
    _os_log_impl(&dword_1A7AD9000, v10, v11, "Received original packet: %hu", v12, 6u);
    MEMORY[0x1AC5654B0](v12, -1, -1);
  }

  v13 = mach_continuous_time();
  if (qword_1EB2B3368 != -1)
  {
    swift_once();
  }

  v14 = *&qword_1EB2B3370 * v13;
  if (COERCE__INT64(fabs(*&qword_1EB2B3370 * v13)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_19;
  }

  if (v14 <= -1.0)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (v14 < 1.84467441e19)
  {
    IDSLinkPacketBitfield.didReceivePacket(withSequenceNumber:timestamp:)(withSequenceNumber, v14);
    v8 = 1;
LABEL_17:
    *a2 = v8;
    return;
  }

LABEL_20:
  __break(1u);
}

void __swiftcall IDSPacketDeduplicator.init()(IDSPacketDeduplicator *__return_ptr retstr)
{
  v1 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  [v1 init];
}

id IDSPacketDeduplicator.init()()
{
  v1 = OBJC_IVAR___IDSPacketDeduplicator_state;
  result = mach_continuous_time();
  v3 = result;
  if (qword_1EB2B3368 != -1)
  {
    result = swift_once();
  }

  v4 = *&qword_1EB2B3370 * v3;
  if (COERCE__INT64(fabs(*&qword_1EB2B3370 * v3)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (v4 <= -1.0)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v4 < 1.84467441e19)
  {
    v5 = &v0[v1];
    v6 = v4;
    v7 = sub_1A7E22580();
    *(v7 + 16) = 32;
    *(v7 + 32) = 0u;
    *(v7 + 48) = 0u;
    *(v7 + 64) = 0u;
    *(v7 + 80) = 0u;
    *(v7 + 96) = 0u;
    *(v7 + 112) = 0u;
    *(v7 + 128) = 0u;
    *(v7 + 144) = 0u;
    *(v7 + 160) = 0u;
    *(v7 + 176) = 0u;
    *(v7 + 192) = 0u;
    *(v7 + 208) = 0u;
    *(v7 + 224) = 0u;
    *(v7 + 240) = 0u;
    *(v7 + 256) = 0u;
    *(v7 + 272) = 0u;
    v8 = sub_1A7E22580();
    *(v8 + 16) = 32;
    *(v8 + 32) = 0u;
    *(v8 + 48) = 0u;
    *(v8 + 64) = 0u;
    *(v8 + 80) = 0u;
    *(v8 + 96) = 0u;
    *(v8 + 112) = 0u;
    *(v8 + 128) = 0u;
    *(v8 + 144) = 0u;
    *(v8 + 160) = 0u;
    *(v8 + 176) = 0u;
    *(v8 + 192) = 0u;
    *(v8 + 208) = 0u;
    *(v8 + 224) = 0u;
    *(v8 + 240) = 0u;
    *(v8 + 256) = 0u;
    *(v8 + 272) = 0u;
    *v5 = 0;
    *(v5 + 2) = 0u;
    *(v5 + 3) = 0u;
    *(v5 + 1) = v7;
    *(v5 + 2) = 2048;
    *(v5 + 3) = v8;
    *(v5 + 5) = v6;
    *(v5 + 28) = 0;
    *(v5 + 8) = 0;
    *(v5 + 9) = 0;
    v9.receiver = v0;
    v9.super_class = IDSPacketDeduplicator;
    return objc_msgSendSuper2(&v9, sel_init);
  }

LABEL_9:
  __break(1u);
  return result;
}

unint64_t type metadata accessor for IDSPacketDeduplicator()
{
  result = qword_1EB2B6798;
  if (!qword_1EB2B6798)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EB2B6798);
  }

  return result;
}

void *sub_1A7D60910(void *a1)
{

  return a1;
}

double IDSSemiActiveLinkQualityMonitor.update(probingState:time:)(char *a1, unint64_t a2, char a3)
{
  v5 = *a1;
  if (a3)
  {
    a2 = (*(v3 + 344))();
  }

  os_unfair_lock_lock((v3 + 40));
  sub_1A7D61C3C(v3 + 48, v5, a2, &v8);
  os_unfair_lock_unlock((v3 + 40));
  v6 = v8;
  if (v9 == 1)
  {
    IDSSemiActiveLinkQualityMonitor.sendSyntheticStatsPacket()();
  }

  return v6;
}

uint64_t sub_1A7D609F8()
{
  v0 = sub_1A7E22060();
  sub_1A7CC7A10(v0, qword_1EB2B67A0);
  sub_1A7B0CB00(v0, qword_1EB2B67A0);
  return sub_1A7E22050();
}

uint64_t (*IDSSemiActiveLinkQualityMonitor.syntheticPacketSender.getter())(uint64_t a1, uint64_t a2)
{
  os_unfair_lock_lock((v0 + 16));
  v1 = *(v0 + 24);
  if (v1)
  {
    v2 = *(v0 + 32);
    v3 = swift_allocObject();
    *(v3 + 16) = v1;
    *(v3 + 24) = v2;
    v4 = swift_allocObject();
    *(v4 + 16) = sub_1A7D6415C;
    *(v4 + 24) = v3;
    v5 = swift_allocObject();
    *(v5 + 16) = sub_1A7D6415C;
    *(v5 + 24) = v3;
    *(v0 + 24) = sub_1A7D64160;
    *(v0 + 32) = v5;

    os_unfair_lock_unlock((v0 + 16));
    v6 = swift_allocObject();
    *(v6 + 16) = sub_1A7D61F44;
    *(v6 + 24) = v4;
    return sub_1A7D61F3C;
  }

  else
  {
    os_unfair_lock_unlock((v0 + 16));
    return 0;
  }
}

uint64_t (*sub_1A7D60B98@<X0>(uint64_t (**a1)()@<X8>))()
{
  result = IDSSemiActiveLinkQualityMonitor.syntheticPacketSender.getter();
  if (result)
  {
    v4 = result;
    v5 = v3;
    result = swift_allocObject();
    *(result + 2) = v4;
    *(result + 3) = v5;
    v6 = sub_1A7D64160;
  }

  else
  {
    v6 = 0;
  }

  *a1 = v6;
  a1[1] = result;
  return result;
}

void sub_1A7D60C08(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_1A7D6415C;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *a2;
  sub_1A7B151B0(v3, v4);
  os_unfair_lock_lock((v7 + 16));
  v8 = *(v7 + 24);
  if (v8)
  {
    sub_1A7B15088(v8, *(v7 + 32));
  }

  if (v3)
  {
    v9 = swift_allocObject();
    *(v9 + 16) = v6;
    *(v9 + 24) = v5;
    v10 = sub_1A7D64160;
  }

  else
  {
    v10 = 0;
    v9 = 0;
  }

  *(v7 + 24) = v10;
  *(v7 + 32) = v9;

  os_unfair_lock_unlock((v7 + 16));
}

void IDSSemiActiveLinkQualityMonitor.syntheticPacketSender.setter(uint64_t a1, uint64_t a2)
{
  os_unfair_lock_lock((v2 + 16));
  v5 = *(v2 + 24);
  if (v5)
  {
    sub_1A7B15088(v5, *(v2 + 32));
  }

  if (a1)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = a1;
    *(v6 + 24) = a2;
    v7 = sub_1A7D64160;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *(v2 + 24) = v7;
  *(v2 + 32) = v6;

  os_unfair_lock_unlock((v2 + 16));
}

void (*IDSSemiActiveLinkQualityMonitor.syntheticPacketSender.modify(uint64_t (**a1)(uint64_t a1, uint64_t a2)))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  *a1 = IDSSemiActiveLinkQualityMonitor.syntheticPacketSender.getter();
  a1[1] = v3;
  return sub_1A7D60DD0;
}

void sub_1A7D60DD0(uint64_t *a1, char a2)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = *a1;
  if (a2)
  {
    sub_1A7B151B0(*a1, v2);
    os_unfair_lock_lock((v3 + 16));
    v5 = *(v3 + 24);
    if (v5)
    {
      sub_1A7B15088(v5, *(v3 + 32));
    }

    if (v4)
    {
      v6 = swift_allocObject();
      *(v6 + 16) = v4;
      *(v6 + 24) = v2;
      v7 = sub_1A7D64160;
    }

    else
    {
      v7 = 0;
      v6 = 0;
    }

    *(v3 + 24) = v7;
    *(v3 + 32) = v6;
    os_unfair_lock_unlock((v3 + 16));

    sub_1A7B15088(v4, v2);
  }

  else
  {
    os_unfair_lock_lock((v3 + 16));
    v8 = *(v3 + 24);
    if (v8)
    {
      sub_1A7B15088(v8, *(v3 + 32));
    }

    if (v4)
    {
      v9 = swift_allocObject();
      *(v9 + 16) = v4;
      *(v9 + 24) = v2;
      v10 = sub_1A7D64160;
    }

    else
    {
      v10 = 0;
      v9 = 0;
    }

    *(v3 + 24) = v10;
    *(v3 + 32) = v9;

    os_unfair_lock_unlock((v3 + 16));
  }
}

BOOL sub_1A7D60EF8(unint64_t a1)
{
  v2 = *(v1 + 24);
  v3 = a1 - v2;
  if (a1 <= v2)
  {
    return 0;
  }

  v4 = *(v1 + 232);
  if (qword_1EB2B4810 != -1)
  {
    swift_once();
  }

  v5 = sub_1A7E22060();
  sub_1A7B0CB00(v5, qword_1EB2B67A0);
  v6 = sub_1A7E22040();
  v7 = sub_1A7E228D0();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v11 = v9;
    *v8 = 136315394;
    *(v8 + 4) = sub_1A7B0CB38(0xD00000000000002CLL, 0x80000001A7EAFCF0, &v11);
    *(v8 + 12) = 2048;
    *(v8 + 14) = v3;
    _os_log_impl(&dword_1A7AD9000, v6, v7, "%s: delta: %llu", v8, 0x16u);
    sub_1A7B0CD6C(v9);
    MEMORY[0x1AC5654B0](v9, -1, -1);
    MEMORY[0x1AC5654B0](v8, -1, -1);
  }

  return v3 >= v4;
}

BOOL sub_1A7D61064(unint64_t a1)
{
  v2 = *(v1 + 208);
  v3 = a1 - v2;
  if (a1 <= v2)
  {
    return 0;
  }

  v4 = *(v1 + 256);
  if (qword_1EB2B4810 != -1)
  {
    swift_once();
  }

  v5 = sub_1A7E22060();
  sub_1A7B0CB00(v5, qword_1EB2B67A0);
  v6 = sub_1A7E22040();
  v7 = sub_1A7E228D0();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v11 = v9;
    *v8 = 136315394;
    *(v8 + 4) = sub_1A7B0CB38(0xD00000000000002ELL, 0x80000001A7EAFCC0, &v11);
    *(v8 + 12) = 2048;
    *(v8 + 14) = v3;
    _os_log_impl(&dword_1A7AD9000, v6, v7, "%s: delta: %llu", v8, 0x16u);
    sub_1A7B0CD6C(v9);
    MEMORY[0x1AC5654B0](v9, -1, -1);
    MEMORY[0x1AC5654B0](v8, -1, -1);
  }

  return v3 >= v4;
}

BOOL sub_1A7D611D0(unint64_t a1)
{
  v2 = *(v1 + 3);
  v3 = a1 - v2;
  if (a1 <= v2)
  {
    return 0;
  }

  v4 = *v1;
  v5 = *(v1 + 28);
  v6 = *(v1 + 30);
  v7 = v1[272];
  if (qword_1EB2B4810 != -1)
  {
    swift_once();
  }

  v8 = sub_1A7E22060();
  sub_1A7B0CB00(v8, qword_1EB2B67A0);
  v9 = sub_1A7E22040();
  v10 = sub_1A7E228D0();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v14 = v12;
    *v11 = 136315650;
    *(v11 + 4) = sub_1A7B0CB38(0xD000000000000028, 0x80000001A7EAFDD0, &v14);
    *(v11 + 12) = 2048;
    *(v11 + 14) = v3;
    *(v11 + 22) = 1024;
    *(v11 + 24) = v7;
    _os_log_impl(&dword_1A7AD9000, v9, v10, "%s: delta %llu, pending response: %{BOOL}d", v11, 0x1Cu);
    sub_1A7B0CD6C(v12);
    MEMORY[0x1AC5654B0](v12, -1, -1);
    MEMORY[0x1AC5654B0](v11, -1, -1);
  }

  if ((v4 | v7))
  {
    return v3 >= v6;
  }

  else
  {
    return v3 >= v5;
  }
}

BOOL sub_1A7D61378(unint64_t a1)
{
  v2 = *(v1 + 26);
  v3 = a1 - v2;
  if (a1 <= v2)
  {
    return 0;
  }

  v4 = *v1;
  v5 = *(v1 + 31);
  v6 = *(v1 + 33);
  v7 = v1[272];
  if (qword_1EB2B4810 != -1)
  {
    swift_once();
  }

  v8 = sub_1A7E22060();
  sub_1A7B0CB00(v8, qword_1EB2B67A0);
  v9 = sub_1A7E22040();
  v10 = sub_1A7E228D0();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v14 = v12;
    *v11 = 136315650;
    *(v11 + 4) = sub_1A7B0CB38(0xD00000000000002ALL, 0x80000001A7EAFDA0, &v14);
    *(v11 + 12) = 2048;
    *(v11 + 14) = v3;
    *(v11 + 22) = 1024;
    *(v11 + 24) = v7;
    _os_log_impl(&dword_1A7AD9000, v9, v10, "%s: delta %llu, pending response: %{BOOL}d", v11, 0x1Cu);
    sub_1A7B0CD6C(v12);
    MEMORY[0x1AC5654B0](v12, -1, -1);
    MEMORY[0x1AC5654B0](v11, -1, -1);
  }

  if ((v4 | v7))
  {
    return v3 >= v6;
  }

  else
  {
    return v3 >= v5;
  }
}

IDSFoundation::IDSSemiActiveLinkQualityMonitor::Overheads __swiftcall IDSSemiActiveLinkQualityMonitor.Overheads.init(bytesPerPacket:packetsPerSecond:)(Swift::Int bytesPerPacket, Swift::Double packetsPerSecond)
{
  *v2 = bytesPerPacket;
  *(v2 + 8) = packetsPerSecond;
  result.packetsPerSecond = packetsPerSecond;
  result.bytesPerPacket = bytesPerPacket;
  return result;
}

uint64_t IDSSemiActiveLinkQualityMonitor.__allocating_init(linkUniqueName:activeOverhead:passiveOverhead:timeFn:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t), uint64_t a6)
{
  swift_allocObject();
  v12 = sub_1A7D63604(a1, a2, a3, a4, a5, a6);

  return v12;
}

uint64_t IDSSemiActiveLinkQualityMonitor.init(linkUniqueName:activeOverhead:passiveOverhead:timeFn:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t), uint64_t a6)
{
  v6 = sub_1A7D63604(a1, a2, a3, a4, a5, a6);

  return v6;
}

unint64_t sub_1A7D617F4@<X0>(void *a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = a1[23];
  v6 = a1[24];
  result = sub_1A7D641E0(a1[16]);
  v8 = v6 - result;
  if (__OFSUB__(v6, result))
  {
    __break(1u);
    goto LABEL_7;
  }

  v9 = result;
  result = sub_1A7D5E3B0();
  v10 = a2 - result;
  if (a2 < result)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  v11 = v5;
  if (v10)
  {
    v11 = v11 / (v10 / 1000000.0);
  }

  *a3 = v6;
  *(a3 + 8) = v9;
  *(a3 + 16) = v8;
  *(a3 + 24) = v8 / v6;
  *(a3 + 32) = v11;
  return result;
}

Swift::tuple_Int_outOf_Int __swiftcall IDSSemiActiveLinkQualityMonitor.packetsReceived(outOfMostRecent:)(Swift::Int outOfMostRecent)
{
  os_unfair_lock_lock(v1 + 10);
  v3 = IDSLinkPacketBitfield.packetsReceived(outOfMostRecent:)(outOfMostRecent);
  os_unfair_lock_unlock(v1 + 10);
  v4 = v3._0;
  outOf = v3.outOf;
  result.outOf = outOf;
  result._0 = v4;
  return result;
}

Swift::tuple_Int_outOf_Int __swiftcall IDSSemiActiveLinkQualityMonitor.uplinkPacketsReceived(outOfMostRecent:)(Swift::Int outOfMostRecent)
{
  os_unfair_lock_lock(v1 + 10);
  v3 = IDSLinkPacketBitfield.packetsReceived(outOfMostRecent:)(outOfMostRecent);
  os_unfair_lock_unlock(v1 + 10);
  v4 = v3._0;
  outOf = v3.outOf;
  result.outOf = outOf;
  result._0 = v4;
  return result;
}

void sub_1A7D619C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  os_unfair_lock_lock(v5 + 10);
  a5(a1, a2, a3, a4);

  j__os_unfair_lock_unlock(v5 + 10);
}

Swift::tuple_OpaquePointer_earliestTime_UInt64_maxCount_Int __swiftcall IDSSemiActiveLinkQualityMonitor.packetsReceived(since:)(Swift::UInt64 since)
{
  v2 = v1;
  os_unfair_lock_lock(v1 + 10);
  v10 = IDSLinkPacketBitfield.packetsReceived(since:)(since);
  rawValue = v10._0._rawValue;
  earliestTime = v10.earliestTime;
  maxCount = v10.maxCount;
  os_unfair_lock_unlock(v2 + 10);
  v7 = rawValue;
  v8 = earliestTime;
  v9 = maxCount;
  result.maxCount = v9;
  result.earliestTime = v8;
  result._0._rawValue = v7;
  return result;
}

void sub_1A7D61AE4(uint64_t a1, char a2, void (*a3)(uint64_t, uint64_t))
{
  v5 = v3;
  if (a2)
  {
    a1 = (*(v5 + 344))();
  }

  os_unfair_lock_lock((v5 + 40));
  a3(v5 + 48, a1);

  os_unfair_lock_unlock((v5 + 40));
}

unint64_t sub_1A7D61B68@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *(a1 + 112);
  sub_1A7D641E0(*(a1 + 56));
  result = sub_1A7D5E3B0();
  v8 = a2 - result;
  if (a2 < result)
  {
    __break(1u);
  }

  else
  {
    v9 = v6;
    if (v8)
    {
      v9 = v9 / (v8 / 1000000.0);
    }

    v10 = *(a1 + 40);
    v11 = *(a1 + 42);
    v12 = *(a1 + 48);
    *a3 = *(a1 + 8);
    *(a3 + 8) = v10;
    *(a3 + 16) = v11;
    *(a3 + 24) = v12;
    *(a3 + 32) = v9;
  }

  return result;
}

BOOL sub_1A7D61C3C@<W0>(uint64_t a1@<X0>, char a2@<W1>, unint64_t a3@<X3>, uint64_t a4@<X8>)
{
  if (qword_1EB2B4810 != -1)
  {
    swift_once();
  }

  v8 = sub_1A7E22060();
  sub_1A7B0CB00(v8, qword_1EB2B67A0);
  v9 = sub_1A7E22040();
  v10 = sub_1A7E228D0();
  if (os_log_type_enabled(v9, v10))
  {
    v28 = a3;
    v11 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v29 = v27;
    *v11 = 136315138;
    v12 = a2 & 1;
    v13 = sub_1A7E222F0();
    v15 = sub_1A7B0CB38(v13, v14, &v29);

    *(v11 + 4) = v15;
    _os_log_impl(&dword_1A7AD9000, v9, v10, "update(probingState:time:): probing behavior: %s", v11, 0xCu);
    sub_1A7B0CD6C(v27);
    MEMORY[0x1AC5654B0](v27, -1, -1);
    v16 = v11;
    a3 = v28;
    MEMORY[0x1AC5654B0](v16, -1, -1);
  }

  else
  {

    v12 = a2 & 1;
  }

  *a1 = v12;
  result = sub_1A7D611D0(a3) || sub_1A7D61378(a3);
  v18 = *(a1 + 24);
  if (*a1 == 1)
  {
    v19 = *(a1 + 240);
    v20 = __CFADD__(v18, v19);
    v18 += v19;
    if (v20)
    {
LABEL_21:
      __break(1u);
      goto LABEL_22;
    }

    v21 = *(a1 + 208);
    v22 = *(a1 + 264);
    v20 = __CFADD__(v21, v22);
    v23 = v21 + v22;
    if (!v20)
    {
LABEL_16:
      if (v23 < v18)
      {
        v18 = v23;
      }

      if (((v18 | a3) & 0x8000000000000000) == 0)
      {
        *a4 = ((v18 - a3) & ~((v18 - a3) >> 63)) / 1000000.0;
        *(a4 + 8) = result;
        return result;
      }

      __break(1u);
      goto LABEL_21;
    }

    __break(1u);
  }

  v24 = *(a1 + 224);
  v20 = __CFADD__(v18, v24);
  v18 += v24;
  if (v20)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v25 = *(a1 + 208);
  v26 = *(a1 + 248);
  v20 = __CFADD__(v25, v26);
  v23 = v25 + v26;
  if (!v20)
  {
    goto LABEL_16;
  }

LABEL_23:
  __break(1u);
  return result;
}

Swift::Void __swiftcall IDSSemiActiveLinkQualityMonitor.sendSyntheticStatsPacket()()
{
  v1 = IDSSemiActiveLinkQualityMonitor.syntheticPacketSender.getter();
  if (v1)
  {
    v3 = v1;
    v4 = v2;
    os_unfair_lock_lock(v0 + 10);
    sub_1A7D61F4C(&v0[12], v0, &v5);
    os_unfair_lock_unlock(v0 + 10);
    if (v5 == 1)
    {
      v3(0, 0xC000000000000000);
    }

    sub_1A7B15088(v3, v4);
  }
}

void sub_1A7D61F4C(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (*(a1 + 273))
  {
    v4 = 0;
  }

  else
  {
    if (qword_1EB2B4810 != -1)
    {
      swift_once();
    }

    v7 = sub_1A7E22060();
    sub_1A7B0CB00(v7, qword_1EB2B67A0);

    v8 = sub_1A7E22040();
    v9 = sub_1A7E228D0();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v12 = v11;
      *v10 = 136315138;
      *(v10 + 4) = sub_1A7B0CB38(*(a2 + 328), *(a2 + 336), &v12);
      _os_log_impl(&dword_1A7AD9000, v8, v9, "sendSyntheticStatsPacket: request packet on link %s", v10, 0xCu);
      sub_1A7B0CD6C(v11);
      MEMORY[0x1AC5654B0](v11, -1, -1);
      MEMORY[0x1AC5654B0](v10, -1, -1);
    }

    v4 = 1;
    *(a1 + 273) = 1;
  }

  *a3 = v4;
}

uint64_t IDSSemiActiveLinkQualityMonitor.readQualityBytesFromPacketReturningDeduplicationID(_:packetEnd:time:)(char *a1, unint64_t a2, Swift::UInt64 a3, char a4)
{
  v5 = v4;
  if (a4)
  {
    a3 = (*(v4 + 344))();
  }

  if (qword_1EB2B4810 != -1)
  {
    swift_once();
  }

  v9 = sub_1A7E22060();
  sub_1A7B0CB00(v9, qword_1EB2B67A0);

  v10 = sub_1A7E22040();
  v11 = sub_1A7E228D0();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v19 = v13;
    *v12 = 136315138;
    *(v12 + 4) = sub_1A7B0CB38(*(v5 + 328), *(v5 + 336), &v19);
    _os_log_impl(&dword_1A7AD9000, v10, v11, "readQualityBytesFromPacketReturningDeduplicationID: receive packet on link %s", v12, 0xCu);
    sub_1A7B0CD6C(v13);
    MEMORY[0x1AC5654B0](v13, -1, -1);
    MEMORY[0x1AC5654B0](v12, -1, -1);
  }

  os_unfair_lock_lock((v5 + 40));
  v20 = 0;
  v14 = 1;
  v21 = 1;
  if (a1 >= a2)
  {
    v17 = 0;
  }

  else
  {
    do
    {
      v15 = ((*a1 >> 5) & 6) + 2;
      if ((a2 - a1) < v15)
      {
        break;
      }

      v16 = *a1;
      sub_1A7D622AC(a1, *a1, v5 + 48, &v20, a3);
      if ((v16 & 8) == 0)
      {
        break;
      }

      a1 += v15;
    }

    while (a1 < a2);
    v17 = v20;
    v14 = v21;
  }

  os_unfair_lock_unlock((v5 + 40));
  return v17 | (v14 << 16);
}

void sub_1A7D622AC(unsigned __int8 *a1, unsigned __int8 a2, uint64_t a3, uint64_t a4, Swift::UInt64 a5)
{
  v7 = a2 >> 4;
  if (v7 > 7)
  {
    if (v7 == 8)
    {
      if (qword_1EB2B4810 != -1)
      {
        swift_once();
      }

      v22 = sub_1A7E22060();
      sub_1A7B0CB00(v22, qword_1EB2B67A0);
      v23 = sub_1A7E22040();
      v24 = sub_1A7E228D0();
      if (os_log_type_enabled(v23, v24))
      {
        v25 = swift_slowAlloc();
        *v25 = 0;
        _os_log_impl(&dword_1A7AD9000, v23, v24, "readQualityChunk: reading downlink stats chunk", v25, 2u);
        MEMORY[0x1AC5654B0](v25, -1, -1);
      }

      sub_1A7D638BC(a1, a3);
    }

    else if (v7 == 9)
    {
      if (qword_1EB2B4810 != -1)
      {
        swift_once();
      }

      v13 = sub_1A7E22060();
      sub_1A7B0CB00(v13, qword_1EB2B67A0);
      v14 = sub_1A7E22040();
      v15 = sub_1A7E228D0();
      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        *v16 = 0;
        _os_log_impl(&dword_1A7AD9000, v14, v15, "readQualityChunk: reading uplink stats chunk", v16, 2u);
        MEMORY[0x1AC5654B0](v16, -1, -1);
      }

      sub_1A7D63934(a1, a3);
    }
  }

  else if (a2 >> 4)
  {
    if (v7 == 2)
    {
      if (qword_1EB2B4810 != -1)
      {
        swift_once();
      }

      v9 = sub_1A7E22060();
      sub_1A7B0CB00(v9, qword_1EB2B67A0);
      v10 = sub_1A7E22040();
      v11 = sub_1A7E228D0();
      if (os_log_type_enabled(v10, v11))
      {
        v12 = swift_slowAlloc();
        *v12 = 0;
        _os_log_impl(&dword_1A7AD9000, v10, v11, "readQualityChunk: reading deduplication id", v12, 2u);
        MEMORY[0x1AC5654B0](v12, -1, -1);
      }

      *a4 = bswap32(*a1 & 0xFF07) >> 16;
      *(a4 + 2) = 0;
    }
  }

  else
  {
    if (qword_1EB2B4810 != -1)
    {
      swift_once();
    }

    v18 = sub_1A7E22060();
    sub_1A7B0CB00(v18, qword_1EB2B67A0);
    v19 = sub_1A7E22040();
    v20 = sub_1A7E228D0();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_1A7AD9000, v19, v20, "readQualityChunk: reading sequence number", v21, 2u);
      MEMORY[0x1AC5654B0](v21, -1, -1);
    }

    sub_1A7D626A0(a1, a3, a5);
  }
}

void sub_1A7D626A0(_WORD *a1, uint64_t a2, Swift::UInt64 timestamp)
{
  v4 = v3;
  v6 = bswap32(*a1 & 0xFF07);
  v7 = HIWORD(v6);
  IDSLinkPacketBitfield.didReceivePacket(withSequenceNumber:timestamp:)(HIWORD(v6), timestamp);
  if (qword_1EB2B4810 != -1)
  {
    swift_once();
  }

  v8 = sub_1A7E22060();
  sub_1A7B0CB00(v8, qword_1EB2B67A0);

  v9 = sub_1A7E22040();
  v10 = sub_1A7E228D0();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v13 = v12;
    *v11 = 136315650;
    *(v11 + 4) = sub_1A7B0CB38(0xD000000000000036, 0x80000001A7EAFD20, &v13);
    *(v11 + 12) = 2080;
    *(v11 + 14) = sub_1A7B0CB38(*(v4 + 328), *(v4 + 336), &v13);
    *(v11 + 22) = 512;
    *(v11 + 24) = v7;
    _os_log_impl(&dword_1A7AD9000, v9, v10, "%s for link %s: received packet with sequence number %hu", v11, 0x1Au);
    swift_arrayDestroy();
    MEMORY[0x1AC5654B0](v12, -1, -1);
    MEMORY[0x1AC5654B0](v11, -1, -1);
  }

  ++*(a2 + 200);
}

uint64_t IDSSemiActiveLinkQualityMonitor.prependQualityBytesToPacketIfNeeded(_:packetHeadroomStart:deduplicationID:time:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v8 = a3;
  if (a5)
  {
    a4 = (*(v5 + 344))();
  }

  v23 = 0;
  if (qword_1EB2B4810 != -1)
  {
    swift_once();
  }

  v11 = sub_1A7E22060();
  sub_1A7B0CB00(v11, qword_1EB2B67A0);

  v12 = sub_1A7E22040();
  v13 = sub_1A7E228D0();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v22 = v15;
    *v14 = 136315138;
    *(v14 + 4) = sub_1A7B0CB38(*(v6 + 328), *(v6 + 336), &v22);
    _os_log_impl(&dword_1A7AD9000, v12, v13, "prependQualityBytesToPacketIfNeeded: send packet on link %s", v14, 0xCu);
    sub_1A7B0CD6C(v15);
    MEMORY[0x1AC5654B0](v15, -1, -1);
    MEMORY[0x1AC5654B0](v14, -1, -1);
  }

  os_unfair_lock_lock((v6 + 40));
  if ((v8 & 0x10000) == 0)
  {
    a1 = sub_1A7D63C0C(a1, a2, &v23, v8);
  }

  if (sub_1A7D60EF8(a4))
  {
    a1 = sub_1A7D62B38(a1, a2, &v23, a4, v6 + 48);
    *(v6 + 320) = 0;
  }

  if (sub_1A7D61064(a4))
  {
    a1 = sub_1A7D62EB8(a1, a2, &v23, a4, v6 + 48);
    *(v6 + 320) = 0;
  }

  if (a1 - a2 >= 2)
  {
    v16 = *(v6 + 50);
    *(v6 + 50) = v16 + 1;
    v17 = sub_1A7E22040();
    v18 = sub_1A7E228D0();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 33554688;
      *(v19 + 4) = v16;
      _os_log_impl(&dword_1A7AD9000, v17, v18, "Prepending sequence number to packet: %hu", v19, 6u);
      MEMORY[0x1AC5654B0](v19, -1, -1);
    }

    v20 = v16 & 0x7FF;
    if (v23)
    {
      v20 = v16 & 0x7FF | 0x800;
    }

    *(a1 - 2) = __rev16(v20);
    a1 -= 2;
  }

  ++*(v6 + 56);
  *(v6 + 321) = 0;
  os_unfair_lock_unlock((v6 + 40));
  return a1;
}

uint64_t sub_1A7D62B38(uint64_t result, uint64_t a2, _BYTE *a3, uint64_t a4, uint64_t a5)
{
  if (result - a2 < 6)
  {
    return result;
  }

  v10 = *(a5 + 2);
  v11 = v10 != 0;
  v12 = v10 - 1;
  if (v11)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  v14 = *(a5 + 8);
  v15 = *(a5 + 16);
  v16 = v14 - v15;
  if (v14 < v15)
  {
    __break(1u);
  }

  else
  {
    v7 = v6;
    v8 = a4;
    v5 = a3;
    v17 = 0x900000000000;
    if (*a3)
    {
      v17 = 0x980000000000;
    }

    *(a5 + 16) = v16;
    v18 = *(a5 + 32);
    *(a5 + 32) = v18 + 1;
    v36 = v18;
    v19 = v17 & 0xFFFFFFFF00000FFFLL | ((v13 & 0x7FF) << 32) | ((v16 & 0xFFF) << 20) | (v18 << 12);
    if (*a5 == 1)
    {
      v38 = result;
      if (qword_1EB2B4810 != -1)
      {
        swift_once();
      }

      v20 = sub_1A7E22060();
      sub_1A7B0CB00(v20, qword_1EB2B67A0);

      v21 = sub_1A7E22040();
      v22 = sub_1A7E228D0();

      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        v35 = v8;
        v24 = swift_slowAlloc();
        v39 = v24;
        *v23 = 136315394;
        *(v23 + 4) = sub_1A7B0CB38(0xD000000000000050, 0x80000001A7EAFC60, &v39);
        *(v23 + 12) = 2080;
        *(v23 + 14) = sub_1A7B0CB38(*(v7 + 328), *(v7 + 336), &v39);
        _os_log_impl(&dword_1A7AD9000, v21, v22, "%s for link %s: requesting response packet", v23, 0x16u);
        swift_arrayDestroy();
        v25 = v24;
        v8 = v35;
        MEMORY[0x1AC5654B0](v25, -1, -1);
        MEMORY[0x1AC5654B0](v23, -1, -1);
      }

      v19 |= 0x800uLL;
      result = v38;
    }

    *(result - 6) = BYTE5(v19);
    v26 = result - 6;
    *(v26 + 2) = bswap32(v19);
    v37 = v26;
    *(v26 + 1) = BYTE4(v19);
    if (qword_1EB2B4810 == -1)
    {
      goto LABEL_15;
    }
  }

  swift_once();
LABEL_15:
  v27 = sub_1A7E22060();
  sub_1A7B0CB00(v27, qword_1EB2B67A0);

  v28 = sub_1A7E22040();
  v29 = sub_1A7E228D0();

  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    v31 = v5;
    v32 = v8;
    v33 = swift_slowAlloc();
    v39 = v33;
    *v30 = 136315906;
    *(v30 + 4) = sub_1A7B0CB38(*(v7 + 328), *(v7 + 336), &v39);
    *(v30 + 12) = 512;
    *(v30 + 14) = v13;
    *(v30 + 16) = 2048;
    *(v30 + 18) = v16;
    *(v30 + 26) = 2048;
    *(v30 + 28) = v36;
    _os_log_impl(&dword_1A7AD9000, v28, v29, "Prepending uplink stats to packet for link %s: sequence number: %hu, packets sent: %llu, stats packet sequence number: %llu", v30, 0x24u);
    sub_1A7B0CD6C(v33);
    v34 = v33;
    v8 = v32;
    v5 = v31;
    MEMORY[0x1AC5654B0](v34, -1, -1);
    MEMORY[0x1AC5654B0](v30, -1, -1);
  }

  *(a5 + 24) = v8;
  *v5 = 1;
  return v37;
}

uint64_t sub_1A7D62EB8(uint64_t a1, uint64_t a2, _BYTE *a3, uint64_t a4, uint64_t a5)
{
  v6 = a1;
  if (a1 - a2 < 6)
  {
    return v6;
  }

  v7 = v5;
  if (*a3)
  {
    v10 = 34816;
  }

  else
  {
    v10 = 0x8000;
  }

  v11 = *(a5 + 176);
  v12 = *(a5 + 192);
  v13 = *(a5 + 136);
  v14 = v12 >= v13;
  v15 = sub_1A7D641E0(*(a5 + 128));
  v16 = v12 - v15;
  if (__OFSUB__(v12, v15))
  {
    __break(1u);
    goto LABEL_13;
  }

  if (v16 < 0)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v26 = a3;
  v17 = v10 & 0xFFFFFFFFFFFFF800 | v11 & 0x7FF;
  v18 = v16 & 0x7FF | (v17 << 12) | (v14 << 11);
  v14 = *(a5 + 216);
  *(a5 + 216) = v14 + 1;
  *(v6 - 6) = BYTE1(v17);
  v6 -= 6;
  *(v6 + 4) = (16 * v14);
  *(v6 + 3) = ((v14 << 12) & 0xF0000u | (v18 << 20)) >> 16;
  *(v6 + 2) = v18 >> 4;
  *(v6 + 1) = v11;
  if (qword_1EB2B4810 != -1)
  {
LABEL_14:
    swift_once();
  }

  v19 = sub_1A7E22060();
  sub_1A7B0CB00(v19, qword_1EB2B67A0);

  v20 = sub_1A7E22040();
  v21 = sub_1A7E228D0();

  if (os_log_type_enabled(v20, v21))
  {
    v25 = v12 >= v13;
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v28 = v23;
    *v22 = 136316162;
    *(v22 + 4) = sub_1A7B0CB38(*(v7 + 328), *(v7 + 336), &v28);
    *(v22 + 12) = 512;
    *(v22 + 14) = v11;
    *(v22 + 16) = 1024;
    *(v22 + 18) = v25;
    *(v22 + 22) = 2048;
    *(v22 + 24) = v16;
    *(v22 + 32) = 2048;
    *(v22 + 34) = v14;
    _os_log_impl(&dword_1A7AD9000, v20, v21, "Prepending downlink stats to packet for link %s: last sequence number: %hu, buffer full?: %{BOOL}d, packets missing: %llu, statsPacketSequenceNumber: %llu", v22, 0x2Au);
    sub_1A7B0CD6C(v23);
    MEMORY[0x1AC5654B0](v23, -1, -1);
    MEMORY[0x1AC5654B0](v22, -1, -1);
  }

  *(a5 + 208) = a4;
  *v26 = 1;
  return v6;
}

uint64_t IDSSemiActiveLinkQualityMonitor.deinit()
{
  sub_1A7D63D40(v0 + 24);
  sub_1A7D63DA8((v0 + 48));

  return v0;
}

uint64_t IDSSemiActiveLinkQualityMonitor.__deallocating_deinit()
{
  sub_1A7D63D40(v0 + 24);
  sub_1A7D63DA8((v0 + 48));

  return swift_deallocClassInstance();
}

double sub_1A7D63274(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v5 = sub_1A7E21A10();
  v7 = v6;

  v3(v5, v7);
  sub_1A7CC7E50(v5, v7);

  return result;
}

void __swiftcall IDSSemiActiveLinkQualityMonitorHandle.init()(IDSSemiActiveLinkQualityMonitorHandle *__return_ptr retstr)
{
  v1 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  [v1 init];
}

id IDSSemiActiveLinkQualityMonitorHandle.init()()
{
  *(v0 + OBJC_IVAR___IDSSemiActiveLinkQualityMonitorHandle_monitor) = 0;
  v2.super_class = IDSSemiActiveLinkQualityMonitorHandle;
  return objc_msgSendSuper2(&v2, sel_init);
}

uint64_t sub_1A7D63604(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t), uint64_t a6)
{
  v7 = v6;
  v8 = *(a3 + 8);
  v9 = *(a4 + 8);
  *(v6 + 16) = 0;
  *(v6 + 24) = 0;
  *(v6 + 32) = 0;
  *(v6 + 328) = result;
  *(v6 + 336) = a2;
  *(v6 + 344) = a5;
  *(v6 + 352) = a6;
  v10 = 1.0 / v8 * 1000000.0;
  if (v10 <= -1.0)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v10 >= 1.84467441e19)
  {
LABEL_9:
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v11 = 1.0 / v9 * 1000000.0;
  if ((*&v10 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (*&v11 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_10;
  }

  if (v11 <= -1.0)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (v11 < 1.84467441e19)
  {
    v13 = v10;
    v14 = v11;

    v16 = a5(v15);
    v17 = sub_1A7E22580();
    *(v17 + 16) = 32;
    *(v17 + 32) = 0u;
    *(v17 + 48) = 0u;
    *(v17 + 64) = 0u;
    *(v17 + 80) = 0u;
    *(v17 + 96) = 0u;
    *(v17 + 112) = 0u;
    *(v17 + 128) = 0u;
    *(v17 + 144) = 0u;
    *(v17 + 160) = 0u;
    *(v17 + 176) = 0u;
    *(v17 + 192) = 0u;
    *(v17 + 208) = 0u;
    *(v17 + 224) = 0u;
    *(v17 + 240) = 0u;
    *(v17 + 256) = 0u;
    *(v17 + 272) = 0u;
    v18 = sub_1A7E22580();
    *(v18 + 16) = 32;
    *(v18 + 32) = 0u;
    *(v18 + 48) = 0u;
    *(v18 + 64) = 0u;
    *(v18 + 80) = 0u;
    *(v18 + 96) = 0u;
    *(v18 + 112) = 0u;
    *(v18 + 128) = 0u;
    *(v18 + 144) = 0u;
    *(v18 + 160) = 0u;
    *(v18 + 176) = 0u;
    *(v18 + 192) = 0u;
    *(v18 + 208) = 0u;
    *(v18 + 224) = 0u;
    *(v18 + 240) = 0u;
    *(v18 + 256) = 0u;
    *(v18 + 272) = 0u;
    v19 = (a5)();
    v20 = sub_1A7E22580();
    *(v20 + 16) = 32;
    *(v20 + 32) = 0u;
    *(v20 + 48) = 0u;
    *(v20 + 64) = 0u;
    *(v20 + 80) = 0u;
    *(v20 + 96) = 0u;
    *(v20 + 112) = 0u;
    *(v20 + 128) = 0u;
    *(v20 + 144) = 0u;
    *(v20 + 160) = 0u;
    *(v20 + 176) = 0u;
    *(v20 + 192) = 0u;
    *(v20 + 208) = 0u;
    *(v20 + 224) = 0u;
    *(v20 + 240) = 0u;
    *(v20 + 256) = 0u;
    *(v20 + 272) = 0u;
    v21 = sub_1A7E22580();
    *(v21 + 16) = 32;
    *(v21 + 32) = 0u;
    *(v21 + 48) = 0u;
    *(v21 + 64) = 0u;
    *(v21 + 80) = 0u;
    *(v21 + 96) = 0u;
    *(v21 + 112) = 0u;
    *(v21 + 128) = 0u;
    *(v21 + 144) = 0u;
    *(v21 + 160) = 0u;
    *(v21 + 176) = 0u;
    *(v21 + 192) = 0u;
    *(v21 + 208) = 0u;
    *(v21 + 224) = 0u;
    *(v21 + 240) = 0u;
    *(v21 + 256) = 0u;
    *(v21 + 272) = 0u;
    *(v7 + 40) = 0;
    *(v7 + 48) = 0;
    *(v7 + 50) = 0;
    *(v7 + 56) = 0u;
    *(v7 + 72) = 0u;
    *(v7 + 88) = 0;
    *(v7 + 96) = 0;
    *(v7 + 104) = v17;
    *(v7 + 112) = 2048;
    *(v7 + 120) = v18;
    *(v7 + 128) = 0;
    *(v7 + 136) = v16;
    *(v7 + 144) = 0;
    *(v7 + 152) = 0;
    *(v7 + 160) = 0;
    *(v7 + 168) = 0;
    *(v7 + 176) = v20;
    *(v7 + 184) = 2048;
    *(v7 + 192) = v21;
    *(v7 + 200) = 0;
    *(v7 + 208) = v19;
    *(v7 + 216) = 0;
    *(v7 + 224) = 0;
    *(v7 + 264) = 0;
    *(v7 + 248) = 0u;
    *(v7 + 232) = 0u;
    *(v7 + 272) = xmmword_1A7E4AD80;
    *(v7 + 288) = xmmword_1A7E4AD90;
    *(v7 + 304) = xmmword_1A7E4ADA0;
    *(v7 + 320) = 0;
    os_unfair_lock_lock((v7 + 40));
    *(v7 + 304) = 250000;
    *(v7 + 312) = v13;
    *(v7 + 288) = v13;
    *(v7 + 296) = v14;
    *(v7 + 272) = v14;
    *(v7 + 280) = 250000;
    os_unfair_lock_unlock((v7 + 40));
    return v7;
  }

LABEL_12:
  __break(1u);
  return result;
}

void sub_1A7D638BC(unsigned __int8 *a1, uint64_t a2)
{
  v2 = (*a1 << 16) | (a1[1] << 8);
  v3 = a1[2];
  v4 = a1[3];
  v5 = (v2 >> 8) & 0x7FF;
  if (v3 >= 0)
  {
    v6 = v5 + 1;
  }

  else
  {
    v6 = 2048;
  }

  v7 = (((16 * v4) | ((v2 & 0xFFFFFFFFFFFFFF00 | v3) << 12)) >> 8) & 0x7FF;
  *(a2 + 48) = v7 / v6;
  *(a2 + 40) = v6;
  *(a2 + 42) = v7;
  IDSLinkPacketBitfield.inferPackets(upTo:knownPacketsMissing:)(v5, v7);
}

void sub_1A7D63934(unsigned __int8 *a1, uint64_t a2)
{
  v3 = v2;
  v5 = a1[1];
  v6 = *a1 << 8;
  if ((a1[4] & 8) != 0)
  {
    if (qword_1EB2B4810 != -1)
    {
      swift_once();
    }

    v7 = sub_1A7E22060();
    sub_1A7B0CB00(v7, qword_1EB2B67A0);
    v8 = sub_1A7E22040();
    v9 = sub_1A7E228D0();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v18 = v11;
      *v10 = 136315138;
      *(v10 + 4) = sub_1A7B0CB38(0xD000000000000033, 0x80000001A7EAFD60, &v18);
      _os_log_impl(&dword_1A7AD9000, v8, v9, "%s: other side requests a response packet", v10, 0xCu);
      sub_1A7B0CD6C(v11);
      MEMORY[0x1AC5654B0](v11, -1, -1);
      MEMORY[0x1AC5654B0](v10, -1, -1);
    }

    *(a2 + 272) = 1;
  }

  v12 = v6 & 0x700 | v5;
  if (v12)
  {
    if (qword_1EB2B4810 != -1)
    {
      swift_once();
    }

    v13 = sub_1A7E22060();
    sub_1A7B0CB00(v13, qword_1EB2B67A0);

    v14 = sub_1A7E22040();
    v15 = sub_1A7E228D0();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v18 = v17;
      *v16 = 136315650;
      *(v16 + 4) = sub_1A7B0CB38(0xD000000000000033, 0x80000001A7EAFD60, &v18);
      *(v16 + 12) = 2080;
      *(v16 + 14) = sub_1A7B0CB38(*(v3 + 328), *(v3 + 336), &v18);
      *(v16 + 22) = 512;
      *(v16 + 24) = v12;
      _os_log_impl(&dword_1A7AD9000, v14, v15, "%s for link %s: heard of packet %hu", v16, 0x1Au);
      swift_arrayDestroy();
      MEMORY[0x1AC5654B0](v17, -1, -1);
      MEMORY[0x1AC5654B0](v16, -1, -1);
    }

    IDSLinkPacketBitfield.didHearOfPacket(withSequenceNumber:)(v12);
  }
}

uint64_t sub_1A7D63C0C(uint64_t result, uint64_t a2, _BYTE *a3, __int16 a4)
{
  if (result - a2 >= 2)
  {
    v6 = result;
    if (qword_1EB2B4810 != -1)
    {
      swift_once();
    }

    v7 = sub_1A7E22060();
    sub_1A7B0CB00(v7, qword_1EB2B67A0);
    v8 = sub_1A7E22040();
    v9 = sub_1A7E228D0();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 33554688;
      *(v10 + 4) = a4;
      _os_log_impl(&dword_1A7AD9000, v8, v9, "Prepending deduplication sequence number to packet: %hu", v10, 6u);
      MEMORY[0x1AC5654B0](v10, -1, -1);
    }

    if (*a3)
    {
      v11 = 10240;
    }

    else
    {
      v11 = 0x2000;
    }

    *(v6 - 2) = __rev16(v11 & 0xFFFFF800 | a4 & 0x7FF);
    result = v6 - 2;
    *a3 = 1;
  }

  return result;
}

uint64_t sub_1A7D63D40(uint64_t a1)
{
  v2 = sub_1A7CC7FFC(&qword_1EB2B67B8, &qword_1A7E4ADB0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t type metadata accessor for IDSSemiActiveLinkQualityMonitorHandle()
{
  result = qword_1EB2B6848;
  if (!qword_1EB2B6848)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EB2B6848);
  }

  return result;
}

double sub_1A7D63EA4(void *a1)
{

  return result;
}

uint64_t sub_1A7D63EF8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 2) = *(a2 + 2);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = *(a2 + 56);

  v4 = *(a2 + 72);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 72) = v4;

  *(a1 + 80) = *(a2 + 80);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 128) = *(a2 + 128);

  v5 = *(a2 + 144);
  *(a1 + 136) = *(a2 + 136);
  *(a1 + 144) = v5;

  *(a1 + 152) = *(a2 + 152);
  *(a1 + 160) = *(a2 + 160);
  *(a1 + 176) = *(a2 + 176);
  *(a1 + 184) = *(a2 + 184);
  *(a1 + 200) = *(a2 + 200);
  *(a1 + 216) = *(a2 + 216);
  *(a1 + 232) = *(a2 + 232);
  *(a1 + 248) = *(a2 + 248);
  *(a1 + 264) = *(a2 + 264);
  *(a1 + 272) = *(a2 + 272);
  *(a1 + 273) = *(a2 + 273);
  return a1;
}

uint64_t sub_1A7D64008(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 274))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 56);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1A7D64050(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 264) = 0;
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
    *(result + 272) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 274) = 1;
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
      *(result + 56) = (a2 - 1);
      return result;
    }

    *(result + 274) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_1A7D640E8(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  v4 = sub_1A7E219F0();
  (*(v3 + 16))(v3, v4);
}

uint64_t sub_1A7D64140(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t *sub_1A7D64190(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  a1[1] = a2[1];
  return a1;
}

uint64_t sub_1A7D641E0(int8x8_t *a1)
{
  v1 = a1[2];
  if (!*&v1)
  {
    return 0;
  }

  result = 0;
  v4 = a1 + 4;
  while (1)
  {
    v5 = *v4++;
    v6 = vcnt_s8(v5);
    v6.i16[0] = vaddlv_u8(v6);
    v7 = __OFADD__(result, v6.u32[0]);
    result += v6.u32[0];
    if (v7)
    {
      break;
    }

    if (!--*&v1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1A7D64224@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void (*a4)(char *, BOOL, unint64_t)@<X3>, uint64_t a5@<X5>, uint64_t a6@<X7>, char *a7@<X8>)
{
  v47 = a4;
  v12 = *(a6 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v14 = &v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v15);
  v46 = &v38 - v17;
  v48 = *(v12 + 16);
  v49 = v12 + 16;
  result = v48(a7, v16);
  v19 = a2 + 63;
  v42 = a3;
  v43 = a2;
  if (a2 >= 0)
  {
    v19 = a2;
  }

  v20 = v19 >> 6;
  v21 = *(a5 + 16);
  if (v21 >= v20)
  {
    v22 = v20;
  }

  else
  {
    v22 = *(a5 + 16);
  }

  if (v21 >= a3 / 64)
  {
    v23 = a3 / 64;
  }

  else
  {
    v23 = *(a5 + 16);
  }

  v40 = v23;
  if (a3 / 64 < v22)
  {
LABEL_47:
    __break(1u);
    return result;
  }

  if (v21 <= v22)
  {
    v24 = v22;
  }

  else
  {
    v24 = v21;
  }

  v39 = v24;
  if (v22 < v21)
  {
    v41 = a5 + 32;
    v25 = (v12 + 8);
    v26 = (v12 + 32);
    v27 = v43 - (v22 << 6);
    v28 = v46;
    while (1)
    {
      v29 = v27 >= 63 ? 63 : v27;
      if ((v22 - 0x200000000000000) >> 58 != 63)
      {
        break;
      }

      v30 = v22 << 6;
      v31 = v43 - (v22 << 6);
      if (__OFSUB__(v43, v22 << 6))
      {
        goto LABEL_44;
      }

      v32 = v42 - v30;
      if (__OFSUB__(v42, v30))
      {
        goto LABEL_45;
      }

      if (v31 >= 63)
      {
        v31 = 63;
      }

      if (v32 >= 63)
      {
        v32 = 63;
      }

      v51 = v32 & ~(v32 >> 63);
      if (v31 > v51)
      {
        goto LABEL_46;
      }

      v44 = v27;
      v45 = v22;
      v50 = *(v41 + 8 * v22);
      v33 = v29 & ~(v29 >> 63);
      while (1)
      {
        result = (v48)(v14, a7, a6);
        if (__OFADD__(v30, v33))
        {
          __break(1u);
LABEL_42:
          __break(1u);
          goto LABEL_43;
        }

        v34 = 1 << v33;
        if (v33 >= 0x40)
        {
          v34 = 0;
        }

        v35 = v33 - 65 >= 0xFFFFFFFFFFFFFF7FLL ? v34 : 0;
        v47(v14, (v35 & v50) != 0, v30 + v33);
        v36 = *v25;
        (*v25)(v14, a6);
        v36(a7, a6);
        result = (*v26)(a7, v28, a6);
        if (v33 == v51)
        {
          break;
        }

        if (__OFADD__(v33++, 1))
        {
          goto LABEL_42;
        }
      }

      if (v45 == v40)
      {
        return result;
      }

      v22 = v45 + 1;
      v27 = v44 - 64;
      if (v45 + 1 == v39)
      {
        goto LABEL_39;
      }
    }

LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

LABEL_39:
  __break(1u);
  return result;
}

unint64_t sub_1A7D6452C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void (*a4)(char *, BOOL, unint64_t)@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X7>, char *a8@<X8>)
{
  v43 = a4;
  v44 = a5;
  v13 = *(a7 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v15 = &v38 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v16);
  v19 = &v38 - v18;
  v45 = *(v13 + 16);
  v46 = v13 + 16;
  v45(a8, v17);
  v20 = a2 + 63;
  v40 = a3;
  v41 = a2;
  if (a2 >= 0)
  {
    v20 = a2;
  }

  v21 = v20 >> 6;
  v22 = *(a6 + 16);
  if (v22 < v21)
  {
    v21 = *(a6 + 16);
  }

  v23 = a3 / 64;
  v42 = *(a6 + 16);
  if (v22 < a3 / 64)
  {
    v23 = v22;
  }

  v49 = v23;
  v50 = v21;
  v51 = xmmword_1A7E4AEB0;
  v52 = 0;
  v53 = v23;
  v54 = 0;
  result = sub_1A7D6481C();
  if ((v25 & 1) == 0)
  {
    v39 = a6 + 32;
    v26 = (v13 + 8);
    v27 = (v13 + 32);
    while (result < v42)
    {
      if ((result - 0x200000000000000) >> 58 != 63)
      {
        goto LABEL_33;
      }

      v29 = result << 6;
      if (__OFSUB__(v41, result << 6))
      {
        goto LABEL_34;
      }

      if ((v41 - (result << 6)) >= 63)
      {
        v30 = 63;
      }

      else
      {
        v30 = v41 - (result << 6);
      }

      v31 = v40 - v29;
      if (__OFSUB__(v40, v29))
      {
        goto LABEL_35;
      }

      v48 = result << 6;
      v32 = 0;
      v47 = *(v39 + 8 * result);
      v33 = v30 & ~(v30 >> 63);
      if (v31 >= 63)
      {
        v31 = 63;
      }

      v34 = v31 & ~(v31 >> 63);
      if (v33 < v34)
      {
LABEL_21:
        v35 = v34 - 1;
        goto LABEL_24;
      }

      while (!((v34 != v33) | v32 & 1))
      {
        v32 = 1;
        v35 = v33;
LABEL_24:
        result = (v45)(v15, a8, a7);
        if (__OFADD__(v48, v34))
        {
          __break(1u);
          goto LABEL_32;
        }

        v36 = 1 << v34;
        if (v34 >= 0x40)
        {
          v36 = 0;
        }

        if (v34 > 0x40)
        {
          v36 = 0;
        }

        v43(v15, (v36 & v47) != 0, v48 + v34);
        v37 = *v26;
        (*v26)(v15, a7);
        v37(a8, a7);
        (*v27)(a8, v19, a7);
        v34 = v35;
        if (v33 < v35)
        {
          goto LABEL_21;
        }
      }

      result = sub_1A7D6481C();
      if (v28)
      {
        return result;
      }
    }

LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
  }

  return result;
}

uint64_t sub_1A7D6481C()
{
  result = *(v0 + 40);
  v3 = *(v0 + 8);
  v2 = *(v0 + 16);
  if (v2 <= 0)
  {
    if (v3 < result)
    {
      goto LABEL_3;
    }
  }

  else if (result < v3)
  {
LABEL_3:
    v4 = __OFADD__(result, v2);
    v5 = result + v2;
    v6 = v4;
    v7 = 0x8000000000000000;
    if (v4)
    {
      v5 = (v5 >> 63) ^ 0x8000000000000000;
    }

    else
    {
      v7 = 0;
    }

    *(v0 + 24) = v7;
    *(v0 + 32) = v6 ^ 1;
    *(v0 + 40) = v5;
    return result;
  }

  if (result != v3 || (*(v0 + 48) & 1) != 0)
  {
    return 0;
  }

  if ((*(v0 + 32) & 1) == 0 && *(v0 + 24) == 0x8000000000000000)
  {
    return 0;
  }

  *(v0 + 48) = 1;
  return result;
}

CFIndex sub_1A7D648D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *MEMORY[0x1E69E9840];
  keyExistsAndHasValidFormat = 0;
  v4 = sub_1A7E22260();
  v5 = sub_1A7E22260();
  AppIntegerValue = CFPreferencesGetAppIntegerValue(v4, v5, &keyExistsAndHasValidFormat);

  if (keyExistsAndHasValidFormat)
  {
    return AppIntegerValue;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1A7D64984(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *MEMORY[0x1E69E9840];
  keyExistsAndHasValidFormat = 0;
  v4 = sub_1A7E22260();
  v5 = sub_1A7E22260();
  AppBooleanValue = CFPreferencesGetAppBooleanValue(v4, v5, &keyExistsAndHasValidFormat);

  if (keyExistsAndHasValidFormat)
  {
    return AppBooleanValue != 0;
  }

  else
  {
    return 2;
  }
}

uint64_t sub_1A7D64B64()
{
  v0 = sub_1A7CC7FFC(&qword_1EB2B5678, &qword_1A7E4F420);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v11 - v1;
  v3 = sub_1A7E21F80();
  sub_1A7CC7A10(v3, qword_1EB2DC2F8);
  sub_1A7B0CB00(v3, qword_1EB2DC2F8);
  sub_1A7CC7FFC(&qword_1EB2B5680, &qword_1A7E45380);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1A7E418B0;
  v5 = sub_1A7D2FF44();
  *(v4 + 32) = &type metadata for LEToolLinksCommand;
  *(v4 + 40) = v5;
  v6 = sub_1A7D11AF8();
  *(v4 + 48) = &type metadata for LEToolConnectorCommand;
  *(v4 + 56) = v6;
  v7 = sub_1A7D027B0();
  *(v4 + 64) = &type metadata for LEToolSorterCommand;
  *(v4 + 72) = v7;
  v8 = sub_1A7D16080();
  *(v4 + 80) = &type metadata for LEToolQualityCommand;
  *(v4 + 88) = v8;
  v9 = sub_1A7E21EF0();
  (*(*(v9 - 8) + 56))(v2, 1, 1, v9);
  return sub_1A7E21F40();
}

uint64_t sub_1A7D64D28(uint64_t a1)
{
  sub_1A7D2B80C();
  sub_1A7E21E90();
  v2 = *(v1 + 8);

  return v2();
}

uint64_t sub_1A7D64DB0@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EB2B4818 != -1)
  {
    swift_once();
  }

  v3 = sub_1A7E21F80();
  v4 = sub_1A7B0CB00(v3, qword_1EB2DC2F8);
  v5 = *(*(v3 - 8) + 16);

  return v5(a1, v4, v3);
}

unint64_t sub_1A7D64E60()
{
  result = qword_1EB2B6850;
  if (!qword_1EB2B6850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B6850);
  }

  return result;
}

uint64_t IDSLinkDefinitionPortOverridingPlugin.name.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

double IDSLinkDefinitionPortOverridingPlugin.register(engine:)()
{
  v1 = v0[7];
  v2 = v0[8];
  sub_1A7CC9878(v0 + 4, v1);
  v3 = (*(v2 + 8))(v1, v2);
  sub_1A7D65220(v0, sub_1A7D64F7C, 0, v3);

  return result;
}

uint64_t sub_1A7D64F7C(uint64_t *a1)
{
  v1 = sub_1A7CE0528(*a1, &v10);
  if (v10)
  {
    v2 = v10;
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC0];
  }

  v10 = 12904;
  v11 = 0xE200000000000000;
  MEMORY[0x1EEE9AC00](v1);
  v9 = &v10;
  v3 = sub_1A7DB1A5C(sub_1A7CF67EC, v8, v2);
  if (v3 & 1) != 0 || (v10 = 0x736C742D656B6166, v11 = 0xE800000000000000, MEMORY[0x1EEE9AC00](v3), v9 = &v10, v4 = sub_1A7DB1A5C(sub_1A7CF680C, v8, v2), (v4))
  {

    v5 = 443;
    return LinkEndpoint.port.setter(v5);
  }

  v10 = 7365492;
  v11 = 0xE300000000000000;
  MEMORY[0x1EEE9AC00](v4);
  v9 = &v10;
  v7 = sub_1A7DB1A5C(sub_1A7CF680C, v8, v2);

  if (v7)
  {
    v5 = 80;
    return LinkEndpoint.port.setter(v5);
  }

  return result;
}

uint64_t IDSLinkDefinitionPortOverridingPlugin.deinit()
{

  sub_1A7B0CD6C((v0 + 32));
  return v0;
}

uint64_t IDSLinkDefinitionPortOverridingPlugin.__deallocating_deinit()
{

  sub_1A7B0CD6C((v0 + 32));

  return swift_deallocClassInstance();
}

double sub_1A7D6518C()
{
  v1 = v0[7];
  v2 = v0[8];
  sub_1A7CC9878(v0 + 4, v1);
  v3 = (*(v2 + 8))(v1, v2);
  sub_1A7D65220(v0, sub_1A7D64F7C, 0, v3);

  return result;
}

void sub_1A7D65220(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  os_unfair_lock_lock((a4 + 16));
  swift_unknownObjectWeakInit();
  v14[0] = a1;
  v14[2] = &protocol witness table for IDSLinkDefinitionPortOverridingPlugin;
  swift_unknownObjectWeakAssign();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v13[0] = *(a4 + 24);
  *(a4 + 24) = 0x8000000000000000;
  sub_1A7DC4A9C(a2, a3, MEMORY[0x1E69E7CC0], MEMORY[0x1E69E7CC0], v14, isUniquelyReferenced_nonNull_native);
  sub_1A7D653E0(v14);
  *(a4 + 24) = v13[0];

  *(a4 + 40) = 1;
  os_unfair_lock_unlock((a4 + 16));
  os_unfair_lock_lock((a4 + 16));
  v9 = *(a4 + 48);
  v10 = *(a4 + 56);
  if (v9)
  {
    v11 = swift_allocObject();
    *(v11 + 16) = v9;
    *(v11 + 24) = v10;
    v12 = sub_1A7D259CC;
  }

  else
  {
    v12 = 0;
    v11 = 0;
  }

  sub_1A7B151B0(v9, v10);
  os_unfair_lock_unlock((a4 + 16));
  if (v9)
  {
    v14[0] = a2;
    v14[1] = a3;
    v13[0] = a1;
    v13[1] = &protocol witness table for IDSLinkDefinitionPortOverridingPlugin;
    v12(v13, v14);
    sub_1A7B15088(v12, v11);
  }
}

uint64_t sub_1A7D653E0(uint64_t a1)
{
  v2 = sub_1A7CC7FFC(&qword_1EB2B4B00, &qword_1A7E41A40);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1A7D654A0()
{
  if (*v0)
  {
    return 0x736B6E696CLL;
  }

  else
  {
    return 0x6361667265746E69;
  }
}

uint64_t sub_1A7D654E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6361667265746E69 && a2 == 0xED00006570795465;
  if (v6 || (sub_1A7E230D0() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x736B6E696CLL && a2 == 0xE500000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1A7E230D0();

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

uint64_t sub_1A7D655C4(uint64_t a1)
{
  v2 = sub_1A7D65828();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A7D65600(uint64_t a1)
{
  v2 = sub_1A7D65828();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t LEToolIDSRelayConnectorResponse.ByInterfaceTypeState.InterfaceTypeState.encode(to:)(void *a1)
{
  v4 = sub_1A7CC7FFC(&qword_1EB2B6858, &unk_1A7E4B0B0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v10 - v6;
  v8 = *v1;
  v10[0] = *(v1 + 1);
  sub_1A7CC9878(a1, a1[3]);
  sub_1A7D65828();
  sub_1A7E23260();
  v13 = v8;
  v12 = 0;
  sub_1A7D6587C();
  sub_1A7E23030();
  if (!v2)
  {
    v10[1] = v10[0];
    v11 = 1;
    sub_1A7CC7FFC(&qword_1EB2B7CB0, qword_1A7E48EA0);
    sub_1A7D550A4(&qword_1EB2B6418, &qword_1EB2B6420, &protocol conformance descriptor for LEToolLink, MEMORY[0x1E69E6300]);
    sub_1A7E23030();
  }

  return (*(v5 + 8))(v7, v4);
}

unint64_t sub_1A7D65828()
{
  result = qword_1EB2B6860;
  if (!qword_1EB2B6860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B6860);
  }

  return result;
}

unint64_t sub_1A7D6587C()
{
  result = qword_1EB2B6868;
  if (!qword_1EB2B6868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B6868);
  }

  return result;
}

uint64_t LEToolIDSRelayConnectorResponse.ByInterfaceTypeState.InterfaceTypeState.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1A7CC7FFC(&qword_1EB2B6870, &qword_1A7E4B0C0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v12 - v7;
  sub_1A7CC9878(a1, a1[3]);
  sub_1A7D65828();
  sub_1A7E23250();
  if (!v2)
  {
    v14 = 0;
    sub_1A7D65AF4();
    sub_1A7E22F30();
    v9 = v15;
    sub_1A7CC7FFC(&qword_1EB2B7CB0, qword_1A7E48EA0);
    v13 = 1;
    sub_1A7D550A4(&qword_1EB2B6430, &qword_1EB2B6438, &protocol conformance descriptor for LEToolLink, MEMORY[0x1E69E6330]);
    sub_1A7E22F30();
    (*(v6 + 8))(v8, v5);
    v10 = v12[1];
    *a2 = v9;
    *(a2 + 8) = v10;
  }

  return sub_1A7B0CD6C(a1);
}

unint64_t sub_1A7D65AF4()
{
  result = qword_1EB2B6878;
  if (!qword_1EB2B6878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B6878);
  }

  return result;
}

uint64_t LEToolIDSRelayConnectorResponse.ByInterfaceTypeState.interfaceTypeStates.setter(uint64_t a1)
{

  *(v1 + 8) = a1;
  return result;
}

uint64_t sub_1A7D65BEC()
{
  if (*v0)
  {
    return 0xD000000000000013;
  }

  else
  {
    return 0x726F697661686562;
  }
}

uint64_t sub_1A7D65C2C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x726F697661686562 && a2 == 0xE800000000000000;
  if (v6 || (sub_1A7E230D0() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001A7EAFEA0 == a2)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1A7E230D0();

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

uint64_t sub_1A7D65D10(uint64_t a1)
{
  v2 = sub_1A7D65F3C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A7D65D4C(uint64_t a1)
{
  v2 = sub_1A7D65F3C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t LEToolIDSRelayConnectorResponse.ByInterfaceTypeState.encode(to:)(void *a1)
{
  v4 = sub_1A7CC7FFC(&qword_1EB2B6880, &qword_1A7E4B0C8);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v10 - v6;
  v8 = *v1;
  v10[0] = *(v1 + 1);
  sub_1A7CC9878(a1, a1[3]);
  sub_1A7D65F3C();
  sub_1A7E23260();
  v13 = v8;
  v12 = 0;
  sub_1A7D65F90();
  sub_1A7E23030();
  if (!v2)
  {
    v10[1] = v10[0];
    v11 = 1;
    sub_1A7CC7FFC(&qword_1EB2B6898, &qword_1A7E4B0D0);
    sub_1A7D65FE4();
    sub_1A7E23030();
  }

  return (*(v5 + 8))(v7, v4);
}

unint64_t sub_1A7D65F3C()
{
  result = qword_1EB2B6888;
  if (!qword_1EB2B6888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B6888);
  }

  return result;
}

unint64_t sub_1A7D65F90()
{
  result = qword_1EB2B6890;
  if (!qword_1EB2B6890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B6890);
  }

  return result;
}

unint64_t sub_1A7D65FE4()
{
  result = qword_1EB2B68A0;
  if (!qword_1EB2B68A0)
  {
    sub_1A7CC9830(&qword_1EB2B6898, &qword_1A7E4B0D0);
    sub_1A7D66068();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B68A0);
  }

  return result;
}

unint64_t sub_1A7D66068()
{
  result = qword_1EB2B68A8;
  if (!qword_1EB2B68A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B68A8);
  }

  return result;
}

uint64_t LEToolIDSRelayConnectorResponse.ByInterfaceTypeState.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1A7CC7FFC(&qword_1EB2B68B0, &qword_1A7E4B0D8);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v12 - v7;
  sub_1A7CC9878(a1, a1[3]);
  sub_1A7D65F3C();
  sub_1A7E23250();
  if (!v2)
  {
    v14 = 0;
    sub_1A7D662A8();
    sub_1A7E22F30();
    v9 = v15;
    sub_1A7CC7FFC(&qword_1EB2B6898, &qword_1A7E4B0D0);
    v13 = 1;
    sub_1A7D662FC();
    sub_1A7E22F30();
    (*(v6 + 8))(v8, v5);
    v10 = v12[1];
    *a2 = v9;
    *(a2 + 8) = v10;
  }

  return sub_1A7B0CD6C(a1);
}

unint64_t sub_1A7D662A8()
{
  result = qword_1EB2B68B8;
  if (!qword_1EB2B68B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B68B8);
  }

  return result;
}

unint64_t sub_1A7D662FC()
{
  result = qword_1EB2B68C0;
  if (!qword_1EB2B68C0)
  {
    sub_1A7CC9830(&qword_1EB2B6898, &qword_1A7E4B0D0);
    sub_1A7D66380();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B68C0);
  }

  return result;
}

unint64_t sub_1A7D66380()
{
  result = qword_1EB2B68C8;
  if (!qword_1EB2B68C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B68C8);
  }

  return result;
}

uint64_t LEToolIDSRelayConnectorResponse.TwoWayState.Allocation.allocation.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t LEToolIDSRelayConnectorResponse.TwoWayState.Allocation.allocation.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t LEToolIDSRelayConnectorResponse.TwoWayState.Allocation.resolvedEndpoints.setter(uint64_t a1)
{

  *(v1 + 24) = a1;
  return result;
}

unint64_t sub_1A7D66518()
{
  v1 = 0x6666416C61636F6CLL;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000011;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x697461636F6C6C61;
  }
}

uint64_t sub_1A7D66588@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1A7D69C60(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1A7D665B0(uint64_t a1)
{
  v2 = sub_1A7D66838();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A7D665EC(uint64_t a1)
{
  v2 = sub_1A7D66838();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t LEToolIDSRelayConnectorResponse.TwoWayState.Allocation.encode(to:)(void *a1)
{
  v3 = sub_1A7CC7FFC(&qword_1EB2B68D0, &unk_1A7E4B0E0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v10 - v5;
  v14 = *(v1 + 16);
  v11 = *(v1 + 24);
  sub_1A7CC9878(a1, a1[3]);
  sub_1A7D66838();
  sub_1A7E23260();
  v18 = 0;
  v7 = v12;
  sub_1A7E22FF0();
  if (!v7)
  {
    v8 = v11;
    v17 = v14;
    v16 = 1;
    sub_1A7D0FCFC();
    sub_1A7E23030();
    v13 = v8;
    v15 = 2;
    sub_1A7CC7FFC(&qword_1EB2B4AA0, &qword_1A7E45010);
    sub_1A7D66B20(&qword_1EB2B5BD8, MEMORY[0x1E69E6160], MEMORY[0x1E69E6300]);
    sub_1A7E23030();
  }

  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_1A7D66838()
{
  result = qword_1EB2B68D8;
  if (!qword_1EB2B68D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B68D8);
  }

  return result;
}

uint64_t LEToolIDSRelayConnectorResponse.TwoWayState.Allocation.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1A7CC7FFC(&qword_1EB2B68E0, &qword_1A7E4B0F0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v15 - v7;
  sub_1A7CC9878(a1, a1[3]);
  sub_1A7D66838();
  sub_1A7E23250();
  if (v2)
  {
    return sub_1A7B0CD6C(a1);
  }

  v20 = 0;
  v9 = sub_1A7E22EF0();
  v11 = v10;
  v12 = v9;
  v18 = 1;
  sub_1A7D100C0();
  sub_1A7E22F30();
  v16 = v19;
  sub_1A7CC7FFC(&qword_1EB2B4AA0, &qword_1A7E45010);
  v17 = 2;
  sub_1A7D66B20(&qword_1EB2B5BF8, MEMORY[0x1E69E6190], MEMORY[0x1E69E6330]);
  sub_1A7E22F30();
  (*(v6 + 8))(v8, v5);
  v14 = v15[1];
  *a2 = v12;
  *(a2 + 8) = v11;
  *(a2 + 16) = v16;
  *(a2 + 24) = v14;

  sub_1A7B0CD6C(a1);
}

uint64_t sub_1A7D66B20(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_1A7CC9830(&qword_1EB2B4AA0, &qword_1A7E45010);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t LEToolIDSRelayConnectorResponse.TwoWayState.AllocatedLink.allocation.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  *a1 = *(v1 + 8);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
}

uint64_t LEToolIDSRelayConnectorResponse.TwoWayState.AllocatedLink.allocation.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 16);
  v5 = a1[3];

  *(v1 + 8) = v2;
  *(v1 + 16) = v3;
  *(v1 + 24) = v4;
  *(v1 + 32) = v5;
  return result;
}

uint64_t LEToolIDSRelayConnectorResponse.TwoWayState.AllocatedLink.links.setter(uint64_t a1)
{

  *(v1 + 40) = a1;
  return result;
}

uint64_t sub_1A7D66D0C()
{
  v1 = 0x697461636F6C6C61;
  if (*v0 != 1)
  {
    v1 = 0x736B6E696CLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000016;
  }
}

uint64_t sub_1A7D66D6C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1A7D69D90(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1A7D66D94(uint64_t a1)
{
  v2 = sub_1A7D6707C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A7D66DD0(uint64_t a1)
{
  v2 = sub_1A7D6707C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t LEToolIDSRelayConnectorResponse.TwoWayState.AllocatedLink.encode(to:)(void *a1)
{
  v3 = sub_1A7CC7FFC(&qword_1EB2B68E8, &qword_1A7E4B0F8);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v15 - v5;
  v7 = *v1;
  v8 = *(v1 + 1);
  v9 = *(v1 + 2);
  v23 = *(v1 + 24);
  v11 = *(v1 + 4);
  v10 = *(v1 + 5);
  v16 = v8;
  v17 = v11;
  v15 = v10;
  sub_1A7CC9878(a1, a1[3]);
  sub_1A7D6707C();
  sub_1A7E23260();
  LOWORD(v19) = v7;
  v24 = 0;
  sub_1A7D670D0();
  v12 = v18;
  sub_1A7E23030();
  if (!v12)
  {
    v13 = v15;
    v19 = v16;
    v20 = v9;
    v21 = v23;
    v22 = v17;
    v24 = 1;
    sub_1A7D67124();

    sub_1A7E23030();

    v19 = v13;
    v24 = 2;
    sub_1A7CC7FFC(&qword_1EB2B7CB0, qword_1A7E48EA0);
    sub_1A7D550A4(&qword_1EB2B6418, &qword_1EB2B6420, &protocol conformance descriptor for LEToolLink, MEMORY[0x1E69E6300]);
    sub_1A7E23030();
  }

  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_1A7D6707C()
{
  result = qword_1EB2B68F0;
  if (!qword_1EB2B68F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B68F0);
  }

  return result;
}

unint64_t sub_1A7D670D0()
{
  result = qword_1EB2B68F8;
  if (!qword_1EB2B68F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B68F8);
  }

  return result;
}

unint64_t sub_1A7D67124()
{
  result = qword_1EB2B6900;
  if (!qword_1EB2B6900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B6900);
  }

  return result;
}

uint64_t LEToolIDSRelayConnectorResponse.TwoWayState.AllocatedLink.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1A7CC7FFC(&qword_1EB2B6908, &qword_1A7E4B100);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v15 - v7;
  sub_1A7CC9878(a1, a1[3]);
  sub_1A7D6707C();
  sub_1A7E23250();
  if (v2)
  {
    return sub_1A7B0CD6C(a1);
  }

  v24 = 0;
  sub_1A7D67458();
  sub_1A7E22F30();
  v9 = v19;
  v10 = BYTE1(v19);
  v24 = 1;
  sub_1A7D674AC();
  sub_1A7E22F30();
  v18 = v20;
  v23 = v21;
  v16 = v19;
  v17 = v22;
  sub_1A7CC7FFC(&qword_1EB2B7CB0, qword_1A7E48EA0);
  v24 = 2;
  sub_1A7D550A4(&qword_1EB2B6430, &qword_1EB2B6438, &protocol conformance descriptor for LEToolLink, MEMORY[0x1E69E6330]);
  sub_1A7E22F30();
  (*(v6 + 8))(v8, v5);
  v12 = v18;
  v11 = v19;
  *a2 = v9;
  *(a2 + 1) = v10;
  v13 = v17;
  *(a2 + 8) = v16;
  *(a2 + 16) = v12;
  *(a2 + 24) = v23;
  *(a2 + 32) = v13;
  *(a2 + 40) = v11;

  sub_1A7B0CD6C(a1);
}

unint64_t sub_1A7D67458()
{
  result = qword_1EB2B6910;
  if (!qword_1EB2B6910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B6910);
  }

  return result;
}

unint64_t sub_1A7D674AC()
{
  result = qword_1EB2B6918;
  if (!qword_1EB2B6918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B6918);
  }

  return result;
}

uint64_t LEToolIDSRelayConnectorResponse.TwoWayState.allAllocations.setter(uint64_t a1)
{

  *(v1 + 8) = a1;
  return result;
}

uint64_t LEToolIDSRelayConnectorResponse.TwoWayState.allocatedLinks.setter(uint64_t a1)
{

  *(v1 + 16) = a1;
  return result;
}

uint64_t LEToolIDSRelayConnectorResponse.TwoWayState.desiredCellularTuples.setter(uint64_t a1)
{

  *(v1 + 32) = a1;
  return result;
}

uint64_t sub_1A7D676CC()
{
  v1 = *v0;
  v2 = 0x726F697661686562;
  v3 = 0x657461636F6C6C61;
  v4 = 0xD000000000000019;
  if (v1 != 4)
  {
    v4 = 0xD000000000000015;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x616974696E497369;
  if (v1 != 1)
  {
    v5 = 0x636F6C6C416C6C61;
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

uint64_t sub_1A7D677B4@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1A7D69EB8(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1A7D677DC(uint64_t a1)
{
  v2 = sub_1A7D67B30();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A7D67818(uint64_t a1)
{
  v2 = sub_1A7D67B30();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t LEToolIDSRelayConnectorResponse.TwoWayState.encode(to:)(void *a1)
{
  v4 = sub_1A7CC7FFC(&qword_1EB2B6920, &qword_1A7E4B108);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v16 - v6;
  v8 = *v1;
  v22 = v1[1];
  v9 = *(v1 + 1);
  v19 = *(v1 + 2);
  v20 = v9;
  v18 = *(v1 + 12);
  v17 = *(v1 + 4);
  sub_1A7CC9878(a1, a1[3]);
  sub_1A7D67B30();
  v10 = v4;
  sub_1A7E23260();
  LOBYTE(v21) = v8;
  v23 = 0;
  sub_1A7D67B84();
  sub_1A7E23030();
  if (!v2)
  {
    v11 = v19;
    v12 = v20;
    v13 = v18;
    v14 = v17;
    LOBYTE(v21) = 1;
    sub_1A7E23000();
    v21 = v12;
    v23 = 2;
    sub_1A7CC7FFC(&qword_1EB2B6938, &qword_1A7E4B110);
    sub_1A7D67BD8();
    sub_1A7E23030();
    v21 = v11;
    v23 = 3;
    sub_1A7CC7FFC(&qword_1EB2B6948, &qword_1A7E4B118);
    sub_1A7D67C5C();
    sub_1A7E23030();
    LOWORD(v21) = v13;
    v23 = 4;
    sub_1A7D670D0();
    sub_1A7E22FD0();
    v21 = v14;
    v23 = 5;
    sub_1A7CC7FFC(&qword_1EB2B6960, &qword_1A7E4B120);
    sub_1A7D67D34();
    sub_1A7E23030();
  }

  return (*(v5 + 8))(v7, v10);
}

unint64_t sub_1A7D67B30()
{
  result = qword_1EB2B6928;
  if (!qword_1EB2B6928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B6928);
  }

  return result;
}

unint64_t sub_1A7D67B84()
{
  result = qword_1EB2B6930;
  if (!qword_1EB2B6930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B6930);
  }

  return result;
}

unint64_t sub_1A7D67BD8()
{
  result = qword_1EB2B6940;
  if (!qword_1EB2B6940)
  {
    sub_1A7CC9830(&qword_1EB2B6938, &qword_1A7E4B110);
    sub_1A7D67124();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B6940);
  }

  return result;
}

unint64_t sub_1A7D67C5C()
{
  result = qword_1EB2B6950;
  if (!qword_1EB2B6950)
  {
    sub_1A7CC9830(&qword_1EB2B6948, &qword_1A7E4B118);
    sub_1A7D67CE0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B6950);
  }

  return result;
}

unint64_t sub_1A7D67CE0()
{
  result = qword_1EB2B6958;
  if (!qword_1EB2B6958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B6958);
  }

  return result;
}

unint64_t sub_1A7D67D34()
{
  result = qword_1EB2B6968;
  if (!qword_1EB2B6968)
  {
    sub_1A7CC9830(&qword_1EB2B6960, &qword_1A7E4B120);
    sub_1A7D670D0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B6968);
  }

  return result;
}

uint64_t LEToolIDSRelayConnectorResponse.TwoWayState.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1A7CC7FFC(&qword_1EB2B6970, &qword_1A7E4B128);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v15 - v7;
  sub_1A7CC9878(a1, a1[3]);
  sub_1A7D67B30();
  sub_1A7E23250();
  if (v2)
  {
    return sub_1A7B0CD6C(a1);
  }

  v20 = 0;
  sub_1A7D6819C();
  sub_1A7E22F30();
  v9 = v18;
  LOBYTE(v18) = 1;
  v19 = sub_1A7E22F00();
  sub_1A7CC7FFC(&qword_1EB2B6938, &qword_1A7E4B110);
  v20 = 2;
  sub_1A7D681F0();
  sub_1A7E22F30();
  v17 = v18;
  sub_1A7CC7FFC(&qword_1EB2B6948, &qword_1A7E4B118);
  v20 = 3;
  sub_1A7D68274();
  sub_1A7E22F30();
  v16 = v18;
  v20 = 4;
  sub_1A7D67458();
  sub_1A7E22ED0();
  v10 = v18;
  sub_1A7CC7FFC(&qword_1EB2B6960, &qword_1A7E4B120);
  v20 = 5;
  sub_1A7D6834C();
  sub_1A7E22F30();
  HIDWORD(v15) = v10;
  LOBYTE(v10) = v19 & 1;
  (*(v6 + 8))(v8, v5);
  v13 = v17;
  v12 = v18;
  *a2 = v9;
  *(a2 + 1) = v10;
  v14 = v16;
  *(a2 + 8) = v13;
  *(a2 + 16) = v14;
  *(a2 + 24) = WORD2(v15);
  *(a2 + 32) = v12;

  sub_1A7B0CD6C(a1);
}

unint64_t sub_1A7D6819C()
{
  result = qword_1EB2B6978;
  if (!qword_1EB2B6978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B6978);
  }

  return result;
}

unint64_t sub_1A7D681F0()
{
  result = qword_1EB2B6980;
  if (!qword_1EB2B6980)
  {
    sub_1A7CC9830(&qword_1EB2B6938, &qword_1A7E4B110);
    sub_1A7D674AC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B6980);
  }

  return result;
}

unint64_t sub_1A7D68274()
{
  result = qword_1EB2B6988;
  if (!qword_1EB2B6988)
  {
    sub_1A7CC9830(&qword_1EB2B6948, &qword_1A7E4B118);
    sub_1A7D682F8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B6988);
  }

  return result;
}

unint64_t sub_1A7D682F8()
{
  result = qword_1EB2B6990;
  if (!qword_1EB2B6990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B6990);
  }

  return result;
}

unint64_t sub_1A7D6834C()
{
  result = qword_1EB2B6998;
  if (!qword_1EB2B6998)
  {
    sub_1A7CC9830(&qword_1EB2B6960, &qword_1A7E4B120);
    sub_1A7D67458();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B6998);
  }

  return result;
}

uint64_t sub_1A7D68400(uint64_t a1)
{
  v2 = sub_1A7D68ADC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A7D6843C(uint64_t a1)
{
  v2 = sub_1A7D68ADC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A7D68478()
{
  if (*v0)
  {
    return 0x7961576F7774;
  }

  else
  {
    return 0x667265746E497962;
  }
}

uint64_t sub_1A7D684BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x667265746E497962 && a2 == 0xEF65707954656361;
  if (v6 || (sub_1A7E230D0() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x7961576F7774 && a2 == 0xE600000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1A7E230D0();

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

uint64_t sub_1A7D6859C(uint64_t a1)
{
  v2 = sub_1A7D689E0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A7D685D8(uint64_t a1)
{
  v2 = sub_1A7D689E0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A7D68614(uint64_t a1)
{
  v2 = sub_1A7D68A34();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A7D68650(uint64_t a1)
{
  v2 = sub_1A7D68A34();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t LEToolIDSRelayConnectorResponse.encode(to:)(void *a1)
{
  v3 = sub_1A7CC7FFC(&qword_1EB2B69A0, &qword_1A7E4B130);
  v21 = *(v3 - 8);
  v22 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v20 = &v18 - v4;
  v5 = sub_1A7CC7FFC(&qword_1EB2B69A8, &qword_1A7E4B138);
  v23 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v18 - v6;
  v8 = sub_1A7CC7FFC(&qword_1EB2B69B0, &qword_1A7E4B140);
  v25 = *(v8 - 8);
  v26 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v18 - v9;
  v11 = *v1;
  v24 = v1[1];
  v12 = v1[3];
  v13 = v1[4];
  v18 = v1[2];
  v19 = v13;
  sub_1A7CC9878(a1, a1[3]);
  sub_1A7D689E0();
  sub_1A7E23260();
  if (v12 < 0)
  {
    LOBYTE(v27) = 1;
    sub_1A7D68A34();
    v15 = v20;
    v14 = v26;
    sub_1A7E22F80();
    v27 = v11 & 0x101;
    v28 = v24;
    v29 = v18;
    v30 = v12;
    v31 = v19;
    sub_1A7D68A88();
    v16 = v22;
    sub_1A7E23030();
    (*(v21 + 8))(v15, v16);
  }

  else
  {
    LOBYTE(v27) = 0;
    sub_1A7D68ADC();
    v14 = v26;
    sub_1A7E22F80();
    LOBYTE(v27) = v11;
    v28 = v24;
    sub_1A7D68B30();
    sub_1A7E23030();
    (*(v23 + 8))(v7, v5);
  }

  return (*(v25 + 8))(v10, v14);
}

unint64_t sub_1A7D689E0()
{
  result = qword_1EB2B69B8;
  if (!qword_1EB2B69B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B69B8);
  }

  return result;
}

unint64_t sub_1A7D68A34()
{
  result = qword_1EB2B69C0;
  if (!qword_1EB2B69C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B69C0);
  }

  return result;
}

unint64_t sub_1A7D68A88()
{
  result = qword_1EB2B69C8;
  if (!qword_1EB2B69C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B69C8);
  }

  return result;
}

unint64_t sub_1A7D68ADC()
{
  result = qword_1EB2B69D0;
  if (!qword_1EB2B69D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B69D0);
  }

  return result;
}

unint64_t sub_1A7D68B30()
{
  result = qword_1EB2B69D8;
  if (!qword_1EB2B69D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B69D8);
  }

  return result;
}

uint64_t LEToolIDSRelayConnectorResponse.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v37 = a2;
  v3 = sub_1A7CC7FFC(&qword_1EB2B69E0, &qword_1A7E4B148);
  v4 = *(v3 - 8);
  v35 = v3;
  v36 = v4;
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v34 - v5;
  v7 = sub_1A7CC7FFC(&qword_1EB2B69E8, &qword_1A7E4B150);
  v34 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v34 - v8;
  v10 = sub_1A7CC7FFC(&qword_1EB2B69F0, &unk_1A7E4B158);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v34 - v12;
  v14 = a1[3];
  v49 = a1;
  sub_1A7CC9878(a1, v14);
  sub_1A7D689E0();
  v15 = v38;
  sub_1A7E23250();
  if (!v15)
  {
    v38 = v11;
    v16 = v37;
    v17 = sub_1A7E22F70();
    v18 = (2 * *(v17 + 16)) | 1;
    v45 = v17;
    v46 = v17 + 32;
    v47 = 0;
    v48 = v18;
    v19 = sub_1A7CDB538();
    v20 = v10;
    if (v19 == 2 || v47 != v48 >> 1)
    {
      v22 = sub_1A7E22BD0();
      swift_allocError();
      v24 = v23;
      sub_1A7CC7FFC(&qword_1EB2B4EC8, &qword_1A7E42100);
      *v24 = &type metadata for LEToolIDSRelayConnectorResponse;
      sub_1A7E22E90();
      sub_1A7E22BC0();
      (*(*(v22 - 8) + 104))(v24, *MEMORY[0x1E69E6AF8], v22);
      swift_willThrow();
      (*(v38 + 8))(v13, v10);
      swift_unknownObjectRelease();
    }

    else
    {
      if (v19)
      {
        v39 = 1;
        sub_1A7D68A34();
        sub_1A7E22E70();
        v21 = v38;
        sub_1A7D690E8();
        v27 = v35;
        sub_1A7E22F30();
        (*(v36 + 8))(v6, v27);
        (*(v21 + 8))(v13, v20);
        swift_unknownObjectRelease();
        v33 = v41;
        v29 = v42;
        v31 = v44;
        v28 = 256;
        if (!v40)
        {
          v28 = 0;
        }

        v32 = v28 | v39;
        v30 = v43 | 0x8000000000000000;
      }

      else
      {
        v39 = 0;
        sub_1A7D68ADC();
        sub_1A7E22E70();
        v26 = v38;
        sub_1A7D6913C();
        sub_1A7E22F30();
        (*(v34 + 8))(v9, v7);
        (*(v26 + 8))(v13, v10);
        swift_unknownObjectRelease();
        v29 = 0;
        v30 = 0;
        v31 = 0;
        v32 = v39;
        v33 = v41;
      }

      *v16 = v32;
      v16[1] = v33;
      v16[2] = v29;
      v16[3] = v30;
      v16[4] = v31;
    }
  }

  return sub_1A7B0CD6C(v49);
}

unint64_t sub_1A7D690E8()
{
  result = qword_1EB2B69F8;
  if (!qword_1EB2B69F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B69F8);
  }

  return result;
}

unint64_t sub_1A7D6913C()
{
  result = qword_1EB2B6A00;
  if (!qword_1EB2B6A00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B6A00);
  }

  return result;
}

uint64_t sub_1A7D691CC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
  {
    return *a1 + 0x80000000;
  }

  v2 = (*a1 >> 3) & 0xFFFFFFC0 | (*a1 >> 2);
  if (v2 > 0x80000000)
  {
    v3 = ~v2;
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

double sub_1A7D69220(uint64_t a1, int a2, int a3)
{
  if (a2 < 0)
  {
    result = 0.0;
    *(a1 + 8) = 0u;
    *(a1 + 24) = 0u;
    *a1 = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(a1 + 40) = 1;
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
      *a1 = (8 * -a2) & 0x7FFFFFE00 | (4 * (-a2 & 0x3FLL));
      result = 0.0;
      *(a1 + 8) = 0u;
      *(a1 + 24) = 0u;
      return result;
    }

    *(a1 + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1A7D69290(uint64_t result, uint64_t a2)
{
  v2 = *(result + 24) | (a2 << 63);
  *result &= 0x103uLL;
  *(result + 24) = v2;
  return result;
}

uint64_t sub_1A7D692E0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_1A7D69328(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1A7D69424()
{
  result = qword_1EB2B6A08;
  if (!qword_1EB2B6A08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B6A08);
  }

  return result;
}

unint64_t sub_1A7D6947C()
{
  result = qword_1EB2B6A10;
  if (!qword_1EB2B6A10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B6A10);
  }

  return result;
}

unint64_t sub_1A7D694D4()
{
  result = qword_1EB2B6A18;
  if (!qword_1EB2B6A18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B6A18);
  }

  return result;
}

unint64_t sub_1A7D6952C()
{
  result = qword_1EB2B6A20;
  if (!qword_1EB2B6A20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B6A20);
  }

  return result;
}

unint64_t sub_1A7D69584()
{
  result = qword_1EB2B6A28;
  if (!qword_1EB2B6A28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B6A28);
  }

  return result;
}

unint64_t sub_1A7D695DC()
{
  result = qword_1EB2B6A30;
  if (!qword_1EB2B6A30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B6A30);
  }

  return result;
}

unint64_t sub_1A7D69634()
{
  result = qword_1EB2B6A38;
  if (!qword_1EB2B6A38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B6A38);
  }

  return result;
}

unint64_t sub_1A7D6968C()
{
  result = qword_1EB2B6A40;
  if (!qword_1EB2B6A40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B6A40);
  }

  return result;
}

unint64_t sub_1A7D696E4()
{
  result = qword_1EB2B6A48;
  if (!qword_1EB2B6A48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B6A48);
  }

  return result;
}

unint64_t sub_1A7D6973C()
{
  result = qword_1EB2B6A50;
  if (!qword_1EB2B6A50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B6A50);
  }

  return result;
}

unint64_t sub_1A7D69794()
{
  result = qword_1EB2B6A58;
  if (!qword_1EB2B6A58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B6A58);
  }

  return result;
}

unint64_t sub_1A7D697EC()
{
  result = qword_1EB2B6A60;
  if (!qword_1EB2B6A60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B6A60);
  }

  return result;
}

unint64_t sub_1A7D69844()
{
  result = qword_1EB2B6A68;
  if (!qword_1EB2B6A68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B6A68);
  }

  return result;
}

unint64_t sub_1A7D6989C()
{
  result = qword_1EB2B6A70;
  if (!qword_1EB2B6A70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B6A70);
  }

  return result;
}

unint64_t sub_1A7D698F4()
{
  result = qword_1EB2B6A78;
  if (!qword_1EB2B6A78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B6A78);
  }

  return result;
}

unint64_t sub_1A7D6994C()
{
  result = qword_1EB2B6A80;
  if (!qword_1EB2B6A80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B6A80);
  }

  return result;
}

unint64_t sub_1A7D699A4()
{
  result = qword_1EB2B6A88;
  if (!qword_1EB2B6A88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B6A88);
  }

  return result;
}

unint64_t sub_1A7D699FC()
{
  result = qword_1EB2B6A90;
  if (!qword_1EB2B6A90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B6A90);
  }

  return result;
}

unint64_t sub_1A7D69A54()
{
  result = qword_1EB2B6A98;
  if (!qword_1EB2B6A98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B6A98);
  }

  return result;
}

unint64_t sub_1A7D69AAC()
{
  result = qword_1EB2B6AA0;
  if (!qword_1EB2B6AA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B6AA0);
  }

  return result;
}

unint64_t sub_1A7D69B04()
{
  result = qword_1EB2B6AA8;
  if (!qword_1EB2B6AA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B6AA8);
  }

  return result;
}

unint64_t sub_1A7D69B5C()
{
  result = qword_1EB2B6AB0;
  if (!qword_1EB2B6AB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B6AB0);
  }

  return result;
}

unint64_t sub_1A7D69BB4()
{
  result = qword_1EB2B6AB8;
  if (!qword_1EB2B6AB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B6AB8);
  }

  return result;
}

unint64_t sub_1A7D69C0C()
{
  result = qword_1EB2B6AC0;
  if (!qword_1EB2B6AC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B6AC0);
  }

  return result;
}

uint64_t sub_1A7D69C60(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x697461636F6C6C61 && a2 == 0xEA00000000006E6FLL;
  if (v4 || (sub_1A7E230D0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6666416C61636F6CLL && a2 == 0xED00007974696E69 || (sub_1A7E230D0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001A7EAFEC0 == a2)
  {

    return 2;
  }

  else
  {
    v6 = sub_1A7E230D0();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_1A7D69D90(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000016 && 0x80000001A7EAFEE0 == a2 || (sub_1A7E230D0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x697461636F6C6C61 && a2 == 0xEA00000000006E6FLL || (sub_1A7E230D0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x736B6E696CLL && a2 == 0xE500000000000000)
  {

    return 2;
  }

  else
  {
    v5 = sub_1A7E230D0();

    if (v5)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_1A7D69EB8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x726F697661686562 && a2 == 0xE800000000000000;
  if (v4 || (sub_1A7E230D0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x616974696E497369 && a2 == 0xEB00000000726F74 || (sub_1A7E230D0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x636F6C6C416C6C61 && a2 == 0xEE00736E6F697461 || (sub_1A7E230D0() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x657461636F6C6C61 && a2 == 0xEE00736B6E694C64 || (sub_1A7E230D0() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000019 && 0x80000001A7EAFF00 == a2 || (sub_1A7E230D0() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001A7EAFF20 == a2)
  {

    return 5;
  }

  else
  {
    v6 = sub_1A7E230D0();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

unint64_t sub_1A7D6A0F4()
{
  v1 = 0x736B6E696CLL;
  if (*v0)
  {
    v1 = 0xD000000000000011;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000012;
  }
}

uint64_t sub_1A7D6A174@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1A7D6C794(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1A7D6A1A8(uint64_t a1)
{
  v2 = sub_1A7D6AA78();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A7D6A1E4(uint64_t a1)
{
  v2 = sub_1A7D6AA78();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A7D6A220(uint64_t a1)
{
  v2 = sub_1A7D6AB30();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A7D6A25C(uint64_t a1)
{
  v2 = sub_1A7D6AB30();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A7D6A298(uint64_t a1)
{
  v2 = sub_1A7D6AC80();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A7D6A2D4(uint64_t a1)
{
  v2 = sub_1A7D6AC80();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A7D6A310(uint64_t a1)
{
  v2 = sub_1A7D6ABD8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A7D6A34C(uint64_t a1)
{
  v2 = sub_1A7D6ABD8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A7D6A388(uint64_t a1)
{
  v2 = sub_1A7D6AD28();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A7D6A3C4(uint64_t a1)
{
  v2 = sub_1A7D6AD28();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t LEToolRequest.encode(to:)(void *a1)
{
  v2 = sub_1A7CC7FFC(&qword_1EB2B6AC8, &qword_1A7E4BE00);
  v38 = *(v2 - 8);
  v39 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v37 = &v29 - v3;
  v4 = sub_1A7CC7FFC(&qword_1EB2B6AD0, &qword_1A7E4BE08);
  v35 = *(v4 - 8);
  v36 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v34 = &v29 - v5;
  v33 = sub_1A7CC7FFC(&qword_1EB2B6AD8, &qword_1A7E4BE10);
  v31 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v7 = &v29 - v6;
  v32 = sub_1A7CC7FFC(&qword_1EB2B6AE0, &qword_1A7E4BE18);
  v30 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32);
  v9 = &v29 - v8;
  v29 = type metadata accessor for LEToolLinksRequest(0);
  MEMORY[0x1EEE9AC00](v29);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for LEToolRequest(0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = (&v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = sub_1A7CC7FFC(&qword_1EB2B6AE8, &qword_1A7E4BE20);
  v41 = *(v15 - 8);
  v42 = v15;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v29 - v16;
  sub_1A7CC9878(a1, a1[3]);
  sub_1A7D6AA78();
  sub_1A7E23260();
  sub_1A7D6AACC(v40, v14);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      v45 = 1;
      sub_1A7D6AC80();
      v19 = v42;
      sub_1A7E22F80();
      sub_1A7D6ACD4();
      v23 = v33;
      sub_1A7E23030();
      (*(v31 + 8))(v7, v23);
    }

    else
    {
      sub_1A7D6B804(v14, v11, type metadata accessor for LEToolLinksRequest);
      v44 = 0;
      sub_1A7D6AD28();
      v19 = v42;
      sub_1A7E22F80();
      sub_1A7D6B914(&qword_1EB2B6B30, type metadata accessor for LEToolLinksRequest, &protocol conformance descriptor for LEToolLinksRequest);
      v20 = v32;
      sub_1A7E23030();
      (*(v30 + 8))(v9, v20);
      sub_1A7D6AD7C(v11);
    }

    return (*(v41 + 8))(v17, v19);
  }

  if (EnumCaseMultiPayload == 2)
  {
    v46 = 2;
    sub_1A7D6ABD8();
    v21 = v34;
    v19 = v42;
    sub_1A7E22F80();
    sub_1A7D6AC2C();
    v22 = v36;
    sub_1A7E23030();
    (*(v35 + 8))(v21, v22);
    return (*(v41 + 8))(v17, v19);
  }

  v25 = *v14;
  v47 = 3;
  sub_1A7D6AB30();
  v26 = v37;
  v27 = v42;
  sub_1A7E22F80();
  v43 = v25;
  sub_1A7D6AB84();
  v28 = v39;
  sub_1A7E23030();
  (*(v38 + 8))(v26, v28);
  (*(v41 + 8))(v17, v27);
  return sub_1A7D3B854(v25);
}

unint64_t sub_1A7D6AA78()
{
  result = qword_1EB2B6AF0;
  if (!qword_1EB2B6AF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B6AF0);
  }

  return result;
}

uint64_t sub_1A7D6AACC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LEToolRequest(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1A7D6AB30()
{
  result = qword_1EB2B6AF8;
  if (!qword_1EB2B6AF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B6AF8);
  }

  return result;
}

unint64_t sub_1A7D6AB84()
{
  result = qword_1EB2B6B00;
  if (!qword_1EB2B6B00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B6B00);
  }

  return result;
}

unint64_t sub_1A7D6ABD8()
{
  result = qword_1EB2B6B08;
  if (!qword_1EB2B6B08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B6B08);
  }

  return result;
}

unint64_t sub_1A7D6AC2C()
{
  result = qword_1EB2B6B10;
  if (!qword_1EB2B6B10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B6B10);
  }

  return result;
}

unint64_t sub_1A7D6AC80()
{
  result = qword_1EB2B6B18;
  if (!qword_1EB2B6B18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B6B18);
  }

  return result;
}

unint64_t sub_1A7D6ACD4()
{
  result = qword_1EB2B6B20;
  if (!qword_1EB2B6B20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B6B20);
  }

  return result;
}

unint64_t sub_1A7D6AD28()
{
  result = qword_1EB2B6B28;
  if (!qword_1EB2B6B28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B6B28);
  }

  return result;
}

uint64_t sub_1A7D6AD7C(uint64_t a1)
{
  v2 = type metadata accessor for LEToolLinksRequest(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t LEToolRequest.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v75 = a2;
  v3 = sub_1A7CC7FFC(&qword_1EB2B6B38, &qword_1A7E4BE28);
  v4 = *(v3 - 8);
  v67 = v3;
  v68 = v4;
  MEMORY[0x1EEE9AC00](v3);
  v74 = &v56 - v5;
  v6 = sub_1A7CC7FFC(&qword_1EB2B6B40, &qword_1A7E4BE30);
  v65 = *(v6 - 8);
  v66 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v73 = &v56 - v7;
  v8 = sub_1A7CC7FFC(&qword_1EB2B6B48, &qword_1A7E4BE38);
  v9 = *(v8 - 8);
  v63 = v8;
  v64 = v9;
  MEMORY[0x1EEE9AC00](v8);
  v72 = &v56 - v10;
  v62 = sub_1A7CC7FFC(&qword_1EB2B6B50, &qword_1A7E4BE40);
  v61 = *(v62 - 8);
  MEMORY[0x1EEE9AC00](v62);
  v69 = &v56 - v11;
  v71 = sub_1A7CC7FFC(&qword_1EB2B6B58, &unk_1A7E4BE48);
  v76 = *(v71 - 8);
  MEMORY[0x1EEE9AC00](v71);
  v13 = &v56 - v12;
  v70 = type metadata accessor for LEToolRequest(0);
  MEMORY[0x1EEE9AC00](v70);
  v15 = &v56 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v56 - v17;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v56 - v20;
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v56 - v23;
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v56 - v26;
  v28 = a1[3];
  v78 = a1;
  sub_1A7CC9878(a1, v28);
  sub_1A7D6AA78();
  v29 = v77;
  sub_1A7E23250();
  if (!v29)
  {
    v57 = v21;
    v58 = v18;
    v60 = v24;
    v59 = v15;
    v30 = v72;
    v31 = v73;
    v32 = v74;
    v33 = v75;
    v77 = v27;
    v34 = v71;
    v35 = sub_1A7E22F70();
    v36 = (2 * *(v35 + 16)) | 1;
    v79 = v35;
    v80 = v35 + 32;
    v81 = 0;
    v82 = v36;
    v37 = sub_1A7CDB544();
    if (v37 != 4 && v81 == v82 >> 1)
    {
      if (v37 > 1u)
      {
        if (v37 == 2)
        {
          LOBYTE(v83) = 2;
          sub_1A7D6ABD8();
          sub_1A7E22E70();
          sub_1A7D6B86C();
          v44 = v66;
          sub_1A7E22F30();
          (*(v65 + 8))(v31, v44);
          (*(v76 + 8))(v13, v34);
          swift_unknownObjectRelease();
          v54 = v58;
        }

        else
        {
          LOBYTE(v83) = 3;
          sub_1A7D6AB30();
          sub_1A7E22E70();
          v73 = v13;
          sub_1A7D6B7B0();
          v48 = v67;
          sub_1A7E22F30();
          v49 = v76;
          (*(v68 + 8))(v32, v48);
          (*(v49 + 8))(v73, v34);
          swift_unknownObjectRelease();
          v54 = v59;
          *v59 = v83;
        }
      }

      else
      {
        if (!v37)
        {
          LOBYTE(v83) = 0;
          sub_1A7D6AD28();
          v38 = v69;
          sub_1A7E22E70();
          v39 = v76;
          type metadata accessor for LEToolLinksRequest(0);
          v50 = v13;
          sub_1A7D6B914(&qword_1EB2B6B78, type metadata accessor for LEToolLinksRequest, &protocol conformance descriptor for LEToolLinksRequest);
          v51 = v60;
          v52 = v62;
          sub_1A7E22F30();
          (*(v61 + 8))(v38, v52);
          (*(v39 + 8))(v50, v34);
          swift_unknownObjectRelease();
          swift_storeEnumTagMultiPayload();
          v53 = v51;
LABEL_14:
          v55 = v77;
          sub_1A7D6B804(v53, v77, type metadata accessor for LEToolRequest);
          sub_1A7D6B804(v55, v33, type metadata accessor for LEToolRequest);
          return sub_1A7B0CD6C(v78);
        }

        LOBYTE(v83) = 1;
        sub_1A7D6AC80();
        v45 = v30;
        sub_1A7E22E70();
        v46 = v76;
        sub_1A7D6B8C0();
        v47 = v63;
        sub_1A7E22F30();
        (*(v64 + 8))(v45, v47);
        (*(v46 + 8))(v13, v34);
        swift_unknownObjectRelease();
        v54 = v57;
      }

      swift_storeEnumTagMultiPayload();
      v53 = v54;
      goto LABEL_14;
    }

    v40 = sub_1A7E22BD0();
    swift_allocError();
    v42 = v41;
    sub_1A7CC7FFC(&qword_1EB2B4EC8, &qword_1A7E42100);
    *v42 = v70;
    sub_1A7E22E90();
    sub_1A7E22BC0();
    (*(*(v40 - 8) + 104))(v42, *MEMORY[0x1E69E6AF8], v40);
    swift_willThrow();
    (*(v76 + 8))(v13, v34);
    swift_unknownObjectRelease();
  }

  return sub_1A7B0CD6C(v78);
}

unint64_t sub_1A7D6B7B0()
{
  result = qword_1EB2B6B60;
  if (!qword_1EB2B6B60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B6B60);
  }

  return result;
}

uint64_t sub_1A7D6B804(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_1A7D6B86C()
{
  result = qword_1EB2B6B68;
  if (!qword_1EB2B6B68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B6B68);
  }

  return result;
}

unint64_t sub_1A7D6B8C0()
{
  result = qword_1EB2B6B70;
  if (!qword_1EB2B6B70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B6B70);
  }

  return result;
}

uint64_t sub_1A7D6B914(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1A7D6B98C(uint64_t a1)
{
  v2 = sub_1A7D6BB7C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A7D6B9C8(uint64_t a1)
{
  v2 = sub_1A7D6BB7C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t LEToolRequestMessage.encode(to:)(void *a1)
{
  v2 = sub_1A7CC7FFC(&qword_1EB2B6B80, &qword_1A7E4BE58);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - v4;
  sub_1A7CC9878(a1, a1[3]);
  sub_1A7D6BB7C();
  sub_1A7E23260();
  type metadata accessor for LEToolRequest(0);
  sub_1A7D6B914(&qword_1EB2B6B90, type metadata accessor for LEToolRequest, &protocol conformance descriptor for LEToolRequest);
  sub_1A7E23030();
  return (*(v3 + 8))(v5, v2);
}

unint64_t sub_1A7D6BB7C()
{
  result = qword_1EB2B6B88;
  if (!qword_1EB2B6B88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B6B88);
  }

  return result;
}

uint64_t LEToolRequestMessage.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v15 = a2;
  v4 = type metadata accessor for LEToolRequest(0);
  MEMORY[0x1EEE9AC00](v4);
  v17 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1A7CC7FFC(&qword_1EB2B6B98, &qword_1A7E4BE60);
  v16 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v15 - v7;
  v9 = type metadata accessor for LEToolRequestMessage(0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A7CC9878(a1, a1[3]);
  sub_1A7D6BB7C();
  sub_1A7E23250();
  if (!v2)
  {
    v12 = v15;
    sub_1A7D6B914(&qword_1EB2B6BA0, type metadata accessor for LEToolRequest, &protocol conformance descriptor for LEToolRequest);
    v13 = v17;
    sub_1A7E22F30();
    (*(v16 + 8))(v8, v6);
    sub_1A7D6B804(v13, v11, type metadata accessor for LEToolRequest);
    sub_1A7D6B804(v11, v12, type metadata accessor for LEToolRequestMessage);
  }

  return sub_1A7B0CD6C(a1);
}

uint64_t sub_1A7D6BE7C(void *a1)
{
  v2 = sub_1A7CC7FFC(&qword_1EB2B6B80, &qword_1A7E4BE58);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - v4;
  sub_1A7CC9878(a1, a1[3]);
  sub_1A7D6BB7C();
  sub_1A7E23260();
  type metadata accessor for LEToolRequest(0);
  sub_1A7D6B914(&qword_1EB2B6B90, type metadata accessor for LEToolRequest, &protocol conformance descriptor for LEToolRequest);
  sub_1A7E23030();
  return (*(v3 + 8))(v5, v2);
}