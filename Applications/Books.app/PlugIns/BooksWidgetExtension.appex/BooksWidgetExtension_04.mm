double sub_10006B0AC@<D0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for LargeWidgetView(0) + 20));
  v4 = v3[4];
  v37 = v3[3];
  v38 = v4;
  v5 = v3[2];
  v35 = v3[1];
  v36 = v5;
  v34 = *v3;
  if (*(v37 + 16))
  {
    v6 = *(v37 + 80);
    v29 = *(v37 + 64);
    v7 = *(v37 + 96);
    v30 = v6;
    v31 = v7;
    v32 = *(v37 + 112);
    v8 = *(v37 + 48);
    v27 = *(v37 + 32);
    v28 = v8;
    sub_10000C328(&v27, v26);
    v23 = *(&v27 + 1);
    v24 = v27;
    v9 = v28;
    v10 = BYTE8(v28);
    v33[0] = *(&v28 + 9);
    *(v33 + 3) = HIDWORD(v28);
    v25 = *(&v29 + 1);
    v11 = v29;
    v12 = *(&v30 + 1);
    v13 = v30;
    v14 = *(&v31 + 1);
    v15 = v31;
    v16 = v32;
  }

  else
  {
    v25 = 0x8000000100082090;
    v13 = BDSCloudAssetTypeStoreEbook;
    v17 = BDSLibraryContentAssetTypeUnknown;
    v10 = 1;
    LOBYTE(v27) = 1;
    v18 = BDSCloudAssetTypeStoreEbook;
    v12 = v17;
    v23 = 0;
    v24 = 0;
    v9 = 0;
    v15 = 0;
    v14 = 0;
    v16 = 0;
    v11 = 0xD000000000000023;
  }

  sub_10006BAD4(&v34, &v27);
  v19 = sub_100080CC8();
  v20 = v37;
  *(a1 + 32) = v36;
  *(a1 + 48) = v20;
  *(a1 + 64) = v38;
  v21 = v35;
  *a1 = v34;
  *(a1 + 16) = v21;
  *(a1 + 80) = v24;
  *(a1 + 88) = v23;
  *(a1 + 96) = v9;
  *(a1 + 104) = v10;
  *(a1 + 105) = v33[0];
  *(a1 + 108) = *(v33 + 3);
  *(a1 + 112) = v11;
  *(a1 + 120) = v25;
  *(a1 + 128) = v13;
  *(a1 + 136) = v12;
  *(a1 + 144) = v15;
  *(a1 + 152) = v14;
  *(a1 + 160) = v16;
  *(a1 + 168) = xmmword_10008B360;
  *(a1 + 184) = 0x4034000000000000;
  *(a1 + 192) = v19;
  *(a1 + 200) = xmmword_10008B370;
  result = 4.0;
  *(a1 + 216) = xmmword_10008B380;
  *(a1 + 232) = 0x4044000000000000;
  return result;
}

uint64_t sub_10006B27C@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for LargeWidgetView(0) + 20));
  v4 = v3[3];
  v20 = v3[2];
  v21 = v4;
  v22 = v3[4];
  v5 = v3[1];
  v18 = *v3;
  v19 = v5;
  if (*(v21 + 16))
  {
    v6 = *(v21 + 80);
    v14 = *(v21 + 64);
    v15 = v6;
    v16 = *(v21 + 96);
    v17 = *(v21 + 112);
    v7 = *(v21 + 48);
    v12 = *(v21 + 32);
    v13 = v7;
    sub_10000C328(&v12, &v23);
    v25 = v14;
    v26 = v15;
    v27 = v16;
    v28 = v17;
    v23 = v12;
    v24 = v13;
  }

  else
  {
    v8 = BDSLibraryContentAssetTypeUnknown;
    LOBYTE(v12) = 1;
    *&v24 = 0;
    v23 = 0uLL;
    BYTE8(v24) = 1;
    *&v25 = 0xD000000000000023;
    *(&v25 + 1) = 0x8000000100082090;
    *&v26 = BDSCloudAssetTypeStoreEbook;
    *(&v26 + 1) = BDSLibraryContentAssetTypeUnknown;
    v27 = 0uLL;
    v28 = 0;
    v9 = BDSCloudAssetTypeStoreEbook;
    v10 = v8;
  }

  v14 = v25;
  v15 = v26;
  v16 = v27;
  v17 = v28;
  v12 = v23;
  v13 = v24;
  sub_100025138(&v12, a1);
  return sub_10002B884(&v23);
}

