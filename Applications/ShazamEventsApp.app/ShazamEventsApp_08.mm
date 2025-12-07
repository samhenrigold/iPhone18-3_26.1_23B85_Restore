uint64_t sub_1000F9190(char *a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *(*a1 + 80);
  v6 = type metadata accessor for Optional();
  __chkstk_darwin(v6);
  v8 = &v16 - v7;
  v9 = type metadata accessor for Binding();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v16 - v11;
  v13 = *(v4 + 96);
  swift_beginAccess();
  (*(v10 + 16))(v12, &a1[v13], v9);
  v14 = *(v5 - 8);
  (*(v14 + 16))(v8, a2, v5);
  (*(v14 + 56))(v8, 0, 1, v5);
  Binding.wrappedValue.setter();
  return (*(v10 + 8))(v12, v9);
}

double sub_1000F9398(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3;

  sub_1000F8F34(v3);

  return result;
}

uint64_t sub_1000F93E8()
{
  v1 = *(*v0 + 96);
  type metadata accessor for Optional();
  v2 = type metadata accessor for Binding();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t sub_1000F9494()
{
  sub_1000F93E8();

  return swift_deallocClassInstance();
}

uint64_t sub_1000F950C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1000F87C4(a1);
  *a2 = result;
  return result;
}

uint64_t sub_1000F9534(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return static UIViewRepresentable._makeView(view:inputs:)(a1, a2, a3, WitnessTable);
}

uint64_t sub_1000F95B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return static UIViewRepresentable._makeViewList(view:inputs:)(a1, a2, a3, WitnessTable);
}

void sub_1000F962C(uint64_t a1)
{
  swift_getWitnessTable();
  UIViewRepresentable.body.getter();
  __break(1u);
}

uint64_t sub_1000F96A0(uint64_t a1)
{
  result = type metadata accessor for Array();
  if (v2 <= 0x3F)
  {
    type metadata accessor for Optional();
    result = type metadata accessor for Binding();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1000F973C(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = v5 - 1;
  if (!v5)
  {
    v6 = 0;
  }

  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = v6;
  }

  if (v6 >= 0)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = v7;
  }

  v9 = *(v4 + 80);
  if (v5)
  {
    v10 = -2;
  }

  else
  {
    v10 = -1;
  }

  if (!a2)
  {
    return 0;
  }

  v11 = v9 | 7;
  v12 = a2 - v8;
  if (a2 <= v8)
  {
    goto LABEL_34;
  }

  v13 = v10 + *(*(*(a3 + 16) - 8) + 64) - (((-17 - v9) | v9) + ((-9 - v9) | v11));
  v14 = 8 * v13;
  if (v13 <= 3)
  {
    v17 = ((v12 + ~(-1 << v14)) >> v14) + 1;
    if (HIWORD(v17))
    {
      v15 = *(a1 + v13);
      if (!v15)
      {
        goto LABEL_34;
      }

      goto LABEL_23;
    }

    if (v17 > 0xFF)
    {
      v15 = *(a1 + v13);
      if (!*(a1 + v13))
      {
        goto LABEL_34;
      }

      goto LABEL_23;
    }

    if (v17 < 2)
    {
LABEL_34:
      if (v8 == 0x7FFFFFFF)
      {
        v19 = *a1;
        if (*a1 >= 0xFFFFFFFFuLL)
        {
          LODWORD(v19) = -1;
        }

        return (v19 + 1);
      }

      else
      {
        v20 = (*(v4 + 48))((v9 + ((((a1 + v11 + 8) & ~v11) + 15) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v9);
        if (v20 >= 2)
        {
          return v20 - 1;
        }

        else
        {
          return 0;
        }
      }
    }
  }

  v15 = *(a1 + v13);
  if (!*(a1 + v13))
  {
    goto LABEL_34;
  }

LABEL_23:
  v18 = (v15 - 1) << v14;
  if (v13 > 3)
  {
    v18 = 0;
  }

  if (v13)
  {
    if (v13 > 3)
    {
      LODWORD(v13) = 4;
    }

    if (v13 > 2)
    {
      if (v13 == 3)
      {
        LODWORD(v13) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v13) = *a1;
      }
    }

    else if (v13 == 1)
    {
      LODWORD(v13) = *a1;
    }

    else
    {
      LODWORD(v13) = *a1;
    }
  }

  return v8 + (v13 | v18) + 1;
}

void sub_1000F993C(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = 0;
  v7 = *(*(a4 + 16) - 8);
  v8 = *(v7 + 84);
  v9 = v8 - 1;
  if (!v8)
  {
    v9 = 0;
  }

  if (v9 <= 0x7FFFFFFF)
  {
    v10 = 0x7FFFFFFF;
  }

  else
  {
    v10 = v9;
  }

  if (v9 >= 0)
  {
    v10 = 0x7FFFFFFF;
  }

  v11 = *(v7 + 80);
  v12 = v11 | 7;
  v13 = *(*(*(a4 + 16) - 8) + 64);
  if (!v8)
  {
    ++v13;
  }

  v14 = -2 - ((-9 - v11) | v12) - (((-17 - v11) | v11) - v13);
  v15 = a3 >= v10;
  v16 = a3 - v10;
  if (v16 == 0 || !v15)
  {
LABEL_22:
    if (v10 < a2)
    {
      goto LABEL_23;
    }

    goto LABEL_32;
  }

  if (v14 > 3)
  {
    v6 = 1;
    if (v10 < a2)
    {
      goto LABEL_23;
    }

    goto LABEL_32;
  }

  v17 = ((v16 + ~(-1 << (8 * v14))) >> (8 * v14)) + 1;
  if (!HIWORD(v17))
  {
    if (v17 < 0x100)
    {
      v18 = 1;
    }

    else
    {
      v18 = 2;
    }

    if (v17 >= 2)
    {
      v6 = v18;
    }

    else
    {
      v6 = 0;
    }

    goto LABEL_22;
  }

  v6 = 4;
  if (v10 < a2)
  {
LABEL_23:
    v19 = ~v10 + a2;
    if (v14 < 4)
    {
      v20 = (v19 >> (8 * v14)) + 1;
      if (v14)
      {
        v21 = v19 & ~(-1 << (8 * v14));
        bzero(a1, v14);
        if (v14 != 3)
        {
          if (v14 == 2)
          {
            *a1 = v21;
            if (v6 > 1)
            {
LABEL_54:
              if (v6 == 2)
              {
                *&a1[v14] = v20;
              }

              else
              {
                *&a1[v14] = v20;
              }

              return;
            }
          }

          else
          {
            *a1 = v19;
            if (v6 > 1)
            {
              goto LABEL_54;
            }
          }

          goto LABEL_51;
        }

        *a1 = v21;
        a1[2] = BYTE2(v21);
      }

      if (v6 > 1)
      {
        goto LABEL_54;
      }
    }

    else
    {
      bzero(a1, v14);
      *a1 = v19;
      v20 = 1;
      if (v6 > 1)
      {
        goto LABEL_54;
      }
    }

LABEL_51:
    if (v6)
    {
      a1[v14] = v20;
    }

    return;
  }

LABEL_32:
  if (v6 > 1)
  {
    if (v6 != 2)
    {
      *&a1[v14] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_39;
    }

    *&a1[v14] = 0;
  }

  else if (v6)
  {
    a1[v14] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_39;
  }

  if (!a2)
  {
    return;
  }

LABEL_39:
  if (v10 == 0x7FFFFFFF)
  {
    if ((a2 & 0x80000000) != 0)
    {
      v22 = a2 & 0x7FFFFFFF;
    }

    else
    {
      v22 = a2 - 1;
    }

    *a1 = v22;
  }

  else
  {
    v23 = *(v7 + 56);
    v24 = (v11 + (((&a1[v12 + 8] & ~v12) + 15) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v11;
    v25 = a2 + 1;

    v23(v24, v25);
  }
}

uint64_t sub_1000F9CF8(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

double sub_1000F9D10(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
  }

  return result;
}

uint64_t sub_1000F9D20(uint64_t *a1, int a2)
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

uint64_t sub_1000F9D68(uint64_t result, int a2, int a3)
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

unint64_t sub_1000F9DBC()
{
  result = qword_10021F030;
  if (!qword_10021F030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021F030);
  }

  return result;
}

void *sub_1000F9E20@<X0>(void *a1@<X8>)
{
  v4 = *(v1 + 16);
  v3 = *(v1 + 24);
  v5 = type metadata accessor for CalendarSheet.CalendarCoordinator();
  v6 = objc_allocWithZone(v5);
  v7 = &v6[OBJC_IVAR____TtCV15ShazamEventsApp13CalendarSheet19CalendarCoordinator_completionHandler];
  *v7 = v4;
  v7[1] = v3;
  sub_1000BF57C(v4, v3);
  v9.receiver = v6;
  v9.super_class = v5;
  result = objc_msgSendSuper2(&v9, "init");
  *a1 = result;
  return result;
}

uint64_t sub_1000F9EDC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000F9FCC();

  return static UIViewControllerRepresentable._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_1000F9F40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000F9FCC();

  return static UIViewControllerRepresentable._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

void sub_1000F9FA4(uint64_t a1)
{
  sub_1000F9FCC();
  UIViewControllerRepresentable.body.getter();
  __break(1u);
}

unint64_t sub_1000F9FCC()
{
  result = qword_10021F038;
  if (!qword_10021F038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021F038);
  }

  return result;
}

id sub_1000FA020(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = [objc_allocWithZone(EKEventEditViewController) init];
  v6 = [v5 navigationBar];
  v7 = [objc_opt_self() blueColor];
  [v6 setTintColor:v7];

  sub_100009F70(&unk_10021F040, &unk_1001B7120);
  UIViewControllerRepresentableContext.coordinator.getter();
  [v5 setEditViewDelegate:v9];

  [v5 setEventStore:a3];
  [v5 setEvent:a2];
  return v5;
}

uint64_t sub_1000FA138(uint64_t a1)
{
  result = sub_1000FB91C(&qword_10021F050, &type metadata accessor for Theater, &unk_1001B7160);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1000FA194()
{
  result = qword_10021F058;
  if (!qword_10021F058)
  {
    sub_10000B3DC(&qword_10021F060, &qword_1001B7150);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021F058);
  }

  return result;
}

uint64_t sub_1000FA360@<X0>(uint64_t a1@<X8>)
{
  v35 = a1;
  v43 = type metadata accessor for Calendar();
  v46 = *(v43 - 8);
  __chkstk_darwin(v43);
  v3 = &v32 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = type metadata accessor for TimeZone();
  v47 = *(v45 - 8);
  v4 = __chkstk_darwin(v45);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v32 - v7;
  v9 = type metadata accessor for DateInterval();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = type metadata accessor for Date();
  v44 = *(v42 - 8);
  v13 = __chkstk_darwin(v42);
  v15 = &v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v13);
  v18 = &v32 - v17;
  __chkstk_darwin(v16);
  v41 = &v32 - v19;
  Time.dateInterval.getter();
  DateInterval.start.getter();
  v20 = *(v10 + 8);
  v37 = v10 + 8;
  v38 = v9;
  v36 = v20;
  v20(v12, v9);
  v40 = v1;
  Time.timeZone.getter();
  v21 = TimeZone.secondsFromGMT(for:)();
  static Calendar.current.getter();
  Calendar.timeZone.getter();
  v22 = *(v46 + 8);
  v39 = v3;
  v23 = v46 + 8;
  v22(v3, v43);
  v24 = TimeZone.secondsFromGMT(for:)();
  v25 = *(v47 + 8);
  v47 += 8;
  result = v25(v6, v45);
  if (__OFSUB__(v21, v24))
  {
    __break(1u);
  }

  else
  {
    Date.addingTimeInterval(_:)();
    v34 = v22;
    v27 = v45;
    v46 = v23;
    v25(v8, v45);
    v28 = *(v44 + 8);
    v44 += 8;
    v33 = v28;
    v28(v18, v42);
    Time.dateInterval.getter();
    DateInterval.end.getter();
    v36(v12, v38);
    Time.timeZone.getter();
    v29 = TimeZone.secondsFromGMT(for:)();
    v30 = v39;
    static Calendar.current.getter();
    Calendar.timeZone.getter();
    v34(v30, v43);
    v31 = TimeZone.secondsFromGMT(for:)();
    result = v25(v6, v27);
    if (!__OFSUB__(v29, v31))
    {
      Date.addingTimeInterval(_:)();
      v25(v8, v45);
      v33(v15, v42);
      return DateInterval.init(start:end:)();
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1000FA8D4(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  v53 = a3;
  v52 = a2;
  v4 = type metadata accessor for DateInterval();
  v47 = *(v4 - 8);
  v48 = v4;
  __chkstk_darwin(v4);
  v45 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Calendar();
  v50 = *(v6 - 8);
  v51 = v6;
  __chkstk_darwin(v6);
  v8 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = type metadata accessor for TimeZone();
  v9 = *(v49 - 8);
  v10 = __chkstk_darwin(v49);
  v12 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v38 - v13;
  v15 = type metadata accessor for Time();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v38 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for Date();
  v43 = *(v19 - 8);
  v44 = v19;
  v20 = __chkstk_darwin(v19);
  v39 = &v38 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __chkstk_darwin(v20);
  v24 = &v38 - v23;
  v46 = a1;
  v53(v22);
  Time.timeZone.getter();
  v25 = *(v16 + 8);
  v41 = v16 + 8;
  v42 = v15;
  v38 = v25;
  v25(v18, v15);
  v40 = v14;
  v26 = TimeZone.secondsFromGMT(for:)();
  static Calendar.current.getter();
  Calendar.timeZone.getter();
  (*(v50 + 8))(v8, v51);
  v27 = TimeZone.secondsFromGMT(for:)();
  v28 = *(v9 + 8);
  v29 = v12;
  v30 = v49;
  result = v28(v29, v49);
  if (__OFSUB__(v26, v27))
  {
    __break(1u);
  }

  else
  {
    Date.addingTimeInterval(_:)();
    v32 = v28(v40, v30);
    v53(v32);
    v33 = v45;
    sub_1000FA360(v45);
    v38(v18, v42);
    v34 = v39;
    DateInterval.end.getter();
    (*(v47 + 8))(v33, v48);
    v35 = static Date.> infix(_:_:)();
    v36 = v44;
    v37 = *(v43 + 8);
    v37(v34, v44);
    v37(v24, v36);
    return v35 & 1;
  }

  return result;
}

void *sub_1000FAE4C(uint64_t (*a1)(void), uint64_t a2, uint64_t a3, uint64_t (*a4)(void), void (*a5)(BOOL, uint64_t, uint64_t))
{
  v30 = a5;
  v41 = a4(0);
  v9 = __chkstk_darwin(v41);
  v38 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v9);
  v40 = &v30 - v13;
  v37 = *(a3 + 16);
  if (v37)
  {
    v14 = 0;
    v34 = (v12 + 8);
    v35 = (v12 + 32);
    v36 = v12 + 16;
    v39 = _swiftEmptyArrayStorage;
    v32 = a2;
    v33 = a3;
    v31 = a1;
    while (v14 < *(a3 + 16))
    {
      v15 = (*(v12 + 80) + 32) & ~*(v12 + 80);
      v16 = *(v12 + 72);
      v17 = a3;
      v18 = a3 + v15 + v16 * v14;
      v19 = v12;
      v20 = a1;
      v21 = v40;
      (*(v12 + 16))(v40, v18, v41);
      v22 = v21;
      a1 = v20;
      v23 = v20(v22);
      if (v5)
      {
        (*v34)(v40, v41);
        v29 = v39;

        return v29;
      }

      if (v23)
      {
        v24 = *v35;
        (*v35)(v38, v40, v41);
        v25 = v39;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v42 = v25;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v30(0, v25[2] + 1, 1);
          v25 = v42;
        }

        v28 = v25[2];
        v27 = v25[3];
        if (v28 >= v27 >> 1)
        {
          v30(v27 > 1, v28 + 1, 1);
          v25 = v42;
        }

        v25[2] = v28 + 1;
        v39 = v25;
        result = (v24)(v25 + v15 + v28 * v16, v38, v41);
        a3 = v33;
        a1 = v31;
      }

      else
      {
        result = (*v34)(v40, v41);
        a3 = v17;
      }

      ++v14;
      v12 = v19;
      if (v37 == v14)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
    v39 = _swiftEmptyArrayStorage;
LABEL_14:

    return v39;
  }

  return result;
}

uint64_t sub_1000FB134()
{
  v1[2] = v0;
  v2 = type metadata accessor for Date();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  v3 = sub_100009F70(&qword_10021F138, &qword_1001B71A0);
  v1[6] = v3;
  v1[7] = *(v3 - 8);
  v1[8] = swift_task_alloc();
  v4 = type metadata accessor for Venue();
  v1[9] = v4;
  v1[10] = *(v4 - 8);
  v1[11] = swift_task_alloc();
  v5 = sub_100009F70(&qword_10021F140, &qword_1001B71A8);
  v1[12] = v5;
  v1[13] = *(v5 - 8);
  v1[14] = swift_task_alloc();

  return _swift_task_switch(sub_1000FB320, 0, 0);
}

uint64_t sub_1000FB320()
{
  if (qword_100218350 != -1)
  {
    swift_once();
  }

  v2 = v0[10];
  v1 = v0[11];
  v3 = v0[9];
  v4 = type metadata accessor for EventService();
  sub_10001FDF4(v4, qword_100230588);
  Theater.venue.getter();
  v5 = Venue.id.getter();
  v7 = v6;
  v0[15] = v6;
  (*(v2 + 8))(v1, v3);
  v8 = type metadata accessor for Theater();
  sub_1000FB91C(&qword_10021F148, &type metadata accessor for Theater, &protocol conformance descriptor for Theater);
  static EventService.RequestType.theater.getter();
  v9 = swift_task_alloc();
  v0[16] = v9;
  *v9 = v0;
  v9[1] = sub_1000FB4D8;
  v10 = v0[14];
  v11 = v0[8];

  return EventService.schedule<A, B>(venueIdentifier:ofType:_:)(v10, v5, v7, v11, v0 + 2, 0, v8, v0 + 2);
}

uint64_t sub_1000FB4D8()
{
  v2 = *v1;
  *(*v1 + 136) = v0;

  (*(v2[7] + 8))(v2[8], v2[6]);

  if (v0)
  {
    v3 = sub_10001FB0C;
  }

  else
  {
    v3 = sub_1000FB65C;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1000FB65C()
{
  v2 = v0[13];
  v1 = v0[14];
  v3 = v0[12];
  v5 = v0[4];
  v4 = v0[5];
  v6 = v0[3];
  v7 = Venue.Schedule.events.getter();
  (*(v2 + 8))(v1, v3);
  static Date.now.getter();
  v8 = swift_task_alloc();
  *(v8 + 16) = v4;
  v9 = sub_1000FAE4C(sub_1000FB964, v8, v7, &type metadata accessor for Theater, sub_1001445C8);

  (*(v5 + 8))(v4, v6);

  v10 = v0[1];

  return v10(v9);
}

uint64_t sub_1000FB7C8@<X0>(uint64_t *a1@<X8>)
{
  result = Theater.category.getter();
  *a1 = result;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  return result;
}

uint64_t sub_1000FB80C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10001FC70;

  return sub_1000FB134();
}

uint64_t sub_1000FB898(uint64_t a1)
{
  *(a1 + 8) = sub_1000FB91C(&qword_10021F128, &type metadata accessor for Theater, &protocol conformance descriptor for Theater);
  result = sub_1000FB91C(&qword_10021F130, &type metadata accessor for Theater, &protocol conformance descriptor for Theater);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1000FB91C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1000FB998(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v52 = a1;
  v5 = type metadata accessor for Date.FormatStyle.Symbol.Year();
  v56 = *(v5 - 8);
  v57 = v5;
  __chkstk_darwin(v5);
  v55 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Date.FormatStyle.Symbol.Month();
  v53 = *(v7 - 8);
  v54 = v7;
  __chkstk_darwin(v7);
  v51 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Date.FormatStyle.Symbol.Day();
  v47 = *(v9 - 8);
  v48 = v9;
  __chkstk_darwin(v9);
  v46 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = type metadata accessor for Date.FormatStyle();
  v11 = *(v44 - 8);
  v12 = __chkstk_darwin(v44);
  v14 = &v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v12);
  v41 = &v41 - v16;
  v17 = __chkstk_darwin(v15);
  v42 = &v41 - v18;
  v19 = __chkstk_darwin(v17);
  v43 = &v41 - v20;
  __chkstk_darwin(v19);
  v45 = &v41 - v21;
  v22 = type metadata accessor for Date();
  v49 = *(v22 - 8);
  v50 = v22;
  __chkstk_darwin(v22);
  v24 = &v41 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = type metadata accessor for DateInterval();
  v26 = *(v25 - 8);
  __chkstk_darwin(v25);
  v28 = &v41 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(a3 + 16))(a2, a3);
  DateInterval.start.getter();
  (*(v26 + 8))(v28, v25);
  sub_1000FD278(a2, a3);
  v29 = v41;
  Date.FormatStyle.weekday(_:)();
  v30 = *(v11 + 8);
  v31 = v14;
  v32 = v44;
  v30(v31, v44);
  v33 = v46;
  static Date.FormatStyle.Symbol.Day.defaultDigits.getter();
  v34 = v42;
  Date.FormatStyle.day(_:)();
  (*(v47 + 8))(v33, v48);
  v35 = v32;
  v30(v29, v32);
  v36 = v51;
  static Date.FormatStyle.Symbol.Month.abbreviated.getter();
  v37 = v43;
  Date.FormatStyle.month(_:)();
  (*(v53 + 8))(v36, v54);
  v30(v34, v35);
  v38 = v55;
  static Date.FormatStyle.Symbol.Year.defaultDigits.getter();
  v39 = v45;
  Date.FormatStyle.year(_:)();
  (*(v56 + 8))(v38, v57);
  v30(v37, v35);
  sub_1000FEA80(&qword_10021F178, &type metadata accessor for Date.FormatStyle, &protocol conformance descriptor for Date.FormatStyle);
  Date.formatted<A>(_:)();
  v30(v39, v35);
  (*(v49 + 8))(v24, v50);
  return v58;
}

uint64_t sub_1000FBF34@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v52 = a3;
  v68 = type metadata accessor for Calendar();
  v70 = *(v68 - 8);
  __chkstk_darwin(v68);
  v67 = &v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for TimeZone();
  v8 = *(v7 - 8);
  v71 = v7;
  v72 = v8;
  v9 = __chkstk_darwin(v7);
  v11 = &v50 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v50 - v12;
  v14 = type metadata accessor for DateInterval();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v50 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = type metadata accessor for Date();
  v69 = *(v65 - 8);
  v18 = __chkstk_darwin(v65);
  v64 = &v50 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __chkstk_darwin(v18);
  v22 = &v50 - v21;
  __chkstk_darwin(v20);
  v63 = &v50 - v23;
  v24 = a2;
  v25 = a2 + 16;
  v26 = *(a2 + 16);
  v27 = a1;
  v28 = a1;
  v29 = v24;
  v55 = v26;
  v56 = v25;
  (v26)(v28);
  DateInterval.start.getter();
  v30 = *(v15 + 8);
  v57 = v15 + 8;
  v58 = v14;
  v54 = v30;
  v30(v17, v14);
  v31 = *(v29 + 24);
  v61 = v27;
  v62 = v3;
  v60 = v29;
  v53 = v31;
  v31(v27, v29);
  v66 = v13;
  v32 = TimeZone.secondsFromGMT(for:)();
  v33 = v67;
  static Calendar.current.getter();
  Calendar.timeZone.getter();
  v34 = *(v70 + 8);
  v35 = v70 + 8;
  v34(v33, v68);
  v36 = TimeZone.secondsFromGMT(for:)();
  v37 = *(v72 + 8);
  v59 = v11;
  v72 += 8;
  result = v37(v11, v71);
  if (__OFSUB__(v32, v36))
  {
    __break(1u);
  }

  else
  {
    Date.addingTimeInterval(_:)();
    v70 = v35;
    v37(v66, v71);
    v39 = *(v69 + 8);
    v69 += 8;
    v50 = v39;
    v39(v22, v65);
    v40 = v61;
    v51 = v34;
    v41 = v37;
    v42 = v60;
    v55(v61, v60);
    DateInterval.end.getter();
    v54(v17, v58);
    v43 = v42;
    v44 = v41;
    v53(v40, v43);
    v45 = TimeZone.secondsFromGMT(for:)();
    v46 = v67;
    static Calendar.current.getter();
    v47 = v59;
    Calendar.timeZone.getter();
    v51(v46, v68);
    v48 = TimeZone.secondsFromGMT(for:)();
    result = v44(v47, v71);
    if (!__OFSUB__(v45, v48))
    {
      v49 = v64;
      Date.addingTimeInterval(_:)();
      v44(v66, v71);
      v50(v49, v65);
      return DateInterval.init(start:end:)();
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1000FC47C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Date.FormatStyle.Symbol.Month();
  v40 = *(v4 - 8);
  v41 = v4;
  __chkstk_darwin(v4);
  v39 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = type metadata accessor for Date.FormatStyle.Symbol.Day();
  v35 = *(v37 - 8);
  __chkstk_darwin(v37);
  v32 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Date.FormatStyle();
  v33 = *(v7 - 8);
  v34 = v7;
  v8 = __chkstk_darwin(v7);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v8);
  v13 = &v30 - v12;
  __chkstk_darwin(v11);
  v31 = &v30 - v14;
  v38 = type metadata accessor for Date();
  v36 = *(v38 - 8);
  __chkstk_darwin(v38);
  v30 = &v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for DateInterval();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v30 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(a2 + 16))(a1, a2);
  DateInterval.start.getter();
  (*(v17 + 8))(v19, v16);
  sub_1000FD278(a1, a2);
  v20 = v32;
  static Date.FormatStyle.Symbol.Day.defaultDigits.getter();
  Date.FormatStyle.day(_:)();
  (*(v35 + 8))(v20, v37);
  v21 = v34;
  v22 = *(v33 + 8);
  v22(v10, v34);
  v23 = v39;
  static Date.FormatStyle.Symbol.Month.wide.getter();
  v24 = v31;
  Date.FormatStyle.month(_:)();
  (*(v40 + 8))(v23, v41);
  v25 = v21;
  v22(v13, v21);
  sub_1000FEA80(&qword_10021F178, &type metadata accessor for Date.FormatStyle, &protocol conformance descriptor for Date.FormatStyle);
  v26 = v24;
  v27 = v25;
  v28 = v30;
  Date.formatted<A>(_:)();
  v22(v26, v27);
  (*(v36 + 8))(v28, v38);
  return v42;
}

uint64_t sub_1000FC8F4(uint64_t a1, uint64_t a2)
{
  if (sub_1000FE2B8(a1, a2))
  {

    return sub_1000FDE00(a1, a2);
  }

  else
  {

    return sub_1000FC47C(a1, a2);
  }
}

uint64_t sub_1000FC968(uint64_t a1, uint64_t a2)
{
  v43 = type metadata accessor for Date.FormatStyle.Symbol.Weekday();
  v41 = *(v43 - 8);
  __chkstk_darwin(v43);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Date.FormatStyle();
  v38 = *(v7 - 8);
  v39 = v7;
  v8 = __chkstk_darwin(v7);
  v10 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v37 = &v32 - v11;
  v42 = type metadata accessor for Date();
  v40 = *(v42 - 8);
  __chkstk_darwin(v42);
  v13 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = type metadata accessor for DateInterval();
  v14 = *(v34 - 8);
  __chkstk_darwin(v34);
  v16 = &v32 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = [objc_opt_self() mainBundle];
  v44._object = 0xE000000000000000;
  v18._object = 0x80000001001C0320;
  v18._countAndFlagsBits = 0xD000000000000029;
  v19._countAndFlagsBits = 0;
  v19._object = 0xE000000000000000;
  v44._countAndFlagsBits = 0;
  v20 = NSLocalizedString(_:tableName:bundle:value:comment:)(v18, 0, v17, v19, v44);
  object = v20._object;
  countAndFlagsBits = v20._countAndFlagsBits;

  sub_100009F70(&qword_100219EF8, &qword_1001AF310);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_1001ACB00;
  v22 = a2;
  v23 = *(a2 + 16);
  v33 = v2;
  v23(a1, a2);
  DateInterval.start.getter();
  (*(v14 + 8))(v16, v34);
  sub_1000FD278(a1, a2);
  static Date.FormatStyle.Symbol.Weekday.abbreviated.getter();
  v24 = v37;
  Date.FormatStyle.weekday(_:)();
  (*(v41 + 8))(v6, v43);
  v25 = v39;
  v26 = *(v38 + 8);
  v26(v10, v39);
  *(v21 + 56) = &type metadata for String;
  v27 = sub_100096600();
  *(v21 + 64) = v27;
  sub_1000FEA80(&qword_10021F178, &type metadata accessor for Date.FormatStyle, &protocol conformance descriptor for Date.FormatStyle);
  Date.formatted<A>(_:)();
  v26(v24, v25);
  (*(v40 + 8))(v13, v42);
  v28 = sub_1000FD544(a1, v22);
  *(v21 + 96) = &type metadata for String;
  *(v21 + 104) = v27;
  *(v21 + 72) = v28;
  *(v21 + 80) = v29;
  v30 = String.init(format:_:)();

  return v30;
}

uint64_t sub_1000FCDF0(uint64_t a1, uint64_t a2)
{
  v43 = type metadata accessor for Date.FormatStyle.Symbol.Weekday();
  v41 = *(v43 - 8);
  __chkstk_darwin(v43);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Date.FormatStyle();
  v38 = *(v7 - 8);
  v39 = v7;
  v8 = __chkstk_darwin(v7);
  v10 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v37 = &v32 - v11;
  v42 = type metadata accessor for Date();
  v40 = *(v42 - 8);
  __chkstk_darwin(v42);
  v13 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = type metadata accessor for DateInterval();
  v14 = *(v34 - 8);
  __chkstk_darwin(v34);
  v16 = &v32 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = [objc_opt_self() mainBundle];
  v44._object = 0xE000000000000000;
  v18._object = 0x80000001001C0350;
  v18._countAndFlagsBits = 0xD000000000000037;
  v19._countAndFlagsBits = 0;
  v19._object = 0xE000000000000000;
  v44._countAndFlagsBits = 0;
  v20 = NSLocalizedString(_:tableName:bundle:value:comment:)(v18, 0, v17, v19, v44);
  object = v20._object;
  countAndFlagsBits = v20._countAndFlagsBits;

  sub_100009F70(&qword_100219EF8, &qword_1001AF310);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_1001ACB00;
  v22 = a2;
  v23 = *(a2 + 16);
  v33 = v2;
  v23(a1, a2);
  DateInterval.start.getter();
  (*(v14 + 8))(v16, v34);
  sub_1000FD278(a1, a2);
  static Date.FormatStyle.Symbol.Weekday.wide.getter();
  v24 = v37;
  Date.FormatStyle.weekday(_:)();
  (*(v41 + 8))(v6, v43);
  v25 = v39;
  v26 = *(v38 + 8);
  v26(v10, v39);
  *(v21 + 56) = &type metadata for String;
  v27 = sub_100096600();
  *(v21 + 64) = v27;
  sub_1000FEA80(&qword_10021F178, &type metadata accessor for Date.FormatStyle, &protocol conformance descriptor for Date.FormatStyle);
  Date.formatted<A>(_:)();
  v26(v24, v25);
  (*(v40 + 8))(v13, v42);
  v28 = sub_1000FD544(a1, v22);
  *(v21 + 96) = &type metadata for String;
  *(v21 + 104) = v27;
  *(v21 + 72) = v28;
  *(v21 + 80) = v29;
  v30 = String.init(format:_:)();

  return v30;
}

uint64_t sub_1000FD278(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FormatStyleCapitalizationContext();
  __chkstk_darwin(v4 - 8);
  v5 = type metadata accessor for Calendar();
  __chkstk_darwin(v5 - 8);
  v6 = type metadata accessor for Locale();
  __chkstk_darwin(v6 - 8);
  v7 = type metadata accessor for TimeZone();
  __chkstk_darwin(v7 - 8);
  v8 = sub_100009F70(&qword_10021F180, &unk_1001B81A0);
  __chkstk_darwin(v8 - 8);
  v10 = &v17 - v9;
  v11 = sub_100009F70(&qword_10021F188, &qword_1001B71F0);
  __chkstk_darwin(v11 - 8);
  v13 = &v17 - v12;
  v14 = type metadata accessor for Date.FormatStyle.DateStyle();
  (*(*(v14 - 8) + 56))(v13, 1, 1, v14);
  v15 = type metadata accessor for Date.FormatStyle.TimeStyle();
  (*(*(v15 - 8) + 56))(v10, 1, 1, v15);
  (*(a2 + 24))(a1, a2);
  static Locale.autoupdatingCurrent.getter();
  static Calendar.autoupdatingCurrent.getter();
  static FormatStyleCapitalizationContext.unknown.getter();
  return Date.FormatStyle.init(date:time:locale:calendar:timeZone:capitalizationContext:)();
}

uint64_t sub_1000FD544(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Date.FormatStyle.Symbol.Minute();
  v41 = *(v4 - 8);
  v42 = v4;
  __chkstk_darwin(v4);
  v40 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Date.FormatStyle.Symbol.Hour.AMPMStyle();
  v38 = *(v6 - 8);
  v39 = v6;
  __chkstk_darwin(v6);
  v32 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = type metadata accessor for Date.FormatStyle.Symbol.Hour();
  v34 = *(v36 - 8);
  __chkstk_darwin(v36);
  v30 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = type metadata accessor for Date.FormatStyle();
  v31 = *(v33 - 8);
  v9 = __chkstk_darwin(v33);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v9);
  v14 = &v29 - v13;
  __chkstk_darwin(v12);
  v29 = &v29 - v15;
  v37 = type metadata accessor for Date();
  v35 = *(v37 - 8);
  __chkstk_darwin(v37);
  v17 = &v29 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for DateInterval();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = &v29 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(a2 + 16))(a1, a2);
  DateInterval.start.getter();
  (*(v19 + 8))(v21, v18);
  sub_1000FD278(a1, a2);
  v22 = v32;
  static Date.FormatStyle.Symbol.Hour.AMPMStyle.abbreviated.getter();
  v23 = v30;
  static Date.FormatStyle.Symbol.Hour.defaultDigits(amPM:)();
  (*(v38 + 8))(v22, v39);
  Date.FormatStyle.hour(_:)();
  (*(v34 + 8))(v23, v36);
  v24 = *(v31 + 8);
  v25 = v33;
  v24(v11, v33);
  v26 = v40;
  static Date.FormatStyle.Symbol.Minute.defaultDigits.getter();
  v27 = v29;
  Date.FormatStyle.minute(_:)();
  (*(v41 + 8))(v26, v42);
  v24(v14, v25);
  sub_1000FEA80(&qword_10021F178, &type metadata accessor for Date.FormatStyle, &protocol conformance descriptor for Date.FormatStyle);
  Date.formatted<A>(_:)();
  v24(v27, v25);
  (*(v35 + 8))(v17, v37);
  return v43;
}

