uint64_t sub_10096618C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v17 = a1;
  v20 = a2;
  v4 = sub_10022C350(&qword_100CE8508, &qword_100A9CAF8);
  __chkstk_darwin(v4 - 8);
  v19 = &v17 - v5;
  v18 = sub_10022C350(&qword_100CE8510, &qword_100A9CB00);
  __chkstk_darwin(v18);
  v7 = &v17 - v6;
  v8 = *(v2 + 3);
  v28 = *(v2 + 2);
  v29 = v8;
  v30 = v2[8];
  v9 = *(v2 + 3);
  v21 = *(v2 + 2);
  v22 = v9;
  v23 = v2[8];
  sub_10022C350(&qword_100CE84F0, &qword_100A9CAE8);
  State.wrappedValue.getter();
  if (v27)
  {
    v10 = v24;
    v11 = v25;
    LOBYTE(v12) = v26;
    if (v2[3])
    {
      goto LABEL_9;
    }
  }

  else
  {
    if (v2[3])
    {
      v12 = *(v2 + 4);
      v10 = *v2;
      v11 = v2[1];
      sub_10010CD54(*v2, v11, v12 & 1);

      goto LABEL_9;
    }

    LOBYTE(v12) = 0;
    v10 = 0x444553554E55;
    v11 = 0xE600000000000000;
  }

  v21 = v28;
  v22 = v29;
  v23 = v30;
  State.wrappedValue.getter();
  if (v27)
  {
    sub_10014A53C(v24, v25, v26, v27);
  }

LABEL_9:
  sub_10022C350(&qword_100CE8518, &qword_100A9CB08);
  sub_100006F64(&qword_100CE8520, &qword_100CE8518, &qword_100A9CB08, &protocol conformance descriptor for _ViewModifier_Content<A>);
  v13 = v19;
  View.accessibilityValue(_:isEnabled:)();
  sub_10010CD64(v10, v11, v12 & 1);

  v14 = swift_allocObject();
  memcpy((v14 + 16), v3, 0x48uLL);
  sub_1005AD458(v13, v7, &qword_100CE8508, &qword_100A9CAF8);
  v15 = &v7[*(v18 + 36)];
  *v15 = sub_10096733C;
  v15[1] = v14;
  sub_1005AD458(v7, v20, &qword_100CE8510, &qword_100A9CB00);
  return sub_100966974(v3, &v21);
}

uint64_t *sub_10096648C(uint64_t *result, uint64_t a2)
{
  if (result[3])
  {
    sub_10010CD54(*result, result[1], result[2] & 1);

    sub_10022C350(&qword_100CE84F0, &qword_100A9CAE8);
    return State.wrappedValue.setter();
  }

  return result;
}

uint64_t sub_100966564@<X0>(uint64_t a1@<X8>)
{
  ButtonStyleConfiguration.label.getter();
  v3 = static Color.clear.getter();
  v4 = static Edge.Set.all.getter();
  result = sub_10022C350(&qword_100CE8530, &qword_100A9CB18);
  v6 = a1 + *(result + 36);
  *v6 = v3;
  *(v6 + 8) = v4;
  return result;
}

uint64_t sub_1009665CC@<X0>(uint64_t a1@<X8>)
{
  ButtonStyleConfiguration.label.getter();
  v3 = ButtonStyleConfiguration.isPressed.getter();
  result = sub_10022C350(&qword_100CE8528, &qword_100A9CB10);
  *(a1 + *(result + 36)) = v3 & 1;
  return result;
}

uint64_t sub_100966620@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v6 = sub_10022C350(&qword_100CE8538, &qword_100A9CB20);
  v7 = v6 - 8;
  __chkstk_darwin(v6);
  v9 = &v31 - v8;
  v10 = sub_10022C350(&qword_100CE8540, &qword_100A9CB28);
  v11 = v10 - 8;
  __chkstk_darwin(v10);
  v13 = &v31 - v12;
  v14 = sub_10022C350(&qword_100CE8548, &qword_100A9CB30);
  __chkstk_darwin(v14 - 8);
  v16 = &v31 - v15;
  v17 = static Color.clear.getter();
  v18 = static Edge.Set.all.getter();
  v19 = sub_10022C350(&qword_100CE8550, &qword_100A9CB38);
  (*(*(v19 - 8) + 16))(v9, a1, v19);
  v20 = &v9[*(v7 + 44)];
  *v20 = v17;
  v20[8] = v18;
  if (a2)
  {
    v21 = 0.95;
  }

  else
  {
    v21 = 1.0;
  }

  static UnitPoint.center.getter();
  v23 = v22;
  v25 = v24;
  sub_1005AD458(v9, v13, &qword_100CE8538, &qword_100A9CB20);
  v26 = &v13[*(v11 + 44)];
  *v26 = v21;
  *(v26 + 1) = v21;
  *(v26 + 2) = v23;
  *(v26 + 3) = v25;
  sub_1005AD458(v13, v16, &qword_100CE8540, &qword_100A9CB28);
  if (a2)
  {
    v27 = static Animation.timingCurve(_:_:_:_:duration:)();
  }

  else
  {
    v27 = static Animation.interpolatingSpring(mass:stiffness:damping:initialVelocity:)();
  }

  v28 = v27;
  sub_1005AD458(v16, a3, &qword_100CE8548, &qword_100A9CB30);
  result = sub_10022C350(&qword_100CE8558, &unk_100A9CB40);
  v30 = a3 + *(result + 36);
  *v30 = v28;
  *(v30 + 8) = a2 & 1;
  return result;
}

unint64_t sub_1009669CC()
{
  result = qword_100CE8560;
  if (!qword_100CE8560)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CE84E8, &qword_100A9CAE0);
    v4[0] = sub_100966A84();
    v4[1] = sub_100006F64(&qword_100CE8570, &qword_100CE8578, &qword_100A9CBC8, &protocol conformance descriptor for _PreferenceActionModifier<A>);
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CE8560);
  }

  return result;
}

unint64_t sub_100966A84()
{
  result = qword_100CE8568;
  if (!qword_100CE8568)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CE84E0, &qword_100A9CAD8);
    v4[0] = sub_100006F64(&qword_100CE8500, &qword_100CE84F8, &qword_100A9CAF0, &protocol conformance descriptor for _ViewModifier_Content<A>);
    v4[1] = sub_1001B83FC(&qword_100CE1750, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CE8568);
  }

  return result;
}

unint64_t sub_100966B6C()
{
  result = qword_100CE8580;
  if (!qword_100CE8580)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CE8510, &qword_100A9CB00);
    v4[0] = sub_100966C24();
    v4[1] = sub_100006F64(&qword_100CE8590, &qword_100CE8598, &qword_100A9CBD0, &protocol conformance descriptor for _PreferenceActionModifier<A>);
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CE8580);
  }

  return result;
}

unint64_t sub_100966C24()
{
  result = qword_100CE8588;
  if (!qword_100CE8588)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CE8508, &qword_100A9CAF8);
    v4[0] = sub_100006F64(&qword_100CE8520, &qword_100CE8518, &qword_100A9CB08, &protocol conformance descriptor for _ViewModifier_Content<A>);
    v4[1] = sub_1001B83FC(&qword_100CE1750, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CE8588);
  }

  return result;
}

unint64_t sub_100966D0C()
{
  result = qword_100CE85A0;
  if (!qword_100CE85A0)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CE8528, &qword_100A9CB10);
    v4[0] = sub_1001B83FC(&qword_100CBDD48, &type metadata accessor for ButtonStyleConfiguration.Label, &protocol conformance descriptor for ButtonStyleConfiguration.Label);
    v4[1] = sub_1009659AC();
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CE85A0);
  }

  return result;
}

unint64_t sub_100966DC8()
{
  result = qword_100CE85A8;
  if (!qword_100CE85A8)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CE8530, &qword_100A9CB18);
    v4[0] = sub_1001B83FC(&qword_100CBDD48, &type metadata accessor for ButtonStyleConfiguration.Label, &protocol conformance descriptor for ButtonStyleConfiguration.Label);
    v4[1] = sub_100006F64(&qword_100CC0538, &qword_100CC0540, &unk_100A9A4B0, &protocol conformance descriptor for _BackgroundStyleModifier<A>);
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CE85A8);
  }

  return result;
}

unint64_t sub_100966EB0()
{
  result = qword_100CE85B0;
  if (!qword_100CE85B0)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CE8558, &unk_100A9CB40);
    v4[0] = sub_100966F68();
    v4[1] = sub_100006F64(&qword_100CBDD68, &qword_100CBDD70, &unk_100A55520, &protocol conformance descriptor for _AnimationModifier<A>);
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CE85B0);
  }

  return result;
}

unint64_t sub_100966F68()
{
  result = qword_100CE85B8;
  if (!qword_100CE85B8)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CE8548, &qword_100A9CB30);
    v4[0] = sub_100966FF4();
    v4[1] = &protocol witness table for _GeometryGroupEffect;
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CE85B8);
  }

  return result;
}

unint64_t sub_100966FF4()
{
  result = qword_100CE85C0;
  if (!qword_100CE85C0)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CE8540, &qword_100A9CB28);
    v4[0] = sub_100967080();
    v4[1] = &protocol witness table for _ScaleEffect;
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CE85C0);
  }

  return result;
}

unint64_t sub_100967080()
{
  result = qword_100CE85C8;
  if (!qword_100CE85C8)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CE8538, &qword_100A9CB20);
    v4[0] = sub_100006F64(&qword_100CE85D0, &qword_100CE8550, &qword_100A9CB38, &protocol conformance descriptor for _ViewModifier_Content<A>);
    v4[1] = sub_100006F64(&qword_100CC0538, &qword_100CC0540, &unk_100A9A4B0, &protocol conformance descriptor for _BackgroundStyleModifier<A>);
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CE85C8);
  }

  return result;
}

unint64_t sub_100967164()
{
  result = qword_100CE85D8;
  if (!qword_100CE85D8)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = sub_10022E824(&qword_100CDB3D8, &qword_100A88120);
    v4[0] = sub_1009671E8();
    result = swift_getWitnessTable(&protocol conformance descriptor for <A> A?, v3, v4);
    atomic_store(result, &qword_100CE85D8);
  }

  return result;
}

unint64_t sub_1009671E8()
{
  result = qword_100CE85E0;
  if (!qword_100CE85E0)
  {
    result = swift_getWitnessTable(&protocol conformance descriptor for Text, &type metadata for Text, v0, v1);
    atomic_store(result, &qword_100CE85E0);
  }

  return result;
}

unint64_t sub_10096723C(uint64_t a1)
{
  result = sub_100967264();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_100967264()
{
  result = qword_100CE8600;
  if (!qword_100CE8600)
  {
    result = swift_getWitnessTable(byte_100A9CBD8, &type metadata for WeatherComponentButtonAccessibilityLabelPreferenceKey, v0, v1);
    atomic_store(result, &qword_100CE8600);
  }

  return result;
}

unint64_t sub_1009672B8(uint64_t a1)
{
  result = sub_1009672E0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1009672E0()
{
  result = qword_100CE8620;
  if (!qword_100CE8620)
  {
    result = swift_getWitnessTable(byte_100A9CC3C, &type metadata for WeatherComponentButtonAccessibilityValuePreferenceKey, v0, v1);
    atomic_store(result, &qword_100CE8620);
  }

  return result;
}

uint64_t sub_100967348(uint64_t a1, void (*a2)(uint64_t, char *, uint64_t))
{
  v469 = a2;
  v3 = sub_10022C350(&qword_100CA65C0, &unk_100A313E0);
  v4 = sub_100003810(v3);
  __chkstk_darwin(v4);
  sub_100003990(&v411 - v5);
  v6 = sub_10022C350(&qword_100CA65D0, &unk_100A313F0);
  v7 = sub_100003810(v6);
  __chkstk_darwin(v7);
  sub_100003990(&v411 - v8);
  v9 = sub_10022C350(&qword_100CA65C8, &unk_100A31670);
  v10 = sub_100003810(v9);
  __chkstk_darwin(v10);
  v12 = sub_100003918(&v411 - v11);
  v472 = type metadata accessor for LocationPreviewModalViewState(v12);
  sub_1000037E8();
  __chkstk_darwin(v13);
  sub_100003848();
  v476 = v14;
  __chkstk_darwin(v15);
  sub_10000E70C();
  v17 = sub_100003918(v16);
  v471 = type metadata accessor for LocationPreviewViewState(v17);
  sub_1000037E8();
  __chkstk_darwin(v18);
  sub_100003848();
  v475 = v19;
  __chkstk_darwin(v20);
  sub_10000E70C();
  v22 = sub_100003918(v21);
  v478 = type metadata accessor for ViewState(v22);
  sub_1000037E8();
  __chkstk_darwin(v23);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v24);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v25);
  sub_10000E70C();
  v27 = sub_100003918(v26);
  v474 = type metadata accessor for TimeState(v27);
  sub_1000037E8();
  __chkstk_darwin(v28);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v29);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v30);
  sub_10000E70C();
  v468 = v31;
  v32 = sub_1000038CC();
  v473 = type metadata accessor for NotificationsOptInState(v32);
  sub_1000037E8();
  __chkstk_darwin(v33);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v34);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v35);
  sub_10000E70C();
  v467 = v36;
  v37 = sub_1000038CC();
  v477 = type metadata accessor for NotificationsState(v37);
  sub_1000037E8();
  __chkstk_darwin(v38);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v39);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v40);
  sub_10000E70C();
  v466 = v41;
  v42 = sub_1000038CC();
  v481 = type metadata accessor for LocationsState(v42);
  sub_1000037E8();
  __chkstk_darwin(v43);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v44);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v45);
  sub_10000E70C();
  v465 = v46;
  v47 = sub_1000038CC();
  v480 = type metadata accessor for EnvironmentState(v47);
  sub_1000037E8();
  __chkstk_darwin(v48);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v49);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v50);
  sub_10000E70C();
  v52 = sub_100003918(v51);
  v479 = type metadata accessor for AppConfigurationState(v52);
  sub_1000037E8();
  __chkstk_darwin(v53);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v54);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v55);
  sub_10000E70C();
  sub_100003990(v56);
  v57 = sub_10022C350(&qword_100CA65E8, &unk_100A31410);
  v58 = sub_100003810(v57);
  __chkstk_darwin(v58);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v59);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v60);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v61);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v62);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v63);
  sub_10000E70C();
  sub_100003990(v64);
  v65 = sub_10022C350(&qword_100CA6610, &unk_100A32610);
  v66 = sub_100003810(v65);
  __chkstk_darwin(v66);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v67);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v68);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v69);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v70);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v71);
  sub_10000E70C();
  sub_100003990(v72);
  v73 = sub_10022C350(&qword_100CA6618, &unk_100A31440);
  v74 = sub_100003810(v73);
  __chkstk_darwin(v74);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v75);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v76);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v77);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v78);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v79);
  sub_10000E70C();
  sub_100003990(v80);
  v81 = sub_10022C350(&qword_100CA6620, &unk_100A32620);
  v82 = sub_100003810(v81);
  __chkstk_darwin(v82);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v83);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v84);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v85);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v86);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v87);
  sub_10000E70C();
  sub_100003990(v88);
  v89 = sub_10022C350(&qword_100CA6628, &unk_100A31450);
  v90 = sub_100003810(v89);
  __chkstk_darwin(v90);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v91);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v92);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v93);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v94);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v95);
  sub_10000E70C();
  sub_100003990(v96);
  v97 = sub_10022C350(&qword_100CA6630, &unk_100A32630);
  v98 = sub_100003810(v97);
  __chkstk_darwin(v98);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v99);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v100);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v101);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v102);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v103);
  sub_10000E70C();
  sub_100003990(v104);
  v105 = sub_10022C350(&qword_100CA6638, &unk_100A31460);
  v106 = sub_100003810(v105);
  __chkstk_darwin(v106);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v107);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v108);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v109);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v110);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v111);
  sub_10000E70C();
  sub_100003990(v112);
  v113 = sub_10022C350(&qword_100CA6640, qword_100A32640);
  v114 = sub_100003810(v113);
  __chkstk_darwin(v114);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v115);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v116);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v117);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v118);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v119);
  sub_10000E70C();
  v121 = sub_100003918(v120);
  v122 = type metadata accessor for ConditionDetailViewState(v121);
  v123 = sub_100003810(v122);
  __chkstk_darwin(v123);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v124);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v125);
  v127 = &v411 - v126;
  v128 = type metadata accessor for ModalViewState(0);
  sub_1000037E8();
  __chkstk_darwin(v129);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v130);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v131);
  v133 = &v411 - v132;
  __chkstk_darwin(v134);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v135);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v136);
  v138 = &v411 - v137;
  __chkstk_darwin(v139);
  sub_100003878();
  v470 = v140;
  __chkstk_darwin(v141);
  v143 = &v411 - v142;
  __chkstk_darwin(v144);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v145);
  v147 = &v411 - v146;
  type metadata accessor for ModalViewState.LocationDetailModal(0);
  sub_1000037E8();
  __chkstk_darwin(v148);
  v150 = &v411 - ((v149 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v151);
  v153 = &v411 - v152;
  sub_10001D374();
  v482 = v154;
  sub_1000BCD60();
  if (swift_getEnumCaseMultiPayload() == 5)
  {
    sub_1000D3B10();
    sub_1000BCD60();
    if (!swift_getEnumCaseMultiPayload())
    {
      sub_100049F88();
      sub_1000D3B10();
      v212 = sub_100003BCC(&v484);
      sub_10001B350(v212, v213, v214, v479);
      v215 = sub_100003BCC(&v485);
      sub_10001B350(v215, v216, v217, v480);
      v218 = sub_100003BCC(&v486);
      sub_10001B350(v218, v219, v220, v481);
      v221 = sub_100003BCC(&v487);
      sub_10001B350(v221, v222, v223, v477);
      v224 = sub_100003BCC(&v488);
      v225 = v473;
      sub_10001B350(v224, v226, v227, v473);
      v228 = sub_100003BCC(&v489);
      v229 = v474;
      sub_10001B350(v228, v230, v231, v474);
      v232 = sub_100003BCC(&v490);
      sub_10001B350(v232, v233, v234, v478);
      sub_1009698C4(v469, v444);
      sub_10004EE30();
      sub_1000E03B0(v127, v235);
      sub_1000E03B0(v153, type metadata accessor for ModalViewState.LocationDetailModal);
      swift_storeEnumTagMultiPayload();
      swift_storeEnumTagMultiPayload();
      sub_10000E7B0();
      sub_10001B350(v236, v237, v238, v128);
      sub_10001D374();
      v239 = a1;
      sub_1000BCD60();
      v240 = v445;
      sub_100051BBC();
      sub_100005404(v240);
      if (v211)
      {
        sub_1000180EC(v240, &qword_100CA65E8, &unk_100A31410);
      }

      else
      {
        sub_1000110B0();
        sub_1000E03B0(v143, v299);
        sub_10001FDFC();
        sub_1000D3B10();
      }

      v300 = v448;
      v301 = v443;
      v302 = v442;
      sub_10001FDFC();
      sub_1000D3B10();
      v303 = *(v239 + 16);
      LODWORD(v476) = *(v239 + 24);
      sub_100051BBC();
      v304 = sub_1000162B0();
      v305 = v479;
      sub_1000038B4(v304, v306, v479);
      v482 = v303;
      if (v211)
      {
        sub_100075398();
        sub_1000BCD60();
        v307 = sub_1000162B0();
        v309 = sub_100024D10(v307, v308, v305);

        v311 = v480;
        v310 = v481;
        if (v309 != 1)
        {
          sub_1000180EC(v302, &qword_100CA6640, qword_100A32640);
        }
      }

      else
      {
        sub_100037EC4();
        sub_1000D3B10();

        v311 = v480;
        v310 = v481;
      }

      sub_1000325C0();
      sub_100051BBC();
      v312 = sub_1000162B0();
      sub_1000038B4(v312, v313, v311);
      if (v211)
      {
        sub_10002014C(v239 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_environment);
        sub_10000EF3C();
        sub_1000BCD60();
        v314 = sub_1000162B0();
        sub_1000038B4(v314, v315, v311);
        v316 = v450;
        v317 = v446;
        if (!v211)
        {
          sub_1000180EC(v302, &qword_100CA6638, &unk_100A31460);
        }
      }

      else
      {
        sub_100028E88();
        sub_1000D3B10();
        v316 = v450;
        v317 = v446;
      }

      sub_100051BBC();
      sub_1000038B4(v301, 1, v310);
      if (v211)
      {
        sub_10002CC08();
        sub_1000BCD60();
        sub_1000038B4(v301, 1, v310);
        v318 = v447;
        if (!v211)
        {
          sub_1000180EC(v301, &qword_100CA6630, &unk_100A32630);
        }
      }

      else
      {
        sub_100020D3C();
        sub_1000D3B10();
        v318 = v447;
      }

      sub_100051BBC();
      sub_100005404(v317);
      if (v211)
      {
        sub_10000D01C();
        sub_1000BCD60();
        sub_100005404(v317);
        v319 = v449;
        if (!v211)
        {
          sub_1000180EC(v317, &qword_100CA6628, &unk_100A31450);
        }
      }

      else
      {
        sub_100024C80();
        sub_1000D3B10();
        v319 = v449;
      }

      sub_100051BBC();
      v320 = sub_1000162A4();
      sub_1000038B4(v320, v321, v225);
      if (v211)
      {
        sub_10003CA68();
        sub_1000BCD60();
        v322 = sub_1000162A4();
        sub_1000038B4(v322, v323, v225);
        if (!v211)
        {
          sub_1000180EC(v318, &qword_100CA6620, &unk_100A32620);
        }
      }

      else
      {
        sub_10001805C();
        sub_1000D3B10();
      }

      sub_100051BBC();
      v324 = sub_10000C7F0();
      sub_1000038B4(v324, v325, v229);
      if (v211)
      {
        sub_100069CC4();
        sub_1000BCD60();
        v326 = sub_10000C7F0();
        sub_1000038B4(v326, v327, v229);
        if (!v211)
        {
          sub_1000180EC(v300, &qword_100CA6618, &unk_100A31440);
        }
      }

      else
      {
        sub_100013F6C();
        sub_1000D3B10();
      }

      sub_1000203EC();
      v328 = sub_1000131C4();
      sub_1000038B4(v328, v329, v478);
      if (v211)
      {
        sub_100017198();
        sub_1000BCD60();
        sub_100003A40(v319);
        v330 = v316;
        if (!v211)
        {
          sub_1000180EC(v319, &qword_100CA6610, &unk_100A32610);
        }
      }

      else
      {
        sub_1000235F4();
        sub_1000D3B10();
        v330 = v316;
      }

      sub_10001FDFC();
      v331 = v470;
      sub_1000D3B10();
      v333 = *(v239 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData);
      v332 = *(v239 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData + 8);
      v335 = *(v239 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData + 16);
      v334 = *(v239 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData + 24);
      v336 = v239;
      v337 = *(v239 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_debugState);
      v339 = *(v239 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_debugState + 8);
      v338 = *(v239 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_debugState + 16);
      v340 = *(v336 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_contentStatusBanners);
      type metadata accessor for MainState._Storage(0);
      swift_allocObject();
      LOBYTE(v410) = v337;
      sub_10003E038(v482, v476, v463, v464, v465, v466, v467, v468, v330, v331, v333, v332, v335, v334, v410, v339, v338, v340, v411, v412, v413, v414, v415, v416, v417, v418, v419, v420, v421, v422, v423, v424, v425, v426, v427);
      v157 = v341;

      goto LABEL_115;
    }

    sub_1000E03B0(v153, type metadata accessor for ModalViewState.LocationDetailModal);
    v155 = v150;
    v156 = type metadata accessor for ModalViewState.LocationDetailModal;
  }

  else
  {
    sub_1000110B0();
    v155 = v147;
  }

  sub_1000E03B0(v155, v156);
  sub_10001D374();
  v157 = a1;
  sub_1000BCD60();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v159 = v480;
  v160 = v481;
  v161 = v476;
  if (EnumCaseMultiPayload)
  {
    sub_1000110B0();
    sub_1000E03B0(v138, v162);
    v163 = v479;
  }

  else
  {
    sub_1000373A0();
    v164 = v455;
    sub_1000D3B10();
    sub_10002446C();
    v165 = v454;
    sub_1000BCD60();
    v166 = v472;
    v167 = swift_getEnumCaseMultiPayload();
    v163 = v479;
    if (v167 == 1)
    {
      sub_100049F88();
      v168 = v424;
      sub_1000D3B10();
      v169 = sub_100003BCC(&v472);
      sub_10001B350(v169, v170, v171, v163);
      v172 = sub_100003BCC(&v473);
      sub_10001B350(v172, v173, v174, v480);
      v175 = sub_100003BCC(&v474);
      sub_10001B350(v175, v176, v177, v481);
      v178 = sub_100003BCC(&v475);
      sub_10001B350(v178, v179, v180, v477);
      v181 = sub_100003BCC(&v477);
      sub_10001B350(v181, v182, v183, v473);
      v184 = sub_100003BCC(&v479);
      sub_10001B350(v184, v185, v186, v474);
      v187 = sub_100003BCC(&v480);
      sub_10001B350(v187, v188, v189, v478);
      type metadata accessor for PreviewLocation(0);
      v190 = v451;
      sub_100003934();
      sub_10001B350(v191, v192, v193, v194);
      v195 = v452;
      sub_1009698C4(v469, v452);
      swift_storeEnumTagMultiPayload();
      sub_10000E7B0();
      sub_10001B350(v196, v197, v198, v166);
      type metadata accessor for SelectedSearchResult(0);
      v199 = v453;
      sub_100003934();
      sub_10001B350(v200, v201, v202, v203);
      sub_10043DB64(v190, v195, v199, v429);
      sub_1000180EC(v199, &qword_100CA65C0, &unk_100A313E0);
      sub_1000180EC(v195, &qword_100CA65D0, &unk_100A313F0);
      sub_1000180EC(v190, &qword_100CA65C8, &unk_100A31670);
      sub_10004EE30();
      sub_1000E03B0(v168, v204);
      sub_1000151EC();
      sub_1000E03B0(v164, v205);
      swift_storeEnumTagMultiPayload();
      sub_10000E7B0();
      sub_10001B350(v206, v207, v208, v128);
      sub_10001D374();
      v209 = v425;
      sub_1000BCD60();
      v210 = v430;
      sub_100051BBC();
      sub_100005404(v210);
      if (v211)
      {
        sub_1000180EC(v210, &qword_100CA65E8, &unk_100A31410);
      }

      else
      {
        sub_1000110B0();
        sub_1000E03B0(v209, v343);
        sub_10001FDFC();
        sub_1000D3B10();
      }

      v344 = v433;
      v345 = v432;
      v346 = v428;
      v347 = v426;
      sub_10001FDFC();
      sub_1000D3B10();
      v348 = *(v157 + 16);
      LODWORD(v476) = *(v157 + 24);
      sub_100051BBC();
      v349 = sub_10000C7F0();
      sub_1000038B4(v349, v350, v163);
      v351 = v481;
      if (v211)
      {
        sub_100075398();
        sub_1000BCD60();
        v352 = sub_10000C7F0();
        v354 = sub_100024D10(v352, v353, v163);

        if (v354 != 1)
        {
          sub_1000180EC(v347, &qword_100CA6640, qword_100A32640);
        }
      }

      else
      {
        sub_100037EC4();
        sub_1000D3B10();
      }

      sub_1000325C0();
      sub_100051BBC();
      v355 = sub_1000162B0();
      sub_1000038B4(v355, v356, v480);
      if (v211)
      {
        sub_10002014C(v157 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_environment);
        sub_10000EF3C();
        sub_1000BCD60();
        sub_100003A40(v163);
        v357 = v431;
        if (!v211)
        {
          sub_1000180EC(v163, &qword_100CA6638, &unk_100A31460);
        }
      }

      else
      {
        sub_100028E88();
        sub_1000D3B10();
        v357 = v431;
      }

      sub_100051BBC();
      v358 = sub_1000162A4();
      sub_1000038B4(v358, v359, v351);
      if (v211)
      {
        sub_10002CC08();
        sub_1000BCD60();
        v360 = sub_1000162A4();
        sub_1000038B4(v360, v361, v351);
        if (!v211)
        {
          sub_1000180EC(v346, &qword_100CA6630, &unk_100A32630);
        }
      }

      else
      {
        sub_100020D3C();
        sub_1000D3B10();
      }

      sub_1000203EC();
      sub_100003A40(v357);
      if (v211)
      {
        sub_10000D01C();
        sub_1000BCD60();
        sub_100003A40(v357);
        if (!v211)
        {
          sub_1000180EC(v357, &qword_100CA6628, &unk_100A31450);
        }
      }

      else
      {
        sub_100024C80();
        sub_1000D3B10();
      }

      sub_100051BBC();
      sub_1000038B4(v345, 1, v473);
      if (v211)
      {
        sub_10003CA68();
        sub_1000BCD60();
        sub_100005404(v345);
        v362 = v434;
        if (!v211)
        {
          sub_1000180EC(v345, &qword_100CA6620, &unk_100A32620);
        }
      }

      else
      {
        sub_10001805C();
        sub_1000D3B10();
        v362 = v434;
      }

      sub_100051BBC();
      v363 = sub_10000C834();
      v364 = v474;
      sub_1000038B4(v363, v365, v474);
      if (v211)
      {
        sub_100069CC4();
        sub_1000BCD60();
        v366 = sub_10000C834();
        sub_1000038B4(v366, v367, v364);
        if (!v211)
        {
          sub_1000180EC(v344, &qword_100CA6618, &unk_100A31440);
        }
      }

      else
      {
        sub_100013F6C();
        sub_1000D3B10();
      }

      sub_1000203EC();
      v368 = sub_1000131C4();
      v369 = v478;
      sub_1000038B4(v368, v370, v478);
      v482 = v348;
      if (v211)
      {
        sub_100017198();
        sub_1000BCD60();
        v371 = sub_1000131C4();
        sub_1000038B4(v371, v372, v369);
        if (!v211)
        {
          sub_1000180EC(v362, &qword_100CA6610, &unk_100A32610);
        }
      }

      else
      {
        sub_1000235F4();
        sub_1000D3B10();
      }

      sub_10001FDFC();
      sub_1000D3B10();
      sub_10008686C();
      type metadata accessor for MainState._Storage(0);
      swift_allocObject();
      v373 = sub_1000217AC();
      v375 = v458;
      v376 = v459;
      v377 = v460;
      v378 = v461[0];
      v379 = v461[1];
      v380 = &v483;
      goto LABEL_114;
    }

    sub_1000151EC();
    sub_1000E03B0(v164, v241);
    sub_100041C4C();
    sub_1000E03B0(v165, v242);
    v159 = v480;
    v160 = v481;
  }

  sub_10001D374();
  sub_1000BCD60();
  v243 = swift_getEnumCaseMultiPayload();
  v244 = v475;
  if (v243 != 4)
  {
    sub_1000110B0();
    v250 = v133;
LABEL_20:
    sub_1000E03B0(v250, v249);
    goto LABEL_21;
  }

  v245 = type metadata accessor for ModalViewState.MapViewModal(0);
  v246 = sub_10000C7F0();
  sub_1000038B4(v246, v247, v245);
  v248 = v478;
  if (!v211)
  {
    sub_1000373A0();
    sub_1000D3B10();
    sub_10002446C();
    sub_1000BCD60();
    v251 = v472;
    v252 = swift_getEnumCaseMultiPayload();
    if (v252 == 1)
    {
      sub_100049F88();
      sub_1000325C0();
      sub_1000D3B10();
      v253 = sub_100003BCC(&v455);
      sub_10001B350(v253, v254, v255, v163);
      v256 = sub_100003BCC(v456);
      sub_10001B350(v256, v257, v258, v159);
      v259 = sub_100003BCC(v457);
      sub_10001B350(v259, v260, v261, v160);
      v262 = sub_100003BCC(&v458);
      sub_10001B350(v262, v263, v264, v477);
      v265 = sub_100003BCC(&v459);
      sub_10001B350(v265, v266, v267, v473);
      v268 = sub_100003BCC(&v460);
      sub_10001B350(v268, v269, v270, v474);
      v271 = sub_100003BCC(v461);
      sub_10001B350(v271, v272, v273, v248);
      type metadata accessor for PreviewLocation(0);
      v274 = v451;
      sub_100003934();
      sub_10001B350(v275, v276, v277, v278);
      v279 = v452;
      v280 = v244;
      sub_1009698C4(v469, v452);
      swift_storeEnumTagMultiPayload();
      sub_10000E7B0();
      sub_10001B350(v281, v282, v283, v251);
      type metadata accessor for SelectedSearchResult(0);
      v284 = v453;
      sub_100003934();
      sub_10001B350(v285, v286, v287, v288);
      sub_10043DB64(v274, v279, v284, v417);
      sub_1000180EC(v284, &qword_100CA65C0, &unk_100A313E0);
      sub_1000180EC(v279, &qword_100CA65D0, &unk_100A313F0);
      sub_1000180EC(v274, &qword_100CA65C8, &unk_100A31670);
      sub_10004EE30();
      sub_1000E03B0(v163, v289);
      sub_1000151EC();
      sub_1000E03B0(v280, v290);
      sub_10000E7B0();
      sub_10001B350(v291, v292, v293, v245);
      swift_storeEnumTagMultiPayload();
      sub_10000E7B0();
      sub_10001B350(v294, v295, v296, v128);
      sub_10001D374();
      v297 = v413;
      sub_1000BCD60();
      v298 = v418;
      sub_100051BBC();
      sub_100005404(v298);
      if (v211)
      {
        sub_1000180EC(v298, &qword_100CA65E8, &unk_100A31410);
      }

      else
      {
        sub_1000110B0();
        sub_1000E03B0(v297, v381);
        sub_10001FDFC();
        sub_1000D3B10();
      }

      v382 = *(&v421 + 1);
      v383 = v421;
      v384 = v416;
      v385 = v414;
      sub_10001FDFC();
      sub_1000D3B10();
      v386 = *(v157 + 16);
      LODWORD(v476) = *(v157 + 24);
      sub_100051BBC();
      v387 = sub_10000C7F0();
      v388 = v479;
      sub_1000038B4(v387, v389, v479);
      v390 = v481;
      if (v211)
      {
        sub_100075398();
        sub_1000BCD60();
        v391 = sub_10000C7F0();
        v393 = sub_100024D10(v391, v392, v388);

        if (v393 != 1)
        {
          sub_1000180EC(v385, &qword_100CA6640, qword_100A32640);
        }
      }

      else
      {
        sub_100037EC4();
        sub_1000D3B10();
      }

      sub_1000325C0();
      sub_100051BBC();
      v394 = sub_1000162B0();
      sub_1000038B4(v394, v395, v480);
      if (v211)
      {
        sub_10002014C(v157 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_environment);
        sub_10000EF3C();
        sub_1000BCD60();
        sub_100003A40(v163);
        v396 = v420;
        if (!v211)
        {
          sub_1000180EC(v163, &qword_100CA6638, &unk_100A31460);
        }
      }

      else
      {
        sub_100028E88();
        sub_1000D3B10();
        v396 = v420;
      }

      sub_100051BBC();
      sub_1000038B4(v384, 1, v390);
      if (v211)
      {
        sub_10002CC08();
        sub_1000BCD60();
        sub_1000038B4(v384, 1, v390);
        v397 = v478;
        if (!v211)
        {
          sub_1000180EC(v384, &qword_100CA6630, &unk_100A32630);
        }
      }

      else
      {
        sub_100020D3C();
        sub_1000D3B10();
        v397 = v478;
      }

      sub_1000203EC();
      sub_100003A40(v396);
      if (v211)
      {
        sub_10000D01C();
        sub_1000BCD60();
        sub_100003A40(v396);
        if (!v211)
        {
          sub_1000180EC(v396, &qword_100CA6628, &unk_100A31450);
        }
      }

      else
      {
        sub_100024C80();
        sub_1000D3B10();
      }

      sub_100051BBC();
      sub_1000038B4(v383, 1, v473);
      if (v211)
      {
        sub_10003CA68();
        sub_1000BCD60();
        sub_100005404(v383);
        v398 = v422;
        if (!v211)
        {
          sub_1000180EC(v383, &qword_100CA6620, &unk_100A32620);
        }
      }

      else
      {
        sub_10001805C();
        sub_1000D3B10();
        v398 = v422;
      }

      sub_100051BBC();
      v399 = sub_10000C834();
      v400 = v474;
      sub_1000038B4(v399, v401, v474);
      if (v211)
      {
        sub_100069CC4();
        sub_1000BCD60();
        v402 = sub_10000C834();
        sub_1000038B4(v402, v403, v400);
        if (!v211)
        {
          sub_1000180EC(v382, &qword_100CA6618, &unk_100A31440);
        }
      }

      else
      {
        sub_100013F6C();
        sub_1000D3B10();
      }

      sub_1000203EC();
      v404 = sub_1000131C4();
      sub_1000038B4(v404, v405, v397);
      v482 = v386;
      if (v211)
      {
        sub_100017198();
        sub_1000BCD60();
        v406 = sub_1000131C4();
        sub_1000038B4(v406, v407, v397);
        if (!v211)
        {
          sub_1000180EC(v398, &qword_100CA6610, &unk_100A32610);
        }
      }

      else
      {
        sub_1000235F4();
        sub_1000D3B10();
      }

      sub_10001FDFC();
      sub_1000D3B10();
      sub_10008686C();
      type metadata accessor for MainState._Storage(0);
      swift_allocObject();
      v373 = sub_1000217AC();
      v375 = v437;
      v376 = v438;
      v377 = v439;
      v378 = v440;
      v379 = v441;
      v380 = &v462;
LABEL_114:
      sub_10003E038(v373, v374, v375, v376, v377, v378, v379, *(v380 - 32), v411, v412, v413, v414, v415, v416, v417, v418, v419, v420, v421, *(&v421 + 1), v422, v423, v424, v425, v426, v427, v428, v429, v430, v431, v432, v433, v434, v435, v436);
      v157 = v408;

LABEL_115:

      return v157;
    }

    sub_1000151EC();
    sub_1000E03B0(v244, v342);
    sub_100041C4C();
    v250 = v161;
    goto LABEL_20;
  }

  sub_1000180EC(v133, &qword_100CA65E0, &unk_100A31400);
LABEL_21:

  return v157;
}

