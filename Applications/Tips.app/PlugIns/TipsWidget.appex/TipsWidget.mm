uint64_t sub_1000017C8@<X0>(void *a1@<X1>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for HorizontalTipViewWithBody(0);
  v5 = (v4 - 8);
  __chkstk_darwin(v4);
  v7 = v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = v5[7];
  v9 = enum case for WidgetFamily.systemMedium(_:);
  v10 = sub_10001A12C();
  (*(*(v10 - 8) + 104))(&v7[v8], v9, v10);
  v11 = a1;
  sub_10001996C();
  v13 = v12;
  sub_10001996C();
  v15 = v14;
  KeyPath = swift_getKeyPath();
  v7[32] = 0;
  *v7 = KeyPath;
  *(v7 + 1) = 0;
  *(v7 + 2) = 0;
  *(v7 + 3) = 0;
  *&v7[v5[8]] = a1;
  *&v7[v5[9]] = v13;
  *&v7[v5[10]] = v15;
  sub_10001996C();
  sub_10001996C();
  sub_10001A01C();
  sub_10001995C();
  sub_100002130(v7, a2);
  v17 = (a2 + *(sub_100001A1C(&qword_1000284C0, &unk_10001AD40) + 36));
  v18 = v20[1];
  *v17 = v20[0];
  v17[1] = v18;
  v17[2] = v20[2];
  return sub_100002194(v7);
}

uint64_t sub_100001988@<X0>(uint64_t (**a1)@<X0>(uint64_t a1@<X8>)@<X8>)
{
  v5 = *v1;
  v3 = swift_allocObject();
  *(v3 + 16) = v5;
  *a1 = sub_100002128;
  a1[1] = v3;

  return _objc_retain_x1();
}

uint64_t sub_100001A1C(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_100001B3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void), uint64_t (*a6)(char *))
{
  v8 = (a5)(0);
  v9 = __chkstk_darwin(v8);
  v11 = &v14 - v10;
  (*(v12 + 16))(&v14 - v10, a1, v9);
  return a6(v11);
}

