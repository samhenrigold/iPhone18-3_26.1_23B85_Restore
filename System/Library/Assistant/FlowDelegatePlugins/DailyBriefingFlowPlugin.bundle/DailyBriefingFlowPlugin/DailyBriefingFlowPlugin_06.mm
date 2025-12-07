uint64_t sub_86B60()
{
  sub_4BF0(&qword_DC2D8, &qword_A7D90);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_A9830;
  if (qword_DAA88 != -1)
  {
    swift_once();
  }

  v1 = qword_DFAF8;
  *(v0 + 56) = sub_4BF0(&qword_DFB18, qword_AB878);
  *(v0 + 64) = sub_1E530(&qword_DFC40, &qword_DFB18, qword_AB878, &protocol conformance descriptor for TerminalOntologyNode<A>);
  *(v0 + 32) = v1;
  v2 = qword_DAA90;

  if (v2 != -1)
  {
    swift_once();
  }

  v3 = qword_DFB00;
  *(v0 + 96) = sub_4BF0(&qword_DFB10, &qword_AB870);
  *(v0 + 104) = sub_1E530(&qword_DFC48, &qword_DFB10, &qword_AB870, &protocol conformance descriptor for TerminalOntologyNode<A>);
  *(v0 + 72) = v3;
  sub_A3AD4();
  swift_allocObject();

  result = sub_A3AC4();
  qword_DFAF0 = result;
  return result;
}

uint64_t sub_86D20()
{
  sub_4BF0(&qword_DFB18, qword_AB878);
  swift_allocObject();
  result = sub_A3AE4();
  qword_DFAF8 = result;
  return result;
}

uint64_t sub_86D90()
{
  sub_4BF0(&qword_DFB10, &qword_AB870);
  swift_allocObject();
  result = sub_A3AE4();
  qword_DFB00 = result;
  return result;
}

uint64_t sub_86DF8@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_A4004();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_86E78(uint64_t a1)
{
  v2 = sub_87780(&qword_DFC08, &unk_AB8FC);

  return NLIntentWrapper.traversableIntentNode.getter(a1, v2);
}

uint64_t sub_86EE0(uint64_t a1)
{
  v2 = sub_87780(&qword_DFC08, &unk_AB8FC);

  return NLIntentWrapper.traversableOntologyNode.getter(a1, v2);
}

uint64_t sub_86F38(uint64_t a1)
{
  v2 = sub_87780(&qword_DFC08, &unk_AB8FC);

  return NLIntentWrapper.description.getter(a1, v2);
}

BOOL sub_86F90(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_CFC78;
  v6._object = a2;
  v4 = sub_A4CE4(v3, v6);

  return v4 != 0;
}

BOOL sub_87000@<W0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_86F90(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t type metadata accessor for MediaPlayerIntent(uint64_t a1)
{
  result = qword_DFB78;
  if (!qword_DFB78)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

BOOL sub_870DC(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_CFCD8;
  v6._object = a2;
  v4 = sub_A4CE4(v3, v6);

  return v4 != 0;
}

BOOL sub_8714C@<W0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_870DC(*a1, a1[1]);
  *a2 = result;
  return result;
}

_BYTE *sub_871A4(_BYTE *result, int a2, int a3)
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
      JUMPOUT(0x87240);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_8728C(uint64_t a1, uint64_t a2)
{
  v4 = sub_A4004();

  return sub_CF2C(a1, a2, v4);
}

uint64_t sub_872E8(uint64_t a1, uint64_t a2)
{
  v4 = sub_A4004();

  return sub_A924(a1, a2, a2, v4);
}

uint64_t sub_87334(uint64_t a1)
{
  result = sub_A4004();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_8740C()
{
  result = qword_DFBB8;
  if (!qword_DFBB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DFBB8);
  }

  return result;
}

uint64_t sub_874B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t), uint64_t (*a5)(void), uint64_t (*a6)(void))
{
  v10 = a4(a1, a2, a3);
  v11 = a5();
  v12 = a6();

  return static TerminalNodeBoundedSemanticValue<>.fromIntentNodeValue(_:)(a1, a2, v10, v11, v12);
}

unint64_t sub_87588()
{
  result = qword_DFBD0;
  if (!qword_DFBD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DFBD0);
  }

  return result;
}

unint64_t sub_875E0()
{
  result = qword_DFBD8;
  if (!qword_DFBD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DFBD8);
  }

  return result;
}

unint64_t sub_87638()
{
  result = qword_DFBE0;
  if (!qword_DFBE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DFBE0);
  }

  return result;
}

unint64_t sub_876D4()
{
  result = qword_DFBF8;
  if (!qword_DFBF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DFBF8);
  }

  return result;
}

unint64_t sub_8772C()
{
  result = qword_DFC00;
  if (!qword_DFC00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DFC00);
  }

  return result;
}

uint64_t sub_87780(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for MediaPlayerIntent(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_877C4()
{
  result = qword_DFC10;
  if (!qword_DFC10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DFC10);
  }

  return result;
}

unint64_t sub_87818()
{
  result = qword_DFC18;
  if (!qword_DFC18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DFC18);
  }

  return result;
}

unint64_t sub_8786C()
{
  result = qword_DFC20;
  if (!qword_DFC20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DFC20);
  }

  return result;
}

unint64_t sub_878C0()
{
  result = qword_DFC28;
  if (!qword_DFC28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DFC28);
  }

  return result;
}

unint64_t sub_87914()
{
  result = qword_DFC30;
  if (!qword_DFC30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DFC30);
  }

  return result;
}

unint64_t sub_87968()
{
  result = qword_DFC38;
  if (!qword_DFC38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DFC38);
  }

  return result;
}

uint64_t sub_879D0()
{
  type metadata accessor for DBSiriKitEventSender();
  inited = swift_initStaticObject();
  sub_A37F4();
  type metadata accessor for DailyBriefingOutputPublisher(0);
  v1 = swift_allocObject();
  result = sub_898D4(inited, v3, v1);
  qword_E0E28 = result;
  return result;
}

uint64_t sub_87A40(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  *(v5 + 216) = a4;
  *(v5 + 224) = v4;
  *(v5 + 145) = a2;
  *(v5 + 200) = a1;
  *(v5 + 208) = a3;
  v6 = sub_4BF0(&qword_DB5A8, &unk_A67C0);
  sub_10A88(v6);
  *(v5 + 232) = sub_10AAC();
  v7 = sub_A3944();
  *(v5 + 240) = v7;
  sub_5940(v7);
  *(v5 + 248) = v8;
  *(v5 + 256) = sub_10AAC();
  v9 = sub_A4C34();
  *(v5 + 264) = v9;
  sub_5940(v9);
  *(v5 + 272) = v10;
  *(v5 + 280) = sub_10AAC();
  v11 = sub_A4C24();
  *(v5 + 288) = v11;
  sub_5940(v11);
  *(v5 + 296) = v12;
  *(v5 + 304) = swift_task_alloc();
  *(v5 + 312) = swift_task_alloc();
  v13 = sub_A44F4();
  *(v5 + 320) = v13;
  sub_5940(v13);
  *(v5 + 328) = v14;
  *(v5 + 336) = sub_10AAC();
  v15 = sub_4BF0(&qword_DFD68, &unk_ABCA0);
  sub_10A88(v15);
  *(v5 + 344) = swift_task_alloc();
  *(v5 + 352) = swift_task_alloc();
  v16 = sub_A43D4();
  *(v5 + 360) = v16;
  sub_5940(v16);
  *(v5 + 368) = v17;
  *(v5 + 376) = sub_10AAC();

  return _swift_task_switch(sub_87CA8, 0, 0);
}

