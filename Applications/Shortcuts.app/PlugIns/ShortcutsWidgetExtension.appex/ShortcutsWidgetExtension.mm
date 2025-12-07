uint64_t sub_100001F68@<X0>(uint64_t a1@<X8>)
{
  v37 = a1;
  v36 = sub_1000026A4(&qword_10003C960, &qword_10002D3E8);
  __chkstk_darwin(v36);
  v2 = &v28 - v1;
  v35 = sub_1000026A4(&qword_10003C968, &qword_10002D3F0);
  sub_1000028EC();
  v4 = v3;
  v30 = v3;
  v6 = __chkstk_darwin(v5);
  v34 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v9 = &v28 - v8;
  v10 = sub_1000026A4(&qword_10003C970, &qword_10002D3F8);
  sub_1000028EC();
  v12 = v11;
  v33 = v11;
  v14 = __chkstk_darwin(v13);
  v16 = &v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v18 = &v28 - v17;
  KeyPath = swift_getKeyPath();
  v39 = 0;
  sub_100002794();
  v32 = v18;
  sub_100029B8C();
  sub_1000027E8();
  v29 = v9;
  sub_100029B8C();
  v28 = *(v12 + 16);
  v31 = v16;
  v19 = v10;
  v28(v16, v18, v10);
  v20 = *(v4 + 16);
  v21 = v34;
  v22 = v9;
  v23 = v35;
  v20(v34, v22, v35);
  *v2 = 0xD000000000000011;
  *(v2 + 1) = 0x800000010002AC70;
  v24 = v36;
  v28(&v2[*(v36 + 48)], v16, v19);
  v20(&v2[*(v24 + 64)], v21, v23);

  sub_10002999C();
  v25 = *(v30 + 8);
  v25(v29, v23);
  v26 = *(v33 + 8);
  v26(v32, v19);
  v25(v21, v23);
  v26(v31, v19);
}

int main(int argc, const char **argv, const char **envp)
{
  sub_100002300();
  sub_1000299DC();
  return 0;
}

unint64_t sub_100002300()
{
  result = qword_10003C948;
  if (!qword_10003C948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003C948);
  }

  return result;
}

uint64_t variable initialization expression of OpenAppIntent._app()
{
  sub_1000295AC();
  sub_1000028EC();
  v27 = v1;
  v28 = v0;
  __chkstk_darwin(v0);
  sub_100002900();
  v26 = v3 - v2;
  v4 = sub_1000026A4(&unk_10003DBA0, &unk_10002D350);
  v5 = sub_100002910(v4);
  __chkstk_darwin(v5);
  v7 = &v26 - v6;
  v8 = sub_1000026A4(&qword_10003C950, &unk_10002E680);
  v9 = sub_100002910(v8);
  __chkstk_darwin(v9);
  v11 = &v26 - v10;
  v12 = sub_10002978C();
  sub_1000028EC();
  v14 = v13;
  __chkstk_darwin(v15);
  sub_100002900();
  v18 = v17 - v16;
  v19 = sub_10002988C();
  v20 = sub_100002910(v19);
  __chkstk_darwin(v20);
  sub_100002900();
  v21 = sub_10002A0CC();
  v22 = sub_100002910(v21);
  __chkstk_darwin(v22);
  sub_100002900();
  v23 = sub_1000297AC();
  __chkstk_darwin(v23);
  sub_100002900();
  sub_1000026A4(&qword_10003C958, &unk_10002D360);
  sub_10002A05C();
  sub_10002987C();
  (*(v14 + 104))(v18, enum case for LocalizedStringResource.BundleDescription.main(_:), v12);
  sub_1000297BC();
  sub_1000026EC(v11, 1, 1, v23);
  v24 = sub_10002931C();
  sub_1000026EC(v7, 1, 1, v24);
  (*(v27 + 104))(v26, enum case for InputConnectionBehavior.default(_:), v28);
  return sub_1000293FC();
}

uint64_t sub_1000026A4(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_100002794()
{
  result = qword_10003C978;
  if (!qword_10003C978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003C978);
  }

  return result;
}

unint64_t sub_1000027E8()
{
  result = qword_10003C980;
  if (!qword_10003C980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003C980);
  }

  return result;
}

unint64_t sub_100002840()
{
  result = qword_10003C988;
  if (!qword_10003C988)
  {
    sub_1000028A4(&qword_10003C990, &unk_10002D430);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003C988);
  }

  return result;
}

uint64_t sub_1000028A4(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_100002930(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000026A4(&qword_10003C998, &unk_10002D440);

  return sub_100002984(a1, a2, v4);
}

uint64_t sub_1000029C0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000026A4(&qword_10003C998, &unk_10002D440);

  return sub_1000026EC(a1, a2, a2, v4);
}

uint64_t type metadata accessor for ComplicationPaddingModifier(uint64_t a1)
{
  result = qword_10003C9F8;
  if (!qword_10003C9F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100002A64(uint64_t a1)
{
  sub_100002AD0(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_100002AD0(uint64_t a1)
{
  if (!qword_10003CA08)
  {
    sub_100029F4C();
    v1 = sub_10002998C();
    if (!v2)
    {
      atomic_store(v1, &qword_10003CA08);
    }
  }
}

uint64_t sub_100002B44@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_100029AFC();
  sub_1000028EC();
  v6 = v5;
  __chkstk_darwin(v7);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000026A4(&qword_10003CA78, &qword_10002DF40);
  sub_10000350C();
  sub_100003534();
  __chkstk_darwin(v10);
  v12 = &v16 - v11;
  sub_1000033E4(v2, &v16 - v11, &qword_10003CA78, &qword_10002DF40);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_100029F4C();
    sub_10000350C();
    return (*(v13 + 32))(a1, v12);
  }

  else
  {
    sub_10002A1FC();
    v15 = sub_100029C3C();
    sub_10002993C();

    sub_100029AEC();
    swift_getAtKeyPath();

    return (*(v6 + 8))(v9, v4);
  }
}

uint64_t sub_100002D24@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v34 = a1;
  v37 = a2;
  v35 = sub_1000026A4(&qword_10003CA38, &qword_10002D4C0);
  sub_10000350C();
  sub_100003534();
  __chkstk_darwin(v2);
  v4 = v33 - v3;
  v36 = sub_1000026A4(&qword_10003CA40, &qword_10002D4C8);
  sub_10000350C();
  sub_100003534();
  __chkstk_darwin(v5);
  v7 = v33 - v6;
  sub_1000026A4(&qword_10003CA48, &qword_10002D4D0);
  sub_10000350C();
  sub_100003534();
  __chkstk_darwin(v8);
  v10 = v33 - v9;
  v11 = sub_1000026A4(&qword_10003CA50, &qword_10002D4D8);
  sub_10000350C();
  sub_100003534();
  __chkstk_darwin(v12);
  v14 = v33 - v13;
  v15 = sub_100029F4C();
  sub_1000028EC();
  v17 = v16;
  __chkstk_darwin(v18);
  v20 = v33 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100002B44(v20);
  v21 = (*(v17 + 88))(v20, v15);
  if (v21 == enum case for WidgetFamily.accessoryCorner(_:))
  {
    sub_100029C4C();
    sub_10002996C();
    sub_100003540();
    v22 = sub_1000026A4(&qword_10003CA58, &unk_10002D4E0);
    sub_10000350C();
    (*(v23 + 16))(v4, v34, v22);
    sub_10000351C(*(v35 + 36));
    sub_1000033E4(v4, v10, &qword_10003CA38, &qword_10002D4C0);
    swift_storeEnumTagMultiPayload();
    sub_10000329C();
    sub_100003300();
    sub_100029B6C();
    sub_1000033E4(v14, v7, &qword_10003CA50, &qword_10002D4D8);
    swift_storeEnumTagMultiPayload();
    sub_10000326C();
    sub_100029B6C();
    sub_10000338C(v14, &qword_10003CA50, &qword_10002D4D8);
    v24 = v4;
    v25 = &qword_10003CA38;
    v26 = &qword_10002D4C0;
  }

  else
  {
    v33[0] = v11;
    v33[1] = v7;
    v27 = v35;
    if (v21 != enum case for WidgetFamily.accessoryRectangular(_:) && v21 != enum case for WidgetFamily.accessoryInline(_:))
    {
      sub_100029C4C();
      sub_10002996C();
      sub_100003540();
      sub_1000026A4(&qword_10003CA58, &unk_10002D4E0);
      sub_10000350C();
      (*(v31 + 16))(v4, v34);
      sub_10000351C(*(v27 + 36));
      sub_100003568(v4);
      swift_storeEnumTagMultiPayload();
      sub_10000326C();
      sub_100003300();
      sub_100003554();
      sub_100029B6C();
      sub_10000338C(v4, &qword_10003CA38, &qword_10002D4C0);
      return (*(v17 + 8))(v20, v15);
    }

    v29 = sub_1000026A4(&qword_10003CA58, &unk_10002D4E0);
    sub_10000350C();
    (*(v30 + 16))(v10, v34, v29);
    swift_storeEnumTagMultiPayload();
    sub_10000329C();
    sub_100003300();
    sub_100029B6C();
    sub_100003568(v14);
    swift_storeEnumTagMultiPayload();
    sub_10000326C();
    sub_100003554();
    sub_100029B6C();
    v24 = v14;
    v25 = &qword_10003CA50;
    v26 = &qword_10002D4D8;
  }

  return sub_10000338C(v24, v25, v26);
}

unint64_t sub_10000329C()
{
  result = qword_10003CA68;
  if (!qword_10003CA68)
  {
    sub_1000028A4(&qword_10003CA58, &unk_10002D4E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003CA68);
  }

  return result;
}

unint64_t sub_100003300()
{
  result = qword_10003CA70;
  if (!qword_10003CA70)
  {
    sub_1000028A4(&qword_10003CA38, &qword_10002D4C0);
    sub_10000329C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003CA70);
  }

  return result;
}

uint64_t sub_10000338C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  sub_1000026A4(a2, a3);
  sub_10000350C();
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_1000033E4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  sub_1000026A4(a3, a4);
  sub_10000350C();
  (*(v6 + 16))(a2, a1);
  return a2;
}

uint64_t sub_100003488(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_1000028A4(a2, a3);
    a4();
    sub_100003300();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_10000351C(uint64_t a1@<X8>)
{
  v7 = v1 + a1;
  *v7 = v2;
  *(v7 + 8) = v3;
  *(v7 + 16) = v4;
  *(v7 + 24) = v5;
  *(v7 + 32) = v6;
  *(v7 + 40) = 0;
}

uint64_t sub_100003568(uint64_t a1)
{
  v5 = *(v3 - 152);

  return sub_1000033E4(a1, v5, v1, v2);
}

uint64_t sub_100003588@<X0>(uint64_t a1@<X8>)
{
  v71 = a1;
  v70 = sub_10002978C();
  sub_1000028EC();
  v73 = v1;
  __chkstk_darwin(v2);
  sub_100002900();
  v63 = v4 - v3;
  v5 = sub_10002988C();
  v6 = sub_100002910(v5);
  __chkstk_darwin(v6);
  sub_100002900();
  v7 = sub_10002A0CC();
  v8 = sub_100002910(v7);
  __chkstk_darwin(v8);
  sub_100002900();
  v72 = sub_1000297AC();
  sub_1000028EC();
  v62 = v9;
  __chkstk_darwin(v10);
  sub_100002900();
  v57 = v12 - v11;
  v59 = sub_1000026A4(&qword_10003CAE8, &qword_10002D7F0);
  sub_1000028EC();
  v61 = v13;
  sub_100003534();
  __chkstk_darwin(v14);
  v16 = &v54 - v15;
  sub_1000026A4(&qword_10003CAF0, &qword_10002D7F8);
  sub_1000028EC();
  v64 = v17;
  v65 = v18;
  sub_100003534();
  __chkstk_darwin(v19);
  v56 = &v54 - v20;
  sub_1000026A4(&qword_10003CAF8, &qword_10002D800);
  sub_1000028EC();
  v66 = v21;
  v67 = v22;
  sub_100003534();
  __chkstk_darwin(v23);
  v58 = &v54 - v24;
  sub_1000026A4(&qword_10003CB00, &qword_10002D808);
  sub_1000028EC();
  v68 = v25;
  v69 = v26;
  sub_100003534();
  __chkstk_darwin(v27);
  v60 = &v54 - v28;

  sub_1000026A4(&qword_10003CB08, &qword_10002D810);
  sub_100005DE0();
  sub_100005EEC(&qword_10003CB18, &qword_10003CB08, &qword_10002D810, &protocol conformance descriptor for ControlWidgetButton<A, B, C>);
  sub_100029FFC();
  sub_100006184();
  sub_10002A05C();
  sub_10002987C();
  v55 = enum case for LocalizedStringResource.BundleDescription.main(_:);
  v29 = *(v73 + 104);
  v73 += 104;
  v54 = v29;
  v30 = v63;
  v31 = v70;
  v29(v63);
  sub_10000608C();
  v32 = v57;
  sub_100006148();
  sub_10000612C(v33, v34, v35, v36, v30);
  sub_1000060E8();
  v39 = sub_100005EEC(v37, &qword_10003CAE8, &qword_10002D7F0, v38);
  v40 = v59;
  sub_100029BFC();
  v62 = *(v62 + 8);
  (v62)(v32, v72);
  (*(v61 + 8))(v16, v40);
  sub_10002A05C();
  sub_10002987C();
  v54(v30, v55, v31);
  sub_10000608C();
  sub_100006148();
  sub_10000612C(v41, v42, v43, v44, v30);
  v74 = v40;
  v75 = v39;
  sub_1000060D0();
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v46 = v58;
  v47 = v64;
  v48 = v56;
  sub_100029BEC();
  (v62)(v32, v72);
  (*(v65 + 8))(v48, v47);
  v74 = v47;
  v75 = OpaqueTypeConformance2;
  sub_1000060B8();
  v49 = swift_getOpaqueTypeConformance2();
  v50 = v60;
  v51 = v66;
  sub_100029BCC();
  (*(v67 + 8))(v46, v51);
  v74 = v51;
  v75 = v49;
  sub_1000060A0();
  swift_getOpaqueTypeConformance2();
  v52 = v68;
  sub_100029C0C();
  return (*(v69 + 8))(v50, v52);
}

uint64_t sub_100003BE4(uint64_t *a1)
{
  swift_retain_n();
  sub_1000026A4(&qword_10003CB28, &qword_10002D818);
  sub_100005E3C();
  sub_100005A28();
  return sub_100029EAC();
}

uint64_t sub_100003C84@<X0>(uint64_t a1@<X8>)
{
  v31[0] = a1;
  v1 = sub_1000026A4(&qword_10003CB48, qword_10002D828);
  __chkstk_darwin(v1);
  v3 = v31 - v2;
  v4 = sub_1000026A4(&qword_10003CB40, &qword_10002D820);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v31 - v6;
  v8 = sub_10002942C();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1000026A4(&qword_10003CAA0, &qword_10002D518);
  __chkstk_darwin(v12 - 8);
  v14 = v31 - v13;
  sub_10002939C();
  if (sub_100002984(v14, 1, v8))
  {
    sub_10000532C(v14);
    v19 = sub_10002A0DC();
    v20 = sub_10002A0DC();
    v21 = sub_100028FF4(v19);

    v22 = sub_10002A0EC();
    v24 = v23;

    v32 = v22;
    v33 = v24;
  }

  else
  {
    (*(v9 + 16))(v11, v14, v8);
    sub_10000532C(v14);
    v15 = sub_10002941C();
    v17 = v16;
    (*(v9 + 8))(v11, v8);
    v18 = objc_allocWithZone(LSApplicationRecord);
    v26 = sub_100005754(v15, v17, 1);
    v27 = [v26 localizedName];

    v28 = sub_10002A0EC();
    v30 = v29;

    v32 = v28;
    v33 = v30;
  }

  sub_100005F34();
  sub_100029E1C();
  (*(v5 + 16))(v3, v7, v4);
  swift_storeEnumTagMultiPayload();
  sub_100005EEC(&qword_10003CB38, &qword_10003CB40, &qword_10002D820, &protocol conformance descriptor for Label<A, B>);
  sub_100029B6C();
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_1000040D0()
{
  v0 = sub_10002A0DC();
  v1 = sub_10002A0DC();
  v2 = sub_100028FF4(v0);

  v3 = sub_10002A0EC();
  return v3;
}

Swift::Int sub_10000419C()
{
  sub_10002A38C();
  sub_10002A39C(0);
  return sub_10002A3BC();
}

Swift::Int sub_1000041F0(uint64_t a1)
{
  sub_10002A38C();
  sub_10002A39C(0);
  return sub_10002A3BC();
}

uint64_t static OpenAppIntent.isDiscoverable.setter(char a1)
{
  result = swift_beginAccess();
  static OpenAppIntent.isDiscoverable = a1;
  return result;
}

uint64_t static OpenAppIntent.title.getter()
{
  v0 = sub_10002978C();
  sub_1000028EC();
  v2 = v1;
  __chkstk_darwin(v3);
  sub_100002900();
  v6 = v5 - v4;
  v7 = sub_10002988C();
  v8 = sub_100002910(v7);
  __chkstk_darwin(v8);
  sub_100002900();
  v11 = v10 - v9;
  v12 = sub_10002A0CC();
  v13 = sub_100002910(v12);
  __chkstk_darwin(v13);
  sub_100002900();
  v16 = v15 - v14;
  sub_100006184();
  sub_10002A05C();
  sub_10002987C();
  (*(v2 + 104))(v6, enum case for LocalizedStringResource.BundleDescription.main(_:), v0);
  sub_10000608C();
  return sub_10000612C(v16, v17, 0xEA00000000007374, v11, v6);
}

uint64_t OpenAppIntent.init()()
{
  sub_1000295AC();
  sub_1000028EC();
  v31 = v1;
  v32 = v0;
  __chkstk_darwin(v0);
  sub_100002900();
  v30 = v3 - v2;
  v4 = sub_1000026A4(&unk_10003DBA0, &unk_10002D350);
  sub_100002910(v4);
  sub_100003534();
  __chkstk_darwin(v5);
  v7 = &v30 - v6;
  v8 = sub_1000026A4(&qword_10003C950, &unk_10002E680);
  sub_100002910(v8);
  sub_100003534();
  __chkstk_darwin(v9);
  v11 = &v30 - v10;
  v12 = sub_10002978C();
  sub_1000028EC();
  v14 = v13;
  __chkstk_darwin(v15);
  sub_100002900();
  v18 = v17 - v16;
  v19 = sub_10002988C();
  v20 = sub_100002910(v19);
  __chkstk_darwin(v20);
  sub_100002900();
  v21 = sub_10002A0CC();
  v22 = sub_100002910(v21);
  __chkstk_darwin(v22);
  sub_100002900();
  v23 = sub_1000297AC();
  __chkstk_darwin(v23);
  sub_100002900();
  sub_1000026A4(&qword_10003C958, &unk_10002D360);
  sub_10002A05C();
  sub_10002987C();
  (*(v14 + 104))(v18, enum case for LocalizedStringResource.BundleDescription.main(_:), v12);
  sub_10000608C();
  sub_100006148();
  sub_10000612C(v24, v25, v26, v27, v18);
  sub_1000026EC(v11, 1, 1, v23);
  v28 = sub_10002931C();
  sub_1000026EC(v7, 1, 1, v28);
  (*(v31 + 104))(v30, enum case for InputConnectionBehavior.default(_:), v32);
  return sub_1000293FC();
}

uint64_t OpenAppIntent.perform()()
{
  sub_100006164();
  v0[50] = v1;
  v0[51] = v2;
  v3 = sub_1000026A4(&unk_10003DBC0, &qword_10002D510);
  sub_100002910(v3);
  v0[52] = swift_task_alloc();
  v4 = sub_10002942C();
  v0[53] = v4;
  v0[54] = *(v4 - 8);
  v0[55] = swift_task_alloc();
  v5 = sub_1000026A4(&qword_10003CAA0, &qword_10002D518);
  sub_100002910(v5);
  v0[56] = swift_task_alloc();
  sub_100006198();

  return _swift_task_switch(v6);
}

uint64_t sub_1000048F4(uint64_t a1)
{
  v2 = v1[56];
  v3 = v1[53];
  sub_10002939C();
  if (sub_100002984(v2, 1, v3))
  {
    sub_10000532C(v1[56]);
    sub_100005394();
    swift_allocError();
    swift_willThrow();

    sub_100006100();

    return v4();
  }

  else
  {
    v7 = v1[55];
    v6 = v1[56];
    v8 = v1[53];
    v9 = v1[54];
    v10 = v1[52];
    (*(v9 + 16))(v7, v6, v8);
    sub_10000532C(v6);
    v11 = sub_10002941C();
    v13 = v12;
    (*(v9 + 8))(v7, v8);
    v14 = sub_10002A02C();
    v15 = sub_10002980C();
    sub_1000026EC(v10, 1, 1, v15);
    v16 = objc_allocWithZone(WFAppLaunchRequest);
    v17 = sub_100005830(v11, v13, v14, v10, 0, 0);
    v1[57] = v17;
    [v17 setRequiresUserFacingApp:1];
    v1[2] = v1;
    v1[7] = v1 + 62;
    v1[3] = sub_100004BC0;
    v18 = swift_continuation_init();
    v19 = sub_1000026A4(&qword_10003CAB0, &unk_10002D520);
    v1[58] = v19;
    v1[33] = v19;
    v1[26] = _NSConcreteStackBlock;
    v1[27] = 1107296256;
    v1[28] = sub_1000053E8;
    v1[29] = &unk_100039E28;
    v1[30] = v18;
    [v17 performWithCompletionHandler:v1 + 26];

    return _swift_continuation_await(v1 + 2);
  }
}

uint64_t sub_100004BC0()
{
  sub_100006164();
  sub_100006178();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 472) = *(v3 + 48);
  sub_100006198();

  return _swift_task_switch(v4);
}

uint64_t sub_100004CC4()
{
  sub_100006158();
  if ((*(v0 + 496) & 1) != 0 || !VCIsDeviceLocked())
  {
    sub_10000610C();

    sub_100006100();

    return v4();
  }

  else
  {
    v2 = [objc_allocWithZone(WFCompactUnlockService) init];
    *(v0 + 480) = v2;
    *(v0 + 80) = v0;
    *(v0 + 120) = v0 + 497;
    *(v0 + 88) = sub_100004E58;
    v3 = swift_continuation_init();
    *(v0 + 328) = sub_1000026A4(&qword_10003DBD0, &qword_100030090);
    *(v0 + 272) = _NSConcreteStackBlock;
    *(v0 + 280) = 1107296256;
    *(v0 + 288) = sub_1000054E0;
    *(v0 + 296) = &unk_100039E50;
    *(v0 + 304) = v3;
    [v2 requestUnlockIfNeeded:v0 + 272];

    return _swift_continuation_await(v0 + 80);
  }
}

uint64_t sub_100004E58()
{
  sub_100006164();
  v1 = *v0;
  sub_100006178();
  *v2 = v1;
  sub_100006198();

  return _swift_task_switch(v3);
}

uint64_t sub_100004F2C()
{
  sub_100006158();
  if (*(v0 + 497) == 1)
  {
    v2 = *(v0 + 456);
    v3 = *(v0 + 464);
    *(v0 + 144) = v0;
    *(v0 + 184) = v0 + 498;
    *(v0 + 152) = sub_100005090;
    v4 = swift_continuation_init();
    *(v0 + 392) = v3;
    *(v0 + 336) = _NSConcreteStackBlock;
    *(v0 + 344) = 1107296256;
    *(v0 + 352) = sub_1000053E8;
    *(v0 + 360) = &unk_100039E78;
    *(v0 + 368) = v4;
    [v2 performWithCompletionHandler:v0 + 336];

    return _swift_continuation_await(v0 + 144);
  }

  else
  {

    sub_10000610C();

    sub_100006100();

    return v5();
  }
}

uint64_t sub_100005090()
{
  sub_100006164();
  sub_100006178();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 488) = *(v3 + 176);
  sub_100006198();

  return _swift_task_switch(v4);
}

uint64_t sub_100005194()
{
  sub_100006158();

  sub_10000610C();

  sub_100006100();

  return v2();
}

uint64_t sub_100005218()
{
  sub_100006158();
  v1 = *(v0 + 456);
  swift_willThrow();

  sub_100006100();

  return v2();
}

uint64_t sub_1000052A0()
{
  sub_100006158();
  v1 = *(v0 + 480);
  v2 = *(v0 + 456);
  swift_willThrow();

  sub_100006100();

  return v3();
}

uint64_t sub_10000532C(uint64_t a1)
{
  v2 = sub_1000026A4(&qword_10003CAA0, &qword_10002D518);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_100005394()
{
  result = qword_10003CAA8;
  if (!qword_10003CAA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003CAA8);
  }

  return result;
}

uint64_t sub_1000053E8(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a2;
  v5 = sub_100005D74((a1 + 32), *(a1 + 56));
  v6 = *v5;
  if (!a3)
  {
    return sub_10000552C(*v5, v4, &swift_continuation_throwingResume);
  }

  v7 = a3;

  return sub_100005474(v6, v7);
}