uint64_t sub_10006B3C4(uint64_t a1)
{
  v2 = sub_100002840(&qword_1000ACA90, &qword_100085B50);
  __chkstk_darwin(v2);
  v4 = v21 - v3;
  v5 = type metadata accessor for BackgroundView(0);
  v6 = __chkstk_darwin(v5);
  v8 = (v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = __chkstk_darwin(v6);
  v11 = (v21 - v10);
  __chkstk_darwin(v9);
  v13 = (v21 - v12);
  v14 = (a1 + *(type metadata accessor for LargeWidgetView(0) + 20));
  v15 = v14[3];
  v21[2] = v14[2];
  v21[3] = v15;
  v22 = v14[4];
  v16 = v14[1];
  v21[0] = *v14;
  v21[1] = v16;
  if (sub_100057D5C())
  {
    v17 = *(&v22 + 1);
    if (*(&v22 + 1))
    {
      v18 = v22;
      if (qword_1000AC648 != -1)
      {
        swift_once();
      }

      sub_100005554(qword_1000B7F10, qword_1000B7F28);
      v19 = sub_10003ABAC(v18, v17, 1);
    }

    else
    {
      v19 = 0;
    }

    *v11 = swift_getKeyPath();
    sub_100002840(&qword_1000ACA98, &qword_1000864C0);
    swift_storeEnumTagMultiPayload();
    *(v11 + *(v5 + 20)) = v19;
    sub_10006BB30(v11, v13, type metadata accessor for BackgroundView);
  }

  else
  {
    *v8 = swift_getKeyPath();
    sub_100002840(&qword_1000ACA98, &qword_1000864C0);
    swift_storeEnumTagMultiPayload();
    *(v8 + *(v5 + 20)) = 0;
    v13 = v8;
  }

  sub_10006B9B4(v13, v4, type metadata accessor for BackgroundView);
  swift_storeEnumTagMultiPayload();
  sub_10006C0B4(&qword_1000ACA70, type metadata accessor for BackgroundView, &unk_10008BBE4);
  sub_100080AD8();
  return sub_10006C1CC(v13, type metadata accessor for BackgroundView);
}

uint64_t sub_10006B6D4@<X0>(uint64_t a1@<X0>, uint64_t (**a2)@<X0>(uint64_t a2@<X8>)@<X8>)
{
  v4 = *(a1 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(a1 - 8);
  sub_10006B9B4(v2, &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for LargeWidgetView);
  v6 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = sub_10006BB30(&v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + v6, type metadata accessor for LargeWidgetView);
  *a2 = sub_10006B91C;
  a2[1] = v7;
  return result;
}

uint64_t sub_10006B7E8()
{
  v1 = *(type metadata accessor for LargeWidgetView(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  sub_100002840(&qword_1000ACA28, &qword_1000861E0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_1000807B8();
    (*(*(v5 - 8) + 8))(v0 + v3, v5);
  }

  else
  {
  }

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_10006B91C@<X0>(uint64_t a2@<X8>)
{
  v4 = *(type metadata accessor for LargeWidgetView(0) - 8);
  v5 = v2 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return sub_100068DDC(v5, a2);
}

uint64_t sub_10006B9B4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_10006BA1C()
{
  result = qword_1000AF5D0;
  if (!qword_1000AF5D0)
  {
    sub_100004FC8(&qword_1000AF5B8, &qword_10008B4F8);
    sub_100005C98(&qword_1000AF5D8, &qword_1000AF5B0, &qword_10008B4F0, &protocol conformance descriptor for HStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AF5D0);
  }

  return result;
}

uint64_t sub_10006BB30(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_10006BB98(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002840(&qword_1000AF5A8, &qword_10008B4E8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_10006BC10()
{
  result = qword_1000AF630;
  if (!qword_1000AF630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AF630);
  }

  return result;
}

unint64_t sub_10006BC64()
{
  result = qword_1000AF638;
  if (!qword_1000AF638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AF638);
  }

  return result;
}

unint64_t sub_10006BCB8()
{
  result = qword_1000AF648;
  if (!qword_1000AF648)
  {
    sub_100004FC8(&qword_1000AF640, &qword_10008B560);
    sub_10006BC10();
    sub_10006BC64();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AF648);
  }

  return result;
}

unint64_t sub_10006BD44()
{
  result = qword_1000AF650;
  if (!qword_1000AF650)
  {
    sub_100004FC8(&qword_1000AF600, &qword_10008B530);
    sub_10006BDD0();
    sub_10006BF98();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AF650);
  }

  return result;
}

unint64_t sub_10006BDD0()
{
  result = qword_1000AF658;
  if (!qword_1000AF658)
  {
    sub_100004FC8(&qword_1000AF620, &qword_10008B550);
    sub_10006BE5C();
    sub_10006BEB0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AF658);
  }

  return result;
}

unint64_t sub_10006BE5C()
{
  result = qword_1000AF660;
  if (!qword_1000AF660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AF660);
  }

  return result;
}

unint64_t sub_10006BEB0()
{
  result = qword_1000AF668;
  if (!qword_1000AF668)
  {
    sub_100004FC8(&qword_1000AF610, &qword_10008B540);
    sub_100005C98(&qword_1000AF670, &qword_1000AF608, &qword_10008B538, &protocol conformance descriptor for Link<A>);
    sub_10006C0B4(&qword_1000ACB10, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AF668);
  }

  return result;
}

unint64_t sub_10006BF98()
{
  result = qword_1000AF678;
  if (!qword_1000AF678)
  {
    sub_100004FC8(&qword_1000AF5F0, &qword_10008B520);
    type metadata accessor for LargeEmptyStateView(255);
    sub_10006C0B4(&qword_1000AF680, type metadata accessor for LargeEmptyStateView, &unk_100087A04);
    swift_getOpaqueTypeConformance2();
    sub_10006C0B4(&qword_1000ACB10, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AF678);
  }

  return result;
}

uint64_t sub_10006C0B4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

__n128 sub_10006C150@<Q0>(uint64_t a1@<X8>)
{
  sub_10006B0AC(v9);
  v2 = v9[13];
  *(a1 + 192) = v9[12];
  *(a1 + 208) = v2;
  *(a1 + 224) = v9[14];
  v3 = v9[9];
  *(a1 + 128) = v9[8];
  *(a1 + 144) = v3;
  v4 = v9[11];
  *(a1 + 160) = v9[10];
  *(a1 + 176) = v4;
  v5 = v9[5];
  *(a1 + 64) = v9[4];
  *(a1 + 80) = v5;
  v6 = v9[7];
  *(a1 + 96) = v9[6];
  *(a1 + 112) = v6;
  v7 = v9[1];
  *a1 = v9[0];
  *(a1 + 16) = v7;
  result = v9[3];
  *(a1 + 32) = v9[2];
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_10006C1CC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10006C2E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000807B8();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_100080F68();
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 24));
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_10006C404(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_1000807B8();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = sub_100080F68();
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24)) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_10006C52C(uint64_t a1)
{
  result = sub_1000807B8();
  if (v2 <= 0x3F)
  {
    result = sub_100080F68();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_10006C5FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100002840(&qword_1000AD718, &unk_100088450);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = type metadata accessor for EmptyStateView.ViewConfiguration(0);
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 28);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_10006C744(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_100002840(&qword_1000AD718, &unk_100088450);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  else
  {
    v11 = type metadata accessor for EmptyStateView.ViewConfiguration(0);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 28);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

void sub_10006C898(uint64_t a1)
{
  sub_100022118(319);
  if (v1 <= 0x3F)
  {
    sub_10006C93C();
    if (v2 <= 0x3F)
    {
      type metadata accessor for EmptyStateView.ViewConfiguration(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_10006C93C()
{
  if (!qword_1000AF7B0)
  {
    v0 = sub_100081518();
    if (!v1)
    {
      atomic_store(v0, &qword_1000AF7B0);
    }
  }
}

uint64_t sub_10006C98C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_10006C9D4(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t sub_10006CA40@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_1000809F8();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100002840(&qword_1000ACA98, &qword_1000864C0);
  __chkstk_darwin(v8);
  v10 = &v14 - v9;
  sub_1000055FC(v2, &v14 - v9, &qword_1000ACA98, &qword_1000864C0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_100081008();
    return (*(*(v11 - 8) + 32))(a1, v10, v11);
  }

  else
  {
    sub_100081458();
    v13 = sub_100080BA8();
    sub_100080618();

    sub_1000809E8();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v7, v4);
  }
}

uint64_t sub_10006CC40@<X0>(uint64_t (**a1)@<X0>(uint64_t a1@<X8>)@<X8>)
{
  v43 = a1;
  v38 = type metadata accessor for EmptyStateView(0);
  v40 = *(v38 - 8);
  __chkstk_darwin(v38);
  v41 = v2;
  v42 = &v34 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_100081008();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v34 - v8;
  v10 = sub_100080F68();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v36 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = v13;
  __chkstk_darwin(v12);
  v15 = &v34 - v14;
  sub_10006CA40(v9);
  sub_100080FF8();
  v16 = sub_100080FC8();
  v17 = *(v4 + 8);
  v17(v7, v3);
  v17(v9, v3);
  v39 = v10;
  v35 = v15;
  if (v16)
  {
    v18 = v1 + *(v38 + 28);
    v19 = type metadata accessor for EmptyStateView.ViewConfiguration(0);
    (*(v11 + 16))(v15, v18 + *(v19 + 20), v10);
  }

  else
  {
    (*(v11 + 104))(v15, enum case for BlendMode.normal(_:), v10);
  }

  sub_10006CA40(v9);
  sub_100080FF8();
  v20 = sub_100080FC8();
  v17(v7, v3);
  v17(v9, v3);
  if (v20)
  {
    v21 = v1 + *(v38 + 28);
    v22 = *(v21 + *(type metadata accessor for EmptyStateView.ViewConfiguration(0) + 32));
  }

  else
  {
    v22 = sub_100080B08();
  }

  v23 = v39;
  v24 = v35;
  v25 = v42;
  sub_10006DBC0(v1, v42);
  v26 = *(v11 + 32);
  v27 = v36;
  v26(v36, v24, v23);
  v28 = (*(v40 + 80) + 16) & ~*(v40 + 80);
  v29 = (v41 + v28 + 3) & 0xFFFFFFFFFFFFFFFCLL;
  v30 = (*(v11 + 80) + v29 + 4) & ~*(v11 + 80);
  v31 = swift_allocObject();
  sub_10006DE6C(v25, v31 + v28);
  *(v31 + v29) = v22;
  result = (v26)(v31 + v30, v27, v23);
  v33 = v43;
  *v43 = sub_10006DED0;
  v33[1] = v31;
  return result;
}

uint64_t sub_10006D030@<X0>(char *a1@<X1>, int a2@<W2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v50 = a3;
  v49 = a2;
  v44 = a1;
  v6 = sub_100002840(&qword_1000AF7E8, &qword_10008B638);
  v7 = __chkstk_darwin(v6 - 8);
  v48 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v10 = &v38 - v9;
  v45 = sub_100002840(&qword_1000AF7F0, &qword_10008B640) - 8;
  v11 = __chkstk_darwin(v45);
  v47 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v14 = &v38 - v13;
  *a4 = sub_100080A28();
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  v46 = a4 + *(sub_100002840(&qword_1000AF7F8, &qword_10008B648) + 44);
  sub_1000807F8();
  v15 = &a1[*(type metadata accessor for EmptyStateView(0) + 28)];
  v16 = type metadata accessor for EmptyStateView.ViewConfiguration(0);
  sub_1000807F8();
  sub_100080F48();
  sub_1000807E8();
  v39 = v53;
  v17 = v54;
  v41 = v55;
  v18 = v56;
  v42 = v58;
  v43 = v57;
  v19 = *&v15[*(v16 + 36)];
  KeyPath = swift_getKeyPath();
  v52 = v17;
  v51 = v18;
  v20 = *&v15[*(v16 + 44)];
  v21 = &v14[*(sub_100002840(&qword_1000AF800, &unk_10008B680) + 36)];
  v22 = *(sub_1000808E8() + 20);
  v23 = enum case for RoundedCornerStyle.continuous(_:);
  v24 = sub_100080A38();
  (*(*(v24 - 8) + 104))(&v21[v22], v23, v24);
  *v21 = v20;
  *(v21 + 1) = v20;
  *&v21[*(sub_100002840(&qword_1000AD7F0, &qword_10008A850) + 36)] = 256;
  *v14 = v39;
  v14[8] = v17;
  *(v14 + 9) = v60[0];
  *(v14 + 3) = *(v60 + 3);
  *(v14 + 2) = v41;
  v14[24] = v18;
  *(v14 + 25) = *v59;
  *(v14 + 7) = *&v59[3];
  v25 = v42;
  *(v14 + 4) = v43;
  *(v14 + 5) = v25;
  *(v14 + 6) = KeyPath;
  *(v14 + 7) = v19;

  LOBYTE(v19) = sub_100080C38();
  sub_100080798();
  v26 = &v14[*(v45 + 44)];
  *v26 = v19;
  *(v26 + 1) = v27;
  *(v26 + 2) = v28;
  *(v26 + 3) = v29;
  *(v26 + 4) = v30;
  v26[40] = 0;
  *v10 = sub_100080A78();
  *(v10 + 1) = 0;
  v10[16] = 0;
  v31 = sub_100002840(&qword_1000AF808, &qword_10008B690);
  sub_10006D4A8(v44, v49, v50, &v10[*(v31 + 44)]);
  v32 = v47;
  sub_1000055FC(v14, v47, &qword_1000AF7F0, &qword_10008B640);
  v33 = v48;
  sub_1000055FC(v10, v48, &qword_1000AF7E8, &qword_10008B638);
  v34 = v46;
  sub_1000055FC(v32, v46, &qword_1000AF7F0, &qword_10008B640);
  v35 = sub_100002840(&qword_1000AF810, &qword_10008B698);
  sub_1000055FC(v33, v34 + *(v35 + 48), &qword_1000AF7E8, &qword_10008B638);
  v36 = v34 + *(v35 + 64);
  *v36 = 0;
  *(v36 + 8) = 1;
  sub_100005B2C(v10, &qword_1000AF7E8, &qword_10008B638);
  sub_100005B2C(v14, &qword_1000AF7F0, &qword_10008B640);
  sub_100005B2C(v33, &qword_1000AF7E8, &qword_10008B638);
  return sub_100005B2C(v32, &qword_1000AF7F0, &qword_10008B640);
}

uint64_t sub_10006D4A8@<X0>(char *a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v110 = a3;
  v109 = a2;
  v107 = a4;
  v5 = sub_100002840(&qword_1000AF818, &qword_10008B6A0);
  v6 = *(v5 - 8);
  v103 = v5;
  v104 = v6;
  __chkstk_darwin(v5);
  v98 = &v94 - v7;
  v8 = sub_100002840(&qword_1000AF820, &qword_10008B6A8);
  v9 = __chkstk_darwin(v8 - 8);
  v106 = &v94 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v101 = &v94 - v11;
  v102 = (sub_100002840(&qword_1000AEBF0, &unk_10008B6B0) - 8);
  v12 = __chkstk_darwin(v102);
  v105 = &v94 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v15 = &v94 - v14;
  v16 = type metadata accessor for EmptyStateView(0);
  v17 = *(v16 + 20);
  v18 = v16;
  v99 = v16;
  v100 = a1;
  v19 = &a1[v17];
  v20 = *(v19 + 1);
  v111 = *v19;
  v112 = v20;
  v21 = sub_1000057D0();

  v97 = v21;
  v22 = sub_100080D28();
  v24 = v23;
  v26 = v25;
  v27 = &a1[*(v18 + 28)];
  v28 = *(type metadata accessor for EmptyStateView.ViewConfiguration(0) + 24);
  v108 = v27;
  v96 = *&v27[v28];
  sub_100080CA8();
  v29 = sub_100080D18();
  v31 = v30;
  LOBYTE(v21) = v32;

  sub_10000EF24(v22, v24, v26 & 1);

  LODWORD(v111) = v109;
  v33 = sub_100080D08();
  v35 = v34;
  v37 = v36;
  v39 = v38;
  sub_10000EF24(v29, v31, v21 & 1);

  v40 = sub_100002840(&qword_1000AEC00, &qword_100089280);
  v41 = *(v40 + 36);
  v42 = sub_100080F68();
  v43 = *(v42 - 8);
  v95 = *(v43 + 16);
  v94 = v43 + 16;
  v95(&v15[v41], v110, v42);
  *v15 = v33;
  *(v15 + 1) = v35;
  v15[16] = v37 & 1;
  *(v15 + 3) = v39;
  KeyPath = swift_getKeyPath();
  v45 = *(v102 + 11);
  v102 = v15;
  v46 = &v15[v45];
  v47 = sub_100002840(&qword_1000ACA80, &qword_100085B40);
  v48 = *(v47 + 28);
  v49 = sub_1000807B8();
  v50 = *(v49 - 8);
  v51 = *(v50 + 16);
  v52 = v50 + 16;
  (v51)(v46 + v48, v108, v49);
  *v46 = KeyPath;
  v53 = &v100[*(v99 + 24)];
  v54 = *(v53 + 1);
  if (v54)
  {
    v111 = *v53;
    v112 = v54;

    v55 = sub_100080D28();
    v97 = v47;
    v57 = v56;
    v100 = v51;
    v59 = v58;
    v99 = v52;
    v60 = sub_100080D18();
    v96 = v40;
    v62 = v61;
    v64 = v63;
    sub_10000EF24(v55, v57, v59 & 1);

    LODWORD(v111) = v109;
    v65 = sub_100080D08();
    v67 = v66;
    v69 = v68;
    v71 = v70;
    sub_10000EF24(v60, v62, v64 & 1);

    v72 = v98;
    v95(&v98[*(v96 + 36)], v110, v42);
    *v72 = v65;
    *(v72 + 8) = v67;
    *(v72 + 16) = v69 & 1;
    *(v72 + 24) = v71;
    LOBYTE(v65) = sub_100080BF8();
    sub_100080798();
    v74 = v73;
    v76 = v75;
    v78 = v77;
    v80 = v79;
    v81 = v72 + *(sub_100002840(&qword_1000AF830, &qword_10008B700) + 36);
    *v81 = v65;
    *(v81 + 8) = v74;
    *(v81 + 16) = v76;
    *(v81 + 24) = v78;
    *(v81 + 32) = v80;
    *(v81 + 40) = 0;
    v82 = swift_getKeyPath();
    v83 = v103;
    v84 = (v72 + *(v103 + 36));
    (v100)(v84 + *(v97 + 28), v108, v49);
    *v84 = v82;
    v85 = v101;
    sub_10006DFD4(v72, v101);
    v86 = 0;
    v87 = v83;
  }

  else
  {
    v86 = 1;
    v87 = v103;
    v85 = v101;
  }

  (*(v104 + 56))(v85, v86, 1, v87);
  v88 = v102;
  v89 = v105;
  sub_1000055FC(v102, v105, &qword_1000AEBF0, &unk_10008B6B0);
  v90 = v106;
  sub_1000055FC(v85, v106, &qword_1000AF820, &qword_10008B6A8);
  v91 = v107;
  sub_1000055FC(v89, v107, &qword_1000AEBF0, &unk_10008B6B0);
  v92 = sub_100002840(&qword_1000AF828, &qword_10008B6F8);
  sub_1000055FC(v90, v91 + *(v92 + 48), &qword_1000AF820, &qword_10008B6A8);
  sub_100005B2C(v85, &qword_1000AF820, &qword_10008B6A8);
  sub_100005B2C(v88, &qword_1000AEBF0, &unk_10008B6B0);
  sub_100005B2C(v90, &qword_1000AF820, &qword_10008B6A8);
  return sub_100005B2C(v89, &qword_1000AEBF0, &unk_10008B6B0);
}

uint64_t sub_10006DBC0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EmptyStateView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10006DC24()
{
  v1 = type metadata accessor for EmptyStateView(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = sub_100080F68();
  v6 = *(v5 - 8);
  v7 = *(v6 + 80);
  v8 = *(v6 + 64);
  v9 = v0 + v3;
  sub_100002840(&qword_1000ACA98, &qword_1000864C0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = sub_100081008();
    (*(*(v10 - 8) + 8))(v0 + v3, v10);
  }

  else
  {
  }

  v11 = (((v4 + v3 + 3) & 0xFFFFFFFFFFFFFFFCLL) + v7 + 4) & ~v7;

  v12 = v9 + *(v1 + 28);
  v13 = sub_1000807B8();
  (*(*(v13 - 8) + 8))(v12, v13);
  v14 = type metadata accessor for EmptyStateView.ViewConfiguration(0);
  v15 = *(v6 + 8);
  v15(v12 + *(v14 + 20), v5);

  v15(v0 + v11, v5);

  return _swift_deallocObject(v0, v11 + v8, v2 | v7 | 7);
}

uint64_t sub_10006DE6C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EmptyStateView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10006DED0@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for EmptyStateView(0) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 3) & 0xFFFFFFFFFFFFFFFCLL;
  v6 = *(sub_100080F68() - 8);
  v7 = *(v1 + v5);
  v8 = v1 + ((v5 + *(v6 + 80) + 4) & ~*(v6 + 80));

  return sub_10006D030((v1 + v4), v7, v8, a1);
}

uint64_t sub_10006DFD4(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002840(&qword_1000AF818, &qword_10008B6A0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_10006E048()
{
  result = qword_1000AF838;
  if (!qword_1000AF838)
  {
    sub_100004FC8(&qword_1000AF840, &qword_10008B708);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AF838);
  }

  return result;
}

uint64_t sub_10006E0B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  sub_1000816B8();
  sub_100081298();
  v6 = sub_1000816F8();
  v7 = -1 << *(a3 + 32);
  v8 = v6 & ~v7;
  if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
    return 0;
  }

  v9 = ~v7;
  while (1)
  {
    v10 = (*(a3 + 48) + 16 * v8);
    v11 = *v10 == a1 && v10[1] == a2;
    if (v11 || (sub_100081618() & 1) != 0)
    {
      break;
    }

    v8 = (v8 + 1) & v9;
    if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_10006E1A8()
{
  result = sub_10006E1C8();
  qword_1000AF848 = result;
  return result;
}

uint64_t sub_10006E1C8()
{
  sub_100002840(&qword_1000AF858, &qword_10008B740);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100085C00;
  result = kCTFontUIFontDesignTrait;
  if (!kCTFontUIFontDesignTrait)
  {
    __break(1u);
    goto LABEL_7;
  }

  *(inited + 32) = sub_100081218();
  *(inited + 40) = v2;
  result = kCTFontUIFontDesignSerif;
  if (!kCTFontUIFontDesignSerif)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  *(inited + 48) = sub_100081218();
  *(inited + 56) = v3;
  v4 = sub_100068328(inited);
  swift_setDeallocating();
  sub_100005B2C(inited + 32, &qword_1000AF860, &qword_10008B748);
  sub_100002840(&qword_1000AF868, &qword_10008B750);
  v5 = swift_initStackObject();
  *(v5 + 16) = xmmword_100085C00;
  *(v5 + 32) = sub_100081218();
  *(v5 + 40) = v6;
  *(v5 + 48) = v4;
  sub_10006843C(v5);
  swift_setDeallocating();
  sub_100005B2C(v5 + 32, &qword_1000AF870, &qword_10008B758);
  sub_100002840(&qword_1000AF878, &qword_10008B760);
  isa = sub_100081108().super.isa;

  v8 = CTFontDescriptorCreateWithAttributes(isa);

  v9 = CTFontCreateWithFontDescriptor(v8, 14.0, 0);
  v10 = CTFontCopySupportedLanguages(v9);
  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    sub_100081368();
  }

  v11 = sub_10006EECC(_swiftEmptyArrayStorage);

  return v11;
}

uint64_t static Font.Design.serifIfSupported.getter@<X0>(uint64_t a1@<X8>)
{
  if (_s20BooksWidgetExtension16FallBackFontSpecV03usedeF0SbyFZ_0())
  {
    v2 = sub_100080C58();
    v3 = *(*(v2 - 8) + 56);
    v4 = v2;
    v5 = a1;
    v6 = 1;
  }

  else
  {
    v7 = enum case for Font.Design.serif (_:);
    v8 = sub_100080C58();
    v10 = *(v8 - 8);
    (*(v10 + 104))(a1, v7, v8);
    v3 = *(v10 + 56);
    v5 = a1;
    v6 = 0;
    v4 = v8;
  }

  return v3(v5, v6, 1, v4);
}

uint64_t static Font.Design.defaultIfUnsupported.getter@<X0>(uint64_t a1@<X8>)
{
  if (_s20BooksWidgetExtension16FallBackFontSpecV03usedeF0SbyFZ_0())
  {
    v2 = enum case for Font.Design.default(_:);
    v3 = sub_100080C58();
    v10 = *(v3 - 8);
    (*(v10 + 104))(a1, v2, v3);
    v4 = *(v10 + 56);
    v5 = a1;
    v6 = 0;
    v7 = v3;
  }

  else
  {
    v8 = sub_100080C58();
    v4 = *(*(v8 - 8) + 56);
    v7 = v8;
    v5 = a1;
    v6 = 1;
  }

  return v4(v5, v6, 1, v7);
}

uint64_t sub_10006E608(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  sub_1000816B8();
  sub_100081298();
  v8 = sub_1000816F8();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = (*(v7 + 48) + 16 * v10);
      v13 = *v12 == a2 && v12[1] == a3;
      if (v13 || (sub_100081618() & 1) != 0)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v16 = (*(v7 + 48) + 16 * v10);
    v17 = v16[1];
    *a1 = *v16;
    a1[1] = v17;

    return 0;
  }

  else
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;

    sub_10006E9B8(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_10006E758(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_100002840(&qword_1000AF880, &qword_10008B768);
  result = sub_100081568();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v18 = (*(v3 + 48) + 16 * (v15 | (v6 << 6)));
      v19 = *v18;
      v20 = v18[1];
      sub_1000816B8();
      sub_100081298();
      result = sub_1000816F8();
      v21 = -1 << *(v5 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v12 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v12 + 8 * v23);
          if (v27 != -1)
          {
            v13 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v22) & ~*(v12 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v5 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v5 + 16);
    }

    v16 = v6;
    while (1)
    {
      v6 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v17 = v7[v6];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v28 = 1 << *(v3 + 32);
    if (v28 >= 64)
    {
      bzero((v3 + 56), ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v28;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_10006E9B8(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_10006E758(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_10006EB38();
      goto LABEL_16;
    }

    sub_10006EC94(v8 + 1);
  }

  v10 = *v4;
  sub_1000816B8();
  sub_100081298();
  result = sub_1000816F8();
  v11 = -1 << *(v10 + 32);
  a3 = result & ~v11;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v12 = ~v11;
    do
    {
      v13 = (*(v10 + 48) + 16 * a3);
      if (*v13 == v7 && v13[1] == a2)
      {
        goto LABEL_19;
      }

      result = sub_100081618();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v12;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v15 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v16 = (*(v15 + 48) + 16 * a3);
  *v16 = v7;
  v16[1] = a2;
  v17 = *(v15 + 16);
  v18 = __OFADD__(v17, 1);
  v19 = v17 + 1;
  if (!v18)
  {
    *(v15 + 16) = v19;
    return result;
  }

  __break(1u);
LABEL_19:
  result = sub_100081648();
  __break(1u);
  return result;
}

void *sub_10006EB38()
{
  v1 = v0;
  sub_100002840(&qword_1000AF880, &qword_10008B768);
  v2 = *v0;
  v3 = sub_100081558();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_10006EC94(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_100002840(&qword_1000AF880, &qword_10008B768);
  result = sub_100081568();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v17 = (*(v3 + 48) + 16 * (v14 | (v6 << 6)));
      v18 = *v17;
      v19 = v17[1];
      sub_1000816B8();

      sub_100081298();
      result = sub_1000816F8();
      v20 = -1 << *(v5 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v11 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v11 + 8 * v22);
          if (v26 != -1)
          {
            v12 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v21) & ~*(v11 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = (*(v5 + 48) + 16 * v12);
      *v13 = v18;
      v13[1] = v19;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v1;
        goto LABEL_26;
      }

      v16 = *(v3 + 56 + 8 * v6);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v9 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v5;
  }

  return result;
}

uint64_t sub_10006EECC(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = sub_100081408();
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_10006E608(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t _s20BooksWidgetExtension16FallBackFontSpecV03usedeF0SbyFZ_0()
{
  v0 = sub_100002840(&qword_1000AF850, &qword_10008B738);
  __chkstk_darwin(v0 - 8);
  v2 = &v24 - v1;
  v3 = sub_100080468();
  v26 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100080408();
  v25 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100080428();
  v27 = *(v9 - 8);
  __chkstk_darwin(v9);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = [objc_opt_self() standardUserDefaults];
  v13 = sub_1000811D8();
  v14 = [v12 BOOLForKey:v13];

  if (v14)
  {
    v15 = 1;
  }

  else
  {
    v16 = [objc_opt_self() mainBundle];
    v17 = [v16 preferredLocalizations];

    v18 = sub_100081378();
    if (*(v18 + 16))
    {

      sub_1000803F8();
      sub_1000803E8();
      (*(v25 + 8))(v8, v6);
      sub_100080458();
      (*(v26 + 8))(v5, v3);
      v19 = v27;
      if ((*(v27 + 48))(v2, 1, v9) == 1)
      {
        sub_100005B2C(v2, &qword_1000AF850, &qword_10008B738);
        v15 = 1;
      }

      else
      {
        (*(v19 + 32))(v11, v2, v9);
        if (qword_1000AC748 != -1)
        {
          swift_once();
        }

        v20 = qword_1000AF848;
        v21 = sub_100080418();
        LOBYTE(v20) = sub_10006E0B0(v21, v22, v20);

        (*(v19 + 8))(v11, v9);
        v15 = v20 ^ 1;
      }
    }

    else
    {

      v15 = 1;
    }
  }

  return v15 & 1;
}

double sub_10006F3CC@<D0>(uint64_t a1@<X8>)
{
  sub_100002840(&qword_1000AE6E0, &qword_100088640);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_100085A40;
  if (qword_1000AC750 != -1)
  {
    swift_once();
  }

  *(v2 + 32) = qword_1000AF888;
  v3 = qword_1000AC758;

  if (v3 != -1)
  {
    swift_once();
  }

  *(v2 + 40) = qword_1000AF890;

  sub_100080F78();
  sub_100080F88();
  sub_100080F38();
  sub_100080818();
  v4 = *(sub_100002840(&qword_1000AF898, &unk_10008B7E0) + 36);
  v5 = enum case for BlendMode.multiply(_:);
  v6 = sub_100080F68();
  (*(*(v6 - 8) + 104))(a1 + v4, v5, v6);
  result = *&v8;
  *a1 = v8;
  *(a1 + 16) = v9;
  *(a1 + 32) = v10;
  return result;
}

uint64_t sub_10006F58C(uint64_t a1, uint64_t *a2, double a3)
{
  sub_100080E28();
  v4 = sub_100080E58();

  *a2 = v4;
  return result;
}

unint64_t sub_10006F5E8()
{
  result = qword_1000AF8A0;
  if (!qword_1000AF8A0)
  {
    sub_100004FC8(&qword_1000AF898, &unk_10008B7E0);
    sub_100058F74();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AF8A0);
  }

  return result;
}

uint64_t sub_10006F688(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_100080F68();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 28);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = type metadata accessor for CircularProgressView.Content(0);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 40);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_10006F7C0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = sub_100080F68();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 28);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = type metadata accessor for CircularProgressView.Content(0);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 40);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_10006F904(uint64_t a1)
{
  result = sub_100080F68();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for CircularProgressView.Content(319);
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_10006F9E4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ReadingProgressIconView.ViewConfiguration(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_10006FA64(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ReadingProgressIconView.ViewConfiguration(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_10006FAF4(uint64_t a1)
{
  result = type metadata accessor for ReadingProgressIconView.ViewConfiguration(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_10006FB64()
{
  result = qword_1000AF9E0;
  if (!qword_1000AF9E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AF9E0);
  }

  return result;
}

uint64_t sub_10006FBB8@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v50 = a1;
  v3 = sub_100002840(&qword_1000AF9E8, &qword_10008B900);
  __chkstk_darwin(v3);
  v5 = &v43 - v4;
  v48 = sub_100002840(&qword_1000AF9F0, &qword_10008B908);
  __chkstk_darwin(v48);
  v7 = &v43 - v6;
  v49 = sub_100002840(&qword_1000AF9F8, &qword_10008B910);
  v44 = *(v49 - 8);
  __chkstk_darwin(v49);
  v9 = &v43 - v8;
  v45 = sub_100002840(&qword_1000AFA00, &qword_10008B918);
  __chkstk_darwin(v45);
  v47 = &v43 - v10;
  v11 = type metadata accessor for CircularProgressView(0);
  __chkstk_darwin(v11);
  v13 = (&v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v46 = sub_100002840(&qword_1000AFA08, &qword_10008B920);
  v14 = *(v46 - 8);
  __chkstk_darwin(v46);
  v16 = &v43 - v15;
  v17 = *v2;
  v18 = type metadata accessor for ReadingProgressIconView.ViewConfiguration(0);
  v19 = v18;
  if (v17 >= 1.0)
  {
    v31 = *(v2 + *(v18 + 44));
    *v5 = sub_100080A28();
    *(v5 + 1) = 0;
    v5[16] = 1;
    sub_100002840(&qword_1000AFA10, &qword_10008B928);
    sub_1000702B4(v31);
    sub_100005C98(&qword_1000AFA18, &qword_1000AF9E8, &qword_10008B900, &protocol conformance descriptor for HStack<A>);
    sub_100080DE8();
    sub_100005B2C(v5, &qword_1000AF9E8, &qword_10008B900);
    v32 = *(v2 + 8);
    KeyPath = swift_getKeyPath();
    v34 = &v7[*(sub_100002840(&qword_1000AFA20, &qword_10008B960) + 36)];
    *v34 = KeyPath;
    v34[1] = v32;

    v35 = sub_100080CB8();
    v36 = swift_getKeyPath();
    v37 = v48;
    v38 = &v7[*(v48 + 36)];
    *v38 = v36;
    v38[1] = v35;
    v39 = sub_100070694();
    sub_100080D48();
    sub_100005B2C(v7, &qword_1000AF9F0, &qword_10008B908);
    v40 = v44;
    v41 = v49;
    (*(v44 + 16))(v47, v9, v49);
    swift_storeEnumTagMultiPayload();
    v42 = sub_1000708EC(&qword_1000AE658, type metadata accessor for CircularProgressView, &unk_1000882F0);
    v51 = v11;
    v52 = v42;
    swift_getOpaqueTypeConformance2();
    v51 = v37;
    v52 = v39;
    swift_getOpaqueTypeConformance2();
    sub_100080AD8();
    return (*(v40 + 8))(v9, v41);
  }

  else
  {
    sub_10002E35C(v2 + *(v18 + 40), v13 + v11[7]);
    v21 = *(v2 + 8);
    v20 = *(v2 + 16);
    v22 = v19[7];
    v23 = v11[11];
    v24 = sub_100080F68();
    (*(*(v24 - 8) + 16))(v13 + v23, v2 + v22, v24);
    v25 = *(v2 + v19[8]);
    v26 = *(v2 + v19[9]);
    *v13 = swift_getKeyPath();
    sub_100002840(&qword_1000AE400, &qword_100088410);
    swift_storeEnumTagMultiPayload();
    *(v13 + v11[5]) = swift_getKeyPath();
    sub_100002840(&qword_1000ACA98, &qword_1000864C0);
    swift_storeEnumTagMultiPayload();
    *(v13 + v11[6]) = v17;
    *(v13 + v11[8]) = 0;
    *(v13 + v11[9]) = v21;
    *(v13 + v11[10]) = v20;
    *(v13 + v11[12]) = v25;
    *(v13 + v11[13]) = v26;
    *(v13 + v11[14]) = v26;
    v27 = sub_1000708EC(&qword_1000AE658, type metadata accessor for CircularProgressView, &unk_1000882F0);

    sub_100080D48();
    sub_1000709A0(v13);
    v28 = v46;
    (*(v14 + 16))(v47, v16, v46);
    swift_storeEnumTagMultiPayload();
    v51 = v11;
    v52 = v27;
    swift_getOpaqueTypeConformance2();
    v29 = sub_100070694();
    v51 = v48;
    v52 = v29;
    swift_getOpaqueTypeConformance2();
    sub_100080AD8();
    return (*(v14 + 8))(v16, v28);
  }
}

uint64_t sub_1000702B4(char a1)
{
  v2 = sub_100002840(&qword_1000AFA48, &qword_10008BA10);
  __chkstk_darwin(v2);
  v4 = v21 - v3;
  v5 = sub_100002840(&qword_1000AFA50, &qword_10008BA18);
  __chkstk_darwin(v5);
  v7 = v21 - v6;
  v8 = sub_100002840(&qword_1000AFA58, &qword_10008BA20);
  __chkstk_darwin(v8);
  v10 = (v21 - v9);
  if (a1)
  {
    v21[1] = sub_100080E88();
    sub_100080C78();
    sub_100080D88();

    v11 = &v4[*(v2 + 36)];
    v12 = *(sub_100002840(&qword_1000AFA60, &qword_10008BA28) + 28);
    v13 = enum case for Image.Scale.small(_:);
    v14 = sub_100080ED8();
    (*(*(v14 - 8) + 104))(v11 + v12, v13, v14);
    *v11 = swift_getKeyPath();
    sub_100070B30(v4, v7);
    swift_storeEnumTagMultiPayload();
    sub_100070BA0();
    sub_100070C58();
    sub_100080AD8();
    return sub_100005B2C(v4, &qword_1000AFA48, &qword_10008BA10);
  }

  else
  {
    v16 = sub_100080E88();
    v17 = (v10 + *(v8 + 36));
    v18 = *(sub_100002840(&qword_1000AFA60, &qword_10008BA28) + 28);
    v19 = enum case for Image.Scale.medium(_:);
    v20 = sub_100080ED8();
    (*(*(v20 - 8) + 104))(v17 + v18, v19, v20);
    *v17 = swift_getKeyPath();
    *v10 = v16;
    sub_100070D40(v10, v7);
    swift_storeEnumTagMultiPayload();
    sub_100070BA0();
    sub_100070C58();
    sub_100080AD8();
    return sub_100070DB0(v10);
  }
}

unint64_t sub_100070694()
{
  result = qword_1000AFA28;
  if (!qword_1000AFA28)
  {
    sub_100004FC8(&qword_1000AF9F0, &qword_10008B908);
    sub_10007074C();
    sub_100005C98(&qword_1000AD0A0, &qword_1000AD0A8, &qword_1000862D8, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AFA28);
  }

  return result;
}

unint64_t sub_10007074C()
{
  result = qword_1000AFA30;
  if (!qword_1000AFA30)
  {
    sub_100004FC8(&qword_1000AFA20, &qword_10008B960);
    sub_100070804();
    sub_100005C98(&qword_1000AD940, &qword_1000AD948, &unk_100088080, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AFA30);
  }

  return result;
}

unint64_t sub_100070804()
{
  result = qword_1000AFA38;
  if (!qword_1000AFA38)
  {
    sub_100004FC8(&qword_1000AFA40, &qword_10008B998);
    sub_100005C98(&qword_1000AFA18, &qword_1000AF9E8, &qword_10008B900, &protocol conformance descriptor for HStack<A>);
    sub_1000708EC(&qword_1000ACB10, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AFA38);
  }

  return result;
}

uint64_t sub_1000708EC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1000709A0(uint64_t a1)
{
  v2 = type metadata accessor for CircularProgressView(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100070A20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(char *))
{
  v8 = a5(0);
  __chkstk_darwin(v8);
  v10 = &v13 - v9;
  (*(v11 + 16))(&v13 - v9, a1);
  return a6(v10);
}

uint64_t sub_100070B30(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002840(&qword_1000AFA48, &qword_10008BA10);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_100070BA0()
{
  result = qword_1000AFA68;
  if (!qword_1000AFA68)
  {
    sub_100004FC8(&qword_1000AFA58, &qword_10008BA20);
    sub_100005C98(&qword_1000AFA70, &qword_1000AFA60, &qword_10008BA28, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AFA68);
  }

  return result;
}

unint64_t sub_100070C58()
{
  result = qword_1000AFA78;
  if (!qword_1000AFA78)
  {
    sub_100004FC8(&qword_1000AFA48, &qword_10008BA10);
    swift_getOpaqueTypeConformance2();
    sub_100005C98(&qword_1000AFA70, &qword_1000AFA60, &qword_10008BA28, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AFA78);
  }

  return result;
}

uint64_t sub_100070D40(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002840(&qword_1000AFA58, &qword_10008BA20);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100070DB0(uint64_t a1)
{
  v2 = sub_100002840(&qword_1000AFA58, &qword_10008BA20);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_100070E1C()
{
  result = qword_1000AFA80;
  if (!qword_1000AFA80)
  {
    sub_100004FC8(&qword_1000AFA88, &unk_10008BA60);
    type metadata accessor for CircularProgressView(255);
    sub_1000708EC(&qword_1000AE658, type metadata accessor for CircularProgressView, &unk_1000882F0);
    swift_getOpaqueTypeConformance2();
    sub_100004FC8(&qword_1000AF9F0, &qword_10008B908);
    sub_100070694();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AFA80);
  }

  return result;
}

uint64_t sub_100070F54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100002840(&qword_1000AD718, &unk_100088450);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_100071030(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_100002840(&qword_1000AD718, &unk_100088450);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24)) = (a2 - 1);
  }

  return result;
}

uint64_t type metadata accessor for LabelView(uint64_t a1)
{
  result = qword_1000AFB10;
  if (!qword_1000AFB10)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100071140(uint64_t a1)
{
  sub_100022118(319);
  if (v1 <= 0x3F)
  {
    sub_100071204(319, &qword_1000AFB20, &type metadata for String);
    if (v2 <= 0x3F)
    {
      sub_100071204(319, &unk_1000AFB28, &type metadata for LabelView.PlaceholderStyle);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_100071204(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = sub_100081518();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t getEnumTagSinglePayload for LabelView.PlaceholderStyle(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 17))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for LabelView.PlaceholderStyle(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
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

  *(result + 17) = v3;
  return result;
}

uint64_t sub_1000712C8@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_1000809F8();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100002840(&qword_1000ACA98, &qword_1000864C0);
  __chkstk_darwin(v8);
  v10 = &v14 - v9;
  sub_1000055FC(v2, &v14 - v9, &qword_1000ACA98, &qword_1000864C0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_100081008();
    return (*(*(v11 - 8) + 32))(a1, v10, v11);
  }

  else
  {
    sub_100081458();
    v13 = sub_100080BA8();
    sub_100080618();

    sub_1000809E8();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v7, v4);
  }
}

uint64_t sub_1000714C8@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_100002840(&qword_1000AFB60, &unk_10008BB08);
  __chkstk_darwin(v4);
  v6 = (&v63 - v5);
  v69 = sub_100081008();
  v7 = *(v69 - 8);
  v8 = __chkstk_darwin(v69);
  v10 = &v63 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v63 - v11;
  v70 = sub_100002840(&qword_1000AEC00, &qword_100089280);
  __chkstk_darwin(v70);
  v14 = &v63 - v13;
  v71 = sub_100002840(&qword_1000AFB68, &qword_10008BB18);
  __chkstk_darwin(v71);
  v73 = &v63 - v15;
  v77 = sub_100002840(&qword_1000AFB70, &qword_10008BB20);
  v16 = __chkstk_darwin(v77);
  v72 = &v63 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v74 = &v63 - v18;
  v19 = type metadata accessor for LabelView(0);
  v20 = (v1 + *(v19 + 20));
  v21 = v20[1];
  if (v21)
  {
    v67 = v19;
    v68 = v6;
    v75 = v4;
    v76 = a1;
    *&v81 = *v20;
    *(&v81 + 1) = v21;
    sub_1000057D0();

    v22 = sub_100080D28();
    v64 = v23;
    v65 = v22;
    v25 = v24;
    v66 = v26;
    sub_1000712C8(v12);
    sub_100080FF8();
    v27 = sub_100080FC8();
    v28 = *(v7 + 8);
    v29 = v10;
    v30 = v69;
    v28(v29, v69);
    v28(v12, v30);
    v63 = v2;
    if (v27)
    {
      if (qword_1000AC760 != -1)
      {
        swift_once();
      }

      v31 = dword_1000AFA90;
    }

    else
    {
      v31 = sub_100080B08();
    }

    LODWORD(v81) = v31;
    v37 = v64;
    v36 = v65;
    v38 = sub_100080D08();
    v40 = v39;
    v42 = v41;
    v44 = v43;
    sub_10000EF24(v36, v37, v25 & 1);

    if (qword_1000AC768 != -1)
    {
      swift_once();
    }

    v45 = sub_100080F68();
    v46 = sub_10000A480(v45, qword_1000AFA98);
    (*(*(v45 - 8) + 16))(&v14[*(v70 + 36)], v46, v45);
    *v14 = v38;
    *(v14 + 1) = v40;
    v14[16] = v42 & 1;
    *(v14 + 3) = v44;
    if (qword_1000AC770 != -1)
    {
      swift_once();
    }

    v47 = sub_100080CA8();
    KeyPath = swift_getKeyPath();
    v49 = v73;
    sub_10000C1E0(v14, v73, &qword_1000AEC00, &qword_100089280);
    v50 = v72;
    v51 = (v49 + *(v71 + 36));
    *v51 = KeyPath;
    v51[1] = v47;
    v52 = (v50 + *(v77 + 36));
    v53 = *(sub_100002840(&qword_1000ACA80, &qword_100085B40) + 28);
    v54 = enum case for ColorScheme.dark(_:);
    v55 = sub_1000807B8();
    (*(*(v55 - 8) + 104))(v52 + v53, v54, v55);
    *v52 = swift_getKeyPath();
    sub_10000C1E0(v49, v50, &qword_1000AFB68, &qword_10008BB18);
    v56 = v74;
    sub_10000C1E0(v50, v74, &qword_1000AFB70, &qword_10008BB20);
    sub_1000055FC(v56, v68, &qword_1000AFB70, &qword_10008BB20);
    swift_storeEnumTagMultiPayload();
    sub_100002840(&qword_1000AFB90, &qword_10008BB40);
    sub_100071F7C();
    sub_100072118();
    v57 = v76;
    sub_100080AD8();
    sub_1000721FC(v56);
    goto LABEL_20;
  }

  v32 = (v2 + *(v19 + 28));
  if ((*(v32 + 17) & 1) == 0)
  {
    v75 = v4;
    v76 = a1;
    v58 = *v32;
    if (v32[4])
    {
      sub_100080F48();
      sub_1000808F8();
      *&v78[21] = v93;
      *&v78[25] = v94;
      *&v78[13] = v91;
      *&v78[17] = v92;
      *&v78[5] = v89;
      *&v78[9] = v90;
      *&v78[1] = v88;
      *&v80[52] = *&v78[12];
      *&v80[36] = *&v78[8];
      *&v80[20] = *&v78[4];
      *&v80[4] = *v78;
      *v80 = v58;
      *&v80[116] = HIDWORD(v94);
      *&v80[100] = *&v78[24];
      *&v80[84] = *&v78[20];
      *&v80[68] = *&v78[16];
      sub_1000721E4(v80);
    }

    else
    {
      sub_100080F48();
      sub_1000807E8();
      *v80 = v58;
      *&v80[8] = v88;
      v80[16] = BYTE8(v88);
      *&v80[24] = v89;
      v80[32] = BYTE8(v89);
      *&v80[40] = v90;
      sub_100071EF8(v80);
    }

    *&v78[49] = *&v80[80];
    v79[0] = *&v80[96];
    *(v79 + 9) = *&v80[105];
    *&v78[29] = *v80;
    *&v78[33] = *&v80[16];
    *&v78[37] = *&v80[32];
    *&v78[41] = *&v80[48];
    *&v78[45] = *&v80[64];
    sub_100002840(&qword_1000AFB80, &unk_10008BB30);
    sub_100002840(&qword_1000AEF40, &qword_10008A360);
    sub_100071F04(&qword_1000AFB88, &qword_1000AFB80, &unk_10008BB30);
    sub_100071F04(&qword_1000AEF38, &qword_1000AEF40, &qword_10008A360);
    sub_100080AD8();
    v59 = v86;
    v6[4] = v85;
    v6[5] = v59;
    v6[6] = v87[0];
    *(v6 + 105) = *(v87 + 9);
    v60 = v82;
    *v6 = v81;
    v6[1] = v60;
    v61 = v84;
    v6[2] = v83;
    v6[3] = v61;
    swift_storeEnumTagMultiPayload();
    sub_100002840(&qword_1000AFB90, &qword_10008BB40);
    sub_100071F7C();
    sub_100072118();
    v57 = v76;
    sub_100080AD8();
LABEL_20:
    v62 = sub_100002840(&qword_1000AFB78, &qword_10008BB28);
    return (*(*(v62 - 8) + 56))(v57, 0, 1, v62);
  }

  v33 = sub_100002840(&qword_1000AFB78, &qword_10008BB28);
  v34 = *(*(v33 - 8) + 56);

  return v34(a1, 1, 1, v33);
}

uint64_t sub_100071E2C(uint64_t a1)
{
  result = sub_100080B28();
  dword_1000AFA90 = result;
  return result;
}

uint64_t sub_100071E4C()
{
  v0 = sub_100080F68();
  sub_10000A794(v0, qword_1000AFA98);
  v1 = sub_10000A480(v0, qword_1000AFA98);
  v2 = enum case for BlendMode.plusLighter(_:);
  v3 = *(*(v0 - 8) + 104);

  return v3(v1, v2, v0);
}

uint64_t sub_100071F04(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_100004FC8(a2, a3);
    sub_10005C128();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100071F7C()
{
  result = qword_1000AFB98;
  if (!qword_1000AFB98)
  {
    sub_100004FC8(&qword_1000AFB70, &qword_10008BB20);
    sub_100072020();
    sub_1000720C4(&qword_1000ADC50, &qword_1000ACA80, &qword_100085B40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AFB98);
  }

  return result;
}

unint64_t sub_100072020()
{
  result = qword_1000AFBA0;
  if (!qword_1000AFBA0)
  {
    sub_100004FC8(&qword_1000AFB68, &qword_10008BB18);
    sub_10004C8D0();
    sub_1000720C4(&qword_1000AD0A0, &qword_1000AD0A8, &qword_1000862D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AFBA0);
  }

  return result;
}

uint64_t sub_1000720C4(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_100004FC8(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100072118()
{
  result = qword_1000AFBA8;
  if (!qword_1000AFBA8)
  {
    sub_100004FC8(&qword_1000AFB90, &qword_10008BB40);
    sub_100071F04(&qword_1000AFB88, &qword_1000AFB80, &unk_10008BB30);
    sub_100071F04(&qword_1000AEF38, &qword_1000AEF40, &qword_10008A360);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AFBA8);
  }

  return result;
}

uint64_t sub_1000721FC(uint64_t a1)
{
  v2 = sub_100002840(&qword_1000AFB70, &qword_10008BB20);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_100072278()
{
  result = qword_1000AFBB0;
  if (!qword_1000AFBB0)
  {
    sub_100004FC8(&qword_1000AFBB8, &unk_10008BBC0);
    sub_1000722FC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AFBB0);
  }

  return result;
}

unint64_t sub_1000722FC()
{
  result = qword_1000AFBC0;
  if (!qword_1000AFBC0)
  {
    sub_100004FC8(&qword_1000AFB78, &qword_10008BB28);
    sub_100071F7C();
    sub_100072118();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AFBC0);
  }

  return result;
}

uint64_t sub_10007239C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100002840(&qword_1000AD718, &unk_100088450);
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

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_100072484(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_100002840(&qword_1000AD718, &unk_100088450);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2;
  }

  return result;
}

uint64_t type metadata accessor for BackgroundView(uint64_t a1)
{
  result = qword_1000AFC20;
  if (!qword_1000AFC20)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100072594(uint64_t a1)
{
  sub_100072678(319, &qword_1000AD788, &type metadata accessor for WidgetRenderingMode, &type metadata accessor for Environment);
  if (v1 <= 0x3F)
  {
    sub_100072678(319, &qword_1000AFC30, sub_1000726DC, &type metadata accessor for Optional);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_100072678(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_1000726DC()
{
  result = qword_1000AFC38;
  if (!qword_1000AFC38)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1000AFC38);
  }

  return result;
}

uint64_t sub_100072744@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_1000809F8();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100002840(&qword_1000ACA98, &qword_1000864C0);
  __chkstk_darwin(v8);
  v10 = &v14 - v9;
  sub_1000055FC(v2, &v14 - v9, &qword_1000ACA98, &qword_1000864C0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_100081008();
    return (*(*(v11 - 8) + 32))(a1, v10, v11);
  }

  else
  {
    sub_100081458();
    v13 = sub_100080BA8();
    sub_100080618();

    sub_1000809E8();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v7, v4);
  }
}

uint64_t sub_100072944@<X0>(uint64_t a1@<X8>)
{
  v25 = a1;
  v24 = sub_100002840(&qword_1000AFC78, &qword_10008BC48);
  __chkstk_darwin(v24);
  v3 = &v23 - v2;
  v4 = sub_100002840(&qword_1000AFC80, &qword_10008BC50);
  __chkstk_darwin(v4);
  v6 = &v23 - v5;
  v7 = sub_100080E98();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100002840(&qword_1000AFC88, &qword_10008BC58);
  __chkstk_darwin(v11);
  v13 = &v23 - v12;
  v14 = *(v1 + *(type metadata accessor for BackgroundView(0) + 20));
  if (v14)
  {
    v15 = v14;
    sub_100080E78();
    (*(v8 + 104))(v10, enum case for Image.ResizingMode.stretch(_:), v7);
    v16 = sub_100080EF8();

    (*(v8 + 8))(v10, v7);
    v17 = sub_1000808D8();
    v18 = sub_100080BE8();
    v26 = v16;
    v27 = v17;
    v28 = v18;
    sub_100002840(&qword_1000AFCA8, &unk_10008BC60);
    sub_100073070();
    sub_100080DB8();

    v19 = &qword_1000AFC88;
    v20 = &qword_10008BC58;
    sub_1000055FC(v13, v6, &qword_1000AFC88, &qword_10008BC58);
    swift_storeEnumTagMultiPayload();
    sub_1000730F4(&qword_1000AFC98, &qword_1000AFC88, &qword_10008BC58, sub_100073070);
    sub_1000730F4(&qword_1000AFCB0, &qword_1000AFC78, &qword_10008BC48, sub_10007301C);
    sub_100080AD8();

    v21 = v13;
  }

  else
  {
    sub_10007301C();
    sub_100080DB8();
    v19 = &qword_1000AFC78;
    v20 = &qword_10008BC48;
    sub_1000055FC(v3, v6, &qword_1000AFC78, &qword_10008BC48);
    swift_storeEnumTagMultiPayload();
    sub_1000730F4(&qword_1000AFC98, &qword_1000AFC88, &qword_10008BC58, sub_100073070);
    sub_1000730F4(&qword_1000AFCB0, &qword_1000AFC78, &qword_10008BC48, sub_10007301C);
    sub_100080AD8();
    v21 = v3;
  }

  return sub_100005B2C(v21, v19, v20);
}

uint64_t sub_100072D68@<X0>(uint64_t a1@<X8>)
{
  v19 = a1;
  v1 = sub_100002840(&qword_1000AFC70, &qword_10008BC40);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v18 - v3;
  v5 = sub_100081008();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v18 - v10;
  sub_100072744(&v18 - v10);
  sub_100080FF8();
  v12 = sub_100080FC8();
  v13 = *(v6 + 8);
  v13(v9, v5);
  v13(v11, v5);
  if (v12)
  {
    sub_100072944(v4);
    v14 = v19;
    sub_100072FAC(v4, v19);
    v15 = 0;
    v16 = v14;
  }

  else
  {
    v15 = 1;
    v16 = v19;
  }

  return (*(v2 + 56))(v16, v15, 1, v1);
}

uint64_t sub_100072F60@<X0>(uint64_t *a2@<X8>)
{
  *a2 = sub_100080F48();
  a2[1] = v3;
  v4 = sub_100002840(&qword_1000AFC68, &qword_10008BC38);
  return sub_100072D68(a2 + *(v4 + 44));
}

uint64_t sub_100072FAC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002840(&qword_1000AFC70, &qword_10008BC40);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_10007301C()
{
  result = qword_1000AFC90;
  if (!qword_1000AFC90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AFC90);
  }

  return result;
}

unint64_t sub_100073070()
{
  result = qword_1000AFCA0;
  if (!qword_1000AFCA0)
  {
    sub_100004FC8(&qword_1000AFCA8, &unk_10008BC60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AFCA0);
  }

  return result;
}

uint64_t sub_1000730F4(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_100004FC8(a2, a3);
    a4();
    sub_1000249A0();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_10007317C()
{
  result = qword_1000AFCB8;
  if (!qword_1000AFCB8)
  {
    sub_100004FC8(&qword_1000AFCC0, &unk_10008BC70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AFCB8);
  }

  return result;
}

uint64_t sub_1000731E0@<X0>(char *a1@<X8>)
{
  *a1 = xmmword_100087AD0;
  v2 = type metadata accessor for MediumOneBookView.ViewConfiguration(0);
  v3 = v2[6];
  v4 = enum case for BlendMode.plusLighter(_:);
  v5 = sub_100080F68();
  (*(*(v5 - 8) + 104))(&a1[v3], v4, v5);
  v6 = &a1[v2[7]];
  *v6 = 0x69662E656D616C66;
  *(v6 + 1) = 0xEA00000000006C6CLL;
  v7 = v2[8];
  sub_100080C88();
  *&a1[v7] = v8;
  v9 = v2[9];
  *&a1[v9] = sub_100080E48();
  *&a1[v2[10]] = 2;
  v10 = v2[11];
  *&a1[v10] = sub_100080E48();
  v11 = v2[12];
  sub_100080E48();
  v12 = sub_100080E58();

  *&a1[v11] = v12;
  v13 = &a1[v2[13]];
  *v13 = 0xD000000000000015;
  *(v13 + 1) = 0x8000000100082B90;
  v14 = v2[14];
  v15 = sub_100002840(&qword_1000ACB28, &unk_100087CA0);
  (*(*(v15 - 8) + 56))(&a1[v14], 1, 1, v15);
  *&a1[v2[15]] = 0x4008000000000000;
  *&a1[v2[16]] = 0x402A000000000000;
  *&a1[v2[17]] = 0x4010000000000000;
  v16 = v2[18];
  result = sub_100080CC8();
  *&a1[v16] = result;
  *&a1[v2[19]] = 0x4018000000000000;
  *&a1[v2[20]] = 0x4040000000000000;
  *&a1[v2[21]] = 0x4059000000000000;
  *&a1[v2[22]] = 0x4028000000000000;
  return result;
}

uint64_t sub_1000733F8(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_100080F68();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + a3[6];

    return v9(v10, a2, v8);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v12 = *(a1 + a3[7] + 8);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }

  else
  {
    v13 = type metadata accessor for CircularProgressView.Content(0);
    v14 = *(*(v13 - 8) + 48);
    v15 = a1 + a3[14];

    return v14(v15, a2, v13);
  }
}

uint64_t sub_100073538(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = sub_100080F68();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + a4[6];

    return v11(v12, a2, a2, v10);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[7] + 8) = (a2 - 1);
  }

  else
  {
    v13 = type metadata accessor for CircularProgressView.Content(0);
    v14 = *(*(v13 - 8) + 56);
    v15 = a1 + a4[14];

    return v14(v15, a2, a2, v13);
  }

  return result;
}

uint64_t sub_100073664(uint64_t a1)
{
  result = sub_100080F68();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for CircularProgressView.Content(319);
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_100073760(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 32);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for MediumOneBookView.ViewConfiguration(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_100073820(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 32) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for MediumOneBookView.ViewConfiguration(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1000738E4(uint64_t a1)
{
  result = type metadata accessor for MediumOneBookView.ViewConfiguration(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_100073984@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v30 = a1;
  v27 = sub_100080B68();
  v3 = *(v27 - 8);
  __chkstk_darwin(v27);
  v5 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_100002840(&qword_1000AFE38, &qword_10008BD08);
  __chkstk_darwin(v31);
  v7 = &v26 - v6;
  v8 = sub_100002840(&qword_1000AFE40, &qword_10008BD10);
  v28 = *(v8 - 8);
  v29 = v8;
  __chkstk_darwin(v8);
  v10 = &v26 - v9;
  v11 = v1 + *(type metadata accessor for MediumOneBookView(0) + 24);
  v12 = *(v11 + *(type metadata accessor for MediumOneBookView.ViewConfiguration(0) + 88));
  *v7 = sub_100080A28();
  *(v7 + 1) = v12;
  v7[16] = 0;
  v13 = sub_100002840(&qword_1000AFE48, &qword_10008BD18);
  sub_100073D08(v2, &v7[*(v13 + 44)]);
  v14 = *(v2 + 112);
  v50 = *(v2 + 96);
  v51 = v14;
  v52 = *(v2 + 128);
  v53 = *(v2 + 144);
  v15 = *(v2 + 80);
  v48 = *(v2 + 64);
  v49 = v15;
  if (sub_1000112D4())
  {
    sub_100080B58();
  }

  else
  {
    sub_100080B48();
  }

  v16 = sub_100005C98(&qword_1000AFE50, &qword_1000AFE38, &qword_10008BD08, &protocol conformance descriptor for HStack<A>);
  sub_100080E08();
  (*(v3 + 8))(v5, v27);
  sub_100005B2C(v7, &qword_1000AFE38, &qword_10008BD08);
  v17 = *(v2 + 112);
  v44 = *(v2 + 96);
  v45 = v17;
  v46 = *(v2 + 128);
  v47 = *(v2 + 144);
  v18 = *(v2 + 80);
  v42 = *(v2 + 64);
  v43 = v18;
  if (sub_1000112D4())
  {
    v19 = 0;
    v20 = 0xE000000000000000;
  }

  else
  {
    v21 = *(v2 + 112);
    v38 = *(v2 + 96);
    v39 = v21;
    v40 = *(v2 + 128);
    v41 = *(v2 + 144);
    v22 = *(v2 + 80);
    v36 = *(v2 + 64);
    v37 = v22;
    v19 = sub_100056778(0);
    v20 = v23;
  }

  v34 = v19;
  v35 = v20;
  v32 = v31;
  v33 = v16;
  swift_getOpaqueTypeConformance2();
  sub_1000057D0();
  v24 = v29;
  sub_100080DD8();

  return (*(v28 + 8))(v10, v24);
}

uint64_t sub_100073D08@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v81 = a2;
  v79 = sub_100002840(&qword_1000AFE58, &qword_10008BD20);
  v77 = *(v79 - 8);
  __chkstk_darwin(v79);
  v86 = &v75 - v3;
  v4 = sub_100002840(&qword_1000AFE60, &qword_10008BD28);
  v5 = __chkstk_darwin(v4 - 8);
  v80 = &v75 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v78 = &v75 - v7;
  v83 = sub_100080308();
  v8 = *(v83 - 8);
  v9 = __chkstk_darwin(v83);
  v84 = &v75 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v12 = &v75 - v11;
  v13 = type metadata accessor for BookCoverView(0);
  v14 = __chkstk_darwin(v13);
  v76 = &v75 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v14);
  v18 = (&v75 - v17);
  __chkstk_darwin(v16);
  v85 = &v75 - v19;
  v20 = a1[1];
  v107 = *a1;
  v108 = v20;
  v21 = a1[3];
  v109 = a1[2];
  v110 = v21;
  v22 = *(&v21 + 1);
  v23 = v21;
  v24 = a1[7];
  v105[2] = a1[6];
  v105[3] = v24;
  v105[4] = a1[8];
  v106 = *(a1 + 144);
  v25 = a1[5];
  v105[0] = a1[4];
  v105[1] = v25;
  sub_1000253FC(v105, v12);
  v26 = a1[7];
  v101 = a1[6];
  v102 = v26;
  v103 = a1[8];
  v104 = *(a1 + 144);
  v27 = a1[5];
  v99 = a1[4];
  v100 = v27;
  v28 = sub_1000112D4();
  v29 = a1[7];
  v113 = a1[6];
  v114 = v29;
  v115 = a1[8];
  v116 = *(a1 + 144);
  v30 = a1[5];
  v111 = a1[4];
  v112 = v30;
  v31 = *(&v111 + 1);
  v82 = v111;
  if (v22)
  {
    if (__PAIR128__(v22, v23) == v113)
    {
      LOBYTE(v22) = 1;
    }

    else
    {
      LOBYTE(v22) = sub_100081618();
    }
  }

  *v18 = swift_getKeyPath();
  sub_100002840(&qword_1000ACA98, &qword_1000864C0);
  swift_storeEnumTagMultiPayload();
  (*(v8 + 32))(v18 + v13[5], v12, v83);
  *(v18 + v13[6]) = v28 & 1;
  v32 = v18 + v13[7];
  v33 = v114;
  *(v32 + 2) = v113;
  *(v32 + 3) = v33;
  *(v32 + 4) = v115;
  v32[80] = v116;
  v34 = v112;
  *v32 = v111;
  *(v32 + 1) = v34;
  *(v18 + v13[8]) = v22 & 1;
  *(v18 + v13[9]) = 0;
  sub_10000C384(v18, v85);
  v35 = a1[1];
  v95 = *a1;
  v96 = v35;
  v36 = a1[3];
  v97 = a1[2];
  v98 = v36;
  v37 = a1[7];
  v93[2] = a1[6];
  v93[3] = v37;
  v93[4] = a1[8];
  v94 = *(a1 + 144);
  v38 = a1[5];
  v93[0] = a1[4];
  v93[1] = v38;
  sub_10000C328(&v111, v91);

  v39 = sub_1000253FC(v93, v84);
  __chkstk_darwin(v39);
  *(&v75 - 2) = a1;
  sub_100002840(&qword_1000AFE68, &qword_10008BD68);
  sub_100005C98(&qword_1000AFE70, &qword_1000AFE68, &qword_10008BD68, &protocol conformance descriptor for VStack<A>);
  sub_100080CE8();
  v89 = v82;
  v90[0] = v31;
  v40 = a1[7];
  v91[2] = a1[6];
  v91[3] = v40;
  v91[4] = a1[8];
  v92 = *(a1 + 144);
  v41 = a1[5];
  v91[0] = a1[4];
  v91[1] = v41;
  v42 = 0;
  v90[1] = sub_100056928(0);
  v90[2] = v43;
  v44 = _swiftEmptyArrayStorage;
LABEL_6:
  v45 = &v90[2 * v42];
  while (++v42 != 3)
  {
    v46 = v45 + 2;
    v47 = *v45;
    v45 += 2;
    if (v47)
    {
      v48 = *(v46 - 3);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v44 = sub_10003EE4C(0, *(v44 + 2) + 1, 1, v44);
      }

      v50 = *(v44 + 2);
      v49 = *(v44 + 3);
      if (v50 >= v49 >> 1)
      {
        v44 = sub_10003EE4C((v49 > 1), v50 + 1, 1, v44);
      }

      *(v44 + 2) = v50 + 1;
      v51 = &v44[16 * v50];
      *(v51 + 4) = v48;
      *(v51 + 5) = v47;
      goto LABEL_6;
    }
  }

  sub_100002840(&qword_1000ACE48, &unk_100086040);
  result = swift_arrayDestroy();
  v53 = 0;
  v54 = *(v44 + 2);
  v55 = _swiftEmptyArrayStorage;
LABEL_15:
  v56 = &v44[16 * v53 + 40];
  while (1)
  {
    if (v54 == v53)
    {

      v87 = v55;
      sub_100002840(&qword_1000ACE50, &qword_1000881F0);
      sub_100005C98(&qword_1000ACE58, &qword_1000ACE50, &qword_1000881F0, &protocol conformance descriptor for [A]);
      v63 = sub_100081128();
      v65 = v64;

      v87 = v63;
      v88 = v65;
      sub_100005C98(&qword_1000AFE78, &qword_1000AFE58, &qword_10008BD20, &protocol conformance descriptor for Link<A>);
      sub_1000057D0();
      v67 = v78;
      v66 = v79;
      v68 = v86;
      sub_100080DD8();

      (*(v77 + 8))(v68, v66);
      v69 = v85;
      v70 = v76;
      sub_100074A74(v85, v76);
      v71 = v80;
      sub_1000055FC(v67, v80, &qword_1000AFE60, &qword_10008BD28);
      v72 = v81;
      sub_100074A74(v70, v81);
      v73 = sub_100002840(&qword_1000AFE80, &qword_10008BD70);
      sub_1000055FC(v71, v72 + *(v73 + 48), &qword_1000AFE60, &qword_10008BD28);
      v74 = v72 + *(v73 + 64);
      sub_100005B2C(v67, &qword_1000AFE60, &qword_10008BD28);
      sub_100074AD8(v69);
      *v74 = 0;
      *(v74 + 8) = 1;
      sub_100005B2C(v71, &qword_1000AFE60, &qword_10008BD28);
      return sub_100074AD8(v70);
    }

    if (v53 >= *(v44 + 2))
    {
      break;
    }

    ++v53;
    v58 = *(v56 - 1);
    v57 = *v56;
    v56 += 16;
    v59 = HIBYTE(v57) & 0xF;
    if ((v57 & 0x2000000000000000) == 0)
    {
      v59 = v58 & 0xFFFFFFFFFFFFLL;
    }

    if (v59)
    {

      result = swift_isUniquelyReferenced_nonNull_native();
      v87 = v55;
      if ((result & 1) == 0)
      {
        result = sub_100061B34(0, v55[2] + 1, 1);
        v55 = v87;
      }

      v61 = v55[2];
      v60 = v55[3];
      if (v61 >= v60 >> 1)
      {
        result = sub_100061B34((v60 > 1), v61 + 1, 1);
        v55 = v87;
      }

      v55[2] = v61 + 1;
      v62 = &v55[2 * v61];
      v62[4] = v58;
      v62[5] = v57;
      goto LABEL_15;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100074590@<X0>(uint64_t a1@<X0>, uint64_t a9@<X8>)
{
  *a9 = sub_100080A78();
  *(a9 + 8) = 0;
  *(a9 + 16) = 0;
  v11 = sub_100002840(&qword_1000AFE88, &qword_10008BD78);
  return sub_1000745E4(a1, a9 + *(v11 + 44));
}

uint64_t sub_1000745E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v61 = sub_100002840(&qword_1000AFE90, &qword_10008BD80);
  __chkstk_darwin(v61);
  v5 = &v55 - v4;
  v6 = sub_100002840(&qword_1000AFE98, &qword_10008BD88);
  v7 = __chkstk_darwin(v6 - 8);
  v60 = &v55 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v62 = &v55 - v9;
  v10 = *(a1 + 64);
  v58 = *(a1 + 72);
  v59 = v10;

  v57 = sub_100080C08();
  v11 = a1 + *(type metadata accessor for MediumOneBookView(0) + 24);
  v12 = type metadata accessor for MediumOneBookView.ViewConfiguration(0);
  sub_100080798();
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  LOBYTE(v76) = 0;
  v56 = sub_100080C38();
  sub_100080798();
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v28 = v27;
  LOBYTE(v85[0]) = 0;
  *(&v63 + 1) = *(v11 + v12[10]);
  *&v63 = swift_getKeyPath();
  *v5 = sub_100080A28();
  *(v5 + 1) = 0;
  v5[16] = 0;
  v29 = &v5[*(sub_100002840(&qword_1000AFEA0, &qword_10008BDC0) + 44)];
  v30 = *(a1 + 112);
  v72 = *(a1 + 96);
  v73 = v30;
  v74 = *(a1 + 128);
  v75 = *(a1 + 144);
  v31 = *(a1 + 80);
  v70 = *(a1 + 64);
  v71 = v31;
  v32 = sub_100056928(0);
  v34 = v33;
  v35 = *(v11 + v12[18]);

  v36 = sub_100080B28();
  v37 = *(v11 + v12[21]);
  v38 = v36;
  *v29 = swift_getKeyPath();
  sub_100002840(&qword_1000ACA98, &qword_1000864C0);
  swift_storeEnumTagMultiPayload();
  v39 = type metadata accessor for LabelView(0);
  v40 = (v29 + v39[5]);
  *v40 = v32;
  v40[1] = v34;
  *(v29 + v39[6]) = v35;
  v41 = v29 + v39[7];
  *v41 = v38;
  *(v41 + 1) = v37;
  *(v41 + 8) = 0;
  v42 = *(a1 + 112);
  v66 = *(a1 + 96);
  v67 = v42;
  v68 = *(a1 + 128);
  v69 = *(a1 + 144);
  v43 = *(a1 + 80);
  v64 = *(a1 + 64);
  v65 = v43;
  sub_1000112D4();
  sub_100005C98(&qword_1000AFEA8, &qword_1000AFE90, &qword_10008BD80, &protocol conformance descriptor for HStack<A>);
  v44 = v62;
  sub_100080DE8();
  sub_100005B2C(v5, &qword_1000AFE90, &qword_10008BD80);
  v45 = v44;
  v46 = v60;
  sub_1000055FC(v45, v60, &qword_1000AFE98, &qword_10008BD88);
  v48 = v58;
  v47 = v59;
  *&v76 = v59;
  *(&v76 + 1) = v58;
  LOBYTE(a1) = v56;
  LOBYTE(v38) = v57;
  LOBYTE(v77) = v57;
  *(&v77 + 1) = v14;
  *&v78 = v16;
  *(&v78 + 1) = v18;
  *&v79 = v20;
  BYTE8(v79) = 0;
  LOBYTE(v80) = v56;
  *(&v80 + 1) = v22;
  *&v81 = v24;
  *(&v81 + 1) = v26;
  *&v82 = v28;
  BYTE8(v82) = 0;
  v83 = v63;
  v84 = 0;
  *(a2 + 128) = 0;
  v49 = v79;
  *(a2 + 32) = v78;
  *(a2 + 48) = v49;
  v50 = v83;
  *(a2 + 96) = v82;
  *(a2 + 112) = v50;
  v51 = v81;
  *(a2 + 64) = v80;
  *(a2 + 80) = v51;
  v52 = v77;
  *a2 = v76;
  *(a2 + 16) = v52;
  v53 = sub_100002840(&qword_1000AFEB0, &qword_10008BDC8);
  sub_1000055FC(v46, a2 + *(v53 + 48), &qword_1000AFE98, &qword_10008BD88);
  sub_1000055FC(&v76, v85, &qword_1000AFEB8, &qword_10008BDD0);
  sub_100005B2C(v62, &qword_1000AFE98, &qword_10008BD88);
  sub_100005B2C(v46, &qword_1000AFE98, &qword_10008BD88);
  v85[0] = v47;
  v85[1] = v48;
  v86 = v38;
  v87 = v14;
  v88 = v16;
  v89 = v18;
  v90 = v20;
  v91 = 0;
  v92 = a1;
  v93 = v22;
  v94 = v24;
  v95 = v26;
  v96 = v28;
  v97 = 0;
  v98 = v63;
  v99 = 0;
  return sub_100005B2C(v85, &qword_1000AFEB8, &qword_10008BDD0);
}

uint64_t sub_100074A74(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BookCoverView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100074AD8(uint64_t a1)
{
  v2 = type metadata accessor for BookCoverView(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_100074B40()
{
  result = qword_1000AFEC0;
  if (!qword_1000AFEC0)
  {
    sub_100004FC8(&qword_1000AFEC8, &qword_10008BDD8);
    sub_100004FC8(&qword_1000AFE38, &qword_10008BD08);
    sub_100005C98(&qword_1000AFE50, &qword_1000AFE38, &qword_10008BD08, &protocol conformance descriptor for HStack<A>);
    swift_getOpaqueTypeConformance2();
    sub_1000249A0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AFEC0);
  }

  return result;
}

uint64_t sub_100074C50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100002840(&qword_1000AD718, &unk_100088450);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_100080308();
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 28) + 40);
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_100074D80(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_100002840(&qword_1000AD718, &unk_100088450);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = sub_100080308();
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 28) + 40) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t type metadata accessor for BookCoverView(uint64_t a1)
{
  result = qword_1000AFF28;
  if (!qword_1000AFF28)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100074EE4(uint64_t a1)
{
  sub_100022118(319);
  if (v1 <= 0x3F)
  {
    sub_100080308();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_100074FA0@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_1000809F8();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100002840(&qword_1000ACA98, &qword_1000864C0);
  __chkstk_darwin(v8);
  v10 = &v14 - v9;
  sub_10007B5E4(v2, &v14 - v9);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_100081008();
    return (*(*(v11 - 8) + 32))(a1, v10, v11);
  }

  else
  {
    sub_100081458();
    v13 = sub_100080BA8();
    sub_100080618();

    sub_1000809E8();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v7, v4);
  }
}

uint64_t sub_100075188@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v123 = a2;
  v3 = sub_100080308();
  v92 = *(v3 - 8);
  v93 = v3;
  __chkstk_darwin(v3);
  v94 = &v78 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v122 = sub_100002840(&qword_1000AFFD8, &unk_10008BE78);
  v96 = *(v122 - 8);
  __chkstk_darwin(v122);
  v95 = &v78 - v5;
  v116 = sub_100080AF8();
  v108 = *(v116 - 8);
  __chkstk_darwin(v116);
  v107 = &v78 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v118 = sub_1000801E8();
  v124 = *(v118 - 8);
  __chkstk_darwin(v118);
  v101 = (&v78 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v102 = sub_100080478();
  v126 = *(v102 - 8);
  v8 = __chkstk_darwin(v102);
  v99 = &v78 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v100 = &v78 - v10;
  v98 = sub_1000811C8();
  v125 = *(v98 - 8);
  v11 = __chkstk_darwin(v98);
  v97 = &v78 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v14 = &v78 - v13;
  v15 = sub_1000801F8();
  __chkstk_darwin(v15 - 8);
  v117 = &v78 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v113 = sub_100002840(&qword_1000AFFB8, &qword_10008BE70);
  v104 = *(v113 - 8);
  __chkstk_darwin(v113);
  v103 = &v78 - v17;
  v115 = sub_100002840(&qword_1000AFFE0, &qword_10008BE88);
  v106 = *(v115 - 8);
  __chkstk_darwin(v115);
  v105 = &v78 - v18;
  v119 = sub_100002840(&qword_1000AFFE8, &qword_10008BE90);
  __chkstk_darwin(v119);
  v121 = &v78 - v19;
  v110 = sub_100002840(&qword_1000AFFF0, &qword_10008BE98);
  __chkstk_darwin(v110);
  v112 = &v78 - v20;
  v120 = sub_100002840(&qword_1000AFFA0, &qword_10008BE60);
  __chkstk_darwin(v120);
  v114 = &v78 - v21;
  v22 = sub_100080B68();
  v23 = *(v22 - 8);
  __chkstk_darwin(v22);
  v25 = &v78 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v109 = sub_100002840(&qword_1000AFFA8, &qword_10008BE68);
  __chkstk_darwin(v109);
  v27 = (&v78 - v26);
  v111 = sub_100002840(&qword_1000AFFF8, &qword_10008BEA0);
  v28 = *(v111 - 8);
  __chkstk_darwin(v111);
  v30 = &v78 - v29;
  v31 = sub_1000764D4();
  if (v31)
  {
    if (v31 == 1)
    {
      v32 = *(type metadata accessor for BookCoverView(0) + 28);
      v88 = a1;
      v33 = a1 + v32;
      v34 = *(v33 + 32);
      v85 = *(v33 + 40);
      v86 = v34;
      sub_100002840(&qword_1000AD620, &unk_100087690);

      v84 = sub_10007FCC8();
      v87 = sub_10007FCC8();
      v83 = sub_10007FCC8();
      v35 = v14;
      sub_100081158();
      v36 = v100;
      sub_100080448();
      v37 = *(v125 + 16);
      v95 = (v125 + 16);
      v96 = v37;
      v39 = v97;
      v38 = v98;
      (v37)(v97, v14, v98);
      v40 = *(v126 + 16);
      v93 = v126 + 16;
      v94 = v40;
      v41 = v99;
      v42 = v102;
      (v40)(v99, v36, v102);
      v79 = type metadata accessor for BundleFinder();
      v43 = v101;
      *v101 = v79;
      LODWORD(v92) = enum case for LocalizedStringResource.BundleDescription.forClass(_:);
      v91 = *(v124 + 104);
      v124 += 104;
      v91(v43);
      sub_100080208();
      v44 = *(v126 + 8);
      v126 += 8;
      v90 = v44;
      v44(v36, v42);
      v45 = *(v125 + 8);
      v125 += 8;
      v89 = v45;
      v45(v35, v38);
      v82 = sub_10007FCB8();
      sub_100002840(&qword_1000AD628, &qword_1000876A0);
      v81 = sub_10007FCA8();
      v80 = sub_100002840(&qword_1000B0040, &qword_10008BEC8);
      sub_100081158();
      sub_100080448();
      (v96)(v39, v35, v38);
      (v94)(v41, v36, v42);
      v46 = v79;
      *v43 = v79;
      (v91)(v43, v92, v118);
      sub_100080208();
      v90(v36, v42);
      v89(v35, v38);
      sub_100016584();
      v80 = sub_10007FC78();
      sub_100002840(&qword_1000B0048, &qword_10008BED0);
      sub_100081158();
      sub_100080448();
      (v96)(v39, v35, v38);
      (v94)(v41, v36, v42);
      *v43 = v46;
      (v91)(v43, v92, v118);
      sub_100080208();
      v90(v36, v42);
      v89(v35, v38);
      sub_100005C98(&qword_1000B0050, &qword_1000B0058, &qword_10008BED8, &protocol conformance descriptor for _EntityDeferredPropertyValue<A, B>);
      v47 = sub_10007FC88();
      v149 = 0uLL;
      v48 = v84;
      sub_10007FC68();
      v149 = 0uLL;
      v49 = v83;
      sub_10007FC68();
      LOBYTE(v149) = 0;
      v50 = v80;
      sub_10007FC68();
      *&v131 = v86;
      *(&v131 + 1) = v85;
      *(&v132 + 1) = v127;
      DWORD1(v132) = *(&v127 + 3);
      LOBYTE(v132) = 1;
      *(&v132 + 1) = v48;
      *&v133 = v87;
      *(&v133 + 1) = v49;
      *&v134 = v82;
      *(&v134 + 1) = v81;
      *&v135 = v50;
      *(&v135 + 1) = v47;
      v136 = 0uLL;
      v137[0] = v86;
      v137[1] = v85;
      v138 = 1;
      *v139 = v127;
      *&v139[3] = *(&v127 + 3);
      v140 = v48;
      v141 = v87;
      v142 = v49;
      v143 = v82;
      v144 = v81;
      v145 = v50;
      v146 = v47;
      v147 = 0;
      v148 = 0;
      sub_10007AD10(&v131, &v149);
      sub_10007AD6C(v137);
      v151 = v133;
      v152 = v134;
      v153 = v135;
      v154 = v136;
      v149 = v131;
      v150 = v132;
      v127 = sub_100018F28(1, &v149);
      v128 = v51;
      v129 = v52;
      __chkstk_darwin(v127);
      *(&v78 - 2) = v88;
      sub_100002840(&qword_1000B0060, &qword_10008BEE0);
      sub_10007ADC8();
      sub_100019E98();
      v53 = v103;
      sub_100080F08();
      v54 = v107;
      sub_100080AE8();
      v55 = sub_100005C98(&qword_1000AFFC0, &qword_1000AFFB8, &qword_10008BE70, &protocol conformance descriptor for Button<A>);
      v56 = sub_10007B510(&qword_1000AFFC8, &type metadata accessor for BorderlessButtonStyle, &protocol conformance descriptor for BorderlessButtonStyle);
      v57 = v105;
      v58 = v113;
      v59 = v116;
      sub_100080DA8();
      (*(v108 + 8))(v54, v59);
      (*(v104 + 8))(v53, v58);
      v60 = v106;
      v61 = v115;
      (*(v106 + 16))(v112, v57, v115);
      swift_storeEnumTagMultiPayload();
      v62 = sub_100005C98(&qword_1000AFFB0, &qword_1000AFFA8, &qword_10008BE68, &protocol conformance descriptor for ZStack<A>);
      v127 = v109;
      v128 = v62;
      swift_getOpaqueTypeConformance2();
      v127 = v58;
      v128 = v59;
      v129 = v55;
      v130 = v56;
      swift_getOpaqueTypeConformance2();
      v63 = v114;
      sub_100080AD8();
      sub_1000055FC(v63, v121, &qword_1000AFFA0, &qword_10008BE60);
      swift_storeEnumTagMultiPayload();
      sub_10007A9E4();
      sub_100005C98(&qword_1000AFFD0, &qword_1000AFFD8, &unk_10008BE78, &protocol conformance descriptor for Link<A>);
      sub_100080AD8();
      sub_100005B2C(v63, &qword_1000AFFA0, &qword_10008BE60);
      return (*(v60 + 8))(v57, v61);
    }

    else
    {
      v73 = type metadata accessor for BookCoverView(0);
      v74 = (*(v92 + 16))(v94, a1 + *(v73 + 20), v93);
      __chkstk_darwin(v74);
      *(&v78 - 2) = a1;
      sub_100002840(&qword_1000B0000, &qword_10008BEA8);
      sub_10007ABA0();
      v75 = v95;
      sub_100080CE8();
      v76 = v96;
      v77 = v122;
      v96[2](v121, v75, v122);
      swift_storeEnumTagMultiPayload();
      sub_10007A9E4();
      sub_100005C98(&qword_1000AFFD0, &qword_1000AFFD8, &unk_10008BE78, &protocol conformance descriptor for Link<A>);
      sub_100080AD8();
      return (v76[1])(v75, v77);
    }
  }

  else
  {
    *v27 = sub_100080F48();
    v27[1] = v65;
    v66 = sub_100002840(&qword_1000B0080, &qword_10008BEF0);
    sub_100076770(a1, v27 + *(v66 + 44));
    sub_100080B48();
    v67 = sub_100005C98(&qword_1000AFFB0, &qword_1000AFFA8, &qword_10008BE68, &protocol conformance descriptor for ZStack<A>);
    v68 = v109;
    sub_100080E08();
    (*(v23 + 8))(v25, v22);
    sub_100005B2C(v27, &qword_1000AFFA8, &qword_10008BE68);
    v69 = v111;
    (*(v28 + 16))(v112, v30, v111);
    swift_storeEnumTagMultiPayload();
    *&v149 = v68;
    *(&v149 + 1) = v67;
    swift_getOpaqueTypeConformance2();
    v70 = sub_100005C98(&qword_1000AFFC0, &qword_1000AFFB8, &qword_10008BE70, &protocol conformance descriptor for Button<A>);
    v71 = sub_10007B510(&qword_1000AFFC8, &type metadata accessor for BorderlessButtonStyle, &protocol conformance descriptor for BorderlessButtonStyle);
    *&v149 = v113;
    *(&v149 + 1) = v116;
    *&v150 = v70;
    *(&v150 + 1) = v71;
    swift_getOpaqueTypeConformance2();
    v72 = v114;
    sub_100080AD8();
    sub_1000055FC(v72, v121, &qword_1000AFFA0, &qword_10008BE60);
    swift_storeEnumTagMultiPayload();
    sub_10007A9E4();
    sub_100005C98(&qword_1000AFFD0, &qword_1000AFFD8, &unk_10008BE78, &protocol conformance descriptor for Link<A>);
    sub_100080AD8();
    sub_100005B2C(v72, &qword_1000AFFA0, &qword_10008BE60);
    return (*(v28 + 8))(v30, v69);
  }
}

uint64_t sub_1000764D4()
{
  v1 = v0 + *(type metadata accessor for BookCoverView(0) + 28);
  v28 = *(v1 + 64);
  v2 = *(v1 + 56);
  v29 = v2;
  v3 = sub_100081218();
  v5 = v4;
  if (v3 == sub_100081218() && v5 == v6)
  {
    v22 = v2;

    sub_10007B868(&v29);
    goto LABEL_15;
  }

  v8 = sub_100081618();
  v9 = v2;

  sub_10007B868(&v29);
  if (v8)
  {
LABEL_15:
    sub_10007B868(&v29);
    return 1;
  }

  v10 = sub_100081218();
  v12 = v11;
  if (v10 == sub_100081218() && v12 == v13)
  {
    v24 = v9;

    sub_10007B868(&v29);
    goto LABEL_18;
  }

  v15 = sub_100081618();
  v16 = v9;

  sub_10007B868(&v29);
  if (v15)
  {
LABEL_18:
    sub_10007B868(&v29);
    return 0;
  }

  v17 = sub_100081218();
  v19 = v18;
  if (v17 != sub_100081218() || v19 != v20)
  {
    v25 = sub_100081618();
    v26 = v16;

    sub_10007B868(&v29);
    if (v25)
    {
      goto LABEL_20;
    }

    if ((sub_1000112D4() & 1) == 0)
    {
      if (*(&v28 + 1))
      {

        v30._countAndFlagsBits = 1717858350;
        v30._object = 0xE400000000000000;
        v27 = sub_100081308(v30);
        sub_10007B868(&v29);

        if (v27)
        {
          return 2;
        }

        return 1;
      }

      goto LABEL_15;
    }

    goto LABEL_18;
  }

  v21 = v16;

  sub_10007B868(&v29);
LABEL_20:
  sub_10007B868(&v29);
  return 2;
}

uint64_t sub_100076770@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v73 = a2;
  v3 = type metadata accessor for BookCoverView(0);
  v62 = *(v3 - 8);
  __chkstk_darwin(v3);
  v63 = v4;
  v64 = &v57 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = sub_100002840(&qword_1000B0088, &qword_10008BEF8);
  v5 = __chkstk_darwin(v67);
  v65 = &v57 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v66 = &v57 - v7;
  v71 = sub_100002840(&qword_1000B0090, &qword_10008BF00);
  __chkstk_darwin(v71);
  v69 = &v57 - v8;
  v59 = sub_100080758();
  v58 = *(v59 - 8);
  __chkstk_darwin(v59);
  v10 = &v57 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100002840(&qword_1000B0098, &qword_10008BF08);
  v61 = *(v11 - 8);
  __chkstk_darwin(v11);
  v60 = &v57 - v12;
  v13 = sub_100081008();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v57 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_100002840(&qword_1000B00A0, &qword_10008BF10);
  v18 = __chkstk_darwin(v17 - 8);
  v72 = &v57 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v21 = &v57 - v20;
  v68 = v3;
  v22 = (a1 + *(v3 + 28));
  v23 = v22[3];
  v82 = v22[2];
  v83 = v23;
  v84 = v22[4];
  v85 = *(v22 + 80);
  v24 = v22[1];
  v80 = *v22;
  v81 = v24;
  v25 = v80;
  v70 = v82;
  sub_100074FA0(v16);
  v26 = a1;
  sub_1000764D4();
  v27 = sub_100058A10(v16);
  (*(v14 + 8))(v16, v13);
  v74 = v25;
  if (v27)
  {
    v60 = v21;
    v61 = v11;
    v57 = v26;
    v28 = v64;
    sub_100074A74(v26, v64);
    v29 = (*(v62 + 80) + 24) & ~*(v62 + 80);
    v30 = swift_allocObject();
    *(v30 + 16) = v27;
    sub_10000C384(v28, v30 + v29);
    v64 = v27;
    [v64 size];
    v76 = sub_10007AF40;
    v77 = v30;
    v78 = v31 / v32;
    v79 = 0;
    v33 = v68;
    sub_100002840(&qword_1000B0018, &qword_10008BEB0);
    sub_10007AC58();
    v34 = v65;
    sub_100080DE8();

    v75 = v25;

    if (*(&v25 + 1))
    {

      v35 = _swiftEmptyArrayStorage;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v37 = v69;
      v38 = v60;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v35 = sub_10003EE4C(0, _swiftEmptyArrayStorage[2] + 1, 1, _swiftEmptyArrayStorage);
      }

      v40 = *(v35 + 2);
      v39 = *(v35 + 3);
      if (v40 >= v39 >> 1)
      {
        v35 = sub_10003EE4C((v39 > 1), v40 + 1, 1, v35);
      }

      *(v35 + 2) = v40 + 1;
      v41 = &v35[16 * v40];
      v42 = *(&v74 + 1);
      *(v41 + 4) = v74;
      *(v41 + 5) = v42;
    }

    else
    {
      v35 = _swiftEmptyArrayStorage;
      v37 = v69;
      v38 = v60;
    }

    sub_100005B2C(&v75, &qword_1000ACE48, &unk_100086040);
    v76 = v35;
    sub_100002840(&qword_1000ACE50, &qword_1000881F0);
    sub_100005C98(&qword_1000ACE58, &qword_1000ACE50, &qword_1000881F0, &protocol conformance descriptor for [A]);
    v46 = sub_100081128();
    v48 = v47;

    v76 = v46;
    v77 = v48;
    sub_1000057D0();
    v49 = v66;
    sub_100080878();

    sub_100005B2C(v34, &qword_1000B0088, &qword_10008BEF8);
    sub_1000055FC(v49, v37, &qword_1000B0088, &qword_10008BEF8);
    swift_storeEnumTagMultiPayload();
    sub_10007AE80();
    sub_100005C98(&qword_1000B00B0, &qword_1000B0098, &qword_10008BF08, &protocol conformance descriptor for AssetCover<A>);
    sub_100080AD8();

    sub_100005B2C(v49, &qword_1000B0088, &qword_10008BEF8);
    v44 = v57;
  }

  else
  {
    sub_100080748();
    v43 = v60;
    v44 = v26;
    sub_100077120(v10, v60);
    (*(v58 + 8))(v10, v59);
    v45 = v61;
    (*(v61 + 16))(v69, v43, v11);
    swift_storeEnumTagMultiPayload();
    sub_10007AE80();
    sub_100005C98(&qword_1000B00B0, &qword_1000B0098, &qword_10008BF08, &protocol conformance descriptor for AssetCover<A>);
    sub_100080AD8();
    (*(v45 + 8))(v43, v11);
    v38 = v21;
    v33 = v68;
  }

  v50 = *(v44 + *(v33 + 32));
  v51 = v72;
  sub_1000055FC(v38, v72, &qword_1000B00A0, &qword_10008BF10);
  v52 = v73;
  sub_1000055FC(v51, v73, &qword_1000B00A0, &qword_10008BF10);
  v53 = v52 + *(sub_100002840(&qword_1000B00B8, &qword_10008BF18) + 48);
  v54 = *(&v70 + 1);
  *v53 = v70;
  *(v53 + 8) = v54;
  *(v53 + 16) = v50;
  *(v53 + 17) = 1;
  v55 = *(&v74 + 1);
  *(v53 + 24) = v74;
  *(v53 + 32) = v55;
  swift_bridgeObjectRetain_n();
  swift_bridgeObjectRetain_n();
  sub_100005B2C(v38, &qword_1000B00A0, &qword_10008BF10);

  return sub_100005B2C(v51, &qword_1000B00A0, &qword_10008BF10);
}

uint64_t sub_100077120@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v17 = a1;
  v18 = a2;
  v16 = sub_100080758();
  v2 = *(v16 - 8);
  __chkstk_darwin(v16);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100080268();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100002840(&qword_1000AD3B0, &unk_100087320);
  __chkstk_darwin(v9 - 8);
  v11 = &v15 - v10;
  v12 = sub_100080308();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  sub_1000764D4();
  (*(v13 + 56))(v11, 1, 1, v12);
  (*(v6 + 104))(v8, enum case for URL.DirectoryHint.inferFromPath(_:), v5);
  sub_1000802F8();
  (*(v2 + 16))(v4, v17, v16);
  sub_100080E48();
  sub_100080E58();

  sub_10007B510(&qword_1000B01E0, &type metadata accessor for AudiobookCoverEffect, &protocol conformance descriptor for AudiobookCoverEffect);
  return sub_100080718();
}

uint64_t sub_100077428@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v17 = a1;
  v18 = a2;
  v16 = sub_100080738();
  v2 = *(v16 - 8);
  __chkstk_darwin(v16);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100080268();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100002840(&qword_1000AD3B0, &unk_100087320);
  __chkstk_darwin(v9 - 8);
  v11 = &v15 - v10;
  v12 = sub_100080308();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  sub_1000764D4();
  (*(v13 + 56))(v11, 1, 1, v12);
  (*(v6 + 104))(v8, enum case for URL.DirectoryHint.inferFromPath(_:), v5);
  sub_1000802F8();
  (*(v2 + 16))(v4, v17, v16);
  sub_100080E48();
  sub_100080E58();

  sub_10007B510(&qword_1000B01D8, &type metadata accessor for BookCoverEffect, &protocol conformance descriptor for BookCoverEffect);
  return sub_100080718();
}

uint64_t sub_100077730@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v17 = a1;
  v18 = a2;
  v16 = sub_100080778();
  v2 = *(v16 - 8);
  __chkstk_darwin(v16);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100080268();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100002840(&qword_1000AD3B0, &unk_100087320);
  __chkstk_darwin(v9 - 8);
  v11 = &v15 - v10;
  v12 = sub_100080308();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  sub_1000764D4();
  (*(v13 + 56))(v11, 1, 1, v12);
  (*(v6 + 104))(v8, enum case for URL.DirectoryHint.inferFromPath(_:), v5);
  sub_1000802F8();
  (*(v2 + 16))(v4, v17, v16);
  sub_100080E48();
  sub_100080E58();

  sub_10007B510(&qword_1000B0170, &type metadata accessor for LegacyPDFCoverEffect, &protocol conformance descriptor for LegacyPDFCoverEffect);
  return sub_100080718();
}

void sub_100077A38(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v35 = a2;
  v3 = type metadata accessor for BookCoverView(0);
  v4 = v3 - 8;
  v32 = *(v3 - 8);
  v5 = *(v32 + 64);
  __chkstk_darwin(v3);
  v33 = sub_100002840(&qword_1000B01F0, &qword_10008C018);
  __chkstk_darwin(v33);
  v7 = &v28 - v6;
  v8 = sub_100080738();
  v29 = *(v8 - 8);
  v30 = v8;
  __chkstk_darwin(v8);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_100002840(&qword_1000B0078, &qword_10008BEE8);
  v31 = *(v34 - 8);
  __chkstk_darwin(v34);
  v12 = &v28 - v11;
  v13 = sub_100081008();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = (a1 + *(v4 + 36));
  v18 = v17[3];
  v38 = v17[2];
  v39 = v18;
  v40 = v17[4];
  v41 = *(v17 + 80);
  v19 = v17[1];
  v36 = *v17;
  v37 = v19;
  sub_100074FA0(v16);
  sub_1000764D4();
  v20 = sub_100058A10(v16);
  (*(v14 + 8))(v16, v13);
  if (v20)
  {
    sub_100074A74(a1, &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
    v21 = (*(v32 + 80) + 24) & ~*(v32 + 80);
    v22 = swift_allocObject();
    *(v22 + 16) = v20;
    sub_10000C384(&v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v22 + v21);
    v23 = v20;
    [v23 size];
    *v7 = sub_10007B9C8;
    *(v7 + 1) = v22;
    *(v7 + 2) = v24 / v25;
    *(v7 + 12) = 0;
    swift_storeEnumTagMultiPayload();

    sub_100002840(&qword_1000B0018, &qword_10008BEB0);
    sub_10007AC58();
    sub_100005C98(&qword_1000B0070, &qword_1000B0078, &qword_10008BEE8, &protocol conformance descriptor for AssetCover<A>);
    sub_100080AD8();
  }

  else
  {
    sub_100080728();
    sub_100077428(v10, v12);
    (*(v29 + 8))(v10, v30);
    v26 = v31;
    v27 = v34;
    (*(v31 + 16))(v7, v12, v34);
    swift_storeEnumTagMultiPayload();
    sub_100002840(&qword_1000B0018, &qword_10008BEB0);
    sub_10007AC58();
    sub_100005C98(&qword_1000B0070, &qword_1000B0078, &qword_10008BEE8, &protocol conformance descriptor for AssetCover<A>);
    sub_100080AD8();
    (*(v26 + 8))(v12, v27);
  }
}

void sub_100077F1C(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v35 = a2;
  v3 = type metadata accessor for BookCoverView(0);
  v4 = v3 - 8;
  v32 = *(v3 - 8);
  v5 = *(v32 + 64);
  __chkstk_darwin(v3);
  v33 = sub_100002840(&qword_1000B01F8, &qword_10008C020);
  __chkstk_darwin(v33);
  v7 = &v28 - v6;
  v8 = sub_100080778();
  v29 = *(v8 - 8);
  v30 = v8;
  __chkstk_darwin(v8);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_100002840(&qword_1000B0038, &qword_10008BEC0);
  v31 = *(v34 - 8);
  __chkstk_darwin(v34);
  v12 = &v28 - v11;
  v13 = sub_100081008();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = (a1 + *(v4 + 36));
  v18 = v17[3];
  v38 = v17[2];
  v39 = v18;
  v40 = v17[4];
  v41 = *(v17 + 80);
  v19 = v17[1];
  v36 = *v17;
  v37 = v19;
  sub_100074FA0(v16);
  sub_1000764D4();
  v20 = sub_100058A10(v16);
  (*(v14 + 8))(v16, v13);
  if (v20)
  {
    sub_100074A74(a1, &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
    v21 = (*(v32 + 80) + 24) & ~*(v32 + 80);
    v22 = swift_allocObject();
    *(v22 + 16) = v20;
    sub_10000C384(&v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v22 + v21);
    v23 = v20;
    [v23 size];
    *v7 = sub_10007B9C8;
    *(v7 + 1) = v22;
    *(v7 + 2) = v24 / v25;
    *(v7 + 12) = 0;
    swift_storeEnumTagMultiPayload();

    sub_100002840(&qword_1000B0018, &qword_10008BEB0);
    sub_10007AC58();
    sub_100005C98(&qword_1000B0030, &qword_1000B0038, &qword_10008BEC0, &protocol conformance descriptor for AssetCover<A>);
    sub_100080AD8();
  }

  else
  {
    sub_100080768();
    sub_100077730(v10, v12);
    (*(v29 + 8))(v10, v30);
    v26 = v31;
    v27 = v34;
    (*(v31 + 16))(v7, v12, v34);
    swift_storeEnumTagMultiPayload();
    sub_100002840(&qword_1000B0018, &qword_10008BEB0);
    sub_10007AC58();
    sub_100005C98(&qword_1000B0030, &qword_1000B0038, &qword_10008BEC0, &protocol conformance descriptor for AssetCover<A>);
    sub_100080AD8();
    (*(v26 + 8))(v12, v27);
  }
}

uint64_t sub_1000783F8()
{
  v1 = sub_100080478();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v5 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v37 - v6;
  v8 = sub_1000811C8();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v39 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v40 = &v37 - v12;
  v13 = type metadata accessor for BookCoverView(0);
  v41 = 0;
  v42 = v9;
  v14 = 0;
  if (*(v0 + *(v13 + 24)) == 1)
  {
    v15 = v40;
    sub_100081158();
    sub_100080448();
    (*(v9 + 16))(v39, v15, v8);
    type metadata accessor for BundleFinder();
    v16 = v2;
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v18 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
    (*(v16 + 16))(v5, v7, v1);
    v9 = v42;
    v2 = v16;
    v41 = sub_100081268();
    v14 = v19;
    (*(v2 + 8))(v7, v1);
    (*(v9 + 8))(v15, v8);
  }

  v20 = (v0 + *(v13 + 28));
  v21 = v20[1];
  if (v21)
  {
    v38 = v5;
    v22 = v1;
    v23 = *v20;

    v24 = sub_10003EE4C(0, 1, 1, _swiftEmptyArrayStorage);
    v26 = *(v24 + 2);
    v25 = *(v24 + 3);
    if (v26 >= v25 >> 1)
    {
      v24 = sub_10003EE4C((v25 > 1), v26 + 1, 1, v24);
    }

    *(v24 + 2) = v26 + 1;
    v27 = &v24[16 * v26];
    *(v27 + 4) = v23;
    *(v27 + 5) = v21;
    v1 = v22;
    v5 = v38;
    v9 = v42;
    if (v14)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v24 = _swiftEmptyArrayStorage;
    if (v14)
    {
LABEL_7:
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v24 = sub_10003EE4C(0, *(v24 + 2) + 1, 1, v24);
      }

      v29 = *(v24 + 2);
      v28 = *(v24 + 3);
      if (v29 >= v28 >> 1)
      {
        v24 = sub_10003EE4C((v28 > 1), v29 + 1, 1, v24);
      }

      *(v24 + 2) = v29 + 1;
      v30 = &v24[16 * v29];
      *(v30 + 4) = v41;
      *(v30 + 5) = v14;
      goto LABEL_14;
    }
  }

  if (!*(v24 + 2))
  {

    v33 = v40;
    sub_100081158();
    sub_100080448();
    (*(v9 + 16))(v39, v33, v8);
    type metadata accessor for BundleFinder();
    v34 = v2;
    v35 = swift_getObjCClassFromMetadata();
    v36 = [objc_opt_self() bundleForClass:v35];
    (*(v34 + 16))(v5, v7, v1);
    v31 = sub_100081268();
    (*(v34 + 8))(v7, v1);
    (*(v9 + 8))(v33, v8);
    return v31;
  }

LABEL_14:
  v43 = v24;
  sub_100002840(&qword_1000ACE50, &qword_1000881F0);
  sub_100005C98(&qword_1000ACE58, &qword_1000ACE50, &qword_1000881F0, &protocol conformance descriptor for [A]);
  v31 = sub_100081128();

  return v31;
}

double sub_100078964@<D0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v49 = a3;
  v46 = a1;
  v53 = a4;
  v5 = sub_100080868();
  v51 = *(v5 - 8);
  v52 = v5;
  __chkstk_darwin(v5);
  v50 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100081008();
  v47 = *(v7 - 8);
  v48 = v7;
  __chkstk_darwin(v7);
  v9 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100002840(&qword_1000B00C0, &qword_10008BF20);
  __chkstk_darwin(v10 - 8);
  v12 = &v41 - v11;
  v13 = sub_100080E98();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v41 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_100002840(&qword_1000B00C8, &qword_10008BF28);
  v44 = *(v17 - 8);
  v45 = v17;
  __chkstk_darwin(v17);
  v19 = &v41 - v18;
  v20 = sub_100002840(&qword_1000B00D0, &qword_10008BF30);
  __chkstk_darwin(v20 - 8);
  v42 = &v41 - v21;
  v22 = sub_100002840(&qword_1000B00D8, &qword_10008BF38);
  v23 = v22 - 8;
  __chkstk_darwin(v22);
  v25 = &v41 - v24;
  sub_1000807F8();
  [a2 size];
  v43 = a2;
  sub_100080E78();
  (*(v14 + 104))(v16, enum case for Image.ResizingMode.stretch(_:), v13);
  sub_100080EF8();

  (*(v14 + 8))(v16, v13);
  sub_100081018();
  v26 = sub_100081028();
  (*(*(v26 - 8) + 56))(v12, 0, 1, v26);
  sub_100080EE8();

  sub_100005B2C(v12, &qword_1000B00C0, &qword_10008BF20);
  v27 = v49;
  LODWORD(v12) = sub_1000764D4();
  sub_100074FA0(v9);
  v28 = v42;
  sub_100078F5C(v12, v9, v42);
  (*(v47 + 8))(v9, v48);
  (*(v44 + 8))(v19, v45);
  KeyPath = swift_getKeyPath();
  v30 = type metadata accessor for BookCoverView(0);
  v32 = v50;
  v31 = v51;
  if (*(v27 + *(v30 + 28) + 80))
  {
    v33 = &enum case for LayoutDirection.rightToLeft(_:);
  }

  else
  {
    v33 = &enum case for LayoutDirection.leftToRight(_:);
  }

  v34 = v52;
  (*(v51 + 104))(v50, *v33, v52);
  v35 = &v25[*(v23 + 44)];
  v36 = sub_100002840(&qword_1000B00E0, &qword_10008BF70);
  (*(v31 + 32))(v35 + *(v36 + 28), v32, v34);
  *v35 = KeyPath;
  sub_10000C1E0(v28, v25, &qword_1000B00D0, &qword_10008BF30);
  [v43 size];
  sub_1000807F8();
  sub_100080F48();
  sub_1000807E8();
  v37 = v53;
  sub_10000C1E0(v25, v53, &qword_1000B00D8, &qword_10008BF38);
  v38 = (v37 + *(sub_100002840(&qword_1000B00E8, &qword_10008BF78) + 36));
  v39 = v55;
  *v38 = v54;
  v38[1] = v39;
  result = *&v56;
  v38[2] = v56;
  return result;
}

uint64_t sub_100078F5C@<X0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v134 = a1;
  v140 = a3;
  v114 = sub_100002840(&qword_1000B00F0, &qword_10008BF80);
  __chkstk_darwin(v114);
  v99 = &v94 - v4;
  v104 = sub_100002840(&qword_1000B00F8, &qword_10008BF88);
  __chkstk_darwin(v104);
  v100 = &v94 - v5;
  v111 = sub_100002840(&qword_1000B0100, &qword_10008BF90);
  __chkstk_darwin(v111);
  v113 = &v94 - v6;
  v102 = sub_100002840(&qword_1000B0108, &qword_10008BF98);
  __chkstk_darwin(v102);
  v103 = &v94 - v7;
  v112 = sub_100002840(&qword_1000B0110, &qword_10008BFA0);
  __chkstk_darwin(v112);
  v105 = &v94 - v8;
  v101 = sub_100002840(&qword_1000B0118, &qword_10008BFA8);
  __chkstk_darwin(v101);
  v98 = &v94 - v9;
  v139 = sub_100002840(&qword_1000B0120, &qword_10008BFB0);
  __chkstk_darwin(v139);
  v110 = &v94 - v10;
  v137 = sub_100002840(&qword_1000B0128, &qword_10008BFB8);
  __chkstk_darwin(v137);
  v138 = &v94 - v11;
  v133 = sub_100080778();
  v119 = *(v133 - 8);
  v12 = __chkstk_darwin(v133);
  v97 = &v94 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v118 = &v94 - v14;
  v132 = sub_100002840(&qword_1000B0130, &qword_10008BFC0);
  v108 = *(v132 - 8);
  __chkstk_darwin(v132);
  v107 = &v94 - v15;
  v126 = sub_100080758();
  v117 = *(v126 - 8);
  v16 = __chkstk_darwin(v126);
  v96 = &v94 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v116 = &v94 - v18;
  v124 = sub_100002840(&qword_1000B0138, &qword_10008BFC8);
  v109 = *(v124 - 8);
  __chkstk_darwin(v124);
  v121 = &v94 - v19;
  v128 = sub_100002840(&qword_1000B0140, &qword_10008BFD0);
  __chkstk_darwin(v128);
  v131 = &v94 - v20;
  v120 = sub_100002840(&qword_1000B0148, &qword_10008BFD8);
  __chkstk_darwin(v120);
  v122 = &v94 - v21;
  v130 = sub_100002840(&qword_1000B0150, &qword_10008BFE0);
  __chkstk_darwin(v130);
  v123 = &v94 - v22;
  v125 = sub_100080738();
  v115 = *(v125 - 8);
  v23 = __chkstk_darwin(v125);
  v25 = &v94 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v27 = &v94 - v26;
  v127 = sub_100002840(&qword_1000B0158, &qword_10008BFE8);
  v106 = *(v127 - 8);
  __chkstk_darwin(v127);
  v29 = &v94 - v28;
  v136 = sub_100002840(&qword_1000B0160, &qword_10008BFF0);
  __chkstk_darwin(v136);
  v129 = &v94 - v30;
  v31 = sub_100081008();
  v32 = *(v31 - 8);
  v33 = __chkstk_darwin(v31);
  v35 = &v94 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v33);
  v37 = &v94 - v36;
  (*(v32 + 16))(&v94 - v36, a2, v31);
  sub_100080FE8();
  sub_10007B510(&qword_1000B0168, &type metadata accessor for WidgetRenderingMode, &protocol conformance descriptor for WidgetRenderingMode);
  LOBYTE(a2) = sub_100081148();
  v38 = *(v32 + 8);
  v38(v35, v31);
  if ((a2 & 1) == 0)
  {
    sub_100080FD8();
    v39 = sub_100081148();
    v38(v35, v31);
    v38(v37, v31);
    if (v39)
    {
      goto LABEL_4;
    }

    if (v134)
    {
      v64 = v110;
      if (v134 != 1)
      {
        v85 = v118;
        sub_100080768();
        v86 = v119;
        v87 = v133;
        (*(v119 + 16))(v97, v85, v133);
        sub_10007B510(&qword_1000B0170, &type metadata accessor for LegacyPDFCoverEffect, &protocol conformance descriptor for LegacyPDFCoverEffect);
        v88 = v99;
        sub_100080788();
        (*(v86 + 8))(v85, v87);
        v89 = sub_100002840(&qword_1000B00C8, &qword_10008BF28);
        (*(*(v89 - 8) + 16))(v88, v135, v89);
        v90 = &qword_1000B00F0;
        v91 = &qword_10008BF80;
        sub_1000055FC(v88, v113, &qword_1000B00F0, &qword_10008BF80);
        swift_storeEnumTagMultiPayload();
        sub_10007AF4C();
        sub_10007B178();
        sub_100080AD8();
        v92 = v88;
LABEL_16:
        sub_100005B2C(v92, v90, v91);
        v78 = &qword_1000B0120;
        v79 = &qword_10008BFB0;
        sub_1000055FC(v64, v138, &qword_1000B0120, &qword_10008BFB0);
        swift_storeEnumTagMultiPayload();
        sub_10007B248();
        sub_10007B558();
        sub_100080AD8();
        v80 = v64;
        return sub_100005B2C(v80, v78, v79);
      }

      sub_100080728();
      v65 = v115;
      v66 = v125;
      (*(v115 + 16))(v25, v27, v125);
      sub_10007B510(&qword_1000B01D8, &type metadata accessor for BookCoverEffect, &protocol conformance descriptor for BookCoverEffect);
      v67 = v98;
      sub_100080788();
      (*(v65 + 8))(v27, v66);
      v68 = sub_100002840(&qword_1000B00C8, &qword_10008BF28);
      (*(*(v68 - 8) + 16))(v67, v135, v68);
      v90 = &qword_1000B0118;
      v91 = &qword_10008BFA8;
      sub_1000055FC(v67, v103, &qword_1000B0118, &qword_10008BFA8);
      swift_storeEnumTagMultiPayload();
      sub_10007AFD8();
      sub_10007B0A8();
      v69 = v105;
      sub_100080AD8();
      sub_1000055FC(v69, v113, &qword_1000B0110, &qword_10008BFA0);
      swift_storeEnumTagMultiPayload();
      sub_10007AF4C();
      sub_10007B178();
    }

    else
    {
      v81 = v116;
      sub_100080748();
      v82 = v117;
      v83 = v126;
      (*(v117 + 16))(v96, v81, v126);
      sub_10007B510(&qword_1000B01E0, &type metadata accessor for AudiobookCoverEffect, &protocol conformance descriptor for AudiobookCoverEffect);
      v67 = v100;
      sub_100080788();
      (*(v82 + 8))(v81, v83);
      v84 = sub_100002840(&qword_1000B00C8, &qword_10008BF28);
      (*(*(v84 - 8) + 16))(v67, v135, v84);
      v90 = &qword_1000B00F8;
      v91 = &qword_10008BF88;
      sub_1000055FC(v67, v103, &qword_1000B00F8, &qword_10008BF88);
      swift_storeEnumTagMultiPayload();
      sub_10007AFD8();
      sub_10007B0A8();
      v69 = v105;
      sub_100080AD8();
      sub_1000055FC(v69, v113, &qword_1000B0110, &qword_10008BFA0);
      swift_storeEnumTagMultiPayload();
      sub_10007AF4C();
      sub_10007B178();
      v64 = v110;
    }

    sub_100080AD8();
    sub_100005B2C(v69, &qword_1000B0110, &qword_10008BFA0);
    v92 = v67;
    goto LABEL_16;
  }

  v38(v37, v31);
LABEL_4:
  if (v134)
  {
    v40 = v129;
    if (v134 == 1)
    {
      sub_100080728();
      v41 = sub_100002840(&qword_1000B00C8, &qword_10008BF28);
      OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
      v43 = sub_10007B510(&qword_1000B01D8, &type metadata accessor for BookCoverEffect, &protocol conformance descriptor for BookCoverEffect);
      v44 = v29;
      v95 = v29;
      v45 = v125;
      sub_100080D38();
      (*(v115 + 8))(v27, v45);
      v46 = v106;
      (*(v106 + 16))(v122, v44, v127);
      swift_storeEnumTagMultiPayload();
      v141 = v41;
      v142 = v45;
      v143 = OpaqueTypeConformance2;
      v144 = v43;
      swift_getOpaqueTypeConformance2();
      v47 = sub_10007B510(&qword_1000B01E0, &type metadata accessor for AudiobookCoverEffect, &protocol conformance descriptor for AudiobookCoverEffect);
      v141 = v41;
      v142 = v126;
      v143 = OpaqueTypeConformance2;
      v144 = v47;
      swift_getOpaqueTypeConformance2();
      v48 = v123;
      v49 = v127;
      sub_100080AD8();
      sub_1000055FC(v48, v131, &qword_1000B0150, &qword_10008BFE0);
      swift_storeEnumTagMultiPayload();
      sub_10007B380();
      v50 = sub_10007B510(&qword_1000B0170, &type metadata accessor for LegacyPDFCoverEffect, &protocol conformance descriptor for LegacyPDFCoverEffect);
      v141 = v41;
      v142 = v133;
      v143 = OpaqueTypeConformance2;
      v144 = v50;
      swift_getOpaqueTypeConformance2();
      sub_100080AD8();
      sub_100005B2C(v48, &qword_1000B0150, &qword_10008BFE0);
      (*(v46 + 8))(v95, v49);
    }

    else
    {
      v70 = v118;
      sub_100080768();
      v71 = sub_100002840(&qword_1000B00C8, &qword_10008BF28);
      v72 = swift_getOpaqueTypeConformance2();
      v73 = sub_10007B510(&qword_1000B0170, &type metadata accessor for LegacyPDFCoverEffect, &protocol conformance descriptor for LegacyPDFCoverEffect);
      v74 = v107;
      v75 = v133;
      sub_100080D38();
      (*(v119 + 8))(v70, v75);
      v76 = v108;
      v77 = v132;
      (*(v108 + 16))(v131, v74, v132);
      swift_storeEnumTagMultiPayload();
      sub_10007B380();
      v141 = v71;
      v142 = v75;
      v143 = v72;
      v144 = v73;
      swift_getOpaqueTypeConformance2();
      sub_100080AD8();
      (*(v76 + 8))(v74, v77);
    }
  }

  else
  {
    v51 = v116;
    sub_100080748();
    v52 = sub_100002840(&qword_1000B00C8, &qword_10008BF28);
    v53 = swift_getOpaqueTypeConformance2();
    v54 = sub_10007B510(&qword_1000B01E0, &type metadata accessor for AudiobookCoverEffect, &protocol conformance descriptor for AudiobookCoverEffect);
    v55 = v121;
    v56 = v126;
    sub_100080D38();
    (*(v117 + 8))(v51, v56);
    v57 = v109;
    v58 = v55;
    v59 = v124;
    (*(v109 + 16))(v122, v58, v124);
    swift_storeEnumTagMultiPayload();
    v60 = sub_10007B510(&qword_1000B01D8, &type metadata accessor for BookCoverEffect, &protocol conformance descriptor for BookCoverEffect);
    v141 = v52;
    v142 = v125;
    v143 = v53;
    v144 = v60;
    swift_getOpaqueTypeConformance2();
    v141 = v52;
    v142 = v56;
    v143 = v53;
    v144 = v54;
    swift_getOpaqueTypeConformance2();
    v61 = v123;
    v62 = v59;
    sub_100080AD8();
    sub_1000055FC(v61, v131, &qword_1000B0150, &qword_10008BFE0);
    swift_storeEnumTagMultiPayload();
    sub_10007B380();
    v63 = sub_10007B510(&qword_1000B0170, &type metadata accessor for LegacyPDFCoverEffect, &protocol conformance descriptor for LegacyPDFCoverEffect);
    v141 = v52;
    v142 = v133;
    v143 = v53;
    v144 = v63;
    swift_getOpaqueTypeConformance2();
    v40 = v129;
    sub_100080AD8();
    sub_100005B2C(v61, &qword_1000B0150, &qword_10008BFE0);
    (*(v57 + 8))(v121, v62);
  }

  v78 = &qword_1000B0160;
  v79 = &qword_10008BFF0;
  sub_1000055FC(v40, v138, &qword_1000B0160, &qword_10008BFF0);
  swift_storeEnumTagMultiPayload();
  sub_10007B248();
  sub_10007B558();
  sub_100080AD8();
  v80 = v40;
  return sub_100005B2C(v80, v78, v79);
}

uint64_t sub_10007A630@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v17[1] = a1;
  v3 = sub_100080B68();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100002840(&qword_1000AFF70, &qword_10008BE48);
  __chkstk_darwin(v7);
  v9 = v17 - v8;
  v10 = sub_100002840(&qword_1000AFF78, &qword_10008BE50);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v17 - v12;
  sub_100075188(v2, v9);
  sub_100080B38();
  v14 = sub_10007A8A8();
  sub_100080E08();
  (*(v4 + 8))(v6, v3);
  sub_100005B2C(v9, &qword_1000AFF70, &qword_10008BE48);
  v17[4] = sub_1000783F8();
  v17[5] = v15;
  v17[2] = v7;
  v17[3] = v14;
  swift_getOpaqueTypeConformance2();
  sub_1000057D0();
  sub_100080DD8();

  return (*(v11 + 8))(v13, v10);
}

unint64_t sub_10007A8A8()
{
  result = qword_1000AFF80;
  if (!qword_1000AFF80)
  {
    sub_100004FC8(&qword_1000AFF70, &qword_10008BE48);
    sub_10007A92C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AFF80);
  }

  return result;
}

unint64_t sub_10007A92C()
{
  result = qword_1000AFF88;
  if (!qword_1000AFF88)
  {
    sub_100004FC8(&qword_1000AFF90, &qword_10008BE58);
    sub_10007A9E4();
    sub_100005C98(&qword_1000AFFD0, &qword_1000AFFD8, &unk_10008BE78, &protocol conformance descriptor for Link<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AFF88);
  }

  return result;
}

unint64_t sub_10007A9E4()
{
  result = qword_1000AFF98;
  if (!qword_1000AFF98)
  {
    sub_100004FC8(&qword_1000AFFA0, &qword_10008BE60);
    sub_100004FC8(&qword_1000AFFA8, &qword_10008BE68);
    sub_100005C98(&qword_1000AFFB0, &qword_1000AFFA8, &qword_10008BE68, &protocol conformance descriptor for ZStack<A>);
    swift_getOpaqueTypeConformance2();
    sub_100004FC8(&qword_1000AFFB8, &qword_10008BE70);
    sub_100080AF8();
    sub_100005C98(&qword_1000AFFC0, &qword_1000AFFB8, &qword_10008BE70, &protocol conformance descriptor for Button<A>);
    sub_10007B510(&qword_1000AFFC8, &type metadata accessor for BorderlessButtonStyle, &protocol conformance descriptor for BorderlessButtonStyle);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AFF98);
  }

  return result;
}

unint64_t sub_10007ABA0()
{
  result = qword_1000B0008;
  if (!qword_1000B0008)
  {
    sub_100004FC8(&qword_1000B0000, &qword_10008BEA8);
    sub_10007AC58();
    sub_100005C98(&qword_1000B0030, &qword_1000B0038, &qword_10008BEC0, &protocol conformance descriptor for AssetCover<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B0008);
  }

  return result;
}

unint64_t sub_10007AC58()
{
  result = qword_1000B0010;
  if (!qword_1000B0010)
  {
    sub_100004FC8(&qword_1000B0018, &qword_10008BEB0);
    sub_100005C98(&qword_1000B0020, &qword_1000B0028, &qword_10008BEB8, &protocol conformance descriptor for GeometryReader<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B0010);
  }

  return result;
}

unint64_t sub_10007ADC8()
{
  result = qword_1000B0068;
  if (!qword_1000B0068)
  {
    sub_100004FC8(&qword_1000B0060, &qword_10008BEE0);
    sub_10007AC58();
    sub_100005C98(&qword_1000B0070, &qword_1000B0078, &qword_10008BEE8, &protocol conformance descriptor for AssetCover<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B0068);
  }

  return result;
}

unint64_t sub_10007AE80()
{
  result = qword_1000B00A8;
  if (!qword_1000B00A8)
  {
    sub_100004FC8(&qword_1000B0088, &qword_10008BEF8);
    sub_10007AC58();
    sub_10007B510(&qword_1000ACB10, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B00A8);
  }

  return result;
}

unint64_t sub_10007AF4C()
{
  result = qword_1000B0178;
  if (!qword_1000B0178)
  {
    sub_100004FC8(&qword_1000B0110, &qword_10008BFA0);
    sub_10007AFD8();
    sub_10007B0A8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B0178);
  }

  return result;
}

