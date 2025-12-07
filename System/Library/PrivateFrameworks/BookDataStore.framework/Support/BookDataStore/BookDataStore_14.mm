uint64_t sub_1001AE538(uint64_t a1, uint64_t a2, Swift::UInt a3)
{
  v21 = a2;
  v22 = a3;
  v25 = a1;
  v19 = sub_100084528(&qword_1002705A0, &unk_1001F9600);
  v3 = *(v19 - 8);
  __chkstk_darwin(v19);
  v5 = (&v19 - v4);
  v6 = sub_100084528(&qword_100272518, &qword_1001F55E8);
  __chkstk_darwin(v6 - 8);
  v8 = &v19 - v7;
  v9 = sub_100084528(&qword_100272540, &unk_1001F5610);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v19 - v11;
  v13 = sub_100084528(&qword_100272520, &qword_1001F55F0);
  v20 = *(v13 - 8);
  __chkstk_darwin(v13);
  v15 = &v19 - v14;
  (*(v10 + 16))(v12, v25, v9);
  sub_1000885F4(&qword_1002748B8, &qword_100272540, &unk_1001F5610, &protocol conformance descriptor for CRDictionary_v1<A, B>);
  sub_1001C6218();
  sub_1000885F4(&qword_1002748C0, &qword_100272520, &qword_1001F55F0, &protocol conformance descriptor for CRDictionary<A, B>.Iterator);
  v23 = v15;
  v25 = v13;
  sub_1001C6868();
  v16 = v19;
  v17 = *(v3 + 48);
  if (v17(v8, 1, v19) != 1)
  {
    do
    {
      sub_10009AE58(v8, v5, &qword_1002705A0, &unk_1001F9600);
      sub_1001787B0(v24, v22, *v5);
      sub_10008875C(v5, &qword_1002705A0, &unk_1001F9600);
      sub_1001C6868();
    }

    while (v17(v8, 1, v16) != 1);
  }

  return (*(v20 + 8))(v23, v25);
}

uint64_t ReadingHistoryModel.readingHistoryDay(for:)@<X0>(uint64_t a2@<X8>)
{
  v51 = a2;
  v2 = sub_100084528(&qword_100272540, &unk_1001F5610);
  v47 = *(v2 - 8);
  v48 = v2;
  __chkstk_darwin(v2);
  v46 = &v43 - v3;
  v4 = type metadata accessor for ReadingHistoryMonth(0);
  __chkstk_darwin(v4 - 8);
  v44 = &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100084528(&qword_10026F880, &qword_1001F1470);
  __chkstk_darwin(v6 - 8);
  v52 = &v43 - v7;
  v8 = sub_100084528(&unk_10026F8F0, &unk_1001F14C0);
  __chkstk_darwin(v8 - 8);
  v45 = &v43 - v9;
  v10 = sub_1001C4D48();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1001C4D68();
  v49 = *(v14 - 8);
  v50 = v14;
  __chkstk_darwin(v14);
  v16 = &v43 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1001C4CD8();
  v17 = *(v11 + 104);
  v17(v13, enum case for Calendar.Component.year(_:), v10);
  v18 = sub_1001C4D58();
  v19 = *(v11 + 8);
  v19(v13, v10);
  v17(v13, enum case for Calendar.Component.month(_:), v10);
  v20 = sub_1001C4D58();
  v19(v13, v10);
  v17(v13, enum case for Calendar.Component.day(_:), v10);
  v21 = v16;
  v22 = sub_1001C4D58();
  result = (v19)(v13, v10);
  v24 = 100 * v18;
  if ((v18 * 100) >> 64 == (100 * v18) >> 63)
  {
    v25 = __OFADD__(v24, v20);
    v26 = v24 + v20;
    if (!v25)
    {
      v53 = v26;
      sub_100084528(&unk_10026F470, &unk_1001F5600);
      v27 = v52;
      sub_1001C5BA8();
      v28 = sub_100084528(&unk_10026ED30, &unk_1001F1490);
      v29 = *(v28 - 8);
      if ((*(v29 + 48))(v27, 1, v28) == 1)
      {
        (*(v49 + 8))(v16, v50);
        v30 = &qword_10026F880;
        v31 = &qword_1001F1470;
        v32 = v27;
      }

      else
      {
        v33 = v44;
        sub_1001C5D88();
        (*(v29 + 8))(v27, v28);
        v34 = v46;
        v35 = v47;
        v36 = v48;
        (*(v47 + 16))(v46, v33, v48);
        sub_1001BBBAC(v33, type metadata accessor for ReadingHistoryMonth);
        v53 = v22;
        v37 = v45;
        sub_1001C5BA8();
        (*(v35 + 8))(v34, v36);
        v38 = sub_100084528(&qword_10026ED18, &unk_1001F06E0);
        v39 = *(v38 - 8);
        if ((*(v39 + 48))(v37, 1, v38) != 1)
        {
          v41 = v51;
          sub_1001C5D88();
          (*(v49 + 8))(v21, v50);
          (*(v39 + 8))(v37, v38);
          v40 = 0;
          goto LABEL_9;
        }

        (*(v49 + 8))(v21, v50);
        v30 = &unk_10026F8F0;
        v31 = &unk_1001F14C0;
        v32 = v37;
      }

      sub_10008875C(v32, v30, v31);
      v40 = 1;
      v41 = v51;
LABEL_9:
      v42 = type metadata accessor for ReadingHistoryDay(0);
      return (*(*(v42 - 8) + 56))(v41, v40, 1, v42);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t ReadingHistoryModel.setGoal(_:date:)(uint64_t a1, uint64_t a2)
{
  v25 = a1;
  v3 = sub_100084528(&qword_10026F880, &qword_1001F1470);
  __chkstk_darwin(v3 - 8);
  v5 = &v24 - v4;
  v6 = sub_100084528(&unk_10026ED30, &unk_1001F1490);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v24 - v8;
  v27 = type metadata accessor for ReadingHistoryMonth(0);
  v10 = __chkstk_darwin(v27);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v24 - v13;
  v15 = sub_1001C4CA8();
  __chkstk_darwin(v15);
  v17 = &v24 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v18 + 16))(v17, a2);
  v26 = _s14bookdatastored19ReadingHistoryModelV6DayKeyVyAE10Foundation4DateVcfC_0(v17);
  v20 = v19;
  v29[0] = v26;
  sub_100084528(&unk_10026F470, &unk_1001F5600);
  sub_1001C5B88();
  sub_1001C5DB8();
  (*(v7 + 8))(v9, v6);
  v29[4] = v20;
  v29[5] = v25;
  sub_100084528(&qword_100272540, &unk_1001F5610);
  v21 = sub_1001C5B78();
  sub_100084528(&qword_10026ED18, &unk_1001F06E0);
  v22 = sub_1001C5DA8();
  type metadata accessor for ReadingHistoryDay(0);
  sub_100084528(&qword_10026F4E0, &unk_1001F1140);
  sub_1001C56D8();
  v22(v28, 0);
  v21(v29, 0);
  sub_1001BBADC(v14, v12, type metadata accessor for ReadingHistoryMonth);
  sub_1001BBB44(&qword_100272530, type metadata accessor for ReadingHistoryMonth, &protocol conformance descriptor for ReadingHistoryMonth);
  sub_1001C5DC8();
  (*(v7 + 56))(v5, 0, 1, v6);
  v29[0] = v26;
  sub_1001C5BB8();
  return sub_1001BBBAC(v14, type metadata accessor for ReadingHistoryMonth);
}

BOOL static ReadingHistoryModel.DayKey.< infix(_:_:)(_BOOL8 result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = 100 * result;
  if ((result * 100) >> 64 != (100 * result) >> 63)
  {
    __break(1u);
    goto LABEL_7;
  }

  v5 = __OFADD__(v4, a2);
  v6 = v4 + a2;
  if (v5)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  v7 = 100 * a3;
  if ((a3 * 100) >> 64 != (100 * a3) >> 63)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v5 = __OFADD__(v7, a4);
  v8 = v7 + a4;
  if (!v5)
  {
    return v6 < v8;
  }

LABEL_9:
  __break(1u);
  return result;
}

BOOL sub_1001AF394(uint64_t a1, int a2)
{
  v29 = a2;
  v3 = sub_1001C4CA8();
  v27 = *(v3 - 8);
  v28 = v3;
  __chkstk_darwin(v3);
  v5 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100084528(&unk_10026FC70, &unk_1001F1430);
  v7 = __chkstk_darwin(v6 - 8);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v26 - v10;
  v12 = sub_1001C5E78();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_100084528(&qword_100273DA0, &qword_1001F7E50);
  __chkstk_darwin(v16 - 8);
  v18 = &v26 - v17;
  v19 = a1;
  ReadingHistoryModel.readingHistoryDay(for:)(&v26 - v17);
  v20 = type metadata accessor for ReadingHistoryDay(0);
  if ((*(*(v20 - 8) + 48))(v18, 1, v20) == 1)
  {
    sub_10008875C(v18, &qword_100273DA0, &qword_1001F7E50);
  }

  else
  {
    (*(v13 + 16))(v15, v18, v12);
    sub_1001BBBAC(v18, type metadata accessor for ReadingHistoryDay);
    v21 = sub_1001C5E48();
    (*(v13 + 8))(v15, v12);
    if (v21 > 0)
    {
      return 1;
    }
  }

  if (v29)
  {
    sub_1001B70BC(v19, v11);
    sub_10009ADF0(v11, v9, &unk_10026FC70, &unk_1001F1430);
    v23 = v27;
    v22 = v28;
    if ((*(v27 + 48))(v9, 1, v28) == 1)
    {
      sub_10008875C(v11, &unk_10026FC70, &unk_1001F1430);
      sub_10008875C(v9, &unk_10026FC70, &unk_1001F1430);
      return 0;
    }

    (*(v23 + 32))(v5, v9, v22);
    v24 = sub_1001C4C58();
    (*(v23 + 8))(v5, v22);
    sub_10008875C(v11, &unk_10026FC70, &unk_1001F1430);
    return (v24 & 1) != 0;
  }

  return 0;
}

uint64_t ReadingHistoryModel.incrementReadingTime(date:amount:defaultGoal:)(uint64_t a1, Swift::Int a2, uint64_t a3)
{
  v27 = a3;
  v29 = a2;
  v4 = sub_100084528(&qword_10026F880, &qword_1001F1470);
  __chkstk_darwin(v4 - 8);
  v6 = v25 - v5;
  v7 = sub_100084528(&unk_10026ED30, &unk_1001F1490);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v25 - v9;
  v28 = type metadata accessor for ReadingHistoryMonth(0);
  v11 = __chkstk_darwin(v28);
  v13 = v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = v25 - v14;
  v16 = sub_1001C4CA8();
  __chkstk_darwin(v16);
  v18 = v25 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v19 + 16))(v18, a1);
  v26 = _s14bookdatastored19ReadingHistoryModelV6DayKeyVyAE10Foundation4DateVcfC_0(v18);
  v21 = v20;
  v31[0] = v26;
  v25[1] = sub_100084528(&unk_10026F470, &unk_1001F5600);
  sub_1001C5B88();
  sub_1001C5DB8();
  (*(v8 + 8))(v10, v7);
  *(swift_allocObject() + 16) = v27;
  v31[4] = v21;
  sub_100084528(&qword_100272540, &unk_1001F5610);
  v22 = sub_1001C5B78();
  sub_100084528(&qword_10026ED18, &unk_1001F06E0);
  v23 = sub_1001C5DA8();
  sub_1001C5E58(v29);
  v23(v30, 0);
  v22(v31, 0);
  sub_1001BBADC(v15, v13, type metadata accessor for ReadingHistoryMonth);
  sub_1001BBB44(&qword_100272530, type metadata accessor for ReadingHistoryMonth, &protocol conformance descriptor for ReadingHistoryMonth);
  sub_1001C5DC8();
  (*(v8 + 56))(v6, 0, 1, v7);
  v31[0] = v26;
  sub_1001C5BB8();
  sub_1001BBBAC(v15, type metadata accessor for ReadingHistoryMonth);
}

uint64_t ReadingHistoryModel.mergeDay(date:day:)(uint64_t a1, uint64_t a2)
{
  v53 = a2;
  v4 = sub_100084528(&qword_10026F880, &qword_1001F1470);
  __chkstk_darwin(v4 - 8);
  v50 = &v40 - v5;
  v42 = sub_1001C5AC8();
  v41 = *(v42 - 8);
  __chkstk_darwin(v42);
  v40 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = type metadata accessor for ReadingHistoryDay(0);
  __chkstk_darwin(v52);
  v44 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100084528(&unk_10026F8F0, &unk_1001F14C0);
  v9 = __chkstk_darwin(v8 - 8);
  v43 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v12 = &v40 - v11;
  v13 = sub_100084528(&unk_10026ED30, &unk_1001F1490);
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v40 - v15;
  v48 = type metadata accessor for ReadingHistoryMonth(0);
  v17 = __chkstk_darwin(v48);
  v47 = &v40 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v20 = &v40 - v19;
  v21 = sub_1001C4CA8();
  __chkstk_darwin(v21);
  v23 = &v40 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v24 + 16))(v23, a1);
  v25 = _s14bookdatastored19ReadingHistoryModelV6DayKeyVyAE10Foundation4DateVcfC_0(v23);
  v27 = v26;
  v46 = v25;
  v55[0] = v25;
  v45 = sub_100084528(&unk_10026F470, &unk_1001F5600);
  v51 = v2;
  sub_1001C5B88();
  sub_1001C5DB8();
  v28 = *(v14 + 8);
  v49 = v13;
  v28(v16, v13);
  v55[0] = v27;
  sub_100084528(&qword_100272540, &unk_1001F5610);
  sub_1001C5BA8();
  v29 = sub_100084528(&qword_10026ED18, &unk_1001F06E0);
  v30 = *(v29 - 8);
  v31 = *(v30 + 48);
  v32 = v31(v12, 1, v29);
  sub_10008875C(v12, &unk_10026F8F0, &unk_1001F14C0);
  if (v32 == 1)
  {
    sub_1001BBADC(v53, v44, type metadata accessor for ReadingHistoryDay);
    sub_1001BBB44(&unk_100273E00, type metadata accessor for ReadingHistoryDay, &protocol conformance descriptor for ReadingHistoryDay);
    v33 = v43;
    sub_1001C5DC8();
    (*(v30 + 56))(v33, 0, 1, v29);
    v55[0] = v27;
    sub_1001C5BB8();
LABEL_5:
    sub_1001BBADC(v20, v47, type metadata accessor for ReadingHistoryMonth);
    sub_1001BBB44(&qword_100272530, type metadata accessor for ReadingHistoryMonth, &protocol conformance descriptor for ReadingHistoryMonth);
    v39 = v50;
    sub_1001C5DC8();
    (*(v14 + 56))(v39, 0, 1, v49);
    v55[0] = v46;
    sub_1001C5BB8();
    return sub_1001BBBAC(v20, type metadata accessor for ReadingHistoryMonth);
  }

  v55[4] = v27;
  v34 = sub_1001C5B98();
  result = v31(v35, 1, v29);
  if (result != 1)
  {
    v37 = sub_1001C5DA8();
    sub_1001BBB44(&qword_100273DC0, type metadata accessor for ReadingHistoryDay, &protocol conformance descriptor for ReadingHistoryDay);
    v38 = v40;
    sub_1001C58F8();
    (*(v41 + 8))(v38, v42);
    v37(v54, 0);
    v34(v55, 0);
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

uint64_t sub_1001B0290(uint64_t a1)
{
  v2 = sub_100084528(&qword_10026F880, &qword_1001F1470);
  __chkstk_darwin(v2 - 8);
  v27 = &v25 - v3;
  v4 = sub_100084528(&unk_10026F8F0, &unk_1001F14C0);
  __chkstk_darwin(v4 - 8);
  v6 = &v25 - v5;
  v7 = sub_100084528(&unk_10026ED30, &unk_1001F1490);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v25 - v9;
  v26 = type metadata accessor for ReadingHistoryMonth(0);
  v11 = __chkstk_darwin(v26);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v25 - v14;
  v16 = sub_1001C4CA8();
  __chkstk_darwin(v16);
  v18 = &v25 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v19 + 16))(v18, a1);
  v25 = _s14bookdatastored19ReadingHistoryModelV6DayKeyVyAE10Foundation4DateVcfC_0(v18);
  v21 = v20;
  v28 = v25;
  sub_100084528(&unk_10026F470, &unk_1001F5600);
  sub_1001C5B88();
  sub_1001C5DB8();
  (*(v8 + 8))(v10, v7);
  v22 = sub_100084528(&qword_10026ED18, &unk_1001F06E0);
  (*(*(v22 - 8) + 56))(v6, 1, 1, v22);
  v28 = v21;
  sub_100084528(&qword_100272540, &unk_1001F5610);
  sub_1001C5BB8();
  sub_1001BBADC(v15, v13, type metadata accessor for ReadingHistoryMonth);
  sub_1001BBB44(&qword_100272530, type metadata accessor for ReadingHistoryMonth, &protocol conformance descriptor for ReadingHistoryMonth);
  v23 = v27;
  sub_1001C5DC8();
  (*(v8 + 56))(v23, 0, 1, v7);
  v28 = v25;
  sub_1001C5BB8();
  return sub_1001BBBAC(v15, type metadata accessor for ReadingHistoryMonth);
}

uint64_t sub_1001B06A4(uint64_t a1, uint64_t a2)
{
  v5 = sub_100084528(&unk_10026F8F0, &unk_1001F14C0);
  __chkstk_darwin(v5 - 8);
  v89 = &v68 - v6;
  v7 = sub_100084528(&qword_100272518, &qword_1001F55E8);
  v8 = __chkstk_darwin(v7 - 8);
  v90 = &v68 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v11 = &v68 - v10;
  v91 = sub_100084528(&qword_100272520, &qword_1001F55F0);
  v84 = *(v91 - 8);
  __chkstk_darwin(v91);
  v93 = &v68 - v12;
  v13 = sub_100084528(&qword_100272528, &qword_1001F55F8);
  v81 = *(v13 - 8);
  v82 = v13;
  v14 = __chkstk_darwin(v13);
  v80 = &v68 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v79 = &v68 - v16;
  v17 = type metadata accessor for ReadingHistoryMonth(0);
  v18 = __chkstk_darwin(v17);
  v83 = &v68 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __chkstk_darwin(v18);
  v92 = &v68 - v21;
  __chkstk_darwin(v20);
  v88 = &v68 - v22;
  v23 = sub_100084528(&unk_10026ED30, &unk_1001F1490);
  v24 = *(v23 - 8);
  __chkstk_darwin(v23);
  v26 = &v68 - v25;
  v27 = sub_100084528(&qword_10026F880, &qword_1001F1470);
  v28 = __chkstk_darwin(v27 - 8);
  v29 = __chkstk_darwin(v28);
  v31 = &v68 - v30;
  __chkstk_darwin(v29);
  v34 = &v68 - v33;
  v35 = 100 * a1;
  if ((a1 * 100) >> 64 != (100 * a1) >> 63)
  {
    __break(1u);
    goto LABEL_26;
  }

  v36 = __OFADD__(v35, a2);
  v37 = v35 + a2;
  if (v36)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v78 = v32;
  v87 = v26;
  v85 = v37;
  v94 = v37;
  v77 = sub_100084528(&unk_10026F470, &unk_1001F5600);
  sub_1001C5BA8();
  sub_10009ADF0(v34, v31, &qword_10026F880, &qword_1001F1470);
  if ((*(v24 + 48))(v31, 1, v23) != 1)
  {
    v39 = a1;
    v75 = v34;
    v76 = v2;
    v86 = v17;
    v40 = v87;
    (*(v24 + 32))(v87, v31, v23);
    v41 = v88;
    sub_1001C5D88();
    v42 = sub_100084528(&qword_100272540, &unk_1001F5610);
    sub_1000885F4(&qword_100272548, &qword_100272540, &unk_1001F5610, &protocol conformance descriptor for CRDictionary_v1<A, B>);
    v74 = v42;
    if ((sub_1001C6458() & 1) == 0)
    {
      sub_1001BBBAC(v41, type metadata accessor for ReadingHistoryMonth);
      (*(v24 + 8))(v40, v23);
LABEL_23:
      v38 = v75;
      return sub_10008875C(v38, &qword_10026F880, &qword_1001F1470);
    }

    v72 = v24;
    v43 = sub_100084528(&qword_10026F4E0, &unk_1001F1140);
    sub_1001C56C8();
    v70 = v94;
    v73 = sub_1001B7990(v39, a2);
    v71 = v43;
    sub_1001C56C8();
    v69 = v94;
    a1 = sub_1001B7CB8(v39, a2);
    sub_1001C5DB8();
    v44 = v79;
    v45 = v74;
    sub_1001C6448();
    v46 = v80;
    sub_1001C6488();
    v2 = sub_1001C6478();
    v31 = *(v81 + 8);
    v47 = v46;
    v48 = v82;
    (v31)(v47, v82);
    (v31)(v44, v48);
    LOBYTE(v31) = sub_1001C65B8();
    v26 = v45;
    if (qword_10026EBE8 == -1)
    {
LABEL_7:
      v49 = qword_1002711E8;
      v50 = os_log_type_enabled(qword_1002711E8, v31);
      v82 = v23;
      v51 = v70;
      v52 = v69;
      if (v50)
      {
        v53 = swift_slowAlloc();
        *v53 = 134219264;
        *(v53 + 4) = v2;
        *(v53 + 12) = 2048;
        *(v53 + 14) = v85;
        *(v53 + 22) = 2048;
        *(v53 + 24) = v51;
        *(v53 + 32) = 2048;
        *(v53 + 34) = v73;
        *(v53 + 42) = 2048;
        *(v53 + 44) = v52;
        *(v53 + 52) = 2048;
        *(v53 + 54) = a1;
        _os_log_impl(&_mh_execute_header, v49, v31, "summarizeAndPrune: Prune %ld days in %ld - lastDayStreak: (old=%ld, computed=%ld), totalTime: (old=%ld, computed=%ld)", v53, 0x3Eu);
      }

      v54 = v73;
      if (v73 != v51)
      {
        if (v51 > v73)
        {
          v54 = v51;
        }

        v94 = v54;
        sub_1001C56D8();
      }

      if (a1 != v52)
      {
        if (v52 <= a1)
        {
          v55 = a1;
        }

        else
        {
          v55 = v52;
        }

        v94 = v55;
        sub_1001C56D8();
      }

      sub_1001C5B48();
      while (1)
      {
        v56 = v90;
        sub_1001C5B08();
        sub_10009AE58(v56, v11, &qword_100272518, &qword_1001F55E8);
        v57 = sub_100084528(&qword_1002705A0, &unk_1001F9600);
        if ((*(*(v57 - 8) + 48))(v11, 1, v57) == 1)
        {
          break;
        }

        v58 = v26;
        v59 = *v11;
        v60 = *(v57 + 48);
        v61 = sub_100084528(&qword_10026ED18, &unk_1001F06E0);
        v62 = *(v61 - 8);
        (*(v62 + 56))(v89, 1, 1, v61);
        v94 = v59;
        v26 = v58;
        sub_1001C5BB8();
        (*(v62 + 8))(&v11[v60], v61);
      }

      (*(v84 + 8))(v93, v91);
      v63 = v92;
      sub_1001BBADC(v92, v83, type metadata accessor for ReadingHistoryMonth);
      sub_1001BBB44(&qword_100272530, type metadata accessor for ReadingHistoryMonth, &protocol conformance descriptor for ReadingHistoryMonth);
      v64 = v78;
      sub_1001C5DC8();
      v65 = v72;
      v66 = v82;
      (*(v72 + 56))(v64, 0, 1, v82);
      v94 = v85;
      sub_1001C5BB8();
      sub_1001BBBAC(v63, type metadata accessor for ReadingHistoryMonth);
      sub_1001BBBAC(v88, type metadata accessor for ReadingHistoryMonth);
      (*(v65 + 8))(v87, v66);
      goto LABEL_23;
    }

LABEL_27:
    swift_once();
    goto LABEL_7;
  }

  sub_10008875C(v34, &qword_10026F880, &qword_1001F1470);
  v38 = v31;
  return sub_10008875C(v38, &qword_10026F880, &qword_1001F1470);
}