uint64_t sub_1009698C4@<X0>(void (*a1)(uint64_t, char *, uint64_t)@<X0>, uint64_t a2@<X8>)
{
  v267 = a1;
  *&v272 = a2;
  v275 = type metadata accessor for DetailChartSelection(0);
  __chkstk_darwin(v275);
  v236 = &v224 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v274 = type metadata accessor for Location();
  *&v271 = *(v274 - 8);
  __chkstk_darwin(v274);
  v264 = &v224 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v265 = &v224 - v5;
  __chkstk_darwin(v6);
  v263 = &v224 - v7;
  __chkstk_darwin(v8);
  v262 = &v224 - v9;
  *&v273 = type metadata accessor for DetailCondition();
  v269 = *(v273 - 8);
  __chkstk_darwin(v273);
  v260 = &v224 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v261 = &v224 - v12;
  __chkstk_darwin(v13);
  v259 = &v224 - v14;
  __chkstk_darwin(v15);
  v258 = &v224 - v16;
  v17 = sub_10022C350(&qword_100CB0BA8, &unk_100A40F80);
  __chkstk_darwin(v17 - 8);
  v244 = &v224 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v247 = &v224 - v20;
  __chkstk_darwin(v21);
  v239 = &v224 - v22;
  __chkstk_darwin(v23);
  v242 = &v224 - v24;
  __chkstk_darwin(v25);
  v246 = &v224 - v26;
  __chkstk_darwin(v27);
  v238 = &v224 - v28;
  __chkstk_darwin(v29);
  v241 = &v224 - v30;
  __chkstk_darwin(v31);
  v245 = &v224 - v32;
  __chkstk_darwin(v33);
  v237 = &v224 - v34;
  __chkstk_darwin(v35);
  v240 = &v224 - v36;
  __chkstk_darwin(v37);
  v243 = &v224 - v38;
  __chkstk_darwin(v39);
  v254 = &v224 - v40;
  v41 = sub_10022C350(&unk_100CB2CF0, &unk_100A2D7F0);
  __chkstk_darwin(v41 - 8);
  v235 = &v224 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v43);
  v257 = &v224 - v44;
  __chkstk_darwin(v45);
  v252 = &v224 - v46;
  __chkstk_darwin(v47);
  v234 = &v224 - v48;
  __chkstk_darwin(v49);
  v256 = &v224 - v50;
  __chkstk_darwin(v51);
  v251 = &v224 - v52;
  __chkstk_darwin(v53);
  v233 = &v224 - v54;
  __chkstk_darwin(v55);
  v255 = &v224 - v56;
  __chkstk_darwin(v57);
  v250 = &v224 - v58;
  __chkstk_darwin(v59);
  v232 = &v224 - v60;
  __chkstk_darwin(v61);
  v253 = &v224 - v62;
  __chkstk_darwin(v63);
  v249 = &v224 - v64;
  v65 = sub_10022C350(&qword_100CA65D8, &unk_100A3D9D0);
  __chkstk_darwin(v65 - 8);
  v231 = &v224 - ((v66 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v67);
  v227 = &v224 - v68;
  __chkstk_darwin(v69);
  v230 = &v224 - v70;
  __chkstk_darwin(v71);
  v226 = &v224 - v72;
  __chkstk_darwin(v73);
  v229 = &v224 - v74;
  __chkstk_darwin(v75);
  v248 = &v224 - v76;
  __chkstk_darwin(v77);
  v228 = &v224 - v78;
  __chkstk_darwin(v79);
  v225 = &v224 - v80;
  v81 = sub_10022C350(&qword_100CE86C0, &qword_100A9CD08);
  __chkstk_darwin(v81 - 8);
  v224 = &v224 - ((v82 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v83);
  v85 = &v224 - v84;
  __chkstk_darwin(v86);
  v88 = &v224 - v87;
  __chkstk_darwin(v89);
  v91 = &v224 - v90;
  __chkstk_darwin(v92);
  v94 = &v224 - v93;
  __chkstk_darwin(v95);
  v97 = &v224 - v96;
  __chkstk_darwin(v98);
  v100 = &v224 - v99;
  __chkstk_darwin(v101);
  v103 = &v224 - v102;
  v268 = type metadata accessor for Date();
  v266 = *(v268 - 8);
  __chkstk_darwin(v268);
  v105 = &v224 - ((v104 + 15) & 0xFFFFFFFFFFFFFFF0);
  v106 = type metadata accessor for ConditionDetailViewAction(0);
  __chkstk_darwin(v106);
  v108 = &v224 - ((v107 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000BCD60();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v149 = v269;
      v150 = v108;
      v151 = *(v269 + 32);
      v152 = v273;
      v151(v97, v150, v273);
      sub_10001B350(v97, 0, 1, v152);
      v153 = v274;
      sub_10001B350(v248, 1, 1, v274);
      v154 = v268;
      sub_10001B350(v250, 1, 1, v268);
      v155 = v275;
      sub_10001B350(v237, 1, 1, v275);
      sub_100051BBC();
      v156 = sub_100024D10(v94, 1, v152);
      v267 = v151;
      if (v156 == 1)
      {
        v157 = v270;
        (*(v149 + 16))(v259, v270, v152);
        v158 = sub_100024D10(v94, 1, v152);
        v159 = v229;
        if (v158 != 1)
        {
          sub_1000180EC(v94, &qword_100CE86C0, &qword_100A9CD08);
        }
      }

      else
      {
        v151(v259, v94, v152);
        v157 = v270;
        v159 = v229;
      }

      sub_100051BBC();
      v198 = sub_100024D10(v159, 1, v153);
      v199 = v271;
      if (v198 == 1)
      {
        v200 = type metadata accessor for ConditionDetailViewState(0);
        (*(v199 + 16))(v263, v157 + *(v200 + 20), v153);
        v126 = sub_100024D10(v159, 1, v153) == 1;
        v201 = v159;
        v202 = v272;
        v203 = v233;
        if (!v126)
        {
          sub_1000180EC(v201, &qword_100CA65D8, &unk_100A3D9D0);
        }
      }

      else
      {
        (*(v271 + 32))(v263, v159, v153);
        v202 = v272;
        v203 = v233;
      }

      sub_100051BBC();
      if (sub_100024D10(v203, 1, v154) == 1)
      {
        type metadata accessor for ConditionDetailViewState(0);
        sub_100095588();
        if (sub_100024D10(v203, 1, v154) != 1)
        {
          sub_1000180EC(v203, &unk_100CB2CF0, &unk_100A2D7F0);
        }
      }

      else
      {
        v211 = v255;
        (*(v266 + 32))(v255, v203, v154);
        sub_10001B350(v211, 0, 1, v154);
      }

      v212 = type metadata accessor for ConditionDetailViewState(0);
      v213 = (v157 + v212[7]);
      v214 = *v213;
      v270 = v213[1];
      v272 = v214;
      v215 = *(v213 + 32);
      v216 = v241;
      sub_100051BBC();
      v217 = sub_100024D10(v216, 1, v155);
      v218 = v245;
      if (v217 == 1)
      {
        sub_100095588();
        if (sub_100024D10(v216, 1, v155) != 1)
        {
          sub_1000180EC(v216, &qword_100CB0BA8, &unk_100A40F80);
        }
      }

      else
      {
        sub_1000D3B10();
        sub_10001B350(v218, 0, 1, v155);
      }

      v221 = *(v157 + v212[9]);
      v267(v202, v259, v152);
      (*(v199 + 32))(v202 + v212[5], v263, v274);
      sub_100051BBC();
      v222 = v202 + v212[7];
      v223 = v270;
      *v222 = v272;
      *(v222 + 16) = v223;
      *(v222 + 32) = v215;
      result = sub_100051BBC();
      *(v202 + v212[9]) = v221;
      break;
    case 2u:
      sub_1000D3B10();
      v130 = v273;
      sub_10001B350(v91, 1, 1, v273);
      v131 = v274;
      sub_10001B350(v226, 1, 1, v274);
      sub_10001B350(v251, 1, 1, v268);
      v132 = v238;
      sub_1000D3B10();
      sub_10001B350(v132, 0, 1, v275);
      sub_100051BBC();
      if (sub_100024D10(v88, 1, v130) == 1)
      {
        v134 = v269;
        v133 = v270;
        (*(v269 + 16))(v261, v270, v130);
        v135 = sub_100024D10(v88, 1, v130);
        v136 = v234;
        v137 = v230;
        if (v135 != 1)
        {
          sub_1000180EC(v88, &qword_100CE86C0, &qword_100A9CD08);
        }
      }

      else
      {
        v134 = v269;
        (*(v269 + 32))(v261, v88, v130);
        v133 = v270;
        v136 = v234;
        v137 = v230;
      }

      sub_100051BBC();
      v175 = sub_100024D10(v137, 1, v131);
      v176 = v271;
      if (v175 == 1)
      {
        v177 = type metadata accessor for ConditionDetailViewState(0);
        (*(v176 + 16))(v265, v133 + *(v177 + 20), v131);
        v126 = sub_100024D10(v137, 1, v131) == 1;
        v178 = v272;
        v179 = v137;
        v180 = v268;
        v181 = v242;
        if (!v126)
        {
          sub_1000180EC(v179, &qword_100CA65D8, &unk_100A3D9D0);
        }
      }

      else
      {
        (*(v271 + 32))(v265, v137, v131);
        v178 = v272;
        v180 = v268;
        v181 = v242;
      }

      sub_100051BBC();
      if (sub_100024D10(v136, 1, v180) == 1)
      {
        type metadata accessor for ConditionDetailViewState(0);
        sub_100095588();
        if (sub_100024D10(v136, 1, v180) != 1)
        {
          sub_1000180EC(v136, &unk_100CB2CF0, &unk_100A2D7F0);
        }
      }

      else
      {
        v182 = v136;
        v183 = v256;
        (*(v266 + 32))(v256, v182, v180);
        sub_10001B350(v183, 0, 1, v180);
      }

      v184 = type metadata accessor for ConditionDetailViewState(0);
      v185 = (v133 + v184[7]);
      v186 = *v185;
      v270 = v185[1];
      v272 = v186;
      LODWORD(v269) = *(v185 + 32);
      sub_100051BBC();
      v187 = v275;
      if (sub_100024D10(v181, 1, v275) == 1)
      {
        sub_100095588();
        if (sub_100024D10(v181, 1, v187) != 1)
        {
          sub_1000180EC(v181, &qword_100CB0BA8, &unk_100A40F80);
        }
      }

      else
      {
        v188 = v246;
        sub_1000D3B10();
        sub_10001B350(v188, 0, 1, v187);
      }

      v189 = *(v133 + v184[9]);
      (*(v134 + 32))(v178, v261, v130);
      (*(v176 + 32))(v178 + v184[5], v265, v131);
      sub_100051BBC();
      v190 = v178 + v184[7];
      v191 = v270;
      *v190 = v272;
      *(v190 + 16) = v191;
      *(v190 + 32) = v269;
      goto LABEL_69;
    case 3u:
      v138 = v270;
      v139 = v272;
      (*(v269 + 16))(v272, v270, v273);
      v140 = type metadata accessor for ConditionDetailViewState(0);
      (*(v271 + 16))(v139 + v140[5], v138 + v140[5], v274);
      sub_100095588();
      v141 = v140[8];
      v142 = (v138 + v140[7]);
      v143 = *(v142 + 32);
      v144 = *v142;
      v273 = v142[1];
      v274 = v144;
      result = sub_10001B350(v139 + v141, 1, 1, v275);
      v146 = *(v138 + v140[9]);
      v147 = v139 + v140[7];
      v148 = v273;
      *v147 = v274;
      *(v147 + 16) = v148;
      *(v147 + 32) = v143;
      *(v139 + v140[9]) = v146;
      break;
    case 4u:
      v119 = v273;
      sub_10001B350(v85, 1, 1, v273);
      v120 = v274;
      sub_10001B350(v227, 1, 1, v274);
      v121 = v268;
      sub_10001B350(v252, 1, 1, v268);
      v122 = v275;
      sub_10001B350(v239, 1, 1, v275);
      v123 = v224;
      sub_100051BBC();
      if (sub_100024D10(v123, 1, v119) == 1)
      {
        v125 = v269;
        v124 = v270;
        (*(v269 + 16))(v260, v270, v119);
        v126 = sub_100024D10(v123, 1, v119) == 1;
        v127 = v123;
        v128 = v235;
        v129 = v231;
        if (!v126)
        {
          sub_1000180EC(v127, &qword_100CE86C0, &qword_100A9CD08);
        }
      }

      else
      {
        v125 = v269;
        (*(v269 + 32))(v260, v123, v119);
        v124 = v270;
        v128 = v235;
        v129 = v231;
      }

      sub_100051BBC();
      v160 = sub_100024D10(v129, 1, v120);
      v161 = v271;
      if (v160 == 1)
      {
        v162 = type metadata accessor for ConditionDetailViewState(0);
        (*(v161 + 16))(v264, v124 + *(v162 + 20), v120);
        v126 = sub_100024D10(v129, 1, v120) == 1;
        v163 = v129;
        v164 = v272;
        if (!v126)
        {
          sub_1000180EC(v163, &qword_100CA65D8, &unk_100A3D9D0);
        }
      }

      else
      {
        (*(v271 + 32))(v264, v129, v120);
        v164 = v272;
      }

      sub_100051BBC();
      if (sub_100024D10(v128, 1, v121) == 1)
      {
        type metadata accessor for ConditionDetailViewState(0);
        sub_100095588();
        if (sub_100024D10(v128, 1, v121) != 1)
        {
          sub_1000180EC(v128, &unk_100CB2CF0, &unk_100A2D7F0);
        }
      }

      else
      {
        v165 = v128;
        v166 = v257;
        (*(v266 + 32))(v257, v165, v121);
        sub_10001B350(v166, 0, 1, v121);
      }

      v167 = type metadata accessor for ConditionDetailViewState(0);
      v168 = (v124 + v167[7]);
      v169 = *v168;
      v270 = v168[1];
      v272 = v169;
      v170 = *(v168 + 32);
      v171 = v244;
      sub_100051BBC();
      if (sub_100024D10(v171, 1, v122) == 1)
      {
        sub_100095588();
        if (sub_100024D10(v171, 1, v122) != 1)
        {
          sub_1000180EC(v171, &qword_100CB0BA8, &unk_100A40F80);
        }
      }

      else
      {
        v172 = v247;
        sub_1000D3B10();
        sub_10001B350(v172, 0, 1, v122);
      }

      (*(v125 + 32))(v164, v260, v119);
      (*(v161 + 32))(v164 + v167[5], v264, v120);
      sub_100051BBC();
      v173 = v164 + v167[7];
      v174 = v270;
      *v173 = v272;
      *(v173 + 16) = v174;
      *(v173 + 32) = v170;
      result = sub_100051BBC();
      *(v164 + v167[9]) = 1;
      break;
    default:
      v110 = v266 + 32;
      v109 = *(v266 + 32);
      v111 = v268;
      v109(v105, v108, v268);
      v112 = v273;
      sub_10001B350(v103, 1, 1, v273);
      v113 = v274;
      sub_10001B350(v225, 1, 1, v274);
      v114 = v249;
      v266 = v110;
      v109(v249, v105, v111);
      sub_10001B350(v114, 0, 1, v111);
      sub_10001B350(v254, 1, 1, v275);
      sub_100051BBC();
      if (sub_100024D10(v100, 1, v112) == 1)
      {
        v116 = v269;
        v115 = v270;
        (*(v269 + 16))(v258, v270, v112);
        v117 = sub_100024D10(v100, 1, v112);
        v118 = v228;
        if (v117 != 1)
        {
          sub_1000180EC(v100, &qword_100CE86C0, &qword_100A9CD08);
        }
      }

      else
      {
        v116 = v269;
        (*(v269 + 32))(v258, v100, v112);
        v115 = v270;
        v118 = v228;
      }

      sub_100051BBC();
      v192 = sub_100024D10(v118, 1, v113);
      v193 = v275;
      if (v192 == 1)
      {
        v194 = type metadata accessor for ConditionDetailViewState(0);
        v195 = v271;
        (*(v271 + 16))(v262, v115 + *(v194 + 20), v113);
        v196 = sub_100024D10(v118, 1, v113);
        v178 = v272;
        v197 = v232;
        if (v196 != 1)
        {
          sub_1000180EC(v118, &qword_100CA65D8, &unk_100A3D9D0);
        }
      }

      else
      {
        v195 = v271;
        (*(v271 + 32))(v262, v118, v113);
        v178 = v272;
        v197 = v232;
      }

      sub_100051BBC();
      if (sub_100024D10(v197, 1, v111) == 1)
      {
        type metadata accessor for ConditionDetailViewState(0);
        sub_100095588();
        if (sub_100024D10(v197, 1, v111) != 1)
        {
          sub_1000180EC(v197, &unk_100CB2CF0, &unk_100A2D7F0);
        }
      }

      else
      {
        v204 = v253;
        v109(v253, v197, v111);
        sub_10001B350(v204, 0, 1, v111);
      }

      v184 = type metadata accessor for ConditionDetailViewState(0);
      v205 = (v115 + v184[7]);
      v206 = *v205;
      v271 = v205[1];
      v272 = v206;
      v207 = *(v205 + 32);
      v208 = v240;
      sub_100051BBC();
      v209 = sub_100024D10(v208, 1, v193);
      v210 = v243;
      if (v209 == 1)
      {
        sub_100095588();
        if (sub_100024D10(v208, 1, v193) != 1)
        {
          sub_1000180EC(v208, &qword_100CB0BA8, &unk_100A40F80);
        }
      }

      else
      {
        sub_1000D3B10();
        sub_10001B350(v210, 0, 1, v193);
      }

      v189 = *(v115 + v184[9]);
      (*(v116 + 32))(v178, v258, v273);
      (*(v195 + 32))(v178 + v184[5], v262, v113);
      sub_100051BBC();
      v219 = v178 + v184[7];
      v220 = v271;
      *v219 = v272;
      *(v219 + 16) = v220;
      *(v219 + 32) = v207;
LABEL_69:
      result = sub_100051BBC();
      *(v178 + v184[9]) = v189;
      break;
  }

  return result;
}

unint64_t sub_10096B6C0(uint64_t a1)
{
  v1 = sub_1006BEA98();
  if (v2 <= 0x3F)
  {
    v1 = type metadata accessor for MoonScrubberStorage(319);
    if (v3 <= 0x3F)
    {
      v1 = sub_10000C70C(319, &qword_100CE8748, UIImpactFeedbackGenerator_ptr);
      if (v4 <= 0x3F)
      {
        v1 = type metadata accessor for ScrubberViewModel(319);
        if (v5 <= 0x3F)
        {
          sub_100329AF4(319, &qword_100CAD690, &type metadata for CGFloat);
          v1 = v6;
          if (v7 <= 0x3F)
          {
            sub_10096B98C(319, &qword_100CE8750, &qword_100CA6188, qword_100A53E20, &type metadata accessor for State);
            if (v9 > 0x3F)
            {
              return v8;
            }

            sub_10096B9F0(319, &qword_100CAD0D8, &type metadata accessor for Date, &type metadata accessor for State);
            if (v10 > 0x3F)
            {
              return v8;
            }

            sub_100329AF4(319, &qword_100CE8758, &type metadata for OffsetBound);
            if (v11 > 0x3F)
            {
              return v8;
            }

            else
            {
              sub_100329AF4(319, &qword_100CA6D40, &type metadata for Bool);
              v1 = v12;
              if (v13 <= 0x3F)
              {
                sub_10096B98C(319, &qword_100CE8760, &qword_100CA6BC0, &unk_100A31BE0, &type metadata accessor for Binding);
                v1 = v14;
                if (v15 <= 0x3F)
                {
                  sub_10096B9F0(319, &qword_100CA3C68, &type metadata accessor for LayoutDirection, &type metadata accessor for Environment);
                  v1 = v16;
                  if (v17 <= 0x3F)
                  {
                    sub_10096BA54();
                    v1 = v18;
                    if (v19 <= 0x3F)
                    {
                      swift_cvw_initStructMetadataWithLayoutString();
                      return 0;
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

  return v1;
}

void sub_10096B98C(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_10022E824(a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_10096B9F0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_10096BA54()
{
  if (!qword_100CE8768)
  {
    v0 = type metadata accessor for FocusState();
    if (!v1)
    {
      atomic_store(v0, &qword_100CE8768);
    }
  }
}

id sub_10096BAC8()
{
  result = sub_10096BAE8();
  qword_100CE86C8 = result;
  return result;
}

id sub_10096BAE8()
{
  v0 = [objc_allocWithZone(NSDateFormatter) init];
  v1 = String._bridgeToObjectiveC()();
  [v0 setLocalizedDateFormatFromTemplate:v1];

  [v0 setFormattingContext:2];
  return v0;
}

id sub_10096BB74()
{
  result = sub_10096BB94();
  qword_100CE86D0 = result;
  return result;
}

id sub_10096BB94()
{
  v0 = [objc_allocWithZone(NSDateFormatter) init];
  static Date.uses24HourTime()();
  v1 = String._bridgeToObjectiveC()();

  [v0 setLocalizedDateFormatFromTemplate:v1];

  [v0 setFormattingContext:2];
  return v0;
}

uint64_t sub_10096BC40@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for EnvironmentValues();
  sub_1000037C4();
  v5 = v4;
  __chkstk_darwin(v6);
  sub_1000037D8();
  v9 = v8 - v7;
  sub_10022C350(&qword_100CA2D60, &qword_100A413F0);
  sub_1000037E8();
  sub_100003828();
  __chkstk_darwin(v10);
  v12 = &v17 - v11;
  v13 = type metadata accessor for ScrubberView(0);
  sub_1005C1F54(v1 + *(v13 + 80), v12, &qword_100CA2D60, &qword_100A413F0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    type metadata accessor for LayoutDirection();
    sub_1000037E8();
    return (*(v14 + 32))(a1, v12);
  }

  else
  {
    static os_log_type_t.fault.getter();
    v16 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v9, v3);
  }
}

uint64_t sub_10096BE20@<X0>(uint64_t a1@<X8>)
{
  v19[1] = a1;
  v2 = type metadata accessor for ScrubberView(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  sub_10022C350(&qword_100CA6BC0, &unk_100A31BE0);
  sub_1000037E8();
  sub_100003828();
  __chkstk_darwin(v5);
  v7 = v19 - v6;
  v8 = sub_10022C350(&qword_100CE87D8, &qword_100A9CDC8);
  sub_1000037E8();
  sub_100003828();
  __chkstk_darwin(v9);
  v11 = v19 - v10;
  *v11 = static Alignment.center.getter();
  *(v11 + 1) = v12;
  v13 = sub_10022C350(&qword_100CE87E0, &qword_100A9CDD0);
  sub_10096C104(v1, &v11[*(v13 + 44)]);
  *&v11[*(sub_10022C350(&qword_100CE87E8, &unk_100A9CDD8) + 36)] = 256;
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v14 = &v11[*(v8 + 36)];
  v15 = v21;
  *v14 = v20;
  *(v14 + 1) = v15;
  *(v14 + 2) = v22;
  sub_10022C350(&qword_100CE86D8, &unk_100A9CD58);
  Binding.wrappedValue.getter();
  sub_100974AF0(v1, v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ScrubberView);
  v16 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v17 = swift_allocObject();
  sub_100974A94(v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v17 + v16, type metadata accessor for ScrubberView);
  sub_100974950();
  sub_1006BF6FC();
  View.onChange<A>(of:initial:_:)();

  sub_1000180EC(v7, &qword_100CA6BC0, &unk_100A31BE0);
  return sub_1000180EC(v11, &qword_100CE87D8, &qword_100A9CDC8);
}

uint64_t sub_10096C104@<X0>(double *a1@<X0>, char *a2@<X8>)
{
  v220 = a2;
  v216 = sub_10022C350(&qword_100CE8828, &qword_100A9CE10);
  __chkstk_darwin(v216);
  v218 = &v180 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v206 = (&v180 - v5);
  v217 = sub_10022C350(&qword_100CE8830, &unk_100A9CE18);
  __chkstk_darwin(v217);
  v219 = &v180 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v207 = (&v180 - v8);
  v214 = type metadata accessor for Date();
  v215 = *(v214 - 8);
  __chkstk_darwin(v214);
  v213 = &v180 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v208 = sub_10022C350(&qword_100CCA228, &qword_100A689D0);
  v209 = *(v208 - 8);
  __chkstk_darwin(v208);
  v205 = &v180 - v10;
  v201 = type metadata accessor for KeyPress.Phases();
  v200 = *(v201 - 8);
  __chkstk_darwin(v201);
  v199 = &v180 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for ScrubberView(0);
  v227 = *(v12 - 8);
  v230 = *(v227 + 64);
  v13 = (v12 - 8);
  __chkstk_darwin(v12 - 8);
  v232 = &v180 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v222 = type metadata accessor for AccessibilityTraits();
  *&v186 = *(v222 - 1);
  v187 = v222 - 8;
  v188 = v186;
  __chkstk_darwin(v222 - 8);
  v221 = &v180 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for AccessibilityChildBehavior();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v180 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v181 = sub_10022C350(&qword_100CE8838, &qword_100A9CE28);
  v182 = *(v181 - 8);
  __chkstk_darwin(v181);
  v21 = &v180 - v20;
  v183 = sub_10022C350(&qword_100CE8840, &qword_100A9CE30);
  __chkstk_darwin(v183);
  v180 = &v180 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v228 = (&v180 - v24);
  __chkstk_darwin(v25);
  v184 = &v180 - v26;
  __chkstk_darwin(v27);
  v185 = &v180 - v28;
  __chkstk_darwin(v29);
  v190 = &v180 - v30;
  v191 = sub_10022C350(&qword_100CE8848, &qword_100A9CE38);
  v192 = *(v191 - 8);
  __chkstk_darwin(v191);
  v189 = &v180 - v31;
  v194 = sub_10022C350(&qword_100CE8850, &qword_100A9CE40);
  v195 = *(v194 - 8);
  __chkstk_darwin(v194);
  v223 = &v180 - v32;
  v196 = sub_10022C350(&qword_100CE8858, &qword_100A9CE48);
  __chkstk_darwin(v196);
  v193 = &v180 - v33;
  v202 = sub_10022C350(&qword_100CE8860, &qword_100A9CE50);
  v203 = *(v202 - 8);
  __chkstk_darwin(v202);
  v198 = &v180 - v34;
  v204 = sub_10022C350(&qword_100CE8868, &qword_100A9CE58);
  __chkstk_darwin(v204);
  v225 = &v180 - v35;
  v212 = sub_10022C350(&qword_100CE8870, &qword_100A9CE60);
  v211 = *(v212 - 8);
  __chkstk_darwin(v212);
  v210 = &v180 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v37);
  v226 = &v180 - v38;
  v39 = static HorizontalAlignment.leading.getter();
  LOBYTE(v233) = 0;
  v40 = (a1 + v13[19]);
  v41 = *v40;
  v42 = v40[1];
  *&v238[0] = v41;
  *(&v238[0] + 1) = v42;
  v224 = sub_10022C350(&qword_100CAD708, &qword_100A3CAE0);
  State.wrappedValue.getter();
  v43 = v234;
  v44 = a1 + v13[20];
  v45 = *v44;
  v46 = *(v44 + 1);
  LOBYTE(v238[0]) = v45;
  *(&v238[0] + 1) = v46;
  sub_10022C350(&qword_100CA5A80, &qword_100A2FF90);
  State.wrappedValue.getter();
  v229 = v13;
  v47 = v13[12];
  v48 = v13[13];
  v49 = a1;
  v231 = a1;
  v50 = *(a1 + v47);
  LOBYTE(a1) = v234;
  v51 = *(v49 + v48);
  v197 = *(v49 + v48 + 8);
  *&v238[0] = v51;
  *(&v238[0] + 1) = v197;

  State.wrappedValue.getter();
  v234 = v39;
  LOBYTE(v235) = LOBYTE(v233);
  *(&v235 + 1) = v43;
  LOBYTE(v236) = a1;
  *(&v236 + 1) = v50;
  *(&v237 + 1) = 0;
  static AccessibilityChildBehavior.ignore.getter();
  v52 = sub_10022C350(&qword_100CE8878, &qword_100A9CE68);
  v53 = sub_100006F64(&qword_100CE8880, &qword_100CE8878, &qword_100A9CE68, &protocol conformance descriptor for VStack<A>);
  View.accessibilityElement(children:)();
  (*(v17 + 8))(v19, v16);
  v238[0] = v234;
  v238[1] = v235;
  v238[2] = v236;
  v238[3] = v237;
  sub_1000180EC(v238, &qword_100CE8878, &qword_100A9CE68);
  v54 = LocalizedStringKey.init(stringLiteral:)();
  v58 = Text.init(_:tableName:bundle:comment:)(v54, v56, v55 & 1, v57, 0, 0, 0, "Accessibility hint for a scrubber view on iOS", 45, 2);
  v60 = v59;
  v62 = v61;
  *&v234 = v52;
  *(&v234 + 1) = v53;
  swift_getOpaqueTypeConformance2();
  v63 = v180;
  v64 = v181;
  View.accessibilityHint(_:)();
  sub_10010CD64(v58, v60, v62 & 1);

  (*(v182 + 8))(v21, v64);
  v65 = LocalizedStringKey.init(stringLiteral:)();
  LOWORD(v179) = 2;
  v69 = Text.init(_:tableName:bundle:comment:)(v65, v67, v66 & 1, v68, 0, 0, 0, "Accessibility label for a scrubber view", 39, v179);
  v71 = v70;
  LOBYTE(v58) = v72;
  v73 = v183;
  ModifiedContent<>.accessibilityLabel(_:)();
  sub_10010CD64(v69, v71, v58 & 1);

  sub_1000180EC(v63, &qword_100CE8840, &qword_100A9CE30);
  sub_10022C350(&unk_100CE17E0, &unk_100A45D60);
  v74 = v188;
  v75 = swift_allocObject();
  v186 = xmmword_100A2C3F0;
  *(v75 + 16) = xmmword_100A2C3F0;
  static AccessibilityTraits.updatesFrequently.getter();
  *&v234 = v75;
  sub_100974B4C(&qword_100CB3368, &type metadata accessor for AccessibilityTraits, &protocol conformance descriptor for AccessibilityTraits);
  sub_10022C350(&unk_100CE17F0, &unk_100A4A1E0);
  v187 = &protocol conformance descriptor for [A];
  sub_100006F64(&qword_100CB3370, &unk_100CE17F0, &unk_100A4A1E0, &protocol conformance descriptor for [A]);
  v76 = v221;
  v77 = v222;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v78 = v184;
  v79 = v228;
  ModifiedContent<>.accessibilityAddTraits(_:)();
  (*(v74 + 8))(v76, v77);
  sub_1000180EC(v79, &qword_100CE8840, &qword_100A9CE30);
  v80 = v231;
  v81 = sub_10096DC88();
  v83 = v82;
  LOBYTE(v58) = v84;
  v85 = v185;
  ModifiedContent<>.accessibilityValue(_:)();
  sub_10010CD64(v81, v83, v58 & 1);

  sub_1000180EC(v78, &qword_100CE8840, &qword_100A9CE30);
  v222 = type metadata accessor for ScrubberView;
  v86 = v232;
  sub_100974AF0(v80, v232, type metadata accessor for ScrubberView);
  v221 = *(v227 + 80);
  v87 = (v221 + 16) & ~v221;
  v227 = v87;
  v88 = swift_allocObject();
  v228 = type metadata accessor for ScrubberView;
  sub_100974A94(v86, v88 + v87, type metadata accessor for ScrubberView);
  v89 = v190;
  ModifiedContent<>.accessibilityAdjustableAction(_:)();

  sub_1000180EC(v85, &qword_100CE8840, &qword_100A9CE30);
  v90 = sub_100975FD0();
  v91 = v189;
  View.focusable(_:)();
  sub_1000180EC(v89, &qword_100CE8840, &qword_100A9CE30);
  v92 = v80 + v229[23];
  v93 = *v92;
  v94 = *(v92 + 1);
  LOBYTE(v92) = v92[16];
  LOBYTE(v234) = v93;
  *(&v234 + 1) = v94;
  LOBYTE(v235) = v92;
  sub_10022C350(&qword_100CE8890, &qword_100A9CE70);
  FocusState.projectedValue.getter();
  *&v234 = v73;
  *(&v234 + 1) = v90;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v96 = v191;
  View.focused(_:)();

  (*(v192 + 8))(v91, v96);
  sub_10022C350(&qword_100CE8898, &qword_100A9CE78);
  type metadata accessor for KeyEquivalent();
  v97 = swift_allocObject();
  *(v97 + 16) = xmmword_100A3B020;
  static KeyEquivalent.upArrow.getter();
  static KeyEquivalent.downArrow.getter();
  static KeyEquivalent.leftArrow.getter();
  static KeyEquivalent.rightArrow.getter();
  sub_10031B98C(v97);
  v98 = v232;
  v99 = v222;
  sub_100974AF0(v80, v232, v222);
  v100 = v227;
  v101 = swift_allocObject();
  v102 = v228;
  sub_100974A94(v98, v101 + v100, v228);
  v103 = v199;
  sub_10096EAC0();
  *&v234 = v96;
  *(&v234 + 1) = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v104 = v193;
  v105 = v103;
  v106 = v194;
  v107 = v223;
  View.onKeyPress(keys:phases:action:)();

  (*(v200 + 8))(v105, v201);
  (*(v195 + 8))(v107, v106);
  v108 = v232;
  sub_100974AF0(v231, v232, v99);
  v109 = v227;
  v110 = swift_allocObject();
  sub_100974A94(v108, v110 + v109, v102);
  v111 = v104;
  v112 = &v104[*(sub_10022C350(&qword_100CE88A0, &qword_100A9CE80) + 36)];
  *v112 = sub_10096EC40;
  v112[1] = 0;
  v112[2] = sub_100976168;
  v112[3] = v110;
  v104[*(sub_10022C350(&qword_100CE88A8, &qword_100A9CE88) + 36)] = 0;
  sub_10022C350(&qword_100CE88B0, &qword_100A9CE90);
  type metadata accessor for ContentShapeKinds();
  v113 = swift_allocObject();
  *(v113 + 16) = v186;
  static ContentShapeKinds.accessibility.getter();
  *&v234 = v113;
  v114 = v196;
  v115 = &v104[*(v196 + 36)];
  sub_10022C350(&qword_100CE88B8, &qword_100A9CE98);
  sub_100974B4C(&qword_100CE88C0, &type metadata accessor for ContentShapeKinds, &protocol conformance descriptor for ContentShapeKinds);
  sub_10022C350(&qword_100CE88C8, &qword_100A9CEA0);
  sub_100006F64(&qword_100CE88D0, &qword_100CE88C8, &qword_100A9CEA0, v187);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v116 = v231;
  v117 = *v231;
  v118 = v229;
  v119 = (v231 + v229[17]);
  v120 = *v119;
  v121 = v119[1];
  *&v234 = v120;
  *(&v234 + 1) = v121;
  State.wrappedValue.getter();
  v122 = v233;
  v123 = (v116 + v118[16]);
  v124 = *v123;
  v125 = v123[1];
  *&v234 = v124;
  *(&v234 + 1) = v125;
  State.wrappedValue.getter();
  v126 = (v233 - v117) * 0.5;
  *v115 = v117;
  *(v115 + 1) = v122;
  *(v115 + 2) = v126;
  *(v115 + 3) = 0;
  v115[32] = 0;
  v127 = sub_1009761C4();
  v128 = v198;
  View.focusEffectDisabled(_:)();
  sub_1000180EC(v111, &qword_100CE8858, &qword_100A9CE48);
  v129 = v205;
  v130 = v116;
  sub_10096F6CC(v205);
  static GestureMask.all.getter();
  *&v234 = v114;
  *(&v234 + 1) = v127;
  swift_getOpaqueTypeConformance2();
  sub_100006F64(&qword_100CCA260, &qword_100CCA228, &qword_100A689D0, &protocol conformance descriptor for _EndedGesture<A>);
  v131 = v225;
  v132 = v129;
  v133 = v202;
  v134 = v208;
  View.gesture<A>(_:including:)();
  (*(v209 + 8))(v132, v134);
  (*(v203 + 8))(v128, v133);
  v135 = v130;
  v136 = v232;
  v137 = v222;
  sub_100974AF0(v130, v232, v222);
  v138 = v227;
  v139 = swift_allocObject();
  v140 = v228;
  sub_100974A94(v136, v139 + v138, v228);
  v141 = &v131[*(sub_10022C350(&qword_100CE88F8, &qword_100A9CEA8) + 36)];
  *v141 = sub_1009764A8;
  v141[1] = v139;
  v141[2] = 0;
  v141[3] = 0;
  *&v234 = v51;
  *(&v234 + 1) = v197;
  State.wrappedValue.getter();
  v142 = v233;
  sub_100974AF0(v135, v136, v137);
  v143 = swift_allocObject();
  sub_100974A94(v136, v143 + v138, v140);
  v144 = &v131[*(v204 + 36)];
  *v144 = v142;
  *(v144 + 1) = sub_1009764FC;
  *(v144 + 2) = v143;
  v144[3] = v142;
  sub_10022C350(&qword_100CAD050, &qword_100A3C430);
  v145 = v213;
  State.wrappedValue.getter();
  sub_100974AF0(v135, v136, v137);
  v146 = v226;
  v147 = swift_allocObject();
  sub_100974A94(v136, v147 + v138, v228);
  sub_1009765F8();
  sub_100974B4C(&qword_100CA39D0, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  v148 = v146;
  v149 = v145;
  v150 = v214;
  v151 = v225;
  View.onChange<A>(of:initial:_:)();

  (*(v215 + 8))(v149, v150);
  sub_1000180EC(v151, &qword_100CE8868, &qword_100A9CE58);
  v152 = static HorizontalAlignment.center.getter();
  v153 = v207;
  *v207 = v152;
  v153[1] = 0;
  v154 = v153;
  *(v153 + 16) = 1;
  v155 = *(sub_10022C350(&qword_100CE8920, &qword_100A9CEB8) + 44);
  v156 = static Alignment.center.getter();
  v157 = v206;
  *v206 = v156;
  *(v157 + 8) = v158;
  v159 = sub_10022C350(&qword_100CE8928, &qword_100A9CEC0);
  sub_1009708E4(v231, v157 + *(v159 + 44));
  if (qword_100CA2910 != -1)
  {
    swift_once();
  }

  v160 = v154 + v155;
  swift_beginAccess();
  v161 = sub_1008583AC();
  v162 = v157 + *(v216 + 36);
  *v162 = v161 * 0.5;
  *(v162 + 8) = 0;
  v163 = v218;
  sub_1005C1F54(v157, v218, &qword_100CE8828, &qword_100A9CE10);
  sub_1005C1F54(v163, v160, &qword_100CE8828, &qword_100A9CE10);
  v164 = v160 + *(sub_10022C350(&qword_100CE8930, &qword_100A9CEC8) + 48);
  *v164 = 0;
  *(v164 + 8) = 1;
  sub_1000180EC(v157, &qword_100CE8828, &qword_100A9CE10);
  sub_1000180EC(v163, &qword_100CE8828, &qword_100A9CE10);
  LOBYTE(v160) = static Edge.Set.top.getter();
  EdgeInsets.init(_all:)();
  v165 = v154 + *(v217 + 36);
  *v165 = v160;
  *(v165 + 8) = v166;
  *(v165 + 16) = v167;
  *(v165 + 24) = v168;
  *(v165 + 32) = v169;
  *(v165 + 40) = 0;
  v170 = v211;
  v171 = *(v211 + 16);
  v172 = v210;
  v173 = v212;
  v171(v210, v148, v212);
  v174 = v219;
  sub_1005C1F54(v154, v219, &qword_100CE8830, &unk_100A9CE18);
  v175 = v220;
  v171(v220, v172, v173);
  v176 = sub_10022C350(&qword_100CE8938, &qword_100A9CED0);
  sub_1005C1F54(v174, &v175[*(v176 + 48)], &qword_100CE8830, &unk_100A9CE18);
  sub_1000180EC(v154, &qword_100CE8830, &unk_100A9CE18);
  v177 = *(v170 + 8);
  v177(v226, v173);
  sub_1000180EC(v174, &qword_100CE8830, &unk_100A9CE18);
  return (v177)(v172, v173);
}

uint64_t sub_10096DC88()
{
  v1 = type metadata accessor for AttributedString();
  __chkstk_darwin(v1 - 8);
  v3 = v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = (v0 + *(type metadata accessor for ScrubberView(0) + 44));
  v5 = *v4;
  v6 = v4[1];
  v8[2] = v5;
  v8[3] = v6;
  sub_10022C350(&qword_100CAD708, &qword_100A3CAE0);
  State.wrappedValue.getter();
  sub_100971544(v3, v8[1]);
  return Text.init(_:)();
}

uint64_t sub_10096DD80@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v76 = a2;
  v75 = type metadata accessor for AccessibilityAdjustmentDirection();
  v71 = *(v75 - 8);
  __chkstk_darwin(v75);
  v72 = &v64[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_10022C350(&qword_100CE89A0, &qword_100A9CF78);
  v6 = v5 - 8;
  __chkstk_darwin(v5);
  v8 = &v64[-v7];
  v9 = type metadata accessor for KeyEquivalent();
  v78 = *(v9 - 8);
  __chkstk_darwin(v9);
  v11 = &v64[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v12);
  v14 = &v64[-v13];
  v15 = type metadata accessor for LayoutDirection();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v64[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v73 = a1;
  sub_10096BC40(v18);
  KeyPress.key.getter();
  v19 = *(v6 + 56);
  v74 = v16;
  v20 = *(v16 + 32);
  v21 = v8;
  v77 = v15;
  v22 = v15;
  v23 = v8;
  v24 = v78;
  v20(v21, v18, v22);
  (*(v24 + 32))(&v23[v19], v14, v9);
  static KeyEquivalent.upArrow.getter();
  sub_100974B4C(&qword_100CACD40, &type metadata accessor for KeyEquivalent, &protocol conformance descriptor for KeyEquivalent);
  LOBYTE(v6) = dispatch thunk of static Equatable.== infix(_:_:)();
  v27 = *(v24 + 8);
  v26 = v24 + 8;
  v25 = v27;
  v70 = v11;
  v27(v11, v9);
  if ((v6 & 1) == 0)
  {
    v67 = v25;
    v68 = v9;
    v69 = v19;
    v78 = v26;
    v31 = v74;
    v66 = *(v74 + 88);
    v32 = v66(v23, v77);
    v65 = enum case for LayoutDirection.leftToRight(_:);
    if (v32 == enum case for LayoutDirection.leftToRight(_:))
    {
      v33 = v70;
      static KeyEquivalent.rightArrow.getter();
      v34 = v68;
      v35 = v69;
      v36 = dispatch thunk of static Equatable.== infix(_:_:)();
      v37 = v67;
      v67(v33, v34);
    }

    else
    {
      v34 = v68;
      v35 = v69;
      v37 = v67;
      v33 = v70;
      if (v32 != enum case for LayoutDirection.rightToLeft(_:))
      {
        goto LABEL_9;
      }

      static KeyEquivalent.leftArrow.getter();
      v36 = dispatch thunk of static Equatable.== infix(_:_:)();
      v37(v33, v34);
    }

    if (v36)
    {
      v37(&v23[v35], v34);
      (*(v31 + 8))(v23, v77);
      v38 = v71;
      v39 = v72;
      v40 = v75;
      (*(v71 + 104))(v72, enum case for AccessibilityAdjustmentDirection.increment(_:), v75);
      sub_10096E56C(v39, 12);
      (*(v38 + 8))(v39, v40);
      goto LABEL_17;
    }

LABEL_9:
    static KeyEquivalent.downArrow.getter();
    v41 = dispatch thunk of static Equatable.== infix(_:_:)();
    v37(v33, v34);
    if (v41)
    {
      v42 = v71;
      v43 = v72;
      v44 = v75;
      (*(v71 + 104))(v72, enum case for AccessibilityAdjustmentDirection.decrement(_:), v75);
      sub_10096E56C(v43, 1);
      (*(v42 + 8))(v43, v44);
      v37(&v23[v35], v34);
      (*(v31 + 8))(v23, v77);
      goto LABEL_17;
    }

    v45 = v77;
    v46 = v66(v23, v77);
    if (v46 == v65)
    {
      v47 = v70;
      static KeyEquivalent.leftArrow.getter();
      v49 = v68;
      v48 = v69;
      v50 = dispatch thunk of static Equatable.== infix(_:_:)();
      v45 = v77;
      v51 = v50;
      v52 = v67;
      v67(v47, v49);
      v53 = v75;
      if ((v51 & 1) == 0)
      {
LABEL_19:
        v62 = enum case for KeyPress.Result.ignored(_:);
        v63 = type metadata accessor for KeyPress.Result();
        (*(*(v63 - 8) + 104))(v76, v62, v63);
        v52(&v23[v48], v49);
        return (*(v31 + 8))(v23, v45);
      }
    }

    else
    {
      v53 = v75;
      v49 = v68;
      v48 = v69;
      v52 = v67;
      if (v46 != enum case for LayoutDirection.rightToLeft(_:))
      {
        goto LABEL_19;
      }

      v54 = v70;
      static KeyEquivalent.rightArrow.getter();
      v55 = dispatch thunk of static Equatable.== infix(_:_:)();
      v45 = v77;
      v56 = v55;
      v52(v54, v49);
      if ((v56 & 1) == 0)
      {
        goto LABEL_19;
      }
    }

    v52(&v23[v48], v49);
    (*(v31 + 8))(v23, v45);
    v57 = v71;
    v58 = v72;
    (*(v71 + 104))(v72, enum case for AccessibilityAdjustmentDirection.decrement(_:), v53);
    sub_10096E56C(v58, 12);
    (*(v57 + 8))(v58, v53);
    goto LABEL_17;
  }

  v28 = v71;
  v29 = v72;
  v30 = v75;
  (*(v71 + 104))(v72, enum case for AccessibilityAdjustmentDirection.increment(_:), v75);
  sub_10096E56C(v29, 1);
  (*(v28 + 8))(v29, v30);
  v25(&v23[v19], v9);
  (*(v74 + 8))(v23, v77);
LABEL_17:
  v59 = enum case for KeyPress.Result.handled(_:);
  v60 = type metadata accessor for KeyPress.Result();
  return (*(*(v60 - 8) + 104))(v76, v59, v60);
}

uint64_t sub_10096E56C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v40 = a1;
  v41 = a2;
  v4 = type metadata accessor for AttributedString();
  __chkstk_darwin(v4 - 8);
  v43 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for AccessibilityNotification.Announcement();
  v44 = *(v6 - 8);
  v45 = v6;
  __chkstk_darwin(v6);
  v42 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for AccessibilityAdjustmentDirection();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10022C350(&qword_100CE89A8, &unk_100A9CF80);
  v13 = v12 - 8;
  __chkstk_darwin(v12);
  v15 = &v39 - v14;
  v16 = type metadata accessor for LayoutDirection();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v39 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10096BC40(v19);
  v20 = *(v13 + 56);
  v21 = v40;
  (*(v17 + 32))(v15, v19, v16);
  (*(v9 + 16))(&v15[v20], v21, v8);
  v22 = (*(v17 + 88))(v15, v16);
  if (v22 == enum case for LayoutDirection.leftToRight(_:))
  {
    v23 = (*(v9 + 88))(&v15[v20], v8);
    v24 = -1.0;
    if (v23 == enum case for AccessibilityAdjustmentDirection.increment(_:))
    {
      goto LABEL_9;
    }

    v25 = enum case for AccessibilityAdjustmentDirection.decrement(_:);
    v24 = 1.0;
    goto LABEL_7;
  }

  if (v22 != enum case for LayoutDirection.rightToLeft(_:))
  {
LABEL_8:
    (*(v9 + 8))(&v15[v20], v8);
    v24 = 0.0;
    goto LABEL_9;
  }

  v23 = (*(v9 + 88))(&v15[v20], v8);
  v24 = 1.0;
  if (v23 != enum case for AccessibilityAdjustmentDirection.increment(_:))
  {
    v25 = enum case for AccessibilityAdjustmentDirection.decrement(_:);
    v24 = -1.0;
LABEL_7:
    if (v23 != v25)
    {
      goto LABEL_8;
    }
  }

LABEL_9:
  (*(v17 + 8))(v15, v16);
  v26 = v24 * (*(v3 + 64) + *(v3 + 56)) * v41;
  v27 = (v3 + *(type metadata accessor for ScrubberView(0) + 44));
  v28 = *v27;
  v29 = v27[1];
  v47 = *v27;
  v48 = v29;
  sub_10022C350(&qword_100CAD708, &qword_100A3CAE0);
  State.wrappedValue.getter();
  v30 = v46;
  v32 = COERCE_DOUBLE(sub_100971E08(v26 + v46));
  if (v33)
  {
    v34 = v31;
    (*(v9 + 104))(v11, enum case for AccessibilityAdjustmentDirection.increment(_:), v8);
    v35 = static AccessibilityAdjustmentDirection.== infix(_:_:)();
    (*(v9 + 8))(v11, v8);
    if (v35)
    {
      v32 = v34;
    }
  }

  v46 = sub_1009720F0(v32);
  v47 = v28;
  v48 = v29;
  State.wrappedValue.setter();
  v47 = v28;
  v48 = v29;
  State.wrappedValue.getter();
  sub_100972214(v30);
  v47 = v28;
  v48 = v29;
  State.wrappedValue.getter();
  sub_10096FEB0(v46);
  v47 = v28;
  v48 = v29;
  State.wrappedValue.getter();
  sub_100971544(v43, v46);
  v36 = v42;
  AccessibilityNotification.Announcement.init(_:)();
  v37 = v45;
  _AccessibilityNotifications.post()();
  return (*(v44 + 8))(v36, v37);
}

uint64_t sub_10096EAC0()
{
  sub_10022C350(&qword_100CE8980, &qword_100A9CF68);
  type metadata accessor for KeyPress.Phases();
  *(swift_allocObject() + 16) = xmmword_100A2D320;
  static KeyPress.Phases.down.getter();
  static KeyPress.Phases.repeat.getter();
  sub_100974B4C(&qword_100CE8988, &type metadata accessor for KeyPress.Phases, &protocol conformance descriptor for KeyPress.Phases);
  sub_10022C350(&qword_100CE8990, &qword_100A9CF70);
  sub_100006F64(&qword_100CE8998, &qword_100CE8990, &qword_100A9CF70, &protocol conformance descriptor for [A]);
  return dispatch thunk of SetAlgebra.init<A>(_:)();
}

uint64_t sub_10096EC40@<X0>(double *a1@<X8>)
{
  v2 = type metadata accessor for LocalCoordinateSpace();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  static CoordinateSpaceProtocol<>.local.getter();
  GeometryProxy.frame<A>(in:)();
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  result = (*(v3 + 8))(v5, v2);
  *a1 = v7;
  *(a1 + 1) = v9;
  *(a1 + 2) = v11;
  *(a1 + 3) = v13;
  return result;
}

void sub_10096ED4C(CGRect *a1, uint64_t a2)
{
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  Height = CGRectGetHeight(*a1);
  v9 = type metadata accessor for ScrubberView(0);
  v10 = (a2 + v9[15]);
  v11 = *v10;
  v12 = v10[1];
  v27 = v11;
  v28 = v12;
  v25 = Height;
  sub_10022C350(&qword_100CAD708, &qword_100A3CAE0);
  State.wrappedValue.setter();
  v13 = sub_10096EFAC(a2);
  v14 = (a2 + v9[14]);
  v16 = v14[1];
  v27 = *v14;
  v15 = v27;
  v28 = v16;
  v25 = v13;
  State.wrappedValue.setter();
  v27 = v15;
  v28 = v16;
  State.wrappedValue.getter();
  v17 = v25;
  sub_10022C350(&qword_100CAD050, &qword_100A3C430);
  State.wrappedValue.getter();
  sub_10097250C(v7);
  v19 = v18;
  (*(v5 + 8))(v7, v4);
  if (qword_100CA2910 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v20 = sub_1008583AC();
  v21 = (a2 + v9[17]);
  v22 = *v21;
  v23 = *(v21 + 1);
  v24 = 0.0 - v17 * 0.5 + v19 + v20 * 0.5;
  v25 = v22;
  v26 = v23;
  State.wrappedValue.setter();
  sub_10096F00C();
  sub_10096F1F8();
}

double sub_10096EFAC(uint64_t a1)
{
  v2 = *(*(a1 + *(type metadata accessor for ScrubberView(0) + 40) + 8) + 16);
  if (v2)
  {
    return *(a1 + 56) * (v2 - 1) + *(a1 + 64) * v2;
  }

  else
  {
    return 0.0;
  }
}

uint64_t sub_10096F00C()
{
  v1 = type metadata accessor for Date();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for ScrubberView(0);
  sub_10022C350(&qword_100CAD050, &qword_100A3C430);
  State.wrappedValue.getter();
  sub_10097250C(v4);
  v7 = v6;
  (*(v2 + 8))(v4, v1);
  v8 = *(v0 + 64) + *(v0 + 56);
  v9 = v7 / v8;
  v10 = (v0 + *(v5 + 56));
  v12 = v10[1];
  *&v19 = *v10;
  v11 = v19;
  *(&v19 + 1) = v12;
  sub_10022C350(&qword_100CAD708, &qword_100A3CAE0);
  State.wrappedValue.getter();
  v13 = v18[0] * 0.5 - v8 * floor(v9);
  *&v19 = v11;
  *(&v19 + 1) = v12;
  State.wrappedValue.getter();
  v14 = v18[0] * 0.5 - v8 * floor(v9 + 1.0);
  v15 = (v0 + *(v5 + 64));
  v16 = *(v15 + 2);
  v19 = *v15;
  v20 = v16;
  v18[0] = v13;
  v18[1] = v14;
  sub_10022C350(&qword_100CE8810, &qword_100A9CDF0);
  return State.wrappedValue.setter();
}

void sub_10096F1F8()
{
  v1 = type metadata accessor for Date();
  v29 = *(v1 - 8);
  __chkstk_darwin(v1);
  v28 = &v27 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_10022C350(qword_100CA4F80, &unk_100A580C0);
  v4 = v3 - 8;
  __chkstk_darwin(v3);
  v6 = &v27 - v5;
  v7 = sub_10022C350(&unk_100CB2CF0, &unk_100A2D7F0);
  __chkstk_darwin(v7 - 8);
  v31 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v27 - v10;
  __chkstk_darwin(v12);
  v14 = &v27 - v13;
  v15 = type metadata accessor for ScrubberView(0);
  v16 = (v0 + *(v15 + 44));
  v17 = *v16;
  v18 = v16[1];
  v33 = v17;
  v34 = v18;
  sub_10022C350(&qword_100CAD708, &qword_100A3CAE0);
  State.wrappedValue.getter();
  sub_100971B6C(v14, v32);
  sub_10022C350(&qword_100CAD050, &qword_100A3C430);
  v30 = v0;
  State.wrappedValue.getter();
  sub_10001B350(v11, 0, 1, v1);
  v19 = *(v4 + 56);
  sub_1005C1F54(v14, v6, &unk_100CB2CF0, &unk_100A2D7F0);
  sub_1005C1F54(v11, &v6[v19], &unk_100CB2CF0, &unk_100A2D7F0);
  if (sub_100024D10(v6, 1, v1) == 1)
  {
    sub_1000180EC(v11, &unk_100CB2CF0, &unk_100A2D7F0);
    sub_1000180EC(v14, &unk_100CB2CF0, &unk_100A2D7F0);
    if (sub_100024D10(&v6[v19], 1, v1) == 1)
    {
      sub_1000180EC(v6, &unk_100CB2CF0, &unk_100A2D7F0);
      v20 = 1;
      goto LABEL_8;
    }

    goto LABEL_6;
  }

  sub_1005C1F54(v6, v31, &unk_100CB2CF0, &unk_100A2D7F0);
  if (sub_100024D10(&v6[v19], 1, v1) == 1)
  {
    sub_1000180EC(v11, &unk_100CB2CF0, &unk_100A2D7F0);
    sub_1000180EC(v14, &unk_100CB2CF0, &unk_100A2D7F0);
    (*(v29 + 8))(v31, v1);
LABEL_6:
    sub_1000180EC(v6, qword_100CA4F80, &unk_100A580C0);
    v20 = 0;
    goto LABEL_8;
  }

  v21 = v28;
  v22 = v29;
  (*(v29 + 32))(v28, &v6[v19], v1);
  sub_100974B4C(&qword_100CA39D0, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  v20 = dispatch thunk of static Equatable.== infix(_:_:)();
  v23 = *(v22 + 8);
  v23(v21, v1);
  sub_1000180EC(v11, &unk_100CB2CF0, &unk_100A2D7F0);
  sub_1000180EC(v14, &unk_100CB2CF0, &unk_100A2D7F0);
  v23(v31, v1);
  sub_1000180EC(v6, &unk_100CB2CF0, &unk_100A2D7F0);
LABEL_8:
  v24 = (v30 + *(v15 + 72));
  v25 = *v24;
  v26 = *(v24 + 1);
  LOBYTE(v33) = *v24;
  v34 = v26;
  sub_10022C350(&qword_100CA5A80, &qword_100A2FF90);
  State.wrappedValue.getter();
  if ((v20 & 1) != LOBYTE(v32))
  {
    LOBYTE(v33) = v25;
    v34 = v26;
    LOBYTE(v32) = v20 & 1;
    State.wrappedValue.setter();
  }
}

uint64_t sub_10096F6CC@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v28 = a1;
  v3 = type metadata accessor for ScrubberView(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3 - 8);
  v24[0] = v5;
  v6 = v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for LocalCoordinateSpace();
  sub_1000037E8();
  __chkstk_darwin(v7);
  sub_1000037D8();
  v8 = type metadata accessor for DragGesture();
  sub_1000037C4();
  v25 = v9;
  __chkstk_darwin(v10);
  sub_1000037D8();
  v13 = v12 - v11;
  sub_10022C350(&qword_100CCA220, &qword_100A9CF50);
  sub_1000037C4();
  v26 = v14;
  v27 = v15;
  sub_100003828();
  __chkstk_darwin(v16);
  v18 = v24 - v17;
  static CoordinateSpaceProtocol<>.local.getter();
  DragGesture.init<A>(minimumDistance:coordinateSpace:)();
  sub_100974AF0(v2, v6, type metadata accessor for ScrubberView);
  v19 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v20 = swift_allocObject();
  sub_100974A94(v6, v20 + v19, type metadata accessor for ScrubberView);
  sub_100974B4C(&qword_100CCA238, &type metadata accessor for DragGesture, &protocol conformance descriptor for DragGesture);
  sub_100974B4C(&qword_100CCA240, &type metadata accessor for DragGesture.Value, &protocol conformance descriptor for DragGesture.Value);
  Gesture<>.onChanged(_:)();

  (*(v25 + 8))(v13, v8);
  sub_100974AF0(v24[1], v6, type metadata accessor for ScrubberView);
  v21 = swift_allocObject();
  sub_100974A94(v6, v21 + v19, type metadata accessor for ScrubberView);
  sub_100006F64(&qword_100CCA248, &qword_100CCA220, &qword_100A9CF50, &protocol conformance descriptor for _ChangedGesture<A>);
  v22 = v26;
  Gesture.onEnded(_:)();

  return (*(v27 + 8))(v18, v22);
}

uint64_t sub_10096FAA8(uint64_t a1)
{
  v2 = sub_10022C350(&qword_100CA6BC0, &unk_100A31BE0);
  __chkstk_darwin(v2 - 8);
  v4 = &v23 - v3;
  v5 = type metadata accessor for ScrubberDateSelection(0);
  __chkstk_darwin(v5);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v23 - v9;
  v11 = type metadata accessor for Date();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for ScrubberView(0);
  sub_10022C350(&qword_100CE86D8, &unk_100A9CD58);
  Binding.wrappedValue.getter();
  if (sub_100024D10(v4, 1, v5) == 1)
  {
    sub_1000180EC(v4, &qword_100CA6BC0, &unk_100A31BE0);
    sub_10022C350(&qword_100CAD050, &qword_100A3C430);
    State.wrappedValue.getter();
  }

  else
  {
    sub_100974A94(v4, v10, type metadata accessor for ScrubberDateSelection);
    sub_100974AF0(v10, v7, type metadata accessor for ScrubberDateSelection);
    if (sub_100024D10(v7, 1, v11) == 1)
    {
      sub_10022C350(&qword_100CAD050, &qword_100A3C430);
      State.wrappedValue.getter();
      sub_100976B1C(v10, type metadata accessor for ScrubberDateSelection);
    }

    else
    {
      sub_100976B1C(v10, type metadata accessor for ScrubberDateSelection);
      (*(v12 + 32))(v14, v7, v11);
    }
  }

  sub_10096FE38(v14);
  v16 = (a1 + *(v15 + 44));
  v17 = *v16;
  v18 = v16[1];
  v23 = v17;
  v24 = v18;
  sub_10022C350(&qword_100CAD708, &qword_100A3CAE0);
  State.wrappedValue.getter();
  sub_10096FEB0(v26);
  sub_10096F1F8();
  v19 = (a1 + *(v15 + 84));
  v20 = *v19;
  v21 = *(v19 + 1);
  LOBYTE(v19) = v19[16];
  LOBYTE(v23) = v20;
  v24 = v21;
  v25 = v19;
  LOBYTE(v26) = 1;
  sub_10022C350(&qword_100CE8890, &qword_100A9CE70);
  FocusState.wrappedValue.setter();
  return (*(v12 + 8))(v14, v11);
}

void sub_10096FE38(uint64_t a1)
{
  sub_100972E60(a1);
  if ((v1 & 1) == 0)
  {
    type metadata accessor for ScrubberView(0);
    sub_10022C350(&qword_100CAD708, &qword_100A3CAE0);
    State.wrappedValue.setter();
  }
}

void sub_10096FEB0(double a1)
{
  v3 = sub_10022C350(qword_100CA66A0, &unk_100A314C0);
  __chkstk_darwin(v3 - 8);
  v50 = &v42 - v4;
  v5 = sub_10022C350(qword_100CA4F80, &unk_100A580C0);
  __chkstk_darwin(v5);
  v7 = &v42 - v6;
  v52 = type metadata accessor for MoonDetailSelectedDate(0);
  __chkstk_darwin(v52);
  v51 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10022C350(&unk_100CB2CF0, &unk_100A2D7F0);
  __chkstk_darwin(v9 - 8);
  v49 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v42 - v12;
  __chkstk_darwin(v14);
  v16 = &v42 - v15;
  __chkstk_darwin(v17);
  v19 = &v42 - v18;
  v20 = type metadata accessor for Date();
  v54 = *(v20 - 8);
  __chkstk_darwin(v20);
  v22 = &v42 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v53 = &v42 - v24;
  v25 = *(v1 + 48);
  v26 = (v25 + OBJC_IVAR____TtC7Weather19MoonScrubberStorage_offset);
  if ((*(v25 + OBJC_IVAR____TtC7Weather19MoonScrubberStorage_offset + 8) & 1) != 0 || *v26 != a1)
  {
    v48 = v1;
    sub_100971B6C(v19, a1);
    if (sub_100024D10(v19, 1, v20) == 1)
    {
      sub_1000180EC(v19, &unk_100CB2CF0, &unk_100A2D7F0);
      return;
    }

    v47 = v26;
    v28 = v53;
    v27 = v54;
    v43 = *(v54 + 32);
    v44 = v54 + 32;
    v43(v53, v19, v20);
    v45 = *(v27 + 16);
    v46 = v27 + 16;
    v45(v16, v28, v20);
    v29 = 1;
    sub_10001B350(v16, 0, 1, v20);
    v30 = OBJC_IVAR____TtC7Weather19MoonScrubberStorage_selectedDate;
    swift_beginAccess();
    if (!sub_100024D10(v25 + v30, 1, v52))
    {
      v31 = v51;
      sub_100974AF0(v25 + v30, v51, type metadata accessor for MoonDetailSelectedDate);
      sub_10070B0DC(v13);
      sub_100976B1C(v31, type metadata accessor for MoonDetailSelectedDate);
      v29 = 0;
    }

    sub_10001B350(v13, v29, 1, v20);
    v32 = *(v5 + 48);
    sub_1005C1F54(v16, v7, &unk_100CB2CF0, &unk_100A2D7F0);
    sub_1005C1F54(v13, &v7[v32], &unk_100CB2CF0, &unk_100A2D7F0);
    if (sub_100024D10(v7, 1, v20) == 1)
    {
      sub_1000180EC(v13, &unk_100CB2CF0, &unk_100A2D7F0);
      sub_1000180EC(v16, &unk_100CB2CF0, &unk_100A2D7F0);
      if (sub_100024D10(&v7[v32], 1, v20) == 1)
      {
        sub_1000180EC(v7, &unk_100CB2CF0, &unk_100A2D7F0);
        (*(v54 + 8))(v53, v20);
        return;
      }

      goto LABEL_12;
    }

    v33 = v49;
    sub_1005C1F54(v7, v49, &unk_100CB2CF0, &unk_100A2D7F0);
    if (sub_100024D10(&v7[v32], 1, v20) == 1)
    {
      sub_1000180EC(v13, &unk_100CB2CF0, &unk_100A2D7F0);
      sub_1000180EC(v16, &unk_100CB2CF0, &unk_100A2D7F0);
      (*(v54 + 8))(v33, v20);
LABEL_12:
      sub_1000180EC(v7, qword_100CA4F80, &unk_100A580C0);
LABEL_13:
      v34 = v50;
      v35 = v53;
      v36 = v45;
      v45(v50, v53, v20);
      v37 = v52;
      swift_storeEnumTagMultiPayload();
      sub_10001B350(v34, 0, 1, v37);
      swift_beginAccess();
      sub_100976958(v34, v25 + v30);
      swift_endAccess();
      sub_1000161C0((v48 + 8), *(v48 + 32));
      v38 = v51;
      v36(v51, v35, v20);
      swift_storeEnumTagMultiPayload();
      v39 = sub_100971380();
      sub_100655714(v38, v39);
      sub_100976B1C(v38, type metadata accessor for MoonDetailSelectedDate);
      (*(v54 + 8))(v35, v20);
      v40 = v47;
      *v47 = a1;
      *(v40 + 8) = 0;
      return;
    }

    v43(v22, &v7[v32], v20);
    sub_100974B4C(&qword_100CA39D0, &type metadata accessor for Date, &protocol conformance descriptor for Date);
    LODWORD(v43) = dispatch thunk of static Equatable.== infix(_:_:)();
    v44 = v30;
    v41 = *(v54 + 8);
    v41(v22, v20);
    sub_1000180EC(v13, &unk_100CB2CF0, &unk_100A2D7F0);
    sub_1000180EC(v16, &unk_100CB2CF0, &unk_100A2D7F0);
    v30 = v44;
    v41(v33, v20);
    sub_1000180EC(v7, &unk_100CB2CF0, &unk_100A2D7F0);
    if ((v43 & 1) == 0)
    {
      goto LABEL_13;
    }

    v41(v53, v20);
  }
}

double sub_100970630(double a1)
{
  type metadata accessor for ScrubberView(0);
  sub_10022C350(&qword_100CAD708, &qword_100A3CAE0);
  State.wrappedValue.getter();
  if (vabdd_f64(a1, v3) < 5.0)
  {
    State.wrappedValue.getter();
    return v3;
  }

  return a1;
}

void sub_1009706E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for ScrubberView(0);
  v9 = (a3 + *(v8 + 56));
  v10 = *v9;
  v11 = v9[1];
  v22 = v10;
  v23 = v11;
  sub_10022C350(&qword_100CAD708, &qword_100A3CAE0);
  State.wrappedValue.getter();
  v12 = v20;
  sub_10022C350(&qword_100CAD050, &qword_100A3C430);
  State.wrappedValue.getter();
  sub_10097250C(v7);
  v14 = v13;
  (*(v5 + 8))(v7, v4);
  if (qword_100CA2910 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v15 = sub_1008583AC();
  v16 = (a3 + *(v8 + 68));
  v17 = *v16;
  v18 = *(v16 + 1);
  v19 = 0.0 - v12 * 0.5 + v14 + v15 * 0.5;
  v20 = v17;
  v21 = v18;
  State.wrappedValue.setter();
  sub_10096F00C();
  sub_10096F1F8();
}

uint64_t sub_1009708E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v46 = a1;
  v50 = a2;
  v2 = sub_10022C350(&qword_100CE8940, &qword_100A9CED8);
  __chkstk_darwin(v2 - 8);
  v49 = &v38 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v48 = &v38 - v5;
  v6 = type metadata accessor for Image.ResizingMode();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10022C350(&qword_100CE8948, &qword_100A9CEE0);
  __chkstk_darwin(v10);
  v12 = &v38 - v11;
  v13 = sub_10022C350(&qword_100CE8950, &qword_100A9CEE8);
  __chkstk_darwin(v13 - 8);
  v47 = &v38 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v45 = &v38 - v16;
  v43 = "bel for a scrubber view";
  Image.init(systemName:)();
  v17 = *(v7 + 104);
  v42 = enum case for Image.ResizingMode.stretch(_:);
  v41 = v17;
  v17(v9);
  v39 = Image.resizable(capInsets:resizingMode:)();

  v18 = *(v7 + 8);
  v44 = v6;
  v40 = v18;
  v18(v9, v6);
  if (qword_100CA2910 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  sub_10085836C();
  sub_10085838C();
  sub_10085836C();
  sub_10085838C();
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  LOBYTE(v52[0]) = 1;
  *&v55[3] = *&v55[27];
  *&v55[11] = *&v55[35];
  *&v55[19] = *&v55[43];
  v19 = *(v10 + 36);
  v20 = enum case for BlendMode.destinationOut(_:);
  v21 = type metadata accessor for BlendMode();
  (*(*(v21 - 8) + 104))(&v12[v19], v20, v21);
  *v12 = v39;
  *(v12 + 1) = 0;
  *(v12 + 8) = 257;
  *(v12 + 18) = *v55;
  *(v12 + 34) = *&v55[8];
  *(v12 + 50) = *&v55[16];
  *(v12 + 8) = *&v55[23];
  sub_100976814();
  v22 = v45;
  View.accessibilityHidden(_:)();
  sub_1000180EC(v12, &qword_100CE8948, &qword_100A9CEE0);
  Image.init(systemName:)();
  v23 = v44;
  v41(v9, v42, v44);
  v24 = Image.resizable(capInsets:resizingMode:)();

  v40(v9, v23);
  sub_10085836C();
  sub_10085836C();
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v54 = 1;
  *&v53[6] = *&v55[51];
  *&v53[22] = *&v55[59];
  *&v53[38] = *&v55[67];
  v25 = v46 + *(type metadata accessor for ScrubberView(0) + 72);
  v26 = *v25;
  v27 = *(v25 + 8);
  LOBYTE(v52[0]) = v26;
  v52[1] = v27;
  sub_10022C350(&qword_100CA5A80, &qword_100A2FF90);
  State.wrappedValue.getter();
  if (LOBYTE(v51[0]) == 1)
  {
    sub_10000C70C(0, &qword_100CB8BA0, UIColor_ptr);
    static UIColor.macSafeSystemCyan.getter();
    v28 = Color.init(_:)();
  }

  else
  {
    v28 = static Color.white.getter();
  }

  v29 = v28;
  KeyPath = swift_getKeyPath();
  *(&v51[2] + 2) = *v53;
  v51[0] = v24;
  v51[1] = 0;
  LOWORD(v51[2]) = 257;
  *(&v51[4] + 2) = *&v53[16];
  *(&v51[6] + 2) = *&v53[32];
  v51[8] = *&v53[46];
  v51[9] = KeyPath;
  v51[10] = v29;
  sub_10022C350(&qword_100CE8960, &unk_100A9CF30);
  sub_1009768A0();
  v31 = v48;
  View.accessibilityHidden(_:)();
  memcpy(v52, v51, sizeof(v52));
  sub_1000180EC(v52, &qword_100CE8960, &unk_100A9CF30);
  v32 = v47;
  sub_1005C1F54(v22, v47, &qword_100CE8950, &qword_100A9CEE8);
  v33 = v22;
  v34 = v49;
  sub_1005C1F54(v31, v49, &qword_100CE8940, &qword_100A9CED8);
  v35 = v50;
  sub_1005C1F54(v32, v50, &qword_100CE8950, &qword_100A9CEE8);
  v36 = sub_10022C350(&qword_100CE8970, &unk_100A9CF40);
  sub_1005C1F54(v34, v35 + *(v36 + 48), &qword_100CE8940, &qword_100A9CED8);
  sub_1000180EC(v31, &qword_100CE8940, &qword_100A9CED8);
  sub_1000180EC(v33, &qword_100CE8950, &qword_100A9CEE8);
  sub_1000180EC(v34, &qword_100CE8940, &qword_100A9CED8);
  return sub_1000180EC(v32, &qword_100CE8950, &qword_100A9CEE8);
}

uint64_t sub_100970FD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v28 = a3;
  v4 = type metadata accessor for Date();
  v26 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10022C350(&qword_100CA6BC0, &unk_100A31BE0);
  __chkstk_darwin(v7 - 8);
  v27 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v25 - v10;
  __chkstk_darwin(v12);
  v14 = &v25 - v13;
  v15 = type metadata accessor for ScrubberDateSelection(0);
  __chkstk_darwin(v15);
  v17 = &v25 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v20 = &v25 - v19;
  sub_1005C1F54(a2, v14, &qword_100CA6BC0, &unk_100A31BE0);
  if (sub_100024D10(v14, 1, v15) == 1)
  {
    return sub_1000180EC(v14, &qword_100CA6BC0, &unk_100A31BE0);
  }

  sub_100974A94(v14, v20, type metadata accessor for ScrubberDateSelection);
  sub_100974AF0(v20, v17, type metadata accessor for ScrubberDateSelection);
  if (sub_100024D10(v17, 1, v4) == 1)
  {
    type metadata accessor for ScrubberView(0);
    sub_10022C350(&qword_100CAD050, &qword_100A3C430);
    v22 = v28;
    State.wrappedValue.getter();
    v23 = v26;
  }

  else
  {
    v23 = v26;
    (*(v26 + 32))(v6, v17, v4);
    v22 = v28;
  }

  sub_10096FE38(v6);
  (*(v23 + 8))(v6, v4);
  sub_10001B350(v11, 1, 1, v15);
  type metadata accessor for ScrubberView(0);
  sub_1005C1F54(v11, v27, &qword_100CA6BC0, &unk_100A31BE0);
  sub_10022C350(&qword_100CE86D8, &unk_100A9CD58);
  Binding.wrappedValue.setter();
  sub_1000180EC(v11, &qword_100CA6BC0, &unk_100A31BE0);
  sub_1000161C0((v22 + 8), *(v22 + 32));
  v24 = sub_100971380();
  sub_1006558B0(v24);
  sub_10096F1F8();
  return sub_100976B1C(v20, type metadata accessor for ScrubberDateSelection);
}

uint64_t sub_100971380()
{
  v1 = v0;
  v2 = type metadata accessor for Date();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for ScrubberView(0);
  sub_10022C350(&qword_100CAD050, &qword_100A3C430);
  State.wrappedValue.getter();
  v7 = sub_100972E60(v5);
  v9 = v8;
  v11 = v10;
  (*(v3 + 8))(v5, v2, v7);
  if (v11)
  {
    return 2;
  }

  v13 = *v1 * 0.5;
  v14 = (v1 + *(v6 + 44));
  v15 = *v14;
  v16 = v14[1];
  v19 = *v14;
  v20 = v16;
  sub_10022C350(&qword_100CAD708, &qword_100A3CAE0);
  State.wrappedValue.getter();
  if (v13 + v9 < v18)
  {
    return 1;
  }

  v19 = v15;
  v20 = v16;
  State.wrappedValue.getter();
  return 2 * (v18 >= 0.0 - v13 + v9);
}

uint64_t sub_100971544@<X0>(uint64_t a1@<X8>, double a2@<D0>)
{
  v43 = a1;
  v3 = type metadata accessor for AttributeContainer();
  __chkstk_darwin(v3 - 8);
  v41[2] = v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for AttributedString.FormattingOptions();
  __chkstk_darwin(v5);
  v41[1] = v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10022C350(&qword_100CAA9F0, qword_100A44F50);
  __chkstk_darwin(v7 - 8);
  v9 = v41 - v8;
  v10 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v10 - 8);
  v11 = sub_10022C350(&unk_100CB2CF0, &unk_100A2D7F0);
  __chkstk_darwin(v11 - 8);
  v13 = v41 - v12;
  v14 = type metadata accessor for Date();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = v41 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v20 = v41 - v19;
  sub_100971B6C(v13, a2);
  if (sub_100024D10(v13, 1, v14) == 1)
  {
    type metadata accessor for ScrubberView(0);
    sub_10022C350(&qword_100CAD050, &qword_100A3C430);
    State.wrappedValue.getter();
    if (sub_100024D10(v13, 1, v14) != 1)
    {
      sub_1000180EC(v13, &unk_100CB2CF0, &unk_100A2D7F0);
    }
  }

  else
  {
    (*(v15 + 32))(v20, v13, v14);
  }

  static WeatherClock.date.getter();
  Date.distance(to:)();
  v22 = v21;
  v42 = *(v15 + 8);
  v42(v17, v14);
  if (fabs(v22) >= 1800.0)
  {
    if (qword_100CA2B40 != -1)
    {
      swift_once();
    }

    v24 = qword_100CE86D0;
    type metadata accessor for ScrubberView(0);
    type metadata accessor for ScrubberViewModel(0);
    isa = TimeZone._bridgeToObjectiveC()().super.isa;
    [v24 setTimeZone:isa];

    if (qword_100CA2B38 != -1)
    {
      swift_once();
    }

    v26 = qword_100CE86C8;
    v27 = TimeZone._bridgeToObjectiveC()().super.isa;
    [v26 setTimeZone:v27];

    v28 = Date._bridgeToObjectiveC()().super.isa;
    v29 = [v24 stringFromDate:v28];

    v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v32 = v31;

    v44 = v30;
    v45 = v32;
    v33._countAndFlagsBits = 8236;
    v33._object = 0xE200000000000000;
    String.append(_:)(v33);
    v34 = Date._bridgeToObjectiveC()().super.isa;
    v35 = [v26 stringFromDate:v34];

    v36 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v38 = v37;

    v39._countAndFlagsBits = v36;
    v39._object = v38;
    String.append(_:)(v39);

    AttributeContainer.init()();
    AttributedString.init(_:attributes:)();
  }

  else
  {
    String.LocalizationValue.init(stringLiteral:)();
    v23 = type metadata accessor for Locale();
    sub_10001B350(v9, 1, 1, v23);
    v44 = _swiftEmptyArrayStorage;
    sub_100974B4C(&qword_100CE89B0, &type metadata accessor for AttributedString.FormattingOptions, &protocol conformance descriptor for AttributedString.FormattingOptions);
    sub_10022C350(&qword_100CE89B8, &qword_100A9CF90);
    sub_100006F64(&qword_100CE89C0, &qword_100CE89B8, &qword_100A9CF90, &protocol conformance descriptor for [A]);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    AttributedString.init(localized:options:table:bundle:locale:comment:)();
  }

  return (v42)(v20, v14);
}

void sub_100971B6C(uint64_t a1@<X8>, double a2@<D0>)
{
  v5 = type metadata accessor for ScrubberHour(0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5 - 8);
  v8 = v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for ScrubberView(0);
  v10 = (v2 + v9[16]);
  v11 = *(v10 + 2);
  v23 = *v10;
  v24 = v11;
  sub_10022C350(&qword_100CE8810, &qword_100A9CDF0);
  State.wrappedValue.getter();
  if (v22[0] > a2 && v22[1] < a2)
  {
    sub_10022C350(&qword_100CAD050, &qword_100A3C430);
    State.wrappedValue.getter();
    v21 = type metadata accessor for Date();
    v19 = a1;
    v20 = 0;
LABEL_12:
    sub_10001B350(v19, v20, 1, v21);
    return;
  }

  v13 = (v2 + v9[14]);
  v14 = *v13;
  v15 = v13[1];
  *&v23 = v14;
  *(&v23 + 1) = v15;
  sub_10022C350(&qword_100CAD708, &qword_100A3CAE0);
  State.wrappedValue.getter();
  v16 = floor((v22[0] * 0.5 - a2) / (*(v2 + 64) + *(v2 + 56)));
  if ((*&v16 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_14;
  }

  if (v16 <= -9.22337204e18)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v16 < 9.22337204e18)
  {
    v17 = *(v2 + v9[10] + 8);
    if (*(v17 + 16) <= v16)
    {
      v21 = type metadata accessor for Date();
      v19 = a1;
      v20 = 1;
    }

    else
    {
      sub_100974AF0(v17 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v16, v8, type metadata accessor for ScrubberHour);
      v18 = type metadata accessor for Date();
      (*(*(v18 - 8) + 32))(a1, v8, v18);
      v19 = a1;
      v20 = 0;
      v21 = v18;
    }

    goto LABEL_12;
  }

LABEL_15:
  __break(1u);
}

uint64_t sub_100971E08(double a1)
{
  v3 = type metadata accessor for Date();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = (v1 + *(type metadata accessor for ScrubberView(0) + 56));
  v8 = *v7;
  v9 = v7[1];
  v28 = *v7;
  v29 = v9;
  sub_10022C350(&qword_100CAD708, &qword_100A3CAE0);
  State.wrappedValue.getter();
  v10 = v27 * 0.5 - a1;
  v11 = *(v1 + 64) + *(v1 + 56);
  v12 = v10 / v11;
  v13 = floor(v10 / v11);
  if (v12 == v13)
  {
    v28 = v8;
    v29 = v9;
    State.wrappedValue.getter();
    v14 = v27 * 0.5 - v11 * v12;
  }

  else
  {
    v15 = v11 * v13;
    v28 = v8;
    v29 = v9;
    State.wrappedValue.getter();
    v16 = v27 * 0.5 - v15;
    v28 = v8;
    v29 = v9;
    State.wrappedValue.getter();
    v17 = v27 * 0.5 - v11 * floor(v12 + 1.0);
    v14 = v16;
    sub_10022C350(&qword_100CAD050, &qword_100A3C430);
    State.wrappedValue.getter();
    v18 = sub_100972E60(v6);
    v20 = v19;
    v22 = v21;
    (*(v4 + 8))(v6, v3, v18);
    if ((v22 & 1) == 0)
    {
      v28 = v8;
      v29 = v9;
      State.wrappedValue.getter();
      v23 = v27 * 0.5 - v16;
      v28 = v8;
      v29 = v9;
      State.wrappedValue.getter();
      if (v23 < v27 * 0.5 - v20)
      {
        v28 = v8;
        v29 = v9;
        State.wrappedValue.getter();
        v24 = v27 * 0.5 - v20;
        v28 = v8;
        v29 = v9;
        State.wrappedValue.getter();
        if (v24 < v27 * 0.5 - v17)
        {
          v14 = v20;
        }
      }
    }
  }

  return *&v14;
}

double sub_1009720F0(double a1)
{
  type metadata accessor for ScrubberView(0);
  sub_10022C350(&qword_100CAD708, &qword_100A3CAE0);
  State.wrappedValue.getter();
  v3 = *(v1 + 64);
  State.wrappedValue.getter();
  v4 = v6 * 0.5 - a1;
  if (v4 >= 0.0)
  {
    if (v6 - v3 < v4)
    {
      State.wrappedValue.getter();
      return v6 * 0.5 - (v6 - v3);
    }
  }

  else
  {
    State.wrappedValue.getter();
    return v6 * 0.5;
  }

  return a1;
}

uint64_t sub_100972214(double a1, double a2)
{
  v5 = sub_10022C350(&unk_100CB2CF0, &unk_100A2D7F0);
  __chkstk_darwin(v5 - 8);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v27 - v9;
  v11 = type metadata accessor for Date();
  sub_1000037C4();
  v13 = v12;
  __chkstk_darwin(v14);
  v16 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = &v27 - v18;
  v20 = [objc_msgSend(objc_opt_self() "capabilitiesForHardware")];
  result = swift_unknownObjectRelease();
  if (v20)
  {
    sub_100971B6C(v10, a1);
    if (sub_100024D10(v10, 1, v11) == 1)
    {
      v22 = v10;
      return sub_1000180EC(v22, &unk_100CB2CF0, &unk_100A2D7F0);
    }

    v23 = *(v13 + 32);
    v23(v19, v10, v11);
    sub_100971B6C(v7, a2);
    if (sub_100024D10(v7, 1, v11) == 1)
    {
      (*(v13 + 8))(v19, v11);
      v22 = v7;
      return sub_1000180EC(v22, &unk_100CB2CF0, &unk_100A2D7F0);
    }

    v23(v16, v7, v11);
    v24 = 1.0;
    switch(sub_100972EEC(v19, v16, v2))
    {
      case 1u:
        v24 = 0.7;
        goto LABEL_10;
      case 2u:
        v24 = 0.3;
        goto LABEL_10;
      case 3u:
        goto LABEL_11;
      default:
LABEL_10:
        v25 = *(v2 + 72);
        [v25 prepare];
        [v25 impactOccurredWithIntensity:v24];
LABEL_11:
        v26 = *(v13 + 8);
        v26(v16, v11);
        result = (v26)(v19, v11);
        break;
    }
  }

  return result;
}

uint64_t sub_10097250C(uint64_t a1)
{
  v3 = type metadata accessor for Date();
  v73 = *(v3 - 8);
  v74 = v3;
  __chkstk_darwin(v3);
  v70 = &v69 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v72 = &v69 - v6;
  v77 = sub_10022C350(&qword_100CE8818, &qword_100A9CDF8);
  __chkstk_darwin(v77);
  v69 = &v69 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v71 = &v69 - v9;
  __chkstk_darwin(v10);
  v12 = &v69 - v11;
  v13 = sub_10022C350(&qword_100CE8820, &unk_100A9CE00);
  __chkstk_darwin(v13 - 8);
  v75 = &v69 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v80 = &v69 - v16;
  v17 = sub_10022C350(&qword_100CBD410, &unk_100A542F0);
  __chkstk_darwin(v17 - 8);
  v19 = &v69 - v18;
  v20 = type metadata accessor for ScrubberHour(0);
  v81 = *(v20 - 8);
  __chkstk_darwin(v20);
  v79 = &v69 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v24 = &v69 - v23;
  __chkstk_darwin(v25);
  v27 = &v69 - v26;
  __chkstk_darwin(v28);
  v30 = &v69 - v29;
  v31 = *(type metadata accessor for ScrubberView(0) + 40);
  v78 = v1;
  v32 = *(v1 + v31 + 8);
  v76 = a1;
  v83 = a1;
  sub_1008DC6B4();
  v82 = v20;
  if (sub_100024D10(v19, 1, v20) == 1)
  {
    sub_1000180EC(v19, &qword_100CBD410, &unk_100A542F0);
    v33 = v81;
  }

  else
  {
    result = sub_100974A94(v19, v30, type metadata accessor for ScrubberHour);
    v35 = *(v32 + 16);
    v33 = v81;
    if (v35)
    {
      v36 = 0;
      v37 = v32 + ((v81[80] + 32) & ~v81[80]);
      while (v36 < *(v32 + 16))
      {
        sub_100974AF0(v37 + *(v33 + 72) * v36, v27, type metadata accessor for ScrubberHour);
        if (static Date.== infix(_:_:)())
        {
          v38 = v82;
          v39 = v12;
          v40 = v27[v82[5]];
          result = sub_100976B1C(v27, type metadata accessor for ScrubberHour);
          v41 = v40 == v30[v38[5]];
          v12 = v39;
          v33 = v81;
          if (v41)
          {
            return sub_100976B1C(v30, type metadata accessor for ScrubberHour);
          }
        }

        else
        {
          result = sub_100976B1C(v27, type metadata accessor for ScrubberHour);
        }

        if (v35 == ++v36)
        {
          goto LABEL_12;
        }
      }

      __break(1u);
      goto LABEL_35;
    }

LABEL_12:
    sub_100976B1C(v30, type metadata accessor for ScrubberHour);
  }

  v42 = v80;
  sub_100974598(v78, v76, v80);
  v43 = v75;
  sub_1005C1F54(v42, v75, &qword_100CE8820, &unk_100A9CE00);
  if (sub_100024D10(v43, 1, v77) == 1)
  {
    sub_1000180EC(v42, &qword_100CE8820, &unk_100A9CE00);
    v44 = v43;
    return sub_1000180EC(v44, &qword_100CE8820, &unk_100A9CE00);
  }

  result = sub_100975F18(v43, v12);
  v45 = *(v32 + 16);
  if (!v45)
  {
LABEL_23:
    sub_1000180EC(v12, &qword_100CE8818, &qword_100A9CDF8);
    v44 = v80;
    return sub_1000180EC(v44, &qword_100CE8820, &unk_100A9CE00);
  }

  v46 = 0;
  v47 = v32 + ((*(v33 + 80) + 32) & ~*(v33 + 80));
  while (v46 < *(v32 + 16))
  {
    v48 = *(v33 + 72);
    sub_100974AF0(v47 + v48 * v46, v24, type metadata accessor for ScrubberHour);
    if (static Date.== infix(_:_:)())
    {
      v49 = v82;
      v50 = v24[v82[5]];
      result = sub_100976B1C(v24, type metadata accessor for ScrubberHour);
      if (v50 == v12[v49[5]])
      {
        v51 = *(v32 + 16);
        if (!v51)
        {
          goto LABEL_23;
        }

        v52 = 0;
        v53 = &v12[*(v77 + 48)];
        v54 = v79;
        while (v52 < *(v32 + 16))
        {
          sub_100974AF0(v47, v54, type metadata accessor for ScrubberHour);
          if (static Date.== infix(_:_:)())
          {
            v55 = v82;
            v56 = *(v54 + v82[5]);
            result = sub_100976B1C(v54, type metadata accessor for ScrubberHour);
            if (v56 == v53[v55[5]])
            {
              v57 = v71;
              sub_1005C1F54(v12, v71, &qword_100CE8818, &qword_100A9CDF8);
              v58 = v77;
              v59 = *(v77 + 48);
              v60 = v72;
              v61 = v73;
              v62 = *(v73 + 16);
              v63 = v74;
              v62(v72, v57 + v59, v74);
              v82 = v62;
              sub_100976B1C(v57 + v59, type metadata accessor for ScrubberHour);
              v64 = v69;
              sub_1005C1F54(v12, v69, &qword_100CE8818, &qword_100A9CDF8);
              v81 = v12;
              v79 = *(v58 + 48);
              v65 = v70;
              v62(v70, v64, v63);
              sub_100976B1C(v64, type metadata accessor for ScrubberHour);
              Date.timeIntervalSince(_:)();
              v66 = *(v61 + 8);
              v66(v65, v63);
              v66(v60, v63);
              sub_100976B1C(v64 + v79, type metadata accessor for ScrubberHour);
              sub_100976B1C(v57, type metadata accessor for ScrubberHour);
              v67 = v81;
              sub_1005C1F54(v81, v57, &qword_100CE8818, &qword_100A9CDF8);
              v68 = *(v77 + 48);
              (v82)(v60, v57, v63);
              sub_100976B1C(v57, type metadata accessor for ScrubberHour);
              Date.timeIntervalSince(_:)();
              v66(v60, v63);
              sub_1000180EC(v67, &qword_100CE8818, &qword_100A9CDF8);
              sub_1000180EC(v80, &qword_100CE8820, &unk_100A9CE00);
              return sub_100976B1C(v57 + v68, type metadata accessor for ScrubberHour);
            }
          }

          else
          {
            result = sub_100976B1C(v54, type metadata accessor for ScrubberHour);
          }

          ++v52;
          v47 += v48;
          if (v51 == v52)
          {
            goto LABEL_23;
          }
        }

        goto LABEL_36;
      }
    }

    else
    {
      result = sub_100976B1C(v24, type metadata accessor for ScrubberHour);
    }

    if (v45 == ++v46)
    {
      goto LABEL_23;
    }
  }

LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
  return result;
}

double sub_100972E60(uint64_t a1)
{
  sub_10097250C(a1);
  v2 = v1;
  type metadata accessor for ScrubberView(0);
  sub_10022C350(&qword_100CAD708, &qword_100A3CAE0);
  State.wrappedValue.getter();
  return v4 * 0.5 - v2;
}

uint64_t sub_100972EEC(char *a1, char *a2, uint64_t a3)
{
  v6 = type metadata accessor for Date();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100974B4C(&qword_100CA39D0, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  if (dispatch thunk of static Equatable.== infix(_:_:)())
  {
    return 3;
  }

  type metadata accessor for ScrubberView(0);
  sub_10022C350(&qword_100CAD050, &qword_100A3C430);
  State.wrappedValue.getter();
  v11 = static Date.> infix(_:_:)();
  v12 = *(v7 + 8);
  v12(v9, v6);
  if (v11)
  {
    State.wrappedValue.getter();
    sub_100974B4C(&qword_100CA7020, &type metadata accessor for Date, &protocol conformance descriptor for Date);
    v13 = dispatch thunk of static Comparable.< infix(_:_:)();
    v12(v9, v6);
    if ((v13 & 1) == 0)
    {
      return 0;
    }
  }

  State.wrappedValue.getter();
  v14 = static Date.< infix(_:_:)();
  v12(v9, v6);
  if (v14)
  {
    State.wrappedValue.getter();
    sub_100974B4C(&qword_100CA7020, &type metadata accessor for Date, &protocol conformance descriptor for Date);
    v15 = dispatch thunk of static Comparable.< infix(_:_:)();
    v12(v9, v6);
    if ((v15 & 1) == 0)
    {
      return 0;
    }
  }

  if (sub_1009731B0(a3, a1, a2))
  {
    return 1;
  }

  return 2;
}

BOOL sub_1009731B0(uint64_t a1, char *a2, char *a3)
{
  v6 = type metadata accessor for ScrubberDay(0);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6 - 8);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = type metadata accessor for Date();
  v10 = *(v29 - 8);
  __chkstk_darwin(v29);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10022C350(&unk_100CB2CF0, &unk_100A2D7F0);
  __chkstk_darwin(v13 - 8);
  v15 = &v26 - v14;
  v16 = type metadata accessor for ScrubberView(0);
  v17 = *(a1 + *(v16 + 40));
  v18 = *(v17 + 16);
  if (v18)
  {
    v26 = v15;
    v27 = a2;
    v28 = a3;
    v32 = _swiftEmptyArrayStorage;
    sub_1006A79AC();
    v19 = v32;
    v20 = v17 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
    v21 = *(v7 + 72);
    v30 = v10 + 32;
    v31 = v21;
    v22 = v29;
    do
    {
      sub_100974AF0(v20, v9, type metadata accessor for ScrubberDay);
      (*(v10 + 16))(v12, v9, v22);
      sub_100976B1C(v9, type metadata accessor for ScrubberDay);
      v32 = v19;
      v23 = v19[2];
      if (v23 >= v19[3] >> 1)
      {
        sub_1006A79AC();
        v19 = v32;
      }

      v19[2] = v23 + 1;
      v16 = (*(v10 + 32))(v19 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * v23, v12, v22);
      v20 += v31;
      --v18;
    }

    while (v18);
    a2 = v27;
    a3 = v28;
    v15 = v26;
  }

  else
  {
    v22 = v29;
  }

  __chkstk_darwin(v16);
  *(&v26 - 2) = a2;
  *(&v26 - 1) = a3;
  sub_1008DC71C();

  v24 = sub_100024D10(v15, 1, v22) != 1;
  sub_1000180EC(v15, &unk_100CB2CF0, &unk_100A2D7F0);
  return v24;
}

BOOL sub_100973510(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = 1;
  if (static Date.> infix(_:_:)() & 1) == 0 || (type metadata accessor for Date(), sub_100974B4C(&qword_100CA7020, &type metadata accessor for Date, &protocol conformance descriptor for Date), (dispatch thunk of static Comparable.< infix(_:_:)()))
  {
    if ((static Date.< infix(_:_:)() & 1) == 0)
    {
      return 0;
    }

    type metadata accessor for Date();
    sub_100974B4C(&qword_100CA7020, &type metadata accessor for Date, &protocol conformance descriptor for Date);
    if (dispatch thunk of static Comparable.< infix(_:_:)())
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_10097362C(uint64_t a1, uint64_t a2)
{
  type metadata accessor for ScrubberView(0);
  sub_10022C350(&qword_100CAD708, &qword_100A3CAE0);
  State.wrappedValue.getter();
  DragGesture.Value.translation.getter();
  v4 = v3;
  sub_10022C350(&qword_100CE8978, &unk_100A9CF58);
  State.wrappedValue.getter();
  if (v12)
  {
    State.wrappedValue.getter();
    return State.wrappedValue.setter();
  }

  else
  {
    v6 = 0.0 - v4;
    v7 = sub_100973FB8(a2, v11, v6);
    sub_1009742A4(a2, v6);
    v8 = sub_1009720F0(v7);
    sub_1009737FC(0.5, v8);
    v10 = v9;
    State.wrappedValue.getter();
    if (v11 != v10)
    {
      State.wrappedValue.setter();
    }

    sub_10096F1F8();
    return sub_100972214(v11);
  }
}

void sub_1009737FC(double a1, double a2)
{
  v2 = a2 / a1;
  if ((*&v2 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v2 <= -9.22337204e18)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (v2 >= 9.22337204e18)
  {
LABEL_7:
    __break(1u);
  }
}

void sub_100973850(uint64_t a1, void (*a2)(char *, uint64_t))
{
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v47 = *(v3 - 8);
  v48 = v3;
  __chkstk_darwin(v3);
  v44 = &v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DispatchQoS();
  v45 = *(v5 - 8);
  v46 = v5;
  __chkstk_darwin(v5);
  v7 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for ScrubberView(0);
  v9 = v8 - 8;
  v43 = *(v8 - 8);
  v10 = *(v43 + 64);
  __chkstk_darwin(v8);
  v11 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = type metadata accessor for DispatchTime();
  v12 = *(v49 - 8);
  __chkstk_darwin(v49);
  v14 = &v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v42 - v16;
  v18 = (a2 + *(v9 + 52));
  v19 = *v18;
  v20 = v18[1];
  aBlock = v19;
  v51 = v20;
  sub_10022C350(&qword_100CAD708, &qword_100A3CAE0);
  State.wrappedValue.getter();
  v21 = v56;
  v22 = sub_100973E6C();
  v23 = a2 + *(v9 + 56);
  v24 = *v23;
  v25 = v23[8];
  v26 = *(v23 + 2);
  aBlock = v24;
  LOBYTE(v51) = v25;
  v52 = v26;
  sub_10022C350(&qword_100CE8978, &unk_100A9CF58);
  State.wrappedValue.getter();
  if ((v57 & 1) == 0)
  {
    v27 = sub_100973FB8(a2, v56, v22);
    v28 = sub_1009742A4(a2, v22);
    *&v29 = COERCE_DOUBLE(sub_100971E08(v27));
    if (v31 & v28)
    {
      v32 = v30;
    }

    else
    {
      v32 = *&v29;
    }

    v33 = sub_1009720F0(v32);
    v34 = static Animation.spring(response:dampingFraction:blendDuration:)();
    __chkstk_darwin(v34);
    *(&v42 - 2) = a2;
    *(&v42 - 1) = v33;
    withAnimation<A>(_:_:)();

    sub_10096F1F8();
    sub_10000C70C(0, &qword_100CB4670, OS_dispatch_queue_ptr);
    v35 = static OS_dispatch_queue.main.getter();
    static DispatchTime.now()();
    + infix(_:_:)();
    v42 = *(v12 + 8);
    v42(v14, v49);
    sub_100974AF0(a2, &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ScrubberView);
    v36 = (*(v43 + 80) + 16) & ~*(v43 + 80);
    v37 = (v10 + v36 + 7) & 0xFFFFFFFFFFFFFFF8;
    v38 = swift_allocObject();
    sub_100974A94(v11, v38 + v36, type metadata accessor for ScrubberView);
    *(v38 + v37) = v21;
    *(v38 + ((v37 + 15) & 0xFFFFFFFFFFFFFFF8)) = v33;
    v54 = sub_100976A88;
    v55 = v38;
    aBlock = _NSConcreteStackBlock;
    v51 = 1107296256;
    v52 = sub_1000742F0;
    v53 = &unk_100C77F10;
    v39 = _Block_copy(&aBlock);

    static DispatchQoS.unspecified.getter();
    aBlock = _swiftEmptyArrayStorage;
    sub_100974B4C(&qword_100CD81C0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_10022C350(&qword_100CB4680, &qword_100A2EC00);
    sub_100006F64(&qword_100CD81D0, &qword_100CB4680, &qword_100A2EC00, &protocol conformance descriptor for [A]);
    v40 = v44;
    v41 = v48;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
    _Block_release(v39);

    (*(v47 + 8))(v40, v41);
    (*(v45 + 8))(v7, v46);
    v42(v17, v49);
  }
}

double sub_100973E6C()
{
  DragGesture.Value.predictedEndLocation.getter();
  v1 = v0;
  DragGesture.Value.location.getter();
  v3 = (v1 - v2) * 4.0;
  DragGesture.Value.location.getter();
  if (fabs(v3) <= 100.0)
  {
    DragGesture.Value.translation.getter();
  }

  else
  {
    DragGesture.Value.predictedEndTranslation.getter();
  }

  return 0.0 - v4;
}

uint64_t sub_100973ED8(uint64_t a1, double a2)
{
  type metadata accessor for ScrubberView(0);
  sub_10022C350(&qword_100CAD708, &qword_100A3CAE0);
  State.wrappedValue.setter();
  sub_10022C350(&qword_100CE8978, &unk_100A9CF58);
  return State.wrappedValue.setter();
}

double sub_100973FB8(uint64_t a1, double a2, double a3)
{
  v22 = type metadata accessor for EnvironmentValues();
  v6 = *(v22 - 8);
  __chkstk_darwin(v22);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10022C350(&qword_100CA2D60, &qword_100A413F0);
  __chkstk_darwin(v9);
  v11 = &v21 - v10;
  v12 = type metadata accessor for LayoutDirection();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for ScrubberView(0);
  sub_1005C1F54(a1 + *(v16 + 80), v11, &qword_100CA2D60, &qword_100A413F0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v13 + 32))(v15, v11, v12);
  }

  else
  {
    static os_log_type_t.fault.getter();
    v17 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v6 + 8))(v8, v22);
  }

  v18 = (*(v13 + 88))(v15, v12);
  if (v18 == enum case for LayoutDirection.leftToRight(_:))
  {
    return a2 - a3;
  }

  if (v18 == enum case for LayoutDirection.rightToLeft(_:))
  {
    return a2 + a3;
  }

  v19 = a2 - a3;
  (*(v13 + 8))(v15, v12);
  return v19;
}

BOOL sub_1009742A4(uint64_t a1, double a2)
{
  v20 = type metadata accessor for EnvironmentValues();
  v4 = *(v20 - 8);
  __chkstk_darwin(v20);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10022C350(&qword_100CA2D60, &qword_100A413F0);
  __chkstk_darwin(v7);
  v9 = &v19 - v8;
  v10 = type metadata accessor for LayoutDirection();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for ScrubberView(0);
  sub_1005C1F54(a1 + *(v14 + 80), v9, &qword_100CA2D60, &qword_100A413F0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v11 + 32))(v13, v9, v10);
  }

  else
  {
    static os_log_type_t.fault.getter();
    v15 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v4 + 8))(v6, v20);
  }

  v16 = (*(v11 + 88))(v13, v10);
  if (v16 == enum case for LayoutDirection.leftToRight(_:))
  {
    return a2 > 0.0;
  }

  if (v16 == enum case for LayoutDirection.rightToLeft(_:))
  {
    return a2 < 0.0;
  }

  v17 = a2 > 0.0;
  (*(v11 + 8))(v13, v10);
  return v17;
}

uint64_t sub_100974598@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_10022C350(&qword_100CBD410, &unk_100A542F0);
  __chkstk_darwin(v6 - 8);
  v8 = &v30 - v7;
  v9 = type metadata accessor for ScrubberHour(0);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v30 - v14;
  v16 = *(a1 + *(type metadata accessor for ScrubberView(0) + 40) + 8);
  v32 = a2;
  sub_1008DC6B4();
  if (sub_100024D10(v8, 1, v9) == 1)
  {
    sub_1000180EC(v8, &qword_100CBD410, &unk_100A542F0);
    goto LABEL_12;
  }

  v31 = a3;
  result = sub_100974A94(v8, v15, type metadata accessor for ScrubberHour);
  v18 = *(v16 + 16);
  if (!v18)
  {
LABEL_11:
    sub_100976B1C(v15, type metadata accessor for ScrubberHour);
    a3 = v31;
LABEL_12:
    v23 = sub_10022C350(&qword_100CE8818, &qword_100A9CDF8);
    v24 = a3;
LABEL_13:
    v25 = 1;
    return sub_10001B350(v24, v25, 1, v23);
  }

  v19 = 0;
  v20 = v16 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
  while (1)
  {
    if (v19 >= *(v16 + 16))
    {
      __break(1u);
      goto LABEL_20;
    }

    v21 = *(v10 + 72);
    sub_100974AF0(v20 + v21 * v19, v12, type metadata accessor for ScrubberHour);
    if ((static Date.== infix(_:_:)() & 1) == 0)
    {
      result = sub_100976B1C(v12, type metadata accessor for ScrubberHour);
      goto LABEL_10;
    }

    v22 = v12[*(v9 + 20)];
    result = sub_100976B1C(v12, type metadata accessor for ScrubberHour);
    if (v22 == v15[*(v9 + 20)])
    {
      break;
    }

LABEL_10:
    if (v18 == ++v19)
    {
      goto LABEL_11;
    }
  }

  if (!v19)
  {
    sub_100976B1C(v15, type metadata accessor for ScrubberHour);
    v23 = sub_10022C350(&qword_100CE8818, &qword_100A9CDF8);
    v24 = v31;
    goto LABEL_13;
  }

  v26 = v31;
  if (v19 <= *(v16 + 16))
  {
    v27 = v19 - 1;
    v28 = sub_10022C350(&qword_100CE8818, &qword_100A9CDF8);
    v29 = *(v28 + 48);
    sub_100974AF0(v20 + v21 * v27, v26, type metadata accessor for ScrubberHour);
    sub_100974A94(v15, v26 + v29, type metadata accessor for ScrubberHour);
    v24 = v26;
    v25 = 0;
    v23 = v28;
    return sub_10001B350(v24, v25, 1, v23);
  }

LABEL_20:
  __break(1u);
  return result;
}

unint64_t sub_100974950()
{
  result = qword_100CE87F0;
  if (!qword_100CE87F0)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CE87D8, &qword_100A9CDC8);
    v4[0] = sub_1009749DC();
    v4[1] = &protocol witness table for _FrameLayout;
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CE87F0);
  }

  return result;
}

unint64_t sub_1009749DC()
{
  result = qword_100CE87F8;
  if (!qword_100CE87F8)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CE87E8, &unk_100A9CDD8);
    v4[0] = sub_100006F64(&qword_100CE8800, &qword_100CE8808, &qword_100A9CDE8, &protocol conformance descriptor for ZStack<A>);
    v4[1] = &protocol witness table for _FixedSizeLayout;
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CE87F8);
  }

  return result;
}

uint64_t sub_100974A94(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_1000037E8();
  v4 = sub_100003940();
  v5(v4);
  return a2;
}

uint64_t sub_100974AF0(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_1000037E8();
  v4 = sub_100003940();
  v5(v4);
  return a2;
}

uint64_t sub_100974B4C(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100974B94@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>)
{
  *a2 = static VerticalAlignment.top.getter();
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  sub_10022C350(&qword_100CE89E8, &qword_100A9D0D0);
  v8 = swift_allocObject();
  *(v8 + 16) = a3;
  *(v8 + 24) = a4;
  *(v8 + 32) = a1;
  swift_bridgeObjectRetain_n();
  sub_10022C350(&qword_100CE89F0, &qword_100A9D0D8);
  type metadata accessor for Date();
  sub_10022C350(&qword_100CE89F8, &qword_100A9D0E0);
  sub_100006F64(&qword_100CE8A00, &qword_100CE89F0, &qword_100A9D0D8, &protocol conformance descriptor for [A]);
  sub_100976BF8();
  sub_100974B4C(&qword_100CE8A18, type metadata accessor for ScrubberDay, byte_100AA526C);
  return ForEach<>.init(_:content:)();
}

double sub_100974D24@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>, double a5@<D1>)
{
  v46 = a3;
  v9 = type metadata accessor for ScrubberDay(0);
  __chkstk_darwin(v9);
  v41 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10022C350(&qword_100CE8A20, &qword_100A9D0E8);
  v12 = v11 - 8;
  __chkstk_darwin(v11);
  v14 = &v41 - v13;
  v15 = sub_10022C350(&qword_100CBD418, &unk_100A9D0F0);
  __chkstk_darwin(v15 - 8);
  v17 = &v41 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v20 = &v41 - v19;
  __chkstk_darwin(v21);
  v23 = &v41 - v22;
  v43 = type metadata accessor for ScrubberDayContainerView(0);
  __chkstk_darwin(v43);
  v42 = &v41 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = a2;
  sub_1003DFD18(a2, v23);
  v44 = a1;
  sub_100974AF0(a1, v20, type metadata accessor for ScrubberDay);
  sub_10001B350(v20, 0, 1, v9);
  v25 = *(v12 + 56);
  sub_1005C1F54(v23, v14, &qword_100CBD418, &unk_100A9D0F0);
  sub_1005C1F54(v20, &v14[v25], &qword_100CBD418, &unk_100A9D0F0);
  if (sub_100024D10(v14, 1, v9) != 1)
  {
    sub_1005C1F54(v14, v17, &qword_100CBD418, &unk_100A9D0F0);
    if (sub_100024D10(&v14[v25], 1, v9) == 1)
    {
      sub_1000180EC(v20, &qword_100CBD418, &unk_100A9D0F0);
      sub_1000180EC(v23, &qword_100CBD418, &unk_100A9D0F0);
      sub_100976B1C(v17, type metadata accessor for ScrubberDay);
      goto LABEL_6;
    }

    v27 = v41;
    sub_100974A94(&v14[v25], v41, type metadata accessor for ScrubberDay);
    if (static Date.== infix(_:_:)() & 1) != 0 && (sub_1009ECE20(), (v28))
    {
      v29 = *(v9 + 24);
      v30 = *&v17[v29];
      v31 = *&v17[v29 + 8];
      v32 = (v27 + v29);
      if (v30 == *v32 && v31 == v32[1])
      {
        sub_1000180EC(v20, &qword_100CBD418, &unk_100A9D0F0);
        sub_1000180EC(v23, &qword_100CBD418, &unk_100A9D0F0);
LABEL_19:
        v26 = v17[*(v9 + 28)] ^ *(v27 + *(v9 + 28)) ^ 1;
        goto LABEL_16;
      }

      v34 = _stringCompareWithSmolCheck(_:_:expecting:)();
      sub_1000180EC(v20, &qword_100CBD418, &unk_100A9D0F0);
      sub_1000180EC(v23, &qword_100CBD418, &unk_100A9D0F0);
      v26 = 0;
      if (v34)
      {
        goto LABEL_19;
      }
    }

    else
    {
      sub_1000180EC(v20, &qword_100CBD418, &unk_100A9D0F0);
      sub_1000180EC(v23, &qword_100CBD418, &unk_100A9D0F0);
      v26 = 0;
    }

LABEL_16:
    sub_100976B1C(v27, type metadata accessor for ScrubberDay);
    sub_100976B1C(v17, type metadata accessor for ScrubberDay);
    sub_1000180EC(v14, &qword_100CBD418, &unk_100A9D0F0);
    goto LABEL_17;
  }

  sub_1000180EC(v20, &qword_100CBD418, &unk_100A9D0F0);
  sub_1000180EC(v23, &qword_100CBD418, &unk_100A9D0F0);
  if (sub_100024D10(&v14[v25], 1, v9) != 1)
  {
LABEL_6:
    sub_1000180EC(v14, &qword_100CE8A20, &qword_100A9D0E8);
    v26 = 0;
    goto LABEL_17;
  }

  sub_1000180EC(v14, &qword_100CBD418, &unk_100A9D0F0);
  v26 = 1;
LABEL_17:
  v35 = v42;
  v36 = v44;
  sub_100974AF0(v44, &v42[*(v43 + 20)], type metadata accessor for ScrubberDay);
  *v35 = v26 & 1;
  sub_1009752F0(v36, a4, a5);
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v37 = v46;
  sub_100974A94(v35, v46, type metadata accessor for ScrubberDayContainerView);
  v38 = (v37 + *(sub_10022C350(&qword_100CE89F8, &qword_100A9D0E0) + 36));
  v39 = v48;
  *v38 = v47;
  v38[1] = v39;
  result = *&v49;
  v38[2] = v49;
  return result;
}

