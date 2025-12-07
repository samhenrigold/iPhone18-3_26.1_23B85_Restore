uint64_t sub_100208E78@<X0>(uint64_t a2@<X8>)
{
  v4 = sub_10079C8F4();
  v23 = 0;
  sub_1002099DC(v2, &v18);
  v25 = v19;
  v26 = v20;
  v27[0] = v21[0];
  *(v27 + 9) = *(v21 + 9);
  v24 = v18;
  v28[2] = v20;
  v29[0] = v21[0];
  *(v29 + 9) = *(v21 + 9);
  v28[0] = v18;
  v28[1] = v19;
  sub_1000077D8(&v24, v17, &qword_100AD55C8, &qword_100810338);
  sub_100007840(v28, &qword_100AD55C8, &qword_100810338);
  *&v22[23] = v25;
  *&v22[39] = v26;
  *&v22[55] = v27[0];
  *&v22[64] = *(v27 + 9);
  *&v22[7] = v24;
  v5 = v2[7];
  v6 = *v2;
  if (*v2)
  {
    v7 = v23;
    v8 = v2[6];
    swift_getKeyPath();
    swift_getKeyPath();

    v9 = v6;
    sub_10079B9A4(&v18);

    v10 = v18;
    KeyPath = swift_getKeyPath();
    sub_10020724C();
    if (sub_1007A2BB4())
    {
      v12 = sub_10079D4B4();
    }

    else
    {
      v12 = sub_10079D354();
    }

    v13 = v12;
    result = swift_getKeyPath();
    v15 = *v22;
    *(a2 + 33) = *&v22[16];
    v16 = *&v22[48];
    *(a2 + 49) = *&v22[32];
    *(a2 + 65) = v16;
    *(a2 + 81) = *&v22[64];
    *a2 = v4;
    *(a2 + 8) = 0;
    *(a2 + 16) = v7;
    *(a2 + 17) = v15;
    *(a2 + 104) = 0;
    *(a2 + 112) = v8;
    *(a2 + 120) = v5;
    *(a2 + 128) = KeyPath;
    *(a2 + 136) = v10;
    *(a2 + 144) = result;
    *(a2 + 152) = v13;
  }

  else
  {
    type metadata accessor for ChromeStyle(0);
    sub_10020B278(&qword_100ADB6A0, type metadata accessor for ChromeStyle, &protocol conformance descriptor for ChromeStyle);

    result = sub_10079C474();
    __break(1u);
  }

  return result;
}

uint64_t sub_1002090BC(char a1)
{
  v3 = sub_100796CF4();
  v46 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = &v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v42 - v7;
  v9 = sub_1007A21D4();
  v44 = *(v9 - 8);
  v45 = v9;
  __chkstk_darwin(v9);
  v11 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v42 - v13;
  v15 = sub_10079C824();
  __chkstk_darwin(v15);
  v19 = &v42 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = *(v1 + 40);
  v20 = *(v1 + 32);
  v48 = v20;
  if (v49 == 1)
  {
    if (v20)
    {
      return 0;
    }
  }

  else
  {
    v42 = v17;
    v43 = v16;

    v22 = a1;
    v23 = v14;
    v24 = v11;
    v25 = v8;
    v26 = v5;
    v27 = v3;
    v28 = sub_1007A29C4();
    v29 = sub_10079D244();
    v30 = v28;
    v3 = v27;
    v5 = v26;
    v8 = v25;
    v11 = v24;
    v14 = v23;
    a1 = v22;
    sub_10079AB44(v30, &_mh_execute_header, v29, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, _swiftEmptyArrayStorage);

    sub_10079C814();
    swift_getAtKeyPath();
    sub_100007840(&v48, &qword_100AD55B8, &qword_100810328);
    (*(v42 + 8))(v19, v43);
    if (v47)
    {
      return 0;
    }
  }

  v31 = v44;
  v32 = (v44 + 16);
  v33 = v46;
  v34 = (v46 + 16);
  sub_1007A2154();
  sub_100796C94();
  if (a1)
  {
    v35 = v45;
    (*v32)(v11, v14, v45);
    type metadata accessor for BundleFinder();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v37 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
    (*v34)(v5, v8, v3);
    v38 = sub_1007A22D4(v11, 0, 0, v37, v5, "Accessibility string for a button that returns the user to a previously visited page that comes earlier in the history, similar to 'Go back' and 'Go forward' buttons in a web browser", 182, 2);
  }

  else
  {
    v35 = v45;
    (*v32)(v11, v14, v45);
    type metadata accessor for BundleFinder();
    v39 = swift_getObjCClassFromMetadata();
    v40 = [objc_opt_self() bundleForClass:v39];
    (*v34)(v5, v8, v3);
    v38 = sub_1007A22D4(v11, 0, 0, v40, v5, "Accessibility string for a button that returns the user to a previously visited page that comes later in the history, similar to 'Go back' and 'Go forward' buttons in a web browser", 180, 2);
  }

  v41 = v38;
  (*(v33 + 8))(v8, v3);
  (*(v31 + 8))(v14, v35);
  return v41;
}

uint64_t sub_100209570(uint64_t a1, uint64_t a2)
{
  v40 = a1;
  v41 = a2;
  v3 = sub_100796CF4();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v35 - v8;
  v10 = sub_1007A21D4();
  v39 = *(v10 - 8);
  __chkstk_darwin(v10);
  v37 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v38 = &v35 - v13;
  v14 = sub_10079C824();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v35 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = *(v2 + 40);
  v18 = *(v2 + 32);
  v43 = v18;
  if (v44 == 1)
  {
    if (v18)
    {
      return 0;
    }
  }

  else
  {

    v20 = sub_1007A29C4();
    v21 = sub_10079D244();
    v36 = v6;
    v22 = v9;
    v23 = v10;
    v24 = v4;
    v25 = v3;
    v26 = v21;
    sub_10079AB44(v20, &_mh_execute_header, v21, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, _swiftEmptyArrayStorage);

    v3 = v25;
    v4 = v24;
    v10 = v23;
    v9 = v22;
    v6 = v36;
    sub_10079C814();
    swift_getAtKeyPath();
    sub_100007840(&v43, &qword_100AD55B8, &qword_100810328);
    (*(v15 + 8))(v17, v14);
    if (v42)
    {
      return 0;
    }
  }

  v27 = v38;
  sub_1007A2154();
  sub_100796C94();
  v28 = v39;
  v29 = v37;
  (*(v39 + 16))(v37, v27, v10);
  type metadata accessor for BundleFinder();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v31 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  (*(v4 + 16))(v6, v9, v3);
  sub_1007A22D4(v29, 0, 0, v31, v6, "Accessibility format string for a page number", 45, 2);
  (*(v4 + 8))(v9, v3);
  (*(v28 + 8))(v27, v10);
  sub_1001F1160(&unk_100AD5090, &unk_100815670);
  v32 = swift_allocObject();
  *(v32 + 16) = xmmword_10080B690;
  *(v32 + 56) = &type metadata for String;
  *(v32 + 64) = sub_10000E4C4();
  v33 = v41;
  *(v32 + 32) = v40;
  *(v32 + 40) = v33;

  v34 = sub_1007A2224();

  return v34;
}

__n128 sub_1002099DC@<Q0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  if (*(a1 + 64))
  {
    sub_10079DF24();
    sub_100206ECC();

    v2 = sub_10079D5D4();
    v4 = v3;
    v6 = v5 & 1;

    sub_1001F1894(v2, v4, v6);

    sub_1001F1894(32, 0xE100000000000000, 0);

    sub_1001F1894(v2, v4, v6);

    sub_10020B430(v2, v4, v6);

    sub_10020B430(32, 0xE100000000000000, 0);

    sub_1001F1160(&qword_100AD55D8, &qword_1008103E8);
    sub_1001F1160(&qword_100AD55E0, &qword_1008103F0);
    sub_100005920(&qword_100AD55E8, &qword_100AD55D8, &qword_1008103E8, &protocol conformance descriptor for TupleView<A>);
    sub_100005920(&qword_100AD55F0, &qword_100AD55E0, &qword_1008103F0, &protocol conformance descriptor for TupleView<A>);
    sub_10079CCA4();
    sub_10020B430(v2, v4, v6);
  }

  else
  {
    sub_100206ECC();

    v7 = sub_10079D5D4();
    v9 = v8;
    v11 = v10;
    sub_10079DF24();
    sub_1001F1894(v7, v9, v11 & 1);

    sub_1001F1894(v7, v9, v11 & 1);

    sub_1001F1894(32, 0xE100000000000000, 0);

    sub_10020B430(32, 0xE100000000000000, 0);

    sub_10020B430(v7, v9, v11 & 1);

    sub_1001F1160(&qword_100AD55D8, &qword_1008103E8);
    sub_1001F1160(&qword_100AD55E0, &qword_1008103F0);
    sub_100005920(&qword_100AD55E8, &qword_100AD55D8, &qword_1008103E8, &protocol conformance descriptor for TupleView<A>);
    sub_100005920(&qword_100AD55F0, &qword_100AD55E0, &qword_1008103F0, &protocol conformance descriptor for TupleView<A>);
    sub_10079CCA4();

    sub_10020B430(v7, v9, v11 & 1);
  }

  *v18 = *v17;
  *&v18[9] = *&v17[9];
  a2[2] = v16;
  a2[3] = *v18;
  *(a2 + 57) = *&v17[9];
  result = v15;
  *a2 = v14;
  a2[1] = v15;
  return result;
}

uint64_t sub_100209E4C()
{
  v1 = sub_1001F1160(&qword_100AD5348, &qword_100810150);
  __chkstk_darwin(v1);
  v3 = v11 - v2;
  v4 = sub_1001F1160(&qword_100AD5350, &qword_100810158);
  __chkstk_darwin(v4);
  v6 = v11 - v5;
  v7 = v0[5];
  v11[4] = v0[4];
  v11[5] = v7;
  v11[6] = v0[6];
  v8 = v0[1];
  v11[0] = *v0;
  v11[1] = v8;
  v9 = v0[3];
  v11[2] = v0[2];
  v11[3] = v9;
  sub_100207664(v11 - v5);
  sub_10002ADC0(v6, v3);
  swift_storeEnumTagMultiPayload();
  sub_1001F1160(&qword_100AD5358, &qword_100810160);
  sub_100209FD4();
  sub_10020A200();
  sub_10079CCA4();
  return sub_100007840(v6, &qword_100AD5350, &qword_100810158);
}

unint64_t sub_100209FD4()
{
  result = qword_100AD5360;
  if (!qword_100AD5360)
  {
    sub_1001F1234(&qword_100AD5358, &qword_100810160);
    sub_1001F1234(&qword_100AD5368, &qword_100810168);
    sub_10079CDF4();
    sub_10020A11C();
    sub_10020B278(&qword_100AD5388, &type metadata accessor for BorderlessButtonStyle, &protocol conformance descriptor for BorderlessButtonStyle);
    swift_getOpaqueTypeConformance2();
    sub_10020B278(&qword_100AF45F0, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD5360);
  }

  return result;
}

unint64_t sub_10020A11C()
{
  result = qword_100AD5370;
  if (!qword_100AD5370)
  {
    sub_1001F1234(&qword_100AD5368, &qword_100810168);
    sub_100005920(&qword_100AD5378, &qword_100AD5380, &qword_100810170, &protocol conformance descriptor for Button<A>);
    sub_100005920(&unk_100AD1D10, &qword_100ADB490, &unk_10080B730, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD5370);
  }

  return result;
}

unint64_t sub_10020A200()
{
  result = qword_100AD5390;
  if (!qword_100AD5390)
  {
    sub_1001F1234(&qword_100AD5350, &qword_100810158);
    sub_10020A2B8();
    sub_100005920(&qword_100AD53F8, &qword_100ADB9B0, &qword_10081A210, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD5390);
  }

  return result;
}

unint64_t sub_10020A2B8()
{
  result = qword_100AD5398;
  if (!qword_100AD5398)
  {
    sub_1001F1234(&qword_100AD53A0, &qword_100810178);
    sub_1001F1234(&qword_100AD53A8, &qword_100810180);
    sub_1001F1234(&qword_100AD53B0, &qword_1008268D0);
    sub_10020A410();
    sub_100005920(&qword_100AE40D0, &qword_100AD53B0, &qword_1008268D0, &protocol conformance descriptor for ClosedRange<A>);
    swift_getOpaqueTypeConformance2();
    sub_10020B278(&qword_100AF45F0, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD5398);
  }

  return result;
}

unint64_t sub_10020A410()
{
  result = qword_100AD53B8;
  if (!qword_100AD53B8)
  {
    sub_1001F1234(&qword_100AD53A8, &qword_100810180);
    sub_1001F1234(&qword_100AD53C0, &qword_100810188);
    sub_10079CCF4();
    sub_10020AB80(&qword_100AD53C8, &qword_100AD53C0, &qword_100810188, sub_10020A588);
    sub_10020B278(&qword_100AD53F0, &type metadata accessor for HighlightHoverEffect, &protocol conformance descriptor for HighlightHoverEffect);
    swift_getOpaqueTypeConformance2();
    sub_100005920(&unk_100AD1D10, &qword_100ADB490, &unk_10080B730, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD53B8);
  }

  return result;
}

unint64_t sub_10020A588()
{
  result = qword_100AD53D0;
  if (!qword_100AD53D0)
  {
    sub_1001F1234(&qword_100AD53D8, &qword_100810190);
    sub_100005920(&qword_100AD53E0, &qword_100AD53E8, &qword_100810198, &protocol conformance descriptor for Button<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD53D0);
  }

  return result;
}

unint64_t sub_10020A64C()
{
  result = qword_100AD5420;
  if (!qword_100AD5420)
  {
    sub_1001F1234(&qword_100AD5418, &qword_1008101B8);
    sub_10020A6D0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD5420);
  }

  return result;
}

unint64_t sub_10020A6D0()
{
  result = qword_100AD5428;
  if (!qword_100AD5428)
  {
    sub_1001F1234(&qword_100AD5430, &qword_1008101C0);
    sub_10020A75C();
    sub_10020AF38();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD5428);
  }

  return result;
}

unint64_t sub_10020A75C()
{
  result = qword_100AD5438;
  if (!qword_100AD5438)
  {
    sub_1001F1234(&qword_100AD5440, &qword_1008101C8);
    sub_10020AB80(&qword_100AD5448, &qword_100AD5450, &qword_1008101D0, sub_10020A840);
    sub_100005920(&qword_100AD5558, &qword_100AD5560, &qword_100810250, &protocol conformance descriptor for _ContentShapeModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD5438);
  }

  return result;
}

unint64_t sub_10020A870()
{
  result = qword_100AD5468;
  if (!qword_100AD5468)
  {
    sub_1001F1234(&qword_100AD5470, &qword_1008101E0);
    sub_10020A928();
    sub_100005920(&qword_100AD5548, &qword_100AD5550, &qword_100810248, &protocol conformance descriptor for _PreferenceActionModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD5468);
  }

  return result;
}

unint64_t sub_10020A928()
{
  result = qword_100AD5478;
  if (!qword_100AD5478)
  {
    sub_1001F1234(&qword_100AD5480, &qword_1008101E8);
    sub_10020A9E0();
    sub_100005920(&qword_100AD5538, &qword_100AD5540, &qword_100810240, &protocol conformance descriptor for _OverlayModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD5478);
  }

  return result;
}

unint64_t sub_10020A9E0()
{
  result = qword_100AD5488;
  if (!qword_100AD5488)
  {
    sub_1001F1234(&qword_100AD5490, &qword_1008101F0);
    sub_10020AA98();
    sub_100005920(&qword_100AD5530, &unk_100AE42C0, &qword_100815B20, &protocol conformance descriptor for _ClipEffect<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD5488);
  }

  return result;
}

unint64_t sub_10020AA98()
{
  result = qword_100AD5498;
  if (!qword_100AD5498)
  {
    sub_1001F1234(&qword_100AD54A0, &qword_1008101F8);
    sub_10020AB80(&qword_100AD54A8, &qword_100AD54B0, &qword_100810200, sub_10020AB50);
    sub_10020AEE4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD5498);
  }

  return result;
}

uint64_t sub_10020AB80(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_1001F1234(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_10020AC04()
{
  result = qword_100AD54C8;
  if (!qword_100AD54C8)
  {
    sub_1001F1234(&qword_100AD54D0, &qword_100810210);
    sub_10020AC90();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD54C8);
  }

  return result;
}

unint64_t sub_10020AC90()
{
  result = qword_100AD54D8;
  if (!qword_100AD54D8)
  {
    sub_1001F1234(&qword_100AD54E0, &qword_100810218);
    sub_10020AD48();
    sub_100005920(&unk_100AD1CF0, &qword_100ADBDA0, &unk_10080B720, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD54D8);
  }

  return result;
}

unint64_t sub_10020AD48()
{
  result = qword_100AD54E8;
  if (!qword_100AD54E8)
  {
    sub_1001F1234(&qword_100AD54F0, &qword_100810220);
    sub_10020AE00();
    sub_100005920(&unk_100AD1D10, &qword_100ADB490, &unk_10080B730, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD54E8);
  }

  return result;
}

unint64_t sub_10020AE00()
{
  result = qword_100AD54F8;
  if (!qword_100AD54F8)
  {
    sub_1001F1234(&qword_100AD5500, &qword_100810228);
    sub_100005920(&qword_100AD5508, &qword_100AD5510, &qword_100810230, &protocol conformance descriptor for HStack<A>);
    sub_100005920(&qword_100AD5518, &qword_100AD5520, &qword_100810238, &protocol conformance descriptor for _AnimationModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD54F8);
  }

  return result;
}

unint64_t sub_10020AEE4()
{
  result = qword_100AD5528;
  if (!qword_100AD5528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD5528);
  }

  return result;
}

unint64_t sub_10020AF38()
{
  result = qword_100AD5568;
  if (!qword_100AD5568)
  {
    sub_1001F1234(&qword_100AD5570, &qword_100810258);
    sub_10020AFF0();
    sub_100005920(&qword_100AD5558, &qword_100AD5560, &qword_100810250, &protocol conformance descriptor for _ContentShapeModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD5568);
  }

  return result;
}

unint64_t sub_10020AFF0()
{
  result = qword_100AD5578;
  if (!qword_100AD5578)
  {
    sub_1001F1234(&qword_100AD5580, &qword_100810260);
    sub_10020B07C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD5578);
  }

  return result;
}

unint64_t sub_10020B07C()
{
  result = qword_100AD5588;
  if (!qword_100AD5588)
  {
    sub_1001F1234(&qword_100AD5590, &qword_100810268);
    sub_10020B108();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD5588);
  }

  return result;
}

unint64_t sub_10020B108()
{
  result = qword_100AD5598;
  if (!qword_100AD5598)
  {
    sub_1001F1234(&qword_100AD55A0, &qword_100810270);
    sub_10020B1C0();
    sub_100005920(&qword_100AD5548, &qword_100AD5550, &qword_100810248, &protocol conformance descriptor for _PreferenceActionModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD5598);
  }

  return result;
}

unint64_t sub_10020B1C0()
{
  result = qword_100AD55A8;
  if (!qword_100AD55A8)
  {
    sub_1001F1234(&qword_100AD55B0, &qword_100810278);
    sub_10020AC04();
    sub_100005920(&qword_100AD5538, &qword_100AD5540, &qword_100810240, &protocol conformance descriptor for _OverlayModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD55A8);
  }

  return result;
}

uint64_t sub_10020B278(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10020B304()
{
  sub_10002AEBC(*(v0 + 32), *(v0 + 40));
  sub_10002AEBC(*(v0 + 48), *(v0 + 56));

  return swift_deallocObject();
}

uint64_t sub_10020B3C8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_1001F1160(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_10020B430(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

unint64_t sub_10020B450()
{
  result = qword_100AD55F8;
  if (!qword_100AD55F8)
  {
    sub_1001F1234(&qword_100AD5600, qword_100810408);
    sub_100209FD4();
    sub_10020A200();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD55F8);
  }

  return result;
}

unint64_t sub_10020B4E0()
{
  result = qword_100AD5608;
  if (!qword_100AD5608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD5608);
  }

  return result;
}

void sub_10020B548(unint64_t a1, uint64_t a2)
{
  if (a1 >> 62)
  {
    goto LABEL_14;
  }

  v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v5)
  {
    while (!__OFSUB__(v5--, 1))
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v6 = sub_1007A3784();
LABEL_5:
        v7 = v6;
        [v2 insertChildMenu:v6 atStartOfMenuForIdentifier:a2];

        if (!v5)
        {
          return;
        }
      }

      else
      {
        if ((v5 & 0x8000000000000000) != 0)
        {
          goto LABEL_12;
        }

        if (v5 < *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          v6 = *(a1 + 32 + 8 * v5);
          goto LABEL_5;
        }

LABEL_13:
        __break(1u);
LABEL_14:
        v5 = sub_1007A38D4();
        if (!v5)
        {
          return;
        }
      }
    }

    __break(1u);
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }
}

void sub_10020B62C(unint64_t a1, uint64_t a2)
{
  if (a1 >> 62)
  {
    v5 = sub_1007A38D4();
    if (!v5)
    {
      return;
    }
  }

  else
  {
    v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v5)
    {
      return;
    }
  }

  if (v5 < 1)
  {
    __break(1u);
  }

  else
  {
    for (i = 0; i != v5; ++i)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v7 = sub_1007A3784();
      }

      else
      {
        v7 = *(a1 + 8 * i + 32);
      }

      v8 = v7;
      [v2 insertChildMenu:v7 atEndOfMenuForIdentifier:a2];
    }
  }
}

void sub_10020B6F8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = [v2 menuForIdentifier:a2];
  if (v5)
  {
    v6 = v5;
    v7 = [v5 children];
    sub_10020B83C();
    sub_1007A25E4();

    sub_1004840A0(v8);
    isa = sub_1007A25D4().super.isa;

    v10 = [v6 menuByReplacingChildren:isa];

    [v3 replaceMenuForIdentifier:a2 withMenu:v10];
  }
}

unint64_t sub_10020B83C()
{
  result = qword_100AE8DB0;
  if (!qword_100AE8DB0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100AE8DB0);
  }

  return result;
}

uint64_t sub_10020B888()
{
  v0 = sub_10079ACE4();
  sub_100009A38(v0, qword_100AD5610);
  sub_100008B98(v0, qword_100AD5610);
  sub_10001389C();
  sub_1007A33B4();
  return sub_10079ACF4();
}

uint64_t sub_10020B920()
{
  v0 = sub_1001F1160(&qword_100AD5CC0, &qword_1008110A0);
  __chkstk_darwin(v0 - 8);
  v28 = v21 - v1;
  v2 = sub_1007967F4();
  v26 = *(v2 - 8);
  v27 = v2;
  __chkstk_darwin(v2);
  v4 = (v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v25 = sub_100796CF4();
  v5 = *(v25 - 8);
  __chkstk_darwin(v25);
  v22 = v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = v21 - v8;
  v10 = sub_1007A21D4();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = v21 - v15;
  v17 = sub_100796814();
  v23 = *(v17 - 8);
  v24 = v17;
  __chkstk_darwin(v17);
  v18 = sub_100796314();
  sub_100009A38(v18, qword_100B22E20);
  v21[1] = sub_100008B98(v18, qword_100B22E20);
  sub_1007A2154();
  sub_100796C94();
  (*(v11 + 16))(v13, v16, v10);
  v19 = v25;
  (*(v5 + 16))(v22, v9, v25);
  *v4 = type metadata accessor for BundleFinder();
  (*(v26 + 104))(v4, enum case for LocalizedStringResource.BundleDescription.forClass(_:), v27);
  sub_100796834();
  (*(v5 + 8))(v9, v19);
  (*(v11 + 8))(v16, v10);
  (*(v23 + 56))(v28, 1, 1, v24);
  return sub_100796304();
}

uint64_t sub_10020BD34()
{
  v0 = sub_1001F1160(&qword_100AD5D10, &qword_1008110F0);
  __chkstk_darwin(v0 - 8);
  v59 = &v36 - v1;
  v2 = sub_1001F1160(&qword_100AD5CC0, &qword_1008110A0);
  __chkstk_darwin(v2 - 8);
  v56 = &v36 - v3;
  v58 = sub_1007967F4();
  v63 = *(v58 - 8);
  __chkstk_darwin(v58);
  v52 = (&v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v54 = sub_100796CF4();
  v62 = *(v54 - 8);
  __chkstk_darwin(v54);
  v53 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v36 - v7;
  v9 = sub_1007A21D4();
  v60 = *(v9 - 8);
  v10 = v60;
  __chkstk_darwin(v9);
  v12 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v36 - v14;
  v57 = sub_100796814();
  v61 = *(v57 - 8);
  __chkstk_darwin(v57);
  v50 = &v36 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1001F1160(&qword_100AD5898, qword_1008111B0);
  v17 = sub_1001F1160(&qword_100AD3B80, &qword_10080CD20);
  v55 = v17;
  v18 = *(v17 - 8);
  v48 = *(v18 + 72);
  v19 = (*(v18 + 80) + 32) & ~*(v18 + 80);
  v20 = swift_allocObject();
  v49 = v20;
  *(v20 + 16) = xmmword_10080EFF0;
  v51 = v20 + v19;
  v45 = *(v17 + 48);
  *(v20 + v19) = 0;
  sub_1007A2154();
  sub_100796C94();
  v47 = *(v10 + 16);
  v36 = v12;
  v21 = v9;
  v47(v12, v15, v9);
  v22 = v62;
  v46 = *(v62 + 16);
  v23 = v54;
  v46(v53, v8, v54);
  v44 = type metadata accessor for BundleFinder();
  v24 = v52;
  *v52 = v44;
  v42 = enum case for LocalizedStringResource.BundleDescription.forClass(_:);
  v25 = *(v63 + 104);
  v63 += 104;
  v43 = v25;
  v25(v24);
  sub_100796834();
  v26 = *(v22 + 8);
  v62 = v22 + 8;
  v41 = v26;
  v26(v8, v23);
  v27 = *(v60 + 8);
  v60 += 8;
  v40 = v27;
  v27(v15, v21);
  v28 = *(v61 + 56);
  v61 += 56;
  v39 = v28;
  v28(v56, 1, 1, v57);
  v29 = sub_100796104();
  v30 = *(v29 - 8);
  v37 = *(v30 + 56);
  v38 = v30 + 56;
  v37(v59, 1, 1, v29);
  v31 = v51;
  sub_100796124();
  v45 = (v31 + v48);
  v48 = *(v55 + 48);
  *v45 = 1;
  sub_1007A2154();
  sub_100796C94();
  v47(v36, v15, v21);
  v32 = v54;
  v46(v53, v8, v54);
  v33 = v52;
  *v52 = v44;
  v43(v33, v42, v58);
  sub_100796834();
  v41(v8, v32);
  v40(v15, v21);
  v39(v56, 1, 1, v57);
  v37(v59, 1, 1, v29);
  sub_100796124();
  v34 = sub_1001ECD40(v49);
  swift_setDeallocating();
  swift_arrayDestroy();
  result = swift_deallocClassInstance();
  qword_100B22E38 = v34;
  return result;
}

uint64_t sub_10020C4F8(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x6369666963657073;
  }

  else
  {
    v3 = 0x6563655274736F6DLL;
  }

  if (v2)
  {
    v4 = 0xEA0000000000746ELL;
  }

  else
  {
    v4 = 0xE800000000000000;
  }

  if (*a2)
  {
    v5 = 0x6369666963657073;
  }

  else
  {
    v5 = 0x6563655274736F6DLL;
  }

  if (*a2)
  {
    v6 = 0xE800000000000000;
  }

  else
  {
    v6 = 0xEA0000000000746ELL;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1007A3AB4();
  }

  return v8 & 1;
}

unint64_t sub_10020C5A8()
{
  result = qword_100AD5628;
  if (!qword_100AD5628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD5628);
  }

  return result;
}

Swift::Int sub_10020C5FC()
{
  sub_1007A3C04();
  _s5Books22ReportIssueTypingEventV4hash4intoys6HasherVz_tF_0();

  return sub_1007A3C44();
}

uint64_t sub_10020C684(uint64_t a1)
{
  _s5Books22ReportIssueTypingEventV4hash4intoys6HasherVz_tF_0();
}

Swift::Int sub_10020C6F8(uint64_t a1)
{
  sub_1007A3C04();
  _s5Books22ReportIssueTypingEventV4hash4intoys6HasherVz_tF_0();

  return sub_1007A3C44();
}

