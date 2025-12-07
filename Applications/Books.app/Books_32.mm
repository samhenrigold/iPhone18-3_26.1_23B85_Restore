uint64_t sub_10045C2D4@<X0>(uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a7@<X8>)
{
  v42 = a5;
  v43 = a7;
  v9 = sub_1001F1160(&qword_100ADB858, &unk_10081A090);
  __chkstk_darwin(v9 - 8);
  v11 = &v39 - v10;
  v12 = sub_1001F1160(&qword_100AE4700, &qword_100815B48);
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v41 = &v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v39 - v16;
  v18 = sub_1001F1160(&qword_100AE4708, &unk_1008271C0);
  __chkstk_darwin(v18 - 8);
  v40 = &v39 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v44 = &v39 - v21;
  if (sub_10079F154())
  {
    sub_10079BB44();
    v22 = sub_10079BB84();
    v23 = (*(*(v22 - 8) + 56))(v11, 0, 1, v22);
    v39 = &v39;
    __chkstk_darwin(v23);
    *(&v39 - 2) = a3;
    *(&v39 - 1) = a4;

    sub_1001F1160(&qword_100AD1D70, &unk_100815B50);
    sub_100005920(&qword_100ADBBB0, &qword_100AD1D70, &unk_100815B50, &protocol conformance descriptor for Label<A, B>);
    sub_10079E044();
    v24 = v44;
    (*(v13 + 32))(v44, v17, v12);
    v25 = v13;
    v26 = *(v13 + 56);
    v27 = v24;
    v28 = 0;
  }

  else
  {
    v25 = v13;
    v26 = *(v13 + 56);
    v27 = v44;
    v28 = 1;
  }

  v29 = v12;
  v26(v27, v28, 1, v12);

  sub_1001F1160(&qword_100AD1D70, &unk_100815B50);
  sub_100005920(&qword_100ADBBB0, &qword_100AD1D70, &unk_100815B50, &protocol conformance descriptor for Label<A, B>);
  sub_10079E054();
  v30 = v44;
  v31 = v40;
  sub_1000077D8(v44, v40, &qword_100AE4708, &unk_1008271C0);
  v32 = v25;
  v33 = *(v25 + 16);
  v34 = v41;
  v33(v41, v17, v29);
  v35 = v43;
  sub_1000077D8(v31, v43, &qword_100AE4708, &unk_1008271C0);
  v36 = sub_1001F1160(&qword_100AE4710, &qword_1008271D0);
  v33((v35 + *(v36 + 48)), v34, v29);
  v37 = *(v32 + 8);
  v37(v17, v29);
  sub_100007840(v30, &qword_100AE4708, &unk_1008271C0);
  v37(v34, v29);
  return sub_100007840(v31, &qword_100AE4708, &unk_1008271C0);
}

uint64_t sub_10045C794(uint64_t a1, uint64_t a2)
{
  sub_100206ECC();

  return sub_10079DFD4();
}

uint64_t sub_10045C80C()
{
  v0 = sub_100796CF4();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  __chkstk_darwin(v2);
  v4 = v18 - v3;
  v5 = sub_1007A21D4();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = v18 - v10;
  sub_1007A2154();
  sub_100796C94();
  (*(v6 + 16))(v8, v11, v5);
  type metadata accessor for BundleFinder();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v13 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  sub_100796C94();
  v14 = sub_1007A22B4();
  v16 = v15;
  (*(v1 + 8))(v4, v0);
  (*(v6 + 8))(v11, v5);
  v18[1] = v14;
  v18[2] = v16;
  sub_100206ECC();
  return sub_10079DFD4();
}

void sub_10045CB14(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v51 = a2;
  v5 = sub_10079CE14();
  __chkstk_darwin(v5 - 8);
  v7 = v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a1[3];
  v9 = sub_1007A2654();
  v10 = a1[5];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v12 = a1[2];
  WitnessTable = swift_getWitnessTable();
  v50 = v10;
  v44 = v8;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  *&v55 = v9;
  *(&v55 + 1) = AssociatedTypeWitness;
  v49 = v12;
  *&v56 = v12;
  *(&v56 + 1) = WitnessTable;
  v57 = AssociatedConformanceWitness;
  v15 = sub_10079E284();
  v45 = a1[4];
  v54 = v45;
  v46 = swift_getWitnessTable();
  v16 = sub_10079E564();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v47 = v41 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v48 = v41 - v20;
  v21 = sub_10079E374();
  v22 = *(v21 - 8);
  __chkstk_darwin(v21);
  v24 = (v41 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  v25 = sub_10079E384();
  __chkstk_darwin(v25 - 8);
  v27 = v41 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = (*(v3 + 8) + *(v3 + 24)) / (*(v3 + 24) + *(v3 + 16));
  if (COERCE__INT64(fabs(v28)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_10;
  }

  if (v28 <= -9.22337204e18)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if (v28 >= 9.22337204e18)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v42 = v21;
  v43 = v7;
  if (v28 <= 1)
  {
    v29 = 1;
  }

  else
  {
    v29 = v28;
  }

  if ((v29 * *(v3 + 56)) >> 64 == (v29 * *(v3 + 56)) >> 63)
  {
    *&v52 = *v3;

    swift_getWitnessTable();
    v41[1] = v15;
    sub_1007A28E4();
    v52 = v55;
    v53 = v56;
    v30 = v44;
    sub_1007A3524();
    swift_getWitnessTable();
    sub_1007A2664();
    *v24 = xmmword_100826830;
    (*(v22 + 104))(v24, enum case for GridItem.Size.flexible(_:), v42);
    sub_10079E394();
    v32 = sub_10045D0C0(v27, v29, v31);
    v42 = v41;
    __chkstk_darwin(v32);
    *&v33 = v49;
    *(&v33 + 1) = v30;
    *&v34 = v45;
    *(&v34 + 1) = v50;
    *&v41[-6] = v33;
    *&v41[-4] = v34;
    v40 = v3;
    sub_10079CB24();
    v35 = v46;
    sub_10045D624();
    v39 = v35;
    v36 = v47;
    sub_10079E554();

    swift_getWitnessTable();
    v37 = v48;
    sub_10039232C();
    v38 = *(v17 + 8);
    v38(v36, v16);
    sub_10039232C();
    v38(v37, v16);
    return;
  }

LABEL_12:
  __break(1u);
}

char *sub_10045D0C0(char *result, uint64_t a2, double a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v4 = result;
    if (a2)
    {
      v5 = sub_10079E384();
      v6 = sub_1007A2634();
      *(v6 + 2) = a2;
      v7 = *(v5 - 8);
      v8 = (*(v7 + 80) + 32) & ~*(v7 + 80);
      v9 = *(v7 + 16);
      v9(&v6[v8], v4, v5);
      v10 = a2 - 1;
      if (a2 != 1)
      {
        v11 = *(v7 + 72);
        v12 = &v6[v11 + v8];
        do
        {
          v9(v12, v4, v5);
          v12 += v11;
          --v10;
        }

        while (v10);
      }
    }

    else
    {
      v6 = _swiftEmptyArrayStorage;
    }

    v13 = sub_10079E384();
    (*(*(v13 - 8) + 8))(v4, v13);
    return v6;
  }

  return result;
}

uint64_t sub_10045D21C@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v26 = a5;
  v31 = a7;
  v30 = sub_1007A2654();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  WitnessTable = swift_getWitnessTable();
  v33 = v30;
  v34 = AssociatedTypeWitness;
  v35 = a3;
  v36 = WitnessTable;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v12 = sub_10079E284();
  v27 = *(v12 - 8);
  __chkstk_darwin(v12);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v26 - v16;
  v38 = a1;
  v18 = swift_allocObject();
  v19 = a3;
  *(v18 + 16) = a3;
  *(v18 + 24) = a4;
  v20 = v26;
  *(v18 + 32) = v26;
  *(v18 + 40) = a6;
  v21 = a2[1];
  *(v18 + 48) = *a2;
  *(v18 + 64) = v21;
  v22 = a2[3];
  *(v18 + 80) = a2[2];
  *(v18 + 96) = v22;

  v33 = v19;
  v34 = a4;
  v35 = v20;
  v36 = a6;
  v23 = type metadata accessor for Grid(0, &v33);
  (*(*(v23 - 8) + 16))(&v33, a2, v23);
  sub_10079E274();
  v32 = v20;
  swift_getWitnessTable();
  sub_10039232C();
  v24 = *(v27 + 8);
  v24(v14, v12);
  sub_10039232C();
  return (v24)(v17, v12);
}

uint64_t sub_10045D4F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 - 8);
  __chkstk_darwin(a1);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v7);
  v10 = &v14 - v9;
  (*(v11 + 40))(v8);
  sub_10039232C();
  v12 = *(v4 + 8);
  v12(v6, a3);
  sub_10039232C();
  return (v12)(v10, a3);
}

uint64_t sub_10045D624()
{
  sub_10079CE14();
  sub_100460EB4(&unk_100AE4780, &type metadata accessor for PinnedScrollableViews, &protocol conformance descriptor for PinnedScrollableViews);
  return sub_1007A3D24();
}

uint64_t sub_10045D6E0()
{
  v0 = sub_10079C3D4();
  __chkstk_darwin(v0);
  v2 = &v5 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100AD1658 != -1)
  {
    swift_once();
  }

  v3 = sub_100008B98(v0, qword_100AE3E20);
  sub_10045FFF4(v3, v2, &type metadata accessor for RoundedRectangle);
  sub_100460EB4(&qword_100AE4510, &type metadata accessor for RoundedRectangle, &protocol conformance descriptor for RoundedRectangle);
  result = sub_10079E2F4();
  qword_100AE3E40 = result;
  return result;
}

uint64_t sub_10045D828(uint64_t a1, uint64_t *a2)
{
  v3 = [objc_opt_self() tertiarySystemFillColor];
  result = sub_10079DEA4();
  *a2 = result;
  return result;
}

double sub_10045D894@<D0>(void *a1@<X2>, void *a2@<X3>, void *a4@<X8>)
{
  if (*a1 != -1)
  {
    v6 = a2;
    v7 = a4;
    swift_once();
    a4 = v7;
    a2 = v6;
  }

  *a4 = *a2;

  return result;
}

uint64_t sub_10045D8F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_10045FFA0();

  return static EnvironmentKey<>._valuesEqual(_:_:)(a1, a2, a3, a4, v8);
}

void sub_10045D994(_BYTE *a4@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10079B9A4(&v5);

  *a4 = v5;
}

uint64_t sub_10045DA24(char *a1, void **a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v7 = v6;
  return sub_10079B9B4();
}

uint64_t sub_10045DA90@<X0>(_BYTE *a1@<X8>)
{
  result = sub_10079C704();
  *a1 = result & 1;
  return result;
}

uint64_t sub_10045DAC0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_10079C734();
  *a1 = result & 1;
  return result;
}

double sub_10045DB44()
{
  type metadata accessor for ReadingSettingsView(0);
  sub_1001F1160(&qword_100AE4018, &qword_100826930);
  sub_10079E004();
  sub_10079E004();
  sub_1001F1160(&unk_100AE40F0, &unk_100826988);
  sub_10079DFF4();
  sub_10079E004();
  return result;
}

uint64_t sub_10045DC60(uint64_t a1)
{
  v4 = *(type metadata accessor for ReadingSettingsView(0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100009A34;

  return sub_100452104(v8, a1, v6, v7, v1 + v5);
}

uint64_t sub_10045DD80(uint64_t a1)
{
  v4 = *(type metadata accessor for ReadingSettingsView(0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10002812C;

  return sub_100451D38(v8, a1, v6, v7, v1 + v5);
}

uint64_t sub_10045DEA0()
{
  v1 = type metadata accessor for ReadingSettingsView(0);
  v2 = (*(*(v1 - 1) + 80) + 32) & ~*(*(v1 - 1) + 80);
  swift_unknownObjectRelease();
  v3 = v0 + v2;
  sub_1000074E0((v0 + v2));
  v4 = v1[5];
  v5 = sub_1001F1160(&unk_100AE3E50, &qword_100826840);
  (*(*(v5 - 8) + 8))(v0 + v2 + v4, v5);

  v6 = v1[11];
  sub_1001F1160(&unk_100ADB730, &qword_1008121A0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = sub_10079BC44();
    (*(*(v7 - 8) + 8))(v3 + v6, v7);
  }

  else
  {
  }

  v8 = v1[13];
  sub_1001F1160(&unk_100ADB4C0, &qword_100813DC0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = sub_10079CEE4();
    v10 = *(v9 - 8);
    if (!(*(v10 + 48))(v3 + v8, 1, v9))
    {
      (*(v10 + 8))(v3 + v8, v9);
    }
  }

  else
  {
  }

  v11 = v1[14];
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = sub_10079CEE4();
    v13 = *(v12 - 8);
    if (!(*(v13 + 48))(v3 + v11, 1, v12))
    {
      (*(v13 + 8))(v3 + v11, v12);
    }
  }

  else
  {
  }

  sub_10002AEBC(*(v3 + v1[15]), *(v3 + v1[15] + 8));
  sub_10002AEBC(*(v3 + v1[16]), *(v3 + v1[16] + 8));
  sub_10002AEBC(*(v3 + v1[17]), *(v3 + v1[17] + 8));

  v14 = v1[22];
  v15 = sub_1001F1160(&qword_100AE3E68, &qword_100826848);
  (*(*(v15 - 8) + 8))(v3 + v14, v15);
  v16 = v3 + v1[23];
  v17 = sub_10079D024();
  v18 = *(v17 - 8);
  if (!(*(v18 + 48))(v16, 1, v17))
  {
    (*(v18 + 8))(v16, v17);
  }

  sub_1001F1160(&qword_100AE3E70, &unk_100813BD0);

  return swift_deallocObject();
}

uint64_t sub_10045E350(uint64_t a1)
{
  v4 = *(type metadata accessor for ReadingSettingsView(0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100009A34;

  return sub_1004530F8(v8, a1, v6, v7, v1 + v5);
}

double sub_10045E470@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for ReadingSettingsView(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_100454284(a1, v6, a2);
}

uint64_t sub_10045E528(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for ReadingSettingsView(0) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

unint64_t sub_10045E5B4()
{
  result = qword_100AE41B8;
  if (!qword_100AE41B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE41B8);
  }

  return result;
}

unint64_t sub_10045E608()
{
  result = qword_100AE41C0;
  if (!qword_100AE41C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE41C0);
  }

  return result;
}

uint64_t sub_10045E6A4(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, uint64_t))
{
  v5 = *(type metadata accessor for ReadingSettingsView(0) - 8);
  v6 = (v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80)));
  v7 = v6[3];
  v8 = v6[4];
  sub_10000E3E8(v6, v7);
  return a2(a1, v7, v8);
}

uint64_t sub_10045E738(uint64_t a1)
{
  v2 = *(type metadata accessor for ReadingSettingsView(0) - 8);
  v3 = (v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80)));
  sub_10000E3E8(v3, v3[3]);
  return sub_1007A1954();
}

unint64_t sub_10045E868()
{
  result = qword_100AE4278;
  if (!qword_100AE4278)
  {
    sub_1001F1234(&qword_100AE4270, &qword_100826C58);
    sub_10045E920();
    sub_100005920(&qword_100AF64C0, &unk_100AE40B0, &qword_100831A40, &protocol conformance descriptor for _BackgroundStyleModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE4278);
  }

  return result;
}

unint64_t sub_10045E920()
{
  result = qword_100AE4280;
  if (!qword_100AE4280)
  {
    sub_1001F1234(&qword_100AE4288, &qword_100826C60);
    sub_10045E9AC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE4280);
  }

  return result;
}

unint64_t sub_10045E9AC()
{
  result = qword_100AE4290;
  if (!qword_100AE4290)
  {
    sub_1001F1234(&qword_100AE4298, &qword_100826C68);
    sub_10045EA38();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE4290);
  }

  return result;
}

unint64_t sub_10045EA38()
{
  result = qword_100AE42A0;
  if (!qword_100AE42A0)
  {
    sub_1001F1234(&qword_100AE42A8, &qword_100826C70);
    sub_100005920(&qword_100AE42B0, &qword_100AE42B8, &unk_100826C78, &protocol conformance descriptor for HStack<A>);
    sub_100005920(&qword_100AD1D60, &unk_100ADB260, &unk_10080B750, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE42A0);
  }

  return result;
}

void sub_10045EB1C(_BYTE *a1@<X8>)
{
  type metadata accessor for ReadingSettingsView(0);

  sub_100457CE8(a1);
}

uint64_t sub_10045EB90(unsigned __int8 *a1)
{
  v2 = *(type metadata accessor for ReadingSettingsView(0) - 8);
  v3 = (v1 + ((*(v2 + 80) + 32) & ~*(v2 + 80)));
  sub_10000E3E8(v3, v3[3]);
  return sub_1007A1994();
}

unint64_t sub_10045EC18()
{
  result = qword_100AE42D0;
  if (!qword_100AE42D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE42D0);
  }

  return result;
}

unint64_t sub_10045EC6C()
{
  result = qword_100AE42D8;
  if (!qword_100AE42D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE42D8);
  }

  return result;
}

void sub_10045ECC0(_BYTE *a1@<X8>)
{
  type metadata accessor for ReadingSettingsView(0);

  sub_100457D60(a1);
}

uint64_t sub_10045ED34()
{
  v1 = type metadata accessor for ReadingSettingsView(0);
  v2 = (*(*(v1 - 1) + 80) + 32) & ~*(*(v1 - 1) + 80);
  swift_unknownObjectRelease();
  v3 = v0 + v2;
  sub_1000074E0((v0 + v2));
  v4 = v1[5];
  v5 = sub_1001F1160(&unk_100AE3E50, &qword_100826840);
  (*(*(v5 - 8) + 8))(v0 + v2 + v4, v5);

  v6 = v1[11];
  sub_1001F1160(&unk_100ADB730, &qword_1008121A0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = sub_10079BC44();
    (*(*(v7 - 8) + 8))(v3 + v6, v7);
  }

  else
  {
  }

  v8 = v1[13];
  sub_1001F1160(&unk_100ADB4C0, &qword_100813DC0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = sub_10079CEE4();
    v10 = *(v9 - 8);
    if (!(*(v10 + 48))(v3 + v8, 1, v9))
    {
      (*(v10 + 8))(v3 + v8, v9);
    }
  }

  else
  {
  }

  v11 = v1[14];
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = sub_10079CEE4();
    v13 = *(v12 - 8);
    if (!(*(v13 + 48))(v3 + v11, 1, v12))
    {
      (*(v13 + 8))(v3 + v11, v12);
    }
  }

  else
  {
  }

  sub_10002AEBC(*(v3 + v1[15]), *(v3 + v1[15] + 8));
  sub_10002AEBC(*(v3 + v1[16]), *(v3 + v1[16] + 8));
  sub_10002AEBC(*(v3 + v1[17]), *(v3 + v1[17] + 8));

  v14 = v1[22];
  v15 = sub_1001F1160(&qword_100AE3E68, &qword_100826848);
  (*(*(v15 - 8) + 8))(v3 + v14, v15);
  v16 = v3 + v1[23];
  v17 = sub_10079D024();
  v18 = *(v17 - 8);
  if (!(*(v18 + 48))(v16, 1, v17))
  {
    (*(v18 + 8))(v16, v17);
  }

  sub_1001F1160(&qword_100AE3E70, &unk_100813BD0);

  return swift_deallocObject();
}

uint64_t sub_10045F1D8()
{
  v1 = *(type metadata accessor for ReadingSettingsView(0) - 8);
  v2 = (v0 + ((*(v1 + 80) + 32) & ~*(v1 + 80)));
  sub_10000E3E8(v2, v2[3]);
  return sub_1007A1974();
}

void sub_10045F264(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for ReadingSettingsView(0) - 8);
  v6 = (*(v5 + 64) + ((*(v5 + 80) + 16) & ~*(v5 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v2 + v6);
  v8 = *(v2 + ((v6 + 15) & 0xFFFFFFFFFFFFFFF8));

  sub_100457BC4(a1, v7, v8, a2);
}

unint64_t sub_10045F328()
{
  result = qword_100AE43A8;
  if (!qword_100AE43A8)
  {
    sub_1001F1234(&unk_100AE4390, &qword_100826D50);
    sub_100005920(&qword_100AE43B0, &unk_100AE43B8, &unk_100826D58, &protocol conformance descriptor for _ShapeView<A, B>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE43A8);
  }

  return result;
}

unint64_t sub_10045F3E0()
{
  result = qword_100AE43F8;
  if (!qword_100AE43F8)
  {
    sub_1001F1234(&qword_100AE43E0, &qword_100826DC8);
    sub_1004605A8(&qword_100AE4400, &qword_100AE4408, &qword_100826DE0, sub_1003F2178);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE43F8);
  }

  return result;
}

unint64_t sub_10045F498()
{
  result = qword_100AE4418;
  if (!qword_100AE4418)
  {
    sub_1001F1234(&qword_100AE43D0, &qword_100826DB8);
    sub_10045F524();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE4418);
  }

  return result;
}

unint64_t sub_10045F524()
{
  result = qword_100AE4420;
  if (!qword_100AE4420)
  {
    sub_1001F1234(&qword_100AE43F0, &qword_100826DD8);
    sub_100005920(&qword_100AE4428, &qword_100AE4430, &qword_100826DE8, &protocol conformance descriptor for HStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE4420);
  }

  return result;
}

unint64_t sub_10045F5DC()
{
  result = qword_100AE4450;
  if (!qword_100AE4450)
  {
    sub_1001F1234(&qword_100AE4440, &qword_100826DF8);
    sub_100460EB4(&qword_100AF45F0, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE4450);
  }

  return result;
}

uint64_t sub_10045F6B0()
{
  v1 = type metadata accessor for ReadingSettingsView(0);
  v2 = (v0 + ((*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80)));
  sub_1000074E0(v2);
  v3 = v1[5];
  v4 = sub_1001F1160(&unk_100AE3E50, &qword_100826840);
  (*(*(v4 - 8) + 8))(&v2[v3], v4);

  v5 = v1[11];
  sub_1001F1160(&unk_100ADB730, &qword_1008121A0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_10079BC44();
    (*(*(v6 - 8) + 8))(&v2[v5], v6);
  }

  else
  {
  }

  v7 = v1[13];
  sub_1001F1160(&unk_100ADB4C0, &qword_100813DC0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = sub_10079CEE4();
    v9 = *(v8 - 8);
    if (!(*(v9 + 48))(&v2[v7], 1, v8))
    {
      (*(v9 + 8))(&v2[v7], v8);
    }
  }

  else
  {
  }

  v10 = v1[14];
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_10079CEE4();
    v12 = *(v11 - 8);
    if (!(*(v12 + 48))(&v2[v10], 1, v11))
    {
      (*(v12 + 8))(&v2[v10], v11);
    }
  }

  else
  {
  }

  sub_10002AEBC(*&v2[v1[15]], v2[v1[15] + 8]);
  sub_10002AEBC(*&v2[v1[16]], v2[v1[16] + 8]);
  sub_10002AEBC(*&v2[v1[17]], v2[v1[17] + 8]);

  v13 = v1[22];
  v14 = sub_1001F1160(&qword_100AE3E68, &qword_100826848);
  (*(*(v14 - 8) + 8))(&v2[v13], v14);
  v15 = &v2[v1[23]];
  v16 = sub_10079D024();
  v17 = *(v16 - 8);
  if (!(*(v17 + 48))(v15, 1, v16))
  {
    (*(v17 + 8))(v15, v16);
  }

  sub_1001F1160(&qword_100AE3E70, &unk_100813BD0);

  return swift_deallocObject();
}

uint64_t sub_10045FB64(uint64_t (*a1)(uint64_t, uint64_t))
{
  v3 = *(type metadata accessor for ReadingSettingsView(0) - 8);
  v4 = (v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80)));
  v5 = v4[3];
  v6 = v4[4];
  sub_10000E3E8(v4, v5);
  return a1(v5, v6);
}

unint64_t sub_10045FBE8()
{
  result = qword_100AE4458;
  if (!qword_100AE4458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE4458);
  }

  return result;
}

uint64_t sub_10045FC68(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 120))
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

uint64_t sub_10045FCB0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 120) = 1;
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

    *(result + 120) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10045FD1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

unint64_t sub_10045FD70()
{
  result = qword_100AE44E8;
  if (!qword_100AE44E8)
  {
    sub_1001F1234(&qword_100AE40E8, &qword_100826980);
    sub_10045FDFC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE44E8);
  }

  return result;
}

unint64_t sub_10045FDFC()
{
  result = qword_100AE44F0;
  if (!qword_100AE44F0)
  {
    sub_1001F1234(&qword_100AE4010, &qword_100826928);
    sub_10045FE88();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE44F0);
  }

  return result;
}

unint64_t sub_10045FE88()
{
  result = qword_100AE44F8;
  if (!qword_100AE44F8)
  {
    sub_1001F1234(&qword_100AE4008, &qword_100826920);
    sub_1004605A8(&qword_100AE4500, &qword_100AE4000, &qword_100826918, sub_100458EA4);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE44F8);
  }

  return result;
}

unint64_t sub_10045FFA0()
{
  result = qword_100AE4508;
  if (!qword_100AE4508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE4508);
  }

  return result;
}

uint64_t sub_10045FFF4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_1004600F4()
{
  result = qword_100AE4560;
  if (!qword_100AE4560)
  {
    sub_1001F1234(&qword_100AE4530, &qword_1008270D0);
    sub_100460180();
    sub_10046038C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE4560);
  }

  return result;
}

unint64_t sub_100460180()
{
  result = qword_100AE4568;
  if (!qword_100AE4568)
  {
    sub_1001F1234(&qword_100AE4570, &qword_1008270F8);
    sub_10046020C();
    sub_100460338();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE4568);
  }

  return result;
}

unint64_t sub_10046020C()
{
  result = qword_100AE4578;
  if (!qword_100AE4578)
  {
    sub_1001F1234(&qword_100AE4528, &qword_1008270C8);
    sub_1001F1234(&qword_100AE4518, &qword_1008270B8);
    sub_100005920(&qword_100AE4558, &qword_100AE4518, &qword_1008270B8, &protocol conformance descriptor for VStack<A>);
    swift_getOpaqueTypeConformance2();
    sub_100460EB4(&qword_100AF45F0, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE4578);
  }

  return result;
}

unint64_t sub_100460338()
{
  result = qword_100AE4580;
  if (!qword_100AE4580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE4580);
  }

  return result;
}

unint64_t sub_10046038C()
{
  result = qword_100AE4588;
  if (!qword_100AE4588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE4588);
  }

  return result;
}

unint64_t sub_100460438()
{
  result = qword_100AE4590;
  if (!qword_100AE4590)
  {
    sub_1001F1234(&qword_100AE4540, &qword_1008270E0);
    sub_1004605A8(&qword_100AE4598, &qword_100AE4538, &qword_1008270D8, sub_1004600F4);
    sub_1004604F0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE4590);
  }

  return result;
}

unint64_t sub_1004604F0()
{
  result = qword_100AE45A0;
  if (!qword_100AE45A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE45A0);
  }

  return result;
}

uint64_t sub_100460544()
{

  sub_10002AEBC(*(v0 + 104), *(v0 + 112));

  return swift_deallocObject();
}

uint64_t sub_1004605A8(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_1001F1234(a2, a3);
    a4();
    sub_100460EB4(&qword_100AF45F0, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100460670()
{
  result = qword_100AE4660;
  if (!qword_100AE4660)
  {
    sub_1001F1234(&qword_100AE4610, &qword_100827160);
    sub_100460728();
    sub_100005920(&qword_100AE46E8, &qword_100AE4650, &qword_1008271A8, &protocol conformance descriptor for _OverlayModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE4660);
  }

  return result;
}

unint64_t sub_100460728()
{
  result = qword_100AE4668;
  if (!qword_100AE4668)
  {
    sub_1001F1234(&qword_100AE4608, &qword_100827158);
    sub_1004607E0();
    sub_100005920(&qword_100AE46E0, &qword_100AE4630, &qword_100827188, &protocol conformance descriptor for _ContentShapeModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE4668);
  }

  return result;
}

unint64_t sub_1004607E0()
{
  result = qword_100AE4670;
  if (!qword_100AE4670)
  {
    sub_1001F1234(&qword_100AE4600, &qword_100827150);
    sub_100460898();
    sub_100005920(&unk_100AF6660, &qword_100AD97F8, &qword_100816BF0, &protocol conformance descriptor for _ClipEffect<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE4670);
  }

  return result;
}

unint64_t sub_100460898()
{
  result = qword_100AE4678;
  if (!qword_100AE4678)
  {
    sub_1001F1234(&qword_100AE45F8, &qword_100827148);
    sub_100460950();
    sub_100005920(&unk_100AE46D0, &unk_100AE4620, &unk_100827178, &protocol conformance descriptor for _OverlayModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE4678);
  }

  return result;
}

unint64_t sub_100460950()
{
  result = qword_100AE4680;
  if (!qword_100AE4680)
  {
    sub_1001F1234(&qword_100AE45F0, &qword_100827140);
    sub_100460A08();
    sub_100005920(&qword_100AF64C0, &unk_100AE40B0, &qword_100831A40, &protocol conformance descriptor for _BackgroundStyleModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE4680);
  }

  return result;
}

unint64_t sub_100460A08()
{
  result = qword_100AE4688;
  if (!qword_100AE4688)
  {
    sub_1001F1234(&qword_100AE45E8, &qword_100827138);
    sub_100460A94();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE4688);
  }

  return result;
}

unint64_t sub_100460A94()
{
  result = qword_100AE4690;
  if (!qword_100AE4690)
  {
    sub_1001F1234(&qword_100AE45E0, &qword_100827130);
    sub_100460B20();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE4690);
  }

  return result;
}

unint64_t sub_100460B20()
{
  result = qword_100AE4698;
  if (!qword_100AE4698)
  {
    sub_1001F1234(&qword_100AE45D8, &qword_100827128);
    sub_100460BD8();
    sub_100005920(&qword_100AE46C0, &qword_100AE46C8, &qword_1008271B8, &protocol conformance descriptor for _BackgroundModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE4698);
  }

  return result;
}