uint64_t sub_1000FDA54@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v39 = a3;
  v38 = sub_100009F70(&qword_10021F168, &qword_1001B71E8);
  v5 = __chkstk_darwin(v38);
  v35 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v36 = &v34 - v7;
  v8 = type metadata accessor for Date();
  v37 = *(v8 - 8);
  v9 = __chkstk_darwin(v8);
  v41 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v12 = &v34 - v11;
  v40 = type metadata accessor for DateInterval();
  v13 = *(v40 - 8);
  v14 = __chkstk_darwin(v40);
  v16 = &v34 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v18 = &v34 - v17;
  sub_1000FBF34(a1, a2, &v34 - v17);
  DateInterval.start.getter();
  v19 = *(v13 + 8);
  v20 = v18;
  v21 = v40;
  v19(v20, v40);
  sub_1000FBF34(a1, a2, v16);
  v22 = v41;
  DateInterval.end.getter();
  v19(v16, v21);
  sub_1000FEA80(&qword_10021F170, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  result = dispatch thunk of static Comparable.<= infix(_:_:)();
  if (result)
  {
    v25 = v36;
    v24 = v37;
    v26 = *(v37 + 32);
    v26(v36, v12, v8);
    v27 = v38;
    v26((v25 + *(v38 + 48)), v22, v8);
    v28 = v35;
    sub_1000FE9A0(v25, v35);
    v29 = *(v27 + 48);
    v30 = v39;
    v26(v39, v28, v8);
    v31 = *(v24 + 8);
    v31(v28 + v29, v8);
    sub_1000FEA10(v25, v28);
    v32 = *(v27 + 48);
    v33 = sub_100009F70(&qword_10021F158, &qword_1001B71E0);
    v26(&v30[*(v33 + 36)], (v28 + v32), v8);
    return (v31)(v28, v8);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1000FDE00(uint64_t a1, uint64_t a2)
{
  v21 = a2;
  v22 = type metadata accessor for Date.FormatStyle.Symbol.Month();
  v3 = *(v22 - 8);
  __chkstk_darwin(v22);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Date.IntervalFormatStyle();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v8);
  v13 = &v21 - v12;
  __chkstk_darwin(v11);
  v15 = &v21 - v14;
  v16 = sub_100009F70(&qword_10021F158, &qword_1001B71E0);
  __chkstk_darwin(v16 - 8);
  v18 = &v21 - v17;
  sub_1000FDA54(a1, v21, &v21 - v17);
  static FormatStyle<>.interval.getter();
  Date.IntervalFormatStyle.day()();
  v19 = *(v7 + 8);
  v19(v10, v6);
  static Date.FormatStyle.Symbol.Month.abbreviated.getter();
  Date.IntervalFormatStyle.month(_:)();
  (*(v3 + 8))(v5, v22);
  v19(v13, v6);
  sub_1000FEA80(&qword_10021F160, &type metadata accessor for Date.IntervalFormatStyle, &protocol conformance descriptor for Date.IntervalFormatStyle);
  Range<>.formatted<A>(_:)();
  v19(v15, v6);
  sub_1000FE938(v18);
  return v23;
}

uint64_t sub_1000FE0BC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Date.FormatStyle.TimeStyle();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Date.FormatStyle.DateStyle();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_100009F70(&qword_10021F158, &qword_1001B71E0);
  __chkstk_darwin(v12 - 8);
  v14 = &v17 - v13;
  sub_1000FDA54(a1, a2, &v17 - v13);
  static Date.FormatStyle.DateStyle.abbreviated.getter();
  static Date.FormatStyle.TimeStyle.omitted.getter();
  v15 = Range<>.formatted(date:time:)();
  (*(v5 + 8))(v7, v4);
  (*(v9 + 8))(v11, v8);
  sub_1000FE938(v14);
  return v15;
}

uint64_t sub_1000FE2B8(uint64_t a1, uint64_t a2)
{
  v43 = a2;
  v3 = type metadata accessor for Date();
  v44 = *(v3 - 8);
  v45 = v3;
  v4 = __chkstk_darwin(v3);
  v42 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v7 = &v33 - v6;
  v8 = type metadata accessor for DateInterval();
  v37 = *(v8 - 8);
  v9 = __chkstk_darwin(v8);
  v36 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v12 = &v33 - v11;
  v13 = type metadata accessor for Calendar();
  v40 = *(v13 - 8);
  v41 = v13;
  __chkstk_darwin(v13);
  v35 = &v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for DateComponents();
  v38 = *(v15 - 8);
  v39 = v15;
  __chkstk_darwin(v15);
  v34 = &v33 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Calendar.current.getter();
  sub_100009F70(qword_10021F190, &qword_1001B7700);
  v17 = type metadata accessor for Calendar.Component();
  v18 = *(v17 - 8);
  v19 = (*(v18 + 80) + 32) & ~*(v18 + 80);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_1001AEB90;
  (*(v18 + 104))(v20 + v19, enum case for Calendar.Component.day(_:), v17);
  sub_100106D6C(v20);
  swift_setDeallocating();
  (*(v18 + 8))(v20 + v19, v17);
  swift_deallocClassInstance();
  v21 = v43;
  sub_1000FBF34(a1, v43, v12);
  v22 = v7;
  DateInterval.start.getter();
  v23 = *(v37 + 8);
  v23(v12, v8);
  v24 = v36;
  sub_1000FBF34(a1, v21, v36);
  v25 = v42;
  DateInterval.end.getter();
  v23(v24, v8);
  v27 = v34;
  v26 = v35;
  Calendar.dateComponents(_:from:to:)();

  v28 = v45;
  v29 = *(v44 + 8);
  v29(v25, v45);
  v29(v22, v28);
  (*(v40 + 8))(v26, v41);
  v30 = DateComponents.day.getter();
  LODWORD(v28) = v31;
  (*(v38 + 8))(v27, v39);
  return (v30 > 0) & ~v28;
}

uint64_t sub_1000FE75C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Date.FormatStyle.Symbol.Weekday();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_1000FE2B8(a1, a2))
  {

    return sub_1000FE0BC(a1, a2);
  }

  else
  {
    static Date.FormatStyle.Symbol.Weekday.wide.getter();
    v9 = sub_1000FB998(v7, a1, a2);
    (*(v5 + 8))(v7, v4);
    return v9;
  }
}

uint64_t sub_1000FE88C(uint64_t a1, uint64_t a2)
{
  if (sub_1000FE2B8(a1, a2))
  {
    return 0;
  }

  else
  {
    return sub_1000FD544(a1, a2);
  }
}

uint64_t sub_1000FE8E0(uint64_t a1)
{
  result = sub_1000FEA80(&qword_10021F150, &type metadata accessor for Time, &protocol conformance descriptor for Time);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1000FE938(uint64_t a1)
{
  v2 = sub_100009F70(&qword_10021F158, &qword_1001B71E0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000FE9A0(uint64_t a1, uint64_t a2)
{
  v4 = sub_100009F70(&qword_10021F168, &qword_1001B71E8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000FEA10(uint64_t a1, uint64_t a2)
{
  v4 = sub_100009F70(&qword_10021F168, &qword_1001B71E8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000FEA80(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1000FEAC8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  *a7 = LocalizedStringKey.init(stringLiteral:)();
  *(a7 + 8) = v14;
  *(a7 + 16) = v15 & 1;
  *(a7 + 24) = v16;
  *(a7 + 32) = LocalizedStringKey.init(stringLiteral:)();
  *(a7 + 40) = v17;
  *(a7 + 48) = v18 & 1;
  *(a7 + 56) = v19;
  v20 = type metadata accessor for MusicViewModel(0, a5, a6, v19);
  v21 = v20[13];
  if (qword_100218450 != -1)
  {
    swift_once();
  }

  *(a7 + v21) = qword_100230608;
  *(a7 + 64) = a1;
  sub_1000B9AEC(a2, a7 + v20[11]);
  *(a7 + v20[12]) = a3;
  *(a7 + v20[14]) = a4;
}

uint64_t sub_1000FEC18@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_100009F70(qword_100218748, &unk_1001AD110);
  __chkstk_darwin(v5 - 8);
  v7 = &v12 - v6;
  v8 = *(a1 + 44);
  if (*(*(v2 + *(a1 + 48)) + 16))
  {
    sub_10000F680(v2 + v8, v7);
    v9 = type metadata accessor for URL();
    v10 = *(v9 - 8);
    if ((*(v10 + 48))(v7, 1, v9) == 1)
    {
      sub_10000F6F0(v7);
      return (*(v10 + 56))(a2, 1, 1, v9);
    }

    else
    {
      URL.appending(queryItems:)();
      (*(v10 + 8))(v7, v9);
      return (*(v10 + 56))(a2, 0, 1, v9);
    }
  }

  else
  {

    return sub_10000F680(v2 + v8, a2);
  }
}

uint64_t sub_1000FEDA8(uint64_t a1)
{
  type metadata accessor for Array();

  swift_getWitnessTable();
  Collection.prefix(_:)();
  type metadata accessor for ArraySlice();
  swift_getWitnessTable();
  return Array.init<A>(_:)();
}

uint64_t sub_1000FEE74(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 52));
  v3 = v2[5];
  v4 = v2[6];
  sub_100028124(v2 + 2, v3);
  return (*(v4 + 16))(v3, v4);
}

uint64_t sub_1000FEED8(uint64_t a1)
{
  sub_10004FF88();
  v3 = *(v1 + *(a1 + 52));
  v4 = v3[5];
  v5 = v3[6];
  sub_100028124(v3 + 2, v4);
  return (*(v5 + 72))(v4, v5);
}

uint64_t sub_1000FEF3C(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 52));
  v3 = v2[5];
  v4 = v2[6];
  sub_100028124(v2 + 2, v3);
  return (*(v4 + 80))(v3, v4);
}

void sub_1000FEFAC(uint64_t a1, uint64_t a2, unsigned __int8 a3, void *a4, uint64_t a5)
{
  sub_100009F70(qword_100218F38, &unk_1001ADA10);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1001AD8A0;
  v13 = a4[2];
  v12 = a4[3];
  *(inited + 56) = &type metadata for AnalyticsString;
  *(inited + 64) = &off_10021CBD0;
  *(inited + 32) = 0;
  *(inited + 40) = v13;
  *(inited + 48) = v12;
  v14 = *(v5 + *(a5 + 56));
  if (v14 == 15)
  {
    LOBYTE(v14) = 0;
  }

  *(inited + 96) = &type metadata for AnalyticsPageName;
  *(inited + 104) = &off_10021CBA8;
  *(inited + 72) = v14;
  *(inited + 136) = &type metadata for AnalyticsModuleName;
  *(inited + 144) = &off_10021CC30;
  *(inited + 112) = 11;
  *(inited + 176) = &type metadata for AnalyticsModuleAction;
  *(inited + 184) = &off_10021CC08;
  *(inited + 152) = a1;
  *(inited + 160) = a2;
  *(inited + 168) = a3;
  if (a4[9])
  {
    v15 = a4[8];
    v16 = a4[9];
  }

  else
  {
    v15 = 0;
    v16 = 0xE000000000000000;
  }

  LOBYTE(aBlock) = 1;
  v23 = v15;
  v24 = v16;

  sub_1000109A4(a1, a2, a3);

  v17 = sub_1001666DC(1, 5, 1, inited);
  v21 = v17;
  sub_1000109BC(&aBlock, v28);
  sub_1000EB0D0(4, v28, &v21, &type metadata for AnalyticsString, &off_10021CBD0);
  sub_100010A18(&aBlock);
  v18 = String._bridgeToObjectiveC()();
  v19 = swift_allocObject();
  v19[2] = 0xD00000000000001ELL;
  v19[3] = 0x80000001001BDDE0;
  v19[4] = v17;
  v26 = sub_100010AAC;
  v27 = v19;
  aBlock = _NSConcreteStackBlock;
  v23 = 1107296256;
  v24 = sub_1000DCA40;
  v25 = &unk_10020F0F8;
  v20 = _Block_copy(&aBlock);

  AnalyticsSendEventLazy();
  _Block_release(v20);
}

void sub_1000FF234(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(v2 + *(a2 + 52));
  v7 = v6[5];
  v8 = v6[6];
  sub_100028124(v6 + 2, v7);
  v9 = (*(v8 + 32))(v7, v8);
  sub_100009F70(qword_100218F38, &unk_1001ADA10);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1001AD8A0;
  v12 = a1[2];
  v11 = a1[3];
  *(inited + 56) = &type metadata for AnalyticsString;
  *(inited + 64) = &off_10021CBD0;
  *(inited + 32) = 0;
  *(inited + 40) = v12;
  *(inited + 48) = v11;
  v13 = *(v3 + *(a2 + 56));
  if (v13 == 15)
  {
    LOBYTE(v13) = 0;
  }

  *(inited + 96) = &type metadata for AnalyticsPageName;
  *(inited + 104) = &off_10021CBA8;
  *(inited + 72) = v13;
  *(inited + 136) = &type metadata for AnalyticsModuleName;
  *(inited + 144) = &off_10021CC30;
  *(inited + 112) = 11;
  v14 = 19;
  if (v9 == 2)
  {
    v14 = 20;
  }

  *(inited + 176) = &type metadata for AnalyticsModuleAction;
  *(inited + 184) = &off_10021CC08;
  *(inited + 152) = v14;
  *(inited + 160) = 0;
  *(inited + 168) = 3;
  if (a1[9])
  {
    v15 = a1[8];
    v16 = a1[9];
  }

  else
  {
    v15 = 0;
    v16 = 0xE000000000000000;
  }

  LOBYTE(aBlock) = 1;
  v23 = v15;
  v24 = v16;

  v17 = sub_1001666DC(1, 5, 1, inited);
  v21 = v17;
  sub_1000109BC(&aBlock, v28);
  sub_1000EB0D0(4, v28, &v21, &type metadata for AnalyticsString, &off_10021CBD0);
  sub_100010A18(&aBlock);
  v18 = String._bridgeToObjectiveC()();
  v19 = swift_allocObject();
  v19[2] = 0xD00000000000001ELL;
  v19[3] = 0x80000001001BDDE0;
  v19[4] = v17;
  v26 = sub_100038F2C;
  v27 = v19;
  aBlock = _NSConcreteStackBlock;
  v23 = 1107296256;
  v24 = sub_1000DCA40;
  v25 = &unk_10020F148;
  v20 = _Block_copy(&aBlock);

  AnalyticsSendEventLazy();
  _Block_release(v20);
}

void sub_1000FF4F0(uint64_t a1)
{
  type metadata accessor for Array();
  if (v1 <= 0x3F)
  {
    sub_1000FF7C4(319, &qword_100218E80, &type metadata accessor for URL, &type metadata accessor for Optional);
    if (v2 <= 0x3F)
    {
      sub_1000FF7C4(319, &qword_10021F218, &type metadata accessor for URLQueryItem, &type metadata accessor for Array);
      if (v3 <= 0x3F)
      {
        type metadata accessor for PlaybackController(319);
        if (v4 <= 0x3F)
        {
          sub_1000DBF28();
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_1000FF644(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_100009F70(qword_100218748, &unk_1001AD110);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 44);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1000FF714(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_100009F70(qword_100218748, &unk_1001AD110);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 44);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_1000FF7C4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1000FF82C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000FF844(uint64_t a1)
{
  v1 = *(a1 + 88);
  if (v1 && *(v1 + 16))
  {

    v2 = sub_1000D8558(3);
    if ((v3 & 1) != 0 && (v4 = *(*(v1 + 56) + v2), , v4))
    {
      v5 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }

    else
    {
      v5 = 1;
    }
  }

  else
  {
    v5 = 1;
  }

  return v5 & 1;
}

uint64_t sub_1000FF934@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getWitnessTable();
  Bindable<A>.init(wrappedValue:)();
  v5 = (a2 + *(type metadata accessor for DetailsModule(0, *(v3 + 80), *(v3 + 88), v4) + 36));
  type metadata accessor for RemoteViewConfiguration();
  sub_1001059A8(&qword_100218568, type metadata accessor for RemoteViewConfiguration, &unk_1001BB390);
  result = EnvironmentObject.init()();
  *v5 = result;
  v5[1] = v7;
  return result;
}

void sub_1000FFA5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for DetailsViewModel(255, *(a1 + 16), *(a1 + 24), a4);
  type metadata accessor for Bindable();
  if (v4 <= 0x3F)
  {
    sub_10000B304(319);
    if (v5 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1000FFB04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for DetailsViewModel(255, *(a3 + 16), *(a3 + 24), a4);
  v7 = type metadata accessor for Bindable();
  v8 = *(v7 - 8);
  if (*(v8 + 84) == a2)
  {
    v9 = *(v8 + 48);

    return v9(a1, a2, v7);
  }

  else
  {
    v11 = *(a1 + *(a3 + 36));
    if (v11 >= 0xFFFFFFFF)
    {
      LODWORD(v11) = -1;
    }

    v12 = v11 - 1;
    if (v12 < 0)
    {
      v12 = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_1000FFBF0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  type metadata accessor for DetailsViewModel(255, *(a4 + 16), *(a4 + 24), a4);
  result = type metadata accessor for Bindable();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 36)) = a2;
  }

  return result;
}

uint64_t sub_1000FFCFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for DetailsViewModel(255, *(a1 + 16), *(a1 + 24), a4);
  type metadata accessor for Bindable();
  Bindable.wrappedValue.getter();
  return v5;
}

uint64_t sub_1000FFD3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for DetailsViewModel(255, *(a1 + 16), *(a1 + 24), a4);
  type metadata accessor for Bindable();

  return Bindable.projectedValue.getter();
}

uint64_t sub_1000FFD88@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v81 = a2;
  v80 = a1;
  v79 = *(a1 - 8);
  __chkstk_darwin(a1);
  v76 = v3;
  v78 = &v60 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v4 + 24);
  v6 = *(v4 + 32);
  type metadata accessor for DetailsViewModel(255, v5, v6, v7);
  v73 = type metadata accessor for Bindable();
  v72 = *(v73 - 8);
  __chkstk_darwin(v73);
  v71 = &v60 - v8;
  v9 = sub_100009F70(&qword_10021F2B0, &qword_1001B72D0);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v60 - v11;
  v13 = sub_100009F70(&qword_10021F2B8, &qword_1001B72D8);
  v60 = *(v13 - 8);
  __chkstk_darwin(v13);
  v15 = &v60 - v14;
  v65 = sub_100009F70(&qword_10021F2C0, &qword_1001B72E0);
  v63 = *(v65 - 8);
  __chkstk_darwin(v65);
  v61 = &v60 - v16;
  v82 = sub_100009F70(&qword_10021F2C8, &qword_1001B72E8);
  v64 = *(v82 - 8);
  __chkstk_darwin(v82);
  v62 = &v60 - v17;
  v69 = sub_100009F70(&qword_10021F2D0, &qword_1001B72F0);
  v67 = *(v69 - 8);
  __chkstk_darwin(v69);
  v83 = &v60 - v18;
  v70 = sub_100009F70(&qword_10021F2D8, &qword_1001B72F8);
  v68 = *(v70 - 8);
  __chkstk_darwin(v70);
  v66 = &v60 - v19;
  v75 = v5;
  v84 = v5;
  v85 = v6;
  v74 = v6;
  v77 = v2;
  v86 = v2;
  sub_100009F70(&qword_10021F2E0, &qword_1001B7300);
  v20 = sub_10000B3DC(&qword_10021F2E8, &qword_1001B7308);
  v21 = sub_100102DC0();
  v89 = v20;
  v90 = v21;
  swift_getOpaqueTypeConformance2();
  List<>.init(content:)();
  sub_100009F70(&qword_100218DC0, &qword_1001AD860);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1001ACB00;
  LOBYTE(v5) = static Edge.Set.top.getter();
  *(inited + 32) = v5;
  v23 = static Edge.Set.bottom.getter();
  *(inited + 33) = v23;
  Edge.Set.init(rawValue:)();
  Edge.Set.init(rawValue:)();
  if (Edge.Set.init(rawValue:)() != v5)
  {
    Edge.Set.init(rawValue:)();
  }

  Edge.Set.init(rawValue:)();
  if (Edge.Set.init(rawValue:)() != v23)
  {
    Edge.Set.init(rawValue:)();
  }

  v24 = sub_10000D1EC(&qword_10021F380, &qword_10021F2B0, &qword_1001B72D0, &protocol conformance descriptor for List<A, B>);
  View.listPadding(_:_:)();
  (*(v10 + 8))(v12, v9);
  Solarium.init()();
  v25 = sub_100009F70(&qword_10021F388, &qword_1001B7358);
  v26 = sub_100009F70(&qword_10021F390, &qword_1001B7360);
  v89 = v9;
  v90 = v24;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v28 = type metadata accessor for InsetListStyle();
  v29 = v13;
  v89 = v13;
  v90 = v28;
  v91 = OpaqueTypeConformance2;
  v92 = &protocol witness table for InsetListStyle;
  v30 = swift_getOpaqueTypeConformance2();
  v31 = type metadata accessor for InsetGroupedListStyle();
  v89 = v13;
  v90 = v31;
  v91 = OpaqueTypeConformance2;
  v92 = &protocol witness table for InsetGroupedListStyle;
  v32 = swift_getOpaqueTypeConformance2();
  v33 = v61;
  View.staticIf<A, B, C>(_:then:else:)();
  (*(v60 + 8))(v15, v29);
  v87 = static Color.clear.getter();
  v89 = v29;
  v90 = &type metadata for Solarium;
  v91 = v25;
  v92 = v26;
  v93 = OpaqueTypeConformance2;
  v94 = &protocol witness table for Solarium;
  v95 = v30;
  v96 = v32;
  v34 = swift_getOpaqueTypeConformance2();
  v35 = v62;
  v36 = v65;
  View.scrollContentBackground<A>(_:)();

  (*(v63 + 8))(v33, v36);
  v89 = v36;
  v90 = &type metadata for Color;
  v91 = v34;
  v92 = &protocol witness table for Color;
  v65 = swift_getOpaqueTypeConformance2();
  v37 = v82;
  View.listHasStackBehavior()();
  (*(v64 + 8))(v35, v37);
  v38 = v71;
  v39 = v80;
  v40 = v77;
  v44 = sub_1000FFD3C(v80, v41, v42, v43);
  __chkstk_darwin(v44);
  v45 = v75;
  v46 = v74;
  swift_getKeyPath();
  v47 = v73;
  Bindable<A>.subscript.getter();

  (*(v72 + 8))(v38, v47);
  v48 = v79;
  v49 = v78;
  (*(v79 + 16))(v78, v40, v39);
  v50 = (*(v48 + 80) + 32) & ~*(v48 + 80);
  v51 = swift_allocObject();
  *(v51 + 16) = v45;
  *(v51 + 24) = v46;
  (*(v48 + 32))(v51 + v50, v49, v39);
  v52 = sub_100009F70(&qword_10021F398, &qword_1001B73A0);
  v87 = v82;
  v88 = v65;
  v58 = swift_getOpaqueTypeConformance2();
  v59 = sub_100103530();
  v53 = v66;
  v54 = v69;
  v55 = v83;
  View.sheet<A>(isPresented:onDismiss:content:)();

  (*(v67 + 8))(v55, v54);
  v89 = v54;
  v90 = v52;
  v91 = v58;
  v92 = v59;
  swift_getOpaqueTypeConformance2();
  v56 = v70;
  View.accessibilityIdentifier(_:)();
  return (*(v68 + 8))(v53, v56);
}

uint64_t sub_100100914@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v27 = a4;
  v7 = type metadata accessor for Prominence();
  v25 = *(v7 - 8);
  v26 = v7;
  __chkstk_darwin(v7);
  v24 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_100009F70(&qword_10021F330, &qword_1001B7328);
  __chkstk_darwin(v23);
  v10 = &v22 - v9;
  v11 = sub_100009F70(&qword_10021F300, &qword_1001B7310);
  __chkstk_darwin(v11);
  v13 = &v22 - v12;
  v14 = sub_100009F70(&qword_10021F2E8, &qword_1001B7308);
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v22 - v16;
  v28 = a2;
  v29 = a3;
  v30 = a1;
  sub_100101BBC(a2, a3, v13);
  sub_100101F0C(a2, a3, v10);
  sub_100009F70(&qword_10021F320, &qword_1001B7320);
  sub_100102E8C();
  sub_10000D1EC(&qword_10021F318, &qword_10021F320, &qword_1001B7320, &protocol conformance descriptor for TupleView<A>);
  sub_100103000();
  Section<>.init(header:footer:content:)();
  v19 = v24;
  v18 = v25;
  v20 = v26;
  (*(v25 + 104))(v24, enum case for Prominence.increased(_:), v26);
  sub_100102DC0();
  View.headerProminence(_:)();
  (*(v18 + 8))(v19, v20);
  return (*(v15 + 8))(v17, v14);
}

uint64_t sub_100100C50@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v90 = a4;
  v88 = sub_100009F70(&qword_10021F3B0, &qword_1001B73B0);
  v86 = *(v88 - 8);
  __chkstk_darwin(v88);
  v85 = &v77 - v7;
  v8 = sub_100009F70(&qword_10021F3B8, &qword_1001B73B8);
  v9 = __chkstk_darwin(v8 - 8);
  v89 = &v77 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v87 = &v77 - v11;
  v77 = a2;
  v78 = a3;
  v13 = type metadata accessor for DetailsModule(0, a2, a3, v12);
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v77 - v15;
  v17 = sub_100009F70(&qword_10021F3C0, &qword_1001B73C0);
  v82 = *(v17 - 8);
  v83 = v17;
  __chkstk_darwin(v17);
  v81 = &v77 - v18;
  v19 = sub_100009F70(&qword_10021F3C8, &qword_1001B73C8);
  v20 = __chkstk_darwin(v19 - 8);
  v84 = &v77 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v92 = &v77 - v22;
  sub_1000FFCFC(v13, v23, v24, v25);
  *&v80 = sub_100183494();
  *&v79 = v26;

  sub_1000FFCFC(v13, v27, v28, v29);
  v30 = sub_1001834AC();
  v32 = v31;

  v91 = a1;
  sub_1000FFCFC(v13, v33, v34, v35);
  v36 = sub_100183654();

  v37 = 0;
  v38 = 0;
  v39 = 0;
  v40 = 0;
  if (v36)
  {
    v38 = 0x80000001001C0E50;
    (*(v14 + 16))(v16, v91, v13);
    v41 = (*(v14 + 80) + 32) & ~*(v14 + 80);
    v40 = swift_allocObject();
    v42 = v78;
    *(v40 + 16) = v77;
    *(v40 + 24) = v42;
    (*(v14 + 32))(v40 + v41, v16, v13);
    v37 = 0xD000000000000013;
    v39 = sub_1001039E0;
  }

  v112 = 0;
  *&v104 = v80;
  *(&v104 + 1) = v79;
  *&v105 = v30;
  *(&v105 + 1) = v32;
  *&v106 = 0xD000000000000014;
  *(&v106 + 1) = 0x80000001001C0E70;
  *&v107 = v37;
  *(&v107 + 1) = v38;
  *&v108 = v39;
  *(&v108 + 1) = v40;
  __asm { FMOV            V0.2D, #16.0 }

  v80 = _Q0;
  v79 = xmmword_1001B7220;
  v109 = _Q0;
  v110 = xmmword_1001B7220;
  v111 = 0;
  Solarium.init()();
  v48 = sub_100009F70(&qword_10021F3D0, &qword_1001B73D0);
  v49 = sub_100009F70(&qword_10021F3D8, &qword_1001B73D8);
  v50 = sub_100103654();
  v51 = sub_100103760();
  v52 = v81;
  View.staticIf<A, B>(_:then:)();
  v102[4] = v108;
  v102[5] = v109;
  v102[6] = v110;
  v103 = v111;
  v102[0] = v104;
  v102[1] = v105;
  v102[2] = v106;
  v102[3] = v107;
  sub_10000D52C(v102, &qword_10021F3D0, &qword_1001B73D0);
  *&v104 = v48;
  *(&v104 + 1) = &type metadata for Solarium;
  *&v105 = v49;
  *(&v105 + 1) = v50;
  *&v106 = &protocol witness table for Solarium;
  *(&v106 + 1) = v51;
  v78 = &opaque type descriptor for <<opaque return type of View.staticIf<A, B>(_:then:)>>;
  swift_getOpaqueTypeConformance2();
  v53 = v83;
  View.accessibilityIdentifier(_:)();
  (*(v82 + 8))(v52, v53);
  sub_1000FFCFC(v13, v54, v55, v56);
  v57 = sub_100183B58();
  v59 = v58;

  sub_1000FFCFC(v13, v60, v61, v62);
  v63 = sub_100183CE8();
  v65 = v64;

  v101 = 0;
  *&v93 = v57;
  *(&v93 + 1) = v59;
  *&v94 = v63;
  *(&v94 + 1) = v65;
  *&v95 = 0xD000000000000012;
  *(&v95 + 1) = 0x80000001001C03E0;
  v96 = 0u;
  v97 = 0u;
  v98 = v79;
  v99 = v80;
  v100 = 0;
  Solarium.init()();
  v66 = sub_100009F70(&qword_10021F418, &qword_1001B73F0);
  *&v104 = v49;
  *(&v104 + 1) = v51;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v67 = v85;
  View.staticIf<A, B>(_:then:)();
  v108 = v97;
  v109 = v98;
  v110 = v99;
  v111 = v100;
  v104 = v93;
  v105 = v94;
  v106 = v95;
  v107 = v96;
  sub_10000D52C(&v104, &qword_10021F3D0, &qword_1001B73D0);
  *&v93 = v48;
  *(&v93 + 1) = &type metadata for Solarium;
  *&v94 = v66;
  *(&v94 + 1) = v50;
  *&v95 = &protocol witness table for Solarium;
  *(&v95 + 1) = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v69 = v87;
  v68 = v88;
  View.accessibilityIdentifier(_:)();
  (*(v86 + 8))(v67, v68);
  v70 = v92;
  v71 = v84;
  sub_10000D58C(v92, v84, &qword_10021F3C8, &qword_1001B73C8);
  v72 = v89;
  sub_10000D58C(v69, v89, &qword_10021F3B8, &qword_1001B73B8);
  v73 = v90;
  sub_10000D58C(v71, v90, &qword_10021F3C8, &qword_1001B73C8);
  v74 = sub_100009F70(&qword_10021F420, &qword_1001B73F8);
  sub_10000D58C(v72, v73 + *(v74 + 48), &qword_10021F3B8, &qword_1001B73B8);
  sub_10000D52C(v69, &qword_10021F3B8, &qword_1001B73B8);
  sub_10000D52C(v70, &qword_10021F3C8, &qword_1001B73C8);
  sub_10000D52C(v72, &qword_10021F3B8, &qword_1001B73B8);
  return sub_10000D52C(v71, &qword_10021F3C8, &qword_1001B73C8);
}

void sub_100101484(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for DetailsModule(0, a2, a3, a4);
  sub_1000FFCFC(v5, v6, v7, v8);
  sub_1001837F0();

  sub_1000FFCFC(v5, v9, v10, v11);
  if (*(a1 + *(v5 + 36)))
  {

    sub_1001837F8(v12);
  }

  else
  {
    type metadata accessor for RemoteViewConfiguration();
    sub_1001059A8(&qword_100218568, type metadata accessor for RemoteViewConfiguration, &unk_1001BB390);
    EnvironmentObject.error()();
    __break(1u);
  }
}

double sub_100101574@<D0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_100009F70(&qword_10021F428, &qword_1001B7400);
  __chkstk_darwin(v4);
  v6 = v24 - v5;
  v7 = a1[5];
  v30 = a1[4];
  v31 = v7;
  v32 = a1[6];
  v33 = *(a1 + 112);
  v8 = a1[1];
  v26 = *a1;
  v27 = v8;
  v9 = a1[3];
  v28 = a1[2];
  v29 = v9;
  if (qword_100218430 != -1)
  {
    swift_once();
  }

  v10 = *(type metadata accessor for UnevenRoundedRectangle() + 20);
  v11 = enum case for RoundedCornerStyle.continuous(_:);
  v12 = type metadata accessor for RoundedCornerStyle();
  (*(*(v12 - 8) + 104))(&v6[v10], v11, v12);
  RectangleCornerRadii.init(topLeft:topRight:bottomRight:bottomLeft:)();
  *v6 = v13;
  *(v6 + 1) = v14;
  *(v6 + 2) = v15;
  *(v6 + 3) = v16;
  v17 = [objc_opt_self() secondarySystemGroupedBackgroundColor];
  *&v6[*(v4 + 52)] = Color.init(_:)();
  *&v6[*(v4 + 56)] = 256;
  sub_10000D1EC(&qword_10021F430, &qword_10021F428, &qword_1001B7400, &protocol conformance descriptor for _ShapeView<A, B>);
  v18 = AnyView.init<A>(_:)();
  LOBYTE(v25) = v33;
  v24[13] = v31;
  v24[14] = v32;
  v24[11] = v29;
  v24[12] = v30;
  v24[8] = v26;
  v24[9] = v27;
  v24[10] = v28;
  v34[4] = v30;
  v34[5] = v31;
  v34[6] = v32;
  v34[0] = v26;
  v34[1] = v27;
  v34[2] = v28;
  v34[3] = v29;
  *&v35 = v25;
  *(&v35 + 1) = v18;
  v39 = v26;
  v40 = v27;
  v41 = v28;
  v42 = v29;
  v43 = v30;
  v44 = v31;
  v45 = v32;
  v46 = v35;
  v36[2] = v28;
  v36[3] = v29;
  v36[0] = v26;
  v36[1] = v27;
  v36[5] = v31;
  v36[6] = v32;
  v36[4] = v30;
  v37 = v25;
  v38 = v18;
  sub_10000D58C(&v26, v24, &qword_10021F3D0, &qword_1001B73D0);
  sub_10000D58C(v34, v24, &qword_10021F400, &qword_1001B73E0);
  sub_10000D52C(v36, &qword_10021F400, &qword_1001B73E0);
  v19 = v44;
  *(a2 + 64) = v43;
  *(a2 + 80) = v19;
  v20 = v46;
  *(a2 + 96) = v45;
  *(a2 + 112) = v20;
  v21 = v40;
  *a2 = v39;
  *(a2 + 16) = v21;
  result = *&v41;
  v23 = v42;
  *(a2 + 32) = v41;
  *(a2 + 48) = v23;
  *(a2 + 128) = 0;
  return result;
}