void sub_10020C788(uint64_t *a1@<X8>)
{
  v2 = 0x6563655274736F6DLL;
  if (*v1)
  {
    v2 = 0x6369666963657073;
  }

  v3 = 0xEA0000000000746ELL;
  if (*v1)
  {
    v3 = 0xE800000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

unint64_t sub_10020C7D0()
{
  result = qword_100AD5630;
  if (!qword_100AD5630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD5630);
  }

  return result;
}

unint64_t sub_10020C828()
{
  result = qword_100AD5638;
  if (!qword_100AD5638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD5638);
  }

  return result;
}

unint64_t sub_10020C880()
{
  result = qword_100AD5640;
  if (!qword_100AD5640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD5640);
  }

  return result;
}

unint64_t sub_10020C8D8()
{
  result = qword_100AD5648;
  if (!qword_100AD5648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD5648);
  }

  return result;
}

unint64_t sub_10020C92C()
{
  result = qword_100AD5650;
  if (!qword_100AD5650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD5650);
  }

  return result;
}

unint64_t sub_10020C980()
{
  result = qword_100AD5658;
  if (!qword_100AD5658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD5658);
  }

  return result;
}

unint64_t sub_10020C9D8()
{
  result = qword_100AD5660;
  if (!qword_100AD5660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD5660);
  }

  return result;
}

unint64_t sub_10020CA7C()
{
  result = qword_100AD5668;
  if (!qword_100AD5668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD5668);
  }

  return result;
}

uint64_t sub_10020CAD0(uint64_t a1)
{
  v2 = sub_10020CA7C();

  return static AppEnum.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_10020CB20()
{
  result = qword_100AD5670;
  if (!qword_100AD5670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD5670);
  }

  return result;
}

unint64_t sub_10020CB78()
{
  result = qword_100AD5678;
  if (!qword_100AD5678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD5678);
  }

  return result;
}

unint64_t sub_10020CBD0()
{
  result = qword_100AD5680;
  if (!qword_100AD5680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD5680);
  }

  return result;
}

uint64_t sub_10020CC48(uint64_t a1)
{
  v2 = sub_10020C9D8();

  return CaseDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_10020CCEC()
{
  result = qword_100AD5698;
  if (!qword_100AD5698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD5698);
  }

  return result;
}

unint64_t sub_10020CD44()
{
  result = qword_100AD56A0;
  if (!qword_100AD56A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD56A0);
  }

  return result;
}

uint64_t sub_10020CDD0()
{
  v0 = sub_1007967F4();
  v25 = *(v0 - 8);
  v26 = v0;
  __chkstk_darwin(v0);
  v2 = (&v21 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0));
  v3 = sub_100796814();
  v27 = *(v3 - 8);
  __chkstk_darwin(v3);
  v24 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_100796CF4();
  v5 = *(v23 - 8);
  __chkstk_darwin(v23);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v21 - v9;
  v11 = sub_1007A21D4();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v21 - v16;
  v22 = v3;
  sub_100009A38(v3, qword_100B22E40);
  v21 = sub_100008B98(v3, qword_100B22E40);
  sub_1007A2154();
  sub_100796C94();
  (*(v12 + 16))(v14, v17, v11);
  v18 = v23;
  (*(v5 + 16))(v7, v10, v23);
  *v2 = type metadata accessor for BundleFinder();
  (*(v25 + 104))(v2, enum case for LocalizedStringResource.BundleDescription.forClass(_:), v26);
  v19 = v24;
  sub_100796834();
  (*(v5 + 8))(v10, v18);
  (*(v12 + 8))(v17, v11);
  return (*(v27 + 32))(v21, v19, v22);
}

uint64_t sub_10020D198@<X0>(uint64_t a1@<X8>)
{
  v34 = a1;
  v1 = sub_1001F1160(&qword_100AD5848, &qword_100811150);
  v2 = *(v1 - 8);
  v32 = v1;
  v33 = v2;
  __chkstk_darwin(v1);
  v30 = v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v31 = v25 - v5;
  v6 = sub_1001F1160(&qword_100AD5850, &qword_100811158);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v28 = v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = v25 - v10;
  __chkstk_darwin(v12);
  v29 = v25 - v13;
  v38 = 0;
  v35 = sub_1001F1160(&qword_100AD5858, &qword_100811160);
  v25[3] = sub_100214EF0();
  v14 = sub_10020C980();
  v25[2] = sub_100005920(&qword_100AD5860, &qword_100AD5858, &qword_100811160, &protocol conformance descriptor for IntentParameterSummary<A>);
  sub_100796394();
  v25[1] = sub_100005920(&qword_100AD5868, &qword_100AD5850, &qword_100811158, &protocol conformance descriptor for ParameterSummaryCaseCondition<A, B, C>);
  sub_100796354();
  v36 = *(v7 + 8);
  v26 = v11;
  v36(v11, v6);
  v27 = v7 + 8;
  v37 = 1;
  v15 = v28;
  v25[0] = v14;
  sub_100796394();
  sub_100796354();
  v36(v15, v6);
  v16 = v30;
  sub_1007963D4();
  sub_100005920(&qword_100AD5870, &qword_100AD5848, &qword_100811150, &protocol conformance descriptor for ParameterSummaryDefaultCaseCondition<A, B, C>);
  v17 = v31;
  v18 = v16;
  v19 = v32;
  sub_100796354();
  v20 = *(v33 + 8);
  v20(v18, v19);
  v21 = v29;
  v22 = v26;
  sub_100796344();
  v20(v17, v19);
  v23 = v36;
  v36(v22, v6);
  return v23(v21, v6);
}

uint64_t sub_10020D664@<X0>(uint64_t a1@<X8>)
{
  v12[1] = a1;
  v1 = sub_1001F1160(&qword_100AD5878, &qword_100811168);
  __chkstk_darwin(v1 - 8);
  v2 = sub_1001F1160(&qword_100AD5880, &qword_100811170);
  __chkstk_darwin(v2);
  v3 = sub_1001F1160(&qword_100AD5858, &qword_100811160);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = v12 - v8;
  sub_100214EF0();
  sub_1007961D4();
  v13._countAndFlagsBits = 0x206E65704FLL;
  v13._object = 0xE500000000000000;
  sub_1007961C4(v13);
  swift_getKeyPath();
  sub_1001F1160(&qword_100AD5888, &qword_100811178);
  sub_1007961B4();

  v14._countAndFlagsBits = 32;
  v14._object = 0xE100000000000000;
  sub_1007961C4(v14);
  swift_getKeyPath();
  sub_1001F1160(&qword_100AD5890, &qword_1008111A8);
  sub_1007961B4();

  v15._countAndFlagsBits = 0;
  v15._object = 0xE000000000000000;
  sub_1007961C4(v15);
  sub_1007961F4();
  sub_1007961A4();
  sub_100005920(&qword_100AD5860, &qword_100AD5858, &qword_100811160, &protocol conformance descriptor for IntentParameterSummary<A>);
  sub_100796294();
  v10 = *(v4 + 8);
  v10(v6, v3);
  sub_100796284();
  return (v10)(v9, v3);
}

uint64_t sub_10020D998@<X0>(uint64_t a1@<X8>)
{
  v12[1] = a1;
  v1 = sub_1001F1160(&qword_100AD5878, &qword_100811168);
  __chkstk_darwin(v1 - 8);
  v2 = sub_1001F1160(&qword_100AD5880, &qword_100811170);
  __chkstk_darwin(v2);
  v3 = sub_1001F1160(&qword_100AD5858, &qword_100811160);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = v12 - v8;
  sub_100214EF0();
  sub_1007961D4();
  v13._countAndFlagsBits = 0x206E65704FLL;
  v13._object = 0xE500000000000000;
  sub_1007961C4(v13);
  swift_getKeyPath();
  sub_1001F1160(&qword_100AD5888, &qword_100811178);
  sub_1007961B4();

  v14._countAndFlagsBits = 0;
  v14._object = 0xE000000000000000;
  sub_1007961C4(v14);
  sub_1007961F4();
  sub_1007961A4();
  sub_100005920(&qword_100AD5860, &qword_100AD5858, &qword_100811160, &protocol conformance descriptor for IntentParameterSummary<A>);
  sub_100796294();
  v10 = *(v4 + 8);
  v10(v6, v3);
  sub_100796284();
  return (v10)(v9, v3);
}

uint64_t sub_10020DC80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[46] = a3;
  v4[47] = a4;
  v4[44] = a1;
  v4[45] = a2;
  sub_1001F1160(&qword_100AD5CB0, &unk_100811910);
  v4[48] = swift_task_alloc();
  v5 = sub_100795AD4();
  v4[49] = v5;
  v4[50] = *(v5 - 8);
  v4[51] = swift_task_alloc();
  sub_1007A26F4();
  v4[52] = sub_1007A26E4();
  v7 = sub_1007A2694();
  v4[53] = v7;
  v4[54] = v6;

  return _swift_task_switch(sub_10020DDB0, v7, v6);
}

uint64_t sub_10020DDB0()
{
  sub_100795DF4();
  if (*(v0 + 472))
  {
    sub_100795DF4();
    v1 = *(v0 + 120);
    if (v1)
    {
      *(v0 + 16) = *(v0 + 112);
      *(v0 + 24) = v1;
      v2 = *(v0 + 176);
      *(v0 + 64) = *(v0 + 160);
      *(v0 + 80) = v2;
      *(v0 + 96) = *(v0 + 192);
      v3 = *(v0 + 144);
      *(v0 + 32) = *(v0 + 128);
      *(v0 + 48) = v3;
      sub_100795A94();
      v4 = swift_task_alloc();
      *(v0 + 456) = v4;
      *v4 = v0;
      v4[1] = sub_10020E250;

      return sub_1004EF508(v0 + 16);
    }

    else
    {
      v7 = *(v0 + 408);
      v8 = *(v0 + 392);
      v9 = *(v0 + 400);
      v10 = *(v0 + 384);

      sub_100795E14();
      v11 = sub_100795CE4();
      (*(*(v11 - 8) + 56))(v10, 1, 1, v11);
      sub_100795E24();

      sub_100007840(v10, &qword_100AD5CB0, &unk_100811910);
      sub_100214F44();
      swift_allocError();
      (*(v9 + 16))(v12, v7, v8);
      swift_willThrow();
      (*(v9 + 8))(v7, v8);

      v13 = *(v0 + 8);

      return v13();
    }
  }

  else
  {
    sub_100795A94();
    v6 = swift_task_alloc();
    *(v0 + 440) = v6;
    *v6 = v0;
    v6[1] = sub_10020E058;

    return sub_1004EEC44();
  }
}

uint64_t sub_10020E058()
{
  v2 = *v1;
  *(*v1 + 448) = v0;

  if (v0)
  {
    v3 = *(v2 + 424);
    v4 = *(v2 + 432);
    v5 = sub_10020E460;
  }

  else
  {

    swift_unknownObjectRelease();
    *(v2 + 312) = *(v2 + 272);
    sub_100007840(v2 + 312, &qword_100AE6A50, &qword_10082AB30);
    *(v2 + 304) = *(v2 + 280);
    sub_100007840(v2 + 304, &qword_100AE6A50, &qword_10082AB30);
    v3 = *(v2 + 424);
    v4 = *(v2 + 432);
    v5 = sub_10020E1CC;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_10020E1CC()
{

  sub_100795D24();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10020E250()
{
  v2 = *v1;
  *(*v1 + 464) = v0;

  if (v0)
  {
    v3 = *(v2 + 424);
    v4 = *(v2 + 432);
    v5 = sub_10020E530;
  }

  else
  {

    swift_unknownObjectRelease();
    *(v2 + 344) = *(v2 + 232);
    sub_100007840(v2 + 344, &qword_100AE6A50, &qword_10082AB30);
    *(v2 + 336) = *(v2 + 240);
    sub_100007840(v2 + 336, &qword_100AE6A50, &qword_10082AB30);
    v3 = *(v2 + 424);
    v4 = *(v2 + 432);
    v5 = sub_10020E3C4;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_10020E3C4()
{

  sub_100007840(v0 + 112, &unk_100AE7F60, &qword_1008110C0);
  sub_100795D24();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10020E460()
{

  swift_unknownObjectRelease();
  *(v0 + 296) = *(v0 + 272);
  sub_100007840(v0 + 296, &qword_100AE6A50, &qword_10082AB30);
  *(v0 + 288) = *(v0 + 280);
  sub_100007840(v0 + 288, &qword_100AE6A50, &qword_10082AB30);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10020E530()
{

  swift_unknownObjectRelease();
  *(v0 + 328) = *(v0 + 232);
  sub_100007840(v0 + 328, &qword_100AE6A50, &qword_10082AB30);
  *(v0 + 320) = *(v0 + 240);
  sub_100007840(v0 + 320, &qword_100AE6A50, &qword_10082AB30);
  sub_100007840(v0 + 112, &unk_100AE7F60, &qword_1008110C0);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10020E650(uint64_t a1, uint64_t a2)
{
  KeyPath = swift_getKeyPath();
  v4 = sub_1001F1160(&qword_100AD5838, &qword_100811148);
  v5 = sub_100005920(&qword_100AD5840, &qword_100AD5838, &qword_100811148, &protocol conformance descriptor for ParameterSummaryTupleCaseCondition<A, B, C>);

  return ParameterSummarySwitchCondition.init(_:_:)(KeyPath, sub_10020D198, 0, v4, a2, v5);
}

uint64_t sub_10020E718(uint64_t a1)
{
  v4 = *v1;
  v5 = v1[1];
  v6 = v1[2];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10002812C;

  return sub_10020DC80(a1, v4, v5, v6);
}

uint64_t sub_10020E7CC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1002132B4();
  *a1 = result;
  a1[1] = v3;
  a1[2] = v4;
  return result;
}

uint64_t sub_10020E7F8(uint64_t a1)
{
  v2 = sub_100214EF0();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

unint64_t sub_10020E834()
{
  result = qword_100AD56A8;
  if (!qword_100AD56A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD56A8);
  }

  return result;
}

uint64_t sub_10020E888()
{
  sub_1001F1160(&qword_100AD57D0, &qword_100823520);
  sub_100795B74();
  sub_100795B64();
  result = sub_100795AA4();
  qword_100B22E58 = result;
  return result;
}

uint64_t sub_10020E8F8()
{
  v0 = sub_1001F1160(&qword_100AD5CC0, &qword_1008110A0);
  __chkstk_darwin(v0 - 8);
  v28 = v21 - v1;
  v2 = sub_1007967F4();
  v26 = *(v2 - 8);
  v27 = v2;
  __chkstk_darwin(v2);
  v4 = (v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v25 = sub_100796CF4();
  v5 = *(v25 - 8);
  __chkstk_darwin(v25);
  v22 = v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = v21 - v8;
  v10 = sub_1007A21D4();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = v21 - v15;
  v17 = sub_100796814();
  v23 = *(v17 - 8);
  v24 = v17;
  __chkstk_darwin(v17);
  v18 = sub_100796314();
  sub_100009A38(v18, qword_100B22E60);
  v21[1] = sub_100008B98(v18, qword_100B22E60);
  sub_1007A2154();
  sub_100796C94();
  (*(v11 + 16))(v13, v16, v10);
  v19 = v25;
  (*(v5 + 16))(v22, v9, v25);
  *v4 = type metadata accessor for BundleFinder();
  (*(v26 + 104))(v4, enum case for LocalizedStringResource.BundleDescription.forClass(_:), v27);
  sub_100796834();
  (*(v5 + 8))(v9, v19);
  (*(v11 + 8))(v16, v10);
  (*(v23 + 56))(v28, 1, 1, v24);
  return sub_100796304();
}

uint64_t sub_10020ED00@<X0>(uint64_t a1@<X8>)
{
  v19[1] = a1;
  v1 = sub_1001F1160(&qword_100AD5D10, &qword_1008110F0);
  __chkstk_darwin(v1 - 8);
  v19[0] = v19 - v2;
  v3 = sub_1001F1160(&qword_100AD5CC0, &qword_1008110A0);
  __chkstk_darwin(v3 - 8);
  v5 = v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = v19 - v7;
  v9 = sub_100796814();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = v19 - v14;
  sub_100795D54();
  if (!v20)
  {
  }

  sub_1007967E4();
  v16 = *(v10 + 56);
  v16(v8, 1, 1, v9);
  sub_100795D54();
  if (v20)
  {
    sub_1007967E4();
    sub_100007840(v8, &qword_100AD5CC0, &qword_1008110A0);
    v16(v5, 0, 1, v9);
    sub_10020B3C8(v5, v8, &qword_100AD5CC0, &qword_1008110A0);
  }

  (*(v10 + 16))(v12, v15, v9);
  sub_1000077D8(v8, v5, &qword_100AD5CC0, &qword_1008110A0);
  v17 = sub_100796104();
  (*(*(v17 - 8) + 56))(v19[0], 1, 1, v17);
  sub_100796124();
  sub_100007840(v8, &qword_100AD5CC0, &qword_1008110A0);
  return (*(v10 + 8))(v15, v9);
}

uint64_t sub_10020F034()
{
  v0 = sub_1001F1160(&qword_100AD5818, &qword_100811108);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v7 - v2;
  v4 = sub_1001F1160(&qword_100AD5820, &qword_100811110);
  __chkstk_darwin(v4);
  v5 = sub_1001F1160(&qword_100AD5810, &qword_100811100);
  sub_100009A38(v5, qword_100B22E78);
  sub_100008B98(v5, qword_100B22E78);
  sub_10020E834();
  sub_100796254();
  v8._object = 0x80000001008C3620;
  v8._countAndFlagsBits = 0xD000000000000011;
  sub_100796244(v8);
  (*(v1 + 104))(v3, enum case for EntityURLRepresentation.StringInterpolation.Token.id<A>(_:), v0);
  sub_100796234();
  (*(v1 + 8))(v3, v0);
  v9._countAndFlagsBits = 0;
  v9._object = 0xE000000000000000;
  sub_100796244(v9);
  return sub_100796264();
}

uint64_t sub_10020F230@<X0>(char a3@<W2>, uint64_t a4@<X8>)
{
  v6 = [objc_opt_self() defaultManager];
  v7 = sub_1007A2214();
  v8 = [v6 libraryAssetOnMainQueueWithAssetID:v7];

  if (v8)
  {
    v9 = [v8 storeID];
    if (v9)
    {
      v10 = v9;
      v11 = sub_1007A2254();
      v13 = v12;

      sub_10063D1E8(v11, v13, a3 & 1, a4);
    }
  }

  if (qword_100AD1248 != -1)
  {
    swift_once();
  }

  v15 = sub_10079ACE4();
  sub_100008B98(v15, qword_100AD5610);
  v16 = sub_10079ACC4();
  v17 = sub_1007A29A4();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&_mh_execute_header, v16, v17, "Failed fetching storeID", v18, 2u);
  }

  v19 = sub_1007969B4();
  v20 = *(*(v19 - 8) + 56);

  return v20(a4, 1, 1, v19);
}

unint64_t sub_10020F44C()
{
  result = qword_100AD56B0;
  if (!qword_100AD56B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD56B0);
  }

  return result;
}

uint64_t sub_10020F4A0@<X0>(uint64_t a1@<X8>)
{
  if (qword_100AD1278 != -1)
  {
    swift_once();
  }

  v2 = sub_1001F1160(&qword_100AD5810, &qword_100811100);
  v3 = sub_100008B98(v2, qword_100B22E78);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

unint64_t sub_10020F558()
{
  result = qword_100AD56B8;
  if (!qword_100AD56B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD56B8);
  }

  return result;
}

unint64_t sub_10020F5B0()
{
  result = qword_100AD56C0;
  if (!qword_100AD56C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD56C0);
  }

  return result;
}

unint64_t sub_10020F608()
{
  result = qword_100AD56C8;
  if (!qword_100AD56C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD56C8);
  }

  return result;
}

unint64_t sub_10020F65C()
{
  result = qword_100AD56D0;
  if (!qword_100AD56D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD56D0);
  }

  return result;
}

uint64_t sub_10020F6BC@<X0>(void *a1@<X8>)
{
  if (qword_100AD1268 != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  *a1 = qword_100B22E58;
}

uint64_t sub_10020F72C(uint64_t a1)
{
  sub_100214E9C();
  v2 = sub_100796204();
  v3 = *(v1 + 8);

  return v3(v2);
}

unint64_t sub_10020F79C()
{
  result = qword_100AD56D8;
  if (!qword_100AD56D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD56D8);
  }

  return result;
}

unint64_t sub_10020F7F0()
{
  result = qword_100AD56E0;
  if (!qword_100AD56E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD56E0);
  }

  return result;
}

unint64_t sub_10020F844()
{
  result = qword_100AD56E8;
  if (!qword_100AD56E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD56E8);
  }

  return result;
}

unint64_t sub_10020F89C()
{
  result = qword_100AD56F0;
  if (!qword_100AD56F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD56F0);
  }

  return result;
}

uint64_t sub_10020F978(uint64_t a1)
{
  v2 = sub_10020E834();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_10020F9C8()
{
  result = qword_100AD5708;
  if (!qword_100AD5708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD5708);
  }

  return result;
}

uint64_t sub_10020FA20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_10002812C;

  return InstanceDisplayRepresentable.displayRepresentation(with:)(a1, a2, a3, a4);
}

uint64_t sub_10020FAE4(uint64_t a1)
{
  v2 = sub_10020F89C();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

uint64_t sub_10020FB30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[9] = a1;
  v4[10] = a2;
  v5 = *v3;
  v4[11] = a3;
  v4[12] = v5;
  return _swift_task_switch(sub_10020FB58, 0, 0);
}

uint64_t sub_10020FB58()
{
  v1 = v0[11];
  sub_100795A94();
  v2 = swift_task_alloc();
  v0[13] = v2;
  *v2 = v0;
  v2[1] = sub_10020FC00;
  v3 = v0[10];

  return sub_1004F02A8(v3, v1);
}

uint64_t sub_10020FC00(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 72);
  v5 = *v1;

  swift_unknownObjectRelease();
  *(v3 + 64) = *(v3 + 40);
  sub_100007840(v3 + 64, &qword_100AE6A50, &qword_10082AB30);
  *(v3 + 56) = *(v3 + 48);
  sub_100007840(v3 + 56, &qword_100AE6A50, &qword_10082AB30);
  *v4 = a1;
  v6 = *(v5 + 8);

  return v6();
}

unint64_t sub_10020FDD8()
{
  result = qword_100AD5710;
  if (!qword_100AD5710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD5710);
  }

  return result;
}

unint64_t sub_10020FE30()
{
  result = qword_100AD5718;
  if (!qword_100AD5718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD5718);
  }

  return result;
}

uint64_t sub_10020FE84@<X0>(uint64_t *a1@<X8>)
{
  sub_1001F1160(&qword_100AD57D0, &qword_100823520);
  sub_100795B74();
  sub_100795B64();
  result = sub_100795AA4();
  *a1 = result;
  return result;
}

uint64_t sub_10020FEFC(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 72) = a1;
  *(v2 + 80) = v3;
  return _swift_task_switch(sub_10020FF20, 0, 0);
}

uint64_t sub_10020FF20()
{
  sub_100795A94();
  v1 = swift_task_alloc();
  *(v0 + 88) = v1;
  *v1 = v0;
  v1[1] = sub_10020FFC4;
  v2 = *(v0 + 72);

  return sub_1004EFC24(v2);
}

uint64_t sub_10020FFC4(uint64_t a1)
{
  v3 = *v1;
  v4 = *v1;

  swift_unknownObjectRelease();
  *(v3 + 64) = *(v3 + 40);
  sub_100007840(v3 + 64, &qword_100AE6A50, &qword_10082AB30);
  *(v3 + 56) = *(v3 + 48);
  sub_100007840(v3 + 56, &qword_100AE6A50, &qword_10082AB30);
  v5 = *(v4 + 8);

  return v5(a1);
}

uint64_t sub_10021017C(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 72) = a1;
  *(v2 + 80) = v3;
  return _swift_task_switch(sub_1002101A0, 0, 0);
}

uint64_t sub_1002101A0()
{
  sub_100795A94();
  v1 = swift_task_alloc();
  *(v0 + 88) = v1;
  *v1 = v0;
  v1[1] = sub_100210244;

  return sub_1004F02A8(0, 0);
}

uint64_t sub_100210244(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 72);
  v5 = *v1;

  swift_unknownObjectRelease();
  *(v3 + 64) = *(v3 + 40);
  sub_100007840(v3 + 64, &qword_100AE6A50, &qword_10082AB30);
  *(v3 + 56) = *(v3 + 48);
  sub_100007840(v3 + 56, &qword_100AE6A50, &qword_10082AB30);
  *v4 = a1;
  v6 = *(v5 + 8);

  return v6();
}

uint64_t sub_100210418(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1002104D8;

  return EntityQuery.displayRepresentations(for:requestedComponents:)(a1, a2, a3, a4);
}

uint64_t sub_1002104D8(uint64_t a1)
{
  v7 = *v2;

  v5 = *(v7 + 8);
  if (!v1)
  {
    v4 = a1;
  }

  return v5(v4);
}

unint64_t sub_1002105DC()
{
  result = qword_100AD5720;
  if (!qword_100AD5720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD5720);
  }

  return result;
}

unint64_t sub_100210634()
{
  result = qword_100AD5728;
  if (!qword_100AD5728)
  {
    sub_1001F1234(&qword_100AE7F90, qword_100810B60);
    sub_10020F844();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD5728);
  }

  return result;
}

uint64_t sub_1002106B8(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_10020F65C();
  *v5 = v2;
  v5[1] = sub_100009A34;

  return EntityQuery.results()(a1, a2, v6);
}

uint64_t sub_10021076C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_100009A34;

  return DynamicOptionsProvider.defaultResult()(a1, a2, a3);
}

uint64_t sub_100210820()
{
  v0 = sub_1001F1160(&qword_100AD5CC0, &qword_1008110A0);
  __chkstk_darwin(v0 - 8);
  v28 = v21 - v1;
  v2 = sub_1007967F4();
  v26 = *(v2 - 8);
  v27 = v2;
  __chkstk_darwin(v2);
  v4 = (v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v25 = sub_100796CF4();
  v5 = *(v25 - 8);
  __chkstk_darwin(v25);
  v22 = v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = v21 - v8;
  v10 = sub_1007A21D4();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = v21 - v15;
  v17 = sub_100796814();
  v23 = *(v17 - 8);
  v24 = v17;
  __chkstk_darwin(v17);
  v18 = sub_100796314();
  sub_100009A38(v18, qword_100B22E90);
  v21[1] = sub_100008B98(v18, qword_100B22E90);
  sub_1007A2154();
  sub_100796C94();
  (*(v11 + 16))(v13, v16, v10);
  v19 = v25;
  (*(v5 + 16))(v22, v9, v25);
  *v4 = type metadata accessor for BundleFinder();
  (*(v26 + 104))(v4, enum case for LocalizedStringResource.BundleDescription.forClass(_:), v27);
  sub_100796834();
  (*(v5 + 8))(v9, v19);
  (*(v11 + 8))(v16, v10);
  (*(v23 + 56))(v28, 1, 1, v24);
  return sub_100796304();
}

uint64_t sub_100210C38()
{
  v0 = sub_1001F1160(&qword_100AD5D10, &qword_1008110F0);
  __chkstk_darwin(v0 - 8);
  v59 = &v36 - v1;
  v2 = sub_1001F1160(&qword_100AD5CC0, &qword_1008110A0);
  __chkstk_darwin(v2 - 8);
  v56 = &v36 - v3;
  v58 = sub_1007967F4();
  v63 = *(v58 - 8);
  __chkstk_darwin(v58);
  v52 = (&v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v54 = sub_100796CF4();
  v62 = *(v54 - 8);
  __chkstk_darwin(v54);
  v53 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v36 - v7;
  v9 = sub_1007A21D4();
  v60 = *(v9 - 8);
  v10 = v60;
  __chkstk_darwin(v9);
  v12 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v36 - v14;
  v57 = sub_100796814();
  v61 = *(v57 - 8);
  __chkstk_darwin(v57);
  v50 = &v36 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1001F1160(&qword_100AD5800, &qword_1008110F8);
  v17 = sub_1001F1160(&qword_100AD3B70, &qword_10080CD10);
  v55 = v17;
  v18 = *(v17 - 8);
  v48 = *(v18 + 72);
  v19 = (*(v18 + 80) + 32) & ~*(v18 + 80);
  v20 = swift_allocObject();
  v49 = v20;
  *(v20 + 16) = xmmword_10080EFF0;
  v51 = v20 + v19;
  v45 = *(v17 + 48);
  *(v20 + v19) = 0;
  sub_1007A2154();
  sub_100796C94();
  v47 = *(v10 + 16);
  v36 = v12;
  v21 = v9;
  v47(v12, v15, v9);
  v22 = v62;
  v46 = *(v62 + 16);
  v23 = v54;
  v46(v53, v8, v54);
  v44 = type metadata accessor for BundleFinder();
  v24 = v52;
  *v52 = v44;
  v42 = enum case for LocalizedStringResource.BundleDescription.forClass(_:);
  v25 = *(v63 + 104);
  v63 += 104;
  v43 = v25;
  v25(v24);
  sub_100796834();
  v26 = *(v22 + 8);
  v62 = v22 + 8;
  v41 = v26;
  v26(v8, v23);
  v27 = *(v60 + 8);
  v60 += 8;
  v40 = v27;
  v27(v15, v21);
  v28 = *(v61 + 56);
  v61 += 56;
  v39 = v28;
  v28(v56, 1, 1, v57);
  v29 = sub_100796104();
  v30 = *(v29 - 8);
  v37 = *(v30 + 56);
  v38 = v30 + 56;
  v37(v59, 1, 1, v29);
  v31 = v51;
  sub_100796124();
  v45 = (v31 + v48);
  v48 = *(v55 + 48);
  *v45 = 1;
  sub_1007A2154();
  sub_100796C94();
  v47(v36, v15, v21);
  v32 = v54;
  v46(v53, v8, v54);
  v33 = v52;
  *v52 = v44;
  v43(v33, v42, v58);
  sub_100796834();
  v41(v8, v32);
  v40(v15, v21);
  v39(v56, 1, 1, v57);
  v37(v59, 1, 1, v29);
  sub_100796124();
  v34 = sub_1001ECF28(v49);
  swift_setDeallocating();
  swift_arrayDestroy();
  result = swift_deallocClassInstance();
  qword_100B22EA8 = v34;
  return result;
}

uint64_t sub_1002113D8(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 6710384;
  }

  else
  {
    v3 = 1802465122;
  }

  if (v2)
  {
    v4 = 0xE400000000000000;
  }

  else
  {
    v4 = 0xE300000000000000;
  }

  if (*a2)
  {
    v5 = 6710384;
  }

  else
  {
    v5 = 1802465122;
  }

  if (*a2)
  {
    v6 = 0xE300000000000000;
  }

  else
  {
    v6 = 0xE400000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1007A3AB4();
  }

  return v8 & 1;
}

unint64_t sub_100211474()
{
  result = qword_100AD5730;
  if (!qword_100AD5730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD5730);
  }

  return result;
}

