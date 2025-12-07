uint64_t sub_1000016F8()
{
  sub_1000021D4(&qword_100084BB8, &qword_100069BA0);
  v0 = sub_100064154();
  v1 = *(v0 - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_100064BC0;
  result = (*(v1 + 104))(v3 + v2, enum case for WidgetFamily.accessoryCircular(_:), v0);
  qword_100084430 = v3;
  return result;
}

uint64_t sub_1000017DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1;
  v39 = a2;
  v4 = sub_1000021D4(&qword_100084B70, &unk_100064D90);
  v5 = *(v4 - 8);
  v30 = v4;
  v31 = v5;
  __chkstk_darwin(v4);
  v7 = &v30 - v6;
  v8 = sub_1000021D4(&qword_100084B78, &unk_100064C30);
  v9 = *(v8 - 8);
  v32 = v8;
  v33 = v9;
  __chkstk_darwin(v8);
  v11 = &v30 - v10;
  v37 = sub_1000021D4(&qword_100084B80, &unk_100064D80);
  v34 = *(v37 - 8);
  __chkstk_darwin(v37);
  v13 = &v30 - v12;
  v38 = sub_1000021D4(&qword_100084B88, &qword_100064C40);
  v36 = *(v38 - 8);
  __chkstk_darwin(v38);
  v35 = &v30 - v14;
  sub_1000022DC(v3);
  v15 = swift_allocObject();
  *(v15 + 16) = v3;
  *(v15 + 24) = v2;
  sub_1000021D4(&qword_100084B90, &qword_100064C48);
  v16 = sub_1000023B0();
  v40 = &type metadata for PickerWidgetView;
  v41 = v16;
  swift_getOpaqueTypeConformance2();
  sub_100002404();
  v17 = v13;
  sub_1000641C4();
  v40 = sub_100002458(v3);
  v41 = v18;
  v19 = sub_100002640(&qword_100084BA8, &qword_100084B70, &unk_100064D90);
  v20 = sub_100002264();
  v21 = v30;
  sub_100063B14();
  (*(v31 + 8))(v7, v21);
  v44 = sub_100002694(v3);
  v45 = v22;
  v40 = v21;
  v41 = &type metadata for String;
  v42 = v19;
  v43 = v20;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v24 = v32;
  sub_100063AC4();
  (*(v33 + 8))(v11, v24);
  if (qword_100084428 != -1)
  {
    swift_once();
  }

  v40 = v24;
  v41 = &type metadata for String;
  v42 = OpaqueTypeConformance2;
  v43 = v20;
  v25 = swift_getOpaqueTypeConformance2();
  v26 = v35;
  v27 = v37;
  sub_100063AD4();
  (*(v34 + 8))(v17, v27);
  sub_1000021D4(&qword_100084BB0, &unk_100064C50);
  sub_100064174();
  *(swift_allocObject() + 16) = xmmword_100064BC0;
  sub_100064164();
  v40 = v27;
  v41 = v25;
  swift_getOpaqueTypeConformance2();
  v28 = v38;
  sub_100063AE4();

  return (*(v36 + 8))(v26, v28);
}

uint64_t sub_100001D78(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v3 = sub_1000021D4(&qword_100084BC0, qword_100064C60);
  __chkstk_darwin(v3 - 8);
  v5 = &v7[-v4];
  v7[15] = v2;
  sub_100001E34(v2, &v7[-v4]);
  sub_1000023B0();
  sub_100063E34();
  return sub_10000287C(v5);
}

uint64_t sub_100001E34@<X0>(unsigned __int8 a1@<W0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for AppLaunchAction(0);
  __chkstk_darwin(v4);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000021D4(&qword_100084BC8, &qword_1000669D0);
  v8 = *(v7 + 48);
  v9 = *(v7 + 64);
  if (a1 <= 2u)
  {
    if (!a1)
    {
      v11 = sub_1000635A4();
      *v6 = 0;
      *(v6 + 1) = 0;
      (*(*(v11 - 8) + 56))(&v6[v8], 1, 1, v11);
      v10 = type metadata accessor for CanvasContentInputType(0);
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  if (a1 > 4u)
  {
    if (a1 != 5)
    {
      v14 = type metadata accessor for CanvasContentInputType(0);
      *v6 = 0;
      *(v6 + 1) = 0;
      (*(*(v14 - 8) + 56))(&v6[v8], 1, 1, v14);
      goto LABEL_12;
    }

    goto LABEL_10;
  }

  if (a1 != 3)
  {
LABEL_10:
    v10 = type metadata accessor for CanvasContentInputType(0);
    *v6 = 0;
    *(v6 + 1) = 0;
    goto LABEL_11;
  }

  *v6 = 0;
  *(v6 + 1) = 0;
  v6[v8] = 1;
  v10 = type metadata accessor for CanvasContentInputType(0);
LABEL_11:
  swift_storeEnumTagMultiPayload();
  (*(*(v10 - 8) + 56))(&v6[v8], 0, 1, v10);
LABEL_12:
  v12 = sub_100064154();
  (*(*(v12 - 8) + 56))(&v6[v9], 1, 1, v12);
  swift_storeEnumTagMultiPayload();
  sub_1000197E8(a2);
  return sub_1000028E4(v6);
}

uint64_t sub_1000020F4(__int128 *a1)
{
  v2 = *a1;
  if (sub_10006281C(2, 17, 0, 0))
  {
    return swift_getOpaqueTypeMetadata2();
  }

  else
  {
    return v2;
  }
}

uint64_t sub_100002168(uint64_t *a1)
{
  v1 = a1[1];
  if (sub_10006281C(2, 17, 0, 0))
  {
    return swift_getOpaqueTypeConformance2();
  }

  return v1;
}

uint64_t sub_1000021D4(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_10000221C(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_100002264()
{
  result = qword_100084AD0;
  if (!qword_100084AD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100084AD0);
  }

  return result;
}

unint64_t sub_1000022DC(unsigned __int8 a1)
{
  v1 = 0xD000000000000017;
  v2 = 0xD00000000000001DLL;
  if (a1 == 5)
  {
    v2 = 0xD00000000000001CLL;
  }

  v3 = 0xD00000000000001FLL;
  if (a1 != 3)
  {
    v3 = 0xD000000000000017;
  }

  if (a1 <= 4u)
  {
    v2 = v3;
  }

  if (!a1)
  {
    v1 = 0xD00000000000001CLL;
  }

  if (a1 <= 2u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_1000023B0()
{
  result = qword_100084B98;
  if (!qword_100084B98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100084B98);
  }

  return result;
}

unint64_t sub_100002404()
{
  result = qword_100084BA0;
  if (!qword_100084BA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100084BA0);
  }

  return result;
}

uint64_t sub_100002458(unsigned __int8 a1)
{
  if (a1 <= 2u)
  {
    if (a1)
    {
      if (a1 == 1)
      {
        if (qword_100084910 != -1)
        {
          swift_once();
        }

        v1 = &qword_100090C30;
      }

      else
      {
        if (qword_100084920 != -1)
        {
          swift_once();
        }

        v1 = &qword_100090C50;
      }
    }

    else
    {
      if (qword_100084900 != -1)
      {
        swift_once();
      }

      v1 = &qword_100090C10;
    }
  }

  else if (a1 > 4u)
  {
    if (a1 == 5)
    {
      if (qword_100084950 != -1)
      {
        swift_once();
      }

      v1 = &qword_100090CB0;
    }

    else
    {
      if (qword_100084498 != -1)
      {
        swift_once();
      }

      v1 = &qword_100090340;
    }
  }

  else if (a1 == 3)
  {
    if (qword_100084930 != -1)
    {
      swift_once();
    }

    v1 = &qword_100090C70;
  }

  else
  {
    if (qword_100084940 != -1)
    {
      swift_once();
    }

    v1 = &qword_100090C90;
  }

  return *v1;
}

uint64_t sub_100002640(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_10000221C(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100002694(unsigned __int8 a1)
{
  if (a1 <= 2u)
  {
    if (a1)
    {
      if (a1 == 1)
      {
        if (qword_100084918 != -1)
        {
          swift_once();
        }

        v1 = &qword_100090C40;
      }

      else
      {
        if (qword_100084928 != -1)
        {
          swift_once();
        }

        v1 = &qword_100090C60;
      }
    }

    else
    {
      if (qword_100084908 != -1)
      {
        swift_once();
      }

      v1 = &qword_100090C20;
    }
  }

  else if (a1 > 4u)
  {
    if (a1 == 5)
    {
      if (qword_100084958 != -1)
      {
        swift_once();
      }

      v1 = &qword_100090CC0;
    }

    else
    {
      if (qword_1000844A0 != -1)
      {
        swift_once();
      }

      v1 = &qword_100090350;
    }
  }

  else if (a1 == 3)
  {
    if (qword_100084938 != -1)
    {
      swift_once();
    }

    v1 = &qword_100090C80;
  }

  else
  {
    if (qword_100084948 != -1)
    {
      swift_once();
    }

    v1 = &qword_100090CA0;
  }

  return *v1;
}

uint64_t sub_10000287C(uint64_t a1)
{
  v2 = sub_1000021D4(&qword_100084BC0, qword_100064C60);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000028E4(uint64_t a1)
{
  v2 = type metadata accessor for AppLaunchAction(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_100002954()
{
  result = qword_100084BD0;
  if (!qword_100084BD0)
  {
    type metadata accessor for PickerWidgetTimelineEntry(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100084BD0);
  }

  return result;
}

uint64_t sub_1000029B0(uint64_t a1, void (*a2)(char *))
{
  v3 = type metadata accessor for PickerWidgetTimelineEntry(0);
  __chkstk_darwin(v3 - 8);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100063564();
  a2(v5);
  return sub_100002E8C(v5);
}

uint64_t sub_100002A40(uint64_t a1, void (*a2)(char *))
{
  v3 = sub_1000641F4();
  __chkstk_darwin(v3 - 8);
  v4 = sub_1000021D4(&qword_100084BD8, &qword_100064D08);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v9 - v6;
  sub_1000021D4(&qword_100084BE0, &unk_100064D10);
  type metadata accessor for PickerWidgetTimelineEntry(0);
  *(swift_allocObject() + 16) = xmmword_100064BC0;
  sub_100063564();
  sub_1000641E4();
  sub_100002954();
  sub_100064224();
  a2(v7);
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_100002C30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_100002CE4;

  return TimelineProvider.relevances()(a1, a2, a3);
}

uint64_t sub_100002CE4()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_100002DD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_100002EE8;

  return TimelineProvider.relevance()(a1, a2, a3);
}

uint64_t sub_100002E8C(uint64_t a1)
{
  v2 = type metadata accessor for PickerWidgetTimelineEntry(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100002F54()
{
  sub_10000221C(&qword_100084B88, &qword_100064C40);
  sub_10000221C(&qword_100084B80, &unk_100064D80);
  sub_10000221C(&qword_100084B78, &unk_100064C30);
  sub_10000221C(&qword_100084B70, &unk_100064D90);
  sub_1000030A0();
  sub_100002264();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_1000030A0()
{
  result = qword_100084BA8;
  if (!qword_100084BA8)
  {
    sub_10000221C(&qword_100084B70, &unk_100064D90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100084BA8);
  }

  return result;
}

uint64_t sub_100003130@<X0>(uint64_t a1@<X8>)
{
  v32 = a1;
  v1 = sub_1000021D4(&qword_100084AC0, &qword_100064BF8);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v23 - v3;
  v5 = sub_1000021D4(&qword_100084AB8, &qword_100064BF0);
  v24 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = &v23 - v6;
  v27 = sub_1000021D4(&qword_100084AB0, &qword_100064BE8);
  v25 = *(v27 - 8);
  __chkstk_darwin(v27);
  v9 = &v23 - v8;
  v30 = sub_1000021D4(&qword_100084AA8, &qword_100064BE0);
  v26 = *(v30 - 8);
  __chkstk_darwin(v30);
  v11 = &v23 - v10;
  v31 = sub_1000021D4(&qword_100084BE8, &unk_100064DF8);
  v29 = *(v31 - 8);
  __chkstk_darwin(v31);
  v28 = &v23 - v12;
  type metadata accessor for StartWritingWidgetView(0);
  sub_100003810();
  sub_100003868();
  sub_1000641C4();
  if (qword_100084498 != -1)
  {
    swift_once();
  }

  v33 = qword_100090340;
  v34 = *algn_100090348;
  v13 = sub_1000038BC();
  v14 = sub_100002264();
  sub_100063B14();
  (*(v2 + 8))(v4, v1);
  if (qword_1000844A0 != -1)
  {
    swift_once();
  }

  v37 = qword_100090350;
  v38 = *algn_100090358;
  v33 = v1;
  v34 = &type metadata for String;
  v35 = v13;
  v36 = v14;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_100063AC4();
  (*(v24 + 8))(v7, v5);
  if (qword_1000849B8 != -1)
  {
    swift_once();
  }

  v33 = v5;
  v34 = &type metadata for String;
  v35 = OpaqueTypeConformance2;
  v36 = v14;
  v16 = swift_getOpaqueTypeConformance2();
  v17 = v27;
  sub_100063AD4();
  (*(v25 + 8))(v9, v17);
  v33 = v17;
  v34 = v16;
  v18 = swift_getOpaqueTypeConformance2();
  v19 = v28;
  v20 = v30;
  sub_100063AF4();
  (*(v26 + 8))(v11, v20);
  sub_1000021D4(&qword_100084BB0, &unk_100064C50);
  sub_100064174();
  *(swift_allocObject() + 16) = xmmword_100064BC0;
  sub_100064164();
  v33 = v20;
  v34 = v18;
  swift_getOpaqueTypeConformance2();
  v21 = v31;
  sub_100063AE4();

  return (*(v29 + 8))(v19, v21);
}

uint64_t sub_100003790@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  started = type metadata accessor for StartWritingWidgetView(0);
  sub_100003920(a1, a2 + *(started + 20));
  *a2 = swift_getKeyPath();
  sub_1000021D4(&qword_100084C00, &qword_100066BB0);

  return swift_storeEnumTagMultiPayload();
}

unint64_t sub_100003810()
{
  result = qword_100084BF0;
  if (!qword_100084BF0)
  {
    type metadata accessor for StartWritingWidgetView(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100084BF0);
  }

  return result;
}

unint64_t sub_100003868()
{
  result = qword_100084BF8;
  if (!qword_100084BF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100084BF8);
  }

  return result;
}

unint64_t sub_1000038BC()
{
  result = qword_100084AC8;
  if (!qword_100084AC8)
  {
    sub_10000221C(&qword_100084AC0, &qword_100064BF8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100084AC8);
  }

  return result;
}

uint64_t sub_100003920(uint64_t a1, uint64_t a2)
{
  started = type metadata accessor for StartWritingWidgetTimelineEntry(0);
  (*(*(started - 8) + 16))(a2, a1, started);
  return a2;
}

uint64_t sub_100003988()
{
  sub_10000221C(&qword_100084BE8, &unk_100064DF8);
  sub_10000221C(&qword_100084AA8, &qword_100064BE0);
  sub_10000221C(&qword_100084AB0, &qword_100064BE8);
  sub_10000221C(&qword_100084AB8, &qword_100064BF0);
  sub_10000221C(&qword_100084AC0, &qword_100064BF8);
  sub_1000038BC();
  sub_100002264();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t getEnumTagSinglePayload for CanvasPickerType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
    goto LABEL_17;
  }

  if (a2 + 6 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 6) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 6;
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

      return (*a1 | (v4 << 8)) - 6;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v8 = v6 - 7;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for CanvasPickerType(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFA)
  {
    v4 = 0;
  }

  if (a2 > 0xF9)
  {
    v5 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
    *result = a2 + 6;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_100003C8C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v26 = a2;
  v27 = sub_100063A54();
  v25 = *(v27 - 8);
  __chkstk_darwin(v27);
  v24 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_100063C14();
  v4 = *(v23 - 8);
  __chkstk_darwin(v23);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000021D4(&qword_100084C08, &qword_100064EC8);
  __chkstk_darwin(v7);
  v9 = (&v22 - v8);
  v10 = sub_1000021D4(&qword_100084C10, &qword_100064ED0);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v22 - v12;
  v22 = sub_1000021D4(&qword_100084C18, &qword_100064ED8);
  __chkstk_darwin(v22);
  v15 = &v22 - v14;
  *v9 = sub_100064084();
  v9[1] = v16;
  v17 = sub_1000021D4(&qword_100084C20, &qword_100064EE0);
  sub_100004038(a1, v9 + *(v17 + 44));
  sub_100063C04();
  v18 = sub_100004880();
  sub_100063F24();
  (*(v4 + 8))(v6, v23);
  sub_10000494C(v9, &qword_100084C08, &qword_100064EC8);
  v30 = sub_10000456C(a1);
  v31 = v19;
  v28 = v7;
  v29 = v18;
  swift_getOpaqueTypeConformance2();
  sub_100002264();
  sub_100063F04();

  (*(v11 + 8))(v13, v10);
  v20 = v24;
  sub_100063A44();
  sub_100063824();
  (*(v25 + 8))(v20, v27);
  return sub_1000048E4(v15);
}

uint64_t sub_100004038@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v2 = a1;
  v26 = a2;
  v3 = sub_1000021D4(&qword_100084C30, &qword_100064EE8);
  __chkstk_darwin(v3 - 8);
  v5 = &v25 - v4;
  v6 = sub_1000021D4(&qword_100084C38, &qword_100064EF0);
  __chkstk_darwin(v6 - 8);
  v8 = &v25 - v7;
  v9 = sub_1000640F4();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v25 - v14;
  sub_1000640E4();
  sub_10000438C(v2);
  sub_100063A94();
  v16 = sub_100063AA4();
  (*(*(v16 - 8) + 56))(v8, 0, 1, v16);
  v25 = sub_100063FD4();

  sub_10000494C(v8, &qword_100084C38, &qword_100064EF0);
  v17 = sub_100063D34();
  (*(*(v17 - 8) + 56))(v5, 1, 1, v17);
  v18 = sub_100063D74();
  sub_10000494C(v5, &qword_100084C30, &qword_100064EE8);
  KeyPath = swift_getKeyPath();
  LODWORD(v5) = sub_100063BA4();
  v20 = *(v10 + 16);
  v20(v13, v15, v9);
  v21 = v26;
  v20(v26, v13, v9);
  v22 = &v21[*(sub_1000021D4(&qword_100084C40, &qword_100064F28) + 48)];
  *v22 = v25;
  *(v22 + 1) = KeyPath;
  *(v22 + 2) = v18;
  *(v22 + 6) = v5;
  v23 = *(v10 + 8);

  v23(v15, v9);

  return (v23)(v13, v9);
}

uint64_t sub_10000438C(unsigned __int8 a1)
{
  v2 = sub_1000636C4();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {

    return sub_100063FC4();
  }

  else
  {
    if (qword_100084AA0 != -1)
    {
      v10 = v4;
      swift_once();
      v4 = v10;
    }

    v8 = v4;
    v9 = sub_1000049B4(v4, qword_100091030);
    (*(v3 + 16))(v6, v9, v8);
    return sub_100064014();
  }
}

uint64_t sub_10000456C(unsigned __int8 a1)
{
  v1 = sub_1000635E4();
  __chkstk_darwin(v1 - 8);
  v2 = sub_100064294();
  __chkstk_darwin(v2 - 8);
  sub_100064284();
  sub_1000635D4();
  return sub_1000642B4();
}

unint64_t sub_100004880()
{
  result = qword_100084C28;
  if (!qword_100084C28)
  {
    sub_10000221C(&qword_100084C08, &qword_100064EC8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100084C28);
  }

  return result;
}

uint64_t sub_1000048E4(uint64_t a1)
{
  v2 = sub_1000021D4(&qword_100084C18, &qword_100064ED8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10000494C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_1000021D4(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1000049B4(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

unint64_t sub_1000049F0()
{
  result = qword_100084C48;
  if (!qword_100084C48)
  {
    sub_10000221C(&qword_100084C18, &qword_100064ED8);
    sub_10000221C(&qword_100084C08, &qword_100064EC8);
    sub_100004880();
    swift_getOpaqueTypeConformance2();
    sub_100004AB8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100084C48);
  }

  return result;
}

unint64_t sub_100004AB8()
{
  result = qword_100084C50;
  if (!qword_100084C50)
  {
    sub_100063C44();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100084C50);
  }

  return result;
}

unint64_t sub_100004CA4()
{
  result = qword_100084C68;
  if (!qword_100084C68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100084C68);
  }

  return result;
}

uint64_t sub_100004D3C()
{
  v0 = sub_1000021D4(&qword_100084D88, &qword_100065990);
  __chkstk_darwin(v0 - 8);
  v2 = v12 - v1;
  v12[0] = sub_1000633F4();
  v3 = *(v12[0] - 8);
  __chkstk_darwin(v12[0]);
  v5 = v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000635E4();
  __chkstk_darwin(v6 - 8);
  v7 = sub_100064294();
  __chkstk_darwin(v7 - 8);
  v8 = sub_100063404();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = sub_100063244();
  sub_100009DBC(v10, qword_100090248);
  sub_1000049B4(v10, qword_100090248);
  sub_100064284();
  sub_1000635D4();
  (*(v3 + 104))(v5, enum case for LocalizedStringResource.BundleDescription.main(_:), v12[0]);
  sub_100063414();
  (*(v9 + 56))(v2, 1, 1, v8);
  return sub_100063234();
}

uint64_t sub_10000502C@<X0>(uint64_t a1@<X8>)
{
  v25 = a1;
  v1 = sub_1000021D4(&qword_100084DB8, "̷");
  __chkstk_darwin(v1 - 8);
  v27 = &v21 - v2;
  v3 = sub_1000021D4(&qword_100084D88, &qword_100065990);
  __chkstk_darwin(v3 - 8);
  v26 = &v21 - v4;
  v5 = sub_1000633F4();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1000635E4();
  __chkstk_darwin(v9 - 8);
  v10 = sub_100064294();
  __chkstk_darwin(v10 - 8);
  v22 = sub_100063404();
  v11 = *(v22 - 8);
  v12 = __chkstk_darwin(v22);
  v24 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v23 = &v21 - v14;
  sub_100064284();
  sub_1000635D4();
  v15 = enum case for LocalizedStringResource.BundleDescription.main(_:);
  v16 = *(v6 + 104);
  v16(v8, enum case for LocalizedStringResource.BundleDescription.main(_:), v5);
  v21 = "Always Use Moment Date";
  sub_100063414();
  sub_100064284();
  sub_1000635D4();
  v16(v8, v15, v5);
  v17 = v26;
  sub_100063414();
  (*(v11 + 56))(v17, 0, 1, v22);
  v18 = v27;
  sub_1000630F4();
  v19 = sub_100063114();
  (*(*(v19 - 8) + 56))(v18, 0, 1, v19);
  sub_1000021D4(&qword_100084DC0, &qword_1000659B0);
  *(swift_allocObject() + 16) = xmmword_100064BC0;
  sub_100064284();
  sub_1000635D4();
  v16(v8, v15, v5);
  sub_100063414();
  sub_100064284();
  sub_1000635D4();
  v16(v8, v15, v5);
  sub_100063414();
  return sub_100063124();
}

uint64_t sub_10000558C()
{
  v0 = sub_100063404();
  sub_100009DBC(v0, qword_100090260);
  sub_1000049B4(v0, qword_100090260);
  return sub_1000633E4();
}

uint64_t sub_1000055F0()
{
  v0 = sub_1000021D4(&qword_100084E10, &unk_100065A30);
  sub_100009DBC(v0, qword_100090278);
  v1 = sub_1000049B4(v0, qword_100090278);
  sub_100063064();
  v2 = sub_100063074();
  v3 = *(*(v2 - 8) + 56);

  return v3(v1, 0, 1, v2);
}

uint64_t sub_1000056B0()
{
  result = swift_getKeyPath();
  qword_100090290 = result;
  return result;
}

uint64_t sub_100005710(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[8] = a4;
  v5[9] = a5;
  v5[7] = a1;
  sub_1000021D4(&qword_100084DE0, &qword_1000659E0);
  v5[10] = swift_task_alloc();
  sub_1000021D4(&qword_100084DE8, &qword_1000659E8);
  v5[11] = swift_task_alloc();
  sub_1000021D4(&qword_100084DF0, &qword_1000659F0);
  v5[12] = swift_task_alloc();
  v7 = sub_100062E34();
  v5[13] = v7;
  v5[14] = *(v7 - 8);
  v5[15] = swift_task_alloc();
  v8 = sub_1000021D4(&qword_100084DF8, &qword_1000659F8);
  v5[16] = v8;
  v5[17] = *(v8 - 8);
  v5[18] = swift_task_alloc();
  v5[19] = swift_task_alloc();
  if (a2)
  {
    swift_getObjectType();
    v9 = sub_100064334();
    v11 = v10;
  }

  else
  {
    v9 = 0;
    v11 = 0;
  }

  v5[20] = v9;
  v5[21] = v11;

  return _swift_task_switch(sub_100005928, v9);
}

uint64_t sub_100005928()
{
  sub_100062E84();
  v1 = swift_task_alloc();
  *(v0 + 176) = v1;
  v2 = sub_1000070AC();
  *v1 = v0;
  v1[1] = sub_1000059F8;
  v3 = *(v0 + 152);

  return IntentDialog._CapturedContent.init<>(entity:_:)(v3, v0 + 16, sub_10000A084, 0, &type metadata for AlwaysUseMomentDateEntity, v2);
}

uint64_t sub_1000059F8()
{
  v1 = *v0;

  v2 = *(v1 + 160);

  return _swift_task_switch(sub_100005B18, v2);
}

uint64_t sub_100005B18()
{
  sub_100062E84();
  v1 = *(v0 + 24);
  *(v0 + 32) = v1;
  *(v0 + 184) = v1;
  sub_100062E84();
  *(v0 + 217) = *(v0 + 216);
  if (qword_100084450 != -1)
  {
    swift_once();
  }

  v2 = qword_100090290;
  *(v0 + 192) = qword_100090290;

  v3 = swift_task_alloc();
  *(v0 + 200) = v3;
  v4 = sub_100009F14(&qword_100084DC8, &qword_100084DD0, &qword_1000659D0, &protocol conformance descriptor for _EntityDeferredPropertyValue<A, B>);
  *v3 = v0;
  v3[1] = sub_100005C78;

  return AppEntity._setValue<A, B, C>(_:for:)(v0 + 217, v2, &type metadata for Bool, v4);
}

uint64_t sub_100005C78()
{
  v2 = *v1;
  *(*v1 + 208) = v0;

  v3 = *(v2 + 160);
  if (v0)
  {
    v4 = sub_100006034;
  }

  else
  {
    v4 = sub_100005DCC;
  }

  return _swift_task_switch(v4, v3);
}

uint64_t sub_100005DCC()
{
  v1 = v0[19];
  v3 = v0[16];
  v2 = v0[17];
  v10 = v0[18];
  v11 = v0[15];
  v12 = v0[14];
  v13 = v0[13];
  v4 = v0[10];
  v5 = v0[11];
  sub_100062E84();
  v0[6] = v0[5];
  v6 = sub_100063224();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  v7 = sub_100063254();
  (*(*(v7 - 8) + 56))(v4, 1, 1, v7);
  sub_100004CA4();
  sub_100007480();
  sub_100062E04();
  (*(v2 + 16))(v10, v1, v3);
  sub_100062E24();
  sub_100062E44();
  (*(v12 + 8))(v11, v13);

  (*(v2 + 8))(v1, v3);

  v8 = v0[1];

  return v8();
}

uint64_t sub_100006034()
{
  (*(v0[17] + 8))(v0[19], v0[16]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1000060FC()
{
  v0 = sub_1000021D4(&qword_100084E00, &qword_100065A00);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v5 - v2;
  if (qword_100084450 != -1)
  {
    swift_once();
  }

  sub_1000630E4();

  sub_100007480();
  sub_100009F14(&qword_100084E08, &qword_100084E00, &qword_100065A00, &protocol conformance descriptor for _NLGRepresentationEntity<A>);
  sub_1000630D4();
  return (*(v1 + 8))(v3, v0);
}

void *sub_100006270@<X0>(void *a1@<X8>)
{
  result = sub_100062E84();
  *a1 = v3;
  return result;
}

uint64_t sub_1000062AC(uint64_t *a1)
{

  sub_100062E94();
}

uint64_t (*sub_1000062F4(uint64_t *a1))()
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
  *(v2 + 32) = sub_100062E74();
  return sub_100006368;
}

void *sub_10000636C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_100062E84();
  *a1 = v3;
  return result;
}

uint64_t (*sub_1000063E0(uint64_t *a1))()
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
  *(v2 + 32) = sub_100062E74();
  return sub_10000A08C;
}

uint64_t sub_100006454()
{
  if (qword_100084450 != -1)
  {
    swift_once();
  }
}

unint64_t sub_1000064D8()
{
  result = qword_100084C80;
  if (!qword_100084C80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100084C80);
  }

  return result;
}

unint64_t sub_100006530()
{
  result = qword_100084C88;
  if (!qword_100084C88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100084C88);
  }

  return result;
}

uint64_t sub_10000661C@<X0>(uint64_t a1@<X8>)
{
  if (qword_100084448 != -1)
  {
    swift_once();
  }

  v2 = sub_1000021D4(&qword_100084E10, &unk_100065A30);
  v3 = sub_1000049B4(v2, qword_100090278);

  return sub_100009E78(v3, a1);
}

uint64_t sub_1000066A0(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = *v1;
  return _swift_task_switch(sub_1000066C8, 0);
}

uint64_t sub_1000066C8()
{
  v1 = swift_task_alloc();
  v0[5] = v1;
  *v1 = v0;
  v1[1] = sub_100006768;
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[2];

  return sub_100005710(v4, 0, 0, v2, v3);
}

uint64_t sub_100006768()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_10000685C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1000090D8();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_1000068A4()
{
  result = qword_100084C90;
  if (!qword_100084C90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100084C90);
  }

  return result;
}

unint64_t sub_1000068FC()
{
  result = qword_100084C98;
  if (!qword_100084C98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100084C98);
  }

  return result;
}

uint64_t sub_100006950(uint64_t a1)
{
  v1[2] = a1;
  v2 = sub_100063684();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();

  return _swift_task_switch(sub_100006A10, 0);
}

uint64_t sub_100006A10()
{
  v2 = v0[4];
  v1 = v0[5];
  v4 = v0[2];
  v3 = v0[3];
  sub_100009E20();
  v5 = sub_100064394();
  (*(v2 + 104))(v1, enum case for SettingsKey.alwaysUseMomentDate(_:), v3);
  sub_100063674();
  (*(v2 + 8))(v1, v3);
  v6 = sub_1000642A4();

  LOBYTE(v3) = [v5 BOOLForKey:v6];

  *v4 = v3;

  v7 = v0[1];

  return v7();
}

uint64_t sub_100006B34(uint64_t a1, _BYTE *a2)
{
  v4 = sub_100063684();
  *(v2 + 16) = v4;
  *(v2 + 24) = *(v4 - 8);
  *(v2 + 32) = swift_task_alloc();
  *(v2 + 40) = *a2;

  return _swift_task_switch(sub_100006BFC, 0);
}

uint64_t sub_100006BFC()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = v0[2];
  sub_100009E20();
  v4 = sub_100064394();
  isa = sub_100064324().super.super.isa;
  (*(v2 + 104))(v1, enum case for SettingsKey.alwaysUseMomentDate(_:), v3);
  sub_100063674();
  (*(v2 + 8))(v1, v3);
  v6 = sub_1000642A4();

  [v4 setValue:isa forKey:v6];

  v7 = v0[1];

  return v7();
}

uint64_t sub_100006D30(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_10000A088;

  return sub_10000954C(0, 0);
}

unint64_t sub_100006DE0()
{
  result = qword_100084CA0;
  if (!qword_100084CA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100084CA0);
  }

  return result;
}

uint64_t sub_100006E34(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  v5 = sub_1000077E4();
  *v4 = v2;
  v4[1] = sub_100006EE4;

  return _UniqueEntityQuery.allEntities()(a2, v5);
}

uint64_t sub_100006EE4(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;

  if (!v1)
  {
    **(v4 + 16) = a1;
  }

  v6 = *(v5 + 8);

  return v6();
}

unint64_t sub_100006FFC()
{
  result = qword_100084CA8;
  if (!qword_100084CA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100084CA8);
  }

  return result;
}