unint64_t sub_10007AFD8()
{
  result = qword_1000B0180;
  if (!qword_1000B0180)
  {
    sub_100004FC8(&qword_1000B0118, &qword_10008BFA8);
    swift_getOpaqueTypeConformance2();
    sub_100005C98(&qword_1000B0188, &qword_1000B0190, &qword_10008BFF8, &protocol conformance descriptor for _CoverEffectViewModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B0180);
  }

  return result;
}

unint64_t sub_10007B0A8()
{
  result = qword_1000B0198;
  if (!qword_1000B0198)
  {
    sub_100004FC8(&qword_1000B00F8, &qword_10008BF88);
    swift_getOpaqueTypeConformance2();
    sub_100005C98(&qword_1000B01A0, &qword_1000B01A8, &qword_10008C000, &protocol conformance descriptor for _CoverEffectViewModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B0198);
  }

  return result;
}

unint64_t sub_10007B178()
{
  result = qword_1000B01B0;
  if (!qword_1000B01B0)
  {
    sub_100004FC8(&qword_1000B00F0, &qword_10008BF80);
    swift_getOpaqueTypeConformance2();
    sub_100005C98(&qword_1000B01B8, &qword_1000B01C0, &unk_10008C008, &protocol conformance descriptor for _CoverEffectViewModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B01B0);
  }

  return result;
}