uint64_t sub_100101858(__int128 *a1)
{
  v2 = sub_100009F70(&qword_10021F428, &qword_1001B7400);
  __chkstk_darwin(v2);
  v4 = &v18 - v3;
  v5 = a1[5];
  v31 = a1[4];
  v32 = v5;
  v33 = a1[6];
  v34 = *(a1 + 112);
  v6 = a1[1];
  v27 = *a1;
  v28 = v6;
  v7 = a1[3];
  v29 = a1[2];
  v30 = v7;
  if (qword_100218430 != -1)
  {
    swift_once();
  }

  v8 = *(type metadata accessor for UnevenRoundedRectangle() + 20);
  v9 = enum case for RoundedCornerStyle.continuous(_:);
  v10 = type metadata accessor for RoundedCornerStyle();
  (*(*(v10 - 8) + 104))(&v4[v8], v9, v10);
  RectangleCornerRadii.init(topLeft:topRight:bottomRight:bottomLeft:)();
  *v4 = v11;
  *(v4 + 1) = v12;
  *(v4 + 2) = v13;
  *(v4 + 3) = v14;
  v15 = [objc_opt_self() secondarySystemGroupedBackgroundColor];
  *&v4[*(v2 + 52)] = Color.init(_:)();
  *&v4[*(v2 + 56)] = 256;
  sub_10000D1EC(&qword_10021F430, &qword_10021F428, &qword_1001B7400, &protocol conformance descriptor for _ShapeView<A, B>);
  v16 = AnyView.init<A>(_:)();
  LOBYTE(v25) = v34;
  v23 = v32;
  v24 = v33;
  v21 = v30;
  v22 = v31;
  v18 = v27;
  v19 = v28;
  v20 = v29;
  v35[4] = v31;
  v35[5] = v32;
  v35[6] = v33;
  v35[0] = v27;
  v35[1] = v28;
  v35[2] = v29;
  v35[3] = v30;
  *&v36 = v25;
  *(&v36 + 1) = v16;
  v40 = v27;
  v41 = v28;
  v42 = v29;
  v43 = v30;
  v44 = v31;
  v45 = v32;
  v46 = v33;
  v47 = v36;
  v37[2] = v29;
  v37[3] = v30;
  v37[0] = v27;
  v37[1] = v28;
  v37[5] = v32;
  v37[6] = v33;
  v37[4] = v31;
  v38 = v25;
  v39 = v16;
  sub_10000D58C(&v27, v48, &qword_10021F3D0, &qword_1001B73D0);
  sub_10000D58C(v35, v48, &qword_10021F400, &qword_1001B73E0);
  sub_10000D52C(v37, &qword_10021F400, &qword_1001B73E0);
  v22 = v44;
  v23 = v45;
  v24 = v46;
  v25 = v47;
  v18 = v40;
  v19 = v41;
  v20 = v42;
  v21 = v43;
  v26 = 0;
  static VerticalEdge.Set.bottom.getter();
  sub_100009F70(&qword_10021F3D8, &qword_1001B73D8);
  sub_100103760();
  View.listRowSeparator(_:edges:)();
  v48[6] = v24;
  v48[7] = v25;
  v49 = v26;
  v48[2] = v20;
  v48[3] = v21;
  v48[4] = v22;
  v48[5] = v23;
  v48[0] = v18;
  v48[1] = v19;
  return sub_10000D52C(v48, &qword_10021F3D8, &qword_1001B73D8);
}

uint64_t sub_100101BBC@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v32 = a3;
  v30 = type metadata accessor for AccessibilityTraits();
  v29 = *(v30 - 8);
  __chkstk_darwin(v30);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_100009F70(&qword_10021F300, &qword_1001B7310);
  __chkstk_darwin(v31);
  v28 = &v27 - v7;
  v9 = type metadata accessor for DetailsModule(0, a1, a2, v8);
  sub_1000FFCFC(v9, v10, v11, v12);

  v13 = Text.init(_:tableName:bundle:comment:)();
  v15 = v14;
  v17 = v16;
  static Font.title3.getter();
  static Font.Weight.semibold.getter();
  Font.weight(_:)();

  v18 = Text.font(_:)();
  v20 = v19;
  v22 = v21;
  v24 = v23;

  sub_10000D60C(v13, v15, v17 & 1);

  v39 = v22 & 1;
  v38 = 0;
  *&v33 = v18;
  *(&v33 + 1) = v20;
  LOBYTE(v34) = v22 & 1;
  *(&v34 + 1) = v24;
  v35 = xmmword_1001B7230;
  v36 = xmmword_1001B7240;
  v37 = 0;
  static AccessibilityTraits.isHeader.getter();
  sub_100009F70(&qword_10021F310, &qword_1001B7318);
  sub_100102F48();
  v25 = v28;
  View.accessibility(addTraits:)();
  (*(v29 + 8))(v6, v30);
  v40[2] = v35;
  v40[3] = v36;
  v41 = v37;
  v40[0] = v33;
  v40[1] = v34;
  sub_10000D52C(v40, &qword_10021F310, &qword_1001B7318);
  ModifiedContent<>.accessibilityIdentifier(_:)();
  return sub_10000D52C(v25, &qword_10021F300, &qword_1001B7310);
}

uint64_t sub_100101F0C@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v97 = a3;
  v5 = type metadata accessor for AccessibilityChildBehavior();
  v93 = *(v5 - 8);
  v94 = v5;
  __chkstk_darwin(v5);
  v92 = &v76[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v85 = type metadata accessor for AttributionModule(0);
  __chkstk_darwin(v85);
  v84 = &v76[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v89 = sub_100009F70(&qword_10021F348, &qword_1001B7338);
  __chkstk_darwin(v89);
  v87 = &v76[-v8];
  v9 = sub_100009F70(&qword_10021F3A8, &qword_1001B73A8);
  v90 = *(v9 - 8);
  v91 = v9;
  __chkstk_darwin(v9);
  v88 = &v76[-v10];
  v11 = sub_100009F70(&qword_10021F340, &qword_1001B7330);
  v95 = *(v11 - 8);
  v96 = v11;
  __chkstk_darwin(v11);
  v86 = &v76[-v12];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v14 = type metadata accessor for Optional();
  v15 = *(v14 - 8);
  v16 = __chkstk_darwin(v14);
  v18 = &v76[-v17];
  v19 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin(v16);
  v21 = &v76[-v20];
  v82 = a2;
  v83 = a1;
  v23 = type metadata accessor for DetailsModule(0, a1, a2, v22);
  v27 = sub_1000FFCFC(v23, v24, v25, v26);
  v28 = sub_100183D90(v27);

  if (v28)
  {
    sub_1000FFCFC(v23, v29, v30, v31);
    sub_100183EAC();

    if ((*(v19 + 48))(v18, 1, AssociatedTypeWitness) != 1)
    {
      v80 = v21;
      v81 = v19;
      v34 = *(v19 + 32);
      v35 = AssociatedTypeWitness;
      v34(v21, v18, AssociatedTypeWitness);
      sub_1000FFCFC(v23, v36, v37, v38);
      v79 = sub_10007AA00();
      v78 = v39;

      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
      v41 = (*(AssociatedConformanceWitness + 16))(AssociatedTypeWitness, AssociatedConformanceWitness);
      v82 = v42;
      v83 = v41;
      v43 = type metadata accessor for AttributionViewModel(0);
      v44 = *(v43 + 32);
      v45 = v84;
      (*(AssociatedConformanceWitness + 24))(AssociatedTypeWitness, AssociatedConformanceWitness);
      v46 = type metadata accessor for URL();
      (*(*(v46 - 8) + 56))(v45 + v44, 0, 1, v46);
      sub_1000FFCFC(v23, v47, v48, v49);
      v77 = sub_10007BA8C(v50);

      v51 = objc_opt_self();
      v52 = [v51 mainBundle];
      v100._object = 0xE000000000000000;
      v53._countAndFlagsBits = 0xD000000000000031;
      v53._object = 0x80000001001BFEF0;
      v54._countAndFlagsBits = 0;
      v54._object = 0xE000000000000000;
      v100._countAndFlagsBits = 0;
      v55 = NSLocalizedString(_:tableName:bundle:value:comment:)(v53, 0, v52, v54, v100);

      *v45 = v55;
      v56 = [v51 mainBundle];
      v101._object = 0xE000000000000000;
      v57._countAndFlagsBits = 0xD00000000000002CLL;
      v57._object = 0x80000001001BFF30;
      v58._countAndFlagsBits = 0;
      v58._object = 0xE000000000000000;
      v101._countAndFlagsBits = 0;
      v59 = NSLocalizedString(_:tableName:bundle:value:comment:)(v57, 0, v56, v58, v101);

      v45[1] = v59;
      v60 = v78;
      v45[2]._countAndFlagsBits = v79;
      v45[2]._object = v60;
      v61 = v82;
      v45[3]._countAndFlagsBits = v83;
      v45[3]._object = v61;
      *(&v45->_countAndFlagsBits + *(v43 + 36)) = v77;
      v62 = (&v45->_countAndFlagsBits + *(v85 + 20));
      type metadata accessor for RemoteViewConfiguration();
      sub_1001059A8(&qword_100218568, type metadata accessor for RemoteViewConfiguration, &unk_1001BB390);
      *v62 = EnvironmentObject.init()();
      v62[1] = v63;
      Solarium.init()();
      sub_100009F70(&qword_10021F358, &qword_1001B7340);
      sub_1001059A8(&qword_10021D3D8, type metadata accessor for AttributionModule, &unk_1001BCF74);
      v64 = sub_10000B3DC(&qword_10021F360, &qword_1001B7348);
      v65 = sub_100103318();
      v98 = v64;
      v99 = v65;
      swift_getOpaqueTypeConformance2();
      v66 = v87;
      View.staticIf<A, B>(_:then:)();
      sub_1000AFCE8(v45);
      v67 = v89;
      v68 = v66 + *(v89 + 36);
      *v68 = xmmword_1001B7250;
      *(v68 + 16) = 0;
      *(v68 + 24) = 0;
      *(v68 + 32) = 0;
      v69 = v92;
      static AccessibilityChildBehavior.contain.getter();
      v70 = sub_10010317C();
      v71 = v88;
      View.accessibilityElement(children:)();
      (*(v93 + 8))(v69, v94);
      sub_10000D52C(v66, &qword_10021F348, &qword_1001B7338);
      v98 = v67;
      v99 = v70;
      swift_getOpaqueTypeConformance2();
      v72 = v86;
      v73 = v91;
      View.accessibilityIdentifier(_:)();
      (*(v90 + 8))(v71, v73);
      (*(v81 + 8))(v80, v35);
      v74 = v97;
      sub_10000F618(v72, v97, &qword_10021F340, &qword_1001B7330);
      v33 = v74;
      v32 = 0;
      return (*(v95 + 56))(v33, v32, 1, v96);
    }

    (*(v15 + 8))(v18, v14);
  }

  v32 = 1;
  v33 = v97;
  return (*(v95 + 56))(v33, v32, 1, v96);
}

uint64_t sub_1001027FC()
{
  v0 = sub_100009F70(&qword_10021F360, &qword_1001B7348);
  __chkstk_darwin(v0);
  v2 = v4 - v1;
  static VerticalEdge.Set.all.getter();
  type metadata accessor for AttributionModule(0);
  sub_1001059A8(&qword_10021D3D8, type metadata accessor for AttributionModule, &unk_1001BCF74);
  View.listRowSeparator(_:edges:)();
  v4[1] = static Color.clear.getter();
  *&v2[*(v0 + 36)] = AnyView.init<A>(_:)();
  static Edge.Set.bottom.getter();
  sub_100103318();
  View.listPadding(_:_:)();
  return sub_10000D52C(v2, &qword_10021F360, &qword_1001B7348);
}

uint64_t sub_1001029C4(uint64_t a1, uint64_t (*a2)(void), void (*a3)(uint64_t), uint64_t a4)
{
  v5 = a2(0);
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = v13 - v8;
  a3(v7);
  sub_100009F70(&qword_10021F2B8, &qword_1001B72D8);
  v10 = sub_10000B3DC(&qword_10021F2B0, &qword_1001B72D0);
  v11 = sub_10000D1EC(&qword_10021F380, &qword_10021F2B0, &qword_1001B72D0, &protocol conformance descriptor for List<A, B>);
  v13[0] = v10;
  v13[1] = v11;
  swift_getOpaqueTypeConformance2();
  View.listStyle<A>(_:)();
  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_100102B54@<X0>(_BYTE *a1@<X8>)
{
  result = sub_100183F20();
  *a1 = result & 1;
  return result;
}

uint64_t sub_100102BAC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v9 = type metadata accessor for DetailsModule(0, a2, a3, a4);
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v13 = &v26 - v12;
  sub_1000FFCFC(v11, v14, v15, v16);
  v27 = sub_1001840D8();

  v20 = sub_1000FFCFC(v9, v17, v18, v19);
  v21 = *(v20 + *(*v20 + 128));

  (*(v10 + 16))(v13, a1, v9);
  v22 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v23 = swift_allocObject();
  *(v23 + 16) = a2;
  *(v23 + 24) = a3;
  (*(v10 + 32))(v23 + v22, v13, v9);
  v24 = static SafeAreaRegions.all.getter();
  result = static Edge.Set.all.getter();
  *a5 = v27;
  *(a5 + 8) = v21;
  *(a5 + 16) = sub_1001035BC;
  *(a5 + 24) = v23;
  *(a5 + 32) = v24;
  *(a5 + 40) = result;
  return result;
}

double sub_100102D60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = type metadata accessor for DetailsModule(0, a3, a4, a4);
  sub_1000FFCFC(v4, v5, v6, v7);
  sub_100184150();

  return result;
}

unint64_t sub_100102DC0()
{
  result = qword_10021F2F0;
  if (!qword_10021F2F0)
  {
    sub_10000B3DC(&qword_10021F2E8, &qword_1001B7308);
    sub_100102E8C();
    sub_10000D1EC(&qword_10021F318, &qword_10021F320, &qword_1001B7320, &protocol conformance descriptor for TupleView<A>);
    sub_100103000();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021F2F0);
  }

  return result;
}

unint64_t sub_100102E8C()
{
  result = qword_10021F2F8;
  if (!qword_10021F2F8)
  {
    sub_10000B3DC(&qword_10021F300, &qword_1001B7310);
    sub_100102F48();
    sub_1001059A8(&qword_100218698, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021F2F8);
  }

  return result;
}

unint64_t sub_100102F48()
{
  result = qword_10021F308;
  if (!qword_10021F308)
  {
    sub_10000B3DC(&qword_10021F310, &qword_1001B7318);
    sub_10000D1EC(&qword_10021A498, &qword_10021A310, &qword_1001AF8F0, &protocol conformance descriptor for _TraitWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021F308);
  }

  return result;
}

unint64_t sub_100103000()
{
  result = qword_10021F328;
  if (!qword_10021F328)
  {
    sub_10000B3DC(&qword_10021F330, &qword_1001B7328);
    sub_100103084();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021F328);
  }

  return result;
}

unint64_t sub_100103084()
{
  result = qword_10021F338;
  if (!qword_10021F338)
  {
    sub_10000B3DC(&qword_10021F340, &qword_1001B7330);
    sub_10000B3DC(&qword_10021F348, &qword_1001B7338);
    sub_10010317C();
    swift_getOpaqueTypeConformance2();
    sub_1001059A8(&qword_100218698, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021F338);
  }

  return result;
}

unint64_t sub_10010317C()
{
  result = qword_10021F350;
  if (!qword_10021F350)
  {
    sub_10000B3DC(&qword_10021F348, &qword_1001B7338);
    type metadata accessor for AttributionModule(255);
    sub_10000B3DC(&qword_10021F358, &qword_1001B7340);
    sub_1001059A8(&qword_10021D3D8, type metadata accessor for AttributionModule, &unk_1001BCF74);
    sub_10000B3DC(&qword_10021F360, &qword_1001B7348);
    sub_100103318();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_10000D1EC(&qword_10021A498, &qword_10021A310, &qword_1001AF8F0, &protocol conformance descriptor for _TraitWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021F350);
  }

  return result;
}

unint64_t sub_100103318()
{
  result = qword_10021F368;
  if (!qword_10021F368)
  {
    sub_10000B3DC(&qword_10021F360, &qword_1001B7348);
    type metadata accessor for AttributionModule(255);
    sub_1001059A8(&qword_10021D3D8, type metadata accessor for AttributionModule, &unk_1001BCF74);
    swift_getOpaqueTypeConformance2();
    sub_10000D1EC(&qword_10021F370, &qword_10021F378, &qword_1001B7350, &protocol conformance descriptor for _TraitWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021F368);
  }

  return result;
}

uint64_t sub_100103430@<X0>(_BYTE *a1@<X8>)
{
  result = sub_100183F20();
  *a1 = result & 1;
  return result;
}

__n128 sub_100103494(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_1001034A4@<X0>(uint64_t a1@<X3>, uint64_t a2@<X8>)
{
  v4 = *(v2 + 16);
  v5 = *(v2 + 24);
  v7 = *(type metadata accessor for DetailsModule(0, v4, v5, a1) - 8);
  v8 = v2 + ((*(v7 + 80) + 32) & ~*(v7 + 80));

  return sub_100102BAC(v8, v4, v5, v6, a2);
}

unint64_t sub_100103530()
{
  result = qword_10021F3A0;
  if (!qword_10021F3A0)
  {
    sub_10000B3DC(&qword_10021F398, &qword_1001B73A0);
    sub_1000F9DBC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021F3A0);
  }

  return result;
}

double sub_1001035BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(v4 + 16);
  v7 = *(v4 + 24);
  v8 = *(type metadata accessor for DetailsModule(0, v6, v7, a4) - 8);
  v9 = v4 + ((*(v8 + 80) + 32) & ~*(v8 + 80));

  return sub_100102D60(a1, v9, v6, v7);
}

unint64_t sub_100103654()
{
  result = qword_10021F3E0;
  if (!qword_10021F3E0)
  {
    sub_10000B3DC(&qword_10021F3D0, &qword_1001B73D0);
    sub_10010370C();
    sub_10000D1EC(&qword_10021A498, &qword_10021A310, &qword_1001AF8F0, &protocol conformance descriptor for _TraitWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021F3E0);
  }

  return result;
}

unint64_t sub_10010370C()
{
  result = qword_10021F3E8;
  if (!qword_10021F3E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021F3E8);
  }

  return result;
}

unint64_t sub_100103760()
{
  result = qword_10021F3F0;
  if (!qword_10021F3F0)
  {
    sub_10000B3DC(&qword_10021F3D8, &qword_1001B73D8);
    sub_100103818();
    sub_10000D1EC(&qword_10021F408, &qword_10021F410, &qword_1001B73E8, &protocol conformance descriptor for _TraitWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021F3F0);
  }

  return result;
}

unint64_t sub_100103818()
{
  result = qword_10021F3F8;
  if (!qword_10021F3F8)
  {
    sub_10000B3DC(&qword_10021F400, &qword_1001B73E0);
    sub_100103654();
    sub_10000D1EC(&qword_10021F370, &qword_10021F378, &qword_1001B7350, &protocol conformance descriptor for _TraitWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021F3F8);
  }

  return result;
}

uint64_t sub_1001038D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v6 = *(v4 + 24);
  v7 = *(type metadata accessor for DetailsModule(0, v5, v6, a4) - 8);
  v8 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  type metadata accessor for DetailsViewModel(255, v5, v6, v9);
  v10 = type metadata accessor for Bindable();
  (*(*(v10 - 8) + 8))(v4 + v8, v10);

  return swift_deallocObject();
}

void sub_1001039E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v6 = *(v4 + 24);
  v8 = *(type metadata accessor for DetailsModule(0, v5, v6, a4) - 8);
  v9 = v4 + ((*(v8 + 80) + 32) & ~*(v8 + 80));

  sub_100101484(v9, v5, v6, v7);
}

uint64_t sub_100103A64()
{
  result = Color.init(_:bundle:)();
  qword_10021F220 = result;
  return result;
}

uint64_t sub_100103AA0()
{
  result = Color.init(_:bundle:)();
  qword_10021F228 = result;
  return result;
}

uint64_t sub_100103ADC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v87 = a2;
  v76 = type metadata accessor for PlainButtonStyle();
  v74 = *(v76 - 8);
  __chkstk_darwin(v76);
  v70 = &v66 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = sub_100009F70(&qword_10021F460, &qword_1001B74E0);
  v69 = *(v72 - 8);
  __chkstk_darwin(v72);
  v67 = &v66 - v4;
  v75 = sub_100009F70(&qword_10021F468, &qword_1001B74E8);
  v73 = *(v75 - 8);
  __chkstk_darwin(v75);
  v71 = &v66 - v5;
  v84 = sub_100009F70(&qword_10021F470, &qword_1001B74F0);
  v83 = *(v84 - 8);
  __chkstk_darwin(v84);
  v68 = &v66 - v6;
  v7 = sub_100009F70(&qword_10021F478, &qword_1001B74F8);
  v8 = __chkstk_darwin(v7 - 8);
  v86 = &v66 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v85 = &v66 - v10;
  v80 = type metadata accessor for AccessibilityChildBehavior();
  v79 = *(v80 - 8);
  __chkstk_darwin(v80);
  v12 = &v66 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_100009F70(&qword_10021F480, &qword_1001B7500);
  __chkstk_darwin(v13);
  v15 = &v66 - v14;
  v78 = sub_100009F70(&qword_10021F488, &qword_1001B7508);
  v77 = *(v78 - 8);
  __chkstk_darwin(v78);
  v17 = &v66 - v16;
  v18 = sub_100009F70(&qword_10021F490, &qword_1001B7510);
  v19 = __chkstk_darwin(v18 - 8);
  v82 = &v66 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v89 = &v66 - v21;
  v22 = sub_100009F70(&qword_10021B4D8, &qword_1001B1000);
  __chkstk_darwin(v22 - 8);
  v24 = &v66 - v23;
  v25 = sub_100009F70(&qword_10021F498, &qword_1001B7518);
  v26 = __chkstk_darwin(v25 - 8);
  v81 = &v66 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v88 = &v66 - v28;

  Image.init(systemName:)();
  static SymbolRenderingMode.palette.getter();
  v29 = type metadata accessor for SymbolRenderingMode();
  (*(*(v29 - 8) + 56))(v24, 0, 1, v29);
  v30 = Image.symbolRenderingMode(_:)();

  sub_10000D52C(v24, &qword_10021B4D8, &qword_1001B1000);
  v31 = static Color.white.getter();
  sub_100009F70(&qword_1002199C0, &qword_1001B2480);
  v32 = swift_allocObject();
  *(v32 + 16) = xmmword_1001ACB00;
  if (qword_100218400 != -1)
  {
    swift_once();
  }

  *(v32 + 32) = qword_10021F220;
  v33 = qword_100218408;

  if (v33 != -1)
  {
    swift_once();
  }

  *(v32 + 40) = qword_10021F228;

  static UnitPoint.top.getter();
  static UnitPoint.bottom.getter();
  Gradient.init(colors:)();
  LinearGradient.init(gradient:startPoint:endPoint:)();
  v34 = v93;
  v35 = static Font.title.getter();
  KeyPath = swift_getKeyPath();
  *&v91 = v30;
  *(&v91 + 1) = v31;
  *v92 = v34;
  *&v92[24] = v95;
  *&v92[8] = v94;
  *&v92[40] = KeyPath;
  *&v92[48] = v35;
  v92[56] = 1;
  sub_100009F70(&qword_10021F4A0, &qword_1001B7550);
  sub_100105680();
  View.accessibilityHidden(_:)();
  v96[2] = *&v92[16];
  *v97 = *&v92[32];
  *&v97[9] = *&v92[41];
  v96[0] = v91;
  v96[1] = *v92;
  sub_10000D52C(v96, &qword_10021F4A0, &qword_1001B7550);
  *v15 = static HorizontalAlignment.leading.getter();
  *(v15 + 1) = 0;
  v15[16] = 0;
  v37 = sub_100009F70(&qword_10021F4E0, &qword_1001B7570);
  sub_100104900(a1, &v15[*(v37 + 44)]);
  static AccessibilityChildBehavior.combine.getter();
  v38 = sub_10000D1EC(&qword_10021F4E8, &qword_10021F480, &qword_1001B7500, &protocol conformance descriptor for VStack<A>);
  View.accessibilityElement(children:)();
  (*(v79 + 8))(v12, v80);
  sub_10000D52C(v15, &qword_10021F480, &qword_1001B7500);
  *&v91 = v13;
  *(&v91 + 1) = v38;
  swift_getOpaqueTypeConformance2();
  v39 = v78;
  View.accessibilityIdentifier(_:)();
  (*(v77 + 8))(v17, v39);
  v40 = *(a1 + 64);
  v91 = *(a1 + 48);
  *v92 = v40;
  v41 = *(&v91 + 1);
  if (*(&v91 + 1))
  {
    v42 = *&v92[8];
    v43 = *v92;
    v44 = v91;
    v45 = swift_allocObject();
    v45[2] = v44;
    v45[3] = v41;
    v45[4] = v43;
    v45[5] = v42;
    __chkstk_darwin(v45);
    *(&v66 - 4) = v44;
    *(&v66 - 3) = v41;
    *(&v66 - 2) = v43;
    *(&v66 - 1) = v42;
    sub_10000D58C(&v91, v90, &qword_10021F4F8, &qword_1001B7580);

    sub_100009F70(&qword_10021F500, &qword_1001B7588);
    sub_1001058F0();
    v46 = v67;
    Button.init(action:label:)();
    v47 = v70;
    PlainButtonStyle.init()();
    v48 = sub_10000D1EC(&qword_10021F510, &qword_10021F460, &qword_1001B74E0, &protocol conformance descriptor for Button<A>);
    v49 = sub_1001059A8(&qword_100218810, &type metadata accessor for PlainButtonStyle, &protocol conformance descriptor for PlainButtonStyle);
    v50 = v71;
    v51 = v72;
    v52 = v76;
    View.buttonStyle<A>(_:)();
    (*(v74 + 8))(v47, v52);
    (*(v69 + 8))(v46, v51);
    v90[0] = v51;
    v90[1] = v52;
    v90[2] = v48;
    v90[3] = v49;
    swift_getOpaqueTypeConformance2();
    v53 = v68;
    v54 = v75;
    View.accessibilityIdentifier(_:)();

    (*(v73 + 8))(v50, v54);
    v55 = v85;
    sub_10000F618(v53, v85, &qword_10021F470, &qword_1001B74F0);
    v56 = 0;
  }

  else
  {
    v56 = 1;
    v55 = v85;
  }

  (*(v83 + 56))(v55, v56, 1, v84);
  v57 = v88;
  v58 = v81;
  sub_10000D58C(v88, v81, &qword_10021F498, &qword_1001B7518);
  v59 = v89;
  v60 = v82;
  sub_10000D58C(v89, v82, &qword_10021F490, &qword_1001B7510);
  v61 = v86;
  sub_10000D58C(v55, v86, &qword_10021F478, &qword_1001B74F8);
  v62 = v87;
  sub_10000D58C(v58, v87, &qword_10021F498, &qword_1001B7518);
  v63 = sub_100009F70(&qword_10021F4F0, &qword_1001B7578);
  sub_10000D58C(v60, v62 + v63[12], &qword_10021F490, &qword_1001B7510);
  v64 = v62 + v63[16];
  *v64 = 0;
  *(v64 + 8) = 1;
  sub_10000D58C(v61, v62 + v63[20], &qword_10021F478, &qword_1001B74F8);
  sub_10000D52C(v55, &qword_10021F478, &qword_1001B74F8);
  sub_10000D52C(v59, &qword_10021F490, &qword_1001B7510);
  sub_10000D52C(v57, &qword_10021F498, &qword_1001B7518);
  sub_10000D52C(v61, &qword_10021F478, &qword_1001B74F8);
  sub_10000D52C(v60, &qword_10021F490, &qword_1001B7510);
  return sub_10000D52C(v58, &qword_10021F498, &qword_1001B7518);
}

uint64_t sub_100104900@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v85 = a2;
  v83 = sub_100009F70(&qword_10021DB10, &qword_1001B4D90);
  v81 = *(v83 - 8);
  __chkstk_darwin(v83);
  v72 = &v71 - v3;
  v4 = sub_100009F70(&qword_10021DB08, &qword_1001B4D88);
  v5 = __chkstk_darwin(v4 - 8);
  v84 = &v71 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v82 = &v71 - v7;
  v78 = sub_100009F70(&qword_10021F518, &qword_1001B7590);
  v79 = *(v78 - 8);
  __chkstk_darwin(v78);
  v74 = &v71 - v8;
  v9 = sub_100009F70(&qword_10021F520, &qword_1001B7598);
  __chkstk_darwin(v9 - 8);
  v75 = &v71 - v10;
  v77 = sub_100009F70(&qword_10021F528, &qword_1001B75A0) - 8;
  v11 = __chkstk_darwin(v77);
  v80 = &v71 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v76 = &v71 - v14;
  __chkstk_darwin(v13);
  v16 = &v71 - v15;
  v73 = a1;
  v17 = a1[1];
  *&v86 = *a1;
  *(&v86 + 1) = v17;
  v18 = sub_100027068();

  v71 = v18;
  v19 = Text.init<A>(_:)();
  v21 = v20;
  v23 = v22;
  static Font.body.getter();
  v24 = Text.font(_:)();
  v26 = v25;
  v28 = v27;
  v30 = v29;

  sub_10000D60C(v19, v21, v23 & 1);

  *&v86 = v24;
  *(&v86 + 1) = v26;
  v28 &= 1u;
  v87 = v28;
  v88 = v30;
  v31 = v74;
  View.avoidsOrphans(_:)();
  v32 = v24;
  v33 = v16;
  sub_10000D60C(v32, v26, v28);

  *&v86 = &type metadata for Text;
  *(&v86 + 1) = &protocol witness table for Text;
  v34 = 1;
  swift_getOpaqueTypeConformance2();
  v35 = v75;
  v36 = v78;
  View.accessibilityIdentifier(_:)();
  (*(v79 + 8))(v31, v36);
  LOBYTE(v36) = static Edge.Set.vertical.getter();
  v89 = *(v73 + 1);
  sub_10000D58C(&v89, &v86, &qword_100219F00, &qword_1001AF350);
  EdgeInsets.init(_all:)();
  v38 = v37;
  v40 = v39;
  v42 = v41;
  v44 = v43;
  v45 = v76;
  sub_10000F618(v35, v76, &qword_10021F520, &qword_1001B7598);
  v46 = v45 + *(v77 + 44);
  *v46 = v36;
  *(v46 + 8) = v38;
  *(v46 + 16) = v40;
  *(v46 + 24) = v42;
  *(v46 + 32) = v44;
  *(v46 + 40) = 0;
  sub_10000F618(v45, v16, &qword_10021F528, &qword_1001B75A0);
  if (*(&v89 + 1))
  {
    v86 = v89;
    v47 = Text.init<A>(_:)();
    v49 = v48;
    v51 = v50;
    static Font.subheadline.getter();
    v52 = Text.font(_:)();
    v54 = v53;
    v56 = v55;

    sub_10000D60C(v47, v49, v51 & 1);

    if (qword_100218338 != -1)
    {
      swift_once();
    }

    *&v86 = qword_100230570;

    v57 = Text.foregroundStyle<A>(_:)();
    v59 = v58;
    v61 = v60;
    v63 = v62;
    sub_10000D60C(v52, v54, v56 & 1);

    *&v86 = v57;
    *(&v86 + 1) = v59;
    v87 = v61 & 1;
    v88 = v63;
    v64 = v72;
    View.accessibilityIdentifier(_:)();
    sub_10000D60C(v57, v59, v61 & 1);

    v65 = v82;
    sub_1001059F0(v64, v82);
    v34 = 0;
  }

  else
  {
    v65 = v82;
  }

  (*(v81 + 56))(v65, v34, 1, v83);
  v66 = v80;
  sub_10000D58C(v33, v80, &qword_10021F528, &qword_1001B75A0);
  v67 = v84;
  sub_10000D58C(v65, v84, &qword_10021DB08, &qword_1001B4D88);
  v68 = v85;
  sub_10000D58C(v66, v85, &qword_10021F528, &qword_1001B75A0);
  v69 = sub_100009F70(&qword_10021F530, &qword_1001B75A8);
  sub_10000D58C(v67, v68 + *(v69 + 48), &qword_10021DB08, &qword_1001B4D88);
  sub_10000D52C(v65, &qword_10021DB08, &qword_1001B4D88);
  sub_10000D52C(v33, &qword_10021F528, &qword_1001B75A0);
  sub_10000D52C(v67, &qword_10021DB08, &qword_1001B4D88);
  return sub_10000D52C(v66, &qword_10021F528, &qword_1001B75A0);
}

uint64_t sub_1001050B0@<X0>(uint64_t *a3@<X8>)
{

  v4 = Image.init(systemName:)();
  static Font.body.getter();
  static Font.Weight.semibold.getter();
  v5 = Font.weight(_:)();

  KeyPath = swift_getKeyPath();
  result = static Color.blue.getter();
  *a3 = v4;
  a3[1] = KeyPath;
  a3[2] = v5;
  a3[3] = result;
  return result;
}

uint64_t sub_100105134()
{
  v1 = type metadata accessor for AccessibilityChildBehavior();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100009F70(&qword_10021F448, &qword_1001B74D0);
  __chkstk_darwin(v5);
  v7 = v12 - v6;
  v8 = v0[3];
  v12[2] = v0[2];
  v12[3] = v8;
  v12[4] = v0[4];
  v9 = v0[1];
  v12[0] = *v0;
  v12[1] = v9;
  *v7 = static VerticalAlignment.center.getter();
  *(v7 + 1) = 0x4030000000000000;
  v7[16] = 0;
  v10 = sub_100009F70(&qword_10021F450, &qword_1001B74D8);
  sub_100103ADC(v12, &v7[*(v10 + 44)]);
  static AccessibilityChildBehavior.combine.getter();
  sub_10000D1EC(&qword_10021F458, &qword_10021F448, &qword_1001B74D0, &protocol conformance descriptor for HStack<A>);
  View.accessibilityElement(children:)();
  (*(v2 + 8))(v4, v1);
  return sub_10000D52C(v7, &qword_10021F448, &qword_1001B74D0);
}

uint64_t sub_10010530C(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

unint64_t sub_100105338()
{
  result = qword_10021F438;
  if (!qword_10021F438)
  {
    sub_10000B3DC(&qword_10021F440, &qword_1001B7478);
    sub_10000B3DC(&qword_10021F2D0, &qword_1001B72F0);
    sub_10000B3DC(&qword_10021F398, &qword_1001B73A0);
    sub_10000B3DC(&qword_10021F2C8, &qword_1001B72E8);
    sub_10000B3DC(&qword_10021F2C0, &qword_1001B72E0);
    sub_10000B3DC(&qword_10021F2B8, &qword_1001B72D8);
    sub_10000B3DC(&qword_10021F388, &qword_1001B7358);
    sub_10000B3DC(&qword_10021F390, &qword_1001B7360);
    sub_10000B3DC(&qword_10021F2B0, &qword_1001B72D0);
    sub_10000D1EC(&qword_10021F380, &qword_10021F2B0, &qword_1001B72D0, &protocol conformance descriptor for List<A, B>);
    swift_getOpaqueTypeConformance2();
    type metadata accessor for InsetListStyle();
    swift_getOpaqueTypeConformance2();
    type metadata accessor for InsetGroupedListStyle();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_100103530();
    swift_getOpaqueTypeConformance2();
    sub_1001059A8(&qword_100218698, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021F438);
  }

  return result;
}

unint64_t sub_100105680()
{
  result = qword_10021F4A8;
  if (!qword_10021F4A8)
  {
    sub_10000B3DC(&qword_10021F4A0, &qword_1001B7550);
    sub_10010570C();
    sub_10002D070();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021F4A8);
  }

  return result;
}

