uint64_t sub_1338F8()
{
  sub_1696C();
  v1 = [*(v0 + 272) enableSeatTemperature];
  if (v1)
  {
    v2 = v1;
    v3 = *(v0 + 272);
    v4 = *(v0 + 280);
    *(v0 + 328) = [v1 BOOLValue];

    *(v0 + 288) = [v3 temperatureChange];
    sub_D084((v4 + OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin35SetCarPlaySeatSettingsIntentHandler_service), *(v4 + OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin35SetCarPlaySeatSettingsIntentHandler_service + 24));
    v5 = swift_task_alloc();
    *(v0 + 296) = v5;
    *v5 = v0;
    v5[1] = sub_133ABC;

    return sub_13AB58(v0 + 16, 1);
  }

  else
  {
    if (qword_1E58E8 != -1)
    {
      sub_9ED4(&qword_1E58E8);
    }

    v7 = sub_16A584();
    sub_9DA0(v7, qword_1E65C0);
    sub_16A9A4();
    sub_1207C();
    sub_386D8(v9, 0x400uLL, v8 + 125, 0x80000000001903A0, v10, v11, 29, 0xD000000000000026, 0x80000000001904D0);
    sub_16A464();
    v12 = sub_13593C();
    v13 = *(v0 + 8);

    return v13(v12);
  }
}

uint64_t sub_133ABC()
{
  sub_D2DC();
  sub_D358();
  v2 = *v1;
  sub_D254();
  *v3 = v2;
  *(v4 + 304) = v0;

  if (v0)
  {
    v5 = sub_133DF0;
  }

  else
  {
    v5 = sub_133BC0;
  }

  return _swift_task_switch(v5);
}

uint64_t sub_133BC0()
{
  v1 = v0[5];
  v2 = v0[6];
  sub_D084(v0 + 2, v1);
  v5 = (*(v2 + 64) + **(v2 + 64));
  v3 = swift_task_alloc();
  v0[39] = v3;
  *v3 = v0;
  v3[1] = sub_133CEC;

  return v5(v0 + 12, v1, v2);
}

uint64_t sub_133CEC()
{
  sub_D2DC();
  sub_D358();
  v2 = *v1;
  sub_D254();
  *v3 = v2;
  *(v4 + 320) = v0;

  if (v0)
  {
    v5 = sub_1343BC;
  }

  else
  {
    v5 = sub_133EFC;
  }

  return _swift_task_switch(v5);
}

uint64_t sub_133DF0()
{
  swift_errorRetain();
  if (qword_1E58E8 != -1)
  {
    sub_9ED4(&qword_1E58E8);
  }

  v0 = sub_16A584();
  sub_9DA0(v0, qword_1E65C0);
  sub_16A9A4();
  sub_1359A4();
  sub_16AEB4();
  v13 = v1;
  sub_1207C();
  sub_1358F8(v2, v3, v4, v5, v6, v7, v8, v9, v13);

  sub_16A464();
  sub_13593C();

  v10 = sub_120EC();

  return v11(v10);
}

uint64_t sub_133EFC()
{
  if (!*(v0 + 120))
  {
    sub_D188(v0 + 96, &qword_1E83D0, &qword_174EE0);
    v18 = 0x800000000018C8B0;
    if (qword_1E58E8 != -1)
    {
LABEL_38:
      sub_9ED4(&qword_1E58E8);
    }

    v22 = sub_16A584();
    sub_9DA0(v22, qword_1E65C0);
    sub_16A9A4();
    sub_1207C();
    sub_135964();
    sub_386D8(v23, v24, v25, v26, v27, v28, 38, v29, v18);
    sub_16A464();
    sub_16A454();
    goto LABEL_29;
  }

  v2 = *(v0 + 272);
  v1 = *(v0 + 280);
  sub_D124((v0 + 96), v0 + 56);
  v3 = [v2 seat];
  v4 = 2;
  if (*(v1 + OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin35SetCarPlaySeatSettingsIntentHandler_isRHD))
  {
    v4 = 3;
  }

  v5 = 2;
  if (!*(v1 + OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin35SetCarPlaySeatSettingsIntentHandler_isRHD))
  {
    v5 = 3;
  }

  if (v3 != &dword_0 + 3)
  {
    v5 = v3;
  }

  if (v3 != &dword_0 + 2)
  {
    v4 = v5;
  }

  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = 2;
  }

  v7 = *(v0 + 80);
  v8 = *(v0 + 88);
  sub_D084((v0 + 56), v7);
  v9 = (*(v8 + 112))(v6, v7, v8);
  v10 = *(v9 + 16);
  if (!v10)
  {

    sub_3060C();
    sub_16ACF4(40);
    *(v0 + 240) = v50;
    *(v0 + 248) = v51;
    v53._countAndFlagsBits = 0xD000000000000026;
    v53._object = 0x80000000001904A0;
    sub_16A744(v53);
    *(v0 + 264) = v6;
    sub_16AD84();
    v31 = *(v0 + 240);
    v30 = *(v0 + 248);
    if (qword_1E58E8 != -1)
    {
      sub_9ED4(&qword_1E58E8);
    }

    v32 = sub_16A584();
    sub_9DA0(v32, qword_1E65C0);
    sub_16A9A4();
    sub_1207C();
    sub_135964();
    sub_386D8(v33, v34, v35, v36, v37, v38, 46, v31, v30);

    sub_16A464();
    goto LABEL_28;
  }

  sub_10824(*(v0 + 280) + OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin35SetCarPlaySeatSettingsIntentHandler_serviceAvailabilityGate, v0 + 136);
  v11 = sub_D084((v0 + 136), *(v0 + 160));
  v12 = sub_133260(v9, &qword_1EE5D0, &unk_179D78);
  v14 = sub_948E4(v12, *v11, v13);

  v15 = v14[2];

  if (!v15)
  {

    sub_D13C((v0 + 136));
    if (qword_1E58E8 != -1)
    {
      sub_9ED4(&qword_1E58E8);
    }

    v39 = sub_16A584();
    sub_9DA0(v39, qword_1E65C0);
    sub_16A9A4();
    sub_1207C();
    sub_135964();
    sub_386D8(v40, v41, v42, v43, v44, v45, 53, v46, 0x8000000000190450);
    sub_16A464();
LABEL_28:
    sub_16A454();
    sub_D13C((v0 + 56));
LABEL_29:
    sub_D13C((v0 + 16));
LABEL_30:
    v47 = sub_120EC();

    return v48(v47);
  }

  sub_D13C((v0 + 136));
  v16 = 0;
  v17 = v9 + 32;
  v18 = *(v0 + 320);
  while (1)
  {
    if (v10 == v16)
    {

      sub_D13C((v0 + 56));
      sub_D13C((v0 + 16));
      sub_16A464();
      sub_16A454();
      goto LABEL_30;
    }

    if (v16 >= *(v9 + 16))
    {
      __break(1u);
      goto LABEL_38;
    }

    v19 = *(v0 + 288);
    v20 = *(v0 + 328);
    v21 = *(v0 + 272);
    sub_10824(v17, v0 + 176);
    sub_1344D0((v0 + 176), v20, v21, v19);
    if (v18)
    {
      break;
    }

    ++v16;
    sub_D13C((v0 + 176));
    v17 += 40;
  }

  return sub_D13C((v0 + 176));
}

uint64_t sub_1343BC()
{
  sub_D13C((v0 + 16));
  swift_errorRetain();
  if (qword_1E58E8 != -1)
  {
    sub_9ED4(&qword_1E58E8);
  }

  v1 = sub_16A584();
  sub_9DA0(v1, qword_1E65C0);
  sub_16A9A4();
  sub_1359A4();
  sub_16AEB4();
  v14 = v2;
  sub_1207C();
  sub_1358F8(v3, v4, v5, v6, v7, v8, v9, v10, v14);

  sub_16A464();
  sub_13593C();

  v11 = sub_120EC();

  return v12(v11);
}

uint64_t sub_1344D0(void *a1, char a2, void *a3, uint64_t a4)
{
  sub_16ACF4(59);
  v17._countAndFlagsBits = 0x676E697461647055;
  v17._object = 0xE900000000000020;
  sub_16A744(v17);
  v8 = a1[3];
  v9 = a1[4];
  sub_D084(a1, v8);
  v18._countAndFlagsBits = (*(v9 + 16))(v8, v9);
  sub_16A744(v18);

  v19._countAndFlagsBits = 0xD000000000000018;
  v19._object = 0x80000000001906B0;
  sub_16A744(v19);
  if (a2)
  {
    v10._countAndFlagsBits = 1702195828;
  }

  else
  {
    v10._countAndFlagsBits = 0x65736C6166;
  }

  if (a2)
  {
    v11 = 0xE400000000000000;
  }

  else
  {
    v11 = 0xE500000000000000;
  }

  v10._object = v11;
  sub_16A744(v10);

  v20._object = 0x80000000001906D0;
  v20._countAndFlagsBits = 0xD000000000000014;
  sub_16A744(v20);
  [a3 temperatureChange];
  sub_16AD84();
  if (qword_1E58E8 != -1)
  {
    swift_once();
  }

  v12 = sub_16A584();
  sub_9DA0(v12, qword_1E65C0);
  v13 = sub_16A9A4();
  sub_386D8(v13, 0x200000uLL, 0xD0000000000000A3, 0x80000000001903A0, 0x6928656C646E6168, 0xEF293A746E65746ELL, 58, 0, 0xE000000000000000);

  v14 = a1[3];
  v15 = a1[4];
  sub_D084(a1, v14);
  return (*(v15 + 24))(a4, a2 & 1, v14, v15);
}

uint64_t sub_134760(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  a3;
  v7 = swift_task_alloc();
  v3[5] = v7;
  *v7 = v3;
  v7[1] = sub_19F4C;

  return SetCarPlaySeatSettingsIntentHandler.handle(intent:)(v6);
}

uint64_t sub_134838()
{
  v1 = [*(v0 + 40) enableSeatTemperature];
  if (v1)
  {
    v2 = v1;
    if ([*(v0 + 40) temperatureChange])
    {
      v3 = *(v0 + 40);
      sub_3060C();
      sub_16ACF4(79);
      *(v0 + 16) = v26;
      *(v0 + 24) = v27;
      v29._countAndFlagsBits = 0xD000000000000045;
      v29._object = 0x8000000000190560;
      sub_16A744(v29);
      v4 = [v2 description];
      v5 = sub_16A664();
      v7 = v6;

      v30._countAndFlagsBits = v5;
      v30._object = v7;
      sub_16A744(v30);

      v31._countAndFlagsBits = 8236;
      v31._object = 0xE200000000000000;
      sub_16A744(v31);
      v8 = [v3 seat];
      *(v0 + 32) = v8;
      sub_1359C4(v8, v9, &type metadata for IntentSeatType);
      v32._countAndFlagsBits = 8236;
      v32._object = 0xE200000000000000;
      sub_16A744(v32);
      v10 = [v3 temperatureChange];
      *(v0 + 32) = v10;
      sub_1359C4(v10, v11, &type metadata for IntentTemperatureChange);
      v12 = *(v0 + 16);
      v13 = *(v0 + 24);
      if (qword_1E58E8 != -1)
      {
        sub_9ED4(&qword_1E58E8);
      }

      v14 = sub_16A584();
      sub_9DA0(v14, qword_1E65C0);
      v15 = sub_16A9A4();
      sub_386D8(v15, 0x400uLL, 0xD0000000000000A3, 0x80000000001903A0, 0xD000000000000010, 0x8000000000186020, 76, v12, v13);

      sub_16A464();
      sub_16A454();

      goto LABEL_13;
    }
  }

  v16 = *(v0 + 40);
  sub_3060C();
  sub_16ACF4(90);
  v33._countAndFlagsBits = 0xD000000000000053;
  v33._object = 0x8000000000190500;
  sub_16A744(v33);
  v17 = [v16 enableSeatTemperature];
  if (v17)
  {
    v18 = v17;
    v19 = [v17 BOOLValue];
  }

  else
  {
    v19 = 2;
  }

  v20 = *(v0 + 40);
  *(v0 + 16) = v19;
  sub_5758(&qword_1EC228, &unk_177DC0);
  v34._countAndFlagsBits = sub_16A694();
  sub_16A744(v34);

  v35._countAndFlagsBits = 8236;
  v35._object = 0xE200000000000000;
  sub_16A744(v35);
  *(v0 + 16) = [v20 seat];
  v36._countAndFlagsBits = sub_16A694();
  sub_16A744(v36);

  v37._countAndFlagsBits = 41;
  v37._object = 0xE100000000000000;
  sub_16A744(v37);
  if (qword_1E58E8 != -1)
  {
    sub_9ED4(&qword_1E58E8);
  }

  v21 = sub_16A584();
  sub_9DA0(v21, qword_1E65C0);
  v22 = sub_16A9A4();
  sub_386D8(v22, 0x400uLL, 0xD0000000000000A3, 0x80000000001903A0, 0xD000000000000010, 0x8000000000186020, 72, v26, v27);

  sub_16A464();
  sub_13593C();
LABEL_13:
  v23 = sub_120EC();

  return v24(v23);
}

uint64_t sub_134C3C(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  v7 = a3;
  v8 = swift_task_alloc();
  v3[5] = v8;
  *v8 = v3;
  v8[1] = sub_2F924;

  return SetCarPlaySeatSettingsIntentHandler.confirm(intent:)(v6);
}

id SetCarPlaySeatSettingsIntentHandler.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SetCarPlaySeatSettingsIntentHandler();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_134DE0(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = (a3 + *a3);
  v4 = swift_task_alloc();
  *(v3 + 16) = v4;
  *v4 = v3;
  v4[1] = sub_10A9C;

  return v6();
}

uint64_t sub_134EC8(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v7 = (a4 + *a4);
  v5 = swift_task_alloc();
  *(v4 + 16) = v5;
  *v5 = v4;
  v5[1] = sub_1039C;

  return v7();
}

uint64_t sub_134FB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_5758(&qword_1E66C0, &qword_16FE00);
  __chkstk_darwin(v9 - 8);
  v11 = v22 - v10;
  sub_677A4(a3, v22 - v10);
  v12 = sub_16A884();
  if (sub_9E2C(v11, 1, v12) == 1)
  {
    sub_D188(v11, &qword_1E66C0, &qword_16FE00);
  }

  else
  {
    sub_16A874();
    (*(*(v12 - 8) + 8))(v11, v12);
  }

  if (*(a5 + 16))
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    v13 = sub_16A844();
    v15 = v14;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v16 = sub_16A6C4() + 32;
      v17 = swift_allocObject();
      *(v17 + 16) = a4;
      *(v17 + 24) = a5;

      if (v15 | v13)
      {
        v23[0] = 0;
        v23[1] = 0;
        v18 = v23;
        v23[2] = v13;
        v23[3] = v15;
      }

      else
      {
        v18 = 0;
      }

      v22[1] = 7;
      v22[2] = v18;
      v22[3] = v16;
      v20 = swift_task_create();

      sub_D188(a3, &qword_1E66C0, &qword_16FE00);

      return v20;
    }
  }

  else
  {
    v13 = 0;
    v15 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_D188(a3, &qword_1E66C0, &qword_16FE00);
  v19 = swift_allocObject();
  *(v19 + 16) = a4;
  *(v19 + 24) = a5;
  if (v15 | v13)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v13;
    v23[7] = v15;
  }

  return swift_task_create();
}

unint64_t sub_13527C()
{
  result = qword_1EE5A0;
  if (!qword_1EE5A0)
  {
    type metadata accessor for TappableCommand(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE5A0);
  }

  return result;
}

uint64_t sub_1352D8()
{
  sub_1696C();
  v0 = swift_task_alloc();
  v1 = sub_31500(v0);
  *v1 = v2;
  v3 = sub_120FC(v1);

  return v4(v3);
}

uint64_t sub_135370()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = swift_task_alloc();
  v5 = sub_31500(v4);
  *v5 = v6;
  v5[1] = sub_10A9C;

  return sub_134DE0(v1, v2, v3);
}

uint64_t sub_13542C()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_13546C(uint64_t a1)
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  v6 = swift_task_alloc();
  v7 = sub_31500(v6);
  *v7 = v8;
  v7[1] = sub_10A9C;

  return sub_134EC8(a1, v3, v4, v5);
}

uint64_t sub_135534()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_13556C()
{
  sub_1696C();
  v0 = swift_task_alloc();
  v1 = sub_31500(v0);
  *v1 = v2;
  v3 = sub_67C34(v1);

  return v4(v3);
}

uint64_t sub_135604()
{
  sub_1696C();
  v0 = swift_task_alloc();
  v1 = sub_31500(v0);
  *v1 = v2;
  v3 = sub_67C34(v1);

  return v4(v3);
}

uint64_t sub_13569C()
{
  sub_1696C();
  v0 = swift_task_alloc();
  v1 = sub_31500(v0);
  *v1 = v2;
  v3 = sub_120FC(v1);

  return v4(v3);
}

uint64_t sub_135748(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(uint64_t *, uint64_t))
{
  v14[3] = a4;
  v14[4] = a5;
  v11 = sub_10888(v14);
  (*(*(a4 - 8) + 32))(v11, a2, a4);
  v12 = *a3;
  *(v12 + 16) = a1 + 1;
  return a6(v14, v12 + 40 * a1 + 32);
}

uint64_t sub_135854(uint64_t result)
{
  *(v4 - 104) = result;
  *(v4 - 96) = v2;
  *(v4 - 128) = v3;
  *(v4 - 88) = v1;
  return result;
}

uint64_t sub_1358B4()
{

  return sub_16ADC4();
}

uint64_t sub_1358D0()
{

  return sub_2F8D0(v1 - 128, v0);
}

void sub_1358F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8, unint64_t a9)
{

  sub_386D8(v9, 0x400uLL, 0xD0000000000000A3, v10 | 0x8000000000000000, a5, a6, 62, a8, a9);
}

uint64_t sub_13593C()
{

  return sub_16A454();
}

uint64_t sub_135974()
{

  return sub_16AD04();
}

id sub_13598C()
{
  v3 = *(v0 + 8 * v1 + 32);

  return v3;
}

uint64_t sub_1359A4()
{

  return swift_getErrorValue();
}

uint64_t sub_1359C4(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_16AD84();
}

uint64_t sub_1359E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  sub_168B74();
  v3[5] = swift_task_alloc();
  v4 = sub_1691E4();
  v3[6] = v4;
  v3[7] = *(v4 - 8);
  v3[8] = swift_task_alloc();

  return _swift_task_switch(sub_135AD4);
}

uint64_t sub_135AD4(uint64_t a1)
{
  v2 = v1[4];
  sub_168B34();
  sub_169164();
  sub_1691A4();
  sub_1691C4();
  v3 = v2[3];
  v4 = v2[4];
  sub_D084(v2, v3);
  v5 = swift_task_alloc();
  v1[9] = v5;
  *v5 = v1;
  v5[1] = sub_135BD8;
  v6 = v1[8];
  v7 = v1[2];
  v8 = v1[3];

  return dispatch thunk of ResponseGenerating.makeResponseOutput(dialog:outputGenerationManifest:)(v7, v8, v6, v3, v4);
}

uint64_t sub_135BD8()
{

  return _swift_task_switch(sub_135CD4);
}

uint64_t sub_135CD4()
{
  (*(v0[7] + 8))(v0[8], v0[6]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_135DA8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v78 = a2;
  v74 = a1;
  v79 = a3;
  v77 = *v3;
  v75 = sub_1693E4();
  sub_9F48();
  v73 = v5;
  __chkstk_darwin(v6);
  v72 = &v71 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_168FE4();
  sub_9F48();
  v10 = v9;
  __chkstk_darwin(v11);
  v13 = &v71 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = v3[22];
  v81 = 0x8000000000189940;
  if (qword_1E58E8 != -1)
  {
    sub_9ED4(&qword_1E58E8);
  }

  v15 = sub_16A584();
  v80 = sub_9DA0(v15, qword_1E65C0);
  v16 = sub_16A9A4();
  v86 = 0xD000000000000089;
  v87 = 0x8000000000190720;
  v76 = 0x8000000000190720;
  v83._countAndFlagsBits = 47;
  v83._object = 0xE100000000000000;
  sub_D030();
  v17 = sub_16AB34();
  v18 = sub_15AE4(v17);
  v20 = v19;

  if (v20)
  {
    v86 = v18;
    v87 = v20;
    v90._countAndFlagsBits = 32;
    v90._object = 0xE100000000000000;
    sub_16A744(v90);
    v91._countAndFlagsBits = 0xD000000000000020;
    v91._object = v81;
    sub_16A744(v91);
    v21 = v86;
    v22 = v87;
  }

  else
  {
    sub_138964();
    v22 = v81;
  }

  v86 = v21;
  v87 = v22;
  v83._countAndFlagsBits = 58;
  v83._object = 0xE100000000000000;
  v82[0] = 23;
  v92._countAndFlagsBits = sub_16AE24();
  sub_16A744(v92);

  sub_16A744(v83);

  v23._countAndFlagsBits = sub_378D0(v14);
  if (v23._object)
  {
    v83._countAndFlagsBits = 32;
    v83._object = 0xE100000000000000;
    sub_16A744(v23);

    sub_16A744(v83);
  }

  sub_138970();
  v24 = sub_16A574();
  if (os_log_type_enabled(v24, v16))
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v83._countAndFlagsBits = v26;
    *v25 = 136315138;
    v27 = sub_10B58();
    v30 = sub_15BC8(v27, v28, v29);

    *(v25 + 4) = v30;
    _os_log_impl(&dword_0, v24, v16, "%s", v25, 0xCu);
    sub_D13C(v26);
    sub_D494(v26);
    sub_D494(v25);
  }

  else
  {
  }

  sub_169274();
  v31 = sub_169244();
  sub_169264();
  v32 = sub_168FD4();
  v34 = v33;
  v35 = *(v10 + 8);
  v35(v13, v8);
  if (sub_D95F4(v31, v32, v34) > 0xF7u)
  {
    v78 = v4[22];
    type metadata accessor for CarCommandsError(0);
    sub_11D28();
    swift_allocError();
    v37 = v36;
    sub_169264();
    v38 = sub_168FD4();
    v40 = v39;
    v35(v13, v8);
    *v37 = v38;
    v37[1] = v40;
    swift_storeEnumTagMultiPayload();
    sub_16A9A4();
    swift_getErrorValue();
    sub_16AEB4();
    v70 = v41;
    sub_138964();
    sub_13894C();
    sub_138970();
    sub_386D8(v42, v43, v44, v45, v46, v47, v48, v49, v70);

    return sub_168C74();
  }

  v50 = v72;
  sub_169384();
  sub_86E4(v50, &_swiftEmptySetSingleton, v82);
  (*(v73 + 8))(v50, v75);
  if (!v82[3])
  {
    sub_D188(v82, &qword_1E5F80, &unk_16E7E0);
    v83 = 0;
    v84 = 0u;
    v85 = 0;
    goto LABEL_20;
  }

  sub_5758(&qword_1E5F90, &qword_170270);
  sub_5758(&qword_1E5F98, &unk_16D420);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v85 = 0;
    v83 = 0;
    v84 = 0u;
    goto LABEL_20;
  }

  if (!*(&v84 + 1))
  {
LABEL_20:
    sub_D188(&v83, &qword_1E5F88, &unk_16D410);
    sub_16A9A4();
    sub_138964();
    sub_13894C();
    sub_138970();
    sub_386D8(v53, v54, v55, v56, v57, v58, v59, v60, 0x800000000017F910);
    return sub_168C74();
  }

  sub_D250(&v83._countAndFlagsBits, &v86);
  v51 = v88;
  v52 = v89;
  sub_D084(&v86, v88);
  if ((*(v52 + 32))(v51, v52))
  {
    sub_168C64();
  }

  else
  {
    sub_16A9A4();
    sub_138964();
    sub_13894C();
    sub_138970();
    sub_386D8(v62, v63, v64, v65, v66, v67, v68, v69, 0x80000000001801B0);
    sub_168C54();
  }

  return sub_D13C(&v86);
}

uint64_t sub_1364C0()
{
  sub_D2DC();
  v1[25] = v2;
  v1[26] = v0;
  v1[23] = v3;
  v1[24] = v4;
  v1[27] = *v0;
  v5 = sub_5758(&qword_1E6048, &qword_16D890);
  sub_D414(v5);
  v1[28] = sub_D3C8();
  v6 = sub_1693E4();
  v1[29] = v6;
  sub_10AEC(v6);
  v1[30] = v7;
  v1[31] = sub_D3C8();
  v8 = sub_168FE4();
  v1[32] = v8;
  sub_10AEC(v8);
  v1[33] = v9;
  v1[34] = sub_D3C8();
  sub_10B4C();

  return _swift_task_switch(v10);
}