unint64_t sub_10007B248()
{
  result = qword_1000B01C8;
  if (!qword_1000B01C8)
  {
    sub_100004FC8(&qword_1000B0160, &qword_10008BFF0);
    sub_10007B380();
    sub_100004FC8(&qword_1000B00C8, &qword_10008BF28);
    sub_100080778();
    swift_getOpaqueTypeConformance2();
    sub_10007B510(&qword_1000B0170, &type metadata accessor for LegacyPDFCoverEffect, &protocol conformance descriptor for LegacyPDFCoverEffect);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B01C8);
  }

  return result;
}

unint64_t sub_10007B380()
{
  result = qword_1000B01D0;
  if (!qword_1000B01D0)
  {
    sub_100004FC8(&qword_1000B0150, &qword_10008BFE0);
    sub_100004FC8(&qword_1000B00C8, &qword_10008BF28);
    sub_100080738();
    swift_getOpaqueTypeConformance2();
    sub_10007B510(&qword_1000B01D8, &type metadata accessor for BookCoverEffect, &protocol conformance descriptor for BookCoverEffect);
    swift_getOpaqueTypeConformance2();
    sub_100080758();
    sub_10007B510(&qword_1000B01E0, &type metadata accessor for AudiobookCoverEffect, &protocol conformance descriptor for AudiobookCoverEffect);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B01D0);
  }

  return result;
}