unint64_t sub_100460BD8()
{
  result = qword_100AE46A0;
  if (!qword_100AE46A0)
  {
    sub_1001F1234(&qword_100AE45D0, &qword_100827120);
    sub_100460C64();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE46A0);
  }

  return result;
}

unint64_t sub_100460C64()
{
  result = qword_100AE46A8;
  if (!qword_100AE46A8)
  {
    sub_1001F1234(&qword_100AE45C8, &qword_100827118);
    sub_100460CF0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE46A8);
  }

  return result;
}

unint64_t sub_100460CF0()
{
  result = qword_100AE46B0;
  if (!qword_100AE46B0)
  {
    sub_1001F1234(&qword_100AE45C0, &qword_100827110);
    sub_100005920(&qword_100AE46B8, &qword_100AE45B8, &qword_100827108, &protocol conformance descriptor for VStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE46B0);
  }

  return result;
}

uint64_t sub_100460DB0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_100460E18()
{
  result = qword_100AE4770;
  if (!qword_100AE4770)
  {
    sub_1001F1234(&qword_100AE4758, &qword_100827218);
    sub_10024A698();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE4770);
  }

  return result;
}

uint64_t sub_100460EB4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100460F14()
{
  v0 = sub_10079ACE4();
  sub_100009A38(v0, qword_100AE4790);
  sub_100008B98(v0, qword_100AE4790);
  sub_10001389C();
  return sub_1007A33F4();
}

uint64_t sub_100460F88()
{
  v1 = v0;
  v2 = type metadata accessor for OverlayViewModel.Search(0);
  __chkstk_darwin(v2 - 8);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for OverlayViewModel.Overlay(0);
  __chkstk_darwin(v5);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1004621E4(v1, v7);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      sub_1001F1160(&qword_100AE4A10, &qword_1008275C8);
      sub_1004622AC();
      v12 = sub_1007A3764();

      return v12;
    }

    type metadata accessor for BookmarkNotesModule();
    v9 = &unk_100AE4A20;
    v10 = type metadata accessor for BookmarkNotesModule;
    v11 = &unk_100845314;
    goto LABEL_9;
  }

  if (EnumCaseMultiPayload != 2)
  {
    if (EnumCaseMultiPayload == 3)
    {
      type metadata accessor for ShareModule();
      v9 = &unk_100AE4A08;
      v10 = type metadata accessor for ShareModule;
      v11 = &unk_10082EB04;
    }

    else
    {
      type metadata accessor for TOCModule();
      v9 = &unk_100AE4A00;
      v10 = type metadata accessor for TOCModule;
      v11 = &unk_100825078;
    }

LABEL_9:
    sub_100462310(v9, v10, v11);
    v12 = sub_1007A3764();

    return v12;
  }

  sub_100462248(v7, v4);
  sub_1001F1160(&qword_100ADB388, &qword_1008199B0);
  v12 = sub_10079FD64();
  sub_1003039C8(v4, type metadata accessor for OverlayViewModel.Search);
  return v12;
}

uint64_t sub_1004611E8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100460F88();
  *a1 = result;
  return result;
}

uint64_t sub_100461258@<X0>(uint64_t *a1@<X8>)
{
  sub_1001F1160(&qword_100AE4A10, &qword_1008275C8);
  sub_1004622AC();
  result = sub_1007A3764();
  *a1 = result;
  return result;
}

uint64_t sub_1004612B0@<X0>(uint64_t *a1@<X8>)
{
  sub_1001F1160(&qword_100ADB388, &qword_1008199B0);
  result = sub_10079FD64();
  *a1 = result;
  return result;
}

uint64_t sub_1004612EC@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for ShareModule();
  sub_100462310(&qword_100AE4A08, type metadata accessor for ShareModule, &unk_10082EB04);
  result = sub_1007A3764();
  *a1 = result;
  return result;
}

uint64_t sub_1004613B0@<X0>(uint64_t (*a1)(void)@<X2>, unint64_t *a2@<X3>, uint64_t (*a3)(uint64_t)@<X4>, uint64_t a4@<X5>, uint64_t *a5@<X8>)
{
  a1(0);
  sub_100462310(a2, a3, a4);
  result = sub_1007A3764();
  *a5 = result;
  return result;
}

uint64_t sub_100461420(uint64_t a1)
{
  v2 = sub_1001F1160(&qword_100ADB1C0, &qword_10082A4E0);
  __chkstk_darwin(v2 - 8);
  v38 = &v35 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v35 - v5;
  __chkstk_darwin(v7);
  v9 = &v35 - v8;
  __chkstk_darwin(v10);
  v12 = &v35 - v11;
  __chkstk_darwin(v13);
  v15 = (&v35 - v14);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10079B9A4(v15);

  if (qword_100AD1678 != -1)
  {
    swift_once();
  }

  v16 = sub_10079ACE4();
  sub_100008B98(v16, qword_100AE4790);
  sub_10046210C(a1, v12);
  sub_10046210C(v15, v9);
  v17 = sub_10079ACC4();
  v18 = sub_1007A29A4();
  if (os_log_type_enabled(v17, v18))
  {
    v36 = v18;
    v37 = v17;
    v19 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v40 = v35;
    *v19 = 136315394;
    sub_10046210C(v12, v6);
    v20 = type metadata accessor for OverlayViewModel.Overlay(0);
    v21 = *(*(v20 - 8) + 48);
    if (v21(v6, 1, v20) == 1)
    {
      sub_10046217C(v6);
      v22 = 0;
    }

    else
    {
      v22 = sub_100460F88();
      sub_1003039C8(v6, type metadata accessor for OverlayViewModel.Overlay);
    }

    v39 = v22;
    sub_1001F1160(&qword_100AE49F8, &qword_1008275C0);
    v23 = sub_1007A22E4();
    v25 = v24;
    sub_10046217C(v12);
    v26 = sub_1000070F4(v23, v25, &v40);

    *(v19 + 4) = v26;
    *(v19 + 12) = 2080;
    v27 = v38;
    sub_10046210C(v9, v38);
    if (v21(v27, 1, v20) == 1)
    {
      sub_10046217C(v27);
      v28 = 0;
    }

    else
    {
      v28 = sub_100460F88();
      sub_1003039C8(v27, type metadata accessor for OverlayViewModel.Overlay);
    }

    v39 = v28;
    v29 = sub_1007A22E4();
    v31 = v30;
    sub_10046217C(v9);
    v32 = sub_1000070F4(v29, v31, &v40);

    *(v19 + 14) = v32;
    v33 = v37;
    _os_log_impl(&_mh_execute_header, v37, v36, "overlay ID: %s => %s", v19, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    sub_10046217C(v9);
    sub_10046217C(v12);
  }

  return sub_10046217C(v15);
}

double sub_100461860@<D0>(void *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10079B9A4(a1);

  return result;
}

void sub_1004618D8(char a1)
{
  v2 = sub_1001F1160(&qword_100ADB1C0, &qword_10082A4E0);
  __chkstk_darwin(v2 - 8);
  v4 = &v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = (&v24 - v6);
  __chkstk_darwin(v8);
  v10 = &v24 - v9;
  __chkstk_darwin(v11);
  v13 = &v24 - v12;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10079B9A4(v13);

  v14 = type metadata accessor for OverlayViewModel.Overlay(0);
  v15 = *(v14 - 8);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    sub_10046217C(v13);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v16 = *v13;
      v17 = v13[9];
      v18 = *(v13 + 2);
      v19 = *(v13 + 3);
      *v10 = v16;
      v10[8] = a1 & 1;
      v10[9] = v17;
      *(v10 + 2) = v18;
      *(v10 + 3) = v19;
      swift_storeEnumTagMultiPayload();
      (*(v15 + 56))(v10, 0, 1, v14);
      swift_getKeyPath();
      swift_getKeyPath();

      sub_10079B9A4(v7);

      swift_getKeyPath();
      swift_getKeyPath();
      sub_10046210C(v10, v4);

      sub_10079B9B4();
      sub_100461420(v7);

      sub_10046217C(v7);
      sub_10046217C(v10);
      return;
    }

    sub_1003039C8(v13, type metadata accessor for OverlayViewModel.Overlay);
  }

  if (qword_100AD1678 != -1)
  {
    swift_once();
  }

  v20 = sub_10079ACE4();
  sub_100008B98(v20, qword_100AE4790);
  v21 = sub_10079ACC4();
  v22 = sub_1007A29B4();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    *v23 = 67109120;
    *(v23 + 4) = a1 & 1;
    _os_log_impl(&_mh_execute_header, v21, v22, "Attempt to set isAdjustingBrightness to %{BOOL}d without RS overlay", v23, 8u);
  }
}