uint64_t sub_100005474(uint64_t a1, uint64_t a2)
{
  sub_1000026A4(&qword_10003CAE0, &qword_10002D798);
  v4 = swift_allocError();
  *v5 = a2;

  return _swift_continuation_throwingResumeWithError(a1, v4);
}

uint64_t sub_1000054E0(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v3 = sub_100005D74((a1 + 32), *(a1 + 56));
  return sub_10000552C(*v3, v2, &swift_continuation_resume);
}

uint64_t sub_100005568()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100005608;

  return OpenAppIntent.perform()();
}

uint64_t sub_100005608()
{
  sub_100006164();
  v1 = *v0;
  sub_100006178();
  *v2 = v1;

  sub_100006100();

  return v3();
}

uint64_t sub_1000056F0@<X0>(uint64_t *a1@<X8>)
{
  result = OpenAppIntent.init()();
  *a1 = result;
  return result;
}

uint64_t sub_100005718(uint64_t a1)
{
  v2 = sub_100005A28();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

id sub_100005754(uint64_t a1, uint64_t a2, char a3)
{
  v5 = sub_10002A0DC();

  v10 = 0;
  v6 = [v3 initWithBundleIdentifier:v5 allowPlaceholder:a3 & 1 error:&v10];

  if (v6)
  {
    v7 = v10;
  }

  else
  {
    v8 = v10;
    sub_10002976C();

    swift_willThrow();
  }

  return v6;
}

id sub_100005830(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, char a6)
{
  v7 = v6;
  v12 = sub_10002A0DC();

  if (a3)
  {
    v13.super.isa = sub_10002A01C().super.isa;
  }

  else
  {
    v13.super.isa = 0;
  }

  v14 = sub_10002980C();
  v16 = 0;
  if (sub_100002984(a4, 1, v14) != 1)
  {
    sub_1000297EC(v15);
    v16 = v17;
    (*(*(v14 - 8) + 8))(a4, v14);
  }

  v18 = [v7 initWithBundleIdentifier:v12 options:v13.super.isa URL:v16 userActivity:a5 retainsSiri:a6 & 1];

  return v18;
}

uint64_t sub_100005974(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_1000059D8(void *a1)
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

unint64_t sub_100005A28()
{
  result = qword_10003CAB8;
  if (!qword_10003CAB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003CAB8);
  }

  return result;
}

unint64_t sub_100005A80()
{
  result = qword_10003CAC0;
  if (!qword_10003CAC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003CAC0);
  }

  return result;
}

unint64_t sub_100005AD8()
{
  result = qword_10003CAC8;
  if (!qword_10003CAC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003CAC8);
  }

  return result;
}

uint64_t sub_100005BF0(unsigned int *a1, int a2)
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

_BYTE *sub_100005C40(_BYTE *result, int a2, int a3)
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
      JUMPOUT(0x100005CDCLL);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_100005D20()
{
  result = qword_10003CAD8;
  if (!qword_10003CAD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003CAD8);
  }

  return result;
}

void *sub_100005D74(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_100005DE0()
{
  result = qword_10003CB10;
  if (!qword_10003CB10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003CB10);
  }

  return result;
}

unint64_t sub_100005E3C()
{
  result = qword_10003CB30;
  if (!qword_10003CB30)
  {
    sub_1000028A4(&qword_10003CB28, &qword_10002D818);
    sub_100005EEC(&qword_10003CB38, &qword_10003CB40, &qword_10002D820, &protocol conformance descriptor for Label<A, B>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003CB30);
  }

  return result;
}

uint64_t sub_100005EEC(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_1000028A4(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100005F34()
{
  result = qword_10003CB50;
  if (!qword_10003CB50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003CB50);
  }

  return result;
}

uint64_t sub_100005F88()
{
  v0 = sub_1000028A4(&qword_10003CB00, &qword_10002D808);
  v1 = sub_1000028A4(&qword_10003CAF8, &qword_10002D800);
  v2 = sub_1000028A4(&qword_10003CAF0, &qword_10002D7F8);
  v3 = sub_1000028A4(&qword_10003CAE8, &qword_10002D7F0);
  sub_1000060E8();
  sub_100005EEC(v4, &qword_10003CAE8, &qword_10002D7F0, v5);
  sub_1000060D0();
  sub_1000061A4(v6, v7, v8, v9, v10, v11, v12, v13, v3);
  sub_1000060B8();
  sub_1000061A4(v14, v15, v16, v17, v18, v19, v20, v21, v2);
  sub_1000060A0();
  v37 = sub_1000061A4(v22, v23, v24, v25, v26, v27, v28, v29, v1);
  return sub_1000061A4(v37, &opaque type descriptor for <<opaque return type of ControlWidgetConfiguration.showsInSystemSpaces()>>, v30, v31, v32, v33, v34, v35, v0);
}

uint64_t sub_10000610C()
{

  return sub_10002932C();
}

uint64_t sub_10000612C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return sub_1000297BC();
}

uint64_t sub_1000061A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1000061BC()
{
  type metadata accessor for RunningShortcutTracker();
  v0 = swift_allocObject();
  swift_defaultActor_initialize();
  type metadata accessor for RunningShortcutTracker.State(0);
  result = sub_10002A02C();
  *(v0 + 112) = result;
  qword_100041488 = v0;
  return result;
}

uint64_t sub_100006224()
{
  v1 = v0;
  v2 = sub_10002986C();
  sub_1000028EC();
  v4 = v3;
  __chkstk_darwin(v5);
  sub_100002900();
  v8 = v7 - v6;
  v9 = type metadata accessor for RunningShortcutTracker.State(0);
  __chkstk_darwin(v9);
  sub_100002900();
  v12 = v11 - v10;
  sub_100007340(v1, v11 - v10);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_100007484();
    v13();
    sub_1000026A4(&qword_10003CCE0, &unk_10002D930);
    v14 = (*(v4 + 80) + 32) & ~*(v4 + 80);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_10002D850;
    (*(v4 + 16))(v15 + v14, v8, v2);
    sub_10002984C();
    sub_10002984C();
    sub_10002984C();
    (*(v4 + 8))(v8, v2);
  }

  else
  {
    v16 = sub_1000026A4(&qword_10003CCD8, qword_10002D8E8);

    v17 = *(v4 + 32);
    sub_100007484();
    v17();
    sub_1000026A4(&qword_10003CCE0, &unk_10002D930);
    v18 = (*(v4 + 80) + 32) & ~*(v4 + 80);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_10002D840;
    (v17)(v15 + v18, v8, v2);
  }

  return v15;
}

uint64_t sub_100006490(uint64_t a1, uint64_t a2)
{
  v2 = sub_1000026A4(&qword_10003CCC8, &qword_10002D8D8);
  __chkstk_darwin(v2 - 8);
  v4 = &v12 - v3;
  v5 = sub_1000026A4(&qword_10003CCD8, qword_10002D8E8);
  v6 = *(v5 + 48);
  v7 = *(v5 + 64);

  sub_10002985C();
  *&v4[v6] = 0;
  *&v4[v7] = 0;
  type metadata accessor for RunningShortcutTracker.State(0);
  swift_storeEnumTagMultiPayload();
  sub_100007440();
  sub_100007484();
  sub_1000065A4(v8, v9, v10);
  swift_endAccess();
  sub_100029F3C();
  sub_100029F2C();
  sub_100029F1C();
}

uint64_t sub_1000065A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_1000026A4(&qword_10003CCC8, &qword_10002D8D8);
  __chkstk_darwin(v8 - 8);
  v10 = &v17 - v9;
  v11 = type metadata accessor for RunningShortcutTracker.State(0);
  __chkstk_darwin(v11);
  v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_100002984(a1, 1, v14) == 1)
  {
    sub_100006DC0(a1);
    sub_100006F54(a2, a3, v10);

    return sub_100006DC0(v10);
  }

  else
  {
    sub_100007088(a1, v13);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v4;
    sub_1000070EC(v13, a2, a3, isUniquelyReferenced_nonNull_native);

    *v4 = v18;
  }

  return result;
}

uint64_t sub_100006708(void *a1, uint64_t a2, uint64_t a3)
{
  v40 = a1;
  v6 = sub_1000026A4(&qword_10003CCC8, &qword_10002D8D8);
  __chkstk_darwin(v6 - 8);
  v8 = &v37 - v7;
  v9 = type metadata accessor for RunningShortcutTracker.State(0);
  sub_1000028EC();
  v11 = v10;
  __chkstk_darwin(v12);
  sub_100002900();
  v15 = v14 - v13;
  v41 = sub_10002986C();
  sub_1000028EC();
  v17 = v16;
  __chkstk_darwin(v18);
  sub_100002900();
  v21 = v20 - v19;
  swift_beginAccess();
  v22 = *(v3 + 112);
  if (*(v22 + 16))
  {
    v23 = sub_100006E28(a2, a3);
    if (v24)
    {
      v38 = a3;
      v39 = a2;
      sub_100007340(*(v22 + 56) + *(v11 + 72) * v23, v15);
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        v26 = sub_1000026A4(&qword_10003CCD8, qword_10002D8E8);
        v27 = *(v15 + *(v26 + 48));
        v37 = *(v15 + *(v26 + 64));
        v28 = v17;
        v29 = v41;
        (*(v17 + 32))(v21, v15, v41);
        swift_endAccess();

        v30 = v40;
        v42 = v40;
        swift_getKeyPath();
        v31 = sub_1000297CC();

        v32 = *(v26 + 48);
        v33 = *(v26 + 64);
        (*(v28 + 16))(v8, v21, v29);
        *&v8[v32] = v30;
        *&v8[v33] = v31;
        swift_storeEnumTagMultiPayload();
        sub_1000026EC(v8, 0, 1, v9);
        swift_beginAccess();
        v34 = v38;

        v35 = v30;
        v36 = v31;
        sub_1000065A4(v8, v39, v34);
        swift_endAccess();

        return (*(v28 + 8))(v21, v41);
      }

      sub_1000073A4(v15);
    }
  }

  return swift_endAccess();
}

uint64_t sub_100006A50()
{
  sub_100029F3C();
  sub_100029F2C();
  sub_100029F1C();
}

uint64_t sub_100006A98(uint64_t a1, uint64_t a2)
{
  v2 = sub_1000026A4(&qword_10003CCC8, &qword_10002D8D8);
  __chkstk_darwin(v2 - 8);

  sub_10002985C();
  type metadata accessor for RunningShortcutTracker.State(0);
  swift_storeEnumTagMultiPayload();
  sub_100007440();
  sub_100007484();
  sub_1000065A4(v3, v4, v5);
  swift_endAccess();
  sub_100029F3C();
  sub_100029F2C();
  sub_100029F1C();
}