uint64_t sub_13660C()
{
  v2 = *(v0 + 264);
  v1 = *(v0 + 272);
  v3 = *(v0 + 216);
  v44 = *(v0 + 208);
  v46 = *(v0 + 256);
  v47 = *(v44 + 176);
  sub_16ACF4(40);
  v52._countAndFlagsBits = 0xD000000000000011;
  v52._object = 0x80000000001898E0;
  sub_16A744(v52);
  v4 = *(v3 + 416);
  sub_169274();
  v5 = sub_169244();
  *(v0 + 168) = v5;
  v45 = v4;
  swift_getWitnessTable();
  sub_16AE44();

  v53._countAndFlagsBits = 0xD000000000000013;
  v53._object = 0x8000000000189900;
  sub_16A744(v53);
  sub_169264();
  v6 = sub_168FD4();
  v8 = v7;
  v49 = *(v2 + 8);
  v49(v1, v46);
  v54._countAndFlagsBits = v6;
  v54._object = v8;
  sub_16A744(v54);

  if (qword_1E58E8 != -1)
  {
    sub_9ED4(&qword_1E58E8);
  }

  v9 = *(v0 + 272);
  v10 = *(v0 + 256);
  v11 = sub_16A584();
  sub_9DA0(v11, qword_1E65C0);
  v12 = sub_16A9A4();
  sub_386D8(v12, v47, 0xD000000000000089, 0x8000000000190720, 0xD00000000000002FLL, 0x8000000000190830, 46, 0, 0xE000000000000000);

  v13 = sub_169244();
  sub_169264();
  v14 = sub_168FD4();
  v16 = v15;
  v49(v9, v10);
  v48 = v13;
  v17 = sub_D95F4(v13, v14, v16);
  if (v17 > 0xF7u)
  {
    v18 = *(v0 + 272);
    v19 = *(v0 + 256);
    type metadata accessor for CarCommandsError(0);
    sub_11D28();
    swift_allocError();
    v21 = v20;
    sub_169264();
    v22 = sub_168FD4();
    v24 = v23;
    v49(v18, v19);
    *v21 = v22;
    v21[1] = v24;
LABEL_13:
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    sub_D37C();
    goto LABEL_14;
  }

  v25 = v17;
  v26 = (v0 + 56);
  v27 = *(v0 + 240);
  v28 = *(v0 + 248);
  v29 = *(v0 + 232);
  sub_169384();
  sub_86E4(v28, &_swiftEmptySetSingleton, (v0 + 96));
  (*(v27 + 8))(v28, v29);
  if (!*(v0 + 120))
  {
    sub_D188(v0 + 96, &qword_1E5F80, &unk_16E7E0);
    *v26 = 0u;
    *(v0 + 72) = 0u;
    *(v0 + 88) = 0;
    goto LABEL_12;
  }

  sub_5758(&qword_1E5F90, &qword_170270);
  sub_5758(&qword_1E5F98, &unk_16D420);
  if ((swift_dynamicCast() & 1) == 0)
  {
    *(v0 + 88) = 0;
    *v26 = 0u;
    *(v0 + 72) = 0u;
    goto LABEL_12;
  }

  if (!*(v0 + 80))
  {
LABEL_12:
    sub_D188(v26, &qword_1E5F88, &unk_16D410);
    type metadata accessor for CarCommandsError(0);
    v39 = sub_11D28();
    sub_16924(v39);
    sub_169384();
    goto LABEL_13;
  }

  sub_D250(v26, v0 + 16);
  v30 = *(v0 + 40);
  v31 = *(v0 + 48);
  v50 = (v0 + 16);
  sub_D084((v0 + 16), v30);
  if ((*(v31 + 32))(v30, v31))
  {
    v32 = *(v0 + 216);
    v33 = sub_169254();
    v34 = [v33 itemToConfirm];

    sub_16AB64();
    swift_unknownObjectRelease();
    v35 = (*(*(v32 + 432) + 16))(v0 + 136, v25, v45);

    v36 = *(v44 + 176);
    v37 = v35;
    sub_16ACF4(18);
    v55._countAndFlagsBits = 0xD000000000000010;
    v55._object = 0x8000000000189920;
    sub_16A744(v55);
    *(v0 + 176) = v37;
    sub_16AE44();

    v38 = sub_16A9A4();
    sub_386D8(v38, v36, 0xD000000000000089, 0x8000000000190720, 0xD00000000000002FLL, 0x8000000000190830, 61, 0, 0xE000000000000000);

    sub_D13C((v0 + 136));
  }

  v42 = *(v0 + 40);
  v43 = *(v0 + 48);
  sub_D084(v50, v42);
  (*(v43 + 16))(v42, v43);
  sub_169144();
  sub_D13C(v50);

  sub_D37C();
LABEL_14:

  return v40();
}

uint64_t sub_136CD4()
{
  sub_D2DC();
  v1[17] = v2;
  v1[18] = v0;
  v1[16] = v3;
  v1[19] = *v0;
  v4 = type metadata accessor for CarCommandsError(0);
  v1[20] = v4;
  sub_D414(v4);
  v1[21] = sub_D3C8();
  v5 = sub_5758(&qword_1E6300, &qword_16ECE0);
  sub_D414(v5);
  v1[22] = swift_task_alloc();
  v1[23] = swift_task_alloc();
  v6 = sub_168E14();
  v1[24] = v6;
  sub_10AEC(v6);
  v1[25] = v7;
  v1[26] = sub_D3C8();
  v8 = sub_168FE4();
  v1[27] = v8;
  sub_10AEC(v8);
  v1[28] = v9;
  v1[29] = swift_task_alloc();
  v1[30] = swift_task_alloc();
  sub_10B4C();

  return _swift_task_switch(v10);
}

uint64_t sub_136E6C()
{
  v35 = v0;
  v1 = *(*(v0 + 144) + 176);
  v2 = 0x80000000001907B0;
  if (qword_1E58E8 != -1)
  {
    sub_9ED4(&qword_1E58E8);
  }

  v3 = 0xD000000000000037;
  v4 = sub_16A584();
  sub_9DA0(v4, qword_1E65C0);
  v5 = sub_16A9A4();
  *(v0 + 56) = 0xD000000000000089;
  *(v0 + 64) = 0x8000000000190720;
  *(v0 + 72) = 47;
  *(v0 + 80) = 0xE100000000000000;
  sub_D030();
  v6 = sub_16AB34();
  v7 = sub_15AE4(v6);
  v9 = v8;

  if (v9)
  {
    v37._countAndFlagsBits = 32;
    v37._object = 0xE100000000000000;
    sub_16A744(v37);
    v38._countAndFlagsBits = 0xD000000000000037;
    v38._object = 0x80000000001907B0;
    sub_16A744(v38);
    v3 = v7;
    v2 = v9;
  }

  v34._countAndFlagsBits = 58;
  v34._object = 0xE100000000000000;
  *(v0 + 104) = 69;
  v39._countAndFlagsBits = sub_16AE24();
  sub_16A744(v39);

  sub_16A744(v34);

  v10._countAndFlagsBits = sub_378D0(v1);
  if (v10._object)
  {
    v34._countAndFlagsBits = 32;
    v34._object = 0xE100000000000000;
    sub_16A744(v10);

    v40._countAndFlagsBits = 32;
    v40._object = 0xE100000000000000;
    sub_16A744(v40);
  }

  v11 = sub_16A574();
  if (os_log_type_enabled(v11, v5))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v34._countAndFlagsBits = v13;
    *v12 = 136315138;
    v14 = sub_15BC8(v3, v2, &v34._countAndFlagsBits);

    *(v12 + 4) = v14;
    _os_log_impl(&dword_0, v11, v5, "%s", v12, 0xCu);
    sub_D13C(v13);
    sub_D494(v13);
    sub_D494(v12);
  }

  else
  {
  }

  v15 = *(v0 + 240);
  v16 = *(v0 + 216);
  v17 = *(v0 + 224);
  sub_169274();
  v18 = sub_169244();
  sub_169264();
  v19 = sub_168FD4();
  v21 = v20;
  v33 = *(v17 + 8);
  v33(v15, v16);
  v22 = sub_D95F4(v18, v19, v21);
  sub_12C0B0(v22);
  sub_F3C00();
  sub_168D84();
  *(v0 + 112) = sub_169254();
  sub_138904();
  sub_5758(&qword_1EE680, &qword_179F90);
  v23 = swift_dynamicCast();
  v24 = *(v0 + 184);
  if (v23)
  {
    sub_D084((v0 + 16), *(v0 + 40));
    v25 = sub_10B58();
    v26(v25);
    sub_D13C((v0 + 16));
  }

  else
  {
    *(v0 + 48) = 0;
    *(v0 + 16) = 0u;
    *(v0 + 32) = 0u;
    sub_D188(v0 + 16, &qword_1EE688, &qword_179F98);
    v27 = sub_16A0C4();
    sub_5370(v24, 1, 1, v27);
  }

  v28 = *(v0 + 176);
  sub_169264();
  sub_168FD4();
  v29 = sub_10B58();
  (v33)(v29);
  sub_16A6E4();

  v30 = sub_16A0C4();
  sub_5370(v28, 0, 1, v30);
  v31 = swift_task_alloc();
  *(v0 + 248) = v31;
  *v31 = v0;
  v31[1] = sub_137348;

  return sub_137720();
}

uint64_t sub_137348()
{
  v2 = *v1;
  sub_D2A4();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 256) = v0;

  sub_D188(*(v2 + 176), &qword_1E6300, &qword_16ECE0);
  sub_10B4C();

  return _swift_task_switch(v5);
}

uint64_t sub_137484()
{
  sub_D188(*(v0 + 184), &qword_1E6300, &qword_16ECE0);
  v1 = sub_10B58();
  v2(v1);

  sub_D37C();

  return v3();
}

uint64_t sub_137560()
{
  v1 = v0[32];
  v3 = v0[25];
  v2 = v0[26];
  v4 = v0[23];
  v5 = v0[24];
  v6 = v0[21];
  sub_16ACF4(59);
  v0[11] = 0;
  v0[12] = 0xE000000000000000;
  v0[15] = v1;
  sub_5758(&qword_1E6360, &qword_16E3B0);
  sub_16AD84();
  v13._object = 0x80000000001907F0;
  v13._countAndFlagsBits = 0xD000000000000039;
  sub_16A744(v13);
  v7 = v0[12];
  *v6 = v0[11];
  v6[1] = v7;
  swift_storeEnumTagMultiPayload();
  v8 = sub_11D28();
  sub_16924(v8);
  sub_548D0(v6, v9);
  swift_willThrow();

  sub_5A09C(v6);
  sub_D188(v4, &qword_1E6300, &qword_16ECE0);
  (*(v3 + 8))(v2, v5);

  v10 = v0[1];

  return v10();
}

uint64_t sub_137720()
{
  sub_D2DC();
  v1[13] = v2;
  v1[14] = v0;
  v1[11] = v3;
  v1[12] = v4;
  v1[10] = v5;
  v6 = sub_16A164();
  sub_D414(v6);
  v1[15] = sub_D3C8();
  sub_10B4C();

  return _swift_task_switch(v7);
}

uint64_t sub_1377A4()
{
  sub_D2DC();
  type metadata accessor for CarCommandsCATsSimple(0);
  sub_16A154();
  *(v0 + 128) = sub_16A0F4();
  v1 = swift_task_alloc();
  *(v0 + 136) = v1;
  *v1 = v0;
  v1[1] = sub_137868;

  return sub_E0130();
}

uint64_t sub_137868()
{
  sub_D2DC();
  sub_D358();
  sub_D2A4();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 144) = v4;
  *(v2 + 152) = v0;

  sub_10B4C();

  return _swift_task_switch(v5);
}

uint64_t sub_13796C()
{
  sub_D2DC();
  v1 = *(v0 + 112);
  type metadata accessor for ConfirmationSnippetFactory();
  swift_beginAccess();
  sub_10824(v1 + 184, v0 + 16);
  v2 = swift_task_alloc();
  *(v0 + 160) = v2;
  *v2 = v0;
  v2[1] = sub_137A38;

  return sub_14AE58();
}

uint64_t sub_137A38()
{
  sub_D2DC();
  sub_D358();
  v3 = v2;
  sub_D2A4();
  *v4 = v3;
  v5 = *v1;
  sub_D2A4();
  *v6 = v5;
  *(v3 + 168) = v0;

  sub_D13C((v3 + 16));
  sub_10B4C();

  return _swift_task_switch(v7);
}

uint64_t sub_137B40()
{
  sub_D2DC();

  sub_D37C();

  return v1();
}

uint64_t sub_137BB0()
{
  sub_D2DC();

  sub_D37C();

  return v0();
}

uint64_t sub_137C14()
{
  sub_D2DC();

  sub_D37C();

  return v1();
}

void *sub_137CB8()
{
  v0 = sub_3D044();

  sub_D13C((v0 + qword_1F0DF8));
  return v0;
}

uint64_t sub_137D00()
{
  v0 = sub_137CB8();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

uint64_t sub_137D6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6)
{
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  v14 = type metadata accessor for CommonNeedsConfirmationFlowStrategy(0, a5[52], a5[53], a5[54]);
  *v13 = v6;
  v13[1] = sub_137E58;

  return NeedsConfirmationWithCancellationFlowStrategyAsync.makeIntentCancelledByParameterRejectionResponse(app:intent:parameter:)(a1, a2, a3, a4, v14, a6);
}

uint64_t sub_137E58()
{
  sub_D2DC();
  sub_D358();
  v1 = *v0;
  sub_D2A4();
  *v2 = v1;

  sub_D37C();

  return v3();
}

uint64_t sub_137F64()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_138948;

  return sub_1364C0();
}

uint64_t sub_138018(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  v10 = type metadata accessor for CommonNeedsConfirmationFlowStrategy(0, a3[52], a3[53], a3[54]);
  *v9 = v4;
  v9[1] = sub_1380EC;

  return NeedsConfirmationFlowStrategyAsync.shouldRequestUnlockForConfirmation(itemToConfirm:resolveRecord:)(a1, a2, v10, a4);
}

uint64_t sub_1380EC()
{
  sub_D2DC();
  v2 = v1;
  sub_D358();
  v3 = *v0;
  sub_D2A4();
  *v4 = v3;

  v5 = *(v3 + 8);

  return v5(v2);
}

uint64_t sub_1381DC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_138948;

  return sub_136CD4();
}

uint64_t sub_138288(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  v12 = type metadata accessor for CommonNeedsConfirmationFlowStrategy(0, a4[52], a4[53], a4[54]);
  *v11 = v5;
  v11[1] = sub_138948;

  return NeedsConfirmationFlowStrategyAsync.makeRepromptOnEmptyParse(itemToConfirm:resolveRecord:)(a1, a2, a3, v12, a5);
}

uint64_t sub_13836C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  v12 = type metadata accessor for CommonNeedsConfirmationFlowStrategy(0, a4[52], a4[53], a4[54]);
  *v11 = v5;
  v11[1] = sub_138948;

  return NeedsConfirmationFlowStrategyAsync.makeRepromptOnLowConfidence(itemToConfirm:resolveRecord:)(a1, a2, a3, v12, a5);
}

uint64_t sub_138450(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  v10 = type metadata accessor for CommonNeedsConfirmationFlowStrategy(0, a3[52], a3[53], a3[54]);
  *v9 = v4;
  v9[1] = sub_138948;

  return NeedsConfirmationFlowStrategyAsync.makePromptForDeviceUnlock(resolveRecord:)(a1, a2, v10, a4);
}

uint64_t sub_138524(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  v10 = type metadata accessor for CommonNeedsConfirmationFlowStrategy(0, a3[52], a3[53], a3[54]);
  *v9 = v4;
  v9[1] = sub_138948;

  return NeedsConfirmationFlowStrategyAsync.makeHandoffForAuthenticationResponse(resolveRecord:)(a1, a2, v10, a4);
}

uint64_t sub_1385F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6)
{
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  v14 = type metadata accessor for CommonNeedsConfirmationFlowStrategy(0, a5[52], a5[53], a5[54]);
  *v13 = v6;
  v13[1] = sub_138948;

  return NeedsConfirmationFlowStrategyAsync.makeConfirmationRejectedResponse(app:intent:parameter:)(a1, a2, a3, a4, v14, a6);
}

uint64_t sub_1386E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6)
{
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  v14 = type metadata accessor for CommonNeedsConfirmationFlowStrategy(0, a5[52], a5[53], a5[54]);
  *v13 = v6;
  v13[1] = sub_138948;

  return ParameterResolutionHandlingAsync.makeFlowCancelledResponse(app:intent:parameter:)(a1, a2, a3, a4, v14, a6);
}

uint64_t sub_1387D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6, uint64_t a7)
{
  v15 = swift_task_alloc();
  *(v7 + 16) = v15;
  v16 = type metadata accessor for CommonNeedsConfirmationFlowStrategy(0, a6[52], a6[53], a6[54]);
  *v15 = v7;
  v15[1] = sub_138948;

  return ParameterResolutionHandlingAsync.makeErrorResponse(error:app:intent:parameter:)(a1, a2, a3, a4, a5, v16, a7);
}

unint64_t sub_138904()
{
  result = qword_1EE678;
  if (!qword_1EE678)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EE678);
  }

  return result;
}

uint64_t type metadata accessor for CarCommandsSetMaxACCATsSimple(uint64_t a1)
{
  result = qword_1EE690;
  if (!qword_1EE690)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_138A08(char a1)
{
  *(v2 + 16) = v1;
  *(v2 + 48) = a1;
  return _swift_task_switch(sub_138A2C);
}

uint64_t sub_138A2C()
{
  v1 = *(v0 + 48);
  sub_5758(&qword_1E63D8, &unk_16DDC0);
  v2 = swift_allocObject();
  *(v2 + 32) = 0x64656C62616E65;
  *(v2 + 40) = 0xE700000000000000;
  *(v2 + 72) = &type metadata for Bool;
  *(v2 + 48) = v1;
  v5 = (&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:) + async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));
  *(v0 + 24) = v2;
  *(v2 + 16) = xmmword_16D9A0;
  v3 = swift_task_alloc();
  *(v0 + 32) = v3;
  *v3 = v0;
  v3[1] = sub_49014;

  return v5(0xD000000000000029, 0x80000000001908B0, v2);
}

uint64_t sub_138BA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_16A164();
  sub_5B1C();
  v7 = v6;
  __chkstk_darwin(v8);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_5758(&qword_1E5B48, &unk_16DDB0);
  __chkstk_darwin(v11 - 8);
  sub_57A0(a1, &v15 - v12);
  (*(v7 + 16))(v10, a2, v3);
  v13 = sub_16A0D4();
  (*(v7 + 8))(a2, v3);
  sub_5810(a1);
  return v13;
}

uint64_t sub_138D04(uint64_t a1, uint64_t a2)
{
  sub_16A164();
  sub_5B1C();
  v5 = v4;
  __chkstk_darwin(v6);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_allocObject();
  (*(v5 + 16))(v8, a2, v2);
  v9 = sub_16A0E4();
  (*(v5 + 8))(a2, v2);
  return v9;
}

id sub_138E0C(uint64_t a1)
{
  sub_1693F4();
  sub_D084(v4, v4[3]);
  if (sub_168B14())
  {
    v1 = [objc_opt_self() processInfo];
    v2 = [v1 isLowPowerModeEnabled];
  }

  else
  {
    v2 = 0;
  }

  sub_D13C(v4);
  return v2;
}

void sub_138ED4(uint64_t a1)
{
  sub_11B48C();
  sub_76D10();
  sub_A7318();
  v5[1] = sub_16A934();
  v2 = sub_11B48C();
  for (i = 0; ; ++i)
  {
    if (v2 == i)
    {

      return;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      v4 = sub_16AD04();
    }

    else
    {
      if (i >= *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8)))
      {
        goto LABEL_11;
      }

      v4 = *(a1 + 8 * i + 32);
    }

    if (__OFADD__(i, 1))
    {
      break;
    }

    sub_8F650(v5, v4);
  }

  __break(1u);
LABEL_11:
  __break(1u);
}

uint64_t sub_138FC0(uint64_t a1)
{
  result = sub_16A934();
  v3 = 0;
  v9 = result;
  v4 = *(a1 + 16);
  for (i = (a1 + 40); ; i += 2)
  {
    if (v4 == v3)
    {

      return v9;
    }

    if (v3 >= *(a1 + 16))
    {
      break;
    }

    ++v3;
    v7 = *(i - 1);
    v6 = *i;

    sub_8FA08(&v8, v7, v6);
  }

  __break(1u);
  return result;
}

BOOL Array<A>.containsOnlyMultiplesOfSameString.getter(uint64_t a1)
{
  if (*(a1 + 16) < 2uLL)
  {
    return 0;
  }

  v2 = *(sub_138FC0(v1) + 16);

  return v2 == 1;
}

uint64_t sub_1390CC(uint64_t a1)
{
  v2 = sub_104B2C();
  v3 = sub_96E4(8, v2);

  if (v3)
  {

    return 6;
  }

  v5 = *(a1 + 144);

  v6 = sub_96E4(20, v5);

  if (v6)
  {

    return 9;
  }

  v7 = sub_104FD4();
  sub_8292C(v7);
  if (v9 == 0x6E776F6E6B6E75 && v8 == 0xE700000000000000)
  {

    return 0;
  }

  v11 = sub_16AE54();

  if (v11)
  {

    return 0;
  }

  v12 = *(a1 + 153);

  return sub_1391F8(v12);
}

uint64_t sub_13922C()
{
  v85 = v0;
  v1 = [*(v0 + 48) closureStates];
  sub_139D50();
  v2 = sub_16A7D4();

  result = sub_11B48C();
  if (result)
  {
    if (result < 1)
    {
      __break(1u);
      return result;
    }

    v4 = 0;
    v74 = v2 & 0xC000000000000001;
    sub_13A698();
    v73 = _swiftEmptyArrayStorage;
    *&v5 = 136315138;
    v72 = v5;
    v75 = v6;
    v76 = v2;
    do
    {
      if (v74)
      {
        v7 = sub_16AD04();
      }

      else
      {
        v7 = *(v2 + 8 * v4 + 32);
      }

      v8 = v7;
      v9 = [v7 vehicleLayoutKey];
      v10 = sub_16A664();
      v12 = v11;

      v83 = v10;
      v84 = v12;
      v87._countAndFlagsBits = 0x20646E6120;
      v87._object = 0xE500000000000000;
      sub_16A744(v87);
      v13 = [v8 latchState];
      v14 = v13 == 0;
      if (v13)
      {
        v15._countAndFlagsBits = 1702195828;
      }

      else
      {
        v15._countAndFlagsBits = 0x65736C6166;
      }

      if (v14)
      {
        v16 = 0xE500000000000000;
      }

      else
      {
        v16 = 0xE400000000000000;
      }

      v15._object = v16;
      sub_16A744(v15);

      v18 = v83;
      v17 = v84;
      if (qword_1E58E8 != -1)
      {
        sub_B4F54();
        swift_once();
      }

      v19 = sub_16A584();
      sub_9DA0(v19, qword_1E65C0);
      v20 = sub_16A9A4();
      *(v0 + 16) = 0xD00000000000009ALL;
      *(v0 + 24) = v78;
      *(v0 + 32) = 47;
      *(v0 + 40) = 0xE100000000000000;
      sub_D030();
      v21 = (sub_16AB34() + 16);
      if (*v21)
      {
        v22 = &v21[2 * *v21];
        v23 = *v22;
        v24 = v22[1];

        v83 = v23;
        v84 = v24;
        v88._countAndFlagsBits = 32;
        v88._object = 0xE100000000000000;
        sub_16A744(v88);
        v89._countAndFlagsBits = 0xD000000000000012;
        v89._object = v77;
        sub_16A744(v89);
        v25 = v83;
        v26 = v84;
      }

      else
      {

        v25 = 0xD000000000000012;
        v26 = v77;
      }

      v79 = v25;
      v81 = v26;
      v83 = (&stru_20 + 26);
      v84 = 0xE100000000000000;
      *(v0 + 16) = 17;
      v90._countAndFlagsBits = sub_16AE24();
      sub_16A744(v90);

      sub_13A6B0(v27, v28, v29, v30, v31, v32, v33, v34, v70, v71, v72, *(&v72 + 1), v73, v74, v75, v76, v77, v78, v79, v81, v83, v84);

      v35._countAndFlagsBits = sub_378D0(0x400uLL);
      if (v35._object)
      {
        v83 = &stru_20;
        v84 = 0xE100000000000000;
        sub_16A744(v35);

        sub_13A6B0(v36, v37, v38, v39, v40, v41, v42, v43, v70, v71, v72, *(&v72 + 1), v73, v74, v75, v76, v77, v78, v80, v82, v83, v84);
      }

      v44 = HIBYTE(v17) & 0xF;
      if ((v17 & 0x2000000000000000) == 0)
      {
        v44 = v18 & 0xFFFFFFFFFFFFLL;
      }

      if (v44)
      {
        v83 = &stru_20;
        v84 = 0xE100000000000000;
        v91._countAndFlagsBits = v18;
        v91._object = v17;
        sub_16A744(v91);
        sub_13A6B0(v45, v46, v47, v48, v49, v50, v51, v52, v70, v71, v72, *(&v72 + 1), v73, v74, v75, v76, v77, v78, v80, v82, v83, v84);
      }

      v53 = sub_16A574();
      if (os_log_type_enabled(v53, v20))
      {
        v54 = swift_slowAlloc();
        v55 = swift_slowAlloc();
        v83 = v55;
        *v54 = v72;
        v56 = sub_15BC8(v80, v82, &v83);

        *(v54 + 4) = v56;
        _os_log_impl(&dword_0, v53, v20, "%s", v54, 0xCu);
        sub_D13C(v55);
      }

      else
      {
      }

      v2 = v76;
      if (([v8 latchState] & 1) != 0 && (v57 = sub_139894(), v57 != 4))
      {
        v58 = v57;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_108A04(0, v73[2] + 1, 1, v73);
          v73 = v61;
        }

        v60 = v73[2];
        v59 = v73[3];
        if (v60 >= v59 >> 1)
        {
          sub_108A04(v59 > 1, v60 + 1, 1, v73);
          v73 = v62;
        }

        v73[2] = v60 + 1;
        *(v73 + v60 + 32) = v58;
      }

      else
      {
      }

      ++v4;
    }

    while (v75 != v4);

    v63 = v73;
  }

  else
  {

    sub_13A698();
    v63 = _swiftEmptyArrayStorage;
  }

  v83 = 0;
  v84 = 0xE000000000000000;
  sub_16ACF4(18);

  v83 = 0xD000000000000010;
  v84 = 0x80000000001909E0;
  v92._countAndFlagsBits = sub_16A7E4();
  sub_16A744(v92);

  v64 = v83;
  v65 = v84;
  if (qword_1E58E8 != -1)
  {
    sub_B4F54();
    swift_once();
  }

  v66 = sub_16A584();
  sub_9DA0(v66, qword_1E65C0);
  v67 = sub_16A9A4();
  sub_386D8(v67, 0x400uLL, 0xD00000000000009ALL, v78, 0xD000000000000012, v77, 28, v64, v65);

  v83 = v63;

  sub_139D94(&v83);

  v68 = v83;
  v69 = *(v0 + 8);

  return v69(v68);
}