unint64_t sub_10010570C()
{
  result = qword_10021F4B0;
  if (!qword_10021F4B0)
  {
    sub_10000B3DC(&qword_10021F4B8, &qword_1001B7558);
    sub_1001057C4();
    sub_10000D1EC(&qword_1002188D0, &qword_1002188D8, &unk_1001ADC10, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021F4B0);
  }

  return result;
}

unint64_t sub_1001057C4()
{
  result = qword_10021F4C0;
  if (!qword_10021F4C0)
  {
    sub_10000B3DC(&qword_10021F4C8, &qword_1001B7560);
    sub_10000D1EC(&qword_10021F4D0, &qword_10021F4D8, &qword_1001B7568, &protocol conformance descriptor for _ForegroundStyleModifier2<A, B>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021F4C0);
  }

  return result;
}

uint64_t sub_10010587C()
{

  return swift_deallocObject();
}

unint64_t sub_1001058F0()
{
  result = qword_10021F508;
  if (!qword_10021F508)
  {
    sub_10000B3DC(&qword_10021F500, &qword_1001B7588);
    sub_10009E2E0();
    sub_10000D1EC(&qword_1002188E0, &qword_1002188E8, &unk_1001AD240, &protocol conformance descriptor for _ForegroundStyleModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021F508);
  }

  return result;
}

uint64_t sub_1001059A8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1001059F0(uint64_t a1, uint64_t a2)
{
  v4 = sub_100009F70(&qword_10021DB10, &qword_1001B4D90);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100105A70()
{
  sub_10000B3DC(&qword_10021F448, &qword_1001B74D0);
  sub_10000D1EC(&qword_10021F458, &qword_10021F448, &qword_1001B74D0, &protocol conformance descriptor for HStack<A>);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_100105B10(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Locale();
  result = __chkstk_darwin(v4);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a1 + 40);
  v10 = *(v9 + 16);
  if (!v10)
  {
    return 0;
  }

  v29 = v8;
  v30 = v6;
  v31 = result;
  v28 = a2;
  v11 = 0;
  for (i = (v9 + 48); ; i += 3)
  {
    if (v11 >= *(v9 + 16))
    {
      __break(1u);
      return result;
    }

    v13 = *(i - 1);
    v14 = *i;
    v15 = *(i - 16);
    if (v15 != 1 && v15 != 2)
    {
      break;
    }

    v16 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v16)
    {
      goto LABEL_10;
    }

    ++v11;

    if (v10 == v11)
    {
      return 0;
    }
  }

LABEL_10:
  v18 = v29;
  static Locale.current.getter();
  v19._countAndFlagsBits = v13;
  v19._object = v14;
  object = Locale.localizedString(forRegionCode:)(v19).value._object;

  (*(v30 + 8))(v18, v31);
  if (!object)
  {
    return 0;
  }

  v21 = *(v28 + 16);
  if (!v21)
  {
LABEL_21:

    return 0;
  }

  v22 = (v28 + 40);
  while (1)
  {
    v23 = *v22;
    if (*v22 >= 2)
    {
      break;
    }

LABEL_13:
    v22 += 2;
    if (!--v21)
    {
      goto LABEL_21;
    }
  }

  v17 = *(v22 - 1);
  v24 = String.lowercased()();
  v25 = String.lowercased()();
  if (v24._countAndFlagsBits == v25._countAndFlagsBits && v24._object == v25._object)
  {

    return v17;
  }

  v27 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v27 & 1) == 0)
  {
    sub_10008324C(v17, v23);
    goto LABEL_13;
  }

  return v17;
}

uint64_t sub_100105E0C(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for Date();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_100105ECC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for Date();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for CompactDatePickerConfiguration(uint64_t a1)
{
  result = qword_10021F590;
  if (!qword_10021F590)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100105FBC(uint64_t a1)
{
  result = type metadata accessor for Date();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_100106088@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = sub_100009F70(&qword_10021F168, &qword_1001B71E8);
  v7 = __chkstk_darwin(v6);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v25 - v10;
  v12 = type metadata accessor for Date();
  v13 = *(v12 - 8);
  v14 = __chkstk_darwin(v12);
  v16 = &v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v18 = &v25 - v17;
  sub_10010631C(a1, &v25 - v17);
  sub_10010631C(a2, v16);
  sub_1001070F4(&qword_10021F170, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  result = dispatch thunk of static Comparable.<= infix(_:_:)();
  if (result)
  {
    v20 = *(v13 + 32);
    v20(v11, v18, v12);
    v20(&v11[*(v6 + 48)], v16, v12);
    sub_1000FE9A0(v11, v9);
    v21 = *(v6 + 48);
    v20(a3, v9, v12);
    v22 = *(v13 + 8);
    v22(&v9[v21], v12);
    sub_1000FEA10(v11, v9);
    v23 = *(v6 + 48);
    v24 = sub_100009F70(&qword_10021F5E0, &qword_1001B76F0);
    v20(&a3[*(v24 + 36)], &v9[v23], v12);
    return (v22)(v9, v12);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10010631C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v30 = a1;
  v33 = a2;
  v2 = type metadata accessor for DateComponents();
  v31 = *(v2 - 8);
  v32 = v2;
  __chkstk_darwin(v2);
  v28 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = type metadata accessor for Calendar();
  v27 = *(v29 - 8);
  v4 = __chkstk_darwin(v29);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v26 - v7;
  v9 = sub_100009F70(&qword_10021F5E8, &qword_1001B76F8);
  __chkstk_darwin(v9 - 8);
  v11 = &v26 - v10;
  static Calendar.current.getter();
  static Calendar.current.getter();
  sub_100009F70(qword_10021F190, &qword_1001B7700);
  v12 = type metadata accessor for Calendar.Component();
  v13 = *(v12 - 8);
  v14 = *(v13 + 72);
  v15 = (*(v13 + 80) + 32) & ~*(v13 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_1001B7650;
  v17 = v16 + v15;
  v18 = *(v13 + 104);
  v18(v17, enum case for Calendar.Component.year(_:), v12);
  v18(v17 + v14, enum case for Calendar.Component.month(_:), v12);
  v18(v17 + 2 * v14, enum case for Calendar.Component.day(_:), v12);
  v18(v17 + 3 * v14, enum case for Calendar.Component.hour(_:), v12);
  v18(v17 + 4 * v14, enum case for Calendar.Component.minute(_:), v12);
  v18(v17 + 5 * v14, enum case for Calendar.Component.second(_:), v12);
  sub_100106D6C(v16);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v19 = v28;
  Calendar.dateComponents(_:from:)();

  v20 = *(v27 + 8);
  v21 = v29;
  v20(v6, v29);
  Calendar.date(from:)();
  (*(v31 + 8))(v19, v32);
  v20(v8, v21);
  v22 = type metadata accessor for Date();
  v23 = *(v22 - 8);
  v24 = *(v23 + 48);
  if (v24(v11, 1, v22) != 1)
  {
    return (*(v23 + 32))(v33, v11, v22);
  }

  Date.init()();
  result = (v24)(v11, 1, v22);
  if (result != 1)
  {
    return sub_10010708C(v11);
  }

  return result;
}

uint64_t sub_1001067A8(void *a1, void *a2, uint64_t a3)
{
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)()) && (static Date.== infix(_:_:)())
  {
    v7 = *(a1 + *(a3 + 24)) ^ *(a2 + *(a3 + 24)) ^ 1;
  }

  else
  {
    v7 = 0;
  }

  return v7 & 1;
}

Swift::Int sub_100106830(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  type metadata accessor for Date();
  sub_1001070F4(&qword_10021F5D8, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  dispatch thunk of Hashable.hash(into:)();
  Hasher._combine(_:)(*(v1 + *(a1 + 24)));
  return Hasher._finalize()();
}

void sub_1001068EC(uint64_t a1, uint64_t a2)
{
  String.hash(into:)();
  type metadata accessor for Date();
  sub_1001070F4(&qword_10021F5D8, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  dispatch thunk of Hashable.hash(into:)();
  Hasher._combine(_:)(*(v2 + *(a2 + 24)));
}

Swift::Int sub_100106994(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  type metadata accessor for Date();
  sub_1001070F4(&qword_10021F5D8, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  dispatch thunk of Hashable.hash(into:)();
  Hasher._combine(_:)(*(v2 + *(a2 + 24)));
  return Hasher._finalize()();
}

void *sub_100106A4C(uint64_t a1)
{
  v2 = type metadata accessor for PresentationDetent();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v37 = &v30 - v7;
  v8 = *(a1 + 16);
  if (v8)
  {
    sub_100009F70(&qword_10021F608, &unk_1001B7710);
    v9 = static _SetStorage.allocate(capacity:)();
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
      sub_1001070F4(&qword_10021F610, &type metadata accessor for PresentationDetent, &protocol conformance descriptor for PresentationDetent);
      v16 = dispatch thunk of Hashable._rawHashValue(seed:)();
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
          sub_1001070F4(&qword_10021F618, &type metadata accessor for PresentationDetent, &protocol conformance descriptor for PresentationDetent);
          v23 = dispatch thunk of static Equatable.== infix(_:_:)();
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

void *sub_100106D6C(uint64_t a1)
{
  v2 = type metadata accessor for Calendar.Component();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v37 = &v30 - v7;
  v8 = *(a1 + 16);
  if (v8)
  {
    sub_100009F70(&qword_10021F5F0, &qword_1001B7708);
    v9 = static _SetStorage.allocate(capacity:)();
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
      sub_1001070F4(&qword_10021F5F8, &type metadata accessor for Calendar.Component, &protocol conformance descriptor for Calendar.Component);
      v16 = dispatch thunk of Hashable._rawHashValue(seed:)();
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
          sub_1001070F4(&qword_10021F600, &type metadata accessor for Calendar.Component, &protocol conformance descriptor for Calendar.Component);
          v23 = dispatch thunk of static Equatable.== infix(_:_:)();
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

uint64_t sub_10010708C(uint64_t a1)
{
  v2 = sub_100009F70(&qword_10021F5E8, &qword_1001B76F8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1001070F4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1001071A0(uint64_t a1)
{
  *(a1 + 8) = sub_100107224(&qword_10021F658, &type metadata accessor for PromotionalContent.WatchFace, &protocol conformance descriptor for PromotionalContent.WatchFace);
  result = sub_100107224(&unk_10021F660, &type metadata accessor for PromotionalContent.WatchFace, &protocol conformance descriptor for PromotionalContent.WatchFace);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_100107224(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10010726C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for FeaturedVideoPlayer(319, *(a1 + 80), *(a1 + 88), a4);
  if (v5 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_10010730C()
{
  type metadata accessor for Optional();
  type metadata accessor for Binding();
  return Binding.wrappedValue.getter();
}

uint64_t sub_10010735C(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *(v2 - 8);
  __chkstk_darwin(a1);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Optional();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v20 - v8;
  sub_10010730C();
  if ((*(v3 + 48))(v9, 1, v2))
  {
    (*(v7 + 8))(v9, v6);
    (*(*(a1 + 24) + 40))(v2);
    v10 = 0;
  }

  else
  {
    (*(v3 + 16))(v5, v9, v2);
    (*(v7 + 8))(v9, v6);
    v11 = *(a1 + 24);
    v12 = *(v11 + 40);
    v13 = v12(v2, v11);
    v15 = v14;
    (*(v3 + 8))(v5, v2);
    v17 = v12(v2, v11);
    if (v15)
    {
      if (v13 == v17 && v15 == v16)
      {

        v10 = 1;
      }

      else
      {
        v10 = _stringCompareWithSmolCheck(_:_:expecting:)();
      }
    }

    else
    {
      v10 = 0;
    }
  }

  return v10 & 1;
}

id sub_1001075F4(uint64_t a1, uint64_t a2)
{
  v2 = [objc_allocWithZone(AVPlayerViewController) init];
  v3 = objc_allocWithZone(AVPlayer);
  URL._bridgeToObjectiveC()(v4);
  v6 = v5;
  v7 = [v3 initWithURL:v5];

  [v2 setModalPresentationStyle:0];
  [v2 setExitsFullScreenWhenPlaybackEnds:1];
  [v2 setShowsPlaybackControls:1];
  [v2 setVideoGravity:AVLayerVideoGravityResizeAspectFill];
  [v2 setPlayer:v7];
  v8 = [v2 player];
  if (v8)
  {
    v9 = v8;
    swift_getWitnessTable();
    type metadata accessor for UIViewControllerRepresentableContext();
    UIViewControllerRepresentableContext.coordinator.getter();
    v10 = String._bridgeToObjectiveC()();
    [v9 addObserver:v12 forKeyPath:v10 options:1 context:0];
  }

  swift_getWitnessTable();
  type metadata accessor for UIViewControllerRepresentableContext();
  UIViewControllerRepresentableContext.coordinator.getter();
  [v2 setDelegate:v12];

  return v2;
}

id sub_100107830()
{
  ObjectType = swift_getObjectType();
  v2 = swift_isaMask & *v0;
  if (*(v0 + *(v2 + 0x68)))
  {

    sub_100009F70(qword_10021A1B8, &unk_1001AF7F0);
    Task.cancel()();

    v2 = swift_isaMask & *v0;
  }

  if (*(v0 + *(v2 + 112)))
  {

    sub_100009F70(qword_10021A1B8, &unk_1001AF7F0);
    Task.cancel()();
  }

  v4.receiver = v0;
  v4.super_class = ObjectType;
  return objc_msgSendSuper2(&v4, "dealloc");
}

double sub_100107984(char *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *((swift_isaMask & *a1) + 0x60);
  v6 = type metadata accessor for FeaturedVideoPlayer(0, *((swift_isaMask & *a1) + 0x50), *((swift_isaMask & *a1) + 0x58), a4);
  (*(*(v6 - 8) + 8))(&a1[v5], v6);

  return result;
}

uint64_t sub_100107A84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[6] = a4;
  v5 = type metadata accessor for Notification();
  v4[7] = v5;
  v4[8] = *(v5 - 8);
  v4[9] = swift_task_alloc();
  sub_100009F70(&qword_10021F7D8, &unk_1001B78C8);
  v4[10] = swift_task_alloc();
  v6 = type metadata accessor for NSNotificationCenter.Notifications.Iterator();
  v4[11] = v6;
  v4[12] = *(v6 - 8);
  v4[13] = swift_task_alloc();

  return _swift_task_switch(sub_100107BD8, 0, 0);
}

uint64_t sub_100107BD8()
{
  v1 = [objc_opt_self() defaultCenter];
  if (qword_100218410 != -1)
  {
    swift_once();
  }

  NSNotificationCenter.notifications(named:object:)();

  NSNotificationCenter.Notifications.makeAsyncIterator()();
  swift_beginAccess();
  v2 = sub_10010B098(&unk_10021F7E0, &type metadata accessor for NSNotificationCenter.Notifications.Iterator, &protocol conformance descriptor for NSNotificationCenter.Notifications.Iterator);
  v3 = swift_task_alloc();
  v0[14] = v3;
  *v3 = v0;
  v3[1] = sub_100107D4C;
  v4 = v0[10];
  v5 = v0[11];

  return dispatch thunk of AsyncIteratorProtocol.next()(v4, v5, v2);
}

uint64_t sub_100107D4C()
{
  *(*v1 + 120) = v0;

  if (v0)
  {
    v2 = sub_10010B1AC;
  }

  else
  {
    v2 = sub_100107E60;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100107E7C()
{
  v1 = v0[10];
  v2 = v0[7];
  v3 = v0[8];
  if ((*(v3 + 48))(v1, 1, v2) != 1)
  {
    (*(v3 + 32))(v0[9], v1, v2);
    Strong = swift_unknownObjectWeakLoadStrong();
    v5 = v0[9];
    v6 = v0[7];
    v7 = (v0[8] + 8);
    if (Strong)
    {
      v8 = Strong;
      sub_100108078();

      (*v7)(v5, v6);
      v9 = sub_10010B098(&unk_10021F7E0, &type metadata accessor for NSNotificationCenter.Notifications.Iterator, &protocol conformance descriptor for NSNotificationCenter.Notifications.Iterator);
      v10 = swift_task_alloc();
      v0[14] = v10;
      *v10 = v0;
      v10[1] = sub_100107D4C;
      v11 = v0[10];
      v12 = v0[11];

      return dispatch thunk of AsyncIteratorProtocol.next()(v11, v12, v9);
    }

    (*v7)(v0[9], v0[7]);
  }

  (*(v0[12] + 8))(v0[13], v0[11]);

  v13 = v0[1];

  return v13();
}

double sub_100108078()
{
  v1 = v0;
  v2 = swift_isaMask & *v0;
  v3 = sub_100009F70(&qword_10021F7D0, &qword_1001AD340);
  __chkstk_darwin(v3 - 8);
  v5 = v37 - v4;
  v6 = Notification.name.getter();
  if (qword_100218410 != -1)
  {
    swift_once();
  }

  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;
  if (v7 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v9 == v10)
  {

LABEL_14:
    v18 = Notification.userInfo.getter();
    if (v18)
    {
      v19 = v18;
      v37[1] = 0x44496F65646976;
      v37[2] = 0xE700000000000000;
      AnyHashable.init<A>(_:)();
      if (*(v19 + 16))
      {
        v20 = sub_1000D8630(v38);
        if (v21)
        {
          sub_1000363B0(*(v19 + 56) + 32 * v20, &v39);
          sub_1000D8674(v38);

          if (*(&v40 + 1))
          {
            if ((swift_dynamicCast() & 1) == 0)
            {
              return result;
            }

            v24 = v38[0];
            v23 = v38[1];
            if (v24 == (*(*(v2 + 88) + 40))(*(v2 + 80)) && v23 == v25)
            {
            }

            else
            {
              v27 = _stringCompareWithSmolCheck(_:_:expecting:)();

              if ((v27 & 1) == 0)
              {
                return result;
              }
            }

            v34 = type metadata accessor for TaskPriority();
            (*(*(v34 - 8) + 56))(v5, 1, 1, v34);
            type metadata accessor for MainActor();
            v35 = v1;
            v36 = static MainActor.shared.getter();
            v32 = swift_allocObject();
            v32[2] = v36;
            v32[3] = &protocol witness table for MainActor;
            v32[4] = v35;
            v33 = &unk_1001B78F8;
            goto LABEL_30;
          }

LABEL_27:
          sub_10000D52C(&v39, &unk_10021F7F0, &qword_1001B03B0);
          return result;
        }
      }

      sub_1000D8674(v38);
    }

    v39 = 0u;
    v40 = 0u;
    goto LABEL_27;
  }

  v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v12)
  {
    goto LABEL_14;
  }

  v13 = Notification.name.getter();
  if (qword_100218418 != -1)
  {
    swift_once();
  }

  v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v16 = v15;
  if (v14 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v16 == v17)
  {
  }

  else
  {
    v28 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v28 & 1) == 0)
    {
      return result;
    }
  }

  v29 = type metadata accessor for TaskPriority();
  (*(*(v29 - 8) + 56))(v5, 1, 1, v29);
  type metadata accessor for MainActor();
  v30 = v1;
  v31 = static MainActor.shared.getter();
  v32 = swift_allocObject();
  v32[2] = v31;
  v32[3] = &protocol witness table for MainActor;
  v32[4] = v30;
  v33 = &unk_1001B78E0;
LABEL_30:
  sub_10013F12C(0, 0, v5, v33, v32);

  return result;
}

uint64_t sub_10010855C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_100009F70(&qword_10021F7D0, &qword_1001AD340);
  __chkstk_darwin(v8 - 8);
  v10 = v22 - v9;
  sub_10010AD5C(a3, v22 - v9);
  v11 = type metadata accessor for TaskPriority();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_10000D52C(v10, &qword_10021F7D0, &qword_1001AD340);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = dispatch thunk of Actor.unownedExecutor.getter();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = String.utf8CString.getter() + 32;

      if (v17 | v15)
      {
        v23[0] = 0;
        v23[1] = 0;
        v19 = v23;
        v23[2] = v15;
        v23[3] = v17;
      }

      else
      {
        v19 = 0;
      }

      v22[1] = 7;
      v22[2] = v19;
      v22[3] = v18;
      v20 = swift_task_create();

      return v20;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  if (v17 | v15)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v15;
    v23[7] = v17;
  }

  return swift_task_create();
}

uint64_t sub_1001087B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[6] = a4;
  v5 = type metadata accessor for Notification();
  v4[7] = v5;
  v4[8] = *(v5 - 8);
  v4[9] = swift_task_alloc();
  sub_100009F70(&qword_10021F7D8, &unk_1001B78C8);
  v4[10] = swift_task_alloc();
  v6 = type metadata accessor for NSNotificationCenter.Notifications.Iterator();
  v4[11] = v6;
  v4[12] = *(v6 - 8);
  v4[13] = swift_task_alloc();

  return _swift_task_switch(sub_10010890C, 0, 0);
}

uint64_t sub_10010890C()
{
  v1 = [objc_opt_self() defaultCenter];
  if (qword_100218418 != -1)
  {
    swift_once();
  }

  NSNotificationCenter.notifications(named:object:)();

  NSNotificationCenter.Notifications.makeAsyncIterator()();
  swift_beginAccess();
  v2 = sub_10010B098(&unk_10021F7E0, &type metadata accessor for NSNotificationCenter.Notifications.Iterator, &protocol conformance descriptor for NSNotificationCenter.Notifications.Iterator);
  v3 = swift_task_alloc();
  v0[14] = v3;
  *v3 = v0;
  v3[1] = sub_100108A80;
  v4 = v0[10];
  v5 = v0[11];

  return dispatch thunk of AsyncIteratorProtocol.next()(v4, v5, v2);
}

uint64_t sub_100108A80()
{
  *(*v1 + 120) = v0;

  if (v0)
  {
    v2 = sub_100108DAC;
  }

  else
  {
    v2 = sub_100108B94;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100108BB0()
{
  v1 = v0[10];
  v2 = v0[7];
  v3 = v0[8];
  if ((*(v3 + 48))(v1, 1, v2) != 1)
  {
    (*(v3 + 32))(v0[9], v1, v2);
    Strong = swift_unknownObjectWeakLoadStrong();
    v5 = v0[9];
    v6 = v0[7];
    v7 = (v0[8] + 8);
    if (Strong)
    {
      v8 = Strong;
      sub_100108078();

      (*v7)(v5, v6);
      v9 = sub_10010B098(&unk_10021F7E0, &type metadata accessor for NSNotificationCenter.Notifications.Iterator, &protocol conformance descriptor for NSNotificationCenter.Notifications.Iterator);
      v10 = swift_task_alloc();
      v0[14] = v10;
      *v10 = v0;
      v10[1] = sub_100108A80;
      v11 = v0[10];
      v12 = v0[11];

      return dispatch thunk of AsyncIteratorProtocol.next()(v11, v12, v9);
    }

    (*v7)(v0[9], v0[7]);
  }

  (*(v0[12] + 8))(v0[13], v0[11]);

  v13 = v0[1];

  return v13();
}

uint64_t sub_100108DAC()
{
  *(v0 + 40) = *(v0 + 120);
  sub_100009F70(qword_10021A1B8, &unk_1001AF7F0);
  v1 = swift_dynamicCast();

  return _swift_willThrowTypedImpl(v1, &type metadata for Never, &protocol witness table for Never);
}

uint64_t sub_100108E38()
{
  v1 = *v0;
  v2 = swift_isaMask;
  v3 = *((swift_isaMask & *v0) + 0x50);
  v4 = type metadata accessor for Optional();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v11 - v6;
  v8 = *(v3 - 8);
  (*(v8 + 16))(&v11 - v6, &v0[*((v2 & v1) + 0x60)], v3);
  (*(v8 + 56))(v7, 0, 1, v3);
  type metadata accessor for FeaturedVideoPlayer(0, v3, *((v2 & v1) + 0x58), v9);
  sub_10010A474(v7);
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_100108FDC()
{
  v1 = *v0;
  v2 = swift_isaMask;
  v3 = *((swift_isaMask & *v0) + 0x50);
  v4 = type metadata accessor for Optional();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v10 - v6;
  (*(*(v3 - 8) + 56))(&v10 - v6, 1, 1, v3);
  type metadata accessor for FeaturedVideoPlayer(0, v3, *((v2 & v1) + 0x58), v8);
  sub_10010A474(v7);
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_100109144(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  type metadata accessor for MainActor();
  *(v4 + 24) = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1001091DC, v6, v5);
}

uint64_t sub_1001091DC()
{

  sub_100108E38();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100109240(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  type metadata accessor for MainActor();
  *(v4 + 24) = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1001092D8, v6, v5);
}

uint64_t sub_1001092D8()
{

  sub_100108FDC();
  v1 = *(v0 + 8);

  return v1();
}

void sub_10010933C(void *a1, void *a2)
{
  v3 = [a1 player];
  if (v3)
  {
    v4 = v3;
    [v3 rate];
    if (v5 > 0.0)
    {
      v6 = [v4 error];
      if (!v6)
      {
        v7 = 1;
        goto LABEL_6;
      }
    }

    v7 = 0;
LABEL_6:
    v8 = swift_allocObject();
    *(v8 + 16) = v7;
    *(v8 + 24) = v4;
    v11[4] = sub_10010B16C;
    v11[5] = v8;
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 1107296256;
    v11[2] = sub_100109490;
    v11[3] = &unk_10020F618;
    v9 = _Block_copy(v11);
    v10 = v4;

    [a2 animateAlongsideTransition:0 completion:v9];
    _Block_release(v9);
  }
}

uint64_t sub_100109490(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);

  v3 = swift_unknownObjectRetain();
  v2(v3);

  return swift_unknownObjectRelease();
}

void sub_1001094F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, uint64_t a6)
{
  static MainActor.shared.getter();

  swift_task_getMainExecutor();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    goto LABEL_8;
  }

  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  *(v9 + 24) = a2;
  sub_10010B10C();
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (v6)
  {
    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      return;
    }

    __break(1u);
  }

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
LABEL_8:
    _StringGuts.grow(_:)(66);
    v11._object = 0x80000001001C10B0;
    v11._countAndFlagsBits = 0xD00000000000003FLL;
    String.append(_:)(v11);
    v12._countAndFlagsBits = _typeName(_:qualified:)();
    String.append(_:)(v12);

    v13._countAndFlagsBits = 46;
    v13._object = 0xE100000000000000;
    String.append(_:)(v13);
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }
}

void sub_100109678(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  type metadata accessor for MainActor();
  v9[2] = a3;
  v9[3] = a4;
  v7 = a3;
  swift_unknownObjectRetain();
  v8 = a1;
  sub_1001094F0(sub_10010B0E0, v9, "ShazamEventsApp/FeaturedVideoPlayer.swift", 41, 2u, 127);

  swift_unknownObjectRelease();
}

uint64_t sub_100109728(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  if (a3)
  {
    v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v10 = v9;
    if (a4)
    {
      goto LABEL_3;
    }

LABEL_6:
    memset(v17, 0, sizeof(v17));
    v14 = a5;
    v15 = a1;
    if (a5)
    {
      goto LABEL_4;
    }

LABEL_7:
    v13 = 0;
    goto LABEL_8;
  }

  v8 = 0;
  v10 = 0;
  if (!a4)
  {
    goto LABEL_6;
  }

LABEL_3:
  swift_unknownObjectRetain();
  v11 = a5;
  v12 = a1;
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  if (!a5)
  {
    goto LABEL_7;
  }

LABEL_4:
  type metadata accessor for NSKeyValueChangeKey(0);
  sub_10010B098(&qword_100218558, type metadata accessor for NSKeyValueChangeKey, &unk_1001ACF68);
  v13 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

LABEL_8:
  sub_10010ADCC(v8, v10, v17, v13);

  return sub_10000D52C(v17, &unk_10021F7F0, &qword_1001B03B0);
}

uint64_t sub_1001098E4(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for URL();
    if (v3 <= 0x3F)
    {
      type metadata accessor for Optional();
      result = type metadata accessor for Binding();
      if (v4 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_1001099A0(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v33 = *(v5 - 8);
  v6 = *(v33 + 84);
  v7 = *(type metadata accessor for URL() - 8);
  v8 = v7;
  v9 = *(v7 + 84);
  v10 = *(v33 + 64);
  if (v9 <= v6)
  {
    v11 = v6;
  }

  else
  {
    v11 = *(v7 + 84);
  }

  v12 = v6 - 1;
  if (!v6)
  {
    v12 = 0;
  }

  v13 = *(v7 + 80);
  v14 = *(v7 + 64);
  if (v12 > v11)
  {
    v11 = v12;
  }

  if (v11 <= 0x7FFFFFFF)
  {
    v11 = 0x7FFFFFFF;
  }

  if (v6)
  {
    v15 = -2;
  }

  else
  {
    v15 = -1;
  }

  if (!a2)
  {
    return 0;
  }

  v16 = v10 + v13;
  v17 = *(v33 + 80);
  v18 = v17 | 7;
  if (a2 <= v11)
  {
    goto LABEL_37;
  }

  v19 = v15 + v10 - ((-17 - v17) | v17) - ((-2 - v18 - (v14 + (v16 & ~v13))) | v18);
  v20 = 8 * v19;
  if (v19 <= 3)
  {
    v23 = ((a2 - v11 + ~(-1 << v20)) >> v20) + 1;
    if (HIWORD(v23))
    {
      v21 = *(a1 + v19);
      if (!v21)
      {
        goto LABEL_37;
      }

      goto LABEL_24;
    }

    if (v23 > 0xFF)
    {
      v21 = *(a1 + v19);
      if (!*(a1 + v19))
      {
        goto LABEL_37;
      }

      goto LABEL_24;
    }

    if (v23 < 2)
    {
LABEL_37:
      if (v6 == v11)
      {
        v27 = *(v33 + 48);

        return v27(a1, v6, v5);
      }

      else
      {
        v28 = (a1 + v16) & ~v13;
        if (v9 == v11)
        {
          v29 = *(v8 + 48);

          return v29(v28);
        }

        else
        {
          v30 = ((((v14 + v28 + v18 + 1) & ~v18) + 15) & 0xFFFFFFFFFFFFFFF8);
          if ((v12 & 0x80000000) != 0)
          {
            v32 = (*(v33 + 48))((v30 + v17 + 8) & ~v17, v6, v5);
            if (v32 >= 2)
            {
              return v32 - 1;
            }

            else
            {
              return 0;
            }
          }

          else
          {
            v31 = *v30;
            if (v31 >= 0xFFFFFFFF)
            {
              LODWORD(v31) = -1;
            }

            return (v31 + 1);
          }
        }
      }
    }
  }

  v21 = *(a1 + v19);
  if (!*(a1 + v19))
  {
    goto LABEL_37;
  }

LABEL_24:
  v24 = (v21 - 1) << v20;
  if (v19 > 3)
  {
    v24 = 0;
  }

  if (v19)
  {
    if (v19 <= 3)
    {
      v25 = v19;
    }

    else
    {
      v25 = 4;
    }

    if (v25 > 2)
    {
      if (v25 == 3)
      {
        v26 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v26 = *a1;
      }
    }

    else if (v25 == 1)
    {
      v26 = *a1;
    }

    else
    {
      v26 = *a1;
    }
  }

  else
  {
    v26 = 0;
  }

  return v11 + (v26 | v24) + 1;
}

void sub_100109CCC(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(a4 + 16);
  v8 = *(v7 - 8);
  v9 = *(v8 + 84);
  v10 = type metadata accessor for URL();
  v11 = v8;
  v12 = 0;
  v13 = *(v10 - 8);
  v14 = *(v13 + 84);
  v15 = *(v8 + 64);
  if (v14 <= v9)
  {
    v16 = v9;
  }

  else
  {
    v16 = *(v13 + 84);
  }

  v17 = v9 - 1;
  v18 = *(v13 + 80);
  v19 = *(*(v10 - 8) + 64);
  if (!v9)
  {
    v17 = 0;
  }

  if (v17 <= 0x7FFFFFFF)
  {
    v20 = 0x7FFFFFFF;
  }

  else
  {
    v20 = v17;
  }

  if (v16 <= v20)
  {
    v21 = v20;
  }

  else
  {
    v21 = v16;
  }

  v22 = *(v8 + 80);
  if (v9)
  {
    v23 = *(v8 + 64);
  }

  else
  {
    v23 = v15 + 1;
  }

  v24 = v23 + ((v22 + 16) & ~v22);
  v25 = v22 | 7;
  v26 = v19 + 1;
  v27 = v24 + ((v19 + 1 + ((v15 + v18) & ~v18) + (v22 | 7)) & ~(v22 | 7));
  if (a3 <= v21)
  {
LABEL_29:
    if (v21 < a2)
    {
      goto LABEL_30;
    }

    goto LABEL_18;
  }

  if (v27 > 3)
  {
    v12 = 1;
    if (v21 >= a2)
    {
      goto LABEL_18;
    }

LABEL_30:
    v30 = ~v21 + a2;
    if (v27 >= 4)
    {
      bzero(a1, v27);
      *a1 = v30;
      v31 = 1;
      if (v12 > 1)
      {
        goto LABEL_32;
      }

LABEL_69:
      if (v12)
      {
        a1[v27] = v31;
      }

      return;
    }

    v31 = (v30 >> (8 * v27)) + 1;
    if (v27)
    {
      v35 = v30 & ~(-1 << (8 * v27));
      bzero(a1, v27);
      if (v27 != 3)
      {
        if (v27 == 2)
        {
          *a1 = v35;
          if (v12 <= 1)
          {
            goto LABEL_69;
          }
        }

        else
        {
          *a1 = v30;
          if (v12 <= 1)
          {
            goto LABEL_69;
          }
        }

LABEL_32:
        if (v12 == 2)
        {
          *&a1[v27] = v31;
        }

        else
        {
          *&a1[v27] = v31;
        }

        return;
      }

      *a1 = v35;
      a1[2] = BYTE2(v35);
    }

    if (v12 <= 1)
    {
      goto LABEL_69;
    }

    goto LABEL_32;
  }

  v28 = ((a3 - v21 + ~(-1 << (8 * v27))) >> (8 * v27)) + 1;
  if (!HIWORD(v28))
  {
    if (v28 < 0x100)
    {
      v29 = 1;
    }

    else
    {
      v29 = 2;
    }

    if (v28 >= 2)
    {
      v12 = v29;
    }

    else
    {
      v12 = 0;
    }

    goto LABEL_29;
  }

  v12 = 4;
  if (v21 < a2)
  {
    goto LABEL_30;
  }

LABEL_18:
  if (v12 > 1)
  {
    if (v12 != 2)
    {
      *&a1[v27] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_37;
    }

    *&a1[v27] = 0;
LABEL_36:
    if (!a2)
    {
      return;
    }

    goto LABEL_37;
  }

  if (!v12)
  {
    goto LABEL_36;
  }

  a1[v27] = 0;
  if (!a2)
  {
    return;
  }

LABEL_37:
  if (v9 == v21)
  {
    v32 = *(v11 + 56);
    v33 = a1;
    v34 = a2;
LABEL_39:

    v32(v33, v34, v9, v7);
    return;
  }

  v36 = &a1[v15 + v18] & ~v18;
  if (v14 == v21)
  {
    v37 = *(v13 + 56);

    v37(v36, a2);
    return;
  }

  v38 = ((v26 + v36 + v25) & ~v25);
  if (v20 < a2)
  {
    if (v24 <= 3)
    {
      v39 = ~(-1 << (8 * v24));
    }

    else
    {
      v39 = -1;
    }

    if (!v24)
    {
      return;
    }

    v40 = v39 & (~v20 + a2);
    if (v24 <= 3)
    {
      v41 = v24;
    }

    else
    {
      v41 = 4;
    }

    bzero(((v26 + v36 + v25) & ~v25), v24);
    if (v41 <= 2)
    {
      if (v41 == 1)
      {
LABEL_66:
        *v38 = v40;
        return;
      }

LABEL_91:
      *v38 = v40;
      return;
    }

    goto LABEL_92;
  }

  v42 = ((v38 + 15) & 0xFFFFFFFFFFFFFFF8);
  if ((v17 & 0x80000000) == 0)
  {
    if ((a2 & 0x80000000) != 0)
    {
      v43 = a2 & 0x7FFFFFFF;
    }

    else
    {
      v43 = (a2 - 1);
    }

    *v42 = v43;
    return;
  }

  v44 = v42 + v22 + 8;
  v38 = (v44 & ~v22);
  if (v9)
  {
    v45 = v15;
  }

  else
  {
    v45 = (v15 + 1);
  }

  if (v17 >= a2)
  {
    v32 = *(v11 + 56);
    v34 = (a2 + 1);
    v33 = (v44 & ~v22);
    goto LABEL_39;
  }

  if (v45 <= 3)
  {
    v46 = ~(-1 << (8 * v45));
  }

  else
  {
    v46 = -1;
  }

  if (v45)
  {
    v40 = v46 & (~v17 + a2);
    if (v45 <= 3)
    {
      v41 = v45;
    }

    else
    {
      v41 = 4;
    }

    bzero(v38, v45);
    if (v41 <= 2)
    {
      if (v41 == 1)
      {
        goto LABEL_66;
      }

      goto LABEL_91;
    }

LABEL_92:
    if (v41 == 3)
    {
      *v38 = v40;
      v38[2] = BYTE2(v40);
    }

    else
    {
      *v38 = v40;
    }
  }
}

uint64_t sub_10010A144@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  (*(*(a5 - 8) + 32))(a7, a1, a5);
  v14 = type metadata accessor for FeaturedVideoPlayer(0, a5, a6, v13);
  v15 = v14[9];
  v16 = type metadata accessor for URL();
  (*(*(v16 - 8) + 32))(a7 + v15, a2, v16);
  *(a7 + v14[10]) = a3;
  v17 = v14[11];
  type metadata accessor for Optional();
  v18 = type metadata accessor for Binding();
  v19 = *(*(v18 - 8) + 32);

  return v19(a7 + v17, a4, v18);
}

void *sub_10010A288@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>, uint64_t a3@<X1>, uint64_t a4@<X2>, uint64_t a5@<X3>)
{
  result = sub_1001077F4(a1, a3, a4, a5);
  *a2 = result;
  return result;
}

uint64_t sub_10010A2B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return static UIViewControllerRepresentable._makeView(view:inputs:)(a1, a2, a3, WitnessTable);
}

uint64_t sub_10010A32C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return static UIViewControllerRepresentable._makeViewList(view:inputs:)(a1, a2, a3, WitnessTable);
}

void sub_10010A3A8(uint64_t a1)
{
  swift_getWitnessTable();
  UIViewControllerRepresentable.body.getter();
  __break(1u);
}

NSString sub_10010A404()
{
  result = String._bridgeToObjectiveC()();
  qword_1002305E8 = result;
  return result;
}

NSString sub_10010A43C()
{
  result = String._bridgeToObjectiveC()();
  qword_1002305F0 = result;
  return result;
}

uint64_t sub_10010A474(uint64_t a1)
{
  v2 = type metadata accessor for Optional();
  __chkstk_darwin(v2);
  (*(v4 + 16))(&v6 - v3, a1, v2);
  type metadata accessor for Binding();
  return Binding.wrappedValue.setter();
}

void sub_10010A560(void *a1, uint64_t a2)
{
  v5 = [a1 player];
  if (v5)
  {
    if ((sub_10010735C(a2) & 1) == 0 || *(v2 + *(a2 + 40)) == 1)
    {
      [v5 pause];
      [a1 setShowsPlaybackControls:0];
      [a1 setShowsPlaybackControls:1];
    }
  }
}

void *sub_10010A628(uint64_t a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = *v1;
  v6 = swift_isaMask;
  v7 = sub_100009F70(&qword_10021F7D0, &qword_1001AD340);
  __chkstk_darwin(v7 - 8);
  v9 = &v26 - v8;
  *&v2[*((v6 & v5) + 0x68)] = 0;
  *&v2[*((swift_isaMask & *v2) + 0x70)] = 0;
  v10 = *((swift_isaMask & *v2) + 0x60);
  v11 = *((v6 & v5) + 0x50);
  v12 = *((v6 & v5) + 0x58);
  v14 = type metadata accessor for FeaturedVideoPlayer(0, v11, v12, v13);
  (*(*(v14 - 8) + 16))(&v2[v10], a1, v14);
  v26.receiver = v2;
  v26.super_class = ObjectType;
  v15 = objc_msgSendSuper2(&v26, "init");
  v16 = type metadata accessor for TaskPriority();
  v17 = *(*(v16 - 8) + 56);
  v17(v9, 1, 1, v16);
  v18 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v19 = swift_allocObject();
  v19[2] = 0;
  v19[3] = 0;
  v19[4] = v11;
  v19[5] = v12;
  v19[6] = v18;
  v20 = v15;
  v21 = sub_10010855C(0, 0, v9, &unk_1001B78B0, v19);
  sub_10000D52C(v9, &qword_10021F7D0, &qword_1001AD340);
  *(v20 + *((swift_isaMask & *v20) + 0x68)) = v21;

  v17(v9, 1, 1, v16);
  v22 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v23 = swift_allocObject();
  v23[2] = 0;
  v23[3] = 0;
  v23[4] = v11;
  v23[5] = v12;
  v23[6] = v22;
  v24 = sub_10010855C(0, 0, v9, &unk_1001B78C0, v23);
  sub_10000D52C(v9, &qword_10021F7D0, &qword_1001AD340);
  *(v20 + *((swift_isaMask & *v20) + 0x70)) = v24;

  return v20;
}

uint64_t sub_10010A9A4()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_10010A9E0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[6];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1000214E4;

  return sub_100107A84(a1, v4, v5, v6);
}

uint64_t sub_10010AAA8()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_10010AAE8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[6];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10000D890;

  return sub_1001087B8(a1, v4, v5, v6);
}

uint64_t sub_10010ABB4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10000D890;

  return sub_100109240(a1, v4, v5, v6);
}

uint64_t sub_10010AC68()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_10010ACA8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1000214E4;

  return sub_100109144(a1, v4, v5, v6);
}

uint64_t sub_10010AD5C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100009F70(&qword_10021F7D0, &qword_1001AD340);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_10010ADCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    if (v6 = swift_isaMask & *v4, a1 == 1702125938) && a2 == 0xE400000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)())
    {
      if (a4)
      {
        if (*(a4 + 16))
        {
          v7 = sub_1000D8BC0();
          if (v8)
          {
            sub_1000363B0(*(a4 + 56) + 32 * v7, v16);
            if ((swift_dynamicCast() & 1) != 0 && v15 != 0.0)
            {
              v9 = [objc_opt_self() defaultCenter];
              if (qword_100218410 != -1)
              {
                swift_once();
              }

              v10 = qword_1002305E8;
              sub_100009F70(&qword_10021F800, &unk_1001B7900);
              inited = swift_initStackObject();
              *(inited + 16) = xmmword_1001AEB90;
              v16[0] = 0x44496F65646976;
              v16[1] = 0xE700000000000000;
              AnyHashable.init<A>(_:)();
              v12 = (*(*(v6 + 88) + 40))(*(v6 + 80));
              *(inited + 96) = &type metadata for ResourceID;
              *(inited + 72) = v12;
              *(inited + 80) = v13;
              sub_100192CF8(inited);
              swift_setDeallocating();
              sub_10000D52C(inited + 32, &unk_100222CB0, &qword_1001BCE40);
              isa = Dictionary._bridgeToObjectiveC()().super.isa;

              [v9 postNotificationName:v10 object:0 userInfo:isa];
            }
          }
        }
      }
    }
  }
}

