uint64_t HomeAutomationFlowDelegatePlugin.__allocating_init()()
{
  v0 = swift_allocObject();
  HomeAutomationFlowDelegatePlugin.init()();
  return v0;
}

uint64_t HomeAutomationFlowDelegatePlugin.init()()
{
  v1 = v0;
  sub_1FF0();
  sub_20E0();
  sub_2020();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  v4 = [v3 bundlePath];

  sub_2190();

  v6._countAndFlagsBits = 0x74616C706D65542FLL;
  v6._object = 0xEA00000000007365;
  sub_21A0(v6);

  sub_1FE0();

  return v1;
}

uint64_t HomeAutomationFlowDelegatePlugin.findFlowForX(parse:)(uint64_t a1)
{
  v2 = sub_1FD0();
  sub_1F6C();
  v4 = v3;
  __chkstk_darwin(v5);
  sub_1F80();
  v8 = v7 - v6;
  v9 = sub_2170();
  __chkstk_darwin(v9 - 8);
  sub_1F80();
  sub_2070();
  v11[3] = sub_2090();
  v11[4] = &protocol witness table for LocationService;
  sub_1528(v11);
  sub_2080();
  (*(v4 + 16))(v8, a1, v2);
  sub_2060();
  swift_allocObject();
  sub_2050();
  sub_2040();
}

uint64_t *sub_1528(uint64_t *a1)
{
  v1 = a1;
  if ((*(*(a1[3] - 8) + 82) & 2) != 0)
  {
    *a1 = swift_allocBox();
    return v2;
  }

  return v1;
}

Swift::Void __swiftcall HomeAutomationFlowDelegatePlugin.warmup(refId:)(Swift::String refId)
{
  object = refId._object;
  countAndFlagsBits = refId._countAndFlagsBits;
  v2 = sub_2180();
  sub_1F6C();
  v4 = v3;
  __chkstk_darwin(v5);
  sub_1F80();
  v8 = v7 - v6;
  v9 = sub_2160();
  sub_1F6C();
  v11 = v10;
  __chkstk_darwin(v12);
  sub_1F80();
  v15 = v14 - v13;
  v16 = swift_allocObject();
  *(v16 + 16) = 0;
  sub_20D0();
  sub_21B0(52);
  v19._object = 0x80000000000023F0;
  v19._countAndFlagsBits = 0xD000000000000032;
  sub_21A0(v19);
  v20._countAndFlagsBits = countAndFlagsBits;
  v20._object = object;
  sub_21A0(v20);
  v21._countAndFlagsBits = 0;
  v22._countAndFlagsBits = 0xD000000000000080;
  v22._object = 0x8000000000002430;
  v21._object = 0xE000000000000000;
  sub_2150(v21, 0, 0, v22);

  (*(v11 + 8))(v15, v9);
  sub_19CC(&qword_80A0, &qword_22F0);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_22E0;
  *(v17 + 32) = sub_1DD8;
  *(v17 + 40) = v16;
  (*(v4 + 104))(v8, enum case for DispatchQoS.QoSClass.userInteractive(_:), v2);
  swift_retain_n();
  sub_2030();

  (*(v4 + 8))(v8, v2);
}

uint64_t sub_1834(uint64_t a1)
{
  v2 = sub_2160();
  sub_1F6C();
  v4 = v3;
  __chkstk_darwin(v5);
  sub_1F80();
  v8 = v7 - v6;
  sub_20D0();
  sub_21B0(62);
  v11._object = 0x8000000000002530;
  v11._countAndFlagsBits = 0xD00000000000003ALL;
  sub_21A0(v11);
  swift_beginAccess();
  if (*(a1 + 16))
  {
    v9._countAndFlagsBits = 0x73736563637573;
  }

  else
  {
    v9._countAndFlagsBits = 0x6572756C696166;
  }

  v9._object = 0xE700000000000000;
  sub_21A0(v9);

  v12._countAndFlagsBits = 32010;
  v12._object = 0xE200000000000000;
  sub_21A0(v12);
  v13._countAndFlagsBits = 0;
  v14._countAndFlagsBits = 0xD000000000000080;
  v14._object = 0x8000000000002430;
  v13._object = 0xE000000000000000;
  sub_2150(v13, 0, 0, v14);

  return (*(v4 + 8))(v8, v2);
}

uint64_t sub_19CC(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_1A14(void (**a1)(uint64_t), uint64_t a2)
{
  v35 = a2;
  v3 = sub_19CC(&qword_8158, "F");
  __chkstk_darwin(v3 - 8);
  v5 = v33 - v4;
  v6 = sub_20A0();
  sub_1F6C();
  v8 = v7;
  __chkstk_darwin(v9);
  sub_1F80();
  v12 = v11 - v10;
  v36 = sub_2140();
  sub_1F6C();
  v14 = v13;
  __chkstk_darwin(v15);
  sub_1F80();
  v18 = v17 - v16;
  v19 = sub_2160();
  sub_1F6C();
  v21 = v20;
  __chkstk_darwin(v22);
  sub_1F80();
  v25 = v24 - v23;
  v26 = *a1;
  v33[1] = a1[1];
  v34 = v26;
  sub_20D0();
  v37._object = 0x8000000000002510;
  v38._countAndFlagsBits = 0xD000000000000080;
  v38._object = 0x8000000000002430;
  v37._countAndFlagsBits = 0xD000000000000014;
  sub_2150(v37, 0, 0, v38);
  (*(v21 + 8))(v25, v19);
  v27 = sub_20C0();
  sub_2100();
  sub_2110();

  (*(v8 + 104))(v12, enum case for AFAnalyticsEvent.homeKitWarmUpStart(_:), v6);
  sub_20B0();
  (*(v8 + 8))(v12, v6);
  sub_2010();

  v28 = v35;
  swift_beginAccess();
  *(v28 + 16) = 1;
  v29 = sub_20C0();
  sub_2100();
  sub_2120();
  v30 = sub_2130();
  sub_1EDC(v5, 0, 1, v30);
  sub_20F0();

  v31 = sub_1F04(v5);
  v34(v31);
  return (*(v14 + 8))(v18, v36);
}

unint64_t sub_1DFC(uint64_t a1, uint64_t a2)
{
  result = qword_80A8;
  if (!qword_80A8)
  {
    type metadata accessor for HomeAutomationFlowDelegatePlugin();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_80A8);
  }

  return result;
}

uint64_t sub_1E8C@<X0>(uint64_t *a1@<X8>)
{
  result = HomeAutomationFlowDelegatePlugin.__allocating_init()();
  *a1 = result;
  return result;
}

uint64_t sub_1F04(uint64_t a1)
{
  v2 = sub_19CC(&qword_8158, "F");
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}