uint64_t sub_100461C84()
{
  v1 = OBJC_IVAR____TtC5Books16OverlayViewModel__overlay;
  v2 = sub_1001F1160(&unk_100AF2880, qword_1008275D0);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

void sub_100461D54(uint64_t a1)
{
  sub_100461DE4(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_100461DE4(uint64_t a1)
{
  if (!qword_100AE47E8)
  {
    sub_1001F1234(&qword_100ADB1C0, &qword_10082A4E0);
    v1 = sub_10079B9D4();
    if (!v2)
    {
      atomic_store(v1, &qword_100AE47E8);
    }
  }
}

uint64_t sub_100461E68(uint64_t a1)
{
  result = type metadata accessor for OverlayViewModel.Search(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

void sub_100461F58(uint64_t a1)
{
  sub_100461FCC(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_100461FCC(uint64_t a1)
{
  if (!qword_100AE49C8)
  {
    type metadata accessor for SearchView(255);
    v1 = sub_10079FD84();
    if (!v2)
    {
      atomic_store(v1, &qword_100AE49C8);
    }
  }
}

uint64_t sub_100462024(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_10046206C(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t sub_1004620CC@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for OverlayViewModel(0);
  result = sub_10079B8B4();
  *a2 = result;
  return result;
}

uint64_t sub_10046210C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001F1160(&qword_100ADB1C0, &qword_10082A4E0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10046217C(uint64_t a1)
{
  v2 = sub_1001F1160(&qword_100ADB1C0, &qword_10082A4E0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1004621E4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for OverlayViewModel.Overlay(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100462248(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for OverlayViewModel.Search(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1004622AC()
{
  result = qword_100AE4A18;
  if (!qword_100AE4A18)
  {
    sub_1001F1234(&qword_100AE4A10, &qword_1008275C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE4A18);
  }

  return result;
}

uint64_t sub_100462310(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

BOOL sub_100462360()
{
  v0 = sub_100796BB4();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v15 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v15 - v5;
  v7 = [objc_opt_self() standardUserDefaults];
  v8 = sub_1007A2214();
  [v7 doubleForKey:v8];
  v10 = v9;

  if (v10 == 0.0)
  {
    return 1;
  }

  sub_1007969F4();
  sub_100796B74();
  sub_100796AA4();
  v13 = v12;
  v14 = *(v1 + 8);
  v14(v3, v0);
  v14(v6, v0);
  return v13 < 5.0;
}

void sub_1004624F8(char a1)
{
  v2 = sub_100796BB4();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = objc_opt_self();
  v7 = [v6 standardUserDefaults];
  v8 = sub_1007A2214();
  v16 = v8;
  if (a1)
  {
    [v7 removeObjectForKey:v8];

    v9 = v16;
  }

  else
  {
    v10 = [v7 objectForKey:v8];

    if (v10)
    {
      sub_1007A3504();
      swift_unknownObjectRelease();
      sub_1000076D4(v17, v18);
      sub_1000230BC(v18);
    }

    else
    {
      memset(v18, 0, sizeof(v18));
      sub_1000230BC(v18);
      v11 = [v6 standardUserDefaults];
      sub_100796B74();
      sub_100796A04();
      v13 = v12;
      (*(v3 + 8))(v5, v2);
      v14 = sub_1007A2214();
      [v11 setDouble:v14 forKey:v13];
    }
  }
}

uint64_t sub_100462738()
{
  v1 = [*(v0 + OBJC_IVAR____TtC5Books30AudiobookNowPlayingDataManager_sleepTimer) sleepTimerOption];
  if ((v1 - 1) > 7)
  {
    return 0;
  }

  else
  {
    return qword_100827730[(v1 - 1)];
  }
}

id sub_100462788(unint64_t a1)
{
  if (a1 >= 9)
  {
    result = sub_1007A3AF4();
    __break(1u);
  }

  else
  {
    v2 = qword_100827770[a1];
    v3 = *(v1 + OBJC_IVAR____TtC5Books30AudiobookNowPlayingDataManager_sleepTimer);

    return [v3 setSleepTimerOption:v2];
  }

  return result;
}

char *sub_100462804()
{
  v1 = [*(v0 + OBJC_IVAR____TtC5Books30AudiobookNowPlayingDataManager_player) precisionRates];
  sub_10000A7C4(0, &qword_100AD6750, NSNumber_ptr);
  v2 = sub_1007A25E4();

  if (!(v2 >> 62))
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_13:

    return _swiftEmptyArrayStorage;
  }

  v3 = sub_1007A38D4();
  if (!v3)
  {
    goto LABEL_13;
  }

LABEL_3:
  result = sub_1003BD190(0, v3 & ~(v3 >> 63), 0);
  if ((v3 & 0x8000000000000000) == 0)
  {
    for (i = 0; i != v3; ++i)
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v6 = sub_1007A3784();
      }

      else
      {
        v6 = *(v2 + 8 * i + 32);
      }

      v7 = v6;
      [v6 floatValue];
      v9 = v8;

      v11 = _swiftEmptyArrayStorage[2];
      v10 = _swiftEmptyArrayStorage[3];
      if (v11 >= v10 >> 1)
      {
        sub_1003BD190((v10 > 1), v11 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v11 + 1;
      *(&_swiftEmptyArrayStorage[4] + v11) = v9;
    }

    goto LABEL_13;
  }

  __break(1u);
  return result;
}

id sub_1004629A0()
{
  ObjectType = swift_getObjectType();
  [*&v0[OBJC_IVAR____TtC5Books30AudiobookNowPlayingDataManager_player] removeObserver:v0];
  v2 = [*&v0[OBJC_IVAR____TtC5Books30AudiobookNowPlayingDataManager_libraryItemStateProvider] stateCenter];
  [v2 removeObserver:v0];

  v4.receiver = v0;
  v4.super_class = ObjectType;
  return objc_msgSendSuper2(&v4, "dealloc");
}

uint64_t type metadata accessor for AudiobookNowPlayingDataManager(uint64_t a1)
{
  result = qword_100AE4AC0;
  if (!qword_100AE4AC0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100462C80(unint64_t a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC5Books30AudiobookNowPlayingDataManager_player);
  v4 = [v3 currentChapterIndex];
  if ((a1 & 0x8000000000000000) == 0 && v4 == a1)
  {
    return;
  }

  v5 = sub_1007A29D4();
  v6 = v5;
  v7 = sub_1001B9CD0(v5);
  if (!v7)
  {
LABEL_11:
    __break(1u);
    return;
  }

  v8 = v7;
  if (os_log_type_enabled(v7, v6))
  {
    v9 = swift_slowAlloc();
    *v9 = 134217984;
    *(v9 + 4) = a1;
    _os_log_impl(&_mh_execute_header, v8, v6, "goto chapter %ld", v9, 0xCu);
  }

  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_11;
  }

  [v3 setCurrentChapterIndex:a1];
}

void sub_100462D98(void *a1, uint64_t a2, double a3)
{
  v7 = sub_1007A29D4();
  v8 = v7;
  v9 = sub_1001B9CD0(v7);
  if (v9)
  {
    v10 = v9;
    if (os_log_type_enabled(v9, v8))
    {
      v11 = swift_slowAlloc();
      *v11 = 134217984;
      *(v11 + 4) = a3;
      _os_log_impl(&_mh_execute_header, v10, v8, "goto audiobook position %f", v11, 0xCu);
    }

    v12 = *(v3 + OBJC_IVAR____TtC5Books30AudiobookNowPlayingDataManager_player);
    if (a1)
    {
      v13[4] = a1;
      v13[5] = a2;
      v13[0] = _NSConcreteStackBlock;
      v13[1] = 1107296256;
      v13[2] = sub_10021B6B0;
      v13[3] = &unk_100A1CDC8;
      a1 = _Block_copy(v13);
    }

    [v12 movePositionInCurrentAudiobook:a1 completion:a3];
    _Block_release(a1);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_100462EFC(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  if (a1)
  {
    v6 = *(v4 + OBJC_IVAR____TtC5Books30AudiobookNowPlayingDataManager_currentMAsset);
    if (v6)
    {
      v7 = objc_allocWithZone(sub_100797424());
      swift_unknownObjectRetain();
      v8 = v6;
      v9 = sub_1007973E4();
    }

    else
    {
      v14 = [swift_unknownObjectRetain() assetID];
      sub_1007A2254();

      v15 = objc_allocWithZone(sub_100797424());
      v9 = sub_1007973F4();
    }

    v16 = v9;
    objc_allocWithZone(sub_100797454());
    v17 = v16;
    v18 = a2;
    v13 = sub_100797434();

    sub_100797384();
    swift_unknownObjectRelease();
  }

  else
  {
    v10 = sub_10079ACC4();
    v11 = sub_1007A29B4();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&_mh_execute_header, v10, v11, "Unable to retrieve menu data model, no audiobook found.", v12, 2u);
    }

    return 0;
  }

  return v13;
}

void sub_1004630B0(uint64_t a1, void (*a2)(id), uint64_t a3, double a4, double a5)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    v10 = OBJC_IVAR____TtC5Books30AudiobookNowPlayingDataManager_player;
    v11 = [*(Strong + OBJC_IVAR____TtC5Books30AudiobookNowPlayingDataManager_player) currentChapter];
    if (v11 && (v12 = [v11 artwork], swift_unknownObjectRelease(), v12))
    {
      v13 = [objc_allocWithZone(UIImage) initWithCGImage:v12];
      (a2)();
    }

    else
    {
      v14 = [*&v9[v10] currentAudiobook];
      if (v14)
      {
        v15 = [v14 assetID];
        swift_unknownObjectRelease();
        v16 = sub_1007A2254();
        v18 = v17;

        sub_1004632C4(v16, v18, a2, a4, a5);
      }

      else
      {
        v19 = sub_10079ACC4();
        v20 = sub_1007A29D4();
        if (os_log_type_enabled(v19, v20))
        {
          v21 = swift_slowAlloc();
          *v21 = 0;
          _os_log_impl(&_mh_execute_header, v19, v20, "No image on player and no assetID to get library cover", v21, 2u);
        }

        a2(0);
      }
    }
  }

  else
  {
    (a2)();
  }
}

void sub_1004632C4(uint64_t a1, unint64_t a2, void (*a3)(id), double a4, double a5)
{
  v6 = v5;
  v12 = sub_1007A1D04();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = (&v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_10000A7C4(0, &qword_100AD1E10, OS_dispatch_queue_ptr);
  *v15 = sub_1007A2D74();
  (*(v13 + 104))(v15, enum case for DispatchPredicate.onQueue(_:), v12);
  v16 = sub_1007A1D34();
  (*(v13 + 8))(v15, v12);
  if ((v16 & 1) == 0)
  {
    __break(1u);
    return;
  }

  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v17 = objc_opt_self();
    v18 = [v17 defaultManager];
    v19 = sub_1007A2214();
    v20 = [v18 libraryAssetOnMainQueueWithAssetID:v19];

    if (v20)
    {
      v21 = fmin(a4, a5);
      v22 = v21 > 0.0;
      v23 = 1536.0;
      if (v21 > 0.0)
      {
        v24 = a4;
      }

      else
      {
        v24 = 1536.0;
      }

      if (v22)
      {
        v23 = a5;
      }

      v25 = [v17 fetchImageForAsset:v20 size:1 includeSpine:1 allowGeneric:v6 coverEffectsEnvironment:v24 timeout:{v23, 0.25}];
      if (v25)
      {
        v26 = v25;
        v27 = [v25 CGImage];
        v28 = [objc_allocWithZone(UIImage) initWithCGImage:v27];

        v29 = v28;
        a3(v28);
      }

      else
      {

        v33 = sub_10079ACC4();
        v34 = sub_1007A29B4();

        if (os_log_type_enabled(v33, v34))
        {
          v35 = swift_slowAlloc();
          v36 = swift_slowAlloc();
          v37 = v36;
          *v35 = 136315138;
          *(v35 + 4) = sub_1000070F4(a1, a2, &v37);
          _os_log_impl(&_mh_execute_header, v33, v34, "Timed out or plain failure generating library cover image for audiobook %s", v35, 0xCu);
          sub_1000074E0(v36);
        }

        a3(0);
      }

      swift_unknownObjectRelease();

      return;
    }

    swift_unknownObjectRelease();
  }

  v30 = sub_10079ACC4();
  v31 = sub_1007A29B4();
  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    *v32 = 0;
    _os_log_impl(&_mh_execute_header, v30, v31, "Cannot get library cover due to missing libraryAsset or delegate", v32, 2u);
  }

  a3(0);
}

void sub_1004636DC()
{
  v1 = *(v0 + OBJC_IVAR____TtC5Books30AudiobookNowPlayingDataManager_currentMAsset);
  *(v0 + OBJC_IVAR____TtC5Books30AudiobookNowPlayingDataManager_currentMAsset) = 0;

  v2 = objc_opt_self();
  v3 = [v2 sharedInstance];
  [v3 setSessionID:0];

  [*(v0 + OBJC_IVAR____TtC5Books30AudiobookNowPlayingDataManager_player) setCurrentAudiobook:0];
  v4 = (v0 + OBJC_IVAR____TtC5Books30AudiobookNowPlayingDataManager_sharedStateProvider);
  sub_10000E3E8((v0 + OBJC_IVAR____TtC5Books30AudiobookNowPlayingDataManager_sharedStateProvider), *(v0 + OBJC_IVAR____TtC5Books30AudiobookNowPlayingDataManager_sharedStateProvider + 24));
  sub_10049FC54(0);
  v5 = *(*sub_10000E3E8(v4, v4[3]) + 16);
  os_unfair_lock_lock((v5 + 24));
  v6 = [*(v5 + 16) allObjects];
  sub_1001F1160(&qword_100AE1B70, &unk_100822B10);
  v7 = sub_1007A25E4();

  os_unfair_lock_unlock((v5 + 24));
  if (v7 >> 62)
  {
    v8 = sub_1007A38D4();
    if (!v8)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v8)
    {
      goto LABEL_10;
    }
  }

  if (v8 < 1)
  {
    __break(1u);
    return;
  }

  for (i = 0; i != v8; ++i)
  {
    if ((v7 & 0xC000000000000001) != 0)
    {
      v10 = sub_1007A3784();
    }

    else
    {
      v10 = *(v7 + 8 * i + 32);
      swift_unknownObjectRetain();
    }

    [v10 audiobookStoreIDDidChangeTo:0];
    swift_unknownObjectRelease();
  }

LABEL_10:

  v11 = [v2 sharedInstance];
  [v11 setAudiobookPlayerActiveOutput:0];
}

uint64_t sub_100463918(uint64_t a1)
{
  result = sub_10079ACE4();
  if (v2 <= 0x3F)
  {
    return swift_updateClassMetadata2();
  }

  return result;
}

double sub_100463A24(uint64_t a1, uint64_t a2)
{
  v4 = *v2 + OBJC_IVAR____TtC5Books30AudiobookNowPlayingDataManager_delegate;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  return result;
}

id sub_100463B38(double a1)
{
  if (*&a1 < 0.0)
  {
    *&a1 = 0.0;
  }

  *&a1 = fminf(*&a1, 1.0);
  return [*(*v1 + OBJC_IVAR____TtC5Books30AudiobookNowPlayingDataManager_player) setVolume:a1];
}

void sub_100463B68(double a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = (Strong + OBJC_IVAR____TtC5Books29AudiobookNowPlayingInteractor_buyButtonPresenter);
    swift_beginAccess();
    v4 = v3[3];
    if (v4)
    {
      sub_10000E3E8(v3, v4);
      sub_10000A7C4(0, &qword_100AD1E10, OS_dispatch_queue_ptr);
      v5 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v6 = swift_allocObject();
      *(v6 + 16) = v5;
      *(v6 + 24) = a1;

      sub_1007A2CD4();
    }

    swift_unknownObjectRelease();
  }
}

void sub_100463EE8(int a1)
{
  v2 = a1;
  v3 = OBJC_IVAR____TtC5Books30AudiobookNowPlayingDataManager_cachedIsPreordered;
  v4 = *(v1 + OBJC_IVAR____TtC5Books30AudiobookNowPlayingDataManager_cachedIsPreordered);
  if (v4 == 2 || ((v4 ^ a1) & 1) != 0)
  {
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      sub_1002D7640();
      swift_unknownObjectRelease();
      *(v1 + v3) = v2 & 1;
    }
  }
}

void sub_100463FD8(void *a1, void *a2, __n128 a3)
{
  v5 = *(v3 + OBJC_IVAR____TtC5Books30AudiobookNowPlayingDataManager_player);
  if (v5 == a1)
  {
    v9 = [v5 currentAudiobook];
    if (v9)
    {
      v10 = [v9 assetID];
      swift_unknownObjectRelease();
      sub_1007A2254();

      v11 = [*(v3 + OBJC_IVAR____TtC5Books30AudiobookNowPlayingDataManager_libraryItemStateProvider) stateCenter];
      v12 = sub_1007A2214();

      [v11 addOrUpdateObserver:v3 forSingleItemIdentifier:v12];
    }

    else
    {
      v12 = [*(v3 + OBJC_IVAR____TtC5Books30AudiobookNowPlayingDataManager_libraryItemStateProvider) stateCenter];
      [v12 removeObserver:v3];
    }

    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      sub_1002D1520(a2);
      swift_unknownObjectRelease();
    }
  }

  else
  {
    v6 = sub_1007A29B4();
    v7 = sub_1001B9CD0(v6);
    if (v7)
    {
      v13 = v7;
      sub_10079AB44(v6, &_mh_execute_header, v7, "Got a player instance that is not the same as our own", 53, 2, _swiftEmptyArrayStorage);
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_1004641D8(void *a1, void *a2, __n128 a3)
{
  v4 = *(v3 + OBJC_IVAR____TtC5Books30AudiobookNowPlayingDataManager_player);
  if (v4 == a1)
  {
    swift_beginAccess();
    if (!swift_unknownObjectWeakLoadStrong())
    {
      return;
    }

    v8 = [v4 currentChapterIndex];
    if ((v8 & 0x8000000000000000) == 0)
    {
      sub_1002D257C(a2, v8);
      swift_unknownObjectRelease();
      return;
    }

    __break(1u);
LABEL_11:
    __break(1u);
    return;
  }

  v5 = sub_1007A29B4();
  v6 = sub_1001B9CD0(v5);
  if (!v6)
  {
    goto LABEL_11;
  }

  v9 = v6;
  sub_10079AB44(v5, &_mh_execute_header, v6, "Got a player instance that is not the same as our own", 53, 2, _swiftEmptyArrayStorage);
}

void sub_100464304(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t))
{
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v9 = a1;
  a5(a3, a4);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
}

void sub_100464394(uint64_t a1, void *a2, __n128 a3)
{
  if (*(v3 + OBJC_IVAR____TtC5Books30AudiobookNowPlayingDataManager_player) == a1)
  {
    v7 = v3 + OBJC_IVAR____TtC5Books30AudiobookNowPlayingDataManager_delegate;
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v9 = Strong;
      if (a2)
      {
        v10 = a2;
        sub_1002D2BDC(a2);

        swift_unknownObjectRelease();
      }

      else
      {
        v11 = *(v7 + 8);
        v12 = swift_allocObject();
        *(v12 + 16) = v9;
        *(v12 + 24) = v11;
        sub_10000A7C4(0, &qword_100AD1E10, OS_dispatch_queue_ptr);
        v13 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v14 = swift_allocObject();
        v14[2] = v13;
        v14[3] = sub_100467C08;
        v14[4] = v12;
        v14[5] = 0;
        v14[6] = 0;
        swift_unknownObjectRetain();

        sub_1007A2CD4();

        swift_unknownObjectRelease();
      }
    }
  }

  else
  {
    v4 = sub_1007A29B4();
    v5 = sub_1001B9CD0(v4);
    if (v5)
    {
      v15 = v5;
      sub_10079AB44(v4, &_mh_execute_header, v5, "Got a player instance that is not the same as our own", 53, 2, _swiftEmptyArrayStorage);
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_1004645A4(void *a1)
{
  v1 = [a1 CGImage];
  sub_1002D2BDC(v1);
}

void sub_100464680(uint64_t a1, unint64_t a2, __n128 a3, double a4)
{
  if (*(v4 + OBJC_IVAR____TtC5Books30AudiobookNowPlayingDataManager_player) == a1)
  {
    v7 = a3.n128_f64[0];
    swift_beginAccess();
    if (!swift_unknownObjectWeakLoadStrong())
    {
      return;
    }

    if ((a2 & 0x8000000000000000) == 0)
    {
      sub_1002D2C88(a2, v7, a4);
      swift_unknownObjectRelease();
      return;
    }

    __break(1u);
LABEL_11:
    __break(1u);
    return;
  }

  v5 = sub_1007A29B4();
  v6 = sub_1001B9CD0(v5);
  if (!v6)
  {
    goto LABEL_11;
  }

  v10 = v6;
  sub_10079AB44(v5, &_mh_execute_header, v6, "Got a player instance that is not the same as our own", 53, 2, _swiftEmptyArrayStorage);
}

void sub_100464828(uint64_t a1, uint64_t a2, uint64_t a3, __n128 a4)
{
  v7 = *(v4 + OBJC_IVAR____TtC5Books30AudiobookNowPlayingDataManager_player);
  if (v7 == a1)
  {
    v11 = [v7 currentChapter];
    v12 = 0.0;
    if (!v11)
    {
      goto LABEL_28;
    }

    v13 = v11;
    [v11 duration];
    if (v14 <= 0.0)
    {
      swift_unknownObjectRelease();
      goto LABEL_28;
    }

    [v13 duration];
    v5 = v15;
    [v7 positionInCurrentChapter];
    v6 = v16;
    v17 = [a3 chapterPositions];
    sub_10000A7C4(0, &qword_100AD6750, NSNumber_ptr);
    v7 = sub_1007A25E4();

    if (v7 >> 62)
    {
      goto LABEL_38;
    }

    v36 = (v7 & 0xFFFFFFFFFFFFFF8);
    for (i = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1007A38D4())
    {
      v19 = -i;
      v20 = 4;
      while (1)
      {
        if (v19 + v20 == 4)
        {
          swift_unknownObjectRelease();

          goto LABEL_28;
        }

        v21 = v20 - 4;
        if ((v7 & 0xC000000000000001) != 0)
        {
          v22 = sub_1007A3784();
        }

        else
        {
          if (v21 >= v36[2])
          {
            goto LABEL_35;
          }

          v22 = *(v7 + 8 * v20);
        }

        v23 = v22;
        if (__OFADD__(v21, 1))
        {
          __break(1u);
LABEL_35:
          __break(1u);
LABEL_36:
          __break(1u);
          goto LABEL_37;
        }

        [v22 doubleValue];
        v25 = v24;
        v26 = a3;
        v27 = [a3 chapterDurations];
        a3 = sub_1007A25E4();

        if ((a3 & 0xC000000000000001) != 0)
        {
          v28 = sub_1007A3784();
        }

        else
        {
          if (v21 >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_36;
          }

          v28 = *(a3 + 8 * v20);
        }

        v29 = v28;

        [v29 doubleValue];
        v31 = v30;

        ++v20;
        a3 = v26;
        if (v25 <= v6)
        {
          v32 = v25 + v31;
          if (v6 <= v32)
          {
            break;
          }
        }
      }

      swift_unknownObjectRelease();

      if (v32 > 0.0)
      {
        v12 = v32 / v5;
      }

LABEL_28:
      swift_beginAccess();
      if (!swift_unknownObjectWeakLoadStrong())
      {
        break;
      }

      if ((a2 & 0x8000000000000000) == 0)
      {
        if (swift_unknownObjectWeakLoadStrong())
        {
          v33 = type metadata accessor for AudiobookNowPlayingPresenter(0);
          sub_10055B800(v33, &off_100A22E18, v12);
          swift_unknownObjectRelease();
        }

        swift_unknownObjectRelease();
        return;
      }

LABEL_37:
      __break(1u);
LABEL_38:
      v36 = (v7 & 0xFFFFFFFFFFFFFF8);
    }
  }

  else
  {
    v8 = sub_1007A29B4();
    v9 = sub_1001B9CD0(v8);
    if (v9)
    {
      v35 = v9;
      sub_10079AB44(v8, &_mh_execute_header, v9, "Got a player instance that is not the same as our own", 53, 2, _swiftEmptyArrayStorage);
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_100464C7C(uint64_t a1, uint64_t a2)
{
  v71 = a2;
  v4 = sub_1007A1C54();
  v70 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v58 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1007A1CA4();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v58 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1007A1C24();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v58 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1007A1CC4();
  __chkstk_darwin(v15);
  __chkstk_darwin(v16);
  if (*&v2[OBJC_IVAR____TtC5Books30AudiobookNowPlayingDataManager_player] != a1)
  {
    v21 = sub_1007A29B4();
    v22 = sub_1001B9CD0(v21);
    if (v22)
    {
      v71 = v22;
      sub_10079AB44(v21, &_mh_execute_header, v22, "Got a player instance that is not the same as our own", 53, 2, _swiftEmptyArrayStorage);
      v23 = v71;
    }

    else
    {
      __break(1u);
    }

    return;
  }

  v59 = v20;
  v60 = v14;
  v61 = v12;
  v62 = v11;
  v63 = &v58 - v18;
  v64 = v19;
  v65 = v10;
  v66 = v8;
  v67 = v6;
  v68 = v7;
  v69 = v17;
  aBlock[0] = v71;
  swift_errorRetain();
  sub_1001F1160(&unk_100AD67F0, &unk_100812EC0);
  type metadata accessor for AudiobookPlayerError(0);
  if (!swift_dynamicCast())
  {
    swift_errorRetain();
    v26 = sub_10079ACC4();
    v35 = sub_1007A29B4();

    if (os_log_type_enabled(v26, v35))
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      aBlock[0] = v37;
      *v36 = 136315138;
      swift_getErrorValue();
      v38 = sub_1007A3B84();
      v40 = sub_1000070F4(v38, v39, aBlock);

      *(v36 + 4) = v40;
      _os_log_impl(&_mh_execute_header, v26, v35, "Unhandled error %s", v36, 0xCu);
      sub_1000074E0(v37);
    }

    goto LABEL_26;
  }

  v24 = v2;
  v25 = v73;
  aBlock[0] = v73;
  sub_100022984(&unk_100AE4D10, type metadata accessor for AudiobookPlayerError, &unk_10080E328);
  sub_100796794();
  if (v73 > 2)
  {
    if ((v73 - 3) < 2)
    {
      v26 = v25;
      v27 = sub_10079ACC4();
      v28 = sub_1007A29B4();

      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        v30 = swift_slowAlloc();
        aBlock[0] = v30;
        *v29 = 136315138;
        v73 = v26;
        sub_100022984(&qword_100AD3EA0, type metadata accessor for AudiobookPlayerError, &unk_10080E2E8);
        v31 = sub_1007A3B84();
        v33 = sub_1000070F4(v31, v32, aBlock);

        *(v29 + 4) = v33;
        v34 = "Playback error received in NPVC, ignoring error: %s";
LABEL_25:
        _os_log_impl(&_mh_execute_header, v27, v28, v34, v29, 0xCu);
        sub_1000074E0(v30);

LABEL_26:
        return;
      }

      goto LABEL_28;
    }

    if (v73 == 5)
    {
      swift_beginAccess();
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v54 = Strong;
        sub_10000A7C4(0, &qword_100AD1E10, OS_dispatch_queue_ptr);
        *(swift_allocObject() + 16) = v54;
        swift_unknownObjectRetain();
        sub_1007A2CD4();

        swift_unknownObjectRelease();

        return;
      }

LABEL_29:

      return;
    }

    goto LABEL_23;
  }

  if (v73 == 1)
  {
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      sub_1002D77C8();

      swift_unknownObjectRelease();
      return;
    }

    goto LABEL_29;
  }

  if (v73 != 2)
  {
LABEL_23:
    v26 = v25;
    v27 = sub_10079ACC4();
    v28 = sub_1007A29B4();

    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      aBlock[0] = v30;
      *v29 = 136315138;
      v73 = v26;
      sub_100022984(&qword_100AD3EA0, type metadata accessor for AudiobookPlayerError, &unk_10080E2E8);
      v55 = sub_1007A3B84();
      v57 = sub_1000070F4(v55, v56, aBlock);

      *(v29 + 4) = v57;
      v34 = "Unhandled error %s";
      goto LABEL_25;
    }

LABEL_28:

    return;
  }

  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_1002D31C8(1, 1, v25);
    swift_unknownObjectRelease();
  }

  sub_10000A7C4(0, &qword_100AD1E10, OS_dispatch_queue_ptr);
  v71 = sub_1007A2D74();
  v41 = v59;
  sub_1007A1CB4();
  v42 = v60;
  *v60 = 100;
  v43 = v61;
  v44 = v62;
  (*(v61 + 104))(v42, enum case for DispatchTimeInterval.milliseconds(_:), v62);
  v45 = v63;
  sub_1007A1D14();
  (*(v43 + 8))(v42, v44);
  v64 = *(v64 + 8);
  (v64)(v41, v69);
  v46 = swift_allocObject();
  v47 = v24;
  *(v46 + 16) = v24;
  aBlock[4] = sub_100467BEC;
  aBlock[5] = v46;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1003323D0;
  aBlock[3] = &unk_100A1D048;
  v48 = _Block_copy(aBlock);
  v49 = v47;

  v50 = v65;
  sub_1007A1C74();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_100022984(&qword_100ADA670, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_1001F1160(&unk_100AD7CA0, &unk_100812B20);
  sub_100234698();
  v51 = v67;
  sub_1007A3594();
  v52 = v71;
  sub_1007A2D04();
  _Block_release(v48);

  (*(v70 + 8))(v51, v4);
  (*(v66 + 8))(v50, v68);
  (v64)(v45, v69);
}

void sub_100465778(uint64_t a1, float a2)
{
  v3 = v2;
  v6 = sub_1007A1C54();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1007A1CA4();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*&v3[OBJC_IVAR____TtC5Books30AudiobookNowPlayingDataManager_player] == a1)
  {
    sub_10000A7C4(0, &qword_100AD1E10, OS_dispatch_queue_ptr);
    v17 = sub_1007A2D74();
    v18 = swift_allocObject();
    *(v18 + 16) = v3;
    *(v18 + 24) = a2;
    aBlock[4] = sub_100467BD8;
    aBlock[5] = v18;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1003323D0;
    aBlock[3] = &unk_100A1CFD0;
    v19 = _Block_copy(aBlock);
    v20 = v3;

    sub_1007A1C74();
    aBlock[0] = _swiftEmptyArrayStorage;
    sub_100022984(&qword_100ADA670, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_1001F1160(&unk_100AD7CA0, &unk_100812B20);
    sub_100234698();
    sub_1007A3594();
    sub_1007A2D94();
    _Block_release(v19);

    (*(v7 + 8))(v9, v6);
    (*(v11 + 8))(v13, v10);
  }

  else
  {
    v14 = sub_1007A29B4();
    v15 = sub_1001B9CD0(v14);
    if (v15)
    {
      v22 = v15;
      sub_10079AB44(v14, &_mh_execute_header, v15, "Got a player instance that is not the same as our own", 53, 2, _swiftEmptyArrayStorage);
      v16 = v22;
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_100465AE8(uint64_t a1, float a2)
{
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_1002D3FA4(a2);
    swift_unknownObjectRelease();
  }
}

void sub_100465B70(uint64_t a1, char a2, __n128 a3)
{
  if (*(v3 + OBJC_IVAR____TtC5Books30AudiobookNowPlayingDataManager_player) == a1)
  {
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      if (swift_unknownObjectWeakLoadStrong())
      {
        sub_10055B51C(a2 & 1);
        swift_unknownObjectRelease();
      }

      swift_unknownObjectRelease();
    }
  }

  else
  {
    v4 = sub_1007A29B4();
    v5 = sub_1001B9CD0(v4);
    if (v5)
    {
      v7 = v5;
      sub_10079AB44(v4, &_mh_execute_header, v5, "Got a player instance that is not the same as our own", 53, 2, _swiftEmptyArrayStorage);
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_100465D78(uint64_t a1, __n128 a2)
{
  if (*(v2 + OBJC_IVAR____TtC5Books30AudiobookNowPlayingDataManager_player) == a1)
  {
    v5 = a2.n128_f32[0];
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      if (swift_unknownObjectWeakLoadStrong())
      {
        type metadata accessor for AudiobookNowPlayingPresenter(0);
        sub_10055BCFC(v5);
        swift_unknownObjectRelease();
      }

      swift_unknownObjectRelease();
    }
  }

  else
  {
    v3 = sub_1007A29B4();
    v4 = sub_1001B9CD0(v3);
    if (v4)
    {
      v6 = v4;
      sub_10079AB44(v3, &_mh_execute_header, v4, "Got a player instance that is not the same as our own", 53, 2, _swiftEmptyArrayStorage);
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_100465EE4(void *a1, float a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, float))
{
  swift_unknownObjectRetain();
  v9 = a1;
  a5(a4, a2);
  swift_unknownObjectRelease();
}

void sub_100465F6C(uint64_t a1, char a2, char a3, __n128 a4)
{
  if (*(v4 + OBJC_IVAR____TtC5Books30AudiobookNowPlayingDataManager_player) == a1)
  {
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      if (swift_unknownObjectWeakLoadStrong())
      {
        type metadata accessor for AudiobookNowPlayingPresenter(0);
        sub_10055B944(a2 & 1, a3 & 1);
        swift_unknownObjectRelease();
      }

      swift_unknownObjectRelease();
    }
  }

  else
  {
    v5 = sub_1007A29B4();
    v6 = sub_1001B9CD0(v5);
    if (v6)
    {
      v9 = v6;
      sub_10079AB44(v5, &_mh_execute_header, v6, "Got a player instance that is not the same as our own", 53, 2, _swiftEmptyArrayStorage);
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_10046614C(uint64_t a1)
{
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v2 = sub_100462738();
    sub_1002D3AA0(v2);
    swift_unknownObjectRelease();
  }

  if (swift_unknownObjectWeakLoadStrong())
  {
    [*(a1 + OBJC_IVAR____TtC5Books30AudiobookNowPlayingDataManager_sleepTimer) initialDuration];
    v4 = v3;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v5 = type metadata accessor for AudiobookNowPlayingPresenter(0);
      sub_10055BC74(v5, &off_100A22E18, v4);
      swift_unknownObjectRelease();
    }

    swift_unknownObjectRelease();
  }
}

double sub_100466364(uint64_t a1)
{
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v2 = sub_100462738();
    sub_1002D3AA0(v2);
    swift_unknownObjectRelease();
  }

  return result;
}

void sub_100466454(uint64_t a1, double a2)
{
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    if (swift_unknownObjectWeakLoadStrong())
    {
      v3 = type metadata accessor for AudiobookNowPlayingPresenter(0);
      sub_10055BC74(v3, &off_100A22E18, a2);
      swift_unknownObjectRelease();
    }

    swift_unknownObjectRelease();
  }
}

void sub_1004666C4(void *a1)
{
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    [a1 backwardSkipTime];
    v3 = v2;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v4 = type metadata accessor for AudiobookNowPlayingPresenter(0);
      sub_10055BBB4(v4, &off_100A22E18, v3);
      swift_unknownObjectRelease();
    }

    swift_unknownObjectRelease();
  }

  if (swift_unknownObjectWeakLoadStrong())
  {
    [a1 forwardSkipTime];
    v6 = v5;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v7 = type metadata accessor for AudiobookNowPlayingPresenter(0);
      sub_10055BBC8(v7, &off_100A22E18, v6);
      swift_unknownObjectRelease();
    }

    swift_unknownObjectRelease();
  }
}

uint64_t sub_10046688C(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + OBJC_IVAR____TtC5Books30AudiobookNowPlayingDataManager_player);
  if ([v5 isPlaying] && (v6 = objc_msgSend(v5, "currentAudiobook")) != 0)
  {
    v7 = [v6 assetID];
    swift_unknownObjectRelease();
    v8 = sub_1007A2254();
    v10 = v9;

    if (v8 == a1 && v10 == a2)
    {
      v12 = 1;
    }

    else
    {
      v12 = sub_1007A3AB4();
    }
  }

  else
  {
    v12 = 0;
  }

  return v12 & 1;
}

double sub_100466978(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    if (swift_unknownObjectWeakLoadStrong())
    {
      type metadata accessor for AudiobookNowPlayingPresenter(0);
      sub_10055B77C(a1, a2);
      swift_unknownObjectRelease();
    }

    swift_unknownObjectRelease();
  }

  return result;
}

void sub_100466A64(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    v9 = [*(Strong + OBJC_IVAR____TtC5Books30AudiobookNowPlayingDataManager_player) currentAudiobook];
    if (v9)
    {
      v10 = [v9 assetID];
      swift_unknownObjectRelease();
      v11 = sub_1007A2254();
      v13 = v12;

      if (v11 == a2 && v13 == a3)
      {
      }

      else
      {
        v15 = sub_1007A3AB4();

        if ((v15 & 1) == 0)
        {
          goto LABEL_11;
        }
      }

      sub_10000E3E8(&v8[OBJC_IVAR____TtC5Books30AudiobookNowPlayingDataManager_sharedStateProvider], *&v8[OBJC_IVAR____TtC5Books30AudiobookNowPlayingDataManager_sharedStateProvider + 24]);
      sub_10049FC60([a4 library] == 3);
    }

LABEL_11:
  }
}

void sub_100466C48(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, const void *a5, double a6, double a7)
{
  v14 = sub_1007A1D04();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = (&v39 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_10000A7C4(0, &qword_100AD1E10, OS_dispatch_queue_ptr);
  _Block_copy(a5);
  _Block_copy(a5);
  _Block_copy(a5);
  *v17 = sub_1007A2D74();
  (*(v15 + 104))(v17, enum case for DispatchPredicate.onQueue(_:), v14);
  v18 = sub_1007A1D34();
  (*(v15 + 8))(v17, v14);
  if (v18)
  {
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v19 = objc_opt_self();
      v20 = [v19 defaultManager];
      v21 = sub_1007A2214();
      v22 = [v20 libraryAssetOnMainQueueWithAssetID:v21];

      if (v22)
      {
        v23 = fmin(a6, a7);
        v24 = v23 > 0.0;
        v25 = 1536.0;
        if (v23 > 0.0)
        {
          v26 = a6;
        }

        else
        {
          v26 = 1536.0;
        }

        if (v24)
        {
          v25 = a7;
        }

        v27 = [v19 fetchImageForAsset:v22 size:1 includeSpine:1 allowGeneric:a3 coverEffectsEnvironment:v26 timeout:{v25, 0.25}];
        if (v27)
        {
          v28 = v27;
          v29 = [v27 CGImage];
          v30 = [objc_allocWithZone(UIImage) initWithCGImage:v29];

          _Block_copy(a5);
          v31 = v30;
          sub_1003EE950(v30, a4, a5);
          _Block_release(a5);
        }

        else
        {

          v35 = sub_10079ACC4();
          v36 = sub_1007A29B4();

          if (os_log_type_enabled(v35, v36))
          {
            v37 = swift_slowAlloc();
            v38 = swift_slowAlloc();
            v39 = v38;
            *v37 = 136315138;
            *(v37 + 4) = sub_1000070F4(a1, a2, &v39);
            _os_log_impl(&_mh_execute_header, v35, v36, "Timed out or plain failure generating library cover image for audiobook %s", v37, 0xCu);
            sub_1000074E0(v38);
          }

          _Block_copy(a5);
          sub_1003EE950(0, a4, a5);
          _Block_release(a5);
        }

        swift_unknownObjectRelease();

LABEL_20:
        _Block_release(a5);
        _Block_release(a5);
        _Block_release(a5);
        return;
      }

      swift_unknownObjectRelease();
    }

    v32 = sub_10079ACC4();
    v33 = sub_1007A29B4();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      *v34 = 0;
      _os_log_impl(&_mh_execute_header, v32, v33, "Cannot get library cover due to missing libraryAsset or delegate", v34, 2u);
    }

    _Block_copy(a5);
    sub_1003EE950(0, a4, a5);
    _Block_release(a5);
    goto LABEL_20;
  }

  __break(1u);
}

void sub_1004670C0(uint64_t a1, uint64_t a2, __n128 a3)
{
  if (*(v3 + OBJC_IVAR____TtC5Books30AudiobookNowPlayingDataManager_player) == a1)
  {
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      sub_1002D3BC4(a2);
      swift_unknownObjectRelease();
    }
  }

  else
  {
    v4 = sub_1007A29B4();
    v5 = sub_1001B9CD0(v4);
    if (v5)
    {
      v7 = v5;
      sub_10079AB44(v4, &_mh_execute_header, v5, "Got a player instance that is not the same as our own", 53, 2, _swiftEmptyArrayStorage);
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t sub_1004671B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v17 = a3;
  v5 = sub_1007A1C54();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1007A1CA4();
  v9 = *(v18 - 8);
  __chkstk_darwin(v18);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000A7C4(0, &qword_100AD1E10, OS_dispatch_queue_ptr);
  v12 = sub_1007A2D74();
  v13 = swift_allocObject();
  *(v13 + 16) = v3;
  aBlock[4] = a2;
  aBlock[5] = v13;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1003323D0;
  aBlock[3] = v17;
  v14 = _Block_copy(aBlock);
  v15 = v3;

  sub_1007A1C74();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_100022984(&qword_100ADA670, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_1001F1160(&unk_100AD7CA0, &unk_100812B20);
  sub_100234698();
  sub_1007A3594();
  sub_1007A2D94();
  _Block_release(v14);

  (*(v6 + 8))(v8, v5);
  return (*(v9 + 8))(v11, v18);
}

uint64_t sub_10046746C(double a1)
{
  v3 = sub_1007A1C54();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = aBlock - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1007A1CA4();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = aBlock - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000A7C4(0, &qword_100AD1E10, OS_dispatch_queue_ptr);
  v11 = sub_1007A2D74();
  v12 = swift_allocObject();
  *(v12 + 16) = v1;
  *(v12 + 24) = a1;
  aBlock[4] = sub_100467BA8;
  aBlock[5] = v12;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1003323D0;
  aBlock[3] = &unk_100A1CE90;
  v13 = _Block_copy(aBlock);
  v14 = v1;

  sub_1007A1C74();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_100022984(&qword_100ADA670, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_1001F1160(&unk_100AD7CA0, &unk_100812B20);
  sub_100234698();
  sub_1007A3594();
  sub_1007A2D94();
  _Block_release(v13);

  (*(v4 + 8))(v6, v3);
  return (*(v8 + 8))(v10, v7);
}

void sub_100467740(double a1)
{
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    if (swift_unknownObjectWeakLoadStrong())
    {
      v2 = type metadata accessor for AudiobookNowPlayingPresenter(0);
      sub_10055BBDC(v2, &off_100A22E18, a1);
      swift_unknownObjectRelease();
    }

    swift_unknownObjectRelease();
  }
}

double sub_100467804(char a1)
{
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    if (swift_unknownObjectWeakLoadStrong())
    {
      sub_10055B64C(a1 & 1);
      swift_unknownObjectRelease();
    }

    swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_100467894(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1007A1C54();
  v18 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1007A1CA4();
  v9 = *(v17 - 8);
  __chkstk_darwin(v17);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000A7C4(0, &qword_100AD1E10, OS_dispatch_queue_ptr);
  v12 = sub_1007A2D74();
  v13 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v14 = swift_allocObject();
  v14[2] = v13;
  v14[3] = a2;
  v14[4] = a3;
  v14[5] = a1;
  aBlock[4] = sub_100467B9C;
  aBlock[5] = v14;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1003323D0;
  aBlock[3] = &unk_100A1CE40;
  v15 = _Block_copy(aBlock);

  swift_unknownObjectRetain();

  sub_1007A1C74();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_100022984(&qword_100ADA670, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_1001F1160(&unk_100AD7CA0, &unk_100812B20);
  sub_100234698();
  sub_1007A3594();
  sub_1007A2D94();
  _Block_release(v15);

  (*(v18 + 8))(v8, v6);
  return (*(v9 + 8))(v11, v17);
}

uint64_t sub_100467CA0@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v6 = sub_10079ACE4();
  v7 = sub_100008B98(v6, a2);
  v8 = *(*(v6 - 8) + 16);

  return v8(a4, v7, v6);
}

uint64_t sub_100467D38()
{
  v0 = sub_10079ACE4();
  sub_100009A38(v0, qword_100AE4D20);
  sub_100008B98(v0, qword_100AE4D20);
  return sub_10079ACD4();
}

uint64_t sub_100467DC4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFC && *(a1 + 25))
  {
    return (*a1 + 252);
  }

  v3 = *(a1 + 24);
  if (v3 <= 4)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_100467E0C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 252;
    if (a3 >= 0xFC)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
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

uint64_t sub_100467E5C(uint64_t a1)
{
  v1 = swift_dynamicCastObjCProtocolConditional();
  if (v1)
  {
    v2 = v1;
    swift_getObjectType();
    if (swift_conformsToProtocol2())
    {
      return v2;
    }
  }

  sub_1007A3744(22);
  sub_1007A3D34();

  v4._countAndFlagsBits = 0xD000000000000012;
  v4._object = 0x80000001008D5BC0;
  sub_1007A23D4(v4);
  v5._object = 0x80000001008277B0;
  v5._countAndFlagsBits = 0xD000000000000011;
  sub_1007A23D4(v5);
  result = sub_1007A38A4();
  __break(1u);
  return result;
}

double sub_100467F94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_1001F1160(&qword_100AD67D0, &qword_100814660);
  __chkstk_darwin(v8 - 8);
  v10 = v20 - v9;
  sub_1000077D8(a1, v20 - v9, &qword_100AD67D0, &qword_100814660);
  v11 = sub_1007A2744();
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_100007840(v10, &qword_100AD67D0, &qword_100814660);
    if (*(a3 + 16))
    {
LABEL_3:
      swift_getObjectType();
      swift_unknownObjectRetain();
      v13 = sub_1007A2694();
      v15 = v14;
      swift_unknownObjectRelease();
      goto LABEL_6;
    }
  }

  else
  {
    sub_1007A2734();
    (*(v12 + 8))(v10, v11);
    if (*(a3 + 16))
    {
      goto LABEL_3;
    }
  }

  v13 = 0;
  v15 = 0;
LABEL_6:
  v16 = *v4;
  v17 = swift_allocObject();
  *(v17 + 16) = a2;
  *(v17 + 24) = a3;
  type metadata accessor for FetchResult(0);
  v18 = (v15 | v13);
  if (v15 | v13)
  {
    v21[0] = 0;
    v21[1] = 0;
    v18 = v21;
    v21[2] = v13;
    v21[3] = v15;
  }

  v20[1] = 1;
  v20[2] = v18;
  v20[3] = v16;
  swift_task_create();

  return result;
}

void sub_1004681B0(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v25 = a2;
  v26 = a3;
  v6 = sub_100796BB4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v9 = sub_1007A1D04();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = (&v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_10000A7C4(0, &qword_100AD1E10, OS_dispatch_queue_ptr);
  *v12 = sub_1007A2D74();
  (*(v10 + 104))(v12, enum case for DispatchPredicate.onQueue(_:), v9);
  v13 = sub_1007A1D34();
  (*(v10 + 8))(v12, v9);
  if (v13)
  {
    (*(v7 + 16))(&v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v6);
    v14 = (*(v7 + 80) + 24) & ~*(v7 + 80);
    v15 = (v8 + v14 + 7) & 0xFFFFFFFFFFFFFFF8;
    v16 = (v15 + 15) & 0xFFFFFFFFFFFFFFF8;
    v17 = swift_allocObject();
    v18 = v24;
    *(v17 + 16) = v24;
    (*(v7 + 32))(v17 + v14, &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v6);
    v19 = v25;
    *(v17 + v15) = v25;
    *(v17 + v16) = v26;
    *(v17 + ((v16 + 15) & 0xFFFFFFFFFFFFFFF8)) = a4;
    aBlock[4] = sub_100468C78;
    aBlock[5] = v17;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1003323D0;
    aBlock[3] = &unk_100A1D1C8;
    v20 = _Block_copy(aBlock);
    swift_unknownObjectRetain();
    v21 = v18;
    v22 = v19;
    swift_unknownObjectRetain();

    [v22 performAfterPrivateDataFetchedWithCompletionHandler:v20];
    _Block_release(v20);
  }

  else
  {
    __break(1u);
  }
}

double sub_1004684AC(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v26 = a4;
  v27 = a5;
  v25 = a3;
  v7 = sub_100796BB4();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1001F1160(&qword_100AD67D0, &qword_100814660);
  __chkstk_darwin(v11 - 8);
  v13 = &v24 - v12;
  v14 = sub_1007A2744();
  (*(*(v14 - 8) + 56))(v13, 1, 1, v14);
  (*(v8 + 16))(v10, a2, v7);
  v15 = (*(v8 + 80) + 40) & ~*(v8 + 80);
  v16 = (v9 + v15 + 7) & 0xFFFFFFFFFFFFFFF8;
  v17 = (v16 + 15) & 0xFFFFFFFFFFFFFFF8;
  v18 = swift_allocObject();
  *(v18 + 2) = 0;
  *(v18 + 3) = 0;
  *(v18 + 4) = a1;
  (*(v8 + 32))(&v18[v15], v10, v7);
  v20 = v25;
  v19 = v26;
  *&v18[v16] = v25;
  *&v18[v17] = v19;
  *&v18[(v17 + 15) & 0xFFFFFFFFFFFFFFF8] = v27;
  swift_unknownObjectRetain();
  v21 = a1;
  v22 = v20;
  swift_unknownObjectRetain();
  sub_1003457A0(0, 0, v13, &unk_1008278E8, v18);

  return result;
}

uint64_t sub_1004686DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[5] = a7;
  v8[6] = a8;
  v8[3] = a5;
  v8[4] = a6;
  v8[2] = a4;
  v9 = sub_10079ACE4();
  v8[7] = v9;
  v8[8] = *(v9 - 8);
  v8[9] = swift_task_alloc();
  v10 = sub_100796BB4();
  v8[10] = v10;
  v8[11] = *(v10 - 8);
  v8[12] = swift_task_alloc();

  return _swift_task_switch(sub_100468800, 0, 0);
}

uint64_t sub_100468800()
{
  v1 = sub_100797CF4();
  v0[13] = v1;
  if (!v1)
  {
    __break(1u);
    goto LABEL_7;
  }

  v9 = v1;
  sub_100796BA4();
  v1 = BALog();
  if (!v1)
  {
LABEL_7:
    __break(1u);
    return withTaskGroup<A, B>(of:returning:isolation:body:)(v1, v2, v3, v4, v5, v6, v7, v8);
  }

  v20 = v0[12];
  v10 = v0[9];
  v12 = v0[5];
  v11 = v0[6];
  v14 = v0[3];
  v13 = v0[4];
  v15 = v0[2];
  sub_10079ACF4();
  v16 = type metadata accessor for FetchResult(0);
  v17 = swift_task_alloc();
  v0[14] = v17;
  v17[2] = v12;
  v17[3] = v10;
  v17[4] = v13;
  v17[5] = v15;
  v17[6] = v20;
  v17[7] = v11;
  v17[8] = v14;
  v17[9] = v9;
  v1 = swift_task_alloc();
  v0[15] = v1;
  *v1 = v0;
  v1[1] = sub_100468970;
  v3 = &type metadata for () + 8;
  v6 = &unk_1008278F8;
  v2 = v16;
  v4 = 0;
  v5 = 0;
  v7 = v17;
  v8 = v16;

  return withTaskGroup<A, B>(of:returning:isolation:body:)(v1, v2, v3, v4, v5, v6, v7, v8);
}

uint64_t sub_100468970()
{

  return _swift_task_switch(sub_100468A88, 0, 0);
}

uint64_t sub_100468A88()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 80);
  v3 = *(v0 + 88);
  v5 = *(v0 + 64);
  v4 = *(v0 + 72);
  v6 = *(v0 + 56);

  (*(v5 + 8))(v4, v6);
  (*(v3 + 8))(v1, v2);

  v7 = *(v0 + 8);

  return v7();
}

double sub_100468C78()
{
  v1 = *(sub_100796BB4() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 15) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(v0 + v3);
  v6 = *(v0 + v4);
  v7 = *(v0 + ((v4 + 15) & 0xFFFFFFFFFFFFFFF8));
  v8 = *(v0 + 16);

  return sub_1004684AC(v8, v0 + v2, v5, v6, v7);
}

uint64_t sub_100468D28(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_100796BB4() - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = v1[2];
  v10 = v1[3];
  v11 = v1[4];
  v12 = *(v1 + v7);
  v13 = *(v1 + v8);
  v14 = *(v1 + ((v8 + 15) & 0xFFFFFFFFFFFFFFF8));
  v15 = swift_task_alloc();
  *(v3 + 16) = v15;
  *v15 = v3;
  v15[1] = sub_100009A34;

  return sub_1004686DC(a1, v9, v10, v11, v1 + v6, v12, v13, v14);
}

uint64_t type metadata accessor for FetchResult(uint64_t a1)
{
  result = qword_100AE4E60;
  if (!qword_100AE4E60)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100468ED0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[9] = v16;
  v8[10] = v17;
  v8[7] = a7;
  v8[8] = a8;
  v8[5] = a5;
  v8[6] = a6;
  v8[3] = a3;
  v8[4] = a4;
  v8[2] = a2;
  sub_1001F1160(&unk_100ADB5C0, &unk_100816880);
  v8[11] = swift_task_alloc();
  v8[12] = swift_task_alloc();
  v9 = sub_100796BB4();
  v8[13] = v9;
  v8[14] = *(v9 - 8);
  v8[15] = swift_task_alloc();
  v8[16] = swift_task_alloc();
  v8[17] = swift_task_alloc();
  v8[18] = swift_task_alloc();
  v10 = type metadata accessor for FetchResult(0);
  v8[19] = v10;
  v8[20] = *(v10 - 8);
  v8[21] = swift_task_alloc();
  sub_1001F1160(&qword_100AE4D58, &qword_100827900);
  v8[22] = swift_task_alloc();
  v11 = sub_1001F1160(&qword_100AE4D60, &qword_100827908);
  v8[23] = v11;
  v8[24] = *(v11 - 8);
  v8[25] = swift_task_alloc();
  sub_1001F1160(&qword_100AE4D68, &qword_100827910);
  v8[26] = swift_task_alloc();
  v8[27] = swift_task_alloc();
  sub_1001F1160(&qword_100AE4D70, &qword_100827918);
  v8[28] = swift_task_alloc();
  v8[29] = swift_task_alloc();
  sub_1001F1160(&qword_100AE4D78, &qword_100827920);
  v8[30] = swift_task_alloc();
  v8[31] = swift_task_alloc();
  v12 = sub_10079ACE4();
  v8[32] = v12;
  v13 = *(v12 - 8);
  v8[33] = v13;
  v8[34] = *(v13 + 64);
  v8[35] = swift_task_alloc();
  sub_1001F1160(&qword_100AD67D0, &qword_100814660);
  v8[36] = swift_task_alloc();

  return _swift_task_switch(sub_100469274, 0, 0);
}

uint64_t sub_100469274()
{
  v2 = v0[35];
  v1 = v0[36];
  v4 = v0[33];
  v3 = v0[34];
  v5 = v0[32];
  v32 = v0[31];
  v33 = v0[29];
  v34 = v0[27];
  v29 = v0[5];
  v31 = v0[6];
  v6 = v0[4];
  v28 = v0[3];
  objc_opt_self();
  v38 = swift_dynamicCastObjCClassUnconditional();
  v35 = sub_1007A2744();
  v40 = *(*(v35 - 8) + 56);
  v40(v1, 1, 1, v35);
  v39 = *(v4 + 16);
  v39(v2, v6, v5);
  v7 = v4;
  v36 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v8 = (v3 + v36 + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = swift_allocObject();
  *(v9 + 16) = 0;
  *(v9 + 24) = 0;
  v37 = *(v7 + 32);
  v37(v9 + v36, v2, v5);
  *(v9 + v8) = v38;
  *(v9 + ((v8 + 15) & 0xFFFFFFFFFFFFFFF8)) = v29;
  swift_unknownObjectRetain();
  v30 = v29;
  sub_100467F94(v1, &unk_100827930, v9);
  sub_100007840(v1, &qword_100AD67D0, &qword_100814660);
  v40(v1, 1, 1, v35);
  v39(v2, v6, v5);
  v10 = swift_allocObject();
  *(v10 + 16) = 0;
  *(v10 + 24) = 0;
  v37(v10 + v36, v2, v5);
  *(v10 + v8) = v38;
  swift_unknownObjectRetain();
  sub_100467F94(v1, &unk_100827940, v10);
  sub_100007840(v1, &qword_100AD67D0, &qword_100814660);
  v40(v1, 1, 1, v35);
  v39(v2, v6, v5);
  v11 = (v8 + 15) & 0xFFFFFFFFFFFFFFF8;
  v12 = swift_allocObject();
  *(v12 + 16) = 0;
  *(v12 + 24) = 0;
  v37(v12 + v36, v2, v5);
  *(v12 + v8) = v31;
  *(v12 + v11) = v28;
  *(v12 + ((v11 + 15) & 0xFFFFFFFFFFFFFFF8)) = v30;
  swift_unknownObjectRetain();
  v13 = v30;
  v14 = v31;
  sub_100467F94(v1, &unk_100827950, v12);
  sub_100007840(v1, &qword_100AD67D0, &qword_100814660);
  v15 = sub_100798224();
  v0[37] = v15;
  v16 = *(v15 - 8);
  v0[38] = v16;
  v17 = *(v16 + 56);
  v0[39] = v17;
  v0[40] = (v16 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v17(v32, 1, 1, v15);
  v18 = sub_100797DB4();
  v0[41] = v18;
  v19 = *(v18 - 8);
  v0[42] = v19;
  v20 = *(v19 + 56);
  v0[43] = v20;
  v0[44] = (v19 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v20(v33, 1, 1, v18);
  v21 = sub_100798054();
  v0[45] = v21;
  v22 = *(v21 - 8);
  v0[46] = v22;
  v23 = *(v22 + 56);
  v0[47] = v23;
  v0[48] = (v22 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v23(v34, 1, 1, v21);
  sub_1007A26C4();
  v24 = swift_task_alloc();
  v0[49] = v24;
  *v24 = v0;
  v24[1] = sub_1004697D8;
  v25 = v0[22];
  v26 = v0[23];

  return TaskGroup.Iterator.next(isolation:)(v25, 0, 0, v26);
}

uint64_t sub_1004697D8()
{

  return _swift_task_switch(sub_1004698D4, 0, 0);
}

uint64_t sub_1004698D4()
{
  v98 = v0;
  v1 = v0[22];
  if ((*(v0[20] + 48))(v1, 1, v0[19]) != 1)
  {
    sub_10046D804(v1, v0[21]);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v29 = v0[21];
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        v30 = v0[43];
        v31 = v0[41];
        v32 = v0[42];
        v33 = v0[29];
        v34 = &qword_100AE4D70;
        v35 = &qword_100827918;
      }

      else
      {
        v30 = v0[47];
        v31 = v0[45];
        v32 = v0[46];
        v33 = v0[27];
        v34 = &qword_100AE4D68;
        v35 = &qword_100827910;
      }
    }

    else
    {
      v30 = v0[39];
      v31 = v0[37];
      v32 = v0[38];
      v33 = v0[31];
      v34 = &qword_100AE4D78;
      v35 = &qword_100827920;
    }

    sub_100007840(v33, v34, v35);
    (*(v32 + 32))(v33, v29, v31);
    v30(v33, 0, 1, v31);
    v38 = swift_task_alloc();
    v0[49] = v38;
    *v38 = v0;
    v38[1] = sub_1004697D8;
    v39 = v0[22];
    v40 = v0[23];
    v41 = 0;
    v42 = 0;

    return TaskGroup.Iterator.next(isolation:)(v39, v41, v42, v40);
  }

  v2 = v0[18];
  v3 = v0[13];
  v4 = v0[14];
  (*(v0[24] + 8))(v0[25], v0[23]);
  sub_100796BA4();
  sub_100796AA4();
  v6 = v5;
  v7 = *(v4 + 8);
  v7(v2, v3);
  swift_unknownObjectRetain();
  v8 = sub_10079ACC4();
  v9 = sub_1007A2994();
  swift_unknownObjectRelease();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = v0[8];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v97 = v12;
    *v11 = 134218242;
    *(v11 + 4) = v6;
    *(v11 + 12) = 2080;
    if (v10)
    {
      v13 = 0x737473697865;
    }

    else
    {
      v13 = 0x2074276E73656F64;
    }

    if (v10)
    {
      v14 = 0xE600000000000000;
    }

    else
    {
      v14 = 0xED00007473697865;
    }

    v15 = sub_1000070F4(v13, v14, &v97);

    *(v11 + 14) = v15;
    _os_log_impl(&_mh_execute_header, v8, v9, "Spent %fs waiting for all InitialAppStateQueryEvent data, appSession %s", v11, 0x16u);
    sub_1000074E0(v12);
  }

  v16 = v0[13];
  v17 = v0[14];
  v18 = v0[12];
  sub_100797CE4();
  v19 = *(v17 + 48);
  if (v19(v18, 1, v16) == 1)
  {
    v20 = sub_10079ACC4();
    v21 = sub_1007A29B4();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&_mh_execute_header, v20, v21, "InitialAppStateQueryEvent skipped because no session exists!", v22, 2u);
    }

    v23 = v0[31];
    v24 = v0[29];
    v25 = v0[27];
    v26 = v0[12];

    sub_100007840(v25, &qword_100AE4D68, &qword_100827910);
    sub_100007840(v24, &qword_100AE4D70, &qword_100827918);
    sub_100007840(v23, &qword_100AE4D78, &qword_100827920);
    v27 = v26;
    goto LABEL_14;
  }

  v36 = v0[13];
  v37 = v0[11];
  sub_1000077D8(v0[12], v37, &unk_100ADB5C0, &unk_100816880);
  if (v19(v37, 1, v36) == 1)
  {
    sub_100007840(v0[11], &unk_100ADB5C0, &unk_100816880);
    goto LABEL_27;
  }

  (*(v0[14] + 32))(v0[17], v0[11], v0[13]);
  sub_10046D7C0(&unk_100AE4D80, &protocol conformance descriptor for Date);
  v43 = sub_1007A2124();
  v44 = v0[17];
  if (v43)
  {
    v7(v0[17], v0[13]);
LABEL_27:
    v45 = v0[41];
    v46 = v0[42];
    v48 = v0[28];
    v47 = v0[29];
    sub_100798004();
    v49 = sub_100797FF4();
    sub_1000077D8(v47, v48, &qword_100AE4D70, &qword_100827918);
    v39 = (*(v46 + 48))(v48, 1, v45);
    if (v39 == 1)
    {
      __break(1u);
    }

    else
    {
      v50 = v0[37];
      v51 = v0[38];
      v52 = v0[30];
      sub_1000077D8(v0[31], v52, &qword_100AE4D78, &qword_100827920);
      v39 = (*(v51 + 48))(v52, 1, v50);
      if (v39 != 1)
      {
        v53 = v0[45];
        v54 = v0[46];
        v55 = v0[26];
        sub_1000077D8(v0[27], v55, &qword_100AE4D68, &qword_100827910);
        v39 = (*(v54 + 48))(v55, 1, v53);
        if (v39 != 1)
        {
          v56 = v0[46];
          v57 = v0[42];
          v95 = v0[41];
          v58 = v0[38];
          v91 = v0[45];
          v93 = v0[37];
          v59 = v0[30];
          v60 = v0[28];
          v61 = v0[29];
          v62 = v0[26];
          v63 = v0[27];
          v88 = v0[31];
          v89 = v0[12];
          sub_100797EC4();

          sub_100007840(v63, &qword_100AE4D68, &qword_100827910);
          sub_100007840(v61, &qword_100AE4D70, &qword_100827918);
          sub_100007840(v88, &qword_100AE4D78, &qword_100827920);
          sub_100007840(v89, &unk_100ADB5C0, &unk_100816880);
          (*(v56 + 8))(v62, v91);
          (*(v58 + 8))(v59, v93);
          (*(v57 + 8))(v60, v95);
          goto LABEL_31;
        }

        goto LABEL_40;
      }
    }

    __break(1u);
LABEL_40:
    __break(1u);
    return TaskGroup.Iterator.next(isolation:)(v39, v41, v42, v40);
  }

  v66 = v0[15];
  v67 = v0[13];
  v68 = *(v0[14] + 16);
  v68(v0[16], v0[9], v67);
  v68(v66, v44, v67);
  v69 = sub_10079ACC4();
  v94 = sub_1007A29B4();
  v70 = os_log_type_enabled(v69, v94);
  v71 = v0[31];
  v72 = v0[29];
  v73 = v0[27];
  v74 = v0[16];
  v96 = v0[17];
  v75 = v0[15];
  v76 = v0[13];
  if (v70)
  {
    v92 = v0[27];
    v77 = swift_slowAlloc();
    v97 = swift_slowAlloc();
    *v77 = 136315394;
    sub_10046D7C0(&unk_100AE9A30, &protocol conformance descriptor for Date);
    log = v69;
    v78 = sub_1007A3A74();
    v90 = v71;
    v80 = v79;
    v7(v74, v76);
    v81 = sub_1000070F4(v78, v80, &v97);

    *(v77 + 4) = v81;
    *(v77 + 12) = 2080;
    v82 = sub_1007A3A74();
    v84 = v83;
    v7(v75, v76);
    v85 = sub_1000070F4(v82, v84, &v97);

    *(v77 + 14) = v85;
    _os_log_impl(&_mh_execute_header, log, v94, "InitialAppStateQueryEvent skipped because a different session has started: %s vs %s", v77, 0x16u);
    swift_arrayDestroy();

    v7(v96, v76);
    sub_100007840(v92, &qword_100AE4D68, &qword_100827910);
    sub_100007840(v72, &qword_100AE4D70, &qword_100827918);
    v86 = v90;
  }

  else
  {

    v7(v75, v76);
    v7(v74, v76);
    v7(v96, v76);
    sub_100007840(v73, &qword_100AE4D68, &qword_100827910);
    sub_100007840(v72, &qword_100AE4D70, &qword_100827918);
    v86 = v71;
  }

  sub_100007840(v86, &qword_100AE4D78, &qword_100827920);
  v27 = v0[12];
LABEL_14:
  sub_100007840(v27, &unk_100ADB5C0, &unk_100816880);
LABEL_31:

  v64 = v0[1];

  return v64();
}

uint64_t sub_10046A3A8(uint64_t a1, uint64_t a2)
{
  v5 = v2[2];
  v6 = v2[3];
  v7 = v2[4];
  v8 = v2[5];
  v9 = v2[6];
  v10 = v2[7];
  v11 = swift_task_alloc();
  *(v3 + 16) = v11;
  *v11 = v3;
  v11[1] = sub_100009A34;

  return sub_100468ED0(a1, a2, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_10046A498(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v7 = sub_1007A3C84();
  v5[7] = v7;
  v5[8] = *(v7 - 8);
  v5[9] = swift_task_alloc();
  v8 = sub_100797DB4();
  v5[10] = v8;
  v5[11] = *(v8 - 8);
  v9 = swift_task_alloc();
  v5[12] = v9;
  v5[13] = swift_task_alloc();
  v10 = swift_task_alloc();
  v5[14] = v10;
  *v10 = v5;
  v10[1] = sub_10046A618;

  return BKLibraryManager.libraryData(using:)(v9, a5);
}

uint64_t sub_10046A618()
{
  *(*v1 + 120) = v0;

  if (v0)
  {
    v2 = sub_10046A7F4;
  }

  else
  {
    v2 = sub_10046A72C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10046A72C()
{
  v1 = *(v0[11] + 32);
  v1(v0[13], v0[12], v0[10]);
  v3 = v0[5];
  v2 = v0[6];
  v1(v0[2], v0[13], v0[10]);

  v4 = v0[1];

  return v4();
}

uint64_t sub_10046A7F4()
{
  v20 = v0;
  swift_errorRetain();
  v1 = sub_10079ACC4();
  v2 = sub_1007A29B4();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = v0[9];
    v4 = v0[10];
    v5 = v0[8];
    v18 = v0[7];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v19[0] = v8;
    *v6 = 136315394;
    v19[4] = sub_1001F1160(&qword_100AE4DE8, &qword_1008279D0);
    v19[1] = v4;
    sub_1007A3C54();
    sub_1007A3C64();
    (*(v5 + 8))(v3, v18);
    v9 = sub_1007A3D34();
    v11 = sub_1000070F4(v9, v10, v19);

    *(v6 + 4) = v11;
    *(v6 + 12) = 2114;
    swift_errorRetain();
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 14) = v12;
    *v7 = v12;
    _os_log_impl(&_mh_execute_header, v1, v2, "Unable to fetch %s due to %{public}@", v6, 0x16u);
    sub_100007840(v7, &unk_100AD9480, &qword_1008113B0);

    sub_1000074E0(v8);
  }

  else
  {
  }

  v13 = v0[11];
  (*(v13 + 16))(v0[13], v0[3], v0[10]);
  v15 = v0[5];
  v14 = v0[6];
  (*(v13 + 32))(v0[2], v0[13], v0[10]);

  v16 = v0[1];

  return v16();
}

uint64_t sub_10046AA78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  v5 = sub_1007A3C84();
  v4[6] = v5;
  v4[7] = *(v5 - 8);
  v4[8] = swift_task_alloc();
  v6 = sub_100798224();
  v4[9] = v6;
  v4[10] = *(v6 - 8);
  v7 = swift_task_alloc();
  v4[11] = v7;
  v4[12] = swift_task_alloc();
  v8 = swift_task_alloc();
  v4[13] = v8;
  *v8 = v4;
  v8[1] = sub_10046ABEC;

  return BKLibraryManager.collectionSummaryData()(v7);
}

uint64_t sub_10046ABEC()
{
  *(*v1 + 112) = v0;

  if (v0)
  {
    v2 = sub_10046ADBC;
  }

  else
  {
    v2 = sub_10046AD00;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10046AD00()
{
  v1 = *(v0[10] + 32);
  v1(v0[12], v0[11], v0[9]);
  v2 = v0[5];
  v1(v0[2], v0[12], v0[9]);

  v3 = v0[1];

  return v3();
}

uint64_t sub_10046ADBC()
{
  v19 = v0;
  swift_errorRetain();
  v1 = sub_10079ACC4();
  v2 = sub_1007A29B4();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = v0[8];
    v4 = v0[9];
    v5 = v0[7];
    v17 = v0[6];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v18[0] = v8;
    *v6 = 136315394;
    v18[4] = sub_1001F1160(&qword_100AE4DE0, &qword_1008279B0);
    v18[1] = v4;
    sub_1007A3C54();
    sub_1007A3C64();
    (*(v5 + 8))(v3, v17);
    v9 = sub_1007A3D34();
    v11 = sub_1000070F4(v9, v10, v18);

    *(v6 + 4) = v11;
    *(v6 + 12) = 2114;
    swift_errorRetain();
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 14) = v12;
    *v7 = v12;
    _os_log_impl(&_mh_execute_header, v1, v2, "Unable to fetch %s due to %{public}@", v6, 0x16u);
    sub_100007840(v7, &unk_100AD9480, &qword_1008113B0);

    sub_1000074E0(v8);
  }

  else
  {
  }

  v13 = v0[10];
  (*(v13 + 16))(v0[12], v0[3], v0[9]);
  v14 = v0[5];
  (*(v13 + 32))(v0[2], v0[12], v0[9]);

  v15 = v0[1];

  return v15();
}

uint64_t sub_10046B03C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[4] = a5;
  v6[5] = a6;
  v6[2] = a1;
  v6[3] = a4;
  v7 = sub_100797DB4();
  v6[6] = v7;
  v6[7] = *(v7 - 8);
  v6[8] = swift_task_alloc();

  return _swift_task_switch(sub_10046B100, 0, 0);
}

uint64_t sub_10046B100()
{
  v2 = v0[4];
  v1 = v0[5];
  sub_100797DA4();
  v3 = v2;
  v4 = v1;
  v5 = swift_task_alloc();
  v0[9] = v5;
  *v5 = v0;
  v5[1] = sub_10046B1C4;
  v6 = v0[8];
  v7 = v0[4];
  v8 = v0[5];
  v9 = v0[2];
  v10 = v0[3];

  return sub_10046A498(v9, v6, v10, v7, v8);
}

uint64_t sub_10046B1C4()
{
  v1 = *(*v0 + 64);
  v2 = *(*v0 + 56);
  v3 = *(*v0 + 48);

  (*(v2 + 8))(v1, v3);

  return _swift_task_switch(sub_10046B31C, 0, 0);
}

uint64_t sub_10046B31C()
{
  type metadata accessor for FetchResult(0);
  swift_storeEnumTagMultiPayload();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10046B39C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v5[2] = a1;
  v6 = sub_100798224();
  v5[5] = v6;
  v5[6] = *(v6 - 8);
  v5[7] = swift_task_alloc();

  return _swift_task_switch(sub_10046B460, 0, 0);
}

uint64_t sub_10046B460()
{
  v1 = v0[4];
  sub_100798214();
  v2 = v1;
  v3 = swift_task_alloc();
  v0[8] = v3;
  *v3 = v0;
  v3[1] = sub_10046B518;
  v4 = v0[7];
  v5 = v0[3];
  v6 = v0[4];
  v7 = v0[2];

  return sub_10046AA78(v7, v4, v5, v6);
}

uint64_t sub_10046B518()
{
  v1 = *(*v0 + 56);
  v2 = *(*v0 + 48);
  v3 = *(*v0 + 40);

  (*(v2 + 8))(v1, v3);

  return _swift_task_switch(sub_10046B670, 0, 0);
}

uint64_t sub_10046B670()
{
  type metadata accessor for FetchResult(0);
  swift_storeEnumTagMultiPayload();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10046B6F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[5] = a6;
  v7[6] = a7;
  v7[3] = a4;
  v7[4] = a5;
  v7[2] = a1;
  v8 = sub_1007A3C84();
  v7[7] = v8;
  v7[8] = *(v8 - 8);
  v7[9] = swift_task_alloc();
  v9 = sub_100798054();
  v7[10] = v9;
  v7[11] = *(v9 - 8);
  v7[12] = swift_task_alloc();
  v7[13] = swift_task_alloc();
  v7[14] = swift_task_alloc();

  return _swift_task_switch(sub_10046B82C, 0, 0);
}

uint64_t sub_10046B82C()
{
  v1 = v0[5];
  v2 = v0[6];
  v3 = v0[4];
  sub_100798044();
  v4 = v3;
  swift_unknownObjectRetain();
  v5 = v2;
  v6 = swift_task_alloc();
  v0[15] = v6;
  v6[2] = v1;
  v6[3] = v5;
  v6[4] = v4;
  v7 = swift_task_alloc();
  v0[16] = v7;
  *v7 = v0;
  v7[1] = sub_10046B958;
  v8 = v0[12];
  v9 = v0[10];

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v8, 0, 0, 0xD00000000000001CLL, 0x80000001008D5C20, sub_10046D868, v6, v9);
}

uint64_t sub_10046B958()
{
  *(*v1 + 136) = v0;

  if (v0)
  {
    v2 = sub_10046BB98;
  }

  else
  {

    v2 = sub_10046BA74;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10046BA74()
{
  v1 = *(v0[11] + 32);
  (v1)(v0[13], v0[12], v0[10]);
  v2 = v0[14];
  v3 = v0[11];
  v4 = v0[10];
  v5 = v0[6];
  v6 = v0[4];
  v1(v0[2]);

  swift_unknownObjectRelease();
  (*(v3 + 8))(v2, v4);
  type metadata accessor for FetchResult(0);
  swift_storeEnumTagMultiPayload();

  v7 = v0[1];

  return v7();
}

uint64_t sub_10046BB98()
{
  v23 = v0;

  swift_errorRetain();
  v1 = sub_10079ACC4();
  v2 = sub_1007A29B4();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = v0[9];
    v4 = v0[10];
    v5 = v0[8];
    v21 = v0[7];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v22[0] = v8;
    *v6 = 136315394;
    v22[4] = sub_1001F1160(&unk_100AE4D90, &qword_100827958);
    v22[1] = v4;
    sub_1007A3C54();
    sub_1007A3C64();
    (*(v5 + 8))(v3, v21);
    v9 = sub_1007A3D34();
    v11 = sub_1000070F4(v9, v10, v22);

    *(v6 + 4) = v11;
    *(v6 + 12) = 2114;
    swift_errorRetain();
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 14) = v12;
    *v7 = v12;
    _os_log_impl(&_mh_execute_header, v1, v2, "Unable to fetch %s due to %{public}@", v6, 0x16u);
    sub_100007840(v7, &unk_100AD9480, &qword_1008113B0);

    sub_1000074E0(v8);
  }

  else
  {
  }

  v13 = v0[11];
  (*(v13 + 16))(v0[13], v0[14], v0[10]);
  v14 = v0[14];
  v15 = v0[11];
  v16 = v0[10];
  v17 = v0[6];
  v18 = v0[4];
  (*(v13 + 32))(v0[2], v0[13], v16);

  swift_unknownObjectRelease();
  (*(v15 + 8))(v14, v16);
  type metadata accessor for FetchResult(0);
  swift_storeEnumTagMultiPayload();

  v19 = v0[1];

  return v19();
}

void sub_10046BE74(uint64_t a1, void *a2, void *a3, void *a4)
{
  v8 = sub_1001F1160(&unk_100AE4DA0, &qword_100827960);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(v8);
  v13 = aBlock - v12;
  (*(v9 + 16))(aBlock - v12, a1, v8, v11);
  v14 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v15 = (v10 + v14 + 7) & 0xFFFFFFFFFFFFFFF8;
  v16 = swift_allocObject();
  (*(v9 + 32))(v16 + v14, v13, v8);
  *(v16 + v15) = a3;
  *(v16 + ((v15 + 15) & 0xFFFFFFFFFFFFFFF8)) = a4;
  aBlock[4] = sub_10046D874;
  aBlock[5] = v16;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100201C54;
  aBlock[3] = &unk_100A1D2B8;
  v17 = _Block_copy(aBlock);
  v18 = a3;
  v19 = a4;

  [a2 performBackgroundReadOnlyBlock:v17];
  _Block_release(v17);
}

void sub_10046C05C(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v24 = a3;
  v25 = a4;
  v26 = a2;
  v4 = sub_1001F1160(&unk_100AE4DA0, &qword_100827960);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v23 - v6;
  v8 = sub_1001F1160(&qword_100AD67D0, &qword_100814660);
  __chkstk_darwin(v8 - 8);
  v10 = &v23 - v9;
  v11 = [objc_opt_self() fetchRequestForRecentlyEngaged];
  v12 = [objc_opt_self() sharedInstance];
  v13 = [v12 numberOfBooksAllowedInRecentsList];
  v14 = [v13 integerValue];

  [v11 setFetchLimit:v14];
  sub_10000A7C4(0, &qword_100ADA990, BKLibraryAsset_ptr);
  v15 = sub_1007A2F34();
  v16 = sub_1007A2744();
  (*(*(v16 - 8) + 56))(v10, 1, 1, v16);
  (*(v5 + 16))(v7, v26, v4);
  v17 = (*(v5 + 80) + 56) & ~*(v5 + 80);
  v18 = swift_allocObject();
  *(v18 + 2) = 0;
  *(v18 + 3) = 0;
  v19 = v24;
  *(v18 + 4) = v15;
  *(v18 + 5) = v19;
  v20 = v25;
  *(v18 + 6) = v25;
  (*(v5 + 32))(&v18[v17], v7, v4);
  v21 = v19;
  v22 = v20;
  sub_1003457A0(0, 0, v10, &unk_100827970, v18);
}

uint64_t sub_10046C354(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[97] = a7;
  v7[96] = a6;
  v7[95] = a5;
  v7[94] = a4;
  v8 = sub_100798254();
  v7[98] = v8;
  v7[99] = *(v8 - 8);
  v7[100] = swift_task_alloc();
  v9 = sub_100797D94();
  v7[101] = v9;
  v7[102] = *(v9 - 8);
  v7[103] = swift_task_alloc();
  v7[104] = swift_task_alloc();
  v10 = sub_100798054();
  v7[105] = v10;
  v7[106] = *(v10 - 8);
  v7[107] = swift_task_alloc();
  v7[108] = swift_task_alloc();

  return _swift_task_switch(sub_10046C4F0, 0, 0);
}

void sub_10046C4F0()
{
  v1 = *(v0 + 752);
  sub_1001F1160(&qword_100AE4DB0, &qword_100827978);
  v2 = swift_allocObject();
  *(v0 + 872) = v2;
  *(v2 + 24) = 0;
  *(v2 + 16) = _swiftEmptyArrayStorage;
  if (!(v1 >> 62))
  {
    v3 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    *(v0 + 880) = v3;
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_30:
    v37 = *(v0 + 864);
    v38 = *(v0 + 856);
    v39 = *(v0 + 848);
    v40 = *(v0 + 840);
    sub_1001F1160(&unk_100AE4DB8, &qword_100827980);
    sub_10079ABE4();
    sub_100798044();
    (*(v39 + 16))(v38, v37, v40);
    sub_1001F1160(&unk_100AE4DA0, &qword_100827960);
    sub_1007A26B4();

    (*(v39 + 8))(v37, v40);

    v41 = *(v0 + 8);

    v41();
    return;
  }

LABEL_29:
  v36 = sub_1007A38D4();
  *(v0 + 880) = v36;
  if (!v36)
  {
    goto LABEL_30;
  }

LABEL_3:
  v4 = 0;
  *(v0 + 888) = sub_1007984D4();
  while (1)
  {
    *(v0 + 896) = 0;
    v5 = *(v0 + 752);
    if ((v5 & 0xC000000000000001) != 0)
    {
      v6 = sub_1007A3784();
    }

    else
    {
      if (v4 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_28;
      }

      v6 = *(v5 + 8 * v4 + 32);
    }

    v7 = v6;
    *(v0 + 904) = v6;
    *(v0 + 912) = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      __break(1u);
LABEL_28:
      __break(1u);
      goto LABEL_29;
    }

    v8 = [v6 permanentOrTemporaryAssetID];
    v9 = v8;
    v10 = v8;
    if (!v8)
    {
      sub_1007A2254();
      v10 = sub_1007A2214();

      sub_1007A2254();
      v9 = sub_1007A2214();
    }

    v11 = *(v0 + 760);
    *(v0 + 920) = sub_1007A2254();
    *(v0 + 928) = v12;
    v13 = v8;
    [v7 contentType];
    sub_1007984C4();
    v14 = [v11 contentPrivateIDForContentID:v10];

    if (v14)
    {
      v15 = sub_1007A2254();
      v17 = v16;
    }

    else
    {
      v15 = 0;
      v17 = 0;
    }

    *(v0 + 944) = v17;
    *(v0 + 936) = v15;
    v18 = [*(v0 + 760) contentUserIDForContentID:{v9, v42}];

    if (v18)
    {
      v19 = sub_1007A2254();
      v21 = v20;
    }

    else
    {
      v19 = 0;
      v21 = 0;
    }

    *(v0 + 960) = v21;
    *(v0 + 952) = v19;
    if ([v7 contentType] == 6)
    {
      break;
    }

    v22 = [v7 readingProgress];
    if (v22)
    {
      v23 = v22;
      [v22 floatValue];
    }

    v42 = *(v0 + 896);
    v24 = *(v0 + 872);
    v25 = *(v0 + 800);
    (*(*(v0 + 816) + 16))(*(v0 + 824), *(v0 + 832), *(v0 + 808));
    sub_100798244();
    *(swift_task_alloc() + 16) = v25;
    os_unfair_lock_lock((v24 + 24));
    sub_10046DA40((v24 + 16));
    os_unfair_lock_unlock((v24 + 24));
    if (v42)
    {
      return;
    }

    v26 = *(v0 + 912);
    v27 = *(v0 + 880);
    v28 = *(v0 + 832);
    v29 = *(v0 + 816);
    v30 = *(v0 + 808);
    v31 = *(v0 + 800);
    v32 = *(v0 + 792);
    v33 = *(v0 + 784);

    (*(v29 + 8))(v28, v30);

    (*(v32 + 8))(v31, v33);
    if (v26 == v27)
    {
      goto LABEL_30;
    }

    v4 = *(v0 + 912);
  }

  v34 = *(v0 + 768);
  v35 = swift_task_alloc();
  *(v0 + 968) = v35;
  *(v35 + 16) = v34;
  *(v35 + 24) = v7;
  swift_asyncLet_begin();

  _swift_asyncLet_get(v0 + 16, v0 + 744, sub_10046CA88, v0 + 656);
}