double sub_1009752F0(uint64_t a1, double a2, double a3)
{
  v5 = sub_10022C350(&qword_100CBD410, &unk_100A542F0);
  __chkstk_darwin(v5 - 8);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v17 - v9;
  v11 = *(a1 + *(type metadata accessor for ScrubberDay(0) + 20));
  if (*(v11 + 16) < 2uLL)
  {
    goto LABEL_9;
  }

  sub_1003DFBD0(v11, v10);
  v12 = type metadata accessor for ScrubberHour(0);
  if (sub_100024D10(v10, 1, v12) == 1)
  {
    goto LABEL_3;
  }

  v13 = v10[*(v12 + 20)];
  sub_100976B1C(v10, type metadata accessor for ScrubberHour);
  if (v13 != 1)
  {
    goto LABEL_9;
  }

  sub_1002F553C(v11);
  if (sub_100024D10(v7, 1, v12) == 1)
  {
    v10 = v7;
LABEL_3:
    sub_1000180EC(v10, &qword_100CBD410, &unk_100A542F0);
LABEL_9:
    v15 = *(v11 + 16);
    return v15 * a3;
  }

  v14 = v7[*(v12 + 20)];
  sub_100976B1C(v7, type metadata accessor for ScrubberHour);
  if (v14 != 1)
  {
    goto LABEL_9;
  }

  v15 = (*(v11 + 16) - 1);
  return v15 * a3;
}

