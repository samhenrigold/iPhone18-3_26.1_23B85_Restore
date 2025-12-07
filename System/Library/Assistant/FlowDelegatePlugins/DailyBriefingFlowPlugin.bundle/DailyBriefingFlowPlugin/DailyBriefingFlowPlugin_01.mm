void *sub_185A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  v25 = a24;

  return sub_7584(&a21, v25);
}

uint64_t sub_185D8(uint64_t a1, void *a2)
{
  v7._countAndFlagsBits = a1;
  v3._rawValue = &off_CF130;
  v7._object = a2;
  v4 = sub_A4CE4(v3, v7);

  if (v4 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (v4)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1862C(char a1)
{
  if (a1)
  {
    return 0x6574656C706D6F63;
  }

  else
  {
    return 0x6572676F72506E69;
  }
}

uint64_t sub_18690@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_185D8(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_186C0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1862C(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_186EC(uint64_t a1, uint64_t a2)
{
  type metadata accessor for ConclusionFlow(0);
  sub_1A5D4(&qword_DC0F0, type metadata accessor for ConclusionFlow, &unk_A76F0);
  return sub_A3334();
}

uint64_t sub_1877C(uint64_t a1)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = v1;
  return sub_58F8();
}

uint64_t sub_18790()
{
  v1 = v0[4];
  sub_A4B54(49);

  v2 = OBJC_IVAR____TtC23DailyBriefingFlowPlugin14ConclusionFlow_state;
  v0[5] = OBJC_IVAR____TtC23DailyBriefingFlowPlugin14ConclusionFlow_state;
  if (*(v1 + v2))
  {
    v3._countAndFlagsBits = 0x6574656C706D6F63;
  }

  else
  {
    v3._countAndFlagsBits = 0x6572676F72506E69;
  }

  if (*(v1 + v2))
  {
    v4 = 0xE900000000000064;
  }

  else
  {
    v4 = 0xEA00000000007373;
  }

  v0[6] = OBJC_IVAR____TtC23DailyBriefingFlowPlugin14ConclusionFlow_logger;
  v3._object = v4;
  sub_A46D4(v3);

  sub_810AC(0xD00000000000002FLL, 0x80000000000AE9B0, 0xD00000000000002CLL, 0x80000000000AE960, 0x2865747563657865, 0xE900000000000029);

  v5 = OBJC_IVAR____TtC23DailyBriefingFlowPlugin14ConclusionFlow_siriKitEventSender;
  v0[7] = OBJC_IVAR____TtC23DailyBriefingFlowPlugin14ConclusionFlow_siriKitEventSender;
  v6 = (v1 + v5);
  v7 = sub_7584((v1 + v5), *(v1 + v5 + 24));
  v8 = OBJC_IVAR____TtC23DailyBriefingFlowPlugin14ConclusionFlow_name;
  v0[8] = OBJC_IVAR____TtC23DailyBriefingFlowPlugin14ConclusionFlow_name;
  v9 = (v1 + v8);
  v10 = *v7;
  v11 = *(v1 + v8 + 24);
  v12 = *(v1 + v8 + 32);
  sub_7584((v1 + v8), v11);
  sub_1A684();
  sub_4DB28(v13, v14, v15, v16, v10, v11, v12);
  v17 = v0[4];
  if (*(v1 + v2))
  {
    if (*(v17 + 344))
    {
      sub_1A648(0xD000000000000029, "skipping conclusion dialog.");
      v0[2] = sub_198B8();
      type metadata accessor for WarningsFlow(0);
      sub_1A5D4(&qword_DC0E8, type metadata accessor for WarningsFlow, &unk_AC040);
      sub_A3644();
    }

    else
    {
      sub_1A648(0xD00000000000004BLL, "Starting execution with state: ");
      sub_A3664();
    }

    sub_AA9C();
    sub_1A6AC();

    __asm { BRAA            X1, X16 }
  }

  sub_7584((v17 + 304), *(v17 + 328));
  if ((sub_834E4() & 1) != 0 && (v18 = sub_19FFC(*(v0[4] + 16))[2], , v18))
  {
    v19 = *sub_7584(v6, v6[3]);
    v20 = v9[3];
    v21 = v9[4];
    sub_7584(v9, v20);
    sub_1A684();
    sub_4DB28(v22, v23, v24, v25, v19, v20, v21);
    swift_task_alloc();
    sub_1A6A0();
    v0[9] = v26;
    *v26 = v27;
    sub_1A638(v26);
    sub_1A6AC();

    return sub_19588(v28);
  }

  else
  {
    v0[10] = 0;
    v33 = swift_task_alloc();
    v0[11] = v33;
    *v33 = v0;
    v33[1] = sub_18C38;
    sub_1A6AC();

    return sub_1993C();
  }
}

uint64_t sub_18B58()
{
  sub_5950();
  sub_AAA8();
  v1 = *v0;
  sub_5930();
  *v2 = v1;

  sub_AA9C();

  return v3();
}

uint64_t sub_18C38()
{
  sub_5950();
  sub_AAA8();
  sub_1A690();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 120) = v3;

  v4 = sub_AA8C();

  return _swift_task_switch(v4, v5, v6);
}

uint64_t sub_18D20()
{
  v1 = *(v0 + 120);
  sub_7584((*(v0 + 32) + 304), *(*(v0 + 32) + 328));
  if ((sub_834E4() & 1) != 0 || (v1 & 1) != 0 || (v2 = *(*(v0 + 32) + 16), v3 = sub_92C60(v2)[2], , v3 > 1))
  {
LABEL_9:
    v26 = *(v0 + 40);
    v27 = *(v0 + 32);
    v28 = (v27 + *(v0 + 64));
    v29 = (v27 + *(v0 + 56));
    sub_1A620();
    sub_810AC(v30, v31, v32, v33, v34, v35);
    v36 = *sub_7584(v29, v29[3]);
    v37 = v28[3];
    v38 = v28[4];
    sub_7584(v28, v37);
    sub_1A684();
    sub_4DB28(v39, v40, v41, v42, v36, v37, v38);
    *(v27 + v26) = 1;
    swift_task_alloc();
    sub_1A6A0();
    *(v0 + 112) = v43;
    *v43 = v44;
    sub_1A638(v43);
    sub_1A6C8();

    return sub_1877C(v45);
  }

  v4 = *(v0 + 32);
  v5 = (v4 + *(v0 + 64));
  v6 = *sub_7584((v4 + *(v0 + 56)), *(v4 + *(v0 + 56) + 24));
  v7 = v5[3];
  v8 = v5[4];
  sub_7584(v5, v7);
  sub_1A684();
  sub_4DB28(v9, v10, v11, v12, v6, v7, v8);
  v13 = sub_92C60(v2)[2];

  if (v13)
  {
    v14 = sub_92C60(v2)[2];

    if (v14 == 1)
    {
      sub_1A620();
      sub_810C4(v15, v16, v17, v18, v19, v20);
      swift_task_alloc();
      sub_1A6A0();
      *(v0 + 104) = v21;
      *v21 = v22;
      sub_1A638(v21);
      sub_1A6C8();

      return sub_19588(v23);
    }

    goto LABEL_9;
  }

  sub_1A620();
  sub_810C4(v47, v48, v49, v50, v51, v52);
  swift_task_alloc();
  sub_1A6A0();
  *(v0 + 96) = v53;
  *v53 = v54;
  sub_1A638(v53);
  sub_1A6C8();

  return sub_192E8(v55);
}

uint64_t sub_19048()
{
  sub_5950();
  sub_AAA8();
  v1 = *v0;
  sub_5930();
  *v2 = v1;

  sub_AA9C();

  return v3();
}

uint64_t sub_19128()
{
  sub_5950();
  sub_AAA8();
  v1 = *v0;
  sub_5930();
  *v2 = v1;

  sub_AA9C();

  return v3();
}

uint64_t sub_19208()
{
  sub_5950();
  sub_AAA8();
  v1 = *v0;
  sub_5930();
  *v2 = v1;

  sub_AA9C();

  return v3();
}

uint64_t sub_192E8(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return sub_58F8();
}

uint64_t sub_192FC()
{
  sub_5950();
  sub_7584((v0[3] + 184), *(v0[3] + 208));
  v0[4] = sub_5DFD0();
  v1 = swift_task_alloc();
  v0[5] = v1;
  *v1 = v0;
  v1[1] = sub_193A4;

  return sub_36A04();
}

uint64_t sub_193A4()
{
  sub_5950();
  sub_AAA8();
  sub_1A690();
  *v2 = v1;
  v3 = *v0;
  sub_5930();
  *v4 = v3;
  *(v6 + 48) = v5;

  v7 = sub_AA8C();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_194A4()
{
  v1 = *(v0 + 24);
  v2 = *sub_7584((v1 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin14ConclusionFlow_siriKitEventSender), *(v1 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin14ConclusionFlow_siriKitEventSender + 24));
  v3 = *(v1 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin14ConclusionFlow_name + 24);
  v4 = *(v1 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin14ConclusionFlow_name + 32);
  sub_7584((v1 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin14ConclusionFlow_name), v3);
  sub_1A684();
  sub_4DB30(v5, v6, v7, v8, v2, v3, v4);

  sub_1A6E4();

  sub_AA9C();

  return v9();
}

uint64_t sub_19588(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return sub_58F8();
}

uint64_t sub_1959C()
{
  sub_5950();
  sub_7584((v0[3] + 184), *(v0[3] + 208));
  v0[4] = sub_5DFD0();
  v1 = swift_task_alloc();
  v0[5] = v1;
  *v1 = v0;
  v1[1] = sub_19644;

  return sub_361D8();
}

uint64_t sub_19644()
{
  sub_5950();
  sub_AAA8();
  sub_1A690();
  *v2 = v1;
  v3 = *v0;
  sub_5930();
  *v4 = v3;
  *(v6 + 48) = v5;

  v7 = sub_AA8C();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_19744()
{
  v1 = *(v0 + 24);
  v2 = *sub_7584((v1 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin14ConclusionFlow_siriKitEventSender), *(v1 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin14ConclusionFlow_siriKitEventSender + 24));
  v3 = *(v1 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin14ConclusionFlow_name + 24);
  v4 = *(v1 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin14ConclusionFlow_name + 32);
  sub_7584((v1 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin14ConclusionFlow_name), v3);
  sub_1A684();
  sub_4DB30(v5, v6, v7, v8, v2, v3, v4);

  sub_1A6E4();

  sub_AA9C();

  return v9();
}

uint64_t sub_19828(uint64_t a1)
{
  *(a1 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin14ConclusionFlow_state) = 1;
  v2 = sub_7584((a1 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin14ConclusionFlow_siriKitEventSender), *(a1 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin14ConclusionFlow_siriKitEventSender + 24));
  v3 = (a1 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin14ConclusionFlow_name);
  v4 = *v2;
  v5 = v3[3];
  v6 = v3[4];
  sub_7584(v3, v5);
  sub_1A684();

  return sub_4DB30(v7, v8, v9, v10, v4, v5, v6);
}

uint64_t sub_198B8()
{
  sub_1A2C4(v0 + 24, v5);
  type metadata accessor for DBSiriKitEventSender();
  inited = swift_initStaticObject();
  type metadata accessor for WarningsFlow(0);
  v2 = swift_allocObject();

  return sub_1A320(v3, v5, inited, v2);
}

uint64_t sub_19950()
{
  v1 = v0[2];
  if (*(v1 + 344) == 1)
  {
    sub_7584((v1 + 128), *(v1 + 152));
    v2 = swift_task_alloc();
    v0[3] = v2;
    *v2 = v0;
    v2[1] = sub_19AB8;

    return sub_A205C();
  }

  else
  {
    sub_810AC(0xD00000000000002ELL, 0x80000000000AE930, 0xD00000000000002CLL, 0x80000000000AE960, 0xD000000000000018, 0x80000000000AE990);
    v4 = v0[1];

    return v4(0);
  }
}

uint64_t sub_19AB8()
{
  sub_5950();
  v2 = v1;
  sub_AAA8();
  v3 = *v0;
  sub_5930();
  *v4 = v3;

  v5 = *(v3 + 8);

  return v5(v2);
}

uint64_t sub_19BA4()
{

  sub_1A564(v0 + 24);
  v1 = OBJC_IVAR____TtC23DailyBriefingFlowPlugin14ConclusionFlow_logger;
  v2 = sub_A43D4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_761C((v0 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin14ConclusionFlow_name));
  sub_761C((v0 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin14ConclusionFlow_siriKitEventSender));
  return v0;
}

uint64_t sub_19C34()
{
  sub_19BA4();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

uint64_t type metadata accessor for ConclusionFlow(uint64_t a1)
{
  result = qword_DBFD8;
  if (!qword_DBFD8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_19CE0(uint64_t a1)
{
  result = sub_A43D4();
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

_BYTE *storeEnumTagSinglePayload for ConclusionFlow.State(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x19E70);
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

unint64_t sub_19EAC()
{
  result = qword_DC0E0;
  if (!qword_DC0E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DC0E0);
  }

  return result;
}

uint64_t sub_19F24(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_A648;

  return sub_1877C(a1);
}

uint64_t sub_19FC0(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for ConclusionFlow(0);

  return Flow<>.exitValue.getter(v3, a2);
}

unint64_t *sub_19FFC(uint64_t a1)
{
  v2 = a1;
  v3 = *(a1 + 32);
  v4 = ((1 << v3) + 63) >> 6;
  if ((v3 & 0x3Fu) > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v8 = swift_slowAlloc();
      v2 = sub_1A24C(v8, v4, v2);

      return v2;
    }
  }

  __chkstk_darwin(a1);
  v5 = (&v9 - ((8 * v4 + 15) & 0x3FFFFFFFFFFFFFF0));
  sub_92BFC(0, v4, v5);
  v6 = sub_1A160(v5, v4, v2);
  if (!v1)
  {
    return v6;
  }

  swift_willThrow();
  return v2;
}

unint64_t *sub_1A160(unint64_t *result, uint64_t a2, uint64_t a3)
{
  v4 = 0;
  v5 = 0;
  v6 = 1 << *(a3 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a3 + 64);
  v9 = (v6 + 63) >> 6;
  while (v8)
  {
    v10 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    v11 = v10 | (v5 << 6);
LABEL_11:
    if (*(*(a3 + 56) + v11) == 1)
    {
      *(result + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      if (__OFADD__(v4++, 1))
      {
        __break(1u);
        return sub_92F24(result, a2, v4, a3);
      }
    }
  }

  v12 = v5;
  while (1)
  {
    v5 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v5 >= v9)
    {
      return sub_92F24(result, a2, v4, a3);
    }

    v13 = *(a3 + 64 + 8 * v5);
    ++v12;
    if (v13)
    {
      v8 = (v13 - 1) & v13;
      v11 = __clz(__rbit64(v13)) | (v5 << 6);
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

unint64_t *sub_1A24C(unint64_t *result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v5 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    v6 = sub_1A160(v5, a2, a3);

    return v6;
  }

  return result;
}

uint64_t sub_1A320(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_A2EA4();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for DBSiriKitEventSender();
  v19 = &off_D1B20;
  v20 = sub_1A5D4(&qword_DB598, type metadata accessor for DBSiriKitEventSender, &unk_A9488);
  *&v17 = a3;
  v12 = OBJC_IVAR____TtC23DailyBriefingFlowPlugin12WarningsFlow_logger;
  if (qword_DAA08 != -1)
  {
    swift_once();
  }

  v13 = sub_A43D4();
  v14 = sub_48A4(v13, qword_E0C48);
  (*(*(v13 - 8) + 16))(a4 + v12, v14, v13);
  v15 = a4 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin12WarningsFlow_name;
  *(v15 + 24) = &type metadata for CommonSpecs;
  *(v15 + 32) = &off_D2128;
  *v15 = 1;
  *(a4 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin12WarningsFlow_specExecutionStatus) = a1;
  sub_1A2C4(a2, a4 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin12WarningsFlow_flowParams);
  sub_A2E94();
  sub_1A564(a2);
  (*(v9 + 32))(a4 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin12WarningsFlow_now, v11, v8);
  sub_A82C(&v17, (a4 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin12WarningsFlow_siriKitEventSender));
  return a4;
}

uint64_t sub_1A5D4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1A648(uint64_t a1@<X0>, uint64_t a2@<X8>)
{

  sub_810AC(a1, a2 | 0x8000000000000000, 0xD00000000000002CLL, v2 | 0x8000000000000000, 0x2865747563657865, 0xE900000000000029);
}

uint64_t sub_1A6E4()
{

  return sub_A3614();
}

uint64_t sub_1A718(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_A2EA4();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return sub_CF2C(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 24) + 8);
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    return (v8 + 1);
  }
}

uint64_t sub_1A7DC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_A2EA4();
  if (*(*(result - 8) + 84) == a3)
  {

    return sub_A924(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t type metadata accessor for WeatherState(uint64_t a1)
{
  result = qword_DC150;
  if (!qword_DC150)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1A8D4(uint64_t a1)
{
  sub_A2EA4();
  if (v1 <= 0x3F)
  {
    sub_1A970();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1A970()
{
  if (!qword_DC160)
  {
    v0 = sub_A47B4();
    if (!v1)
    {
      atomic_store(v0, &qword_DC160);
    }
  }
}

uint64_t sub_1A9C4(unint64_t a1)
{
  if (a1 >> 62)
  {
    return sub_A4C94();
  }

  else
  {
    return *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
  }
}

uint64_t sub_1A9E8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x697461636F766E69 && a2 == 0xEE00657461446E6FLL;
  if (v4 || (sub_A4E44() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000012 && 0x80000000000ACDC0 == a2;
    if (v6 || (sub_A4E44() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000010 && 0x80000000000ACDA0 == a2;
      if (v7 || (sub_A4E44() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0xD000000000000012 && 0x80000000000AEB30 == a2)
      {

        return 3;
      }

      else
      {
        v9 = sub_A4E44();

        if (v9)
        {
          return 3;
        }

        else
        {
          return 4;
        }
      }
    }
  }
}

Swift::Int sub_1AB8C(unsigned __int8 a1)
{
  sub_A4F14();
  sub_A4F24(a1);
  return sub_A4F44();
}

unint64_t sub_1ABD4(char a1)
{
  result = 0x697461636F766E69;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000012;
      break;
    case 2:
      result = 0xD000000000000010;
      break;
    case 3:
      result = 0xD000000000000012;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1AC7C(uint64_t a1, uint64_t a2)
{
  if ((sub_A2E64() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for WeatherState(0);
  if (*(a1 + *(v4 + 20)) != *(a2 + *(v4 + 20)))
  {
    return 0;
  }

  v5 = v4;
  v6 = *(v4 + 24);
  v7 = *(a1 + v6);
  v8 = *(a1 + v6 + 8);
  v9 = (a2 + v6);
  v10 = v7 == *v9 && v8 == v9[1];
  if (!v10 && (sub_A4E44() & 1) == 0)
  {
    return 0;
  }

  v11 = *(v5 + 28);
  v12 = *(a1 + v11);
  v13 = *(a2 + v11);

  return sub_1BB58(v12, v13);
}

uint64_t sub_1AD2C(void *a1)
{
  v3 = v1;
  v5 = sub_4BF0(&qword_DC1B8, &qword_A7800);
  sub_591C();
  v7 = v6;
  __chkstk_darwin(v8);
  v10 = &v15[-v9];
  sub_7584(a1, a1[3]);
  sub_1B45C();
  sub_A4F64();
  v18 = 0;
  sub_A2EA4();
  sub_1BF74();
  sub_1BCEC(v11, v12, &protocol conformance descriptor for Date);
  sub_1BFD0();
  sub_A4DF4();
  if (!v2)
  {
    v13 = type metadata accessor for WeatherState(0);
    sub_1BFBC();
    sub_1BFD0();
    sub_A4DD4();
    v17[0] = 2;
    sub_1BFD0();
    sub_A4DB4();
    v16 = *(v3 + *(v13 + 28));
    v15[15] = 3;
    sub_4BF0(&qword_DC1A8, &qword_A8E50);
    sub_1B4F8(&qword_DC1C0, &protocol witness table for String, &protocol conformance descriptor for <A> [A]);
    sub_1BFD0();
    sub_A4DF4();
  }

  return (*(v7 + 8))(v10, v5);
}

uint64_t sub_1AF5C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a2;
  v4 = sub_A2EA4();
  sub_591C();
  v25 = v5;
  __chkstk_darwin(v6);
  v28 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_4BF0(&qword_DC198, &unk_A77F0);
  sub_591C();
  v26 = v9;
  v27 = v8;
  __chkstk_darwin(v8);
  v10 = type metadata accessor for WeatherState(0);
  sub_7A14();
  __chkstk_darwin(v11);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_7584(a1, a1[3]);
  sub_1B45C();
  sub_A4F54();
  if (v2)
  {
    return sub_761C(a1);
  }

  v14 = v25;
  v32 = 0;
  sub_1BF74();
  sub_1BCEC(v15, v16, &protocol conformance descriptor for Date);
  sub_1BFB0();
  sub_A4D74();
  (*(v14 + 32))(v13, v28, v4);
  sub_1BFBC();
  sub_1BFB0();
  sub_A4D54();
  *&v13[v10[5]] = v17;
  v31[0] = 2;
  sub_1BFB0();
  v18 = sub_A4D34();
  v19 = &v13[v10[6]];
  *v19 = v18;
  v19[1] = v20;
  sub_4BF0(&qword_DC1A8, &qword_A8E50);
  v30 = 3;
  sub_1B4F8(&qword_DC1B0, &protocol witness table for String, &protocol conformance descriptor for <A> [A]);
  sub_1BFB0();
  sub_A4D74();
  v21 = sub_1BF8C();
  v22(v21);
  *&v13[v10[7]] = v29;
  sub_1BC34(v13, v24, type metadata accessor for WeatherState);
  sub_761C(a1);
  return sub_1BC94(v13, type metadata accessor for WeatherState);
}

uint64_t sub_1B360@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1A9E8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B388@<X0>(_BYTE *a1@<X8>)
{
  result = sub_14FA4();
  *a1 = result;
  return result;
}

uint64_t sub_1B3B0(uint64_t a1)
{
  v2 = sub_1B45C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1B3EC(uint64_t a1)
{
  v2 = sub_1B45C();

  return CodingKey.debugDescription.getter(a1, v2);
}

unint64_t sub_1B45C()
{
  result = qword_DC1A0;
  if (!qword_DC1A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DC1A0);
  }

  return result;
}

uint64_t sub_1B4B0(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_1B4F8(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_1B4B0(&qword_DC1A8, &qword_A8E50);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1B564(unint64_t a1, unint64_t a2)
{
  v4 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_36;
  }

  for (i = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8)); ; i = sub_A4C94())
  {
    if (a2 >> 62)
    {
      result = sub_A4C94();
    }

    else
    {
      result = *(&dword_10 + (a2 & 0xFFFFFFFFFFFFFF8));
    }

    if (i != result)
    {
      v20 = 0;
      return v20 & 1;
    }

    if (!i)
    {
      goto LABEL_31;
    }

    v7 = a1 & 0xFFFFFFFFFFFFFF8;
    v8 = (a1 & 0xFFFFFFFFFFFFFF8) + 32;
    if ((a1 & 0x8000000000000000) != 0)
    {
      v7 = a1;
    }

    if (v4)
    {
      v8 = v7;
    }

    v9 = a2 & 0xFFFFFFFFFFFFFF8;
    v10 = (a2 & 0xFFFFFFFFFFFFFF8) + 32;
    v21 = a2 & 0xFFFFFFFFFFFFFF8;
    if ((a2 & 0x8000000000000000) != 0)
    {
      v9 = a2;
    }

    if (a2 >> 62)
    {
      v10 = v9;
    }

    if (v8 == v10)
    {
LABEL_31:
      v20 = 1;
      return v20 & 1;
    }

    if (i < 0)
    {
      break;
    }

    v4 = sub_1BBF0();
    v11 = a2 & 0xC000000000000001;
    v12 = 4;
    v13 = a2;
    while (1)
    {
      v14 = v12 - 4;
      v15 = v12 - 3;
      if (__OFADD__(v12 - 4, 1))
      {
        break;
      }

      if ((a1 & 0xC000000000000001) != 0)
      {
        v16 = sub_A4B74();
      }

      else
      {
        if (v14 >= *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8)))
        {
          goto LABEL_34;
        }

        v16 = *(a1 + 8 * v12);
      }

      v17 = v16;
      if (v11)
      {
        v18 = sub_A4B74();
      }

      else
      {
        if (v14 >= *(v21 + 16))
        {
          goto LABEL_35;
        }

        v18 = *(a2 + 8 * v12);
      }

      v19 = v18;
      v20 = sub_A4A04();

      if (v20)
      {
        ++v12;
        a2 = v13;
        if (v15 != i)
        {
          continue;
        }
      }

      return v20 & 1;
    }

    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    ;
  }

  __break(1u);
  return result;
}

uint64_t sub_1B724(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CalendarEvent(0);
  v5 = __chkstk_darwin(v4);
  v7 = (&v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v5);
  v10 = (&v19 - v9);
  v11 = *(a1 + 16);
  if (v11 != *(a2 + 16))
  {
LABEL_16:
    v17 = 0;
    return v17 & 1;
  }

  if (v11 && a1 != a2)
  {
    v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
    v13 = a1 + v12;
    v14 = a2 + v12;
    v15 = *(v8 + 72);
    while (1)
    {
      sub_1BC34(v13, v10, type metadata accessor for CalendarEvent);
      sub_1BC34(v14, v7, type metadata accessor for CalendarEvent);
      v16 = *v10 == *v7 && v10[1] == v7[1];
      if (!v16 && (sub_A4E44() & 1) == 0 || (sub_A2E64() & 1) == 0)
      {
        break;
      }

      v17 = sub_A2D64();
      sub_1BC94(v7, type metadata accessor for CalendarEvent);
      sub_1BC94(v10, type metadata accessor for CalendarEvent);
      if (v17)
      {
        v14 += v15;
        v13 += v15;
        if (--v11)
        {
          continue;
        }
      }

      return v17 & 1;
    }

    sub_1BC94(v7, type metadata accessor for CalendarEvent);
    sub_1BC94(v10, type metadata accessor for CalendarEvent);
    goto LABEL_16;
  }

  v17 = 1;
  return v17 & 1;
}

uint64_t sub_1B950(uint64_t a1, uint64_t a2)
{
  v4 = sub_A2DB4();
  sub_591C();
  v6 = v5;
  v8 = __chkstk_darwin(v7);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v26 - v11;
  v13 = *(a1 + 16);
  if (v13 != *(a2 + 16))
  {
    v23 = 0;
    return v23 & 1;
  }

  if (!v13 || a1 == a2)
  {
    v23 = 1;
    return v23 & 1;
  }

  v14 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v15 = a1 + v14;
  v16 = a2 + v14;
  v18 = *(v6 + 16);
  v17 = v6 + 16;
  v19 = (v17 - 8);
  v26 = *(v17 + 56);
  v27 = v18;
  while (1)
  {
    v20 = v27;
    result = (v27)(v12, v15, v4);
    if (!v13)
    {
      break;
    }

    v22 = v17;
    v20(v10, v16, v4);
    sub_1BCEC(&qword_DC1D0, &type metadata accessor for URL, &protocol conformance descriptor for URL);
    v23 = sub_A45B4();
    v24 = *v19;
    (*v19)(v10, v4);
    v24(v12, v4);
    if (v23)
    {
      v16 += v26;
      v15 += v26;
      v25 = v13-- == 1;
      v17 = v22;
      if (!v25)
      {
        continue;
      }
    }

    return v23 & 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_1BB58(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      return 1;
    }

    v3 = (a1 + 40);
    for (i = (a2 + 40); ; i += 2)
    {
      v5 = *(v3 - 1) == *(i - 1) && *v3 == *i;
      if (!v5 && (sub_A4E44() & 1) == 0)
      {
        break;
      }

      v3 += 2;
      if (!--v2)
      {
        return 1;
      }
    }
  }

  return 0;
}

unint64_t sub_1BBF0()
{
  result = qword_DC1C8;
  if (!qword_DC1C8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_DC1C8);
  }

  return result;
}

uint64_t sub_1BC34(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_7A14();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_1BC94(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_7A14();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1BCEC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1BD38(unint64_t result, char a2, uint64_t a3)
{
  if (a2)
  {
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (*(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8)) > result)
    {
      return result;
    }

    __break(1u);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for WeatherState.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x1BE28);
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

unint64_t sub_1BE64()
{
  result = qword_DC1D8;
  if (!qword_DC1D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DC1D8);
  }

  return result;
}

unint64_t sub_1BEBC()
{
  result = qword_DC1E0;
  if (!qword_DC1E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DC1E0);
  }

  return result;
}

unint64_t sub_1BF14()
{
  result = qword_DC1E8;
  if (!qword_DC1E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DC1E8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for WeatherAirQuality.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFB)
  {
    if (a2 + 5 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 5) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 6;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v5 = v6 - 6;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *sub_1C064(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFB)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFA)
  {
    v6 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
        JUMPOUT(0x1C130);
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
          *result = a2 + 5;
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_1C164(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x1C230);
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

uint64_t getEnumTagSinglePayload for SupportedFeatures(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFC)
  {
    if (a2 + 4 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 4) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 5;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v5 = v6 - 5;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *sub_1C2F8(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x1C3C4);
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

unint64_t sub_1C3FC()
{
  result = qword_DC1F0;
  if (!qword_DC1F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DC1F0);
  }

  return result;
}

unint64_t sub_1C450(uint64_t a1)
{
  v1 = a1;
  sub_A4B54(20);

  v2 = sub_1C574(v1);
  v4 = v3;

  sub_1DCF8(1, v2, v4);
  v5 = sub_A4A34();
  v7 = v6;

  sub_1DEF0(1uLL, v2, v4);
  sub_1DFC4();

  sub_A46C4();

  v9._countAndFlagsBits = v5;
  v9._object = v7;
  sub_A46D4(v9);

  return 0xD000000000000012;
}

unint64_t sub_1C574(char a1)
{
  result = 0x697242796C696164;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000019;
      break;
    case 2:
      result = 0xD000000000000011;
      break;
    case 3:
      result = 0xD000000000000011;
      break;
    case 4:
      result = 0xD000000000000011;
      break;
    case 5:
      result = 7368801;
      break;
    case 6:
      result = 0x656D614E707061;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1C664(unsigned __int8 a1)
{
  switch(a1 >> 6)
  {
    case 1:
      if (a1)
      {
        result = 0x657461647075;
      }

      else
      {
        result = 0x676E696665697262;
      }

      break;
    case 2:
      result = 0x736972616D6D7573;
      switch(a1 & 0x3F)
      {
        case 1:
          result = sub_1E854();
          break;
        case 2:
          result = sub_1E910(1633972341);
          break;
        case 3:
          result = sub_1E910(1701602660);
          break;
        case 4:
          result = sub_1E8AC();
          break;
        case 5:
          result = 0x746165706572;
          break;
        default:
          return result;
      }

      break;
    case 3:
      result = 0x7261646E656C6163;
      switch(a1 & 0x3F)
      {
        case 1:
          result = sub_1E8BC();
          break;
        case 2:
          result = sub_1E898();
          break;
        case 3:
          result = sub_1E878();
          break;
        case 4:
          result = 0x72656874616577;
          break;
        default:
          return result;
      }

      break;
    default:
      if (a1)
      {
        if (a1 == 1)
        {
          result = 28526;
        }

        else
        {
          result = 0x6C65636E6163;
        }
      }

      else
      {
        result = sub_1E8CC();
      }

      break;
  }

  return result;
}

uint64_t sub_1C810(char a1)
{
  if (!a1)
  {
    return sub_1E8CC();
  }

  if (a1 == 1)
  {
    return 28526;
  }

  return 0x6C65636E6163;
}

uint64_t sub_1C844(char a1)
{
  if (a1)
  {
    return 0x657461647075;
  }

  else
  {
    return 0x676E696665697262;
  }
}

uint64_t sub_1C878(char a1)
{
  result = 0x736972616D6D7573;
  switch(a1)
  {
    case 1:
      result = sub_1E854();
      break;
    case 2:
      result = sub_1E910(1633972341);
      break;
    case 3:
      result = sub_1E910(1701602660);
      break;
    case 4:
      result = sub_1E8AC();
      break;
    case 5:
      result = 0x746165706572;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1C90C(char a1)
{
  result = 0x7261646E656C6163;
  switch(a1)
  {
    case 1:
      result = sub_1E8BC();
      break;
    case 2:
      result = sub_1E898();
      break;
    case 3:
      result = sub_1E878();
      break;
    case 4:
      result = 0x72656874616577;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1C988()
{
  v0 = sub_4BF0(&qword_DC2D0, &qword_A7D88);
  sub_5D78(v0);
  result = sub_A3AE4();
  qword_E0758 = result;
  return result;
}

uint64_t sub_1CA20(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  v5 = sub_4BF0(a2, a3);
  v6 = sub_5D78(v5);
  result = sub_1E8F4(v6, 0x80000000000AEB70);
  *a4 = result;
  return result;
}

uint64_t sub_1CA74()
{
  v0 = sub_4BF0(&qword_DC2C8, &qword_A7D80);
  v1 = sub_5D78(v0);
  result = sub_1E8F4(v1, 0x80000000000AEB50);
  qword_E0770 = result;
  return result;
}

uint64_t sub_1CAC8()
{
  v0 = sub_4BF0(&qword_DC2C0, &qword_A7D78);
  v1 = sub_5D78(v0);
  result = sub_1E8F4(v1, 0x80000000000AEB90);
  qword_E0778 = result;
  return result;
}

uint64_t sub_1CB1C()
{
  sub_4BF0(&qword_DC310, &unk_A7DA0);
  swift_allocObject();
  result = sub_A3AE4();
  qword_E0780 = result;
  return result;
}

uint64_t sub_1CB80()
{
  sub_4BF0(&qword_DC2D8, &qword_A7D90);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_A6E70;
  if (qword_DA878 != -1)
  {
    swift_once();
  }

  v1 = qword_E0780;
  *(v0 + 56) = sub_4BF0(&qword_DC310, &unk_A7DA0);
  *(v0 + 64) = sub_1E530(&qword_DC318, &qword_DC310, &unk_A7DA0, &protocol conformance descriptor for TerminalOntologyNode<A>);
  *(v0 + 32) = v1;
  sub_A3A74();
  swift_allocObject();

  result = sub_A3A64();
  qword_E0788 = result;
  return result;
}

uint64_t sub_1CCA0()
{
  sub_4BF0(&qword_DC2D8, &qword_A7D90);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_A7920;
  if (qword_DA850 != -1)
  {
    swift_once();
  }

  v1 = qword_E0758;
  *(v0 + 56) = sub_1E918();
  *(v0 + 64) = sub_1E828(&qword_DC2E0);
  *(v0 + 32) = v1;
  v2 = qword_DA858;

  if (v2 != -1)
  {
    swift_once();
  }

  v3 = qword_E0760;
  *(v0 + 96) = sub_1E918();
  *(v0 + 104) = sub_1E828(&qword_DC2F0);
  *(v0 + 72) = v3;
  v4 = qword_DA860;

  if (v4 != -1)
  {
    swift_once();
  }

  v5 = qword_E0768;
  *(v0 + 136) = sub_1E918();
  *(v0 + 144) = sub_1E828(&qword_DC2F8);
  *(v0 + 112) = v5;
  v6 = qword_DA880;

  if (v6 != -1)
  {
    swift_once();
  }

  v7 = qword_E0788;
  *(v0 + 176) = sub_A3A74();
  *(v0 + 184) = &protocol witness table for NonTerminalOntologyNode;
  *(v0 + 152) = v7;
  v8 = qword_DA868;

  if (v8 != -1)
  {
    swift_once();
  }

  v9 = qword_E0770;
  *(v0 + 216) = sub_1E918();
  *(v0 + 224) = sub_1E828(&qword_DC300);
  *(v0 + 192) = v9;
  v10 = qword_DA870;

  if (v10 != -1)
  {
    swift_once();
  }

  v11 = qword_E0778;
  *(v0 + 256) = sub_1E918();
  *(v0 + 264) = sub_1E828(&qword_DC308);
  *(v0 + 232) = v11;
  v12 = sub_A3AD4();
  sub_5D78(v12);

  result = sub_A3AC4();
  qword_E0790 = result;
  return result;
}

unint64_t sub_1CFB0()
{
  sub_1E8E8();
  v2._rawValue = &off_CF180;
  v4._object = v0;
  sub_A4CE4(v2, v4);
  sub_1E930();
  if (v1 >= 3)
  {
    return 3;
  }

  else
  {
    return v1;
  }
}

unint64_t sub_1D020@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1CFB0();
  *a1 = result;
  return result;
}

uint64_t sub_1D050()
{
  v1 = sub_1E8DC();
  result = sub_1C810(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

unint64_t sub_1D0C8()
{
  sub_1E8E8();
  v2._rawValue = &off_CEE98;
  v4._object = v0;
  sub_A4CE4(v2, v4);
  sub_1E930();
  if (v1 >= 6)
  {
    return 6;
  }

  else
  {
    return v1;
  }
}

unint64_t sub_1D114()
{
  sub_1E8E8();
  v2._rawValue = &off_CF238;
  v4._object = v0;
  sub_A4CE4(v2, v4);
  sub_1E930();
  if (v1 >= 7)
  {
    return 7;
  }

  else
  {
    return v1;
  }
}

unint64_t sub_1D160(char a1)
{
  result = 0x6665697262;
  switch(a1)
  {
    case 1:
      result = 6579297;
      break;
    case 2:
      result = sub_1E910(1633972341);
      break;
    case 3:
      result = sub_1E910(1701602660);
      break;
    case 4:
      result = 0x65676E616863;
      break;
    case 5:
      result = 1684104562;
      break;
    case 6:
      result = 2036427888;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_1D218()
{
  sub_1E8E8();
  v2._rawValue = &off_CF328;
  v4._object = v0;
  sub_A4CE4(v2, v4);
  sub_1E930();
  if (v1 >= 5)
  {
    return 5;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_1D264()
{
  sub_1E8E8();
  v2._rawValue = &off_CF3E8;
  v5._object = v0;
  sub_A4CE4(v2, v5);
  sub_1E930();
  if (v1 == 1)
  {
    v3 = 1;
  }

  else
  {
    v3 = 2;
  }

  if (v1)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

unint64_t sub_1D2DC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D0C8();
  *a1 = result;
  return result;
}

uint64_t sub_1D30C()
{
  v1 = sub_1E8DC();
  result = sub_1C878(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

unint64_t sub_1D3A8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D114();
  *a1 = result;
  return result;
}

unint64_t sub_1D3D8()
{
  v1 = sub_1E8DC();
  result = sub_1D160(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

unint64_t sub_1D474@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D218();
  *a1 = result;
  return result;
}

uint64_t sub_1D4A4()
{
  v1 = sub_1E8DC();
  result = sub_1C90C(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

unint64_t sub_1D564()
{
  result = qword_DC208;
  if (!qword_DC208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DC208);
  }

  return result;
}

unint64_t sub_1D5BC()
{
  result = qword_DC210;
  if (!qword_DC210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DC210);
  }

  return result;
}

unint64_t sub_1D614()
{
  result = qword_DC218;
  if (!qword_DC218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DC218);
  }

  return result;
}

uint64_t sub_1D68C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D264();
  *a1 = result;
  return result;
}

uint64_t sub_1D6BC()
{
  v1 = sub_1E8DC();
  result = sub_1C844(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t sub_1D734(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t), uint64_t (*a5)(void), uint64_t (*a6)(void))
{
  v10 = a4(a1, a2, a3);
  v11 = a5();
  v12 = a6();

  return static TerminalNodeBoundedSemanticValue<>.fromIntentNodeValue(_:)(a1, a2, v10, v11, v12);
}

unint64_t sub_1D80C()
{
  result = qword_DC230;
  if (!qword_DC230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DC230);
  }

  return result;
}

unint64_t sub_1D864()
{
  result = qword_DC238;
  if (!qword_DC238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DC238);
  }

  return result;
}

unint64_t sub_1D8BC()
{
  result = qword_DC240;
  if (!qword_DC240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DC240);
  }

  return result;
}

unint64_t sub_1D958()
{
  result = qword_DC258;
  if (!qword_DC258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DC258);
  }

  return result;
}

unint64_t sub_1D9B0()
{
  result = qword_DC260;
  if (!qword_DC260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DC260);
  }

  return result;
}

unint64_t sub_1DA04()
{
  result = qword_DC268;
  if (!qword_DC268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DC268);
  }

  return result;
}

unint64_t sub_1DA58()
{
  result = qword_DC270;
  if (!qword_DC270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DC270);
  }

  return result;
}

unint64_t sub_1DAAC()
{
  result = qword_DC278;
  if (!qword_DC278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DC278);
  }

  return result;
}

unint64_t sub_1DB00()
{
  result = qword_DC280;
  if (!qword_DC280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DC280);
  }

  return result;
}

unint64_t sub_1DB54()
{
  result = qword_DC288;
  if (!qword_DC288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DC288);
  }

  return result;
}

unint64_t sub_1DBA8()
{
  result = qword_DC290;
  if (!qword_DC290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DC290);
  }

  return result;
}

unint64_t sub_1DBFC()
{
  result = qword_DC298;
  if (!qword_DC298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DC298);
  }

  return result;
}

unint64_t sub_1DC50()
{
  result = qword_DC2A0;
  if (!qword_DC2A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DC2A0);
  }

  return result;
}

unint64_t sub_1DCA4()
{
  result = qword_DC2A8;
  if (!qword_DC2A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DC2A8);
  }

  return result;
}

uint64_t sub_1DCF8(uint64_t result, uint64_t a2, unint64_t a3)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    sub_A46B4();
    v3 = sub_A4714();

    return v3;
  }

  return result;
}

unint64_t sub_1DDB8(uint64_t a1, unint64_t a2)
{
  if (a1 < 0)
  {
    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    v10 = sub_A4CA4();

    return v10;
  }

  v4 = sub_1BF68();
  v5 = sub_1E018(0, a1, v4);
  if (v6)
  {
    v7 = v4;
  }

  else
  {
    v7 = v5;
  }

  if (v7 < 0)
  {
    goto LABEL_16;
  }

  sub_1E068(0, a2);
  sub_1E068(v7, a2);
  if ((a2 & 0xC000000000000001) != 0 && v7)
  {
    sub_1BBF0();

    v8 = 0;
    do
    {
      v9 = v8 + 1;
      sub_A4B64(v8);
      v8 = v9;
    }

    while (v7 != v9);
  }

  else
  {
  }

  if (a2 >> 62)
  {
    goto LABEL_17;
  }

  return a2 & 0xFFFFFFFFFFFFFF8;
}

unint64_t sub_1DEF0(unint64_t result, uint64_t a2, unint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    if ((a3 & 0x2000000000000000) != 0)
    {
      v3 = HIBYTE(a3) & 0xF;
    }

    else
    {
      v3 = a2 & 0xFFFFFFFFFFFFLL;
    }

    v4 = 7;
    if (((a3 >> 60) & ((a2 & 0x800000000000000) == 0)) != 0)
    {
      v4 = 11;
    }

    v5 = v4 | (v3 << 16);
    result = sub_A46B4();
    if (v6)
    {
      result = v5;
    }

    if (4 * v3 >= result >> 14)
    {
      v7 = sub_A4714();

      return v7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1DFC4()
{
  result = qword_DC2B0;
  if (!qword_DC2B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DC2B0);
  }

  return result;
}

uint64_t sub_1E018(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = a3 - result;
  if (__OFSUB__(a3, result))
  {
    __break(1u);
LABEL_14:
    __break(1u);
    return result;
  }

  if (a2 < 1)
  {
    if (v3 <= 0 && v3 > a2)
    {
      return 0;
    }
  }

  else if ((v3 & 0x8000000000000000) == 0 && v3 < a2)
  {
    return 0;
  }

  v5 = __OFADD__(result, a2);
  result += a2;
  if (v5)
  {
    goto LABEL_14;
  }

  return result;
}

uint64_t sub_1E068(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62)
  {
    result = sub_A4C94();
  }

  else
  {
    result = *(&dword_10 + (a2 & 0xFFFFFFFFFFFFFF8));
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

_BYTE *sub_1E0C0(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x1E18CLL);
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

uint64_t sub_1E1C0(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFA)
  {
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

    v5 = (*a1 | (v4 << 8)) - 7;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v5 = v6 - 7;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *sub_1E248(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFA)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF9)
  {
    v6 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
        JUMPOUT(0x1E314);
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
          *result = a2 + 6;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1E34C()
{
  result = qword_DC320;
  if (!qword_DC320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DC320);
  }

  return result;
}

unint64_t sub_1E3E8()
{
  result = qword_DC338;
  if (!qword_DC338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DC338);
  }

  return result;
}

unint64_t sub_1E440()
{
  result = qword_DC340;
  if (!qword_DC340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DC340);
  }

  return result;
}

unint64_t sub_1E498()
{
  result = qword_DC348;
  if (!qword_DC348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DC348);
  }

  return result;
}

uint64_t sub_1E530(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_1B4B0(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1E57C()
{
  result = qword_DC360;
  if (!qword_DC360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DC360);
  }

  return result;
}

unint64_t sub_1E5D4()
{
  result = qword_DC368;
  if (!qword_DC368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DC368);
  }

  return result;
}

unint64_t sub_1E628()
{
  result = qword_DC370;
  if (!qword_DC370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DC370);
  }

  return result;
}

unint64_t sub_1E67C()
{
  result = qword_DC378;
  if (!qword_DC378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DC378);
  }

  return result;
}

unint64_t sub_1E6D0()
{
  result = qword_DC380;
  if (!qword_DC380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DC380);
  }

  return result;
}

unint64_t sub_1E724()
{
  result = qword_DC388;
  if (!qword_DC388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DC388);
  }

  return result;
}

unint64_t sub_1E778()
{
  result = qword_DC390;
  if (!qword_DC390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DC390);
  }

  return result;
}

unint64_t sub_1E7CC()
{
  result = qword_DC398;
  if (!qword_DC398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DC398);
  }

  return result;
}

uint64_t sub_1E828(unint64_t *a1)
{

  return sub_1E530(a1, v1, v2, &protocol conformance descriptor for TerminalOntologyNode<A>);
}

uint64_t sub_1E8F4(uint64_t a1, uint64_t a2)
{

  return sub_A3AE4();
}

uint64_t sub_1E918()
{

  return sub_4BF0(v0, v1);
}

uint64_t sub_1E930()
{
}

uint64_t sub_1E948()
{
  type metadata accessor for AppDetecter(0);
  swift_allocObject();
  result = sub_1EF34();
  qword_E0798 = result;
  return result;
}

void sub_1E988()
{
  if (qword_DA8F8 != -1)
  {
    swift_once();
  }

  sub_4B908(v0);
  if (qword_DA8D8 != -1)
  {
    swift_once();
  }

  sub_4B908(v1);
  qword_E07A0 = &off_CF100;
}

void *sub_1EA54()
{
  v1 = v0;
  v2 = sub_A43A4();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = (&v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *(v0 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin11AppDetecter__detectedApps);
  if (v7)
  {
  }

  else
  {
    v53 = OBJC_IVAR____TtC23DailyBriefingFlowPlugin11AppDetecter__detectedApps;
    v57 = v4;
    sub_1F588();
    v51 = "fetched for reqId.";
    v52 = OBJC_IVAR____TtC23DailyBriefingFlowPlugin11AppDetecter_logger;
    sub_810AC(v8 - 17, 0x80000000000AECC0, 0xD000000000000029, 0x80000000000AEC70, v9, v10);
    if (qword_DA9C0 != -1)
    {
LABEL_24:
      swift_once();
    }

    v56 = v3;
    v11 = qword_E0B60;
    v12 = *algn_E0B68;
    v13 = byte_E0B70;
    v14 = qword_E0B78;
    sub_A4384();
    sub_A49B4();
    v47 = v14;
    v49 = v12;
    v50 = v11;
    v48 = v13;
    v54 = v6;
    sub_A4374();
    if (qword_DA898 != -1)
    {
      swift_once();
    }

    v55 = v1;
    v15 = 0;
    v1 = 0;
    v3 = qword_E07A0;
    v16 = qword_E07A0 + 40;
    v17 = *(qword_E07A0 + 16);
    v58 = _swiftEmptyArrayStorage;
    v59 = qword_E07A0;
    v46 = qword_E07A0 + 40;
LABEL_7:
    v6 = (v16 + 16 * v15);
    while (v17 != v15)
    {
      if (v15 >= *(v3 + 16))
      {
        __break(1u);
        goto LABEL_24;
      }

      v19 = *(v6 - 1);
      v18 = *v6;
      v20 = objc_allocWithZone(LSApplicationRecord);
      swift_bridgeObjectRetain_n();
      v21 = sub_1F4AC(v19, v18, 0);
      v22 = v21;
      if (v21)
      {
        v23 = [v21 applicationState];
        v24 = [v23 isInstalled];

        if (v24)
        {
          v25 = v58;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v60 = v25;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_7AC94(0, v25[2] + 1, 1);
            v25 = v60;
          }

          v16 = v46;
          v27 = v25;
          v28 = v25[2];
          v29 = v27[3];
          if (v28 >= v29 >> 1)
          {
            sub_7AC94((v29 > 1), v28 + 1, 1);
            v27 = v60;
          }

          ++v15;
          v27[2] = v28 + 1;
          v58 = v27;
          v30 = &v27[2 * v28];
          v30[4] = v19;
          v30[5] = v18;
          v3 = v59;
          goto LABEL_7;
        }

        v3 = v59;
      }

      v6 += 2;
      ++v15;
    }

    v31 = sub_7B510(v58);
    v32 = v55;
    v33 = v53;
    *(v55 + v53) = v31;

    sub_A49A4();
    v34 = v54;
    sub_A4364();
    v60 = 0;
    v61 = 0xE000000000000000;
    sub_A4B54(27);

    v60 = 0xD000000000000019;
    v61 = 0x80000000000AECE0;
    sub_1EA54();
    v35 = sub_A48C4();
    v37 = v36;

    v62._countAndFlagsBits = v35;
    v62._object = v37;
    sub_A46D4(v62);

    sub_1F588();
    sub_810C4(v38, v39, v40, v41, v42, 0xEC00000073707041);

    v7 = *(v32 + v33);
    if (v7)
    {
      v43 = *(v56 + 8);

      v43(v34, v57);
    }

    else
    {
      (*(v56 + 8))(v34, v57);
      return &_swiftEmptySetSingleton;
    }
  }

  return v7;
}

uint64_t sub_1EF34()
{
  v1 = OBJC_IVAR____TtC23DailyBriefingFlowPlugin11AppDetecter_logger;
  if (qword_DA9D0 != -1)
  {
    swift_once();
  }

  v2 = sub_A43D4();
  v3 = sub_48A4(v2, qword_E0BA0);
  (*(*(v2 - 8) + 16))(v0 + v1, v3, v2);
  v4 = (v0 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin11AppDetecter_requestId);
  *v4 = 0;
  v4[1] = 0;
  *(v0 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin11AppDetecter__detectedApps) = 0;
  return v0;
}

void sub_1EFFC(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin11AppDetecter_requestId);
  v6 = *(v2 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin11AppDetecter_requestId + 8);
  if (v6 && a2 && (*v5 == a1 ? (v7 = v6 == a2) : (v7 = 0), v7 || (sub_A4E44() & 1) != 0))
  {
    sub_810C4(0xD000000000000032, 0x80000000000AEC30, 0xD000000000000029, 0x80000000000AEC70, 0xD000000000000018, 0x80000000000AECA0);
  }

  else
  {
    *(v2 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin11AppDetecter__detectedApps) = 0;

    *v5 = a1;
    v5[1] = a2;

    sub_1EA54();
  }
}