void sub_10046CACC()
{

  while (1)
  {
    v40 = *(v0 + 896);
    v1 = *(v0 + 872);
    v2 = *(v0 + 800);
    (*(*(v0 + 816) + 16))(*(v0 + 824), *(v0 + 832), *(v0 + 808));
    sub_100798244();
    *(swift_task_alloc() + 16) = v2;
    os_unfair_lock_lock((v1 + 24));
    sub_10046DA40((v1 + 16));
    os_unfair_lock_unlock((v1 + 24));
    if (v40)
    {
      return;
    }

    v3 = *(v0 + 912);
    v4 = *(v0 + 880);
    v5 = *(v0 + 832);
    v6 = *(v0 + 816);
    v7 = *(v0 + 808);
    v8 = *(v0 + 800);
    v9 = *(v0 + 792);
    v10 = *(v0 + 784);

    (*(v6 + 8))(v5, v7);

    v11 = (*(v9 + 8))(v8, v10);
    if (v3 == v4)
    {
      break;
    }

    v14 = *(v0 + 912);
    *(v0 + 896) = 0;
    v15 = *(v0 + 752);
    if ((v15 & 0xC000000000000001) != 0)
    {
      v11 = sub_1007A3784();
    }

    else
    {
      if (v14 >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_28;
      }

      v11 = *(v15 + 8 * v14 + 32);
    }

    v16 = v11;
    *(v0 + 904) = v11;
    *(v0 + 912) = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      __break(1u);
LABEL_28:
      __break(1u);
_swift_asyncLet_get:
      _swift_asyncLet_get(v11, v15, v12, v13);
      return;
    }

    v17 = [v11 permanentOrTemporaryAssetID];
    v18 = v17;
    v19 = v17;
    if (!v17)
    {
      sub_1007A2254();
      v19 = sub_1007A2214();

      sub_1007A2254();
      v18 = sub_1007A2214();
    }

    v20 = *(v0 + 760);
    *(v0 + 920) = sub_1007A2254();
    *(v0 + 928) = v21;
    v22 = v17;
    [v16 contentType];
    sub_1007984C4();
    v23 = [v20 contentPrivateIDForContentID:v19];

    if (v23)
    {
      v24 = sub_1007A2254();
      v26 = v25;
    }

    else
    {
      v24 = 0;
      v26 = 0;
    }

    *(v0 + 944) = v26;
    *(v0 + 936) = v24;
    v27 = [*(v0 + 760) contentUserIDForContentID:{v18, 0}];

    if (v27)
    {
      v28 = sub_1007A2254();
      v30 = v29;
    }

    else
    {
      v28 = 0;
      v30 = 0;
    }

    *(v0 + 960) = v30;
    *(v0 + 952) = v28;
    if ([v16 contentType] == 6)
    {
      v38 = *(v0 + 768);
      v39 = swift_task_alloc();
      *(v0 + 968) = v39;
      *(v39 + 16) = v38;
      *(v39 + 24) = v16;
      swift_asyncLet_begin();
      v12 = sub_10046CA88;
      v11 = (v0 + 16);
      v15 = v0 + 744;
      v13 = v0 + 656;

      goto _swift_asyncLet_get;
    }

    v31 = [v16 readingProgress];
    if (v31)
    {
      v32 = v31;
      [v31 floatValue];
    }
  }

  v33 = *(v0 + 864);
  v34 = *(v0 + 856);
  v35 = *(v0 + 848);
  v36 = *(v0 + 840);
  sub_1001F1160(&unk_100AE4DB8, &qword_100827980);
  sub_10079ABE4();
  sub_100798044();
  (*(v35 + 16))(v34, v33, v36);
  sub_1001F1160(&unk_100AE4DA0, &qword_100827960);
  sub_1007A26B4();

  (*(v35 + 8))(v33, v36);

  v37 = *(v0 + 8);

  v37();
}

