uint64_t sub_18D8()
{
  sub_4140();
  [*(v0 + 16) donateInteractionWithCompletion:0];
  sub_4108();

  return v1();
}

BOOL sub_193C()
{
  v1 = v0;
  v2 = sub_104D4();
  sub_414C();
  v34 = v3;
  __chkstk_darwin(v4);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_3B68(&qword_18678, &qword_10B10);
  __chkstk_darwin(v7 - 8);
  v9 = &v32 - v8;
  v10 = sub_FEE4();
  sub_414C();
  v12 = v11;
  __chkstk_darwin(v13);
  v15 = &v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_FEA4();
  v16 = (*(v12 + 88))(v15, v10);
  v17 = enum case for Parse.directInvocation(_:);
  if (v16 == enum case for Parse.directInvocation(_:))
  {
    (*(v12 + 96))(v15, v10);
    v18 = sub_FED4();
    sub_4118();
    (*(v19 + 32))(v9, v15, v18);
    sub_39C0(v9, 0, 1, v18);
    v20 = OBJC_IVAR____TtC25SiriSuggestionsFlowPlugin29SiriSuggestionsInvocationFlow_directInvocation;
    sub_4188();
    sub_4004(v9, v1 + v20);
    swift_endAccess();
  }

  else
  {
    v33 = v2;
    sub_10304();
    v21 = sub_104C4();
    v22 = sub_105B4();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v32 = v1;
      v24 = v23;
      *v23 = 0;
      _os_log_impl(&dword_0, v21, v22, "SiriSuggestionsInvocationFlow :: Unhandled parse type", v23, 2u);
      v25 = v24;
      v1 = v32;
      sub_41A8(v25);
    }

    (*(v34 + 8))(v6, v33);
    sub_FED4();
    sub_4134();
    sub_39C0(v26, v27, v28, v29);
    v30 = OBJC_IVAR____TtC25SiriSuggestionsFlowPlugin29SiriSuggestionsInvocationFlow_directInvocation;
    sub_4188();
    sub_4004(v9, v1 + v30);
    swift_endAccess();
    (*(v12 + 8))(v15, v10);
  }

  return v16 == v17;
}

uint64_t sub_1C5C(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = sub_3B68(&qword_18668, &qword_10AF0);
  __chkstk_darwin(v6 - 8);
  v8 = &v15 - v7;
  sub_10574();
  sub_4134();
  sub_39C0(v9, v10, v11, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = v2;
  v13[5] = a1;
  v13[6] = a2;
  v13[7] = v5;

  sub_325C(0, 0, v8, &unk_10B00, v13);
}

uint64_t sub_1D80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[19] = a6;
  v7[20] = a7;
  v7[17] = a4;
  v7[18] = a5;
  v8 = sub_FE64();
  v7[21] = v8;
  v7[22] = *(v8 - 8);
  v7[23] = swift_task_alloc();
  sub_3B68(&qword_18670, &qword_10B80);
  v7[24] = swift_task_alloc();
  v9 = sub_10244();
  v7[25] = v9;
  v7[26] = *(v9 - 8);
  v7[27] = swift_task_alloc();
  v10 = sub_10154();
  v7[28] = v10;
  v7[29] = *(v10 - 8);
  v7[30] = swift_task_alloc();
  v11 = sub_10214();
  v7[31] = v11;
  v7[32] = *(v11 - 8);
  v7[33] = swift_task_alloc();
  v12 = sub_10264();
  v7[34] = v12;
  v7[35] = *(v12 - 8);
  v7[36] = swift_task_alloc();
  v13 = sub_104D4();
  v7[37] = v13;
  v7[38] = *(v13 - 8);
  v7[39] = swift_task_alloc();
  v7[40] = swift_task_alloc();
  v14 = sub_FED4();
  v7[41] = v14;
  v7[42] = *(v14 - 8);
  v7[43] = swift_task_alloc();
  v7[44] = swift_task_alloc();
  sub_3B68(&qword_18678, &qword_10B10);
  v7[45] = swift_task_alloc();
  v7[46] = swift_task_alloc();
  sub_3B68(&qword_18680, &qword_10B18);
  v7[47] = swift_task_alloc();
  v15 = sub_101E4();
  v7[48] = v15;
  v7[49] = *(v15 - 8);
  v7[50] = swift_task_alloc();

  return _swift_task_switch(sub_2194, 0, 0);
}

uint64_t sub_2194()
{
  v1 = *(v0 + 368);
  v2 = *(v0 + 328);
  v3 = *(v0 + 136);
  v4 = OBJC_IVAR____TtC25SiriSuggestionsFlowPlugin29SiriSuggestionsInvocationFlow_directInvocation;
  *(v0 + 408) = OBJC_IVAR____TtC25SiriSuggestionsFlowPlugin29SiriSuggestionsInvocationFlow_directInvocation;
  swift_beginAccess();
  sub_3CF4(v3 + v4, v1, &qword_18678, &qword_10B10);
  v5 = sub_3CCC(v1, 1, v2);
  v6 = *(v0 + 368);
  if (v5)
  {
    sub_3D54(*(v0 + 368), &qword_18678, &qword_10B10);
LABEL_3:
    *(v0 + 72) = 0u;
    *(v0 + 56) = 0u;
LABEL_4:
    sub_3D54(v0 + 56, &qword_18688, &unk_10B20);
LABEL_5:
    sub_4134();
    sub_39C0(v7, v8, v9, v10);
    goto LABEL_6;
  }

  v22 = *(v0 + 352);
  v23 = *(v0 + 328);
  v24 = *(v0 + 336);
  v25 = *(v24 + 16);
  *(v0 + 416) = v25;
  *(v0 + 424) = (v24 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v25(v22, v6, v23);
  sub_3D54(v6, &qword_18678, &qword_10B10);
  v26 = sub_FEC4();
  *(v0 + 432) = *(v24 + 8);
  *(v0 + 440) = (v24 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v27 = sub_4160();
  v28(v27);
  if (!v26)
  {
    goto LABEL_3;
  }

  sub_30DC(v26, (v0 + 56), 0x6974736567677573, 0xEA00000000006E6FLL);

  if (!*(v0 + 80))
  {
    goto LABEL_4;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_5;
  }

  v29 = *(v0 + 376);
  v30 = *(v0 + 384);
  sub_3DAC();
  sub_10524();

  if (sub_3CCC(v29, 1, v30) == 1)
  {
LABEL_6:
    sub_3D54(*(v0 + 376), &qword_18680, &qword_10B18);
    sub_10304();
    v11 = sub_104C4();
    v12 = sub_105B4();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_0, v11, v12, "SiriSuggestionsInvocationFlow :: Unable to get encoded suggestion for invocation", v13, 2u);
      sub_41A8(v13);
    }

    v15 = *(v0 + 176);
    v14 = *(v0 + 184);
    v16 = *(v0 + 168);
    v17 = *(v0 + 144);

    v18 = sub_4160();
    v19(v18);
    sub_FE44();
    v17(v14);
    (*(v15 + 8))(v14, v16);
    sub_40D0();

    sub_4108();
    sub_416C();

    __asm { BRAA            X1, X16 }
  }

  v31 = *(v0 + 256);
  v32 = *(v0 + 264);
  v33 = *(v0 + 248);
  v34 = *(v0 + 208);
  v47 = *(v0 + 216);
  v48 = *(v0 + 200);
  v35 = *(v0 + 136);
  (*(*(v0 + 392) + 32))(*(v0 + 400), *(v0 + 376), *(v0 + 384));
  type metadata accessor for InvocationContextHolder();
  sub_101D4();
  v36 = sub_10204();
  v38 = v37;
  (*(v31 + 8))(v32, v33);
  sub_312C(v36, v38);

  sub_3E04((v35 + OBJC_IVAR____TtC25SiriSuggestionsFlowPlugin29SiriSuggestionsInvocationFlow_dispatcherFactory), *(v35 + OBJC_IVAR____TtC25SiriSuggestionsFlowPlugin29SiriSuggestionsInvocationFlow_dispatcherFactory + 24));
  sub_10194();
  sub_3E04((v0 + 16), *(v0 + 40));
  (*(v34 + 104))(v47, enum case for InvocationType.unknown(_:), v48);
  sub_FD54();
  sub_4134();
  sub_39C0(v39, v40, v41, v42);
  sub_10114();
  v43 = swift_task_alloc();
  *(v0 + 448) = v43;
  *v43 = v0;
  v43[1] = sub_26BC;
  sub_416C();

  return dispatch thunk of SuggestionDispatcher.dispatch(suggestion:presentationContext:)(v44);
}

uint64_t sub_26BC()
{
  sub_4128();
  v2 = *v1;
  sub_40F8();
  *v3 = v2;
  *(v4 + 456) = v0;

  v5 = sub_4160();
  v6(v5);
  if (v0)
  {
    v7 = sub_2CA4;
  }

  else
  {
    v7 = sub_281C;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_281C(uint64_t a1)
{
  v2 = *(v1 + 408);
  v3 = *(v1 + 360);
  v4 = *(v1 + 328);
  v5 = *(v1 + 184);
  v6 = *(v1 + 144);
  v7 = *(v1 + 136);
  sub_FE44();
  v6(v5);
  v8 = sub_4160();
  v9(v8);
  v10 = *(v7 + OBJC_IVAR____TtC25SiriSuggestionsFlowPlugin29SiriSuggestionsInvocationFlow_interactionDonator);
  sub_3CF4(v7 + v2, v3, &qword_18678, &qword_10B10);
  if (sub_3CCC(v3, 1, v4))
  {
    sub_3D54(*(v1 + 360), &qword_18678, &qword_10B10);
LABEL_3:
    sub_104E4();

    goto LABEL_5;
  }

  v11 = *(v1 + 432);
  v12 = *(v1 + 360);
  v13 = *(v1 + 344);
  v14 = *(v1 + 328);
  (*(v1 + 416))(v13, v12, v14);
  sub_3D54(v12, &qword_18678, &qword_10B10);
  v15 = sub_FEC4();
  v11(v13, v14);
  if (!v15)
  {
    goto LABEL_3;
  }

LABEL_5:
  v16 = sub_31C0();
  *(v1 + 464) = v16;

  v19 = (v10 + *v10);
  v17 = swift_task_alloc();
  *(v1 + 472) = v17;
  *v17 = v1;
  v17[1] = sub_2A74;

  return v19(v16);
}

uint64_t sub_2A74()
{
  sub_4140();
  sub_4128();
  v3 = v2;
  v4 = *v1;
  sub_40F8();
  *v5 = v4;
  *(v3 + 480) = v0;

  if (v0)
  {
    v6 = sub_2DFC;
  }

  else
  {

    v6 = sub_2B80;
  }

  return _swift_task_switch(v6, 0, 0);
}

void sub_2B80()
{
  v2 = v0[49];
  v1 = v0[50];
  v3 = v0[48];
  (*(v0[35] + 8))(v0[36], v0[34]);
  (*(v2 + 8))(v1, v3);
  sub_3E48(v0 + 2);
  sub_40D0();

  sub_4108();
  sub_416C();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_2CA4()
{
  v1 = v0[49];
  v2 = v0[50];
  v3 = v0[48];
  (*(v0[35] + 8))(v0[36], v0[34]);
  (*(v1 + 8))(v2, v3);
  sub_3E48(v0 + 2);

  v4 = v0[1];

  return v4();
}

uint64_t sub_2DFC()
{
  v30 = v0;

  sub_10304();
  swift_errorRetain();
  v1 = sub_104C4();
  v2 = sub_105B4();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = *(v0 + 480);
    v25 = *(v0 + 384);
    v27 = *(v0 + 400);
    v4 = *(v0 + 304);
    v20 = *(v0 + 296);
    v21 = *(v0 + 312);
    v23 = *(v0 + 288);
    v24 = *(v0 + 392);
    v5 = *(v0 + 280);
    v22 = *(v0 + 272);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v29 = v7;
    *v6 = 136315138;
    *(v0 + 128) = v3;
    swift_errorRetain();
    sub_3B68(&qword_18698, &qword_10B60);
    v8 = sub_10504();
    v10 = sub_B5DC(v8, v9, &v29);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_0, v1, v2, "SiriSuggestionsInvocationFlow :: Error when donating interaction: %s", v6, 0xCu);
    sub_3E48(v7);
    sub_41A8(v7);
    sub_41A8(v6);

    (*(v4 + 8))(v21, v20);
    (*(v5 + 8))(v23, v22);
    (*(v24 + 8))(v27, v25);
  }

  else
  {
    v11 = *(v0 + 392);
    v26 = *(v0 + 384);
    v28 = *(v0 + 400);
    v12 = *(v0 + 304);
    v13 = *(v0 + 312);
    v15 = *(v0 + 288);
    v14 = *(v0 + 296);
    v17 = *(v0 + 272);
    v16 = *(v0 + 280);

    (*(v12 + 8))(v13, v14);
    (*(v16 + 8))(v15, v17);
    (*(v11 + 8))(v28, v26);
  }

  sub_3E48((v0 + 16));
  sub_40D0();

  sub_4108();

  return v18();
}

double sub_30DC@<D0>(uint64_t a1@<X2>, _OWORD *a2@<X8>, uint64_t a3@<X0>, uint64_t a4@<X1>)
{
  if (*(a1 + 16) && (v6 = sub_3ED8(a3, a4), (v7 & 1) != 0))
  {
    sub_4074(*(a1 + 56) + 32 * v6, a2);
  }

  else
  {
    result = 0.0;
    *a2 = 0u;
    a2[1] = 0u;
  }

  return result;
}

uint64_t sub_312C(uint64_t a1, uint64_t a2)
{
  sub_FEF4();
  sub_3E04(v3, v3[3]);
  sub_FE24();
  sub_3E48(v3);

  return sub_10254();
}

Class sub_31C0()
{
  v0 = [objc_allocWithZone(sub_10374()) init];
  v1 = sub_101C4();
  [v0 setSuggestion:v1];

  v2 = [objc_allocWithZone(sub_10384()) init];
  sub_3E94();
  v3.super.isa = v0;
  v4.super.isa = v2;
  return sub_10584(v3, v4, 1).super.isa;
}

uint64_t sub_325C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_3B68(&qword_18668, &qword_10AF0);
  __chkstk_darwin(v8 - 8);
  v10 = v21 - v9;
  sub_3CF4(a3, v21 - v9, &qword_18668, &qword_10AF0);
  v11 = sub_10574();
  v12 = sub_3CCC(v10, 1, v11);

  if (v12 == 1)
  {
    sub_3D54(v10, &qword_18668, &qword_10AF0);
  }

  else
  {
    sub_10564();
    (*(*(v11 - 8) + 8))(v10, v11);
  }

  v13 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v13)
  {
    swift_getObjectType();
    v14 = sub_10554();
    v16 = v15;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v17 = sub_10514() + 32;

      if (v16 | v14)
      {
        v22[0] = 0;
        v22[1] = 0;
        v18 = v22;
        v22[2] = v14;
        v22[3] = v16;
      }

      else
      {
        v18 = 0;
      }

      v21[1] = 7;
      v21[2] = v18;
      v21[3] = v17;
      v19 = swift_task_create();

      sub_3D54(a3, &qword_18668, &qword_10AF0);

      return v19;
    }
  }

  else
  {
    v14 = 0;
    v16 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_3D54(a3, &qword_18668, &qword_10AF0);
  if (v16 | v14)
  {
    v22[4] = 0;
    v22[5] = 0;
    v22[6] = v14;
    v22[7] = v16;
  }

  return swift_task_create();
}

uint64_t sub_34EC()
{
  sub_3D54(v0 + OBJC_IVAR____TtC25SiriSuggestionsFlowPlugin29SiriSuggestionsInvocationFlow_directInvocation, &qword_18678, &qword_10B10);

  sub_3E48((v0 + OBJC_IVAR____TtC25SiriSuggestionsFlowPlugin29SiriSuggestionsInvocationFlow_dispatcherFactory));
  return v0;
}

uint64_t sub_3548()
{
  sub_34EC();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

uint64_t sub_35C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_3678;

  return Flow.onAsync(input:)(a1, a2, a3);
}

uint64_t sub_3678()
{
  sub_4140();
  v2 = v1;
  sub_4128();
  v3 = *v0;
  sub_40F8();
  *v4 = v3;

  v5 = *(v3 + 8);

  return v5(v2);
}

uint64_t sub_3788(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_383C;

  return Flow.execute()(a1, a2, a3);
}

uint64_t sub_383C()
{
  sub_4140();
  sub_4128();
  v1 = *v0;
  sub_40F8();
  *v2 = v1;

  v3 = *(v1 + 8);

  return v3();
}

uint64_t sub_3920(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for SiriSuggestionsInvocationFlow(0);

  return Flow<>.exitValue.getter(v3, a2);
}