unint64_t sub_100007054()
{
  result = qword_100084CB0;
  if (!qword_100084CB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100084CB0);
  }

  return result;
}

unint64_t sub_1000070AC()
{
  result = qword_100084CB8;
  if (!qword_100084CB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100084CB8);
  }

  return result;
}

uint64_t sub_100007100(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_1000077E4();
  *v5 = v2;
  v5[1] = sub_10000A0B4;

  return _UniqueEntityQuery.entities(for:)(a1, a2, v6);
}

uint64_t sub_1000071B4(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  v5 = sub_1000077E4();
  *v4 = v2;
  v4[1] = sub_10000A088;

  return _UniqueEntityQuery.suggestedEntities()(a2, v5);
}

uint64_t sub_100007264(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_100007324;

  return EntityQuery.displayRepresentations(for:requestedComponents:)(a1, a2, a3, a4);
}

uint64_t sub_100007324(uint64_t a1)
{
  v7 = *v2;

  v5 = *(v7 + 8);
  if (!v1)
  {
    v4 = a1;
  }

  return v5(v4);
}

unint64_t sub_100007428()
{
  result = qword_100084CC0;
  if (!qword_100084CC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100084CC0);
  }

  return result;
}

unint64_t sub_100007480()
{
  result = qword_100084CC8;
  if (!qword_100084CC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100084CC8);
  }

  return result;
}

unint64_t sub_1000074D8()
{
  result = qword_100084CD0;
  if (!qword_100084CD0)
  {
    sub_10000221C(&qword_100084CD8, qword_100065350);
    sub_100007480();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100084CD0);
  }

  return result;
}

uint64_t sub_10000755C(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_100006DE0();
  *v5 = v2;
  v5[1] = sub_100002CE4;

  return EntityQuery.results()(a1, a2, v6);
}

uint64_t sub_100007610(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_100002CE4;

  return DynamicOptionsProvider.defaultResult()(a1, a2, a3);
}

unint64_t sub_1000076D0()
{
  result = qword_100084CE0;
  if (!qword_100084CE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100084CE0);
  }

  return result;
}

unint64_t sub_100007728()
{
  result = qword_100084CE8;
  if (!qword_100084CE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100084CE8);
  }

  return result;
}

unint64_t sub_100007780()
{
  result = qword_100084CF0;
  if (!qword_100084CF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100084CF0);
  }

  return result;
}

unint64_t sub_1000077E4()
{
  result = qword_100084CF8;
  if (!qword_100084CF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100084CF8);
  }

  return result;
}

unint64_t sub_10000783C()
{
  result = qword_100084D00;
  if (!qword_100084D00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100084D00);
  }

  return result;
}

uint64_t sub_100007890(uint64_t a1)
{
  v2 = sub_1000070AC();

  return EntityURLRepresentation.init(_:)(0xD000000000000050, 0x800000010006BCC0, a1, v2);
}

unint64_t sub_1000078F8()
{
  result = qword_100084D08;
  if (!qword_100084D08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100084D08);
  }

  return result;
}

unint64_t sub_100007950()
{
  result = qword_100084D10;
  if (!qword_100084D10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100084D10);
  }

  return result;
}

unint64_t sub_1000079A8()
{
  result = qword_100084D18;
  if (!qword_100084D18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100084D18);
  }

  return result;
}

uint64_t sub_100007A08@<X0>(uint64_t *a2@<X8>)
{
  sub_1000068FC();
  result = sub_100062E64();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_100007A48(uint64_t a1)
{
  sub_100009D68();
  v2 = sub_100063194();
  v3 = *(v1 + 8);

  return v3(v2);
}

uint64_t sub_100007B30(uint64_t a1)
{
  v2 = sub_1000070AC();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_100007B80()
{
  result = qword_100084D30;
  if (!qword_100084D30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100084D30);
  }

  return result;
}

uint64_t sub_100007BD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_100002EE8;

  return InstanceDisplayRepresentable.displayRepresentation(with:)(a1, a2, a3, a4);
}

uint64_t sub_100007C9C(uint64_t a1)
{
  v2 = sub_1000079A8();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_100007CEC()
{
  result = qword_100084D38;
  if (!qword_100084D38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100084D38);
  }

  return result;
}

uint64_t sub_100007D40()
{
  v0 = sub_100063404();
  sub_100009DBC(v0, qword_100090298);
  sub_1000049B4(v0, qword_100090298);
  return sub_1000633E4();
}

uint64_t sub_100007DA4@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1000021D4(&qword_100084D88, &qword_100065990);
  __chkstk_darwin(v2 - 8);
  v4 = &v15[-v3];
  v5 = sub_1000633F4();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v15[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = sub_1000635E4();
  __chkstk_darwin(v9 - 8);
  v10 = sub_100064294();
  __chkstk_darwin(v10 - 8);
  v11 = sub_100063404();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  sub_100064284();
  sub_1000635D4();
  (*(v6 + 104))(v8, enum case for LocalizedStringResource.BundleDescription.main(_:), v5);
  sub_100063414();
  (*(v12 + 56))(v4, 1, 1, v11);
  sub_100063084();
  v13 = sub_100063074();
  return (*(*(v13 - 8) + 56))(a1, 0, 1, v13);
}

uint64_t (*sub_1000080A0(uint64_t *a1))()
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
  *(v2 + 32) = sub_100062E74();
  return sub_10000A08C;
}

void sub_100008114(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

unint64_t sub_100008164()
{
  result = qword_100084D40;
  if (!qword_100084D40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100084D40);
  }

  return result;
}

uint64_t sub_1000081B8(uint64_t a1, uint64_t a2)
{
  v4 = sub_100009CC0();
  v5 = sub_100009D68();

  return static URLRepresentableIntent<>.urlRepresentation.getter(a1, v4, a2, v5);
}

uint64_t sub_100008220()
{
  v0 = qword_100084C58;

  return v0;
}

unint64_t sub_10000825C()
{
  result = qword_100084D48;
  if (!qword_100084D48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100084D48);
  }

  return result;
}

unint64_t sub_1000082B4()
{
  result = qword_100084D50;
  if (!qword_100084D50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100084D50);
  }

  return result;
}

unint64_t sub_10000830C()
{
  result = qword_100084D58;
  if (!qword_100084D58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100084D58);
  }

  return result;
}

uint64_t sub_100008404@<X0>(void *a1@<X2>, uint64_t (*a2)(void)@<X3>, uint64_t a3@<X4>, uint64_t a5@<X8>)
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
  v9 = sub_1000049B4(v7, a3);
  v10 = *(*(v8 - 8) + 16);

  return v10(a5, v9, v8);
}

uint64_t sub_1000084C0(uint64_t a1, uint64_t a2)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  v5 = sub_100009CC0();
  v6 = sub_100009D14();
  v7 = sub_100009D68();
  *v4 = v2;
  v4[1] = sub_10000858C;

  return URLRepresentableIntent<>.perform()(a2, v5, v6, v7);
}

uint64_t sub_10000858C()
{
  v2 = *v1;

  if (v0)
  {
    v4 = *(v2 + 8);

    return v4();
  }

  return result;
}

uint64_t sub_100008694@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100009864();
  *a1 = result;
  return result;
}

uint64_t sub_1000086BC(uint64_t a1)
{
  v2 = sub_100008164();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

__n128 sub_100008728(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_100008734(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_10000877C(uint64_t result, int a2, int a3)
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

uint64_t sub_100008850@<X0>(uint64_t a1@<X8>)
{
  v20 = a1;
  v1 = sub_1000021D4(&qword_100084E18, &unk_100067D70);
  v16 = *(v1 - 8);
  __chkstk_darwin(v1);
  v3 = &v15 - v2;
  v4 = sub_1000021D4(&qword_100084E20, &unk_100065AB0);
  v17 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v15 - v5;
  v7 = sub_1000021D4(&qword_100084E28, &unk_100067D80);
  v8 = *(v7 - 8);
  v18 = v7;
  v19 = v8;
  __chkstk_darwin(v7);
  v10 = &v15 - v9;
  swift_getKeyPath();
  sub_1000068FC();
  sub_100064184();
  sub_100063A34();
  v11 = sub_100009F14(&qword_100084E30, &qword_100084E18, &unk_100067D70, &protocol conformance descriptor for ControlToggle<A>);
  sub_100063B04();

  (*(v16 + 8))(v3, v1);
  sub_100063A34();
  v21 = v1;
  v22 = v11;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_100063AB4();

  (*(v17 + 8))(v6, v4);
  v21 = v4;
  v22 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v13 = v18;
  sub_100063B24();
  return (*(v19 + 8))(v10, v13);
}

uint64_t sub_100008C4C@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1000633F4();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000635E4();
  __chkstk_darwin(v6 - 8);
  v7 = sub_100064294();
  __chkstk_darwin(v7 - 8);
  v8 = sub_100063404();
  __chkstk_darwin(v8 - 8);
  sub_100064284();
  sub_1000635D4();
  (*(v3 + 104))(v5, enum case for LocalizedStringResource.BundleDescription.main(_:), v2);
  sub_100063414();
  result = sub_100063E04();
  *a1 = result;
  *(a1 + 8) = v10;
  *(a1 + 16) = v11 & 1;
  *(a1 + 24) = v12;
  return result;
}

uint64_t sub_100008E60@<X0>(uint64_t a2@<X8>)
{
  v3 = sub_1000633F4();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000635E4();
  __chkstk_darwin(v7 - 8);
  v8 = sub_100064294();
  __chkstk_darwin(v8 - 8);
  v9 = sub_100063404();
  __chkstk_darwin(v9 - 8);
  sub_100064284();
  sub_1000635D4();
  (*(v4 + 104))(v6, enum case for LocalizedStringResource.BundleDescription.main(_:), v3);
  sub_100063414();
  result = sub_100063E04();
  *a2 = result;
  *(a2 + 8) = v11;
  *(a2 + 16) = v12 & 1;
  *(a2 + 24) = v13;
  return result;
}

uint64_t sub_1000090D8()
{
  v0 = sub_1000021D4(&qword_100084D78, &unk_100065980);
  __chkstk_darwin(v0 - 8);
  v30 = &v22 - v1;
  v31 = sub_1000631F4();
  v2 = *(v31 - 8);
  __chkstk_darwin(v31);
  v4 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1000021D4(&qword_100084D80, &unk_100065EE0);
  v6 = __chkstk_darwin(v5 - 8);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v22 - v9;
  v11 = sub_1000021D4(&qword_100084D88, &qword_100065990);
  __chkstk_darwin(v11 - 8);
  v13 = &v22 - v12;
  v22 = &v22 - v12;
  v14 = sub_100063404();
  v29 = v14;
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v24 = sub_1000021D4(&qword_100084D90, &qword_100065998);
  sub_1000633E4();
  v28 = *(v15 + 56);
  v28(v13, 1, 1, v14);
  v33 = 0;
  v16 = sub_100062E34();
  v17 = *(*(v16 - 8) + 56);
  v23 = v10;
  v17(v10, 1, 1, v16);
  v17(v8, 1, 1, v16);
  v27 = enum case for InputConnectionBehavior.default(_:);
  v18 = *(v2 + 104);
  v25 = v2 + 104;
  v26 = v18;
  v18(v4);
  sub_1000070AC();
  v19 = v22;
  v24 = sub_100062EB4();
  sub_1000021D4(&qword_100084D98, &unk_1000659A0);
  sub_1000633E4();
  v28(v19, 1, 1, v29);
  v32 = 2;
  v20 = sub_100064314();
  (*(*(v20 - 8) + 56))(v30, 1, 1, v20);
  v17(v23, 1, 1, v16);
  v26(v4, v27, v31);
  sub_100062EC4();
  return v24;
}

uint64_t sub_10000954C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000633F4();
  v2[2] = v4;
  v2[3] = *(v4 - 8);
  v2[4] = swift_task_alloc();
  sub_1000635E4();
  v2[5] = swift_task_alloc();
  sub_100064294();
  v2[6] = swift_task_alloc();
  sub_100063404();
  v2[7] = swift_task_alloc();
  if (a1)
  {
    swift_getObjectType();
    v5 = sub_100064334();
  }

  else
  {
    v5 = 0;
  }

  return _swift_task_switch(sub_1000096B8, v5);
}

uint64_t sub_1000096B8()
{
  v1 = v0[4];
  v2 = v0[2];
  v3 = v0[3];
  sub_1000021D4(&qword_100084C78, qword_1000650B0);
  sub_100064284();
  sub_1000635D4();
  (*(v3 + 104))(v1, enum case for LocalizedStringResource.BundleDescription.main(_:), v2);
  sub_100063414();
  sub_100009F14(&qword_100084DC8, &qword_100084DD0, &qword_1000659D0, &protocol conformance descriptor for _EntityDeferredPropertyValue<A, B>);
  v4 = sub_100063284();

  v5 = v0[1];

  return v5(v4);
}

uint64_t sub_100009864()
{
  v0 = sub_1000631F4();
  v24 = *(v0 - 8);
  v25 = v0;
  __chkstk_darwin(v0);
  v23 = v21 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_1000021D4(&qword_100084D80, &unk_100065EE0);
  v3 = __chkstk_darwin(v2 - 8);
  v22 = v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v6 = v21 - v5;
  v7 = sub_1000021D4(&qword_100084D88, &qword_100065990);
  __chkstk_darwin(v7 - 8);
  v9 = v21 - v8;
  v10 = sub_1000633F4();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1000635E4();
  __chkstk_darwin(v14 - 8);
  v15 = sub_100064294();
  __chkstk_darwin(v15 - 8);
  v16 = sub_100063404();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v21[1] = sub_1000021D4(&qword_100084D90, &qword_100065998);
  sub_100064284();
  sub_1000635D4();
  (*(v11 + 104))(v13, enum case for LocalizedStringResource.BundleDescription.main(_:), v10);
  sub_100063414();
  (*(v17 + 56))(v9, 1, 1, v16);
  v26 = 0;
  v18 = sub_100062E34();
  v19 = *(*(v18 - 8) + 56);
  v19(v6, 1, 1, v18);
  v19(v22, 1, 1, v18);
  (*(v24 + 104))(v23, enum case for InputConnectionBehavior.default(_:), v25);
  sub_1000070AC();
  return sub_100062EB4();
}

unint64_t sub_100009CC0()
{
  result = qword_100084DA0;
  if (!qword_100084DA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100084DA0);
  }

  return result;
}

unint64_t sub_100009D14()
{
  result = qword_100084DA8;
  if (!qword_100084DA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100084DA8);
  }

  return result;
}

unint64_t sub_100009D68()
{
  result = qword_100084DB0;
  if (!qword_100084DB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100084DB0);
  }

  return result;
}

uint64_t *sub_100009DBC(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

unint64_t sub_100009E20()
{
  result = qword_100084DD8;
  if (!qword_100084DD8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100084DD8);
  }

  return result;
}