uint64_t sub_1001B1130(uint64_t a1)
{
  v146 = a1;
  v129 = sub_1001C4D48();
  v138 = *(v129 - 8);
  __chkstk_darwin(v129);
  v127 = &v120 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v141 = sub_1001C4CA8();
  v144 = *(v141 - 8);
  v3 = __chkstk_darwin(v141);
  v121 = &v120 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __chkstk_darwin(v3);
  v123 = &v120 - v6;
  v7 = __chkstk_darwin(v5);
  v125 = &v120 - v8;
  __chkstk_darwin(v7);
  v130 = &v120 - v9;
  v10 = sub_100084528(&qword_10026F8B8, &unk_1001F8A90);
  __chkstk_darwin(v10 - 8);
  v135 = &v120 - v11;
  v12 = sub_100084528(&qword_10026F8C0, &unk_1001F14A0);
  __chkstk_darwin(v12 - 8);
  v132 = &v120 - v13;
  v136 = sub_1001C4948();
  v134 = *(v136 - 8);
  __chkstk_darwin(v136);
  v133 = &v120 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v142 = sub_1001C4D68();
  v145 = *(v142 - 8);
  v15 = __chkstk_darwin(v142);
  v137 = &v120 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v139 = &v120 - v17;
  v18 = sub_100084528(&unk_10026FC70, &unk_1001F1430);
  v19 = __chkstk_darwin(v18 - 8);
  v122 = &v120 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __chkstk_darwin(v19);
  v124 = &v120 - v22;
  v23 = __chkstk_darwin(v21);
  v126 = &v120 - v24;
  v25 = __chkstk_darwin(v23);
  v128 = &v120 - v26;
  v27 = __chkstk_darwin(v25);
  v131 = &v120 - v28;
  __chkstk_darwin(v27);
  v143 = &v120 - v29;
  v158 = sub_100084528(&qword_100272528, &qword_1001F55F8);
  v30 = *(v158 - 1);
  v31 = __chkstk_darwin(v158);
  v161 = &v120 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v31);
  v160 = &v120 - v33;
  v157 = sub_100084528(&qword_100272540, &unk_1001F5610);
  v34 = *(v157 - 1);
  __chkstk_darwin(v157);
  v156 = &v120 - v35;
  v36 = type metadata accessor for ReadingHistoryMonth(0);
  __chkstk_darwin(v36 - 8);
  v159 = (&v120 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0));
  v38 = sub_100084528(&unk_10026ED30, &unk_1001F1490);
  v39 = *(v38 - 8);
  __chkstk_darwin(v38);
  v41 = &v120 - v40;
  v42 = sub_100084528(&qword_10026F890, &qword_1001F1480);
  v43 = __chkstk_darwin(v42 - 8);
  v162 = (&v120 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v43);
  v46 = (&v120 - v45);
  v164 = sub_100084528(&qword_10026F898, &qword_1001F1488);
  v147 = *(v164 - 1);
  __chkstk_darwin(v164);
  v48 = &v120 - v47;
  v148 = _swiftEmptyArrayStorage;
  v165 = _swiftEmptyArrayStorage;
  sub_100084528(&unk_10026F470, &unk_1001F5600);
  v163 = v48;
  v140 = v1;
  sub_1001C5B48();
  v154 = (v34 + 16);
  v155 = (v39 + 32);
  v152 = v46;
  v153 = (v30 + 8);
  v150 = (v39 + 8);
  v151 = (v34 + 8);
  v49 = v156;
  v50 = v160;
  while (1)
  {
    v51 = v162;
    sub_1001C5B08();
    sub_10009AE58(v51, v46, &qword_10026F890, &qword_1001F1480);
    v52 = sub_100084528(&qword_10026F888, &qword_1001F1478);
    if ((*(*(v52 - 8) + 48))(v46, 1, v52) == 1)
    {
      break;
    }

    v149 = *v46;
    (*v155)(v41, v46 + *(v52 + 48), v38);
    v53 = v159;
    sub_1001C5D88();
    v54 = v41;
    v55 = v157;
    (*v154)(v49, v53, v157);
    sub_1001BBBAC(v53, type metadata accessor for ReadingHistoryMonth);
    sub_1000885F4(&qword_100272548, &qword_100272540, &unk_1001F5610, &protocol conformance descriptor for CRDictionary_v1<A, B>);
    sub_1001C6448();
    v56 = v38;
    v57 = v161;
    sub_1001C6488();
    sub_1000885F4(&unk_100272550, &qword_100272528, &qword_1001F55F8, &protocol conformance descriptor for CRDictionary<A, B>.Index);
    v58 = v158;
    v59 = sub_1001C5FD8();
    v60 = *v153;
    (*v153)(v57, v58);
    v60(v50, v58);
    (*v151)(v49, v55);
    if (v59)
    {
      (*v150)(v54, v56);
      v38 = v56;
      v41 = v54;
      v46 = v152;
    }

    else
    {
      v61 = v148;
      v62 = v149;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v61 = sub_1000ADD40(0, *(v61 + 2) + 1, 1, v61);
      }

      v38 = v56;
      v41 = v54;
      v46 = v152;
      v64 = *(v61 + 2);
      v63 = *(v61 + 3);
      v148 = v61;
      if (v64 >= v63 >> 1)
      {
        v148 = sub_1000ADD40((v63 > 1), v64 + 1, 1, v148);
      }

      (*v150)(v41, v56);
      v65 = v148;
      *(v148 + 2) = v64 + 1;
      *&v65[8 * v64 + 32] = v62;
      v165 = v65;
    }
  }

  (*(v147 + 8))(v163, v164);
  if (*(v148 + 2) >= 2uLL)
  {
    if (v146 <= 0)
    {
      v70 = sub_1001C6598();
      v66 = v144;
      v67 = v143;
      if (qword_10026EBE8 != -1)
      {
        swift_once();
      }

      v71 = qword_1002711E8;
      if (os_log_type_enabled(qword_1002711E8, v70))
      {
        v72 = swift_slowAlloc();
        *v72 = 134217984;
        *(v72 + 4) = v146;
        _os_log_impl(&_mh_execute_header, v71, v70, "summarizeAndPrune: expect monthsToKeep >= 1, got %ld", v72, 0xCu);
      }

      v146 = 1;
    }

    else
    {
      v66 = v144;
      v67 = v143;
    }

    sub_1001B81BC(&v165);
    if (!*(v165 + 2))
    {
    }

    v163 = v165 + 32;
    v164 = v165;
    v73 = v139;
    sub_1001C4CD8();
    v74 = v145;
    v75 = v142;
    (*(v145 + 56))(v132, 1, 1, v142);
    v76 = sub_1001C4D78();
    (*(*(v76 - 8) + 56))(v135, 1, 1, v76);
    v77 = v133;
    sub_1001C4938();
    sub_1001C4918();
    sub_1001C4928();
    sub_1001C4D18();
    (*(v134 + 8))(v77, v136);
    v78 = *(v74 + 8);
    v145 = v74 + 8;
    v78(v73, v75);
    v79 = v131;
    sub_10009ADF0(v67, v131, &unk_10026FC70, &unk_1001F1430);
    v80 = (v66 + 48);
    v81 = *(v66 + 48);
    v82 = v141;
    if ((v81)(v79, 1, v141) == 1)
    {
      sub_10008875C(v67, &unk_10026FC70, &unk_1001F1430);

      v83 = v79;
      return sub_10008875C(v83, &unk_10026FC70, &unk_1001F1430);
    }

    v162 = v78;
    v84 = (v66 + 32);
    v159 = *(v66 + 32);
    v159(v130, v79, v82);
    sub_1001C4CD8();
    v85 = v81;
    v86 = v138;
    v87 = *(v138 + 104);
    v88 = v127;
    LODWORD(v156) = enum case for Calendar.Component.month(_:);
    v89 = v129;
    v160 = v87;
    v161 = (v138 + 104);
    (v87)(v127);
    v90 = v128;
    sub_1001C4D38();
    v91 = *(v86 + 8);
    v138 = v86 + 8;
    v158 = v91;
    (v91)(v88, v89);
    v92 = v90;
    v93 = v90;
    v94 = v126;
    sub_10009ADF0(v93, v126, &unk_10026FC70, &unk_1001F1430);
    v157 = v85;
    if ((v85)(v94, 1, v82) == 1)
    {
      sub_10008875C(v92, &unk_10026FC70, &unk_1001F1430);
      v162(v137, v142);
      (*(v144 + 8))(v130, v141);
      sub_10008875C(v143, &unk_10026FC70, &unk_1001F1430);

      v83 = v94;
      return sub_10008875C(v83, &unk_10026FC70, &unk_1001F1430);
    }

    v95 = v125;
    v96 = v141;
    v154 = v84;
    v159(v125, v94, v141);
    v97 = v139;
    sub_1001C4CD8();
    v98 = v123;
    sub_1001C4BE8();
    v99 = sub_1001AC6B4(v98, 1);
    v100 = *(v144 + 8);
    v144 += 8;
    v155 = v100;
    v100(v98, v96);
    v162(v97, v142);
    v101 = v129;
    (v160)(v88, enum case for Calendar.Component.day(_:), v129);
    v153 = v99;
    if (__OFSUB__(0, v99))
    {
      __break(1u);
    }

    else
    {
      v102 = v88;
      v103 = v124;
      v104 = v95;
      v105 = v102;
      sub_1001C4D38();
      (v158)(v105, v101);
      v106 = v122;
      sub_10009ADF0(v103, v122, &unk_10026FC70, &unk_1001F1430);
      v107 = v96;
      v108 = (v157)(v106, 1, v96);
      v96 = v163;
      if (v108 == 1)
      {
        sub_10008875C(v103, &unk_10026FC70, &unk_1001F1430);
        v109 = v155;
        v155(v104, v107);
        sub_10008875C(v128, &unk_10026FC70, &unk_1001F1430);
        v162(v137, v142);
        v109(v130, v107);
        sub_10008875C(v143, &unk_10026FC70, &unk_1001F1430);

        v83 = v106;
        return sub_10008875C(v83, &unk_10026FC70, &unk_1001F1430);
      }

      v85 = v101;
      v80 = v121;
      v159(v121, v106, v107);
      v84 = v160;
      (v160)(v105, v156, v101);
      v97 = v137;
      v159 = sub_1001C4D58();
      v110 = v158;
      (v158)(v105, v101);
      (v84)(v105, enum case for Calendar.Component.year(_:), v101);
      v99 = sub_1001C4D58();
      v110(v105, v101);
      v111 = 100 * v99;
      if ((v99 * 100) >> 64 == (100 * v99) >> 63)
      {
        v80 = v159 + v111;
        if (!__OFADD__(v111, v159))
        {
          LOBYTE(v99) = sub_1001C65B8();
          v84 = v130;
          v85 = v164;
          if (qword_10026EBE8 == -1)
          {
LABEL_34:
            v112 = qword_1002711E8;
            if (os_log_type_enabled(qword_1002711E8, v99))
            {
              v113 = swift_slowAlloc();
              *v113 = 134218496;
              *(v113 + 4) = v80;
              *(v113 + 12) = 2048;
              *(v113 + 14) = v146;
              *(v113 + 22) = 2048;
              *(v113 + 24) = v153;
              _os_log_impl(&_mh_execute_header, v112, v99, "summarizeAndPrune: About to prune: lastMonthToKeep=%ld, historicalMonthsToKeep: %ld, streakDays=%ld", v113, 0x20u);
            }

            for (i = *(v85 + 2); i; --i)
            {
              v116 = *v96++;
              v115 = v116;
              if (v116 < v80)
              {
                sub_1001B06A4(v115 / 100, v115 % 100);
              }
            }

            v117 = v141;
            v118 = v155;
            v155(v121, v141);
            sub_10008875C(v124, &unk_10026FC70, &unk_1001F1430);
            v118(v125, v117);
            sub_10008875C(v128, &unk_10026FC70, &unk_1001F1430);
            v162(v97, v142);
            v118(v84, v117);
            v83 = v143;
            return sub_10008875C(v83, &unk_10026FC70, &unk_1001F1430);
          }

LABEL_45:
          swift_once();
          goto LABEL_34;
        }

LABEL_44:
        __break(1u);
        goto LABEL_45;
      }
    }

    __break(1u);
    goto LABEL_44;
  }

  v68 = sub_1001C65B8();
  if (qword_10026EBE8 != -1)
  {
    v119 = v68;
    swift_once();
    v68 = v119;
  }

  return sub_1001C5118(v68, &_mh_execute_header, qword_1002711E8, "summarizeAndPrune: Nothing to prune", 35, 2, _swiftEmptyArrayStorage);
}

uint64_t sub_1001B26F8(uint64_t a1, void (*a2)(uint64_t *__return_ptr, uint64_t *, char *), uint64_t a3)
{
  v22 = a2;
  v25 = a3;
  v5 = sub_100084528(&qword_10026F858, &unk_1001F8AA0);
  v6 = *(v5 - 8);
  v26 = v5;
  v27 = v6;
  __chkstk_darwin(v5);
  v8 = &v22 - v7;
  v9 = sub_100084528(&qword_10026F860, &unk_1001F1460);
  __chkstk_darwin(v9 - 8);
  v11 = &v22 - v10;
  v12 = sub_100084528(&qword_10026F830, &qword_1001F0E80);
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v22 - v14;
  v28 = sub_100084528(&qword_10026F868, &unk_1001F9620);
  v24 = *(v28 - 8);
  __chkstk_darwin(v28);
  v17 = &v22 - v16;
  v30 = a1;
  (*(v13 + 16))(v15, v23, v12);
  sub_1000885F4(&qword_10026F870, &qword_10026F830, &qword_1001F0E80, &protocol conformance descriptor for CRDictionary_v1<A, B>);
  sub_1001C6218();
  sub_1000885F4(&qword_10026F878, &qword_10026F868, &unk_1001F9620, &protocol conformance descriptor for CRDictionary<A, B>.Iterator);
  v23 = v17;
  sub_1001C6868();
  v18 = *(v27 + 48);
  v27 += 48;
  if (v18(v11, 1, v26) == 1)
  {
    v19 = v23;
  }

  else
  {
    sub_10009AE58(v11, v8, &qword_10026F858, &unk_1001F8AA0);
    v20 = v22;
    v22(&v29, &v30, v8);
    if (v3)
    {
      v19 = v23;
      sub_10008875C(v8, &qword_10026F858, &unk_1001F8AA0);
    }

    else
    {
      v19 = v23;
      while (1)
      {
        sub_10008875C(v8, &qword_10026F858, &unk_1001F8AA0);
        a1 = v29;
        v30 = v29;
        sub_1001C6868();
        if (v18(v11, 1, v26) == 1)
        {
          break;
        }

        sub_10009AE58(v11, v8, &qword_10026F858, &unk_1001F8AA0);
        v20(&v29, &v30, v8);
      }
    }
  }

  (*(v24 + 8))(v19, v28);
  return a1;
}

uint64_t ReadingHistoryDay.description.getter(uint64_t a1)
{
  sub_1001C5E48();
  v2 = sub_1001C6CC8();
  v3._countAndFlagsBits = 47;
  v3._object = 0xE100000000000000;
  sub_1001C6138(v3);
  type metadata accessor for ReadingHistoryDay(0);
  sub_100084528(&qword_10026F4E0, &unk_1001F1140);
  sub_1001C56C8();
  v4._countAndFlagsBits = sub_1001C6CC8();
  sub_1001C6138(v4);

  return v2;
}

uint64_t sub_1001B2C50(uint64_t a1, uint64_t a2)
{
  static ReadingHistoryDay.fields = 0x54676E6964616572;
  unk_100281A30 = 0xEB00000000656D69;
  qword_100281A38 = swift_getKeyPath();
  unk_100281A40 = 0x47676E6964616572;
  qword_100281A48 = 0xEB000000006C616FLL;
  result = swift_getKeyPath();
  qword_100281A50 = result;
  return result;
}

uint64_t *ReadingHistoryDay.fields.unsafeMutableAddressor()
{
  if (qword_10026EC90 != -1)
  {
    swift_once();
  }

  return &static ReadingHistoryDay.fields;
}

uint64_t static ReadingHistoryDay.fields.getter@<X0>(void *a1@<X8>)
{
  if (qword_10026EC90 != -1)
  {
    v7 = a1;
    swift_once();
    a1 = v7;
  }

  v1 = unk_100281A30;
  v3 = qword_100281A38;
  v2 = unk_100281A40;
  v4 = qword_100281A48;
  v5 = qword_100281A50;
  *a1 = static ReadingHistoryDay.fields;
  a1[1] = v1;
  a1[2] = v3;
  a1[3] = v2;
  a1[4] = v4;
  a1[5] = v5;
}

uint64_t ReadingHistoryDay.init()@<X0>(uint64_t a1@<X8>)
{
  _s14bookdatastored17ReadingHistoryDayV11readingTime9Coherence9CRCounterVvpfi_0();
  v2 = type metadata accessor for ReadingHistoryDay(0);
  result = sub_1001C56F8();
  *(a1 + *(v2 + 24)) = &_swiftEmptyDictionarySingleton;
  return result;
}

uint64_t ReadingHistoryDay.init(defaultGoal:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_100084528(&qword_10026F4E0, &unk_1001F1140);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v11 - v6;
  _s14bookdatastored17ReadingHistoryDayV11readingTime9Coherence9CRCounterVvpfi_0();
  v8 = type metadata accessor for ReadingHistoryDay(0);
  v9 = *(v8 + 20);
  v12 = 0;
  sub_1001C56F8();
  *(a2 + *(v8 + 24)) = &_swiftEmptyDictionarySingleton;
  v12 = a1;
  sub_1001C56F8();
  return (*(v5 + 40))(a2 + v9, v7, v4);
}

uint64_t sub_1001B2F84(uint64_t a1)
{
  v2 = sub_1001BBB44(&qword_100273DC0, type metadata accessor for ReadingHistoryDay, &protocol conformance descriptor for ReadingHistoryDay);

  return static CRStruct_2.fieldKeys.getter(a1, v2);
}

uint64_t sub_1001B2FF0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  _s14bookdatastored17ReadingHistoryDayV11readingTime9Coherence9CRCounterVvpfi_0();
  result = sub_1001C56F8();
  *(a2 + *(a1 + 24)) = &_swiftEmptyDictionarySingleton;
  return result;
}

uint64_t sub_1001B3054(uint64_t a1)
{
  v2 = sub_1001BBB44(&qword_1002745A8, type metadata accessor for ReadingHistoryDay, &protocol conformance descriptor for ReadingHistoryDay);

  return CRType.context.getter(a1, v2);
}

uint64_t sub_1001B30C0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001BBB44(&qword_100273DC0, type metadata accessor for ReadingHistoryDay, &protocol conformance descriptor for ReadingHistoryDay);

  return CRStruct_2.newRefs(from:)(a1, a2, v4);
}