Swift::Int sub_1002114C8()
{
  sub_1007A3C04();
  _s5Books22ReportIssueTypingEventV4hash4intoys6HasherVz_tF_0();

  return sub_1007A3C44();
}

uint64_t sub_10021153C(uint64_t a1)
{
  _s5Books22ReportIssueTypingEventV4hash4intoys6HasherVz_tF_0();
}

Swift::Int sub_10021159C(uint64_t a1)
{
  sub_1007A3C04();
  _s5Books22ReportIssueTypingEventV4hash4intoys6HasherVz_tF_0();

  return sub_1007A3C44();
}

uint64_t sub_100211618@<X0>(uint64_t *a1@<X0>, Swift::OpaquePointer a2@<X3>, char *a3@<X8>)
{
  v9._countAndFlagsBits = *a1;
  v4 = a1[1];
  v9._object = v4;
  v6 = sub_1007A3964(a2, v9);

  if (v6 == 1)
  {
    v8 = 1;
  }

  else
  {
    v8 = 2;
  }

  if (!v6)
  {
    v8 = 0;
  }

  *a3 = v8;
  return result;
}

void sub_100211674(uint64_t *a1@<X8>)
{
  v2 = 1802465122;
  if (*v1)
  {
    v2 = 6710384;
  }

  v3 = 0xE400000000000000;
  if (*v1)
  {
    v3 = 0xE300000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

unint64_t sub_1002116A8()
{
  result = qword_100AD5738;
  if (!qword_100AD5738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD5738);
  }

  return result;
}

unint64_t sub_100211700()
{
  result = qword_100AD5740;
  if (!qword_100AD5740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD5740);
  }

  return result;
}

unint64_t sub_100211758()
{
  result = qword_100AD5748;
  if (!qword_100AD5748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD5748);
  }

  return result;
}

unint64_t sub_1002117B0()
{
  result = qword_100AD5750;
  if (!qword_100AD5750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD5750);
  }

  return result;
}

unint64_t sub_100211804()
{
  result = qword_100AD5758;
  if (!qword_100AD5758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD5758);
  }

  return result;
}

unint64_t sub_100211858()
{
  result = qword_100AD5760;
  if (!qword_100AD5760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD5760);
  }

  return result;
}

unint64_t sub_1002118B0()
{
  result = qword_100AD5768;
  if (!qword_100AD5768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD5768);
  }

  return result;
}

uint64_t sub_10021193C@<X0>(void *a1@<X2>, uint64_t (*a2)(void)@<X3>, uint64_t a3@<X4>, uint64_t a5@<X8>)
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
  v9 = sub_100008B98(v7, a3);
  v10 = *(*(v8 - 8) + 16);

  return v10(a5, v9, v8);
}

unint64_t sub_100211A50()
{
  result = qword_100AE7F70;
  if (!qword_100AE7F70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE7F70);
  }

  return result;
}

uint64_t sub_100211AA4(uint64_t a1)
{
  v2 = sub_100211A50();

  return static AppEnum.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_100211AF4()
{
  result = qword_100AD5770;
  if (!qword_100AD5770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD5770);
  }

  return result;
}

unint64_t sub_100211B4C()
{
  result = qword_100AD5778;
  if (!qword_100AD5778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD5778);
  }

  return result;
}

unint64_t sub_100211BA4()
{
  result = qword_100AD5780;
  if (!qword_100AD5780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD5780);
  }

  return result;
}

uint64_t sub_100211C1C(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, uint64_t a5)
{
  if (*a3 == -1)
  {
  }

  else
  {
    swift_once();
  }
}

uint64_t sub_100211C80(uint64_t a1)
{
  v2 = sub_1002118B0();

  return CaseDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_100211D24()
{
  result = qword_100AD5798;
  if (!qword_100AD5798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD5798);
  }

  return result;
}

void sub_100211D78(uint64_t a1)
{
  _s5Books22ReportIssueTypingEventV4hash4intoys6HasherVz_tF_0();
  sub_100795D54();
  if (v1)
  {
    sub_1007A3C24(1u);
    _s5Books22ReportIssueTypingEventV4hash4intoys6HasherVz_tF_0();
  }

  else
  {
    sub_1007A3C24(0);
  }

  sub_100795D54();
  if (v1)
  {
    sub_1007A3C24(1u);
    _s5Books22ReportIssueTypingEventV4hash4intoys6HasherVz_tF_0();
  }

  else
  {
    sub_1007A3C24(0);
  }
}

Swift::Int sub_100211E54()
{
  sub_1007A3C04();
  sub_100211D78(v1);
  return sub_1007A3C44();
}

Swift::Int sub_100211E98(uint64_t a1)
{
  sub_1007A3C04();
  sub_100211D78(v2);
  return sub_1007A3C44();
}

uint64_t sub_100211ED4(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[3];
  v9[2] = a1[2];
  v9[3] = v2;
  v3 = a1[5];
  v9[4] = a1[4];
  v9[5] = v3;
  v4 = a1[1];
  v9[0] = *a1;
  v9[1] = v4;
  v5 = a2[3];
  v10[2] = a2[2];
  v10[3] = v5;
  v6 = a2[5];
  v10[4] = a2[4];
  v10[5] = v6;
  v7 = a2[1];
  v10[0] = *a2;
  v10[1] = v7;
  return sub_100213128(v9, v10) & 1;
}

uint64_t sub_100211F4C@<X0>(uint64_t a1@<X8>)
{
  v21 = a1;
  v19 = sub_1001F1160(&qword_100AD57D8, &qword_1008110C8);
  __chkstk_darwin(v19);
  v2 = &v16 - v1;
  v3 = sub_10079AB24();
  __chkstk_darwin(v3 - 8);
  v4 = sub_1001F1160(&qword_100AD57E0, &qword_1008110D0);
  v18 = *(v4 - 8);
  v5 = v18;
  __chkstk_darwin(v4);
  v7 = &v16 - v6;
  v20 = sub_1001F1160(&qword_100AD57E8, &qword_1008110D8);
  v17 = *(v20 - 8);
  v8 = v17;
  __chkstk_darwin(v20);
  v10 = &v16 - v9;
  sub_10079AB04();
  sub_100214E48();
  sub_1007995F4();
  sub_100005920(&qword_100AD57F8, &qword_100AD57E0, &qword_1008110D0, &protocol conformance descriptor for DataRepresentation<A>);
  sub_100799604();
  v11 = *(v5 + 8);
  v11(v7, v4);
  sub_10079AB14();
  sub_1007995F4();
  v12 = *(v19 + 48);
  v13 = *(v8 + 16);
  v14 = v20;
  v13(v2, v10, v20);
  (*(v18 + 16))(&v2[v12], v7, v4);
  sub_100799614();
  v11(v7, v4);
  return (*(v17 + 8))(v10, v14);
}

uint64_t sub_1002122BC(uint64_t a1)
{
  sub_1001F1160(&unk_100AD5AC0, &unk_100811090);
  *(v1 + 16) = swift_task_alloc();
  v3 = sub_1007969B4();
  *(v1 + 24) = v3;
  *(v1 + 32) = *(v3 - 8);
  *(v1 + 40) = swift_task_alloc();
  *(v1 + 48) = swift_task_alloc();
  *(v1 + 56) = *(a1 + 80);

  return _swift_task_switch(sub_1002123C8, 0, 0);
}

uint64_t sub_1002123C8()
{
  v35 = v0;
  v1 = v0[3];
  v2 = v0[4];
  v3 = v0[2];
  sub_10063D1E8(v0[7], v0[8], 0, v3);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_100007840(v0[2], &unk_100AD5AC0, &unk_100811090);
    if (qword_100AD1248 != -1)
    {
      swift_once();
    }

    v4 = sub_10079ACE4();
    sub_100008B98(v4, qword_100AD5610);
    v5 = sub_10079ACC4();
    v6 = sub_1007A29A4();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v34 = v8;
      *v7 = 136315138;
      *(v7 + 4) = sub_1000070F4(0xD000000000000016, 0x80000001008C34E0, &v34);
      _os_log_impl(&_mh_execute_header, v5, v6, "%s -- .url: nil", v7, 0xCu);
      sub_1000074E0(v8);
    }

    v9 = 0;
    v10 = 0xC000000000000000;
  }

  else
  {
    (*(v0[4] + 32))(v0[6], v0[2], v0[3]);
    if (qword_100AD1248 != -1)
    {
      swift_once();
    }

    v11 = v0[5];
    v12 = v0[6];
    v13 = v0[3];
    v14 = v0[4];
    v15 = sub_10079ACE4();
    sub_100008B98(v15, qword_100AD5610);
    (*(v14 + 16))(v11, v12, v13);
    v16 = sub_10079ACC4();
    v17 = sub_1007A29A4();
    v18 = os_log_type_enabled(v16, v17);
    v20 = v0[4];
    v19 = v0[5];
    v21 = v0[3];
    if (v18)
    {
      v33 = v0[3];
      v22 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      *v22 = 136315394;
      *(v22 + 4) = sub_1000070F4(0xD000000000000016, 0x80000001008C34E0, &v34);
      *(v22 + 12) = 2080;
      v23 = sub_100796914();
      v25 = v24;
      v26 = *(v20 + 8);
      v26(v19, v33);
      v27 = sub_1000070F4(v23, v25, &v34);

      *(v22 + 14) = v27;
      _os_log_impl(&_mh_execute_header, v16, v17, "%s -- .url: %s", v22, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      v26 = *(v20 + 8);
      v26(v19, v21);
    }

    v28 = v0[6];
    v29 = v0[3];
    v9 = sub_100796934();
    v10 = v30;
    v26(v28, v29);
  }

  v31 = v0[1];

  return v31(v9, v10);
}

BOOL sub_1002127E0(uint64_t a1)
{
  v2 = sub_1001F1160(&unk_100AD5AC0, &unk_100811090);
  __chkstk_darwin(v2 - 8);
  v4 = &v8 - v3;
  sub_10063D1E8(*(a1 + 80), *(a1 + 88), 0, &v8 - v3);
  v5 = sub_1007969B4();
  v6 = (*(*(v5 - 8) + 48))(v4, 1, v5) != 1;
  sub_100007840(v4, &unk_100AD5AC0, &unk_100811090);
  return v6;
}

uint64_t sub_1002128C8(uint64_t a1)
{
  v3 = sub_1007A22A4();
  *(v1 + 48) = v3;
  *(v1 + 56) = *(v3 - 8);
  *(v1 + 64) = swift_task_alloc();
  sub_1001F1160(&unk_100AD5AC0, &unk_100811090);
  v4 = swift_task_alloc();
  v5 = *(a1 + 24);
  *(v1 + 72) = v4;
  *(v1 + 80) = v5;
  *(v1 + 88) = *(a1 + 40);
  *(v1 + 96) = *(a1 + 80);

  return _swift_task_switch(sub_1002129D4, 0, 0);
}

uint64_t sub_1002129D4(uint64_t a1)
{
  v27 = v1;
  v3 = v1[12];
  v2 = v1[13];
  v4 = v1[9];
  sub_100795D54();
  v5 = v1[2];
  v6 = v1[3];
  sub_100795D54();
  v7 = v1[4];
  v8 = v1[5];
  sub_10063D1E8(v3, v2, 0, v4);
  v9 = sub_10063EEA4(v5, v6, v7, v8, v4);
  v11 = v10;

  sub_100007840(v4, &unk_100AD5AC0, &unk_100811090);
  if (qword_100AD1248 != -1)
  {
    swift_once();
  }

  v12 = sub_10079ACE4();
  sub_100008B98(v12, qword_100AD5610);

  v13 = sub_10079ACC4();
  v14 = sub_1007A29A4();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    *v15 = 136315394;
    *(v15 + 4) = sub_1000070F4(0xD000000000000016, 0x80000001008C34E0, &v26);
    *(v15 + 12) = 2080;
    *(v15 + 14) = sub_1000070F4(v9, v11, &v26);
    _os_log_impl(&_mh_execute_header, v13, v14, "%s -- .text: %s", v15, 0x16u);
    swift_arrayDestroy();
  }

  v16 = v1[8];
  v17 = v1[6];
  v18 = v1[7];
  sub_1007A2294();
  v19 = sub_1007A2264();
  v21 = v20;

  (*(v18 + 8))(v16, v17);
  if (v21 >> 60 == 15)
  {
    v22 = 0;
  }

  else
  {
    v22 = v19;
  }

  if (v21 >> 60 == 15)
  {
    v23 = 0xC000000000000000;
  }

  else
  {
    v23 = v21;
  }

  v24 = v1[1];

  return v24(v22, v23);
}

uint64_t sub_100212CB0(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_100212CF8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 sub_100212D58(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = result;
  *(a1 + 48) = v4;
  return result;
}

uint64_t sub_100212D74(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 96) = 1;
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

    *(result + 96) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100212DCC(uint64_t a1, uint64_t *a2)
{
  *(v2 + 16) = a1;
  sub_1001F1160(&unk_100AD5AC0, &unk_100811090);
  v4 = swift_task_alloc();
  v5 = *a2;
  v6 = a2[1];
  *(v2 + 24) = v4;
  *(v2 + 32) = v5;
  *(v2 + 40) = v6;
  *(v2 + 72) = *(a2 + 16);
  *(v2 + 48) = *(a2 + 5);

  return _swift_task_switch(sub_100212E84, 0, 0);
}

uint64_t sub_100212E84()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 16);
  v3 = sub_1007969B4();
  (*(*(v3 - 8) + 56))(v2, 1, 1, v3);
  if (v1 == 1)
  {
    sub_1007A26F4();
    *(v0 + 64) = sub_1007A26E4();
    v5 = sub_1007A2694();

    return _swift_task_switch(sub_100212FF8, v5, v4);
  }

  else
  {
    sub_10063D1E8(*(v0 + 48), *(v0 + 56), 0, *(v0 + 24));
    v6 = *(v0 + 16);
    v7 = *(v0 + 24);
    sub_100007840(v6, &unk_100AD5AC0, &unk_100811090);
    sub_10020B3C8(v7, v6, &unk_100AD5AC0, &unk_100811090);

    v8 = *(v0 + 8);

    return v8();
  }
}

uint64_t sub_100212FF8()
{
  v1 = *(v0 + 24);

  sub_10020F230(0, v1);

  return _swift_task_switch(sub_100213084, 0, 0);
}

uint64_t sub_100213084()
{
  v1 = v0[2];
  v2 = v0[3];
  sub_100007840(v1, &unk_100AD5AC0, &unk_100811090);
  sub_10020B3C8(v2, v1, &unk_100AD5AC0, &unk_100811090);

  v3 = v0[1];

  return v3();
}

uint64_t sub_100213128(uint64_t *a1, void *a2)
{
  v2 = *a1 == *a2 && a1[1] == a2[1];
  if (v2 || (sub_1007A3AB4() & 1) != 0)
  {
    sub_100795D54();
    sub_100795D54();
    if (v5)
    {
    }

    sub_100795D54();
    sub_100795D54();
    if (v5)
    {

      v3 = 1;
    }

    else
    {
      v3 = 1;
    }
  }

  else
  {
    v3 = 0;
  }

  return v3 & 1;
}

uint64_t sub_1002132B4()
{
  v80 = sub_100796274();
  v89 = *(v80 - 8);
  __chkstk_darwin(v80);
  v78 = &v62 - ((v0 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1 = sub_1001F1160(&qword_100AD5CB0, &unk_100811910);
  __chkstk_darwin(v1 - 8);
  v77 = &v62 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v76 = &v62 - v4;
  v5 = sub_1001F1160(&qword_100AD5CC0, &qword_1008110A0);
  __chkstk_darwin(v5 - 8);
  v88 = &v62 - v6;
  v92 = sub_1007967F4();
  v97 = *(v92 - 8);
  __chkstk_darwin(v92);
  v8 = (&v62 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v90 = sub_100796CF4();
  v98 = *(v90 - 8);
  v9 = v98;
  __chkstk_darwin(v90);
  v11 = &v62 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v62 - v13;
  v15 = sub_1007A21D4();
  v81 = v15;
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v62 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = &v62 - v20;
  v79 = sub_100796814();
  v85 = *(v79 - 8);
  __chkstk_darwin(v79);
  v71 = &v62 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v75 = &v62 - v24;
  v70 = sub_1001F1160(&qword_100AD57C0, &qword_1008110A8);
  sub_1007A2154();
  sub_100796C94();
  v25 = *(v16 + 16);
  v84 = v16 + 16;
  v93 = v25;
  v25(v18, v21, v15);
  v26 = *(v9 + 16);
  v87 = v9 + 16;
  v96 = v26;
  v73 = v11;
  v27 = v90;
  v26(v11, v14, v90);
  v94 = type metadata accessor for BundleFinder();
  *v8 = v94;
  v86 = enum case for LocalizedStringResource.BundleDescription.forClass(_:);
  v28 = *(v97 + 104);
  v97 += 104;
  v95 = v28;
  v29 = v92;
  v28(v8);
  v30 = v8;
  sub_100796834();
  v91 = *(v98 + 8);
  v98 += 8;
  v91(v14, v27);
  v83 = *(v16 + 8);
  v31 = v81;
  v83(v21, v81);
  v82 = v16 + 8;
  v32 = v21;
  sub_1007A2154();
  sub_100796C94();
  v72 = v18;
  v93(v18, v21, v31);
  v33 = v90;
  v96(v73, v14, v90);
  *v30 = v94;
  v74 = v30;
  v95(v30, v86, v29);
  v34 = v88;
  sub_100796834();
  v35 = v14;
  v91(v14, v33);
  v36 = v31;
  v83(v32, v31);
  v37 = *(v85 + 56);
  v85 += 56;
  v63 = v37;
  v37(v34, 0, 1, v79);
  LOBYTE(v99) = 0;
  v38 = sub_100795CE4();
  v65 = v38;
  v39 = *(v38 - 8);
  v40 = *(v39 + 56);
  v66 = v40;
  v67 = v39 + 56;
  v40(v76, 1, 1, v38);
  v40(v77, 1, 1, v38);
  v68 = enum case for InputConnectionBehavior.default(_:);
  v41 = *(v89 + 104);
  v89 += 104;
  v69 = v41;
  v41(v78);
  sub_10020CA7C();
  v70 = sub_100795E54();
  v64 = sub_1001F1160(&qword_100AD57C8, &unk_1008110B0);
  v42 = v32;
  sub_1007A2154();
  sub_100796C94();
  v93(v72, v32, v36);
  v43 = v73;
  v44 = v90;
  v96(v73, v35, v90);
  v45 = v74;
  v46 = v95;
  *v74 = v94;
  v47 = v86;
  v46(v45, v86, v92);
  sub_100796834();
  v48 = v35;
  v91(v35, v44);
  v62 = v42;
  v49 = v81;
  v50 = v83;
  v83(v42, v81);
  sub_1007A2154();
  sub_100796C94();
  v51 = v72;
  v93(v72, v42, v49);
  v52 = v90;
  v96(v43, v48, v90);
  v53 = v74;
  v54 = v95;
  *v74 = v94;
  v54(v53, v47, v92);
  v55 = v88;
  sub_100796834();
  v91(v48, v52);
  v56 = v62;
  v57 = v81;
  v50(v62, v81);
  v63(v55, 0, 1, v79);
  v103 = 0u;
  v104 = 0u;
  v101 = 0u;
  v102 = 0u;
  v99 = 0u;
  v100 = 0u;
  sub_1007A2154();
  sub_100796C94();
  v93(v51, v56, v57);
  v96(v43, v48, v52);
  *v53 = v94;
  v95(v53, v86, v92);
  sub_100796834();
  v91(v48, v52);
  v83(v56, v57);
  v58 = v76;
  sub_100795CF4();
  v59 = v65;
  v60 = v66;
  v66(v58, 0, 1, v65);
  v60(v77, 1, 1, v59);
  v69(v78, v68, v80);
  sub_10020E834();
  sub_100795E74();
  sub_1001F1160(&qword_100AD57D0, &qword_100823520);
  sub_100795B74();
  v99 = 0u;
  v100 = 0u;
  *&v101 = 0;
  sub_100795B64();
  sub_100795AA4();
  return v70;
}

uint64_t sub_100213FC4(int a1, _OWORD *a2)
{
  v79 = a2;
  v78 = a1;
  v88 = sub_100796274();
  v99 = *(v88 - 8);
  __chkstk_darwin(v88);
  v86 = &v67 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1001F1160(&qword_100AD5CB0, &unk_100811910);
  __chkstk_darwin(v3 - 8);
  v85 = &v67 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v84 = &v67 - v6;
  v7 = sub_1001F1160(&qword_100AD5CC0, &qword_1008110A0);
  __chkstk_darwin(v7 - 8);
  v98 = &v67 - v8;
  v91 = sub_1007967F4();
  v107 = *(v91 - 8);
  __chkstk_darwin(v91);
  v10 = (&v67 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v100 = sub_100796CF4();
  v11 = *(v100 - 8);
  __chkstk_darwin(v100);
  v13 = &v67 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v67 - v15;
  v17 = sub_1007A21D4();
  v81 = v17;
  v106 = *(v17 - 8);
  v18 = v106;
  __chkstk_darwin(v17);
  v20 = &v67 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v23 = &v67 - v22;
  v87 = sub_100796814();
  v93 = *(v87 - 8);
  __chkstk_darwin(v87);
  v77 = &v67 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v92 = &v67 - v26;
  v76 = sub_1001F1160(&qword_100AD57C0, &qword_1008110A8);
  sub_1007A2154();
  sub_100796C94();
  v27 = *(v18 + 16);
  v90 = v18 + 16;
  v102 = v27;
  v27(v20, v23, v17);
  v28 = *(v11 + 16);
  v96 = v11 + 16;
  v97 = v28;
  v89 = v13;
  v29 = v100;
  v28(v13, v16, v100);
  v103 = type metadata accessor for BundleFinder();
  *v10 = v103;
  v105 = enum case for LocalizedStringResource.BundleDescription.forClass(_:);
  v30 = *(v107 + 104);
  v107 += 104;
  v104 = v30;
  v31 = v91;
  v30(v10);
  sub_100796834();
  v94 = *(v11 + 8);
  v95 = v11 + 8;
  v94(v16, v29);
  v32 = v106 + 8;
  v101 = *(v106 + 8);
  v33 = v81;
  v101(v23, v81);
  v106 = v32;
  v34 = v23;
  sub_1007A2154();
  sub_100796C94();
  v82 = v20;
  v102(v20, v23, v33);
  v68 = v16;
  v35 = v100;
  v97(v89, v16, v100);
  *v10 = v103;
  v83 = v10;
  v104(v10, v105, v31);
  v36 = v98;
  sub_100796834();
  v94(v16, v35);
  v37 = v34;
  v101(v34, v33);
  v38 = *(v93 + 56);
  v93 += 56;
  v69 = v38;
  v38(v36, 0, 1, v87);
  LOBYTE(v109) = 0;
  v39 = sub_100795CE4();
  v71 = v39;
  v40 = *(v39 - 8);
  v41 = *(v40 + 56);
  v72 = v41;
  v73 = v40 + 56;
  v41(v84, 1, 1, v39);
  v41(v85, 1, 1, v39);
  v74 = enum case for InputConnectionBehavior.default(_:);
  v42 = *(v99 + 104);
  v99 += 104;
  v75 = v42;
  v42(v86);
  sub_10020CA7C();
  v76 = sub_100795E54();
  v70 = sub_1001F1160(&qword_100AD57C8, &unk_1008110B0);

  v80 = v34;
  sub_1007A2154();
  v43 = v68;
  sub_100796C94();
  v44 = v82;
  v102(v82, v37, v33);
  v45 = v100;
  v46 = v97;
  v97(v89, v43, v100);
  v47 = v83;
  *v83 = v103;
  v48 = v91;
  v104(v47, v105, v91);
  sub_100796834();
  v49 = v94;
  v94(v43, v45);
  v50 = v80;
  v51 = v81;
  v101(v80, v81);
  sub_1007A2154();
  sub_100796C94();
  v102(v44, v50, v51);
  v52 = v89;
  v53 = v100;
  v46(v89, v43, v100);
  v54 = v83;
  *v83 = v103;
  v104(v54, v105, v48);
  v55 = v98;
  v56 = v82;
  sub_100796834();
  v49(v43, v53);
  v57 = v80;
  v101(v80, v51);
  v69(v55, 0, 1, v87);
  v113 = 0u;
  v114 = 0u;
  v111 = 0u;
  v112 = 0u;
  v109 = 0u;
  v110 = 0u;
  sub_1007A2154();
  sub_100796C94();
  v102(v56, v57, v51);
  v97(v52, v43, v53);
  *v54 = v103;
  v104(v54, v105, v91);
  sub_100796834();
  v94(v43, v53);
  v101(v57, v51);
  v58 = v84;
  sub_100795CF4();
  v59 = v71;
  v60 = v72;
  v72(v58, 0, 1, v71);
  v60(v85, 1, 1, v59);
  v75(v86, v74, v88);
  sub_10020E834();
  sub_100795E74();
  sub_1001F1160(&qword_100AD57D0, &qword_100823520);
  sub_100795B74();
  v109 = 0u;
  v110 = 0u;
  *&v111 = 0;

  sub_100795B64();
  sub_100795AA4();
  LOBYTE(v109) = v78 & 1;

  v61 = v76;
  sub_100795E04();
  v62 = v79;
  v63 = v79[3];
  v111 = v79[2];
  v112 = v63;
  v64 = v79[5];
  v113 = v79[4];
  v114 = v64;
  v65 = v79[1];
  v109 = *v79;
  v110 = v65;
  sub_1000077D8(v79, v108, &unk_100AE7F60, &qword_1008110C0);
  sub_100795E04();
  sub_100007840(v62, &unk_100AE7F60, &qword_1008110C0);

  return v61;
}

unint64_t sub_100214E48()
{
  result = qword_100AD57F0;
  if (!qword_100AD57F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD57F0);
  }

  return result;
}

unint64_t sub_100214E9C()
{
  result = qword_100AD5808;
  if (!qword_100AD5808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD5808);
  }

  return result;
}

unint64_t sub_100214EF0()
{
  result = qword_100AD5828;
  if (!qword_100AD5828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD5828);
  }

  return result;
}

unint64_t sub_100214F44()
{
  result = qword_100AD5830;
  if (!qword_100AD5830)
  {
    sub_100795AD4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD5830);
  }

  return result;
}