uint64_t sub_100006B88()
{

  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t type metadata accessor for RunningShortcutTracker.State(uint64_t a1)
{
  result = qword_10003CC70;
  if (!qword_10003CC70)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100006C38(uint64_t a1)
{
  sub_100006CAC(319);
  if (v1 <= 0x3F)
  {
    sub_100006D50();
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_100006CAC(uint64_t a1)
{
  if (!qword_10003CC80)
  {
    sub_10002986C();
    sub_1000028A4(&qword_10003CC88, &qword_10002D8A0);
    sub_1000028A4(&qword_10003CC90, qword_10002D8A8);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata3, &qword_10003CC80);
    }
  }
}

void sub_100006D50()
{
  if (!qword_10003CC98)
  {
    v0 = sub_10002986C();
    if (!v1)
    {
      atomic_store(v0, &qword_10003CC98);
    }
  }
}

uint64_t sub_100006DC0(uint64_t a1)
{
  v2 = sub_1000026A4(&qword_10003CCC8, &qword_10002D8D8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_100006E28(uint64_t a1, uint64_t a2)
{
  sub_10002A38C();
  sub_10002A12C();
  v4 = sub_10002A3BC();

  return sub_100006EA0(a1, a2, v4);
}

unint64_t sub_100006EA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = ~(-1 << *(v3 + 32));
  for (i = a3 & v6; ((1 << i) & *(v3 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v6)
  {
    v8 = (*(v3 + 48) + 16 * i);
    v9 = *v8 == a1 && v8[1] == a2;
    if (v9 || (sub_10002A31C() & 1) != 0)
    {
      break;
    }
  }

  return i;
}

uint64_t sub_100006F54@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = sub_100006E28(a1, a2);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v16 = *v3;
    v9 = *(*v3 + 24);
    sub_1000026A4(&qword_10003CCD0, &qword_10002D8E0);
    sub_10002A2BC(isUniquelyReferenced_nonNull_native, v9);

    v10 = *(v16 + 56);
    v11 = type metadata accessor for RunningShortcutTracker.State(0);
    sub_100007088(v10 + *(*(v11 - 8) + 72) * v7, a3);
    sub_10002A2CC();
    *v3 = v16;
    v12 = a3;
    v13 = 0;
    v14 = v11;
  }

  else
  {
    v14 = type metadata accessor for RunningShortcutTracker.State(0);
    v12 = a3;
    v13 = 1;
  }

  return sub_1000026EC(v12, v13, 1, v14);
}

uint64_t sub_100007088(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RunningShortcutTracker.State(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000070EC(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_100006E28(a2, a3);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
    goto LABEL_13;
  }

  v16 = v11;
  v17 = v12;
  sub_1000026A4(&qword_10003CCD0, &qword_10002D8E0);
  if (!sub_10002A2BC(a4 & 1, v15))
  {
    goto LABEL_5;
  }

  v18 = sub_100006E28(a2, a3);
  if ((v17 & 1) != (v19 & 1))
  {
LABEL_13:
    result = sub_10002A33C();
    __break(1u);
    return result;
  }

  v16 = v18;
LABEL_5:
  v20 = *v5;
  if (v17)
  {
    v21 = v20[7];
    v22 = v21 + *(*(type metadata accessor for RunningShortcutTracker.State(0) - 8) + 72) * v16;

    return sub_1000072DC(a1, v22);
  }

  else
  {
    sub_100007244(v16, a2, a3, a1, v20);
  }
}

uint64_t sub_100007244(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v8 = (a5[6] + 16 * a1);
  *v8 = a2;
  v8[1] = a3;
  v9 = a5[7];
  v10 = type metadata accessor for RunningShortcutTracker.State(0);
  result = sub_100007088(a4, v9 + *(*(v10 - 8) + 72) * a1);
  v12 = a5[2];
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v14;
  }

  return result;
}

uint64_t sub_1000072DC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RunningShortcutTracker.State(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_100007340(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RunningShortcutTracker.State(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000073A4(uint64_t a1)
{
  v2 = type metadata accessor for RunningShortcutTracker.State(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_10000740C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 fractionCompleted];
  *a2 = v4;
  return result;
}

uint64_t sub_100007440()
{
  sub_1000026EC(v0, 0, 1, v1);

  return swift_beginAccess();
}

__n128 sub_1000074AC(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_1000074B8(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 16))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1000074F8(uint64_t result, int a2, int a3)
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

uint64_t sub_100007560@<X0>(uint64_t a2@<X8>)
{
  sub_10002985C();
  v3 = type metadata accessor for RunShortcutWidgetEntry(0);
  *(a2 + v3[8]) = 0;
  *(a2 + v3[5]) = 0;
  v4 = a2 + v3[6];
  *(v4 + 48) = 0;
  *(v4 + 16) = 0u;
  *(v4 + 32) = 0u;
  *v4 = 0u;
  type metadata accessor for RunningShortcutTracker.State(0);
  sub_10000B1A4();

  return sub_1000026EC(v5, v6, v7, v8);
}

uint64_t sub_1000075DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[10] = a2;
  v4[11] = a4;
  v4[9] = a1;
  return _swift_task_switch(sub_100007600);
}

uint64_t sub_100007600(uint64_t a1)
{
  v2 = *(v1 + 72);
  sub_10002939C();
  v15 = *(v1 + 48);
  v3 = *(v1 + 64);
  v4 = type metadata accessor for RunShortcutWidgetEntry(0);
  type metadata accessor for RunningShortcutTracker.State(0);
  v13 = *(v1 + 32);
  v14 = *(v1 + 16);
  sub_10000B1A4();
  sub_1000026EC(v5, v6, v7, v8);
  v9 = sub_100029F9C();
  sub_10002985C();
  v10 = v2 + v4[6];
  *v10 = v14;
  *(v10 + 16) = v13;
  *(v10 + 32) = v15;
  *(v10 + 48) = v3;
  *(v2 + v4[8]) = (v9 & 1) == 0;
  *(v2 + v4[5]) = 0;
  v11 = *(v1 + 8);

  return v11();
}

uint64_t sub_100007704(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[17] = a2;
  v4[18] = a4;
  v4[16] = a1;
  v5 = type metadata accessor for RunShortcutWidgetEntry(0);
  v4[19] = v5;
  sub_10000B194(v5);
  v4[20] = v6;
  v4[21] = swift_task_alloc();
  sub_100029F7C();
  v4[22] = swift_task_alloc();
  sub_1000026A4(&qword_10003CCC8, &qword_10002D8D8);
  v4[23] = swift_task_alloc();
  v4[24] = swift_task_alloc();

  return _swift_task_switch(sub_100007830);
}

uint64_t sub_100007830(uint64_t a1)
{
  sub_10002939C();
  v3 = v1[9];
  v2 = v1[10];
  v4 = v1[11];
  v5 = v1[12];
  v7 = v1[13];
  v6 = v1[14];
  v8 = v1[15];
  if (v3)
  {
    v35 = v1[11];
    v9 = v1[23];
    v10 = v1[24];
    v1[2] = v3;
    v1[3] = v2;
    v1[4] = v4;
    v1[5] = v5;
    v1[6] = v7;
    v1[7] = v6;
    v1[8] = v8;
    type metadata accessor for RunningShortcutTracker.State(0);
    sub_10000B1BC();
    sub_10000B1A4();
    sub_1000026EC(v11, v12, v13, v4);
    sub_10000AEE4(v10, v9);
    if (sub_100002984(v9, 1, v4) == 1)
    {
      sub_10000338C(v1[23], &qword_10003CCC8, &qword_10002D8D8);
      sub_1000026A4(&qword_10003CCE0, &unk_10002D930);
      v14 = sub_10002986C();
      sub_10000B194(v14);
      v15 = swift_allocObject();
      *(v15 + 16) = xmmword_10002D840;
      sub_10002985C();
    }

    else
    {
      v15 = sub_100006224();
      sub_10000ACCC();
    }

    v28 = v1[24];
    v29 = v1[18];
    v30 = swift_task_alloc();
    v30[2] = v1 + 2;
    v30[3] = v28;
    v30[4] = v29;
    sub_100007D0C(sub_10000AF54, v30, v15);

    sub_100029F6C();
    sub_10000B134();
    sub_10000A5DC(v31, v32, &unk_10002DAD4);
    sub_10002A00C();
    sub_10000AD20(v3, v2, v35, v5, v7, v6, v8);
    sub_10000338C(v28, &qword_10003CCC8, &qword_10002D8D8);
  }

  else
  {
    v16 = v1[21];
    v18 = v1[19];
    v17 = v1[20];
    sub_10002985C();
    *(v16 + v18[8]) = 1;
    *(v16 + v18[5]) = 0;
    v19 = (v16 + v18[6]);
    *v19 = 0;
    v19[1] = v2;
    v19[2] = v4;
    v19[3] = v5;
    v19[4] = v7;
    v19[5] = v6;
    v19[6] = v8;
    type metadata accessor for RunningShortcutTracker.State(0);
    sub_10000B1A4();
    sub_1000026EC(v20, v21, v22, v23);
    sub_1000026A4(&qword_10003CF38, &unk_10002DD30);
    v24 = (*(v17 + 80) + 32) & ~*(v17 + 80);
    v25 = swift_allocObject();
    *(v25 + 16) = xmmword_10002D840;
    sub_100009EF4(v16, v25 + v24);
    sub_100029F6C();
    sub_10000B134();
    sub_10000A5DC(v26, v27, &unk_10002DAD4);
    sub_10002A00C();
    sub_10000ACCC();
  }

  v33 = v1[1];

  return v33();
}

uint64_t sub_100007C04@<X0>(uint64_t a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v16 = a2[2];
  v8 = *(a2 + 6);
  v9 = sub_10002986C();
  v14 = a2[1];
  v15 = *a2;
  (*(*(v9 - 8) + 16))(a4, a1, v9);
  v10 = type metadata accessor for RunShortcutWidgetEntry(0);
  sub_10000AEE4(a3, a4 + v10[7]);
  v11 = sub_100029F9C();
  v12 = a4 + v10[6];
  *v12 = v15;
  *(v12 + 16) = v14;
  *(v12 + 32) = v16;
  *(v12 + 48) = v8;
  *(a4 + v10[8]) = (v11 & 1) == 0;
  *(a4 + v10[5]) = 0;
  return sub_10000AFDC(a2, v17);
}

void *sub_100007D0C(void (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v19 = a1;
  v20 = a2;
  v6 = type metadata accessor for RunShortcutWidgetEntry(0);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6 - 8);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a3 + 16);
  v11 = _swiftEmptyArrayStorage;
  if (!v10)
  {
    return v11;
  }

  v21 = _swiftEmptyArrayStorage;
  sub_100012CEC(0, v10, 0);
  v11 = v21;
  v12 = *(sub_10002986C() - 8);
  v13 = a3 + ((*(v12 + 80) + 32) & ~*(v12 + 80));
  v18 = *(v12 + 72);
  while (1)
  {
    v19(v13);
    if (v4)
    {
      break;
    }

    v4 = 0;
    v21 = v11;
    v15 = v11[2];
    v14 = v11[3];
    if (v15 >= v14 >> 1)
    {
      sub_100012CEC((v14 > 1), v15 + 1, 1);
      v11 = v21;
    }

    v11[2] = v15 + 1;
    sub_10000AF78(v9, v11 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v15);
    v13 += v18;
    if (!--v10)
    {
      return v11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100007EFC(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v6 = *a2;
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_10000B0B8;

  return sub_1000075DC(a1, v6, v7, a3);
}

uint64_t sub_100007FAC(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v6 = *a2;
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_10000B0B8;

  return sub_100007704(a1, v6, v7, a3);
}

uint64_t sub_100008064(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_100008118;

  return AppIntentTimelineProvider.relevances()(a1, a2, a3);
}

uint64_t sub_100008118()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_10000820C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_10000B0B8;

  return AppIntentTimelineProvider.relevance()(a1, a2, a3);
}

__n128 sub_1000082C0@<Q0>(__n128 *a1@<X8>)
{
  v3 = type metadata accessor for RunShortcutWidgetEntry(0);
  v4 = (v1 + *(v3 + 24));
  v6 = *v4;
  v5 = v4[1];
  v8 = v4[2].n128_i64[0];
  v7 = v4[2].n128_i64[1];
  v9 = v4->n128_u64[0];
  v10 = v8;
  v11 = v4[3].n128_i64[0];
  v12 = v7;
  v13 = v11;
  v14 = *v4;
  v15 = v5;
  if (!v4->n128_u64[0])
  {
    v16 = *(v1 + *(v3 + 20));
    if (v16)
    {
      v19 = v6.n128_i64[1];
      v20 = v5;
      sub_10000FEC0(v16, v22);
      v6.n128_u64[1] = v19;
      v5 = v20;
      v15 = v22[1];
      v14 = v22[0];
      v10 = v23;
      v12 = v24;
      v13 = v25;
    }

    else
    {
      v10 = 0;
      v12 = 0;
      v13 = 0;
      v14 = 0uLL;
      v15 = 0uLL;
    }
  }

  v18 = v15;
  v21 = v14;
  sub_10000AE58(v9, v6.n128_i64[1], v5.n128_i64[0], v5.n128_i64[1], v8, v7, v11);
  result = v21;
  *a1 = v21;
  a1[1] = v18;
  a1[2].n128_u64[0] = v10;
  a1[2].n128_u64[1] = v12;
  a1[3].n128_u64[0] = v13;
  return result;
}

void sub_1000083BC(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for RunShortcutWidgetEntry(0);
  v4 = *(v1 + *(v3 + 20));
  if (!v4)
  {
    v5 = (v1 + *(v3 + 24));
    if (!*v5)
    {
      goto LABEL_17;
    }

    v6 = v5[5];
    v7 = v5[6];
    v8 = qword_10003C940;

    v51 = v6;

    if (v8 != -1)
    {
      sub_10000B164(&qword_10003C940);
    }

    v9 = qword_1000415B8;
    sub_1000026A4(&qword_10003CF20, &qword_10002DD18);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_10002D840;
    sub_10002933C();
    *(v10 + 32) = v52;
    *(v10 + 40) = v53;
    v11 = sub_1000284B4(v10);

    if (sub_1000134BC(v11))
    {
      sub_10000B1C8();
      if (v9)
      {
        sub_10002A26C();
      }

      else
      {
        v12 = *(v11 + 32);
      }

      sub_10000B1BC();

      sub_100008824(a1);
LABEL_12:

      v13 = sub_10000B0BC();
      sub_10000AD20(v13, v14, v15, v16, v17, v51, v7);
      return;
    }

    v18 = sub_10000B0BC();
    sub_10000AD20(v18, v19, v20, v21, v22, v51, v7);

    sub_10002933C();
    if (v53)
    {
      v47 = sub_10002981C();
      v24 = v23;

      if (v24 >> 60 != 15)
      {
        sub_10000ADAC(0, &unk_10003DBE0, NSKeyedUnarchiver_ptr);
        sub_10000ADAC(0, &qword_10003CF18, WFConfiguredSystemAction_ptr);
        v34 = sub_10002A20C();
        sub_10000ADEC(v47, v24);
        if (v34)
        {
          objc_opt_self();
          v35 = swift_dynamicCastObjCClass();
          if (v35)
          {
            v36 = v35;
            v48 = v34;
            if (qword_10003C940 != -1)
            {
              sub_10000B164(&qword_10003C940);
            }

            sub_1000026A4(&qword_10003CF20, &qword_10002DD18);
            v37 = swift_allocObject();
            *(v37 + 16) = xmmword_10002D840;
            v9 = [v36 workflowIdentifier];
            v38 = sub_10002A0EC();
            v49 = v39;

            *(v37 + 32) = v38;
            *(v37 + 40) = v49;
            v40 = sub_1000284B4(v37);

            if (sub_1000134BC(v40))
            {
              sub_10000B1C8();
              if (v9)
              {
                sub_10002A26C();
              }

              else
              {
                v41 = *(v40 + 32);
              }

              sub_10000B1BC();

              sub_100008824(a1);

              goto LABEL_12;
            }

            v42 = sub_10000B0BC();
            sub_10000AD20(v42, v43, v44, v45, v46, v51, v7);

LABEL_17:
            sub_10002980C();
            sub_10000B1A4();
            sub_1000026EC(v30, v31, v32, v33);
            return;
          }
        }
      }
    }

    v25 = sub_10000B0BC();
    sub_10000AD20(v25, v26, v27, v28, v29, v51, v7);
    goto LABEL_17;
  }

  v50 = v4;
  sub_100008824(a1);
}

uint64_t sub_100008824@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v13[1] = a1;
  v3 = sub_10002972C();
  sub_1000028EC();
  v5 = v4;
  __chkstk_darwin(v6);
  v8 = v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10002971C();
  sub_10002970C();
  sub_1000296EC();
  sub_1000026A4(&qword_10003CF28, &qword_10002DD20);
  v9 = sub_10002967C();
  sub_10000B194(v9);
  *(swift_allocObject() + 16) = xmmword_10002D940;
  v10 = [v2 identifier];
  sub_10002A0EC();

  sub_10002966C();

  v11 = [v2 name];
  sub_10002A0EC();

  sub_10002966C();

  sub_10002A0EC();
  sub_10002966C();

  sub_10002968C();
  sub_1000296AC();
  return (*(v5 + 8))(v8, v3);
}

void sub_100008AB0()
{
  v1 = sub_10000B1B0();
  v2 = *(v0 + *(type metadata accessor for RunShortcutWidgetEntry(v1) + 20));
  if (v2)
  {
    v3 = [v2 name];
    sub_10002A0EC();

    sub_10002A3AC(1u);
    sub_10002A12C();
  }

  else
  {
    sub_10002A3AC(0);
  }
}

uint64_t sub_100008B58(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000B1B0();
  v5 = type metadata accessor for RunShortcutWidgetEntry(v4);
  v6 = *(v5 + 20);
  v7 = *(v2 + v6);
  if (v7)
  {
    v8 = [v7 name];
    v9 = sub_10002A0EC();
    v11 = v10;

    v12 = *(a2 + *(v5 + 20));
    if (!v12)
    {
      if (!v11)
      {
        goto LABEL_17;
      }

LABEL_14:
      v18 = 0;
LABEL_19:

      return v18 & 1;
    }
  }

  else
  {
    v12 = *(a2 + v6);
    if (!v12)
    {
      goto LABEL_17;
    }

    v11 = 0;
    v9 = 0;
  }

  v13 = [v12 name];
  v14 = sub_10002A0EC();
  v16 = v15;

  if (v11)
  {
    if (v16)
    {
      if (v9 == v14 && v11 == v16)
      {

        v18 = 1;
      }

      else
      {
        v18 = sub_10002A31C();
      }

      goto LABEL_19;
    }

    goto LABEL_14;
  }

  if (v16)
  {
    v18 = 0;
    goto LABEL_19;
  }

LABEL_17:
  v18 = 1;
  return v18 & 1;
}

Swift::Int sub_100008C84()
{
  sub_10002A38C();
  sub_100008AB0();
  return sub_10002A3BC();
}

uint64_t sub_100008CC4@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_10002986C();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

Swift::Int sub_100008D38(uint64_t a1)
{
  sub_10002A38C();
  sub_100008AB0();
  return sub_10002A3BC();
}

uint64_t sub_100008D78()
{
  v1 = v0;
  v2 = sub_1000026A4(&qword_10003CE90, &qword_10002DBF8);
  sub_10000350C();
  sub_100003534();
  __chkstk_darwin(v3);
  v5 = v18 - v4;
  v6 = sub_1000026A4(&qword_10003CE98, &qword_10002DC00);
  sub_1000028EC();
  v8 = v7;
  sub_100003534();
  __chkstk_darwin(v9);
  v11 = v18 - v10;
  sub_100008F44(v1, v5);
  v12 = *(v1 + *(type metadata accessor for RunShortcutWidgetEntry(0) + 32));
  KeyPath = swift_getKeyPath();
  v14 = swift_allocObject();
  *(v14 + 16) = (v12 & 1) == 0;
  v15 = &v5[*(v2 + 36)];
  *v15 = KeyPath;
  v15[1] = sub_10000A8F4;
  v15[2] = v14;
  v16 = sub_10000A90C();
  sub_100029D4C();
  sub_10000ABF0(v5);
  v18[0] = v2;
  v18[1] = v16;
  sub_10000B11C();
  swift_getOpaqueTypeConformance2();
  sub_100029D1C();
  return (*(v8 + 8))(v11, v6);
}

uint64_t sub_100008F44@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v60 = a2;
  v3 = sub_1000026A4(&unk_10003DBC0, &qword_10002D510);
  __chkstk_darwin(v3 - 8);
  v5 = &v50 - v4;
  v59 = type metadata accessor for RunShortcutComplicationView(0);
  __chkstk_darwin(v59);
  v7 = (&v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v62 = sub_1000026A4(&qword_10003CEC8, &qword_10002DC48);
  v56 = *(v62 - 8);
  __chkstk_darwin(v62);
  v55 = &v50 - v8;
  v64 = sub_1000026A4(&qword_10003CEF0, &qword_10002DC60);
  v9 = *(v64 - 8);
  __chkstk_darwin(v64);
  v11 = &v50 - v10;
  v58 = sub_1000026A4(&qword_10003CEF8, &qword_10002DC68);
  __chkstk_darwin(v58);
  v63 = &v50 - v12;
  v13 = type metadata accessor for EmptyShortcutComplicationView(0);
  __chkstk_darwin(v13);
  v15 = (&v50 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v61 = sub_1000026A4(&qword_10003CF00, &qword_10002DC70);
  v16 = *(v61 - 8);
  __chkstk_darwin(v61);
  v18 = &v50 - v17;
  v57 = a1;
  sub_1000082C0(v69);
  v19 = v69[0].n128_u64[0];
  if (v69[0].n128_u64[0])
  {
    v52 = v11;
    v51 = v5;
    v20 = v69[0].n128_u64[1];
    v71 = v69[1];
    v72 = v69[2];
    v73 = v70;
    KeyPath = swift_getKeyPath();
    v54 = v13;
    v53 = v9;
    v22 = v59;
    *(v7->n128_u64 + *(v59 + 20)) = KeyPath;
    sub_1000026A4(&qword_10003CA78, &qword_10002DF40);
    swift_storeEnumTagMultiPayload();
    v7->n128_u64[0] = v19;
    v7->n128_u64[1] = v20;
    v23 = v72;
    v7[1] = v71;
    v7[2] = v23;
    v7[3].n128_u64[0] = v73;

    sub_10002933C();
    v24 = sub_10000A5DC(&qword_10003CED0, type metadata accessor for RunShortcutComplicationView, &unk_10002F49C);
    v25 = sub_100005F34();
    v26 = v55;
    sub_100029CCC();

    sub_10000ACCC();
    v27 = v51;
    sub_1000083BC(v51);
    v65 = v22;
    v66 = &type metadata for String;
    v67 = v24;
    v68 = v25;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v29 = v52;
    v30 = v27;
    v31 = v62;
    sub_100029CEC();
    sub_10000338C(v30, &unk_10003DBC0, &qword_10002D510);
    (*(v56 + 8))(v26, v31);
    v32 = v53;
    v33 = v64;
    (*(v53 + 16))(v63, v29, v64);
    swift_storeEnumTagMultiPayload();
    v65 = v31;
    v66 = OpaqueTypeConformance2;
    swift_getOpaqueTypeConformance2();
    v34 = sub_10000A5DC(&qword_10003CED8, type metadata accessor for EmptyShortcutComplicationView, &unk_10002DE80);
    v65 = v54;
    v66 = &type metadata for String;
    v67 = v34;
    v68 = v25;
    swift_getOpaqueTypeConformance2();
    sub_100029B6C();
    sub_10000338C(v69, &qword_10003CF10, &qword_10002DD10);
    return (*(v32 + 8))(v29, v33);
  }

  else
  {
    *v15 = swift_getKeyPath();
    sub_1000026A4(&qword_10003CA78, &qword_10002DF40);
    swift_storeEnumTagMultiPayload();
    v36 = v13;
    v37 = *(v13 + 20);
    *(v15 + v37) = swift_getKeyPath();
    sub_1000026A4(&qword_10003CF08, &qword_10002DCE0);
    swift_storeEnumTagMultiPayload();
    v38 = v15 + *(v36 + 24);
    *v38 = swift_getKeyPath();
    v38[8] = 0;
    v39 = sub_10002A0DC();
    v40 = sub_10002A0DC();
    v41 = sub_100028FF4(v39);

    v42 = sub_10002A0EC();
    v44 = v43;

    v71.n128_u64[0] = v42;
    v71.n128_u64[1] = v44;
    v45 = sub_10000A5DC(&qword_10003CED8, type metadata accessor for EmptyShortcutComplicationView, &unk_10002DE80);
    v46 = sub_100005F34();
    sub_100029CCC();

    sub_10000ACCC();
    v47 = v61;
    (*(v16 + 16))(v63, v18, v61);
    swift_storeEnumTagMultiPayload();
    v48 = sub_10000A5DC(&qword_10003CED0, type metadata accessor for RunShortcutComplicationView, &unk_10002F49C);
    v71.n128_u64[0] = v59;
    v71.n128_u64[1] = &type metadata for String;
    v72.n128_u64[0] = v48;
    v72.n128_u64[1] = v46;
    v49 = swift_getOpaqueTypeConformance2();
    v71.n128_u64[0] = v62;
    v71.n128_u64[1] = v49;
    swift_getOpaqueTypeConformance2();
    v71.n128_u64[0] = v36;
    v71.n128_u64[1] = &type metadata for String;
    v72.n128_u64[0] = v45;
    v72.n128_u64[1] = v46;
    swift_getOpaqueTypeConformance2();
    sub_100029B6C();
    return (*(v16 + 8))(v18, v47);
  }
}

uint64_t sub_100009870@<X0>(uint64_t a1@<X0>, uint64_t a3@<X8>)
{
  v52 = a1;
  v59 = a3;
  v3 = sub_1000026A4(&qword_10003CCE8, &qword_10002D9E0);
  sub_1000028EC();
  v5 = v4;
  sub_100003534();
  __chkstk_darwin(v6);
  v8 = &v52 - v7;
  sub_1000026A4(&qword_10003CCF0, &qword_10002D9E8);
  sub_1000028EC();
  v53 = v9;
  v54 = v10;
  sub_100003534();
  __chkstk_darwin(v11);
  v13 = &v52 - v12;
  sub_1000026A4(&qword_10003CCF8, &qword_10002D9F0);
  sub_1000028EC();
  v55 = v14;
  v56 = v15;
  sub_100003534();
  __chkstk_darwin(v16);
  v18 = &v52 - v17;
  sub_1000026A4(&qword_10003CD00, &qword_10002D9F8);
  sub_1000028EC();
  v57 = v19;
  v58 = v20;
  sub_100003534();
  __chkstk_darwin(v21);
  v23 = &v52 - v22;
  type metadata accessor for RunShortcutWidgetEntryView(0);
  sub_10000A5DC(&qword_10003CD08, type metadata accessor for RunShortcutWidgetEntryView, &unk_10002DBA8);
  sub_100009EA0();

  sub_100029F8C();
  v24 = sub_10002A0DC();
  v25 = sub_10002A0DC();
  v26 = sub_100028FF4(v24);

  v27 = sub_10002A0EC();
  v29 = v28;

  v60 = v27;
  v61 = v29;
  sub_10000B14C();
  v32 = sub_100005EEC(v30, &qword_10003CCE8, &qword_10002D9E0, v31);
  v33 = sub_100005F34();
  sub_100029B4C();

  (*(v5 + 8))(v8, v3);
  v34 = sub_10002A0DC();
  sub_10002A0DC();
  v35 = sub_10000B1BC();
  v36 = sub_100028FF4(v35);

  v37 = sub_10002A0EC();
  v39 = v38;

  v64 = v37;
  v65 = v39;
  v60 = v3;
  v61 = &type metadata for String;
  v62 = v32;
  v63 = v33;
  sub_10000B104();
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v41 = v53;
  sub_100029B2C();

  v42 = v41;
  (*(v54 + 8))(v13, v41);
  sub_1000026A4(&qword_10003CD20, &unk_10002DA00);
  v43 = sub_100029F4C();
  sub_1000028EC();
  v45 = v44;
  v46 = (*(v44 + 80) + 32) & ~*(v44 + 80);
  v47 = swift_allocObject();
  *(v47 + 16) = xmmword_10002D840;
  (*(v45 + 104))(v47 + v46, enum case for WidgetFamily.accessoryCircular(_:), v43);
  v60 = v42;
  v61 = &type metadata for String;
  v62 = OpaqueTypeConformance2;
  v63 = v33;
  sub_10000B0EC();
  v48 = swift_getOpaqueTypeConformance2();
  v49 = v55;
  sub_100029B3C();

  (*(v56 + 8))(v18, v49);
  v60 = v49;
  v61 = v48;
  sub_10000B0D4();
  swift_getOpaqueTypeConformance2();
  v50 = v57;
  sub_100029B5C();
  return (*(v58 + 8))(v23, v50);
}

unint64_t sub_100009E48@<X0>(void *a1@<X8>)
{
  result = sub_100007490();
  *a1 = 0xD000000000000011;
  a1[1] = v3;
  return result;
}

unint64_t sub_100009EA0()
{
  result = qword_10003CD10;
  if (!qword_10003CD10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003CD10);
  }

  return result;
}

uint64_t sub_100009EF4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RunShortcutWidgetEntry(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100009F78(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100009FC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_10000B184();
  v6 = sub_10002986C();
  if (*(*(v6 - 8) + 84) == v3)
  {
    v7 = v6;
    v8 = v4;
LABEL_10:

    return sub_100002984(v8, v3, v7);
  }

  if (v3 != 2147483646)
  {
    v7 = sub_1000026A4(&qword_10003CCC8, &qword_10002D8D8);
    v8 = v4 + *(a3 + 28);
    goto LABEL_10;
  }

  v9 = *(v4 + *(a3 + 20));
  if (v9 >= 0xFFFFFFFF)
  {
    LODWORD(v9) = -1;
  }

  v10 = v9 - 1;
  if (v10 < 0)
  {
    v10 = -1;
  }

  return (v10 + 1);
}

uint64_t sub_10000A0B8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_10000B184();
  result = sub_10002986C();
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = result;
    v10 = v5;
  }

  else
  {
    if (a3 == 2147483646)
    {
      *(v5 + *(a4 + 20)) = v4;
      return result;
    }

    v9 = sub_1000026A4(&qword_10003CCC8, &qword_10002D8D8);
    v10 = v5 + *(a4 + 28);
  }

  return sub_1000026EC(v10, v4, v4, v9);
}

void sub_10000A188(uint64_t a1)
{
  sub_10002986C();
  if (v1 <= 0x3F)
  {
    sub_10000A244(319);
    if (v2 <= 0x3F)
    {
      sub_10000A2AC();
      if (v3 <= 0x3F)
      {
        sub_10000A2FC(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_10000A244(uint64_t a1)
{
  if (!qword_10003CD90)
  {
    sub_10000ADAC(255, &qword_10003CD98, WFWorkflowReference_ptr);
    v1 = sub_10002A22C();
    if (!v2)
    {
      atomic_store(v1, &qword_10003CD90);
    }
  }
}

void sub_10000A2AC()
{
  if (!qword_10003CDA0)
  {
    v0 = sub_10002A22C();
    if (!v1)
    {
      atomic_store(v0, &qword_10003CDA0);
    }
  }
}

void sub_10000A2FC(uint64_t a1)
{
  if (!qword_10003CDA8)
  {
    type metadata accessor for RunningShortcutTracker.State(255);
    v1 = sub_10002A22C();
    if (!v2)
    {
      atomic_store(v1, &qword_10003CDA8);
    }
  }
}

uint64_t sub_10000A378()
{
  v2 = sub_10000B184();
  v3 = type metadata accessor for RunShortcutWidgetEntry(v2);

  return sub_100002984(v1, v0, v3);
}

uint64_t sub_10000A3CC()
{
  v2 = sub_10000B184();
  v3 = type metadata accessor for RunShortcutWidgetEntry(v2);

  return sub_1000026EC(v1, v0, v0, v3);
}

uint64_t sub_10000A410(uint64_t a1)
{
  result = type metadata accessor for RunShortcutWidgetEntry(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_10000A47C()
{
  v0 = sub_1000028A4(&qword_10003CD00, &qword_10002D9F8);
  v1 = sub_1000028A4(&qword_10003CCF8, &qword_10002D9F0);
  v2 = sub_1000028A4(&qword_10003CCF0, &qword_10002D9E8);
  v3 = sub_1000028A4(&qword_10003CCE8, &qword_10002D9E0);
  sub_10000B14C();
  sub_100005EEC(v4, &qword_10003CCE8, &qword_10002D9E0, v5);
  sub_100005F34();
  sub_10000B104();
  sub_1000061A4(v6, v7, v8, v9, v10, v11, v12, v13, v3);
  sub_10000B0EC();
  sub_1000061A4(v14, v15, v16, v17, v18, v19, v20, v21, v2);
  sub_10000B0D4();
  v37 = sub_1000061A4(v22, v23, v24, v25, v26, v27, v28, v29, v1);
  return sub_1000061A4(v37, &opaque type descriptor for <<opaque return type of WidgetConfiguration.enableContentMarginsForFirstParty(_:)>>, v30, v31, v32, v33, v34, v35, v0);
}

uint64_t sub_10000A5DC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_10000A670()
{
  result = qword_10003CE88;
  if (!qword_10003CE88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003CE88);
  }

  return result;
}

uint64_t sub_10000A6E0()
{
  sub_100029A6C();
  sub_10000A5DC(&qword_10003CF30, &type metadata accessor for EnvironmentValues.ShowsWidgetBackgroundKey, &protocol conformance descriptor for EnvironmentValues.ShowsWidgetBackgroundKey);
  sub_100029B0C();
  return v1;
}

uint64_t sub_10000A75C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_10000A6E0();
  *a1 = result & 1;
  return result;
}

uint64_t sub_10000A7D4()
{
  sub_10000B1B0();
  sub_100029F0C();
  sub_1000028EC();
  __chkstk_darwin(v1);
  (*(v3 + 16))(&v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0), v0);
  return sub_100029A9C();
}

uint64_t sub_10000A88C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_100029AAC();
  *a1 = result & 1;
  return result;
}

unint64_t sub_10000A90C()
{
  result = qword_10003CEA0;
  if (!qword_10003CEA0)
  {
    sub_1000028A4(&qword_10003CE90, &qword_10002DBF8);
    sub_10000A9C4();
    sub_100005EEC(&qword_10003CEE0, &qword_10003CEE8, &unk_10002DC50, &protocol conformance descriptor for _EnvironmentKeyTransformModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003CEA0);
  }

  return result;
}

unint64_t sub_10000A9C4()
{
  result = qword_10003CEA8;
  if (!qword_10003CEA8)
  {
    sub_1000028A4(&qword_10003CEB0, &qword_10002DC38);
    sub_10000AA48();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003CEA8);
  }

  return result;
}

unint64_t sub_10000AA48()
{
  result = qword_10003CEB8;
  if (!qword_10003CEB8)
  {
    sub_1000028A4(&qword_10003CEC0, &qword_10002DC40);
    sub_1000028A4(&qword_10003CEC8, &qword_10002DC48);
    type metadata accessor for RunShortcutComplicationView(255);
    sub_10000A5DC(&qword_10003CED0, type metadata accessor for RunShortcutComplicationView, &unk_10002F49C);
    sub_100005F34();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    type metadata accessor for EmptyShortcutComplicationView(255);
    sub_10000A5DC(&qword_10003CED8, type metadata accessor for EmptyShortcutComplicationView, &unk_10002DE80);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003CEB8);
  }

  return result;
}

uint64_t sub_10000ABF0(uint64_t a1)
{
  sub_1000026A4(&qword_10003CE90, &qword_10002DBF8);
  sub_10000350C();
  (*(v2 + 8))(a1);
  return a1;
}

uint64_t sub_10000AC9C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_10000A6E0();
  *a1 = result & 1;
  return result;
}

uint64_t sub_10000ACCC()
{
  v1 = sub_10000B1B0();
  v2(v1);
  sub_10000350C();
  (*(v3 + 8))(v0);
  return v0;
}

uint64_t sub_10000AD20(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_10000ADAC(uint64_t a1, unint64_t *a2, void *a3)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_10000ADEC(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_10000AE00(a1, a2);
  }

  return a1;
}

uint64_t sub_10000AE00(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v2;
    }
  }
}

uint64_t sub_10000AE58(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_10000AEE4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000026A4(&qword_10003CCC8, &qword_10002D8D8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10000AF78(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RunShortcutWidgetEntry(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10000B038()
{
  v0 = sub_1000028A4(&qword_10003CE98, &qword_10002DC00);
  v1 = sub_1000028A4(&qword_10003CE90, &qword_10002DBF8);
  sub_10000A90C();
  sub_10000B11C();
  v17 = sub_1000061A4(v2, v3, v4, v5, v6, v7, v8, v9, v1);
  return sub_1000061A4(v17, &opaque type descriptor for <<opaque return type of View.unredacted()>>, v10, v11, v12, v13, v14, v15, v0);
}

uint64_t sub_10000B164(uint64_t a1)
{

  return swift_once();
}

unint64_t sub_10000B1C8()
{

  return sub_100012CC8(0, (v0 & 0xC000000000000001) == 0, v0);
}

uint64_t sub_10000B1FC(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1000026A4(&qword_10003CF40, &unk_10002DD50);
    v9 = a1 + *(a3 + 28);

    return sub_100002984(v9, a2, v8);
  }
}

void *sub_10000B2A4(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_1000026A4(&qword_10003CF40, &unk_10002DD50);
    v8 = v5 + *(a4 + 28);

    return sub_1000026EC(v8, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for RunShortcutRectangularWidgetView(uint64_t a1)
{
  result = qword_10003CFA0;
  if (!qword_10003CFA0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10000B37C(uint64_t a1)
{
  sub_10000B480();
  if (v1 <= 0x3F)
  {
    sub_10000B51C(319, &qword_10003CFB8, &type metadata for Color, &type metadata accessor for Optional);
    if (v2 <= 0x3F)
    {
      sub_10000B4C4(319);
      if (v3 <= 0x3F)
      {
        sub_10000B51C(319, &qword_10003CFC8, &type metadata for Bool, &type metadata accessor for Environment);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

unint64_t sub_10000B480()
{
  result = qword_10003CFB0;
  if (!qword_10003CFB0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10003CFB0);
  }

  return result;
}

void sub_10000B4C4(uint64_t a1)
{
  if (!qword_10003CFC0)
  {
    sub_10002997C();
    v1 = sub_10002998C();
    if (!v2)
    {
      atomic_store(v1, &qword_10003CFC0);
    }
  }
}

void sub_10000B51C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_10000B588()
{
  sub_100029AFC();
  sub_10000CA04();
  v3 = v2;
  __chkstk_darwin(v4);
  v6 = &v11[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = v1 + *(type metadata accessor for RunShortcutRectangularWidgetView(0) + 32);
  v8 = *v7;
  if (*(v7 + 8) != 1)
  {

    sub_10002A1FC();
    v9 = sub_100029C3C();
    sub_10002993C();

    sub_100029AEC();
    swift_getAtKeyPath();
    sub_10000C470(v8, 0);
    (*(v3 + 8))(v6, v0);
    LOBYTE(v8) = v11[15];
  }

  return v8 & 1;
}

uint64_t sub_10000B6D0()
{
  sub_100029C2C();
  sub_10000CA04();
  v3 = v2;
  __chkstk_darwin(v4);
  v6 = v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000026A4(&qword_10003D008, &qword_10002DDD8);
  sub_10000350C();
  __chkstk_darwin(v8);
  v10 = v18 - v9;
  *v10 = sub_100029B1C();
  *(v10 + 1) = 0;
  v10[16] = 1;
  v11 = sub_1000026A4(&qword_10003D010, &qword_10002DDE0);
  sub_10000B900(v1, &v10[*(v11 + 44)]);
  sub_100029E5C();
  sub_1000299EC();
  v12 = &v10[*(v7 + 36)];
  v13 = v20;
  *v12 = v19;
  *(v12 + 1) = v13;
  *(v12 + 2) = v21;
  v14 = [*v1 backgroundColor];
  v15 = [v14 paletteGradient];

  v16 = [v15 darkBaseColor];
  v18[1] = sub_100029D9C();
  sub_100029C1C();
  sub_10000C178();
  sub_100029D6C();
  (*(v3 + 8))(v6, v0);

  return sub_10000C268(v10);
}

uint64_t sub_10000B900@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v50 = a2;
  v46 = sub_10002997C();
  v3 = *(v46 - 8);
  __chkstk_darwin(v46);
  v45 = &v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = type metadata accessor for RunShortcutRectangularWidgetView(0);
  v5 = *(v44 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v44);
  v7 = sub_1000026A4(&qword_10003D030, &unk_10002DDF0);
  v48 = *(v7 - 8);
  v49 = v7;
  v8 = __chkstk_darwin(v7);
  v10 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v43 - v11;
  v13 = [*a1 backgroundColor];
  v14 = [v13 paletteGradient];

  sub_10000C2C8(a1, &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v16 = swift_allocObject();
  sub_10000C47C(&v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v16 + v15);
  sub_1000026A4(&qword_10003D040, &qword_10002DE00);
  v17 = sub_1000028A4(&qword_10003D048, &qword_10002DE08);
  v18 = sub_10000C560();
  v51 = v17;
  v52 = v18;
  swift_getOpaqueTypeConformance2();
  v47 = v12;
  sub_1000298BC();

  sub_100029C5C();
  sub_100029C6C();
  sub_100029C7C();

  v19 = sub_100029C9C();
  v21 = v20;
  v23 = v22;

  if (*(a1 + 24))
  {
    v24 = v45;
    sub_10000C654(v45);
    sub_100029D8C();
    (*(v3 + 8))(v24, v46);
    v25 = sub_100029D9C();
  }

  else
  {
    v25 = sub_100029DAC();
  }

  v51 = v25;
  v26 = sub_100029C8C();
  v28 = v27;
  LODWORD(v45) = v29;
  v46 = v30;
  sub_10000C644(v19, v21, v23 & 1);

  KeyPath = swift_getKeyPath();
  v33 = v47;
  v32 = v48;
  v34 = *(v48 + 16);
  v35 = v49;
  v34(v10, v47, v49);
  v36 = v50;
  v34(v50, v10, v35);
  v37 = sub_1000026A4(&qword_10003D060, &qword_10002DE40);
  v38 = &v36[*(v37 + 48)];
  *v38 = v26;
  *(v38 + 1) = v28;
  v39 = v45 & 1;
  v38[16] = v45 & 1;
  *(v38 + 3) = v46;
  *(v38 + 4) = KeyPath;
  *(v38 + 5) = 2;
  v38[48] = 0;
  v40 = &v36[*(v37 + 64)];
  *v40 = 0;
  v40[8] = 1;
  sub_10000C8A4(v26, v28, v39);
  v41 = *(v32 + 8);

  v41(v33, v35);
  sub_10000C644(v26, v28, v39);

  return (v41)(v10, v35);
}

uint64_t sub_10000BE14@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v34 = a3;
  v5 = sub_1000298DC();
  v32 = *(v5 - 8);
  v33 = v5;
  __chkstk_darwin(v5);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_1000298CC();
  v8 = *(v30 - 8);
  __chkstk_darwin(v30);
  v10 = (&v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v31 = sub_1000026A4(&qword_10003D048, &qword_10002DE08);
  __chkstk_darwin(v31);
  v12 = &v29 - v11;
  v13 = sub_10002997C();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a2 + 24))
  {
    type metadata accessor for RunShortcutRectangularWidgetView(0);
    v17 = a2;
    sub_10000C654(v16);
    v18 = sub_100029D8C();
    (*(v14 + 8))(v16, v13);
  }

  else
  {
    v19 = a1;
    v17 = a2;
    if (sub_10000B588())
    {
      v20 = [objc_opt_self() whiteColor];
    }

    else
    {
      v20 = v19;
    }

    v18 = v20;
  }

  v21 = [*v17 icon];
  __asm { FMOV            V0.2D, #30.0 }

  *v10 = _Q0;
  (*(v8 + 104))(v10, enum case for IconSize.custom(_:), v30);
  *v7 = v18;
  v7[8] = 0;
  (*(v32 + 104))(v7, enum case for IconView.DisplayMode.customColor(_:), v33);
  v27 = v18;
  sub_1000298FC();
  *&v12[*(v31 + 36)] = 257;
  sub_10000C560();
  sub_100029CDC();

  return sub_10000C924(v12);
}

unint64_t sub_10000C178()
{
  result = qword_10003D018;
  if (!qword_10003D018)
  {
    sub_1000028A4(&qword_10003D008, &qword_10002DDD8);
    sub_10000C204();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003D018);
  }

  return result;
}

unint64_t sub_10000C204()
{
  result = qword_10003D020;
  if (!qword_10003D020)
  {
    sub_1000028A4(&qword_10003D028, &qword_10002DDE8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003D020);
  }

  return result;
}

uint64_t sub_10000C268(uint64_t a1)
{
  sub_1000026A4(&qword_10003D008, &qword_10002DDD8);
  sub_10000350C();
  (*(v2 + 8))(a1);
  return a1;
}

uint64_t sub_10000C2C8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RunShortcutRectangularWidgetView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10000C32C()
{
  v1 = type metadata accessor for RunShortcutRectangularWidgetView(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = v0 + v3;

  v6 = *(v1 + 28);
  sub_1000026A4(&qword_10003D038, &qword_10002F5D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_10002997C();
    sub_10000350C();
    (*(v7 + 8))(v5 + v6);
  }

  else
  {
  }

  sub_10000C470(*(v5 + *(v1 + 32)), *(v5 + *(v1 + 32) + 8));

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_10000C470(uint64_t result, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return v2;
}

uint64_t sub_10000C47C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RunShortcutRectangularWidgetView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10000C4E0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for RunShortcutRectangularWidgetView(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_10000BE14(a1, v6, a2);
}

unint64_t sub_10000C560()
{
  result = qword_10003D050;
  if (!qword_10003D050)
  {
    sub_1000028A4(&qword_10003D048, &qword_10002DE08);
    sub_10000C5EC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003D050);
  }

  return result;
}

unint64_t sub_10000C5EC()
{
  result = qword_10003D058;
  if (!qword_10003D058)
  {
    sub_1000298EC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003D058);
  }

  return result;
}

uint64_t sub_10000C644(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_10000C654@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_100029AFC();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000026A4(&qword_10003D038, &qword_10002F5D0);
  __chkstk_darwin(v8);
  v10 = &v14 - v9;
  sub_10000C8B4(v2, &v14 - v9);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_10002997C();
    return (*(*(v11 - 8) + 32))(a1, v10, v11);
  }

  else
  {
    sub_10002A1FC();
    v13 = sub_100029C3C();
    sub_10002993C();

    sub_100029AEC();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v7, v4);
  }
}

uint64_t sub_10000C83C@<X0>(uint64_t a1@<X8>)
{
  result = sub_100029ACC();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_10000C8A4(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_10000C8B4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000026A4(&qword_10003D038, &qword_10002F5D0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10000C924(uint64_t a1)
{
  v2 = sub_1000026A4(&qword_10003D048, &qword_10002DE08);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10000C98C()
{
  sub_1000028A4(&qword_10003D008, &qword_10002DDD8);
  sub_10000C178();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_10000CA30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1000026A4(&qword_10003C998, &unk_10002D440);
  sub_10000ED0C();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a1;
  }

  else
  {
    sub_1000026A4(&qword_10003D068, &qword_10002DE58);
    sub_10000ED0C();
    if (*(v11 + 84) != a2)
    {
      v13 = *(a1 + *(a3 + 24) + 8);
      if (v13 > 1)
      {
        return (v13 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }

    v8 = v10;
    v9 = a1 + *(a3 + 20);
  }

  return sub_100002984(v9, a2, v8);
}

void sub_10000CB48(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_1000026A4(&qword_10003C998, &unk_10002D440);
  sub_10000ED0C();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = a1;
  }

  else
  {
    sub_1000026A4(&qword_10003D068, &qword_10002DE58);
    sub_10000ED0C();
    if (*(v13 + 84) != a3)
    {
      *(a1 + *(a4 + 24) + 8) = -a2;
      return;
    }

    v10 = v12;
    v11 = a1 + *(a4 + 20);
  }

  sub_1000026EC(v11, a2, a2, v10);
}

uint64_t type metadata accessor for EmptyShortcutComplicationView(uint64_t a1)
{
  result = qword_10003D0C8;
  if (!qword_10003D0C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10000CC98(uint64_t a1)
{
  sub_10000CD6C(319, &qword_10003CA08, &type metadata accessor for WidgetFamily);
  if (v1 <= 0x3F)
  {
    sub_10000CD6C(319, &unk_10003D0D8, &type metadata accessor for WidgetRenderingMode);
    if (v2 <= 0x3F)
    {
      sub_10000CDC0();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_10000CD6C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_10002998C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_10000CDC0()
{
  if (!qword_10003CFC8)
  {
    v0 = sub_10002998C();
    if (!v1)
    {
      atomic_store(v0, &qword_10003CFC8);
    }
  }
}

uint64_t sub_10000CE2C@<X0>(uint64_t a1@<X8>)
{
  v3 = v1;
  v5 = sub_100029AFC();
  sub_1000028EC();
  v7 = v6;
  __chkstk_darwin(v8);
  sub_10000ECC8();
  sub_1000026A4(&qword_10003CA78, &qword_10002DF40);
  sub_10000350C();
  sub_100003534();
  __chkstk_darwin(v9);
  v11 = &v15 - v10;
  sub_10000EB3C(v3, &v15 - v10, &qword_10003CA78, &qword_10002DF40);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_100029F4C();
    sub_10000350C();
    return (*(v12 + 32))(a1, v11);
  }

  else
  {
    sub_10002A1FC();
    v14 = sub_100029C3C();
    sub_10002993C();

    sub_100029AEC();
    swift_getAtKeyPath();

    return (*(v7 + 8))(v2, v5);
  }
}

uint64_t sub_10000CFFC@<X0>(uint64_t a1@<X8>)
{
  v4 = sub_100029AFC();
  sub_1000028EC();
  v6 = v5;
  __chkstk_darwin(v7);
  sub_10000ECC8();
  sub_1000026A4(&qword_10003CF08, &qword_10002DCE0);
  sub_10000350C();
  sub_100003534();
  __chkstk_darwin(v8);
  v10 = &v15 - v9;
  v11 = type metadata accessor for EmptyShortcutComplicationView(0);
  sub_10000EB3C(v1 + *(v11 + 20), v10, &qword_10003CF08, &qword_10002DCE0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_100029F0C();
    sub_10000350C();
    return (*(v12 + 32))(a1, v10);
  }

  else
  {
    sub_10002A1FC();
    v14 = sub_100029C3C();
    sub_10002993C();

    sub_100029AEC();
    swift_getAtKeyPath();

    return (*(v6 + 8))(v2, v4);
  }
}

uint64_t sub_10000D1D4@<X0>(uint64_t a1@<X8>)
{
  v53 = a1;
  v54 = sub_1000026A4(&qword_10003D110, &qword_10002DED0);
  sub_10000350C();
  sub_100003534();
  __chkstk_darwin(v3);
  v48 = (&v47 - v4);
  v50 = sub_1000026A4(&qword_10003D118, &qword_10002DED8);
  sub_10000350C();
  sub_100003534();
  __chkstk_darwin(v5);
  v49 = &v47 - v6;
  v51 = sub_1000026A4(&qword_10003D120, &qword_10002DEE0);
  sub_10000350C();
  sub_100003534();
  __chkstk_darwin(v7);
  v9 = &v47 - v8;
  v10 = sub_1000026A4(&qword_10003D128, &qword_10002DEE8);
  sub_10000350C();
  sub_100003534();
  __chkstk_darwin(v11);
  v13 = &v47 - v12;
  v52 = sub_1000026A4(&qword_10003D130, &qword_10002DEF0);
  sub_10000350C();
  sub_100003534();
  __chkstk_darwin(v14);
  v16 = &v47 - v15;
  v17 = type metadata accessor for RunShortcutRectangularWidgetView(0);
  sub_10000350C();
  __chkstk_darwin(v18);
  v20 = (&v47 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = sub_100029F4C();
  sub_1000028EC();
  v23 = v22;
  __chkstk_darwin(v24);
  sub_10000ECC8();
  sub_10000CE2C(v2);
  v25 = (*(v23 + 88))(v2, v21);
  if (v25 == enum case for WidgetFamily.accessoryCorner(_:))
  {
    v26 = v49;
    sub_10000DB1C(v1, v49);
    v27 = *(v50 + 36);
    *(v26 + v27) = swift_getKeyPath();
    sub_1000026A4(&qword_10003CA78, &qword_10002DF40);
    swift_storeEnumTagMultiPayload();
    sub_10000EB3C(v26, v13, &qword_10003D118, &qword_10002DED8);
    swift_storeEnumTagMultiPayload();
    sub_10000ECE0();
    sub_10000EB98(v28, v29, &unk_10002DD84);
    sub_10000E870();
    sub_100029B6C();
    sub_10000EB3C(v16, v9, &qword_10003D130, &qword_10002DEF0);
    swift_storeEnumTagMultiPayload();
    sub_10000E7B4();
    sub_10000EAD4();
    sub_10000ECF8();
    sub_100029B6C();
    sub_10000338C(v16, &qword_10003D130, &qword_10002DEF0);
    return sub_10000338C(v26, &qword_10003D118, &qword_10002DED8);
  }

  else
  {
    v49 = v10;
    if (v25 == enum case for WidgetFamily.accessoryRectangular(_:))
    {
      v31 = v13;
      v48 = sub_10000D828();
      v32 = sub_10002A0DC();
      v33 = sub_10002A0DC();
      v34 = sub_100028FF4(v32);

      v35 = sub_10002A0EC();
      v37 = v36;

      v38 = sub_100029DCC();
      v39 = *(v17 + 28);
      *(v20 + v39) = swift_getKeyPath();
      sub_1000026A4(&qword_10003D038, &qword_10002F5D0);
      swift_storeEnumTagMultiPayload();
      v40 = v20 + *(v17 + 32);
      *v40 = swift_getKeyPath();
      v40[8] = 0;
      *v20 = v48;
      v20[1] = v35;
      v20[2] = v37;
      v20[3] = v38;
      sub_10000C2C8(v20, v31);
      swift_storeEnumTagMultiPayload();
      sub_10000ECE0();
      sub_10000EB98(v41, v42, &unk_10002DD84);
      sub_10000E870();
      sub_100029B6C();
      sub_10000EB3C(v16, v9, &qword_10003D130, &qword_10002DEF0);
      swift_storeEnumTagMultiPayload();
      sub_10000E7B4();
      sub_10000EAD4();
      sub_10000ECF8();
      sub_100029B6C();
      sub_10000338C(v16, &qword_10003D130, &qword_10002DEF0);
      return sub_10000EBE0(v20, type metadata accessor for RunShortcutRectangularWidgetView);
    }

    else
    {
      v43 = sub_100029E4C();
      v44 = v48;
      *v48 = v43;
      *(v44 + 8) = v45;
      v46 = sub_1000026A4(&qword_10003D138, &qword_10002DEF8);
      sub_10000D8A4(v1, (v44 + *(v46 + 44)));
      sub_10000EB3C(v44, v9, &qword_10003D110, &qword_10002DED0);
      swift_storeEnumTagMultiPayload();
      sub_10000E7B4();
      sub_10000EAD4();
      sub_10000ECF8();
      sub_100029B6C();
      sub_10000338C(v44, &qword_10003D110, &qword_10002DED0);
      return (*(v23 + 8))(v2, v21);
    }
  }
}

id sub_10000D828()
{
  v0 = [objc_opt_self() whiteColor];
  v1 = [v0 RGBAValue];

  v2 = objc_allocWithZone(WFWorkflowIcon);
  return sub_1000129C8(v1, 0xF000u, 0, 0xF000000000000000);
}

uint64_t sub_10000D8A4@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = sub_1000026A4(&qword_10003D118, &qword_10002DED8);
  v5 = v4 - 8;
  v6 = __chkstk_darwin(v4);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v23 - v9;
  v11 = sub_100029ECC();
  v12 = *(v11 - 8);
  v13 = __chkstk_darwin(v11);
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v23 - v16;
  sub_100029EBC();
  sub_10000DB1C(a1, v10);
  v18 = *(v5 + 44);
  *&v10[v18] = swift_getKeyPath();
  sub_1000026A4(&qword_10003CA78, &qword_10002DF40);
  swift_storeEnumTagMultiPayload();
  v19 = *(v12 + 16);
  v19(v15, v17, v11);
  sub_10000EB3C(v10, v8, &qword_10003D118, &qword_10002DED8);
  v19(a2, v15, v11);
  v20 = sub_1000026A4(&qword_10003D1A8, &qword_10002DFC0);
  sub_10000EB3C(v8, &a2[*(v20 + 48)], &qword_10003D118, &qword_10002DED8);
  sub_10000338C(v10, &qword_10003D118, &qword_10002DED8);
  v21 = *(v12 + 8);
  v21(v17, v11);
  sub_10000338C(v8, &qword_10003D118, &qword_10002DED8);
  return (v21)(v15, v11);
}

uint64_t sub_10000DB1C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v95 = a2;
  v78 = sub_100029E6C();
  v77 = *(v78 - 8);
  __chkstk_darwin(v78);
  v76 = &v65 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = sub_100029D7C();
  v67 = *(v68 - 8);
  __chkstk_darwin(v68);
  v66 = &v65 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = sub_100029F0C();
  v72 = *(v73 - 8);
  v5 = __chkstk_darwin(v73);
  v71 = &v65 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v82 = &v65 - v7;
  v8 = sub_10002989C();
  v80 = *(v8 - 8);
  v81 = v8;
  v9 = __chkstk_darwin(v8);
  v69 = (&v65 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v9);
  v79 = (&v65 - v11);
  v96 = type metadata accessor for WidgetSStackView(0);
  __chkstk_darwin(v96);
  v70 = &v65 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v94 = sub_1000026A4(&qword_10003D190, &qword_10002F8B0);
  v75 = *(v94 - 8);
  __chkstk_darwin(v94);
  v74 = &v65 - v13;
  v91 = sub_1000026A4(&qword_10003D198, &unk_10002DFB0);
  __chkstk_darwin(v91);
  v93 = &v65 - v14;
  v15 = sub_1000298DC();
  v86 = *(v15 - 8);
  v87 = v15;
  __chkstk_darwin(v15);
  v17 = &v65 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1000298CC();
  v83 = *(v18 - 8);
  v84 = v18;
  __chkstk_darwin(v18);
  v85 = (&v65 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v92 = sub_1000298EC();
  v89 = *(v92 - 8);
  __chkstk_darwin(v92);
  v88 = &v65 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_100029F4C();
  v22 = *(v21 - 8);
  v23 = __chkstk_darwin(v21);
  v25 = &v65 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v27 = &v65 - v26;
  v90 = a1;
  sub_10000CE2C(&v65 - v26);
  v28 = *(v22 + 104);
  v28(v25, enum case for WidgetFamily.accessoryInline(_:), v21);
  sub_10000EB98(&qword_10003D1A0, &type metadata accessor for WidgetFamily, &protocol conformance descriptor for WidgetFamily);
  sub_10002A14C();
  sub_10002A14C();
  v29 = *(v22 + 8);
  v29(v25, v21);
  v29(v27, v21);
  if (v97 == v99 || (sub_10000CE2C(v27), v28(v25, enum case for WidgetFamily.accessoryRectangular(_:), v21), sub_10002A14C(), sub_10002A14C(), v29(v25, v21), v29(v27, v21), v97 == v99))
  {
    v30 = sub_10000D828();
    v31 = [v30 icon];

    v32 = v84;
    v33 = v85;
    *v85 = 0x403E000000000000;
    (*(v83 + 104))(v33, enum case for IconSize.customHeight(_:), v32);
    *v17 = [objc_opt_self() whiteColor];
    v17[8] = 0;
    (*(v86 + 104))(v17, enum case for IconView.DisplayMode.customColor(_:), v87);
    v34 = v88;
    sub_1000298FC();
    v35 = v89;
    v36 = v92;
    v89[2](v93, v34, v92);
    swift_storeEnumTagMultiPayload();
    sub_10000EB98(&qword_10003D058, &type metadata accessor for IconView, &protocol conformance descriptor for IconView);
    v37 = sub_10000EB98(&qword_10003D178, type metadata accessor for WidgetSStackView, &unk_10002E844);
    v97 = v96;
    v98 = v37;
    swift_getOpaqueTypeConformance2();
    sub_100029B6C();
    return (v35[1])(v34, v36);
  }

  else
  {
    v39 = sub_100029DAC();
    v40 = v79;
    v41 = v80;
    *v79 = v39;
    v42 = enum case for SStackFill.color(_:);
    v43 = *(v41 + 104);
    v43(v40, enum case for SStackFill.color(_:), v81);
    v44 = v82;
    sub_10000CFFC(v82);
    v45 = v71;
    sub_100029EEC();
    v46 = sub_100029EDC();
    v47 = *(v72 + 8);
    v48 = v73;
    (v47)(v45, v73);
    v89 = v47;
    (v47)(v44, v48);
    if (v46)
    {
      (*(v67 + 104))(v66, enum case for Color.RGBColorSpace.sRGB(_:), v68);
      v49 = sub_100029DDC();
    }

    else
    {
      sub_100029DAC();
      v49 = sub_100029DBC();
    }

    v50 = v69;
    *v69 = v49;
    v51 = v81;
    v43(v50, v42, v81);
    v52 = *(v80 + 32);
    v53 = v70;
    v52(v70, v79, v51);
    type metadata accessor for WidgetSStackView.Content(0);
    swift_storeEnumTagMultiPayload();
    v52((v53 + *(v96 + 20)), v50, v51);
    v54 = v82;
    sub_10000CFFC(v82);
    sub_100029EFC();
    LOBYTE(v52) = sub_100029EDC();
    v55 = v89;
    (v89)(v45, v48);
    (v55)(v54, v48);
    v56 = v77;
    v57 = &enum case for BlendMode.destinationOut(_:);
    if ((v52 & 1) == 0)
    {
      v57 = &enum case for BlendMode.normal(_:);
    }

    v58 = v76;
    v59 = v78;
    (*(v77 + 104))(v76, *v57, v78);
    v60 = sub_10000EB98(&qword_10003D178, type metadata accessor for WidgetSStackView, &unk_10002E844);
    v61 = v74;
    v62 = v96;
    sub_100029CBC();
    (*(v56 + 8))(v58, v59);
    sub_10000EBE0(v53, type metadata accessor for WidgetSStackView);
    v63 = v75;
    v64 = v94;
    (*(v75 + 16))(v93, v61, v94);
    swift_storeEnumTagMultiPayload();
    sub_10000EB98(&qword_10003D058, &type metadata accessor for IconView, &protocol conformance descriptor for IconView);
    v97 = v62;
    v98 = v60;
    swift_getOpaqueTypeConformance2();
    sub_100029B6C();
    return (*(v63 + 8))(v61, v64);
  }
}

unint64_t sub_10000E7B4()
{
  result = qword_10003D140;
  if (!qword_10003D140)
  {
    sub_1000028A4(&qword_10003D130, &qword_10002DEF0);
    sub_10000EB98(&qword_10003D148, type metadata accessor for RunShortcutRectangularWidgetView, &unk_10002DD84);
    sub_10000E870();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003D140);
  }

  return result;
}

unint64_t sub_10000E870()
{
  result = qword_10003D150;
  if (!qword_10003D150)
  {
    sub_1000028A4(&qword_10003D118, &qword_10002DED8);
    sub_10000E92C();
    sub_10000EB98(&qword_10003D180, type metadata accessor for ComplicationPaddingModifier, "ͽ");
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003D150);
  }

  return result;
}

unint64_t sub_10000E92C()
{
  result = qword_10003D158;
  if (!qword_10003D158)
  {
    sub_1000028A4(&qword_10003D160, &qword_10002DF00);
    sub_10000E9B0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003D158);
  }

  return result;
}

unint64_t sub_10000E9B0()
{
  result = qword_10003D168;
  if (!qword_10003D168)
  {
    sub_1000028A4(&qword_10003D170, &qword_10002DF08);
    sub_10000EB98(&qword_10003D058, &type metadata accessor for IconView, &protocol conformance descriptor for IconView);
    type metadata accessor for WidgetSStackView(255);
    sub_10000EB98(&qword_10003D178, type metadata accessor for WidgetSStackView, &unk_10002E844);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003D168);
  }

  return result;
}

unint64_t sub_10000EAD4()
{
  result = qword_10003D188;
  if (!qword_10003D188)
  {
    sub_1000028A4(&qword_10003D110, &qword_10002DED0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003D188);
  }

  return result;
}

uint64_t sub_10000EB3C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  sub_10000ED18(a1, a2, a3, a4);
  sub_10000350C();
  (*(v6 + 16))(v4, v5);
  return v4;
}

uint64_t sub_10000EB98(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10000EBE0(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_10000350C();
  (*(v3 + 8))(a1);
  return a1;
}

unint64_t sub_10000EC3C()
{
  result = qword_10003D1B0;
  if (!qword_10003D1B0)
  {
    sub_1000028A4(&qword_10003D1B8, &qword_10002DFC8);
    sub_10000E7B4();
    sub_10000EAD4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003D1B0);
  }

  return result;
}

uint64_t sub_10000ED18(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{

  return sub_1000026A4(a3, a4);
}

unint64_t StaticString._asString.getter(unint64_t result, uint64_t a2, char a3)
{
  if ((a3 & 1) == 0)
  {
    if (result)
    {
      return sub_10002A11C();
    }

    __break(1u);
  }

  if (HIDWORD(result))
  {
    __break(1u);
    goto LABEL_9;
  }

  if ((result & 0xFFFFF800) != 0xD800)
  {
    if (result >> 16 <= 0x10)
    {
      return sub_10002A11C();
    }

LABEL_9:
    __break(1u);
    return sub_10002A11C();
  }

  __break(1u);
  return result;
}

uint64_t *NSBundle._current.unsafeMutableAddressor()
{
  if (qword_10003C8C8 != -1)
  {
    sub_10000EF48(&qword_10003C8C8);
  }

  return &static NSBundle._current;
}

id sub_10000EE70()
{
  _s2__CMa();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  static NSBundle._current = result;
  return result;
}

id static NSBundle._current.getter()
{
  if (qword_10003C8C8 != -1)
  {
    sub_10000EF48(&qword_10003C8C8);
  }

  v1 = static NSBundle._current;

  return v1;
}

uint64_t sub_10000EF48(uint64_t a1)
{

  return swift_once();
}

unint64_t sub_10000EF6C()
{
  result = qword_10003D258;
  if (!qword_10003D258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003D258);
  }

  return result;
}

unint64_t sub_10000EFC4()
{
  result = qword_10003D260;
  if (!qword_10003D260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003D260);
  }

  return result;
}

unint64_t sub_10000F01C()
{
  result = qword_10003D268;
  if (!qword_10003D268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003D268);
  }

  return result;
}

unint64_t sub_10000F074()
{
  result = qword_10003D270;
  if (!qword_10003D270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003D270);
  }

  return result;
}

uint64_t sub_10000F118()
{
  v0 = sub_10002978C();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10002988C();
  __chkstk_darwin(v4 - 8);
  v5 = sub_10002A0CC();
  __chkstk_darwin(v5 - 8);
  v6 = sub_1000297AC();
  sub_10000FBA4(v6, qword_100041498);
  sub_10000FB6C(v6, qword_100041498);
  sub_10002A05C();
  sub_10002987C();
  (*(v1 + 104))(v3, enum case for LocalizedStringResource.BundleDescription.main(_:), v0);
  return sub_1000297BC();
}

uint64_t sub_10000F300()
{
  sub_1000295AC();
  sub_1000028EC();
  v30 = v1;
  v31 = v0;
  __chkstk_darwin(v0);
  sub_100002900();
  v29 = v3 - v2;
  v4 = sub_1000026A4(&unk_10003DBA0, &unk_10002D350);
  v5 = sub_100002910(v4);
  v6 = __chkstk_darwin(v5);
  v28 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v9 = &v28 - v8;
  v10 = sub_1000026A4(&qword_10003C950, &unk_10002E680);
  v11 = sub_100002910(v10);
  __chkstk_darwin(v11);
  v13 = &v28 - v12;
  v14 = sub_10002978C();
  sub_1000028EC();
  v16 = v15;
  __chkstk_darwin(v17);
  sub_100002900();
  v20 = v19 - v18;
  v21 = sub_10002988C();
  v22 = sub_100002910(v21);
  __chkstk_darwin(v22);
  sub_100002900();
  v23 = sub_10002A0CC();
  v24 = sub_100002910(v23);
  __chkstk_darwin(v24);
  sub_100002900();
  v25 = sub_1000297AC();
  __chkstk_darwin(v25);
  sub_100002900();
  sub_1000026A4(&unk_10003DBB0, &unk_10002E150);
  sub_10002A05C();
  sub_10002987C();
  (*(v16 + 104))(v20, enum case for LocalizedStringResource.BundleDescription.main(_:), v14);
  sub_1000297BC();
  sub_10000FC08(v13);
  sub_10002931C();
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0;
  sub_10000FC08(v9);
  sub_10000FC08(v28);
  (*(v30 + 104))(v29, enum case for InputConnectionBehavior.default(_:), v31);
  sub_10000FA50();
  v26 = sub_1000293EC();
  sub_1000026A4(&qword_10003D278, &qword_10002F7C0);
  sub_10002924C();
  v32 = 0u;
  v33 = 0u;
  *&v34 = 0;
  sub_10002923C();
  sub_1000291FC();
  return v26;
}

uint64_t sub_10000F700@<X0>(uint64_t a1@<X8>)
{
  if (qword_10003C8D0 != -1)
  {
    swift_once();
  }

  v2 = sub_1000297AC();
  v3 = sub_10000FB6C(v2, qword_100041498);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_10000F7AC(uint64_t a1, uint64_t a2)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  v5 = sub_10000A670();
  *v4 = v2;
  v4[1] = sub_10000F858;

  return WidgetConfigurationIntent.perform()(a2, v5);
}

uint64_t sub_10000F858()
{
  v2 = *v1;

  if (v0)
  {
    v4 = *(v2 + 8);

    return v4();
  }

  return result;
}

uint64_t sub_10000F960@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10000F300();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_10000F988(uint64_t a1)
{
  v2 = sub_10000EF6C();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

uint64_t sub_10000F9C4(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 16))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10000FA04(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

unint64_t sub_10000FA50()
{
  result = qword_10003DAA0;
  if (!qword_10003DAA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003DAA0);
  }

  return result;
}

uint64_t sub_10000FAC4()
{
  if (qword_10003C940 != -1)
  {
    swift_once();
  }

  **(v0 + 16) = qword_1000415B8;
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_10000FB6C(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t *sub_10000FBA4(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t sub_10000FC08(uint64_t a1)
{

  return sub_1000026EC(a1, 1, 1, v1);
}

uint64_t sub_10000FC50@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_100029B9C();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100029BAC();
  if (sub_100029BBC())
  {
    v6 = 0.97;
  }

  else
  {
    v6 = 1.0;
  }

  sub_100029E7C();
  v8 = v7;
  v10 = v9;
  (*(v3 + 32))(a1, v5, v2);
  result = sub_1000026A4(&qword_10003D280, qword_10002E1C0);
  v12 = a1 + *(result + 36);
  *v12 = v6;
  *(v12 + 8) = v6;
  *(v12 + 16) = v8;
  *(v12 + 24) = v10;
  return result;
}

unint64_t sub_10000FD84()
{
  result = qword_10003D288;
  if (!qword_10003D288)
  {
    sub_1000028A4(&qword_10003D280, qword_10002E1C0);
    sub_10000FE10();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003D288);
  }

  return result;
}

unint64_t sub_10000FE10()
{
  result = qword_10003D290;
  if (!qword_10003D290)
  {
    sub_100029B9C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003D290);
  }

  return result;
}

unint64_t sub_10000FE6C()
{
  result = qword_10003D298;
  if (!qword_10003D298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003D298);
  }

  return result;
}

double sub_10000FEC0@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = [a1 identifier];
  sub_10002A0EC();

  v5 = a1;
  v6 = [v5 name];
  sub_10002A0EC();

  sub_10001331C(v5);
  [v5 color];
  [v5 glyphCharacter];
  sub_100013380(v5);
  sub_1000110CC(v9);
  sub_10002934C();
  sub_10002934C();
  sub_10002934C();
  sub_10002934C();
  sub_10002934C();
  sub_10002934C();

  v7 = v9[1];
  *a2 = v9[0];
  *(a2 + 16) = v7;
  result = *&v10;
  *(a2 + 32) = v10;
  *(a2 + 48) = v11;
  return result;
}

id sub_100010044()
{
  v1 = *(v0 + 16);
  sub_10002933C();
  v2 = sub_10002A0DC();

  v3 = [v1 referenceForWorkflowID:v2];

  if (!v3)
  {
    sub_10002933C();
    v4 = sub_10002A0DC();

    v3 = [v1 uniqueVisibleReferenceForWorkflowName:v4];
  }

  return v3;
}

id sub_100010144()
{
  sub_10002933C();
  if ((v26 & 1) == 0)
  {
    sub_10002933C();
    if ((v25 & 0x8000000000000000) == 0)
    {
      if (!(v25 >> 16))
      {
        v14 = objc_allocWithZone(WFWorkflowIcon);
        v15 = v25;
        v16 = v25;
        return sub_1000129C8(v15, v16, 0, 0xF000000000000000);
      }

      goto LABEL_33;
    }

LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    v11 = sub_10002A26C();
    goto LABEL_17;
  }

  if (qword_10003C940 != -1)
  {
    sub_10000B164(&qword_10003C940);
  }

  sub_1000026A4(&qword_10003CF20, &qword_10002DD18);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_10002D840;
  sub_10002933C();
  *(v0 + 32) = v25;
  *(v0 + 40) = v26;
  v1 = sub_1000284B4(v0);

  if (sub_1000129A4(v1))
  {
    if ((v1 & 0xC000000000000001) != 0)
    {
      v2 = sub_10002A26C();
    }

    else
    {
      if (!*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_32;
      }

      v2 = *(v1 + 32);
    }

    v3 = v2;

    v4 = [v3 icon];
    goto LABEL_24;
  }

  sub_10002933C();
  if (v26)
  {
    v5 = sub_10002981C();
    v7 = v6;

    if (v7 >> 60 != 15)
    {
      sub_10000ADAC(0, &unk_10003DBE0, NSKeyedUnarchiver_ptr);
      sub_10000ADAC(0, &qword_10003CF18, WFConfiguredSystemAction_ptr);
      v24 = sub_10002A20C();
      sub_10000ADEC(v5, v7);
      if (v24)
      {
        v3 = [v24 previewIcon];

        goto LABEL_22;
      }
    }
  }

  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_10002D840;
  sub_10002933C();
  *(v8 + 32) = v25;
  *(v8 + 40) = v26;
  v9 = sub_1000284B4(v8);

  result = sub_1000129A4(v9);
  if (!result)
  {

    v17 = [objc_opt_self() clearBackground];
    v18 = objc_allocWithZone(WFSymbolIcon);
    v3 = sub_100012A5C(0x74732E322E707061, 0xEE0064332E6B6361, v17);
    goto LABEL_22;
  }

  if ((v9 & 0xC000000000000001) != 0)
  {
    goto LABEL_34;
  }

  if (*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v11 = *(v9 + 32);
LABEL_17:
    v12 = v11;

    v13 = [v12 icon];
    v3 = [v13 icon];

LABEL_22:
    objc_opt_self();
    v19 = swift_dynamicCastObjCClass();
    if (!v19)
    {

      v23 = objc_allocWithZone(WFWorkflowIcon);
      v15 = 0;
      v16 = -4096;
      return sub_1000129C8(v15, v16, 0, 0xF000000000000000);
    }

    v20 = [v19 glyph];
    v21 = objc_allocWithZone(WFWorkflowIcon);
    v4 = sub_1000129C8(0, v20, 0, 0xF000000000000000);
LABEL_24:
    v22 = v4;

    return v22;
  }

  __break(1u);
  return result;
}

uint64_t sub_100010588()
{
  v23 = sub_10002A04C();
  v0 = *(v23 - 8);
  __chkstk_darwin(v23);
  v22 = &v18 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_10002A0AC();
  __chkstk_darwin(v2 - 8);
  v3 = sub_1000026A4(&qword_10003C950, &unk_10002E680);
  __chkstk_darwin(v3 - 8);
  v24 = &v18 - v4;
  v5 = sub_10002978C();
  v19 = v5;
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10002988C();
  __chkstk_darwin(v9 - 8);
  v10 = sub_10002A0CC();
  __chkstk_darwin(v10 - 8);
  v21 = sub_1000297AC();
  __chkstk_darwin(v21);
  v11 = sub_10002960C();
  sub_10000FBA4(v11, qword_1000414B0);
  v20 = sub_10000FB6C(v11, qword_1000414B0);
  sub_10002A05C();
  sub_10002987C();
  v12 = enum case for LocalizedStringResource.BundleDescription.main(_:);
  v13 = *(v6 + 104);
  v18 = v6 + 104;
  v13(v8, enum case for LocalizedStringResource.BundleDescription.main(_:), v5);
  sub_1000297BC();
  sub_10002A09C();
  v25._countAndFlagsBits = 0;
  v25._object = 0xE000000000000000;
  sub_10002A08C(v25);
  v14 = v22;
  v15 = v23;
  (*(v0 + 104))(v22, enum case for String.LocalizationValue.Placeholder.int(_:), v23);
  sub_10002A06C();
  (*(v0 + 8))(v14, v15);
  v26._countAndFlagsBits = 0x756374726F687320;
  v26._object = 0xEA00000000007374;
  sub_10002A08C(v26);
  sub_10002A0BC();
  sub_10002987C();
  v13(v8, v12, v19);
  v16 = v24;
  sub_1000297BC();
  sub_1000026EC(v16, 0, 1, v21);
  return sub_1000295FC();
}

uint64_t sub_1000109FC@<X0>(uint64_t a1@<X8>)
{
  v31 = a1;
  v1 = sub_1000026A4(&qword_10003D340, &qword_10002F2A0);
  v2 = sub_100002910(v1);
  __chkstk_darwin(v2);
  v4 = &v29 - v3;
  v5 = sub_1000026A4(&qword_10003C950, &unk_10002E680);
  v6 = sub_100002910(v5);
  __chkstk_darwin(v6);
  v30 = &v29 - v7;
  v29 = sub_1000297AC();
  __chkstk_darwin(v29);
  sub_100002900();
  v8 = sub_10002A0AC();
  v9 = sub_100002910(v8);
  __chkstk_darwin(v9);
  sub_100002900();
  v10 = objc_autoreleasePoolPush();
  sub_10002933C();
  if (v33)
  {
    v11 = sub_100010DD8(v32, v33, 31.0, 31.0);
    v13 = v12;
  }

  else
  {
    v14 = objc_opt_self();
    v15 = sub_100010144();
    v16 = [v14 imageWithIcon:v15 size:{31.0, 31.0}];

    if (v16)
    {
      v11 = sub_10001344C(v16);
      v13 = v17;
    }

    else
    {
      v11 = 0;
      v13 = 0xF000000000000000;
    }
  }

  objc_autoreleasePoolPop(v10);
  sub_10002933C();
  if (v33 && (v18 = sub_10002981C(), v20 = v19, , v20 >> 60 != 15) && (sub_10000ADAC(0, &unk_10003DBE0, NSKeyedUnarchiver_ptr), sub_10000ADAC(0, &qword_10003CF18, WFConfiguredSystemAction_ptr), v26 = sub_10002A20C(), sub_10000ADEC(v18, v20), v26))
  {
    v27 = [v26 name];

    v22 = sub_10002A0EC();
    v21 = v28;
  }

  else
  {
    sub_10002933C();
    v22 = v32;
    v21 = v33;
  }

  v23 = 1;
  sub_10002A09C();
  v34._countAndFlagsBits = 0;
  v34._object = 0xE000000000000000;
  sub_10002A08C(v34);
  v35._countAndFlagsBits = v22;
  v35._object = v21;
  sub_10002A07C(v35);

  v36._countAndFlagsBits = 0;
  v36._object = 0xE000000000000000;
  sub_10002A08C(v36);
  sub_10002979C();
  sub_1000026EC(v30, 1, 1, v29);
  if (v13 >> 60 != 15)
  {
    sub_1000133F4(v11, v13);
    sub_1000294BC();
    v23 = 0;
  }

  v24 = sub_1000294CC();
  sub_1000026EC(v4, v23, 1, v24);
  sub_1000294DC();
  return sub_10000ADEC(v11, v13);
}

void *sub_100010DD8(uint64_t a1, uint64_t a2, double a3, double a4)
{
  v8 = [objc_opt_self() mainScreen];
  [v8 scale];
  v10 = v9;

  v11 = [objc_allocWithZone(ISImageDescriptor) initWithSize:a3 scale:{a4, v10}];
  sub_10000ADAC(0, &qword_10003D348, ISIcon_ptr);

  v12 = sub_100010FA8(a1, a2);
  v13 = [v12 prepareImageForDescriptor:v11];
  v14 = v13;
  if (!v13)
  {

    return v14;
  }

  v15 = [v13 CGImage];

  if (!v15)
  {

    return 0;
  }

  v16 = [objc_opt_self() imageWithCGImage:v15];
  v17 = [v16 PNGRepresentation];
  if (!v17)
  {

    return 0;
  }

  v18 = v17;
  v14 = sub_10002983C();

  return v14;
}

id sub_100010FA8(uint64_t a1, uint64_t a2)
{
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v3 = sub_10002A0DC();

  v4 = [v2 initWithBundleIdentifier:v3];

  return v4;
}

uint64_t sub_10001101C()
{
  if (qword_10003C940 != -1)
  {
    swift_once();
  }

  qword_1000414C8 = qword_1000415B8;
}

uint64_t sub_100011080()
{
  if (qword_10003C940 != -1)
  {
    sub_10000B164(&qword_10003C940);
  }
}

uint64_t sub_1000110CC@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_1000297AC();
  v3 = sub_100002910(v2);
  __chkstk_darwin(v3);
  sub_100002900();
  sub_1000026A4(&qword_10003D308, &qword_10002E630);
  sub_10002977C();
  v4 = sub_10002936C();
  sub_10002977C();
  v5 = sub_10002936C();
  sub_1000026A4(&qword_10003D310, &qword_10002E638);
  sub_10002977C();
  v6 = sub_10002936C();
  sub_1000026A4(&qword_10003D318, &qword_10002E640);
  sub_10002977C();
  v7 = sub_10002937C();
  sub_10002977C();
  v8 = sub_10002937C();
  sub_10002977C();
  v9 = sub_10002936C();
  sub_10002977C();
  result = sub_10002936C();
  *a1 = v4;
  a1[1] = v5;
  a1[2] = v6;
  a1[3] = v7;
  a1[4] = v8;
  a1[5] = v9;
  a1[6] = result;
  return result;
}

uint64_t sub_1000112EC(uint64_t a1, uint64_t a2)
{
  *(v2 + 72) = a1;
  *(v2 + 80) = a2;
  return sub_1000134DC();
}

uint64_t sub_100011300()
{
  sub_100006164();
  v1 = sub_100028724();
  if (v1)
  {
    sub_10000FEC0(v1, v0 + 16);
    v2 = *(v0 + 16);
    v3 = *(v0 + 32);
    v4 = *(v0 + 48);
    v5 = *(v0 + 64);
  }

  else
  {
    v5 = 0;
    v2 = 0uLL;
    v3 = 0uLL;
    v4 = 0uLL;
  }

  v6 = *(v0 + 72);
  *v6 = v2;
  *(v6 + 16) = v3;
  *(v6 + 32) = v4;
  *(v6 + 48) = v5;
  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_100011398()
{
  sub_100006164();
  v2 = v1;
  v3 = swift_task_alloc();
  *(v0 + 16) = v3;
  *v3 = v0;
  v3[1] = sub_1000134D8;

  return sub_10001142C(v2);
}

uint64_t sub_10001142C(uint64_t a1)
{
  *(v2 + 72) = a1;
  *(v2 + 80) = v1;
  return sub_1000134DC();
}

char *sub_100011440()
{
  v4 = *(v0 + 80);
  v5 = sub_1000284B4(*(v0 + 72));
  v6 = sub_1000129A4(v5);
  if (v6)
  {
    v7 = v6;
    result = sub_10001353C(v6);
    if (v7 < 0)
    {
      __break(1u);
      return result;
    }

    sub_100013574();
    do
    {
      if (v3)
      {
        v9 = sub_10002A26C();
      }

      else
      {
        v9 = *(v5 + 8 * v1 + 32);
      }

      sub_10000FEC0(v9, v0 + 16);
      sub_100013560();
      if (v11)
      {
        sub_100012D0C((v10 > 1), v2, 1);
        v4 = v14;
      }

      sub_100013510();
    }

    while (!v12);
  }

  else
  {

    v4 = _swiftEmptyArrayStorage;
  }

  sub_100013594();

  return v13(v4);
}

uint64_t sub_100011564(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1000134D8;

  return sub_10001160C(a1, a2);
}

uint64_t sub_10001160C(uint64_t a1, uint64_t a2)
{
  v3[10] = a2;
  v3[11] = v2;
  v3[9] = a1;
  return sub_1000134DC();
}

char *sub_100011624()
{
  v4 = v0[11];
  v5 = sub_1000288CC(v0[9], v0[10]);
  v6 = sub_1000129A4(v5);
  if (v6)
  {
    v7 = v6;
    result = sub_10001353C(v6);
    if (v7 < 0)
    {
      __break(1u);
      return result;
    }

    sub_100013574();
    do
    {
      if (v3)
      {
        v9 = sub_10002A26C();
      }

      else
      {
        v9 = *(v5 + 8 * v1 + 32);
      }

      sub_10000FEC0(v9, (v0 + 2));
      sub_100013560();
      if (v11)
      {
        sub_100012D0C((v10 > 1), v2, 1);
        v4 = v14;
      }

      sub_100013510();
    }

    while (!v12);
  }

  else
  {

    v4 = _swiftEmptyArrayStorage;
  }

  sub_100013594();

  return v13(v4);
}

uint64_t sub_100011760()
{
  sub_100006164();
  sub_1000117BC();
  sub_100013594();

  return v0();
}

char *sub_1000117BC()
{
  v0 = sub_100028844();
  v1 = sub_1000129A4(v0);
  if (!v1)
  {

    return _swiftEmptyArrayStorage;
  }

  v2 = v1;
  result = sub_100012D0C(0, v1 & ~(v1 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v4 = 0;
    do
    {
      if ((v0 & 0xC000000000000001) != 0)
      {
        v5 = sub_10002A26C();
      }

      else
      {
        v5 = *(v0 + 8 * v4 + 32);
      }

      sub_10000FEC0(v5, v12);
      v7 = _swiftEmptyArrayStorage[2];
      v6 = _swiftEmptyArrayStorage[3];
      if (v7 >= v6 >> 1)
      {
        sub_100012D0C((v6 > 1), v7 + 1, 1);
      }

      ++v4;
      _swiftEmptyArrayStorage[2] = v7 + 1;
      v8 = &_swiftEmptyArrayStorage[7 * v7];
      v9 = v12[0];
      v10 = v12[1];
      v11 = v12[2];
      v8[10] = v13;
      *(v8 + 3) = v10;
      *(v8 + 4) = v11;
      *(v8 + 2) = v9;
    }

    while (v2 != v4);

    return _swiftEmptyArrayStorage;
  }

  __break(1u);
  return result;
}

uint64_t sub_1000118F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a1;
  v6 = swift_task_alloc();
  *(v3 + 24) = v6;
  *v6 = v3;
  v6[1] = sub_1000119A4;

  return sub_100011564(a2, a3);
}

uint64_t sub_1000119A4(uint64_t a1)
{
  sub_100013588();
  v5 = v4;
  v6 = *v2;
  sub_1000134EC();
  *v7 = v6;

  if (!v1)
  {
    **(v5 + 16) = a1;
  }

  v8 = *(v6 + 8);

  return v8();
}

unint64_t sub_100011AAC()
{
  result = qword_10003D2A0;
  if (!qword_10003D2A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003D2A0);
  }

  return result;
}

unint64_t sub_100011B04()
{
  result = qword_10003D2A8;
  if (!qword_10003D2A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003D2A8);
  }

  return result;
}

uint64_t sub_100011B5C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100011080();
  *a1 = result;
  return result;
}

uint64_t sub_100011B84()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1000134D8;

  return sub_100011398();
}

uint64_t sub_100011C20(uint64_t a1)
{
  *(v2 + 16) = a1;
  v3 = *v1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_1000134C0;

  return sub_10001174C(v3);
}

uint64_t sub_100011CB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_100011D78;

  return EntityQuery.displayRepresentations(for:requestedComponents:)(a1, a2, a3, a4);
}

uint64_t sub_100011D78()
{
  sub_100006164();
  v3 = v2;
  sub_100013588();
  v4 = *v1;
  sub_1000134EC();
  *v5 = v4;

  sub_100013594();
  if (!v0)
  {
    v6 = v3;
  }

  return v7(v6);
}

unint64_t sub_100011E68()
{
  result = qword_10003D2B0;
  if (!qword_10003D2B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003D2B0);
  }

  return result;
}

unint64_t sub_100011EC0()
{
  result = qword_10003DAB0;
  if (!qword_10003DAB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003DAB0);
  }

  return result;
}