uint64_t sub_139894()
{
  v1 = sub_169E84();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v44 = &v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __chkstk_darwin(v3);
  v45 = &v43 - v6;
  v7 = __chkstk_darwin(v5);
  v9 = &v43 - v8;
  __chkstk_darwin(v7);
  v11 = &v43 - v10;
  v12 = [v0 vehicleLayoutKey];
  v13 = sub_16A664();
  v15 = v14;

  v46 = *(v2 + 104);
  v46(v11, enum case for CAUVehicleLayoutKey.door_front_left(_:), v1);
  v16 = sub_169E74();
  v18 = v17;
  v19 = *(v2 + 8);
  v19(v11, v1);
  if (v16 == v13 && v18 == v15)
  {

LABEL_8:

    return 0;
  }

  v22 = sub_13A67C(v16, v20, v13);

  if (v22)
  {
    goto LABEL_8;
  }

  v24 = v46;
  v46(v9, enum case for CAUVehicleLayoutKey.door_front_right(_:), v1);
  v25 = sub_169E74();
  v27 = v26;
  v19(v9, v1);
  if (v25 == v13 && v27 == v15)
  {

LABEL_16:

    return 1;
  }

  v30 = sub_13A67C(v25, v28, v13);

  if (v30)
  {
    goto LABEL_16;
  }

  v31 = v45;
  v24(v45, enum case for CAUVehicleLayoutKey.door_rear_left(_:), v1);
  sub_169E74();
  v32 = sub_13A6CC();
  (v19)(v32);
  if (v30 == v13 && v31 == v15)
  {

LABEL_24:

    return 2;
  }

  v35 = sub_13A67C(v30, v33, v13);

  if (v35)
  {
    goto LABEL_24;
  }

  v36 = v44;
  v24(v44, enum case for CAUVehicleLayoutKey.door_rear_right(_:), v1);
  sub_169E74();
  v37 = sub_13A6CC();
  (v19)(v37);
  if (v35 == v13 && v36 == v15)
  {

    return 3;
  }

  v40 = sub_13A67C(v35, v38, v13);

  if (v40)
  {
    return 3;
  }

  if (qword_1E58E8 != -1)
  {
    sub_B4F54();
    swift_once();
  }

  v41 = sub_16A584();
  sub_9DA0(v41, qword_1E65C0);
  v42 = sub_16A9A4();
  sub_386D8(v42, 0x400uLL, 0xD00000000000009ALL, 0x8000000000190920, 0xD000000000000019, 0x8000000000190A00, 47, 0xD000000000000018, 0x8000000000190A20);
  return 4;
}

uint64_t sub_139CC0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_31D84;

  return sub_13920C();
}

unint64_t sub_139D50()
{
  result = qword_1EE780;
  if (!qword_1EE780)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EE780);
  }

  return result;
}

Swift::Int sub_139D94(uint64_t *a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_39678(v2);
    v2 = v3;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  result = sub_139E00(v6);
  *a1 = v2;
  return result;
}

Swift::Int sub_139E00(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_16AE14(v2);
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
        v6 = sub_16A804();
        v6[2] = v5;
      }

      v7[0] = (v6 + 4);
      v7[1] = v5;
      sub_139F50(v7, v8, a1, v4);
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
    return sub_139EF4(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_139EF4(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = (*a4 + a3);
    v6 = result - a3;
    while (2)
    {
      v7 = *(v4 + a3);
      v8 = v6;
      v9 = v5;
      do
      {
        v10 = *(v9 - 1);
        if (v7 >= v10)
        {
          break;
        }

        if (!v4)
        {
          __break(1u);
          return result;
        }

        *v9 = v10;
        *--v9 = v7;
      }

      while (!__CFADD__(v8++, 1));
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

void sub_139F50(char **result, uint64_t a2, uint64_t *a3, uint64_t a4)
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
        v9 = *(*a3 + v8);
        v10 = *(*a3 + v6);
        v11 = v6 + 2;
        v12 = v9;
        while (1)
        {
          v13 = v11;
          if (v11 >= v5)
          {
            break;
          }

          v14 = (v9 < v10) ^ (*(*a3 + v11++) >= v12);
          v12 = *(*a3 + v13);
          if ((v14 & 1) == 0)
          {
            v8 = v13;
            goto LABEL_9;
          }
        }

        v8 = v5;
LABEL_9:
        if (v9 < v10)
        {
          if (v8 < v6)
          {
            goto LABEL_108;
          }

          if (v6 < v8)
          {
            if (v5 >= v13)
            {
              v5 = v13;
            }

            v15 = v5 - 1;
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

              v19 = ++v16 < v15--;
            }

            while (v19);
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
              v24 = v22;
              v25 = v21;
              do
              {
                v26 = *(v25 - 1);
                if (v23 >= v26)
                {
                  break;
                }

                if (!v20)
                {
                  goto LABEL_111;
                }

                *v25 = v26;
                *--v25 = v23;
              }

              while (!__CFADD__(v24++, 1));
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
        sub_108404();
        v7 = v70;
      }

      v28 = v7[2];
      v29 = v28 + 1;
      if (v28 >= v7[3] >> 1)
      {
        sub_108404();
        v7 = v71;
      }

      v7[2] = v29;
      v30 = v7 + 4;
      v31 = &v7[2 * v28 + 4];
      *v31 = v6;
      v31[1] = v8;
      __dst = *result;
      if (!*result)
      {
        goto LABEL_114;
      }

      if (v28)
      {
        while (1)
        {
          v32 = v29 - 1;
          v33 = &v30[2 * v29 - 2];
          v34 = &v7[2 * v29];
          if (v29 >= 4)
          {
            break;
          }

          if (v29 == 3)
          {
            v35 = v7[4];
            v36 = v7[5];
            v45 = __OFSUB__(v36, v35);
            v37 = v36 - v35;
            v38 = v45;
LABEL_56:
            if (v38)
            {
              goto LABEL_96;
            }

            v50 = *v34;
            v49 = v34[1];
            v51 = __OFSUB__(v49, v50);
            v52 = v49 - v50;
            v53 = v51;
            if (v51)
            {
              goto LABEL_99;
            }

            v54 = v33[1];
            v55 = v54 - *v33;
            if (__OFSUB__(v54, *v33))
            {
              goto LABEL_102;
            }

            if (__OFADD__(v52, v55))
            {
              goto LABEL_104;
            }

            if (v52 + v55 >= v37)
            {
              if (v37 < v55)
              {
                v32 = v29 - 2;
              }

              goto LABEL_78;
            }

            goto LABEL_71;
          }

          if (v29 < 2)
          {
            goto LABEL_98;
          }

          v57 = *v34;
          v56 = v34[1];
          v45 = __OFSUB__(v56, v57);
          v52 = v56 - v57;
          v53 = v45;
LABEL_71:
          if (v53)
          {
            goto LABEL_101;
          }

          v59 = *v33;
          v58 = v33[1];
          v45 = __OFSUB__(v58, v59);
          v60 = v58 - v59;
          if (v45)
          {
            goto LABEL_103;
          }

          if (v60 < v52)
          {
            goto LABEL_85;
          }

LABEL_78:
          if (v32 - 1 >= v29)
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

          v64 = &v30[2 * v32 - 2];
          v65 = *v64;
          v66 = &v30[2 * v32];
          v67 = v66[1];
          sub_13A51C((*a3 + *v64), (*a3 + *v66), (*a3 + v67), __dst);
          if (v4)
          {
            goto LABEL_89;
          }

          if (v67 < v65)
          {
            goto LABEL_91;
          }

          v68 = v7;
          v69 = v7[2];
          if (v32 > v69)
          {
            goto LABEL_92;
          }

          *v64 = v65;
          v64[1] = v67;
          if (v32 >= v69)
          {
            goto LABEL_93;
          }

          v29 = v69 - 1;
          memmove(&v30[2 * v32], v66 + 2, 16 * (v69 - 1 - v32));
          v68[2] = v69 - 1;
          v19 = v69 > 2;
          v7 = v68;
          if (!v19)
          {
            goto LABEL_85;
          }
        }

        v39 = &v30[2 * v29];
        v40 = *(v39 - 8);
        v41 = *(v39 - 7);
        v45 = __OFSUB__(v41, v40);
        v42 = v41 - v40;
        if (v45)
        {
          goto LABEL_94;
        }

        v44 = *(v39 - 6);
        v43 = *(v39 - 5);
        v45 = __OFSUB__(v43, v44);
        v37 = v43 - v44;
        v38 = v45;
        if (v45)
        {
          goto LABEL_95;
        }

        v46 = v34[1];
        v47 = v46 - *v34;
        if (__OFSUB__(v46, *v34))
        {
          goto LABEL_97;
        }

        v45 = __OFADD__(v37, v47);
        v48 = v37 + v47;
        if (v45)
        {
          goto LABEL_100;
        }

        if (v48 >= v42)
        {
          v62 = *v33;
          v61 = v33[1];
          v45 = __OFSUB__(v61, v62);
          v63 = v61 - v62;
          if (v45)
          {
            goto LABEL_105;
          }

          if (v37 < v63)
          {
            v32 = v29 - 2;
          }

          goto LABEL_78;
        }

        goto LABEL_56;
      }

LABEL_85:
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

  sub_13A3F0(&v77, *result, a3);
LABEL_89:
}

uint64_t sub_13A3F0(uint64_t *a1, char *a2, void *a3)
{
  v4 = a1;
  v5 = *a1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_14:
    result = sub_39524(v5);
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
    sub_13A51C((*a3 + *v9), (*a3 + *v11), (*a3 + v12), a2);
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

uint64_t sub_13A51C(char *__src, char *a2, char *a3, char *__dst)
{
  v4 = __dst;
  v5 = a3;
  v6 = a2;
  v7 = __src;
  v8 = a2 - __src;
  v9 = a3 - a2;
  if (a2 - __src < a3 - a2)
  {
    sub_109198(__src, a2 - __src, __dst);
    v10 = &v4[v8];
    while (1)
    {
      v11 = v4 >= v10 || v6 >= v5;
      if (v11)
      {
        v6 = v7;
        goto LABEL_42;
      }

      v12 = *v6;
      v13 = *v4;
      if (v12 >= v13)
      {
        v11 = v7 >= v4++;
        v15 = !v11 || v7 >= v4;
        LOBYTE(v12) = v13;
        if (v15)
        {
LABEL_18:
          *v7 = v12;
        }
      }

      else
      {
        v11 = v7 >= v6++;
        if (!v11 || v7 >= v6)
        {
          goto LABEL_18;
        }
      }

      ++v7;
    }
  }

  sub_109198(a2, a3 - a2, __dst);
  v10 = &v4[v9];
LABEL_21:
  v16 = v6 - 1;
  --v5;
  while (v10 > v4 && v6 > v7)
  {
    v18 = *(v10 - 1);
    v19 = *v16;
    if (v18 < v19)
    {
      v21 = v5 + 1 < v6 || v5 >= v6;
      --v6;
      if (v21)
      {
        *v5 = v19;
        v6 = v16;
      }

      goto LABEL_21;
    }

    if ((v5 + 1) < v10 || v5 >= v10)
    {
      *v5 = v18;
    }

    --v5;
    --v10;
  }

LABEL_42:
  if (v6 != v4 || v6 >= v10)
  {
    memmove(v6, v4, v10 - v4);
  }

  return 1;
}

uint64_t sub_13A67C(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_16AE54();
}

void sub_13A6B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22)
{
  v23._countAndFlagsBits = a21;
  v23._object = a22;

  sub_16A744(v23);
}

BOOL sub_13A6E0(uint64_t a1, char a2, uint64_t a3, char a4)
{
  switch(a2)
  {
    case 1:
      if (a4 != 1)
      {
        return 0;
      }

      return a1 == a3;
    case 2:
      if (a4 != 2)
      {
        return 0;
      }

      return a1 == a3;
    case 3:
      if (a4 != 3)
      {
        return 0;
      }

      return a1 == a3;
    case 4:
      switch(a1)
      {
        case 1:
          if (a4 != 4 || a3 != 1)
          {
            return 0;
          }

          break;
        case 2:
          if (a4 != 4 || a3 != 2)
          {
            return 0;
          }

          break;
        case 3:
          if (a4 != 4 || a3 != 3)
          {
            return 0;
          }

          break;
        case 4:
          if (a4 != 4 || a3 != 4)
          {
            return 0;
          }

          break;
        case 5:
          if (a4 != 4 || a3 != 5)
          {
            return 0;
          }

          break;
        case 6:
          if (a4 != 4 || a3 != 6)
          {
            return 0;
          }

          break;
        case 7:
          if (a4 != 4 || a3 != 7)
          {
            return 0;
          }

          break;
        case 8:
          if (a4 != 4 || a3 != 8)
          {
            return 0;
          }

          break;
        case 9:
          if (a4 != 4 || a3 != 9)
          {
            return 0;
          }

          break;
        case 10:
          if (a4 != 4 || a3 != 10)
          {
            return 0;
          }

          break;
        case 11:
          if (a4 != 4 || a3 != 11)
          {
            return 0;
          }

          break;
        case 12:
          if (a4 != 4 || a3 != 12)
          {
            return 0;
          }

          break;
        default:
          if (a4 != 4 || a3 != 0)
          {
            return 0;
          }

          break;
      }

      return 1;
    default:
      return !a4 && a1 == a3;
  }
}

uint64_t getEnumTagSinglePayload for NLSettingsChange(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFC && *(a1 + 9))
    {
      v2 = *a1 + 251;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 <= 4)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for NLSettingsChange(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 8) = 0;
    *result = a2 - 252;
    if (a3 >= 0xFC)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t sub_13A95C(uint64_t a1)
{
  if (*(a1 + 8) <= 3u)
  {
    return *(a1 + 8);
  }

  else
  {
    return (*a1 + 4);
  }
}

uint64_t sub_13A974(uint64_t result, unsigned int a2)
{
  if (a2 >= 4)
  {
    *result = a2 - 4;
    LOBYTE(a2) = 4;
  }

  *(result + 8) = a2;
  return result;
}

id sub_13A99C()
{
  result = [objc_allocWithZone(type metadata accessor for CarPlayService(0)) init];
  qword_1F0E10 = result;
  return result;
}

char *sub_13A9D0()
{
  v1 = OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin14CarPlayService_continuation;
  v2 = sub_5758(&qword_1EE7E8, &qword_17A168);
  sub_5370(&v0[v1], 1, 1, v2);
  v0[OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin14CarPlayService_desiredAccessory] = 8;
  v3 = [objc_allocWithZone(CAFCarManager) init];
  *&v0[OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin14CarPlayService_carManager] = v3;
  v10.receiver = v0;
  v10.super_class = type metadata accessor for CarPlayService(0);
  v4 = objc_msgSendSuper2(&v10, "init");
  v5 = *&v4[OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin14CarPlayService_carManager];
  v6 = v4;
  [v5 registerObserver:v6];
  if (qword_1E58E8 != -1)
  {
    sub_9ED4(&qword_1E58E8);
  }

  v7 = sub_16A584();
  sub_9DA0(v7, qword_1E65C0);
  v8 = sub_16A9A4();
  sub_386D8(v8, 0x400uLL, 0xD000000000000088, 0x8000000000190B60, 0x292874696E69, 0xE600000000000000, 28, 0xD00000000000001ALL, 0x8000000000190F70);

  return v6;
}

uint64_t sub_13AB58(uint64_t a1, char a2)
{
  *(v3 + 168) = a2;
  *(v3 + 72) = a1;
  *(v3 + 80) = v2;
  v4 = sub_5758(&qword_1EE7E8, &qword_17A168);
  *(v3 + 88) = v4;
  *(v3 + 96) = *(v4 - 8);
  *(v3 + 104) = swift_task_alloc();
  sub_5758(&qword_1EE980, &qword_17A198);
  *(v3 + 112) = swift_task_alloc();
  *(v3 + 120) = swift_task_alloc();
  *(v3 + 128) = swift_task_alloc();

  return _swift_task_switch(sub_13AC78);
}

uint64_t sub_13AC78()
{
  v1 = *(v0 + 128);
  v3 = *(v0 + 80);
  v2 = *(v0 + 88);
  v4 = OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin14CarPlayService_continuation;
  swift_beginAccess();
  sub_13CA78(v3 + v4, v1);
  v5 = sub_9E2C(v1, 1, v2);
  sub_13CAE8(v1);
  if (v5 == 1)
  {
    sub_9FB8();
  }

  else
  {
    v5 = 0x8000000000190F90;
    if (qword_1E58E8 != -1)
    {
      sub_9ED4(&qword_1E58E8);
    }

    v6 = *(v0 + 120);
    v7 = *(v0 + 88);
    v8 = sub_16A584();
    sub_9DA0(v8, qword_1E65C0);
    v9 = sub_16A9A4();
    sub_386D8(v9, 0x400uLL, 0xD000000000000088, 0x8000000000190B60, 0xD000000000000021, 0x8000000000190F90, 33, 0xD00000000000005BLL, 0x8000000000190FC0);
    sub_13CA78(v3 + v4, v6);
    v10 = sub_9E2C(v6, 1, v7);
    v11 = *(v0 + 120);
    if (v10)
    {
      sub_13CAE8(*(v0 + 120));
    }

    else
    {
      v13 = *(v0 + 96);
      v12 = *(v0 + 104);
      v14 = *(v0 + 88);
      (*(v13 + 16))(v12, *(v0 + 120), v14);
      sub_13CAE8(v11);
      type metadata accessor for CarCommandsError(0);
      sub_13CE0C(&qword_1E92F0, type metadata accessor for CarCommandsError, &unk_17A85C);
      v15 = swift_allocError();
      *v16 = 0x79616C50726143;
      v16[1] = 0xE700000000000000;
      swift_storeEnumTagMultiPayload();
      *(v0 + 64) = v15;
      sub_16A854();
      (*(v13 + 8))(v12, v14);
    }

    v17 = *(v0 + 112);
    v18 = *(v0 + 80);
    sub_5370(v17, 1, 1, *(v0 + 88));
    swift_beginAccess();
    sub_13CD08(v17, v3 + v4);
    swift_endAccess();
    *(v18 + OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin14CarPlayService_desiredAccessory) = 8;
  }

  v19 = *(v0 + 168);
  v20 = *(v0 + 72);
  v21 = swift_allocObject();
  *(v0 + 136) = v21;
  swift_unknownObjectWeakInit();
  v22 = swift_task_alloc();
  *(v0 + 144) = v22;
  *(v22 + 16) = v21;
  *(v22 + 24) = v19;
  v23 = sub_16484(0, &unk_1EE970, CAFCar_ptr);
  *(v20 + 24) = v23;
  *(v20 + 32) = &off_1D4DC8;
  v24 = swift_task_alloc();
  *(v0 + 152) = v24;
  *v24 = v0;
  v24[1] = sub_13B02C;
  v25 = *(v0 + 72);

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v25, 0, 0, 0xD000000000000021, v5, sub_13CDB0, v22, v23);
}

uint64_t sub_13B02C()
{
  v2 = *v1;
  *(v2 + 160) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_13B1B4);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_13B1B4()
{
  v1 = *(v0 + 72);

  sub_13CDBC(v1);

  v2 = *(v0 + 8);

  return v2();
}

void sub_13B264(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_5758(&qword_1EE980, &qword_17A198);
  __chkstk_darwin(v5 - 8);
  v7 = &v14[-v6];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    v10 = sub_5758(&qword_1EE7E8, &qword_17A168);
    (*(*(v10 - 8) + 16))(v7, a1, v10);
    sub_5370(v7, 0, 1, v10);
    v11 = OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin14CarPlayService_continuation;
    swift_beginAccess();
    sub_13CD08(v7, v9 + v11);
    swift_endAccess();
  }

  swift_beginAccess();
  v12 = swift_unknownObjectWeakLoadStrong();
  if (v12)
  {
    v13 = v12;
    sub_13B3D8(a3);
  }
}

void sub_13B3D8(uint64_t a1)
{
  v2 = v1;
  v3 = a1;
  v4 = sub_5758(&qword_1EE7E8, &qword_17A168);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v96 - v6;
  v8 = sub_5758(&qword_1EE980, &qword_17A198);
  v9 = __chkstk_darwin(v8 - 8);
  v11 = &v96 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v9);
  v104 = &v96 - v13;
  __chkstk_darwin(v12);
  v15 = &v96 - v14;
  v16 = OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin14CarPlayService_desiredAccessory;
  *(v1 + OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin14CarPlayService_desiredAccessory) = v3;
  v17 = OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin14CarPlayService_continuation;
  swift_beginAccess();
  sub_13CA78(v1 + v17, v15);
  v18 = sub_9E2C(v15, 1, v4);
  sub_13CAE8(v15);
  if (v18 == 1)
  {
    return;
  }

  v97 = v7;
  v98 = v5;
  v99 = v16;
  v100 = v11;
  if (qword_1E58E8 != -1)
  {
    sub_9ED4(&qword_1E58E8);
  }

  v19 = sub_16A584();
  v20 = sub_9DA0(v19, qword_1E65C0);
  sub_16A9A4();
  sub_13CED0();
  sub_13CE54();
  sub_386D8(v21, v22, v23, v24, v25, v26, 52, v27, v96);
  v28 = [*(v2 + OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin14CarPlayService_carManager) currentCar];
  if (!v28)
  {
    sub_9FB8();
    sub_16A9A4();
    sub_13CED0();
    sub_13CE54();
    sub_386D8(v46, v47, v48, v49, v50, v51, 55, v52, v98);
    return;
  }

  v29 = v28;
  v101 = "eived all values: ";
  v102 = " updated accessories.";
  v103 = v20;
  [v28 registerObserver:v2];
  v30 = [v29 accessories];
  sub_168414();
  sub_16484(0, &qword_1EE988, CAFAccessory_ptr);
  sub_13CE0C(&unk_1EE990, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  v31 = sub_16A5B4();

  v32 = *(v31 + 16);

  if (!v32)
  {
    sub_9FB8();
    sub_16A9A4();
    v96 = v31;
    sub_13CE54();
    v60 = 62;
    goto LABEL_15;
  }

  if (![v29 isConfigured])
  {
    sub_9FB8();
    sub_16A9A4();
    v96 = v31;
    sub_13CE64();
    sub_13CE54();
    v60 = 67;
    goto LABEL_15;
  }

  if (v3 > 8u || ((1 << v3) & 0x1D1) == 0)
  {
    v81 = [v29 positionManager];
    if (v81)
    {
      v82 = v81;
      [v81 registerObserver:v2];
      if ([v82 state] != &dword_0 + 3)
      {
        [v82 state];
        v83 = NSStringFromCharacteristicState();
        v84 = sub_16A664();
        v86 = v85;

        if (v84 == 0x746E6572727543 && v86 == 0xE700000000000000)
        {

          goto LABEL_9;
        }

        v88 = sub_16AE54();

        if ((v88 & 1) == 0)
        {
          sub_9FB8();
          sub_16A9A4();
          v96 = v88;
          sub_13CE64();
          sub_13CE54();
          sub_386D8(v89, v90, v91, v92, v93, v94, 80, v95, v96);

          return;
        }
      }

      goto LABEL_9;
    }

    sub_9FB8();
    sub_16A9A4();
    v96 = v31;
    sub_13CE64();
    sub_13CE54();
    v60 = 73;
LABEL_15:
    sub_386D8(v53, v54, v55, v56, v57, v58, v60, v59, v96);

    return;
  }

LABEL_9:
  sub_13CB50(v2, v3);
  if (sub_6EC1C(v3))
  {
    v105 = 0;
    v106 = 0xE000000000000000;
    sub_16ACF4(34);

    v105 = 0xD00000000000001FLL;
    v106 = 0x8000000000190E30;
    v33 = [v29 description];
    v34 = sub_16A664();
    v36 = v35;

    v108._countAndFlagsBits = v34;
    v108._object = v36;
    sub_16A744(v108);

    v109._countAndFlagsBits = 46;
    v109._object = 0xE100000000000000;
    sub_16A744(v109);
    v37 = v105;
    v38 = v106;
    sub_16A9A4();
    v96 = v38;
    sub_13CE64();
    sub_13CE54();
    sub_386D8(v39, v40, v41, v42, v43, v44, 94, v37, v96);

    v45 = v104;
    sub_13CA78(v2 + v17, v104);
    if (sub_9E2C(v45, 1, v4))
    {

      sub_13CAE8(v45);
    }

    else
    {
      v78 = v97;
      v77 = v98;
      (*(v98 + 16))(v97, v45, v4);
      sub_13CAE8(v45);
      v105 = v29;
      sub_16A864();
      (*(v77 + 8))(v78, v4);
    }

    v80 = v99;
    v79 = v100;
    sub_5370(v100, 1, 1, v4);
    swift_beginAccess();
    sub_13CD08(v79, v2 + v17);
    swift_endAccess();
    *(v2 + v80) = 8;
  }

  else
  {
    v105 = 0;
    v106 = 0xE000000000000000;
    sub_16ACF4(49);

    v105 = 0xD000000000000016;
    v106 = 0x8000000000190DC0;
    v110._countAndFlagsBits = sub_BE304(v3);
    sub_16A744(v110);

    v111._countAndFlagsBits = 0xD000000000000019;
    v111._object = 0x8000000000190DE0;
    sub_16A744(v111);
    v61 = v105;
    v62 = v106;
    sub_16A9A4();
    v96 = v62;
    sub_13CE54();
    sub_386D8(v63, v64, v65, v66, v67, v68, 89, v61, v96);

    v105 = 0;
    v106 = 0xE000000000000000;
    sub_16ACF4(39);
    v112._countAndFlagsBits = 0xD000000000000025;
    v112._object = 0x8000000000190E00;
    sub_16A744(v112);
    v107 = v3;
    sub_16AD84();
    v69 = v105;
    v70 = v106;
    sub_16A9A4();
    v96 = v70;
    sub_13CE54();
    sub_386D8(v71, v72, v73, v74, v75, v76, 90, v69, v96);
  }
}