uint64_t sub_1001B313C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001BBB44(&qword_100273DC0, type metadata accessor for ReadingHistoryDay, &protocol conformance descriptor for ReadingHistoryDay);

  return CRStruct_2.actionUndoingDifference(from:)(a1, a2, v4);
}

uint64_t sub_1001B31C0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001BBB44(&qword_100273DC0, type metadata accessor for ReadingHistoryDay, &protocol conformance descriptor for ReadingHistoryDay);

  return CRStruct_2.apply(_:)(a1, a2, v4);
}

uint64_t sub_1001B323C(uint64_t a1, uint64_t a2)
{
  sub_1001BBB44(&qword_100273DC0, type metadata accessor for ReadingHistoryDay, &protocol conformance descriptor for ReadingHistoryDay);

  return sub_1001C5948();
}

uint64_t sub_1001B32B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1001BBB44(&qword_100273DC0, type metadata accessor for ReadingHistoryDay, &protocol conformance descriptor for ReadingHistoryDay);

  return CRStruct_2.delta(_:from:)(a1, a2, a3, v6);
}

uint64_t sub_1001B334C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001BBB44(&qword_100273DC0, type metadata accessor for ReadingHistoryDay, &protocol conformance descriptor for ReadingHistoryDay);

  return CRStruct_2.canMerge(delta:)(a1, a2, v4);
}

uint64_t sub_1001B33C8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001BBB44(&qword_100273DC0, type metadata accessor for ReadingHistoryDay, &protocol conformance descriptor for ReadingHistoryDay);

  return CRStruct_2.merge(delta:)(a1, a2, v4);
}

uint64_t sub_1001B3444(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001BBB44(&qword_100273DC0, type metadata accessor for ReadingHistoryDay, &protocol conformance descriptor for ReadingHistoryDay);

  return CRStruct_2.copy(renamingReferences:)(a1, a2, v4);
}

uint64_t sub_1001B34C8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001BBB44(&qword_100273DC0, type metadata accessor for ReadingHistoryDay, &protocol conformance descriptor for ReadingHistoryDay);

  return CRStruct_2.copy(renamingReferences:)(a1, a2, v4);
}

uint64_t sub_1001B354C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1001BBB44(&qword_100273DC0, type metadata accessor for ReadingHistoryDay, &protocol conformance descriptor for ReadingHistoryDay);

  return CRStruct_2.observableDifference(from:with:)(a1, a2, a3, v6);
}

uint64_t sub_1001B35E0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001BBB44(&qword_100273DC0, type metadata accessor for ReadingHistoryDay, &protocol conformance descriptor for ReadingHistoryDay);

  return CRStruct_2.visitReferences(_:)(a1, a2, v4);
}

BOOL sub_1001B365C()
{
  sub_1001BBB44(&qword_100273DC0, type metadata accessor for ReadingHistoryDay, &protocol conformance descriptor for ReadingHistoryDay);

  return CRStruct_2.needToFinalizeTimestamps()();
}

uint64_t sub_1001B36C8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001BBB44(&qword_100273DC0, type metadata accessor for ReadingHistoryDay, &protocol conformance descriptor for ReadingHistoryDay);

  return CRStruct_2.finalizeTimestamps(_:)(a1, a2, v4);
}

uint64_t sub_1001B3744(uint64_t a1, uint64_t a2)
{
  sub_1001BBB44(&qword_100273DC0, type metadata accessor for ReadingHistoryDay, &protocol conformance descriptor for ReadingHistoryDay);

  return sub_1001C58F8();
}

uint64_t sub_1001B37C8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001BBB44(&qword_100273DC0, type metadata accessor for ReadingHistoryDay, &protocol conformance descriptor for ReadingHistoryDay);

  return CRStruct_2.merge(_:)(a1, a2, v4);
}

uint64_t sub_1001B3954(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1001BBB44(&unk_100273E00, type metadata accessor for ReadingHistoryDay, &protocol conformance descriptor for ReadingHistoryDay);

  return static CRDT.== infix(_:_:)(a1, a2, a3, v6);
}

uint64_t sub_1001B3AD0(uint64_t a1)
{
  v2 = sub_1001BBB44(&qword_100273DC0, type metadata accessor for ReadingHistoryDay, &protocol conformance descriptor for ReadingHistoryDay);

  return CRStruct_2.minEncodingVersion.getter(a1, v2);
}

double ReadingHistoryMonth.additionalFields.getter()
{
  type metadata accessor for ReadingHistoryMonth(0);

  return result;
}

uint64_t ReadingHistoryMonth.additionalFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ReadingHistoryMonth(0) + 28);

  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1001B3C0C(uint64_t a1, uint64_t a2)
{
  static ReadingHistoryMonth.fields = 1937334628;
  unk_100281A60 = 0xE400000000000000;
  qword_100281A68 = swift_getKeyPath();
  unk_100281A70 = 0x6D69546C61746F74;
  qword_100281A78 = 0xE900000000000065;
  qword_100281A80 = swift_getKeyPath();
  qword_100281A88 = 0xD000000000000014;
  qword_100281A90 = 0x8000000100204440;
  result = swift_getKeyPath();
  qword_100281A98 = result;
  return result;
}

uint64_t *ReadingHistoryMonth.fields.unsafeMutableAddressor()
{
  if (qword_10026EC98 != -1)
  {
    swift_once();
  }

  return &static ReadingHistoryMonth.fields;
}

uint64_t static ReadingHistoryMonth.fields.getter@<X0>(void *a1@<X8>)
{
  if (qword_10026EC98 != -1)
  {
    v10 = a1;
    swift_once();
    a1 = v10;
  }

  v1 = unk_100281A60;
  v3 = qword_100281A68;
  v2 = unk_100281A70;
  v4 = qword_100281A78;
  v5 = qword_100281A80;
  v6 = qword_100281A88;
  v7 = qword_100281A90;
  v8 = qword_100281A98;
  *a1 = static ReadingHistoryMonth.fields;
  a1[1] = v1;
  a1[2] = v3;
  a1[3] = v2;
  a1[4] = v4;
  a1[5] = v5;
  a1[6] = v6;
  a1[7] = v7;
  a1[8] = v8;
}

uint64_t ReadingHistoryMonth.init()@<X0>(uint64_t a1@<X8>)
{
  sub_100084528(&qword_10026ED18, &unk_1001F06E0);
  sub_1000885F4(&qword_10026ED20, &qword_10026ED18, &unk_1001F06E0, &protocol conformance descriptor for Anonymous<A>);
  sub_1000885F4(&qword_10026ED28, &qword_10026ED18, &unk_1001F06E0, &protocol conformance descriptor for Anonymous<A>);
  sub_1001C5B58();
  v2 = type metadata accessor for ReadingHistoryMonth(0);
  sub_1001C56F8();
  result = sub_1001C56F8();
  *(a1 + *(v2 + 28)) = &_swiftEmptyDictionarySingleton;
  return result;
}

uint64_t sub_1001B3EFC(uint64_t a1)
{
  v2 = sub_1001BBB44(&qword_100272538, type metadata accessor for ReadingHistoryMonth, &protocol conformance descriptor for ReadingHistoryMonth);

  return static CRStruct_3.fieldKeys.getter(a1, v2);
}

uint64_t sub_1001B3F74(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 28);

  *(v2 + v4) = a1;
  return result;
}

uint64_t sub_1001B3FD0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_100084528(&qword_10026ED18, &unk_1001F06E0);
  sub_1000885F4(&qword_10026ED20, &qword_10026ED18, &unk_1001F06E0, &protocol conformance descriptor for Anonymous<A>);
  sub_1000885F4(&qword_10026ED28, &qword_10026ED18, &unk_1001F06E0, &protocol conformance descriptor for Anonymous<A>);
  sub_1001C5B58();
  sub_1001C56F8();
  result = sub_1001C56F8();
  *(a2 + *(a1 + 28)) = &_swiftEmptyDictionarySingleton;
  return result;
}

uint64_t sub_1001B4100(uint64_t a1)
{
  v2 = sub_1001BBB44(&qword_1002745F0, type metadata accessor for ReadingHistoryMonth, &protocol conformance descriptor for ReadingHistoryMonth);

  return CRType.context.getter(a1, v2);
}

uint64_t sub_1001B416C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001BBB44(&qword_100272538, type metadata accessor for ReadingHistoryMonth, &protocol conformance descriptor for ReadingHistoryMonth);

  return CRStruct_3.newRefs(from:)(a1, a2, v4);
}

uint64_t sub_1001B41E8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001BBB44(&qword_100272538, type metadata accessor for ReadingHistoryMonth, &protocol conformance descriptor for ReadingHistoryMonth);

  return CRStruct_3.actionUndoingDifference(from:)(a1, a2, v4);
}

uint64_t sub_1001B426C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001BBB44(&qword_100272538, type metadata accessor for ReadingHistoryMonth, &protocol conformance descriptor for ReadingHistoryMonth);

  return CRStruct_3.apply(_:)(a1, a2, v4);
}

uint64_t sub_1001B42E8(uint64_t a1, uint64_t a2)
{
  sub_1001BBB44(&qword_100272538, type metadata accessor for ReadingHistoryMonth, &protocol conformance descriptor for ReadingHistoryMonth);

  return sub_1001C5A78();
}

uint64_t sub_1001B4364(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1001BBB44(&qword_100272538, type metadata accessor for ReadingHistoryMonth, &protocol conformance descriptor for ReadingHistoryMonth);

  return CRStruct_3.delta(_:from:)(a1, a2, a3, v6);
}

uint64_t sub_1001B43F8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001BBB44(&qword_100272538, type metadata accessor for ReadingHistoryMonth, &protocol conformance descriptor for ReadingHistoryMonth);

  return CRStruct_3.canMerge(delta:)(a1, a2, v4);
}

uint64_t sub_1001B4474(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001BBB44(&qword_100272538, type metadata accessor for ReadingHistoryMonth, &protocol conformance descriptor for ReadingHistoryMonth);

  return CRStruct_3.merge(delta:)(a1, a2, v4);
}

uint64_t sub_1001B44F0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001BBB44(&qword_100272538, type metadata accessor for ReadingHistoryMonth, &protocol conformance descriptor for ReadingHistoryMonth);

  return CRStruct_3.copy(renamingReferences:)(a1, a2, v4);
}

uint64_t sub_1001B4574(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001BBB44(&qword_100272538, type metadata accessor for ReadingHistoryMonth, &protocol conformance descriptor for ReadingHistoryMonth);

  return CRStruct_3.copy(renamingReferences:)(a1, a2, v4);
}

uint64_t sub_1001B45F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1001BBB44(&qword_100272538, type metadata accessor for ReadingHistoryMonth, &protocol conformance descriptor for ReadingHistoryMonth);

  return CRStruct_3.observableDifference(from:with:)(a1, a2, a3, v6);
}

uint64_t sub_1001B468C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001BBB44(&qword_100272538, type metadata accessor for ReadingHistoryMonth, &protocol conformance descriptor for ReadingHistoryMonth);

  return CRStruct_3.visitReferences(_:)(a1, a2, v4);
}

BOOL sub_1001B4708()
{
  sub_1001BBB44(&qword_100272538, type metadata accessor for ReadingHistoryMonth, &protocol conformance descriptor for ReadingHistoryMonth);

  return CRStruct_3.needToFinalizeTimestamps()();
}

uint64_t sub_1001B4774(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001BBB44(&qword_100272538, type metadata accessor for ReadingHistoryMonth, &protocol conformance descriptor for ReadingHistoryMonth);

  return CRStruct_3.finalizeTimestamps(_:)(a1, a2, v4);
}

uint64_t sub_1001B47F0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001BBB44(&qword_100272538, type metadata accessor for ReadingHistoryMonth, &protocol conformance descriptor for ReadingHistoryMonth);

  return CRStruct_3.merge(_:)(a1, a2, v4);
}

uint64_t sub_1001B4874(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001BBB44(&qword_100272538, type metadata accessor for ReadingHistoryMonth, &protocol conformance descriptor for ReadingHistoryMonth);

  return CRStruct_3.merge(_:)(a1, a2, v4);
}

uint64_t sub_1001B4A00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1001BBB44(&qword_100272530, type metadata accessor for ReadingHistoryMonth, &protocol conformance descriptor for ReadingHistoryMonth);

  return static CRDT.== infix(_:_:)(a1, a2, a3, v6);
}

uint64_t sub_1001B4B7C(uint64_t a1)
{
  v2 = sub_1001BBB44(&qword_100272538, type metadata accessor for ReadingHistoryMonth, &protocol conformance descriptor for ReadingHistoryMonth);

  return CRStruct_3.minEncodingVersion.getter(a1, v2);
}

uint64_t sub_1001B4BF8(uint64_t a1, int a2)
{
  v3 = v2;
  LODWORD(v64) = a2;
  v71 = a1;
  v70 = type metadata accessor for ReadingHistoryDay(0);
  __chkstk_darwin(v70);
  v69 = &v59 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100084528(&qword_1002705A0, &unk_1001F9600);
  v67 = *(v5 - 8);
  v68 = v5;
  v6 = __chkstk_darwin(v5);
  v66 = &v59 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v65 = (&v59 - v8);
  v9 = sub_100084528(&qword_100272540, &unk_1001F5610);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v63 = &v59 - v11;
  v12 = sub_100084528(&qword_100272528, &qword_1001F55F8);
  v61 = *(v12 - 8);
  v62 = v12;
  v13 = __chkstk_darwin(v12);
  v15 = &v59 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v59 - v16;
  sub_100084528(&qword_10026F7B0, &unk_1001F13E0);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_1001F0CF0;
  type metadata accessor for ReadingHistoryMonth(0);
  v19 = sub_100084528(&qword_10026F4E0, &unk_1001F1140);
  sub_1001C56C8();
  if (v76 < 0)
  {
    v20 = 0;
    v21 = 0xE000000000000000;
  }

  else
  {
    v76 = 0x6D69546C61746F74;
    v77 = 0xEA00000000003D65;
    sub_1001C56C8();
    v78 = v74;
    v79._countAndFlagsBits = sub_1001C6CC8();
    sub_1001C6138(v79);

    v80._countAndFlagsBits = 8236;
    v80._object = 0xE200000000000000;
    sub_1001C6138(v80);
    v20 = v76;
    v21 = v77;
  }

  *(v18 + 32) = v20;
  *(v18 + 40) = v21;
  sub_1001C56C8();
  v22 = 0xE000000000000000;
  if (v76 < 0)
  {
    v23 = 0;
  }

  else
  {
    v76 = 0;
    v77 = 0xE000000000000000;
    sub_1001C69C8(25);

    v76 = 0xD000000000000015;
    v77 = 0x8000000100204490;
    sub_1001C56C8();
    v78 = v74;
    v81._countAndFlagsBits = sub_1001C6CC8();
    sub_1001C6138(v81);

    v82._countAndFlagsBits = 8236;
    v82._object = 0xE200000000000000;
    sub_1001C6138(v82);
    v23 = v76;
    v22 = v77;
  }

  *(v18 + 48) = v23;
  *(v18 + 56) = v22;
  v24 = v71;
  if ((v64 & 1) != 0 || (sub_1000885F4(&qword_100272548, &qword_100272540, &unk_1001F5610, &protocol conformance descriptor for CRDictionary_v1<A, B>), sub_1001C6448(), sub_1001C6488(), v25 = sub_1001C6478(), v26 = *(v61 + 8), v27 = v15, v28 = v62, v26(v27, v62), v26(v17, v28), v29 = v25 <= v71, v24 = v71, v29))
  {
    v31 = 0;
    v30 = 0xE000000000000000;
  }

  else
  {
    v30 = 0xA400000000000000;
    v31 = 548375522;
  }

  *(v18 + 64) = v31;
  *(v18 + 72) = v30;
  (*(v10 + 16))(v63, v3, v9);
  sub_1000885F4(&qword_1002748B8, &qword_100272540, &unk_1001F5610, &protocol conformance descriptor for CRDictionary_v1<A, B>);
  v76 = sub_1001C6228();
  sub_1001B82F4(&v76, &qword_1002705A0, &unk_1001F9600, sub_1001AAC88, sub_1001A97F8);
  if (v64)
  {
    v32 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v32 = v24;
  }

  v33 = sub_1001B5534(v32, v76);
  v64 = v35;
  v71 = v36 >> 1;
  v37 = (v36 >> 1) - v34;
  if (__OFSUB__(v36 >> 1, v34))
  {
    goto LABEL_28;
  }

  if (v37)
  {
    v38 = v34;
    v61 = v33;
    v78 = _swiftEmptyArrayStorage;
    sub_1000D3898(0, v37 & ~(v37 >> 63), 0);
    if (v37 < 0)
    {
LABEL_29:
      __break(1u);

      __break(1u);
      return result;
    }

    v60 = v18;
    v39 = v78;
    v40 = v71;
    if (v38 > v71)
    {
      v40 = v38;
    }

    v62 = v19;
    v63 = v40;
    while (v63 != v38)
    {
      v41 = v65;
      sub_10009ADF0(v64 + *(v67 + 72) * v38, v65, &qword_1002705A0, &unk_1001F9600);
      v76 = 35;
      v77 = 0xE100000000000000;
      v74 = *v41;
      v83._countAndFlagsBits = sub_1001C6CC8();
      sub_1001C6138(v83);

      v84._countAndFlagsBits = 61;
      v84._object = 0xE100000000000000;
      sub_1001C6138(v84);
      v42 = v66;
      sub_10009ADF0(v41, v66, &qword_1002705A0, &unk_1001F9600);
      v43 = *(v68 + 48);
      v44 = sub_100084528(&qword_10026ED18, &unk_1001F06E0);
      v45 = v69;
      sub_1001C5D88();
      (*(*(v44 - 8) + 8))(v42 + v43, v44);
      v73 = sub_1001C5E48();
      v74 = sub_1001C6CC8();
      v75 = v46;
      v85._countAndFlagsBits = 47;
      v85._object = 0xE100000000000000;
      sub_1001C6138(v85);
      sub_1001C56C8();
      v72 = v73;
      v86._countAndFlagsBits = sub_1001C6CC8();
      sub_1001C6138(v86);

      v48 = v74;
      v47 = v75;
      sub_1001BBBAC(v45, type metadata accessor for ReadingHistoryDay);
      v87._countAndFlagsBits = v48;
      v87._object = v47;
      sub_1001C6138(v87);

      v49 = v76;
      v50 = v77;
      sub_10008875C(v41, &qword_1002705A0, &unk_1001F9600);
      v78 = v39;
      v52 = v39[2];
      v51 = v39[3];
      if (v52 >= v51 >> 1)
      {
        sub_1000D3898((v51 > 1), v52 + 1, 1);
        v39 = v78;
      }

      v39[2] = v52 + 1;
      v53 = &v39[2 * v52];
      v53[4] = v49;
      v53[5] = v50;
      if (v71 == ++v38)
      {
        swift_unknownObjectRelease();
        v18 = v60;
        goto LABEL_26;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  swift_unknownObjectRelease();
  v39 = _swiftEmptyArrayStorage;
LABEL_26:
  v76 = v39;
  sub_100084528(&unk_10026FED0, &unk_1001F1450);
  sub_1000885F4(&qword_10026F850, &unk_10026FED0, &unk_1001F1450, &protocol conformance descriptor for [A]);
  v54 = sub_1001C5FA8();
  v56 = v55;

  *(v18 + 80) = v54;
  *(v18 + 88) = v56;
  v76 = v18;
  v57 = sub_1001C5FA8();

  return v57;
}

uint64_t sub_1001B5534(uint64_t result, uint64_t a2)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    sub_100084528(&qword_1002705A0, &unk_1001F9600);
    return a2;
  }

  return result;
}

double sub_1001B55F8(uint64_t (*a1)(void))
{
  a1(0);

  return result;
}

uint64_t sub_1001B564C(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = *(a2(0) + 24);

  *(v2 + v4) = a1;
  return result;
}

uint64_t sub_1001B56D8(uint64_t a1, uint64_t a2)
{
  static ReadingHistoryModel.fields = 0x7368746E6F6DLL;
  *algn_100281AA8 = 0xE600000000000000;
  qword_100281AB0 = swift_getKeyPath();
  strcpy(byte_100281AB8, "streakRecords");
  HIWORD(qword_100281AC0) = -4864;
  result = swift_getKeyPath();
  qword_100281AC8 = result;
  return result;
}

uint64_t *ReadingHistoryModel.fields.unsafeMutableAddressor()
{
  if (qword_10026ECA0 != -1)
  {
    swift_once();
  }

  return &static ReadingHistoryModel.fields;
}

uint64_t static ReadingHistoryModel.fields.getter@<X0>(void *a1@<X8>)
{
  if (qword_10026ECA0 != -1)
  {
    v7 = a1;
    swift_once();
    a1 = v7;
  }

  v1 = *algn_100281AA8;
  v3 = qword_100281AB0;
  v2 = *byte_100281AB8;
  v4 = qword_100281AC0;
  v5 = qword_100281AC8;
  *a1 = static ReadingHistoryModel.fields;
  a1[1] = v1;
  a1[2] = v3;
  a1[3] = v2;
  a1[4] = v4;
  a1[5] = v5;
}

uint64_t ReadingHistoryModel.init()@<X0>(uint64_t a1@<X8>)
{
  sub_100084528(&unk_10026ED30, &unk_1001F1490);
  sub_1000885F4(&unk_10026F430, &unk_10026ED30, &unk_1001F1490, &protocol conformance descriptor for Anonymous<A>);
  sub_1000885F4(&unk_10026ED40, &unk_10026ED30, &unk_1001F1490, &protocol conformance descriptor for Anonymous<A>);
  sub_1001C5B58();
  v2 = type metadata accessor for ReadingHistoryModel(0);
  sub_1001C4CA8();
  sub_1001BBB44(&unk_10026F440, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  result = sub_1001C5B58();
  *(a1 + *(v2 + 24)) = &_swiftEmptyDictionarySingleton;
  return result;
}

uint64_t sub_1001B59B0(uint64_t a1)
{
  v2 = sub_1001BBB44(&unk_10026F840, type metadata accessor for ReadingHistoryModel, &protocol conformance descriptor for ReadingHistoryModel);

  return static CRStruct_2.fieldKeys.getter(a1, v2);
}

uint64_t sub_1001B5A1C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_100084528(&unk_10026ED30, &unk_1001F1490);
  sub_1000885F4(&unk_10026F430, &unk_10026ED30, &unk_1001F1490, &protocol conformance descriptor for Anonymous<A>);
  sub_1000885F4(&unk_10026ED40, &unk_10026ED30, &unk_1001F1490, &protocol conformance descriptor for Anonymous<A>);
  sub_1001C5B58();
  sub_1001C4CA8();
  sub_1001BBB44(&unk_10026F440, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  result = sub_1001C5B58();
  *(a2 + *(a1 + 24)) = &_swiftEmptyDictionarySingleton;
  return result;
}

uint64_t sub_1001B5B7C(uint64_t a1)
{
  v2 = sub_1001BBB44(&qword_10026F490, type metadata accessor for ReadingHistoryModel, &protocol conformance descriptor for ReadingHistoryModel);

  return CRType.context.getter(a1, v2);
}

uint64_t sub_1001B5BE8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001BBB44(&unk_10026F840, type metadata accessor for ReadingHistoryModel, &protocol conformance descriptor for ReadingHistoryModel);

  return CRStruct_2.newRefs(from:)(a1, a2, v4);
}

uint64_t sub_1001B5C64(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001BBB44(&unk_10026F840, type metadata accessor for ReadingHistoryModel, &protocol conformance descriptor for ReadingHistoryModel);

  return CRStruct_2.actionUndoingDifference(from:)(a1, a2, v4);
}

uint64_t sub_1001B5CE8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001BBB44(&unk_10026F840, type metadata accessor for ReadingHistoryModel, &protocol conformance descriptor for ReadingHistoryModel);

  return CRStruct_2.apply(_:)(a1, a2, v4);
}