uint64_t sub_100009E78(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000021D4(&qword_100084E10, &unk_100065A30);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100009F14(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_10000221C(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100009F5C()
{
  sub_10000221C(&qword_100084E28, &unk_100067D80);
  sub_10000221C(&qword_100084E20, &unk_100065AB0);
  sub_10000221C(&qword_100084E18, &unk_100067D70);
  sub_100009F14(&qword_100084E30, &qword_100084E18, &unk_100067D70, &protocol conformance descriptor for ControlToggle<A>);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_10000A0CC()
{
  result = qword_100084E38;
  if (!qword_100084E38)
  {
    type metadata accessor for StartWritingWidgetTimelineEntry(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100084E38);
  }

  return result;
}

uint64_t sub_10000A140(uint64_t a1)
{
  v2 = sub_1000021D4(&qword_100084E70, &unk_100065B90);
  __chkstk_darwin(v2 - 8);
  v4 = &v7 - v3;
  sub_10000C8CC(a1, &v7 - v3);
  started = type metadata accessor for StartWritingWidgetPersistedPrompts(0);
  (*(*(started - 8) + 56))(v4, 0, 1, started);
  sub_1000487B0(v4, 0xD000000000000021, 0x800000010006BFF0);
  return sub_10000494C(v4, &qword_100084E70, &unk_100065B90);
}

uint64_t sub_10000A23C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v37 = a1;
  v41 = a2;
  v38 = sub_100064154();
  v36 = *(v38 - 8);
  __chkstk_darwin(v38);
  v3 = &v34 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_100063644();
  v4 = *(v34 - 8);
  __chkstk_darwin(v34);
  v6 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000635E4();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  started = type metadata accessor for StartWritingWidgetPersistedPrompts(0);
  __chkstk_darwin(started);
  v12 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_100063574();
  v39 = *(v13 - 8);
  v40 = v13;
  __chkstk_darwin(v13);
  v15 = &v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100063564();
  type metadata accessor for StartWritingWidgetPromptProvider();
  if (qword_1000849E0 != -1)
  {
    swift_once();
  }

  v16 = qword_100090E18;
  sub_1000635D4();
  sub_100063624();
  sub_10003BCA8(v16, v10, v6, v15, sub_10000A124, sub_10000A140, 0, v12);
  (*(v4 + 8))(v6, v34);
  (*(v8 + 8))(v10, v7);
  sub_100064214();
  v17 = (*(v36 + 88))(v3, v38);
  if (v17 == enum case for WidgetFamily.systemSmall(_:) || v17 == enum case for WidgetFamily.systemMedium(_:))
  {
    v18 = v15;
    v19 = started[7];
    goto LABEL_11;
  }

  if (v17 == enum case for WidgetFamily.accessoryCircular(_:) || v17 == enum case for WidgetFamily.accessoryRectangular(_:))
  {
    v18 = v15;
    v19 = started[6];
    goto LABEL_11;
  }

  if (v17 == enum case for WidgetFamily.accessoryInline(_:))
  {
    v18 = v15;
    v19 = started[5];
LABEL_11:
    v20 = &v12[v19];
    v21 = *(v20 + 1);
    v43 = *v20;
    v44 = v21;
    v45 = *(v20 + 2);
    sub_10000B264(&v43, v42);
    sub_10000C930(v12, type metadata accessor for StartWritingWidgetPersistedPrompts);
    v22 = *(&v45 + 1);
    v38 = v45;
    v23 = v44;
    v24 = BYTE11(v43);
    v25 = BYTE10(v43);
    v26 = BYTE9(v43);
    v27 = v43;
    LOBYTE(v43) = BYTE8(v43);
    v28 = v41;
    (*(v39 + 32))(v41, v18, v40);
    v29 = type metadata accessor for StartWritingWidgetTimelineEntry(0);
    v30 = v29[6];
    v31 = sub_100064204();
    result = (*(*(v31 - 8) + 56))(v28 + v30, 1, 1, v31);
    v33 = v28 + v29[5];
    *v33 = v27;
    *(v33 + 8) = v43;
    *(v33 + 9) = v26;
    *(v33 + 10) = v25;
    *(v33 + 11) = v24;
    *(v33 + 16) = v23;
    *(v33 + 32) = v38;
    *(v33 + 40) = v22;
    *(v28 + v29[7]) = 2;
    return result;
  }

  result = sub_100064474();
  __break(1u);
  return result;
}

uint64_t sub_10000A798(uint64_t a1, void (*a2)(char *), uint64_t a3)
{
  v79 = a3;
  v80 = a2;
  v83 = a1;
  v3 = sub_1000641F4();
  __chkstk_darwin(v3 - 8);
  v78 = &v63 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = sub_100063644();
  v73 = *(v74 - 8);
  __chkstk_darwin(v74);
  v71 = &v63 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = sub_1000635E4();
  v70 = *(v72 - 8);
  __chkstk_darwin(v72);
  v68 = &v63 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  started = type metadata accessor for StartWritingWidgetPersistedPrompts(0);
  __chkstk_darwin(started);
  v77 = &v63 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100064154();
  v81 = *(v8 - 8);
  v82 = v8;
  v9 = __chkstk_darwin(v8);
  v69 = &v63 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v12 = &v63 - v11;
  v13 = sub_1000021D4(&qword_100084E40, &unk_100065B60);
  __chkstk_darwin(v13 - 8);
  v15 = &v63 - v14;
  v16 = sub_1000021D4(&qword_100084E48, &unk_10006A3A0);
  v17 = *(v16 - 8);
  v18 = __chkstk_darwin(v16);
  v76 = &v63 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v21 = &v63 - v20;
  v22 = sub_1000021D4(&qword_100084E50, &qword_100065B70);
  __chkstk_darwin(v22 - 8);
  v24 = &v63 - v23;
  v25 = sub_100063574();
  v26 = *(v25 - 8);
  v27 = __chkstk_darwin(v25);
  v84 = &v63 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v30 = &v63 - v29;
  type metadata accessor for JournalWidgetBridge();
  sub_10000E0A8(v24);
  if ((*(v26 + 48))(v24, 1, v25) == 1)
  {
    v64 = v26;
    v65 = v25;
    v66 = v17;
    v67 = v16;
    v31 = &qword_100084E50;
    v32 = &qword_100065B70;
    v33 = v24;
  }

  else
  {
    (*(v26 + 32))(v30, v24, v25);
    sub_100064214();
    v34 = sub_10000B8E8(v12);
    (*(v81 + 8))(v12, v82);
    sub_100052294(v30, v34, v15);

    if ((*(v17 + 48))(v15, 1, v16) != 1)
    {
      (*(v17 + 32))(v21, v15, v16);
      v80(v21);
      (*(v17 + 8))(v21, v16);
      return (*(v26 + 8))(v30, v25);
    }

    v66 = v17;
    v67 = v16;
    v64 = v26;
    v35 = *(v26 + 8);
    v65 = v25;
    v35(v30, v25);
    v31 = &qword_100084E40;
    v32 = &unk_100065B60;
    v33 = v15;
  }

  sub_10000494C(v33, v31, v32);
  v36 = v84;
  sub_100063564();
  type metadata accessor for StartWritingWidgetPromptProvider();
  v37 = v77;
  if (qword_1000849E0 != -1)
  {
    swift_once();
  }

  v38 = qword_100090E18;
  v39 = v68;
  sub_1000635D4();
  v40 = v71;
  sub_100063624();
  sub_10003BCA8(v38, v39, v40, v36, sub_10000A124, sub_10000A140, 0, v37);
  (*(v73 + 8))(v40, v74);
  (*(v70 + 8))(v39, v72);
  sub_1000021D4(&qword_100084E58, &qword_100065B78);
  v41 = type metadata accessor for StartWritingWidgetTimelineEntry(0);
  v42 = (*(*(v41 - 1) + 80) + 32) & ~*(*(v41 - 1) + 80);
  v43 = swift_allocObject();
  *(v43 + 16) = xmmword_100064BC0;
  v44 = v69;
  sub_100064214();
  v45 = (*(v81 + 88))(v44, v82);
  if (v45 == enum case for WidgetFamily.systemSmall(_:) || v45 == enum case for WidgetFamily.systemMedium(_:))
  {
    v46 = started[7];
    goto LABEL_16;
  }

  if (v45 == enum case for WidgetFamily.accessoryCircular(_:) || v45 == enum case for WidgetFamily.accessoryRectangular(_:))
  {
    v46 = started[6];
    goto LABEL_16;
  }

  if (v45 == enum case for WidgetFamily.accessoryInline(_:))
  {
    v46 = started[5];
LABEL_16:
    v48 = (v37 + v46);
    v49 = v48[2];
    v87 = v48[1];
    v88 = v49;
    v86 = *v48;
    v82 = *(&v49 + 1);
    v83 = v49;
    started = *(&v87 + 1);
    v81 = v87;
    LODWORD(v74) = BYTE11(v86);
    LODWORD(v73) = BYTE10(v86);
    v50 = BYTE9(v86);
    v51 = v86;
    v52 = BYTE8(v86);
    sub_10000B264(&v86, v85);
    v53 = v43 + v42;
    LOBYTE(v86) = v52;
    v54 = v64;
    v55 = v84;
    v56 = v65;
    (*(v64 + 16))(v43 + v42, v84, v65);
    v57 = v41[6];
    v58 = sub_100064204();
    (*(*(v58 - 8) + 56))(v53 + v57, 1, 1, v58);
    v59 = v53 + v41[5];
    *v59 = v51;
    *(v59 + 8) = v86;
    *(v59 + 9) = v50;
    *(v59 + 10) = v73;
    *(v59 + 11) = v74;
    v60 = started;
    *(v59 + 16) = v81;
    *(v59 + 24) = v60;
    v61 = v82;
    *(v59 + 32) = v83;
    *(v59 + 40) = v61;
    *(v53 + v41[7]) = 2;
    sub_1000021D4(&qword_100084E60, &unk_100065B80);
    sub_1000641D4();
    sub_10000A0CC();
    v62 = v76;
    sub_100064224();
    v80(v62);
    (*(v66 + 8))(v62, v67);
    sub_10000C930(v37, type metadata accessor for StartWritingWidgetPersistedPrompts);
    return (*(v54 + 8))(v55, v56);
  }

  result = sub_100064474();
  __break(1u);
  return result;
}

uint64_t sub_10000B2C0(uint64_t a1, void (*a2)(char *), uint64_t a3)
{
  v46 = a3;
  v47 = a2;
  v41 = a1;
  v42 = sub_100064154();
  v40 = *(v42 - 8);
  __chkstk_darwin(v42);
  v4 = &v36 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = sub_100063644();
  v5 = *(v38 - 8);
  __chkstk_darwin(v38);
  v7 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = sub_1000635E4();
  v8 = *(v37 - 8);
  __chkstk_darwin(v37);
  v10 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  started = type metadata accessor for StartWritingWidgetPersistedPrompts(0);
  __chkstk_darwin(started);
  v12 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = type metadata accessor for StartWritingWidgetTimelineEntry(0);
  __chkstk_darwin(v44);
  v14 = &v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = sub_100063574();
  v43 = *(v45 - 8);
  __chkstk_darwin(v45);
  v16 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100063564();
  type metadata accessor for StartWritingWidgetPromptProvider();
  if (qword_1000849E0 != -1)
  {
    swift_once();
  }

  v17 = qword_100090E18;
  sub_1000635D4();
  sub_100063624();
  sub_10003BCA8(v17, v10, v7, v16, sub_10000A124, sub_10000A140, 0, v12);
  (*(v5 + 8))(v7, v38);
  (*(v8 + 8))(v10, v37);
  sub_100064214();
  v18 = (*(v40 + 88))(v4, v42);
  if (v18 == enum case for WidgetFamily.systemSmall(_:) || v18 == enum case for WidgetFamily.systemMedium(_:))
  {
    v19 = v16;
    v20 = started[7];
    goto LABEL_11;
  }

  if (v18 == enum case for WidgetFamily.accessoryCircular(_:) || v18 == enum case for WidgetFamily.accessoryRectangular(_:))
  {
    v19 = v16;
    v20 = started[6];
    goto LABEL_11;
  }

  if (v18 == enum case for WidgetFamily.accessoryInline(_:))
  {
    v19 = v16;
    v20 = started[5];
LABEL_11:
    v21 = &v12[v20];
    v22 = *(v21 + 1);
    v49 = *v21;
    v50 = v22;
    v51 = *(v21 + 2);
    sub_10000B264(&v49, v48);
    sub_10000C930(v12, type metadata accessor for StartWritingWidgetPersistedPrompts);
    v41 = *(&v51 + 1);
    v42 = v51;
    started = *(&v50 + 1);
    v40 = v50;
    v23 = BYTE11(v49);
    v24 = BYTE10(v49);
    v25 = BYTE9(v49);
    v26 = v49;
    LOBYTE(v49) = BYTE8(v49);
    v27 = v43;
    v28 = v45;
    (*(v43 + 16))(v14, v19, v45);
    v29 = v44;
    v30 = *(v44 + 24);
    v31 = sub_100064204();
    (*(*(v31 - 8) + 56))(&v14[v30], 1, 1, v31);
    v32 = &v14[*(v29 + 20)];
    *v32 = v26;
    v32[8] = v49;
    v32[9] = v25;
    v32[10] = v24;
    v32[11] = v23;
    v33 = started;
    *(v32 + 2) = v40;
    *(v32 + 3) = v33;
    v34 = v41;
    *(v32 + 4) = v42;
    *(v32 + 5) = v34;
    v14[*(v29 + 28)] = 2;
    v47(v14);
    sub_10000C930(v14, type metadata accessor for StartWritingWidgetTimelineEntry);
    return (*(v27 + 8))(v19, v28);
  }

  result = sub_100064474();
  __break(1u);
  return result;
}

void *sub_10000B8E8(uint64_t a1)
{
  v2 = sub_1000635E4();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v147 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100064154();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v147 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v9, a1, v6);
  v10 = (*(v7 + 88))(v9, v6);
  if (v10 == enum case for WidgetFamily.systemSmall(_:))
  {
    sub_1000021D4(&qword_100084E68, &unk_100069A40);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_100065AC0;
    if (qword_1000844F0 != -1)
    {
      swift_once();
    }

    v12 = qword_1000903F0;
    v13 = *algn_1000903F8;

    sub_1000635D4();
    v148 = 1;
    v14 = sub_1000635B4();
    v16 = v15;
    v17 = *(v3 + 8);
    v17(v5, v2);
    v18 = v148;
    *(v11 + 32) = 0;
    *(v11 + 40) = v18;
    *(v11 + 41) = 2;
    *(v11 + 43) = 0;
    *(v11 + 48) = v12;
    *(v11 + 56) = v13;
    *(v11 + 64) = v14;
    *(v11 + 72) = v16;
    if (qword_1000844F8 != -1)
    {
      swift_once();
    }

    v19 = qword_100090400;
    v20 = *algn_100090408;

    sub_1000635D4();
    v148 = 1;
    v21 = sub_1000635B4();
    v23 = v22;
    v17(v5, v2);
    v24 = v148;
    *(v11 + 80) = 0;
    *(v11 + 88) = v24;
    *(v11 + 89) = 2;
    *(v11 + 91) = 0;
    *(v11 + 96) = v19;
    *(v11 + 104) = v20;
    *(v11 + 112) = v21;
    *(v11 + 120) = v23;
    if (qword_100084628 != -1)
    {
      swift_once();
    }

    v25 = qword_100090660;
    v26 = *algn_100090668;

    sub_1000635D4();
    v148 = 1;
    v27 = sub_1000635B4();
    v29 = v28;
    v17(v5, v2);
    v30 = v148;
    *(v11 + 128) = 0;
    *(v11 + 136) = v30;
    *(v11 + 137) = 2;
    *(v11 + 139) = 1;
    *(v11 + 144) = v25;
    *(v11 + 152) = v26;
    *(v11 + 160) = v27;
    *(v11 + 168) = v29;
    if (qword_100084630 != -1)
    {
      swift_once();
    }

    v31 = qword_100090670;
    v32 = *algn_100090678;

    sub_1000635D4();
    v148 = 1;
    v33 = sub_1000635B4();
    v35 = v34;
    v17(v5, v2);
    v36 = v148;
    *(v11 + 176) = 0;
    *(v11 + 184) = v36;
    *(v11 + 185) = 2;
    *(v11 + 187) = 1;
    *(v11 + 192) = v31;
    *(v11 + 200) = v32;
    *(v11 + 208) = v33;
    *(v11 + 216) = v35;
    if (qword_1000847E0 != -1)
    {
      swift_once();
    }

    v37 = qword_1000909D0;
    v38 = *algn_1000909D8;

    sub_1000635D4();
    v148 = 1;
    v39 = sub_1000635B4();
    v41 = v40;
    v17(v5, v2);
    v42 = v148;
    *(v11 + 224) = 0;
    *(v11 + 232) = v42;
    *(v11 + 233) = 2;
    *(v11 + 235) = 2;
    *(v11 + 240) = v37;
    *(v11 + 248) = v38;
    *(v11 + 256) = v39;
    *(v11 + 264) = v41;
    if (qword_1000847E8 != -1)
    {
      swift_once();
    }

    v43 = &qword_1000909E0;
LABEL_29:
    v74 = *v43;
    v75 = v43[1];

    sub_1000635D4();
    v148 = 1;
    v76 = sub_1000635B4();
    v78 = v77;
    v17(v5, v2);
    v79 = v148;
    *(v11 + 272) = 0;
    *(v11 + 280) = v79;
    *(v11 + 281) = 2;
    *(v11 + 283) = 2;
    goto LABEL_30;
  }

  if (v10 == enum case for WidgetFamily.systemMedium(_:))
  {
    sub_1000021D4(&qword_100084E68, &unk_100069A40);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_100065AC0;
    if (qword_100084500 != -1)
    {
      swift_once();
    }

    v44 = qword_100090410;
    v45 = *algn_100090418;

    sub_1000635D4();
    v148 = 1;
    v46 = sub_1000635B4();
    v48 = v47;
    v17 = *(v3 + 8);
    v17(v5, v2);
    v49 = v148;
    *(v11 + 32) = 0;
    *(v11 + 40) = v49;
    *(v11 + 41) = 2;
    *(v11 + 43) = 0;
    *(v11 + 48) = v44;
    *(v11 + 56) = v45;
    *(v11 + 64) = v46;
    *(v11 + 72) = v48;
    if (qword_100084508 != -1)
    {
      swift_once();
    }

    v50 = qword_100090420;
    v51 = *algn_100090428;

    sub_1000635D4();
    v148 = 1;
    v52 = sub_1000635B4();
    v54 = v53;
    v17(v5, v2);
    v55 = v148;
    *(v11 + 80) = 0;
    *(v11 + 88) = v55;
    *(v11 + 89) = 2;
    *(v11 + 91) = 0;
    *(v11 + 96) = v50;
    *(v11 + 104) = v51;
    *(v11 + 112) = v52;
    *(v11 + 120) = v54;
    if (qword_100084638 != -1)
    {
      swift_once();
    }

    v56 = qword_100090680;
    v57 = *algn_100090688;

    sub_1000635D4();
    v148 = 1;
    v58 = sub_1000635B4();
    v60 = v59;
    v17(v5, v2);
    v61 = v148;
    *(v11 + 128) = 0;
    *(v11 + 136) = v61;
    *(v11 + 137) = 2;
    *(v11 + 139) = 1;
    *(v11 + 144) = v56;
    *(v11 + 152) = v57;
    *(v11 + 160) = v58;
    *(v11 + 168) = v60;
    if (qword_100084640 != -1)
    {
      swift_once();
    }

    v62 = qword_100090690;
    v63 = *algn_100090698;

    sub_1000635D4();
    v148 = 1;
    v64 = sub_1000635B4();
    v66 = v65;
    v17(v5, v2);
    v67 = v148;
    *(v11 + 176) = 0;
    *(v11 + 184) = v67;
    *(v11 + 185) = 2;
    *(v11 + 187) = 1;
    *(v11 + 192) = v62;
    *(v11 + 200) = v63;
    *(v11 + 208) = v64;
    *(v11 + 216) = v66;
    if (qword_1000847F0 != -1)
    {
      swift_once();
    }

    v68 = qword_1000909F0;
    v69 = *algn_1000909F8;

    sub_1000635D4();
    v148 = 1;
    v70 = sub_1000635B4();
    v72 = v71;
    v17(v5, v2);
    v73 = v148;
    *(v11 + 224) = 0;
    *(v11 + 232) = v73;
    *(v11 + 233) = 2;
    *(v11 + 235) = 2;
    *(v11 + 240) = v68;
    *(v11 + 248) = v69;
    *(v11 + 256) = v70;
    *(v11 + 264) = v72;
    if (qword_1000847F8 != -1)
    {
      swift_once();
    }

    v43 = &qword_100090A00;
    goto LABEL_29;
  }

  if (v10 == enum case for WidgetFamily.accessoryRectangular(_:))
  {
    sub_1000021D4(&qword_100084E68, &unk_100069A40);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_100065AC0;
    if (qword_100084578 != -1)
    {
      swift_once();
    }

    v81 = qword_100090500;
    v82 = *algn_100090508;

    sub_1000635D4();
    v148 = 1;
    v83 = sub_1000635B4();
    v85 = v84;
    v86 = *(v3 + 8);
    v86(v5, v2);
    v87 = v148;
    *(v11 + 32) = 0;
    *(v11 + 40) = v87;
    *(v11 + 41) = 1;
    *(v11 + 43) = 0;
    *(v11 + 48) = v81;
    *(v11 + 56) = v82;
    *(v11 + 64) = v83;
    *(v11 + 72) = v85;
    if (qword_100084580 != -1)
    {
      swift_once();
    }

    v88 = qword_100090510;
    v89 = *algn_100090518;

    sub_1000635D4();
    v148 = 1;
    v90 = sub_1000635B4();
    v92 = v91;
    v86(v5, v2);
    v93 = v148;
    *(v11 + 80) = 0;
    *(v11 + 88) = v93;
    *(v11 + 89) = 1;
    *(v11 + 91) = 0;
    *(v11 + 96) = v88;
    *(v11 + 104) = v89;
    *(v11 + 112) = v90;
    *(v11 + 120) = v92;
    if (qword_100084700 != -1)
    {
      swift_once();
    }

    v94 = qword_100090810;
    v95 = *algn_100090818;

    sub_1000635D4();
    v148 = 1;
    v96 = sub_1000635B4();
    v98 = v97;
    v86(v5, v2);
    v99 = v148;
    *(v11 + 128) = 0;
    *(v11 + 136) = v99;
    *(v11 + 137) = 1;
    *(v11 + 139) = 1;
    *(v11 + 144) = v94;
    *(v11 + 152) = v95;
    *(v11 + 160) = v96;
    *(v11 + 168) = v98;
    if (qword_100084708 != -1)
    {
      swift_once();
    }

    v100 = qword_100090820;
    v101 = *algn_100090828;

    sub_1000635D4();
    v148 = 1;
    v102 = sub_1000635B4();
    v104 = v103;
    v86(v5, v2);
    v105 = v148;
    *(v11 + 176) = 0;
    *(v11 + 184) = v105;
    *(v11 + 185) = 1;
    *(v11 + 187) = 1;
    *(v11 + 192) = v100;
    *(v11 + 200) = v101;
    *(v11 + 208) = v102;
    *(v11 + 216) = v104;
    if (qword_100084878 != -1)
    {
      swift_once();
    }

    v106 = qword_100090B00;
    v107 = *algn_100090B08;

    sub_1000635D4();
    v148 = 1;
    v108 = sub_1000635B4();
    v110 = v109;
    v86(v5, v2);
    v111 = v148;
    *(v11 + 224) = 0;
    *(v11 + 232) = v111;
    *(v11 + 233) = 1;
    *(v11 + 235) = 2;
    *(v11 + 240) = v106;
    *(v11 + 248) = v107;
    *(v11 + 256) = v108;
    *(v11 + 264) = v110;
    if (qword_100084880 != -1)
    {
      swift_once();
    }

    v74 = qword_100090B10;
    v75 = *algn_100090B18;

    sub_1000635D4();
    v148 = 1;
    v76 = sub_1000635B4();
    v78 = v112;
    v86(v5, v2);
    v113 = v148;
    *(v11 + 272) = 0;
    *(v11 + 280) = v113;
    *(v11 + 281) = 1;
  }

  else
  {
    if (v10 != enum case for WidgetFamily.accessoryInline(_:))
    {
      (*(v7 + 8))(v9, v6);
      return _swiftEmptyArrayStorage;
    }

    sub_1000021D4(&qword_100084E68, &unk_100069A40);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_100065AC0;
    if (qword_1000845C8 != -1)
    {
      swift_once();
    }

    v114 = qword_1000905A0;
    v115 = *algn_1000905A8;

    sub_1000635D4();
    v148 = 1;
    v116 = sub_1000635B4();
    v118 = v117;
    v119 = *(v3 + 8);
    v119(v5, v2);
    v120 = v148;
    *(v11 + 32) = 0;
    *(v11 + 40) = v120;
    *(v11 + 41) = 0;
    *(v11 + 43) = 0;
    *(v11 + 48) = v114;
    *(v11 + 56) = v115;
    *(v11 + 64) = v116;
    *(v11 + 72) = v118;
    if (qword_1000845D0 != -1)
    {
      swift_once();
    }

    v121 = qword_1000905B0;
    v122 = *algn_1000905B8;

    sub_1000635D4();
    v148 = 1;
    v123 = sub_1000635B4();
    v125 = v124;
    v119(v5, v2);
    v126 = v148;
    *(v11 + 80) = 0;
    *(v11 + 88) = v126;
    *(v11 + 89) = 0;
    *(v11 + 91) = 0;
    *(v11 + 96) = v121;
    *(v11 + 104) = v122;
    *(v11 + 112) = v123;
    *(v11 + 120) = v125;
    if (qword_100084748 != -1)
    {
      swift_once();
    }

    v127 = qword_1000908A0;
    v128 = *algn_1000908A8;

    sub_1000635D4();
    v148 = 1;
    v129 = sub_1000635B4();
    v131 = v130;
    v119(v5, v2);
    v132 = v148;
    *(v11 + 128) = 0;
    *(v11 + 136) = v132;
    *(v11 + 137) = 0;
    *(v11 + 139) = 1;
    *(v11 + 144) = v127;
    *(v11 + 152) = v128;
    *(v11 + 160) = v129;
    *(v11 + 168) = v131;
    if (qword_100084750 != -1)
    {
      swift_once();
    }

    v133 = qword_1000908B0;
    v134 = *algn_1000908B8;

    sub_1000635D4();
    v148 = 1;
    v135 = sub_1000635B4();
    v137 = v136;
    v119(v5, v2);
    v138 = v148;
    *(v11 + 176) = 0;
    *(v11 + 184) = v138;
    *(v11 + 185) = 0;
    *(v11 + 187) = 1;
    *(v11 + 192) = v133;
    *(v11 + 200) = v134;
    *(v11 + 208) = v135;
    *(v11 + 216) = v137;
    if (qword_1000848D0 != -1)
    {
      swift_once();
    }

    v139 = qword_100090BB0;
    v140 = *algn_100090BB8;

    sub_1000635D4();
    v148 = 1;
    v141 = sub_1000635B4();
    v143 = v142;
    v119(v5, v2);
    v144 = v148;
    *(v11 + 224) = 0;
    *(v11 + 232) = v144;
    *(v11 + 233) = 0;
    *(v11 + 235) = 2;
    *(v11 + 240) = v139;
    *(v11 + 248) = v140;
    *(v11 + 256) = v141;
    *(v11 + 264) = v143;
    if (qword_1000848D8 != -1)
    {
      swift_once();
    }

    v74 = qword_100090BC0;
    v75 = *algn_100090BC8;

    sub_1000635D4();
    v148 = 1;
    v76 = sub_1000635B4();
    v78 = v145;
    v119(v5, v2);
    v146 = v148;
    *(v11 + 272) = 0;
    *(v11 + 280) = v146;
    *(v11 + 281) = 0;
  }

  *(v11 + 283) = 2;
LABEL_30:
  *(v11 + 288) = v74;
  *(v11 + 296) = v75;
  *(v11 + 304) = v76;
  *(v11 + 312) = v78;
  return v11;
}

uint64_t sub_10000C8CC(uint64_t a1, uint64_t a2)
{
  started = type metadata accessor for StartWritingWidgetPersistedPrompts(0);
  (*(*(started - 8) + 16))(a2, a1, started);
  return a2;
}

uint64_t sub_10000C930(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10000C9A4(uint64_t a1, uint64_t a2)
{
  started = type metadata accessor for StartWritingWidgetTimelineEntry(0);
  v5 = *(*(started - 8) + 48);

  return v5(a1, a2, started);
}

uint64_t sub_10000CA24(uint64_t a1, uint64_t a2)
{
  started = type metadata accessor for StartWritingWidgetTimelineEntry(0);
  v5 = *(*(started - 8) + 56);

  return v5(a1, a2, a2, started);
}

uint64_t type metadata accessor for StartWritingWidgetAccessoryInlineView(uint64_t a1)
{
  result = qword_100084ED0;
  if (!qword_100084ED0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10000CAE0(uint64_t a1)
{
  result = type metadata accessor for StartWritingWidgetTimelineEntry(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_10000CB68@<X0>(_BYTE *a1@<X8>)
{
  sub_1000021D4(&qword_100084F08, &qword_100065C28);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100065BA0;
  v4 = sub_100063C74();
  *(inited + 32) = v4;
  v5 = sub_100063C94();
  *(inited + 33) = v5;
  v6 = sub_100063C84();
  sub_100063C84();
  if (sub_100063C84() != v4)
  {
    v6 = sub_100063C84();
  }

  sub_100063C84();
  if (sub_100063C84() != v5)
  {
    v6 = sub_100063C84();
  }

  *a1 = v6;
  v7 = sub_1000021D4(&qword_100084F10, &qword_100065C30);
  return sub_10000CC6C(v1, &a1[*(v7 + 44)]);
}

uint64_t sub_10000CC6C@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v31 = a2;
  v3 = sub_1000021D4(&qword_100084F18, &qword_100065C38);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v28 - v5;
  v7 = sub_1000021D4(&qword_100084F20, &qword_100065C40);
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v30 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v29 = &v28 - v12;
  v13 = __chkstk_darwin(v11);
  v15 = &v28 - v14;
  __chkstk_darwin(v13);
  v17 = &v28 - v16;
  v18 = (a1 + *(type metadata accessor for StartWritingWidgetTimelineEntry(0) + 20));
  v19 = v18[1];
  v35[0] = *v18;
  v35[1] = v19;
  v35[2] = v18[2];
  v33 = v35;
  sub_100064024();
  sub_100009F14(&qword_100084F28, &qword_100084F18, &qword_100065C38, &protocol conformance descriptor for Label<A, B>);
  sub_100063EA4();
  v20 = *(v4 + 8);
  v20(v6, v3);
  memset(v34, 0, sizeof(v34));
  v32 = v34;
  sub_100064024();
  sub_100063EA4();
  v20(v6, v3);
  v21 = *(v8 + 16);
  v22 = v29;
  v21(v29, v17, v7);
  v23 = v30;
  v21(v30, v15, v7);
  v24 = v31;
  v21(v31, v22, v7);
  v25 = sub_1000021D4(&qword_100084F30, &qword_100065C48);
  v21(&v24[*(v25 + 48)], v23, v7);
  v26 = *(v8 + 8);
  v26(v15, v7);
  v26(v17, v7);
  v26(v23, v7);
  return (v26)(v22, v7);
}

uint64_t sub_10000D07C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (!*(a1 + 24) && qword_100084498 != -1)
  {
    swift_once();
  }

  sub_100002264();
  result = sub_100063E14();
  *a2 = result;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5 & 1;
  *(a2 + 24) = v6;
  return result;
}

uint64_t sub_10000D124@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100063FC4();
  *a1 = result;
  return result;
}

uint64_t sub_10000D1B8()
{
  v0 = sub_1000021D4(&qword_100084F50, &qword_100065CB8);

  return TupleWidget.init(_:)(v0, v0);
}

int main(int argc, const char **argv, const char **envp)
{
  sub_10000D240();
  sub_1000637D4();
  return 0;
}

unint64_t sub_10000D240()
{
  result = qword_100084F48;
  if (!qword_100084F48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100084F48);
  }

  return result;
}

unint64_t sub_10000D2C4()
{
  result = qword_100084F58;
  if (!qword_100084F58)
  {
    sub_10000221C(&qword_100084F60, &unk_100065CC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100084F58);
  }

  return result;
}

unint64_t sub_10000D32C()
{
  result = qword_100084F78;
  if (!qword_100084F78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100084F78);
  }

  return result;
}

unint64_t sub_10000D384()
{
  result = qword_100084F80;
  if (!qword_100084F80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100084F80);
  }

  return result;
}

uint64_t sub_10000D3D8()
{
  v0 = sub_100063404();
  sub_100009DBC(v0, qword_1000902B0);
  sub_1000049B4(v0, qword_1000902B0);
  return sub_1000633E4();
}

uint64_t sub_10000D43C@<X0>(uint64_t a1@<X8>)
{
  v15[0] = a1;
  v1 = sub_1000021D4(&qword_100084D88, &qword_100065990);
  __chkstk_darwin(v1 - 8);
  v3 = v15 - v2;
  v4 = sub_1000633F4();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000635E4();
  __chkstk_darwin(v8 - 8);
  v9 = sub_100064294();
  __chkstk_darwin(v9 - 8);
  v10 = sub_100063404();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  sub_100064284();
  sub_1000635D4();
  (*(v5 + 104))(v7, enum case for LocalizedStringResource.BundleDescription.main(_:), v4);
  sub_100063414();
  (*(v11 + 56))(v3, 1, 1, v10);
  v12 = v15[0];
  sub_100063084();
  v13 = sub_100063074();
  return (*(*(v13 - 8) + 56))(v12, 0, 1, v13);
}

void *sub_10000D784@<X0>(_BYTE *a1@<X8>)
{
  result = sub_100062E84();
  *a1 = v3;
  return result;
}

void (*sub_10000D7F8(uint64_t *a1))(void *a1)
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
  *(v2 + 32) = sub_100062E74();
  return sub_100008114;
}

unint64_t sub_10000D86C()
{
  result = qword_100084F88;
  if (!qword_100084F88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100084F88);
  }

  return result;
}

uint64_t sub_10000D8C0(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000DFA8();
  v5 = sub_10000E050();

  return static URLRepresentableIntent<>.urlRepresentation.getter(a1, v4, a2, v5);
}

uint64_t sub_10000D92C()
{
  v0 = qword_100084F68;

  return v0;
}

unint64_t sub_10000D968()
{
  result = qword_100084F90;
  if (!qword_100084F90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100084F90);
  }

  return result;
}

unint64_t sub_10000D9C0()
{
  result = qword_100084F98;
  if (!qword_100084F98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100084F98);
  }

  return result;
}

uint64_t sub_10000DA64@<X0>(uint64_t a1@<X8>)
{
  if (qword_100084460 != -1)
  {
    swift_once();
  }

  v2 = sub_100063404();
  v3 = sub_1000049B4(v2, qword_1000902B0);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_10000DB10(uint64_t a1, uint64_t a2)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  v5 = sub_10000DFA8();
  v6 = sub_10000DFFC();
  v7 = sub_10000E050();
  *v4 = v2;
  v4[1] = sub_10000858C;

  return URLRepresentableIntent<>.perform()(a2, v5, v6, v7);
}

uint64_t sub_10000DBDC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10000DC50();
  *a1 = result;
  return result;
}