unint64_t sub_100011F18()
{
  result = qword_10003D2B8;
  if (!qword_10003D2B8)
  {
    sub_1000028A4(&qword_10003DAC0, qword_10002E280);
    sub_100011EC0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003D2B8);
  }

  return result;
}

uint64_t sub_100011F9C(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_10000FE6C();
  *v5 = v2;
  v5[1] = sub_100012050;

  return EntityQuery.results()(a1, a2, v6);
}

uint64_t sub_100012050()
{
  sub_100006164();
  sub_100013588();
  v1 = *v0;
  sub_1000134EC();
  *v2 = v1;

  v3 = *(v1 + 8);

  return v3();
}

uint64_t sub_100012134(uint64_t a1)
{
  *(v2 + 72) = a1;
  v3 = *v1;
  v4 = swift_task_alloc();
  *(v2 + 80) = v4;
  *v4 = v2;
  v4[1] = sub_1000121D4;

  return sub_1000112EC(v2 + 16, v3);
}

uint64_t sub_1000121D4(uint64_t a1)
{
  v2 = *v1;
  v3 = *v1;
  sub_1000134EC();
  *v4 = v3;
  v5 = *(v2 + 9);
  v6 = *v1;
  *v4 = *v1;

  v7 = v3[1];
  v8 = v3[2];
  v9 = v3[3];
  *(v5 + 48) = *(v2 + 8);
  *(v5 + 16) = v8;
  *(v5 + 32) = v9;
  *v5 = v7;
  v10 = *(v6 + 1);

  return v10();
}