uint64_t sub_87CA8()
{
  v1 = v0;
  v2 = v0[46];
  v3 = v0[44];
  v4 = v0[45];
  v51 = v0[47];
  v53 = v0[40];
  v5 = v0[28];
  v6 = v0[26];
  v7 = OBJC_IVAR____TtC23DailyBriefingFlowPlugin28DailyBriefingOutputPublisher_logger;
  v1[48] = OBJC_IVAR____TtC23DailyBriefingFlowPlugin28DailyBriefingOutputPublisher_logger;
  sub_A4B54(36);

  v8 = v6[3];
  v9 = v6[4];
  sub_7584(v6, v8);
  v56._countAndFlagsBits = (*(v9 + 8))(v8, v9);
  sub_A46D4(v56);

  v57._countAndFlagsBits = 0xD000000000000021;
  v57._object = 0x80000000000B45F0;
  sub_A46D4(v57);
  sub_89BA8();
  sub_810AC(v10, v11, v12, v13, v14, v15);

  v54 = sub_88F70();
  (*(v2 + 16))(v51, v5 + v7, v4);
  v16 = OBJC_IVAR____TtC23DailyBriefingFlowPlugin28DailyBriefingOutputPublisher_previousDialogRenderingCompletedAt;
  v1[49] = OBJC_IVAR____TtC23DailyBriefingFlowPlugin28DailyBriefingOutputPublisher_previousDialogRenderingCompletedAt;
  sub_1A684();
  swift_beginAccess();
  sub_B8BC(v5 + v16, v3, &qword_DFD68, &unk_ABCA0);
  v17 = sub_CF2C(v3, 1, v53);
  v18 = v1[44];
  if (v17)
  {
    sub_89AA0(v1[44]);
    v19 = 0;
  }

  else
  {
    v20 = v1[41];
    v21 = v1[42];
    v22 = v1[40];
    (*(v20 + 16))(v21, v1[44], v22);
    sub_89AA0(v18);
    v19 = sub_A44E4();
    (*(v20 + 8))(v21, v22);
  }

  v23 = v1[46];
  v24 = v1[47];
  v25 = v1[38];
  v26 = v1[37];
  v52 = v1[36];
  v48 = v1[28];
  v49 = v1[45];
  v50 = v1[26];
  v1[21] = v19;
  *(v1 + 176) = v17 != 0;
  sub_4BF0(&qword_DFD70, qword_ABCB0);
  v58._countAndFlagsBits = sub_A4644();
  sub_A46D4(v58);

  v59._countAndFlagsBits = 0;
  v59._object = 0xE000000000000000;
  sub_A46D4(v59);

  sub_89BA8();
  sub_810C4(v27, v28, v29, v30, v31, v32);

  (*(v23 + 8))(v24, v49);
  v33 = OBJC_IVAR____TtC23DailyBriefingFlowPlugin28DailyBriefingOutputPublisher_siriKitEventSender;
  v1[50] = OBJC_IVAR____TtC23DailyBriefingFlowPlugin28DailyBriefingOutputPublisher_siriKitEventSender;
  v34 = *sub_7584((v48 + v33), *(v48 + v33 + 24));
  v36 = v6[3];
  v35 = v6[4];
  sub_7584(v50, v36);
  sub_1A684();
  sub_4DB30(v37, v38, v39, v40, v34, v36, v35);
  sub_A4C04();
  sub_8DD08(v54);
  sub_A4C14();
  v41 = *(v26 + 8);
  v1[51] = v41;
  v1[52] = (v26 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v41(v25, v52);
  v1[17] = 0;
  v1[16] = 0;
  *(v1 + 144) = 1;
  sub_A4EB4();
  v42 = swift_task_alloc();
  v1[53] = v42;
  v43 = sub_89B08(&qword_DFD78, &type metadata accessor for ContinuousClock, &protocol conformance descriptor for ContinuousClock);
  *v42 = v1;
  v42[1] = sub_88118;
  v44 = v1[39];
  v45 = v1[35];
  v46 = v1[33];

  return static Task<>.sleep<A>(until:tolerance:clock:)(v44, v1 + 16, v45, v46, v43);
}

uint64_t sub_88118()
{
  sub_25540();
  *v3 = v2;
  v5 = v4[51];
  v6 = v4[39];
  v7 = v4[36];
  v8 = v4[35];
  v9 = v4[34];
  v10 = v4[33];
  v11 = *v1;
  sub_25540();
  *v12 = v11;
  *(v13 + 432) = v0;

  (*(v9 + 8))(v8, v10);
  v5(v6, v7);
  if (v0)
  {
    v14 = sub_88884;
  }

  else
  {
    v14 = sub_882EC;
  }

  return _swift_task_switch(v14, 0, 0);
}

uint64_t sub_882EC()
{
  if (*(v0 + 145))
  {
    sub_89BA8();
    sub_810AC(v1, v2, v3, v4, v5, v6);
    sub_89B50();

    sub_255F0();

    return v7(0, 0);
  }

  else
  {
    v10 = *(v0 + 248);
    v9 = *(v0 + 256);
    v12 = *(v0 + 232);
    v11 = *(v0 + 240);
    v13 = *(v0 + 216);
    v14 = *(v0 + 224);
    v15 = *(v0 + 200);
    sub_89BA8();
    sub_810AC(v16, v17, v18, v19, v20, v21);
    sub_4BF0(&qword_DBB70, &unk_A6E90);
    v22 = swift_allocObject();
    *(v22 + 16) = xmmword_A6E80;
    *(v22 + 32) = v15;
    sub_B8BC(v13, v12, &qword_DB5A8, &unk_A67C0);
    v23 = v15;
    sub_A3934();
    sub_7584((v14 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin28DailyBriefingOutputPublisher_publisher), *(v14 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin28DailyBriefingOutputPublisher_publisher + 24));
    *(v0 + 40) = v11;
    *(v0 + 48) = &protocol witness table for AceOutput;
    v24 = sub_76B0((v0 + 16));
    (*(v10 + 16))(v24, v9, v11);
    v25 = swift_task_alloc();
    *(v0 + 440) = v25;
    *v25 = v0;
    v25[1] = sub_885A4;

    return dispatch thunk of OutputPublisherAsync.publish(output:)(v0 + 16);
  }
}

uint64_t sub_885A4()
{
  v2 = *v1;
  sub_25540();
  *v3 = v2;
  v4 = *v1;
  sub_25540();
  *v5 = v4;
  *(v2 + 448) = v0;

  if (v0)
  {
    v6 = sub_88A18;
  }

  else
  {
    sub_761C((v2 + 16));
    v6 = sub_886B8;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_886B8()
{
  v1 = v0[49];
  v2 = v0[43];
  v3 = v0[40];
  v4 = v0[31];
  v18 = v0[32];
  v5 = v0[30];
  v6 = v0[28];
  v7 = v0[26];
  v8 = (v6 + v0[50]);
  sub_810AC(0xD00000000000001DLL, 0x80000000000B4700, 0xD00000000000003ALL, 0x80000000000B4500, 0xD00000000000003BLL, 0x80000000000B4620);
  sub_A44C4();
  sub_A924(v2, 0, 1, v3);
  swift_beginAccess();
  sub_89A30(v2, v6 + v1);
  swift_endAccess();
  v9 = *sub_7584(v8, v8[3]);
  v10 = v7[3];
  v11 = v7[4];
  sub_7584(v7, v10);
  sub_1A684();
  sub_4DB30(v12, v13, v14, v15, v9, v10, v11);
  (*(v4 + 8))(v18, v5);
  sub_89B50();

  sub_255F0();

  return v16(0, 0);
}

uint64_t sub_88884()
{
  v1 = v0[54];
  sub_A4B54(47);
  v0[19] = 0;
  v0[20] = 0xE000000000000000;
  v5._object = 0x80000000000B4690;
  v5._countAndFlagsBits = 0xD00000000000002DLL;
  sub_A46D4(v5);
  v0[23] = v1;
  sub_4BF0(&qword_DBB90, &qword_A7540);
  sub_A4C44();
  sub_81094(v0[19], v0[20], 0xD00000000000003ALL, 0x80000000000B4500, 0xD00000000000003BLL, 0x80000000000B4620);

  sub_89B7C();

  sub_255F0();

  return v2(v1, 1);
}

uint64_t sub_88A18()
{
  v1 = v0[56];
  v2 = v0[31];
  v5 = v0[30];
  v6 = v0[32];
  sub_761C(v0 + 2);
  sub_A4B54(40);

  swift_getErrorValue();
  v8._countAndFlagsBits = sub_A4EC4();
  sub_A46D4(v8);

  sub_81094(0xD000000000000026, 0x80000000000B45A0, 0xD00000000000003ALL, 0x80000000000B4500, 0xD00000000000003BLL, 0x80000000000B4620);

  (*(v2 + 8))(v6, v5);
  sub_89B7C();

  sub_255F0();

  return v3(v1, 1);
}

uint64_t sub_88BB4(uint64_t a1)
{
  *(v2 + 88) = a1;
  *(v2 + 96) = v1;
  return _swift_task_switch(sub_88BD4, 0, 0);
}

uint64_t sub_88BD4()
{
  v1 = v0[11];
  sub_7584((v0[12] + OBJC_IVAR____TtC23DailyBriefingFlowPlugin28DailyBriefingOutputPublisher_publisher), *(v0[12] + OBJC_IVAR____TtC23DailyBriefingFlowPlugin28DailyBriefingOutputPublisher_publisher + 24));
  v2 = sub_A3944();
  v0[5] = v2;
  v0[6] = &protocol witness table for AceOutput;
  v3 = sub_76B0(v0 + 2);
  (*(*(v2 - 8) + 16))(v3, v1, v2);
  v4 = swift_task_alloc();
  v0[13] = v4;
  *v4 = v0;
  v4[1] = sub_88CF8;

  return dispatch thunk of OutputPublisherAsync.publish(output:)(v0 + 2);
}

uint64_t sub_88CF8()
{
  v2 = *v1;
  sub_25540();
  *v3 = v2;
  v4 = *v1;
  sub_25540();
  *v5 = v4;
  *(v2 + 112) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_88E2C, 0, 0);
  }

  else
  {
    sub_761C((v2 + 16));
    v6 = *(v4 + 8);

    return v6();
  }
}

uint64_t sub_88E2C()
{
  sub_761C((v0 + 16));
  sub_A4B54(40);

  swift_getErrorValue();
  v4._countAndFlagsBits = sub_A4EC4();
  sub_A46D4(v4);

  sub_81094(0xD000000000000026, 0x80000000000B45A0, 0xD00000000000003ALL, 0x80000000000B4500, 0xD000000000000010, 0x80000000000B45D0);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_88F70()
{
  v1 = v0;
  v2 = sub_A4444();
  sub_591C();
  v43 = v3;
  v5 = __chkstk_darwin(v4);
  v42 = (v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v5);
  v8 = v37 - v7;
  v9 = sub_4BF0(&qword_DFD68, &unk_ABCA0);
  v10 = sub_10A88(v9);
  __chkstk_darwin(v10);
  v12 = v37 - v11;
  v13 = sub_A44F4();
  sub_591C();
  v15 = v14;
  v17 = __chkstk_darwin(v16);
  v19 = v37 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v21 = v37 - v20;
  v22 = OBJC_IVAR____TtC23DailyBriefingFlowPlugin28DailyBriefingOutputPublisher_previousDialogRenderingCompletedAt;
  sub_1A684();
  swift_beginAccess();
  v23 = v1 + v22;
  v24 = v13;
  sub_B8BC(v23, v12, &qword_DFD68, &unk_ABCA0);
  if (sub_CF2C(v12, 1, v13) == 1)
  {
    sub_89AA0(v12);
    sub_810C4(0xD000000000000036, 0x80000000000B4540, 0xD00000000000003ALL, 0x80000000000B4500, 0xD000000000000014, 0x80000000000B4580);
    return 0;
  }

  (*(v15 + 32))(v21, v12, v13);
  sub_A44C4();
  sub_A44D4();
  v26 = *(v15 + 8);
  v26(v19, v13);
  v27 = sub_1490C();
  v28 = v43;
  v29 = v43 + 8;
  v37[0] = *(v43 + 8);
  result = (v37[0])(v8, v2);
  v40 = v21;
  v41 = v15 + 8;
  v38 = v26;
  v39 = v24;
  v37[1] = v29;
  if (v27 > 0)
  {
    v30 = 0;
    goto LABEL_6;
  }

  v30 = -v27;
  if (!__OFSUB__(0, v27))
  {
LABEL_6:
    v31 = v42;
    *v42 = v30;
    (*(v28 + 104))(v31, enum case for DispatchTimeInterval.milliseconds(_:), v2);
    v45[0] = 0;
    v45[1] = 0xE000000000000000;
    sub_A4B54(17);

    strcpy(v45, "Time elapsed: ");
    HIBYTE(v45[1]) = -18;
    v44 = v27;
    v46._countAndFlagsBits = sub_A4E24();
    sub_A46D4(v46);

    v47._countAndFlagsBits = 44;
    v47._object = 0xE100000000000000;
    sub_A46D4(v47);
    v32 = v45[0];
    v33 = v45[1];
    strcpy(v45, "Delay time: ");
    BYTE5(v45[1]) = 0;
    HIWORD(v45[1]) = -5120;
    (*(v28 + 16))(v8, v31, v2);
    v48._countAndFlagsBits = sub_A4644();
    sub_A46D4(v48);

    v34 = v45[0];
    v35 = v45[1];
    v45[0] = v32;
    v45[1] = v33;

    v49._countAndFlagsBits = v34;
    v49._object = v35;
    sub_A46D4(v49);

    sub_810C4(v45[0], v45[1], 0xD00000000000003ALL, 0x80000000000B4500, 0xD000000000000014, 0x80000000000B4580);

    v36 = sub_14AB4();
    (v37[0])(v31, v2);
    result = v38(v40, v39);
    if ((*&v36 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v36 > -9.22337204e18)
    {
      if (v36 < 9.22337204e18)
      {
        return v36;
      }

      goto LABEL_12;
    }

    __break(1u);
LABEL_12:
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_89494()
{
  v1 = sub_4BF0(&qword_DFD68, &unk_ABCA0);
  v2 = sub_10A88(v1);
  __chkstk_darwin(v2);
  v4 = &v7 - v3;
  v5 = sub_A44F4();
  sub_A924(v4, 1, 1, v5);
  v6 = OBJC_IVAR____TtC23DailyBriefingFlowPlugin28DailyBriefingOutputPublisher_previousDialogRenderingCompletedAt;
  sub_89BB4();
  sub_89A30(v4, v0 + v6);
  swift_endAccess();
  sub_810AC(0xD000000000000033, 0x80000000000B44C0, 0xD00000000000003ALL, 0x80000000000B4500, 0x5368736572666572, 0xEE00292865746174);
}

uint64_t sub_895A8()
{
  v1 = sub_4BF0(&qword_DFD68, &unk_ABCA0);
  v2 = sub_10A88(v1);
  __chkstk_darwin(v2);
  v4 = &v8 - v3;
  sub_A44C4();
  v5 = sub_A44F4();
  sub_A924(v4, 0, 1, v5);
  v6 = OBJC_IVAR____TtC23DailyBriefingFlowPlugin28DailyBriefingOutputPublisher_previousDialogRenderingCompletedAt;
  sub_89BB4();
  sub_89A30(v4, v0 + v6);
  return swift_endAccess();
}

uint64_t sub_89660()
{
  v1 = OBJC_IVAR____TtC23DailyBriefingFlowPlugin28DailyBriefingOutputPublisher_logger;
  v2 = sub_A43D4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_761C((v0 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin28DailyBriefingOutputPublisher_publisher));
  sub_761C((v0 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin28DailyBriefingOutputPublisher_siriKitEventSender));
  sub_89AA0(v0 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin28DailyBriefingOutputPublisher_previousDialogRenderingCompletedAt);
  return v0;
}

uint64_t sub_896F0()
{
  sub_89660();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

uint64_t type metadata accessor for DailyBriefingOutputPublisher(uint64_t a1)
{
  result = qword_DFC80;
  if (!qword_DFC80)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_8979C(uint64_t a1)
{
  sub_A43D4();
  if (v1 <= 0x3F)
  {
    sub_8987C(319);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_8987C(uint64_t a1)
{
  if (!qword_DFC90)
  {
    sub_A44F4();
    v1 = sub_A4A24();
    if (!v2)
    {
      atomic_store(v1, &qword_DFC90);
    }
  }
}

uint64_t sub_898D4(uint64_t a1, __int128 *a2, uint64_t a3)
{
  v13 = type metadata accessor for DBSiriKitEventSender();
  v14 = &off_D1B20;
  v15 = sub_89B08(&qword_DB598, type metadata accessor for DBSiriKitEventSender, &unk_A9488);
  *&v12 = a1;
  v6 = OBJC_IVAR____TtC23DailyBriefingFlowPlugin28DailyBriefingOutputPublisher_logger;
  if (qword_DA9D0 != -1)
  {
    swift_once();
  }

  v7 = sub_A43D4();
  v8 = sub_48A4(v7, qword_E0BA0);
  (*(*(v7 - 8) + 16))(a3 + v6, v8, v7);
  v9 = OBJC_IVAR____TtC23DailyBriefingFlowPlugin28DailyBriefingOutputPublisher_previousDialogRenderingCompletedAt;
  v10 = sub_A44F4();
  sub_A924(a3 + v9, 1, 1, v10);
  sub_A82C(&v12, (a3 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin28DailyBriefingOutputPublisher_siriKitEventSender));
  sub_A814(a2, a3 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin28DailyBriefingOutputPublisher_publisher);
  return a3;
}

uint64_t sub_89A30(uint64_t a1, uint64_t a2)
{
  v4 = sub_4BF0(&qword_DFD68, &unk_ABCA0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_89AA0(uint64_t a1)
{
  v2 = sub_4BF0(&qword_DFD68, &unk_ABCA0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_89B08(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_89B50()
{
}

uint64_t sub_89B7C()
{
}

uint64_t sub_89BB4()
{

  return swift_beginAccess();
}

BOOL sub_89C14(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_CFD38;
  v6._object = a2;
  v4 = sub_A4CE4(v3, v6);

  return v4 != 0;
}

BOOL sub_89C68@<W0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_89C14(*a1, a1[1]);
  *a2 = result;
  return result;
}

_BYTE *storeEnumTagSinglePayload for MapsDialogs(_BYTE *result, int a2, int a3)
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
      JUMPOUT(0x89D80);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_89DBC()
{
  result = qword_DFD80;
  if (!qword_DFD80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DFD80);
  }

  return result;
}

uint64_t sub_89E10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_4BF0(&qword_DB5B8, &qword_AAD60);
  v11 = sub_10A88(v10);
  __chkstk_darwin(v11);
  sub_8C6DC(v12, v21);
  v13 = sub_A4814();
  v14 = sub_CF2C(v5, 1, v13);

  if (v14 == 1)
  {
    sub_183F0(v5);
  }

  else
  {
    sub_A4804();
    sub_18594();
    (*(v15 + 8))(v5, v13);
  }

  v16 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (!v16)
  {
    if (a2)
    {
      goto LABEL_6;
    }

LABEL_8:
    sub_183F0(a3);
    sub_8C6B4();
    v18 = swift_allocObject();
    *(v18 + 16) = a4;
    *(v18 + 24) = a5;
    return swift_task_create();
  }

  swift_getObjectType();
  sub_A47C4();
  swift_unknownObjectRelease();
  if (!a2)
  {
    goto LABEL_8;
  }

LABEL_6:
  sub_A4674();
  sub_8C6B4();
  v17 = swift_allocObject();
  *(v17 + 16) = a4;
  *(v17 + 24) = a5;

  v19 = swift_task_create();

  sub_183F0(a3);

  return v19;
}

uint64_t sub_8A090(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_4BF0(&qword_DB5B8, &qword_AAD60);
  v11 = sub_10A88(v10);
  __chkstk_darwin(v11);
  sub_8C6DC(v12, v21);
  v13 = sub_A4814();
  v14 = sub_CF2C(v5, 1, v13);

  if (v14 == 1)
  {
    sub_183F0(v5);
  }

  else
  {
    sub_A4804();
    sub_18594();
    (*(v15 + 8))(v5, v13);
  }

  v16 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (!v16)
  {
    if (a2)
    {
      goto LABEL_6;
    }

LABEL_8:
    sub_183F0(a3);
    sub_8C6B4();
    v18 = swift_allocObject();
    *(v18 + 16) = a4;
    *(v18 + 24) = a5;
    sub_A3684();
    return swift_task_create();
  }

  swift_getObjectType();
  sub_A47C4();
  swift_unknownObjectRelease();
  if (!a2)
  {
    goto LABEL_8;
  }

LABEL_6:
  sub_A4674();
  sub_8C6B4();
  v17 = swift_allocObject();
  *(v17 + 16) = a4;
  *(v17 + 24) = a5;
  sub_A3684();

  v19 = swift_task_create();

  sub_183F0(a3);

  return v19;
}

uint64_t sub_8A31C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_4BF0(&qword_DB5B8, &qword_AAD60);
  __chkstk_darwin(v9 - 8);
  v11 = v24 - v10;
  sub_18380(a3, v24 - v10);
  v12 = sub_A4814();
  v13 = sub_CF2C(v11, 1, v12);

  if (v13 == 1)
  {
    sub_183F0(v11);
  }

  else
  {
    sub_A4804();
    (*(*(v12 - 8) + 8))(v11, v12);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_A47C4();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = sub_A4674() + 32;
      v19 = swift_allocObject();
      *(v19 + 16) = a4;
      *(v19 + 24) = a5;

      sub_4BF0(&qword_DC738, &qword_AAF90);
      v20 = (v17 | v15);
      if (v17 | v15)
      {
        v25[0] = 0;
        v25[1] = 0;
        v20 = v25;
        v25[2] = v15;
        v25[3] = v17;
      }

      v24[1] = 7;
      v24[2] = v20;
      v24[3] = v18;
      v21 = swift_task_create();

      sub_183F0(a3);

      return v21;
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

  sub_183F0(a3);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  sub_4BF0(&qword_DC738, &qword_AAF90);
  if (v17 | v15)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v15;
    v25[7] = v17;
  }

  return swift_task_create();
}

uint64_t sub_8A5FC(uint64_t a1, uint64_t a2)
{
  type metadata accessor for InitialFlow(0);
  sub_8C4C8(&qword_DD100, type metadata accessor for InitialFlow, &unk_ABE28);
  return sub_A3334();
}

uint64_t sub_8A68C()
{
  sub_5950();
  v1[121] = v0;
  v1[120] = v2;
  v3 = sub_4BF0(&qword_DB5B8, &qword_AAD60);
  sub_10A88(v3);
  v1[122] = swift_task_alloc();
  v4 = sub_AA8C();

  return _swift_task_switch(v4, v5, v6);
}

uint64_t sub_8A71C()
{
  v1 = v0[121];
  v0[123] = OBJC_IVAR____TtC23DailyBriefingFlowPlugin11InitialFlow_logger;
  sub_AA40();
  sub_810AC(0xD000000000000013, v2 | 0x8000000000000000, v3 + 22, v4 | 0x8000000000000000, v5, 0xE900000000000029);
  sub_7584((v1 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin11InitialFlow_siriKitEventSender), *(v1 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin11InitialFlow_siriKitEventSender + 24));
  v6 = sub_931E8(131, 4, 0, 0, 0x11uLL);
  sub_4D424(v6);

  v7 = OBJC_IVAR____TtC23DailyBriefingFlowPlugin11InitialFlow_aceService;
  v0[124] = OBJC_IVAR____TtC23DailyBriefingFlowPlugin11InitialFlow_aceService;
  sub_7584((v1 + v7), *(v1 + v7 + 24));
  v0[125] = sub_A37C4();
  v0[126] = v8;
  if (qword_DA830 != -1)
  {
    swift_once();
  }

  v0[127] = qword_E0600;

  v9 = swift_task_alloc();
  v0[128] = v9;
  *v9 = v0;
  v9[1] = sub_8A8EC;

  return sub_2970();
}

uint64_t sub_8A8EC()
{
  sub_5950();
  sub_AAA8();
  v1 = *v0;
  sub_5930();
  *v2 = v1;

  v3 = sub_AA8C();

  return _swift_task_switch(v3, v4, v5);
}

uint64_t sub_8A9F8()
{
  sub_AB40();
  if (qword_DA890 != -1)
  {
    swift_once();
  }

  v1 = v0[126];
  v2 = v0[125];
  v3 = v0[122];
  v0[129] = qword_E0798;
  sub_1EFFC(v2, v1);

  v4 = sub_A4814();
  v0[130] = v4;
  sub_A924(v3, 1, 1, v4);
  sub_8C6B4();
  v5 = swift_allocObject();
  *(v5 + 16) = 0;
  *(v5 + 24) = 0;
  v6 = sub_8C6CC();
  sub_89E10(v6, v7, v3, v8, v9);

  if (qword_DA8C8 != -1)
  {
    swift_once();
  }

  v10 = qword_E08A0;
  v0[131] = qword_E08A0;
  v11 = v10[10];
  v12 = v10[11];
  v10[10] = 0;
  v10[11] = 0;
  v10[12] = 0;
  sub_2F2F4(v11, v12);
  if (qword_DAA98 != -1)
  {
    swift_once();
  }

  v13 = v0[121];
  v0[132] = qword_E0E28;
  sub_89494();
  sub_7584((v13 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin11InitialFlow_requestOriginUtil), *(v13 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin11InitialFlow_requestOriginUtil + 24));
  v14 = swift_task_alloc();
  v0[133] = v14;
  *v14 = v0;
  v14[1] = sub_8ABE4;

  return sub_39A18();
}

uint64_t sub_8ABE4()
{
  sub_5950();
  sub_AAA8();
  *(v1 + 1072) = v0;
  *(v1 + 1080) = v2;
  *(v1 + 337) = v3;

  v4 = sub_AA8C();

  return _swift_task_switch(v4, v5, v6);
}

uint64_t sub_8ACDC()
{
  v66 = v0;
  v1 = *(v0 + 968);
  sub_8B89C(*(v0 + 1072), *(v0 + 1080), *(v0 + 337));
  v2 = *(v1 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin11InitialFlow_flowSpecs);
  v3 = *(v2 + 16);
  v64 = v0;
  if (v3)
  {
    v4 = *(v0 + 968);
    sub_A4BD4();
    v58 = *(v4 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin11InitialFlow_queue);
    v59 = OBJC_IVAR____TtC23DailyBriefingFlowPlugin11InitialFlow_deviceState;
    v62 = v4;
    v5 = (v2 + 32);
    v56 = *(v4 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin11InitialFlow_templatingService);
    do
    {
      v6 = *v5;
      sub_79468(*(v0 + 968) + *(v0 + 992), v0 + 672);
      sub_79468(v62 + v59, v0 + 712);
      v7 = qword_DA838;
      v63 = v58;

      if (v7 != -1)
      {
        sub_8C680();
        swift_once();
      }

      v8 = *(v0 + 1080);
      v9 = *(v0 + 1072);
      v10 = qword_E0608;
      v11 = *(v64 + 337);
      v12 = type metadata accessor for OfflineStateProvider();
      v13 = swift_allocObject();
      v65[3] = v12;
      v65[4] = &off_D29E8;
      v65[0] = v13;
      v14 = *(v6 + 256);

      v0 = v64;
      v14(v63, v9, v8, v11, v64 + 672, v64 + 712, v10, v56, v65);
      sub_A4BB4();
      sub_A4BE4();
      sub_A4BF4();
      sub_A4BC4();
      ++v5;
      --v3;
    }

    while (v3);
  }

  v15 = *(v0 + 1040);
  v16 = *(v0 + 1032);
  v17 = *(v0 + 992);
  v18 = *(v0 + 976);
  v19 = *(v0 + 968);
  type metadata accessor for DBExecutor(0);
  swift_allocObject();

  sub_16364(v20);
  v22 = v21;
  sub_A924(v18, 1, 1, v15);
  v23 = swift_allocObject();
  v23[2] = 0;
  v23[3] = 0;
  v23[4] = v22;

  v24 = sub_8C6CC();
  v25 = v18;
  v26 = v19;
  sub_89E10(v24, v27, v25, v28, v23);

  sub_79468(v19 + v17, v0 + 40);
  v29 = OBJC_IVAR____TtC23DailyBriefingFlowPlugin11InitialFlow_deviceState;
  sub_79468(v26 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin11InitialFlow_deviceState, v0 + 80);
  *(v0 + 144) = type metadata accessor for AppDetecter(0);
  *(v0 + 152) = &off_D0F20;
  *(v0 + 120) = v16;
  sub_A3584();
  swift_allocObject();

  v55 = sub_A3574();
  if (qword_DA838 != -1)
  {
    sub_8C680();
    swift_once();
  }

  v54 = *(v0 + 337);
  v30 = *(v0 + 1080);
  v31 = *(v0 + 1072);
  v32 = *(v0 + 1056);
  v33 = *(v64 + 1048);
  v34 = *(v64 + 968);
  v35 = qword_E0608;
  sub_79468(v26 + v29, v64 + 752);
  v60 = v26;
  v36 = *(v34 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin11InitialFlow_templatingService);
  v57 = v29;
  v37 = type metadata accessor for TemplatingProvider();
  swift_allocObject();
  v38 = sub_5E154((v64 + 752), v36);
  *(v64 + 200) = v37;
  *(v64 + 208) = &off_D1F98;
  *(v64 + 176) = v38;
  *(v64 + 240) = type metadata accessor for AMSSearchService();
  *(v64 + 248) = &off_D1398;
  *(v64 + 216) = v33;
  *(v64 + 280) = type metadata accessor for DailyBriefingOutputPublisher(0);
  *(v64 + 288) = &off_D2D00;
  *(v64 + 256) = v32;
  sub_79468(v34 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin11InitialFlow_offlineStateProvider, v64 + 296);
  v39 = *(v34 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin11InitialFlow_platformSupportsNews);
  *(v64 + 16) = v31;
  *(v64 + 24) = v30;
  *(v64 + 32) = v54;
  *(v64 + 160) = v55;
  *(v64 + 168) = v35;
  *(v64 + 336) = v39;
  swift_retain_n();

  sub_AA40();
  sub_810AC(0xD000000000000019, 0x80000000000B47A0, v40 + 16, 0x80000000000B4770, v41, 0xE900000000000029);
  sub_1A2C4(v64 + 16, v64 + 344);
  sub_79468(v60 + v57, v64 + 792);
  v61 = v37;
  swift_allocObject();
  v42 = sub_5E154((v64 + 792), v36);
  v43 = qword_DA8A0;

  if (v43 != -1)
  {
    swift_once();
  }

  sub_79468(&unk_E07B0, v64 + 832);
  sub_A7C4(v64 + 832, *(v64 + 856));
  *(v64 + 896) = &type metadata for CATProvider;
  *(v64 + 904) = &off_D0FD0;
  type metadata accessor for GreetingFlow(0);
  v45 = swift_allocObject();
  sub_A7C4(v64 + 872, &type metadata for CATProvider);
  *(v64 + 936) = &type metadata for CATProvider;
  *(v64 + 944) = &off_D0FD0;
  v46 = OBJC_IVAR____TtC23DailyBriefingFlowPlugin12GreetingFlow_logger;
  if (qword_DA9F0 != -1)
  {
    swift_once();
  }

  v47 = *(v64 + 968);
  v48 = sub_A43D4();
  sub_48A4(v48, qword_E0C00);
  sub_18594();
  (*(v49 + 16))(v45 + v46);
  *(v45 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin12GreetingFlow_name) = 0;
  *(v45 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin12GreetingFlow_state) = 0;
  sub_1A2C4(v64 + 344, v45 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin12GreetingFlow_flowParams);
  *(v45 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin12GreetingFlow_allFlowSpecs) = _swiftEmptyArrayStorage;
  *(v45 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin12GreetingFlow_executor) = v44;
  v50 = (v45 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin12GreetingFlow_templatingProvider);
  v50[3] = v61;
  v50[4] = &off_D1F98;
  *v50 = v42;
  sub_1A564(v64 + 344);
  sub_A814((v64 + 912), v45 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin12GreetingFlow_catProvider);
  sub_761C((v64 + 872));
  sub_761C((v64 + 832));
  *(v64 + 952) = v45;
  sub_8C6B4();
  v51 = swift_allocObject();
  *(v51 + 16) = sub_8C430;
  *(v51 + 24) = v47;
  sub_8C4C8(&qword_DF4B8, type metadata accessor for GreetingFlow, &unk_AAD08);

  sub_A3624();

  sub_1A564(v64 + 16);

  sub_AA9C();

  return v52();
}

uint64_t sub_8B510()
{
  sub_5950();
  if (qword_DA950 != -1)
  {
    sub_8C694(&qword_DA950);
  }

  v1 = qword_E0A08;
  *(v0 + 16) = qword_E0A08;

  return _swift_task_switch(sub_8B5A4, v1, 0);
}

uint64_t sub_8B5A4()
{
  sub_5950();
  sub_7BC0C();

  sub_AA9C();

  return v0();
}

uint64_t sub_8B624()
{
  sub_5950();
  v1 = *(*(v0 + 16) + OBJC_IVAR____TtC23DailyBriefingFlowPlugin10DBExecutor_callbackState);
  *(v0 + 24) = v1;

  return _swift_task_switch(sub_8B6A4, v1, 0);
}

uint64_t sub_8B6A4()
{
  sub_5950();
  sub_160F4();

  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  *v1 = v0;
  v1[1] = sub_8B740;

  return sub_16664();
}

uint64_t sub_8B740()
{
  sub_5950();
  sub_AAA8();
  v1 = *v0;
  sub_5930();
  *v2 = v1;

  sub_AA9C();

  return v3();
}

uint64_t sub_8B820(uint64_t a1)
{
  sub_7584((a1 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin11InitialFlow_siriKitEventSender), *(a1 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin11InitialFlow_siriKitEventSender + 24));
  v1 = sub_931E8(131, 4, 0, 0, 1uLL);
  sub_4D424(v1);
}

uint64_t sub_8B89C(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  v5 = a3;
  v6 = sub_4BF0(&qword_DB5B8, &qword_AAD60);
  v7 = sub_10A88(v6);
  result = __chkstk_darwin(v7);
  v10 = &v18 - v9;
  if (v5 == 1)
  {
    v11 = [objc_allocWithZone(CLLocation) initWithLatitude:*&a1 longitude:*&a2];
    MapsSuggestionsSetMostRecentLocation();

    v12 = sub_A4814();
    sub_A924(v10, 1, 1, v12);
    sub_8C6B4();
    v13 = swift_allocObject();
    *(v13 + 16) = 0;
    *(v13 + 24) = 0;
    v14 = sub_8C6CC();
    sub_8A31C(v14, v15, v10, v16, v17);
  }

  return result;
}

uint64_t sub_8B9D0()
{
  sub_5950();
  if (qword_DA950 != -1)
  {
    sub_8C694(&qword_DA950);
  }

  *(v0 + 88) = qword_E0A08;

  v1 = swift_task_alloc();
  *(v0 + 96) = v1;
  *v1 = v0;
  v1[1] = sub_8BA98;

  return sub_7B77C();
}

uint64_t sub_8BA98()
{
  sub_5950();
  sub_AAA8();
  v1 = *v0;
  sub_5930();
  *v2 = v1;

  v3 = sub_AA8C();

  return _swift_task_switch(v3, v4, v5);
}

uint64_t sub_8BB98()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 16);
  v3 = *(v0 + 32);
  v4 = *(v0 + 64);
  v1[2] = *(v0 + 48);
  v1[3] = v4;
  *v1 = v2;
  v1[1] = v3;
  sub_AA9C();
  return v5();
}

uint64_t sub_8BBCC()
{
  v1 = OBJC_IVAR____TtC23DailyBriefingFlowPlugin11InitialFlow_logger;
  sub_A43D4();
  sub_18594();
  (*(v2 + 8))(v0 + v1);

  sub_761C((v0 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin11InitialFlow_aceService));
  sub_761C((v0 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin11InitialFlow_deviceState));

  sub_761C((v0 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin11InitialFlow_siriKitEventSender));

  sub_761C((v0 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin11InitialFlow_offlineStateProvider));
  sub_761C((v0 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin11InitialFlow_outputPublisherAsync));
  sub_761C((v0 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin11InitialFlow_requestOriginUtil));
  return v0;
}

uint64_t sub_8BCB8()
{
  sub_8BBCC();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

uint64_t type metadata accessor for InitialFlow(uint64_t a1)
{
  result = qword_DFDB0;
  if (!qword_DFDB0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_8BD64(uint64_t a1)
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

uint64_t sub_8BE68()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_A648;

  return sub_8A68C();
}

uint64_t sub_8BF04(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for InitialFlow(0);

  return Flow<>.exitValue.getter(v3, a2);
}

uint64_t sub_8BF40()
{
  swift_unknownObjectRelease();
  sub_8C6B4();

  return _swift_deallocObject(v0, v1, v2);
}

uint64_t sub_8BF74()
{
  sub_AB40();
  sub_8C6C0();
  v0 = swift_task_alloc();
  v1 = sub_18584(v0);
  *v1 = v2;
  v1[1] = sub_A648;
  v3 = sub_8C66C();

  return sub_8B9B0(v3);
}

uint64_t sub_8C004(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_3FF68;

  return v6(a1);
}

uint64_t sub_8C0FC(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_3D378;

  return v6(a1);
}

uint64_t sub_8C1F4()
{
  sub_AB40();
  sub_8C6C0();
  v0 = swift_task_alloc();
  v1 = sub_18584(v0);
  *v1 = v2;
  v3 = sub_8C64C(v1);

  return v4(v3);
}

uint64_t sub_8C284()
{

  sub_8C6B4();

  return _swift_deallocObject(v0, v1, v2);
}

uint64_t sub_8C2B8()
{
  sub_AB40();
  sub_8C6C0();
  v0 = swift_task_alloc();
  v1 = sub_18584(v0);
  *v1 = v2;
  v1[1] = sub_18540;
  sub_8C66C();

  return sub_8B4F4();
}

uint64_t sub_8C348()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_8C388()
{
  sub_AB40();
  v2 = v1;
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = swift_task_alloc();
  v7 = sub_18584(v6);
  *v7 = v8;
  v7[1] = sub_18540;

  return sub_8B604(v2, v3, v4, v5);
}

uint64_t sub_8C438()
{
  sub_AB40();
  sub_8C6C0();
  v0 = swift_task_alloc();
  v1 = sub_18584(v0);
  *v1 = v2;
  v3 = sub_8C64C(v1);

  return v4(v3);
}

uint64_t sub_8C4C8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_8C510()
{
  sub_AB40();
  sub_8C6C0();
  v0 = swift_task_alloc();
  v1 = sub_18584(v0);
  *v1 = v2;
  v3 = sub_8C64C(v1);

  return v4(v3);
}

uint64_t sub_8C5A0()
{
  sub_AB40();
  sub_8C6C0();
  v0 = swift_task_alloc();
  v1 = sub_18584(v0);
  *v1 = v2;
  v3 = sub_8C64C(v1);

  return v4(v3);
}

uint64_t sub_8C694(uint64_t a1)
{

  return swift_once();
}

uint64_t sub_8C6DC@<X0>(uint64_t a1@<X8>, uint64_t a2)
{

  return sub_18380(v2, &a2 - a1);
}

uint64_t RREntity.init<A>(_:appBundleId:)@<X0>(uint64_t a1@<X0>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v10 = sub_4BF0(&qword_DFEB0, &qword_A93F0);
  __chkstk_darwin(v10 - 8);
  v12 = &v25 - v11;
  v13 = sub_4BF0(&qword_DD468, &qword_A9068);
  __chkstk_darwin(v13 - 8);
  v15 = &v25 - v14;
  v26 = a1;
  v16 = *(a5 + 8);
  if (!sub_8C9E8(a4, v16))
  {

LABEL_7:
    if (qword_DA9D0 != -1)
    {
      sub_58D8(&qword_DA9D0);
    }

    v20 = sub_A43D4();
    sub_48A4(v20, qword_E0BA0);
    sub_81094(0xD000000000000019, 0x80000000000B10B0, 0xD000000000000036, 0x80000000000B1040, 0xD000000000000014, 0x80000000000B10D0);
    swift_unknownObjectRelease();
    goto LABEL_10;
  }

  v26 = a1;
  (*(v16 + 16))(a4, v16);
  if (!v17)
  {

    goto LABEL_7;
  }

  v18 = sub_A43F4();
  sub_A924(v12, 1, 1, v18);
  sub_A4404();
  v19 = sub_A4434();
  sub_A924(v15, 0, 1, v19);
  if (!sub_CF2C(v15, 1, v19))
  {
    (*(*(v19 - 8) + 32))(a6, v15, v19);
    v22 = a6;
    v23 = 0;
    v21 = v19;
    return sub_A924(v22, v23, 1, v21);
  }

  sub_8CCB0(v15);
LABEL_10:
  v21 = sub_A4434();
  v22 = a6;
  v23 = 1;
  return sub_A924(v22, v23, 1, v21);
}

uint64_t sub_8C9E8(uint64_t a1, uint64_t a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = sub_A4A24();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v27 - v7;
  (*(a2 + 24))(a1, a2);
  if (sub_CF2C(v8, 1, AssociatedTypeWitness) == 1)
  {
    (*(v6 + 8))(v8, v5);
LABEL_6:
    if (qword_DA9D0 != -1)
    {
      sub_58D8(&qword_DA9D0);
    }

    v12 = sub_A43D4();
    sub_48A4(v12, qword_E0BA0);
    sub_4CA90();
    sub_4CA7C();
    sub_81094(v13, v14, v15, v16, v17, v18);
    return 0;
  }

  sub_A3BA4();
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_6;
  }

  v9 = v28;
  v10 = sub_A3C34();
  if (!v10)
  {
    if (qword_DA9D0 != -1)
    {
      sub_58D8(&qword_DA9D0);
    }

    v20 = sub_A43D4();
    sub_48A4(v20, qword_E0BA0);
    v28 = 0;
    v29 = 0xE000000000000000;
    sub_A4B54(28);

    v28 = 0xD00000000000001ALL;
    v29 = 0x80000000000B1130;
    v27[1] = v9;

    v30._countAndFlagsBits = sub_A4644();
    sub_A46D4(v30);

    sub_4CA90();
    sub_4CA7C();
    sub_81094(v21, v22, v23, v24, v25, v26);

    return 0;
  }

  v11 = v10;

  return v11;
}

uint64_t sub_8CCB0(uint64_t a1)
{
  v2 = sub_4BF0(&qword_DD468, &qword_A9068);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_8CD18()
{
  v0 = sub_A41D4();
  sub_5D78(v0);
  sub_A41C4();
  sub_A2E54();
  sub_A41B4();

  v1 = sub_A41A4();

  return v1;
}

uint64_t sub_8CD90()
{
  v0 = sub_A4224();
  sub_5D78(v0);
  sub_A4214();
  sub_A4204();

  v1 = sub_A41F4();

  return v1;
}

void sub_8CE00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_25714();
  a19 = v20;
  a20 = v21;
  v23 = v22;
  v24 = sub_A42E4();
  v25 = sub_10A88(v24);
  __chkstk_darwin(v25);
  sub_AA54();
  v28 = v27 - v26;
  v29 = sub_4BF0(&qword_DD220, qword_A9B20);
  v30 = sub_10A88(v29);
  __chkstk_darwin(v30);
  sub_36194();
  v33 = v31 - v32;
  __chkstk_darwin(v34);
  v36 = &a9 - v35;
  v37 = sub_A2EA4();
  sub_591C();
  v39 = v38;
  __chkstk_darwin(v40);
  sub_AA54();
  v43 = v42 - v41;
  v44 = 0;
  if ((sub_4CAE4() & 1) == 0)
  {
    v45 = [v23 temporalEventTrigger];
    if (v45)
    {
      v46 = v45;
      v47 = [v45 dateComponentsRange];

      v48 = [v47 startDate];
      if (v48)
      {
        sub_A2E74();

        v49 = 0;
      }

      else
      {
        v49 = 1;
      }

      sub_A924(v33, v49, 1, v37);
      sub_5C674(v33, v36);
      if (sub_CF2C(v36, 1, v37) != 1)
      {
        (*(v39 + 32))(v43, v36, v37);
        sub_A41E4();
        v44 = sub_8CD18();
        (*(v39 + 8))(v43, v37);
        goto LABEL_10;
      }
    }

    else
    {
      sub_A924(v36, 1, 1, v37);
    }

    sub_AD70(v36, &qword_DD220, qword_A9B20);
    v44 = 0;
  }

LABEL_10:
  v50 = [v23 title];
  v51 = [v50 spokenPhrase];

  v52 = sub_A45F4();
  v54 = v53;

  sub_10A94(v52, v54);
  LOBYTE(v52) = sub_4CAE4();

  v55 = type metadata accessor for DBReminder(0);
  sub_5D78(v55);
  sub_B9A4(v28, v44, v52 & 1);
  sub_2569C();
}

void sub_8D0FC()
{
  sub_25714();
  v1 = v0;
  v2 = *v0;
  v4 = *(v0 + 8);
  v3 = *(v0 + 16);
  v5 = *(v0 + 24);
  v6 = *(v0 + 32);
  v7 = *(v0 + 40);
  v8 = *(v0 + 48);
  type metadata accessor for WeatherAirQuality(0);

  v9 = sub_99CA4(v1);
  swift_allocObject();
  sub_9A754(v2, v3, v5, v4, v6, v7, v8, v9 & 1);
  sub_8DC4C(v1);
  sub_2569C();
}

void sub_8D1AC()
{
  sub_25714();
  v1 = v0;
  v3 = v2;
  v37 = sub_A2EA4();
  sub_591C();
  v5 = v4;
  __chkstk_darwin(v6);
  sub_36194();
  v36 = v7 - v8;
  __chkstk_darwin(v9);
  v11 = &v34 - v10;
  v12 = sub_4BF0(&qword_DB760, qword_A6AE8);
  v13 = sub_10A88(v12);
  __chkstk_darwin(v13);
  v15 = &v34 - v14;
  v16 = sub_A42E4();
  v17 = sub_10A88(v16);
  __chkstk_darwin(v17);
  sub_AA54();
  v20 = v19 - v18;
  v21 = type metadata accessor for CurrentWeatherForecast(0);
  v22 = sub_13894(*(v3 + v21[7]));
  sub_10A94(v22, v23);
  sub_A4164();
  v24 = sub_4BF0(&qword_DB768, &unk_A9650);
  (*(*(v24 - 8) + 16))(v15, v3, v24);
  sub_A924(v15, 0, 1, v24);
  v25 = sub_8D910(v15, v1);
  sub_AD70(v15, &qword_DB760, qword_A6AE8);
  if (v25)
  {
    v26 = v21[5];
    v35 = sub_8D910(v3 + v26, v1);
    v27 = v21[6];
    v34 = sub_8D910(v3 + v27, v1);
    v28 = *(v5 + 16);
    v29 = v37;
    v28(v11, v3 + v21[8], v37);
    LOBYTE(v26) = sub_C9CC(v3, v3 + v26, v11);
    v30 = sub_CC44(v3, v3 + v27, v11);
    v31 = v36;
    v28(v36, v11, v29);
    v32 = sub_67C20(v31);
    sub_8DCA0(v3);
    v33 = type metadata accessor for WeatherCurrent(0);
    sub_5D78(v33);
    sub_6200(v20, v25, v35, v34, v11, v26 & 1, v30, v32 == 1);
    sub_2569C();
  }

  else
  {
    __break(1u);
  }
}

void sub_8D488()
{
  sub_25714();
  v1 = v0;
  v2 = sub_A2EA4();
  sub_591C();
  v4 = v3;
  __chkstk_darwin(v5);
  sub_AA54();
  v8 = v7 - v6;
  v59 = sub_A42E4();
  sub_591C();
  v62 = v9;
  __chkstk_darwin(v10);
  sub_36194();
  v13 = v11 - v12;
  v15 = __chkstk_darwin(v14);
  v17 = &v52 - v16;
  v18 = __chkstk_darwin(v15);
  v20 = &v52 - v19;
  __chkstk_darwin(v18);
  v63 = &v52 - v21;
  sub_10A94(0, 0xE000000000000000);
  sub_10A94(0, 0xE000000000000000);
  sub_A41E4();
  sub_A2E94();
  v22 = sub_8CD18();
  v23 = *(v4 + 8);
  v24 = sub_8DCFC();
  v23(v24);
  sub_A2E94();
  v60 = sub_8CD18();
  v25 = sub_8DCFC();
  v58 = v23;
  v23(v25);
  v26 = sub_1BF68();
  if (v26 < 1)
  {
    goto LABEL_9;
  }

  v27 = v26;
  v55 = v22;
  v61 = v4;
  sub_1BF70();
  v56 = v20;
  v57 = v1 & 0xC000000000000001;
  v54 = v13;
  if ((v1 & 0xC000000000000001) != 0)
  {
    v28 = sub_A4B74();
  }

  else
  {
  }

  v29 = *(v28 + 16);

  v30 = sub_13894(v29);
  sub_10A94(v30, v31);
  v33 = v62;
  v32 = v63;
  v34 = v59;
  v53 = *(v62 + 8);
  v53(v63, v59);
  v35 = *(v33 + 32);
  v62 = v33 + 32;
  v52 = v35;
  v35(v32, v17, v34);
  if (v57)
  {
    v36 = sub_A4B74();
  }

  else
  {
    v36 = *(v1 + 32);
  }

  v37 = *(v61 + 16);
  v61 += 16;
  v37(v8, v36 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin21WeatherConditionEvent_startTime, v2);

  v22 = sub_8CD18();

  v38 = sub_8DCFC();
  v58(v38);
  if (v27 == 1)
  {
    v20 = v56;
LABEL_9:

    v39 = v60;
    goto LABEL_16;
  }

  v40 = v57;
  sub_1BF70();
  v55 = v22;
  v41 = v37;
  if (v40)
  {
    v42 = sub_A4B74();
  }

  else
  {
  }

  v43 = *(v42 + 16);

  v44 = sub_13894(v43);
  v45 = v54;
  sub_10A94(v44, v46);
  v20 = v56;
  v47 = v59;
  v53(v56, v59);
  v52(v20, v45, v47);
  if (v57)
  {
    v48 = sub_A4B74();
  }

  else
  {
    v48 = *(v1 + 40);
  }

  v22 = v55;

  v41(v8, v48 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin21WeatherConditionEvent_startTime, v2);

  v49 = sub_8CD18();

  v50 = sub_8DCFC();
  v58(v50);
  v39 = v49;
LABEL_16:
  v51 = type metadata accessor for WeatherExpected(0);
  sub_5D78(v51);
  sub_14CEC(v63, v20, v22, v39);
  sub_2569C();
}

uint64_t sub_8D910(uint64_t a1, char a2)
{
  v4 = sub_4BF0(&qword_DF4B0, &qword_AC5F0);
  v5 = sub_10A88(v4);
  __chkstk_darwin(v5);
  v7 = &v30 - v6;
  v8 = sub_4BF0(&qword_DB760, qword_A6AE8);
  v9 = sub_10A88(v8);
  __chkstk_darwin(v9);
  v11 = &v30 - v10;
  v12 = sub_4BF0(&qword_DB768, &unk_A9650);
  sub_591C();
  v14 = v13;
  __chkstk_darwin(v15);
  sub_36194();
  v18 = v16 - v17;
  __chkstk_darwin(v19);
  v21 = &v30 - v20;
  sub_CEBC(a1, v11);
  if (sub_CF2C(v11, 1, v12) == 1)
  {
    sub_AD70(v11, &qword_DB760, qword_A6AE8);
    return 0;
  }

  else
  {
    (*(v14 + 32))(v21, v11, v12);
    v23 = [objc_opt_self() *off_D2F50[a2]];
    sub_A2B64();

    sub_A2B54();
    v24 = *(v14 + 8);
    v24(v18, v12);
    v25 = sub_A4154();
    sub_5D78(v25);
    sub_A4144();
    sub_A4194();

    if (a2)
    {
      if (a2 == 1)
      {
        v26 = 0x65686E6572686166;
      }

      else
      {
        v26 = 0x6E69766C656BLL;
      }

      if (a2 == 1)
      {
        v27 = 0xEA00000000007469;
      }

      else
      {
        v27 = 0xE600000000000000;
      }
    }

    else
    {
      v27 = 0xE700000000000000;
      v26 = 0x737569736C6563;
    }

    sub_10A94(v26, v27);
    v28 = sub_A42E4();
    sub_A924(v7, 0, 1, v28);
    sub_A4184();

    sub_AD70(v7, &qword_DF4B0, &qword_AC5F0);
    v22 = sub_A4174();

    v24(v21, v12);
  }

  return v22;
}

uint64_t sub_8DCA0(uint64_t a1)
{
  v2 = type metadata accessor for CurrentWeatherForecast(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_8DD3C(uint64_t a1, uint64_t a2)
{
  type metadata accessor for WarningsFlow(0);
  sub_93328(&qword_DC0E8, type metadata accessor for WarningsFlow, &unk_AC040);
  return sub_A3334();
}

uint64_t sub_8DDCC()
{
  sub_5950();
  v1[5] = v2;
  v1[6] = v0;
  sub_4BF0(&qword_DB5A8, &unk_A67C0);
  v1[7] = sub_10AAC();
  v3 = sub_AA8C();

  return _swift_task_switch(v3, v4, v5);
}

uint64_t sub_8DE54()
{
  sub_59C4();
  v1 = v0[6];
  v0[8] = OBJC_IVAR____TtC23DailyBriefingFlowPlugin12WarningsFlow_logger;
  sub_490E0();
  sub_810AC(v2, v3, v4, v5, 0x2865747563657865, 0xE900000000000029);
  v6 = OBJC_IVAR____TtC23DailyBriefingFlowPlugin12WarningsFlow_siriKitEventSender;
  v0[9] = OBJC_IVAR____TtC23DailyBriefingFlowPlugin12WarningsFlow_siriKitEventSender;
  v7 = (v1 + v6);
  sub_934EC((v1 + v6), *(v1 + v6 + 24));
  v8 = sub_9339C(0);
  sub_4D424(v8);

  v9 = OBJC_IVAR____TtC23DailyBriefingFlowPlugin12WarningsFlow_flowParams;
  v0[10] = OBJC_IVAR____TtC23DailyBriefingFlowPlugin12WarningsFlow_flowParams;
  sub_934EC((v1 + v9 + 280), *(v1 + v9 + 304));
  if (sub_834E4())
  {
    sub_490E0();
    sub_810AC(v10, v11, v12, v13, 0x2865747563657865, 0xE900000000000029);
    sub_7584(v7, v7[3]);
    sub_93408();
    v15 = sub_9339C(v14);
    sub_4D424(v15);

    swift_task_alloc();
    sub_1A6A0();
    v0[11] = v16;
    *v16 = v17;
    sub_93504(v16);
    sub_1A6C8();

    return sub_90F8C();
  }

  else
  {
    v20 = swift_task_alloc();
    v0[12] = v20;
    *v20 = v0;
    sub_933DC(v20);
    sub_1A6C8();

    return sub_8FCB4();
  }
}

uint64_t sub_8E06C()
{
  sub_5950();
  sub_934E0();
  v1 = *v0;
  sub_5930();
  *v2 = v1;

  v3 = *(v1 + 8);

  return v3();
}

uint64_t sub_8E16C()
{
  sub_5950();
  sub_AAA8();
  sub_1A690();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 272) = v3;

  v4 = sub_AA8C();

  return _swift_task_switch(v4, v5, v6);
}

uint64_t sub_8E254()
{
  sub_AB40();
  if (*(v0 + 272) == 1)
  {
    v1 = (*(v0 + 48) + *(v0 + 72));
    sub_AA40();
    sub_93418();
    sub_810C4(v2, v3, v4, v5, v6, v7);
    sub_7584(v1, v1[3]);
    sub_93408();
    v9 = sub_9339C(v8);
    sub_4D424(v9);

    v10 = swift_task_alloc();
    *(v0 + 104) = v10;
    *v10 = v0;
    sub_933DC(v10);

    return sub_91960();
  }

  else
  {
    v12 = swift_task_alloc();
    *(v0 + 152) = v12;
    *v12 = v0;
    sub_933DC(v12);

    return sub_90288();
  }
}

uint64_t sub_8E3C0()
{
  sub_5950();
  sub_AAA8();
  sub_1A690();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 112) = v3;

  v4 = sub_AA8C();

  return _swift_task_switch(v4, v5, v6);
}

uint64_t sub_8E4A8()
{
  sub_AB40();
  sub_93458();
  *(v1 + 120) = v0;
  v2 = swift_task_alloc();
  *(v1 + 128) = v2;
  *v2 = v1;
  sub_9346C(v2);

  return sub_2D78C(6, v0, v3);
}

uint64_t sub_8E54C()
{
  sub_5950();
  sub_AAA8();
  v1 = *v0;
  sub_5930();
  *v2 = v1;

  v3 = sub_AA8C();

  return _swift_task_switch(v3, v4, v5);
}

uint64_t sub_8E630()
{
  sub_25654();
  v1 = *(v0 + 112);
  sub_9342C();
  v2 = sub_A3744();
  sub_9347C(v2);
  v3 = v1;
  v4 = swift_task_alloc();
  *(v0 + 136) = v4;
  *v4 = v0;
  v5 = sub_933EC(v4);

  return sub_87A40(v5, v6, v7, v8);
}

uint64_t sub_8E6E8()
{
  sub_59C4();
  v3 = v2;
  v5 = v4;
  sub_934E0();
  sub_5930();
  *v6 = v0;
  v7 = v0[14];
  v8 = v0[7];
  v9 = *v1;
  *v6 = *v1;

  sub_A8A8(v5, v3 & 1);

  sub_1085C(v8, &qword_DB5A8, &unk_A67C0);
  v10 = swift_task_alloc();
  v0[18] = v10;
  *v10 = v9;
  v10[1] = sub_8E8AC;
  sub_59E4();

  return sub_95A4C(v11, v12);
}

uint64_t sub_8E8AC()
{
  sub_5950();
  sub_AAA8();
  v1 = *v0;
  sub_5930();
  *v2 = v1;

  v3 = sub_AA8C();

  return _swift_task_switch(v3, v4, v5);
}

uint64_t sub_8E990()
{
  sub_5950();
  v1 = *(v0 + 112);
  sub_A3664();

  sub_AA9C();

  return v2();
}

uint64_t sub_8E9F8()
{
  sub_5950();
  sub_AAA8();
  sub_1A690();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 273) = v3;

  v4 = sub_AA8C();

  return _swift_task_switch(v4, v5, v6);
}

uint64_t sub_8EAE0()
{
  sub_AB40();
  if (*(v0 + 273) == 1)
  {
    v1 = (*(v0 + 48) + *(v0 + 72));
    sub_AA40();
    sub_810C4(0xD000000000000025, v2 | 0x8000000000000000, v3 + 5, v4 | 0x8000000000000000, v5, 0xE900000000000029);
    sub_7584(v1, v1[3]);
    sub_93408();
    v7 = sub_9339C(v6);
    sub_4D424(v7);

    v8 = swift_task_alloc();
    *(v0 + 160) = v8;
    *v8 = v0;
    sub_933DC(v8);

    return sub_91ED8();
  }

  else
  {
    v10 = swift_task_alloc();
    *(v0 + 200) = v10;
    *v10 = v0;
    sub_933DC(v10);

    return sub_909FC();
  }
}

uint64_t sub_8EC58()
{
  sub_5950();
  sub_AAA8();
  sub_1A690();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 168) = v3;

  v4 = sub_AA8C();

  return _swift_task_switch(v4, v5, v6);
}

uint64_t sub_8ED40()
{
  sub_AB40();
  sub_93458();
  v2 = swift_task_alloc();
  *(v1 + 176) = v2;
  *v2 = v1;
  sub_9346C(v2);

  return sub_2D78C(7, v0, v3);
}

uint64_t sub_8EDE0()
{
  sub_5950();
  sub_AAA8();
  v1 = *v0;
  sub_5930();
  *v2 = v1;

  v3 = sub_AA8C();

  return _swift_task_switch(v3, v4, v5);
}

uint64_t sub_8EEC4()
{
  sub_25654();
  v1 = *(v0 + 168);
  sub_9342C();
  v2 = sub_A3744();
  sub_9347C(v2);
  v3 = v1;
  v4 = swift_task_alloc();
  *(v0 + 184) = v4;
  *v4 = v0;
  v5 = sub_933EC(v4);

  return sub_87A40(v5, v6, v7, v8);
}

uint64_t sub_8EF7C(uint64_t a1, char a2)
{
  v5 = *v2;
  v6 = *v2;
  sub_5930();
  *v7 = v6;
  v8 = *(v5 + 168);
  v9 = *(v5 + 56);
  v10 = *v2;
  *v7 = *v2;

  sub_A8A8(a1, a2 & 1);

  sub_1085C(v9, &qword_DB5A8, &unk_A67C0);
  v11 = swift_task_alloc();
  *(v6 + 192) = v11;
  *v11 = v10;
  v11[1] = sub_8F13C;

  return sub_90F8C();
}

uint64_t sub_8F13C()
{
  sub_5950();
  sub_AAA8();
  v1 = *v0;
  sub_5930();
  *v2 = v1;

  v3 = sub_AA8C();

  return _swift_task_switch(v3, v4, v5);
}

uint64_t sub_8F220()
{
  sub_5950();

  sub_AA9C();

  return v1();
}

uint64_t sub_8F280()
{
  sub_5950();
  sub_AAA8();
  sub_1A690();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 274) = v3;

  v4 = sub_AA8C();

  return _swift_task_switch(v4, v5, v6);
}

uint64_t sub_8F368()
{
  sub_AB40();
  sub_AA40();
  if (*(v0 + 274) == 1)
  {
    v1 = (*(v0 + 48) + *(v0 + 72));
    sub_93418();
    sub_810C4(v2, v3, v4, v5, v6, v7);
    sub_7584(v1, v1[3]);
    sub_93408();
    v9 = sub_9339C(v8);
    sub_4D424(v9);

    type metadata accessor for ModeInfoProvider();
    *(v0 + 208) = swift_initStackObject();
    *(v0 + 216) = sub_5FB74();
    v10 = swift_task_alloc();
    *(v0 + 224) = v10;
    *v10 = v0;
    sub_933DC(v10);

    return sub_92208();
  }

  else
  {
    v12 = (*(v0 + 48) + *(v0 + 72));
    sub_93418();
    sub_810AC(v13, v14, v15, v16, v17, v18);
    sub_934EC(v12, v12[3]);
    v19 = sub_9339C(0);
    sub_4D424(v19);

    swift_task_alloc();
    sub_1A6A0();
    *(v0 + 264) = v20;
    *v20 = v21;
    sub_93504(v20);

    return sub_90F8C();
  }
}

uint64_t sub_8F55C()
{
  sub_5950();
  sub_AAA8();
  sub_1A690();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 232) = v3;

  v4 = sub_AA8C();

  return _swift_task_switch(v4, v5, v6);
}

uint64_t sub_8F644()
{
  sub_AB40();
  sub_93458();
  v2 = swift_task_alloc();
  *(v1 + 240) = v2;
  *v2 = v1;
  sub_9346C(v2);

  return sub_2D78C(5, v0, v3);
}

uint64_t sub_8F6E4()
{
  sub_5950();
  sub_AAA8();
  v1 = *v0;
  sub_5930();
  *v2 = v1;

  v3 = sub_AA8C();

  return _swift_task_switch(v3, v4, v5);
}

uint64_t sub_8F7C8()
{
  sub_25654();
  v1 = *(v0 + 232);
  sub_9342C();
  v2 = sub_A3744();
  sub_9347C(v2);
  v3 = v1;
  v4 = swift_task_alloc();
  *(v0 + 248) = v4;
  *v4 = v0;
  v5 = sub_933EC(v4);

  return sub_87A40(v5, v6, v7, v8);
}

uint64_t sub_8F880()
{
  sub_AB40();
  v2 = v1;
  v4 = v3;
  sub_AAA8();
  v6 = *(v5 + 232);
  v7 = *(v5 + 56);
  v8 = *v0;
  sub_5930();
  *v9 = v8;

  sub_A8A8(v4, v2 & 1);

  sub_1085C(v7, &qword_DB5A8, &unk_A67C0);
  v10 = sub_AA8C();

  return _swift_task_switch(v10, v11, v12);
}

uint64_t sub_8F9C4()
{
  sub_5950();
  sub_5FDC0();
  swift_task_alloc();
  sub_1A6A0();
  *(v0 + 256) = v1;
  *v1 = v2;
  v1[1] = sub_8FA64;

  return sub_90F8C();
}

uint64_t sub_8FA64()
{
  sub_5950();
  sub_AAA8();
  v1 = *v0;
  sub_5930();
  *v2 = v1;

  v3 = sub_AA8C();

  return _swift_task_switch(v3, v4, v5);
}

uint64_t sub_8FB48()
{
  sub_5950();

  sub_AA9C();

  return v1();
}

uint64_t sub_8FBB4()
{
  sub_5950();
  sub_934E0();
  v1 = *v0;
  sub_5930();
  *v2 = v1;

  v3 = *(v1 + 8);

  return v3();
}

uint64_t sub_8FCB4()
{
  *(v1 + 16) = v0;
  v2 = sub_AA8C();
  return _swift_task_switch(v2, v3, v4);
}

uint64_t sub_8FCDC()
{
  sub_AB40();
  v1 = (*(v0 + 16) + OBJC_IVAR____TtC23DailyBriefingFlowPlugin12WarningsFlow_flowParams);
  v2 = sub_7584(v1 + 13, v1[16]);
  *(v0 + 64) = sub_A1F80(*v2, v1 + 8);
  v3 = v1[19];
  *(v0 + 24) = v3;
  v4 = swift_task_alloc();
  *(v0 + 32) = v4;
  *v4 = v0;
  sub_9346C(v4);

  return sub_2D0B0(6, v3, v5);
}

uint64_t sub_8FDB0()
{
  sub_AB40();
  sub_934E0();
  sub_5930();
  *v2 = v0;
  v3 = *v1;
  sub_25540();
  *v4 = v3;
  *(v0 + 65) = v5;

  v6 = swift_task_alloc();
  *(v0 + 40) = v6;
  *v6 = v3;
  v6[1] = sub_8FEEC;

  return sub_44F0(1);
}

uint64_t sub_8FEEC()
{
  sub_5950();
  sub_AAA8();
  sub_1A690();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 48) = v3;
  *(v1 + 56) = v4;

  v5 = sub_AA8C();

  return _swift_task_switch(v5, v6, v7);
}

uint64_t sub_8FFD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  sub_40250();
  sub_40244();
  v17 = *(v16 + 65);
  v18 = *(v16 + 64);
  v40 = *(v16 + 16);
  v19 = sub_4F034(*(v16 + 48), *(v16 + 56));
  LODWORD(v39) = sub_4ED80(v19);
  sub_2E7A0();
  sub_A4B54(20);

  sub_933C0();
  v41 = v22;
  v42 = v21 | 0xED00002000000000;
  HIDWORD(v39) = (v39 & ~v18) & v17 & 1;
  if ((v39 & ~v18) & v17)
  {
    v20._countAndFlagsBits = 1702195828;
  }

  else
  {
    v20._countAndFlagsBits = 0x65736C6166;
  }

  sub_93578(v20);

  sub_9351C();
  sub_2E7A0();
  sub_A4B54(41);

  if (v18)
  {
    v23._countAndFlagsBits = 1702195828;
  }

  else
  {
    v23._countAndFlagsBits = 0x65736C6166;
  }

  if (v18)
  {
    v24 = 0xE400000000000000;
  }

  else
  {
    v24 = 0xE500000000000000;
  }

  v23._object = v24;
  sub_A46D4(v23);

  v43._countAndFlagsBits = 0xD000000000000015;
  v43._object = 0x80000000000B49A0;
  sub_A46D4(v43);
  if (v17)
  {
    v25._countAndFlagsBits = 1702195828;
  }

  else
  {
    v25._countAndFlagsBits = 0x65736C6166;
  }

  if (v17)
  {
    v26 = 0xE400000000000000;
  }

  else
  {
    v26 = 0xE500000000000000;
  }

  v25._object = v26;
  sub_A46D4(v25);

  v44._countAndFlagsBits = 44;
  v44._object = 0xE100000000000000;
  sub_A46D4(v44);

  v45._countAndFlagsBits = 0x736E497070417369;
  v45._object = 0xEF3A64656C6C6174;
  sub_A46D4(v45);

  sub_2E7A0();
  sub_A4B54(21);

  if (v39)
  {
    v27._countAndFlagsBits = 1702195828;
  }

  else
  {
    v27._countAndFlagsBits = 0x65736C6166;
  }

  if (v39)
  {
    v28 = 0xE400000000000000;
  }

  else
  {
    v28 = 0xE500000000000000;
  }

  v27._object = v28;
  sub_A46D4(v27);

  sub_93540();

  v46._countAndFlagsBits = 0xD000000000000012;
  v46._object = 0x80000000000B4A00;
  sub_A46D4(v46);

  sub_934A4(v41, v29, 0xD00000000000002ALL, 0x80000000000B4830, 0xD000000000000018);

  sub_49144();
  sub_25660();

  return v32(v30, v31, v32, v33, v34, v35, v36, v37, a9, v39, v40, v41, v42, a14, a15, a16);
}

uint64_t sub_90288()
{
  *(v1 + 16) = v0;
  v2 = sub_AA8C();
  return _swift_task_switch(v2, v3, v4);
}

uint64_t sub_902B0()
{
  sub_AB40();
  v1 = v0[2];
  v2 = OBJC_IVAR____TtC23DailyBriefingFlowPlugin12WarningsFlow_flowParams;
  v0[3] = OBJC_IVAR____TtC23DailyBriefingFlowPlugin12WarningsFlow_flowParams;
  v3 = v1 + v2;
  v4 = *(v1 + v2 + 152);
  v0[4] = v4;
  v5 = *sub_7584((v1 + v2 + 104), *(v1 + v2 + 128));
  v6 = sub_2567C();
  v0[5] = v6;
  *v6 = v0;
  v6[1] = sub_9037C;

  return v8(v4, v5, v3 + 64);
}

uint64_t sub_9037C()
{
  sub_25654();
  sub_934E0();
  sub_5930();
  *v2 = v0;
  v3 = *(v0 + 16);
  v4 = *v1;
  sub_25540();
  *v5 = v4;
  *(v0 + 64) = v6;

  v7 = OBJC_IVAR____TtC23DailyBriefingFlowPlugin12WarningsFlow_now;
  v8 = swift_task_alloc();
  *(v0 + 48) = v8;
  *v8 = v4;
  v8[1] = sub_904E0;
  v9 = *(v0 + 32);

  return sub_2D0B0(7, v9, v3 + v7);
}

uint64_t sub_904E0()
{
  sub_5950();
  sub_AAA8();
  sub_1A690();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 65) = v3;

  v4 = sub_AA8C();

  return _swift_task_switch(v4, v5, v6);
}

uint64_t sub_905C8()
{
  sub_5950();
  v2 = v1[2] + v1[3];
  sub_934EC((v2 + 200), *(v2 + 224));
  v3 = sub_2567C();
  v1[7] = v3;
  *v3 = v1;
  v3[1] = sub_90674;
  v4 = v1[4];

  return v6(v4, v0);
}

uint64_t sub_90674()
{
  sub_5950();
  sub_AAA8();
  sub_1A690();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 66) = v3;

  v4 = sub_AA8C();

  return _swift_task_switch(v4, v5, v6);
}

uint64_t sub_9075C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, __int128 a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  sub_40250();
  a22 = v24;
  a23 = v25;
  sub_40244();
  a21 = v23;
  LODWORD(v49) = *(v23 + 66);
  v26 = *(v23 + 65);
  v27 = *(v23 + 64);
  v28 = v26 & (v49 ^ 1);
  v50 = *(v23 + 16);
  *&a12 = 0;
  if (v27)
  {
    v29 = 0xE400000000000000;
  }

  else
  {
    v29 = 0xE500000000000000;
  }

  if (v27)
  {
    v30 = 1702195828;
  }

  else
  {
    v30 = 0x65736C6166;
  }

  *(&a12 + 1) = 0xE000000000000000;
  sub_A4B54(18);

  sub_933C0();
  *&a12 = v32;
  *(&a12 + 1) = v31 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
  HIDWORD(v49) = v27 & v28;
  if ((v27 & v28) != 0)
  {
    v33._countAndFlagsBits = 1702195828;
  }

  else
  {
    v33._countAndFlagsBits = 0x65736C6166;
  }

  if ((v27 & v28) != 0)
  {
    v34 = 0xE400000000000000;
  }

  else
  {
    v34 = 0xE500000000000000;
  }

  v33._object = v34;
  sub_A46D4(v33);

  v51._countAndFlagsBits = 1043148064;
  v51._object = 0xE400000000000000;
  sub_A46D4(v51);
  v35 = a12;
  sub_2E7A0();
  sub_A4B54(44);

  *&a12 = 0xD000000000000011;
  *(&a12 + 1) = 0x80000000000B49C0;
  v52._countAndFlagsBits = v30;
  v52._object = v29;
  sub_A46D4(v52);

  v53._countAndFlagsBits = 0xD000000000000015;
  v53._object = 0x80000000000B49A0;
  sub_A46D4(v53);
  if (v26)
  {
    v36._countAndFlagsBits = 1702195828;
  }

  else
  {
    v36._countAndFlagsBits = 0x65736C6166;
  }

  sub_93578(v36);

  v54._countAndFlagsBits = 8236;
  v54._object = 0xE200000000000000;
  sub_A46D4(v54);
  a12 = v35;

  sub_9355C();

  v37 = a12;
  sub_2E7A0();
  sub_A4B54(16);

  strcpy(&a12, " isNewsStale:");
  HIWORD(a12) = -4864;
  if (v49)
  {
    v38._countAndFlagsBits = 1702195828;
  }

  else
  {
    v38._countAndFlagsBits = 0x65736C6166;
  }

  sub_93578(v38);

  sub_93540();
  a12 = v37;

  sub_9355C();

  sub_934A4(a12, v39, 0xD00000000000002ALL, 0x80000000000B4830, 0xD00000000000001ELL);

  sub_49144();
  sub_25660();

  return v42(v40, v41, v42, v43, v44, v45, v46, v47, a9, v49, v50, a12, *(&a12 + 1), a13, a14, a15);
}