uint64_t sub_1009754B4()
{
  v1 = type metadata accessor for ColorRenderingMode();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10022C350(&qword_100CE8AC8, &qword_100A9D178);
  __chkstk_darwin(v5);
  v7 = &v10 - v6;
  *v7 = static HorizontalAlignment.center.getter();
  *(v7 + 1) = 0;
  v7[16] = 0;
  v8 = sub_10022C350(&qword_100CE8AD0, &qword_100A9D180);
  sub_100975694(v0, &v7[*(v8 + 44)]);
  (*(v2 + 104))(v4, enum case for ColorRenderingMode.nonLinear(_:), v1);
  sub_100006F64(&qword_100CE8AD8, &qword_100CE8AC8, &qword_100A9D178, &protocol conformance descriptor for VStack<A>);
  View.drawingGroup(opaque:colorMode:)();
  (*(v2 + 8))(v4, v1);
  return sub_1000180EC(v7, &qword_100CE8AC8, &qword_100A9D178);
}

uint64_t sub_100975694@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v42 = a2;
  v3 = type metadata accessor for Font.TextStyle();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10022C350(&qword_100CE8AE0, &qword_100A9D188);
  __chkstk_darwin(v7);
  v43 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v37 - v10;
  v12 = a1 + *(type metadata accessor for ScrubberDayContainerView(0) + 20);
  sub_100974AF0(v12, v11, type metadata accessor for ScrubberDay);
  if (qword_100CA2910 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v13 = sub_1008583AC();
  v14 = sub_10085834C();
  KeyPath = swift_getKeyPath();
  v16 = type metadata accessor for ScrubberDayView(0);
  *&v11[v16[7]] = KeyPath;
  sub_10022C350(&qword_100CA2D60, &qword_100A413F0);
  swift_storeEnumTagMultiPayload();
  *&v11[v16[5]] = v13;
  *&v11[v16[6]] = v14;
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v17 = &v11[*(v7 + 36)];
  v18 = v61;
  *v17 = v60;
  *(v17 + 1) = v18;
  *(v17 + 2) = v62;
  v19 = type metadata accessor for ScrubberDay(0);
  v20 = (v12 + *(v19 + 24));
  v21 = v20[1];
  v45 = *v20;
  v46 = v21;
  sub_10002D5A4();

  v22 = Text.init<A>(_:)();
  v41 = v23;
  v25 = v24;
  v39 = v26;
  v40 = swift_getKeyPath();
  (*(v4 + 104))(v6, enum case for Font.TextStyle.footnote(_:), v3);
  if (*(v12 + *(v19 + 28)) == 1)
  {
    static Font.Weight.semibold.getter();
  }

  else
  {
    static Font.Weight.regular.getter();
  }

  v38 = static Font.system(_:weight:)();
  (*(v4 + 8))(v6, v3);
  v27 = swift_getKeyPath();
  v59 = v25 & 1;
  v57 = 0;
  v28 = v43;
  sub_1005C1F54(v11, v43, &qword_100CE8AE0, &qword_100A9D188);
  v29 = v42;
  sub_1005C1F54(v28, v42, &qword_100CE8AE0, &qword_100A9D188);
  v30 = *(sub_10022C350(&qword_100CE8AE8, &qword_100A9D220) + 48);
  __src[0] = v22;
  v31 = v41;
  __src[1] = v41;
  LOBYTE(__src[2]) = v25 & 1;
  *(&__src[2] + 1) = *v58;
  HIDWORD(__src[2]) = *&v58[3];
  v32 = v39;
  __src[3] = v39;
  v33 = v40;
  __src[4] = v40;
  v34 = v29;
  __src[5] = 1;
  LOBYTE(__src[6]) = 0;
  *(&__src[6] + 1) = *v56;
  HIDWORD(__src[6]) = *&v56[3];
  __src[7] = v27;
  v35 = v38;
  __src[8] = v38;
  memcpy((v34 + v30), __src, 0x48uLL);
  sub_1005C1F54(__src, &v45, &qword_100CD3E10, &qword_100A7B0E8);
  sub_1000180EC(v11, &qword_100CE8AE0, &qword_100A9D188);
  v45 = v22;
  v46 = v31;
  v47 = v25 & 1;
  *v48 = *v58;
  *&v48[3] = *&v58[3];
  v49 = v32;
  v50 = v33;
  v51 = 1;
  v52 = 0;
  *v53 = *v56;
  *&v53[3] = *&v56[3];
  v54 = v27;
  v55 = v35;
  sub_1000180EC(&v45, &qword_100CD3E10, &qword_100A7B0E8);
  return sub_1000180EC(v28, &qword_100CE8AE0, &qword_100A9D188);
}