double sub_10001230C@<D0>(uint64_t a1@<X8>)
{
  sub_1000110CC(v4);
  v2 = v4[1];
  *a1 = v4[0];
  *(a1 + 16) = v2;
  result = *&v5;
  *(a1 + 32) = v5;
  *(a1 + 48) = v6;
  return result;
}

unint64_t sub_10001235C()
{
  result = qword_10003D2C0;
  if (!qword_10003D2C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003D2C0);
  }

  return result;
}

unint64_t sub_1000123B4()
{
  result = qword_10003D2C8;
  if (!qword_10003D2C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003D2C8);
  }

  return result;
}

unint64_t sub_10001240C()
{
  result = qword_10003D2D0;
  if (!qword_10003D2D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003D2D0);
  }

  return result;
}

uint64_t sub_10001246C@<X0>(void *a1@<X8>)
{
  if (qword_10003C8E0 != -1)
  {
    swift_once();
  }

  *a1 = qword_1000414C8;
}

unint64_t sub_1000124DC()
{
  result = qword_10003D2D8;
  if (!qword_10003D2D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003D2D8);
  }

  return result;
}

unint64_t sub_100012534()
{
  result = qword_10003D2E0;
  if (!qword_10003D2E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003D2E0);
  }

  return result;
}

unint64_t sub_10001258C()
{
  result = qword_10003D2E8;
  if (!qword_10003D2E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003D2E8);
  }

  return result;
}