uint64_t sub_10010B098(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10010B134()
{

  return swift_deallocObject();
}

id sub_10010B16C()
{
  if (*(v0 + 16) == 1)
  {
    return [*(v0 + 24) play];
  }

  return result;
}

uint64_t sub_10010B18C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

__n128 sub_10010B1B0(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 96) = *(a2 + 12);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_10010B1DC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 104))
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

uint64_t sub_10010B224(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 88) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 104) = 1;
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

    *(result + 104) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10010B2A8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v80 = a2;
  v3 = sub_100009F70(&qword_10021F838, &qword_1001B79E8);
  v4 = v3 - 8;
  v5 = __chkstk_darwin(v3);
  v90 = &v77 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v8 = &v77 - v7;
  *v8 = static VerticalAlignment.center.getter();
  *(v8 + 1) = 0x4000000000000000;
  v8[16] = 0;
  v9 = sub_100009F70(&qword_10021F840, &qword_1001B79F0);
  sub_10010B94C(a1, &v8[*(v9 + 44)]);
  v10 = static Edge.Set.bottom.getter();
  EdgeInsets.init(_all:)();
  v11 = *(v4 + 44);
  v89 = v8;
  v12 = &v8[v11];
  *v12 = v10;
  *(v12 + 1) = v13;
  *(v12 + 2) = v14;
  *(v12 + 3) = v15;
  *(v12 + 4) = v16;
  v12[40] = 0;
  v17 = a1[9];
  if (v17)
  {
    v116 = a1[8];
    v117 = v17;
    sub_100027068();

    v18 = Text.init<A>(_:)();
    v20 = v19;
    v79 = a1;
    v22 = v21;
    static Font.largeTitle.getter();
    static Font.Weight.bold.getter();
    Font.weight(_:)();

    v23 = Text.font(_:)();
    v25 = v24;
    v27 = v26;

    sub_10000D60C(v18, v20, v22 & 1);

    v116 = static Color.white.getter();
    v28 = Text.foregroundStyle<A>(_:)();
    v87 = v29;
    v88 = v28;
    LOBYTE(v20) = v30;
    v86 = v31;
    sub_10000D60C(v23, v25, v27 & 1);

    KeyPath = swift_getKeyPath();
    v32 = swift_getKeyPath();
    LOBYTE(v93) = v20 & 1;
    LOBYTE(v106[0]) = 0;
    v83 = v20 & 1;
    *&v84 = 0;
    *(&v84 + 1) = v32;
    LOBYTE(v18) = static Edge.Set.bottom.getter();
    EdgeInsets.init(_all:)();
    v34 = v33;
    v36 = v35;
    v38 = v37;
    v40 = v39;
    LOBYTE(v116) = 0;
    *&v82 = 1;
    *(&v82 + 1) = v18;
    v81 = 2;
  }

  else
  {
    v87 = 0;
    v88 = 0;
    KeyPath = 0;
    v86 = 0;
    v81 = 0;
    v82 = 0uLL;
    v84 = 0uLL;
    v83 = 0;
    v34 = 0;
    v36 = 0;
    v38 = 0;
    v40 = 0;
  }

  v41 = Text.init(_:tableName:bundle:comment:)();
  v43 = v42;
  v45 = v44;
  static Font.subheadline.getter();
  static Font.Weight.regular.getter();
  Font.weight(_:)();

  v46 = Text.font(_:)();
  v48 = v47;
  v50 = v49;

  sub_10000D60C(v41, v43, v45 & 1);

  static Color.white.getter();
  v51 = Color.opacity(_:)();

  v116 = v51;
  v52 = Text.foregroundStyle<A>(_:)();
  v78 = v53;
  v79 = v54;
  LOBYTE(v41) = v55;
  sub_10000D60C(v46, v48, v50 & 1);

  v56 = swift_getKeyPath();
  v77 = v56;
  v57 = swift_getKeyPath();
  v58 = v41 & 1;
  LOBYTE(v116) = v41 & 1;
  LOBYTE(v93) = 0;
  v59 = v90;
  sub_10000D58C(v89, v90, &qword_10021F838, &qword_1001B79E8);
  v60 = v59;
  v61 = v80;
  sub_10000D58C(v60, v80, &qword_10021F838, &qword_1001B79E8);
  v62 = sub_100009F70(&qword_10021F848, &qword_1001B7A58);
  v63 = v61 + *(v62 + 48);
  *&v93 = v88;
  *(&v93 + 1) = v87;
  *&v94 = v83;
  *(&v94 + 1) = v86;
  *&v95 = KeyPath;
  *(&v95 + 1) = v81;
  v96 = v84;
  v97 = v82;
  *&v98 = v34;
  *(&v98 + 1) = v36;
  *&v99 = v38;
  *(&v99 + 1) = v40;
  v100 = 0;
  *(v63 + 112) = 0;
  v64 = v98;
  *(v63 + 64) = v97;
  *(v63 + 80) = v64;
  *(v63 + 96) = v99;
  v65 = v93;
  v66 = v94;
  v67 = v96;
  *(v63 + 32) = v95;
  *(v63 + 48) = v67;
  *v63 = v65;
  *(v63 + 16) = v66;
  v68 = v61 + *(v62 + 64);
  v69 = v52;
  *&v101 = v52;
  v71 = v78;
  v70 = v79;
  *(&v101 + 1) = v78;
  LOBYTE(v102) = v58;
  DWORD1(v102) = *&v92[3];
  *(&v102 + 1) = *v92;
  *(&v102 + 1) = v79;
  *&v103 = v56;
  *(&v103 + 1) = 2;
  LOBYTE(v104) = 0;
  DWORD1(v104) = *&v91[3];
  *(&v104 + 1) = *v91;
  *(&v104 + 1) = v57;
  v105 = 1;
  v72 = v101;
  v73 = v102;
  v74 = v103;
  v75 = v104;
  *(v68 + 64) = 1;
  *(v68 + 32) = v74;
  *(v68 + 48) = v75;
  *v68 = v72;
  *(v68 + 16) = v73;
  sub_10000D58C(&v93, &v116, &qword_10021F850, &unk_1001B7A60);
  sub_10000D58C(&v101, &v116, &qword_10021A630, &qword_1001BCBD0);
  sub_10000D52C(v89, &qword_10021F838, &qword_1001B79E8);
  v106[0] = v69;
  v106[1] = v71;
  v107 = v58;
  *v108 = *v92;
  *&v108[3] = *&v92[3];
  v109 = v70;
  v110 = v77;
  v111 = 2;
  v112 = 0;
  *v113 = *v91;
  *&v113[3] = *&v91[3];
  v114 = v57;
  v115 = 1;
  sub_10000D52C(v106, &qword_10021A630, &qword_1001BCBD0);
  v116 = v88;
  v117 = v87;
  v118 = v83;
  v119 = v86;
  v120 = KeyPath;
  v121 = v81;
  v122 = v84;
  v123 = v82;
  v124 = v34;
  v125 = v36;
  v126 = v38;
  v127 = v40;
  v128 = 0;
  sub_10000D52C(&v116, &qword_10021F850, &unk_1001B7A60);
  return sub_10000D52C(v90, &qword_10021F838, &qword_1001B79E8);
}

uint64_t sub_10010B94C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v51 = a2;
  v49 = sub_100009F70(&qword_10021F858, &qword_1001B7A70) - 8;
  v3 = __chkstk_darwin(v49);
  v50 = &v45[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v3);
  v6 = &v45[-v5];
  v7 = type metadata accessor for Image.ResizingMode();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v45[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = sub_100009F70(&qword_10021F860, &qword_1001B7A78);
  v12 = __chkstk_darwin(v11 - 8);
  v52 = &v45[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v12);
  v48 = &v45[-v14];
  Image.init(_:bundle:)();
  (*(v8 + 104))(v10, enum case for Image.ResizingMode.stretch(_:), v7);
  v15 = Image.resizable(capInsets:resizingMode:)();

  (*(v8 + 8))(v10, v7);
  v53 = *(a1 + 5);
  *&v54[0] = a1[12];
  sub_100009F70(&qword_10021F868, &qword_1001B7A80);
  State.wrappedValue.getter();
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  *&v55[38] = v59;
  *&v55[22] = v58;
  *&v55[6] = v57;
  *(v54 + 2) = *v55;
  *(&v54[1] + 2) = *&v55[16];
  v56 = 1;
  v53 = v15;
  LOWORD(v54[0]) = 1;
  *(&v54[2] + 2) = *&v55[32];
  *&v54[3] = *(&v59 + 1);
  sub_100009F70(&qword_10021F870, &qword_1001B7A88);
  sub_10010C394();
  View.accessibilityHidden(_:)();
  v60[2] = v54[1];
  v60[3] = v54[2];
  v61 = *&v54[3];
  v60[0] = v53;
  v60[1] = v54[0];
  sub_10000D52C(v60, &qword_10021F870, &qword_1001B7A88);

  v16 = Text.init(_:tableName:bundle:comment:)();
  v18 = v17;
  v46 = v19;
  v47 = v20;
  v21 = &v6[*(sub_100009F70(&qword_100219820, &unk_1001AE8B0) + 36)];
  v22 = *(sub_100009F70(&qword_100219828, &qword_1001B0010) + 28);
  v23 = enum case for Text.Case.uppercase(_:);
  v24 = type metadata accessor for Text.Case();
  v25 = *(v24 - 8);
  (*(v25 + 104))(v21 + v22, v23, v24);
  (*(v25 + 56))(v21 + v22, 0, 1, v24);
  *v21 = swift_getKeyPath();
  *v6 = v16;
  *(v6 + 1) = v18;
  v6[16] = v46 & 1;
  *(v6 + 3) = v47;
  v26 = v6;
  static Font.caption2.getter();
  static Font.Weight.semibold.getter();
  v27 = Font.weight(_:)();

  KeyPath = swift_getKeyPath();
  v29 = &v6[*(sub_100009F70(&qword_10021BF80, &qword_1001B2660) + 36)];
  *v29 = KeyPath;
  v29[1] = v27;
  v30 = swift_getKeyPath();
  v31 = &v6[*(sub_100009F70(&qword_10021F880, &qword_1001B7B00) + 36)];
  *v31 = v30;
  *(v31 + 1) = 1;
  v31[16] = 0;
  static Color.white.getter();
  v32 = Color.opacity(_:)();

  *&v6[*(sub_100009F70(&qword_10021F888, &qword_1001B7B08) + 36)] = v32;
  v33 = swift_allocObject();
  v34 = *(a1 + 5);
  *(v33 + 80) = *(a1 + 4);
  *(v33 + 96) = v34;
  *(v33 + 112) = a1[12];
  v35 = *(a1 + 1);
  *(v33 + 16) = *a1;
  *(v33 + 32) = v35;
  v36 = *(a1 + 3);
  *(v33 + 48) = *(a1 + 2);
  *(v33 + 64) = v36;
  v37 = &v6[*(v49 + 44)];
  *v37 = sub_10010BFE8;
  v37[1] = 0;
  v37[2] = sub_10010C490;
  v37[3] = v33;
  v38 = v48;
  v39 = v52;
  sub_10000D58C(v48, v52, &qword_10021F860, &qword_1001B7A78);
  v40 = v50;
  sub_10000D58C(v26, v50, &qword_10021F858, &qword_1001B7A70);
  v41 = v39;
  v42 = v51;
  sub_10000D58C(v41, v51, &qword_10021F860, &qword_1001B7A78);
  v43 = sub_100009F70(&qword_10021F890, &qword_1001B7B10);
  sub_10000D58C(v40, v42 + *(v43 + 48), &qword_10021F858, &qword_1001B7A70);
  sub_10010C498(a1, &v53);
  sub_10000D52C(v26, &qword_10021F858, &qword_1001B7A70);
  sub_10000D52C(v38, &qword_10021F860, &qword_1001B7A78);
  sub_10000D52C(v40, &qword_10021F858, &qword_1001B7A70);
  return sub_10000D52C(v52, &qword_10021F860, &qword_1001B7A78);
}

void sub_10010BFE8(void *a1@<X8>)
{
  GeometryProxy.size.getter();
  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_10010C070@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for AccessibilityChildBehavior();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100009F70(&qword_10021F808, &qword_1001B79C8);
  __chkstk_darwin(v7);
  v9 = v18 - v8;
  v10 = *(v1 + 80);
  v18[4] = *(v1 + 64);
  v18[5] = v10;
  v19 = *(v1 + 96);
  v11 = *(v1 + 16);
  v18[0] = *v1;
  v18[1] = v11;
  v12 = *(v1 + 48);
  v18[2] = *(v1 + 32);
  v18[3] = v12;
  *v9 = static HorizontalAlignment.center.getter();
  *(v9 + 1) = 0;
  v9[16] = 0;
  v13 = sub_100009F70(&qword_10021F810, &qword_1001B79D0);
  sub_10010B2A8(v18, &v9[*(v13 + 44)]);
  v14 = *(v7 + 36);
  v15 = enum case for BlendMode.plusLighter(_:);
  v16 = type metadata accessor for BlendMode();
  (*(*(v16 - 8) + 104))(&v9[v14], v15, v16);
  static AccessibilityChildBehavior.combine.getter();
  sub_10010C294();
  View.accessibilityElement(children:)();
  (*(v4 + 8))(v6, v3);
  sub_10000D52C(v9, &qword_10021F808, &qword_1001B79C8);
  result = sub_100009F70(&qword_10021F830, &qword_1001B79E0);
  *(a1 + *(result + 36)) = 1;
  return result;
}

unint64_t sub_10010C294()
{
  result = qword_10021F818;
  if (!qword_10021F818)
  {
    sub_10000B3DC(&qword_10021F808, &qword_1001B79C8);
    sub_10010C320();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021F818);
  }

  return result;
}

unint64_t sub_10010C320()
{
  result = qword_10021F820;
  if (!qword_10021F820)
  {
    sub_10000B3DC(&qword_10021F828, &qword_1001B79D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021F820);
  }

  return result;
}

unint64_t sub_10010C394()
{
  result = qword_10021F878;
  if (!qword_10021F878)
  {
    sub_10000B3DC(&qword_10021F870, &qword_1001B7A88);
    sub_100079534();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021F878);
  }

  return result;
}

uint64_t sub_10010C430()
{

  return swift_deallocObject();
}

unint64_t sub_10010C4D4()
{
  result = qword_10021F898[0];
  if (!qword_10021F898[0])
  {
    sub_10000B3DC(&qword_10021F830, &qword_1001B79E0);
    sub_10000B3DC(&qword_10021F808, &qword_1001B79C8);
    sub_10010C294();
    swift_getOpaqueTypeConformance2();
    sub_10002D070();
    result = swift_getWitnessTable();
    atomic_store(result, qword_10021F898);
  }

  return result;
}

uint64_t sub_10010C59C@<X0>(uint64_t a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X8>, uint64_t a4@<X0>, uint64_t a5@<X1>)
{
  *a3 = sub_10010C6C0(a4, a5, a1, a2);
  *(a3 + 8) = v8;
  *(a3 + 16) = v9 & 1;
  v11 = type metadata accessor for FilterView(0, a1, a2, v10);
  v12 = v11[9];
  *(a3 + v12) = swift_getKeyPath();
  sub_100009F70(&qword_100219718, &qword_1001B1810);
  swift_storeEnumTagMultiPayload();
  v13 = v11[10];
  *(a3 + v13) = swift_getKeyPath();
  sub_100009F70(&qword_100219710, &qword_1001B29A0);
  swift_storeEnumTagMultiPayload();
  v14 = (a3 + v11[11]);
  type metadata accessor for RemoteViewConfiguration();
  sub_10011C16C(&qword_100218568, type metadata accessor for RemoteViewConfiguration, &unk_1001BB390);
  result = EnvironmentObject.init()();
  *v14 = result;
  v14[1] = v16;
  return result;
}

uint64_t sub_10010C6C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for FilterViewModel(0, a3, a4, a4);
  swift_getWitnessTable();
  return StateObject.init(wrappedValue:)();
}

uint64_t sub_10010C758(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t), uint64_t a3, uint64_t a4)
{
  v5 = *v4;
  v6 = *(v4 + 8);
  v7 = *(v4 + 16);
  v8 = type metadata accessor for FilterViewModel(0, *(a1 + 16), *(a1 + 24), a4);
  WitnessTable = swift_getWitnessTable();

  return a2(v5, v6, v7, v8, WitnessTable);
}

uint64_t sub_10010C7E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a2;
  v21 = type metadata accessor for NavigationPath();
  v18[4] = sub_10000B3DC(&qword_10021F920, &qword_1001B7C10);
  v18[1] = sub_10000B3DC(&qword_10021F928, &qword_1001B7C18);
  v18[2] = sub_10000B3DC(&qword_10021F930, &qword_1001B7C20);
  v3 = *(a1 + 16);
  v20 = *(a1 + 24);
  v19 = v3;
  swift_getAssociatedTypeWitness();
  type metadata accessor for Array();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  sub_10000B3DC(&qword_10021F938, &unk_1001B7C28);
  type metadata accessor for Set();
  swift_getWitnessTable();
  type metadata accessor for _AnimationModifier();
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent();
  type metadata accessor for AccessibilityAttachmentModifier();
  type metadata accessor for ModifiedContent();
  swift_getTupleTypeMetadata2();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  type metadata accessor for ZStack();
  swift_getWitnessTable();
  type metadata accessor for Button();
  type metadata accessor for ModifiedContent();
  swift_getWitnessTable();
  swift_getAssociatedConformanceWitness();
  type metadata accessor for ForEach();
  WitnessTable = swift_getWitnessTable();
  v45 = sub_10011C16C(&qword_100218698, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
  v18[3] = &protocol conformance descriptor for <> ModifiedContent<A, B>;
  v43 = swift_getWitnessTable();
  swift_getWitnessTable();
  type metadata accessor for LazyVGrid();
  swift_getWitnessTable();
  type metadata accessor for ScrollView();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  type metadata accessor for ModifiedContent();
  swift_getTupleTypeMetadata2();
  type metadata accessor for TupleView();
  type metadata accessor for Optional();
  swift_getTupleTypeMetadata3();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  type metadata accessor for VStack();
  swift_getWitnessTable();
  type metadata accessor for ScrollView();
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent();
  sub_10000B3DC(&qword_1002188F8, &unk_1001ADC20);
  type metadata accessor for ModifiedContent();
  sub_10000B3DC(&qword_10021F940, &qword_1001B7C38);
  swift_getTupleTypeMetadata3();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  type metadata accessor for VStack();
  type metadata accessor for ModifiedContent();
  sub_10000B3DC(&qword_10021F948, &qword_1001B7C40);
  v41 = swift_getWitnessTable();
  v42 = &protocol witness table for _SafeAreaRegionsIgnoringLayout;
  swift_getWitnessTable();
  sub_10000B3DC(&qword_10021F950, &qword_1001B7C48);
  sub_10000B3DC(&qword_10021F958, &qword_1001B7C50);
  type metadata accessor for GlassProminentButtonStyle();
  sub_10011C1B4();
  sub_10011C16C(&qword_10021D3C8, &type metadata accessor for GlassProminentButtonStyle, &protocol conformance descriptor for GlassProminentButtonStyle);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  type metadata accessor for CompactDatePickerConfiguration(255);
  v39 = &protocol witness table for Solarium;
  v40 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  sub_10011C16C(&qword_10021F5D0, type metadata accessor for CompactDatePickerConfiguration, &unk_1001B76C0);
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v6 = sub_10000B3DC(&qword_10021F9E0, &qword_1001B7CA8);
  v7 = swift_getOpaqueTypeConformance2();
  v8 = sub_10000D1EC(&qword_10021F9E8, &qword_10021F9E0, &qword_1001B7CA8, &protocol conformance descriptor for TupleToolbarContent<A>);
  swift_getOpaqueTypeMetadata2();
  sub_10000B3DC(&qword_10021F9F0, &qword_1001B7CB0);
  type metadata accessor for ModifiedContent();
  sub_10000B3DC(&qword_10021F9F8, &qword_1001B7CB8);
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent();
  v35 = OpaqueTypeMetadata2;
  v36 = v6;
  v37 = v7;
  v38 = v8;
  v33 = swift_getOpaqueTypeConformance2();
  v34 = sub_10000D1EC(&qword_10021FA00, &qword_10021F9F0, &qword_1001B7CB0, &unk_1001B3380);
  v31 = swift_getWitnessTable();
  v32 = sub_10000D1EC(&qword_10021FA08, &qword_10021F9F8, &qword_1001B7CB8, &protocol conformance descriptor for _PreferenceActionModifier<A>);
  v29 = swift_getWitnessTable();
  v30 = &protocol witness table for _AppearanceActionModifier;
  v27 = swift_getWitnessTable();
  v28 = &protocol witness table for _AppearanceActionModifier;
  swift_getWitnessTable();
  v9 = type metadata accessor for NavigationStack();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v13 = v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = v18 - v14;
  v24 = v19;
  v25 = v20;
  v26 = v22;
  NavigationStack.init<>(root:)();
  swift_getWitnessTable();
  sub_100157EFC();
  v16 = *(v10 + 8);
  v16(v13, v9);
  sub_100157EFC();
  return (v16)(v15, v9);
}