uint64_t sub_1001B5D64(uint64_t a1, uint64_t a2)
{
  sub_1001BBB44(&unk_10026F840, type metadata accessor for ReadingHistoryModel, &protocol conformance descriptor for ReadingHistoryModel);

  return sub_1001C5948();
}

uint64_t sub_1001B5DE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1001BBB44(&unk_10026F840, type metadata accessor for ReadingHistoryModel, &protocol conformance descriptor for ReadingHistoryModel);

  return CRStruct_2.delta(_:from:)(a1, a2, a3, v6);
}

uint64_t sub_1001B5E74(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001BBB44(&unk_10026F840, type metadata accessor for ReadingHistoryModel, &protocol conformance descriptor for ReadingHistoryModel);

  return CRStruct_2.canMerge(delta:)(a1, a2, v4);
}

uint64_t sub_1001B5EF0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001BBB44(&unk_10026F840, type metadata accessor for ReadingHistoryModel, &protocol conformance descriptor for ReadingHistoryModel);

  return CRStruct_2.merge(delta:)(a1, a2, v4);
}

uint64_t sub_1001B5F6C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001BBB44(&unk_10026F840, type metadata accessor for ReadingHistoryModel, &protocol conformance descriptor for ReadingHistoryModel);

  return CRStruct_2.copy(renamingReferences:)(a1, a2, v4);
}

uint64_t sub_1001B5FF0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001BBB44(&unk_10026F840, type metadata accessor for ReadingHistoryModel, &protocol conformance descriptor for ReadingHistoryModel);

  return CRStruct_2.copy(renamingReferences:)(a1, a2, v4);
}

uint64_t sub_1001B6074(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1001BBB44(&unk_10026F840, type metadata accessor for ReadingHistoryModel, &protocol conformance descriptor for ReadingHistoryModel);

  return CRStruct_2.observableDifference(from:with:)(a1, a2, a3, v6);
}

uint64_t sub_1001B6108(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001BBB44(&unk_10026F840, type metadata accessor for ReadingHistoryModel, &protocol conformance descriptor for ReadingHistoryModel);

  return CRStruct_2.visitReferences(_:)(a1, a2, v4);
}

BOOL sub_1001B6184()
{
  sub_1001BBB44(&unk_10026F840, type metadata accessor for ReadingHistoryModel, &protocol conformance descriptor for ReadingHistoryModel);

  return CRStruct_2.needToFinalizeTimestamps()();
}

uint64_t sub_1001B61F0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001BBB44(&unk_10026F840, type metadata accessor for ReadingHistoryModel, &protocol conformance descriptor for ReadingHistoryModel);

  return CRStruct_2.finalizeTimestamps(_:)(a1, a2, v4);
}

uint64_t sub_1001B626C(uint64_t a1, uint64_t a2)
{
  sub_1001BBB44(&unk_10026F840, type metadata accessor for ReadingHistoryModel, &protocol conformance descriptor for ReadingHistoryModel);

  return sub_1001C58F8();
}

uint64_t sub_1001B62F0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001BBB44(&unk_10026F840, type metadata accessor for ReadingHistoryModel, &protocol conformance descriptor for ReadingHistoryModel);

  return CRStruct_2.merge(_:)(a1, a2, v4);
}

uint64_t sub_1001B647C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1001BBB44(&qword_10026F460, type metadata accessor for ReadingHistoryModel, &protocol conformance descriptor for ReadingHistoryModel);

  return static CRDT.== infix(_:_:)(a1, a2, a3, v6);
}

uint64_t sub_1001B65F8(uint64_t a1)
{
  v2 = sub_1001BBB44(&unk_10026F840, type metadata accessor for ReadingHistoryModel, &protocol conformance descriptor for ReadingHistoryModel);

  return CRStruct_2.minEncodingVersion.getter(a1, v2);
}

Swift::Int __swiftcall ReadingHistoryModel.readingTimeToday()()
{
  v0 = sub_1001C5E78();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v14 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1001C4CA8();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100084528(&qword_100273DA0, &qword_1001F7E50);
  __chkstk_darwin(v8 - 8);
  v10 = &v14 - v9;
  sub_1001C4C98();
  ReadingHistoryModel.readingHistoryDay(for:)(v10);
  (*(v5 + 8))(v7, v4);
  v11 = type metadata accessor for ReadingHistoryDay(0);
  if ((*(*(v11 - 8) + 48))(v10, 1, v11) == 1)
  {
    sub_10008875C(v10, &qword_100273DA0, &qword_1001F7E50);
    return 0;
  }

  else
  {
    (*(v1 + 16))(v3, v10, v0);
    sub_1001BBBAC(v10, type metadata accessor for ReadingHistoryDay);
    v13 = sub_1001C5E48();
    (*(v1 + 8))(v3, v0);
    return v13;
  }
}

uint64_t ReadingHistoryModel.readingHistoryMonth(year:month:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_100084528(&qword_10026F880, &qword_1001F1470);
  result = __chkstk_darwin(v6 - 8);
  v9 = v17 - v8;
  v10 = 100 * a1;
  if ((a1 * 100) >> 64 != (100 * a1) >> 63)
  {
    __break(1u);
    goto LABEL_8;
  }

  v11 = __OFADD__(v10, a2);
  v12 = v10 + a2;
  if (v11)
  {
LABEL_8:
    __break(1u);
    return result;
  }

  v17[1] = v12;
  sub_100084528(&unk_10026F470, &unk_1001F5600);
  sub_1001C5BA8();
  v13 = sub_100084528(&unk_10026ED30, &unk_1001F1490);
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(v9, 1, v13) == 1)
  {
    sub_10008875C(v9, &qword_10026F880, &qword_1001F1470);
    v15 = 1;
  }

  else
  {
    sub_1001C5D88();
    (*(v14 + 8))(v9, v13);
    v15 = 0;
  }

  v16 = type metadata accessor for ReadingHistoryMonth(0);
  return (*(*(v16 - 8) + 56))(a3, v15, 1, v16);
}

uint64_t sub_1001B6AA8(uint64_t a1)
{
  v2 = sub_100084528(&qword_10026F4E0, &unk_1001F1140);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v11 - v4;
  v6 = type metadata accessor for ReadingHistoryDay(0);
  __chkstk_darwin(v6);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  _s14bookdatastored17ReadingHistoryDayV11readingTime9Coherence9CRCounterVvpfi_0();
  v9 = *(v6 + 20);
  v12 = 0;
  sub_1001C56F8();
  *&v8[*(v6 + 24)] = &_swiftEmptyDictionarySingleton;
  v12 = a1;
  sub_1001C56F8();
  (*(v3 + 40))(&v8[v9], v5, v2);
  sub_1001BBB44(&unk_100273E00, type metadata accessor for ReadingHistoryDay, &protocol conformance descriptor for ReadingHistoryDay);
  return sub_1001C5DC8();
}

uint64_t sub_1001B6C80()
{
  v0 = type metadata accessor for ReadingHistoryDay(0);
  __chkstk_darwin(v0);
  v2 = v4 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  _s14bookdatastored17ReadingHistoryDayV11readingTime9Coherence9CRCounterVvpfi_0();
  v4[1] = 0;
  sub_1001C56F8();
  *&v2[*(v0 + 24)] = &_swiftEmptyDictionarySingleton;
  sub_1001BBB44(&unk_100273E00, type metadata accessor for ReadingHistoryDay, &protocol conformance descriptor for ReadingHistoryDay);
  return sub_1001C5DC8();
}

uint64_t sub_1001B6D80()
{
  v0 = type metadata accessor for ReadingHistoryMonth(0);
  __chkstk_darwin(v0);
  v2 = &v4 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100084528(&qword_10026ED18, &unk_1001F06E0);
  sub_1000885F4(&qword_10026ED20, &qword_10026ED18, &unk_1001F06E0, &protocol conformance descriptor for Anonymous<A>);
  sub_1000885F4(&qword_10026ED28, &qword_10026ED18, &unk_1001F06E0, &protocol conformance descriptor for Anonymous<A>);
  sub_1001C5B58();
  v5 = 0;
  sub_1001C56F8();
  v5 = -1;
  sub_1001C56F8();
  *&v2[*(v0 + 28)] = &_swiftEmptyDictionarySingleton;
  sub_1001BBB44(&qword_100272530, type metadata accessor for ReadingHistoryMonth, &protocol conformance descriptor for ReadingHistoryMonth);
  return sub_1001C5DC8();
}

uint64_t sub_1001B6F48@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, void *a4@<X8>)
{
  v7 = sub_100084528(&qword_10026F858, &unk_1001F8AA0);
  result = __chkstk_darwin(v7);
  v10 = &v13 - v9;
  v11 = *a1;
  if (*a1 < *a2)
  {
    v12 = sub_1001C4CA8();
    sub_1001BBB44(&qword_10026F518, &type metadata accessor for Date, &protocol conformance descriptor for Date);
    result = sub_1001C5FC8();
    if ((result & 1) == 0)
    {
      sub_10009ADF0(a2, v10, &qword_10026F858, &unk_1001F8AA0);
      v11 = *v10;
      result = (*(*(v12 - 8) + 8))(&v10[*(v7 + 48)], v12);
    }
  }

  *a4 = v11;
  return result;
}

uint64_t sub_1001B70BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v79 = a2;
  v80 = sub_1001C4CA8();
  v78 = *(v80 - 8);
  __chkstk_darwin(v80);
  v58 = &v58 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100084528(&unk_10026FC70, &unk_1001F1430);
  v5 = __chkstk_darwin(v4 - 8);
  v65 = &v58 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v5);
  v61 = &v58 - v8;
  __chkstk_darwin(v7);
  v66 = &v58 - v9;
  v10 = sub_100084528(&qword_10026F4E0, &unk_1001F1140);
  v72 = *(v10 - 8);
  v73 = v10;
  __chkstk_darwin(v10);
  v71 = &v58 - v11;
  v12 = sub_1001C4D48();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v58 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1001C4D68();
  v17 = *(v16 - 8);
  v81 = v16;
  v82 = v17;
  v18 = __chkstk_darwin(v16);
  v74 = &v58 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v21 = &v58 - v20;
  v22 = sub_100084528(&qword_100274840, &qword_1001F9588);
  v23 = __chkstk_darwin(v22 - 8);
  v76 = (&v58 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v23);
  v26 = &v58 - v25;
  sub_1001C4CD8();
  v27 = *(v13 + 104);
  v60 = enum case for Calendar.Component.year(_:);
  v27(v15);
  v75 = sub_1001C4D58();
  v28 = *(v13 + 8);
  v28(v15, v12);
  v59 = enum case for Calendar.Component.month(_:);
  v67 = v27;
  v68 = v13 + 104;
  v27(v15);
  v29 = a1;
  v30 = v76;
  v62 = v29;
  v31 = sub_1001C4D58();
  v69 = v15;
  v70 = v28;
  v63 = v12;
  v64 = v13 + 8;
  v28(v15, v12);
  ReadingHistoryModel.readingHistoryMonth(year:month:)(v75, v31, v26);
  v32 = *(v82 + 8);
  v33 = v21;
  v82 += 8;
  v32(v21, v81);
  sub_10009ADF0(v26, v30, &qword_100274840, &qword_1001F9588);
  v34 = type metadata accessor for ReadingHistoryMonth(0);
  if ((*(*(v34 - 8) + 48))(v30, 1, v34) == 1)
  {
    sub_10008875C(v30, &qword_100274840, &qword_1001F9588);
LABEL_6:
    sub_10008875C(v26, &qword_100274840, &qword_1001F9588);
    return (*(v78 + 56))(v79, 1, 1, v80);
  }

  v35 = *(v34 + 24);
  v36 = v71;
  v37 = v72;
  v38 = v73;
  (*(v72 + 16))(v71, v30 + v35, v73);
  sub_1001BBBAC(v30, type metadata accessor for ReadingHistoryMonth);
  sub_1001C56C8();
  (*(v37 + 8))(v36, v38);
  if (v83 < 0)
  {
    goto LABEL_6;
  }

  v75 = v83;
  v77 = v26;
  sub_1001C4CD8();
  v39 = v33;
  sub_1001C4CD8();
  v40 = v69;
  v41 = v63;
  v42 = v67;
  (v67)(v69, v59, v63);
  v43 = sub_1001C4D58();
  v44 = v70;
  v70(v40, v41);
  (v42)(v40, v60, v41);
  v45 = sub_1001C4D58();
  v44(v40, v41);
  v46 = v61;
  sub_1001B9998(v45, v43, v61);
  v76 = v32;
  v32(v39, v81);
  v47 = v78;
  v48 = *(v78 + 48);
  v49 = v80;
  if (v48(v46, 1, v80) == 1)
  {
    sub_10008875C(v46, &unk_10026FC70, &unk_1001F1430);
    v50 = 1;
    v51 = v66;
  }

  else
  {
    v51 = v66;
    sub_1001C4BE8();
    (*(v47 + 8))(v46, v49);
    v50 = 0;
  }

  v53 = *(v47 + 56);
  v53(v51, v50, 1, v49);
  v54 = v65;
  sub_10009ADF0(v51, v65, &unk_10026FC70, &unk_1001F1430);
  if (v48(v54, 1, v49) == 1)
  {
    sub_10008875C(v51, &unk_10026FC70, &unk_1001F1430);
    v76(v74, v81);
    sub_10008875C(v77, &qword_100274840, &qword_1001F9588);
    sub_10008875C(v54, &unk_10026FC70, &unk_1001F1430);
    return (v53)(v79, 1, 1, v49);
  }

  else
  {
    v55 = v58;
    (*(v47 + 32))(v58, v54, v49);
    v56 = v69;
    (v67)(v69, enum case for Calendar.Component.day(_:), v41);
    v57 = v74;
    sub_1001C4D38();
    v70(v56, v41);
    (*(v47 + 8))(v55, v49);
    sub_10008875C(v51, &unk_10026FC70, &unk_1001F1430);
    v76(v57, v81);
    return sub_10008875C(v77, &qword_100274840, &qword_1001F9588);
  }
}

void *sub_1001B7990(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001C4CA8();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v26 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v25 = &v25 - v8;
  v9 = sub_1001C4D68();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_100084528(&unk_10026FC70, &unk_1001F1430);
  v14 = __chkstk_darwin(v13 - 8);
  v16 = &v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v18 = &v25 - v17;
  sub_1001C4CD8();
  sub_1001B9998(a1, a2, v18);
  v19 = *(v10 + 8);
  v27 = v9;
  v19(v12, v9);
  sub_10009ADF0(v18, v16, &unk_10026FC70, &unk_1001F1430);
  if ((*(v5 + 48))(v16, 1, v4) == 1)
  {
    sub_10008875C(v18, &unk_10026FC70, &unk_1001F1430);
    v20 = 0;
    v18 = v16;
  }

  else
  {
    v21 = v25;
    (*(v5 + 32))(v25, v16, v4);
    sub_1001C4CD8();
    v22 = v26;
    sub_1001C4BE8();
    v20 = sub_1001AC6B4(v22, 1);
    v23 = *(v5 + 8);
    v23(v22, v4);
    v19(v12, v27);
    v23(v21, v4);
  }

  sub_10008875C(v18, &unk_10026FC70, &unk_1001F1430);
  return v20;
}

uint64_t sub_1001B7CB8(uint64_t a1, uint64_t a2)
{
  v37 = a2;
  v3 = type metadata accessor for ReadingHistoryDay(0);
  __chkstk_darwin(v3 - 8);
  v5 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100084528(&qword_10026ED18, &unk_1001F06E0);
  v34 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v32 - v7;
  v9 = sub_100084528(&qword_100272518, &qword_1001F55E8);
  v10 = __chkstk_darwin(v9 - 8);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v32 - v13;
  v39 = sub_100084528(&qword_100272520, &qword_1001F55F0);
  v33 = *(v39 - 8);
  __chkstk_darwin(v39);
  v16 = &v32 - v15;
  v36 = type metadata accessor for ReadingHistoryMonth(0);
  v17 = *(v36 - 8);
  __chkstk_darwin(v36);
  v35 = &v32 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_100084528(&qword_100274840, &qword_1001F9588);
  v20 = __chkstk_darwin(v19 - 8);
  v22 = &v32 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v24 = &v32 - v23;
  ReadingHistoryModel.readingHistoryMonth(year:month:)(a1, v37, &v32 - v23);
  sub_10009ADF0(v24, v22, &qword_100274840, &qword_1001F9588);
  if ((*(v17 + 48))(v22, 1, v36) == 1)
  {
    sub_10008875C(v24, &qword_100274840, &qword_1001F9588);
    v25 = 0;
  }

  else
  {
    v38 = v24;
    sub_1001BD1C0(v22, v35, type metadata accessor for ReadingHistoryMonth);
    sub_100084528(&qword_100272540, &unk_1001F5610);
    sub_1001C5B48();
    v25 = 0;
    v26 = (v34 + 32);
    v27 = (v34 + 8);
    while (1)
    {
      sub_1001C5B08();
      sub_10009AE58(v12, v14, &qword_100272518, &qword_1001F55E8);
      v28 = sub_100084528(&qword_1002705A0, &unk_1001F9600);
      if ((*(*(v28 - 8) + 48))(v14, 1, v28) == 1)
      {
        break;
      }

      (*v26)(v8, &v14[*(v28 + 48)], v6);
      sub_1001C5D88();
      v29 = sub_1001C5E48();
      sub_1001BBBAC(v5, type metadata accessor for ReadingHistoryDay);
      (*v27)(v8, v6);
      v30 = __OFADD__(v25, v29);
      v25 += v29;
      if (v30)
      {
        __break(1u);
        break;
      }
    }

    (*(v33 + 8))(v16, v39);
    sub_1001BBBAC(v35, type metadata accessor for ReadingHistoryMonth);
    v22 = v38;
  }

  sub_10008875C(v22, &qword_100274840, &qword_1001F9588);
  return v25;
}

Swift::Int sub_1001B81BC(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1001AAC24(v2);
  }

  v3 = *(v2 + 2);
  v18[0] = (v2 + 32);
  v18[1] = v3;
  result = sub_1001C6CB8(v3);
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = -1;
      v9 = 1;
      v10 = v2 + 32;
      do
      {
        v11 = *&v2[8 * v9 + 32];
        v12 = v8;
        v13 = v10;
        do
        {
          v14 = *v13;
          if (v11 >= *v13)
          {
            break;
          }

          *v13 = v11;
          *(v13 + 1) = v14;
          v13 -= 8;
        }

        while (!__CFADD__(v12++, 1));
        ++v9;
        v10 += 8;
        --v8;
      }

      while (v9 != v3);
    }
  }

  else
  {
    v5 = result;
    v6 = v3 >> 1;
    if (v3 >= 2)
    {
      v7 = sub_1001C62D8();
      v7[2] = v6;
    }

    else
    {
      v7 = _swiftEmptyArrayStorage;
    }

    v16[0] = v7 + 4;
    v16[1] = v6;
    sub_1001BA2A4(v16, v17, v18, v5);
    v7[2] = 0;
  }

  *a1 = v2;
  return result;
}