void *sub_100975BCC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>)
{
  v5 = a1;
  v8 = static HorizontalAlignment.center.getter();
  v14 = 0;
  sub_100975CBC(v5, a2, __src, a4);
  memcpy(__dst, __src, sizeof(__dst));
  memcpy(v16, __src, sizeof(v16));
  sub_1005C1F54(__dst, v11, &qword_100CE89C8, &qword_100A9D028);
  sub_1000180EC(v16, &qword_100CE89C8, &qword_100A9D028);
  memcpy(&v13[7], __dst, 0x98uLL);
  v9 = v14;
  *a3 = v8;
  *(a3 + 8) = 0;
  *(a3 + 16) = v9;
  return memcpy((a3 + 17), v13, 0x9FuLL);
}

uint64_t sub_100975CBC@<X0>(char a1@<W0>, uint64_t a2@<X1>, void *a3@<X8>, double a4@<D0>)
{
  if (qword_100CA2910 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  sub_1008583DC();
  sub_1008583DC();
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v6 = v46;
  v7 = v47;
  v8 = v48;
  v9 = v49;
  v11 = v50;
  v10 = v51;
  v12 = static Color.cyan.getter();
  v13 = static Edge.Set.bottom.getter();
  EdgeInsets.init(_all:)();
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;
  LOBYTE(v29) = v47;
  LOBYTE(__src[0]) = v49;
  v45 = 0;
  if (a1)
  {
    v22 = 0.0;
  }

  else
  {
    v22 = 1.0;
  }

  v23 = sub_1008583AC();
  v24 = sub_10085834C();
  __src[0] = v46;
  LOBYTE(__src[1]) = v47;
  __src[2] = v48;
  LOBYTE(__src[3]) = v49;
  __src[4] = v50;
  __src[5] = v51;
  __src[6] = v12;
  LOBYTE(__src[7]) = v13;
  __src[8] = v15;
  __src[9] = v17;
  __src[10] = v19;
  __src[11] = v21;
  LOBYTE(__src[12]) = 0;
  *&__src[13] = a4;
  __src[14] = 0;
  *&__src[15] = v22;
  memcpy(a3, __src, 0x80uLL);
  *(a3 + 16) = v23;
  *(a3 + 17) = v24;
  a3[18] = a2;

  sub_1005C1F54(__src, &v29, &qword_100CE89D0, &qword_100A9D030);
  v29 = v6;
  v30 = v7;
  v31 = v8;
  v32 = v9;
  v33 = v11;
  v34 = v10;
  v35 = v12;
  v36 = v13;
  v37 = v15;
  v38 = v17;
  v39 = v19;
  v40 = v21;
  v41 = 0;
  v42 = a4;
  v43 = 0;
  v44 = v22;
  return sub_1000180EC(&v29, &qword_100CE89D0, &qword_100A9D030);
}

uint64_t sub_100975F18(uint64_t a1, uint64_t a2)
{
  v4 = sub_10022C350(&qword_100CE8818, &qword_100A9CDF8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_100975FD0()
{
  result = qword_100CE8888;
  if (!qword_100CE8888)
  {
    v4[8] = v0;
    v4[9] = v1;
    v3 = sub_10022E824(&qword_100CE8840, &qword_100A9CE30);
    v4[2] = sub_10022E824(&qword_100CE8878, &qword_100A9CE68);
    v4[3] = sub_100006F64(&qword_100CE8880, &qword_100CE8878, &qword_100A9CE68, &protocol conformance descriptor for VStack<A>);
    v4[0] = swift_getOpaqueTypeConformance2();
    v4[1] = sub_100974B4C(&qword_100CE1750, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CE8888);
  }

  return result;
}

uint64_t sub_1009760FC@<X0>(uint64_t a1@<X8>)
{
  sub_1000110C8();
  sub_100008550();

  return sub_10096DD80(v2, a1);
}

void sub_100976168(CGRect *a1)
{
  sub_1000110C8();
  sub_100008550();

  sub_10096ED4C(a1, v2);
}

unint64_t sub_1009761C4()
{
  result = qword_100CE88D8;
  if (!qword_100CE88D8)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CE8858, &qword_100A9CE48);
    v4[0] = sub_10097627C();
    v4[1] = sub_100006F64(&qword_100CE88F0, &qword_100CE88B8, &qword_100A9CE98, &protocol conformance descriptor for _ContentShapeKindModifier<A>);
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CE88D8);
  }

  return result;
}

unint64_t sub_10097627C()
{
  result = qword_100CE88E0;
  if (!qword_100CE88E0)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CE88A8, &qword_100A9CE88);
    v4[0] = sub_100976334();
    v4[1] = sub_100006F64(&qword_100CBDD58, &qword_100CBDD60, &qword_100A613F0, &protocol conformance descriptor for _ContentShapeModifier<A>);
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CE88E0);
  }

  return result;
}

unint64_t sub_100976334()
{
  result = qword_100CE88E8;
  if (!qword_100CE88E8)
  {
    v5[8] = v0;
    v5[9] = v1;
    v3 = sub_10022E824(&qword_100CE88A0, &qword_100A9CE80);
    v4 = sub_10022E824(&qword_100CE8850, &qword_100A9CE40);
    sub_10022E824(&qword_100CE8848, &qword_100A9CE38);
    sub_10022E824(&qword_100CE8840, &qword_100A9CE30);
    sub_100975FD0();
    swift_getOpaqueTypeConformance2();
    v5[2] = v4;
    v5[3] = swift_getOpaqueTypeConformance2();
    v5[0] = swift_getOpaqueTypeConformance2();
    v5[1] = sub_100006F64(&qword_100CBFC28, &qword_100CBFC30, &qword_100A580B8, &protocol conformance descriptor for _GeometryActionModifier<A>);
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v5);
    atomic_store(result, &qword_100CE88E8);
  }

  return result;
}

uint64_t sub_1009764A8()
{
  sub_1000110C8();
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_10096FAA8(v2);
}

void sub_1009764FC(double *a1)
{
  sub_1000110C8();
  sub_100008550();

  sub_100970600(a1, v2);
}

uint64_t sub_100976570(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  sub_1000110C8();
  v7 = v3 + ((*(v6 + 80) + 16) & ~*(v6 + 80));

  return a3(a1, a2, v7);
}

unint64_t sub_1009765F8()
{
  result = qword_100CE8900;
  if (!qword_100CE8900)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CE8868, &qword_100A9CE58);
    v4[0] = sub_1009766B0();
    v4[1] = sub_100006F64(&qword_100CE8910, &qword_100CE8918, &qword_100A9CEB0, protocol conformance descriptor for AnimatableValueObserverModifier<A>);
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CE8900);
  }

  return result;
}

unint64_t sub_1009766B0()
{
  result = qword_100CE8908;
  if (!qword_100CE8908)
  {
    v6[12] = v0;
    v6[13] = v1;
    v3 = sub_10022E824(&qword_100CE88F8, &qword_100A9CEA8);
    v4 = sub_10022E824(&qword_100CE8860, &qword_100A9CE50);
    v5 = sub_10022E824(&qword_100CCA228, &qword_100A689D0);
    sub_10022E824(&qword_100CE8858, &qword_100A9CE48);
    sub_1009761C4();
    v6[2] = v4;
    v6[3] = v5;
    v6[4] = swift_getOpaqueTypeConformance2();
    v6[5] = sub_100006F64(&qword_100CCA260, &qword_100CCA228, &qword_100A689D0, &protocol conformance descriptor for _EndedGesture<A>);
    v6[0] = swift_getOpaqueTypeConformance2();
    v6[1] = &protocol witness table for _AppearanceActionModifier;
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v6);
    atomic_store(result, &qword_100CE8908);
  }

  return result;
}

unint64_t sub_100976814()
{
  result = qword_100CE8958;
  if (!qword_100CE8958)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CE8948, &qword_100A9CEE0);
    v4[0] = sub_100919128();
    v4[1] = &protocol witness table for _BlendModeEffect;
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CE8958);
  }

  return result;
}

unint64_t sub_1009768A0()
{
  result = qword_100CE8968;
  if (!qword_100CE8968)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CE8960, &unk_100A9CF30);
    v4[0] = sub_100919128();
    v4[1] = sub_100006F64(&qword_100CE0FF0, &qword_100CA5110, &qword_100A2F320, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CE8968);
  }

  return result;
}

uint64_t sub_100976958(uint64_t a1, uint64_t a2)
{
  v4 = sub_10022C350(qword_100CA66A0, &unk_100A314C0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1009769E0(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  sub_1000110C8();
  sub_100008550();

  return a2(a1);
}

uint64_t sub_100976B1C(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_1000037E8();
  (*(v3 + 8))(a1);
  return a1;
}

unint64_t sub_100976BF8()
{
  result = qword_100CE8A08;
  if (!qword_100CE8A08)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CE89F8, &qword_100A9D0E0);
    v4[0] = sub_100974B4C(&qword_100CE8A10, type metadata accessor for ScrubberDayContainerView, a9_1);
    v4[1] = &protocol witness table for _FrameLayout;
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CE8A08);
  }

  return result;
}

uint64_t sub_100976CFC(uint64_t a1)
{
  result = type metadata accessor for ScrubberDay(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

double sub_100976D9C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v27 - v11;
  LocationSearchEntityFromStringResolver.init()();
  v14 = v13;
  v16 = v15;
  v17 = [objc_opt_self() modernManager];
  if (v17)
  {
    v18 = v17;
    v19 = [v17 activeTileGroup];
    if (v19)
    {
      v20 = v19;
      v21 = [v19 mapAttributionURLForCoordinate:{v14, v16}];
      if (v21)
      {
        v22 = v21;
        static URL._unconditionallyBridgeFromObjectiveC(_:)();

        (*(v7 + 32))(v12, v9, v6);
        v23 = URL.absoluteString.getter();
        v25 = v24;

        (*(v7 + 8))(v12, v6);
        *a3 = v23;
        a3[1] = v25;
        return result;
      }
    }
  }

  *a3 = a1;
  a3[1] = a2;

  return result;
}

uint64_t sub_100976FBC()
{
  v0 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for Locale();
  __chkstk_darwin(v4 - 8);
  v5 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v5 - 8);
  v6 = type metadata accessor for LocalizedStringResource();
  sub_100007074(v6, qword_100D91468);
  sub_10000703C(v6, qword_100D91468);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  (*(v1 + 104))(v3, enum case for LocalizedStringResource.BundleDescription.main(_:), v0);
  return LocalizedStringResource.init(_:table:locale:bundle:comment:)();
}

void sub_10097719C()
{
  sub_10000C778();
  HasValueComparisonOperator = type metadata accessor for HasValueComparisonOperator();
  sub_1000037C4();
  v3 = v2;
  __chkstk_darwin(v4);
  sub_1000037D8();
  sub_10001365C();
  swift_getKeyPath();
  (*(v3 + 104))(v0, enum case for HasValueComparisonOperator.hasAnyValue(_:), HasValueComparisonOperator);
  sub_10022C350(&qword_100CE8CF0, &qword_100A9DB38);
  sub_10022C350(&qword_100CE8CF8, &qword_100A9DB40);
  sub_100982C78();
  sub_100006F64(&qword_100CE8D00, &qword_100CE8CF0, &qword_100A9DB38, &protocol conformance descriptor for ParameterSummarySwitchCondition<A, B, C>);
  sub_10001A2B4();
  sub_100006F64(v5, &qword_100CE8CF8, &qword_100A9DB40, v6);
  sub_100006F64(&qword_100CE8D10, &qword_100CE8CD8, &qword_100A9DB00, &protocol conformance descriptor for IntentParameter<A>);
  ParameterSummaryWhenCondition.init<A>(_:_:_:otherwise:)();
  sub_10000536C();
}

uint64_t sub_10097737C@<X0>(uint64_t a1@<X8>)
{
  v10[1] = a1;
  v1 = sub_10022C350(&qword_100CE8CF0, &qword_100A9DB38);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = v10 - v6;
  swift_getKeyPath();
  sub_10022C350(&qword_100CE8D38, &qword_100A9DB90);
  sub_100982C78();
  sub_100006F64(&qword_100CE8D40, &qword_100CE8D38, &qword_100A9DB90, &protocol conformance descriptor for ParameterSummaryTupleCaseCondition<A, B, C>);
  ParameterSummarySwitchCondition.init(_:_:)();
  sub_100006F64(&qword_100CE8D00, &qword_100CE8CF0, &qword_100A9DB38, &protocol conformance descriptor for ParameterSummarySwitchCondition<A, B, C>);
  static ParameterSummaryBuilder.buildExpression<A>(_:)();
  v8 = *(v2 + 8);
  v8(v4, v1);
  static ParameterSummaryBuilder.buildBlock<A>(_:)();
  return (v8)(v7, v1);
}