uint64_t sub_100214FD4(char a1)
{
  v1 = sub_100796CF4();
  __chkstk_darwin(v1 - 8);
  v2 = sub_1007A21D4();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = v14 - v7;
  sub_1007A2154();
  v9 = *(v3 + 16);
  v9(v5, v8, v2);
  sub_100796C94();
  v10 = sub_1007A22B4();
  v14[1] = v11;
  v15 = v10;
  v12 = *(v3 + 8);
  v12(v8, v2);
  sub_1007A2154();
  v9(v5, v8, v2);
  sub_100796C94();
  sub_1007A22B4();
  v12(v8, v2);
  return v15;
}

uint64_t sub_10021529C(char a1)
{
  v1 = sub_100796CF4();
  __chkstk_darwin(v1 - 8);
  v2 = sub_1007A21D4();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = v14 - v7;
  sub_1007A2154();
  v9 = *(v3 + 16);
  v9(v5, v8, v2);
  sub_100796C94();
  v10 = sub_1007A22B4();
  v14[1] = v11;
  v15 = v10;
  v12 = *(v3 + 8);
  v12(v8, v2);
  sub_1007A2154();
  v9(v5, v8, v2);
  sub_100796C94();
  sub_1007A22B4();
  v12(v8, v2);
  return v15;
}

uint64_t sub_100215564()
{
  v0 = sub_10079ACE4();
  sub_100009A38(v0, qword_100AD58A0);
  sub_100008B98(v0, qword_100AD58A0);
  sub_10000A7C4(0, &qword_100AD20A0, OS_os_log_ptr);
  return sub_1007A33F4();
}

void *sub_1002155E8(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  if (a1 >> 62)
  {
    goto LABEL_26;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = v29)
  {
    if (!i)
    {
LABEL_21:
      sub_1007A1734();
    }

    v5 = a2;
    v6 = a3;
    result = sub_1003BD0EC(0, i & ~(i >> 63), 0);
    if (i < 0)
    {
      break;
    }

    v30 = v5;
    v31 = v6;
    v8 = 0;
    v34 = v3;
    v35 = v3 & 0xC000000000000001;
    v32 = v3 & 0xFFFFFFFFFFFFFF8;
    v33 = i;
    while (1)
    {
      v9 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      if (v35)
      {
        v10 = sub_1007A3784();
      }

      else
      {
        if (v8 >= *(v32 + 16))
        {
          goto LABEL_25;
        }

        v10 = *(v3 + 8 * v8 + 32);
        swift_unknownObjectRetain();
      }

      v11 = [v10 annotationLocation];
      if (v11)
      {
        v12 = v11;
        v13 = sub_1007A2254();
        v36 = v14;
        v37 = v13;
      }

      else
      {
        v36 = 0;
        v37 = 0;
      }

      result = [v10 annotationSelectedText];
      if (!result)
      {
        goto LABEL_28;
      }

      v15 = result;
      v16 = sub_1007A2254();
      v18 = v17;

      v19 = [v10 annotationNote];
      if (v19)
      {
        v20 = v19;
        v21 = sub_1007A2254();
        v23 = v22;

        swift_unknownObjectRelease();
      }

      else
      {
        swift_unknownObjectRelease();
        v21 = 0;
        v23 = 0;
      }

      v25 = _swiftEmptyArrayStorage[2];
      v24 = _swiftEmptyArrayStorage[3];
      if (v25 >= v24 >> 1)
      {
        sub_1003BD0EC((v24 > 1), v25 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v25 + 1;
      v26 = &_swiftEmptyArrayStorage[6 * v25];
      v26[4] = v37;
      v26[5] = v36;
      v26[6] = v16;
      v26[7] = v18;
      v26[8] = v21;
      v26[9] = v23;
      ++v8;
      v3 = v34;
      if (v9 == v33)
      {
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    v27 = a3;
    v28 = a2;
    v29 = sub_1007A38D4();
    a2 = v28;
    a3 = v27;
  }

  __break(1u);
LABEL_28:
  __break(1u);
  return result;
}

double sub_100215848@<D0>(uint64_t a3@<X2>, uint64_t a4@<X3>, _OWORD *a5@<X8>)
{
  v8 = sub_1007A2214();
  v9 = (*(a4 + 16))(a4, v8, a3);

  if (v9)
  {
    sub_1007A3504();

    swift_unknownObjectRelease();
  }

  else
  {
    result = 0.0;
    *a5 = 0u;
    a5[1] = 0u;
  }

  return result;
}

void sub_1002158E4(uint64_t a1)
{
  v3 = sub_1001F1160(&unk_100ADB5C0, &unk_100816880);
  v4 = __chkstk_darwin(v3 - 8);
  v6 = &v32 - v5;
  v7 = OBJC_IVAR____TtC5Books32AssetActivityItemProviderWrapper_itemProvider;
  v8 = *(a1 + 16);
  [*(v1 + OBJC_IVAR____TtC5Books32AssetActivityItemProviderWrapper_itemProvider) setShareType:{v8 != 1, v4}];
  v9 = *(v1 + v7);
  if (v8)
  {
    v43 = _swiftEmptyArrayStorage;
    v32 = v9;
    v10 = v9;
    sub_1007A37F4();
    v41 = type metadata accessor for AnnotationWrapper(0);
    v11 = (a1 + 40);
    v33 = v6;
    do
    {
      v40 = v8;
      v12 = *(v11 - 1);
      v13 = *v11;
      v14 = v11[2];
      v37 = v11[1];
      v38 = v12;
      v16 = v11[3];
      v15 = v11[4];
      v35 = v14;
      v36 = v16;
      v34 = v15;
      v17 = objc_allocWithZone(v41);
      v18 = &v17[OBJC_IVAR____TtC5BooksP33_68DD4628432DB32CCFA3947CA529962B17AnnotationWrapper_annotationLocation];
      *v18 = 0;
      *(v18 + 1) = 0;
      v19 = &v17[OBJC_IVAR____TtC5BooksP33_68DD4628432DB32CCFA3947CA529962B17AnnotationWrapper_annotationNote];
      *v19 = 0;
      *(v19 + 1) = 0;
      v20 = &v17[OBJC_IVAR____TtC5BooksP33_68DD4628432DB32CCFA3947CA529962B17AnnotationWrapper_annotationRepresentativeText];
      *v20 = 0;
      *(v20 + 1) = 0;
      v21 = OBJC_IVAR____TtC5BooksP33_68DD4628432DB32CCFA3947CA529962B17AnnotationWrapper_annotationCreationDate;
      v22 = sub_100796BB4();
      v23 = *(*(v22 - 8) + 56);
      v23(&v17[v21], 1, 1, v22);
      v39 = OBJC_IVAR____TtC5BooksP33_68DD4628432DB32CCFA3947CA529962B17AnnotationWrapper_annotationModificationDate;
      v23(&v17[OBJC_IVAR____TtC5BooksP33_68DD4628432DB32CCFA3947CA529962B17AnnotationWrapper_annotationModificationDate], 1, 1, v22);
      v24 = v37;
      *v18 = v38;
      *(v18 + 1) = v13;
      v25 = v34;
      v26 = v35;
      *v20 = v24;
      *(v20 + 1) = v26;
      v27 = v33;
      *v19 = v36;
      *(v19 + 1) = v25;
      swift_bridgeObjectRetain_n();
      swift_bridgeObjectRetain_n();
      swift_bridgeObjectRetain_n();
      sub_100796BA4();
      v23(v27, 0, 1, v22);
      swift_beginAccess();
      sub_100217AB4(v27, &v17[v21]);
      swift_endAccess();
      sub_100796BA4();
      v23(v27, 0, 1, v22);
      v29 = v39;
      v28 = v40;
      swift_beginAccess();
      sub_100217AB4(v27, &v17[v29]);
      swift_endAccess();
      v42.receiver = v17;
      v42.super_class = v41;
      objc_msgSendSuper2(&v42, "init");

      sub_1007A37D4();
      sub_1007A3804();
      sub_1007A3814();
      sub_1007A37E4();
      v11 += 6;
      v8 = v28 - 1;
    }

    while (v8);
    v9 = v32;
  }

  else
  {
    v30 = v9;
  }

  sub_1001F1160(&qword_100AD5A50, &unk_1008214A0);
  isa = sub_1007A25D4().super.isa;

  [v9 setAnnotations:isa];
}

uint64_t sub_100215C48()
{
  v1 = OBJC_IVAR____TtC5Books32AssetActivityItemProviderWrapper_itemProvider;
  v2 = *(v0 + OBJC_IVAR____TtC5Books32AssetActivityItemProviderWrapper_itemProvider);
  if (swift_unknownObjectWeakLoadStrong())
  {
    swift_getObjectType();
    v3 = v2;
    v4 = sub_10079F8D4();
    swift_unknownObjectRelease();
  }

  else
  {
    v5 = v2;
    v4 = 0;
  }

  [v2 setCitationsAllowed:v4 & 1];

  v6 = [*(v0 + v1) pasteboardString];
  v7 = sub_1007A2254();

  return v7;
}

uint64_t sub_100215D20@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC5Books32AssetActivityItemProviderWrapper_itemProvider;
  v5 = *(v1 + OBJC_IVAR____TtC5Books32AssetActivityItemProviderWrapper_itemProvider);
  if (swift_unknownObjectWeakLoadStrong())
  {
    swift_getObjectType();
    v6 = v5;
    v7 = sub_10079F8D4();
    swift_unknownObjectRelease();
  }

  else
  {
    v8 = v5;
    v7 = 0;
  }

  [v5 setCitationsAllowed:v7 & 1];

  v9 = [*(v1 + v4) propertySource];
  v10 = AEAssetActivityItemProviderPropertyStoreShortUrl;
  v11 = sub_1007A2214();
  v12 = v9[2](v9, v11, v10);

  if (v12)
  {
    sub_1007A3504();
    swift_unknownObjectRelease();
    _Block_release(v9);
  }

  else
  {
    _Block_release(v9);
    v21 = 0u;
    v22 = 0u;
  }

  v23 = v21;
  v24 = v22;
  if (*(&v22 + 1))
  {
    sub_1000076D4(&v23, &v25);
  }

  else
  {
    v16 = [*(v2 + v4) propertySource];
    v17 = AEAssetActivityItemProviderPropertyStoreUrl;
    v18 = sub_1007A2214();
    v19 = v16[2](v16, v18, v17);

    if (v19)
    {
      sub_1007A3504();
      swift_unknownObjectRelease();
      _Block_release(v16);
      v25 = v21;
      v26 = v22;
      if (*(&v24 + 1))
      {
        sub_100007840(&v23, &unk_100AD5B40, &unk_100811300);
      }
    }

    else
    {
      _Block_release(v16);
      v25 = 0u;
      v26 = 0u;
    }
  }

  if (*(&v26 + 1))
  {
    sub_1000076D4(&v25, v27);
    sub_1000076D4(v27, &v25);
    v13 = sub_1007969B4();
    v14 = swift_dynamicCast();
    return (*(*(v13 - 8) + 56))(a1, v14 ^ 1u, 1, v13);
  }

  else
  {
    sub_100007840(&v25, &unk_100AD5B40, &unk_100811300);
    v20 = sub_1007969B4();
    return (*(*(v20 - 8) + 56))(a1, 1, 1, v20);
  }
}

id sub_100216018()
{
  v1 = v0;
  v47 = sub_1007A1CC4();
  v2 = *(v47 - 8);
  __chkstk_darwin(v47);
  v4 = v46 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = v46 - v6;
  v8 = OBJC_IVAR____TtC5Books32AssetActivityItemProviderWrapper_itemProvider;
  v9 = *(v0 + OBJC_IVAR____TtC5Books32AssetActivityItemProviderWrapper_itemProvider);
  if (swift_unknownObjectWeakLoadStrong())
  {
    swift_getObjectType();
    v10 = v9;
    v11 = sub_10079F8D4();
    swift_unknownObjectRelease();
  }

  else
  {
    v12 = v9;
    v11 = 0;
  }

  [v9 setCitationsAllowed:v11 & 1];

  v13 = swift_allocObject();
  sub_1001F1160(&qword_100AD7FB0, &unk_100820560);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_10080B690;
  v15 = *(v1 + v8);
  v16 = sub_10000A7C4(0, &unk_100AD5AA0, AEAssetActivityItemProvider_ptr);
  *(v13 + 16) = v14;
  *(v14 + 56) = v16;
  *(v14 + 32) = v15;
  v17 = *(v1 + OBJC_IVAR____TtC5Books32AssetActivityItemProviderWrapper_progressKitController);
  v18 = &unk_10080E000;
  if (v17)
  {
    v46[0] = v8;
    v19 = v15;
    v20 = v17;
    v21 = dispatch_group_create();
    dispatch_group_enter(v21);
    v22 = swift_allocObject();
    *(v22 + 16) = v13;
    *(v22 + 24) = v21;
    v52 = sub_100217D20;
    v53 = v22;
    aBlock = _NSConcreteStackBlock;
    v49 = 1107296256;
    v50 = sub_1002166B8;
    v51 = &unk_100A0ED08;
    v23 = _Block_copy(&aBlock);
    v46[1] = v13;

    v24 = v21;

    [v20 activeContextWithCompletion:v23];
    _Block_release(v23);
    sub_1007A1CB4();
    sub_1007A1D24();
    v25 = *(v2 + 8);
    v26 = v4;
    v27 = v47;
    v25(v26, v47);
    sub_1007A2CA4();
    v25(v7, v27);
    if (sub_1007A1C34())
    {
      v28 = v24;
      if (qword_100AD1290 != -1)
      {
        swift_once();
      }

      v29 = sub_10079ACE4();
      sub_100008B98(v29, qword_100AD58A0);
      v30 = sub_10079ACC4();
      v31 = sub_1007A29B4();
      v32 = os_log_type_enabled(v30, v31);
      v18 = &unk_10080E000;
      v33 = v20;
      v8 = v46[0];
      if (v32)
      {
        v34 = swift_slowAlloc();
        *v34 = 0;
        _os_log_impl(&_mh_execute_header, v30, v31, "timed out waiting for progress kit current context", v34, 2u);
      }
    }

    else
    {

      v18 = &unk_10080E000;
      v8 = v46[0];
    }
  }

  else
  {
    v35 = v15;
  }

  swift_beginAccess();
  v36 = *(v1 + v8);

  v37 = [v36 shareType];
  v38 = [*(v1 + v8) propertySource];
  v39 = swift_allocObject();
  *(v39 + 16) = v38;
  v40 = objc_allocWithZone(IMActivityController);
  isa = sub_1007A25D4().super.isa;

  v52 = sub_100217B94;
  v53 = v39;
  aBlock = _NSConcreteStackBlock;
  v49 = v18[479];
  v50 = sub_100217B9C;
  v51 = &unk_100A0ECB8;
  v42 = _Block_copy(&aBlock);
  v43 = [v40 initWithActivityItems:isa applicationActivities:0 shareType:v37 propertySource:v42 tracker:0];

  _Block_release(v42);

  [v43 setManagedBook:{objc_msgSend(*(v1 + OBJC_IVAR____TtC5Books32AssetActivityItemProviderWrapper_book), "isManagedBook")}];
  v44 = [v43 viewController];

  return v44;
}

void sub_1002165AC(void *a1, uint64_t a2, dispatch_group_t group)
{
  if (a1)
  {
    v11[3] = sub_10000A7C4(0, &unk_100AD5AB0, CLSContext_ptr);
    v11[0] = a1;
    swift_beginAccess();
    v6 = *(a2 + 16);
    v7 = a1;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(a2 + 16) = v6;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v6 = sub_10066A640(0, *(v6 + 2) + 1, 1, v6);
      *(a2 + 16) = v6;
    }

    v10 = *(v6 + 2);
    v9 = *(v6 + 3);
    if (v10 >= v9 >> 1)
    {
      v6 = sub_10066A640((v9 > 1), v10 + 1, 1, v6);
    }

    *(v6 + 2) = v10 + 1;
    sub_1000076D4(v11, &v6[32 * v10 + 32]);
    *(a2 + 16) = v6;
    swift_endAccess();
  }

  dispatch_group_leave(group);
}

void sub_1002166B8(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3(a2);
}

void sub_100216824(uint64_t a1)
{
  sub_1002179FC(319, &qword_100AD5920, &type metadata accessor for URL);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_1002168FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1001F1160(&qword_100AD5A68, &unk_100812810);
  inited = swift_initStackObject();
  *(inited + 32) = a3;
  *(inited + 16) = xmmword_10080B690;
  *(inited + 40) = a4;
  *(inited + 48) = a1;
  *(inited + 64) = 0;
  *(inited + 72) = 0;
  *(inited + 56) = a2;

  sub_1002158E4(inited);
  swift_setDeallocating();
  return sub_100007840(inited + 32, &unk_100AD5A70, &unk_1008112E0);
}

void sub_1002169C0()
{
  v1 = OBJC_IVAR____TtC5Books32AssetActivityItemProviderWrapper_itemProvider;
  [*(v0 + OBJC_IVAR____TtC5Books32AssetActivityItemProviderWrapper_itemProvider) setShareType:2];
  v2 = *(v0 + v1);
  sub_1001F1160(&qword_100AD5A50, &unk_1008214A0);
  isa = sub_1007A25D4().super.isa;
  [v2 setAnnotations:isa];
}

uint64_t sub_100216A74()
{
  v1 = [*(v0 + OBJC_IVAR____TtC5Books32AssetActivityItemProviderWrapper_itemProvider) annotations];
  sub_1001F1160(&qword_100AD5A50, &unk_1008214A0);
  sub_1007A25E4();

  sub_1001F1160(&qword_100AD5A58, &unk_1008112D0);
  sub_100217A50();
  LOBYTE(v1) = sub_1007A28A4();

  return v1 & 1;
}

id sub_100216B30(void *a1)
{
  v2 = sub_1001F1160(&unk_100AD5A90, &unk_1008112F0);
  __chkstk_darwin(v2 - 8);
  v4 = &v13[-v3];
  v5 = sub_1007A1C14();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v13[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (!a1)
  {
    return 0;
  }

  result = [a1 annotationLocation];
  if (!result)
  {
    return result;
  }

  v11 = result;
  sub_1007A2254();

  if (!swift_unknownObjectWeakLoadStrong())
  {

    (*(v6 + 56))(v4, 1, 1, v5);
    sub_100007840(v4, &unk_100AD5A90, &unk_1008112F0);
    return 0;
  }

  swift_getObjectType();
  sub_10079FA34();

  swift_unknownObjectRelease();
  (*(v6 + 56))(v4, 0, 1, v5);
  (*(v6 + 32))(v9, v4, v5);
  v12 = sub_1007A1B94();
  (*(v6 + 8))(v9, v5);
  result = (v12 + 1);
  if (__OFADD__(v12, 1))
  {
    __break(1u);
  }

  return result;
}

id sub_100216DF0(void *a1)
{
  v2 = sub_1001F1160(&unk_100AD5A90, &unk_1008112F0);
  __chkstk_darwin(v2 - 8);
  v4 = &v15[-v3];
  v5 = sub_1007A1C14();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v15[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (!a1)
  {
    return 0;
  }

  result = [a1 annotationLocation];
  if (!result)
  {
    return result;
  }

  v11 = result;
  sub_1007A2254();

  if (!swift_unknownObjectWeakLoadStrong())
  {

    (*(v6 + 56))(v4, 1, 1, v5);
    sub_100007840(v4, &unk_100AD5A90, &unk_1008112F0);
    return 0;
  }

  swift_getObjectType();
  sub_10079FA34();

  swift_unknownObjectRelease();
  (*(v6 + 56))(v4, 0, 1, v5);
  (*(v6 + 32))(v9, v4, v5);
  if (!swift_unknownObjectWeakLoadStrong())
  {
    (*(v6 + 8))(v9, v5);
    return 0;
  }

  swift_getObjectType();
  v12 = sub_1007A1B94();
  v13 = __OFADD__(v12, 1);
  result = (v12 + 1);
  if (v13)
  {
    __break(1u);
  }

  else
  {
    v14 = sub_10079F964();
    (*(v6 + 8))(v9, v5);
    swift_unknownObjectRelease();
    return v14;
  }

  return result;
}

uint64_t sub_10021722C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (a3)
  {
    v6 = sub_1007A2254();
  }

  else
  {
    v6 = 0;
    v7 = 0;
  }

  v8 = (a1 + *a4);
  *v8 = v6;
  v8[1] = v7;
}

id sub_10021728C(uint64_t a1, uint64_t a2, void *a3)
{
  if (*(a1 + *a3 + 8))
  {

    v3 = sub_1007A2214();
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

Class sub_1002173C8(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = sub_1001F1160(&unk_100ADB5C0, &unk_100816880);
  __chkstk_darwin(v5 - 8);
  v7 = &v15 - v6;
  v8 = *a3;
  swift_beginAccess();
  sub_100217B24(a1 + v8, v7);
  v9 = sub_100796BB4();
  v10 = *(v9 - 8);
  v11 = (*(v10 + 48))(v7, 1, v9);
  v12 = 0;
  if (v11 != 1)
  {
    isa = sub_100796AF4().super.isa;
    (*(v10 + 8))(v7, v9);
    v12 = isa;
  }

  return v12;
}

void sub_100217510(char *a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v7 = sub_1001F1160(&unk_100ADB5C0, &unk_100816880);
  __chkstk_darwin(v7 - 8);
  v9 = &v14 - v8;
  if (a3)
  {
    sub_100796B64();
    v10 = sub_100796BB4();
    (*(*(v10 - 8) + 56))(v9, 0, 1, v10);
  }

  else
  {
    v11 = sub_100796BB4();
    (*(*(v11 - 8) + 56))(v9, 1, 1, v11);
  }

  v12 = *a4;
  swift_beginAccess();
  v13 = a1;
  sub_100217AB4(v9, &a1[v12]);
  swift_endAccess();
}

uint64_t sub_100217694()
{
  v1 = sub_100796504();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v0 + OBJC_IVAR____TtC5BooksP33_68DD4628432DB32CCFA3947CA529962B17AnnotationWrapper_annotationNote + 8);
  if (v5)
  {
    v11 = *(v0 + OBJC_IVAR____TtC5BooksP33_68DD4628432DB32CCFA3947CA529962B17AnnotationWrapper_annotationNote);
    v12 = v5;

    sub_1007964E4();
    sub_100206ECC();
    v6 = sub_1007A3494();
    v8 = v7;
    (*(v2 + 8))(v4, v1);

    v11 = v6;
    v12 = v8;
    sub_1002060B4();
    v9 = sub_1007A28A4();
  }

  else
  {
    v9 = 0;
  }

  return v9 & 1;
}

id sub_100217834(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1(0);
  return objc_msgSendSuper2(&v3, "dealloc");
}

void sub_100217940(uint64_t a1)
{
  sub_1002179FC(319, &qword_100AD91B0, &type metadata accessor for Date);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1002179FC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1007A3454();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_100217A50()
{
  result = qword_100AD5A60;
  if (!qword_100AD5A60)
  {
    sub_1001F1234(&qword_100AD5A58, &unk_1008112D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD5A60);
  }

  return result;
}

uint64_t sub_100217AB4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001F1160(&unk_100ADB5C0, &unk_100816880);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_100217B24(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001F1160(&unk_100ADB5C0, &unk_100816880);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

id sub_100217B9C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = sub_1007A2254();
  v7 = v6;

  v8 = a3;
  v4(v17, v5, v7, v8);

  v9 = v18;
  if (v18)
  {
    v10 = sub_10000E3E8(v17, v18);
    v11 = *(v9 - 8);
    v12 = __chkstk_darwin(v10);
    v14 = v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v11 + 16))(v14, v12);
    v15 = sub_1007A3AA4();
    (*(v11 + 8))(v14, v9);
    sub_1000074E0(v17);
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

id NotificationOptInStatusController.__allocating_init(center:status:)(uint64_t a1, uint64_t a2)
{
  v5 = objc_allocWithZone(v2);
  *&v5[OBJC_IVAR___BKNotificationOptInStatusController_center] = a1;
  *&v5[OBJC_IVAR___BKNotificationOptInStatusController_status] = a2;
  v7.receiver = v5;
  v7.super_class = v2;
  return objc_msgSendSuper2(&v7, "init");
}

id NotificationOptInStatusController.init(center:status:)(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  *&v2[OBJC_IVAR___BKNotificationOptInStatusController_center] = a1;
  *&v2[OBJC_IVAR___BKNotificationOptInStatusController_status] = a2;
  v7.receiver = v2;
  v7.super_class = ObjectType;
  return objc_msgSendSuper2(&v7, "init");
}

Swift::Void __swiftcall NotificationOptInStatusController.checkAndReportOptInStatus()()
{
  v1 = *(v0 + OBJC_IVAR___BKNotificationOptInStatusController_center);
  v2 = swift_allocObject();
  swift_unknownObjectUnownedInit();
  v5[4] = sub_1002180A8;
  v5[5] = v2;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 1107296256;
  v5[2] = sub_100201C54;
  v5[3] = &unk_100A0ED58;
  v3 = _Block_copy(v5);
  v4 = v1;

  [v4 getNotificationSettingsWithCompletionHandler:v3];
  _Block_release(v3);
}

uint64_t sub_100217F6C(void *a1, uint64_t a2)
{
  v4 = sub_1001F1160(&qword_100AD67D0, &qword_100814660);
  __chkstk_darwin(v4 - 8);
  v6 = &v12 - v5;
  v7 = sub_1007A2744();
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  sub_1007A26F4();

  v8 = a1;
  v9 = sub_1007A26E4();
  v10 = swift_allocObject();
  v10[2] = v9;
  v10[3] = &protocol witness table for MainActor;
  v10[4] = a2;
  v10[5] = v8;
  sub_1003457A0(0, 0, v6, &unk_100811348, v10);
}

uint64_t sub_1002180B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = sub_100797D34();
  v5[4] = v6;
  v7 = *(v6 - 8);
  v5[5] = v7;
  v5[6] = *(v7 + 64);
  v5[7] = swift_task_alloc();
  v5[8] = swift_task_alloc();
  v5[9] = swift_task_alloc();
  sub_1007A26F4();
  v5[10] = sub_1007A26E4();
  v9 = sub_1007A2694();

  return _swift_task_switch(sub_1002181C4, v9, v8);
}

uint64_t sub_1002181C4()
{
  v1 = v0[3];

  Strong = swift_unknownObjectUnownedLoadStrong();
  v3 = *&Strong[OBJC_IVAR___BKNotificationOptInStatusController_status];

  v4 = [v1 authorizationStatus];
  if (v3 != v4)
  {
    v5 = v4;
    v6 = swift_unknownObjectUnownedLoadStrong();
    *&v6[OBJC_IVAR___BKNotificationOptInStatusController_status] = v5;

    if ((v3 - 1) > 2)
    {
      v7 = &enum case for UserAction.unknown(_:);
    }

    else
    {
      v7 = *(&off_100A0EDD0 + (v3 - 1));
    }

    v8 = *(v0[5] + 104);
    v8(v0[9], *v7, v0[4]);
    if ((v5 - 1) > 2)
    {
      v9 = &enum case for UserAction.unknown(_:);
    }

    else
    {
      v9 = *(&off_100A0EDD0 + (v5 - 1));
    }

    v8(v0[8], *v9, v0[4]);
    sub_100218EA0(&qword_100AD5B10, &type metadata accessor for UserAction, &protocol conformance descriptor for UserAction);
    if ((sub_1007A2124() & 1) == 0)
    {
      v10 = [objc_opt_self() delegate];
      v11 = [v10 primaryAnalyticsController];

      v12 = sub_100797CF4();
      v13 = [v11 newSessionAssertion];
      if (v12)
      {
        v14 = v0[7];
        v16 = v0[5];
        v15 = v0[6];
        v17 = v0[4];
        (*(v16 + 16))(v14, v0[8], v17);
        v18 = (*(v16 + 80) + 16) & ~*(v16 + 80);
        v19 = (v15 + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
        v20 = swift_allocObject();
        (*(v16 + 32))(v20 + v18, v14, v17);
        *(v20 + v19) = v13;
        v21 = v12;
        swift_unknownObjectRetain();
        sub_1007983B4();
      }

      swift_unknownObjectRelease();
    }

    v22 = v0[9];
    v23 = v0[4];
    v24 = *(v0[5] + 8);
    v24(v0[8], v23);
    v24(v22, v23);
  }

  v25 = v0[1];

  return v25();
}

id sub_1002184D4(uint64_t a1, uint64_t a2, void *a3)
{
  v56 = a3;
  v57 = a1;
  v4 = sub_100798474();
  v52 = *(v4 - 8);
  v53 = v4;
  __chkstk_darwin(v4);
  v51 = &v37[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = sub_100798284();
  v7 = *(v6 - 8);
  v54 = v6;
  v55 = v7;
  __chkstk_darwin(v6);
  v50 = &v37[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = sub_100798354();
  v46 = *(v9 - 8);
  v47 = v9;
  __chkstk_darwin(v9);
  v45 = &v37[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = sub_1007982E4();
  v12 = *(v11 - 8);
  v48 = v11;
  v49 = v12;
  __chkstk_darwin(v11);
  v44 = &v37[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = sub_100797D34();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v37[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v18 = sub_1007982B4();
  v43 = *(v18 - 8);
  v19 = __chkstk_darwin(v18);
  v21 = &v37[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v15 + 16))(v17, a2, v14, v19);
  sub_1007982A4();
  v42 = sub_1001F1160(&qword_100AD5B18, &qword_100811358);
  v22 = sub_100797B54();
  v23 = *(v22 - 8);
  v41 = *(v23 + 72);
  v24 = (*(v23 + 80) + 32) & ~*(v23 + 80);
  v25 = swift_allocObject();
  v59 = xmmword_10080B690;
  *(v25 + 16) = xmmword_10080B690;
  v26 = enum case for DataEventTrait.onlyOnce(_:);
  v40 = *(v23 + 104);
  v38 = enum case for DataEventTrait.onlyOnce(_:);
  v39 = v22;
  v40(v25 + v24, enum case for DataEventTrait.onlyOnce(_:), v22);
  v58 = "4";
  sub_100218EA0(&qword_100AD5B20, &type metadata accessor for NotificationOptInActionData, &protocol conformance descriptor for NotificationOptInActionData);
  sub_100797B34();

  (*(v43 + 8))(v21, v18);
  (*(v46 + 104))(v45, enum case for Location.deviceSettings(_:), v47);
  v27 = v44;
  sub_1007982D4();
  v28 = swift_allocObject();
  *(v28 + 16) = v59;
  v29 = v26;
  v30 = v40;
  v40(v28 + v24, v29, v22);
  sub_100218EA0(&qword_100AD5B28, &type metadata accessor for NotificationOptInLocationData, &protocol conformance descriptor for NotificationOptInLocationData);
  v31 = v27;
  v32 = v48;
  sub_100797B34();

  (*(v49 + 8))(v31, v32);
  (*(v52 + 104))(v51, enum case for ModelType.global(_:), v53);
  v33 = v50;
  sub_100798274();
  v34 = swift_allocObject();
  *(v34 + 16) = v59;
  v30(v34 + v24, v38, v39);
  sub_100218EA0(&qword_100AD5B30, &type metadata accessor for NotificationOptInTypeData, &protocol conformance descriptor for NotificationOptInTypeData);
  v35 = v54;
  sub_100797B34();

  (*(v55 + 8))(v33, v35);
  sub_1007982C4();
  sub_100218EA0(&qword_100AD5B38, &type metadata accessor for NotificationOptInActionEvent, &protocol conformance descriptor for NotificationOptInActionEvent);
  memset(v60, 0, 32);
  sub_100797B44();
  sub_1000230BC(v60);
  result = v56;
  if (v56)
  {
    return [v56 invalidate];
  }

  return result;
}

id SearchBar.Coordinator.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t sub_100218D44(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10002812C;

  return sub_1002180B0(a1, v4, v5, v7, v6);
}

id sub_100218E04(uint64_t a1)
{
  v3 = *(sub_100797D34() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_1002184D4(a1, v1 + v4, v5);
}

uint64_t sub_100218EA0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void *sub_100218EE8(unint64_t a1)
{
  v1 = a1;
  if (a1 >> 62)
  {
LABEL_25:
    v22 = v1 & 0xFFFFFFFFFFFFFF8;
    v2 = sub_1007A38D4();
  }

  else
  {
    v22 = a1 & 0xFFFFFFFFFFFFFF8;
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v2)
  {
    v3 = 0;
    v20 = v1;
    v21 = v1 & 0xC000000000000001;
    v4 = &selRef__setupSizeRestrictionsForWindowScene_sceneType_;
    do
    {
      v5 = v3;
      while (1)
      {
        if (v21)
        {
          v6 = sub_1007A3784();
        }

        else
        {
          if (v5 >= *(v22 + 16))
          {
            goto LABEL_24;
          }

          v6 = *(v1 + 8 * v5 + 32);
        }

        v7 = v6;
        v3 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          __break(1u);
LABEL_24:
          __break(1u);
          goto LABEL_25;
        }

        objc_opt_self();
        v8 = swift_dynamicCastObjCClass();
        if (!v8)
        {
          break;
        }

        v9 = v8;
        v10 = v2;
        v11 = v7;
        [v9 v4[176]];
        v12 = v4;
        v13 = sub_100796E94();

        if (v13)
        {
          sub_10000A7C4(0, &qword_100ADA970, UIKeyCommand_ptr);
          v17 = [v9 title];
          sub_1007A2254();

          v18 = [v9 image];
          sub_1007A2964();

          v4 = v12;
LABEL_18:
          v2 = v10;
          v1 = v20;
          break;
        }

        v14 = v11;
        [v9 v12[176]];
        v15 = sub_100796E94();

        v4 = v12;
        if ((v15 & 1) == 0)
        {
          goto LABEL_18;
        }

        ++v5;
        v2 = v10;
        v16 = v3 == v10;
        v1 = v20;
        if (v16)
        {
          return _swiftEmptyArrayStorage;
        }
      }

      sub_1007A25C4();
      if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1007A2614();
      }

      sub_1007A2644();
    }

    while (v3 != v2);
  }

  return _swiftEmptyArrayStorage;
}

Class sub_10021918C()
{
  v0 = sub_100796CF4();
  __chkstk_darwin(v0 - 8);
  v2 = v32 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1007A21D4();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = v32 - v8;
  sub_1007A2154();
  v11 = v4 + 16;
  v10 = *(v4 + 16);
  v10(v6, v9, v3);
  sub_100796C94();
  v36 = v6;
  v12 = sub_1007A22B4();
  v41 = v13;
  v42 = v12;
  v14 = *(v4 + 8);
  v43 = v4 + 8;
  v39 = v14;
  v14(v9, v3);
  v15 = sub_1007A2214();
  v40 = [objc_opt_self() systemImageNamed:v15];

  sub_1001F1160(&unk_100AD8160, &unk_100813160);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_100811360;
  v17 = sub_1003FFEB0(1, 4);
  if (v17 >> 62)
  {
    sub_10000A7C4(0, &qword_100AE8DB0, UIMenuElement_ptr);
    v18 = sub_1007A38C4();
  }

  else
  {

    sub_1007A3AD4();
    sub_10000A7C4(0, &qword_100AE8DB0, UIMenuElement_ptr);
    v18 = v17;
  }

  v38 = sub_10000A7C4(0, &qword_100AD8170, UIMenu_ptr);
  v49._countAndFlagsBits = 0;
  v49._object = 0xE000000000000000;
  v52.value._countAndFlagsBits = 0;
  v52.value._object = 0;
  v46.value.super.isa = 0;
  v46.is_nil = 0;
  v19.value = 1;
  *(v16 + 32) = sub_1007A30C4(v49, v52, v46, v19, 0xFFFFFFFFFFFFFFFFLL, v18, v29);
  v35 = swift_allocObject();
  *(v35 + 16) = xmmword_100811370;
  sub_10000A7C4(0, &qword_100AECAB0, UICommand_ptr);
  sub_1007A2154();
  v20 = v36;
  v10(v36, v9, v3);
  sub_100796C94();
  sub_1007A22B4();
  v32[1] = v2;
  v33 = v10;
  v34 = v11;
  v37 = v16;
  v21 = v39;
  v39(v9, v3);
  v44 = 0u;
  v45 = 0u;
  v22 = sub_1007A3414();
  v23 = v35;
  *(v35 + 32) = v22;
  sub_1007A2154();
  v10(v20, v9, v3);
  sub_100796C94();
  sub_1007A22B4();
  v21(v9, v3);
  v44 = 0u;
  v45 = 0u;
  *(v23 + 40) = sub_1007A3414();
  sub_1007A2154();
  v33(v20, v9, v3);
  sub_100796C94();
  sub_1007A22B4();
  v21(v9, v3);
  v44 = 0u;
  v45 = 0u;
  *(v23 + 48) = sub_1007A3414();
  v50._countAndFlagsBits = 0;
  v50._object = 0xE000000000000000;
  v53.value._countAndFlagsBits = 0;
  v53.value._object = 0;
  v47.value.super.isa = 0;
  v47.is_nil = 0;
  v24.value = 1;
  v25.super.super.isa = sub_1007A30C4(v50, v53, v47, v24, 0xFFFFFFFFFFFFFFFFLL, v23, v30).super.super.isa;
  v26 = v37;
  v37[5].super.super.isa = v25.super.super.isa;
  v51._object = v41;
  v51._countAndFlagsBits = v42;
  v54.value._countAndFlagsBits = 0;
  v54.value._object = 0;
  v48.value.super.isa = v40;
  v48.is_nil = 0;
  v27.value = 0;
  return sub_1007A30C4(v51, v54, v48, v27, 0xFFFFFFFFFFFFFFFFLL, v26, v31).super.super.isa;
}

Class sub_100219850()
{
  v0 = sub_100796CF4();
  __chkstk_darwin(v0 - 8);
  v2 = v31 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1007A21D4();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = v31 - v8;
  v37 = sub_10000A7C4(0, &qword_100AD8170, UIMenu_ptr);
  sub_1007A2154();
  v10 = *(v4 + 16);
  v10(v6, v9, v3);
  v11 = v10;
  v39 = v10;
  v40 = v2;
  sub_100796C94();
  v12 = sub_1007A22B4();
  v35 = v13;
  v36 = v12;
  v14 = *(v4 + 8);
  v14(v9, v3);
  v15 = sub_1007A2214();
  v34 = [objc_opt_self() systemImageNamed:v15];

  sub_1001F1160(&unk_100AD8160, &unk_100813160);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_100811380;
  v38 = v16;
  v17 = sub_10000A7C4(0, &qword_100ADA970, UIKeyCommand_ptr);
  sub_1007A2154();
  v11(v6, v9, v3);
  v31[1] = v4 + 16;
  sub_100796C94();
  sub_1007A22B4();
  v14(v9, v3);
  v32 = v14;
  v41 = 0u;
  v42 = 0u;
  v33 = v17;
  *(v16 + 32) = sub_1007A2964();
  sub_1007A2154();
  v31[0] = v6;
  v18 = v6;
  v19 = v3;
  v20 = v3;
  v21 = v39;
  v39(v18, v9, v19);
  sub_100796C94();
  sub_1007A22B4();
  v14(v9, v20);
  v41 = 0u;
  v42 = 0u;
  v22 = sub_1007A2964();
  v23 = v38;
  *(v38 + 40) = v22;
  sub_10000A7C4(0, &qword_100AECAB0, UICommand_ptr);
  sub_1007A2154();
  v24 = v31[0];
  v21(v31[0], v9, v20);
  sub_100796C94();
  sub_1007A22B4();
  v25 = v32;
  v32(v9, v20);
  v41 = 0u;
  v42 = 0u;
  *(v23 + 48) = sub_1007A3414();
  sub_1007A2154();
  v39(v24, v9, v20);
  sub_100796C94();
  sub_1007A22B4();
  v25(v9, v20);
  v41 = 0u;
  v42 = 0u;
  v26 = sub_1007A2964();
  v27 = v38;
  *(v38 + 56) = v26;
  sub_1007A2154();
  v39(v24, v9, v20);
  sub_100796C94();
  sub_1007A22B4();
  v25(v9, v20);
  v41 = 0u;
  v42 = 0u;
  *(v27 + 64) = sub_1007A2964();
  v44._object = v35;
  v44._countAndFlagsBits = v36;
  v45.value._countAndFlagsBits = 0;
  v45.value._object = 0;
  v43.value.super.isa = v34;
  v43.is_nil = 0;
  v28.value = 0;
  return sub_1007A30C4(v44, v45, v43, v28, 0xFFFFFFFFFFFFFFFFLL, v27, v30).super.super.isa;
}

uint64_t sub_10021A050(void *a1)
{
  v2 = sub_100796CF4();
  __chkstk_darwin(v2 - 8);
  v3 = sub_1007A21D4();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = v25 - v8;
  v29 = sub_100219188;
  v30 = 0;
  *&aBlock = _NSConcreteStackBlock;
  *(&aBlock + 1) = 1107296256;
  *&v28 = sub_1005F9C18;
  *(&v28 + 1) = &unk_100A0EDE8;
  v10 = _Block_copy(&aBlock);

  [a1 replaceChildrenOfMenuForIdentifier:UIMenuStandardEdit fromChildrenBlock:v10];
  _Block_release(v10);
  result = swift_isEscapingClosureAtFileLocation();
  if (result)
  {
    __break(1u);
  }

  else
  {
    v26 = UIMenuStandardEdit;
    v12 = _UIEnhancedMainMenuEnabled();
    v25[1] = sub_10000A7C4(0, &qword_100AD8170, UIMenu_ptr);
    sub_1001F1160(&unk_100AD8160, &unk_100813160);
    if (v12)
    {
      v13 = swift_allocObject();
      *(v13 + 16) = xmmword_100811360;
      v25[0] = sub_10000A7C4(0, &qword_100ADA970, UIKeyCommand_ptr);
      sub_1007A2154();
      (*(v4 + 16))(v6, v9, v3);
      sub_100796C94();
      sub_1007A22B4();
      (*(v4 + 8))(v9, v3);
      v14 = sub_1007A2214();
      v15 = [objc_opt_self() systemImageNamed:v14];

      aBlock = 0u;
      v28 = 0u;
      *(v13 + 32) = sub_1007A2964();
      *(v13 + 40) = sub_10021918C();
      v33._countAndFlagsBits = 0;
      v33._object = 0xE000000000000000;
      v35.value._countAndFlagsBits = 0;
      v35.value._object = 0;
      v31.value.super.isa = 0;
      v31.is_nil = 0;
      v16.value = 1;
      v17.super.super.isa = sub_1007A30C4(v33, v35, v31, v16, 0xFFFFFFFFFFFFFFFFLL, v13, v24).super.super.isa;
      [a1 insertSiblingMenu:v17.super.super.isa afterMenuForIdentifier:v26];
    }

    else
    {
      v18 = swift_allocObject();
      *(v18 + 16) = xmmword_100811390;
      v25[0] = sub_10000A7C4(0, &qword_100ADA970, UIKeyCommand_ptr);
      sub_1007A2154();
      (*(v4 + 16))(v6, v9, v3);
      sub_100796C94();
      sub_1007A22B4();
      (*(v4 + 8))(v9, v3);
      v19 = sub_1007A2214();
      v20 = [objc_opt_self() systemImageNamed:v19];

      aBlock = 0u;
      v28 = 0u;
      *(v18 + 32) = sub_1007A2964();
      v34._countAndFlagsBits = 0;
      v34._object = 0xE000000000000000;
      v36.value._countAndFlagsBits = 0;
      v36.value._object = 0;
      v32.value.super.isa = 0;
      v32.is_nil = 0;
      v21.value = 1;
      isa = sub_1007A30C4(v34, v36, v32, v21, 0xFFFFFFFFFFFFFFFFLL, v18, v24).super.super.isa;
      [a1 insertSiblingMenu:isa afterMenuForIdentifier:v26];

      v17.super.super.isa = sub_10021918C();
      [a1 insertSiblingMenu:v17.super.super.isa afterMenuForIdentifier:UIMenuEdit];
    }

    [a1 removeMenuForIdentifier:UIMenuSpelling];
    [a1 removeMenuForIdentifier:UIMenuSubstitutions];
    [a1 removeMenuForIdentifier:UIMenuTransformations];
    v23 = sub_100219850();
    [a1 insertSiblingMenu:v23 beforeMenuForIdentifier:UIMenuFind];

    return [a1 removeMenuForIdentifier:UIMenuFind];
  }

  return result;
}

uint64_t sub_10021A6C0()
{
  v0 = sub_10079ACE4();
  sub_100009A38(v0, qword_100AD5B50);
  sub_100008B98(v0, qword_100AD5B50);
  return sub_10079ACD4();
}

void *sub_10021A744(void *result)
{
  v2 = *(v1 + OBJC_IVAR___BKFrontmostAssetTracker_frontmostTracker);
  if (result)
  {
    if (v2 == result)
    {
      return result;
    }

    if (!v2)
    {
      goto LABEL_7;
    }
  }

  else if (!v2)
  {
    return result;
  }

  swift_allocObject();
  swift_unknownObjectUnownedInit();
  v3 = v2;

  sub_10079E8A4();

LABEL_7:

  return sub_10021A814();
}

uint64_t sub_10021A814()
{
  v1 = v0;
  v2 = *&v0[OBJC_IVAR___BKFrontmostAssetTracker_frontmostTracker];
  if (v2)
  {
    v3 = v2;
    v4 = sub_10079E894();
  }

  else
  {
    v4 = 0;
  }

  if (qword_100AD1298 != -1)
  {
    swift_once();
  }

  v5 = sub_10079ACE4();
  sub_100008B98(v5, qword_100AD5B50);
  v6 = v1;
  v7 = sub_10079ACC4();
  v8 = sub_1007A29D4();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412546;
    *(v9 + 4) = v6;
    *v10 = v6;
    *(v9 + 12) = 1024;
    *(v9 + 14) = v4 & 1;
    v11 = v6;
    _os_log_impl(&_mh_execute_header, v7, v8, "%@: window is frontmost => %{BOOL}d", v9, 0x12u);
    sub_100025F24(v10);
  }

  v12 = &v6[OBJC_IVAR___BKFrontmostAssetTracker_state];
  v13 = v6[OBJC_IVAR___BKFrontmostAssetTracker_state];
  v14 = v6[OBJC_IVAR___BKFrontmostAssetTracker_state + 1];
  *v12 = v13;
  v12[1] = v4 & 1;
  if (v14)
  {
    v15 = 256;
  }

  else
  {
    v15 = 0;
  }

  return sub_10021A9DC(v15 | v13);
}

uint64_t sub_10021A9DC(uint64_t result)
{
  v2 = v1[OBJC_IVAR___BKFrontmostAssetTracker_state] & v1[OBJC_IVAR___BKFrontmostAssetTracker_state + 1];
  if (result)
  {
    if ((v2 & 1) == (result & 0x100) >> 8)
    {
      return result;
    }
  }

  else if ((v1[OBJC_IVAR___BKFrontmostAssetTracker_state] & v1[OBJC_IVAR___BKFrontmostAssetTracker_state + 1] & 1) == 0)
  {
    return result;
  }

  if (qword_100AD1298 != -1)
  {
    swift_once();
  }

  v3 = sub_10079ACE4();
  sub_100008B98(v3, qword_100AD5B50);
  v4 = v1;
  v5 = sub_10079ACC4();
  v6 = sub_1007A29D4();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412546;
    *(v7 + 4) = v4;
    *v8 = v4;
    *(v7 + 12) = 1024;
    *(v7 + 14) = v2 & 1;
    v9 = v4;
    _os_log_impl(&_mh_execute_header, v5, v6, "%@: is frontmost => %{BOOL}d", v7, 0x12u);
    sub_100025F24(v8);
  }

  v10 = &v4[OBJC_IVAR___BKFrontmostAssetTracker_onFrontmostChanged];
  result = swift_beginAccess();
  v11 = *v10;
  if (*v10)
  {
    v12 = *(v10 + 1);

    v11(v2 & 1);
    return sub_100007020(v11, v12);
  }

  return result;
}

uint64_t FrontmostAssetTracker.onFrontmostChanged.getter()
{
  v1 = (v0 + OBJC_IVAR___BKFrontmostAssetTracker_onFrontmostChanged);
  swift_beginAccess();
  v2 = *v1;
  sub_1000260E8(*v1, v1[1]);
  return v2;
}

uint64_t FrontmostAssetTracker.onFrontmostChanged.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR___BKFrontmostAssetTracker_onFrontmostChanged);
  swift_beginAccess();
  v6 = *v5;
  v7 = v5[1];
  *v5 = a1;
  v5[1] = a2;
  return sub_100007020(v6, v7);
}

_BYTE *FrontmostAssetTracker.init(assetID:window:onFrontmostChanged:)(uint64_t a1, unint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  ObjectType = swift_getObjectType();
  v10 = [objc_opt_self() sharedApplication];
  if ([objc_opt_self() appKitBundleClass])
  {
    ObjCClassMetadata = swift_getObjCClassMetadata();
  }

  else
  {
    ObjCClassMetadata = 0;
  }

  v12 = [objc_opt_self() delegate];
  v13 = [v12 appLaunchCoordinator];

  v14 = objc_allocWithZone(ObjectType);
  *&v14[OBJC_IVAR___BKFrontmostAssetTracker_frontmostTracker] = 0;
  *&v14[OBJC_IVAR___BKFrontmostAssetTracker_state] = 0;
  v15 = &v14[OBJC_IVAR___BKFrontmostAssetTracker_onFrontmostChanged];
  *v15 = 0;
  *(v15 + 1) = 0;
  v16 = &v14[OBJC_IVAR___BKFrontmostAssetTracker_assetID];
  v42 = a1;
  *v16 = a1;
  *(v16 + 1) = a2;
  *&v14[OBJC_IVAR___BKFrontmostAssetTracker_uiApplication] = v10;
  *&v14[OBJC_IVAR___BKFrontmostAssetTracker_appKitBundle] = ObjCClassMetadata;
  v46.receiver = v14;
  v46.super_class = ObjectType;

  v17 = v10;
  v18 = objc_msgSendSuper2(&v46, "init");
  v19 = sub_1007A2214();
  v20 = swift_allocObject();
  swift_unknownObjectWeakInit();
  aBlock[4] = sub_10021BFF0;
  aBlock[5] = v20;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10021B6B0;
  aBlock[3] = &unk_100A0EE38;
  v21 = _Block_copy(aBlock);

  [v13 appLaunchCoordinatorOnConditionMask:32 blockID:v19 performBlock:v21];
  _Block_release(v21);

  v43 = a3;
  FrontmostAssetTracker.window.setter(a3);
  if (qword_100AD1298 != -1)
  {
    swift_once();
  }

  v22 = sub_10079ACE4();
  sub_100008B98(v22, qword_100AD5B50);

  v23 = sub_10079ACC4();
  v24 = sub_1007A29D4();

  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v41 = a5;
    v27 = swift_slowAlloc();
    aBlock[0] = v27;
    *v25 = 138412803;
    *(v25 + 4) = v18;
    *v26 = v18;
    *(v25 + 12) = 2160;
    *(v25 + 14) = 1752392040;
    *(v25 + 22) = 2081;
    v28 = v18;
    v29 = v17;
    v30 = sub_1000070F4(v42, a2, aBlock);

    *(v25 + 24) = v30;
    v17 = v29;
    _os_log_impl(&_mh_execute_header, v23, v24, "%@: assetID: %{private,mask.hash}s", v25, 0x20u);
    sub_100025F24(v26);

    sub_1000074E0(v27);
    a5 = v41;
  }

  else
  {
  }

  v31 = v18;
  v32 = sub_10079ACC4();
  v33 = sub_1007A29D4();
  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    *v34 = 138412546;
    *(v34 + 4) = v31;
    *v35 = v18;
    *(v34 + 12) = 1024;
    *(v34 + 14) = v31[OBJC_IVAR___BKFrontmostAssetTracker_state] & v31[OBJC_IVAR___BKFrontmostAssetTracker_state + 1] & 1;
    _os_log_impl(&_mh_execute_header, v32, v33, "%@: initial is frontmost: %{BOOL}d", v34, 0x12u);
    sub_100025F24(v35);

    v36 = v43;
  }

  else
  {

    v36 = v17;
    v17 = v31;
  }

  swift_unknownObjectRelease();
  v37 = &v31[OBJC_IVAR___BKFrontmostAssetTracker_onFrontmostChanged];
  swift_beginAccess();
  v38 = *v37;
  v39 = v37[1];
  *v37 = a4;
  v37[1] = a5;
  sub_100007020(v38, v39);

  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v31;
}

void sub_10021B4F8(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    sub_10021B54C();
  }
}

uint64_t sub_10021B54C()
{
  if (qword_100AD1298 != -1)
  {
    swift_once();
  }

  v1 = sub_10079ACE4();
  sub_100008B98(v1, qword_100AD5B50);
  v2 = v0;
  v3 = sub_10079ACC4();
  v4 = sub_1007A29D4();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    *(v5 + 4) = v2;
    *v6 = v2;
    v7 = v2;
    _os_log_impl(&_mh_execute_header, v3, v4, "%@: app launch completed", v5, 0xCu);
    sub_100025F24(v6);
  }

  v8 = &v2[OBJC_IVAR___BKFrontmostAssetTracker_state];
  v9 = v2[OBJC_IVAR___BKFrontmostAssetTracker_state + 1];
  v10 = v2[OBJC_IVAR___BKFrontmostAssetTracker_state];
  *v8 = 1;
  v8[1] = v9;
  if (v9)
  {
    v11 = 256;
  }

  else
  {
    v11 = 0;
  }

  return sub_10021A9DC(v11 | v10);
}