void sub_13BC04(void *a1)
{
  v2 = v1;
  sub_13CE90();
  sub_16ACF4(28);

  sub_13CE78();
  v4 = [a1 description];
  sub_16A664();

  sub_13CEB4();

  sub_13CEA4();
  v11._countAndFlagsBits = 0xD000000000000015;
  sub_16A744(v11);
  if (qword_1E58E8 != -1)
  {
    sub_9ED4(&qword_1E58E8);
  }

  v5 = sub_16A584();
  sub_9DA0(v5, qword_1E65C0);
  v6 = sub_16A9A4();
  sub_386D8(v6, 0x400uLL, 136, 0x8000000000190B60, 29, 0x8000000000190CD0, 102, v8, v9);

  v7 = *(v2 + OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin14CarPlayService_desiredAccessory);

  sub_13B3D8(v7);
}

void sub_13BD58(void *a1)
{
  v2 = v1;
  sub_13CE90();
  sub_16ACF4(31);

  sub_13CE78();
  v4 = [a1 description];
  sub_16A664();

  sub_13CEB4();

  sub_13CEA4();
  v11._countAndFlagsBits = 0xD000000000000018;
  sub_16A744(v11);
  if (qword_1E58E8 != -1)
  {
    sub_9ED4(&qword_1E58E8);
  }

  v5 = sub_16A584();
  sub_9DA0(v5, qword_1E65C0);
  v6 = sub_16A9A4();
  sub_386D8(v6, 0x400uLL, 136, 0x8000000000190B60, 25, 0x8000000000190C90, 107, v8, v9);

  v7 = *(v2 + OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin14CarPlayService_desiredAccessory);

  sub_13B3D8(v7);
}

void sub_13BEAC(void *a1)
{
  v2 = v1;
  sub_13CE90();
  sub_16ACF4(25);

  sub_13CE78();
  v4 = [a1 description];
  sub_16A664();

  sub_13CEB4();

  sub_13CEA4();
  v11._countAndFlagsBits = 0xD000000000000012;
  sub_16A744(v11);
  if (qword_1E58E8 != -1)
  {
    sub_9ED4(&qword_1E58E8);
  }

  v5 = sub_16A584();
  sub_9DA0(v5, qword_1E65C0);
  v6 = sub_16A9A4();
  sub_386D8(v6, 0x400uLL, 136, 0x8000000000190B60, 47, 0x8000000000190C40, 112, v8, v9);

  v7 = *(v2 + OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin14CarPlayService_desiredAccessory);

  sub_13B3D8(v7);
}