Swift::Int sub_1001B82F4(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(uint64_t), void (*a5)(uint64_t *, unint64_t *, unint64_t *))
{
  v10 = *(sub_100084528(a2, a3) - 8);
  v11 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v11 = a4(v11);
  }

  v12 = *(v11 + 16);
  v14[0] = v11 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
  v14[1] = v12;
  result = sub_1001B9EFC(v14, a2, a3, a5);
  *a1 = v11;
  return result;
}

Swift::Bool __swiftcall ReadingHistoryModel.DayKey.isTheDayBefore(_:)(bookdatastored::ReadingHistoryModel::DayKey a1)
{
  v49 = v1;
  v50 = v2;
  day = a1.day;
  yearMonth = a1.yearMonth;
  v3 = sub_1001C4D68();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v45 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100084528(&unk_10026FC70, &unk_1001F1430);
  v7 = __chkstk_darwin(v6 - 8);
  v48 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v10 = &v40 - v9;
  v11 = sub_1001C4CA8();
  v12 = *(v11 - 8);
  v13 = __chkstk_darwin(v11);
  v42 = &v40 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v13);
  v43 = &v40 - v16;
  __chkstk_darwin(v15);
  v51 = &v40 - v17;
  v18 = sub_100084528(&qword_10026F8B8, &unk_1001F8A90);
  __chkstk_darwin(v18 - 8);
  v20 = &v40 - v19;
  v21 = sub_100084528(&qword_10026F8C0, &unk_1001F14A0);
  __chkstk_darwin(v21 - 8);
  v23 = &v40 - v22;
  v24 = sub_1001C4948();
  v25 = *(v24 - 8);
  __chkstk_darwin(v24);
  v27 = &v40 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = v4;
  v47 = v3;
  (*(v4 + 56))(v23, 1, 1, v3);
  v28 = sub_1001C4D78();
  (*(*(v28 - 8) + 56))(v20, 1, 1, v28);
  sub_1001C4938();
  sub_1001ABADC(v49, v50, v10);
  v29 = *(v12 + 48);
  if (v29(v10, 1, v11) == 1)
  {
    (*(v25 + 8))(v27, v24);
LABEL_5:
    sub_10008875C(v10, &unk_10026FC70, &unk_1001F1430);
    return 0;
  }

  v49 = v24;
  v50 = v12;
  v30 = *(v12 + 32);
  v31 = v45;
  v30(v51, v10, v11);
  sub_1001C4CD8();
  v10 = v48;
  sub_1001C4D28();
  (*(v46 + 8))(v31, v47);
  if (v29(v10, 1, v11) == 1)
  {
    (*(v50 + 8))(v51, v11);
    (*(v25 + 8))(v27, v49);
    goto LABEL_5;
  }

  v33 = v43;
  v30(v43, v10, v11);
  v34 = v50;
  v35 = v42;
  (*(v50 + 16))(v42, v33, v11);
  v36 = _s14bookdatastored19ReadingHistoryModelV6DayKeyVyAE10Foundation4DateVcfC_0(v35);
  v38 = v37;
  v39 = *(v34 + 8);
  v39(v33, v11);
  v39(v51, v11);
  (*(v25 + 8))(v27, v49);
  if (v36 == yearMonth)
  {
    return v38 == day;
  }

  return 0;
}

Swift::Int ReadingHistoryModel.DayKey.hashValue.getter(Swift::UInt a1, Swift::UInt a2)
{
  sub_1001C6DF8();
  sub_1001C6E08(a1);
  sub_1001C6E08(a2);
  return sub_1001C6E28();
}