uint64_t sub_10021B6B0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);
}

void FrontmostAssetTracker.window.setter(void *a1)
{
  v2 = v1;
  v3 = a1;
  v4 = OBJC_IVAR___BKFrontmostAssetTracker_frontmostTracker;
  v5 = *&v1[OBJC_IVAR___BKFrontmostAssetTracker_frontmostTracker];
  if (v5)
  {
    v6 = v5;
    v7 = sub_10079E8C4();

    if (!v3)
    {

      if (qword_100AD1298 != -1)
      {
        swift_once();
      }

      v29 = sub_10079ACE4();
      sub_100008B98(v29, qword_100AD5B50);
      v30 = v2;
      v31 = sub_10079ACC4();
      v32 = sub_1007A29D4();

      if (os_log_type_enabled(v31, v32))
      {
        v33 = swift_slowAlloc();
        v34 = swift_slowAlloc();
        *v33 = 138412290;
        *(v33 + 4) = v30;
        *v34 = v30;
        v35 = v30;
        _os_log_impl(&_mh_execute_header, v31, v32, "%@: window => nil", v33, 0xCu);
        sub_100025F24(v34);
      }

      v36 = *&v2[v4];
      v42 = v36;
      if (v36)
      {
        v37 = v36;
        sub_10079E8A4();
        v38 = *&v2[v4];
      }

      else
      {
        v38 = 0;
      }

      *&v2[v4] = 0;

      sub_10021A744(v42);
      goto LABEL_25;
    }

    sub_10021C000();
    v40 = v3;
    v8 = sub_1007A3184();

    a1 = v40;
    if (v8)
    {
      goto LABEL_26;
    }
  }

  else if (!a1)
  {
    return;
  }

  v41 = a1;
  if (qword_100AD1298 != -1)
  {
    swift_once();
  }

  v9 = sub_10079ACE4();
  sub_100008B98(v9, qword_100AD5B50);
  v10 = v3;
  v11 = v2;
  v12 = sub_10079ACC4();
  v13 = sub_1007A29D4();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    *v14 = 138412546;
    *(v14 + 4) = v11;
    *(v14 + 12) = 2112;
    *(v14 + 14) = v41;
    *v15 = v11;
    v15[1] = v41;
    v16 = v10;
    v17 = v11;
    _os_log_impl(&_mh_execute_header, v12, v13, "%@: window => %@", v14, 0x16u);
    sub_1001F1160(&unk_100AD9480, &qword_1008113B0);
    swift_arrayDestroy();
  }

  v18 = *&v11[OBJC_IVAR___BKFrontmostAssetTracker_uiApplication];
  v19 = objc_allocWithZone(sub_10079E8D4());
  v20 = v10;
  v21 = v18;
  v22 = sub_10079E8B4();
  v23 = *&v2[v4];
  v42 = v23;
  if (v23)
  {
    v24 = v23;
    v25 = v22;
    v26 = sub_1007A3184();

    v27 = *&v2[v4];
    if ((v26 & 1) == 0 && v27)
    {
      v28 = v27;
      sub_10079E8A4();

      v27 = *&v2[v4];
    }
  }

  else
  {
    v27 = 0;
  }

  *&v2[v4] = v22;
  v39 = v22;

  sub_10021A744(v42);
LABEL_25:
  a1 = v42;
LABEL_26:
}

id FrontmostAssetTracker.__deallocating_deinit(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v5 = *&v2[OBJC_IVAR___BKFrontmostAssetTracker_frontmostTracker];
  if (v5)
  {
    v6 = v5;
    sub_10079E8A4();
  }

  v8.receiver = v3;
  v8.super_class = ObjectType;
  return objc_msgSendSuper2(&v8, "dealloc");
}