uint64_t sub_10000DC04(uint64_t a1)
{
  v2 = sub_10000D86C();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

uint64_t sub_10000DC50()
{
  v17 = sub_1000631F4();
  v0 = *(v17 - 8);
  __chkstk_darwin(v17);
  v2 = &v17 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1000021D4(&qword_100084D80, &unk_100065EE0);
  v4 = __chkstk_darwin(v3 - 8);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v17 - v7;
  v9 = sub_1000021D4(&qword_100084D88, &qword_100065990);
  __chkstk_darwin(v9 - 8);
  v11 = &v17 - v10;
  v12 = sub_100063404();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  sub_1000021D4(&qword_100084FA0, &unk_100065EF0);
  sub_1000633E4();
  (*(v13 + 56))(v11, 1, 1, v12);
  v18 = 9;
  v14 = sub_100062E34();
  v15 = *(*(v14 - 8) + 56);
  v15(v8, 1, 1, v14);
  v15(v6, 1, 1, v14);
  (*(v0 + 104))(v2, enum case for InputConnectionBehavior.default(_:), v17);
  sub_10000DF54();
  return sub_100062EA4();
}

unint64_t sub_10000DF54()
{
  result = qword_100084FA8;
  if (!qword_100084FA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100084FA8);
  }

  return result;
}

unint64_t sub_10000DFA8()
{
  result = qword_100084FB0;
  if (!qword_100084FB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100084FB0);
  }

  return result;
}

unint64_t sub_10000DFFC()
{
  result = qword_100084FB8;
  if (!qword_100084FB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100084FB8);
  }

  return result;
}

unint64_t sub_10000E050()
{
  result = qword_100084FC0;
  if (!qword_100084FC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100084FC0);
  }

  return result;
}

uint64_t sub_10000E0A8@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1000021D4(&qword_100084E50, &qword_100065B70);
  __chkstk_darwin(v2 - 8);
  v4 = &v13 - v3;
  sub_100009E20();
  v5 = sub_100064394();
  v6 = sub_1000642A4();
  v7 = [v5 objectForKey:v6];

  if (v7)
  {
    sub_1000643B4();
    swift_unknownObjectRelease();
  }

  else
  {
    v13 = 0u;
    v14 = 0u;
  }

  v15[0] = v13;
  v15[1] = v14;
  if (!*(&v14 + 1))
  {
    sub_10000494C(v15, &qword_100085060, &unk_100065F20);
    v8 = sub_100063574();
    (*(*(v8 - 8) + 56))(v4, 1, 1, v8);
LABEL_8:
    sub_10000494C(v4, &qword_100084E50, &qword_100065B70);
    sub_100063574();
    return (*(*(v8 - 8) + 56))(a1, 1, 1, v8);
  }

  v8 = sub_100063574();
  v9 = swift_dynamicCast();
  v10 = *(v8 - 8);
  v11 = *(v10 + 56);
  v11(v4, v9 ^ 1u, 1, v8);
  if ((*(v10 + 48))(v4, 1, v8) == 1)
  {
    goto LABEL_8;
  }

  (*(v10 + 32))(a1, v4, v8);
  return (v11)(a1, 0, 1, v8);
}

unint64_t sub_10000E380()
{
  result = qword_100085078;
  if (!qword_100085078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100085078);
  }

  return result;
}

uint64_t sub_10000E418()
{
  v0 = sub_1000021D4(&qword_100084D88, &qword_100065990);
  __chkstk_darwin(v0 - 8);
  v2 = v12 - v1;
  v12[0] = sub_1000633F4();
  v3 = *(v12[0] - 8);
  __chkstk_darwin(v12[0]);
  v5 = v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000635E4();
  __chkstk_darwin(v6 - 8);
  v7 = sub_100064294();
  __chkstk_darwin(v7 - 8);
  v8 = sub_100063404();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = sub_100063244();
  sub_100009DBC(v10, qword_1000902C8);
  sub_1000049B4(v10, qword_1000902C8);
  sub_100064284();
  sub_1000635D4();
  (*(v3 + 104))(v5, enum case for LocalizedStringResource.BundleDescription.main(_:), v12[0]);
  sub_100063414();
  (*(v9 + 56))(v2, 1, 1, v8);
  return sub_100063234();
}

uint64_t sub_10000E708@<X0>(uint64_t a1@<X8>)
{
  v30 = a1;
  v1 = sub_1000021D4(&qword_100084DB8, "̷");
  __chkstk_darwin(v1 - 8);
  v32 = v25 - v2;
  v3 = sub_1000021D4(&qword_100084D88, &qword_100065990);
  __chkstk_darwin(v3 - 8);
  v31 = v25 - v4;
  v5 = sub_1000633F4();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1000635E4();
  __chkstk_darwin(v9 - 8);
  v10 = sub_100064294();
  __chkstk_darwin(v10 - 8);
  v27 = sub_100063404();
  v11 = *(v27 - 8);
  v12 = __chkstk_darwin(v27);
  v29 = v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v28 = v25 - v14;
  sub_100064284();
  sub_1000635D4();
  v15 = enum case for LocalizedStringResource.BundleDescription.main(_:);
  v16 = *(v6 + 104);
  v25[0] = v5;
  v16(v8, enum case for LocalizedStringResource.BundleDescription.main(_:), v5);
  v25[1] = "Always Use Moment Date";
  v26 = v16;
  sub_100063414();
  sub_100064284();
  sub_1000635D4();
  v16(v8, v15, v5);
  v17 = v31;
  sub_100063414();
  (*(v11 + 56))(v17, 0, 1, v27);
  v18 = v32;
  sub_100063104();
  v19 = sub_100063114();
  (*(*(v19 - 8) + 56))(v18, 0, 1, v19);
  sub_1000021D4(&qword_100084DC0, &qword_1000659B0);
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_100065BA0;
  sub_100064284();
  sub_1000635D4();
  v20 = v15;
  v21 = v15;
  v22 = v25[0];
  v23 = v26;
  v26(v8, v21, v25[0]);
  sub_100063414();
  sub_100064284();
  sub_1000635D4();
  v23(v8, v20, v22);
  sub_100063414();
  sub_100064284();
  sub_1000635D4();
  v23(v8, v20, v22);
  sub_100063414();
  return sub_100063124();
}

uint64_t sub_10000ECF4()
{
  v0 = sub_100063404();
  sub_100009DBC(v0, qword_1000902E0);
  sub_1000049B4(v0, qword_1000902E0);
  return sub_1000633E4();
}

uint64_t sub_10000ED58()
{
  v0 = sub_1000021D4(&qword_100084E10, &unk_100065A30);
  sub_100009DBC(v0, qword_1000902F8);
  v1 = sub_1000049B4(v0, qword_1000902F8);
  sub_100063064();
  v2 = sub_100063074();
  v3 = *(*(v2 - 8) + 56);

  return v3(v1, 0, 1, v2);
}

uint64_t sub_10000EE18()
{
  result = swift_getKeyPath();
  qword_100090310 = result;
  return result;
}

uint64_t sub_10000EE40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[8] = a4;
  v5[9] = a5;
  v5[7] = a1;
  sub_1000021D4(&qword_100084DE0, &qword_1000659E0);
  v5[10] = swift_task_alloc();
  sub_1000021D4(&qword_100084DE8, &qword_1000659E8);
  v5[11] = swift_task_alloc();
  sub_1000021D4(&qword_1000851B0, &qword_100066840);
  v5[12] = swift_task_alloc();
  v7 = sub_100062E34();
  v5[13] = v7;
  v5[14] = *(v7 - 8);
  v5[15] = swift_task_alloc();
  v8 = sub_1000021D4(&qword_1000851B8, &qword_100066848);
  v5[16] = v8;
  v5[17] = *(v8 - 8);
  v5[18] = swift_task_alloc();
  v5[19] = swift_task_alloc();
  if (a2)
  {
    swift_getObjectType();
    v9 = sub_100064334();
    v11 = v10;
  }

  else
  {
    v9 = 0;
    v11 = 0;
  }

  v5[20] = v9;
  v5[21] = v11;

  return _swift_task_switch(sub_10000F058, v9);
}

uint64_t sub_10000F058()
{
  sub_100062E84();
  v1 = swift_task_alloc();
  *(v0 + 176) = v1;
  v2 = sub_1000103DC();
  *v1 = v0;
  v1[1] = sub_10000F128;
  v3 = *(v0 + 152);

  return IntentDialog._CapturedContent.init<>(entity:_:)(v3, v0 + 16, sub_100012214, 0, &type metadata for AddCurrentLocationEntity, v2);
}

uint64_t sub_10000F128()
{
  v1 = *v0;

  v2 = *(v1 + 160);

  return _swift_task_switch(sub_10000F248, v2);
}

uint64_t sub_10000F248()
{
  sub_100062E84();
  v1 = *(v0 + 24);
  *(v0 + 32) = v1;
  *(v0 + 184) = v1;
  sub_100062E84();
  *(v0 + 217) = *(v0 + 216);
  if (qword_100084480 != -1)
  {
    swift_once();
  }

  v2 = qword_100090310;
  *(v0 + 192) = qword_100090310;

  v3 = swift_task_alloc();
  *(v0 + 200) = v3;
  v4 = sub_100009F14(&qword_1000851A0, &qword_1000851A8, &qword_100066830, &protocol conformance descriptor for _EntityDeferredPropertyValue<A, B>);
  *v3 = v0;
  v3[1] = sub_10000F3A8;

  return AppEntity._setValue<A, B, C>(_:for:)(v0 + 217, v2, &type metadata for Bool, v4);
}

uint64_t sub_10000F3A8()
{
  v2 = *v1;
  *(*v1 + 208) = v0;

  v3 = *(v2 + 160);
  if (v0)
  {
    v4 = sub_100006034;
  }

  else
  {
    v4 = sub_10000F4FC;
  }

  return _swift_task_switch(v4, v3);
}

uint64_t sub_10000F4FC()
{
  v1 = v0[19];
  v3 = v0[16];
  v2 = v0[17];
  v10 = v0[18];
  v11 = v0[15];
  v12 = v0[14];
  v13 = v0[13];
  v4 = v0[10];
  v5 = v0[11];
  sub_100062E84();
  v0[6] = v0[5];
  v6 = sub_100063224();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  v7 = sub_100063254();
  (*(*(v7 - 8) + 56))(v4, 1, 1, v7);
  sub_10000E380();
  sub_1000105F0();
  sub_100062E04();
  (*(v2 + 16))(v10, v1, v3);
  sub_100062E24();
  sub_100062E44();
  (*(v12 + 8))(v11, v13);

  (*(v2 + 8))(v1, v3);

  v8 = v0[1];

  return v8();
}

uint64_t sub_10000F768()
{
  v0 = sub_1000021D4(&qword_1000851C0, &qword_100066850);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v5 - v2;
  if (qword_100084480 != -1)
  {
    swift_once();
  }

  sub_1000630E4();

  sub_1000105F0();
  sub_100009F14(&qword_1000851C8, &qword_1000851C0, &qword_100066850, &protocol conformance descriptor for _NLGRepresentationEntity<A>);
  sub_1000630D4();
  return (*(v1 + 8))(v3, v0);
}

uint64_t (*sub_10000F8DC(uint64_t *a1))()
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
  *(v2 + 32) = sub_100062E74();
  return sub_100006368;
}

uint64_t (*sub_10000F950(uint64_t *a1))()
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
  *(v2 + 32) = sub_100062E74();
  return sub_10000A08C;
}

uint64_t sub_10000F9C4()
{
  if (qword_100084480 != -1)
  {
    swift_once();
  }
}

unint64_t sub_10000FA24()
{
  result = qword_100085090;
  if (!qword_100085090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100085090);
  }

  return result;
}

unint64_t sub_10000FA7C()
{
  result = qword_100085098;
  if (!qword_100085098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100085098);
  }

  return result;
}

uint64_t sub_10000FB54@<X0>(uint64_t a1@<X8>)
{
  if (qword_100084478 != -1)
  {
    swift_once();
  }

  v2 = sub_1000021D4(&qword_100084E10, &unk_100065A30);
  v3 = sub_1000049B4(v2, qword_1000902F8);

  return sub_100009E78(v3, a1);
}

uint64_t sub_10000FBD8(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = *v1;
  return _swift_task_switch(sub_10000FC00, 0);
}

uint64_t sub_10000FC00()
{
  v1 = swift_task_alloc();
  v0[5] = v1;
  *v1 = v0;
  v1[1] = sub_100006768;
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[2];

  return sub_10000EE40(v4, 0, 0, v2, v3);
}

uint64_t sub_10000FCA0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100011534();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_10000FCE8()
{
  result = qword_1000850A0;
  if (!qword_1000850A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000850A0);
  }

  return result;
}

unint64_t sub_10000FD40()
{
  result = qword_1000850A8;
  if (!qword_1000850A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000850A8);
  }

  return result;
}

uint64_t sub_10000FD94(uint64_t a1)
{
  v1[2] = a1;
  v2 = sub_100063684();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();

  return _swift_task_switch(sub_10000FE54, 0);
}

uint64_t sub_10000FE54()
{
  v2 = v0[4];
  v1 = v0[5];
  v4 = v0[2];
  v3 = v0[3];
  sub_100009E20();
  v5 = sub_100064394();
  (*(v2 + 104))(v1, enum case for SettingsKey.addCurrentLocation(_:), v3);
  sub_100063674();
  (*(v2 + 8))(v1, v3);
  v6 = sub_1000642A4();

  LOBYTE(v3) = [v5 BOOLForKey:v6];

  *v4 = v3;

  v7 = v0[1];

  return v7();
}

uint64_t sub_10000FF78(uint64_t a1, _BYTE *a2)
{
  v4 = sub_100063684();
  *(v2 + 16) = v4;
  *(v2 + 24) = *(v4 - 8);
  *(v2 + 32) = swift_task_alloc();
  *(v2 + 40) = *a2;

  return _swift_task_switch(sub_100010040, 0);
}

uint64_t sub_100010040()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = v0[2];
  sub_100009E20();
  v4 = sub_100064394();
  isa = sub_100064324().super.super.isa;
  (*(v2 + 104))(v1, enum case for SettingsKey.addCurrentLocation(_:), v3);
  sub_100063674();
  (*(v2 + 8))(v1, v3);
  v6 = sub_1000642A4();

  [v4 setValue:isa forKey:v6];

  v7 = v0[1];

  return v7();
}

uint64_t sub_100010174(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_10000A088;

  return sub_100011998(0, 0);
}

unint64_t sub_100010224()
{
  result = qword_1000850B0;
  if (!qword_1000850B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000850B0);
  }

  return result;
}

uint64_t sub_100010278(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  v5 = sub_10001088C();
  *v4 = v2;
  v4[1] = sub_100006EE4;

  return _UniqueEntityQuery.allEntities()(a2, v5);
}

unint64_t sub_10001032C()
{
  result = qword_1000850B8;
  if (!qword_1000850B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000850B8);
  }

  return result;
}

unint64_t sub_100010384()
{
  result = qword_1000850C0;
  if (!qword_1000850C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000850C0);
  }

  return result;
}

unint64_t sub_1000103DC()
{
  result = qword_1000850C8;
  if (!qword_1000850C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000850C8);
  }

  return result;
}

uint64_t sub_100010430(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_10001088C();
  *v5 = v2;
  v5[1] = sub_10000A0B4;

  return _UniqueEntityQuery.entities(for:)(a1, a2, v6);
}

uint64_t sub_1000104E4(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  v5 = sub_10001088C();
  *v4 = v2;
  v4[1] = sub_10000A088;

  return _UniqueEntityQuery.suggestedEntities()(a2, v5);
}

unint64_t sub_100010598()
{
  result = qword_1000850D0;
  if (!qword_1000850D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000850D0);
  }

  return result;
}

unint64_t sub_1000105F0()
{
  result = qword_1000850D8;
  if (!qword_1000850D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000850D8);
  }

  return result;
}

unint64_t sub_100010648()
{
  result = qword_1000850E0;
  if (!qword_1000850E0)
  {
    sub_10000221C(&qword_1000850E8, qword_1000661D0);
    sub_1000105F0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000850E0);
  }

  return result;
}

uint64_t sub_1000106CC(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_100010224();
  *v5 = v2;
  v5[1] = sub_100002CE4;

  return EntityQuery.results()(a1, a2, v6);
}

unint64_t sub_100010784()
{
  result = qword_1000850F0;
  if (!qword_1000850F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000850F0);
  }

  return result;
}

unint64_t sub_1000107DC()
{
  result = qword_1000850F8;
  if (!qword_1000850F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000850F8);
  }

  return result;
}

unint64_t sub_100010834()
{
  result = qword_100085100;
  if (!qword_100085100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100085100);
  }

  return result;
}

unint64_t sub_10001088C()
{
  result = qword_100085108;
  if (!qword_100085108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100085108);
  }

  return result;
}

unint64_t sub_1000108E4()
{
  result = qword_100085110;
  if (!qword_100085110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100085110);
  }

  return result;
}

uint64_t sub_100010938(uint64_t a1)
{
  v2 = sub_1000103DC();

  return EntityURLRepresentation.init(_:)(0xD000000000000052, 0x800000010006C4D0, a1, v2);
}

unint64_t sub_1000109A0()
{
  result = qword_100085118;
  if (!qword_100085118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100085118);
  }

  return result;
}

unint64_t sub_1000109F8()
{
  result = qword_100085120;
  if (!qword_100085120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100085120);
  }

  return result;
}

unint64_t sub_100010A50()
{
  result = qword_100085128;
  if (!qword_100085128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100085128);
  }

  return result;
}

uint64_t sub_100010AA4@<X0>(uint64_t *a2@<X8>)
{
  sub_10000FD40();
  result = sub_100062E64();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_100010AE4(uint64_t a1)
{
  sub_1000121B4();
  v2 = sub_100063194();
  v3 = *(v1 + 8);

  return v3(v2);
}

uint64_t sub_100010BCC(uint64_t a1)
{
  v2 = sub_1000103DC();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_100010C1C()
{
  result = qword_100085140;
  if (!qword_100085140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100085140);
  }

  return result;
}

uint64_t sub_100010C74(uint64_t a1)
{
  v2 = sub_100010A50();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_100010CC4()
{
  result = qword_100085148;
  if (!qword_100085148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100085148);
  }

  return result;
}

uint64_t sub_100010D18()
{
  v0 = sub_100063404();
  sub_100009DBC(v0, qword_100090318);
  sub_1000049B4(v0, qword_100090318);
  return sub_1000633E4();
}

uint64_t sub_100010D7C@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1000021D4(&qword_100084D88, &qword_100065990);
  __chkstk_darwin(v2 - 8);
  v4 = &v15[-v3];
  v5 = sub_1000633F4();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v15[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = sub_1000635E4();
  __chkstk_darwin(v9 - 8);
  v10 = sub_100064294();
  __chkstk_darwin(v10 - 8);
  v11 = sub_100063404();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  sub_100064284();
  sub_1000635D4();
  (*(v6 + 104))(v8, enum case for LocalizedStringResource.BundleDescription.main(_:), v5);
  sub_100063414();
  (*(v12 + 56))(v4, 1, 1, v11);
  sub_100063084();
  v13 = sub_100063074();
  return (*(*(v13 - 8) + 56))(a1, 0, 1, v13);
}

uint64_t (*sub_100011078(uint64_t *a1))()
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
  *(v2 + 32) = sub_100062E74();
  return sub_10000A08C;
}

unint64_t sub_1000110F0()
{
  result = qword_100085150;
  if (!qword_100085150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100085150);
  }

  return result;
}

uint64_t sub_100011144(uint64_t a1, uint64_t a2)
{
  v4 = sub_10001210C();
  v5 = sub_1000121B4();

  return static URLRepresentableIntent<>.urlRepresentation.getter(a1, v4, a2, v5);
}

uint64_t sub_1000111AC()
{
  v0 = qword_100085068;

  return v0;
}

unint64_t sub_1000111E8()
{
  result = qword_100085158;
  if (!qword_100085158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100085158);
  }

  return result;
}

unint64_t sub_100011240()
{
  result = qword_100085160;
  if (!qword_100085160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100085160);
  }

  return result;
}

uint64_t sub_10001133C(uint64_t a1, uint64_t a2)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  v5 = sub_10001210C();
  v6 = sub_100012160();
  v7 = sub_1000121B4();
  *v4 = v2;
  v4[1] = sub_10000858C;

  return URLRepresentableIntent<>.perform()(a2, v5, v6, v7);
}

uint64_t sub_100011408@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100011CB0();
  *a1 = result;
  return result;
}

uint64_t sub_100011430(uint64_t a1)
{
  v2 = sub_1000110F0();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

uint64_t sub_100011534()
{
  v0 = sub_1000021D4(&qword_100084D78, &unk_100065980);
  __chkstk_darwin(v0 - 8);
  v30 = &v22 - v1;
  v31 = sub_1000631F4();
  v2 = *(v31 - 8);
  __chkstk_darwin(v31);
  v4 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1000021D4(&qword_100084D80, &unk_100065EE0);
  v6 = __chkstk_darwin(v5 - 8);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v22 - v9;
  v11 = sub_1000021D4(&qword_100084D88, &qword_100065990);
  __chkstk_darwin(v11 - 8);
  v13 = &v22 - v12;
  v14 = sub_100063404();
  v29 = v14;
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v23 = sub_1000021D4(&qword_100085180, &unk_100066808);
  sub_1000633E4();
  v16 = *(v15 + 56);
  v27 = v15 + 56;
  v28 = v16;
  v16(v13, 1, 1, v14);
  v33 = 0;
  v17 = sub_100062E34();
  v18 = *(*(v17 - 8) + 56);
  v18(v10, 1, 1, v17);
  v18(v8, 1, 1, v17);
  v26 = enum case for InputConnectionBehavior.default(_:);
  v19 = *(v2 + 104);
  v24 = v2 + 104;
  v25 = v19;
  v19(v4);
  sub_1000103DC();
  v23 = sub_100062EB4();
  sub_1000021D4(&qword_100084D98, &unk_1000659A0);
  sub_1000633E4();
  v28(v13, 1, 1, v29);
  v32 = 2;
  v20 = sub_100064314();
  (*(*(v20 - 8) + 56))(v30, 1, 1, v20);
  v18(v10, 1, 1, v17);
  v25(v4, v26, v31);
  sub_100062EC4();
  return v23;
}

uint64_t sub_100011998(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000633F4();
  v2[2] = v4;
  v2[3] = *(v4 - 8);
  v2[4] = swift_task_alloc();
  sub_1000635E4();
  v2[5] = swift_task_alloc();
  sub_100064294();
  v2[6] = swift_task_alloc();
  sub_100063404();
  v2[7] = swift_task_alloc();
  if (a1)
  {
    swift_getObjectType();
    v5 = sub_100064334();
  }

  else
  {
    v5 = 0;
  }

  return _swift_task_switch(sub_100011B04, v5);
}

uint64_t sub_100011B04()
{
  v1 = v0[4];
  v2 = v0[2];
  v3 = v0[3];
  sub_1000021D4(&qword_100085088, qword_100065F30);
  sub_100064284();
  sub_1000635D4();
  (*(v3 + 104))(v1, enum case for LocalizedStringResource.BundleDescription.main(_:), v2);
  sub_100063414();
  sub_100009F14(&qword_1000851A0, &qword_1000851A8, &qword_100066830, &protocol conformance descriptor for _EntityDeferredPropertyValue<A, B>);
  v4 = sub_100063284();

  v5 = v0[1];

  return v5(v4);
}

uint64_t sub_100011CB0()
{
  v0 = sub_1000631F4();
  v24 = *(v0 - 8);
  v25 = v0;
  __chkstk_darwin(v0);
  v23 = v21 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_1000021D4(&qword_100084D80, &unk_100065EE0);
  v3 = __chkstk_darwin(v2 - 8);
  v22 = v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v6 = v21 - v5;
  v7 = sub_1000021D4(&qword_100084D88, &qword_100065990);
  __chkstk_darwin(v7 - 8);
  v9 = v21 - v8;
  v10 = sub_1000633F4();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1000635E4();
  __chkstk_darwin(v14 - 8);
  v15 = sub_100064294();
  __chkstk_darwin(v15 - 8);
  v16 = sub_100063404();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v21[1] = sub_1000021D4(&qword_100085180, &unk_100066808);
  sub_100064284();
  sub_1000635D4();
  (*(v11 + 104))(v13, enum case for LocalizedStringResource.BundleDescription.main(_:), v10);
  sub_100063414();
  (*(v17 + 56))(v9, 1, 1, v16);
  v26 = 0;
  v18 = sub_100062E34();
  v19 = *(*(v18 - 8) + 56);
  v19(v6, 1, 1, v18);
  v19(v22, 1, 1, v18);
  (*(v24 + 104))(v23, enum case for InputConnectionBehavior.default(_:), v25);
  sub_1000103DC();
  return sub_100062EB4();
}

unint64_t sub_10001210C()
{
  result = qword_100085188;
  if (!qword_100085188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100085188);
  }

  return result;
}

unint64_t sub_100012160()
{
  result = qword_100085190;
  if (!qword_100085190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100085190);
  }

  return result;
}

unint64_t sub_1000121B4()
{
  result = qword_100085198;
  if (!qword_100085198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100085198);
  }

  return result;
}

uint64_t sub_100012248(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_1000021D4(&qword_1000851D0, &qword_100066890);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_8:

    return v9(v10, a2, v8);
  }

  v11 = sub_1000021D4(&qword_1000851D8, &qword_100066898);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_7:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_8;
  }

  v14 = sub_1000021D4(&qword_1000851E0, &unk_1000668A0);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_7;
  }

  started = type metadata accessor for StartWritingWidgetTimelineEntry(0);
  v17 = *(*(started - 8) + 48);
  v18 = a1 + a3[7];

  return v17(v18, a2, started);
}

uint64_t sub_100012408(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_1000021D4(&qword_1000851D0, &qword_100066890);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_8:

    return v11(v12, a2, a2, v10);
  }

  v13 = sub_1000021D4(&qword_1000851D8, &qword_100066898);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[5];
LABEL_7:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_8;
  }

  v16 = sub_1000021D4(&qword_1000851E0, &unk_1000668A0);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[6];
    goto LABEL_7;
  }

  started = type metadata accessor for StartWritingWidgetTimelineEntry(0);
  v19 = *(*(started - 8) + 56);
  v20 = a1 + a4[7];

  return v19(v20, a2, a2, started);
}