uint64_t sub_1000125EC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100010110();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_100012614@<X0>(uint64_t a1@<X8>)
{
  if (qword_10003C8D8 != -1)
  {
    swift_once();
  }

  v2 = sub_10002960C();
  v3 = sub_10000FB6C(v2, qword_1000414B0);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

unint64_t sub_1000126C0()
{
  result = qword_10003D2F0;
  if (!qword_10003D2F0)
  {
    sub_1000028A4(&qword_10003D2F8, &qword_10002E4B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003D2F0);
  }

  return result;
}

uint64_t sub_100012724(uint64_t a1)
{
  v2 = sub_10000FA50();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_100012774()
{
  result = qword_10003D300;
  if (!qword_10003D300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003D300);
  }

  return result;
}

uint64_t sub_1000127CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_100012050;

  return InstanceDisplayRepresentable.displayRepresentation(with:)(a1, a2, a3, a4);
}

uint64_t sub_100012890(uint64_t a1)
{
  v2 = sub_10001258C();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

__n128 sub_1000128DC(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_1000128F8(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 56))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100012938(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1000129A4(unint64_t a1)
{
  if (!(a1 >> 62))
  {
    return *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if ((a1 & 0x8000000000000000) == 0)
  {
    a1 &= 0xFFFFFFFFFFFFFF8uLL;
  }

  return _CocoaArrayWrapper.endIndex.getter(a1);
}

id sub_1000129C8(uint64_t a1, unsigned __int16 a2, uint64_t a3, unint64_t a4)
{
  if (a4 >> 60 == 15)
  {
    isa = 0;
  }

  else
  {
    isa = sub_10002982C().super.isa;
    sub_10000ADEC(a3, a4);
  }

  v10 = [v4 initWithBackgroundColorValue:a1 glyphCharacter:a2 customImageData:isa];

  return v10;
}

id sub_100012A5C(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = sub_10002A0DC();

  v6 = [v3 initWithSymbolName:v5 background:a3];

  return v6;
}

uint64_t sub_100012AC4(unint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a3 < a1 || (result = type metadata accessor for RunShortcutWidgetEntry(0), a1 + *(*(result - 8) + 72) * a2 <= a3))
  {
    v7 = type metadata accessor for RunShortcutWidgetEntry(0);

    return _swift_arrayInitWithTakeFrontToBack(a3, a1, a2, v7);
  }

  else if (a3 != a1)
  {

    return _swift_arrayInitWithTakeBackToFront(a3, a1, a2, result);
  }

  return result;
}

char *sub_100012B98(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[24 * a2] <= a3)
  {
    return sub_1000134FC(a3, result);
  }

  return result;
}

char *sub_100012BBC(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[24 * a2] <= a3)
  {
    return sub_1000134FC(a3, result);
  }

  return result;
}

uint64_t sub_100012BDC(unint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a3 < a1 || (result = sub_1000026A4(&qword_10003D330, &qword_10002FCD0), a1 + *(*(result - 8) + 72) * a2 <= a3))
  {
    v7 = sub_1000026A4(&qword_10003D330, &qword_10002FCD0);

    return _swift_arrayInitWithTakeFrontToBack(a3, a1, a2, v7);
  }

  else if (a3 != a1)
  {

    return _swift_arrayInitWithTakeBackToFront(a3, a1, a2, result);
  }

  return result;
}

unint64_t sub_100012CC8(unint64_t result, char a2, uint64_t a3)
{
  if (a2)
  {
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > result)
    {
      return result;
    }

    __break(1u);
  }

  return result;
}