uint64_t *sub_1001B8A60(uint64_t *result, uint64_t *a2)
{
  v2 = 100 * *result;
  if ((*result * 100) >> 64 != v2 >> 63)
  {
    __break(1u);
    goto LABEL_7;
  }

  v3 = result[1];
  v4 = __OFADD__(v2, v3);
  v5 = v2 + v3;
  if (v4)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  v6 = 100 * *a2;
  if ((*a2 * 100) >> 64 != v6 >> 63)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v7 = a2[1];
  v4 = __OFADD__(v6, v7);
  v8 = v6 + v7;
  if (!v4)
  {
    return (v5 < v8);
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t *sub_1001B8AC4(uint64_t *result, uint64_t *a2)
{
  v2 = 100 * *a2;
  if ((*a2 * 100) >> 64 != v2 >> 63)
  {
    __break(1u);
    goto LABEL_7;
  }

  v3 = a2[1];
  v4 = __OFADD__(v2, v3);
  v5 = v2 + v3;
  if (v4)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  v6 = 100 * *result;
  if ((*result * 100) >> 64 != v6 >> 63)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v7 = result[1];
  v4 = __OFADD__(v6, v7);
  v8 = v6 + v7;
  if (!v4)
  {
    return (v5 >= v8);
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t *sub_1001B8B28(uint64_t *result, uint64_t *a2)
{
  v2 = 100 * *result;
  if ((*result * 100) >> 64 != v2 >> 63)
  {
    __break(1u);
    goto LABEL_7;
  }

  v3 = result[1];
  v4 = __OFADD__(v2, v3);
  v5 = v2 + v3;
  if (v4)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  v6 = 100 * *a2;
  if ((*a2 * 100) >> 64 != v6 >> 63)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v7 = a2[1];
  v4 = __OFADD__(v6, v7);
  v8 = v6 + v7;
  if (!v4)
  {
    return (v5 >= v8);
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t *sub_1001B8B8C(uint64_t *result, uint64_t *a2)
{
  v2 = 100 * *a2;
  if ((*a2 * 100) >> 64 != v2 >> 63)
  {
    __break(1u);
    goto LABEL_7;
  }

  v3 = a2[1];
  v4 = __OFADD__(v2, v3);
  v5 = v2 + v3;
  if (v4)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  v6 = 100 * *result;
  if ((*result * 100) >> 64 != v6 >> 63)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v7 = result[1];
  v4 = __OFADD__(v6, v7);
  v8 = v6 + v7;
  if (!v4)
  {
    return (v5 < v8);
  }

LABEL_9:
  __break(1u);
  return result;
}

Swift::Int sub_1001B8BF0()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1001C6DF8();
  sub_1001C6E08(v1);
  sub_1001C6E08(v2);
  return sub_1001C6E28();
}

void sub_1001B8C4C()
{
  v1 = v0[1];
  sub_1001C6E08(*v0);
  sub_1001C6E08(v1);
}

Swift::Int sub_1001B8C88(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  sub_1001C6DF8();
  sub_1001C6E08(v2);
  sub_1001C6E08(v3);
  return sub_1001C6E28();
}

uint64_t ReadingHistoryModel.debugDescription.getter()
{
  v98 = sub_100084528(&qword_10026F858, &unk_1001F8AA0);
  v102 = *(v98 - 8);
  v1 = __chkstk_darwin(v98);
  v97 = v82 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v1);
  v96 = (v82 - v3);
  v4 = type metadata accessor for ReadingHistoryMonth(0);
  __chkstk_darwin(v4 - 8);
  v101 = v82 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v100 = sub_100084528(&qword_10026F888, &qword_1001F1478);
  v103 = *(v100 - 8);
  v6 = __chkstk_darwin(v100);
  v99._object = v82 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v99._countAndFlagsBits = v82 - v8;
  v94 = sub_100084528(&qword_10026F830, &qword_1001F0E80);
  v92 = *(v94 - 8);
  __chkstk_darwin(v94);
  v93 = v82 - v9;
  v10 = sub_100084528(&unk_10026F470, &unk_1001F5600);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v82 - v12;
  v14 = sub_100084528(&qword_100274568, &unk_1001F8AB0);
  v15 = *(v14 - 8);
  v16 = __chkstk_darwin(v14);
  v18 = v82 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v20 = v82 - v19;
  v21 = sub_1000885F4(&qword_100274570, &unk_10026F470, &unk_1001F5600, &protocol conformance descriptor for CRDictionary_v1<A, B>);
  sub_1001C6448();
  v22 = v0;
  v87 = v21;
  sub_1001C6488();
  sub_1000885F4(&qword_100274578, &qword_100274568, &unk_1001F8AB0, &protocol conformance descriptor for CRDictionary<A, B>.Index);
  v23 = sub_1001C5FD8();
  v24 = *(v15 + 8);
  v89 = v18;
  v24(v18, v14);
  v88 = v20;
  v90 = v15 + 8;
  v91 = v14;
  v86 = v24;
  v24(v20, v14);
  if (v23)
  {
    return 0xD00000000000001BLL;
  }

  (*(v11 + 16))(v13, v22, v10);
  sub_1000885F4(&qword_10026F8A0, &unk_10026F470, &unk_1001F5600, &protocol conformance descriptor for CRDictionary_v1<A, B>);
  v105 = sub_1001C6228();
  v26 = 0;
  sub_1001B82F4(&v105, &qword_10026F888, &qword_1001F1478, sub_1001AAD00, sub_1001A9920);
  v27 = v22;
  v84 = v10;
  v28 = v105;
  v29 = *(v105 + 16);
  v85 = v22;
  if (v29)
  {
    v83 = 0;
    v107 = _swiftEmptyArrayStorage;
    sub_1000D3898(0, v29, 0);
    v30 = v107;
    v31 = (*(v103 + 80) + 32) & ~*(v103 + 80);
    v82[1] = v28;
    v32 = v28 + v31;
    v95 = v103[9];
    do
    {
      v103 = v30;
      countAndFlagsBits = v99._countAndFlagsBits;
      sub_10009ADF0(v32, v99._countAndFlagsBits, &qword_10026F888, &qword_1001F1478);
      v105 = 0x2068746E6F4DLL;
      v106 = 0xE600000000000000;
      v104 = *countAndFlagsBits;
      v108._countAndFlagsBits = sub_1001C6CC8();
      sub_1001C6138(v108);

      v109._countAndFlagsBits = 8250;
      v109._object = 0xE200000000000000;
      sub_1001C6138(v109);
      object = v99._object;
      sub_10009ADF0(countAndFlagsBits, v99._object, &qword_10026F888, &qword_1001F1478);
      v35 = *(v100 + 48);
      v36 = sub_100084528(&unk_10026ED30, &unk_1001F1490);
      v37 = v101;
      sub_1001C5D88();
      (*(*(v36 - 8) + 8))(&object[v35], v36);
      v38 = sub_1001B4BF8(0, 1);
      v40 = v39;
      sub_1001BBBAC(v37, type metadata accessor for ReadingHistoryMonth);
      v110._countAndFlagsBits = v38;
      v110._object = v40;
      sub_1001C6138(v110);

      v111._countAndFlagsBits = 10;
      v111._object = 0xE100000000000000;
      sub_1001C6138(v111);
      v42 = v105;
      v41 = v106;
      v43 = countAndFlagsBits;
      v30 = v103;
      sub_10008875C(v43, &qword_10026F888, &qword_1001F1478);
      v107 = v30;
      v45 = v30[2];
      v44 = v30[3];
      if (v45 >= v44 >> 1)
      {
        sub_1000D3898((v44 > 1), v45 + 1, 1);
        v30 = v107;
      }

      v30[2] = v45 + 1;
      v46 = &v30[2 * v45];
      v46[4] = v42;
      v46[5] = v41;
      v32 += v95;
      --v29;
    }

    while (v29);

    v27 = v85;
    v26 = v83;
  }

  else
  {

    v30 = _swiftEmptyArrayStorage;
  }

  v105 = v30;
  v47 = sub_100084528(&unk_10026FED0, &unk_1001F1450);
  v48 = sub_1000885F4(&qword_10026F850, &unk_10026FED0, &unk_1001F1450, &protocol conformance descriptor for [A]);
  v49 = sub_1001C5FA8();
  v51 = v50;

  v52 = type metadata accessor for ReadingHistoryModel(0);
  (*(v92 + 16))(v93, v27 + *(v52 + 20), v94);
  sub_1000885F4(&qword_10026F870, &qword_10026F830, &qword_1001F0E80, &protocol conformance descriptor for CRDictionary_v1<A, B>);
  v105 = sub_1001C6228();
  sub_1001B82F4(&v105, &qword_10026F858, &unk_1001F8AA0, sub_1001AACEC, sub_1001A990C);
  if (v26)
  {
    goto LABEL_21;
  }

  v94 = v48;
  v95 = v47;
  v99._countAndFlagsBits = v49;
  v99._object = v51;
  v53 = v105;
  v54 = *(v105 + 16);
  if (v54)
  {
    v107 = _swiftEmptyArrayStorage;
    sub_1000D3898(0, v54, 0);
    v55 = 0;
    v56 = v107;
    v57 = *(v102 + 80);
    v100 = v54;
    v101 = (v53 + ((v57 + 32) & ~v57));
    v103 = v53;
    while (v55 < *(v53 + 16))
    {
      v58 = v96;
      sub_10009ADF0(&v101[*(v102 + 72) * v55], v96, &qword_10026F858, &unk_1001F8AA0);
      v59 = [objc_allocWithZone(NSISO8601DateFormatter) init];
      [v59 setFormatOptions:275];
      v104 = *v58;
      v105 = sub_1001C6CC8();
      v106 = v60;
      v112._countAndFlagsBits = 0x203A7961642DLL;
      v112._object = 0xE600000000000000;
      sub_1001C6138(v112);
      v61 = v97;
      sub_10009ADF0(v58, v97, &qword_10026F858, &unk_1001F8AA0);
      v62 = *(v98 + 48);
      isa = sub_1001C4C38().super.isa;
      v64 = sub_1001C4CA8();
      (*(*(v64 - 8) + 8))(v61 + v62, v64);
      v65 = [v59 stringFromDate:isa];

      v66 = sub_1001C6018();
      v68 = v67;

      v113._countAndFlagsBits = v66;
      v113._object = v68;
      sub_1001C6138(v113);

      v69 = v105;
      v70 = v106;
      sub_10008875C(v58, &qword_10026F858, &unk_1001F8AA0);
      v107 = v56;
      v72 = v56[2];
      v71 = v56[3];
      if (v72 >= v71 >> 1)
      {
        sub_1000D3898((v71 > 1), v72 + 1, 1);
        v56 = v107;
      }

      ++v55;
      v56[2] = v72 + 1;
      v73 = &v56[2 * v72];
      v73[4] = v69;
      v73[5] = v70;
      v53 = v103;
      if (v100 == v55)
      {

        goto LABEL_19;
      }
    }

    __break(1u);
LABEL_21:

    __break(1u);
    return result;
  }

  v56 = _swiftEmptyArrayStorage;
LABEL_19:
  v105 = v56;
  v74 = sub_1001C5FA8();
  v76 = v75;

  v105 = 0;
  v106 = 0xE000000000000000;
  sub_1001C69C8(56);
  v114._countAndFlagsBits = 0xD00000000000001DLL;
  v114._object = 0x8000000100204400;
  sub_1001C6138(v114);
  v77 = v88;
  sub_1001C6448();
  v78 = v89;
  sub_1001C6488();
  v79 = sub_1001C6478();
  v80 = v91;
  v81 = v86;
  v86(v78, v91);
  v81(v77, v80);
  v107 = v79;
  v115._countAndFlagsBits = sub_1001C6CC8();
  sub_1001C6138(v115);

  v116._countAndFlagsBits = 10;
  v116._object = 0xE100000000000000;
  sub_1001C6138(v116);
  sub_1001C6138(v99);

  v117._object = 0x8000000100204420;
  v117._countAndFlagsBits = 0xD000000000000011;
  sub_1001C6138(v117);
  v118._countAndFlagsBits = v74;
  v118._object = v76;
  sub_1001C6138(v118);

  v119._countAndFlagsBits = 4065885;
  v119._object = 0xE300000000000000;
  sub_1001C6138(v119);
  return v105;
}

uint64_t sub_1001B9998@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v35 = a1;
  v36 = a2;
  v37 = a3;
  v3 = sub_1001C4D48();
  v33 = *(v3 - 8);
  v34 = v3;
  __chkstk_darwin(v3);
  v32 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1001C4CA8();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v31 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100084528(&qword_10026F8B8, &unk_1001F8A90);
  __chkstk_darwin(v8 - 8);
  v10 = &v31 - v9;
  v11 = sub_100084528(&qword_10026F8C0, &unk_1001F14A0);
  __chkstk_darwin(v11 - 8);
  v13 = &v31 - v12;
  v14 = sub_1001C4948();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v31 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_100084528(&unk_10026FC70, &unk_1001F1430);
  v19 = __chkstk_darwin(v18 - 8);
  v21 = &v31 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v23 = &v31 - v22;
  v24 = sub_1001C4D68();
  (*(*(v24 - 8) + 56))(v13, 1, 1, v24);
  v25 = sub_1001C4D78();
  (*(*(v25 - 8) + 56))(v10, 1, 1, v25);
  sub_1001C4938();
  sub_1001C4918();
  sub_1001C4928();
  sub_1001C4D18();
  (*(v15 + 8))(v17, v14);
  sub_10009ADF0(v23, v21, &unk_10026FC70, &unk_1001F1430);
  if ((*(v6 + 48))(v21, 1, v5) == 1)
  {
    sub_10008875C(v23, &unk_10026FC70, &unk_1001F1430);
    sub_10008875C(v21, &unk_10026FC70, &unk_1001F1430);
    return (*(v6 + 56))(v37, 1, 1, v5);
  }

  else
  {
    v27 = v31;
    (*(v6 + 32))(v31, v21, v5);
    v29 = v32;
    v28 = v33;
    v30 = v34;
    (*(v33 + 104))(v32, enum case for Calendar.Component.month(_:), v34);
    sub_1001C4D38();
    (*(v28 + 8))(v29, v30);
    (*(v6 + 8))(v27, v5);
    return sub_10008875C(v23, &unk_10026FC70, &unk_1001F1430);
  }
}

Swift::Int sub_1001B9EFC(uint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(uint64_t *, unint64_t *, unint64_t *))
{
  v8 = a1[1];
  result = sub_1001C6CB8(v8);
  if (result < v8)
  {
    if (v8 >= -1)
    {
      v10 = result;
      v11 = v8 / 2;
      if (v8 <= 1)
      {
        v12 = _swiftEmptyArrayStorage;
      }

      else
      {
        sub_100084528(a2, a3);
        v12 = sub_1001C62D8();
        v12[2] = v11;
      }

      v13 = *(sub_100084528(a2, a3) - 8);
      v14[0] = v12 + ((*(v13 + 80) + 32) & ~*(v13 + 80));
      v14[1] = v11;
      sub_1001BA7F0(v14, v15, a1, v10, a2, a3, a4);
      v12[2] = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v8 < 0)
  {
    goto LABEL_12;
  }

  if (v8)
  {
    return sub_1001BA060(0, v8, 1, a1, a2, a3);
  }

  return result;
}

uint64_t sub_1001BA060(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, uint64_t *a6)
{
  v41 = sub_100084528(a5, a6);
  v12 = __chkstk_darwin(v41);
  v40 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v12);
  v16 = (&v31 - v15);
  result = __chkstk_darwin(v14);
  v20 = (&v31 - v19);
  v33 = a2;
  if (a3 != a2)
  {
    v21 = *a4;
    v22 = *(v18 + 72);
    v23 = *a4 + v22 * (a3 - 1);
    v38 = -v22;
    v39 = v21;
    v24 = a1 - a3;
    v32 = v22;
    v25 = v21 + v22 * a3;
LABEL_5:
    v36 = v23;
    v37 = a3;
    v34 = v25;
    v35 = v24;
    v26 = v24;
    while (1)
    {
      sub_10009ADF0(v25, v20, a5, a6);
      sub_10009ADF0(v23, v16, a5, a6);
      v27 = *v20;
      v28 = *v16;
      sub_10008875C(v16, a5, a6);
      result = sub_10008875C(v20, a5, a6);
      if (v27 >= v28)
      {
LABEL_4:
        a3 = v37 + 1;
        v23 = v36 + v32;
        v24 = v35 - 1;
        v25 = v34 + v32;
        if (v37 + 1 == v33)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v39)
      {
        break;
      }

      v29 = v40;
      sub_10009AE58(v25, v40, a5, a6);
      swift_arrayInitWithTakeFrontToBack();
      result = sub_10009AE58(v29, v23, a5, a6);
      v23 += v38;
      v25 += v38;
      if (__CFADD__(v26++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1001BA2A4(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v83 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = _swiftEmptyArrayStorage;
LABEL_88:
    v5 = *v83;
    if (!*v83)
    {
      goto LABEL_128;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_122:
      result = sub_1001A97CC(v8);
      v8 = result;
    }

    v75 = v8 + 2;
    v76 = v8[2];
    if (v76 >= 2)
    {
      while (*a3)
      {
        v77 = &v8[2 * v76];
        v78 = *v77;
        v79 = &v75[2 * v76];
        v80 = v79[1];
        sub_1001BB13C((*a3 + 8 * *v77), (*a3 + 8 * *v79), (*a3 + 8 * v80), v5);
        if (v4)
        {
        }

        if (v80 < v78)
        {
          goto LABEL_114;
        }

        if (v76 - 2 >= *v75)
        {
          goto LABEL_115;
        }

        *v77 = v78;
        v77[1] = v80;
        v81 = *v75 - v76;
        if (*v75 < v76)
        {
          goto LABEL_116;
        }

        v76 = *v75 - 1;
        result = memmove(v79, v79 + 2, 16 * v81);
        *v75 = v76;
        if (v76 <= 1)
        {
        }
      }

      goto LABEL_126;
    }
  }

  v7 = 0;
  v8 = _swiftEmptyArrayStorage;
  v82 = a4;
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = *(*a3 + 8 * v7);
      v11 = *(*a3 + 8 * v9);
      v12 = v9 + 2;
      v13 = v10;
      while (v6 != v12)
      {
        v14 = *(*a3 + 8 * v12);
        v15 = (v10 < v11) ^ (v14 >= v13);
        ++v12;
        v13 = v14;
        if ((v15 & 1) == 0)
        {
          v7 = v12 - 1;
          if (v10 >= v11)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v7 = v6;
      if (v10 >= v11)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v7 < v9)
      {
        goto LABEL_119;
      }

      if (v9 < v7)
      {
        v16 = v7 - 1;
        v17 = v9;
        do
        {
          if (v17 != v16)
          {
            v20 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v18 = *(v20 + 8 * v17);
            *(v20 + 8 * v17) = *(v20 + 8 * v16);
            *(v20 + 8 * v16) = v18;
          }
        }

        while (++v17 < v16--);
        v6 = a3[1];
      }
    }

LABEL_20:
    if (v7 < v6)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_118;
      }

      if (v7 - v9 < a4)
      {
        if (__OFADD__(v9, a4))
        {
          goto LABEL_120;
        }

        if (v9 + a4 < v6)
        {
          v6 = v9 + a4;
        }

        if (v6 < v9)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v7 != v6)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v7 < v9)
    {
      goto LABEL_117;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1000AD9F0(0, v8[2] + 1, 1, v8);
      v8 = result;
    }

    v5 = v8[2];
    v29 = v8[3];
    v30 = v5 + 1;
    if (v5 >= v29 >> 1)
    {
      result = sub_1000AD9F0((v29 > 1), v5 + 1, 1, v8);
      v8 = result;
    }

    v8[2] = v30;
    v31 = v8 + 4;
    v32 = &v8[2 * v5 + 4];
    *v32 = v9;
    v32[1] = v7;
    v84 = *v83;
    if (!*v83)
    {
      goto LABEL_127;
    }

    if (v5)
    {
      while (1)
      {
        v5 = v30 - 1;
        if (v30 >= 4)
        {
          break;
        }

        if (v30 == 3)
        {
          v33 = v8[4];
          v34 = v8[5];
          v43 = __OFSUB__(v34, v33);
          v35 = v34 - v33;
          v36 = v43;
LABEL_57:
          if (v36)
          {
            goto LABEL_104;
          }

          v49 = &v8[2 * v30];
          v51 = *v49;
          v50 = v49[1];
          v52 = __OFSUB__(v50, v51);
          v53 = v50 - v51;
          v54 = v52;
          if (v52)
          {
            goto LABEL_106;
          }

          v55 = &v31[2 * v5];
          v57 = *v55;
          v56 = v55[1];
          v43 = __OFSUB__(v56, v57);
          v58 = v56 - v57;
          if (v43)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v53, v58))
          {
            goto LABEL_111;
          }

          if (v53 + v58 >= v35)
          {
            if (v35 < v58)
            {
              v5 = v30 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v30 < 2)
        {
          goto LABEL_112;
        }

        v59 = &v8[2 * v30];
        v61 = *v59;
        v60 = v59[1];
        v43 = __OFSUB__(v60, v61);
        v53 = v60 - v61;
        v54 = v43;
LABEL_72:
        if (v54)
        {
          goto LABEL_108;
        }

        v62 = &v31[2 * v5];
        v64 = *v62;
        v63 = v62[1];
        v43 = __OFSUB__(v63, v64);
        v65 = v63 - v64;
        if (v43)
        {
          goto LABEL_110;
        }

        if (v65 < v53)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v5 - 1 >= v30)
        {
          __break(1u);
LABEL_99:
          __break(1u);
LABEL_100:
          __break(1u);
LABEL_101:
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
          __break(1u);
LABEL_104:
          __break(1u);
LABEL_105:
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
          goto LABEL_121;
        }

        if (!*a3)
        {
          goto LABEL_124;
        }

        v70 = &v31[2 * v5 - 2];
        v71 = *v70;
        v72 = &v31[2 * v5];
        v73 = v72[1];
        sub_1001BB13C((*a3 + 8 * *v70), (*a3 + 8 * *v72), (*a3 + 8 * v73), v84);
        if (v4)
        {
        }

        if (v73 < v71)
        {
          goto LABEL_99;
        }

        if (v5 > v8[2])
        {
          goto LABEL_100;
        }

        *v70 = v71;
        v70[1] = v73;
        v74 = v8[2];
        if (v5 >= v74)
        {
          goto LABEL_101;
        }

        v30 = v74 - 1;
        result = memmove(&v31[2 * v5], v72 + 2, 16 * (v74 - 1 - v5));
        v8[2] = v74 - 1;
        if (v74 <= 2)
        {
          goto LABEL_3;
        }
      }

      v37 = &v31[2 * v30];
      v38 = *(v37 - 8);
      v39 = *(v37 - 7);
      v43 = __OFSUB__(v39, v38);
      v40 = v39 - v38;
      if (v43)
      {
        goto LABEL_102;
      }

      v42 = *(v37 - 6);
      v41 = *(v37 - 5);
      v43 = __OFSUB__(v41, v42);
      v35 = v41 - v42;
      v36 = v43;
      if (v43)
      {
        goto LABEL_103;
      }

      v44 = &v8[2 * v30];
      v46 = *v44;
      v45 = v44[1];
      v43 = __OFSUB__(v45, v46);
      v47 = v45 - v46;
      if (v43)
      {
        goto LABEL_105;
      }

      v43 = __OFADD__(v35, v47);
      v48 = v35 + v47;
      if (v43)
      {
        goto LABEL_107;
      }

      if (v48 >= v40)
      {
        v66 = &v31[2 * v5];
        v68 = *v66;
        v67 = v66[1];
        v43 = __OFSUB__(v67, v68);
        v69 = v67 - v68;
        if (v43)
        {
          goto LABEL_113;
        }

        if (v35 < v69)
        {
          v5 = v30 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v6 = a3[1];
    a4 = v82;
    if (v7 >= v6)
    {
      goto LABEL_88;
    }
  }

  v21 = *a3;
  v22 = *a3 + 8 * v7 - 8;
  v23 = v9 - v7;
LABEL_30:
  v24 = *(v21 + 8 * v7);
  v25 = v23;
  v26 = v22;
  while (1)
  {
    v27 = *v26;
    if (v24 >= *v26)
    {
LABEL_29:
      ++v7;
      v22 += 8;
      --v23;
      if (v7 != v6)
      {
        goto LABEL_30;
      }

      v7 = v6;
      goto LABEL_37;
    }

    if (!v21)
    {
      break;
    }

    *v26 = v24;
    v26[1] = v27;
    --v26;
    if (__CFADD__(v25++, 1))
    {
      goto LABEL_29;
    }
  }

  __break(1u);
LABEL_124:
  __break(1u);
LABEL_125:
  __break(1u);
LABEL_126:
  __break(1u);
LABEL_127:
  __break(1u);
LABEL_128:
  __break(1u);
  return result;
}

uint64_t sub_1001BA7F0(unint64_t *a1, uint64_t a2, void *a3, int64_t a4, uint64_t *a5, uint64_t *a6, void (*a7)(uint64_t *, unint64_t *, unint64_t *))
{
  v118 = a7;
  v9 = a6;
  v10 = v8;
  v113 = a1;
  v125 = a5;
  v128 = sub_100084528(a5, a6);
  v121 = *(v128 - 8);
  v13 = __chkstk_darwin(v128);
  v116 = &v109 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v13);
  v127 = (&v109 - v16);
  v17 = __chkstk_darwin(v15);
  v130 = (&v109 - v18);
  result = __chkstk_darwin(v17);
  v129 = (&v109 - v20);
  v21 = a3[1];
  v123 = a3;
  v131 = v9;
  if (v21 < 1)
  {
    v23 = _swiftEmptyArrayStorage;
LABEL_98:
    a4 = *v113;
    if (!*v113)
    {
      goto LABEL_138;
    }

    v7 = v23;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      result = v7;
    }

    else
    {
LABEL_132:
      result = sub_1001A97CC(v7);
    }

    v132 = result;
    v7 = *(result + 16);
    if (v7 >= 2)
    {
      v103 = v118;
      while (1)
      {
        v104 = *a3;
        if (!*a3)
        {
          goto LABEL_136;
        }

        a3 = (v7 - 1);
        v105 = *(result + 16 * v7);
        v106 = result;
        v107 = *(result + 16 * (v7 - 1) + 40);
        sub_1001BB330(v104 + *(v121 + 72) * v105, v104 + *(v121 + 72) * *(result + 16 * (v7 - 1) + 32), v104 + *(v121 + 72) * v107, a4, v125, v131, v103);
        if (v10)
        {
        }

        if (v107 < v105)
        {
          goto LABEL_125;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v106 = sub_1001A97CC(v106);
        }

        if (v7 - 2 >= *(v106 + 2))
        {
          goto LABEL_126;
        }

        v108 = &v106[16 * v7];
        *v108 = v105;
        *(v108 + 1) = v107;
        v132 = v106;
        sub_1001A9740(a3);
        result = v132;
        v7 = *(v132 + 16);
        a3 = v123;
        if (v7 <= 1)
        {
        }
      }
    }
  }

  v22 = 0;
  v23 = _swiftEmptyArrayStorage;
  v112 = a4;
  while (1)
  {
    v24 = v22;
    v25 = v22 + 1;
    v117 = v23;
    if (v22 + 1 >= v21)
    {
      v34 = v22 + 1;
    }

    else
    {
      v124 = v21;
      v111 = v10;
      v26 = v22;
      v27 = *a3;
      v28 = *(v121 + 72);
      v29 = *a3 + v28 * v25;
      a3 = v129;
      v30 = v125;
      sub_10009ADF0(v29, v129, v125, v9);
      v7 = v130;
      sub_10009ADF0(v27 + v28 * v26, v130, v30, v9);
      v31 = *a3;
      v119 = *v7;
      v120 = v31;
      sub_10008875C(v7, v30, v9);
      result = sub_10008875C(a3, v30, v9);
      v110 = v26;
      v32 = v26 + 2;
      v122 = v28;
      v33 = v27 + v28 * (v26 + 2);
      while (1)
      {
        v34 = v124;
        if (v124 == v32)
        {
          break;
        }

        LODWORD(v126) = v120 < v119;
        v35 = v129;
        v36 = v125;
        v37 = v131;
        sub_10009ADF0(v33, v129, v125, v131);
        a3 = v130;
        sub_10009ADF0(v29, v130, v36, v37);
        v38 = *v35;
        v7 = *a3;
        sub_10008875C(a3, v36, v37);
        result = sub_10008875C(v35, v36, v37);
        ++v32;
        v33 += v122;
        v29 += v122;
        if (((v126 ^ (v38 >= v7)) & 1) == 0)
        {
          v34 = v32 - 1;
          break;
        }
      }

      v10 = v111;
      a4 = v112;
      v9 = v131;
      v24 = v110;
      if (v120 >= v119)
      {
        goto LABEL_23;
      }

      if (v34 < v110)
      {
        goto LABEL_129;
      }

      if (v110 >= v34)
      {
LABEL_23:
        a3 = v123;
      }

      else
      {
        v7 = v122 * (v34 - 1);
        v39 = v34 * v122;
        v40 = v34;
        v41 = v34;
        v42 = v110;
        v43 = v110 * v122;
        v44 = v125;
        do
        {
          if (v42 != --v41)
          {
            v45 = *v123;
            if (!*v123)
            {
              goto LABEL_135;
            }

            sub_10009AE58(v45 + v43, v116, v44, v131);
            if (v43 < v7 || v45 + v43 >= (v45 + v39))
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v43 != v7)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            result = sub_10009AE58(v116, v45 + v7, v44, v131);
          }

          ++v42;
          v7 -= v122;
          v39 -= v122;
          v43 += v122;
        }

        while (v42 < v41);
        v10 = v111;
        a4 = v112;
        a3 = v123;
        v9 = v131;
        v24 = v110;
        v34 = v40;
      }
    }

    v46 = a3[1];
    if (v34 < v46)
    {
      if (__OFSUB__(v34, v24))
      {
        goto LABEL_128;
      }

      if (v34 - v24 < a4)
      {
        if (__OFADD__(v24, a4))
        {
          goto LABEL_130;
        }

        if (v24 + a4 >= v46)
        {
          v47 = a3[1];
        }

        else
        {
          v47 = v24 + a4;
        }

        if (v47 < v24)
        {
LABEL_131:
          __break(1u);
          goto LABEL_132;
        }

        if (v34 != v47)
        {
          break;
        }
      }
    }

    v22 = v34;
    if (v34 < v24)
    {
      goto LABEL_127;
    }

LABEL_35:
    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
      v23 = v117;
    }

    else
    {
      result = sub_1000AD9F0(0, *(v117 + 2) + 1, 1, v117);
      v23 = result;
    }

    v7 = *(v23 + 2);
    v48 = *(v23 + 3);
    a4 = v7 + 1;
    if (v7 >= v48 >> 1)
    {
      result = sub_1000AD9F0((v48 > 1), v7 + 1, 1, v23);
      v23 = result;
    }

    *(v23 + 2) = a4;
    v49 = &v23[16 * v7];
    *(v49 + 4) = v24;
    *(v49 + 5) = v22;
    if (!*v113)
    {
      goto LABEL_137;
    }

    if (v7)
    {
      a3 = *v113;
      while (1)
      {
        v50 = a4 - 1;
        if (a4 >= 4)
        {
          break;
        }

        if (a4 == 3)
        {
          v51 = *(v23 + 4);
          v52 = *(v23 + 5);
          v61 = __OFSUB__(v52, v51);
          v53 = v52 - v51;
          v54 = v61;
LABEL_55:
          if (v54)
          {
            goto LABEL_116;
          }

          v67 = &v23[16 * a4];
          v69 = *v67;
          v68 = *(v67 + 1);
          v70 = __OFSUB__(v68, v69);
          v71 = v68 - v69;
          v72 = v70;
          if (v70)
          {
            goto LABEL_119;
          }

          v73 = &v23[16 * v50 + 32];
          v75 = *v73;
          v74 = *(v73 + 1);
          v61 = __OFSUB__(v74, v75);
          v76 = v74 - v75;
          if (v61)
          {
            goto LABEL_122;
          }

          if (__OFADD__(v71, v76))
          {
            goto LABEL_123;
          }

          if (v71 + v76 >= v53)
          {
            if (v53 < v76)
            {
              v50 = a4 - 2;
            }

            goto LABEL_76;
          }

          goto LABEL_69;
        }

        v77 = &v23[16 * a4];
        v79 = *v77;
        v78 = *(v77 + 1);
        v61 = __OFSUB__(v78, v79);
        v71 = v78 - v79;
        v72 = v61;
LABEL_69:
        if (v72)
        {
          goto LABEL_118;
        }

        v80 = &v23[16 * v50];
        v82 = *(v80 + 4);
        v81 = *(v80 + 5);
        v61 = __OFSUB__(v81, v82);
        v83 = v81 - v82;
        if (v61)
        {
          goto LABEL_121;
        }

        if (v83 < v71)
        {
          goto LABEL_3;
        }

LABEL_76:
        v7 = v50 - 1;
        if (v50 - 1 >= a4)
        {
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
LABEL_127:
          __break(1u);
LABEL_128:
          __break(1u);
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
          goto LABEL_131;
        }

        if (!*v123)
        {
          goto LABEL_134;
        }

        v88 = v23;
        a4 = *&v23[16 * v7 + 32];
        v89 = *&v23[16 * v50 + 40];
        sub_1001BB330(*v123 + *(v121 + 72) * a4, *v123 + *(v121 + 72) * *&v23[16 * v50 + 32], *v123 + *(v121 + 72) * v89, a3, v125, v131, v118);
        if (v10)
        {
        }

        if (v89 < a4)
        {
          goto LABEL_112;
        }

        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v90 = v88;
        }

        else
        {
          v90 = sub_1001A97CC(v88);
        }

        v9 = v131;
        if (v7 >= *(v90 + 2))
        {
          goto LABEL_113;
        }

        v91 = &v90[16 * v7];
        *(v91 + 4) = a4;
        *(v91 + 5) = v89;
        v132 = v90;
        v7 = &v132;
        result = sub_1001A9740(v50);
        v23 = v132;
        a4 = *(v132 + 16);
        if (a4 <= 1)
        {
          goto LABEL_3;
        }
      }

      v55 = &v23[16 * a4 + 32];
      v56 = *(v55 - 64);
      v57 = *(v55 - 56);
      v61 = __OFSUB__(v57, v56);
      v58 = v57 - v56;
      if (v61)
      {
        goto LABEL_114;
      }

      v60 = *(v55 - 48);
      v59 = *(v55 - 40);
      v61 = __OFSUB__(v59, v60);
      v53 = v59 - v60;
      v54 = v61;
      if (v61)
      {
        goto LABEL_115;
      }

      v62 = &v23[16 * a4];
      v64 = *v62;
      v63 = *(v62 + 1);
      v61 = __OFSUB__(v63, v64);
      v65 = v63 - v64;
      if (v61)
      {
        goto LABEL_117;
      }

      v61 = __OFADD__(v53, v65);
      v66 = v53 + v65;
      if (v61)
      {
        goto LABEL_120;
      }

      if (v66 >= v58)
      {
        v84 = &v23[16 * v50 + 32];
        v86 = *v84;
        v85 = *(v84 + 1);
        v61 = __OFSUB__(v85, v86);
        v87 = v85 - v86;
        if (v61)
        {
          goto LABEL_124;
        }

        if (v53 < v87)
        {
          v50 = a4 - 2;
        }

        goto LABEL_76;
      }

      goto LABEL_55;
    }

LABEL_3:
    a3 = v123;
    v21 = v123[1];
    a4 = v112;
    if (v22 >= v21)
    {
      goto LABEL_98;
    }
  }

  v111 = v10;
  v92 = *a3;
  v93 = *(v121 + 72);
  v94 = *a3 + v93 * (v34 - 1);
  v95 = -v93;
  v110 = v24;
  v7 = v24 - v34;
  v126 = v92;
  v114 = v93;
  v115 = v47;
  a4 = v92 + v34 * v93;
LABEL_88:
  v124 = v34;
  v119 = a4;
  v120 = v7;
  v122 = v94;
  v96 = v94;
  v97 = v125;
  while (1)
  {
    v98 = v129;
    sub_10009ADF0(a4, v129, v97, v9);
    v99 = v130;
    sub_10009ADF0(v96, v130, v97, v131);
    a3 = *v98;
    v100 = *v99;
    v101 = v99;
    v9 = v131;
    sub_10008875C(v101, v97, v131);
    result = sub_10008875C(v98, v97, v9);
    if (a3 >= v100)
    {
LABEL_87:
      v34 = v124 + 1;
      v22 = v115;
      v94 = v122 + v114;
      v7 = v120 - 1;
      a4 = v119 + v114;
      if (v124 + 1 != v115)
      {
        goto LABEL_88;
      }

      v10 = v111;
      v24 = v110;
      if (v115 < v110)
      {
        goto LABEL_127;
      }

      goto LABEL_35;
    }

    if (!v126)
    {
      break;
    }

    a3 = v127;
    sub_10009AE58(a4, v127, v97, v9);
    swift_arrayInitWithTakeFrontToBack();
    sub_10009AE58(a3, v96, v97, v9);
    v96 += v95;
    a4 += v95;
    if (__CFADD__(v7++, 1))
    {
      goto LABEL_87;
    }
  }

  __break(1u);
LABEL_134:
  __break(1u);
LABEL_135:
  __break(1u);
LABEL_136:
  __break(1u);
LABEL_137:
  __break(1u);
LABEL_138:
  __break(1u);
  return result;
}

uint64_t sub_1001BB13C(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 7;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 3;
  v11 = a3 - __src;
  v12 = a3 - __src + 7;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 3;
  if (v10 < v12 >> 3)
  {
    if (a4 != __dst || &__dst[8 * v10] <= a4)
    {
      memmove(a4, __dst, 8 * v10);
    }

    v14 = &v4[8 * v10];
    if (v8 < 8)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_35;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v15 = *v6;
      if (*v6 < *v4)
      {
        break;
      }

      v15 = *v4;
      v16 = v7 == v4;
      v4 += 8;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 8;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v16 = v7 == v6;
    v6 += 8;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[8 * v13] <= a4)
  {
    memmove(a4, __src, 8 * v13);
  }

  v14 = &v4[8 * v13];
  if (v11 >= 8 && v6 > v7)
  {
LABEL_24:
    v17 = v6 - 8;
    v5 -= 8;
    v18 = v14;
    do
    {
      v19 = v5 + 8;
      v21 = *(v18 - 8);
      v18 -= 8;
      v20 = v21;
      if (v21 < *v17)
      {
        if (v19 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (v6 -= 8, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_35;
        }

        goto LABEL_24;
      }

      if (v19 != v14)
      {
        *v5 = v20;
      }

      v5 -= 8;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_35:
  v22 = v14 - v4 + (v14 - v4 < 0 ? 7uLL : 0);
  if (v6 != v4 || v6 >= &v4[v22 & 0xFFFFFFFFFFFFFFF8])
  {
    memmove(v6, v4, 8 * (v22 >> 3));
  }

  return 1;
}

uint64_t sub_1001BB330(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, uint64_t *a5, uint64_t *a6, void (*a7)(uint64_t *, unint64_t *, unint64_t *))
{
  v45 = a7;
  v56 = a5;
  v57 = a6;
  v53 = sub_100084528(a5, a6);
  v11 = __chkstk_darwin(v53);
  v55 = (&v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  result = __chkstk_darwin(v11);
  v54 = (&v43 - v14);
  v16 = *(v15 + 72);
  if (!v16)
  {
    __break(1u);
LABEL_62:
    __break(1u);
LABEL_63:
    __break(1u);
    return result;
  }

  if (a2 - a1 == 0x8000000000000000 && v16 == -1)
  {
    goto LABEL_62;
  }

  v17 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v16 == -1)
  {
    goto LABEL_63;
  }

  v18 = (a2 - a1) / v16;
  v60 = a1;
  v59 = a4;
  if (v18 >= v17 / v16)
  {
    v20 = v17 / v16 * v16;
    if (a4 < a2 || a2 + v20 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v49 = a2;
    v31 = a4 + v20;
    if (v20 >= 1)
    {
      v32 = -v16;
      v33 = a4 + v20;
      v47 = v32;
      v48 = a1;
      while (2)
      {
        while (1)
        {
          v44 = v31;
          v34 = v49;
          v49 += v32;
          v50 = v34;
          while (1)
          {
            if (v34 <= a1)
            {
              v60 = v34;
              v58 = v44;
              goto LABEL_60;
            }

            v35 = a3;
            v46 = v31;
            a3 += v32;
            v36 = v33 + v32;
            v37 = v33 + v32;
            v38 = v54;
            v40 = v56;
            v39 = v57;
            sub_10009ADF0(v37, v54, v56, v57);
            v41 = v55;
            sub_10009ADF0(v49, v55, v40, v39);
            v42 = *v38;
            v51 = *v41;
            v52 = v42;
            sub_10008875C(v41, v40, v39);
            sub_10008875C(v38, v40, v39);
            if (v52 < v51)
            {
              break;
            }

            v31 = v36;
            if (v35 < v33 || a3 >= v33)
            {
              swift_arrayInitWithTakeFrontToBack();
              v32 = v47;
              a1 = v48;
            }

            else
            {
              v32 = v47;
              a1 = v48;
              if (v35 != v33)
              {
                swift_arrayInitWithTakeBackToFront();
              }
            }

            v33 = v36;
            v34 = v50;
            if (v36 <= a4)
            {
              v49 = v50;
              goto LABEL_59;
            }
          }

          if (v35 < v50 || a3 >= v50)
          {
            break;
          }

          v32 = v47;
          a1 = v48;
          v31 = v46;
          if (v35 != v50)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          if (v33 <= a4)
          {
            goto LABEL_59;
          }
        }

        swift_arrayInitWithTakeFrontToBack();
        v32 = v47;
        a1 = v48;
        v31 = v46;
        if (v33 > a4)
        {
          continue;
        }

        break;
      }
    }

LABEL_59:
    v60 = v49;
    v58 = v31;
  }

  else
  {
    v19 = v18 * v16;
    if (a4 < a1 || a1 + v19 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v52 = a4 + v19;
    v58 = a4 + v19;
    if (v19 >= 1 && a2 < a3)
    {
      v50 = v16;
      v51 = a3;
      do
      {
        v22 = v54;
        v24 = v56;
        v23 = v57;
        sub_10009ADF0(a2, v54, v56, v57);
        v25 = v55;
        sub_10009ADF0(a4, v55, v24, v23);
        v26 = *v22;
        v27 = *v25;
        sub_10008875C(v25, v24, v23);
        sub_10008875C(v22, v24, v23);
        if (v26 >= v27)
        {
          v28 = v50;
          v30 = a4 + v50;
          if (a1 < a4 || a1 >= v30)
          {
            swift_arrayInitWithTakeFrontToBack();
            v29 = v51;
          }

          else
          {
            v29 = v51;
            if (a1 != a4)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v59 = v30;
          a4 += v28;
        }

        else
        {
          v28 = v50;
          if (a1 < a2 || a1 >= a2 + v50)
          {
            swift_arrayInitWithTakeFrontToBack();
            a2 += v28;
            v29 = v51;
          }

          else
          {
            v29 = v51;
            if (a1 == a2)
            {
              a2 += v50;
            }

            else
            {
              swift_arrayInitWithTakeBackToFront();
              a2 += v28;
            }
          }
        }

        a1 += v28;
        v60 = a1;
      }

      while (a4 < v52 && a2 < v29);
    }
  }

LABEL_60:
  v45(&v60, &v59, &v58);
  return 1;
}

uint64_t _s14bookdatastored19ReadingHistoryModelV6DayKeyVyAE10Foundation4DateVcfC_0(uint64_t a1)
{
  v2 = sub_1001C4D48();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1001C4D68();
  v18 = *(v6 - 8);
  v19 = v6;
  __chkstk_darwin(v6);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1001C4CD8();
  v9 = *(v3 + 104);
  v9(v5, enum case for Calendar.Component.year(_:), v2);
  v10 = sub_1001C4D58();
  v11 = *(v3 + 8);
  v11(v5, v2);
  v9(v5, enum case for Calendar.Component.month(_:), v2);
  v12 = sub_1001C4D58();
  result = (v11)(v5, v2);
  v14 = 100 * v10;
  if ((v10 * 100) >> 64 == (100 * v10) >> 63)
  {
    v15 = __OFADD__(v14, v12);
    v16 = v14 + v12;
    if (!v15)
    {
      v9(v5, enum case for Calendar.Component.day(_:), v2);
      sub_1001C4D58();
      v17 = sub_1001C4CA8();
      (*(*(v17 - 8) + 8))(a1, v17);
      v11(v5, v2);
      (*(v18 + 8))(v8, v19);
      return v16;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1001BBADC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1001BBB44(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1001BBBAC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1001BC3D4()
{
  result = qword_100274650;
  if (!qword_100274650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100274650);
  }

  return result;
}

void sub_1001BC47C()
{
  if (!qword_1002746C0)
  {
    v0 = sub_1001C56E8();
    if (!v1)
    {
      atomic_store(v0, &qword_1002746C0);
    }
  }
}

void sub_1001BC4FC(uint64_t a1)
{
  sub_1001BC598(319);
  if (v1 <= 0x3F)
  {
    sub_1001BC47C();
    if (v2 <= 0x3F)
    {
      sub_100169C74(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1001BC598(uint64_t a1)
{
  if (!qword_100274760)
  {
    sub_1000885AC(&qword_10026ED18, &unk_1001F06E0);
    sub_1000885F4(&qword_10026ED20, &qword_10026ED18, &unk_1001F06E0, &protocol conformance descriptor for Anonymous<A>);
    sub_1000885F4(&qword_10026ED28, &qword_10026ED18, &unk_1001F06E0, &protocol conformance descriptor for Anonymous<A>);
    v1 = sub_1001C5B68();
    if (!v2)
    {
      atomic_store(v1, &qword_100274760);
    }
  }
}

void sub_1001BC6EC(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, uint64_t), uint64_t (*a5)(uint64_t))
{
  a4(319, a2, a3);
  if (v6 <= 0x3F)
  {
    a5(319);
    if (v7 <= 0x3F)
    {
      sub_100169C74(319);
      if (v8 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1001BC794(uint64_t a1)
{
  if (!qword_100274800)
  {
    sub_1000885AC(&unk_10026ED30, &unk_1001F1490);
    sub_1000885F4(&unk_10026F430, &unk_10026ED30, &unk_1001F1490, &protocol conformance descriptor for Anonymous<A>);
    sub_1000885F4(&unk_10026ED40, &unk_10026ED30, &unk_1001F1490, &protocol conformance descriptor for Anonymous<A>);
    v1 = sub_1001C5B68();
    if (!v2)
    {
      atomic_store(v1, &qword_100274800);
    }
  }
}

void sub_1001BC894(uint64_t a1)
{
  if (!qword_100274808)
  {
    sub_1001C4CA8();
    sub_1001BBB44(&unk_10026F440, &type metadata accessor for Date, &protocol conformance descriptor for Date);
    v1 = sub_1001C5B68();
    if (!v2)
    {
      atomic_store(v1, &qword_100274808);
    }
  }
}

uint64_t sub_1001BC968(uint64_t a1)
{
  v2 = sub_1001C4D68();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v33 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100084528(&qword_10026F8B8, &unk_1001F8A90);
  __chkstk_darwin(v5 - 8);
  v7 = &v28 - v6;
  v8 = sub_100084528(&qword_10026F8C0, &unk_1001F14A0);
  __chkstk_darwin(v8 - 8);
  v10 = &v28 - v9;
  v11 = sub_1001C4948();
  v31 = *(v11 - 8);
  v32 = v11;
  __chkstk_darwin(v11);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_100084528(&unk_10026FC70, &unk_1001F1430);
  __chkstk_darwin(v14 - 8);
  v16 = &v28 - v15;
  v17 = sub_1001C4CA8();
  v18 = *(v17 - 8);
  v19 = __chkstk_darwin(v17);
  __chkstk_darwin(v19);
  v22 = &v28 - v21;
  if (a1 <= 9999)
  {
    (*(v18 + 56))(v16, 1, 1, v17);
LABEL_4:
    sub_10008875C(v16, &unk_10026FC70, &unk_1001F1430);
    return 0;
  }

  v29 = v20;
  v30 = v2;
  (*(v3 + 56))(v10, 1, 1, v2);
  v23 = sub_1001C4D78();
  (*(*(v23 - 8) + 56))(v7, 1, 1, v23);
  sub_1001C4938();
  v24 = v33;
  sub_1001C4CD8();
  sub_1001C4D18();
  (*(v3 + 8))(v24, v30);
  (*(v31 + 8))(v13, v32);
  if ((*(v18 + 48))(v16, 1, v17) == 1)
  {
    goto LABEL_4;
  }

  (*(v18 + 32))(v22, v16, v17);
  v26 = v29;
  (*(v18 + 16))(v29, v22, v17);
  v27 = _s14bookdatastored19ReadingHistoryModelV6DayKeyVyAE10Foundation4DateVcfC_0(v26);
  (*(v18 + 8))(v22, v17);
  return v27;
}

void *sub_1001BCEA0(uint64_t a1)
{
  v2 = sub_1001C4D48();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v37 = &v30 - v7;
  v8 = *(a1 + 16);
  if (v8)
  {
    sub_100084528(&qword_100274850, &qword_1001F9598);
    v9 = sub_1001C69A8();
    v10 = 0;
    v12 = *(v3 + 16);
    v11 = v3 + 16;
    v35 = v12;
    v36 = v9 + 56;
    v13 = *(v11 + 64);
    v32 = v8;
    v33 = a1 + ((v13 + 32) & ~v13);
    v14 = *(v11 + 56);
    v15 = (v11 - 8);
    v31 = (v11 + 16);
    while (1)
    {
      v34 = v10;
      v35(v37, v33 + v14 * v10, v2);
      sub_1001BBB44(&qword_100274858, &type metadata accessor for Calendar.Component, &protocol conformance descriptor for Calendar.Component);
      v16 = sub_1001C5F88();
      v17 = ~(-1 << *(v9 + 32));
      v18 = v16 & v17;
      v19 = (v16 & v17) >> 6;
      v20 = *(v36 + 8 * v19);
      v21 = 1 << (v16 & v17);
      if ((v21 & v20) != 0)
      {
        while (1)
        {
          v22 = v11;
          v35(v6, *(v9 + 48) + v18 * v14, v2);
          sub_1001BBB44(&qword_100274860, &type metadata accessor for Calendar.Component, &protocol conformance descriptor for Calendar.Component);
          v23 = sub_1001C5FD8();
          v24 = *v15;
          (*v15)(v6, v2);
          if (v23)
          {
            break;
          }

          v18 = (v18 + 1) & v17;
          v19 = v18 >> 6;
          v20 = *(v36 + 8 * (v18 >> 6));
          v21 = 1 << v18;
          v11 = v22;
          if (((1 << v18) & v20) == 0)
          {
            goto LABEL_8;
          }
        }

        v24(v37, v2);
        v11 = v22;
      }

      else
      {
LABEL_8:
        v25 = v37;
        *(v36 + 8 * v19) = v21 | v20;
        result = (*v31)(*(v9 + 48) + v18 * v14, v25, v2);
        v27 = *(v9 + 16);
        v28 = __OFADD__(v27, 1);
        v29 = v27 + 1;
        if (v28)
        {
          __break(1u);
          return result;
        }

        *(v9 + 16) = v29;
      }

      v10 = v34 + 1;
      if (v34 + 1 == v32)
      {
        return v9;
      }
    }
  }

  return &_swiftEmptySetSingleton;
}

uint64_t sub_1001BD1C0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_1001BD2E0(NSObject *a1)
{
  v2 = __error();
  v3 = strerror(*v2);
  v4 = 136315138;
  v5 = v3;
  _os_log_error_impl(&_mh_execute_header, a1, OS_LOG_TYPE_ERROR, "TMP DIR ERROR: _set_user_dir_suffix Failed: %s", &v4, 0xCu);
}

void sub_1001BD374()
{
  sub_10000CE28();
  sub_10000CE1C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1001BD424()
{
  sub_10000CE28();
  sub_10000CE1C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1001BD460()
{
  sub_10000CE28();
  sub_10000CE1C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1001BD49C()
{
  sub_10000CE28();
  sub_10000CE1C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1001BDCB8(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "BDSUbiquityManager: Could not determine file extension for %@", &v2, 0xCu);
}

void sub_1001BDD80(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "BDSWidgetTimelineController - Error: %@", &v2, 0xCu);
}

void sub_1001BDDF8(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Error creating FRC for BookWidgetInfo: %@", &v2, 0xCu);
}

void sub_1001BDE70(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Error fetching updated list of WidgetInfos: %@", &v2, 0xCu);
}

void sub_1001BDEE8(uint64_t a1, NSObject *a2)
{
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "_isServiceEnabled(%{public}@): TCC returned a NULL array!", &v2, 0xCu);
}

void sub_1001BDF60(uint64_t a1, NSObject *a2)
{
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "_isServiceDisabled(%{public}@): TCC returned a NULL array!", &v2, 0xCu);
}

void sub_1001BDFD8(uint64_t a1, char a2, os_log_t log)
{
  v3 = @"YES";
  if ((a2 & 1) == 0)
  {
    v3 = @"NO";
  }

  v4 = 138543618;
  v5 = a1;
  v6 = 2114;
  v7 = v3;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Failed to set %{public}@ to %{public}@.", &v4, 0x16u);
}

void sub_1001BE408(uint64_t a1)
{
  v1 = [*(a1 + 32) configuration];
  v2 = [v1 containerIdentifier];
  sub_10000DB30();
  sub_100022AD8();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0xCu);
}

void sub_1001BE4B0(uint64_t a1)
{
  v1 = [*(a1 + 32) configuration];
  v2 = [v1 containerIdentifier];
  sub_10000DB30();
  sub_100022AD8();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0xCu);
}

void sub_1001BE558(uint64_t a1)
{
  v1 = [*(a1 + 32) configuration];
  v2 = [v1 containerIdentifier];
  sub_10000DB30();
  sub_100022AE8();
  _os_log_debug_impl(v3, v4, OS_LOG_TYPE_DEBUG, v5, v6, 0xCu);
}

void sub_1001BE604(uint64_t *a1, NSObject *a2)
{
  v2 = *a1;
  v3 = 134217984;
  v4 = v2;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "BCCloudKitController - CURRENT ACCOUNT STATUS %ld", &v3, 0xCu);
}

void sub_1001BE680(void *a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 138543362;
  *(&v8 + 4) = *a1;
  sub_10000DB14(&_mh_execute_header, a2, a3, "Could not determine iCloud status.  Not syncing anything.  Account status error=%{public}@", a5, a6, a7, a8, v8, DWORD2(v8));
}

void sub_1001BE758(id *a1)
{
  v1 = [*a1 configuration];
  v2 = [v1 containerIdentifier];
  sub_10000DB30();
  sub_100022AD8();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
}

void sub_1001BE814(void *a1, NSObject *a2)
{
  v3 = [a1 configuration];
  v4 = [v3 containerIdentifier];
  sub_10000DB30();
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "_updateAccountCacheWithTimeout(%{public}@)", v5, 0xCu);
}

void sub_1001BE94C(uint64_t a1, uint64_t a2, NSObject *a3)
{
  v4 = [*(a1 + 48) configuration];
  v5 = [v4 containerIdentifier];
  sub_10000DB30();
  v8 = 1024;
  v9 = v6;
  _os_log_debug_impl(&_mh_execute_header, a3, OS_LOG_TYPE_DEBUG, "(%{public}@) _updateAccountCacheWithTimeout hasChanged:%{BOOL}d ", v7, 0x12u);
}

void sub_1001BEA1C(uint64_t a1)
{
  v2 = [*(a1 + 40) configuration];
  v7 = [v2 containerIdentifier];
  [*(a1 + 48) currentStatus];
  sub_100022AE8();
  _os_log_debug_impl(v3, v4, OS_LOG_TYPE_DEBUG, v5, v6, 0x20u);
}

void sub_1001BEAFC(uint64_t a1)
{
  v2 = [*(a1 + 40) configuration];
  v7 = [v2 containerIdentifier];
  [*(a1 + 48) currentStatus];
  sub_100022AE8();
  _os_log_debug_impl(v3, v4, OS_LOG_TYPE_DEBUG, v5, v6, 0x16u);
}

void sub_1001BEBC4(void *a1)
{
  v1 = [a1 configuration];
  v2 = [v1 containerIdentifier];
  sub_10000DB30();
  sub_100022AD8();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0xCu);
}

void sub_1001BEC68(void *a1)
{
  v1 = [a1 configuration];
  v2 = [v1 containerIdentifier];
  sub_10000DB30();
  sub_100022AD8();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0xCu);
}

void sub_1001BED0C(void *a1)
{
  v1 = [a1 configuration];
  v2 = [v1 containerIdentifier];
  sub_10000DB30();
  sub_100022AD8();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0xCu);
}

void sub_1001BEDB0(void *a1)
{
  v1 = [a1 configuration];
  v2 = [v1 containerIdentifier];
  sub_10000DB30();
  sub_100022AE8();
  _os_log_debug_impl(v3, v4, OS_LOG_TYPE_DEBUG, v5, v6, 0x16u);
}

void sub_1001BEF14(void *a1)
{
  v1 = [a1 containerIdentifier];
  sub_10000DB30();
  sub_100022AD8();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_1001BF008(void *a1)
{
  v1 = [a1 containerIdentifier];
  sub_10000DB30();
  sub_100022AD8();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

void sub_1001BF0AC(void *a1, NSObject *a2)
{
  v3 = [a1 attachedToContainer];
  v4 = @"NO";
  if (v3)
  {
    v4 = @"YES";
  }

  v5 = 138412290;
  v6 = v4;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "BCCloudKitDatabaseController - fetchRecordForRecordID attached: %@", &v5, 0xCu);
}

void sub_1001BF288(uint64_t a1, void *a2, uint8_t *buf, os_log_t log)
{
  *buf = 138412546;
  *(buf + 4) = a1;
  *(buf + 6) = 2112;
  *(buf + 14) = a2;
  _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "BCCloudKitDatabaseController modifySubscriptionsOperation: %@, id: %@", buf, 0x16u);
}

void sub_1001BF6A0(void *a1)
{
  v1 = [a1 containerIdentifier];
  sub_10003110C();
  sub_100022AD8();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

void sub_1001BF73C(void *a1)
{
  v1 = [a1 containerIdentifier];
  sub_10003110C();
  sub_100022AD8();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

void sub_1001BFA7C(void *a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 138543362;
  *(&v8 + 4) = *a1;
  sub_10000DB14(&_mh_execute_header, a2, a3, "BCCloudKitDatabaseController - Registered multiple stores for record zone %{public}@", a5, a6, a7, a8, v8, DWORD2(v8));
}

void sub_1001BFB74(uint64_t a1, uint64_t a2, os_log_t log)
{
  v3 = 138412546;
  v4 = a1;
  v5 = 2112;
  v6 = a2;
  _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "[Notification] Received CKNotification %@, subscriptionID: %@", &v3, 0x16u);
}

void sub_1001BFC40(uint64_t a1, NSObject *a2)
{
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "monitorServiceNotifications: Client not found for connection %{public}@", &v2, 0xCu);
}

void sub_1001BFCB8(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (a1)
  {
    if ([v5 count])
    {
      v9 = [v5 lastObject];
      [v5 removeLastObject];
      sub_100039F38();
      v10[1] = 3221225472;
      v10[2] = sub_100038F18;
      v10[3] = &unk_100240D68;
      v12 = v6;
      v10[4] = a1;
      v10[5] = v9;
      v11 = v5;
      sub_1001BFDCC(a1, v9, v10);
    }

    else
    {
      v7 = objc_retainBlock(v6);
      v8 = v7;
      if (v7)
      {
        (*(v7 + 2))(v7, 0);
      }
    }
  }
}

void sub_1001BFDCC(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (a1)
  {
    v7 = [v5 adamID];
    sub_100039F38();
    v8[1] = 3221225472;
    v8[2] = sub_10003901C;
    v8[3] = &unk_10023FEB0;
    v9 = v5;
    v10 = v6;
    [BDSServiceCenter fetchIsAssetID:v7 inCollectionID:@"Want_To_Read_Collection_ID" completion:v8];
  }
}

void sub_1001C0150(void *a1, uint64_t a2, NSObject *a3)
{
  v5 = [a1 assetID];
  v6 = 138412546;
  v7 = v5;
  v8 = 2112;
  v9 = a2;
  _os_log_error_impl(&_mh_execute_header, a3, OS_LOG_TYPE_ERROR, "BCAssetDetail %@ Mismatch assetID from record assetID %@", &v6, 0x16u);
}

void sub_1001C0200(void *a1, NSObject *a2)
{
  v3 = [a1 assetID];
  v4 = 138412290;
  v5 = v3;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "BCAssetDetail %@ No Record supplied", &v4, 0xCu);
}

void sub_1001C0300(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "[BCCloudKitTransactionManager] Creating syncToCKTransaction %@", &v2, 0xCu);
}

void sub_1001C0378(id *a1, uint64_t a2, NSObject *a3)
{
  v5 = objc_retainBlock(*a1);
  v6 = 138412546;
  v7 = v5;
  v8 = 2112;
  v9 = a2;
  _os_log_debug_impl(&_mh_execute_header, a3, OS_LOG_TYPE_DEBUG, "[BCCloudKitTransactionManager] registering completion %@ for syncToCKTransaction %@", &v6, 0x16u);
}

void sub_1001C0428(uint64_t a1)
{
  v1 = 138412290;
  v2 = a1;
  _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Failed to create rawHistoryToken from data error: %@", &v1, 0xCu);
}

void sub_1001C04A8(uint64_t a1, NSObject *a2)
{
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Error unarchiving persistent history token: %{public}@", &v2, 0xCu);
}

void sub_1001C0520(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "BDSAutomaticPinningListUpdater encountered error: %@, and we were not cancelled.", &v2, 0xCu);
}

void sub_1001C0598(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "BDSAutomaticPinningListUpdater encountered error: %@, but we were already cancelled.", &v2, 0xCu);
}

void sub_1001C0668(void *a1, void *a2)
{
  [a1 establishedSalt];
  v3 = [a2 ckSystemFields];
  sub_100022AD8();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x18u);
}

void sub_1001C0730(void *a1, uint64_t a2)
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v10 = [a1 identifier];
  sub_100022AD8();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0x20u);
}

void sub_1001C07FC(void *a1)
{
  v6 = [a1 identifier];
  sub_100022AD8();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_1001C0A60(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "BDSWidgetCenterManager - relevance donation failed due to %@", &v2, 0xCu);
}

void sub_1001C0AD8(uint64_t *a1, NSObject *a2)
{
  v2 = *a1;
  v3 = 138412290;
  v4 = v2;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Unable to create persistent stores on the coordinator:%@", &v3, 0xCu);
}

void sub_1001C0B54(uint64_t a1, void *a2, NSObject *a3)
{
  v6 = [a2 domain];
  v7 = 138543874;
  v8 = a1;
  v9 = 2114;
  v10 = v6;
  v11 = 1024;
  v12 = [a2 code];
  _os_log_error_impl(&_mh_execute_header, a3, OS_LOG_TYPE_ERROR, "Error %{public}@: %{public}@ %d", &v7, 0x1Cu);
}

void sub_1001C0D58()
{
  sub_10000DB30();
  v3 = 2114;
  v4 = v0;
  _os_log_error_impl(&_mh_execute_header, v1, OS_LOG_TYPE_ERROR, "BCCloudDataManager error: %{public}@, at: %{public}@", v2, 0x16u);
}

void sub_1001C0E10(void *a1)
{
  v1 = [a1 entityName];
  sub_10000DB30();
  sub_100022AE8();
  sub_100052210(v2, v3, v4, v5, v6);
}

void sub_1001C0E9C(void *a1)
{
  v1 = [a1 identifier];
  sub_1000521F8();
  sub_100022AE8();
  _os_log_debug_impl(v2, v3, OS_LOG_TYPE_DEBUG, v4, v5, 0x12u);
}

void sub_1001C0F3C(void *a1)
{
  v1 = [a1 identifier];
  sub_1000521F8();
  sub_100022AE8();
  _os_log_debug_impl(v2, v3, OS_LOG_TYPE_DEBUG, v4, v5, 0x12u);
}

void sub_1001C0FDC(void *a1, id *a2)
{
  v3 = [a1 entityName];
  v8 = [*a2 debugDescription];
  sub_100022AE8();
  _os_log_error_impl(v4, v5, OS_LOG_TYPE_ERROR, v6, v7, 0x16u);
}

void sub_1001C1184(uint64_t a1, NSObject *a2, uint64_t a3)
{
  v3 = *(a1 + 32);
  v4 = 138543362;
  v5 = v3;
  sub_100052210(&_mh_execute_header, a2, a3, "BCCloudDataManager #recordChange failedRecordIDs:%{public}@", &v4);
}

void sub_1001C11F8(uint64_t a1)
{
  v1 = [*(a1 + 32) entityName];
  sub_10000DB30();
  sub_100022AE8();
  _os_log_fault_impl(v2, v3, OS_LOG_TYPE_FAULT, v4, v5, 0xCu);
}

void sub_1001C128C(id *a1)
{
  v1 = [*a1 entityName];
  sub_10000DB30();
  sub_100022AE8();
  sub_100052210(v2, v3, v4, v5, v6);
}

void sub_1001C1318(uint64_t a1)
{
  v1 = [*(a1 + 40) entityName];
  sub_10000DB30();
  sub_100022AE8();
  _os_log_fault_impl(v2, v3, OS_LOG_TYPE_FAULT, v4, v5, 0xCu);
}

void sub_1001C13AC(void *a1)
{
  v1 = [a1 entityName];
  sub_10000DB30();
  sub_100022AE8();
  _os_log_debug_impl(v2, v3, OS_LOG_TYPE_DEBUG, v4, v5, 0xCu);
}

void sub_1001C143C()
{
  sub_10000DB30();
  sub_10000CE1C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1001C152C()
{
  sub_10000DB30();
  sub_10000CE1C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1001C1618(uint64_t a1, NSObject *a2)
{
  v2 = 138412546;
  v3 = @"Didn't";
  v4 = 2112;
  v5 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Trying to update bitrate for mediaItem. %@ find streamInf. Error: %@", &v2, 0x16u);
}

void sub_1001C1774(void *a1)
{
  v1 = [a1 assetID];
  sub_10000DB30();
  sub_100058588(&_mh_execute_header, v2, v3, "found readingNow member for assetID: %@ in media library", v4, v5, v6, v7);
}

void sub_1001C17F8(void *a1)
{
  v1 = [a1 assetID];
  sub_10000DB30();
  sub_100058588(&_mh_execute_header, v2, v3, "found readingNow member for assetID: %@ jalisco DB", v4, v5, v6, v7);
}

void sub_1001C187C(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 138412290;
  *(&v8 + 4) = *(a1 + 32);
  sub_10000DB14(&_mh_execute_header, a2, a3, "Error updating bitrate on item: %@", a5, a6, a7, a8, v8, DWORD2(v8));
}

void sub_1001C18EC(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 138412290;
  *(&v8 + 4) = *(*(*a1 + 8) + 40);
  sub_10005856C(&_mh_execute_header, a2, a3, "found readingNow member for assetID: %@", a5, a6, a7, a8, v8, DWORD2(v8));
}

void sub_1001C1964(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 138412290;
  *(&v8 + 4) = *(a1 + 32);
  sub_10000DB14(&_mh_execute_header, a2, a3, "Error updating bitrate for item with adamID %@", a5, a6, a7, a8, v8, DWORD2(v8));
}

void sub_1001C19D4(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "#dissociateCloudData Change Token Controller error: %@", &v2, 0xCu);
}

void sub_1001C1A4C()
{
  sub_10005A278();
  v2 = [*(v1 + 32) zoneName];
  *v9 = 138412546;
  *&v9[4] = v2;
  *&v9[12] = 2048;
  *&v9[14] = [v0 count];
  sub_10005A258(&_mh_execute_header, v3, v4, "[BCCloudChangeTokenController] #saltVersionIdentifierChanged - %@ we should never have more than 1 record. We have %lu@) records.", v5, v6, v7, v8, *v9, *&v9[8], *&v9[16]);
}

void sub_1001C1AF4()
{
  sub_10005A278();
  v2 = [*(v1 + 32) zoneName];
  *v9 = 138412546;
  *&v9[4] = v2;
  *&v9[12] = 2112;
  *&v9[14] = *v0;
  sub_10005A258(&_mh_execute_header, v3, v4, "<%@ BCCloudChangeTokenController - No change yet we tried updating %@", v5, v6, v7, v8, *v9, *&v9[8], *&v9[16]);
}

void sub_1001C1B98()
{
  sub_10005A278();
  v1 = [*(v0 + 40) zoneName];
  sub_10005A240();
  sub_10005A258(&_mh_execute_header, v2, v3, "BCCloudChangeTokenController - Error deleting cloud tokens: %@ with server change token: %{public}@", v4, v5, v6, v7);
}

void sub_1001C1C28()
{
  sub_10005A278();
  v1 = [*(v0 + 32) zoneName];
  sub_10005A240();
  sub_10005A258(&_mh_execute_header, v2, v3, "BCCloudChangeTokenController - #recordChange Error saving MOC zone: %@ with server change token: %{public}@", v4, v5, v6, v7);
}

void sub_1001C1CB8()
{
  sub_10005A278();
  v1 = [*(v0 + 40) zoneName];
  sub_10005A240();
  sub_10005A258(&_mh_execute_header, v2, v3, "BCCloudChangeTokenController - #recordChange Error fetching from MOC zone: %@ with server change token: %{public}@", v4, v5, v6, v7);
}

void sub_1001C1D48(uint64_t a1, NSObject *a2)
{
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Error unarchiving server change token: %{public}@", &v2, 0xCu);
}

void sub_1001C1E3C(uint64_t *a1, uint64_t a2, os_log_t log)
{
  v3 = *a1;
  v4 = *(a2 + 48);
  v5 = 138412546;
  v6 = v3;
  v7 = 2112;
  v8 = v4;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "BDSSyncEngineSaltManager: Error retrieving record salt: %@ serverRecord:%@.. Trying to recover", &v5, 0x16u);
}

void sub_1001C1F9C(void *a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 138412290;
  *(&v8 + 4) = *a1;
  sub_10000DB14(&_mh_execute_header, a2, a3, "BDSSyncEngineSaltManager: unable to generate record name for %@", a5, a6, a7, a8, v8, DWORD2(v8));
}

void sub_1001C20FC(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = @"NO";
  if (a1)
  {
    v8 = @"YES";
  }

  LODWORD(v9) = 138412290;
  HIDWORD(v9) = v8;
  sub_10005856C(&_mh_execute_header, a2, a3, "BDSNotificationConnection isWithinConnectionDateRange:%@", a5, a6, a7, a8, v9, HIDWORD(v8));
}

void sub_1001C2180(void *a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 138412290;
  *(&v8 + 4) = *a1;
  sub_10005856C(&_mh_execute_header, a2, a3, "BDSNotificationConnection lastConnectionDate read as:%@", a5, a6, a7, a8, v8, DWORD2(v8));
}

void sub_1001C21F0(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 138412290;
  *(&v8 + 4) = *(a1 + 24);
  sub_10005856C(&_mh_execute_header, a2, a3, "BDSNotificationConnection updated lastConnectionDate to:%@", a5, a6, a7, a8, v8, DWORD2(v8));
}

void sub_1001C22D8(void *a1, void *a2, NSObject *a3)
{
  v6 = [a1 assetID];
  v7 = [a1 debugDescription];
  v8 = [a2 assetID];
  v9 = 138412802;
  v10 = v6;
  v11 = 2112;
  v12 = v7;
  v13 = 2112;
  v14 = v8;
  _os_log_debug_impl(&_mh_execute_header, a3, OS_LOG_TYPE_DEBUG, "BCReadingNowDetail configured: %@ %@ from readingNowDetail:%@", &v9, 0x20u);
}

void sub_1001C23BC(void *a1, uint64_t a2, NSObject *a3)
{
  v5 = [a1 assetID];
  v6 = 138412546;
  v7 = v5;
  v8 = 2112;
  v9 = a2;
  _os_log_error_impl(&_mh_execute_header, a3, OS_LOG_TYPE_ERROR, "BCReadingNowDetail %@ Mismatch assetID from record assetID %@", &v6, 0x16u);
}

void sub_1001C246C(void *a1, void *a2)
{
  v4 = [a1 assetID];
  v5 = [a2 recordID];
  v6 = [v5 recordName];
  v7 = [a1 debugDescription];
  sub_100062800();
  sub_100062820(&_mh_execute_header, v8, v9, "Assuming cloudAssetType %@ Resolving: from record: %@ %@", v10, v11, v12, v13);
}

void sub_1001C2540(void *a1, void *a2)
{
  v4 = [a1 assetID];
  v5 = [a2 recordID];
  v6 = [v5 recordName];
  v7 = [a1 debugDescription];
  sub_100062800();
  sub_100062820(&_mh_execute_header, v8, v9, "BCReadingNowDetail %@ Resolving: Identical properties from record: %@ %@", v10, v11, v12, v13);
}

void sub_1001C2614(void *a1, NSObject *a2)
{
  v3 = [a1 assetID];
  v4 = 138412290;
  v5 = v3;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "BCReadingNowDetail %@ No Record supplied", &v4, 0xCu);
}

void sub_1001C2758(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Error trying to find WidgetInfos that need relationships updated: %@", &v2, 0xCu);
}

void sub_1001C2848(void *a1, uint64_t a2, NSObject *a3)
{
  v5 = [a1 assetReviewID];
  v6 = 138412546;
  v7 = v5;
  v8 = 2112;
  v9 = a2;
  _os_log_error_impl(&_mh_execute_header, a3, OS_LOG_TYPE_ERROR, "BCAssetReview %@ Mismatch assetReviewID from record assetReviewID %@", &v6, 0x16u);
}

void sub_1001C28F8(void *a1, NSObject *a2)
{
  v3 = [a1 assetReviewID];
  v4 = 138412290;
  v5 = v3;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "BCAssetReview %@ No Record supplied", &v4, 0xCu);
}

void sub_1001C29F8(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "BDSMediaLibraryUtils No daap item found for %@", &v2, 0xCu);
}