uint64_t sub_10046CFF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a1;
  v5 = swift_task_alloc();
  *(v3 + 24) = v5;
  *v5 = v3;
  v5[1] = sub_10046D090;

  return sub_10046DB08(a3);
}

uint64_t sub_10046D090(double a1)
{
  *(*v1 + 32) = a1;

  return _swift_task_switch(sub_10046D190, 0, 0);
}

uint64_t sub_10046D1B4(uint64_t *a1, uint64_t a2)
{
  v4 = sub_100798254();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v8, a2, v4, v6);
  v9 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v9 = sub_10066BAFC(0, v9[2] + 1, 1, v9);
  }

  v11 = v9[2];
  v10 = v9[3];
  if (v11 >= v10 >> 1)
  {
    v9 = sub_10066BAFC((v10 > 1), v11 + 1, 1, v9);
  }

  v9[2] = v11 + 1;
  result = (*(v5 + 32))(v9 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v11, v8, v4);
  *a1 = v9;
  return result;
}

uint64_t sub_10046D32C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *sub_10000E3E8((a1 + 32), *(a1 + 56));
  if (a3)
  {
    sub_1001F1160(&unk_100AD67F0, &unk_100812EC0);
    v5 = swift_allocError();
    *v6 = a3;
    v7 = a3;

    return _swift_continuation_throwingResumeWithError(v4, v5);
  }

  else
  {
    sub_10000A7C4(0, &unk_100AE4DD0, off_1009F85B8);
    **(*(v4 + 64) + 40) = sub_1007A25E4();

    return swift_continuation_throwingResume();
  }
}

uint64_t sub_10046D41C(uint64_t a1)
{
  v4 = *(sub_10079ACE4() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v1 + 16);
  v8 = *(v1 + 24);
  v9 = *(v1 + v6);
  v10 = *(v1 + ((v6 + 15) & 0xFFFFFFFFFFFFFFF8));
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_100009A34;

  return sub_10046B03C(a1, v7, v8, v1 + v5, v9, v10);
}

uint64_t sub_10046D554(uint64_t a1)
{
  v4 = *(sub_10079ACE4() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100009A34;

  return sub_10046B39C(a1, v6, v7, v1 + v5, v8);
}

uint64_t sub_10046D674(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_10079ACE4() - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v1 + 16);
  v10 = *(v1 + 24);
  v11 = *(v1 + v7);
  v12 = *(v1 + v8);
  v13 = *(v1 + ((v8 + 15) & 0xFFFFFFFFFFFFFFF8));
  v14 = swift_task_alloc();
  *(v3 + 16) = v14;
  *v14 = v3;
  v14[1] = sub_100009A34;

  return sub_10046B6F0(a1, v9, v10, v1 + v6, v11, v12, v13);
}

uint64_t sub_10046D7C0(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_100796BB4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10046D804(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FetchResult(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_10046D874(uint64_t a1)
{
  v3 = *(sub_1001F1160(&unk_100AE4DA0, &qword_100827960) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v1 + v5);
  v7 = *(v1 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8));

  sub_10046C05C(a1, v1 + v4, v6, v7);
}

uint64_t sub_10046D928(uint64_t a1)
{
  v4 = *(sub_1001F1160(&unk_100AE4DA0, &qword_100827960) - 8);
  v5 = (*(v4 + 80) + 56) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v10 = v1[6];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_10002812C;

  return sub_10046C354(a1, v6, v7, v8, v9, v10, v1 + v5);
}

uint64_t sub_10046DA5C(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10002812C;

  return sub_10046CFF8(a1, v5, v4);
}

uint64_t sub_10046DB28()
{
  v1 = v0[19];
  v2 = [v1 isCloud];
  v3 = [objc_opt_self() sharedCache];
  v0[20] = v3;
  sub_1001F1160(&unk_100AE0B30, &qword_10081B480);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10080B690;
  v5 = [v1 permanentOrTemporaryAssetID];
  v6 = sub_1007A2254();
  v8 = v7;

  *(v4 + 32) = v6;
  *(v4 + 40) = v8;
  isa = sub_1007A25D4().super.isa;
  v0[21] = isa;

  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_10046DD20;
  v10 = swift_continuation_init();
  v0[17] = sub_1001F1160(&qword_100AE4DC8, &qword_1008279A0);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_10046D32C;
  v0[13] = &unk_100A1D308;
  v0[14] = v10;
  [v3 fetchAssetsWithIDs:isa type:v2 completion:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_10046DD20()
{
  v1 = *(*v0 + 48);
  *(*v0 + 176) = v1;
  if (v1)
  {
    v2 = sub_10046DF54;
  }

  else
  {
    v2 = sub_10046DE30;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10046DE30()
{
  v1 = *(v0 + 168);
  v2 = *(v0 + 144);

  if (!(v2 >> 62))
  {
    result = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_3;
    }

LABEL_9:

LABEL_10:
    v7.n128_u64[0] = 0;
    goto LABEL_11;
  }

  result = sub_1007A38D4();
  if (!result)
  {
    goto LABEL_9;
  }

LABEL_3:
  if ((v2 & 0xC000000000000001) != 0)
  {
    v4 = sub_1007A3784();
  }

  else
  {
    if (!*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v4 = *(v2 + 32);
  }

  v5 = v4;

  v6 = [v5 readPercent];

  if (!v6)
  {
    goto LABEL_10;
  }

  [v6 doubleValue];
  v9 = v8;

  v7.n128_u64[0] = v9;
LABEL_11:
  v10 = *(v0 + 8);

  return v10(v7);
}

uint64_t sub_10046DF54(uint64_t a1)
{
  v2 = v1[21];
  v3 = v1[20];
  swift_willThrow();

  v4 = v1[1];
  v5.n128_u64[0] = 0;

  return v4(v5);
}

uint64_t sub_10046DFF8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100009A34;

  return sub_1000085FC(a1, v4);
}

uint64_t sub_10046E0B0(uint64_t a1)
{
  result = sub_100798224();
  if (v2 <= 0x3F)
  {
    result = sub_100797DB4();
    if (v3 <= 0x3F)
    {
      result = sub_100798054();
      if (v4 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_10046E140@<X0>(uint64_t a1@<X8>, double a2@<D0>)
{
  *(a1 + 48) = *v2;
  *(a1 + 56) = &off_100A1D358;
  *(a1 + 24) = v2;
  KeyPath = swift_getKeyPath();
  v6 = type metadata accessor for SampleHeaderView(0);
  *(a1 + v6[7]) = KeyPath;
  sub_1001F1160(&unk_100ADB4C0, &qword_100813DC0);
  swift_storeEnumTagMultiPayload();
  *(a1 + v6[8]) = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  *(a1 + v6[9]) = swift_getKeyPath();
  sub_1001F1160(&unk_100ADB4E0, &qword_100815F30);
  swift_storeEnumTagMultiPayload();
  type metadata accessor for ChromeStyle(0);
  sub_10046EF24(&qword_100ADB6A0, type metadata accessor for ChromeStyle, &protocol conformance descriptor for ChromeStyle);

  v7 = sub_10079C484();
  v9 = v8;
  *(a1 + v6[11]) = swift_getKeyPath();
  sub_1001F1160(&unk_100ADB730, &qword_1008121A0);
  swift_storeEnumTagMultiPayload();
  type metadata accessor for SampleHeaderViewModel(0);
  sub_10046EF24(&qword_100ADC3A0, type metadata accessor for SampleHeaderViewModel, &unk_10083C878);
  *a1 = sub_10079C024();
  *(a1 + 8) = v10;
  *(a1 + 16) = a2;
  v11 = (a1 + v6[10]);
  *v11 = v7;
  v11[1] = v9;
  result = sub_10079CF54();
  *(a1 + v6[13]) = 0x4030000000000000;
  *(a1 + v6[14]) = 0x4000000000000000;
  *(a1 + v6[15]) = 0x4051800000000000;
  *(a1 + v6[16]) = 0x4046800000000000;
  *(a1 + v6[17]) = 0x4042000000000000;
  *(a1 + v6[18]) = 0x407CC00000000000;
  return result;
}

double sub_10046E3C4()
{
  v1 = sub_1001F1160(&qword_100AE1540, &qword_100822600);
  v2 = *(v1 - 8);
  v16 = v1;
  v17 = v2;
  __chkstk_darwin(v1);
  v15 = &v13 - v3;
  swift_unknownObjectRetain();
  sub_1002BAFB0();
  swift_unknownObjectRelease();
  v4 = *(*(v0 + 40) + 32);
  v5 = v4[9];
  ObjectType = swift_getObjectType();
  v6 = v4[2];
  v7 = v4[3];
  v8 = swift_allocObject();
  *(v8 + 16) = sub_10046F3A8;
  *(v8 + 24) = v0;
  v9 = *(v5 + 8);
  swift_unknownObjectRetain();
  swift_retain_n();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();

  v9(v6, v7, sub_10046F3B4, v8, ObjectType, v5, 204.0, 204.0);
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  swift_beginAccess();

  sub_1001F1160(&unk_100AE1570, &qword_10083A680);
  v10 = v15;
  sub_10079B974();
  swift_endAccess();

  swift_allocObject();
  swift_weakInit();
  sub_10046F3C8();
  v11 = v16;
  sub_10079BB04();

  (*(v17 + 8))(v10, v11);
  swift_beginAccess();
  sub_10079B854();
  swift_endAccess();

  return result;
}

uint64_t sub_10046E6BC(uint64_t a1)
{
  v2 = sub_10079CAE4();
  v3 = __chkstk_darwin(v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  return sub_10079C574();
}

double sub_10046E784(void *a1, char a2, uint64_t a3, __n128 a4)
{
  if (a2)
  {
    v5 = sub_1007A29B4();
    if (qword_100AD1370 != -1)
    {
      swift_once();
    }

    v6 = qword_100AD9008;
    if (os_log_type_enabled(qword_100AD9008, v5))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v15 = v9;
      *v8 = 136315138;
      swift_getErrorValue();
      v10 = sub_1007A3B84();
      v12 = sub_1000070F4(v10, v11, &v15);

      *(v8 + 4) = v12;
      _os_log_impl(&_mh_execute_header, v6, v5, "getCoverImage recieved an error: %s", v8, 0xCu);
      sub_1000074E0(v9);
    }
  }

  else
  {
    sub_100017E74();
    v13 = swift_allocObject();
    swift_weakInit();
    v14 = swift_allocObject();
    *(v14 + 16) = v13;
    *(v14 + 24) = a1;

    sub_10046F434(a1, 0);
    sub_1007A2CD4();
  }

  return result;
}

double sub_10046E97C(uint64_t a1, void *a2)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    swift_getKeyPath();
    swift_getKeyPath();

    v4 = a2;
    sub_10079B9B4();
  }

  return result;
}

void sub_10046EA30(uint64_t *a1, uint64_t a2)
{
  if (*a1 >= 2)
  {
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v3 = *(Strong + 40);
      swift_unknownObjectRetain();

      v4 = *(v3 + 32);
      v5 = objc_opt_self();
      sub_1001F1160(&unk_100AE0B30, &qword_10081B480);
      v6 = swift_allocObject();
      *(v6 + 16) = xmmword_10080B690;
      v7 = *(v4 + 24);
      *(v6 + 32) = *(v4 + 16);
      *(v6 + 40) = v7;
      swift_unknownObjectRetain();

      isa = sub_1007A25D4().super.isa;

      v9 = sub_1007A25D4().super.isa;
      [v5 openProductPagesWithIds:isa contentTypes:v9 focusedIndex:0 options:0];
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
    }
  }
}

uint64_t sub_10046EB78(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v4 = result;
    sub_100009864(a2, v6);
    swift_beginAccess();
    sub_10046EF6C(v6, v4 + 56);
    swift_endAccess();
    sub_100009864(a2, v6);
    swift_getKeyPath();
    swift_getKeyPath();
    sub_100206108(v6, v5);

    sub_10079B9B4();

    return sub_100206178(v6);
  }

  return result;
}

uint64_t sub_10046EC6C()
{
  sub_10002B130(v0 + 16);

  swift_unknownObjectRelease();
  sub_100206178(v0 + 56);

  return swift_deallocClassInstance();
}

double sub_10046ECE8(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    v7 = *(a2 + 16);
    swift_getKeyPath();
    swift_getKeyPath();
    v6 = v7;

    sub_1002BB1A4(&v7, &v5);
    sub_10079B9B4();
    v6 = *(a2 + 32);
    swift_getKeyPath();
    swift_getKeyPath();
    v5 = v6;

    sub_1002BB1A4(&v6, &v4);
    sub_10079B9B4();
  }

  return result;
}

void sub_10046EE0C()
{
  v1 = *(*(v0 + 40) + 32);
  v2 = objc_opt_self();
  sub_1001F1160(&unk_100AE0B30, &qword_10081B480);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_10080B690;
  v4 = *(v1 + 24);
  *(v3 + 32) = *(v1 + 16);
  *(v3 + 40) = v4;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();

  isa = sub_1007A25D4().super.isa;

  v6 = sub_1007A25D4().super.isa;
  [v2 openProductPagesWithIds:isa contentTypes:v6 focusedIndex:0 options:0];
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
}

uint64_t sub_10046EF24(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10046EF6C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001F1160(&qword_100AD4FA0, &qword_10081F020);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_10046EFDC(uint64_t a1)
{
  sub_100206108(a1, &v18);
  if (!v19)
  {
    return sub_100206178(&v18);
  }

  sub_1000077C0(&v18, v20);
  v1 = objc_opt_self();
  v2 = [v1 labelColor];
  v3 = sub_10079DEA4();
  v4 = _s5Books11ChromeStyleC20_pageBackgroundColor33_5E35E2CA450906E5027671B98D3F72C77Combine9PublishedVy7SwiftUI0F0VGvpfi_0();
  v5 = [v1 labelColor];
  v6 = sub_10079DEA4();
  v7 = [v1 bc_booksOrange];
  v8 = sub_10079DEA4();
  *(*(*sub_10000E3E8(v20, v21) + OBJC_IVAR____TtC5Books18BuyButtonPresenter_style) + 32) = v3;

  v9 = *(*sub_10000E3E8(v20, v21) + OBJC_IVAR____TtC5Books18BuyButtonPresenter_style);

  v10 = [v1 secondarySystemBackgroundColor];
  *(v9 + 40) = sub_10079DEA4();

  v11 = *(*sub_10000E3E8(v20, v21) + OBJC_IVAR____TtC5Books18BuyButtonPresenter_style);

  *(v11 + 48) = sub_10079DDC4();

  v12 = *(*sub_10000E3E8(v20, v21) + OBJC_IVAR____TtC5Books18BuyButtonPresenter_style);

  *(v12 + 16) = _s5Books11ChromeStyleC20_pageBackgroundColor33_5E35E2CA450906E5027671B98D3F72C77Combine9PublishedVy7SwiftUI0F0VGvpfi_0();

  v13 = *(*sub_10000E3E8(v20, v21) + OBJC_IVAR____TtC5Books18BuyButtonPresenter_style);

  v14 = [v1 tertiaryLabelColor];
  *(v13 + 24) = sub_10079DEA4();

  *(*(*sub_10000E3E8(v20, v21) + OBJC_IVAR____TtC5Books18BuyButtonPresenter_style) + 64) = v6;

  *(*(*sub_10000E3E8(v20, v21) + OBJC_IVAR____TtC5Books18BuyButtonPresenter_style) + 72) = v4;

  *(*(*sub_10000E3E8(v20, v21) + OBJC_IVAR____TtC5Books18BuyButtonPresenter_style) + 80) = v6;

  v15 = *(*sub_10000E3E8(v20, v21) + OBJC_IVAR____TtC5Books18BuyButtonPresenter_style);

  v16 = _s5Books11ChromeStyleC20_pageBackgroundColor33_5E35E2CA450906E5027671B98D3F72C77Combine9PublishedVy7SwiftUI0F0VGvpfi_0();

  *(v15 + 104) = v16;

  *(*(*sub_10000E3E8(v20, v21) + OBJC_IVAR____TtC5Books18BuyButtonPresenter_style) + 112) = v8;

  *(*(*sub_10000E3E8(v20, v21) + OBJC_IVAR____TtC5Books18BuyButtonPresenter_style) + 120) = v8;

  *(*(*sub_10000E3E8(v20, v21) + OBJC_IVAR____TtC5Books18BuyButtonPresenter_style) + 56) = 0;
  return sub_1000074E0(v20);
}

unint64_t sub_10046F3C8()
{
  result = qword_100AF2950;
  if (!qword_100AF2950)
  {
    sub_1001F1234(&qword_100AE1540, &qword_100822600);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF2950);
  }

  return result;
}

id sub_10046F434(void *a1, char a2)
{
  if (a2)
  {
    return swift_errorRetain();
  }

  else
  {
    return a1;
  }
}

uint64_t InfoBar.TimedMessage.__allocating_init(content:duration:)(uint64_t a1, double a2)
{
  v4 = swift_allocObject();
  *(v4 + OBJC_IVAR____TtCO5Books7InfoBar12TimedMessage_duration) = a2;
  _s5Books7InfoBarO7MessageC2id10Foundation4UUIDVvpfi_0();
  v5 = OBJC_IVAR____TtCO5Books7InfoBar7Message_currentVisibleStartTime;
  v6 = sub_100796BB4();
  v7 = *(*(v6 - 8) + 56);
  v7(v4 + v5, 1, 1, v6);
  v7(v4 + OBJC_IVAR____TtCO5Books7InfoBar7Message_lastVisibleEndTime, 1, 1, v6);
  v8 = *(a1 + 16);
  *(v4 + 16) = *a1;
  *(v4 + 32) = v8;
  *(v4 + 48) = *(a1 + 32);
  *(v4 + 64) = *(a1 + 48);
  return v4;
}

uint64_t InfoBar.Message.__allocating_init(content:)(uint64_t a1)
{
  v2 = swift_allocObject();
  _s5Books7InfoBarO7MessageC2id10Foundation4UUIDVvpfi_0();
  v3 = OBJC_IVAR____TtCO5Books7InfoBar7Message_currentVisibleStartTime;
  v4 = sub_100796BB4();
  v5 = *(*(v4 - 8) + 56);
  v5(v2 + v3, 1, 1, v4);
  v5(v2 + OBJC_IVAR____TtCO5Books7InfoBar7Message_lastVisibleEndTime, 1, 1, v4);
  v6 = *(a1 + 16);
  *(v2 + 16) = *a1;
  *(v2 + 32) = v6;
  *(v2 + 48) = *(a1 + 32);
  *(v2 + 64) = *(a1 + 48);
  return v2;
}

uint64_t sub_10046F628()
{
  v0 = sub_10079ACE4();
  sub_100009A38(v0, qword_100B233B0);
  sub_100008B98(v0, qword_100B233B0);
  return sub_10079ACD4();
}

uint64_t InfoBar.Content.ContentType.description.getter()
{
  v2 = *v0;
  v1 = *(v0 + 8);
  v3 = *(v0 + 16);
  if (*(v0 + 32) > 1u)
  {
    v5 = *(v0 + 24);
    if (*(v0 + 32) == 2)
    {
      sub_1007A3744(34);

      v6[0] = 0xD000000000000010;
      v6[1] = 0x80000001008D5C70;
      v7._countAndFlagsBits = v2;
      v7._object = v1;
      sub_1007A23D4(v7);
      v8._countAndFlagsBits = 0x6E6F636573202C29;
      v8._object = 0xED00002879726164;
      sub_1007A23D4(v8);
      v9._countAndFlagsBits = v3;
      v9._object = v5;
      sub_1007A23D4(v9);
    }

    else
    {

      sub_1007A3744(32);

      strcpy(v6, "info: primary(");
      HIBYTE(v6[1]) = -18;
      v13._countAndFlagsBits = v2;
      v13._object = v1;
      sub_1007A23D4(v13);
      v14._countAndFlagsBits = 0x6E6F636573202C29;
      v14._object = 0xED00002879726164;
      sub_1007A23D4(v14);
      sub_1001F1160(&qword_100AD4F30, &unk_100816940);
      v15._countAndFlagsBits = sub_1007A22E4();
      sub_1007A23D4(v15);
    }

    v16._countAndFlagsBits = 41;
    v16._object = 0xE100000000000000;
    sub_1007A23D4(v16);
  }

  else
  {
    if (!*(v0 + 32))
    {
      return 0x656C746974;
    }

    sub_1007A3744(23);

    strcpy(v6, "plainText: ");
    HIDWORD(v6[1]) = -352321536;
    v10._countAndFlagsBits = v2;
    v10._object = v1;
    sub_1007A23D4(v10);
    v11._countAndFlagsBits = 0x203A6E6F6369202CLL;
    v11._object = 0xE800000000000000;
    sub_1007A23D4(v11);
    sub_1001F1160(&qword_100AE4F60, &qword_100827CA0);
    v12._countAndFlagsBits = sub_1007A22E4();
    sub_1007A23D4(v12);
  }

  return v6[0];
}

uint64_t static InfoBar.Content.ContentType.== infix(_:_:)()
{
  v0 = InfoBar.Content.ContentType.description.getter();
  v2 = v1;
  if (v0 == InfoBar.Content.ContentType.description.getter() && v2 == v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = sub_1007A3AB4();
  }

  return v4 & 1;
}

Books::InfoBar::Content::ContentType::Icon_optional __swiftcall InfoBar.Content.ContentType.Icon.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v6._countAndFlagsBits = rawValue._countAndFlagsBits;
  v2._rawValue = &off_100A0D178;
  v6._object = object;
  v3 = sub_1007A3964(v2, v6);

  if (v3 == 1)
  {
    v4.value = Books_InfoBar_Content_ContentType_Icon_disclosure;
  }

  else
  {
    v4.value = Books_InfoBar_Content_ContentType_Icon_unknownDefault;
  }

  if (v3)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

uint64_t InfoBar.Content.ContentType.Icon.rawValue.getter(char a1)
{
  if (a1)
  {
    return 0x75736F6C63736964;
  }

  else
  {
    return 0x72616D6B63656863;
  }
}

uint64_t sub_10046FA2C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x75736F6C63736964;
  }

  else
  {
    v3 = 0x72616D6B63656863;
  }

  if (v2)
  {
    v4 = 0xE90000000000006BLL;
  }

  else
  {
    v4 = 0xEA00000000006572;
  }

  if (*a2)
  {
    v5 = 0x75736F6C63736964;
  }

  else
  {
    v5 = 0x72616D6B63656863;
  }

  if (*a2)
  {
    v6 = 0xEA00000000006572;
  }

  else
  {
    v6 = 0xE90000000000006BLL;
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

Swift::Int sub_10046FADC()
{
  sub_1007A3C04();
  _s5Books22ReportIssueTypingEventV4hash4intoys6HasherVz_tF_0();

  return sub_1007A3C44();
}

double sub_10046FB68(uint64_t a1)
{
  _s5Books22ReportIssueTypingEventV4hash4intoys6HasherVz_tF_0();

  return result;
}

Swift::Int sub_10046FBE0(uint64_t a1)
{
  sub_1007A3C04();
  _s5Books22ReportIssueTypingEventV4hash4intoys6HasherVz_tF_0();

  return sub_1007A3C44();
}

void sub_10046FC68(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v7._countAndFlagsBits = *a1;
  v3 = a1[1];
  v4._rawValue = &off_100A0D178;
  v7._object = v3;
  v5 = sub_1007A3964(v4, v7);

  if (v5 == 1)
  {
    v6 = 1;
  }

  else
  {
    v6 = 2;
  }

  if (!v5)
  {
    v6 = 0;
  }

  *a2 = v6;
}

void sub_10046FCC8(uint64_t *a1@<X8>)
{
  v2 = 0x72616D6B63656863;
  if (*v1)
  {
    v2 = 0x75736F6C63736964;
  }

  v3 = 0xE90000000000006BLL;
  if (*v1)
  {
    v3 = 0xEA00000000006572;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t InfoBar.Content.description.getter()
{
  v1 = *(v0 + 16);
  v3[0] = *v0;
  v3[1] = v1;
  v4 = *(v0 + 32);
  return sub_100470FE8(v3, *(v0 + 33) & 1);
}

uint64_t static InfoBar.Content.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 16);
  v14[0] = *a1;
  v14[1] = v3;
  v15 = *(a1 + 32);
  v4 = sub_100470FE8(v14, *(a1 + 33) & 1);
  v6 = v5;
  v7 = *(a2 + 16);
  v12[0] = *a2;
  v12[1] = v7;
  v13 = *(a2 + 32);
  if (v4 == sub_100470FE8(v12, *(a2 + 33) & 1) && v6 == v8)
  {
    v10 = 1;
  }

  else
  {
    v10 = sub_1007A3AB4();
  }

  return v10 & 1;
}

uint64_t sub_10046FE10()
{
  v1 = *(v0 + 16);
  v3[0] = *v0;
  v3[1] = v1;
  v4 = *(v0 + 32);
  return sub_100470FE8(v3, *(v0 + 33));
}

uint64_t sub_10046FE48(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v14[0] = *a1;
  v14[1] = v2;
  v15 = *(a1 + 32);
  v3 = *(a1 + 33);
  v4 = *(a2 + 16);
  v12[0] = *a2;
  v12[1] = v4;
  v13 = *(a2 + 32);
  v5 = *(a2 + 33);
  v6 = sub_100470FE8(v14, v3);
  v8 = v7;
  if (v6 == sub_100470FE8(v12, v5) && v8 == v9)
  {
    v10 = 1;
  }

  else
  {
    v10 = sub_1007A3AB4();
  }

  return v10 & 1;
}

uint64_t InfoBar.Message.content.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(v1 + 32);
  v6 = *(v1 + 40);
  LODWORD(v11) = *(v1 + 49);
  *(&v11 + 3) = *(v1 + 52);
  v7 = *(v1 + 56);
  v8 = *(v1 + 64);
  v9 = *(v1 + 48);
  sub_1002AEF10(v3, v4, v5, v6, v9);
  result = sub_1000260E8(v7, v8);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  *(a1 + 32) = v9;
  *(a1 + 33) = v11;
  *(a1 + 36) = *(&v11 + 3);
  *(a1 + 40) = v7;
  *(a1 + 48) = v8;
  return result;
}

uint64_t InfoBar.Message.totalDisplayedTime.getter()
{
  v1 = sub_1001F1160(&unk_100ADB5C0, &unk_100816880);
  __chkstk_darwin(v1 - 8);
  v3 = &v19 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v19 - v5;
  v7 = sub_100796BB4();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v19 - v12;
  v14 = OBJC_IVAR____TtCO5Books7InfoBar7Message_currentVisibleStartTime;
  swift_beginAccess();
  sub_100217B24(v0 + v14, v6);
  v15 = v8[6];
  if (v15(v6, 1, v7) == 1)
  {
    return sub_10038F7FC(v6);
  }

  v20 = v8[4];
  v20(v13, v6, v7);
  v17 = OBJC_IVAR____TtCO5Books7InfoBar7Message_lastVisibleEndTime;
  swift_beginAccess();
  sub_100217B24(v0 + v17, v3);
  if (v15(v3, 1, v7) == 1)
  {
    sub_100796BA4();
    if (v15(v3, 1, v7) != 1)
    {
      sub_10038F7FC(v3);
    }
  }

  else
  {
    v20(v10, v3, v7);
  }

  sub_100796AA4();
  v18 = v8[1];
  v18(v10, v7);
  return (v18)(v13, v7);
}

uint64_t InfoBar.Message.init(content:)(uint64_t a1)
{
  _s5Books7InfoBarO7MessageC2id10Foundation4UUIDVvpfi_0();
  v3 = OBJC_IVAR____TtCO5Books7InfoBar7Message_currentVisibleStartTime;
  v4 = sub_100796BB4();
  v5 = *(*(v4 - 8) + 56);
  v5(v1 + v3, 1, 1, v4);
  v5(v1 + OBJC_IVAR____TtCO5Books7InfoBar7Message_lastVisibleEndTime, 1, 1, v4);
  v6 = *(a1 + 16);
  *(v1 + 16) = *a1;
  *(v1 + 32) = v6;
  *(v1 + 48) = *(a1 + 32);
  *(v1 + 64) = *(a1 + 48);
  return v1;
}

uint64_t InfoBar.Message.willShow(at:)(uint64_t a1)
{
  v3 = sub_1001F1160(&unk_100ADB5C0, &unk_100816880);
  __chkstk_darwin(v3 - 8);
  v5 = &v10 - v4;
  v6 = sub_100796BB4();
  v7 = *(v6 - 8);
  (*(v7 + 16))(v5, a1, v6);
  (*(v7 + 56))(v5, 0, 1, v6);
  v8 = OBJC_IVAR____TtCO5Books7InfoBar7Message_currentVisibleStartTime;
  swift_beginAccess();
  sub_100217AB4(v5, v1 + v8);
  return swift_endAccess();
}

uint64_t InfoBar.Message.didHide(at:)(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1001F1160(&unk_100ADB5C0, &unk_100816880);
  __chkstk_darwin(v4 - 8);
  v6 = &v24[-1] - v5;
  if (qword_100AD1690 != -1)
  {
    swift_once();
  }

  v7 = sub_10079ACE4();
  sub_100008B98(v7, qword_100B233B0);

  v8 = sub_10079ACC4();
  v9 = sub_1007A29A4();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v24[0] = v11;
    *v10 = 136315394;
    v12 = *(v1 + 32);
    v25[0] = *(v1 + 16);
    v25[1] = v12;
    v26 = *(v1 + 48);
    v13 = sub_100470FE8(v25, *(v1 + 49));
    v15 = sub_1000070F4(v13, v14, v24);

    *(v10 + 4) = v15;
    *(v10 + 12) = 2048;
    InfoBar.Message.totalDisplayedTime.getter();
    *(v10 + 14) = v16;
    _os_log_impl(&_mh_execute_header, v8, v9, "Hid message (%s), displayed for %f seconds", v10, 0x16u);
    sub_1000074E0(v11);
  }

  v17 = sub_100796BB4();
  v18 = *(v17 - 8);
  v19 = *(v18 + 56);
  v19(v6, 1, 1, v17);
  v20 = OBJC_IVAR____TtCO5Books7InfoBar7Message_currentVisibleStartTime;
  swift_beginAccess();
  sub_100217AB4(v6, v2 + v20);
  swift_endAccess();
  (*(v18 + 16))(v6, a1, v17);
  v19(v6, 0, 1, v17);
  v21 = OBJC_IVAR____TtCO5Books7InfoBar7Message_lastVisibleEndTime;
  swift_beginAccess();
  sub_100217AB4(v6, v2 + v21);
  return swift_endAccess();
}

uint64_t InfoBar.TimedMessage.timeRemaining.getter()
{
  v1 = sub_1001F1160(&unk_100ADB5C0, &unk_100816880);
  __chkstk_darwin(v1 - 8);
  v3 = &v19 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v19 - v5;
  v7 = sub_100796BB4();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v19 - v12;
  v14 = OBJC_IVAR____TtCO5Books7InfoBar7Message_currentVisibleStartTime;
  swift_beginAccess();
  sub_100217B24(v0 + v14, v6);
  v15 = v8[6];
  if (v15(v6, 1, v7) == 1)
  {
    return sub_10038F7FC(v6);
  }

  v20 = v8[4];
  v20(v13, v6, v7);
  v17 = OBJC_IVAR____TtCO5Books7InfoBar7Message_lastVisibleEndTime;
  swift_beginAccess();
  sub_100217B24(v0 + v17, v3);
  if (v15(v3, 1, v7) == 1)
  {
    sub_100796BA4();
    if (v15(v3, 1, v7) != 1)
    {
      sub_10038F7FC(v3);
    }
  }

  else
  {
    v20(v10, v3, v7);
  }

  sub_100796AA4();
  v18 = v8[1];
  v18(v10, v7);
  return (v18)(v13, v7);
}

uint64_t InfoBar.TimedMessage.init(content:duration:)(uint64_t a1, double a2)
{
  *(v2 + OBJC_IVAR____TtCO5Books7InfoBar12TimedMessage_duration) = a2;
  _s5Books7InfoBarO7MessageC2id10Foundation4UUIDVvpfi_0();
  v4 = OBJC_IVAR____TtCO5Books7InfoBar7Message_currentVisibleStartTime;
  v5 = sub_100796BB4();
  v6 = *(*(v5 - 8) + 56);
  v6(v2 + v4, 1, 1, v5);
  v6(v2 + OBJC_IVAR____TtCO5Books7InfoBar7Message_lastVisibleEndTime, 1, 1, v5);
  v7 = *(a1 + 16);
  *(v2 + 16) = *a1;
  *(v2 + 32) = v7;
  *(v2 + 48) = *(a1 + 32);
  *(v2 + 64) = *(a1 + 48);
  return v2;
}

uint64_t sub_100470B44()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);
  sub_100471118(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48));
  sub_100007020(v1, v2);
  v3 = OBJC_IVAR____TtCO5Books7InfoBar7Message_id;
  v4 = sub_100796C04();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  sub_10038F7FC(v0 + OBJC_IVAR____TtCO5Books7InfoBar7Message_currentVisibleStartTime);
  sub_10038F7FC(v0 + OBJC_IVAR____TtCO5Books7InfoBar7Message_lastVisibleEndTime);
  return v0;
}