uint64_t sub_1F118(uint64_t a1)
{
  v2 = sub_1EA54();
  v3 = v2;
  v4 = v2 + 56;
  v5 = 1 << v2[32];
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(v2 + 7);
  v8 = (v5 + 63) >> 6;

  v10 = 0;
LABEL_5:
  while (v7)
  {
    v11 = v7;
LABEL_11:
    v7 = (v11 - 1) & v11;
    if (*(a1 + 16))
    {
      v22 = v3;
      v13 = (*(v3 + 6) + ((v10 << 10) | (16 * __clz(__rbit64(v11)))));
      v15 = *v13;
      v14 = v13[1];
      sub_A4F14();

      sub_A46A4();
      v16 = sub_A4F44();
      v17 = ~(-1 << *(a1 + 32));
      do
      {
        v18 = v16 & v17;
        if (((*(a1 + 56 + (((v16 & v17) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v16 & v17)) & 1) == 0)
        {

          v3 = v22;
          goto LABEL_5;
        }

        v19 = (*(a1 + 48) + 16 * v18);
        if (*v19 == v15 && v19[1] == v14)
        {
          break;
        }

        v21 = sub_A4E44();
        v16 = v18 + 1;
      }

      while ((v21 & 1) == 0);

      return v15;
    }
  }

  while (1)
  {
    v12 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v12 >= v8)
    {

      return 0;
    }

    v11 = *&v4[8 * v12];
    ++v10;
    if (v11)
    {
      v10 = v12;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1F2D8()
{
  v1 = OBJC_IVAR____TtC23DailyBriefingFlowPlugin11AppDetecter_logger;
  v2 = sub_A43D4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t sub_1F35C()
{
  sub_1F2D8();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

uint64_t type metadata accessor for AppDetecter(uint64_t a1)
{
  result = qword_DC3D8;
  if (!qword_DC3D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1F408(uint64_t a1)
{
  result = sub_A43D4();
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

id sub_1F4AC(uint64_t a1, uint64_t a2, char a3)
{
  v5 = sub_A45C4();

  v10 = 0;
  v6 = [v3 initWithBundleIdentifier:v5 allowPlaceholder:a3 & 1 error:&v10];

  if (v6)
  {
    v7 = v10;
  }

  else
  {
    v8 = v10;
    sub_A2D44();

    swift_willThrow();
  }

  return v6;
}

void sub_1F59C(uint64_t a1)
{
  sub_206C4();
  while (v5)
  {
    v6 = v3;
LABEL_8:
    v7 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    if (*(*(v1 + 56) + (v7 | (v6 << 6))) != 2)
    {
      return;
    }
  }

  while (1)
  {
    v6 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v6 >= v4)
    {
      return;
    }

    v5 = *(v2 + 8 * v6);
    ++v3;
    if (v5)
    {
      v3 = v6;
      goto LABEL_8;
    }
  }

  __break(1u);
}

void sub_1F614(uint64_t a1)
{
  sub_206C4();
  while (v5)
  {
    v6 = v3;
LABEL_8:
    v7 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    if ((*(*(v1 + 56) + (v7 | (v6 << 6))) & 0xFE) != 2)
    {
      return;
    }
  }

  while (1)
  {
    v6 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v6 >= v4)
    {
      return;
    }

    v5 = *(v2 + 8 * v6);
    ++v3;
    if (v5)
    {
      v3 = v6;
      goto LABEL_8;
    }
  }

  __break(1u);
}

void *sub_1F690(uint64_t a1)
{
  v1 = sub_1FA4C(a1);
  v2 = v1[2];
  if (v2)
  {
    v38 = v1[2];
    v39 = _swiftEmptyArrayStorage;
    sub_7ADB8(0, v2, 0);
    v3 = _swiftEmptyArrayStorage;
    v5 = sub_20678(v1);
    v7 = v6;
    v8 = v38;
    v9 = 0;
    v10 = v1 + 8;
    v11 = 1;
    v12 = -2;
    if (v5 < 0)
    {
LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
LABEL_39:
      __break(1u);
LABEL_40:
      __break(1u);
LABEL_41:
      __break(1u);

      __break(1u);
      JUMPOUT(0x1FA38);
    }

    while (1)
    {
      if (v5 >= v11 << *(v1 + 32))
      {
        goto LABEL_36;
      }

      v13 = v5 >> 6;
      v14 = v11 << v5;
      if ((v10[v5 >> 6] & (v11 << v5)) == 0)
      {
        goto LABEL_37;
      }

      if (*(v1 + 9) != v7)
      {
        goto LABEL_38;
      }

      v15 = *(v1[6] + v5);
      v39 = v3;
      v17 = v3[2];
      v16 = v3[3];
      if (v17 >= v16 >> 1)
      {
        sub_7ADB8(v16 > 1, v17 + 1, 1);
        sub_206FC();
        v3 = v39;
      }

      v3[2] = v17 + 1;
      *(v3 + v17 + 32) = v15;
      v18 = v11 << *(v1 + 32);
      if (v5 >= v18)
      {
        goto LABEL_39;
      }

      v19 = v10[v13];
      if ((v19 & v14) == 0)
      {
        goto LABEL_40;
      }

      if (*(v1 + 9) != v7)
      {
        goto LABEL_41;
      }

      v20 = v19 & (v12 << (v5 & 0x3F));
      if (v20)
      {
        v18 = __clz(__rbit64(v20)) | v5 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v21 = v13 << 6;
        v22 = v13 + 1;
        v23 = &v1[v13 + 9];
        while (v22 < (v18 + 63) >> 6)
        {
          v25 = *v23++;
          v24 = v25;
          v21 += 64;
          ++v22;
          if (v25)
          {
            sub_206B8(v5, v7, v4 & 1);
            sub_206FC();
            v18 = __clz(__rbit64(v24)) + v21;
            goto LABEL_18;
          }
        }

        sub_206B8(v5, v7, v4 & 1);
        sub_206FC();
      }

LABEL_18:
      if (++v9 == v8)
      {
        break;
      }

      v4 = 0;
      v7 = *(v1 + 9);
      v5 = v18;
      if (v18 < 0)
      {
        goto LABEL_36;
      }
    }
  }

  else
  {

    v3 = _swiftEmptyArrayStorage;
  }

  v39 = v3;

  sub_1FD18(&v39);

  v26 = v39;
  v27 = v39[2];
  if (v27)
  {
    v39 = _swiftEmptyArrayStorage;
    sub_7AC94(0, v27, 0);
    v28 = 32;
    v29 = v39;
    sub_20720();
    sub_2070C();
    do
    {
      v32 = 0xE800000000000000;
      v33 = 0x7261646E656C6163;
      switch(*(v26 + v28))
      {
        case 1:
          v32 = 0xE900000000000073;
          v33 = v30;
          break;
        case 2:
          v32 = 0xE700000000000000;
          v33 = v31;
          break;
        case 3:
          v32 = 0xE400000000000000;
          v33 = 1936744813;
          break;
        case 4:
          v32 = 0xE700000000000000;
          v33 = 0x74736163646F70;
          break;
        default:
          break;
      }

      v39 = v29;
      v35 = v29[2];
      v34 = v29[3];
      if (v35 >= v34 >> 1)
      {
        sub_7AC94((v34 > 1), v35 + 1, 1);
        sub_2070C();
        sub_20720();
        v29 = v39;
      }

      v29[2] = v35 + 1;
      v36 = &v29[2 * v35];
      v36[4] = v33;
      v36[5] = v32;
      ++v28;
      --v27;
    }

    while (v27);
  }

  else
  {

    return _swiftEmptyArrayStorage;
  }

  return v29;
}

unint64_t *sub_1FA4C(uint64_t a1)
{
  v2 = a1;
  v3 = *(a1 + 32);
  v4 = ((1 << v3) + 63) >> 6;
  if ((v3 & 0x3Fu) > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v8 = swift_slowAlloc();
      v2 = sub_1FCA0(v8, v4, v2);

      return v2;
    }
  }

  __chkstk_darwin(a1);
  v5 = (&v9 - ((8 * v4 + 15) & 0x3FFFFFFFFFFFFFF0));
  sub_92BFC(0, v4, v5);
  v6 = sub_1FBB0(v5, v4, v2);
  if (!v1)
  {
    return v6;
  }

  swift_willThrow();
  return v2;
}

unint64_t *sub_1FBB0(unint64_t *result, uint64_t a2, uint64_t a3)
{
  v4 = 0;
  v5 = 0;
  v6 = 1 << *(a3 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a3 + 64);
  v9 = (v6 + 63) >> 6;
  while (v8)
  {
    v10 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    v11 = v10 | (v5 << 6);
LABEL_11:
    if ((*(*(a3 + 56) + v11) & 0xFE) == 2)
    {
      *(result + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      if (__OFADD__(v4++, 1))
      {
        __break(1u);
        return sub_92F24(result, a2, v4, a3);
      }
    }
  }

  v12 = v5;
  while (1)
  {
    v5 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v5 >= v9)
    {
      return sub_92F24(result, a2, v4, a3);
    }

    v13 = *(a3 + 64 + 8 * v5);
    ++v12;
    if (v13)
    {
      v8 = (v13 - 1) & v13;
      v11 = __clz(__rbit64(v13)) | (v5 << 6);
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

unint64_t *sub_1FCA0(unint64_t *result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v5 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    v6 = sub_1FBB0(v5, a2, a3);

    return v6;
  }

  return result;
}

Swift::Int sub_1FD18(uint64_t *a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_29CD0(v2);
  }

  v3 = v2[2];
  v5[0] = (v2 + 4);
  v5[1] = v3;
  result = sub_1FD84(v5);
  *a1 = v2;
  return result;
}

Swift::Int sub_1FD84(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_A4E14(v2);
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = _swiftEmptyArrayStorage;
      }

      else
      {
        v6 = sub_A4794();
        v6[2] = v5;
      }

      v7[0] = (v6 + 4);
      v7[1] = v5;
      sub_1FEEC(v7, v8, a1, v4);
      v6[2] = 0;
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
    return sub_1FE78(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1FE78(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = (*a4 + a3);
    v6 = result - a3;
    while (2)
    {
      v7 = *(v4 + a3);
      v8 = qword_A80E0[v7];
      v9 = v6;
      v10 = v5;
      do
      {
        v11 = *(v10 - 1);
        if (v8 >= qword_A80E0[v11])
        {
          break;
        }

        if (!v4)
        {
          __break(1u);
          return result;
        }

        *v10 = v11;
        *--v10 = v7;
      }

      while (!__CFADD__(v9++, 1));
      ++a3;
      ++v5;
      --v6;
      if (a3 != a2)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

void sub_1FEEC(char **result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v77 = _swiftEmptyArrayStorage;
  v5 = a3[1];
  if (v5 >= 1)
  {
    v6 = 0;
    v7 = _swiftEmptyArrayStorage;
    v72 = a4;
    while (1)
    {
      v8 = v6 + 1;
      if (v6 + 1 < v5)
      {
        v9 = qword_A80E0[*(*a3 + v8)];
        v10 = *(*a3 + v8);
        v11 = qword_A80E0[*(*a3 + v6)];
        v12 = v6 + 2;
        if (v5 <= v6 + 2)
        {
          v8 = v6 + 2;
        }

        else
        {
          v8 = v5;
        }

        while (v12 < v5)
        {
          v13 = *(*a3 + v12);
          v14 = (v9 < v11) ^ (qword_A80E0[v13] >= qword_A80E0[v10]);
          ++v12;
          v10 = v13;
          if ((v14 & 1) == 0)
          {
            v8 = v12 - 1;
            break;
          }
        }

        if (v9 < v11)
        {
          if (v8 < v6)
          {
            goto LABEL_108;
          }

          if (v6 < v8)
          {
            v15 = v8 - 1;
            v16 = v6;
            do
            {
              if (v16 != v15)
              {
                v17 = *a3;
                if (!*a3)
                {
                  goto LABEL_113;
                }

                v18 = *(v17 + v16);
                *(v17 + v16) = *(v17 + v15);
                *(v17 + v15) = v18;
              }
            }

            while (++v16 < v15--);
            v5 = a3[1];
          }
        }
      }

      if (v8 < v5)
      {
        if (__OFSUB__(v8, v6))
        {
          goto LABEL_107;
        }

        if (v8 - v6 < a4)
        {
          if (__OFADD__(v6, a4))
          {
            goto LABEL_109;
          }

          if (v6 + a4 < v5)
          {
            v5 = v6 + a4;
          }

          if (v5 < v6)
          {
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
            return;
          }

          if (v8 != v5)
          {
            v20 = *a3;
            v21 = (*a3 + v8);
            v22 = v6 - v8;
            do
            {
              v23 = *(v20 + v8);
              v24 = qword_A80E0[v23];
              v25 = v22;
              v26 = v21;
              do
              {
                v27 = *(v26 - 1);
                if (v24 >= qword_A80E0[v27])
                {
                  break;
                }

                if (!v20)
                {
                  goto LABEL_111;
                }

                *v26 = v27;
                *--v26 = v23;
              }

              while (!__CFADD__(v25++, 1));
              ++v8;
              ++v21;
              --v22;
            }

            while (v8 != v5);
            v8 = v5;
          }
        }
      }

      if (v8 < v6)
      {
        goto LABEL_106;
      }

      v74 = v8;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_551BC();
        v7 = v70;
      }

      v29 = v7[2];
      v30 = v29 + 1;
      if (v29 >= v7[3] >> 1)
      {
        sub_551BC();
        v7 = v71;
      }

      v7[2] = v30;
      v31 = v7 + 4;
      v32 = &v7[2 * v29 + 4];
      *v32 = v6;
      v32[1] = v74;
      __dst = *result;
      if (!*result)
      {
        goto LABEL_114;
      }

      if (v29)
      {
        while (1)
        {
          v33 = v30 - 1;
          v34 = &v31[2 * v30 - 2];
          v35 = &v7[2 * v30];
          if (v30 >= 4)
          {
            break;
          }

          if (v30 == 3)
          {
            v36 = v7[4];
            v37 = v7[5];
            v46 = __OFSUB__(v37, v36);
            v38 = v37 - v36;
            v39 = v46;
LABEL_55:
            if (v39)
            {
              goto LABEL_96;
            }

            v51 = *v35;
            v50 = v35[1];
            v52 = __OFSUB__(v50, v51);
            v53 = v50 - v51;
            v54 = v52;
            if (v52)
            {
              goto LABEL_99;
            }

            v55 = v34[1];
            v56 = v55 - *v34;
            if (__OFSUB__(v55, *v34))
            {
              goto LABEL_102;
            }

            if (__OFADD__(v53, v56))
            {
              goto LABEL_104;
            }

            if (v53 + v56 >= v38)
            {
              if (v38 < v56)
              {
                v33 = v30 - 2;
              }

              goto LABEL_77;
            }

            goto LABEL_70;
          }

          if (v30 < 2)
          {
            goto LABEL_98;
          }

          v58 = *v35;
          v57 = v35[1];
          v46 = __OFSUB__(v57, v58);
          v53 = v57 - v58;
          v54 = v46;
LABEL_70:
          if (v54)
          {
            goto LABEL_101;
          }

          v60 = *v34;
          v59 = v34[1];
          v46 = __OFSUB__(v59, v60);
          v61 = v59 - v60;
          if (v46)
          {
            goto LABEL_103;
          }

          if (v61 < v53)
          {
            goto LABEL_84;
          }

LABEL_77:
          if (v33 - 1 >= v30)
          {
            __break(1u);
LABEL_91:
            __break(1u);
LABEL_92:
            __break(1u);
LABEL_93:
            __break(1u);
LABEL_94:
            __break(1u);
LABEL_95:
            __break(1u);
LABEL_96:
            __break(1u);
LABEL_97:
            __break(1u);
LABEL_98:
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
            goto LABEL_110;
          }

          if (!*a3)
          {
            goto LABEL_112;
          }

          v65 = &v31[2 * v33 - 2];
          v66 = *v65;
          v67 = &v31[2 * v33];
          v68 = v67[1];
          sub_204D4((*a3 + *v65), (*a3 + *v67), (*a3 + v68), __dst);
          if (v4)
          {
            goto LABEL_89;
          }

          if (v68 < v66)
          {
            goto LABEL_91;
          }

          v69 = v7[2];
          if (v33 > v69)
          {
            goto LABEL_92;
          }

          *v65 = v66;
          v65[1] = v68;
          if (v33 >= v69)
          {
            goto LABEL_93;
          }

          v30 = v69 - 1;
          memmove(&v31[2 * v33], v67 + 2, 16 * (v69 - 1 - v33));
          v7[2] = v69 - 1;
          if (v69 <= 2)
          {
            goto LABEL_84;
          }
        }

        v40 = &v31[2 * v30];
        v41 = *(v40 - 8);
        v42 = *(v40 - 7);
        v46 = __OFSUB__(v42, v41);
        v43 = v42 - v41;
        if (v46)
        {
          goto LABEL_94;
        }

        v45 = *(v40 - 6);
        v44 = *(v40 - 5);
        v46 = __OFSUB__(v44, v45);
        v38 = v44 - v45;
        v39 = v46;
        if (v46)
        {
          goto LABEL_95;
        }

        v47 = v35[1];
        v48 = v47 - *v35;
        if (__OFSUB__(v47, *v35))
        {
          goto LABEL_97;
        }

        v46 = __OFADD__(v38, v48);
        v49 = v38 + v48;
        if (v46)
        {
          goto LABEL_100;
        }

        if (v49 >= v43)
        {
          v63 = *v34;
          v62 = v34[1];
          v46 = __OFSUB__(v62, v63);
          v64 = v62 - v63;
          if (v46)
          {
            goto LABEL_105;
          }

          if (v38 < v64)
          {
            v33 = v30 - 2;
          }

          goto LABEL_77;
        }

        goto LABEL_55;
      }

LABEL_84:
      v5 = a3[1];
      v6 = v74;
      a4 = v72;
      if (v74 >= v5)
      {
        v77 = v7;
        break;
      }
    }
  }

  if (!*result)
  {
    goto LABEL_115;
  }

  sub_203A8(&v77, *result, a3);
LABEL_89:
}

uint64_t sub_203A8(uint64_t *a1, char *a2, void *a3)
{
  v4 = a1;
  v5 = *a1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_14:
    result = sub_29650(v5);
    v5 = result;
  }

  v14 = v4;
  *v4 = v5;
  v7 = (v5 + 16);
  for (i = *(v5 + 16); ; *v7 = i)
  {
    v4 = (i - 2);
    if (i < 2)
    {
LABEL_10:
      *v14 = v5;
      return 1;
    }

    if (!*a3)
    {
      break;
    }

    v9 = (v5 + 16 * i);
    v10 = *v9;
    v11 = &v7[2 * i];
    v12 = v11[1];
    sub_204D4((*a3 + *v9), (*a3 + *v11), (*a3 + v12), a2);
    if (v3)
    {
      goto LABEL_10;
    }

    if (v12 < v10)
    {
      __break(1u);
LABEL_12:
      __break(1u);
LABEL_13:
      __break(1u);
      goto LABEL_14;
    }

    if (v4 >= *v7)
    {
      goto LABEL_12;
    }

    *v9 = v10;
    v9[1] = v12;
    v13 = *v7 - i;
    if (*v7 < i)
    {
      goto LABEL_13;
    }

    i = *v7 - 1;
    result = memmove(v11, v11 + 2, 16 * v13);
  }

  *v14 = v5;
  __break(1u);
  return result;
}

uint64_t sub_204D4(char *__src, char *a2, char *a3, char *__dst)
{
  v4 = __dst;
  v5 = a3;
  v6 = a2;
  v7 = __src;
  v8 = a2 - __src;
  v9 = a3 - a2;
  if (a2 - __src < a3 - a2)
  {
    sub_55C78(__src, a2 - __src, __dst);
    v10 = &v4[v8];
    while (1)
    {
      if (v4 >= v10 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_43;
      }

      v12 = *v4;
      if (qword_A80E0[*v6] < qword_A80E0[v12])
      {
        break;
      }

      v15 = v4 + 1;
      if (v7 < v4 || v7 >= v15)
      {
        goto LABEL_19;
      }

LABEL_20:
      ++v7;
      v4 = v15;
    }

    if (v7 >= v6 && v7 < v6 + 1)
    {
      ++v6;
      v15 = v4;
      goto LABEL_20;
    }

    LOBYTE(v12) = *v6++;
    v15 = v4;
LABEL_19:
    *v7 = v12;
    goto LABEL_20;
  }

  sub_55C78(a2, a3 - a2, __dst);
  v10 = &v4[v9];
LABEL_22:
  v16 = v6 - 1;
  --v5;
  while (v10 > v4 && v6 > v7)
  {
    v18 = *(v10 - 1);
    v19 = *v16;
    if (qword_A80E0[v18] < qword_A80E0[v19])
    {
      v21 = v5 + 1 < v6 || v5 >= v6;
      --v6;
      if (v21)
      {
        *v5 = v19;
        v6 = v16;
      }

      goto LABEL_22;
    }

    if ((v5 + 1) < v10 || v5 >= v10)
    {
      *v5 = v18;
    }

    --v5;
    --v10;
  }

LABEL_43:
  if (v6 != v4 || v6 >= v10)
  {
    memmove(v6, v4, v10 - v4);
  }

  return 1;
}

uint64_t sub_206B8(uint64_t result, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return v3;
}

uint64_t sub_20734()
{
  if (sub_A38C4() == 0xD000000000000039 && 0x80000000000AED00 == v0)
  {

    goto LABEL_10;
  }

  v2 = sub_A4E44();

  if (v2)
  {
LABEL_10:
    v5 = sub_A38D4();
    v4 = sub_20960(v5);
    goto LABEL_11;
  }

  if (qword_DA9D0 != -1)
  {
    swift_once();
  }

  v3 = sub_A43D4();
  sub_48A4(v3, qword_E0BA0);
  sub_A4B54(52);
  v7._countAndFlagsBits = 0xD000000000000032;
  v7._object = 0x80000000000AED40;
  sub_A46D4(v7);
  v8._countAndFlagsBits = sub_A38C4();
  sub_A46D4(v8);

  sub_81094(0, 0xE000000000000000, 0xD000000000000036, 0x80000000000AED80, 0x293A5F286D6F7266, 0xE800000000000000);
  v4 = 2;
LABEL_11:

  return v4;
}

uint64_t sub_208C0(uint64_t a1, void *a2)
{
  v7._countAndFlagsBits = a1;
  v3._rawValue = &off_CEF48;
  v7._object = a2;
  v4 = sub_A4CE4(v3, v7);

  if (v4 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (v4)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_20914(char a1)
{
  if (a1)
  {
    return 0x656E696C636544;
  }

  else
  {
    return 0x6D7269666E6F43;
  }
}

uint64_t sub_20960(uint64_t a1)
{
  v2 = sub_A43D4();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a1)
  {
    v15 = 0u;
    v16 = 0u;
    goto LABEL_9;
  }

  sub_9C7E4(0x72506E6F74747562, 0xED00006465737365, a1, &v15);
  if (!*(&v16 + 1))
  {
LABEL_9:
    sub_5000(&v15);
    goto LABEL_10;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_10:
    if (qword_DA9D0 != -1)
    {
      swift_once();
    }

    v9 = sub_48A4(v2, qword_E0BA0);
    (*(v3 + 16))(v5, v9, v2);
    *&v15 = 0;
    *(&v15 + 1) = 0xE000000000000000;
    sub_A4B54(63);
    v19._countAndFlagsBits = 0xD00000000000003DLL;
    v19._object = 0x80000000000AEDC0;
    sub_A46D4(v19);
    if (a1)
    {
      v10._countAndFlagsBits = sub_A4534();
      object = v10._object;
    }

    else
    {
      object = 0xE300000000000000;
      v10._countAndFlagsBits = 7104878;
    }

    v10._object = object;
    sub_A46D4(v10);

    sub_81094(v15, *(&v15 + 1), 0xD000000000000036, 0x80000000000AED80, 0xD00000000000001BLL, 0x80000000000AEE00);

    (*(v3 + 8))(v5, v2);
    return 2;
  }

  v7 = v14[0];
  v6 = v14[1];

  v8 = sub_208C0(v7, v6);
  if (v8 != 2)
  {
    v12 = v8;

    return v12;
  }

  if (qword_DA9D0 != -1)
  {
    swift_once();
  }

  sub_48A4(v2, qword_E0BA0);
  *&v15 = 0;
  *(&v15 + 1) = 0xE000000000000000;
  sub_A4B54(62);
  v17._countAndFlagsBits = 0xD00000000000003CLL;
  v17._object = 0x80000000000AEE20;
  sub_A46D4(v17);
  v18._countAndFlagsBits = v7;
  v18._object = v6;
  sub_A46D4(v18);

  sub_81094(v15, *(&v15 + 1), 0xD000000000000036, 0x80000000000AED80, 0xD00000000000001BLL, 0x80000000000AEE00);

  return 2;
}

uint64_t getEnumTagSinglePayload for CATProvider(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_BYTE *storeEnumTagSinglePayload for CATProvider(_BYTE *result, int a2, int a3)
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
        return result;
      case 2:
        *result = a2;
        return result;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        return result;
      default:
        return result;
    }
  }

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
      JUMPOUT(0x20DECLL);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_20E28()
{
  result = qword_DC4C8;
  if (!qword_DC4C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DC4C8);
  }

  return result;
}

Swift::Int sub_20EA4()
{
  sub_A4F14();
  sub_A4F24(0);
  return sub_A4F44();
}

Swift::Int sub_20EF0(uint64_t a1)
{
  sub_A4F14();
  sub_A4F24(0);
  return sub_A4F44();
}

BOOL sub_20F74(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_CF460;
  v6._object = a2;
  v4 = sub_A4CE4(v3, v6);

  return v4 != 0;
}

BOOL sub_20FCC@<W0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_20F74(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t sub_21000@<X0>(void *a1@<X8>)
{
  result = sub_20F58();
  *a1 = 0xD000000000000010;
  a1[1] = v3;
  return result;
}

_BYTE *storeEnumTagSinglePayload for RemindersDialogs(_BYTE *result, int a2, int a3)
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
        return result;
      case 2:
        *result = a2;
        return result;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        return result;
      default:
        return result;
    }
  }

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
      JUMPOUT(0x210ECLL);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_21128()
{
  result = qword_DC4D0;
  if (!qword_DC4D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DC4D0);
  }

  return result;
}

uint64_t sub_2117C(uint64_t a1, uint64_t *a2)
{
  v5 = type metadata accessor for CalendarEvent(0);
  __chkstk_darwin(v5);
  v7 = &v13[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = sub_4BF0(&qword_DB960, &unk_A6C00);
  __chkstk_darwin(v8 - 8);
  v10 = &v13[-v9];
  sub_24FA4(a1, &v13[-v9], &qword_DB960, &unk_A6C00);
  v11 = sub_CF2C(v10, 1, v5);
  if (v11 == 1)
  {
    return v11 == 1;
  }

  sub_2472C(v10, v7, type metadata accessor for CalendarEvent);
  sub_24258(v7, a2);
  if (!v2)
  {
    sub_24788(v7, type metadata accessor for CalendarEvent);
    return v11 == 1;
  }

  result = sub_24788(v7, type metadata accessor for CalendarEvent);
  __break(1u);
  return result;
}

uint64_t sub_21318(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (!v2)
  {
    return 1;
  }

  v3 = *(a1 + 16);
  if (!v3)
  {
    return 1;
  }

  if (v2 >= v3)
  {
    v4 = a1;
  }

  else
  {
    v4 = a2;
  }

  v5 = v4 + 56;
  if (v2 >= v3)
  {
    v6 = a2;
  }

  else
  {
    v6 = a1;
  }

  v7 = 1 << *(v4 + 32);
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(v4 + 56);
  v10 = (v7 + 63) >> 6;

  v12 = 0;
LABEL_13:
  while (v9)
  {
    v13 = v9;
LABEL_19:
    v9 = (v13 - 1) & v13;
    if (*(v6 + 16))
    {
      v24 = v4;
      v15 = (*(v4 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v13)))));
      v17 = *v15;
      v16 = v15[1];
      sub_A4F14();

      sub_A46A4();
      v18 = sub_A4F44();
      v19 = ~(-1 << *(v6 + 32));
      do
      {
        v20 = v18 & v19;
        if (((*(v6 + 56 + (((v18 & v19) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v18 & v19)) & 1) == 0)
        {

          v4 = v24;
          goto LABEL_13;
        }

        v21 = (*(v6 + 48) + 16 * v20);
        if (*v21 == v17 && v21[1] == v16)
        {
          break;
        }

        v23 = sub_A4E44();
        v18 = v20 + 1;
      }

      while ((v23 & 1) == 0);

      return 0;
    }
  }

  while (1)
  {
    v14 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v14 >= v10)
    {

      return 1;
    }

    v13 = *(v5 + 8 * v14);
    ++v12;
    if (v13)
    {
      v12 = v14;
      goto LABEL_19;
    }
  }

  __break(1u);
  return result;
}

void sub_214F0(uint64_t a1@<X8>)
{
  *(a1 + 24) = &type metadata for SupportedFeatures;
  *(a1 + 32) = &off_D2110;
  *a1 = 0;
}

uint64_t sub_2150C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = OBJC_IVAR____TtC23DailyBriefingFlowPlugin12CalendarSpec_eventDetails_Value;
  swift_beginAccess();
  return sub_24FA4(a1 + v4, a2, &qword_DC730, &qword_A8328);
}

void sub_21580(uint64_t a1)
{
  sub_25714();
  v3 = v2;
  v4 = sub_4BF0(&qword_DC730, &qword_A8328);
  v5 = sub_5940(v4);
  v7 = v6;
  __chkstk_darwin(v5);
  v9 = v17 - v8;
  v10 = *(v1 + 80);
  sub_24FA4(v3, v17 - v8, &qword_DC730, &qword_A8328);
  v11 = (*(v7 + 80) + 24) & ~*(v7 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = v1;
  sub_252EC(v9, v12 + v11);
  v13 = swift_allocObject();
  *(v13 + 16) = sub_2535C;
  *(v13 + 24) = v12;
  v17[4] = sub_253D8;
  v17[5] = v13;
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 1107296256;
  v17[2] = sub_50578;
  v17[3] = &unk_D10E0;
  v14 = _Block_copy(v17);

  dispatch_sync(v10, v14);
  _Block_release(v14);
  v15 = sub_2558C();
  sub_11E34(v15, v16, &qword_A8328);
  LOBYTE(v3) = swift_isEscapingClosureAtFileLocation();

  if (v3)
  {
    __break(1u);
  }

  else
  {
    sub_2569C();
  }
}

uint64_t sub_2178C(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC23DailyBriefingFlowPlugin12CalendarSpec_eventDetails_Value;
  swift_beginAccess();
  sub_253F8(a2, a1 + v4);
  return swift_endAccess();
}

void sub_217F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21)
{
  sub_25714();
  v57 = v21;
  v58 = v22;
  v24 = v23;
  v26 = v25;
  v56 = v27;
  v54 = v28;
  v55 = v29;
  v31 = v30;
  v32 = swift_allocObject();
  sub_A7C4(a21, a21[3]);
  sub_AA64();
  __chkstk_darwin(v33);
  sub_AA54();
  v36 = (v35 - v34);
  (*(v37 + 16))(v35 - v34);
  v38 = *v36;
  v39 = type metadata accessor for OfflineStateProvider();
  v60[3] = v39;
  v60[4] = &off_D29E8;
  v60[0] = v38;
  v40 = OBJC_IVAR____TtC23DailyBriefingFlowPlugin12CalendarSpec_logger;
  if (qword_DA9E0 != -1)
  {
    swift_once();
  }

  v41 = sub_A43D4();
  v42 = sub_48A4(v41, qword_E0BD0);
  (*(*(v41 - 8) + 16))(v32 + v40, v42, v41);
  *(v32 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin12CalendarSpec_previousMapEntry) = 0;
  v43 = (v32 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin12CalendarSpec_etaSuggestion);
  *v43 = 0u;
  v43[1] = 0u;
  v43[2] = 0u;
  v43[3] = 0u;
  v44 = OBJC_IVAR____TtC23DailyBriefingFlowPlugin12CalendarSpec_eventDetails_Value;
  v45 = type metadata accessor for CalendarPreprocessingResult(0);
  sub_A924(v32 + v44, 1, 1, v45);
  sub_A760(v26, v32 + 16);
  sub_A760(v24, v32 + 112);
  sub_A760(v60, v59);
  sub_A7C4(v59, v59[3]);
  sub_AA64();
  __chkstk_darwin(v46);
  sub_AA54();
  v49 = (v48 - v47);
  (*(v50 + 16))(v48 - v47);
  v51 = *v49;
  *(v32 + 192) = v39;
  *(v32 + 200) = &off_D29E8;
  *(v32 + 168) = v51;
  v52 = sub_A3584();
  sub_5D78(v52);
  *(v32 + 56) = sub_A3574();
  sub_2505C();
  v53 = swift_allocError();
  sub_761C(v24);
  sub_761C(v26);
  sub_761C(v60);
  *(v32 + 64) = v53;
  *(v32 + 72) = 1;
  *(v32 + 208) = 0;
  *(v32 + 216) = -256;
  *(v32 + 80) = v31;
  *(v32 + 88) = v54;
  *(v32 + 96) = v55;
  *(v32 + 104) = v56;
  *(v32 + 152) = v57;
  *(v32 + 160) = v58;
  sub_761C(v59);
  sub_761C(a21);
  sub_2569C();
}

uint64_t sub_21B24()
{
  sub_5950();
  v1[2] = v0;
  v2 = sub_A2EA4();
  v1[3] = v2;
  sub_5940(v2);
  v1[4] = v3;
  v1[5] = sub_10AAC();
  v4 = sub_AA8C();

  return _swift_task_switch(v4, v5, v6);
}

uint64_t sub_21BC8()
{
  sub_5950();
  if (qword_DA890 != -1)
  {
    swift_once();
  }

  v1 = qword_E0798;
  sub_A2E94();
  v2 = sub_2567C();
  v0[6] = v2;
  *v2 = v0;
  v2[1] = sub_21CA0;
  v3 = v0[5];
  v4 = v0[2];

  return v6(v1, v3, v4);
}

uint64_t sub_21CA0()
{
  sub_25654();
  v2 = v1;
  v4 = v3;
  sub_AAA8();
  v6 = v5[5];
  v7 = v5[4];
  v8 = v5[3];
  v9 = *v0;
  sub_5930();
  *v10 = v9;

  (*(v7 + 8))(v6, v8);

  sub_255F0();

  return v11(v4, v2 & 1);
}

uint64_t sub_21DFC()
{
  sub_5950();
  v1[42] = v0;
  v2 = sub_4BF0(&qword_DB5A8, &unk_A67C0);
  sub_10A88(v2);
  v1[43] = sub_10AAC();
  v3 = sub_4BF0(&qword_DB960, &unk_A6C00);
  sub_10A88(v3);
  v1[44] = swift_task_alloc();
  v1[45] = swift_task_alloc();
  v4 = sub_A2DB4();
  v1[46] = v4;
  sub_5940(v4);
  v1[47] = v5;
  v1[48] = swift_task_alloc();
  v1[49] = swift_task_alloc();
  v1[50] = swift_task_alloc();
  v1[51] = swift_task_alloc();
  v6 = sub_4BF0(&qword_DC748, &qword_A8330);
  sub_10A88(v6);
  v1[52] = sub_10AAC();
  v7 = sub_4BF0(&qword_DC730, &qword_A8328);
  v1[53] = v7;
  sub_10A88(v7);
  v1[54] = sub_10AAC();
  v8 = type metadata accessor for CalendarPreprocessingResult(0);
  v1[55] = v8;
  sub_10A88(v8);
  v1[56] = sub_10AAC();
  v9 = sub_AA8C();

  return _swift_task_switch(v9, v10, v11);
}

uint64_t sub_21FB8()
{
  v2 = v0[54];
  v1 = v0[55];
  sub_25598(0xD000000000000022, "eventDetails_Value");
  sub_A4974();
  sub_109FC(v2, 1, v1);
  if (v3)
  {
    sub_11E34(v0[54], &qword_DC730, &qword_A8328);
    goto LABEL_11;
  }

  v4 = v0[56];
  sub_25498();
  sub_2472C(v5, v4, v6);
  v7 = *v4;
  v8 = v0[56];
  if (!*v4)
  {
    sub_24788(v8, type metadata accessor for CalendarPreprocessingResult);
LABEL_11:
    sub_25598(0xD00000000000001BLL, "getExecutionResult()");
    sub_82E5C();
    if (v16 == 255)
    {
      sub_24824();
      swift_allocError();
      *v17 = 2;
    }

    sub_255F0();
    sub_25660();

    __asm { BRAA            X3, X16 }
  }

  v9 = v4[2];
  v10 = v4[4];
  v11 = *(v8 + 40);
  v12 = *(v8 + 8);
  sub_A924(v0[52], 1, 1, v0[46]);
  if (v11)
  {
    if (v9 == 1)
    {
      v13 = v0[45];
      sub_589D0(v7, v13);
      v14 = type metadata accessor for CalendarEvent(0);
      sub_109FC(v13, 1, v14);
      if (!v3)
      {
        v28 = v0[46];
        sub_11E34(v0[52], &qword_DC748, &qword_A8330);
        v29 = sub_255C4();
        (" execution result.")(v29);
        sub_25564();
        v30 = sub_25634();
        v31(v30);
        v32 = sub_25648();
        (" execution result.")(v32);
        v33 = sub_255E0();
        sub_A924(v33, v34, v35, v28);
        v36 = swift_task_alloc();
        v0[57] = v36;
        *v36 = v0;
        v36[1] = sub_22508;
LABEL_26:
        sub_25660();

        return sub_22E60(v46);
      }

      v15 = v0 + 45;
LABEL_20:
      sub_11E34(*v15, &qword_DB960, &unk_A6C00);
    }
  }

  else if (v10 == 1)
  {
    v20 = v0[44];
    sub_589D0(v12, v20);
    v21 = type metadata accessor for CalendarEvent(0);
    sub_109FC(v20, 1, v21);
    if (!v3)
    {
      v37 = v0[46];
      sub_11E34(v0[52], &qword_DC748, &qword_A8330);
      v38 = sub_255C4();
      (" execution result.")(v38);
      sub_25564();
      v39 = sub_25634();
      v40(v39);
      v41 = sub_25648();
      (" execution result.")(v41);
      v42 = sub_255E0();
      sub_A924(v42, v43, v44, v37);
      v45 = swift_task_alloc();
      v0[58] = v45;
      *v45 = v0;
      v45[1] = sub_226F4;
      goto LABEL_26;
    }

    v15 = v0 + 44;
    goto LABEL_20;
  }

  sub_255FC();
  v22 = type metadata accessor for CalendarTemplatingService(0);
  sub_5D78(v22);
  sub_25744();
  v23 = sub_25618();
  sub_254F8(v23, OBJC_IVAR____TtC23DailyBriefingFlowPlugin12CalendarSpec_etaSuggestion);
  sub_24FA4((v0 + 10), (v0 + 18), &qword_DC738, &qword_AAF90);
  if (qword_DA838 != -1)
  {
    sub_254B0(&qword_DA838);
  }

  v0[61] = qword_E0608;

  v24 = swift_task_alloc();
  v0[62] = v24;
  *v24 = v0;
  sub_254D0(v24);
  sub_25660();

  return sub_44F0(v25);
}

uint64_t sub_22508()
{
  sub_5950();
  sub_AAA8();
  v1 = *v0;
  sub_5930();
  *v2 = v1;

  v3 = sub_AA8C();

  return _swift_task_switch(v3, v4, v5);
}

uint64_t sub_225EC()
{
  sub_AB40();
  (*(v0[47] + 8))(v0[51], v0[46]);
  sub_255FC();
  v1 = type metadata accessor for CalendarTemplatingService(0);
  sub_5D78(v1);
  sub_25744();
  v2 = sub_25618();
  sub_254F8(v2, OBJC_IVAR____TtC23DailyBriefingFlowPlugin12CalendarSpec_etaSuggestion);
  sub_24FA4((v0 + 10), (v0 + 18), &qword_DC738, &qword_AAF90);
  if (qword_DA838 != -1)
  {
    sub_254B0(&qword_DA838);
  }

  v0[61] = qword_E0608;

  v3 = swift_task_alloc();
  v0[62] = v3;
  *v3 = v0;
  v4 = sub_254D0(v3);

  return sub_44F0(v4);
}

uint64_t sub_226F4()
{
  sub_5950();
  sub_AAA8();
  v1 = *v0;
  sub_5930();
  *v2 = v1;

  v3 = sub_AA8C();

  return _swift_task_switch(v3, v4, v5);
}

uint64_t sub_227D8()
{
  sub_AB40();
  (*(v0[47] + 8))(v0[49], v0[46]);
  sub_255FC();
  v1 = type metadata accessor for CalendarTemplatingService(0);
  sub_5D78(v1);
  sub_25744();
  v2 = sub_25618();
  sub_254F8(v2, OBJC_IVAR____TtC23DailyBriefingFlowPlugin12CalendarSpec_etaSuggestion);
  sub_24FA4((v0 + 10), (v0 + 18), &qword_DC738, &qword_AAF90);
  if (qword_DA838 != -1)
  {
    sub_254B0(&qword_DA838);
  }

  v0[61] = qword_E0608;

  v3 = swift_task_alloc();
  v0[62] = v3;
  *v3 = v0;
  v4 = sub_254D0(v3);

  return sub_44F0(v4);
}

uint64_t sub_228E0()
{
  sub_5950();
  sub_AAA8();
  sub_25540();
  *v2 = v1;
  v1[39] = v0;
  v1[40] = v3;
  v1[41] = v4;
  v5 = *v0;
  sub_5930();
  *v6 = v5;
  *(v8 + 504) = v7;

  v9 = sub_AA8C();

  return _swift_task_switch(v9, v10, v11);
}

uint64_t sub_229CC()
{
  sub_25654();
  if (*(v0 + 504))
  {
    sub_247E0();
    v1 = sub_2558C();
    v3 = sub_39278(v1, v2, 1);
  }

  else
  {
    v3 = 0;
  }

  v4 = *(v0 + 480);
  v5 = *(v0 + 416);
  v6 = *(v0 + 336);

  v7 = *(v6 + v4);
  v8 = *(v6 + v4 + 16);
  v9 = *(v6 + v4 + 48);
  *(v0 + 48) = *(v6 + v4 + 32);
  *(v0 + 64) = v9;
  *(v0 + 16) = v7;
  *(v0 + 32) = v8;
  sub_24FA4(v0 + 16, v0 + 208, &qword_DC738, &qword_AAF90);
  v10 = sub_5E24C(v5, v3, v0 + 16);
  sub_11E34(v0 + 16, &qword_DC738, &qword_AAF90);

  sub_23B74(v11, v12);
  v13 = swift_task_alloc();
  *(v0 + 512) = v13;
  *v13 = v0;
  v13[1] = sub_22B28;
  v14 = *(v0 + 448);
  v15 = *(v0 + 344);

  return sub_DA48(v14, v0 + 80, v10 & 1, v15);
}

uint64_t sub_22B28()
{
  sub_AB40();
  sub_AAA8();
  v2 = v1;
  sub_25540();
  *v3 = v2;
  v5 = *(v4 + 344);
  v6 = *v0;
  sub_5930();
  *v7 = v6;
  *(v2 + 520) = v8;
  *(v2 + 528) = v9;

  sub_11E34(v2 + 80, &qword_DC738, &qword_AAF90);

  sub_11E34(v5, &qword_DB5A8, &unk_A67C0);
  v10 = sub_AA8C();

  return _swift_task_switch(v10, v11, v12);
}

uint64_t sub_22C7C()
{
  v1 = *(v0 + 448);
  sub_11E34(*(v0 + 416), &qword_DC748, &qword_A8330);
  sub_25480();
  sub_24788(v1, v2);
  v5 = *(v0 + 528);
  v6 = *(v0 + 520);

  sub_255F0();

  return v3(v6, v5 & 0x1FF);
}

uint64_t sub_22D9C()
{
  sub_7584((v0 + 168), *(v0 + 192));
  if (sub_834E4())
  {
    v1 = "shouldCheckSuggestion()";
    v2 = 0xD000000000000012;
  }

  else
  {
    if (*(v0 + 104) == 1)
    {
      return 1;
    }

    v1 = "oming calendar event";
    v2 = 0xD000000000000015;
  }

  sub_810C4(v2, v1 | 0x8000000000000000, 0xD00000000000002ALL, 0x80000000000AEF30, 0xD000000000000017, 0x80000000000AF0D0);
  return 0;
}

uint64_t sub_22E60(uint64_t a1)
{
  *(v2 + 192) = a1;
  *(v2 + 200) = v1;
  v3 = sub_AA8C();
  return _swift_task_switch(v3, v4, v5);
}

uint64_t sub_22E88()
{
  sub_5950();
  if (sub_22D9C())
  {
    if (qword_DA950 != -1)
    {
      swift_once();
    }

    *(v0 + 208) = qword_E0A08;

    v1 = swift_task_alloc();
    *(v0 + 216) = v1;
    *v1 = v0;
    v1[1] = sub_22F98;

    return sub_7B77C();
  }

  else
  {
    sub_AA9C();

    return v3();
  }
}

uint64_t sub_22F98()
{
  sub_5950();
  sub_AAA8();
  v1 = *v0;
  sub_5930();
  *v2 = v1;

  v3 = sub_AA8C();

  return _swift_task_switch(v3, v4, v5);
}

uint64_t sub_23098()
{
  v1 = *(v0 + 32);
  if (v1)
  {
    v2 = *(v0 + 72);
    v19 = *(v0 + 16);
    v20 = *(v0 + 40);
    v21 = *(v0 + 56);
    if (*(v0 + 64) == 3 && (*(v0 + 144) = sub_A2D94(), *(v0 + 152) = v3, sub_10760(), v4 = sub_A4A74(), v6 = v5, , v6) && (*(v0 + 160) = v4, *(v0 + 168) = v6, v7 = [v2 uniqueIdentifier], v8 = sub_A45F4(), v10 = v9, v7, *(v0 + 176) = v8, *(v0 + 184) = v10, LOBYTE(v7) = sub_A4A94(), , , (v7 & 1) != 0))
    {
      sub_25514(0xD000000000000024);
      if (qword_DAA68 != -1)
      {
        swift_once();
      }

      v11 = *(v0 + 200);
      sub_7A124(0, qword_E0DB8, unk_E0DC0, byte_E0DC8, qword_E0DD0);
      v12 = v11 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin12CalendarSpec_etaSuggestion;
      v13 = *(v11 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin12CalendarSpec_etaSuggestion + 48);
      v14 = *(v11 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin12CalendarSpec_etaSuggestion);
      v15 = *(v11 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin12CalendarSpec_etaSuggestion + 16);
      *(v0 + 112) = *(v11 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin12CalendarSpec_etaSuggestion + 32);
      *(v0 + 128) = v13;
      *(v0 + 80) = v14;
      *(v0 + 96) = v15;
      *v12 = v19;
      *(v12 + 16) = v1;
      *(v12 + 24) = v20;
      *(v12 + 40) = v21;
      *(v12 + 48) = 3;
      *(v12 + 56) = v2;
      v16 = v0 + 80;
    }

    else
    {
      sub_25514(0xD000000000000031);
      v16 = v0 + 16;
    }

    sub_11E34(v16, &qword_DC738, &qword_AAF90);
  }

  else
  {
    sub_25514(0xD000000000000018);
  }

  sub_AA9C();

  return v17();
}

uint64_t sub_23350()
{
  sub_5950();
  v1[13] = v0;
  v2 = sub_4BF0(&qword_DC730, &qword_A8328);
  v1[14] = v2;
  sub_10A88(v2);
  v1[15] = sub_10AAC();
  v3 = type metadata accessor for CalendarPreprocessingResult(0);
  v1[16] = v3;
  sub_10A88(v3);
  v1[17] = sub_10AAC();
  v4 = sub_AA8C();

  return _swift_task_switch(v4, v5, v6);
}

uint64_t sub_233FC()
{
  sub_25654();
  v2 = v0[15];
  v1 = v0[16];
  sub_A4974();
  sub_109FC(v2, 1, v1);
  if (v3)
  {
    sub_11E34(v0[15], &qword_DC730, &qword_A8328);
    sub_2572C();

    sub_AA9C();

    return v4();
  }

  else
  {
    v7 = v0[16];
    v6 = v0[17];
    v8 = v0[13];
    sub_25498();
    sub_2472C(v9, v6, v10);
    v0[18] = *(v8 + 152);
    v11 = *(v7 + 24);
    v12 = sub_2567C();
    v0[19] = v12;
    *v12 = v0;
    v12[1] = sub_23560;

    return v13(v6 + v11, 0);
  }
}

uint64_t sub_23560()
{
  sub_5950();
  sub_AAA8();
  v1 = *v0;
  sub_5930();
  *v2 = v1;

  v3 = sub_AA8C();

  return _swift_task_switch(v3, v4, v5);
}

uint64_t sub_23644()
{
  sub_AB40();
  v1 = (*(v0 + 104) + OBJC_IVAR____TtC23DailyBriefingFlowPlugin12CalendarSpec_etaSuggestion);
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[1];
  *(v0 + 16) = *v1;
  *(v0 + 32) = v4;
  *(v0 + 48) = v2;
  *(v0 + 64) = v3;
  v5 = *(v0 + 32);
  v6 = *(v0 + 72);
  *(v0 + 160) = v6;
  if (v5)
  {
    v7 = qword_DA838;

    v8 = v6;
    if (v7 != -1)
    {
      sub_254B0(&qword_DA838);
    }

    *(v0 + 168) = qword_E0608;

    v9 = swift_task_alloc();
    *(v0 + 176) = v9;
    *v9 = v0;
    v9[1] = sub_2379C;

    return sub_44F0(4);
  }

  else
  {
    sub_25480();
    sub_24788(v11, v12);
    sub_2572C();

    sub_AA9C();

    return v13();
  }
}

uint64_t sub_2379C()
{
  sub_5950();
  sub_AAA8();
  sub_25540();
  *v2 = v1;
  v1[10] = v0;
  v1[11] = v3;
  v1[12] = v4;
  v5 = *v0;
  sub_5930();
  *v6 = v5;
  *(v8 + 184) = v7;

  v9 = sub_AA8C();

  return _swift_task_switch(v9, v10, v11);
}

uint64_t sub_23888()
{
  sub_AB40();
  v1 = *(v0 + 184);
  if (v1)
  {
    sub_247E0();
    v2 = sub_2558C();
    v1 = sub_39278(v2, v3, 1);
  }

  *(v0 + 192) = v1;
  sub_392E4(*(v0 + 160));
  *(v0 + 200) = v4;
  if (v4)
  {
    v5 = swift_task_alloc();
    *(v0 + 208) = v5;
    *v5 = v0;
    v5[1] = sub_239EC;

    return sub_39B8();
  }

  else
  {

    sub_11E34(v0 + 16, &qword_DC738, &qword_AAF90);
    sub_25480();
    sub_24788(v7, v8);
    sub_2572C();

    sub_AA9C();

    return v9();
  }
}

uint64_t sub_239EC()
{
  sub_5950();
  sub_AAA8();
  v1 = *v0;
  sub_5930();
  *v2 = v1;

  v3 = sub_AA8C();

  return _swift_task_switch(v3, v4, v5);
}

uint64_t sub_23AEC()
{
  sub_5950();

  sub_11E34(v0 + 16, &qword_DC738, &qword_AAF90);
  sub_25480();
  sub_24788(v1, v2);
  sub_2572C();

  sub_AA9C();

  return v3();
}

void sub_23B74(uint64_t a1, uint64_t a2)
{
  sub_25714();
  v84 = v3;
  sub_A2ED4();
  sub_AA64();
  v80 = v5;
  v81 = v4;
  __chkstk_darwin(v4);
  sub_AA54();
  v79 = v7 - v6;
  v8 = sub_4BF0(&qword_DB960, &unk_A6C00);
  v9 = sub_10A88(v8);
  __chkstk_darwin(v9);
  v77 = &v72 - v10;
  v11 = sub_4BF0(&qword_DB958, qword_A6CE0);
  v12 = sub_10A88(v11);
  v13 = __chkstk_darwin(v12);
  v78 = &v72 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v16 = (&v72 - v15);
  v17 = sub_4BF0(&qword_DB5A8, &unk_A67C0);
  v18 = sub_10A88(v17);
  __chkstk_darwin(v18);
  v20 = &v72 - v19;
  v85 = sub_A3744();
  sub_AA64();
  v22 = v21;
  __chkstk_darwin(v23);
  sub_AA54();
  v82 = v25 - v24;
  sub_4BF0(&qword_DC730, &qword_A8328);
  sub_7A14();
  __chkstk_darwin(v26);
  v28 = &v72 - v27;
  v29 = type metadata accessor for CalendarPreprocessingResult(0);
  sub_7A14();
  __chkstk_darwin(v30);
  sub_AA54();
  v33 = (v32 - v31);
  v83 = v2;
  sub_A4974();
  sub_109FC(v28, 1, v29);
  if (v43)
  {
    sub_11E34(v28, &qword_DC730, &qword_A8328);
LABEL_9:
    v36 = v85;
    goto LABEL_10;
  }

  sub_25498();
  sub_2472C(v28, v33, v34);
  v35 = *v33;
  if (!*v33)
  {
    sub_25480();
    sub_24788(v33, v38);
    goto LABEL_9;
  }

  sub_82D48(v20);
  v36 = v85;
  sub_109FC(v20, 1, v85);
  if (v43)
  {
    sub_25480();
    sub_24788(v33, v37);
    sub_11E34(v20, &qword_DB5A8, &unk_A67C0);
LABEL_10:
    sub_A924(v84, 1, 1, v36);
    goto LABEL_11;
  }

  v75 = *(v22 + 32);
  v76 = v22 + 32;
  v75(v82, v20, v36);
  v86 = v35;

  sub_4B748(v39);
  v40 = v86;
  v41 = *(v29 + 20);
  sub_24FA4(v33 + v41, v16, &qword_DB958, qword_A6CE0);
  v42 = type metadata accessor for ImportantEventInfo(0);
  sub_109FC(v16, 1, v42);
  if (v43)
  {
    sub_11E34(v16, &qword_DB958, qword_A6CE0);
  }

  else
  {
    v73 = v41;
    v74 = v42;
    v44 = *v16;

    sub_2554C();
    sub_24788(v16, v45);
    v46 = 0;
    v47 = *(v44 + 16);
    while (v47 != v46)
    {
      v48 = type metadata accessor for CalendarEvent(0);
      sub_5940(v48);
      v50 = *(v49 + 80);
      v52 = *(v51 + 72);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_54E08();
        v40 = v54;
      }

      v53 = *(v40 + 16);
      if (v53 >= *(v40 + 24) >> 1)
      {
        sub_54E08();
        v40 = v55;
      }

      *(v40 + 16) = v53 + 1;
      sub_25000(v44 + ((v50 + 32) & ~v50) + v52 * v46, v40 + ((v50 + 32) & ~v50) + v53 * v52, type metadata accessor for CalendarEvent);
      v86 = v40;
      ++v46;
    }

    v41 = v73;
    v42 = v74;
  }

  v56 = v78;
  sub_24FA4(v33 + v41, v78, &qword_DB958, qword_A6CE0);
  sub_109FC(v56, 1, v42);
  if (v43)
  {
    sub_11E34(v56, &qword_DB958, qword_A6CE0);
  }

  else
  {
    v57 = v77;
    sub_24FA4(v56 + *(v42 + 20), v77, &qword_DB960, &unk_A6C00);
    sub_2554C();
    sub_24788(v56, v58);
    sub_2117C(v57, &v86);
    sub_11E34(v57, &qword_DB960, &unk_A6C00);
    v40 = v86;
  }

  sub_7584((v83 + 112), *(v83 + 136));
  sub_25648();
  v59 = sub_A34D4();
  if (v59)
  {
    v60 = 0xD000000000000016;
  }

  else
  {
    v60 = 0xD000000000000013;
  }

  if (v59)
  {
    v61 = "com.apple.mobilecal";
  }

  else
  {
    v61 = "tart";
  }

  v62 = v79;
  sub_A2EC4();
  v63 = sub_A2EB4();
  v65 = v64;
  (*(v80 + 8))(v62, v81);
  sub_54458(v60, v61 | 0x8000000000000000, v63, v65, v40);

  sub_A3694();
  sub_25480();
  sub_24788(v33, v66);
  v67 = sub_2558C();
  v68 = v85;
  (v75)(v67);
  v69 = sub_255E0();
  sub_A924(v69, v70, v71, v68);

LABEL_11:
  sub_2569C();
}

uint64_t sub_24258(uint64_t a1, uint64_t *a2)
{
  sub_24684();
  v4 = *(*a2 + 16);
  sub_246D0(v4);
  v5 = *a2;
  *(v5 + 16) = v4 + 1;
  v6 = *(type metadata accessor for CalendarEvent(0) - 8);
  return sub_25000(a1, v5 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v4, type metadata accessor for CalendarEvent);
}

uint64_t sub_24324()
{
  v1 = OBJC_IVAR____TtC23DailyBriefingFlowPlugin12CalendarSpec_logger;
  sub_A43D4();
  sub_7A14();
  (*(v2 + 8))(v0 + v1);

  sub_256D4((v0 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin12CalendarSpec_etaSuggestion));
  return sub_11E34(v0 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin12CalendarSpec_eventDetails_Value, &qword_DC730, &qword_A8328);
}

uint64_t sub_243B8()
{
  v0 = sub_82DF4();
  v1 = OBJC_IVAR____TtC23DailyBriefingFlowPlugin12CalendarSpec_logger;
  sub_A43D4();
  sub_7A14();
  (*(v2 + 8))(v0 + v1);

  sub_256D4((v0 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin12CalendarSpec_etaSuggestion));
  sub_11E34(v0 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin12CalendarSpec_eventDetails_Value, &qword_DC730, &qword_A8328);
  return v0;
}

uint64_t sub_24458()
{
  v0 = sub_243B8();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

uint64_t type metadata accessor for CalendarSpec(uint64_t a1)
{
  result = qword_DC510;
  if (!qword_DC510)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24500(uint64_t a1)
{
  sub_A43D4();
  if (v1 <= 0x3F)
  {
    sub_245E0(319);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_245E0(uint64_t a1)
{
  if (!qword_DC520)
  {
    type metadata accessor for CalendarPreprocessingResult(255);
    v1 = sub_A4A24();
    if (!v2)
    {
      atomic_store(v1, &qword_DC520);
    }
  }
}

void sub_24638(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8)
{
  if (a3)
  {
  }
}

void sub_24684()
{
  v1 = *v0;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v0 = v1;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_54E08();
    *v0 = v3;
  }
}

void sub_246D0(uint64_t result)
{
  if (result + 1 > *(*v1 + 24) >> 1)
  {
    sub_54E08();
    *v1 = v2;
  }
}

uint64_t sub_2472C(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_7A14();
  v4 = sub_2558C();
  v5(v4);
  return a2;
}

uint64_t sub_24788(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_7A14();
  (*(v3 + 8))(a1);
  return a1;
}

unint64_t sub_247E0()
{
  result = qword_DC740;
  if (!qword_DC740)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_DC740);
  }

  return result;
}

unint64_t sub_24824()
{
  result = qword_DC750;
  if (!qword_DC750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DC750);
  }

  return result;
}

uint64_t sub_24878(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[16] = a2;
  v3[17] = a3;
  sub_4BF0(&qword_DC730, &qword_A8328);
  v3[18] = swift_task_alloc();
  v3[19] = type metadata accessor for CalendarPreprocessingResult(0);
  v3[20] = swift_task_alloc();
  v3[21] = sub_4BF0(&qword_DC758, &unk_A8340);
  v3[22] = swift_task_alloc();
  v3[23] = swift_task_alloc();
  v5 = type metadata accessor for AppDetecter(0);
  v3[24] = v5;
  v3[5] = v5;
  v3[6] = &off_D0F20;
  v3[2] = a1;

  return _swift_task_switch(sub_249B8, 0, 0);
}

uint64_t sub_249B8()
{
  sub_25654();
  sub_7584(v0 + 2, v0[24]);
  if (qword_DA8D8 != -1)
  {
    swift_once();
  }

  sub_1EA54();
  v1 = sub_2558C();
  v3 = sub_21318(v1, v2);

  if (v3)
  {
    sub_810AC(0xD00000000000001ALL, 0x80000000000AEFE0, 0xD00000000000002ALL, 0x80000000000AEF30, 0xD00000000000001ALL, 0x80000000000AEFC0);
    sub_24824();
    v4 = sub_256B4();
    *v5 = 3;
    sub_82ED4(v4, 256);
    v6 = sub_256B4();
    *v7 = 3;
    sub_761C(v0 + 2);

    sub_255F0();

    return v8(v6, 1);
  }

  else
  {
    sub_A3454();
    if (qword_DA838 != -1)
    {
      sub_254B0(&qword_DA838);
    }

    v10 = qword_E0608;
    v0[25] = qword_E0608;
    v11 = objc_allocWithZone(PPEventStore);
    sub_25744();
    v12 = [v3 init];
    v0[26] = v12;
    v13 = swift_task_alloc();
    v0[27] = v13;
    *v13 = v0;
    v13[1] = sub_24C34;
    v14 = v0[23];
    v15 = v0[16];

    return sub_40724(v14, v15, (v0 + 7), v10, v12);
  }
}

uint64_t sub_24C34()
{
  sub_AB40();
  sub_AAA8();
  v2 = v1;
  sub_25540();
  *v3 = v2;
  v5 = *(v4 + 208);
  v6 = *v0;
  sub_5930();
  *v7 = v6;

  sub_761C((v2 + 56));
  v8 = sub_AA8C();

  return _swift_task_switch(v8, v9, v10);
}

uint64_t sub_24D58()
{
  sub_24FA4(v0[23], v0[22], &qword_DC758, &unk_A8340);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v2 = v0[23];
  if (EnumCaseMultiPayload == 1)
  {
    v3 = *v0[22];
    sub_A4B54(31);

    swift_getErrorValue();
    v13._countAndFlagsBits = sub_A4EC4();
    sub_A46D4(v13);

    sub_810AC(0xD00000000000001DLL, 0x80000000000AEFA0, 0xD00000000000002ALL, 0x80000000000AEF30, 0xD00000000000001ALL, 0x80000000000AEFC0);

    swift_errorRetain();
    sub_82ED4(v3, 256);
  }

  else
  {
    v5 = v0[19];
    v4 = v0[20];
    v6 = v0[18];
    sub_25498();
    sub_2472C(v7, v4, v8);
    sub_25000(v4, v6, type metadata accessor for CalendarPreprocessingResult);
    v3 = &dword_0 + 1;
    sub_A924(v6, 0, 1, v5);
    sub_21580(v6);
    sub_25480();
    sub_24788(v4, v9);
  }

  sub_11E34(v2, &qword_DC758, &unk_A8340);
  sub_761C(v0 + 2);

  sub_255F0();

  return v10(v3, EnumCaseMultiPayload == 1);
}

uint64_t sub_24FA4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  sub_4BF0(a3, a4);
  sub_7A14();
  v5 = sub_2558C();
  v6(v5);
  return a2;
}

uint64_t sub_25000(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_7A14();
  v4 = sub_2558C();
  v5(v4);
  return a2;
}

unint64_t sub_2505C()
{
  result = qword_DC760;
  if (!qword_DC760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DC760);
  }

  return result;
}