uint64_t sub_100977590@<X0>(uint64_t a1@<X8>)
{
  v28 = a1;
  v1 = sub_10022C350(&qword_100CE8D48, &qword_100A9DB98);
  v2 = *(v1 - 8);
  v26 = v1;
  v27 = v2;
  __chkstk_darwin(v1);
  v24 = &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v25 = &v19 - v5;
  v6 = sub_10022C350(&qword_100CE8D50, &qword_100A9DBA0);
  v29 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v23 = &v19 - v10;
  v30 = 0;
  v11 = sub_10022C350(&qword_100CE8CF8, &qword_100A9DB40);
  v21 = sub_100982C78();
  sub_100982FA4();
  sub_100006F64(&qword_100CE8D08, &qword_100CE8CF8, &qword_100A9DB40, &protocol conformance descriptor for IntentParameterSummary<A>);
  v22 = v11;
  ParameterSummaryCaseCondition.init(_:_:)();
  sub_100006F64(&qword_100CE8D58, &qword_100CE8D50, &qword_100A9DBA0, &protocol conformance descriptor for ParameterSummaryCaseCondition<A, B, C>);
  v12 = v6;
  static ParameterSummaryCaseBuilder.buildExpression<A>(_:)();
  v20 = *(v29 + 8);
  v29 += 8;
  v20(v8, v6);
  v13 = v24;
  ParameterSummaryDefaultCaseCondition.init(_:)();
  sub_100006F64(&qword_100CE8D60, &qword_100CE8D48, &qword_100A9DB98, &protocol conformance descriptor for ParameterSummaryDefaultCaseCondition<A, B, C>);
  v14 = v25;
  v15 = v26;
  static ParameterSummaryCaseBuilder.buildExpression<A>(_:)();
  v16 = *(v27 + 8);
  v16(v13, v15);
  v17 = v23;
  static ParameterSummaryCaseBuilder.buildBlock<A, B>(_:_:)();
  v16(v14, v15);
  return (v20)(v17, v12);
}

uint64_t sub_100977988(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  sub_100982C78();
  v2 = static IntentParameterSummary.ParameterKeyPathsBuilder.buildExpression<A>(_:)();

  swift_getKeyPath();

  v3 = static IntentParameterSummary.ParameterKeyPathsBuilder.buildExpression<A>(_:)();

  sub_10022C350(&unk_100CE49D0, &qword_100A556A0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_100A3AEB0;
  *(v4 + 32) = v2;
  *(v4 + 40) = v3;

  v5 = static IntentParameterSummary.ParameterKeyPathsBuilder.buildBlock(_:)();

  return v5;
}

uint64_t sub_100977AA0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100977A7C();
  *a1 = result;
  return result;
}

uint64_t sub_100977AF0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100977ACC();
  *a1 = result;
  return result;
}

void sub_100977B34()
{
  sub_10000C778();
  v20[0] = v0;
  v20[1] = v1;
  v2 = sub_10022C350(&qword_100CE8D18, &qword_100A9DB48);
  sub_100003810(v2);
  sub_100003828();
  __chkstk_darwin(v3);
  sub_10022C350(&qword_100CE8D20, &qword_100A9DB50);
  sub_100003B20();
  sub_100003828();
  __chkstk_darwin(v4);
  sub_10001365C();
  v5 = sub_10022C350(&qword_100CE8CF8, &qword_100A9DB40);
  sub_1000037C4();
  v7 = v6;
  __chkstk_darwin(v8);
  v10 = v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = v20 - v12;
  sub_100982C78();
  ParameterSummaryString.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v14._countAndFlagsBits = 0x206E65704FLL;
  v14._object = 0xE500000000000000;
  ParameterSummaryString.StringInterpolation.appendLiteral(_:)(v14);
  swift_getKeyPath();
  sub_10022C350(&qword_100CE8D28, &qword_100A9DB58);
  ParameterSummaryString.StringInterpolation.appendInterpolation<A, B>(_:)();

  v15._countAndFlagsBits = 0x736C696174656420;
  v15._object = 0xED000020726F6620;
  ParameterSummaryString.StringInterpolation.appendLiteral(_:)(v15);
  swift_getKeyPath();
  sub_10022C350(&qword_100CE8D30, &qword_100A9DB88);
  ParameterSummaryString.StringInterpolation.appendInterpolation<A, B>(_:)();

  v16._countAndFlagsBits = 0;
  v16._object = 0xE000000000000000;
  ParameterSummaryString.StringInterpolation.appendLiteral(_:)(v16);
  sub_100003B2C();
  ParameterSummaryString.init(stringInterpolation:)();
  IntentParameterSummary.init(_:table:_:)();
  sub_10001A2B4();
  sub_100006F64(v17, &qword_100CE8CF8, &qword_100A9DB40, v18);
  static ParameterSummaryBuilder.buildExpression<A>(_:)();
  v19 = *(v7 + 8);
  v19(v10, v5);
  static ParameterSummaryBuilder.buildBlock<A>(_:)();
  v19(v13, v5);
  sub_10000536C();
}

uint64_t sub_100977E34(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  sub_100982C78();
  v2 = static IntentParameterSummary.ParameterKeyPathsBuilder.buildExpression<A>(_:)();

  sub_10022C350(&unk_100CE49D0, &qword_100A556A0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_100A3BD20;
  *(v3 + 32) = v2;

  v4 = static IntentParameterSummary.ParameterKeyPathsBuilder.buildBlock(_:)();

  return v4;
}

uint64_t sub_100977EF0@<X0>(uint64_t a1@<X8>)
{
  v15[1] = a1;
  v1 = sub_10022C350(&qword_100CE8D18, &qword_100A9DB48);
  __chkstk_darwin(v1 - 8);
  v2 = sub_10022C350(&qword_100CE8D20, &qword_100A9DB50);
  __chkstk_darwin(v2);
  v3 = sub_10022C350(&qword_100CE8CF8, &qword_100A9DB40);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = v15 - v8;
  sub_100982C78();
  ParameterSummaryString.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v10._countAndFlagsBits = 0x206E65704FLL;
  v10._object = 0xE500000000000000;
  ParameterSummaryString.StringInterpolation.appendLiteral(_:)(v10);
  swift_getKeyPath();
  sub_10022C350(&qword_100CE8D28, &qword_100A9DB58);
  ParameterSummaryString.StringInterpolation.appendInterpolation<A, B>(_:)();

  v11._countAndFlagsBits = 0x20726F6620;
  v11._object = 0xE500000000000000;
  ParameterSummaryString.StringInterpolation.appendLiteral(_:)(v11);
  swift_getKeyPath();
  sub_10022C350(&qword_100CE8D30, &qword_100A9DB88);
  ParameterSummaryString.StringInterpolation.appendInterpolation<A, B>(_:)();

  v12._countAndFlagsBits = 0;
  v12._object = 0xE000000000000000;
  ParameterSummaryString.StringInterpolation.appendLiteral(_:)(v12);
  ParameterSummaryString.init(stringInterpolation:)();
  IntentParameterSummary.init(_:table:)();
  sub_100006F64(&qword_100CE8D08, &qword_100CE8CF8, &qword_100A9DB40, &protocol conformance descriptor for IntentParameterSummary<A>);
  static ParameterSummaryBuilder.buildExpression<A>(_:)();
  v13 = *(v4 + 8);
  v13(v6, v3);
  static ParameterSummaryBuilder.buildBlock<A>(_:)();
  return (v13)(v9, v3);
}

uint64_t sub_1009782DC(uint64_t a1)
{
  v2 = sub_10022C350(&unk_100CB2CF0, &unk_100A2D7F0);
  sub_100003810(v2);
  sub_100003828();
  __chkstk_darwin(v3);
  sub_1000D47CC(a1, &v6 - v4);
  IntentParameter.wrappedValue.setter();
  return sub_1001AEDF4(a1);
}

uint64_t sub_10097836C()
{
  v0 = sub_10022C350(&qword_100CE8D70, &qword_100A9DC08);
  __chkstk_darwin(v0);
  v1 = sub_10022C350(&qword_100CE8D68, &qword_100A9DC00);
  sub_100007074(v1, qword_100D91480);
  sub_10000703C(v1, qword_100D91480);
  sub_100982C78();
  IntentURLRepresentation.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v2._object = 0x8000000100AE7E90;
  v2._countAndFlagsBits = 0xD000000000000021;
  IntentURLRepresentation.StringInterpolation.appendLiteral(_:)(v2);
  swift_getKeyPath();
  sub_10022C350(&qword_100CE8D28, &qword_100A9DB58);
  IntentURLRepresentation.StringInterpolation.appendInterpolation<A, B>(_:)();

  v3._countAndFlagsBits = 63;
  v3._object = 0xE100000000000000;
  IntentURLRepresentation.StringInterpolation.appendLiteral(_:)(v3);
  swift_getKeyPath();
  sub_10022C350(&qword_100CE8D30, &qword_100A9DB88);
  IntentURLRepresentation.StringInterpolation.appendInterpolation<A, B>(_:)();

  v4._countAndFlagsBits = 38;
  v4._object = 0xE100000000000000;
  IntentURLRepresentation.StringInterpolation.appendLiteral(_:)(v4);
  swift_getKeyPath();
  sub_10022C350(&qword_100CE8D78, &qword_100A9DC10);
  IntentURLRepresentation.StringInterpolation.appendInterpolation<A, B>(_:)();

  v5._countAndFlagsBits = 0x3D6574616426;
  v5._object = 0xE600000000000000;
  IntentURLRepresentation.StringInterpolation.appendLiteral(_:)(v5);
  swift_getKeyPath();
  sub_10022C350(&qword_100CE8D80, &qword_100A9DC18);
  IntentURLRepresentation.StringInterpolation.appendInterpolation<A, B>(_:)();

  v6._countAndFlagsBits = 0;
  v6._object = 0xE000000000000000;
  IntentURLRepresentation.StringInterpolation.appendLiteral(_:)(v6);
  return IntentURLRepresentation.init(stringInterpolation:)();
}

void sub_1009785BC()
{
  sub_10000C778();
  v78 = sub_10022C350(&qword_100CA2E28, &unk_100A9DAF0);
  sub_1000037C4();
  v77 = v0;
  sub_100003828();
  __chkstk_darwin(v1);
  v76 = &v71 - v2;
  type metadata accessor for InputConnectionBehavior();
  sub_1000037C4();
  v91 = v3;
  v92 = v4;
  __chkstk_darwin(v3);
  sub_1000037D8();
  v82 = v6 - v5;
  v7 = sub_10022C350(&qword_100CA2D68, &unk_100A2C4D0);
  v8 = sub_100003810(v7);
  __chkstk_darwin(v8);
  v81 = &v71 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v90 = &v71 - v11;
  v12 = sub_10022C350(&qword_100CA2D70, &unk_100A3D520);
  sub_100003810(v12);
  sub_100003828();
  __chkstk_darwin(v13);
  v15 = &v71 - v14;
  v16 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  sub_1000037D8();
  v20 = v19 - v18;
  v21 = type metadata accessor for Locale();
  v22 = sub_100003810(v21);
  __chkstk_darwin(v22);
  sub_1000037D8();
  v23 = type metadata accessor for String.LocalizationValue();
  v24 = sub_100003810(v23);
  __chkstk_darwin(v24);
  sub_1000037D8();
  sub_10000CC9C();
  v25 = type metadata accessor for LocalizedStringResource();
  v87 = v25;
  sub_100003B20();
  __chkstk_darwin(v26);
  sub_1000037D8();
  v79 = v28 - v27;
  v75 = sub_10022C350(&qword_100CA2D78, &qword_100A2C4E0);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v29 = enum case for LocalizedStringResource.BundleDescription.main(_:);
  v30 = *(v17 + 104);
  v83 = enum case for LocalizedStringResource.BundleDescription.main(_:);
  v84 = v16;
  v30(v20, enum case for LocalizedStringResource.BundleDescription.main(_:), v16);
  v80 = v17 + 104;
  v85 = v30;
  sub_100010E98();
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  sub_10003CA80();
  sub_100052204();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v30(v20, v29, v16);
  v31 = v15;
  sub_100010E98();
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  sub_10001B350(v15, 0, 1, v25);
  static LocationSearchEntity.makeCurrentLocation()();
  v94 = v98;
  v95 = v99;
  v96 = v100;
  v97 = v101;
  v32 = type metadata accessor for IntentDialog();
  v86 = v32;
  sub_100003934();
  sub_10001B350(v33, v34, v35, v32);
  sub_100003934();
  sub_10001B350(v36, v37, v38, v32);
  v89 = enum case for InputConnectionBehavior.default(_:);
  v39 = *(v92 + 104);
  v92 += 104;
  v88 = v39;
  v39(v82);
  sub_10022C350(&qword_100CA2D80, &qword_100A2C4E8);
  sub_100006F64(&qword_100CA2D88, &qword_100CA2D80, &qword_100A2C4E8, &protocol conformance descriptor for ResolverSpecificationBuilder<A>.Specification<A1, Pack{repeat B1}>);
  sub_10015E074();
  v75 = IntentParameter<>.init<A>(title:description:default:requestValueDialog:requestDisambiguationDialog:inputConnectionBehavior:resolvers:)();
  v74 = sub_10022C350(&qword_100CE8CD8, &qword_100A9DB00);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v40 = v83;
  v42 = v84;
  v41 = v85;
  v85(v20, v83, v84);
  sub_100010E98();
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  sub_100052204();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v41(v20, v40, v42);
  sub_100010E98();
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  v72 = v31;
  sub_10000EF54(v31);
  v93 = 7;
  sub_100003934();
  v43 = v86;
  sub_10001B350(v44, v45, v46, v86);
  sub_100003934();
  sub_10001B350(v47, v48, v49, v43);
  v50 = sub_100031940();
  v51(v50);
  sub_100983068();
  v74 = IntentParameter<>.init(title:description:default:requestValueDialog:requestDisambiguationDialog:inputConnectionBehavior:supportedValues:)();
  v73 = sub_10022C350(&qword_100CE8CE0, &qword_100A9DB08);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v52 = v83;
  v53 = v84;
  v54 = v85;
  v85(v20, v83, v84);
  sub_100010E98();
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  sub_10003CA80();
  sub_100052204();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v54(v20, v52, v53);
  v55 = v72;
  sub_100010E98();
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  sub_10000EF54(v55);
  v93 = 0;
  sub_100003934();
  v56 = v86;
  sub_10001B350(v57, v58, v59, v86);
  sub_100003934();
  sub_10001B350(v60, v61, v62, v56);
  v63 = sub_100031940();
  v64(v63);
  sub_100983688();
  IntentParameter<>.init(title:description:default:requestValueDialog:requestDisambiguationDialog:inputConnectionBehavior:supportedValues:)();
  v81 = sub_10022C350(&qword_100CA2E30, &qword_100A2C560);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v65 = v83;
  v66 = v84;
  v67 = v85;
  v85(v20, v83, v84);
  sub_100010E98();
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  sub_10003CA80();
  sub_100052204();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v67(v20, v65, v66);
  sub_100010E98();
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  sub_10000EF54(v55);
  sub_100003934();
  sub_10001B350(v68, v69, v70, v86);
  (*(v77 + 104))(v76, enum case for IntentParameter.DateKind.dateTime<A>(_:), v78);
  v88(v82, v89, v91);
  IntentParameter<>.init(title:description:kind:requestValueDialog:inputConnectionBehavior:)();
  sub_10000536C();
}

uint64_t sub_100978F74@<X0>(uint64_t a1@<X8>)
{
  if (qword_100CA2B50 != -1)
  {
    swift_once();
  }

  v2 = sub_10022C350(&qword_100CE8D68, &qword_100A9DC00);
  v3 = sub_10000703C(v2, qword_100D91480);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_100979064(uint64_t a1, uint64_t a2)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  v5 = sub_100983CD8();
  *v4 = v2;
  v4[1] = sub_1004801A8;

  return URLRepresentableIntent.perform()(a2, v5);
}

void sub_100979110(void *a1@<X8>)
{
  sub_1009785BC();
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
}

uint64_t sub_10097913C(uint64_t a1, double a2)
{
  v3 = sub_100982C78();

  return static AppIntent.persistentIdentifier.getter(a1, v3);
}

void sub_100979178()
{
  sub_10000C778();
  type metadata accessor for _AssistantIntent();
  sub_1000037C4();
  v1 = v0;
  __chkstk_darwin(v2);
  sub_1000037D8();
  sub_10001365C();
  sub_1009785BC();
  sub_100023628(v3, v4, v5, v6);
  v7 = sub_100982C78();
  sub_10001D38C(v7, sub_10097959C, v8, sub_10097A9E0);
  v84 = static _AssistantIntent.Builder.buildExpression(_:)();
  v9 = *(v1 + 8);
  v10 = sub_100003B2C();
  v9(v10);
  sub_1009785BC();
  v15 = sub_100023628(v11, v12, v13, v14);
  sub_10001D38C(v15, sub_10097AD9C, v16, sub_10097B294);
  v83 = static _AssistantIntent.Builder.buildExpression(_:)();
  v17 = sub_100003B2C();
  v9(v17);
  sub_1009785BC();
  v22 = sub_100023628(v18, v19, v20, v21);
  sub_10001D38C(v22, sub_10097B500, v23, sub_10097B8C4);
  v82 = static _AssistantIntent.Builder.buildExpression(_:)();
  v24 = sub_100003B2C();
  v9(v24);
  sub_1009785BC();
  v29 = sub_100023628(v25, v26, v27, v28);
  sub_10001D38C(v29, sub_10097B9B4, v30, sub_10097BEAC);
  v81 = static _AssistantIntent.Builder.buildExpression(_:)();
  v31 = sub_100003B2C();
  v9(v31);
  sub_1009785BC();
  v36 = sub_100023628(v32, v33, v34, v35);
  sub_10001D38C(v36, sub_10097BF04, v37, sub_10097C590);
  v80 = static _AssistantIntent.Builder.buildExpression(_:)();
  v38 = sub_100003B2C();
  v9(v38);
  sub_1009785BC();
  v43 = sub_100023628(v39, v40, v41, v42);
  sub_10001D38C(v43, sub_10097C5E8, v44, sub_10097D498);
  v45 = static _AssistantIntent.Builder.buildExpression(_:)();
  v46 = sub_100003B2C();
  v9(v46);
  sub_1009785BC();
  v51 = sub_100023628(v47, v48, v49, v50);
  sub_10001D38C(v51, sub_10097D4F4, v52, sub_10097E08C);
  v53 = static _AssistantIntent.Builder.buildExpression(_:)();
  v54 = sub_100003B2C();
  v9(v54);
  sub_1009785BC();
  v59 = sub_100023628(v55, v56, v57, v58);
  sub_10001D38C(v59, sub_10097E0DC, v60, sub_10097F660);
  v61 = static _AssistantIntent.Builder.buildExpression(_:)();
  v62 = sub_100003B2C();
  v9(v62);
  sub_1009785BC();
  v67 = sub_100023628(v63, v64, v65, v66);
  sub_10001D38C(v67, sub_10097F7D4, v68, sub_100980340);
  v69 = static _AssistantIntent.Builder.buildExpression(_:)();
  v70 = sub_100003B2C();
  v9(v70);
  sub_1009785BC();
  v75 = sub_100023628(v71, v72, v73, v74);
  sub_10001D38C(v75, sub_100980704, v76, sub_100980E98);
  v77 = static _AssistantIntent.Builder.buildExpression(_:)();
  v78 = sub_100003B2C();
  v9(v78);
  sub_10022C350(&qword_100CADD98, &qword_100A3D4F0);
  v79 = swift_allocObject();
  *(v79 + 16) = xmmword_100A30470;
  *(v79 + 32) = v84;
  *(v79 + 40) = v83;
  *(v79 + 48) = v82;
  *(v79 + 56) = v81;
  *(v79 + 64) = v80;
  *(v79 + 72) = v45;
  *(v79 + 80) = v53;
  *(v79 + 88) = v61;
  *(v79 + 96) = v69;
  *(v79 + 104) = v77;
  static _AssistantIntent.Builder.buildBlock(_:)();
  sub_1000379AC();
  sub_10000536C();
}

uint64_t sub_10097959C(uint64_t a1)
{
  v108 = a1;
  v1 = type metadata accessor for _AssistantIntent.PhraseToken();
  v2 = *(v1 - 8);
  v104 = v1;
  v105 = v2;
  __chkstk_darwin(v1);
  v103 = &v86 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10022C350(&qword_100CE8CC0, &qword_100A9DAD8);
  v5 = *(v4 - 8);
  v110 = v4;
  v111 = v5;
  __chkstk_darwin(v4);
  v7 = &v86 - v6;
  v8 = sub_10022C350(&qword_100CE8CC8, &qword_100A9DAE0);
  __chkstk_darwin(v8);
  v9 = sub_100982C78();
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v10._countAndFlagsBits = 0x2073692074616857;
  v10._object = 0xEC00000020656874;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v10);
  swift_getKeyPath();
  v11 = sub_100982FA4();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v12._countAndFlagsBits = 63;
  v12._object = 0xE100000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v12);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v97 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v13 = v111 + 8;
  v106 = *(v111 + 8);
  v106(v7, v4);
  v111 = v13;
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v14._countAndFlagsBits = 0x2073692074616857;
  v14._object = 0xEC00000020656874;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v14);
  swift_getKeyPath();
  v112 = v11;
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v15._countAndFlagsBits = 544106784;
  v15._object = 0xE400000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v15);
  swift_getKeyPath();
  v107 = sub_10015E1DC();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v16._countAndFlagsBits = 63;
  v16._object = 0xE100000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v16);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v96 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v106(v7, v110);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v17._countAndFlagsBits = 0x2073692074616857;
  v17._object = 0xEC00000020656874;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v17);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v18._countAndFlagsBits = 32;
  v18._object = 0xE100000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v18);
  swift_getKeyPath();
  v102 = sub_100983AE4(&qword_100CE2568, &unk_100CB2CF0, &unk_100A2D7F0, sub_1008A56F0);
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v19._countAndFlagsBits = 63;
  v19._object = 0xE100000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v19);
  v109 = v7;
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v95 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v20 = v110;
  v21 = v106;
  v106(v7, v110);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v22._countAndFlagsBits = 0x2073692074616857;
  v22._object = 0xEC00000020656874;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v22);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v23._countAndFlagsBits = 544106784;
  v23._object = 0xE400000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v23);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v24._countAndFlagsBits = 32;
  v24._object = 0xE100000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v24);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v25._countAndFlagsBits = 63;
  v25._object = 0xE100000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v25);
  v26 = v109;
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v94 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v21(v26, v20);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v27._countAndFlagsBits = 0x2064616220776F48;
  v27._object = 0xEF20656874207369;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v27);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v28._countAndFlagsBits = 63;
  v28._object = 0xE100000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v28);
  v29 = v109;
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v93 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v30 = v110;
  v21(v29, v110);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v31._countAndFlagsBits = 0x2064616220776F48;
  v31._object = 0xEF20656874207369;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v31);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v32._countAndFlagsBits = 544106784;
  v32._object = 0xE400000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v32);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v33._countAndFlagsBits = 63;
  v33._object = 0xE100000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v33);
  v34 = v109;
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v98 = v9;
  v92 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v21(v34, v30);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v35._countAndFlagsBits = 0x2064616220776F48;
  v35._object = 0xEF20656874207369;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v35);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v36._countAndFlagsBits = 32;
  v36._object = 0xE100000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v36);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v37._countAndFlagsBits = 63;
  v37._object = 0xE100000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v37);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v91 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v21(v34, v110);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v38._countAndFlagsBits = 0x2064616220776F48;
  v38._object = 0xEF20656874207369;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v38);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v39._countAndFlagsBits = 544106784;
  v39._object = 0xE400000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v39);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v40._countAndFlagsBits = 32;
  v40._object = 0xE100000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v40);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v41._countAndFlagsBits = 63;
  v41._object = 0xE100000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v41);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v90 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v42 = v110;
  v21(v34, v110);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v43._countAndFlagsBits = 0x206E65704FLL;
  v43._object = 0xE500000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v43);
  v100 = enum case for _AssistantIntent.PhraseToken.applicationName(_:);
  v45 = v104;
  v44 = v105;
  v102 = *(v105 + 104);
  v99 = v105 + 104;
  v46 = v103;
  v102(v103);
  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();
  v101 = *(v44 + 8);
  v101(v46, v45);
  v105 = v44 + 8;
  v47._countAndFlagsBits = 544175136;
  v47._object = 0xE400000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v47);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v48._countAndFlagsBits = 46;
  v48._object = 0xE100000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v48);
  v49 = v109;
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v89 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v21(v49, v42);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v50._countAndFlagsBits = 0x206E65704FLL;
  v50._object = 0xE500000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v50);
  v52 = v103;
  v51 = v104;
  (v102)(v103, v100, v104);
  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();
  v101(v52, v51);
  v53._countAndFlagsBits = 544175136;
  v53._object = 0xE400000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v53);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v54._countAndFlagsBits = 2126631;
  v54._object = 0xE300000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v54);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v55._countAndFlagsBits = 46;
  v55._object = 0xE100000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v55);
  v56 = v109;
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v88 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v57 = v110;
  v58 = v106;
  v106(v56, v110);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v59._countAndFlagsBits = 0x656874206E65704FLL;
  v59._object = 0xE900000000000020;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v59);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v60._countAndFlagsBits = 0x73616365726F6620;
  v60._object = 0xEA00000000002E74;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v60);
  v61 = v109;
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v87 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v58(v61, v57);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v62._countAndFlagsBits = 0x20776F6853;
  v62._object = 0xE500000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v62);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v63._countAndFlagsBits = 2126631;
  v63._object = 0xE300000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v63);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v64._countAndFlagsBits = 544106784;
  v64._object = 0xE400000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v64);
  v65 = v103;
  v66 = v104;
  (v102)(v103, v100, v104);
  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();
  v101(v65, v66);
  v67._countAndFlagsBits = 46;
  v67._object = 0xE100000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v67);
  v68 = v109;
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v107 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v106(v68, v110);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v69._countAndFlagsBits = 0x2079616C70736944;
  v69._object = 0xE800000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v69);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v70._countAndFlagsBits = 544106784;
  v70._object = 0xE400000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v70);
  (v102)(v65, v100, v66);
  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();
  v101(v65, v66);
  v71._countAndFlagsBits = 46;
  v71._object = 0xE100000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v71);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v105 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v72 = v110;
  v73 = v106;
  v106(v68, v110);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v74._countAndFlagsBits = 0;
  v74._object = 0xE000000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v74);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v75._countAndFlagsBits = 0x73616365726F6620;
  v75._object = 0xEA00000000002E74;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v75);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v76 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v73(v68, v72);
  sub_10022C350(&qword_100CE8CD0, &qword_100A9DAE8);
  v77 = swift_allocObject();
  *(v77 + 16) = xmmword_100A9D240;
  v78 = v96;
  *(v77 + 32) = v97;
  *(v77 + 40) = v78;
  v79 = v94;
  *(v77 + 48) = v95;
  *(v77 + 56) = v79;
  v80 = v92;
  *(v77 + 64) = v93;
  *(v77 + 72) = v80;
  v81 = v90;
  *(v77 + 80) = v91;
  *(v77 + 88) = v81;
  v82 = v88;
  *(v77 + 96) = v89;
  *(v77 + 104) = v82;
  v83 = v107;
  *(v77 + 112) = v87;
  *(v77 + 120) = v83;
  *(v77 + 128) = v105;
  *(v77 + 136) = v76;
  v84 = static _AssistantIntent.PhraseBuilder.buildBlock(_:)();

  return v84;
}

uint64_t sub_10097A94C(uint64_t a1)
{
  v2 = sub_10022C350(&unk_100CB2CF0, &unk_100A2D7F0);
  __chkstk_darwin(v2 - 8);
  v4 = &v6 - v3;
  sub_1000D47CC(a1, &v6 - v3);
  return sub_1009782DC(v4);
}

uint64_t sub_10097AA20()
{
  v25 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v24 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v23 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v22 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v21 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v20 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v19 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v18 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v17 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v16 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v15 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v14 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v13 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v12 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v0 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v1 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v2 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v3 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v4 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v5 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v6 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v7 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v8 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  sub_10022C350(&qword_100CADD90, &unk_100A54580);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_100A9D250;
  *(v9 + 32) = v25;
  *(v9 + 40) = v24;
  *(v9 + 48) = v23;
  *(v9 + 56) = v22;
  *(v9 + 64) = v21;
  *(v9 + 72) = v20;
  *(v9 + 80) = v19;
  *(v9 + 88) = v18;
  *(v9 + 96) = v17;
  *(v9 + 104) = v16;
  *(v9 + 112) = v15;
  *(v9 + 120) = v14;
  *(v9 + 128) = v13;
  *(v9 + 136) = v12;
  *(v9 + 144) = v0;
  *(v9 + 152) = v1;
  *(v9 + 160) = v2;
  *(v9 + 168) = v3;
  *(v9 + 176) = v4;
  *(v9 + 184) = v5;
  *(v9 + 192) = v6;
  *(v9 + 200) = v7;
  *(v9 + 208) = v8;
  v10 = static _AssistantIntent.StringValueBuilder.buildBlock(_:)();

  return v10;
}

uint64_t sub_10097AD9C(uint64_t a1)
{
  v31 = a1;
  v1 = sub_10022C350(&qword_100CE8CC8, &qword_100A9DAE0);
  __chkstk_darwin(v1);
  v2 = sub_10022C350(&qword_100CE8CC0, &qword_100A9DAD8);
  v30 = v2;
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v22 - v4;
  sub_100982C78();
  _AssistantIntent.Phrase.init(stringLiteral:)();
  v29 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v6 = *(v3 + 8);
  v6(v5, v2);
  v23 = v6;
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v27 = "How humid is it?";
  v7._countAndFlagsBits = 0xD000000000000013;
  v7._object = 0x8000000100AE7AE0;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v7);
  swift_getKeyPath();
  v26 = sub_10015E1DC();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v8._countAndFlagsBits = 63;
  v8._object = 0xE100000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v8);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v28 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v9 = v30;
  v6(v5, v30);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v10._object = 0x8000000100AE7B00;
  v10._countAndFlagsBits = 0xD000000000000010;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v10);
  swift_getKeyPath();
  v24 = sub_100983AE4(&qword_100CE2568, &unk_100CB2CF0, &unk_100A2D7F0, sub_1008A56F0);
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v11._countAndFlagsBits = 63;
  v11._object = 0xE100000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v11);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v25 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v12 = v9;
  v13 = v23;
  v23(v5, v12);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v14._countAndFlagsBits = 0xD000000000000013;
  v14._object = (v27 | 0x8000000000000000);
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v14);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v15._countAndFlagsBits = 32;
  v15._object = 0xE100000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v15);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v16._countAndFlagsBits = 63;
  v16._object = 0xE100000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v16);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v17 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v13(v5, v30);
  sub_10022C350(&qword_100CE8CD0, &qword_100A9DAE8);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_100A3B020;
  v19 = v28;
  *(v18 + 32) = v29;
  *(v18 + 40) = v19;
  *(v18 + 48) = v25;
  *(v18 + 56) = v17;
  v20 = static _AssistantIntent.PhraseBuilder.buildBlock(_:)();

  return v20;
}

void sub_10097B2D4()
{
  sub_10000C778();
  v19 = v0;
  v2 = v1;
  v4 = v3;
  type metadata accessor for _AssistantIntent.Value();
  sub_1000037C4();
  v6 = v5;
  __chkstk_darwin(v7);
  sub_1000037D8();
  sub_10000CC9C();
  swift_getKeyPath();
  sub_100982FA4();
  v8 = _AssistantIntent.IntentProjection.subscript.getter();

  sub_100982C78();
  sub_10002CC20(v8, v4);
  v9 = static _AssistantIntent.ParameterValueBuilder.buildExpression(_:)();
  v10 = *(v6 + 8);
  v11 = sub_1000046B4();
  v10(v11);
  swift_getKeyPath();
  sub_10015E1DC();
  v12 = _AssistantIntent.IntentProjection.subscript.getter();

  sub_10002CC20(v12, v2);
  v13 = static _AssistantIntent.ParameterValueBuilder.buildExpression(_:)();
  v14 = sub_1000046B4();
  v10(v14);
  swift_getKeyPath();
  sub_100049FA0(&qword_100CE2568, &unk_100CB2CF0, &unk_100A2D7F0);
  v15 = _AssistantIntent.IntentProjection.subscript.getter();

  sub_10002CC20(v15, v19);
  v16 = static _AssistantIntent.ParameterValueBuilder.buildExpression(_:)();
  v17 = sub_1000046B4();
  v10(v17);
  sub_10022C350(&qword_100CBCBD8, &qword_100A549E0);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_100A3BBA0;
  *(v18 + 32) = v9;
  *(v18 + 40) = v13;
  *(v18 + 48) = v16;
  static _AssistantIntent.ParameterValueBuilder.buildBlock(_:)();
  sub_1000379AC();
  sub_10000536C();
}