uint64_t sub_10010D444@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v215 = a1;
  v198 = a4;
  v6 = type metadata accessor for NavigationBarItem.TitleDisplayMode();
  v196 = *(v6 - 8);
  v197 = v6;
  __chkstk_darwin(v6);
  v195 = v154 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for FilterView(0, a2, a3, v8);
  v10 = *(v9 - 8);
  v212 = v9;
  v213 = v10;
  v214 = *(v10 + 64);
  __chkstk_darwin(v9);
  v209 = v154 - v11;
  v208 = type metadata accessor for CompactDatePickerConfiguration(0);
  __chkstk_darwin(v208);
  v194 = v154 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v211 = sub_10000B3DC(&qword_10021F920, &qword_1001B7C10);
  v207 = sub_10000B3DC(&qword_10021F928, &qword_1001B7C18);
  v210 = sub_10000B3DC(&qword_10021F930, &qword_1001B7C20);
  v217 = a3;
  v216 = a2;
  swift_getAssociatedTypeWitness();
  v13 = type metadata accessor for Array();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_10000B3DC(&qword_10021F938, &unk_1001B7C28);
  type metadata accessor for Set();
  swift_getWitnessTable();
  type metadata accessor for _AnimationModifier();
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent();
  type metadata accessor for AccessibilityAttachmentModifier();
  type metadata accessor for ModifiedContent();
  swift_getTupleTypeMetadata2();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  type metadata accessor for ZStack();
  swift_getWitnessTable();
  type metadata accessor for Button();
  v15 = type metadata accessor for ModifiedContent();
  WitnessTable = swift_getWitnessTable();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v235 = v13;
  v236 = AssociatedTypeWitness;
  v237 = v15;
  v238 = WitnessTable;
  v239 = AssociatedConformanceWitness;
  type metadata accessor for ForEach();
  v18 = swift_getWitnessTable();
  v19 = sub_10011C16C(&qword_100218698, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
  v244 = v18;
  v245 = v19;
  v204 = &protocol conformance descriptor for <> ModifiedContent<A, B>;
  v243 = swift_getWitnessTable();
  swift_getWitnessTable();
  type metadata accessor for LazyVGrid();
  swift_getWitnessTable();
  v20 = type metadata accessor for ScrollView();
  v21 = swift_getWitnessTable();
  v235 = v20;
  v236 = v21;
  swift_getOpaqueTypeMetadata2();
  type metadata accessor for ModifiedContent();
  swift_getTupleTypeMetadata2();
  type metadata accessor for TupleView();
  type metadata accessor for Optional();
  swift_getTupleTypeMetadata3();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  type metadata accessor for VStack();
  swift_getWitnessTable();
  type metadata accessor for ScrollView();
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent();
  sub_10000B3DC(&qword_1002188F8, &unk_1001ADC20);
  type metadata accessor for ModifiedContent();
  sub_10000B3DC(&qword_10021F940, &qword_1001B7C38);
  swift_getTupleTypeMetadata3();
  v207 = type metadata accessor for TupleView();
  v206 = swift_getWitnessTable();
  v22 = type metadata accessor for VStack();
  v210 = *(v22 - 8);
  __chkstk_darwin(v22);
  v205 = v154 - v23;
  v186 = v22;
  v24 = type metadata accessor for ModifiedContent();
  v211 = *(v24 - 8);
  __chkstk_darwin(v24);
  v199 = (v154 - v25);
  v26 = sub_10000B3DC(&qword_10021F948, &qword_1001B7C40);
  v185 = swift_getWitnessTable();
  v241 = v185;
  v242 = &protocol witness table for _SafeAreaRegionsIgnoringLayout;
  v27 = swift_getWitnessTable();
  v28 = sub_10000B3DC(&qword_10021F950, &qword_1001B7C48);
  v29 = sub_10000B3DC(&qword_10021F958, &qword_1001B7C50);
  v30 = type metadata accessor for GlassProminentButtonStyle();
  v31 = sub_10011C1B4();
  v32 = sub_10011C16C(&qword_10021D3C8, &type metadata accessor for GlassProminentButtonStyle, &protocol conformance descriptor for GlassProminentButtonStyle);
  v235 = v29;
  v236 = v30;
  v237 = v31;
  v238 = v32;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v235 = v28;
  v236 = OpaqueTypeConformance2;
  v34 = swift_getOpaqueTypeConformance2();
  v235 = v24;
  v236 = v26;
  v237 = v27;
  v238 = v34;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v235 = v24;
  v236 = v26;
  v237 = v27;
  v238 = v34;
  v36 = swift_getOpaqueTypeConformance2();
  v235 = v24;
  v236 = &type metadata for Solarium;
  v237 = OpaqueTypeMetadata2;
  v238 = v27;
  v154[1] = OpaqueTypeMetadata2;
  v37 = v27;
  v156 = v27;
  v239 = &protocol witness table for Solarium;
  v240 = v36;
  v38 = v36;
  v154[2] = v36;
  v39 = swift_getOpaqueTypeMetadata2();
  v180 = *(v39 - 8);
  __chkstk_darwin(v39);
  v155 = v154 - v40;
  v235 = v24;
  v236 = &type metadata for Solarium;
  v237 = OpaqueTypeMetadata2;
  v238 = v37;
  v239 = &protocol witness table for Solarium;
  v240 = v38;
  v41 = swift_getOpaqueTypeConformance2();
  v42 = sub_10011C16C(&qword_10021F5D0, type metadata accessor for CompactDatePickerConfiguration, &unk_1001B76C0);
  v235 = v39;
  v43 = v39;
  v158 = v39;
  v159 = v41;
  v44 = v208;
  v236 = v208;
  v237 = v41;
  v238 = v42;
  v45 = v42;
  v46 = swift_getOpaqueTypeMetadata2();
  v184 = *(v46 - 8);
  __chkstk_darwin(v46);
  v202 = v154 - v47;
  v235 = v43;
  v236 = v44;
  v237 = v41;
  v238 = v45;
  v48 = swift_getOpaqueTypeConformance2();
  v235 = v46;
  v236 = v44;
  v49 = v46;
  v168 = v46;
  v169 = v48;
  v50 = v44;
  v237 = v48;
  v238 = v45;
  v51 = v48;
  v201 = v45;
  v52 = swift_getOpaqueTypeMetadata2();
  v179 = *(v52 - 8);
  __chkstk_darwin(v52);
  v167 = v154 - v53;
  v235 = v49;
  v236 = v50;
  v237 = v51;
  v238 = v45;
  v54 = swift_getOpaqueTypeConformance2();
  v55 = v52;
  v162 = v52;
  v163 = v54;
  v235 = v52;
  v236 = v54;
  v56 = v54;
  v57 = swift_getOpaqueTypeMetadata2();
  v181 = *(v57 - 8);
  __chkstk_darwin(v57);
  v161 = v154 - v58;
  v235 = v55;
  v236 = v56;
  v59 = swift_getOpaqueTypeConformance2();
  v235 = v57;
  v236 = v59;
  v160 = v57;
  v60 = v59;
  v164 = v59;
  v61 = swift_getOpaqueTypeMetadata2();
  v173 = v61;
  v177 = *(v61 - 8);
  __chkstk_darwin(v61);
  v166 = v154 - v62;
  v63 = sub_10000B3DC(&qword_10021F9E0, &qword_1001B7CA8);
  v172 = v63;
  v235 = v57;
  v236 = v60;
  v64 = swift_getOpaqueTypeConformance2();
  v171 = v64;
  v170 = sub_10000D1EC(&qword_10021F9E8, &qword_10021F9E0, &qword_1001B7CA8, &protocol conformance descriptor for TupleToolbarContent<A>);
  v235 = v61;
  v236 = v63;
  v237 = v64;
  v238 = v170;
  v174 = &opaque type descriptor for <<opaque return type of View.toolbar<A>(content:)>>;
  v165 = swift_getOpaqueTypeMetadata2();
  v176 = *(v165 - 8);
  __chkstk_darwin(v165);
  v157 = v154 - v65;
  sub_10000B3DC(&qword_10021F9F0, &qword_1001B7CB0);
  v175 = type metadata accessor for ModifiedContent();
  v183 = *(v175 - 8);
  __chkstk_darwin(v175);
  v200 = v154 - v66;
  sub_10000B3DC(&qword_10021F9F8, &qword_1001B7CB8);
  v182 = type metadata accessor for ModifiedContent();
  v189 = *(v182 - 8);
  __chkstk_darwin(v182);
  v203 = v154 - v67;
  v188 = type metadata accessor for ModifiedContent();
  v192 = *(v188 - 8);
  __chkstk_darwin(v188);
  v178 = v154 - v68;
  v191 = type metadata accessor for ModifiedContent();
  v193 = *(v191 - 8);
  v69 = __chkstk_darwin(v191);
  v187 = v154 - ((v70 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v69);
  v190 = v154 - v71;
  static HorizontalAlignment.leading.getter();
  v73 = v215;
  v72 = v216;
  v224 = v216;
  v74 = v217;
  v225 = v217;
  v226 = v215;
  v75 = v205;
  VStack.init(alignment:spacing:content:)();
  static SafeAreaRegions.all.getter();
  static Edge.Set.all.getter();
  v76 = v199;
  v77 = v186;
  View.ignoresSafeArea(_:edges:)();
  (*(v210 + 8))(v75, v77);
  Solarium.init()();
  v221 = v72;
  v222 = v74;
  v223 = v73;
  swift_checkMetadataState();
  v78 = v155;
  View.staticIf<A, B>(_:then:)();
  (*(v211 + 8))(v76, v24);
  v199 = &StateObject.wrappedValue.getter;
  v79 = v212;
  sub_10010C758(v212, &StateObject.wrappedValue.getter, v80, v81);
  v82 = v194;
  sub_10015E948();

  v83 = v213;
  v84 = *(v213 + 16);
  v206 = v213 + 16;
  v207 = v84;
  v85 = v209;
  v84(v209, v73, v79);
  v86 = *(v83 + 80);
  v87 = (v86 + 32) & ~v86;
  v210 = v87;
  v211 = v86;
  v88 = swift_allocObject();
  v89 = v217;
  *(v88 + 16) = v216;
  *(v88 + 24) = v89;
  v205 = *(v83 + 32);
  v213 = v83 + 32;
  (v205)(v88 + v87, v85, v79);
  v90 = v158;
  View.onChange<A>(of:initial:_:)();

  sub_10011DFD8(v82, type metadata accessor for CompactDatePickerConfiguration);
  (*(v180 + 8))(v78, v90);
  v91 = v215;
  sub_10010C758(v79, v199, v92, v93);
  sub_10015E994();

  v94 = v85;
  v95 = v85;
  v96 = v79;
  v207(v95, v91, v79);
  v97 = v210;
  v98 = swift_allocObject();
  *(v98 + 16) = v216;
  *(v98 + 24) = v89;
  (v205)(v98 + v97, v94, v96);
  v100 = v167;
  v99 = v168;
  v101 = v202;
  View.onChange<A>(of:initial:_:)();

  sub_10011DFD8(v82, type metadata accessor for CompactDatePickerConfiguration);
  (*(v184 + 8))(v101, v99);
  v103 = v195;
  v102 = v196;
  v104 = v197;
  (*(v196 + 104))(v195, enum case for NavigationBarItem.TitleDisplayMode.inline(_:), v197);
  v106 = v161;
  v105 = v162;
  View.navigationBarTitleDisplayMode(_:)();
  (*(v102 + 8))(v103, v104);
  (*(v179 + 8))(v100, v105);
  v107 = v215;
  sub_10010C758(v96, v199, v108, v109);

  v110 = v166;
  v111 = v160;
  View.navigationBarTitle(_:)();

  (*(v181 + 8))(v106, v111);
  v218 = v216;
  v219 = v217;
  v220 = v107;
  v112 = v107;
  v113 = v157;
  v115 = v172;
  v114 = v173;
  v117 = v170;
  v116 = v171;
  View.toolbar<A>(content:)();
  (*(v177 + 8))(v110, v114);
  v235 = v114;
  v236 = v115;
  v237 = v116;
  v238 = v117;
  v118 = swift_getOpaqueTypeConformance2();
  v202 = v118;
  v208 = sub_10011C800();
  v119 = v165;
  v120 = sub_10007EFB4(&type metadata for FilterViewSafeAreaPreferenceKey, sub_1000D2498, 0, v165, &type metadata for FilterViewSafeAreaPreferenceKey, v118, v208);
  (*(v176 + 8))(v113, v119, v120);
  v121 = v209;
  v122 = v212;
  v123 = v207;
  v207(v209, v112, v212);
  v124 = v210;
  v125 = swift_allocObject();
  v126 = v216;
  v127 = v217;
  *(v125 + 16) = v216;
  *(v125 + 24) = v127;
  v128 = v205;
  (v205)(v125 + v124, v121, v122);
  v129 = sub_10000D1EC(&qword_10021FA00, &qword_10021F9F0, &qword_1001B7CB0, &unk_1001B3380);
  v233 = v202;
  v234 = v129;
  v130 = v175;
  v131 = swift_getWitnessTable();
  sub_10001E738();
  v132 = v200;
  View.onPreferenceChange<A>(_:perform:)();

  (*(v183 + 8))(v132, v130);
  v133 = v209;
  v134 = v212;
  v123(v209, v215, v212);
  v135 = v210;
  v136 = swift_allocObject();
  v137 = v217;
  *(v136 + 16) = v126;
  *(v136 + 24) = v137;
  v128(v136 + v135, v133, v134);
  v138 = sub_10000D1EC(&qword_10021FA08, &qword_10021F9F8, &qword_1001B7CB8, &protocol conformance descriptor for _PreferenceActionModifier<A>);
  v231 = v131;
  v232 = v138;
  v139 = v182;
  v140 = swift_getWitnessTable();
  v141 = v178;
  v142 = v203;
  View.onAppear(perform:)();

  (*(v189 + 8))(v142, v139);
  v143 = v212;
  v207(v133, v215, v212);
  v144 = v210;
  v145 = swift_allocObject();
  v146 = v217;
  *(v145 + 16) = v216;
  *(v145 + 24) = v146;
  (v205)(v145 + v144, v133, v143);
  v229 = v140;
  v230 = &protocol witness table for _AppearanceActionModifier;
  v147 = v188;
  v148 = swift_getWitnessTable();
  v149 = v187;
  View.onDisappear(perform:)();

  (*(v192 + 8))(v141, v147);
  v227 = v148;
  v228 = &protocol witness table for _AppearanceActionModifier;
  v150 = v191;
  swift_getWitnessTable();
  v151 = v190;
  sub_100157EFC();
  v152 = *(v193 + 8);
  v152(v149, v150);
  sub_100157EFC();
  return (v152)(v151, v150);
}

uint64_t sub_10010EE10@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v162 = a1;
  v154 = a4;
  v153 = sub_100009F70(&qword_10021FAE0, &unk_1001B7DA8);
  v152 = *(v153 - 8);
  __chkstk_darwin(v153);
  v132 = &v125 - v6;
  v7 = sub_100009F70(&qword_10021F970, &qword_1001B7C58);
  v8 = __chkstk_darwin(v7 - 8);
  v131 = &v125 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v128 = &v125 - v10;
  v130 = type metadata accessor for Divider();
  v129 = *(v130 - 8);
  v11 = __chkstk_darwin(v130);
  v127 = &v125 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v126 = &v125 - v13;
  v149 = sub_100009F70(&qword_10021F940, &qword_1001B7C38);
  v14 = __chkstk_darwin(v149);
  v151 = &v125 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v150 = &v125 - v16;
  v148 = type metadata accessor for ColorScheme();
  v147 = *(v148 - 8);
  v17 = __chkstk_darwin(v148);
  v146 = &v125 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v145 = &v125 - v19;
  v160 = sub_10000B3DC(&qword_10021F928, &qword_1001B7C18);
  v161 = sub_10000B3DC(&qword_10021F930, &qword_1001B7C20);
  swift_getAssociatedTypeWitness();
  v20 = type metadata accessor for Array();
  v157 = a3;
  v156 = a2;
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_10000B3DC(&qword_10021F938, &unk_1001B7C28);
  type metadata accessor for Set();
  swift_getWitnessTable();
  type metadata accessor for _AnimationModifier();
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent();
  type metadata accessor for AccessibilityAttachmentModifier();
  type metadata accessor for ModifiedContent();
  swift_getTupleTypeMetadata2();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  type metadata accessor for ZStack();
  swift_getWitnessTable();
  type metadata accessor for Button();
  v22 = type metadata accessor for ModifiedContent();
  WitnessTable = swift_getWitnessTable();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v170 = v20;
  v171 = AssociatedTypeWitness;
  v172 = v22;
  v173 = WitnessTable;
  v174 = AssociatedConformanceWitness;
  type metadata accessor for ForEach();
  v25 = swift_getWitnessTable();
  v26 = sub_10011C16C(&qword_100218698, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
  v168 = v25;
  v169 = v26;
  v167 = swift_getWitnessTable();
  swift_getWitnessTable();
  type metadata accessor for LazyVGrid();
  swift_getWitnessTable();
  v27 = type metadata accessor for ScrollView();
  v28 = swift_getWitnessTable();
  v170 = v27;
  v171 = v28;
  swift_getOpaqueTypeMetadata2();
  type metadata accessor for ModifiedContent();
  swift_getTupleTypeMetadata2();
  type metadata accessor for TupleView();
  type metadata accessor for Optional();
  swift_getTupleTypeMetadata3();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  type metadata accessor for VStack();
  v133 = swift_getWitnessTable();
  v29 = type metadata accessor for ScrollView();
  v134 = *(v29 - 8);
  __chkstk_darwin(v29);
  v31 = &v125 - v30;
  v32 = type metadata accessor for ModifiedContent();
  v135 = *(v32 - 8);
  __chkstk_darwin(v32);
  v158 = &v125 - v33;
  v34 = type metadata accessor for ModifiedContent();
  v137 = *(v34 - 8);
  __chkstk_darwin(v34);
  v136 = &v125 - v35;
  v36 = type metadata accessor for ModifiedContent();
  v140 = *(v36 - 8);
  __chkstk_darwin(v36);
  v138 = &v125 - v37;
  sub_10000B3DC(&qword_1002188F8, &unk_1001ADC20);
  v141 = v36;
  v161 = type metadata accessor for ModifiedContent();
  v159 = *(v161 - 8);
  v38 = __chkstk_darwin(v161);
  v144 = &v125 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = __chkstk_darwin(v38);
  v139 = &v125 - v41;
  __chkstk_darwin(v40);
  v160 = &v125 - v42;
  v43 = sub_100009F70(&qword_100219C30, &qword_1001AECE0);
  v44 = *(v43 - 8);
  __chkstk_darwin(v43);
  v46 = &v125 - v45;
  v142 = sub_100009F70(&qword_10021F920, &qword_1001B7C10);
  v47 = __chkstk_darwin(v142);
  v143 = &v125 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v47);
  v50 = &v125 - v49;
  v51 = static Solarium.isEnabled.getter();
  v155 = v50;
  if (v51)
  {
    v52 = 1;
  }

  else
  {
    Divider.init()();
    v53 = static Edge.Set.top.getter();
    v55 = type metadata accessor for FilterView(0, v156, v157, v54);
    sub_10010C758(v55, &StateObject.wrappedValue.getter, v56, v57);
    sub_10015E890();
    v50 = v155;

    EdgeInsets.init(_all:)();
    v58 = &v46[*(v43 + 36)];
    *v58 = v53;
    *(v58 + 1) = v59;
    *(v58 + 2) = v60;
    *(v58 + 3) = v61;
    *(v58 + 4) = v62;
    v58[40] = 0;
    sub_10000F618(v46, v50, &qword_100219C30, &qword_1001AECE0);
    v52 = 0;
  }

  v63 = (*(v44 + 56))(v50, v52, 1, v43);
  __chkstk_darwin(v63);
  v64 = v156;
  v65 = v157;
  *(&v125 - 4) = v156;
  *(&v125 - 3) = v65;
  *(&v125 - 2) = v162;
  static Axis.Set.vertical.getter();
  ScrollView.init(_:showsIndicators:content:)();
  static Edge.Set.top.getter();
  v67 = v64;
  if (static Solarium.isEnabled.getter())
  {
    v68 = type metadata accessor for FilterView(0, v64, v65, v66);
    sub_10010C758(v68, &StateObject.wrappedValue.getter, v69, v70);
    sub_10015E890();
  }

  v71 = swift_getWitnessTable();
  View.padding(_:_:)();
  (*(v134 + 8))(v31, v29);
  sub_100009F70(&qword_100218DC0, &qword_1001AD860);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1001ACB00;
  v73 = static Edge.Set.leading.getter();
  *(inited + 32) = v73;
  v74 = static Edge.Set.trailing.getter();
  *(inited + 33) = v74;
  v75 = Edge.Set.init(rawValue:)();
  Edge.Set.init(rawValue:)();
  if (Edge.Set.init(rawValue:)() != v73)
  {
    v75 = Edge.Set.init(rawValue:)();
  }

  Edge.Set.init(rawValue:)();
  if (Edge.Set.init(rawValue:)() != v74)
  {
    v75 = Edge.Set.init(rawValue:)();
  }

  v77 = type metadata accessor for FilterView(0, v67, v65, v76);
  sub_10010C758(v77, &StateObject.wrappedValue.getter, v78, v79);
  v80 = sub_10015E890();
  v82 = v81;
  v84 = v83;
  v86 = v85;

  v166[9] = v71;
  v166[10] = &protocol witness table for _PaddingLayout;
  v87 = swift_getWitnessTable();
  v88 = v136;
  v89 = v158;
  sub_10007F05C(v75, v32, v87, v80, v82, v84, v86);
  (*(v135 + 8))(v89, v32);
  static Edge.Set.horizontal.getter();
  v90 = sub_10011C6F4();
  v166[7] = v87;
  v166[8] = v90;
  v91 = swift_getWitnessTable();
  v92 = v138;
  View.padding(_:_:)();
  (*(v137 + 8))(v88, v34);
  v93 = v145;
  sub_100024640(v145);
  v94 = v147;
  v95 = v146;
  v96 = v148;
  (*(v147 + 104))(v146, enum case for ColorScheme.light(_:), v148);
  LOBYTE(v89) = static ColorScheme.== infix(_:_:)();
  v97 = *(v94 + 8);
  v97(v95, v96);
  v97(v93, v96);
  if (v89)
  {
    if (qword_100218348 != -1)
    {
      swift_once();
    }

    v98 = &qword_100230580;
  }

  else
  {
    if (qword_100218328 != -1)
    {
      swift_once();
    }

    v98 = &qword_100230560;
  }

  v99 = *v98;

  v170 = v99;
  static Edge.Set.all.getter();
  v166[5] = v91;
  v166[6] = &protocol witness table for _PaddingLayout;
  v100 = v141;
  v101 = swift_getWitnessTable();
  v102 = v139;
  View.background<A>(_:ignoresSafeAreaEdges:)();

  (*(v140 + 8))(v92, v100);
  v103 = sub_10000D1EC(&qword_1002188F0, &qword_1002188F8, &unk_1001ADC20, &protocol conformance descriptor for _BackgroundStyleModifier<A>);
  v166[3] = v101;
  v166[4] = v103;
  v104 = v161;
  v157 = swift_getWitnessTable();
  sub_100157EFC();
  v158 = *(v159 + 8);
  (v158)(v102, v104);
  if (static Solarium.isEnabled.getter())
  {
    v105 = 1;
    v106 = v150;
  }

  else
  {
    v107 = v126;
    Divider.init()();
    v108 = v128;
    sub_10011577C(v77, v128);
    v109 = v129;
    v110 = *(v129 + 16);
    v111 = v127;
    v112 = v130;
    v110(v127, v107, v130);
    v113 = v131;
    sub_10000D58C(v108, v131, &qword_10021F970, &qword_1001B7C58);
    v114 = v132;
    v110(v132, v111, v112);
    v115 = sub_100009F70(&qword_10021FAE8, &qword_1001B7DB8);
    sub_10000D58C(v113, v114 + *(v115 + 48), &qword_10021F970, &qword_1001B7C58);
    sub_10000D52C(v108, &qword_10021F970, &qword_1001B7C58);
    v116 = *(v109 + 8);
    v116(v107, v112);
    sub_10000D52C(v113, &qword_10021F970, &qword_1001B7C58);
    v116(v111, v112);
    v106 = v150;
    sub_10000F618(v114, v150, &qword_10021FAE0, &unk_1001B7DA8);
    v105 = 0;
  }

  (*(v152 + 56))(v106, v105, 1, v153);
  v117 = v155;
  v118 = v143;
  sub_10000D58C(v155, v143, &qword_10021F920, &qword_1001B7C10);
  v170 = v118;
  v119 = v144;
  v120 = v160;
  v121 = v161;
  (*(v159 + 16))(v144, v160, v161);
  v171 = v119;
  v122 = v151;
  sub_10000D58C(v106, v151, &qword_10021F940, &qword_1001B7C38);
  v172 = v122;
  v166[0] = v142;
  v166[1] = v121;
  v166[2] = v149;
  v163 = sub_10011D010();
  v164 = v157;
  v165 = sub_10011D150();
  sub_100151024(&v170, 3uLL, v166);
  sub_10000D52C(v106, &qword_10021F940, &qword_1001B7C38);
  v123 = v158;
  (v158)(v120, v121);
  sub_10000D52C(v117, &qword_10021F920, &qword_1001B7C10);
  sub_10000D52C(v122, &qword_10021F940, &qword_1001B7C38);
  v123(v119, v121);
  return sub_10000D52C(v118, &qword_10021F920, &qword_1001B7C10);
}

uint64_t sub_100110394@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v15 = a3;
  v16 = a1;
  v17 = a4;
  v14[1] = sub_10000B3DC(&qword_10021F928, &qword_1001B7C18);
  v14[2] = sub_10000B3DC(&qword_10021F930, &qword_1001B7C20);
  swift_getAssociatedTypeWitness();
  type metadata accessor for Array();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  sub_10000B3DC(&qword_10021F938, &unk_1001B7C28);
  type metadata accessor for Set();
  swift_getWitnessTable();
  type metadata accessor for _AnimationModifier();
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent();
  type metadata accessor for AccessibilityAttachmentModifier();
  type metadata accessor for ModifiedContent();
  swift_getTupleTypeMetadata2();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  type metadata accessor for ZStack();
  swift_getWitnessTable();
  type metadata accessor for Button();
  v26 = type metadata accessor for ModifiedContent();
  WitnessTable = swift_getWitnessTable();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  type metadata accessor for ForEach();
  v22 = swift_getWitnessTable();
  v23 = sub_10011C16C(&qword_100218698, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
  v21 = swift_getWitnessTable();
  swift_getWitnessTable();
  type metadata accessor for LazyVGrid();
  swift_getWitnessTable();
  v24 = type metadata accessor for ScrollView();
  v25 = swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  type metadata accessor for ModifiedContent();
  swift_getTupleTypeMetadata2();
  type metadata accessor for TupleView();
  type metadata accessor for Optional();
  swift_getTupleTypeMetadata3();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  v5 = type metadata accessor for VStack();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = v14 - v10;
  static HorizontalAlignment.leading.getter();
  v18 = a2;
  v19 = v15;
  v20 = v16;
  VStack.init(alignment:spacing:content:)();
  swift_getWitnessTable();
  sub_100157EFC();
  v12 = *(v6 + 8);
  v12(v9, v5);
  sub_100157EFC();
  return (v12)(v11, v5);
}

uint64_t sub_100110944@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void (*a3)(void, void)@<X2>, uint64_t a4@<X8>)
{
  v182 = a2;
  v183 = a3;
  v181 = a1;
  v171 = a4;
  v186 = sub_10000B3DC(&qword_10021F928, &qword_1001B7C18);
  swift_getAssociatedTypeWitness();
  type metadata accessor for Array();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  sub_10000B3DC(&qword_10021F938, &unk_1001B7C28);
  type metadata accessor for Set();
  swift_getWitnessTable();
  type metadata accessor for _AnimationModifier();
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent();
  type metadata accessor for AccessibilityAttachmentModifier();
  type metadata accessor for ModifiedContent();
  swift_getTupleTypeMetadata2();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  type metadata accessor for ZStack();
  swift_getWitnessTable();
  type metadata accessor for Button();
  *&v224 = type metadata accessor for ModifiedContent();
  *(&v224 + 1) = swift_getWitnessTable();
  *&v225 = swift_getAssociatedConformanceWitness();
  type metadata accessor for ForEach();
  WitnessTable = swift_getWitnessTable();
  v161 = sub_10011C16C(&qword_100218698, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
  v219 = v161;
  v217 = swift_getWitnessTable();
  swift_getWitnessTable();
  v155 = type metadata accessor for LazyVGrid();
  v156 = swift_getWitnessTable();
  *&v223 = type metadata accessor for ScrollView();
  v158 = swift_getWitnessTable();
  *(&v223 + 1) = v158;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v5 = type metadata accessor for ModifiedContent();
  swift_getTupleTypeMetadata2();
  v6 = type metadata accessor for TupleView();
  v168 = *(v6 - 8);
  __chkstk_darwin(v6);
  v160 = &v141 - v7;
  v8 = type metadata accessor for ContentMarginPlacement();
  v151 = *(v8 - 8);
  v152 = v8;
  __chkstk_darwin(v8);
  v148 = &v141 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v149 = swift_checkMetadataState();
  v146 = *(v149 - 8);
  v10 = __chkstk_darwin(v149);
  v145 = &v141 - v11;
  v159 = OpaqueTypeMetadata2;
  v150 = *(OpaqueTypeMetadata2 - 8);
  v12 = __chkstk_darwin(v10);
  v147 = &v141 - v13;
  v162 = v5;
  v153 = *(v5 - 8);
  v14 = __chkstk_darwin(v12);
  v157 = &v141 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v154 = &v141 - v16;
  v170 = v6;
  v169 = type metadata accessor for Optional();
  v177 = *(v169 - 8);
  v17 = __chkstk_darwin(v169);
  v179 = &v141 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v178 = &v141 - v19;
  v166 = sub_100009F70(&qword_10021FB18, &qword_1001B7DC0);
  __chkstk_darwin(v166);
  v165 = &v141 - v20;
  v175 = sub_100009F70(&qword_10021F930, &qword_1001B7C20);
  v21 = __chkstk_darwin(v175);
  v167 = &v141 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v176 = &v141 - v23;
  v173 = type metadata accessor for AccessibilityTraits();
  v180 = *(v173 - 8);
  v24 = __chkstk_darwin(v173);
  v172 = &v141 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __chkstk_darwin(v24);
  v144 = &v141 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = __chkstk_darwin(v26);
  v174 = &v141 - v29;
  v30 = __chkstk_darwin(v28);
  v185 = &v141 - v31;
  __chkstk_darwin(v30);
  v184 = &v141 - v32;
  v163 = type metadata accessor for FilterView(0, v182, v183, v33);
  v164 = &StateObject.wrappedValue.getter;
  sub_10010C758(v163, &StateObject.wrappedValue.getter, v34, v35);

  LOWORD(v140) = 256;
  v139 = 0;
  v36 = Text.init(_:tableName:bundle:comment:)();
  v38 = v37;
  v40 = v39;
  static Font.Weight.semibold.getter();
  v41 = Text.fontWeight(_:)();
  v43 = v42;
  v45 = v44;
  sub_10000D60C(v36, v38, v40 & 1);

  static Font.title2.getter();
  v46 = Text.font(_:)();
  v48 = v47;
  v50 = v49;
  v52 = v51;

  sub_10000D60C(v41, v43, v45 & 1);

  static Alignment.leading.getter();
  _FrameLayout.init(width:height:alignment:)();
  LOBYTE(v207) = v50 & 1;
  v53 = static Edge.Set.top.getter();
  EdgeInsets.init(_all:)();
  v55 = v54;
  v57 = v56;
  v59 = v58;
  v61 = v60;
  LOBYTE(v223) = 0;
  LOBYTE(v41) = static Edge.Set.bottom.getter();
  EdgeInsets.init(_all:)();
  LOBYTE(v193) = 0;
  *&v207 = v46;
  *(&v207 + 1) = v48;
  LOBYTE(v208) = v50 & 1;
  v62 = v185;
  *(&v208 + 1) = v52;
  v209 = v220;
  v210 = v221;
  v211 = v222;
  LOBYTE(v212) = v53;
  *(&v212 + 1) = v55;
  *&v213 = v57;
  *(&v213 + 1) = v59;
  *&v214 = v61;
  BYTE8(v214) = 0;
  LOBYTE(v215) = v41;
  *(&v215 + 1) = v63;
  *&v216[0] = v64;
  *(&v216[0] + 1) = v65;
  *&v216[1] = v66;
  BYTE8(v216[1]) = 0;
  v67 = v172;
  static AccessibilityTraits.isHeader.getter();
  v68 = sub_100009F70(&qword_10021FB20, &qword_1001B7DC8);
  v69 = sub_10011D20C();
  v70 = v174;
  v143 = v69;
  View.accessibilityAddTraits(_:)();
  v71 = *(v180 + 8);
  v180 += 8;
  v142 = v71;
  v71(v67, v173);
  v231 = v215;
  v232[0] = v216[0];
  *(v232 + 9) = *(v216 + 9);
  v227 = v211;
  v228 = v212;
  v230 = v214;
  v229 = v213;
  v223 = v207;
  v224 = v208;
  v225 = v209;
  v226 = v210;
  sub_10000D52C(&v223, &qword_10021FB20, &qword_1001B7DC8);
  ModifiedContent<>.accessibilityHeading(_:)();
  sub_10000D52C(v70, &qword_10021F928, &qword_1001B7C18);
  ModifiedContent<>.accessibilityIdentifier(_:)();
  sub_10000D52C(v62, &qword_10021F928, &qword_1001B7C18);
  v187 = v182;
  v188 = v183;
  v189 = v181;
  sub_100112D74(v182, v183, v165);
  sub_100009F70(&qword_10021FB50, &qword_1001B7DE0);
  sub_10011D3C0();
  sub_10011D648();
  v72 = v176;
  Section<>.init(header:content:)();
  v73 = static Edge.Set.bottom.getter();
  v74 = v72 + *(v175 + 36);
  *v74 = v73;
  *(v74 + 8) = 0u;
  *(v74 + 24) = 0u;
  *(v74 + 40) = 1;
  v75 = v163;
  sub_10010C758(v163, v164, v76, v77);
  LOBYTE(v70) = sub_10015F69C();

  if (v70)
  {
    sub_10010C758(v75, &StateObject.wrappedValue.getter, v78, v79);

    LOWORD(v140) = 256;
    v80 = Text.init(_:tableName:bundle:comment:)();
    v82 = v81;
    v84 = v83;
    static Font.Weight.semibold.getter();
    v85 = Text.fontWeight(_:)();
    v87 = v86;
    v89 = v88;
    v166 = v68;
    sub_10000D60C(v80, v82, v84 & 1);

    static Font.title2.getter();
    v90 = Text.font(_:)();
    v92 = v91;
    v94 = v93;
    v96 = v95;

    sub_10000D60C(v85, v87, v89 & 1);

    static Alignment.leading.getter();
    _FrameLayout.init(width:height:alignment:)();
    LOBYTE(v193) = v94 & 1;
    v97 = static Edge.Set.bottom.getter();
    EdgeInsets.init(_all:)();
    v99 = v98;
    v101 = v100;
    v103 = v102;
    v105 = v104;
    LOBYTE(v207) = 0;
    LOBYTE(v85) = static Edge.Set.top.getter();
    EdgeInsets.init(_all:)();
    LOBYTE(v192[0]) = 0;
    *&v193 = v90;
    *(&v193 + 1) = v92;
    LOBYTE(v194) = v94 & 1;
    *(&v194 + 1) = v96;
    v195 = v203;
    v196 = v204;
    v197 = v205;
    LOBYTE(v198) = v97;
    *(&v198 + 1) = v99;
    *&v199 = v101;
    *(&v199 + 1) = v103;
    *&v200 = v105;
    BYTE8(v200) = 0;
    LOBYTE(v201) = v85;
    *(&v201 + 1) = v106;
    *&v202[0] = v107;
    *(&v202[0] + 1) = v108;
    *&v202[1] = v109;
    BYTE8(v202[1]) = 0;
    v110 = v172;
    static AccessibilityTraits.isHeader.getter();
    v111 = v144;
    View.accessibilityAddTraits(_:)();
    v142(v110, v173);
    v215 = v201;
    v216[0] = v202[0];
    *(v216 + 9) = *(v202 + 9);
    v211 = v197;
    v212 = v198;
    v213 = v199;
    v214 = v200;
    v207 = v193;
    v208 = v194;
    v209 = v195;
    v210 = v196;
    sub_10000D52C(&v207, &qword_10021FB20, &qword_1001B7DC8);
    v112 = v174;
    ModifiedContent<>.accessibilityHeading(_:)();
    sub_10000D52C(v111, &qword_10021F928, &qword_1001B7C18);
    ModifiedContent<>.accessibilityIdentifier(_:)();
    v113 = sub_10000D52C(v112, &qword_10021F928, &qword_1001B7C18);
    __chkstk_darwin(v113);
    v114 = v183;
    *(&v141 - 4) = v182;
    *(&v141 - 3) = v114;
    v139 = v181;
    static Axis.Set.vertical.getter();
    swift_checkMetadataState();
    v115 = v145;
    ScrollView.init(_:showsIndicators:content:)();
    static Edge.Set.bottom.getter();
    v116 = v148;
    static ContentMarginPlacement.scrollContent.getter();
    v117 = v147;
    v118 = v149;
    v119 = v158;
    View.contentMargins(_:_:for:)();
    (*(v151 + 8))(v116, v152);
    (*(v146 + 8))(v115, v118);
    *&v193 = v118;
    *(&v193 + 1) = v119;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v121 = v157;
    v122 = v159;
    View.accessibilityIdentifier(_:)();
    (*(v150 + 8))(v117, v122);
    v123 = v162;
    v192[2] = OpaqueTypeConformance2;
    v192[3] = v161;
    v124 = swift_getWitnessTable();
    v125 = v154;
    sub_100157EFC();
    v126 = v153;
    v127 = *(v153 + 8);
    v127(v121, v123);
    sub_10000D58C(v185, v112, &qword_10021F928, &qword_1001B7C18);
    *&v193 = v112;
    (*(v126 + 16))(v121, v125, v123);
    *(&v193 + 1) = v121;
    v192[0] = v186;
    v192[1] = v123;
    v190 = sub_10011CF44(&qword_10021FB98, &qword_10021F928, &qword_1001B7C18, sub_10011D20C);
    v191 = v124;
    v128 = v160;
    sub_100151024(&v193, 2uLL, v192);
    v127(v125, v123);
    sub_10000D52C(v185, &qword_10021F928, &qword_1001B7C18);
    v127(v121, v123);
    v62 = v185;
    sub_10000D52C(v174, &qword_10021F928, &qword_1001B7C18);
    v129 = v168;
    v130 = v179;
    v131 = v170;
    (*(v168 + 32))(v179, v128, v170);
    (*(v129 + 56))(v130, 0, 1, v131);
  }

  else
  {
    v130 = v179;
    (*(v168 + 56))(v179, 1, 1, v170);
  }

  swift_getWitnessTable();
  sub_100150FB8(v130, v178);
  v132 = v169;
  v183 = *(v177 + 8);
  v183(v130, v169);
  sub_10000D58C(v184, v62, &qword_10021F928, &qword_1001B7C18);
  *&v207 = v62;
  v133 = v176;
  v134 = v167;
  sub_10000D58C(v176, v167, &qword_10021F930, &qword_1001B7C20);
  *(&v207 + 1) = v134;
  v135 = v178;
  v136 = v179;
  (*(v177 + 16))(v179, v178, v132);
  *&v208 = v136;
  *&v193 = v186;
  *(&v193 + 1) = v175;
  *&v194 = v132;
  *&v203 = sub_10011CF44(&qword_10021FB98, &qword_10021F928, &qword_1001B7C18, sub_10011D20C);
  *(&v203 + 1) = sub_10011D700();
  v206 = swift_getWitnessTable();
  *&v204 = swift_getWitnessTable();
  sub_100151024(&v207, 3uLL, &v193);
  v137 = v183;
  v183(v135, v132);
  sub_10000D52C(v133, &qword_10021F930, &qword_1001B7C20);
  sub_10000D52C(v184, &qword_10021F928, &qword_1001B7C18);
  v137(v136, v132);
  sub_10000D52C(v134, &qword_10021F930, &qword_1001B7C20);
  return sub_10000D52C(v185, &qword_10021F928, &qword_1001B7C18);
}

uint64_t sub_100111ECC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  *a4 = static Alignment.center.getter();
  a4[1] = v8;
  v9 = sub_100009F70(&qword_10021FBE8, &qword_1001B7E68);
  sub_100111F90(a1, a2, a3, a4 + *(v9 + 44));
  LOBYTE(a3) = static Edge.Set.top.getter();
  EdgeInsets.init(_all:)();
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  result = sub_100009F70(&qword_10021FB50, &qword_1001B7DE0);
  v19 = a4 + *(result + 36);
  *v19 = a3;
  *(v19 + 1) = v11;
  *(v19 + 2) = v13;
  *(v19 + 3) = v15;
  *(v19 + 4) = v17;
  v19[40] = 0;
  return result;
}

