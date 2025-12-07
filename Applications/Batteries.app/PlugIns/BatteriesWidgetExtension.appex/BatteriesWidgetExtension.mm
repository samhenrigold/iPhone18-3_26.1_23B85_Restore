__n128 sub_1000013F8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_100001408(uint64_t a1, int a2)
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

uint64_t sub_100001428(uint64_t result, int a2, int a3)
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

void type metadata accessor for CGSize()
{
  if (!qword_100008090)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_100008090);
    }
  }
}

uint64_t sub_1000014A0@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_10000303C();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_10000151C@<X0>(uint64_t a1@<X8>)
{
  sub_10000318C();
  v3 = v2;
  v5 = v4;
  v6 = type metadata accessor for BasicTimelineEntry(0);
  v7 = *(v6 + 20);
  v8 = sub_10000317C();
  (*(*(v8 - 8) + 56))(a1 + v7, 1, 1, v8);
  result = sub_10000302C();
  v10 = (a1 + *(v6 + 24));
  *v10 = v3;
  v10[1] = v5;
  return result;
}

uint64_t sub_1000015C0(uint64_t a1, uint64_t a2, void (*a3)(char *))
{
  v4 = type metadata accessor for BasicTimelineEntry(0) - 8;
  __chkstk_darwin();
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000318C();
  v8 = v7;
  v10 = v9;
  v11 = *(v4 + 28);
  v12 = sub_10000317C();
  (*(*(v12 - 8) + 56))(&v6[v11], 1, 1, v12);
  sub_10000302C();
  v13 = &v6[*(v4 + 32)];
  *v13 = v8;
  *(v13 + 1) = v10;
  a3(v6);
  return sub_100002EE0(v6);
}

uint64_t sub_1000016C8(uint64_t a1, uint64_t a2, void (*a3)(char *))
{
  v21 = a3;
  sub_10000313C();
  __chkstk_darwin();
  sub_1000024C4(&qword_1000080F8, &qword_100003478);
  __chkstk_darwin();
  v4 = &v20 - v3;
  v5 = sub_1000024C4(&qword_100008248, &qword_1000035C8);
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = &v20 - v7;
  sub_1000024C4(&qword_100008250, qword_1000035D0);
  v9 = type metadata accessor for BasicTimelineEntry(0);
  v10 = (*(*(v9 - 8) + 80) + 32) & ~*(*(v9 - 8) + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_100003360;
  v12 = v11 + v10;
  sub_10000318C();
  v14 = v13;
  v16 = v15;
  v17 = sub_10000317C();
  (*(*(v17 - 8) + 56))(v4, 1, 1, v17);
  sub_10000302C();
  sub_100002E70(v4, v12 + *(v9 + 20));
  v18 = (v12 + *(v9 + 24));
  *v18 = v14;
  v18[1] = v16;
  sub_10000312C();
  sub_100002E0C(&qword_100008240, type metadata accessor for BasicTimelineEntry, &unk_1000034CC);
  sub_10000319C();
  v21(v8);
  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_1000019B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_100001A6C;

  return IntentTimelineProvider.relevances()(a1, a2, a3);
}

uint64_t sub_100001A6C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_100001B60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_100002FF4;

  return IntentTimelineProvider.relevance()(a1, a2, a3);
}

uint64_t sub_100001C14@<X0>(uint64_t a1@<X0>, uint64_t a3@<X8>)
{
  v40 = a1;
  v51 = a3;
  v3 = sub_1000024C4(&qword_1000080A0, &qword_100003410);
  v42 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = &v40 - v4;
  v6 = sub_1000024C4(&qword_1000080A8, &qword_100003418);
  v7 = *(v6 - 8);
  v43 = v6;
  v44 = v7;
  __chkstk_darwin(v6);
  v9 = &v40 - v8;
  v10 = sub_1000024C4(&qword_1000080B0, &qword_100003420);
  v11 = *(v10 - 8);
  v45 = v10;
  v46 = v11;
  __chkstk_darwin(v10);
  v13 = &v40 - v12;
  v14 = sub_1000024C4(&qword_1000080B8, &qword_100003428);
  v15 = *(v14 - 8);
  v47 = v14;
  v48 = v15;
  __chkstk_darwin(v14);
  v17 = &v40 - v16;
  v18 = sub_1000024C4(&qword_1000080C0, &qword_100003430);
  v19 = *(v18 - 8);
  v49 = v18;
  v50 = v19;
  __chkstk_darwin(v18);
  v41 = &v40 - v20;
  sub_10000250C();
  type metadata accessor for BatteriesWidgetEntryView(0);
  sub_100002E0C(&qword_1000080D0, type metadata accessor for BatteriesWidgetEntryView, &unk_100003578);
  sub_100002578();

  sub_10000311C();
  sub_10000306C();
  v21 = sub_1000025CC();
  sub_1000030AC();

  (*(v42 + 8))(v5, v3);
  sub_10000306C();
  v52 = v3;
  v53 = v21;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v23 = v43;
  sub_10000307C();

  (*(v44 + 8))(v9, v23);
  v52 = v23;
  v53 = OpaqueTypeConformance2;
  v24 = swift_getOpaqueTypeConformance2();
  v25 = v45;
  sub_10000309C();
  (*(v46 + 8))(v13, v25);
  v52 = v25;
  v53 = v24;
  v26 = swift_getOpaqueTypeConformance2();
  v27 = v41;
  v28 = v47;
  sub_1000030BC();
  v29 = v17;
  v30 = v28;
  (*(v48 + 8))(v29, v28);
  sub_1000024C4(&qword_1000080E8, &qword_100003438);
  v31 = sub_10000310C();
  v32 = *(v31 - 8);
  v33 = *(v32 + 72);
  v34 = (*(v32 + 80) + 32) & ~*(v32 + 80);
  v35 = swift_allocObject();
  *(v35 + 16) = xmmword_100003370;
  v36 = v35 + v34;
  v37 = *(v32 + 104);
  v37(v35 + v34, enum case for WidgetFamily.accessoryRectangular(_:), v31);
  v37(v36 + v33, enum case for WidgetFamily.accessoryCircular(_:), v31);
  v52 = v30;
  v53 = v26;
  swift_getOpaqueTypeConformance2();
  v38 = v49;
  sub_10000308C();

  return (*(v50 + 8))(v27, v38);
}