id sub_13C000()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CarPlayService(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for CarPlayService(uint64_t a1)
{
  result = qword_1EE7D0;
  if (!qword_1EE7D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_13C0D8(uint64_t a1)
{
  sub_13C180(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_13C180(uint64_t a1)
{
  if (!qword_1EE7E0)
  {
    sub_37130(&qword_1EE7E8, &qword_17A168);
    v1 = sub_16AB24();
    if (!v2)
    {
      atomic_store(v1, &qword_1EE7E0);
    }
  }
}

void sub_13C2BC(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = a2;
    sub_13BD58(v2);
  }
}

void sub_13C3D0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = 0x8000000000190B60;
  v6 = 0x8000000000190C20;
  if (qword_1E58E8 != -1)
  {
LABEL_20:
    sub_9ED4(&qword_1E58E8);
  }

  v7 = 0xD000000000000018;
  v8 = sub_16A584();
  sub_9DA0(v8, qword_1E65C0);
  v9 = sub_16A9A4();
  v25 = 0xD000000000000088;
  v26 = v5;
  v24._countAndFlagsBits = 47;
  v24._object = 0xE100000000000000;
  sub_D030();
  v10 = sub_16AB34();
  v11 = sub_15AE4(v10);
  v13 = v12;

  if (v13)
  {
    v25 = v11;
    v26 = v13;
    v27._countAndFlagsBits = 32;
    v27._object = 0xE100000000000000;
    sub_16A744(v27);
    v28._countAndFlagsBits = 0xD000000000000018;
    v28._object = v6;
    sub_16A744(v28);
    v7 = v25;
    v6 = v26;
  }

  v25 = v7;
  v26 = v6;
  v24._countAndFlagsBits = 58;
  v24._object = 0xE100000000000000;
  v29._countAndFlagsBits = sub_16AE24();
  sub_16A744(v29);

  sub_16A744(v24);

  v14._countAndFlagsBits = sub_378D0(0x400uLL);
  if (v14._object)
  {
    v24._countAndFlagsBits = 32;
    v24._object = 0xE100000000000000;
    sub_16A744(v14);

    sub_16A744(v24);
  }

  v16 = v25;
  v15 = v26;
  v17 = sub_16A574();
  if (os_log_type_enabled(v17, v9))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v24._countAndFlagsBits = v19;
    *v18 = 136315138;
    v20 = sub_15BC8(v16, v15, &v24._countAndFlagsBits);

    *(v18 + 4) = v20;
    _os_log_impl(&dword_0, v17, v9, "%s", v18, 0xCu);
    sub_D13C(v19);
  }

  else
  {
  }

  v5 = sub_11B48C();
  v21 = 0;
  v6 = (a2 & 0xC000000000000001);
  while (v5 != v21)
  {
    if (v6)
    {
      v22 = sub_16AD04();
    }

    else
    {
      if (v21 >= *(&dword_10 + (a2 & 0xFFFFFFFFFFFFFF8)))
      {
        goto LABEL_19;
      }

      v22 = *(a2 + 8 * v21 + 32);
    }

    v23 = v22;
    if (__OFADD__(v21, 1))
    {
      __break(1u);
LABEL_19:
      __break(1u);
      goto LABEL_20;
    }

    [v22 unregisterObserver:v3];

    ++v21;
  }
}

id sub_13C7E0(void *a1, char a2)
{
  v3 = v2;
  sub_16ACF4(49);

  v6 = a1;
  v7 = [v6 description];
  v8 = sub_16A664();
  v10 = v9;

  v17._countAndFlagsBits = v8;
  v17._object = v10;
  sub_16A744(v17);

  sub_13CEA4();
  v18._countAndFlagsBits = 0xD000000000000022;
  sub_16A744(v18);
  if (a2)
  {
    v11._countAndFlagsBits = 1702195828;
  }

  else
  {
    v11._countAndFlagsBits = 0x65736C6166;
  }

  if (a2)
  {
    v12 = 0xE400000000000000;
  }

  else
  {
    v12 = 0xE500000000000000;
  }

  v11._object = v12;
  sub_16A744(v11);

  if (qword_1E58E8 != -1)
  {
    sub_9ED4(&qword_1E58E8);
  }

  v13 = sub_16A584();
  sub_9DA0(v13, qword_1E65C0);
  v14 = sub_16A9A4();
  sub_386D8(v14, 0x400000uLL, 0xD000000000000088, 0x8000000000190B60, 0xD000000000000028, 0x8000000000190BF0, 165, 0x726F737365636341, 0xEB00000000203A79);

  result = [v6 car];
  if (result)
  {
    if (a2)
    {
      [v3 carDidUpdateAccessories:?];
    }

    return _objc_release_x2();
  }

  return result;
}

uint64_t sub_13CA78(uint64_t a1, uint64_t a2)
{
  v4 = sub_5758(&qword_1EE980, &qword_17A198);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_13CAE8(uint64_t a1)
{
  v2 = sub_5758(&qword_1EE980, &qword_17A198);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_13CB50(uint64_t a1, char a2)
{
  v3 = sub_6EDA0(a2);
  if (v3)
  {
    v6 = v3;
    [v3 registerObserver:a1];
  }

  else
  {
    sub_16ACF4(51);
    v8._object = 0x8000000000190F40;
    v8._countAndFlagsBits = 0xD000000000000024;
    sub_16A744(v8);
    sub_16AD84();
    v9._countAndFlagsBits = 0x6F20646E756F6620;
    v9._object = 0xED0000726143206ELL;
    sub_16A744(v9);
    if (qword_1E58E8 != -1)
    {
      swift_once();
    }

    v4 = sub_16A584();
    sub_9DA0(v4, qword_1E65C0);
    v5 = sub_16A9A4();
    sub_386D8(v5, 0x400000uLL, 0xD000000000000084, 0x80000000001849F0, 0xD000000000000026, 0x8000000000190F10, 95, 0, 0xE000000000000000);
  }
}

uint64_t sub_13CD08(uint64_t a1, uint64_t a2)
{
  v4 = sub_5758(&qword_1EE980, &qword_17A198);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_13CD78()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

void *sub_13CDBC(void *result)
{
  if ((*(*(result[3] - 8) + 80) & 0x20000) != 0)
  {
  }

  return result;
}

uint64_t sub_13CE0C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_13CEB4()
{
  v3._countAndFlagsBits = v0;
  v3._object = v1;

  sub_16A744(v3);
}

void sub_13CEF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(id, uint64_t))
{
  *(v5 + 48) = 1;
  v7 = *(v5 + 40);
  v9 = *(v5 + 32);
  v8 = v9;
  if (v7)
  {
    swift_errorRetain();
    a5(v9, v7);
  }

  else
  {
    a5(v9, 0);
  }
}

uint64_t sub_13CF98(uint64_t a1, uint64_t a2)
{
  v3 = v2[7];
  if (!v3)
  {
    v2[8] = a1;
    v2[9] = a2;
  }

  swift_errorRetain();
  return v3;
}

uint64_t sub_13CFE8()
{
  swift_unknownObjectRelease();

  return v0;
}

uint64_t sub_13D038()
{
  sub_13CFE8();

  return _swift_deallocClassInstance(v0, 96, 7);
}

uint64_t sub_13D110(char a1, uint64_t a2)
{
  *(v2 + 128) = a2;
  *(v2 + 160) = a1;
  return sub_D2B0();
}

uint64_t sub_13D128()
{
  sub_D2DC();
  sub_2F868(*(v0 + 128), v0 + 56, &qword_1E6030, &unk_173620);
  if (*(v0 + 80))
  {
    v1 = *(v0 + 160);
    sub_D250((v0 + 56), v0 + 16);
    if (v1 == 1)
    {
      v2 = swift_task_alloc();
      *(v0 + 136) = v2;
      *v2 = v0;
      v2[1] = sub_13D294;

      return sub_13D7F8(0xD000000000000010, 0x8000000000191150, v0 + 16);
    }

    sub_D13C((v0 + 16));
  }

  else
  {
    sub_D188(v0 + 56, &qword_1E6030, &unk_173620);
  }

  v4 = swift_task_alloc();
  *(v0 + 152) = v4;
  *v4 = v0;
  v4[1] = sub_13DE84;

  return static LabelTemplates.yes()();
}

uint64_t sub_13D294()
{
  sub_D2DC();
  sub_13DE88(v2, v3);
  v4 = *v1;
  sub_D254();
  *v5 = v4;
  *(v6 + 144) = v0;

  if (v0)
  {
    v7 = sub_13DE80;
  }

  else
  {
    v7 = sub_13DE7C;
  }

  return _swift_task_switch(v7);
}

uint64_t sub_13D398(char a1, uint64_t a2)
{
  *(v2 + 128) = a2;
  *(v2 + 160) = a1;
  return sub_D2B0();
}

uint64_t sub_13D3B0()
{
  sub_D2DC();
  sub_2F868(*(v0 + 128), v0 + 56, &qword_1E6030, &unk_173620);
  if (*(v0 + 80))
  {
    v1 = *(v0 + 160);
    sub_D250((v0 + 56), v0 + 16);
    if (v1 == 1)
    {
      v2 = swift_task_alloc();
      *(v0 + 136) = v2;
      *v2 = v0;
      v2[1] = sub_13D528;

      return sub_13D7F8(0x614C6E6F6D6D6F43, 0xEF6F4E23736C6562, v0 + 16);
    }

    sub_D13C((v0 + 16));
  }

  else
  {
    sub_D188(v0 + 56, &qword_1E6030, &unk_173620);
  }

  v4 = swift_task_alloc();
  *(v0 + 152) = v4;
  *v4 = v0;
  v4[1] = sub_13D690;

  return static LabelTemplates.no()();
}

uint64_t sub_13D528()
{
  sub_D2DC();
  sub_13DE88(v2, v3);
  v4 = *v1;
  sub_D254();
  *v5 = v4;
  *(v6 + 144) = v0;

  if (v0)
  {
    v7 = sub_13D798;
  }

  else
  {
    v7 = sub_13D62C;
  }

  return _swift_task_switch(v7);
}

uint64_t sub_13D62C()
{
  sub_D2DC();
  sub_D13C(v0 + 2);
  v1 = v0[13];
  v2 = v0[14];
  v3 = v0[1];

  return v3(v1, v2);
}

uint64_t sub_13D690(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  sub_D254();
  *v7 = v6;

  v10 = *(v6 + 8);
  if (!v2)
  {
    v8 = a1;
    v9 = a2;
  }

  return v10(v8, v9);
}

uint64_t sub_13D798()
{
  sub_D2DC();
  sub_D13C((v0 + 16));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_13D7F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[13] = a2;
  v3[14] = a3;
  v3[12] = a1;
  v4 = sub_168CF4();
  v3[15] = v4;
  v3[16] = *(v4 - 8);
  v3[17] = swift_task_alloc();
  sub_5758(&qword_1EEB78, &qword_17A258);
  v3[18] = swift_task_alloc();
  v5 = sub_168E64();
  v3[19] = v5;
  v3[20] = *(v5 - 8);
  v3[21] = swift_task_alloc();
  v6 = sub_16A164();
  v3[22] = v6;
  v3[23] = *(v6 - 8);
  v3[24] = swift_task_alloc();
  v3[25] = sub_5758(&qword_1EEB80, &qword_17A260);
  v3[26] = swift_task_alloc();
  v3[27] = swift_task_alloc();

  return _swift_task_switch(sub_13D9F4);
}

uint64_t sub_13D9F4()
{
  v1 = *(v0 + 208);
  v2 = *(v0 + 216);
  v3 = *(v0 + 192);
  v4 = *(v0 + 184);
  v32 = *(v0 + 176);
  v5 = *(v0 + 112);
  sub_16A184();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v7 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  sub_16A074();
  sub_10824(v5, v0 + 16);
  v8 = sub_16A064();
  *(v0 + 56) = 0u;
  *(v0 + 72) = 0u;
  *(v0 + 88) = 0;
  sub_16A5C4();
  sub_16A154();
  v33 = v8;
  v34 = v7;
  sub_16A174();

  (*(v4 + 8))(v3, v32);
  sub_D188(v0 + 56, &qword_1EEB88, &qword_17A268);
  sub_2F868(v2, v1, &qword_1EEB80, &qword_17A260);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = &qword_1EEB80;
    v10 = &qword_17A260;
    v11 = *(v0 + 208);
LABEL_5:
    sub_D188(v11, v9, v10);
    v16 = *(v0 + 216);
    type metadata accessor for CarCommandsError(0);
    sub_11D28();
    swift_allocError();
    *v17 = 0xD000000000000025;
    v17[1] = 0x8000000000191120;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    sub_D188(v16, &qword_1EEB80, &qword_17A260);

    v18 = *(v0 + 8);

    return v18();
  }

  v12 = *(v0 + 144);
  (*(*(v0 + 160) + 32))(*(v0 + 168), *(v0 + 208), *(v0 + 152));
  v13 = sub_168E54();
  sub_8A1A8(v13, v12);

  v14 = sub_168EA4();
  if (sub_9E2C(v12, 1, v14) == 1)
  {
    v15 = *(v0 + 144);
    (*(*(v0 + 160) + 8))(*(v0 + 168), *(v0 + 152));
    v9 = &qword_1EEB78;
    v10 = &qword_17A258;
    v11 = v15;
    goto LABEL_5;
  }

  v20 = *(v0 + 216);
  v22 = *(v0 + 160);
  v21 = *(v0 + 168);
  v23 = *(v0 + 144);
  v31 = *(v0 + 152);
  v25 = *(v0 + 128);
  v24 = *(v0 + 136);
  v26 = *(v0 + 120);
  sub_168E94();
  (*(*(v14 - 8) + 8))(v23, v14);
  v27 = sub_168CE4();
  v29 = v28;

  (*(v25 + 8))(v24, v26);
  (*(v22 + 8))(v21, v31);
  sub_D188(v20, &qword_1EEB80, &qword_17A260);

  v30 = *(v0 + 8);

  return v30(v27, v29);
}

uint64_t sub_13DE88(uint64_t result, uint64_t a2)
{
  v2[12] = v4;
  v2[13] = result;
  v2[14] = a2;
  v2[15] = v3;
  return result;
}

_BYTE *storeEnumTagSinglePayload for WalletActivableAccessoryType(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x13DF68);
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

unint64_t sub_13DFA4()
{
  result = qword_1EEB90;
  if (!qword_1EEB90)
  {
    sub_37130(&qword_1EEB98, qword_17A2A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EEB90);
  }

  return result;
}

unint64_t sub_13E008(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_1D3AA0;
  v6._object = a2;
  v4 = sub_16ADE4(v3, v6);

  if (v4 >= 4)
  {
    return 4;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_13E054(char a1)
{
  result = 0x6D72616C41726163;
  switch(a1)
  {
    case 1:
      result = 0x616D696C43726163;
      break;
    case 2:
      result = 0x6B636F4C726163;
      break;
    case 3:
      result = 0x6B6E757254726163;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_13E10C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_13E008(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_13E13C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_13E054(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_13E17C()
{
  result = qword_1EEBA0;
  if (!qword_1EEBA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EEBA0);
  }

  return result;
}

uint64_t sub_13E1D0(uint64_t a1, char a2)
{
  v3 = v2;
  v6 = sub_5758(&qword_1E7DE0, &unk_16FB30);
  __chkstk_darwin(v6 - 8);
  v8 = &v46 - v7;
  v9 = sub_169E84();
  v48 = *(v9 - 8);
  __chkstk_darwin(v9);
  v11 = &v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ([v3 hasOn])
  {
    [v3 setOn:a2 & 1];
  }

  v12 = [v3 heatingCoolingLevelRange];
  v13 = [v12 maximumValue];

  v14 = [v3 heatingCoolingLevelRange];
  v49 = [v14 minimumValue];

  if (!a1)
  {
    v15 = 0;
    goto LABEL_22;
  }

  v15 = v13;
  if (a1 != 1)
  {
    if (a1 != 2)
    {
      v51 = a1;
      result = sub_16AE84();
      __break(1u);
      return result;
    }

    v16 = [v3 vehicleLayoutKey];
    sub_16A664();

    sub_169E64();
    if (sub_9E2C(v8, 1, v9) == 1)
    {
      sub_63AF4(v8);
LABEL_8:
      v15 = v49;
      goto LABEL_22;
    }

    v17 = v48;
    (*(v48 + 32))(v11, v8, v9);
    v18 = [v3 car];
    if (v18)
    {
      v19 = v18;
      v20 = [v18 positionManager];

      if (v20)
      {
        __chkstk_darwin(v21);
        v45 = v11;
        sub_15A240(sub_13E928, (&v46 - 4));
        v23 = v22;

        if (sub_11B48C())
        {
          sub_1487EC();
          if ((v23 & 0xC000000000000001) != 0)
          {
            v24 = sub_16AD04();
          }

          else
          {
            v24 = *(v23 + 32);
          }

          v25 = v24;

          v26 = [v25 fanLevelRange];
          v27 = v26;
          v28 = &selRef_maximumValue;
          if ((a2 & 1) == 0)
          {
            v28 = &selRef_minimumValue;
          }

          v29 = [v26 *v28];

          [v25 setFanLevel:v29];
          v46 = "CommonLabels#Yes";
          v47 = "ngCooling+CarClimateSeat.swift";
          v51 = 0;
          v52 = 0xE000000000000000;
          sub_16ACF4(48);
          v53._countAndFlagsBits = 0xD00000000000001BLL;
          v53._object = 0x8000000000191250;
          sub_16A744(v53);
          LOBYTE(v50) = v29;
          v54._countAndFlagsBits = sub_16AE24();
          sub_16A744(v54);

          sub_13E94C(" for layout key: ");
          sub_16AD84();
          v30 = v51;
          v31 = v52;
          if (qword_1E58E8 != -1)
          {
            sub_9ED4(&qword_1E58E8);
          }

          v32 = sub_16A584();
          sub_9DA0(v32, qword_1E65C0);
          v33 = sub_16A9A4();
          sub_386D8(v33, 0x400uLL, 0xD00000000000009ELL, v46 | 0x8000000000000000, 0xD00000000000001ELL, (v47 | 0x8000000000000000), 38, v30, v31);

          (*(v48 + 8))(v11, v9);
          goto LABEL_8;
        }

        v17 = v48;
      }
    }

    (*(v17 + 8))(v11, v9);
    v15 = v49;
  }

LABEL_22:
  if (a2)
  {
    v34 = v15;
  }

  else
  {
    v34 = 0;
  }

  [v3 setHeatingCoolingLevel:v34];
  v51 = 0;
  v52 = 0xE000000000000000;
  sub_16ACF4(57);
  v55._countAndFlagsBits = 0x20676E6974746553;
  v55._object = 0xE800000000000000;
  sub_16A744(v55);
  v35 = [v3 vehicleLayoutKey];
  v36 = sub_16A664();
  v38 = v37;

  v56._countAndFlagsBits = v36;
  v56._object = v38;
  sub_16A744(v56);

  v57._countAndFlagsBits = 0x2074616573207327;
  v57._object = 0xE800000000000000;
  sub_16A744(v57);
  if (a1 == 2)
  {
    v39._countAndFlagsBits = 0x676E6974616568;
  }

  else
  {
    v39._countAndFlagsBits = 0x676E696C6F6F63;
  }

  v39._object = 0xE700000000000000;
  sub_16A744(v39);

  v58._countAndFlagsBits = 0x6576656C206F7420;
  v58._object = 0xEB00000000203A6CLL;
  sub_16A744(v58);
  v50 = v15;
  v59._countAndFlagsBits = sub_13E930();
  sub_16A744(v59);

  sub_13E94C(" in level range: ");
  v50 = v49;
  v60._countAndFlagsBits = sub_13E930();
  sub_16A744(v60);

  v61._countAndFlagsBits = 2108704;
  v61._object = 0xE300000000000000;
  sub_16A744(v61);
  v50 = v13;
  v62._countAndFlagsBits = sub_13E930();
  sub_16A744(v62);

  v41 = v51;
  v40 = v52;
  if (qword_1E58E8 != -1)
  {
    sub_9ED4(&qword_1E58E8);
  }

  v42 = sub_16A584();
  sub_9DA0(v42, qword_1E65C0);
  v43 = sub_16A9A4();
  sub_386D8(v43, 0x400uLL, 0xD00000000000009ELL, 0x8000000000191170, 0xD00000000000001ELL, 0x8000000000191210, 51, v41, v40);
}

uint64_t sub_13E930()
{

  return sub_16AE24();
}

void sub_13E94C(uint64_t a1@<X8>)
{
  v2._countAndFlagsBits = 0xD000000000000011;

  v2._object = ((a1 - 32) | 0x8000000000000000);
  sub_16A744(v2);
}

unint64_t sub_13E96C(float a1, float a2, float a3, float a4)
{
  v8 = sub_5758(&qword_1EEBA8, &qword_17A3E8);
  __chkstk_darwin(v8 - 8);
  v10 = &v90 - v9;
  v11 = sub_169A04();
  sub_9F48();
  v92 = v12;
  v14 = __chkstk_darwin(v13);
  v91 = &v90 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v17 = &v90 - v16;
  v18 = sub_5758(&qword_1EEBB0, &unk_17A3F0);
  __chkstk_darwin(v18 - 8);
  v20 = &v90 - v19;
  v21 = sub_1699D4();
  sub_9F48();
  v23 = v22;
  v25 = __chkstk_darwin(v24);
  v27 = &v90 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v29 = &v90 - v28;
  sub_1699E4();
  sub_13F4A0();
  if (v93)
  {
    sub_1699B4();
    if (sub_9E2C(v20, 1, v21) == 1)
    {

      sub_D188(v20, &qword_1EEBB0, &unk_17A3F0);
      goto LABEL_4;
    }

    (*(v23 + 32))(v29, v20, v21);
    (*(v23 + 16))(v27, v29, v21);
    v36 = (*(v23 + 88))(v27, v21);
    if (v36 == enum case for UsoEntity_common_Number.DefinedValues.common_Number_Billion(_:))
    {
      v37 = sub_13F490();
      v38(v37);

      LOBYTE(v33) = 0;
      LODWORD(v35) = 1315859240;
      goto LABEL_56;
    }

    v39 = v36;
    if (v36 == enum case for UsoEntity_common_Number.DefinedValues.common_Number_Twelve(_:))
    {
      v40 = sub_13F490();
      v41(v40);

      LOBYTE(v33) = 0;
      LODWORD(v35) = 1094713344;
      goto LABEL_56;
    }

    if (v36 == enum case for UsoEntity_common_Number.DefinedValues.common_Number_Thousand(_:))
    {
      v50 = sub_13F490();
      v51(v50);

      LOBYTE(v33) = 0;
      LODWORD(v35) = 1148846080;
      goto LABEL_56;
    }

    if (v36 == enum case for UsoEntity_common_Number.DefinedValues.common_Number_Trillion(_:))
    {
      v52 = sub_13F490();
      v53(v52);

      LOBYTE(v33) = 0;
      LODWORD(v35) = 1399379109;
      goto LABEL_56;
    }

    v62 = enum case for UsoEntity_common_Number.DefinedValues.common_Number_MiddleValue(_:);
    if (v36 == enum case for UsoEntity_common_Number.DefinedValues.common_Number_MiddleValue(_:))
    {
      v63 = a2 * 0.5;
      v64 = a1 * 0.5;
    }

    else
    {
      if (v36 == enum case for UsoEntity_common_Number.DefinedValues.common_Number_Million(_:))
      {
        v74 = sub_13F490();
        v75(v74);

        LOBYTE(v33) = 0;
        LODWORD(v35) = 1232348160;
        goto LABEL_56;
      }

      if (v36 == enum case for UsoEntity_common_Number.DefinedValues.common_Number_HundredThousand(_:))
      {
        v76 = sub_13F490();
        v77(v76);

        LOBYTE(v33) = 0;
        LODWORD(v35) = 1203982336;
        goto LABEL_56;
      }

      v62 = enum case for UsoEntity_common_Number.DefinedValues.common_Number_SmallUnspecifiedAmount(_:);
      if (v36 == enum case for UsoEntity_common_Number.DefinedValues.common_Number_SmallUnspecifiedAmount(_:))
      {
        v64 = a2 * a3;
        v79 = 1.0 - a3;
      }

      else
      {
        if (v36 == enum case for UsoEntity_common_Number.DefinedValues.common_Number_MaximumValue(_:))
        {
          v80 = sub_13F490();
          v81(v80);

          LOBYTE(v33) = 0;
          *&v35 = a2;
          goto LABEL_56;
        }

        if (v36 == enum case for UsoEntity_common_Number.DefinedValues.common_Number_TenThousand(_:))
        {
          v82 = sub_13F490();
          v83(v82);

          LOBYTE(v33) = 0;
          LODWORD(v35) = 1176256512;
          goto LABEL_56;
        }

        v62 = enum case for UsoEntity_common_Number.DefinedValues.common_Number_LargeUnspecifiedAmount(_:);
        if (v36 != enum case for UsoEntity_common_Number.DefinedValues.common_Number_LargeUnspecifiedAmount(_:))
        {
          if (v36 == enum case for UsoEntity_common_Number.DefinedValues.common_Number_Hundred(_:))
          {
            v84 = sub_13F490();
            v85(v84);

            LOBYTE(v33) = 0;
            LODWORD(v35) = 1120403456;
            goto LABEL_56;
          }

          if (v36 == enum case for UsoEntity_common_Number.DefinedValues.common_Number_TenMillion(_:))
          {
            v86 = sub_13F490();
            v87(v86);

            LOBYTE(v33) = 0;
            LODWORD(v35) = 1259902592;
            goto LABEL_56;
          }

          v88 = enum case for UsoEntity_common_Number.DefinedValues.common_Number_MinimumValue(_:);
          v89 = *(v23 + 8);
          v89(v29, v21);

          if (v39 != v88)
          {
            v89(v27, v21);
            goto LABEL_54;
          }

LABEL_44:
          LOBYTE(v33) = 0;
          *&v35 = a1;
          goto LABEL_56;
        }

        v64 = a2 * a4;
        v79 = 1.0 - a4;
      }

      v63 = v79 * a1;
    }

    v65 = v64 + v63;
    sub_16AAF4(v62, 10.0);
    sub_1683B4(v68, v66, v67);
    sub_16AB04(v69);
    v71 = v70;
    sub_16A8E4();
    v73 = v72;

    a1 = roundf(v65 * v73) / v73;
    (*(v23 + 8))(v29, v21);
    goto LABEL_44;
  }

LABEL_4:
  sub_169A44();
  sub_13F4A0();
  if (v93)
  {
    v30 = sub_169A34();
    v32 = v31;

    if ((v32 & 1) == 0)
    {
      LOBYTE(v33) = 0;
      v34 = v30;
LABEL_7:
      *&v35 = v34;
      goto LABEL_56;
    }

    goto LABEL_54;
  }

  sub_169A24();
  sub_13F4A0();
  if (v93)
  {
    sub_1699F4();
    if (sub_9E2C(v10, 1, v11) == 1)
    {
      sub_D188(v10, &qword_1EEBA8, &qword_17A3E8);
    }

    else
    {
      v44 = v92;
      (*(v92 + 32))(v17, v10, v11);
      v45 = v91;
      (*(v44 + 104))(v91, enum case for UsoEntity_common_Decimal.DefinedValues.common_Decimal_Percent(_:), v11);
      v46 = sub_E5EC8(v17, v45);
      v47 = *(v44 + 8);
      v47(v45, v11);
      v47(v17, v11);
      if (v46)
      {

        LOBYTE(v33) = 0;
        LODWORD(v35) = 1008981770;
        goto LABEL_56;
      }
    }

    v48 = sub_169A14();
    if (v49)
    {
      v35 = sub_13F2A4(v48, v49);

      v33 = HIDWORD(v35) & 1;
      goto LABEL_56;
    }

LABEL_53:

LABEL_54:
    LODWORD(v35) = 0;
    goto LABEL_55;
  }

  sub_169BA4();
  sub_13F4A0();
  if (!v93)
  {
    sub_169C14();
    sub_13F4A0();
    LODWORD(v35) = v93;
    if (v93)
    {
      if (sub_169C04())
      {
        if (sub_169BF4())
        {
          sub_1696F4();
          v54 = sub_13F4C0();

          if ((v54 & 0x100000000) == 0)
          {

            sub_1696F4();

            v55 = sub_13F4C0();

            if ((v55 & 0x100000000) == 0)
            {
              LOBYTE(v33) = 0;
              v34 = *&v54 * *&v55;
              goto LABEL_7;
            }

            goto LABEL_54;
          }
        }

        else
        {
        }
      }

      goto LABEL_53;
    }

    goto LABEL_55;
  }

  v42 = sub_169B94();
  LOBYTE(v33) = v43;
  if ((v43 & 1) == 0)
  {
    v35 = v42;
    if (v42)
    {
      v56 = sub_169B84();
      if (v57)
      {
        v56 = 1.0;
      }

      *&v35 = v56 / v35;
      goto LABEL_37;
    }

LABEL_55:
    LOBYTE(v33) = 1;
    goto LABEL_56;
  }

  LODWORD(v35) = 0;
LABEL_37:
  v58 = sub_169B74();
  v60 = v59;

  if ((v60 & 1) == 0)
  {
    v61 = *&v35;
    if (v33)
    {
      v61 = 0.0;
    }

    *&v35 = v61 + v58;
    LOBYTE(v33) = 0;
  }

LABEL_56:
  LOBYTE(v93) = v33 & 1;
  return v35 | ((v33 & 1) << 32);
}

unint64_t sub_13F2A4(uint64_t a1, uint64_t a2)
{
  v5 = 0;
  v2 = sub_13F37C(a1, a2, &v5);

  v3 = v5;
  if (!v2)
  {
    v3 = 0;
  }

  return v3 | (!v2 << 32);
}

_BYTE *sub_13F310@<X0>(_BYTE *result@<X0>, BOOL *a2@<X8>)
{
  v3 = *result;
  v4 = v3 > 0x20;
  v5 = (1 << v3) & 0x100003E01;
  v6 = v4 || v5 == 0;
  v7 = v6 && (result = _swift_stdlib_strtof_clocale()) != 0 && *result == 0;
  *a2 = v7;
  return result;
}

BOOL sub_13F37C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  if ((a2 & 0x2000000000000000) == 0)
  {
    if ((a1 & 0x1000000000000000) != 0)
    {
      v4 = *(&stru_20.cmd + (a2 & 0xFFFFFFFFFFFFFFFLL));
      if (v4 < 0x21 && ((0x100003E01uLL >> v4) & 1) != 0)
      {
        return 0;
      }

      goto LABEL_9;
    }

LABEL_13:
    sub_16ACE4();
    if (!v3)
    {
      return v8;
    }

    return v6;
  }

  if (a1 <= 0x20u && ((0x100003E01uLL >> a1) & 1) != 0)
  {
    return 0;
  }

LABEL_9:
  v5 = _swift_stdlib_strtof_clocale();
  if (!v5)
  {
    return 0;
  }

  return *v5 == 0;
}

uint64_t sub_13F4A0()
{

  return sub_169A94();
}

unint64_t sub_13F4C0()
{

  return sub_13E96C(v1, v2, v3, v4);
}

uint64_t sub_13F4E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  sub_146404(a1, a2);
  if (v3)
  {
  }

  else
  {
    return 0;
  }
}

double sub_13F530@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  if (*(a3 + 16) && (v6 = sub_146404(a1, a2), (v7 & 1) != 0))
  {
    v8 = *(a3 + 56) + 32 * v6;

    sub_16138(v8, a4);
  }

  else
  {
    result = 0.0;
    *a4 = 0u;
    a4[1] = 0u;
  }

  return result;
}

void *sub_13F594(void *a1, uint64_t a2)
{
  if ((a2 & 0xC000000000000001) != 0)
  {
    v3 = a1;
    v4 = sub_16ADA4();

    if (v4)
    {
      sub_16484(0, &qword_1E6310, NSNumber_ptr);
      swift_dynamicCast();
      return v9;
    }
  }

  else if (*(a2 + 16) && (v5 = sub_1464E8(a1), (v6 & 1) != 0))
  {
    v4 = *(*(a2 + 56) + 8 * v5);
    v7 = v4;
  }

  else
  {
    return 0;
  }

  return v4;
}

double sub_13F658@<D0>(uint64_t a1@<X1>, _OWORD *a2@<X8>, uint64_t a3@<X0>)
{
  if (*(a1 + 16) && (v5 = sub_14652C(a3), (v6 & 1) != 0))
  {
    v7 = *(a1 + 56) + 32 * v5;

    sub_16138(v7, a2);
  }

  else
  {
    result = 0.0;
    *a2 = 0u;
    a2[1] = 0u;
  }

  return result;
}

uint64_t sub_13F6BC(uint64_t a1)
{
  v3 = *(a1 + 16);
  v4 = *(*v1 + 16);
  result = v4 + v3;
  if (__OFADD__(v4, v3))
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_147BB0(result, 1, sub_108204);
  v6 = *v1;
  if (!*(a1 + 16))
  {

    if (!v3)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  v7 = (*(v6 + 24) >> 1) - *(v6 + 16);
  result = sub_1697C4();
  if (v7 < v3)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  swift_arrayInitWithCopy();

  if (!v3)
  {
LABEL_8:
    *v1 = v6;
    return result;
  }

  v8 = *(v6 + 16);
  v9 = __OFADD__(v8, v3);
  v10 = v8 + v3;
  if (!v9)
  {
    *(v6 + 16) = v10;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
  return result;
}

uint64_t sub_13F7FC(uint64_t a1, uint64_t (*a2)(void), void (*a3)(uint64_t, void, uint64_t))
{
  v7 = a2();
  v8 = (a2)(*v3);
  v10 = __OFADD__(v8, v7);
  result = v8 + v7;
  if (v10)
  {
    __break(1u);
    goto LABEL_8;
  }

  sub_147B10(result, 1, v9);
  v12 = *v3;
  v13 = *v3 & 0xFFFFFFFFFFFFFF8;
  a3(v13 + 8 * *(&dword_10 + v13) + 32, (*(&dword_18 + v13) >> 1) - *(&dword_10 + v13), a1);
  v15 = v14;

  if (v15 < v7)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v15 < 1)
  {
LABEL_6:
    *v3 = v12;
    return result;
  }

  v16 = *(v13 + 16);
  v10 = __OFADD__(v16, v15);
  v17 = v16 + v15;
  if (!v10)
  {
    *(v13 + 16) = v17;
    goto LABEL_6;
  }

LABEL_9:
  __break(1u);
  return result;
}

void *sub_13F96C(int64_t a1)
{
  v3 = a1;
  v4 = *(a1 + 16);
  v5 = *(*v2 + 16);
  if (__OFADD__(v5, v4))
  {
    __break(1u);
    goto LABEL_11;
  }

  sub_147BB0(v5 + v4, 1, sub_108D88);
  v1 = *v2;
  v6 = *(*v2 + 16);
  v7 = (*(*v2 + 24) >> 1) - v6;
  result = sub_1486C0(v35, (*v2 + v6 + 32), v7, v3);
  if (result < v4)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (result)
  {
    v12 = *(v1 + 16);
    v13 = __OFADD__(v12, result);
    v14 = result + v12;
    if (v13)
    {
      __break(1u);
      goto LABEL_15;
    }

    *(v1 + 16) = v14;
  }

  if (result == v7)
  {
LABEL_12:
    v3 = *(v1 + 16);
    result = v35[0];
    v9 = v35[1];
    v10 = v36;
    v11 = v37;
    if (v38)
    {
      v15 = (v38 - 1) & v38;
      v16 = __clz(__rbit64(v38)) | (v37 << 6);
      v17 = (v36 + 64) >> 6;
LABEL_20:
      v21 = *(result[6] + v16);
      while (1)
      {
        v22 = *(v1 + 24);
        v23 = v22 >> 1;
        if ((v22 >> 1) < v3 + 1)
        {
          v33 = v15;
          v34 = result;
          v31 = v10;
          v32 = v9;
          v27 = v11;
          v28 = v1;
          v29 = v21;
          sub_108D88(v22 > 1, v3 + 1, 1, v28);
          v21 = v29;
          v9 = v32;
          v15 = v33;
          v11 = v27;
          v10 = v31;
          v1 = v30;
          result = v34;
          v23 = *(v1 + 24) >> 1;
        }

        if (v3 < v23)
        {
          break;
        }

        v24 = v11;
LABEL_34:
        *(v1 + 16) = v3;
        v11 = v24;
      }

      while (1)
      {
        *(v1 + 32 + v3++) = v21;
        if (!v15)
        {
          break;
        }

        v24 = v11;
LABEL_31:
        v26 = __clz(__rbit64(v15));
        v15 &= v15 - 1;
        v21 = *(result[6] + (v26 | (v24 << 6)));
        if (v3 >= v23)
        {
          goto LABEL_34;
        }
      }

      v25 = v11;
      while (1)
      {
        v24 = v25 + 1;
        if (__OFADD__(v25, 1))
        {
          break;
        }

        if (v24 >= v17)
        {
          result = sub_4A004(result);
          *(v1 + 16) = v3;
          goto LABEL_9;
        }

        v15 = *(v9 + 8 * v24);
        ++v25;
        if (v15)
        {
          v11 = v24;
          goto LABEL_31;
        }
      }

      __break(1u);
LABEL_38:
      __break(1u);
      return result;
    }

LABEL_15:
    v17 = (v10 + 64) >> 6;
    v18 = v11;
    while (1)
    {
      v19 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        goto LABEL_38;
      }

      if (v19 >= v17)
      {
        goto LABEL_8;
      }

      v20 = *(v9 + 8 * v19);
      ++v18;
      if (v20)
      {
        v15 = (v20 - 1) & v20;
        v16 = __clz(__rbit64(v20)) | (v19 << 6);
        v11 = v19;
        goto LABEL_20;
      }
    }
  }

  result = v35[0];
LABEL_8:
  result = sub_4A004(result);
LABEL_9:
  *v2 = v1;
  return result;
}

void sub_13FBBC()
{
  sub_CA350();
  v174 = sub_169724();
  sub_9F48();
  v167 = v1;
  __chkstk_darwin(v2);
  sub_A138();
  sub_148938(v4 - v3);
  v140 = sub_5758(&qword_1ED160, &unk_178250);
  sub_10AFC();
  sub_CA380();
  __chkstk_darwin(v5);
  sub_148944();
  sub_148938(v6);
  v151 = sub_169DB4();
  sub_9F48();
  v152 = v7;
  __chkstk_darwin(v8);
  sub_A138();
  sub_148938(v10 - v9);
  v11 = sub_5758(&qword_1E9B28, &unk_173710);
  sub_D414(v11);
  sub_CA380();
  __chkstk_darwin(v12);
  sub_148944();
  sub_148938(v13);
  v173 = sub_169DD4();
  sub_9F48();
  v169 = v14;
  __chkstk_darwin(v15);
  sub_A138();
  sub_148938(v17 - v16);
  v18 = sub_5758(&qword_1ED168, &qword_178260);
  sub_D414(v18);
  sub_CA380();
  __chkstk_darwin(v19);
  sub_148944();
  v172 = v20;
  v21 = sub_169754();
  sub_9F48();
  v161 = v22;
  __chkstk_darwin(v23);
  sub_A138();
  v26 = v25 - v24;
  v27 = sub_1697C4();
  sub_9F48();
  v29 = v28;
  __chkstk_darwin(v30);
  sub_A138();
  v33 = v32 - v31;
  v34 = sub_1697F4();
  sub_9F48();
  v162 = v35;
  __chkstk_darwin(v36);
  sub_10B64();
  v38 = v37;
  sub_6CF04();
  __chkstk_darwin(v39);
  v41 = &v136 - v40;
  v42 = sub_5758(&qword_1ED158, &qword_178248);
  v43 = sub_D414(v42);
  __chkstk_darwin(v43);
  sub_10B64();
  sub_148864();
  __chkstk_darwin(v44);
  sub_148AB8();
  sub_148864();
  __chkstk_darwin(v45);
  sub_148AB8();
  v171 = v46;
  sub_6CF04();
  __chkstk_darwin(v47);
  sub_1489CC();
  sub_1416D0();
  if (!v48)
  {
    sub_148B10();
LABEL_52:
    sub_CA57C();
    sub_CA368();
    return;
  }

  v176 = v26;
  v168 = v38;
  v180 = v48;
  v163 = sub_16A664();
  v165 = v49;
  v50 = v162;
  (*(v162 + 104))(v41, enum case for UsoIdentifier.NluComponent.spanMatchSiriVocab(_:), v34);
  sub_1697E4();
  v51 = *(v50 + 8);
  v175 = v34;
  v159 = v50 + 8;
  v158 = v51;
  v51(v41, v34);
  v148 = v0;
  sub_1697D4();
  v179 = *(v180 + 16);
  v52 = v172;
  if (!v179)
  {
LABEL_49:

    sub_148B10();
LABEL_50:
    sub_109A0(v148, &qword_1ED158, &qword_178248);
    goto LABEL_52;
  }

  v53 = 0;
  sub_10BDEC();
  v178 = v54 + v55;
  v177 = v29 + 16;
  v170 = (v161 + 4);
  v154 = (v50 + 32);
  v144 = v169 + 4;
  v143 = v152 + 8;
  v141 = v169 + 1;
  v169 = v161 + 1;
  v56 = (v29 + 8);
  v136 = v50 + 16;
  v161 = (v167 + 8);
  v162 = v167 + 16;
  v142 = xmmword_16D9A0;
  v147 = v21;
  v166 = v27;
  v164 = v29;
  v137 = v41;
  v146 = (v29 + 8);
  while (v53 < *(v54 + 16))
  {
    (*(v29 + 16))(v33, v178 + *(v29 + 72) * v53, v27);
    sub_169784();
    sub_148874(v52, 1, v21);
    if (!v61)
    {
      (*v170)(v176, v52, v21);
      sub_169744();
      v59 = v171;
      sub_1697D4();
      v60 = v175;
      sub_148874(v59, 1, v175);
      if (v61)
      {
        v62 = sub_148AE4();
        v63(v62, v21);
        v64 = sub_1489BC();
        v65(v64);
        v66 = v59;
        v67 = &qword_1ED158;
        v68 = &qword_178248;
      }

      else
      {
        v69 = *v154;
        (*v154)(v168, v59, v60);
        v70 = v160;
        sub_1697B4();
        v71 = sub_148A24();
        v72 = v173;
        sub_148874(v71, v73, v173);
        if (!v74)
        {
          sub_14890C();
          v79 = v153;
          v80(v153, v70, v72);
          sub_5758(&qword_1EEC20, &qword_17A470);
          v81 = v72;
          v82 = v152;
          v83 = swift_allocObject();
          *(v83 + 16) = v142;
          sub_169D84();
          v181 = v83;
          sub_1487A4(&qword_1EEC28, &type metadata accessor for MatchInfo.MatchSignals, &protocol conformance descriptor for MatchInfo.MatchSignals);
          sub_5758(&qword_1EEC30, &qword_17A478);
          sub_37284(&qword_1EEC38, &qword_1EEC30, &qword_17A478, &protocol conformance descriptor for [A]);
          v84 = v150;
          v85 = v151;
          sub_16AB84();
          v86 = sub_169D64();
          (*(v82 + 8))(v84, v85);
          if (v86)
          {
            sub_14890C();
            v87 = v149;
            v88 = v175;
            v89(v149, v168, v175);
            sub_148950();
            sub_5370(v90, v91, v92, v88);
            v93 = *(v140 + 48);
            v94 = v139;
            sub_D4DC4(v87, v139, &qword_1ED158, &qword_178248);
            sub_D4DC4(v148, v94 + v93, &qword_1ED158, &qword_178248);
            v95 = sub_148A24();
            sub_148874(v95, v96, v88);
            v97 = v137;
            v52 = v172;
            if (v61)
            {
              sub_109A0(v87, &qword_1ED158, &qword_178248);
              sub_148874(v94 + v93, 1, v88);
              v21 = v147;
              v56 = v146;
              if (v61)
              {
                sub_109A0(v94, &qword_1ED158, &qword_178248);
                v27 = v166;
                v29 = v164;
                goto LABEL_30;
              }
            }

            else
            {
              sub_D4DC4(v94, v145, &qword_1ED158, &qword_178248);
              sub_148874(v94 + v93, 1, v88);
              v21 = v147;
              v56 = v146;
              if (!v104)
              {
                v69(v97, v94 + v93, v88);
                sub_14888C();
                sub_1487A4(&qword_1ED170, v107, &protocol conformance descriptor for UsoIdentifier.NluComponent);
                LODWORD(v157) = sub_16A634();
                v108 = v158;
                v158(v97, v88);
                sub_109A0(v149, &qword_1ED158, &qword_178248);
                v108(v145, v88);
                sub_109A0(v94, &qword_1ED158, &qword_178248);
                v27 = v166;
                v29 = v164;
                if (v157)
                {
LABEL_30:
                  v157 = *(sub_169764() + 16);
                  if (v157)
                  {
                    v109 = 0;
                    sub_10BDEC();
                    v155 = v110 + v111;
                    v112 = v138;
                    v156 = v110;
                    while (1)
                    {
                      if (v109 >= *(v110 + 16))
                      {
                        goto LABEL_55;
                      }

                      (*(v167 + 16))(v112, v155 + *(v167 + 72) * v109, v174);
                      if (sub_169714() == v163 && v113 == v165)
                      {
                      }

                      else
                      {
                        v115 = sub_16AE54();

                        if ((v115 & 1) == 0)
                        {
                          v116 = sub_148AE4();
                          v117(v116, v174);
                          goto LABEL_45;
                        }
                      }

                      sub_169704();
                      if (v118)
                      {
                        sub_169774();
                        v120 = v119;
                        (*v161)(v112, v174);
                        if (v120)
                        {

                          sub_14890C();
                          v130(v153, v173);
                          sub_14882C();
                          v132(v131);
                          v133 = sub_1488F0();
                          v134(v133, v147);
                          sub_14890C();
                          v135(v33, v166);
                          goto LABEL_50;
                        }

                        v27 = v166;
                      }

                      else
                      {
                        v121 = sub_148AE4();
                        v122(v121, v174);
                      }

                      v29 = v164;
LABEL_45:
                      ++v109;
                      v110 = v156;
                      if (v157 == v109)
                      {

                        v21 = v147;
                        v56 = v146;
                        goto LABEL_48;
                      }
                    }
                  }
                }

LABEL_48:
                sub_14890C();
                v123(v153, v173);
                sub_14882C();
                v125(v124);
                v126 = sub_1488F0();
                v127(v126, v21);
                v128 = sub_1489BC();
                v129(v128);
                goto LABEL_16;
              }

              sub_109A0(v149, &qword_1ED158, &qword_178248);
              sub_14882C();
              v106(v105);
            }

            sub_109A0(v94, &qword_1ED160, &unk_178250);
            v27 = v166;
            v29 = v164;
            goto LABEL_48;
          }

          sub_14890C();
          v98(v79, v81);
          sub_14882C();
          v100(v99);
          v101 = sub_1488F0();
          v21 = v147;
          v102(v101, v147);
          v103 = v146;
          v27 = v166;
          (*v146)(v33, v166);
          v56 = v103;
          v29 = v164;
          goto LABEL_15;
        }

        sub_14882C();
        v76(v75);
        v77 = sub_1488F0();
        v78(v77, v21);
        v27 = v166;
        (*v56)(v33, v166);
        v66 = v70;
        v67 = &qword_1E9B28;
        v68 = &unk_173710;
      }

      sub_109A0(v66, v67, v68);
LABEL_15:
      v52 = v172;
      goto LABEL_16;
    }

    v57 = sub_1489BC();
    v58(v57);
    sub_109A0(v52, &qword_1ED168, &qword_178260);
LABEL_16:
    ++v53;
    v54 = v180;
    if (v53 == v179)
    {
      goto LABEL_49;
    }
  }

  __break(1u);
LABEL_55:
  __break(1u);
}

void sub_140A80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_CA350();
  v165 = sub_169724();
  sub_9F48();
  v162 = v20;
  __chkstk_darwin(v21);
  sub_A138();
  v24 = v23 - v22;
  v142 = sub_5758(&qword_1ED160, &unk_178250);
  sub_10AFC();
  sub_CA380();
  __chkstk_darwin(v25);
  sub_148944();
  sub_148938(v26);
  v27 = sub_5758(&qword_1ED158, &qword_178248);
  v28 = sub_D414(v27);
  __chkstk_darwin(v28);
  sub_10B64();
  sub_148864();
  __chkstk_darwin(v29);
  sub_148AB8();
  v149 = v30;
  sub_6CF04();
  __chkstk_darwin(v31);
  sub_148AB8();
  v148 = v32;
  sub_6CF04();
  __chkstk_darwin(v33);
  sub_F5784();
  v153 = v34;
  v155 = sub_1697F4();
  sub_9F48();
  v36 = v35;
  __chkstk_darwin(v37);
  sub_10B64();
  sub_148864();
  __chkstk_darwin(v38);
  sub_F5784();
  v151 = v39;
  v40 = &qword_1ED168;
  v41 = sub_5758(&qword_1ED168, &qword_178260);
  sub_D414(v41);
  sub_CA380();
  __chkstk_darwin(v42);
  v44 = &v125 - v43;
  v45 = sub_169754();
  sub_9F48();
  v47 = v46;
  __chkstk_darwin(v48);
  sub_A138();
  v51 = v50 - v49;
  v144 = sub_1697C4();
  v52 = sub_10AEC(v144);
  v54 = v53;
  __chkstk_darwin(v52);
  sub_A138();
  v160 = v56 - v55;
  sub_145070();
  v57 = v51;
  v59 = v58;
  v166 = _swiftEmptyArrayStorage;
  v129 = sub_11A904(v58);
  v60 = 0;
  v128 = v59 & 0xC000000000000001;
  v127 = v59 & 0xFFFFFFFFFFFFFF8;
  v125 = v59;
  v126 = v59 + 32;
  v157 = v54 + 16;
  v152 = (v47 + 32);
  v145 = (v36 + 32);
  v140 = v36 + 16;
  v139 = enum case for UsoIdentifier.NluComponent.spanMatchVocFile(_:);
  v138 = v36 + 104;
  v154 = (v36 + 8);
  v161 = v162 + 16;
  v137 = v162 + 8;
  v61 = v45;
  v150 = (v47 + 8);
  v156 = (v54 + 8);
  v135 = v45;
  v164 = v57;
  v134 = v54;
  v163 = v44;
  v136 = v24;
  while (v60 != v129)
  {
    if (v128)
    {
      v132 = sub_16AD04();
    }

    else
    {
      if (v60 >= *(v127 + 16))
      {
        goto LABEL_67;
      }

      v132 = *(v126 + 8 * v60);
    }

    v62 = __OFADD__(v60, 1);
    v63 = v60 + 1;
    if (v62)
    {
LABEL_66:
      __break(1u);
LABEL_67:
      __break(1u);
LABEL_68:
      __break(1u);
LABEL_69:
      __break(1u);
      return;
    }

    v130 = v63;
    v64 = sub_169DF4();
    v159 = *(v64 + 16);
    if (!v159)
    {
LABEL_46:

      goto LABEL_47;
    }

    v65 = 0;
    sub_10BDEC();
    v158 = v64 + v66;
    v67 = v144;
    v143 = v64;
    while (1)
    {
      if (v65 >= *(v64 + 16))
      {
LABEL_65:
        __break(1u);
        goto LABEL_66;
      }

      v68 = v160;
      (*(v54 + 16))(v160, v158 + *(v54 + 72) * v65, v67);
      sub_169784();
      sub_148874(v44, 1, v61);
      if (!v73)
      {
        break;
      }

      (*v156)(v68, v67);
      sub_109A0(v44, v40, &qword_178260);
LABEL_45:
      if (++v65 == v159)
      {
        goto LABEL_46;
      }
    }

    v69 = v54;
    v70 = v67;
    v71 = v40;
    (*v152)(v164, v44, v61);
    sub_169744();
    v72 = v153;
    sub_1697D4();
    v67 = v155;
    sub_148874(v72, 1, v155);
    if (v73)
    {
      v74 = sub_1489AC();
      v75(v74, v61);
      v67 = v70;
      (*v156)(v160, v70);
      sub_109A0(v72, &qword_1ED158, &qword_178248);
      v40 = v71;
      v54 = v69;
      goto LABEL_45;
    }

    v76 = *v145;
    v77 = v151;
    (*v145)(v151, v72, v67);
    sub_14890C();
    v54 = v148;
    v78(v148, v77, v67);
    sub_148950();
    sub_5370(v79, v80, v81, v67);
    sub_14890C();
    v82 = v146;
    v83(v146, v139, v67);
    sub_1697E4();
    v84 = *v154;
    (*v154)(v82, v67);
    v85 = v149;
    sub_1697D4();
    v86 = *(v142 + 48);
    v87 = v141;
    sub_D4DC4(v54, v141, &qword_1ED158, &qword_178248);
    sub_D4DC4(v85, v87 + v86, &qword_1ED158, &qword_178248);
    sub_1487F0(v87);
    if (v88)
    {
      sub_1489DC(v85);
      sub_1489DC(v54);
      sub_1487F0(v87 + v86);
      v89 = v136;
      if (v73)
      {
        sub_1489DC(v87);
        v147 = 1;
        goto LABEL_25;
      }
    }

    else
    {
      v133 = v84;
      v90 = v76;
      v91 = v131;
      sub_D4DC4(v87, v131, &qword_1ED158, &qword_178248);
      sub_1487F0(v87 + v86);
      v89 = v136;
      if (!v92)
      {
        v54 = v146;
        v90(v146, v87 + v86, v67);
        sub_14888C();
        v94 = sub_1487A4(&qword_1ED170, v93, &protocol conformance descriptor for UsoIdentifier.NluComponent);
        v147 = sub_148B44(v91, v54, v95, v94);
        v96 = sub_148A18();
        v84 = v133;
        (v133)(v96);
        sub_1489DC(v149);
        sub_1489DC(v148);
        v84(v91, v67);
        sub_1489DC(v87);
        goto LABEL_25;
      }

      sub_1489DC(v149);
      sub_1489DC(v148);
      v84 = v133;
      v133(v91, v67);
    }

    sub_109A0(v87, &qword_1ED160, &unk_178250);
    v147 = 0;
LABEL_25:
    v44 = v163;
    v64 = sub_169764();
    v97 = *(v64 + 16);
    if (!v97)
    {
LABEL_42:

      v84(v151, v155);
      v110 = sub_1489AC();
      v61 = v135;
      v111(v110, v135);
      v112 = sub_148968();
      v113(v112);
      v40 = &qword_1ED168;
      sub_148AF0();
      goto LABEL_45;
    }

    v67 = 0;
    sub_10BDEC();
    v54 = v64 + v98;
    while (1)
    {
      if (v67 >= *(v64 + 16))
      {
        __break(1u);
        goto LABEL_65;
      }

      (*(v162 + 16))(v89, v54 + *(v162 + 72) * v67, v165);
      v99 = sub_169704();
      if (!v100)
      {
LABEL_34:
        v103 = sub_14899C();
        v104(v103);
        goto LABEL_41;
      }

      if (v99 == 0x646E617242726163 && v100 == 0xE800000000000000)
      {
      }

      else
      {
        v102 = sub_16AE54();

        if ((v102 & 1) == 0)
        {
          goto LABEL_34;
        }
      }

      if (sub_169714() == 0x656D614E726163 && v105 == 0xE700000000000000)
      {
        break;
      }

      v107 = sub_16AE54();

      v108 = sub_14899C();
      v109(v108);
      if (v107)
      {
        goto LABEL_44;
      }

LABEL_41:
      ++v67;
      v44 = v163;
      if (v97 == v67)
      {
        goto LABEL_42;
      }
    }

    v114 = sub_14899C();
    v115(v114);
LABEL_44:

    v84(v151, v155);
    v61 = v135;
    (*v150)(v164, v135);
    v116 = sub_148968();
    v117(v116);
    v40 = &qword_1ED168;
    v44 = v163;
    sub_148AF0();
    if ((v147 & 1) == 0)
    {
      goto LABEL_45;
    }

    sub_16AD34();
    sub_16AD64();
    sub_16AD74();
    sub_16AD44();
LABEL_47:
    v60 = v130;
  }

  v118 = v166;
  v119 = sub_11A904(v166);
  v120 = 0;
  v165 = 0;
  v121 = 0;
  while (v119 != v121)
  {
    if ((v118 & 0xC000000000000001) != 0)
    {
      sub_16AD04();
    }

    else
    {
      if (v121 >= *(v118 + 16))
      {
        goto LABEL_69;
      }
    }

    if (__OFADD__(v121, 1))
    {
      goto LABEL_68;
    }

    sub_169E14();
    v122 = sub_169D34();
    v124 = v123;

    if (v124)
    {
      if (v120)
      {
        v166 = v165;
        v167 = v120;

        v168._countAndFlagsBits = 32;
        v168._object = 0xE100000000000000;
        sub_16A744(v168);

        v169._countAndFlagsBits = v122;
        v169._object = v124;
        sub_16A744(v169);

        v120 = v167;
        v165 = v166;
      }

      else
      {

        v120 = v124;
        v165 = v122;
      }

      ++v121;
    }

    else
    {

      ++v121;
    }
  }

  sub_CA368();
}

void sub_1416D0()
{
  sub_CA350();
  LODWORD(v84) = v0;
  v74 = sub_169984();
  sub_9F48();
  v80 = v1;
  __chkstk_darwin(v2);
  sub_A138();
  v76 = v4 - v3;
  v87 = sub_5758(&qword_1EEBC8, &qword_17A430);
  sub_10AFC();
  sub_CA380();
  __chkstk_darwin(v5);
  sub_148944();
  v86 = v6;
  v7 = sub_5758(&qword_1EEBD0, &qword_17A438);
  sub_D414(v7);
  sub_CA380();
  __chkstk_darwin(v8);
  sub_148944();
  v88 = v9;
  v10 = sub_5758(&qword_1EEBD8, &qword_17A440);
  v11 = sub_D414(v10);
  __chkstk_darwin(v11);
  sub_10B64();
  v85 = v12;
  sub_6CF04();
  v14 = __chkstk_darwin(v13);
  v16 = v71 - v15;
  __chkstk_darwin(v14);
  sub_F5784();
  v89 = v17;
  v93 = sub_1697C4();
  sub_9F48();
  v91 = v18;
  __chkstk_darwin(v19);
  sub_10B64();
  sub_148864();
  __chkstk_darwin(v20);
  sub_F5784();
  v90 = v21;
  sub_145070();
  v23 = v22;
  v24 = sub_11A904(v22);
  v25 = 0;
  v26 = _swiftEmptyArrayStorage;
  v92 = v16;
  while (1)
  {
    if (v24 == v25)
    {

      if ((v84 & 1) == 0)
      {
LABEL_45:
        sub_CA368();
        return;
      }

      v34 = 0;
      v35 = *(v26 + 2);
      v83 = v91 + 16;
      v84 = v35;
      v82 = enum case for PayloadAttachmentInfo.AttachmentType.full(_:);
      v81 = v80 + 104;
      v75 = (v80 + 32);
      v77 = (v80 + 8);
      v78 = (v91 + 8);
      v71[1] = v91 + 32;
      v72 = _swiftEmptyArrayStorage;
      while (2)
      {
        v36 = v74;
        v37 = v88;
        while (1)
        {
          if (v84 == v34)
          {

            goto LABEL_45;
          }

          if (v34 >= *(v26 + 2))
          {
            goto LABEL_51;
          }

          v38 = (*(v91 + 80) + 32) & ~*(v91 + 80);
          v39 = *(v91 + 72);
          (*(v91 + 16))(v90, &v26[v38 + v39 * v34], v93);
          sub_169794();
          v40 = sub_1699A4();
          sub_148874(v37, 1, v40);
          v79 = v39;
          v80 = v38;
          if (v55)
          {
            sub_109A0(v37, &qword_1EEBD0, &qword_17A438);
            v44 = v89;
            sub_3CFE4();
            sub_5370(v41, v42, v43, v36);
          }

          else
          {
            v44 = v89;
            sub_169994();
            (*(*(v40 - 8) + 8))(v37, v40);
          }

          v45 = v85;
          v46 = sub_148AE4();
          v47(v46, v82, v36);
          sub_148950();
          sub_5370(v48, v49, v50, v36);
          v51 = v86;
          v52 = *(v87 + 48);
          sub_D4DC4(v44, v86, &qword_1EEBD8, &qword_17A440);
          sub_D4DC4(v16, v51 + v52, &qword_1EEBD8, &qword_17A440);
          sub_148874(v51, 1, v36);
          if (v55)
          {
            break;
          }

          v53 = sub_14895C();
          sub_D4DC4(v53, v54, &qword_1EEBD8, &qword_17A440);
          sub_148874(v51 + v52, 1, v36);
          if (v55)
          {
            sub_148A64(v16);
            sub_148A64(v89);
            v56 = sub_1489AC();
            v57(v56, v36);
LABEL_35:
            sub_109A0(v51, &qword_1EEBC8, &qword_17A430);
            v37 = v88;
            goto LABEL_37;
          }

          v58 = v76;
          (*v75)(v76, v51 + v52, v36);
          sub_1488A4();
          sub_1487A4(&qword_1EEBE0, v59, &protocol conformance descriptor for PayloadAttachmentInfo.AttachmentType);
          v60 = v45;
          v61 = sub_16A634();
          v62 = *v77;
          (*v77)(v58, v36);
          sub_109A0(v92, &qword_1EEBD8, &qword_17A440);
          sub_109A0(v89, &qword_1EEBD8, &qword_17A440);
          v63 = v60;
          v16 = v92;
          v62(v63, v36);
          sub_109A0(v51, &qword_1EEBD8, &qword_17A440);
          v37 = v88;
          if (v61)
          {
            goto LABEL_38;
          }

LABEL_37:
          (*v78)(v90, v93);
          ++v34;
        }

        sub_148A64(v16);
        sub_148A64(v44);
        sub_148874(v51 + v52, 1, v36);
        if (v55)
        {
          sub_148A64(v51);
LABEL_38:
          sub_148AAC();
          v65 = *v64;
          (*v64)(v73, v90, v93);
          v66 = v72;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v94 = v66;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_146820(0, v66[2] + 1, 1);
            v66 = v94;
          }

          v69 = v66[2];
          v68 = v66[3];
          if (v69 >= v68 >> 1)
          {
            v70 = sub_148A30(v68);
            sub_146820(v70, v69 + 1, 1);
            v66 = v94;
          }

          ++v34;
          v66[2] = v69 + 1;
          v72 = v66;
          sub_148AAC();
          v65();
          continue;
        }

        goto LABEL_35;
      }
    }

    if ((v23 & 0xC000000000000001) != 0)
    {
      sub_16AD04();
    }

    else
    {
      if (v25 >= *(&dword_10 + (v23 & 0xFFFFFFFFFFFFFF8)))
      {
        goto LABEL_47;
      }
    }

    if (__OFADD__(v25, 1))
    {
      break;
    }

    v27 = sub_169DF4();

    v28 = *(v27 + 16);
    v29 = *(v26 + 2);
    if (__OFADD__(v29, v28))
    {
      goto LABEL_48;
    }

    if (!swift_isUniquelyReferenced_nonNull_native() || v29 + v28 > *(v26 + 3) >> 1)
    {
      sub_108204();
      v26 = v30;
    }

    v16 = v92;
    if (*(v27 + 16))
    {
      if ((*(v26 + 3) >> 1) - *(v26 + 2) < v28)
      {
        goto LABEL_50;
      }

      swift_arrayInitWithCopy();

      if (v28)
      {
        v31 = *(v26 + 2);
        v32 = __OFADD__(v31, v28);
        v33 = v31 + v28;
        if (v32)
        {
          goto LABEL_52;
        }

        *(v26 + 2) = v33;
      }
    }

    else
    {

      if (v28)
      {
        goto LABEL_49;
      }
    }

    ++v25;
  }

  __break(1u);
LABEL_47:
  __break(1u);
LABEL_48:
  __break(1u);
LABEL_49:
  __break(1u);
LABEL_50:
  __break(1u);
LABEL_51:
  __break(1u);
LABEL_52:
  __break(1u);
}

void sub_141EAC()
{
  sub_CA350();
  v47 = sub_1697C4();
  sub_9F48();
  v2 = v1;
  __chkstk_darwin(v3);
  sub_A138();
  v6 = v5 - v4;
  v7 = sub_5758(&unk_1EC980, &qword_178180);
  v8 = sub_D414(v7);
  __chkstk_darwin(v8);
  sub_A128();
  v11 = v9 - v10;
  __chkstk_darwin(v12);
  v14 = v42 - v13;
  sub_1422D8();
  v16 = v15;
  if (!sub_11A904(v15))
  {

    goto LABEL_35;
  }

  if ((v16 & 0xC000000000000001) != 0)
  {
    goto LABEL_37;
  }

  sub_1488BC();
  if (!v17)
  {
    __break(1u);
    return;
  }

  sub_148B5C();
LABEL_5:

  sub_169934();
  sub_148B04();

  sub_1489F4(v18);

  v19 = v48;
  if (!v48)
  {

    goto LABEL_35;
  }

  sub_148854();
  v20 = sub_1698D4();
  if (v20)
  {
    v21 = v20;
    v42[0] = v19;
    v42[1] = v0;
    v43 = v14;
    v44 = v11;
    v22 = 0;
    v14 = 0x656D614E707061;
    v23 = *(v20 + 16);
    v45 = v2 + 16;
    v46 = v23;
    v24 = v47;
    while (1)
    {
      if (v46 == v22)
      {

        v14 = v43;
        v32 = sub_148A24();
        goto LABEL_31;
      }

      if (v22 >= *(v21 + 16))
      {
        __break(1u);
LABEL_37:
        v0 = sub_148984();
        goto LABEL_5;
      }

      sub_10BDEC();
      (*(v2 + 16))(v6, v21 + v25 + *(v2 + 72) * v22, v24);
      v26 = sub_169774();
      if (v27)
      {
        v28 = v26 == 0x746163696C707041 && v27 == 0xEC000000736E6F69;
        if (v28)
        {
        }

        else
        {
          v11 = sub_16AE54();

          if ((v11 & 1) == 0)
          {
            goto LABEL_24;
          }
        }

        v29 = sub_1697A4();
        if (v30)
        {
          if (v29 == 0x656D614E707061 && v30 == 0xE700000000000000)
          {

LABEL_30:

            v14 = v43;
            v24 = v47;
            (*(v2 + 32))(v43, v6, v47);
            v32 = v14;
            v33 = 0;
LABEL_31:
            sub_5370(v32, v33, 1, v24);
            v11 = v44;
            goto LABEL_32;
          }

          v11 = sub_16AE54();

          if (v11)
          {
            goto LABEL_30;
          }
        }
      }

LABEL_24:
      v24 = v47;
      (*(v2 + 8))(v6, v47);
      ++v22;
    }
  }

  v34 = sub_148A24();
  v24 = v47;
  sub_5370(v34, v35, 1, v47);
LABEL_32:
  sub_D4DC4(v14, v11, &unk_1EC980, &qword_178180);
  sub_148874(v11, 1, v24);
  if (v28)
  {
    v36 = sub_148AD8();
    sub_109A0(v36, v37, &qword_178180);

    v38 = sub_CA57C();
    sub_109A0(v38, v39, &qword_178180);
  }

  else
  {
    sub_169734();

    sub_109A0(v14, &unk_1EC980, &qword_178180);
    v40 = sub_CA57C();
    v41(v40);
  }

LABEL_35:
  sub_CA368();
}

void sub_1422D8()
{
  sub_5758(&qword_1E5F70, &unk_16F3F0);
  inited = swift_initStackObject();
  v1 = 0;
  v2 = sub_1488C8(inited, xmmword_16D3A0);
  v2[2].n128_u64[1] = v3;
  v4 = &v2[2].n128_i8[8];
  sub_148918(v2);
LABEL_2:
  v5 = &v4[16 * v1++];
  while (v1 != 3)
  {
    v7 = *(v5 - 1);
    v6 = *v5;

    v8 = sub_169D04();
    if (!*(v8 + 16) || (v9 = sub_146404(v7, v6), (v10 & 1) == 0))
    {
LABEL_13:

      goto LABEL_14;
    }

    v11 = *(*(v8 + 56) + 8 * v9);

    if (v11 >> 62)
    {
      if (!sub_148A48())
      {
        goto LABEL_13;
      }
    }

    else if (!*(&dword_10 + (v11 & 0xFFFFFFFFFFFFFF8)))
    {
      goto LABEL_13;
    }

    if ((v11 & 0xC000000000000001) != 0)
    {
      sub_148984();
    }

    else
    {
      sub_1488BC();
      if (!v12)
      {
        goto LABEL_47;
      }
    }

    v13 = sub_169D54();

    if (v13)
    {
      sub_16A7B4();
      v14 = *(&dword_18 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8));
      if (*(&dword_10 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >= v14 >> 1)
      {
        sub_148A30(v14);
        sub_16A7F4();
      }

      sub_16A814();
      goto LABEL_2;
    }

LABEL_14:
    ++v1;
    v5 += 2;
  }

  swift_setDeallocating();
  sub_EFFB0();
  v15 = sub_11A904(_swiftEmptyArrayStorage);
  v16 = 0;
  while (1)
  {
    if (v15 == v16)
    {

      return;
    }

    if ((_swiftEmptyArrayStorage & 0xC000000000000001) != 0)
    {
      sub_16AD04();
    }

    else
    {
      if (v16 >= *(&dword_10 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)))
      {
        goto LABEL_46;
      }
    }

    if (__OFADD__(v16, 1))
    {
      break;
    }

    v17 = sub_169DE4();
    if (!*(v17 + 16) || (v18 = sub_146404(0xD000000000000010, 0x80000000001912B0), (v19 & 1) == 0))
    {

      goto LABEL_39;
    }

    v20 = *(*(v17 + 56) + 8 * v18);

    if (v20 >> 62)
    {
      if (!sub_148A48())
      {
LABEL_42:

        goto LABEL_39;
      }
    }

    else if (!*(&dword_10 + (v20 & 0xFFFFFFFFFFFFFF8)))
    {
      goto LABEL_42;
    }

    if ((v20 & 0xC000000000000001) != 0)
    {
      sub_148984();
    }

    else
    {
      sub_1488BC();
      if (!v21)
      {
        goto LABEL_48;
      }
    }

    v22 = sub_169D54();

    if (v22)
    {
      sub_16A7B4();
      v23 = *(&dword_18 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8));
      if (*(&dword_10 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >= v23 >> 1)
      {
        sub_148A30(v23);
        sub_16A7F4();
      }

      sub_16A814();
      ++v16;
    }

    else
    {
LABEL_39:
      ++v16;
    }
  }

  __break(1u);
LABEL_46:
  __break(1u);
LABEL_47:
  __break(1u);
LABEL_48:
  __break(1u);
}

void sub_142688()
{
  sub_CA350();
  LOBYTE(v2) = v1;
  v3 = sub_169984();
  sub_9F48();
  v5 = v4;
  __chkstk_darwin(v6);
  sub_A138();
  v77 = v8 - v7;
  v86 = sub_5758(&qword_1EEBC8, &qword_17A430);
  sub_10AFC();
  sub_CA380();
  __chkstk_darwin(v9);
  v11 = v68 - v10;
  v12 = sub_5758(&qword_1EEBD0, &qword_17A438);
  sub_D414(v12);
  sub_CA380();
  __chkstk_darwin(v13);
  v15 = v68 - v14;
  v16 = sub_5758(&qword_1EEBD8, &qword_17A440);
  v17 = sub_D414(v16);
  __chkstk_darwin(v17);
  sub_A128();
  v20 = v18 - v19;
  v22 = __chkstk_darwin(v21);
  v24 = v68 - v23;
  __chkstk_darwin(v22);
  v26 = v68 - v25;
  v89 = sub_1697C4();
  sub_9F48();
  v87 = v27;
  __chkstk_darwin(v28);
  sub_10B64();
  v76 = v29;
  sub_6CF04();
  __chkstk_darwin(v30);
  sub_F5784();
  v88 = v31;
  v32 = sub_169D04();
  v33 = sub_148810();
  sub_13F4E0(v33, v34, v32);
  sub_148B04();

  if (!v0)
  {
    goto LABEL_39;
  }

  if (!sub_11A904(v0))
  {

LABEL_39:
    sub_CA368();
    return;
  }

  if ((v0 & 0xC000000000000001) != 0)
  {
    goto LABEL_43;
  }

  sub_1488BC();
  if (v35)
  {
    sub_148B5C();
    while (1)
    {

      sub_169D54();
      sub_148B04();

      if (!v32)
      {
        goto LABEL_39;
      }

      sub_169A64();
      sub_148B04();

      sub_1489F4(v36);

      v37 = v91;
      if (!v91)
      {
        goto LABEL_38;
      }

      v71 = v32;
      sub_148854();
      v38 = sub_1698D4();
      if (!v38)
      {

LABEL_38:

        goto LABEL_39;
      }

      v91 = v38;
      v70 = v37;
      if (sub_169A54())
      {
        sub_148854();
        v39 = sub_1698D4();
        if (v39)
        {
          sub_13F6BC(v39);
        }
      }

      if ((v2 & 1) == 0)
      {

        goto LABEL_39;
      }

      v2 = 0;
      v84 = v87 + 16;
      v40 = v91;
      v85 = *(v91 + 16);
      v82 = (v5 + 13);
      v72 = (v5 + 4);
      v75 = (v5 + 1);
      v78 = (v87 + 8);
      v68[1] = v87 + 32;
      v69 = _swiftEmptyArrayStorage;
      v81 = enum case for PayloadAttachmentInfo.AttachmentType.full(_:);
      v73 = v24;
      v83 = v91;
      while (1)
      {
        if (v85 == v2)
        {

          goto LABEL_39;
        }

        if (v2 >= *(v40 + 16))
        {
          break;
        }

        v41 = (*(v87 + 80) + 32) & ~*(v87 + 80);
        v79 = *(v87 + 72);
        (*(v87 + 16))(v88, v40 + v41 + v79 * v2, v89);
        sub_169794();
        v42 = sub_1699A4();
        sub_148874(v15, 1, v42);
        v80 = v41;
        if (v50)
        {
          sub_109A0(v15, &qword_1EEBD0, &qword_17A438);
          sub_3CFE4();
          sub_5370(v43, v44, v45, v3);
        }

        else
        {
          sub_169994();
          (*(*(v42 - 8) + 8))(v15, v42);
        }

        (*v82)(v24, v81, v3);
        sub_148950();
        sub_5370(v46, v47, v48, v3);
        v49 = *(v86 + 48);
        v5 = &qword_17A440;
        sub_D4DC4(v26, v11, &qword_1EEBD8, &qword_17A440);
        sub_D4DC4(v24, &v11[v49], &qword_1EEBD8, &qword_17A440);
        sub_1487F0(v11);
        if (v50)
        {
          sub_148A94(v24);
          sub_148A94(v26);
          sub_1487F0(&v11[v49]);
          if (!v50)
          {
            goto LABEL_28;
          }

          sub_148A94(v11);
          goto LABEL_31;
        }

        sub_D4DC4(v11, v20, &qword_1EEBD8, &qword_17A440);
        sub_1487F0(&v11[v49]);
        if (v50)
        {
          sub_148A94(v24);
          sub_148A94(v26);
          (*v75)(v20, v3);
LABEL_28:
          sub_109A0(v11, &qword_1EEBC8, &qword_17A430);
          goto LABEL_30;
        }

        v51 = v15;
        v52 = v26;
        v53 = v77;
        (*v72)(v77, &v11[v49], v3);
        sub_1488A4();
        v55 = sub_1487A4(&qword_1EEBE0, v54, &protocol conformance descriptor for PayloadAttachmentInfo.AttachmentType);
        LODWORD(v74) = sub_148B44(v20, v53, v56, v55);
        v57 = *v75;
        v58 = v53;
        v26 = v52;
        v15 = v51;
        v24 = v73;
        (*v75)(v58, v3);
        sub_109A0(v24, &qword_1EEBD8, &qword_17A440);
        sub_109A0(v26, &qword_1EEBD8, &qword_17A440);
        v57(v20, v3);
        sub_109A0(v11, &qword_1EEBD8, &qword_17A440);
        if (v74)
        {
LABEL_31:
          sub_148AAC();
          v60 = *v59;
          (*v59)(v76, v88, v89);
          v61 = v69;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v90 = v61;
          v74 = v60;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_146820(0, v61[2] + 1, 1);
            v61 = v90;
          }

          v5 = v80;
          v64 = v61[2];
          v63 = v61[3];
          v65 = (v64 + 1);
          if (v64 >= v63 >> 1)
          {
            v66 = sub_148A30(v63);
            v69 = v67;
            sub_146820(v66, v67, 1);
            v65 = v69;
            v61 = v90;
          }

          ++v2;
          v61[2] = v65;
          v69 = v61;
          sub_148AAC();
          v74();
          v40 = v83;
        }

        else
        {
LABEL_30:
          (*v78)(v88, v89);
          ++v2;
          v40 = v83;
        }
      }

      __break(1u);
LABEL_43:
      v32 = sub_148984();
    }
  }

  __break(1u);
}

void sub_142E48()
{
  sub_CA350();
  v2 = sub_169B24();
  sub_9F48();
  v4 = v3;
  __chkstk_darwin(v5);
  sub_A138();
  v44 = v7 - v6;
  v8 = sub_5758(&qword_1EEC08, &qword_17A460);
  sub_10AFC();
  sub_CA380();
  __chkstk_darwin(v9);
  v11 = &v43 - v10;
  v12 = sub_5758(&qword_1EEC10, &qword_17A468);
  v13 = sub_D414(v12);
  __chkstk_darwin(v13);
  sub_A128();
  v16 = v14 - v15;
  __chkstk_darwin(v17);
  sub_148AC4();
  __chkstk_darwin(v18);
  sub_1489CC();
  if (sub_146274(v19) && sub_1698C4())
  {
    sub_169B14();
  }

  else
  {
    sub_3CFE4();
    sub_5370(v20, v21, v22, v2);
  }

  (*(v4 + 104))(v1, enum case for UsoEntity_common_Quantifier.DefinedValues.common_Quantifier_All(_:), v2);
  sub_148950();
  sub_5370(v23, v24, v25, v2);
  v26 = *(v8 + 48);
  sub_D4DC4(v0, v11, &qword_1EEC10, &qword_17A468);
  sub_D4DC4(v1, &v11[v26], &qword_1EEC10, &qword_17A468);
  sub_1487F0(v11);
  if (!v31)
  {
    sub_D4DC4(v11, v16, &qword_1EEC10, &qword_17A468);
    sub_1487F0(&v11[v26]);
    if (!v31)
    {
      v38 = v44;
      (*(v4 + 32))(v44, &v11[v26], v2);
      v39 = sub_1487A4(&qword_1EEC18, &type metadata accessor for UsoEntity_common_Quantifier.DefinedValues, &protocol conformance descriptor for UsoEntity_common_Quantifier.DefinedValues);
      sub_148B44(v16, v38, v40, v39);

      v41 = *(v4 + 8);
      v41(v38, v2);
      sub_109A0(v1, &qword_1EEC10, &qword_17A468);
      sub_109A0(v0, &qword_1EEC10, &qword_17A468);
      v42 = sub_148AD8();
      (v41)(v42);
      sub_109A0(v11, &qword_1EEC10, &qword_17A468);
      goto LABEL_14;
    }

    v32 = sub_148A0C();
    sub_109A0(v32, v33, &qword_17A468);
    v34 = sub_14895C();
    sub_109A0(v34, v35, &qword_17A468);
    v36 = sub_148AD8();
    v37(v36);
LABEL_13:
    sub_109A0(v11, &qword_1EEC08, &qword_17A460);
    goto LABEL_14;
  }

  v27 = sub_148A0C();
  sub_109A0(v27, v28, &qword_17A468);
  v29 = sub_14895C();
  sub_109A0(v29, v30, &qword_17A468);
  sub_1487F0(&v11[v26]);
  if (!v31)
  {
    goto LABEL_13;
  }

  sub_109A0(v11, &qword_1EEC10, &qword_17A468);
LABEL_14:
  sub_CA368();
}

void sub_143214(uint64_t a1)
{
  v2 = sub_169D04();
  v3 = sub_148810();
  sub_13F4E0(v3, v4, v2);
  sub_148900();

  if (v1)
  {
    if (!sub_11A904(v1))
    {

      return;
    }

    if ((v1 & 0xC000000000000001) != 0)
    {
      sub_67D20();
    }

    else
    {
      sub_148A3C();
      if (!v5)
      {
        __break(1u);
        return;
      }

      sub_148A7C();
    }

    sub_169D54();
    sub_148900();

    sub_169934();
    sub_67C60();

    sub_1489F4(v6);

    if (v7)
    {
      sub_148854();
      sub_1698D4();
      sub_67C60();
    }

    else
    {
    }
  }
}

void sub_14330C(uint64_t a1)
{
  v2 = sub_169D04();
  v3 = sub_148810();
  sub_13F4E0(v3, v4, v2);
  sub_148900();

  if (v1)
  {
    if (!sub_11A904(v1))
    {

      return;
    }

    if ((v1 & 0xC000000000000001) != 0)
    {
      sub_67D20();
    }

    else
    {
      sub_148A3C();
      if (!v5)
      {
        __break(1u);
        return;
      }

      sub_148A7C();
    }

    sub_169D54();
    sub_148900();

    sub_169B64();
    sub_67C60();

    sub_1489F4(v6);

    if (v7)
    {
      sub_169B54();
      sub_67C60();
    }

    else
    {
    }
  }
}

void sub_143400(uint64_t a1)
{
  v2 = sub_169D04();
  v3 = sub_148810();
  sub_13F4E0(v3, v4, v2);
  sub_148900();

  if (v1)
  {
    if (sub_11A904(v1))
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        goto LABEL_59;
      }

      sub_148A3C();
      if (v5)
      {
        sub_148A7C();
        while (1)
        {

          v6 = sub_169D54();

          if (!v6)
          {
            break;
          }

          sub_169B64();

          sub_169A94();

          if (!v49)
          {

            return;
          }

          sub_1696F4();

          v7 = sub_169DE4();

          v8 = *(v7 + 16);
          if (!v8)
          {

            v9 = _swiftEmptyArrayStorage;
LABEL_34:
            v32 = v9[2];
            if (v32)
            {
              v33 = v9 + 5;
              v34 = _swiftEmptyArrayStorage;
              do
              {

                v35 = sub_1698D4();

                if (v35)
                {
                  v36 = *(v35 + 16);
                  v37 = v34[2];
                  if (__OFADD__(v37, v36))
                  {
                    goto LABEL_55;
                  }

                  if (!swift_isUniquelyReferenced_nonNull_native() || v37 + v36 > v34[3] >> 1)
                  {
                    sub_108204();
                    v34 = v38;
                  }

                  if (*(v35 + 16))
                  {
                    v39 = (v34[3] >> 1) - v34[2];
                    sub_1697C4();
                    if (v39 < v36)
                    {
                      goto LABEL_57;
                    }

                    swift_arrayInitWithCopy();

                    if (v36)
                    {
                      v40 = v34[2];
                      v41 = __OFADD__(v40, v36);
                      v42 = v40 + v36;
                      if (v41)
                      {
                        goto LABEL_58;
                      }

                      v34[2] = v42;
                    }
                  }

                  else
                  {

                    if (v36)
                    {
                      goto LABEL_56;
                    }
                  }
                }

                v33 += 2;
                --v32;
              }

              while (v32);
            }

            return;
          }

          v49 = _swiftEmptyArrayStorage;
          sub_146878(0, v8, 0);
          v9 = _swiftEmptyArrayStorage;
          v12 = sub_148598(v7);
          v13 = 0;
          v14 = v7 + 64;
          v43 = v7 + 72;
          v44 = v8;
          v45 = v7 + 64;
          if ((v12 & 0x8000000000000000) == 0)
          {
            while (v12 < 1 << *(v7 + 32))
            {
              v15 = v12 >> 6;
              if ((*(v14 + 8 * (v12 >> 6)) & (1 << v12)) == 0)
              {
                goto LABEL_50;
              }

              if (*(v7 + 36) != v10)
              {
                goto LABEL_51;
              }

              v46 = v11;
              v47 = v13;
              v48 = v10;
              v16 = (*(v7 + 48) + 16 * v12);
              v17 = *v16;
              v18 = v16[1];
              v49 = v9;
              v19 = v7;
              v21 = v9[2];
              v20 = v9[3];

              if (v21 >= v20 >> 1)
              {
                sub_146878(v20 > 1, v21 + 1, 1);
              }

              v9[2] = v21 + 1;
              v22 = &v9[2 * v21];
              v22[4] = v17;
              v22[5] = v18;
              v23 = 1 << *(v19 + 32);
              if (v12 >= v23)
              {
                goto LABEL_52;
              }

              v7 = v19;
              v14 = v45;
              v24 = *(v45 + 8 * v15);
              if ((v24 & (1 << v12)) == 0)
              {
                goto LABEL_53;
              }

              if (*(v7 + 36) != v48)
              {
                goto LABEL_54;
              }

              v25 = v24 & (-2 << (v12 & 0x3F));
              if (v25)
              {
                v23 = __clz(__rbit64(v25)) | v12 & 0x7FFFFFFFFFFFFFC0;
              }

              else
              {
                v26 = v9;
                v27 = v15 << 6;
                v28 = v15 + 1;
                v29 = (v43 + 8 * v15);
                while (v28 < (v23 + 63) >> 6)
                {
                  v31 = *v29++;
                  v30 = v31;
                  v27 += 64;
                  ++v28;
                  if (v31)
                  {
                    sub_93A60(v12, v48, v46 & 1);
                    v23 = __clz(__rbit64(v30)) + v27;
                    goto LABEL_25;
                  }
                }

                sub_93A60(v12, v48, v46 & 1);
LABEL_25:
                v9 = v26;
              }

              v13 = v47 + 1;
              if (v47 + 1 == v44)
              {

                goto LABEL_34;
              }

              v11 = 0;
              v10 = *(v7 + 36);
              v12 = v23;
              if (v23 < 0)
              {
                break;
              }
            }
          }

          __break(1u);
LABEL_50:
          __break(1u);
LABEL_51:
          __break(1u);
LABEL_52:
          __break(1u);
LABEL_53:
          __break(1u);
LABEL_54:
          __break(1u);
LABEL_55:
          __break(1u);
LABEL_56:
          __break(1u);
LABEL_57:
          __break(1u);
LABEL_58:
          __break(1u);
LABEL_59:
          sub_67D20();
        }
      }

      else
      {
        __break(1u);
      }
    }

    else
    {
    }
  }
}

