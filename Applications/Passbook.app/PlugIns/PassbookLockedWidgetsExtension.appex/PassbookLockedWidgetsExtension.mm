uint64_t sub_100001950()
{
  v0 = sub_10001C854();
  sub_100002CE4(v0, qword_10002D158);
  sub_100002CAC(v0, qword_10002D158);
  return sub_10001C844();
}

uint64_t sub_1000019BC(uint64_t a1)
{
  v1[2] = a1;
  v2 = sub_10001C724();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  sub_100002394(&qword_10002C288, &qword_10001E390);
  v1[6] = swift_task_alloc();
  v1[7] = swift_task_alloc();
  v3 = sub_10001C884();
  v1[8] = v3;
  v1[9] = *(v3 - 8);
  v1[10] = swift_task_alloc();
  v1[11] = swift_task_alloc();
  v1[12] = swift_task_alloc();
  v4 = sub_10001C834();
  v1[13] = v4;
  v1[14] = *(v4 - 8);
  v1[15] = swift_task_alloc();
  v1[16] = swift_task_alloc();

  return _swift_task_switch(sub_100001B9C, 0, 0);
}

uint64_t sub_100001B9C()
{
  sub_100002AB4();
  v1 = [objc_allocWithZone(PKPeerPaymentService) init];
  v2 = [v1 account];

  if (v2 && [v2 supportsDeviceTap])
  {
    v3 = v0 + 16;
    v4 = v0[8];
    v5 = v0[9];
    v6 = v0[7];
    sub_10001C824();
    sub_10001D524();
    sub_10001C814();
    sub_10001D524();
    sub_10001C7F4();
    v30._countAndFlagsBits = sub_10001D524();
    sub_10001D554(v30);

    sub_10001C804();
    sub_10001C7E4();
    if ((*(v5 + 48))(v6, 1, v4) == 1)
    {
      v7 = v0[7];
LABEL_7:
      sub_100002BFC(v7);
      sub_10001C674();
      sub_100002C64(&qword_10002C290, &type metadata accessor for AppIntentError, &protocol conformance descriptor for AppIntentError);
      swift_allocError();
      sub_10001C664();
      swift_willThrow();

      (*(v0[14] + 8))(*v3, v0[13]);

      v11 = v0[1];
      goto LABEL_11;
    }

    v14 = v0 + 12;
    v18 = v0[12];
    v19 = v0[11];
    v20 = v0[8];
    v21 = v0[9];
    (*(v21 + 32))(v18, v0[7], v20);
    (*(v21 + 16))(v19, v18, v20);
  }

  else
  {
    v3 = v0 + 15;
    v8 = v0[8];
    v9 = v0[9];
    v10 = v0[6];
    sub_10001C824();
    sub_10001D524();
    sub_10001C814();
    sub_10001C7E4();
    if ((*(v9 + 48))(v10, 1, v8) == 1)
    {
      v7 = v0[6];
      goto LABEL_7;
    }

    v12 = v0[10];
    v13 = v0[11];
    v14 = v0 + 10;
    v15 = v2;
    v17 = v0[8];
    v16 = v0[9];
    (*(v16 + 32))(v12, v0[6], v17);
    (*(v16 + 16))(v13, v12, v17);
    v2 = v15;
  }

  sub_10001C734();
  sub_100002C64(&qword_10002C298, &type metadata accessor for OpenURLIntent, &protocol conformance descriptor for OpenURLIntent);
  sub_10001C704();

  v22 = *v3;
  v23 = *v14;
  v24 = v0[13];
  v25 = v0[14];
  v26 = v0[9];
  v27 = v0[8];
  (*(v0[4] + 8))(v0[5], v0[3]);
  (*(v26 + 8))(v23, v27);
  (*(v25 + 8))(v22, v24);

  v11 = v0[1];
LABEL_11:

  return v11();
}