uint64_t sub_100001C30@<X0>(uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X8>)
{
  *a4 = swift_getKeyPath();
  sub_100001A1C(a2, a3);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_100001C90(__int128 *a1)
{
  v2 = *a1;
  if (sub_100019334(2, 17, 0, 0))
  {
    return swift_getOpaqueTypeMetadata2();
  }

  else
  {
    return v2;
  }
}

uint64_t sub_100001D04(uint64_t *a1)
{
  v1 = a1[1];
  if (sub_100019334(2, 17, 0, 0))
  {
    return swift_getOpaqueTypeConformance2();
  }

  return v1;
}

uint64_t sub_100001D70(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t variable initialization expression of DocumentEntry.relevance@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_10001A1EC();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

uint64_t sub_100001E4C()
{
  sub_100019B2C();
  sub_10000249C(&qword_1000284C8, &type metadata accessor for EnvironmentValues.ShowsWidgetBackgroundKey, &protocol conformance descriptor for EnvironmentValues.ShowsWidgetBackgroundKey);
  sub_100019BAC();
  return v1;
}

void *sub_100001EC8@<X0>(_BYTE *a1@<X8>)
{
  sub_100019B2C();
  sub_10000249C(&qword_1000284C8, &type metadata accessor for EnvironmentValues.ShowsWidgetBackgroundKey, &protocol conformance descriptor for EnvironmentValues.ShowsWidgetBackgroundKey);
  result = sub_100019BAC();
  *a1 = v3;
  return result;
}

uint64_t variable initialization expression of SquareTitleView._contentMargins@<X0>(uint64_t a1@<X8>)
{
  result = swift_getKeyPath();
  *a1 = result;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  return result;
}

__n128 sub_100001FA0(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_100001FB0(uint64_t a1, int a2)
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

uint64_t sub_100001FD0(uint64_t result, int a2, int a3)
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

uint64_t sub_100002018(uint64_t *a1, unsigned int a2)
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

uint64_t sub_100002074(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1000020F0()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100002130(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HorizontalTipViewWithBody(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100002194(uint64_t a1)
{
  v2 = type metadata accessor for HorizontalTipViewWithBody(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_100002204(uint64_t a1, unint64_t *a2, uint64_t a3)
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

uint64_t sub_100002294(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_100001D70(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

Swift::Int sub_100002380(uint64_t a1, uint64_t a2)
{
  sub_10001A3EC();
  swift_getWitnessTable();
  sub_1000198DC();
  return sub_10001A3FC();
}

uint64_t sub_1000023E8(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  swift_getWitnessTable();

  return sub_1000198CC();
}

uint64_t sub_10000249C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100002534()
{
  v0 = sub_10001989C();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100003AB8(v4, qword_10002A3A0);
  v5 = sub_100003A18(v0, qword_10002A3A0);
  v6 = objc_opt_self();
  v7 = TPSAnalyticsLaunchTypeWidget;
  v8 = [v6 URLWithTipIdentifier:0 collectionIdentifier:0 referrer:v7];

  sub_10001987C();
  return (*(v1 + 32))(v5, v3, v0);
}

uint64_t sub_100002678@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_100001A1C(&qword_1000284F8, &unk_10001C000);
  __chkstk_darwin(v4 - 8);
  v6 = v29 - v5;
  v7 = sub_100001A1C(&qword_100028A30, &qword_10001AE60);
  __chkstk_darwin(v7 - 8);
  v9 = v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = v29 - v11;
  v13 = sub_10001A12C();
  v14 = *(v13 - 8);
  v15 = __chkstk_darwin(v13);
  v17 = v29 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v14 + 104))(v17, enum case for WidgetFamily.accessoryCircular(_:), v13, v15);
  sub_1000039D0(&qword_1000285D0, &type metadata accessor for WidgetFamily, &protocol conformance descriptor for WidgetFamily);
  sub_10001A25C();
  sub_10001A25C();
  (*(v14 + 8))(v17, v13);
  if (v29[1] != v29[0])
  {
    sub_1000031E0(a1, v6, &qword_1000284F8, &unk_10001C000);
    v18 = type metadata accessor for DocumentEntry(0);
    if ((*(*(v18 - 8) + 48))(v6, 1, v18) == 1)
    {
      sub_100003504(v6, &qword_1000284F8, &unk_10001C000);
    }

    else
    {
      v19 = *&v6[*(v18 + 24)];
      v20 = v19;
      sub_100003564(v6);
      if (v19)
      {
        v21 = [v20 URLWithReferrer:TPSAnalyticsLaunchTypeWidget];

        if (v21)
        {
          sub_10001987C();

          v22 = 0;
        }

        else
        {
          v22 = 1;
        }

        v27 = sub_10001989C();
        v28 = *(v27 - 8);
        (*(v28 + 56))(v9, v22, 1, v27);
        sub_100003A50(v9, v12, &qword_100028A30, &qword_10001AE60);
        if ((*(v28 + 48))(v12, 1, v27) != 1)
        {
          return (*(v28 + 32))(a2, v12, v27);
        }

        goto LABEL_8;
      }
    }

    v23 = sub_10001989C();
    (*(*(v23 - 8) + 56))(v12, 1, 1, v23);
LABEL_8:
    sub_100003504(v12, &qword_100028A30, &qword_10001AE60);
  }

  if (qword_100028450 != -1)
  {
    swift_once();
  }

  v24 = sub_10001989C();
  v25 = sub_100003A18(v24, qword_10002A3A0);
  return (*(*(v24 - 8) + 16))(a2, v25, v24);
}

uint64_t TipsWidgetWrapperView.family.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_100019B9C();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100001A1C(&qword_100028470, &qword_10001AB80);
  __chkstk_darwin(v8);
  v10 = &v14 - v9;
  sub_1000031E0(v2, &v14 - v9, &qword_100028470, &qword_10001AB80);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_10001A12C();
    return (*(*(v11 - 8) + 32))(a1, v10, v11);
  }

  else
  {
    sub_10001A29C();
    v13 = sub_100019CEC();
    sub_1000198FC();

    sub_100019B8C();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v7, v4);
  }
}

uint64_t TipsWidgetWrapperView.init(entry:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  *a2 = swift_getKeyPath();
  sub_100001A1C(&qword_100028470, &qword_10001AB80);
  swift_storeEnumTagMultiPayload();
  v5 = type metadata accessor for TipsWidgetWrapperView(0);
  return sub_100003A50(a1, a2 + *(v5 + 20), &qword_1000284F8, &unk_10001C000);
}

uint64_t type metadata accessor for TipsWidgetWrapperView(uint64_t a1)
{
  result = qword_100028588;
  if (!qword_100028588)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t TipsWidgetWrapperView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v30 = a1;
  v3 = sub_10001A12C();
  v28 = *(v3 - 8);
  v29 = v3;
  __chkstk_darwin(v3);
  v27 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100001A1C(&qword_100028A30, &qword_10001AE60);
  __chkstk_darwin(v5 - 8);
  v7 = &v25 - v6;
  v8 = sub_100001A1C(&qword_1000284F8, &unk_10001C000);
  __chkstk_darwin(v8 - 8);
  v10 = &v25 - v9;
  v11 = type metadata accessor for TipsWidgetView(0);
  v12 = v11 - 8;
  __chkstk_darwin(v11);
  v14 = (&v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v26 = sub_100001A1C(&qword_100028500, &qword_10001AE68);
  __chkstk_darwin(v26);
  v16 = &v25 - v15;
  v17 = *(type metadata accessor for TipsWidgetWrapperView(0) + 20);
  sub_1000031E0(v2 + v17, v14 + *(v12 + 28), &qword_1000284F8, &unk_10001C000);
  *v14 = swift_getKeyPath();
  sub_100001A1C(&qword_100028470, &qword_10001AB80);
  swift_storeEnumTagMultiPayload();
  KeyPath = swift_getKeyPath();
  sub_1000031E0(v2 + v17, v10, &qword_1000284F8, &unk_10001C000);
  v19 = type metadata accessor for DocumentEntry(0);
  if ((*(*(v19 - 8) + 48))(v10, 1, v19) == 1)
  {
    sub_100003504(v10, &qword_1000284F8, &unk_10001C000);
    v20 = 1;
  }

  else
  {
    v20 = DocumentEntry.isPlaceholder.getter();
    sub_100003564(v10);
  }

  sub_100003380(v14, v16);
  v21 = &v16[*(v26 + 36)];
  *v21 = KeyPath;
  v21[8] = v20 & 1;
  v22 = v27;
  TipsWidgetWrapperView.family.getter(v27);
  sub_100002678(v2 + v17, v7);
  (*(v28 + 8))(v22, v29);
  v23 = sub_10001989C();
  (*(*(v23 - 8) + 56))(v7, 0, 1, v23);
  sub_1000033E4();
  sub_100019DFC();
  sub_100003504(v7, &qword_100028A30, &qword_10001AE60);
  return sub_100003504(v16, &qword_100028500, &qword_10001AE68);
}

uint64_t sub_1000031E0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100001A1C(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

void *sub_100003248@<X0>(_BYTE *a1@<X8>)
{
  sub_100003B1C();
  result = sub_100019BAC();
  *a1 = v3;
  return result;
}

void *sub_100003298@<X0>(_BYTE *a1@<X8>)
{
  sub_100003B1C();
  result = sub_100019BAC();
  *a1 = v3;
  return result;
}

uint64_t sub_100003380(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TipsWidgetView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1000033E4()
{
  result = qword_100028508;
  if (!qword_100028508)
  {
    sub_100001D70(&qword_100028500, &qword_10001AE68);
    sub_1000039D0(&qword_100028510, type metadata accessor for TipsWidgetView, &unk_10001B1D4);
    sub_1000034A0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100028508);
  }

  return result;
}

unint64_t sub_1000034A0()
{
  result = qword_100028518;
  if (!qword_100028518)
  {
    sub_100001D70(&qword_100028520, &qword_10001AE98);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100028518);
  }

  return result;
}

uint64_t sub_100003504(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_100001A1C(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_100003564(uint64_t a1)
{
  v2 = type metadata accessor for DocumentEntry(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000035F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100001A1C(&qword_100028528, &unk_10001BFF0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = sub_100001A1C(&qword_1000284F8, &unk_10001C000);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_100003710(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_100001A1C(&qword_100028528, &unk_10001BFF0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = sub_100001A1C(&qword_1000284F8, &unk_10001C000);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

void sub_100003824(uint64_t a1)
{
  sub_100003908(319, &qword_100028598, &type metadata accessor for WidgetFamily, &type metadata accessor for Environment);
  if (v1 <= 0x3F)
  {
    sub_100003908(319, &unk_1000285A0, type metadata accessor for DocumentEntry, &type metadata accessor for Optional);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_100003908(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_10000396C()
{
  sub_100001D70(&qword_100028500, &qword_10001AE68);
  sub_1000033E4();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1000039D0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100003A18(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_100003A50(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100001A1C(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t *sub_100003AB8(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

unint64_t sub_100003B1C()
{
  result = qword_1000285D8;
  if (!qword_1000285D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000285D8);
  }

  return result;
}

uint64_t sub_100003B70@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_100019B9C();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100001A1C(&qword_100028478, &qword_10001AF50);
  __chkstk_darwin(v8);
  v10 = &v14 - v9;
  sub_1000031E0(v2, &v14 - v9, &qword_100028478, &qword_10001AF50);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_10001992C();
    return (*(*(v11 - 8) + 32))(a1, v10, v11);
  }

  else
  {
    sub_10001A29C();
    v13 = sub_100019CEC();
    sub_1000198FC();

    sub_100019B8C();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v7, v4);
  }
}

uint64_t sub_100003D70@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100019B9C();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100001A1C(&qword_100028480, qword_10001ABF0);
  __chkstk_darwin(v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for LargeTipView(0);
  sub_1000031E0(v1 + *(v10 + 20), v9, &qword_100028480, qword_10001ABF0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_10001A0FC();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    sub_10001A29C();
    v13 = sub_100019CEC();
    sub_1000198FC();

    sub_100019B8C();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

double sub_100003F78@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_10001997C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v9 = v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for LargeTipView.LargeTipWidgetConfiguration(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10 - 8);
  v13 = *(a2 + 8);
  sub_10001996C();
  v15 = v14;
  sub_1000062F0(a2, v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for LargeTipView.LargeTipWidgetConfiguration);
  (*(v7 + 16))(v9, a1, v6);
  v16 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v17 = (v12 + *(v7 + 80) + v16) & ~*(v7 + 80);
  v18 = swift_allocObject();
  sub_1000067AC(v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v18 + v16, type metadata accessor for LargeTipView.LargeTipWidgetConfiguration);
  (*(v7 + 32))(v18 + v17, v9, v6);
  sub_10001996C();
  v20 = v19;
  sub_10001996C();
  v22 = v21;
  sub_10001996C();
  sub_10001A01C();
  if (v20 > v22)
  {
    sub_10001A29C();
    v23 = sub_100019CEC();
    sub_1000198FC();
  }

  sub_100019A1C();
  *a3 = 0x3FF0000000000000;
  *(a3 + 8) = 1.0 - v13 / v15;
  *(a3 + 16) = 0;
  v24 = v28[2];
  *(a3 + 88) = v28[3];
  v25 = v28[5];
  *(a3 + 104) = v28[4];
  *(a3 + 120) = v25;
  *(a3 + 136) = v28[6];
  result = *v28;
  v27 = v28[1];
  *(a3 + 40) = v28[0];
  *(a3 + 56) = v27;
  *(a3 + 24) = sub_1000055D4;
  *(a3 + 32) = v18;
  *(a3 + 72) = v24;
  return result;
}

uint64_t sub_1000042AC@<X0>(uint64_t a1@<X0>, uint64_t a3@<X8>)
{
  *a3 = sub_100019C3C();
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  v5 = sub_100001A1C(&qword_100028788, &qword_10001B0A0);
  return sub_100004310(a1, a3 + *(v5 + 44));
}

uint64_t sub_100004310@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v45 = a2;
  v3 = type metadata accessor for HorizontalTipViewWithBody(0);
  v4 = (v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = sub_100001A1C(&qword_100028790, &qword_10001B0A8);
  __chkstk_darwin(v42);
  v44 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v41 - v9;
  __chkstk_darwin(v11);
  v13 = &v41 - v12;
  v14 = type metadata accessor for ImageView(0);
  v15 = v14 - 8;
  __chkstk_darwin(v14);
  v43 = &v41 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = &v41 - v18;
  v20 = *(a1 + 16);
  v21 = *(type metadata accessor for LargeTipView.LargeTipWidgetConfiguration(0) + 24);
  v22 = *(v15 + 32);
  v23 = sub_10001992C();
  (*(*(v23 - 8) + 16))(&v19[v22], a1 + v21, v23);
  *v19 = swift_getKeyPath();
  v19[8] = 0;
  *(v19 + 2) = v20;
  v24 = v4[7];
  v25 = enum case for WidgetFamily.systemLarge(_:);
  v26 = sub_10001A12C();
  (*(*(v26 - 8) + 104))(&v6[v24], v25, v26);
  v27 = v20;
  sub_10001996C();
  v29 = v28;
  v30 = *(a1 + 8);
  KeyPath = swift_getKeyPath();
  v6[32] = 0;
  *v6 = KeyPath;
  *(v6 + 1) = 0;
  *(v6 + 2) = 0;
  *(v6 + 3) = 0;
  *&v6[v4[8]] = v20;
  *&v6[v4[9]] = v29;
  *&v6[v4[10]] = v30;
  sub_10001996C();
  sub_10001A02C();
  sub_100019A1C();
  sub_1000062F0(v6, v10, type metadata accessor for HorizontalTipViewWithBody);
  v32 = &v10[*(v42 + 36)];
  v33 = v51;
  *(v32 + 4) = v50;
  *(v32 + 5) = v33;
  *(v32 + 6) = v52;
  v34 = v47;
  *v32 = v46;
  *(v32 + 1) = v34;
  v35 = v49;
  *(v32 + 2) = v48;
  *(v32 + 3) = v35;
  sub_100006358(v6, type metadata accessor for HorizontalTipViewWithBody);
  sub_100003A50(v10, v13, &qword_100028790, &qword_10001B0A8);
  v36 = v43;
  sub_1000062F0(v19, v43, type metadata accessor for ImageView);
  v37 = v44;
  sub_1000031E0(v13, v44, &qword_100028790, &qword_10001B0A8);
  v38 = v45;
  sub_1000062F0(v36, v45, type metadata accessor for ImageView);
  v39 = sub_100001A1C(&qword_100028798, &qword_10001B110);
  sub_1000031E0(v37, v38 + *(v39 + 48), &qword_100028790, &qword_10001B0A8);
  sub_100003504(v13, &qword_100028790, &qword_10001B0A8);
  sub_100006358(v19, type metadata accessor for ImageView);
  sub_100003504(v37, &qword_100028790, &qword_10001B0A8);
  return sub_100006358(v36, type metadata accessor for ImageView);
}

uint64_t sub_1000047C0@<X0>(uint64_t a1@<X0>, double (**a2)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)@<X8>)
{
  v4 = *(a1 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(a1 - 8);
  sub_1000062F0(v2, &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for LargeTipView.LargeTipWidgetConfiguration);
  v6 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = sub_1000067AC(&v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + v6, type metadata accessor for LargeTipView.LargeTipWidgetConfiguration);
  *a2 = sub_1000053E8;
  a2[1] = v7;
  return result;
}

uint64_t LargeTipView.init(widgetContent:unitSize:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>, double a3@<D0>, double a4@<D1>)
{
  *a2 = swift_getKeyPath();
  sub_100001A1C(&qword_100028478, &qword_10001AF50);
  swift_storeEnumTagMultiPayload();
  v8 = type metadata accessor for LargeTipView(0);
  v9 = v8[5];
  *(a2 + v9) = swift_getKeyPath();
  sub_100001A1C(&qword_100028480, qword_10001ABF0);
  result = swift_storeEnumTagMultiPayload();
  *(a2 + v8[6]) = a1;
  v11 = (a2 + v8[7]);
  *v11 = a3;
  v11[1] = a4;
  return result;
}

uint64_t LargeTipView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_10001A0FC();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v27 - v8;
  v10 = sub_100001A1C(&qword_1000285E0, &qword_10001AF90);
  __chkstk_darwin(v10 - 8);
  v12 = (&v27 - v11);
  v13 = type metadata accessor for LargeTipView(0);
  v14 = (v1 + *(v13 + 28));
  v15 = *v14;
  v16 = v14[1];
  v17 = *(v1 + *(v13 + 24));
  v18 = *(type metadata accessor for LargeTipView.LargeTipWidgetConfiguration(0) + 24);
  v19 = v17;
  sub_100003B70(v12 + v18);
  *v12 = v15;
  v12[1] = v16;
  v12[2] = v17;
  sub_100003D70(v9);
  sub_10001A0EC();
  sub_100005254(&qword_1000285E8, &type metadata accessor for WidgetRenderingMode, &protocol conformance descriptor for WidgetRenderingMode);
  LOBYTE(v17) = sub_10001A21C();
  v20 = *(v4 + 8);
  v20(v6, v3);
  v20(v9, v3);
  v21 = 0;
  if ((v17 & 1) == 0)
  {
    sub_10000509C(0, &qword_1000285F0, UIColor_ptr);
    sub_10001A2DC();
    v21 = sub_100019F3C();
  }

  v22 = sub_10001A02C();
  v24 = v23;
  sub_100003A50(v12, a1, &qword_1000285E0, &qword_10001AF90);
  result = sub_100001A1C(&qword_1000285F8, &qword_10001AF98);
  v26 = (a1 + *(result + 36));
  *v26 = v21;
  v26[1] = v22;
  v26[2] = v24;
  return result;
}

uint64_t sub_100004C90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100001A1C(&qword_100028600, &qword_10001AFF8);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_100001A1C(&qword_100028608, &unk_10001B000);
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

  v15 = v14 - 1;
  if (v15 < 0)
  {
    v15 = -1;
  }

  return (v15 + 1);
}

uint64_t sub_100004DD4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_100001A1C(&qword_100028600, &qword_10001AFF8);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = sub_100001A1C(&qword_100028608, &unk_10001B000);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24)) = a2;
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

void sub_100004EF4(uint64_t a1)
{
  sub_100004FE0(319, &qword_100028678, &type metadata accessor for ColorScheme);
  if (v1 <= 0x3F)
  {
    sub_100004FE0(319, &qword_100028680, &type metadata accessor for WidgetRenderingMode);
    if (v2 <= 0x3F)
    {
      sub_100005034(319);
      if (v3 <= 0x3F)
      {
        type metadata accessor for CGSize(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_100004FE0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_10001993C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_100005034(uint64_t a1)
{
  if (!qword_100028688)
  {
    sub_10000509C(255, &unk_100028690, TPSWidgetContent_ptr);
    v1 = sub_10001A30C();
    if (!v2)
    {
      atomic_store(v1, &qword_100028688);
    }
  }
}

uint64_t sub_10000509C(uint64_t a1, unint64_t *a2, void *a3)
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

unint64_t sub_1000050E8()
{
  result = qword_1000286C8;
  if (!qword_1000286C8)
  {
    sub_100001D70(&qword_1000285F8, &qword_10001AF98);
    sub_1000051A0();
    sub_100002294(&qword_1000286E0, &qword_1000286E8, &unk_10001B020, &protocol conformance descriptor for _BackgroundModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000286C8);
  }

  return result;
}

unint64_t sub_1000051A0()
{
  result = qword_1000286D0;
  if (!qword_1000286D0)
  {
    sub_100001D70(&qword_1000285E0, &qword_10001AF90);
    sub_100005254(&qword_1000286D8, type metadata accessor for LargeTipView.LargeTipWidgetConfiguration, &unk_10001B04C);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000286D0);
  }

  return result;
}

uint64_t sub_100005254(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100005300()
{
  v1 = (type metadata accessor for LargeTipView.LargeTipWidgetConfiguration(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);

  v5 = v1[8];
  v6 = sub_10001992C();
  (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

double sub_1000053E8@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for LargeTipView.LargeTipWidgetConfiguration(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_100003F78(a1, v6, a2);
}

uint64_t sub_100005468()
{
  v1 = (type metadata accessor for LargeTipView.LargeTipWidgetConfiguration(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = sub_10001997C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 80);
  v8 = (v3 + v4 + v7) & ~v7;
  v9 = *(v6 + 64);
  v10 = v2 | v7;
  v11 = v0 + v3;

  v12 = v1[8];
  v13 = sub_10001992C();
  (*(*(v13 - 8) + 8))(v11 + v12, v13);
  (*(v6 + 8))(v0 + v8, v5);

  return _swift_deallocObject(v0, v8 + v9, v10 | 7);
}

uint64_t sub_1000055D4@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for LargeTipView.LargeTipWidgetConfiguration(0) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  sub_10001997C();

  return sub_1000042AC(v1 + v4, a1);
}

uint64_t sub_1000056C8(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100005700()
{
  v0 = sub_10001992C();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v17 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10001A09C();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10001A08C();
  sub_10001A0CC();
  (*(v5 + 8))(v7, v4);
  v8 = [objc_allocWithZone(type metadata accessor for Assets()) init];
  v9 = sub_10000780C();
  v18 = v10;

  type metadata accessor for ImageView(0);
  v11 = *(v1 + 104);
  v11(v3, enum case for ColorScheme.light(_:), v0);
  LOBYTE(v8) = sub_10001991C();
  v12 = *(v1 + 8);
  v12(v3, v0);
  if ((v8 & 1) == 0 || !v9)
  {
    v11(v3, enum case for ColorScheme.dark(_:), v0);
    v14 = sub_10001991C();
    v12(v3, v0);
    if (v14)
    {
      if (v18)
      {
        v15 = v18;
        v13 = sub_100019F4C();

        return v13;
      }
    }

    else
    {
    }

    return 0;
  }

  v13 = sub_100019F4C();

  return v13;
}

double sub_1000059AC@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for ImageView(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4 - 8);
  v7 = sub_100005700();
  if (v7)
  {
    v8 = v7;
    sub_1000062F0(a1, &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ImageView);
    v9 = (*(v5 + 80) + 24) & ~*(v5 + 80);
    v10 = swift_allocObject();
    *(v10 + 16) = v8;
    sub_1000067AC(&v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v10 + v9, type metadata accessor for ImageView);
    v16 = sub_100006814;
    v17 = v10;
    v18 = 0;
  }

  else
  {
    v11 = [objc_opt_self() whiteColor];
    sub_100019F3C();
    v12 = sub_100019EEC();

    v16 = v12;
    v17 = 0;
    v18 = 1;
  }

  sub_100001A1C(&qword_100028850, &qword_10001B180);
  sub_100002294(&qword_100028858, &qword_100028850, &qword_10001B180, &protocol conformance descriptor for GeometryReader<A>);
  sub_100019CBC();
  result = *&v19;
  v14 = v20;
  *a2 = v19;
  *(a2 + 16) = v14;
  return result;
}

uint64_t sub_100005BB0@<X0>(uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v46 = a2;
  v49 = a3;
  v50 = sub_100019C2C();
  v48 = *(v50 - 8);
  __chkstk_darwin(v50);
  v47 = &v41 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100001A1C(&qword_100028860, &qword_10001B188);
  __chkstk_darwin(v4 - 8);
  v6 = &v41 - v5;
  v7 = sub_100019F5C();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = sub_100001A1C(&qword_100028868, &qword_10001B190);
  v11 = *(v42 - 8);
  __chkstk_darwin(v42);
  v13 = &v41 - v12;
  v41 = sub_100001A1C(&qword_100028870, &qword_10001B198);
  __chkstk_darwin(v41);
  v15 = &v41 - v14;
  v43 = sub_100001A1C(&qword_100028878, &qword_10001B1A0);
  __chkstk_darwin(v43);
  v17 = &v41 - v16;
  v44 = sub_100001A1C(&qword_100028880, &qword_10001B1A8);
  v18 = __chkstk_darwin(v44);
  v45 = &v41 - v19;
  (*(v8 + 104))(v10, enum case for Image.ResizingMode.stretch(_:), v7, v18);
  sub_100019F9C();
  (*(v8 + 8))(v10, v7);
  sub_10001A10C();
  v20 = sub_10001A11C();
  (*(*(v20 - 8) + 56))(v6, 0, 1, v20);
  sub_100019F8C();

  sub_100003504(v6, &qword_100028860, &qword_10001B188);
  sub_10001996C();
  sub_10001996C();
  sub_10001A02C();
  sub_100019A1C();
  (*(v11 + 32))(v15, v13, v42);
  v21 = &v15[*(v41 + 36)];
  v22 = v58;
  *(v21 + 4) = v57;
  *(v21 + 5) = v22;
  *(v21 + 6) = v59;
  v23 = v54;
  *v21 = v53;
  *(v21 + 1) = v23;
  v24 = v56;
  *(v21 + 2) = v55;
  *(v21 + 3) = v24;
  sub_100006898(v15, v17);
  v25 = &v17[*(v43 + 36)];
  *v25 = 0;
  *(v25 + 4) = 257;
  v26 = *(v46 + 16);
  if (v26 && (v27 = [v26 assets]) != 0 && (v28 = v27, v29 = objc_msgSend(v27, "alt"), v28, v29))
  {
    v30 = sub_10001A22C();
    v32 = v31;
  }

  else
  {
    v30 = 0;
    v32 = 0xE000000000000000;
  }

  v51 = v30;
  v52 = v32;
  sub_100006908();
  v33 = sub_100019DCC();
  v35 = v34;
  v37 = v36;
  sub_10000695C();
  v38 = v45;
  sub_100019E6C();
  sub_100006A8C(v33, v35, v37 & 1);

  sub_100003504(v17, &qword_100028878, &qword_10001B1A0);
  v39 = v47;
  sub_100019C1C();
  sub_1000199CC();
  (*(v48 + 8))(v39, v50);
  return sub_100003504(v38, &qword_100028880, &qword_10001B1A8);
}

double sub_100006254@<D0>(uint64_t a1@<X8>)
{
  sub_1000059AC(v1, &v5);
  v3 = v6;
  result = *&v5;
  *a1 = v5;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1000062F0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100006358(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1000063CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 16);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = sub_10001992C();
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 24);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_100006498(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 16) = a2;
  }

  else
  {
    v7 = sub_10001992C();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_100006554(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, uint64_t))
{
  a4(319, a2, a3);
  if (v4 <= 0x3F)
  {
    sub_100005034(319);
    if (v5 <= 0x3F)
    {
      sub_10001992C();
      if (v6 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1000065F4()
{
  if (!qword_100028808)
  {
    v0 = sub_10001993C();
    if (!v1)
    {
      atomic_store(v0, &qword_100028808);
    }
  }
}

uint64_t sub_1000066A4()
{
  v1 = (type metadata accessor for ImageView(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(*v1 + 64);

  sub_1000067A0(*(v0 + v3), *(v0 + v3 + 8));

  v5 = v1[8];
  v6 = sub_10001992C();
  (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_1000067A0(uint64_t result, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return v2;
}

uint64_t sub_1000067AC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_100006814@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ImageView(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 24) & ~*(v3 + 80));

  return sub_100005BB0(v4, a1);
}

uint64_t sub_100006898(uint64_t a1, uint64_t a2)
{
  v4 = sub_100001A1C(&qword_100028870, &qword_10001B198);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_100006908()
{
  result = qword_100028888;
  if (!qword_100028888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100028888);
  }

  return result;
}

unint64_t sub_10000695C()
{
  result = qword_100028890;
  if (!qword_100028890)
  {
    sub_100001D70(&qword_100028878, &qword_10001B1A0);
    sub_1000069E8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100028890);
  }

  return result;
}

unint64_t sub_1000069E8()
{
  result = qword_100028898;
  if (!qword_100028898)
  {
    sub_100001D70(&qword_100028870, &qword_10001B198);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100028898);
  }

  return result;
}

uint64_t sub_100006A8C(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

unint64_t sub_100006AA0()
{
  result = qword_1000288A0;
  if (!qword_1000288A0)
  {
    sub_100001D70(&qword_1000288A8, &qword_10001B1B0);
    sub_100006B24();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000288A0);
  }

  return result;
}

unint64_t sub_100006B24()
{
  result = qword_1000288B0;
  if (!qword_1000288B0)
  {
    sub_100001D70(&qword_1000288B8, &qword_10001B1B8);
    sub_100002294(&qword_100028858, &qword_100028850, &qword_10001B180, &protocol conformance descriptor for GeometryReader<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000288B0);
  }

  return result;
}

uint64_t sub_100006C04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100001A1C(&qword_100028528, &unk_10001BFF0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = sub_100001A1C(&qword_1000284F8, &unk_10001C000);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_100006D20(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_100001A1C(&qword_100028528, &unk_10001BFF0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = sub_100001A1C(&qword_1000284F8, &unk_10001C000);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t type metadata accessor for TipsWidgetView(uint64_t a1)
{
  result = qword_100028918;
  if (!qword_100028918)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100006E9C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_100019B9C();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100001A1C(&qword_100028470, &qword_10001AB80);
  __chkstk_darwin(v8);
  v10 = &v14 - v9;
  sub_1000031E0(v2, &v14 - v9, &qword_100028470, &qword_10001AB80);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_10001A12C();
    return (*(*(v11 - 8) + 32))(a1, v10, v11);
  }

  else
  {
    sub_10001A29C();
    v13 = sub_100019CEC();
    sub_1000198FC();

    sub_100019B8C();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v7, v4);
  }
}

uint64_t sub_10000709C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v22 = a2;
  v23 = type metadata accessor for SystemWidgetView(0);
  __chkstk_darwin(v23);
  v4 = (&v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = sub_100001A1C(&qword_100028950, &qword_10001B228);
  __chkstk_darwin(v21);
  v6 = &v20 - v5;
  v7 = type metadata accessor for RectangularWidgetView(0);
  __chkstk_darwin(v7);
  v9 = (&v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = sub_10001A12C();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100006E9C(v13);
  v14 = (*(v11 + 88))(v13, v10);
  v15 = enum case for WidgetFamily.accessoryRectangular(_:);
  v16 = *(type metadata accessor for TipsWidgetView(0) + 20);
  if (v14 == v15)
  {
    sub_1000031E0(a1 + v16, v9 + v7[7], &qword_1000284F8, &unk_10001C000);
    *v9 = swift_getKeyPath();
    sub_100001A1C(&qword_100028470, &qword_10001AB80);
    swift_storeEnumTagMultiPayload();
    v17 = v7[5];
    *(v9 + v17) = swift_getKeyPath();
    sub_100001A1C(&qword_100028480, qword_10001ABF0);
    swift_storeEnumTagMultiPayload();
    v18 = v9 + v7[6];
    *v18 = swift_getKeyPath();
    v18[8] = 0;
    sub_10000759C(v9, v6, type metadata accessor for RectangularWidgetView);
    swift_storeEnumTagMultiPayload();
    sub_100007548(&qword_100028958, type metadata accessor for RectangularWidgetView, &unk_10001C028);
    sub_100007548(&qword_100028960, type metadata accessor for SystemWidgetView, &protocol conformance descriptor for SystemWidgetView);
    sub_100019CBC();
    return sub_100007604(v9, type metadata accessor for RectangularWidgetView);
  }

  else
  {
    sub_1000031E0(a1 + v16, v4 + *(v23 + 20), &qword_1000284F8, &unk_10001C000);
    *v4 = swift_getKeyPath();
    sub_100001A1C(&qword_100028470, &qword_10001AB80);
    swift_storeEnumTagMultiPayload();
    sub_10000759C(v4, v6, type metadata accessor for SystemWidgetView);
    swift_storeEnumTagMultiPayload();
    sub_100007548(&qword_100028958, type metadata accessor for RectangularWidgetView, &unk_10001C028);
    sub_100007548(&qword_100028960, type metadata accessor for SystemWidgetView, &protocol conformance descriptor for SystemWidgetView);
    sub_100019CBC();
    sub_100007604(v4, type metadata accessor for SystemWidgetView);
    return (*(v11 + 8))(v13, v10);
  }
}

uint64_t sub_100007548(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10000759C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100007604(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_100007668()
{
  result = qword_100028968;
  if (!qword_100028968)
  {
    sub_100001D70(&qword_100028970, &qword_10001B2B8);
    sub_1000076EC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100028968);
  }

  return result;
}

unint64_t sub_1000076EC()
{
  result = qword_100028978;
  if (!qword_100028978)
  {
    sub_100001D70(&unk_100028980, &unk_10001B2C0);
    sub_100007548(&qword_100028958, type metadata accessor for RectangularWidgetView, &unk_10001C028);
    sub_100007548(&qword_100028960, type metadata accessor for SystemWidgetView, &protocol conformance descriptor for SystemWidgetView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100028978);
  }

  return result;
}

id Assets.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id sub_10000780C()
{
  v1 = sub_10001A09C();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v33 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = swift_allocObject();
  *(v5 + 16) = 0;
  v34 = (v5 + 16);
  v6 = swift_allocObject();
  v35 = v6;
  *(v6 + 16) = 0;
  v33 = v6 + 16;
  result = [objc_opt_self() sharedInstance];
  if (result)
  {
    v8 = result;
    [result setDelegate:v0];
    v9 = objc_opt_self();
    v10 = [v9 defaultManager];
    [v10 setDelegate:v8];

    v11 = [v9 defaultManager];
    [v11 setDefaultSessionDelegate:v8];

    if ([objc_opt_self() isInternalDevice])
    {
      v12 = [v9 defaultManager];
      v13 = [objc_opt_self() defaultContext];
      v14 = [objc_allocWithZone(TPSURLSessionACAuthHandler) initWithAuthenticationContext:v13];

      [v12 setAuthenticationHandler:v14];
    }

    v15 = [objc_allocWithZone(TPSWidgetController) init];
    v16 = [v15 preferredDocument];
    sub_10001A08C();
    if (v16)
    {
      sub_100001A1C(&qword_100028A18, &qword_10001B2F8);
      v17 = v5;
      v18 = swift_allocObject();
      *(v18 + 16) = xmmword_10001B2D0;
      *(v18 + 56) = sub_1000083A8();
      *(v18 + 64) = sub_100008A7C(&qword_100028A28, sub_1000083A8, &protocol conformance descriptor for NSObject);
      *(v18 + 32) = v16;
      v19 = v16;
      sub_10001A0DC(v4, "getAssets: asset tip is %@", 26, 2, v18);

      (*(v2 + 8))(v4, v1);
      v20 = dispatch_semaphore_create(0);
      v21 = swift_allocObject();
      *(v21 + 16) = v17;
      *(v21 + 24) = v20;
      v40 = sub_1000083F8;
      v41 = v21;
      aBlock = _NSConcreteStackBlock;
      v37 = 1107296256;
      v38 = sub_100007D9C;
      v39 = &unk_100025520;
      v22 = _Block_copy(&aBlock);

      v23 = v20;

      [v15 widgetAssetsForDocument:v19 preferCacheIfAvailable:1 userInterfaceStyle:0 completionHandler:v22];
      _Block_release(v22);
      sub_10001A2AC();
      v24 = dispatch_semaphore_create(0);
      v25 = swift_allocObject();
      v26 = v35;
      *(v25 + 16) = v35;
      *(v25 + 24) = v24;
      v40 = sub_100008484;
      v41 = v25;
      aBlock = _NSConcreteStackBlock;
      v37 = 1107296256;
      v27 = v26;
      v38 = sub_100007D9C;
      v39 = &unk_100025570;
      v28 = _Block_copy(&aBlock);

      v29 = v24;

      [v15 widgetAssetsForDocument:v19 preferCacheIfAvailable:1 userInterfaceStyle:1 completionHandler:v28];
      _Block_release(v28);
      sub_10001A2AC();

      swift_beginAccess();
      v30 = *(v17 + 16);
      swift_beginAccess();
    }

    else
    {
      sub_10001A0CC();

      (*(v2 + 8))(v4, v1);
      v27 = v35;
      v30 = *v34;
    }

    v31 = *(v27 + 16);
    v32 = v30;

    return v30;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100007D9C(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = sub_100001A1C(&qword_100028A30, &qword_10001AE60);
  __chkstk_darwin(v6 - 8);
  v8 = &v14 - v7;
  v9 = *(a1 + 32);
  if (a2)
  {
    sub_10001987C();
    v10 = sub_10001989C();
    (*(*(v10 - 8) + 56))(v8, 0, 1, v10);
  }

  else
  {
    v11 = sub_10001989C();
    (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  }

  v12 = a3;
  v9(v8, a3);

  return sub_100003504(v8, &qword_100028A30, &qword_10001AE60);
}

Swift::Int sub_100007EF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5, uint64_t a6, const char *a7, uint64_t a8)
{
  v40 = a8;
  v41 = a5;
  v44 = a7;
  v42 = a6;
  v11 = sub_10001A09C();
  v43 = *(v11 - 8);
  __chkstk_darwin(v11);
  v13 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_100001A1C(&qword_100028A30, &qword_10001AE60);
  __chkstk_darwin(v14 - 8);
  v16 = &v36 - v15;
  v17 = sub_10001989C();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = &v36 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000084B8(a1, v16);
  if ((*(v18 + 48))(v16, 1, v17) == 1)
  {
    sub_100003504(v16, &qword_100028A30, &qword_10001AE60);
  }

  else
  {
    (*(v18 + 32))(v20, v16, v17);
    sub_10001A08C();
    sub_100001A1C(&qword_100028A18, &qword_10001B2F8);
    v21 = swift_allocObject();
    v38 = v11;
    v22 = v21;
    v36 = xmmword_10001B2D0;
    *(v21 + 16) = xmmword_10001B2D0;
    v23 = sub_10001988C();
    v39 = a4;
    v25 = v24;
    v22[7] = &type metadata for String;
    v37 = sub_100008528();
    v22[8] = v37;
    v22[4] = v23;
    v22[5] = v25;
    sub_10001A0DC(v13, v41, v42, 2, v22);

    v26 = *(v43 + 8);
    v26(v13, v11);
    v27 = v26;
    v28 = sub_10000866C();
    swift_beginAccess();
    v29 = *(a3 + 16);
    *(a3 + 16) = v28;

    sub_10001A08C();
    v30 = swift_allocObject();
    *(v30 + 16) = v36;
    swift_beginAccess();
    v45 = *(a3 + 16);
    v31 = v45;
    sub_100001A1C(&qword_100028A40, &qword_10001B300);
    v32 = sub_10001A2FC();
    v33 = v37;
    *(v30 + 56) = &type metadata for String;
    *(v30 + 64) = v33;
    *(v30 + 32) = v32;
    *(v30 + 40) = v34;

    sub_10001A0DC(v13, v44, v40, 2, v30);

    v27(v13, v38);
    (*(v18 + 8))(v20, v17);
  }

  return sub_10001A2BC();
}

id Assets.init()(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for Assets();
  return objc_msgSendSuper2(&v3, "init");
}

id Assets.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for Assets();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100008370()
{

  return _swift_deallocObject(v0, 24, 7);
}

unint64_t sub_1000083A8()
{
  result = qword_100028A20;
  if (!qword_100028A20)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100028A20);
  }

  return result;
}

uint64_t sub_10000842C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100008444()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000084B8(uint64_t a1, uint64_t a2)
{
  v4 = sub_100001A1C(&qword_100028A30, &qword_10001AE60);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_100008528()
{
  result = qword_100028A38;
  if (!qword_100028A38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100028A38);
  }

  return result;
}

unint64_t sub_10000857C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100001A1C(&qword_100028A68, &qword_10001B318);
    v3 = sub_10001A39C();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);
      result = sub_100015E40(v6);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + result) = v5;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
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

id sub_10000866C()
{
  v0 = sub_10001A09C();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v15 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100001A1C(&qword_100028A48, &qword_10001B308);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10001B2D0;
  *(inited + 32) = kCGImageSourceShouldCache;
  *(inited + 40) = 0;
  v5 = kCGImageSourceShouldCache;
  sub_10000857C(inited);
  swift_setDeallocating();
  sub_100003504(inited + 32, &unk_100028A50, &qword_10001B310);
  sub_10001986C(v6);
  v8 = v7;
  type metadata accessor for CFString(0);
  sub_100008A7C(&qword_1000284E8, type metadata accessor for CFString, &unk_10001ADE0);
  isa = sub_10001A20C().super.isa;
  v10 = CGImageSourceCreateWithURL(v8, isa);

  if (v10)
  {
    v11 = sub_10001A20C().super.isa;

    ImageAtIndex = CGImageSourceCreateImageAtIndex(v10, 0, v11);

    sub_10001A08C();
    if (ImageAtIndex)
    {
      sub_10001A0CC();
      (*(v1 + 8))(v3, v0);
      v13 = [objc_allocWithZone(UIImage) initWithCGImage:ImageAtIndex];

      return v13;
    }

    v15 = 0;
    v16 = 0xE000000000000000;
    sub_10001A38C(57);
    v18._countAndFlagsBits = 0xD000000000000037;
    v18._object = 0x800000010001C320;
    sub_10001A24C(v18);
    sub_10001989C();
    sub_100008A7C(&qword_100028A60, &type metadata accessor for URL, &protocol conformance descriptor for URL);
    v19._countAndFlagsBits = sub_10001A3BC();
    sub_10001A24C(v19);

    sub_10001A0CC();
  }

  else
  {

    sub_10001A08C();
    v15 = 0;
    v16 = 0xE000000000000000;
    sub_10001A38C(47);

    v15 = 0xD00000000000002DLL;
    v16 = 0x800000010001C2F0;
    sub_10001989C();
    sub_100008A7C(&qword_100028A60, &type metadata accessor for URL, &protocol conformance descriptor for URL);
    v17._countAndFlagsBits = sub_10001A3BC();
    sub_10001A24C(v17);

    sub_10001A0CC();
  }

  (*(v1 + 8))(v3, v0);
  return 0;
}

uint64_t sub_100008A7C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t SystemWidgetView.init(entry:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  *a2 = swift_getKeyPath();
  sub_100001A1C(&qword_100028470, &qword_10001AB80);
  swift_storeEnumTagMultiPayload();
  v5 = a2 + *(type metadata accessor for SystemWidgetView(0) + 20);

  return sub_100008B9C(a1, v5);
}

uint64_t type metadata accessor for SystemWidgetView(uint64_t a1)
{
  result = qword_100028B28;
  if (!qword_100028B28)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100008B9C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100001A1C(&qword_1000284F8, &unk_10001C000);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100008C0C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_100019B9C();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100001A1C(&qword_100028470, &qword_10001AB80);
  __chkstk_darwin(v8);
  v10 = &v14 - v9;
  sub_1000031E0(v2, &v14 - v9, &qword_100028470, &qword_10001AB80);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_10001A12C();
    return (*(*(v11 - 8) + 32))(a1, v10, v11);
  }

  else
  {
    sub_10001A29C();
    v13 = sub_100019CEC();
    sub_1000198FC();

    sub_100019B8C();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v7, v4);
  }
}

id sub_100008E0C()
{
  v1 = sub_100001A1C(&qword_1000284F8, &unk_10001C000);
  __chkstk_darwin(v1 - 8);
  v3 = &v12 - v2;
  v4 = type metadata accessor for SystemWidgetView(0);
  sub_1000031E0(v0 + *(v4 + 20), v3, &qword_1000284F8, &unk_10001C000);
  v5 = type metadata accessor for DocumentEntry(0);
  if ((*(*(v5 - 8) + 48))(v3, 1, v5) == 1)
  {
    sub_100003504(v3, &qword_1000284F8, &unk_10001C000);
  }

  else
  {
    v6 = *&v3[*(v5 + 28)];
    v7 = v6;
    sub_10000A47C(v3, type metadata accessor for DocumentEntry);
    if (v6)
    {
      return v6;
    }
  }

  v8 = [objc_allocWithZone(TPSWidgetController) init];
  v9 = [v8 preferredDocument];
  v10 = [v9 widgetContent];
  if (v10)
  {

    v6 = [v9 widgetContent];
  }

  else
  {

    return [objc_allocWithZone(TPSPlaceholderWidgetContent) init];
  }

  return v6;
}

uint64_t SystemWidgetView.body.getter@<X0>(void *a1@<X8>)
{
  v3 = type metadata accessor for SystemWidgetView(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3 - 8);
  sub_10000A178(v1, &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for SystemWidgetView);
  v6 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = sub_1000090E8(&v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + v6);
  *a1 = sub_10000914C;
  a1[1] = v7;
  return result;
}

uint64_t sub_1000090E8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SystemWidgetView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10000916C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v38[1] = a2;
  v44 = a3;
  v39 = sub_100001A1C(&qword_100028B70, &qword_10001B3E0);
  __chkstk_darwin(v39);
  v5 = v38 - v4;
  v43 = sub_100001A1C(&qword_100028B78, &qword_10001B3E8);
  __chkstk_darwin(v43);
  v41 = v38 - v6;
  v40 = type metadata accessor for LargeTipView(0);
  __chkstk_darwin(v40);
  v8 = (v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v42 = sub_100001A1C(&qword_100028B80, &qword_10001B3F0);
  __chkstk_darwin(v42);
  v10 = v38 - v9;
  v11 = type metadata accessor for SystemWidgetView(0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11 - 8);
  v14 = v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_10001A12C();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = v38 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100008C0C(v18);
  v19 = (*(v16 + 88))(v18, v15);
  if (v19 == enum case for WidgetFamily.systemSmall(_:))
  {
    sub_10000A178(a1, v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for SystemWidgetView);
    v20 = (*(v12 + 80) + 16) & ~*(v12 + 80);
    v21 = swift_allocObject();
    sub_1000090E8(v14, v21 + v20);
    v45 = 0;
    v46 = 0;
    v47 = 1;
    v48 = sub_10000A414;
    v49 = v21;
    v50 = 0;
LABEL_5:

    sub_100001A1C(&qword_100028BB8, &qword_10001B408);
    sub_100001A1C(&qword_100028BC8, &qword_10001B410);
    sub_100002294(&qword_100028BB0, &qword_100028BB8, &qword_10001B408, &protocol conformance descriptor for BackgroundGradient<A>);
    sub_100002294(&qword_100028BC0, &qword_100028BC8, &qword_10001B410, &protocol conformance descriptor for BackgroundGradient<A>);
    sub_100019CBC();
    v24 = v53;
    v25 = v54;
    v26 = v52;
    *v10 = v51;
    *(v10 + 1) = v26;
    *(v10 + 4) = v24;
    v10[40] = v25;
    swift_storeEnumTagMultiPayload();
    sub_100001A1C(&qword_100028BA0, &qword_10001B400);
    sub_100009FD0();
    sub_10000A0B0();
    sub_100019CBC();
  }

  if (v19 == enum case for WidgetFamily.systemMedium(_:))
  {
    sub_10000A178(a1, v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for SystemWidgetView);
    v22 = (*(v12 + 80) + 16) & ~*(v12 + 80);
    v23 = swift_allocObject();
    sub_1000090E8(v14, v23 + v22);
    v45 = 0;
    v46 = 0;
    v47 = 1;
    v48 = sub_10000A4E8;
    v49 = v23;
    v50 = 1;
    goto LABEL_5;
  }

  if (v19 == enum case for WidgetFamily.systemLarge(_:))
  {
    v28 = sub_100008E0C();
    sub_10001996C();
    v30 = ceil(v29 * 0.47);
    sub_10001996C();
    v32 = ceil(v31 * 0.47);
    *v8 = swift_getKeyPath();
    sub_100001A1C(&qword_100028478, &qword_10001AF50);
    swift_storeEnumTagMultiPayload();
    v33 = v40;
    v34 = *(v40 + 20);
    *(v8 + v34) = swift_getKeyPath();
    sub_100001A1C(&qword_100028480, qword_10001ABF0);
    swift_storeEnumTagMultiPayload();
    *(v8 + *(v33 + 24)) = v28;
    v35 = (v8 + *(v33 + 28));
    *v35 = v30;
    v35[1] = v32;
    sub_10000A178(v8, v5, type metadata accessor for LargeTipView);
    swift_storeEnumTagMultiPayload();
    sub_100001A1C(&qword_100028B88, &qword_10001B3F8);
    sub_100009F78();
    sub_100002294(&qword_100028B98, &qword_100028B88, &qword_10001B3F8, &protocol conformance descriptor for BackgroundGradient<A>);
    v36 = v41;
    sub_100019CBC();
    sub_1000031E0(v36, v10, &qword_100028B78, &qword_10001B3E8);
    swift_storeEnumTagMultiPayload();
    sub_100001A1C(&qword_100028BA0, &qword_10001B400);
    sub_100009FD0();
    sub_10000A0B0();
    sub_100019CBC();
    sub_100003504(v36, &qword_100028B78, &qword_10001B3E8);
    return sub_10000A47C(v8, type metadata accessor for LargeTipView);
  }

  else
  {
    *v5 = 0;
    *(v5 + 1) = 0;
    v5[16] = 1;
    *(v5 + 3) = nullsub_2;
    *(v5 + 4) = 0;
    swift_storeEnumTagMultiPayload();
    sub_100001A1C(&qword_100028B88, &qword_10001B3F8);
    sub_100009F78();
    sub_100002294(&qword_100028B98, &qword_100028B88, &qword_10001B3F8, &protocol conformance descriptor for BackgroundGradient<A>);
    v37 = v41;
    sub_100019CBC();
    sub_1000031E0(v37, v10, &qword_100028B78, &qword_10001B3E8);
    swift_storeEnumTagMultiPayload();
    sub_100001A1C(&qword_100028BA0, &qword_10001B400);
    sub_100009FD0();
    sub_10000A0B0();
    sub_100019CBC();
    sub_100003504(v37, &qword_100028B78, &qword_10001B3E8);
    return (*(v16 + 8))(v18, v15);
  }
}

void sub_10000998C(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = sub_100001A1C(&qword_1000284F8, &unk_10001C000);
  __chkstk_darwin(v4 - 8);
  v6 = &v14 - v5;
  v7 = type metadata accessor for SystemWidgetView(0);
  sub_1000031E0(a1 + *(v7 + 20), v6, &qword_1000284F8, &unk_10001C000);
  v8 = type metadata accessor for DocumentEntry(0);
  if ((*(*(v8 - 8) + 48))(v6, 1, v8) == 1)
  {
    sub_100003504(v6, &qword_1000284F8, &unk_10001C000);
  }

  else
  {
    v9 = *&v6[*(v8 + 28)];
    v10 = v9;
    sub_10000A47C(v6, type metadata accessor for DocumentEntry);
    if (v9)
    {
      goto LABEL_7;
    }
  }

  v11 = [objc_allocWithZone(TPSWidgetController) init];
  v12 = [v11 preferredDocument];
  v13 = [v12 widgetContent];
  if (v13)
  {

    v9 = [v12 widgetContent];
  }

  else
  {

    v9 = [objc_allocWithZone(TPSPlaceholderWidgetContent) init];
  }

LABEL_7:
  *a2 = v9;
}

uint64_t sub_100009B70@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *(a1 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(a1 - 8);
  sub_10000A178(v2, &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for SystemWidgetView);
  v6 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = sub_1000090E8(&v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + v6);
  *a2 = sub_10000A4EC;
  a2[1] = v7;
  return result;
}

uint64_t sub_100009C84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100001A1C(&qword_100028528, &unk_10001BFF0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = sub_100001A1C(&qword_1000284F8, &unk_10001C000);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_100009DA0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_100001A1C(&qword_100028528, &unk_10001BFF0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = sub_100001A1C(&qword_1000284F8, &unk_10001C000);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_100009EF8@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v5 = *(type metadata accessor for SystemWidgetView(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_10000916C(v6, a1, a2);
}

unint64_t sub_100009F78()
{
  result = qword_100028B90;
  if (!qword_100028B90)
  {
    type metadata accessor for LargeTipView(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100028B90);
  }

  return result;
}

unint64_t sub_100009FD0()
{
  result = qword_100028BA8;
  if (!qword_100028BA8)
  {
    sub_100001D70(&qword_100028BA0, &qword_10001B400);
    sub_100002294(&qword_100028BB0, &qword_100028BB8, &qword_10001B408, &protocol conformance descriptor for BackgroundGradient<A>);
    sub_100002294(&qword_100028BC0, &qword_100028BC8, &qword_10001B410, &protocol conformance descriptor for BackgroundGradient<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100028BA8);
  }

  return result;
}

unint64_t sub_10000A0B0()
{
  result = qword_100028BD0;
  if (!qword_100028BD0)
  {
    sub_100001D70(&qword_100028B78, &qword_10001B3E8);
    sub_100009F78();
    sub_100002294(&qword_100028B98, &qword_100028B88, &qword_10001B3F8, &protocol conformance descriptor for BackgroundGradient<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100028BD0);
  }

  return result;
}

uint64_t sub_10000A178(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10000A1E0()
{
  v1 = type metadata accessor for SystemWidgetView(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  sub_100001A1C(&qword_100028470, &qword_10001AB80);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_10001A12C();
    (*(*(v5 - 8) + 8))(v0 + v3, v5);
  }

  else
  {
  }

  v6 = v0 + v3 + *(v1 + 20);
  v7 = type metadata accessor for DocumentEntry(0);
  if (!(*(*(v7 - 1) + 48))(v6, 1, v7))
  {
    v8 = sub_1000198BC();
    (*(*(v8 - 8) + 8))(v6, v8);
    v9 = v7[5];
    v10 = sub_10001A1EC();
    v11 = *(v10 - 8);
    if (!(*(v11 + 48))(v6 + v9, 1, v10))
    {
      (*(v11 + 8))(v6 + v9, v10);
    }
  }

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_10000A47C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10000A4F0@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_100001A1C(&qword_100028C38, &qword_10001B5B8);
  __chkstk_darwin(v2 - 8);
  v4 = &v22 - v3;
  v5 = sub_10001A1EC();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [objc_allocWithZone(TPSWidgetController) init];
  v10 = [v9 preferredDocument];
  if (v10)
  {
    v11 = v10;
    v12 = [v10 widgetContent];

    if (v12)
    {
      [v12 priority];
    }
  }

  sub_10001A1BC();
  sub_1000198AC();
  (*(v6 + 16))(v4, v8, v5);
  v13 = v4;
  v14 = *(v6 + 56);
  v14(v13, 0, 1, v5);
  v23 = [v9 preferredDocument];
  v15 = [v9 preferredDocument];
  v16 = [v15 widgetContent];

  (*(v6 + 8))(v8, v5);
  v17 = type metadata accessor for DocumentEntry(0);
  v18 = v17[5];
  v14(a1 + v18, 1, 1, v5);
  v19 = v17[6];
  v20 = v17[7];
  result = sub_10000C984(v13, a1 + v18);
  *(a1 + v19) = v23;
  *(a1 + v20) = v16;
  return result;
}

uint64_t sub_10000A798@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for DocumentEntry(0);
  v3 = (v2 - 8);
  __chkstk_darwin(v2);
  v27 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10001A09C();
  v28 = *(v5 - 8);
  v29 = v5;
  __chkstk_darwin(v5);
  v26 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100001A1C(&qword_100028C38, &qword_10001B5B8);
  __chkstk_darwin(v7 - 8);
  v9 = &v26 - v8;
  v10 = sub_10001A1EC();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10001A1BC();
  sub_1000198AC();
  (*(v11 + 16))(v9, v13, v10);
  v14 = *(v11 + 56);
  v14(v9, 0, 1, v10);
  v15 = [objc_allocWithZone(TPSPlaceholderWidgetContent) init];
  v16 = v3[7];
  v14((a1 + v16), 1, 1, v10);
  v17 = v3[8];
  v18 = v3[9];
  sub_10000C984(v9, a1 + v16);
  *(a1 + v17) = 0;
  *(a1 + v18) = v15;
  v19 = v26;
  sub_10001A08C();
  sub_100001A1C(&qword_100028A18, &qword_10001B2F8);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_10001B2D0;
  v21 = v27;
  sub_10000C56C(a1, v27);
  v22 = DocumentEntry.description.getter();
  v24 = v23;
  sub_10000C924(v21, type metadata accessor for DocumentEntry);
  *(v20 + 56) = &type metadata for String;
  *(v20 + 64) = sub_100008528();
  *(v20 + 32) = v22;
  *(v20 + 40) = v24;
  sub_10001A0BC(v19, "TimelineProvider - Placeholder provided with entry: %@", 54, 2, v20);

  (*(v28 + 8))(v19, v29);
  return (*(v11 + 8))(v13, v10);
}

uint64_t sub_10000AAFC(uint64_t a1, void (*a2)(char *), uint64_t a3)
{
  v24 = a3;
  v25 = a2;
  v23 = sub_10001A09C();
  v3 = *(v23 - 8);
  __chkstk_darwin(v23);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10001A1AC();
  __chkstk_darwin(v6 - 8);
  v22 = sub_100001A1C(&qword_100028C28, &qword_10001B5A8);
  v7 = *(v22 - 8);
  __chkstk_darwin(v22);
  v9 = &v21 - v8;
  v10 = type metadata accessor for DocumentEntry(0);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000A4F0(v13);
  sub_100001A1C(&qword_100028C30, &qword_10001B5B0);
  v14 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v15 = swift_allocObject();
  v21 = xmmword_10001B2D0;
  *(v15 + 16) = xmmword_10001B2D0;
  sub_10000C56C(v13, v15 + v14);
  sub_10001A19C();
  sub_10000C8DC(&qword_100028C20, type metadata accessor for DocumentEntry, &protocol conformance descriptor for DocumentEntry);
  sub_10001A1FC();
  sub_10001A08C();
  sub_100001A1C(&qword_100028A18, &qword_10001B2F8);
  v16 = swift_allocObject();
  *(v16 + 16) = v21;
  v17 = DocumentEntry.description.getter();
  v19 = v18;
  *(v16 + 56) = &type metadata for String;
  *(v16 + 64) = sub_100008528();
  *(v16 + 32) = v17;
  *(v16 + 40) = v19;
  sub_10001A0BC(v5, "TimelineProvider - Timeline provided with entry: %@", 51, 2, v16);

  (*(v3 + 8))(v5, v23);
  v25(v9);
  (*(v7 + 8))(v9, v22);
  return sub_10000C924(v13, type metadata accessor for DocumentEntry);
}

uint64_t sub_10000AE94(uint64_t a1, void (*a2)(char *))
{
  v3 = sub_10001A09C();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DocumentEntry(0);
  __chkstk_darwin(v7 - 8);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000A4F0(v9);
  sub_10001A08C();
  sub_100001A1C(&qword_100028A18, &qword_10001B2F8);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_10001B2D0;
  v11 = DocumentEntry.description.getter();
  v13 = v12;
  *(v10 + 56) = &type metadata for String;
  *(v10 + 64) = sub_100008528();
  *(v10 + 32) = v11;
  *(v10 + 40) = v13;
  sub_10001A0BC(v6, "TimelineProvider - Snapshot provided with entry: %@", 51, 2, v10);

  (*(v4 + 8))(v6, v3);
  a2(v9);
  return sub_10000C924(v9, type metadata accessor for DocumentEntry);
}

uint64_t sub_10000B06C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_10000B120;

  return TimelineProvider.relevances()(a1, a2, a3);
}

uint64_t sub_10000B120()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_10000B214(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_10000C9F4;

  return TimelineProvider.relevance()(a1, a2, a3);
}

id sub_10000B2C8@<X0>(uint64_t a1@<X8>)
{
  v94 = a1;
  v80 = sub_100001A1C(&qword_1000284A8, &qword_10001AC28);
  v78 = *(v80 - 8);
  __chkstk_darwin(v80);
  v76 = &v73 - v1;
  v81 = sub_100001A1C(&qword_1000284A0, &qword_10001AC20);
  v79 = *(v81 - 8);
  __chkstk_darwin(v81);
  v77 = &v73 - v2;
  v86 = sub_100001A1C(&qword_100028498, &qword_10001AC18);
  v83 = *(v86 - 8);
  __chkstk_darwin(v86);
  v82 = &v73 - v3;
  v90 = sub_100001A1C(&qword_100028490, &qword_10001AC10);
  v87 = *(v90 - 8);
  __chkstk_darwin(v90);
  v84 = &v73 - v4;
  v91 = sub_100001A1C(&qword_100028488, &qword_10001AC08);
  v88 = *(v91 - 8);
  __chkstk_darwin(v91);
  v85 = &v73 - v5;
  v6 = sub_100001A1C(&qword_100028BE0, &qword_10001B4E0);
  v92 = *(v6 - 8);
  v93 = v6;
  __chkstk_darwin(v6);
  v89 = &v73 - v7;
  v8 = sub_10001A09C();
  v98 = *(v8 - 8);
  v99 = v8;
  __chkstk_darwin(v8);
  v97 = &v73 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10001A12C();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v96 = &v73 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v95 = &v73 - v14;
  __chkstk_darwin(v15);
  v102 = &v73 - v16;
  v18 = __chkstk_darwin(v17);
  v20 = &v73 - v19;
  v104 = *(v11 + 104);
  v104(&v73 - v19, enum case for WidgetFamily.accessoryRectangular(_:), v10, v18);
  v21 = sub_10000C2CC(0, 1, 1, &_swiftEmptyArrayStorage);
  v23 = *(v21 + 2);
  v22 = *(v21 + 3);
  if (v23 >= v22 >> 1)
  {
    v21 = sub_10000C2CC((v22 > 1), v23 + 1, 1, v21);
  }

  *(v21 + 2) = v23 + 1;
  v25 = *(v11 + 32);
  v24 = v11 + 32;
  v26 = (*(v24 + 48) + 32) & ~*(v24 + 48);
  v27 = *(v24 + 40);
  v103 = v25;
  v25(&v21[v26 + v27 * v23], v20, v10);
  sub_100019C0C();
  v28 = sub_100019DBC();
  v30 = v29;
  v32 = v31;
  v34 = v33;
  (v104)(v102, enum case for WidgetFamily.systemSmall(_:), v10);
  v100 = v32;
  v75 = v28;
  v74 = v30;
  sub_10000C4A4(v28, v30, v32 & 1);
  v35 = *(v21 + 2);
  v36 = *(v21 + 3);
  v37 = v35 + 1;
  v101 = v34;

  if (v35 >= v36 >> 1)
  {
    v21 = sub_10000C2CC((v36 > 1), v35 + 1, 1, v21);
  }

  v38 = v95;
  *(v21 + 2) = v37;
  v103(&v21[v26 + v35 * v27], v102, v10);
  (v104)(v38, enum case for WidgetFamily.systemMedium(_:), v10);
  v39 = *(v21 + 3);
  v40 = v35 + 2;
  if ((v35 + 2) > (v39 >> 1))
  {
    v21 = sub_10000C2CC((v39 > 1), v35 + 2, 1, v21);
  }

  *(v21 + 2) = v40;
  v103(&v21[v26 + v37 * v27], v38, v10);
  v41 = v96;
  (v104)(v96, enum case for WidgetFamily.systemLarge(_:), v10);
  v42 = *(v21 + 3);
  v43 = v35 + 3;
  if (v43 > (v42 >> 1))
  {
    v21 = sub_10000C2CC((v42 > 1), v43, 1, v21);
  }

  *(v21 + 2) = v43;
  v103(&v21[v26 + v40 * v27], v41, v10);
  v44 = v97;
  sub_10001A08C();
  sub_10001A0CC();
  (*(v98 + 8))(v44, v99);
  result = [objc_opt_self() clientBundleIdentifier];
  if (result)
  {
    v46 = result;
    sub_10001A22C();

    sub_100001A1C(&qword_100028BE8, &qword_10001B4E8);
    v47 = type metadata accessor for TipsWidgetWrapperView(255);
    v48 = sub_10000C8DC(&qword_100028BF0, type metadata accessor for TipsWidgetWrapperView, &protocol conformance descriptor for TipsWidgetWrapperView);
    v105 = v47;
    v106 = v48;
    swift_getOpaqueTypeConformance2();
    sub_10000C4B4();
    v49 = v76;
    sub_10001A18C();
    sub_100019C0C();
    v50 = sub_100019DBC();
    v52 = v51;
    LOBYTE(v47) = v53;
    v54 = sub_10000C508();
    v55 = v77;
    v56 = v80;
    sub_100019C9C();
    sub_100006A8C(v50, v52, v47 & 1);

    (*(v78 + 8))(v49, v56);
    v105 = v56;
    v106 = v54;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v58 = v82;
    v59 = v81;
    sub_100019C6C();
    (*(v79 + 8))(v55, v59);
    v105 = v59;
    v106 = OpaqueTypeConformance2;
    v60 = swift_getOpaqueTypeConformance2();
    v61 = v100;
    v62 = v84;
    v63 = v75;
    v64 = v74;
    v65 = v86;
    sub_100019C5C();
    sub_100006A8C(v63, v64, v61 & 1);

    (*(v83 + 8))(v58, v65);
    sub_100001A1C(&qword_100028C00, &qword_10001B4F0);
    sub_10001A15C();
    *(swift_allocObject() + 16) = xmmword_10001B480;
    sub_10001A13C();
    sub_10001A14C();
    v105 = v65;
    v106 = v60;
    v66 = swift_getOpaqueTypeConformance2();
    v67 = v85;
    v68 = v90;
    sub_100019C7C();

    (*(v87 + 8))(v62, v68);
    v105 = v68;
    v106 = v66;
    v69 = swift_getOpaqueTypeConformance2();
    v70 = v89;
    v71 = v91;
    sub_100019C8C();
    (*(v88 + 8))(v67, v71);
    v105 = v71;
    v106 = v69;
    swift_getOpaqueTypeConformance2();
    v72 = v93;
    sub_100019CAC();
    sub_100006A8C(v63, v64, v100 & 1);

    return (*(v92 + 8))(v70, v72);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10000BFA0(uint64_t a1)
{
  v2 = sub_1000199FC();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for TipsWidgetWrapperView(0);
  __chkstk_darwin(v6);
  v8 = (v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = *(v9 + 20);
  sub_10000C56C(a1, v8 + v10);
  v11 = type metadata accessor for DocumentEntry(0);
  (*(*(v11 - 8) + 56))(v8 + v10, 0, 1, v11);
  *v8 = swift_getKeyPath();
  sub_100001A1C(&qword_100028470, &qword_10001AB80);
  swift_storeEnumTagMultiPayload();
  if (DocumentEntry.isPlaceholder.getter())
  {
    sub_1000199EC();
  }

  else
  {
    v13[1] = 0;
    sub_10000C8DC(&qword_100028C08, &type metadata accessor for RedactionReasons, &protocol conformance descriptor for RedactionReasons);
    sub_10001A40C();
  }

  sub_10000C8DC(&qword_100028BF0, type metadata accessor for TipsWidgetWrapperView, &protocol conformance descriptor for TipsWidgetWrapperView);
  sub_100019E9C();
  (*(v3 + 8))(v5, v2);
  return sub_10000C924(v8, type metadata accessor for TipsWidgetWrapperView);
}

int main(int argc, const char **argv, const char **envp)
{
  sub_10000C24C();
  sub_100019FAC();
  return 0;
}

unint64_t sub_10000C24C()
{
  result = qword_100028BD8;
  if (!qword_100028BD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100028BD8);
  }

  return result;
}

void *sub_10000C2CC(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = &_swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_100001A1C(&qword_100028C10, &qword_10001B528);
  v10 = *(sub_10001A12C() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = j__malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v12) == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(sub_10001A12C() - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

uint64_t sub_10000C4A4(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

unint64_t sub_10000C4B4()
{
  result = qword_100028BF8;
  if (!qword_100028BF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100028BF8);
  }

  return result;
}

unint64_t sub_10000C508()
{
  result = qword_1000284B0;
  if (!qword_1000284B0)
  {
    sub_100001D70(&qword_1000284A8, &qword_10001AC28);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000284B0);
  }

  return result;
}

uint64_t sub_10000C56C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DocumentEntry(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

char *sub_10000C5D8(char *result, int64_t a2, char a3, char *a4)
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
    sub_100001A1C(&qword_100028C18, &qword_10001BCD0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_10000C6F4()
{
  sub_100001D70(&qword_100028BE0, &qword_10001B4E0);
  sub_100001D70(&qword_100028488, &qword_10001AC08);
  sub_100001D70(&qword_100028490, &qword_10001AC10);
  sub_100001D70(&qword_100028498, &qword_10001AC18);
  sub_100001D70(&qword_1000284A0, &qword_10001AC20);
  sub_100001D70(&qword_1000284A8, &qword_10001AC28);
  sub_10000C508();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_10000C8DC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10000C924(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10000C984(uint64_t a1, uint64_t a2)
{
  v4 = sub_100001A1C(&qword_100028C38, &qword_10001B5B8);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t DocumentEntry.isPlaceholder.getter()
{
  v1 = sub_10001A09C();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = [objc_opt_self() tps_userLanguageCode];
  v27 = sub_10001A22C();
  v7 = v6;

  v24 = type metadata accessor for DocumentEntry(0);
  v25 = v0;
  v8 = *(v0 + *(v24 + 24));
  v28 = v7;
  if (v8)
  {
    v9 = [v8 userLanguageCode];
    v10 = sub_10001A22C();
    v12 = v11;
  }

  else
  {
    v10 = 0;
    v12 = 0xE000000000000000;
  }

  sub_10001A08C();
  sub_100001A1C(&qword_100028A18, &qword_10001B2F8);
  v13 = swift_allocObject();
  v26 = xmmword_10001B2D0;
  *(v13 + 16) = xmmword_10001B2D0;
  *(v13 + 56) = &type metadata for String;
  v14 = sub_100008528();
  *(v13 + 64) = v14;
  v23 = v10;
  *(v13 + 32) = v10;
  *(v13 + 40) = v12;

  sub_10001A0DC(v4, "cachedTipUserLanguageCode: %@", 29, 2, v13);

  v15 = *(v2 + 8);
  v15(v4, v1);
  sub_10001A08C();
  v16 = swift_allocObject();
  *(v16 + 16) = v26;
  *(v16 + 56) = &type metadata for String;
  *(v16 + 64) = v14;
  v17 = v27;
  v18 = v28;
  *(v16 + 32) = v27;
  *(v16 + 40) = v18;

  sub_10001A0DC(v4, "currentUserLanguageCode: %@", 27, 2, v16);

  v15(v4, v1);
  if (v8 && *(v25 + *(v24 + 28)))
  {
    if (v23 == v17 && v12 == v18)
    {

      v19 = 0;
    }

    else
    {
      v20 = sub_10001A3CC();

      v19 = v20 ^ 1;
    }
  }

  else
  {

    v19 = 1;
  }

  return v19 & 1;
}

uint64_t type metadata accessor for DocumentEntry(uint64_t a1)
{
  result = qword_100028CB0;
  if (!qword_100028CB0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t DocumentEntry.init(date:relevance:document:widgetContent:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = type metadata accessor for DocumentEntry(0);
  v11 = v10[5];
  v12 = sub_10001A1EC();
  (*(*(v12 - 8) + 56))(a5 + v11, 1, 1, v12);
  v14 = v10[6];
  v13 = v10[7];
  v15 = sub_1000198BC();
  (*(*(v15 - 8) + 32))(a5, a1, v15);
  result = sub_10000C984(a2, a5 + v11);
  *(a5 + v14) = a3;
  *(a5 + v13) = a4;
  return result;
}

uint64_t DocumentEntry.date.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1000198BC();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t DocumentEntry.date.setter(uint64_t a1)
{
  v3 = sub_1000198BC();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t DocumentEntry.relevance.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for DocumentEntry(0) + 20);

  return sub_10000CF44(v3, a1);
}

uint64_t sub_10000CF44(uint64_t a1, uint64_t a2)
{
  v4 = sub_100001A1C(&qword_100028C38, &qword_10001B5B8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t DocumentEntry.relevance.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for DocumentEntry(0) + 20);

  return sub_10000C984(a1, v3);
}

void *DocumentEntry.document.getter()
{
  v1 = *(v0 + *(type metadata accessor for DocumentEntry(0) + 24));
  v2 = v1;
  return v1;
}

void DocumentEntry.document.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for DocumentEntry(0) + 24);

  *(v1 + v3) = a1;
}

void *DocumentEntry.widgetContent.getter()
{
  v1 = *(v0 + *(type metadata accessor for DocumentEntry(0) + 28));
  v2 = v1;
  return v1;
}

void DocumentEntry.widgetContent.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for DocumentEntry(0) + 28);

  *(v1 + v3) = a1;
}

uint64_t DocumentEntry.description.getter()
{
  v1 = sub_100001A1C(&qword_100028C38, &qword_10001B5B8);
  __chkstk_darwin(v1 - 8);
  v3 = &v19 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v19 - v5;
  v21 = 0;
  v22 = 0xE000000000000000;
  sub_10001A38C(105);
  v23._countAndFlagsBits = 0xD000000000000016;
  v23._object = 0x800000010001C5A0;
  sub_10001A24C(v23);
  sub_1000198BC();
  sub_10000D59C();
  v24._countAndFlagsBits = sub_10001A3BC();
  sub_10001A24C(v24);

  v25._countAndFlagsBits = 0x3A65726F6353202CLL;
  v25._object = 0xE900000000000020;
  sub_10001A24C(v25);
  v7 = type metadata accessor for DocumentEntry(0);
  v8 = v7[5];
  sub_10000CF44(v0 + v8, v6);
  v9 = sub_10001A1EC();
  v10 = *(v9 - 8);
  v11 = *(v10 + 48);
  if (v11(v6, 1, v9) == 1)
  {
    sub_10000D5F4(v6);
  }

  else
  {
    sub_10001A1CC();
    (*(v10 + 8))(v6, v9);
  }

  sub_10001A28C();
  v26._countAndFlagsBits = 0x697461727544202CLL;
  v26._object = 0xEC000000203A6E6FLL;
  sub_10001A24C(v26);
  sub_10000CF44(v0 + v8, v3);
  if (v11(v3, 1, v9) == 1)
  {
    sub_10000D5F4(v3);
  }

  else
  {
    sub_10001A1DC();
    (*(v10 + 8))(v3, v9);
  }

  sub_10001A27C();
  v27._countAndFlagsBits = 0x73646E6F63657320;
  v27._object = 0xEF203A706954202CLL;
  sub_10001A24C(v27);
  v20 = *(v0 + v7[6]);
  v12 = v20;
  sub_100001A1C(&qword_100028C48, &qword_10001B5C0);
  v28._countAndFlagsBits = sub_10001A23C();
  sub_10001A24C(v28);

  v29._countAndFlagsBits = 0xD000000000000012;
  v29._object = 0x800000010001C5C0;
  sub_10001A24C(v29);
  v20 = *(v0 + v7[7]);
  v13 = v20;
  sub_100001A1C(&qword_100028C50, &qword_10001B5C8);
  v30._countAndFlagsBits = sub_10001A23C();
  sub_10001A24C(v30);

  v31._object = 0x800000010001C5E0;
  v31._countAndFlagsBits = 0xD000000000000011;
  sub_10001A24C(v31);
  v14 = DocumentEntry.isPlaceholder.getter();
  v15 = (v14 & 1) == 0;
  if (v14)
  {
    v16._countAndFlagsBits = 1702195828;
  }

  else
  {
    v16._countAndFlagsBits = 0x65736C6166;
  }

  if (v15)
  {
    v17 = 0xE500000000000000;
  }

  else
  {
    v17 = 0xE400000000000000;
  }

  v16._object = v17;
  sub_10001A24C(v16);

  return v21;
}

unint64_t sub_10000D59C()
{
  result = qword_100028C40;
  if (!qword_100028C40)
  {
    sub_1000198BC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100028C40);
  }

  return result;
}

uint64_t sub_10000D5F4(uint64_t a1)
{
  v2 = sub_100001A1C(&qword_100028C38, &qword_10001B5B8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10000D684(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000198BC();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_100001A1C(&qword_100028C38, &qword_10001B5B8);
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

  v15 = v14 - 1;
  if (v15 < 0)
  {
    v15 = -1;
  }

  return (v15 + 1);
}

uint64_t sub_10000D7BC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_1000198BC();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = sub_100001A1C(&qword_100028C38, &qword_10001B5B8);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24)) = a2;
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

void sub_10000D8D0(uint64_t a1)
{
  sub_1000198BC();
  if (v1 <= 0x3F)
  {
    sub_10000D9B4(319);
    if (v2 <= 0x3F)
    {
      sub_10000DA0C(319, &unk_100028CC8, &qword_100028A20, TPSDocument_ptr);
      if (v3 <= 0x3F)
      {
        sub_10000DA0C(319, &qword_100028688, &unk_100028690, TPSWidgetContent_ptr);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_10000D9B4(uint64_t a1)
{
  if (!qword_100028CC0)
  {
    sub_10001A1EC();
    v1 = sub_10001A30C();
    if (!v2)
    {
      atomic_store(v1, &qword_100028CC0);
    }
  }
}

void sub_10000DA0C(uint64_t a1, unint64_t *a2, unint64_t *a3, void *a4)
{
  if (!*a2)
  {
    sub_10000509C(255, a3, a4);
    v5 = sub_10001A30C();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

double sub_10000DA90@<D0>(void *a1@<X1>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for SquareTitleView(0);
  v5 = v4[6];
  v6 = enum case for WidgetFamily.systemSmall(_:);
  v7 = sub_10001A12C();
  (*(*(v7 - 8) + 104))(a2 + v5, v6, v7);
  v8 = a1;
  sub_10001996C();
  v10 = v9;
  KeyPath = swift_getKeyPath();
  v12 = swift_getKeyPath();
  *a2 = KeyPath;
  *(a2 + 8) = 0;
  *(a2 + 16) = v12;
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  *(a2 + v4[7]) = a1;
  *(a2 + v4[8]) = v10;
  sub_10001996C();
  sub_10001996C();
  sub_10001A02C();
  sub_10001995C();
  v13 = (a2 + *(sub_100001A1C(&qword_100028D00, &qword_10001B718) + 36));
  *v13 = v15;
  v13[1] = v16;
  result = *&v17;
  v13[2] = v17;
  return result;
}

uint64_t sub_10000DBDC@<X0>(double (**a1)@<D0>(uint64_t a1@<X8>)@<X8>)
{
  v5 = *v1;
  v3 = swift_allocObject();
  *(v3 + 16) = v5;
  *a1 = sub_10000DC84;
  a1[1] = v3;

  return _objc_retain_x1();
}

uint64_t sub_10000DC4C()
{

  return _swift_deallocObject(v0, 24, 7);
}

unint64_t sub_10000DC98()
{
  result = qword_100028D08;
  if (!qword_100028D08)
  {
    sub_100001D70(&qword_100028D10, &qword_10001B720);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100028D08);
  }

  return result;
}

uint64_t HorizontalTipViewWithBody.init(family:widgetContent:width:height:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>, double a5@<D1>)
{
  *a3 = swift_getKeyPath();
  v10 = type metadata accessor for HorizontalTipViewWithBody(0);
  *(a3 + 16) = 0;
  *(a3 + 24) = 0;
  *(a3 + 8) = 0;
  *(a3 + 32) = 0;
  v12 = v10[5];
  v11 = v10[6];
  v13 = sub_10001A12C();
  result = (*(*(v13 - 8) + 32))(a3 + v12, a1, v13);
  *(a3 + v11) = a2;
  *(a3 + v10[7]) = a4;
  *(a3 + v10[8]) = a5;
  return result;
}

uint64_t EnvironmentValues.isPlaceholder.getter()
{
  sub_100003B1C();
  sub_100019BAC();
  return v1;
}

uint64_t BackgroundGradient.init(endPoint:content:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  *a6 = result;
  *(a6 + 8) = a2;
  *(a6 + 16) = a3 & 1;
  *(a6 + 24) = a4;
  *(a6 + 32) = a5;
  return result;
}

uint64_t sub_10000DE98()
{
  result = sub_100019EDC();
  qword_10002A3B8 = result;
  return result;
}

uint64_t sub_10000DEB8()
{
  v0 = sub_100019EBC();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100001A1C(&qword_100029220, &qword_10001BD88);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10001B750;
  v5 = enum case for Color.RGBColorSpace.sRGB(_:);
  v6 = *(v1 + 104);
  v6(v3, enum case for Color.RGBColorSpace.sRGB(_:), v0);
  sub_100019F1C();
  *(v4 + 32) = sub_100019FCC();
  *(v4 + 40) = v7;
  v6(v3, v5, v0);
  sub_100019F1C();
  *(v4 + 48) = sub_100019FCC();
  *(v4 + 56) = v8;
  v6(v3, v5, v0);
  sub_100019F1C();
  result = sub_100019FCC();
  *(v4 + 64) = result;
  *(v4 + 72) = v10;
  qword_10002A3C0 = v4;
  return result;
}

uint64_t sub_10000E0B0()
{
  sub_1000170F4();
  result = sub_100019BFC();
  qword_10002A3C8 = result;
  return result;
}

double sub_10000E0E0()
{
  v1 = sub_100019B9C();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v0;
  v5 = *(v0 + 8);
  v8 = *(v0 + 16);
  v7 = *(v0 + 24);
  if (*(v0 + 32) == 1)
  {
    return *v0;
  }

  sub_10001A29C();
  v10 = sub_100019CEC();
  sub_1000198FC();

  sub_100019B8C();
  swift_getAtKeyPath();
  sub_100016FB0(v6, v5, v8, v7, 0);
  (*(v2 + 8))(v4, v1);
  return v11;
}

void sub_10000E25C(void *a1@<X8>)
{
  sub_100019B5C();
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
}

void sub_10000E28C(void *a1@<X8>)
{
  sub_100019B5C();
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
}

uint64_t sub_10000E2DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for SquareTitleView(0);
  v5 = (v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v22 - v9;
  v11 = type metadata accessor for HorizontalTipViewWithBody(0);
  v12 = v11[5];
  v13 = v5[8];
  v14 = sub_10001A12C();
  (*(*(v14 - 8) + 16))(&v10[v13], a1 + v12, v14);
  v15 = *(a1 + v11[6]);
  v16 = *(a1 + v11[8]);
  KeyPath = swift_getKeyPath();
  v18 = swift_getKeyPath();
  *v10 = KeyPath;
  v10[8] = 0;
  *(v10 + 2) = v18;
  *(v10 + 3) = 0;
  *(v10 + 4) = 0;
  *(v10 + 5) = 0;
  v10[48] = 0;
  *&v10[v5[9]] = v15;
  *&v10[v5[10]] = v16;
  sub_10001702C(v10, v7, type metadata accessor for SquareTitleView);
  *a2 = 0;
  *(a2 + 8) = 1;
  v19 = sub_100001A1C(&qword_100029258, &unk_10001BE40);
  sub_10001702C(v7, a2 + *(v19 + 48), type metadata accessor for SquareTitleView);
  v20 = v15;
  sub_100017094(v10, type metadata accessor for SquareTitleView);
  return sub_100017094(v7, type metadata accessor for SquareTitleView);
}

uint64_t sub_10000E4A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + *(type metadata accessor for HorizontalTipViewWithBody(0) + 24));
  v4 = v3;
  v5 = sub_10000E0E0();
  sub_10000E0E0();
  v7 = v6;
  sub_10000E0E0();
  v9 = v8;
  result = sub_100019CFC();
  *a2 = 0;
  *(a2 + 8) = 1;
  *(a2 + 16) = v3;
  *(a2 + 24) = result;
  *(a2 + 32) = v5;
  *(a2 + 40) = 0;
  *(a2 + 48) = v7;
  *(a2 + 56) = v9;
  *(a2 + 64) = 0;
  return result;
}

double HorizontalTipViewWithBody.body.getter@<D0>(uint64_t a1@<X8>)
{
  if (qword_100028468 != -1)
  {
    swift_once();
  }

  *a1 = qword_10002A3C8;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  v3 = sub_100001A1C(&qword_100028D18, &qword_10001B7D8);
  sub_10000E63C(v1, a1 + *(v3 + 44));
  type metadata accessor for HorizontalTipViewWithBody(0);
  sub_10001A01C();
  sub_10001995C();
  v4 = (a1 + *(sub_100001A1C(&qword_100028D20, &qword_10001B7E0) + 36));
  *v4 = v6;
  v4[1] = v7;
  result = *&v8;
  v4[2] = v8;
  return result;
}

uint64_t sub_10000E63C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_100001A1C(&qword_100029230, &qword_10001BE18);
  __chkstk_darwin(v4 - 8);
  v6 = &v19[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v7);
  v9 = &v19[-v8];
  *v9 = sub_100019C3C();
  *(v9 + 1) = 0;
  v9[16] = 0;
  v10 = sub_100001A1C(&qword_100029238, &qword_10001BE20);
  sub_10000E2DC(a1, &v9[*(v10 + 44)]);
  v11 = sub_100019C3C();
  v20 = 0;
  sub_10000E4A0(a1, &v30);
  v23 = *&v31[16];
  v24 = *&v31[32];
  v25 = v31[48];
  v21 = v30;
  v22 = *v31;
  v26[2] = *&v31[16];
  v26[3] = *&v31[32];
  v27 = v31[48];
  v26[0] = v30;
  v26[1] = *v31;
  sub_1000031E0(&v21, v28, &qword_100029240, &qword_10001BE28);
  sub_100003504(v26, &qword_100029240, &qword_10001BE28);
  *&v19[23] = v22;
  *&v19[39] = v23;
  *&v19[55] = v24;
  v19[71] = v25;
  *&v19[7] = v21;
  v12 = v20;
  sub_1000031E0(v9, v6, &qword_100029230, &qword_10001BE18);
  sub_1000031E0(v6, a2, &qword_100029230, &qword_10001BE18);
  v13 = (a2 + *(sub_100001A1C(&qword_100029248, &qword_10001BE30) + 48));
  v28[0] = v11;
  v28[1] = 0;
  LOBYTE(v29[0]) = v12;
  *(v29 + 1) = *v19;
  *(&v29[1] + 1) = *&v19[16];
  *(&v29[2] + 1) = *&v19[32];
  *(&v29[3] + 1) = *&v19[48];
  *(&v29[4] + 1) = *&v19[64];
  v14 = v29[0];
  *v13 = v11;
  v13[1] = v14;
  v15 = v29[1];
  v16 = v29[2];
  v17 = v29[3];
  *(v13 + 73) = *(&v29[3] + 9);
  v13[3] = v16;
  v13[4] = v17;
  v13[2] = v15;
  sub_1000031E0(v28, &v30, &qword_100029250, &qword_10001BE38);
  sub_100003504(v9, &qword_100029230, &qword_10001BE18);
  v30 = v11;
  v31[0] = v12;
  *&v31[17] = *&v19[16];
  *&v31[33] = *&v19[32];
  v32 = *&v19[48];
  v33 = *&v19[64];
  *&v31[1] = *v19;
  sub_100003504(&v30, &qword_100029250, &qword_10001BE38);
  return sub_100003504(v6, &qword_100029230, &qword_10001BE18);
}

double sub_10000E8D4@<D0>(uint64_t a2@<X8>)
{
  if (qword_100028468 != -1)
  {
    swift_once();
  }

  *a2 = qword_10002A3C8;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v4 = sub_100001A1C(&qword_100028D18, &qword_10001B7D8);
  sub_10000E63C(v2, a2 + *(v4 + 44));
  sub_10001A01C();
  sub_10001995C();
  v5 = (a2 + *(sub_100001A1C(&qword_100028D20, &qword_10001B7E0) + 36));
  *v5 = v7;
  v5[1] = v8;
  result = *&v9;
  v5[2] = v9;
  return result;
}

double sub_10000E9C8()
{
  v1 = sub_100019B9C();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v0 + 16);
  v5 = *(v0 + 24);
  v8 = *(v0 + 32);
  v7 = *(v0 + 40);
  if (*(v0 + 48) == 1)
  {
    return *(v0 + 16);
  }

  sub_10001A29C();
  v10 = sub_100019CEC();
  sub_1000198FC();

  sub_100019B8C();
  swift_getAtKeyPath();
  sub_100016FB0(v6, v5, v8, v7, 0);
  (*(v2 + 8))(v4, v1);
  return v11;
}

double SquareTitleView.body.getter@<D0>(uint64_t a1@<X8>)
{
  v3 = sub_100001A1C(&qword_100028D28, &qword_10001B7E8);
  __chkstk_darwin(v3 - 8);
  v5 = v23 - v4;
  v6 = sub_100001A1C(&qword_100028D30, &qword_10001B7F0);
  __chkstk_darwin(v6);
  v8 = v23 - v7;
  if (sub_1000126D4())
  {
    v9 = sub_100019BEC();
  }

  else
  {
    v9 = sub_100019BDC();
  }

  *v5 = v9;
  *(v5 + 1) = 0;
  v5[16] = 0;
  v10 = sub_100001A1C(&qword_100028D38, &qword_10001B7F8);
  sub_10000ED48(v1, &v5[*(v10 + 44)]);
  v11 = sub_10000E9C8();
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v18 = sub_100019CFC();
  sub_100003A50(v5, v8, &qword_100028D28, &qword_10001B7E8);
  v19 = &v8[*(v6 + 36)];
  *v19 = v18;
  *(v19 + 1) = v11;
  *(v19 + 2) = v13;
  *(v19 + 3) = v15;
  *(v19 + 4) = v17;
  v19[40] = 0;
  type metadata accessor for SquareTitleView(0);
  if (sub_1000126D4())
  {
    sub_10001A01C();
  }

  else
  {
    sub_10001A00C();
  }

  sub_10001995C();
  sub_100003A50(v8, a1, &qword_100028D30, &qword_10001B7F0);
  v20 = (a1 + *(sub_100001A1C(&qword_100028D40, &qword_10001B800) + 36));
  v21 = v23[1];
  *v20 = v23[0];
  v20[1] = v21;
  result = *&v24;
  v20[2] = v24;
  return result;
}

uint64_t sub_10000ED48@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_10001A12C();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for SquareTitleView(0);
  v9 = *(a1 + v8[7]);
  v10 = *(a1 + v8[8]);
  v11 = v9;
  v12 = sub_10000E9C8();
  v13 = sub_10000E9C8();
  v15 = v14;
  (*(v5 + 16))(v7, a1 + v8[6], v4, v13);
  if (sub_1000126D4())
  {
    v16 = sub_100019FFC();
  }

  else
  {
    v16 = sub_100019FEC();
  }

  v34 = v16;
  v18 = v17;
  KeyPath = swift_getKeyPath();
  v20 = swift_getKeyPath();
  v21 = type metadata accessor for TitleView(0);
  *(a2 + v21[5]) = v20;
  sub_100001A1C(&qword_100029228, &qword_10001BDE8);
  swift_storeEnumTagMultiPayload();
  v22 = swift_getKeyPath();
  *a2 = KeyPath;
  *(a2 + 8) = 0;
  v23 = a2 + v21[6];
  *v23 = v22;
  *(v23 + 8) = 0;
  *(a2 + v21[7]) = v9;
  *(a2 + v21[8]) = v10 - v12 - v15;
  result = (*(v5 + 32))(a2 + v21[9], v7, v4);
  *(a2 + v21[10]) = 0;
  v25 = (a2 + v21[11]);
  *v25 = v34;
  v25[1] = v18;
  v26 = (a2 + v21[12]);
  *v26 = 0x3E6E69616C703CLL;
  v26[1] = 0xE700000000000000;
  v27 = (a2 + v21[13]);
  *v27 = 0x3E6E69616C702F3CLL;
  v27[1] = 0xE800000000000000;
  v28 = (a2 + v21[14]);
  *v28 = 1701869940;
  v28[1] = 0xE400000000000000;
  v29 = (a2 + v21[15]);
  *v29 = 1954047348;
  v29[1] = 0xE400000000000000;
  v30 = (a2 + v21[16]);
  *v30 = 1954047348;
  v30[1] = 0xE400000000000000;
  v31 = (a2 + v21[17]);
  *v31 = 0x736B72616DLL;
  v31[1] = 0xE500000000000000;
  v32 = (a2 + v21[18]);
  *v32 = 0x6F43746E65636361;
  v32[1] = 0xEB00000000726F6CLL;
  return result;
}

uint64_t (*EnvironmentValues.isPlaceholder.modify(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  *(a1 + 8) = sub_100003B1C();
  sub_100019BAC();
  *(a1 + 16) = *(a1 + 17);
  return sub_10000F0C8;
}

uint64_t BackgroundGradient.body.getter@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v28 = a2;
  v4 = sub_100019CDC();
  v26 = *(v4 - 8);
  v27 = v4;
  __chkstk_darwin(v4);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 16);
  v25 = *(v7 - 8);
  __chkstk_darwin(v8);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a1 + 24);
  v24 = sub_10000F414();
  v32 = v7;
  v33 = &type metadata for LinearGradient;
  v34 = v11;
  v35 = v24;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v13 = *(OpaqueTypeMetadata2 - 8);
  __chkstk_darwin(OpaqueTypeMetadata2);
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v16);
  v19 = &v23 - v18;
  (*(v2 + 24))(v17);
  sub_100019CCC();
  v29 = v7;
  v30 = v11;
  v31 = v2;
  sub_10001A02C();
  sub_100019E7C();
  (*(v26 + 8))(v6, v27);
  (*(v25 + 8))(v10, v7);
  v20 = *(v13 + 16);
  v20(v19, v15, OpaqueTypeMetadata2);
  v21 = *(v13 + 8);
  v21(v15, OpaqueTypeMetadata2);
  v20(v28, v19, OpaqueTypeMetadata2);
  return (v21)(v19, OpaqueTypeMetadata2);
}

unint64_t sub_10000F414()
{
  result = qword_100028D48;
  if (!qword_100028D48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100028D48);
  }

  return result;
}

double sub_10000F468@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (qword_100028460 != -1)
  {
    swift_once();
  }

  sub_100019FDC();
  sub_10001A06C();
  if (*(a1 + 16))
  {
    sub_10001A05C();
  }

  sub_10001999C();
  result = *&v5;
  *a2 = v5;
  *(a2 + 16) = v6;
  *(a2 + 32) = v7;
  return result;
}

uint64_t sub_10000F610(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10001A12C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 24));
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    v13 = v12 - 1;
    if (v13 < 0)
    {
      v13 = -1;
    }

    return (v13 + 1);
  }
}

uint64_t sub_10000F6F0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_10001A12C();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 20);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 24)) = a2;
  }

  return result;
}

void sub_10000F7AC(uint64_t a1)
{
  sub_10000FAF4(319, &unk_100028DB8, &type metadata for EdgeInsets);
  if (v1 <= 0x3F)
  {
    sub_10001A12C();
    if (v2 <= 0x3F)
    {
      sub_100005034(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_10000F87C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10001A12C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 28));
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    v13 = v12 - 1;
    if (v13 < 0)
    {
      v13 = -1;
    }

    return (v13 + 1);
  }
}

uint64_t sub_10000F95C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_10001A12C();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 24);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 28)) = a2;
  }

  return result;
}

void sub_10000FA18(uint64_t a1)
{
  sub_10000FAF4(319, &qword_100028E60, &type metadata for Bool);
  if (v1 <= 0x3F)
  {
    sub_10000FAF4(319, &unk_100028DB8, &type metadata for EdgeInsets);
    if (v2 <= 0x3F)
    {
      sub_10001A12C();
      if (v3 <= 0x3F)
      {
        sub_100005034(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_10000FAF4(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = sub_10001993C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_10000FB50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 sub_10000FB98(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_10000FBAC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_10000FBF4(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

unint64_t sub_10000FC58()
{
  result = qword_100028F20;
  if (!qword_100028F20)
  {
    sub_100001D70(&qword_100028D20, &qword_10001B7E0);
    sub_100002294(&qword_100028F28, &qword_100028F30, &qword_10001B9E0, &protocol conformance descriptor for HStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100028F20);
  }

  return result;
}

unint64_t sub_10000FD14()
{
  result = qword_100028F38;
  if (!qword_100028F38)
  {
    sub_100001D70(&qword_100028D40, &qword_10001B800);
    sub_10000FDA0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100028F38);
  }

  return result;
}

unint64_t sub_10000FDA0()
{
  result = qword_100028F40;
  if (!qword_100028F40)
  {
    sub_100001D70(&qword_100028D30, &qword_10001B7F0);
    sub_100002294(&qword_100028F48, &qword_100028D28, &qword_10001B7E8, &protocol conformance descriptor for HStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100028F40);
  }

  return result;
}

uint64_t sub_10000FEC8(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_100001A1C(&qword_100028F50, &qword_10001B9E8);
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = *(v6 - 8);
    v9 = a3[5];
LABEL_5:
    v11 = *(v8 + 48);

    return v11(a1 + v9, a2, v7);
  }

  v10 = sub_10001A12C();
  if (*(*(v10 - 8) + 84) == a2)
  {
    v7 = v10;
    v8 = *(v10 - 8);
    v9 = a3[9];
    goto LABEL_5;
  }

  v13 = *(a1 + a3[12] + 8);
  if (v13 >= 0xFFFFFFFF)
  {
    LODWORD(v13) = -1;
  }

  return (v13 + 1);
}

uint64_t sub_10000FFF4(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_100001A1C(&qword_100028F50, &qword_10001B9E8);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
  }

  else
  {
    result = sub_10001A12C();
    if (*(*(result - 8) + 84) != a3)
    {
      *(a1 + a4[12] + 8) = (a2 - 1);
      return result;
    }

    v9 = result;
    v10 = *(result - 8);
    v11 = a4[9];
  }

  v13 = *(v10 + 56);

  return v13(a1 + v11, a2, a2, v9);
}

void sub_100010128(uint64_t a1)
{
  sub_10000FAF4(319, &qword_100028E60, &type metadata for Bool);
  if (v1 <= 0x3F)
  {
    sub_10001022C(319);
    if (v2 <= 0x3F)
    {
      sub_100005034(319);
      if (v3 <= 0x3F)
      {
        sub_10001A12C();
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_10001022C(uint64_t a1)
{
  if (!qword_100028FC0)
  {
    sub_1000199FC();
    v1 = sub_10001993C();
    if (!v2)
    {
      atomic_store(v1, &qword_100028FC0);
    }
  }
}

uint64_t sub_1000102B0()
{
  v1 = sub_100019B9C();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v10[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = type metadata accessor for TitleView(0);
  v6 = v0 + *(v5 + 24);
  v7 = *v6;
  if (*(v6 + 8) == 1)
  {
    if ((v7 & 1) == 0)
    {
      return 1;
    }
  }

  else
  {

    sub_10001A29C();
    v9 = sub_100019CEC();
    sub_1000198FC();

    sub_100019B8C();
    swift_getAtKeyPath();
    sub_1000067A0(v7, 0);
    (*(v2 + 8))(v4, v1);
    if (v10[15] != 1)
    {
      return 1;
    }
  }

  return *(v0 + *(v5 + 40));
}

void sub_10001042C()
{
  v1 = v0;
  v2 = sub_10001985C();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v51 = &v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = type metadata accessor for TitleView(0);
  v5 = *(v1 + v52[7]);
  if (v5)
  {
    v6 = [v5 titleContent];
    if (v6)
    {
      v7 = v6;
      sub_100001A1C(&qword_1000291A0, &qword_10001BCD8);
      v8 = sub_10001A26C();

      v9 = *(v8 + 16);
      if (v9)
      {
        v43 = v2;
        v45 = 0;
        v10 = 0;
        v11 = (v1 + v52[14]);
        v42 = (v3 + 8);
        v44 = 0xE000000000000000;
        v12 = *v11;
        v13 = v11[1];
        v49 = v1;
        while (v10 < *(v8 + 16))
        {
          v14 = *(v8 + 32 + 8 * v10);
          *&v55 = v12;
          *(&v55 + 1) = v13;

          sub_10001A37C();
          if (*(v14 + 16))
          {
            v15 = sub_100015EF4(&v57);
            if (v16)
            {
              sub_100016BEC(*(v14 + 56) + 32 * v15, v59);
              sub_100016B98(&v57);
              if ((swift_dynamicCast() & 1) == 0)
              {
                goto LABEL_17;
              }

              v17 = (v1 + v52[15]);
              if (v55 == *v17 && *(&v55 + 1) == v17[1])
              {
              }

              else
              {
                v19 = sub_10001A3CC();

                if ((v19 & 1) == 0)
                {
LABEL_17:

                  goto LABEL_7;
                }
              }

              v20 = v52[13];
              v21 = (v1 + v52[12]);
              v22 = v21[1];
              v46 = *v21;
              v23 = *(v1 + v20 + 8);
              v47 = *(v1 + v20);
              v24 = (v1 + v52[17]);
              v25 = v24[1];
              *&v55 = *v24;
              *(&v55 + 1) = v25;
              v48 = v22;

              v50 = v23;

              sub_10001A37C();
              if (*(v14 + 16) && (v26 = sub_100015EF4(&v57), (v27 & 1) != 0))
              {
                sub_100016BEC(*(v14 + 56) + 32 * v26, v59);
                sub_100016B98(&v57);
                sub_10000509C(0, &qword_1000291A8, NSArray_ptr);
                if (swift_dynamicCast())
                {
                  v41 = v55;
                  sub_10001A2CC();
                  sub_10001984C();
                  if (v58)
                  {
                    while (1)
                    {
                      sub_100016C48(&v57, v59);
                      sub_10000509C(0, &qword_1000291B0, NSDictionary_ptr);
                      if ((swift_dynamicCast() & 1) == 0)
                      {
                        goto LABEL_26;
                      }

                      v28 = v55;
                      *&v55 = v12;
                      *(&v55 + 1) = v13;

                      v29 = [v28 __swift_objectForKeyedSubscript:sub_10001A3DC()];
                      swift_unknownObjectRelease();
                      if (v29)
                      {
                        sub_10001A34C();
                        swift_unknownObjectRelease();
                      }

                      else
                      {
                        v55 = 0u;
                        v56 = 0u;
                      }

                      v30 = v49;
                      v59[0] = v55;
                      v59[1] = v56;
                      if (*(&v56 + 1))
                      {
                        if ((swift_dynamicCast() & 1) == 0)
                        {
                          goto LABEL_36;
                        }

                        v31 = (v30 + v52[18]);
                        if (v53 == *v31 && v54 == v31[1])
                        {
                        }

                        else
                        {
                          v32 = sub_10001A3CC();

                          if ((v32 & 1) == 0)
                          {
LABEL_36:

                            goto LABEL_26;
                          }
                        }

                        sub_10001984C();
                        v46 = 0;
                        v47 = 0;
                        v33 = 0;
                        v34 = 0;
                        v48 = 0xE000000000000000;
                        v50 = 0xE000000000000000;
                        v35 = 0xE000000000000000;
                        if (!v58)
                        {
                          goto LABEL_48;
                        }
                      }

                      else
                      {

                        sub_100003504(v59, &qword_1000291B8, &qword_10001BCE0);
LABEL_26:
                        sub_10001984C();
                        if (!v58)
                        {
                          break;
                        }
                      }
                    }
                  }

                  v33 = v47;
                  v35 = v50;
                  v34 = v46;
LABEL_48:
                  (*v42)(v51, v43);

                  v47 = v33;
                  v50 = v35;
                  v46 = v34;
                  v1 = v49;
                }
              }

              else
              {
                sub_100016B98(&v57);
              }

              v36 = (v1 + v52[16]);
              v37 = v36[1];
              *&v55 = *v36;
              *(&v55 + 1) = v37;

              sub_10001A37C();
              if (*(v14 + 16))
              {
                v38 = sub_100015EF4(&v57);
                if (v39)
                {
                  sub_100016BEC(*(v14 + 56) + 32 * v38, v59);
                  sub_100016B98(&v57);

                  if (swift_dynamicCast())
                  {
                    v40 = *(&v55 + 1);
                    v41 = v55;
                    *&v57 = v45;
                    *(&v57 + 1) = v44;

                    v60._countAndFlagsBits = v46;
                    v60._object = v48;
                    sub_10001A24C(v60);

                    v61._countAndFlagsBits = v41;
                    v61._object = v40;
                    sub_10001A24C(v61);

                    v1 = v49;

                    v62._countAndFlagsBits = v47;
                    v62._object = v50;
                    sub_10001A24C(v62);

                    v44 = *(&v57 + 1);
                    v45 = v57;
                  }

                  else
                  {
                  }

                  goto LABEL_7;
                }
              }
            }
          }

          sub_100016B98(&v57);
LABEL_7:
          if (++v10 == v9)
          {

            return;
          }
        }

        __break(1u);
      }

      else
      {
      }
    }
  }
}

char *sub_100010BF4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v37 = sub_10001983C();
  v6 = *(v37 - 8);
  __chkstk_darwin(v37);
  v36 = v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = a1;
  v41 = a2;
  v8 = type metadata accessor for TitleView(0);
  v9 = (v3 + *(v8 + 48));
  v11 = *v9;
  v10 = v9[1];
  v38 = v11;
  v39 = v10;
  sub_100006908();
  v12 = sub_10001A31C();
  v13 = *(v12 + 16);
  v33[1] = v12;
  if (v13)
  {
    v14 = (v3 + *(v8 + 52));
    v15 = *v14;
    v16 = v14[1];
    v35 = (v6 + 8);
    v17 = (v12 + 40);
    v18 = &_swiftEmptyArrayStorage;
    v19 = &type metadata for String;
    v34 = v16;
    do
    {
      v20 = *v17;
      v40 = *(v17 - 1);
      v41 = v20;
      v38 = v15;
      v39 = v16;
      v21 = sub_10001A31C();
      if (v21[2] < 2uLL)
      {
      }

      else
      {
        v22 = v21[4];
        v23 = v21[5];

        v40 = v22;
        v41 = v23;
        v24 = v36;
        sub_10001982C();
        v25 = v19;
        v26 = sub_10001A32C();
        v28 = v27;
        (*v35)(v24, v37);

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v18 = sub_10000C5D8(0, *(v18 + 2) + 1, 1, v18);
        }

        v30 = *(v18 + 2);
        v29 = *(v18 + 3);
        if (v30 >= v29 >> 1)
        {
          v18 = sub_10000C5D8((v29 > 1), v30 + 1, 1, v18);
        }

        *(v18 + 2) = v30 + 1;
        v31 = &v18[16 * v30];
        *(v31 + 4) = v26;
        *(v31 + 5) = v28;
        v16 = v34;
        v19 = v25;
      }

      v17 += 2;
      --v13;
    }

    while (v13);
  }

  else
  {
    v18 = &_swiftEmptyArrayStorage;
  }

  return v18;
}

__n128 sub_100010E7C@<Q0>(int a1@<W0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v165 = a2;
  LODWORD(v179) = a1;
  v164 = a3;
  v163 = sub_100001A1C(&qword_1000290C8, &qword_10001BB40);
  __chkstk_darwin(v163);
  v176 = v142 - v4;
  v172 = sub_10001A12C();
  v171 = *(v172 - 8);
  __chkstk_darwin(v172);
  v170 = v142 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v169 = sub_100001A1C(&qword_100029158, &qword_10001BB78);
  v168 = *(v169 - 8);
  __chkstk_darwin(v169);
  v167 = v142 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v166 = v142 - v8;
  v9 = sub_100001A1C(&qword_1000290E0, &qword_10001BB48);
  __chkstk_darwin(v9 - 8);
  v185 = (v142 - v10);
  v173 = sub_100001A1C(&qword_1000290C0, &qword_10001BB38);
  __chkstk_darwin(v173);
  v174 = (v142 - v11);
  v162 = sub_100001A1C(&qword_100029160, &qword_10001BB80);
  v160 = *(v162 - 8);
  __chkstk_darwin(v162);
  v151 = v142 - v12;
  v158 = sub_100001A1C(&qword_1000290B0, &qword_10001BB30);
  __chkstk_darwin(v158);
  v155 = v142 - v13;
  v159 = sub_100001A1C(&qword_100029168, &qword_10001BB88);
  v156 = *(v159 - 8);
  __chkstk_darwin(v159);
  v150 = v142 - v14;
  v147 = sub_100001A1C(&qword_1000290A8, &qword_10001BB28);
  __chkstk_darwin(v147);
  v149 = v142 - v15;
  v154 = sub_100001A1C(&qword_100029090, &qword_10001BB20);
  __chkstk_darwin(v154);
  v152 = v142 - v16;
  v157 = sub_100001A1C(&qword_100029170, &qword_10001BB90);
  v153 = *(v157 - 8);
  __chkstk_darwin(v157);
  v148 = v142 - v17;
  v146 = sub_100001A1C(&qword_100029088, &qword_10001BB18);
  __chkstk_darwin(v146);
  v161 = v142 - v18;
  v145 = sub_100001A1C(&qword_100029078, &qword_10001BB10);
  __chkstk_darwin(v145);
  v175 = v142 - v19;
  v180 = sub_10001983C();
  v20 = *(v180 - 8);
  __chkstk_darwin(v180);
  v22 = v142 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10001042C();
  v177 = sub_100010BF4(v23, v24);

  sub_10001042C();
  *&v191 = v25;
  *(&v191 + 1) = v26;
  v184 = type metadata accessor for TitleView(0);
  v27 = v184[12];
  v28 = (v3 + v184[13]);
  v30 = *v28;
  v29 = v28[1];
  v189 = v30;
  v190 = v29;
  v186 = v3;
  v32 = *(v3 + v27 + 8);
  v187 = *(v3 + v27);
  v31 = v187;
  v188 = v32;
  v33 = sub_100006908();

  v140 = v33;
  v141 = v33;
  v138 = &type metadata for String;
  v139 = v33;
  v34 = sub_10001A33C();
  v36 = v35;

  *&v191 = v34;
  *(&v191 + 1) = v36;
  sub_10001982C();
  v37 = sub_10001A32C();
  v39 = v38;
  v40 = *(v20 + 8);
  v41 = v22;
  v144 = v20 + 8;
  v178 = v40;
  (v40)(v22, v180);

  *&v191 = v37;
  *(&v191 + 1) = v39;
  v189 = v31;
  v190 = v32;
  v143 = v33;
  v42 = sub_10001A31C();

  v44 = *(v42 + 2);
  if (v44)
  {
    v45 = 0;
    v46 = v42 + 40;
    *&v183 = v44 - 1;
    v47 = &_swiftEmptyArrayStorage;
    *(&v183 + 1) = v42 + 40;
    do
    {
      v48 = &v46[16 * v45];
      v49 = v45;
      while (1)
      {
        if (v49 >= *(v42 + 2))
        {
          __break(1u);
          goto LABEL_29;
        }

        v50 = *(v48 - 1);
        v51 = *v48;
        v52 = !v50 && v51 == 0xE000000000000000;
        if (!v52 && (sub_10001A3CC() & 1) == 0)
        {
          break;
        }

        ++v49;
        v48 += 16;
        if (v44 == v49)
        {
          goto LABEL_18;
        }
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v191 = v47;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_10001610C(0, v47[2] + 1, 1);
        v47 = v191;
      }

      v55 = v47[2];
      v54 = v47[3];
      v56 = v55 + 1;
      if (v55 >= v54 >> 1)
      {
        sub_10001610C((v54 > 1), v55 + 1, 1);
        v56 = v55 + 1;
        v47 = v191;
      }

      v45 = v49 + 1;
      v47[2] = v56;
      v57 = &v47[2 * v55];
      v57[4] = v50;
      v57[5] = v51;
      v22 = v41;
      v46 = *(&v183 + 1);
    }

    while (v183 != v49);
  }

  else
  {
    v47 = &_swiftEmptyArrayStorage;
LABEL_18:
    v22 = v41;
  }

  v58 = v47[2];
  if (v58)
  {
    v59 = v47[5];
    *&v191 = v47[4];
    *(&v191 + 1) = v59;

    sub_10001982C();
    LOBYTE(v41) = v143;
    v60 = sub_10001A32C();
    v62 = v61;
    v63 = v180;
    v49 = v144;
    (v178)(v22, v180);

    v142[1] = v60;
    v142[2] = v62;
    v64 = v62;
    v42 = v177;
    v65 = sub_1000163B4(v60, v64, v186, v179 & 1, v177);
    *(&v183 + 1) = v68;
    if (v58 > v47[2])
    {
LABEL_30:
      __break(1u);
      v186 = v43;
      sub_10001A29C();
      v135 = sub_100019CEC();
      sub_1000198FC();

      v128 = v186;
      goto LABEL_27;
    }

    v69 = &v47[2 * v58 + 2];
    v70 = v69[1];
    *&v191 = *v69;
    *(&v191 + 1) = v70;
    *&v183 = v65;
    v182 = v66;
    v181 = v67;

    sub_10001982C();
    v71 = v63;
    v72 = sub_10001A32C();
    v74 = v73;
    (v178)(v22, v71);
    v75 = v179;
    v76 = v186;
  }

  else
  {
    v75 = v179;
    v76 = v186;
    v42 = v177;
    v77 = sub_1000163B4(0, 0, v186, v179 & 1, v177);
    *&v183 = v77;
    *(&v183 + 1) = v78;
    v182 = v79;
    v181 = v80;
    v72 = 0;
    v74 = 0;
  }

  __chkstk_darwin(v77);
  v142[-8] = v82;
  v142[-7] = v81;
  v136 = v72;
  v137 = v74;
  LOBYTE(v138) = v75 & 1;
  BYTE1(v138) = v165 & 1;
  v139 = v42;
  v140 = v76;
  v41 = sub_100012620(0, 0, 0, 0, sub_100016784, &v142[-10], v47);
  v22 = v83;
  v179 = v84;
  v49 = v85;

  sub_100019D4C();
  sub_100019D2C();
  v180 = sub_100019D5C();

  v86 = sub_100019C4C();
  v87 = v185;
  *v185 = v86;
  v87[1] = 0;
  *(v87 + 16) = 0;
  v88 = v87 + *(sub_100001A1C(&qword_100029178, &qword_10001BB98) + 44);
  v191 = v183;
  *&v192 = v182;
  *(&v192 + 1) = v181;
  sub_100001A1C(&qword_100029180, &qword_10001BBA0);
  sub_1000167BC();
  v89 = v166;
  sub_100019DEC();
  v90 = v168;
  v91 = *(v168 + 16);
  v92 = v167;
  v93 = v169;
  v91(v167, v89, v169);
  v91(v88, v92, v93);
  v94 = &v88[*(sub_100001A1C(&qword_100029190, &qword_10001BBA8) + 48)];
  *v94 = v41;
  v94[1] = v22;
  v95 = v179;
  v94[2] = v179;
  v94[3] = v49;
  sub_100016838(v41, v22, v95, v49);
  LOBYTE(v91) = v95;
  sub_100016838(v41, v22, v95, v49);
  v96 = *(v90 + 8);
  v96(v89, v93);
  v178 = v41;
  v177 = v22;
  v97 = v22;
  LOBYTE(v22) = v91;
  v168 = v49;
  sub_10001687C(v41, v97, v91, v49);
  v96(v92, v93);
  v98 = v171;
  v99 = v170;
  v100 = v172;
  (*(v171 + 104))(v170, enum case for WidgetFamily.accessoryRectangular(_:), v172);
  sub_1000168C0(&qword_1000285D0, &type metadata accessor for WidgetFamily, &protocol conformance descriptor for WidgetFamily);
  sub_10001A25C();
  sub_10001A25C();
  (*(v98 + 8))(v99, v100);
  v101 = 0;
  v102 = v173;
  if (v191 != v189)
  {
  }

  KeyPath = swift_getKeyPath();
  v47 = v174;
  sub_100003A50(v185, v174, &qword_1000290E0, &qword_10001BB48);
  v104 = (v47 + *(v102 + 36));
  *v104 = KeyPath;
  v104[1] = v101;
  v105 = enum case for DynamicTypeSize.xxLarge(_:);
  v106 = sub_1000199BC();
  v107 = v176;
  (*(*(v106 - 8) + 104))(v176, v105, v106);
  sub_1000168C0(&qword_100029198, &type metadata accessor for DynamicTypeSize, &protocol conformance descriptor for DynamicTypeSize);
  v108 = sub_10001A21C();
  v42 = v175;
  if ((v108 & 1) == 0)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  sub_100015C54();
  sub_100002294(&qword_1000290F8, &qword_1000290C8, &qword_10001BB40, &protocol conformance descriptor for PartialRangeThrough<A>);
  v109 = v151;
  sub_100019E4C();
  sub_100003504(v107, &qword_1000290C8, &qword_10001BB40);
  sub_100003504(v47, &qword_1000290C0, &qword_10001BB38);
  v110 = swift_getKeyPath();
  v111 = v155;
  (*(v160 + 32))(v155, v109, v162);
  v112 = (v111 + *(v158 + 36));
  *v112 = v110;
  v112[1] = 0x3FE4CCCCCCCCCCCDLL;
  sub_100015B00();
  v113 = v150;
  sub_100019E2C();
  sub_100003504(v111, &qword_1000290B0, &qword_10001BB30);
  v114 = swift_getKeyPath();
  v115 = v149;
  (*(v156 + 32))(v149, v113, v159);
  v116 = v115 + *(v147 + 36);
  *v116 = v114;
  *(v116 + 8) = 0;
  LOBYTE(v41) = 1;
  *(v116 + 16) = 1;
  v117 = swift_getKeyPath();
  v118 = v152;
  sub_100003A50(v115, v152, &qword_1000290A8, &qword_10001BB28);
  v119 = (v118 + *(v154 + 36));
  *v119 = v117;
  v119[1] = 0xC000000000000000;
  sub_100015954();
  v120 = v148;
  sub_100019E5C();
  sub_100003504(v118, &qword_100029090, &qword_10001BB20);
  v121 = swift_getKeyPath();
  v122 = v161;
  (*(v153 + 32))(v161, v120, v157);
  v123 = v122 + *(v146 + 36);
  *v123 = v121;
  *(v123 + 8) = 0;
  v124 = &v42[*(v145 + 36)];
  v125 = *(sub_100001A1C(&qword_100029138, &qword_10001BB70) + 28);
  v126 = enum case for Image.Scale.small(_:);
  v127 = sub_100019F7C();
  (*(*(v127 - 8) + 104))(v124 + v125, v126, v127);
  *v124 = swift_getKeyPath();
  sub_100003A50(v122, v42, &qword_100029088, &qword_10001BB18);
  v128 = *(v186 + v184[8]);
  v129 = v186 + v184[11];
  v47 = *v129;
  v49 = *(v129 + 8);
LABEL_27:
  v140 = v47;
  v141 = v49;
  LOBYTE(v139) = 0;
  v138 = v128;
  LOBYTE(v137) = v41;
  v136 = 0;
  sub_100019A1C();
  sub_10001687C(v183, *(&v183 + 1), v182, v181);

  v130 = v164;
  sub_100003A50(v42, v164, &qword_100029078, &qword_10001BB10);
  sub_10001687C(v178, v177, v22, v168);
  v131 = v130 + *(sub_100001A1C(&qword_100029048, &qword_10001BAF0) + 36);
  v132 = v196;
  *(v131 + 64) = v195;
  *(v131 + 80) = v132;
  *(v131 + 96) = v197;
  v133 = v192;
  *v131 = v191;
  *(v131 + 16) = v133;
  result = v194;
  *(v131 + 32) = v193;
  *(v131 + 48) = result;
  return result;
}

uint64_t sub_100012264(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, uint64_t a8, uint64_t a9)
{
  v54 = a1;
  LODWORD(v53) = a7;
  v52 = a5;
  v13 = sub_10001983C();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v49 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = a2[1];
  v56 = *a2;
  v57 = v17;
  sub_10001982C();
  sub_100006908();
  v18 = sub_10001A32C();
  v20 = v19;
  (*(v14 + 8))(v16, v13);
  if (a4)
  {
    v21 = v18 == a3 && v20 == a4;
    if (v21 || (sub_10001A3CC() & 1) != 0)
    {
    }
  }

  if (a6 && (v18 == v52 ? (v23 = v20 == a6) : (v23 = 0), v23 || (sub_10001A3CC() & 1) != 0))
  {

    v24 = v20;
    v25 = v18;
  }

  else
  {
    v56 = v18;
    v57 = v20;

    v58._countAndFlagsBits = 10;
    v58._object = 0xE100000000000000;
    sub_10001A24C(v58);
    v25 = v56;
    v24 = v57;
  }

  v56 = v18;
  v57 = v20;
  __chkstk_darwin(v26);
  *(&v49 - 2) = &v56;
  v27 = v55;
  v28 = sub_100016238(sub_100016B24, (&v49 - 4), a9);

  v29 = sub_1000126D4();
  v30 = sub_1000102B0();
  if (v53)
  {
    if ((v28 & 1) == 0)
    {
      goto LABEL_24;
    }

LABEL_20:
    if (v30)
    {
      sub_100019EFC();
LABEL_22:

      v31 = sub_100019D8C();
      v33 = v32;
      v35 = v34;
      v37 = v36;
      sub_100006A8C(v25, v24, 0);

      goto LABEL_25;
    }

    goto LABEL_24;
  }

  if (v28)
  {
    goto LABEL_20;
  }

  if ((v29 & 1) == 0)
  {
    if (v30)
    {
      sub_100019F0C();
    }

    else
    {
      sub_100019ECC();
    }

    goto LABEL_22;
  }

LABEL_24:
  v35 = 0;
  v37 = &_swiftEmptyArrayStorage;
  v31 = v25;
  v33 = v24;
LABEL_25:
  sub_100006A8C(v25, v24, 0);

  v38 = v54;
  if (*(v54 + 24))
  {
    v40 = *v54;
    v39 = *(v54 + 8);
    LOBYTE(v56) = *(v54 + 16) & 1;
    v41 = v56;
    v50 = v35;
    v42 = v54;
    v43 = sub_100019DAC();
    v55 = v27;
    v52 = v44;
    v53 = v43;
    v46 = v45;
    v51 = v47;
    sub_100006A8C(v40, v39, v41);

    sub_100006A8C(v31, v33, v50 & 1);

    v48 = v52;
    *v42 = v53;
    v42[1] = v48;
    v42[2] = v46 & 1;
    v42[3] = v51;
  }

  else
  {
    *v54 = v31;
    v38[1] = v33;
    v38[2] = v35 & 1;
    v38[3] = v37;
  }

  return result;
}

uint64_t sub_100012620(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t *, void *), uint64_t a6, uint64_t a7)
{
  v13 = result;
  v14 = a2;
  v15 = a3;
  v16 = a4;
  v8 = *(a7 + 16);
  if (v8)
  {
    for (i = (a7 + 40); ; i += 2)
    {
      v11 = *i;
      v12[0] = *(i - 1);
      v12[1] = v11;

      a5(&v13, v12);
      if (v7)
      {
        break;
      }

      if (!--v8)
      {
        return v13;
      }
    }

    return sub_10001687C(v13, v14, v15, v16);
  }

  return result;
}

uint64_t sub_1000126D4()
{
  v1 = sub_100019B9C();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v8[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = *v0;
  if (*(v0 + 8) != 1)
  {

    sub_10001A29C();
    v6 = sub_100019CEC();
    sub_1000198FC();

    sub_100019B8C();
    swift_getAtKeyPath();
    sub_1000067A0(v5, 0);
    (*(v2 + 8))(v4, v1);
    LOBYTE(v5) = v8[15];
  }

  return v5 & 1;
}

uint64_t sub_10001281C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v36 = a2;
  v35 = sub_100001A1C(&qword_100029038, &qword_10001BAE0);
  __chkstk_darwin(v35);
  v4 = (v32 - v3);
  v5 = sub_100001A1C(&qword_100029040, &qword_10001BAE8);
  __chkstk_darwin(v5);
  v7 = v32 - v6;
  v33 = sub_100001A1C(&qword_100029048, &qword_10001BAF0);
  __chkstk_darwin(v33);
  v9 = v32 - v8;
  v10 = sub_100001A1C(&qword_100029050, &qword_10001BAF8);
  __chkstk_darwin(v10);
  v34 = v32 - v11;
  v12 = sub_100001A1C(&qword_100029058, &qword_10001BB00);
  __chkstk_darwin(v12);
  v14 = v32 - v13;
  v15 = type metadata accessor for PlaceholderTitleView(0);
  __chkstk_darwin(v15);
  v17 = v32 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_1000126D4())
  {
    v18 = type metadata accessor for TitleView(0);
    v19 = *(v18 + 36);
    v20 = sub_10001A12C();
    (*(*(v20 - 8) + 16))(v17, a1 + v19, v20);
    v21 = (a1 + *(v18 + 44));
    v22 = *v21;
    v23 = v21[1];
    v24 = sub_1000102B0();
    v25 = &v17[v15[5]];
    *v25 = v22;
    *(v25 + 1) = v23;
    v17[v15[6]] = v24 & 1;
    *&v17[v15[7]] = 0x3FD3333333333333;
    sub_10001702C(v17, v14, type metadata accessor for PlaceholderTitleView);
    swift_storeEnumTagMultiPayload();
    sub_1000168C0(&qword_100029148, type metadata accessor for PlaceholderTitleView, &unk_10001BF48);
    sub_100015D38();
    sub_100019CBC();
    return sub_100017094(v17, type metadata accessor for PlaceholderTitleView);
  }

  else
  {
    v32[1] = v10;
    if (sub_1000102B0())
    {
      sub_100010E7C(0, 1, v9);
      sub_1000031E0(v9, v7, &qword_100029048, &qword_10001BAF0);
      swift_storeEnumTagMultiPayload();
      sub_10001571C();
      sub_100002294(&qword_100029140, &qword_100029038, &qword_10001BAE0, &protocol conformance descriptor for ZStack<A>);
      v27 = v34;
      sub_100019CBC();
      v28 = v9;
      v29 = &qword_100029048;
      v30 = &qword_10001BAF0;
    }

    else
    {
      *v4 = *(a1 + *(type metadata accessor for TitleView(0) + 44));
      v31 = sub_100001A1C(&qword_100029060, &qword_10001BB08);
      sub_100012DA0(v4 + *(v31 + 44));
      sub_1000031E0(v4, v7, &qword_100029038, &qword_10001BAE0);
      swift_storeEnumTagMultiPayload();
      sub_10001571C();
      sub_100002294(&qword_100029140, &qword_100029038, &qword_10001BAE0, &protocol conformance descriptor for ZStack<A>);
      v27 = v34;
      sub_100019CBC();
      v28 = v4;
      v29 = &qword_100029038;
      v30 = &qword_10001BAE0;
    }

    sub_100003504(v28, v29, v30);
    sub_1000031E0(v27, v14, &qword_100029050, &qword_10001BAF8);
    swift_storeEnumTagMultiPayload();
    sub_1000168C0(&qword_100029148, type metadata accessor for PlaceholderTitleView, &unk_10001BF48);
    sub_100015D38();
    sub_100019CBC();
    return sub_100003504(v27, &qword_100029050, &qword_10001BAF8);
  }
}

uint64_t sub_100012DA0@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_100001A1C(&qword_1000291C0, &qword_10001BCE8);
  __chkstk_darwin(v2);
  v4 = &v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v21 - v6;
  v8 = sub_100001A1C(&qword_1000291C8, &qword_10001BCF0);
  __chkstk_darwin(v8 - 8);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v21 - v12;
  v14 = sub_1000102B0();
  sub_100010E7C(1, v14 & 1, v13);
  v15 = sub_1000102B0();
  sub_100010E7C(0, v15 & 1, v7);
  if (qword_100028458 != -1)
  {
    swift_once();
  }

  v16 = qword_10002A3B8;
  KeyPath = swift_getKeyPath();
  v18 = &v7[*(v2 + 36)];
  *v18 = KeyPath;
  v18[1] = v16;
  sub_1000031E0(v13, v10, &qword_1000291C8, &qword_10001BCF0);
  sub_1000031E0(v7, v4, &qword_1000291C0, &qword_10001BCE8);
  sub_1000031E0(v10, a1, &qword_1000291C8, &qword_10001BCF0);
  v19 = sub_100001A1C(&qword_1000291D0, &qword_10001BD28);
  sub_1000031E0(v4, a1 + *(v19 + 48), &qword_1000291C0, &qword_10001BCE8);

  sub_100003504(v7, &qword_1000291C0, &qword_10001BCE8);
  sub_100003504(v13, &qword_1000291C8, &qword_10001BCF0);
  sub_100003504(v4, &qword_1000291C0, &qword_10001BCE8);
  return sub_100003504(v10, &qword_1000291C8, &qword_10001BCF0);
}

uint64_t sub_100013018@<X0>(uint64_t a2@<X8>)
{
  *a2 = sub_100019C4C();
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v4 = sub_100001A1C(&qword_100029028, &qword_10001BAD0);
  sub_10001281C(v2, (a2 + *(v4 + 44)));
  result = sub_100001A1C(&qword_100029030, &qword_10001BAD8);
  *(a2 + *(result + 36)) = 256;
  return result;
}

uint64_t sub_100013088@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v42 = a2;
  v41 = sub_10001A03C();
  v40 = *(v41 - 8);
  __chkstk_darwin(v41);
  v39 = &v32 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100019EBC();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = *(a1 + 24);
  v35 = sub_10001994C();
  v8 = sub_1000199DC();
  v38 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v32 - v9;
  sub_100019A0C();
  v11 = sub_1000199DC();
  v37 = *(v11 - 8);
  __chkstk_darwin(v11);
  v33 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v36 = &v32 - v14;
  sub_100001A1C(&qword_100029220, &qword_10001BD88);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_10001B480;
  v16 = enum case for Color.RGBColorSpace.sRGB(_:);
  v17 = *(v5 + 104);
  v17(v7, enum case for Color.RGBColorSpace.sRGB(_:), v4);
  sub_100019F2C();
  *(v15 + 32) = sub_100019FCC();
  *(v15 + 40) = v18;
  v17(v7, v16, v4);
  sub_100019F2C();
  *(v15 + 48) = sub_100019FCC();
  *(v15 + 56) = v19;
  sub_100019FDC();
  sub_10001A04C();
  sub_10001A07C();
  sub_10001999C();
  v47 = v50[0];
  v48 = v50[1];
  v49 = v51;
  v20 = sub_10000F414();
  sub_100019E8C();
  sub_100017AB8(v50);
  v21 = v40;
  v22 = v39;
  v23 = v41;
  (*(v40 + 104))(v39, enum case for BlendMode.plusLighter(_:), v41);
  WitnessTable = swift_getWitnessTable();
  v45 = v20;
  v46 = WitnessTable;
  v25 = swift_getWitnessTable();
  v26 = v33;
  sub_100019EAC();
  (*(v21 + 8))(v22, v23);
  (*(v38 + 8))(v10, v8);
  v43 = v25;
  v44 = &protocol witness table for _BlendModeEffect;
  swift_getWitnessTable();
  v27 = v37;
  v28 = *(v37 + 16);
  v29 = v36;
  v28(v36, v26, v11);
  v30 = *(v27 + 8);
  v30(v26, v11);
  v28(v42, v29, v11);
  return (v30)(v29, v11);
}

__n128 sub_1000135E4@<Q0>(uint64_t a1@<X8>)
{
  v3 = sub_100001A1C(&qword_1000293C0, &qword_10001BF98);
  __chkstk_darwin(v3 - 8);
  v5 = &v32 - v4;
  v6 = sub_100019D6C();
  v35 = *(v6 - 8);
  v36 = v6;
  __chkstk_darwin(v6);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10001A12C();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v13 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 104))(v13, enum case for WidgetFamily.accessoryRectangular(_:), v9, v11);
  sub_1000168C0(&qword_1000285D0, &type metadata accessor for WidgetFamily, &protocol conformance descriptor for WidgetFamily);
  v38 = v1;
  sub_10001A25C();
  sub_10001A25C();
  (*(v10 + 8))(v13, v9);
  if (v60[0].n128_u64[0] == v51.n128_u64[0])
  {
    v37 = sub_100019D0C();
  }

  else
  {
    v15 = v35;
    v14 = v36;
    (*(v35 + 104))(v8, enum case for Font.TextStyle.title2(_:), v36);
    v16 = sub_100019D1C();
    (*(*(v16 - 8) + 56))(v5, 1, 1, v16);
    sub_100019D2C();
    v37 = sub_100019D3C();
    sub_100003504(v5, &qword_1000293C0, &qword_10001BF98);
    (*(v15 + 8))(v8, v14);
  }

  v36 = sub_100019C4C();
  v50 = 0;
  sub_100013B74(0x1000000000000010, 0x800000010001C620, 0, &_swiftEmptyArrayStorage, &v40);
  v57 = v46;
  v58 = v47;
  v53 = v42;
  v54 = v43;
  v55 = v44;
  v56 = v45;
  v51 = v40;
  v52 = v41;
  v60[5] = v45;
  v60[6] = v46;
  v60[7] = v47;
  v60[8] = v48;
  v60[1] = v41;
  v60[2] = v42;
  v60[3] = v43;
  v60[4] = v44;
  v59 = v48;
  v60[0] = v40;
  sub_1000031E0(&v51, &v39, &qword_1000293C8, &qword_10001BFA0);
  sub_100003504(v60, &qword_1000293C8, &qword_10001BFA0);
  *&v49[87] = v56;
  *&v49[103] = v57;
  *&v49[119] = v58;
  *&v49[135] = v59;
  *&v49[23] = v52;
  *&v49[39] = v53;
  *&v49[55] = v54;
  *&v49[71] = v55;
  *&v49[7] = v51;
  LODWORD(v35) = v50;
  if (qword_100028458 != -1)
  {
    swift_once();
  }

  v17 = qword_10002A3B8;
  KeyPath = swift_getKeyPath();
  v33 = swift_getKeyPath();
  v18 = swift_getKeyPath();
  v40.n128_u8[0] = 0;
  v19 = *(v38 + *(type metadata accessor for PlaceholderTitleView(0) + 28));
  v20 = swift_getKeyPath();

  v21 = v37;

  sub_100019A1C();

  v22 = *&v49[112];
  *(a1 + 113) = *&v49[96];
  *(a1 + 129) = v22;
  *(a1 + 145) = *&v49[128];
  v23 = *&v49[48];
  *(a1 + 49) = *&v49[32];
  *(a1 + 65) = v23;
  v24 = *&v49[80];
  *(a1 + 81) = *&v49[64];
  *(a1 + 97) = v24;
  v25 = *&v49[16];
  *(a1 + 17) = *v49;
  *a1 = v36;
  *(a1 + 8) = 0;
  *(a1 + 16) = v35;
  v26 = *&v49[143];
  *(a1 + 33) = v25;
  v27 = v33;
  v28 = KeyPath;
  *(a1 + 160) = v26;
  *(a1 + 168) = v28;
  *(a1 + 176) = v17;
  *(a1 + 184) = v27;
  *(a1 + 192) = v21;
  *(a1 + 200) = v18;
  *(a1 + 208) = 1;
  *(a1 + 216) = 0;
  *(a1 + 224) = v20;
  *(a1 + 232) = v19;
  v29 = v45;
  *(a1 + 304) = v44;
  *(a1 + 320) = v29;
  *(a1 + 336) = v46;
  v30 = v41;
  *(a1 + 240) = v40;
  *(a1 + 256) = v30;
  result = v43;
  *(a1 + 272) = v42;
  *(a1 + 288) = result;
  return result;
}

uint64_t sub_100013B74@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = sub_10001A02C();
  v12 = v11;
  a3 &= 1u;
  LOBYTE(v21[0]) = a3;
  *&v16 = a1;
  *(&v16 + 1) = a2;
  LOBYTE(v17) = a3;
  *(&v17 + 1) = a4;
  *&v18 = a1;
  *(&v18 + 1) = a2;
  LOBYTE(v19) = a3;
  *(&v19 + 1) = a4;
  *&v20 = v10;
  *(&v20 + 1) = v11;
  v13 = v19;
  *(a5 + 32) = v18;
  *(a5 + 48) = v13;
  v14 = v17;
  *a5 = v16;
  *(a5 + 16) = v14;
  *(a5 + 64) = v20;
  *(a5 + 80) = xmmword_10001B760;
  *(a5 + 96) = 0;
  *(a5 + 104) = &_swiftEmptyArrayStorage;
  *(a5 + 112) = xmmword_10001B770;
  *(a5 + 128) = 0;
  *(a5 + 136) = &_swiftEmptyArrayStorage;
  sub_10000C4A4(a1, a2, a3);

  sub_10000C4A4(a1, a2, a3);

  sub_1000031E0(&v16, v21, &qword_1000293D0, &qword_10001BFA8);
  sub_10000C4A4(0x202D202D202D202DLL, 0xED00002D202D202DLL, 0);

  sub_10000C4A4(0x202D202D202D202DLL, 0xEA0000000000202DLL, 0);

  sub_100006A8C(0x202D202D202D202DLL, 0xEA0000000000202DLL, 0);

  sub_100006A8C(0x202D202D202D202DLL, 0xED00002D202D202DLL, 0);

  v21[0] = a1;
  v21[1] = a2;
  v22 = a3;
  v23 = a4;
  v24 = a1;
  v25 = a2;
  v26 = a3;
  v27 = a4;
  v28 = v10;
  v29 = v12;
  return sub_100003504(v21, &qword_1000293D0, &qword_10001BFA8);
}

void sub_100013D64(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v133 = a2;
  v3 = sub_10001A09C();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v116 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v129 = sub_100001A1C(&qword_100029200, &qword_10001BD80);
  __chkstk_darwin(v129);
  v127 = v116 - v7;
  v128 = sub_100019F7C();
  v126 = *(v128 - 8);
  *&v8 = __chkstk_darwin(v128).n128_u64[0];
  v125 = v116 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v132 = a1;
  if (!a1 || (v10 = [v132 bodyContent]) == 0)
  {
    sub_10001A08C();
    sub_10001A0AC();
    (*(v4 + 8))(v6, v3);
    v17 = [objc_allocWithZone(TPSPlaceholderWidgetContent) init];
    v18 = [v17 bodyText];

    if (v18)
    {
      v19 = sub_10001A22C();
      v21 = v20;
    }

    else
    {
      v19 = 0;
      v21 = 0xE000000000000000;
    }

    *&v143 = v19;
    *(&v143 + 1) = v21;
    sub_100006908();
    v95 = sub_100019DCC();
    v97 = v96;
    v99 = v98;
    sub_100019EDC();
    v100 = sub_100019D8C();
    v102 = v101;
    v104 = v103;
    v106 = v105;

    sub_100006A8C(v95, v97, v99 & 1);

    *&v143 = v100;
    *(&v143 + 1) = v102;
    LOBYTE(v144) = v104 & 1;
    *(&v144 + 1) = v106;
    v107 = sub_100019FBC();
LABEL_68:
    *v133 = v107;
    return;
  }

  v11 = v10;
  sub_100001A1C(&qword_1000291A0, &qword_10001BCD8);
  v12 = sub_10001A26C();

  v136 = *(v12 + 16);
  if (!v136)
  {
    v14 = 0;
    v135 = 0;
    v138 = &_swiftEmptyArrayStorage;
    v15 = 0xE000000000000000;
LABEL_64:
    v108 = v125;
    sub_100014D50(v12, v125);

    KeyPath = swift_getKeyPath();
    v110 = v127;
    v111 = &v127[*(v129 + 36)];
    v112 = sub_100001A1C(&qword_100029138, &qword_10001BB70);
    v113 = v126;
    v114 = v128;
    (*(v126 + 16))(v111 + *(v112 + 28), v108, v128);
    *v111 = KeyPath;
    *v110 = v14;
    *(v110 + 1) = v15;
    v110[16] = v135 & 1;
    *(v110 + 3) = v138;
    sub_100016EAC();
    v107 = sub_100019FBC();
    (*(v113 + 8))(v108, v114);
    goto LABEL_68;
  }

  v13 = 0;
  v14 = 0;
  v135 = 0;
  v15 = 0xE000000000000000;
  v16 = &type metadata for String;
  v138 = &_swiftEmptyArrayStorage;
  v137 = v12;
  while (v13 < *(v12 + 16))
  {

    isa = sub_10001A20C().super.isa;

    *&v141 = 1701869940;
    *(&v141 + 1) = 0xE400000000000000;
    v23 = v16;
    v24 = sub_10001A3DC();
    v139 = isa;
    v25 = [(objc_class *)isa __swift_objectForKeyedSubscript:v24];
    swift_unknownObjectRelease();
    if (v25)
    {
      sub_10001A34C();
      swift_unknownObjectRelease();
    }

    else
    {
      v141 = 0u;
      v142 = 0u;
    }

    v144 = v142;
    v143 = v141;
    if (!*(&v142 + 1))
    {

      sub_100003504(&v143, &qword_1000291B8, &qword_10001BCE0);
LABEL_67:
      *&v143 = v14;
      *(&v143 + 1) = v15;
      v115 = v135 & 1;
      LOBYTE(v144) = v135 & 1;
      *(&v144 + 1) = v138;
      sub_10000C4A4(v14, v15, v135 & 1);

      v107 = sub_100019FBC();

      sub_100006A8C(v14, v15, v115);

      goto LABEL_68;
    }

    if ((swift_dynamicCast() & 1) == 0)
    {

      goto LABEL_67;
    }

    v26 = v140;
    if (v140 == __PAIR128__(0xE400000000000000, 1954047348) || (sub_10001A3CC() & 1) != 0)
    {
      *&v141 = 1954047348;
      *(&v141 + 1) = 0xE400000000000000;
      v27 = [(objc_class *)v139 __swift_objectForKeyedSubscript:sub_10001A3DC()];
      swift_unknownObjectRelease();
      if (v27)
      {
        sub_10001A34C();
        swift_unknownObjectRelease();
      }

      else
      {
        v141 = 0u;
        v142 = 0u;
      }

      v144 = v142;
      v143 = v141;
      v12 = v137;
      if (*(&v142 + 1))
      {
        v134 = v13;
        v28 = v16;
        if (swift_dynamicCast())
        {

          v143 = v140;
          sub_100006908();
          v29 = sub_100019DCC();
          v31 = v30;
          v33 = v32;
          sub_100019EDC();
          v130 = v14;
          v34 = sub_100019D8C();
          v131 = v15;
          v36 = v35;
          v38 = v37;

          sub_100006A8C(v29, v31, v33 & 1);

          v39 = v135;
          v40 = v130;
          v41 = v131;
          v124 = sub_100019DAC();
          v123 = v42;
          v44 = v43;
          v46 = v45;
          sub_100006A8C(v34, v36, v38 & 1);

          sub_100006A8C(v40, v41, v39 & 1);

          v14 = v124;
          v15 = v123;
          v135 = v44;
          v12 = v137;
          v138 = v46;
          v16 = v28;
LABEL_23:
          v13 = v134;
          goto LABEL_8;
        }

        v13 = v134;
      }

      else
      {
        sub_100003504(&v143, &qword_1000291B8, &qword_10001BCE0);
      }
    }

    if (v26 == __PAIR128__(0xE600000000000000, 0x6C6F626D7973))
    {
    }

    else
    {
      v47 = sub_10001A3CC();

      if ((v47 & 1) == 0)
      {

        goto LABEL_46;
      }
    }

    *&v141 = 0x7372747461;
    *(&v141 + 1) = 0xE500000000000000;
    v48 = [(objc_class *)v139 __swift_objectForKeyedSubscript:sub_10001A3DC()];
    swift_unknownObjectRelease();
    if (v48)
    {
      sub_10001A34C();
      swift_unknownObjectRelease();
    }

    else
    {
      v141 = 0u;
      v142 = 0u;
    }

    v144 = v142;
    v143 = v141;
    if (*(&v142 + 1))
    {
      sub_10000509C(0, &qword_1000291B0, NSDictionary_ptr);
      if ((swift_dynamicCast() & 1) == 0)
      {

        goto LABEL_8;
      }

      v49 = v140;
      *&v141 = 0x6449676E69727473;
      *(&v141 + 1) = 0xE800000000000000;
      v50 = [v140 __swift_objectForKeyedSubscript:sub_10001A3DC()];
      swift_unknownObjectRelease();
      if (v50)
      {
        sub_10001A34C();
        swift_unknownObjectRelease();
      }

      else
      {
        v141 = 0u;
        v142 = 0u;
      }

      v144 = v142;
      v143 = v141;
      if (!*(&v142 + 1))
      {
        v53 = v15;
        v54 = v14;
        v124 = v49;
        sub_100003504(&v143, &qword_1000291B8, &qword_10001BCE0);
        goto LABEL_45;
      }

      if ((swift_dynamicCast() & 1) == 0)
      {
        v53 = v15;
        v54 = v14;
        v124 = v49;
LABEL_45:
        v55 = v135;
        v56 = v53;
        v57 = sub_100019DAC();
        v59 = v58;
        v61 = v60;
        v63 = v62;

        sub_100006A8C(v54, v56, v55 & 1);

        v14 = v57;
        v15 = v59;
        v135 = v61;
        v138 = v63;
        v12 = v137;
LABEL_46:
        v16 = v23;
        goto LABEL_8;
      }

      v51 = *(&v140 + 1);
      v123 = v140;
      *&v143 = 7629921;
      *(&v143 + 1) = 0xE300000000000000;
      v52 = [v49 __swift_objectForKeyedSubscript:sub_10001A3DC()];
      swift_unknownObjectRelease();
      v131 = v15;
      if (v52)
      {
        sub_10001A34C();
        swift_unknownObjectRelease();
      }

      else
      {
        v141 = 0u;
        v142 = 0u;
      }

      v130 = v14;
      v144 = v142;
      v143 = v141;
      v64 = v123;
      if (*(&v142 + 1))
      {
        v65 = swift_dynamicCast();
        v66 = v140;
        if (!v65)
        {
          v66 = 0;
        }

        v122 = v66;
        if (v65)
        {
          v67 = *(&v140 + 1);
        }

        else
        {
          v67 = 0;
        }
      }

      else
      {
        sub_100003504(&v143, &qword_1000291B8, &qword_10001BCE0);
        v122 = 0;
        v67 = 0;
      }

      sub_10000509C(0, &qword_100029210, UIImage_ptr);

      v145._countAndFlagsBits = v64;
      v145._object = v51;
      v68 = sub_10001A2EC(v145);
      if (!v68)
      {

        v14 = v130;
        v15 = v131;
        v12 = v137;
        goto LABEL_8;
      }

      v124 = v49;

      sub_100019F6C();
      v121 = swift_retain_n();
      v69 = sub_100019DDC();
      v71 = v70;
      v73 = v72;
      sub_100019EDC();
      v119 = sub_100019D8C();
      v118 = v74;
      v117 = v75;
      v120 = v76;

      sub_100006A8C(v69, v71, v73 & 1);

      v134 = v13;
      v116[1] = v51;
      if (v67)
      {
        v77 = v67;
        v78 = v122;
      }

      else
      {

        v78 = v123;
        v77 = v51;
      }

      *&v143 = v78;
      *(&v143 + 1) = v77;
      sub_100006908();

      v79 = v117;
      v80 = v119;
      v81 = v118;
      v82 = sub_100019D9C();
      v84 = v83;
      v86 = v85;
      v123 = v87;
      sub_100006A8C(v80, v81, v79 & 1);

      v88 = v135;
      v89 = v130;
      v90 = v131;
      v122 = sub_100019DAC();
      v121 = v91;
      LODWORD(v120) = v92;
      v94 = v93;
      sub_100006A8C(v82, v84, v86 & 1);

      sub_100006A8C(v89, v90, v88 & 1);
      v16 = &type metadata for String;

      v14 = v122;
      v15 = v121;
      v135 = v120;
      v138 = v94;
      v12 = v137;
      goto LABEL_23;
    }

    sub_100003504(&v143, &qword_1000291B8, &qword_10001BCE0);
LABEL_8:
    if (v136 == ++v13)
    {
      goto LABEL_64;
    }
  }

  __break(1u);
}

uint64_t sub_100014D50@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v35 = a2;
  v3 = sub_100019F7C();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v4 + 104);
  v33 = v9;
  v34 = v7;
  v31 = enum case for Image.Scale.small(_:);
  v32 = v8;
  v8(v5);
  v10 = *(a1 + 16);
  if (v10)
  {
    v11 = (a1 + 32);
    v12 = &_swiftEmptyArrayStorage;
    do
    {
      v38 = *v11;
      sub_100015494(&v38, &v36);
      v14 = v37;
      if (v37)
      {
        v15 = v36;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v12 = sub_10000C5D8(0, *(v12 + 2) + 1, 1, v12);
        }

        v17 = *(v12 + 2);
        v16 = *(v12 + 3);
        if (v17 >= v16 >> 1)
        {
          v12 = sub_10000C5D8((v16 > 1), v17 + 1, 1, v12);
        }

        *(v12 + 2) = v17 + 1;
        v13 = &v12[16 * v17];
        *(v13 + 4) = v15;
        *(v13 + 5) = v14;
      }

      ++v11;
      --v10;
    }

    while (v10);
  }

  else
  {
    v12 = &_swiftEmptyArrayStorage;
  }

  v18 = *(v12 + 2);
  if (!v18)
  {

    return (*(v4 + 32))(v35, v34, v33);
  }

  v19 = *(v12 + 4);
  v20 = *(v12 + 5);
  v21 = v18 - 1;
  if (v18 != 1)
  {
    v25 = v12 + 56;
    while (1)
    {
      v26 = *(v25 - 1) == v19 && *v25 == v20;
      if (!v26 && (sub_10001A3CC() & 1) == 0)
      {
        break;
      }

      v25 += 2;
      if (!--v21)
      {
        goto LABEL_13;
      }
    }

    v23 = v33;
    return (*(v4 + 32))(v35, v34, v23);
  }

LABEL_13:

  v22 = sub_100016F64(v19, v20);
  if (v22 > 1)
  {
    v23 = v33;
    if (v22 == 2 || v22 == 3)
    {
      goto LABEL_28;
    }

    return (*(v4 + 32))(v35, v34, v23);
  }

  v23 = v33;
  if (v22)
  {

    (*(v4 + 8))(v34, v23);
    goto LABEL_31;
  }

LABEL_28:
  v27 = sub_10001A3CC();

  (*(v4 + 8))(v34, v23);
  if (v27)
  {
LABEL_31:
    v29 = enum case for Image.Scale.large(_:);
    v28 = v35;
    return (v32)(v28, v29, v23);
  }

  v28 = v35;
  v29 = v31;
  return (v32)(v28, v29, v23);
}

uint64_t sub_1000150A4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_100001A1C(&qword_1000290C8, &qword_10001BB40);
  __chkstk_darwin(v4);
  v6 = v27 - v5;
  v7 = sub_100001A1C(&qword_1000291D8, &qword_10001BD30);
  __chkstk_darwin(v7);
  v9 = v27 - v8;
  v10 = sub_100001A1C(&qword_1000291E0, &qword_10001BD38);
  __chkstk_darwin(v10);
  v12 = v27 - v11;
  sub_100013D64(a1, v28);
  v27[1] = *&v28[0];
  v13 = enum case for DynamicTypeSize.xxLarge(_:);
  v14 = sub_1000199BC();
  (*(*(v14 - 8) + 104))(v6, v13, v14);
  sub_1000168C0(&qword_100029198, &type metadata accessor for DynamicTypeSize, &protocol conformance descriptor for DynamicTypeSize);
  result = sub_10001A21C();
  if (result)
  {
    v27[0] = a2;
    sub_100002294(&qword_1000290F8, &qword_1000290C8, &qword_10001BB40, &protocol conformance descriptor for PartialRangeThrough<A>);
    sub_100019E4C();
    sub_100003504(v6, &qword_1000290C8, &qword_10001BB40);

    KeyPath = swift_getKeyPath();
    v17 = &v9[*(v7 + 36)];
    *v17 = KeyPath;
    v17[1] = 0x3FE6666666666666;
    sub_100016D0C();
    sub_100019E5C();
    sub_100003504(v9, &qword_1000291D8, &qword_10001BD30);
    v18 = &v12[*(v10 + 36)];
    v19 = *(sub_100001A1C(&qword_1000291F0, &qword_10001BD40) + 28);
    v20 = enum case for Text.TruncationMode.tail(_:);
    v21 = sub_100019D7C();
    (*(*(v21 - 8) + 104))(v18 + v19, v20, v21);
    *v18 = swift_getKeyPath();
    sub_100019FFC();
    sub_100019A1C();
    v22 = v27[0];
    sub_100003A50(v12, v27[0], &qword_1000291E0, &qword_10001BD38);
    result = sub_100001A1C(&qword_1000291F8, &qword_10001BD78);
    v23 = (v22 + *(result + 36));
    v24 = v28[5];
    v23[4] = v28[4];
    v23[5] = v24;
    v23[6] = v28[6];
    v25 = v28[1];
    *v23 = v28[0];
    v23[1] = v25;
    v26 = v28[3];
    v23[2] = v28[2];
    v23[3] = v26;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100015494@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  sub_10001A37C();
  if (!*(v3 + 16))
  {
    goto LABEL_13;
  }

  v4 = sub_100015EF4(v12);
  if ((v5 & 1) == 0)
  {
    goto LABEL_13;
  }

  sub_100016BEC(*(v3 + 56) + 32 * v4, v13);
  sub_100016B98(v12);
  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
    goto LABEL_14;
  }

  v7 = sub_10001A3CC();

  if ((v7 & 1) == 0)
  {
    goto LABEL_14;
  }

  sub_10001A37C();
  if (!*(v3 + 16))
  {
    goto LABEL_13;
  }

  v8 = sub_100015EF4(v12);
  if ((v9 & 1) == 0)
  {
    goto LABEL_13;
  }

  sub_100016BEC(*(v3 + 56) + 32 * v8, v13);
  sub_100016B98(v12);
  sub_100001A1C(&qword_1000291A0, &qword_10001BCD8);
  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
    goto LABEL_14;
  }

  sub_10001A37C();
  if (!MEMORY[0x7372747471] || (v10 = sub_100015EF4(v12), (v11 & 1) == 0))
  {

LABEL_13:
    result = sub_100016B98(v12);
    goto LABEL_14;
  }

  sub_100016BEC(MEMORY[0x7372747499] + 32 * v10, v13);
  sub_100016B98(v12);

  result = swift_dynamicCast();
  if (result)
  {
    *a2 = 1702521203;
    a2[1] = 0xE400000000000000;
    return result;
  }

LABEL_14:
  *a2 = 0;
  a2[1] = 0;
  return result;
}

unint64_t sub_10001571C()
{
  result = qword_100029068;
  if (!qword_100029068)
  {
    sub_100001D70(&qword_100029048, &qword_10001BAF0);
    sub_1000157A8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100029068);
  }

  return result;
}

unint64_t sub_1000157A8()
{
  result = qword_100029070;
  if (!qword_100029070)
  {
    sub_100001D70(&qword_100029078, &qword_10001BB10);
    sub_100015860();
    sub_100002294(&qword_100029130, &qword_100029138, &qword_10001BB70, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100029070);
  }

  return result;
}

unint64_t sub_100015860()
{
  result = qword_100029080;
  if (!qword_100029080)
  {
    sub_100001D70(&qword_100029088, &qword_10001BB18);
    sub_100001D70(&qword_100029090, &qword_10001BB20);
    sub_100015954();
    swift_getOpaqueTypeConformance2();
    sub_100002294(&qword_100029120, &qword_100029128, &qword_10001BB68, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100029080);
  }

  return result;
}

unint64_t sub_100015954()
{
  result = qword_100029098;
  if (!qword_100029098)
  {
    sub_100001D70(&qword_100029090, &qword_10001BB20);
    sub_100015A0C();
    sub_100002294(&qword_100029100, &qword_100029108, &qword_10001BB58, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100029098);
  }

  return result;
}

unint64_t sub_100015A0C()
{
  result = qword_1000290A0;
  if (!qword_1000290A0)
  {
    sub_100001D70(&qword_1000290A8, &qword_10001BB28);
    sub_100001D70(&qword_1000290B0, &qword_10001BB30);
    sub_100015B00();
    swift_getOpaqueTypeConformance2();
    sub_100002294(&qword_100029110, &qword_100029118, &qword_10001BB60, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000290A0);
  }

  return result;
}

unint64_t sub_100015B00()
{
  result = qword_1000290B8;
  if (!qword_1000290B8)
  {
    sub_100001D70(&qword_1000290B0, &qword_10001BB30);
    sub_100001D70(&qword_1000290C0, &qword_10001BB38);
    sub_100001D70(&qword_1000290C8, &qword_10001BB40);
    sub_100015C54();
    sub_100002294(&qword_1000290F8, &qword_1000290C8, &qword_10001BB40, &protocol conformance descriptor for PartialRangeThrough<A>);
    swift_getOpaqueTypeConformance2();
    sub_100002294(&qword_100029100, &qword_100029108, &qword_10001BB58, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000290B8);
  }

  return result;
}

unint64_t sub_100015C54()
{
  result = qword_1000290D0;
  if (!qword_1000290D0)
  {
    sub_100001D70(&qword_1000290C0, &qword_10001BB38);
    sub_100002294(&qword_1000290D8, &qword_1000290E0, &qword_10001BB48, &protocol conformance descriptor for VStack<A>);
    sub_100002294(&qword_1000290E8, &qword_1000290F0, &qword_10001BB50, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000290D0);
  }

  return result;
}

unint64_t sub_100015D38()
{
  result = qword_100029150;
  if (!qword_100029150)
  {
    sub_100001D70(&qword_100029050, &qword_10001BAF8);
    sub_10001571C();
    sub_100002294(&qword_100029140, &qword_100029038, &qword_10001BAE0, &protocol conformance descriptor for ZStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100029150);
  }

  return result;
}

unint64_t sub_100015E40(uint64_t a1)
{
  sub_10001A3EC();
  type metadata accessor for CFString(0);
  sub_1000168C0(&qword_100029218, type metadata accessor for CFString, &unk_10001ADB4);
  sub_1000198DC();
  v2 = sub_10001A3FC();

  return sub_100015F38(a1, v2);
}

unint64_t sub_100015EF4(uint64_t a1)
{
  v2 = v1;
  v4 = sub_10001A35C(*(v2 + 40));

  return sub_100016044(a1, v4);
}

unint64_t sub_100015F38(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    type metadata accessor for CFString(0);
    sub_1000168C0(&qword_100029218, type metadata accessor for CFString, &unk_10001ADB4);
    do
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = sub_1000198CC();

      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_100016044(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    do
    {
      sub_100016C58(*(v2 + 48) + 40 * v4, v8);
      v6 = sub_10001A36C();
      sub_100016B98(v8);
      if (v6)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

char *sub_10001610C(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10001612C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_10001612C(char *result, int64_t a2, char a3, char *a4)
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
    sub_100001A1C(&qword_100028C18, &qword_10001BCD0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_100016238(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v8;

      v9 = a1(v12);

      if (v3)
      {
        break;
      }

      v10 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

uint64_t sub_1000162E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(char *))
{
  v8 = a5(0);
  v9 = __chkstk_darwin(v8);
  v11 = &v14 - v10;
  (*(v12 + 16))(&v14 - v10, a1, v9);
  return a6(v11);
}

uint64_t sub_1000163B4(uint64_t a1, unint64_t a2, uint64_t a3, int a4, uint64_t a5)
{
  v9 = sub_10001A12C();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v13 = a1;
  }

  else
  {
    v13 = 0;
  }

  v40 = v13;
  if (a2)
  {
    v14 = a2;
  }

  else
  {
    v14 = 0xE000000000000000;
  }

  type metadata accessor for TitleView(0);
  (*(v10 + 104))(v12, enum case for WidgetFamily.accessoryRectangular(_:), v9);
  sub_1000168C0(&qword_1000285D0, &type metadata accessor for WidgetFamily, &protocol conformance descriptor for WidgetFamily);

  sub_10001A25C();
  sub_10001A25C();
  v15 = (*(v10 + 8))(v12, v9);
  if (v42[0] == v42[2])
  {
    sub_100019F6C();
    v16 = sub_100019DDC();
    v18 = v17;
    v20 = v19;
    v21 = sub_100019DAC();
    v23 = v22;
    v38 = a5;
    v25 = v24;
    v39 = a4;
    sub_100006A8C(v16, v18, v20 & 1);

    v26 = v40;
    v41 = sub_100019DAC();
    v28 = v27;
    v30 = v29;
    a5 = v38;
    sub_100006A8C(v21, v23, v25 & 1);

    LOBYTE(a4) = v39;
  }

  else
  {
    v30 = 0;
    v26 = v40;
    v41 = v40;
    v28 = v14;
  }

  v42[0] = v26;
  v42[1] = v14;
  __chkstk_darwin(v15);
  *(&v37 - 2) = v42;
  v31 = sub_100016238(sub_100018004, (&v37 - 4), a5);

  v32 = sub_1000126D4();
  v33 = sub_1000102B0();
  if (a4)
  {
    if ((v31 & 1) == 0)
    {
      return v41;
    }

LABEL_14:
    if (v33)
    {
      sub_100019EFC();
LABEL_16:

      v34 = v41;
      v35 = sub_100019D8C();
      sub_100006A8C(v34, v28, v30 & 1);

      return v35;
    }

    return v41;
  }

  if (v31)
  {
    goto LABEL_14;
  }

  if ((v32 & 1) == 0)
  {
    if (v33)
    {
      sub_100019F0C();
    }

    else
    {
      sub_100019ECC();
    }

    goto LABEL_16;
  }

  return v41;
}

unint64_t sub_1000167BC()
{
  result = qword_100029188;
  if (!qword_100029188)
  {
    sub_100001D70(&qword_100029180, &qword_10001BBA0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100029188);
  }

  return result;
}

uint64_t sub_100016838(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_10000C4A4(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_10001687C(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_100006A8C(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_1000168C0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100016908@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100019B0C();
  *a1 = result;
  return result;
}

uint64_t sub_1000169B4@<X0>(uint64_t a1@<X8>)
{
  result = sub_100019B6C();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_100016A6C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_100019AEC();
  *a1 = result;
  return result;
}

uint64_t sub_100016B40(uint64_t *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_10001A3CC() & 1;
  }
}

uint64_t sub_100016BEC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

_OWORD *sub_100016C48(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_100016CB4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100019A9C();
  *a1 = result;
  return result;
}

unint64_t sub_100016D0C()
{
  result = qword_1000291E8;
  if (!qword_1000291E8)
  {
    sub_100001D70(&qword_1000291D8, &qword_10001BD30);
    sub_100001D70(&qword_1000290C8, &qword_10001BB40);
    sub_100002294(&qword_1000290F8, &qword_1000290C8, &qword_10001BB40, &protocol conformance descriptor for PartialRangeThrough<A>);
    swift_getOpaqueTypeConformance2();
    sub_100002294(&qword_100029100, &qword_100029108, &qword_10001BB58, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000291E8);
  }

  return result;
}

unint64_t sub_100016EAC()
{
  result = qword_100029208;
  if (!qword_100029208)
  {
    sub_100001D70(&qword_100029200, &qword_10001BD80);
    sub_100002294(&qword_100029130, &qword_100029138, &qword_10001BB70, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100029208);
  }

  return result;
}

unint64_t sub_100016F64(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_100025280;
  v6._object = a2;
  v4 = sub_10001A3AC(v3, v6);

  if (v4 >= 4)
  {
    return 4;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_100016FB0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if ((a5 & 1) == 0)
  {
  }

  return v5;
}

uint64_t sub_10001702C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100017094(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1000170F4()
{
  result = qword_100029260[0];
  if (!qword_100029260[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_100029260);
  }

  return result;
}

uint64_t sub_100017190(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_100017200(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (!a2)
  {
    return 0;
  }

  v7 = a2 - v5;
  if (a2 <= v5)
  {
    return (*(v4 + 48))();
  }

  v8 = 8 * v6;
  if (v6 <= 3)
  {
    v10 = ((v7 + ~(-1 << v8)) >> v8) + 1;
    if (HIWORD(v10))
    {
      v9 = *(a1 + v6);
      if (!v9)
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v10 > 0xFF)
    {
      v9 = *(a1 + v6);
      if (!*(a1 + v6))
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v10 < 2)
    {
LABEL_22:
      if (v5)
      {
        return (*(v4 + 48))();
      }

      return 0;
    }
  }

  v9 = *(a1 + v6);
  if (!*(a1 + v6))
  {
    goto LABEL_22;
  }

LABEL_11:
  v11 = (v9 - 1) << v8;
  if (v6 > 3)
  {
    v11 = 0;
  }

  if (v6)
  {
    if (v6 > 3)
    {
      LODWORD(v6) = 4;
    }

    if (v6 > 2)
    {
      if (v6 == 3)
      {
        LODWORD(v6) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v6) = *a1;
      }
    }

    else if (v6 == 1)
    {
      LODWORD(v6) = *a1;
    }

    else
    {
      LODWORD(v6) = *a1;
    }
  }

  return v5 + (v6 | v11) + 1;
}

char *sub_100017340(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = *(v5 + 64);
  v8 = a3 >= v6;
  v9 = a3 - v6;
  if (v9 != 0 && v8)
  {
    if (v7 <= 3)
    {
      v14 = ((v9 + ~(-1 << (8 * v7))) >> (8 * v7)) + 1;
      if (HIWORD(v14))
      {
        v10 = 4;
      }

      else
      {
        if (v14 < 0x100)
        {
          v15 = 1;
        }

        else
        {
          v15 = 2;
        }

        if (v14 >= 2)
        {
          v10 = v15;
        }

        else
        {
          v10 = 0;
        }
      }
    }

    else
    {
      v10 = 1;
    }
  }

  else
  {
    v10 = 0;
  }

  if (v6 < a2)
  {
    v11 = ~v6 + a2;
    if (v7 < 4)
    {
      v13 = (v11 >> (8 * v7)) + 1;
      if (v7)
      {
        v16 = v11 & ~(-1 << (8 * v7));
        v17 = result;
        bzero(result, v7);
        result = v17;
        if (v7 != 3)
        {
          if (v7 == 2)
          {
            *v17 = v16;
            if (v10 > 1)
            {
LABEL_39:
              if (v10 == 2)
              {
                *&result[v7] = v13;
              }

              else
              {
                *&result[v7] = v13;
              }

              return result;
            }
          }

          else
          {
            *v17 = v11;
            if (v10 > 1)
            {
              goto LABEL_39;
            }
          }

          goto LABEL_36;
        }

        *v17 = v16;
        v17[2] = BYTE2(v16);
      }

      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v12 = result;
      bzero(result, v7);
      result = v12;
      *v12 = v11;
      v13 = 1;
      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

LABEL_36:
    if (v10)
    {
      result[v7] = v13;
    }

    return result;
  }

  if (v10 > 1)
  {
    if (v10 != 2)
    {
      *&result[v7] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_28;
    }

    *&result[v7] = 0;
  }

  else if (v10)
  {
    result[v7] = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_28;
  }

  if (!a2)
  {
    return result;
  }

LABEL_28:
  v18 = *(v5 + 56);

  return v18();
}

uint64_t sub_100017574(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10001A12C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24));
    if (v10 >= 2)
    {
      return ((v10 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_100017654(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_10001A12C();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24)) = a2 + 1;
  }

  return result;
}

uint64_t sub_10001770C(uint64_t a1)
{
  result = sub_10001A12C();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_100017798()
{
  result = qword_100029380;
  if (!qword_100029380)
  {
    sub_100001D70(&qword_100029388, &qword_10001BEB8);
    sub_10001781C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100029380);
  }

  return result;
}

unint64_t sub_10001781C()
{
  result = qword_100029390;
  if (!qword_100029390)
  {
    sub_100001D70(&qword_100029030, &qword_10001BAD8);
    sub_100002294(&qword_100029398, &qword_1000293A0, qword_10001BEC0, &protocol conformance descriptor for VStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100029390);
  }

  return result;
}

unint64_t sub_1000178D8()
{
  result = qword_1000293A8;
  if (!qword_1000293A8)
  {
    sub_100001D70(&qword_1000291F8, &qword_10001BD78);
    sub_100017964();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000293A8);
  }

  return result;
}

unint64_t sub_100017964()
{
  result = qword_1000293B0;
  if (!qword_1000293B0)
  {
    sub_100001D70(&qword_1000291E0, &qword_10001BD38);
    sub_100001D70(&qword_1000291D8, &qword_10001BD30);
    sub_100016D0C();
    swift_getOpaqueTypeConformance2();
    sub_100002294(&qword_1000293B8, &qword_1000291F0, &qword_10001BD40, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000293B0);
  }

  return result;
}

unint64_t sub_100017B10()
{
  result = qword_1000293D8;
  if (!qword_1000293D8)
  {
    sub_100001D70(&qword_1000293E0, &qword_10001BFB0);
    sub_100017B9C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000293D8);
  }

  return result;
}

unint64_t sub_100017B9C()
{
  result = qword_1000293E8;
  if (!qword_1000293E8)
  {
    sub_100001D70(&qword_1000293F0, &qword_10001BFB8);
    sub_100017C54();
    sub_100002294(&qword_100029100, &qword_100029108, &qword_10001BB58, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000293E8);
  }

  return result;
}

unint64_t sub_100017C54()
{
  result = qword_1000293F8;
  if (!qword_1000293F8)
  {
    sub_100001D70(&qword_100029400, &qword_10001BFC0);
    sub_100017D0C();
    sub_100002294(&qword_100029110, &qword_100029118, &qword_10001BB60, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000293F8);
  }

  return result;
}

unint64_t sub_100017D0C()
{
  result = qword_100029408;
  if (!qword_100029408)
  {
    sub_100001D70(&qword_100029410, &qword_10001BFC8);
    sub_100017DC4();
    sub_100002294(&qword_1000290E8, &qword_1000290F0, &qword_10001BB50, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100029408);
  }

  return result;
}

unint64_t sub_100017DC4()
{
  result = qword_100029418;
  if (!qword_100029418)
  {
    sub_100001D70(&qword_100029420, &qword_10001BFD0);
    sub_100017E7C();
    sub_100002294(&qword_100029448, &qword_100029450, &qword_10001BFE8, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100029418);
  }

  return result;
}

unint64_t sub_100017E7C()
{
  result = qword_100029428;
  if (!qword_100029428)
  {
    sub_100001D70(&qword_100029430, &qword_10001BFD8);
    sub_100002294(&qword_100029438, &qword_100029440, &qword_10001BFE0, &protocol conformance descriptor for VStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100029428);
  }

  return result;
}

uint64_t sub_100017F2C(void *a1, __n128 a2)
{
  sub_10001994C();
  sub_1000199DC();
  sub_100019A0C();
  sub_1000199DC();
  sub_10000F414();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_100018034(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_100001A1C(&qword_100028528, &unk_10001BFF0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_100001A1C(&qword_100028608, &unk_10001B000);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + a3[5];
    goto LABEL_5;
  }

  if (a2 == 254)
  {
    v14 = *(a1 + a3[6] + 8);
    if (v14 > 1)
    {
      return (v14 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v15 = sub_100001A1C(&qword_1000284F8, &unk_10001C000);
    v16 = *(*(v15 - 8) + 48);
    v17 = a1 + a3[7];

    return v16(v17, a2, v15);
  }
}

uint64_t sub_1000181DC(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_100001A1C(&qword_100028528, &unk_10001BFF0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  result = sub_100001A1C(&qword_100028608, &unk_10001B000);
  v14 = *(result - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + a4[5];
    goto LABEL_5;
  }

  if (a3 == 254)
  {
    *(a1 + a4[6] + 8) = -a2;
  }

  else
  {
    v15 = sub_100001A1C(&qword_1000284F8, &unk_10001C000);
    v16 = *(*(v15 - 8) + 56);
    v17 = a1 + a4[7];

    return v16(v17, a2, a2, v15);
  }

  return result;
}

uint64_t type metadata accessor for RectangularWidgetView(uint64_t a1)
{
  result = qword_1000294B0;
  if (!qword_1000294B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000183C0(uint64_t a1)
{
  sub_100018554(319, &qword_100028598, &type metadata accessor for WidgetFamily, &type metadata accessor for Environment);
  if (v1 <= 0x3F)
  {
    sub_100018554(319, &qword_100028680, &type metadata accessor for WidgetRenderingMode, &type metadata accessor for Environment);
    if (v2 <= 0x3F)
    {
      sub_100018504();
      if (v3 <= 0x3F)
      {
        sub_100018554(319, &unk_1000285A0, type metadata accessor for DocumentEntry, &type metadata accessor for Optional);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_100018504()
{
  if (!qword_100028E60)
  {
    v0 = sub_10001993C();
    if (!v1)
    {
      atomic_store(v0, &qword_100028E60);
    }
  }
}

void sub_100018554(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1000185D4@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_100019B9C();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100001A1C(&qword_100028470, &qword_10001AB80);
  __chkstk_darwin(v8);
  v10 = &v14 - v9;
  sub_1000031E0(v2, &v14 - v9, &qword_100028470, &qword_10001AB80);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_10001A12C();
    return (*(*(v11 - 8) + 32))(a1, v10, v11);
  }

  else
  {
    sub_10001A29C();
    v13 = sub_100019CEC();
    sub_1000198FC();

    sub_100019B8C();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v7, v4);
  }
}

double sub_1000187D4@<D0>(uint64_t a1@<X1>, int a2@<W2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v42 = a3;
  v43 = a4;
  v41 = a2;
  v44 = a5;
  v6 = sub_100001A1C(&qword_1000284F8, &unk_10001C000);
  __chkstk_darwin(v6 - 8);
  v8 = &v40[-v7];
  v9 = type metadata accessor for TitleView(0);
  __chkstk_darwin(v9);
  v11 = &v40[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = sub_100001A1C(&qword_1000294F0, &qword_10001C078);
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v40[-v14];
  v16 = type metadata accessor for RectangularWidgetView(0);
  sub_1000031E0(a1 + *(v16 + 28), v8, &qword_1000284F8, &unk_10001C000);
  v17 = type metadata accessor for DocumentEntry(0);
  if ((*(*(v17 - 8) + 48))(v8, 1, v17) == 1)
  {
    sub_10001915C(v8);
    v18 = 0;
  }

  else
  {
    v18 = *&v8[*(v17 + 28)];
    v19 = v18;
    sub_100019230(v8, type metadata accessor for DocumentEntry);
  }

  sub_10001996C();
  v21 = v20;
  sub_1000185D4(&v11[v9[9]]);
  v22 = sub_100019FEC();
  v24 = v23;
  KeyPath = swift_getKeyPath();
  *&v11[v9[5]] = swift_getKeyPath();
  sub_100001A1C(&qword_100029228, &qword_10001BDE8);
  swift_storeEnumTagMultiPayload();
  v26 = swift_getKeyPath();
  *v11 = KeyPath;
  v11[8] = 0;
  v27 = &v11[v9[6]];
  *v27 = v26;
  v27[8] = 0;
  *&v11[v9[7]] = v18;
  *&v11[v9[8]] = v21;
  v11[v9[10]] = v41 & 1;
  v28 = &v11[v9[11]];
  *v28 = v22;
  v28[1] = v24;
  v29 = &v11[v9[12]];
  *v29 = 0x3E6E69616C703CLL;
  v29[1] = 0xE700000000000000;
  v30 = &v11[v9[13]];
  *v30 = 0x3E6E69616C702F3CLL;
  v30[1] = 0xE800000000000000;
  v31 = &v11[v9[14]];
  *v31 = 1701869940;
  v31[1] = 0xE400000000000000;
  v32 = &v11[v9[15]];
  *v32 = 1954047348;
  v32[1] = 0xE400000000000000;
  v33 = &v11[v9[16]];
  *v33 = 1954047348;
  v33[1] = 0xE400000000000000;
  v34 = &v11[v9[17]];
  *v34 = 0x736B72616DLL;
  v34[1] = 0xE500000000000000;
  v35 = &v11[v9[18]];
  *v35 = 0x6F43746E65636361;
  v35[1] = 0xEB00000000726F6CLL;
  sub_1000191D8();
  sub_100019DEC();
  sub_100019230(v11, type metadata accessor for TitleView);
  sub_10001995C();
  v36 = v44;
  (*(v13 + 32))(v44, v15, v12);
  v37 = (v36 + *(sub_100001A1C(&qword_100029500, &qword_10001C108) + 36));
  v38 = v46;
  *v37 = v45;
  v37[1] = v38;
  result = *&v47;
  v37[2] = v47;
  return result;
}

uint64_t sub_100018C0C@<X0>(uint64_t a1@<X0>, double (**a2)@<D0>(uint64_t a1@<X8>)@<X8>)
{
  v4 = *(a1 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(a1 - 8);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10001A00C();
  v9 = v8;
  sub_100018D24(v2, v6);
  v10 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v11 = v10 + v5;
  v12 = swift_allocObject();
  result = sub_100019048(v6, v12 + v10);
  *(v12 + v11) = 1;
  v14 = v12 + (v11 & 0xFFFFFFFFFFFFFFF8);
  *(v14 + 8) = v7;
  *(v14 + 16) = v9;
  *a2 = sub_1000190AC;
  a2[1] = v12;
  return result;
}

uint64_t sub_100018D24(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RectangularWidgetView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100018D88()
{
  v1 = type metadata accessor for RectangularWidgetView(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;
  sub_100001A1C(&qword_100028470, &qword_10001AB80);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_10001A12C();
    (*(*(v6 - 8) + 8))(v0 + v3, v6);
  }

  else
  {
  }

  v7 = v1[5];
  sub_100001A1C(&qword_100028480, qword_10001ABF0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = sub_10001A0FC();
    (*(*(v8 - 8) + 8))(v5 + v7, v8);
  }

  else
  {
  }

  sub_1000067A0(*(v5 + v1[6]), *(v5 + v1[6] + 8));
  v9 = v5 + v1[7];
  v10 = type metadata accessor for DocumentEntry(0);
  if (!(*(*(v10 - 1) + 48))(v9, 1, v10))
  {
    v11 = sub_1000198BC();
    (*(*(v11 - 8) + 8))(v9, v11);
    v12 = v10[5];
    v13 = sub_10001A1EC();
    v14 = *(v13 - 8);
    if (!(*(v14 + 48))(v9 + v12, 1, v13))
    {
      (*(v14 + 8))(v9 + v12, v13);
    }
  }

  return _swift_deallocObject(v0, ((v3 + v4) & 0xFFFFFFFFFFFFFFF8) + 24, v2 | 7);
}

uint64_t sub_100019048(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RectangularWidgetView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

double sub_1000190AC@<D0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for RectangularWidgetView(0) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = v4 + *(v3 + 64);
  v6 = *(v1 + v5);
  v7 = v1 + (v5 & 0xFFFFFFFFFFFFFFF8);
  v8 = *(v7 + 8);
  v9 = *(v7 + 16);

  return sub_1000187D4(v1 + v4, v6, v8, v9, a1);
}

uint64_t sub_10001915C(uint64_t a1)
{
  v2 = sub_100001A1C(&qword_1000284F8, &unk_10001C000);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1000191D8()
{
  result = qword_1000294F8;
  if (!qword_1000294F8)
  {
    type metadata accessor for TitleView(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000294F8);
  }

  return result;
}

uint64_t sub_100019230(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_100019294()
{
  result = qword_100029508;
  if (!qword_100029508)
  {
    sub_100001D70(&qword_100029510, &unk_10001C110);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100029508);
  }

  return result;
}

uint64_t sub_100019334(int a1, int a2, int a3, int a4)
{
  if (qword_10002A390 == -1)
  {
    if (qword_10002A398)
    {
      return _availability_version_check();
    }
  }

  else
  {
    v5 = a4;
    v6 = a3;
    v7 = a2;
    sub_1000197FC();
    a2 = v7;
    a3 = v6;
    a4 = v5;
    if (qword_10002A398)
    {
      return _availability_version_check();
    }
  }

  if (qword_10002A388 != -1)
  {
    v9 = a4;
    v10 = a3;
    v11 = a2;
    sub_100019814();
    a3 = v10;
    a4 = v9;
    v8 = dword_10002A378 < v11;
    if (dword_10002A378 > v11)
    {
      return 1;
    }

LABEL_7:
    if (!v8)
    {
      if (dword_10002A37C > a3)
      {
        return 1;
      }

      if (dword_10002A37C >= a3)
      {
        return dword_10002A380 >= a4;
      }
    }

    return 0;
  }

  v8 = dword_10002A378 < a2;
  if (dword_10002A378 <= a2)
  {
    goto LABEL_7;
  }

  return 1;
}

uint64_t sub_1000194C8(uint64_t result)
{
  v1 = qword_10002A398;
  if (qword_10002A398)
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
      qword_10002A398 = &__availability_version_check;
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
                                          sscanf(v28, "%d.%d.%d", &dword_10002A378, &dword_10002A37C, &dword_10002A380);
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