uint64_t FrontmostAssetTracker.window.getter()
{
  v1 = *(v0 + OBJC_IVAR___BKFrontmostAssetTracker_frontmostTracker);
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_10079E8C4();

  return v3;
}

void (*FrontmostAssetTracker.window.modify(uint64_t *a1))(void **a1, char a2)
{
  a1[1] = v1;
  v3 = *(v1 + OBJC_IVAR___BKFrontmostAssetTracker_frontmostTracker);
  if (v3)
  {
    v4 = v3;
    v5 = sub_10079E8C4();
  }

  else
  {
    v5 = 0;
  }

  *a1 = v5;
  return sub_10021BE34;
}

void sub_10021BE34(void **a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    v3 = v2;
    FrontmostAssetTracker.window.setter(v2);
  }

  else
  {
    FrontmostAssetTracker.window.setter(*a1);
  }
}

char *sub_10021BEFC(char *result, int64_t a2, char a3, char *a4)
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
    sub_1001F1160(&qword_100AD5BC8, &qword_100811448);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
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

unint64_t sub_10021C000()
{
  result = qword_100AD5B98;
  if (!qword_100AD5B98)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100AD5B98);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for FrontmostAssetTracker.State(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 65281 <= 0xFFFEFFFF)
  {
    v2 = 2;
  }

  else
  {
    v2 = 4;
  }

  if (a2 + 65281 < 0xFF0000)
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
      return (*a1 | (v4 << 16)) - 65281;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 16)) - 65281;
    }

    v4 = *(a1 + 2);
    if (*(a1 + 2))
    {
      return (*a1 | (v4 << 16)) - 65281;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

_WORD *storeEnumTagSinglePayload for FrontmostAssetTracker.State(_WORD *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65281 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65281 < 0xFF0000)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 16) + 1;
    *result = a2 - 255;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        result[1] = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 2) = v5;
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

    result[1] = 0;
  }

  else if (v4)
  {
    *(result + 2) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

void sub_10021C1E8()
{
  Strong = swift_unknownObjectUnownedLoadStrong();
  sub_10021A814();
}

uint64_t sub_10021C240()
{
  v0 = sub_1001F1160(&qword_100AD5CC0, &qword_1008110A0);
  __chkstk_darwin(v0 - 8);
  v28 = v21 - v1;
  v2 = sub_1007967F4();
  v26 = *(v2 - 8);
  v27 = v2;
  __chkstk_darwin(v2);
  v4 = (v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v25 = sub_100796CF4();
  v5 = *(v25 - 8);
  __chkstk_darwin(v25);
  v22 = v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = v21 - v8;
  v10 = sub_1007A21D4();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = v21 - v15;
  v17 = sub_100796814();
  v23 = *(v17 - 8);
  v24 = v17;
  __chkstk_darwin(v17);
  v18 = sub_100796314();
  sub_100009A38(v18, qword_100B22EB0);
  v21[1] = sub_100008B98(v18, qword_100B22EB0);
  sub_1007A2154();
  sub_100796C94();
  (*(v11 + 16))(v13, v16, v10);
  v19 = v25;
  (*(v5 + 16))(v22, v9, v25);
  *v4 = type metadata accessor for BundleFinder();
  (*(v26 + 104))(v4, enum case for LocalizedStringResource.BundleDescription.forClass(_:), v27);
  sub_100796834();
  (*(v5 + 8))(v9, v19);
  (*(v11 + 8))(v16, v10);
  (*(v23 + 56))(v28, 1, 1, v24);
  return sub_100796304();
}

uint64_t sub_10021C65C()
{
  v0 = sub_1001F1160(&qword_100AD5D10, &qword_1008110F0);
  __chkstk_darwin(v0 - 8);
  v245 = &v221 - v1;
  v2 = sub_1001F1160(&qword_100AD5CC0, &qword_1008110A0);
  __chkstk_darwin(v2 - 8);
  v248 = &v221 - v3;
  v264 = sub_1007967F4();
  v267 = *(v264 - 8);
  __chkstk_darwin(v264);
  v252 = (&v221 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v246 = sub_100796CF4();
  v5 = *(v246 - 8);
  __chkstk_darwin(v246);
  v261 = &v221 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v221 - v8;
  v10 = sub_1007A21D4();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v221 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v221 - v15;
  v265 = sub_100796814();
  v244 = *(v265 - 8);
  v247 = v244;
  __chkstk_darwin(v265);
  v251 = &v221 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v243 = &v221 - v19;
  sub_1001F1160(&qword_100AD5D18, &unk_1008119A0);
  v20 = sub_1001F1160(&qword_100AD3B60, &qword_10080CD00);
  v240 = v20;
  v21 = *(v20 - 8);
  v239 = *(v21 + 72);
  v22 = (*(v21 + 80) + 32) & ~*(v21 + 80);
  v225 = (8 * v239);
  v23 = swift_allocObject();
  v226 = v23;
  *(v23 + 16) = xmmword_100811450;
  v241 = v23 + v22;
  v224 = *(v20 + 48);
  *(v23 + v22) = 0;
  sub_1007A2154();
  v24 = v9;
  sub_100796C94();
  v25 = *(v11 + 16);
  v263 = v11 + 16;
  v256 = v25;
  v26 = v16;
  v25(v13, v16, v10);
  v268 = *(v5 + 16);
  v266 = v5 + 16;
  v27 = v246;
  v268(v261, v24, v246);
  v262 = type metadata accessor for BundleFinder();
  v28 = v252;
  *v252 = v262;
  v259 = enum case for LocalizedStringResource.BundleDescription.forClass(_:);
  v29 = *(v267 + 104);
  v267 += 104;
  v258 = v29;
  v29(v28);
  sub_100796834();
  v30 = *(v5 + 8);
  v260 = v5 + 8;
  v254 = v30;
  v30(v24, v27);
  v253 = *(v11 + 8);
  v257 = v11 + 8;
  v255 = v10;
  v253(v26, v10);
  v31 = v247;
  v32 = *(v247 + 56);
  v237 = v247 + 56;
  v238 = v32;
  v32(v248, 1, 1, v265);
  v235 = sub_100796104();
  v33 = *(v235 - 8);
  v234 = *(v33 + 56);
  v236 = v33 + 56;
  v234(v245, 1, 1, v235);
  v233 = sub_1001F1160(&qword_100AD4A80, &qword_1008119B0);
  v242 = *(v244 + 72);
  v232 = *(v31 + 80);
  v231 = ((v232 + 32) & ~v232) + 2 * v242;
  v34 = (v232 + 32) & ~v232;
  v230 = v34;
  v35 = swift_allocObject();
  v229 = xmmword_10080EFF0;
  v223 = v35;
  *(v35 + 16) = xmmword_10080EFF0;
  v227 = v35 + v34;
  v249 = v26;
  sub_1007A2154();
  sub_100796C94();
  v250 = v13;
  v36 = v256;
  v256(v13, v26, v10);
  v37 = v27;
  v268(v261, v24, v27);
  v38 = v252;
  *v252 = v262;
  v39 = v259;
  v40 = v258;
  v258(v38, v259, v264);
  v41 = v251;
  sub_100796834();
  v254(v24, v37);
  v42 = v249;
  v43 = v255;
  v253(v249, v255);
  v44 = v247 + 32;
  v244 = *(v247 + 32);
  (v244)(v227, v41, v265);
  v247 = v44;
  sub_1007A2154();
  sub_100796C94();
  v36(v250, v42, v43);
  v45 = v246;
  v268(v261, v24, v246);
  v46 = v252;
  *v252 = v262;
  v40(v46, v39, v264);
  v47 = v251;
  sub_100796834();
  v254(v24, v45);
  v48 = v249;
  v49 = v255;
  v253(v249, v255);
  v50 = v47;
  v51 = v265;
  (v244)(v227 + v242, v50, v265);
  v52 = v241;
  v53 = v245;
  sub_100796114();
  v223 = v52 + v239;
  v224 = *(v240 + 48);
  *v223 = 1;
  sub_1007A2154();
  sub_100796C94();
  v256(v250, v48, v49);
  v54 = v45;
  v268(v261, v24, v45);
  v55 = v252;
  *v252 = v262;
  v56 = v259;
  v258(v55, v259, v264);
  sub_100796834();
  v57 = v24;
  v58 = v254;
  v254(v24, v54);
  v59 = v249;
  v60 = v255;
  v253(v249, v255);
  v238(v248, 1, 1, v51);
  v234(v53, 1, 1, v235);
  v61 = swift_allocObject();
  v222 = v61;
  *(v61 + 16) = v229;
  v227 = v61 + v230;
  sub_1007A2154();
  sub_100796C94();
  v62 = v256;
  v256(v250, v59, v60);
  v63 = v54;
  v268(v261, v57, v54);
  v64 = v252;
  *v252 = v262;
  v258(v64, v56, v264);
  v65 = v251;
  sub_100796834();
  v66 = v57;
  v58(v57, v63);
  v67 = v255;
  v253(v59, v255);
  v68 = v244;
  (v244)(v227, v65, v265);
  sub_1007A2154();
  sub_100796C94();
  v62(v250, v59, v67);
  v268(v261, v57, v63);
  v69 = v252;
  *v252 = v262;
  v258(v69, v259, v264);
  v70 = v251;
  sub_100796834();
  v254(v66, v63);
  v71 = v249;
  v72 = v255;
  v253(v249, v255);
  v68(v227 + v242, v70, v265);
  v73 = v245;
  sub_100796114();
  v224 = 2 * v239;
  v222 = (v241 + 2 * v239);
  v223 = *(v240 + 48);
  *v222 = 2;
  sub_1007A2154();
  sub_100796C94();
  v74 = v250;
  v256(v250, v71, v72);
  v75 = v261;
  v76 = v246;
  v268(v261, v66, v246);
  *v69 = v262;
  v258(v69, v259, v264);
  v77 = v75;
  sub_100796834();
  v78 = v254;
  v254(v66, v76);
  v79 = v249;
  v80 = v255;
  v253(v249, v255);
  v238(v248, 1, 1, v265);
  v234(v73, 1, 1, v235);
  v81 = swift_allocObject();
  v221 = v81;
  *(v81 + 16) = v229;
  v227 = v81 + v230;
  sub_1007A2154();
  sub_100796C94();
  v256(v74, v79, v80);
  v268(v77, v66, v76);
  v82 = v252;
  *v252 = v262;
  v83 = v259;
  v84 = v264;
  v258(v82, v259, v264);
  v85 = v251;
  sub_100796834();
  v86 = v76;
  v78(v66, v76);
  v87 = v249;
  v88 = v255;
  v89 = v253;
  v253(v249, v255);
  v90 = v244;
  (v244)(v227, v85, v265);
  sub_1007A2154();
  v228 = v66;
  sub_100796C94();
  v91 = v250;
  v256(v250, v87, v88);
  v268(v261, v66, v86);
  v92 = v252;
  *v252 = v262;
  v258(v92, v83, v84);
  v93 = v251;
  v94 = v91;
  sub_100796834();
  v95 = v228;
  v96 = v254;
  v254(v228, v86);
  v97 = v87;
  v98 = v87;
  v99 = v255;
  v89(v98, v255);
  v90(v227 + v242, v93, v265);
  v100 = v248;
  v101 = v245;
  sub_100796114();
  v223 = v241 + v224 + v239;
  v224 = *(v240 + 48);
  *v223 = 3;
  sub_1007A2154();
  sub_100796C94();
  v256(v94, v97, v99);
  v102 = v246;
  v268(v261, v95, v246);
  v103 = v252;
  *v252 = v262;
  v258(v103, v259, v264);
  v104 = v103;
  sub_100796834();
  v105 = v228;
  v96(v228, v102);
  v106 = v255;
  v107 = v253;
  v253(v97, v255);
  v238(v100, 1, 1, v265);
  v234(v101, 1, 1, v235);
  v108 = swift_allocObject();
  v222 = v108;
  *(v108 + 16) = v229;
  v227 = v108 + v230;
  sub_1007A2154();
  sub_100796C94();
  v256(v94, v97, v106);
  v109 = v105;
  v268(v261, v105, v102);
  v110 = v104;
  v111 = v262;
  *v110 = v262;
  v112 = v258;
  v258(v110, v259, v264);
  v113 = v251;
  sub_100796834();
  v114 = v109;
  v115 = v254;
  v254(v109, v102);
  v116 = v249;
  v117 = v255;
  v107(v249, v255);
  v118 = v265;
  v119 = v244;
  (v244)(v227, v113, v265);
  v120 = v116;
  sub_1007A2154();
  sub_100796C94();
  v256(v250, v116, v117);
  v121 = v246;
  v268(v261, v114, v246);
  v122 = v252;
  *v252 = v111;
  v123 = v122;
  v112();
  v124 = v251;
  sub_100796834();
  v125 = v228;
  v115(v228, v121);
  v126 = v120;
  v127 = v120;
  v128 = v255;
  v129 = v253;
  v253(v127, v255);
  v119(v227 + v242, v124, v118);
  v130 = v248;
  v131 = v245;
  sub_100796114();
  v224 = 4 * v239;
  v222 = (v241 + 4 * v239);
  v223 = *(v240 + 48);
  *v222 = 4;
  v132 = v126;
  sub_1007A2154();
  v133 = v125;
  sub_100796C94();
  v134 = v250;
  v256(v250, v132, v128);
  v135 = v261;
  v136 = v246;
  v268(v261, v133, v246);
  *v123 = v262;
  v258(v123, v259, v264);
  v137 = v134;
  v138 = v135;
  v139 = v123;
  sub_100796834();
  v140 = v133;
  v254(v133, v136);
  v141 = v249;
  v142 = v255;
  v129(v249, v255);
  v238(v130, 1, 1, v265);
  v234(v131, 1, 1, v235);
  v143 = swift_allocObject();
  v221 = v143;
  *(v143 + 16) = v229;
  v227 = v143 + v230;
  sub_1007A2154();
  v144 = v140;
  sub_100796C94();
  v145 = v256;
  v256(v137, v141, v142);
  v146 = v138;
  v147 = v144;
  v148 = v144;
  v149 = v268;
  v268(v146, v147, v136);
  *v139 = v262;
  v258(v139, v259, v264);
  v150 = v251;
  sub_100796834();
  v254(v148, v136);
  v151 = v253;
  v253(v141, v142);
  v152 = v244;
  (v244)(v227, v150, v265);
  sub_1007A2154();
  v153 = v228;
  sub_100796C94();
  v145(v250, v141, v142);
  v154 = v153;
  v155 = v246;
  v149(v261, v153, v246);
  v156 = v252;
  *v252 = v262;
  v258(v156, v259, v264);
  v157 = v251;
  sub_100796834();
  v254(v154, v155);
  v158 = v249;
  v159 = v255;
  v151(v249, v255);
  v152(v227 + v242, v157, v265);
  v160 = v248;
  sub_100796114();
  v223 = v241 + v224 + v239;
  v224 = *(v240 + 48);
  *v223 = 5;
  sub_1007A2154();
  sub_100796C94();
  v161 = v250;
  v162 = v159;
  v256(v250, v158, v159);
  v163 = v261;
  v164 = v246;
  v268(v261, v154, v246);
  v165 = v252;
  *v252 = v262;
  v258(v165, v259, v264);
  sub_100796834();
  v254(v154, v164);
  v253(v158, v162);
  v238(v160, 1, 1, v265);
  v234(v245, 1, 1, v235);
  v166 = swift_allocObject();
  v222 = v166;
  *(v166 + 16) = v229;
  v227 = v166 + v230;
  sub_1007A2154();
  sub_100796C94();
  v256(v161, v158, v162);
  v268(v163, v154, v164);
  v167 = v165;
  v168 = v262;
  *v167 = v262;
  v258(v167, v259, v264);
  v169 = v251;
  sub_100796834();
  v254(v154, v164);
  v170 = v249;
  v171 = v255;
  v253(v249, v255);
  v172 = v244;
  (v244)(v227, v169, v265);
  sub_1007A2154();
  sub_100796C94();
  v173 = v171;
  v256(v250, v170, v171);
  v174 = v246;
  v268(v261, v154, v246);
  *v252 = v168;
  v175 = v258;
  (v258)();
  v176 = v251;
  sub_100796834();
  v177 = v228;
  v178 = v254;
  v254(v228, v174);
  v179 = v249;
  v253(v249, v173);
  v172(v227 + v242, v176, v265);
  v180 = v248;
  v181 = v245;
  sub_100796114();
  v223 = v241 + 6 * v239;
  v224 = *(v240 + 48);
  *v223 = 6;
  sub_1007A2154();
  v182 = v177;
  sub_100796C94();
  v183 = v250;
  v256(v250, v179, v173);
  v268(v261, v182, v174);
  v184 = v252;
  *v252 = v262;
  v175(v184, v259, v264);
  sub_100796834();
  v185 = v182;
  v186 = v174;
  v178(v182, v174);
  v187 = v249;
  v188 = v255;
  v253(v249, v255);
  v238(v180, 1, 1, v265);
  v234(v181, 1, 1, v235);
  v189 = swift_allocObject();
  v222 = v189;
  *(v189 + 16) = v229;
  v227 = v189 + v230;
  sub_1007A2154();
  sub_100796C94();
  v190 = v256;
  v256(v183, v187, v188);
  v268(v261, v185, v186);
  *v184 = v262;
  v258(v184, v259, v264);
  v191 = v251;
  sub_100796834();
  v254(v185, v186);
  v192 = v187;
  v193 = v187;
  v194 = v255;
  v195 = v253;
  v253(v193, v255);
  (v244)(v227, v191, v265);
  sub_1007A2154();
  v196 = v228;
  sub_100796C94();
  v197 = v250;
  v190(v250, v192, v194);
  v198 = v246;
  v268(v261, v196, v246);
  v199 = v252;
  *v252 = v262;
  v258(v199, v259, v264);
  v200 = v251;
  sub_100796834();
  v254(v196, v198);
  v201 = v249;
  v202 = v255;
  v195(v249, v255);
  (v244)(v227 + v242, v200, v265);
  v203 = v248;
  v204 = v245;
  sub_100796114();
  v225 = &v225[v241 - v239];
  v227 = *(v240 + 48);
  *v225 = 7;
  sub_1007A2154();
  sub_100796C94();
  v205 = v197;
  v206 = v197;
  v207 = v201;
  v256(v206, v201, v202);
  v208 = v246;
  v268(v261, v196, v246);
  v209 = v252;
  *v252 = v262;
  v210 = v264;
  v258(v209, v259, v264);
  sub_100796834();
  v254(v196, v208);
  v211 = v255;
  v253(v201, v255);
  v212 = v203;
  v213 = v265;
  v238(v212, 1, 1, v265);
  v234(v204, 1, 1, v235);
  v214 = swift_allocObject();
  v238 = v214;
  *(v214 + 16) = v229;
  v239 = v214 + v230;
  sub_1007A2154();
  sub_100796C94();
  v256(v205, v201, v211);
  v215 = v208;
  v268(v261, v196, v208);
  v216 = v252;
  *v252 = v262;
  v258(v216, v259, v210);
  v217 = v251;
  sub_100796834();
  v254(v196, v215);
  v218 = v255;
  v253(v207, v255);
  (v244)(v239, v217, v213);
  sub_1007A2154();
  sub_100796C94();
  v256(v205, v207, v218);
  v268(v261, v196, v215);
  *v216 = v262;
  v258(v216, v259, v264);
  sub_100796834();
  v254(v196, v215);
  v253(v207, v218);
  (v244)(v239 + v242, v217, v265);
  sub_100796114();
  v219 = sub_1001ED110(v226);
  swift_setDeallocating();
  swift_arrayDestroy();
  result = swift_deallocClassInstance();
  qword_100B22EC8 = v219;
  return result;
}

unint64_t sub_10021F194()
{
  result = qword_100AD5BD0;
  if (!qword_100AD5BD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD5BD0);
  }

  return result;
}

unint64_t sub_10021F204@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100220BE4(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_10021F234(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE900000000000065;
  v4 = 0x646F4D746867696CLL;
  v5 = 0x35656D656874;
  if (v2 != 6)
  {
    v5 = 0x36656D656874;
  }

  v6 = 0x33656D656874;
  if (v2 != 4)
  {
    v6 = 0x34656D656874;
  }

  if (*v1 <= 5u)
  {
    v5 = v6;
  }

  v7 = 0x31656D656874;
  if (v2 != 2)
  {
    v7 = 0x32656D656874;
  }

  if (*v1)
  {
    v4 = 0x65646F4D6B726164;
    v3 = 0xE800000000000000;
  }

  if (*v1 > 1u)
  {
    v4 = v7;
    v3 = 0xE600000000000000;
  }

  if (*v1 <= 3u)
  {
    v8 = v4;
  }

  else
  {
    v8 = v5;
  }

  if (*v1 > 3u)
  {
    v3 = 0xE600000000000000;
  }

  *a1 = v8;
  a1[1] = v3;
}

unint64_t sub_10021F31C()
{
  result = qword_100AD5BD8;
  if (!qword_100AD5BD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD5BD8);
  }

  return result;
}

unint64_t sub_10021F374()
{
  result = qword_100AD5BE0;
  if (!qword_100AD5BE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD5BE0);
  }

  return result;
}

unint64_t sub_10021F3CC()
{
  result = qword_100AD5BE8;
  if (!qword_100AD5BE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD5BE8);
  }

  return result;
}

unint64_t sub_10021F424()
{
  result = qword_100AD5BF0;
  if (!qword_100AD5BF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD5BF0);
  }

  return result;
}

unint64_t sub_10021F478()
{
  result = qword_100AD5BF8;
  if (!qword_100AD5BF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD5BF8);
  }

  return result;
}

unint64_t sub_10021F4CC()
{
  result = qword_100AD5C00;
  if (!qword_100AD5C00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD5C00);
  }

  return result;
}

unint64_t sub_10021F524()
{
  result = qword_100AD5C08;
  if (!qword_100AD5C08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD5C08);
  }

  return result;
}

unint64_t sub_10021F600()
{
  result = qword_100AD5C10;
  if (!qword_100AD5C10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD5C10);
  }

  return result;
}

uint64_t sub_10021F654(uint64_t a1)
{
  v2 = sub_10021F600();

  return static AppEnum.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_10021F6A4()
{
  result = qword_100AD5C18;
  if (!qword_100AD5C18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD5C18);
  }

  return result;
}

unint64_t sub_10021F6FC()
{
  result = qword_100AD5C20;
  if (!qword_100AD5C20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD5C20);
  }

  return result;
}

unint64_t sub_10021F754()
{
  result = qword_100AD5C28;
  if (!qword_100AD5C28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD5C28);
  }

  return result;
}

uint64_t sub_10021F7A8()
{
  if (qword_100AD12A8 != -1)
  {
    swift_once();
  }
}

uint64_t sub_10021F804(uint64_t a1)
{
  v2 = sub_10021F524();

  return CaseDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_10021F8A8()
{
  result = qword_100AD5C40;
  if (!qword_100AD5C40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD5C40);
  }

  return result;
}

uint64_t sub_10021F900()
{
  v0 = sub_1007967F4();
  v25 = *(v0 - 8);
  v26 = v0;
  __chkstk_darwin(v0);
  v2 = (&v21 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0));
  v3 = sub_100796814();
  v27 = *(v3 - 8);
  __chkstk_darwin(v3);
  v24 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_100796CF4();
  v5 = *(v23 - 8);
  __chkstk_darwin(v23);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v21 - v9;
  v11 = sub_1007A21D4();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v21 - v16;
  v22 = v3;
  sub_100009A38(v3, qword_100B22ED0);
  v21 = sub_100008B98(v3, qword_100B22ED0);
  sub_1007A2154();
  sub_100796C94();
  (*(v12 + 16))(v14, v17, v11);
  v18 = v23;
  (*(v5 + 16))(v7, v10, v23);
  *v2 = type metadata accessor for BundleFinder();
  (*(v25 + 104))(v2, enum case for LocalizedStringResource.BundleDescription.forClass(_:), v26);
  v19 = v24;
  sub_100796834();
  (*(v5 + 8))(v10, v18);
  (*(v12 + 8))(v17, v11);
  return (*(v27 + 32))(v21, v19, v22);
}

uint64_t sub_10021FCFC()
{
  v0 = sub_1001F1160(&qword_100AD5CF0, &qword_100811928);
  __chkstk_darwin(v0 - 8);
  v1 = sub_1001F1160(&qword_100AD5CF8, &qword_100811930);
  __chkstk_darwin(v1);
  sub_1002200FC();
  sub_1007961D4();
  v3._object = 0x80000001008C44C0;
  v3._countAndFlagsBits = 0xD00000000000001ALL;
  sub_1007961C4(v3);
  swift_getKeyPath();
  sub_1001F1160(&qword_100AD5D00, &qword_100811960);
  sub_1007961B4();

  v4._countAndFlagsBits = 32;
  v4._object = 0xE100000000000000;
  sub_1007961C4(v4);
  swift_getKeyPath();
  sub_1001F1160(&qword_100AD5D08, &unk_100811990);
  sub_1007961B4();

  v5._countAndFlagsBits = 0;
  v5._object = 0xE000000000000000;
  sub_1007961C4(v5);
  sub_1007961F4();
  return sub_1007961A4();
}

uint64_t sub_10021FF1C(uint64_t a1)
{
  v2 = sub_100795DD4();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  (*(v3 + 16))(&v7 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v2, v4);
  sub_100795E04();
  return (*(v3 + 8))(a1, v2);
}

void (*sub_10022000C(uint64_t *a1))(void *)
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
  *(v2 + 32) = sub_100795DE4();
  return sub_100220080;
}

void (*sub_100220084(uint64_t *a1))(void *)
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
  *(v2 + 32) = sub_100795DE4();
  return sub_100221994;
}

unint64_t sub_1002200FC()
{
  result = qword_100AF5060;
  if (!qword_100AF5060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF5060);
  }

  return result;
}

unint64_t sub_100220154()
{
  result = qword_100AD5C50;
  if (!qword_100AD5C50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD5C50);
  }

  return result;
}

unint64_t sub_1002201AC()
{
  result = qword_100AD5C58;
  if (!qword_100AD5C58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD5C58);
  }

  return result;
}

uint64_t sub_1002202B8()
{
  sub_100221870();
  swift_allocError();
  swift_willThrow();
  v1 = *(v0 + 8);

  return v1();
}