uint64_t sub_10097B500()
{
  v0 = sub_10022C350(&qword_100CE8CC0, &qword_100A9DAD8);
  v16 = v0;
  v18 = *(v0 - 8);
  __chkstk_darwin(v0);
  v2 = &v15 - v1;
  v3 = sub_10022C350(&qword_100CE8CC8, &qword_100A9DAE0);
  __chkstk_darwin(v3);
  sub_100982C78();
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v4._countAndFlagsBits = 0x6863756D20776F48;
  v4._object = 0xE900000000000020;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v4);
  swift_getKeyPath();
  sub_100982FA4();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v5._countAndFlagsBits = 0x7265687420736920;
  v5._object = 0xEA00000000003F65;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v5);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v6 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v7 = *(v18 + 8);
  v17 = v6;
  v18 += 8;
  v7(v2, v0);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v8._countAndFlagsBits = 0x207469206C6C6957;
  v8._object = 0xE800000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v8);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v9._countAndFlagsBits = 32;
  v9._object = 0xE100000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v9);
  swift_getKeyPath();
  sub_100983AE4(&qword_100CE2568, &unk_100CB2CF0, &unk_100A2D7F0, sub_1008A56F0);
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v10._countAndFlagsBits = 63;
  v10._object = 0xE100000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v10);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v11 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v7(v2, v16);
  sub_10022C350(&qword_100CE8CD0, &qword_100A9DAE8);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_100A2D320;
  *(v12 + 32) = v17;
  *(v12 + 40) = v11;
  v13 = static _AssistantIntent.PhraseBuilder.buildBlock(_:)();

  return v13;
}

uint64_t sub_10097B904()
{
  v0 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v1 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v2 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  sub_10022C350(&qword_100CADD90, &unk_100A54580);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_100A3BBA0;
  *(v3 + 32) = v0;
  *(v3 + 40) = v1;
  *(v3 + 48) = v2;
  v4 = static _AssistantIntent.StringValueBuilder.buildBlock(_:)();

  return v4;
}

uint64_t sub_10097B9B4(uint64_t a1)
{
  v31 = a1;
  v1 = sub_10022C350(&qword_100CE8CC8, &qword_100A9DAE0);
  __chkstk_darwin(v1);
  v2 = sub_10022C350(&qword_100CE8CC0, &qword_100A9DAD8);
  v30 = v2;
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v22 - v4;
  sub_100982C78();
  _AssistantIntent.Phrase.init(stringLiteral:)();
  v29 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v6 = *(v3 + 8);
  v6(v5, v2);
  v23 = v6;
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v27 = "How much pressure is there?";
  v7._countAndFlagsBits = 0xD00000000000001ELL;
  v7._object = 0x8000000100AE7A80;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v7);
  swift_getKeyPath();
  v26 = sub_10015E1DC();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v8._countAndFlagsBits = 63;
  v8._object = 0xE100000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v8);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v28 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v9 = v30;
  v6(v5, v30);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v10._object = 0x8000000100AE7AA0;
  v10._countAndFlagsBits = 0xD00000000000001BLL;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v10);
  swift_getKeyPath();
  v24 = sub_100983AE4(&qword_100CE2568, &unk_100CB2CF0, &unk_100A2D7F0, sub_1008A56F0);
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v11._countAndFlagsBits = 63;
  v11._object = 0xE100000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v11);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v25 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v12 = v9;
  v13 = v23;
  v23(v5, v12);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v14._countAndFlagsBits = 0xD00000000000001ELL;
  v14._object = (v27 | 0x8000000000000000);
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v14);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v15._countAndFlagsBits = 32;
  v15._object = 0xE100000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v15);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v16._countAndFlagsBits = 63;
  v16._object = 0xE100000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v16);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v17 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v13(v5, v30);
  sub_10022C350(&qword_100CE8CD0, &qword_100A9DAE8);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_100A3B020;
  v19 = v28;
  *(v18 + 32) = v29;
  *(v18 + 40) = v19;
  *(v18 + 48) = v25;
  *(v18 + 56) = v17;
  v20 = static _AssistantIntent.PhraseBuilder.buildBlock(_:)();

  return v20;
}

uint64_t sub_10097BF04(uint64_t a1)
{
  v2 = sub_10022C350(&qword_100CE8CC8, &qword_100A9DAE0);
  __chkstk_darwin(v2);
  v3 = sub_10022C350(&qword_100CE8CC0, &qword_100A9DAD8);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v29 - v5;
  sub_100982C78();
  _AssistantIntent.Phrase.init(stringLiteral:)();
  v7 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v8 = *(v4 + 8);
  v35 = v7;
  v36 = v8;
  v9 = v3;
  v8(v6, v3);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v32 = "Do I need sunscreen?";
  v10._countAndFlagsBits = 0xD000000000000017;
  v10._object = 0x8000000100AE79C0;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v10);
  swift_getKeyPath();
  v31 = sub_10015E1DC();
  v29[1] = a1;
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v11._countAndFlagsBits = 63;
  v11._object = 0xE100000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v11);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v34 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v30 = v3;
  v12 = v36;
  v36(v6, v30);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v13._object = 0x8000000100AE79E0;
  v13._countAndFlagsBits = 0xD000000000000014;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v13);
  swift_getKeyPath();
  v37 = sub_100983AE4(&qword_100CE2568, &unk_100CB2CF0, &unk_100A2D7F0, sub_1008A56F0);
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v14._countAndFlagsBits = 63;
  v14._object = 0xE100000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v14);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v33 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v12(v6, v9);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v15._countAndFlagsBits = 0xD000000000000017;
  v15._object = (v32 | 0x8000000000000000);
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v15);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v16._countAndFlagsBits = 544108320;
  v16._object = 0xE400000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v16);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v17._countAndFlagsBits = 63;
  v17._object = 0xE100000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v17);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v32 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v18 = v30;
  v19 = v36;
  v36(v6, v30);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v20._countAndFlagsBits = 0xD000000000000013;
  v20._object = 0x8000000100AE7A00;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v20);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v21._countAndFlagsBits = 63;
  v21._object = 0xE100000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v21);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v37 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v19(v6, v18);
  _AssistantIntent.Phrase.init(stringLiteral:)();
  v22 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v19(v6, v18);
  _AssistantIntent.Phrase.init(stringLiteral:)();
  v23 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v19(v6, v18);
  sub_10022C350(&qword_100CE8CD0, &qword_100A9DAE8);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_100A3F990;
  v25 = v34;
  *(v24 + 32) = v35;
  *(v24 + 40) = v25;
  v26 = v32;
  *(v24 + 48) = v33;
  *(v24 + 56) = v26;
  *(v24 + 64) = v37;
  *(v24 + 72) = v22;
  *(v24 + 80) = v23;
  v27 = static _AssistantIntent.PhraseBuilder.buildBlock(_:)();

  return v27;
}

uint64_t sub_10097C5E8(uint64_t a1)
{
  v77 = a1;
  v1 = sub_10022C350(&qword_100CE8CC8, &qword_100A9DAE0);
  __chkstk_darwin(v1);
  v2 = sub_10022C350(&qword_100CE8CC0, &qword_100A9DAD8);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v60 - v4;
  v6 = sub_100982C78();
  _AssistantIntent.Phrase.init(stringLiteral:)();
  v76 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v7 = *(v3 + 8);
  v81 = v2;
  v82 = v7;
  v7(v5, v2);
  v79 = v3 + 8;
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v73 = "How foggy is it?";
  v8._countAndFlagsBits = 0xD000000000000013;
  v8._object = 0x8000000100AE7880;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v8);
  swift_getKeyPath();
  v78 = sub_10015E1DC();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v9._countAndFlagsBits = 63;
  v9._object = 0xE100000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v9);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v75 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v10 = v2;
  v11 = v82;
  v82(v5, v10);
  v12 = v11;
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v13._object = 0x8000000100AE78A0;
  v13._countAndFlagsBits = 0xD000000000000010;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v13);
  swift_getKeyPath();
  v80 = sub_100983AE4(&qword_100CE2568, &unk_100CB2CF0, &unk_100A2D7F0, sub_1008A56F0);
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v14._countAndFlagsBits = 63;
  v14._object = 0xE100000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v14);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v74 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v11(v5, v81);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v15._countAndFlagsBits = 0xD000000000000013;
  v15._object = (v73 | 0x8000000000000000);
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v15);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v16._countAndFlagsBits = 32;
  v16._object = 0xE100000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v16);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v17._countAndFlagsBits = 63;
  v17._object = 0xE100000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v17);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v73 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v18 = v81;
  v12(v5, v81);
  _AssistantIntent.Phrase.init(stringLiteral:)();
  v72 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v12(v5, v18);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v69 = "How much smoke is there?";
  v19._countAndFlagsBits = 0xD00000000000001BLL;
  v19._object = 0x8000000100AE78E0;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v19);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v20._countAndFlagsBits = 63;
  v20._object = 0xE100000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v20);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v71 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v21 = v81;
  v82(v5, v81);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v22._countAndFlagsBits = 0xD000000000000018;
  v22._object = 0x8000000100AE7900;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v22);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v23._countAndFlagsBits = 63;
  v23._object = 0xE100000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v23);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v70 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v24 = v21;
  v25 = v82;
  v82(v5, v24);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v26._countAndFlagsBits = 0xD00000000000001BLL;
  v26._object = (v69 | 0x8000000000000000);
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v26);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v27._countAndFlagsBits = 32;
  v27._object = 0xE100000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v27);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v28._countAndFlagsBits = 63;
  v28._object = 0xE100000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v28);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v69 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v29 = v81;
  v25(v5, v81);
  _AssistantIntent.Phrase.init(stringLiteral:)();
  v68 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v25(v5, v29);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v65 = "How much smoke is there ";
  v30._countAndFlagsBits = 0xD000000000000011;
  v30._object = 0x8000000100AE7920;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v30);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v31._countAndFlagsBits = 63;
  v31._object = 0xE100000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v31);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v60 = v6;
  v67 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v32 = v81;
  v82(v5, v81);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v33._object = 0xEE0020657A616820;
  v33._countAndFlagsBits = 0x6572656874207349;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v33);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v34._countAndFlagsBits = 63;
  v34._object = 0xE100000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v34);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v66 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v82(v5, v32);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v35._countAndFlagsBits = 0xD000000000000011;
  v35._object = (v65 | 0x8000000000000000);
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v35);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v36._countAndFlagsBits = 32;
  v36._object = 0xE100000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v36);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v37._countAndFlagsBits = 63;
  v37._object = 0xE100000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v37);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v65 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v38 = v81;
  v39 = v82;
  v82(v5, v81);
  _AssistantIntent.Phrase.init(stringLiteral:)();
  v64 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v39(v5, v38);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v61 = "How far can I see?";
  v40._countAndFlagsBits = 0xD000000000000015;
  v40._object = 0x8000000100AE7960;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v40);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v41._countAndFlagsBits = 63;
  v41._object = 0xE100000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v41);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v63 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v42 = v81;
  v82(v5, v81);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v43._countAndFlagsBits = 0xD000000000000012;
  v43._object = 0x8000000100AE7980;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v43);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v44._countAndFlagsBits = 63;
  v44._object = 0xE100000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v44);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v62 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v45 = v82;
  v82(v5, v42);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v46._countAndFlagsBits = 0xD000000000000015;
  v46._object = (v61 | 0x8000000000000000);
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v46);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v47._countAndFlagsBits = 32;
  v47._object = 0xE100000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v47);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v48._countAndFlagsBits = 63;
  v48._object = 0xE100000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v48);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v49 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v45(v5, v81);
  sub_10022C350(&qword_100CE8CD0, &qword_100A9DAE8);
  v50 = swift_allocObject();
  *(v50 + 16) = xmmword_100A9D260;
  v51 = v75;
  *(v50 + 32) = v76;
  *(v50 + 40) = v51;
  v52 = v73;
  *(v50 + 48) = v74;
  *(v50 + 56) = v52;
  v53 = v71;
  *(v50 + 64) = v72;
  *(v50 + 72) = v53;
  v54 = v69;
  *(v50 + 80) = v70;
  *(v50 + 88) = v54;
  v55 = v67;
  *(v50 + 96) = v68;
  *(v50 + 104) = v55;
  v56 = v65;
  *(v50 + 112) = v66;
  *(v50 + 120) = v56;
  v57 = v63;
  *(v50 + 128) = v64;
  *(v50 + 136) = v57;
  *(v50 + 144) = v62;
  *(v50 + 152) = v49;
  v58 = static _AssistantIntent.PhraseBuilder.buildBlock(_:)();

  return v58;
}

uint64_t sub_10097D4F4(uint64_t a1)
{
  v59 = a1;
  v1 = sub_10022C350(&qword_100CE8CC8, &qword_100A9DAE0);
  __chkstk_darwin(v1);
  v2 = sub_10022C350(&qword_100CE8CC0, &qword_100A9DAD8);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v45 - v4;
  v6 = sub_100982C78();
  _AssistantIntent.Phrase.init(stringLiteral:)();
  v57 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v60 = *(v3 + 8);
  v62 = v2;
  v60(v5, v2);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v54 = "Is it going to be windy?";
  v7._countAndFlagsBits = 0xD00000000000001BLL;
  v7._object = 0x8000000100AE7760;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v7);
  swift_getKeyPath();
  v63 = sub_10015E1DC();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v8._countAndFlagsBits = 63;
  v8._object = 0xE100000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v8);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v56 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v9 = v2;
  v10 = v60;
  v60(v5, v9);
  v58 = v3 + 8;
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v11._object = 0x8000000100AE7780;
  v11._countAndFlagsBits = 0xD000000000000018;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v11);
  swift_getKeyPath();
  v61 = sub_100983AE4(&qword_100CE2568, &unk_100CB2CF0, &unk_100A2D7F0, sub_1008A56F0);
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v12._countAndFlagsBits = 63;
  v12._object = 0xE100000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v12);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v55 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v10(v5, v62);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v13._countAndFlagsBits = 0xD00000000000001BLL;
  v13._object = (v54 | 0x8000000000000000);
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v13);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v14._countAndFlagsBits = 32;
  v14._object = 0xE100000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v14);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v15._countAndFlagsBits = 63;
  v15._object = 0xE100000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v15);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v54 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v16 = v62;
  v17 = v60;
  v60(v5, v62);
  _AssistantIntent.Phrase.init(stringLiteral:)();
  v53 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v17(v5, v16);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v50 = "How fast are the wind gusts?";
  v18._countAndFlagsBits = 0xD00000000000001FLL;
  v18._object = 0x8000000100AE77C0;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v18);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v19._countAndFlagsBits = 63;
  v19._object = 0xE100000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v19);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v45 = v6;
  v52 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v20 = v60;
  v60(v5, v16);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v21._countAndFlagsBits = 0xD00000000000001CLL;
  v21._object = 0x8000000100AE77E0;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v21);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v22._countAndFlagsBits = 63;
  v22._object = 0xE100000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v22);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v51 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v20(v5, v16);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v23._countAndFlagsBits = 0xD00000000000001FLL;
  v23._object = (v50 | 0x8000000000000000);
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v23);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v24._countAndFlagsBits = 32;
  v24._object = 0xE100000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v24);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v25._countAndFlagsBits = 63;
  v25._object = 0xE100000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v25);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v50 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v26 = v62;
  v27 = v60;
  v60(v5, v62);
  v46 = 0xD000000000000014;
  _AssistantIntent.Phrase.init(stringLiteral:)();
  v49 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v27(v5, v26);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v47 = "Show the wind chart.";
  v28._object = 0x8000000100AE7820;
  v28._countAndFlagsBits = 0xD000000000000018;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v28);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v29._countAndFlagsBits = 46;
  v29._object = 0xE100000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v29);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v48 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v30 = v60;
  v60(v5, v26);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v31._object = 0x8000000100AE7840;
  v31._countAndFlagsBits = v46;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v31);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v32._countAndFlagsBits = 46;
  v32._object = 0xE100000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v32);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v46 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v30(v5, v62);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v33._object = (v47 | 0x8000000000000000);
  v33._countAndFlagsBits = 0xD000000000000018;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v33);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v34._countAndFlagsBits = 32;
  v34._object = 0xE100000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v34);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v35._countAndFlagsBits = 46;
  v35._object = 0xE100000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v35);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v36 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v30(v5, v62);
  sub_10022C350(&qword_100CE8CD0, &qword_100A9DAE8);
  v37 = swift_allocObject();
  *(v37 + 16) = xmmword_100A55560;
  v38 = v56;
  *(v37 + 32) = v57;
  *(v37 + 40) = v38;
  v39 = v54;
  *(v37 + 48) = v55;
  *(v37 + 56) = v39;
  v40 = v52;
  *(v37 + 64) = v53;
  *(v37 + 72) = v40;
  v41 = v50;
  *(v37 + 80) = v51;
  *(v37 + 88) = v41;
  v42 = v48;
  *(v37 + 96) = v49;
  *(v37 + 104) = v42;
  *(v37 + 112) = v46;
  *(v37 + 120) = v36;
  v43 = static _AssistantIntent.PhraseBuilder.buildBlock(_:)();

  return v43;
}

uint64_t sub_10097E0DC(uint64_t a1)
{
  v2 = type metadata accessor for _AssistantIntent.PhraseToken();
  v3 = *(v2 - 8);
  v116 = v2;
  v117 = v3;
  __chkstk_darwin(v2);
  v115 = &v94 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10022C350(&qword_100CE8CC0, &qword_100A9DAD8);
  v121 = *(v5 - 8);
  v122 = v5;
  __chkstk_darwin(v5);
  v7 = &v94 - v6;
  v8 = sub_10022C350(&qword_100CE8CC8, &qword_100A9DAE0);
  __chkstk_darwin(v8);
  v9 = sub_100982C78();
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v10._countAndFlagsBits = 0x2073692074616857;
  v10._object = 0xEC00000020656874;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v10);
  swift_getKeyPath();
  v120 = sub_100983AE4(&qword_100CE8CB0, &qword_100CE8CB8, &qword_100A9DA80, sub_1009834F4);
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v11._countAndFlagsBits = 544106784;
  v11._object = 0xE400000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v11);
  swift_getKeyPath();
  v114 = sub_10015E1DC();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v12._countAndFlagsBits = 63;
  v12._object = 0xE100000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v12);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v106 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v13 = *(v121 + 8);
  v121 += 8;
  v119 = v13;
  v13(v7, v122);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v14._countAndFlagsBits = 0x2073692074616857;
  v14._object = 0xEC00000020656874;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v14);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v15._countAndFlagsBits = 544106784;
  v15._object = 0xE400000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v15);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v16._countAndFlagsBits = 32;
  v16._object = 0xE100000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v16);
  swift_getKeyPath();
  v118 = sub_100983AE4(&qword_100CE2568, &unk_100CB2CF0, &unk_100A2D7F0, sub_1008A56F0);
  v113 = a1;
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v17._countAndFlagsBits = 63;
  v17._object = 0xE100000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v17);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v105 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v18 = v122;
  v119(v7, v122);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v19._countAndFlagsBits = 0x20656D20776F6853;
  v19._object = 0xEC00000020656874;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v19);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v20._countAndFlagsBits = 544106784;
  v20._object = 0xE400000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v20);
  v21 = enum case for _AssistantIntent.PhraseToken.applicationName(_:);
  v22 = v116;
  v23 = v117;
  v109 = *(v117 + 104);
  v111 = v117 + 104;
  v24 = v115;
  v108 = enum case for _AssistantIntent.PhraseToken.applicationName(_:);
  v109(v115, enum case for _AssistantIntent.PhraseToken.applicationName(_:), v116);
  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();
  v25 = *(v23 + 8);
  v117 = v23 + 8;
  v110 = v25;
  v25(v24, v22);
  v26._countAndFlagsBits = 46;
  v26._object = 0xE100000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v26);
  v112 = v7;
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v104 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v27 = v18;
  v28 = v119;
  v119(v7, v27);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v29._countAndFlagsBits = 0x65687420776F6853;
  v29._object = 0xE900000000000020;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v29);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v30._countAndFlagsBits = 544106784;
  v30._object = 0xE400000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v30);
  v32 = v115;
  v31 = v116;
  v109(v115, v21, v116);
  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();
  v110(v32, v31);
  v33._countAndFlagsBits = 46;
  v33._object = 0xE100000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v33);
  v34 = v112;
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v103 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v35 = v122;
  v28(v34, v122);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v36._countAndFlagsBits = 0x20776F6853;
  v36._object = 0xE500000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v36);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v37._countAndFlagsBits = 46;
  v37._object = 0xE100000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v37);
  v38 = v112;
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v102 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v28(v38, v35);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v39._countAndFlagsBits = 0x206E65704FLL;
  v39._object = 0xE500000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v39);
  v41 = v115;
  v40 = v116;
  v109(v115, v108, v116);
  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();
  v110(v41, v40);
  v42._countAndFlagsBits = 544175136;
  v42._object = 0xE400000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v42);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v43._countAndFlagsBits = 2126631;
  v43._object = 0xE300000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v43);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v44._countAndFlagsBits = 46;
  v44._object = 0xE100000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v44);
  v45 = v112;
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v101 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v46 = v122;
  v47 = v119;
  v119(v45, v122);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v48._countAndFlagsBits = 0x656874206E65704FLL;
  v48._object = 0xE900000000000020;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v48);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v49._countAndFlagsBits = 0x73616365726F6620;
  v49._object = 0xEA00000000002E74;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v49);
  v50 = v112;
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v100 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v47(v50, v46);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v51._countAndFlagsBits = 0;
  v51._object = 0xE000000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v51);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v52._countAndFlagsBits = 2126631;
  v52._object = 0xE300000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v52);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v53._countAndFlagsBits = 46;
  v53._object = 0xE100000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v53);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v99 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v119(v50, v122);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v54._countAndFlagsBits = 0;
  v54._object = 0xE000000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v54);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v55._countAndFlagsBits = 2126631;
  v55._object = 0xE300000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v55);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v56._countAndFlagsBits = 32;
  v56._object = 0xE100000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v56);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v57._countAndFlagsBits = 46;
  v57._object = 0xE100000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v57);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v107 = v9;
  v98 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v58 = v122;
  v59 = v119;
  v119(v50, v122);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v60._countAndFlagsBits = 0x207374616857;
  v60._object = 0xE600000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v60);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v61._countAndFlagsBits = 2126631;
  v61._object = 0xE300000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v61);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v62._countAndFlagsBits = 63;
  v62._object = 0xE100000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v62);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v97 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v59(v50, v58);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v63._countAndFlagsBits = 0x207374616857;
  v63._object = 0xE600000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v63);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v64._countAndFlagsBits = 2126631;
  v64._object = 0xE300000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v64);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v65._countAndFlagsBits = 32;
  v65._object = 0xE100000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v65);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v66._countAndFlagsBits = 63;
  v66._object = 0xE100000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v66);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v96 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v67 = v122;
  v119(v50, v122);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v68._countAndFlagsBits = 0x7420736920776F48;
  v68._object = 0xEB00000000206568;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v68);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v69._countAndFlagsBits = 544106784;
  v69._object = 0xE400000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v69);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v70._countAndFlagsBits = 63;
  v70._object = 0xE100000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v70);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v95 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v71 = v67;
  v72 = v119;
  v119(v50, v71);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v73._countAndFlagsBits = 0x7420736920776F48;
  v73._object = 0xEB00000000206568;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v73);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v74._countAndFlagsBits = 544106784;
  v74._object = 0xE400000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v74);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v75._countAndFlagsBits = 32;
  v75._object = 0xE100000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v75);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v76._countAndFlagsBits = 63;
  v76._object = 0xE100000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v76);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v94 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v72(v50, v122);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v77._countAndFlagsBits = 2125385;
  v77._object = 0xE300000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v77);
  v79 = v115;
  v78 = v116;
  v109(v115, v108, v116);
  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();
  v110(v79, v78);
  v80._countAndFlagsBits = 0x6D20776F6873202CLL;
  v80._object = 0xEA00000000002065;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v80);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v81._countAndFlagsBits = 2126631;
  v81._object = 0xE300000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v81);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v82._countAndFlagsBits = 32;
  v82._object = 0xE100000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v82);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v83._countAndFlagsBits = 0;
  v83._object = 0xE000000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v83);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v84 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v119(v50, v122);
  sub_10022C350(&qword_100CE8CD0, &qword_100A9DAE8);
  v85 = swift_allocObject();
  *(v85 + 16) = xmmword_100A9D240;
  v86 = v105;
  *(v85 + 32) = v106;
  *(v85 + 40) = v86;
  v87 = v103;
  *(v85 + 48) = v104;
  *(v85 + 56) = v87;
  v88 = v101;
  *(v85 + 64) = v102;
  *(v85 + 72) = v88;
  v89 = v99;
  *(v85 + 80) = v100;
  *(v85 + 88) = v89;
  v90 = v97;
  *(v85 + 96) = v98;
  *(v85 + 104) = v90;
  v91 = v95;
  *(v85 + 112) = v96;
  *(v85 + 120) = v91;
  *(v85 + 128) = v94;
  *(v85 + 136) = v84;
  v92 = static _AssistantIntent.PhraseBuilder.buildBlock(_:)();

  return v92;
}

uint64_t sub_10097F628@<X0>(_BYTE *a1@<X8>)
{
  result = sub_100978250();
  *a1 = result;
  return result;
}

uint64_t sub_10097F6B4()
{
  v0 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v1 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v2 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v3 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v4 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  sub_10022C350(&qword_100CADD90, &unk_100A54580);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_100A3B030;
  *(v5 + 32) = v0;
  *(v5 + 40) = v1;
  *(v5 + 48) = v2;
  *(v5 + 56) = v3;
  *(v5 + 64) = v4;
  v6 = static _AssistantIntent.StringValueBuilder.buildBlock(_:)();

  return v6;
}

uint64_t sub_10097F7D4(uint64_t a1)
{
  v58 = a1;
  v1 = sub_10022C350(&qword_100CE8CC0, &qword_100A9DAD8);
  v2 = *(v1 - 8);
  v60 = v1;
  v61 = v2;
  __chkstk_darwin(v1);
  v4 = &v46 - v3;
  v5 = sub_10022C350(&qword_100CE8CC8, &qword_100A9DAE0);
  __chkstk_darwin(v5);
  sub_100982C78();
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v6._countAndFlagsBits = 0xD000000000000018;
  v6._object = 0x8000000100AE7660;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v6);
  swift_getKeyPath();
  v55 = sub_100983AE4(&qword_100CE8CB0, &qword_100CE8CB8, &qword_100A9DA80, sub_1009834F4);
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v7._countAndFlagsBits = 63;
  v7._object = 0xE100000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v7);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v53 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v8 = v60;
  v59 = *(v61 + 8);
  v61 += 8;
  v59(v4, v60);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v9._countAndFlagsBits = 0xD000000000000018;
  v9._object = 0x8000000100AE7660;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v9);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v10._countAndFlagsBits = 32;
  v10._object = 0xE100000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v10);
  swift_getKeyPath();
  v57 = sub_100983AE4(&qword_100CE2568, &unk_100CB2CF0, &unk_100A2D7F0, sub_1008A56F0);
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v11._countAndFlagsBits = 63;
  v11._object = 0xE100000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v11);
  v54 = v4;
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v52 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v12 = v8;
  v13 = v59;
  v59(v4, v12);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v50 = "What is the temperature ";
  v14._countAndFlagsBits = 0xD00000000000001BLL;
  v14._object = 0x8000000100AE7680;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v14);
  swift_getKeyPath();
  v56 = sub_10015E1DC();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v15._countAndFlagsBits = 32;
  v15._object = 0xE100000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v15);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v16._countAndFlagsBits = 63;
  v16._object = 0xE100000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v16);
  v17 = v54;
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v51 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v13(v17, v60);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v18._countAndFlagsBits = 0xD00000000000001BLL;
  v18._object = (v50 | 0x8000000000000000);
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v18);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v19._countAndFlagsBits = 32;
  v19._object = 0xE100000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v19);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v20._countAndFlagsBits = 32;
  v20._object = 0xE100000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v20);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v21._countAndFlagsBits = 63;
  v21._object = 0xE100000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v21);
  v22 = v54;
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v50 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v23 = v60;
  v59(v22, v60);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v48 = "What is the temperature in ";
  v24._object = 0x8000000100AE76A0;
  v24._countAndFlagsBits = 0xD000000000000017;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v24);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v25._countAndFlagsBits = 63;
  v25._object = 0xE100000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v25);
  v26 = v54;
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v49 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v59(v26, v23);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v27._object = (v48 | 0x8000000000000000);
  v27._countAndFlagsBits = 0xD000000000000017;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v27);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v28._countAndFlagsBits = 32;
  v28._object = 0xE100000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v28);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v29._countAndFlagsBits = 63;
  v29._object = 0xE100000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v29);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v48 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v30 = v59;
  v59(v26, v60);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v46 = "How is the temperature ";
  v31._countAndFlagsBits = 0xD00000000000001ALL;
  v31._object = 0x8000000100AE76C0;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v31);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v32._countAndFlagsBits = 32;
  v32._object = 0xE100000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v32);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v33._countAndFlagsBits = 63;
  v33._object = 0xE100000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v33);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v47 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v34 = v60;
  v30(v26, v60);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v35._countAndFlagsBits = 0xD00000000000001ALL;
  v35._object = (v46 | 0x8000000000000000);
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v35);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v36._countAndFlagsBits = 32;
  v36._object = 0xE100000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v36);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v37._countAndFlagsBits = 32;
  v37._object = 0xE100000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v37);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v38._countAndFlagsBits = 63;
  v38._object = 0xE100000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v38);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v39 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v59(v26, v34);
  sub_10022C350(&qword_100CE8CD0, &qword_100A9DAE8);
  v40 = swift_allocObject();
  *(v40 + 16) = xmmword_100A3ECD0;
  v41 = v52;
  *(v40 + 32) = v53;
  *(v40 + 40) = v41;
  v42 = v50;
  *(v40 + 48) = v51;
  *(v40 + 56) = v42;
  v43 = v48;
  *(v40 + 64) = v49;
  *(v40 + 72) = v43;
  *(v40 + 80) = v47;
  *(v40 + 88) = v39;
  v44 = static _AssistantIntent.PhraseBuilder.buildBlock(_:)();

  return v44;
}

void sub_100980394()
{
  sub_10000C778();
  v24 = v0;
  v2 = v1;
  v4 = v3;
  v6 = v5;
  type metadata accessor for _AssistantIntent.Value();
  sub_1000037C4();
  v8 = v7;
  __chkstk_darwin(v9);
  sub_1000037D8();
  sub_10000CC9C();
  swift_getKeyPath();
  sub_100982FA4();
  v10 = _AssistantIntent.IntentProjection.subscript.getter();

  sub_100982C78();
  sub_10002CC20(v10, v6);
  v23 = static _AssistantIntent.ParameterValueBuilder.buildExpression(_:)();
  v11 = *(v8 + 8);
  v12 = sub_1000046B4();
  v11(v12);
  swift_getKeyPath();
  sub_100983AE4(&qword_100CE8CB0, &qword_100CE8CB8, &qword_100A9DA80, sub_1009834F4);
  v13 = _AssistantIntent.IntentProjection.subscript.getter();

  sub_10002CC20(v13, v4);
  v14 = static _AssistantIntent.ParameterValueBuilder.buildExpression(_:)();
  v15 = sub_1000046B4();
  v11(v15);
  swift_getKeyPath();
  sub_10015E1DC();
  v16 = _AssistantIntent.IntentProjection.subscript.getter();

  sub_10002CC20(v16, v2);
  v17 = static _AssistantIntent.ParameterValueBuilder.buildExpression(_:)();
  v18 = sub_1000046B4();
  v11(v18);
  swift_getKeyPath();
  sub_100049FA0(&qword_100CE2568, &unk_100CB2CF0, &unk_100A2D7F0);
  v19 = _AssistantIntent.IntentProjection.subscript.getter();

  sub_10002CC20(v19, v24);
  v20 = static _AssistantIntent.ParameterValueBuilder.buildExpression(_:)();
  v21 = sub_1000046B4();
  v11(v21);
  sub_10022C350(&qword_100CBCBD8, &qword_100A549E0);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_100A3B020;
  *(v22 + 32) = v23;
  *(v22 + 40) = v14;
  *(v22 + 48) = v17;
  *(v22 + 56) = v20;
  static _AssistantIntent.ParameterValueBuilder.buildBlock(_:)();
  sub_1000379AC();
  sub_10000536C();
}

uint64_t sub_100980634()
{
  v0 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v1 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v2 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  sub_10022C350(&qword_100CADD90, &unk_100A54580);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_100A3BBA0;
  *(v3 + 32) = v0;
  *(v3 + 40) = v1;
  *(v3 + 48) = v2;
  v4 = static _AssistantIntent.StringValueBuilder.buildBlock(_:)();

  return v4;
}

uint64_t sub_100980704(uint64_t a1)
{
  v39 = a1;
  v1 = sub_10022C350(&qword_100CE8CC0, &qword_100A9DAD8);
  v41 = *(v1 - 8);
  __chkstk_darwin(v1);
  v3 = &v30 - v2;
  v4 = sub_10022C350(&qword_100CE8CC8, &qword_100A9DAE0);
  __chkstk_darwin(v4);
  sub_100982C78();
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v5._countAndFlagsBits = 544698184;
  v5._object = 0xE400000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v5);
  swift_getKeyPath();
  v40 = sub_100983AE4(&qword_100CE8CB0, &qword_100CE8CB8, &qword_100A9DA80, sub_1009834F4);
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v6._countAndFlagsBits = 63;
  v6._object = 0xE100000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v6);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v7 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v8 = *(v41 + 8);
  v41 += 8;
  v36 = v7;
  v37 = v8;
  v31 = v1;
  v8(v3, v1);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v9._countAndFlagsBits = 544698184;
  v9._object = 0xE400000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v9);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v10._countAndFlagsBits = 32;
  v10._object = 0xE100000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v10);
  swift_getKeyPath();
  v38 = sub_100983AE4(&qword_100CE2568, &unk_100CB2CF0, &unk_100A2D7F0, sub_1008A56F0);
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v11._countAndFlagsBits = 63;
  v11._object = 0xE100000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v11);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v35 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v12 = v37;
  v37(v3, v1);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v13._countAndFlagsBits = 544698184;
  v13._object = 0xE400000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v13);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v14._countAndFlagsBits = 544106784;
  v14._object = 0xE400000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v14);
  swift_getKeyPath();
  v33 = sub_10015E1DC();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v15._countAndFlagsBits = 63;
  v15._object = 0xE100000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v15);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v34 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v16 = v31;
  v12(v3, v31);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v17._countAndFlagsBits = 544698184;
  v17._object = 0xE400000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v17);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v18._countAndFlagsBits = 32;
  v18._object = 0xE100000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v18);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v19._countAndFlagsBits = 63;
  v19._object = 0xE100000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v19);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v32 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v12(v3, v16);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v20._countAndFlagsBits = 544698184;
  v20._object = 0xE400000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v20);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v21._countAndFlagsBits = 544106784;
  v21._object = 0xE400000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v21);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v22._countAndFlagsBits = 32;
  v22._object = 0xE100000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v22);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v23._countAndFlagsBits = 63;
  v23._object = 0xE100000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v23);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v24 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v37(v3, v16);
  sub_10022C350(&qword_100CE8CD0, &qword_100A9DAE8);
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_100A3B030;
  v26 = v35;
  *(v25 + 32) = v36;
  *(v25 + 40) = v26;
  v27 = v32;
  *(v25 + 48) = v34;
  *(v25 + 56) = v27;
  *(v25 + 64) = v24;
  v28 = static _AssistantIntent.PhraseBuilder.buildBlock(_:)();

  return v28;
}