uint64_t sub_100470BF0()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);
  sub_100471118(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48));
  sub_100007020(v1, v2);
  v3 = OBJC_IVAR____TtCO5Books7InfoBar7Message_id;
  v4 = sub_100796C04();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  sub_10038F7FC(v0 + OBJC_IVAR____TtCO5Books7InfoBar7Message_currentVisibleStartTime);
  sub_10038F7FC(v0 + OBJC_IVAR____TtCO5Books7InfoBar7Message_lastVisibleEndTime);

  return swift_deallocClassInstance();
}

uint64_t InfoBar.Message.hash(into:)(uint64_t a1)
{
  sub_100796C04();
  sub_10047121C(&qword_100ADAD88, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  return sub_1007A2084();
}

Swift::Int InfoBar.Message.hashValue.getter()
{
  sub_1007A3C04();
  sub_100796C04();
  sub_10047121C(&qword_100ADAD88, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  sub_1007A2084();
  return sub_1007A3C44();
}

Swift::Int sub_100470DF4()
{
  sub_1007A3C04();
  sub_100796C04();
  sub_10047121C(&qword_100ADAD88, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  sub_1007A2084();
  return sub_1007A3C44();
}

uint64_t sub_100470E94(uint64_t a1)
{
  sub_100796C04();
  sub_10047121C(&qword_100ADAD88, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  return sub_1007A2084();
}

Swift::Int sub_100470F1C(uint64_t a1)
{
  sub_1007A3C04();
  sub_100796C04();
  sub_10047121C(&qword_100ADAD88, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  sub_1007A2084();
  return sub_1007A3C44();
}

uint64_t sub_100470FE8(uint64_t a1, char a2)
{
  sub_1001F1160(&unk_100AE0B30, &qword_10081B480);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_10080EFF0;
  *(v3 + 32) = InfoBar.Content.ContentType.description.getter();
  *(v3 + 40) = v4;
  sub_1007A3744(40);

  if (a2)
  {
    v5._countAndFlagsBits = 7562617;
  }

  else
  {
    v5._countAndFlagsBits = 28526;
  }

  if (a2)
  {
    v6 = 0xE300000000000000;
  }

  else
  {
    v6 = 0xE200000000000000;
  }

  v5._object = v6;
  sub_1007A23D4(v5);

  *(v3 + 48) = 0xD000000000000026;
  *(v3 + 56) = 0x80000001008D5D70;
  sub_1001F1160(&unk_100AD61F0, &qword_10080FEF0);
  sub_10000B4E4();
  v7 = sub_1007A20B4();

  return v7;
}

double sub_100471118(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 a5)
{
  if (a5 >= 2u)
  {
    if (a5 - 2 > 1)
    {
      return result;
    }
  }

  return result;
}

unint64_t sub_100471180()
{
  result = qword_100AE4F68;
  if (!qword_100AE4F68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE4F68);
  }

  return result;
}

uint64_t sub_10047121C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1004712A0(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 sub_1004712B8(uint64_t a1, uint64_t a2)
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

uint64_t sub_1004712D4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 56))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 40);
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

uint64_t sub_100471330(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 56) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 56) = 0;
    }

    if (a2)
    {
      *(result + 40) = a2;
    }
  }

  return result;
}

__n128 sub_1004713A0(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1004713B4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 33))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 32);
  if (v3 <= 3)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1004713FC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 253;
    *(result + 8) = 0;
    if (a3 >= 0xFD)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 32) = -a2;
    }
  }

  return result;
}

void sub_100471474(uint64_t a1)
{
  sub_100796C04();
  if (v1 <= 0x3F)
  {
    sub_1002CDD3C(319);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

__n128 sub_1004715C4(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v7;
  *(a1 + 64) = result;
  *(a1 + 80) = v6;
  return result;
}

uint64_t sub_1004715E8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 128))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100471630(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 120) = 0;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 128) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 128) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1004716A0()
{
  v1 = sub_1007971A4();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v11 - v6;
  sub_10000E3E8((v0 + 40), *(v0 + 64));
  sub_1007977A4();
  if (v13)
  {
    sub_1001FF70C(v12);
    v8 = 0;
  }

  else
  {
    sub_1000077C0(v12, v14);
    sub_10000E3E8(v14, v14[3]);
    sub_1007976B4();
    if (sub_1007972D4())
    {
      sub_10000E3E8((v0 + 40), *(v0 + 64));
      sub_100797784();
      (*(v2 + 104))(v4, enum case for ContextActionSource.miniPlayer(_:), v1);
      v8 = sub_100797184();
      v9 = *(v2 + 8);
      v9(v4, v1);
      v9(v7, v1);
    }

    else
    {
      v8 = 0;
    }

    sub_1000074E0(v14);
  }

  return v8 & 1;
}

uint64_t sub_100471890()
{
  sub_1007A26F4();
  *(v0 + 16) = sub_1007A26E4();
  v2 = sub_1007A2694();

  return _swift_task_switch(sub_100471924, v2, v1);
}

uint64_t sub_100471924()
{

  v1 = objc_opt_self();
  v2 = [v1 sceneManager];
  v3 = [v2 primarySceneController];

  v4 = [v3 rootBarCoordinator];
  if (v4)
  {
    [v4 undockMiniPlayer];
    swift_unknownObjectRelease();
  }

  v5 = [v1 sceneManager];
  [v5 attemptToPresentStoreReview];

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_100471A34@<X0>(uint64_t a1@<X8>)
{
  v2 = enum case for ContextActionType.closeAudiobookMiniPlayer(_:);
  v3 = sub_100797144();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t sub_100471AAC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10002812C;

  return sub_100471890();
}

uint64_t sub_100471B38@<X0>(__int128 *a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, __int128 *a4@<X3>, uint64_t a5@<X8>)
{
  sub_1000077C0(a1, a5 + 40);
  sub_1000077C0(a2, a5);
  *(a5 + 80) = a3;

  return sub_1000077C0(a4, a5 + 88);
}

uint64_t sub_100471B9C()
{

  return swift_deallocClassInstance();
}

void sub_100471C20(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v10 = [a1 machineAuthorizationService];
  v11 = objc_opt_self();
  v12 = [a1 bk_window];
  v13 = [v11 jsa_topMostViewControllerForWindow:v12];

  sub_1004720F4(0, v13, a2, a3, a4, a5);
}

void sub_100471E68(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v3 = sub_1007967C4();
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  (*(a2 + 16))(a2);
}

void sub_100471ECC(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = [a1 machineAuthorizationService];
  v9 = objc_opt_self();
  v10 = [a1 bk_window];
  v11 = [v9 jsa_topMostViewControllerForWindow:v10];

  sub_100472D44(0, v11, a2, a3, a4);
}

double sub_1004720F4(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v7 = v6;
  v56 = a1;
  v13 = sub_1007A1D04();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = (v54 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_100017E74();
  *v16 = sub_1007A2D74();
  (*(v14 + 104))(v16, enum case for DispatchPredicate.onQueue(_:), v13);
  v17 = sub_1007A1D34();
  (*(v14 + 8))(v16, v13);
  if ((v17 & 1) == 0)
  {
    __break(1u);
LABEL_33:
    a6 = sub_10066BB40(0, a6[2] + 1, 1, a6);
LABEL_20:
    v32 = a6[2];
    v31 = a6[3];
    if (v32 >= v31 >> 1)
    {
      a6 = sub_10066BB40((v31 > 1), v32 + 1, 1, a6);
    }

    a6[2] = v32 + 1;
    v33 = &a6[2 * v32];
    v33[4] = sub_100474A34;
    v33[5] = v17;
    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v57 = *(v16 + v7);
    *(v16 + v7) = 0x8000000000000000;
    sub_1002F5E38(a6, v13, a3, isUniquelyReferenced_nonNull_native);

    *(v16 + v7) = v57;
    swift_endAccess();
    return result;
  }

  v54[1] = a2;
  v55 = a5;
  v18 = a6;
  v19 = sub_10079ACC4();
  v20 = sub_1007A2994();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    aBlock[0] = swift_slowAlloc();
    *v21 = 136315394;
    *(v21 + 4) = sub_1000070F4(0xD00000000000001BLL, 0x8000000100828220, aBlock);
    *(v21 + 12) = 2080;
    if (v56)
    {
      v22 = 0x726F687475616564;
    }

    else
    {
      v22 = 0x7A69726F68747561;
    }

    if (v56)
    {
      v23 = 0xEB00000000657A69;
    }

    else
    {
      v23 = 0xE900000000000065;
    }

    v24 = sub_1000070F4(v22, v23, aBlock);

    *(v21 + 14) = v24;
    _os_log_impl(&_mh_execute_header, v19, v20, "%s Beginning %s", v21, 0x16u);
    swift_arrayDestroy();
  }

  if (a4)
  {
    v13 = a3;
  }

  else
  {
    v13 = 0;
  }

  if (a4)
  {
    a3 = a4;
  }

  else
  {
    a3 = 0xE000000000000000;
  }

  v16 = OBJC_IVAR___BKMachineAuthorizationService_completionsByAccountName;
  swift_beginAccess();
  v25 = *(v16 + v7);
  v26 = *(v25 + 16);

  v27 = v18;
  v28 = v55;
  if (v26)
  {

    v29 = sub_10000E53C(v13, a3);
    if (v30)
    {
      a6 = *(*(v25 + 56) + 8 * v29);

      if (!v28)
      {

        return result;
      }

      v17 = swift_allocObject();
      *(v17 + 16) = v28;
      *(v17 + 24) = v27;

      if (swift_isUniquelyReferenced_nonNull_native())
      {
        goto LABEL_20;
      }

      goto LABEL_33;
    }
  }

  if (v28)
  {
    sub_1001F1160(&qword_100AE53A8, qword_100828290);
    v36 = swift_allocObject();
    *(v36 + 16) = xmmword_10080B690;
    v37 = swift_allocObject();
    *(v37 + 16) = v28;
    *(v37 + 24) = v27;
    *(v36 + 32) = sub_100474A34;
    *(v36 + 40) = v37;
    swift_beginAccess();
    sub_100308A48(v28, v27);

    v38 = swift_isUniquelyReferenced_nonNull_native();
    v57 = *(v16 + v7);
    *(v16 + v7) = 0x8000000000000000;
    sub_1002F5E38(v36, v13, a3, v38);

    *(v16 + v7) = v57;
    swift_endAccess();
  }

  v39 = objc_opt_self();

  v40 = [v39 defaultBag];
  v41 = objc_allocWithZone(AMSAuthorizeMachineTask);
  v42 = v7;
  v43 = sub_1007A2214();

  v44 = [v41 initWithUsername:v43 authorizeReason:2 bag:v40 presentationDelegate:v42];

  swift_unknownObjectWeakAssign();
  v45 = *&v42[OBJC_IVAR___BKMachineAuthorizationService_currentTask];
  *&v42[OBJC_IVAR___BKMachineAuthorizationService_currentTask] = v44;
  v46 = v44;

  v47 = v56;
  if (v56)
  {

    v48 = &selRef_performDeauthorization;
  }

  else
  {
    v49 = sub_1007A3AB4();

    v48 = &selRef_performAuthorization;
    if (v49)
    {
      v48 = &selRef_performDeauthorization;
    }
  }

  v50 = [v46 *v48];
  v51 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v52 = swift_allocObject();
  *(v52 + 16) = v51;
  *(v52 + 24) = v28;
  *(v52 + 32) = v27;
  *(v52 + 40) = v47 & 1;
  *(v52 + 48) = v13;
  *(v52 + 56) = a3;
  aBlock[4] = sub_100474980;
  aBlock[5] = v52;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1002D63C0;
  aBlock[3] = &unk_100A1D8D0;
  v53 = _Block_copy(aBlock);
  sub_100308A48(v28, v27);

  [v50 addFinishBlock:v53];
  _Block_release(v53);

  return result;
}

void sub_100472838(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(char *), uint64_t a5, char a6, uint64_t a7, uint64_t a8)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v14 = Strong;
    if (a2)
    {
      swift_errorRetain();
      v15 = sub_10079ACC4();
      v16 = sub_1007A29B4();
      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        v18 = swift_slowAlloc();
        v38 = swift_slowAlloc();
        *v17 = 136315906;
        *(v17 + 4) = sub_1000070F4(0xD000000000000024, 0x80000001008D5FF0, &v38);
        *(v17 + 12) = 2080;
        *(v17 + 14) = sub_1000070F4(0xD00000000000001BLL, 0x8000000100828220, &v38);
        *(v17 + 22) = 2080;
        if (a6)
        {
          v19 = 0x726F687475616564;
        }

        else
        {
          v19 = 0x7A69726F68747561;
        }

        if (a6)
        {
          v20 = 0xEB00000000657A69;
        }

        else
        {
          v20 = 0xE900000000000065;
        }

        v21 = sub_1000070F4(v19, v20, &v38);

        *(v17 + 24) = v21;
        *(v17 + 32) = 2112;
        v22 = sub_1007967C4();
        *(v17 + 34) = v22;
        *v18 = v22;
        _os_log_impl(&_mh_execute_header, v15, v16, "%s %s request failed to %s computer (by account name). %@", v17, 0x2Au);
        sub_100007840(v18, &unk_100AD9480, &qword_1008113B0);

        swift_arrayDestroy();
      }

      v23 = sub_1007967C4();
      sub_100017E74();
      v24 = swift_allocObject();
      v24[2] = v14;
      v24[3] = a7;
      v24[4] = a8;
      v24[5] = v23;
      v25 = v14;

      v26 = v23;
      sub_1007A2CD4();
    }

    else
    {
      v29 = sub_10079ACC4();
      v30 = sub_1007A2994();
      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        v38 = swift_slowAlloc();
        *v31 = 136315394;
        *(v31 + 4) = sub_1000070F4(0xD00000000000001BLL, 0x8000000100828220, &v38);
        *(v31 + 12) = 2080;
        if (a6)
        {
          v32 = 0x726F687475616564;
        }

        else
        {
          v32 = 0x7A69726F68747561;
        }

        if (a6)
        {
          v33 = 0xEB00000000657A69;
        }

        else
        {
          v33 = 0xE900000000000065;
        }

        v34 = sub_1000070F4(v32, v33, &v38);

        *(v31 + 14) = v34;
        _os_log_impl(&_mh_execute_header, v29, v30, "%s Successfully performed %s by account name", v31, 0x16u);
        swift_arrayDestroy();
      }

      sub_100017E74();
      v35 = swift_allocObject();
      v35[2] = v14;
      v35[3] = a7;
      v35[4] = a8;
      v35[5] = 0;
      v36 = v14;

      sub_1007A2CD4();
    }

    v37 = *&v14[OBJC_IVAR___BKMachineAuthorizationService_currentTask];
    *&v14[OBJC_IVAR___BKMachineAuthorizationService_currentTask] = 0;

    swift_unknownObjectWeakAssign();
  }

  else
  {
    if (!a4)
    {
      return;
    }

    v27 = objc_allocWithZone(NSError);
    v28 = sub_1007A2214();
    v14 = [v27 initWithDomain:v28 code:0 userInfo:0];

    a4(v14);
  }
}

void sub_100472D44(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v66 = a4;
  v11 = sub_1007A1D04();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = (v64 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = sub_100017E74();
  *v14 = sub_1007A2D74();
  (*(v12 + 104))(v14, enum case for DispatchPredicate.onQueue(_:), v11);
  v16 = sub_1007A1D34();
  (*(v12 + 8))(v14, v11);
  if ((v16 & 1) == 0)
  {
    __break(1u);
LABEL_33:
    a3 = sub_10066BB40(0, a3[2] + 1, 1, a3);
LABEL_14:
    v31 = a3[2];
    v30 = a3[3];
    if (v31 >= v30 >> 1)
    {
      a3 = sub_10066BB40((v30 > 1), v31 + 1, 1, a3);
    }

    a3[2] = v31 + 1;
    v32 = &a3[2 * v31];
    v32[4] = sub_100474A34;
    v32[5] = v16;
    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v67 = *&v6[a1];
    *&v6[a1] = 0x8000000000000000;
    sub_1002F5FF8(a3, a2, isUniquelyReferenced_nonNull_native);
    *&v6[a1] = v67;
    swift_endAccess();
    return;
  }

  v64[0] = v15;
  v64[1] = a2;
  v17 = a5;
  v18 = a3;
  v19 = sub_10079ACC4();
  v20 = sub_1007A2994();
  v21 = os_log_type_enabled(v19, v20);
  v65 = a1;
  if (v21)
  {
    v22 = swift_slowAlloc();
    aBlock[0] = swift_slowAlloc();
    *v22 = 136315394;
    *(v22 + 4) = sub_1000070F4(0xD00000000000001BLL, 0x8000000100828220, aBlock);
    *(v22 + 12) = 2080;
    if (a1)
    {
      v23 = 0x726F687475616564;
    }

    else
    {
      v23 = 0x7A69726F68747561;
    }

    if (a1)
    {
      v24 = 0xEB00000000657A69;
    }

    else
    {
      v24 = 0xE900000000000065;
    }

    v25 = sub_1000070F4(v23, v24, aBlock);

    *(v22 + 14) = v25;
    _os_log_impl(&_mh_execute_header, v19, v20, "%s Beginning %s", v22, 0x16u);
    swift_arrayDestroy();
  }

  v26 = v66;
  a1 = OBJC_IVAR___BKMachineAuthorizationService_completionsByDSID;
  swift_beginAccess();
  v27 = *&v6[a1];
  a2 = v18;
  if (*(v27 + 16))
  {
    v28 = sub_1002F9CDC(v18);
    if (v29)
    {
      if (!v26)
      {
        return;
      }

      a3 = *(*(v27 + 56) + 8 * v28);
      v16 = swift_allocObject();
      *(v16 + 16) = v26;
      *(v16 + 24) = v17;

      sub_100308A48(v26, v17);
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        goto LABEL_14;
      }

      goto LABEL_33;
    }
  }

  v34 = v17;
  if (v26)
  {
    sub_1001F1160(&qword_100AE53A8, qword_100828290);
    v35 = swift_allocObject();
    *(v35 + 16) = xmmword_10080B690;
    v36 = swift_allocObject();
    *(v36 + 16) = v26;
    *(v36 + 24) = v17;
    *(v35 + 32) = sub_100474914;
    *(v35 + 40) = v36;
    swift_beginAccess();

    v37 = swift_isUniquelyReferenced_nonNull_native();
    v67 = *&v6[a1];
    *&v6[a1] = 0x8000000000000000;
    sub_1002F5FF8(v35, a2, v37);
    *&v6[a1] = v67;
    swift_endAccess();
  }

  if (a2)
  {
    v38 = objc_opt_self();
    v39 = [objc_allocWithZone(NSNumber) initWithUnsignedLongLong:a2];
    v40 = [v38 bu_storeAccountWithDSID:v39];
  }

  else
  {
    v39 = [objc_opt_self() sharedProvider];
    v40 = [v39 activeStoreAccount];
  }

  v41 = v40;

  if (v41)
  {
    v42 = objc_opt_self();
    v43 = v41;
    v44 = [v42 defaultBag];
    v45 = [objc_allocWithZone(AMSAuthorizeMachineTask) initWithAccount:v43 authorizeReason:2 bag:v44];

    swift_unknownObjectWeakAssign();
    [v45 setPresentationDelegate:v6];
    v46 = *&v6[OBJC_IVAR___BKMachineAuthorizationService_currentTask];
    *&v6[OBJC_IVAR___BKMachineAuthorizationService_currentTask] = v45;
    v47 = v45;

    if (v65)
    {

      v48 = &selRef_performDeauthorization;
    }

    else
    {
      v58 = sub_1007A3AB4();

      v48 = &selRef_performAuthorization;
      if (v58)
      {
        v48 = &selRef_performDeauthorization;
      }
    }

    v59 = [v47 *v48];
    v60 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v61 = swift_allocObject();
    v62 = v66;
    *(v61 + 16) = v60;
    *(v61 + 24) = v62;
    *(v61 + 32) = v34;
    *(v61 + 40) = v65 & 1;
    *(v61 + 48) = a2;
    aBlock[4] = sub_100474900;
    aBlock[5] = v61;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1002D63C0;
    aBlock[3] = &unk_100A1D7E0;
    v63 = _Block_copy(aBlock);
    sub_100308A48(v62, v34);

    [v59 addFinishBlock:v63];
    _Block_release(v63);
  }

  else
  {
    v49 = sub_10079ACC4();
    v50 = sub_1007A29B4();
    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      aBlock[0] = swift_slowAlloc();
      *v51 = 136315394;
      *(v51 + 4) = sub_1000070F4(0xD00000000000001DLL, 0x80000001008D5FD0, aBlock);
      *(v51 + 12) = 2080;
      *(v51 + 14) = sub_1000070F4(0xD00000000000001BLL, 0x8000000100828220, aBlock);
      _os_log_impl(&_mh_execute_header, v49, v50, "%s %s cannot authorize without an account.", v51, 0x16u);
      swift_arrayDestroy();
    }

    v52 = objc_allocWithZone(NSError);
    v53 = sub_1007A2214();
    v54 = [v52 initWithDomain:v53 code:0 userInfo:0];

    v55 = swift_allocObject();
    v55[2] = v6;
    v55[3] = a2;
    v55[4] = v54;
    v56 = v6;
    v57 = v54;
    sub_1007A2CD4();
  }
}