uint64_t sub_100002024@<X0>(uint64_t a1@<X8>)
{
  if (qword_10002C210 != -1)
  {
    swift_once();
  }

  v2 = sub_10001C854();
  v3 = sub_100002CAC(v2, qword_10002D158);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_1000020E8(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100002180;

  return sub_1000019BC(a1);
}

uint64_t sub_100002180()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_100002278(uint64_t a1)
{
  v2 = sub_100002558();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

uint64_t sub_1000022B4(__int128 *a1)
{
  v2 = *a1;
  if (sub_10001C16C(2, 17, 0, 0))
  {
    return swift_getOpaqueTypeMetadata2();
  }

  else
  {
    return v2;
  }
}

uint64_t sub_100002328(uint64_t *a1)
{
  v1 = a1[1];
  if (sub_10001C16C(2, 17, 0, 0))
  {
    return swift_getOpaqueTypeConformance2();
  }

  return v1;
}

uint64_t sub_100002394(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_1000023DC(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_100002428()
{
  result = qword_10002C258;
  if (!qword_10002C258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002C258);
  }

  return result;
}

unint64_t sub_100002480()
{
  result = qword_10002C260;
  if (!qword_10002C260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002C260);
  }

  return result;
}

unint64_t sub_100002558()
{
  result = qword_10002C268;
  if (!qword_10002C268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002C268);
  }

  return result;
}

__n128 sub_1000025AC(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_1000025BC(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1000025DC(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 16) = v3;
  return result;
}

uint64_t sub_10000266C(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_1000023DC(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1000026BC(uint64_t a1, id *a2)
{
  result = sub_10001D504();
  *a2 = 0;
  return result;
}

uint64_t sub_100002734(uint64_t a1, id *a2)
{
  v3 = sub_10001D514();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_1000027B4@<X0>(uint64_t *a2@<X8>)
{
  sub_10001D524();
  v3 = sub_10001D4F4();

  *a2 = v3;
  return result;
}

uint64_t sub_1000027F8()
{
  sub_10001D524();
  v0 = sub_10001D564();

  return v0;
}

uint64_t sub_100002834(uint64_t a1)
{
  sub_10001D524();
  sub_10001D544();
}

Swift::Int sub_100002888(uint64_t a1)
{
  sub_10001D524();
  sub_10001D5F4();
  sub_10001D544();
  v1 = sub_10001D614();

  return v1;
}

uint64_t sub_1000028FC(void *a1, uint64_t *a2)
{
  v2 = sub_10001D524();
  v4 = v3;
  if (v2 == sub_10001D524() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_10001D5E4();
  }

  return v7 & 1;
}

uint64_t sub_100002984@<X0>(uint64_t *a2@<X8>)
{
  v3 = sub_10001D4F4();

  *a2 = v3;
  return result;
}

uint64_t sub_1000029CC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10001D524();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1000029F8(uint64_t a1)
{
  v2 = sub_100002C64(&qword_10002C2D0, type metadata accessor for PKAnalyticsKey, &unk_10001DDBC);
  v3 = sub_100002C64(&qword_10002C2D8, type metadata accessor for PKAnalyticsKey, &unk_10001DD64);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_100002AB4()
{
  [objc_opt_self() beginSubjectReporting:PKAnalyticsSubjectAppleCash];
  sub_100002394(&qword_10002C2A0, &qword_10001DCC0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10001DB20;
  v1 = PKAnalyticsReportPageTagKey;
  *(inited + 32) = PKAnalyticsReportPageTagKey;
  *(inited + 40) = sub_10001D524();
  *(inited + 48) = v2;
  v3 = PKAnalyticsReportButtonTagKey;
  *(inited + 56) = PKAnalyticsReportButtonTagKey;
  *(inited + 64) = sub_10001D524();
  *(inited + 72) = v4;
  v5 = PKAnalyticsReportPeerPaymentP2PSideKey;
  *(inited + 80) = PKAnalyticsReportPeerPaymentP2PSideKey;
  *(inited + 88) = sub_10001D524();
  *(inited + 96) = v6;
  v7 = v1;
  v8 = v3;
  v9 = v5;
  sub_10001689C(inited);
  swift_setDeallocating();
  sub_100002394(&qword_10002C2A8, &qword_10001DCC8);
  swift_arrayDestroy();
  sub_10001D2D4();
}

uint64_t sub_100002BFC(uint64_t a1)
{
  v2 = sub_100002394(&qword_10002C288, &qword_10001E390);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100002C64(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100002CAC(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t *sub_100002CE4(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

void sub_100002D5C(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v5)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

void sub_100002EAC(uint64_t a1@<X8>)
{
  v25 = a1;
  v1 = sub_10001D304();
  __chkstk_darwin(v1 - 8);
  v27 = sub_100002394(&qword_10002C2F0, &qword_10001DEA8);
  v29 = *(v27 - 8);
  __chkstk_darwin(v27);
  v3 = &v22 - v2;
  v4 = sub_100002394(&qword_10002C2F8, &qword_10001DEB0);
  v28 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v22 - v5;
  v7 = sub_100002394(&qword_10002C300, &qword_10001DEB8);
  v23 = *(v7 - 8);
  v24 = v7;
  __chkstk_darwin(v7);
  v30 = &v22 - v8;
  v26 = qword_10002C2E0;

  v9 = sub_10001D4F4();
  v10 = PKLocalizedString(v9);

  v31 = v4;
  if (v10)
  {
    sub_10001D524();
  }

  sub_10001D2F4();
  sub_100002394(&qword_10002C308, &unk_10001DEC0);
  sub_100003494();
  sub_10000266C(&qword_10002C318, &qword_10002C308, &unk_10001DEC0, &protocol conformance descriptor for Label<A, B>);
  sub_10001D314();
  v11 = sub_10000266C(&qword_10002C320, &qword_10002C2F0, &qword_10001DEA8, &protocol conformance descriptor for ControlButton<A>);
  v12 = v27;
  sub_10001CD34();
  (*(v29 + 8))(v3, v12);
  v34 = v12;
  v35 = v11;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v15 = v30;
  v14 = v31;
  sub_10001CD44();
  (*(v28 + 8))(v6, v14);
  v16 = sub_10001D4F4();
  v17 = PKLocalizedString(v16);

  if (v17)
  {
    v18 = sub_10001D524();
    v20 = v19;

    v34 = v18;
    v35 = v20;
    v32 = v14;
    v33 = OpaqueTypeConformance2;
    swift_getOpaqueTypeConformance2();
    sub_1000034E8();
    v21 = v24;
    sub_10001CD14();

    (*(v23 + 8))(v15, v21);
  }

  else
  {
    __break(1u);
  }
}

void sub_1000033A8(uint64_t a1@<X8>)
{
  v2 = sub_10001D4F4();
  v3 = PKLocalizedString(v2);

  if (v3)
  {
    sub_10001D524();

    sub_1000034E8();
    *a1 = sub_10001CF74();
    *(a1 + 8) = v4;
    *(a1 + 16) = v5 & 1;
    *(a1 + 24) = v6;
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_10000344C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10001D0C4();
  *a1 = result;
  return result;
}

unint64_t sub_100003494()
{
  result = qword_10002C310;
  if (!qword_10002C310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002C310);
  }

  return result;
}

unint64_t sub_1000034E8()
{
  result = qword_10002C328;
  if (!qword_10002C328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002C328);
  }

  return result;
}

uint64_t sub_10000353C()
{
  sub_1000023DC(&qword_10002C300, &qword_10001DEB8);
  sub_1000023DC(&qword_10002C2F8, &qword_10001DEB0);
  sub_1000023DC(&qword_10002C2F0, &qword_10001DEA8);
  sub_10000266C(&qword_10002C320, &qword_10002C2F0, &qword_10001DEA8, &protocol conformance descriptor for ControlButton<A>);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  sub_1000034E8();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_10000367C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10001CA14();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_10000374C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_10001CA14();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t type metadata accessor for EventLiveActivityView(uint64_t a1)
{
  result = qword_10002C388;
  if (!qword_10002C388)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100003850(uint64_t a1)
{
  result = sub_10001CA14();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for WidgetPassImagesProvider();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1000038F0@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_100002394(&qword_10002C3C0, &qword_10001DF68);
  __chkstk_darwin(v2 - 8);
  v4 = &v19 - v3;
  v5 = *(sub_10001C954() + 16);

  v6 = 0x402C000000000000;
  if (v5 >= 3 && (sub_10001C9E4() & 1) == 0)
  {
    v6 = 0x4020000000000000;
  }

  *v4 = sub_10001CCB4();
  *(v4 + 1) = v6;
  v4[16] = 0;
  v7 = sub_100002394(&qword_10002C3C8, &qword_10001DF70);
  sub_100003A40(&v4[*(v7 + 44)]);
  v8 = sub_10001CE04();
  sub_10001CAC4();
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  sub_1000078A8(v4, a1, &qword_10002C3C0, &qword_10001DF68);
  result = sub_100002394(&qword_10002C3D0, &qword_10001DF78);
  v18 = a1 + *(result + 36);
  *v18 = v8;
  *(v18 + 8) = v10;
  *(v18 + 16) = v12;
  *(v18 + 24) = v14;
  *(v18 + 32) = v16;
  *(v18 + 40) = 0;
  return result;
}

uint64_t sub_100003A40@<X0>(uint64_t a2@<X8>)
{
  v3 = sub_100002394(&qword_10002C3D8, &qword_10001DF80);
  v4 = __chkstk_darwin(v3 - 8);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v16 - v7;
  *v8 = sub_10001CC94();
  *(v8 + 1) = 0x4028000000000000;
  v8[16] = 0;
  v9 = sub_100002394(&qword_10002C3E0, &qword_10001DF88);
  sub_100003BB4(&v8[*(v9 + 44)]);
  v10 = sub_10001C944();
  v12 = v11;
  if (v11)
  {
    v13 = v10;
  }

  else
  {
    v13 = 0;
  }

  sub_100007B4C(v8, v6, &qword_10002C3D8, &qword_10001DF80);
  sub_100007B4C(v6, a2, &qword_10002C3D8, &qword_10001DF80);
  v14 = (a2 + *(sub_100002394(&qword_10002C3E8, &qword_10001DF90) + 48));
  *v14 = v13;
  v14[1] = v12;

  sub_100007AEC(v8, &qword_10002C3D8, &qword_10001DF80);

  return sub_100007AEC(v6, &qword_10002C3D8, &qword_10001DF80);
}

uint64_t sub_100003BB4@<X0>(uint64_t a1@<X8>)
{
  v82 = a1;
  v1 = sub_100002394(&qword_10002C3F0, &qword_10001DF98);
  v2 = __chkstk_darwin(v1 - 8);
  v83 = &v72 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v81 = &v72 - v4;
  v5 = sub_10001D254();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v72 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = sub_100002394(&qword_10002C3F8, &qword_10001DFA0);
  v74 = *(v75 - 8);
  __chkstk_darwin(v75);
  v10 = &v72 - v9;
  v73 = sub_100002394(&qword_10002C400, &qword_10001DFA8);
  __chkstk_darwin(v73);
  v12 = &v72 - v11;
  v77 = sub_100002394(&qword_10002C408, &qword_10001DFB0);
  __chkstk_darwin(v77);
  v79 = &v72 - v13;
  v76 = sub_100002394(&qword_10002C410, &qword_10001DFB8);
  v14 = __chkstk_darwin(v76);
  v80 = &v72 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v14);
  v78 = &v72 - v17;
  __chkstk_darwin(v16);
  v84 = &v72 - v18;
  v19 = sub_10001C9D4();
  v21 = v20;
  v22 = *(sub_10001C954() + 16);

  if (v22 < 3 || (sub_10001C9E4() & 1) != 0)
  {
    PKFloatCeilToPixel();
    PKFloatFloorToPixel();
  }

  else
  {
    PKFloatCeilToPixel();
    PKFloatCeilToPixel();
  }

  type metadata accessor for EventLiveActivityView(0);
  v23 = sub_100016FC4(v19, v21);

  sub_10001D134();
  sub_10001CB04();
  v85 = v23;
  v86 = v91;
  v87 = v92;
  v88 = v93;
  v89 = v94;
  v90 = v95;
  (*(v6 + 104))(v8, enum case for LightenForegroundModifier.Style.normal(_:), v5);
  sub_100002394(&qword_10002C418, &unk_10001DFC0);
  sub_1000073A4();
  sub_10001CF84();
  (*(v6 + 8))(v8, v5);

  sub_100002394(&qword_10002C430, &unk_10001E3D0);
  inited = swift_initStackObject();
  v72 = xmmword_10001DED0;
  *(inited + 16) = xmmword_10001DED0;
  LOBYTE(v23) = sub_10001CE14();
  *(inited + 32) = v23;
  v25 = sub_10001CE24();
  *(inited + 33) = v25;
  v26 = sub_10001CE44();
  sub_10001CE44();
  if (sub_10001CE44() != v23)
  {
    v26 = sub_10001CE44();
  }

  sub_10001CE44();
  if (sub_10001CE44() != v25)
  {
    v26 = sub_10001CE44();
  }

  sub_10001CAC4();
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v34 = v33;
  (*(v74 + 32))(v12, v10, v75);
  v35 = &v12[*(v73 + 36)];
  *v35 = v26;
  *(v35 + 1) = v28;
  *(v35 + 2) = v30;
  *(v35 + 3) = v32;
  *(v35 + 4) = v34;
  v35[40] = 0;
  v36 = swift_initStackObject();
  *(v36 + 16) = v72;
  v37 = sub_10001CE34();
  *(v36 + 32) = v37;
  v38 = sub_10001CE54();
  *(v36 + 33) = v38;
  v39 = sub_10001CE44();
  sub_10001CE44();
  if (sub_10001CE44() != v37)
  {
    v39 = sub_10001CE44();
  }

  sub_10001CE44();
  if (sub_10001CE44() != v38)
  {
    v39 = sub_10001CE44();
  }

  sub_10001CAC4();
  v41 = v40;
  v43 = v42;
  v45 = v44;
  v47 = v46;
  v48 = v79;
  sub_1000078A8(v12, v79, &qword_10002C400, &qword_10001DFA8);
  v49 = v48 + *(v77 + 36);
  *v49 = v39;
  *(v49 + 8) = v41;
  *(v49 + 16) = v43;
  *(v49 + 24) = v45;
  *(v49 + 32) = v47;
  *(v49 + 40) = 0;
  v50 = v78;
  v51 = &v78[*(v76 + 36)];
  v52 = *(sub_10001CB54() + 20);
  v53 = enum case for RoundedCornerStyle.continuous(_:);
  v54 = sub_10001CCA4();
  (*(*(v54 - 8) + 104))(&v51[v52], v53, v54);
  __asm { FMOV            V0.2D, #4.0 }

  *v51 = _Q0;
  *&v51[*(sub_100002394(&qword_10002C438, &qword_10001DFD0) + 36)] = 256;
  sub_1000078A8(v48, v50, &qword_10002C408, &qword_10001DFB0);
  sub_1000078A8(v50, v84, &qword_10002C410, &qword_10001DFB8);
  v60 = v81;
  sub_1000044A0(v81);
  v61 = *(sub_10001C954() + 16);

  if (v61)
  {
    v62 = sub_10001C9E4();
    LODWORD(v78) = v62 & 1;
    v63 = v62 ^ 1;
    v64 = &v97;
  }

  else
  {
    LODWORD(v79) = 0;
    v63 = 1;
    v64 = &v96;
  }

  *(v64 - 64) = v63;
  v65 = v84;
  v66 = v80;
  sub_100007B4C(v84, v80, &qword_10002C410, &qword_10001DFB8);
  v67 = v83;
  sub_100007B4C(v60, v83, &qword_10002C3F0, &qword_10001DF98);
  v68 = v82;
  sub_100007B4C(v66, v82, &qword_10002C410, &qword_10001DFB8);
  v69 = sub_100002394(&qword_10002C440, &qword_10001DFD8);
  sub_100007B4C(v67, v68 + *(v69 + 48), &qword_10002C3F0, &qword_10001DF98);
  v70 = v68 + *(v69 + 64);
  *v70 = 0;
  *(v70 + 8) = v78;
  *(v70 + 9) = v79 & 1;
  sub_100007AEC(v60, &qword_10002C3F0, &qword_10001DF98);
  sub_100007AEC(v65, &qword_10002C410, &qword_10001DFB8);
  sub_100007AEC(v67, &qword_10002C3F0, &qword_10001DF98);
  return sub_100007AEC(v66, &qword_10002C410, &qword_10001DFB8);
}

uint64_t sub_1000044A0@<X0>(uint64_t a1@<X8>)
{
  v48 = a1;
  v43 = sub_100002394(&qword_10002C448, &qword_10001DFE0);
  __chkstk_darwin(v43);
  v39 = (&v37 - v2);
  v40 = sub_100002394(&qword_10002C450, &qword_10001DFE8);
  __chkstk_darwin(v40);
  v42 = &v37 - v3;
  v47 = sub_100002394(&qword_10002C458, &unk_10001DFF0);
  __chkstk_darwin(v47);
  v44 = &v37 - v4;
  v41 = sub_100002394(&qword_10002C460, &qword_10001E510);
  __chkstk_darwin(v41);
  v38 = (&v37 - v5);
  v45 = sub_100002394(&qword_10002C468, &qword_10001E000);
  __chkstk_darwin(v45);
  v7 = &v37 - v6;
  v8 = sub_100002394(&qword_10002C470, &qword_10001E008);
  __chkstk_darwin(v8);
  v10 = &v37 - v9;
  v11 = sub_100002394(&qword_10002C478, &qword_10001E010);
  __chkstk_darwin(v11);
  v13 = &v37 - v12;
  v14 = sub_100002394(&qword_10002C480, &qword_10001E018);
  __chkstk_darwin(v14);
  v16 = &v37 - v15;
  v17 = sub_100002394(&qword_10002C488, &qword_10001E020);
  __chkstk_darwin(v17);
  v19 = &v37 - v18;
  v20 = sub_10001C9E4();
  v46 = v8;
  if (v20)
  {
    *v19 = sub_10001CCC4();
    *(v19 + 1) = 0;
    v19[16] = 0;
    v21 = sub_100002394(&qword_10002C4D8, &qword_10001E040);
    sub_100004CE0(v1, &v19[*(v21 + 44)]);
    sub_100007B4C(v19, v13, &qword_10002C488, &qword_10001E020);
    swift_storeEnumTagMultiPayload();
    sub_10000266C(&qword_10002C4B0, &qword_10002C488, &qword_10001E020, &protocol conformance descriptor for VStack<A>);
    sub_10000266C(&qword_10002C4B8, &qword_10002C468, &qword_10001E000, &protocol conformance descriptor for VStack<A>);
    sub_10001CD84();
    sub_100007B4C(v16, v10, &qword_10002C480, &qword_10001E018);
    swift_storeEnumTagMultiPayload();
    sub_100007484();
    sub_100007564();
    sub_10001CD84();
    sub_100007AEC(v16, &qword_10002C480, &qword_10001E018);
    v22 = v19;
    v23 = &qword_10002C488;
    v24 = &qword_10001E020;
  }

  else
  {
    v37 = v14;
    v25 = *(sub_10001C954() + 16);

    if (v25)
    {
      v26 = *(sub_10001C954() + 16);

      if (v26 > 2)
      {
        v33 = sub_10001CCC4();
        v28 = v39;
        *v39 = v33;
        *(v28 + 8) = 0x4018000000000000;
        *(v28 + 16) = 0;
        v34 = sub_100002394(&qword_10002C490, &qword_10001E028);
        sub_10000633C(v1, v28 + *(v34 + 44));
        v30 = &qword_10002C448;
        v31 = &qword_10001DFE0;
        sub_100007B4C(v28, v42, &qword_10002C448, &qword_10001DFE0);
      }

      else
      {
        v27 = sub_10001CC94();
        v28 = v38;
        *v38 = v27;
        *(v28 + 8) = 0;
        *(v28 + 16) = 0;
        v29 = sub_100002394(&qword_10002C4C8, &unk_10001E030);
        sub_100005F10(v1, v28 + *(v29 + 44));
        v30 = &qword_10002C460;
        v31 = &qword_10001E510;
        sub_100007B4C(v28, v42, &qword_10002C460, &qword_10001E510);
      }

      swift_storeEnumTagMultiPayload();
      sub_10000266C(&qword_10002C498, &qword_10002C460, &qword_10001E510, &protocol conformance descriptor for HStack<A>);
      sub_10000266C(&qword_10002C4A0, &qword_10002C448, &qword_10001DFE0, &protocol conformance descriptor for VStack<A>);
      v35 = v44;
      sub_10001CD84();
      sub_100007B4C(v35, v10, &qword_10002C458, &unk_10001DFF0);
      swift_storeEnumTagMultiPayload();
      sub_100007484();
      sub_100007564();
      sub_10001CD84();
      sub_100007AEC(v35, &qword_10002C458, &unk_10001DFF0);
      v22 = v28;
      v23 = v30;
      v24 = v31;
    }

    else
    {
      *v7 = sub_10001CCC4();
      *(v7 + 1) = 0;
      v7[16] = 0;
      v32 = sub_100002394(&qword_10002C4D0, &qword_10001E5A0);
      sub_100005550(&v7[*(v32 + 44)]);
      sub_100007B4C(v7, v13, &qword_10002C468, &qword_10001E000);
      swift_storeEnumTagMultiPayload();
      sub_10000266C(&qword_10002C4B0, &qword_10002C488, &qword_10001E020, &protocol conformance descriptor for VStack<A>);
      sub_10000266C(&qword_10002C4B8, &qword_10002C468, &qword_10001E000, &protocol conformance descriptor for VStack<A>);
      sub_10001CD84();
      sub_100007B4C(v16, v10, &qword_10002C480, &qword_10001E018);
      swift_storeEnumTagMultiPayload();
      sub_100007484();
      sub_100007564();
      sub_10001CD84();
      sub_100007AEC(v16, &qword_10002C480, &qword_10001E018);
      v22 = v7;
      v23 = &qword_10002C468;
      v24 = &qword_10001E000;
    }
  }

  return sub_100007AEC(v22, v23, v24);
}

void sub_100004CE0(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v84 = a2;
  v85 = a1;
  v91 = sub_10001CF24();
  v93 = *(v91 - 8);
  __chkstk_darwin(v91);
  v92 = v77 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_100002394(&qword_10002C4E0, &qword_10001E048);
  v89 = *(v3 - 8);
  v90 = v3;
  v4 = __chkstk_darwin(v3);
  v82 = v77 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v96 = v77 - v6;
  v95 = sub_100002394(&qword_10002C4E8, &qword_10001E050);
  v7 = __chkstk_darwin(v95);
  v79 = v77 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v87 = v77 - v9;
  v94 = sub_100002394(&qword_10002C4F0, &qword_10001E058);
  v10 = __chkstk_darwin(v94);
  v83 = v77 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v78 = v77 - v13;
  v14 = __chkstk_darwin(v12);
  v81 = v77 - v15;
  __chkstk_darwin(v14);
  v17 = v77 - v16;
  v86 = sub_100002394(&qword_10002C4F8, &qword_10001E060);
  v18 = __chkstk_darwin(v86);
  v80 = v77 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __chkstk_darwin(v18);
  v22 = v77 - v21;
  __chkstk_darwin(v20);
  v88 = v77 - v23;
  v97 = sub_10001CA04();
  v98 = v24;
  v77[2] = sub_1000034E8();
  v25 = sub_10001CF74();
  v27 = v26;
  v29 = v28;
  v31 = v30;
  KeyPath = swift_getKeyPath();
  v97 = v25;
  v98 = v27;
  v99 = v29 & 1;
  v100 = v31;
  v101 = KeyPath;
  v102 = 1;
  v103 = 0;
  sub_10001CEB4();
  v33 = sub_100002394(&qword_10002C500, &unk_10001E460);
  v34 = sub_100007650();
  v77[1] = v33;
  v77[0] = v34;
  sub_10001CFF4();
  sub_100007708(v25, v27, v29 & 1);

  if (sub_10001C9B4())
  {
    v35 = sub_10001CF04();
  }

  else
  {
    sub_10001CF14();
    v37 = v92;
    v36 = v93;
    v38 = v91;
    (*(v93 + 104))(v92, enum case for Font.Leading.tight(_:), v91);
    v35 = sub_10001CF34();

    (*(v36 + 8))(v37, v38);
  }

  v39 = swift_getKeyPath();
  v40 = v90;
  v41 = v87;
  v42 = v96;
  v96 = *(v89 + 32);
  (v96)(v87, v42, v90);
  v43 = (v41 + *(v95 + 36));
  *v43 = v39;
  v43[1] = v35;
  v44 = sub_10001D084();
  sub_1000078A8(v41, v17, &qword_10002C4E8, &qword_10001E050);
  *&v17[*(v94 + 36)] = v44;
  v45 = swift_getKeyPath();
  sub_1000078A8(v17, v22, &qword_10002C4F0, &qword_10001E058);
  v46 = &v22[*(v86 + 36)];
  *v46 = v45;
  v46[1] = 0x3FE999999999999ALL;
  v47 = v88;
  sub_1000078A8(v22, v88, &qword_10002C4F8, &qword_10001E060);
  v48 = sub_10001D4F4();
  v49 = PKLocalizedTicketingString(v48);

  if (v49)
  {
    v50 = sub_10001D524();
    v52 = v51;

    v97 = v50;
    v98 = v52;
    v53 = sub_10001CF74();
    v55 = v54;
    v57 = v56;
    v59 = v58;
    v60 = swift_getKeyPath();
    v97 = v53;
    v98 = v55;
    v99 = v57 & 1;
    v100 = v59;
    v101 = v60;
    v102 = 1;
    v103 = 0;
    sub_10001CED4();
    v61 = v82;
    sub_10001CFF4();
    sub_100007708(v53, v55, v57 & 1);

    sub_10001CE84();
    v63 = v92;
    v62 = v93;
    v64 = v91;
    (*(v93 + 104))(v92, enum case for Font.Leading.tight(_:), v91);
    v65 = sub_10001CF34();

    (*(v62 + 8))(v63, v64);
    v66 = swift_getKeyPath();
    v67 = v79;
    (v96)(v79, v61, v40);
    v68 = &v67[*(v95 + 36)];
    *v68 = v66;
    v68[1] = v65;
    v69 = sub_10001D054();
    v70 = v67;
    v71 = v78;
    sub_1000078A8(v70, v78, &qword_10002C4E8, &qword_10001E050);
    *(v71 + *(v94 + 36)) = v69;
    v72 = v81;
    sub_1000078A8(v71, v81, &qword_10002C4F0, &qword_10001E058);
    v73 = v80;
    sub_100007B4C(v47, v80, &qword_10002C4F8, &qword_10001E060);
    v74 = v83;
    sub_100007B4C(v72, v83, &qword_10002C4F0, &qword_10001E058);
    v75 = v84;
    sub_100007B4C(v73, v84, &qword_10002C4F8, &qword_10001E060);
    v76 = sub_100002394(&qword_10002C520, &qword_10001E108);
    sub_100007B4C(v74, v75 + *(v76 + 48), &qword_10002C4F0, &qword_10001E058);
    sub_100007AEC(v72, &qword_10002C4F0, &qword_10001E058);
    sub_100007AEC(v47, &qword_10002C4F8, &qword_10001E060);
    sub_100007AEC(v74, &qword_10002C4F0, &qword_10001E058);
    sub_100007AEC(v73, &qword_10002C4F8, &qword_10001E060);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_100005550@<X0>(uint64_t a1@<X8>)
{
  v96 = a1;
  v78 = sub_100002394(&qword_10002C528, &qword_10001E110);
  __chkstk_darwin(v78);
  v77 = v76 - v1;
  v2 = sub_100002394(&qword_10002C530, &qword_10001E118);
  v92 = *(v2 - 8);
  v93 = v2;
  __chkstk_darwin(v2);
  v79 = v76 - v3;
  v4 = sub_100002394(&qword_10002C538, &unk_10001E120);
  v5 = __chkstk_darwin(v4 - 8);
  v95 = v76 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v94 = v76 - v7;
  v97 = sub_10001CF24();
  v90 = *(v97 - 8);
  __chkstk_darwin(v97);
  v87 = v76 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100002394(&qword_10002C4E0, &qword_10001E048);
  v88 = *(v9 - 8);
  v89 = v9;
  __chkstk_darwin(v9);
  v11 = v76 - v10;
  v85 = sub_100002394(&qword_10002C4E8, &qword_10001E050);
  __chkstk_darwin(v85);
  v84 = v76 - v12;
  v83 = sub_100002394(&qword_10002C4F0, &qword_10001E058);
  __chkstk_darwin(v83);
  v82 = v76 - v13;
  v81 = sub_100002394(&qword_10002C4F8, &qword_10001E060);
  v14 = __chkstk_darwin(v81);
  v91 = v76 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v14);
  v80 = v76 - v17;
  __chkstk_darwin(v16);
  v98 = v76 - v18;
  v99 = sub_10001CA04();
  v100 = v19;
  v76[1] = sub_1000034E8();
  v20 = sub_10001CF74();
  v22 = v21;
  v24 = v23;
  v26 = v25;
  KeyPath = swift_getKeyPath();
  v99 = v20;
  v100 = v22;
  v101 = v24 & 1;
  v102 = v26;
  v103 = KeyPath;
  v104 = 1;
  v105 = 0;
  sub_10001CEB4();
  sub_100002394(&qword_10002C500, &unk_10001E460);
  sub_100007650();
  v86 = v11;
  sub_10001CFF4();
  sub_100007708(v20, v22, v24 & 1);

  if (sub_10001C9B4())
  {
    v28 = sub_10001CF04();
    v29 = v90;
    v30 = v87;
  }

  else
  {
    sub_10001CF14();
    v29 = v90;
    v30 = v87;
    v31 = v97;
    (*(v90 + 104))(v87, enum case for Font.Leading.tight(_:), v97);
    v28 = sub_10001CF34();

    (*(v29 + 8))(v30, v31);
  }

  v32 = swift_getKeyPath();
  v33 = v84;
  (*(v88 + 32))(v84, v86, v89);
  v34 = (v33 + *(v85 + 36));
  *v34 = v32;
  v34[1] = v28;
  v35 = sub_10001D084();
  v36 = v82;
  sub_1000078A8(v33, v82, &qword_10002C4E8, &qword_10001E050);
  *(v36 + *(v83 + 36)) = v35;
  v37 = swift_getKeyPath();
  v38 = v36;
  v39 = v80;
  sub_1000078A8(v38, v80, &qword_10002C4F0, &qword_10001E058);
  v40 = (v39 + *(v81 + 36));
  *v40 = v37;
  v40[1] = 0x3FE999999999999ALL;
  sub_1000078A8(v39, v98, &qword_10002C4F8, &qword_10001E060);
  v41 = sub_10001C9A4();
  if (v42)
  {
    v99 = v41;
    v100 = v42;
    v43 = sub_10001CF74();
    v45 = v44;
    v46 = v29;
    v48 = v47;
    v90 = v49;
    v50 = swift_getKeyPath();
    v51 = sub_100002394(&qword_10002C548, &unk_10001E130);
    v52 = v77;
    v53 = &v77[*(v51 + 36)];
    v54 = *(sub_100002394(&qword_10002C550, &qword_10001E5C0) + 28);
    v55 = enum case for Text.TruncationMode.tail(_:);
    v56 = sub_10001CF64();
    (*(*(v56 - 8) + 104))(v53 + v54, v55, v56);
    *v53 = swift_getKeyPath();
    *v52 = v43;
    *(v52 + 8) = v45;
    *(v52 + 16) = v48 & 1;
    *(v52 + 24) = v90;
    *(v52 + 32) = v50;
    *(v52 + 40) = 1;
    *(v52 + 48) = 0;
    v57 = swift_getKeyPath();
    v58 = v52 + *(v78 + 36);
    *v58 = v57;
    *(v58 + 8) = 0;
    sub_10001CEE4();
    sub_100007738();
    v59 = v79;
    sub_10001CFF4();
    sub_100007AEC(v52, &qword_10002C528, &qword_10001E110);
    sub_10001CE74();
    v60 = v97;
    (*(v46 + 104))(v30, enum case for Font.Leading.tight(_:), v97);
    v61 = sub_10001CF34();

    (*(v46 + 8))(v30, v60);
    v62 = swift_getKeyPath();
    v63 = (v59 + *(sub_100002394(&qword_10002C580, &unk_10001E630) + 36));
    *v63 = v62;
    v63[1] = v61;
    v64 = sub_10001D054();
    *(v59 + *(sub_100002394(&qword_10002C588, &unk_10001E1B0) + 36)) = v64;
    v65 = swift_getKeyPath();
    v66 = v93;
    v67 = v94;
    v68 = (v59 + *(v93 + 36));
    *v68 = v65;
    v68[1] = 0x3FE999999999999ALL;
    sub_1000078A8(v59, v67, &qword_10002C530, &qword_10001E118);
    v69 = 0;
  }

  else
  {
    v69 = 1;
    v66 = v93;
    v67 = v94;
  }

  (*(v92 + 56))(v67, v69, 1, v66);
  v70 = v98;
  v71 = v91;
  sub_100007B4C(v98, v91, &qword_10002C4F8, &qword_10001E060);
  v72 = v95;
  sub_100007B4C(v67, v95, &qword_10002C538, &unk_10001E120);
  v73 = v96;
  sub_100007B4C(v71, v96, &qword_10002C4F8, &qword_10001E060);
  v74 = sub_100002394(&qword_10002C540, &unk_10001E5B0);
  sub_100007B4C(v72, v73 + *(v74 + 48), &qword_10002C538, &unk_10001E120);
  sub_100007AEC(v67, &qword_10002C538, &unk_10001E120);
  sub_100007AEC(v70, &qword_10002C4F8, &qword_10001E060);
  sub_100007AEC(v72, &qword_10002C538, &unk_10001E120);
  return sub_100007AEC(v71, &qword_10002C4F8, &qword_10001E060);
}

uint64_t sub_100005F10@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v52 = sub_10001C994();
  v4 = *(v52 - 8);
  __chkstk_darwin(v52);
  v51 = v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100002394(&qword_10002C590, &unk_10001E640);
  v7 = v6 - 8;
  v8 = __chkstk_darwin(v6);
  v10 = v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = v43 - v11;
  *v12 = sub_10001CDE4();
  v13 = sub_100002394(&qword_10002C598, &unk_10001E1C0);
  sub_10000674C(a1, 3, &v12[*(v13 + 44)]);
  v14 = &v12[*(sub_100002394(&qword_10002C5A0, &unk_10001E650) + 36)];
  v15 = *(sub_100002394(&qword_10002C550, &qword_10001E5C0) + 28);
  v16 = enum case for Text.TruncationMode.tail(_:);
  v17 = sub_10001CF64();
  (*(*(v17 - 8) + 104))(v14 + v15, v16, v17);
  *v14 = swift_getKeyPath();
  KeyPath = swift_getKeyPath();
  v19 = &v12[*(sub_100002394(&qword_10002C5A8, &unk_10001E1D0) + 36)];
  *v19 = KeyPath;
  v19[8] = 0;
  *&v12[*(v7 + 44)] = sub_10001D084();
  v20 = sub_10001C954();
  v21 = *(v20 + 16);
  if (v21)
  {
    v44 = v12;
    v45 = v10;
    v46 = a2;
    v53 = &_swiftEmptyArrayStorage;
    sub_10000E79C(0, v21, 0);
    v22 = v53;
    v24 = *(v4 + 16);
    v23 = v4 + 16;
    v25 = (*(v23 + 64) + 32) & ~*(v23 + 64);
    v26 = v23;
    v43[1] = v20;
    v27 = v20 + v25;
    v48 = *(v26 + 56);
    v49 = v24;
    v50 = v26;
    v47 = (v26 - 8);
    do
    {
      v28 = v51;
      v29 = v52;
      v49(v51, v27, v52);
      v30 = sub_10001C974();
      v32 = v31;
      v33 = sub_10001C984();
      v35 = v34;
      (*v47)(v28, v29);
      v53 = v22;
      v37 = v22[2];
      v36 = v22[3];
      if (v37 >= v36 >> 1)
      {
        sub_10000E79C((v36 > 1), v37 + 1, 1);
        v22 = v53;
      }

      v22[2] = v37 + 1;
      v38 = &v22[4 * v37];
      v38[4] = v30;
      v38[5] = v32;
      v38[6] = v33;
      v38[7] = v35;
      v27 += v48;
      --v21;
    }

    while (v21);

    v10 = v45;
    a2 = v46;
    v12 = v44;
  }

  else
  {

    v22 = &_swiftEmptyArrayStorage;
  }

  sub_100007B4C(v12, v10, &qword_10002C590, &unk_10001E640);
  sub_100007B4C(v10, a2, &qword_10002C590, &unk_10001E640);
  v39 = sub_100002394(&qword_10002C5B0, &qword_10001E660);
  v40 = a2 + *(v39 + 48);
  *v40 = 0x4028000000000000;
  *(v40 + 8) = 0;
  v41 = a2 + *(v39 + 64);
  *v41 = v22;
  *(v41 + 8) = xmmword_10001DEE0;
  *(v41 + 24) = 1;
  *(v41 + 32) = 0x403A000000000000;

  sub_100007AEC(v12, &qword_10002C590, &unk_10001E640);

  return sub_100007AEC(v10, &qword_10002C590, &unk_10001E640);
}

uint64_t sub_10000633C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v50 = sub_10001C994();
  v4 = *(v50 - 8);
  __chkstk_darwin(v50);
  v49 = v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100002394(&qword_10002C590, &unk_10001E640);
  v7 = v6 - 8;
  v8 = __chkstk_darwin(v6);
  v10 = v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = v41 - v11;
  *v12 = sub_10001CDE4();
  v13 = sub_100002394(&qword_10002C598, &unk_10001E1C0);
  sub_10000674C(a1, 2, &v12[*(v13 + 44)]);
  v14 = &v12[*(sub_100002394(&qword_10002C5A0, &unk_10001E650) + 36)];
  v15 = *(sub_100002394(&qword_10002C550, &qword_10001E5C0) + 28);
  v16 = enum case for Text.TruncationMode.tail(_:);
  v17 = sub_10001CF64();
  (*(*(v17 - 8) + 104))(v14 + v15, v16, v17);
  *v14 = swift_getKeyPath();
  KeyPath = swift_getKeyPath();
  v19 = &v12[*(sub_100002394(&qword_10002C5A8, &unk_10001E1D0) + 36)];
  *v19 = KeyPath;
  v19[8] = 0;
  *&v12[*(v7 + 44)] = sub_10001D084();
  v20 = sub_10001C954();
  v21 = *(v20 + 16);
  if (v21)
  {
    v42 = v12;
    v43 = v10;
    v44 = a2;
    v51 = &_swiftEmptyArrayStorage;
    sub_10000E79C(0, v21, 0);
    v22 = v51;
    v24 = *(v4 + 16);
    v23 = v4 + 16;
    v25 = (*(v23 + 64) + 32) & ~*(v23 + 64);
    v26 = v23;
    v41[1] = v20;
    v27 = v20 + v25;
    v46 = *(v26 + 56);
    v47 = v24;
    v48 = v26;
    v45 = (v26 - 8);
    do
    {
      v28 = v49;
      v29 = v50;
      v47(v49, v27, v50);
      v30 = sub_10001C974();
      v32 = v31;
      v33 = sub_10001C984();
      v35 = v34;
      (*v45)(v28, v29);
      v51 = v22;
      v37 = v22[2];
      v36 = v22[3];
      if (v37 >= v36 >> 1)
      {
        sub_10000E79C((v36 > 1), v37 + 1, 1);
        v22 = v51;
      }

      v22[2] = v37 + 1;
      v38 = &v22[4 * v37];
      v38[4] = v30;
      v38[5] = v32;
      v38[6] = v33;
      v38[7] = v35;
      v27 += v46;
      --v21;
    }

    while (v21);

    v10 = v43;
    a2 = v44;
    v12 = v42;
  }

  else
  {

    v22 = &_swiftEmptyArrayStorage;
  }

  sub_100007B4C(v12, v10, &qword_10002C590, &unk_10001E640);
  sub_100007B4C(v10, a2, &qword_10002C590, &unk_10001E640);
  v39 = a2 + *(sub_100002394(&qword_10002C5C8, &qword_10001E1F0) + 48);
  *v39 = v22;
  *(v39 + 8) = xmmword_10001DEF0;
  *(v39 + 24) = 0;
  *(v39 + 32) = 0;

  sub_100007AEC(v12, &qword_10002C590, &unk_10001E640);

  return sub_100007AEC(v10, &qword_10002C590, &unk_10001E640);
}

uint64_t sub_10000674C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v57 = a2;
  v53 = a1;
  v60 = a3;
  v58 = sub_100002394(&qword_10002C5B8, &qword_10001E1E0) - 8;
  v3 = __chkstk_darwin(v58);
  v59 = &v45 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v55 = &v45 - v5;
  v54 = sub_10001CF24();
  v62 = *(v54 - 8);
  __chkstk_darwin(v54);
  v52 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = sub_100002394(&qword_10002C4E8, &qword_10001E050) - 8;
  v7 = __chkstk_darwin(v61);
  v56 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v10 = &v45 - v9;
  v63 = sub_10001CA04();
  v64 = v11;
  v51 = sub_1000034E8();
  v12 = sub_10001CF74();
  v14 = v13;
  v16 = v15;
  v18 = v17;
  KeyPath = swift_getKeyPath();
  v63 = v12;
  v64 = v14;
  v65 = v16 & 1;
  v66 = v18;
  v67 = KeyPath;
  v68 = 1;
  v69 = 0;
  sub_10001CEB4();
  v50 = sub_100002394(&qword_10002C500, &unk_10001E460);
  v49 = sub_100007650();
  v48 = v10;
  sub_10001CFF4();
  sub_100007708(v12, v14, v16 & 1);

  sub_10001CF04();
  v47 = enum case for Font.Leading.tight(_:);
  v20 = v62;
  v46 = *(v62 + 104);
  v21 = v52;
  v22 = v54;
  v46(v52);
  v23 = sub_10001CF34();

  v24 = *(v20 + 8);
  v62 = v20 + 8;
  v45 = v24;
  v24(v21, v22);
  v25 = swift_getKeyPath();
  v26 = &v10[*(v61 + 44)];
  *v26 = v25;
  v26[1] = v23;
  v63 = sub_10001CA04();
  v64 = v27;
  v28 = sub_10001CF74();
  v30 = v29;
  LOBYTE(v23) = v31;
  v33 = v32;
  v34 = swift_getKeyPath();
  v63 = v28;
  v64 = v30;
  v65 = v23 & 1;
  v66 = v33;
  v67 = v34;
  v68 = v57;
  v69 = 0;
  sub_10001CEE4();
  v35 = v55;
  sub_10001CFF4();
  sub_100007708(v28, v30, v23 & 1);

  sub_10001CE74();
  (v46)(v21, v47, v22);
  v36 = sub_10001CF34();

  v45(v21, v22);
  v37 = swift_getKeyPath();
  v38 = (v35 + *(v61 + 44));
  *v38 = v37;
  v38[1] = v36;
  *(v35 + *(v58 + 44)) = 256;
  v39 = v48;
  v40 = v56;
  sub_100007B4C(v48, v56, &qword_10002C4E8, &qword_10001E050);
  v41 = v59;
  sub_100007B4C(v35, v59, &qword_10002C5B8, &qword_10001E1E0);
  v42 = v60;
  sub_100007B4C(v40, v60, &qword_10002C4E8, &qword_10001E050);
  v43 = sub_100002394(&qword_10002C5C0, &qword_10001E1E8);
  sub_100007B4C(v41, v42 + *(v43 + 48), &qword_10002C5B8, &qword_10001E1E0);
  sub_100007AEC(v35, &qword_10002C5B8, &qword_10001E1E0);
  sub_100007AEC(v39, &qword_10002C4E8, &qword_10001E050);
  sub_100007AEC(v41, &qword_10002C5B8, &qword_10001E1E0);
  return sub_100007AEC(v40, &qword_10002C4E8, &qword_10001E050);
}

uint64_t sub_100006CB4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v25 = a2;
  v5 = sub_100002394(&qword_10002C5E8, &qword_10001E290);
  v6 = __chkstk_darwin(v5 - 8);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v24 - v9;
  v11 = sub_100002394(&qword_10002C5F0, &qword_10001E298);
  v12 = v11 - 8;
  v13 = __chkstk_darwin(v11);
  v15 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v24 - v16;
  sub_10001D104();
  v18 = sub_10001D054();
  v19 = sub_10001CE04();
  v20 = &v17[*(v12 + 44)];
  *v20 = v18;
  v20[8] = v19;
  *v10 = sub_10001CC94();
  *(v10 + 1) = 0;
  v10[16] = 1;
  v21 = sub_100002394(&qword_10002C5F8, &qword_10001E2A0);
  sub_100006EF4(a1, v25, &v10[*(v21 + 44)]);
  sub_100007A7C(v17, v15);
  sub_100007B4C(v10, v8, &qword_10002C5E8, &qword_10001E290);
  sub_100007A7C(v15, a3);
  v22 = sub_100002394(&qword_10002C600, &qword_10001E2A8);
  sub_100007B4C(v8, a3 + *(v22 + 48), &qword_10002C5E8, &qword_10001E290);
  sub_100007AEC(v10, &qword_10002C5E8, &qword_10001E290);
  sub_100007AEC(v17, &qword_10002C5F0, &qword_10001E298);
  sub_100007AEC(v8, &qword_10002C5E8, &qword_10001E290);
  return sub_100007AEC(v15, &qword_10002C5F0, &qword_10001E298);
}

uint64_t sub_100006EF4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v47 = a3;
  v5 = sub_10001CF24();
  v43 = *(v5 - 8);
  v44 = v5;
  __chkstk_darwin(v5);
  v42 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = sub_100002394(&qword_10002C528, &qword_10001E110);
  __chkstk_darwin(v41);
  v8 = &v40 - v7;
  v46 = sub_100002394(&qword_10002C530, &qword_10001E118) - 8;
  v9 = __chkstk_darwin(v46);
  v45 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v12 = &v40 - v11;
  v48 = a1;
  v49 = a2;
  sub_1000034E8();

  v13 = sub_10001CF74();
  v15 = v14;
  v17 = v16;
  v19 = v18;
  KeyPath = swift_getKeyPath();
  v21 = &v8[*(sub_100002394(&qword_10002C548, &unk_10001E130) + 36)];
  v22 = *(sub_100002394(&qword_10002C550, &qword_10001E5C0) + 28);
  v23 = enum case for Text.TruncationMode.tail(_:);
  v24 = sub_10001CF64();
  (*(*(v24 - 8) + 104))(v21 + v22, v23, v24);
  *v21 = swift_getKeyPath();
  *v8 = v13;
  *(v8 + 1) = v15;
  v8[16] = v17 & 1;
  *(v8 + 3) = v19;
  *(v8 + 4) = KeyPath;
  *(v8 + 5) = 2;
  v8[48] = 0;
  v25 = swift_getKeyPath();
  v26 = &v8[*(v41 + 36)];
  *v26 = v25;
  v26[8] = 0;
  sub_10001CED4();
  sub_100007738();
  sub_10001CFF4();
  sub_100007AEC(v8, &qword_10002C528, &qword_10001E110);
  sub_10001CE74();
  v28 = v42;
  v27 = v43;
  v29 = v44;
  (*(v43 + 104))(v42, enum case for Font.Leading.tight(_:), v44);
  v30 = sub_10001CF34();

  (*(v27 + 8))(v28, v29);
  v31 = swift_getKeyPath();
  v32 = &v12[*(sub_100002394(&qword_10002C580, &unk_10001E630) + 36)];
  *v32 = v31;
  v32[1] = v30;
  v33 = sub_10001D054();
  *&v12[*(sub_100002394(&qword_10002C588, &unk_10001E1B0) + 36)] = v33;
  v34 = swift_getKeyPath();
  v35 = v45;
  v36 = &v12[*(v46 + 44)];
  *v36 = v34;
  v36[1] = 0x3FE999999999999ALL;
  sub_100007B4C(v12, v35, &qword_10002C530, &qword_10001E118);
  v37 = v47;
  sub_100007B4C(v35, v47, &qword_10002C530, &qword_10001E118);
  v38 = v37 + *(sub_100002394(&qword_10002C608, &qword_10001E2B0) + 48);
  *v38 = 0;
  *(v38 + 8) = 1;
  sub_100007AEC(v12, &qword_10002C530, &qword_10001E118);
  return sub_100007AEC(v35, &qword_10002C530, &qword_10001E118);
}

uint64_t sub_100007340@<X0>(uint64_t a1@<X8>)
{
  v4 = *v1;
  v3 = v1[1];
  *a1 = sub_10001CCB4();
  *(a1 + 8) = 0x4026000000000000;
  *(a1 + 16) = 0;
  v5 = sub_100002394(&qword_10002C5E0, &qword_10001E288);
  return sub_100006CB4(v4, v3, a1 + *(v5 + 44));
}

unint64_t sub_1000073A4()
{
  result = qword_10002C420;
  if (!qword_10002C420)
  {
    sub_1000023DC(&qword_10002C418, &unk_10001DFC0);
    sub_100007430();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002C420);
  }

  return result;
}

unint64_t sub_100007430()
{
  result = qword_10002C428;
  if (!qword_10002C428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002C428);
  }

  return result;
}

unint64_t sub_100007484()
{
  result = qword_10002C4A8;
  if (!qword_10002C4A8)
  {
    sub_1000023DC(&qword_10002C480, &qword_10001E018);
    sub_10000266C(&qword_10002C4B0, &qword_10002C488, &qword_10001E020, &protocol conformance descriptor for VStack<A>);
    sub_10000266C(&qword_10002C4B8, &qword_10002C468, &qword_10001E000, &protocol conformance descriptor for VStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002C4A8);
  }

  return result;
}

unint64_t sub_100007564()
{
  result = qword_10002C4C0;
  if (!qword_10002C4C0)
  {
    sub_1000023DC(&qword_10002C458, &unk_10001DFF0);
    sub_10000266C(&qword_10002C498, &qword_10002C460, &qword_10001E510, &protocol conformance descriptor for HStack<A>);
    sub_10000266C(&qword_10002C4A0, &qword_10002C448, &qword_10001DFE0, &protocol conformance descriptor for VStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002C4C0);
  }

  return result;
}

unint64_t sub_100007650()
{
  result = qword_10002C508;
  if (!qword_10002C508)
  {
    sub_1000023DC(&qword_10002C500, &unk_10001E460);
    sub_10000266C(&qword_10002C510, &qword_10002C518, &qword_10001E0A0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002C508);
  }

  return result;
}

uint64_t sub_100007708(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

unint64_t sub_100007738()
{
  result = qword_10002C558;
  if (!qword_10002C558)
  {
    sub_1000023DC(&qword_10002C528, &qword_10001E110);
    sub_1000077F0();
    sub_10000266C(&qword_10002C570, &qword_10002C578, &unk_10001E1A0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002C558);
  }

  return result;
}

unint64_t sub_1000077F0()
{
  result = qword_10002C560;
  if (!qword_10002C560)
  {
    sub_1000023DC(&qword_10002C548, &unk_10001E130);
    sub_100007650();
    sub_10000266C(&qword_10002C568, &qword_10002C550, &qword_10001E5C0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002C560);
  }

  return result;
}

uint64_t sub_1000078A8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100002394(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_100007910(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_100007958(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1000079A8()
{
  result = qword_10002C5D0;
  if (!qword_10002C5D0)
  {
    sub_1000023DC(&qword_10002C3D0, &qword_10001DF78);
    sub_10000266C(&qword_10002C5D8, &qword_10002C3C0, &qword_10001DF68, &protocol conformance descriptor for VStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002C5D0);
  }

  return result;
}

uint64_t sub_100007A7C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002394(&qword_10002C5F0, &qword_10001E298);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100007AEC(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_100002394(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_100007B4C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100002394(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_100007C30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v24 = a1;
  v31 = a3;
  v4 = sub_100002394(&qword_10002C288, &qword_10001E390);
  __chkstk_darwin(v4 - 8);
  v29 = &v24 - v5;
  v30 = sub_10001CA14();
  v28 = *(v30 - 8);
  __chkstk_darwin(v30);
  v27 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for EventLiveActivityView(0);
  __chkstk_darwin(v7);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100002394(&qword_10002C638, &qword_10001E388);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v24 - v12;
  v14 = sub_100002394(&qword_10002C630, &qword_10001E380);
  v15 = *(v14 - 8);
  v25 = v14;
  v26 = v15;
  __chkstk_darwin(v14);
  v17 = &v24 - v16;
  sub_100002394(&qword_10002C648, &qword_10001E398);
  sub_10001D3E4();
  *&v9[*(v7 + 20)] = a2;

  sub_10001D064();
  v18 = sub_10000DD90(&qword_10002C640, type metadata accessor for EventLiveActivityView, &unk_10001DF18);
  sub_10001CFA4();

  sub_10000F1C4(v9);
  sub_10001D064();
  v32 = v7;
  v33 = v18;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_10001CFB4();

  (*(v11 + 8))(v13, v10);
  v20 = v27;
  sub_10001D3E4();
  v21 = v29;
  sub_10001C9F4();
  (*(v28 + 8))(v20, v30);
  v32 = v10;
  v33 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v22 = v25;
  sub_10001CFC4();
  sub_100007AEC(v21, &qword_10002C288, &qword_10001E390);
  return (*(v26 + 8))(v17, v22);
}

uint64_t sub_10000804C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v76 = a3;
  v5 = sub_100002394(&qword_10002C288, &qword_10001E390);
  __chkstk_darwin(v5 - 8);
  v75 = &v60 - v6;
  v74 = sub_10001CA14();
  v81 = *(v74 - 8);
  v7 = __chkstk_darwin(v74);
  v73 = &v60 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v69 = &v60 - v9;
  v10 = sub_10001D3D4();
  v71 = *(v10 - 8);
  v72 = v10;
  __chkstk_darwin(v10);
  v79 = &v60 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_100002394(&qword_10002C648, &qword_10001E398);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = __chkstk_darwin(v12);
  v80 = &v60 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v15);
  v65 = &v60 - v17;
  __chkstk_darwin(v16);
  v19 = &v60 - v18;
  v66 = &v60 - v18;
  v78 = sub_10001D364();
  v82 = *(v78 - 8);
  v20 = __chkstk_darwin(v78);
  v68 = &v60 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __chkstk_darwin(v20);
  v77 = &v60 - v23;
  __chkstk_darwin(v22);
  v70 = &v60 - v24;
  v25 = *(v13 + 16);
  v83 = a1;
  v25(v19, a1, v12);
  v62 = v25;
  v26 = *(v13 + 80);
  v27 = swift_allocObject();
  v67 = v27;
  v64 = a2;
  *(v27 + 16) = a2;
  v61 = *(v13 + 32);
  v61(v27 + ((v26 + 24) & ~v26), v66, v12);
  v28 = v65;
  v25(v65, a1, v12);
  v29 = (v26 + 16) & ~v26;
  v63 = v29 + v14;
  v30 = (v29 + v14 + 7) & 0xFFFFFFFFFFFFFFF8;
  v31 = swift_allocObject();
  v66 = v31;
  v32 = v61;
  v61(v31 + v29, v28, v12);
  *(v31 + v30) = a2;
  v33 = v80;
  v34 = v83;
  v35 = v62;
  v62(v80, v83, v12);
  v65 = swift_allocObject();
  v32(&v65[v29], v33, v12);
  v35(v33, v34, v12);
  v36 = swift_allocObject();
  v80 = v12;
  v32((v36 + v29), v33, v12);
  *(v36 + v30) = v64;
  swift_retain_n();
  sub_100002394(&qword_10002C650, &qword_10001E3A0);
  sub_100002394(&qword_10002C658, &qword_10001E3A8);
  sub_100002394(&qword_10002C660, &unk_10001E3B0);
  sub_10000266C(&qword_10002C668, &qword_10002C650, &qword_10001E3A0, &protocol conformance descriptor for TupleView<A>);
  sub_10000E1D0();
  sub_10000E468();
  v37 = v68;
  sub_10001D344();
  sub_100002394(&qword_10002C430, &unk_10001E3D0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10001DED0;
  LOBYTE(v33) = sub_10001CE34();
  *(inited + 32) = v33;
  v39 = sub_10001CE54();
  *(inited + 33) = v39;
  sub_10001CE44();
  sub_10001CE44();
  if (sub_10001CE44() != v33)
  {
    sub_10001CE44();
  }

  sub_10001CE44();
  if (sub_10001CE44() != v39)
  {
    sub_10001CE44();
  }

  v40 = v74;
  v41 = v81;
  v43 = v71;
  v42 = v72;
  v44 = v69;
  v45 = v79;
  sub_10001D3C4();
  sub_10001D334();
  v46 = *(v43 + 8);
  v46(v45, v42);
  v47 = *(v82 + 8);
  v82 += 8;
  v47(v37, v78);
  sub_10001D3E4();
  v48 = *(sub_10001C954() + 16);

  if (v48 < 3)
  {
    v49 = *(v41 + 8);
    v50 = v40;
    v49(v44, v40);
LABEL_10:
    sub_10001CE44();
    goto LABEL_11;
  }

  v51 = sub_10001C9E4();
  v49 = *(v41 + 8);
  v49(v44, v40);
  if (v51)
  {
    v50 = v40;
    goto LABEL_10;
  }

  v52 = sub_10001CE24();
  sub_10001CE44();
  sub_10001CE44();
  v50 = v40;
  if (sub_10001CE44() != v52)
  {
    goto LABEL_10;
  }

LABEL_11:
  v53 = v79;
  sub_10001D3C4();
  v54 = v70;
  v55 = v77;
  sub_10001D334();
  v46(v53, v42);
  v56 = v78;
  v47(v55, v78);
  v57 = v73;
  sub_10001D3E4();
  v58 = v75;
  sub_10001C9F4();
  v49(v57, v50);
  sub_10001D354();
  sub_100007AEC(v58, &qword_10002C288, &qword_10001E390);
  return (v47)(v54, v56);
}

uint64_t sub_10000892C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_10001CA14();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100002394(&qword_10002C648, &qword_10001E398);
  sub_10001D3E4();
  sub_100008A24(v7, a1, a2);
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_100008A24@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v23 = a3;
  v24 = sub_100002394(&qword_10002C708, &qword_10001E4B8);
  v22 = *(v24 - 8);
  __chkstk_darwin(v24);
  v6 = &v19 - v5;
  v21 = sub_100002394(&qword_10002C710, &unk_10001E4C0);
  v7 = *(v21 - 8);
  __chkstk_darwin(v21);
  v9 = &v19 - v8;
  v10 = sub_10001D4A4();
  __chkstk_darwin(v10 - 8);
  v20 = sub_100002394(&qword_10002C718, &qword_10001F8D0);
  v11 = *(v20 - 8);
  __chkstk_darwin(v20);
  v13 = &v19 - v12;
  sub_10001D484();
  v30 = a2;
  v31 = a1;
  v14 = sub_100002394(&qword_10002C720, &qword_10001E4D0);
  v15 = sub_10000EAFC();
  sub_10001D444();
  sub_10001D494();
  v28 = a2;
  v29 = a1;
  sub_100002394(&qword_10002C740, &qword_10001E4E0);
  v16 = sub_1000023DC(&qword_10002C748, &qword_10001E4E8);
  v17 = sub_10000EBBC();
  v32 = v16;
  v33 = v17;
  swift_getOpaqueTypeConformance2();
  sub_10001D444();
  v27 = v13;
  sub_100002394(&qword_10002C7E8, &qword_10001E540);
  v32 = v14;
  v33 = v15;
  swift_getOpaqueTypeConformance2();
  sub_10001D454();
  v25 = v6;
  v26 = v9;
  sub_100002394(&qword_10002C650, &qword_10001E3A0);
  sub_10000266C(&qword_10002C668, &qword_10002C650, &qword_10001E3A0, &protocol conformance descriptor for TupleView<A>);
  sub_10001D454();
  (*(v22 + 8))(v6, v24);
  (*(v7 + 8))(v9, v21);
  return (*(v11 + 8))(v13, v20);
}

uint64_t sub_100008E68@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  *&v67 = a1;
  v75 = a2;
  v2 = sub_10001D254();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v67 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = sub_100002394(&qword_10002C3F8, &qword_10001DFA0);
  v69 = *(v70 - 8);
  __chkstk_darwin(v70);
  v7 = &v67 - v6;
  v68 = sub_100002394(&qword_10002C400, &qword_10001DFA8);
  __chkstk_darwin(v68);
  v9 = &v67 - v8;
  v72 = sub_100002394(&qword_10002C408, &qword_10001DFB0);
  __chkstk_darwin(v72);
  v74 = &v67 - v10;
  v71 = sub_100002394(&qword_10002C410, &qword_10001DFB8);
  __chkstk_darwin(v71);
  v73 = &v67 - v11;
  v12 = sub_10001CA14();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v67 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100002394(&qword_10002C648, &qword_10001E398);
  sub_10001D3E4();
  v16 = sub_10001C9D4();
  v18 = v17;
  (*(v13 + 8))(v15, v12);
  PKFloatCeilToPixel();
  PKFloatFloorToPixel();
  v19 = sub_100016FC4(v16, v18);

  sub_10001D134();
  sub_10001CB04();
  v76 = v19;
  v77 = v82;
  v78 = v83;
  v79 = v84;
  v80 = v85;
  v81 = v86;
  (*(v3 + 104))(v5, enum case for LightenForegroundModifier.Style.normal(_:), v2);
  sub_100002394(&qword_10002C418, &unk_10001DFC0);
  sub_1000073A4();
  sub_10001CF84();
  (*(v3 + 8))(v5, v2);

  sub_100002394(&qword_10002C430, &unk_10001E3D0);
  inited = swift_initStackObject();
  v67 = xmmword_10001DED0;
  *(inited + 16) = xmmword_10001DED0;
  LOBYTE(v12) = sub_10001CE14();
  *(inited + 32) = v12;
  v21 = sub_10001CE24();
  *(inited + 33) = v21;
  v22 = sub_10001CE44();
  sub_10001CE44();
  if (sub_10001CE44() != v12)
  {
    v22 = sub_10001CE44();
  }

  sub_10001CE44();
  if (sub_10001CE44() != v21)
  {
    v22 = sub_10001CE44();
  }

  sub_10001CAC4();
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v30 = v29;
  (*(v69 + 32))(v9, v7, v70);
  v31 = &v9[*(v68 + 36)];
  *v31 = v22;
  *(v31 + 1) = v24;
  *(v31 + 2) = v26;
  *(v31 + 3) = v28;
  *(v31 + 4) = v30;
  v31[40] = 0;
  v32 = swift_initStackObject();
  *(v32 + 16) = v67;
  v33 = sub_10001CE34();
  *(v32 + 32) = v33;
  v34 = sub_10001CE54();
  *(v32 + 33) = v34;
  v35 = sub_10001CE44();
  sub_10001CE44();
  if (sub_10001CE44() != v33)
  {
    v35 = sub_10001CE44();
  }

  sub_10001CE44();
  if (sub_10001CE44() != v34)
  {
    v35 = sub_10001CE44();
  }

  sub_10001CAC4();
  v37 = v36;
  v39 = v38;
  v41 = v40;
  v43 = v42;
  v44 = v74;
  sub_1000078A8(v9, v74, &qword_10002C400, &qword_10001DFA8);
  v45 = v44 + *(v72 + 36);
  *v45 = v35;
  *(v45 + 8) = v37;
  *(v45 + 16) = v39;
  *(v45 + 24) = v41;
  *(v45 + 32) = v43;
  *(v45 + 40) = 0;
  v46 = v73;
  v47 = &v73[*(v71 + 36)];
  v48 = *(sub_10001CB54() + 20);
  v49 = enum case for RoundedCornerStyle.continuous(_:);
  v50 = sub_10001CCA4();
  (*(*(v50 - 8) + 104))(&v47[v48], v49, v50);
  __asm { FMOV            V0.2D, #2.0 }

  *v47 = _Q0;
  *&v47[*(sub_100002394(&qword_10002C438, &qword_10001DFD0) + 36)] = 256;
  sub_1000078A8(v44, v46, &qword_10002C408, &qword_10001DFB0);
  LOBYTE(v49) = sub_10001CE34();
  sub_10001CAC4();
  v57 = v56;
  v59 = v58;
  v61 = v60;
  v63 = v62;
  v64 = v75;
  sub_1000078A8(v46, v75, &qword_10002C410, &qword_10001DFB8);
  result = sub_100002394(&qword_10002C658, &qword_10001E3A8);
  v66 = v64 + *(result + 36);
  *v66 = v49;
  *(v66 + 8) = v57;
  *(v66 + 16) = v59;
  *(v66 + 24) = v61;
  *(v66 + 32) = v63;
  *(v66 + 40) = 0;
  return result;
}

uint64_t sub_1000095CC@<X0>(uint64_t a1@<X8>)
{
  v33 = a1;
  v1 = sub_100002394(&qword_10002C6A8, &qword_10001E3C0);
  v31 = *(v1 - 8);
  v32 = v1;
  __chkstk_darwin(v1);
  v3 = &v30 - v2;
  v4 = sub_10001CA14();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v30 - v9;
  sub_100002394(&qword_10002C648, &qword_10001E398);
  sub_10001D3E4();
  v11 = sub_10001C964();
  v13 = v12;
  v14 = *(v5 + 8);
  v14(v10, v4);
  if (!v13)
  {
    goto LABEL_5;
  }

  v15 = v11;
  sub_10001D3E4();
  v16 = sub_10001C9C4();
  v18 = v17;
  v14(v8, v4);
  if (!v18)
  {

LABEL_5:
    v28 = 1;
    v21 = v32;
    v27 = v33;
    return (*(v31 + 56))(v27, v28, 1, v21);
  }

  *v3 = sub_10001CCB4();
  *(v3 + 1) = 0;
  v3[16] = 0;
  v19 = sub_100002394(&qword_10002C6C0, &qword_10001E3E0);
  sub_100009888(v15, v13, v16, v18, &v3[*(v19 + 44)]);

  v20 = sub_10001CE54();
  sub_10001CAC4();
  v21 = v32;
  v22 = &v3[*(v32 + 36)];
  *v22 = v20;
  *(v22 + 1) = v23;
  *(v22 + 2) = v24;
  *(v22 + 3) = v25;
  *(v22 + 4) = v26;
  v22[40] = 0;
  v27 = v33;
  sub_1000078A8(v3, v33, &qword_10002C6A8, &qword_10001E3C0);
  v28 = 0;
  return (*(v31 + 56))(v27, v28, 1, v21);
}

uint64_t sub_100009888@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  *(&v61 + 1) = a4;
  *&v61 = a3;
  v65 = a5;
  v7 = sub_100002394(&qword_10002C6C8, &qword_10001E3E8);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v55 - v9;
  v66 = sub_100002394(&qword_10002C6D0, &qword_10001E3F0) - 8;
  v11 = __chkstk_darwin(v66);
  v64 = &v55 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v63 = &v55 - v14;
  v15 = __chkstk_darwin(v13);
  v62 = &v55 - v16;
  __chkstk_darwin(v15);
  v18 = &v55 - v17;
  *&v76 = a1;
  *(&v76 + 1) = a2;
  v60 = sub_1000034E8();

  v19 = sub_10001CF74();
  v21 = v20;
  v23 = v22;
  v25 = v24;
  KeyPath = swift_getKeyPath();
  v27 = sub_10001CF44();
  v28 = swift_getKeyPath();
  LOBYTE(v67) = v23 & 1;
  v73 = 0;
  *&v76 = v19;
  *(&v76 + 1) = v21;
  LOBYTE(v77) = v23 & 1;
  *(&v77 + 1) = v25;
  *&v78 = KeyPath;
  *(&v78 + 1) = 1;
  LOBYTE(v79) = 0;
  *(&v79 + 1) = v28;
  v80 = v27;
  v29 = sub_100002394(&qword_10002C6D8, &qword_10001E458);
  v30 = sub_10000E9E8();
  sub_10001D004();
  v74[3] = v79;
  v75 = v80;
  v74[1] = v77;
  v74[2] = v78;
  v74[0] = v76;
  sub_100007AEC(v74, &qword_10002C6D8, &qword_10001E458);
  sub_10001CEC4();
  *&v76 = v29;
  *(&v76 + 1) = v30;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v56 = v18;
  v55 = v7;
  sub_10001CFF4();
  v31 = *(v8 + 8);
  v57 = v8 + 8;
  v58 = v31;
  v31(v10, v7);
  v32 = sub_10001D054();
  v33 = sub_100002394(&qword_10002C6F8, &qword_10001E478);
  *&v18[*(v33 + 36)] = v32;
  v34 = swift_getKeyPath();
  v35 = &v18[*(v66 + 44)];
  *v35 = v34;
  v35[1] = 0x3FE999999999999ALL;
  v76 = v61;

  v36 = sub_10001CF74();
  v38 = v37;
  LOBYTE(v8) = v39;
  v41 = v40;
  v42 = swift_getKeyPath();
  v43 = sub_10001CF54();
  v44 = swift_getKeyPath();
  v73 = v8 & 1;
  v72 = 0;
  *&v67 = v36;
  *(&v67 + 1) = v38;
  LOBYTE(v68) = v8 & 1;
  *(&v68 + 1) = v41;
  *&v69 = v42;
  *(&v69 + 1) = 1;
  LOBYTE(v70) = 0;
  *(&v70 + 1) = v44;
  v71 = v43;
  sub_10001D004();
  v78 = v69;
  v79 = v70;
  v80 = v71;
  v76 = v67;
  v77 = v68;
  sub_100007AEC(&v76, &qword_10002C6D8, &qword_10001E458);
  sub_10001CEE4();
  v45 = v62;
  v46 = v55;
  sub_10001CFF4();
  v58(v10, v46);
  *(v45 + *(v33 + 36)) = sub_10001D084();
  v47 = swift_getKeyPath();
  v48 = (v45 + *(v66 + 44));
  *v48 = v47;
  v48[1] = 0x3FECCCCCCCCCCCCDLL;
  v49 = v56;
  v50 = v63;
  sub_100007B4C(v56, v63, &qword_10002C6D0, &qword_10001E3F0);
  v51 = v64;
  sub_100007B4C(v45, v64, &qword_10002C6D0, &qword_10001E3F0);
  v52 = v65;
  sub_100007B4C(v50, v65, &qword_10002C6D0, &qword_10001E3F0);
  v53 = sub_100002394(&qword_10002C700, &qword_10001E4B0);
  sub_100007B4C(v51, v52 + *(v53 + 48), &qword_10002C6D0, &qword_10001E3F0);
  sub_100007AEC(v45, &qword_10002C6D0, &qword_10001E3F0);
  sub_100007AEC(v49, &qword_10002C6D0, &qword_10001E3F0);
  sub_100007AEC(v51, &qword_10002C6D0, &qword_10001E3F0);
  return sub_100007AEC(v50, &qword_10002C6D0, &qword_10001E3F0);
}

uint64_t sub_100009EB4@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  *&v79 = a1;
  v78 = a2;
  v2 = sub_10001D254();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v71 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = sub_100002394(&qword_10002C3F8, &qword_10001DFA0);
  v72 = *(v73 - 8);
  __chkstk_darwin(v73);
  v7 = &v71 - v6;
  v71 = sub_100002394(&qword_10002C400, &qword_10001DFA8);
  __chkstk_darwin(v71);
  v9 = &v71 - v8;
  v75 = sub_100002394(&qword_10002C408, &qword_10001DFB0);
  __chkstk_darwin(v75);
  v76 = &v71 - v10;
  v74 = sub_100002394(&qword_10002C410, &qword_10001DFB8);
  __chkstk_darwin(v74);
  v77 = &v71 - v11;
  v12 = sub_10001CA14();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v71 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100002394(&qword_10002C648, &qword_10001E398);
  sub_10001D3E4();
  v16 = sub_10001C9D4();
  v18 = v17;
  (*(v13 + 8))(v15, v12);
  PKFloatCeilToPixel();
  PKFloatFloorToPixel();
  v19 = sub_100016FC4(v16, v18);

  sub_10001D134();
  sub_10001CB04();
  v80 = v19;
  v81 = v86;
  v82 = v87;
  v83 = v88;
  v84 = v89;
  v85 = v90;
  (*(v3 + 104))(v5, enum case for LightenForegroundModifier.Style.normal(_:), v2);
  sub_100002394(&qword_10002C418, &unk_10001DFC0);
  sub_1000073A4();
  sub_10001CF84();
  (*(v3 + 8))(v5, v2);

  sub_100002394(&qword_10002C430, &unk_10001E3D0);
  inited = swift_initStackObject();
  v79 = xmmword_10001DED0;
  *(inited + 16) = xmmword_10001DED0;
  LOBYTE(v12) = sub_10001CE14();
  *(inited + 32) = v12;
  v21 = sub_10001CE24();
  *(inited + 33) = v21;
  v22 = sub_10001CE44();
  sub_10001CE44();
  if (sub_10001CE44() != v12)
  {
    v22 = sub_10001CE44();
  }

  sub_10001CE44();
  if (sub_10001CE44() != v21)
  {
    v22 = sub_10001CE44();
  }

  sub_10001CAC4();
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v30 = v29;
  (*(v72 + 32))(v9, v7, v73);
  v31 = &v9[*(v71 + 36)];
  *v31 = v22;
  *(v31 + 1) = v24;
  *(v31 + 2) = v26;
  *(v31 + 3) = v28;
  *(v31 + 4) = v30;
  v31[40] = 0;
  v32 = swift_initStackObject();
  *(v32 + 16) = v79;
  v33 = sub_10001CE34();
  *(v32 + 32) = v33;
  v34 = sub_10001CE54();
  *(v32 + 33) = v34;
  v35 = sub_10001CE44();
  sub_10001CE44();
  if (sub_10001CE44() != v33)
  {
    v35 = sub_10001CE44();
  }

  sub_10001CE44();
  if (sub_10001CE44() != v34)
  {
    v35 = sub_10001CE44();
  }

  sub_10001CAC4();
  v37 = v36;
  v39 = v38;
  v41 = v40;
  v43 = v42;
  v44 = v9;
  v45 = v76;
  sub_1000078A8(v44, v76, &qword_10002C400, &qword_10001DFA8);
  v46 = v45 + *(v75 + 36);
  *v46 = v35;
  *(v46 + 8) = v37;
  *(v46 + 16) = v39;
  *(v46 + 24) = v41;
  *(v46 + 32) = v43;
  *(v46 + 40) = 0;
  v47 = v77;
  v48 = &v77[*(v74 + 36)];
  v49 = *(sub_10001CB54() + 20);
  v50 = enum case for RoundedCornerStyle.continuous(_:);
  v51 = sub_10001CCA4();
  (*(*(v51 - 8) + 104))(&v48[v49], v50, v51);
  __asm { FMOV            V0.2D, #2.0 }

  *v48 = _Q0;
  *&v48[*(sub_100002394(&qword_10002C438, &qword_10001DFD0) + 36)] = 256;
  sub_1000078A8(v45, v47, &qword_10002C408, &qword_10001DFB0);
  v57 = swift_initStackObject();
  *(v57 + 16) = v79;
  LOBYTE(v45) = sub_10001CE34();
  *(v57 + 32) = v45;
  v58 = sub_10001CE54();
  *(v57 + 33) = v58;
  v59 = sub_10001CE44();
  sub_10001CE44();
  if (sub_10001CE44() != v45)
  {
    v59 = sub_10001CE44();
  }

  sub_10001CE44();
  if (sub_10001CE44() != v58)
  {
    v59 = sub_10001CE44();
  }

  sub_10001CAC4();
  v61 = v60;
  v63 = v62;
  v65 = v64;
  v67 = v66;
  v68 = v78;
  sub_1000078A8(v47, v78, &qword_10002C410, &qword_10001DFB8);
  result = sub_100002394(&qword_10002C658, &qword_10001E3A8);
  v70 = v68 + *(result + 36);
  *v70 = v59;
  *(v70 + 8) = v61;
  *(v70 + 16) = v63;
  *(v70 + 24) = v65;
  *(v70 + 32) = v67;
  *(v70 + 40) = 0;
  return result;
}

uint64_t sub_10000A6A8@<X0>(uint64_t *a1@<X8>)
{
  v75 = a1;
  v1 = sub_10001D254();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v65 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = sub_100002394(&qword_10002C3F8, &qword_10001DFA0);
  v5 = *(v67 - 8);
  __chkstk_darwin(v67);
  v7 = &v65 - v6;
  v66 = sub_100002394(&qword_10002C400, &qword_10001DFA8);
  __chkstk_darwin(v66);
  v9 = &v65 - v8;
  v72 = sub_100002394(&qword_10002C408, &qword_10001DFB0);
  __chkstk_darwin(v72);
  v74 = &v65 - v10;
  v71 = sub_100002394(&qword_10002C410, &qword_10001DFB8);
  v11 = __chkstk_darwin(v71);
  v13 = &v65 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v73 = &v65 - v14;
  v15 = *(sub_10001C954() + 16);

  if (!v15)
  {
    sub_10001C9A4();
    if (v17)
    {

      v16 = 0x404C000000000000;
    }

    else
    {
      v16 = 0x4048800000000000;
    }

    goto LABEL_10;
  }

  if (sub_10001C9E4())
  {
    v16 = 0x4050800000000000;
LABEL_10:
    v19 = *&v16;
    goto LABEL_11;
  }

  v18 = *(sub_10001C954() + 16);

  if (v18 >= 3)
  {
    v19 = 92.0;
  }

  else
  {
    v19 = 66.0;
  }

LABEL_11:
  sub_10000E8C8(v19);
  v70 = sub_10001D074();
  v69 = sub_10001D124();
  v68 = v20;
  v21 = sub_10001C9D4();
  v23 = sub_100016FC4(v21, v22);

  sub_10001D134();
  sub_10001CB04();
  v76 = v23;
  v77 = v82;
  v78 = v83;
  v79 = v84;
  v80 = v85;
  v81 = v86;
  (*(v2 + 104))(v4, enum case for LightenForegroundModifier.Style.normal(_:), v1);
  sub_100002394(&qword_10002C418, &unk_10001DFC0);
  sub_1000073A4();
  sub_10001CF84();
  (*(v2 + 8))(v4, v1);

  sub_100002394(&qword_10002C430, &unk_10001E3D0);
  inited = swift_initStackObject();
  v65 = xmmword_10001DED0;
  *(inited + 16) = xmmword_10001DED0;
  v25 = sub_10001CE14();
  *(inited + 32) = v25;
  v26 = sub_10001CE24();
  *(inited + 33) = v26;
  v27 = sub_10001CE44();
  sub_10001CE44();
  if (sub_10001CE44() != v25)
  {
    v27 = sub_10001CE44();
  }

  sub_10001CE44();
  if (sub_10001CE44() != v26)
  {
    v27 = sub_10001CE44();
  }

  sub_10001CAC4();
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v35 = v34;
  (*(v5 + 32))(v9, v7, v67);
  v36 = &v9[*(v66 + 36)];
  *v36 = v27;
  *(v36 + 1) = v29;
  *(v36 + 2) = v31;
  *(v36 + 3) = v33;
  *(v36 + 4) = v35;
  v36[40] = 0;
  v37 = swift_initStackObject();
  *(v37 + 16) = v65;
  v38 = sub_10001CE34();
  *(v37 + 32) = v38;
  v39 = sub_10001CE54();
  *(v37 + 33) = v39;
  v40 = sub_10001CE44();
  sub_10001CE44();
  if (sub_10001CE44() != v38)
  {
    v40 = sub_10001CE44();
  }

  sub_10001CE44();
  if (sub_10001CE44() != v39)
  {
    v40 = sub_10001CE44();
  }

  if (v19 <= 66.0)
  {
    v41 = 4.0;
  }

  else
  {
    v41 = 6.0;
  }

  v42 = sub_100002394(&qword_10002C720, &qword_10001E4D0);
  v43 = v75;
  v44 = v75 + *(v42 + 36);
  sub_10001CAC4();
  v46 = v45;
  v48 = v47;
  v50 = v49;
  v52 = v51;
  v53 = v9;
  v54 = v74;
  sub_1000078A8(v53, v74, &qword_10002C400, &qword_10001DFA8);
  v55 = v54 + *(v72 + 36);
  *v55 = v40;
  *(v55 + 8) = v46;
  *(v55 + 16) = v48;
  *(v55 + 24) = v50;
  *(v55 + 32) = v52;
  *(v55 + 40) = 0;
  v56 = &v13[*(v71 + 36)];
  v57 = *(sub_10001CB54() + 20);
  v58 = enum case for RoundedCornerStyle.continuous(_:);
  v59 = sub_10001CCA4();
  (*(*(v59 - 8) + 104))(v56 + v57, v58, v59);
  *v56 = v41;
  v56[1] = v41;
  *(v56 + *(sub_100002394(&qword_10002C438, &qword_10001DFD0) + 36)) = 256;
  sub_1000078A8(v54, v13, &qword_10002C408, &qword_10001DFB0);
  v60 = v13;
  v61 = v73;
  sub_1000078A8(v60, v73, &qword_10002C410, &qword_10001DFB8);
  sub_1000078A8(v61, v44, &qword_10002C410, &qword_10001DFB8);
  result = sub_100002394(&qword_10002C738, &qword_10001E4D8);
  v63 = (v44 + *(result + 36));
  v64 = v68;
  *v63 = v69;
  v63[1] = v64;
  *v43 = v70;
  return result;
}

uint64_t sub_10000AE2C(uint64_t a1, uint64_t a2)
{
  v3 = sub_10001D4C4();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100002394(&qword_10002C748, &qword_10001E4E8);
  __chkstk_darwin(v7);
  v9 = &v11 - v8;
  sub_10000AFA8(a2, &v11 - v8);
  sub_10001D4B4();
  sub_10000EBBC();
  sub_10001CF94();
  (*(v4 + 8))(v6, v3);
  return sub_100007AEC(v9, &qword_10002C748, &qword_10001E4E8);
}

uint64_t sub_10000AFA8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v74 = a2;
  v69 = sub_100002394(&qword_10002C7D0, &qword_10001E530);
  __chkstk_darwin(v69);
  v64 = (&v62 - v3);
  v66 = sub_100002394(&qword_10002C7F0, &qword_10001E548);
  __chkstk_darwin(v66);
  v68 = &v62 - v4;
  v5 = sub_100002394(&qword_10002C7F8, &qword_10001E550);
  v6 = __chkstk_darwin(v5 - 8);
  v62 = &v62 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v9 = &v62 - v8;
  v65 = sub_100002394(&qword_10002C7B0, &qword_10001E520);
  __chkstk_darwin(v65);
  v63 = (&v62 - v10);
  v76 = sub_100002394(&qword_10002C7A0, &qword_10001E518);
  __chkstk_darwin(v76);
  v67 = &v62 - v11;
  v72 = sub_100002394(&qword_10002C790, &qword_10001E508);
  __chkstk_darwin(v72);
  v13 = &v62 - v12;
  v73 = sub_100002394(&qword_10002C800, &qword_10001E558);
  __chkstk_darwin(v73);
  v71 = &v62 - v14;
  v70 = sub_100002394(&qword_10002C808, &unk_10001E560);
  __chkstk_darwin(v70);
  v16 = &v62 - v15;
  v75 = sub_100002394(&qword_10002C760, &qword_10001E4F0);
  __chkstk_darwin(v75);
  v18 = &v62 - v17;
  v19 = sub_100002394(&qword_10002C468, &qword_10001E000);
  v20 = __chkstk_darwin(v19 - 8);
  v22 = &v62 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v24 = &v62 - v23;
  v25 = sub_100002394(&qword_10002C770, &qword_10001E4F8);
  __chkstk_darwin(v25);
  v27 = &v62 - v26;
  v28 = *(sub_10001C954() + 16);

  if (v28)
  {
    v29 = v18;
    v30 = v72;
    v31 = *(sub_10001C954() + 16);

    if (v31 > 2)
    {
      if (sub_10001C9E4())
      {
        v45 = sub_10001CC94();
        v46 = v63;
        *v63 = v45;
        *(v46 + 8) = 0;
        *(v46 + 16) = 0;
        v47 = v46 + *(sub_100002394(&qword_10002C818, &qword_10001E578) + 44);
        *v9 = sub_10001CCC4();
        *(v9 + 1) = 0;
        v9[16] = 0;
        v48 = sub_100002394(&qword_10002C820, &qword_10001E580);
        sub_10000C64C(a1, &v9[*(v48 + 44)]);
        v49 = v62;
        sub_100007B4C(v9, v62, &qword_10002C7F8, &qword_10001E550);
        sub_100007B4C(v49, v47, &qword_10002C7F8, &qword_10001E550);
        v50 = v47 + *(sub_100002394(&qword_10002C828, &unk_10001E588) + 48);
        *v50 = 0;
        *(v50 + 8) = 0;
        sub_100007AEC(v9, &qword_10002C7F8, &qword_10001E550);
        sub_100007AEC(v49, &qword_10002C7F8, &qword_10001E550);
        sub_10000F050(a1);
        sub_10001D134();
        sub_10001CB04();
        v51 = (v46 + *(v65 + 36));
        v52 = v78;
        *v51 = v77;
        v51[1] = v52;
        v51[2] = v79;
        v53 = &qword_10002C7B0;
        v54 = &qword_10001E520;
        sub_100007B4C(v46, v68, &qword_10002C7B0, &qword_10001E520);
      }

      else
      {
        v56 = sub_10001CCC4();
        v46 = v64;
        *v64 = v56;
        *(v46 + 8) = 0;
        *(v46 + 16) = 0;
        v57 = sub_100002394(&qword_10002C810, &qword_10001E570);
        sub_10000D18C(a1, v46 + *(v57 + 44));
        sub_10000F050(a1);
        sub_10001D134();
        sub_10001CB04();
        v58 = v68;
        v59 = (v46 + *(v69 + 36));
        v60 = v78;
        *v59 = v77;
        v59[1] = v60;
        v59[2] = v79;
        v53 = &qword_10002C7D0;
        v54 = &qword_10001E530;
        sub_100007B4C(v46, v58, &qword_10002C7D0, &qword_10001E530);
      }

      swift_storeEnumTagMultiPayload();
      sub_10000EED0();
      sub_10000EF88();
      v55 = v67;
      sub_10001CD84();
      sub_100007AEC(v46, v53, v54);
      v35 = &qword_10002C7A0;
      v36 = &qword_10001E518;
      sub_100007B4C(v55, v71, &qword_10002C7A0, &qword_10001E518);
      swift_storeEnumTagMultiPayload();
      sub_10000EC48();
      sub_10000EE44();
      sub_10001CD84();
      v37 = v55;
    }

    else
    {
      *v13 = sub_10001CC94();
      *(v13 + 1) = 0;
      v13[16] = 0;
      v32 = sub_100002394(&qword_10002C4C8, &unk_10001E030);
      sub_10000C224(a1, &v13[*(v32 + 44)]);
      sub_10000F050(a1);
      sub_10001D134();
      sub_10001CB04();
      v33 = &v13[*(v30 + 36)];
      v34 = v78;
      *v33 = v77;
      *(v33 + 1) = v34;
      *(v33 + 2) = v79;
      v35 = &qword_10002C790;
      v36 = &qword_10001E508;
      sub_100007B4C(v13, v16, &qword_10002C790, &qword_10001E508);
      swift_storeEnumTagMultiPayload();
      sub_10000ECD4();
      sub_10000ED8C();
      sub_10001CD84();
      sub_100007B4C(v29, v71, &qword_10002C760, &qword_10001E4F0);
      swift_storeEnumTagMultiPayload();
      sub_10000EC48();
      sub_10000EE44();
      sub_10001CD84();
      sub_100007AEC(v29, &qword_10002C760, &qword_10001E4F0);
      v37 = v13;
    }

    v43 = v35;
    v44 = v36;
  }

  else
  {
    *v27 = sub_10001CC94();
    *(v27 + 1) = 0;
    v27[16] = 0;
    v38 = &v27[*(sub_100002394(&qword_10002C830, &qword_10001E598) + 44)];
    *v24 = sub_10001CCC4();
    *(v24 + 1) = 0;
    v24[16] = 0;
    v39 = sub_100002394(&qword_10002C4D0, &qword_10001E5A0);
    sub_10000BA68(a1, &v24[*(v39 + 44)]);
    sub_100007B4C(v24, v22, &qword_10002C468, &qword_10001E000);
    sub_100007B4C(v22, v38, &qword_10002C468, &qword_10001E000);
    v40 = v38 + *(sub_100002394(&qword_10002C838, &qword_10001E5A8) + 48);
    *v40 = 0;
    *(v40 + 8) = 0;
    sub_100007AEC(v24, &qword_10002C468, &qword_10001E000);
    sub_100007AEC(v22, &qword_10002C468, &qword_10001E000);
    sub_10000F050(a1);
    sub_10001D134();
    sub_10001CB04();
    v41 = &v27[*(v25 + 36)];
    v42 = v78;
    *v41 = v77;
    *(v41 + 1) = v42;
    *(v41 + 2) = v79;
    sub_100007B4C(v27, v16, &qword_10002C770, &qword_10001E4F8);
    swift_storeEnumTagMultiPayload();
    sub_10000ECD4();
    sub_10000ED8C();
    sub_10001CD84();
    sub_100007B4C(v18, v71, &qword_10002C760, &qword_10001E4F0);
    swift_storeEnumTagMultiPayload();
    sub_10000EC48();
    sub_10000EE44();
    sub_10001CD84();
    sub_100007AEC(v18, &qword_10002C760, &qword_10001E4F0);
    v37 = v27;
    v43 = &qword_10002C770;
    v44 = &qword_10001E4F8;
  }

  return sub_100007AEC(v37, v43, v44);
}

uint64_t sub_10000BA68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v84 = a1;
  v91 = a2;
  v82 = sub_100002394(&qword_10002C528, &qword_10001E110);
  __chkstk_darwin(v82);
  v81 = &v78 - v2;
  v3 = sub_100002394(&qword_10002C530, &qword_10001E118);
  v4 = *(v3 - 8);
  v88 = v3;
  v89 = v4;
  __chkstk_darwin(v3);
  v83 = &v78 - v5;
  v6 = sub_100002394(&qword_10002C538, &unk_10001E120);
  v7 = __chkstk_darwin(v6 - 8);
  v90 = &v78 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v85 = &v78 - v9;
  v10 = sub_10001CF24();
  v11 = *(v10 - 8);
  v92 = v10;
  v93 = v11;
  __chkstk_darwin(v10);
  v13 = &v78 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = (sub_100002394(&qword_10002C4F8, &qword_10001E060) - 8);
  v14 = __chkstk_darwin(v86);
  v87 = &v78 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v17 = &v78 - v16;
  v94 = sub_10001CA04();
  v95 = v18;
  v79 = sub_1000034E8();
  v19 = sub_10001CF74();
  v21 = v20;
  v23 = v22;
  v25 = v24;
  KeyPath = swift_getKeyPath();
  v94 = v19;
  v95 = v21;
  v96 = v23 & 1;
  v97 = v25;
  v98 = KeyPath;
  v99 = 1;
  v100 = 0;
  sub_10001CEE4();
  sub_100002394(&qword_10002C500, &unk_10001E460);
  sub_100007650();
  sub_10001CFF4();
  sub_100007708(v19, v21, v23 & 1);

  sub_10001CE74();
  v27 = enum case for Font.Leading.tight(_:);
  v29 = v92;
  v28 = v93;
  v30 = *(v93 + 104);
  v30(v13, enum case for Font.Leading.tight(_:), v92);
  v31 = sub_10001CF34();

  v32 = v28 + 8;
  v33 = *(v28 + 8);
  v80 = v13;
  v93 = v32;
  v33(v13, v29);
  v34 = swift_getKeyPath();
  v35 = &v17[*(sub_100002394(&qword_10002C4E8, &qword_10001E050) + 36)];
  *v35 = v34;
  v35[1] = v31;
  v36 = sub_10001D084();
  *&v17[*(sub_100002394(&qword_10002C4F0, &qword_10001E058) + 36)] = v36;
  v37 = swift_getKeyPath();
  v38 = *(v86 + 11);
  v86 = v17;
  v39 = &v17[v38];
  *v39 = v37;
  v39[1] = 0x3FE999999999999ALL;
  v40 = sub_10001C9A4();
  if (v41)
  {
    v94 = v40;
    v95 = v41;
    v42 = sub_10001CF74();
    v44 = v43;
    v46 = v45;
    LODWORD(v84) = v27;
    v48 = v47;
    v49 = swift_getKeyPath();
    v79 = v30;
    v50 = v49;
    v51 = sub_100002394(&qword_10002C548, &unk_10001E130);
    v52 = v81;
    v53 = &v81[*(v51 + 36)];
    v54 = *(sub_100002394(&qword_10002C550, &qword_10001E5C0) + 28);
    v78 = v33;
    v55 = enum case for Text.TruncationMode.tail(_:);
    v56 = sub_10001CF64();
    (*(*(v56 - 8) + 104))(v53 + v54, v55, v56);
    *v53 = swift_getKeyPath();
    *v52 = v42;
    *(v52 + 8) = v44;
    *(v52 + 16) = v46 & 1;
    *(v52 + 24) = v48;
    *(v52 + 32) = v50;
    *(v52 + 40) = 1;
    *(v52 + 48) = 0;
    v57 = swift_getKeyPath();
    v58 = v52 + *(v82 + 36);
    *v58 = v57;
    *(v58 + 8) = 2;
    sub_10001CEB4();
    sub_100007738();
    v59 = v83;
    sub_10001CFF4();
    sub_100007AEC(v52, &qword_10002C528, &qword_10001E110);
    sub_10001CE84();
    v60 = v80;
    v61 = v92;
    v79(v80, v84, v92);
    v62 = sub_10001CF34();

    v78(v60, v61);
    v63 = swift_getKeyPath();
    v64 = (v59 + *(sub_100002394(&qword_10002C580, &unk_10001E630) + 36));
    *v64 = v63;
    v64[1] = v62;
    v65 = sub_10001D054();
    *(v59 + *(sub_100002394(&qword_10002C588, &unk_10001E1B0) + 36)) = v65;
    v66 = swift_getKeyPath();
    v67 = v88;
    v68 = (v59 + *(v88 + 36));
    *v68 = v66;
    v68[1] = 0x3FE999999999999ALL;
    v69 = v85;
    sub_1000078A8(v59, v85, &qword_10002C530, &qword_10001E118);
    v70 = 0;
    v71 = v67;
  }

  else
  {
    v71 = v88;
    v69 = v85;
    v70 = 1;
  }

  (*(v89 + 56))(v69, v70, 1, v71);
  v73 = v86;
  v72 = v87;
  sub_100007B4C(v86, v87, &qword_10002C4F8, &qword_10001E060);
  v74 = v90;
  sub_100007B4C(v69, v90, &qword_10002C538, &unk_10001E120);
  v75 = v91;
  sub_100007B4C(v72, v91, &qword_10002C4F8, &qword_10001E060);
  v76 = sub_100002394(&qword_10002C540, &unk_10001E5B0);
  sub_100007B4C(v74, v75 + *(v76 + 48), &qword_10002C538, &unk_10001E120);
  sub_100007AEC(v69, &qword_10002C538, &unk_10001E120);
  sub_100007AEC(v73, &qword_10002C4F8, &qword_10001E060);
  sub_100007AEC(v74, &qword_10002C538, &unk_10001E120);
  return sub_100007AEC(v72, &qword_10002C4F8, &qword_10001E060);
}

uint64_t sub_10000C224@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v52 = sub_10001C994();
  v4 = *(v52 - 8);
  __chkstk_darwin(v52);
  v51 = v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100002394(&qword_10002C590, &unk_10001E640);
  v7 = v6 - 8;
  v8 = __chkstk_darwin(v6);
  v10 = v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = v43 - v11;
  *v12 = sub_10001CDE4();
  v13 = sub_100002394(&qword_10002C598, &unk_10001E1C0);
  sub_10000CC60(a1, &v12[*(v13 + 44)]);
  v14 = &v12[*(sub_100002394(&qword_10002C5A0, &unk_10001E650) + 36)];
  v15 = *(sub_100002394(&qword_10002C550, &qword_10001E5C0) + 28);
  v16 = enum case for Text.TruncationMode.tail(_:);
  v17 = sub_10001CF64();
  (*(*(v17 - 8) + 104))(v14 + v15, v16, v17);
  *v14 = swift_getKeyPath();
  KeyPath = swift_getKeyPath();
  v19 = &v12[*(sub_100002394(&qword_10002C5A8, &unk_10001E1D0) + 36)];
  *v19 = KeyPath;
  v19[8] = 0;
  *&v12[*(v7 + 44)] = sub_10001D084();
  v20 = sub_10001C954();
  v21 = *(v20 + 16);
  if (v21)
  {
    v44 = v12;
    v45 = v10;
    v46 = a2;
    v53 = &_swiftEmptyArrayStorage;
    sub_10000E79C(0, v21, 0);
    v22 = v53;
    v24 = *(v4 + 16);
    v23 = v4 + 16;
    v25 = (*(v23 + 64) + 32) & ~*(v23 + 64);
    v26 = v23;
    v43[1] = v20;
    v27 = v20 + v25;
    v48 = *(v26 + 56);
    v49 = v24;
    v50 = v26;
    v47 = (v26 - 8);
    do
    {
      v28 = v51;
      v29 = v52;
      v49(v51, v27, v52);
      v30 = sub_10001C974();
      v32 = v31;
      v33 = sub_10001C984();
      v35 = v34;
      (*v47)(v28, v29);
      v53 = v22;
      v37 = v22[2];
      v36 = v22[3];
      if (v37 >= v36 >> 1)
      {
        sub_10000E79C((v36 > 1), v37 + 1, 1);
        v22 = v53;
      }

      v22[2] = v37 + 1;
      v38 = &v22[4 * v37];
      v38[4] = v30;
      v38[5] = v32;
      v38[6] = v33;
      v38[7] = v35;
      v27 += v48;
      --v21;
    }

    while (v21);

    v10 = v45;
    a2 = v46;
    v12 = v44;
  }

  else
  {

    v22 = &_swiftEmptyArrayStorage;
  }

  sub_100007B4C(v12, v10, &qword_10002C590, &unk_10001E640);
  sub_100007B4C(v10, a2, &qword_10002C590, &unk_10001E640);
  v39 = sub_100002394(&qword_10002C5B0, &qword_10001E660);
  v40 = a2 + *(v39 + 48);
  *v40 = 0x402C000000000000;
  *(v40 + 8) = 0;
  v41 = a2 + *(v39 + 64);
  *v41 = v22;
  *(v41 + 8) = xmmword_10001E2D0;
  *(v41 + 24) = 1;
  *(v41 + 32) = 0x4034000000000000;

  sub_100007AEC(v12, &qword_10002C590, &unk_10001E640);

  return sub_100007AEC(v10, &qword_10002C590, &unk_10001E640);
}

void sub_10000C64C(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v56 = a2;
  v53 = sub_100002394(&qword_10002C848, &qword_10001E670);
  v52 = *(v53 - 8);
  __chkstk_darwin(v53);
  v51 = &v48 - v3;
  v50 = sub_100002394(&qword_10002C850, &qword_10001E678);
  __chkstk_darwin(v50);
  v5 = &v48 - v4;
  v49 = sub_100002394(&qword_10002C858, &qword_10001E680);
  v6 = __chkstk_darwin(v49);
  v55 = &v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v6);
  v10 = &v48 - v9;
  __chkstk_darwin(v8);
  v54 = &v48 - v11;
  v12 = sub_100002394(&qword_10002C590, &unk_10001E640);
  v13 = v12 - 8;
  v14 = __chkstk_darwin(v12);
  v16 = &v48 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v18 = &v48 - v17;
  *v18 = sub_10001CDE4();
  v19 = sub_100002394(&qword_10002C598, &unk_10001E1C0);
  sub_10000CC60(a1, &v18[*(v19 + 44)]);
  v20 = &v18[*(sub_100002394(&qword_10002C5A0, &unk_10001E650) + 36)];
  v21 = *(sub_100002394(&qword_10002C550, &qword_10001E5C0) + 28);
  v22 = enum case for Text.TruncationMode.tail(_:);
  v23 = sub_10001CF64();
  (*(*(v23 - 8) + 104))(v20 + v21, v22, v23);
  *v20 = swift_getKeyPath();
  KeyPath = swift_getKeyPath();
  v25 = &v18[*(sub_100002394(&qword_10002C5A8, &unk_10001E1D0) + 36)];
  *v25 = KeyPath;
  v25[8] = 2;
  *&v18[*(v13 + 44)] = sub_10001D084();
  v26 = sub_10001D4F4();
  v27 = PKLocalizedTicketingString(v26);

  if (v27)
  {
    v28 = sub_10001D524();
    v30 = v29;

    *&v62[0] = v28;
    *(&v62[0] + 1) = v30;
    sub_1000034E8();
    v31 = sub_10001CF74();
    v33 = v32;
    LOBYTE(v28) = v34;
    v36 = v35;
    v37 = swift_getKeyPath();
    v38 = sub_10001CE84();
    v39 = swift_getKeyPath();
    v65 = v28 & 1;
    v64 = 0;
    *&v57 = v31;
    *(&v57 + 1) = v33;
    LOBYTE(v58) = v28 & 1;
    *(&v58 + 1) = v36;
    *&v59 = v37;
    *(&v59 + 1) = 1;
    LOBYTE(v60) = 0;
    *(&v60 + 1) = v39;
    v61 = v38;
    sub_10001CED4();
    sub_100002394(&qword_10002C6D8, &qword_10001E458);
    sub_10000E9E8();
    v40 = v51;
    sub_10001CFF4();
    v62[2] = v59;
    v62[3] = v60;
    v63 = v61;
    v62[0] = v57;
    v62[1] = v58;
    sub_100007AEC(v62, &qword_10002C6D8, &qword_10001E458);
    v41 = sub_10001D054();
    (*(v52 + 32))(v5, v40, v53);
    *&v5[*(v50 + 36)] = v41;
    v42 = swift_getKeyPath();
    sub_1000078A8(v5, v10, &qword_10002C850, &qword_10001E678);
    v43 = &v10[*(v49 + 36)];
    *v43 = v42;
    v43[1] = 0x3FE999999999999ALL;
    v44 = v54;
    sub_1000078A8(v10, v54, &qword_10002C858, &qword_10001E680);
    sub_100007B4C(v18, v16, &qword_10002C590, &unk_10001E640);
    v45 = v55;
    sub_100007B4C(v44, v55, &qword_10002C858, &qword_10001E680);
    v46 = v56;
    sub_100007B4C(v16, v56, &qword_10002C590, &unk_10001E640);
    v47 = sub_100002394(&qword_10002C860, &qword_10001E688);
    sub_100007B4C(v45, v46 + *(v47 + 48), &qword_10002C858, &qword_10001E680);
    sub_100007AEC(v44, &qword_10002C858, &qword_10001E680);
    sub_100007AEC(v18, &qword_10002C590, &unk_10001E640);
    sub_100007AEC(v45, &qword_10002C858, &qword_10001E680);
    sub_100007AEC(v16, &qword_10002C590, &unk_10001E640);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_10000CC60@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v54 = a1;
  v60 = a2;
  v58 = sub_100002394(&qword_10002C5B8, &qword_10001E1E0) - 8;
  v2 = __chkstk_darwin(v58);
  v59 = &v45 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v56 = &v45 - v4;
  v55 = sub_10001CF24();
  v62 = *(v55 - 8);
  __chkstk_darwin(v55);
  v53 = &v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = sub_100002394(&qword_10002C4E8, &qword_10001E050) - 8;
  v6 = __chkstk_darwin(v61);
  v57 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v9 = &v45 - v8;
  v63 = sub_10001CA04();
  v64 = v10;
  v52 = sub_1000034E8();
  v11 = sub_10001CF74();
  v13 = v12;
  v15 = v14;
  v17 = v16;
  KeyPath = swift_getKeyPath();
  v63 = v11;
  v64 = v13;
  v65 = v15 & 1;
  v66 = v17;
  v67 = KeyPath;
  v68 = 1;
  v69 = 0;
  sub_10001CEB4();
  v51 = sub_100002394(&qword_10002C500, &unk_10001E460);
  v19 = sub_100007650();
  v49 = v9;
  v50 = v19;
  sub_10001CFF4();
  sub_100007708(v11, v13, v15 & 1);

  sub_10001CF14();
  v48 = enum case for Font.Leading.tight(_:);
  v20 = v62;
  v47 = *(v62 + 104);
  v21 = v53;
  v22 = v55;
  v47(v53);
  v23 = sub_10001CF34();

  v24 = *(v20 + 8);
  v62 = v20 + 8;
  v46 = v24;
  v24(v21, v22);
  v25 = swift_getKeyPath();
  v26 = &v9[*(v61 + 44)];
  *v26 = v25;
  v26[1] = v23;
  v63 = sub_10001CA04();
  v64 = v27;
  v28 = sub_10001CF74();
  v30 = v29;
  LOBYTE(v23) = v31;
  v33 = v32;
  v34 = swift_getKeyPath();
  v63 = v28;
  v64 = v30;
  v65 = v23 & 1;
  v66 = v33;
  v67 = v34;
  v68 = 2;
  v69 = 0;
  sub_10001CEE4();
  v35 = v56;
  sub_10001CFF4();
  sub_100007708(v28, v30, v23 & 1);

  sub_10001CE74();
  (v47)(v21, v48, v22);
  v36 = sub_10001CF34();

  v46(v21, v22);
  v37 = swift_getKeyPath();
  v38 = (v35 + *(v61 + 44));
  *v38 = v37;
  v38[1] = v36;
  v39 = v57;
  *(v35 + *(v58 + 44)) = 256;
  v40 = v49;
  sub_100007B4C(v49, v39, &qword_10002C4E8, &qword_10001E050);
  v41 = v59;
  sub_100007B4C(v35, v59, &qword_10002C5B8, &qword_10001E1E0);
  v42 = v60;
  sub_100007B4C(v39, v60, &qword_10002C4E8, &qword_10001E050);
  v43 = sub_100002394(&qword_10002C5C0, &qword_10001E1E8);
  sub_100007B4C(v41, v42 + *(v43 + 48), &qword_10002C5B8, &qword_10001E1E0);
  sub_100007AEC(v35, &qword_10002C5B8, &qword_10001E1E0);
  sub_100007AEC(v40, &qword_10002C4E8, &qword_10001E050);
  sub_100007AEC(v41, &qword_10002C5B8, &qword_10001E1E0);
  return sub_100007AEC(v39, &qword_10002C4E8, &qword_10001E050);
}

uint64_t sub_10000D18C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v50 = sub_10001C994();
  v4 = *(v50 - 8);
  __chkstk_darwin(v50);
  v49 = v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100002394(&qword_10002C868, &qword_10001E690);
  v7 = v6 - 8;
  v8 = __chkstk_darwin(v6);
  v10 = v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = v41 - v11;
  *v12 = sub_10001CDE4();
  v13 = sub_100002394(&qword_10002C870, &qword_10001E698);
  sub_10000D598(a1, &v12[*(v13 + 44)]);
  v14 = &v12[*(sub_100002394(&qword_10002C878, &qword_10001E6A0) + 36)];
  v15 = *(sub_100002394(&qword_10002C550, &qword_10001E5C0) + 28);
  v16 = enum case for Text.TruncationMode.tail(_:);
  v17 = sub_10001CF64();
  (*(*(v17 - 8) + 104))(v14 + v15, v16, v17);
  *v14 = swift_getKeyPath();
  KeyPath = swift_getKeyPath();
  v19 = &v12[*(sub_100002394(&qword_10002C880, &qword_10001E6A8) + 36)];
  *v19 = KeyPath;
  v19[8] = 0;
  *&v12[*(v7 + 44)] = sub_10001D084();
  v20 = sub_10001C954();
  v21 = *(v20 + 16);
  if (v21)
  {
    v42 = v12;
    v43 = v10;
    v44 = a2;
    v51 = &_swiftEmptyArrayStorage;
    sub_10000E79C(0, v21, 0);
    v22 = v51;
    v24 = *(v4 + 16);
    v23 = v4 + 16;
    v25 = (*(v23 + 64) + 32) & ~*(v23 + 64);
    v26 = v23;
    v41[1] = v20;
    v27 = v20 + v25;
    v46 = *(v26 + 56);
    v47 = v24;
    v48 = v26;
    v45 = (v26 - 8);
    do
    {
      v28 = v49;
      v29 = v50;
      v47(v49, v27, v50);
      v30 = sub_10001C974();
      v32 = v31;
      v33 = sub_10001C984();
      v35 = v34;
      (*v45)(v28, v29);
      v51 = v22;
      v37 = v22[2];
      v36 = v22[3];
      if (v37 >= v36 >> 1)
      {
        sub_10000E79C((v36 > 1), v37 + 1, 1);
        v22 = v51;
      }

      v22[2] = v37 + 1;
      v38 = &v22[4 * v37];
      v38[4] = v30;
      v38[5] = v32;
      v38[6] = v33;
      v38[7] = v35;
      v27 += v46;
      --v21;
    }

    while (v21);

    v10 = v43;
    a2 = v44;
    v12 = v42;
  }

  else
  {

    v22 = &_swiftEmptyArrayStorage;
  }

  sub_100007B4C(v12, v10, &qword_10002C868, &qword_10001E690);
  sub_100007B4C(v10, a2, &qword_10002C868, &qword_10001E690);
  v39 = a2 + *(sub_100002394(&qword_10002C888, &qword_10001E6B0) + 48);
  *v39 = v22;
  *(v39 + 8) = xmmword_10001E2E0;
  *(v39 + 24) = 0;
  *(v39 + 32) = 0;

  sub_100007AEC(v12, &qword_10002C868, &qword_10001E690);

  return sub_100007AEC(v10, &qword_10002C868, &qword_10001E690);
}

uint64_t sub_10000D598@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v65 = a1;
  v69 = a2;
  v67 = sub_100002394(&qword_10002C890, &qword_10001E6B8) - 8;
  v2 = __chkstk_darwin(v67);
  v68 = &v57 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v61 = &v57 - v4;
  v70 = sub_10001CF24();
  v72 = *(v70 - 8);
  __chkstk_darwin(v70);
  v6 = &v57 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = sub_100002394(&qword_10002C898, &qword_10001E6C0) - 8;
  v7 = __chkstk_darwin(v71);
  v66 = &v57 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v10 = &v57 - v9;
  v73 = sub_10001CA04();
  v74 = v11;
  v64 = sub_1000034E8();
  v12 = sub_10001CF74();
  v14 = v13;
  v16 = v15;
  v18 = v17;
  KeyPath = swift_getKeyPath();
  v73 = v12;
  v74 = v14;
  v75 = v16 & 1;
  v76 = v18;
  v77 = KeyPath;
  v78 = 1;
  v79 = 0;
  sub_10001CEB4();
  v63 = sub_100002394(&qword_10002C500, &unk_10001E460);
  v62 = sub_100007650();
  sub_10001CFF4();
  sub_100007708(v12, v14, v16 & 1);

  sub_10001CF14();
  v60 = enum case for Font.Leading.tight(_:);
  v20 = v72;
  v59 = *(v72 + 104);
  v21 = v70;
  v59(v6);
  v22 = sub_10001CF34();

  v23 = *(v20 + 8);
  v72 = v20 + 8;
  v57 = v23;
  v23(v6, v21);
  v24 = swift_getKeyPath();
  v25 = sub_100002394(&qword_10002C4E8, &qword_10001E050);
  v26 = *(v25 + 36);
  v58 = v10;
  v27 = &v10[v26];
  *v27 = v24;
  v27[1] = v22;
  LOBYTE(v24) = sub_10001CE24();
  sub_10001CAC4();
  v28 = &v10[*(v71 + 44)];
  *v28 = v24;
  *(v28 + 1) = v29;
  *(v28 + 2) = v30;
  *(v28 + 3) = v31;
  *(v28 + 4) = v32;
  v28[40] = 0;
  v73 = sub_10001CA04();
  v74 = v33;
  v34 = sub_10001CF74();
  v36 = v35;
  LOBYTE(v24) = v37;
  v39 = v38;
  v40 = swift_getKeyPath();
  v73 = v34;
  v74 = v36;
  v75 = v24 & 1;
  v76 = v39;
  v77 = v40;
  v78 = 2;
  v79 = 0;
  sub_10001CEE4();
  v41 = v61;
  sub_10001CFF4();
  sub_100007708(v34, v36, v24 & 1);

  sub_10001CE74();
  v42 = v70;
  (v59)(v6, v60, v70);
  v43 = sub_10001CF34();

  v57(v6, v42);
  v44 = swift_getKeyPath();
  v45 = (v41 + *(v25 + 36));
  *v45 = v44;
  v45[1] = v43;
  LOBYTE(v24) = sub_10001CE24();
  sub_10001CAC4();
  v46 = v41 + *(v71 + 44);
  *v46 = v24;
  *(v46 + 8) = v47;
  *(v46 + 16) = v48;
  *(v46 + 24) = v49;
  *(v46 + 32) = v50;
  *(v46 + 40) = 0;
  v51 = v66;
  *(v41 + *(v67 + 44)) = 256;
  v52 = v58;
  sub_100007B4C(v58, v51, &qword_10002C898, &qword_10001E6C0);
  v53 = v68;
  sub_100007B4C(v41, v68, &qword_10002C890, &qword_10001E6B8);
  v54 = v69;
  sub_100007B4C(v51, v69, &qword_10002C898, &qword_10001E6C0);
  v55 = sub_100002394(&qword_10002C8A0, &qword_10001E6C8);
  sub_100007B4C(v53, v54 + *(v55 + 48), &qword_10002C890, &qword_10001E6B8);
  sub_100007AEC(v41, &qword_10002C890, &qword_10001E6B8);
  sub_100007AEC(v52, &qword_10002C898, &qword_10001E6C0);
  sub_100007AEC(v53, &qword_10002C890, &qword_10001E6B8);
  return sub_100007AEC(v51, &qword_10002C898, &qword_10001E6C0);
}

void *sub_10000DB28@<X0>(void *a1@<X8>)
{
  result = [objc_opt_self() sharedInstance];
  if (result)
  {
    v3 = result;
    type metadata accessor for WidgetPassImagesProvider();
    result = swift_allocObject();
    result[5] = 0;
    result[6] = 0;
    result[4] = 0;
    *(result + 56) = -1;
    result[8] = v3;
    *(result + 1) = xmmword_10001E2F0;
    *a1 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10000DBAC()
{
  sub_10001CA24();
  swift_retain_n();
  sub_100002394(&qword_10002C620, &qword_10001E378);
  sub_10000DD90(&qword_10002C628, &type metadata accessor for EventLiveActivityAttributes, &protocol conformance descriptor for EventLiveActivityAttributes);
  sub_1000023DC(&qword_10002C630, &qword_10001E380);
  sub_1000023DC(&qword_10002C638, &qword_10001E388);
  type metadata accessor for EventLiveActivityView(255);
  sub_10000DD90(&qword_10002C640, type metadata accessor for EventLiveActivityView, &unk_10001DF18);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return sub_10001D424();
}

uint64_t sub_10000DD90(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10000DDD8()
{
  v1 = sub_100002394(&qword_10002C648, &qword_10001E398);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_10000DEA8@<X0>(uint64_t a1@<X8>)
{
  sub_100002394(&qword_10002C648, &qword_10001E398);
  v3 = *(v1 + 16);

  return sub_10000892C(v3, a1);
}

uint64_t sub_10000DF40()
{
  v1 = sub_100002394(&qword_10002C648, &qword_10001E398);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_10000DFD4@<X0>(uint64_t a1@<X8>)
{
  sub_100002394(&qword_10002C648, &qword_10001E398);

  return sub_1000095CC(a1);
}

uint64_t sub_10000E054()
{
  v1 = sub_100002394(&qword_10002C648, &qword_10001E398);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_10000E114(uint64_t (*a1)(unint64_t, uint64_t))
{
  v2 = *(sub_100002394(&qword_10002C648, &qword_10001E398) - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = *(v1 + ((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8));

  return a1(v1 + v3, v4);
}

unint64_t sub_10000E1D0()
{
  result = qword_10002C670;
  if (!qword_10002C670)
  {
    sub_1000023DC(&qword_10002C658, &qword_10001E3A8);
    sub_10000E25C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002C670);
  }

  return result;
}

unint64_t sub_10000E25C()
{
  result = qword_10002C678;
  if (!qword_10002C678)
  {
    sub_1000023DC(&qword_10002C410, &qword_10001DFB8);
    sub_10000E314();
    sub_10000266C(&qword_10002C690, &qword_10002C438, &qword_10001DFD0, &protocol conformance descriptor for _ClipEffect<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002C678);
  }

  return result;
}

unint64_t sub_10000E314()
{
  result = qword_10002C680;
  if (!qword_10002C680)
  {
    sub_1000023DC(&qword_10002C408, &qword_10001DFB0);
    sub_10000E3A0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002C680);
  }

  return result;
}

unint64_t sub_10000E3A0()
{
  result = qword_10002C688;
  if (!qword_10002C688)
  {
    sub_1000023DC(&qword_10002C400, &qword_10001DFA8);
    sub_1000023DC(&qword_10002C418, &unk_10001DFC0);
    sub_1000073A4();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002C688);
  }

  return result;
}

unint64_t sub_10000E468()
{
  result = qword_10002C698;
  if (!qword_10002C698)
  {
    sub_1000023DC(&qword_10002C660, &unk_10001E3B0);
    sub_10000E4EC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002C698);
  }

  return result;
}

unint64_t sub_10000E4EC()
{
  result = qword_10002C6A0;
  if (!qword_10002C6A0)
  {
    sub_1000023DC(&qword_10002C6A8, &qword_10001E3C0);
    sub_10000266C(&qword_10002C6B0, &qword_10002C6B8, &qword_10001E3C8, &protocol conformance descriptor for VStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002C6A0);
  }

  return result;
}

uint64_t sub_10000E5A4@<X0>(uint64_t a1@<X8>)
{
  result = sub_10001CC34();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_10000E680(uint64_t a1)
{
  v2 = sub_10001CF64();
  __chkstk_darwin(v2);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_10001CB84();
}

uint64_t sub_10000E748@<X0>(_BYTE *a1@<X8>)
{
  result = sub_10001CBF4();
  *a1 = result;
  return result;
}

char *sub_10000E79C(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10000E7BC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_10000E7BC(char *result, int64_t a2, char a3, char *a4)
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
    sub_100002394(&qword_10002C840, &qword_10001E668);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

double sub_10000E8C8(double a1)
{
  if (a1 <= 24.0)
  {
    goto LABEL_6;
  }

  if (a1 <= 49.0)
  {
    PKFloatFloorToPixel();
    goto LABEL_9;
  }

  if (a1 <= 56.0)
  {
    PKFloatRoundToPixel();
    goto LABEL_9;
  }

  if (a1 <= 66.0)
  {
LABEL_6:
    PKFloatCeilToPixel();
LABEL_9:
    v2 = -v3;
    PKFloatFloorToPixel();
    return v2;
  }

  PKFloatRoundToPixel();
  v2 = -v1;
  PKFloatCeilToPixel();
  return v2;
}

uint64_t sub_10000E97C@<X0>(uint64_t a1@<X8>)
{
  result = sub_10001CC34();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

unint64_t sub_10000E9E8()
{
  result = qword_10002C6E0;
  if (!qword_10002C6E0)
  {
    sub_1000023DC(&qword_10002C6D8, &qword_10001E458);
    sub_100007650();
    sub_10000266C(&qword_10002C6E8, &qword_10002C6F0, &qword_10001E470, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002C6E0);
  }

  return result;
}

unint64_t sub_10000EAFC()
{
  result = qword_10002C728;
  if (!qword_10002C728)
  {
    sub_1000023DC(&qword_10002C720, &qword_10001E4D0);
    sub_10000266C(&qword_10002C730, &qword_10002C738, &qword_10001E4D8, &protocol conformance descriptor for _OverlayModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002C728);
  }

  return result;
}

unint64_t sub_10000EBBC()
{
  result = qword_10002C750;
  if (!qword_10002C750)
  {
    sub_1000023DC(&qword_10002C748, &qword_10001E4E8);
    sub_10000EC48();
    sub_10000EE44();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002C750);
  }

  return result;
}

unint64_t sub_10000EC48()
{
  result = qword_10002C758;
  if (!qword_10002C758)
  {
    sub_1000023DC(&qword_10002C760, &qword_10001E4F0);
    sub_10000ECD4();
    sub_10000ED8C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002C758);
  }

  return result;
}

unint64_t sub_10000ECD4()
{
  result = qword_10002C768;
  if (!qword_10002C768)
  {
    sub_1000023DC(&qword_10002C770, &qword_10001E4F8);
    sub_10000266C(&qword_10002C778, &qword_10002C780, &qword_10001E500, &protocol conformance descriptor for HStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002C768);
  }

  return result;
}

unint64_t sub_10000ED8C()
{
  result = qword_10002C788;
  if (!qword_10002C788)
  {
    sub_1000023DC(&qword_10002C790, &qword_10001E508);
    sub_10000266C(&qword_10002C498, &qword_10002C460, &qword_10001E510, &protocol conformance descriptor for HStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002C788);
  }

  return result;
}

unint64_t sub_10000EE44()
{
  result = qword_10002C798;
  if (!qword_10002C798)
  {
    sub_1000023DC(&qword_10002C7A0, &qword_10001E518);
    sub_10000EED0();
    sub_10000EF88();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002C798);
  }

  return result;
}

unint64_t sub_10000EED0()
{
  result = qword_10002C7A8;
  if (!qword_10002C7A8)
  {
    sub_1000023DC(&qword_10002C7B0, &qword_10001E520);
    sub_10000266C(&qword_10002C7B8, &qword_10002C7C0, &qword_10001E528, &protocol conformance descriptor for HStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002C7A8);
  }

  return result;
}

unint64_t sub_10000EF88()
{
  result = qword_10002C7C8;
  if (!qword_10002C7C8)
  {
    sub_1000023DC(&qword_10002C7D0, &qword_10001E530);
    sub_10000266C(&qword_10002C7D8, &qword_10002C7E0, &qword_10001E538, &protocol conformance descriptor for VStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002C7C8);
  }

  return result;
}

double sub_10000F050(uint64_t a1)
{
  v1 = *(sub_10001C954() + 16);

  if (!v1)
  {
    sub_10001C9A4();
    if (v3)
    {

      v2 = 0x405E000000000000;
    }

    else
    {
      v2 = 0x405C800000000000;
    }

    goto LABEL_10;
  }

  if (sub_10001C9E4())
  {
    v2 = 0x4060000000000000;
LABEL_10:
    v5 = *&v2;
    goto LABEL_11;
  }

  v4 = *(sub_10001C954() + 16);

  if (v4 >= 3)
  {
    v5 = 148.0;
  }

  else
  {
    v5 = 128.0;
  }

LABEL_11:
  v6 = PKUIGetMinScreenWidthType();
  v7 = sub_10000F1A8(v6) > 402.0;
  v8 = 408.0;
  if (!v7)
  {
    v8 = 371.0;
  }

  return v8 - v5;
}

uint64_t sub_10000F150@<X0>(_BYTE *a1@<X8>)
{
  result = sub_10001CBF4();
  *a1 = result;
  return result;
}

double sub_10000F1A8(unint64_t a1)
{
  result = 0.0;
  if (a1 <= 0xE)
  {
    return dbl_10001E6E0[a1];
  }

  return result;
}

uint64_t sub_10000F1C4(uint64_t a1)
{
  v2 = type metadata accessor for EventLiveActivityView(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_10000F294(uint64_t a1@<X8>)
{
  v28 = a1;
  v1 = sub_10001D304();
  __chkstk_darwin(v1 - 8);
  v2 = sub_10001C934();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100002394(&qword_10002C8C8, &qword_10001E7C0);
  v31 = *(v6 - 8);
  v7 = __chkstk_darwin(v6);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v30 = &v25 - v10;
  v11 = sub_100002394(&qword_10002C8D0, &qword_10001E7C8);
  v26 = *(v11 - 8);
  v27 = v11;
  __chkstk_darwin(v11);
  v32 = &v25 - v12;
  v29 = qword_10002C8B8;
  (*(v3 + 104))(v5, enum case for LocalizedStringTable.peerPayment(_:), v2);

  v13 = PKPassKitBundle();
  if (v13)
  {
    v14 = v13;
    sub_10001C924();

    (*(v3 + 8))(v5, v2);
    sub_10001D2F4();
    sub_100002394(&qword_10002C8D8, &unk_10001E7D0);
    sub_100002558();
    sub_10000266C(&qword_10002C8E0, &qword_10002C8D8, &unk_10001E7D0, &protocol conformance descriptor for HStack<A>);
    sub_10001D314();
    if (qword_10002C240 != -1)
    {
      swift_once();
    }

    v15 = v30;
    sub_10001D324();
    v16 = *(v31 + 8);
    v16(v9, v6);
    v17 = sub_10000266C(&qword_10002C8E8, &qword_10002C8C8, &qword_10001E7C0, &protocol conformance descriptor for ControlButton<A>);
    v18 = v32;
    sub_10001CD44();
    v16(v15, v6);
    v19 = sub_10001D4F4();
    v20 = PKLocalizedPeerPaymentString(v19);

    if (v20)
    {
      v21 = sub_10001D524();
      v23 = v22;

      v35 = v21;
      v36 = v23;
      v33 = v6;
      v34 = v17;
      swift_getOpaqueTypeConformance2();
      sub_1000034E8();
      v24 = v27;
      sub_10001CD14();

      (*(v26 + 8))(v18, v24);
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

__n128 sub_10000F7A4@<Q0>(uint64_t a2@<X8>)
{
  v3 = sub_10001CC94();
  sub_10000F808(&v7);
  v4 = v8;
  result = v7;
  v6 = v9;
  *a2 = v3;
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  *(a2 + 24) = result;
  *(a2 + 40) = v4;
  *(a2 + 48) = v6;
  return result;
}

id sub_10000F808@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_10001C934();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 104))(v5, enum case for LocalizedStringTable.peerPayment(_:), v2);
  result = PKPassKitBundle();
  if (result)
  {
    v7 = result;
    v8 = sub_10001C924();
    v10 = v9;

    (*(v3 + 8))(v5, v2);
    v18[0] = v8;
    v18[1] = v10;
    sub_1000034E8();
    v11 = sub_10001CF74();
    v13 = v12;
    LOBYTE(v7) = v14;
    v16 = v15;
    v17 = sub_10001D0C4();
    *a1 = v11;
    *(a1 + 8) = v13;
    LOBYTE(v7) = v7 & 1;
    *(a1 + 16) = v7;
    *(a1 + 24) = v16;
    *(a1 + 32) = v17;
    sub_10000F9DC(v11, v13, v7);

    sub_100007708(v11, v13, v7);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10000F9DC(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_10000F9EC()
{
  sub_1000023DC(&qword_10002C8D0, &qword_10001E7C8);
  sub_1000023DC(&qword_10002C8C8, &qword_10001E7C0);
  sub_10000266C(&qword_10002C8E8, &qword_10002C8C8, &qword_10001E7C0, &protocol conformance descriptor for ControlButton<A>);
  swift_getOpaqueTypeConformance2();
  sub_1000034E8();
  return swift_getOpaqueTypeConformance2();
}

id sub_10000FAD4()
{
  v0 = objc_opt_self();
  result = [v0 sharedInstance];
  if (result)
  {
    v2 = result;
    type metadata accessor for WidgetPassImagesProvider();
    v3 = swift_allocObject();
    *(v3 + 40) = 0;
    *(v3 + 48) = 0;
    *(v3 + 32) = 0;
    *(v3 + 56) = -1;
    *(v3 + 64) = v2;
    *(v3 + 16) = xmmword_10001E2F0;
    result = [v0 sharedInstance];
    if (result)
    {
      v4 = result;
      v5 = swift_allocObject();
      *(v5 + 40) = 0;
      *(v5 + 48) = 0;
      *(v5 + 32) = 0;
      *(v5 + 56) = -1;
      *(v5 + 64) = v4;
      *(v5 + 16) = xmmword_10001E7E0;

      sub_100002394(&qword_10002C8F8, &qword_10001E858);
      sub_10001CAE4();
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

int main(int argc, const char **argv, const char **envp)
{
  sub_10000FC54();
  sub_10001CAF4();
  return 0;
}

unint64_t sub_10000FC54()
{
  result = qword_10002C8F0;
  if (!qword_10002C8F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002C8F0);
  }

  return result;
}

unint64_t sub_10000FCD8()
{
  result = qword_10002C900;
  if (!qword_10002C900)
  {
    sub_1000023DC(&qword_10002C908, &unk_10001E860);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002C900);
  }

  return result;
}

BOOL sub_10000FD8C(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

void *sub_10000FDBC@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 8) = v3 == 0;
  return result;
}

uint64_t *sub_10000FDE8@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

void *sub_10000FED4@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

__n128 sub_10000FF04(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_10000FF10(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_10000FF58(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 sub_10000FFA8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_10000FFBC(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_100010004(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t sub_100010078@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = sub_100013E60(a1);

  *a2 = v3;
  return result;
}

Swift::Int sub_1000100CC()
{
  v1 = *v0;
  sub_10001D5F4();
  sub_10001D604(v1);
  return sub_10001D614();
}

Swift::Int sub_100010140(uint64_t a1)
{
  v2 = *v1;
  sub_10001D5F4();
  sub_10001D604(v2);
  return sub_10001D614();
}

uint64_t sub_100010184@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_10001CC64();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100002394(&qword_10002C960, &qword_10001E9B0);
  __chkstk_darwin(v8);
  v10 = &v14 - v9;
  sub_100007B4C(v2, &v14 - v9, &qword_10002C960, &qword_10001E9B0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_10001CB44();
    return (*(*(v11 - 8) + 32))(a1, v10, v11);
  }

  else
  {
    sub_10001D574();
    v13 = sub_10001CDD4();
    sub_10001CAB4();

    sub_10001CC54();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v7, v4);
  }
}

void sub_100010384(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v216 = a1;
  v215 = a2;
  v195 = sub_100002394(&qword_10002CA90, &qword_10001ECC0);
  v194 = *(v195 - 8);
  __chkstk_darwin(v195);
  v193 = &v165 - v3;
  v213 = sub_100002394(&qword_10002CA98, &qword_10001ECC8);
  __chkstk_darwin(v213);
  v214 = &v165 - v4;
  v185 = sub_100002394(&qword_10002CAA0, &qword_10001ECD0);
  v184 = *(v185 - 8);
  __chkstk_darwin(v185);
  v183 = &v165 - v5;
  v189 = sub_100002394(&qword_10002CAA8, &qword_10001ECD8);
  v187 = *(v189 - 8);
  __chkstk_darwin(v189);
  v186 = &v165 - v6;
  v182 = sub_100002394(&qword_10002CAB0, &qword_10001ECE0);
  __chkstk_darwin(v182);
  v188 = &v165 - v7;
  v178 = sub_100002394(&qword_10002CAB8, &qword_10001ECE8);
  __chkstk_darwin(v178);
  v180 = &v165 - v8;
  v200 = sub_100002394(&qword_10002CAC0, &qword_10001ECF0);
  v9 = __chkstk_darwin(v200);
  v179 = &v165 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v181 = &v165 - v11;
  v198 = sub_100002394(&qword_10002CAC8, &unk_10001ECF8);
  __chkstk_darwin(v198);
  v199 = &v165 - v12;
  v166 = sub_100002394(&qword_10002C548, &unk_10001E130);
  __chkstk_darwin(v166);
  v168 = &v165 - v13;
  v175 = sub_100002394(&qword_10002CAD0, &qword_10001ED08);
  __chkstk_darwin(v175);
  v170 = &v165 - v14;
  v177 = sub_100002394(&qword_10002CAD8, &qword_10001ED10);
  v176 = *(v177 - 8);
  __chkstk_darwin(v177);
  v172 = &v165 - v15;
  v173 = sub_100002394(&qword_10002CAE0, &qword_10001ED18);
  v171 = *(v173 - 8);
  __chkstk_darwin(v173);
  v169 = &v165 - v16;
  v196 = sub_100002394(&qword_10002CAE8, &qword_10001ED20);
  v17 = __chkstk_darwin(v196);
  v167 = &v165 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v174 = &v165 - v19;
  v210 = sub_100002394(&qword_10002CAF0, &qword_10001ED28);
  __chkstk_darwin(v210);
  v197 = &v165 - v20;
  v220 = sub_10001CB44();
  v221 = *(v220 - 8);
  v21 = __chkstk_darwin(v220);
  v219 = &v165 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v218 = &v165 - v23;
  v24 = sub_100002394(&qword_10002CAF8, &unk_10001ED30);
  v25 = __chkstk_darwin(v24 - 8);
  v212 = &v165 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v211 = &v165 - v27;
  v28 = sub_10001CF24();
  v29 = *(v28 - 8);
  __chkstk_darwin(v28);
  v31 = &v165 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v223 = sub_100002394(&qword_10002C848, &qword_10001E670);
  v226 = *(v223 - 8);
  v32 = __chkstk_darwin(v223);
  v191 = &v165 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v32);
  v217 = &v165 - v34;
  v224 = sub_100002394(&qword_10002CB00, &qword_10001ED40);
  v35 = __chkstk_darwin(v224);
  v209 = &v165 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = __chkstk_darwin(v35);
  v190 = &v165 - v38;
  v39 = __chkstk_darwin(v37);
  v192 = &v165 - v40;
  __chkstk_darwin(v39);
  v225 = &v165 - v41;
  v222 = type metadata accessor for SeatingAttributesTableColumn(0);
  v42 = (a1 + v222[5]);
  v43 = v42[1];
  *&v239[0] = *v42;
  *(&v239[0] + 1) = v43;
  v44 = sub_1000034E8();

  v201 = v44;
  v45 = sub_10001CF74();
  v47 = v46;
  v49 = v48;
  v51 = v50;
  KeyPath = swift_getKeyPath();
  sub_10001CF54();
  v53 = *(v29 + 104);
  v202 = enum case for Font.Leading.tight(_:);
  v204 = v29 + 104;
  v203 = v53;
  v53(v31);
  v54 = sub_10001CF34();

  v55 = *(v29 + 8);
  v206 = v31;
  v208 = v28;
  v207 = v29 + 8;
  v205 = v55;
  v55(v31, v28);
  v56 = swift_getKeyPath();
  LOBYTE(v227) = v49 & 1;
  v238 = 0;
  *&v233 = v45;
  *(&v233 + 1) = v47;
  LOBYTE(v234) = v49 & 1;
  *(&v234 + 1) = v51;
  *&v235 = KeyPath;
  *(&v235 + 1) = 1;
  LOBYTE(v236) = 0;
  *(&v236 + 1) = v56;
  v237 = v54;
  sub_10001CED4();
  v57 = sub_100002394(&qword_10002C6D8, &qword_10001E458);
  v58 = sub_10000E9E8();
  v59 = v217;
  sub_10001CFF4();
  v239[2] = v235;
  v239[3] = v236;
  v240 = v237;
  v239[0] = v233;
  v239[1] = v234;
  v60 = v216;
  sub_100007AEC(v239, &qword_10002C6D8, &qword_10001E458);
  *&v233 = v57;
  *(&v233 + 1) = v58;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v62 = v225;
  v63 = v223;
  sub_10001D004();
  v64 = *(v226 + 8);
  v226 += 8;
  v217 = v64;
  (v64)(v59, v63);
  *(v62 + *(v224 + 36)) = sub_10001D054();
  v65 = v218;
  sub_100010184(v218);
  sub_10001365C(&qword_10002CB08, &protocol conformance descriptor for RedactionReasons);
  v66 = v219;
  v67 = v220;
  sub_10001D5A4();
  sub_10001365C(&qword_10002CB10, &protocol conformance descriptor for RedactionReasons);
  v68 = v67;
  LOBYTE(v47) = sub_10001D4E4();
  v69 = *(v221 + 8);
  v69(v66, v68);
  v69(v65, v68);
  if (v47)
  {
    v70 = v222;
    v71 = (v60 + v222[6]);
    v73 = *v71;
    v72 = v71[1];
    v74 = sub_10001D4F4();
    v75 = [objc_opt_self() colorFromString:v74];

    if (!v75)
    {
      *&v233 = v73;
      *(&v233 + 1) = v72;

      v92 = sub_10001CF74();
      v94 = v93;
      v96 = v95;
      v98 = v97;
      v99 = swift_getKeyPath();
      v100 = v168;
      v101 = &v168[*(v166 + 36)];
      v102 = *(sub_100002394(&qword_10002C550, &qword_10001E5C0) + 28);
      v103 = enum case for Text.TruncationMode.tail(_:);
      v104 = sub_10001CF64();
      (*(*(v104 - 8) + 104))(v101 + v102, v103, v104);
      *v101 = swift_getKeyPath();
      *v100 = v92;
      *(v100 + 8) = v94;
      *(v100 + 16) = v96 & 1;
      *(v100 + 24) = v98;
      *(v100 + 32) = v99;
      *(v100 + 40) = 1;
      *(v100 + 48) = 0;
      if (*(v60 + v222[7]))
      {
        v105 = v211;
        v106 = v197;
        if (*(v60 + v222[7]) == 1)
        {
          sub_10001CE94();
        }

        else
        {
          sub_10001CE64();
        }
      }

      else
      {
        sub_10001CE84();
        v105 = v211;
        v106 = v197;
      }

      v146 = v206;
      v147 = v208;
      v203(v206, v202, v208);
      v148 = sub_10001CF34();

      v205(v146, v147);
      v149 = swift_getKeyPath();
      v150 = v170;
      sub_1000078A8(v100, v170, &qword_10002C548, &unk_10001E130);
      v151 = v175;
      v152 = (v150 + *(v175 + 36));
      *v152 = v149;
      v152[1] = v148;
      sub_10001CED4();
      v153 = sub_100013B98();
      v154 = v172;
      sub_10001CFF4();
      sub_100007AEC(v150, &qword_10002CAD0, &qword_10001ED08);
      *&v233 = v151;
      *(&v233 + 1) = v153;
      swift_getOpaqueTypeConformance2();
      v155 = v169;
      v156 = v177;
      sub_10001D004();
      (*(v176 + 8))(v154, v156);
      v157 = sub_10001D084();
      v158 = v167;
      (*(v171 + 32))(v167, v155, v173);
      *(v158 + *(v196 + 36)) = v157;
      v159 = v174;
      sub_1000078A8(v158, v174, &qword_10002CAE8, &qword_10001ED20);
      sub_100007B4C(v159, v199, &qword_10002CAE8, &qword_10001ED20);
      swift_storeEnumTagMultiPayload();
      sub_10001372C();
      sub_100013A60();
      sub_10001CD84();
      sub_100007AEC(v159, &qword_10002CAE8, &qword_10001ED20);
      goto LABEL_23;
    }

    v76 = sub_10001D0A4();
    v77 = *(v60 + v70[7]);
    if (v77)
    {
      if (v77 == 1)
      {
        v78 = sub_10001CF04();
      }

      else
      {
        v78 = sub_10001CE94();
      }
    }

    else
    {
      v78 = sub_10001CE74();
    }

    v120 = v78;
    v121 = swift_getKeyPath();
    *&v233 = v76;
    *(&v233 + 1) = v121;
    *&v234 = v120;
    sub_10001CED4();
    v122 = sub_100002394(&qword_10002CB38, &qword_10001EDA8);
    v123 = sub_1000139A8();
    v124 = v183;
    sub_10001CFF4();

    *&v233 = v122;
    *(&v233 + 1) = v123;
    swift_getOpaqueTypeConformance2();
    v125 = v186;
    v126 = v185;
    sub_10001D004();
    (*(v184 + 8))(v124, v126);
    v127 = v188;
    v128 = &v188[*(v182 + 36)];
    v129 = *(sub_100002394(&qword_10002CB50, &qword_10001EDB0) + 28);
    sub_10001CCE4();
    v130 = sub_10001CCF4();
    (*(*(v130 - 8) + 56))(v128 + v129, 0, 1, v130);
    *v128 = swift_getKeyPath();
    (*(v187 + 32))(v127, v125, v189);
    if ([v75 CGColor])
    {
      v131 = sub_10001D044();
      v132 = v127;
      v133 = v180;
      sub_1000078A8(v132, v180, &qword_10002CAB0, &qword_10001ECE0);
      *(v133 + *(v178 + 36)) = v131;
      LOBYTE(v131) = sub_10001CE14();
      sub_10001CAC4();
      v135 = v134;
      v137 = v136;
      v139 = v138;
      v141 = v140;
      v142 = v133;
      v143 = v179;
      sub_1000078A8(v142, v179, &qword_10002CAB8, &qword_10001ECE8);
      v144 = v143 + *(v200 + 36);
      *v144 = v131;
      *(v144 + 8) = v135;
      *(v144 + 16) = v137;
      *(v144 + 24) = v139;
      *(v144 + 32) = v141;
      *(v144 + 40) = 0;
      v145 = v181;
      sub_1000078A8(v143, v181, &qword_10002CAC0, &qword_10001ECF0);
      sub_100007B4C(v145, v199, &qword_10002CAC0, &qword_10001ECF0);
      swift_storeEnumTagMultiPayload();
      sub_10001372C();
      sub_100013A60();
      v106 = v197;
      sub_10001CD84();

      sub_100007AEC(v145, &qword_10002CAC0, &qword_10001ECF0);
      v105 = v211;
LABEL_23:
      v116 = &qword_10002CAF0;
      v117 = &qword_10001ED28;
      sub_100007B4C(v106, v214, &qword_10002CAF0, &qword_10001ED28);
      swift_storeEnumTagMultiPayload();
      sub_1000136A0();
      sub_100013C50();
      sub_10001CD84();
      v119 = v106;
LABEL_24:
      sub_100007AEC(v119, v116, v117);
      v160 = v225;
      v161 = v209;
      sub_100007B4C(v225, v209, &qword_10002CB00, &qword_10001ED40);
      v162 = v212;
      sub_100007B4C(v105, v212, &qword_10002CAF8, &unk_10001ED30);
      v163 = v215;
      sub_100007B4C(v161, v215, &qword_10002CB00, &qword_10001ED40);
      v164 = sub_100002394(&qword_10002CB80, &qword_10001EDC8);
      sub_100007B4C(v162, v163 + *(v164 + 48), &qword_10002CAF8, &unk_10001ED30);
      sub_100007AEC(v105, &qword_10002CAF8, &unk_10001ED30);
      sub_100007AEC(v160, &qword_10002CB00, &qword_10001ED40);
      sub_100007AEC(v162, &qword_10002CAF8, &unk_10001ED30);
      sub_100007AEC(v161, &qword_10002CB00, &qword_10001ED40);
      return;
    }
  }

  else
  {
    v221 = OpaqueTypeConformance2;
    v79 = v222;
    v80 = sub_10001D4F4();
    v81 = PKLocalizedTicketingString(v80);

    if (v81)
    {
      v82 = sub_10001D524();
      v84 = v83;

      *&v233 = v82;
      *(&v233 + 1) = v84;
      v220 = sub_10001CF74();
      v86 = v85;
      v88 = v87;
      v90 = v89;
      v91 = swift_getKeyPath();
      if (*(v60 + v79[7]))
      {
        if (*(v60 + v79[7]) == 1)
        {
          sub_10001CE94();
        }

        else
        {
          sub_10001CE64();
        }
      }

      else
      {
        sub_10001CE84();
      }

      v107 = v206;
      v108 = v208;
      v203(v206, v202, v208);
      v109 = sub_10001CF34();

      v205(v107, v108);
      v110 = swift_getKeyPath();
      v238 = v88 & 1;
      v232 = 0;
      *&v227 = v220;
      *(&v227 + 1) = v86;
      LOBYTE(v228) = v88 & 1;
      *(&v228 + 1) = v90;
      *&v229 = v91;
      *(&v229 + 1) = 1;
      LOBYTE(v230) = 0;
      *(&v230 + 1) = v110;
      v231 = v109;
      sub_10001CED4();
      v111 = v191;
      sub_10001CFF4();
      v235 = v229;
      v236 = v230;
      v237 = v231;
      v234 = v228;
      v233 = v227;
      sub_100007AEC(&v233, &qword_10002C6D8, &qword_10001E458);
      v112 = v193;
      v113 = v223;
      sub_10001D004();
      (v217)(v111, v113);
      v114 = sub_10001D084();
      v115 = v190;
      (*(v194 + 32))(v190, v112, v195);
      *(v115 + *(v224 + 36)) = v114;
      v116 = &qword_10002CB00;
      v117 = &qword_10001ED40;
      v118 = v192;
      sub_1000078A8(v115, v192, &qword_10002CB00, &qword_10001ED40);
      sub_100007B4C(v118, v214, &qword_10002CB00, &qword_10001ED40);
      swift_storeEnumTagMultiPayload();
      sub_1000136A0();
      sub_100013C50();
      v105 = v211;
      sub_10001CD84();
      v119 = v118;
      goto LABEL_24;
    }

    __break(1u);
  }

  __break(1u);
}

uint64_t sub_100011D4C@<X0>(uint64_t *a1@<X8>)
{
  v3 = sub_100002394(&qword_10002CA50, &qword_10001EC80);
  __chkstk_darwin(v3 - 8);
  v5 = &v10 - v4;
  *v5 = sub_10001CCB4();
  *(v5 + 1) = 0xC000000000000000;
  v5[16] = 0;
  v6 = sub_100002394(&qword_10002CA58, &qword_10001EC88);
  sub_100010384(v1, &v5[*(v6 + 44)]);
  *a1 = sub_10001D134();
  a1[1] = v7;
  v8 = sub_100002394(&qword_10002CA60, &qword_10001EC90);
  sub_100011E48(v5, a1 + *(v8 + 44));
  return sub_100007AEC(v5, &qword_10002CA50, &qword_10001EC80);
}

void sub_100011E48(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v43 = a1;
  v45 = a2;
  v2 = sub_100002394(&qword_10002CA50, &qword_10001EC80);
  __chkstk_darwin(v2 - 8);
  v44 = &v37 - v3;
  v4 = sub_100002394(&qword_10002CA68, &qword_10001EC98);
  v41 = *(v4 - 8);
  v42 = v4;
  __chkstk_darwin(v4);
  v6 = &v37 - v5;
  v38 = sub_100002394(&qword_10002CA70, &qword_10001ECA0);
  __chkstk_darwin(v38);
  v8 = &v37 - v7;
  v40 = sub_100002394(&qword_10002CA78, &qword_10001ECA8);
  __chkstk_darwin(v40);
  v10 = &v37 - v9;
  v37 = sub_100002394(&qword_10002CA80, &qword_10001ECB0);
  v11 = __chkstk_darwin(v37);
  v39 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v15 = &v37 - v14;
  __chkstk_darwin(v13);
  v17 = &v37 - v16;
  v18 = sub_10001D4F4();
  v19 = PKLocalizedTicketingString(v18);

  if (v19)
  {
    v20 = sub_10001D524();
    v22 = v21;

    *&v46 = v20;
    *(&v46 + 1) = v22;
    sub_1000034E8();
    v23 = sub_10001CF74();
    v25 = v24;
    *&v46 = v23;
    *(&v46 + 1) = v24;
    v27 = v26 & 1;
    LOBYTE(v47) = v26 & 1;
    *(&v47 + 1) = v28;
    sub_10001D034();
    sub_100007708(v23, v25, v27);

    sub_10001D134();
    sub_10001CB64();
    (*(v41 + 32))(v8, v6, v42);
    v29 = &v8[*(v38 + 36)];
    v30 = v51;
    *(v29 + 4) = v50;
    *(v29 + 5) = v30;
    *(v29 + 6) = v52;
    v31 = v47;
    *v29 = v46;
    *(v29 + 1) = v31;
    v32 = v49;
    *(v29 + 2) = v48;
    *(v29 + 3) = v32;
    sub_1000078A8(v8, v10, &qword_10002CA70, &qword_10001ECA0);
    *&v10[*(v40 + 36)] = 0;
    sub_1000078A8(v10, v15, &qword_10002CA78, &qword_10001ECA8);
    *&v15[*(v37 + 36)] = 0;
    sub_1000078A8(v15, v17, &qword_10002CA80, &qword_10001ECB0);
    v33 = v39;
    sub_100007B4C(v17, v39, &qword_10002CA80, &qword_10001ECB0);
    v34 = v44;
    sub_100007B4C(v43, v44, &qword_10002CA50, &qword_10001EC80);
    v35 = v45;
    sub_100007B4C(v33, v45, &qword_10002CA80, &qword_10001ECB0);
    v36 = sub_100002394(&qword_10002CA88, &qword_10001ECB8);
    sub_100007B4C(v34, v35 + *(v36 + 48), &qword_10002CA50, &qword_10001EC80);
    sub_100007AEC(v17, &qword_10002CA80, &qword_10001ECB0);
    sub_100007AEC(v34, &qword_10002CA50, &qword_10001EC80);
    sub_100007AEC(v33, &qword_10002CA80, &qword_10001ECB0);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_10001233C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v57 = a2;
  v3 = sub_100002394(&qword_10002C918, &qword_10001E930);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v49 - v5;
  v7 = sub_100002394(&qword_10002C920, &qword_10001E938);
  v8 = __chkstk_darwin(v7 - 8);
  v56 = &v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v8);
  v55 = &v49 - v11;
  v12 = __chkstk_darwin(v10);
  v54 = &v49 - v13;
  v14 = __chkstk_darwin(v12);
  v58 = &v49 - v15;
  v16 = __chkstk_darwin(v14);
  v60 = &v49 - v17;
  __chkstk_darwin(v16);
  v19 = &v49 - v18;
  v20 = a1[1];
  v59 = v3;
  v53 = &v49 - v18;
  if ((v20 & 4) != 0)
  {
    v22 = sub_10001CC74();
    v23 = a1[4];
    *v6 = v22;
    *(v6 + 1) = v23;
    v6[16] = 0;
    v52 = *(sub_100002394(&qword_10002C930, &unk_10001E948) + 44);
    v24 = *(*a1 + 16);
    v61 = 0;
    v62 = v24;
    KeyPath = swift_getKeyPath();
    v25 = swift_allocObject();
    v26 = *(a1 + 1);
    *(v25 + 16) = *a1;
    *(v25 + 32) = v26;
    *(v25 + 48) = a1[4];
    *(v25 + 56) = 2;

    v50 = sub_100002394(&qword_10002C938, &qword_10001E970);
    sub_100002394(&qword_10002C940, &qword_10001E978);
    sub_100012D48();
    sub_10000266C(&qword_10002C958, &qword_10002C940, &qword_10001E978, &protocol conformance descriptor for TupleView<A>);
    v3 = v59;
    sub_10001D114();
    sub_1000078A8(v6, v19, &qword_10002C918, &qword_10001E930);
    v21 = *(v4 + 56);
    v21(v19, 0, 1, v3);
  }

  else
  {
    v21 = *(v4 + 56);
    v21(&v49 - v18, 1, 1, v3);
  }

  v27 = 1;
  if ((v20 & 2) != 0)
  {
    v28 = sub_10001CC74();
    v29 = a1[4];
    *v6 = v28;
    *(v6 + 1) = v29;
    v6[16] = 0;
    KeyPath = *(sub_100002394(&qword_10002C930, &unk_10001E948) + 44);
    v30 = *(*a1 + 16);
    v61 = 0;
    v62 = v30;
    v31 = swift_getKeyPath();
    v52 = v4;
    v50 = v31;
    v32 = swift_allocObject();
    v33 = *(a1 + 1);
    *(v32 + 16) = *a1;
    *(v32 + 32) = v33;
    *(v32 + 48) = a1[4];
    *(v32 + 56) = 1;

    sub_100002394(&qword_10002C938, &qword_10001E970);
    sub_100002394(&qword_10002C940, &qword_10001E978);
    sub_100012D48();
    sub_10000266C(&qword_10002C958, &qword_10002C940, &qword_10001E978, &protocol conformance descriptor for TupleView<A>);
    v3 = v59;
    sub_10001D114();
    sub_1000078A8(v6, v60, &qword_10002C918, &qword_10001E930);
    v27 = 0;
  }

  v34 = 1;
  v21(v60, v27, 1, v3);
  if (v20)
  {
    v35 = sub_10001CC74();
    v36 = a1[4];
    *v6 = v35;
    *(v6 + 1) = v36;
    v6[16] = 0;
    v52 = *(sub_100002394(&qword_10002C930, &unk_10001E948) + 44);
    v37 = *(*a1 + 16);
    v61 = 0;
    v62 = v37;
    swift_getKeyPath();
    v38 = swift_allocObject();
    v39 = *(a1 + 1);
    *(v38 + 16) = *a1;
    *(v38 + 32) = v39;
    *(v38 + 48) = a1[4];
    *(v38 + 56) = 0;

    sub_100002394(&qword_10002C938, &qword_10001E970);
    sub_100002394(&qword_10002C940, &qword_10001E978);
    sub_100012D48();
    sub_10000266C(&qword_10002C958, &qword_10002C940, &qword_10001E978, &protocol conformance descriptor for TupleView<A>);
    v3 = v59;
    sub_10001D114();
    sub_1000078A8(v6, v58, &qword_10002C918, &qword_10001E930);
    v34 = 0;
  }

  v40 = v58;
  v21(v58, v34, 1, v3);
  v42 = v53;
  v41 = v54;
  sub_100007B4C(v53, v54, &qword_10002C920, &qword_10001E938);
  v43 = v60;
  v44 = v55;
  sub_100007B4C(v60, v55, &qword_10002C920, &qword_10001E938);
  v45 = v56;
  sub_100007B4C(v40, v56, &qword_10002C920, &qword_10001E938);
  v46 = v57;
  sub_100007B4C(v41, v57, &qword_10002C920, &qword_10001E938);
  v47 = sub_100002394(&qword_10002C928, &qword_10001E940);
  sub_100007B4C(v44, v46 + *(v47 + 48), &qword_10002C920, &qword_10001E938);
  sub_100007B4C(v45, v46 + *(v47 + 64), &qword_10002C920, &qword_10001E938);
  sub_100007AEC(v40, &qword_10002C920, &qword_10001E938);
  sub_100007AEC(v43, &qword_10002C920, &qword_10001E938);
  sub_100007AEC(v42, &qword_10002C920, &qword_10001E938);
  sub_100007AEC(v45, &qword_10002C920, &qword_10001E938);
  sub_100007AEC(v44, &qword_10002C920, &qword_10001E938);
  return sub_100007AEC(v41, &qword_10002C920, &qword_10001E938);
}

uint64_t sub_100012AC8@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v8 = type metadata accessor for SeatingAttributesTableColumn(0);
  v9 = __chkstk_darwin(v8);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v9);
  v14 = (&v29 - v13);
  v15 = *a1;
  if ((*a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_8;
  }

  v16 = *(*a2 + 16);
  if (v15 >= v16)
  {
LABEL_8:
    __break(1u);
    return result;
  }

  v17 = *a2 + 32 * v15;
  v32 = a4;
  v18 = *(v17 + 40);
  v30 = *(v17 + 32);
  v31 = v18;
  v19 = a3;
  v20 = sub_10001D534();
  v22 = v21;
  *v14 = swift_getKeyPath();
  sub_100002394(&qword_10002C960, &qword_10001E9B0);
  swift_storeEnumTagMultiPayload();
  v23 = (v14 + v8[5]);
  *v23 = v30;
  v23[1] = v18;
  v24 = (v14 + v8[6]);
  *v24 = v20;
  v24[1] = v22;
  *(v14 + v8[7]) = v19;
  v25 = *(a2 + 24) & 1 | (v15 >= v16 - 1);
  if (v25)
  {
    v26 = 0;
  }

  else
  {
    v26 = *(a2 + 16);
  }

  sub_100012F64(v14, v11);
  v27 = v32;
  sub_100012F64(v11, v32);
  v28 = v27 + *(sub_100002394(&qword_10002C968, &qword_10001E9B8) + 48);
  *v28 = v26;
  *(v28 + 8) = 0;
  *(v28 + 9) = v25;

  sub_100012FC8(v14);
  return sub_100012FC8(v11);
}

uint64_t sub_100012CA0@<X0>(_BYTE *a2@<X8>)
{
  v4 = *(v2 + 16);
  v7[0] = *v2;
  v7[1] = v4;
  v8 = *(v2 + 32);
  *a2 = sub_10001CDE4();
  v5 = sub_100002394(&qword_10002C910, &qword_10001E928);
  return sub_10001233C(v7, &a2[*(v5 + 44)]);
}

uint64_t sub_100012D04()
{

  return _swift_deallocObject(v0, 57, 7);
}

unint64_t sub_100012D48()
{
  result = qword_10002C948;
  if (!qword_10002C948)
  {
    sub_1000023DC(&qword_10002C938, &qword_10001E970);
    sub_100012DD4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002C948);
  }

  return result;
}

unint64_t sub_100012DD4()
{
  result = qword_10002C950;
  if (!qword_10002C950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002C950);
  }

  return result;
}

uint64_t type metadata accessor for SeatingAttributesTableColumn(uint64_t a1)
{
  result = qword_10002C9D0;
  if (!qword_10002C9D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100012E98(uint64_t a1)
{
  v2 = sub_10001CB44();
  __chkstk_darwin(v2);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_10001CBA4();
}

uint64_t sub_100012F64(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SeatingAttributesTableColumn(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100012FC8(uint64_t a1)
{
  v2 = type metadata accessor for SeatingAttributesTableColumn(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100013038(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100002394(&qword_10002C970, &unk_10001E9C0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_100013118(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_100002394(&qword_10002C970, &unk_10001E9C0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

void sub_1000131E0(uint64_t a1)
{
  sub_100013260(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_100013260(uint64_t a1)
{
  if (!qword_10002C9E0)
  {
    sub_10001CB44();
    v1 = sub_10001CAD4();
    if (!v2)
    {
      atomic_store(v1, &qword_10002C9E0);
    }
  }
}

uint64_t getEnumTagSinglePayload for SeatingAttributesTableSize(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SeatingAttributesTableSize(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_10001347C()
{
  result = qword_10002CA28;
  if (!qword_10002CA28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002CA28);
  }

  return result;
}

unint64_t sub_1000134D4()
{
  result = qword_10002CA30;
  if (!qword_10002CA30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002CA30);
  }

  return result;
}

unint64_t sub_10001352C()
{
  result = qword_10002CA38;
  if (!qword_10002CA38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002CA38);
  }

  return result;
}

unint64_t sub_100013584()
{
  result = qword_10002CA40;
  if (!qword_10002CA40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002CA40);
  }

  return result;
}

unint64_t sub_1000135DC()
{
  result = qword_10002CA48;
  if (!qword_10002CA48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002CA48);
  }

  return result;
}

uint64_t sub_10001365C(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_10001CB44();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1000136A0()
{
  result = qword_10002CB18;
  if (!qword_10002CB18)
  {
    sub_1000023DC(&qword_10002CAF0, &qword_10001ED28);
    sub_10001372C();
    sub_100013A60();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002CB18);
  }

  return result;
}

unint64_t sub_10001372C()
{
  result = qword_10002CB20;
  if (!qword_10002CB20)
  {
    sub_1000023DC(&qword_10002CAC0, &qword_10001ECF0);
    sub_1000137B8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002CB20);
  }

  return result;
}

unint64_t sub_1000137B8()
{
  result = qword_10002CB28;
  if (!qword_10002CB28)
  {
    sub_1000023DC(&qword_10002CAB8, &qword_10001ECE8);
    sub_100013870();
    sub_10000266C(&qword_10002CB58, &qword_10002CB60, &unk_10001EDB8, &protocol conformance descriptor for _ForegroundStyleModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002CB28);
  }

  return result;
}

unint64_t sub_100013870()
{
  result = qword_10002CB30;
  if (!qword_10002CB30)
  {
    sub_1000023DC(&qword_10002CAB0, &qword_10001ECE0);
    sub_1000023DC(&qword_10002CAA0, &qword_10001ECD0);
    sub_1000023DC(&qword_10002CB38, &qword_10001EDA8);
    sub_1000139A8();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_10000266C(&qword_10002CB48, &qword_10002CB50, &qword_10001EDB0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002CB30);
  }

  return result;
}

unint64_t sub_1000139A8()
{
  result = qword_10002CB40;
  if (!qword_10002CB40)
  {
    sub_1000023DC(&qword_10002CB38, &qword_10001EDA8);
    sub_10000266C(&qword_10002C6E8, &qword_10002C6F0, &qword_10001E470, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002CB40);
  }

  return result;
}

unint64_t sub_100013A60()
{
  result = qword_10002CB68;
  if (!qword_10002CB68)
  {
    sub_1000023DC(&qword_10002CAE8, &qword_10001ED20);
    sub_1000023DC(&qword_10002CAD8, &qword_10001ED10);
    sub_1000023DC(&qword_10002CAD0, &qword_10001ED08);
    sub_100013B98();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_10000266C(&qword_10002CB58, &qword_10002CB60, &unk_10001EDB8, &protocol conformance descriptor for _ForegroundStyleModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002CB68);
  }

  return result;
}

unint64_t sub_100013B98()
{
  result = qword_10002CB70;
  if (!qword_10002CB70)
  {
    sub_1000023DC(&qword_10002CAD0, &qword_10001ED08);
    sub_1000077F0();
    sub_10000266C(&qword_10002C6E8, &qword_10002C6F0, &qword_10001E470, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002CB70);
  }

  return result;
}

unint64_t sub_100013C50()
{
  result = qword_10002CB78;
  if (!qword_10002CB78)
  {
    sub_1000023DC(&qword_10002CB00, &qword_10001ED40);
    sub_1000023DC(&qword_10002C848, &qword_10001E670);
    sub_1000023DC(&qword_10002C6D8, &qword_10001E458);
    sub_10000E9E8();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_10000266C(&qword_10002CB58, &qword_10002CB60, &unk_10001EDB8, &protocol conformance descriptor for _ForegroundStyleModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002CB78);
  }

  return result;
}

uint64_t sub_100013DB4(uint64_t a1)
{
  v2 = sub_100002394(&qword_10002CB88, &qword_10001EE30);
  __chkstk_darwin(v2 - 8);
  sub_100007B4C(a1, &v5 - v3, &qword_10002CB88, &qword_10001EE30);
  return sub_10001CBE4();
}

uint64_t sub_100013E60(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  result = 0;
  v4 = (a1 + 32);
  do
  {
    v6 = *v4++;
    v5 = v6;
    if ((v6 & ~result) == 0)
    {
      v5 = 0;
    }

    result |= v5;
    --v1;
  }

  while (v1);
  return result;
}

id sub_100013F18@<X0>(uint64_t a1@<X8>)
{
  v62 = a1;
  v1 = sub_10001C934();
  v72 = *(v1 - 8);
  v73 = v1;
  v2 = __chkstk_darwin(v1);
  v67 = &v57 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v69 = &v57 - v4;
  v5 = sub_100002394(&qword_10002C248, &unk_10001DB40);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v57 - v7;
  v68 = sub_100002394(&qword_10002CBD0, &qword_10001EF88);
  v9 = *(v68 - 8);
  __chkstk_darwin(v68);
  v11 = &v57 - v10;
  v70 = sub_100002394(&qword_10002CBD8, &qword_10001EF90);
  v66 = *(v70 - 8);
  __chkstk_darwin(v70);
  v13 = &v57 - v12;
  v60 = sub_100002394(&qword_10002CBE0, &qword_10001EF98);
  v57 = *(v60 - 8);
  __chkstk_darwin(v60);
  v71 = &v57 - v14;
  v61 = sub_100002394(&qword_10002CBE8, &qword_10001EFA0);
  v59 = *(v61 - 8);
  __chkstk_darwin(v61);
  v58 = &v57 - v15;
  sub_100014FD4();
  sub_100015028();

  sub_10001D3F4();
  v16 = sub_10000266C(&qword_10002C250, &qword_10002C248, &unk_10001DB40, &protocol conformance descriptor for StaticConfiguration<A>);
  sub_10001CD54();
  (*(v6 + 8))(v8, v5);
  sub_100002394(&qword_10002CC00, &qword_10001EFA8);
  v17 = sub_10001D2E4();
  v18 = *(v17 - 8);
  v19 = (*(v18 + 80) + 32) & ~*(v18 + 80);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_10001EE60;
  (*(v18 + 104))(v20 + v19, enum case for WidgetFamily.accessoryCircular(_:), v17);
  v74 = v5;
  v75 = v16;
  v21 = v69;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v65 = v13;
  v23 = v68;
  sub_10001CD24();
  v24 = v72;

  (*(v9 + 8))(v11, v23);
  v25 = *(v24 + 104);
  v64 = enum case for LocalizedStringTable.peerPayment(_:);
  v63 = v25;
  v25(v21);
  result = PKPassKitBundle();
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  v27 = result;
  v28 = sub_10001C924();
  v30 = v29;

  v31 = *(v24 + 8);
  v32 = v21;
  v33 = v73;
  v72 = v24 + 8;
  v69 = v31;
  (v31)(v32, v73);
  v74 = v28;
  v75 = v30;
  sub_1000034E8();
  v34 = sub_10001CF74();
  v36 = v35;
  v38 = v37;
  v74 = v23;
  v75 = OpaqueTypeConformance2;
  v39 = swift_getOpaqueTypeConformance2();
  v40 = v70;
  v41 = v65;
  sub_10001CD64();
  sub_100007708(v34, v36, v38 & 1);

  (*(v66 + 8))(v41, v40);
  v42 = v67;
  v63(v67, v64, v33);
  result = PKPassKitBundle();
  if (!result)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  v43 = result;
  v44 = sub_10001C924();
  v46 = v45;

  (v69)(v42, v73);
  v74 = v44;
  v75 = v46;
  v47 = sub_10001CF74();
  v49 = v48;
  v51 = v50;
  v74 = v70;
  v75 = v39;
  v52 = swift_getOpaqueTypeConformance2();
  v53 = v58;
  v54 = v60;
  v55 = v71;
  sub_10001CD04();
  sub_100007708(v47, v49, v51 & 1);

  (*(v57 + 8))(v55, v54);
  if (qword_10002C240 != -1)
  {
    swift_once();
  }

  v74 = v54;
  v75 = v52;
  swift_getOpaqueTypeConformance2();
  v56 = v61;
  sub_10001CD74();
  return (*(v59 + 8))(v53, v56);
}

uint64_t sub_100014788()
{
  v0 = sub_100002394(&qword_10002CBB8, &qword_10001EEE8);
  __chkstk_darwin(v0 - 8);
  v2 = v9 - v1;
  v3 = sub_10001D0C4();
  v4 = sub_10001CEA4();
  (*(*(v4 - 8) + 56))(v2, 1, 1, v4);
  v5 = sub_10001CEF4();
  sub_1000149A4(v2);
  KeyPath = swift_getKeyPath();
  v9[1] = v3;
  v9[2] = KeyPath;
  v9[3] = v5;
  if (qword_10002C238 != -1)
  {
    swift_once();
  }

  v7 = sub_100002394(&qword_10002C288, &qword_10001E390);
  sub_100002CAC(v7, qword_10002D1C0);
  sub_100002394(&qword_10002CB38, &qword_10001EDA8);
  sub_1000139A8();
  sub_10001CFC4();
}

uint64_t sub_100014958@<X0>(uint64_t a2@<X8>)
{
  *a2 = sub_10001CC94();
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  sub_100002394(&qword_10002CBB0, &qword_10001EEE0);
  return sub_100014788();
}

uint64_t sub_1000149A4(uint64_t a1)
{
  v2 = sub_100002394(&qword_10002CBB8, &qword_10001EEE8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100014A0C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_10001C8C4();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_100014A7C(uint64_t a1, void (*a2)(char *))
{
  v3 = type metadata accessor for NearbyPeerPaymentWidgetSimpleEntry(0);
  __chkstk_darwin(v3 - 8);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10001C8B4();
  a2(v5);
  return sub_100015330(v5);
}

uint64_t sub_100014B0C(uint64_t a1, void (*a2)(char *))
{
  v15 = a2;
  v2 = sub_10001D414();
  __chkstk_darwin(v2 - 8);
  v3 = sub_100002394(&qword_10002CC10, &qword_10001F070);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v14 - v5;
  v7 = type metadata accessor for NearbyPeerPaymentWidgetSimpleEntry(0);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10001C8B4();
  sub_100002394(&qword_10002CC18, &qword_10001F078);
  v11 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_10001EE60;
  sub_1000152CC(v10, v12 + v11);
  sub_10001D404();
  sub_100015228();
  sub_10001D4D4();
  v15(v6);
  (*(v4 + 8))(v6, v3);
  return sub_100015330(v10);
}

uint64_t sub_100014D4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_100002180;

  return TimelineProvider.relevances()(a1, a2, a3);
}

uint64_t sub_100014E00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1000154FC;

  return TimelineProvider.relevance()(a1, a2, a3);
}

uint64_t sub_100014EB4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10001CC14();
  *a1 = result;
  return result;
}

uint64_t sub_100014EE0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10001CC14();
  *a1 = result;
  return result;
}

unint64_t sub_100014FD4()
{
  result = qword_10002CBF0;
  if (!qword_10002CBF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002CBF0);
  }

  return result;
}

unint64_t sub_100015028()
{
  result = qword_10002CBF8;
  if (!qword_10002CBF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002CBF8);
  }

  return result;
}

uint64_t sub_10001508C()
{
  sub_1000023DC(&qword_10002CBE8, &qword_10001EFA0);
  sub_1000023DC(&qword_10002CBE0, &qword_10001EF98);
  sub_1000023DC(&qword_10002CBD8, &qword_10001EF90);
  sub_1000023DC(&qword_10002CBD0, &qword_10001EF88);
  sub_1000023DC(&qword_10002C248, &unk_10001DB40);
  sub_10000266C(&qword_10002C250, &qword_10002C248, &unk_10001DB40, &protocol conformance descriptor for StaticConfiguration<A>);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_100015228()
{
  result = qword_10002CC08;
  if (!qword_10002CC08)
  {
    type metadata accessor for NearbyPeerPaymentWidgetSimpleEntry(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002CC08);
  }

  return result;
}

uint64_t type metadata accessor for NearbyPeerPaymentWidgetSimpleEntry(uint64_t a1)
{
  result = qword_10002CC78;
  if (!qword_10002CC78)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000152CC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NearbyPeerPaymentWidgetSimpleEntry(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100015330(uint64_t a1)
{
  v2 = type metadata accessor for NearbyPeerPaymentWidgetSimpleEntry(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000153A0(uint64_t a1, uint64_t a2)
{
  v4 = sub_10001C8C4();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_100015420(uint64_t a1, uint64_t a2)
{
  v4 = sub_10001C8C4();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_100015490(uint64_t a1)
{
  result = sub_10001C8C4();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_100015504()
{
  result = qword_10002CCB0;
  if (!qword_10002CCB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002CCB0);
  }

  return result;
}

unint64_t sub_10001555C()
{
  result = qword_10002CCB8;
  if (!qword_10002CCB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002CCB8);
  }

  return result;
}

uint64_t sub_1000155E4()
{
  v0 = sub_10001C7D4();
  sub_100002CE4(v0, qword_10002D188);
  v1 = sub_100002CAC(v0, qword_10002D188);
  v2 = enum case for IntentAuthenticationPolicy.alwaysAllowed(_:);
  v3 = *(*(v0 - 8) + 104);

  return v3(v1, v2, v0);
}

id sub_10001566C()
{
  v0 = sub_100002394(&qword_10002C288, &qword_10001E390);
  __chkstk_darwin(v0 - 8);
  v2 = &v18 - v1;
  v3 = sub_10001C884();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10001C834();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = objc_opt_self();
  if ([v11 contactlessInterfaceCanBePresentedFromSource:2])
  {
    result = [v11 sharedInstance];
    if (result)
    {
      v13 = result;
      [result presentContactlessInterfaceForDefaultPassFromSource:2 completion:0];

      return sub_10001C714();
    }

    __break(1u);
    goto LABEL_9;
  }

  sub_10001C824();
  sub_10001D524();
  sub_10001C814();
  sub_10001C7E4();
  result = (*(v4 + 48))(v2, 1, v3);
  if (result == 1)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  (*(v4 + 32))(v6, v2, v3);
  result = [objc_opt_self() defaultWorkspace];
  if (result)
  {
    v15 = result;
    sub_10001C864(v14);
    v17 = v16;
    [v15 openSensitiveURL:v16 withOptions:0];

    (*(v4 + 8))(v6, v3);
    (*(v8 + 8))(v10, v7);
    return sub_10001C714();
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t (*sub_10001599C(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_10001C744();
  return sub_100015A10;
}

void sub_100015A10(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

unint64_t sub_100015A64()
{
  result = qword_10002CCC0;
  if (!qword_10002CCC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002CCC0);
  }

  return result;
}

unint64_t sub_100015ABC()
{
  result = qword_10002CCC8;
  if (!qword_10002CCC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002CCC8);
  }

  return result;
}

uint64_t sub_100015BD0()
{
  sub_10001566C();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100015C34@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100016CBC();
  *a1 = result;
  return result;
}

uint64_t sub_100015C5C(uint64_t a1)
{
  v2 = sub_100003494();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

uint64_t sub_100015CCC(uint64_t a1, uint64_t (*a2)(void), uint64_t *a3, uint64_t (*a4)(unint64_t, unint64_t))
{
  v6 = a2(0);
  sub_100002CE4(v6, a3);
  sub_100002CAC(v6, a3);
  return a4(0xD000000000000013, 0x800000010001FB40);
}

uint64_t sub_100015D40()
{
  sub_100002394(&qword_10002CD40, &qword_10001F510);
  v0 = *(sub_100002394(&qword_10002CD48, &qword_10001F518) - 8);
  v1 = (*(v0 + 80) + 32) & ~*(v0 + 80);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_10001EE60;
  sub_10001C784();
  v3 = sub_100016A2C(v2);
  swift_setDeallocating();
  sub_100016BE4(v2 + v1);
  result = swift_deallocClassInstance();
  qword_10002D1B8 = v3;
  return result;
}

unint64_t sub_100015E48()
{
  result = qword_10002CCD0;
  if (!qword_10002CCD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002CCD0);
  }

  return result;
}

Swift::Int sub_100015E9C()
{
  sub_10001D5F4();
  sub_10001D544();
  return sub_10001D614();
}

Swift::Int sub_100015F00(uint64_t a1)
{
  sub_10001D5F4();
  sub_10001D544();
  return sub_10001D614();
}

uint64_t sub_100015F4C@<X0>(uint64_t *a1@<X0>, BOOL *a2@<X8>)
{
  v7._countAndFlagsBits = *a1;
  v3 = a1[1];
  v4._rawValue = &off_100029810;
  v7._object = v3;
  v5 = sub_10001D5D4(v4, v7);

  *a2 = v5 != 0;
  return result;
}

unint64_t sub_100015FBC()
{
  result = qword_10002CCD8;
  if (!qword_10002CCD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002CCD8);
  }

  return result;
}

unint64_t sub_100016014()
{
  result = qword_10002CCE0;
  if (!qword_10002CCE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002CCE0);
  }

  return result;
}

unint64_t sub_100016078()
{
  result = qword_10002CCE8;
  if (!qword_10002CCE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002CCE8);
  }

  return result;
}

unint64_t sub_1000160D0()
{
  result = qword_10002CCF0;
  if (!qword_10002CCF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002CCF0);
  }

  return result;
}

unint64_t sub_100016128()
{
  result = qword_10002CCF8;
  if (!qword_10002CCF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002CCF8);
  }

  return result;
}

unint64_t sub_100016180()
{
  result = qword_10002CD00;
  if (!qword_10002CD00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002CD00);
  }

  return result;
}

uint64_t sub_100016210@<X0>(void *a1@<X2>, uint64_t (*a2)(void)@<X3>, uint64_t a3@<X4>, uint64_t a5@<X8>)
{
  if (*a1 == -1)
  {
    v7 = a2(0);
  }

  else
  {
    swift_once();
    v7 = a2(0);
  }

  v8 = v7;
  v9 = sub_100002CAC(v7, a3);
  v10 = *(*(v8 - 8) + 16);

  return v10(a5, v9, v8);
}

unint64_t sub_10001632C()
{
  result = qword_10002CD08;
  if (!qword_10002CD08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002CD08);
  }

  return result;
}

uint64_t sub_100016380(uint64_t a1)
{
  v2 = sub_10001632C();

  return static AppEnum.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_1000163D0()
{
  result = qword_10002CD10;
  if (!qword_10002CD10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002CD10);
  }

  return result;
}

unint64_t sub_100016428()
{
  result = qword_10002CD18;
  if (!qword_10002CD18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002CD18);
  }

  return result;
}

unint64_t sub_100016480()
{
  result = qword_10002CD20;
  if (!qword_10002CD20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002CD20);
  }

  return result;
}

uint64_t sub_1000164D4()
{
  if (qword_10002C230 != -1)
  {
    swift_once();
  }
}

uint64_t sub_100016530(uint64_t a1)
{
  v2 = sub_100016180();

  return CaseDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

uint64_t getEnumTagSinglePayload for LaunchFromControlCenterEnum(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for LaunchFromControlCenterEnum(_WORD *result, int a2, int a3)
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

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

unint64_t sub_100016704(uint64_t a1)
{
  sub_10001D524();
  sub_10001D5F4();
  sub_10001D544();
  v2 = sub_10001D614();

  return sub_100016798(a1, v2);
}

unint64_t sub_100016798(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = sub_10001D524();
      v8 = v7;
      if (v6 == sub_10001D524() && v8 == v9)
      {
        break;
      }

      v11 = sub_10001D5E4();

      if ((v11 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
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

unint64_t sub_10001689C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100002394(&qword_10002CD70, &qword_10001F548);
    v3 = sub_10001D5B4();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 1);
      v6 = *i;
      v7 = *(i - 2);

      result = sub_100016704(v7);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v7;
      v10 = (v3[7] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

uint64_t sub_1000169C8()
{
  sub_10001D5F4();
  sub_10001D544();
  v0 = sub_10001D614();

  return sub_10001699C(v0);
}

unint64_t sub_100016A2C(uint64_t a1)
{
  v2 = sub_100002394(&qword_10002CD48, &qword_10001F518);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2 - 8);
  v5 = &v18 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_100002394(&qword_10002CD50, &qword_10001F520);
    v7 = sub_10001D5B4();
    v8 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v9 = *(v3 + 72);

    while (1)
    {
      sub_100016C4C(v8, v5);
      result = sub_1000169C8();
      if (v11)
      {
        break;
      }

      v12 = result;
      *(v7 + 64 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
      v13 = *(v7 + 56);
      v14 = sub_10001C794();
      result = (*(*(v14 - 8) + 32))(v13 + *(*(v14 - 8) + 72) * v12, v5, v14);
      v15 = *(v7 + 16);
      v16 = __OFADD__(v15, 1);
      v17 = v15 + 1;
      if (v16)
      {
        goto LABEL_10;
      }

      *(v7 + 16) = v17;
      v8 += v9;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

uint64_t sub_100016BE4(uint64_t a1)
{
  v2 = sub_100002394(&qword_10002CD48, &qword_10001F518);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100016C4C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002394(&qword_10002CD48, &qword_10001F518);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100016CBC()
{
  v17 = sub_10001C7A4();
  v0 = *(v17 - 8);
  __chkstk_darwin(v17);
  v2 = &v17 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_100002394(&qword_10002CD58, &qword_10001F528);
  v4 = __chkstk_darwin(v3 - 8);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v17 - v7;
  v9 = sub_100002394(&qword_10002CD60, &qword_10001F530);
  __chkstk_darwin(v9 - 8);
  v11 = &v17 - v10;
  v12 = sub_10001C854();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  sub_100002394(&qword_10002CD68, &unk_10001F538);
  sub_10001C844();
  (*(v13 + 56))(v11, 1, 1, v12);
  v18 = 1;
  v14 = sub_10001C6F4();
  v15 = *(*(v14 - 8) + 56);
  v15(v8, 1, 1, v14);
  v15(v6, 1, 1, v14);
  (*(v0 + 104))(v2, enum case for InputConnectionBehavior.default(_:), v17);
  sub_10001632C();
  return sub_10001C774();
}

id sub_100016FC4(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  v5 = *(v2 + 56);
  if (v5 == 255)
  {
  }

  else
  {
    v7 = *(v2 + 32);
    v6 = *(v2 + 40);
    v8 = *(v2 + 48);
    if (v5)
    {

      sub_1000175E4(v7, v6, v8, v5);
    }

    else
    {
      if (v7 == a1 && v6 == a2)
      {
        sub_1000175FC(a1, a2, *(v2 + 48));

        return v8;
      }

      v22 = sub_10001D5E4();

      sub_1000175E4(v7, v6, v8, v5);

      if (v22)
      {
        goto LABEL_15;
      }
    }
  }

  v9 = *(v2 + 64);
  v10 = sub_10001D4F4();
  v11 = [v9 passWithUniqueID:v10];

  if (!v11)
  {
LABEL_17:

    return 0;
  }

  v12 = [objc_allocWithZone(PKPassView) initWithPass:v11 content:5];
  if (!v12)
  {

    goto LABEL_17;
  }

  v13 = *(v2 + 16);
  v14 = *(v2 + 24);
  v15 = v12;
  v8 = [v15 snapshotOfFrontFaceWithRequestedSize:{v13, v14}];

  if (!v8)
  {
LABEL_15:

    return v8;
  }

  v16 = *(v2 + 32);
  v17 = *(v2 + 40);
  v18 = *(v2 + 48);
  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  *(v2 + 48) = v8;
  v19 = *(v2 + 56);
  *(v2 + 56) = 0;
  v20 = v8;
  sub_100017590(v16, v17, v18, v19);
  return v8;
}

id sub_1000171C4(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  v5 = *(v2 + 56);
  if (v5 == 255)
  {
  }

  else
  {
    v7 = *(v2 + 32);
    v6 = *(v2 + 40);
    v8 = *(v2 + 48);
    if (v5)
    {
      if (v7 == a1 && v6 == a2)
      {
        sub_1000175FC(a1, a2, *(v2 + 48));

        return v8;
      }

      v10 = sub_10001D5E4();

      sub_1000175E4(v7, v6, v8, v5);

      if (v10)
      {
        goto LABEL_23;
      }
    }

    else
    {

      sub_1000175E4(v7, v6, v8, v5);
    }
  }

  v11 = *(v2 + 64);
  v12 = sub_10001D4F4();
  v13 = [v11 passWithUniqueID:v12];

  if (!v13)
  {
LABEL_18:

    return 0;
  }

  v14 = [v13 iconImage];
  if (!v14)
  {

    goto LABEL_18;
  }

  v15 = v14;
  v8 = [v14 imageData];

  if (!v8)
  {

    goto LABEL_23;
  }

  v16 = sub_10001C8A4();
  v18 = v17;

  v19 = objc_allocWithZone(UIImage);
  isa = sub_10001C894().super.isa;
  v8 = [v19 initWithData:isa];

  sub_10001753C(v16, v18);
  if (!v8)
  {
LABEL_23:

    return v8;
  }

  v21 = *(v2 + 32);
  v22 = *(v2 + 40);
  v23 = *(v2 + 48);
  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  *(v2 + 48) = v8;
  v24 = *(v2 + 56);
  *(v2 + 56) = 1;
  v25 = v8;
  sub_100017590(v21, v22, v23, v24);
  return v8;
}

uint64_t sub_100017404()
{
  sub_100017590(*(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56));

  return swift_deallocClassInstance();
}

__n128 sub_10001747C(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_100017490(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 25))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 24);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1000174D8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 24) = -a2;
    }
  }

  return result;
}

uint64_t sub_10001753C(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

void sub_100017590(uint64_t result, uint64_t a2, void *a3, char a4)
{
  if (a4 != -1)
  {
    sub_1000175A8(result, a2, a3);
  }
}

void sub_1000175A8(uint64_t a1, uint64_t a2, void *a3)
{
}

uint64_t sub_1000175E4(uint64_t result, uint64_t a2, void *a3, char a4)
{
  if (a4 != -1)
  {
    return sub_1000175FC(result, a2, a3);
  }

  return result;
}

id sub_1000175FC(uint64_t a1, uint64_t a2, void *a3)
{

  return a3;
}

uint64_t sub_100017644(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 8))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_1000176A0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_10001771C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_10001D0B4();
  v4 = *(v3 - 8);
  result = __chkstk_darwin(v3);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v1;
  if (*v1)
  {
    v9 = v8;
    sub_10001D094();
    (*(v4 + 104))(v7, enum case for Image.ResizingMode.stretch(_:), v3);
    v10 = sub_10001D0D4();

    result = (*(v4 + 8))(v7, v3);
    LOWORD(v8) = 1;
  }

  else
  {
    v10 = 0;
  }

  *a1 = v10;
  *(a1 + 8) = 0;
  *(a1 + 16) = v8;
  return result;
}

unint64_t sub_100017870()
{
  result = qword_10002CE50;
  if (!qword_10002CE50)
  {
    sub_1000023DC(&qword_10002CE58, &qword_10001F698);
    sub_1000178F4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002CE50);
  }

  return result;
}

unint64_t sub_1000178F4()
{
  result = qword_10002CE60;
  if (!qword_10002CE60)
  {
    sub_1000023DC(&qword_10002CE68, &unk_10001F6A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002CE60);
  }

  return result;
}

uint64_t sub_100017978()
{
  v0 = sub_100002394(&qword_10002C288, &qword_10001E390);
  sub_100002CE4(v0, qword_10002D1C0);
  sub_100002CAC(v0, qword_10002D1C0);
  v3._countAndFlagsBits = sub_10001D524();
  sub_10001D554(v3);

  v4._countAndFlagsBits = 47;
  v4._object = 0xE100000000000000;
  sub_10001D554(v4);
  v5._countAndFlagsBits = sub_10001D524();
  sub_10001D554(v5);

  sub_10001C874();
}

uint64_t sub_100017AA0@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_10001CDA4();
  __chkstk_darwin(v2 - 8);
  v3 = sub_10001CDC4();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = &v18[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v18[-1] - v8;
  v10 = sub_10001D2A4();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v18[-1] - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 104))(v13, enum case for FlightWidgetDisplayContext.lockScreen(_:), v10);
  sub_10001D1A4();
  (*(v11 + 8))(v13, v10);
  if (v19)
  {
    sub_10001B900(v18, v19);
    v14 = sub_10001D2B4();
    sub_10001CD94();
    sub_10001CDB4();
    (*(v4 + 16))(v7, v9, v3);
    sub_10001BE38(&qword_10002D030, &type metadata accessor for BlurReplaceTransition, &protocol conformance descriptor for BlurReplaceTransition);
    v15 = sub_10001CB14();
    (*(v4 + 8))(v9, v3);
    result = sub_10001B8B4(v18);
  }

  else
  {
    result = sub_100007AEC(v18, &qword_10002CEE8, &qword_10001F778);
    v14 = 0;
    v15 = 0;
  }

  *a1 = v14;
  a1[1] = v15;
  return result;
}

uint64_t sub_100017D7C@<X0>(uint64_t a3@<X8>)
{
  v54 = a3;
  v3 = sub_10001CB34();
  v4 = *(v3 - 8);
  v52 = v3;
  v53 = v4;
  __chkstk_darwin(v3);
  v49 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = sub_10001CA94();
  v6 = *(v45 - 8);
  __chkstk_darwin(v45);
  v8 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_10001D214();
  __chkstk_darwin(v46);
  v9 = sub_100002394(&qword_10002D048, &qword_10001F880);
  v10 = *(v9 - 8);
  v47 = v9;
  v48 = v10;
  __chkstk_darwin(v9);
  v12 = &v42 - v11;
  v13 = sub_100002394(&qword_10002CE90, &qword_10001F740);
  __chkstk_darwin(v13);
  v15 = &v42 - v14;
  v16 = sub_100002394(&qword_10002CE88, &qword_10001F738);
  v17 = *(v16 - 8);
  v50 = v16;
  v51 = v17;
  __chkstk_darwin(v16);
  v19 = &v42 - v18;
  v44 = sub_100018394();
  *v15 = sub_10001CCB4();
  *(v15 + 1) = 0;
  v15[16] = 0;
  v20 = sub_100002394(&qword_10002D050, &qword_10001F888);
  sub_1000188DC(&v15[*(v20 + 44)]);
  v21 = sub_10001D134();
  v42 = v22;
  v43 = v21;
  v23 = &v15[*(v13 + 36)];
  sub_100002394(&qword_10002CEE0, &qword_10001F770);
  sub_10001D3E4();
  sub_10001CA64();
  (*(v6 + 8))(v8, v45);
  sub_10001D204();
  sub_10001BE38(&qword_10002D058, &type metadata accessor for LiveActivityTapIntent, &protocol conformance descriptor for LiveActivityTapIntent);
  sub_10001D0F4();
  v24 = v49;
  sub_10001CB24();
  sub_10000266C(&qword_10002D060, &qword_10002D048, &qword_10001F880, &protocol conformance descriptor for Button<A>);
  sub_10001BE38(&qword_10002D068, &type metadata accessor for PlainButtonStyle, &protocol conformance descriptor for PlainButtonStyle);
  v25 = v47;
  v26 = v52;
  sub_10001D014();
  (*(v53 + 8))(v24, v26);
  (*(v48 + 8))(v12, v25);
  v27 = &v23[*(sub_100002394(&qword_10002CEB8, &unk_10001F750) + 36)];
  v28 = v42;
  *v27 = v43;
  v27[1] = v28;
  sub_10001D1B4();
  v29 = sub_10001ACA4();
  sub_10001CFA4();

  sub_100007AEC(v15, &qword_10002CE90, &qword_10001F740);
  sub_10001D1B4();
  v55 = v13;
  v56 = v29;
  swift_getOpaqueTypeConformance2();
  v30 = v54;
  v31 = v50;
  sub_10001CFB4();

  (*(v51 + 8))(v19, v31);
  LOBYTE(v12) = sub_10001CE04();
  sub_10001CAC4();
  v33 = v32;
  v35 = v34;
  v37 = v36;
  v39 = v38;

  result = sub_100002394(&qword_10002CE70, &qword_10001F730);
  v41 = v30 + *(result + 36);
  *v41 = v12;
  *(v41 + 8) = v33;
  *(v41 + 16) = v35;
  *(v41 + 24) = v37;
  *(v41 + 32) = v39;
  *(v41 + 40) = 0;
  return result;
}

uint64_t sub_100018394()
{
  v0 = sub_10001D244();
  v47 = *(v0 - 8);
  v48 = v0;
  __chkstk_darwin(v0);
  v46 = v38 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_100002394(&qword_10002D038, &qword_10001F870);
  __chkstk_darwin(v2 - 8);
  v45 = v38 - v3;
  v4 = sub_100002394(&qword_10002D040, &qword_10001F878);
  __chkstk_darwin(v4 - 8);
  v44 = v38 - v5;
  v6 = sub_10001CA94();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v42 = v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v8);
  v40 = v38 - v11;
  v12 = __chkstk_darwin(v10);
  v14 = v38 - v13;
  __chkstk_darwin(v12);
  v16 = v38 - v15;
  v43 = sub_10001D164();
  v41 = *(v43 - 8);
  __chkstk_darwin(v43);
  v39 = v38 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100002394(&qword_10002CEE0, &qword_10001F770);
  sub_10001D3E4();
  v18 = sub_10001CA64();
  v20 = v19;
  v21 = *(v7 + 8);
  v21(v16, v6);
  v38[7] = sub_1000171C4(v18, v20);

  sub_10001D3E4();
  v22 = sub_10001CA64();
  v24 = v23;
  v21(v16, v6);
  v38[6] = sub_100016FC4(v22, v24);

  sub_10001D3E4();
  v25 = sub_10001CA34();
  v38[4] = v26;
  v38[5] = v25;
  v21(v16, v6);
  sub_10001D3E4();
  v27 = sub_10001CA74();
  v38[2] = v28;
  v38[3] = v27;
  v21(v14, v6);
  v29 = v40;
  sub_10001D3E4();
  sub_10001CA54();
  v38[1] = v30;
  v21(v29, v6);
  v31 = v42;
  sub_10001D3E4();
  sub_10001CA44();
  v21(v31, v6);
  v32 = v39;
  sub_10001D154();
  v33 = v41;
  v34 = v45;
  v35 = v43;
  (*(v41 + 16))(v45, v32, v43);
  (*(v33 + 56))(v34, 0, 1, v35);
  sub_10001D3E4();
  (*(v47 + 104))(v46, enum case for FlightWidgetPerspective.passenger(_:), v48);
  sub_10001D1F4();
  swift_allocObject();
  v36 = sub_10001D194();
  (*(v33 + 8))(v32, v35);
  return v36;
}

uint64_t sub_1000188DC@<X0>(uint64_t a2@<X8>)
{
  v83 = a2;
  v79 = sub_10001D294();
  v82 = *(v79 - 8);
  __chkstk_darwin(v79);
  v72 = &v69 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = sub_10001D2A4();
  v3 = *(v74 - 8);
  __chkstk_darwin(v74);
  v5 = &v69 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100002394(&qword_10002CFF8, &qword_10001F838);
  __chkstk_darwin(v6 - 8);
  v8 = &v69 - v7;
  v9 = sub_10001D274();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v71 = &v69 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v70 = &v69 - v13;
  v14 = sub_100002394(&qword_10002D070, &qword_10001F890);
  v15 = __chkstk_darwin(v14 - 8);
  v81 = &v69 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v73 = &v69 - v17;
  v18 = sub_100002394(&qword_10002CFF0, &qword_10001F830);
  v19 = v18 - 8;
  v20 = __chkstk_darwin(v18);
  v80 = &v69 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v23 = &v69 - v22;
  v24 = sub_100002394(&qword_10002D078, &qword_10001F898);
  v25 = __chkstk_darwin(v24 - 8);
  v78 = &v69 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v28 = &v69 - v27;
  *v28 = sub_10001CC84();
  *(v28 + 1) = 0;
  v28[16] = 1;
  v29 = *(sub_100002394(&qword_10002D080, &qword_10001F8A0) + 44);
  v76 = v28;
  sub_1000190A0(&v28[v29]);
  sub_100017AA0(v84);
  v77 = v84[0];
  v75 = v84[1];
  sub_10001D104();
  v30 = &v23[*(sub_100002394(&qword_10002D010, &qword_10001F850) + 36)];
  sub_10001CCD4();
  v31 = sub_10001CE04();
  v30[*(sub_100002394(&qword_10002D018, &qword_10001F858) + 36)] = v31;
  LOBYTE(v30) = sub_10001CE14();
  sub_10001CAC4();
  v33 = v32;
  v35 = v34;
  v37 = v36;
  v39 = v38;
  v40 = &v23[*(sub_100002394(&qword_10002D020, &qword_10001F860) + 36)];
  *v40 = v30;
  *(v40 + 1) = v33;
  *(v40 + 2) = v35;
  *(v40 + 3) = v37;
  *(v40 + 4) = v39;
  v40[40] = 0;
  LOBYTE(v30) = sub_10001CE24();
  sub_10001CAC4();
  v41 = *(v19 + 44);
  v42 = v9;
  v43 = v23;
  v44 = &v23[v41];
  *v44 = v30;
  *(v44 + 1) = v45;
  *(v44 + 2) = v46;
  *(v44 + 3) = v47;
  *(v44 + 4) = v48;
  v44[40] = 0;
  v49 = v74;
  (*(v3 + 104))(v5, enum case for FlightWidgetDisplayContext.lockScreen(_:), v74);
  sub_10001D264();
  (*(v3 + 8))(v5, v49);
  if ((*(v10 + 48))(v8, 1, v42) == 1)
  {
    sub_100007AEC(v8, &qword_10002CFF8, &qword_10001F838);
    v50 = 1;
    v51 = v82;
    v52 = v73;
    v53 = v79;
  }

  else
  {
    v54 = v70;
    (*(v10 + 32))(v70, v8, v42);
    (*(v10 + 16))(v71, v54, v42);
    v55 = v72;
    sub_10001D284();
    (*(v10 + 8))(v54, v42);
    v56 = v82;
    v57 = v73;
    v58 = v79;
    (*(v82 + 32))(v73, v55, v79);
    v50 = 0;
    v51 = v56;
    v52 = v57;
    v53 = v58;
  }

  (*(v51 + 56))(v52, v50, 1, v53);
  v59 = v76;
  v60 = v78;
  sub_100007B4C(v76, v78, &qword_10002D078, &qword_10001F898);
  v61 = v80;
  sub_100007B4C(v43, v80, &qword_10002CFF0, &qword_10001F830);
  v62 = v81;
  sub_100007B4C(v52, v81, &qword_10002D070, &qword_10001F890);
  v63 = v83;
  sub_100007B4C(v60, v83, &qword_10002D078, &qword_10001F898);
  v64 = sub_100002394(&qword_10002D088, &qword_10001F8A8);
  v65 = (v63 + v64[12]);
  v66 = v77;
  v67 = v75;
  *v65 = v77;
  v65[1] = v67;
  sub_100007B4C(v61, v63 + v64[16], &qword_10002CFF0, &qword_10001F830);
  sub_100007B4C(v62, v63 + v64[20], &qword_10002D070, &qword_10001F890);
  sub_10001BD48(v66, v67);
  sub_100007AEC(v52, &qword_10002D070, &qword_10001F890);
  sub_100007AEC(v43, &qword_10002CFF0, &qword_10001F830);
  sub_100007AEC(v59, &qword_10002D078, &qword_10001F898);
  sub_100007AEC(v62, &qword_10002D070, &qword_10001F890);
  sub_100007AEC(v61, &qword_10002CFF0, &qword_10001F830);
  sub_10001BD88(v66, v67);
  return sub_100007AEC(v60, &qword_10002D078, &qword_10001F898);
}

uint64_t sub_1000190A0@<X0>(char *a1@<X8>)
{
  v2 = sub_10001D234();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v17[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v17[-1] - v7;
  sub_10001D184();
  sub_10001D174();
  sub_10001D224();
  sub_10001D1C4();
  if (v18)
  {
    sub_10001B900(v17, v18);
    v9 = sub_10001D2B4();
    sub_10001B8B4(v17);
  }

  else
  {
    sub_100007AEC(v17, &qword_10002CEE8, &qword_10001F778);
    v9 = 0;
  }

  v10 = *(v3 + 16);
  v10(v6, v8, v2);
  LOBYTE(v17[0]) = 0;
  v10(a1, v6, v2);
  v11 = sub_100002394(&qword_10002D090, &qword_10001F8B0);
  v12 = &a1[*(v11 + 48)];
  v13 = v17[0];
  *v12 = 0x4020000000000000;
  v12[8] = v13;
  *&a1[*(v11 + 64)] = v9;
  v14 = *(v3 + 8);

  v14(v8, v2);

  return (v14)(v6, v2);
}

uint64_t sub_1000192AC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10001D074();
  *a1 = result;
  return result;
}

uint64_t sub_1000192D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v37 = a1;
  v42 = a3;
  v4 = sub_100002394(&qword_10002C288, &qword_10001E390);
  __chkstk_darwin(v4 - 8);
  v40 = &v30 - v5;
  v41 = sub_10001CA94();
  v39 = *(v41 - 8);
  __chkstk_darwin(v41);
  v38 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_10001D3D4();
  v7 = *(v34 - 8);
  __chkstk_darwin(v34);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_10001D364();
  v43 = *(v35 - 8);
  v10 = __chkstk_darwin(v35);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v10);
  v31 = &v30 - v14;
  v15 = __chkstk_darwin(v13);
  v33 = &v30 - v16;
  __chkstk_darwin(v15);
  v36 = &v30 - v17;
  v18 = sub_100018394();
  v19 = swift_allocObject();
  *(v19 + 16) = v18;
  *(v19 + 24) = a2;
  swift_retain_n();

  sub_100002394(&qword_10002CEC0, &qword_10001F760);
  sub_100002394(&qword_10002CEC8, &qword_10001F768);
  sub_10000266C(&qword_10002CED0, &qword_10002CEC0, &qword_10001F760, &protocol conformance descriptor for TupleView<A>);
  sub_10001AE60();
  v32 = v18;
  sub_10001D344();
  sub_10001CE04();
  sub_10001D3C4();
  sub_10001D334();
  v20 = *(v7 + 8);
  v21 = v34;
  v20(v9, v34);
  v30 = v7 + 8;
  v22 = *(v43 + 8);
  v43 += 8;
  v23 = v35;
  v22(v12, v35);
  sub_10001CE34();
  sub_10001B718();
  sub_10001D3A4();
  v24 = v33;
  v25 = v31;
  sub_10001D334();
  v20(v9, v21);
  v22(v25, v23);
  sub_10001CE54();
  sub_10001D3B4();
  v26 = v36;
  sub_10001D334();
  v20(v9, v21);
  v22(v24, v23);
  sub_100002394(&qword_10002CEE0, &qword_10001F770);
  v27 = v38;
  sub_10001D3E4();
  v28 = v40;
  sub_10001CA84();
  (*(v39 + 8))(v27, v41);
  sub_10001D354();

  sub_100007AEC(v28, &qword_10002C288, &qword_10001E390);
  return (v22)(v26, v23);
}

uint64_t sub_10001983C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v29 = a3;
  v30 = sub_100002394(&qword_10002CEF8, &qword_10001F788);
  v28 = *(v30 - 8);
  __chkstk_darwin(v30);
  v22 = &v19 - v5;
  v27 = sub_100002394(&qword_10002CF00, &qword_10001F790);
  v26 = *(v27 - 8);
  __chkstk_darwin(v27);
  v7 = &v19 - v6;
  v25 = sub_100002394(&qword_10002CF08, &qword_10001F798);
  v24 = *(v25 - 8);
  __chkstk_darwin(v25);
  v9 = &v19 - v8;
  v23 = sub_100002394(&qword_10002CF10, &qword_10001F7A0);
  v21 = *(v23 - 8);
  __chkstk_darwin(v23);
  v11 = &v19 - v10;
  v12 = sub_10001D4A4();
  __chkstk_darwin(v12 - 8);
  v20 = sub_100002394(&qword_10002CF18, &qword_10001F7A8);
  v19 = *(v20 - 8);
  __chkstk_darwin(v20);
  v14 = &v19 - v13;
  sub_10001D484();
  v15 = sub_100002394(&qword_10002CF20, &qword_10001F7B0);
  v16 = sub_10001BAC0(&qword_10002CF28, &qword_10002CF20, &qword_10001F7B0, sub_10001B94C);
  sub_10001D444();
  sub_10001D494();
  sub_100002394(&qword_10002CF48, &qword_10001F7C0);
  sub_10001BA10();
  sub_10001D444();
  sub_10001D474();
  v36 = a2;
  v37 = a1;
  sub_100002394(&qword_10002CF78, &qword_10001F7D8);
  sub_10001BAC0(&qword_10002CF80, &qword_10002CF78, &qword_10001F7D8, sub_10001BBD0);
  sub_10001D444();
  v35 = v14;
  sub_100002394(&qword_10002CFA8, &qword_10001F7F0);
  v38 = v15;
  v39 = v16;
  swift_getOpaqueTypeConformance2();
  sub_10001D454();
  v33 = v7;
  v34 = v11;
  sub_100002394(&qword_10002CFB0, &qword_10001F7F8);
  sub_10000266C(&qword_10002CFB8, &qword_10002CFB0, &qword_10001F7F8, &protocol conformance descriptor for TupleView<A>);
  v17 = v22;
  sub_10001D454();
  v31 = v17;
  v32 = v9;
  sub_100002394(&qword_10002CEC0, &qword_10001F760);
  sub_10000266C(&qword_10002CED0, &qword_10002CEC0, &qword_10001F760, &protocol conformance descriptor for TupleView<A>);
  sub_10001D454();
  (*(v28 + 8))(v17, v30);
  (*(v26 + 8))(v7, v27);
  (*(v24 + 8))(v9, v25);
  (*(v21 + 8))(v11, v23);
  return (*(v19 + 8))(v14, v20);
}

uint64_t sub_100019ED4@<X0>(uint64_t a2@<X8>)
{
  sub_10001D184();
  sub_10001D174();
  sub_10001D224();
  v3 = sub_10001CE34();
  sub_10001CAC4();
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = a2 + *(sub_100002394(&qword_10002CF38, &qword_10001F7B8) + 36);
  *v12 = v3;
  *(v12 + 8) = v5;
  *(v12 + 16) = v7;
  *(v12 + 24) = v9;
  *(v12 + 32) = v11;
  *(v12 + 40) = 0;
  v13 = sub_10001CE14();
  sub_10001CAC4();
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;
  result = sub_100002394(&qword_10002CF20, &qword_10001F7B0);
  v23 = a2 + *(result + 36);
  *v23 = v13;
  *(v23 + 8) = v15;
  *(v23 + 16) = v17;
  *(v23 + 24) = v19;
  *(v23 + 32) = v21;
  *(v23 + 40) = 0;
  return result;
}

void sub_100019FD0(uint64_t a1@<X8>)
{
  sub_10001D1D4();
  if (v20)
  {
    sub_10001B900(v19, v20);
    v2 = sub_10001D2B4();
    v3 = sub_10001CE54();
    sub_10001CAC4();
    *(&v5 + 1) = v4;
    *(&v7 + 1) = v6;
    v17 = v7;
    v18 = v5;
    sub_10001B8B4(v19);
    v8 = sub_10001CE14();
    sub_10001CAC4();
    *(&v10 + 1) = v9;
    *(&v12 + 1) = v11;
    v14 = v17;
    v13 = v18;
    v22 = 0;
    v21 = 0;
    v15 = v3;
    v16 = v8;
  }

  else
  {
    sub_100007AEC(v19, &qword_10002CEE8, &qword_10001F778);
    v2 = 0;
    v16 = 0;
    v15 = 0;
    v13 = 0uLL;
    v14 = 0uLL;
    v10 = 0uLL;
    v12 = 0uLL;
  }

  *a1 = v2;
  *(a1 + 8) = v15;
  *(a1 + 16) = v13;
  *(a1 + 32) = v14;
  *(a1 + 48) = 0;
  *(a1 + 56) = v16;
  *(a1 + 64) = v10;
  *(a1 + 80) = v12;
  *(a1 + 96) = 0;
}

uint64_t sub_10001A0DC@<X0>(uint64_t a3@<X8>)
{
  *a3 = sub_10001CCB4();
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  v4 = sub_100002394(&qword_10002CFE0, &qword_10001F820);
  sub_10001A1E8((a3 + *(v4 + 44)));
  v5 = sub_10001CDF4();
  sub_10001CAC4();
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v14 = a3 + *(sub_100002394(&qword_10002CF90, &qword_10001F7E0) + 36);
  *v14 = v5;
  *(v14 + 8) = v7;
  *(v14 + 16) = v9;
  *(v14 + 24) = v11;
  *(v14 + 32) = v13;
  *(v14 + 40) = 0;
  v15 = sub_10001CE24();
  sub_10001CAC4();
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;
  result = sub_100002394(&qword_10002CF78, &qword_10001F7D8);
  v25 = a3 + *(result + 36);
  *v25 = v15;
  *(v25 + 8) = v17;
  *(v25 + 16) = v19;
  *(v25 + 24) = v21;
  *(v25 + 32) = v23;
  *(v25 + 40) = 0;
  return result;
}

uint64_t sub_10001A1E8@<X0>(uint64_t *a2@<X8>)
{
  v80 = a2;
  v2 = sub_100002394(&qword_10002CFE8, &qword_10001F828);
  v78 = *(v2 - 8);
  v79 = v2;
  __chkstk_darwin(v2);
  v74 = &v64 - v3;
  v4 = sub_10001D294();
  v72 = *(v4 - 8);
  v73 = v4;
  v5 = __chkstk_darwin(v4);
  v71 = &v64 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v70 = &v64 - v7;
  v68 = sub_100002394(&qword_10002CFF0, &qword_10001F830);
  v8 = __chkstk_darwin(v68);
  v69 = &v64 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v67 = &v64 - v10;
  v11 = sub_10001D2A4();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v64 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_100002394(&qword_10002CFF8, &qword_10001F838);
  __chkstk_darwin(v15 - 8);
  v17 = &v64 - v16;
  v18 = sub_10001D274();
  v19 = *(v18 - 8);
  v20 = __chkstk_darwin(v18);
  v22 = &v64 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v24 = &v64 - v23;
  v25 = sub_100002394(&qword_10002D000, &qword_10001F840);
  v26 = __chkstk_darwin(v25 - 8);
  v77 = &v64 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v29 = &v64 - v28;
  sub_100017AA0(v81);
  v75 = v81[1];
  v76 = v81[0];
  (*(v12 + 104))(v14, enum case for FlightWidgetDisplayContext.dynamicIslandExpanded(_:), v11);
  sub_10001D264();
  (*(v12 + 8))(v14, v11);
  if ((*(v19 + 48))(v17, 1, v18) == 1)
  {
    sub_100007AEC(v17, &qword_10002CFF8, &qword_10001F838);
    v30 = 1;
  }

  else
  {
    v66 = v19;
    v31 = *(v19 + 32);
    v65 = v24;
    v64 = v18;
    v31(v24, v17, v18);
    v32 = v67;
    sub_10001D104();
    v33 = v32 + *(sub_100002394(&qword_10002D010, &qword_10001F850) + 36);
    sub_10001CCD4();
    v34 = sub_10001CE04();
    *(v33 + *(sub_100002394(&qword_10002D018, &qword_10001F858) + 36)) = v34;
    LOBYTE(v33) = sub_10001CE14();
    sub_10001CAC4();
    v36 = v35;
    v38 = v37;
    v40 = v39;
    v42 = v41;
    v43 = v32 + *(sub_100002394(&qword_10002D020, &qword_10001F860) + 36);
    *v43 = v33;
    *(v43 + 8) = v36;
    *(v43 + 16) = v38;
    *(v43 + 24) = v40;
    *(v43 + 32) = v42;
    *(v43 + 40) = 0;
    LOBYTE(v33) = sub_10001CE24();
    sub_10001CAC4();
    v44 = v32 + *(v68 + 36);
    *v44 = v33;
    *(v44 + 8) = v45;
    *(v44 + 16) = v46;
    *(v44 + 24) = v47;
    *(v44 + 32) = v48;
    *(v44 + 40) = 0;
    (*(v19 + 16))(v22, v24, v18);
    v49 = v70;
    sub_10001D284();
    v50 = v69;
    v68 = v29;
    sub_100007B4C(v32, v69, &qword_10002CFF0, &qword_10001F830);
    v52 = v71;
    v51 = v72;
    v53 = *(v72 + 16);
    v54 = v73;
    v53(v71, v49, v73);
    v55 = v74;
    sub_100007B4C(v50, v74, &qword_10002CFF0, &qword_10001F830);
    v56 = sub_100002394(&qword_10002D028, &qword_10001F868);
    v53((v55 + *(v56 + 48)), v52, v54);
    v57 = *(v51 + 8);
    v57(v49, v54);
    v29 = v68;
    sub_100007AEC(v32, &qword_10002CFF0, &qword_10001F830);
    (*(v66 + 8))(v65, v64);
    v57(v52, v54);
    sub_100007AEC(v50, &qword_10002CFF0, &qword_10001F830);
    sub_10001BDC8(v55, v29);
    v30 = 0;
  }

  (*(v78 + 56))(v29, v30, 1, v79);
  v58 = v77;
  sub_100007B4C(v29, v77, &qword_10002D000, &qword_10001F840);
  v59 = v80;
  v61 = v75;
  v60 = v76;
  *v80 = v76;
  v59[1] = v61;
  v62 = sub_100002394(&qword_10002D008, &qword_10001F848);
  sub_100007B4C(v58, v59 + *(v62 + 48), &qword_10002D000, &qword_10001F840);
  sub_10001BD48(v60, v61);
  sub_100007AEC(v29, &qword_10002D000, &qword_10001F840);
  sub_100007AEC(v58, &qword_10002D000, &qword_10001F840);
  return sub_10001BD88(v60, v61);
}

uint64_t sub_10001A978@<X0>(void (*a1)(void *__return_ptr)@<X1>, uint64_t *a2@<X8>)
{
  a1(v5);
  if (v6)
  {
    sub_10001B900(v5, v6);
    v3 = sub_10001D2B4();
    result = sub_10001B8B4(v5);
  }

  else
  {
    result = sub_100007AEC(v5, &qword_10002CEE8, &qword_10001F778);
    v3 = 0;
  }

  *a2 = v3;
  return result;
}

void *sub_10001AA10@<X0>(void *a1@<X8>)
{
  result = [objc_opt_self() sharedInstance];
  if (result)
  {
    v3 = result;
    type metadata accessor for WidgetPassImagesProvider();
    result = swift_allocObject();
    result[5] = 0;
    result[6] = 0;
    result[4] = 0;
    *(result + 56) = -1;
    result[8] = v3;
    *(result + 1) = xmmword_10001E7E0;
    *a1 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10001AA94()
{
  sub_10001CAA4();
  swift_retain_n();
  sub_100002394(&qword_10002CE70, &qword_10001F730);
  sub_10001BE38(&qword_10002CE78, &type metadata accessor for FlightLiveActivityAttributes, &protocol conformance descriptor for FlightLiveActivityAttributes);
  sub_10001AB98();
  return sub_10001D424();
}

unint64_t sub_10001AB98()
{
  result = qword_10002CE80;
  if (!qword_10002CE80)
  {
    sub_1000023DC(&qword_10002CE70, &qword_10001F730);
    sub_1000023DC(&qword_10002CE88, &qword_10001F738);
    sub_1000023DC(&qword_10002CE90, &qword_10001F740);
    sub_10001ACA4();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002CE80);
  }

  return result;
}

unint64_t sub_10001ACA4()
{
  result = qword_10002CE98;
  if (!qword_10002CE98)
  {
    sub_1000023DC(&qword_10002CE90, &qword_10001F740);
    sub_10000266C(&qword_10002CEA0, &qword_10002CEA8, &qword_10001F748, &protocol conformance descriptor for VStack<A>);
    sub_10000266C(&qword_10002CEB0, &qword_10002CEB8, &unk_10001F750, &protocol conformance descriptor for _OverlayModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002CE98);
  }

  return result;
}

uint64_t sub_10001AD88()
{

  return _swift_deallocObject(v0, 32, 7);
}

unint64_t sub_10001AE60()
{
  result = qword_10002CED8;
  if (!qword_10002CED8)
  {
    sub_1000023DC(&qword_10002CEC8, &qword_10001F768);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002CED8);
  }

  return result;
}

uint64_t sub_10001AF1C@<X0>(char *a1@<X8>)
{
  v27 = a1;
  v1 = sub_100002394(&qword_10002D098, &unk_10001F8B8);
  v25 = *(v1 - 8);
  v2 = v25;
  v3 = __chkstk_darwin(v1);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v24 - v6;
  v8 = sub_100002394(&qword_10002C7E8, &qword_10001E540);
  v26 = *(v8 - 8);
  v9 = v26;
  v10 = __chkstk_darwin(v8);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v24 - v13;
  sub_100002394(&qword_10002C708, &qword_10001E4B8);
  sub_10001D464();
  sub_100002394(&qword_10002C710, &unk_10001E4C0);
  v24 = v7;
  sub_10001D434();
  v15 = *(v9 + 16);
  v15(v12, v14, v8);
  v16 = *(v2 + 16);
  v17 = v7;
  v18 = v1;
  v16(v5, v17, v1);
  v19 = v27;
  v15(v27, v12, v8);
  v20 = &v19[*(sub_100002394(&qword_10002D0A0, &qword_10001F8C8) + 48)];
  v16(v20, v5, v18);
  v21 = *(v25 + 8);
  v21(v24, v18);
  v22 = *(v26 + 8);
  v22(v14, v8);
  v21(v5, v18);
  return (v22)(v12, v8);
}

uint64_t sub_10001B1EC@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_100002394(&qword_10002CFC0, &qword_10001F800);
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v19 - v7;
  v9 = sub_100002394(&qword_10002CFB0, &qword_10001F7F8);
  v10 = __chkstk_darwin(v9 - 8);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v19 - v13;
  sub_100002394(&qword_10002CEF8, &qword_10001F788);
  sub_10001D464();
  sub_100002394(&qword_10002CF08, &qword_10001F798);
  sub_10001D434();
  sub_10001BCD8(v14, v12);
  v15 = *(v3 + 16);
  v15(v6, v8, v2);
  sub_10001BCD8(v12, a1);
  v16 = sub_100002394(&qword_10002CFC8, &qword_10001F808);
  v15((a1 + *(v16 + 48)), v6, v2);
  v17 = *(v3 + 8);
  v17(v8, v2);
  sub_100007AEC(v14, &qword_10002CFB0, &qword_10001F7F8);
  v17(v6, v2);
  return sub_100007AEC(v12, &qword_10002CFB0, &qword_10001F7F8);
}

uint64_t sub_10001B448@<X0>(char *a1@<X8>)
{
  v27 = a1;
  v1 = sub_100002394(&qword_10002CFD0, &qword_10001F810);
  v25 = *(v1 - 8);
  v2 = v25;
  v3 = __chkstk_darwin(v1);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v24 - v6;
  v8 = sub_100002394(&qword_10002CFA8, &qword_10001F7F0);
  v26 = *(v8 - 8);
  v9 = v26;
  v10 = __chkstk_darwin(v8);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v24 - v13;
  sub_100002394(&qword_10002CF00, &qword_10001F790);
  sub_10001D464();
  sub_100002394(&qword_10002CF10, &qword_10001F7A0);
  v24 = v7;
  sub_10001D434();
  v15 = *(v9 + 16);
  v15(v12, v14, v8);
  v16 = *(v2 + 16);
  v17 = v7;
  v18 = v1;
  v16(v5, v17, v1);
  v19 = v27;
  v15(v27, v12, v8);
  v20 = &v19[*(sub_100002394(&qword_10002CFD8, &qword_10001F818) + 48)];
  v16(v20, v5, v18);
  v21 = *(v25 + 8);
  v21(v24, v18);
  v22 = *(v26 + 8);
  v22(v14, v8);
  v21(v5, v18);
  return (v22)(v12, v8);
}

double sub_10001B718()
{
  v0 = sub_10001D2C4();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10001D1E4();
  if (v7)
  {
    sub_10001B89C(&v6, v8);
    sub_10001B89C(v8, &v6);
    sub_100002394(&qword_10002CEF0, &qword_10001F780);
    sub_10001D144();
    if (swift_dynamicCast())
    {

      sub_10001B8B4(&v6);
      return 16.0;
    }

    else
    {
      if (swift_dynamicCast())
      {
        (*(v1 + 8))(v3, v0);
      }

      sub_10001B8B4(&v6);
      return 10.0;
    }
  }

  else
  {
    sub_100007AEC(&v6, &qword_10002CEE8, &qword_10001F778);
    return 0.0;
  }
}

uint64_t sub_10001B89C(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_10001B8B4(void *a1)
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

void *sub_10001B900(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_10001B94C()
{
  result = qword_10002CF30;
  if (!qword_10002CF30)
  {
    sub_1000023DC(&qword_10002CF38, &qword_10001F7B8);
    sub_10001BE38(&qword_10002CF40, &type metadata accessor for FlightWidgetHeaderView, &protocol conformance descriptor for FlightWidgetHeaderView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002CF30);
  }

  return result;
}

unint64_t sub_10001BA10()
{
  result = qword_10002CF50;
  if (!qword_10002CF50)
  {
    sub_1000023DC(&qword_10002CF48, &qword_10001F7C0);
    sub_10001BAC0(&qword_10002CF58, &qword_10002CF60, &qword_10001F7C8, sub_10001BB44);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002CF50);
  }

  return result;
}

uint64_t sub_10001BAC0(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_1000023DC(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_10001BB44()
{
  result = qword_10002CF68;
  if (!qword_10002CF68)
  {
    sub_1000023DC(&qword_10002CF70, &qword_10001F7D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002CF68);
  }

  return result;
}

unint64_t sub_10001BBD0()
{
  result = qword_10002CF88;
  if (!qword_10002CF88)
  {
    sub_1000023DC(&qword_10002CF90, &qword_10001F7E0);
    sub_10000266C(&qword_10002CF98, &qword_10002CFA0, &qword_10001F7E8, &protocol conformance descriptor for VStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002CF88);
  }

  return result;
}

uint64_t sub_10001BCD8(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002394(&qword_10002CFB0, &qword_10001F7F8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10001BD48(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_10001BD88(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_10001BDC8(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002394(&qword_10002CFE8, &qword_10001F828);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10001BE38(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10001BEC4()
{
  v0 = sub_10001C914();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v15 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100002394(&qword_10002D0B8, &unk_10001F8E0);
  __chkstk_darwin(v4 - 8);
  v6 = v15 - v5;
  sub_10001C904();
  sub_10001C8F4();
  (*(v1 + 8))(v3, v0);
  v7 = sub_10001C8E4();
  v8 = *(v7 - 8);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    result = sub_10001C0C8(v6);
    v10 = 0;
  }

  else
  {
    v11 = sub_10001C8D4();
    v13 = v12;
    (*(v8 + 8))(v6, v7);
    v15[2] = v11;
    v15[3] = v13;
    v15[0] = 21333;
    v15[1] = 0xE200000000000000;
    sub_1000034E8();
    v14 = sub_10001D584();

    v10 = v14 == 0;
  }

  byte_10002D1D8 = v10;
  return result;
}

uint64_t sub_10001C0C8(uint64_t a1)
{
  v2 = sub_100002394(&qword_10002D0B8, &unk_10001F8E0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10001C16C(int a1, int a2, int a3, int a4)
{
  if (qword_10002EA18 == -1)
  {
    if (qword_10002EA20)
    {
      return _availability_version_check();
    }
  }

  else
  {
    v5 = a4;
    v6 = a3;
    v7 = a2;
    sub_10001C634();
    a2 = v7;
    a3 = v6;
    a4 = v5;
    if (qword_10002EA20)
    {
      return _availability_version_check();
    }
  }

  if (qword_10002EA10 != -1)
  {
    v9 = a4;
    v10 = a3;
    v11 = a2;
    sub_10001C64C();
    a3 = v10;
    a4 = v9;
    v8 = dword_10002EA00 < v11;
    if (dword_10002EA00 > v11)
    {
      return 1;
    }

LABEL_7:
    if (!v8)
    {
      if (dword_10002EA04 > a3)
      {
        return 1;
      }

      if (dword_10002EA04 >= a3)
      {
        return dword_10002EA08 >= a4;
      }
    }

    return 0;
  }

  v8 = dword_10002EA00 < a2;
  if (dword_10002EA00 <= a2)
  {
    goto LABEL_7;
  }

  return 1;
}

uint64_t sub_10001C300(uint64_t result)
{
  v1 = qword_10002EA20;
  if (qword_10002EA20)
  {
    v2 = result == 0;
  }

  else
  {
    v2 = 0;
  }

  if (!v2)
  {
    if (&__availability_version_check)
    {
      v1 = &__availability_version_check;
      qword_10002EA20 = &__availability_version_check;
    }

    if (v1)
    {
      v3 = result == 0;
    }

    else
    {
      v3 = 0;
    }

    if (!v3)
    {
      result = dlsym(0xFFFFFFFFFFFFFFFELL, "kCFAllocatorNull");
      if (result)
      {
        v4 = *result;
        result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFDataCreateWithBytesNoCopy");
        if (result)
        {
          v5 = result;
          v6 = dlsym(0xFFFFFFFFFFFFFFFELL, "CFPropertyListCreateWithData");
          result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFPropertyListCreateFromXMLData");
          if (v6 | result)
          {
            v7 = result;
            result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringCreateWithCStringNoCopy");
            if (result)
            {
              v8 = result;
              result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFDictionaryGetValue");
              if (result)
              {
                v9 = result;
                result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFGetTypeID");
                if (result)
                {
                  v10 = result;
                  result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringGetTypeID");
                  if (result)
                  {
                    v11 = result;
                    result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringGetCString");
                    v27 = result;
                    if (result)
                    {
                      result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFRelease");
                      if (result)
                      {
                        v12 = result;
                        result = fopen("/System/Library/CoreServices/SystemVersion.plist", "r");
                        if (result)
                        {
                          v13 = result;
                          v26 = v12;
                          fseek(result, 0, 2);
                          v14 = ftell(v13);
                          if (v14 < 0)
                          {
                            v16 = 0;
                          }

                          else
                          {
                            v15 = v14;
                            rewind(v13);
                            v16 = malloc(v15);
                            if (v16)
                            {
                              v25 = v16;
                              if (fread(v16, 1uLL, v15, v13) == v15 && (v17 = v5(0, v25, v15, v4)) != 0)
                              {
                                v18 = v17;
                                if (v6)
                                {
                                  v19 = (v6)(0, v17, 0, 0, 0);
                                }

                                else
                                {
                                  v19 = v7(0, v17, 0, 0);
                                }

                                v20 = v19;
                                if (v19)
                                {
                                  v21 = v8(0, "ProductVersion", 1536, v4);
                                  if (v21)
                                  {
                                    v22 = v21;
                                    v23 = v9(v20, v21);
                                    (v26)(v22);
                                    if (v23)
                                    {
                                      v24 = v10(v23);
                                      if (v24 == v11())
                                      {
                                        if (v27(v23, v28, 32, 134217984))
                                        {
                                          sscanf(v28, "%d.%d.%d", &dword_10002EA00, &dword_10002EA04, &dword_10002EA08);
                                        }
                                      }
                                    }
                                  }

                                  (v26)(v20);
                                }

                                (v26)(v18);
                                v16 = v25;
                              }

                              else
                              {
                                v16 = v25;
                              }
                            }
                          }

                          free(v16);
                          return fclose(v13);
                        }
                      }
                    }
                  }
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