uint64_t sub_10007B510(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_10007B558()
{
  result = qword_1000B01E8;
  if (!qword_1000B01E8)
  {
    sub_100004FC8(&qword_1000B0120, &qword_10008BFB0);
    sub_10007AF4C();
    sub_10007B178();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B01E8);
  }

  return result;
}

uint64_t sub_10007B5E4(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002840(&qword_1000ACA98, &qword_1000864C0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10007B654()
{
  v1 = type metadata accessor for BookCoverView(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(*(v1 - 8) + 64);

  v5 = v0 + v3;
  sub_100002840(&qword_1000ACA98, &qword_1000864C0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_100081008();
    (*(*(v6 - 8) + 8))(v0 + v3, v6);
  }

  else
  {
  }

  v7 = *(v1 + 20);
  v8 = sub_100080308();
  (*(*(v8 - 8) + 8))(v5 + v7, v8);
  v9 = v5 + *(v1 + 28);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

double sub_10007B7E4@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for BookCoverView(0) - 8);
  v6 = *(v2 + 16);
  v7 = v2 + ((*(v5 + 80) + 24) & ~*(v5 + 80));

  return sub_100078964(a1, v6, v7, a2);
}

uint64_t sub_10007B868(uint64_t a1)
{
  type metadata accessor for BDSLibraryContentAssetType(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_10007B8C8()
{
  result = qword_1000B0200;
  if (!qword_1000B0200)
  {
    sub_100004FC8(&qword_1000B0208, &unk_10008C028);
    sub_100004FC8(&qword_1000AFF70, &qword_10008BE48);
    sub_10007A8A8();
    swift_getOpaqueTypeConformance2();
    sub_10007B510(&qword_1000ACB10, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B0200);
  }

  return result;
}

uint64_t sub_10007BA14()
{
  type metadata accessor for InvertImagesAppEntity(0);
}

uint64_t sub_10007BA48()
{
  v0 = sub_100002840(&qword_1000AD3C8, &qword_100087330);
  __chkstk_darwin(v0 - 8);
  v28 = v21 - v1;
  v2 = sub_1000801E8();
  v26 = *(v2 - 8);
  v27 = v2;
  __chkstk_darwin(v2);
  v4 = (v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v25 = sub_100080478();
  v5 = *(v25 - 8);
  v6 = __chkstk_darwin(v25);
  v22 = v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v9 = v21 - v8;
  v10 = sub_1000811C8();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v14 = v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = v21 - v15;
  v17 = sub_1000801F8();
  v23 = *(v17 - 8);
  v24 = v17;
  __chkstk_darwin(v17);
  v18 = sub_1000800F8();
  sub_10000A794(v18, qword_1000B8078);
  v21[1] = sub_10000A480(v18, qword_1000B8078);
  sub_100081158();
  sub_100080448();
  (*(v11 + 16))(v14, v16, v10);
  v19 = v25;
  (*(v5 + 16))(v22, v9, v25);
  *v4 = type metadata accessor for BundleFinder();
  (*(v26 + 104))(v4, enum case for LocalizedStringResource.BundleDescription.forClass(_:), v27);
  sub_100080208();
  (*(v5 + 8))(v9, v19);
  (*(v11 + 8))(v16, v10);
  (*(v23 + 56))(v28, 1, 1, v24);
  return sub_1000800E8();
}

uint64_t sub_10007BE5C()
{
  v0 = sub_1000801F8();
  sub_10000A794(v0, qword_1000B8090);
  sub_10000A480(v0, qword_1000B8090);
  return sub_1000801D8();
}

uint64_t sub_10007BEC0()
{
  v0 = sub_100002840(&qword_1000AF468, &qword_10008B288);
  sub_10000A794(v0, qword_1000B80A8);
  v1 = sub_10000A480(v0, qword_1000B80A8);
  sub_10007FE78();
  v2 = sub_10007FE88();
  v3 = *(*(v2 - 8) + 56);

  return v3(v1, 0, 1, v2);
}

uint64_t sub_10007BF80()
{
  result = swift_getKeyPath();
  qword_1000B80C0 = result;
  return result;
}

uint64_t sub_10007BFA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  sub_100002840(&qword_1000AF438, &qword_10008B238);
  v3[5] = swift_task_alloc();
  sub_100002840(&qword_1000AF440, &qword_10008B240);
  v3[6] = swift_task_alloc();
  sub_100002840(&qword_1000B03E0, &qword_10008C6F8);
  v3[7] = swift_task_alloc();
  v4 = sub_10007FBF8();
  v3[8] = v4;
  v3[9] = *(v4 - 8);
  v3[10] = swift_task_alloc();
  v3[11] = type metadata accessor for InvertImagesAppEntity(0);
  v3[12] = swift_task_alloc();
  v3[13] = swift_task_alloc();
  v5 = sub_100002840(&qword_1000B03E8, &qword_10008C700);
  v3[14] = v5;
  v3[15] = *(v5 - 8);
  v3[16] = swift_task_alloc();
  v3[17] = swift_task_alloc();

  return _swift_task_switch(sub_10007C1C4, 0, 0);
}

uint64_t sub_10007C1C4()
{
  sub_10007FCE8();
  v1 = swift_task_alloc();
  v0[18] = v1;
  v2 = sub_10007E33C(&qword_1000B0268, &unk_10008C3AC);
  *v1 = v0;
  v1[1] = sub_10007C2AC;
  v3 = v0[17];
  v4 = v0[13];
  v5 = v0[11];

  return IntentDialog._CapturedContent.init<>(entity:_:)(v3, v4, sub_10007EEE0, 0, v5, v2);
}

uint64_t sub_10007C2AC()
{

  return _swift_task_switch(sub_10007C3A8, 0, 0);
}

uint64_t sub_10007C3A8()
{
  sub_10007FCE8();
  sub_10007FCE8();
  *(v0 + 177) = *(v0 + 176);
  if (qword_1000AC790 != -1)
  {
    swift_once();
  }

  v1 = qword_1000B80C0;
  *(v0 + 152) = qword_1000B80C0;

  v2 = swift_task_alloc();
  *(v0 + 160) = v2;
  v3 = sub_100005C98(&qword_1000B03B0, &qword_1000B0350, &qword_10008C658, &protocol conformance descriptor for _EntityDeferredPropertyValue<A, B>);
  *v2 = v0;
  v2[1] = sub_10007C4F8;

  return AppEntity._setValue<A, B, C>(_:for:)(v0 + 177, v1, &type metadata for Bool, v3);
}

uint64_t sub_10007C4F8()
{
  v2 = *(*v1 + 96);
  *(*v1 + 168) = v0;

  sub_10007ED68(v2);

  if (v0)
  {
    v3 = sub_10006581C;
  }

  else
  {
    v3 = sub_10007C64C;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10007C64C()
{
  v12 = v0[17];
  v2 = v0[14];
  v1 = v0[15];
  v10 = v0[16];
  v11 = v0[13];
  v3 = v0[10];
  v14 = v0[8];
  v4 = v0[5];
  v5 = v0[6];
  v13 = v0[9];
  sub_10007FCE8();
  v6 = sub_1000800C8();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  v7 = sub_100080108();
  (*(*(v7 - 8) + 56))(v4, 1, 1, v7);
  sub_10004E8A4();
  sub_10007E33C(&qword_1000B0278, &unk_10008C560);
  sub_10007FBC8();
  (*(v1 + 16))(v10, v12, v2);
  sub_10007FBE8();
  sub_10007FC18();
  (*(v13 + 8))(v3, v14);
  sub_10007ED68(v11);
  (*(v1 + 8))(v12, v2);

  v8 = v0[1];

  return v8();
}

uint64_t sub_10007C8D8()
{
  v0 = sub_100002840(&qword_1000B03F0, &qword_10008C708);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v5 - v2;
  if (qword_1000AC790 != -1)
  {
    swift_once();
  }

  sub_10007FEE8();

  type metadata accessor for InvertImagesAppEntity(0);
  sub_10007E33C(&qword_1000B0278, &unk_10008C560);
  sub_100005C98(&qword_1000B03F8, &qword_1000B03F0, &qword_10008C708, &protocol conformance descriptor for _NLGRepresentationEntity<A>);
  sub_10007FED8();
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_10007CA70(uint64_t a1)
{
  v2 = type metadata accessor for InvertImagesAppEntity(0);
  __chkstk_darwin(v2 - 8);
  sub_10007EE7C(a1, &v5 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_10007FCF8();
  return sub_10007ED68(a1);
}

void (*sub_10007CB00(uint64_t *a1))(void *a1)
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
  *(v2 + 32) = sub_10007FCD8();
  return sub_100065BC0;
}

void (*sub_10007CB74(uint64_t *a1))(void *a1)
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
  *(v2 + 32) = sub_10007FCD8();
  return sub_100068B00;
}

uint64_t sub_10007CBE8()
{
  if (qword_1000AC790 != -1)
  {
    swift_once();
  }
}

unint64_t sub_10007CC48()
{
  result = qword_1000B0230;
  if (!qword_1000B0230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B0230);
  }

  return result;
}

unint64_t sub_10007CCA0()
{
  result = qword_1000B0238;
  if (!qword_1000B0238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B0238);
  }

  return result;
}

uint64_t sub_10007CDB0@<X0>(uint64_t a1@<X8>)
{
  if (qword_1000AC788 != -1)
  {
    swift_once();
  }

  v2 = sub_100002840(&qword_1000AF468, &qword_10008B288);
  v3 = sub_10000A480(v2, qword_1000B80A8);

  return sub_10007EE0C(v3, a1);
}

uint64_t sub_10007CE34(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10000AB6C;

  return sub_10007BFA8(a1, v5, v4);
}

uint64_t sub_10007CEE0@<X0>(uint64_t *a2@<X8>)
{
  result = sub_10007E85C();
  *a2 = result;
  a2[1] = v4;
  return result;
}

unint64_t sub_10007CF28()
{
  result = qword_1000B0240;
  if (!qword_1000B0240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B0240);
  }

  return result;
}

uint64_t type metadata accessor for InvertImagesAppEntity(uint64_t a1)
{
  result = qword_1000B0338;
  if (!qword_1000B0338)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10007D01C()
{
  v1 = *(v0 + 16);
  sub_10007E810();
  v2 = sub_100081478();
  v3 = [v2 BKSettingFilterBrightImages];

  *v1 = v3;
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_10007D0D4()
{
  v1 = *(v0 + 16);
  sub_10007E810();
  v2 = sub_100081478();
  [v2 setBKSettingFilterBrightImages:v1];

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_10007D15C@<X0>(uint64_t a1@<X8>)
{
  v67 = a1;
  v1 = sub_100002840(&qword_1000AD3C0, &unk_100089100);
  __chkstk_darwin(v1 - 8);
  v66 = &v46 - v2;
  v3 = sub_100002840(&qword_1000AD3C8, &qword_100087330);
  __chkstk_darwin(v3 - 8);
  v54 = &v46 - v4;
  v53 = sub_1000801E8();
  v69 = *(v53 - 8);
  __chkstk_darwin(v53);
  v6 = (&v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v52 = sub_100080478();
  v7 = *(v52 - 8);
  v8 = __chkstk_darwin(v52);
  v10 = &v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v46 - v11;
  v13 = sub_1000811C8();
  v46 = v13;
  v68 = *(v13 - 8);
  v14 = v68;
  v15 = __chkstk_darwin(v13);
  v17 = &v46 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v19 = &v46 - v18;
  v56 = sub_1000801F8();
  v47 = *(v56 - 8);
  v51 = v47;
  v20 = __chkstk_darwin(v56);
  v49 = &v46 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v48 = &v46 - v22;
  sub_100081158();
  sub_100080448();
  v23 = *(v14 + 16);
  v64 = v14 + 16;
  v65 = v23;
  v24 = v17;
  v23(v17, v19, v13);
  v25 = v7;
  v26 = *(v7 + 16);
  v62 = v7 + 16;
  v63 = v26;
  v50 = v10;
  v27 = v52;
  v26(v10, v12, v52);
  v61 = type metadata accessor for BundleFinder();
  *v6 = v61;
  v60 = enum case for LocalizedStringResource.BundleDescription.forClass(_:);
  v28 = *(v69 + 104);
  v69 += 104;
  v59 = v28;
  v29 = v53;
  v28(v6);
  sub_100080208();
  v30 = *(v25 + 8);
  v57 = v25 + 8;
  v58 = v30;
  v30(v12, v27);
  v31 = *(v68 + 8);
  v68 += 8;
  v55 = v31;
  v32 = v46;
  v31(v19, v46);
  v33 = v54;
  sub_1000801D8();
  v34 = v51;
  (*(v51 + 56))(v33, 0, 1, v56);
  v35 = sub_10007FF18();
  (*(*(v35 - 8) + 56))(v66, 1, 1, v35);
  sub_100002840(&qword_1000AEDA8, &qword_10008B1F0);
  v36 = (*(v34 + 80) + 32) & ~*(v34 + 80);
  v37 = swift_allocObject();
  *(v37 + 16) = xmmword_100085C00;
  sub_100081158();
  sub_100080448();
  v38 = v32;
  v65(v24, v19, v32);
  v39 = v52;
  v63(v50, v12, v52);
  *v6 = v61;
  v59(v6, v60, v29);
  v40 = v49;
  sub_100080208();
  v58(v12, v39);
  v55(v19, v38);
  (*(v51 + 32))(v37 + v36, v40, v56);
  sub_1000801D8();
  v41 = v67;
  sub_10007FF28();
  v42 = type metadata accessor for InvertImagesAppEntity(0);
  v43 = (v41 + *(v42 + 20));
  *v43 = 0xD00000000000001ALL;
  v43[1] = 0x80000001000854C0;
  v44 = *(v42 + 24);
  sub_100002840(&qword_1000B0228, &qword_10008C050);
  sub_100081158();
  sub_100080448();
  v65(v24, v19, v38);
  v63(v50, v12, v39);
  *v6 = v61;
  v59(v6, v60, v53);
  sub_100080208();
  v58(v12, v39);
  v55(v19, v38);
  sub_100005C98(&qword_1000B03B0, &qword_1000B0350, &qword_10008C658, &protocol conformance descriptor for _EntityDeferredPropertyValue<A, B>);
  result = sub_100080178();
  *(v67 + v44) = result;
  return result;
}

uint64_t sub_10007DA1C()
{
  sub_10007D15C(*(v0 + 16));
  v1 = *(v0 + 8);

  return v1();
}

unint64_t sub_10007DA80()
{
  result = qword_1000B0250;
  if (!qword_1000B0250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B0250);
  }

  return result;
}

uint64_t sub_10007DAD4(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  v5 = sub_10007E020();
  *v4 = v2;
  v4[1] = sub_1000668B4;

  return _UniqueEntityQuery.allEntities()(a2, v5);
}

unint64_t sub_10007DB88()
{
  result = qword_1000B0258;
  if (!qword_1000B0258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B0258);
  }

  return result;
}

unint64_t sub_10007DBE0()
{
  result = qword_1000B0260;
  if (!qword_1000B0260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B0260);
  }

  return result;
}

uint64_t sub_10007DC34(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_10007E020();
  *v5 = v2;
  v5[1] = sub_100068B20;

  return _UniqueEntityQuery.entities(for:)(a1, a2, v6);
}

uint64_t sub_10007DCE8(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  v5 = sub_10007E020();
  *v4 = v2;
  v4[1] = sub_100068AF8;

  return _UniqueEntityQuery.suggestedEntities()(a2, v5);
}

unint64_t sub_10007DD9C()
{
  result = qword_1000B0270;
  if (!qword_1000B0270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B0270);
  }

  return result;
}

unint64_t sub_10007DDF4()
{
  result = qword_1000B0280;
  if (!qword_1000B0280)
  {
    sub_100004FC8(&qword_1000B0288, qword_10008C2F0);
    sub_10007E33C(&qword_1000B0278, &unk_10008C560);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B0280);
  }

  return result;
}

uint64_t sub_10007DE94(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_10007DA80();
  *v5 = v2;
  v5[1] = sub_1000074F4;

  return EntityQuery.results()(a1, a2, v6);
}

unint64_t sub_10007E020()
{
  result = qword_1000B02A8;
  if (!qword_1000B02A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B02A8);
  }

  return result;
}

uint64_t sub_10007E074()
{
  v0 = qword_1000B0210;

  return v0;
}

uint64_t sub_10007E1B4@<X0>(void *a1@<X2>, uint64_t (*a2)(void)@<X3>, uint64_t a3@<X4>, uint64_t a5@<X8>)
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
  v9 = sub_10000A480(v7, a3);
  v10 = *(*(v8 - 8) + 16);

  return v10(a5, v9, v8);
}