char *sub_100220340@<X0>(char **a1@<X8>)
{
  result = sub_100220C30();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_100220368(uint64_t a1)
{
  v2 = sub_1002200FC();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

const char *sub_1002203A4()
{
  v0 = sub_1001F1160(&qword_100AD5D20, &qword_1008119B8);
  v1 = v0 - 8;
  __chkstk_darwin(v0);
  v3 = &v12[-v2];
  v4 = sub_100795DD4();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v12[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_100795DF4();
  v8 = v12[15];
  sub_100795DF4();
  v9 = *(v1 + 56);
  *v3 = v8;
  (*(v5 + 32))(&v3[v9], v7, v4);
  v10 = (*(v5 + 88))(&v3[v9], v4);
  if (v8 > 3)
  {
    if (v8 > 5)
    {
      if (v10 != enum case for ChangeOperation.disable(_:))
      {
LABEL_11:
        if (v10 == enum case for ChangeOperation.enable(_:))
        {
          return "books_enableTheme:";
        }

        if (v10 == enum case for ChangeOperation.toggle(_:))
        {
          return "books_toggleTheme:";
        }

        goto LABEL_23;
      }
    }

    else if (v10 != enum case for ChangeOperation.disable(_:))
    {
      goto LABEL_11;
    }

    return "books_disableTheme:";
  }

  if (v8 > 1)
  {
    if (v10 != enum case for ChangeOperation.disable(_:))
    {
      goto LABEL_11;
    }

    return "books_disableTheme:";
  }

  if (v8)
  {
    if (v10 == enum case for ChangeOperation.disable(_:))
    {
      return "books_disableDarkAppearance:";
    }

    if (v10 != enum case for ChangeOperation.enable(_:))
    {
      goto LABEL_21;
    }

    return "books_enableDarkAppearance:";
  }

  if (v10 == enum case for ChangeOperation.disable(_:))
  {
    return "books_enableDarkAppearance:";
  }

  if (v10 == enum case for ChangeOperation.enable(_:))
  {
    return "books_disableDarkAppearance:";
  }

LABEL_21:
  if (v10 == enum case for ChangeOperation.toggle(_:))
  {
    return "books_toggleDarkAppearance:";
  }

LABEL_23:
  sub_1002218C4(v3);
  return 0;
}

void *sub_100220620@<X0>(void *a1@<X8>)
{
  sub_100795DF4();
  v2 = type metadata accessor for ThemeIDProvider();
  v3 = objc_allocWithZone(v2);
  v3[OBJC_IVAR____TtC5Books15ThemeIDProvider_setting] = v6;
  v5.receiver = v3;
  v5.super_class = v2;
  result = objc_msgSendSuper2(&v5, "init");
  a1[3] = v2;
  *a1 = result;
  return result;
}

id sub_100220744(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for ThemeIDProvider();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t getEnumTagSinglePayload for BookThemeSetting(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF9)
  {
    goto LABEL_17;
  }

  if (a2 + 7 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 7) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 7;
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

      return (*a1 | (v4 << 8)) - 7;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 7;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v8 = v6 - 8;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for BookThemeSetting(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF9)
  {
    v4 = 0;
  }

  if (a2 > 0xF8)
  {
    v5 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
    *result = a2 + 7;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_1002208FC@<X0>(uint64_t a1@<X8>)
{
  v21 = a1;
  v20 = sub_1007967F4();
  v1 = *(v20 - 8);
  __chkstk_darwin(v20);
  v3 = (&v19 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = sub_100796CF4();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v19 - v9;
  v11 = sub_1007A21D4();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v19 - v16;
  sub_1007A2154();
  sub_100796C94();
  (*(v12 + 16))(v14, v17, v11);
  (*(v5 + 16))(v7, v10, v4);
  *v3 = type metadata accessor for BundleFinder();
  (*(v1 + 104))(v3, enum case for LocalizedStringResource.BundleDescription.forClass(_:), v20);
  sub_100796834();
  (*(v5 + 8))(v10, v4);
  return (*(v12 + 8))(v17, v11);
}

unint64_t sub_100220BE4(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_100A0BDE8;
  v6._object = a2;
  v4 = sub_1007A3964(v3, v6);

  if (v4 >= 8)
  {
    return 8;
  }

  else
  {
    return v4;
  }
}

char *sub_100220C30()
{
  v82 = sub_100796274();
  v91 = *(v82 - 8);
  __chkstk_darwin(v82);
  v80 = &v58 - ((v0 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1 = sub_1001F1160(&qword_100AD5CB0, &unk_100811910);
  __chkstk_darwin(v1 - 8);
  v79 = &v58 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v78 = &v58 - v4;
  v5 = sub_1001F1160(&qword_100AD5CB8, &unk_100823500);
  __chkstk_darwin(v5 - 8);
  v67 = &v58 - v6;
  v7 = sub_1001F1160(&qword_100AD5CC0, &qword_1008110A0);
  __chkstk_darwin(v7 - 8);
  v73 = &v58 - v8;
  v84 = sub_1007967F4();
  v92 = *(v84 - 8);
  __chkstk_darwin(v84);
  v10 = (&v58 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v69 = sub_100796CF4();
  v11 = *(v69 - 8);
  __chkstk_darwin(v69);
  v13 = &v58 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v58 - v15;
  v17 = sub_1007A21D4();
  v68 = v17;
  v93 = *(v17 - 8);
  v18 = v93;
  __chkstk_darwin(v17);
  v20 = &v58 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v23 = &v58 - v22;
  v81 = sub_100796814();
  v85 = *(v81 - 8);
  __chkstk_darwin(v81);
  v72 = &v58 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = sub_1001F1160(&qword_100AD5CC8, &unk_100823510);
  sub_1007A2154();
  sub_100796C94();
  v83 = *(v18 + 16);
  v77 = v18 + 16;
  v83(v20, v23, v17);
  v25 = v11;
  v26 = *(v11 + 16);
  v89 = v11 + 16;
  v90 = v26;
  v70 = v13;
  v27 = v69;
  v26(v13, v16, v69);
  v88 = type metadata accessor for BundleFinder();
  *v10 = v88;
  v87 = enum case for LocalizedStringResource.BundleDescription.forClass(_:);
  v86 = *(v92 + 104);
  v92 += 104;
  v28 = v10;
  v71 = v10;
  v29 = v84;
  v86(v28);
  sub_100796834();
  v76 = *(v25 + 8);
  v30 = v27;
  v76(v16, v27);
  v75 = v25 + 8;
  v31 = *(v93 + 8);
  v93 += 8;
  v32 = v68;
  v31(v23, v68);
  v74 = v31;
  v58 = v23;
  sub_1007A2154();
  sub_100796C94();
  v59 = v20;
  v83(v20, v23, v32);
  v90(v70, v16, v30);
  v33 = v71;
  *v71 = v88;
  (v86)(v33, v87, v29);
  v34 = v73;
  sub_100796834();
  v76(v16, v30);
  v35 = v58;
  v31(v58, v32);
  v36 = *(v85 + 56);
  v85 += 56;
  v65 = v36;
  v36(v34, 0, 1, v81);
  v37 = enum case for ChangeOperation.enable(_:);
  v38 = sub_100795DD4();
  v39 = *(v38 - 8);
  v40 = v67;
  (*(v39 + 104))(v67, v37, v38);
  (*(v39 + 56))(v40, 0, 1, v38);
  v41 = sub_100795CE4();
  v60 = v41;
  v42 = *(v41 - 8);
  v43 = *(v42 + 56);
  v61 = v43;
  v62 = v42 + 56;
  v43(v78, 1, 1, v41);
  v43(v79, 1, 1, v41);
  v63 = enum case for InputConnectionBehavior.default(_:);
  v44 = *(v91 + 104);
  v91 += 104;
  v64 = v44;
  v44(v80);
  sub_10022182C(&qword_100AD5CD0, &protocol conformance descriptor for ChangeOperation);
  sub_1007A3754();
  sub_10022182C(&qword_100AD5CD8, &protocol conformance descriptor for ChangeOperation);
  v67 = sub_100795E54();
  v66 = sub_1001F1160(&qword_100AD5CE0, &qword_100811920);
  v45 = v35;
  sub_1007A2154();
  v46 = v16;
  sub_100796C94();
  v47 = v59;
  v48 = v68;
  v83(v59, v45, v68);
  v49 = v70;
  v50 = v69;
  v90(v70, v16, v69);
  v51 = v71;
  *v71 = v88;
  (v86)(v51, v87, v84);
  sub_100796834();
  v52 = v76;
  v76(v46, v50);
  v74(v45, v48);
  sub_1007A2154();
  sub_100796C94();
  v83(v47, v45, v48);
  v53 = v50;
  v90(v49, v46, v50);
  *v51 = v88;
  (v86)(v51, v87, v84);
  v54 = v73;
  sub_100796834();
  v52(v46, v53);
  v74(v45, v48);
  v65(v54, 0, 1, v81);
  v94[0] = 0;
  v55 = v60;
  v56 = v61;
  v61(v78, 1, 1, v60);
  v56(v79, 1, 1, v55);
  v64(v80, v63, v82);
  sub_10021F600();
  sub_100795E54();
  return v67;
}

uint64_t sub_10022182C(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_100795DD4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100221870()
{
  result = qword_100AD5CE8;
  if (!qword_100AD5CE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD5CE8);
  }

  return result;
}

uint64_t sub_1002218C4(uint64_t a1)
{
  v2 = sub_1001F1160(&qword_100AD5D20, &qword_1008119B8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_100221940()
{
  result = qword_100AD5D28;
  if (!qword_100AD5D28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD5D28);
  }

  return result;
}

uint64_t LibraryAnalyticsDataProvider.seriesType(for:)@<X0>(uint64_t a3@<X8>)
{
  v4 = BSUIGetLibraryItemStateProvider();
  v5 = sub_1007A2214();
  v6 = [v4 itemStateWithIdentifier:v5];

  swift_unknownObjectRelease();
  v7 = [v6 seriesType];
  swift_unknownObjectRelease();
  if (v7 > 1)
  {
    if (v7 == 2)
    {
      v8 = &enum case for SeriesType.ordered(_:);
      goto LABEL_9;
    }

    if (v7 == 3)
    {
      v8 = &enum case for SeriesType.unOrdered(_:);
      goto LABEL_9;
    }

LABEL_7:
    v9 = sub_100797D14();
    v10 = *(*(v9 - 8) + 56);
    v11 = v9;
    v12 = a3;
    v13 = 1;
    goto LABEL_10;
  }

  if (v7 != 1)
  {
    goto LABEL_7;
  }

  v8 = &enum case for SeriesType.nonSeries(_:);
LABEL_9:
  v14 = *v8;
  v15 = sub_100797D14();
  v17 = *(v15 - 8);
  (*(v17 + 104))(a3, v14, v15);
  v10 = *(v17 + 56);
  v12 = a3;
  v13 = 0;
  v11 = v15;
LABEL_10:

  return v10(v12, v13, 1, v11);
}

uint64_t sub_100221B70(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v5 = type metadata accessor for BuyButtonView(0);
  __chkstk_darwin(v5);
  v7 = (v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7[5] = ObjectType;
  v7[6] = &off_100A0F158;
  v7[2] = v3;
  *(v7 + v5[6]) = swift_getKeyPath();
  sub_1001F1160(&qword_100AD5D70, &qword_10083E860);
  swift_storeEnumTagMultiPayload();
  *(v7 + v5[8]) = swift_getKeyPath();
  sub_1001F1160(&unk_100ADB730, &qword_1008121A0);
  swift_storeEnumTagMultiPayload();
  *(v7 + v5[9]) = swift_getKeyPath();
  sub_1001F1160(&unk_100ADB4C0, &qword_100813DC0);
  swift_storeEnumTagMultiPayload();
  KeyPath = swift_getKeyPath();
  v9 = swift_getKeyPath();
  type metadata accessor for BuyButtonViewModel(0);
  sub_10022471C(&qword_100AD5D78, type metadata accessor for BuyButtonViewModel, &unk_100838748);

  v10 = v3;
  *v7 = sub_10079C024();
  v7[1] = v11;
  v12 = v7 + v5[7];
  type metadata accessor for CGSize(0);
  v17[0] = 0;
  v17[1] = 0;
  sub_10079DFE4();
  v13 = v19;
  *v12 = v18;
  *(v12 + 2) = v13;
  v14 = v7 + v5[10];
  *v14 = KeyPath;
  v14[8] = 0;
  v15 = v7 + v5[11];
  *v15 = v9;
  v15[8] = 0;
  sub_10022471C(&unk_100AD5D80, type metadata accessor for BuyButtonView, &unk_10083E5BC);
  return sub_10079E1B4();
}

char *sub_100221DE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, uint64_t a8, double a9, double a10, double a11, double a12, double a13, double a14, double a15, double a16, double a17, uint64_t a18, unsigned __int8 a19, double a20, double a21, double a22, double a23, double a24, double a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  v72 = a7;
  v73 = a8;
  v71 = a6;
  v32 = sub_1001F1160(&qword_100ADBC20, &qword_100811CB8);
  __chkstk_darwin(v32 - 8);
  v74 = &v55 - v33;
  v34 = sub_10079CAE4();
  v35 = *(v34 - 8);
  __chkstk_darwin(v34);
  v69 = &v55 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v37);
  v39 = &v55 - v38;
  __chkstk_darwin(v40);
  v42 = &v55 - v41;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v44 = result;
    v70 = v42;
    v56 = v39;
    v67 = v35;
    v68 = v34;
    v65 = a27;
    v66 = a28;
    v58 = a25;
    v63 = a23;
    v64 = a24;
    v61 = a21;
    v62 = a22;
    v60 = a20;
    v59 = a19;
    v57 = a17;
    swift_getKeyPath();
    swift_getKeyPath();
    v75 = a2;
    v76 = a3;

    sub_10079B9B4();
    swift_getKeyPath();
    swift_getKeyPath();
    v75 = a4;
    v76 = a5;

    sub_10079B9B4();
    swift_getKeyPath();
    swift_getKeyPath();
    LOBYTE(v75) = v71;

    sub_10079B9B4();
    swift_getKeyPath();
    swift_getKeyPath();
    v75 = v72;
    v76 = v73;

    sub_10079B9B4();
    swift_getKeyPath();
    swift_getKeyPath();
    v75 = *&v57;
    v76 = a18;

    v45 = *&v58;

    sub_10079B9B4();
    swift_getKeyPath();
    swift_getKeyPath();
    LOBYTE(v75) = v59 & 1;

    sub_10079B9B4();
    swift_getKeyPath();
    swift_getKeyPath();
    v75 = *&v60;

    sub_10079B9B4();
    swift_getKeyPath();
    swift_getKeyPath();
    v75 = *&v61;

    sub_10079B9B4();
    swift_getKeyPath();
    swift_getKeyPath();
    v75 = *&v62;

    sub_10079B9B4();
    swift_getKeyPath();
    swift_getKeyPath();
    v75 = *&v63;

    sub_10079B9B4();
    swift_getKeyPath();
    swift_getKeyPath();
    v75 = *&v64;

    sub_10079B9B4();
    if (v45 && (v46 = *(*&v44[OBJC_IVAR____TtC5Books18BuyButtonPresenter_style] + 56), v46 > 0.0))
    {
      swift_getKeyPath();
      swift_getKeyPath();
      v75 = *&v46;

      sub_10079B9B4();
      swift_getKeyPath();
      swift_getKeyPath();
      v75 = v45;
    }

    else
    {
      swift_getKeyPath();
      swift_getKeyPath();
      v75 = 0;

      sub_10079B9B4();
      swift_getKeyPath();
      swift_getKeyPath();
      v75 = 0;
    }

    sub_10079B9B4();
    swift_getKeyPath();
    swift_getKeyPath();
    v48 = v67;
    v47 = v68;
    v49 = v70;
    if (v65)
    {
      v75 = a26;
      v76 = v65;
    }

    else
    {
      v75 = a26;
      v76 = 0;
    }

    sub_10079B9B4();
    v50 = *(*&v44[OBJC_IVAR____TtC5Books18BuyButtonPresenter_style] + 216);
    swift_getKeyPath();
    swift_getKeyPath();
    v75 = v50;

    sub_10079B9B4();
    v51 = v74;
    sub_1002243A8(v66, v74);
    if ((*(v48 + 48))(v51, 1, v47) == 1)
    {

      return sub_10022448C(v51);
    }

    else
    {
      (*(v48 + 32))(v49, v51, v47);
      v52 = *(v48 + 16);
      v53 = v56;
      v52(v56, v49, v47);
      swift_getKeyPath();
      swift_getKeyPath();
      v52(v69, v53, v47);

      sub_10079B9B4();

      v54 = *(v48 + 8);
      v54(v53, v47);
      return (v54)(v70, v47);
    }
  }

  return result;
}

uint64_t sub_10022263C(int a1)
{
  v2 = v1;
  v56 = a1;
  v3 = sub_1001F1160(&qword_100ADBC20, &qword_100811CB8);
  v54 = *(v3 - 8);
  v4 = *(v54 + 64);
  __chkstk_darwin(v3 - 8);
  v55 = &v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v57 = &v41 - v6;
  v7 = OBJC_IVAR____TtC5Books18BuyButtonPresenter_style;
  v8 = *(v1 + OBJC_IVAR____TtC5Books18BuyButtonPresenter_style);
  v9 = v8[12];
  v10 = v8[8];
  v11 = v8[9];
  v52 = v8[11];
  v12 = v8[10];
  v53 = v8[5];
  v13 = v8[3];
  v14 = v8[28];
  v15 = *(*(v1 + OBJC_IVAR____TtC5Books18BuyButtonPresenter_interactor) + OBJC_IVAR____TtC5Books19BuyButtonInteractor_dataManager);
  v16 = *(v15 + 56);
  if (v16)
  {
    v51 = *(v15 + 48);
    v50 = v16;
  }

  else
  {
    v17 = *(v15 + 40);
    if (v17)
    {
      v51 = *(v15 + 32);
      v48 = v2;
      v50 = v17;

      v2 = v48;
    }

    else
    {
      v51 = 0;
      v50 = 0xE000000000000000;
    }
  }

  v45 = v10;
  v18 = *(v15 + 64);
  v59[2] = *(v15 + 48);
  v19 = *(v15 + 80);
  v59[3] = v18;
  v59[4] = v19;
  v60 = *(v15 + 96);
  v20 = *(v15 + 32);
  v59[0] = *(v15 + 16);
  v59[1] = v20;

  v49 = v9;

  v21 = v11;

  v43 = v12;

  v22 = v53;

  sub_1002242F8(v59, v58);
  v48 = sub_100392BD8();
  v47 = v23;
  sub_100224354(v59);
  v24 = *(v2 + v7);
  v25 = OBJC_IVAR____TtC5Books14BuyButtonStyle_maximumContentSizeCategory;
  swift_beginAccess();
  v26 = sub_10079CAE4();
  v27 = *(v26 - 8);
  v42 = v13;
  v44 = v14;
  v28 = v22;
  v29 = v27;
  v30 = v57;
  (*(v27 + 16))(v57, v24 + v25, v26);
  (*(v29 + 56))(v30, 0, 1, v26);
  v46 = sub_100017E74();
  v31 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v32 = v55;
  sub_1002243A8(v30, v55);
  v33 = (*(v54 + 80) + 168) & ~*(v54 + 80);
  v34 = swift_allocObject();
  v35 = v52;
  *(v34 + 16) = v31;
  *(v34 + 24) = v35;
  *(v34 + 40) = 0;
  *(v34 + 48) = 0;
  *(v34 + 32) = v49;
  *(v34 + 56) = 0;
  v36 = v50;
  *(v34 + 64) = v51;
  *(v34 + 72) = v36;
  v37 = v47;
  *(v34 + 80) = v48;
  *(v34 + 88) = v37;
  *(v34 + 96) = v56 & 1;
  v38 = v42;
  *(v34 + 104) = v45;
  *(v34 + 112) = v38;
  *(v34 + 120) = v21;
  *(v34 + 128) = v28;
  v39 = v43;
  *(v34 + 136) = v44;
  *(v34 + 144) = v39;
  *(v34 + 152) = 0;
  *(v34 + 160) = 0;
  sub_100224418(v32, v34 + v33);

  sub_1007A2CD4();

  sub_10022448C(v57);
}

uint64_t sub_100222B1C(int a1)
{
  v52 = a1;
  v2 = sub_1001F1160(&qword_100ADBC20, &qword_100811CB8);
  v48 = *(v2 - 8);
  __chkstk_darwin(v2 - 8);
  v50 = &v41 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = v3;
  __chkstk_darwin(v4);
  v53 = &v41 - v5;
  v6 = OBJC_IVAR____TtC5Books18BuyButtonPresenter_style;
  v7 = *(v1 + OBJC_IVAR____TtC5Books18BuyButtonPresenter_style);
  v8 = OBJC_IVAR____TtC5Books18BuyButtonPresenter_interactor;
  v10 = *(v7 + 128);
  v9 = *(v7 + 136);
  v11 = *(*(v1 + OBJC_IVAR____TtC5Books18BuyButtonPresenter_interactor) + OBJC_IVAR____TtC5Books19BuyButtonInteractor_dataManager);
  v12 = *(v11 + 40);
  if (v12)
  {
    v13 = *(v11 + 32);
    *&v55[0] = v13;
    *(&v55[0] + 1) = v12;
    sub_1002060B4();

    if (sub_1007A28A4())
    {

      v47 = v13;
      v49 = v12;
    }

    else
    {
      v47 = v10;
      v49 = v9;
    }
  }

  else
  {
    v47 = v10;
    v49 = v9;
  }

  v14 = *(v1 + v6);
  v15 = v14[13];
  v16 = v14[14];
  v17 = v14[15];
  v18 = v14[5];
  v19 = v14[3];
  v20 = v14[28];
  v21 = *(*(v1 + v8) + OBJC_IVAR____TtC5Books19BuyButtonInteractor_dataManager);
  v22 = *(v21 + 56);
  if (v22)
  {
    v46 = *(v21 + 48);
    v45 = v22;
  }

  else
  {
    v23 = *(v21 + 40);
    if (v23)
    {
      v46 = *(v21 + 32);
      v45 = v23;
    }

    else
    {
      v46 = 0;
      v45 = 0xE000000000000000;
    }
  }

  v24 = *(v21 + 64);
  v55[2] = *(v21 + 48);
  v25 = *(v21 + 80);
  v55[3] = v24;
  v55[4] = v25;
  v56 = *(v21 + 96);
  v26 = *(v21 + 32);
  v55[0] = *(v21 + 16);
  v55[1] = v26;

  v44 = v15;

  sub_1002242F8(v55, v54);
  v27 = sub_100392BD8();
  v42 = v28;
  sub_100224354(v55);
  v29 = sub_10079CAE4();
  v30 = v53;
  (*(*(v29 - 8) + 56))(v53, 1, 1, v29);
  v43 = sub_100017E74();
  v31 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v32 = v30;
  v33 = v20;
  v34 = v50;
  sub_1002243A8(v32, v50);
  v35 = (*(v48 + 80) + 168) & ~*(v48 + 80);
  v36 = swift_allocObject();
  v37 = v47;
  *(v36 + 16) = v31;
  *(v36 + 24) = v37;
  *(v36 + 40) = 0;
  *(v36 + 48) = 0;
  *(v36 + 32) = v49;
  *(v36 + 56) = 1;
  v38 = v45;
  *(v36 + 64) = v46;
  *(v36 + 72) = v38;
  v39 = v42;
  *(v36 + 80) = v27;
  *(v36 + 88) = v39;
  *(v36 + 96) = v52 & 1;
  *(v36 + 104) = v44;
  *(v36 + 112) = v19;
  *(v36 + 120) = v16;
  *(v36 + 128) = v18;
  *(v36 + 136) = v33;
  *(v36 + 144) = v17;
  *(v36 + 152) = 0;
  *(v36 + 160) = 0;
  sub_100224418(v34, v36 + v35);

  sub_1007A2CD4();

  sub_10022448C(v53);
}

uint64_t sub_100222FD4()
{
  v1 = sub_1001F1160(&qword_100ADBC20, &qword_100811CB8);
  v50 = *(v1 - 8);
  __chkstk_darwin(v1 - 8);
  v52 = v43 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = v2;
  __chkstk_darwin(v3);
  v5 = v43 - v4;
  v6 = OBJC_IVAR____TtC5Books18BuyButtonPresenter_style;
  v7 = *(v0 + OBJC_IVAR____TtC5Books18BuyButtonPresenter_style);
  v8 = OBJC_IVAR____TtC5Books18BuyButtonPresenter_interactor;
  v10 = *(v7 + 128);
  v9 = *(v7 + 136);
  v11 = *(*(v0 + OBJC_IVAR____TtC5Books18BuyButtonPresenter_interactor) + OBJC_IVAR____TtC5Books19BuyButtonInteractor_dataManager);
  v12 = *(v11 + 40);
  if (v12)
  {
    v13 = *(v11 + 32);
    *&v54[0] = v13;
    *(&v54[0] + 1) = v12;
    sub_1002060B4();

    if (sub_1007A28A4())
    {

      v48 = v13;
      v49 = v12;
    }

    else
    {
      v48 = v10;
      v49 = v9;
    }
  }

  else
  {
    v48 = v10;
    v49 = v9;
  }

  v14 = *(v0 + v6);
  v15 = v14[22];
  v47 = v14[21];
  v16 = v14[18];
  v17 = v14[19];
  v18 = v14[5];
  v19 = v14[3];
  v20 = v14[28];
  v21 = *(*(v0 + v8) + OBJC_IVAR____TtC5Books19BuyButtonInteractor_dataManager);
  v22 = *(v21 + 56);
  if (v22)
  {
    v46 = *(v21 + 48);
    v45 = v22;
  }

  else
  {
    v23 = *(v21 + 40);
    if (v23)
    {
      v46 = *(v21 + 32);
      v45 = v23;
    }

    else
    {
      v46 = 0;
      v45 = 0xE000000000000000;
    }
  }

  v24 = *(v21 + 64);
  v54[2] = *(v21 + 48);
  v25 = *(v21 + 80);
  v54[3] = v24;
  v54[4] = v25;
  v55 = *(v21 + 96);
  v26 = *(v21 + 32);
  v54[0] = *(v21 + 16);
  v54[1] = v26;

  v44 = v15;

  v27 = v16;

  v28 = v17;

  v29 = v18;

  sub_1002242F8(v54, v53);
  v43[0] = sub_100392BD8();
  v31 = v30;
  sub_100224354(v54);
  v32 = sub_10079CAE4();
  (*(*(v32 - 8) + 56))(v5, 1, 1, v32);
  v43[1] = sub_100017E74();
  v33 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v34 = v20;
  v35 = v52;
  sub_1002243A8(v5, v52);
  v36 = v50[80];
  v50 = v5;
  v37 = (v36 + 168) & ~v36;
  v38 = swift_allocObject();
  v39 = v47;
  *(v38 + 16) = v33;
  *(v38 + 24) = v39;
  v40 = v48;
  *(v38 + 32) = v44;
  *(v38 + 40) = v40;
  *(v38 + 48) = v49;
  *(v38 + 56) = 2;
  v41 = v45;
  *(v38 + 64) = v46;
  *(v38 + 72) = v41;
  *(v38 + 80) = v43[0];
  *(v38 + 88) = v31;
  *(v38 + 96) = 0;
  *(v38 + 104) = v27;
  *(v38 + 112) = v19;
  *(v38 + 120) = v28;
  *(v38 + 128) = v29;
  *(v38 + 136) = v34;
  *(v38 + 144) = xmmword_100811B80;
  *(v38 + 160) = 0xE90000000000006BLL;
  sub_100224418(v35, v38 + v37);

  sub_1007A2CD4();

  sub_10022448C(v50);
}

uint64_t sub_100223498(unsigned __int8 a1, int a2)
{
  v3 = v2;
  v65 = a2;
  v5 = sub_1001F1160(&qword_100ADBC20, &qword_100811CB8);
  v62 = *(v5 - 8);
  __chkstk_darwin(v5 - 8);
  v64 = v52 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = v6;
  __chkstk_darwin(v7);
  v66 = v52 - v8;
  v67 = OBJC_IVAR____TtC5Books18BuyButtonPresenter_style;
  v9 = *(v2 + OBJC_IVAR____TtC5Books18BuyButtonPresenter_style);
  v10 = *(v9 + 88);
  v11 = *(v9 + 96);
  if (a1 <= 3u && a1 > 1u && a1 != 2 || (v12 = sub_1007A3AB4(), , , (v12 & 1) != 0))
  {

    v16 = *(*(*(v3 + OBJC_IVAR____TtC5Books18BuyButtonPresenter_interactor) + OBJC_IVAR____TtC5Books19BuyButtonInteractor_dataManager) + 81);
    if (v16 == 2 || (v16 & 1) == 0)
    {
      v20 = *(v3 + v67);
      v19 = *(v20 + 184);
      v18 = *(v20 + 192);
    }

    else
    {
      v17 = *(v3 + v67);
      v19 = *(v17 + 200);
      v18 = *(v17 + 208);
    }

    v60 = v19;
    v61 = v18;
  }

  else
  {
    v13 = *(*(v3 + OBJC_IVAR____TtC5Books18BuyButtonPresenter_interactor) + OBJC_IVAR____TtC5Books19BuyButtonInteractor_dataManager);
    v14 = *(v13 + 40);
    if (v14)
    {
      v15 = *(v13 + 32);
      *&v69[0] = v15;
      *(&v69[0] + 1) = v14;
      sub_1002060B4();

      if (sub_1007A28A4())
      {
        v60 = v15;

        v61 = v14;
        goto LABEL_17;
      }

      v61 = v11;
    }

    else
    {
      v61 = v11;
    }

    v60 = v10;
  }

LABEL_17:
  v21 = *(v3 + v67);
  v22 = v21[5];
  v23 = v21[6];
  v24 = v21[3];
  v25 = v21[4];
  v26 = v21[2];
  v27 = v21[28];
  v28 = *(*(v3 + OBJC_IVAR____TtC5Books18BuyButtonPresenter_interactor) + OBJC_IVAR____TtC5Books19BuyButtonInteractor_dataManager);
  v29 = *(v28 + 56);
  if (v29)
  {
    v59 = *(v28 + 48);
    v58 = v29;
  }

  else
  {
    v30 = *(v28 + 40);
    if (v30)
    {
      v59 = *(v28 + 32);
      v58 = v30;
    }

    else
    {
      v59 = 0;
      v58 = 0xE000000000000000;
    }
  }

  v53 = v24;
  v56 = v22;
  v57 = v27;
  v31 = *(v28 + 64);
  v69[2] = *(v28 + 48);
  v32 = *(v28 + 80);
  v69[3] = v31;
  v69[4] = v32;
  v70 = *(v28 + 96);
  v33 = *(v28 + 32);
  v69[0] = *(v28 + 16);
  v69[1] = v33;

  sub_1002242F8(v69, v68);
  v55 = sub_100392BD8();
  v54 = v34;
  sub_100224354(v69);
  v35 = v25;
  v36 = *(v3 + v67);
  v37 = OBJC_IVAR____TtC5Books14BuyButtonStyle_maximumContentSizeCategory;
  swift_beginAccess();
  v38 = sub_10079CAE4();
  v39 = *(v38 - 8);
  v40 = v36 + v37;
  v41 = v66;
  (*(v39 + 16))(v66, v40, v38);
  (*(v39 + 56))(v41, 0, 1, v38);
  v67 = sub_100017E74();
  v42 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v43 = v64;
  sub_1002243A8(v41, v64);
  v44 = (*(v62 + 80) + 168) & ~*(v62 + 80);
  v45 = swift_allocObject();
  v46 = v60;
  *(v45 + 16) = v42;
  *(v45 + 24) = v46;
  *(v45 + 40) = 0;
  *(v45 + 48) = 0;
  *(v45 + 32) = v61;
  *(v45 + 56) = 0;
  v47 = v58;
  *(v45 + 64) = v59;
  *(v45 + 72) = v47;
  v48 = v54;
  *(v45 + 80) = v55;
  *(v45 + 88) = v48;
  *(v45 + 96) = v65 & 1;
  v52[1] = v26;
  v49 = v53;
  *(v45 + 104) = v26;
  *(v45 + 112) = v49;
  v50 = v56;
  *(v45 + 120) = v35;
  *(v45 + 128) = v50;
  *(v45 + 136) = v57;
  *(v45 + 144) = v23;
  *(v45 + 152) = 0;
  *(v45 + 160) = 0;
  sub_100224418(v43, v45 + v44);

  sub_1007A2CD4();

  sub_10022448C(v66);
}

uint64_t sub_100223C38(unsigned __int8 a1, char a2)
{
  v3 = v2;
  sub_100017E74();
  v6 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  *(v7 + 24) = a1;

  sub_1007A2CD4();

  if (a1 == 2)
  {
  }

  else
  {
    v8 = sub_1007A3AB4();

    if ((v8 & 1) == 0)
    {
      if (a1 == 4)
      {
      }

      else
      {
        v10 = sub_1007A3AB4();

        if (v10)
        {
          goto LABEL_11;
        }

        if (a1 > 3u && a1 <= 5u && a1 != 4)
        {

LABEL_21:

          return sub_100222FD4();
        }

        v11 = sub_1007A3AB4();

        if (v11)
        {
          goto LABEL_21;
        }

        v12 = *(*(*(v3 + OBJC_IVAR____TtC5Books18BuyButtonPresenter_interactor) + OBJC_IVAR____TtC5Books19BuyButtonInteractor_dataManager) + 80);
        if (v12 == 2 || (v12 & 1) == 0)
        {

          return sub_100223498(a1, a2 & 1);
        }
      }

LABEL_11:

      return sub_100222B1C(a2 & 1);
    }
  }

  return sub_10022263C(a2 & 1);
}

void sub_1002240DC(uint64_t a1, char a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    swift_getKeyPath();
    swift_getKeyPath();

    sub_10079B9B4();
  }
}

void sub_1002241B8(uint64_t a1, double a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    swift_getKeyPath();
    swift_getKeyPath();

    sub_10079B9B4();
    swift_getKeyPath();
    swift_getKeyPath();

    sub_10079B9B4();
  }
}

uint64_t sub_1002242BC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_10079C6F4();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1002243A8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001F1160(&qword_100ADBC20, &qword_100811CB8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100224418(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001F1160(&qword_100ADBC20, &qword_100811CB8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10022448C(uint64_t a1)
{
  v2 = sub_1001F1160(&qword_100ADBC20, &qword_100811CB8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1002244F4()
{
  v1 = *(sub_1001F1160(&qword_100ADBC20, &qword_100811CB8) - 8);
  v2 = (*(v1 + 80) + 168) & ~*(v1 + 80);

  v3 = sub_10079CAE4();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(v0 + v2, 1, v3))
  {
    (*(v4 + 8))(v0 + v2, v3);
  }

  return swift_deallocObject();
}

char *sub_10022466C()
{
  v1 = *(sub_1001F1160(&qword_100ADBC20, &qword_100811CB8) - 8);
  v8 = *(v0 + 136);
  return sub_100221DE8(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 104), *(v0 + 120), *&v8, v2, v3, v4, v5, v6, *(v0 + 80), *(v0 + 88), *(v0 + 96), *(v0 + 104), *(v0 + 112), *(v0 + 120), *(v0 + 128), *&v8, *(&v8 + 1), *(v0 + 152), *(v0 + 160), v0 + ((*(v1 + 80) + 168) & ~*(v1 + 80)));
}

uint64_t sub_10022471C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100224768()
{
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_1002247C4()
{
  v1 = [*(*(v0 + 16) + 16) activeStoreAccount];
  v2 = v1;
  if (v1)
  {
  }

  v3 = *(v0 + 8);

  return v3(v2 != 0);
}

uint64_t type metadata accessor for AddToCollectionActionItem(uint64_t a1)
{
  result = qword_100AD5E88;
  if (!qword_100AD5E88)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1002248C4(uint64_t a1)
{
  sub_1001FEBC8(319, &unk_100AE9C00, &protocol descriptor for ContextActionDataProtocol);
  if (v1 <= 0x3F)
  {
    sub_1001FEBC8(319, &qword_100AD4AF0, &protocol descriptor for ContextMenuPresentationContextProtocol);
    if (v2 <= 0x3F)
    {
      sub_1001FEB70(319);
      if (v3 <= 0x3F)
      {
        sub_1001FEBC8(319, &qword_100AE9C10, &protocol descriptor for FigaroProviding);
        if (v4 <= 0x3F)
        {
          sub_100797144();
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void *sub_1002249C0()
{
  sub_10000E3E8(v0, v0[3]);
  result = sub_1007977A4();
  if ((v27 & 1) == 0)
  {
    sub_1000077C0(&v26, &v23);
    sub_10000E3E8(&v23, v24);
    sub_1007976B4();
    if (sub_1007972D4())
    {
      v17 = 0;
    }

    else
    {
      sub_10000E3E8(&v23, v24);
      sub_1007976B4();
      v17 = sub_1007972D4() ^ 1;
    }

    sub_1000074E0(&v23);
    return (v17 & 1);
  }

  v2 = v26;
  v3 = *(v26 + 16);
  if (!v3)
  {
    v6 = _swiftEmptyArrayStorage;
LABEL_19:

    v18 = v6[2];

    v17 = v18 == 0;
    return (v17 & 1);
  }

  v4 = 0;
  v5 = v26 + 32;
  v6 = _swiftEmptyArrayStorage;
  while (v4 < *(v2 + 16))
  {
    sub_100009864(v5, &v23);
    sub_10000E3E8(&v23, v24);
    sub_1007976B4();
    if (sub_1007972D4() & 1) != 0 || (sub_10000E3E8(&v23, v24), sub_1007976B4(), (sub_1007972D4()))
    {
      sub_1000077C0(&v23, v20);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v25 = v6;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1003BD10C(0, v6[2] + 1, 1);
        v6 = v25;
      }

      v9 = v6[2];
      v8 = v6[3];
      if (v9 >= v8 >> 1)
      {
        sub_1003BD10C((v8 > 1), v9 + 1, 1);
      }

      v10 = v21;
      v11 = v22;
      v12 = sub_10022569C(v20, v21);
      v13 = __chkstk_darwin(v12);
      v15 = &v20[-1] - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v16 + 16))(v15, v13);
      sub_100225604(v9, v15, &v25, v10, v11);
      result = sub_1000074E0(v20);
      v6 = v25;
    }

    else
    {
      result = sub_1000074E0(&v23);
    }

    ++v4;
    v5 += 40;
    if (v3 == v4)
    {
      goto LABEL_19;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100224CA8()
{
  v1[37] = v0;
  v2 = sub_10079ACE4();
  v1[38] = v2;
  v1[39] = *(v2 - 8);
  v1[40] = swift_task_alloc();
  sub_1007A26F4();
  v1[41] = sub_1007A26E4();
  v4 = sub_1007A2694();

  return _swift_task_switch(sub_100224D9C, v4, v3);
}

uint64_t sub_100224D9C()
{
  v1 = *(v0 + 296);

  sub_100009864(v1 + 40, v0 + 96);
  sub_1001F1160(&qword_100AD5ED0, &unk_10083CFE0);
  sub_1001F1160(&qword_100AD5ED8, &unk_100812380);
  if ((swift_dynamicCast() & 1) == 0)
  {
    *(v0 + 88) = 0;
    *(v0 + 72) = 0u;
    *(v0 + 56) = 0u;
    goto LABEL_13;
  }

  if (!*(v0 + 80))
  {
LABEL_13:
    sub_10022559C(v0 + 56);
    sub_10079AC44();
    v14 = sub_10079ACC4();
    v15 = sub_1007A29B4();
    v16 = os_log_type_enabled(v14, v15);
    v18 = *(v0 + 312);
    v17 = *(v0 + 320);
    v19 = *(v0 + 304);
    if (v16)
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&_mh_execute_header, v14, v15, "Action doesn't have sufficient information to handle action.", v20, 2u);
    }

    (*(v18 + 8))(v17, v19);
LABEL_38:

    v45 = *(v0 + 8);

    return v45();
  }

  v2 = *(v0 + 296);
  sub_1000077C0((v0 + 56), v0 + 16);
  v3 = [objc_opt_self() hashTableWithOptions:512];
  v47 = v2;
  sub_10000E3E8(v2, v2[3]);
  v4 = sub_100797704();
  v5 = *(v4 + 16);
  if (v5)
  {
    v6 = v4 + 32;
    v7 = _swiftEmptyArrayStorage;
    do
    {
      sub_100009864(v6, v0 + 136);
      sub_10000E3E8((v0 + 136), *(v0 + 160));
      v9 = sub_1007976A4();
      v11 = v10;
      sub_1000074E0((v0 + 136));
      if (v11)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v7 = sub_10000B3D8(0, *(v7 + 2) + 1, 1, v7);
        }

        v13 = *(v7 + 2);
        v12 = *(v7 + 3);
        if (v13 >= v12 >> 1)
        {
          v7 = sub_10000B3D8((v12 > 1), v13 + 1, 1, v7);
        }

        *(v7 + 2) = v13 + 1;
        v8 = &v7[16 * v13];
        *(v8 + 4) = v9;
        *(v8 + 5) = v11;
      }

      v6 += 40;
      --v5;
    }

    while (v5);

    v22 = *(v7 + 2);
    if (!v22)
    {
LABEL_22:
      v46 = v3;
      v26 = *(v0 + 296);

      sub_10000E3E8((v0 + 16), *(v0 + 40));
      sub_10000E3E8(v26, v47[3]);
      v27 = sub_100797704();
      v28 = *(v27 + 16);
      if (v28)
      {
        sub_1003BD0CC(0, v28, 0);
        v29 = v27 + 32;
        do
        {
          sub_100009864(v29, v0 + 176);
          sub_10000E3E8((v0 + 176), *(v0 + 200));
          v30 = sub_100797674();
          v32 = v31;
          sub_1000074E0((v0 + 176));
          v34 = _swiftEmptyArrayStorage[2];
          v33 = _swiftEmptyArrayStorage[3];
          if (v34 >= v33 >> 1)
          {
            sub_1003BD0CC((v33 > 1), v34 + 1, 1);
          }

          _swiftEmptyArrayStorage[2] = v34 + 1;
          v35 = &_swiftEmptyArrayStorage[2 * v34];
          v35[4] = v30;
          v35[5] = v32;
          v29 += 40;
          --v28;
        }

        while (v28);
      }

      sub_10000E3E8(*(v0 + 296), v47[3]);
      v36 = sub_100797704();
      v37 = *(v36 + 16);
      if (v37)
      {
        sub_1007A37F4();
        v38 = v36 + 32;
        do
        {
          sub_100009864(v38, v0 + 216);
          sub_10000E3E8((v0 + 216), *(v0 + 240));
          [objc_allocWithZone(NSNumber) initWithShort:word_100812390[sub_1007976B4()]];
          sub_1000074E0((v0 + 216));
          sub_1007A37D4();
          sub_1007A3804();
          sub_1007A3814();
          sub_1007A37E4();
          v38 += 40;
          --v37;
        }

        while (v37);
      }

      sub_10000E3E8(*(v0 + 296), v47[3]);
      result = sub_100797704();
      v39 = result;
      v40 = result + 32;
      v41 = -*(result + 16);
      v42 = -1;
      while (1)
      {
        v43 = v41 + v42;
        if (v41 + v42 == -1)
        {
LABEL_35:

          goto LABEL_37;
        }

        if (++v42 >= *(v39 + 16))
        {
          goto LABEL_42;
        }

        sub_100009864(v40, v0 + 256);
        sub_10000E3E8((v0 + 256), *(v0 + 280));
        sub_1007976B4();
        if (sub_1007972D4())
        {
          break;
        }

        v40 += 40;
        sub_10000E3E8((v0 + 256), *(v0 + 280));
        sub_1007976B4();
        v44 = sub_1007972D4();
        result = sub_1000074E0((v0 + 256));
        if (v44)
        {
          goto LABEL_35;
        }
      }

      sub_1000074E0((v0 + 256));
LABEL_37:
      sub_1004C4190(_swiftEmptyArrayStorage, _swiftEmptyArrayStorage, v46, v43 != -1);

      sub_1000074E0((v0 + 16));
      goto LABEL_38;
    }
  }

  else
  {

    v7 = _swiftEmptyArrayStorage;
    v22 = _swiftEmptyArrayStorage[2];
    if (!v22)
    {
      goto LABEL_22;
    }
  }

  v23 = 0;
  v24 = v7 + 40;
  while (v23 < *(v7 + 2))
  {
    ++v23;

    v25 = sub_1007A2214();
    [v3 addObject:v25];

    v24 += 16;
    if (v22 == v23)
    {
      goto LABEL_22;
    }
  }

  __break(1u);
LABEL_42:
  __break(1u);
  return result;
}

uint64_t sub_100225454()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10002812C;

  return sub_100224CA8();
}

uint64_t sub_1002254E0@<X0>(__int128 *a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, __int128 *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  sub_1000077C0(a1, a6);
  sub_1000077C0(a2, a6 + 40);
  *(a6 + 80) = a3;
  sub_1000077C0(a4, a6 + 88);
  v11 = *(a5 + 32);
  v12 = enum case for ContextActionType.addToCollection(_:);
  v13 = sub_100797144();
  v14 = *(*(v13 - 8) + 104);

  return v14(a6 + v11, v12, v13);
}

uint64_t sub_10022559C(uint64_t a1)
{
  v2 = sub_1001F1160(qword_100AD5EE0, qword_10083CFF0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100225604(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v13 = a4;
  v14 = a5;
  v9 = sub_1002256EC(&v12);
  (*(*(a4 - 8) + 32))(v9, a2, a4);
  v10 = *a3;
  *(v10 + 16) = a1 + 1;
  return sub_1000077C0(&v12, v10 + 40 * a1 + 32);
}

uint64_t sub_10022569C(uint64_t result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return v3;
}

uint64_t *sub_1002256EC(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

void *sub_100225750()
{

  return v0;
}

uint64_t sub_100225780()
{
  sub_100225750();

  return swift_deallocClassInstance();
}

id sub_100225820(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for AudiobookNowPlayingNavigationHandler();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_1002258C4()
{
  v0 = sub_10079ACE4();
  sub_100009A38(v0, qword_100AD5FB0);
  sub_100008B98(v0, qword_100AD5FB0);
  return sub_10079ACD4();
}

void sub_100225944(uint64_t a1)
{
  v3 = sub_10079F364();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v19 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1001F1160(&qword_100AD61D8, &qword_100812800);
  __chkstk_darwin(v6 - 8);
  v8 = &v19 - v7;
  v9 = sub_1001F1160(&qword_100AD61E0, &qword_100812808);
  v10 = v9 - 8;
  __chkstk_darwin(v9);
  v12 = &v19 - v11;
  v13 = OBJC_IVAR____TtCC5Books19BookReaderPresenter26ContentSelectionInteractor_contentSelection;
  swift_beginAccess();
  v14 = *(v10 + 56);
  sub_1000077D8(a1, v12, &qword_100AD61D8, &qword_100812800);
  sub_1000077D8(v1 + v13, &v12[v14], &qword_100AD61D8, &qword_100812800);
  v15 = *(v4 + 48);
  if (v15(v12, 1, v3) == 1)
  {
    if (v15(&v12[v14], 1, v3) == 1)
    {
      sub_100007840(v12, &qword_100AD61D8, &qword_100812800);
      return;
    }

    goto LABEL_6;
  }

  sub_1000077D8(v12, v8, &qword_100AD61D8, &qword_100812800);
  if (v15(&v12[v14], 1, v3) == 1)
  {
    (*(v4 + 8))(v8, v3);
LABEL_6:
    sub_100007840(v12, &qword_100AD61E0, &qword_100812808);
LABEL_7:
    sub_100225C60();
    return;
  }

  v16 = v19;
  (*(v4 + 32))(v19, &v12[v14], v3);
  sub_100230C84();
  v17 = sub_1007A2124();
  v18 = *(v4 + 8);
  v18(v16, v3);
  v18(v8, v3);
  sub_100007840(v12, &qword_100AD61D8, &qword_100812800);
  if ((v17 & 1) == 0)
  {
    goto LABEL_7;
  }
}

void sub_100225C60()
{
  v1 = v0;
  v2 = sub_1001F1160(&qword_100AD61D8, &qword_100812800);
  __chkstk_darwin(v2 - 8);
  v4 = &v41 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v41 - v6;
  v8 = sub_10079F364();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v13 = Strong;
    v14 = v1[9];
    v15 = OBJC_IVAR____TtCC5Books19BookReaderPresenter26ContentSelectionInteractor_contentSelection;
    swift_beginAccess();
    v47 = v15;
    sub_1000077D8(v1 + v15, v7, &qword_100AD61D8, &qword_100812800);
    v16 = (*(v9 + 48))(v7, 1, v8);
    v48 = v14;
    if (v16 == 1)
    {
      sub_100007840(v7, &qword_100AD61D8, &qword_100812800);
    }

    else
    {
      (*(v9 + 32))(v11, v7, v8);
      v50[0] = sub_10079F324();
      v50[1] = v21;
      sub_1002060B4();
      v22 = sub_1007A28A4();

      if (v22)
      {
        sub_10079F344();
        if (v23 && (swift_getObjectType(), v24 = sub_1007A08A4(), , v24))
        {
          v25 = v1[6];
          v46 = v1[7];
          ObjectType = swift_getObjectType();
          sub_1001F1160(&qword_100AD5A68, &unk_100812810);
          v26 = swift_allocObject();
          *(v26 + 16) = xmmword_10080B690;

          v45 = v24;
          v27 = sub_1007A02F4();
          v42 = v28;
          v43 = v27;

          v29 = v42;
          *(v26 + 32) = v43;
          *(v26 + 40) = v29;
          *(v26 + 48) = sub_1007A1A44();
          *(v26 + 56) = v30;
          *(v26 + 64) = sub_1007A1A64();
          *(v26 + 72) = v31;
          sub_1007A1734();
        }

        else
        {
          v25 = v1[6];
          v46 = v1[7];
          v45 = swift_getObjectType();
          v43 = sub_10079F324();
          ObjectType = v4;
          sub_10079F314();
          sub_1007A1744();
          v4 = ObjectType;
        }

        (*(v9 + 8))(v11, v8);
        v32 = v46;
LABEL_19:
        if (qword_100AD12B8 != -1)
        {
          swift_once();
        }

        v33 = sub_10079ACE4();
        sub_100008B98(v33, qword_100AD5FB0);
        v34 = sub_10079ACC4();
        v35 = sub_1007A29A4();
        if (os_log_type_enabled(v34, v35))
        {
          v36 = swift_slowAlloc();
          *v36 = 0;
          _os_log_impl(&_mh_execute_header, v34, v35, "Creating state", v36, 2u);
        }

        v37 = swift_getObjectType();
        v38 = swift_getObjectType();
        sub_1000077D8(v1 + v47, v4, &qword_100AD61D8, &qword_100812800);
        v39 = v1[5];
        swift_unknownObjectRetain();
        v40 = v39;
        sub_10022F7BC(v4, v40, v25, v13, v37, v38, v32, v48, v50);

        swift_unknownObjectRelease();
        memcpy(v49, v1 + OBJC_IVAR____TtCC5Books19BookReaderPresenter26ContentSelectionInteractor__state, 0x120uLL);
        memcpy(v1 + OBJC_IVAR____TtCC5Books19BookReaderPresenter26ContentSelectionInteractor__state, v50, 0x120uLL);
        sub_100230CDC(v49);
        return;
      }

      (*(v9 + 8))(v11, v8);
    }

    v25 = v1[6];
    v32 = v1[7];
    swift_getObjectType();
    sub_1007A1724();
    goto LABEL_19;
  }

  if (qword_100AD12B8 != -1)
  {
    swift_once();
  }

  v17 = sub_10079ACE4();
  sub_100008B98(v17, qword_100AD5FB0);
  v48 = sub_10079ACC4();
  v18 = sub_1007A29B4();
  if (os_log_type_enabled(v48, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&_mh_execute_header, v48, v18, "Missing annotation provider service!", v19, 2u);
  }

  v20 = v48;
}

uint64_t sub_100226258(uint64_t a1, uint64_t a2)
{
  v2 = sub_1001F1160(&qword_100AD61D8, &qword_100812800);
  __chkstk_darwin(v2 - 8);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v12 - v6;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v9 = result;
    v10 = sub_10079F364();
    (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
    v11 = OBJC_IVAR____TtCC5Books19BookReaderPresenter26ContentSelectionInteractor_contentSelection;
    swift_beginAccess();
    sub_1000077D8(v9 + v11, v4, &qword_100AD61D8, &qword_100812800);
    swift_beginAccess();
    sub_100230C14(v7, v9 + v11);
    swift_endAccess();
    sub_100225944(v4);

    sub_100007840(v4, &qword_100AD61D8, &qword_100812800);
    return sub_100007840(v7, &qword_100AD61D8, &qword_100812800);
  }

  return result;
}

uint64_t sub_1002263FC()
{
  sub_10002B130(v0 + 16);
  swift_weakDestroy();

  swift_unknownObjectRelease();
  sub_10002B130(v0 + 64);

  swift_unknownObjectRelease();
  sub_100007840(v0 + OBJC_IVAR____TtCC5Books19BookReaderPresenter26ContentSelectionInteractor_contentSelection, &qword_100AD61D8, &qword_100812800);
  memcpy(v2, (v0 + OBJC_IVAR____TtCC5Books19BookReaderPresenter26ContentSelectionInteractor__state), sizeof(v2));
  sub_100230CDC(v2);
  return v0;
}

uint64_t sub_10022649C()
{
  sub_1002263FC();

  return swift_deallocClassInstance();
}

uint64_t _s26ContentSelectionInteractorCMa(uint64_t a1)
{
  result = qword_100AD6000;
  if (!qword_100AD6000)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100226548(uint64_t a1)
{
  sub_10022661C(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_10022661C(uint64_t a1)
{
  if (!qword_100AD6010)
  {
    sub_10079F364();
    v1 = sub_1007A3454();
    if (!v2)
    {
      atomic_store(v1, &qword_100AD6010);
    }
  }
}

uint64_t sub_100226674(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_100226698(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 > 1)
  {
    return (v1 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1002266B4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 288))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
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

uint64_t sub_100226710(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 280) = 0;
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
    *(result + 264) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 288) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 288) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_1002267C0()
{
  v1[10] = v0;
  sub_1001F1160(&unk_100AD6170, &qword_10083DEE0);
  v1[11] = swift_task_alloc();
  v2 = sub_1001F1160(&unk_100AE6A30, &unk_100812750);
  v1[12] = v2;
  v1[13] = *(v2 - 8);
  v1[14] = swift_task_alloc();
  v3 = sub_1001F1160(&qword_100AD6190, &qword_100812CC0);
  v1[15] = v3;
  v1[16] = *(v3 - 8);
  v1[17] = swift_task_alloc();
  v1[18] = swift_task_alloc();
  sub_1001F1160(&qword_100AD61D8, &qword_100812800);
  v1[19] = swift_task_alloc();
  sub_1007A26F4();
  v1[20] = sub_1007A26E4();
  v5 = sub_1007A2694();
  v1[21] = v5;
  v1[22] = v4;

  return _swift_task_switch(sub_1002269A4, v5, v4);
}

uint64_t sub_1002269A4()
{
  Strong = swift_weakLoadStrong();
  v0[23] = Strong;
  if (!Strong)
  {
    goto LABEL_10;
  }

  v2 = v0[19];
  sub_10079F124();
  v3 = sub_10079F364();
  v4 = *(v3 - 8);
  if ((*(v4 + 48))(v2, 1, v3) == 1)
  {
    v5 = v0[19];

    sub_100007840(v5, &qword_100AD61D8, &qword_100812800);
LABEL_11:

    v11 = v0[1];
    v12.n128_u64[0] = 0;
    v13.n128_u64[0] = 0;

    return v11(v12, v13);
  }

  v6 = v0[19];
  v7 = sub_10079F314();
  v9 = v8;
  v0[24] = v8;
  (*(v4 + 8))(v6, v3);
  if (!v9)
  {

LABEL_10:

    goto LABEL_11;
  }

  v10 = swift_task_alloc();
  v0[25] = v10;
  *v10 = v0;
  v10[1] = sub_100226BC4;

  return BookContentModule.rects(forCFI:clippedToBounds:)(v7, v9, 1);
}

uint64_t sub_100226BC4(uint64_t a1)
{
  v2 = *v1;
  *(*v1 + 208) = a1;

  v3 = *(v2 + 176);
  v4 = *(v2 + 168);

  return _swift_task_switch(sub_100226D10, v4, v3);
}

uint64_t sub_100226D10()
{
  v1 = v0[26];

  if (!v1)
  {

    goto LABEL_7;
  }

  v2 = v0[26];
  if (!*(v2 + 16))
  {

    goto LABEL_7;
  }

  v4 = v0[17];
  v3 = v0[18];
  v5 = v0[15];
  v6 = v0[16];
  v7 = v0[12];
  v8 = v0[13];
  v9 = v0[11];
  (*(v6 + 16))(v4, v2 + ((*(v6 + 80) + 32) & ~*(v6 + 80)), v5);

  (*(v6 + 32))(v3, v4, v5);
  sub_10079EFA4();
  v10 = (*(v8 + 48))(v9, 1, v7);
  v11 = v0[18];
  v12 = v0[15];
  v13 = v0[16];
  if (v10 == 1)
  {
    v14 = v0[11];
    (*(v13 + 8))(v0[18], v0[15]);

    sub_100007840(v14, &unk_100AD6170, &qword_10083DEE0);
LABEL_7:
    v15 = 0;
    v16 = 0;
    goto LABEL_8;
  }

  v22 = v0[13];
  v21 = v0[14];
  v23 = v0[12];
  (*(v22 + 32))(v21, v0[11], v23);
  sub_10079FEB4();
  v15 = v0[2];
  sub_10079FEB4();

  (*(v22 + 8))(v21, v23);
  (*(v13 + 8))(v11, v12);
  v16 = v0[7];
LABEL_8:

  v17 = v0[1];
  v18.n128_u64[0] = v15;
  v19.n128_u64[0] = v16;

  return v17(v18, v19);
}

void sub_100226F6C()
{
  v0 = sub_10079AB24();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10022FB30(&v14);
  v16[0] = v15;
  if (*(&v15 + 1))
  {
    if (swift_unknownObjectWeakLoadStrong())
    {
      sub_1000077D8(v16, &v13, &qword_100AD60D0, &qword_1008126C8);
      swift_unknownObjectRelease();
      v4 = [objc_opt_self() generalPasteboard];
      v5 = sub_1007A2214();
      sub_100007840(v16, &qword_100AD60D0, &qword_1008126C8);
      sub_10079AAD4();
      sub_10079AAC4();
      (*(v1 + 8))(v3, v0);
      v6 = sub_1007A2214();

      [v4 setValue:v5 forPasteboardType:v6];
    }
  }

  else
  {
    if (qword_100AD12B8 != -1)
    {
      swift_once();
    }

    v7 = sub_10079ACE4();
    sub_100008B98(v7, qword_100AD5FB0);
    v12 = sub_10079ACC4();
    v8 = sub_1007A29B4();
    if (os_log_type_enabled(v12, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v12, v8, "Unable to perform copy. Missing state", v9, 2u);
    }

    v10 = v12;
  }
}