void sub_1438A4(uint64_t a1)
{
  v2 = sub_169D04();
  v3 = sub_148840();
  sub_13F4E0(v3, v4, v2);
  sub_148900();

  if (v1)
  {
    if (!sub_11A904(v1))
    {

      return;
    }

    if ((v1 & 0xC000000000000001) != 0)
    {
      sub_67D20();
    }

    else
    {
      sub_148A3C();
      if (!v5)
      {
        __break(1u);
        return;
      }

      sub_148A7C();
    }

    sub_169D54();
    sub_148900();

    sub_169A44();
    sub_67C60();

    sub_1489F4(v6);
    if (v12)
    {
      sub_169A34();
      v8 = v7;

      if ((v8 & 1) == 0)
      {

        sub_16AF04();
        goto LABEL_16;
      }
    }

    sub_169A24();
    sub_148B24();
    if (v12)
    {
      v9 = sub_169A14();
      v11 = v10;

      if (v11)
      {

        objc_allocWithZone(NSDecimalNumber);
        sub_146378(v9, v11);
LABEL_16:
        sub_67C60();

        return;
      }
    }

    sub_169C14();
    sub_148B24();

    if (v12)
    {

      if ((sub_13E96C(-3.4028e38, 3.4028e38, 0.1, 0.3) & 0x100000000) == 0)
      {
        sub_16A8F4();
        goto LABEL_16;
      }
    }
  }
}