void *sub_100012CEC(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100012D6C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100012D0C(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100012F20(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100012D2C(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100013038(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_100012D4C(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100013150(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_100012D6C(void *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_25:
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

  v8 = *(a4 + 16);
  if (v7 <= v8)
  {
    v9 = *(a4 + 16);
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_1000026A4(&qword_10003CF38, &unk_10002DD30);
  v10 = *(type metadata accessor for RunShortcutWidgetEntry(0) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = j__malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if ((result - v12) == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_24;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(type metadata accessor for RunShortcutWidgetEntry(0) - 8);
  if (v5)
  {
    v16 = (*(v15 + 80) + 32) & ~*(v15 + 80);
    sub_100012AC4(a4 + v16, v8, v13 + v16);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

char *sub_100012F20(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000026A4(&qword_10003D320, &qword_10002E648);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 56);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[56 * v8] <= v12)
    {
      memmove(v12, v13, 56 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_100013038(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000026A4(&qword_10003D338, &unk_10002E670);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[24 * v8] <= v12)
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_100013150(void *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_25:
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

  v8 = *(a4 + 16);
  if (v7 <= v8)
  {
    v9 = *(a4 + 16);
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_1000026A4(&qword_10003D328, &unk_10002E660);
  v10 = *(sub_1000026A4(&qword_10003D330, &qword_10002FCD0) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = j__malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if ((result - v12) == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_24;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(sub_1000026A4(&qword_10003D330, &qword_10002FCD0) - 8);
  if (v5)
  {
    v16 = (*(v15 + 80) + 32) & ~*(v15 + 80);
    sub_100012BDC(a4 + v16, v8, v13 + v16);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

uint64_t sub_10001331C(void *a1)
{
  v1 = [a1 subtitle];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_10002A0EC();

  return v3;
}

uint64_t sub_100013380(void *a1)
{
  v2 = [a1 associatedAppBundleIdentifier];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_10002A0EC();

  return v3;
}

uint64_t sub_1000133F4(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v2;
    }
  }
}

uint64_t sub_10001344C(void *a1)
{
  v2 = [a1 PNGRepresentation];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_10002983C();

  return v3;
}

__n128 sub_100013510()
{
  *(v0 + 16) = v2;
  v5 = v0 + v4 * v3;
  result = *(v1 + 16);
  v7 = *(v1 + 32);
  v8 = *(v1 + 48);
  *(v5 + 80) = *(v1 + 64);
  *(v5 + 48) = v7;
  *(v5 + 64) = v8;
  *(v5 + 32) = result;
  return result;
}

char *sub_10001353C(uint64_t a1)
{

  return sub_100012D0C(0, a1 & ~(a1 >> 63), 0);
}

unint64_t sub_1000135A4()
{
  result = qword_10003DA80;
  if (!qword_10003DA80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003DA80);
  }

  return result;
}

uint64_t sub_10001361C@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v97 = a3;
  sub_100029E9C();
  sub_1000028EC();
  v95 = v6;
  v96 = v5;
  __chkstk_darwin(v5);
  sub_10001543C();
  v94 = v7;
  sub_10002978C();
  sub_1000028EC();
  v99 = v8;
  v100 = v9;
  __chkstk_darwin(v8);
  sub_10001543C();
  v85 = v10;
  v11 = sub_10002988C();
  __chkstk_darwin(v11 - 8);
  sub_10001543C();
  sub_100015494(v12);
  v13 = sub_10002A0CC();
  __chkstk_darwin(v13 - 8);
  v15 = &v74 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000297AC();
  sub_1000028EC();
  v83 = v17;
  v84 = v16;
  __chkstk_darwin(v16);
  sub_10001543C();
  sub_100015494(v18);
  v79 = sub_1000026A4(&qword_10003D360, &qword_10002E7E0);
  sub_1000028EC();
  v80 = v19;
  sub_100003534();
  __chkstk_darwin(v20);
  v22 = &v74 - v21;
  sub_1000026A4(&qword_10003D368, &qword_10002E7E8);
  sub_1000028EC();
  v86 = v23;
  v87 = v24;
  sub_100003534();
  __chkstk_darwin(v25);
  sub_1000154B8();
  v98 = v26;
  sub_1000026A4(&qword_10003D370, &qword_10002E7F0);
  sub_1000028EC();
  v88 = v27;
  v89 = v28;
  sub_100003534();
  __chkstk_darwin(v29);
  sub_1000154B8();
  sub_100015494(v30);
  sub_1000026A4(&qword_10003D378, &qword_10002E7F8);
  sub_1000028EC();
  v90 = v31;
  v91 = v32;
  sub_100003534();
  __chkstk_darwin(v33);
  sub_1000154B8();
  sub_100015494(v34);
  sub_1000026A4(&qword_10003D380, &qword_10002E800);
  sub_1000028EC();
  v92 = v35;
  v93 = v36;
  sub_100003534();
  __chkstk_darwin(v37);
  sub_1000154B8();
  sub_100015494(v38);
  v39 = swift_allocObject();
  *(v39 + 16) = a1;
  a2 &= 1u;
  *(v39 + 24) = a2;

  sub_100015104(a1, a2);
  sub_1000026A4(&qword_10003D388, &qword_10002E808);
  sub_100015110();
  v40 = sub_1000028A4(&qword_10003D398, &unk_10002E810);
  v41 = sub_100005EEC(&qword_10003D3A0, &qword_10003D398, &unk_10002E810, &protocol conformance descriptor for ControlWidgetButton<A, B, C>);
  v101 = v40;
  v102 = v41;
  sub_1000154A0(v41, &opaque type descriptor for <<opaque return type of ControlWidgetTemplate.rasterizedImagesAllowed()>>);
  sub_100029FFC();
  sub_10002A05C();
  sub_10002987C();
  v76 = enum case for LocalizedStringResource.BundleDescription.main(_:);
  v42 = *(v100 + 104);
  v100 += 104;
  v75 = v42;
  v43 = v85;
  v42(v85);
  sub_10000608C();
  v44 = v77;
  sub_100015468(v15, v45);
  sub_1000060E8();
  v48 = sub_100005EEC(v46, &qword_10003D360, &qword_10002E7E0, v47);
  v49 = v79;
  sub_100029BFC();
  v50 = v84;
  v83 = *(v83 + 8);
  (v83)(v44, v84);
  (*(v80 + 8))(v22, v49);
  sub_10002A05C();
  sub_10002987C();
  v75(v43, v76, v99);
  sub_10000608C();
  sub_100015468(v51, v52);
  v101 = v49;
  v102 = v48;
  sub_1000060D0();
  v55 = sub_1000154A0(v53, v54);
  v56 = v78;
  v57 = v86;
  v58 = v98;
  sub_100029BEC();
  (v83)(v44, v50);
  (*(v87 + 8))(v58, v57);
  v59 = v94;
  sub_100029E8C();
  v101 = v57;
  v102 = v55;
  sub_1000060B8();
  v62 = sub_1000154A0(v60, v61);
  v63 = v81;
  v64 = v88;
  sub_100029BDC();
  (*(v95 + 8))(v59, v96);
  (*(v89 + 8))(v56, v64);
  v101 = v64;
  v102 = v62;
  sub_100015450();
  v67 = sub_1000154A0(v65, v66);
  v68 = v82;
  v69 = v90;
  sub_100029BCC();
  (*(v91 + 8))(v63, v69);
  v101 = v69;
  v102 = v67;
  sub_1000060A0();
  sub_1000154A0(v70, v71);
  v72 = v92;
  sub_100029C0C();
  return (*(v93 + 8))(v68, v72);
}

uint64_t sub_100013E14(uint64_t *a1, uint64_t a2, char a3)
{
  v6 = sub_1000026A4(&qword_10003D398, &unk_10002E810);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v14 - v8;
  v11 = *a1;
  v10 = a1[1];
  v14[0] = v11;
  v14[1] = v10;
  v12 = swift_allocObject();
  *(v12 + 16) = v11;
  *(v12 + 24) = v10;
  *(v12 + 32) = a2;
  a3 &= 1u;
  *(v12 + 40) = a3;
  swift_retain_n();
  swift_retain_n();
  sub_100015104(a2, a3);
  sub_1000026A4(&qword_10003CB40, &qword_10002D820);
  sub_100005EEC(&qword_10003CB38, &qword_10003CB40, &qword_10002D820, &protocol conformance descriptor for Label<A, B>);
  sub_1000135A4();
  sub_100029EAC();
  sub_100005EEC(&qword_10003D3A0, &qword_10003D398, &unk_10002E810, &protocol conformance descriptor for ControlWidgetButton<A, B, C>);
  sub_100029B7C();
  return (*(v7 + 8))(v9, v6);
}

void sub_100014020(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v6 = sub_100029AFC();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v24[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  sub_10002939C();
  if (a4)
  {
    v10 = *&a3;
  }

  else
  {

    sub_10002A1FC();
    v11 = sub_100029C3C();
    sub_10002993C();

    sub_100029AEC();
    swift_getAtKeyPath();
    sub_10000C470(a3, 0);
    (*(v7 + 8))(v9, v6);
    v10 = v23;
  }

  sub_100014254(v24, v10);
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v18 = __chkstk_darwin(v12);
  *(&v23 - 4) = v18;
  *(&v23 - 3) = v15;
  *(&v23 - 16) = v19;
  *(&v23 - 1) = v20;
  *(&v23 - 4) = __chkstk_darwin(v18);
  *(&v23 - 3) = v15;
  *(&v23 - 16) = v21;
  *(&v23 - 1) = v22;
  sub_100029E0C();
  sub_100015204(v13, v15, v17);
}

double sub_100014254(void *a1, double a2)
{
  if (!*a1)
  {
    return a2;
  }

  sub_10002933C();
  if (!v22 || (v4 = sub_10002981C(), v6 = v5, , v6 >> 60 == 15) || (sub_10000ADAC(0, &unk_10003DBE0, NSKeyedUnarchiver_ptr), sub_10000ADAC(0, &qword_10003CF18, WFConfiguredSystemAction_ptr), v10 = sub_10002A20C(), sub_10000ADEC(v4, v6), !v10))
  {
    if (qword_10003C940 != -1)
    {
      sub_10000B164(&qword_10003C940);
    }

    v7 = sub_100010044();
    if (v7)
    {
      v8 = objc_allocWithZone(WFConfiguredSystemWorkflowAction);
      sub_100014EC0(v7, 0, 0xF000000000000000);
    }

    goto LABEL_9;
  }

  objc_opt_self();
  v11 = swift_dynamicCastObjCClass();
  if (!v11)
  {
LABEL_9:
    sub_1000152B4(a1);
    sub_1000152B4(a1);
    return a2;
  }

  v12 = v11;
  v13 = qword_10003C940;
  v14 = v10;
  if (v13 != -1)
  {
    sub_10000B164(&qword_10003C940);
  }

  sub_1000026A4(&qword_10003CF20, &qword_10002DD18);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_10002D840;
  v16 = [v12 identifier];
  v17 = sub_10002A0EC();
  v19 = v18;

  *(v15 + 32) = v17;
  *(v15 + 40) = v19;
  v20 = sub_1000284B4(v15);

  if (sub_1000134BC(v20))
  {

    sub_100012CC8(0, (v20 & 0xC000000000000001) == 0, v20);
    if ((v20 & 0xC000000000000001) != 0)
    {
      sub_10002A26C();
    }

    else
    {
      v21 = *(v20 + 32);
    }

    sub_1000152B4(a1);
    sub_1000152B4(a1);
  }

  else
  {
    sub_1000152B4(a1);
    sub_1000152B4(a1);
  }

  return a2;
}

uint64_t sub_1000145C8@<X0>(void *a1@<X0>, void *a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  if (a3)
  {
    if (a3 == 1)
    {
      v6 = a2;
      v7 = [v6 name];
      sub_10002A0EC();
    }

    else
    {
      v10 = sub_10002A0DC();
      v11 = sub_10002A0DC();
      v7 = sub_100028FF4(v10);

      sub_10002A0EC();
    }
  }

  else
  {
    v9 = [a1 name];
    sub_10002A0EC();

    sub_100015204(a1, a2, 0);
  }

  sub_100005F34();
  result = sub_100029CAC();
  *a4 = result;
  *(a4 + 8) = v13;
  *(a4 + 16) = v14 & 1;
  *(a4 + 24) = v15;
  return result;
}

void sub_10001471C(id a1, uint64_t a2, char a3, double a4)
{
  if (!a3)
  {
    v9 = [a1 previewIcon];
    v10 = objc_opt_self();
    v11 = sub_1000154E0(v10);
    if (v11)
    {
      v12 = v11;
      v13 = v9;
      v14 = [v12 bundleIdentifier];
      v15 = sub_10002A0EC();
      v17 = v16;

      v18 = sub_100014BC8(v15, v17, a4);

      if (v18)
      {
        v19 = [a1 name];
LABEL_22:
        v41 = v19;
        sub_10002A0EC();

        sub_100005F34();
        sub_100029CAC();
        sub_100029DFC();

        goto LABEL_23;
      }
    }

    v21 = objc_opt_self();
    v22 = sub_1000154E0(v21);
    if (v22)
    {
      v23 = v22;
      v24 = v9;
      v25 = [v23 symbolName];
      sub_10002A0EC();

      sub_100029DEC();
LABEL_23:
      sub_1000154C4();
      return;
    }

    v26 = objc_opt_self();
    v27 = sub_1000154E0(v26);
    if (v27)
    {
      v28 = v27;
      v29 = objc_opt_self();
      v30 = v9;
      LOWORD(v28) = [v28 glyph];
      v31 = objc_allocWithZone(WFWorkflowIcon);
      v32 = sub_100014F50(9, v28, 0, 0xF000000000000000);
      v33 = [objc_opt_self() whiteColor];
      v34 = [v29 imageWithIcon:v32 size:v33 scale:0 padding:40.0 glyphColor:40.0 background:{a4, 0.0, 0.0}];

      if (v34)
      {
        sub_10002A21C();

        goto LABEL_23;
      }
    }

    v35 = objc_opt_self();
    v36 = sub_1000154E0(v35);
    if (v36)
    {
      v37 = v36;
      v13 = v9;
      v38 = [v37 image];
      v39 = [v38 CGImage];

      if (v39)
      {
        v40 = [v37 image];
        [v40 scale];

        v19 = [a1 name];
        goto LABEL_22;
      }
    }

    sub_10002A25C(31);

    v42 = [v9 description];
    v43 = sub_10002A0EC();
    v45 = v44;

    v46._countAndFlagsBits = v43;
    v46._object = v45;
    sub_10002A13C(v46);

    sub_10002A2DC();
    __break(1u);
    return;
  }

  if (a3 == 1)
  {
    sub_1000154C4();

    sub_100014CC0(v6, v7);
  }

  else
  {
    sub_1000154C4();

    sub_100029DEC();
  }
}

id sub_100014BC8(uint64_t a1, uint64_t a2, double a3)
{
  v5 = [objc_allocWithZone(ISImageDescriptor) initWithSize:40.0 scale:{40.0, a3}];
  [v5 setShouldApplyMask:0];
  sub_10000ADAC(0, &qword_10003D348, ISIcon_ptr);

  v6 = sub_100010FA8(a1, a2);
  v7 = [v6 prepareImageForDescriptor:v5];
  v8 = [v7 CGImage];

  return v8;
}

uint64_t sub_100014CC0(void *a1, double a2)
{
  v4 = sub_100015250(a1);
  if (v5 && (v6 = sub_100014BC8(v4, v5, a2), , v6))
  {
    v7 = [a1 name];
    sub_10002A0EC();

    sub_100005F34();
    sub_100029CAC();
    return sub_100029DFC();
  }

  else
  {
    v9 = [a1 icon];
    v10 = [v9 icon];

    objc_opt_self();
    v11 = swift_dynamicCastObjCClass();
    if (v11)
    {
      v12 = [v11 symbolName];

      sub_10002A0EC();
    }

    else
    {
    }

    return sub_100029DEC();
  }
}

uint64_t sub_100014E88@<X0>(uint64_t a1@<X8>)
{
  result = sub_1000135F8();
  *a1 = result;
  *(a1 + 8) = 0;
  return result;
}

id sub_100014EC0(void *a1, uint64_t a2, unint64_t a3)
{
  if (a3 >> 60 == 15)
  {
    isa = 0;
  }

  else
  {
    isa = sub_10002982C().super.isa;
    sub_10000ADEC(a2, a3);
  }

  v8 = [v3 initWithWorkflow:a1 shortcutsMetadata:isa];

  return v8;
}

id sub_100014F50(uint64_t a1, unsigned __int16 a2, uint64_t a3, unint64_t a4)
{
  if (a4 >> 60 == 15)
  {
    isa = 0;
  }

  else
  {
    isa = sub_10002982C().super.isa;
    sub_10000ADEC(a3, a4);
  }

  v10 = [v4 initWithPaletteColor:a1 glyphCharacter:a2 customImageData:isa];

  return v10;
}

uint64_t sub_100014FF8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t sub_10001500C(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 9))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 <= 1)
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

uint64_t sub_10001504C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
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

uint64_t sub_1000150BC()
{
  sub_10000C470(*(v0 + 16), *(v0 + 24));

  return _swift_deallocObject(v0, 25, 7);
}

uint64_t sub_100015104(uint64_t result, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return v2;
}

unint64_t sub_100015110()
{
  result = qword_10003D390;
  if (!qword_10003D390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003D390);
  }

  return result;
}

uint64_t sub_100015164()
{

  sub_10000C470(*(v0 + 32), *(v0 + 40));

  return _swift_deallocObject(v0, 41, 7);
}

void sub_100015204(void *a1, void *a2, char a3)
{
  if (a3)
  {
    if (a3 != 1)
    {
      return;
    }

    a1 = a2;
  }
}

uint64_t sub_100015250(void *a1)
{
  v1 = [a1 associatedAppBundleIdentifier];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_10002A0EC();

  return v3;
}

uint64_t sub_1000152B4(uint64_t a1)
{
  v2 = sub_1000026A4(&qword_10003CF10, &qword_10002DD10);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10001531C()
{
  v0 = sub_1000028A4(&qword_10003D380, &qword_10002E800);
  v1 = sub_1000028A4(&qword_10003D378, &qword_10002E7F8);
  v2 = sub_1000028A4(&qword_10003D370, &qword_10002E7F0);
  v3 = sub_1000028A4(&qword_10003D368, &qword_10002E7E8);
  v4 = sub_1000028A4(&qword_10003D360, &qword_10002E7E0);
  sub_1000060E8();
  sub_100005EEC(v5, &qword_10003D360, &qword_10002E7E0, v6);
  sub_1000060D0();
  sub_1000061A4(v7, v8, v9, v10, v11, v12, v13, v14, v4);
  sub_1000060B8();
  sub_1000061A4(v15, v16, v17, v18, v19, v20, v21, v22, v3);
  sub_100015450();
  sub_1000061A4(v23, v24, v25, v26, v27, v28, v29, v30, v2);
  sub_1000060A0();
  v46 = sub_1000061A4(v31, v32, v33, v34, v35, v36, v37, v38, v1);
  return sub_1000061A4(v46, &opaque type descriptor for <<opaque return type of ControlWidgetConfiguration.showsInSystemSpaces()>>, v39, v40, v41, v42, v43, v44, v0);
}

uint64_t sub_100015468(uint64_t a1, uint64_t a2)
{

  return sub_1000297BC();
}

uint64_t sub_1000154A0(uint64_t a1, uint64_t a2)
{

  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1000154E0(uint64_t a1)
{

  return swift_dynamicCastObjCClass();
}

void sub_100015518(uint64_t a1)
{
  sub_10001558C(319);
  if (v1 <= 0x3F)
  {
    sub_10002989C();
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_10001558C(uint64_t a1)
{
  if (!qword_10003D430)
  {
    sub_10000ADAC(255, &qword_10003D438, WFIcon_ptr);
    sub_10000ADAC(255, &unk_10003D440, WFColor_ptr);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_10003D430);
    }
  }
}

uint64_t sub_100015634(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for WidgetSStackView.Content(0);
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a1;
  }

  else
  {
    v7 = sub_10002989C();
    v8 = a1 + *(a3 + 20);
  }

  return sub_100002984(v8, a2, v7);
}

uint64_t sub_1000156E4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for WidgetSStackView.Content(0);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = a1;
  }

  else
  {
    v9 = sub_10002989C();
    v10 = a1 + *(a4 + 20);
  }

  return sub_1000026EC(v10, a2, a2, v9);
}

uint64_t sub_1000157A8(uint64_t a1)
{
  result = type metadata accessor for WidgetSStackView.Content(319);
  if (v2 <= 0x3F)
  {
    result = sub_10002989C();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_100015848()
{
  v1 = type metadata accessor for WidgetSStackView(0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1 - 8);
  sub_100016574(v0, v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for WidgetSStackView);
  v4 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v5 = swift_allocObject();
  sub_1000161D8(v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v5 + v4);
  sub_100016574(v0, v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for WidgetSStackView);
  v6 = swift_allocObject();
  sub_1000161D8(v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v6 + v4);
  sub_1000026A4(&qword_10003D500, &qword_10002E898);
  sub_1000026A4(&qword_10003D508, &qword_10002E8A0);
  sub_10001642C();
  v7 = sub_10002991C();
  v8 = sub_10001651C();
  v10[0] = v7;
  v10[1] = v8;
  swift_getOpaqueTypeConformance2();
  return sub_1000298AC();
}

uint64_t sub_100015A38@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v30 = a1;
  v32 = a2;
  v2 = sub_10002991C();
  v28 = *(v2 - 8);
  __chkstk_darwin(v2);
  v4 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_1000026A4(&qword_10003D508, &qword_10002E8A0);
  v5 = *(v31 - 8);
  __chkstk_darwin(v31);
  v29 = &v27 - v6;
  v7 = sub_10002989C();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1000026A4(&qword_10003D530, &qword_10002E8B0);
  __chkstk_darwin(v11);
  v13 = (&v27 - v12);
  v14 = type metadata accessor for WidgetSStackView.Content(0);
  __chkstk_darwin(v14);
  v16 = (&v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_100016574(v30, v16, type metadata accessor for WidgetSStackView.Content);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v17 = *(v8 + 32);
    v27 = v10;
    v17(v10, v16, v7);
    sub_10002990C();
    v18 = sub_10001651C();
    v19 = v29;
    sub_100029E2C();
    (*(v28 + 8))(v4, v2);
    v20 = *(v5 + 16);
    v30 = v7;
    v21 = v2;
    v22 = v5;
    v23 = v31;
    v20(v13, v19, v31);
    swift_storeEnumTagMultiPayload();
    sub_1000026A4(&qword_10003D520, &qword_10002E8A8);
    sub_100005EEC(&qword_10003D518, &qword_10003D520, &qword_10002E8A8, &protocol conformance descriptor for GeometryReader<A>);
    v33 = v21;
    v34 = v18;
    swift_getOpaqueTypeConformance2();
    sub_100029B6C();
    (*(v22 + 8))(v19, v23);
    return (*(v8 + 8))(v27, v30);
  }

  else
  {
    v25 = swift_allocObject();
    *(v25 + 16) = *v16;
    *v13 = sub_100016614;
    v13[1] = v25;
    swift_storeEnumTagMultiPayload();
    sub_1000026A4(&qword_10003D520, &qword_10002E8A8);
    sub_100005EEC(&qword_10003D518, &qword_10003D520, &qword_10002E8A8, &protocol conformance descriptor for GeometryReader<A>);
    v26 = sub_10001651C();
    v33 = v2;
    v34 = v26;
    swift_getOpaqueTypeConformance2();
    return sub_100029B6C();
  }
}

uint64_t sub_100015F0C@<X0>(void *a1@<X1>, void *a2@<X2>, uint64_t a3@<X8>)
{
  v17[1] = a3;
  v5 = sub_1000298DC();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1000298CC();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = (v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = a1;
  sub_1000299FC();
  *v12 = v14;
  (*(v10 + 104))(v12, enum case for IconSize.sstack(_:), v9);
  *v8 = a2;
  v8[8] = 1;
  (*(v6 + 104))(v8, enum case for IconView.DisplayMode.customColor(_:), v5);
  v15 = a2;
  return sub_1000298FC();
}

uint64_t sub_1000160D4(uint64_t a1)
{
  v1 = sub_10002991C();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10002990C();
  type metadata accessor for WidgetSStackView(0);
  sub_10001651C();
  sub_100029E2C();
  return (*(v2 + 8))(v4, v1);
}

uint64_t sub_1000161D8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WidgetSStackView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100016254()
{
  v1 = type metadata accessor for WidgetSStackView(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = (v0 + v3);
  type metadata accessor for WidgetSStackView.Content(0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_10002989C();
    sub_10000350C();
    (*(v6 + 8))(v0 + v3);
  }

  else
  {
  }

  v7 = *(v1 + 20);
  sub_10002989C();
  sub_10000350C();
  (*(v8 + 8))(v5 + v7);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_1000163A8(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for WidgetSStackView(0) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

unint64_t sub_10001642C()
{
  result = qword_10003D510;
  if (!qword_10003D510)
  {
    sub_1000028A4(&qword_10003D500, &qword_10002E898);
    sub_100005EEC(&qword_10003D518, &qword_10003D520, &qword_10002E8A8, &protocol conformance descriptor for GeometryReader<A>);
    sub_10002991C();
    sub_10001651C();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003D510);
  }

  return result;
}

unint64_t sub_10001651C()
{
  result = qword_10003D528;
  if (!qword_10003D528)
  {
    sub_10002991C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003D528);
  }

  return result;
}

uint64_t sub_100016574(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_10000350C();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_1000165D4()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100016664()
{
  v0 = sub_1000026A4(&qword_10003C950, &unk_10002E680);
  __chkstk_darwin(v0 - 8);
  v2 = &v12[-v1];
  v3 = sub_10002978C();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v12[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_10002988C();
  __chkstk_darwin(v7 - 8);
  v8 = sub_10002A0CC();
  __chkstk_darwin(v8 - 8);
  v9 = sub_1000297AC();
  __chkstk_darwin(v9);
  v10 = sub_10002960C();
  sub_10000FBA4(v10, qword_1000414D0);
  sub_10000FB6C(v10, qword_1000414D0);
  sub_10002A05C();
  sub_10002987C();
  (*(v4 + 104))(v6, enum case for LocalizedStringResource.BundleDescription.main(_:), v3);
  sub_1000297BC();
  sub_1000026EC(v2, 1, 1, v9);
  return sub_1000295FC();
}

uint64_t sub_100016914()
{
  v0 = sub_1000026A4(&qword_10003D340, &qword_10002F2A0);
  __chkstk_darwin(v0 - 8);
  v31 = &v27 - v1;
  v2 = sub_1000026A4(&qword_10003C950, &unk_10002E680);
  __chkstk_darwin(v2 - 8);
  v4 = &v27 - v3;
  v5 = sub_10002978C();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10002988C();
  __chkstk_darwin(v9 - 8);
  v10 = sub_10002A0CC();
  __chkstk_darwin(v10 - 8);
  v41 = sub_1000297AC();
  __chkstk_darwin(v41);
  v40 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000026A4(&qword_10003D600, &qword_10002EE00);
  v12 = sub_1000026A4(&qword_10003D608, &qword_10002EE08);
  v13 = *(v12 - 8);
  v14 = *(v13 + 72);
  v15 = v12 - 8;
  v38 = v12 - 8;
  v39 = v14;
  v16 = (*(v13 + 80) + 32) & ~*(v13 + 80);
  v17 = swift_allocObject();
  v32 = v17;
  *(v17 + 16) = xmmword_10002D940;
  v35 = (v17 + v16);
  v30 = *(v15 + 56);
  *(v17 + v16) = 0;
  sub_10002A05C();
  sub_10002987C();
  v18 = enum case for LocalizedStringResource.BundleDescription.main(_:);
  v19 = *(v6 + 104);
  v34 = v5;
  v19(v8, enum case for LocalizedStringResource.BundleDescription.main(_:), v5);
  v27 = v19;
  v33 = v6 + 104;
  sub_1000297BC();
  sub_10002A05C();
  sub_10002987C();
  v19(v8, v18, v5);
  sub_1000297BC();
  sub_1000026EC(v4, 0, 1, v41);
  v36 = "Open Shortcuts Settings";
  v20 = v31;
  sub_1000294AC();
  v37 = sub_1000294CC();
  sub_1000026EC(v20, 0, 1, v37);
  v21 = v35;
  sub_1000294DC();
  v22 = *(v38 + 56);
  v28 = &v21[v39];
  v29 = v22;
  *v28 = 1;
  sub_10002A05C();
  sub_10002987C();
  v23 = v34;
  v24 = v27;
  v27(v8, v18, v34);
  sub_1000297BC();
  v30 = "com.apple.shortcuts";
  sub_10002A05C();
  sub_10002987C();
  v24(v8, v18, v23);
  sub_1000297BC();
  sub_1000026EC(v4, 0, 1, v41);
  sub_1000294AC();
  sub_1000026EC(v20, 0, 1, v37);
  sub_1000294DC();
  v35 += 2 * v39;
  v39 = *(v38 + 56);
  *v35 = 2;
  sub_10002A05C();
  sub_10002987C();
  v25 = v34;
  v24(v8, v18, v34);
  sub_1000297BC();
  sub_10002A05C();
  sub_10002987C();
  v24(v8, v18, v25);
  sub_1000297BC();
  sub_1000026EC(v4, 0, 1, v41);
  sub_1000294AC();
  sub_1000026EC(v20, 0, 1, v37);
  sub_1000294DC();
  sub_1000294EC();
  sub_100017BFC();
  result = sub_10002A02C();
  qword_1000414E8 = result;
  return result;
}

uint64_t sub_10001708C()
{
  v0 = sub_1000026A4(&qword_10003D610, &qword_10002EE10);
  sub_10000FBA4(v0, qword_1000414F0);
  sub_10000FB6C(v0, qword_1000414F0);
  sub_1000026A4(&qword_10003D618, &qword_10002EE18);
  v1 = *(sub_1000026A4(&qword_10003D620, &qword_10002EE20) - 8);
  v2 = *(v1 + 72);
  v3 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10002D940;
  v5 = v4 + v3;
  *(v4 + v3) = 0;
  sub_10001765C();
  sub_1000294FC();
  *(v5 + v2) = 1;
  sub_1000294FC();
  *(v5 + 2 * v2) = 2;
  sub_1000294FC();
  sub_1000026A4(&qword_10003D628, &qword_10002EE28);
  sub_100017BFC();
  sub_10002A02C();
  return sub_10002950C();
}

unint64_t sub_10001729C(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_100039D28;
  v6._object = a2;
  v4 = sub_10002A2FC(v3, v6);

  if (v4 >= 3)
  {
    return 3;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_1000172E8(char a1)
{
  if (!a1)
  {
    return 1953460082;
  }

  if (a1 == 1)
  {
    return 0x6465636E61766461;
  }

  return 0x746F4E6C6167656CLL;
}

unint64_t sub_100017350()
{
  result = qword_10003D548;
  if (!qword_10003D548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003D548);
  }

  return result;
}

uint64_t sub_1000173CC(uint64_t a1, char a2)
{
  sub_10002A12C();
}

uint64_t sub_100017440(uint64_t a1, unsigned __int8 a2)
{
  sub_10002A12C();
}

Swift::Int sub_1000174D4(uint64_t a1, char a2)
{
  sub_10002A38C();
  sub_10002A12C();

  return sub_10002A3BC();
}

Swift::Int sub_100017574(uint64_t a1, char a2)
{
  sub_10002A38C();
  sub_10002A12C();

  return sub_10002A3BC();
}

unint64_t sub_1000175FC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10001729C(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_10001762C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1000172E8(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_10001765C()
{
  result = qword_10003D550;
  if (!qword_10003D550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003D550);
  }

  return result;
}

unint64_t sub_1000176B4()
{
  result = qword_10003D558;
  if (!qword_10003D558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003D558);
  }

  return result;
}

uint64_t sub_100017708@<X0>(uint64_t a1@<X8>)
{
  if (qword_10003C8F8 != -1)
  {
    swift_once();
  }

  v2 = sub_1000026A4(&qword_10003D610, &qword_10002EE10);
  v3 = sub_10000FB6C(v2, qword_1000414F0);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

unint64_t sub_1000177BC()
{
  result = qword_10003D560;
  if (!qword_10003D560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003D560);
  }

  return result;
}

unint64_t sub_100017814()
{
  result = qword_10003D568;
  if (!qword_10003D568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003D568);
  }

  return result;
}

unint64_t sub_10001786C()
{
  result = qword_10003D570;
  if (!qword_10003D570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003D570);
  }

  return result;
}

uint64_t sub_1000178CC(uint64_t a1)
{
  sub_100018AF4();
  v2 = sub_10002948C();
  v3 = *(v1 + 8);

  return v3(v2);
}

unint64_t sub_10001793C()
{
  result = qword_10003D578;
  if (!qword_10003D578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003D578);
  }

  return result;
}

unint64_t sub_100017990()
{
  result = qword_10003D580;
  if (!qword_10003D580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003D580);
  }

  return result;
}

unint64_t sub_1000179E8()
{
  result = qword_10003D588;
  if (!qword_10003D588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003D588);
  }

  return result;
}

unint64_t sub_100017A40()
{
  result = qword_10003D590;
  if (!qword_10003D590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003D590);
  }

  return result;
}

uint64_t sub_100017AFC(uint64_t a1)
{
  v2 = sub_10001765C();

  return static AppEnum.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_100017B4C()
{
  result = qword_10003D598;
  if (!qword_10003D598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003D598);
  }

  return result;
}

unint64_t sub_100017BA4()
{
  result = qword_10003D5A0;
  if (!qword_10003D5A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003D5A0);
  }

  return result;
}

unint64_t sub_100017BFC()
{
  result = qword_10003D5A8;
  if (!qword_10003D5A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003D5A8);
  }

  return result;
}

uint64_t sub_100017C50()
{
  if (qword_10003C8F0 != -1)
  {
    swift_once();
  }
}

uint64_t sub_100017CAC(uint64_t a1)
{
  v2 = sub_100017A40();

  return CaseDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_100017CFC()
{
  result = qword_10003D5B0;
  if (!qword_10003D5B0)
  {
    sub_1000028A4(&qword_10003D5B8, &qword_10002EB80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003D5B0);
  }

  return result;
}

unint64_t sub_100017D74()
{
  result = qword_10003D5C0;
  if (!qword_10003D5C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003D5C0);
  }

  return result;
}

uint64_t sub_100017DCC()
{
  v0 = sub_10002978C();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10002988C();
  __chkstk_darwin(v4 - 8);
  v5 = sub_10002A0CC();
  __chkstk_darwin(v5 - 8);
  v6 = sub_1000297AC();
  sub_10000FBA4(v6, qword_100041508);
  sub_10000FB6C(v6, qword_100041508);
  sub_10002A05C();
  sub_10002987C();
  (*(v1 + 104))(v3, enum case for LocalizedStringResource.BundleDescription.main(_:), v0);
  return sub_1000297BC();
}

uint64_t sub_100018020()
{
  sub_1000295AC();
  sub_1000028EC();
  v30 = v1;
  v31 = v0;
  __chkstk_darwin(v0);
  sub_100002900();
  v29 = v3 - v2;
  v4 = sub_1000026A4(&unk_10003DBA0, &unk_10002D350);
  v5 = sub_100002910(v4);
  v6 = __chkstk_darwin(v5);
  v8 = v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = v28 - v9;
  v11 = sub_1000026A4(&qword_10003C950, &unk_10002E680);
  v12 = sub_100002910(v11);
  __chkstk_darwin(v12);
  v14 = v28 - v13;
  v15 = sub_10002978C();
  sub_1000028EC();
  v17 = v16;
  __chkstk_darwin(v18);
  sub_100002900();
  v21 = v20 - v19;
  v22 = sub_10002988C();
  v23 = sub_100002910(v22);
  __chkstk_darwin(v23);
  sub_100002900();
  v24 = sub_10002A0CC();
  v25 = sub_100002910(v24);
  __chkstk_darwin(v25);
  sub_100002900();
  v26 = sub_1000297AC();
  __chkstk_darwin(v26);
  sub_100002900();
  v28[1] = sub_1000026A4(&qword_10003D5E0, &unk_10002EDF0);
  sub_10002A05C();
  sub_10002987C();
  (*(v17 + 104))(v21, enum case for LocalizedStringResource.BundleDescription.main(_:), v15);
  sub_1000297BC();
  sub_10000FC08(v14);
  v32[0] = 3;
  sub_10002931C();
  sub_10000FC08(v10);
  sub_10000FC08(v8);
  (*(v30 + 104))(v29, enum case for InputConnectionBehavior.default(_:), v31);
  sub_10001765C();
  return sub_1000293CC();
}

uint64_t sub_1000183B4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_100017FB8(*v1);
  *a1 = result;
  return result;
}

uint64_t (*sub_1000183EC(uint64_t *a1))()
{
  v2 = sub_100018B48(0x28uLL);
  *a1 = v2;
  v2[4] = sub_10002938C();
  return sub_10001844C;
}

void sub_10001844C(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

unint64_t sub_100018498()
{
  result = qword_10003D5C8;
  if (!qword_10003D5C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003D5C8);
  }

  return result;
}

uint64_t sub_1000184EC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100018A4C();
  v5 = sub_100018AF4();

  return static URLRepresentableIntent<>.urlRepresentation.getter(a1, v4, a2, v5);
}

unint64_t sub_100018568()
{
  result = qword_10003D5D0;
  if (!qword_10003D5D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003D5D0);
  }

  return result;
}

unint64_t sub_1000185C0()
{
  result = qword_10003D5D8;
  if (!qword_10003D5D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003D5D8);
  }

  return result;
}

uint64_t sub_1000186C0@<X0>(void *a1@<X2>, uint64_t (*a2)(void)@<X3>, uint64_t a3@<X4>, uint64_t a5@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v8 = a2(0);
  v9 = sub_10000FB6C(v8, a3);
  v10 = *(*(v8 - 8) + 16);

  return v10(a5, v9, v8);
}

uint64_t sub_100018764(uint64_t a1, uint64_t a2)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  v5 = sub_100018A4C();
  v6 = sub_100018AA0();
  v7 = sub_100018AF4();
  *v4 = v2;
  v4[1] = sub_10000F858;

  return URLRepresentableIntent<>.perform()(a2, v5, v6, v7);
}

uint64_t sub_100018830@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100018020();
  *a1 = result;
  return result;
}

uint64_t sub_100018858(uint64_t a1)
{
  v2 = sub_100018498();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

uint64_t getEnumTagSinglePayload for ShortcutsStaticDeepLinks(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFE)
  {
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

    v5 = (*a1 | (v4 << 8)) - 3;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v5 = v6 - 3;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for ShortcutsStaticDeepLinks(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x100018A04);
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

unint64_t sub_100018A4C()
{
  result = qword_10003D5E8;
  if (!qword_10003D5E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003D5E8);
  }

  return result;
}

unint64_t sub_100018AA0()
{
  result = qword_10003D5F0;
  if (!qword_10003D5F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003D5F0);
  }

  return result;
}

unint64_t sub_100018AF4()
{
  result = qword_10003D5F8;
  if (!qword_10003D5F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003D5F8);
  }

  return result;
}

void *sub_100018B48(size_t a1)
{
  if (&_swift_coroFrameAlloc)
  {
    return swift_coroFrameAlloc();
  }

  return malloc(a1);
}

unint64_t sub_100018B8C()
{
  result = qword_10003D630;
  if (!qword_10003D630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003D630);
  }

  return result;
}

uint64_t sub_100018BE0()
{
  v0 = sub_10002980C();
  sub_1000028EC();
  v2 = v1;
  __chkstk_darwin(v3);
  sub_100002900();
  v6 = v5 - v4;
  sub_10002933C();
  v7 = sub_1000297DC();
  (*(v2 + 8))(v6, v0);
  return v7;
}

void sub_100018CB0(uint64_t a1)
{
  sub_10001C790();
  v2 = v1;
  v3 = sub_1000026A4(&qword_10003D6D0, &unk_10002F290);
  v4 = sub_100002910(v3);
  __chkstk_darwin(v4);
  v6 = &v43 - v5;
  v7 = sub_10002972C();
  sub_1000028EC();
  v9 = v8;
  __chkstk_darwin(v10);
  sub_100002900();
  v13 = v12 - v11;
  sub_10002969C();
  if (sub_100002984(v6, 1, v7) == 1)
  {
    sub_10002980C();
    sub_10001C6C4();
    (*(v14 + 8))(v2);
    sub_10001C330(v6, &qword_10003D6D0, &unk_10002F290);
LABEL_22:
    sub_10001C7A8();
    return;
  }

  (*(v9 + 32))(v13, v6, v7);
  v15 = sub_1000296FC();
  if (!v16)
  {
    goto LABEL_21;
  }

  if (v15 == 0x74756374726F6873 && v16 == 0xE900000000000073)
  {
  }

  else
  {
    v18 = sub_10002A31C();

    if ((v18 & 1) == 0)
    {
      goto LABEL_21;
    }
  }

  v19 = sub_1000296BC();
  if (!v20)
  {
LABEL_21:
    sub_10002980C();
    sub_10001C6C4();
    (*(v25 + 8))(v2);
    v26 = sub_10001C748();
    v27(v26);
    goto LABEL_22;
  }

  if (v19 == 0x746567646977 && v20 == 0xE600000000000000)
  {
  }

  else
  {
    v22 = sub_10002A31C();

    if ((v22 & 1) == 0)
    {
      goto LABEL_21;
    }
  }

  v47 = sub_1000296DC();
  v48 = v23;
  sub_100005F34();
  v24 = sub_10002A24C();

  if (v24[2] < 2uLL)
  {

    goto LABEL_21;
  }

  v28 = sub_10002A10C();
  v30 = v29;

  if (v24[2])
  {
    v32 = v24[4];
    v31 = v24[5];
    v33 = v24[7];
    v46 = v24[6];

    v44 = v32;
    v45 = v31;
    v34 = v31;
    v35 = v46;
    if (sub_10001C1F0(0x6D6574737973, 0xE600000000000000, v32, v34, v46, v33))
    {

      sub_10001A1D0(v28, v30);
      sub_10002980C();
      sub_10001C6C4();
      (*(v36 + 8))(v2);
      v37 = sub_10001C748();
      v38(v37);
    }

    else
    {
      v39 = sub_10001C1F0(0x7265646C6F66, 0xE600000000000000, v44, v45, v35, v33);

      sub_10002980C();
      sub_10001C6C4();
      (*(v40 + 8))(v2);
      v41 = sub_10001C748();
      v42(v41);
      if ((v39 & 1) == 0)
      {
      }
    }

    goto LABEL_22;
  }

  __break(1u);
}

uint64_t sub_10001911C()
{
  v23 = sub_10002A04C();
  v0 = *(v23 - 8);
  __chkstk_darwin(v23);
  v22 = &v18 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_10002A0AC();
  __chkstk_darwin(v2 - 8);
  v3 = sub_1000026A4(&qword_10003C950, &unk_10002E680);
  __chkstk_darwin(v3 - 8);
  v24 = &v18 - v4;
  v5 = sub_10002978C();
  v19 = v5;
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10002988C();
  __chkstk_darwin(v9 - 8);
  v10 = sub_10002A0CC();
  __chkstk_darwin(v10 - 8);
  v21 = sub_1000297AC();
  __chkstk_darwin(v21);
  v11 = sub_10002960C();
  sub_10000FBA4(v11, qword_100041520);
  v20 = sub_10000FB6C(v11, qword_100041520);
  sub_10002A05C();
  sub_10002987C();
  v12 = enum case for LocalizedStringResource.BundleDescription.main(_:);
  v13 = *(v6 + 104);
  v18 = v6 + 104;
  v13(v8, enum case for LocalizedStringResource.BundleDescription.main(_:), v5);
  sub_1000297BC();
  sub_10002A09C();
  v25._countAndFlagsBits = 0;
  v25._object = 0xE000000000000000;
  sub_10002A08C(v25);
  v14 = v22;
  v15 = v23;
  (*(v0 + 104))(v22, enum case for String.LocalizationValue.Placeholder.int(_:), v23);
  sub_10002A06C();
  (*(v0 + 8))(v14, v15);
  v26._countAndFlagsBits = 0x737265646C6F6620;
  v26._object = 0xE800000000000000;
  sub_10002A08C(v26);
  sub_10002A0BC();
  sub_10002987C();
  v13(v8, v12, v19);
  v16 = v24;
  sub_1000297BC();
  sub_1000026EC(v16, 0, 1, v21);
  return sub_1000295FC();
}

void sub_100019588(uint64_t a1, uint64_t a2)
{
  sub_10001C790();
  v4 = v3;
  v31 = v5;
  v6 = sub_1000026A4(&qword_10003C950, &unk_10002E680);
  v7 = sub_100002910(v6);
  __chkstk_darwin(v7);
  sub_10001C734();
  v8 = sub_1000297AC();
  __chkstk_darwin(v8);
  sub_100002900();
  v9 = sub_10002A0AC();
  v10 = sub_100002910(v9);
  __chkstk_darwin(v10);
  sub_100002900();
  v11 = sub_1000026A4(&qword_10003D340, &qword_10002F2A0);
  v12 = sub_100002910(v11);
  __chkstk_darwin(v12);
  sub_10001C6D8();
  v15 = v13 - v14;
  v17 = __chkstk_darwin(v16);
  v19 = &v28 - v18;
  __chkstk_darwin(v17);
  v21 = &v28 - v20;
  v22 = sub_1000294CC();
  sub_1000026EC(v21, 1, 1, v22);
  sub_10002933C();
  if (v32._object)
  {
LABEL_11:
    sub_10002A09C();
    v33._countAndFlagsBits = 0;
    v33._object = 0xE000000000000000;
    sub_10002A08C(v33);
    sub_10002933C();
    sub_10002A07C(v32);

    v34._countAndFlagsBits = 0;
    v34._object = 0xE000000000000000;
    sub_10002A08C(v34);
    sub_10002979C();
    sub_1000026EC(v2, 1, 1, v8);
    sub_10001C2C8(v21, v15, &qword_10003D340, &qword_10002F2A0);
    sub_10001C748();
    sub_1000294DC();
    sub_10001C330(v21, &qword_10003D340, &qword_10002F2A0);
    sub_10001C7A8();
    return;
  }

  v30 = v4;
  if (v32._countAndFlagsBits < 0)
  {
    __break(1u);
  }

  else if (!(v32._countAndFlagsBits >> 16))
  {
    v23 = WFSystemImageNameForOutlineGlyphCharacter();
    if (v23)
    {
      v24 = v23;
      v29 = v8;
      sub_10002A0EC();
      v26 = v25;

      if (v26)
      {
        sub_10002949C();
        v27 = 0;
      }

      else
      {
        v27 = 1;
      }

      v8 = v29;
    }

    else
    {
      v27 = 1;
    }

    sub_10001C330(v21, &qword_10003D340, &qword_10002F2A0);
    sub_1000026EC(v19, v27, 1, v22);
    sub_10001C258(v19, v21);
    goto LABEL_11;
  }

  __break(1u);
}

uint64_t sub_10001989C()
{
  if (qword_10003C940 != -1)
  {
    swift_once();
  }

  qword_100041538 = qword_1000415B8;
}

uint64_t sub_100019900()
{
  if (qword_10003C940 != -1)
  {
    swift_once();
  }
}

void sub_10001995C(uint64_t a1, uint64_t a2)
{
  sub_10001C790();
  v2 = sub_10002980C();
  sub_1000028EC();
  v4 = v3;
  __chkstk_darwin(v5);
  sub_10001C6D8();
  v8 = v6 - v7;
  __chkstk_darwin(v9);
  v11 = &v21 - v10;
  v12 = WFLocalizedAllShortcutsString();
  v13 = sub_10002A0EC();
  v15 = v14;

  v16 = sub_100019B00();
  v18 = v17;
  v20 = v19;

  sub_100019D64(0, 0, 0, v11);
  (*(v4 + 16))(v8, v11, v2);
  sub_10002934C();
  (*(v4 + 8))(v11, v2);
  v21 = v13;
  v22 = v15;
  sub_10002934C();
  v21 = 61573;
  LOBYTE(v22) = 0;
  sub_10002934C();

  *&xmmword_100041540 = v16;
  *(&xmmword_100041540 + 1) = v18;
  qword_100041550 = v20;
  sub_10001C7A8();
}

uint64_t sub_100019B00()
{
  v0 = sub_10002980C();
  sub_1000028EC();
  v2 = v1;
  __chkstk_darwin(v3);
  sub_10001C6D8();
  v6 = v4 - v5;
  __chkstk_darwin(v7);
  v9 = &v18 - v8;
  v10 = sub_1000297AC();
  v11 = sub_100002910(v10);
  __chkstk_darwin(v11);
  sub_100002900();
  sub_1000026A4(&qword_10003D6C8, &qword_10002F288);
  sub_10001C6E8();
  sub_10002977C();
  v12 = sub_10002935C();
  sub_1000026A4(&qword_10003D308, &qword_10002E630);

  sub_10001C710();
  sub_10002977C();
  sub_10002936C();
  sub_1000026A4(&qword_10003D318, &qword_10002E640);

  sub_10001C77C();
  sub_10002977C();
  sub_10002937C();

  sub_100019D64(0, 0, 0, v9);
  (*(v2 + 16))(v6, v9, v0);
  sub_10002934C();
  (*(v2 + 8))(v9, v0);
  v13 = WFLocalizedAllShortcutsString();
  v14 = sub_10002A0EC();
  v16 = v15;

  v18 = v14;
  v19 = v16;
  sub_10002934C();
  v18 = 61456;
  LOBYTE(v19) = 0;
  sub_10002934C();

  return v12;
}

uint64_t sub_100019D64@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v9 = sub_1000026A4(&unk_10003DBC0, &qword_10002D510);
  v10 = sub_100002910(v9);
  __chkstk_darwin(v10);
  sub_10001C734();
  v11 = sub_10002972C();
  sub_1000028EC();
  v13 = v12;
  __chkstk_darwin(v14);
  sub_100002900();
  v17 = v16 - v15;
  sub_10002971C();
  sub_10002970C();
  sub_1000296CC();
  sub_10001A2E4(a1, a2, a3 & 1);
  sub_1000296EC();
  sub_1000296AC();
  v18 = sub_10002980C();
  result = sub_100002984(v4, 1, v18);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(v13 + 8))(v17, v11);
    return (*(*(v18 - 8) + 32))(a4, v4, v18);
  }

  return result;
}