uint64_t sub_909FC()
{
  *(v1 + 16) = v0;
  v2 = sub_AA8C();
  return _swift_task_switch(v2, v3, v4);
}

uint64_t sub_90A24()
{
  sub_5950();
  v1 = v0[2] + OBJC_IVAR____TtC23DailyBriefingFlowPlugin12WarningsFlow_flowParams;
  if (!*(v1 + 16) || *(v1 + 16) == 2 && (!*(v1 + 8) ? (v2 = *v1 == 1) : (v2 = 0), v2))
  {
    v0[3] = *(v1 + 152);
    v5 = swift_task_alloc();
    v0[4] = v5;
    *v5 = v0;
    v5[1] = sub_90B6C;

    return sub_4F0F8();
  }

  else
  {
    sub_810AC(0xD00000000000003ALL, 0x80000000000B4920, 0xD00000000000002ALL, 0x80000000000B4830, 0xD000000000000016, 0x80000000000B4960);
    sub_49144();

    return v3(0);
  }
}

uint64_t sub_90B6C()
{
  sub_25654();
  sub_934E0();
  sub_5930();
  *v2 = v0;
  v3 = *(v0 + 16);
  v4 = *v1;
  sub_25540();
  *v5 = v4;
  *(v0 + 48) = v6;

  v7 = OBJC_IVAR____TtC23DailyBriefingFlowPlugin12WarningsFlow_now;
  v8 = swift_task_alloc();
  *(v0 + 40) = v8;
  *v8 = v4;
  v8[1] = sub_90CD0;
  v9 = *(v0 + 24);

  return sub_2D0B0(5, v9, v3 + v7);
}

uint64_t sub_90CD0()
{
  sub_5950();
  sub_AAA8();
  sub_1A690();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 49) = v3;

  v4 = sub_AA8C();

  return _swift_task_switch(v4, v5, v6);
}

uint64_t sub_90DB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  sub_40250();
  sub_40244();
  v17 = *(v16 + 49);
  v18 = *(v16 + 48);
  v35 = *(v16 + 16);
  sub_A4B54(19);

  sub_933C0();
  v36 = v20;
  v37 = v19 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
  HIDWORD(a10) = (v18 ^ 1) & v17;
  if (HIDWORD(a10))
  {
    v21._countAndFlagsBits = 1702195828;
  }

  else
  {
    v21._countAndFlagsBits = 0x65736C6166;
  }

  if (((v18 ^ 1) & v17) != 0)
  {
    v22 = 0xE400000000000000;
  }

  else
  {
    v22 = 0xE500000000000000;
  }

  v21._object = v22;
  sub_A46D4(v21);

  sub_9351C();
  sub_A4B54(45);

  if (v18)
  {
    v23._countAndFlagsBits = 1702195828;
  }

  else
  {
    v23._countAndFlagsBits = 0x65736C6166;
  }

  sub_93578(v23);

  v38._countAndFlagsBits = 0xD000000000000015;
  v38._object = 0x80000000000B49A0;
  sub_A46D4(v38);
  if (v17)
  {
    v24._countAndFlagsBits = 1702195828;
  }

  else
  {
    v24._countAndFlagsBits = 0x65736C6166;
  }

  sub_93578(v24);

  sub_93540();

  sub_9355C();

  sub_934A4(v36, v25, 0xD00000000000002ALL, 0x80000000000B4830, 0xD000000000000016);

  sub_49144();
  sub_25660();

  return v28(v26, v27, v28, v29, v30, v31, v32, v33, v36, a10, v35, v36, v37, a14, a15, a16);
}

uint64_t sub_90F8C()
{
  sub_5950();
  *(v1 + 338) = v2;
  *(v1 + 337) = v3;
  *(v1 + 456) = v4;
  *(v1 + 464) = v0;
  v5 = sub_A4C34();
  *(v1 + 472) = v5;
  sub_5940(v5);
  *(v1 + 480) = v6;
  *(v1 + 488) = sub_10AAC();
  v7 = sub_A4C24();
  *(v1 + 496) = v7;
  sub_5940(v7);
  *(v1 + 504) = v8;
  *(v1 + 512) = swift_task_alloc();
  *(v1 + 520) = swift_task_alloc();
  v9 = sub_A2EA4();
  *(v1 + 528) = v9;
  sub_5940(v9);
  *(v1 + 536) = v10;
  *(v1 + 544) = sub_10AAC();
  v11 = sub_A3684();
  *(v1 + 552) = v11;
  sub_5940(v11);
  *(v1 + 560) = v12;
  *(v1 + 568) = sub_10AAC();
  v13 = sub_AA8C();

  return _swift_task_switch(v13, v14, v15);
}