void sub_143A60()
{
  v0 = sub_5758(&qword_1EEBB0, &unk_17A3F0);
  sub_D414(v0);
  sub_CA380();
  __chkstk_darwin(v1);
  v3 = v24 - v2;
  v4 = sub_1699D4();
  sub_9F48();
  v6 = v5;
  __chkstk_darwin(v7);
  sub_A138();
  v10 = v9 - v8;
  v11 = sub_169D04();
  v12 = sub_148840();
  v14 = sub_13F4E0(v12, v13, v11);

  if (v14)
  {
    if (!sub_11A904(v14))
    {

      return;
    }

    if ((v14 & 0xC000000000000001) != 0)
    {
      sub_148984();
    }

    else
    {
      sub_1488BC();
      if (!v15)
      {
        __break(1u);
        return;
      }
    }

    v16 = sub_169D54();

    if (v16)
    {
      sub_1699E4();

      sub_1489F4(v17);

      if (v24[1])
      {
        sub_1699B4();

        sub_148874(v3, 1, v4);
        if (!v18)
        {
          v22 = sub_148A18();
          v23(v22);
          sub_1699C4();

          (*(v6 + 8))(v10, v4);
          return;
        }
      }

      else
      {

        sub_3CFE4();
        sub_5370(v19, v20, v21, v4);
      }

      sub_109A0(v3, &qword_1EEBB0, &unk_17A3F0);
    }
  }
}

void sub_143CC0(uint64_t a1)
{
  v2 = sub_169D04();
  v3 = sub_148840();
  sub_13F4E0(v3, v4, v2);
  sub_148900();

  if (!v1)
  {
    return;
  }

  if (!sub_11A904(v1))
  {
LABEL_15:

    return;
  }

  if ((v1 & 0xC000000000000001) != 0)
  {
    sub_67D20();
  }

  else
  {
    sub_148A3C();
    if (!v5)
    {
      __break(1u);
      goto LABEL_34;
    }

    sub_148A7C();
  }

  sub_169D54();
  sub_148900();

  sub_169C14();

  sub_169A94();
  if (!v17)
  {
    goto LABEL_14;
  }

  v6 = sub_169BF4();

  if (!v6)
  {
    goto LABEL_14;
  }

  sub_1696F4();

  v7 = sub_169E04();
  v9 = v8;

  if (v7 == 0x445F6E6F6D6D6F63 && v9 == 0xEE006C616D696365)
  {
  }

  else
  {
    sub_148A0C();
    v11 = sub_16AE54();

    if ((v11 & 1) == 0)
    {

LABEL_14:

      return;
    }
  }

  sub_169A94();

  v12 = sub_169C04();

  if (!v12)
  {

LABEL_29:

    return;
  }

  sub_1696F4();

  v13 = sub_169DE4();

  v14 = sub_13F4E0(0x5672656765746E69, 0xEC00000065756C61, v13);

  if (!v14)
  {

    goto LABEL_29;
  }

  if (!sub_11A904(v14))
  {

    goto LABEL_15;
  }

  if ((v14 & 0xC000000000000001) != 0)
  {
LABEL_34:
    sub_148984();
    goto LABEL_25;
  }

  sub_1488BC();
  if (v15)
  {

LABEL_25:

    sub_169D44();
    if ((v16 & 1) == 0)
    {
      sub_16AF04();
      sub_67C60();
    }

    goto LABEL_29;
  }

  __break(1u);
}