void sub_100473654(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(char *), uint64_t a5, char a6, uint64_t a7)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v12 = Strong;
    if (a2)
    {
      swift_errorRetain();
      v13 = sub_10079ACC4();
      v14 = sub_1007A29B4();
      if (os_log_type_enabled(v13, v14))
      {
        v15 = swift_slowAlloc();
        v16 = swift_slowAlloc();
        v36 = swift_slowAlloc();
        *v15 = 136315906;
        *(v15 + 4) = sub_1000070F4(0xD00000000000001DLL, 0x80000001008D5FD0, &v36);
        *(v15 + 12) = 2080;
        *(v15 + 14) = sub_1000070F4(0xD00000000000001BLL, 0x8000000100828220, &v36);
        *(v15 + 22) = 2080;
        if (a6)
        {
          v17 = 0x726F687475616564;
        }

        else
        {
          v17 = 0x7A69726F68747561;
        }

        if (a6)
        {
          v18 = 0xEB00000000657A69;
        }

        else
        {
          v18 = 0xE900000000000065;
        }

        v19 = sub_1000070F4(v17, v18, &v36);

        *(v15 + 24) = v19;
        *(v15 + 32) = 2112;
        v20 = sub_1007967C4();
        *(v15 + 34) = v20;
        *v16 = v20;
        _os_log_impl(&_mh_execute_header, v13, v14, "%s %s request failed to %s computer (by DSID). %@", v15, 0x2Au);
        sub_100007840(v16, &unk_100AD9480, &qword_1008113B0);

        swift_arrayDestroy();
      }

      v21 = sub_1007967C4();
      sub_100017E74();
      v22 = swift_allocObject();
      v22[2] = v12;
      v22[3] = a7;
      v22[4] = v21;
      v23 = v12;
      v24 = v21;
      sub_1007A2CD4();
    }

    else
    {
      v27 = sub_10079ACC4();
      v28 = sub_1007A2994();
      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        v36 = swift_slowAlloc();
        *v29 = 136315394;
        *(v29 + 4) = sub_1000070F4(0xD00000000000001BLL, 0x8000000100828220, &v36);
        *(v29 + 12) = 2080;
        if (a6)
        {
          v30 = 0x726F687475616564;
        }

        else
        {
          v30 = 0x7A69726F68747561;
        }

        if (a6)
        {
          v31 = 0xEB00000000657A69;
        }

        else
        {
          v31 = 0xE900000000000065;
        }

        v32 = sub_1000070F4(v30, v31, &v36);

        *(v29 + 14) = v32;
        _os_log_impl(&_mh_execute_header, v27, v28, "%s Successfully performed %s by DSID", v29, 0x16u);
        swift_arrayDestroy();
      }

      sub_100017E74();
      v33 = swift_allocObject();
      v33[2] = v12;
      v33[3] = a7;
      v33[4] = 0;
      v34 = v12;
      sub_1007A2CD4();
    }

    v35 = *&v12[OBJC_IVAR___BKMachineAuthorizationService_currentTask];
    *&v12[OBJC_IVAR___BKMachineAuthorizationService_currentTask] = 0;

    swift_unknownObjectWeakAssign();
  }

  else
  {
    if (!a4)
    {
      return;
    }

    v25 = objc_allocWithZone(NSError);
    v26 = sub_1007A2214();
    v12 = [v25 initWithDomain:v26 code:0 userInfo:0];

    a4(v12);
  }
}

uint64_t sub_100473B48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = OBJC_IVAR___BKMachineAuthorizationService_completionsByAccountName;
  swift_beginAccess();
  v9 = *(a1 + v8);
  if (*(v9 + 16))
  {

    v10 = sub_10000E53C(a2, a3);
    if (v11)
    {
      v12 = *(*(v9 + 56) + 8 * v10);

      v13 = *(v12 + 16);
      if (v13)
      {
        v14 = v12 + 40;
        do
        {
          v15 = *(v14 - 8);
          v17[0] = a4;

          v15(v17);

          v14 += 16;
          --v13;
        }

        while (v13);
      }
    }
  }

  swift_beginAccess();

  sub_1005E9914(0, a2, a3);
  return swift_endAccess();
}

uint64_t sub_100473C74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = OBJC_IVAR___BKMachineAuthorizationService_completionsByDSID;
  swift_beginAccess();
  v7 = *(a1 + v6);
  if (*(v7 + 16))
  {
    v8 = sub_1002F9CDC(a2);
    if (v9)
    {
      v10 = *(*(v7 + 56) + 8 * v8);
      v11 = *(v10 + 16);
      if (v11)
      {

        v12 = v10 + 40;
        do
        {
          v13 = *(v12 - 8);
          v15[0] = a3;

          v13(v15);

          v12 += 16;
          --v11;
        }

        while (v11);
      }
    }
  }

  swift_beginAccess();
  sub_1005E9954(0, a2);
  return swift_endAccess();
}

id sub_100473D78()
{
  *&v0[OBJC_IVAR___BKMachineAuthorizationService_currentTask] = 0;
  swift_unknownObjectWeakInit();
  v1 = OBJC_IVAR___BKMachineAuthorizationService_completionsByDSID;
  *&v0[v1] = sub_1001EEABC(_swiftEmptyArrayStorage);
  v2 = OBJC_IVAR___BKMachineAuthorizationService_completionsByAccountName;
  *&v0[v2] = sub_1001EEBC4(_swiftEmptyArrayStorage);
  sub_10079ACD4();
  v4.receiver = v0;
  v4.super_class = type metadata accessor for MachineAuthorizationService(0);
  return objc_msgSendSuper2(&v4, "init");
}