void sub_100019F14(uint64_t a1)
{
  sub_10001C790();
  v2 = v1;
  v25 = sub_10002980C();
  sub_1000028EC();
  v4 = v3;
  __chkstk_darwin(v5);
  sub_10001C6D8();
  v8 = v6 - v7;
  __chkstk_darwin(v9);
  v11 = &v24 - v10;
  v12 = sub_1000297AC();
  v13 = sub_100002910(v12);
  __chkstk_darwin(v13);
  sub_100002900();
  sub_1000026A4(&qword_10003D6C8, &qword_10002F288);
  sub_10001C6E8();
  sub_10002977C();
  sub_10002935C();
  sub_1000026A4(&qword_10003D308, &qword_10002E630);

  sub_10001C710();
  sub_10002977C();
  sub_10002936C();
  sub_1000026A4(&qword_10003D318, &qword_10002E640);

  sub_10001C77C();
  sub_10002977C();
  sub_10002937C();

  v14 = [v2 identifier];
  v15 = sub_10002A0EC();
  v17 = v16;

  sub_100019D64(v15, v17, 1, v11);

  v18 = v25;
  (*(v4 + 16))(v8, v11, v25);
  sub_10002934C();
  (*(v4 + 8))(v11, v18);
  v19 = v2;
  v20 = [v2 name];
  v21 = sub_10002A0EC();
  v23 = v22;

  v26 = v21;
  v27 = v23;
  sub_10002934C();
  v26 = [v19 glyphCharacter];
  LOBYTE(v27) = 0;
  sub_10002934C();

  sub_10001C7A8();
}

uint64_t sub_10001A1D0(uint64_t a1, void *a2)
{
  v7._countAndFlagsBits = a1;
  v3._rawValue = &off_100039DB8;
  v7._object = a2;
  v4 = sub_10002A2FC(v3, v7);

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

uint64_t sub_10001A224(char a1)
{
  if (a1)
  {
    return 0x6D6F74737563;
  }

  else
  {
    return 0x726F68732D6C6C61;
  }
}

uint64_t sub_10001A288@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10001A1D0(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_10001A2B8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10001A224(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_10001A2E4(uint64_t a1, uint64_t a2, char a3)
{
  sub_1000026A4(&qword_10003CF20, &qword_10002DD18);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_10002EE30;
  if (a3)
  {
    *(v6 + 32) = 0x7265646C6F66;
    *(v6 + 40) = 0xE600000000000000;
    *(v6 + 48) = a1;
    *(v6 + 56) = a2;
    sub_10001C1E0(a1, a2, 1);
  }

  else
  {
    v7 = 0xE600000000000000;
    *(v6 + 32) = 0x6D6574737973;
    *(v6 + 40) = 0xE600000000000000;
    v8 = 0x726F68732D6C6C61;
    if (a1)
    {
      v8 = 0x6D6F74737563;
    }

    else
    {
      v7 = 0xED00007374756374;
    }

    *(v6 + 48) = v8;
    *(v6 + 56) = v7;
  }

  sub_1000026A4(&qword_10003D6B8, &qword_10002F280);
  sub_100005EEC(&qword_10003D6C0, &qword_10003D6B8, &qword_10002F280, &protocol conformance descriptor for [A]);
  v9 = sub_10002A03C();
  v11 = v10;

  v13._countAndFlagsBits = v9;
  v13._object = v11;
  sub_10002A13C(v13);

  return 47;
}

uint64_t sub_10001A470(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6)
{
  if ((a3 & 1) == 0)
  {
    if ((a6 & 1) == 0)
    {
      v8 = (a1 & 1) == 0;
      if (a1)
      {
        v9 = 0x6D6F74737563;
      }

      else
      {
        v9 = 0x726F68732D6C6C61;
      }

      if (v8)
      {
        v10 = 0xED00007374756374;
      }

      else
      {
        v10 = 0xE600000000000000;
      }

      if (a4)
      {
        v11 = 0x6D6F74737563;
      }

      else
      {
        v11 = 0x726F68732D6C6C61;
      }

      if (a4)
      {
        v12 = 0xE600000000000000;
      }

      else
      {
        v12 = 0xED00007374756374;
      }

      if (v9 != v11 || v10 != v12)
      {
        v14 = sub_10002A31C();

        return v14 & 1;
      }

      return 1;
    }

    return 0;
  }

  if ((a6 & 1) == 0)
  {
    return 0;
  }

  if (a1 == a4 && a2 == a5)
  {
    return 1;
  }

  return sub_10002A31C();
}

uint64_t sub_10001A574(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4)
  {
    sub_10002A39C(1uLL);

    return sub_10002A12C();
  }

  else
  {
    sub_10002A39C(0);
    sub_10002A12C();
  }
}

Swift::Int sub_10001A640(uint64_t a1, uint64_t a2, char a3)
{
  sub_10002A38C();
  sub_10001A574(v7, a1, a2, a3 & 1);
  return sub_10002A3BC();
}

Swift::Int sub_10001A6B8(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  sub_10002A38C();
  sub_10001A574(v6, v2, v3, v4);
  return sub_10002A3BC();
}

uint64_t sub_10001A740()
{
  if (qword_10003C918 != -1)
  {
    sub_10001C6A4();
    swift_once();
  }

  v0 = xmmword_100041540;
  v1 = qword_100041550;
  sub_100006100();
  v4 = v2;

  return v4(v0, *(&v0 + 1), v1);
}

uint64_t sub_10001A7FC()
{
  sub_100006164();
  v0[2] = v1;
  v0[3] = v2;
  v3 = sub_10002980C();
  v0[4] = v3;
  v0[5] = *(v3 - 8);
  v0[6] = swift_task_alloc();
  v0[7] = swift_task_alloc();
  v4 = sub_1000026A4(&unk_10003DBC0, &qword_10002D510);
  sub_100002910(v4);
  v0[8] = swift_task_alloc();
  v0[9] = swift_task_alloc();

  return _swift_task_switch(sub_10001A904);
}

void sub_10001A904(uint64_t result)
{
  v2 = 0;
  v3 = *(v1 + 40);
  v4 = *(v1 + 16);
  v5 = *(v4 + 16);
  v59 = (v3 + 16);
  v60 = (v3 + 32);
  v58 = (v3 + 8);
  v63 = _swiftEmptyArrayStorage;
  v6 = v4 + 40;
  v57 = v4 + 40;
LABEL_2:
  v7 = v6 + 16 * v2;
  while (v5 != v2)
  {
    if (v2 >= v5)
    {
      __break(1u);
LABEL_32:
      __break(1u);
LABEL_33:
      __break(1u);
      return;
    }

    if (__OFADD__(v2, 1))
    {
      goto LABEL_32;
    }

    v61 = v2 + 1;
    v9 = v64[8];
    v8 = v64[9];
    v10 = v64[4];

    sub_1000297FC();
    sub_10001C2C8(v8, v9, &unk_10003DBC0, &qword_10002D510);
    v11 = sub_100002984(v9, 1, v10);
    v12 = v64[9];
    if (v11 != 1)
    {
      v13 = v64[7];
      v14 = v64[6];
      v15 = v64[4];
      (*v60)(v13, v64[8], v15);
      (*v59)(v14, v13, v15);
      sub_100018CB0(v14);
      v17 = v16;
      v19 = v18;
      v56 = v20;

      (*v58)(v13, v15);
      sub_10001C330(v12, &unk_10003DBC0, &qword_10002D510);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v24 = sub_10001C768();
        v63 = sub_100023700(v24, v25, v26, v27);
      }

      v6 = v57;
      v22 = v63[2];
      v21 = v63[3];
      if (v22 >= v21 >> 1)
      {
        v28 = sub_10001C754(v21);
        v63 = sub_100023700(v28, v29, v30, v63);
      }

      v63[2] = v22 + 1;
      v23 = &v63[3 * v22];
      v23[4] = v17;
      v23[5] = v19;
      *(v23 + 48) = v56 & 1;
      v2 = v61;
      goto LABEL_2;
    }

    sub_10001C330(v12, &unk_10003DBC0, &qword_10002D510);
    ++v2;
    v7 += 16;
  }

  v31 = 0;
  v32 = v63 + 6;
  v33 = -v63[2];
  v62 = _swiftEmptyArrayStorage;
LABEL_14:
  v34 = v31 + 1;
  v35 = &v32[3 * v31];
  while (v33 + v34 != 1)
  {
    v31 = v34;
    if ((v34 - 1) >= v63[2])
    {
      goto LABEL_33;
    }

    v36 = *(v35 - 2);
    if ((*v35 & 1) == 0)
    {
      if (qword_10003C918 != -1)
      {
        sub_10001C6A4();
        swift_once();
      }

      v42 = *(&xmmword_100041540 + 1);
      v40 = xmmword_100041540;
      v44 = qword_100041550;

LABEL_23:
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v48 = sub_10001C768();
        v62 = sub_1000236D0(v48, v49, v50, v51);
      }

      v46 = v62[2];
      v45 = v62[3];
      if (v46 >= v45 >> 1)
      {
        v52 = sub_10001C754(v45);
        v62 = sub_1000236D0(v52, v53, v54, v62);
      }

      v62[2] = v46 + 1;
      v47 = &v62[3 * v46];
      v47[4] = v40;
      v47[5] = v42;
      v47[6] = v44;
      v32 = v63 + 6;
      goto LABEL_14;
    }

    ++v34;
    v37 = v35 + 24;
    v38 = *(v35 - 1);

    sub_10001AD10(v36, v38);
    v40 = v39;
    v42 = v41;
    v44 = v43;
    sub_10001C384(v36, v38, 1);
    v35 = v37;
    if (v40)
    {
      goto LABEL_23;
    }
  }

  sub_100013594();

  v55(v62);
}

void sub_10001AD10(uint64_t a1, uint64_t a2)
{
  v4 = sub_100028988();
  v5 = sub_1000134BC(v4);
  for (i = 0; ; ++i)
  {
    if (v5 == i)
    {

      return;
    }

    if ((v4 & 0xC000000000000001) != 0)
    {
      v7 = sub_10002A26C();
    }

    else
    {
      if (i >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_18;
      }

      v7 = *(v4 + 8 * i + 32);
    }

    v8 = v7;
    if (__OFADD__(i, 1))
    {
      break;
    }

    v9 = [v7 identifier];
    v10 = sub_10002A0EC();
    v12 = v11;

    if (v10 == a1 && v12 == a2)
    {

LABEL_16:

      sub_100019F14(v8);
      return;
    }

    v14 = sub_10002A31C();

    if (v14)
    {
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_18:
  __break(1u);
}

uint64_t sub_10001AE6C(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1000134D8;

  return sub_10001AF14(a1, a2);
}

uint64_t sub_10001AF14(uint64_t a1, uint64_t a2)
{
  v3[7] = a2;
  v3[8] = v2;
  v3[6] = a1;
  return sub_10001C6B8(sub_10001AF30);
}

void sub_10001AF30()
{
  v1 = sub_100028988();
  v2 = 0;
  v25 = sub_1000134BC(v1);
  while (v25 != v2)
  {
    if ((v1 & 0xC000000000000001) != 0)
    {
      v3 = sub_10002A26C();
    }

    else
    {
      if (v2 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_25;
      }

      v3 = *(v1 + 8 * v2 + 32);
    }

    v4 = v3;
    if (__OFADD__(v2, 1))
    {
      __break(1u);
LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
      return;
    }

    v5 = v0[6];
    v6 = v0[7];
    v7 = [v3 name];
    v8 = sub_10002A0EC();
    v10 = v9;

    v0[2] = v8;
    v0[3] = v10;
    v0[4] = v5;
    v0[5] = v6;
    sub_100005F34();
    LOBYTE(v7) = sub_10002A23C();

    if (v7)
    {
      sub_10002A27C();
      sub_10002A29C();
      sub_10002A2AC();
      sub_10002A28C();
    }

    else
    {
    }

    ++v2;
  }

  v11 = sub_1000134BC(_swiftEmptyArrayStorage);
  if (v11)
  {
    v12 = v11;
    sub_100012D2C(0, v11 & ~(v11 >> 63), 0);
    if (v12 < 0)
    {
      goto LABEL_26;
    }

    v13 = 0;
    do
    {
      if ((_swiftEmptyArrayStorage & 0xC000000000000001) != 0)
      {
        v14 = sub_10002A26C();
      }

      else
      {
        v14 = _swiftEmptyArrayStorage[v13 + 4];
      }

      sub_100019F14(v14);
      v16 = v15;
      v18 = v17;
      v20 = v19;
      v22 = _swiftEmptyArrayStorage[2];
      v21 = _swiftEmptyArrayStorage[3];
      if (v22 >= v21 >> 1)
      {
        sub_100012D2C((v21 > 1), v22 + 1, 1);
      }

      ++v13;
      _swiftEmptyArrayStorage[2] = v22 + 1;
      v23 = &_swiftEmptyArrayStorage[3 * v22];
      v23[4] = v16;
      v23[5] = v18;
      v23[6] = v20;
    }

    while (v12 != v13);
  }

  sub_100013594();

  v24(_swiftEmptyArrayStorage);
}

uint64_t sub_10001B200()
{
  sub_1000026A4(&qword_10003D338, &unk_10002E670);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_10002D840;
  if (qword_10003C918 != -1)
  {
    sub_10001C6A4();
    swift_once();
  }

  v1 = *(&xmmword_100041540 + 1);
  v2 = qword_100041550;
  *(v0 + 32) = xmmword_100041540;
  *(v0 + 40) = v1;
  *(v0 + 48) = v2;

  v3 = sub_10001B2FC();
  sub_100023840(v3);
  sub_100013594();

  return v4();
}

char *sub_10001B2FC()
{
  v0 = sub_100028988();
  v1 = sub_1000134BC(v0);
  if (!v1)
  {
LABEL_10:

    return _swiftEmptyArrayStorage;
  }

  v2 = v1;
  result = sub_100012D2C(0, v1 & ~(v1 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v4 = 0;
    do
    {
      if ((v0 & 0xC000000000000001) != 0)
      {
        v5 = sub_10002A26C();
      }

      else
      {
        v5 = *(v0 + 8 * v4 + 32);
      }

      sub_100019F14(v5);
      v7 = v6;
      v9 = v8;
      v11 = v10;
      v13 = _swiftEmptyArrayStorage[2];
      v12 = _swiftEmptyArrayStorage[3];
      if (v13 >= v12 >> 1)
      {
        sub_100012D2C((v12 > 1), v13 + 1, 1);
      }

      ++v4;
      _swiftEmptyArrayStorage[2] = v13 + 1;
      v14 = &_swiftEmptyArrayStorage[3 * v13];
      v14[4] = v7;
      v14[5] = v9;
      v14[6] = v11;
    }

    while (v2 != v4);
    goto LABEL_10;
  }

  __break(1u);
  return result;
}

uint64_t sub_10001B430(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a1;
  v6 = swift_task_alloc();
  *(v3 + 24) = v6;
  *v6 = v3;
  v6[1] = sub_1000119A4;

  return sub_10001AE6C(a2, a3);
}

unint64_t sub_10001B4E4()
{
  result = qword_10003D638;
  if (!qword_10003D638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003D638);
  }

  return result;
}

unint64_t sub_10001B53C()
{
  result = qword_10003D640;
  if (!qword_10003D640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003D640);
  }

  return result;
}

unint64_t sub_10001B590()
{
  result = qword_10003D648;
  if (!qword_10003D648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003D648);
  }

  return result;
}

uint64_t sub_10001B5E4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100019900();
  *a1 = result;
  return result;
}

uint64_t sub_10001B60C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1000134D8;

  return sub_10001A7FC();
}

uint64_t sub_10001B6A8(uint64_t a1)
{
  *(v2 + 16) = a1;
  v3 = *v1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_1000134C0;

  return sub_10001B1E8(v3);
}

unint64_t sub_10001B744()
{
  result = qword_10003D650;
  if (!qword_10003D650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003D650);
  }

  return result;
}

unint64_t sub_10001B798()
{
  result = qword_10003D658;
  if (!qword_10003D658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003D658);
  }

  return result;
}

unint64_t sub_10001B7F0()
{
  result = qword_10003D660;
  if (!qword_10003D660)
  {
    sub_1000028A4(&qword_10003D668, qword_10002EEF0);
    sub_10001B798();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003D660);
  }

  return result;
}

uint64_t sub_10001B874(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_100018B8C();
  *v5 = v2;
  v5[1] = sub_10001B928;

  return EntityQuery.results()(a1, a2, v6);
}

uint64_t sub_10001B928()
{
  sub_100006164();
  sub_100013588();
  v1 = *v0;
  sub_1000134EC();
  *v2 = v1;

  sub_100006100();

  return v3();
}

uint64_t sub_10001BA08(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_10001BA98;

  return sub_10001A72C();
}

uint64_t sub_10001BA98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_100013588();
  v8 = *(v7 + 16);
  v9 = *v3;
  sub_1000134EC();
  *v10 = v9;

  *v8 = a1;
  v8[1] = a2;
  v8[2] = a3;
  sub_100006100();

  return v11();
}

uint64_t sub_10001BBB0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100019B00();
  *a1 = result;
  a1[1] = v3;
  a1[2] = v4;
  return result;
}

unint64_t sub_10001BBE0()
{
  result = qword_10003D670;
  if (!qword_10003D670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003D670);
  }

  return result;
}

unint64_t sub_10001BC38()
{
  result = qword_10003D678;
  if (!qword_10003D678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003D678);
  }

  return result;
}

unint64_t sub_10001BC90()
{
  result = qword_10003D680;
  if (!qword_10003D680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003D680);
  }

  return result;
}

uint64_t sub_10001BCE8@<X0>(void *a1@<X8>)
{
  if (qword_10003C910 != -1)
  {
    swift_once();
  }

  *a1 = qword_100041538;
}

unint64_t sub_10001BD58()
{
  result = qword_10003D688;
  if (!qword_10003D688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003D688);
  }

  return result;
}

unint64_t sub_10001BDB0()
{
  result = qword_10003D690;
  if (!qword_10003D690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003D690);
  }

  return result;
}

unint64_t sub_10001BE0C()
{
  result = qword_10003D698;
  if (!qword_10003D698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003D698);
  }

  return result;
}

uint64_t sub_10001BE60@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100018BE0();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_10001BE8C@<X0>(uint64_t a1@<X8>)
{
  if (qword_10003C908 != -1)
  {
    swift_once();
  }

  v2 = sub_10002960C();
  v3 = sub_10000FB6C(v2, qword_100041520);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_10001BF78(uint64_t a1)
{
  v2 = sub_10001B590();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_10001BFC8()
{
  result = qword_10003D6B0;
  if (!qword_10003D6B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003D6B0);
  }

  return result;
}

uint64_t sub_10001C024(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_10001B928;

  return InstanceDisplayRepresentable.displayRepresentation(with:)(a1, a2, a3, a4);
}

uint64_t sub_10001C0E8(uint64_t a1)
{
  v2 = sub_10001BE0C();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

__n128 sub_10001C134(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_10001C148(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 24))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10001C188(uint64_t result, int a2, int a3)
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