uint64_t type metadata accessor for StartWritingWidgetSystemMediumView(uint64_t a1)
{
  result = qword_100085240;
  if (!qword_100085240)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10001260C(uint64_t a1)
{
  sub_100012714(319, &qword_100085250, &type metadata accessor for RedactionReasons);
  if (v1 <= 0x3F)
  {
    sub_100012714(319, &qword_100085258, &type metadata accessor for WidgetRenderingMode);
    if (v2 <= 0x3F)
    {
      sub_100012714(319, &unk_100085260, &type metadata accessor for ContentSizeCategory);
      if (v3 <= 0x3F)
      {
        type metadata accessor for StartWritingWidgetTimelineEntry(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_100012714(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_100063784();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_100012784@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v51 = a2;
  v3 = sub_1000021D4(&qword_1000852C8, &qword_100066978);
  __chkstk_darwin(v3 - 8);
  v5 = &v47 - v4;
  v48 = sub_1000021D4(&qword_1000852D0, &qword_100066980);
  v6 = __chkstk_darwin(v48);
  v47 = &v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v6);
  v10 = &v47 - v9;
  __chkstk_darwin(v8);
  v12 = &v47 - v11;
  v13 = sub_1000021D4(&qword_1000852D8, &qword_100066988);
  v14 = __chkstk_darwin(v13 - 8);
  v16 = &v47 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v18 = &v47 - v17;
  v19 = sub_1000021D4(&qword_1000852E0, &qword_100066990);
  v20 = __chkstk_darwin(v19 - 8);
  v50 = &v47 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v23 = &v47 - v22;
  sub_100012C70(&v47 - v22);
  v49 = v18;
  sub_100013960(v18);
  *v5 = sub_100063A24();
  *(v5 + 1) = 0x4020000000000000;
  v5[16] = 0;
  v24 = sub_1000021D4(&qword_1000852E8, &qword_100066998);
  sub_10001534C(a1, &v5[*(v24 + 44)]);
  sub_1000021D4(&qword_1000852F0, &qword_1000669A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100065BA0;
  v26 = sub_100063CA4();
  *(inited + 32) = v26;
  v27 = sub_100063CD4();
  *(inited + 33) = v27;
  v28 = sub_100063CF4();
  sub_100063CF4();
  if (sub_100063CF4() != v26)
  {
    v28 = sub_100063CF4();
  }

  sub_100063CF4();
  if (sub_100063CF4() != v27)
  {
    v28 = sub_100063CF4();
  }

  sub_100063714();
  v30 = v29;
  v32 = v31;
  v34 = v33;
  v36 = v35;
  sub_100015F0C(v5, v10, &qword_1000852C8, &qword_100066978);
  v37 = &v10[*(v48 + 36)];
  *v37 = v28;
  *(v37 + 1) = v30;
  *(v37 + 2) = v32;
  *(v37 + 3) = v34;
  *(v37 + 4) = v36;
  v37[40] = 0;
  sub_100015F0C(v10, v12, &qword_1000852D0, &qword_100066980);
  v38 = v23;
  v39 = v50;
  sub_100016718(v23, v50, &qword_1000852E0, &qword_100066990);
  v40 = v49;
  v41 = v16;
  sub_100016718(v49, v16, &qword_1000852D8, &qword_100066988);
  v42 = v47;
  sub_100016718(v12, v47, &qword_1000852D0, &qword_100066980);
  v43 = v51;
  sub_100016718(v39, v51, &qword_1000852E0, &qword_100066990);
  v44 = v43;
  v45 = sub_1000021D4(&qword_1000852F8, &unk_1000669A8);
  sub_100016718(v41, v44 + *(v45 + 48), &qword_1000852D8, &qword_100066988);
  sub_100016718(v42, v44 + *(v45 + 64), &qword_1000852D0, &qword_100066980);
  sub_10000494C(v12, &qword_1000852D0, &qword_100066980);
  sub_10000494C(v40, &qword_1000852D8, &qword_100066988);
  sub_10000494C(v38, &qword_1000852E0, &qword_100066990);
  sub_10000494C(v42, &qword_1000852D0, &qword_100066980);
  sub_10000494C(v41, &qword_1000852D8, &qword_100066988);
  return sub_10000494C(v39, &qword_1000852E0, &qword_100066990);
}

uint64_t sub_100012C70@<X0>(uint64_t a1@<X8>)
{
  v118 = a1;
  v116 = sub_1000021D4(&qword_100085430, &qword_100066C20);
  __chkstk_darwin(v116);
  v117 = (&v91 - v2);
  v3 = sub_1000634D4();
  v113 = *(v3 - 8);
  v114 = v3;
  __chkstk_darwin(v3);
  v112 = &v91 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v111 = sub_1000634F4();
  v110 = *(v111 - 8);
  __chkstk_darwin(v111);
  v109 = &v91 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v108 = sub_100063514();
  v107 = *(v108 - 8);
  __chkstk_darwin(v108);
  v106 = &v91 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100063664();
  __chkstk_darwin(v7 - 8);
  v105 = &v91 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100063644();
  __chkstk_darwin(v9 - 8);
  v103 = &v91 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1000635E4();
  __chkstk_darwin(v11 - 8);
  v102 = &v91 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_100063434();
  __chkstk_darwin(v13 - 8);
  v99 = &v91 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1000021D4(&qword_100085438, &qword_100066C28);
  __chkstk_darwin(v15 - 8);
  v96 = &v91 - v16;
  v17 = sub_1000021D4(&qword_100085440, &unk_100066C30);
  __chkstk_darwin(v17 - 8);
  v93 = &v91 - v18;
  v104 = sub_100063534();
  v100 = *(v104 - 8);
  v19 = __chkstk_darwin(v104);
  v94 = &v91 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __chkstk_darwin(v19);
  v95 = &v91 - v22;
  v23 = __chkstk_darwin(v21);
  v97 = &v91 - v24;
  __chkstk_darwin(v23);
  v101 = &v91 - v25;
  v92 = sub_100063574();
  v26 = *(v92 - 8);
  __chkstk_darwin(v92);
  v98 = &v91 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v115 = sub_1000021D4(&qword_100085448, &qword_10006A0D0);
  __chkstk_darwin(v115);
  v29 = (&v91 - v28);
  v30 = sub_100063A64();
  v31 = *(v30 - 8);
  v32 = __chkstk_darwin(v30);
  v34 = &v91 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v32);
  v36 = &v91 - v35;
  started = type metadata accessor for StartWritingWidgetSystemMediumView(0);
  v38 = v1;
  sub_100030790(v36);
  (*(v31 + 104))(v34, enum case for ContentSizeCategory.accessibilityMedium(_:), v30);
  v39 = sub_100015FC8(v36, v34);
  v40 = *(v31 + 8);
  v40(v34, v30);
  v40(v36, v30);
  if (v39)
  {
    sub_100064084();
    sub_1000637E4();
    v41 = v122;
    v42 = v123;
    v43 = v124;
    v44 = v125;
    v121 = 1;
    v120 = v123;
    v119 = v125;
    v45 = v117;
    *v117 = 0;
    *(v45 + 8) = 1;
    v45[2] = v41;
    *(v45 + 24) = v42;
    v45[4] = v43;
    *(v45 + 40) = v44;
    *(v45 + 3) = v126;
    swift_storeEnumTagMultiPayload();
    sub_1000021D4(&qword_100085470, &unk_100066C50);
    sub_100016804(&qword_100085478, &qword_100085448, &qword_10006A0D0, sub_1000167D4);
    sub_10001698C();
    return sub_100063B44();
  }

  else
  {
    (*(v26 + 16))(v98, v38 + *(started + 28), v92);
    v47 = sub_100063484();
    (*(*(v47 - 8) + 56))(v93, 1, 1, v47);
    v48 = sub_100063474();
    (*(*(v48 - 8) + 56))(v96, 1, 1, v48);
    sub_100063424();
    sub_1000635C4();
    sub_100063604();
    sub_100063654();
    v49 = v94;
    sub_1000634A4();
    v50 = v106;
    sub_100063504();
    v51 = v95;
    sub_100063524();
    (*(v107 + 8))(v50, v108);
    v52 = *(v100 + 8);
    v53 = v104;
    v52(v49, v104);
    v54 = v109;
    sub_1000634E4();
    v55 = v97;
    sub_1000634B4();
    (*(v110 + 8))(v54, v111);
    v52(v51, v53);
    v56 = v112;
    sub_1000634C4();
    sub_100063494();
    (*(v113 + 8))(v56, v114);
    v52(v55, v53);
    sub_100016944(&qword_100085450, &type metadata accessor for Date.FormatStyle, &protocol conformance descriptor for Date.FormatStyle);
    sub_100016944(&qword_100085458, &type metadata accessor for Date, &protocol conformance descriptor for Date);
    v57 = sub_100063DF4();
    v59 = v58;
    v61 = v60;
    v63 = v62 & 1;
    *v29 = swift_getKeyPath();
    sub_1000021D4(&qword_100084C00, &qword_100066BB0);
    swift_storeEnumTagMultiPayload();
    v64 = type metadata accessor for WidgetHeaderView(0);
    v65 = v64[5];
    *(v29 + v65) = swift_getKeyPath();
    sub_1000021D4(&qword_100085318, &qword_100066A08);
    swift_storeEnumTagMultiPayload();
    v66 = v64[6];
    *(v29 + v66) = swift_getKeyPath();
    sub_1000021D4(&qword_1000853F0, &qword_100067EB0);
    swift_storeEnumTagMultiPayload();
    v67 = (v29 + v64[7]);
    *v67 = v57;
    v67[1] = v59;
    v67[2] = v63;
    v67[3] = v61;
    LOBYTE(v57) = sub_100063CE4();
    sub_100063714();
    v69 = v68;
    v71 = v70;
    v73 = v72;
    v75 = v74;
    v76 = v29 + *(sub_1000021D4(&qword_100085460, &unk_100066C40) + 36);
    *v76 = v57;
    *(v76 + 1) = v69;
    *(v76 + 2) = v71;
    *(v76 + 3) = v73;
    *(v76 + 4) = v75;
    v76[40] = 0;
    LOBYTE(v57) = sub_100063CC4();
    sub_100063714();
    v78 = v77;
    v80 = v79;
    v82 = v81;
    v84 = v83;
    v85 = v29 + *(sub_1000021D4(&qword_100085468, &unk_10006A2E0) + 36);
    *v85 = v57;
    *(v85 + 1) = v78;
    *(v85 + 2) = v80;
    *(v85 + 3) = v82;
    *(v85 + 4) = v84;
    v85[40] = 0;
    LOBYTE(v57) = sub_100063D04();
    sub_100063714();
    v86 = v29 + *(v115 + 36);
    *v86 = v57;
    *(v86 + 1) = v87;
    *(v86 + 2) = v88;
    *(v86 + 3) = v89;
    *(v86 + 4) = v90;
    v86[40] = 0;
    sub_100016718(v29, v117, &qword_100085448, &qword_10006A0D0);
    swift_storeEnumTagMultiPayload();
    sub_1000021D4(&qword_100085470, &unk_100066C50);
    sub_100016804(&qword_100085478, &qword_100085448, &qword_10006A0D0, sub_1000167D4);
    sub_10001698C();
    sub_100063B44();
    return sub_10000494C(v29, &qword_100085448, &qword_10006A0D0);
  }
}

uint64_t sub_100013960@<X0>(uint64_t a1@<X8>)
{
  v48 = a1;
  v47 = sub_100063A64();
  v2 = *(v47 - 8);
  v3 = __chkstk_darwin(v47);
  v45 = &v45 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v6 = &v45 - v5;
  v46 = sub_1000021D4(&qword_100085338, &qword_100066A18);
  __chkstk_darwin(v46);
  v8 = &v45 - v7;
  v9 = sub_100063864();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v13 = &v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v45 - v14;
  v16 = v1;
  sub_1000307B8(&v45 - v14);
  sub_100063844();
  sub_100016944(&qword_100085340, &type metadata accessor for RedactionReasons, &protocol conformance descriptor for RedactionReasons);
  v17 = sub_1000643C4();
  v18 = *(v10 + 8);
  v18(v13, v9);
  v18(v15, v9);
  if (v17)
  {
    v19 = 0x800000010006C620;
    v20 = 0xD00000000000007CLL;
  }

  else
  {
    v21 = v16 + *(type metadata accessor for StartWritingWidgetSystemMediumView(0) + 28);
    v22 = v21 + *(type metadata accessor for StartWritingWidgetTimelineEntry(0) + 20);
    v20 = *(v22 + 16);
    v19 = *(v22 + 24);
  }

  *v8 = sub_100063A14();
  *(v8 + 1) = 0x4020000000000000;
  v8[16] = 0;
  v23 = sub_1000021D4(&qword_100085348, &qword_100066A20);
  sub_100013E08(v16, v20, v19, &v8[*(v23 + 44)]);

  v24 = sub_100063CE4();
  sub_100063714();
  v25 = &v8[*(v46 + 36)];
  *v25 = v24;
  *(v25 + 1) = v26;
  *(v25 + 2) = v27;
  *(v25 + 3) = v28;
  *(v25 + 4) = v29;
  v25[40] = 0;
  v30 = sub_100063D04();
  type metadata accessor for StartWritingWidgetSystemMediumView(0);
  sub_100030790(v6);
  v31 = v45;
  v32 = v47;
  (*(v2 + 104))(v45, enum case for ContentSizeCategory.accessibilityMedium(_:), v47);
  sub_100015FC8(v6, v31);
  v33 = *(v2 + 8);
  v33(v31, v32);
  v33(v6, v32);
  sub_100063714();
  v35 = v34;
  v37 = v36;
  v39 = v38;
  v41 = v40;
  v42 = v48;
  sub_100015F0C(v8, v48, &qword_100085338, &qword_100066A18);
  result = sub_1000021D4(&qword_1000852D8, &qword_100066988);
  v44 = v42 + *(result + 36);
  *v44 = v30;
  *(v44 + 8) = v35;
  *(v44 + 16) = v37;
  *(v44 + 24) = v39;
  *(v44 + 32) = v41;
  *(v44 + 40) = 0;
  return result;
}

uint64_t sub_100013D84@<X0>(uint64_t a1@<X8>)
{
  if (qword_1000849C0 != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  *a1 = xmmword_100090DA8;
  *(a1 + 8) = *(&xmmword_100090DA8 + 8);
  *(a1 + 24) = unk_100090DC0;
}

uint64_t sub_100013E08@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v84 = a2;
  v78[1] = a1;
  v97 = a4;
  v94 = type metadata accessor for WidgetHeaderView(0);
  v96 = *(v94 - 8);
  __chkstk_darwin(v94);
  v78[0] = v78 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100063A64();
  v92 = *(v7 - 8);
  v93 = v7;
  v8 = __chkstk_darwin(v7);
  v90 = v78 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v89 = v78 - v10;
  v11 = sub_1000021D4(&qword_100085350, &qword_100066A28);
  v12 = __chkstk_darwin(v11 - 8);
  v95 = v78 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v82 = v78 - v14;
  v15 = sub_100063864();
  v16 = *(v15 - 8);
  v87 = v15;
  v88 = v16;
  v17 = __chkstk_darwin(v15);
  v86 = v78 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v85 = v78 - v19;
  v20 = sub_100063D94();
  v21 = *(v20 - 8);
  __chkstk_darwin(v20);
  v23 = v78 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_1000021D4(&qword_100085358, &qword_100066A30);
  __chkstk_darwin(v24);
  v26 = (v78 - v25);
  v80 = sub_1000021D4(&qword_100085360, &qword_100066A38);
  __chkstk_darwin(v80);
  v28 = v78 - v27;
  v29 = sub_1000021D4(&qword_100085368, &qword_100066A40);
  v30 = v29 - 8;
  __chkstk_darwin(v29);
  v79 = v78 - v31;
  v83 = sub_1000021D4(&qword_100085370, &qword_100066A48) - 8;
  v32 = __chkstk_darwin(v83);
  v91 = v78 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = __chkstk_darwin(v32);
  v36 = v78 - v35;
  __chkstk_darwin(v34);
  v81 = v78 - v37;
  *v26 = sub_100064084();
  v26[1] = v38;
  v39 = sub_1000021D4(&qword_100085378, &qword_100066A50);
  sub_1000147BC(a1, v84, a3, v26 + *(v39 + 44));
  sub_100063D24();
  (*(v21 + 104))(v23, enum case for Font.Leading.tight(_:), v20);
  v40 = sub_100063DA4();

  (*(v21 + 8))(v23, v20);
  KeyPath = swift_getKeyPath();
  v42 = (v26 + *(v24 + 36));
  *v42 = KeyPath;
  v42[1] = v40;
  sub_100063D64();
  sub_1000163E8();
  v43 = v82;
  sub_100063E84();
  sub_10000494C(v26, &qword_100085358, &qword_100066A30);
  v44 = swift_getKeyPath();
  v45 = &v28[*(sub_1000021D4(&qword_1000853A8, &qword_100066AC8) + 36)];
  *v45 = v44;
  v45[1] = 0x3FB999999999999ALL;
  v46 = swift_getKeyPath();
  v47 = &v28[*(v80 + 36)];
  *v47 = v46;
  v47[8] = 0;
  sub_1000164DC();
  v48 = v79;
  sub_100063EF4();
  sub_10000494C(v28, &qword_100085360, &qword_100066A38);
  v49 = (v48 + *(v30 + 44));
  sub_1000021D4(&qword_1000853E0, &qword_100066B10);
  sub_1000638A4();
  *v49 = swift_getKeyPath();
  v50 = v85;
  sub_1000307B8(v85);
  v51 = v86;
  sub_100063844();
  sub_100016944(&qword_100085340, &type metadata accessor for RedactionReasons, &protocol conformance descriptor for RedactionReasons);
  v52 = v87;
  v53 = sub_1000643C4();
  v54 = *(v88 + 8);
  v54(v51, v52);
  v54(v50, v52);
  if (v53)
  {
    v55 = 2;
  }

  else
  {
    v55 = 0;
  }

  v56 = swift_getKeyPath();
  sub_100015F0C(v48, v36, &qword_100085368, &qword_100066A40);
  v57 = &v36[*(v83 + 44)];
  *v57 = v56;
  *(v57 + 1) = v55;
  v58 = 1;
  v57[16] = (v53 & 1) == 0;
  v59 = v36;
  v60 = v81;
  sub_100015F0C(v59, v81, &qword_100085370, &qword_100066A48);
  type metadata accessor for StartWritingWidgetSystemMediumView(0);
  v61 = v89;
  sub_100030790(v89);
  v63 = v92;
  v62 = v93;
  v64 = v90;
  (*(v92 + 104))(v90, enum case for ContentSizeCategory.accessibilityMedium(_:), v93);
  v65 = sub_100015FC8(v61, v64);
  v66 = *(v63 + 8);
  v66(v64, v62);
  v66(v61, v62);
  v67 = v94;
  if (v65)
  {
    v68 = swift_getKeyPath();
    v69 = v78[0];
    *v78[0] = v68;
    sub_1000021D4(&qword_100084C00, &qword_100066BB0);
    swift_storeEnumTagMultiPayload();
    v70 = v67[5];
    *(v69 + v70) = swift_getKeyPath();
    sub_1000021D4(&qword_100085318, &qword_100066A08);
    swift_storeEnumTagMultiPayload();
    v71 = v67[6];
    *(v69 + v71) = swift_getKeyPath();
    sub_1000021D4(&qword_1000853F0, &qword_100067EB0);
    swift_storeEnumTagMultiPayload();
    v72 = (v69 + v67[7]);
    *v72 = 0u;
    v72[1] = 0u;
    sub_1000166A4(v69, v43);
    v58 = 0;
  }

  (*(v96 + 56))(v43, v58, 1, v67);
  v73 = v91;
  sub_100016718(v60, v91, &qword_100085370, &qword_100066A48);
  v74 = v95;
  sub_100016718(v43, v95, &qword_100085350, &qword_100066A28);
  v75 = v97;
  sub_100016718(v73, v97, &qword_100085370, &qword_100066A48);
  v76 = sub_1000021D4(&qword_1000853E8, &qword_100066B78);
  sub_100016718(v74, v75 + *(v76 + 48), &qword_100085350, &qword_100066A28);
  sub_10000494C(v43, &qword_100085350, &qword_100066A28);
  sub_10000494C(v60, &qword_100085370, &qword_100066A48);
  sub_10000494C(v74, &qword_100085350, &qword_100066A28);
  return sub_10000494C(v73, &qword_100085370, &qword_100066A48);
}

uint64_t sub_1000147BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v125 = a4;
  v126 = a1;
  v7 = sub_100064134();
  v120 = *(v7 - 8);
  v121 = v7;
  v8 = __chkstk_darwin(v7);
  v119 = &v104 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v118 = &v104 - v10;
  v11 = sub_1000021D4(&qword_1000853F8, &unk_100066BF0);
  v12 = __chkstk_darwin(v11 - 8);
  v124 = &v104 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v132 = &v104 - v14;
  v129 = sub_100063A64();
  v135 = *(v129 - 8);
  v15 = __chkstk_darwin(v129);
  v128 = &v104 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v127 = &v104 - v17;
  v131 = sub_1000021D4(&qword_100085400, &qword_10006A260);
  v133 = *(v131 - 8);
  v18 = __chkstk_darwin(v131);
  v113 = &v104 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v114 = &v104 - v20;
  v21 = sub_1000021D4(&qword_100085408, &qword_100066C00);
  __chkstk_darwin(v21);
  v23 = (&v104 - v22);
  v130 = sub_1000021D4(&qword_100085410, &qword_100066C08);
  v122 = *(v130 - 8);
  v24 = __chkstk_darwin(v130);
  v123 = &v104 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __chkstk_darwin(v24);
  v112 = &v104 - v27;
  v28 = __chkstk_darwin(v26);
  v111 = &v104 - v29;
  v30 = __chkstk_darwin(v28);
  v116 = &v104 - v31;
  __chkstk_darwin(v30);
  v134 = &v104 - v32;
  started = type metadata accessor for StartWritingWidgetSystemMediumView(0);
  v34 = a1 + *(started + 28);
  v35 = type metadata accessor for StartWritingWidgetTimelineEntry(0);
  sub_100048A64(*(v34 + *(v35 + 20) + 11), v23);
  *&v110 = a2;
  *&v148 = a2;
  *(&v148 + 1) = a3;
  v36 = sub_100002264();
  *(&v110 + 1) = a3;

  v109 = v36;
  v37 = sub_100063E14();
  v39 = v38;
  v41 = v40;
  sub_100009F14(&qword_100085418, &qword_100085408, &qword_100066C00, &unk_1000670D0);
  v117 = v23;
  v42 = sub_100063DD4();
  v44 = v43;
  v46 = v45;
  v48 = v47;
  v49 = v41 & 1;
  v50 = v114;
  sub_100016708(v37, v39, v49);

  *&v148 = v42;
  *(&v148 + 1) = v44;
  LOBYTE(v149) = v46 & 1;
  *(&v149 + 1) = v48;
  sub_100063E24();
  sub_100016708(v42, v44, v46 & 1);

  sub_100063A84();
  v115 = started;
  v107 = *(started + 24);
  v51 = v127;
  sub_100030790(v127);
  v52 = v135;
  v53 = *(v135 + 104);
  v55 = v128;
  v54 = v129;
  v105 = enum case for ContentSizeCategory.accessibilityMedium(_:);
  v106 = v135 + 104;
  v104 = v53;
  v53(v128);
  v56 = v51;
  v57 = sub_100015FC8(v51, v55);
  v58 = *(v52 + 8);
  v58(v55, v54);
  v135 = v52 + 8;
  v108 = v58;
  v58(v56, v54);
  if (v57)
  {
    sub_100063A24();
  }

  else
  {
    sub_100063A14();
  }

  v59 = 1;
  sub_100063874();
  sub_10000494C(v117, &qword_100085408, &qword_100066C00);
  v60 = v133 + 32;
  v61 = v116;
  v117 = *(v133 + 32);
  (v117)(v116, v50, v131);
  v62 = v130;
  v63 = (v61 + *(v130 + 36));
  v64 = v144;
  v63[4] = v143;
  v63[5] = v64;
  v63[6] = v145;
  v65 = v140;
  *v63 = v139;
  v63[1] = v65;
  v66 = v142;
  v63[2] = v141;
  v63[3] = v66;
  sub_100015F0C(v61, v134, &qword_100085410, &qword_100066C08);
  v67 = v118;
  sub_1000309E0(v118);
  v68 = v119;
  sub_100064124();
  LOBYTE(v61) = sub_100064104();
  v69 = *(v120 + 8);
  v70 = v68;
  v71 = v121;
  v69(v70, v121);
  v69(v67, v71);
  if (v61)
  {
    v133 = v60;
    sub_1000021D4(&qword_100085428, &unk_100069B90);
    v72 = swift_allocObject();
    *(v72 + 16) = xmmword_100065BA0;
    *(v72 + 32) = sub_100063F74();
    sub_100063F74();
    v73 = sub_100063F84();

    *(v72 + 40) = v73;
    sub_1000640C4();
    sub_1000640D4();
    sub_100064054();
    sub_100063804();
    v136 = v146[0];
    v137 = v146[1];
    v138 = v147;
    v148 = v110;

    v74 = sub_100063E14();
    v76 = v75;
    LOBYTE(v73) = v77;
    v78 = sub_100063DD4();
    v80 = v79;
    v82 = v81;
    v84 = v83;
    sub_100016780(v146);
    sub_100016708(v74, v76, v73 & 1);

    *&v148 = v78;
    *(&v148 + 1) = v80;
    LOBYTE(v149) = v82 & 1;
    *(&v149 + 1) = v84;
    v85 = v113;
    sub_100063E24();
    sub_100016708(v78, v80, v82 & 1);

    sub_100063A84();
    v86 = v127;
    sub_100030790(v127);
    v88 = v128;
    v87 = v129;
    v104(v128, v105, v129);
    LOBYTE(v74) = sub_100015FC8(v86, v88);
    v89 = v108;
    v108(v88, v87);
    v89(v86, v87);
    if (v74)
    {
      sub_100063A24();
    }

    else
    {
      sub_100063A14();
    }

    v62 = v130;
    sub_100063874();
    v90 = v112;
    (v117)(v112, v85, v131);
    v91 = &v90[*(v62 + 36)];
    v92 = v153;
    *(v91 + 4) = v152;
    *(v91 + 5) = v92;
    *(v91 + 6) = v154;
    v93 = v149;
    *v91 = v148;
    *(v91 + 1) = v93;
    v94 = v151;
    *(v91 + 2) = v150;
    *(v91 + 3) = v94;
    v95 = v90;
    v96 = v111;
    sub_100015F0C(v95, v111, &qword_100085410, &qword_100066C08);
    sub_100015F0C(v96, v132, &qword_100085410, &qword_100066C08);
    v59 = 0;
  }

  v97 = v132;
  (*(v122 + 56))(v132, v59, 1, v62);
  v98 = v134;
  v99 = v123;
  sub_100016718(v134, v123, &qword_100085410, &qword_100066C08);
  v100 = v124;
  sub_100016718(v97, v124, &qword_1000853F8, &unk_100066BF0);
  v101 = v125;
  sub_100016718(v99, v125, &qword_100085410, &qword_100066C08);
  v102 = sub_1000021D4(&qword_100085420, &unk_100066C10);
  sub_100016718(v100, v101 + *(v102 + 48), &qword_1000853F8, &unk_100066BF0);
  sub_10000494C(v97, &qword_1000853F8, &unk_100066BF0);
  sub_10000494C(v98, &qword_100085410, &qword_100066C08);
  sub_10000494C(v100, &qword_1000853F8, &unk_100066BF0);
  return sub_10000494C(v99, &qword_100085410, &qword_100066C08);
}

uint64_t sub_10001534C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v74 = a2;
  v3 = sub_100063454();
  v67 = *(v3 - 8);
  *&v68 = v3;
  __chkstk_darwin(v3);
  v59 = &v59 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1000021D4(&qword_100084BC0, qword_100064C60);
  v6 = __chkstk_darwin(v5 - 8);
  v65 = &v59 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v66 = &v59 - v8;
  v64 = type metadata accessor for AppLaunchAction(0);
  __chkstk_darwin(v64);
  v10 = (&v59 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v75 = sub_1000021D4(&qword_100085300, &qword_1000669B8);
  __chkstk_darwin(v75);
  v12 = (&v59 - v11);
  v13 = sub_1000021D4(&qword_100085308, &qword_1000669C0);
  v14 = __chkstk_darwin(v13);
  v16 = (&v59 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v14);
  v18 = (&v59 - v17);
  v19 = sub_1000021D4(&qword_100085310, &qword_1000669C8);
  v20 = __chkstk_darwin(v19 - 8);
  v73 = &v59 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __chkstk_darwin(v20);
  v72 = &v59 - v23;
  v24 = __chkstk_darwin(v22);
  v71 = &v59 - v25;
  __chkstk_darwin(v24);
  v70 = &v59 - v26;
  v63 = sub_100063FA4();
  v27 = a1 + *(type metadata accessor for StartWritingWidgetSystemMediumView(0) + 28);
  v28 = v27 + *(type metadata accessor for StartWritingWidgetTimelineEntry(0) + 20);
  LODWORD(v69) = *(v28 + 11);
  sub_10004905C(v69, &v76);
  v60 = v76;
  v61 = v78;
  v62 = v77;
  v29 = sub_1000021D4(&qword_100084BC8, &qword_1000669D0);
  v30 = *(v29 + 48);
  v31 = *(v29 + 64);
  v32 = *(v28 + 24);
  *v10 = *(v28 + 16);
  v10[1] = v32;
  *(v10 + v30) = 1;
  v33 = type metadata accessor for CanvasContentInputType(0);
  swift_storeEnumTagMultiPayload();
  (*(*(v33 - 8) + 56))(v10 + v30, 0, 1, v33);
  v34 = enum case for WidgetFamily.systemMedium(_:);
  v35 = sub_100064154();
  v36 = *(v35 - 8);
  (*(v36 + 104))(v10 + v31, v34, v35);
  v37 = v35;
  v38 = v65;
  (*(v36 + 56))(v10 + v31, 0, 1, v37);
  v39 = v67;
  swift_storeEnumTagMultiPayload();

  v40 = v66;
  sub_1000197E8(v66);
  v41 = v10;
  v42 = v68;
  sub_1000028E4(v41);
  sub_100015F0C(v40, v38, &qword_100084BC0, qword_100064C60);
  if ((*(v39 + 48))(v38, 1, v42) == 1)
  {
    sub_10000494C(v38, &qword_100084BC0, qword_100064C60);
    *v12 = nullsub_1;
    v12[1] = 0;
  }

  else
  {
    v43 = *(v39 + 32);
    v44 = v59;
    v43(v59, v38, v42);
    v43(v12, v44, v42);
  }

  swift_storeEnumTagMultiPayload();
  v45 = v18 + v13[10];
  *v45 = v60;
  *(v45 + 24) = v61;
  *(v45 + 8) = v62;
  *v18 = swift_getKeyPath();
  sub_1000021D4(&qword_100085318, &qword_100066A08);
  swift_storeEnumTagMultiPayload();
  *(v18 + v13[9]) = v63;
  sub_100015F0C(v12, v18 + v13[11], &qword_100085300, &qword_1000669B8);
  if (qword_1000844A8 != -1)
  {
    swift_once();
  }

  v76 = qword_100090360;
  *&v77 = *algn_100090368;
  sub_100009F14(&qword_100085320, &qword_100085308, &qword_1000669C0, &unk_100067180);
  sub_100002264();
  v46 = v70;
  sub_100063F04();
  sub_10000494C(v18, &qword_100085308, &qword_1000669C0);
  v47 = sub_100063FA4();
  sub_1000494A0(v69, &v76);
  v48 = v76;
  v49 = v16 + v13[11];
  *(v49 + 3) = &type metadata for StartWritingWidgetUtil.RefreshIntent;
  *(v49 + 4) = sub_100015F74();
  v68 = v78;
  v69 = v77;
  swift_storeEnumTagMultiPayload();
  v50 = v16 + v13[10];
  *v50 = v48;
  v51 = v69;
  *(v50 + 24) = v68;
  *(v50 + 8) = v51;
  *v16 = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  *(v16 + v13[9]) = v47;
  if (qword_1000844B0 != -1)
  {
    swift_once();
  }

  v76 = qword_100090370;
  *&v77 = *algn_100090378;
  v52 = v71;
  sub_100063F04();
  sub_10000494C(v16, &qword_100085308, &qword_1000669C0);
  v53 = v72;
  sub_100016718(v46, v72, &qword_100085310, &qword_1000669C8);
  v54 = v73;
  sub_100016718(v52, v73, &qword_100085310, &qword_1000669C8);
  v55 = v74;
  sub_100016718(v53, v74, &qword_100085310, &qword_1000669C8);
  v56 = sub_1000021D4(&qword_100085330, &qword_100066A10);
  v57 = v55 + *(v56 + 48);
  *v57 = 0;
  *(v57 + 8) = 1;
  sub_100016718(v54, v55 + *(v56 + 64), &qword_100085310, &qword_1000669C8);
  sub_10000494C(v52, &qword_100085310, &qword_1000669C8);
  sub_10000494C(v46, &qword_100085310, &qword_1000669C8);
  sub_10000494C(v54, &qword_100085310, &qword_1000669C8);
  return sub_10000494C(v53, &qword_100085310, &qword_1000669C8);
}

uint64_t sub_100015C14@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_100063C34();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000021D4(&qword_100085298, &qword_100066928);
  __chkstk_darwin(v8);
  v10 = &v18 - v9;
  *v10 = sub_100063A74();
  *(v10 + 1) = 0x4018000000000000;
  v10[16] = 0;
  v11 = sub_1000021D4(&qword_1000852A0, &qword_100066930);
  sub_100012784(v2, &v10[*(v11 + 44)]);
  sub_100063C24();
  sub_100064084();
  sub_100009F14(&qword_1000852A8, &qword_100085298, &qword_100066928, &protocol conformance descriptor for VStack<A>);
  sub_100015EA8();
  sub_100063F14();
  (*(v5 + 8))(v7, v4);
  sub_10000494C(v10, &qword_100085298, &qword_100066928);
  KeyPath = swift_getKeyPath();
  v13 = (a1 + *(sub_1000021D4(&qword_1000852B8, &qword_100066968) + 36));
  v14 = *(sub_1000021D4(&qword_1000852C0, &qword_100066970) + 28);
  v15 = enum case for ColorScheme.dark(_:);
  v16 = sub_100063774();
  result = (*(*(v16 - 8) + 104))(v13 + v14, v15, v16);
  *v13 = KeyPath;
  return result;
}

unint64_t sub_100015EA8()
{
  result = qword_1000852B0;
  if (!qword_1000852B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000852B0);
  }

  return result;
}

uint64_t sub_100015F0C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_1000021D4(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

unint64_t sub_100015F74()
{
  result = qword_100085328;
  if (!qword_100085328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100085328);
  }

  return result;
}

BOOL sub_100015FC8(uint64_t a1, uint64_t a2)
{
  v19 = a2;
  v3 = sub_100063A64();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v18 - v8;
  v10 = *(v4 + 16);
  v10(&v18 - v8, a1, v3);
  v11 = *(v4 + 88);
  v12 = v11(v9, v3);
  v13 = 0;
  v14 = enum case for ContentSizeCategory.extraSmall(_:);
  if (v12 != enum case for ContentSizeCategory.extraSmall(_:))
  {
    if (v12 == enum case for ContentSizeCategory.small(_:))
    {
      v13 = 1;
      goto LABEL_24;
    }

    if (v12 == enum case for ContentSizeCategory.medium(_:))
    {
      v13 = 2;
      goto LABEL_24;
    }

    if (v12 == enum case for ContentSizeCategory.large(_:))
    {
      goto LABEL_7;
    }

    if (v12 == enum case for ContentSizeCategory.extraLarge(_:))
    {
      v13 = 4;
    }

    else if (v12 == enum case for ContentSizeCategory.extraExtraLarge(_:))
    {
      v13 = 5;
    }

    else if (v12 == enum case for ContentSizeCategory.extraExtraExtraLarge(_:))
    {
      v13 = 6;
    }

    else if (v12 == enum case for ContentSizeCategory.accessibilityMedium(_:))
    {
      v13 = 7;
    }

    else if (v12 == enum case for ContentSizeCategory.accessibilityLarge(_:))
    {
      v13 = 8;
    }

    else if (v12 == enum case for ContentSizeCategory.accessibilityExtraLarge(_:))
    {
      v13 = 9;
    }

    else if (v12 == enum case for ContentSizeCategory.accessibilityExtraExtraLarge(_:))
    {
      v13 = 10;
    }

    else
    {
      if (v12 != enum case for ContentSizeCategory.accessibilityExtraExtraExtraLarge(_:))
      {
        (*(v4 + 8))(v9, v3);
LABEL_7:
        v13 = 3;
        goto LABEL_24;
      }

      v13 = 11;
    }
  }

LABEL_24:
  v10(v7, v19, v3);
  v15 = v11(v7, v3);
  if (v15 == v14)
  {
    v16 = 0;
  }

  else if (v15 == enum case for ContentSizeCategory.small(_:))
  {
    v16 = 1;
  }

  else if (v15 == enum case for ContentSizeCategory.medium(_:))
  {
    v16 = 2;
  }

  else
  {
    if (v15 != enum case for ContentSizeCategory.large(_:))
    {
      if (v15 == enum case for ContentSizeCategory.extraLarge(_:))
      {
        v16 = 4;
        return v13 >= v16;
      }

      if (v15 == enum case for ContentSizeCategory.extraExtraLarge(_:))
      {
        v16 = 5;
        return v13 >= v16;
      }

      if (v15 == enum case for ContentSizeCategory.extraExtraExtraLarge(_:))
      {
        v16 = 6;
        return v13 >= v16;
      }

      if (v15 == enum case for ContentSizeCategory.accessibilityMedium(_:))
      {
        v16 = 7;
        return v13 >= v16;
      }

      if (v15 == enum case for ContentSizeCategory.accessibilityLarge(_:))
      {
        v16 = 8;
        return v13 >= v16;
      }

      if (v15 == enum case for ContentSizeCategory.accessibilityExtraLarge(_:))
      {
        v16 = 9;
        return v13 >= v16;
      }

      if (v15 == enum case for ContentSizeCategory.accessibilityExtraExtraLarge(_:))
      {
        v16 = 10;
        return v13 >= v16;
      }

      if (v15 == enum case for ContentSizeCategory.accessibilityExtraExtraExtraLarge(_:))
      {
        v16 = 11;
        return v13 >= v16;
      }

      (*(v4 + 8))(v7, v3);
    }

    v16 = 3;
  }

  return v13 >= v16;
}

unint64_t sub_1000163E8()
{
  result = qword_100085380;
  if (!qword_100085380)
  {
    sub_10000221C(&qword_100085358, &qword_100066A30);
    sub_100009F14(&qword_100085388, &qword_100085390, &qword_100066A88, &protocol conformance descriptor for ZStack<A>);
    sub_100009F14(&qword_100085398, &qword_1000853A0, &qword_100066A90, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100085380);
  }

  return result;
}

unint64_t sub_1000164DC()
{
  result = qword_1000853B0;
  if (!qword_1000853B0)
  {
    sub_10000221C(&qword_100085360, &qword_100066A38);
    sub_100016594();
    sub_100009F14(&qword_1000853D0, &qword_1000853D8, &qword_100066B08, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000853B0);
  }

  return result;
}

unint64_t sub_100016594()
{
  result = qword_1000853B8;
  if (!qword_1000853B8)
  {
    sub_10000221C(&qword_1000853A8, &qword_100066AC8);
    sub_10000221C(&qword_100085358, &qword_100066A30);
    sub_1000163E8();
    swift_getOpaqueTypeConformance2();
    sub_100009F14(&qword_1000853C0, &qword_1000853C8, &qword_100066B00, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000853B8);
  }

  return result;
}

uint64_t sub_1000166A4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WidgetHeaderView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100016708(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_100016718(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_1000021D4(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_100016804(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_10000221C(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100016888()
{
  result = qword_100085488;
  if (!qword_100085488)
  {
    sub_10000221C(&qword_100085460, &unk_100066C40);
    sub_100016944(&qword_100085490, type metadata accessor for WidgetHeaderView, &unk_100069D84);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100085488);
  }

  return result;
}

uint64_t sub_100016944(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_10001698C()
{
  result = qword_100085498;
  if (!qword_100085498)
  {
    sub_10000221C(&qword_100085470, &unk_100066C50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100085498);
  }

  return result;
}

unint64_t sub_100016A14()
{
  result = qword_1000854A0;
  if (!qword_1000854A0)
  {
    sub_10000221C(&qword_1000852B8, &qword_100066968);
    sub_10000221C(&qword_100085298, &qword_100066928);
    sub_100009F14(&qword_1000852A8, &qword_100085298, &qword_100066928, &protocol conformance descriptor for VStack<A>);
    sub_100015EA8();
    swift_getOpaqueTypeConformance2();
    sub_100009F14(&qword_1000854A8, &qword_1000852C0, &qword_100066970, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000854A0);
  }

  return result;
}

uint64_t sub_100016B50(uint64_t a1)
{
  v2 = sub_1000021D4(&qword_100085548, &qword_100066E48);
  v3 = *(v2 - 8);
  v23 = v2;
  v24 = v3;
  __chkstk_darwin(v2);
  v5 = &v17 - v4;
  v6 = sub_1000021D4(&qword_100085550, &qword_100066E50);
  __chkstk_darwin(v6);
  sub_100019368();
  sub_100062FF4();
  v25._countAndFlagsBits = 0;
  v25._object = 0xE000000000000000;
  sub_100062FE4(v25);
  swift_getKeyPath();
  v22 = sub_1000194D8();
  v17 = a1;
  sub_100062F14();

  sub_100062FD4();

  v26._countAndFlagsBits = 0xD000000000000024;
  v26._object = 0x800000010006CAB0;
  sub_100062FE4(v26);
  sub_100063004();
  v7 = sub_100062F44();
  v8 = v23;
  v9 = *(v24 + 8);
  v20 = v7;
  v21 = v9;
  v24 += 8;
  v9(v5, v23);
  sub_100062FF4();
  v27._countAndFlagsBits = 0;
  v27._object = 0xE000000000000000;
  sub_100062FE4(v27);
  swift_getKeyPath();
  sub_100062F14();

  sub_100062FD4();

  v28._countAndFlagsBits = 0x756F4A20726F6620;
  v28._object = 0xED00002E6C616E72;
  sub_100062FE4(v28);
  sub_100063004();
  v19 = sub_100062F44();
  v10 = v21;
  v21(v5, v8);
  sub_100062FF4();
  v29._countAndFlagsBits = 0x656B696C20642749;
  v29._object = 0xEC000000206F7420;
  sub_100062FE4(v29);
  swift_getKeyPath();
  sub_100062F14();

  sub_100062FD4();

  v30._object = 0x800000010006CAE0;
  v30._countAndFlagsBits = 0xD000000000000018;
  sub_100062FE4(v30);
  sub_100063004();
  v18 = sub_100062F44();
  v11 = v23;
  v10(v5, v23);
  sub_100062FF4();
  v31._countAndFlagsBits = 0;
  v31._object = 0xE000000000000000;
  sub_100062FE4(v31);
  swift_getKeyPath();
  sub_100062F14();

  sub_100062FD4();

  v32._countAndFlagsBits = 0xD000000000000027;
  v32._object = 0x800000010006CB00;
  sub_100062FE4(v32);
  sub_100063004();
  v12 = sub_100062F44();
  v21(v5, v11);
  sub_1000021D4(&qword_100085558, &qword_100066E58);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_100066C60;
  v14 = v19;
  *(v13 + 32) = v20;
  *(v13 + 40) = v14;
  *(v13 + 48) = v18;
  *(v13 + 56) = v12;
  v15 = sub_100062F34();

  return v15;
}

uint64_t sub_100017094()
{
  v0 = sub_100062F64();
  v1 = sub_100062F64();
  v2 = sub_100062F64();
  v3 = sub_100062F64();
  v4 = sub_100062F64();
  v5 = sub_100062F64();
  v6 = sub_100062F64();
  v7 = sub_100062F64();
  sub_1000021D4(&qword_1000854B8, &qword_100066D10);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_100066C70;
  *(v8 + 32) = v0;
  *(v8 + 40) = v1;
  *(v8 + 48) = v2;
  *(v8 + 56) = v3;
  *(v8 + 64) = v4;
  *(v8 + 72) = v5;
  *(v8 + 80) = v6;
  *(v8 + 88) = v7;
  v9 = sub_100062F54();

  return v9;
}

uint64_t sub_100017200()
{
  v0 = sub_1000021D4(&qword_100085530, &qword_100066E08);
  v1 = *(v0 - 8);
  v16 = v0;
  v17 = v1;
  __chkstk_darwin(v0);
  v3 = &v12 - v2;
  v4 = sub_1000021D4(&qword_100085538, &qword_100066E10);
  __chkstk_darwin(v4);
  sub_10000E380();
  sub_100062FF4();
  v18._countAndFlagsBits = 0;
  v18._object = 0xE000000000000000;
  sub_100062FE4(v18);
  swift_getKeyPath();
  sub_1000194D8();
  sub_100062F14();

  sub_100062FD4();

  v19._object = 0x800000010006CA20;
  v19._countAndFlagsBits = 0xD000000000000016;
  sub_100062FE4(v19);
  sub_100063004();
  v15 = sub_100062F44();
  v5 = v16;
  v13 = *(v17 + 8);
  v17 += 8;
  v13(v3, v16);
  sub_100062FF4();
  v20._countAndFlagsBits = 0x6974616D6F747541;
  v20._object = 0xEE0020796C6C6163;
  sub_100062FE4(v20);
  swift_getKeyPath();
  sub_100062F14();

  sub_100062FD4();

  v21._countAndFlagsBits = 0xD000000000000030;
  v21._object = 0x800000010006CA40;
  sub_100062FE4(v21);
  sub_100063004();
  v14 = sub_100062F44();
  v6 = v13;
  v13(v3, v5);
  sub_100062FF4();
  v22._countAndFlagsBits = 0;
  v22._object = 0xE000000000000000;
  sub_100062FE4(v22);
  swift_getKeyPath();
  sub_100062F14();

  sub_100062FD4();

  v23._countAndFlagsBits = 0xD000000000000028;
  v23._object = 0x800000010006CA80;
  sub_100062FE4(v23);
  sub_100063004();
  v7 = sub_100062F44();
  v6(v3, v16);
  sub_1000021D4(&qword_100085540, &qword_100066E18);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_100066C80;
  v9 = v14;
  *(v8 + 32) = v15;
  *(v8 + 40) = v9;
  *(v8 + 48) = v7;
  v10 = sub_100062F34();

  return v10;
}

uint64_t sub_100017664()
{
  v0 = sub_100062F64();
  v1 = sub_100062F64();
  v2 = sub_100062F64();
  v3 = sub_100062F64();
  v4 = sub_100062F64();
  v5 = sub_100062F64();
  v6 = sub_100062F64();
  v7 = sub_100062F64();
  sub_1000021D4(&qword_1000854B8, &qword_100066D10);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_100066C70;
  *(v8 + 32) = v0;
  *(v8 + 40) = v1;
  *(v8 + 48) = v2;
  *(v8 + 56) = v3;
  *(v8 + 64) = v4;
  *(v8 + 72) = v5;
  *(v8 + 80) = v6;
  *(v8 + 88) = v7;
  v9 = sub_100062F54();

  return v9;
}

uint64_t sub_1000177C4()
{
  v0 = sub_1000021D4(&qword_100085518, &qword_100066DC8);
  v1 = *(v0 - 8);
  v16 = v0;
  v17 = v1;
  __chkstk_darwin(v0);
  v3 = &v12 - v2;
  v4 = sub_1000021D4(&qword_100085520, &qword_100066DD0);
  __chkstk_darwin(v4);
  sub_100004CA4();
  sub_100062FF4();
  v18._countAndFlagsBits = 0;
  v18._object = 0xE000000000000000;
  sub_100062FE4(v18);
  swift_getKeyPath();
  sub_1000194D8();
  sub_100062F14();

  sub_100062FD4();

  v19._object = 0x800000010006C9E0;
  v19._countAndFlagsBits = 0xD000000000000018;
  sub_100062FE4(v19);
  sub_100063004();
  v15 = sub_100062F44();
  v5 = v16;
  v13 = *(v17 + 8);
  v17 += 8;
  v13(v3, v16);
  sub_100062FF4();
  v20._countAndFlagsBits = 0;
  v20._object = 0xE000000000000000;
  sub_100062FE4(v20);
  swift_getKeyPath();
  sub_100062F14();

  sub_100062FD4();

  v21._countAndFlagsBits = 0x756F4A20726F6620;
  v21._object = 0xED00002E6C616E72;
  sub_100062FE4(v21);
  sub_100063004();
  v14 = sub_100062F44();
  v6 = v13;
  v13(v3, v5);
  sub_100062FF4();
  v22._countAndFlagsBits = 0;
  v22._object = 0xE000000000000000;
  sub_100062FE4(v22);
  swift_getKeyPath();
  sub_100062F14();

  sub_100062FD4();

  v23._countAndFlagsBits = 0xD00000000000001CLL;
  v23._object = 0x800000010006CA00;
  sub_100062FE4(v23);
  sub_100063004();
  v7 = sub_100062F44();
  v6(v3, v16);
  sub_1000021D4(&qword_100085528, &qword_100066DD8);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_100066C80;
  v9 = v14;
  *(v8 + 32) = v15;
  *(v8 + 40) = v9;
  *(v8 + 48) = v7;
  v10 = sub_100062F34();

  return v10;
}

uint64_t sub_100017C14()
{
  v0 = sub_100062F64();
  v1 = sub_100062F64();
  v2 = sub_100062F64();
  v3 = sub_100062F64();
  v4 = sub_100062F64();
  v5 = sub_100062F64();
  v6 = sub_100062F64();
  sub_1000021D4(&qword_1000854B8, &qword_100066D10);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_100066C90;
  *(v7 + 32) = v0;
  *(v7 + 40) = v1;
  *(v7 + 48) = v2;
  *(v7 + 56) = v3;
  *(v7 + 64) = v4;
  *(v7 + 72) = v5;
  *(v7 + 80) = v6;
  v8 = sub_100062F54();

  return v8;
}

uint64_t sub_100017D6C()
{
  v0 = sub_1000021D4(&qword_100085500, &qword_100066D88);
  v1 = *(v0 - 8);
  v16 = v0;
  v17 = v1;
  __chkstk_darwin(v0);
  v3 = &v12 - v2;
  v4 = sub_1000021D4(&qword_100085508, &qword_100066D90);
  __chkstk_darwin(v4);
  sub_1000193BC();
  sub_100062FF4();
  v18._countAndFlagsBits = 0;
  v18._object = 0xE000000000000000;
  sub_100062FE4(v18);
  swift_getKeyPath();
  sub_1000194D8();
  sub_100062F14();

  sub_100062FD4();

  v19._countAndFlagsBits = 0x6F74206576615320;
  v19._object = 0xEF736F746F685020;
  sub_100062FE4(v19);
  sub_100063004();
  v15 = sub_100062F44();
  v5 = v16;
  v13 = *(v17 + 8);
  v17 += 8;
  v13(v3, v16);
  sub_100062FF4();
  v20._countAndFlagsBits = 0;
  v20._object = 0xE000000000000000;
  sub_100062FE4(v20);
  swift_getKeyPath();
  sub_100062F14();

  sub_100062FD4();

  v21._countAndFlagsBits = 0xD000000000000023;
  v21._object = 0x800000010006C990;
  sub_100062FE4(v21);
  sub_100063004();
  v14 = sub_100062F44();
  v6 = v13;
  v13(v3, v5);
  sub_100062FF4();
  v22._countAndFlagsBits = 0;
  v22._object = 0xE000000000000000;
  sub_100062FE4(v22);
  swift_getKeyPath();
  sub_100062F14();

  sub_100062FD4();

  v23._object = 0x800000010006C9C0;
  v23._countAndFlagsBits = 0xD000000000000019;
  sub_100062FE4(v23);
  sub_100063004();
  v7 = sub_100062F44();
  v6(v3, v16);
  sub_1000021D4(&qword_100085510, &qword_100066D98);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_100066C80;
  v9 = v14;
  *(v8 + 32) = v15;
  *(v8 + 40) = v9;
  *(v8 + 48) = v7;
  v10 = sub_100062F34();

  return v10;
}

uint64_t sub_1000181BC(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  v5 = sub_100062FA4();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  sub_1000194D8();
  sub_100062F14();

  a3(v9);
  sub_100062F94();
  v10 = sub_100062F84();
  (*(v6 + 8))(v8, v5);
  sub_1000021D4(&qword_1000854E0, &qword_100066D48);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_100064BC0;
  *(v11 + 32) = v10;
  v12 = sub_100062F74();

  return v12;
}

uint64_t sub_100018334()
{
  v0 = sub_100062F64();
  v1 = sub_100062F64();
  v2 = sub_100062F64();
  v3 = sub_100062F64();
  v4 = sub_100062F64();
  v5 = sub_100062F64();
  sub_1000021D4(&qword_1000854B8, &qword_100066D10);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_100065AC0;
  *(v6 + 32) = v0;
  *(v6 + 40) = v1;
  *(v6 + 48) = v2;
  *(v6 + 56) = v3;
  *(v6 + 64) = v4;
  *(v6 + 72) = v5;
  v7 = sub_100062F54();

  return v7;
}

uint64_t sub_100018454()
{
  v0 = sub_1000021D4(&qword_1000854E8, &qword_100066D50);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v13 - v2;
  sub_10000D86C();
  sub_100062FC4();
  v14 = sub_100062F44();
  v4 = *(v1 + 8);
  v4(v3, v0);
  sub_100062FC4();
  v13 = sub_100062F44();
  v4(v3, v0);
  sub_100062FC4();
  v5 = sub_100062F44();
  v4(v3, v0);
  sub_100062FC4();
  v6 = sub_100062F44();
  v4(v3, v0);
  sub_100062FC4();
  v7 = sub_100062F44();
  v4(v3, v0);
  sub_100062FC4();
  v8 = sub_100062F44();
  v4(v3, v0);
  sub_1000021D4(&qword_1000854F0, &qword_100066D58);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_100065AC0;
  v10 = v13;
  *(v9 + 32) = v14;
  *(v9 + 40) = v10;
  *(v9 + 48) = v5;
  *(v9 + 56) = v6;
  *(v9 + 64) = v7;
  *(v9 + 72) = v8;
  v11 = sub_100062F34();

  return v11;
}

uint64_t sub_100018768()
{
  v0 = sub_1000021D4(&qword_1000854E8, &qword_100066D50);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v11 - v2;
  sub_10000D86C();
  sub_100062FC4();
  v4 = sub_100062F44();
  v5 = *(v1 + 8);
  v5(v3, v0);
  sub_100062FC4();
  v6 = sub_100062F44();
  v5(v3, v0);
  sub_100062FC4();
  v7 = sub_100062F44();
  v5(v3, v0);
  sub_1000021D4(&qword_1000854F0, &qword_100066D58);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_100066C80;
  *(v8 + 32) = v4;
  *(v8 + 40) = v6;
  *(v8 + 48) = v7;
  v9 = sub_100062F34();

  return v9;
}

uint64_t sub_100018988()
{
  v0 = sub_1000021D4(&qword_1000854E8, &qword_100066D50);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v11 - v2;
  sub_10000D86C();
  sub_100062FC4();
  v4 = sub_100062F44();
  v5 = *(v1 + 8);
  v5(v3, v0);
  sub_100062FC4();
  v6 = sub_100062F44();
  v5(v3, v0);
  sub_100062FC4();
  v7 = sub_100062F44();
  v5(v3, v0);
  sub_1000021D4(&qword_1000854F0, &qword_100066D58);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_100066C80;
  *(v8 + 32) = v4;
  *(v8 + 40) = v6;
  *(v8 + 48) = v7;
  v9 = sub_100062F34();

  return v9;
}

uint64_t sub_100018BAC(uint64_t a1, char a2)
{
  v3 = sub_100062FA4();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v11[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11[15] = a2;
  swift_getKeyPath();
  sub_100019484();
  sub_100062F24();

  sub_10000D86C();
  sub_10000DF54();
  sub_100062FB4();
  v7 = sub_100062F84();
  (*(v4 + 8))(v6, v3);
  sub_1000021D4(&qword_1000854E0, &qword_100066D48);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_100064BC0;
  *(v8 + 32) = v7;
  v9 = sub_100062F74();

  return v9;
}

uint64_t sub_100018D24()
{
  v0 = sub_100062F64();
  v1 = sub_100062F64();
  sub_1000021D4(&qword_1000854B8, &qword_100066D10);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_100065BA0;
  *(v2 + 32) = v0;
  *(v2 + 40) = v1;
  v3 = sub_100062F54();

  return v3;
}

uint64_t sub_100018DDC()
{
  v0 = sub_100062F04();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000D86C();
  sub_100062EF4();
  v4 = sub_100062EE4();
  (*(v1 + 8))(v3, v0);
  sub_1000021D4(&qword_1000854B0, &qword_100066D08);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_100064BC0;
  *(v5 + 32) = v4;
  v6 = sub_100062ED4();

  return v6;
}

uint64_t sub_100018F2C()
{
  v0 = sub_100063034();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v18 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_10003AF6C();
  v21 = v4;
  sub_100019368();
  sub_100063044();
  v19 = sub_100063024();
  v5 = *(v1 + 8);
  v5(v3, v0);
  v20 = sub_100011534();
  v21 = v6;
  sub_10000E380();
  sub_100063044();
  v18 = sub_100063024();
  v5(v3, v0);
  v20 = sub_1000090D8();
  v21 = v7;
  sub_100004CA4();
  sub_100063044();
  v8 = sub_100063024();
  v5(v3, v0);
  v20 = sub_10002DF20();
  v21 = v9;
  sub_1000193BC();
  sub_100063044();
  v10 = sub_100063024();
  v5(v3, v0);
  v20 = sub_10000DC50();
  sub_10000D86C();
  sub_100063054();
  v11 = sub_100063024();
  v5(v3, v0);
  v20 = sub_10000DC50();
  sub_100063054();
  v12 = sub_100063024();
  v5(v3, v0);
  v20 = sub_10000DC50();
  sub_100063054();
  v13 = sub_100063024();
  v5(v3, v0);
  sub_1000021D4(&qword_1000854D0, &qword_100066D18);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_100066C90;
  v15 = v18;
  *(v14 + 32) = v19;
  *(v14 + 40) = v15;
  *(v14 + 48) = v8;
  *(v14 + 56) = v10;
  *(v14 + 64) = v11;
  *(v14 + 72) = v12;
  *(v14 + 80) = v13;
  v16 = sub_100063014();

  return v16;
}

unint64_t sub_100019368()
{
  result = qword_1000854C0;
  if (!qword_1000854C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000854C0);
  }

  return result;
}

unint64_t sub_1000193BC()
{
  result = qword_1000854C8;
  if (!qword_1000854C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000854C8);
  }

  return result;
}

void *sub_100019410@<X0>(_BYTE *a1@<X8>)
{
  result = sub_100062E84();
  *a1 = v3;
  return result;
}

unint64_t sub_100019484()
{
  result = qword_1000854D8;
  if (!qword_1000854D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000854D8);
  }

  return result;
}

unint64_t sub_1000194D8()
{
  result = qword_1000854F8;
  if (!qword_1000854F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000854F8);
  }

  return result;
}

void *sub_100019534@<X0>(_BYTE *a1@<X8>)
{
  result = sub_100062E84();
  *a1 = v3;
  return result;
}

uint64_t sub_1000195C0@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100063574();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_100019640(uint64_t a1, uint64_t a2)
{
  v4 = sub_100063574();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1000196C0(uint64_t a1, uint64_t a2)
{
  v4 = sub_100063574();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t type metadata accessor for PickerWidgetTimelineEntry(uint64_t a1)
{
  result = qword_1000855B8;
  if (!qword_1000855B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10001977C(uint64_t a1)
{
  result = sub_100063574();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1000197E8@<X0>(uint64_t a1@<X8>)
{
  v189 = a1;
  v186 = sub_100064154();
  v175 = *(v186 - 8);
  __chkstk_darwin(v186);
  v169 = &v161 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v173 = type metadata accessor for CanvasContentInputType(0);
  v171 = *(v173 - 8);
  __chkstk_darwin(v173);
  v166 = &v161 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1000021D4(&qword_1000855F0, &qword_100066EB0);
  v4 = __chkstk_darwin(v3 - 8);
  v174 = &v161 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v180 = &v161 - v6;
  v7 = sub_1000021D4(&qword_1000855F8, &qword_100066EB8);
  v8 = __chkstk_darwin(v7 - 8);
  v170 = &v161 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v181 = &v161 - v10;
  v179 = sub_1000635A4();
  v182 = *(v179 - 8);
  v11 = __chkstk_darwin(v179);
  v172 = &v161 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v168 = &v161 - v13;
  v14 = sub_1000021D4(&qword_100085600, &qword_100066EC0);
  v15 = __chkstk_darwin(v14 - 8);
  v185 = &v161 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v176 = &v161 - v17;
  v18 = sub_1000632D4();
  v183 = *(v18 - 8);
  v184 = v18;
  v19 = __chkstk_darwin(v18);
  v162 = &v161 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __chkstk_darwin(v19);
  v164 = &v161 - v22;
  v23 = __chkstk_darwin(v21);
  v163 = &v161 - v24;
  v25 = __chkstk_darwin(v23);
  v165 = &v161 - v26;
  v27 = __chkstk_darwin(v25);
  v161 = &v161 - v28;
  v29 = __chkstk_darwin(v27);
  v167 = &v161 - v30;
  v31 = __chkstk_darwin(v29);
  v33 = &v161 - v32;
  v34 = __chkstk_darwin(v31);
  v36 = &v161 - v35;
  __chkstk_darwin(v34);
  v38 = &v161 - v37;
  v39 = sub_100063454();
  v177 = *(v39 - 8);
  v178 = v39;
  __chkstk_darwin(v39);
  v41 = &v161 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = sub_1000021D4(&qword_100084BC0, qword_100064C60);
  v43 = __chkstk_darwin(v42 - 8);
  v45 = &v161 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v43);
  v47 = &v161 - v46;
  v48 = type metadata accessor for AppLaunchAction(0);
  __chkstk_darwin(v48);
  v50 = &v161 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  v190 = sub_100063344();
  v188 = *(v190 - 8);
  __chkstk_darwin(v190);
  v52 = &v161 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100063334();
  sub_100063324();
  v53 = v52;
  sub_1000632F4();
  sub_10001C4E4(v187, v50, type metadata accessor for AppLaunchAction);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 3)
  {
    v59 = v185;
    v187 = v47;
    v172 = v41;
    v60 = v38;
    v164 = v33;
    v61 = v186;
    if (EnumCaseMultiPayload <= 1)
    {
      v62 = v190;
      if (EnumCaseMultiPayload)
      {
        v88 = *(v50 + 1);
        v56 = v52;
        sub_100063314();
        v55 = v188;
        v57 = v62;
        if (v88)
        {
          v89 = sub_1000632E4();
          v91 = v89;
          if (*v90)
          {
            v92 = v90;
            v187 = v89;
            v93 = v36;
            sub_1000632C4();

            v94 = *v92;
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            *v92 = v94;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              v94 = sub_10001C138(0, v94[2] + 1, 1, v94, &qword_100085608, &qword_100066EC8, &type metadata accessor for URLQueryItem);
              *v92 = v94;
            }

            v97 = v94[2];
            v96 = v94[3];
            if (v97 >= v96 >> 1)
            {
              v94 = sub_10001C138((v96 > 1), v97 + 1, 1, v94, &qword_100085608, &qword_100066EC8, &type metadata accessor for URLQueryItem);
              *v92 = v94;
            }

            v94[2] = v97 + 1;
            (*(v183 + 32))(v94 + ((*(v183 + 80) + 32) & ~*(v183 + 80)) + *(v183 + 72) * v97, v93, v184);
            v187(v192, 0);
          }

          else
          {

            v91(v192, 0);
          }
        }

        goto LABEL_89;
      }

      v63 = v187;
      sub_100015F0C(v50, v187, &qword_100084BC0, qword_100064C60);
      sub_100063314();
      sub_100016718(v63, v45, &qword_100084BC0, qword_100064C60);
      v65 = v177;
      v64 = v178;
      if ((*(v177 + 48))(v45, 1, v178) == 1)
      {
        sub_10000494C(v63, &qword_100084BC0, qword_100064C60);
        sub_10000494C(v45, &qword_100084BC0, qword_100064C60);
        v55 = v188;
        v56 = v52;
        v57 = v62;
        goto LABEL_89;
      }

      v114 = v172;
      (*(v65 + 32))(v172, v45, v64);
      v116 = sub_1000632E4();
      v56 = v52;
      if (*v115)
      {
        v117 = v115;
        sub_100063444();
        sub_1000632C4();

        v118 = *v117;
        v119 = swift_isUniquelyReferenced_nonNull_native();
        *v117 = v118;
        if ((v119 & 1) == 0)
        {
          v118 = sub_10001C138(0, v118[2] + 1, 1, v118, &qword_100085608, &qword_100066EC8, &type metadata accessor for URLQueryItem);
          *v117 = v118;
        }

        v121 = v118[2];
        v120 = v118[3];
        if (v121 >= v120 >> 1)
        {
          v118 = sub_10001C138((v120 > 1), v121 + 1, 1, v118, &qword_100085608, &qword_100066EC8, &type metadata accessor for URLQueryItem);
          *v117 = v118;
        }

        v57 = v190;
        v118[2] = v121 + 1;
        (*(v183 + 32))(v118 + ((*(v183 + 80) + 32) & ~*(v183 + 80)) + *(v183 + 72) * v121, v60, v184);
        v116(v192, 0);
        (*(v65 + 8))(v172, v64);
        sub_10000494C(v187, &qword_100084BC0, qword_100064C60);
        v55 = v188;
        goto LABEL_89;
      }

      v116(v192, 0);
      (*(v65 + 8))(v114, v64);
      sub_10000494C(v63, &qword_100084BC0, qword_100064C60);
      goto LABEL_87;
    }

    if (EnumCaseMultiPayload == 2)
    {
      v66 = v190;
      v67 = v176;
      sub_100015F0C(v50, v176, &qword_100085600, &qword_100066EC0);
      sub_100063314();
      v68 = v59;
      sub_100016718(v67, v59, &qword_100085600, &qword_100066EC0);
      v69 = v182;
      v70 = v179;
      v71 = (*(v182 + 48))(v59, 1, v179);
      v55 = v188;
      if (v71 == 1)
      {
        sub_10000494C(v67, &qword_100085600, &qword_100066EC0);
        sub_10000494C(v59, &qword_100085600, &qword_100066EC0);
        v57 = v66;
        v56 = v52;
        goto LABEL_89;
      }

      v122 = v168;
      (*(v69 + 32))(v168, v68, v70);
      v123 = sub_1000632E4();
      if (*v124)
      {
        v125 = v124;
        v187 = v123;
        sub_100063584();
        sub_1000632C4();

        v126 = *v125;
        v127 = swift_isUniquelyReferenced_nonNull_native();
        *v125 = v126;
        if ((v127 & 1) == 0)
        {
          v126 = sub_10001C138(0, v126[2] + 1, 1, v126, &qword_100085608, &qword_100066EC8, &type metadata accessor for URLQueryItem);
          *v125 = v126;
        }

        v128 = v176;
        v56 = v53;
        v130 = v126[2];
        v129 = v126[3];
        v57 = v190;
        if (v130 >= v129 >> 1)
        {
          v126 = sub_10001C138((v129 > 1), v130 + 1, 1, v126, &qword_100085608, &qword_100066EC8, &type metadata accessor for URLQueryItem);
          *v125 = v126;
        }

        v126[2] = v130 + 1;
        (*(v183 + 32))(v126 + ((*(v183 + 80) + 32) & ~*(v183 + 80)) + *(v183 + 72) * v130, v164, v184);
        v187(v192, 0);
        (*(v182 + 8))(v168, v70);
        sub_10000494C(v128, &qword_100085600, &qword_100066EC0);
        goto LABEL_89;
      }

      v123(v192, 0);
      (*(v69 + 8))(v122, v70);
      sub_10000494C(v176, &qword_100085600, &qword_100066EC0);
      v56 = v52;
LABEL_88:
      v57 = v190;
      goto LABEL_89;
    }

    v98 = *(v50 + 1);
    v99 = sub_1000021D4(&qword_100084BC8, &qword_1000669D0);
    v100 = *(v99 + 64);
    v101 = v181;
    sub_100015F0C(&v50[*(v99 + 48)], v181, &qword_1000855F8, &qword_100066EB8);
    sub_100015F0C(&v50[v100], v180, &qword_1000855F0, &qword_100066EB0);
    v56 = v52;
    sub_100063314();
    if (v98)
    {
      v103 = sub_1000632E4();
      if (*v102)
      {
        v104 = v102;
        sub_1000632C4();

        v105 = *v104;
        v106 = swift_isUniquelyReferenced_nonNull_native();
        *v104 = v105;
        if ((v106 & 1) == 0)
        {
          v105 = sub_10001C138(0, v105[2] + 1, 1, v105, &qword_100085608, &qword_100066EC8, &type metadata accessor for URLQueryItem);
          *v104 = v105;
        }

        v108 = v105[2];
        v107 = v105[3];
        if (v108 >= v107 >> 1)
        {
          v105 = sub_10001C138((v107 > 1), v108 + 1, 1, v105, &qword_100085608, &qword_100066EC8, &type metadata accessor for URLQueryItem);
          *v104 = v105;
        }

        v105[2] = v108 + 1;
        (*(v183 + 32))(v105 + ((*(v183 + 80) + 32) & ~*(v183 + 80)) + *(v183 + 72) * v108, v167, v184);
        v103(v192, 0);
      }

      else
      {

        v103(v192, 0);
      }

      v101 = v181;
    }

    v131 = v170;
    sub_100016718(v101, v170, &qword_1000855F8, &qword_100066EB8);
    if ((*(v171 + 48))(v131, 1, v173) == 1)
    {
      sub_10000494C(v131, &qword_1000855F8, &qword_100066EB8);
LABEL_76:
      v144 = v174;
      v145 = v180;
      sub_100016718(v180, v174, &qword_1000855F0, &qword_100066EB0);
      v146 = v175;
      if ((*(v175 + 48))(v144, 1, v61) == 1)
      {
        sub_10000494C(v145, &qword_1000855F0, &qword_100066EB0);
        sub_10000494C(v181, &qword_1000855F8, &qword_100066EB8);
        v147 = v144;
        v148 = &qword_1000855F0;
        v149 = &qword_100066EB0;
      }

      else
      {
        v150 = v169;
        (*(v146 + 32))(v169, v144, v61);
        v152 = sub_1000632E4();
        if (*v151)
        {
          v153 = v151;
          v191 = sub_100064144();
          sub_100064584();
          sub_1000632C4();

          v154 = *v153;
          v155 = swift_isUniquelyReferenced_nonNull_native();
          *v153 = v154;
          if ((v155 & 1) == 0)
          {
            v154 = sub_10001C138(0, v154[2] + 1, 1, v154, &qword_100085608, &qword_100066EC8, &type metadata accessor for URLQueryItem);
            *v153 = v154;
          }

          v156 = v180;
          v158 = v154[2];
          v157 = v154[3];
          if (v158 >= v157 >> 1)
          {
            v154 = sub_10001C138((v157 > 1), v158 + 1, 1, v154, &qword_100085608, &qword_100066EC8, &type metadata accessor for URLQueryItem);
            *v153 = v154;
          }

          v154[2] = v158 + 1;
          (*(v183 + 32))(v154 + ((*(v183 + 80) + 32) & ~*(v183 + 80)) + *(v183 + 72) * v158, v165, v184);
          v152(v192, 0);
          (*(v175 + 8))(v169, v61);
          v159 = v156;
        }

        else
        {
          v152(v192, 0);
          (*(v146 + 8))(v150, v61);
          v159 = v180;
        }

        sub_10000494C(v159, &qword_1000855F0, &qword_100066EB0);
        v148 = &qword_1000855F8;
        v149 = &qword_100066EB8;
        v147 = v181;
      }

      sub_10000494C(v147, v148, v149);
LABEL_87:
      v55 = v188;
      goto LABEL_88;
    }

    v132 = v166;
    sub_10001BF8C(v131, v166);
    v133 = sub_10001C314(v132);
    if (v133 != 12)
    {
      v134 = v133;
      v136 = sub_1000632E4();
      if (*v135)
      {
        v137 = v135;
        sub_10001BA34(v134);
        v138 = v161;
        sub_1000632C4();

        v139 = *v137;
        v140 = swift_isUniquelyReferenced_nonNull_native();
        *v137 = v139;
        if ((v140 & 1) == 0)
        {
          v139 = sub_10001C138(0, v139[2] + 1, 1, v139, &qword_100085608, &qword_100066EC8, &type metadata accessor for URLQueryItem);
          *v137 = v139;
        }

        v142 = v139[2];
        v141 = v139[3];
        if (v142 >= v141 >> 1)
        {
          v139 = sub_10001C138((v141 > 1), v142 + 1, 1, v139, &qword_100085608, &qword_100066EC8, &type metadata accessor for URLQueryItem);
          *v137 = v139;
        }

        v139[2] = v142 + 1;
        (*(v183 + 32))(v139 + ((*(v183 + 80) + 32) & ~*(v183 + 80)) + *(v183 + 72) * v142, v138, v184);
        v136(v192, 0);
        v143 = v166;
        goto LABEL_75;
      }

      v136(v192, 0);
    }

    v143 = v132;
LABEL_75:
    sub_10001C484(v143, type metadata accessor for CanvasContentInputType);
    goto LABEL_76;
  }

  if (EnumCaseMultiPayload <= 5)
  {
    v56 = v52;
    if (EnumCaseMultiPayload == 4)
    {
      v72 = v182;
      v73 = v172;
      v74 = v179;
      (*(v182 + 32))(v172, v50, v179);
      sub_100063314();
      v76 = sub_1000632E4();
      if (*v75)
      {
        v77 = v75;
        sub_100063584();
        v78 = v163;
        sub_1000632C4();

        v79 = *v77;
        v80 = swift_isUniquelyReferenced_nonNull_native();
        *v77 = v79;
        if ((v80 & 1) == 0)
        {
          v79 = sub_10001C138(0, v79[2] + 1, 1, v79, &qword_100085608, &qword_100066EC8, &type metadata accessor for URLQueryItem);
          *v77 = v79;
        }

        v82 = v79[2];
        v81 = v79[3];
        if (v82 >= v81 >> 1)
        {
          v79 = sub_10001C138((v81 > 1), v82 + 1, 1, v79, &qword_100085608, &qword_100066EC8, &type metadata accessor for URLQueryItem);
          *v77 = v79;
        }

        v79[2] = v82 + 1;
        (*(v183 + 32))(v79 + ((*(v183 + 80) + 32) & ~*(v183 + 80)) + *(v183 + 72) * v82, v78, v184);
        v76(v192, 0);
        (*(v182 + 8))(v73, v74);
      }

      else
      {
        v76(v192, 0);
        (*(v72 + 8))(v73, v74);
      }

      v57 = v190;
      v55 = v188;
      goto LABEL_89;
    }

    sub_100063314();
    v85 = sub_1000632E4();
    v57 = v190;
    v55 = v188;
    if (*v109)
    {
      v86 = v109;
      v87 = v164;
      sub_1000632C4();

      v110 = *v86;
      v111 = swift_isUniquelyReferenced_nonNull_native();
      *v86 = v110;
      if ((v111 & 1) == 0)
      {
LABEL_91:
        v110 = sub_10001C138(0, v110[2] + 1, 1, v110, &qword_100085608, &qword_100066EC8, &type metadata accessor for URLQueryItem);
        *v86 = v110;
      }

LABEL_40:
      v113 = v110[2];
      v112 = v110[3];
      if (v113 >= v112 >> 1)
      {
        v110 = sub_10001C138((v112 > 1), v113 + 1, 1, v110, &qword_100085608, &qword_100066EC8, &type metadata accessor for URLQueryItem);
        *v86 = v110;
      }

      v110[2] = v113 + 1;
      (*(v183 + 32))(v110 + ((*(v183 + 80) + 32) & ~*(v183 + 80)) + *(v183 + 72) * v113, v87, v184);
      v85(v192, 0);
      goto LABEL_89;
    }

LABEL_57:
    v85(v192, 0);
    goto LABEL_89;
  }

  v55 = v188;
  v56 = v52;
  if (EnumCaseMultiPayload == 6)
  {
    v83 = *v50;
    sub_100063314();
    v57 = v190;
    if (v83 == 4)
    {
      goto LABEL_89;
    }

    v85 = sub_1000632E4();
    if (*v84)
    {
      v86 = v84;
      v87 = v162;
      sub_1000632C4();

      v110 = *v86;
      v160 = swift_isUniquelyReferenced_nonNull_native();
      *v86 = v110;
      if ((v160 & 1) == 0)
      {
        goto LABEL_91;
      }

      goto LABEL_40;
    }

    goto LABEL_57;
  }

  v57 = v190;
  if (EnumCaseMultiPayload == 7)
  {
    (*(v188 + 8))(v52, v190);
    sub_10001C484(v50, type metadata accessor for AppLaunchAction);
    return (*(v177 + 56))(v189, 1, 1, v178);
  }

  sub_100063314();
LABEL_89:
  sub_100063304();
  return (*(v55 + 8))(v56, v57);
}

uint64_t type metadata accessor for AppLaunchAction(uint64_t a1)
{
  result = qword_100085680;
  if (!qword_100085680)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10001B410(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x68746C616568;
  }

  else
  {
    v3 = 0x6163696669746F6ELL;
  }

  if (v2)
  {
    v4 = 0xED0000736E6F6974;
  }

  else
  {
    v4 = 0xE600000000000000;
  }

  if (*a2)
  {
    v5 = 0x68746C616568;
  }

  else
  {
    v5 = 0x6163696669746F6ELL;
  }

  if (*a2)
  {
    v6 = 0xE600000000000000;
  }

  else
  {
    v6 = 0xED0000736E6F6974;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_100064594();
  }

  return v8 & 1;
}

Swift::Int sub_10001B4C0()
{
  sub_1000645B4();
  sub_1000642C4();

  return sub_1000645E4();
}

uint64_t sub_10001B54C(uint64_t a1)
{
  sub_1000642C4();
}

Swift::Int sub_10001B5C4(uint64_t a1)
{
  sub_1000645B4();
  sub_1000642C4();

  return sub_1000645E4();
}

uint64_t sub_10001B64C@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v8._countAndFlagsBits = *a1;
  v3 = a1[1];
  v4._rawValue = &off_100082470;
  v8._object = v3;
  v5 = sub_100064494(v4, v8);

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *a2 = v7;
  return result;
}

void sub_10001B6AC(uint64_t *a1@<X8>)
{
  v2 = 0x6163696669746F6ELL;
  if (*v1)
  {
    v2 = 0x68746C616568;
  }

  v3 = 0xED0000736E6F6974;
  if (*v1)
  {
    v3 = 0xE600000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

Swift::Int sub_10001B700()
{
  sub_1000645B4();
  sub_1000642C4();

  return sub_1000645E4();
}

uint64_t sub_10001B7D8(uint64_t a1)
{
  sub_1000642C4();
}

Swift::Int sub_10001B89C(uint64_t a1)
{
  sub_1000645B4();
  sub_1000642C4();

  return sub_1000645E4();
}

unint64_t sub_10001B970@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10001E604(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_10001B9A0(uint64_t *a1@<X8>)
{
  v2 = 0xE700000000000000;
  v3 = 0x6C6172656E6567;
  v4 = 0xE700000000000000;
  v5 = 0x79636176697270;
  if (*v1 != 2)
  {
    v5 = 0x796C616E41707061;
    v4 = 0xEC00000073636974;
  }

  if (*v1)
  {
    v3 = 0x6163696669746F6ELL;
    v2 = 0xED0000736E6F6974;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

uint64_t sub_10001BA34(unsigned __int8 a1)
{
  if (a1 > 5u)
  {
    v5 = 0x6E6F697461636F6CLL;
    v6 = 0x4D664F6574617473;
    if (a1 != 10)
    {
      v6 = 0x7478655468636972;
    }

    if (a1 != 9)
    {
      v5 = v6;
    }

    v7 = 0x6172656D6163;
    v8 = 0x6C64496F69647561;
    if (a1 != 7)
    {
      v8 = 0x7463416F69647561;
    }

    if (a1 != 6)
    {
      v7 = v8;
    }

    if (a1 <= 8u)
    {
      return v7;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v1 = 0x7475706E496F6ELL;
    v2 = 0x6B63695065746164;
    v3 = 0x6974736567677573;
    if (a1 != 4)
    {
      v3 = 0x736F746F6870;
    }

    if (a1 != 3)
    {
      v2 = v3;
    }

    if (a1)
    {
      v1 = 0x6472616F6279656BLL;
    }

    if (a1 <= 2u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_10001BBDC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100063454();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v6);
  v44 = &v33 - v10;
  result = __chkstk_darwin(v9);
  v13 = &v33 - v12;
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v14 = 0;
  v15 = *(a1 + 56);
  v33 = a1 + 56;
  v16 = 1 << *(a1 + 32);
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  else
  {
    v17 = -1;
  }

  v18 = v17 & v15;
  v19 = (v16 + 63) >> 6;
  v40 = v5 + 32;
  v42 = a2 + 56;
  v43 = v5 + 16;
  v20 = (v5 + 8);
  v34 = v19;
  v35 = &v33 - v12;
  v36 = v5;
  v37 = a1;
  if (v18)
  {
    while (1)
    {
      v21 = __clz(__rbit64(v18));
      v39 = (v18 - 1) & v18;
LABEL_13:
      v24 = *(a1 + 48);
      v41 = *(v5 + 72);
      v25 = *(v5 + 16);
      v25(v13, v24 + v41 * (v21 | (v14 << 6)), v4);
      (*(v5 + 32))(v44, v13, v4);
      sub_10001E5BC(&unk_100085700, &type metadata accessor for URL, &protocol conformance descriptor for URL);
      v26 = sub_100064234();
      v27 = -1 << *(a2 + 32);
      v28 = v26 & ~v27;
      if (((*(v42 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v28) & 1) == 0)
      {
        break;
      }

      v38 = v20 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v29 = a2;
      v30 = ~v27;
      while (1)
      {
        v25(v8, *(v29 + 48) + v28 * v41, v4);
        sub_10001E5BC(qword_100085778, &type metadata accessor for URL, &protocol conformance descriptor for URL);
        v31 = sub_100064274();
        v32 = *v20;
        (*v20)(v8, v4);
        if (v31)
        {
          break;
        }

        v28 = (v28 + 1) & v30;
        if (((*(v42 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v28) & 1) == 0)
        {
          v32(v44, v4);
          return 0;
        }
      }

      result = (v32)(v44, v4);
      a2 = v29;
      v5 = v36;
      a1 = v37;
      v19 = v34;
      v13 = v35;
      v18 = v39;
      if (!v39)
      {
        goto LABEL_8;
      }
    }

    (*v20)(v44, v4);
    return 0;
  }

LABEL_8:
  v22 = v14;
  while (1)
  {
    v14 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      break;
    }

    if (v14 >= v19)
    {
      return 1;
    }

    v23 = *(v33 + 8 * v14);
    ++v22;
    if (v23)
    {
      v21 = __clz(__rbit64(v23));
      v39 = (v23 - 1) & v23;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_10001BF8C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CanvasContentInputType(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

char *sub_10001BFF0(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000021D4(&qword_100084E68, &unk_100069A40);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[48 * v8])
    {
      memmove(v12, v13, 48 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_10001C138(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_1000021D4(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = j__malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v16) == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

uint64_t sub_10001C314(uint64_t a1)
{
  v2 = type metadata accessor for CanvasContentInputType(0);
  __chkstk_darwin(v2);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10001C4E4(a1, v4, type metadata accessor for CanvasContentInputType);
  result = swift_getEnumCaseMultiPayload();
  if (result > 5)
  {
    if (result > 8)
    {
      if ((result - 10) >= 2)
      {
        return 11;
      }

      else
      {
        return 12;
      }
    }

    else if (result != 6)
    {
      if (result == 7)
      {
        return 9;
      }

      else
      {
        return 10;
      }
    }
  }

  else if (result > 2)
  {
    if (result == 3)
    {
      return 0;
    }

    else if (result == 4)
    {
      return 3;
    }

    else
    {
      return 5;
    }
  }

  else if (result)
  {
    if (result == 1)
    {
      sub_10000494C(v4, &qword_100085600, &qword_100066EC0);
      return 4;
    }

    else if (*v4)
    {
      return 8;
    }

    else
    {
      return 7;
    }
  }

  else if (*v4)
  {
    return 2;
  }

  else
  {
    return 1;
  }

  return result;
}

uint64_t sub_10001C484(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10001C4E4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_10001C5A0(uint64_t a1)
{
  sub_10001C78C(319, &qword_100085690, &unk_100085698, &type metadata accessor for URL, sub_10001C7E0);
  if (v1 <= 0x3F)
  {
    sub_10001C78C(319, &qword_1000856A0, &unk_1000856A8, &type metadata for String, sub_10001C960);
    if (v2 <= 0x3F)
    {
      sub_10001C78C(319, &qword_1000856B0, &qword_1000856B8, &type metadata accessor for UUID, sub_10001C7E0);
      if (v3 <= 0x3F)
      {
        sub_10001C834(319);
        if (v4 <= 0x3F)
        {
          sub_10001C8E4(319, &qword_1000856D0, &type metadata accessor for UUID);
          if (v5 <= 0x3F)
          {
            sub_10001C930();
            if (v6 <= 0x3F)
            {
              sub_10001C78C(319, &qword_1000856E0, &unk_1000856E8, &type metadata for SettingsTab, sub_10001C960);
              if (v7 <= 0x3F)
              {
                sub_10001C8E4(319, &qword_1000856F0, sub_10001C9AC);
                if (v8 <= 0x3F)
                {
                  swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
                }
              }
            }
          }
        }
      }
    }
  }
}

void sub_10001C78C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = a5(0, a3, a4);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_10001C7E0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1000643A4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_10001C834(uint64_t a1)
{
  if (!qword_1000856C0)
  {
    sub_10000221C(&qword_1000856C8, &qword_100066EE8);
    sub_10000221C(&qword_1000855F8, &qword_100066EB8);
    sub_10000221C(&qword_1000855F0, &qword_100066EB0);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata3, &qword_1000856C0);
    }
  }
}

void sub_10001C8E4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void))
{
  if (!*a2)
  {
    v4 = a3(0);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

ValueMetadata *sub_10001C930()
{
  result = qword_1000856D8;
  if (!qword_1000856D8)
  {
    result = &type metadata for PermissionType;
    atomic_store(&type metadata for PermissionType, &qword_1000856D8);
  }

  return result;
}

void sub_10001C960(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = sub_1000643A4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_10001C9AC(uint64_t a1)
{
  if (!qword_1000856F8)
  {
    sub_100063454();
    sub_10001E5BC(&unk_100085700, &type metadata accessor for URL, &protocol conformance descriptor for URL);
    v1 = sub_100064354();
    if (!v2)
    {
      atomic_store(v1, &qword_1000856F8);
    }
  }
}

uint64_t getEnumTagSinglePayload for SettingsTab(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SettingsTab(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for JournalWidgetDemoMode.TimelineEntryAppearance(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for JournalWidgetDemoMode.TimelineEntryAppearance(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_10001CD00()
{
  result = qword_100085730;
  if (!qword_100085730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100085730);
  }

  return result;
}

unint64_t sub_10001CD58()
{
  result = qword_100085738;
  if (!qword_100085738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100085738);
  }

  return result;
}

uint64_t sub_10001CDAC(uint64_t a1, uint64_t a2)
{
  v187 = a1;
  v188 = a2;
  v158 = sub_100064154();
  v157 = *(v158 - 8);
  __chkstk_darwin(v158);
  v155 = &v154 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v166 = sub_1000021D4(&qword_100085740, &qword_100067078);
  __chkstk_darwin(v166);
  v162 = &v154 - v3;
  v165 = type metadata accessor for CanvasContentInputType(0);
  v164 = *(v165 - 8);
  __chkstk_darwin(v165);
  v171 = &v154 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v169 = sub_1000021D4(&qword_100085748, &qword_100067080);
  __chkstk_darwin(v169);
  v168 = &v154 - v5;
  v6 = sub_1000021D4(&qword_1000855F0, &qword_100066EB0);
  v7 = __chkstk_darwin(v6 - 8);
  v156 = &v154 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v7);
  v178 = &v154 - v10;
  __chkstk_darwin(v9);
  v177 = &v154 - v11;
  v12 = sub_1000021D4(&qword_1000855F8, &qword_100066EB8);
  v13 = __chkstk_darwin(v12 - 8);
  v160 = &v154 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v13);
  v179 = &v154 - v16;
  __chkstk_darwin(v15);
  v176 = &v154 - v17;
  v18 = sub_1000635A4();
  v180 = *(v18 - 8);
  v181 = v18;
  v19 = __chkstk_darwin(v18);
  v170 = &v154 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v161 = &v154 - v21;
  v22 = sub_1000021D4(&qword_100085600, &qword_100066EC0);
  __chkstk_darwin(v22 - 8);
  v186 = &v154 - v23;
  v185 = sub_1000021D4(&qword_100085750, &qword_100067088);
  __chkstk_darwin(v185);
  v184 = &v154 - v24;
  v167 = sub_100063454();
  v183 = *(v167 - 8);
  __chkstk_darwin(v167);
  v159 = &v154 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_1000021D4(&qword_100084BC0, qword_100064C60);
  __chkstk_darwin(v26 - 8);
  v163 = &v154 - v27;
  v182 = sub_1000021D4(&qword_100085758, &qword_100067090);
  __chkstk_darwin(v182);
  v29 = &v154 - v28;
  v30 = type metadata accessor for AppLaunchAction(0);
  v31 = __chkstk_darwin(v30);
  v174 = (&v154 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0));
  v33 = __chkstk_darwin(v31);
  v35 = &v154 - v34;
  v36 = __chkstk_darwin(v33);
  v173 = &v154 - v37;
  v38 = __chkstk_darwin(v36);
  v175 = &v154 - v39;
  v40 = __chkstk_darwin(v38);
  v42 = &v154 - v41;
  v43 = __chkstk_darwin(v40);
  v45 = &v154 - v44;
  v46 = __chkstk_darwin(v43);
  v48 = (&v154 - v47);
  __chkstk_darwin(v46);
  v50 = &v154 - v49;
  v51 = sub_1000021D4(&qword_100085760, &qword_100067098);
  v52 = __chkstk_darwin(v51 - 8);
  v54 = &v154 - v53;
  v55 = &v154 + *(v52 + 56) - v53;
  sub_10001C4E4(v187, &v154 - v53, type metadata accessor for AppLaunchAction);
  v56 = v188;
  v188 = v55;
  sub_10001C4E4(v56, v55, type metadata accessor for AppLaunchAction);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 3)
  {
    v62 = v42;
    v63 = v182;
    v64 = v183;
    v172 = v54;
    v65 = v185;
    v66 = v186;
    v67 = v184;
    if (EnumCaseMultiPayload <= 1)
    {
      if (!EnumCaseMultiPayload)
      {
        v54 = v172;
        sub_10001C4E4(v172, v50, type metadata accessor for AppLaunchAction);
        v68 = v188;
        if (swift_getEnumCaseMultiPayload())
        {
          sub_10000494C(v50, &qword_100084BC0, qword_100064C60);
          goto LABEL_59;
        }

        v111 = *(v63 + 48);
        v112 = v29;
        sub_100015F0C(v50, v29, &qword_100084BC0, qword_100064C60);
        sub_100015F0C(v68, &v29[v111], &qword_100084BC0, qword_100064C60);
        v113 = *(v64 + 48);
        v114 = v167;
        if (v113(v29, 1, v167) == 1)
        {
          if (v113(&v29[v111], 1, v114) == 1)
          {
            sub_10000494C(v29, &qword_100084BC0, qword_100064C60);
            goto LABEL_87;
          }
        }

        else
        {
          v119 = v163;
          sub_100016718(v29, v163, &qword_100084BC0, qword_100064C60);
          if (v113(&v29[v111], 1, v114) != 1)
          {
            v136 = &v29[v111];
            v137 = v159;
            (*(v64 + 32))(v159, v136, v114);
            sub_10001E5BC(qword_100085778, &type metadata accessor for URL, &protocol conformance descriptor for URL);
            v138 = sub_100064274();
            v139 = *(v64 + 8);
            v139(v137, v114);
            v139(v119, v114);
            sub_10000494C(v112, &qword_100084BC0, qword_100064C60);
            if (v138)
            {
              goto LABEL_87;
            }

            goto LABEL_99;
          }

          (*(v64 + 8))(v119, v114);
        }

        sub_10000494C(v29, &qword_100085758, &qword_100067090);
        goto LABEL_99;
      }

      v54 = v172;
      sub_10001C4E4(v172, v48, type metadata accessor for AppLaunchAction);
      v86 = *v48;
      v85 = v48[1];
      v87 = v188;
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        goto LABEL_57;
      }

      v88 = v87[1];
      if (v85)
      {
        if (v88)
        {
          if (v86 != *v87 || v85 != v88)
          {
            v125 = sub_100064594();

            if (v125)
            {
              goto LABEL_87;
            }

            goto LABEL_99;
          }

LABEL_29:

          goto LABEL_87;
        }
      }

      else if (!v88)
      {
        goto LABEL_87;
      }

      goto LABEL_99;
    }

    if (EnumCaseMultiPayload == 2)
    {
      sub_10001C4E4(v172, v45, type metadata accessor for AppLaunchAction);
      v69 = v188;
      if (swift_getEnumCaseMultiPayload() != 2)
      {
        sub_10000494C(v45, &qword_100085600, &qword_100066EC0);
        v54 = v172;
        goto LABEL_59;
      }

      v70 = *(v65 + 48);
      sub_100015F0C(v45, v67, &qword_100085600, &qword_100066EC0);
      sub_100015F0C(v69, v67 + v70, &qword_100085600, &qword_100066EC0);
      v71 = v180;
      v72 = v181;
      v73 = *(v180 + 48);
      if (v73(v67, 1, v181) == 1)
      {
        v74 = v73(v67 + v70, 1, v72);
        v75 = v172;
        if (v74 == 1)
        {
          sub_10000494C(v67, &qword_100085600, &qword_100066EC0);
LABEL_80:
          v124 = v75;
LABEL_88:
          sub_10001C484(v124, type metadata accessor for AppLaunchAction);
          v61 = 1;
          return v61 & 1;
        }
      }

      else
      {
        sub_100016718(v67, v66, &qword_100085600, &qword_100066EC0);
        if (v73(v67 + v70, 1, v72) != 1)
        {
          v120 = v67 + v70;
          v121 = v161;
          (*(v71 + 32))(v161, v120, v72);
          sub_10001E5BC(&qword_100085770, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
          v122 = sub_100064274();
          v123 = *(v71 + 8);
          v123(v121, v72);
          v123(v66, v72);
          sub_10000494C(v67, &qword_100085600, &qword_100066EC0);
          v75 = v172;
          if (v122)
          {
            goto LABEL_80;
          }

LABEL_85:
          sub_10001C484(v75, type metadata accessor for AppLaunchAction);
          goto LABEL_60;
        }

        (*(v71 + 8))(v66, v72);
        v75 = v172;
      }

      v115 = &qword_100085750;
      v116 = &qword_100067088;
      v117 = v67;
LABEL_84:
      sub_10000494C(v117, v115, v116);
      goto LABEL_85;
    }

    v54 = v172;
    v89 = v62;
    sub_10001C4E4(v172, v62, type metadata accessor for AppLaunchAction);
    v90 = *v89;
    v91 = v89[1];
    v92 = sub_1000021D4(&qword_100084BC8, &qword_1000669D0);
    v93 = *(v92 + 48);
    v94 = *(v92 + 64);
    v95 = v188;
    if (swift_getEnumCaseMultiPayload() != 3)
    {

      sub_10000494C(v89 + v94, &qword_1000855F0, &qword_100066EB0);
      sub_10000494C(v89 + v93, &qword_1000855F8, &qword_100066EB8);
      goto LABEL_59;
    }

    v96 = v95[1];
    v187 = *v95;
    sub_100015F0C(v89 + v93, v176, &qword_1000855F8, &qword_100066EB8);
    sub_100015F0C(v89 + v94, v177, &qword_1000855F0, &qword_100066EB0);
    sub_100015F0C(v95 + v93, v179, &qword_1000855F8, &qword_100066EB8);
    sub_100015F0C(v95 + v94, v178, &qword_1000855F0, &qword_100066EB0);
    if (v91)
    {
      v97 = v171;
      if (v96)
      {
        v98 = v172;
        v100 = v176;
        v99 = v177;
        v101 = v179;
        if (v90 == v187 && v91 == v96)
        {

          v103 = v168;
          v102 = v169;
          goto LABEL_91;
        }

        v127 = sub_100064594();

        v103 = v168;
        v102 = v169;
        if (v127)
        {
LABEL_91:
          v128 = *(v102 + 48);
          sub_100016718(v100, v103, &qword_1000855F8, &qword_100066EB8);
          sub_100016718(v101, v103 + v128, &qword_1000855F8, &qword_100066EB8);
          v129 = *(v164 + 48);
          v130 = v165;
          if (v129(v103, 1, v165) == 1)
          {
            v131 = v129(v103 + v128, 1, v130);
            v132 = v166;
            if (v131 == 1)
            {
              sub_10000494C(v103, &qword_1000855F8, &qword_100066EB8);
              v133 = v99;
              goto LABEL_101;
            }
          }

          else
          {
            v134 = v160;
            sub_100016718(v103, v160, &qword_1000855F8, &qword_100066EB8);
            v135 = v129(v103 + v128, 1, v130);
            v132 = v166;
            if (v135 != 1)
            {
              sub_10001BF8C(v103 + v128, v97);
              v140 = sub_100035070(v134, v97);
              sub_10001C484(v97, type metadata accessor for CanvasContentInputType);
              sub_10001C484(v134, type metadata accessor for CanvasContentInputType);
              sub_10000494C(v103, &qword_1000855F8, &qword_100066EB8);
              v133 = v99;
              if (v140)
              {
LABEL_101:
                v141 = *(v132 + 48);
                v142 = v162;
                sub_100016718(v133, v162, &qword_1000855F0, &qword_100066EB0);
                v143 = v178;
                v144 = v142;
                sub_100016718(v178, v142 + v141, &qword_1000855F0, &qword_100066EB0);
                v145 = v157;
                v146 = *(v157 + 48);
                v147 = v158;
                if (v146(v142, 1, v158) == 1)
                {
                  sub_10000494C(v143, &qword_1000855F0, &qword_100066EB0);
                  sub_10000494C(v179, &qword_1000855F8, &qword_100066EB8);
                  v148 = v162;
                  sub_10000494C(v133, &qword_1000855F0, &qword_100066EB0);
                  sub_10000494C(v100, &qword_1000855F8, &qword_100066EB8);
                  if (v146(v148 + v141, 1, v147) == 1)
                  {
                    sub_10000494C(v148, &qword_1000855F0, &qword_100066EB0);
                    v124 = v172;
                    goto LABEL_88;
                  }
                }

                else
                {
                  v149 = v142;
                  v150 = v156;
                  sub_100016718(v149, v156, &qword_1000855F0, &qword_100066EB0);
                  if (v146(v144 + v141, 1, v147) != 1)
                  {
                    v151 = v144 + v141;
                    v152 = v155;
                    (*(v145 + 32))(v155, v151, v147);
                    sub_10001E5BC(&qword_100085768, &type metadata accessor for WidgetFamily, &protocol conformance descriptor for WidgetFamily);
                    LODWORD(v188) = sub_100064274();
                    v153 = *(v145 + 8);
                    v153(v152, v147);
                    sub_10000494C(v178, &qword_1000855F0, &qword_100066EB0);
                    sub_10000494C(v179, &qword_1000855F8, &qword_100066EB8);
                    sub_10000494C(v133, &qword_1000855F0, &qword_100066EB0);
                    sub_10000494C(v100, &qword_1000855F8, &qword_100066EB8);
                    v153(v150, v147);
                    sub_10000494C(v162, &qword_1000855F0, &qword_100066EB0);
                    v124 = v172;
                    if (v188)
                    {
                      goto LABEL_88;
                    }

LABEL_107:
                    sub_10001C484(v124, type metadata accessor for AppLaunchAction);
                    goto LABEL_60;
                  }

                  sub_10000494C(v178, &qword_1000855F0, &qword_100066EB0);
                  sub_10000494C(v179, &qword_1000855F8, &qword_100066EB8);
                  v148 = v162;
                  sub_10000494C(v133, &qword_1000855F0, &qword_100066EB0);
                  sub_10000494C(v100, &qword_1000855F8, &qword_100066EB8);
                  (*(v145 + 8))(v150, v147);
                }

                sub_10000494C(v148, &qword_100085740, &qword_100067078);
                v124 = v172;
                goto LABEL_107;
              }

LABEL_97:
              sub_10000494C(v178, &qword_1000855F0, &qword_100066EB0);
              sub_10000494C(v101, &qword_1000855F8, &qword_100066EB8);
              sub_10000494C(v133, &qword_1000855F0, &qword_100066EB0);
              sub_10000494C(v100, &qword_1000855F8, &qword_100066EB8);
              sub_10001C484(v172, type metadata accessor for AppLaunchAction);
              goto LABEL_60;
            }

            sub_10001C484(v134, type metadata accessor for CanvasContentInputType);
          }

          sub_10000494C(v103, &qword_100085748, &qword_100067080);
          v133 = v99;
          goto LABEL_97;
        }

LABEL_83:
        sub_10000494C(v178, &qword_1000855F0, &qword_100066EB0);
        v75 = v98;
        sub_10000494C(v101, &qword_1000855F8, &qword_100066EB8);
        sub_10000494C(v99, &qword_1000855F0, &qword_100066EB0);
        v117 = v100;
        v115 = &qword_1000855F8;
        v116 = &qword_100066EB8;
        goto LABEL_84;
      }

      v98 = v172;
      v100 = v176;
      v99 = v177;
      v101 = v179;
    }

    else
    {
      v97 = v171;
      v98 = v172;
      v100 = v176;
      v99 = v177;
      v101 = v179;
      v103 = v168;
      v102 = v169;
      if (!v96)
      {
        goto LABEL_91;
      }
    }

    goto LABEL_83;
  }

  if (EnumCaseMultiPayload <= 5)
  {
    if (EnumCaseMultiPayload == 4)
    {
      v76 = v175;
      sub_10001C4E4(v54, v175, type metadata accessor for AppLaunchAction);
      v77 = v188;
      if (swift_getEnumCaseMultiPayload() == 4)
      {
        v79 = v180;
        v78 = v181;
        v80 = v170;
        (*(v180 + 32))(v170, v77, v181);
        v61 = sub_100063594();
        v81 = *(v79 + 8);
        v81(v80, v78);
        v81(v76, v78);
        goto LABEL_19;
      }

      (*(v180 + 8))(v76, v181);
      goto LABEL_59;
    }

    v104 = v173;
    sub_10001C4E4(v54, v173, type metadata accessor for AppLaunchAction);
    v105 = v188;
    if (swift_getEnumCaseMultiPayload() != 5)
    {
      goto LABEL_59;
    }

    v106 = *v105;
    if (*v104)
    {
      v107 = 0x68746C616568;
    }

    else
    {
      v107 = 0x6163696669746F6ELL;
    }

    if (*v104)
    {
      v108 = 0xE600000000000000;
    }

    else
    {
      v108 = 0xED0000736E6F6974;
    }

    if (v106)
    {
      v109 = 0x68746C616568;
    }

    else
    {
      v109 = 0x6163696669746F6ELL;
    }

    if (v106)
    {
      v110 = 0xE600000000000000;
    }

    else
    {
      v110 = 0xED0000736E6F6974;
    }

    if (v107 != v109 || v108 != v110)
    {
      v118 = sub_100064594();

      if (v118)
      {
        goto LABEL_87;
      }

      goto LABEL_99;
    }

    goto LABEL_29;
  }

  if (EnumCaseMultiPayload == 6)
  {
    sub_10001C4E4(v54, v35, type metadata accessor for AppLaunchAction);
    v82 = *v35;
    v83 = v188;
    if (swift_getEnumCaseMultiPayload() != 6)
    {
      goto LABEL_59;
    }

    v84 = *v83;
    if (v82 == 4)
    {
      if (v84 != 4)
      {
        goto LABEL_99;
      }

LABEL_87:
      v124 = v54;
      goto LABEL_88;
    }

    if (v84 != 4 && (sub_10005D1D0(v82, v84) & 1) != 0)
    {
      goto LABEL_87;
    }

LABEL_99:
    sub_10001C484(v54, type metadata accessor for AppLaunchAction);
    goto LABEL_60;
  }

  if (EnumCaseMultiPayload != 7)
  {
    if (swift_getEnumCaseMultiPayload() == 8)
    {
      goto LABEL_87;
    }

LABEL_59:
    sub_10000494C(v54, &qword_100085760, &qword_100067098);
LABEL_60:
    v61 = 0;
    return v61 & 1;
  }

  v58 = v174;
  sub_10001C4E4(v54, v174, type metadata accessor for AppLaunchAction);
  v59 = *v58;
  v60 = v188;
  if (swift_getEnumCaseMultiPayload() != 7)
  {
LABEL_57:

    goto LABEL_59;
  }

  v61 = sub_10001BBDC(v59, *v60);

LABEL_19:
  sub_10001C484(v54, type metadata accessor for AppLaunchAction);
  return v61 & 1;
}

uint64_t sub_10001E5BC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_10001E604(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_1000824C0;
  v6._object = a2;
  v4 = sub_100064494(v3, v6);

  if (v4 >= 4)
  {
    return 4;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_10001E658(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = sub_100064094();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_10001E6E0(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  v8 = sub_100064094();
  v9 = *(v8 - 8);
  v10 = *(v9 + 84);
  v11 = *(v9 + 80);
  if (v10 <= v7)
  {
    v12 = v7;
  }

  else
  {
    v12 = *(v9 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v13 = *(v6 + 64) + v11;
  if (a2 <= v12)
  {
    goto LABEL_28;
  }

  v14 = ((*(*(v8 - 8) + 64) + v11 + (v13 & ~v11)) & ~v11) + *(*(v8 - 8) + 64);
  v15 = 8 * v14;
  if (v14 <= 3)
  {
    v17 = ((a2 - v12 + ~(-1 << v15)) >> v15) + 1;
    if (HIWORD(v17))
    {
      v16 = *(a1 + v14);
      if (!v16)
      {
        goto LABEL_27;
      }

      goto LABEL_14;
    }

    if (v17 > 0xFF)
    {
      v16 = *(a1 + v14);
      if (!*(a1 + v14))
      {
        goto LABEL_27;
      }

      goto LABEL_14;
    }

    if (v17 < 2)
    {
LABEL_27:
      if (v12)
      {
LABEL_28:
        if (v7 >= v10)
        {
          v23 = *(v6 + 48);

          return v23(a1, v7, v5);
        }

        else
        {
          v21 = *(v9 + 48);

          return v21((a1 + v13) & ~v11);
        }
      }

      return 0;
    }
  }

  v16 = *(a1 + v14);
  if (!*(a1 + v14))
  {
    goto LABEL_27;
  }

LABEL_14:
  v18 = (v16 - 1) << v15;
  if (v14 > 3)
  {
    v18 = 0;
  }

  if (v14)
  {
    if (v14 <= 3)
    {
      v19 = v14;
    }

    else
    {
      v19 = 4;
    }

    if (v19 > 2)
    {
      if (v19 == 3)
      {
        v20 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v20 = *a1;
      }
    }

    else if (v19 == 1)
    {
      v20 = *a1;
    }

    else
    {
      v20 = *a1;
    }
  }

  else
  {
    v20 = 0;
  }

  return v12 + (v20 | v18) + 1;
}

void sub_10001E950(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(a4 + 16);
  v8 = *(v7 - 8);
  v24 = v8;
  v9 = *(v8 + 84);
  v10 = *(sub_100064094() - 8);
  v11 = *(v10 + 84);
  if (v11 <= v9)
  {
    v12 = v9;
  }

  else
  {
    v12 = *(v10 + 84);
  }

  v13 = *(v10 + 80);
  v14 = *(v8 + 64) + v13;
  v15 = ((*(v10 + 64) + v13 + (v14 & ~v13)) & ~v13) + *(v10 + 64);
  if (a3 <= v12)
  {
    v16 = 0;
  }

  else if (v15 <= 3)
  {
    v19 = ((a3 - v12 + ~(-1 << (8 * v15))) >> (8 * v15)) + 1;
    if (HIWORD(v19))
    {
      v16 = 4;
    }

    else
    {
      if (v19 < 0x100)
      {
        v20 = 1;
      }

      else
      {
        v20 = 2;
      }

      if (v19 >= 2)
      {
        v16 = v20;
      }

      else
      {
        v16 = 0;
      }
    }
  }

  else
  {
    v16 = 1;
  }

  if (v12 < a2)
  {
    v17 = ~v12 + a2;
    if (v15 < 4)
    {
      v18 = (v17 >> (8 * v15)) + 1;
      if (v15)
      {
        v21 = v17 & ~(-1 << (8 * v15));
        bzero(a1, v15);
        if (v15 != 3)
        {
          if (v15 == 2)
          {
            *a1 = v21;
            if (v16 > 1)
            {
LABEL_46:
              if (v16 == 2)
              {
                *&a1[v15] = v18;
              }

              else
              {
                *&a1[v15] = v18;
              }

              return;
            }
          }

          else
          {
            *a1 = v17;
            if (v16 > 1)
            {
              goto LABEL_46;
            }
          }

          goto LABEL_43;
        }

        *a1 = v21;
        a1[2] = BYTE2(v21);
      }

      if (v16 > 1)
      {
        goto LABEL_46;
      }
    }

    else
    {
      bzero(a1, v15);
      *a1 = v17;
      v18 = 1;
      if (v16 > 1)
      {
        goto LABEL_46;
      }
    }

LABEL_43:
    if (v16)
    {
      a1[v15] = v18;
    }

    return;
  }

  if (v16 > 1)
  {
    if (v16 != 2)
    {
      *&a1[v15] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    }

    *&a1[v15] = 0;
  }

  else if (v16)
  {
    a1[v15] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_31;
  }

  if (!a2)
  {
    return;
  }

LABEL_31:
  if (v9 >= v11)
  {
    v23 = *(v24 + 56);

    v23(a1, a2, v9, v7);
  }

  else
  {
    v22 = *(v10 + 56);

    v22(&a1[v14] & ~v13, a2);
  }
}