id sub_100473E7C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MachineAuthorizationService(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for MachineAuthorizationService(uint64_t a1)
{
  result = qword_100AE5330;
  if (!qword_100AE5330)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100473FB4(uint64_t a1)
{
  result = sub_10079ACE4();
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

void sub_100474068(uint64_t a1, uint64_t a2, void (*a3)(void, id), uint64_t a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_6;
  }

  v8 = Strong;
  v9 = swift_unknownObjectWeakLoadStrong();
  if (!v9)
  {
    v9 = [objc_opt_self() bc_presentingViewController];
    if (!v9)
    {

LABEL_6:
      sub_1001F1160(&unk_100ADE550, &unk_100812DA0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_10080B690;
      *(inited + 32) = sub_1007A2254();
      *(inited + 72) = &type metadata for String;
      *(inited + 40) = v16;
      *(inited + 48) = 0xD000000000000048;
      *(inited + 56) = 0x80000001008D5F50;
      sub_100019158(inited);
      swift_setDeallocating();
      sub_100007840(inited + 32, &unk_100ADD560, &unk_10080CDC0);
      v17 = objc_allocWithZone(NSError);
      v18 = sub_1007A2214();
      isa = sub_1007A2024().super.isa;

      v20 = [v17 initWithDomain:v18 code:0 userInfo:isa];

      v10 = v20;
      a3(0, v20);
      v12 = v10;
      goto LABEL_7;
    }
  }

  v10 = v9;
  v11 = [objc_allocWithZone(AMSUIAuthenticateTask) initWithRequest:a2 presentingViewController:v9];
  v12 = [v11 performAuthentication];

  v13 = swift_allocObject();
  *(v13 + 16) = a3;
  *(v13 + 24) = a4;
  aBlock[4] = sub_1004748CC;
  aBlock[5] = v13;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100474A38;
  aBlock[3] = &unk_100A1D768;
  v14 = _Block_copy(aBlock);

  [v12 addFinishBlock:v14];
  _Block_release(v14);

LABEL_7:
}

void sub_10047448C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v5 = sub_1007967C4();
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  (*(a3 + 16))(a3, a1);
}

void sub_1004744FC(uint64_t a1, uint64_t a2, void (*a3)(void, id), uint64_t a4)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong || (Strong = [objc_opt_self() bc_presentingViewController]) != 0)
  {
    v8 = Strong;
    v9 = [objc_allocWithZone(AMSUIAlertDialogTask) initWithRequest:a2 presentingViewController:Strong];
    v10 = [v9 present];
    v17[4] = a3;
    v17[5] = a4;
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 1107296256;
    v17[2] = sub_100474A38;
    v17[3] = &unk_100A1D6A0;
    v11 = _Block_copy(v17);

    [v10 addFinishBlock:v11];
    _Block_release(v11);
  }

  else
  {
    sub_1001F1160(&unk_100ADE550, &unk_100812DA0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10080B690;
    *(inited + 32) = sub_1007A2254();
    *(inited + 72) = &type metadata for String;
    *(inited + 40) = v13;
    *(inited + 48) = 0xD000000000000040;
    *(inited + 56) = 0x80000001008D5EA0;
    sub_100019158(inited);
    swift_setDeallocating();
    sub_100007840(inited + 32, &unk_100ADD560, &unk_10080CDC0);
    v14 = objc_allocWithZone(NSError);
    v15 = sub_1007A2214();
    isa = sub_1007A2024().super.isa;

    v10 = [v14 initWithDomain:v15 code:0 userInfo:isa];

    a3(0, v10);
  }
}

uint64_t sub_100474940()
{

  return swift_deallocObject();
}

uint64_t sub_1004749A0()
{

  return swift_deallocObject();
}

void *sub_100474A48(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t *a4, uint64_t (*a5)(void), uint64_t a6)
{
  v8 = *(a1 + 16);
  result = sub_1007A37F4();
  if (!v8)
  {
    return _swiftEmptyArrayStorage;
  }

  v10 = (a1 + 32);
  while (a2 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v11 = *v10++;
    sub_10000A7C4(0, &qword_100ADA970, UIKeyCommand_ptr);
    a3(v11);
    sub_1007A3A74();
    a5(v11);
    sub_1007A2964();
    sub_1007A37D4();
    sub_1007A3804();
    sub_1007A3814();
    result = sub_1007A37E4();
    ++a2;
    if (!--v8)
    {
      return _swiftEmptyArrayStorage;
    }
  }

  __break(1u);
  return result;
}

NSString sub_100474BE0()
{
  result = sub_1007A2214();
  qword_100AE53B0 = result;
  return result;
}

NSString sub_100474C18()
{
  result = sub_1007A2214();
  qword_100AE53B8 = result;
  return result;
}

NSString sub_100474C50()
{
  result = sub_1007A2214();
  qword_100AE53C0 = result;
  return result;
}

NSString sub_100474C88()
{
  result = sub_1007A2214();
  qword_100AE53C8 = result;
  return result;
}

NSString sub_100474CC0()
{
  result = sub_1007A2214();
  qword_100AE53D0 = result;
  return result;
}

NSString sub_100474CF8()
{
  result = sub_1007A2214();
  qword_100AE53D8 = result;
  return result;
}

NSString sub_100474D30()
{
  result = sub_1007A2214();
  qword_100AE53E0 = result;
  return result;
}

NSString sub_100474D68()
{
  result = sub_1007A2214();
  qword_100AE53E8 = result;
  return result;
}

NSString sub_100474DA0()
{
  result = sub_1007A2214();
  qword_100AE53F0 = result;
  return result;
}

NSString sub_100474DD8()
{
  result = sub_1007A2214();
  qword_100AE53F8 = result;
  return result;
}

NSString sub_100474E10()
{
  result = sub_1007A2214();
  qword_100AE5400 = result;
  return result;
}

uint64_t sub_100474E48(uint64_t a1)
{
  v1 = a1;
  sub_10000A7C4(0, &qword_100ADA970, UIKeyCommand_ptr);
  sub_1002986F4(v1);
  sub_1007A3A74();
  sub_1007A02B4();
  return sub_1007A2964();
}

void *sub_100474F3C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v6 = *(a1 + 16);
  result = sub_1007A37F4();
  if (!v6)
  {
    return _swiftEmptyArrayStorage;
  }

  v8 = a2;
  v9 = (a1 + 32);
  while (v8 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v10 = v8 + 1;
    v11 = *v9++;
    a3(v11);
    sub_1007A37D4();
    sub_1007A3804();
    sub_1007A3814();
    result = sub_1007A37E4();
    v8 = v10;
    if (!--v6)
    {
      return _swiftEmptyArrayStorage;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100475024()
{
  sub_1001F1160(&qword_100AE5408, &qword_1008282B8);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_100817C70;
  if (qword_100AD1698 != -1)
  {
    swift_once();
  }

  v1 = qword_100AE53B0;
  *(v0 + 32) = qword_100AE53B0;
  v2 = qword_100AD16A0;
  v3 = v1;
  if (v2 != -1)
  {
    swift_once();
  }

  v4 = qword_100AE53B8;
  *(v0 + 40) = qword_100AE53B8;
  v5 = qword_100AD16A8;
  v6 = v4;
  if (v5 != -1)
  {
    swift_once();
  }

  v7 = qword_100AE53C0;
  *(v0 + 48) = qword_100AE53C0;
  v8 = qword_100AD16B0;
  v9 = v7;
  if (v8 != -1)
  {
    swift_once();
  }

  v10 = qword_100AE53C8;
  *(v0 + 56) = qword_100AE53C8;
  v11 = qword_100AD16B8;
  v12 = v10;
  if (v11 != -1)
  {
    swift_once();
  }

  v13 = qword_100AE53D0;
  *(v0 + 64) = qword_100AE53D0;
  v14 = qword_100AD16C0;
  v15 = v13;
  if (v14 != -1)
  {
    swift_once();
  }

  v16 = qword_100AE53D8;
  *(v0 + 72) = qword_100AE53D8;
  v17 = qword_100AD16C8;
  v18 = v16;
  if (v17 != -1)
  {
    swift_once();
  }

  v19 = qword_100AE53E0;
  *(v0 + 80) = qword_100AE53E0;
  v20 = qword_100AD16D0;
  v21 = v19;
  if (v20 != -1)
  {
    swift_once();
  }

  v22 = qword_100AE53E8;
  *(v0 + 88) = qword_100AE53E8;
  v23 = qword_100AD16D8;
  v24 = v22;
  if (v23 != -1)
  {
    swift_once();
  }

  v25 = qword_100AE53F0;
  *(v0 + 96) = qword_100AE53F0;
  v26 = qword_100AD16E0;
  v27 = v25;
  if (v26 != -1)
  {
    swift_once();
  }

  v28 = qword_100AE53F8;
  *(v0 + 104) = qword_100AE53F8;
  v29 = qword_100AD16E8;
  v30 = v28;
  if (v29 != -1)
  {
    swift_once();
  }

  v31 = qword_100AE5400;
  *(v0 + 112) = qword_100AE5400;
  v32 = v31;
  return v0;
}

Class sub_100475334()
{
  v0 = sub_100796CF4();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v38 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = v38 - v5;
  v7 = sub_1007A21D4();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = v38 - v12;
  v46 = sub_10000A7C4(0, &qword_100AD8170, UIMenu_ptr);
  sub_1007A2154();
  sub_100796C94();
  v54 = *(v8 + 16);
  v54(v10, v13, v7);
  type metadata accessor for BundleFinder();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v52 = objc_opt_self();
  v53 = ObjCClassFromMetadata;
  v15 = [v52 bundleForClass:ObjCClassFromMetadata];
  v50 = *(v1 + 16);
  v51 = v1 + 16;
  v50(v3, v6, v0);
  v41 = v3;
  v16 = sub_1007A22D4(v10, 0, 0, v15, v3, "View -> View As", 15, 2);
  v44 = v17;
  v45 = v16;
  v18 = v0;
  v49 = *(v1 + 8);
  v47 = v1 + 8;
  v49(v6, v0);
  v19 = *(v8 + 8);
  v20 = v7;
  v55 = v8 + 8;
  v48 = v19;
  v19(v13, v7);
  if (qword_100AD16A0 != -1)
  {
    swift_once();
  }

  v21 = qword_100AE53B8;
  v43 = qword_100AE53B8;
  sub_1001F1160(&unk_100AD8160, &unk_100813160);
  v42 = swift_allocObject();
  *(v42 + 16) = xmmword_100811360;
  sub_10000A7C4(0, &qword_100AECAB0, UICommand_ptr);
  v22 = v21;
  sub_1007A2154();
  sub_100796C94();
  v38[0] = v7;
  v38[1] = v8 + 16;
  v54(v10, v13, v7);
  v23 = [v52 bundleForClass:v53];
  v24 = v41;
  v39 = v10;
  v50(v41, v6, v18);
  sub_1007A22D4(v10, 0, 0, v23, v24, "View -> View As -> Grid", 23, 2);
  v49(v6, v18);
  v48(v13, v20);
  v25 = v24;
  v26 = sub_1007A2214();
  v40 = objc_opt_self();
  v27 = [v40 systemImageNamed:v26];

  v56 = 0u;
  v57 = 0u;
  v28 = sub_1007A3414();
  v29 = v42;
  *(v42 + 32) = v28;
  sub_1007A2154();
  sub_100796C94();
  v30 = v39;
  v31 = v38[0];
  v54(v39, v13, v38[0]);
  v32 = [v52 bundleForClass:v53];
  v50(v25, v6, v18);
  sub_1007A22D4(v30, 0, 0, v32, v25, "View -> View As -> List", 23, 2);
  v49(v6, v18);
  v48(v13, v31);
  v33 = sub_1007A2214();
  v34 = [v40 systemImageNamed:v33];

  v56 = 0u;
  v57 = 0u;
  *(v29 + 40) = sub_1007A3414();
  v59._object = v44;
  v59._countAndFlagsBits = v45;
  v60.value._countAndFlagsBits = 0;
  v60.value._object = 0;
  v58.value.super.isa = 0;
  v58.is_nil = v43;
  v35.value = 1;
  return sub_1007A30C4(v59, v60, v58, v35, 0xFFFFFFFFFFFFFFFFLL, v29, v37).super.super.isa;
}

Class sub_1004759D4()
{
  v44 = sub_100796CF4();
  v0 = *(v44 - 8);
  __chkstk_darwin(v44);
  v2 = &v32 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v5 = &v32 - v4;
  v6 = sub_1007A21D4();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v32 - v11;
  v43 = sub_10000A7C4(0, &qword_100AD8170, UIMenu_ptr);
  if (qword_100AD16A8 != -1)
  {
    swift_once();
  }

  v13 = qword_100AE53C0;
  v42 = qword_100AE53C0;
  sub_1001F1160(&unk_100AD8160, &unk_100813160);
  v41 = swift_allocObject();
  *(v41 + 16) = xmmword_100811360;
  v45 = sub_10000A7C4(0, &qword_100AECAB0, UICommand_ptr);
  v14 = v13;
  sub_1007A2154();
  sub_100796C94();
  v46 = v7;
  v32 = v9;
  v33 = v12;
  v40 = *(v7 + 16);
  v40(v9, v12, v6);
  type metadata accessor for BundleFinder();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v39 = ObjCClassFromMetadata;
  v38 = objc_opt_self();
  v16 = v6;
  v17 = [v38 bundleForClass:ObjCClassFromMetadata];
  v37 = *(v0 + 16);
  v34 = v2;
  v18 = v44;
  v37(v2, v5, v44);
  sub_1007A22D4(v9, 0, 0, v17, v2, "View -> Purchased", 17, 2);
  v36 = *(v0 + 8);
  v36(v5, v18);
  v19 = *(v46 + 8);
  v46 += 8;
  v35 = v19;
  v20 = v33;
  v21 = v16;
  v19(v33, v16);
  v47 = 0u;
  v48 = 0u;
  v22 = sub_1007A3414();
  v23 = v41;
  *(v41 + 32) = v22;
  sub_1007A2154();
  sub_100796C94();
  v24 = v32;
  v25 = v20;
  v40(v32, v20, v21);
  v26 = [v38 bundleForClass:v39];
  v27 = v34;
  v28 = v44;
  v37(v34, v5, v44);
  sub_1007A22D4(v24, 0, 0, v26, v27, "View -> All In Series", 21, 2);
  v36(v5, v28);
  v35(v25, v21);
  v47 = 0u;
  v48 = 0u;
  *(v23 + 40) = sub_1007A3414();
  v50._countAndFlagsBits = 0;
  v50._object = 0xE000000000000000;
  v51.value._countAndFlagsBits = 0;
  v51.value._object = 0;
  v49.value.super.isa = 0;
  v49.is_nil = v42;
  v29.value = 1;
  return sub_1007A30C4(v50, v51, v49, v29, 0xFFFFFFFFFFFFFFFFLL, v23, v31).super.super.isa;
}

Class sub_100475F04()
{
  v0 = sub_100796CF4();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v43 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v43 - v5;
  v7 = sub_1007A21D4();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v43 - v12;
  v49 = sub_10000A7C4(0, &qword_100AD8170, UIMenu_ptr);
  sub_1007A2154();
  sub_100796C94();
  v14 = *(v8 + 16);
  v57 = v8 + 16;
  v63 = v14;
  v14(v10, v13, v7);
  type metadata accessor for BundleFinder();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v61 = objc_opt_self();
  v62 = ObjCClassFromMetadata;
  v16 = [v61 bundleForClass:ObjCClassFromMetadata];
  v17 = v1 + 16;
  v60 = *(v1 + 16);
  v60(v3, v6, v0);
  v45 = v3;
  v48 = sub_1007A22D4(v10, 0, 0, v16, v3, "View -> Sort By", 15, 2);
  v47 = v18;
  v19 = *(v1 + 8);
  v20 = v0;
  v58 = v1 + 8;
  v56 = v19;
  v19(v6, v0);
  v21 = *(v8 + 8);
  v55 = v8 + 8;
  v59 = v21;
  v21(v13, v7);
  if (qword_100AD1698 != -1)
  {
    swift_once();
  }

  v22 = qword_100AE53B0;
  v46 = qword_100AE53B0;
  sub_1001F1160(&unk_100AD8160, &unk_100813160);
  v54 = swift_allocObject();
  *(v54 + 16) = xmmword_100816E30;
  v52 = sub_10000A7C4(0, &qword_100AECAB0, UICommand_ptr);
  v23 = v22;
  sub_1007A2154();
  sub_100796C94();
  v63(v10, v13, v7);
  v24 = [v61 bundleForClass:v62];
  v25 = v45;
  v60(v45, v6, v20);
  sub_1007A22D4(v10, 0, 0, v24, v25, "View -> Sort By -> Recent", 25, 2);
  v56(v6, v20);
  v44 = v7;
  v59(v13, v7);
  v64 = 0u;
  v65 = 0u;
  v26 = sub_1007A3414();
  v53 = v17;
  *(v54 + 32) = v26;
  sub_1007A2154();
  sub_100796C94();
  v50 = v10;
  v63(v10, v13, v7);
  v27 = [v61 bundleForClass:v62];
  v51 = v20;
  v60(v25, v6, v20);
  sub_1007A22D4(v10, 0, 0, v27, v25, "View -> Sort By -> Title", 24, 2);
  v56(v6, v20);
  v28 = v44;
  v59(v13, v44);
  v64 = 0u;
  v65 = 0u;
  *(v54 + 40) = sub_1007A3414();
  sub_1007A2154();
  sub_100796C94();
  v29 = v50;
  v30 = v28;
  v63(v50, v13, v28);
  v31 = [v61 bundleForClass:v62];
  v32 = v25;
  v33 = v51;
  v60(v25, v6, v51);
  sub_1007A22D4(v29, 0, 0, v31, v25, "View -> Sort By -> Author", 25, 2);
  v34 = v56;
  v56(v6, v33);
  v59(v13, v30);
  v64 = 0u;
  v65 = 0u;
  v35 = sub_1007A3414();
  v36 = v54;
  *(v54 + 48) = v35;
  sub_1007A2154();
  sub_100796C94();
  v37 = v50;
  v63(v50, v13, v30);
  v38 = [v61 bundleForClass:v62];
  v39 = v51;
  v60(v32, v6, v51);
  sub_1007A22D4(v37, 0, 0, v38, v32, "View -> Sort By -> Manually", 27, 2);
  v34(v6, v39);
  v59(v13, v30);
  v64 = 0u;
  v65 = 0u;
  *(v36 + 56) = sub_1007A3414();
  v67._countAndFlagsBits = v48;
  v67._object = v47;
  v68.value._countAndFlagsBits = 0;
  v68.value._object = 0;
  v66.value.super.isa = 0;
  v66.is_nil = v46;
  v40.value = 1;
  return sub_1007A30C4(v67, v68, v66, v40, 0xFFFFFFFFFFFFFFFFLL, v36, v42).super.super.isa;
}

Class sub_1004767A4()
{
  v0 = sub_100796CF4();
  v80 = *(v0 - 8);
  __chkstk_darwin(v0);
  v2 = &v62 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v5 = &v62 - v4;
  v6 = sub_1007A21D4();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v62 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v62 - v11;
  v65 = sub_10000A7C4(0, &qword_100AD8170, UIMenu_ptr);
  if (qword_100AD16E0 != -1)
  {
    swift_once();
  }

  v13 = qword_100AE53F8;
  sub_1001F1160(&unk_100AD8160, &unk_100813160);
  v70 = swift_allocObject();
  *(v70 + 16) = xmmword_10081F2E0;
  v69 = sub_10000A7C4(0, &qword_100ADA970, UIKeyCommand_ptr);
  v64 = v13;
  sub_1007A2154();
  sub_100796C94();
  v14 = *(v7 + 16);
  v77 = v7 + 16;
  v72 = v14;
  v14(v9, v12, v6);
  type metadata accessor for BundleFinder();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v71 = ObjCClassFromMetadata;
  v74 = objc_opt_self();
  v16 = [v74 bundleForClass:ObjCClassFromMetadata];
  v17 = v80;
  v18 = *(v80 + 16);
  v73 = v80 + 16;
  v79 = v18;
  v18(v2, v5, v0);
  sub_1007A22D4(v9, 0, 0, v16, v2, "View -> Show Table of Contents", 30, 2);
  v19 = *(v17 + 8);
  v80 = v17 + 8;
  v78 = v19;
  v19(v5, v0);
  v20 = *(v7 + 8);
  v75 = v7 + 8;
  v76 = v20;
  v20(v12, v6);
  v81 = 0u;
  v82 = 0u;
  v21 = sub_1007A2964();
  v22 = v70;
  *(v70 + 32) = v21;
  v62 = v12;
  sub_1007A2154();
  sub_100796C94();
  v23 = v2;
  v68 = v2;
  v66 = v9;
  v72(v9, v12, v6);
  v24 = v74;
  v25 = [v74 bundleForClass:v71];
  v67 = v0;
  v79(v23, v5, v0);
  sub_1007A22D4(v9, 0, 0, v25, v23, "View -> Show Bookmarks", 22, 2);
  v78(v5, v0);
  v26 = v62;
  v76(v62, v6);
  v81 = 0u;
  v82 = 0u;
  *(v22 + 40) = sub_1007A2964();
  sub_1007A2154();
  v27 = v5;
  sub_100796C94();
  v28 = v66;
  v29 = v26;
  v30 = v26;
  v31 = v6;
  v32 = v6;
  v33 = v72;
  v72(v66, v29, v32);
  v34 = [v24 bundleForClass:v71];
  v36 = v67;
  v35 = v68;
  v79(v68, v27, v67);
  sub_1007A22D4(v28, 0, 0, v34, v35, "View -> Show Highlights & Notes", 31, 2);
  v78(v27, v36);
  v37 = v30;
  v38 = v31;
  v63 = v31;
  v76(v30, v31);
  v81 = 0u;
  v82 = 0u;
  v39 = sub_1007A2964();
  v40 = v70;
  *(v70 + 48) = v39;
  v41 = v37;
  sub_1007A2154();
  sub_100796C94();
  v33(v28, v37, v38);
  v42 = v71;
  v43 = [v74 bundleForClass:v71];
  v44 = v27;
  v45 = v67;
  v79(v35, v27, v67);
  sub_1007A22D4(v28, 0, 0, v43, v35, "View -> Show Thumbnails", 23, 2);
  v78(v27, v45);
  v46 = v63;
  v47 = v76;
  v76(v41, v63);
  v81 = 0u;
  v82 = 0u;
  *(v40 + 56) = sub_1007A2964();
  sub_1007A2154();
  sub_100796C94();
  v48 = v66;
  v49 = v46;
  v72(v66, v41, v46);
  v50 = [v74 bundleForClass:v42];
  v51 = v68;
  v52 = v44;
  v53 = v44;
  v54 = v67;
  v79(v68, v53, v67);
  sub_1007A22D4(v48, 0, 0, v50, v51, "View -> Show Study Cards", 24, 2);
  v78(v52, v54);
  v47(v41, v49);
  v81 = 0u;
  v82 = 0u;
  v55 = sub_1007A2964();
  v56 = v70;
  *(v70 + 64) = v55;
  sub_1007A2154();
  sub_100796C94();
  v72(v48, v41, v49);
  v57 = [v74 bundleForClass:v71];
  v58 = v68;
  v79(v68, v52, v54);
  sub_1007A22D4(v48, 0, 0, v57, v58, "View -> Show Glossary", 21, 2);
  v78(v52, v54);
  v76(v41, v49);
  v81 = 0u;
  v82 = 0u;
  *(v56 + 72) = sub_1007A2964();
  v84._countAndFlagsBits = 0;
  v84._object = 0xE000000000000000;
  v85.value._countAndFlagsBits = 0;
  v85.value._object = 0;
  v83.value.super.isa = 0;
  v83.is_nil = v64;
  v59.value = 1;
  return sub_1007A30C4(v84, v85, v83, v59, 0xFFFFFFFFFFFFFFFFLL, v56, v61).super.super.isa;
}

Class sub_100477264()
{
  v80 = sub_100796CF4();
  v0 = *(v80 - 8);
  __chkstk_darwin(v80);
  v2 = &v67 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v5 = &v67 - v4;
  v6 = sub_1007A21D4();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v67 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v67 - v11;
  sub_1001F1160(&unk_100AD8160, &unk_100813160);
  v70 = swift_allocObject();
  *(v70 + 16) = xmmword_100816E30;
  v81 = sub_10000A7C4(0, &qword_100AECAB0, UICommand_ptr);
  sub_1007A2154();
  sub_100796C94();
  v13 = *(v7 + 16);
  v71 = v7 + 16;
  v77 = v13;
  v78 = v9;
  v13(v9, v12, v6);
  type metadata accessor for BundleFinder();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v83 = ObjCClassFromMetadata;
  v76 = objc_opt_self();
  v15 = [v76 bundleForClass:ObjCClassFromMetadata];
  v16 = *(v0 + 16);
  v69 = v0 + 16;
  v75 = v16;
  v79 = v2;
  v17 = v80;
  v16(v2, v5, v80);
  sub_1007A22D4(v9, 0, 0, v15, v2, "View -> Theme -> White", 22, 2);
  v18 = *(v0 + 8);
  v74 = v0 + 8;
  v82 = v18;
  v18(v5, v17);
  v19 = *(v7 + 8);
  v72 = v7 + 8;
  v73 = v19;
  v19(v12, v6);
  v84 = 0u;
  v85 = 0u;
  v20 = sub_1007A3414();
  v21 = v70;
  *(v70 + 32) = v20;
  v22 = v12;
  v68 = v12;
  sub_1007A2154();
  sub_100796C94();
  v24 = v77;
  v23 = v78;
  v77(v78, v22, v6);
  v25 = [v76 bundleForClass:v83];
  v27 = v79;
  v26 = v80;
  v75(v79, v5, v80);
  sub_1007A22D4(v23, 0, 0, v25, v27, "View -> Theme -> Sepia", 22, 2);
  v82(v5, v26);
  v28 = v68;
  v73(v68, v6);
  v84 = 0u;
  v85 = 0u;
  *(v21 + 40) = sub_1007A3414();
  sub_1007A2154();
  sub_100796C94();
  v29 = v78;
  v30 = v28;
  v31 = v6;
  v67 = v6;
  v24(v78, v30, v6);
  v32 = v76;
  v33 = [v76 bundleForClass:v83];
  v34 = v79;
  v35 = v5;
  v36 = v80;
  v37 = v75;
  v75(v79, v5, v80);
  sub_1007A22D4(v29, 0, 0, v33, v34, "View -> Theme -> Gray", 21, 2);
  v82(v5, v36);
  v38 = v68;
  v39 = v31;
  v40 = v73;
  v73(v68, v39);
  v84 = 0u;
  v85 = 0u;
  *(v70 + 48) = sub_1007A3414();
  v41 = v38;
  sub_1007A2154();
  sub_100796C94();
  v42 = v78;
  v43 = v38;
  v44 = v67;
  v77(v78, v43, v67);
  v45 = [v32 bundleForClass:v83];
  v46 = v79;
  v47 = v35;
  v48 = v35;
  v49 = v80;
  v37(v79, v47, v80);
  sub_1007A22D4(v42, 0, 0, v45, v46, "View -> Theme -> Black", 22, 2);
  v82(v48, v49);
  v50 = v44;
  v40(v41, v44);
  v84 = 0u;
  v85 = 0u;
  v51 = v70;
  *(v51 + 56) = sub_1007A3414();
  v81 = sub_10000A7C4(0, &qword_100AD8170, UIMenu_ptr);
  sub_1007A2154();
  sub_100796C94();
  v52 = v78;
  v53 = v41;
  v54 = v50;
  v77(v78, v53, v50);
  v55 = [v76 bundleForClass:v83];
  v56 = v79;
  v75(v79, v48, v49);
  v57 = sub_1007A22D4(v52, 0, 0, v55, v56, "View -> Theme Menu", 18, 2);
  v59 = v58;
  v82(v48, v49);
  v73(v53, v54);
  v60 = sub_1007A2214();
  v61 = [objc_opt_self() systemImageNamed:v60];

  if (qword_100AD16C8 != -1)
  {
    swift_once();
  }

  v62 = qword_100AE53E0;
  v63 = qword_100AE53E0;
  v87._countAndFlagsBits = v57;
  v87._object = v59;
  v88.value._countAndFlagsBits = 0;
  v88.value._object = 0;
  v86.value.super.isa = v61;
  v86.is_nil = v62;
  v64.value = 0;
  return sub_1007A30C4(v87, v88, v86, v64, 0xFFFFFFFFFFFFFFFFLL, v51, v66).super.super.isa;
}

Class sub_100477B74()
{
  v52 = sub_100796CF4();
  v50 = *(v52 - 8);
  __chkstk_darwin(v52);
  v51 = &v43 - ((v0 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v1);
  v3 = &v43 - v2;
  v4 = sub_1007A21D4();
  v55 = *(v4 - 8);
  v5 = v55;
  __chkstk_darwin(v4);
  v7 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v43 - v9;
  sub_1001F1160(&unk_100AD8160, &unk_100813160);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_100811360;
  v12 = v11;
  v54 = v11;
  v53 = sub_10000A7C4(0, &qword_100AD8170, UIMenu_ptr);
  v13 = sub_10079F8F4();
  v14 = sub_100474A48(v13, 1, &BookThemeType.localizedTitle.getter, &selRef_books_setTheme_, &BookThemeType.rawValue.getter, 1310720);

  v61._countAndFlagsBits = 0;
  v61._object = 0xE000000000000000;
  v64.value._countAndFlagsBits = 0;
  v64.value._object = 0;
  v58.value.super.isa = 0;
  v58.is_nil = 0;
  v15.value = 1;
  v12[4].super.super.isa = sub_1007A30C4(v61, v64, v58, v15, 0xFFFFFFFFFFFFFFFFLL, v14, v40).super.super.isa;
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_100811390;
  v48 = sub_10000A7C4(0, &qword_100ADA970, UIKeyCommand_ptr);
  sub_1007A2154();
  v17 = v3;
  sub_100796C94();
  v49 = *(v5 + 16);
  v43 = v7;
  v18 = v4;
  v49(v7, v10, v4);
  type metadata accessor for BundleFinder();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v47 = ObjCClassFromMetadata;
  v46 = objc_opt_self();
  v20 = [v46 bundleForClass:ObjCClassFromMetadata];
  sub_100796C94();
  sub_1007A22B4();
  v21 = v50;
  v45 = *(v50 + 8);
  v45(v17, v52);
  v22 = *(v55 + 8);
  v55 += 8;
  v44 = v22;
  v22(v10, v4);
  v56 = 0u;
  v57 = 0u;
  *(v16 + 32) = sub_1007A2964();
  v62._countAndFlagsBits = 0;
  v62._object = 0xE000000000000000;
  v65.value._countAndFlagsBits = 0;
  v65.value._object = 0;
  v59.value.super.isa = 0;
  v59.is_nil = 0;
  v23.value = 1;
  v24.super.super.isa = sub_1007A30C4(v62, v65, v59, v23, 0xFFFFFFFFFFFFFFFFLL, v16, v41).super.super.isa;
  v54[5].super.super.isa = v24.super.super.isa;
  sub_1007A2154();
  v25 = v17;
  sub_100796C94();
  v26 = v43;
  v49(v43, v10, v18);
  v27 = [v46 bundleForClass:v47];
  v28 = *(v21 + 16);
  v30 = v51;
  v29 = v52;
  v28(v51, v25, v52);
  v31 = sub_1007A22D4(v26, 0, 0, v27, v30, "View -> Theme Menu", 18, 2);
  v33 = v32;
  v45(v25, v29);
  v44(v10, v18);
  v34 = sub_1007A2214();
  v35 = [objc_opt_self() systemImageNamed:v34];

  if (qword_100AD16C8 != -1)
  {
    swift_once();
  }

  v36 = qword_100AE53E0;
  v37 = qword_100AE53E0;
  v63._countAndFlagsBits = v31;
  v63._object = v33;
  v66.value._countAndFlagsBits = 0;
  v66.value._object = 0;
  v60.value.super.isa = v35;
  v60.is_nil = v36;
  v38.value = 0;
  return sub_1007A30C4(v63, v66, v60, v38, 0xFFFFFFFFFFFFFFFFLL, v54, v42.super.super.isa).super.super.isa;
}

Class sub_10047818C()
{
  v0 = sub_100796CF4();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v34 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = v34 - v5;
  v7 = sub_1007A21D4();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = v34 - v12;
  v34[1] = sub_10000A7C4(0, &qword_100AD8170, UIMenu_ptr);
  v34[0] = sub_1001F1160(&unk_100AD8160, &unk_100813160);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_100811360;
  *(v14 + 32) = sub_100477B74();
  sub_1007A2154();
  sub_100796C94();
  (*(v8 + 16))(v10, v13, v7);
  type metadata accessor for BundleFinder();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v16 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  (*(v1 + 16))(v3, v6, v0);
  v17 = sub_1007A22D4(v10, 0, 0, v16, v3, "View -> Appearance Menu", 23, 2);
  v19 = v18;
  (*(v1 + 8))(v6, v0);
  (*(v8 + 8))(v13, v7);
  v20 = sub_1007A2214();
  v21 = [objc_opt_self() _systemImageNamed:v20];

  if (qword_100AD16D0 != -1)
  {
    swift_once();
  }

  v22 = qword_100AE53E8;
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_100811390;
  v24 = v22;
  v25 = sub_1007A0294();
  v26 = sub_100474A48(v25, 1, sub_1002986F4, &selRef_books_setThemeAppearance_, &ThemeAppearance.rawValue.getter, 1703936);

  v38._countAndFlagsBits = 0;
  v38._object = 0xE000000000000000;
  v41.value._countAndFlagsBits = 0;
  v41.value._object = 0;
  v35.value.super.isa = 0;
  v35.is_nil = 0;
  v27.value = 1;
  *(v23 + 32) = sub_1007A30C4(v38, v41, v35, v27, 0xFFFFFFFFFFFFFFFFLL, v26, v31);
  v39._countAndFlagsBits = v17;
  v39._object = v19;
  v42.value._countAndFlagsBits = 0;
  v42.value._object = 0;
  v36.value.super.isa = v21;
  v36.is_nil = v22;
  v28.value = 0;
  *(v14 + 40) = sub_1007A30C4(v39, v42, v36, v28, 0xFFFFFFFFFFFFFFFFLL, v23, v32);
  v40._countAndFlagsBits = 0;
  v40._object = 0xE000000000000000;
  v43.value._countAndFlagsBits = 0;
  v43.value._object = 0;
  v37.value.super.isa = 0;
  v37.is_nil = 0;
  v29.value = 1;
  return sub_1007A30C4(v40, v43, v37, v29, 0xFFFFFFFFFFFFFFFFLL, v14, v33).super.super.isa;
}

Class sub_1004785E4()
{
  v0 = sub_100796CF4();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v35 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v35 - v5;
  v7 = sub_1007A21D4();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v35 - v12;
  v42 = sub_10000A7C4(0, &qword_100AD8170, UIMenu_ptr);
  sub_1007A2154();
  sub_100796C94();
  v49 = *(v8 + 16);
  v50 = v8 + 16;
  v49(v10, v13, v7);
  type metadata accessor for BundleFinder();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v47 = objc_opt_self();
  v48 = ObjCClassFromMetadata;
  v15 = [v47 bundleForClass:ObjCClassFromMetadata];
  v45 = *(v1 + 16);
  v46 = v1 + 16;
  v45(v3, v6, v0);
  v16 = sub_1007A22D4(v10, 0, 0, v15, v3, "View -> Brightness Menu", 23, 2);
  v39 = v17;
  v40 = v16;
  v18 = *(v1 + 8);
  v19 = v0;
  v51 = v1 + 8;
  v44 = v18;
  v18(v6, v0);
  v20 = v7;
  v21 = *(v8 + 8);
  v41 = v8 + 8;
  v43 = v21;
  v21(v13, v7);
  if (qword_100AD16D8 != -1)
  {
    swift_once();
  }

  v22 = qword_100AE53F0;
  sub_1001F1160(&unk_100AD8160, &unk_100813160);
  v38 = swift_allocObject();
  *(v38 + 16) = xmmword_100811390;
  v36 = swift_allocObject();
  *(v36 + 16) = xmmword_100811360;
  sub_10000A7C4(0, &qword_100ADA970, UIKeyCommand_ptr);
  v37 = v22;
  sub_1007A2154();
  sub_100796C94();
  v49(v10, v13, v7);
  v23 = [v47 bundleForClass:v48];
  v45(v3, v6, v19);
  sub_1007A22D4(v10, 0, 0, v23, v3, "View -> Brightness -> Increase Brightness", 41, 2);
  v35 = v3;
  v44(v6, v19);
  v43(v13, v20);
  v52 = 0u;
  v53 = 0u;
  v24 = sub_1007A2964();
  v25 = v36;
  *(v36 + 32) = v24;
  sub_1007A2154();
  sub_100796C94();
  v49(v10, v13, v20);
  v26 = [v47 bundleForClass:v48];
  v27 = v35;
  v45(v35, v6, v19);
  sub_1007A22D4(v10, 0, 0, v26, v27, "View -> Brightness -> Decrease Brightness", 41, 2);
  v44(v6, v19);
  v43(v13, v20);
  v52 = 0u;
  v53 = 0u;
  *(v25 + 40) = sub_1007A2964();
  v56._countAndFlagsBits = 0;
  v56._object = 0xE000000000000000;
  v58.value._countAndFlagsBits = 0;
  v58.value._object = 0;
  v54.value.super.isa = 0;
  v54.is_nil = 0;
  v28.value = 1;
  v29.super.super.isa = sub_1007A30C4(v56, v58, v54, v28, 0xFFFFFFFFFFFFFFFFLL, v25, v33).super.super.isa;
  v30 = v38;
  *(v38 + 32) = v29;
  v57._object = v39;
  v57._countAndFlagsBits = v40;
  v59.value._countAndFlagsBits = 0;
  v59.value._object = 0;
  v55.value.super.isa = 0;
  v55.is_nil = v37;
  v31.value = 0;
  return sub_1007A30C4(v57, v59, v55, v31, 0xFFFFFFFFFFFFFFFFLL, v30, v34).super.super.isa;
}

Class sub_100478C24()
{
  v0 = sub_100796CF4();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v27 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v27 - v5;
  v7 = sub_1007A21D4();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v27 - v12;
  v36 = sub_10000A7C4(0, &qword_100AD8170, UIMenu_ptr);
  if (qword_100AD16C0 != -1)
  {
    swift_once();
  }

  v14 = qword_100AE53D8;
  v35 = qword_100AE53D8;
  sub_1001F1160(&unk_100AD8160, &unk_100813160);
  v37 = swift_allocObject();
  *(v37 + 16) = xmmword_100811360;
  v38 = sub_10000A7C4(0, &qword_100AECAB0, UICommand_ptr);
  v15 = v14;
  sub_1007A2154();
  sub_100796C94();
  v39 = v8;
  v34 = *(v8 + 16);
  v34(v10, v13, v7);
  type metadata accessor for BundleFinder();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v33 = ObjCClassFromMetadata;
  v32 = objc_opt_self();
  v17 = [v32 bundleForClass:ObjCClassFromMetadata];
  v31 = *(v1 + 16);
  v28 = v0;
  v31(v3, v6, v0);
  sub_1007A22D4(v10, 0, 0, v17, v3, "View -> Page Turning", 20, 2);
  v27 = v10;
  v30 = *(v1 + 8);
  v30(v6, v0);
  v18 = *(v39 + 8);
  v39 += 8;
  v29 = v18;
  v18(v13, v7);
  v40 = 0u;
  v41 = 0u;
  *(v37 + 32) = sub_1007A3414();
  sub_1007A2154();
  sub_100796C94();
  v19 = v27;
  v34(v27, v13, v7);
  v20 = [v32 bundleForClass:v33];
  v21 = v28;
  v31(v3, v6, v28);
  sub_1007A22D4(v19, 0, 0, v20, v3, "View -> Scrolling", 17, 2);
  v30(v6, v21);
  v29(v13, v7);
  v40 = 0u;
  v41 = 0u;
  v22 = sub_1007A3414();
  v23 = v37;
  *(v37 + 40) = v22;
  v43._countAndFlagsBits = 0;
  v43._object = 0xE000000000000000;
  v44.value._countAndFlagsBits = 0;
  v44.value._object = 0;
  v42.value.super.isa = 0;
  v42.is_nil = v35;
  v24.value = 1;
  return sub_1007A30C4(v43, v44, v42, v24, 0xFFFFFFFFFFFFFFFFLL, v23, v26).super.super.isa;
}

Class sub_10047913C()
{
  v0 = sub_100796CF4();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v27 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v27 - v5;
  v7 = sub_1007A21D4();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v27 - v12;
  v36 = sub_10000A7C4(0, &qword_100AD8170, UIMenu_ptr);
  if (qword_100AD16B8 != -1)
  {
    swift_once();
  }

  v14 = qword_100AE53D0;
  v35 = qword_100AE53D0;
  sub_1001F1160(&unk_100AD8160, &unk_100813160);
  v37 = swift_allocObject();
  *(v37 + 16) = xmmword_100811360;
  v38 = sub_10000A7C4(0, &qword_100AECAB0, UICommand_ptr);
  v15 = v14;
  sub_1007A2154();
  sub_100796C94();
  v39 = v8;
  v34 = *(v8 + 16);
  v34(v10, v13, v7);
  type metadata accessor for BundleFinder();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v33 = ObjCClassFromMetadata;
  v32 = objc_opt_self();
  v17 = [v32 bundleForClass:ObjCClassFromMetadata];
  v31 = *(v1 + 16);
  v28 = v0;
  v31(v3, v6, v0);
  sub_1007A22D4(v10, 0, 0, v17, v3, "View -> Digital Book Page Numbers", 33, 2);
  v27 = v10;
  v30 = *(v1 + 8);
  v30(v6, v0);
  v18 = *(v39 + 8);
  v39 += 8;
  v29 = v18;
  v18(v13, v7);
  v40 = 0u;
  v41 = 0u;
  *(v37 + 32) = sub_1007A3414();
  sub_1007A2154();
  sub_100796C94();
  v19 = v27;
  v34(v27, v13, v7);
  v20 = [v32 bundleForClass:v33];
  v21 = v28;
  v31(v3, v6, v28);
  sub_1007A22D4(v19, 0, 0, v20, v3, "View -> Print Edition Page Numbers", 34, 2);
  v30(v6, v21);
  v29(v13, v7);
  v40 = 0u;
  v41 = 0u;
  v22 = sub_1007A3414();
  v23 = v37;
  *(v37 + 40) = v22;
  v43._countAndFlagsBits = 0;
  v43._object = 0xE000000000000000;
  v44.value._countAndFlagsBits = 0;
  v44.value._object = 0;
  v42.value.super.isa = 0;
  v42.is_nil = v35;
  v24.value = 1;
  return sub_1007A30C4(v43, v44, v42, v24, 0xFFFFFFFFFFFFFFFFLL, v23, v26).super.super.isa;
}

Class sub_10047965C()
{
  v0 = sub_100796CF4();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v41 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v41 - v5;
  v7 = sub_1007A21D4();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v41 - v12;
  v46 = sub_10000A7C4(0, &qword_100AD8170, UIMenu_ptr);
  if (qword_100AD16B0 != -1)
  {
    swift_once();
  }

  v14 = qword_100AE53C8;
  v45 = qword_100AE53C8;
  sub_1001F1160(&unk_100AD8160, &unk_100813160);
  v59 = swift_allocObject();
  *(v59 + 16) = xmmword_100811370;
  v48 = sub_10000A7C4(0, &qword_100ADA970, UIKeyCommand_ptr);
  v15 = v14;
  sub_1007A2154();
  sub_100796C94();
  v16 = *(v8 + 16);
  v57 = v8 + 16;
  v58 = v16;
  v42 = v10;
  v16(v10, v13, v7);
  type metadata accessor for BundleFinder();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v56 = ObjCClassFromMetadata;
  v55 = objc_opt_self();
  v18 = [v55 bundleForClass:ObjCClassFromMetadata];
  v19 = *(v1 + 16);
  v51 = v1 + 16;
  v54 = v19;
  v19(v3, v6, v0);
  sub_1007A22D4(v10, 0, 0, v18, v3, "View -> Reset Font Size to Default", 34, 2);
  v43 = v3;
  v20 = *(v1 + 8);
  v44 = v1 + 8;
  v53 = v20;
  v20(v6, v0);
  v21 = *(v8 + 8);
  v49 = v8 + 8;
  v52 = v21;
  v21(v13, v7);
  v22 = sub_1007A2214();
  v50 = objc_opt_self();
  v23 = [v50 systemImageNamed:v22];
  v47 = v0;

  v60 = 0u;
  v61 = 0u;
  *(v59 + 32) = sub_1007A2964();
  sub_1007A2154();
  sub_100796C94();
  v24 = v42;
  v25 = v7;
  v41 = v7;
  v58(v42, v13, v7);
  v26 = [v55 bundleForClass:v56];
  v27 = v43;
  v28 = v47;
  v54(v43, v6, v47);
  sub_1007A22D4(v24, 0, 0, v26, v27, "View -> Increase Font Size", 26, 2);
  v53(v6, v28);
  v52(v13, v25);
  v29 = sub_1007A2214();
  v30 = [v50 systemImageNamed:v29];

  v60 = 0u;
  v61 = 0u;
  v31 = sub_1007A2964();
  v32 = v59;
  *(v59 + 40) = v31;
  sub_1007A2154();
  sub_100796C94();
  v33 = v41;
  v58(v24, v13, v41);
  v34 = [v55 bundleForClass:v56];
  v35 = v47;
  v54(v27, v6, v47);
  sub_1007A22D4(v24, 0, 0, v34, v27, "View -> Decrease Font Size", 26, 2);
  v53(v6, v35);
  v52(v13, v33);
  v36 = sub_1007A2214();
  v37 = [v50 systemImageNamed:v36];

  v60 = 0u;
  v61 = 0u;
  *(v32 + 48) = sub_1007A2964();
  v63._countAndFlagsBits = 0;
  v63._object = 0xE000000000000000;
  v64.value._countAndFlagsBits = 0;
  v64.value._object = 0;
  v62.value.super.isa = 0;
  v62.is_nil = v45;
  v38.value = 1;
  return sub_1007A30C4(v63, v64, v62, v38, 0xFFFFFFFFFFFFFFFFLL, v32, v40).super.super.isa;
}

double sub_100479DCC(void *a1, int a2, char a3)
{
  v58 = a2;
  v5 = sub_100796CF4();
  v54 = *(v5 - 8);
  v55 = v5;
  __chkstk_darwin(v5);
  v53 = &v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v51 - v8;
  v57 = sub_1007A21D4();
  v10 = *(v57 - 8);
  __chkstk_darwin(v57);
  v12 = &v51 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v51 - v14;
  ObjectType = swift_getObjectType();
  [a1 removeMenuForIdentifier:UIMenuToolbar];
  [a1 removeMenuForIdentifier:UIMenuTextSize];
  [a1 removeMenuForIdentifier:UIMenuSidebar];
  v16 = sub_100475024();
  v17 = *(v16 + 16);
  if (v17)
  {
    v18 = (v16 + 32);
    do
    {
      v19 = *v18++;
      [a1 removeMenuForIdentifier:v19];
      --v17;
    }

    while (v17);
  }

  v20 = _swiftEmptyArrayStorage;
  v59 = _swiftEmptyArrayStorage;
  v60 = _swiftEmptyArrayStorage;
  v21 = _UIEnhancedMainMenuEnabled();
  v22 = v58;
  v23 = v58 - 3;
  if (!v21 || (v58 - 3) >= 4u)
  {
    sub_100475334();
    sub_1007A25C4();
    if (*((v60 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v60 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1007A2614();
    }

    sub_1007A2644();
    v20 = v60;
    v22 = v58;
    if (!_UIEnhancedMainMenuEnabled())
    {
      goto LABEL_13;
    }

LABEL_11:
    if (v22 != 2 || (a3 & 1) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_13;
  }

  if (_UIEnhancedMainMenuEnabled())
  {
    goto LABEL_11;
  }

LABEL_13:
  sub_1004759D4();
  sub_1007A25C4();
  if (*((v60 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v60 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1007A2614();
    v22 = v58;
  }

  sub_1007A2644();
  v20 = v60;
LABEL_16:
  if (!_UIEnhancedMainMenuEnabled() || v22 <= 2u && v22 && (v22 == 1 || (a3 & 1) == 0))
  {
    sub_100475F04();
    sub_1007A25C4();
    if (*((v60 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v60 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1007A2614();
    }

    sub_1007A2644();
    v20 = v60;
  }

  if (!_UIEnhancedMainMenuEnabled() || v23 <= 3u)
  {
    sub_1004767A4();
    sub_1007A25C4();
    if (*((v60 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v60 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1007A2614();
    }

    sub_1007A2644();
    v20 = v60;
  }

  if (!_UIEnhancedMainMenuEnabled() || v22 == 5)
  {
    sub_100477264();
    sub_1007A25C4();
    if (*((v60 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v60 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1007A2614();
    }

    sub_1007A2644();
    v20 = v60;
  }

  if (!_UIEnhancedMainMenuEnabled() || v22 == 4)
  {
    if (_UIEnhancedMainMenuEnabled())
    {
      sub_10047818C();
      sub_1007A25C4();
      if (*((v60 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v60 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1007A2614();
      }

      sub_1007A2644();
      v24 = _swiftEmptyArrayStorage;
      v20 = v60;
      if (!_UIEnhancedMainMenuEnabled())
      {
        goto LABEL_53;
      }
    }

    else
    {
      v52 = v23;
      sub_100477B74();
      sub_1007A25C4();
      if (*((v59 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v59 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1007A2614();
      }

      sub_1007A2644();
      v51 = sub_10000A7C4(0, &qword_100AD8170, UIMenu_ptr);
      sub_1007A2154();
      v25 = v9;
      sub_100796C94();
      v26 = v12;
      (*(v10 + 16))(v12, v15, v57);
      type metadata accessor for BundleFinder();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v28 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
      v30 = v53;
      v29 = v54;
      v31 = v55;
      (*(v54 + 16))(v53, v25, v55);
      v32 = sub_1007A22D4(v26, 0, 0, v28, v30, "View -> Appearance Menu", 23, 2);
      v53 = v33;
      (*(v29 + 8))(v25, v31);
      (*(v10 + 8))(v15, v57);
      v34 = sub_1007A2214();
      v35 = [objc_opt_self() _systemImageNamed:v34];

      if (qword_100AD16D0 != -1)
      {
        swift_once();
      }

      v36 = qword_100AE53E8;
      sub_1001F1160(&unk_100AD8160, &unk_100813160);
      v37 = swift_allocObject();
      *(v37 + 16) = xmmword_100811390;
      v38 = v36;
      v39 = sub_1007A0294();
      v40 = sub_100474F3C(v39, 1, sub_100474E48);

      v63._countAndFlagsBits = 0;
      v63._object = 0xE000000000000000;
      v65.value._countAndFlagsBits = 0;
      v65.value._object = 0;
      v61.value.super.isa = 0;
      v61.is_nil = 0;
      v41.value = 1;
      *(v37 + 32) = sub_1007A30C4(v63, v65, v61, v41, 0xFFFFFFFFFFFFFFFFLL, v40, v49);
      v64._countAndFlagsBits = v32;
      v64._object = v53;
      v66.value._countAndFlagsBits = 0;
      v66.value._object = 0;
      v62.value.super.isa = v35;
      v62.is_nil = v36;
      v42.value = 0;
      sub_1007A30C4(v64, v66, v62, v42, 0xFFFFFFFFFFFFFFFFLL, v37, v50);
      sub_1007A25C4();
      LOBYTE(v23) = v52;
      if (*((v59 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v59 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1007A2614();
      }

      sub_1007A2644();
      sub_1004785E4();
      sub_1007A25C4();
      v22 = v58;
      if (*((v59 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v59 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1007A2614();
      }

      sub_1007A2644();
      v24 = v59;
      if (!_UIEnhancedMainMenuEnabled())
      {
        goto LABEL_53;
      }
    }

LABEL_52:
    if ((v23 & 0xFD) != 0)
    {
      goto LABEL_56;
    }

    goto LABEL_53;
  }

  v24 = _swiftEmptyArrayStorage;
  if (_UIEnhancedMainMenuEnabled())
  {
    goto LABEL_52;
  }

LABEL_53:
  sub_100478C24();
  sub_1007A25C4();
  if (*((v60 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v60 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1007A2614();
  }

  sub_1007A2644();
  v20 = v60;
LABEL_56:
  if (!_UIEnhancedMainMenuEnabled() || v23 <= 3u)
  {
    sub_10047913C();
    sub_1007A25C4();
    if (*((v60 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v60 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1007A2614();
    }

    sub_1007A2644();
    v20 = v60;
  }

  if (!_UIEnhancedMainMenuEnabled() || (v22 - 7) >= 0xFDu)
  {
    sub_10047965C();
    sub_1007A25C4();
    if (*((v60 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v60 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1007A2614();
    }

    sub_1007A2644();
    v20 = v60;
  }

  if (v24 >> 62)
  {
    goto LABEL_81;
  }

  for (i = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1007A38D4())
  {
    v44 = UIMenuView;
    while (1)
    {
      if (__OFSUB__(i--, 1))
      {
        __break(1u);
LABEL_77:

        goto LABEL_78;
      }

      if ((v24 & 0xC000000000000001) != 0)
      {
        v45 = sub_1007A3784();
        goto LABEL_70;
      }

      if ((i & 0x8000000000000000) != 0)
      {
        break;
      }

      if (i >= *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_80;
      }

      v45 = *(v24 + 32 + 8 * i);
LABEL_70:
      v46 = v45;
      [a1 insertSiblingMenu:v45 afterMenuForIdentifier:UIMenuView];

      if (!i)
      {
        goto LABEL_77;
      }
    }

    __break(1u);
LABEL_80:
    __break(1u);
LABEL_81:
    ;
  }

  v44 = UIMenuView;
LABEL_78:
  sub_10020B548(v20, v44);

  return result;
}