uint64_t sub_91130()
{
  sub_59C4();
  v1 = *(v0 + 464);
  v2 = *(v1 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin12WarningsFlow_specExecutionStatus);
  sub_1A2C4(v1 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin12WarningsFlow_flowParams, v0 + 16);
  sub_A2E94();
  v3 = type metadata accessor for DBSiriKitEventSender();
  inited = swift_initStaticObject();
  type metadata accessor for NewsFlow(0);
  v5 = swift_allocObject();
  *(v0 + 368) = v3;
  *(v0 + 376) = &off_D1B20;
  *(v0 + 384) = sub_93328(&qword_DB598, type metadata accessor for DBSiriKitEventSender, &unk_A9488);
  *(v0 + 344) = inited;
  v6 = OBJC_IVAR____TtC23DailyBriefingFlowPlugin8NewsFlow_logger;
  if (qword_DA9E8 != -1)
  {
    swift_once();
  }

  v7 = *(v0 + 544);
  v8 = *(v0 + 536);
  v9 = *(v0 + 528);
  v10 = *(v0 + 337);
  v11 = sub_A43D4();
  v12 = sub_48A4(v11, qword_E0BE8);
  (*(*(v11 - 8) + 16))(v5 + v6, v12, v11);
  v13 = v5 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin8NewsFlow_name;
  *(v13 + 24) = &type metadata for SupportedFeatures;
  *(v13 + 32) = &off_D2110;
  *v13 = 4;
  *(v5 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin8NewsFlow_state) = 3;
  *(v5 + 16) = v2;
  sub_1A2C4(v0 + 16, v5 + 24);
  (*(v8 + 16))(v5 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin8NewsFlow_now, v7, v9);

  if (v10)
  {
    LOBYTE(v14) = 0;
  }

  else
  {
    v14 = sub_92C60(v2)[2];

    if (v14)
    {
      sub_7584((v0 + 80), *(v0 + 104));
      LOBYTE(v14) = sub_A3524();
    }
  }

  v15 = *(v0 + 338);
  (*(*(v0 + 536) + 8))(*(v0 + 544), *(v0 + 528));
  *(v5 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin8NewsFlow_shouldDialog) = v14 & 1;
  sub_A82C((v0 + 344), (v5 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin8NewsFlow_siriKitEventSender));
  sub_1A564(v0 + 16);
  *(v0 + 440) = v5;
  sub_93328(&qword_DFFE8, type metadata accessor for NewsFlow, &unk_ACB18);
  sub_A3644();

  if ((v15 & 1) == 0)
  {
    v27 = sub_93370();
    v28(v27);

    sub_AA9C();
    sub_59E4();

    __asm { BRAA            X1, X16 }
  }

  v17 = *(v0 + 504);
  v16 = *(v0 + 512);
  v18 = *(v0 + 496);
  *(v0 + 576) = OBJC_IVAR____TtC23DailyBriefingFlowPlugin12WarningsFlow_logger;
  sub_810C4(0xD000000000000028, 0x80000000000B4800, 0xD00000000000002ALL, 0x80000000000B4830, 0xD000000000000049, 0x80000000000B4860);
  sub_A4C04();
  sub_A4C14();
  v19 = *(v17 + 8);
  *(v0 + 584) = v19;
  *(v0 + 592) = (v17 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v19(v16, v18);
  *(v0 + 416) = 0;
  *(v0 + 424) = 0;
  *(v0 + 432) = 1;
  sub_A4EB4();
  v20 = swift_task_alloc();
  *(v0 + 600) = v20;
  sub_93328(&qword_DFD78, &type metadata accessor for ContinuousClock, &protocol conformance descriptor for ContinuousClock);
  *v20 = v0;
  v20[1] = sub_9160C;
  sub_59E4();

  return static Task<>.sleep<A>(until:tolerance:clock:)(v21, v22, v23, v24, v25);
}

uint64_t sub_9160C()
{
  sub_25654();
  sub_AAA8();
  v5 = v4;
  sub_25540();
  *v6 = v5;
  v7 = *v2;
  sub_5930();
  *v8 = v7;
  *(v5 + 608) = v0;

  v9 = sub_934C4();
  v10(v9);
  if (v0)
  {
    v3(v0, v1);
    v11 = sub_917EC;
  }

  else
  {
    v3(0, v1);
    v11 = sub_91754;
  }

  return _swift_task_switch(v11, 0, 0);
}

uint64_t sub_91754()
{
  sub_25654();
  v0 = sub_93370();
  v1(v0);

  sub_AA9C();

  return v2();
}

void sub_917EC()
{
  sub_59C4();
  sub_A4B54(58);
  v16._countAndFlagsBits = 0xD000000000000038;
  v16._object = 0x80000000000B48B0;
  sub_A46D4(v16);
  swift_getErrorValue();
  v17._countAndFlagsBits = sub_A4EC4();
  sub_A46D4(v17);

  sub_93590();
  sub_490E0();
  sub_81094(v0, v1, v2, v3, v4, v5);

  sub_93590();
  sub_490E0();
  sub_810AC(v6, v7, v8, v9, v10, v11);

  v12 = sub_93370();
  v13(v12);

  sub_AA9C();
  sub_1A6C8();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_91960()
{
  sub_5950();
  v1[2] = v0;
  v2 = sub_A35B4();
  v1[3] = v2;
  sub_5940(v2);
  v1[4] = v3;
  v1[5] = sub_10AAC();
  v4 = sub_A37A4();
  v1[6] = v4;
  sub_5940(v4);
  v1[7] = v5;
  v1[8] = sub_10AAC();
  v6 = sub_A3784();
  v1[9] = v6;
  sub_5940(v6);
  v1[10] = v7;
  v1[11] = swift_task_alloc();
  v1[12] = swift_task_alloc();
  v1[13] = swift_task_alloc();
  v8 = sub_AA8C();

  return _swift_task_switch(v8, v9, v10);
}

uint64_t sub_91ABC()
{
  sub_5950();
  v1 = v0[2];
  v2 = OBJC_IVAR____TtC23DailyBriefingFlowPlugin12WarningsFlow_flowParams;
  v0[14] = OBJC_IVAR____TtC23DailyBriefingFlowPlugin12WarningsFlow_flowParams;
  sub_934EC((v1 + v2 + 160), *(v1 + v2 + 184));
  v0[15] = sub_5E040();
  v3 = swift_task_alloc();
  v0[16] = v3;
  *v3 = v0;
  v3[1] = sub_91B70;

  return sub_59EA0();
}

uint64_t sub_91B70()
{
  sub_5950();
  sub_AAA8();
  sub_1A690();
  *v2 = v1;
  v3 = *v0;
  sub_5930();
  *v4 = v3;
  *(v6 + 136) = v5;

  v7 = sub_AA8C();

  return _swift_task_switch(v7, v8, v9);
}

void sub_91C70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  sub_40250();
  sub_40244();
  v17 = v16[17];
  v18 = *(v17 + 16);
  if (!v18)
  {
    __break(1u);
    goto LABEL_9;
  }

  v19 = v16[10];
  v20 = *(v19 + 16);
  v21 = v17 + ((*(v19 + 80) + 32) & ~*(v19 + 80));
  v20(v16[13], v21, v16[9]);
  if (v18 == 1)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v22 = *(v16[10] + 72);
  v20(v16[12], v21 + v22, v16[9]);
  if (v18 < 3)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v20(v16[11], v21 + 2 * v22, v16[9]);

  v23 = sub_A3774();
  if (!*(v23 + 16))
  {
LABEL_11:
    __break(1u);
    return;
  }

  v24 = v16[12];
  v49 = v16[11];
  v25 = v16[10];
  v47 = v16[13];
  v48 = v16[9];
  v27 = v16[7];
  v26 = v16[8];
  v28 = v16[5];
  v29 = v16[6];
  v30 = v16[4];
  v45 = v16[3];
  v31 = v16[2] + v16[14];
  (*(v27 + 16))(v26, v23 + ((*(v27 + 80) + 32) & ~*(v27 + 80)), v29);

  sub_A3794();
  (*(v27 + 8))(v26, v29);
  v32 = sub_A35A4();
  v34 = v33;
  (*(v30 + 8))(v28, v45);
  v35 = sub_72CBC((v31 + 64), v32, v34, v24);

  v46 = sub_935A4(v47, v35);

  v36 = *(v25 + 8);
  v36(v49, v48);
  v36(v24, v48);
  v36(v47, v48);

  sub_49144();
  sub_25660();

  v39(v37, v38, v39, v40, v41, v42, v43, v44, v46, v28, v47, v48, v49, a14, a15, a16);
}

uint64_t sub_91ED8()
{
  sub_5950();
  v1[2] = v0;
  v2 = sub_A3784();
  v1[3] = v2;
  sub_5940(v2);
  v1[4] = v3;
  v1[5] = sub_10AAC();
  v4 = sub_AA8C();

  return _swift_task_switch(v4, v5, v6);
}

uint64_t sub_91F7C()
{
  sub_AB40();
  v1 = v0[2];
  v2 = OBJC_IVAR____TtC23DailyBriefingFlowPlugin12WarningsFlow_flowParams;
  v0[6] = OBJC_IVAR____TtC23DailyBriefingFlowPlugin12WarningsFlow_flowParams;
  sub_934EC((v1 + v2 + 160), *(v1 + v2 + 184));
  v0[7] = sub_5E040();
  v3 = sub_92C60(*(v1 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin12WarningsFlow_specExecutionStatus))[2];

  swift_task_alloc();
  sub_1A6A0();
  v0[8] = v4;
  *v4 = v5;
  v4[1] = sub_92064;
  v6 = v0[5];

  return sub_5A664(v6, v3 != 0);
}

uint64_t sub_92064()
{
  sub_5950();
  sub_AAA8();
  v1 = *v0;
  sub_5930();
  *v2 = v1;

  v3 = sub_AA8C();

  return _swift_task_switch(v3, v4, v5);
}

uint64_t sub_92164()
{
  sub_AB40();
  v1 = v0[5];
  v2 = v0[3];
  v3 = v0[4];
  v4 = sub_935A4(v1, _swiftEmptyArrayStorage);
  (*(v3 + 8))(v1, v2);

  sub_49144();

  return v5(v4);
}

uint64_t sub_92208()
{
  sub_5950();
  v1[7] = v0;
  sub_4BF0(&qword_DDCA0, &qword_A9AF0);
  v1[8] = sub_10AAC();
  v2 = sub_A3784();
  v1[9] = v2;
  sub_5940(v2);
  v1[10] = v3;
  v1[11] = sub_10AAC();
  v1[12] = type metadata accessor for LocationWarningTemplatingResult(0);
  v1[13] = sub_10AAC();
  v4 = sub_AA8C();

  return _swift_task_switch(v4, v5, v6);
}

uint64_t sub_92304()
{
  sub_5950();
  v1 = v0[7];
  v2 = OBJC_IVAR____TtC23DailyBriefingFlowPlugin12WarningsFlow_flowParams;
  v0[14] = OBJC_IVAR____TtC23DailyBriefingFlowPlugin12WarningsFlow_flowParams;
  sub_934EC((v1 + v2 + 160), *(v1 + v2 + 184));
  v0[15] = sub_5E040();
  sub_A3904();
  swift_task_alloc();
  sub_1A6A0();
  v0[16] = v3;
  *v3 = v4;
  v3[1] = sub_923C8;

  return sub_5A0DC();
}

uint64_t sub_923C8()
{
  sub_5950();
  sub_AAA8();
  v2 = v1;
  sub_25540();
  *v3 = v2;
  v4 = *v0;
  sub_5930();
  *v5 = v4;

  sub_761C((v2 + 16));
  v6 = sub_AA8C();

  return _swift_task_switch(v6, v7, v8);
}

uint64_t sub_924CC()
{
  sub_25654();
  v1 = v0[8];
  v2 = v0[9];
  sub_92B30(v0[13] + *(v0[12] + 20), v1);
  v3 = sub_CF2C(v1, 1, v2);
  v4 = v0[13];
  if (v3 == 1)
  {
    sub_1085C(v0[8], &qword_DDCA0, &qword_A9AF0);
    v5 = sub_935A4(v4, _swiftEmptyArrayStorage);
  }

  else
  {
    v7 = v0[10];
    v6 = v0[11];
    v8 = v0[9];
    v9 = v0[7] + v0[14];
    (*(v7 + 32))(v6, v0[8], v8);
    v10 = sub_7228C(v6, (v9 + 64));
    v5 = sub_935A4(v4, v10);

    (*(v7 + 8))(v6, v8);
  }

  sub_92BA0(v0[13]);

  sub_49144();

  return v11(v5);
}

uint64_t sub_92638()
{
  v1 = OBJC_IVAR____TtC23DailyBriefingFlowPlugin12WarningsFlow_logger;
  sub_A43D4();
  sub_5908();
  (*(v2 + 8))(v0 + v1);

  sub_1A564(v0 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin12WarningsFlow_flowParams);
  sub_761C((v0 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin12WarningsFlow_name));
  v3 = OBJC_IVAR____TtC23DailyBriefingFlowPlugin12WarningsFlow_now;
  sub_A2EA4();
  sub_5908();
  (*(v4 + 8))(v0 + v3);
  sub_761C((v0 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin12WarningsFlow_siriKitEventSender));
  return v0;
}

uint64_t sub_92700()
{
  sub_92638();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

uint64_t type metadata accessor for WarningsFlow(uint64_t a1)
{
  result = qword_DFEE0;
  if (!qword_DFEE0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_927AC(uint64_t a1)
{
  result = sub_A43D4();
  if (v2 <= 0x3F)
  {
    result = sub_A2EA4();
    if (v3 <= 0x3F)
    {
      return swift_updateClassMetadata2();
    }
  }

  return result;
}

uint64_t sub_9289C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_9294C;

  return Flow.onAsync(input:)(a1, a2, a3);
}

uint64_t sub_9294C()
{
  sub_5950();
  v2 = v1;
  sub_AAA8();
  v3 = *v0;
  sub_5930();
  *v4 = v3;

  sub_49144();

  return v5(v2);
}

uint64_t sub_92A58()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_A648;

  return sub_8DDCC();
}

uint64_t sub_92AF4(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for WarningsFlow(0);

  return Flow<>.exitValue.getter(v3, a2);
}

uint64_t sub_92B30(uint64_t a1, uint64_t a2)
{
  v4 = sub_4BF0(&qword_DDCA0, &qword_A9AF0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_92BA0(uint64_t a1)
{
  v2 = type metadata accessor for LocationWarningTemplatingResult(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_92BFC(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else if (a2)
  {
    v3 = (a2 + 1) & 0xFFFFFFFFFFFFFFFELL;
    v4 = vdupq_n_s64(a2 - 1);
    v5 = xmmword_ABF70;
    v6 = (a3 + 8);
    v7 = vdupq_n_s64(2uLL);
    do
    {
      v8 = vmovn_s64(vcgeq_u64(v4, v5));
      if (v8.i8[0])
      {
        *(v6 - 1) = result;
      }

      if (v8.i8[4])
      {
        *v6 = result;
      }

      v5 = vaddq_s64(v5, v7);
      v6 += 2;
      v3 -= 2;
    }

    while (v3);
  }

  return result;
}

unint64_t *sub_92C60(uint64_t a1)
{
  v2 = a1;
  v3 = *(a1 + 32);
  v4 = ((1 << v3) + 63) >> 6;
  if ((v3 & 0x3Fu) > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v8 = swift_slowAlloc();
      v2 = sub_92EAC(v8, v4, v2);

      return v2;
    }
  }

  __chkstk_darwin(a1);
  v5 = (&v9 - ((8 * v4 + 15) & 0x3FFFFFFFFFFFFFF0));
  sub_92BFC(0, v4, v5);
  v6 = sub_92DC4(v5, v4, v2);
  if (!v1)
  {
    return v6;
  }

  swift_willThrow();
  return v2;
}

unint64_t *sub_92DC4(unint64_t *result, uint64_t a2, uint64_t a3)
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
    if (!*(*(a3 + 56) + v11))
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

unint64_t *sub_92EAC(unint64_t *result, uint64_t a2, uint64_t a3)
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

    v6 = sub_92DC4(v5, a2, a3);

    return v6;
  }

  return result;
}

void *sub_92F24(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    return &_swiftEmptyDictionarySingleton;
  }

  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) != a3)
  {
    sub_4BF0(&qword_DFFE0, qword_AC0A0);
    v8 = sub_A4CC4();
    v9 = v8;
    if (a2 < 1)
    {
      v10 = 0;
    }

    else
    {
      v10 = *a1;
    }

    v11 = 0;
    v12 = v8 + 64;
    while (1)
    {
      if (v10)
      {
        v13 = __clz(__rbit64(v10));
        v10 &= v10 - 1;
        goto LABEL_16;
      }

      v14 = v11;
      do
      {
        v11 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          __break(1u);
LABEL_30:
          __break(1u);
LABEL_31:
          __break(1u);
          JUMPOUT(0x931D4);
        }

        if (v11 >= a2)
        {
          return v9;
        }

        v15 = a1[v11];
        ++v14;
      }

      while (!v15);
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
LABEL_16:
      v16 = v13 | (v11 << 6);
      v17 = *(*(v4 + 48) + v16);
      v29 = *(*(v4 + 56) + v16);
      sub_A4F14();
      sub_A46A4();

      v18 = sub_A4F44();
      v19 = -1 << *(v9 + 32);
      v20 = v18 & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) != 0)
      {
        v22 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v23 = 0;
        v24 = (63 - v19) >> 6;
        do
        {
          if (++v21 == v24 && (v23 & 1) != 0)
          {
            goto LABEL_30;
          }

          v25 = v21 == v24;
          if (v21 == v24)
          {
            v21 = 0;
          }

          v23 |= v25;
          v26 = *(v12 + 8 * v21);
        }

        while (v26 == -1);
        v22 = __clz(__rbit64(~v26)) + (v21 << 6);
      }

      *(v12 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      *(*(v9 + 48) + v22) = v17;
      *(*(v9 + 56) + v22) = v29;
      ++*(v9 + 16);
      if (__OFSUB__(v5--, 1))
      {
        goto LABEL_31;
      }

      if (!v5)
      {
        return v9;
      }
    }
  }

  return v4;
}

uint64_t sub_931E8(uint64_t a1, char a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  sub_A3444();
  v12[3] = &type metadata for CommonSpecs;
  v12[4] = &off_D2128;
  LOBYTE(v12[0]) = a2;
  sub_A760(v12, v11);
  v8 = swift_allocObject();
  *(v8 + 16) = a3;
  *(v8 + 24) = a4;
  sub_A814(v11, v8 + 32);
  v9 = sub_A3434();
  sub_761C(v12);
  return v9;
}