uint64_t sub_250B0(uint64_t a1, uint64_t a2)
{
  sub_25714();
  v4 = sub_4BF0(&qword_DC730, &qword_A8328);
  sub_5940(v4);
  v6 = (*(v5 + 80) + 24) & ~*(v5 + 80);

  v7 = (v2 + v6);
  v8 = type metadata accessor for CalendarPreprocessingResult(0);
  if (!sub_CF2C(v2 + v6, 1, v8))
  {
    if (*v7)
    {
    }

    v9 = v7 + *(v8 + 20);
    v10 = type metadata accessor for ImportantEventInfo(0);
    if (!sub_256F4(v10))
    {

      v11 = &v9[*(v3 + 20)];
      v12 = type metadata accessor for CalendarEvent(0);
      if (!sub_256F4(v12))
      {

        v13 = *(v3 + 20);
        sub_A2EA4();
        sub_7A14();
        (*(v14 + 8))(&v11[v13]);
        v15 = *(v3 + 24);
        sub_A2DB4();
        sub_7A14();
        (*(v16 + 8))(&v11[v15]);
      }
    }

    v17 = v7 + *(v8 + 24);
    v18 = sub_A2EA4();
    sub_7A14();
    v20 = *(v19 + 8);
    v21 = sub_25648();
    v20(v21);
    v22 = type metadata accessor for DBCalendarState(0);

    v23 = *(v22 + 24);
    if (!sub_CF2C(&v17[v23], 1, v18))
    {
      (v20)(&v17[v23], v18);
    }

    v24 = *(v22 + 44);
    if (!sub_CF2C(&v17[v24], 1, v18))
    {
      (v20)(&v17[v24], v18);
    }
  }

  sub_2569C();

  return _swift_deallocObject(v25, v26, v27);
}