void sub_1001C2A70(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "BDSMediaLibraryUtils No collections for %@", &v2, 0xCu);
}

void sub_1001C2C2C(void *a1, uint64_t a2, NSObject *a3)
{
  v5 = [a1 key];
  v6 = 138412546;
  v7 = v5;
  v8 = 2112;
  v9 = a2;
  _os_log_error_impl(&_mh_execute_header, a3, OS_LOG_TYPE_ERROR, "BCSecureUserDatum %@ Mismatch key from record key %@", &v6, 0x16u);
}

void sub_1001C2CDC(void *a1, NSObject *a2)
{
  v3 = [a1 key];
  v4 = 138412290;
  v5 = v3;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "BCSecureUserDatum %@ No Record supplied", &v4, 0xCu);
}

void sub_1001C30D0(uint64_t a1, uint64_t a2, NSObject *a3)
{
  v6 = [*(a1 + 32) bu_prettyDescription];
  v7 = [*(a1 + 40) bu_prettyDescription];
  v8 = 138412802;
  v9 = v6;
  v10 = 2112;
  v11 = v7;
  v12 = 2112;
  v13 = a2;
  _os_log_error_impl(&_mh_execute_header, a3, OS_LOG_TYPE_ERROR, "Failed to fetch store assets with, audiobookAssetIDs: %@, bookAssetIDs: %@, error: %@", &v8, 0x20u);
}