uint64_t sub_100980EEC()
{
  v0 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v1 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v2 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v3 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v4 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v5 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  sub_10022C350(&qword_100CADD90, &unk_100A54580);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_100A3C3F0;
  *(v6 + 32) = v0;
  *(v6 + 40) = v1;
  *(v6 + 48) = v2;
  *(v6 + 56) = v3;
  *(v6 + 64) = v4;
  *(v6 + 72) = v5;
  v7 = static _AssistantIntent.StringValueBuilder.buildBlock(_:)();

  return v7;
}

uint64_t sub_10098102C()
{
  type metadata accessor for _AssistantIntent.NegativeAssistantIntentPhrases();
  sub_1000037C4();
  __chkstk_darwin(v1);
  sub_1000037D8();
  sub_10001365C();
  sub_100982C78();
  _AssistantIntent.NegativeAssistantIntentPhrases.init<A>(for:phrases:)();
  v2 = static _AssistantIntent.NegativeAssistantIntentPhrasesBuilder.buildExpression(_:)();
  v3 = sub_100003B2C();
  v4(v3);
  sub_10022C350(&qword_100CADD88, &unk_100A3D4E0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_100A2C3F0;
  *(v5 + 32) = v2;
  static _AssistantIntent.NegativeAssistantIntentPhrasesBuilder.buildBlock(_:)();
  sub_1000379AC();
  return v0;
}

uint64_t sub_100981154(uint64_t a1, uint64_t a2)
{
  v2 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  sub_10022C350(&qword_100CADD90, &unk_100A54580);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_100A2C3F0;
  *(v3 + 32) = v2;
  v4 = static _AssistantIntent.StringValueBuilder.buildBlock(_:)();

  return v4;
}

uint64_t sub_1009811EC()
{
  v0 = sub_10022C350(&qword_100CBCC00, &unk_100A6BF00);
  __chkstk_darwin(v0 - 8);
  v30[1] = v30 - v1;
  v2 = sub_10022C350(&qword_100CA2D70, &unk_100A3D520);
  __chkstk_darwin(v2 - 8);
  v4 = v30 - v3;
  v5 = type metadata accessor for LocalizedStringResource();
  v41 = v5;
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10022C350(&qword_100CE8CA0, &qword_100A9DA20);
  v9 = sub_10022C350(&qword_100CE8CA8, &qword_100A9DA28);
  v10 = *(v9 - 8);
  v42 = *(v10 + 72);
  v11 = v9 - 8;
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_100A3F990;
  v14 = v13 + v12;
  v33 = *(v11 + 56);
  v34 = v13;
  *(v13 + v12) = 0;
  LocalizedStringResource.init(stringLiteral:)();
  sub_10001B350(v4, 1, 1, v5);
  DisplayRepresentation.Image.init(systemName:tintColor:symbolConfiguration:)();
  v39 = sub_10022C350(&qword_100CBCC18, &qword_100A53C00);
  v15 = *(v6 + 72);
  v16 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v43 = *(v6 + 80);
  v44 = v16;
  v40 = 3 * v15;
  *(swift_allocObject() + 16) = xmmword_100A3BBA0;
  LocalizedStringResource.init(stringLiteral:)();
  LocalizedStringResource.init(stringLiteral:)();
  LocalizedStringResource.init(stringLiteral:)();
  v35 = v8;
  v38 = v4;
  DisplayRepresentation.init(title:subtitle:image:synonyms:)();
  v17 = v42;
  v36 = v11;
  v37 = v14;
  v18 = v11;
  v33 = *(v11 + 56);
  *(v14 + v42) = 1;
  LocalizedStringResource.init(stringLiteral:)();
  v19 = v41;
  sub_10001B350(v4, 1, 1, v41);
  DisplayRepresentation.Image.init(systemName:tintColor:symbolConfiguration:)();
  *(swift_allocObject() + 16) = xmmword_100A2C3F0;
  LocalizedStringResource.init(stringLiteral:)();
  v20 = v38;
  DisplayRepresentation.init(title:subtitle:image:synonyms:)();
  v21 = *(v18 + 56);
  v31 = (v14 + 2 * v17);
  v32 = v21;
  *v31 = 2;
  LocalizedStringResource.init(stringLiteral:)();
  sub_10001B350(v20, 1, 1, v19);
  DisplayRepresentation.Image.init(systemName:tintColor:symbolConfiguration:)();
  *(swift_allocObject() + 16) = xmmword_100A41BA0;
  LocalizedStringResource.init(stringLiteral:)();
  LocalizedStringResource.init(stringLiteral:)();
  LocalizedStringResource.init(stringLiteral:)();
  LocalizedStringResource.init(stringLiteral:)();
  LocalizedStringResource.init(stringLiteral:)();
  v33 = 5 * v15;
  LocalizedStringResource.init(stringLiteral:)();
  LocalizedStringResource.init(stringLiteral:)();
  LocalizedStringResource.init(stringLiteral:)();
  LocalizedStringResource.init(stringLiteral:)();
  DisplayRepresentation.init(title:subtitle:image:synonyms:)();
  v22 = v36;
  v23 = v37;
  v32 = *(v36 + 56);
  *(v37 + 3 * v42) = 3;
  LocalizedStringResource.init(stringLiteral:)();
  sub_10001B350(v20, 1, 1, v41);
  DisplayRepresentation.Image.init(systemName:tintColor:symbolConfiguration:)();
  v30[0] = v15;
  *(swift_allocObject() + 16) = xmmword_100A2D320;
  LocalizedStringResource.init(stringLiteral:)();
  LocalizedStringResource.init(stringLiteral:)();
  v24 = v38;
  DisplayRepresentation.init(title:subtitle:image:synonyms:)();
  v32 = *(v22 + 56);
  *(v23 + 4 * v42) = 4;
  LocalizedStringResource.init(stringLiteral:)();
  v25 = v41;
  sub_10001B350(v24, 1, 1, v41);
  DisplayRepresentation.Image.init(systemName:tintColor:symbolConfiguration:)();
  *(swift_allocObject() + 16) = xmmword_100A3C3F0;
  LocalizedStringResource.init(stringLiteral:)();
  LocalizedStringResource.init(stringLiteral:)();
  LocalizedStringResource.init(stringLiteral:)();
  LocalizedStringResource.init(stringLiteral:)();
  LocalizedStringResource.init(stringLiteral:)();
  LocalizedStringResource.init(stringLiteral:)();
  v26 = v38;
  DisplayRepresentation.init(title:subtitle:image:synonyms:)();
  v27 = v42;
  v28 = v37;
  *(v37 + 5 * v42) = 5;
  LocalizedStringResource.init(stringLiteral:)();
  sub_10001B350(v26, 1, 1, v25);
  DisplayRepresentation.Image.init(systemName:tintColor:symbolConfiguration:)();
  DisplayRepresentation.init(title:subtitle:image:synonyms:)();
  *(v28 + 6 * v27) = 6;
  LocalizedStringResource.init(stringLiteral:)();
  sub_10001B350(v26, 1, 1, v25);
  DisplayRepresentation.Image.init(systemName:tintColor:symbolConfiguration:)();
  *(swift_allocObject() + 16) = xmmword_100A3B020;
  LocalizedStringResource.init(stringLiteral:)();
  LocalizedStringResource.init(stringLiteral:)();
  LocalizedStringResource.init(stringLiteral:)();
  LocalizedStringResource.init(stringLiteral:)();
  DisplayRepresentation.init(title:subtitle:image:synonyms:)();
  type metadata accessor for DisplayRepresentation();
  sub_100983170();
  result = Dictionary.init(dictionaryLiteral:)();
  qword_100D914B0 = result;
  return result;
}

uint64_t sub_100981C68()
{
  result = sub_100030188();
  switch(v1)
  {
    case 1:
      result = sub_1000753B0();
      break;
    case 2:
      result = 0xD000000000000012;
      break;
    case 3:
      result = sub_100028EBC();
      break;
    case 4:
      result = 0x7865646E497675;
      break;
    case 5:
      result = 0x696C696269736976;
      break;
    case 6:
      result = 1684957559;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_100981D00(Swift::String string)
{
  object = string._object;
  v3._countAndFlagsBits = string._countAndFlagsBits;
  v3._object = object;
  _findStringSwitchCase(cases:string:)(&off_100C45C00, v3);
  sub_1000379AC();
  if (v1 >= 7)
  {
    return 7;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_100981D44()
{
  result = sub_100030188();
  switch(v1)
  {
    case 1:
      result = sub_1000753B0();
      break;
    case 2:
      result = 0x7469706963657270;
      break;
    case 3:
      result = sub_100028EBC();
      break;
    case 4:
      result = 6911605;
      break;
    case 5:
      result = 0x696C696269736976;
      break;
    case 6:
      result = 1684957559;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_100981E00@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100981D00(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_100981E30@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100981D44();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_100981E5C()
{
  v1 = sub_100981C68();
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_100981EF4@<X0>(void *a1@<X2>, uint64_t (*a2)(void)@<X3>, uint64_t a3@<X4>, uint64_t a5@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v8 = a2(0);
  sub_10000703C(v8, a3);
  sub_100003B20();
  v10 = *(v9 + 16);

  return v10(a5);
}

uint64_t sub_100981F94(uint64_t a1)
{
  v2 = sub_100983068();

  return static AppEnum.defaultResolverSpecification.getter(a1, v2);
}

double sub_100981FE0()
{
  if (qword_100CA2B60 != -1)
  {
    swift_once();
  }

  return result;
}

uint64_t sub_10098203C(uint64_t a1)
{
  v2 = sub_100982FFC();

  return CaseDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

uint64_t sub_1009820C0(uint64_t a1, uint64_t *a2)
{
  v3 = sub_10022C350(&qword_100CA2D70, &unk_100A3D520);
  sub_100003810(v3);
  sub_100003828();
  __chkstk_darwin(v4);
  sub_10000CC9C();
  v5 = type metadata accessor for LocalizedStringResource();
  sub_100003B20();
  __chkstk_darwin(v6);
  sub_1000037D8();
  v7 = type metadata accessor for TypeDisplayRepresentation();
  sub_100007074(v7, a2);
  sub_10000703C(v7, a2);
  sub_100003B2C();
  LocalizedStringResource.init(stringLiteral:)();
  sub_100003934();
  sub_10001B350(v8, v9, v10, v5);
  return TypeDisplayRepresentation.init(name:numericFormat:)();
}

uint64_t TemperatureKind.typeDisplayRepresentation.unsafeMutableAddressor(double a1)
{
  if (qword_100CA2B68 != -1)
  {
    sub_10000936C(&qword_100CA2B68);
  }

  v1 = type metadata accessor for TypeDisplayRepresentation();

  return sub_10000703C(v1, static TemperatureKind.typeDisplayRepresentation);
}

uint64_t static TemperatureKind.typeDisplayRepresentation.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_100CA2B68 != -1)
  {
    sub_10000936C(&qword_100CA2B68);
  }

  v3 = type metadata accessor for TypeDisplayRepresentation();
  v4 = sub_10000703C(v3, static TemperatureKind.typeDisplayRepresentation);
  swift_beginAccess();
  sub_100003B20();
  return (*(v5 + 16))(a1, v4, v3);
}

uint64_t static TemperatureKind.typeDisplayRepresentation.setter(uint64_t a1, double a2)
{
  if (qword_100CA2B68 != -1)
  {
    sub_10000936C(&qword_100CA2B68);
  }

  v3 = type metadata accessor for TypeDisplayRepresentation();
  v4 = sub_10000703C(v3, static TemperatureKind.typeDisplayRepresentation);
  swift_beginAccess();
  v5 = *(v3 - 8);
  (*(v5 + 24))(v4, a1, v3);
  swift_endAccess();
  return (*(v5 + 8))(a1, v3);
}

double (*static TemperatureKind.typeDisplayRepresentation.modify(uint64_t a1, double a2))(uint64_t a1)
{
  if (qword_100CA2B68 != -1)
  {
    sub_10000936C(&qword_100CA2B68);
  }

  v2 = type metadata accessor for TypeDisplayRepresentation();
  sub_10000703C(v2, static TemperatureKind.typeDisplayRepresentation);
  swift_beginAccess();
  return j__swift_endAccess_1;
}

uint64_t sub_10098243C()
{
  v0 = sub_10022C350(&qword_100CBCC00, &unk_100A6BF00);
  __chkstk_darwin(v0 - 8);
  v2 = v18 - v1;
  v18[0] = v18 - v1;
  v3 = sub_10022C350(&qword_100CA2D70, &unk_100A3D520);
  __chkstk_darwin(v3 - 8);
  v5 = v18 - v4;
  v6 = type metadata accessor for LocalizedStringResource();
  v20 = v6;
  v22 = *(v6 - 8);
  v7 = v22;
  __chkstk_darwin(v6);
  v9 = v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10022C350(&qword_100CE8D88, &qword_100A9DC20);
  v10 = (sub_10022C350(&qword_100CE8D90, &qword_100A9DC28) - 8);
  v11 = *v10;
  v21 = *(*v10 + 72);
  v12 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v13 = swift_allocObject();
  v24 = v13;
  *(v13 + 16) = xmmword_100A2D320;
  v14 = v13 + v12;
  v18[1] = v10[14];
  *(v13 + v12) = 0;
  LocalizedStringResource.init(stringLiteral:)();
  v15 = v5;
  sub_10001B350(v5, 1, 1, v6);
  v19 = type metadata accessor for DisplayRepresentation.Image();
  sub_10001B350(v2, 1, 1, v19);
  sub_10022C350(&qword_100CBCC18, &qword_100A53C00);
  v22 = 3 * *(v7 + 72);
  *(swift_allocObject() + 16) = xmmword_100A3BBA0;
  LocalizedStringResource.init(stringLiteral:)();
  LocalizedStringResource.init(stringLiteral:)();
  LocalizedStringResource.init(stringLiteral:)();
  v16 = v18[0];
  v23 = v9;
  DisplayRepresentation.init(title:subtitle:image:synonyms:)();
  *(v14 + v21) = 1;
  LocalizedStringResource.init(stringLiteral:)();
  sub_10001B350(v15, 1, 1, v20);
  sub_10001B350(v16, 1, 1, v19);
  *(swift_allocObject() + 16) = xmmword_100A55560;
  LocalizedStringResource.init(stringLiteral:)();
  LocalizedStringResource.init(stringLiteral:)();
  LocalizedStringResource.init(stringLiteral:)();
  LocalizedStringResource.init(stringLiteral:)();
  LocalizedStringResource.init(stringLiteral:)();
  LocalizedStringResource.init(stringLiteral:)();
  LocalizedStringResource.init(stringLiteral:)();
  LocalizedStringResource.init(stringLiteral:)();
  LocalizedStringResource.init(stringLiteral:)();
  LocalizedStringResource.init(stringLiteral:)();
  LocalizedStringResource.init(stringLiteral:)();
  LocalizedStringResource.init(stringLiteral:)();
  DisplayRepresentation.init(title:subtitle:image:synonyms:)();
  type metadata accessor for DisplayRepresentation();
  sub_1009837DC();
  result = Dictionary.init(dictionaryLiteral:)();
  static TemperatureKind.caseDisplayRepresentations = result;
  return result;
}

uint64_t *TemperatureKind.caseDisplayRepresentations.unsafeMutableAddressor()
{
  if (qword_100CA2B70 != -1)
  {
    sub_100006C70(&qword_100CA2B70);
  }

  return &static TemperatureKind.caseDisplayRepresentations;
}

double static TemperatureKind.caseDisplayRepresentations.getter()
{
  if (qword_100CA2B70 != -1)
  {
    sub_100006C70(&qword_100CA2B70);
  }

  swift_beginAccess();

  return result;
}

uint64_t static TemperatureKind.caseDisplayRepresentations.setter(uint64_t a1)
{
  if (qword_100CA2B70 != -1)
  {
    sub_100006C70(&qword_100CA2B70);
  }

  swift_beginAccess();
  static TemperatureKind.caseDisplayRepresentations = a1;
}

double (*static TemperatureKind.caseDisplayRepresentations.modify())(uint64_t a1)
{
  if (qword_100CA2B70 != -1)
  {
    sub_100006C70(&qword_100CA2B70);
  }

  sub_100003B2C();
  swift_beginAccess();
  return j_j__swift_endAccess_1;
}

uint64_t TemperatureKind.urlRepresentationParameter.getter(char a1)
{
  strcpy(v6, "temperature=");
  BYTE5(v6[1]) = 0;
  HIWORD(v6[1]) = -5120;
  v1 = (a1 & 1) == 0;
  if (a1)
  {
    v2 = 0x746E657261707061;
  }

  else
  {
    v2 = 0x6C6175746361;
  }

  if (v1)
  {
    v3 = 0xE600000000000000;
  }

  else
  {
    v3 = 0xE800000000000000;
  }

  v4 = v3;
  String.append(_:)(*&v2);

  return v6[0];
}

uint64_t TemperatureKind.rawValue.getter(char a1)
{
  if (a1)
  {
    return 0x746E657261707061;
  }

  else
  {
    return 0x6C6175746361;
  }
}

Weather::TemperatureKind_optional __swiftcall TemperatureKind.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v3._countAndFlagsBits = rawValue._countAndFlagsBits;
  v3._object = object;
  _findStringSwitchCase(cases:string:)(&off_100C43F30, v3);
  sub_1000379AC();
  if (v1 == 1)
  {
    v4.value = Weather_TemperatureKind_apparent;
  }

  else
  {
    v4.value = Weather_TemperatureKind_unknownDefault;
  }

  if (v1)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

unint64_t sub_100982C78()
{
  result = qword_100CE8B98;
  if (!qword_100CE8B98)
  {
    result = swift_getWitnessTable(byte_100A9D2A8, &unk_100C78240, v0, v1);
    atomic_store(result, &qword_100CE8B98);
  }

  return result;
}

unint64_t sub_100982CD0()
{
  result = qword_100CE8BA0;
  if (!qword_100CE8BA0)
  {
    result = swift_getWitnessTable(byte_100A9D340, &unk_100C78240, v0, v1);
    atomic_store(result, &qword_100CE8BA0);
  }

  return result;
}

unint64_t sub_100982D28()
{
  result = qword_100CE8BA8;
  if (!qword_100CE8BA8)
  {
    result = swift_getWitnessTable(byte_100A9D368, &unk_100C78240, v0, v1);
    atomic_store(result, &qword_100CE8BA8);
  }

  return result;
}

unint64_t sub_100982D9C()
{
  result = qword_100CE8BB0;
  if (!qword_100CE8BB0)
  {
    result = swift_getWitnessTable(aE_22, &unk_100C781C8, v0, v1);
    atomic_store(result, &qword_100CE8BB0);
  }

  return result;
}

unint64_t sub_100982DF4()
{
  result = qword_100CE8BB8;
  if (!qword_100CE8BB8)
  {
    result = swift_getWitnessTable(byte_100A9D4D0, &unk_100C781C8, v0, v1);
    atomic_store(result, &qword_100CE8BB8);
  }

  return result;
}

unint64_t sub_100982E4C()
{
  result = qword_100CE8BC0;
  if (!qword_100CE8BC0)
  {
    result = swift_getWitnessTable(byte_100A9D508, &unk_100C781C8, v0, v1);
    atomic_store(result, &qword_100CE8BC0);
  }

  return result;
}

unint64_t sub_100982EA4()
{
  result = qword_100CE8BC8;
  if (!qword_100CE8BC8)
  {
    result = swift_getWitnessTable(byte_100A9D424, &unk_100C781C8, v0, v1);
    atomic_store(result, &qword_100CE8BC8);
  }

  return result;
}

unint64_t sub_100982EFC()
{
  result = qword_100CE8BD0;
  if (!qword_100CE8BD0)
  {
    result = swift_getWitnessTable(byte_100A9D538, &unk_100C781C8, v0, v1);
    atomic_store(result, &qword_100CE8BD0);
  }

  return result;
}

unint64_t sub_100982F50()
{
  result = qword_100CE8BD8;
  if (!qword_100CE8BD8)
  {
    result = swift_getWitnessTable(byte_100A9D560, &unk_100C781C8, v0, v1);
    atomic_store(result, &qword_100CE8BD8);
  }

  return result;
}

unint64_t sub_100982FA4()
{
  result = qword_100CE8BE0;
  if (!qword_100CE8BE0)
  {
    result = swift_getWitnessTable(aQ_5, &unk_100C781C8, v0, v1);
    atomic_store(result, &qword_100CE8BE0);
  }

  return result;
}

unint64_t sub_100982FFC()
{
  result = qword_100CE8BE8;
  if (!qword_100CE8BE8)
  {
    result = swift_getWitnessTable(aY_26, &unk_100C781C8, v0, v1);
    atomic_store(result, &qword_100CE8BE8);
  }

  return result;
}

unint64_t sub_100983068()
{
  result = qword_100CE8BF0;
  if (!qword_100CE8BF0)
  {
    result = swift_getWitnessTable(byte_100A9D45C, &unk_100C781C8, v0, v1);
    atomic_store(result, &qword_100CE8BF0);
  }

  return result;
}

unint64_t sub_1009830C0()
{
  result = qword_100CE8BF8;
  if (!qword_100CE8BF8)
  {
    result = swift_getWitnessTable(aA_3, &unk_100C781C8, v0, v1);
    atomic_store(result, &qword_100CE8BF8);
  }

  return result;
}

unint64_t sub_100983118()
{
  result = qword_100CE8C00;
  if (!qword_100CE8C00)
  {
    result = swift_getWitnessTable(byte_100A9D650, &unk_100C781C8, v0, v1);
    atomic_store(result, &qword_100CE8C00);
  }

  return result;
}

unint64_t sub_100983170()
{
  result = qword_100CE8C08;
  if (!qword_100CE8C08)
  {
    result = swift_getWitnessTable(byte_100A9D3E4, &unk_100C781C8, v0, v1);
    atomic_store(result, &qword_100CE8C08);
  }

  return result;
}

unint64_t sub_100983218()
{
  result = qword_100CE8C20;
  if (!qword_100CE8C20)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for TemperatureKind, &type metadata for TemperatureKind, v0, v1);
    atomic_store(result, &qword_100CE8C20);
  }

  return result;
}

Weather::TemperatureKind_optional sub_100983284@<W0>(Swift::String *a1@<X0>, Weather::TemperatureKind_optional *a2@<X8>)
{
  result.value = TemperatureKind.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

uint64_t sub_1009832B4@<X0>(uint64_t *a1@<X8>)
{
  result = TemperatureKind.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_1009832E4()
{
  result = qword_100CE8C28;
  if (!qword_100CE8C28)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for TemperatureKind, &type metadata for TemperatureKind, v0, v1);
    atomic_store(result, &qword_100CE8C28);
  }

  return result;
}

unint64_t sub_10098333C()
{
  result = qword_100CE8C30;
  if (!qword_100CE8C30)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for TemperatureKind, &type metadata for TemperatureKind, v0, v1);
    atomic_store(result, &qword_100CE8C30);
  }

  return result;
}

unint64_t sub_100983394()
{
  result = qword_100CE8C38;
  if (!qword_100CE8C38)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for TemperatureKind, &type metadata for TemperatureKind, v0, v1);
    atomic_store(result, &qword_100CE8C38);
  }

  return result;
}

uint64_t sub_1009833E8()
{
  v2 = TemperatureKind.urlRepresentationParameter.getter(*v0);
  v3 = *(v1 + 8);

  return v3(v2);
}

unint64_t sub_10098344C()
{
  result = qword_100CE8C40;
  if (!qword_100CE8C40)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for TemperatureKind, &type metadata for TemperatureKind, v0, v1);
    atomic_store(result, &qword_100CE8C40);
  }

  return result;
}

unint64_t sub_1009834A0()
{
  result = qword_100CE8C48;
  if (!qword_100CE8C48)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for TemperatureKind, &type metadata for TemperatureKind, v0, v1);
    atomic_store(result, &qword_100CE8C48);
  }

  return result;
}

unint64_t sub_1009834F4()
{
  result = qword_100CE8C50;
  if (!qword_100CE8C50)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for TemperatureKind, &type metadata for TemperatureKind, v0, v1);
    atomic_store(result, &qword_100CE8C50);
  }

  return result;
}

unint64_t sub_10098354C()
{
  result = qword_100CE8C58;
  if (!qword_100CE8C58)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for TemperatureKind, &type metadata for TemperatureKind, v0, v1);
    atomic_store(result, &qword_100CE8C58);
  }

  return result;
}

uint64_t sub_1009835A0@<X0>(uint64_t a1@<X8>, double a2@<D0>)
{
  v3 = TemperatureKind.typeDisplayRepresentation.unsafeMutableAddressor(a2);
  swift_beginAccess();
  v4 = type metadata accessor for TypeDisplayRepresentation();
  return (*(*(v4 - 8) + 16))(a1, v3, v4);
}

unint64_t sub_100983688()
{
  result = qword_100CE8C60;
  if (!qword_100CE8C60)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for TemperatureKind, &type metadata for TemperatureKind, v0, v1);
    atomic_store(result, &qword_100CE8C60);
  }

  return result;
}

uint64_t sub_1009836DC(uint64_t a1)
{
  v2 = sub_100983688();

  return static AppEnum.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_10098372C()
{
  result = qword_100CE8C68;
  if (!qword_100CE8C68)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for TemperatureKind, &type metadata for TemperatureKind, v0, v1);
    atomic_store(result, &qword_100CE8C68);
  }

  return result;
}

unint64_t sub_100983784()
{
  result = qword_100CE8C70;
  if (!qword_100CE8C70)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for TemperatureKind, &type metadata for TemperatureKind, v0, v1);
    atomic_store(result, &qword_100CE8C70);
  }

  return result;
}

unint64_t sub_1009837DC()
{
  result = qword_100CE8C78;
  if (!qword_100CE8C78)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for TemperatureKind, &type metadata for TemperatureKind, v0, v1);
    atomic_store(result, &qword_100CE8C78);
  }

  return result;
}

double sub_100983830()
{
  TemperatureKind.caseDisplayRepresentations.unsafeMutableAddressor();
  swift_beginAccess();

  return result;
}

uint64_t sub_10098387C(uint64_t a1)
{
  v2 = sub_10098354C();

  return CaseDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

_BYTE *storeEnumTagSinglePayload for TemperatureKind(_BYTE *result, unsigned int a2, unsigned int a3)
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
        break;
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

_BYTE *sub_100983A00(_BYTE *result, unsigned int a2, unsigned int a3)
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
        break;
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

uint64_t sub_100983AE4(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    v7 = sub_10022E824(a2, a3);
    v8 = a4();
    result = swift_getWitnessTable(&protocol conformance descriptor for <A> A?, v7, &v8);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100983B60()
{
  v0 = sub_10022C350(&qword_100CBCC30, &unk_100A53C40);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v6 - v2;
  v4 = sub_1004839E0();
  static ResolverSpecificationBuilder.buildExpression<A>(_:)();
  sub_100483A34();
  static ResolverSpecificationBuilder.buildExpression<A>(_:)();
  sub_10015E1DC();
  static ResolverSpecificationBuilder.buildPartialBlock<A>(first:)();
  v6[0] = v4;
  v6[1] = &type metadata for LocationSearchEntityFromStringResolver;
  static ResolverSpecificationBuilder.buildPartialBlock<A, each B>(accumulated:next:)();
  return (*(v1 + 8))(v3, v0);
}

unint64_t sub_100983CD8()
{
  result = qword_100CE8CE8;
  if (!qword_100CE8CE8)
  {
    result = swift_getWitnessTable(byte_100A9D270, &unk_100C78240, v0, v1);
    atomic_store(result, &qword_100CE8CE8);
  }

  return result;
}

uint64_t sub_100983D4C(uint64_t a1, __int128 *a2, __int128 *a3, __int128 *a4)
{
  *(v4 + 16) = a1;
  sub_100013188(a2, v4 + 24);
  sub_100013188(a3, v4 + 64);
  sub_100013188(a4, v4 + 104);
  return v4;
}

void *sub_100983DA8()
{

  sub_100006F14(v0 + 3);
  sub_100006F14(v0 + 8);
  sub_100006F14(v0 + 13);
  return v0;
}

uint64_t sub_100983DE0()
{
  sub_100983DA8();

  return swift_deallocClassInstance();
}

uint64_t sub_100983E38(uint64_t a1, uint64_t a2)
{
  type metadata accessor for LocationInfoResult();
  firstly<A>(closure:)();
  v2 = zalgo.getter();
  type metadata accessor for LocationInfo();
  v3 = Promise.then<A>(on:closure:)();

  return v3;
}

uint64_t sub_100983EE0(uint64_t a1, uint64_t a2)
{
  v67 = a2;
  type metadata accessor for AppConfiguration();
  sub_1000037C4();
  v69 = v4;
  v70 = v3;
  __chkstk_darwin(v3);
  sub_1000037D8();
  v68 = v6 - v5;
  v66 = type metadata accessor for WeatherServiceCaching.Options();
  sub_1000037E8();
  __chkstk_darwin(v7);
  sub_1000037D8();
  v65 = v9 - v8;
  v10 = sub_10022C350(&qword_100CAD030, &unk_100A3C400);
  sub_100003810(v10);
  sub_100003828();
  __chkstk_darwin(v11);
  v61 = &v54 - v12;
  v13 = sub_10022C350(&qword_100CAD038, &unk_100A95810);
  sub_100003810(v13);
  sub_100003828();
  __chkstk_darwin(v14);
  v58 = &v54 - v15;
  v16 = sub_10022C350(&qword_100CE8E50, &qword_100A9DC98);
  sub_100003810(v16);
  sub_100003828();
  __chkstk_darwin(v17);
  v19 = &v54 - v18;
  v63 = type metadata accessor for WeatherServiceLocationOptions();
  sub_1000037C4();
  v57 = v20;
  __chkstk_darwin(v21);
  sub_1000037D8();
  v24 = v23 - v22;
  v64 = type metadata accessor for ProductRequirementsFactory.AppGeoRequiredProducts();
  sub_1000037C4();
  v62 = v25;
  __chkstk_darwin(v26);
  sub_1000037D8();
  v29 = v28 - v27;
  v30 = sub_10022C350(&qword_100CACE08, &unk_100A3C1B0);
  v31 = sub_100003810(v30);
  __chkstk_darwin(v31);
  __chkstk_darwin(v32);
  v34 = &v54 - v33;
  WeatherDataRequestOptions.timeZone.getter();
  sub_1000161C0(v2 + 3, v2[6]);
  v59 = v34;
  v60 = v29;
  dispatch thunk of ProductRequirementsFactoryType.appGeoRequiredProducts(for:)();
  WeatherDataRequestOptions.locationOptions.getter();
  v35 = type metadata accessor for WeatherRequestLocationOptions();
  if (sub_100024D10(v19, 1, v35) == 1)
  {
    sub_1000180EC(v19, &qword_100CE8E50, &qword_100A9DC98);
  }

  else
  {
    WeatherRequestLocationOptions.decimalPrecision.getter();
    (*(*(v35 - 8) + 8))(v19, v35);
  }

  sub_1000161C0(v2 + 8, v2[11]);
  dispatch thunk of LocationManagerType.limitsPrecision.getter();
  v36 = v24;
  v56 = v24;
  WeatherServiceLocationOptions.init(decimalPrecision:limitsPrecision:)();
  type metadata accessor for WeatherServiceFetchOptions();
  v37 = swift_allocBox();
  v54 = v38;
  v55 = v37;
  WeatherDataRequestOptions.timeZone.getter();
  v39 = v57;
  v40 = v58;
  v41 = v63;
  (*(v57 + 16))(v58, v36, v63);
  sub_10001B350(v40, 0, 1, v41);
  WeatherDataRequestOptions.treatmentIdentifiers.getter();
  type metadata accessor for WeatherNetworkActivity();
  sub_100003934();
  sub_10001B350(v42, v43, v44, v45);
  v71 = _swiftEmptyArrayStorage;
  sub_100986284();
  sub_10022C350(&qword_100CE2970, &qword_100A95820);
  sub_1009862DC();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  LOBYTE(v53) = 0;
  WeatherServiceFetchOptions.init(countryCode:timeZone:locationOptions:cachingOptions:treatmentIdentifiers:networkActivity:needsMarineData:needsTwilightData:)();
  sub_1000161C0(v2 + 13, v2[16]);
  v46 = v68;
  v47 = dispatch thunk of AppConfigurationManagerType.appConfiguration.getter();
  __chkstk_darwin(v47);
  v48 = v67;
  *(&v54 - 6) = v2;
  *(&v54 - 5) = v48;
  v49 = v60;
  v50 = v55;
  *(&v54 - 4) = v60;
  *(&v54 - 3) = v50;
  v53 = v46;
  sub_10022C350(&qword_100CE8E58, &qword_100A9DCA0);
  swift_allocObject();
  v51 = Promise.init(resolver:)();
  (*(v39 + 8))(v56, v41);
  sub_1000180EC(v59, &qword_100CACE08, &unk_100A3C1B0);
  (*(v69 + 8))(v46, v70);

  (*(v62 + 8))(v49, v64);
  return v51;
}