uint64_t sub_100111F90@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v54 = a2;
  v55 = a3;
  v52 = a4;
  v53 = a1;
  v50 = sub_100009F70(&qword_10021FBF0, &unk_1001B7E70);
  v4 = __chkstk_darwin(v50);
  v51 = &v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v7 = &v48 - v6;
  v8 = type metadata accessor for ColorScheme();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = &v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v48 - v13;
  v15 = type metadata accessor for RoundedRectangle();
  v16 = v15 - 8;
  __chkstk_darwin(v15);
  v18 = (&v48 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v48 = sub_100009F70(&qword_10021DF10, &qword_1001B57C0);
  v19 = __chkstk_darwin(v48);
  v49 = &v48 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __chkstk_darwin(v19);
  v23 = &v48 - v22;
  __chkstk_darwin(v21);
  v25 = &v48 - v24;
  if (static Solarium.isEnabled.getter())
  {
    v26 = 16.0;
  }

  else
  {
    v26 = 8.0;
  }

  v27 = *(v16 + 28);
  v28 = enum case for RoundedCornerStyle.continuous(_:);
  v29 = type metadata accessor for RoundedCornerStyle();
  (*(*(v29 - 8) + 104))(v18 + v27, v28, v29);
  *v18 = v26;
  v18[1] = v26;
  type metadata accessor for FilterView(0, v54, v55, v30);
  sub_100024640(v14);
  (*(v9 + 104))(v12, enum case for ColorScheme.light(_:), v8);
  LOBYTE(v28) = static ColorScheme.== infix(_:_:)();
  v31 = *(v9 + 8);
  v31(v12, v8);
  v31(v14, v8);
  if (v28)
  {
    if (qword_100218328 != -1)
    {
      swift_once();
    }

    v32 = &qword_100230560;
  }

  else
  {
    if (qword_100218348 != -1)
    {
      swift_once();
    }

    v32 = &qword_100230580;
  }

  v33 = *v32;

  KeyPath = swift_getKeyPath();
  sub_10011F268(v18, v23, &type metadata accessor for RoundedRectangle);
  v35 = &v23[*(v48 + 36)];
  *v35 = KeyPath;
  v35[1] = v33;
  sub_10000F618(v23, v25, &qword_10021DF10, &qword_1001B57C0);
  *v7 = static HorizontalAlignment.center.getter();
  *(v7 + 1) = 0;
  v7[16] = 0;
  v36 = sub_100009F70(&qword_10021FBF8, &qword_1001B7EB0);
  sub_100112508(v54, v55, &v7[*(v36 + 44)]);
  LOBYTE(KeyPath) = static Edge.Set.horizontal.getter();
  v37 = &v7[*(sub_100009F70(&qword_10021FC00, &qword_1001B7EB8) + 36)];
  *v37 = KeyPath;
  *(v37 + 8) = 0u;
  *(v37 + 24) = 0u;
  v37[40] = 1;
  LOBYTE(KeyPath) = static Edge.Set.vertical.getter();
  EdgeInsets.init(_all:)();
  v38 = v49;
  v39 = &v7[*(v50 + 36)];
  *v39 = KeyPath;
  *(v39 + 1) = v40;
  *(v39 + 2) = v41;
  *(v39 + 3) = v42;
  *(v39 + 4) = v43;
  v39[40] = 0;
  sub_10000D58C(v25, v38, &qword_10021DF10, &qword_1001B57C0);
  v44 = v51;
  sub_10000D58C(v7, v51, &qword_10021FBF0, &unk_1001B7E70);
  v45 = v52;
  sub_10000D58C(v38, v52, &qword_10021DF10, &qword_1001B57C0);
  v46 = sub_100009F70(&qword_10021FC08, &qword_1001B7EC0);
  sub_10000D58C(v44, v45 + *(v46 + 48), &qword_10021FBF0, &unk_1001B7E70);
  sub_10000D52C(v7, &qword_10021FBF0, &unk_1001B7E70);
  sub_10000D52C(v25, &qword_10021DF10, &qword_1001B57C0);
  sub_10000D52C(v44, &qword_10021FBF0, &unk_1001B7E70);
  return sub_10000D52C(v38, &qword_10021DF10, &qword_1001B57C0);
}

uint64_t sub_100112508@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v88 = a3;
  v87 = type metadata accessor for Divider();
  v86 = *(v87 - 8);
  v5 = __chkstk_darwin(v87);
  v85 = &v79 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v91 = &v79 - v7;
  v8 = type metadata accessor for CompactDatePicker(0);
  v9 = (v8 - 8);
  v10 = __chkstk_darwin(v8);
  v84 = &v79 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v90 = &v79 - v13;
  v14 = __chkstk_darwin(v12);
  v92 = &v79 - v15;
  __chkstk_darwin(v14);
  v17 = &v79 - v16;
  v19 = type metadata accessor for FilterView(0, a1, a2, v18);
  sub_10010C758(v19, &StateObject.projectedValue.getter, v20, v21);
  v107 = a1;
  v108 = a2;
  swift_getKeyPath();
  type metadata accessor for FilterViewModel(255, a1, a2, v22);
  swift_getWitnessTable();
  ObservedObject.Wrapper.subscript.getter();

  sub_10010C758(v19, &StateObject.projectedValue.getter, v23, v24);
  v105 = a1;
  v106 = a2;
  swift_getKeyPath();
  ObservedObject.Wrapper.subscript.getter();

  v81 = &StateObject.projectedValue.getter;
  sub_10010C758(v19, &StateObject.projectedValue.getter, v25, v26);
  v103 = a1;
  v104 = a2;
  v82 = a2;
  swift_getKeyPath();
  ObservedObject.Wrapper.subscript.getter();

  sub_10010C758(v19, &StateObject.projectedValue.getter, v27, v28);
  v101 = a1;
  v102 = a2;
  swift_getKeyPath();
  ObservedObject.Wrapper.subscript.getter();

  v29 = v109;
  v80 = v110;
  v30 = v111;
  sub_10010C758(v19, &StateObject.wrappedValue.getter, v31, v32);
  sub_10015EBC0(&v17[v9[10]]);

  v83 = &StateObject.wrappedValue.getter;
  sub_10010C758(v19, &StateObject.wrappedValue.getter, v33, v34);
  v35 = sub_10015EE5C();

  sub_10010C758(v19, &StateObject.wrappedValue.getter, v36, v37);
  v38 = sub_10015EEF8();

  v39 = v9[9];
  v89 = v17;
  v40 = &v17[v39];
  v41 = v80;
  *v40 = v29;
  *(v40 + 1) = v41;
  *(v40 + 2) = v30;
  *&v17[v9[11]] = v35;
  v17[v9[12]] = v38;
  Divider.init()();
  v42 = v81;
  sub_10010C758(v19, v81, v43, v44);
  v99 = a1;
  v45 = v82;
  v100 = v82;
  swift_getKeyPath();
  ObservedObject.Wrapper.subscript.getter();

  sub_10010C758(v19, v42, v46, v47);
  v97 = a1;
  v98 = v45;
  swift_getKeyPath();
  ObservedObject.Wrapper.subscript.getter();

  sub_10010C758(v19, v42, v48, v49);
  v95 = a1;
  v96 = v45;
  swift_getKeyPath();
  ObservedObject.Wrapper.subscript.getter();

  sub_10010C758(v19, v42, v50, v51);
  v93 = a1;
  v94 = v45;
  swift_getKeyPath();
  ObservedObject.Wrapper.subscript.getter();

  v52 = v109;
  v53 = v110;
  v54 = v111;
  v55 = v83;
  sub_10010C758(v19, v83, v56, v57);
  v58 = v92;
  sub_10015F0A4((v92 + v9[10]));

  sub_10010C758(v19, v55, v59, v60);
  sub_10015F350();
  v62 = v61;

  sub_10010C758(v19, v55, v63, v64);
  LOBYTE(v55) = sub_10015F418();

  v65 = (v58 + v9[9]);
  *v65 = v52;
  v65[1] = v53;
  v65[2] = v54;
  *(v58 + v9[11]) = v62;
  *(v58 + v9[12]) = v55 & 1;
  v66 = v58;
  v67 = v90;
  sub_10011DF70(v89, v90, type metadata accessor for CompactDatePicker);
  v68 = v86;
  v69 = *(v86 + 16);
  v70 = v85;
  v71 = v91;
  v72 = v87;
  v69(v85, v91, v87);
  v73 = v66;
  v74 = v84;
  sub_10011DF70(v73, v84, type metadata accessor for CompactDatePicker);
  v75 = v88;
  sub_10011DF70(v67, v88, type metadata accessor for CompactDatePicker);
  v76 = sub_100009F70(&qword_10021FC10, &qword_1001B7FA8);
  v69((v75 + *(v76 + 48)), v70, v72);
  sub_10011DF70(v74, v75 + *(v76 + 64), type metadata accessor for CompactDatePicker);
  sub_10011DFD8(v92, type metadata accessor for CompactDatePicker);
  v77 = *(v68 + 8);
  v77(v71, v72);
  sub_10011DFD8(v89, type metadata accessor for CompactDatePicker);
  sub_10011DFD8(v74, type metadata accessor for CompactDatePicker);
  v77(v70, v72);
  return sub_10011DFD8(v90, type metadata accessor for CompactDatePicker);
}

uint64_t sub_100112D74@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v48 = a3;
  v47 = type metadata accessor for AccessibilityTraits();
  v46 = *(v47 - 8);
  __chkstk_darwin(v47);
  v6 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = sub_100009F70(&qword_10021FBE0, &qword_1001B7E30);
  v44 = *(v45 - 8);
  __chkstk_darwin(v45);
  v8 = &v42 - v7;
  v43 = sub_100009F70(&qword_10021FB18, &qword_1001B7DC0);
  __chkstk_darwin(v43);
  v10 = &v42 - v9;
  v12 = type metadata accessor for FilterView(0, a1, a2, v11);
  v15 = sub_10010C758(v12, &StateObject.wrappedValue.getter, v13, v14);
  v16 = (v15 + *(*v15 + 216));
  v18 = *v16;
  v17 = v16[1];

  *&v56[0] = v18;
  *(&v56[0] + 1) = v17;
  sub_100027068();
  v19 = Text.init<A>(_:)();
  v21 = v20;
  LOBYTE(v18) = v22;
  v24 = v23;
  v25 = static Edge.Set.bottom.getter();
  EdgeInsets.init(_all:)();
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v34 = v18 & 1;
  LOBYTE(v56[0]) = v18 & 1;
  LOBYTE(v49) = 0;
  if (qword_100218338 != -1)
  {
    swift_once();
  }

  v35 = qword_100230570;

  v36 = static Font.caption.getter();
  KeyPath = swift_getKeyPath();
  *&v49 = v19;
  *(&v49 + 1) = v21;
  LOBYTE(v50) = v34;
  *(&v50 + 1) = v24;
  LOBYTE(v51) = v25;
  *(&v51 + 1) = v27;
  *&v52 = v29;
  *(&v52 + 1) = v31;
  *&v53 = v33;
  BYTE8(v53) = 0;
  *&v54 = v35;
  *(&v54 + 1) = KeyPath;
  v55 = v36;
  static Font.Weight.semibold.getter();
  v38 = sub_100009F70(&qword_10021FB60, &qword_1001B7DE8);
  v39 = sub_10011D4B8();
  View.fontWeight(_:)();
  v56[4] = v53;
  v56[5] = v54;
  v57 = v55;
  v56[0] = v49;
  v56[1] = v50;
  v56[2] = v51;
  v56[3] = v52;
  sub_10000D52C(v56, &qword_10021FB60, &qword_1001B7DE8);
  static AccessibilityTraits.isHeader.getter();
  *&v49 = v38;
  *(&v49 + 1) = v39;
  swift_getOpaqueTypeConformance2();
  v40 = v45;
  View.accessibilityRemoveTraits(_:)();
  (*(v46 + 8))(v6, v47);
  (*(v44 + 8))(v8, v40);
  ModifiedContent<>.accessibilityIdentifier(_:)();
  return sub_10000D52C(v10, &qword_10021FB18, &qword_1001B7DC0);
}

uint64_t sub_100113228@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v31 = a1;
  v33 = a4;
  v6 = type metadata accessor for PinnedScrollableViews();
  __chkstk_darwin(v6 - 8);
  v32 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getAssociatedTypeWitness();
  v8 = type metadata accessor for Array();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_10000B3DC(&qword_10021F938, &unk_1001B7C28);
  type metadata accessor for Set();
  swift_getWitnessTable();
  type metadata accessor for _AnimationModifier();
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent();
  type metadata accessor for AccessibilityAttachmentModifier();
  type metadata accessor for ModifiedContent();
  swift_getTupleTypeMetadata2();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  type metadata accessor for ZStack();
  swift_getWitnessTable();
  type metadata accessor for Button();
  v10 = type metadata accessor for ModifiedContent();
  WitnessTable = swift_getWitnessTable();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v40 = v8;
  v41 = AssociatedTypeWitness;
  v42 = v10;
  v43 = WitnessTable;
  v44 = AssociatedConformanceWitness;
  v13 = type metadata accessor for ForEach();
  v14 = swift_getWitnessTable();
  v15 = sub_10011C16C(&qword_100218698, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
  v38 = v14;
  v39 = v15;
  v37 = swift_getWitnessTable();
  v30 = v13;
  swift_getWitnessTable();
  v16 = type metadata accessor for LazyVGrid();
  v17 = *(v16 - 8);
  v18 = __chkstk_darwin(v16);
  v20 = &v30 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v22 = &v30 - v21;
  v24 = type metadata accessor for FilterView(0, a2, a3, v23);
  v25 = v31;
  sub_10010C758(v24, &StateObject.wrappedValue.getter, v26, v27);

  v34 = a2;
  v35 = a3;
  v36 = v25;
  static HorizontalAlignment.center.getter();
  sub_1001156FC();
  LazyVGrid.init(columns:alignment:spacing:pinnedViews:content:)();
  swift_getWitnessTable();
  sub_100157EFC();
  v28 = *(v17 + 8);
  v28(v20, v16);
  sub_100157EFC();
  return (v28)(v22, v16);
}

uint64_t sub_10011376C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v40 = a5;
  v34 = a2;
  v35 = a3;
  v36 = type metadata accessor for FilterView(0, a2, a3, a4);
  v38 = *(v36 - 8);
  v39 = *(v38 + 64);
  __chkstk_darwin(v36);
  v37 = v33 - v6;
  swift_getAssociatedTypeWitness();
  v7 = type metadata accessor for Array();
  v33[2] = *(swift_getAssociatedConformanceWitness() + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_10000B3DC(&qword_10021F938, &unk_1001B7C28);
  type metadata accessor for Set();
  swift_getWitnessTable();
  type metadata accessor for _AnimationModifier();
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent();
  type metadata accessor for AccessibilityAttachmentModifier();
  type metadata accessor for ModifiedContent();
  swift_getTupleTypeMetadata2();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  type metadata accessor for ZStack();
  swift_getWitnessTable();
  v33[1] = type metadata accessor for Button();
  v9 = type metadata accessor for ModifiedContent();
  v33[5] = v7;
  WitnessTable = swift_getWitnessTable();
  v33[3] = WitnessTable;
  v33[4] = AssociatedTypeWitness;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v44 = v7;
  v45 = AssociatedTypeWitness;
  v46 = v9;
  v47 = WitnessTable;
  v48 = AssociatedConformanceWitness;
  v12 = type metadata accessor for ForEach();
  v13 = *(v12 - 8);
  v14 = __chkstk_darwin(v12);
  v16 = v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v18 = v33 - v17;
  v19 = v36;
  sub_10010C758(v36, &StateObject.wrappedValue.getter, v20, v21);
  v22 = sub_10015F768();

  v44 = v22;
  v23 = v37;
  v24 = v38;
  (*(v38 + 16))(v37, a1, v19);
  v25 = (*(v24 + 80) + 32) & ~*(v24 + 80);
  v26 = swift_allocObject();
  v27 = v35;
  *(v26 + 16) = v34;
  *(v26 + 24) = v27;
  (*(v24 + 32))(v26 + v25, v23, v19);
  v28 = swift_getWitnessTable();
  v29 = sub_10011C16C(&qword_100218698, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
  v42 = v28;
  v43 = v29;
  v30 = swift_getWitnessTable();
  ForEach<>.init(_:content:)();
  v41 = v30;
  swift_getWitnessTable();
  sub_100157EFC();
  v31 = *(v13 + 8);
  v31(v16, v12);
  sub_100157EFC();
  return (v31)(v18, v12);
}

uint64_t sub_100113CF4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v71 = a2;
  v64 = a1;
  v69 = a5;
  v7 = type metadata accessor for AccessibilityTraits();
  v66 = *(v7 - 8);
  v67 = v7;
  __chkstk_darwin(v7);
  v68 = &v50 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = *(AssociatedTypeWitness - 8);
  v58 = *(v10 + 64);
  __chkstk_darwin(AssociatedTypeWitness);
  v57 = &v50 - v11;
  v55 = a3;
  v56 = a4;
  v13 = type metadata accessor for FilterView(0, a3, a4, v12);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v17 = &v50 - v16;
  v52 = &v50 - v16;
  sub_10000B3DC(&qword_10021F938, &unk_1001B7C28);
  v18 = AssociatedTypeWitness;
  swift_getAssociatedConformanceWitness();
  v51 = AssociatedTypeWitness;
  type metadata accessor for Set();
  swift_getWitnessTable();
  type metadata accessor for _AnimationModifier();
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent();
  type metadata accessor for AccessibilityAttachmentModifier();
  type metadata accessor for ModifiedContent();
  swift_getTupleTypeMetadata2();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  v54 = type metadata accessor for ZStack();
  WitnessTable = swift_getWitnessTable();
  v19 = type metadata accessor for Button();
  v61 = *(v19 - 8);
  __chkstk_darwin(v19);
  v70 = &v50 - v20;
  v60 = v21;
  v59 = type metadata accessor for ModifiedContent();
  v65 = *(v59 - 8);
  v22 = __chkstk_darwin(v59);
  v62 = &v50 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v63 = &v50 - v24;
  v25 = v14;
  (*(v14 + 16))(v17, v71, v13);
  v26 = v10;
  v27 = v57;
  v28 = v64;
  (*(v10 + 16))(v57, v64, v18);
  v29 = v25;
  v30 = (*(v25 + 80) + 32) & ~*(v25 + 80);
  v31 = (v15 + v30 + *(v26 + 80)) & ~*(v26 + 80);
  v32 = swift_allocObject();
  v33 = v55;
  v34 = v56;
  *(v32 + 16) = v55;
  *(v32 + 24) = v34;
  (*(v29 + 32))(v32 + v30, v52, v13);
  (*(v26 + 32))(v32 + v31, v27, v51);
  v72 = v33;
  v73 = v34;
  v74 = v71;
  v75 = v28;
  Button.init(action:label:)();
  sub_10010C758(v13, &StateObject.wrappedValue.getter, v35, v36);
  LOBYTE(v13) = sub_10015FE70(v28);

  if (v13)
  {
    sub_100009F70(&qword_100219BD8, &qword_1001AECB8);
    v37 = v66;
    v38 = swift_allocObject();
    *(v38 + 16) = xmmword_1001ACB00;
    static AccessibilityTraits.isToggle.getter();
    static AccessibilityTraits.isSelected.getter();
    v76 = v38;
    sub_10011C16C(&qword_100219BE0, &type metadata accessor for AccessibilityTraits, &protocol conformance descriptor for AccessibilityTraits);
    sub_100009F70(&qword_100219BE8, &qword_1001AECC0);
    sub_10000D1EC(&qword_100219BF0, &qword_100219BE8, &qword_1001AECC0, &protocol conformance descriptor for [A]);
    v39 = v67;
    v40 = v68;
    dispatch thunk of SetAlgebra.init<A>(_:)();
  }

  else
  {
    v40 = v68;
    static AccessibilityTraits.isToggle.getter();
    v37 = v66;
    v39 = v67;
  }

  v41 = v60;
  v42 = swift_getWitnessTable();
  v43 = v62;
  v44 = v70;
  View.accessibilityAddTraits(_:)();
  (*(v37 + 8))(v40, v39);
  (*(v61 + 8))(v44, v41);
  v45 = sub_10011C16C(&qword_100218698, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
  v77 = v42;
  v78 = v45;
  v46 = v59;
  swift_getWitnessTable();
  v47 = v63;
  sub_100157EFC();
  v48 = *(v65 + 8);
  v48(v43, v46);
  sub_100157EFC();
  return (v48)(v47, v46);
}

void sub_100114548(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = type metadata accessor for FilterView(0, a3, a4, a4);
  sub_10010C758(v6, &StateObject.wrappedValue.getter, v7, v8);
  sub_10015F77C(a2);

  sub_10010C758(v6, &StateObject.wrappedValue.getter, v9, v10);
  v11 = *(a1 + *(v6 + 44));
  if (v11)
  {

    sub_10015FB7C(9, 0x65726E6567, 0xE500000000000000, 2u, v11);
  }

  else
  {
    type metadata accessor for RemoteViewConfiguration();
    sub_10011C16C(&qword_100218568, type metadata accessor for RemoteViewConfiguration, &unk_1001BB390);
    EnvironmentObject.error()();
    __break(1u);
  }
}

uint64_t sub_100114688@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v18[1] = a5;
  sub_10000B3DC(&qword_10021F938, &unk_1001B7C28);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  type metadata accessor for Set();
  swift_getWitnessTable();
  type metadata accessor for _AnimationModifier();
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent();
  type metadata accessor for AccessibilityAttachmentModifier();
  type metadata accessor for ModifiedContent();
  swift_getTupleTypeMetadata2();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  v9 = type metadata accessor for ZStack();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v13 = v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = v18 - v14;
  v18[4] = a3;
  v18[5] = a4;
  v18[6] = a1;
  v18[7] = a2;
  static Alignment.center.getter();
  ZStack.init(alignment:content:)();
  swift_getWitnessTable();
  sub_100157EFC();
  v16 = *(v10 + 8);
  v16(v13, v9);
  sub_100157EFC();
  return (v16)(v15, v9);
}

uint64_t sub_100114968@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v132 = a4;
  v124 = a5;
  v125 = a3;
  v127 = a2;
  v134 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v115 = AssociatedTypeWitness;
  v6 = type metadata accessor for Set();
  WitnessTable = swift_getWitnessTable();
  v129 = v6;
  v7 = type metadata accessor for _AnimationModifier();
  v116 = type metadata accessor for ModifiedContent();
  v8 = type metadata accessor for ModifiedContent();
  type metadata accessor for AccessibilityAttachmentModifier();
  v118 = v8;
  v123 = type metadata accessor for ModifiedContent();
  v121 = *(v123 - 8);
  v9 = __chkstk_darwin(v123);
  v122 = &v109 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v119 = &v109 - v12;
  __chkstk_darwin(v11);
  v120 = &v109 - v13;
  v14 = type metadata accessor for ColorScheme();
  v15 = *(v14 - 8);
  v16 = __chkstk_darwin(v14);
  v18 = &v109 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v20 = &v109 - v19;
  v21 = type metadata accessor for RoundedRectangle();
  v22 = v21 - 8;
  __chkstk_darwin(v21);
  v24 = (&v109 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  v25 = sub_100009F70(&qword_10021B648, &qword_1001B1320);
  __chkstk_darwin(v25);
  v27 = &v109 - v26;
  v28 = sub_100009F70(&qword_10021F938, &unk_1001B7C28);
  __chkstk_darwin(v28);
  v111 = &v109 - v29;
  v126 = v30;
  v113 = v7;
  v31 = type metadata accessor for ModifiedContent();
  v130 = *(v31 - 8);
  v131 = v31;
  v32 = __chkstk_darwin(v31);
  v117 = &v109 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = __chkstk_darwin(v32);
  v112 = &v109 - v35;
  __chkstk_darwin(v34);
  v133 = &v109 - v36;
  if (static Solarium.isEnabled.getter())
  {
    v37 = 16.0;
  }

  else
  {
    v37 = 8.0;
  }

  v38 = *(v22 + 28);
  v39 = enum case for RoundedCornerStyle.continuous(_:);
  v40 = type metadata accessor for RoundedCornerStyle();
  (*(*(v40 - 8) + 104))(v24 + v38, v39, v40);
  *v24 = v37;
  v24[1] = v37;
  v132 = type metadata accessor for FilterView(0, v125, v132, v41);
  sub_100024640(v20);
  (*(v15 + 104))(v18, enum case for ColorScheme.light(_:), v14);
  LOBYTE(v39) = static ColorScheme.== infix(_:_:)();
  v42 = *(v15 + 8);
  v42(v18, v14);
  v42(v20, v14);
  if (v39)
  {
    if (qword_100218328 != -1)
    {
      swift_once();
    }

    v43 = &qword_100230560;
  }

  else
  {
    if (qword_100218348 != -1)
    {
      swift_once();
    }

    v43 = &qword_100230580;
  }

  v44 = *v43;

  sub_10011F268(v24, v27, &type metadata accessor for RoundedRectangle);
  *&v27[*(v25 + 52)] = v44;
  *&v27[*(v25 + 56)] = 256;
  static Color.blue.getter();
  v125 = &StateObject.wrappedValue.getter;
  v45 = v132;
  sub_10010C758(v132, &StateObject.wrappedValue.getter, v46, v47);
  v48 = v127;
  sub_10015FE70(v127);

  v49 = Color.opacity(_:)();

  StrokeStyle.init(lineWidth:lineCap:lineJoin:miterLimit:dash:dashPhase:)();
  v50 = v111;
  sub_10011DF70(v27, v111, &type metadata accessor for RoundedRectangle);
  v51 = *&v165 * 0.5;
  v52 = v50 + *(v126 + 68);
  sub_10011DF70(v27, v52, &type metadata accessor for RoundedRectangle);
  *(v52 + *(type metadata accessor for RoundedRectangle._Inset() + 20)) = v51;
  v53 = v52 + *(sub_100009F70(&qword_10021FBB8, &qword_1001B7E10) + 36);
  v54 = v166;
  *v53 = v165;
  *(v53 + 16) = v54;
  *(v53 + 32) = v167;
  v55 = sub_100009F70(&qword_10021FBC0, &qword_1001B7E18);
  *(v52 + *(v55 + 52)) = v49;
  *(v52 + *(v55 + 56)) = 256;
  v56 = v52 + *(sub_100009F70(&qword_10021FBC8, &qword_1001B7E20) + 36);
  sub_10000D58C(v27, v56, &qword_10021B648, &qword_1001B1320);
  v57 = static Alignment.center.getter();
  v59 = v58;
  sub_10000D52C(v27, &qword_10021B648, &qword_1001B1320);
  v60 = (v56 + *(sub_100009F70(&qword_10021FBD0, &qword_1001B7E28) + 36));
  *v60 = v57;
  v60[1] = v59;
  v61 = v125;
  sub_10010C758(v45, v125, v62, v63);
  sub_10015FE70(v48);

  static Animation.easeInOut(duration:)();
  sub_10010C758(v45, v61, v64, v65);
  v66 = sub_10015FF3C();

  *&v158 = v66;
  v67 = sub_10000D1EC(&qword_10021FBD8, &qword_10021F938, &unk_1001B7C28, &protocol conformance descriptor for StrokeBorderShapeView<A, B, C>);
  v68 = v112;
  View.animation<A>(_:value:)();

  sub_10000D52C(v50, &qword_10021F938, &unk_1001B7C28);
  v69 = swift_getWitnessTable();
  v163 = v67;
  v164 = v69;
  v110 = v69;
  v70 = v131;
  v111 = swift_getWitnessTable();
  sub_100157EFC();
  v71 = *(v130 + 8);
  v126 = v130 + 8;
  v113 = v71;
  v71(v68, v70);
  *&v158 = (*(AssociatedConformanceWitness + 32))(v115);
  *(&v158 + 1) = v72;
  sub_100027068();
  v73 = Text.init<A>(_:)();
  v75 = v74;
  v77 = v76;
  sub_10010C758(v132, v125, v76, v78);
  LOBYTE(v48) = sub_10015FE70(v48);

  if (v48)
  {
    static Color.blue.getter();
  }

  else
  {
    static Color.primary.getter();
  }

  v79 = Text.foregroundColor(_:)();
  v81 = v80;
  v83 = v82;
  v85 = v84;

  sub_10000D60C(v73, v75, v77 & 1);

  v150 = v79;
  v151 = v81;
  v86 = v83 & 1;
  v152 = v83 & 1;
  v153 = v85;
  v87 = v132;
  sub_10010C758(v132, &StateObject.wrappedValue.getter, v88, v89);
  sub_10015FE70(v127);

  static Animation.easeInOut(duration:)();
  sub_10010C758(v87, &StateObject.wrappedValue.getter, v90, v91);
  v92 = sub_10015FF3C();

  *&v158 = v92;
  View.animation<A>(_:value:)();

  sub_10000D60C(v79, v81, v86);

  v93 = v154;
  LOBYTE(v81) = v155;
  v145 = v154;
  LOBYTE(v146) = v155;
  *(&v146 + 1) = v156;
  v147 = v157;
  v143 = &protocol witness table for Text;
  v144 = v110;
  v134 = &protocol conformance descriptor for <> ModifiedContent<A, B>;
  v94 = swift_getWitnessTable();
  View.padding(_:)();
  sub_10000D60C(v93, *(&v93 + 1), v81);

  v140 = v160;
  v141 = v161;
  v142[0] = v162[0];
  *(v142 + 9) = *(v162 + 9);
  v138 = v158;
  v139 = v159;
  v137[4] = v94;
  v137[5] = &protocol witness table for _PaddingLayout;
  v95 = v118;
  v96 = swift_getWitnessTable();
  v97 = v119;
  View.accessibilityIdentifier(_:)();
  v147 = v140;
  v148 = v141;
  v149[0] = v142[0];
  *(v149 + 9) = *(v142 + 9);
  v145 = v138;
  v146 = v139;
  (*(*(v95 - 8) + 8))(&v145, v95);
  v98 = sub_10011C16C(&qword_100218698, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
  v137[2] = v96;
  v137[3] = v98;
  v99 = v123;
  v100 = swift_getWitnessTable();
  v101 = v120;
  sub_100157EFC();
  v102 = v121;
  v103 = *(v121 + 8);
  v103(v97, v99);
  v104 = v131;
  v105 = v117;
  (*(v130 + 16))(v117, v133, v131);
  *&v138 = v105;
  v106 = v122;
  (*(v102 + 16))(v122, v101, v99);
  *(&v138 + 1) = v106;
  v137[0] = v104;
  v137[1] = v99;
  v135 = v111;
  v136 = v100;
  sub_100151024(&v138, 2uLL, v137);
  v103(v101, v99);
  v107 = v113;
  v113(v133, v104);
  v103(v106, v99);
  return v107(v105, v104);
}

uint64_t sub_1001156FC()
{
  type metadata accessor for PinnedScrollableViews();
  sub_10011C16C(&qword_10021DAA8, &type metadata accessor for PinnedScrollableViews, &protocol conformance descriptor for PinnedScrollableViews);
  return dispatch thunk of OptionSet.init(rawValue:)();
}

uint64_t sub_10011577C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v50 = a2;
  v46 = sub_100009F70(&qword_10021DD48, &qword_1001B51A8);
  v47 = *(v46 - 8);
  v4 = __chkstk_darwin(v46);
  v43 = &v41 - v5;
  v6 = *(a1 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v4);
  v44 = sub_100009F70(&qword_10021F998, &unk_1001B7C70);
  v45 = *(v44 - 8);
  __chkstk_darwin(v44);
  v9 = &v41 - v8;
  v10 = sub_100009F70(&qword_10021F980, &qword_1001B7C60);
  v11 = v10 - 8;
  __chkstk_darwin(v10);
  v42 = &v41 - v12;
  (*(v6 + 16))(&v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v2, a1);
  v13 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v14 = swift_allocObject();
  v15 = *(a1 + 16);
  v16 = *(a1 + 24);
  *(v14 + 16) = v15;
  *(v14 + 24) = v16;
  v17 = *(v6 + 32);
  v48 = a1;
  v17(v14 + v13, &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  v54 = v15;
  v55 = v16;
  v56 = v2;
  sub_100009F70(&qword_10021FAD0, &qword_1001B7D98);
  sub_10011CF44(&qword_10021FAD8, &qword_10021FAD0, &qword_1001B7D98, sub_1000AFBA4);
  Button.init(action:label:)();
  Solarium.init()();
  v18 = v43;
  static ViewInputPredicate.! prefix(_:)();
  v51 = v15;
  v52 = v16;
  v49 = v2;
  v53 = v2;
  sub_100009F70(&qword_10021F9A0, &qword_1001B7C80);
  sub_10000D1EC(&qword_10021F9A8, &qword_10021F998, &unk_1001B7C70, &protocol conformance descriptor for Button<A>);
  v57 = &type metadata for Solarium;
  v58 = &protocol witness table for Solarium;
  swift_getOpaqueTypeConformance2();
  v19 = v42;
  sub_10011C4D4(&qword_10021F9B0, &qword_10021F9A0, &qword_1001B7C80, sub_10011C558);
  v20 = v18;
  v21 = v44;
  v22 = v46;
  View.staticIf<A, B>(_:then:)();
  (*(v47 + 8))(v20, v22);
  (*(v45 + 8))(v9, v21);
  LOBYTE(v7) = static Edge.Set.vertical.getter();
  v23 = v19 + *(sub_100009F70(&qword_10021F990, &qword_1001B7C68) + 36);
  *v23 = v7;
  *(v23 + 8) = 0u;
  *(v23 + 24) = 0u;
  *(v23 + 40) = 1;
  v24 = static Edge.Set.horizontal.getter();
  v25 = v19 + *(v11 + 44);
  *v25 = v24;
  *(v25 + 8) = 0u;
  *(v25 + 24) = 0u;
  *(v25 + 40) = 1;
  sub_100009F70(&qword_100218DC0, &qword_1001AD860);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1001ACB00;
  LOBYTE(v21) = static Edge.Set.leading.getter();
  *(inited + 32) = v21;
  v27 = static Edge.Set.trailing.getter();
  *(inited + 33) = v27;
  v28 = Edge.Set.init(rawValue:)();
  Edge.Set.init(rawValue:)();
  if (Edge.Set.init(rawValue:)() != v21)
  {
    v28 = Edge.Set.init(rawValue:)();
  }

  Edge.Set.init(rawValue:)();
  if (Edge.Set.init(rawValue:)() != v27)
  {
    v28 = Edge.Set.init(rawValue:)();
  }

  sub_10010C758(v48, &StateObject.wrappedValue.getter, v29, v30);
  v31 = sub_10015E890();
  v33 = v32;
  v35 = v34;
  v37 = v36;

  v38 = v50;
  sub_10000F618(v19, v50, &qword_10021F980, &qword_1001B7C60);
  result = sub_100009F70(&qword_10021F970, &qword_1001B7C58);
  v40 = v38 + *(result + 36);
  *v40 = v28;
  *(v40 + 8) = v31;
  *(v40 + 16) = v33;
  *(v40 + 24) = v35;
  *(v40 + 32) = v37;
  return result;
}

uint64_t sub_100115DD0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v21 = a3;
  v22 = a4;
  v23 = a2;
  v24 = a1;
  v25 = a5;
  sub_10000B3DC(&qword_10021F920, &qword_1001B7C10);
  v19[0] = sub_10000B3DC(&qword_10021F928, &qword_1001B7C18);
  v19[1] = sub_10000B3DC(&qword_10021F930, &qword_1001B7C20);
  swift_getAssociatedTypeWitness();
  type metadata accessor for Array();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  sub_10000B3DC(&qword_10021F938, &unk_1001B7C28);
  type metadata accessor for Set();
  swift_getWitnessTable();
  type metadata accessor for _AnimationModifier();
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent();
  type metadata accessor for AccessibilityAttachmentModifier();
  type metadata accessor for ModifiedContent();
  swift_getTupleTypeMetadata2();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  type metadata accessor for ZStack();
  swift_getWitnessTable();
  type metadata accessor for Button();
  type metadata accessor for ModifiedContent();
  swift_getWitnessTable();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  type metadata accessor for ForEach();
  WitnessTable = swift_getWitnessTable();
  v33 = sub_10011C16C(&qword_100218698, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
  v31 = swift_getWitnessTable();
  swift_getWitnessTable();
  type metadata accessor for LazyVGrid();
  swift_getWitnessTable();
  type metadata accessor for ScrollView();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  type metadata accessor for ModifiedContent();
  swift_getTupleTypeMetadata2();
  type metadata accessor for TupleView();
  type metadata accessor for Optional();
  swift_getTupleTypeMetadata3();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  type metadata accessor for VStack();
  swift_getWitnessTable();
  type metadata accessor for ScrollView();
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent();
  sub_10000B3DC(&qword_1002188F8, &unk_1001ADC20);
  type metadata accessor for ModifiedContent();
  sub_10000B3DC(&qword_10021F940, &qword_1001B7C38);
  swift_getTupleTypeMetadata3();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  type metadata accessor for VStack();
  v5 = type metadata accessor for ModifiedContent();
  v20 = sub_10000B3DC(&qword_10021F948, &qword_1001B7C40);
  v29 = swift_getWitnessTable();
  v30 = &protocol witness table for _SafeAreaRegionsIgnoringLayout;
  v6 = swift_getWitnessTable();
  sub_10000B3DC(&qword_10021F950, &qword_1001B7C48);
  sub_10000B3DC(&qword_10021F958, &qword_1001B7C50);
  type metadata accessor for GlassProminentButtonStyle();
  sub_10011C1B4();
  sub_10011C16C(&qword_10021D3C8, &type metadata accessor for GlassProminentButtonStyle, &protocol conformance descriptor for GlassProminentButtonStyle);
  swift_getOpaqueTypeConformance2();
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v34 = v5;
  v35 = v20;
  v36 = v6;
  v37 = OpaqueTypeConformance2;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v9 = *(OpaqueTypeMetadata2 - 8);
  v10 = __chkstk_darwin(OpaqueTypeMetadata2);
  v12 = v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = v19 - v13;
  v26 = v21;
  v27 = v22;
  v28 = v23;
  static HorizontalAlignment.center.getter();
  v15 = swift_checkMetadataState();
  v16 = v20;
  View.safeAreaBar<A>(edge:alignment:spacing:content:)();
  v34 = v15;
  v35 = v16;
  v36 = v6;
  v37 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  sub_100157EFC();
  v17 = *(v9 + 8);
  v17(v12, OpaqueTypeMetadata2);
  sub_100157EFC();
  return (v17)(v14, OpaqueTypeMetadata2);
}

uint64_t sub_10011662C@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v31 = a2;
  v35 = a3;
  v36 = type metadata accessor for BarMagicPocketStyle();
  v34 = *(v36 - 8);
  __chkstk_darwin(v36);
  v33 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for GlassProminentButtonStyle();
  v32 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100009F70(&qword_10021F970, &qword_1001B7C58);
  __chkstk_darwin(v8 - 8);
  v10 = &v31 - v9;
  v11 = sub_100009F70(&qword_10021F958, &qword_1001B7C50);
  __chkstk_darwin(v11);
  v13 = &v31 - v12;
  v14 = sub_100009F70(&qword_10021F950, &qword_1001B7C48);
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v31 - v16;
  v19 = type metadata accessor for FilterView(0, a1, v31, v18);
  sub_10011577C(v19, v10);
  sub_10010C758(v19, &StateObject.wrappedValue.getter, v20, v21);
  LOBYTE(v19) = sub_10015FF50();

  if (v19)
  {
    v22 = static Color.blue.getter();
  }

  else
  {
    v22 = static Color.gray.getter();
  }

  v23 = v22;
  KeyPath = swift_getKeyPath();
  v37 = v23;
  v25 = AnyShapeStyle.init<A>(_:)();
  sub_10000F618(v10, v13, &qword_10021F970, &qword_1001B7C58);
  v26 = &v13[*(v11 + 36)];
  *v26 = KeyPath;
  v26[1] = v25;
  GlassProminentButtonStyle.init()();
  v27 = sub_10011C1B4();
  v28 = sub_10011C16C(&qword_10021D3C8, &type metadata accessor for GlassProminentButtonStyle, &protocol conformance descriptor for GlassProminentButtonStyle);
  View.buttonStyle<A>(_:)();
  (*(v32 + 8))(v7, v5);
  sub_10000D52C(v13, &qword_10021F958, &qword_1001B7C50);
  v29 = v33;
  static BarMagicPocketStyle.automatic.getter();
  v37 = v11;
  v38 = v5;
  v39 = v27;
  v40 = v28;
  swift_getOpaqueTypeConformance2();
  View.scrollPocketTag_v1(style:)();
  (*(v34 + 8))(v29, v36);
  return (*(v15 + 8))(v17, v14);
}