uint64_t sub_10007E2A0(uint64_t a1)
{
  v2 = sub_10007E33C(&qword_1000B0268, &unk_10008C3AC);

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

uint64_t sub_10007E33C(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for InvertImagesAppEntity(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10007E380(uint64_t a1)
{
  v2 = sub_10007E33C(&qword_1000B02C0, &unk_10008C5C0);

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

uint64_t sub_10007E40C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10007FF58();
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

uint64_t sub_10007E4E0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_10007FF58();
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

void sub_10007E59C(uint64_t a1)
{
  sub_10007FF58();
  if (v1 <= 0x3F)
  {
    sub_10007E628(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_10007E628(uint64_t a1)
{
  if (!qword_1000B0348)
  {
    type metadata accessor for InvertImagesAppEntity(255);
    sub_100004FC8(&qword_1000B0350, &qword_10008C658);
    sub_10007E33C(&qword_1000B0268, &unk_10008C3AC);
    sub_100005C98(&qword_1000B0358, &qword_1000B0350, &qword_10008C658, &protocol conformance descriptor for _EntityDeferredPropertyValue<A, B>);
    sub_10007E724();
    v1 = sub_100080188();
    if (!v2)
    {
      atomic_store(v1, &qword_1000B0348);
    }
  }
}

unint64_t sub_10007E724()
{
  result = qword_1000B0360;
  if (!qword_1000B0360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B0360);
  }

  return result;
}

unint64_t sub_10007E810()
{
  result = qword_1000B03B8;
  if (!qword_1000B03B8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1000B03B8);
  }

  return result;
}

uint64_t sub_10007E85C()
{
  v0 = sub_100002840(&qword_1000B03C0, &unk_10008C6C8);
  __chkstk_darwin(v0 - 8);
  v34 = v26 - v1;
  v35 = sub_100080078();
  v2 = *(v35 - 8);
  __chkstk_darwin(v35);
  v4 = v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100002840(&qword_1000AD410, &qword_100089110);
  v6 = __chkstk_darwin(v5 - 8);
  v8 = v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = v26 - v9;
  v11 = sub_100002840(&qword_1000B03C8, &qword_10008C6D8);
  __chkstk_darwin(v11 - 8);
  v13 = v26 - v12;
  v26[1] = v26 - v12;
  v14 = sub_100002840(&qword_1000AD3C8, &qword_100087330);
  __chkstk_darwin(v14 - 8);
  v16 = v26 - v15;
  v27 = v26 - v15;
  v17 = sub_1000801F8();
  v33 = v17;
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v31 = sub_100002840(&qword_1000B03D0, &qword_10008C6E0);
  sub_1000801D8();
  v32 = *(v18 + 56);
  v32(v16, 1, 1, v17);
  v19 = type metadata accessor for InvertImagesAppEntity(0);
  (*(*(v19 - 8) + 56))(v13, 1, 1, v19);
  v20 = sub_10007FBF8();
  v21 = *(*(v20 - 8) + 56);
  v21(v10, 1, 1, v20);
  v21(v8, 1, 1, v20);
  v30 = enum case for InputConnectionBehavior.default(_:);
  v22 = *(v2 + 104);
  v28 = v2 + 104;
  v29 = v22;
  v22(v4);
  sub_10007E33C(&qword_1000B0268, &unk_10008C3AC);
  v23 = v27;
  v31 = sub_10007FD28();
  sub_100002840(&qword_1000B03D8, &qword_10008C6E8);
  sub_1000801D8();
  v32(v23, 1, 1, v33);
  v36 = 2;
  v24 = sub_100081398();
  (*(*(v24 - 8) + 56))(v34, 1, 1, v24);
  v21(v10, 1, 1, v20);
  v29(v4, v30, v35);
  sub_10007FD38();
  return v31;
}

uint64_t sub_10007ED68(uint64_t a1)
{
  v2 = type metadata accessor for InvertImagesAppEntity(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10007EDC4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = *(a1 + *(type metadata accessor for InvertImagesAppEntity(0) + 24));
}

uint64_t sub_10007EE0C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002840(&qword_1000AF468, &qword_10008B288);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10007EE7C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for InvertImagesAppEntity(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10007EF24@<X0>(uint64_t a1@<X8>)
{
  v3 = v1[4];
  v2 = v1[5];
  v5 = v1[8];
  v4 = v1[9];
  v6 = v1[16];
  if (v6)
  {
    if (v1[15])
    {
      v7 = 0;
    }

    else
    {
      v7 = v6 == 0xE000000000000000;
    }

    if (v7)
    {
      v12 = 0;
    }

    else
    {
      v8 = v1[5];
      v9 = a1;
      v10 = sub_100081618();
      a1 = v9;
      v11 = v10;
      v2 = v8;
      v12 = v11 ^ 1;
    }
  }

  else
  {
    v12 = 1;
  }

  *a1 = v5;
  *(a1 + 8) = v4;
  *(a1 + 16) = v12 & 1;
  *(a1 + 24) = v3;
  *(a1 + 32) = v2;
}

unint64_t sub_10007EFE0()
{
  result = qword_1000B0400;
  if (!qword_1000B0400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B0400);
  }

  return result;
}

uint64_t sub_10007F048(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for EmptyStateView.ViewConfiguration(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_10007F108(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for EmptyStateView.ViewConfiguration(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for MediumEmptyStateView(uint64_t a1)
{
  result = qword_1000B0460;
  if (!qword_1000B0460)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10007F1F8(uint64_t a1)
{
  result = type metadata accessor for EmptyStateView.ViewConfiguration(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_10007F290@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *v2;
  v4 = v2[1];
  v6 = *(a1 + 20);
  v7 = type metadata accessor for EmptyStateView(0);
  sub_100024D24(v2 + v6, a2 + v7[7]);
  *a2 = swift_getKeyPath();
  sub_100002840(&qword_1000ACA98, &qword_1000864C0);
  swift_storeEnumTagMultiPayload();
  v8 = (a2 + v7[5]);
  *v8 = v5;
  v8[1] = v4;
  v9 = (a2 + v7[6]);
  *v9 = 0;
  v9[1] = 0;
  v9[2] = 0;
}

double sub_10007F37C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  if (a2)
  {
    *&v43 = a1;
    *(&v43 + 1) = a2;
    sub_1000057D0();

    v4 = sub_100080D28();
    v6 = v5;
    v8 = v7;
    if (qword_1000AC798 != -1)
    {
      swift_once();
    }

    v9 = sub_100080CF8();
    v11 = v10;
    v13 = v12;
    sub_10000EF24(v4, v6, v8 & 1);

    if (qword_1000AC7A8 != -1)
    {
      swift_once();
    }

    v14 = sub_100080CD8();
    sub_10000A480(v14, qword_1000B04A8);
    if (qword_1000AC7B0 != -1)
    {
      swift_once();
    }

    v15 = sub_100002840(&qword_1000AE358, &qword_100088360);
    sub_10000A480(v15, qword_1000B04C0);
    sub_100080C98();
    if (qword_1000AC7A0 != -1)
    {
      swift_once();
    }

    sub_100080CA8();

    v16 = sub_100080D18();
    v18 = v17;
    v20 = v19;
    v22 = v21;

    sub_10000EF24(v9, v11, v13 & 1);

    *v28 = v16;
    *&v28[8] = v18;
    v28[16] = v20 & 1;
    *(&v29 + 4) = v22;
    sub_1000721E4(v28);
  }

  else
  {
    v23 = sub_100080B08();
    sub_100080F48();
    sub_1000808F8();
    *&v35[84] = v41;
    *&v35[100] = v42;
    *&v35[52] = v39;
    *&v35[68] = v40;
    *&v35[20] = v37;
    *&v35[36] = v38;
    *&v35[4] = v36;
    v31 = *&v35[48];
    v30 = *&v35[32];
    v29 = *&v35[16];
    *&v28[4] = *v35;
    *v28 = v23;
    v34 = HIDWORD(v42);
    v33[1] = *&v35[96];
    v33[0] = *&v35[80];
    v32 = *&v35[64];
    sub_100071EF8(v28);
  }

  sub_100002840(&qword_1000AFB80, &unk_10008BB30);
  sub_10007F958();
  sub_100080AD8();
  v24 = v48;
  a3[4] = v47;
  a3[5] = v24;
  a3[6] = v49[0];
  *(a3 + 105) = *(v49 + 9);
  v25 = v44;
  *a3 = v43;
  a3[1] = v25;
  result = *&v45;
  v27 = v46;
  a3[2] = v45;
  a3[3] = v27;
  return result;
}

uint64_t sub_10007F73C(uint64_t a1)
{
  result = sub_100080E48();
  qword_1000B0498 = result;
  return result;
}

uint64_t sub_10007F77C()
{
  v0 = sub_100080CD8();
  sub_10000A794(v0, qword_1000B04A8);
  v1 = sub_10000A480(v0, qword_1000B04A8);
  v2 = enum case for Font.TextStyle.subheadline(_:);
  v3 = *(*(v0 - 8) + 104);

  return v3(v1, v2, v0);
}

uint64_t sub_10007F804()
{
  v0 = sub_100002840(&qword_1000AE358, &qword_100088360);
  sub_10000A794(v0, qword_1000B04C0);
  v1 = sub_10000A480(v0, qword_1000B04C0);
  if (_s20BooksWidgetExtension16FallBackFontSpecV03usedeF0SbyFZ_0())
  {
    v2 = sub_100080C58();
    v3 = *(*(v2 - 8) + 56);
    v4 = v2;
    v5 = v1;
    v6 = 1;
  }

  else
  {
    v7 = enum case for Font.Design.serif (_:);
    v8 = sub_100080C58();
    v10 = *(v8 - 8);
    (*(v10 + 104))(v1, v7, v8);
    v3 = *(v10 + 56);
    v5 = v1;
    v6 = 0;
    v4 = v8;
  }

  return v3(v5, v6, 1, v4);
}

unint64_t sub_10007F958()
{
  result = qword_1000AFB88;
  if (!qword_1000AFB88)
  {
    sub_100004FC8(&qword_1000AFB80, &unk_10008BB30);
    sub_10005C128();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AFB88);
  }

  return result;
}

unint64_t sub_10007F9E8()
{
  result = qword_1000B04D8;
  if (!qword_1000B04D8)
  {
    sub_100004FC8(&qword_1000B04E0, &unk_10008C940);
    sub_10007F958();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B04D8);
  }

  return result;
}