uint64_t variable initialization expression of SiriSuggestionsFlow.intentProperties()
{
  sub_10424();
  sub_4134();

  return sub_39C0(v1, v2, v3, v4);
}

uint64_t type metadata accessor for SiriSuggestionsInvocationFlow(uint64_t a1)
{
  result = qword_18508;
  if (!qword_18508)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_3A44(uint64_t a1)
{
  sub_3AEC(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_3AEC(uint64_t a1)
{
  if (!qword_18518)
  {
    sub_FED4();
    v1 = sub_105C4();
    if (!v2)
    {
      atomic_store(v1, &qword_18518);
    }
  }
}

uint64_t sub_3B68(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_3BB0()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_3BF8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_383C;

  return sub_1D80(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_3CF4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  sub_3B68(a3, a4);
  sub_4118();
  (*(v6 + 16))(a2, a1);
  return a2;
}

uint64_t sub_3D54(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  sub_3B68(a2, a3);
  sub_4118();
  (*(v4 + 8))(a1);
  return a1;
}

unint64_t sub_3DAC()
{
  result = qword_18690;
  if (!qword_18690)
  {
    sub_101E4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_18690);
  }

  return result;
}

void *sub_3E04(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_3E48(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

unint64_t sub_3E94()
{
  result = qword_186A0;
  if (!qword_186A0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_186A0);
  }

  return result;
}

unint64_t sub_3ED8(uint64_t a1, uint64_t a2)
{
  sub_10624();
  sub_10534();
  v4 = sub_10634();

  return sub_3F50(a1, a2, v4);
}

unint64_t sub_3F50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = ~(-1 << *(v3 + 32));
  for (i = a3 & v6; ((1 << i) & *(v3 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v6)
  {
    v8 = (*(v3 + 48) + 16 * i);
    v9 = *v8 == a1 && v8[1] == a2;
    if (v9 || (sub_10604() & 1) != 0)
    {
      break;
    }
  }

  return i;
}

uint64_t sub_4004(uint64_t a1, uint64_t a2)
{
  v4 = sub_3B68(&qword_18678, &qword_10B10);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_4074(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_4188()
{

  return swift_beginAccess();
}

uint64_t sub_41A8(uint64_t a1)
{
}

uint64_t sub_41C0(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for EnvironmentRequestIdProvider();
  sub_D170();
  v6 = swift_allocObject();
  type metadata accessor for SiriSuggestionsFlow(0);
  *(v6 + 32) = 0u;
  *(v6 + 48) = 0;
  *(v6 + 16) = 0u;
  v7 = swift_allocObject();
  v8 = (v7 + OBJC_IVAR____TtC25SiriSuggestionsFlowPlugin19SiriSuggestionsFlow_requestIdProvider);
  *(v7 + OBJC_IVAR____TtC25SiriSuggestionsFlowPlugin19SiriSuggestionsFlow_requestIdProvider + 24) = v5;
  v8[4] = sub_C010(&qword_18938, v9, type metadata accessor for EnvironmentRequestIdProvider, "i;");
  *v8 = v6;
  *(v7 + 16) = 0;
  *(v7 + 24) = 0;
  sub_10424();
  sub_4134();
  sub_39C0(v10, v11, v12, v13);
  *(v7 + OBJC_IVAR____TtC25SiriSuggestionsFlowPlugin19SiriSuggestionsFlow_suggestionsFacade) = a1;
  *(v7 + OBJC_IVAR____TtC25SiriSuggestionsFlowPlugin19SiriSuggestionsFlow_suggestionDispatcherFactory) = a2;
  v14 = (v7 + OBJC_IVAR____TtC25SiriSuggestionsFlowPlugin19SiriSuggestionsFlow_enabled);
  *v14 = sub_4374;
  v14[1] = 0;
  v19 = v2;
  sub_CA14();
  v20 = sub_C010(v15, 255, v16, &protocol conformance descriptor for SiriSuggestionsFlow);
  v18[0] = v7;
  swift_beginAccess();

  sub_C058(v18, v6 + 16, &qword_18930, &qword_10D88);
  swift_endAccess();

  return v7;
}

uint64_t sub_43A4@<X0>(void (*a1)(char *)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = v3;
  v17[1] = a2;
  v18 = a1;
  v7 = sub_10154();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_3B68(&qword_186B0, &qword_10B48);
  __chkstk_darwin(v11 - 8);
  v13 = v17 - v12;
  sub_C0A4(v5, v17 - v12, &qword_186B0, &qword_10B48);
  v14 = 1;
  if (sub_3CCC(v13, 1, v7) == 1)
  {
    v15 = a3;
    return sub_39C0(v15, v14, 1, v7);
  }

  (*(v8 + 32))(v10, v13, v7);
  v15 = a3;
  v18(v10);
  if (!v4)
  {
    (*(v8 + 8))(v10, v7);
    v14 = 0;
    return sub_39C0(v15, v14, 1, v7);
  }

  result = (*(v8 + 8))(v10, v7);
  __break(1u);
  return result;
}

uint64_t SiriSuggestionsFlow.on(input:)(char *a1)
{
  v157 = a1;
  v2 = sub_3B68(&qword_186A8, &qword_10B40);
  v3 = sub_CBA0(v2);
  __chkstk_darwin(v3);
  v142 = &v136 - v4;
  v5 = sub_3B68(&qword_186B0, &qword_10B48);
  v6 = sub_CBA0(v5);
  __chkstk_darwin(v6);
  sub_C8A4();
  sub_C644();
  __chkstk_darwin(v7);
  v144 = &v136 - v8;
  sub_10424();
  sub_414C();
  v152 = v10;
  v153 = v9;
  __chkstk_darwin(v9);
  sub_C8A4();
  sub_C644();
  __chkstk_darwin(v11);
  v154 = &v136 - v12;
  sub_104D4();
  sub_414C();
  v158 = v13;
  v159 = v14;
  __chkstk_darwin(v13);
  sub_C8A4();
  v156 = v15;
  v17 = __chkstk_darwin(v16);
  v19 = &v136 - v18;
  __chkstk_darwin(v17);
  sub_CB94();
  sub_C644();
  __chkstk_darwin(v20);
  sub_CB94();
  sub_C644();
  __chkstk_darwin(v21);
  sub_CB94();
  v155 = v22;
  __chkstk_darwin(v23);
  v148 = &v136 - v24;
  sub_FEE4();
  sub_414C();
  __chkstk_darwin(v25);
  v27 = &v136 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_3B68(&qword_186B8, &unk_10B50);
  sub_414C();
  v30 = v29;
  __chkstk_darwin(v31);
  v33 = &v136 - v32;
  v149 = sub_3B68(&qword_186C0, &qword_10DF0);
  sub_4118();
  __chkstk_darwin(v34);
  sub_C8A4();
  sub_C644();
  __chkstk_darwin(v35);
  sub_CB94();
  sub_C644();
  __chkstk_darwin(v36);
  sub_CB94();
  sub_C644();
  __chkstk_darwin(v37);
  sub_CB94();
  v151 = v38;
  __chkstk_darwin(v39);
  sub_CB94();
  sub_C644();
  __chkstk_darwin(v40);
  sub_CB94();
  sub_C644();
  __chkstk_darwin(v41);
  sub_CB94();
  sub_C644();
  v43 = __chkstk_darwin(v42);
  v45 = &v136 - v44;
  if ((*(v1 + OBJC_IVAR____TtC25SiriSuggestionsFlowPlugin19SiriSuggestionsFlow_enabled))(v43))
  {
    v137 = v1;
    sub_FF94();
    v46 = sub_FFB4();
    (*(v30 + 8))(v33, v28);
    sub_FEA4();
    LOBYTE(v28) = 0;
    v46(v27);
    v157 = v45;
    v55 = sub_D164();
    v56(v55);

    v57 = v148;
    sub_10304();
    v58 = v137;

    v59 = sub_104C4();
    v60 = sub_105A4();

    v61 = os_log_type_enabled(v59, v60);
    v62 = v158;
    if (v61)
    {
      v28 = sub_CEEC();
      v63 = sub_CED4();
      v161[0] = v63;
      *v28 = 136315138;
      v64 = OBJC_IVAR____TtC25SiriSuggestionsFlowPlugin19SiriSuggestionsFlow_intentProperties;
      sub_D120(v58 + OBJC_IVAR____TtC25SiriSuggestionsFlowPlugin19SiriSuggestionsFlow_intentProperties, v160);
      sub_C0A4(v58 + v64, v146, &qword_186C0, &qword_10DF0);
      v65 = sub_10504();
      v67 = sub_B5DC(v65, v66, v161);

      *(v28 + 4) = v67;
      sub_CF24();
      _os_log_impl(v68, v69, v70, v71, v72, 0xCu);
      sub_3E48(v63);
      sub_41A8(v63);
      sub_C9D0();
    }

    v73 = *(v159 + 8);
    v73(v57, v62);
    v74 = v155;
    v75 = v147;
    sub_10304();
    sub_C0A4(v157, v75, &qword_186C0, &qword_10DF0);
    v76 = sub_104C4();
    v77 = sub_105A4();
    if (sub_CEB8(v77))
    {
      v78 = sub_CEEC();
      v79 = sub_CED4();
      v161[0] = v79;
      *v78 = 136315138;
      sub_C0A4(v75, v146, &qword_186C0, &qword_10DF0);
      v80 = sub_10504();
      v81 = v73;
      v82 = v62;
      v84 = v83;
      sub_C928();
      sub_3D54(v85, v86, v87);
      v88 = sub_B5DC(v80, v84, v161);
      v62 = v82;
      v73 = v81;

      *(v78 + 4) = v88;
      _os_log_impl(&dword_0, v76, v28, "new intentProperties calculated as %s", v78, 0xCu);
      sub_3E48(v79);
      sub_41A8(v79);
      sub_41A8(v78);

      v81(v155, v62);
    }

    else
    {

      sub_3D54(v75, &qword_186C0, &qword_10DF0);
      v73(v74, v62);
    }

    v91 = v137;
    v92 = v151;
    v93 = v152;
    v94 = OBJC_IVAR____TtC25SiriSuggestionsFlowPlugin19SiriSuggestionsFlow_intentProperties;
    sub_D120(v137 + OBJC_IVAR____TtC25SiriSuggestionsFlowPlugin19SiriSuggestionsFlow_intentProperties, &v162);
    v95 = v150;
    sub_C0A4(v91 + v94, v150, &qword_186C0, &qword_10DF0);
    v96 = v153;
    if (sub_3CCC(v95, 1, v153) == 1)
    {
      v97 = v95;
LABEL_16:
      sub_3D54(v97, &qword_186C0, &qword_10DF0);
LABEL_17:
      v100 = v145;
      sub_10304();
      v101 = sub_104C4();
      sub_105A4();
      sub_CC6C();
      if (os_log_type_enabled(v101, v102))
      {
        v103 = sub_CCE8();
        sub_CC98(v103);
        sub_CF24();
        _os_log_impl(v104, v105, v106, v107, v108, 2u);
        sub_C9D0();
      }

      v73(v100, v62);
      sub_D1BC();
      v109 = v157;
      sub_BB58(v157, v91 + v94);
      swift_endAccess();
      sub_3D54(v109, &qword_186C0, &qword_10DF0);
      return 1;
    }

    (*(v93 + 32))(v154, v95, v96);
    sub_C0A4(v157, v92, &qword_186C0, &qword_10DF0);
    if (sub_3CCC(v92, 1, v96) == 1)
    {
      v98 = sub_4160();
      v99(v98);
      v97 = v92;
      goto LABEL_16;
    }

    v110 = v62;
    v111 = v144;
    sub_103F4();
    v112 = *(v93 + 8);
    v113 = sub_CC44();
    v112(v113);
    v114 = sub_10154();
    sub_C654(v111);
    if (v115)
    {
      (v112)(v154, v96);
      sub_3D54(v111, &qword_186B0, &qword_10B48);
    }

    else
    {
      v116 = sub_10124();
      (*(*(v114 - 8) + 8))(v111, v114);
      if (v116)
      {
        sub_10304();
        v117 = sub_104C4();
        v118 = sub_105A4();
        if (os_log_type_enabled(v117, v118))
        {
          v119 = sub_CCE8();
          *v119 = 0;
          _os_log_impl(&dword_0, v117, v118, "Reusing previous turn's intentProperties as this is a show more request", v119, 2u);
          sub_41A8(v119);
        }

        v73(v143, v110);
        v159 = sub_103E4();
        sub_10404();
        sub_10414();
        v120 = v139;
        sub_C0A4(v157, v139, &qword_186C0, &qword_10DF0);
        v121 = v153;
        if (sub_3CCC(v120, 1, v153) == 1)
        {
          sub_3D54(v120, &qword_186C0, &qword_10DF0);
          sub_4134();
          sub_39C0(v122, v123, v124, v114);
        }

        else
        {
          sub_103F4();
          (v112)(v120, v121);
        }

        v125 = v140;
        sub_C0A4(v137 + v94, v140, &qword_186C0, &qword_10DF0);
        if (sub_3CCC(v125, 1, v121))
        {
          sub_3D54(v125, &qword_186C0, &qword_10DF0);
          sub_101F4();
          sub_4134();
          sub_39C0(v126, v127, v128, v129);
        }

        else
        {
          v130 = v138;
          (*(v152 + 16))(v138, v125, v121);
          sub_3D54(v125, &qword_186C0, &qword_10DF0);
          sub_103C4();
          (v112)(v130, v121);
        }

        v131 = v141;
        sub_103D4();
        (v112)(v154, v121);
        sub_3D54(v157, &qword_186C0, &qword_10DF0);
        v89 = 1;
        v132 = sub_CB28();
        sub_39C0(v132, v133, v134, v121);
        v135 = v137;
        sub_D1BC();
        sub_C058(v131, v135 + v94, &qword_186C0, &qword_10DF0);
        swift_endAccess();
        return v89;
      }

      (v112)(v154, v96);
    }

    v91 = v137;
    v62 = v110;
    goto LABEL_17;
  }

  sub_10304();
  v47 = sub_104C4();
  sub_10594();
  sub_CC6C();
  if (os_log_type_enabled(v47, v48))
  {
    v49 = sub_CCE8();
    sub_CC98(v49);
    sub_CF24();
    _os_log_impl(v50, v51, v52, v53, v54, 2u);
    sub_C9D0();
  }

  (*(v159 + 8))(v19, v158);
  return 0;
}

uint64_t SiriSuggestionsFlow.execute()()
{
  sub_4140();
  v1[45] = v2;
  v1[46] = v0;
  v1[47] = *v0;
  v3 = sub_FDD4();
  v1[48] = v3;
  sub_C5EC(v3);
  v1[49] = v4;
  v1[50] = sub_CF44();
  v5 = sub_3B68(&qword_186D0, &unk_10B70);
  v1[51] = v5;
  sub_CBA0(v5);
  v1[52] = sub_CF44();
  v6 = sub_3B68(&qword_186D8, &qword_10DE0);
  v1[53] = v6;
  sub_CBA0(v6);
  v1[54] = sub_D020();
  v1[55] = swift_task_alloc();
  v1[56] = swift_task_alloc();
  v1[57] = swift_task_alloc();
  v7 = sub_10394();
  v1[58] = v7;
  sub_C5EC(v7);
  v1[59] = v8;
  v1[60] = sub_CF44();
  v9 = sub_10244();
  v1[61] = v9;
  sub_C5EC(v9);
  v1[62] = v10;
  v1[63] = sub_CF44();
  v11 = sub_10154();
  v1[64] = v11;
  sub_C5EC(v11);
  v1[65] = v12;
  v1[66] = sub_CF44();
  v13 = sub_3B68(&qword_186A8, &qword_10B40);
  sub_CBA0(v13);
  v1[67] = sub_D020();
  v1[68] = swift_task_alloc();
  v14 = sub_10224();
  v1[69] = v14;
  sub_C5EC(v14);
  v1[70] = v15;
  v1[71] = sub_CF44();
  v16 = sub_101F4();
  v1[72] = v16;
  sub_C5EC(v16);
  v1[73] = v17;
  v1[74] = sub_D020();
  v1[75] = swift_task_alloc();
  v1[76] = swift_task_alloc();
  v1[77] = swift_task_alloc();
  v18 = sub_10424();
  v1[78] = v18;
  sub_C5EC(v18);
  v1[79] = v19;
  v1[80] = sub_D020();
  v1[81] = swift_task_alloc();
  v20 = sub_3B68(&qword_186B0, &qword_10B48);
  v1[82] = v20;
  sub_CBA0(v20);
  v1[83] = sub_D020();
  v1[84] = swift_task_alloc();
  v1[85] = swift_task_alloc();
  v1[86] = swift_task_alloc();
  v1[87] = swift_task_alloc();
  v1[88] = swift_task_alloc();
  v1[89] = swift_task_alloc();
  v21 = sub_3B68(&qword_18670, &qword_10B80);
  sub_CBA0(v21);
  v1[90] = sub_D020();
  v1[91] = swift_task_alloc();
  v22 = sub_FD54();
  v1[92] = v22;
  sub_C5EC(v22);
  v1[93] = v23;
  v1[94] = sub_CF44();
  v24 = sub_3B68(&qword_186C0, &qword_10DF0);
  v1[95] = v24;
  sub_CBA0(v24);
  v1[96] = sub_D020();
  v1[97] = swift_task_alloc();
  v1[98] = swift_task_alloc();
  v1[99] = swift_task_alloc();
  v1[100] = swift_task_alloc();
  v1[101] = swift_task_alloc();
  v25 = sub_104D4();
  v1[102] = v25;
  sub_C5EC(v25);
  v1[103] = v26;
  v1[104] = sub_D020();
  v1[105] = swift_task_alloc();
  v1[106] = swift_task_alloc();
  v1[107] = swift_task_alloc();
  v1[108] = swift_task_alloc();
  v1[109] = swift_task_alloc();
  v1[110] = swift_task_alloc();
  v1[111] = swift_task_alloc();
  v1[112] = swift_task_alloc();
  v1[113] = swift_task_alloc();
  v1[114] = swift_task_alloc();
  v1[115] = swift_task_alloc();
  v1[116] = swift_task_alloc();
  v1[117] = swift_task_alloc();
  v27 = sub_104B4();
  v1[118] = v27;
  sub_C5EC(v27);
  v1[119] = v28;
  v1[120] = sub_CF44();
  v29 = sub_C934();

  return _swift_task_switch(v29, v30, v31);
}

uint64_t sub_5A4C()
{
  v123 = v0;
  v1 = *(v0 + 368);
  v2 = *(v1 + OBJC_IVAR____TtC25SiriSuggestionsFlowPlugin19SiriSuggestionsFlow_suggestionsFacade);
  *(v0 + 968) = v2;
  if (v2 && (v3 = *(v1 + OBJC_IVAR____TtC25SiriSuggestionsFlowPlugin19SiriSuggestionsFlow_suggestionDispatcherFactory), (*(v0 + 976) = v3) != 0))
  {

    v121 = v3;

    v4 = sub_10334();
    sub_10314();

    sub_10234();
    v5 = sub_10334();
    sub_CCD0();
    sub_10344();

    sub_10304();

    v6 = sub_104C4();
    sub_105A4();

    v7 = sub_D214();
    v8 = *(v0 + 936);
    v9 = *(v0 + 824);
    v10 = *(v0 + 816);
    if (v7)
    {
      v11 = *(v0 + 808);
      v119 = *(v0 + 936);
      v12 = *(v0 + 368);
      v116 = *(v0 + 816);
      v13 = sub_CEEC();
      v122[0] = sub_CED4();
      *v13 = 136315138;
      v14 = OBJC_IVAR____TtC25SiriSuggestionsFlowPlugin19SiriSuggestionsFlow_intentProperties;
      sub_D120(v12 + OBJC_IVAR____TtC25SiriSuggestionsFlowPlugin19SiriSuggestionsFlow_intentProperties, v0 + 264);
      sub_C0A4(v12 + v14, v11, &qword_186C0, &qword_10DF0);
      v15 = sub_10504();
      v17 = sub_B5DC(v15, v16, v122);

      *(v13 + 4) = v17;
      sub_CAC0(&dword_0, v18, v19, "Using intentProperties: %s");
      sub_CC04();
      sub_41A8(v13);

      v20 = *(v9 + 8);
      v20(v119, v116);
    }

    else
    {

      v20 = *(v9 + 8);
      v20(v8, v10);
    }

    *(v0 + 984) = v20;
    sub_10304();
    v28 = sub_104C4();
    v29 = sub_10594();
    if (sub_CC50(v29))
    {
      v30 = sub_CCE8();
      sub_CCDC(v30);
      sub_D19C(&dword_0, v31, v32, "SiriSuggestionsFlow :: Getting suggestions from sirisuggestions");
      sub_CA38();
    }

    v33 = *(v0 + 368);

    v34 = sub_CCC4();
    (v20)(v34);
    sub_3E04((v33 + OBJC_IVAR____TtC25SiriSuggestionsFlowPlugin19SiriSuggestionsFlow_requestIdProvider), *(v33 + OBJC_IVAR____TtC25SiriSuggestionsFlowPlugin19SiriSuggestionsFlow_requestIdProvider + 24));
    sub_CCC4();
    sub_10434();
    v120 = v20;
    if (v35)
    {
      v36 = *(v0 + 728);
      sub_FD34();

      sub_C654(v36);
      if (!v75)
      {
        v49 = (v0 + 1096);
        (*(*(v0 + 744) + 32))(*(v0 + 752), *(v0 + 728), *(v0 + 736));
        *(v0 + 1096) = 0;
        type metadata accessor for SiriSuggestionsFlow(0);
        sub_CA14();
        sub_C010(v50, 255, v51, &protocol conformance descriptor for SiriSuggestionsFlow);
        sub_FF74();
        sub_FF14();

        v117 = sub_10364();
        v53 = v52;

        sub_10304();

        v54 = sub_104C4();
        v55 = sub_105A4();

        v56 = os_log_type_enabled(v54, v55);
        v57 = *(v0 + 816);
        if (v56)
        {
          v115 = *(v0 + 920);
          v58 = *(v0 + 368);
          v59 = swift_slowAlloc();
          v60 = swift_slowAlloc();
          v122[0] = v60;
          *v59 = 136315394;
          v61 = *(v58 + 24);
          *(v0 + 288) = *(v58 + 16);
          *(v0 + 296) = v61;

          sub_3B68(&qword_18730, &unk_10BB0);
          v62 = sub_10504();
          v114 = v57;
          v64 = sub_B5DC(v62, v63, v122);

          *(v59 + 4) = v64;
          *(v59 + 12) = 2080;
          v65 = v117;
          *(v0 + 304) = v117;
          *(v0 + 312) = v53;

          v66 = sub_10504();
          v68 = sub_B5DC(v66, v67, v122);

          *(v59 + 14) = v68;
          _os_log_impl(&dword_0, v54, v55, "SiriSuggestionsFlow :: previousExecutionSessionId: %s, currentSessionId: %s", v59, 0x16u);
          swift_arrayDestroy();
          v69 = v60;
          v49 = (v0 + 1096);
          sub_41A8(v69);
          v70 = v59;
          v20 = v120;
          sub_41A8(v70);

          v120(v115, v114);
          v71 = &SiriSuggestionsInvocationFlow;
          if (!v53)
          {
            goto LABEL_33;
          }
        }

        else
        {

          v72 = sub_CCC4();
          (v20)(v72);
          v71 = &SiriSuggestionsInvocationFlow;
          v65 = v117;
          if (!v53)
          {
LABEL_33:
            v76 = *(v0 + 800);
            v77 = *(v0 + 368);
            v78 = *&v71[50].flags;
            *(v0 + 992) = v78;
            sub_D120(v77 + v78, v0 + 216);
            sub_C0A4(v77 + v78, v76, &qword_186C0, &qword_10DF0);
            v79 = sub_C9EC();
            v80 = *(v0 + 800);
            if (v79)
            {
              v81 = *(v0 + 512);
              sub_3D54(*(v0 + 800), &qword_186C0, &qword_10DF0);
              sub_4134();
              sub_39C0(v82, v83, v84, v81);
            }

            else
            {
              v85 = *(v0 + 752);
              v86 = *(v0 + 712);
              v87 = *(v0 + 704);
              v88 = *(v0 + 648);
              v89 = *(v0 + 632);
              v90 = *(v0 + 624);
              v91 = sub_CBAC();
              v92(v91);
              sub_3D54(v80, &qword_186C0, &qword_10DF0);
              sub_103F4();
              (*(v89 + 8))(v88, v90);
              v93 = swift_task_alloc();
              *(v93 + 16) = v85;
              *(v93 + 24) = v49;
              sub_43A4(sub_BCD8, v93, v86);

              sub_3D54(v87, &qword_186B0, &qword_10B48);
            }

            sub_10304();
            v94 = sub_4160();
            sub_C0A4(v94, v95, v96, v97);
            v98 = sub_104C4();
            v99 = sub_10594();
            v100 = os_log_type_enabled(v98, v99);
            v101 = *(v0 + 816);
            if (v100)
            {
              v118 = *(v0 + 912);
              v102 = *(v0 + 704);
              v103 = *(v0 + 696);
              v104 = sub_CEEC();
              v105 = sub_CED4();
              v122[0] = v105;
              *v104 = 136315138;
              sub_C0A4(v103, v102, &qword_186B0, &qword_10B48);
              sub_D164();
              sub_10504();
              sub_3D54(v103, &qword_186B0, &qword_10B48);
              v106 = sub_D164();
              v109 = sub_B5DC(v106, v107, v108);

              *(v104 + 4) = v109;
              _os_log_impl(&dword_0, v98, v99, "Using presentationContext as: %s", v104, 0xCu);
              sub_3E48(v105);
              sub_41A8(v105);
              sub_41A8(v104);

              v120(v118, v101);
            }

            else
            {
              v110 = *(v0 + 696);

              sub_3D54(v110, &qword_186B0, &qword_10B48);
              v111 = sub_4160();
              (v20)(v111);
            }

            *(v0 + 320) = v121;
            sub_3B68(&qword_18700, &qword_10B88);
            swift_allocObject();

            swift_task_alloc();
            sub_CC38();
            *(v0 + 1000) = v112;
            *v112 = v113;
            v112[1] = sub_66A8;

            return SinkDispatcherProvider.init(suggestionDispatcherFactory:)(v0 + 320);
          }
        }

        v73 = *(v0 + 368);
        v74 = *(v73 + 24);
        if (v74 && (*(v73 + 16) == v65 ? (v75 = v74 == v53) : (v75 = 0), v75 || (sub_10604() & 1) != 0))
        {

          *v49 = 1;
        }

        else
        {
          *(v73 + 16) = v65;
          *(v73 + 24) = v53;
        }

        goto LABEL_33;
      }

      sub_3D54(*(v0 + 728), &qword_18670, &qword_10B80);
    }

    sub_10304();
    v37 = sub_104C4();
    v38 = sub_105B4();
    if (sub_CC50(v38))
    {
      v39 = sub_CCE8();
      sub_CCDC(v39);
      sub_D19C(&dword_0, v40, v41, "SiriSuggestionsFlow :: No requestId set. Skipping suggestions");
      sub_CA38();
    }

    v42 = *(v0 + 864);
    v43 = *(v0 + 816);

    v20(v42, v43);
    sub_FE44();
    sub_10234();
    v44 = sub_10334();
    sub_CE68();
    sub_10324();

    v45 = sub_CCC4();
    v46(v45);
  }

  else
  {
    sub_10304();
    v21 = sub_104C4();
    v22 = sub_105B4();
    if (sub_CE74(v22))
    {
      v23 = sub_CCE8();
      sub_CC98(v23);
      sub_CAA0(&dword_0, v24, v25, "No suggestions facade set. Cannot continue");
      sub_C9D0();
    }

    v26 = sub_4160();
    v27(v26);
    sub_FE44();
  }

  sub_C408();
  sub_C7C0();

  sub_CA08();

  return v47();
}

uint64_t sub_66A8()
{
  sub_D06C();
  v2 = v1;
  sub_4128();
  v4 = v3;
  sub_CF6C();
  *v5 = v4;
  v6 = *v0;
  sub_40F8();
  *v7 = v6;
  *(v4 + 1008) = v2;

  v11 = (&async function pointer to dispatch thunk of SinkDispatcherProvider.getDispatcher() + async function pointer to dispatch thunk of SinkDispatcherProvider.getDispatcher());
  swift_task_alloc();
  sub_CC38();
  *(v4 + 1016) = v8;
  *v8 = v9;
  v8[1] = sub_67DC;

  return v11(v4 + 16);
}

uint64_t sub_67DC()
{
  sub_4140();
  sub_4128();
  v1 = *v0;
  sub_40F8();
  *v2 = v1;

  v3 = sub_C934();

  return _swift_task_switch(v3, v4, v5);
}

uint64_t sub_68C0()
{
  sub_C0A4(v0[46] + v0[124], v0[99], &qword_186C0, &qword_10DF0);
  v5 = sub_C9EC();
  v6 = v0[99];
  if (v5)
  {
    sub_3D54(v0[99], &qword_186C0, &qword_10DF0);
    v7 = 0;
    v8 = 0;
  }

  else
  {
    v1 = v0[81];
    v9 = v0[79];
    v2 = v0[78];
    (*(v9 + 16))(v1, v0[99], v2);
    sub_3D54(v6, &qword_186C0, &qword_10DF0);
    v7 = sub_10404();
    v8 = v10;
    v3 = v9 + 8;
    v11 = sub_C974();
    v12(v11);
  }

  sub_FFF4();
  v13 = sub_FFE4();
  v15 = v14;
  if (v8)
  {
    v16 = v7 == v13 && v8 == v14;
    if (v16)
    {

LABEL_15:
      sub_10304();
      v24 = sub_104C4();
      v25 = sub_105A4();
      if (sub_CE74(v25))
      {
        v26 = sub_CCE8();
        sub_CC98(v26);
        sub_CAA0(&dword_0, v27, v28, "Logging siri help engagement");
        sub_C9D0();
      }

      v29 = v0[123];
      v30 = v0[121];
      v31 = v0[101];
      v32 = v0[71];
      v33 = v0[70];
      v86 = v0[124];
      v89 = v0[69];
      v34 = v24;
      v35 = v0[46];

      v36 = sub_4160();
      v29(v36);
      v0[43] = v30;
      sub_C0A4(v35 + v86, v31, &qword_186C0, &qword_10DF0);
      sub_9E4C(v31, v32);
      v37 = sub_D138();
      sub_3D54(v37, v38, &qword_10DF0);
      (*(v33 + 104))(v32, enum case for SiriSuggestions.Intent.action(_:), v89);
      v39 = swift_task_alloc();
      v0[128] = v39;
      sub_100D4();
      *v39 = v0;
      v39[1] = sub_6F88;
      sub_CB68();

      return SiriSuggestionsBaseAPIClient.submitCurrentIntent(for:intent:submitEngagement:)(v40);
    }

    v7 = sub_10604();

    if (v7)
    {
      goto LABEL_15;
    }
  }

  else
  {
  }

  sub_D150();
  sub_C0A4(v18 + v17, v15, &qword_186C0, &qword_10DF0);
  v19 = sub_C9EC();
  v20 = v0[98];
  if (v19)
  {
    v8 = v0[72];
    v7 = v0[68];
    sub_3D54(v0[98], &qword_186C0, &qword_10DF0);
    sub_4134();
    sub_39C0(v21, v22, v23, v8);
LABEL_21:
    v47 = sub_D054();
    sub_3D54(v47, &qword_186A8, &qword_10B40);
    sub_C0A4(v1 + v7, v8, &qword_186C0, &qword_10DF0);
    swift_task_alloc();
    sub_CC38();
    v0[130] = v48;
    *v48 = v49;
    sub_C8F8(v48);
    sub_CB68();

    return sub_A408();
  }

  v42 = sub_CA74();
  v43(v42);
  sub_3D54(v20, &qword_186C0, &qword_10DF0);
  sub_103C4();
  v44 = (v3 + 8);
  v45 = sub_4160();
  v46(v45);
  if (sub_3CCC(v2, 1, v1) == 1)
  {
    goto LABEL_21;
  }

  v51 = sub_CC78();
  v52(v51);
  sub_10304();
  sub_104C4();
  v53 = sub_105A4();
  if (sub_CE74(v53))
  {
    v54 = sub_CCE8();
    sub_CC98(v54);
    sub_CAA0(&dword_0, v55, v56, "Using precomputed suggestions from the intent");
    sub_C9D0();
  }

  sub_CE3C();
  v57 = sub_4160();
  v4(v57);
  v58 = sub_C974();
  v88(v58);
  sub_C0A4((v0 + 2), (v0 + 12), &qword_18708, &qword_10B98);
  if (v0[15])
  {
    sub_C84C();
    sub_3E04(v0 + 7, v8);
    v59 = sub_C944();
    v60(v59);
    v61 = sub_C974();
    sub_C0A4(v61, v62, v63, v64);
    sub_C8D8(v2);
    if (v16)
    {
      sub_C888();
      v87 = v65;
      sub_CF14();
      (*(v66 + 104))(v7, enum case for InvocationType.siriHelp(_:));
      sub_C928();
      v67();
      sub_C770();
      sub_C8D8(v87);
      if (!v16)
      {
        sub_3D54(v0[86], &qword_186B0, &qword_10B48);
      }
    }

    else
    {
      v80 = sub_C95C();
      v81(v80);
    }

    v82 = swift_task_alloc();
    v0[132] = v82;
    *v82 = v0;
    sub_C54C(v82);
    sub_CB68();

    return dispatch thunk of SuggestionsDispatcher.dispatch(suggestions:presentationContext:)(v83);
  }

  else
  {
    sub_3D54((v0 + 12), &qword_18708, &qword_10B98);
    sub_10304();
    v68 = sub_104C4();
    v69 = sub_105B4();
    sub_CC50(v69);
    sub_CAE0();
    if (v70)
    {
      *sub_CCE8() = 0;
      sub_CDB0(&dword_0, v71, v72, "No dispatcher returned from factory!");
      sub_CB4C();
    }

    v73 = sub_4160();
    v44(v73);
    v74 = sub_10184();
    sub_D190(v74);
    sub_3B68(&qword_18718, &qword_10BA0);
    v75 = sub_BC14();
    sub_D1FC(v75);
    sub_C43C();
    sub_CB68();

    return _swift_task_switch(v76, v77, v78);
  }
}

uint64_t sub_6F88()
{
  sub_4140();
  sub_4128();
  v3 = v2;
  sub_CF6C();
  *v4 = v3;
  v5 = *v1;
  sub_40F8();
  *v6 = v5;
  *(v3 + 1032) = v0;

  v7 = sub_D17C();
  v8(v7);
  sub_CB08();

  return _swift_task_switch(v9, v10, v11);
}

uint64_t sub_70A0(uint64_t a1)
{
  sub_D150();
  sub_C0A4(v10 + v9, v2, &qword_186C0, &qword_10DF0);
  v11 = sub_C9EC();
  v12 = v4[98];
  if (v11)
  {
    v1 = v4[72];
    v3 = v4[68];
    sub_3D54(v4[98], &qword_186C0, &qword_10DF0);
    sub_4134();
    sub_39C0(v13, v14, v15, v1);
LABEL_4:
    v21 = sub_D054();
    sub_3D54(v21, &qword_186A8, &qword_10B40);
    sub_C0A4(v5 + v3, v1, &qword_186C0, &qword_10DF0);
    swift_task_alloc();
    sub_CC38();
    v4[130] = v22;
    *v22 = v23;
    sub_C8F8(v22);
    sub_CB68();

    return sub_A408();
  }

  v16 = sub_CA74();
  v17(v16);
  sub_3D54(v12, &qword_186C0, &qword_10DF0);
  sub_103C4();
  v18 = (v7 + 8);
  v19 = sub_4160();
  v20(v19);
  if (sub_3CCC(v6, 1, v5) == 1)
  {
    goto LABEL_4;
  }

  v26 = sub_CC78();
  v27(v26);
  sub_10304();
  sub_104C4();
  v28 = sub_105A4();
  if (sub_CE74(v28))
  {
    v29 = sub_CCE8();
    sub_CC98(v29);
    sub_CAA0(&dword_0, v30, v31, "Using precomputed suggestions from the intent");
    sub_C9D0();
  }

  sub_CE3C();
  v32 = sub_4160();
  v8(v32);
  v33 = sub_C974();
  v62(v33);
  sub_C0A4((v4 + 2), (v4 + 12), &qword_18708, &qword_10B98);
  if (v4[15])
  {
    sub_C84C();
    sub_3E04(v4 + 7, v1);
    v34 = sub_C944();
    v35(v34);
    v36 = sub_C974();
    sub_C0A4(v36, v37, v38, v39);
    sub_C8D8(v6);
    if (v40)
    {
      sub_C888();
      v61 = v41;
      sub_CF14();
      (*(v42 + 104))(v3, enum case for InvocationType.siriHelp(_:));
      sub_C928();
      v43();
      sub_C770();
      sub_C8D8(v61);
      if (!v40)
      {
        sub_3D54(v4[86], &qword_186B0, &qword_10B48);
      }
    }

    else
    {
      v56 = sub_C95C();
      v57(v56);
    }

    v58 = swift_task_alloc();
    v4[132] = v58;
    *v58 = v4;
    sub_C54C(v58);
    sub_CB68();

    return dispatch thunk of SuggestionsDispatcher.dispatch(suggestions:presentationContext:)(v59);
  }

  else
  {
    sub_3D54((v4 + 12), &qword_18708, &qword_10B98);
    sub_10304();
    v44 = sub_104C4();
    v45 = sub_105B4();
    sub_CC50(v45);
    sub_CAE0();
    if (v46)
    {
      *sub_CCE8() = 0;
      sub_CDB0(&dword_0, v47, v48, "No dispatcher returned from factory!");
      sub_CB4C();
    }

    v49 = sub_4160();
    v18(v49);
    v50 = sub_10184();
    sub_D190(v50);
    sub_3B68(&qword_18718, &qword_10BA0);
    v51 = sub_BC14();
    sub_D1FC(v51);
    sub_C43C();
    sub_CB68();

    return _swift_task_switch(v52, v53, v54);
  }
}

uint64_t sub_74A0()
{
  sub_D06C();
  v2 = *v1;
  sub_CF6C();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 1048) = v0;

  sub_3D54(*(v2 + 776), &qword_186C0, &qword_10DF0);
  sub_CB08();

  return _swift_task_switch(v5, v6, v7);
}

uint64_t sub_75D4()
{
  v3 = v0[124];
  v4 = v0[96];
  v5 = v0[78];
  v6 = v0[46];
  (*(v0[73] + 32))(v0[77], v0[75], v0[72]);
  sub_C0A4(v6 + v3, v4, &qword_186C0, &qword_10DF0);
  sub_C654(v4);
  if (v7)
  {
    sub_3D54(v0[96], &qword_186C0, &qword_10DF0);
  }

  else
  {
    v42 = v0[101];
    v3 = v0[78];
    v41 = v0[77];
    v8 = v0[73];
    v9 = v0[72];
    v1 = v0[67];
    v10 = v0[64];
    v43 = v0[46];
    v45 = v0[124];
    (*(v0[79] + 32))(v0[80], v0[96], v3);
    sub_103E4();
    sub_10404();
    sub_10414();
    sub_4134();
    sub_39C0(v11, v12, v13, v10);
    (*(v8 + 16))(v1, v41, v9);
    sub_39C0(v1, 0, 1, v9);
    v2 = v42;
    sub_103D4();
    v14 = sub_CC44();
    v15(v14);
    sub_39C0(v42, 0, 1, v3);
    v5 = v43;
    swift_beginAccess();
    sub_C058(v42, v43 + v45, &qword_186C0, &qword_10DF0);
    swift_endAccess();
  }

  sub_C0A4((v0 + 2), (v0 + 12), &qword_18708, &qword_10B98);
  if (v0[15])
  {
    sub_C84C();
    sub_3E04(v0 + 7, v5);
    v16 = sub_C944();
    v17(v16);
    v18 = sub_C974();
    sub_C0A4(v18, v19, v20, v21);
    sub_C8D8(v1);
    if (v7)
    {
      sub_C888();
      v44 = v22;
      sub_CF14();
      (*(v23 + 104))(v3, enum case for InvocationType.siriHelp(_:));
      sub_C928();
      v24();
      sub_C770();
      sub_C8D8(v44);
      if (!v7)
      {
        sub_3D54(v0[86], &qword_186B0, &qword_10B48);
      }
    }

    else
    {
      v36 = sub_C95C();
      v37(v36);
    }

    v38 = swift_task_alloc();
    v0[132] = v38;
    *v38 = v0;
    v39 = sub_C54C(v38);

    return dispatch thunk of SuggestionsDispatcher.dispatch(suggestions:presentationContext:)(v39);
  }

  else
  {
    sub_3D54((v0 + 12), &qword_18708, &qword_10B98);
    sub_10304();
    v25 = sub_104C4();
    v26 = sub_105B4();
    sub_CC50(v26);
    sub_CAE0();
    if (v27)
    {
      *sub_CCE8() = 0;
      sub_CDB0(&dword_0, v28, v29, "No dispatcher returned from factory!");
      sub_CB4C();
    }

    v30 = sub_4160();
    v2(v30);
    v31 = sub_10184();
    sub_D190(v31);
    sub_3B68(&qword_18718, &qword_10BA0);
    v32 = sub_BC14();
    sub_D1FC(v32);
    v33 = sub_C43C();

    return _swift_task_switch(v33, v34, v35);
  }
}

uint64_t sub_79E0()
{
  v2 = *v1;
  v3 = *v1;
  sub_40F8();
  *v4 = v3;
  *v4 = *v1;
  v3[133] = v0;

  v5 = v2[73];
  (*(v2[65] + 8))(v2[66], v2[64]);
  v8 = *(v5 + 8);
  v7 = v5 + 8;
  v6 = v8;
  if (v0)
  {
    v3[135] = v6;
    v3[136] = v7 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  }

  v9 = sub_C974();
  v10(v9);
  sub_CB08();

  return _swift_task_switch(v11, v12, v13);
}

uint64_t sub_7BBC()
{
  sub_4140();
  sub_3E48((v0 + 56));
  v1 = sub_10184();
  sub_D190(v1);
  sub_3B68(&qword_18718, &qword_10BA0);
  v2 = sub_BC14();
  sub_D1FC(v2);
  v3 = sub_C43C();

  return _swift_task_switch(v3, v4, v5);
}

uint64_t sub_7C38()
{
  sub_4140();
  sub_100E4();

  v0 = sub_C934();

  return _swift_task_switch(v0, v1, v2);
}

uint64_t sub_7CA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52)
{
  sub_D038();
  sub_D144();
  if (*(v53 + 200))
  {
    v54 = *(v53 + 880);
    sub_BCC0((v53 + 176), v53 + 136);
    sub_10304();
    v55 = sub_104C4();
    sub_10594();
    sub_CC6C();
    if (os_log_type_enabled(v55, v56))
    {
      v57 = sub_CCE8();
      sub_CCDC(v57);
      _os_log_impl(&dword_0, v55, v54, "found flow from dispatcher. Returning nextFlow", v52, 2u);
      sub_CA38();
    }

    v58 = *(v53 + 984);
    v110 = *(v53 + 952);
    v113 = *(v53 + 944);
    v102 = *(v53 + 752);
    v105 = *(v53 + 960);
    v59 = *(v53 + 744);
    v96 = *(v53 + 712);
    v99 = *(v53 + 736);
    v93 = *(v53 + 616);
    v60 = *(v53 + 584);
    v61 = *(v53 + 576);

    v62 = sub_CB84();
    v58(v62);
    sub_3E04((v53 + 136), *(v53 + 160));
    sub_FE34();

    (*(v60 + 8))(v93, v61);
    sub_3D54(v53 + 16, &qword_18708, &qword_10B98);
    sub_3D54(v96, &qword_186B0, &qword_10B48);
    sub_3E48((v53 + 136));
    (*(v59 + 8))(v102, v99);
    v63 = sub_10234();
    v64 = sub_CE9C(v63);
    sub_C748();

    (*(v110 + 8))(v105, v113);
  }

  else
  {
    sub_3D54(v53 + 176, &qword_18728, &qword_10BA8);
    sub_10304();
    v65 = sub_104C4();
    sub_10594();
    sub_CC6C();
    if (os_log_type_enabled(v65, v66))
    {
      v67 = sub_CCE8();
      sub_CCDC(v67);
      sub_CA54(&dword_0, v68, v69, "no flow was returned from the dispatcher");
      sub_CA38();
    }

    v70 = v65;
    v71 = *(v53 + 984);
    v111 = *(v53 + 952);
    v114 = *(v53 + 944);
    v72 = *(v53 + 872);
    v73 = *(v53 + 816);
    v103 = *(v53 + 752);
    v106 = *(v53 + 960);
    v74 = *(v53 + 744);
    v97 = *(v53 + 712);
    v100 = *(v53 + 736);
    v75 = *(v53 + 616);
    v76 = *(v53 + 584);
    v77 = *(v53 + 576);

    v71(v72, v73);
    sub_FE44();

    (*(v76 + 8))(v75, v77);
    sub_3D54(v53 + 16, &qword_18708, &qword_10B98);
    sub_3D54(v97, &qword_186B0, &qword_10B48);
    (*(v74 + 8))(v103, v100);
    sub_10234();
    v78 = sub_10334();
    sub_10324();

    (*(v111 + 8))(v106, v114);
  }

  sub_C408();
  sub_C7C0();
  v88 = *(v53 + 608);
  v89 = *(v53 + 600);
  v90 = *(v53 + 592);
  v91 = *(v53 + 568);
  v92 = *(v53 + 544);
  v94 = *(v53 + 536);
  v95 = *(v53 + 528);
  v98 = *(v53 + 504);
  v101 = *(v53 + 480);
  v104 = *(v53 + 456);
  v107 = *(v53 + 448);
  v108 = *(v53 + 440);
  v109 = *(v53 + 432);
  v112 = *(v53 + 416);
  v115 = *(v53 + 400);

  sub_CA08();
  sub_D004();

  return v80(v79, v80, v81, v82, v83, v84, v85, v86, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, v88, v89, v90, v91, v92, v94, v95, v98, v101, v104, v107, v108, v109, v112, v115, a49, a50, a51, a52);
}

uint64_t sub_822C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t *a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t *a58, uint64_t a59, uint64_t a60)
{
  sub_D038();
  a59 = v67;
  a60 = v68;
  sub_D144();
  a58 = v62;
  v69 = v62[129];
  sub_CD90();
  v70 = sub_3B68(&qword_18698, &qword_10B60);
  if ((sub_C980(v70) & 1) == 0)
  {
LABEL_7:

    sub_10304();
    swift_errorRetain();
    v80 = sub_104C4();
    sub_105B4();

    sub_D214();
    sub_CAF4();
    if (v81)
    {
      sub_CEEC();
      v82 = sub_CD50();
      sub_CF04(v82);
      sub_D0CC(4.8149e-34);
      v83 = sub_10504();
      v66 = sub_B5DC(v83, v84, &a48);

      *(v65 + 4) = v66;
      sub_CAC0(&dword_0, v85, v86, "Unable to execute sirisuggestions: %s");
      sub_CC04();
      sub_41A8(v65);

      v87 = sub_CFE4();
      v89 = v88(v87);
    }

    else
    {

      v90 = sub_CFD4();
      v89 = (v65)(v90);
    }

    sub_C674(v89);

    sub_3D54((v62 + 2), &qword_18708, &qword_10B98);
    sub_3D54(v66, &qword_186B0, &qword_10B48);
    v91 = sub_CF34();
    v92(v91);
    v93 = sub_10234();
    v94 = sub_D0E8(v93);
    v95 = sub_CA2C();
    sub_C8B8(v95);

    v96 = sub_CE90();
    v97(v96);
    goto LABEL_11;
  }

  v71 = sub_CE30();
  if ((*(v72 + 88))(v71) != enum case for SiriHelpDispatcherErrors.notEnoughSuggestions(_:))
  {
    v78 = sub_CE30();
    (*(v79 + 8))(v78);
    goto LABEL_7;
  }

  sub_CD70();
  v73 = sub_CC44();
  sub_C0A4(v73, v74, v75, v76);
  sub_CD00();
  if (v77)
  {
    v109 = sub_3D54(v60, &qword_186B0, &qword_10B48);
    v110 = 1;
  }

  else
  {
    sub_D0B0();
    v61 = (v61 + 8);
    v107 = sub_CA2C();
    v109 = v108(v107);
    v110 = 0;
  }

  sub_C9A8(v109, v110);
  v111 = sub_CFF4();
  v112(v111);
  v113 = sub_CB28();
  sub_39C0(v113, v114, v115, v69);
  v116 = *(v64 + 48);
  v117 = sub_CBAC();
  sub_C0A4(v117, v118, v119, &qword_10DE0);
  sub_CDF0();
  v120 = sub_C9EC();
  v121 = v62[61];
  if (v120 == 1)
  {
    v63 = &qword_186D8;
    v122 = &qword_10DE0;
    sub_C928();
    sub_3D54(v123, v124, v125);
    sub_C928();
    sub_3D54(v126, v127, v128);
    sub_C654(v60 + v116);
    if (!v77)
    {
      goto LABEL_21;
    }

    sub_3D54(v62[52], &qword_186D8, &qword_10DE0);
  }

  else
  {
    sub_C0A4(v62[52], v62[55], &qword_186D8, &qword_10DE0);
    sub_C654(v60 + v116);
    if (v77)
    {
      sub_CFAC();
      v63 = &qword_186D8;
      v122 = &qword_10DE0;
      sub_C928();
      sub_3D54(v129, v130, v131);
      sub_C928();
      sub_3D54(v132, v133, v134);
      v135 = sub_CF9C();
      v136(v135);
LABEL_21:
      v157 = sub_3D54(v62[52], &qword_186D0, &unk_10B70);
LABEL_22:
      sub_CDD0(v157);
      v137 = sub_4160();
      sub_C0A4(v137, v138, v139, v140);
      v141 = sub_104C4();
      v142 = sub_10594();
      if (sub_CEB8(v142))
      {
        v143 = sub_CBE0();
        v144 = sub_CED4();
        a48 = v144;
        *v143 = 136315138;
        v145 = sub_CCD0();
        sub_C0A4(v145, v146, v147, v148);
        sub_CD28();
        if (v77)
        {
          v175 = sub_3D54(v60, &qword_186B0, &qword_10B48);
          v176 = 1;
        }

        else
        {
          sub_D094();
          v65 += 8;
          v173 = sub_CCD0();
          v175 = v174(v173);
          v176 = 0;
        }

        v116 = sub_C6F4(v175, v176);
        sub_3D54(v65, &qword_186B0, &qword_10B48);
        v177 = sub_D078();

        *(v143 + 4) = v177;
        sub_CE10(&dword_0, v178, v179, "No suggestions for invocation type: %s. Marking flow as complete");
        sub_3E48(v144);
        sub_CB4C();
        sub_41A8(v143);

        v180 = sub_CF5C();
        v150 = v181(v180);
      }

      else
      {
        sub_CBBC();
        sub_3D54(v63, &qword_186B0, &qword_10B48);
        v149 = sub_CC44();
        v150 = (v122)(v149);
      }

      sub_C6B4(v150);

      sub_3D54((v62 + 2), &qword_18708, &qword_10B98);
      sub_3D54(v116, &qword_186B0, &qword_10B48);

      v182 = sub_CF8C();
      v183(v182);
      v184 = sub_10234();
      v185 = sub_D104(v184);
      sub_C8B8(v60);

      v186 = sub_CE90();
      v187(v186);
      goto LABEL_11;
    }

    v151 = sub_C614();
    v152(v151);
    sub_C5FC();
    sub_C010(v153, 255, v154, &protocol conformance descriptor for InvocationType);
    sub_C974();
    v60 = v121;
    sub_104F4();
    v155 = sub_CB14();
    v61(v155);
    v122 = &qword_186D8;
    v116 = &qword_10DE0;
    sub_CFBC(v65);
    sub_CFBC(&qword_10DE0);
    v156 = sub_D138();
    v61(v156);
    v157 = sub_CFBC(a47);
    if ((v121 & 1) == 0)
    {
      goto LABEL_22;
    }
  }

  v158 = v62[106];
  sub_10304();
  v159 = sub_104C4();
  sub_10594();
  sub_CC6C();
  if (os_log_type_enabled(v159, v160))
  {
    v161 = sub_CCE8();
    sub_CCDC(v161);
    sub_CA54(&dword_0, v162, v163, "Unable to render suggestions as there isnt enough for the sirihelp experience. Falling back to server");
    sub_CA38();
  }

  sub_C580();
  v164 = sub_CB84();
  v158(v164);
  v165 = sub_CB38();
  v166(v165);
  sub_FE54();

  v167 = sub_C974();
  v168(v167);
  sub_3D54((v62 + 2), &qword_18708, &qword_10B98);
  sub_3D54(a40, &qword_186B0, &qword_10B48);

  (*(v159 + 8))(a42, a41);
  v169 = sub_10234();
  v170 = sub_CE9C(v169);
  sub_C748();

  v171 = sub_CF7C();
  v172(v171);
LABEL_11:
  sub_C408();
  sub_C460();

  sub_CA08();
  sub_D004();

  return v99(v98, v99, v100, v101, v102, v103, v104, v105, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, a52);
}

uint64_t sub_8AFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t *a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t *a58, uint64_t a59, uint64_t a60)
{
  sub_D038();
  a59 = v67;
  a60 = v68;
  sub_D144();
  a58 = v62;
  v69 = v62[131];
  sub_CD90();
  v70 = sub_3B68(&qword_18698, &qword_10B60);
  if ((sub_C980(v70) & 1) == 0)
  {
LABEL_7:

    sub_10304();
    swift_errorRetain();
    v80 = sub_104C4();
    sub_105B4();

    sub_D214();
    sub_CAF4();
    if (v81)
    {
      sub_CEEC();
      v82 = sub_CD50();
      sub_CF04(v82);
      sub_D0CC(4.8149e-34);
      v83 = sub_10504();
      v66 = sub_B5DC(v83, v84, &a48);

      *(v65 + 4) = v66;
      sub_CAC0(&dword_0, v85, v86, "Unable to execute sirisuggestions: %s");
      sub_CC04();
      sub_41A8(v65);

      v87 = sub_CFE4();
      v89 = v88(v87);
    }

    else
    {

      v90 = sub_CFD4();
      v89 = (v65)(v90);
    }

    sub_C674(v89);

    sub_3D54((v62 + 2), &qword_18708, &qword_10B98);
    sub_3D54(v66, &qword_186B0, &qword_10B48);
    v91 = sub_CF34();
    v92(v91);
    v93 = sub_10234();
    v94 = sub_D0E8(v93);
    v95 = sub_CA2C();
    sub_C8B8(v95);

    v96 = sub_CE90();
    v97(v96);
    goto LABEL_11;
  }

  v71 = sub_CE30();
  if ((*(v72 + 88))(v71) != enum case for SiriHelpDispatcherErrors.notEnoughSuggestions(_:))
  {
    v78 = sub_CE30();
    (*(v79 + 8))(v78);
    goto LABEL_7;
  }

  sub_CD70();
  v73 = sub_CC44();
  sub_C0A4(v73, v74, v75, v76);
  sub_CD00();
  if (v77)
  {
    v109 = sub_3D54(v60, &qword_186B0, &qword_10B48);
    v110 = 1;
  }

  else
  {
    sub_D0B0();
    v61 = (v61 + 8);
    v107 = sub_CA2C();
    v109 = v108(v107);
    v110 = 0;
  }

  sub_C9A8(v109, v110);
  v111 = sub_CFF4();
  v112(v111);
  v113 = sub_CB28();
  sub_39C0(v113, v114, v115, v69);
  v116 = *(v64 + 48);
  v117 = sub_CBAC();
  sub_C0A4(v117, v118, v119, &qword_10DE0);
  sub_CDF0();
  v120 = sub_C9EC();
  v121 = v62[61];
  if (v120 == 1)
  {
    v63 = &qword_186D8;
    v122 = &qword_10DE0;
    sub_C928();
    sub_3D54(v123, v124, v125);
    sub_C928();
    sub_3D54(v126, v127, v128);
    sub_C654(v60 + v116);
    if (!v77)
    {
      goto LABEL_21;
    }

    sub_3D54(v62[52], &qword_186D8, &qword_10DE0);
  }

  else
  {
    sub_C0A4(v62[52], v62[55], &qword_186D8, &qword_10DE0);
    sub_C654(v60 + v116);
    if (v77)
    {
      sub_CFAC();
      v63 = &qword_186D8;
      v122 = &qword_10DE0;
      sub_C928();
      sub_3D54(v129, v130, v131);
      sub_C928();
      sub_3D54(v132, v133, v134);
      v135 = sub_CF9C();
      v136(v135);
LABEL_21:
      v157 = sub_3D54(v62[52], &qword_186D0, &unk_10B70);
LABEL_22:
      sub_CDD0(v157);
      v137 = sub_4160();
      sub_C0A4(v137, v138, v139, v140);
      v141 = sub_104C4();
      v142 = sub_10594();
      if (sub_CEB8(v142))
      {
        v143 = sub_CBE0();
        v144 = sub_CED4();
        a48 = v144;
        *v143 = 136315138;
        v145 = sub_CCD0();
        sub_C0A4(v145, v146, v147, v148);
        sub_CD28();
        if (v77)
        {
          v175 = sub_3D54(v60, &qword_186B0, &qword_10B48);
          v176 = 1;
        }

        else
        {
          sub_D094();
          v65 += 8;
          v173 = sub_CCD0();
          v175 = v174(v173);
          v176 = 0;
        }

        v116 = sub_C6F4(v175, v176);
        sub_3D54(v65, &qword_186B0, &qword_10B48);
        v177 = sub_D078();

        *(v143 + 4) = v177;
        sub_CE10(&dword_0, v178, v179, "No suggestions for invocation type: %s. Marking flow as complete");
        sub_3E48(v144);
        sub_CB4C();
        sub_41A8(v143);

        v180 = sub_CF5C();
        v150 = v181(v180);
      }

      else
      {
        sub_CBBC();
        sub_3D54(v63, &qword_186B0, &qword_10B48);
        v149 = sub_CC44();
        v150 = (v122)(v149);
      }

      sub_C6B4(v150);

      sub_3D54((v62 + 2), &qword_18708, &qword_10B98);
      sub_3D54(v116, &qword_186B0, &qword_10B48);

      v182 = sub_CF8C();
      v183(v182);
      v184 = sub_10234();
      v185 = sub_D104(v184);
      sub_C8B8(v60);

      v186 = sub_CE90();
      v187(v186);
      goto LABEL_11;
    }

    v151 = sub_C614();
    v152(v151);
    sub_C5FC();
    sub_C010(v153, 255, v154, &protocol conformance descriptor for InvocationType);
    sub_C974();
    v60 = v121;
    sub_104F4();
    v155 = sub_CB14();
    v61(v155);
    v122 = &qword_186D8;
    v116 = &qword_10DE0;
    sub_CFBC(v65);
    sub_CFBC(&qword_10DE0);
    v156 = sub_D138();
    v61(v156);
    v157 = sub_CFBC(a47);
    if ((v121 & 1) == 0)
    {
      goto LABEL_22;
    }
  }

  v158 = v62[106];
  sub_10304();
  v159 = sub_104C4();
  sub_10594();
  sub_CC6C();
  if (os_log_type_enabled(v159, v160))
  {
    v161 = sub_CCE8();
    sub_CCDC(v161);
    sub_CA54(&dword_0, v162, v163, "Unable to render suggestions as there isnt enough for the sirihelp experience. Falling back to server");
    sub_CA38();
  }

  sub_C580();
  v164 = sub_CB84();
  v158(v164);
  v165 = sub_CB38();
  v166(v165);
  sub_FE54();

  v167 = sub_C974();
  v168(v167);
  sub_3D54((v62 + 2), &qword_18708, &qword_10B98);
  sub_3D54(a40, &qword_186B0, &qword_10B48);

  (*(v159 + 8))(a42, a41);
  v169 = sub_10234();
  v170 = sub_CE9C(v169);
  sub_C748();

  v171 = sub_CF7C();
  v172(v171);
LABEL_11:
  sub_C408();
  sub_C460();

  sub_CA08();
  sub_D004();

  return v99(v98, v99, v100, v101, v102, v103, v104, v105, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, a52);
}

uint64_t sub_93CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t *a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60)
{
  sub_D038();
  a59 = v67;
  a60 = v68;
  sub_D144();
  a58 = v62;
  (*(v62 + 1080))(*(v62 + 616), *(v62 + 576));
  sub_3E48((v62 + 56));
  v69 = *(v62 + 1064);
  sub_CD90();
  v70 = sub_3B68(&qword_18698, &qword_10B60);
  if ((sub_C980(v70) & 1) == 0)
  {
LABEL_7:

    sub_10304();
    swift_errorRetain();
    v80 = sub_104C4();
    sub_105B4();

    sub_D214();
    sub_CAF4();
    if (v81)
    {
      sub_CEEC();
      v82 = sub_CD50();
      sub_CF04(v82);
      sub_D0CC(4.8149e-34);
      v83 = sub_10504();
      v66 = sub_B5DC(v83, v84, &a48);

      *(v65 + 4) = v66;
      sub_CAC0(&dword_0, v85, v86, "Unable to execute sirisuggestions: %s");
      sub_CC04();
      sub_41A8(v65);

      v87 = sub_CFE4();
      v89 = v88(v87);
    }

    else
    {

      v90 = sub_CFD4();
      v89 = (v65)(v90);
    }

    sub_C674(v89);

    sub_3D54(v62 + 16, &qword_18708, &qword_10B98);
    sub_3D54(v66, &qword_186B0, &qword_10B48);
    v91 = sub_CF34();
    v92(v91);
    v93 = sub_10234();
    v94 = sub_D0E8(v93);
    v95 = sub_CA2C();
    sub_C8B8(v95);

    v96 = sub_CE90();
    v97(v96);
    goto LABEL_11;
  }

  v71 = sub_CE30();
  if ((*(v72 + 88))(v71) != enum case for SiriHelpDispatcherErrors.notEnoughSuggestions(_:))
  {
    v78 = sub_CE30();
    (*(v79 + 8))(v78);
    goto LABEL_7;
  }

  sub_CD70();
  v73 = sub_CC44();
  sub_C0A4(v73, v74, v75, v76);
  sub_CD00();
  if (v77)
  {
    v109 = sub_3D54(v60, &qword_186B0, &qword_10B48);
    v110 = 1;
  }

  else
  {
    sub_D0B0();
    v61 = (v61 + 8);
    v107 = sub_CA2C();
    v109 = v108(v107);
    v110 = 0;
  }

  sub_C9A8(v109, v110);
  v111 = sub_CFF4();
  v112(v111);
  v113 = sub_CB28();
  sub_39C0(v113, v114, v115, v69);
  v116 = *(v64 + 48);
  v117 = sub_CBAC();
  sub_C0A4(v117, v118, v119, &qword_10DE0);
  sub_CDF0();
  v120 = sub_C9EC();
  v121 = *(v62 + 488);
  if (v120 == 1)
  {
    v63 = &qword_186D8;
    v122 = &qword_10DE0;
    sub_C928();
    sub_3D54(v123, v124, v125);
    sub_C928();
    sub_3D54(v126, v127, v128);
    sub_C654(v60 + v116);
    if (!v77)
    {
      goto LABEL_21;
    }

    sub_3D54(*(v62 + 416), &qword_186D8, &qword_10DE0);
  }

  else
  {
    sub_C0A4(*(v62 + 416), *(v62 + 440), &qword_186D8, &qword_10DE0);
    sub_C654(v60 + v116);
    if (v77)
    {
      sub_CFAC();
      v63 = &qword_186D8;
      v122 = &qword_10DE0;
      sub_C928();
      sub_3D54(v129, v130, v131);
      sub_C928();
      sub_3D54(v132, v133, v134);
      v135 = sub_CF9C();
      v136(v135);
LABEL_21:
      v157 = sub_3D54(*(v62 + 416), &qword_186D0, &unk_10B70);
LABEL_22:
      sub_CDD0(v157);
      v137 = sub_4160();
      sub_C0A4(v137, v138, v139, v140);
      v141 = sub_104C4();
      v142 = sub_10594();
      if (sub_CEB8(v142))
      {
        v143 = sub_CBE0();
        v144 = sub_CED4();
        a48 = v144;
        *v143 = 136315138;
        v145 = sub_CCD0();
        sub_C0A4(v145, v146, v147, v148);
        sub_CD28();
        if (v77)
        {
          v175 = sub_3D54(v60, &qword_186B0, &qword_10B48);
          v176 = 1;
        }

        else
        {
          sub_D094();
          v65 += 8;
          v173 = sub_CCD0();
          v175 = v174(v173);
          v176 = 0;
        }

        v116 = sub_C6F4(v175, v176);
        sub_3D54(v65, &qword_186B0, &qword_10B48);
        v177 = sub_D078();

        *(v143 + 4) = v177;
        sub_CE10(&dword_0, v178, v179, "No suggestions for invocation type: %s. Marking flow as complete");
        sub_3E48(v144);
        sub_CB4C();
        sub_41A8(v143);

        v180 = sub_CF5C();
        v150 = v181(v180);
      }

      else
      {
        sub_CBBC();
        sub_3D54(v63, &qword_186B0, &qword_10B48);
        v149 = sub_CC44();
        v150 = (v122)(v149);
      }

      sub_C6B4(v150);

      sub_3D54(v62 + 16, &qword_18708, &qword_10B98);
      sub_3D54(v116, &qword_186B0, &qword_10B48);

      v182 = sub_CF8C();
      v183(v182);
      v184 = sub_10234();
      v185 = sub_D104(v184);
      sub_C8B8(v60);

      v186 = sub_CE90();
      v187(v186);
      goto LABEL_11;
    }

    v151 = sub_C614();
    v152(v151);
    sub_C5FC();
    sub_C010(v153, 255, v154, &protocol conformance descriptor for InvocationType);
    sub_C974();
    v60 = v121;
    sub_104F4();
    v155 = sub_CB14();
    v61(v155);
    v122 = &qword_186D8;
    v116 = &qword_10DE0;
    sub_CFBC(v65);
    sub_CFBC(&qword_10DE0);
    v156 = sub_D138();
    v61(v156);
    v157 = sub_CFBC(a47);
    if ((v121 & 1) == 0)
    {
      goto LABEL_22;
    }
  }

  v158 = *(v62 + 848);
  sub_10304();
  v159 = sub_104C4();
  sub_10594();
  sub_CC6C();
  if (os_log_type_enabled(v159, v160))
  {
    v161 = sub_CCE8();
    sub_CCDC(v161);
    sub_CA54(&dword_0, v162, v163, "Unable to render suggestions as there isnt enough for the sirihelp experience. Falling back to server");
    sub_CA38();
  }

  sub_C580();
  v164 = sub_CB84();
  v158(v164);
  v165 = sub_CB38();
  v166(v165);
  sub_FE54();

  v167 = sub_C974();
  v168(v167);
  sub_3D54(v62 + 16, &qword_18708, &qword_10B98);
  sub_3D54(a40, &qword_186B0, &qword_10B48);

  (*(v159 + 8))(a42, a41);
  v169 = sub_10234();
  v170 = sub_CE9C(v169);
  sub_C748();

  v171 = sub_CF7C();
  v172(v171);
LABEL_11:
  sub_C408();
  sub_C460();

  sub_CA08();
  sub_D004();

  return v99(v98, v99, v100, v101, v102, v103, v104, v105, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, a52);
}

uint64_t sub_9CB8(uint64_t a1, uint64_t a2, unsigned __int8 *a3)
{
  v5 = sub_3B68(&qword_18670, &qword_10B80);
  __chkstk_darwin(v5 - 8);
  v7 = v13 - v6;
  v8 = sub_10154();
  __chkstk_darwin(v8);
  (*(v10 + 16))(v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  v11 = sub_FD54();
  (*(*(v11 - 8) + 16))(v7, a2, v11);
  sub_39C0(v7, 0, 1, v11);
  return sub_10144();
}

uint64_t sub_9E4C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v41 = a2;
  v3 = sub_FFD4();
  v39 = *(v3 - 8);
  v40 = v3;
  __chkstk_darwin(v3);
  v5 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_3B68(&qword_186A8, &qword_10B40);
  __chkstk_darwin(v6 - 8);
  v8 = &v37 - v7;
  v9 = sub_10474();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_3B68(&qword_186C0, &qword_10DF0);
  v14 = __chkstk_darwin(v13 - 8);
  v16 = &v37 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v18 = &v37 - v17;
  v38 = a1;
  sub_C0A4(a1, &v37 - v17, &qword_186C0, &qword_10DF0);
  v19 = sub_10424();
  if (sub_3CCC(v18, 1, v19) == 1)
  {
    sub_3D54(v18, &qword_186C0, &qword_10DF0);
    v43 = 0u;
    v44 = 0u;
LABEL_7:
    sub_3D54(&v43, &qword_18940, &qword_10DA8);
    goto LABEL_8;
  }

  v20 = sub_103E4();
  (*(*(v19 - 8) + 8))(v18, v19);
  (*(v10 + 104))(v12, enum case for IntentPropertiesConstants.mentionedAppId(_:), v9);
  v21 = sub_10464();
  v23 = v22;
  (*(v10 + 8))(v12, v9);
  sub_30D8(v21, v23, v20);

  if (!*(&v44 + 1))
  {
    goto LABEL_7;
  }

  sub_3B68(&qword_18948, &qword_10DB0);
  sub_3B68(&qword_18950, &qword_10DB8);
  if (swift_dynamicCast())
  {
    if (v42[2])
    {
      v25 = v42[4];
      v24 = v42[5];

      goto LABEL_9;
    }
  }

LABEL_8:
  v25 = 0;
  v24 = 0;
LABEL_9:
  v26 = sub_104E4();
  if (v24)
  {
    sub_10054();
    v27 = sub_10044();
    v29 = v28;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v43 = v26;
    sub_C258(v25, v24, v27, v29, isUniquelyReferenced_nonNull_native);

    v26 = v43;
  }

  sub_C0A4(v38, v16, &qword_186C0, &qword_10DF0);
  if (sub_3CCC(v16, 1, v19) == 1)
  {
    sub_3D54(v16, &qword_186C0, &qword_10DF0);
    v31 = sub_101F4();
    sub_39C0(v8, 1, 1, v31);
  }

  else
  {
    sub_103C4();
    (*(*(v19 - 8) + 8))(v16, v19);
    v32 = sub_101F4();
    if (sub_3CCC(v8, 1, v32) != 1)
    {
      sub_3D54(v8, &qword_186A8, &qword_10B40);
      v33 = swift_isUniquelyReferenced_nonNull_native();
      *&v43 = v26;
      sub_C258(1702195828, 0xE400000000000000, 0x65726F4D776F6873, 0xE800000000000000, v33);
      goto LABEL_16;
    }
  }

  sub_3D54(v8, &qword_186A8, &qword_10B40);
LABEL_16:
  v35 = v39;
  v34 = v40;
  (*(v39 + 104))(v5, enum case for EducationalSuggestions.suggestHelp(_:), v40);
  sub_FFC4();
  (*(v35 + 8))(v5, v34);
  return sub_102F4();
}

uint64_t sub_A408()
{
  sub_4140();
  v0[3] = v1;
  v0[4] = v2;
  v0[2] = v3;
  v4 = sub_104D4();
  v0[5] = v4;
  sub_C5EC(v4);
  v0[6] = v5;
  v0[7] = sub_CF44();
  v6 = sub_C934();

  return _swift_task_switch(v6, v7, v8);
}

uint64_t sub_A4B0(uint64_t a1)
{
  sub_10304();
  v3 = sub_104C4();
  v4 = sub_10594();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = sub_CCE8();
    sub_CC98(v5);
    _os_log_impl(&dword_0, v3, v4, "No preGeneration suggestions found on intent. Executing suggestions service...", v1, 2u);
    sub_C9D0();
  }

  v6 = sub_4160();
  v7(v6);
  v8 = sub_FD44();
  v10 = v9;
  v2[8] = v9;
  swift_task_alloc();
  sub_CC38();
  v2[9] = v11;
  *v11 = v12;
  v11[1] = sub_A5F0;
  v13 = v2[2];

  return SiriSuggestionsFacade.getNextSuggestions(requestId:)(v13, v8, v10);
}

uint64_t sub_A5F0()
{
  sub_4140();
  sub_4128();
  v1 = *v0;
  sub_40F8();
  *v2 = v1;

  sub_CA08();

  return v3();
}

uint64_t SiriSuggestionsFlow.execute(completion:)(uint64_t a1, uint64_t a2)
{
  v5 = sub_3B68(&qword_18668, &qword_10AF0);
  v6 = sub_CBA0(v5);
  __chkstk_darwin(v6);
  v8 = &v15 - v7;
  sub_10574();
  sub_4134();
  sub_39C0(v9, v10, v11, v12);
  sub_D170();
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = v2;
  v13[5] = a1;
  v13[6] = a2;

  sub_AA6C(0, 0, v8, &unk_10BC8, v13);
}

uint64_t sub_A800(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[2] = a5;
  v6[3] = a6;
  v7 = sub_FE64();
  v6[4] = v7;
  v6[5] = *(v7 - 8);
  v6[6] = swift_task_alloc();
  v8 = swift_task_alloc();
  v6[7] = v8;
  *v8 = v6;
  v8[1] = sub_A8FC;

  return SiriSuggestionsFlow.execute()();
}

uint64_t sub_A8FC()
{
  sub_4140();
  sub_4128();
  v1 = *v0;
  sub_40F8();
  *v2 = v1;

  v3 = sub_C934();

  return _swift_task_switch(v3, v4, v5);
}

uint64_t sub_A9E0()
{
  sub_D06C();
  (*(v0 + 16))(*(v0 + 48));
  v1 = sub_4160();
  v2(v1);

  sub_CA08();

  return v3();
}

uint64_t sub_AA6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_3B68(&qword_18668, &qword_10AF0);
  __chkstk_darwin(v9 - 8);
  v11 = v24 - v10;
  sub_C0A4(a3, v24 - v10, &qword_18668, &qword_10AF0);
  v12 = sub_10574();
  v13 = sub_3CCC(v11, 1, v12);

  if (v13 == 1)
  {
    sub_3D54(v11, &qword_18668, &qword_10AF0);
  }

  else
  {
    sub_10564();
    (*(*(v12 - 8) + 8))(v11, v12);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_10554();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = sub_10514() + 32;
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

      sub_3D54(a3, &qword_18668, &qword_10AF0);

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

  sub_3D54(a3, &qword_18668, &qword_10AF0);
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

uint64_t SiriSuggestionsFlow.deinit()
{

  sub_3D54(v0 + OBJC_IVAR____TtC25SiriSuggestionsFlowPlugin19SiriSuggestionsFlow_intentProperties, &qword_186C0, &qword_10DF0);

  sub_3E48((v0 + OBJC_IVAR____TtC25SiriSuggestionsFlowPlugin19SiriSuggestionsFlow_requestIdProvider));

  return v0;
}

uint64_t SiriSuggestionsFlow.__deallocating_deinit()
{
  SiriSuggestionsFlow.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

uint64_t (*sub_AE74(uint64_t *a1))()
{
  v2 = sub_BFDC(0x28uLL);
  *a1 = v2;
  v2[4] = sub_FF64();
  return sub_AEEC;
}

void sub_AEEC(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

uint64_t sub_AF80()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_B01C;

  return SiriSuggestionsFlow.execute()();
}

uint64_t sub_B01C()
{
  sub_4140();
  sub_4128();
  v1 = *v0;
  sub_40F8();
  *v2 = v1;

  sub_CA08();

  return v3();
}

uint64_t sub_B0FC(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for SiriSuggestionsFlow(0);

  return Flow<>.exitValue.getter(v3, a2);
}

uint64_t sub_B138()
{
  sub_D120(v0 + 16, v8);
  sub_C0A4(v0 + 16, v9, &qword_18930, &qword_10D88);
  v1 = v10;
  if (v10)
  {
    v2 = sub_3E04(v9, v10);
    v3 = *(v1 - 8);
    __chkstk_darwin(v2);
    (*(v3 + 16))(&v8[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)]);
    sub_3D54(v9, &qword_18930, &qword_10D88);
    sub_4160();
    sub_FF54();
    v5 = sub_CA2C();
    v6(v5);
    sub_FF14();

    sub_10354();
  }

  else
  {
    sub_3D54(v9, &qword_18930, &qword_10D88);
  }

  return sub_CE68();
}

uint64_t sub_B2C8()
{
  sub_3D54(v0 + 16, &qword_18930, &qword_10D88);
  sub_D170();

  return _swift_deallocClassInstance(v1, v2, v3);
}

uint64_t sub_B330(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

uint64_t sub_B37C(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_B474;

  return v6(a1);
}

uint64_t sub_B474()
{
  sub_4140();
  sub_4128();
  v1 = *v0;
  sub_40F8();
  *v2 = v1;

  sub_CA08();

  return v3();
}

uint64_t sub_B580(uint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(uint64_t **, uint64_t))
{
  v6 = a4(a1, a2);
  v8 = sub_B5DC(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
}

uint64_t sub_B5DC(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  sub_CB08();
  v9 = sub_B69C(v6, v7, v8, 1, a1, a2);
  v10 = v14[0];
  if (v9)
  {
    v11 = v9;

    ObjectType = swift_getObjectType();
    v14[0] = v11;
  }

  else
  {
    ObjectType = &type metadata for _StringGuts;
    v14[0] = a1;
    v14[1] = a2;
  }

  v12 = *a3;
  if (*a3)
  {
    sub_4074(v14, *a3);
    *a3 = v12 + 32;
  }

  sub_3E48(v14);
  return v10;
}

unint64_t sub_B69C(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v11 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v11)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v11) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_B79C(a5, a6);
    *a1 = v9;
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
    result = sub_105E4();
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

char *sub_B79C(uint64_t a1, unint64_t a2)
{
  v3 = sub_B7E8(a1, a2);
  sub_B900(&off_14A40);
  return v3;
}

char *sub_B7E8(uint64_t a1, unint64_t a2)
{
  v4 = (HIBYTE(a2) & 0xF);
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_19;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  for (; v5; v5 = sub_10544())
  {
    result = sub_B9E4(v5, 0);
    v7 = result;
    if ((a2 & 0x1000000000000000) != 0)
    {
      result = sub_105D4();
      if (v11)
      {
        goto LABEL_23;
      }

      v4 = result;
    }

    else
    {
      if ((a2 & 0x2000000000000000) != 0)
      {
        v13[0] = a1;
        v13[1] = a2 & 0xFFFFFFFFFFFFFFLL;
        if (v5 < v4)
        {
          goto LABEL_23;
        }

        v9 = result + 32;
        v10 = v13;
      }

      else
      {
        if ((a1 & 0x1000000000000000) != 0)
        {
          v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
          v4 = (a1 & 0xFFFFFFFFFFFFLL);
        }

        else
        {
          result = sub_105E4();
          v8 = result;
          v4 = v12;
        }

        if (v5 < v4)
        {
LABEL_23:
          __break(1u);
          return result;
        }

        v9 = v7 + 32;
        v10 = v8;
      }

      memcpy(v9, v10, v4);
    }

    if (v4 == v5)
    {
      return v7;
    }

    __break(1u);
LABEL_19:
    ;
  }

  return &_swiftEmptyArrayStorage;
}

uint64_t sub_B900(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (!result || v5 > *(v3 + 24) >> 1)
  {
    if (v4 <= v5)
    {
      v7 = v4 + v2;
    }

    else
    {
      v7 = v4;
    }

    result = sub_BA54(result, v7, 1, v3);
    v3 = result;
  }

  if (!*(v6 + 16))
  {

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_B9E4(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return &_swiftEmptyArrayStorage;
  }

  sub_3B68(&qword_18960, qword_10DC8);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return v4;
}

char *sub_BA54(char *result, int64_t a2, char a3, char *a4)
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
    sub_3B68(&qword_18960, qword_10DC8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
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

_BYTE **sub_BB48(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

uint64_t sub_BB58(uint64_t a1, uint64_t a2)
{
  v4 = sub_3B68(&qword_186C0, &qword_10DF0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t type metadata accessor for SiriSuggestionsFlow(uint64_t a1)
{
  result = qword_18768;
  if (!qword_18768)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_BC14()
{
  result = qword_18720;
  if (!qword_18720)
  {
    sub_BC78(&qword_18718, &qword_10BA0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_18720);
  }

  return result;
}

uint64_t sub_BC78(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_BCC0(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_BCF8()
{
  swift_unknownObjectRelease();

  sub_D170();

  return _swift_deallocObject(v0, v1, v2);
}

uint64_t sub_BD3C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  swift_task_alloc();
  sub_CC38();
  *(v2 + 16) = v9;
  *v9 = v10;
  v9[1] = sub_B01C;

  return sub_A800(a1, v4, v5, v6, v7, v8);
}

void sub_BEA0(uint64_t a1)
{
  sub_BF60(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_BF60(uint64_t a1)
{
  if (!qword_18778)
  {
    sub_10424();
    v1 = sub_105C4();
    if (!v2)
    {
      atomic_store(v1, &qword_18778);
    }
  }
}

void *sub_BFDC(size_t a1)
{
  if (&_swift_coroFrameAlloc)
  {
    return swift_coroFrameAlloc();
  }

  return malloc(a1);
}

uint64_t sub_C010(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_C058(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  sub_D1DC(a1, a2, a3, a4);
  sub_4118();
  v5 = sub_CE68();
  v6(v5);
  return v4;
}

uint64_t sub_C0A4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  sub_D1DC(a1, a2, a3, a4);
  sub_4118();
  v5 = sub_CE68();
  v6(v5);
  return v4;
}

uint64_t sub_C0F0()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_C128()
{
  sub_D06C();
  swift_task_alloc();
  sub_CC38();
  *(v0 + 16) = v1;
  *v1 = v2;
  v3 = sub_CCA4(v1);

  return v4(v3);
}

uint64_t sub_C1C0()
{
  sub_D06C();
  swift_task_alloc();
  sub_CC38();
  *(v0 + 16) = v1;
  *v1 = v2;
  v3 = sub_CCA4(v1);

  return v4(v3);
}

uint64_t sub_C258(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = sub_3ED8(a3, a4);
  v15 = v12[2];
  v16 = (v14 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_13;
  }

  v18 = v13;
  v19 = v14;
  sub_3B68(&qword_18958, &qword_10DC0);
  if (!sub_105F4(a5 & 1, v17))
  {
    goto LABEL_5;
  }

  v20 = sub_3ED8(a3, a4);
  if ((v19 & 1) != (v21 & 1))
  {
LABEL_13:
    result = sub_10614();
    __break(1u);
    return result;
  }

  v18 = v20;
LABEL_5:
  v22 = *v6;
  if (v19)
  {
    v23 = (v22[7] + 16 * v18);
    *v23 = a1;
    v23[1] = a2;
  }

  else
  {
    sub_C3AC(v18, a3, a4, a1, a2, v22);
  }
}

unint64_t sub_C3AC(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  a6[(result >> 6) + 8] |= 1 << result;
  v6 = (a6[6] + 16 * result);
  *v6 = a2;
  v6[1] = a3;
  v7 = (a6[7] + 16 * result);
  *v7 = a4;
  v7[1] = a5;
  v8 = a6[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a6[2] = v10;
  }

  return result;
}

uint64_t sub_C460()
{
  v3 = v0[71];
  *(v1 - 192) = v0[74];
  *(v1 - 184) = v3;
  v4 = v0[67];
  *(v1 - 176) = v0[68];
  *(v1 - 168) = v4;
  v5 = v0[63];
  *(v1 - 160) = v0[66];
  *(v1 - 152) = v5;
  v7 = v0[56];
  v6 = v0[57];
  *(v1 - 144) = v0[60];
  *(v1 - 136) = v6;
  v9 = v0[54];
  v8 = v0[55];
  *(v1 - 128) = v7;
  *(v1 - 120) = v8;
  v10 = v0[52];
  *(v1 - 112) = v9;
  *(v1 - 104) = v10;
  *(v1 - 96) = v0[50];
}

void sub_C580()
{
  *(v2 - 160) = v1[126];
  v4 = v1[122];
  *(v2 - 120) = v1[121];
  *(v2 - 112) = v4;
  v5 = v1[120];
  v6 = v1[118];
  *(v2 - 104) = v1[119];
  *(v2 - 96) = v6;
  *(v2 - 136) = v1[94];
  *(v2 - 128) = v5;
  v7 = v1[92];
  *(v2 - 152) = v1[89];
  *(v2 - 144) = v7;
}

uint64_t sub_C614()
{
  v2 = *(v0 + 504);
  *(v1 - 96) = *(v0 + 416);
  return v2;
}

uint64_t sub_C674(uint64_t a1)
{
  v4 = *(v1 + 944);
  *(v2 - 104) = *(v1 + 976);
  *(v2 - 96) = v4;

  return sub_FE44();
}

uint64_t sub_C6B4(uint64_t a1)
{
  *(v2 - 96) = *(v1 + 944);

  return sub_FE44();
}

uint64_t sub_C6F4(uint64_t a1, uint64_t a2)
{
  v4 = v2[123];
  *(v3 - 104) = v2[105];
  *(v3 - 96) = v4;
  sub_39C0(v2[54], a2, 1, v2[61]);

  return sub_10504();
}

uint64_t sub_C748()
{

  return sub_10324();
}

uint64_t sub_C770()
{
  sub_39C0(v1, 0, 1, v0);

  return sub_10114();
}

uint64_t sub_C8B8(uint64_t a1)
{

  return sub_10324();
}

uint64_t sub_C980(uint64_t a1)
{

  return swift_dynamicCast();
}

uint64_t sub_C9A8(uint64_t a1, uint64_t a2)
{
  v4 = *(v2 + 456);
  v5 = *(v2 + 488);

  return sub_39C0(v4, a2, 1, v5);
}

uint64_t sub_C9D0()
{
}

uint64_t sub_C9EC()
{

  return sub_3CCC(v1, 1, v0);
}

uint64_t sub_CA38()
{
}

void sub_CA54(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v6, v5, a4, v4, 2u);
}

void sub_CAA0(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v4, a4, v6, 2u);
}

void sub_CAC0(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t sub_CB4C()
{
}

void sub_CBBC()
{
}

uint64_t sub_CBE0()
{

  return swift_slowAlloc();
}

uint64_t sub_CC04()
{
  sub_3E48(v0);
}

BOOL sub_CC50(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t sub_CCE8()
{

  return swift_slowAlloc();
}

uint64_t sub_CD50()
{
  *(v1 - 96) = v0;

  return swift_slowAlloc();
}

uint64_t sub_CD70()
{
}

uint64_t sub_CD90()
{
  *(v1 + 328) = v0;

  return swift_errorRetain();
}

void sub_CDB0(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

uint64_t sub_CDD0(uint64_t a1)
{

  return sub_10304();
}

uint64_t sub_CDF0()
{

  return sub_C0A4(v1, v0 + v4, v2, v3);
}

void sub_CE10(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

void sub_CE3C()
{
}

BOOL sub_CE74(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t sub_CE9C(uint64_t a1)
{

  return sub_10334();
}

BOOL sub_CEB8(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t sub_CED4()
{

  return swift_slowAlloc();
}

uint64_t sub_CEEC()
{

  return swift_slowAlloc();
}

uint64_t sub_CF04(uint64_t result)
{
  *(v2 - 104) = v1;
  *(v2 - 88) = result;
  return result;
}

uint64_t sub_CF44()
{

  return swift_task_alloc();
}

uint64_t sub_CFBC(uint64_t a1)
{

  return sub_3D54(a1, v1, v2);
}

uint64_t sub_D020()
{

  return swift_task_alloc();
}

uint64_t sub_D078()
{

  return sub_B5DC(v0, v1, (v2 - 88));
}

uint64_t sub_D094()
{

  return sub_10134();
}

uint64_t sub_D0B0()
{

  return sub_10134();
}

uint64_t sub_D0CC(float a1)
{
  *v3 = a1;
  *(v2 + 336) = v1;

  return swift_errorRetain();
}

uint64_t sub_D0E8(uint64_t a1)
{

  return sub_10334();
}

uint64_t sub_D104(uint64_t a1)
{

  return sub_10334();
}

uint64_t sub_D120(uint64_t a1, uint64_t a2)
{

  return swift_beginAccess();
}

void sub_D19C(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v6, a4, v4, 2u);
}

uint64_t sub_D1BC()
{

  return swift_beginAccess();
}

uint64_t sub_D1DC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{

  return sub_3B68(a3, a4);
}

uint64_t sub_D1FC(uint64_t a1)
{

  return sub_10554();
}

BOOL sub_D214()
{

  return os_log_type_enabled(v0, v1);
}

uint64_t sub_D22C@<X0>(uint64_t *a1@<X8>)
{
  sub_FE94();
  sub_FE84();
  sub_FC00();
  swift_allocObject();
  sub_FE74();
  v2 = sub_FD74();
  sub_FC00();
  swift_allocObject();
  result = sub_FD64();
  a1[3] = v2;
  a1[4] = &protocol witness table for PatternFlowProvider;
  *a1 = result;
  return result;
}

void *SiriSuggestionsFlowPlugin.__allocating_init()()
{
  sub_102B4();
  v0 = sub_102A4();
  sub_100D4();

  v1 = sub_100B4();

  return sub_F570(v0, v1, 0);
}

uint64_t sub_D368(uint64_t a1, uint64_t a2)
{
  type metadata accessor for SiriSuggestionsFlow(0);

  return sub_41C0(v3, a2);
}

uint64_t sub_D3C4(uint64_t a1)
{
  v2 = v1;
  v95 = a1;
  v98 = sub_104D4();
  sub_414C();
  v100 = v3;
  __chkstk_darwin(v4);
  sub_FBE4();
  v7 = v5 - v6;
  __chkstk_darwin(v8);
  sub_CB94();
  v91 = v9;
  sub_FC54();
  __chkstk_darwin(v10);
  sub_CB94();
  v93 = v11;
  sub_FC54();
  __chkstk_darwin(v12);
  sub_CB94();
  v97 = v13;
  sub_FC54();
  __chkstk_darwin(v14);
  sub_FCA0();
  v90 = v15;
  v16 = sub_3B68(&qword_186C0, &qword_10DF0);
  sub_CBA0(v16);
  sub_FC94();
  __chkstk_darwin(v17);
  v19 = &v89 - v18;
  v20 = sub_3B68(&qword_186B0, &qword_10B48);
  sub_CBA0(v20);
  sub_FC94();
  __chkstk_darwin(v21);
  v23 = &v89 - v22;
  v96 = sub_10154();
  sub_414C();
  v92 = v24;
  __chkstk_darwin(v25);
  sub_FBC4();
  v94 = v27 - v26;
  sub_3E04((v1 + 40), *(v1 + 64));
  sub_FF44();
  sub_FF34();
  sub_FF24();

  v28 = sub_10274();

  if ((v28 & 1) == 0)
  {
    sub_10304();
    v34 = sub_104C4();
    v35 = sub_105A4();
    if (sub_FC0C(v35))
    {
      v36 = sub_CCE8();
      sub_FC88(v36);
      sub_FC28(&dword_0, v37, v38, "SiriHelp feature flag NOT enabled");
      sub_FBF4();
    }

    (*(v100 + 8))(v7, v98);
    sub_104A4();
    sub_FBD4();
    v39 = swift_allocObject();
    v101 = sub_10494();
    sub_FB94();
    v42 = sub_FA90(v40, v41, &protocol conformance descriptor for NoOpFlow);
    sub_FCAC(v42);
    sub_FCE0();

    return v39;
  }

  sub_3E04((v1 + 40), *(v1 + 64));
  v29 = sub_10284();
  v31 = v98;
  v30 = v99;
  v32 = v100;
  if ((v29 & 1) == 0)
  {
    sub_FA2C(v95, v19, &qword_186C0, &qword_10DF0);
    v33 = sub_10424();
    if (sub_3CCC(v19, 1, v33) == 1)
    {
      sub_F9D0(v19, &qword_186C0, &qword_10DF0);
      sub_39C0(v23, 1, 1, v96);
    }

    else
    {
      sub_103F4();
      sub_FC48();
      v43 = sub_FCD4();
      v44(v43);
      v45 = v96;
      if (sub_3CCC(v23, 1, v96) != 1)
      {
        v76 = v92;
        v77 = v94;
        (*(v92 + 32))(v94, v23, v45);
        if (sub_10124())
        {
          v78 = *(v2 + 16);
          if (v78)
          {

            v79 = v90;
            sub_10304();
            v80 = sub_104C4();
            v81 = sub_105A4();
            if (os_log_type_enabled(v80, v81))
            {
              v82 = sub_CCE8();
              *v82 = 0;
              _os_log_impl(&dword_0, v80, v81, "See more request. Using previous request flow", v82, 2u);
              sub_FBF4();
            }

            (*(v32 + 8))(v79, v31);
            v101 = v78;
            type metadata accessor for SiriSuggestionsFlow(0);
            sub_FBAC();
            v85 = sub_FA90(v83, v84, &protocol conformance descriptor for SiriSuggestionsFlow);
            v39 = sub_FCAC(v85);
            (*(v92 + 8))(v94, v45);
            goto LABEL_30;
          }

          (*(v76 + 8))(v94, v45);
        }

        else
        {
          (*(v76 + 8))(v77, v45);
        }

        goto LABEL_10;
      }
    }

    sub_F9D0(v23, &qword_186B0, &qword_10B48);
  }

LABEL_10:
  v46 = v97;
  sub_10304();
  v47 = sub_104C4();
  v48 = sub_105A4();
  if (sub_FC0C(v48))
  {
    v49 = sub_CCE8();
    sub_FC88(v49);
    sub_FC28(&dword_0, v50, v51, "Normal flow request. Creating new flow from factory");
    sub_FBF4();
  }

  v54 = *(v32 + 8);
  v53 = v32 + 8;
  v52 = v54;
  v55 = (v54)(v46, v31);
  v39 = *(v2 + 32);
  v56 = (*(v2 + 24))(v55);
  if (!v30)
  {
    v57 = v56;
    if (v56)
    {
      v58 = *(v2 + 16);
      if (v58)
      {
        v59 = *(v58 + 24);
        if (v59)
        {
          v100 = v53;
          v97 = *(v58 + 16);

          sub_10304();

          v60 = sub_104C4();
          v61 = sub_105A4();

          if (os_log_type_enabled(v60, v61))
          {
            v62 = swift_slowAlloc();
            v99 = 0;
            v63 = v62;
            v64 = swift_slowAlloc();
            v101 = v64;
            *v63 = 136315138;
            *(v63 + 4) = sub_B5DC(v97, v59, &v101);
            _os_log_impl(&dword_0, v60, v61, "SiriSuggestionsFlow :: existingSuggestionsFlow has sessionId: %s", v63, 0xCu);
            sub_3E48(v64);
            sub_FBF4();

            sub_FBF4();

            v65 = v93;
            v66 = v98;
          }

          else
          {

            v65 = v93;
            v66 = v31;
          }

          v52(v65, v66);
          *(v57 + 16) = v97;
          *(v57 + 24) = v59;
        }
      }

      *(v2 + 16) = v57;

      v101 = v57;
      type metadata accessor for SiriSuggestionsFlow(0);
      sub_FBAC();
      sub_FA90(v86, v87, &protocol conformance descriptor for SiriSuggestionsFlow);
      v39 = sub_FD84();
    }

    else
    {
      v67 = v91;
      sub_10304();
      v68 = sub_104C4();
      v69 = sub_105A4();
      if (sub_FC0C(v69))
      {
        v70 = sub_CCE8();
        sub_FC88(v70);
        sub_FC28(&dword_0, v71, v72, "No flow could be constructed");
        sub_FBF4();
      }

      v52(v67, v31);
      sub_104A4();
      sub_FBD4();
      swift_allocObject();
      v101 = sub_10494();
      sub_FB94();
      v75 = sub_FA90(v73, v74, &protocol conformance descriptor for NoOpFlow);
      v39 = sub_FCAC(v75);
    }

LABEL_30:
  }

  return v39;
}

uint64_t SiriSuggestionsFlowPlugin.makeFlowFor(parse:)(uint64_t a1)
{
  v113 = a1;
  v107 = sub_10244();
  sub_414C();
  v105 = v1;
  __chkstk_darwin(v2);
  sub_FBC4();
  v100 = v4 - v3;
  v103 = sub_3B68(&qword_186D0, &unk_10B70);
  sub_FC48();
  sub_FC94();
  __chkstk_darwin(v5);
  v106 = &v99 - v6;
  v7 = sub_3B68(&qword_186B0, &qword_10B48);
  sub_CBA0(v7);
  sub_FC94();
  __chkstk_darwin(v8);
  v101 = &v99 - v9;
  v10 = sub_3B68(&qword_186D8, &qword_10DE0);
  v11 = sub_CBA0(v10);
  __chkstk_darwin(v11);
  sub_FBE4();
  v102 = v12 - v13;
  sub_FC54();
  __chkstk_darwin(v14);
  sub_CB94();
  v108 = v15;
  sub_FC54();
  __chkstk_darwin(v16);
  sub_FCA0();
  v104 = v17;
  v18 = sub_3B68(&qword_18968, &qword_10DE8);
  sub_414C();
  v109 = v19;
  sub_FC94();
  __chkstk_darwin(v20);
  v22 = &v99 - v21;
  v23 = sub_3B68(&qword_186C0, &qword_10DF0);
  v24 = sub_CBA0(v23);
  __chkstk_darwin(v24);
  sub_FBE4();
  v27 = v25 - v26;
  __chkstk_darwin(v28);
  sub_FCA0();
  v111 = v29;
  v30 = sub_FF04();
  sub_414C();
  v110 = v31;
  __chkstk_darwin(v32);
  sub_FBC4();
  v112 = v34 - v33;
  v35 = sub_FED4();
  sub_414C();
  v37 = v36;
  __chkstk_darwin(v38);
  sub_FBC4();
  v41 = v40 - v39;
  v42 = sub_FEE4();
  sub_414C();
  v44 = v43;
  __chkstk_darwin(v45);
  sub_FBC4();
  v48 = v47 - v46;
  (*(v44 + 16))(v47 - v46, v113, v42);
  v49 = sub_FC7C();
  v51 = v50(v49);
  if (v51 != enum case for Parse.directInvocation(_:))
  {
    if (v51 != enum case for Parse.uso(_:))
    {
      sub_104A4();
      sub_FC00();
      swift_allocObject();
      v114 = sub_10494();
      sub_FB94();
      sub_FA90(v60, v61, &protocol conformance descriptor for NoOpFlow);
      v64 = sub_FD84();

      v62 = sub_FC7C();
      v63(v62);
      return v64;
    }

    v54 = sub_FC7C();
    v55(v54);
    v56 = v112;
    v57 = v30;
    (*(v110 + 32))(v112, v48, v30);
    sub_FFA4();
    v58 = sub_FFB4();
    (*(v109 + 8))(v22, v18);
    v59 = v111;
    v58(v56);

    sub_FA2C(v59, v27, &qword_186C0, &qword_10DF0);
    v65 = sub_10424();
    v66 = sub_3CCC(v27, 1, v65);
    v99 = v57;
    if (v66 == 1)
    {
      sub_F9D0(v27, &qword_186C0, &qword_10DF0);
      v67 = 1;
      v69 = v106;
      v68 = v107;
      v70 = v104;
      v71 = v105;
      v72 = v108;
    }

    else
    {
      v73 = v101;
      sub_103F4();
      sub_FC48();
      v75 = v73;
      (*(v74 + 8))(v27, v65);
      v76 = sub_10154();
      v77 = sub_3CCC(v73, 1, v76);
      v68 = v107;
      v72 = v108;
      v71 = v105;
      if (v77 == 1)
      {
        sub_F9D0(v75, &qword_186B0, &qword_10B48);
        v67 = 1;
        v69 = v106;
        v70 = v104;
      }

      else
      {
        v70 = v104;
        sub_10134();
        sub_FC48();
        (*(v78 + 8))(v75, v76);
        v67 = 0;
        v69 = v106;
      }
    }

    sub_39C0(v70, v67, 1, v68);
    (*(v71 + 104))(v72, enum case for InvocationType.siriHelp(_:), v68);
    sub_39C0(v72, 0, 1, v68);
    v79 = *(v103 + 48);
    sub_FA2C(v70, v69, &qword_186D8, &qword_10DE0);
    sub_FA2C(v72, v69 + v79, &qword_186D8, &qword_10DE0);
    sub_FCC8();
    if (sub_3CCC(v80, v81, v82) == 1)
    {
      sub_FCEC(v72);
      sub_FCEC(v70);
      sub_FCC8();
      if (sub_3CCC(v83, v84, v85) == 1)
      {
        sub_F9D0(v69, &qword_186D8, &qword_10DE0);
        v86 = v111;
LABEL_21:
        v64 = sub_D3C4(v86);
        goto LABEL_18;
      }
    }

    else
    {
      v87 = v102;
      sub_FA2C(v69, v102, &qword_186D8, &qword_10DE0);
      sub_FCC8();
      if (sub_3CCC(v88, v89, v90) != 1)
      {
        v96 = v100;
        (*(v71 + 32))(v100, v69 + v79, v68);
        sub_FA90(&qword_18710, &type metadata accessor for InvocationType, &protocol conformance descriptor for InvocationType);
        sub_FC7C();
        v97 = sub_104F4();
        v98 = *(v71 + 8);
        v98(v96, v68);
        sub_F9D0(v108, &qword_186D8, &qword_10DE0);
        sub_F9D0(v70, &qword_186D8, &qword_10DE0);
        v98(v87, v68);
        sub_F9D0(v69, &qword_186D8, &qword_10DE0);
        v86 = v111;
        if (v97)
        {
          goto LABEL_21;
        }

LABEL_17:
        sub_104A4();
        sub_FBD4();
        swift_allocObject();
        v114 = sub_10494();
        sub_FB94();
        sub_FA90(v91, v92, &protocol conformance descriptor for NoOpFlow);
        v64 = sub_FD84();

LABEL_18:
        sub_F9D0(v86, &qword_186C0, &qword_10DF0);
        v93 = sub_FCD4();
        v94(v93);
        return v64;
      }

      sub_FCEC(v108);
      sub_FCEC(v70);
      (*(v71 + 8))(v87, v68);
    }

    sub_F9D0(v69, &qword_186D0, &unk_10B70);
    v86 = v111;
    goto LABEL_17;
  }

  v52 = sub_FC7C();
  v53(v52);
  (*(v37 + 32))(v41, v48, v35);
  v64 = sub_E8D4();
  (*(v37 + 8))(v41, v35);
  return v64;
}

uint64_t sub_E6B8(uint64_t a1)
{
  v1 = sub_104D4();
  sub_414C();
  v3 = v2;
  __chkstk_darwin(v4);
  sub_FBC4();
  v7 = v6 - v5;
  sub_10304();
  swift_errorRetain();
  v8 = sub_104C4();
  v9 = sub_105B4();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v19 = v11;
    *v10 = 136315138;
    swift_errorRetain();
    sub_3B68(&qword_18698, &qword_10B60);
    v12 = sub_10504();
    v14 = sub_B5DC(v12, v13, &v19);

    *(v10 + 4) = v14;
    _os_log_impl(&dword_0, v8, v9, "Unable to obtain suggestions client: %s. Returning no op flow", v10, 0xCu);
    sub_3E48(v11);
    sub_FBF4();

    sub_FBF4();
  }

  (*(v3 + 8))(v7, v1);
  sub_104A4();
  sub_FBD4();
  swift_allocObject();
  v19 = sub_10494();
  sub_FB94();
  sub_FA90(v15, v16, &protocol conformance descriptor for NoOpFlow);
  v17 = sub_FD84();

  return v17;
}

uint64_t sub_E8D4()
{
  v0 = sub_3B68(&qword_186C0, &qword_10DF0);
  sub_CBA0(v0);
  sub_FC94();
  __chkstk_darwin(v1);
  v3 = &v87 - v2;
  sub_104D4();
  sub_414C();
  v91 = v5;
  v92 = v4;
  __chkstk_darwin(v4);
  sub_FBE4();
  v8 = v6 - v7;
  v10 = __chkstk_darwin(v9);
  v12 = &v87 - v11;
  __chkstk_darwin(v10);
  sub_CB94();
  v89 = v13;
  sub_FC54();
  __chkstk_darwin(v14);
  sub_CB94();
  v87 = v15;
  sub_FC54();
  __chkstk_darwin(v16);
  sub_FCA0();
  v88 = v17;
  v18 = sub_3B68(&qword_18A68, &qword_10EC0);
  v19 = sub_CBA0(v18);
  __chkstk_darwin(v19);
  sub_FBE4();
  v22 = v20 - v21;
  __chkstk_darwin(v23);
  sub_FCA0();
  v25 = v24;
  v26 = sub_10484();
  sub_414C();
  v28 = v27;
  __chkstk_darwin(v29);
  sub_FBC4();
  v32 = v31 - v30;
  (*(v28 + 104))(v31 - v30, enum case for DirectInvocationUserDataKey.action(_:), v26);
  sub_FEB4();
  (*(v28 + 8))(v32, v26);
  if (v95[3])
  {
    if (swift_dynamicCast())
    {
      v34 = v93;
      v33 = v94;

      sub_10444();
      v35 = sub_10454();
      if (sub_3CCC(v25, 1, v35) == 1)
      {
LABEL_4:
        sub_10304();

        v36 = sub_104C4();
        v37 = sub_105B4();

        if (os_log_type_enabled(v36, v37))
        {
          v38 = swift_slowAlloc();
          v39 = swift_slowAlloc();
          v95[0] = v39;
          *v38 = 136315138;
          v40 = sub_B5DC(v34, v33, v95);

          *(v38 + 4) = v40;
          _os_log_impl(&dword_0, v36, v37, "Unsupported direct invocation action: %s. Returning no op flow", v38, 0xCu);
          sub_3E48(v39);
          sub_FBF4();

          sub_FBF4();
        }

        else
        {
        }

        (*(v91 + 8))(v12, v92);
        goto LABEL_14;
      }

      sub_FA2C(v25, v22, &qword_18A68, &qword_10EC0);
      v48 = *(v35 - 8);
      v49 = (*(v48 + 88))(v22, v35);
      if (v49 == enum case for DirectInvocationAction.executeSuggestion(_:))
      {

        v50 = sub_101B4();
        sub_FC00();
        swift_allocObject();
        v51 = sub_101A4();
        type metadata accessor for SiriSuggestionsInvocationFlow(0);
        sub_FBD4();
        v52 = swift_allocObject();
        v53 = (v52 + OBJC_IVAR____TtC25SiriSuggestionsFlowPlugin29SiriSuggestionsInvocationFlow_dispatcherFactory);
        v53[3] = v50;
        v53[4] = &protocol witness table for DefaultACECommandSuggestionDispatcherFactory;
        *v53 = v51;
        v44 = OBJC_IVAR____TtC25SiriSuggestionsFlowPlugin29SiriSuggestionsInvocationFlow_directInvocation;
        v54 = sub_FED4();
        sub_39C0(v52 + v44, 1, 1, v54);
        v55 = (v52 + OBJC_IVAR____TtC25SiriSuggestionsFlowPlugin29SiriSuggestionsInvocationFlow_interactionDonator);
        *v55 = &unk_10B30;
        v55[1] = 0;
        v95[0] = v52;
        v56 = sub_FA90(&qword_18A70, type metadata accessor for SiriSuggestionsInvocationFlow, &unk_10A98);
        sub_FC60(v56);
        sub_FCE0();

        sub_F9D0(v25, &qword_18A68, &qword_10EC0);
        return v44;
      }

      if (v49 == enum case for DirectInvocationAction.showSiriHelp(_:))
      {

        v61 = sub_10424();
        sub_39C0(v3, 1, 1, v61);
        v44 = sub_D3C4(v3);
        sub_F9D0(v3, &qword_186C0, &qword_10DF0);
        goto LABEL_16;
      }

      if (v49 == enum case for DirectInvocationAction.showMoreSuggestions(_:))
      {

        v62 = v90;
        sub_3E04((v90 + 40), *(v90 + 64));
        sub_FC7C();
        if ((sub_10284() & 1) == 0)
        {
          goto LABEL_45;
        }

        v44 = *(v62 + 32);
        v63 = v96;
        v64 = (*(v62 + 24))();
        if (v63)
        {
          goto LABEL_16;
        }

        v65 = v64;
        if (!v64)
        {
LABEL_45:
          if (*(v62 + 16))
          {
            v95[0] = *(v62 + 16);
            type metadata accessor for SiriSuggestionsFlow(0);
            sub_FBAC();
            v73 = sub_FA90(v71, v72, &protocol conformance descriptor for SiriSuggestionsFlow);
            v44 = sub_FC60(v73);
            goto LABEL_16;
          }

          v74 = v88;
          sub_10304();
          v75 = sub_104C4();
          v81 = sub_105B4();
          if (!sub_FC0C(v81))
          {
            goto LABEL_38;
          }

          v82 = sub_CCE8();
          sub_FC88(v82);
          v80 = "No current suggestions flow. Returning no op flow";
          goto LABEL_37;
        }
      }

      else
      {
        if (v49 != enum case for DirectInvocationAction.conversationGetSuggestions(_:))
        {
          (*(v48 + 8))(v22, v35);
          goto LABEL_4;
        }

        v66 = v90;
        sub_3E04((v90 + 40), *(v90 + 64));
        sub_FF44();
        sub_FF34();
        sub_FF24();

        v67 = sub_10294();

        if ((v67 & 1) == 0)
        {
          v74 = v89;
          sub_10304();
          v75 = sub_104C4();
          v76 = sub_105A4();
          if (!sub_FC0C(v76))
          {
LABEL_38:

            (*(v91 + 8))(v74, v92);
LABEL_14:
            sub_104A4();
            sub_FBD4();
            v44 = swift_allocObject();
            v95[0] = sub_10494();
            sub_FB94();
            v59 = sub_FA90(v57, v58, &protocol conformance descriptor for NoOpFlow);
            sub_FC60(v59);
            sub_FCE0();
LABEL_15:

LABEL_16:
            sub_F9D0(v25, &qword_18A68, &qword_10EC0);
            return v44;
          }

          v77 = sub_CCE8();
          sub_FC88(v77);
          v80 = "Continuers feature flag NOT enabled. Returning no op flow";
LABEL_37:
          sub_FC28(&dword_0, v78, v79, v80);
          sub_FBF4();

          goto LABEL_38;
        }

        v69 = v96;
        v70 = (*(v66 + 24))(v68);
        if (v69)
        {
          v44 = sub_E6B8(v69);

          sub_F9D0(v25, &qword_18A68, &qword_10EC0);
          return v44;
        }

        v65 = v70;
        if (!v70)
        {
          v74 = v87;
          sub_10304();
          v75 = sub_104C4();
          v85 = sub_105A4();
          if (!sub_FC0C(v85))
          {
            goto LABEL_38;
          }

          v86 = sub_CCE8();
          sub_FC88(v86);
          v80 = "Unable to construct flow";
          goto LABEL_37;
        }
      }

      v95[0] = v65;
      type metadata accessor for SiriSuggestionsFlow(0);
      sub_FBAC();
      sub_FA90(v83, v84, &protocol conformance descriptor for SiriSuggestionsFlow);
      v44 = sub_FD84();
      goto LABEL_15;
    }
  }

  else
  {
    sub_F9D0(v95, &qword_18688, &unk_10B20);
  }

  sub_10304();
  v41 = sub_104C4();
  v42 = sub_105B4();
  if (sub_FC0C(v42))
  {
    v43 = sub_CCE8();
    *v43 = 0;
    _os_log_impl(&dword_0, v41, v8, "Unavailable direct invocation action. Returning no op flow", v43, 2u);
    sub_FBF4();
  }

  (*(v91 + 8))(v8, v92);
  sub_104A4();
  sub_FBD4();
  v44 = swift_allocObject();
  v95[0] = sub_10494();
  sub_FB94();
  v47 = sub_FA90(v45, v46, &protocol conformance descriptor for NoOpFlow);
  sub_FC60(v47);
  sub_FCE0();

  return v44;
}

void *SiriSuggestionsFlowPlugin.deinit()
{

  sub_3E48((v0 + 40));
  return v0;
}

uint64_t SiriSuggestionsFlowPlugin.__deallocating_deinit()
{
  SiriSuggestionsFlowPlugin.deinit();

  return _swift_deallocClassInstance(v0, 80, 7);
}

void *sub_F354@<X0>(uint64_t *a1@<X8>)
{
  result = SiriSuggestionsFlowPlugin.__allocating_init()();
  *a1 = result;
  return result;
}

void (*sub_F3B0(void *a1))(void *a1)
{
  v2 = sub_BFDC(0x28uLL);
  *a1 = v2;
  v2[4] = sub_FF64();
  return sub_AEEC;
}

uint64_t Optional.unwrap(errorIfNotSet:)(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 - 8);
  __chkstk_darwin(a1);
  sub_FBC4();
  v6 = v5 - v4;
  (*(v3 + 16))(v5 - v4, v7, a2);
  sub_FCC8();
  if (sub_3CCC(v8, v9, v10) == 1)
  {
    (*(v3 + 8))(v6, a2);
    swift_willThrow();
    return swift_errorRetain();
  }

  else
  {
    sub_FC48();
    v12 = sub_FCD4();
    return v13(v12);
  }
}

void *sub_F570(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_FD24();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v11 = sub_102D4();
  __chkstk_darwin(v11 - 8);
  if (!a3)
  {
    sub_3B68(&qword_18A78, &qword_10EC8);
    sub_3B68(&qword_18A80, &unk_10ED0);
    sub_104E4();
    sub_102E4();
    sub_102C4();
    v12 = sub_10014();
    swift_allocObject();
    v13 = sub_10004();
    sub_10104();
    v14 = sub_100F4();
    sub_FE94();
    sub_D22C(v30);
    v29[3] = v12;
    v29[4] = sub_FA90(&qword_18A88, &type metadata accessor for AppUtilsService, &protocol conformance descriptor for AppUtilsService);
    v29[0] = v13;
    if (a2)
    {
      type metadata accessor for SiriSuggestionsFlow(0);
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v25[1] = v14;
      v16 = ObjCClassFromMetadata;
      v17 = objc_opt_self();

      v18 = [v17 bundleForClass:v16];
      v19 = [v18 bundleURL];

      sub_FD14();
      sub_FD04();
      (*(v7 + 8))(v10, v6);
      sub_FB34(v29, &v28);
      sub_100C4();
      v20 = sub_10084();
      swift_allocObject();
      v21 = sub_10074();
      v27[8] = v20;
      v27[9] = &protocol witness table for SuggestionsOverXPCLogger;
      v27[5] = v21;
      sub_FB34(v31, v27);
      sub_FB34(v30, &v26);
      sub_103B4();
      swift_allocObject();
      a3 = sub_103A4();

      sub_3E48(v30);
      sub_3E48(v31);
      sub_3E48(v29);
    }

    else
    {

      sub_3E48(v30);
      sub_3E48(v31);
      sub_3E48(v29);
      a3 = 0;
    }
  }

  v22 = swift_allocObject();
  *(v22 + 16) = a2;
  *(v22 + 24) = a3;
  type metadata accessor for SiriSuggestionsFlowPlugin();
  v23 = swift_allocObject();
  v23[8] = sub_102B4();
  v23[9] = &protocol witness table for OSFeatureFlagProvider;
  v23[4] = v22;
  v23[5] = a1;
  v23[2] = 0;
  v23[3] = sub_FB18;
  return v23;
}

uint64_t sub_F9D0(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  sub_3B68(a2, a3);
  sub_FC48();
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_FA2C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  sub_3B68(a3, a4);
  sub_FC48();
  (*(v6 + 16))(a2, a1);
  return a2;
}

uint64_t sub_FA90(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_FAD8()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_FB34(uint64_t a1, uint64_t a2)
{
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 32) = *(a1 + 32);
  sub_FC48();
  (*v3)(a2);
  return a2;
}

BOOL sub_FC0C(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

void sub_FC28(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

uint64_t sub_FC60(uint64_t a1)
{

  return sub_FD84();
}

uint64_t sub_FCAC(uint64_t a1)
{

  return sub_FD84();
}

uint64_t sub_FCEC(uint64_t a1)
{

  return sub_F9D0(a1, v1, v2);
}