void sub_1001C32B0(void *a1, uint64_t a2, NSObject *a3)
{
  v5 = [a1 storeID];
  v6 = 138412546;
  v7 = v5;
  v8 = 2112;
  v9 = a2;
  _os_log_error_impl(&_mh_execute_header, a3, OS_LOG_TYPE_ERROR, "BCStoreItem %@ Mismatch storeID from record storeID %@", &v6, 0x16u);
}

void sub_1001C3360(void *a1, NSObject *a2)
{
  v3 = [a1 storeID];
  v4 = 138412290;
  v5 = v3;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "BCStoreItem %@ No Record supplied", &v4, 0xCu);
}

void sub_1001C34D8(void *a1, uint64_t a2, NSObject *a3)
{
  v5 = [a1 startTimestampString];
  v6 = 138412546;
  v7 = v5;
  v8 = 2112;
  v9 = a2;
  _os_log_error_impl(&_mh_execute_header, a3, OS_LOG_TYPE_ERROR, "BDSSecureEngagementData %@ Mismatch key from record key %@", &v6, 0x16u);
}

void sub_1001C3588(void *a1, NSObject *a2)
{
  v3 = [a1 startTimestampString];
  v4 = 138412290;
  v5 = v3;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "BDSSecureEngagementData %@ No Record supplied", &v4, 0xCu);
}

void sub_1001C3808(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 138412290;
  *(&v8 + 4) = a1;
  sub_10000DB14(&_mh_execute_header, a2, a3, "BDSNBController error: %@", a5, a6, a7, a8, v8, DWORD2(v8));
}

void sub_1001C3874(uint64_t a1, uint64_t a2, os_log_t log)
{
  v3 = *(a1 + 32);
  v4 = 138412546;
  v5 = v3;
  v6 = 2112;
  v7 = a2;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Error trying to write updated assetDetail for assetID: %@ error: %@", &v4, 0x16u);
}

void sub_1001C3900(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 138412290;
  *(&v8 + 4) = *(a1 + 32);
  sub_10000DB14(&_mh_execute_header, a2, a3, "Failed to write updated assetDetail for assetID %@ with no error reported.", a5, a6, a7, a8, v8, DWORD2(v8));
}

void sub_1001C3970(uint64_t a1, NSObject *a2)
{
  v2 = *(a1 + 32);
  v3 = 138412290;
  v4 = v2;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "Updated assetDetail for assetID %@", &v3, 0xCu);
}

void sub_1001C39EC(void *a1, NSObject *a2)
{
  v3 = [a1 assetID];
  v4 = 138412290;
  v5 = v3;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "BDSNBController No media items for %@", &v4, 0xCu);
}

void sub_1001C3A84(uint64_t a1, NSObject *a2)
{
  v4 = [*(a1 + 32) count];
  v5 = [*(a1 + 40) count];
  v6 = 134218240;
  v7 = v4;
  v8 = 2048;
  v9 = v5;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "BDSNBController Updating from assetDetails: updated (%lu) removed (%lu)", &v6, 0x16u);
}

void sub_1001C3B94(void *a1, uint64_t a2, NSObject *a3)
{
  v5[0] = 67109378;
  v5[1] = [a1 processIdentifier];
  v6 = 2112;
  v7 = a2;
  _os_log_error_impl(&_mh_execute_header, a3, OS_LOG_TYPE_ERROR, "Refusing connection to pid %d. (appIdentifier: %@)", v5, 0x12u);
}

void sub_1001C3C78(uint64_t a1, uint64_t a2, os_log_t log)
{
  v3 = *(a1 + 32);
  v4 = 138412802;
  v5 = v3;
  v6 = 1024;
  v7 = 0;
  v8 = 2112;
  v9 = a2;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "[BDSSaltVersionIdentifierManager] #saltVersionIdentifierChanged - %@ - 5b. dissociateCloudDataFromSyncWithCompletion %{BOOL}d ERROR:%@", &v4, 0x1Cu);
}

void sub_1001C3D24(uint64_t a1, NSObject *a2)
{
  v2 = *(a1 + 40);
  v3[0] = 67109120;
  v3[1] = v2;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "BCCloudCollectionsManager collectionDetailManagerInstancecompleted enableCloudSync %{BOOL}d", v3, 8u);
}

void sub_1001C3DA0(uint64_t a1, NSObject *a2)
{
  v2 = *(a1 + 40);
  v3[0] = 67109120;
  v3[1] = v2;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "BCCloudCollectionsManager collectionMemberManagerInstance completed enableCloudSync %{BOOL}d", v3, 8u);
}

void sub_1001C3EA4(uint64_t a1, uint64_t a2, os_log_t log)
{
  v3 = *(a1 + 32);
  v4 = 138412546;
  v5 = v3;
  v6 = 2112;
  v7 = a2;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "BCCloudCollectionDetailManager could not resolve conflicts for records %@. Error: %@", &v4, 0x16u);
}

void sub_1001C3F74(uint64_t a1, uint64_t a2, os_log_t log)
{
  v3 = *(a1 + 32);
  v4 = 138412546;
  v5 = v3;
  v6 = 2112;
  v7 = a2;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "BCCloudCollectionMemberManager could not resolve conflicts for records %@. Error: %@", &v4, 0x16u);
}

void sub_1001C4078(void *a1)
{
  v6 = [a1 collectionID];
  sub_100022AD8();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

void sub_1001C4120(void *a1)
{
  v6 = [a1 collectionID];
  sub_100022AD8();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_1001C424C(void *a1)
{
  v6 = [a1 collectionID];
  sub_100022AD8();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_1001C4310(void *a1, uint64_t a2, NSObject *a3)
{
  v5 = [a1 collectionMemberID];
  v6 = 138412546;
  v7 = v5;
  v8 = 2112;
  v9 = a2;
  _os_log_error_impl(&_mh_execute_header, a3, OS_LOG_TYPE_ERROR, "BCCollectionMember %@ Mismatch assetID from record collectionMemberID %@", &v6, 0x16u);
}

void sub_1001C44F8(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 138412290;
  *(&v8 + 4) = *(a1 + 32);
  sub_10000DB14(&_mh_execute_header, a2, a3, "Error adding storeItem for storeID: %@", a5, a6, a7, a8, v8, DWORD2(v8));
}

void sub_1001C4638(uint64_t a1, NSObject *a2)
{
  v3 = [*(a1 + 32) allKeys];
  sub_10000DB30();
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Error adding storeItems for storeIDs: %@", v4, 0xCu);
}