uint64_t sub_252EC(uint64_t a1, uint64_t a2)
{
  v4 = sub_4BF0(&qword_DC730, &qword_A8328);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2535C()
{
  v1 = sub_4BF0(&qword_DC730, &qword_A8328);
  sub_10A88(v1);
  v3 = *(v0 + 16);
  v4 = v0 + ((*(v2 + 80) + 24) & ~*(v2 + 80));

  return sub_2178C(v3, v4);
}

uint64_t sub_253E0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_253F8(uint64_t a1, uint64_t a2)
{
  v4 = sub_4BF0(&qword_DC730, &qword_A8328);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_254B0(uint64_t a1)
{

  return swift_once();
}

__n128 sub_254F8@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(v3 + 472) = a1;
  *(v3 + 480) = a2;
  v4 = v2 + a2;
  v6 = *(v4 + 32);
  result = *(v4 + 48);
  v7 = *(v4 + 16);
  *(v3 + 80) = *v4;
  *(v3 + 96) = v7;
  *(v3 + 112) = v6;
  *(v3 + 128) = result;
  return result;
}

void sub_25514(uint64_t a1)
{

  sub_810AC(a1, v1 | 0x8000000000000000, v4 + 25, v2 | 0x8000000000000000, 0xD000000000000011, v3 | 0x8000000000000000);
}

uint64_t sub_25564()
{

  return sub_24788(v0, type metadata accessor for CalendarEvent);
}

void sub_25598(uint64_t a1@<X0>, uint64_t a2@<X8>)
{

  sub_810AC(a1, a2 | 0x8000000000000000, v2 + 22, v3 | 0x8000000000000000, 0xD000000000000014, v4 | 0x8000000000000000);
}

uint64_t sub_255FC()
{
  v2 = *(v0 + 336) + 112;

  return sub_A760(v2, v0 + 272);
}

uint64_t sub_25618()
{

  return sub_1045C((v1 + 272), v0);
}

uint64_t sub_2567C()
{

  return swift_task_alloc();
}

uint64_t sub_256B4()
{

  return swift_allocError();
}

void sub_256D4(uint64_t *a1@<X8>)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v6 = a1[4];
  v7 = a1[5];
  v8 = a1[6];
  v9 = a1[7];

  sub_24638(v2, v3, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_256F4(uint64_t a1)
{

  return sub_CF2C(v1, 1, a1);
}

uint64_t sub_2572C()
{
}

uint64_t sub_25744()
{
}

uint64_t sub_2575C(void *a1)
{
  v1 = a1[3];
  v2 = a1[4];
  sub_7584(a1, v1);
  v3 = *(v2 + 64);
  v4 = 1;
  switch(v3(v1, v2))
  {
    case 1u:
LABEL_6:

      v6 = v4;
      break;
    case 3u:
      goto LABEL_4;
    default:
      v5 = sub_A4E44();

      if (v5)
      {
        v6 = 1;
      }

      else
      {
LABEL_4:
        v7 = v3(v1, v2);
        v4 = 1;
        v6 = 0;
        switch(v7)
        {
          case 2:
            goto LABEL_6;
          case 3:
            return v6 & 1;
          default:
            v4 = sub_A4E44();
            goto LABEL_6;
        }
      }

      break;
  }

  return v6 & 1;
}

uint64_t sub_258E8(uint64_t a1, uint64_t a2)
{
  type metadata accessor for CancellationFlow(0);
  sub_26184();
  return sub_A3334();
}

uint64_t sub_25948(uint64_t a1)
{
  *(v2 + 40) = a1;
  *(v2 + 48) = v1;
  return _swift_task_switch(sub_25968, 0, 0);
}

uint64_t sub_25968()
{
  sub_5950();
  v1 = v0[6];
  sub_810AC(0xD000000000000059, 0x80000000000AF180, 0xD00000000000002ELL, 0x80000000000AF1E0, 0x2865747563657865, 0xE900000000000029);
  v2 = *(v1 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin16CancellationFlow_templatingService);
  type metadata accessor for CommonTemplatingService();
  inited = swift_initStackObject();
  v0[7] = inited;
  *(inited + 16) = v2;
  v4 = swift_task_alloc();
  v0[8] = v4;
  *v4 = v0;
  v4[1] = sub_25A78;

  return sub_362FC();
}

uint64_t sub_25A78()
{
  sub_5950();
  *(*v0 + 72) = v1;

  return _swift_task_switch(sub_25B74, 0, 0);
}

uint64_t sub_25B74()
{
  sub_7584((*(v0 + 48) + OBJC_IVAR____TtC23DailyBriefingFlowPlugin16CancellationFlow_siriKitEventSender), *(*(v0 + 48) + OBJC_IVAR____TtC23DailyBriefingFlowPlugin16CancellationFlow_siriKitEventSender + 24));
  sub_4D9A0();
  sub_A3654();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_25C0C()
{
  v1 = OBJC_IVAR____TtC23DailyBriefingFlowPlugin16CancellationFlow_logger;
  v2 = sub_A43D4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  sub_761C((v0 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin16CancellationFlow_aceService));
  sub_761C((v0 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin16CancellationFlow_deviceState));

  sub_761C((v0 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin16CancellationFlow_siriKitEventSender));
  return v0;
}

uint64_t sub_25CBC()
{
  sub_25C0C();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

uint64_t type metadata accessor for CancellationFlow(uint64_t a1)
{
  result = qword_DC798;
  if (!qword_DC798)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_25D68(uint64_t a1)
{
  result = sub_A43D4();
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

uint64_t sub_25E2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_25EDC;

  return Flow.onAsync(input:)(a1, a2, a3);
}

uint64_t sub_25EDC()
{
  sub_5950();
  v2 = v1;
  v5 = *v0;

  v3 = *(v5 + 8);

  return v3(v2);
}

uint64_t sub_25FF8(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_26094;

  return sub_25948(a1);
}

uint64_t sub_26094()
{
  sub_5950();
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

unint64_t sub_26184()
{
  result = qword_DC8C8;
  if (!qword_DC8C8)
  {
    type metadata accessor for CancellationFlow(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DC8C8);
  }

  return result;
}

void *sub_261DC()
{
  result = sub_60BF4(&off_CF498);
  qword_DC8D0 = result;
  return result;
}

void *sub_26204()
{
  result = sub_60BF4(&off_CF4C0);
  qword_DC8D8 = result;
  return result;
}

uint64_t sub_2622C(char a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a1;
  v6 = OBJC_IVAR____TtC23DailyBriefingFlowPlugin21WeatherConditionEvent_startTime;
  v7 = sub_A2EA4();
  (*(*(v7 - 8) + 32))(v3 + v6, a2, v7);
  *(v3 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin21WeatherConditionEvent_count) = a3;
  return v3;
}

uint64_t sub_262B0()
{
  v1._countAndFlagsBits = 0x79726F6765746163;
  v1._object = 0xEA0000000000203ALL;
  sub_A46D4(v1);
  sub_A4C44();
  v2._countAndFlagsBits = 10;
  v2._object = 0xE100000000000000;
  sub_A46D4(v2);
  sub_A2EA4();
  sub_29CFC();
  v3._countAndFlagsBits = sub_A4E24();
  sub_A46D4(v3);

  v4._countAndFlagsBits = 10;
  v4._object = 0xE100000000000000;
  sub_A46D4(v4);

  v5._countAndFlagsBits = 0x6D69547472617473;
  v5._object = 0xEB00000000203A65;
  sub_A46D4(v5);

  v6._countAndFlagsBits = sub_A4E24();
  sub_A46D4(v6);

  v7._countAndFlagsBits = 0x203A746E756F63;
  v7._object = 0xE700000000000000;
  sub_A46D4(v7);

  return 0;
}

uint64_t sub_26478(unint64_t a1)
{
  if (a1 >> 62)
  {
    if (!sub_29E04())
    {
      return 0;
    }
  }

  else if (!*(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8)))
  {
    return 0;
  }

  sub_29DEC();
  v6 = sub_297BC(v1, v2, sub_299D8);
  sub_27554(&v6, sub_2795C, sub_276E0);
  v3 = v6;
  if (!sub_1BF68())
  {

    return 0;
  }

  sub_1BF70();
  if ((v3 & 0xC000000000000001) != 0)
  {
    v4 = sub_A4B74();
  }

  else
  {
    v4 = *(v3 + 32);
  }

  return v4;
}

uint64_t sub_265A0(unint64_t a1)
{
  if (a1 >> 62)
  {
    if (!sub_29E04())
    {
      return 0;
    }
  }

  else if (!*(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8)))
  {
    return 0;
  }

  sub_29DEC();
  v6 = sub_297BC(v1, v2, sub_299D8);
  sub_2742C(&v6);
  v3 = v6;
  if (!sub_1BF68())
  {

    return 0;
  }

  sub_1BF70();
  if ((v3 & 0xC000000000000001) != 0)
  {
    v4 = sub_A4B74();
  }

  else
  {
    v4 = *(v3 + 32);
  }

  return v4;
}

uint64_t sub_266A0(uint64_t a1)
{
  v2 = sub_A2EA4();
  v3 = *(v2 - 1);
  __chkstk_darwin(v2);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);

  sub_29DEC();
  v30 = sub_297BC(v6, v7, sub_299D8);
  sub_27554(&v30, sub_2871C, sub_27874);
  v8 = v30;
  v9 = sub_1BF68();
  v10 = _swiftEmptyArrayStorage;
  if (v9)
  {
    v11 = v9;
    v30 = _swiftEmptyArrayStorage;
    v12 = &v30;
    sub_7ADEC(0, v9 & ~(v9 >> 63), 0);
    if (v11 < 0)
    {
      __break(1u);
      goto LABEL_37;
    }

    v29 = v3;
    v13 = v5;
    v14 = 0;
    v10 = v30;
    do
    {
      if ((v8 & 0xC000000000000001) != 0)
      {
        v15 = *(sub_A4B74() + 16);
        swift_unknownObjectRelease();
      }

      else
      {
        v15 = *(*(v8 + 8 * v14 + 32) + 16);
      }

      v30 = v10;
      v17 = v10[2];
      v16 = v10[3];
      if (v17 >= v16 >> 1)
      {
        sub_7ADEC((v16 > 1), v17 + 1, 1);
        v10 = v30;
      }

      ++v14;
      v10[2] = v17 + 1;
      *(v10 + v17 + 32) = v15;
    }

    while (v11 != v14);
    v5 = v13;
    v3 = v29;
  }

  v12 = sub_7B5D0(v10);
  if (qword_DA8A8 != -1)
  {
    goto LABEL_35;
  }

  while (1)
  {
    v18 = sub_26AA4(qword_DC8D0, v12);
    if (qword_DA8B0 != -1)
    {
      swift_once();
    }

    v19 = sub_26AA4(qword_DC8D8, v12);

    v12 = ((v19 & 1) != 0 ? 21 : 20);
    if (((v19 | v18) & 1) == 0)
    {
      return v8;
    }

    sub_4BF0(&qword_DBB70, &unk_A6E90);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_A6E80;
    v1 = v8 & 0xC000000000000001;
    sub_1BF70();
    if ((v8 & 0xC000000000000001) != 0)
    {
LABEL_37:
      v20 = sub_A4B74();
    }

    else
    {
      v20 = *(v8 + 32);
    }

    (*(v3 + 16))(v5, v20 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin21WeatherConditionEvent_startTime, v2);

    v21 = sub_1BF68();
    v22 = 0;
    v3 = 0;
    v2 = &qword_E0000;
    while (1)
    {
      if (v21 == v22)
      {

        type metadata accessor for WeatherConditionEvent(0);
        v26 = swift_allocObject();
        sub_2622C(v12, v5, v3);
        *(v11 + 32) = v26;
        return v11;
      }

      if (v1)
      {
        v23 = sub_A4B74();
      }

      else
      {
        if (v22 >= *(v8 + 16))
        {
          goto LABEL_34;
        }
      }

      if (__OFADD__(v22, 1))
      {
        break;
      }

      v24 = *(v23 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin21WeatherConditionEvent_count);

      ++v22;
      v25 = __OFADD__(v3, v24);
      v3 += v24;
      if (v25)
      {
        __break(1u);
        return v8;
      }
    }

    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    swift_once();
  }
}

uint64_t sub_26AA4(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16) < *(a2 + 16))
  {
    return 0;
  }

  v2 = a2;
  v4 = a2 + 56;
  v5 = 1 << *(a2 + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(a2 + 56);
  v8 = (v5 + 63) >> 6;
  v32 = a1 + 56;

  v9 = 0;
  v30 = v4;
  v31 = v2;
  v29 = v8;
  if (!v7)
  {
    goto LABEL_7;
  }

  do
  {
    v10 = v9;
LABEL_10:
    if (!*(a1 + 16) || (v11 = *(*(v2 + 48) + (__clz(__rbit64(v7)) | (v10 << 6))), sub_A4F14(), sub_13894(v11), sub_A46A4(), , v12 = sub_A4F44(), v13 = -1 << *(a1 + 32), v14 = v12 & ~v13, ((*(v32 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0))
    {
LABEL_75:

      return 0;
    }

    v7 &= v7 - 1;
    v15 = ~v13;
    while (1)
    {
      v16 = 0xE900000000000065;
      v17 = 0x6E61636972727568;
      switch(*(*(a1 + 48) + v14))
      {
        case 1:
          v16 = 0xE700000000000000;
          v17 = 0x6F64616E726F74;
          break;
        case 2:
          v17 = 0x6C616369706F7274;
          v16 = 0xED00006D726F7453;
          break;
        case 3:
          v16 = 0xE800000000000000;
          v17 = 0x6472617A7A696C62;
          break;
        case 4:
          v16 = 0xE400000000000000;
          v17 = 1818845544;
          break;
        case 5:
          v17 = 0x737265646E756874;
          v18 = 1836216180;
          goto LABEL_37;
        case 6:
          v16 = 0xE500000000000000;
          v17 = 0x7465656C73;
          break;
        case 7:
          v16 = 0xE500000000000000;
          v19 = 2003791475;
          goto LABEL_33;
        case 8:
          v17 = 0x53676E69776F6C62;
          v20 = 7827310;
          goto LABEL_35;
        case 9:
          v16 = 0xE500000000000000;
          v19 = 1852399986;
          goto LABEL_33;
        case 0xA:
          v16 = 0xE500000000000000;
          v19 = 1802464627;
          goto LABEL_33;
        case 0xB:
          v16 = 0xE400000000000000;
          v17 = 1953723748;
          break;
        case 0xC:
          v16 = 0xE500000000000000;
          v19 = 1684957559;
          goto LABEL_33;
        case 0xD:
          v16 = 0xE500000000000000;
          v19 = 1734831974;
LABEL_33:
          v17 = v19 & 0xFFFF0000FFFFFFFFLL | 0x7900000000;
          break;
        case 0xE:
          v16 = 0xE400000000000000;
          v17 = 1702519144;
          break;
        case 0xF:
          v16 = 0xE600000000000000;
          v17 = 0x7964756F6C63;
          break;
        case 0x10:
          v17 = 0x6C43796C74726170;
          v18 = 2036626799;
          goto LABEL_37;
        case 0x11:
          v16 = 0xE500000000000000;
          v17 = 0x7261656C63;
          break;
        case 0x12:
          v16 = 0xE400000000000000;
          v17 = 1684828003;
          break;
        case 0x13:
          v16 = 0xE300000000000000;
          v17 = 7630696;
          break;
        case 0x14:
          v17 = 0x6F6C43646578696DLL;
          v20 = 7955573;
LABEL_35:
          v16 = v20 & 0xFFFFFFFFFFFFLL | 0xEB00000000000000;
          break;
        case 0x15:
          v17 = 0x656C43646578696DLL;
          v16 = 0xEA00000000007261;
          break;
        case 0x16:
          v17 = 0x6C69617641746F6ELL;
          v18 = 1701601889;
LABEL_37:
          v16 = v18 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
          break;
        default:
          break;
      }

      v21 = 0x6E61636972727568;
      v22 = 0xE900000000000065;
      switch(v11)
      {
        case 1:
          v22 = 0xE700000000000000;
          v21 = 0x6F64616E726F74;
          break;
        case 2:
          v21 = 0x6C616369706F7274;
          v22 = 0xED00006D726F7453;
          break;
        case 3:
          v22 = 0xE800000000000000;
          v21 = 0x6472617A7A696C62;
          break;
        case 4:
          v22 = 0xE400000000000000;
          v21 = 1818845544;
          break;
        case 5:
          v21 = 0x737265646E756874;
          v23 = 1836216180;
          goto LABEL_63;
        case 6:
          v22 = 0xE500000000000000;
          v21 = 0x7465656C73;
          break;
        case 7:
          v22 = 0xE500000000000000;
          v24 = 2003791475;
          goto LABEL_59;
        case 8:
          v21 = 0x53676E69776F6C62;
          v25 = 7827310;
          goto LABEL_61;
        case 9:
          v22 = 0xE500000000000000;
          v24 = 1852399986;
          goto LABEL_59;
        case 10:
          v22 = 0xE500000000000000;
          v24 = 1802464627;
          goto LABEL_59;
        case 11:
          v22 = 0xE400000000000000;
          v21 = 1953723748;
          break;
        case 12:
          v22 = 0xE500000000000000;
          v24 = 1684957559;
          goto LABEL_59;
        case 13:
          v22 = 0xE500000000000000;
          v24 = 1734831974;
LABEL_59:
          v21 = v24 & 0xFFFF0000FFFFFFFFLL | 0x7900000000;
          break;
        case 14:
          v22 = 0xE400000000000000;
          v21 = 1702519144;
          break;
        case 15:
          v22 = 0xE600000000000000;
          v21 = 0x7964756F6C63;
          break;
        case 16:
          v21 = 0x6C43796C74726170;
          v23 = 2036626799;
          goto LABEL_63;
        case 17:
          v22 = 0xE500000000000000;
          v21 = 0x7261656C63;
          break;
        case 18:
          v22 = 0xE400000000000000;
          v21 = 1684828003;
          break;
        case 19:
          v22 = 0xE300000000000000;
          v21 = 7630696;
          break;
        case 20:
          v21 = 0x6F6C43646578696DLL;
          v25 = 7955573;
LABEL_61:
          v22 = v25 & 0xFFFFFFFFFFFFLL | 0xEB00000000000000;
          break;
        case 21:
          v21 = 0x656C43646578696DLL;
          v22 = 0xEA00000000007261;
          break;
        case 22:
          v21 = 0x6C69617641746F6ELL;
          v23 = 1701601889;
LABEL_63:
          v22 = v23 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
          break;
        default:
          break;
      }

      if (v17 == v21 && v16 == v22)
      {
        break;
      }

      v27 = sub_A4E44();

      if (v27)
      {
        goto LABEL_73;
      }

      v14 = (v14 + 1) & v15;
      if (((*(v32 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        goto LABEL_75;
      }
    }

LABEL_73:
    v9 = v10;
    v4 = v30;
    v2 = v31;
    v8 = v29;
  }

  while (v7);
  while (1)
  {
LABEL_7:
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      __break(1u);
      JUMPOUT(0x270D8);
    }

    if (v10 >= v8)
    {
      break;
    }

    v7 = *(v4 + 8 * v10);
    ++v9;
    if (v7)
    {
      goto LABEL_10;
    }
  }

  return 1;
}

uint64_t sub_27190()
{
  v1 = OBJC_IVAR____TtC23DailyBriefingFlowPlugin21WeatherConditionEvent_startTime;
  v2 = sub_A2EA4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v3, v4);
}

uint64_t type metadata accessor for WeatherConditionEvent(uint64_t a1)
{
  result = qword_DC908;
  if (!qword_DC908)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_27280(uint64_t a1)
{
  result = sub_A2EA4();
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

uint64_t sub_27360(uint64_t result)
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
      type metadata accessor for WeatherConditionEvent(0);
      result = sub_A4794();
      *(&dword_10 + (result & 0xFFFFFFFFFFFFFF8)) = v1;
    }

    else
    {
      return _swiftEmptyArrayStorage;
    }
  }

  return result;
}

uint64_t sub_273D0(uint64_t result, unint64_t *a2, void *a3)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v3 = result;
    if (result)
    {
      sub_29D54(0, a2, a3);
      result = sub_A4794();
      *(&dword_10 + (result & 0xFFFFFFFFFFFFFF8)) = v3;
    }

    else
    {
      return _swiftEmptyArrayStorage;
    }
  }

  return result;
}

uint64_t sub_2742C(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_29CE4(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v20[0] = v2 + 32;
  v20[1] = v4;
  v5 = sub_A4E14(v4);
  if (v5 >= v4)
  {
    if (v4 >= 2)
    {
      v10 = -1;
      v11 = 1;
      v12 = (v2 + 32);
      do
      {
        v13 = *(v2 + 32 + 8 * v11);
        v14 = v10;
        v15 = v12;
        do
        {
          v16 = *v15;
          if (*(*v15 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin21WeatherConditionEvent_count) >= *(v13 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin21WeatherConditionEvent_count))
          {
            break;
          }

          *v15 = v13;
          v15[1] = v16;
          --v15;
        }

        while (!__CFADD__(v14++, 1));
        ++v11;
        ++v12;
        --v10;
      }

      while (v11 != v4);
    }
  }

  else
  {
    v6 = v5;
    v7 = (v4 >> 1);
    v8 = sub_27360(v4 >> 1);
    v19[0] = v9;
    v19[1] = v7;
    sub_28130(v19, v21, v20, v6);
    *(&dword_10 + (v8 & 0xFFFFFFFFFFFFFF8)) = 0;
  }

  return sub_A4BC4();
}

uint64_t sub_27554(uint64_t *a1, uint64_t (*a2)(void *, _BYTE *, uint64_t, uint64_t), uint64_t a3)
{
  v6 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v6;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v6 = sub_29CE4(v6);
    *a1 = v6;
  }

  v8 = *(v6 + 16);
  v10[0] = v6 + 32;
  v10[1] = v8;
  sub_275E8(v10, a2, a3);
  return sub_A4BC4();
}

Swift::Int sub_275E8(uint64_t a1, uint64_t (*a2)(void *, _BYTE *, uint64_t, uint64_t), uint64_t a3)
{
  v7 = *(a1 + 8);
  result = sub_A4E14(v7);
  if (result < v7)
  {
    v9 = result;
    a3 = sub_27360(v7 / 2);
    v11[0] = v10;
    v11[1] = v7 / 2;
    result = a2(v11, v12, a1, v9);
    if (v3)
    {
      if (v7 < -1)
      {
        __break(1u);
        goto LABEL_5;
      }
    }

    else if (v7 < -1)
    {
LABEL_12:
      __break(1u);
      return result;
    }

    *(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8)) = 0;
  }

LABEL_5:
  if (v7 < 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  if (v7)
  {
    return (a3)(0, v7, 1, a1);
  }

  return result;
}

unint64_t sub_276E0(unint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = *a4 + 8 * a3 - 8;
    v6 = result - a3;
LABEL_3:
    v7 = *(v4 + 8 * a3);
    v8 = v6;
    v9 = v5;
    while (2)
    {
      v10 = *v9;
      result = qword_A8508[*(v7 + 16)];
      v11 = 50800;
      switch(*(*v9 + 16))
      {
        case 1:
          goto LABEL_26;
        case 2:
          v11 = 50700;
          goto LABEL_26;
        case 3:
          v11 = 50600;
          goto LABEL_26;
        case 4:
          v11 = 50500;
          goto LABEL_26;
        case 5:
          v11 = 50400;
          goto LABEL_26;
        case 6:
          v11 = 30900;
          goto LABEL_26;
        case 7:
          v11 = 30800;
          goto LABEL_26;
        case 8:
          v11 = 30700;
          goto LABEL_26;
        case 9:
          v11 = 30600;
          goto LABEL_26;
        case 0xA:
          v11 = 30500;
          goto LABEL_26;
        case 0xB:
          v11 = 30400;
          goto LABEL_26;
        case 0xC:
          v11 = 30300;
          goto LABEL_26;
        case 0xD:
          v11 = 10900;
          goto LABEL_26;
        case 0xE:
          v11 = 10800;
          goto LABEL_26;
        case 0xF:
          v11 = 10700;
          goto LABEL_26;
        case 0x10:
          v11 = 10600;
          goto LABEL_26;
        case 0x11:
          v11 = 10500;
          goto LABEL_26;
        case 0x12:
          v11 = 20;
          goto LABEL_26;
        case 0x13:
          v11 = 10;
          goto LABEL_26;
        case 0x14:
          v11 = 10650;
          goto LABEL_26;
        case 0x15:
          v11 = 10550;
          goto LABEL_26;
        case 0x16:
          v11 = 0;
LABEL_26:
          if (v11 < result)
          {
            if (!v4)
            {
              __break(1u);
              JUMPOUT(0x27818);
            }

            *v9 = v7;
            v9[1] = v10;
            --v9;
            if (!__CFADD__(v8++, 1))
            {
              continue;
            }
          }

          goto LABEL_30;
        default:
LABEL_30:
          ++a3;
          v5 += 8;
          --v6;
          if (a3 == a2)
          {
            return result;
          }

          goto LABEL_3;
      }
    }
  }

  return result;
}

uint64_t sub_27874(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v5 = *a4;
    v6 = (*a4 + 8 * a3 - 8);
    v7 = result - a3;
    while (2)
    {
      v8 = v7;
      v13 = v6;
      do
      {

        v9 = sub_A2E14();

        if ((v9 & 1) == 0)
        {
          break;
        }

        if (!v5)
        {
          __break(1u);
          return result;
        }

        v10 = *v6;
        *v6 = v6[1];
        v6[1] = v10;
        --v6;
      }

      while (!__CFADD__(v8++, 1));
      ++v4;
      v6 = v13 + 1;
      --v7;
      if (v4 != a2)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

uint64_t sub_2795C(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = a3[1];
  if (v5 < 1)
  {
    v7 = _swiftEmptyArrayStorage;
LABEL_134:
    v4 = *a1;
    if (!*a1)
    {
      goto LABEL_175;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      goto LABEL_169;
    }

    goto LABEL_136;
  }

  v6 = 0;
  v7 = _swiftEmptyArrayStorage;
  v81 = a4;
LABEL_3:
  v8 = v6++;
  if (v6 >= v5)
  {
    goto LABEL_44;
  }

  v9 = *(*a3 + 8 * v6);
  v10 = qword_A8508[*(v9 + 16)];
  v11 = qword_A8508[*(*(*a3 + 8 * v8) + 16)];
  v12 = v8 + 2;
  if (v5 <= v8 + 2)
  {
    v6 = v8 + 2;
  }

  else
  {
    v6 = v5;
  }

  while (2)
  {
    if (v12 >= v5)
    {
LABEL_35:
      if (v11 < v10)
      {
        goto LABEL_36;
      }

      goto LABEL_44;
    }

    v13 = *(*a3 + 8 * v12);
    v14 = *(v9 + 16);
    v15 = 50800;
    switch(v14)
    {
      case 1:
        goto LABEL_32;
      case 2:
        v15 = 50700;
        goto LABEL_32;
      case 3:
        v15 = 50600;
        goto LABEL_32;
      case 4:
        v15 = 50500;
        goto LABEL_32;
      case 5:
        v15 = 50400;
        goto LABEL_32;
      case 6:
        v15 = 30900;
        goto LABEL_32;
      case 7:
        v15 = 30800;
        goto LABEL_32;
      case 8:
        v15 = 30700;
        goto LABEL_32;
      case 9:
        v15 = 30600;
        goto LABEL_32;
      case 10:
        v15 = 30500;
        goto LABEL_32;
      case 11:
        v15 = 30400;
        goto LABEL_32;
      case 12:
        v15 = 30300;
        goto LABEL_32;
      case 13:
        v15 = 10900;
        goto LABEL_32;
      case 14:
        v15 = 10800;
        goto LABEL_32;
      case 15:
        v15 = 10700;
        goto LABEL_32;
      case 16:
        v15 = 10600;
        goto LABEL_32;
      case 17:
        v15 = 10500;
        goto LABEL_32;
      case 18:
        v15 = 20;
        goto LABEL_32;
      case 19:
        v15 = 10;
        goto LABEL_32;
      case 20:
        v15 = 10650;
        goto LABEL_32;
      case 21:
        v15 = 10550;
        goto LABEL_32;
      case 22:
        v15 = 0;
LABEL_32:
        if (v11 < v10 != v15 >= qword_A8508[*(v13 + 16)])
        {
          goto LABEL_33;
        }

        v6 = v12;
        goto LABEL_35;
      default:
        if (v11 >= v10)
        {
LABEL_33:
          ++v12;
          v9 = v13;
          continue;
        }

        v6 = v12;
LABEL_36:
        if (v6 < v8)
        {
          goto LABEL_166;
        }

        if (v8 < v6)
        {
          v16 = 8 * v6 - 8;
          v17 = 8 * v8;
          v18 = v6;
          v19 = v8;
          do
          {
            if (v19 != --v18)
            {
              v20 = *a3;
              if (!*a3)
              {
                goto LABEL_173;
              }

              v21 = *(v20 + v17);
              *(v20 + v17) = *(v20 + v16);
              *(v20 + v16) = v21;
            }

            ++v19;
            v16 -= 8;
            v17 += 8;
          }

          while (v19 < v18);
          v5 = a3[1];
        }

LABEL_44:
        if (v6 >= v5)
        {
          goto LABEL_82;
        }

        if (__OFSUB__(v6, v8))
        {
          goto LABEL_165;
        }

        if (v6 - v8 >= a4)
        {
LABEL_82:
          if (v6 < v8)
          {
            goto LABEL_164;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_551BC();
            v7 = v71;
          }

          v31 = *(v7 + 2);
          v32 = v31 + 1;
          if (v31 >= *(v7 + 3) >> 1)
          {
            sub_551BC();
            v7 = v72;
          }

          *(v7 + 2) = v32;
          v4 = v7 + 32;
          v33 = &v7[16 * v31 + 32];
          *v33 = v8;
          *(v33 + 1) = v6;
          v83 = *a1;
          if (!*a1)
          {
            goto LABEL_174;
          }

          if (v31)
          {
            while (1)
            {
              v34 = v32 - 1;
              v35 = &v4[16 * v32 - 16];
              v36 = &v7[16 * v32];
              if (v32 >= 4)
              {
                break;
              }

              if (v32 == 3)
              {
                v37 = *(v7 + 4);
                v38 = *(v7 + 5);
                v47 = __OFSUB__(v38, v37);
                v39 = v38 - v37;
                v40 = v47;
LABEL_102:
                if (v40)
                {
                  goto LABEL_151;
                }

                v52 = *v36;
                v51 = *(v36 + 1);
                v53 = __OFSUB__(v51, v52);
                v54 = v51 - v52;
                v55 = v53;
                if (v53)
                {
                  goto LABEL_154;
                }

                v56 = *(v35 + 1);
                v57 = v56 - *v35;
                if (__OFSUB__(v56, *v35))
                {
                  goto LABEL_157;
                }

                if (__OFADD__(v54, v57))
                {
                  goto LABEL_159;
                }

                if (v54 + v57 >= v39)
                {
                  if (v39 < v57)
                  {
                    v34 = v32 - 2;
                  }

                  goto LABEL_124;
                }

                goto LABEL_117;
              }

              if (v32 < 2)
              {
                goto LABEL_153;
              }

              v59 = *v36;
              v58 = *(v36 + 1);
              v47 = __OFSUB__(v58, v59);
              v54 = v58 - v59;
              v55 = v47;
LABEL_117:
              if (v55)
              {
                goto LABEL_156;
              }

              v61 = *v35;
              v60 = *(v35 + 1);
              v47 = __OFSUB__(v60, v61);
              v62 = v60 - v61;
              if (v47)
              {
                goto LABEL_158;
              }

              if (v62 < v54)
              {
                goto LABEL_131;
              }

LABEL_124:
              if (v34 - 1 >= v32)
              {
                __break(1u);
LABEL_146:
                __break(1u);
LABEL_147:
                __break(1u);
LABEL_148:
                __break(1u);
LABEL_149:
                __break(1u);
LABEL_150:
                __break(1u);
LABEL_151:
                __break(1u);
LABEL_152:
                __break(1u);
LABEL_153:
                __break(1u);
LABEL_154:
                __break(1u);
LABEL_155:
                __break(1u);
LABEL_156:
                __break(1u);
LABEL_157:
                __break(1u);
LABEL_158:
                __break(1u);
LABEL_159:
                __break(1u);
LABEL_160:
                __break(1u);
LABEL_161:
                __break(1u);
LABEL_162:
                __break(1u);
LABEL_163:
                __break(1u);
LABEL_164:
                __break(1u);
LABEL_165:
                __break(1u);
LABEL_166:
                __break(1u);
LABEL_167:
                __break(1u);
                goto LABEL_168;
              }

              if (!*a3)
              {
                goto LABEL_171;
              }

              v66 = v7;
              v67 = &v4[16 * v34 - 16];
              v7 = *v67;
              v68 = &v4[16 * v34];
              v69 = *(v68 + 1);
              sub_28FCC((*a3 + 8 * *v67), (*a3 + 8 * *v68), (*a3 + 8 * v69), v83);
              if (v85)
              {
              }

              if (v69 < v7)
              {
                goto LABEL_146;
              }

              v70 = *(v66 + 2);
              if (v34 > v70)
              {
                goto LABEL_147;
              }

              *v67 = v7;
              *(v67 + 1) = v69;
              if (v34 >= v70)
              {
                goto LABEL_148;
              }

              v85 = 0;
              v32 = v70 - 1;
              memmove(&v4[16 * v34], v68 + 16, 16 * (v70 - 1 - v34));
              v7 = v66;
              *(v66 + 2) = v70 - 1;
              if (v70 <= 2)
              {
                goto LABEL_131;
              }
            }

            v41 = &v4[16 * v32];
            v42 = *(v41 - 8);
            v43 = *(v41 - 7);
            v47 = __OFSUB__(v43, v42);
            v44 = v43 - v42;
            if (v47)
            {
              goto LABEL_149;
            }

            v46 = *(v41 - 6);
            v45 = *(v41 - 5);
            v47 = __OFSUB__(v45, v46);
            v39 = v45 - v46;
            v40 = v47;
            if (v47)
            {
              goto LABEL_150;
            }

            v48 = *(v36 + 1);
            v49 = v48 - *v36;
            if (__OFSUB__(v48, *v36))
            {
              goto LABEL_152;
            }

            v47 = __OFADD__(v39, v49);
            v50 = v39 + v49;
            if (v47)
            {
              goto LABEL_155;
            }

            if (v50 >= v44)
            {
              v64 = *v35;
              v63 = *(v35 + 1);
              v47 = __OFSUB__(v63, v64);
              v65 = v63 - v64;
              if (v47)
              {
                goto LABEL_163;
              }

              if (v39 < v65)
              {
                v34 = v32 - 2;
              }

              goto LABEL_124;
            }

            goto LABEL_102;
          }

LABEL_131:
          v5 = a3[1];
          a4 = v81;
          if (v6 >= v5)
          {
            goto LABEL_134;
          }

          goto LABEL_3;
        }

        if (__OFADD__(v8, a4))
        {
          goto LABEL_167;
        }

        if (v8 + a4 < v5)
        {
          v5 = v8 + a4;
        }

        if (v5 >= v8)
        {
          if (v6 != v5)
          {
            v22 = *a3;
            v23 = *a3 + 8 * v6 - 8;
            v24 = v8 - v6;
LABEL_53:
            v25 = *(v22 + 8 * v6);
            v26 = v24;
            v27 = v23;
            while (2)
            {
              v28 = *v27;
              v29 = 50800;
              switch(*(*v27 + 16))
              {
                case 1:
                  goto LABEL_76;
                case 2:
                  v29 = 50700;
                  goto LABEL_76;
                case 3:
                  v29 = 50600;
                  goto LABEL_76;
                case 4:
                  v29 = 50500;
                  goto LABEL_76;
                case 5:
                  v29 = 50400;
                  goto LABEL_76;
                case 6:
                  v29 = 30900;
                  goto LABEL_76;
                case 7:
                  v29 = 30800;
                  goto LABEL_76;
                case 8:
                  v29 = 30700;
                  goto LABEL_76;
                case 9:
                  v29 = 30600;
                  goto LABEL_76;
                case 0xA:
                  v29 = 30500;
                  goto LABEL_76;
                case 0xB:
                  v29 = 30400;
                  goto LABEL_76;
                case 0xC:
                  v29 = 30300;
                  goto LABEL_76;
                case 0xD:
                  v29 = 10900;
                  goto LABEL_76;
                case 0xE:
                  v29 = 10800;
                  goto LABEL_76;
                case 0xF:
                  v29 = 10700;
                  goto LABEL_76;
                case 0x10:
                  v29 = 10600;
                  goto LABEL_76;
                case 0x11:
                  v29 = 10500;
                  goto LABEL_76;
                case 0x12:
                  v29 = 20;
                  goto LABEL_76;
                case 0x13:
                  v29 = 10;
                  goto LABEL_76;
                case 0x14:
                  v29 = 10650;
                  goto LABEL_76;
                case 0x15:
                  v29 = 10550;
                  goto LABEL_76;
                case 0x16:
                  v29 = 0;
LABEL_76:
                  if (v29 >= qword_A8508[*(v25 + 16)])
                  {
                    goto LABEL_80;
                  }

                  if (!v22)
                  {
                    __break(1u);
LABEL_171:
                    __break(1u);
LABEL_172:
                    __break(1u);
LABEL_173:
                    __break(1u);
LABEL_174:
                    __break(1u);
LABEL_175:
                    __break(1u);
                    JUMPOUT(0x28078);
                  }

                  *v27 = v25;
                  v27[1] = v28;
                  --v27;
                  if (!__CFADD__(v26++, 1))
                  {
                    continue;
                  }

LABEL_80:
                  ++v6;
                  v23 += 8;
                  --v24;
                  if (v6 != v5)
                  {
                    goto LABEL_53;
                  }

                  v6 = v5;
                  break;
                default:
                  goto LABEL_80;
              }

              break;
            }
          }

          goto LABEL_82;
        }

LABEL_168:
        __break(1u);
LABEL_169:
        v7 = sub_29650(v7);
LABEL_136:
        v73 = v7 + 16;
        v74 = *(v7 + 2);
        while (v74 >= 2)
        {
          if (!*a3)
          {
            goto LABEL_172;
          }

          v75 = v7;
          v76 = &v7[16 * v74];
          v7 = *v76;
          v77 = &v73[2 * v74];
          v78 = v77[1];
          sub_28FCC((*a3 + 8 * *v76), (*a3 + 8 * *v77), (*a3 + 8 * v78), v4);
          if (v85)
          {
            break;
          }

          if (v78 < v7)
          {
            goto LABEL_160;
          }

          if (v74 - 2 >= *v73)
          {
            goto LABEL_161;
          }

          *v76 = v7;
          *(v76 + 1) = v78;
          v79 = *v73 - v74;
          if (*v73 < v74)
          {
            goto LABEL_162;
          }

          v85 = 0;
          v74 = *v73 - 1;
          memmove(v77, v77 + 2, 16 * v79);
          *v73 = v74;
          v7 = v75;
        }
    }
  }
}

void sub_28130(uint64_t **result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v92 = _swiftEmptyArrayStorage;
  v4 = a3[1];
  if (v4 < 1)
  {
LABEL_118:
    if (*result)
    {
      sub_28D4C(&v92, *result, a3);

      return;
    }
  }

  else
  {
    v5 = 0;
    v6 = _swiftEmptyArrayStorage;
    while (1)
    {
      v7 = v5 + 1;
      if (v5 + 1 < v4)
      {
        v8 = *(*(*a3 + 8 * v7) + OBJC_IVAR____TtC23DailyBriefingFlowPlugin21WeatherConditionEvent_count);
        v9 = *(*(*a3 + 8 * v5) + OBJC_IVAR____TtC23DailyBriefingFlowPlugin21WeatherConditionEvent_count);
        v10 = v5 + 2;
        v11 = v8;
        while (1)
        {
          v12 = v10;
          if (v10 >= v4)
          {
            break;
          }

          v13 = (v9 < v8) ^ (v11 >= *(*(*a3 + 8 * v10++) + OBJC_IVAR____TtC23DailyBriefingFlowPlugin21WeatherConditionEvent_count));
          v11 = *(*(*a3 + 8 * v12) + OBJC_IVAR____TtC23DailyBriefingFlowPlugin21WeatherConditionEvent_count);
          if ((v13 & 1) == 0)
          {
            v7 = v12;
            goto LABEL_9;
          }
        }

        v7 = v4;
LABEL_9:
        if (v9 < v8)
        {
          if (v7 < v5)
          {
            goto LABEL_137;
          }

          if (v5 < v7)
          {
            if (v4 >= v12)
            {
              v4 = v12;
            }

            v14 = 8 * v4 - 8;
            v15 = 8 * v5;
            v16 = v7;
            v17 = v5;
            do
            {
              if (v17 != --v16)
              {
                v18 = *a3;
                if (!*a3)
                {
                  goto LABEL_142;
                }

                v19 = *(v18 + v15);
                *(v18 + v15) = *(v18 + v14);
                *(v18 + v14) = v19;
              }

              ++v17;
              v14 -= 8;
              v15 += 8;
            }

            while (v17 < v16);
            v4 = a3[1];
          }
        }
      }

      if (v7 < v4)
      {
        if (__OFSUB__(v7, v5))
        {
          goto LABEL_136;
        }

        if (v7 - v5 < a4)
        {
          if (__OFADD__(v5, a4))
          {
            goto LABEL_138;
          }

          if (v5 + a4 < v4)
          {
            v4 = v5 + a4;
          }

          if (v4 < v5)
          {
            goto LABEL_139;
          }

          if (v7 != v4)
          {
            v20 = *a3;
            v21 = *a3 + 8 * v7 - 8;
            v22 = v5 - v7;
            do
            {
              v23 = *(v20 + 8 * v7);
              v24 = v22;
              v25 = v21;
              do
              {
                v26 = *v25;
                if (*(*v25 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin21WeatherConditionEvent_count) >= *(v23 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin21WeatherConditionEvent_count))
                {
                  break;
                }

                if (!v20)
                {
                  goto LABEL_140;
                }

                *v25 = v23;
                v25[1] = v26;
                --v25;
                v73 = __CFADD__(v24++, 1);
              }

              while (!v73);
              ++v7;
              v21 += 8;
              --v22;
            }

            while (v7 != v4);
            v7 = v4;
          }
        }
      }

      if (v7 < v5)
      {
        goto LABEL_135;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_551BC();
        v6 = v82;
      }

      v27 = v6[2];
      v28 = v27 + 1;
      if (v27 >= v6[3] >> 1)
      {
        sub_551BC();
        v6 = v83;
      }

      v6[2] = v28;
      v29 = v6 + 4;
      v30 = &v6[2 * v27 + 4];
      *v30 = v5;
      v30[1] = v7;
      v86 = v7;
      v31 = *result;
      if (!*result)
      {
        break;
      }

      if (v27)
      {
        while (1)
        {
          v32 = v28 - 1;
          v33 = &v29[2 * v28 - 2];
          v34 = &v6[2 * v28];
          if (v28 >= 4)
          {
            break;
          }

          if (v28 == 3)
          {
            v35 = v6[4];
            v36 = v6[5];
            v45 = __OFSUB__(v36, v35);
            v37 = v36 - v35;
            v38 = v45;
LABEL_56:
            if (v38)
            {
              goto LABEL_126;
            }

            v50 = *v34;
            v49 = v34[1];
            v51 = __OFSUB__(v49, v50);
            v52 = v49 - v50;
            v53 = v51;
            if (v51)
            {
              goto LABEL_129;
            }

            v54 = v33[1];
            v55 = v54 - *v33;
            if (__OFSUB__(v54, *v33))
            {
              goto LABEL_132;
            }

            if (__OFADD__(v52, v55))
            {
              goto LABEL_133;
            }

            if (v52 + v55 >= v37)
            {
              if (v37 < v55)
              {
                v32 = v28 - 2;
              }

              goto LABEL_77;
            }

            goto LABEL_70;
          }

          v56 = *v34;
          v57 = v34[1];
          v45 = __OFSUB__(v57, v56);
          v52 = v57 - v56;
          v53 = v45;
LABEL_70:
          if (v53)
          {
            goto LABEL_128;
          }

          v59 = *v33;
          v58 = v33[1];
          v45 = __OFSUB__(v58, v59);
          v60 = v58 - v59;
          if (v45)
          {
            goto LABEL_131;
          }

          if (v60 < v52)
          {
            goto LABEL_116;
          }

LABEL_77:
          if (v32 - 1 >= v28)
          {
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
LABEL_127:
            __break(1u);
LABEL_128:
            __break(1u);
LABEL_129:
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
LABEL_135:
            __break(1u);
LABEL_136:
            __break(1u);
LABEL_137:
            __break(1u);
LABEL_138:
            __break(1u);
LABEL_139:
            __break(1u);
LABEL_140:
            __break(1u);
LABEL_141:
            __break(1u);
LABEL_142:
            __break(1u);
            goto LABEL_143;
          }

          v64 = *a3;
          if (!*a3)
          {
            goto LABEL_141;
          }

          v89 = &v29[2 * v32 - 2];
          v90 = v32;
          __dst = &v29[2 * v32];
          v65 = __dst[1];
          v66 = (v64 + 8 * *v89);
          v67 = (v64 + 8 * *__dst);
          v68 = (v64 + 8 * v65);
          v91 = *v89;
          v69 = 8 * *__dst - 8 * *v89;
          v70 = 8 * v65 - 8 * *__dst;
          if (v69 >> 3 < v70 >> 3)
          {
            sub_55C74(v64 + 8 * *v89, v69 >> 3, v31);
            v71 = (v31 + v69);
            v72 = v31;
            while (1)
            {
              v73 = v72 >= v71 || v67 >= v68;
              if (v73)
              {
                v67 = v66;
                goto LABEL_106;
              }

              v74 = *v67;
              if (*(*v72 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin21WeatherConditionEvent_count) >= *(*v67 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin21WeatherConditionEvent_count))
              {
                break;
              }

              v75 = v66 == v67++;
              if (!v75)
              {
                goto LABEL_90;
              }

LABEL_91:
              ++v66;
            }

            v74 = *v72;
            v75 = v66 == v72++;
            if (v75)
            {
              goto LABEL_91;
            }

LABEL_90:
            *v66 = v74;
            goto LABEL_91;
          }

          sub_55C74(v67, v70 >> 3, v31);
          v71 = (v31 + v70);
LABEL_93:
          v76 = v67 - 1;
          for (--v68; v71 > v31 && v66 < v67; --v68)
          {
            v78 = *(v71 - 1);
            if (*(*v76 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin21WeatherConditionEvent_count) < *(v78 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin21WeatherConditionEvent_count))
            {
              v75 = v68 + 1 == v67--;
              if (!v75)
              {
                *v68 = *v76;
                v67 = v76;
              }

              goto LABEL_93;
            }

            if (v71 != v68 + 1)
            {
              *v68 = v78;
            }

            --v71;
          }

          v72 = v31;
LABEL_106:
          v79 = v71 - v72;
          if (v67 != v72 || v67 >= &v72[v79])
          {
            memmove(v67, v72, 8 * v79);
          }

          if (v65 < v91)
          {
            goto LABEL_121;
          }

          v81 = v6[2];
          if (v90 > v81)
          {
            goto LABEL_122;
          }

          *v89 = v91;
          v89[1] = v65;
          if (v90 >= v81)
          {
            goto LABEL_123;
          }

          v28 = v81 - 1;
          memmove(__dst, __dst + 2, 16 * (v81 - 1 - v90));
          v6[2] = v81 - 1;
          v29 = v6 + 4;
          if (v81 <= 2)
          {
            goto LABEL_116;
          }
        }

        v39 = &v29[2 * v28];
        v40 = *(v39 - 8);
        v41 = *(v39 - 7);
        v45 = __OFSUB__(v41, v40);
        v42 = v41 - v40;
        if (v45)
        {
          goto LABEL_124;
        }

        v44 = *(v39 - 6);
        v43 = *(v39 - 5);
        v45 = __OFSUB__(v43, v44);
        v37 = v43 - v44;
        v38 = v45;
        if (v45)
        {
          goto LABEL_125;
        }

        v46 = v34[1];
        v47 = v46 - *v34;
        if (__OFSUB__(v46, *v34))
        {
          goto LABEL_127;
        }

        v45 = __OFADD__(v37, v47);
        v48 = v37 + v47;
        if (v45)
        {
          goto LABEL_130;
        }

        if (v48 >= v42)
        {
          v62 = *v33;
          v61 = v33[1];
          v45 = __OFSUB__(v61, v62);
          v63 = v61 - v62;
          if (v45)
          {
            goto LABEL_134;
          }

          if (v37 < v63)
          {
            v32 = v28 - 2;
          }

          goto LABEL_77;
        }

        goto LABEL_56;
      }

LABEL_116:
      v4 = a3[1];
      v5 = v86;
      if (v86 >= v4)
      {
        v92 = v6;
        goto LABEL_118;
      }
    }

LABEL_143:
    __break(1u);
  }

  __break(1u);
}

void sub_2871C(void **result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v4 = a3[1];
  if (v4 < 1)
  {
    v6 = _swiftEmptyArrayStorage;
LABEL_91:
    v89 = *result;
    if (!*result)
    {
      goto LABEL_132;
    }

    v5 = v91;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_93:
      v77 = (v6 + 16);
      v78 = *(v6 + 16);
      while (v78 >= 2)
      {
        if (!*a3)
        {
          goto LABEL_129;
        }

        v79 = v6;
        v6 += 16 * v78;
        v80 = *v6;
        v81 = &v77[2 * v78];
        v82 = v81[1];
        sub_293A8((*a3 + 8 * *v6), (*a3 + 8 * *v81), (*a3 + 8 * v82), v89);
        if (v5)
        {
          break;
        }

        if (v82 < v80)
        {
          goto LABEL_117;
        }

        if (v78 - 2 >= *v77)
        {
          goto LABEL_118;
        }

        *v6 = v80;
        *(v6 + 8) = v82;
        v83 = *v77 - v78;
        if (*v77 < v78)
        {
          goto LABEL_119;
        }

        v78 = *v77 - 1;
        memmove(v81, v81 + 2, 16 * v83);
        *v77 = v78;
        v6 = v79;
      }

LABEL_101:

      return;
    }

LABEL_126:
    v6 = sub_29650(v6);
    goto LABEL_93;
  }

  v5 = 0;
  v6 = _swiftEmptyArrayStorage;
  while (1)
  {
    v7 = v5++;
    if (v5 >= v4)
    {
      goto LABEL_22;
    }

    v85 = v6;
    v8 = v7;
    v9 = 8 * v7;
    v10 = *a3 + 8 * v7 + 16;

    v6 = sub_A2E14();

    v86 = v8;
    v11 = v8 + 2;
    do
    {
      v12 = v11;
      if (++v5 >= v4)
      {
        v5 = v4;
        if (v6)
        {
          goto LABEL_8;
        }

LABEL_20:
        v6 = v85;
        v7 = v86;
        goto LABEL_22;
      }

      v13 = sub_A2E14() & 1;

      v10 += 8;
      v11 = v12 + 1;
    }

    while ((v6 & 1) == v13);
    if ((v6 & 1) == 0)
    {
      goto LABEL_20;
    }

LABEL_8:
    v7 = v86;
    if (v5 < v86)
    {
      goto LABEL_123;
    }

    if (v86 >= v5)
    {
      v6 = v85;
    }

    else
    {
      v14 = v4 >= v12 ? v12 : v4;
      v15 = 8 * v14 - 8;
      v16 = v5;
      v17 = v86;
      v6 = v85;
      do
      {
        if (v17 != --v16)
        {
          v18 = *a3;
          if (!*a3)
          {
            goto LABEL_130;
          }

          v19 = *(v18 + v9);
          *(v18 + v9) = *(v18 + v15);
          *(v18 + v15) = v19;
        }

        ++v17;
        v15 -= 8;
        v9 += 8;
      }

      while (v17 < v16);
    }

LABEL_22:
    v20 = a3[1];
    if (v5 < v20)
    {
      if (__OFSUB__(v5, v7))
      {
        goto LABEL_122;
      }

      if (v5 - v7 < a4)
      {
        break;
      }
    }

LABEL_38:
    if (v5 < v7)
    {
      goto LABEL_121;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_551BC();
      v6 = v75;
    }

    v30 = *(v6 + 16);
    v31 = v30 + 1;
    if (v30 >= *(v6 + 24) >> 1)
    {
      sub_551BC();
      v6 = v76;
    }

    *(v6 + 16) = v31;
    v32 = v6 + 32;
    v33 = (v6 + 32 + 16 * v30);
    *v33 = v7;
    v33[1] = v5;
    v89 = *result;
    if (!*result)
    {
      goto LABEL_131;
    }

    if (v30)
    {
      while (1)
      {
        v34 = v31 - 1;
        v35 = (v32 + 16 * (v31 - 1));
        v36 = (v6 + 16 * v31);
        if (v31 >= 4)
        {
          break;
        }

        if (v31 == 3)
        {
          v37 = *(v6 + 32);
          v38 = *(v6 + 40);
          v47 = __OFSUB__(v38, v37);
          v39 = v38 - v37;
          v40 = v47;
LABEL_58:
          if (v40)
          {
            goto LABEL_108;
          }

          v52 = *v36;
          v51 = v36[1];
          v53 = __OFSUB__(v51, v52);
          v54 = v51 - v52;
          v55 = v53;
          if (v53)
          {
            goto LABEL_111;
          }

          v56 = v35[1];
          v57 = v56 - *v35;
          if (__OFSUB__(v56, *v35))
          {
            goto LABEL_114;
          }

          if (__OFADD__(v54, v57))
          {
            goto LABEL_116;
          }

          if (v54 + v57 >= v39)
          {
            if (v39 < v57)
            {
              v34 = v31 - 2;
            }

            goto LABEL_80;
          }

          goto LABEL_73;
        }

        if (v31 < 2)
        {
          goto LABEL_110;
        }

        v59 = *v36;
        v58 = v36[1];
        v47 = __OFSUB__(v58, v59);
        v54 = v58 - v59;
        v55 = v47;
LABEL_73:
        if (v55)
        {
          goto LABEL_113;
        }

        v61 = *v35;
        v60 = v35[1];
        v47 = __OFSUB__(v60, v61);
        v62 = v60 - v61;
        if (v47)
        {
          goto LABEL_115;
        }

        if (v62 < v54)
        {
          goto LABEL_87;
        }

LABEL_80:
        if (v34 - 1 >= v31)
        {
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
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
          goto LABEL_125;
        }

        if (!*a3)
        {
          goto LABEL_128;
        }

        v66 = (v32 + 16 * (v34 - 1));
        v67 = *v66;
        v68 = v34;
        v69 = (v32 + 16 * v34);
        v70 = v69[1];
        sub_293A8((*a3 + 8 * *v66), (*a3 + 8 * *v69), (*a3 + 8 * v70), v89);
        if (v91)
        {
          goto LABEL_101;
        }

        if (v70 < v67)
        {
          goto LABEL_103;
        }

        v71 = v5;
        v5 = v32;
        v72 = v6;
        v6 = *(v6 + 16);
        if (v68 > v6)
        {
          goto LABEL_104;
        }

        *v66 = v67;
        v66[1] = v70;
        if (v68 >= v6)
        {
          goto LABEL_105;
        }

        v73 = v68;
        v31 = v6 - 1;
        memmove(v69, v69 + 2, 16 * (v6 - 1 - v73));
        *(v72 + 16) = v6 - 1;
        v74 = v6 > 2;
        v6 = v72;
        v32 = v5;
        v5 = v71;
        if (!v74)
        {
          goto LABEL_87;
        }
      }

      v41 = v32 + 16 * v31;
      v42 = *(v41 - 64);
      v43 = *(v41 - 56);
      v47 = __OFSUB__(v43, v42);
      v44 = v43 - v42;
      if (v47)
      {
        goto LABEL_106;
      }

      v46 = *(v41 - 48);
      v45 = *(v41 - 40);
      v47 = __OFSUB__(v45, v46);
      v39 = v45 - v46;
      v40 = v47;
      if (v47)
      {
        goto LABEL_107;
      }

      v48 = v36[1];
      v49 = v48 - *v36;
      if (__OFSUB__(v48, *v36))
      {
        goto LABEL_109;
      }

      v47 = __OFADD__(v39, v49);
      v50 = v39 + v49;
      if (v47)
      {
        goto LABEL_112;
      }

      if (v50 >= v44)
      {
        v64 = *v35;
        v63 = v35[1];
        v47 = __OFSUB__(v63, v64);
        v65 = v63 - v64;
        if (v47)
        {
          goto LABEL_120;
        }

        if (v39 < v65)
        {
          v34 = v31 - 2;
        }

        goto LABEL_80;
      }

      goto LABEL_58;
    }

LABEL_87:
    v4 = a3[1];
    if (v5 >= v4)
    {
      goto LABEL_91;
    }
  }

  v21 = v7 + a4;
  if (__OFADD__(v7, a4))
  {
    goto LABEL_124;
  }

  if (v21 >= v20)
  {
    v21 = a3[1];
  }

  if (v21 < v7)
  {
LABEL_125:
    __break(1u);
    goto LABEL_126;
  }

  if (v5 == v21)
  {
    goto LABEL_38;
  }

  v87 = v7;
  v22 = *a3;
  v23 = *a3 + 8 * v5 - 8;
  v24 = v7 - v5;
  v89 = v21;
LABEL_31:
  v25 = v24;
  v26 = v23;
  while (1)
  {

    v27 = sub_A2E14();

    if ((v27 & 1) == 0)
    {
LABEL_36:
      ++v5;
      v23 += 8;
      --v24;
      if (v5 == v89)
      {
        v5 = v89;
        v7 = v87;
        goto LABEL_38;
      }

      goto LABEL_31;
    }

    if (!v22)
    {
      break;
    }

    v28 = *v26;
    *v26 = v26[1];
    v26[1] = v28;
    --v26;
    if (__CFADD__(v25++, 1))
    {
      goto LABEL_36;
    }
  }

  __break(1u);
LABEL_128:
  __break(1u);
LABEL_129:
  __break(1u);
LABEL_130:
  __break(1u);
LABEL_131:
  __break(1u);
LABEL_132:
  __break(1u);
}