void sub_143FF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_CA350();
  a19 = v20;
  a20 = v21;
  v22 = sub_169724();
  sub_9F48();
  v24 = v23;
  __chkstk_darwin(v25);
  sub_A138();
  v28 = v27 - v26;
  v29 = sub_1697C4();
  sub_9F48();
  v31 = v30;
  __chkstk_darwin(v32);
  sub_A138();
  v35 = v34 - v33;
  sub_142688();
  if (!v36)
  {
    goto LABEL_101;
  }

  v37 = v36;
  v38 = *(v36 + 16);
  if (!v38)
  {
LABEL_98:

    goto LABEL_101;
  }

  v39 = 0;
  sub_10BDEC();
  v93 = v37 + v40;
  sub_D434();
  v95 = v41;
  sub_D434();
  sub_D434();
  sub_D434();
  sub_D434();
  sub_D434();
  v94 = v22;
  v96 = (v24 + 8);
  v92 = (v31 + 8);
  v90 = v29;
  v91 = v24;
  v89 = v37;
  v88 = v35;
  v86 = v31;
  v85 = v38;
  while (1)
  {
    if (v39 >= *(v37 + 16))
    {
      goto LABEL_103;
    }

    (*(v31 + 16))(v35, v93 + *(v31 + 72) * v39, v29);
    v97 = *(sub_169764() + 16);
    if (v97)
    {
      break;
    }

LABEL_97:
    ++v39;
    (*v92)(v35, v29);
    if (v39 == v38)
    {
      goto LABEL_98;
    }
  }

  v87 = v39;
  v42 = 0;
  sub_10BDEC();
  v98 = v43 + v44;
  v99 = v43;
  v45 = 0xD000000000000011;
  v46 = v95;
  while (1)
  {
    if (v42 >= *(v43 + 16))
    {
      __break(1u);
LABEL_103:
      __break(1u);
      JUMPOUT(0x144A64);
    }

    (*(v24 + 16))(v28, v98 + *(v24 + 72) * v42, v22);
    if (sub_169714() == v45 + 6 && v46 == v47)
    {
    }

    else
    {
      v49 = sub_16AE54();

      if ((v49 & 1) == 0)
      {
        goto LABEL_94;
      }
    }

    sub_169704();
    if (v50)
    {
      break;
    }

LABEL_94:
    ++v42;
    v83 = sub_CA57C();
    v84(v83);
    v43 = v99;
    if (v42 == v97)
    {

      v29 = v90;
      v37 = v89;
      v35 = v88;
      v31 = v86;
      v38 = v85;
      v39 = v87;
      goto LABEL_97;
    }
  }

  v51 = sub_82120();
  v52 = v51;
  v53 = v51;
  v54 = sub_10934C(&off_1D1120);
  if (!v54[2])
  {
LABEL_93:

    v22 = v94;
    v24 = v91;
    v45 = 0xD000000000000011;
    v46 = v95;
    goto LABEL_94;
  }

  sub_16AF14();
  sub_82168(v53, v55, v56);
  sub_16A6F4();

  v57 = sub_16AF54();
  v22 = (v54 + 7);
  v58 = ~(-1 << *(v54 + 32));
  while (2)
  {
    v24 = v57 & v58;
    if (((*(v22 + (((v57 & v58) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v57 & v58)) & 1) == 0)
    {
      goto LABEL_93;
    }

    v59 = 0xE400000000000000;
    v60 = 1935762529;
    switch(*(v54[6] + v24))
    {
      case 1:
        v60 = 0x7563726943726961;
        v59 = 0xEE006E6F6974616CLL;
        break;
      case 2:
        v60 = 0xD000000000000011;
        v66 = &a12;
        goto LABEL_40;
      case 3:
        v59 = 0xE700000000000000;
        v60 = 0x79726574746162;
        break;
      case 4:
        v60 = 0x6F43657369757263;
        v63 = 0x6C6F72746ELL;
        goto LABEL_48;
      case 5:
        v60 = 0x6574736F72666564;
        v59 = 0xE900000000000072;
        break;
      case 6:
        sub_10C0D0();
        v60 = v68 + 2;
        v66 = &a13;
        goto LABEL_40;
      case 7:
        v59 = 0xE800000000000000;
        v60 = 0x64656570536E6166;
        break;
      case 8:
        v60 = 1818588518;
        break;
      case 9:
        sub_10C0D0();
        v60 = v65 + 2;
        v66 = &a14;
        goto LABEL_40;
      case 0xA:
        v59 = 0xE800000000000000;
        v64 = 1633906540;
        goto LABEL_43;
      case 0xB:
        v60 = 0x616E65746E69616DLL;
        v59 = 0xEB0000000065636ELL;
        break;
      case 0xC:
        v59 = 0xE800000000000000;
        v64 = 1769172848;
LABEL_43:
        v60 = v64 | 0x6E6F697400000000;
        break;
      case 0xD:
        v60 = 0xD000000000000011;
        v66 = &a15;
        goto LABEL_40;
      case 0xE:
        sub_10BE84();
        v59 = v62 + 1011;
        v60 = 0x7373614D74616573;
        break;
      case 0xF:
        v60 = 0x6E6F7268636E7973;
        v59 = 0xEF6E6F6974617A69;
        break;
      case 0x10:
        v60 = 0x6572705F65726974;
        v61 = 1920299891;
        goto LABEL_47;
      case 0x11:
        v59 = 0xE700000000000000;
        v60 = 0x6E776F6E6B6E75;
        break;
      case 0x12:
        v60 = 0x656C6553746E6576;
        v69 = 1919906915;
        goto LABEL_50;
      case 0x13:
        v60 = 0x566C6172656E6567;
        v61 = 1836412015;
LABEL_47:
        v63 = v61 & 0xFFFF0000FFFFFFFFLL | 0x6500000000;
LABEL_48:
        v59 = v63 & 0xFFFFFFFFFFFFLL | 0xED00000000000000;
        break;
      case 0x14:
        v60 = 0x756C6F566E69616DLL;
        v59 = 0xEA0000000000656DLL;
        break;
      case 0x15:
        sub_10C0D0();
        v60 = v67 - 1;
        v66 = &a16;
LABEL_40:
        v59 = *(v66 - 32);
        break;
      case 0x16:
        sub_10BE84();
        v59 = v70 + 2567;
        v60 = 0x6C6F56656E6F6870;
        break;
      case 0x17:
        v60 = 0x6F567265676E6972;
        v69 = 1701672300;
LABEL_50:
        v59 = v69 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
        break;
      case 0x18:
        v59 = 0xE500000000000000;
        v60 = 0x6563696F76;
        break;
      case 0x19:
        v59 = 0xEA00000000006E6FLL;
        v60 = 0x697461676976616ELL;
        break;
      case 0x1A:
        v60 = 1819042147;
        break;
      case 0x1B:
        v59 = 0xE600000000000000;
        v60 = 0x7265676E6972;
        break;
      case 0x1C:
        v60 = 1769105779;
        break;
      default:
        break;
    }

    v46 = 0xE400000000000000;
    v71 = 1935762529;
    switch(v52)
    {
      case 0:
        goto LABEL_87;
      case 1:
        v71 = 0x7563726943726961;
        v46 = 0xEE006E6F6974616CLL;
        goto LABEL_87;
      case 2:
        v71 = 0xD000000000000011;
        v77 = &a12;
        goto LABEL_74;
      case 3:
        v46 = 0xE700000000000000;
        v71 = 0x79726574746162;
        goto LABEL_87;
      case 4:
        v71 = 0x6F43657369757263;
        v74 = 0x6C6F72746ELL;
        goto LABEL_82;
      case 5:
        v71 = 0x6574736F72666564;
        v46 = 0xE900000000000072;
        goto LABEL_87;
      case 6:
        sub_10C0D0();
        v71 = v79 + 2;
        v77 = &a13;
        goto LABEL_74;
      case 7:
        v46 = 0xE800000000000000;
        v71 = 0x64656570536E6166;
        goto LABEL_87;
      case 8:
        v71 = 1818588518;
        goto LABEL_87;
      case 9:
        sub_10C0D0();
        v71 = v76 + 2;
        v77 = &a14;
        goto LABEL_74;
      case 10:
        v46 = 0xE800000000000000;
        v75 = 1633906540;
        goto LABEL_77;
      case 11:
        v71 = 0x616E65746E69616DLL;
        v46 = 0xEB0000000065636ELL;
        goto LABEL_87;
      case 12:
        v46 = 0xE800000000000000;
        v75 = 1769172848;
LABEL_77:
        v71 = v75 | 0x6E6F697400000000;
        goto LABEL_87;
      case 13:
        v71 = 0xD000000000000011;
        v77 = &a15;
        goto LABEL_74;
      case 14:
        sub_10BE84();
        v46 = v73 + 1011;
        v71 = 0x7373614D74616573;
        goto LABEL_87;
      case 15:
        v71 = 0x6E6F7268636E7973;
        v46 = 0xEF6E6F6974617A69;
        goto LABEL_87;
      case 16:
        v71 = 0x6572705F65726974;
        v72 = 1920299891;
        goto LABEL_81;
      case 17:
        v46 = 0xE700000000000000;
        v71 = 0x6E776F6E6B6E75;
        goto LABEL_87;
      case 18:
        v71 = 0x656C6553746E6576;
        v80 = 1919906915;
        goto LABEL_84;
      case 19:
        v71 = 0x566C6172656E6567;
        v72 = 1836412015;
LABEL_81:
        v74 = v72 & 0xFFFF0000FFFFFFFFLL | 0x6500000000;
LABEL_82:
        v46 = v74 & 0xFFFFFFFFFFFFLL | 0xED00000000000000;
        goto LABEL_87;
      case 20:
        v71 = 0x756C6F566E69616DLL;
        v46 = 0xEA0000000000656DLL;
        goto LABEL_87;
      case 21:
        sub_10C0D0();
        v71 = v78 - 1;
        v77 = &a16;
LABEL_74:
        v46 = *(v77 - 32);
        goto LABEL_87;
      case 22:
        sub_10BE84();
        v46 = v81 + 2567;
        v71 = 0x6C6F56656E6F6870;
        goto LABEL_87;
      case 23:
        v71 = 0x6F567265676E6972;
        v80 = 1701672300;
LABEL_84:
        v46 = v80 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
        goto LABEL_87;
      case 24:
        v46 = 0xE500000000000000;
        v71 = 0x6563696F76;
        goto LABEL_87;
      case 25:
        v46 = 0xEA00000000006E6FLL;
        v71 = 0x697461676976616ELL;
        goto LABEL_87;
      case 26:
        v71 = 1819042147;
        goto LABEL_87;
      case 27:
        v46 = 0xE600000000000000;
        v71 = 0x7265676E6972;
        goto LABEL_87;
      case 28:
        v71 = 1769105779;
LABEL_87:
        if (v60 != v71 || v59 != v46)
        {
          v45 = sub_16AE54();

          v57 = v24 + 1;
          if (v45)
          {
            goto LABEL_100;
          }

          continue;
        }

LABEL_100:

        (*v96)(v28, v94);
        (*v92)(v88, v90);

LABEL_101:
        sub_CA368();
        return;
      default:
        goto LABEL_94;
    }
  }
}

void sub_144BF8()
{
  sub_CA350();
  v51 = v2;
  v3 = sub_1699D4();
  sub_9F48();
  v5 = v4;
  __chkstk_darwin(v6);
  sub_A138();
  v9 = v8 - v7;
  v10 = sub_5758(&qword_1EEBB8, &qword_17A428);
  sub_10AFC();
  sub_CA380();
  __chkstk_darwin(v11);
  v13 = &v49 - v12;
  v14 = sub_5758(&qword_1EEBB0, &unk_17A3F0);
  v15 = sub_D414(v14);
  __chkstk_darwin(v15);
  sub_A128();
  v18 = v16 - v17;
  __chkstk_darwin(v19);
  sub_148AC4();
  __chkstk_darwin(v20);
  sub_1489CC();
  v21 = sub_169D04();
  v22 = sub_148840();
  v24 = sub_13F4E0(v22, v23, v21);

  if (!v24)
  {
    goto LABEL_19;
  }

  if (!sub_11A904(v24))
  {

    goto LABEL_19;
  }

  v50 = v5;
  if ((v24 & 0xC000000000000001) != 0)
  {
    sub_148984();
LABEL_6:

    v26 = sub_169D54();

    if (v26)
    {
      sub_1699E4();

      sub_1489F4(v27);

      if (v52)
      {
        v49 = v52;
        sub_1699B4();
        (*(v50 + 104))(v1, *v51, v3);
        sub_148950();
        sub_5370(v28, v29, v30, v3);
        v31 = *(v10 + 48);
        sub_D4DC4(v0, v13, &qword_1EEBB0, &unk_17A3F0);
        sub_D4DC4(v1, &v13[v31], &qword_1EEBB0, &unk_17A3F0);
        sub_1487F0(v13);
        if (!v36)
        {
          sub_D4DC4(v13, v18, &qword_1EEBB0, &unk_17A3F0);
          sub_1487F0(&v13[v31]);
          if (!v36)
          {
            v43 = v50;
            (*(v50 + 32))(v9, &v13[v31], v3);
            v44 = sub_1487A4(&qword_1EEBC0, &type metadata accessor for UsoEntity_common_Number.DefinedValues, &protocol conformance descriptor for UsoEntity_common_Number.DefinedValues);
            sub_148B44(v18, v9, v45, v44);

            v46 = *(v43 + 8);
            v47 = sub_148AD8();
            v46(v47);
            sub_109A0(v1, &qword_1EEBB0, &unk_17A3F0);
            sub_109A0(v0, &qword_1EEBB0, &unk_17A3F0);
            v48 = sub_148A18();
            v46(v48);
            sub_109A0(v13, &qword_1EEBB0, &unk_17A3F0);
            goto LABEL_19;
          }

          v37 = sub_148A0C();
          sub_109A0(v37, v38, &unk_17A3F0);
          v39 = sub_14895C();
          sub_109A0(v39, v40, &unk_17A3F0);
          v41 = sub_148A18();
          v42(v41);
LABEL_18:
          sub_109A0(v13, &qword_1EEBB8, &qword_17A428);
          goto LABEL_19;
        }

        v32 = sub_148A0C();
        sub_109A0(v32, v33, &unk_17A3F0);
        v34 = sub_14895C();
        sub_109A0(v34, v35, &unk_17A3F0);
        sub_1487F0(&v13[v31]);
        if (!v36)
        {
          goto LABEL_18;
        }

        sub_109A0(v13, &qword_1EEBB0, &unk_17A3F0);
      }

      else
      {
      }
    }

LABEL_19:
    sub_CA368();
    return;
  }

  sub_1488BC();
  if (v25)
  {

    goto LABEL_6;
  }

  __break(1u);
}

void sub_145070()
{
  sub_5758(&qword_1E5F70, &unk_16F3F0);
  inited = swift_initStackObject();
  v1 = 0;
  v2 = sub_1488C8(inited, xmmword_16D3A0);
  v2[2].n128_u64[1] = v3;
  v4 = &v2[2].n128_i8[8];
  sub_148918(v2);
  v5 = _swiftEmptyArrayStorage;
  v55[0] = _swiftEmptyArrayStorage;
LABEL_2:
  v6 = &v4[16 * v1++];
  while (v1 != 3)
  {
    v8 = *(v6 - 1);
    v7 = *v6;

    v9 = sub_169D04();
    if (!*(v9 + 16) || (v10 = sub_146404(v8, v7), (v11 & 1) == 0))
    {
LABEL_13:

      goto LABEL_14;
    }

    v12 = *(*(v9 + 56) + 8 * v10);

    if (v12 >> 62)
    {
      if (!sub_148A48())
      {
        goto LABEL_13;
      }
    }

    else if (!*(&dword_10 + (v12 & 0xFFFFFFFFFFFFFF8)))
    {
      goto LABEL_13;
    }

    if ((v12 & 0xC000000000000001) != 0)
    {
      sub_148984();
    }

    else
    {
      sub_1488BC();
      if (!v13)
      {
        goto LABEL_85;
      }

      sub_148B5C();
    }

    v14 = sub_169D54();

    if (v14)
    {
      sub_16A7B4();
      v15 = *(&dword_18 + (v55[0] & 0xFFFFFFFFFFFFFF8));
      if (*(&dword_10 + (v55[0] & 0xFFFFFFFFFFFFFF8)) >= v15 >> 1)
      {
        sub_148A30(v15);
        sub_16A7F4();
      }

      sub_16A814();
      v5 = v55[0];
      goto LABEL_2;
    }

LABEL_14:
    ++v1;
    v6 += 2;
  }

  swift_setDeallocating();
  sub_EFFB0();
  v55[0] = _swiftEmptyArrayStorage;
  v16 = sub_11A904(v5);
  for (i = 0; ; ++i)
  {
    if (v16 == i)
    {

      v21 = v55[0];
      v22 = sub_11A904(v55[0]);
      v23 = 0;
      v52 = v55[0] & 0xC000000000000001;
      v24 = _swiftEmptyArrayStorage;
      v51 = v55[0] + 32;
      v48 = v22;
      v49 = v55[0];
      while (1)
      {
        if (v23 == v22)
        {

          return;
        }

        if (v52)
        {
          v25 = sub_16AD04();
        }

        else
        {
          if (v23 >= *(v21 + 16))
          {
            goto LABEL_78;
          }

          v25 = *(v51 + 8 * v23);
        }

        v26 = __OFADD__(v23++, 1);
        if (v26)
        {
          goto LABEL_77;
        }

        sub_145660(v25);
        v28 = v27;

        if (v28 >> 62)
        {
          v29 = sub_16ADC4();
        }

        else
        {
          v29 = *(&dword_10 + (v28 & 0xFFFFFFFFFFFFFF8));
        }

        v30 = v24 >> 62;
        if (v24 >> 62)
        {
          v31 = sub_16ADC4();
        }

        else
        {
          v31 = *(&dword_10 + (v24 & 0xFFFFFFFFFFFFFF8));
        }

        v32 = v31 + v29;
        if (__OFADD__(v31, v29))
        {
          goto LABEL_79;
        }

        if (!swift_isUniquelyReferenced_nonNull_bridgeObject())
        {
          break;
        }

        if (v30)
        {
          goto LABEL_53;
        }

        v33 = v24 & 0xFFFFFFFFFFFFFF8;
        if (v32 > *(&dword_18 + (v24 & 0xFFFFFFFFFFFFFF8)) >> 1)
        {
          goto LABEL_54;
        }

LABEL_55:
        v53 = v33;
        v54 = v24;
        v34 = *(v33 + 16);
        v35 = (*(v33 + 24) >> 1) - v34;
        v36 = v33 + 8 * v34;
        if (v28 >> 62)
        {
          v39 = sub_16ADC4();
          if (!v39)
          {
            goto LABEL_69;
          }

          v40 = v39;
          v41 = sub_16ADC4();
          if (v35 < v41)
          {
            goto LABEL_83;
          }

          if (v40 < 1)
          {
            goto LABEL_84;
          }

          v50 = v41;
          sub_37284(&qword_1EEC00, &qword_1EEBF8, &qword_17A458, &protocol conformance descriptor for [A]);
          for (j = 0; j != v40; ++j)
          {
            sub_5758(&qword_1EEBF8, &qword_17A458);
            v43 = sub_D1904(v55, j, v28);
            v45 = *v44;

            v43(v55, 0);
            *(v36 + 32 + 8 * j) = v45;
          }

          v22 = v48;
          v21 = v49;
          v38 = v50;
LABEL_65:

          v24 = v54;
          if (v38 < v29)
          {
            goto LABEL_80;
          }

          if (v38 > 0)
          {
            v46 = *(v53 + 16);
            v26 = __OFADD__(v46, v38);
            v47 = v46 + v38;
            if (v26)
            {
              goto LABEL_81;
            }

            *(v53 + 16) = v47;
          }
        }

        else
        {
          v37 = *(&dword_10 + (v28 & 0xFFFFFFFFFFFFFF8));
          if (v37)
          {
            if (v35 < v37)
            {
              goto LABEL_82;
            }

            v38 = *(&dword_10 + (v28 & 0xFFFFFFFFFFFFFF8));
            sub_169E24();
            swift_arrayInitWithCopy();
            goto LABEL_65;
          }

LABEL_69:

          if (v29 > 0)
          {
            goto LABEL_80;
          }
        }
      }

      if (v30)
      {
LABEL_53:
        sub_16ADC4();
      }

LABEL_54:
      v24 = sub_16AD14();
      v33 = v24 & 0xFFFFFFFFFFFFFF8;
      goto LABEL_55;
    }

    if ((v5 & 0xC000000000000001) != 0)
    {
      sub_148A18();
      sub_16AD04();
    }

    else
    {
      if (i >= *(&dword_10 + (v5 & 0xFFFFFFFFFFFFFF8)))
      {
        goto LABEL_76;
      }
    }

    if (__OFADD__(i, 1))
    {
      break;
    }

    if (sub_169E04() == 0xD000000000000011 && 0x800000000017E320 == v18)
    {
    }

    else
    {
      v20 = sub_16AE54();

      if ((v20 & 1) == 0)
      {

        continue;
      }
    }

    sub_16AD34();
    sub_16AD64();
    sub_16AD74();
    sub_16AD44();
  }

  __break(1u);
LABEL_76:
  __break(1u);
LABEL_77:
  __break(1u);
LABEL_78:
  __break(1u);
LABEL_79:
  __break(1u);
LABEL_80:
  __break(1u);
LABEL_81:
  __break(1u);
LABEL_82:
  __break(1u);
LABEL_83:
  __break(1u);
LABEL_84:
  __break(1u);
LABEL_85:
  __break(1u);
}

void sub_145660(uint64_t a1)
{
  v2 = sub_169DE4();
  v3 = sub_13F4E0(0xD000000000000016, 0x8000000000191290, v2);

  if (!v3)
  {
    goto LABEL_8;
  }

  if (!sub_11A904(v3))
  {

LABEL_8:
    v5 = 0;
    goto LABEL_9;
  }

  if ((v3 & 0xC000000000000001) != 0)
  {
    sub_148984();
    goto LABEL_6;
  }

  sub_1488BC();
  if (v4)
  {

LABEL_6:

    v5 = sub_169D54();

LABEL_9:
    sub_145784(a1);
    sub_145784(v5);
    sub_13F7FC(v6, sub_11B48C, sub_147C28);

    return;
  }

  __break(1u);
}

void sub_145784(uint64_t a1)
{
  if (a1)
  {

    v1 = sub_169DE4();
    v2 = sub_13F4E0(0x73656D616ELL, 0xE500000000000000, v1);

    if (v2)
    {
      v3 = sub_11A904(v2);
      v4 = 0;
      while (1)
      {
        if (v3 == v4)
        {

          return;
        }

        if ((v2 & 0xC000000000000001) != 0)
        {
          sub_16AD04();
        }

        else
        {
          if (v4 >= *(&dword_10 + (v2 & 0xFFFFFFFFFFFFFF8)))
          {
            goto LABEL_18;
          }
        }

        v5 = v4 + 1;
        if (__OFADD__(v4, 1))
        {
          break;
        }

        v6 = sub_169D54();

        ++v4;
        if (v6)
        {
          sub_16A7B4();
          if (*(&dword_10 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >> 1)
          {
            sub_16A7F4();
          }

          sub_16A814();
          v4 = v5;
        }
      }

      __break(1u);
LABEL_18:
      __break(1u);
    }

    else
    {
    }
  }
}

void sub_145904(void (*a1)(void, __n128))
{
  v2 = sub_5758(&qword_1ED140, &qword_178228);
  sub_D414(v2);
  sub_CA380();
  __chkstk_darwin(v3);
  v5 = &v19 - v4;
  v6 = sub_169D04();
  v7 = sub_13F4E0(0x6D6572757361656DLL, 0xEB00000000746E65, v6);

  if (!v7)
  {
    goto LABEL_22;
  }

  if (!sub_11A904(v7))
  {
    goto LABEL_21;
  }

  if ((v7 & 0xC000000000000001) != 0)
  {
    sub_148984();
  }

  else
  {
    sub_1488BC();
    if (!v8)
    {
      __break(1u);
      goto LABEL_37;
    }
  }

  v9 = sub_169D54();

  if (!v9)
  {
    goto LABEL_22;
  }

  sub_169B44();

  sub_1489F4(v10);

  if (!v20)
  {
    goto LABEL_34;
  }

  v11 = sub_169B34();
  v12 = v11;
  if (!v11)
  {

    goto LABEL_18;
  }

  if (!sub_11A904(v11))
  {

LABEL_21:

    goto LABEL_22;
  }

  if ((v12 & 0xC000000000000001) != 0)
  {
LABEL_37:
    sub_148984();
LABEL_13:

    sub_1698B4();

    if (v20)
    {
      if (sub_169C74())
      {
        sub_1696F4();
      }

      (a1)(0);
      sub_169A94();

      if (!v20)
      {

        goto LABEL_22;
      }

      if (sub_169C64())
      {
        sub_148854();
        v14 = sub_1698D4();

        if (v14)
        {
          sub_10152C(0x6D6572757361656DLL, 0xEF74696E55746E65, v14, v5);

          v15 = sub_169724();
          sub_148874(v5, 1, v15);
          if (!v16)
          {
            sub_169704();
            v18 = v17;

            (*(*(v15 - 8) + 8))(v5, v15);
            if (v18)
            {
              goto LABEL_22;
            }

            goto LABEL_34;
          }

          sub_109A0(v5, &qword_1ED140, &qword_178228);
LABEL_22:
          sub_14895C();
          return;
        }

LABEL_18:

        goto LABEL_22;
      }
    }

    else
    {
    }

LABEL_34:

    goto LABEL_22;
  }

  sub_1488BC();
  if (v13)
  {
    sub_148B5C();
    goto LABEL_13;
  }

  __break(1u);
}

uint64_t sub_145CE8(uint64_t a1)
{
  v1 = sub_169D04();
  v2 = sub_13F4E0(0x7265626D756ELL, 0xE600000000000000, v1);

  if (v2)
  {
    result = sub_11A904(v2);
    if (result)
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        sub_16AD04();
      }

      else
      {
        if (!*(&dword_10 + (v2 & 0xFFFFFFFFFFFFFF8)))
        {
          __break(1u);
          return result;
        }
      }

      v4 = sub_169D54();

      if (v4)
      {
        sub_169A44();

        sub_169A94();

        return v5;
      }
    }

    else
    {
    }
  }

  return 0;
}

uint64_t sub_145DE0()
{
  v0 = sub_5758(&qword_1ED140, &qword_178228);
  __chkstk_darwin(v0 - 8);
  v2 = &v14 - v1;
  v3 = sub_169D04();
  v4 = sub_13F4E0(0x6D6572757361656DLL, 0xEB00000000746E65, v3);

  if (!v4)
  {
    return 0;
  }

  if (!sub_11A904(v4))
  {
    goto LABEL_21;
  }

  if ((v4 & 0xC000000000000001) != 0)
  {
    sub_16AD04();
  }

  else
  {
    if (!*(&dword_10 + (v4 & 0xFFFFFFFFFFFFFF8)))
    {
      __break(1u);
      goto LABEL_39;
    }
  }

  v5 = sub_169D54();

  if (!v5)
  {
    return 0;
  }

  sub_169B44();

  sub_169A94();

  if (!v15)
  {
LABEL_16:

    return 0;
  }

  v6 = sub_169B34();
  v7 = v6;
  if (!v6)
  {

LABEL_18:

    return 0;
  }

  result = sub_11A904(v6);
  if (!result)
  {

LABEL_21:

    return 0;
  }

  if ((v7 & 0xC000000000000001) != 0)
  {
LABEL_39:
    sub_16AD04();
LABEL_13:

    sub_1698B4();

    if (v15)
    {
      if (sub_169C74())
      {
        sub_1696F4();
      }

      sub_169A44();
      sub_169A94();

      v9 = v15;
      if (!v15)
      {

        return v9;
      }

      if (sub_169C64())
      {
        sub_1696F4();
      }

      sub_169BE4();
      sub_169A94();

      if (v15)
      {
        v10 = sub_1698D4();
        if (v10)
        {
          sub_10152C(0x74617265706D6574, 0xEF74696E55657275, v10, v2);

          v11 = sub_169724();
          if (sub_9E2C(v2, 1, v11) != 1)
          {
            sub_169704();
            v13 = v12;

            (*(*(v11 - 8) + 8))(v2, v11);
            if (!v13)
            {

              return 0;
            }

            return v9;
          }

          sub_109A0(v2, &qword_1ED140, &qword_178228);
          return 0;
        }

        goto LABEL_18;
      }
    }

    else
    {
    }

    goto LABEL_16;
  }

  if (*(&dword_10 + (v7 & 0xFFFFFFFFFFFFFF8)))
  {

    goto LABEL_13;
  }

  __break(1u);
  return result;
}

uint64_t sub_146274(uint64_t a1)
{
  v1 = sub_169D04();
  v2 = sub_13F4E0(0x69746E4572657375, 0xEC00000073656974, v1);

  if (v2)
  {
    result = sub_11A904(v2);
    if (result)
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        sub_16AD04();
      }

      else
      {
        if (!*(&dword_10 + (v2 & 0xFFFFFFFFFFFFFF8)))
        {
          __break(1u);
          return result;
        }
      }

      v4 = sub_169D54();

      if (v4)
      {
        sub_169664();

        sub_169A94();

        return v5;
      }
    }

    else
    {
    }
  }

  return 0;
}

id sub_146378(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = sub_16A644();
  }

  else
  {
    v3 = 0;
  }

  v4 = [v2 initWithString:v3];

  return v4;
}

unint64_t sub_1463E0(unint64_t result, char a2, uint64_t a3)
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

unint64_t sub_146404(uint64_t a1, uint64_t a2)
{
  sub_16AF14();
  sub_16A6F4();
  v4 = sub_16AF54();

  return sub_146570(a1, a2, v4);
}

unint64_t sub_14647C(Swift::UInt64 a1)
{
  sub_16AF14();
  sub_16AF44(a1);
  v2 = sub_16AF54();

  return sub_146624(a1, v2);
}

unint64_t sub_1464E8(uint64_t a1)
{
  v2 = v1;
  v4 = sub_16AAC4(*(v2 + 40));

  return sub_146684(a1, v4);
}

unint64_t sub_14652C(uint64_t a1)
{
  v2 = v1;
  v4 = sub_16AC64(*(v2 + 40));

  return sub_14675C(a1, v4);
}

unint64_t sub_146570(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = ~(-1 << *(v3 + 32));
  for (i = a3 & v6; ((1 << i) & *(v3 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v6)
  {
    v8 = (*(v3 + 48) + 16 * i);
    v9 = *v8 == a1 && v8[1] == a2;
    if (v9 || (sub_16AE54() & 1) != 0)
    {
      break;
    }
  }

  return i;
}

unint64_t sub_146624(uint64_t a1, uint64_t a2)
{
  v3 = ~(-1 << *(v2 + 32));
    ;
  }

  return i;
}

unint64_t sub_146684(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = v2 + 64;
  v5 = ~(-1 << *(v2 + 32));
  for (i = a2 & v5; ((1 << i) & *(v4 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v5)
  {
    sub_16484(0, &qword_1E6310, NSNumber_ptr);
    v7 = *(*(v3 + 48) + 8 * i);
    v8 = sub_16AAD4();

    if (v8)
    {
      break;
    }
  }

  return i;
}

unint64_t sub_14675C(uint64_t a1, uint64_t a2)
{
  v3 = ~(-1 << *(v2 + 32));
  for (i = a2 & v3; ((1 << i) & *(v2 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v3)
  {
    sub_F7038(*(v2 + 48) + 40 * i, v7);
    v5 = sub_16AC74();
    sub_472B0(v7);
    if (v5)
    {
      break;
    }
  }

  return i;
}

void *sub_146898(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_146C24(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1468B8(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_146D3C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1468D8(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_146E34(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1468F8(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_146F4C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_146970(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_14713C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_146990(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_147254(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1469B0(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_14736C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1469D0(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_147484(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1469F0(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_147748(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_146B18(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1479F8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void sub_146B38(char a1, uint64_t a2, char a3, uint64_t a4)
{
  if ((a3 & 1) == 0)
  {
    v6 = a2;
    goto LABEL_7;
  }

  sub_10BC1C();
  if (v7 == v8)
  {
LABEL_7:
    v9 = *(a4 + 16);
    if (v6 <= v9)
    {
      v10 = *(a4 + 16);
    }

    else
    {
      v10 = v6;
    }

    if (v10)
    {
      sub_5758(&qword_1E5F70, &unk_16F3F0);
      v11 = swift_allocObject();
      v12 = j__malloc_size(v11);
      *(v11 + 2) = v9;
      *(v11 + 3) = 2 * ((v12 - 32) / 16);
      if (a1)
      {
LABEL_12:
        sub_1090E8((a4 + 32), v9, v11 + 32);
        *(a4 + 16) = 0;
LABEL_15:

        return;
      }
    }

    else
    {
      v11 = _swiftEmptyArrayStorage;
      if (a1)
      {
        goto LABEL_12;
      }
    }

    swift_arrayInitWithCopy();
    goto LABEL_15;
  }

  sub_10C048();
  if (!v7)
  {
    sub_10BBE8();
    goto LABEL_7;
  }

  __break(1u);
}

void *sub_146C24(void *result, int64_t a2, char a3, uint64_t a4)
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
      sub_5758(&qword_1EEBE8, &qword_17A448);
      v10 = swift_allocObject();
      v11 = j__malloc_size(v10);
      v10[2] = v8;
      v10[3] = 2 * ((v11 - 32) / 40);
      if (v5)
      {
LABEL_13:
        sub_10BBBC(a4 + 32, v8, v10 + 4);
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = _swiftEmptyArrayStorage;
      if (result)
      {
        goto LABEL_13;
      }
    }

    sub_5758(&qword_1EEBF0, &qword_17A450);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

char *sub_146D3C(char *result, int64_t a2, char a3, char *a4)
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
      sub_5758(&qword_1ED368, &qword_178648);
      v10 = swift_allocObject();
      v11 = j__malloc_size(v10);
      *(v10 + 2) = v8;
      *(v10 + 3) = 2 * ((v11 - 32) / 8);
      if (v5)
      {
LABEL_13:
        sub_109178(a4 + 32, v8, v10 + 32);
        *(a4 + 2) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = _swiftEmptyArrayStorage;
      if (result)
      {
        goto LABEL_13;
      }
    }

    memcpy(v10 + 32, a4 + 32, 8 * v8);
    goto LABEL_16;
  }

  __break(1u);
  return result;
}