uint64_t sub_932E8()
{

  sub_761C((v0 + 32));

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_93328(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_9339C@<X0>(uint64_t a1@<X8>)
{

  return sub_931E8(131, 1, 0, 0, v1 | (a1 << 32));
}

void sub_934A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  sub_810AC(a1, v6, a3, a4, a5, v5 | 0x8000000000000000);
}

void sub_9351C()
{
  v1._countAndFlagsBits = 0x203E2D2D20;
  v1._object = 0xE500000000000000;

  sub_A46D4(v1);
}

void sub_93540()
{
  v1._countAndFlagsBits = 46;
  v1._object = 0xE100000000000000;

  sub_A46D4(v1);
}

void sub_9355C()
{
  v3._countAndFlagsBits = v0;
  v3._object = v1;

  sub_A46D4(v3);
}

void sub_93578(Swift::String a1)
{
  a1._object = v1;

  sub_A46D4(a1);
}

uint64_t sub_935A4(uint64_t a1, uint64_t a2)
{

  return sub_A3564();
}

_BYTE *storeEnumTagSinglePayload for WarningsDialogs(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x93688);
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

unint64_t sub_936C0(char a1)
{
  v2._countAndFlagsBits = 0xD000000000000010;
  v3 = "ted";
  switch(a1)
  {
    case 1:
      v3 = "LocationDisabled";
      v2._countAndFlagsBits = 0xD000000000000019;
      break;
    case 2:
      v3 = "LocationDisabledForDevice";
      v2._countAndFlagsBits = 0xD000000000000016;
      break;
    case 3:
      v3 = "PodcastAppNotInstalled";
      v2._countAndFlagsBits = 0xD00000000000001CLL;
      break;
    default:
      break;
  }

  v2._object = (v3 | 0x8000000000000000);
  sub_A46D4(v2);

  return 0xD000000000000016;
}

unint64_t sub_9379C(char a1)
{
  result = 0xD000000000000010;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000019;
      break;
    case 2:
      result = 0xD000000000000016;
      break;
    case 3:
      result = 0xD00000000000001CLL;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_93828(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_CFD70;
  v6._object = a2;
  v4 = sub_A4CE4(v3, v6);

  if (v4 >= 4)
  {
    return 4;
  }

  else
  {
    return v4;
  }
}

unint64_t sub_93898@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_93828(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t sub_938C8@<X0>(unint64_t *a1@<X8>)
{
  result = sub_9379C(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_938F8()
{
  result = qword_DFFF0;
  if (!qword_DFFF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DFFF0);
  }

  return result;
}

void *sub_93954(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    goto LABEL_4;
  }

  v2 = sub_556BC(*(a1 + 16), 0);
  sub_95148();
  v4 = v3;
  sub_4CA74(v6);
  if (v4 != v1)
  {
    __break(1u);
LABEL_4:

    return _swiftEmptyArrayStorage;
  }

  return v2;
}

void *sub_939E4(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    goto LABEL_4;
  }

  v3 = sub_55C7C();
  v4 = sub_95294(&v6, (v3 + 32), v2, a1);
  sub_4CA74(v6);
  if (v4 != v2)
  {
    __break(1u);
LABEL_4:

    return _swiftEmptyArrayStorage;
  }

  return v3;
}

void sub_93A74()
{
  sub_25714();
  v0 = sub_A3004();
  sub_591C();
  v2 = v1;
  __chkstk_darwin(v3);
  sub_AA54();
  v6 = v5 - v4;
  v7 = sub_A2D04();
  sub_591C();
  __chkstk_darwin(v8);
  sub_AA54();
  sub_A2FD4();
  sub_4BF0(&qword_DE7C0, &qword_AC620);
  v9 = sub_A2FE4();
  sub_591C();
  v11 = v10;
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_A6E70;
  (*(v11 + 104))(v13 + v12, enum case for Calendar.Component.hour(_:), v9);
  sub_608AC(v13);
  sub_A2F64();

  (*(v2 + 8))(v6, v0);
  sub_A2C84();
  v14 = sub_955A0();
  v15(v14, v7);
  sub_9555C();
  sub_2569C();
}

void sub_93C84()
{
  sub_25714();
  v1 = v0;
  v24 = sub_A3004();
  sub_591C();
  v3 = v2;
  __chkstk_darwin(v4);
  sub_AA54();
  v7 = v6 - v5;
  v23 = sub_A2D04();
  sub_591C();
  __chkstk_darwin(v8);
  sub_AA54();
  v22 = sub_A2EA4();
  sub_591C();
  v10 = v9;
  __chkstk_darwin(v11);
  sub_AA54();
  v14 = v13 - v12;
  sub_4F704(v1, v13 - v12);
  sub_A2FD4();
  sub_4BF0(&qword_DE7C0, &qword_AC620);
  v15 = sub_A2FE4();
  sub_591C();
  v17 = v16;
  v18 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_A6E70;
  (*(v17 + 104))(v19 + v18, enum case for Calendar.Component.hour(_:), v15);
  sub_608AC(v19);
  sub_A2F64();

  (*(v3 + 8))(v7, v24);
  sub_A2C84();
  v20 = sub_955A0();
  v21(v20, v23);
  (*(v10 + 8))(v14, v22);
  sub_9555C();
  sub_2569C();
}

void sub_93F24()
{
  sub_25714();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v44 = sub_A2EA4();
  sub_591C();
  v7 = v6;
  __chkstk_darwin(v8);
  sub_AA54();
  v11 = v10 - v9;
  if (!*(v5 + 16))
  {

    goto LABEL_22;
  }

  v43 = v1;
  if (qword_DA910 != -1)
  {
    sub_95504(&qword_DA910);
  }

  v12 = sub_A43D4();
  sub_48A4(v12, qword_E0920);
  sub_A4B54(28);

  v45._countAndFlagsBits = sub_A4E24();
  sub_A46D4(v45);

  v46._countAndFlagsBits = 0x497472617473202CLL;
  v46._object = 0xEE00203A7865646ELL;
  sub_A46D4(v46);
  v47._countAndFlagsBits = sub_A4E24();
  sub_A46D4(v47);

  sub_95588();
  sub_810AC(v13, v14, v15, v16, v17, v18);

  v19 = type metadata accessor for CurrentWeatherForecast(0);
  (*(v7 + 16))(v11, v5 + *(v19 + 32) + ((*(*(v19 - 8) + 80) + 32) & ~*(*(v19 - 8) + 80)), v44);
  v20 = type metadata accessor for WeatherFilteredConditionsProvider();
  if (v43)
  {
    v21 = sub_9554C();
    v24 = sub_6A11C(v21, v22, v23);
    sub_9554C();
    sub_93C84();
  }

  else
  {
    sub_9554C();
    sub_93A74();
    v24 = v26;
    v27 = sub_9554C();
    v25 = sub_69E8C(v27, v28, v29);
  }

  if (v25 < v24)
  {
    __break(1u);
    goto LABEL_24;
  }

  if (__OFADD__(v25, 1))
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v3 = sub_95458(v24, v25 + 1, v5);
  v20 = v30;
  v5 = v31;
  v24 = v32;
  if (v32)
  {
    sub_A4E64();
    swift_unknownObjectRetain_n();
    v35 = swift_dynamicCastClass();
    if (!v35)
    {
      swift_unknownObjectRelease();
      v35 = _swiftEmptyArrayStorage;
    }

    v36 = v35[2];

    if (!__OFSUB__(v24 >> 1, v5))
    {
      if (v36 == (v24 >> 1) - v5)
      {
        v34 = swift_dynamicCastClass();
        if (!v34)
        {
          swift_unknownObjectRelease();
          v34 = _swiftEmptyArrayStorage;
        }

        goto LABEL_18;
      }

      goto LABEL_26;
    }

LABEL_25:
    __break(1u);
LABEL_26:
    swift_unknownObjectRelease();
  }

  sub_95068(v3, v20, v5, v24);
  v34 = v33;
LABEL_18:
  if (v34[2])
  {
    sub_A4B54(50);

    v48._countAndFlagsBits = sub_A4E24();
    sub_A46D4(v48);

    sub_95588();
    sub_810AC(v37, v38, v39, v40, v41, v42);
    swift_unknownObjectRelease();
  }

  else
  {
    swift_unknownObjectRelease();
  }

  (*(v7 + 8))(v11, v44);
LABEL_22:
  sub_2569C();
}

void *sub_94350()
{
  sub_946BC();
  v1 = v0;
  v2 = sub_1BF68();
  if (v2 != 2)
  {
    if (v2 == 1)
    {
      if (qword_DA910 != -1)
      {
        sub_95504(&qword_DA910);
      }

      v6 = sub_A43D4();
      sub_48A4(v6, qword_E0920);
      sub_95578();
      sub_95524(v7 | 1, v8);
      return v1;
    }

    if (v2)
    {
      type metadata accessor for WeatherConditionEvent(0);
      v14 = sub_26478(v1);
      if (v14)
      {
        v15 = v14;

        sub_A4744();
        if (*(&dword_10 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >> 1)
        {
          sub_A4784();
        }

        sub_A47A4();
        v16 = sub_265A0(v1);

        if (v16)
        {
          v17 = *(v16 + 16);
          v18 = sub_13894(*(v15 + 16));
          v20 = v19;
          if (v18 == sub_13894(v17) && v20 == v21)
          {
          }

          else
          {
            v23 = sub_A4E44();

            if ((v23 & 1) == 0)
            {

              sub_A4744();
              if (*(&dword_10 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >> 1)
              {
                sub_A4784();
              }

              sub_A47A4();
            }
          }

          v1 = sub_266A0(_swiftEmptyArrayStorage);
        }

        else
        {

          return _swiftEmptyArrayStorage;
        }

        return v1;
      }
    }

    else
    {

      if (qword_DA910 != -1)
      {
        sub_95504(&qword_DA910);
      }

      v3 = sub_A43D4();
      sub_48A4(v3, qword_E0920);
      sub_95578();
      sub_95524(v4 - 4, v5);
    }

    return _swiftEmptyArrayStorage;
  }

  if (qword_DA910 != -1)
  {
    sub_95504(&qword_DA910);
  }

  v9 = sub_A43D4();
  sub_48A4(v9, qword_E0920);
  sub_95578();
  sub_95524(v10 | 3, v11);
  type metadata accessor for WeatherConditionEvent(0);
  v12 = sub_266A0(v1);

  return v12;
}

void sub_946BC()
{
  sub_25714();
  v60 = v0;
  v2 = v1;
  v4 = v3;
  v58 = sub_A2EA4();
  sub_591C();
  v6 = v5;
  __chkstk_darwin(v7);
  sub_AA54();
  v57 = v9 - v8;
  v10 = type metadata accessor for CurrentWeatherForecast(0);
  sub_591C();
  v12 = v11;
  __chkstk_darwin(v13);
  sub_AA54();
  v59 = v15 - v14;
  type metadata accessor for WeatherConditionEvent(0);
  sub_80EB8();
  v16 = sub_A4544();
  v17 = *(v4 + 16);
  if (v17)
  {
    v18 = 0x6E61636972727568;
    v19 = v4 + ((*(v12 + 80) + 32) & ~*(v12 + 80));
    v56 = (v6 + 16);
    v62 = *(v12 + 72);
    v20 = v59;
    while (1)
    {
      sub_56784(v19, v20);
      v63 = *(v20 + *(v10 + 28));
      if ((v2 & 1) == 0)
      {
        break;
      }

      v21 = 0xE900000000000065;
      v22 = v18;
      switch(v60)
      {
        case 1:
          v21 = 0xE700000000000000;
          v22 = 0x6F64616E726F74;
          break;
        case 2:
          v22 = 0x6C616369706F7274;
          v21 = 0xED00006D726F7453;
          break;
        case 3:
          v21 = 0xE800000000000000;
          v22 = 0x6472617A7A696C62;
          break;
        case 4:
          v21 = 0xE400000000000000;
          v22 = 1818845544;
          break;
        case 5:
          v22 = 0x737265646E756874;
          v23 = 1836216180;
          goto LABEL_28;
        case 6:
          v21 = 0xE500000000000000;
          v22 = 0x7465656C73;
          break;
        case 7:
          v21 = 0xE500000000000000;
          v24 = 2003791475;
          goto LABEL_24;
        case 8:
          v22 = 0x53676E69776F6C62;
          v25 = 7827310;
          goto LABEL_26;
        case 9:
          v21 = 0xE500000000000000;
          v24 = 1852399986;
          goto LABEL_24;
        case 10:
          v21 = 0xE500000000000000;
          v24 = 1802464627;
          goto LABEL_24;
        case 11:
          v21 = 0xE400000000000000;
          v22 = 1953723748;
          break;
        case 12:
          v21 = 0xE500000000000000;
          v24 = 1684957559;
          goto LABEL_24;
        case 13:
          v21 = 0xE500000000000000;
          v24 = 1734831974;
LABEL_24:
          v22 = v24 & 0xFFFF0000FFFFFFFFLL | 0x7900000000;
          break;
        case 14:
          v21 = 0xE400000000000000;
          v22 = 1702519144;
          break;
        case 15:
          v21 = 0xE600000000000000;
          v22 = 0x7964756F6C63;
          break;
        case 16:
          v22 = 0x6C43796C74726170;
          v23 = 2036626799;
          goto LABEL_28;
        case 17:
          v21 = 0xE500000000000000;
          v22 = 0x7261656C63;
          break;
        case 18:
          v21 = 0xE400000000000000;
          v22 = 1684828003;
          break;
        case 19:
          v21 = 0xE300000000000000;
          v22 = 7630696;
          break;
        case 20:
          v22 = 0x6F6C43646578696DLL;
          v25 = 7955573;
LABEL_26:
          v21 = v25 & 0xFFFFFFFFFFFFLL | 0xEB00000000000000;
          break;
        case 21:
          v22 = 0x656C43646578696DLL;
          v21 = 0xEA00000000007261;
          break;
        case 22:
          v22 = 0x6C69617641746F6ELL;
          v23 = 1701601889;
LABEL_28:
          v21 = v23 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
          break;
        default:
          break;
      }

      v26 = v18;
      v27 = 0xE900000000000065;
      switch(*(v20 + *(v10 + 28)))
      {
        case 1:
          v27 = 0xE700000000000000;
          v26 = 0x6F64616E726F74;
          break;
        case 2:
          v26 = 0x6C616369706F7274;
          v27 = 0xED00006D726F7453;
          break;
        case 3:
          v27 = 0xE800000000000000;
          v26 = 0x6472617A7A696C62;
          break;
        case 4:
          v27 = 0xE400000000000000;
          v26 = 1818845544;
          break;
        case 5:
          v26 = 0x737265646E756874;
          v28 = 1836216180;
          goto LABEL_54;
        case 6:
          v27 = 0xE500000000000000;
          v26 = 0x7465656C73;
          break;
        case 7:
          v27 = 0xE500000000000000;
          v29 = 2003791475;
          goto LABEL_50;
        case 8:
          v26 = 0x53676E69776F6C62;
          v30 = 7827310;
          goto LABEL_52;
        case 9:
          v27 = 0xE500000000000000;
          v29 = 1852399986;
          goto LABEL_50;
        case 0xA:
          v27 = 0xE500000000000000;
          v29 = 1802464627;
          goto LABEL_50;
        case 0xB:
          v27 = 0xE400000000000000;
          v26 = 1953723748;
          break;
        case 0xC:
          v27 = 0xE500000000000000;
          v29 = 1684957559;
          goto LABEL_50;
        case 0xD:
          v27 = 0xE500000000000000;
          v29 = 1734831974;
LABEL_50:
          v26 = v29 & 0xFFFF0000FFFFFFFFLL | 0x7900000000;
          break;
        case 0xE:
          v27 = 0xE400000000000000;
          v26 = 1702519144;
          break;
        case 0xF:
          v27 = 0xE600000000000000;
          v26 = 0x7964756F6C63;
          break;
        case 0x10:
          v26 = 0x6C43796C74726170;
          v28 = 2036626799;
          goto LABEL_54;
        case 0x11:
          v27 = 0xE500000000000000;
          v26 = 0x7261656C63;
          break;
        case 0x12:
          v27 = 0xE400000000000000;
          v26 = 1684828003;
          break;
        case 0x13:
          v27 = 0xE300000000000000;
          v26 = 7630696;
          break;
        case 0x14:
          v26 = 0x6F6C43646578696DLL;
          v30 = 7955573;
LABEL_52:
          v27 = v30 & 0xFFFFFFFFFFFFLL | 0xEB00000000000000;
          break;
        case 0x15:
          v26 = 0x656C43646578696DLL;
          v27 = 0xEA00000000007261;
          break;
        case 0x16:
          v26 = 0x6C69617641746F6ELL;
          v28 = 1701601889;
LABEL_54:
          v27 = v28 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
          break;
        default:
          break;
      }

      if (v22 == v26 && v21 == v27)
      {
      }

      else
      {
        v32 = sub_A4E44();

        if ((v32 & 1) == 0)
        {
          break;
        }
      }

      sub_8DCA0(v20);
LABEL_76:
      v19 += v62;
      if (!--v17)
      {
        goto LABEL_77;
      }
    }

    if (*(v16 + 16) && (v33 = sub_A0E60(v63), (v34 & 1) != 0))
    {
      v35 = *(*(v16 + 56) + 8 * v33);

      sub_8DCA0(v20);
      v36 = *(v35 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin21WeatherConditionEvent_count);
      v37 = __OFADD__(v36, 1);
      v38 = v36 + 1;
      if (v37)
      {
        goto LABEL_80;
      }

      *(v35 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin21WeatherConditionEvent_count) = v38;
    }

    else
    {
      v61 = v17;
      v39 = v18;
      v40 = v2;
      v41 = v20;
      v42 = v10;
      (*v56)(v57, v41 + *(v10 + 32), v58);
      swift_allocObject();
      v43 = sub_2622C(v63, v57, 1);

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v64 = v16;
      v45 = sub_A0E60(v63);
      v47 = *(v16 + 16);
      v48 = (v46 & 1) == 0;
      v49 = v47 + v48;
      if (__OFADD__(v47, v48))
      {
        __break(1u);
LABEL_79:
        __break(1u);
LABEL_80:
        __break(1u);
LABEL_81:
        sub_A4EA4();
        __break(1u);
        JUMPOUT(0x94ED4);
      }

      v50 = v45;
      v51 = v46;
      sub_4BF0(&qword_DFFF8, qword_AC188);
      if (sub_A4C54(isUniquelyReferenced_nonNull_native, v49))
      {
        v52 = sub_A0E60(v63);
        if ((v51 & 1) != (v53 & 1))
        {
          goto LABEL_81;
        }

        v50 = v52;
      }

      v10 = v42;
      v20 = v59;
      v16 = v64;
      if (v51)
      {
        *(v64[7] + 8 * v50) = v43;

        sub_8DCA0(v59);
      }

      else
      {
        v64[(v50 >> 6) + 8] |= 1 << v50;
        *(v64[6] + v50) = v63;
        *(v64[7] + 8 * v50) = v43;

        sub_8DCA0(v59);
        v54 = v64[2];
        v37 = __OFADD__(v54, 1);
        v55 = v54 + 1;
        if (v37)
        {
          goto LABEL_79;
        }

        v64[2] = v55;
      }

      v2 = v40;
      v18 = v39;
      v17 = v61;
    }

    goto LABEL_76;
  }

LABEL_77:
  sub_939E4(v16);
  sub_2569C();
}

void sub_94F8C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
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
      sub_4BF0(&qword_DBB70, &unk_A6E90);
      v7 = swift_allocObject();
      v8 = j__malloc_size(v7);
      v7[2] = v5;
      v7[3] = (2 * ((v8 - 32) / 8)) | 1;
    }

    if (v4 != a3)
    {
      sub_1BBF0();
      swift_arrayInitWithCopy();
      return;
    }

    goto LABEL_9;
  }
}

void sub_95068(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  if (__OFSUB__(a4 >> 1, a3))
  {
    __break(1u);
LABEL_7:
    __break(1u);
    return;
  }

  if (a4 >> 1 != a3)
  {
    sub_558A8((a4 >> 1) - a3, 0);
    if (v4 != a3)
    {
      type metadata accessor for CurrentWeatherForecast(0);
      swift_arrayInitWithCopy();
      return;
    }

    goto LABEL_7;
  }
}

void sub_95148()
{
  sub_25714();
  v3 = v2;
  v5 = v4;
  v6 = v2 + 56;
  v7 = -1 << *(v2 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(v2 + 56);
  if (!v0)
  {
    v13 = 0;
LABEL_20:
    *v5 = v3;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v13;
    v5[4] = v9;
    sub_2569C();
    return;
  }

  v10 = v1;
  if (!v1)
  {
    v13 = 0;
    goto LABEL_20;
  }

  if ((v1 & 0x8000000000000000) == 0)
  {
    v11 = v0;
    v12 = 0;
    v13 = 0;
    while (v12 < v10)
    {
      v14 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        goto LABEL_24;
      }

      if (!v9)
      {
        while (1)
        {
          v15 = v13 + 1;
          if (__OFADD__(v13, 1))
          {
            break;
          }

          if (v15 >= ((63 - v7) >> 6))
          {
            v9 = 0;
            goto LABEL_20;
          }

          v9 = *(v6 + 8 * v15);
          ++v13;
          if (v9)
          {
            goto LABEL_15;
          }
        }

        __break(1u);
        break;
      }

      v15 = v13;
LABEL_15:
      v16 = (*(v3 + 48) + ((v15 << 10) | (16 * __clz(__rbit64(v9)))));
      v17 = v16[1];
      v9 &= v9 - 1;
      *v11 = *v16;
      v11[1] = v17;
      if (v14 == v10)
      {

        v13 = v15;
        goto LABEL_20;
      }

      v11 += 2;

      v12 = v14;
      v13 = v15;
    }

    __break(1u);
LABEL_24:
    __break(1u);
  }

  __break(1u);
}

void *sub_95294(void *result, void *a2, unint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
    v13 = 0;
    v10 = 0;
LABEL_20:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v13;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v13 = 0;
    goto LABEL_20;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    v12 = 0;
    v13 = 0;
    while (v12 < v10)
    {
      v14 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        goto LABEL_24;
      }

      if (!v9)
      {
        while (1)
        {
          v15 = v13 + 1;
          if (__OFADD__(v13, 1))
          {
            break;
          }

          if (v15 >= ((63 - v7) >> 6))
          {
            v9 = 0;
            v10 = v12;
            goto LABEL_20;
          }

          v9 = *(v6 + 8 * v15);
          ++v13;
          if (v9)
          {
            goto LABEL_15;
          }
        }

        __break(1u);
        break;
      }

      v15 = v13;
LABEL_15:
      v16 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      *v11 = *(*(a4 + 56) + ((v15 << 9) | (8 * v16)));
      if (v14 == v10)
      {

        v13 = v15;
        goto LABEL_20;
      }

      ++v11;

      v12 = v14;
      v13 = v15;
    }

    __break(1u);
LABEL_24:
    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t sub_953EC(unint64_t result, uint64_t a2, uint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v3 = *(a3 + 16);
  if (v3 < result || v3 < a2)
  {
    goto LABEL_9;
  }

  if ((a2 & 0x8000000000000000) == 0)
  {
  }

LABEL_10:
  __break(1u);
  return result;
}

unint64_t sub_95458(unint64_t result, uint64_t a2, uint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v3 = *(a3 + 16);
  if (v3 < result || v3 < a2)
  {
    goto LABEL_9;
  }

  if ((a2 & 0x8000000000000000) == 0)
  {
    type metadata accessor for CurrentWeatherForecast(0);
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t sub_95504(uint64_t a1)
{

  return swift_once();
}

void sub_95524(uint64_t a1@<X0>, uint64_t a2@<X8>)
{

  sub_810AC(a1, a2 | 0x8000000000000000, v4 + 42, v2 | 0x8000000000000000, 0xD000000000000020, v3 | 0x8000000000000000);
}

uint64_t sub_9555C()
{
  if (v1)
  {
    v3 = 0;
  }

  else
  {
    v3 = v0;
  }

  if (v3 >= *(v2 - 88))
  {
    return *(v2 - 88);
  }

  else
  {
    return v3;
  }
}

unint64_t sub_955B4(char a1)
{
  v2._countAndFlagsBits = sub_95610(a1);
  sub_A46D4(v2);

  return 0xD000000000000014;
}

unint64_t sub_95610(char a1)
{
  result = 0x6564756C636E6F43;
  switch(a1)
  {
    case 1:
      result = 19279;
      break;
    case 2:
      result = 0x7055746867756143;
      break;
    case 3:
      result = 0x69616D6F44646441;
      break;
    case 4:
      result = 0x6F4465766F6D6552;
      break;
    case 5:
      result = 0xD000000000000015;
      break;
    case 6:
      v3 = 9;
      goto LABEL_12;
    case 7:
      result = 7562585;
      break;
    case 8:
      result = 28494;
      break;
    case 9:
      result = 0xD000000000000012;
      break;
    case 10:
      v3 = 5;
LABEL_12:
      result = v3 | 0xD000000000000012;
      break;
    case 11:
      result = 0x656E696C66664FLL;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_95784(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_CFDF0;
  v6._object = a2;
  v4 = sub_A4CE4(v3, v6);

  if (v4 >= 0xC)
  {
    return 12;
  }

  else
  {
    return v4;
  }
}

unint64_t sub_957F4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_95784(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t sub_95824@<X0>(unint64_t *a1@<X8>)
{
  result = sub_95610(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t getEnumTagSinglePayload for CommonDialogs(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF5)
  {
    if (a2 + 11 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 11) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 12;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xC;
  v5 = v6 - 12;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for CommonDialogs(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 11 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 11) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF5)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF4)
  {
    v6 = ((a2 - 245) >> 8) + 1;
    *result = a2 + 11;
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
        JUMPOUT(0x959ACLL);
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
          *result = a2 + 11;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_959E8()
{
  result = qword_E0000;
  if (!qword_E0000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E0000);
  }

  return result;
}

uint64_t sub_95A4C(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return _swift_task_switch(sub_95A6C, 0, 0);
}

uint64_t sub_95A6C()
{
  sub_5950();
  if (qword_DA9D0 != -1)
  {
    swift_once();
  }

  v1 = sub_A43D4();
  sub_48A4(v1, qword_E0BA0);
  sub_810C4(0xD000000000000010, 0x80000000000B4CD0, 0xD00000000000002ELL, 0x80000000000B4CF0, 0xD000000000000019, 0x80000000000B4D20);
  v2 = swift_task_alloc();
  *(v0 + 32) = v2;
  *v2 = v0;
  v2[1] = sub_95B90;

  return sub_4F0F8();
}

uint64_t sub_95B90()
{
  sub_5950();
  v2 = v1;
  v3 = *v0;
  v4 = *v0;

  if (v2)
  {
    v5 = swift_task_alloc();
    *(v3 + 40) = v5;
    *v5 = v4;
    v5[1] = sub_95D00;

    return sub_4EE58(3, 0);
  }

  else
  {

    return _swift_task_switch(sub_95DF8, 0, 0);
  }
}

uint64_t sub_95D00()
{
  sub_5950();

  return _swift_task_switch(sub_95DF8, 0, 0);
}

uint64_t sub_95DF8()
{
  sub_5950();
  sub_7584(*(v0 + 24), *(*(v0 + 24) + 24));
  sub_4D81C();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_95E60()
{
  v0 = sub_A43D4();
  sub_13310(v0, qword_E0008);
  v1 = sub_48A4(v0, qword_E0008);
  if (qword_DA9D8 != -1)
  {
    swift_once();
  }

  v2 = sub_48A4(v0, qword_E0BB8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_95F28()
{
  sub_5950();
  *(v0 + 88) = v1;
  *(v0 + 24) = v2;
  *(v0 + 32) = v3;
  *(v0 + 16) = v4;
  *(v0 + 40) = sub_4BF0(&qword_DD4A0, &qword_A9200);
  *(v0 + 48) = swift_task_alloc();
  sub_40210();

  return _swift_task_switch(v5, v6, v7);
}

uint64_t sub_95FC8()
{
  v1 = *(v0 + 88);
  v3 = *(v0 + 24);
  v2 = *(v0 + 32);
  v4 = swift_allocObject();
  *(v0 + 56) = v4;
  *(v4 + 16) = v3;
  *(v4 + 24) = v2;
  *(v4 + 32) = v1;
  v5 = swift_task_alloc();
  *(v0 + 64) = v5;
  v5[2] = 0x4018000000000000;
  v5[3] = &unk_AC330;
  v5[4] = v4;
  v5[5] = 0xD00000000000001ELL;
  v5[6] = 0x80000000000B4D40;
  swift_task_alloc();
  sub_1A6A0();
  *(v0 + 72) = v6;
  *v6 = v7;
  v6[1] = sub_96108;
  v8 = *(v0 + 48);

  return withThrowingTaskGroup<A, B>(of:returning:isolation:body:)(v8);
}

uint64_t sub_96108()
{
  sub_5950();
  sub_AAA8();
  v3 = v2;
  v4 = *v1;
  sub_5930();
  *v5 = v4;
  *(v3 + 80) = v0;

  if (!v0)
  {
  }

  sub_40210();

  return _swift_task_switch(v6, v7, v8);
}

uint64_t sub_96218()
{
  sub_5950();
  sub_98AA4(*(v0 + 48), *(v0 + 16), &qword_DD4A0, &qword_A9200);

  sub_AA9C();

  return v1();
}

uint64_t sub_9628C()
{

  if (qword_DAAA0 != -1)
  {
    sub_99198(&qword_DAAA0);
  }

  v1 = *(v0 + 16);
  v2 = sub_A43D4();
  sub_48A4(v2, qword_E0008);
  sub_810AC(0xD000000000000015, 0x80000000000B4D60, 0xD00000000000002CLL, 0x80000000000B4D80, 0xD00000000000001ELL, 0x80000000000B4D40);
  sub_9678C();
  v3 = swift_allocError();
  *v4 = 8;

  *v1 = v3;
  swift_storeEnumTagMultiPayload();

  sub_AA9C();

  return v5();
}

uint64_t sub_963D4(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  *(v4 + 48) = a4;
  *(v4 + 24) = a2;
  *(v4 + 32) = a3;
  *(v4 + 16) = a1;
  return _swift_task_switch(sub_963FC, 0, 0);
}

uint64_t sub_963FC()
{
  sub_5950();
  if (qword_DAAA0 != -1)
  {
    sub_99198(&qword_DAAA0);
  }

  v1 = sub_A43D4();
  sub_48A4(v1, qword_E0008);
  sub_810AC(0xD00000000000001ELL, 0x80000000000B4DB0, 0xD00000000000002CLL, 0x80000000000B4D80, 0xD00000000000001ELL, 0x80000000000B4D40);
  swift_task_alloc();
  sub_1A6A0();
  *(v0 + 40) = v2;
  *v2 = v3;
  v2[1] = sub_96518;
  v4 = *(v0 + 24);
  v5 = *(v0 + 32);
  v6 = *(v0 + 16);
  v7 = *(v0 + 48);

  return sub_967E0(v6, v4, v5, v7);
}

uint64_t sub_96518()
{
  sub_5950();
  sub_AAA8();
  v1 = *v0;
  sub_5930();
  *v2 = v1;

  sub_AA9C();

  return v3();
}

uint64_t sub_96608(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  swift_task_alloc();
  sub_1A6A0();
  *(v2 + 16) = v7;
  *v7 = v8;
  v7[1] = sub_A648;

  return sub_963D4(a1, v4, v5, v6);
}

uint64_t sub_966B8()
{
  swift_task_alloc();
  sub_1A6A0();
  *(v0 + 16) = v1;
  *v1 = v2;
  v1[1] = sub_A648;

  return sub_3B8A0();
}

unint64_t sub_9678C()
{
  result = qword_E0020;
  if (!qword_E0020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E0020);
  }

  return result;
}

uint64_t sub_967E0(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  *(v4 + 80) = a4;
  *(v4 + 24) = a2;
  *(v4 + 32) = a3;
  *(v4 + 16) = a1;
  sub_4BF0(&qword_E0028, &qword_AC348);
  *(v4 + 40) = swift_task_alloc();
  *(v4 + 48) = type metadata accessor for AggregateCommonForecast(0);
  *(v4 + 56) = swift_task_alloc();

  return _swift_task_switch(sub_968B4, 0, 0);
}

uint64_t sub_968B4()
{
  if (*(v0 + 80) >= 2u)
  {
    if (qword_DAAA0 != -1)
    {
      sub_99198(&qword_DAAA0);
    }

    v8 = *(v0 + 16);
    v9 = sub_A43D4();
    sub_48A4(v9, qword_E0008);
    sub_99230("Failed to fetch weather.");
    sub_24824();
    v10 = swift_allocError();
    *v11 = 1;
    *v8 = v10;
    sub_4BF0(&qword_DD4A0, &qword_A9200);
    swift_storeEnumTagMultiPayload();

    sub_AA9C();

    return v12();
  }

  else
  {
    v2 = *(v0 + 24);
    v1 = *(v0 + 32);
    if (qword_DAAA0 != -1)
    {
      sub_99198(&qword_DAAA0);
    }

    v3 = sub_A43D4();
    *(v0 + 64) = sub_48A4(v3, qword_E0008);
    sub_99230("Returning weatherKit response.");
    swift_task_alloc();
    sub_1A6A0();
    *(v0 + 72) = v4;
    *v4 = v5;
    v4[1] = sub_96AC8;
    v6 = *(v0 + 40);

    return sub_96D9C(v6, v2, v1);
  }
}

uint64_t sub_96AC8()
{
  sub_5950();
  sub_AAA8();
  v1 = *v0;
  sub_5930();
  *v2 = v1;

  sub_40210();

  return _swift_task_switch(v3, v4, v5);
}

uint64_t sub_96BB0()
{
  v1 = v0[5];
  v2 = sub_CF2C(v1, 1, v0[6]);
  v3 = v0[2];
  if (v2 == 1)
  {
    sub_11E34(v1, &qword_E0028, &qword_AC348);
    sub_810AC(0xD000000000000018, 0x80000000000B4E20, 0xD00000000000002CLL, 0x80000000000B4D80, 0xD00000000000001FLL, 0x80000000000B4E00);
    sub_9678C();
    v4 = swift_allocError();
    *v5 = 0;
    *v3 = v4;
  }

  else
  {
    v6 = v0[7];
    sub_989BC(v1, v6, type metadata accessor for AggregateCommonForecast);
    sub_97844(v6, v3);
    sub_98464(v6);
  }

  sub_4BF0(&qword_DD4A0, &qword_A9200);
  swift_storeEnumTagMultiPayload();

  sub_AA9C();

  return v7();
}

uint64_t type metadata accessor for AggregateCommonForecast(uint64_t a1)
{
  result = qword_E00B0;
  if (!qword_E00B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_96D9C(uint64_t a1, double a2, double a3)
{
  *(v3 + 56) = a2;
  *(v3 + 64) = a3;
  *(v3 + 48) = a1;
  v4 = sub_4BF0(&qword_E0038, &qword_AC368);
  *(v3 + 72) = v4;
  *(v3 + 80) = *(v4 - 8);
  *(v3 + 88) = swift_task_alloc();
  v5 = sub_4BF0(&qword_E0040, &qword_AC370);
  *(v3 + 96) = v5;
  *(v3 + 104) = *(v5 - 8);
  *(v3 + 112) = swift_task_alloc();
  v6 = sub_4BF0(&qword_E0048, &qword_AC378);
  *(v3 + 120) = v6;
  *(v3 + 128) = *(v6 - 8);
  *(v3 + 136) = swift_task_alloc();
  v7 = sub_4BF0(&qword_E0050, &qword_AC380);
  *(v3 + 144) = v7;
  *(v3 + 152) = *(v7 - 8);
  *(v3 + 160) = swift_task_alloc();
  *(v3 + 168) = sub_4BF0(&qword_E0030, &qword_AC360);
  *(v3 + 176) = swift_task_alloc();
  v8 = sub_4BF0(&qword_DE088, qword_A9A40);
  *(v3 + 184) = v8;
  *(v3 + 192) = *(v8 - 8);
  *(v3 + 200) = swift_task_alloc();
  v9 = sub_4BF0(&qword_DE070, &qword_A9A30);
  *(v3 + 208) = v9;
  *(v3 + 216) = *(v9 - 8);
  *(v3 + 224) = swift_task_alloc();
  v10 = sub_A30F4();
  *(v3 + 232) = v10;
  *(v3 + 240) = *(v10 - 8);
  *(v3 + 248) = swift_task_alloc();

  return _swift_task_switch(sub_9710C, 0, 0);
}

uint64_t sub_9710C()
{
  v2 = v0[7];
  v1 = v0[8];
  sub_A3164();
  *(v0 + 32) = sub_A3154();
  v3 = [objc_allocWithZone(CLLocation) initWithLatitude:v2 longitude:v1];
  *(v0 + 33) = v3;
  sub_A3134();
  sub_A3124();
  sub_A3114();
  sub_A3104();
  swift_task_alloc();
  sub_1A6A0();
  *(v0 + 34) = v4;
  *v4 = v5;
  v4[1] = sub_9728C;
  v6 = *(v0 + 31);
  v7 = *(v0 + 28);
  v8 = *(v0 + 25);
  v9 = *(v0 + 22);
  v10 = *(v0 + 20);
  v11 = *(v0 + 17);
  v12 = *(v0 + 14);

  return WeatherService.weather<A, B, C, D>(for:including:_:_:_:)(v6, v7, v8, v9, v3, v10, v11, v12);
}

uint64_t sub_9728C()
{
  sub_AAA8();
  v29 = *(v2 + 160);
  sub_10938();
  v4 = *(v3 + 152);
  v28 = *(v5 + 144);
  sub_10938();
  v27 = *(v6 + 136);
  sub_10938();
  v8 = *(v7 + 128);
  v26 = *(v9 + 120);
  sub_10938();
  v25 = *(v10 + 112);
  sub_10938();
  v12 = *(v11 + 104);
  v14 = v13[12];
  v15 = v13[11];
  v16 = v13[10];
  v17 = v13[9];
  v18 = *v1;
  sub_5930();
  *v19 = v18;
  *(v20 + 280) = v0;

  (*(v16 + 8))(v15, v17);
  (*(v12 + 8))(v25, v14);
  (*(v8 + 8))(v27, v26);
  (*(v4 + 8))(v29, v28);
  sub_40210();

  return _swift_task_switch(v21, v22, v23);
}

uint64_t sub_974FC()
{
  v2 = *(v0 + 240);
  v1 = *(v0 + 248);
  v4 = *(v0 + 224);
  v3 = *(v0 + 232);
  v5 = *(v0 + 208);
  v6 = *(v0 + 216);
  v7 = *(v0 + 192);
  v12 = *(v0 + 184);
  v13 = *(v0 + 200);
  v14 = *(v0 + 176);
  v8 = *(v0 + 48);

  (*(v2 + 32))(v8, v1, v3);
  v9 = type metadata accessor for AggregateCommonForecast(0);
  (*(v6 + 32))(v8 + v9[5], v4, v5);
  (*(v7 + 32))(v8 + v9[6], v13, v12);
  sub_98AA4(v14, v8 + v9[7], &qword_E0030, &qword_AC360);
  sub_A924(v8, 0, 1, v9);
  sub_99200();

  sub_AA9C();

  return v10();
}

uint64_t sub_97674()
{
  if (qword_DAAA0 != -1)
  {
    sub_99198(&qword_DAAA0);
  }

  v1 = *(v0 + 264);
  v2 = *(v0 + 48);
  v3 = sub_A43D4();
  sub_48A4(v3, qword_E0008);
  sub_A4B54(40);

  sub_10944();
  v8 = v4;
  swift_getErrorValue();
  v10._countAndFlagsBits = sub_A4EC4();
  sub_A46D4(v10);

  sub_81094(0xD000000000000026, v8, 0xD00000000000002CLL, 0x80000000000B4D80, 0xD000000000000017, 0x80000000000B4F70);

  v5 = type metadata accessor for AggregateCommonForecast(0);
  sub_A924(v2, 1, 1, v5);
  sub_99200();

  sub_AA9C();

  return v6();
}

uint64_t sub_97844@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v121 = a2;
  v128 = sub_4BF0(&qword_DB768, &unk_A9650);
  sub_591C();
  v127 = v3;
  __chkstk_darwin(v4);
  v126 = &v115 - v5;
  v119 = sub_A2EA4();
  sub_591C();
  v118 = v6;
  __chkstk_darwin(v7);
  sub_AA54();
  v135 = v9 - v8;
  v117 = type metadata accessor for WeatherState(0);
  sub_7A14();
  __chkstk_darwin(v10);
  sub_AA54();
  v120 = v12 - v11;
  v122 = sub_A43D4();
  sub_591C();
  v14 = v13;
  __chkstk_darwin(v15);
  sub_AA54();
  v18 = v17 - v16;
  v19 = sub_4BF0(&qword_E0030, &qword_AC360);
  __chkstk_darwin(v19 - 8);
  v21 = &v115 - v20;
  v22 = sub_A31D4();
  sub_591C();
  v24 = v23;
  __chkstk_darwin(v25);
  sub_AA54();
  v28 = v27 - v26;
  v29 = type metadata accessor for CurrentWeatherForecast(0);
  sub_7A14();
  __chkstk_darwin(v30);
  sub_AA54();
  v33 = v32 - v31;
  v34 = type metadata accessor for AggregateCommonForecast(0);
  sub_58F50(a1 + v34[6], v33);
  v123 = v29;
  v35 = *(v29 + 28);
  v134 = v33;
  v124 = *(v33 + v35);
  v139 = 0;
  v36 = v34[7];
  v125 = a1;
  sub_9894C(a1 + v36, v21);
  if (sub_CF2C(v21, 1, v22) == 1)
  {
    sub_11E34(v21, &qword_E0030, &qword_AC360);
    v37 = 0;
    v132 = 0;
    v133 = 0;
    v131 = 0;
    v130 = 0;
    v129 = 0;
  }

  else
  {
    (*(v24 + 32))(v28, v21, v22);
    sub_52400(v140);
    v38 = v140[0];
    v37 = v141;
    v132 = v142;
    v133 = v143;
    v131 = v144;
    v130 = v145;
    v129 = v146;
    (*(v24 + 8))(v28, v22);
    sub_40210();
    sub_98A60(v39, v40, v41, 0);
    v139 = v38;
  }

  v42 = v122;
  if (qword_DAAA0 != -1)
  {
    sub_99198(&qword_DAAA0);
  }

  v43 = sub_48A4(v42, qword_E0008);
  (*(v14 + 16))(v18, v43, v42);
  v147 = 0;
  v148 = 0xE000000000000000;
  sub_A4B54(25);

  sub_10944();
  v137 = 0xD000000000000016;
  v138 = v44;
  v45 = v133;
  v116 = v37;
  if (v133)
  {
    LOBYTE(v147) = v139 & 1;
    v148 = v37;
    v149 = v132;
    v150 = v133;
    v151 = v131;
    v152 = v130;
    v153 = v129;
    v46._countAndFlagsBits = sub_52128();
    object = v46._object;
  }

  else
  {
    object = 0xE300000000000000;
    v46._countAndFlagsBits = 4999502;
  }

  v46._object = object;
  sub_A46D4(v46);

  v154._countAndFlagsBits = 44;
  v154._object = 0xE100000000000000;
  sub_A46D4(v154);
  v49 = v137;
  v48 = v138;
  v137 = 0;
  v138 = 0xE000000000000000;
  sub_A4B54(26);

  sub_10944();
  v137 = 0xD000000000000018;
  v138 = v50;
  if (v45 && (v139 & 1) != 0)
  {
    v51 = 0xE400000000000000;
    v52._countAndFlagsBits = 1702195828;
  }

  else
  {
    v51 = 0xE500000000000000;
    v52._countAndFlagsBits = 0x65736C6166;
  }

  v52._object = v51;
  sub_A46D4(v52);

  v54 = v137;
  v53 = v138;
  v137 = v49;
  v138 = v48;

  v155._countAndFlagsBits = v54;
  v155._object = v53;
  sub_A46D4(v155);

  sub_99260();
  sub_810C4(v55, v56, v57, v58, v59, v60);

  (*(v14 + 8))(v18, v42);
  v61 = sub_59680(v125 + v34[5]);
  v137 = 0;
  v138 = 0xE000000000000000;
  sub_A4B54(47);

  sub_10944();
  v137 = 0xD00000000000002DLL;
  v138 = v62;
  v136 = v61[2];
  v156._countAndFlagsBits = sub_A4E24();
  sub_A46D4(v156);

  sub_99260();
  sub_810AC(v63, v64, v65, v66, v67, v68);

  v69 = v124;
  v70 = sub_984C0(v134 + *(v123 + 32), v61, v124);

  sub_A2E94();
  v71 = [objc_opt_self() fahrenheit];
  v72 = v126;
  v73 = v128;
  sub_A2B64();

  sub_A2B54();
  v75 = v74;
  (*(v127 + 8))(v72, v73);
  v76 = sub_13894(v69);
  v78 = v77;
  v79 = sub_1BF68();
  v80 = _swiftEmptyArrayStorage;
  if (v79)
  {
    v81 = v79;
    v137 = _swiftEmptyArrayStorage;
    sub_7AC94(0, v79 & ~(v79 >> 63), 0);
    if (v81 < 0)
    {
      __break(1u);
      JUMPOUT(0x98408);
    }

    v127 = v78;
    v128 = v76;
    v82 = 0;
    v80 = v137;
    do
    {
      if ((v70 & 0xC000000000000001) != 0)
      {
        v83 = sub_A4B74();
      }

      else
      {
      }

      v84 = *(v83 + 16);

      v85 = 0xE900000000000065;
      v86 = 0x6E61636972727568;
      switch(v84)
      {
        case 1:
          v85 = 0xE700000000000000;
          v86 = 0x6F64616E726F74;
          break;
        case 2:
          v86 = 0x6C616369706F7274;
          v85 = 0xED00006D726F7453;
          break;
        case 3:
          v85 = 0xE800000000000000;
          v86 = 0x6472617A7A696C62;
          break;
        case 4:
          v85 = 0xE400000000000000;
          v86 = 1818845544;
          break;
        case 5:
          v86 = 0x737265646E756874;
          v87 = 1836216180;
          goto LABEL_43;
        case 6:
          v85 = 0xE500000000000000;
          v86 = 0x7465656C73;
          break;
        case 7:
          v85 = 0xE500000000000000;
          v88 = 2003791475;
          goto LABEL_39;
        case 8:
          v86 = 0x53676E69776F6C62;
          v89 = 7827310;
          goto LABEL_41;
        case 9:
          v85 = 0xE500000000000000;
          v88 = 1852399986;
          goto LABEL_39;
        case 10:
          v85 = 0xE500000000000000;
          v88 = 1802464627;
          goto LABEL_39;
        case 11:
          v85 = 0xE400000000000000;
          v86 = 1953723748;
          break;
        case 12:
          v85 = 0xE500000000000000;
          v88 = 1684957559;
          goto LABEL_39;
        case 13:
          v85 = 0xE500000000000000;
          v88 = 1734831974;
LABEL_39:
          v86 = v88 & 0xFFFF0000FFFFFFFFLL | 0x7900000000;
          break;
        case 14:
          v85 = 0xE400000000000000;
          v86 = 1702519144;
          break;
        case 15:
          v85 = 0xE600000000000000;
          v86 = 0x7964756F6C63;
          break;
        case 16:
          v86 = 0x6C43796C74726170;
          v87 = 2036626799;
          goto LABEL_43;
        case 17:
          v85 = 0xE500000000000000;
          v86 = 0x7261656C63;
          break;
        case 18:
          v85 = 0xE400000000000000;
          v86 = 1684828003;
          break;
        case 19:
          v85 = 0xE300000000000000;
          v86 = 7630696;
          break;
        case 20:
          v86 = 0x6F6C43646578696DLL;
          v89 = 7955573;
LABEL_41:
          v85 = v89 & 0xFFFFFFFFFFFFLL | 0xEB00000000000000;
          break;
        case 21:
          v85 = 0xEA00000000007261;
          v86 = 0x656C43646578696DLL;
          break;
        case 22:
          v86 = 0x6C69617641746F6ELL;
          v87 = 1701601889;
LABEL_43:
          v85 = v87 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
          break;
        default:
          break;
      }

      v137 = v80;
      v91 = v80[2];
      v90 = v80[3];
      if (v91 >= v90 >> 1)
      {
        sub_7AC94((v90 > 1), v91 + 1, 1);
        v80 = v137;
      }

      ++v82;
      v80[2] = v91 + 1;
      v92 = &v80[2 * v91];
      v92[4] = v86;
      v92[5] = v85;
    }

    while (v81 != v82);
    v76 = v128;
    v78 = v127;
  }

  v93 = v120;
  (*(v118 + 32))(v120, v135, v119);
  v94 = v117;
  *(v93 + *(v117 + 20)) = v75;
  v95 = (v93 + *(v94 + 24));
  *v95 = v76;
  v95[1] = v78;
  *(v93 + *(v94 + 28)) = v80;
  v96 = v121;
  sub_989BC(v134, v121, type metadata accessor for CurrentWeatherForecast);
  v97 = v139;
  v98 = type metadata accessor for WeatherPreprocessingResult(0);
  *(v96 + v98[5]) = v70;
  v99 = (v96 + v98[6]);
  v100 = v116;
  *v99 = v97;
  v99[1] = v100;
  v101 = v133;
  v99[2] = v132;
  v99[3] = v101;
  v102 = v130;
  v99[4] = v131;
  v99[5] = v102;
  v99[6] = v129;
  sub_989BC(v93, v96 + v98[7], type metadata accessor for WeatherState);
  v103 = sub_991E0();
  sub_98A1C(v103, v104, v105, v106, v107, v108, v109);
  v110 = sub_991E0();
  return sub_98A60(v110, v111, v112, v113);
}

uint64_t sub_98464(uint64_t a1)
{
  v2 = type metadata accessor for AggregateCommonForecast(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *sub_984C0(uint64_t a1, uint64_t a2, int a3)
{
  v15 = a3;
  v14[1] = a2;
  v4 = sub_A2EA4();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_DAAA0 != -1)
  {
    swift_once();
  }

  v8 = sub_A43D4();
  sub_48A4(v8, qword_E0008);
  v17 = 0;
  v18 = 0xE000000000000000;
  sub_A4B54(24);

  v17 = 0xD000000000000016;
  v18 = 0x80000000000B4EE0;
  sub_990F4(&qword_DC9E8, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  v19._countAndFlagsBits = sub_A4E24();
  sub_A46D4(v19);

  sub_810AC(v17, v18, 0xD00000000000002CLL, 0x80000000000B4D80, 0xD000000000000019, 0x80000000000B4F00);

  (*(v5 + 16))(v7, a1, v4);
  v9 = sub_67C20(v7);
  v17 = 0;
  v18 = 0xE000000000000000;
  sub_A4B54(17);

  v17 = 0x57746867694E7369;
  v18 = 0xEF203A776F646E69;
  if (v9 == 1)
  {
    v10._countAndFlagsBits = 1702195828;
  }

  else
  {
    v10._countAndFlagsBits = 0x65736C6166;
  }

  if (v9 == 1)
  {
    v11 = 0xE400000000000000;
  }

  else
  {
    v11 = 0xE500000000000000;
  }

  v10._object = v11;
  sub_A46D4(v10);

  sub_810AC(v17, v18, 0xD00000000000002CLL, 0x80000000000B4D80, 0xD000000000000019, 0x80000000000B4F00);

  type metadata accessor for WeatherFilteredConditionsProvider();
  sub_93F24();
  v12 = sub_94350();

  v17 = 0;
  v18 = 0xE000000000000000;
  sub_A4B54(34);

  v17 = 0xD00000000000001FLL;
  v18 = 0x80000000000B4F20;
  v16 = sub_1BF68();
  v20._countAndFlagsBits = sub_A4E24();
  sub_A46D4(v20);

  v21._countAndFlagsBits = 46;
  v21._object = 0xE100000000000000;
  sub_A46D4(v21);
  sub_810AC(v17, v18, 0xD00000000000002CLL, 0x80000000000B4D80, 0xD000000000000019, 0x80000000000B4F00);

  return v12;
}

void (*sub_9885C(uint64_t a1, uint64_t a2, uint64_t a3))(id *a1)
{
  v7 = sub_991CC(a1, a2, a3);
  sub_1BF6C(v7);
  sub_991B8();
  sub_1BF70();
  if (v6)
  {
    v8 = *(v4 + 8 * v5 + 32);
  }

  else
  {
    v8 = sub_A4B74();
  }

  *v3 = v8;
  return sub_99194;
}

uint64_t (*sub_988D0(uint64_t a1, uint64_t a2, uint64_t a3))()
{
  v5 = sub_991CC(a1, a2, a3);
  sub_1BF6C(v5);
  sub_991B8();
  sub_1BF70();
  if (v4)
  {
  }

  else
  {
    v6 = sub_A4B74();
  }

  *v3 = v6;
  return sub_98944;
}

uint64_t sub_9894C(uint64_t a1, uint64_t a2)
{
  v4 = sub_4BF0(&qword_E0030, &qword_AC360);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_989BC(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_7A14();
  (*(v5 + 32))(a2, a1);
  return a2;
}

void sub_98A1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a4)
  {
  }
}

uint64_t sub_98A60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
  }

  return result;
}

uint64_t sub_98AA4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  sub_4BF0(a3, a4);
  sub_7A14();
  (*(v6 + 32))(a2, a1);
  return a2;
}

void (*sub_98B04(uint64_t a1, uint64_t a2, uint64_t a3))(id *a1)
{
  v7 = sub_991CC(a1, a2, a3);
  sub_1BF6C(v7);
  sub_991B8();
  sub_1BF70();
  if (v6)
  {
    v8 = *(v4 + 8 * v5 + 32);
  }

  else
  {
    v8 = sub_A4B74();
  }

  *v3 = v8;
  return sub_98B78;
}

uint64_t sub_98BA4(uint64_t a1, uint64_t a2, int *a3)
{
  sub_A30F4();
  sub_11F80();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a1;
  }

  else
  {
    sub_4BF0(&qword_DE070, &qword_A9A30);
    sub_11F80();
    if (*(v11 + 84) == a2)
    {
      v8 = v10;
      v12 = a3[5];
    }

    else
    {
      sub_4BF0(&qword_DE088, qword_A9A40);
      sub_11F80();
      if (*(v14 + 84) == a2)
      {
        v8 = v13;
        v12 = a3[6];
      }

      else
      {
        v8 = sub_4BF0(&qword_E0030, &qword_AC360);
        v12 = a3[7];
      }
    }

    v9 = a1 + v12;
  }

  return sub_CF2C(v9, a2, v8);
}

uint64_t sub_98CF4(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  sub_A30F4();
  sub_11F80();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = a1;
  }

  else
  {
    sub_4BF0(&qword_DE070, &qword_A9A30);
    sub_11F80();
    if (*(v13 + 84) == a3)
    {
      v10 = v12;
      v14 = a4[5];
    }

    else
    {
      sub_4BF0(&qword_DE088, qword_A9A40);
      sub_11F80();
      if (*(v16 + 84) == a3)
      {
        v10 = v15;
        v14 = a4[6];
      }

      else
      {
        v10 = sub_4BF0(&qword_E0030, &qword_AC360);
        v14 = a4[7];
      }
    }

    v11 = a1 + v14;
  }

  return sub_A924(v11, a2, a2, v10);
}

void sub_98E38(uint64_t a1)
{
  sub_A30F4();
  if (v1 <= 0x3F)
  {
    sub_98EEC(319);
    if (v2 <= 0x3F)
    {
      sub_98FF0(319);
      if (v3 <= 0x3F)
      {
        sub_9913C(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_98EEC(uint64_t a1)
{
  if (!qword_E00C0)
  {
    sub_A30B4();
    sub_990F4(&qword_E00C8, &type metadata accessor for HourWeather, &protocol conformance descriptor for HourWeather);
    sub_990F4(&qword_E00D0, &type metadata accessor for HourWeather, &protocol conformance descriptor for HourWeather);
    sub_990F4(&qword_E00D8, &type metadata accessor for HourWeather, &protocol conformance descriptor for HourWeather);
    v1 = sub_A3244();
    if (!v2)
    {
      atomic_store(v1, &qword_E00C0);
    }
  }
}

void sub_98FF0(uint64_t a1)
{
  if (!qword_E00E0)
  {
    sub_A3074();
    sub_990F4(&qword_E00E8, &type metadata accessor for DayWeather, &protocol conformance descriptor for DayWeather);
    sub_990F4(&qword_E00F0, &type metadata accessor for DayWeather, &protocol conformance descriptor for DayWeather);
    sub_990F4(&qword_E00F8, &type metadata accessor for DayWeather, &protocol conformance descriptor for DayWeather);
    v1 = sub_A3244();
    if (!v2)
    {
      atomic_store(v1, &qword_E00E0);
    }
  }
}

uint64_t sub_990F4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_9913C(uint64_t a1)
{
  if (!qword_E0100)
  {
    sub_A31D4();
    v1 = sub_A4A24();
    if (!v2)
    {
      atomic_store(v1, &qword_E0100);
    }
  }
}

uint64_t sub_99198(uint64_t a1)
{

  return swift_once();
}

uint64_t sub_99200()
{
}

void sub_99230(uint64_t a1@<X8>)
{

  sub_810AC(v3 + 1, a1 | 0x8000000000000000, v3 + 13, v1 | 0x8000000000000000, 0xD00000000000001FLL, (v2 - 32) | 0x8000000000000000);
}

uint64_t type metadata accessor for DailyBriefingGreetingCATsSimple(uint64_t a1)
{
  result = qword_E0138;
  if (!qword_E0138)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_99354(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_A4354();
  sub_2C1C8();
  v7 = v6;
  __chkstk_darwin(v8);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_4BF0(&qword_DC748, &qword_A8330);
  __chkstk_darwin(v11 - 8);
  sub_2C0F0(a1, &v15 - v12);
  (*(v7 + 16))(v10, a2, v3);
  v13 = sub_A42F4();
  (*(v7 + 8))(a2, v3);
  sub_2C160(a1);
  return v13;
}

uint64_t sub_994B0(uint64_t a1, uint64_t a2)
{
  sub_A4354();
  sub_2C1C8();
  v5 = v4;
  __chkstk_darwin(v6);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_allocObject();
  (*(v5 + 16))(v8, a2, v2);
  v9 = sub_A4304();
  (*(v5 + 8))(a2, v2);
  return v9;
}

uint64_t type metadata accessor for DailyBriefingGreetingCATs(uint64_t a1)
{
  result = qword_E0188;
  if (!qword_E0188)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_99644(uint64_t a1, uint64_t a2, char a3, char a4)
{
  *(v5 + 24) = a2;
  *(v5 + 32) = v4;
  *(v5 + 73) = a4;
  *(v5 + 72) = a3;
  *(v5 + 16) = a1;
  sub_4BF0(&qword_DF4B0, &qword_AC5F0);
  *(v5 + 40) = swift_task_alloc();

  return _swift_task_switch(sub_996EC, 0, 0);
}

uint64_t sub_996EC()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 24);
  sub_4BF0(&qword_DB968, &unk_A8F90);
  v3 = swift_allocObject();
  *(v0 + 48) = v3;
  *(v3 + 16) = xmmword_A6E60;
  *(v3 + 32) = 0x6573616850796164;
  *(v3 + 40) = 0xE800000000000000;
  sub_B8BC(v2, v1, &qword_DF4B0, &qword_AC5F0);
  v4 = sub_A42E4();
  v5 = sub_CF2C(v1, 1, v4);
  v6 = *(v0 + 40);
  if (v5 == 1)
  {
    sub_AD70(*(v0 + 40), &qword_DF4B0, &qword_AC5F0);
    *(v3 + 48) = 0u;
    *(v3 + 64) = 0u;
  }

  else
  {
    *(v3 + 72) = v4;
    v7 = sub_76B0((v3 + 48));
    (*(*(v4 - 8) + 32))(v7, v6, v4);
  }

  v8 = *(v0 + 73);
  v9 = *(v0 + 72);
  *(v3 + 80) = 0xD000000000000011;
  *(v3 + 88) = 0x80000000000B5030;
  *(v3 + 96) = v9;
  *(v3 + 120) = &type metadata for Bool;
  *(v3 + 128) = 0xD000000000000014;
  *(v3 + 136) = 0x80000000000ADB40;
  *(v3 + 168) = &type metadata for Bool;
  *(v3 + 144) = v8;
  v13 = (&async function pointer to dispatch thunk of CATWrapper.execute(catId:parameters:) + async function pointer to dispatch thunk of CATWrapper.execute(catId:parameters:));
  v10 = swift_task_alloc();
  *(v0 + 56) = v10;
  *v10 = v0;
  v10[1] = sub_99908;
  v11 = *(v0 + 16);

  return v13(v11, 0xD00000000000001ELL, 0x80000000000B5010, v3);
}

uint64_t sub_99908()
{
  v2 = *v1;
  *(v2 + 64) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_99A50, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_99A50()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_99B10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_A4354();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_4BF0(&qword_DC748, &qword_A8330);
  __chkstk_darwin(v9 - 8);
  sub_B8BC(a1, &v13 - v10, &qword_DC748, &qword_A8330);
  (*(v6 + 16))(v8, a2, v5);
  v11 = sub_A4274();
  (*(v6 + 8))(a2, v5);
  sub_AD70(a1, &qword_DC748, &qword_A8330);
  return v11;
}

uint64_t sub_99CA4(uint64_t a1)
{
  sub_A3004();
  sub_591C();
  v81 = v3;
  v82 = v2;
  __chkstk_darwin(v2);
  sub_AA54();
  v85 = (v5 - v4);
  v6 = sub_A2D04();
  sub_591C();
  v83 = v7;
  __chkstk_darwin(v8);
  sub_AA54();
  v84 = v10 - v9;
  v11 = sub_4BF0(&qword_DD220, qword_A9B20);
  sub_10A88(v11);
  sub_11FC0();
  __chkstk_darwin(v12);
  v14 = v75 - v13;
  v15 = sub_A2EA4();
  sub_591C();
  v17 = v16;
  v19 = __chkstk_darwin(v18);
  v21 = v75 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v23 = v75 - v22;
  v24 = sub_A43D4();
  sub_591C();
  v26 = v25;
  __chkstk_darwin(v27);
  sub_AA54();
  v30 = v29 - v28;
  if (qword_DA9D0 != -1)
  {
    swift_once();
  }

  v31 = sub_48A4(v24, qword_E0BA0);
  (*(v26 + 16))(v30, v31, v24);
  if (!*(a1 + 48) || (*a1 & 1) == 0)
  {
    goto LABEL_27;
  }

  v79 = v23;
  v77 = v6;
  v32 = objc_allocWithZone(NSUserDefaults);
  v33 = sub_9BAC8(0xD00000000000001BLL, 0x80000000000B50B0);
  v34 = v33;
  v80 = v15;
  if (!v33)
  {
    v88 = 0u;
    v89 = 0u;
LABEL_17:
    v60 = &unk_DB870;
    v61 = &qword_A5CB0;
    v62 = &v88;
LABEL_18:
    sub_794C8(v62, v60, v61);
    goto LABEL_19;
  }

  *&v78 = v33;
  v35 = v33;
  v75[1] = "shouldIncludeAttribution(_:)";
  v15 = sub_A45C4();
  v36 = [v35 objectForKey:v15];
  v76 = v35;

  if (v36)
  {
    sub_A4AB4();
    swift_unknownObjectRelease();
  }

  else
  {
    v86 = 0u;
    v87 = 0u;
  }

  v88 = v86;
  v89 = v87;
  v37 = v79;
  v34 = v78;
  if (!*(&v87 + 1))
  {
    goto LABEL_17;
  }

  sub_4BF0(&qword_DB600, qword_A6838);
  v15 = type metadata for Any;
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_19:
    sub_9BDD4(0xD000000000000027, 0x80000000000B50D0, 0xD00000000000002FLL);
    sub_4BF0(&qword_E0328, &qword_AC608);
    sub_4BF0(&qword_E0330, &unk_AC610);
    v63 = sub_9BD80();
    *(v63 + 16) = xmmword_A6E70;
    v64 = &v15[v63];
    *v64 = 0x6D617473656D6974;
    *(v64 + 1) = 0xE900000000000070;
    sub_A2E94();
    sub_A4544();
    if (!v34)
    {
      v70 = sub_9BDA0();
      v71(v70);

      return 1;
    }

    v65 = v34;
    isa = sub_A4504().super.isa;

    v67 = sub_A45C4();
    [v65 setValue:isa forKey:v67];

LABEL_21:
    v68 = sub_9BDA0();
    v69(v68);
    return 1;
  }

  sub_9C7E4(0x6D617473656D6974, 0xE900000000000070, v86, &v88);

  if (!*(&v89 + 1))
  {
    sub_794C8(&v88, &unk_DB870, &qword_A5CB0);
    sub_A924(v14, 1, 1, v80);
    goto LABEL_25;
  }

  v38 = v80;
  v39 = swift_dynamicCast();
  sub_A924(v14, v39 ^ 1u, 1, v38);
  if (sub_CF2C(v14, 1, v38) == 1)
  {
LABEL_25:
    v60 = &qword_DD220;
    v61 = qword_A9B20;
    v62 = v14;
    goto LABEL_18;
  }

  (*(v17 + 32))(v37, v14, v38);
  sub_A2FD4();
  sub_4BF0(&qword_DE7C0, &qword_AC620);
  v40 = sub_A2FE4();
  sub_591C();
  v42 = v41;
  v43 = sub_9BD80();
  v78 = xmmword_A6E70;
  *(v43 + 16) = xmmword_A6E70;
  v44 = v80;
  (*(v42 + 104))(&type metadata for Any[v43], enum case for Calendar.Component.day(_:), v40);
  sub_608AC(v43);
  sub_A2E94();
  v46 = v84;
  v45 = v85;
  sub_A2F64();

  v48 = *(v17 + 8);
  v47 = v17 + 8;
  v49 = v21;
  v50 = v48;
  v48(v49, v44);
  (*(v81 + 8))(v45, v82);
  v51 = sub_A2C64();
  if ((v52 & 1) == 0)
  {
    v53 = v51;
    if (v51 >= 15)
    {
      sub_4BF0(&qword_E0328, &qword_AC608);
      sub_4BF0(&qword_E0330, &unk_AC610);
      v85 = v50;
      v54 = v44;
      v55 = sub_9BD80();
      *(v55 + 16) = v78;
      v56 = (v55 + v44);
      v82 = v47;
      *v56 = 0x6D617473656D6974;
      v56[1] = 0xE900000000000070;
      v57 = v76;
      sub_A2E94();
      sub_A4544();
      v58 = sub_A4504().super.isa;

      v59 = sub_A45C4();
      [v57 setValue:v58 forKey:v59];

      *&v88 = 0;
      *(&v88 + 1) = 0xE000000000000000;
      sub_A4B54(36);

      *&v88 = 0xD000000000000022;
      *(&v88 + 1) = 0x80000000000B51A0;
      *&v86 = v53;
      v90._countAndFlagsBits = sub_A4E24();
      sub_A46D4(v90);

      sub_810AC(v88, *(&v88 + 1), 0xD00000000000002FLL, 0x80000000000B5100, 0xD00000000000001CLL, 0x80000000000B5130);

      (*(v83 + 8))(v84, v77);
      v85(v37, v54);
      goto LABEL_21;
    }
  }

  sub_9BDD4(0xD00000000000002BLL, 0x80000000000B5170, 0xD00000000000002FLL);

  (*(v83 + 8))(v46, v77);
  v50(v37, v44);
LABEL_27:
  v73 = sub_9BDA0();
  v74(v73);
  return 0;
}

uint64_t sub_9A754(char a1, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  v27 = a8;
  v25[1] = a6;
  v26 = a5;
  v12 = sub_4BF0(&qword_DF4B0, &qword_AC5F0);
  sub_10A88(v12);
  sub_11FC0();
  __chkstk_darwin(v13);
  v15 = v25 - v14;
  v16 = sub_A42E4();
  sub_591C();
  v18 = v17;
  __chkstk_darwin(v19);
  sub_AA54();
  v22 = v21 - v20;
  *(v8 + 16) = 0;
  *(v8 + 24) = a1;

  sub_A42C4();
  (*(v18 + 32))(v8 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin17WeatherAirQuality_airQualityCategoryScale, v22, v16);
  *(v8 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin17WeatherAirQuality_airQualityCategoryIndex) = a4;
  *(v8 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin17WeatherAirQuality_airQualityIndex) = v26;

  if (a7)
  {
    sub_A42C4();
    v23 = 0;
  }

  else
  {
    v23 = 1;
  }

  sub_A924(v15, v23, 1, v16);
  sub_9B9A0(v15, v8 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin17WeatherAirQuality_provider);
  *(v8 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin17WeatherAirQuality_shouldIncludeAttribution) = v27 & 1;
  return v8;
}

uint64_t sub_9A938@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = sub_4BF0(&qword_DF4B0, &qword_AC5F0);
  sub_10A88(v7);
  sub_11FC0();
  __chkstk_darwin(v8);
  v10 = &v26 - v9;
  result = 0xD000000000000015;
  v12 = a1 == 0xD000000000000015 && 0x80000000000AD410 == a2;
  if (v12 || (result = sub_9BD64(0xD000000000000015, 0x80000000000AD410), (result & 1) != 0))
  {
    v13 = *(v3 + 24);
LABEL_7:
    *(a3 + 24) = &type metadata for Bool;
    *a3 = v13;
    return result;
  }

  if (a1 != 0xD000000000000017 || 0x80000000000AD430 != a2)
  {
    result = sub_9BD64(0xD000000000000017, 0x80000000000AD430);
    if ((result & 1) == 0)
    {
      v17 = a1 == 0xD000000000000017 && 0x80000000000AD450 == a2;
      if (v17 || (result = sub_9BD64(0xD000000000000017, 0x80000000000AD450), (result & 1) != 0))
      {
        v18 = OBJC_IVAR____TtC23DailyBriefingFlowPlugin17WeatherAirQuality_airQualityCategoryIndex;
      }

      else
      {
        result = sub_9BDB0();
        if (a1 != result || a2 != v20)
        {
          result = sub_9BD64(result, v20);
          if ((result & 1) == 0)
          {
            v22 = a1 == 0x72656469766F7270 && a2 == 0xE800000000000000;
            if (v22 || (sub_9BD64(0x72656469766F7270, 0xE800000000000000) & 1) != 0)
            {
              sub_9BA58(v3 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin17WeatherAirQuality_provider, v10);
              v23 = sub_A42E4();
              if (sub_CF2C(v10, 1, v23) != 1)
              {
                *(a3 + 24) = v23;
                sub_76B0(a3);
                sub_18594();
                return (*(v24 + 32))();
              }

              result = sub_794C8(v10, &qword_DF4B0, &qword_AC5F0);
            }

            else
            {
              result = 0xD000000000000018;
              v25 = a1 == 0xD000000000000018 && 0x80000000000AD490 == a2;
              if (v25 || (result = sub_9BD64(0xD000000000000018, 0x80000000000AD490), (result & 1) != 0))
              {
                v13 = *(v3 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin17WeatherAirQuality_shouldIncludeAttribution);
                goto LABEL_7;
              }
            }

            *a3 = 0u;
            *(a3 + 16) = 0u;
            return result;
          }
        }

        v18 = OBJC_IVAR____TtC23DailyBriefingFlowPlugin17WeatherAirQuality_airQualityIndex;
      }

      v19 = *(v3 + v18);
      *(a3 + 24) = &type metadata for Double;
      *a3 = v19;
      return result;
    }
  }

  *(a3 + 24) = sub_A42E4();
  sub_76B0(a3);
  sub_18594();
  v16 = *(v15 + 16);

  return v16();
}

unint64_t sub_9AC04(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_CFF30;
  v6._object = a2;
  v4 = sub_A4CE4(v3, v6);

  if (v4 >= 6)
  {
    return 6;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_9AC58(uint64_t a1, uint64_t a2)
{
  result = sub_9BDB0();
  switch(v3)
  {
    case 1:
      result = 0xD000000000000017;
      break;
    case 2:
      result = 0xD000000000000017;
      break;
    case 3:
      return result;
    case 4:
      result = 0x72656469766F7270;
      break;
    case 5:
      result = 0xD000000000000018;
      break;
    default:
      result = 0xD000000000000015;
      break;
  }

  return result;
}

unint64_t sub_9AD58@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_9AC04(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_9AD88@<X0>(uint64_t a1@<X1>, uint64_t *a2@<X8>)
{
  result = sub_9AC58(*v2, a1);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_9ADD0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_9AC50(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_9AE04(uint64_t a1)
{
  v2 = sub_9B94C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_9AE40(uint64_t a1)
{
  v2 = sub_9B94C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_9AE7C()
{
  v1 = OBJC_IVAR____TtC23DailyBriefingFlowPlugin17WeatherAirQuality_airQualityCategoryScale;
  sub_A42E4();
  sub_18594();
  (*(v2 + 8))(v0 + v1);
  sub_794C8(v0 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin17WeatherAirQuality_provider, &qword_DF4B0, &qword_AC5F0);
  return v0;
}

uint64_t sub_9AF00()
{
  sub_9AE7C();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

uint64_t type metadata accessor for WeatherAirQuality(uint64_t a1)
{
  result = qword_E0200;
  if (!qword_E0200)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_9AFAC(uint64_t a1)
{
  sub_A42E4();
  if (v1 <= 0x3F)
  {
    sub_9B330(319);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_9B098(void *a1)
{
  v3 = sub_4BF0(&qword_E0320, &qword_AC600);
  sub_591C();
  v5 = v4;
  sub_11FC0();
  __chkstk_darwin(v6);
  v8 = &v12[-v7];
  sub_7584(a1, a1[3]);
  sub_9B94C();
  sub_A4F64();
  v12[15] = 0;
  sub_5CB0C();
  sub_A4DC4();
  if (!v1)
  {
    v12[14] = 1;
    sub_A42E4();
    sub_9BD4C();
    sub_9BA10(v9, v10, &protocol conformance descriptor for SpeakableString);
    sub_5CB0C();
    sub_A4DF4();
    v12[13] = 2;
    sub_5CB0C();
    sub_A4DD4();
    v12[12] = 3;
    sub_5CB0C();
    sub_A4DD4();
    v12[11] = 4;
    sub_5CB0C();
    sub_A4DA4();
    v12[10] = 5;
    sub_5CB0C();
    sub_A4DC4();
  }

  return (*(v5 + 8))(v8, v3);
}

uint64_t sub_9B2E0(void *a1)
{
  v2 = swift_allocObject();
  sub_9B388(a1);
  return v2;
}

void sub_9B330(uint64_t a1)
{
  if (!qword_E0210)
  {
    sub_A42E4();
    v1 = sub_A4A24();
    if (!v2)
    {
      atomic_store(v1, &qword_E0210);
    }
  }
}

uint64_t sub_9B388(void *a1)
{
  v3 = sub_4BF0(&qword_DF4B0, &qword_AC5F0);
  sub_10A88(v3);
  sub_11FC0();
  __chkstk_darwin(v4);
  v6 = &v29 - v5;
  v7 = sub_A42E4();
  sub_591C();
  v30 = v8;
  __chkstk_darwin(v9);
  sub_AA54();
  v12 = v11 - v10;
  sub_4BF0(&qword_E0310, &qword_AC5F8);
  sub_591C();
  v31 = v14;
  v32 = v13;
  sub_11FC0();
  __chkstk_darwin(v15);
  *(v1 + 16) = 0;
  v16 = a1[3];
  v34 = a1;
  sub_7584(a1, v16);
  sub_9B94C();
  v17 = v33;
  sub_A4F54();
  if (v17)
  {
    v19 = v1;

    type metadata accessor for WeatherAirQuality(0);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v29 = v6;
    v33 = v7;
    v40 = 0;
    v19 = v1;
    *(v1 + 24) = sub_A4D44() & 1;
    v39 = 1;
    sub_9BD4C();
    sub_9BA10(v20, v21, &protocol conformance descriptor for SpeakableString);
    v22 = v33;
    sub_A4D74();
    (*(v30 + 32))(v1 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin17WeatherAirQuality_airQualityCategoryScale, v12, v22);
    v38 = 2;
    sub_A4D54();
    *(v1 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin17WeatherAirQuality_airQualityCategoryIndex) = v23;
    v37 = 3;
    sub_A4D54();
    *(v1 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin17WeatherAirQuality_airQualityIndex) = v24;
    v36 = 4;
    v25 = v29;
    sub_A4D24();
    sub_9B9A0(v25, v1 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin17WeatherAirQuality_provider);
    v35 = 5;
    v26 = sub_A4D44();
    v27 = sub_9BD3C();
    v28(v27);
    *(v1 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin17WeatherAirQuality_shouldIncludeAttribution) = v26 & 1;
  }

  sub_761C(v34);
  return v19;
}

uint64_t sub_9B86C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_9B2E0(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

unint64_t sub_9B94C()
{
  result = qword_E0318;
  if (!qword_E0318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E0318);
  }

  return result;
}

uint64_t sub_9B9A0(uint64_t a1, uint64_t a2)
{
  v4 = sub_4BF0(&qword_DF4B0, &qword_AC5F0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_9BA10(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_9BA58(uint64_t a1, uint64_t a2)
{
  v4 = sub_4BF0(&qword_DF4B0, &qword_AC5F0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

id sub_9BAC8(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = sub_A45C4();
  }

  else
  {
    v3 = 0;
  }

  v4 = [v2 initWithSuiteName:v3];

  return v4;
}

_BYTE *storeEnumTagSinglePayload for WeatherAirQuality.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x9BBF8);
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

unint64_t sub_9BC34()
{
  result = qword_E0338;
  if (!qword_E0338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E0338);
  }

  return result;
}

unint64_t sub_9BC8C()
{
  result = qword_E0340;
  if (!qword_E0340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E0340);
  }

  return result;
}

unint64_t sub_9BCE4()
{
  result = qword_E0348;
  if (!qword_E0348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E0348);
  }

  return result;
}

uint64_t sub_9BD64(uint64_t a1, uint64_t a2)
{

  return sub_A4E44();
}

uint64_t sub_9BD80()
{

  return swift_allocObject();
}

void sub_9BDD4(uint64_t a1, uint64_t a2, uint64_t a3)
{

  sub_810AC(a1, a2, a3, v3 | 0x8000000000000000, 0xD00000000000001CLL, v4 | 0x8000000000000000);
}

void sub_9BDF8()
{
  v1 = *(v0 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin16MeCardDataSource__meCard);
  *(v0 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin16MeCardDataSource__meCard) = 0;
}

uint64_t sub_9BE48()
{
  v1 = OBJC_IVAR____TtC23DailyBriefingFlowPlugin16MeCardDataSource_logger;
  v2 = sub_A43D4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t sub_9BEC8()
{
  sub_9BE48();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

uint64_t type metadata accessor for MeCardDataSource(uint64_t a1)
{
  result = qword_E0388;
  if (!qword_E0388)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_9BF74(uint64_t a1)
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

_BYTE *storeEnumTagSinglePayload for WeatherError(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 8) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF8)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF7)
  {
    v6 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
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
        JUMPOUT(0x9C0DCLL);
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
          *result = a2 + 8;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_9C114(char a1)
{
  strcpy(v2, "WeatherError.");
  v3._countAndFlagsBits = sub_9C178(a1);
  sub_A46D4(v3);

  return v2[0];
}

unint64_t sub_9C178(char a1)
{
  result = 0x5264696C61766E69;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000012;
      break;
    case 2:
    case 6:
      result = 0xD00000000000001DLL;
      break;
    case 3:
      result = 0xD00000000000001ELL;
      break;
    case 4:
      result = 0xD000000000000010;
      break;
    case 5:
      result = 0xD000000000000017;
      break;
    case 7:
      return result;
    case 8:
      result = 0xD000000000000012;
      break;
    default:
      result = 0xD000000000000011;
      break;
  }

  return result;
}

unint64_t sub_9C2C4(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_CFFE0;
  v6._object = a2;
  v4 = sub_A4CE4(v3, v6);

  if (v4 >= 9)
  {
    return 9;
  }

  else
  {
    return v4;
  }
}

unint64_t sub_9C328@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_9C2C4(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t sub_9C358@<X0>(unint64_t *a1@<X8>)
{
  result = sub_9C178(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_9C3A0()
{
  result = qword_E0468;
  if (!qword_E0468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E0468);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for PodcastsDialogs(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x9C4C0);
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

unint64_t sub_9C4F8(char a1)
{
  v2 = 0xEF656D614E707041;
  v3._countAndFlagsBits = 0x7374736163646F50;
  switch(a1)
  {
    case 1:
      v2 = 0x80000000000AD5E0;
      v3._countAndFlagsBits = 0xD000000000000014;
      break;
    case 2:
      break;
    case 3:
      v2 = 0xEF74706D6F725073;
      v3._countAndFlagsBits = 0x77654E656C617453;
      break;
    default:
      v2 = 0x80000000000AD5C0;
      v3._countAndFlagsBits = 0xD000000000000017;
      break;
  }

  v3._object = v2;
  sub_A46D4(v3);

  return 0xD000000000000016;
}

unint64_t sub_9C600(char a1)
{
  result = 0x7374736163646F50;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000014;
      break;
    case 2:
      return result;
    case 3:
      result = 0x77654E656C617453;
      break;
    default:
      result = 0xD000000000000017;
      break;
  }

  return result;
}

unint64_t sub_9C6B8(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_D00D8;
  v6._object = a2;
  v4 = sub_A4CE4(v3, v6);

  if (v4 >= 4)
  {
    return 4;
  }

  else
  {
    return v4;
  }
}

unint64_t sub_9C728@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_9C6B8(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t sub_9C758@<X0>(unint64_t *a1@<X8>)
{
  result = sub_9C600(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_9C788()
{
  result = qword_E0470;
  if (!qword_E0470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E0470);
  }

  return result;
}

double sub_9C7E4@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  if (*(a3 + 16) && (v6 = sub_A0D78(a1, a2), (v7 & 1) != 0))
  {
    v8 = *(a3 + 56) + 32 * v6;

    sub_B924(v8, a4);
  }

  else
  {
    result = 0.0;
    *a4 = 0u;
    a4[1] = 0u;
  }

  return result;
}

double sub_9C848@<D0>(uint64_t a1@<X1>, _OWORD *a2@<X8>, uint64_t a3@<X0>)
{
  if (*(a1 + 16) && (v5 = sub_A0E1C(a3), (v6 & 1) != 0))
  {
    v7 = *(a1 + 56) + 32 * v5;

    sub_B924(v7, a2);
  }

  else
  {
    result = 0.0;
    *a2 = 0u;
    a2[1] = 0u;
  }

  return result;
}

uint64_t sub_9C8AC(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 8;
  }

  v3 = sub_A0E8C(a1, sub_1C90C, sub_A12C0);
  if (v4)
  {
    return *(*(a2 + 56) + v3);
  }

  else
  {
    return 8;
  }
}

uint64_t sub_9C920(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 4;
  }

  v3 = sub_A0E8C(a1, sub_5F5E8, sub_A0FDC);
  if (v4)
  {
    return *(*(a2 + 56) + v3);
  }

  else
  {
    return 4;
  }
}

uint64_t sub_9C994(char a1)
{
  v3 = sub_A4634();
  v1[9] = v3;
  v1[10] = *(v3 - 8);
  v1[11] = swift_task_alloc();
  v4 = swift_task_alloc();
  v1[12] = v4;
  *v4 = v1;
  v4[1] = sub_9CA84;

  return sub_44F0(a1);
}

uint64_t sub_9CA84()
{
  sub_5950();
  sub_AAA8();
  sub_1A690();
  *v2 = v1;
  v1[5] = v0;
  v1[6] = v3;
  v1[7] = v4;
  v5 = *v0;
  sub_5930();
  *v6 = v5;
  *(v8 + 104) = v7;

  v9 = sub_AA8C();

  return _swift_task_switch(v9, v10, v11);
}

uint64_t sub_9CB6C()
{
  sub_59C4();
  v1 = v0[13];
  if (!v1)
  {
    goto LABEL_8;
  }

  v3 = v0[10];
  v2 = v0[11];
  v4 = v0[9];
  sub_A4624();
  sub_A2950();
  v6 = v5;

  (*(v3 + 8))(v2, v4);
  if (v6 >> 60 == 15)
  {
LABEL_7:
    v1 = 0;
LABEL_8:
    v12 = 0;
    v13 = 0;
    goto LABEL_9;
  }

  sub_A2B14();
  swift_allocObject();
  sub_A2B04();
  v7 = sub_A26B4();
  sub_A2A08(v7, v8, v9, v10, v7);
  if (v2)
  {

    sub_A2A8C();
    if (qword_DA9D0 != -1)
    {
      sub_58D8(&qword_DA9D0);
    }

    v11 = sub_A43D4();
    sub_48A4(v11, qword_E0BA0);
    sub_A2A4C();

    sub_10944();
    v0[8] = &type metadata for PodcastLastInvocation;
    sub_4BF0(&qword_E05D0, &qword_ACB90);
    v17._countAndFlagsBits = sub_A4644();
    sub_A46D4(v17);

    sub_A2AA4();
    sub_A29C0(0xD000000000000019, "Unable to encode data from ");

    goto LABEL_7;
  }

  sub_A2A8C();

  v13 = v0[2];
  v12 = v0[3];
  v1 = v0[4];
LABEL_9:

  v14 = v0[1];

  return v14(v13, v12, v1);
}

uint64_t sub_9CD74()
{
  sub_5950();
  v2 = v1;
  v0[6] = v3;
  v4 = sub_A4634();
  v0[7] = v4;
  sub_5940(v4);
  v0[8] = v5;
  v0[9] = sub_10AAC();
  v0[10] = type metadata accessor for DBCalendarState(0);
  v6 = swift_task_alloc();
  v0[11] = v6;
  *v6 = v0;
  sub_A2998(v6);

  return sub_44F0(v2);
}

uint64_t sub_9CE5C()
{
  sub_5950();
  sub_AAA8();
  sub_1A690();
  *v2 = v1;
  sub_A2A38(v3, v4);
  v5 = *v0;
  sub_5930();
  *v6 = v5;
  *(v8 + 96) = v7;

  v9 = sub_AA8C();

  return _swift_task_switch(v9, v10, v11);
}

uint64_t sub_9CF38()
{
  sub_59C4();
  if (v0[12] && (v2 = v0[8], v1 = v0[9], v3 = v0[7], sub_A4624(), sub_A2950(), v5 = v4, , (*(v2 + 8))(v1, v3), v5 >> 60 != 15))
  {
    sub_A2B14();
    swift_allocObject();
    sub_A2B04();
    sub_A275C(&qword_E05E8, type metadata accessor for DBCalendarState, &unk_A9BA8);
    sub_A2AF4();
    v9 = v0[10];
    v10 = v0[6];
    v11 = sub_A2A2C();
    sub_65DDC(v11, v12);

    v7 = v10;
    v8 = 0;
    v6 = v9;
  }

  else
  {
    v6 = v0[10];
    v7 = v0[6];
    v8 = 1;
  }

  sub_A924(v7, v8, 1, v6);

  sub_AA9C();

  return v13();
}

uint64_t sub_9D1CC()
{
  sub_5950();
  v2 = v1;
  v3 = sub_A4634();
  v0[9] = v3;
  sub_5940(v3);
  v0[10] = v4;
  v0[11] = sub_10AAC();
  v5 = swift_task_alloc();
  v0[12] = v5;
  *v5 = v0;
  sub_A2998(v5);

  return sub_44F0(v2);
}

uint64_t sub_9D2A4()
{
  sub_5950();
  sub_AAA8();
  sub_1A690();
  *v2 = v1;
  sub_A2A38(v3, v4);
  v5 = *v0;
  sub_5930();
  *v6 = v5;
  *(v8 + 104) = v7;

  v9 = sub_AA8C();

  return _swift_task_switch(v9, v10, v11);
}

uint64_t sub_9D380(uint64_t a1)
{
  v2 = *(v1 + 104);
  if (!v2)
  {
    v13 = 0;
    goto LABEL_9;
  }

  v4 = *(v1 + 80);
  v3 = *(v1 + 88);
  v5 = *(v1 + 72);
  sub_A4624();
  sub_A2950();
  v7 = v6;

  (*(v4 + 8))(v3, v5);
  if (v7 >> 60 == 15)
  {
LABEL_7:
    v13 = 0;
    v2 = 0;
LABEL_9:
    v14 = 0;
    v15 = 1;
    goto LABEL_10;
  }

  sub_A2B14();
  swift_allocObject();
  sub_A2B04();
  v8 = sub_A2708();
  sub_A2A08(v8, v9, v10, v11, v8);
  if (v3)
  {

    sub_A2A8C();
    if (qword_DA9D0 != -1)
    {
      sub_58D8(&qword_DA9D0);
    }

    v12 = sub_A43D4();
    sub_48A4(v12, qword_E0BA0);
    sub_A4B54(28);

    sub_10944();
    *(v1 + 64) = &type metadata for WarningHistory;
    sub_4BF0(&qword_E05E0, &qword_ACBA0);
    v19._countAndFlagsBits = sub_A4644();
    sub_A46D4(v19);

    sub_A2AA4();
    sub_A29C0(0xD000000000000019, "Unable to encode data from ");

    goto LABEL_7;
  }

  sub_A2A8C();

  v15 = 0;
  v14 = *(v1 + 40);
  v2 = *(v1 + 48);
  v13 = *(v1 + 56);
LABEL_10:

  v16 = *(v1 + 8);

  return v16(v14, v2, v13 | (v15 << 8));
}

BOOL sub_9D5AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  sub_A4F14();
  sub_A46A4();
  v6 = sub_A4F44();
  v7 = ~(-1 << *(a3 + 32));
  do
  {
    v8 = v6 & v7;
    v9 = (1 << (v6 & v7)) & *(a3 + 56 + (((v6 & v7) >> 3) & 0xFFFFFFFFFFFFFF8));
    v10 = v9 != 0;
    if (!v9)
    {
      break;
    }

    v11 = (*(a3 + 48) + 16 * v8);
    if (*v11 == a1 && v11[1] == a2)
    {
      break;
    }

    v13 = sub_A4E44();
    v6 = v8 + 1;
  }

  while ((v13 & 1) == 0);
  return v10;
}

uint64_t sub_9D698(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2)
  {
    v4 = a1;
    sub_A4F14();
    sub_A4F34(v4);
    v5 = sub_A4F44();
    v6 = ~(-1 << *(a2 + 32));
    do
    {
      v7 = v5 & v6;
      v8 = (1 << (v5 & v6)) & *(a2 + 56 + (((v5 & v6) >> 3) & 0xFFFFFFFFFFFFFF8));
      v2 = v8 != 0;
      if (!v8)
      {
        break;
      }

      v5 = v7 + 1;
    }

    while (*(*(a2 + 48) + 4 * v7) != v4);
  }

  return v2;
}

uint64_t sub_9D748()
{
  sub_5950();
  v1[2] = v2;
  v1[3] = v0;
  v3 = sub_A38F4();
  v1[4] = v3;
  sub_5940(v3);
  v1[5] = v4;
  v1[6] = sub_10AC4();
  v1[7] = swift_task_alloc();
  v1[8] = swift_task_alloc();
  v5 = sub_AA8C();

  return _swift_task_switch(v5, v6, v7);
}

void sub_9D804()
{
  v1 = v0[3];
  v2 = OBJC_IVAR____TtC23DailyBriefingFlowPlugin8NewsFlow_state;
  v27._countAndFlagsBits = sub_9DC0C(*(v1 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin8NewsFlow_state));
  sub_A46D4(v27);

  sub_A29EC();
  sub_810AC(v3, v4, v5, v6, v7, v8);

  if (*(v1 + v2) == 4)
  {
    v10 = v0[7];
    v9 = v0[8];
    v11 = v0[4];
    v12 = v0[5];
    sub_A38B4();
    (*(v12 + 16))(v10, v9, v11);
    v13 = (*(v12 + 88))(v10, v11);
    v14 = v0[8];
    if (v13 == enum case for Parse.empty(_:))
    {
      (*(v0[5] + 8))(v0[8], v0[4]);
      *(v1 + v2) = 2;
    }

    else
    {
      v19 = v0[5];
      v18 = v0[6];
      v20 = v0[4];
      sub_A38B4();
      v21 = sub_13BF8(v18);
      v22 = *(v19 + 8);
      v22(v18, v20);
      v22(v14, v20);
      v23 = v0[7];
      v24 = v0[4];
      if (v21 != 3)
      {
        *(v1 + v2) = v21 != 0;
      }

      v22(v23, v24);
    }

    sub_49144();
    sub_1A6AC();

    __asm { BRAA            X2, X16 }
  }

  sub_7584((v0[3] + 128), *(v0[3] + 152));
  v15 = sub_2567C();
  v0[9] = v15;
  *v15 = v0;
  sub_A29A4(v15);
  sub_1A6AC();

  __asm { BR              X3 }
}

uint64_t sub_9DAC0()
{
  sub_AB40();
  v2 = v1;
  v3 = *v0;
  sub_5930();
  *v4 = v3;

  v5 = *(v3 + 8);

  return v5(v2);
}

uint64_t sub_9DC0C(char a1)
{
  if (a1 == 4)
  {
    return 0x676E697469617761;
  }

  if (a1 == 3)
  {
    return 0x6572676F72506E69;
  }

  sub_A4B54(17);
  v2._countAndFlagsBits = 0x6465766965636572;
  v2._object = 0xEE00287475706E49;
  sub_A46D4(v2);
  sub_A4C44();
  v3._countAndFlagsBits = 41;
  v3._object = 0xE100000000000000;
  sub_A46D4(v3);
  return 0;
}

uint64_t sub_9DD0C(uint64_t a1, uint64_t a2)
{
  type metadata accessor for NewsFlow(0);
  sub_A275C(&qword_DFFE8, type metadata accessor for NewsFlow, &unk_ACB18);
  return sub_A3334();
}

uint64_t sub_9DD9C()
{
  sub_5950();
  v1[5] = v2;
  v1[6] = v0;
  sub_4BF0(&qword_DB5A8, &unk_A67C0);
  v1[7] = sub_10AAC();
  v3 = sub_A3744();
  v1[8] = v3;
  sub_5940(v3);
  v1[9] = v4;
  v1[10] = sub_10AAC();
  v5 = sub_AA8C();

  return _swift_task_switch(v5, v6, v7);
}

uint64_t sub_9DE70()
{
  v1 = v0[6];
  v0[11] = OBJC_IVAR____TtC23DailyBriefingFlowPlugin8NewsFlow_logger;
  sub_A4B54(34);

  sub_10944();
  v2 = OBJC_IVAR____TtC23DailyBriefingFlowPlugin8NewsFlow_state;
  v0[12] = OBJC_IVAR____TtC23DailyBriefingFlowPlugin8NewsFlow_state;
  v64._countAndFlagsBits = sub_9DC0C(*(v1 + v2));
  sub_A46D4(v64);

  sub_A2AA4();
  sub_A29EC();
  sub_AB34();
  sub_810AC(v3, v4, v5, v6, v7, v8);

  switch(*(v1 + v2))
  {
    case 1:
      v51 = v0[6];
      sub_A29EC();
      sub_AB34();
      sub_810AC(v52, v53, v54, v55, v56, v57);
      sub_934EC((v51 + 184), *(v51 + 208));
      v0[25] = sub_5DFD0();
      v58 = swift_task_alloc();
      v0[26] = v58;
      *v58 = v0;
      sub_A2998(v58);
      sub_1A6AC();

      return sub_362FC();
    case 2:
      swift_task_alloc();
      sub_1A6A0();
      v0[28] = v23;
      *v23 = v24;
      v25 = sub_9F300;
      goto LABEL_13;
    case 3:
      v26 = v0[6];
      v27 = OBJC_IVAR____TtC23DailyBriefingFlowPlugin8NewsFlow_siriKitEventSender;
      v0[13] = OBJC_IVAR____TtC23DailyBriefingFlowPlugin8NewsFlow_siriKitEventSender;
      v28 = (v26 + v27);
      v29 = sub_7584((v26 + v27), *(v26 + v27 + 24));
      v30 = OBJC_IVAR____TtC23DailyBriefingFlowPlugin8NewsFlow_name;
      v0[14] = OBJC_IVAR____TtC23DailyBriefingFlowPlugin8NewsFlow_name;
      v31 = v26 + v30;
      v32 = *v29;
      v33 = *(v26 + v30 + 24);
      v34 = *(v26 + v30 + 32);
      v35 = sub_7584((v26 + v30), v33);
      sub_4DB28(v35, 17, 0, 0, v32, v33, v34);
      sub_934EC((v26 + 304), *(v26 + 328));
      if ((sub_834E4() & 1) == 0)
      {
        v60 = v0[6];
        v0[16] = v60[22];
        sub_7584(v60 + 16, v60[19]);
        v61 = sub_2567C();
        v0[17] = v61;
        *v61 = v0;
        sub_A29A4(v61);
        sub_1A6AC();

        __asm { BR              X3 }
      }

      sub_A29EC();
      sub_AA40();
      sub_AB34();
      sub_810AC(v36, v37, v38, v39, v40, v41);
      v42 = *sub_7584(v28, v28[3]);
      v43 = *(v31 + 24);
      v44 = *(v31 + 32);
      v45 = sub_A2A2C();
      v47 = sub_7584(v45, v46);
      sub_4DB28(v47, 58, 0xD00000000000001CLL, 0x80000000000B5490, v42, v43, v44);
      swift_task_alloc();
      sub_1A6A0();
      v0[15] = v23;
      *v23 = v48;
      v25 = sub_9E404;
LABEL_13:
      v23[1] = v25;
      sub_1A6AC();

      result = sub_A057C(v49);
      break;
    case 4:
      v13 = v0[6];
      v14 = sub_7584((v13 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin8NewsFlow_siriKitEventSender), *(v13 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin8NewsFlow_siriKitEventSender + 24));
      v15 = (v13 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin8NewsFlow_name);
      v16 = *v14;
      v17 = v15[3];
      v18 = v15[4];
      v19 = sub_7584(v15, v17);
      sub_4DB20(v19, 21, 0xD000000000000039, 0x80000000000B5320, v16, v17, v18);
      if (qword_DA9D0 != -1)
      {
        sub_58D8(&qword_DA9D0);
      }

      v20 = sub_A43D4();
      sub_48A4(v20, qword_E0BA0);
      sub_81094(0xD000000000000039, 0x80000000000B5320, 0xD000000000000021, 0x80000000000B2D40, 0xD000000000000018, 0x80000000000B2D70);
      swift_beginAccess();

      sub_1A6AC();

      __asm { BRAA            X6, X16 }

      return result;
    default:
      swift_task_alloc();
      sub_1A6A0();
      v0[24] = v9;
      *v9 = v10;
      sub_A29F8(v9);
      sub_1A6AC();

      result = sub_9F410();
      break;
  }

  return result;
}

uint64_t sub_9E404()
{
  sub_5950();
  sub_934E0();
  v1 = *v0;
  sub_5930();
  *v2 = v1;

  sub_A298C();

  sub_A2900();

  return v3();
}

uint64_t sub_9E514()
{
  sub_5950();
  sub_AAA8();
  sub_1A690();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 232) = v3;

  v4 = sub_AA8C();

  return _swift_task_switch(v4, v5, v6);
}

uint64_t sub_9E5FC()
{
  v1 = *(v0 + 104);
  v2 = *(v0 + 112);
  if (*(v0 + 232) == 1)
  {
    v3 = *(v0 + 48);
    v4 = (v3 + v2);
    v5 = *sub_7584((v3 + v1), *(v3 + v1 + 24));
    v6 = v4[3];
    v7 = v4[4];
    v8 = sub_7584(v4, v6);
    sub_4DB28(v8, 1, 0, 0, v5, v6, v7);
    sub_934EC((v3 + 224), *(v3 + 248));
    v9 = sub_2567C();
    *(v0 + 144) = v9;
    *v9 = v0;
    v9[1] = sub_9E810;
    v10 = *(v0 + 128);

    return v32(v10, v4);
  }

  else
  {
    v12 = *(v0 + 48);
    v13 = v12 + v2;
    v14 = (v12 + v1);
    sub_AA40();
    v17 = v16 + v15;
    sub_AB34();
    sub_81094(v18, v19, v20, v21, v22, v23);
    sub_934EC(v14, v14[3]);
    v24 = *(v13 + 24);
    v25 = *(v13 + 32);
    v26 = sub_25648();
    v28 = sub_7584(v26, v27);
    sub_4DB28(v28, 58, 0x64656C6261736964, 0xEE00657461747320, v17, v24, v25);
    swift_task_alloc();
    sub_1A6A0();
    *(v0 + 184) = v29;
    *v29 = v30;
    v31 = sub_A29F8(v29);

    return sub_A057C(v31);
  }
}

uint64_t sub_9E810()
{
  sub_5950();
  sub_AAA8();
  sub_1A690();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 233) = v3;

  v4 = sub_AA8C();

  return _swift_task_switch(v4, v5, v6);
}

uint64_t sub_9E8F8()
{
  sub_5950();
  if (*(v0 + 233) == 1)
  {
    sub_AA40();
    sub_AB34();
    sub_810C4(v1, v2, v3, v4, v5, v6);
    v7 = swift_task_alloc();
    *(v0 + 152) = v7;
    *v7 = v0;
    v7[1] = sub_9EA3C;

    return sub_9FF00();
  }

  else
  {
    swift_task_alloc();
    sub_1A6A0();
    *(v0 + 176) = v9;
    *v9 = v10;
    sub_A29F8(v9);

    return sub_9F410();
  }
}

uint64_t sub_9EA3C()
{
  sub_5950();
  sub_AAA8();
  sub_1A690();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 160) = v3;

  v4 = sub_AA8C();

  return _swift_task_switch(v4, v5, v6);
}

uint64_t sub_9EB24()
{
  sub_59C4();
  v1 = v0[20];
  v2 = v0[14];
  v3 = v0[12];
  v5 = v0[7];
  v4 = v0[8];
  v6 = v0[6];
  sub_12180(v0[10]);
  *(v6 + v3) = 4;
  sub_7584((v6 + 264), *(v6 + 288));
  v7 = sub_A2A2C();
  v8(v7);
  sub_A924(v5, 0, 1, v4);
  v9 = v1;
  v10 = swift_task_alloc();
  v0[21] = v10;
  *v10 = v0;
  v10[1] = sub_9EC4C;
  v11 = v0[7];

  return sub_87A40(v1, 0, v6 + v2, v11);
}

uint64_t sub_9EC4C()
{
  sub_AB40();
  v2 = v1;
  v4 = v3;
  sub_AAA8();
  v6 = *(v5 + 160);
  v7 = *(v5 + 56);
  v8 = *v0;
  sub_5930();
  *v9 = v8;

  sub_A8A8(v4, v2 & 1);

  sub_1085C(v7, &qword_DB5A8, &unk_A67C0);
  v10 = sub_AA8C();

  return _swift_task_switch(v10, v11, v12);
}

uint64_t sub_9ED90()
{
  sub_AB40();
  v1 = v0[20];
  v3 = v0[9];
  v2 = v0[10];
  v4 = v0[8];
  sub_A35F4();

  (*(v3 + 8))(v2, v4);

  sub_AA9C();

  return v5();
}

uint64_t sub_9EE30()
{
  sub_5950();
  sub_934E0();
  v1 = *v0;
  sub_5930();
  *v2 = v1;

  sub_A298C();

  sub_A2900();

  return v3();
}

uint64_t sub_9EF40()
{
  sub_5950();
  sub_934E0();
  v1 = *v0;
  sub_5930();
  *v2 = v1;

  sub_A298C();

  sub_A2900();

  return v3();
}

uint64_t sub_9F050()
{
  sub_5950();
  sub_934E0();
  v1 = *v0;
  sub_5930();
  *v2 = v1;

  sub_A298C();

  sub_A2900();

  return v3();
}

uint64_t sub_9F160()
{
  sub_5950();
  sub_AAA8();
  sub_1A690();
  *v2 = v1;
  v3 = *v0;
  sub_5930();
  *v4 = v3;
  *(v6 + 216) = v5;

  v7 = sub_AA8C();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_9F260()
{
  sub_AB40();
  sub_934EC((*(v0 + 48) + OBJC_IVAR____TtC23DailyBriefingFlowPlugin8NewsFlow_siriKitEventSender), *(*(v0 + 48) + OBJC_IVAR____TtC23DailyBriefingFlowPlugin8NewsFlow_siriKitEventSender + 24));
  sub_4D9A0();
  sub_A3654();

  sub_AA9C();

  return v1();
}

uint64_t sub_9F300()
{
  sub_5950();
  sub_934E0();
  v1 = *v0;
  sub_5930();
  *v2 = v1;

  sub_A298C();

  sub_A2900();

  return v3();
}

uint64_t sub_9F410()
{
  sub_5950();
  v1[2] = v2;
  v1[3] = v0;
  sub_4BF0(&qword_DB5A8, &unk_A67C0);
  v1[4] = sub_10AAC();
  v3 = sub_AA8C();

  return _swift_task_switch(v3, v4, v5);
}

uint64_t sub_9F498()
{
  sub_AB40();
  v1 = v0[3];
  if (*(v1 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin8NewsFlow_shouldDialog) == 1)
  {
    sub_A2930();
    sub_810C4(v2, v3, v4, v5, v6, v7);
    v8 = swift_task_alloc();
    v0[5] = v8;
    *v8 = v0;
    v8[1] = sub_9F618;

    return sub_9FC14();
  }

  else
  {
    sub_A2930();
    sub_810AC(v10, v11, v12, v13, v14, v15);
    v16 = sub_A2ABC();
    sub_A2A6C(v16);

    swift_task_alloc();
    sub_1A6A0();
    v0[9] = v17;
    *v17 = v18;
    v17[1] = sub_9FB20;
    v19 = v0[2];

    return sub_A057C(v19);
  }
}

uint64_t sub_9F618()
{
  sub_5950();
  sub_AAA8();
  sub_1A690();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 48) = v3;

  v4 = sub_AA8C();

  return _swift_task_switch(v4, v5, v6);
}

uint64_t sub_9F700()
{
  v1 = v0[6];
  v3 = v0[3];
  v2 = v0[4];
  sub_7584((v3 + 264), *(v3 + 288));
  v4 = OBJC_IVAR____TtC23DailyBriefingFlowPlugin8NewsFlow_name;
  v5 = sub_A3744();
  sub_A924(v2, 1, 1, v5);
  v6 = v1;
  v7 = swift_task_alloc();
  v0[7] = v7;
  *v7 = v0;
  v7[1] = sub_9F7F4;
  v8 = v0[4];

  return sub_87A40(v1, 0, v3 + v4, v8);
}

uint64_t sub_9F7F4()
{
  sub_AB40();
  v2 = v1;
  v4 = v3;
  sub_AAA8();
  v6 = *(v5 + 48);
  v7 = *(v5 + 32);
  v8 = *v0;
  sub_5930();
  *v9 = v8;

  sub_A8A8(v4, v2 & 1);

  sub_1085C(v7, &qword_DB5A8, &unk_A67C0);
  v10 = sub_AA8C();

  return _swift_task_switch(v10, v11, v12);
}

uint64_t sub_9F938()
{
  sub_AB40();
  v1 = v0[3];
  v2 = sub_A2ABC();
  sub_A2A6C(v2);

  swift_task_alloc();
  sub_1A6A0();
  v0[8] = v3;
  *v3 = v4;
  v3[1] = sub_9F9DC;
  v5 = v0[2];

  return sub_A057C(v5);
}

uint64_t sub_9F9DC()
{
  sub_5950();
  sub_AAA8();
  v1 = *v0;
  sub_5930();
  *v2 = v1;

  v3 = sub_AA8C();

  return _swift_task_switch(v3, v4, v5);
}

uint64_t sub_9FAC0()
{
  sub_5950();

  sub_AA9C();

  return v1();
}

uint64_t sub_9FB20()
{
  sub_5950();
  sub_934E0();
  v1 = *v0;
  sub_5930();
  *v2 = v1;

  sub_A298C();

  sub_A2900();

  return v3();
}

uint64_t sub_9FC14()
{
  sub_5950();
  v1[2] = v0;
  v2 = sub_A3784();
  v1[3] = v2;
  sub_5940(v2);
  v1[4] = v3;
  v1[5] = sub_10AAC();
  v4 = sub_AA8C();

  return _swift_task_switch(v4, v5, v6);
}

uint64_t sub_9FCB8()
{
  sub_5950();
  sub_934EC((v0[2] + 184), *(v0[2] + 208));
  v0[6] = sub_5E0E4();
  swift_task_alloc();
  sub_1A6A0();
  v0[7] = v1;
  *v1 = v2;
  v1[1] = sub_9FD60;
  v3 = v0[5];

  return sub_5688C(v3);
}

uint64_t sub_9FD60()
{
  sub_5950();
  sub_AAA8();
  v1 = *v0;
  sub_5930();
  *v2 = v1;

  v3 = sub_AA8C();

  return _swift_task_switch(v3, v4, v5);
}

uint64_t sub_9FE60()
{
  sub_AB40();
  v0 = sub_A3564();
  v1 = sub_25648();
  v2(v1);

  sub_49144();

  return v3(v0);
}

uint64_t sub_9FF00()
{
  sub_5950();
  v1[2] = v0;
  v2 = sub_A35B4();
  v1[3] = v2;
  sub_5940(v2);
  v1[4] = v3;
  v1[5] = sub_10AC4();
  v1[6] = swift_task_alloc();
  v4 = sub_A37A4();
  v1[7] = v4;
  sub_5940(v4);
  v1[8] = v5;
  v1[9] = sub_10AC4();
  v1[10] = swift_task_alloc();
  v6 = sub_A3784();
  v1[11] = v6;
  sub_5940(v6);
  v1[12] = v7;
  v1[13] = sub_10AC4();
  v1[14] = swift_task_alloc();
  v1[15] = swift_task_alloc();
  v8 = sub_AA8C();

  return _swift_task_switch(v8, v9, v10);
}

uint64_t sub_A006C()
{
  sub_5950();
  sub_934EC((v0[2] + 184), *(v0[2] + 208));
  v0[16] = sub_5E0E4();
  v1 = swift_task_alloc();
  v0[17] = v1;
  *v1 = v0;
  sub_A2998(v1);

  return sub_56AAC();
}

uint64_t sub_A010C()
{
  sub_5950();
  sub_AAA8();
  sub_1A690();
  *v2 = v1;
  v3 = *v0;
  sub_5930();
  *v4 = v3;
  *(v6 + 144) = v5;

  v7 = sub_AA8C();

  return _swift_task_switch(v7, v8, v9);
}

void sub_A020C()
{
  v1 = v0[18];
  v2 = *(v1 + 16);
  if (!v2)
  {
    __break(1u);
    goto LABEL_13;
  }

  v3 = v0[12];
  v4 = *(v3 + 16);
  v5 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
  v4(v0[15], v5, v0[11]);
  if (v2 == 1)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v6 = *(v0[12] + 72);
  v4(v0[14], v5 + v6, v0[11]);
  if (v2 < 3)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v7 = v5 + 2 * v6;
  v8 = v0[2];
  v4(v0[13], v7, v0[11]);

  v9 = sub_A3774();
  if (!*(v9 + 16))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v54 = v8;
  v10 = v0[6];
  v11 = v0[3];
  v12 = v0[4];
  v51 = (*(v0[8] + 80) + 32) & ~*(v0[8] + 80);
  v52 = *(v0[8] + 16);
  v52(v0[10], v9 + v51, v0[7]);

  sub_A3794();
  v13 = sub_25648();
  v50 = v14;
  (v14)(v13);
  v53 = sub_A35A4();
  v16 = v15;
  v17 = *(v12 + 8);
  v17(v10, v11);
  v18 = sub_A3774();
  if (!*(v18 + 16))
  {
LABEL_16:
    __break(1u);
    return;
  }

  v19 = v0[9];
  v20 = v0[7];
  v21 = v0[5];
  v48 = v0[3];
  v49 = v16;
  v22 = v0[2];
  v52(v19, v18 + v51, v20);

  sub_A3794();
  v50(v19, v20);
  sub_A35A4();
  v17(v21, v48);
  sub_7584((v54 + 88), *(v22 + 112));
  v23 = sub_A34D4();
  if (v23)
  {
    v31 = sub_A2970(v23, v24, v25, v26, v27, v28, v29, v30, v48, v49, v50, v51, v52, v53);
    sub_724D4(v31, v32, v33, v34, 4, 5);
  }

  else
  {
    v35 = sub_A2970(v23, v24, v25, v26, v54 + 88, v28, v29, v30, v48, v49, v50, v51, v52, v53);
    sub_726A8(v35, v36, v37, v38, v39);
  }

  v41 = v0[14];
  v40 = v0[15];
  v42 = v0[12];
  v43 = v0[11];

  v44 = sub_A3554();

  v45 = *(v42 + 8);
  v46 = sub_25648();
  v45(v46);
  (v45)(v41, v43);
  (v45)(v40, v43);

  sub_49144();

  v47(v44);
}

uint64_t sub_A057C(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  v3 = sub_AA8C();
  return _swift_task_switch(v3, v4, v5);
}

uint64_t sub_A05A4()
{
  sub_AB40();
  v1 = *(v0 + 24);
  v2 = *(v1 + 176);
  v3 = OBJC_IVAR____TtC23DailyBriefingFlowPlugin8NewsFlow_siriKitEventSender;
  v4 = swift_task_alloc();
  *(v0 + 32) = v4;
  *v4 = v0;
  v4[1] = sub_A064C;

  return sub_95A4C(v2, v1 + v3);
}

uint64_t sub_A064C()
{
  sub_5950();
  sub_AAA8();
  v1 = *v0;
  sub_5930();
  *v2 = v1;

  v3 = sub_AA8C();

  return _swift_task_switch(v3, v4, v5);
}

uint64_t sub_A0730()
{
  sub_5950();
  sub_A3664();
  sub_AA9C();

  return v0();
}

uint64_t sub_A0788()
{

  sub_1A564(v0 + 24);
  v1 = OBJC_IVAR____TtC23DailyBriefingFlowPlugin8NewsFlow_logger;
  sub_A43D4();
  sub_5908();
  (*(v2 + 8))(v0 + v1);
  v3 = OBJC_IVAR____TtC23DailyBriefingFlowPlugin8NewsFlow_now;
  sub_A2EA4();
  sub_5908();
  (*(v4 + 8))(v0 + v3);
  sub_761C((v0 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin8NewsFlow_name));
  sub_761C((v0 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin8NewsFlow_siriKitEventSender));
  return v0;
}

uint64_t sub_A0840()
{
  sub_A0788();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

uint64_t type metadata accessor for NewsFlow(uint64_t a1)
{
  result = qword_E04B0;
  if (!qword_E04B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_A08EC(uint64_t a1)
{
  result = sub_A43D4();
  if (v2 <= 0x3F)
  {
    result = sub_A2EA4();
    if (v3 <= 0x3F)
    {
      return swift_updateClassMetadata2();
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for NewsFlow.State(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFC)
  {
    v2 = a2 + 4;
    if (a2 + 4 >= 0xFFFF00)
    {
      v3 = 4;
    }

    else
    {
      v3 = 2;
    }

    if (v2 >> 8 < 0xFF)
    {
      v3 = 1;
    }

    if (v2 >= 0x100)
    {
      v4 = v3;
    }

    else
    {
      v4 = 0;
    }

    switch(v4)
    {
      case 1:
        v5 = a1[1];
        if (!a1[1])
        {
          break;
        }

        return (*a1 | (v5 << 8)) - 4;
      case 2:
        v5 = *(a1 + 1);
        if (*(a1 + 1))
        {
          return (*a1 | (v5 << 8)) - 4;
        }

        break;
      case 3:
        __break(1u);
        JUMPOUT(0xA0AA0);
      case 4:
        v5 = *(a1 + 1);
        if (!v5)
        {
          break;
        }

        return (*a1 | (v5 << 8)) - 4;
      default:
        break;
    }
  }

  v7 = *a1;
  if (v7 >= 3)
  {
    v8 = v7 - 2;
  }

  else
  {
    v8 = 0;
  }

  if (v8 >= 3)
  {
    return v8 - 2;
  }

  else
  {
    return 0;
  }
}

_BYTE *storeEnumTagSinglePayload for NewsFlow.State(_BYTE *result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 4;
  if (a3 + 4 >= 0xFFFF00)
  {
    v4 = 4;
  }

  else
  {
    v4 = 2;
  }

  if (v3 >> 8 < 0xFF)
  {
    v4 = 1;
  }

  if (v3 >= 0x100)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a3 >= 0xFC)
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  if (a2 > 0xFB)
  {
    v7 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
    switch(v6)
    {
      case 1:
        result[1] = v7;
        break;
      case 2:
        *(result + 1) = v7;
        break;
      case 3:
LABEL_25:
        __break(1u);
        JUMPOUT(0xA0B88);
      case 4:
        *(result + 1) = v7;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v6)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_20;
      case 2:
        *(result + 1) = 0;
        goto LABEL_19;
      case 3:
        goto LABEL_25;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_20;
      default:
LABEL_19:
        if (a2)
        {
LABEL_20:
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_A0BB0(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 >= 3)
  {
    return v1 - 2;
  }

  else
  {
    return 0;
  }
}

_BYTE *sub_A0BC4(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 + 2;
  }

  return result;
}

uint64_t sub_A0BE4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_9294C;

  return sub_9D748();
}

uint64_t sub_A0CA0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_A648;

  return sub_9DD9C();
}

uint64_t sub_A0D3C(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for NewsFlow(0);

  return Flow<>.exitValue.getter(v3, a2);
}

unint64_t sub_A0D78(uint64_t a1, uint64_t a2)
{
  sub_A4F14();
  sub_A46A4();
  v4 = sub_A4F44();

  return sub_A0F28(a1, a2, v4);
}

unint64_t sub_A0E1C(uint64_t a1)
{
  v2 = v1;
  v4 = sub_A4AE4(*(v2 + 40));

  return sub_A11FC(a1, v4);
}

uint64_t sub_A0E8C(uint64_t a1, uint64_t (*a2)(uint64_t), uint64_t (*a3)(uint64_t, uint64_t))
{
  sub_A4F14();
  a2(a1);
  sub_A46A4();

  v5 = sub_A4F44();

  return a3(a1, v5);
}

unint64_t sub_A0F28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = ~(-1 << *(v3 + 32));
  for (i = a3 & v6; ((1 << i) & *(v3 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v6)
  {
    v8 = (*(v3 + 48) + 16 * i);
    v9 = *v8 == a1 && v8[1] == a2;
    if (v9 || (sub_A4E44() & 1) != 0)
    {
      break;
    }
  }

  return i;
}

unint64_t sub_A0FDC(char a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    while (1)
    {
      v7 = 0xE800000000000000;
      v8 = 0x7261646E656C6163;
      switch(*(*(v2 + 48) + v4))
      {
        case 1:
          v8 = 0x7265646E696D6572;
          v7 = 0xE900000000000073;
          break;
        case 2:
          v7 = 0xE700000000000000;
          v8 = 0x72656874616577;
          break;
        case 3:
          v7 = 0xE400000000000000;
          v8 = 1936744813;
          break;
        case 4:
          v7 = 0xE700000000000000;
          v8 = 0x74736163646F70;
          break;
        default:
          break;
      }

      v9 = 0xE800000000000000;
      v10 = 0x7261646E656C6163;
      switch(a1)
      {
        case 1:
          v10 = 0x7265646E696D6572;
          v9 = 0xE900000000000073;
          break;
        case 2:
          v9 = 0xE700000000000000;
          v10 = 0x72656874616577;
          break;
        case 3:
          v9 = 0xE400000000000000;
          v10 = 1936744813;
          break;
        case 4:
          v9 = 0xE700000000000000;
          v10 = 0x74736163646F70;
          break;
        default:
          break;
      }

      if (v8 == v10 && v7 == v9)
      {
        break;
      }

      v12 = sub_A4E44();

      if ((v12 & 1) == 0)
      {
        v4 = (v4 + 1) & v6;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_A11FC(uint64_t a1, uint64_t a2)
{
  v3 = ~(-1 << *(v2 + 32));
  for (i = a2 & v3; ((1 << i) & *(v2 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v3)
  {
    sub_80E08(*(v2 + 48) + 40 * i, v7);
    v5 = sub_A4AF4();
    sub_80E64(v7);
    if (v5)
    {
      break;
    }
  }

  return i;
}

unint64_t sub_A12C0(char a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    while (1)
    {
      v7 = 0xE800000000000000;
      v8 = 0x7261646E656C6163;
      switch(*(*(v2 + 48) + v4))
      {
        case 1:
          v7 = 0xE400000000000000;
          v8 = 1937204590;
          break;
        case 2:
          v8 = 0x7265646E696D6572;
          v7 = 0xE900000000000073;
          break;
        case 3:
          v7 = 0xE700000000000000;
          v8 = 0x63696666617274;
          break;
        case 4:
          v7 = 0xE700000000000000;
          v8 = 0x72656874616577;
          break;
        default:
          break;
      }

      v9 = 0xE800000000000000;
      v10 = 0x7261646E656C6163;
      switch(a1)
      {
        case 1:
          v9 = 0xE400000000000000;
          v10 = 1937204590;
          break;
        case 2:
          v10 = 0x7265646E696D6572;
          v9 = 0xE900000000000073;
          break;
        case 3:
          v9 = 0xE700000000000000;
          v10 = 0x63696666617274;
          break;
        case 4:
          v9 = 0xE700000000000000;
          v10 = 0x72656874616577;
          break;
        default:
          break;
      }

      if (v8 == v10 && v7 == v9)
      {
        break;
      }

      v12 = sub_A4E44();

      if ((v12 & 1) == 0)
      {
        v4 = (v4 + 1) & v6;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_A14E0(char a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    while (1)
    {
      v7 = 0xE900000000000065;
      v8 = 0x6E61636972727568;
      switch(*(*(v2 + 48) + v4))
      {
        case 1:
          v7 = 0xE700000000000000;
          v8 = 0x6F64616E726F74;
          break;
        case 2:
          v8 = 0x6C616369706F7274;
          v7 = 0xED00006D726F7453;
          break;
        case 3:
          v7 = 0xE800000000000000;
          v8 = 0x6472617A7A696C62;
          break;
        case 4:
          v7 = 0xE400000000000000;
          v8 = 1818845544;
          break;
        case 5:
          v8 = 0x737265646E756874;
          v9 = 1836216180;
          goto LABEL_18;
        case 6:
          v7 = 0xE500000000000000;
          v8 = 0x7465656C73;
          break;
        case 7:
          v7 = 0xE500000000000000;
          v10 = 2003791475;
          goto LABEL_24;
        case 8:
          v8 = 0x53676E69776F6C62;
          v11 = 7827310;
          goto LABEL_26;
        case 9:
          v7 = 0xE500000000000000;
          v10 = 1852399986;
          goto LABEL_24;
        case 0xA:
          v7 = 0xE500000000000000;
          v10 = 1802464627;
          goto LABEL_24;
        case 0xB:
          v7 = 0xE400000000000000;
          v8 = 1953723748;
          break;
        case 0xC:
          v7 = 0xE500000000000000;
          v10 = 1684957559;
          goto LABEL_24;
        case 0xD:
          v7 = 0xE500000000000000;
          v10 = 1734831974;
LABEL_24:
          v8 = v10 & 0xFFFF0000FFFFFFFFLL | 0x7900000000;
          break;
        case 0xE:
          v7 = 0xE400000000000000;
          v8 = 1702519144;
          break;
        case 0xF:
          v7 = 0xE600000000000000;
          v8 = 0x7964756F6C63;
          break;
        case 0x10:
          v8 = 0x6C43796C74726170;
          v9 = 2036626799;
LABEL_18:
          v7 = v9 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
          break;
        case 0x11:
          v7 = 0xE500000000000000;
          v8 = 0x7261656C63;
          break;
        case 0x12:
          v7 = 0xE400000000000000;
          v8 = 1684828003;
          break;
        case 0x13:
          v7 = 0xE300000000000000;
          v8 = 7630696;
          break;
        case 0x14:
          v8 = 0x6F6C43646578696DLL;
          v11 = 7955573;
LABEL_26:
          v7 = v11 & 0xFFFFFFFFFFFFLL | 0xEB00000000000000;
          break;
        case 0x15:
          v7 = 0xEA00000000007261;
          v8 = 0x656C43646578696DLL;
          break;
        case 0x16:
          v8 = 0x6C69617641746F6ELL;
          v7 = 0xEC000000656C6261;
          break;
        default:
          break;
      }

      v12 = 0x6E61636972727568;
      v13 = 0xE900000000000065;
      switch(a1)
      {
        case 1:
          v13 = 0xE700000000000000;
          v12 = 0x6F64616E726F74;
          break;
        case 2:
          v12 = 0x6C616369706F7274;
          v13 = 0xED00006D726F7453;
          break;
        case 3:
          v13 = 0xE800000000000000;
          v12 = 0x6472617A7A696C62;
          break;
        case 4:
          v13 = 0xE400000000000000;
          v12 = 1818845544;
          break;
        case 5:
          v12 = 0x737265646E756874;
          v14 = 1836216180;
          goto LABEL_44;
        case 6:
          v13 = 0xE500000000000000;
          v12 = 0x7465656C73;
          break;
        case 7:
          v13 = 0xE500000000000000;
          v15 = 2003791475;
          goto LABEL_50;
        case 8:
          v12 = 0x53676E69776F6C62;
          v16 = 7827310;
          goto LABEL_52;
        case 9:
          v13 = 0xE500000000000000;
          v15 = 1852399986;
          goto LABEL_50;
        case 10:
          v13 = 0xE500000000000000;
          v15 = 1802464627;
          goto LABEL_50;
        case 11:
          v13 = 0xE400000000000000;
          v12 = 1953723748;
          break;
        case 12:
          v13 = 0xE500000000000000;
          v15 = 1684957559;
          goto LABEL_50;
        case 13:
          v13 = 0xE500000000000000;
          v15 = 1734831974;
LABEL_50:
          v12 = v15 & 0xFFFF0000FFFFFFFFLL | 0x7900000000;
          break;
        case 14:
          v13 = 0xE400000000000000;
          v12 = 1702519144;
          break;
        case 15:
          v13 = 0xE600000000000000;
          v12 = 0x7964756F6C63;
          break;
        case 16:
          v12 = 0x6C43796C74726170;
          v14 = 2036626799;
LABEL_44:
          v13 = v14 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
          break;
        case 17:
          v13 = 0xE500000000000000;
          v12 = 0x7261656C63;
          break;
        case 18:
          v13 = 0xE400000000000000;
          v12 = 1684828003;
          break;
        case 19:
          v13 = 0xE300000000000000;
          v12 = 7630696;
          break;
        case 20:
          v12 = 0x6F6C43646578696DLL;
          v16 = 7955573;
LABEL_52:
          v13 = v16 & 0xFFFFFFFFFFFFLL | 0xEB00000000000000;
          break;
        case 21:
          v13 = 0xEA00000000007261;
          v12 = 0x656C43646578696DLL;
          break;
        case 22:
          v12 = 0x6C69617641746F6ELL;
          v13 = 0xEC000000656C6261;
          break;
        default:
          break;
      }

      if (v8 == v12 && v7 == v13)
      {
        break;
      }

      v18 = sub_A4E44();

      if ((v18 & 1) == 0)
      {
        v4 = (v4 + 1) & v6;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

uint64_t sub_A1AB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_4BF0(&qword_DD220, qword_A9B20);
  __chkstk_darwin(v6 - 8);
  v8 = (&v30 - v7);
  v36 = type metadata accessor for AMSSearchService();
  v37 = &off_D1398;
  v35[0] = a3;
  sub_7584(v35, v36);

  v9 = sub_2EA0C(a1, a2);
  if (!v9)
  {
    goto LABEL_20;
  }

  v10 = v9;
  if (sub_1BF68())
  {
    sub_1BF70();
    if ((v10 & 0xC000000000000001) != 0)
    {
      v11 = sub_A4B74();
    }

    else
    {
      v11 = *(v10 + 32);
    }

    v12 = v11;

    v13 = [v12 itemDictionary];
    v14 = sub_A4524();

    v30 = 0x44657361656C6572;
    v31 = 0xEF656D6954657461;
    sub_A4B04();
    sub_9C848(v14, &v33, v32);

    sub_80E64(v32);
    if (!v34)
    {

      v21 = &unk_DB870;
      v22 = &qword_A5CB0;
      v23 = &v33;
LABEL_19:
      sub_1085C(v23, v21, v22);
      goto LABEL_20;
    }

    if (swift_dynamicCast())
    {
      v16 = v30;
      v15 = v31;
      v17 = [v12 itemDictionary];
      v18 = sub_A4524();

      v30 = 0x614E747369747261;
      v31 = 0xEA0000000000656DLL;
      sub_A4B04();
      sub_9C848(v18, &v33, v32);

      sub_80E64(v32);
      if (v34)
      {
        if (swift_dynamicCast())
        {
          v20 = v30;
          v19 = v31;
LABEL_15:
          if (qword_DA9E8 != -1)
          {
            swift_once();
          }

          v24 = sub_A43D4();
          sub_48A4(v24, qword_E0BE8);
          v32[0] = 0;
          v32[1] = 0xE000000000000000;
          sub_A4B54(39);

          strcpy(v32, "Found Podcast ");
          HIBYTE(v32[1]) = -18;
          v38._countAndFlagsBits = v20;
          v38._object = v19;
          sub_A46D4(v38);

          v39._object = 0x80000000000B5510;
          v39._countAndFlagsBits = 0xD000000000000015;
          sub_A46D4(v39);
          v40._countAndFlagsBits = v16;
          v40._object = v15;
          sub_A46D4(v40);
          sub_810AC(v32[0], v32[1], 0xD00000000000002ALL, 0x80000000000AE1F0, 0xD000000000000026, 0x80000000000B5530);

          sub_4F358(v8);

          v25 = sub_A2EA4();
          if (sub_CF2C(v8, 1, v25) != 1)
          {
            sub_A2E54();
            v29 = v28;

            (*(*(v25 - 8) + 8))(v8, v25);
            v26 = v29;
            goto LABEL_21;
          }

          v21 = &qword_DD220;
          v22 = qword_A9B20;
          v23 = v8;
          goto LABEL_19;
        }
      }

      else
      {
        sub_1085C(&v33, &unk_DB870, &qword_A5CB0);
      }

      v20 = 0;
      v19 = 0xE000000000000000;
      goto LABEL_15;
    }
  }

  else
  {
  }

LABEL_20:
  v26 = 0;
LABEL_21:
  sub_761C(v35);
  return v26;
}

BOOL sub_A1F80(uint64_t a1, void *a2)
{
  v4 = type metadata accessor for AppDetecter(0);
  v8[3] = v4;
  v8[4] = &off_D0F20;
  v8[0] = a1;
  sub_7584(a2, a2[3]);

  if (sub_A3504())
  {
    v5 = 1;
  }

  else
  {
    sub_7584(v8, v4);
    v6 = sub_1EA54();
    v5 = sub_9D5AC(0xD000000000000012, 0x80000000000AD060, v6);
  }

  sub_761C(v8);
  return v5;
}

uint64_t sub_A205C()
{
  sub_AB40();
  v2 = v1;
  v0[7] = v3;
  v4 = type metadata accessor for AppDetecter(0);
  v0[8] = v4;
  v0[5] = v4;
  v0[6] = &off_D0F20;
  v0[2] = v2;

  v5 = swift_task_alloc();
  v0[9] = v5;
  *v5 = v0;
  sub_A2998(v5);

  return sub_44F0(1);
}

uint64_t sub_A2124()
{
  sub_5950();
  sub_AAA8();
  sub_1A690();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 80) = v3;
  *(v1 + 88) = v4;

  v5 = sub_AA8C();

  return _swift_task_switch(v5, v6, v7);
}

uint64_t sub_A220C()
{
  sub_5950();
  v1 = sub_4F034(v0[10], v0[11]);
  if (sub_4ED80(v1))
  {
    v2 = v0[7];
    v3 = sub_7584(v0 + 2, v0[8]);
    v4 = sub_A1F80(*v3, v2);
  }

  else
  {
    v4 = 0;
  }

  sub_761C(v0 + 2);
  sub_49144();

  return v5(v4);
}

uint64_t sub_A229C()
{
  sub_AB40();
  v2 = v1;
  v3 = type metadata accessor for AMSSearchService();
  v0[11] = v3;
  v0[5] = v3;
  v0[6] = &off_D1398;
  v0[2] = v2;

  v4 = swift_task_alloc();
  v0[12] = v4;
  *v4 = v0;
  sub_A2998(v4);

  return sub_9C994(2);
}

uint64_t sub_A2374()
{
  sub_5950();
  sub_AAA8();
  sub_1A690();
  *v2 = v1;
  v1[7] = v0;
  v1[8] = v3;
  v1[9] = v4;
  v1[10] = v5;
  v6 = *v0;
  sub_5930();
  *v7 = v6;
  *(v9 + 104) = v8;

  v10 = sub_AA8C();

  return _swift_task_switch(v10, v11, v12);
}

uint64_t sub_A245C()
{
  sub_59C4();
  v20 = v0;
  v1 = *(v0 + 104);
  if (v1 && (v2 = *(v0 + 64), v3 = *(v0 + 88), , v4 = sub_120B4(v2, v1), v6 = v5, , v7 = sub_7584((v0 + 16), v3), v8 = COERCE_DOUBLE(sub_A1AB4(v4, v6, *v7)), LOBYTE(v3) = v9, , , (v3 & 1) == 0))
  {
    v12 = *(v0 + 80);
    v13 = v8;
    v11 = v12 > v8;
    if (qword_DA840 != -1)
    {
      sub_A2910(&qword_DA840);
    }

    v14 = sub_A43D4();
    sub_48A4(v14, qword_E06D8);
    strcpy(v19, "isNewsStale: ");
    HIWORD(v19[1]) = -4864;
    if (v12 <= v13)
    {
      v15._countAndFlagsBits = 0x65736C6166;
    }

    else
    {
      v15._countAndFlagsBits = 1702195828;
    }

    if (v12 <= v13)
    {
      v16 = 0xE500000000000000;
    }

    else
    {
      v16 = 0xE400000000000000;
    }

    v15._object = v16;
    sub_A46D4(v15);

    sub_810AC(v19[0], v19[1], 0xD00000000000002ALL, 0x80000000000AE1F0, 0xD000000000000011, 0x80000000000B54F0);
  }

  else
  {
    if (qword_DA840 != -1)
    {
      sub_A2910(&qword_DA840);
    }

    v10 = sub_A43D4();
    sub_48A4(v10, qword_E06D8);
    sub_810C4(0xD000000000000037, 0x80000000000B54B0, 0xD00000000000002ALL, 0x80000000000AE1F0, 0xD000000000000011, 0x80000000000B54F0);
    v11 = 0;
  }

  sub_761C((v0 + 16));
  sub_49144();

  return v17(v11);
}

unint64_t sub_A26B4()
{
  result = qword_E05C8;
  if (!qword_E05C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E05C8);
  }

  return result;
}

unint64_t sub_A2708()
{
  result = qword_E05D8;
  if (!qword_E05D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E05D8);
  }

  return result;
}

uint64_t sub_A275C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

_BYTE *storeEnumTagSinglePayload for NewsFlow.NewsInput(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0xA2870);
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

unint64_t sub_A28AC()
{
  result = qword_E05F8;
  if (!qword_E05F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E05F8);
  }

  return result;
}

uint64_t sub_A2910(uint64_t a1)
{

  return swift_once();
}

uint64_t sub_A2950()
{

  return String.data(using:allowLossyConversion:)(v2, 0, v0, v1);
}

void sub_A29C0(uint64_t a1@<X0>, uint64_t a2@<X8>)
{

  sub_81094(a1, v3, v4 + 35, a2 | 0x8000000000000000, v4 + 10, (v2 - 32) | 0x8000000000000000);
}

uint64_t sub_A2A08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return sub_A2AF4();
}

uint64_t sub_A2A38(uint64_t result, uint64_t a2)
{
  v2[2] = v3;
  v2[3] = result;
  v2[4] = a2;
  return result;
}

void sub_A2A4C()
{

  sub_A4B54(28);
}

uint64_t sub_A2A6C(uint64_t a1)
{

  return AceServiceInvokerAsync.submitAndForget(_:)(a1, v2, v1);
}

uint64_t sub_A2A8C()
{

  return sub_65DDC(v1, v0);
}

void sub_A2AA4()
{
  v1._countAndFlagsBits = 46;
  v1._object = 0xE100000000000000;

  sub_A46D4(v1);
}

id sub_A2ABC()
{
  sub_7584((v0 + 48), *(v0 + 72));

  return sub_129C8();
}