uint64_t sub_1000022B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_100002678(a1, a2);
  KeyPath = swift_getKeyPath();
  v4 = *(type metadata accessor for BatteriesWidgetEntryView(0) + 20);
  *(a2 + v4) = KeyPath;
  v5 = sub_1000024C4(&qword_1000080F0, &qword_100003470);

  return _swift_storeEnumTagMultiPayload(a2 + v4, v5, 0);
}

int main(int argc, const char **argv, const char **envp)
{
  sub_1000023C0();
  sub_1000030FC();
  return 0;
}

unint64_t sub_1000023C0()
{
  result = qword_100008098;
  if (!qword_100008098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100008098);
  }

  return result;
}

uint64_t sub_100002414(uint64_t a1, int a2)
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

uint64_t sub_10000245C(uint64_t result, int a2, int a3)
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

uint64_t sub_1000024C4(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_10000250C()
{
  result = qword_1000080C8;
  if (!qword_1000080C8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1000080C8);
  }

  return result;
}

unint64_t sub_100002578()
{
  result = qword_1000080D8;
  if (!qword_1000080D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000080D8);
  }

  return result;
}

unint64_t sub_1000025CC()
{
  result = qword_1000080E0;
  if (!qword_1000080E0)
  {
    sub_100002630(&qword_1000080A0, &qword_100003410);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000080E0);
  }

  return result;
}

uint64_t sub_100002630(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_100002678(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BasicTimelineEntry(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000026FC(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000027D0(uint64_t a1)
{
  sub_10000303C();
  if (v1 <= 0x3F)
  {
    sub_100002BFC(319, &unk_100008168, &type metadata accessor for TimelineEntryRelevance, &type metadata accessor for Optional);
    if (v2 <= 0x3F)
    {
      type metadata accessor for CGSize();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1000028E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t *a5, uint64_t *a6)
{
  v11 = a4(0);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v13 = *(v12 + 48);

    return v13(a1, a2, v11);
  }

  else
  {
    v15 = sub_1000024C4(a5, a6);
    v16 = *(*(v15 - 8) + 48);
    v17 = a1 + *(a3 + 20);

    return v16(v17, a2, v15);
  }
}

uint64_t sub_100002A30(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t (*a5)(void), uint64_t *a6, uint64_t *a7)
{
  v13 = a5(0);
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v15 = *(v14 + 56);

    return v15(a1, a2, a2, v13);
  }

  else
  {
    v17 = sub_1000024C4(a6, a7);
    v18 = *(*(v17 - 8) + 56);
    v19 = a1 + *(a4 + 20);

    return v18(v19, a2, a2, v17);
  }
}

void sub_100002B48(uint64_t a1)
{
  type metadata accessor for BasicTimelineEntry(319);
  if (v1 <= 0x3F)
  {
    sub_100002BFC(319, &unk_100008210, &type metadata accessor for WidgetFamily, &type metadata accessor for Environment);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_100002BFC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_100002C60()
{
  sub_100002630(&qword_1000080C0, &qword_100003430);
  sub_100002630(&qword_1000080B8, &qword_100003428);
  sub_100002630(&qword_1000080B0, &qword_100003420);
  sub_100002630(&qword_1000080A8, &qword_100003418);
  sub_100002630(&qword_1000080A0, &qword_100003410);
  sub_1000025CC();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_100002E0C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100002E70(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000024C4(&qword_1000080F8, &qword_100003478);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100002EE0(uint64_t a1)
{
  v2 = type metadata accessor for BasicTimelineEntry(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100002F3C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000024C4(&qword_1000080F8, &qword_100003478);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}