void sub_100116A68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for FilterView(0, a2, a3, a4);
  v8 = sub_10010C758(v5, &StateObject.wrappedValue.getter, v6, v7);
  sub_10015FF70(v8, v9, v10, v11);

  sub_10010C758(v5, &StateObject.wrappedValue.getter, v12, v13);
  v14 = *(a1 + *(v5 + 44));
  if (v14)
  {

    sub_10015FB7C(9, 1702125924, 0xE400000000000000, 2u, v14);
  }

  else
  {
    type metadata accessor for RemoteViewConfiguration();
    sub_10011C16C(&qword_100218568, type metadata accessor for RemoteViewConfiguration, &unk_1001BB390);
    EnvironmentObject.error()();
    __break(1u);
  }
}

uint64_t sub_100116B8C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v26 = a4;
  v25 = sub_100009F70(&qword_10021FA18, &qword_1001B7CC0);
  __chkstk_darwin(v25);
  v23 = &v21 - v7;
  v24 = sub_100009F70(&qword_10021FA20, &qword_1001B7CC8);
  v22 = *(v24 - 8);
  __chkstk_darwin(v24);
  v9 = &v21 - v8;
  v10 = type metadata accessor for ToolbarItemPlacement();
  __chkstk_darwin(v10 - 8);
  v21 = sub_100009F70(&qword_10021FA28, &qword_1001B7CD0);
  v11 = *(v21 - 8);
  __chkstk_darwin(v21);
  v13 = &v21 - v12;
  static ToolbarItemPlacement.topBarLeading.getter();
  v30 = a2;
  v31 = a3;
  v32 = a1;
  sub_100009F70(&qword_10021FA30, &qword_1001B7CD8);
  sub_10011CF44(&qword_10021FA38, &qword_10021FA30, &qword_1001B7CD8, sub_10011C9B4);
  ToolbarItem<>.init(placement:content:)();
  static ToolbarItemPlacement.topBarTrailing.getter();
  v27 = a2;
  v28 = a3;
  v29 = a1;
  sub_100009F70(&qword_10021FA60, &qword_1001B7CF8);
  sub_10011CAA8();
  ToolbarItem<>.init(placement:content:)();
  v14 = *(v25 + 48);
  v15 = v23;
  v16 = v21;
  (*(v11 + 16))(v23, v13, v21);
  v17 = v22;
  v18 = &v15[v14];
  v19 = v24;
  (*(v22 + 16))(v18, v9, v24);
  TupleToolbarContent.init(_:)();
  (*(v17 + 8))(v9, v19);
  return (*(v11 + 8))(v13, v16);
}

uint64_t sub_100116EF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100009F70(&qword_10021FA48, &qword_1001B7CE0);
  __chkstk_darwin(v6);
  v8 = &v10 - v7;
  sub_100116FF0(a1, a2, a3, &v10 - v7);
  sub_10011C9B4();
  View.accessibilityIdentifier(_:)();
  return sub_10000D52C(v8, &qword_10021FA48, &qword_1001B7CE0);
}

uint64_t sub_100116FF0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_100009F70(&qword_100218930, &qword_1001B7CF0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v32 - v10;
  v39 = sub_100009F70(&qword_10021FAC8, &qword_1001B7D60);
  __chkstk_darwin(v39);
  v13 = v32 - v12;
  v37 = a2;
  v38 = a3;
  v15 = type metadata accessor for FilterView(0, a2, a3, v14);
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = v32 - v17;
  if (static Solarium.isEnabled.getter())
  {
    (*(v16 + 16))(v18, a1, v15);
    v21 = (*(v16 + 80) + 32) & ~*(v16 + 80);
    v22 = swift_allocObject();
    v23 = v38;
    *(v22 + 16) = v37;
    *(v22 + 24) = v23;
    (*(v16 + 32))(v22 + v21, v18, v15);
    *v13 = 0;
    *(v13 + 1) = sub_10011FE98;
    *(v13 + 2) = v22;
    swift_storeEnumTagMultiPayload();
    sub_100042DC4();
    sub_10000D1EC(&qword_10021A480, &qword_100218930, &qword_1001B7CF0, &protocol conformance descriptor for Button<A>);
    return _ConditionalContent<>.init(storage:)();
  }

  else
  {
    v25 = sub_10010C758(v15, &StateObject.wrappedValue.getter, v19, v20);
    v34 = v11;
    v26 = v25 + *(*v25 + 256);
    v33 = *v26;
    v35 = v8;
    v36 = a4;
    v32[1] = *(v26 + 16);

    (*(v16 + 16))(v18, a1, v15);
    v27 = (*(v16 + 80) + 32) & ~*(v16 + 80);
    v28 = swift_allocObject();
    v29 = v38;
    *(v28 + 16) = v37;
    *(v28 + 24) = v29;
    (*(v16 + 32))(v28 + v27, v18, v15);
    v30 = v34;
    Button<>.init(_:action:)();
    v31 = v35;
    (*(v9 + 16))(v13, v30, v35);
    swift_storeEnumTagMultiPayload();
    sub_100042DC4();
    sub_10000D1EC(&qword_10021A480, &qword_100218930, &qword_1001B7CF0, &protocol conformance descriptor for Button<A>);
    _ConditionalContent<>.init(storage:)();
    return (*(v9 + 8))(v30, v31);
  }
}

uint64_t sub_10011743C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for EnvironmentValues();
  v20 = *(v6 - 8);
  v21 = v6;
  __chkstk_darwin(v6);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100009F70(&qword_100219710, &qword_1001B29A0);
  __chkstk_darwin(v9);
  v11 = &v20 - v10;
  v12 = type metadata accessor for DismissAction();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for FilterView(0, a2, a3, v16);
  sub_10000D58C(a1 + *(v17 + 40), v11, &qword_100219710, &qword_1001B29A0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v13 + 32))(v15, v11, v12);
  }

  else
  {
    static os_log_type_t.fault.getter();
    v18 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v20 + 8))(v8, v21);
  }

  DismissAction.callAsFunction()();
  return (*(v13 + 8))(v15, v12);
}

uint64_t sub_1001176D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v37 = a4;
  v7 = sub_100009F70(&qword_10021FA88, &qword_1001B7D08);
  __chkstk_darwin(v7);
  v9 = &v36 - v8;
  v10 = sub_100009F70(&qword_10021FA78, &qword_1001B7D00);
  v11 = __chkstk_darwin(v10);
  v13 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v36 - v14;
  sub_100117A5C(a1, a2, a3, v9);
  sub_10011CB8C();
  View.accessibilityIdentifier(_:)();
  sub_10000D52C(v9, &qword_10021FA88, &qword_1001B7D08);
  v17 = type metadata accessor for FilterView(0, a2, a3, v16);
  sub_10010C758(v17, &StateObject.wrappedValue.getter, v18, v19);
  v20 = sub_100160174();

  if (v20)
  {
    sub_10010C758(v17, &StateObject.wrappedValue.getter, v21, v22);

    v23 = Text.init(_:tableName:bundle:comment:)();
    v25 = v24;
    v27 = v26;
  }

  else
  {
    v23 = 0;
    v27 = 0;
    v25 = 0xE000000000000000;
  }

  ModifiedContent<>.accessibilityLabel(_:)();
  sub_10000D60C(v23, v25, v27 & 1);

  sub_10000D52C(v13, &qword_10021FA78, &qword_1001B7D00);
  sub_10010C758(v17, &StateObject.wrappedValue.getter, v28, v29);
  v30 = sub_100160174();

  KeyPath = swift_getKeyPath();
  v32 = swift_allocObject();
  *(v32 + 16) = (v30 & 1) == 0;
  v33 = v37;
  sub_10000F618(v15, v37, &qword_10021FA78, &qword_1001B7D00);
  result = sub_100009F70(&qword_10021FA60, &qword_1001B7CF8);
  v35 = (v33 + *(result + 36));
  *v35 = KeyPath;
  v35[1] = sub_10011CE18;
  v35[2] = v32;
  return result;
}

uint64_t sub_100117A5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v41 = a4;
  v40 = sub_100009F70(&qword_100218930, &qword_1001B7CF0);
  v7 = *(v40 - 8);
  __chkstk_darwin(v40);
  v9 = &v36 - v8;
  v45 = sub_100009F70(&qword_10021FAC0, &qword_1001B7D58);
  __chkstk_darwin(v45);
  v11 = &v36 - v10;
  v42 = a2;
  v43 = a3;
  v13 = type metadata accessor for FilterView(0, a2, a3, v12);
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v36 - v15;
  v44 = sub_100009F70(&qword_10021FAA8, &qword_1001B7D18);
  __chkstk_darwin(v44);
  v18 = &v36 - v17;
  if (static Solarium.isEnabled.getter())
  {
    (*(v14 + 16))(v16, a1, v13);
    v21 = (*(v14 + 80) + 32) & ~*(v14 + 80);
    v22 = swift_allocObject();
    v23 = v42;
    v24 = v43;
    *(v22 + 16) = v42;
    *(v22 + 24) = v24;
    v25 = (*(v14 + 32))(v22 + v21, v16, v13);
    __chkstk_darwin(v25);
    *(&v36 - 4) = v23;
    *(&v36 - 3) = v24;
    *(&v36 - 2) = a1;
    Button.init(action:label:)();
    v26 = static Edge.Set.horizontal.getter();
    v27 = &v18[*(v44 + 36)];
    *v27 = v26;
    *(v27 + 8) = 0u;
    *(v27 + 24) = 0u;
    v27[40] = 1;
    sub_10000D58C(v18, v11, &qword_10021FAA8, &qword_1001B7D18);
    swift_storeEnumTagMultiPayload();
    sub_10011CCF0();
    sub_10000D1EC(&qword_10021A480, &qword_100218930, &qword_1001B7CF0, &protocol conformance descriptor for Button<A>);
    _ConditionalContent<>.init(storage:)();
    return sub_10000D52C(v18, &qword_10021FAA8, &qword_1001B7D18);
  }

  else
  {
    v29 = sub_10010C758(v13, &StateObject.wrappedValue.getter, v19, v20);
    v30 = v29 + *(*v29 + 240);
    v39 = *v30;
    v37 = v9;
    v38 = *(v30 + 16);

    (*(v14 + 16))(v16, a1, v13);
    v31 = (*(v14 + 80) + 32) & ~*(v14 + 80);
    v32 = swift_allocObject();
    v33 = v43;
    *(v32 + 16) = v42;
    *(v32 + 24) = v33;
    (*(v14 + 32))(v32 + v31, v16, v13);
    v34 = v37;
    Button<>.init(_:action:)();
    v35 = v40;
    (*(v7 + 16))(v11, v34, v40);
    swift_storeEnumTagMultiPayload();
    sub_10011CCF0();
    sub_10000D1EC(&qword_10021A480, &qword_100218930, &qword_1001B7CF0, &protocol conformance descriptor for Button<A>);
    _ConditionalContent<>.init(storage:)();
    return (*(v7 + 8))(v34, v35);
  }
}

void sub_100117FA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_10010C758(a1, &StateObject.wrappedValue.getter, a3, a4);
  sub_10016082C();

  sub_10010C758(a1, &StateObject.wrappedValue.getter, v6, v7);
  v8 = *(v4 + *(a1 + 44));
  if (v8)
  {

    sub_10015FB7C(9, 21, 0, 3u, v8);
  }

  else
  {
    type metadata accessor for RemoteViewConfiguration();
    sub_10011C16C(&qword_100218568, type metadata accessor for RemoteViewConfiguration, &unk_1001BB390);
    EnvironmentObject.error()();
    __break(1u);
  }
}

uint64_t sub_1001180BC@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v5 = type metadata accessor for FilterView(0, a1, a2, a3);
  sub_10010C758(v5, &StateObject.wrappedValue.getter, v6, v7);

  v8 = Text.init(_:tableName:bundle:comment:)();
  v10 = v9;
  v12 = v11;
  sub_10010C758(v5, &StateObject.wrappedValue.getter, v11, v13);
  LOBYTE(v5) = sub_100160174();

  if (v5)
  {
    static Color.primary.getter();
  }

  else
  {
    static Color.gray.getter();
  }

  v14 = Text.foregroundStyle<A>(_:)();
  v16 = v15;
  v18 = v17;
  sub_10000D60C(v8, v10, v12 & 1);

  static Font.Weight.regular.getter();
  v19 = Text.fontWeight(_:)();
  v21 = v20;
  v23 = v22;
  v25 = v24;
  sub_10000D60C(v14, v16, v18 & 1);

  *a4 = v19;
  *(a4 + 8) = v21;
  *(a4 + 16) = v23 & 1;
  *(a4 + 24) = v25;
  return result;
}

double sub_100118298(double *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = type metadata accessor for FilterView(0, a3, a4, a4);
  sub_10010C758(v4, &StateObject.wrappedValue.getter, v5, v6);
  sub_1001601AC();

  return result;
}

void sub_100118324(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for FilterView(0, a2, a3, a4);
  sub_10010C758(v5, &StateObject.wrappedValue.getter, v6, v7);
  if (*(a1 + *(v5 + 44)))
  {

    sub_10016027C(v8);
  }

  else
  {
    type metadata accessor for RemoteViewConfiguration();
    sub_10011C16C(&qword_100218568, type metadata accessor for RemoteViewConfiguration, &unk_1001BB390);
    EnvironmentObject.error()();
    __break(1u);
  }
}

void sub_10011840C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for FilterView(0, a2, a3, a4);
  sub_10010C758(v5, &StateObject.wrappedValue.getter, v6, v7);
  v8 = *(a1 + *(v5 + 44));
  if (v8)
  {

    sub_10015FB7C(9, 2, 0, 3u, v8);
  }

  else
  {
    type metadata accessor for RemoteViewConfiguration();
    sub_10011C16C(&qword_100218568, type metadata accessor for RemoteViewConfiguration, &unk_1001BB390);
    EnvironmentObject.error()();
    __break(1u);
  }
}

void sub_100118508(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for DismissAction();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for FilterView(0, a2, a3, v10);
  sub_10010C758(v11, &StateObject.wrappedValue.getter, v12, v13);
  v14 = sub_10015FF50();

  if (v14)
  {
    sub_10010C758(v11, &StateObject.wrappedValue.getter, v15, v16);
    sub_1001602C4();

    sub_10010C758(v11, &StateObject.wrappedValue.getter, v17, v18);
    v19 = *(a1 + *(v11 + 44));
    if (v19)
    {

      sub_10015FB7C(9, 24, 0, 3u, v19);

      sub_100024868(v9);
      DismissAction.callAsFunction()();
      (*(v7 + 8))(v9, v6);
    }

    else
    {
      type metadata accessor for RemoteViewConfiguration();
      sub_10011C16C(&qword_100218568, type metadata accessor for RemoteViewConfiguration, &unk_1001BB390);
      EnvironmentObject.error()();
      __break(1u);
    }
  }
}

uint64_t sub_100118720(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = type metadata accessor for FilterView(0, a2, a3, a4);
  sub_10010C758(v4, &StateObject.wrappedValue.getter, v5, v6);
  sub_100160734();

  sub_100027068();
  v7 = Text.init<A>(_:)();
  v9 = v8;
  v11 = v10;
  static Font.Weight.semibold.getter();
  v12 = Text.fontWeight(_:)();
  v14 = v13;
  v16 = v15;
  sub_10000D60C(v7, v9, v11 & 1);

  static Font.headline.getter();
  v17 = Text.font(_:)();
  v19 = v18;
  v21 = v20;

  sub_10000D60C(v12, v14, v16 & 1);

  static Color.white.getter();
  v22 = Text.foregroundColor(_:)();
  v24 = v23;
  v26 = v25;
  v28 = v27;

  sub_10000D60C(v17, v19, v21 & 1);

  LOBYTE(v17) = static Edge.Set.vertical.getter();
  EdgeInsets.init(_all:)();
  v30 = v29;
  v32 = v31;
  v34 = v33;
  v36 = v35;
  v45 = v26 & 1;
  v44 = 0;
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  *(&v46[6] + 7) = *&v46[21];
  *(&v46[8] + 7) = *&v46[23];
  *(&v46[10] + 7) = *&v46[25];
  *(&v46[12] + 7) = v47;
  *(v46 + 7) = *&v46[15];
  *(&v46[2] + 7) = *&v46[17];
  *(&v46[4] + 7) = *&v46[19];
  *&v38 = v22;
  *(&v38 + 1) = v24;
  LOBYTE(v39) = v26 & 1;
  *(&v39 + 1) = v28;
  LOBYTE(v40) = v17;
  *(&v40 + 1) = v30;
  *&v41 = v32;
  *(&v41 + 1) = v34;
  *v42 = v36;
  v42[8] = 0;
  *&v42[73] = *&v46[8];
  *&v42[89] = *&v46[10];
  *&v42[105] = *&v46[12];
  *&v42[120] = *(&v47 + 1);
  *&v42[9] = *v46;
  *&v42[25] = *&v46[2];
  *&v42[41] = *&v46[4];
  *&v42[57] = *&v46[6];
  sub_100009F70(&qword_10021D3A0, &qword_1001B7DA0);
  sub_1000AFBA4();
  View.accessibilityIdentifier(_:)();
  v43[8] = *&v42[64];
  v43[9] = *&v42[80];
  v43[10] = *&v42[96];
  v43[11] = *&v42[112];
  v43[4] = *v42;
  v43[5] = *&v42[16];
  v43[6] = *&v42[32];
  v43[7] = *&v42[48];
  v43[0] = v38;
  v43[1] = v39;
  v43[2] = v40;
  v43[3] = v41;
  return sub_10000D52C(v43, &qword_10021D3A0, &qword_1001B7DA0);
}

uint64_t sub_100118A48@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v8 = static Color.blue.getter();
  v9 = static Edge.Set.all.getter();
  v10 = sub_100009F70(&qword_10021F998, &unk_1001B7C70);
  (*(*(v10 - 8) + 16))(a4, a1, v10);
  v11 = a4 + *(sub_100009F70(&qword_10021F9D0, &unk_1001B7C90) + 36);
  *v11 = v8;
  *(v11 + 8) = v9;
  if (qword_100218430 != -1)
  {
    swift_once();
  }

  v12 = qword_100230600;
  v13 = (a4 + *(sub_100009F70(&qword_10021F9C0, &qword_1001B7C88) + 36));
  v14 = *(type metadata accessor for RoundedRectangle() + 20);
  v15 = enum case for RoundedCornerStyle.continuous(_:);
  v16 = type metadata accessor for RoundedCornerStyle();
  (*(*(v16 - 8) + 104))(v13 + v14, v15, v16);
  *v13 = v12;
  v13[1] = v12;
  *(v13 + *(sub_100009F70(&qword_100218928, &unk_1001ADC30) + 36)) = 256;
  LOBYTE(v15) = static Edge.Set.bottom.getter();
  v18 = type metadata accessor for FilterView(0, a2, a3, v17);
  sub_10010C758(v18, &StateObject.wrappedValue.getter, v19, v20);
  v21 = sub_10015E890();
  v23 = v22;
  v25 = v24;
  v27 = v26;

  result = sub_100009F70(&qword_10021F9A0, &qword_1001B7C80);
  v29 = a4 + *(result + 36);
  *v29 = v15;
  *(v29 + 8) = v21;
  *(v29 + 16) = v23;
  *(v29 + 24) = v25;
  *(v29 + 32) = v27;
  return result;
}

uint64_t sub_100118C64@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_100009F70(&qword_10021FCE8, &qword_1001B80B0);
  v5 = __chkstk_darwin(v4 - 8);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v27 - v8;
  v10 = sub_100009F70(&qword_10021FCF0, &qword_1001B80B8);
  v11 = v10 - 8;
  v12 = __chkstk_darwin(v10);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v27 - v15;
  *v16 = static VerticalAlignment.center.getter();
  *(v16 + 1) = 0;
  v16[16] = 1;
  v17 = sub_100009F70(&qword_10021FCF8, &qword_1001B80C0);
  sub_100118EDC(a1, &v16[*(v17 + 44)]);
  v18 = static Edge.Set.vertical.getter();
  EdgeInsets.init(_all:)();
  v19 = &v16[*(v11 + 44)];
  *v19 = v18;
  *(v19 + 1) = v20;
  *(v19 + 2) = v21;
  *(v19 + 3) = v22;
  *(v19 + 4) = v23;
  v19[40] = 0;
  *v9 = static HorizontalAlignment.center.getter();
  *(v9 + 1) = 0;
  v9[16] = 0;
  v24 = sub_100009F70(&qword_10021FD00, &qword_1001B80C8);
  sub_10011A484(a1, &v9[*(v24 + 44)]);
  sub_10000D58C(v16, v14, &qword_10021FCF0, &qword_1001B80B8);
  sub_10000D58C(v9, v7, &qword_10021FCE8, &qword_1001B80B0);
  sub_10000D58C(v14, a2, &qword_10021FCF0, &qword_1001B80B8);
  v25 = sub_100009F70(&qword_10021FD08, &qword_1001B80D0);
  sub_10000D58C(v7, a2 + *(v25 + 48), &qword_10021FCE8, &qword_1001B80B0);
  sub_10000D52C(v9, &qword_10021FCE8, &qword_1001B80B0);
  sub_10000D52C(v16, &qword_10021FCF0, &qword_1001B80B8);
  sub_10000D52C(v7, &qword_10021FCE8, &qword_1001B80B0);
  return sub_10000D52C(v14, &qword_10021FCF0, &qword_1001B80B8);
}

uint64_t sub_100118EDC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v62 = a1;
  v82 = a2;
  v77 = type metadata accessor for DatePickerButtonStyle(0);
  __chkstk_darwin(v77);
  v75 = &v60 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for CompactDatePicker(0);
  v72 = *(v3 - 8);
  v70 = *(v72 + 64);
  v4 = v3 - 8;
  v68 = v3 - 8;
  __chkstk_darwin(v3 - 8);
  v69 = &v60 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = sub_100009F70(&qword_10021FDC0, &qword_1001B8178);
  v79 = *(v76 - 8);
  __chkstk_darwin(v76);
  v71 = &v60 - v6;
  v7 = sub_100009F70(&qword_10021FDC8, &qword_1001B8180);
  v8 = *(v7 - 8);
  v80 = v7;
  v81 = v8;
  __chkstk_darwin(v7);
  v73 = &v60 - v9;
  v10 = sub_100009F70(&qword_10021FDD0, &unk_1001B8188);
  v11 = __chkstk_darwin(v10 - 8);
  v78 = &v60 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v74 = &v60 - v13;
  v65 = type metadata accessor for AccessibilityTraits();
  v64 = *(v65 - 8);
  __chkstk_darwin(v65);
  v15 = &v60 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for CompactDatePickerConfiguration(0);
  __chkstk_darwin(v16 - 8);
  v18 = (&v60 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v63 = sub_100009F70(&qword_10021DB10, &qword_1001B4D90);
  v19 = __chkstk_darwin(v63);
  v21 = &v60 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __chkstk_darwin(v19);
  v83 = &v60 - v23;
  __chkstk_darwin(v22);
  v61 = &v60 - v24;
  v67 = *(v4 + 32);
  v66 = sub_100009F70(&qword_10021FC18, &unk_1001B7FD0);
  Binding.wrappedValue.getter();
  v25 = *v18;
  v26 = v18[1];

  sub_10011DFD8(v18, type metadata accessor for CompactDatePickerConfiguration);
  v85 = v25;
  v86 = v26;
  sub_100027068();
  v27 = Text.init<A>(_:)();
  v29 = v28;
  v31 = v30;
  static Font.Weight.regular.getter();
  v32 = Text.fontWeight(_:)();
  v34 = v33;
  v36 = v35;
  v38 = v37;
  sub_10000D60C(v27, v29, v31 & 1);

  v85 = v32;
  v86 = v34;
  LOBYTE(v87) = v36 & 1;
  v88 = v38;
  static AccessibilityTraits.isHeader.getter();
  View.accessibilityAddTraits(_:)();
  (*(v64 + 8))(v15, v65);
  sub_10000D60C(v32, v34, v36 & 1);

  v39 = v83;
  ModifiedContent<>.accessibilityHeading(_:)();
  sub_10000D52C(v21, &qword_10021DB10, &qword_1001B4D90);
  v40 = v61;
  ModifiedContent<>.accessibilityIdentifier(_:)();
  sub_10000D52C(v39, &qword_10021DB10, &qword_1001B4D90);
  v41 = v62;
  v42 = v69;
  sub_10011DF70(v62, v69, type metadata accessor for CompactDatePicker);
  v43 = (*(v72 + 80) + 16) & ~*(v72 + 80);
  v44 = swift_allocObject();
  sub_10011F268(v42, v44 + v43, type metadata accessor for CompactDatePicker);
  v84 = v41;
  sub_10011F5FC();
  v45 = v71;
  Button.init(action:label:)();
  LOBYTE(v25) = *(v41 + *(v68 + 48));
  v46 = v77;
  v47 = v75;
  Binding.wrappedValue.getter();
  *v47 = v25;
  *&v47[*(v46 + 24)] = 0x3FD3333333333333;
  v48 = sub_10000D1EC(&qword_10021FDE0, &qword_10021FDC0, &qword_1001B8178, &protocol conformance descriptor for Button<A>);
  v49 = sub_10011C16C(&qword_10021FDE8, type metadata accessor for DatePickerButtonStyle, &unk_1001B8294);
  v50 = v73;
  v51 = v76;
  View.buttonStyle<A>(_:)();
  sub_10011DFD8(v47, type metadata accessor for DatePickerButtonStyle);
  (*(v79 + 8))(v45, v51);
  v85 = v51;
  v86 = v46;
  v87 = v48;
  v88 = v49;
  swift_getOpaqueTypeConformance2();
  v52 = v74;
  v53 = v80;
  View.accessibilityIdentifier(_:)();
  (*(v81 + 8))(v50, v53);
  v54 = v83;
  sub_10000D58C(v40, v83, &qword_10021DB10, &qword_1001B4D90);
  v55 = v78;
  sub_10000D58C(v52, v78, &qword_10021FDD0, &unk_1001B8188);
  v56 = v82;
  sub_10000D58C(v54, v82, &qword_10021DB10, &qword_1001B4D90);
  v57 = sub_100009F70(&qword_10021FDF0, &qword_1001B8198);
  v58 = v56 + *(v57 + 48);
  *v58 = 0;
  *(v58 + 8) = 1;
  sub_10000D58C(v55, v56 + *(v57 + 64), &qword_10021FDD0, &unk_1001B8188);
  sub_10000D52C(v52, &qword_10021FDD0, &unk_1001B8188);
  sub_10000D52C(v40, &qword_10021DB10, &qword_1001B4D90);
  sub_10000D52C(v55, &qword_10021FDD0, &unk_1001B8188);
  return sub_10000D52C(v54, &qword_10021DB10, &qword_1001B4D90);
}

double sub_1001197F8(uint64_t a1, __n128 a2)
{
  static Animation.easeInOut(duration:)();
  withAnimation<A>(_:_:)();

  return result;
}