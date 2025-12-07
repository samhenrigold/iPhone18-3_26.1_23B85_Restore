uint64_t sub_1000FDE84()
{
  v1 = 2 * *(v0 + 49) + 2;
  if (*(v0 + 49) - 3 < 2)
  {
    v1 = 0;
  }

  switch(v1 + 2 * *(v0 + 48))
  {
    case 0:
      return 0;
    case 4:
      return 2;
    case 2:
      return 1;
  }

  sub_10007519C();
  result = sub_100006A20();
  __break(1u);
  return result;
}

uint64_t sub_1000FDF14@<X0>(uint64_t a1@<X8>, double a2@<D0>, double a3@<D1>, double a4@<D2>, double a5@<D3>, double a6@<D4>, double a7@<D5>)
{
  v58 = a1;
  v59 = type metadata accessor for UserInterfaceSizeClass();
  v14 = *(v59 - 8);
  __chkstk_darwin(v59);
  v16 = &v53 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_10022C350(&qword_100CA64E8, &unk_100A46060);
  __chkstk_darwin(v17);
  v19 = &v53 - v18;
  v20 = sub_10022C350(&qword_100CA6028, &qword_100A40610);
  __chkstk_darwin(v20 - 8);
  v55 = &v53 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v57 = &v53 - v23;
  __chkstk_darwin(v24);
  v56 = &v53 - v25;
  v26 = type metadata accessor for EnvironmentValues();
  v27 = *(v26 - 8);
  __chkstk_darwin(v26);
  v29 = &v53 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = v7 + *(type metadata accessor for GridGeometryComputerModifier(0) + 28);
  v31 = *v30;
  if (*(v30 + 8) == 1)
  {
    if ((v31 & 1) == 0)
    {
      goto LABEL_3;
    }

LABEL_7:
    v40 = [objc_opt_self() currentDevice];
    v41 = [v40 userInterfaceIdiom];

    v42 = type metadata accessor for TargetWindowSizeClass();
    v43 = *(*(v42 - 8) + 104);
    if (v41)
    {
      v44 = &enum case for TargetWindowSizeClass.portraitRegular(_:);
    }

    else
    {
      v44 = &enum case for TargetWindowSizeClass.compact(_:);
    }

    v47 = *v44;
    v48 = v58;
    return v43(v48, v47, v42);
  }

  static os_log_type_t.fault.getter();
  v53 = v26;
  v36 = static Log.runtimeIssuesLog.getter();
  v54 = v16;
  v37 = v17;
  v38 = v19;
  v39 = v36;
  os_log(_:dso:log:_:_:)();

  v19 = v38;
  v17 = v37;
  v16 = v54;
  EnvironmentValues.init()();
  swift_getAtKeyPath();
  sub_1000EBD74(v31, 0);
  (*(v27 + 8))(v29, v53);
  if (v60 == 1)
  {
    goto LABEL_7;
  }

LABEL_3:
  v32 = v56;
  sub_10009D114();
  v33 = v57;
  v34 = v59;
  (*(v14 + 104))(v57, enum case for UserInterfaceSizeClass.compact(_:), v59);
  sub_10001B350(v33, 0, 1, v34);
  v35 = *(v17 + 48);
  sub_1000FC5D4(v32, v19);
  sub_1000FC5D4(v33, &v19[v35]);
  if (sub_100024D10(v19, 1, v34) != 1)
  {
    v45 = v55;
    sub_1000FC5D4(v19, v55);
    if (sub_100024D10(&v19[v35], 1, v59) != 1)
    {
      v49 = v59;
      (*(v14 + 32))(v16, &v19[v35], v59);
      sub_1000EA958(&qword_100CA6088, &type metadata accessor for UserInterfaceSizeClass, &protocol conformance descriptor for UserInterfaceSizeClass);
      v50 = dispatch thunk of static Equatable.== infix(_:_:)();
      v51 = *(v14 + 8);
      v51(v16, v49);
      sub_100018144(v57, &qword_100CA6028, &qword_100A40610);
      sub_100018144(v32, &qword_100CA6028, &qword_100A40610);
      v51(v45, v49);
      sub_100018144(v19, &qword_100CA6028, &qword_100A40610);
      if (v50)
      {
        goto LABEL_16;
      }

      return sub_1005F03F4(a2, a3, a4, a5, a6, a7);
    }

    sub_100018144(v57, &qword_100CA6028, &qword_100A40610);
    sub_100018144(v32, &qword_100CA6028, &qword_100A40610);
    (*(v14 + 8))(v45, v59);
LABEL_11:
    sub_100018144(v19, &qword_100CA64E8, &unk_100A46060);
    return sub_1005F03F4(a2, a3, a4, a5, a6, a7);
  }

  sub_100018144(v33, &qword_100CA6028, &qword_100A40610);
  sub_100018144(v32, &qword_100CA6028, &qword_100A40610);
  if (sub_100024D10(&v19[v35], 1, v59) != 1)
  {
    goto LABEL_11;
  }

  sub_100018144(v19, &qword_100CA6028, &qword_100A40610);
LABEL_16:
  v52 = enum case for TargetWindowSizeClass.compact(_:);
  v42 = type metadata accessor for TargetWindowSizeClass();
  v43 = *(*(v42 - 8) + 104);
  v48 = v58;
  v47 = v52;
  return v43(v48, v47, v42);
}

uint64_t sub_1000FE59C()
{
  sub_100003B08();
  v1 = *v0;
  sub_100003AF8();
  *v2 = v1;

  sub_100003B14();

  return v3();
}

__n128 sub_1000FE680@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 32);
  v4 = (a1 + 40);
  if (*(a1 + 48) < 2u || *(a1 + 49) == 3)
  {
    v6 = *(a1 + 16);
    *(v2 + 16) = *a1;
    *(v2 + 32) = v6;
    *(v2 + 48) = v3;
    v7 = *(a1 + 56);
    *(v2 + 56) = *v4;
    *(v2 + 72) = v7;
  }

  else if (*(v2 + 48) != 0xFF)
  {
    a1 = v2 + 16;
    v4 = (v2 + 56);
    v3 = *(v2 + 48);
  }

  result = *(a1 + 16);
  v10 = v4[1];
  v9 = *v4;
  *a2 = *a1;
  *(a2 + 16) = result;
  *(a2 + 32) = v3;
  *(a2 + 56) = v10;
  *(a2 + 40) = v9;
  return result;
}

BOOL sub_1000FE700(uint64_t a1, uint64_t a2)
{
  v2 = type metadata accessor for Date();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  DayWeather.date.getter();
  sub_1000FE8B0();
  v6 = dispatch thunk of static Comparable.< infix(_:_:)();
  (*(v3 + 8))(v5, v2);
  return (v6 & 1) == 0;
}

uint64_t sub_1000FE834(uint64_t a1, int a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v3 = *(a1 + 32);
    if (v3 > 1)
    {
      return (v3 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    type metadata accessor for TargetWindowSizeClass();
    v6 = sub_1000039EC(*(a3 + 24));

    return sub_100024D10(v6, v7, v8);
  }
}

unint64_t sub_1000FE8B0()
{
  result = qword_100CA7020;
  if (!qword_100CA7020)
  {
    v3 = type metadata accessor for Date();
    result = swift_getWitnessTable(&protocol conformance descriptor for Date, v3, v0, v1);
    atomic_store(result, &qword_100CA7020);
  }

  return result;
}

uint64_t sub_1000FE91C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  if (a3 == 254)
  {
    *(result + 32) = -a2;
  }

  else
  {
    type metadata accessor for TargetWindowSizeClass();
    v6 = sub_1000039EC(*(a4 + 24));

    return sub_10001B350(v6, v7, a2, v8);
  }

  return result;
}

void sub_1000FE994(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_100170778();
  sub_10003275C();
  *v3 = v4;
}

uint64_t sub_1000FE9DC(uint64_t a1)
{
  v1 = type metadata accessor for Location.Identifier();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10022C350(&qword_100CADBA0, &qword_100A3D250);
  __chkstk_darwin(v5 - 8);
  v7 = &v9 - v6;
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {

    UnfairLock.lock()();
  }

  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    Location.identifier.getter();
    swift_beginAccess();
    sub_1000FEC1C(v4, v7);
    swift_endAccess();

    (*(v2 + 8))(v4, v1);
  }

  else
  {
    sub_10001B350(v7, 1, 1, v1);
  }

  sub_100018144(v7, &qword_100CADBA0, &qword_100A3D250);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {

    UnfairLock.unlock()();
  }

  return result;
}

uint64_t sub_1000FEC1C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a2;
  v4 = type metadata accessor for Location.Identifier();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = v2;
  v8 = *v2;
  sub_1000675AC(&qword_100CA3A40, &type metadata accessor for Location.Identifier);
  v25 = a1;
  v9 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v24 = v8;
  v10 = ~(-1 << *(v8 + 32));
  while (1)
  {
    v11 = v9 & v10;
    if (((*(v8 + 56 + (((v9 & v10) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v9 & v10)) & 1) == 0)
    {
      v14 = 1;
      v15 = v23;
      return sub_10001B350(v15, v14, 1, v4);
    }

    v12 = *(v5 + 72) * v11;
    (*(v5 + 16))(v7, *(v24 + 48) + v12, v4);
    sub_1000675AC(&qword_100CA3A48, &type metadata accessor for Location.Identifier);
    v13 = dispatch thunk of static Equatable.== infix(_:_:)();
    (*(v5 + 8))(v7, v4);
    if (v13)
    {
      break;
    }

    v9 = v11 + 1;
  }

  v16 = v22;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v18 = *v16;
  v26 = *v16;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_1006A1E20();
    v18 = v26;
  }

  v19 = *(v18 + 48) + v12;
  v15 = v23;
  (*(v5 + 32))(v23, v19, v4);
  sub_1000FEF54(v11);
  v14 = 0;
  *v16 = v26;
  return sub_10001B350(v15, v14, 1, v4);
}

uint64_t sub_1000FEEA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_10022C350(&qword_100CA61E0, &unk_100A31050);
  sub_100003928();
  if (*(v7 + 84) != a2)
  {
    return sub_1000039D8(*(a1 + *(a3 + 28) + 8));
  }

  v8 = v6;
  v9 = a1 + *(a3 + 24);

  return sub_100024D10(v9, a2, v8);
}

void sub_1000FEF54(int64_t a1)
{
  v3 = type metadata accessor for Location.Identifier();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v1;
  v8 = *v1 + 56;
  v9 = -1 << *(*v1 + 32);
  v10 = (a1 + 1) & ~v9;
  if (((1 << v10) & *(v8 + 8 * (v10 >> 6))) != 0)
  {
    v11 = ~v9;

    v12 = _HashTable.previousHole(before:)();
    if ((*(v8 + 8 * (v10 >> 6)) & (1 << v10)) != 0)
    {
      v36 = (v12 + 1) & v11;
      v14 = *(v4 + 16);
      v13 = v4 + 16;
      v35 = v14;
      v15 = *(v13 + 56);
      v37 = v13;
      v38 = v15;
      v16 = v11;
      v17 = (v13 - 8);
      v18 = v7;
      while (1)
      {
        v19 = v8;
        v20 = v38 * v10;
        v21 = v16;
        v35(v6, *(v18 + 48) + v38 * v10, v3);
        v22 = v18;
        sub_1000675AC(&qword_100CA3A40, &type metadata accessor for Location.Identifier);
        v23 = dispatch thunk of Hashable._rawHashValue(seed:)();
        (*v17)(v6, v3);
        v16 = v21;
        v24 = v23 & v21;
        if (a1 >= v36)
        {
          if (v24 < v36 || a1 < v24)
          {
LABEL_20:
            v18 = v22;
            goto LABEL_24;
          }
        }

        else if (v24 < v36 && a1 < v24)
        {
          goto LABEL_20;
        }

        v18 = v22;
        v26 = *(v22 + 48);
        v27 = v38 * a1;
        v28 = v26 + v38 * a1;
        v29 = v26 + v20 + v38;
        if (v38 * a1 < v20 || v28 >= v29)
        {
          swift_arrayInitWithTakeFrontToBack();
LABEL_23:
          v16 = v21;
          a1 = v10;
          goto LABEL_24;
        }

        a1 = v10;
        if (v27 != v20)
        {
          swift_arrayInitWithTakeBackToFront();
          goto LABEL_23;
        }

LABEL_24:
        v10 = (v10 + 1) & v16;
        v8 = v19;
        if (((*(v19 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
        {

          goto LABEL_28;
        }
      }
    }

    v18 = v7;
LABEL_28:
    *(v8 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  else
  {
    *(v8 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
    v18 = v7;
  }

  v32 = *(v18 + 16);
  v33 = __OFSUB__(v32, 1);
  v34 = v32 - 1;
  if (v33)
  {
    __break(1u);
  }

  else
  {
    *(v18 + 16) = v34;
    ++*(v18 + 36);
  }
}

uint64_t sub_1000FF260()
{
  v1 = type metadata accessor for WeatherData(0);
  sub_100003AE8(v1);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v5 = *(v4 + 64);
  v6 = type metadata accessor for Location();
  sub_100003AE8(v6);
  v8 = (v3 + v5 + *(v7 + 80)) & ~*(v7 + 80);
  v10 = *(v9 + 64);
  v11 = sub_10022C350(&qword_100CE29C8, &qword_100A9AC10);
  sub_100003AE8(v11);
  v14 = (((v8 + v10 + *(v12 + 80)) & ~*(v12 + 80)) + *(v13 + 64) + 7) & 0xFFFFFFFFFFFFFFF8;
  v15 = type metadata accessor for OSSignpostID();
  sub_100003810(v15);
  v16 = *(v0 + v14);
  v17 = swift_task_alloc();
  *(v26 + 16) = v17;
  *v17 = v26;
  v17[1] = sub_1000FE59C;
  sub_1000A7D8C();

  return sub_1000FF4F4(v18, v19, v20, v21, v22, v23, v24, v16);
}

unint64_t sub_1000FF4A0()
{
  result = qword_100CE22B8;
  if (!qword_100CE22B8)
  {
    result = swift_getWitnessTable(&protocol conformance descriptor for EdgeInsets, &type metadata for EdgeInsets, v0, v1);
    atomic_store(result, &qword_100CE22B8);
  }

  return result;
}

uint64_t sub_1000FF4F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 56) = v18;
  *(v8 + 64) = v19;
  *(v8 + 216) = v17;
  *(v8 + 40) = a7;
  *(v8 + 48) = a8;
  *(v8 + 24) = a5;
  *(v8 + 32) = a6;
  *(v8 + 16) = a4;
  v9 = type metadata accessor for Location();
  *(v8 + 72) = v9;
  v10 = *(v9 - 8);
  *(v8 + 80) = v10;
  *(v8 + 88) = *(v10 + 64);
  *(v8 + 96) = swift_task_alloc();
  v11 = *(type metadata accessor for WeatherData(0) - 8);
  *(v8 + 104) = v11;
  *(v8 + 112) = *(v11 + 64);
  *(v8 + 120) = swift_task_alloc();
  sub_10022C350(&qword_100CE29C8, &qword_100A9AC10);
  *(v8 + 128) = swift_task_alloc();
  v12 = type metadata accessor for NewsDataModel(0);
  *(v8 + 136) = v12;
  v13 = *(v12 - 8);
  *(v8 + 144) = v13;
  *(v8 + 152) = *(v13 + 64);
  *(v8 + 160) = swift_task_alloc();
  *(v8 + 168) = swift_task_alloc();
  v14 = *(type metadata accessor for PreprocessedWeatherData(0) - 8);
  *(v8 + 176) = v14;
  *(v8 + 184) = *(v14 + 64);
  *(v8 + 192) = swift_task_alloc();
  *(v8 + 200) = swift_task_alloc();

  return _swift_task_switch(sub_1000FF74C, 0, 0);
}

uint64_t sub_1000FF74C()
{
  sub_100003B08();
  sub_1000161C0((v0[2] + 160), *(v0[2] + 184));
  v1 = swift_task_alloc();
  v0[26] = v1;
  *v1 = v0;
  v1[1] = sub_10012A7F4;
  v2 = v0[25];
  v3 = v0[3];
  v4 = v0[4];

  return sub_1000FF7F4(v2, v3, v4);
}

uint64_t sub_1000FF7F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[70] = v3;
  v4[69] = a3;
  v4[68] = a2;
  v4[67] = a1;
  v5 = type metadata accessor for Date();
  v4[71] = v5;
  v4[72] = *(v5 - 8);
  v4[73] = swift_task_alloc();

  return _swift_task_switch(sub_1000FF914, 0, 0);
}

unint64_t sub_1000FF8C0()
{
  result = qword_100CA60B8;
  if (!qword_100CA60B8)
  {
    result = swift_getWitnessTable(asc_100A30C24, &unk_100C49E78, v0, v1);
    atomic_store(result, &qword_100CA60B8);
  }

  return result;
}

uint64_t sub_1000FF914()
{
  v1 = *(v0 + 584);
  v2 = *(v0 + 576);
  v36 = *(v0 + 568);
  v3 = *(v0 + 560);
  v4 = *(v0 + 536);
  sub_1000FFB84();
  sub_100010A34(v3 + 4, v3[7]);
  v5 = sub_100017B70();
  v35 = sub_1000FFCC0(v5, v6);
  sub_100010A34(v3 + 9, v3[12]);
  v7 = type metadata accessor for PreprocessedWeatherData(0);
  v8 = sub_10001F6C0();
  sub_1001146C8(v8, v9);
  sub_100010A34(v3 + 14, v3[17]);
  v10 = sub_10001F6C0();
  sub_100116468(v10, v11, v12);
  sub_100010A34(v3 + 19, v3[22]);
  v13 = sub_10001F6C0();
  sub_10011ECE4(v13, v14, v1, v15);
  sub_100010A34(v3 + 24, v3[27]);
  v16 = sub_100017B70();
  sub_100120938(v16, v17, v18);
  sub_100010A34(v3 + 29, v3[32]);
  v19 = sub_10001F6C0();
  sub_1001228F8(v19, v20, v21);
  sub_100010A34(v3 + 34, v3[37]);
  sub_100017B70();
  sub_100122EB0(v22);
  sub_100010A34(v3 + 39, v3[42]);
  sub_10001F6C0();
  sub_100123790(v23);
  sub_100010A34(v3 + 44, v3[47]);
  sub_100017B70();
  sub_10012499C(v24);
  sub_100010A34(v3 + 49, v3[52]);
  sub_10001F6C0();
  sub_100126AF4(v25, v1, v26);
  sub_100010A34(v3 + 54, v3[57]);
  v27 = sub_100017B70();
  sub_100127D64(v27, v28, v29);
  UUID.init()();
  (*(v2 + 8))(v1, v36);
  *(v4 + v7[5]) = v35;
  memcpy((v4 + v7[9]), (v0 + 248), 0x80uLL);
  v30 = (v4 + v7[11]);
  v31 = *(v0 + 488);
  v32 = *(v0 + 520);
  v30[1] = *(v0 + 504);
  v30[2] = v32;
  *v30 = v31;
  memcpy((v4 + v7[13]), (v0 + 16), 0xE8uLL);
  memcpy((v4 + v7[15]), (v0 + 376), 0x70uLL);

  v33 = *(v0 + 8);

  return v33();
}

uint64_t sub_1000FFB84()
{
  swift_beginAccess();

  Atomic.wrappedValue.getter();
}

void *sub_1000FFBDC()
{
  v0 = sub_1000FF8C0();
  sub_1000054C8(v0, &unk_100C49E78);

  return EnvironmentValues.subscript.getter();
}

uint64_t sub_1000FFC4C()
{
}

uint64_t sub_1000FFCC0(uint64_t a1, uint64_t a2)
{
  v53 = a2;
  v47 = a1;
  v2 = type metadata accessor for TemperatureScaleConfiguration.Gradient();
  __chkstk_darwin(v2 - 8);
  sub_1000037D8();
  v56 = v4 - v3;
  v57 = type metadata accessor for TemperatureScaleConfiguration();
  sub_1000037C4();
  v54 = v5;
  __chkstk_darwin(v6);
  sub_1000037D8();
  v49 = v8 - v7;
  v50 = type metadata accessor for AppConfiguration();
  sub_1000037C4();
  v48 = v9;
  __chkstk_darwin(v10);
  sub_1000037D8();
  v13 = v12 - v11;
  v14 = type metadata accessor for TimeZone();
  v46 = v14;
  v58 = *(v14 - 8);
  __chkstk_darwin(v14);
  sub_1000037D8();
  v17 = v16 - v15;
  v18 = type metadata accessor for CurrentWeather();
  sub_1000037C4();
  v20 = v19;
  __chkstk_darwin(v21);
  sub_1000037D8();
  v24 = v23 - v22;
  type metadata accessor for Date();
  sub_1000037C4();
  v51 = v26;
  v52 = v25;
  __chkstk_darwin(v25);
  v28 = &v45 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v29);
  v31 = &v45 - v30;
  type metadata accessor for WeatherData(0);
  WeatherDataModel.currentWeather.getter();
  CurrentWeather.date.getter();
  (*(v20 + 8))(v24, v18);
  v32 = v53;
  Location.timeZone.getter();
  Date.startOfDay(timeZone:)();
  v33 = *(v58 + 8);
  v58 += 8;
  v33(v17, v14);
  v34 = v55;
  sub_1000161C0((v55 + 16), *(v55 + 40));
  dispatch thunk of AppConfigurationManagerType.appConfiguration.getter();
  v35 = v49;
  AppConfiguration.temperatureScale.getter();
  (*(v48 + 8))(v13, v50);
  v36 = v56;
  TemperatureScaleConfiguration.gradient.getter();
  (*(v54 + 8))(v35, v57);
  v37 = sub_100100224(v36);
  sub_1000161C0((v34 + 56), *(v34 + 80));
  Location.timeZone.getter();
  v38 = v47;
  sub_1000FD610(v47, v17, 0, 10, 0);
  v33(v17, v46);
  v59 = v28;
  v60 = v38;
  v61 = v34;
  v62 = v32;
  v63 = v31;
  v64 = v37;
  sub_100100C4C();
  v40 = v39;

  v41 = *(v51 + 8);
  v42 = v28;
  v43 = v52;
  v41(v42, v52);
  v41(v31, v43);
  return v40;
}

uint64_t sub_100100164@<X0>(uint64_t a1@<X8>)
{
  if (qword_100CA1E90 != -1)
  {
    swift_once();
  }

  v2 = sub_10022C350(&qword_100CE1230, &qword_100A8D0D0);
  v3 = sub_10000703C(v2, qword_100D8F3A0);
  return sub_100060DE0(v3, a1, &qword_100CE1230, &qword_100A8D0D0);
}

void *sub_100100224(uint64_t a1)
{
  v2 = type metadata accessor for TemperatureScaleConfiguration.ColorStop();
  sub_1000037C4();
  v4 = v3;
  __chkstk_darwin(v5);
  v7 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = TemperatureScaleConfiguration.Gradient.stops.getter();
  v9 = *(v8 + 16);
  if (v9)
  {
    v37 = a1;
    v41 = _swiftEmptyArrayStorage;
    sub_1001005E0(0, v9, 0);
    v10 = sub_100100664();
    v11 = v41;
    v13 = *(v4 + 16);
    v12 = v4 + 16;
    v39 = v13;
    v40 = v10;
    v14 = *(v12 + 64);
    v36 = v8;
    v15 = v8 + ((v14 + 32) & ~v14);
    v38 = *(v12 + 56);
    v16 = (v12 - 8);
    do
    {
      v17 = v12;
      v39(v7, v15, v2);
      v18._countAndFlagsBits = TemperatureScaleConfiguration.ColorStop.color.getter();
      isa = UIColor.init(hex:)(v18).super.isa;
      UIColor.rgbaComponents.getter();
      v21 = v20;
      v23 = v22;
      v25 = v24;
      v27 = v26;

      TemperatureScaleConfiguration.ColorStop.location.getter();
      v29 = v28;
      (*v16)(v7, v2);
      v41 = v11;
      v31 = v11[2];
      v30 = v11[3];
      if (v31 >= v30 >> 1)
      {
        sub_1001005E0((v30 > 1), v31 + 1, 1);
        v11 = v41;
      }

      v11[2] = v31 + 1;
      v32 = &v11[5 * v31];
      v32[4] = v21;
      v32[5] = v23;
      v32[6] = v25;
      v32[7] = v27;
      v32[8] = v29;
      v15 += v38;
      --v9;
      v12 = v17;
    }

    while (v9);
    type metadata accessor for TemperatureScaleConfiguration.Gradient();
    sub_100003D98();
    (*(v33 + 8))(v37);
  }

  else
  {

    type metadata accessor for TemperatureScaleConfiguration.Gradient();
    sub_100003D98();
    (*(v34 + 8))(a1);
    return _swiftEmptyArrayStorage;
  }

  return v11;
}

char *sub_1001004A4(char *result, int64_t a2, char a3, char *a4)
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
    sub_10022C350(&qword_100CD1240, &qword_100A765A8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[40 * v8] <= v12)
    {
      memmove(v12, v13, 40 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 40 * v8);
  }

  return v10;
}

char *sub_1001005E0(char *a1, int64_t a2, char a3)
{
  result = sub_1001004A4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_10010063C()
{
  sub_10000FE4C();
  v0 = sub_1001006A8();
  return sub_100005F94(v0);
}

unint64_t sub_100100664()
{
  result = qword_100CB8BA0;
  if (!qword_100CB8BA0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100CB8BA0);
  }

  return result;
}

unint64_t sub_1001006C8()
{
  result = qword_100CA60F8;
  if (!qword_100CA60F8)
  {
    result = swift_getWitnessTable(byte_100A30AD4, &unk_100C49DB8, v0, v1);
    atomic_store(result, &qword_100CA60F8);
  }

  return result;
}

uint64_t sub_10010071C(uint64_t result, uint64_t a2, uint64_t (*a3)(void, uint64_t, uint64_t, uint64_t), void (*a4)(void))
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v5 = *(a2 + 16);
    result = a3(0, result, v5, a2);
    if (v6)
    {
      v7 = v5;
    }

    else
    {
      v7 = result;
    }

    if ((v7 & 0x8000000000000000) == 0)
    {
      a4(0);
      sub_1000746B4();

      return sub_100016748();
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100100844(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = a3 - result;
  if (__OFSUB__(a3, result))
  {
    __break(1u);
LABEL_14:
    __break(1u);
    return result;
  }

  if (a2 < 1)
  {
    if (v3 <= 0 && v3 > a2)
    {
      return 0;
    }
  }

  else if ((v3 & 0x8000000000000000) == 0 && v3 < a2)
  {
    return 0;
  }

  v5 = __OFADD__(result, a2);
  result += a2;
  if (v5)
  {
    goto LABEL_14;
  }

  return result;
}

uint64_t sub_100100890(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1000EB3AC();

  return static EnvironmentKey<>._valuesEqual(_:_:)(a1, a2, a3, a4, v8);
}

unint64_t sub_1001008F4(unint64_t result, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v4 = *(a3 + 16);
  if (v4 < result || v4 < a2)
  {
    goto LABEL_9;
  }

  if ((a2 & 0x8000000000000000) == 0)
  {
    v6 = a4(0);
    sub_100003810(v6);
  }

LABEL_10:
  __break(1u);
  return result;
}

BOOL sub_1001009A8(unsigned __int8 a1, unsigned __int8 a2)
{
  if (a1 >> 6)
  {
    if (a1 >> 6 == 1)
    {
      if ((a2 & 0xC0) != 0x40)
      {
        return 0;
      }

      return ((a2 ^ a1) & 1) == 0;
    }

    if (a2 == 128)
    {
      return 1;
    }
  }

  else if (a2 < 0x40u)
  {
    return ((a2 ^ a1) & 1) == 0;
  }

  return 0;
}

void *sub_100100A18@<X0>(void *a1@<X8>)
{
  sub_1000EF7D4();
  EnvironmentValues.subscript.getter();
  return memcpy(a1, __src, 0x48uLL);
}

void sub_100100A6C()
{
  sub_10000E8AC();
  v30 = v2;
  v31 = v1;
  v4 = v3;
  v6 = v5;
  v7 = v0;
  v9 = v8;
  v32 = v10;
  v12 = v11(0);
  v13 = sub_100003AE8(v12);
  v15 = v14;
  __chkstk_darwin(v13);
  v17 = &v27 - v16;
  v18 = *(v9 + 16);
  if (v18)
  {
    v19 = sub_100021788();
    v28 = v6;
    v6(v19, v18, 0);
    v20 = v4(0);
    sub_100003AE8(v20);
    v22 = v9 + ((*(v21 + 80) + 32) & ~*(v21 + 80));
    v29 = *(v23 + 72);
    while (1)
    {
      v31(v22);
      if (v7)
      {
        break;
      }

      v7 = 0;
      v25 = _swiftEmptyArrayStorage[2];
      v24 = _swiftEmptyArrayStorage[3];
      if (v25 >= v24 >> 1)
      {
        v28(v24 > 1, v25 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v25 + 1;
      sub_100011468();
      sub_100114640(v17, _swiftEmptyArrayStorage + v26 + *(v15 + 72) * v25, v30);
      v22 += v29;
      if (!--v18)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_7:
    sub_10002FE90();
    sub_10000C8F4();
  }
}

uint64_t sub_100100D18(void *__src)
{
  memcpy(__dst, __src, sizeof(__dst));
  sub_1000EF7D4();
  return EnvironmentValues.subscript.setter();
}

void sub_100100D90(uint64_t a1)
{
  type metadata accessor for Date();
  if (v1 <= 0x3F)
  {
    type metadata accessor for TimeZone();
    if (v2 <= 0x3F)
    {
      sub_100100F0C(319, &qword_100CBB7C8, sub_10000F868, &type metadata accessor for Measurement);
      if (v3 <= 0x3F)
      {
        sub_100007760();
        if (v4 <= 0x3F)
        {
          sub_100100F0C(319, &unk_100CD0E80, &type metadata accessor for Precipitation, &type metadata accessor for Optional);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_100100F0C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_100100F70()
{
  sub_10000C778();
  v1 = v0;
  v59 = v2;
  type metadata accessor for LocationModel();
  sub_1000037C4();
  v60 = v3;
  v61 = v4;
  __chkstk_darwin(v3);
  sub_1000037D8();
  v52 = v6 - v5;
  v7 = type metadata accessor for LocationViewerViewModel(0);
  v8 = sub_100003810(v7);
  __chkstk_darwin(v8);
  sub_1000037D8();
  v11 = v10 - v9;
  v12 = sub_100003984();
  sub_10022C350(v12, v13);
  sub_1000037E8();
  sub_100003828();
  __chkstk_darwin(v14);
  v16 = (&v48 - v15);
  v53 = sub_10022C350(&qword_100CC9A30, &qword_100A67CE8);
  sub_1000037E8();
  sub_100003828();
  __chkstk_darwin(v17);
  v48 = &v48 - v18;
  v56 = sub_10022C350(&qword_100CC9A38, &qword_100A67CF0);
  sub_1000037E8();
  sub_100003828();
  __chkstk_darwin(v19);
  v54 = &v48 - v20;
  sub_10022C350(&qword_100CC9A40, &qword_100A67CF8);
  sub_1000037C4();
  v57 = v21;
  v58 = v22;
  sub_100003828();
  __chkstk_darwin(v23);
  v55 = &v48 - v24;
  *v16 = static Alignment.center.getter();
  v16[1] = v25;
  v26 = sub_10022C350(&qword_100CC9A48, &qword_100A67D00);
  sub_100103E98(v0, v16 + *(v26 + 44));
  Solarium.init()();
  v64 = v0;
  sub_10022C350(&qword_100CC9A50, &qword_100A67D08);
  sub_10001E6B0();
  sub_1005F6F6C(v27);
  sub_1005F0710();
  View.staticIf<A, B>(_:then:)();
  sub_100018198(v16, &qword_100CC9A28);
  v50 = *(v0 + *(type metadata accessor for MeasuredLocationViewerView(0) + 28) + 8);
  sub_100104794();
  v28 = v61;
  v49 = *(v61 + 16);
  v29 = v52;
  v30 = v60;
  v49(v52, v11, v60);
  sub_1001095D0();
  v31 = LocationModel.name.getter();
  v33 = v32;
  v34 = *(v28 + 8);
  v61 = v28 + 8;
  v51 = v34;
  v34(v29, v30);
  v35 = v48;
  v36 = &v48[*(v53 + 36)];
  *v36 = v31;
  v36[1] = v33;
  Solarium.init()();
  v63 = v1;
  sub_10022C350(&qword_100CC9A78, &qword_100A67D18);
  sub_1005F07FC();
  sub_1005F0964();
  v37 = v54;
  View.staticIf<A, B>(_:then:)();
  sub_100018198(v35, &qword_100CC9A30);
  sub_100104794();
  v38 = v60;
  v49(v29, v11, v60);
  sub_1001095D0();
  v39 = v37 + *(sub_10022C350(&qword_100CC9AB0, &qword_100A67D30) + 36);
  LocationModel.coalesceLocationIdentifier.getter();
  v51(v29, v38);
  v40 = v39 + *(type metadata accessor for LocationViewerFullscreenMapPresentationSourceModifier(0) + 20);
  KeyPath = swift_getKeyPath();
  v67 = 0;
  *v40 = KeyPath;
  *(v40 + 72) = 0;
  v42 = v37 + *(sub_10022C350(&qword_100CC9AB8, &qword_100A67D60) + 36);
  *v42 = sub_100104614;
  *(v42 + 8) = 0;
  *(v42 + 16) = 0;
  v43 = v56;
  v44 = v37 + *(v56 + 36);
  *v44 = sub_100109BBC;
  *(v44 + 8) = 0;
  *(v44 + 16) = 0;
  v45 = sub_1005F0A1C();
  View.enableForegroundEffects()();
  sub_100018198(v37, &qword_100CC9A38);
  Solarium.init()();
  v62 = v1;
  sub_10022C350(&qword_100CC9AF0, &qword_100A67D68);
  v65 = v43;
  v66 = v45;
  swift_getOpaqueTypeConformance2();
  sub_1005F0C74();
  View.staticIf<A, B>(_:then:)();
  v46 = sub_100003984();
  v47(v46);
  sub_10000536C();
}

uint64_t sub_1001015CC@<X0>(uint64_t a2@<X8>)
{
  KeyPath = swift_getKeyPath();
  v4 = sub_1007DB27C();
  sub_10022C350(&qword_100CDA2B0, &qword_100A85318);
  sub_1000037E8();
  v5 = sub_1000053B8();
  v6(v5);
  result = sub_10022C350(&qword_100CDA2B8, &unk_100A85320);
  v8 = a2 + *(result + 36);
  *v8 = KeyPath;
  *(v8 + 8) = v4 & 1;
  return result;
}

uint64_t sub_1001016D4@<X0>(unint64_t a1@<X2>, uint64_t a2@<X3>, void (*a3)(char *, uint64_t)@<X4>, void (*a4)(char *, char *, uint64_t)@<X5>, uint64_t a5@<X6>, uint64_t a6@<X8>)
{
  v135 = a5;
  v124 = a4;
  v125 = a3;
  v142 = a2;
  v136 = a1;
  v134 = a6;
  v150 = type metadata accessor for WeatherFormatPlaceholder();
  v162 = *(v150 - 8);
  __chkstk_darwin(v150);
  v133 = &v112 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v132 = type metadata accessor for NSUnitTemperature.BaseWeatherFormatStyle();
  v131 = *(v132 - 8);
  __chkstk_darwin(v132);
  v159 = &v112 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v128 = &v112 - v9;
  v130 = type metadata accessor for Calendar();
  v129 = *(v130 - 8);
  __chkstk_darwin(v130);
  v152 = &v112 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v163 = type metadata accessor for DailyForecastComponentViewModel.DayForecastViewModel(0);
  __chkstk_darwin(v163);
  v149 = &v112 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10022C350(&qword_100CB5F98, "rQ\v");
  __chkstk_darwin(v12 - 8);
  v158 = &v112 - v13;
  v118 = type metadata accessor for WeatherConditionIcon();
  v117 = *(v118 - 8);
  __chkstk_darwin(v118);
  v116 = &v112 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v157 = type metadata accessor for TimeZone();
  v119 = *(v157 - 8);
  __chkstk_darwin(v157);
  v153 = &v112 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v112 - v17;
  v161 = sub_10022C350(&qword_100CA53F8, &unk_100A3B3E0);
  v148 = *(v161 - 8);
  __chkstk_darwin(v161);
  v156 = &v112 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v160 = &v112 - v21;
  __chkstk_darwin(v22);
  v147 = &v112 - v23;
  __chkstk_darwin(v24);
  v146 = &v112 - v25;
  v138 = type metadata accessor for CurrentWeather();
  v137 = *(v138 - 1);
  __chkstk_darwin(v138);
  v115 = &v112 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v29 = &v112 - v28;
  v30 = type metadata accessor for Precipitation();
  v144 = *(v30 - 8);
  v145 = v30;
  __chkstk_darwin(v30);
  v32 = &v112 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v127 = type metadata accessor for WeatherCondition();
  v126 = *(v127 - 8);
  __chkstk_darwin(v127);
  v34 = &v112 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = type metadata accessor for Date();
  v36 = *(v35 - 8);
  __chkstk_darwin(v35);
  v151 = &v112 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v38);
  v141 = &v112 - v39;
  __chkstk_darwin(v40);
  v42 = &v112 - v41;
  DayWeather.date.getter();
  v43 = static Date.== infix(_:_:)();
  v114 = v36;
  v44 = *(v36 + 8);
  v154 = v35;
  v140 = v36 + 8;
  v139 = v44;
  v44(v42, v35);
  v45 = v43 & 1;
  v143 = v34;
  DayWeather.conditionOfRelevance(isToday:)();
  v155 = v32;
  DayWeather.precipitationOfRelevance(isToday:)();
  if (v43)
  {
    type metadata accessor for WeatherData(0);
    WeatherDataModel.currentWeather.getter();
    LODWORD(v113) = CurrentWeather.isDaylight.getter();
    (*(v137 + 8))(v29, v138);
  }

  else
  {
    LODWORD(v113) = 1;
  }

  Double.roundedPrecipitationPercent.getter();
  v47 = v46;
  v48 = v146;
  DayWeather.lowTemperature.getter();
  v49 = v147;
  DayWeather.highTemperature.getter();
  DayWeather.date.getter();
  Location.timeZone.getter();
  v123 = sub_1001028B4(v47, v42, v143, v155, v48, v49, v45, v18);
  v122 = v50;
  v51 = v119;
  v52 = *(v119 + 8);
  v121 = v119 + 8;
  v120 = v52;
  v52(v18, v157);
  v53 = v154;
  v139(v42, v154);
  v54 = v141;
  DayWeather.date.getter();
  v112 = *(v114 + 16);
  v112(v151, v124, v53);
  Location.timeZone.getter();
  v55 = (v148 + 16);
  v56 = *(v148 + 16);
  v57 = v161;
  v56(v160, v48, v161);
  v125 = v55;
  v124 = v56;
  v56(v156, v49, v57);
  v58 = v116;
  WeatherCondition.conditionIcon(isDaylight:isFilled:forLightBackground:)();
  v114 = WeatherConditionIcon.name.getter();
  v113 = v59;
  (*(v117 + 8))(v58, v118);
  v118 = WeatherCondition.description.getter();
  v117 = v60;
  LODWORD(v116) = WeatherCondition.isPrecipitation.getter();
  v61 = v145;
  v62 = v158;
  v63 = v54;
  (*(v144 + 16))(v158, v155, v145);
  sub_10001B350(v62, 0, 1, v61);
  type metadata accessor for WeatherData(0);
  v64 = v115;
  WeatherDataModel.currentWeather.getter();
  v65 = CurrentWeather.isDaylight.getter();
  (*(v137 + 8))(v64, v138);
  v66 = v153;
  v67 = *(v142 + 96);
  v68 = v149;
  v112(v149, v63, v154);
  (*(v51 + 16))(&v68[v163[7]], v66, v157);
  static Calendar.currentCalendar(with:)();
  if (Calendar.isDateInToday(_:)() & 1) != 0 || (v67 & 1) != 0 && (Calendar.isDate(_:inSameDayAs:)())
  {
    v69 = [objc_opt_self() mainBundle];
    v164._object = 0x8000000100AC6200;
    v70._countAndFlagsBits = 0x7961646F54;
    v71._object = 0x8000000100AC61E0;
    v164._countAndFlagsBits = 0xD000000000000044;
    v71._countAndFlagsBits = 0xD000000000000015;
    v70._object = 0xE500000000000000;
    v72 = NSLocalizedString(_:tableName:bundle:value:comment:)(v71, 0, v69, v70, v164);

    v73 = v163;
    *&v68[v163[5]] = v72;
    *&v68[v73[6]] = v72;
  }

  else
  {
    v74 = Date.shortDayOfWeek(timeZone:isStandalone:)();
    v75 = v163;
    v76 = &v68[v163[5]];
    *v76 = v74;
    v76[1] = v77;
    v78 = Date.dayOfWeek(timeZone:context:)();
    v79 = &v68[v75[6]];
    *v79 = v78;
    v79[1] = v80;
  }

  v81 = v163;
  v82 = v161;
  v83 = v124;
  v124(&v68[v163[8]], v160, v161);
  v83(&v68[v81[9]], v156, v82);
  v84 = &v68[v81[10]];
  v85 = v113;
  *v84 = v114;
  v84[1] = v85;
  v86 = &v68[v81[11]];
  v87 = v117;
  *v86 = v118;
  v86[1] = v87;
  v68[v81[13]] = v116 & 1;
  *&v68[v81[12]] = v47;
  *&v68[v81[14]] = Double.formattedPercent(roundToNearestPercent:)(1);
  sub_10011422C(v158, &v68[v81[15]]);
  v68[v81[16]] = v65 & 1;
  v88 = v128;
  static WeatherFormatStyle<>.weather.getter();
  NSUnitTemperature.BaseWeatherFormatStyle.secondary.getter();
  v125 = *(v131 + 1);
  v89 = v132;
  v125(v88, v132);
  LODWORD(v142) = enum case for WeatherFormatPlaceholder.none(_:);
  v138 = *(v162 + 104);
  v90 = v133;
  v138(v133);
  v137 = type metadata accessor for UnitManager();
  static UnitManager.standard.getter();
  v136 = sub_100114168();
  v124 = Measurement.formatted<A>(_:placeholder:unitManager:)();
  v119 = v91;

  v92 = *(v162 + 8);
  v162 += 8;
  v131 = v92;
  v93 = v150;
  v92(v90, v150);
  v94 = v125;
  v125(v159, v89);
  v95 = &v68[v163[17]];
  v96 = v119;
  *v95 = v124;
  v95[1] = v96;
  static WeatherFormatStyle<>.weather.getter();
  NSUnitTemperature.BaseWeatherFormatStyle.secondary.getter();
  v94(v88, v89);
  v97 = v93;
  (v138)(v90, v142, v93);
  static UnitManager.standard.getter();
  v98 = v159;
  v99 = v161;
  v100 = v156;
  v142 = Measurement.formatted<A>(_:placeholder:unitManager:)();
  v138 = v101;

  v131(v90, v97);
  v94(v98, v89);
  (*(v129 + 8))(v152, v130);
  sub_1000180EC(v158, &qword_100CB5F98, "rQ\v");
  v102 = *(v148 + 8);
  v102(v100, v99);
  v102(v160, v99);
  v120(v153, v157);
  v103 = v154;
  v104 = v139;
  v139(v151, v154);
  v104(v141, v103);
  v102(v147, v99);
  v102(v146, v99);
  (*(v144 + 8))(v155, v145);
  (*(v126 + 8))(v143, v127);
  v105 = v163;
  v106 = v149;
  v107 = &v149[v163[18]];
  v108 = v138;
  *v107 = v142;
  v107[1] = v108;
  *(v106 + v105[20]) = v135;
  v109 = (v106 + v105[19]);
  v110 = v122;
  *v109 = v123;
  v109[1] = v110;
  sub_10011429C(v106, v134, type metadata accessor for DailyForecastComponentViewModel.DayForecastViewModel);
}

uint64_t sub_100102814()
{
  type metadata accessor for SettingReader();
  static SettingReader.shared.getter();
  if (qword_100CA29B0 != -1)
  {
    swift_once();
  }

  v0 = SettingReader.isEnabled(_:with:)();

  byte_100CD9418 = v0 & 1;
  return result;
}

uint64_t sub_1001028B4(Swift::Double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, char a7, uint64_t a8)
{
  v86 = a4;
  v87 = a6;
  v91 = a5;
  v10 = type metadata accessor for WeatherFormatPlaceholder();
  v88 = *(v10 - 8);
  v89 = v10;
  __chkstk_darwin(v10);
  v84 = &v73 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10022C350(&qword_100CAA9F0, qword_100A44F50);
  __chkstk_darwin(v12 - 8);
  v83 = &v73 - v13;
  v85 = type metadata accessor for NSUnitTemperature.BaseWeatherFormatStyle();
  v90 = *(v85 - 8);
  __chkstk_darwin(v85);
  v15 = &v73 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a7)
  {
    v16 = [objc_opt_self() mainBundle];
    v96._object = 0x8000000100AC62C0;
    v17._countAndFlagsBits = 0x7961646F54;
    v96._countAndFlagsBits = 0xD00000000000006DLL;
    v17._object = 0xE500000000000000;
    v18._countAndFlagsBits = 0;
    v18._object = 0xE000000000000000;
    v19 = NSLocalizedString(_:tableName:bundle:value:comment:)(v17, 0, v16, v18, v96);
    countAndFlagsBits = v19._countAndFlagsBits;
    object = v19._object;
  }

  else
  {
    countAndFlagsBits = Date.dayOfWeek(timeZone:context:)();
    object = v22;
  }

  sub_100109810();
  v24 = v23;
  v25 = *(v23 + 16);
  if (v25 >= *(v23 + 24) >> 1)
  {
    sub_100109810();
    v24 = v68;
  }

  *(v24 + 16) = v25 + 1;
  v26 = v24;
  v27 = v24 + 16 * v25;
  *(v27 + 32) = countAndFlagsBits;
  *(v27 + 40) = object;
  if ((WeatherCondition.isPrecipitation.getter() & 1) != 0 && (v28 = Precipitation.accessibilityDescription(with:)(a1), v28.value._object))
  {
    v29 = v28.value._countAndFlagsBits;
    v30 = v28.value._object;
    v94 = WeatherCondition.description.getter();
    v95 = v31;
    v92 = Precipitation.accessibilityDescription.getter();
    v93 = v32;
    sub_10002D5A4();
    v33 = StringProtocol.localizedCaseInsensitiveCompare<A>(_:)();

    if (v33)
    {
      v34 = WeatherCondition.description.getter();
      v36 = v35;
      v37 = *(v26 + 16);
      v38 = v37 + 1;
      if (v37 >= *(v26 + 24) >> 1)
      {
        sub_100109810();
        v26 = v72;
      }

      *(v26 + 16) = v38;
      v39 = v26 + 16 * v37;
      *(v39 + 32) = v34;
      *(v39 + 40) = v36;
    }

    else
    {
      v38 = *(v26 + 16);
    }

    v41 = v38 + 1;
    if (v38 >= *(v26 + 24) >> 1)
    {
      sub_100109810();
      v26 = v71;
    }
  }

  else
  {
    v29 = WeatherCondition.description.getter();
    v30 = v40;
    v38 = *(v26 + 16);
    v41 = v38 + 1;
    if (v38 >= *(v26 + 24) >> 1)
    {
      sub_100109810();
      v26 = v70;
    }
  }

  v86 = v26;
  *(v26 + 16) = v41;
  v42 = v26 + 16 * v38;
  *(v42 + 32) = v29;
  *(v42 + 40) = v30;
  v43 = [objc_opt_self() mainBundle];
  v97._object = 0x8000000100AC6270;
  v44._object = 0x8000000100AC6250;
  v97._countAndFlagsBits = 0xD00000000000004FLL;
  v44._countAndFlagsBits = 0xD000000000000015;
  v45._countAndFlagsBits = 0;
  v45._object = 0xE000000000000000;
  v46 = NSLocalizedString(_:tableName:bundle:value:comment:)(v44, 0, v43, v45, v97);
  v81 = v46._object;
  v82 = v46._countAndFlagsBits;

  sub_10022C350(&qword_100CA40C8, &unk_100A2E170);
  v47 = swift_allocObject();
  *(v47 + 16) = xmmword_100A2D320;
  static Set<>.value.getter();
  v80 = type metadata accessor for Locale();
  v48 = v83;
  sub_10001B350(v83, 1, 1, v80);
  static WeatherFormatStyle<>.weather(_:locale:)();

  sub_1000180EC(v48, &qword_100CAA9F0, qword_100A44F50);
  v79 = enum case for WeatherFormatPlaceholder.none(_:);
  v49 = v88;
  v50 = v89;
  v78 = *(v88 + 104);
  v51 = v84;
  v78(v84);
  v77 = type metadata accessor for UnitManager();
  static UnitManager.standard.getter();
  v76 = sub_10022C350(&qword_100CA53F8, &unk_100A3B3E0);
  v75 = sub_100114168();
  v52 = v85;
  v53 = Measurement.formatted<A>(_:placeholder:unitManager:)();
  v74 = v54;

  v88 = *(v49 + 8);
  (v88)(v51, v50);
  v90 = *(v90 + 8);
  (v90)(v15, v52);
  *(v47 + 56) = &type metadata for String;
  v87 = sub_100035744();
  *(v47 + 64) = v87;
  v55 = v74;
  *(v47 + 32) = v53;
  *(v47 + 40) = v55;
  static Set<>.value.getter();
  sub_10001B350(v48, 1, 1, v80);
  static WeatherFormatStyle<>.weather(_:locale:)();

  sub_1000180EC(v48, &qword_100CAA9F0, qword_100A44F50);
  (v78)(v51, v79, v50);
  static UnitManager.standard.getter();
  v56 = Measurement.formatted<A>(_:placeholder:unitManager:)();
  v58 = v57;

  (v88)(v51, v50);
  (v90)(v15, v52);
  v59 = v87;
  *(v47 + 96) = &type metadata for String;
  *(v47 + 104) = v59;
  *(v47 + 72) = v56;
  *(v47 + 80) = v58;
  v60 = String.init(format:_:)();
  v62 = v61;

  v63 = v86;
  v64 = *(v86 + 16);
  if (v64 >= *(v86 + 24) >> 1)
  {
    sub_100109810();
    v63 = v69;
  }

  *(v63 + 16) = v64 + 1;
  v65 = v63 + 16 * v64;
  *(v65 + 32) = v60;
  *(v65 + 40) = v62;
  v94 = v63;
  sub_10022C350(&qword_100CCC930, &qword_100A41810);
  sub_1001141C8();
  v66 = BidirectionalCollection<>.joined(separator:)();

  return v66;
}

uint64_t sub_100103084()
{
  v1 = type metadata accessor for Access();
  sub_1000037C4();
  v3 = v2;
  __chkstk_darwin(v4);
  sub_1000037D8();
  v7 = v6 - v5;
  v8 = type metadata accessor for FeatureState();
  sub_1000037C4();
  v10 = v9;
  __chkstk_darwin(v11);
  sub_1000101A4();
  v12 = [objc_opt_self() currentDevice];
  v13 = [v12 userInterfaceIdiom];

  v14 = &enum case for FeatureState.disabled(_:);
  if (v13)
  {
    v14 = &enum case for FeatureState.enabled(_:);
  }

  (*(v10 + 104))(v0, *v14, v8);
  sub_10022C350(&qword_100CC74A0, &qword_100A63CA0);
  (*(v3 + 104))(v7, enum case for Access.protected(_:), v1);
  result = Setting<>.init(_:defaultValue:access:)();
  qword_100D91270 = result;
  return result;
}

uint64_t sub_100103254()
{
  sub_10000FE4C();
  v0 = sub_10010327C();
  return sub_100005F94(v0);
}

uint64_t sub_10010329C(uint64_t (*a1)(void), uint64_t a2)
{
  a1();
  EnvironmentValues.subscript.getter();
  return v3;
}

unint64_t sub_1001032E4()
{
  result = qword_100CD95A8;
  if (!qword_100CD95A8)
  {
    result = swift_getWitnessTable(byte_100A84F6C, &_s42LocationContentWantsGridViewEnvironmentKeyVN, v0, v1);
    atomic_store(result, &qword_100CD95A8);
  }

  return result;
}

unint64_t sub_1001033C4()
{
  result = qword_100CA6138;
  if (!qword_100CA6138)
  {
    result = swift_getWitnessTable("ٵ ", &type metadata for SidebarVisibilityKey, v0, v1);
    atomic_store(result, &qword_100CA6138);
  }

  return result;
}

uint64_t sub_100103438@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v19[1] = a1;
  v19[2] = a2;
  v3 = type metadata accessor for PageControlDisplayStateModifier(0);
  v4 = v3 - 8;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v3);
  v7 = sub_10022C350(&qword_100CCAA48, &qword_100A691E8);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v19 - v9;
  LOBYTE(v20) = sub_1001038B0() & 1;
  sub_1005F1770(v2, v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v12 = swift_allocObject();
  sub_100103E40(v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v12 + v11);
  v13 = sub_10022C350(&qword_100CCAA50, &qword_100A691F0);
  v14 = sub_1005F6F6C(&unk_100CCAA58);
  View.onChange<A>(of:initial:_:)();

  v15 = (v2 + *(v4 + 32));
  v17 = *v15;
  v16 = v15[1];
  v20 = v17;
  v21 = v16;
  sub_10022C350(&qword_100CCAA60, &qword_100A691F8);
  State.wrappedValue.getter();
  type metadata accessor for PageControlDisplayState(0);
  v20 = v13;
  v21 = &type metadata for Bool;
  v22 = v14;
  v23 = &protocol witness table for Bool;
  swift_getOpaqueTypeConformance2();
  sub_1000EA178(&unk_100CCA1B8);
  View.environment<A>(_:)();

  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_100103770()
{
  type metadata accessor for PageControlDisplayStateModifier(0);
  sub_100003A0C();
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));
  sub_1000EBD74(*v3, *(v3 + 8));
  v4 = *(v0 + 20);
  sub_10022C350(&qword_100CA62E0, &qword_100A3D5F0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = type metadata accessor for UserInterfaceSizeClass();
    if (!sub_100017854(v3 + v4))
    {
      sub_100003D20();
      (*(v6 + 8))(v3 + v4, v5);
    }
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1001038B0()
{
  v1 = type metadata accessor for EnvironmentValues();
  v32 = *(v1 - 8);
  v33 = v1;
  __chkstk_darwin(v1);
  v31 = &v31 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for UserInterfaceSizeClass();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v34 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10022C350(&qword_100CA64E8, &unk_100A46060);
  v7 = v6 - 8;
  __chkstk_darwin(v6);
  v9 = &v31 - v8;
  v10 = sub_10022C350(&qword_100CA6028, &qword_100A40610);
  __chkstk_darwin(v10 - 8);
  v12 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v31 - v14;
  __chkstk_darwin(v16);
  v18 = &v31 - v17;
  type metadata accessor for PageControlDisplayStateModifier(0);
  v35 = v0;
  sub_10009D114();
  v19 = v4;
  (*(v4 + 104))(v15, enum case for UserInterfaceSizeClass.compact(_:), v3);
  sub_10001B350(v15, 0, 1, v3);
  v20 = *(v7 + 56);
  sub_1000302D8(v18, v9, &qword_100CA6028, &qword_100A40610);
  sub_1000302D8(v15, &v9[v20], &qword_100CA6028, &qword_100A40610);
  if (sub_100024D10(v9, 1, v3) == 1)
  {
    sub_100018198(v15, &qword_100CA6028);
    sub_100018198(v18, &qword_100CA6028);
    if (sub_100024D10(&v9[v20], 1, v3) == 1)
    {
      sub_100018198(v9, &qword_100CA6028);
LABEL_12:
      v26 = 0;
      return v26 & 1;
    }

    goto LABEL_6;
  }

  sub_1000302D8(v9, v12, &qword_100CA6028, &qword_100A40610);
  if (sub_100024D10(&v9[v20], 1, v3) == 1)
  {
    sub_100018198(v15, &qword_100CA6028);
    sub_100018198(v18, &qword_100CA6028);
    (*(v19 + 8))(v12, v3);
LABEL_6:
    sub_100018198(v9, &qword_100CA64E8);
    goto LABEL_7;
  }

  v27 = v34;
  (*(v19 + 32))(v34, &v9[v20], v3);
  sub_1000EA178(&qword_100CA6088);
  v28 = dispatch thunk of static Equatable.== infix(_:_:)();
  v29 = *(v19 + 8);
  v29(v27, v3);
  sub_100018198(v15, &qword_100CA6028);
  sub_100018198(v18, &qword_100CA6028);
  v29(v12, v3);
  sub_100018198(v9, &qword_100CA6028);
  if (v28)
  {
    goto LABEL_12;
  }

LABEL_7:
  v21 = [objc_opt_self() currentDevice];
  v22 = [v21 userInterfaceIdiom];

  if (v22 != 1)
  {
    goto LABEL_12;
  }

  v23 = *v35;
  if (*(v35 + 8) != 1)
  {

    static os_log_type_t.fault.getter();
    v24 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    v25 = v31;
    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1000EBD74(v23, 0);
    (*(v32 + 8))(v25, v33);
    LOBYTE(v23) = v36;
  }

  v26 = v23 ^ 1;
  return v26 & 1;
}

uint64_t sub_100103E40(uint64_t a1, uint64_t a2)
{
  v3 = sub_1000038D8();
  v4(v3);
  sub_1000037E8();
  v5 = sub_100003940();
  v6(v5);
  return a2;
}

uint64_t sub_100103E98@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v45 = a1;
  v48 = a2;
  v2 = type metadata accessor for MeasuredLocationViewerView(0);
  v3 = v2 - 8;
  v52 = *(v2 - 8);
  __chkstk_darwin(v2);
  v53 = v4;
  v54 = &v45 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = type metadata accessor for ContentStatusBanner(0);
  __chkstk_darwin(v51);
  v50 = &v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v49 = &v45 - v7;
  v46 = type metadata accessor for LocationModel();
  v8 = *(v46 - 8);
  __chkstk_darwin(v46);
  v10 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = type metadata accessor for Location.Identifier();
  v11 = *(v47 - 8);
  __chkstk_darwin(v47);
  v13 = &v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for LocationViewerViewModel(0);
  v15 = v14 - 8;
  __chkstk_darwin(v14);
  v17 = &v45 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v20 = &v45 - v19;
  sub_100104794();
  v21 = *&v20[*(v15 + 56)];

  sub_1001095D0();
  sub_100104794();
  v22 = v46;
  (*(v8 + 16))(v10, v17, v46);
  sub_1001095D0();
  LocationModel.identifier.getter();
  (*(v8 + 8))(v10, v22);
  v23 = Location.Identifier.id.getter();
  v25 = v24;
  v26 = v13;
  v27 = v48;
  (*(v11 + 8))(v26, v47);
  sub_100109678(v23, v25, v21);
  v28 = v45;

  v29 = *(v3 + 60);
  v30 = type metadata accessor for LocationViewBannerContainer(0);
  sub_10042F370(v28 + v29, v27 + v30[5]);
  v31 = v27 + v30[6];
  *v31 = swift_getKeyPath();
  *(v31 + 8) = 0;
  *(v31 + 16) = 0;
  *(v31 + 24) = 0;
  *(v31 + 32) = 0;
  v32 = v30[7];
  *(v27 + v32) = swift_getKeyPath();
  sub_10022C350(&qword_100CB3278, &qword_100A70D50);
  swift_storeEnumTagMultiPayload();
  v33 = v30[8];
  *(v27 + v33) = swift_getKeyPath();
  sub_10022C350(&qword_100CA62E0, &qword_100A3D5F0);
  swift_storeEnumTagMultiPayload();
  if (qword_100CA2320 != -1)
  {
    swift_once();
  }

  v34 = sub_10000703C(v51, qword_100CC9760);
  v35 = v49;
  sub_1005F1770(v34, v49);
  sub_1005F1770(v35, v50);
  State.init(wrappedValue:)();
  sub_1001095D0();
  v36 = v28;
  v37 = v54;
  sub_1005F1770(v36, v54);
  v38 = (*(v52 + 80) + 16) & ~*(v52 + 80);
  v39 = swift_allocObject();
  sub_100103E40(v37, v39 + v38);
  v40 = static Alignment.center.getter();
  v42 = v41;
  result = sub_10022C350(&qword_100CC9B18, &unk_100A67E40);
  v44 = (v27 + *(result + 36));
  *v44 = sub_10010DCAC;
  v44[1] = v39;
  v44[2] = v40;
  v44[3] = v42;
  return result;
}

uint64_t sub_100104438()
{
  type metadata accessor for MeasuredLocationViewerView(0);
  sub_100003A0C();
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  v4 = v0[6];
  sub_10022C350(&qword_100CA62E0, &qword_100A3D5F0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = type metadata accessor for UserInterfaceSizeClass();
    if (!sub_100017854(v3 + v4))
    {
      sub_100003D20();
      (*(v6 + 8))(v3 + v4, v5);
    }
  }

  else
  {
  }

  sub_100006F14((v3 + v0[9]));
  swift_unknownObjectRelease();
  sub_100006F14((v3 + v0[12]));
  sub_100006F14((v3 + v0[13]));

  sub_100030448();

  return swift_deallocObject();
}

uint64_t sub_1001045B4()
{
  sub_10000FE4C();
  v0 = sub_1000EF7B4();
  return sub_100005F94(v0);
}

double sub_1001045DC()
{
  v0.n128_f64[0] = sub_1000834F0(v11);
  *&result = sub_1000A7D44(v1, v2, v3, v4, v5, v6, v7, v8, v0, v11[0], v11[1], v9).n128_u64[0];
  return result;
}

uint64_t sub_100104640()
{
  v1 = sub_10022C350(&qword_100CE2750, &qword_100A95550);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v7 - v3;
  v5 = OBJC_IVAR____TtC7Weather28LocationViewCollisionOptions__value;
  v7 = 0;
  v8 = _swiftEmptyArrayStorage;
  Published.init(initialValue:)();
  (*(v2 + 32))(v0 + v5, v4, v1);
  return v0;
}

uint64_t sub_100104750@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for LocationViewCollisionOptions(0);
  result = ObservableObject<>.objectWillChange.getter();
  *a2 = result;
  return result;
}

void sub_100104794()
{
  sub_10000C778();
  v1 = sub_1000753E4();
  v2 = type metadata accessor for LocationViewerInput(v1);
  v3 = sub_100003810(v2);
  __chkstk_darwin(v3);
  sub_1000106FC();
  sub_1000373B8();
  sub_100006C90();
  __chkstk_darwin(v4);
  sub_100008064();
  __chkstk_darwin(v5);
  sub_10001D3DC();
  sub_10004EE48();
  sub_1000171B0();
  v6 = sub_100030700();
  if (v6)
  {
    if (v6 == 1)
    {
      v7 = sub_10022C350(&qword_100CA4C10, &unk_100A9E000);
      sub_100024C98(*(v7 + 48));
      sub_100041C64();
    }

    else
    {
      sub_10003CA90();
    }
  }

  else
  {
    sub_10000938C();
    v8();
    v9 = sub_100028ED4();
    v0(v9);

    sub_10022C350(&qword_100CA4C10, &unk_100A9E000);
    sub_10002CC38();
    sub_10000EF70();
    sub_100018074();
    v10 = sub_100049FC4();
    sub_1000217D8(v10, v11, &qword_100CA4BF0, &qword_100A2EE88);
    swift_endAccess();
  }

  sub_10000536C();
}

uint64_t sub_100104954(void (*a1)(uint64_t *, uint64_t), uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t))
{
  v5 = sub_10022C350(&qword_100CA4C08, &unk_100A2EEA0);
  v6 = __chkstk_darwin(v5 - 8);
  v8 = v16 - v7;
  (a3)(v16, v6);
  a1(v16, 1);

  v9 = type metadata accessor for LocationViewerInput(0);
  if (sub_100024D10(v8, 1, v9) != 1)
  {
    return sub_1000A0AC0();
  }

  sub_1000180EC(v8, &qword_100CA4C08, &unk_100A2EEA0);
  v16[0] = 0;
  v16[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(82);
  v11._countAndFlagsBits = 0xD00000000000004BLL;
  v11._object = 0x8000000100ABBDF0;
  String.append(_:)(v11);
  v12._object = 0x8000000100ABC150;
  v12._countAndFlagsBits = 0xD000000000000013;
  String.append(_:)(v12);
  v13._countAndFlagsBits = 8236;
  v13._object = 0xE200000000000000;
  String.append(_:)(v13);
  v14._countAndFlagsBits = 0xD000000000000017;
  v14._object = 0x8000000100ABC170;
  String.append(_:)(v14);
  v15._countAndFlagsBits = 46;
  v15._object = 0xE100000000000000;
  String.append(_:)(v15);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t sub_100104B88@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v4 = a2;
  sub_1000161C0(a3, a3[3]);
  return sub_100104BE0(a1, v4, a4);
}

uint64_t sub_100104BE0@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  LODWORD(v237) = a2;
  v228 = a3;
  v4 = type metadata accessor for Date();
  sub_1000037C4();
  v217 = v5;
  __chkstk_darwin(v6);
  sub_1000038E4();
  v8 = sub_100003918(v7);
  v9 = type metadata accessor for TimeState(v8);
  v10 = sub_100003810(v9);
  __chkstk_darwin(v10);
  sub_1000038E4();
  v12 = sub_100003918(v11);
  v212 = type metadata accessor for ModalViewState(v12);
  sub_1000037E8();
  __chkstk_darwin(v13);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v14);
  sub_10000E70C();
  v16 = sub_100003918(v15);
  v17 = type metadata accessor for LocationsState(v16);
  v18 = sub_100003810(v17);
  __chkstk_darwin(v18);
  sub_1000038E4();
  v225 = v19;
  sub_1000038CC();
  v203 = type metadata accessor for CurrentWeather();
  sub_1000037C4();
  v202 = v20;
  __chkstk_darwin(v21);
  sub_1000038E4();
  v201 = v22;
  v23 = sub_10022C350(&qword_100CA3898, &qword_100A314D0);
  sub_100003810(v23);
  sub_100003828();
  __chkstk_darwin(v24);
  v26 = sub_100003918(&v194[-v25]);
  v206 = type metadata accessor for WeatherData(v26);
  sub_1000037E8();
  __chkstk_darwin(v27);
  sub_1000038E4();
  v200 = v28;
  v29 = sub_10022C350(&qword_100CA37B0, &unk_100A2D740);
  v30 = sub_100003810(v29);
  __chkstk_darwin(v30);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v31);
  sub_10000E70C();
  v224 = v32;
  v33 = sub_1000038CC();
  v34 = type metadata accessor for ContentStatusBanner(v33);
  v233 = *(v34 - 8);
  __chkstk_darwin(v34 - 8);
  sub_100003848();
  v220 = v35;
  sub_10000386C();
  __chkstk_darwin(v36);
  v234 = &v194[-v37];
  sub_10000386C();
  __chkstk_darwin(v38);
  sub_10000E70C();
  v232 = v39;
  v40 = sub_10022C350(&qword_100CA38A0, &qword_100A2D7B0);
  v41 = sub_100003810(v40);
  __chkstk_darwin(v41);
  v43 = &v194[-((v42 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v44);
  v46 = &v194[-v45];
  v223 = type metadata accessor for LocationModel();
  sub_1000037C4();
  v211 = v47;
  __chkstk_darwin(v48);
  sub_100003848();
  v222 = v49;
  sub_10000386C();
  __chkstk_darwin(v50);
  sub_10000E70C();
  v227 = v51;
  v52 = sub_1000038CC();
  active = type metadata accessor for LocationViewerActiveLocationState(v52);
  v54 = sub_100003810(active);
  __chkstk_darwin(v54);
  sub_100003848();
  v221 = v55;
  sub_10000386C();
  __chkstk_darwin(v56);
  v58 = &v194[-v57];
  __chkstk_darwin(v59);
  v61 = &v194[-v60];
  v226 = type metadata accessor for Location.Identifier();
  sub_1000037C4();
  v219 = v62;
  __chkstk_darwin(v63);
  sub_1000038E4();
  v229 = v64;
  v65 = sub_1000038CC();
  v66 = type metadata accessor for ViewState.SecondaryViewState(v65);
  sub_1000037E8();
  __chkstk_darwin(v67);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v68);
  sub_100003908();
  __chkstk_darwin(v69);
  v71 = &v194[-v70];
  v72 = type metadata accessor for ViewState(0);
  sub_1000037E8();
  __chkstk_darwin(v73);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v74);
  v76 = &v194[-v75];
  v230 = a1;
  sub_100028088();
  *(v78 - 256) = v77;
  sub_100094F94(v77, v76);
  sub_10007460C();
  sub_100094F94(&v76[v79], v71);
  v210 = v66;
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_10001E5C4();
    sub_100105E30(v76, v80);
    sub_100105E30(v71, type metadata accessor for ViewState.SecondaryViewState);
    goto LABEL_3;
  }

  v89 = *v71;
  if (*&v76[*(v72 + 36) + 8] == 1)
  {
    v90 = [objc_opt_self() currentDevice];
    [v90 userInterfaceIdiom];

    LOBYTE(v90) = v76[*(v72 + 28)];
    sub_10001E5C4();
    sub_100105E30(v76, v91);
    if ((v90 & 1) == 0)
    {

LABEL_3:
      v81 = v228;
      if (v237)
      {
        if (qword_100CA2740 != -1)
        {
          goto LABEL_48;
        }

        goto LABEL_5;
      }

      type metadata accessor for LocationViewerInput(0);
      v86 = sub_100031400();
      v88 = 1;
      return sub_10001B350(v86, v88, 1, v87);
    }
  }

  else
  {
    sub_10001E5C4();
    sub_100105E30(v76, v92);
  }

  v198 = v72;
  v197 = v89;
  v196 = v89 + OBJC_IVAR____TtCV7Weather23LocationViewerViewState8_Storage_activeLocationState;
  sub_100094F94(v89 + OBJC_IVAR____TtCV7Weather23LocationViewerViewState8_Storage_activeLocationState, v61);
  sub_100094F94(v61, v58);
  v93 = v226;
  v94 = sub_100024D10(v58, 1, v226);
  v237 = v43;
  v199 = v4;
  if (v94 == 1)
  {
    v95 = v229;
    static CurrentLocation.placeholderIdentifier.getter();
    sub_10001341C();
  }

  else
  {
    sub_10001341C();
    v95 = v229;
    (*(v219 + 32))(v229, v58, v93);
  }

  v96 = v234;
  v97 = v230;
  sub_1001060E8(v230, v95, v227);
  v98 = *(v97 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_contentStatusBanners);
  v101 = *(v98 + 64);
  v100 = v98 + 64;
  v99 = v101;
  v102 = 1 << *(*(v97 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_contentStatusBanners) + 32);
  v103 = -1;
  if (v102 < 64)
  {
    v103 = ~(-1 << v102);
  }

  v104 = v103 & v99;
  v81 = (v102 + 63) >> 6;
  v231 = *(v97 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_contentStatusBanners);

  v105 = 0;
  v106 = &_swiftEmptyDictionarySingleton;
  v235 = v100;
  v236 = v46;
  while (2)
  {
    v218 = v106;
    if (!v104)
    {
      goto LABEL_21;
    }

    while (1)
    {
      v107 = v105;
LABEL_25:
      v108 = __clz(__rbit64(v104));
      v104 &= v104 - 1;
      v109 = v232;
      v110 = (*(v231 + 48) + 16 * (v108 | (v107 << 6)));
      v111 = *v110;
      v112 = v110[1];
      sub_100049574();
      sub_100094F94(v113, v109);
      v114 = sub_10022C350(&qword_100CA38A8, &qword_100A2D7B8);
      v115 = v237;
      *v237 = v111;
      *(v115 + 8) = v112;
      sub_1000053C4();
      sub_100106F30(v109, v115 + v116);
      sub_10001B350(v115, 0, 1, v114);
      sub_10010ABD0(v111, v112);
      v96 = v234;
LABEL_26:
      v117 = v115;
      v118 = v236;
      sub_100051B60(v117, v236, &qword_100CA38A0, &qword_100A2D7B0);
      v119 = sub_10022C350(&qword_100CA38A8, &qword_100A2D7B8);
      if (sub_100024D10(v118, 1, v119) == 1)
      {

        v147 = *(v230 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData + 16);

        v148 = Location.Identifier.id.getter();
        v149 = v224;
        sub_1000864C0(v148, v150, v147);

        v151 = v204;
        sub_100106A9C(v149, v204);
        v152 = type metadata accessor for LocationWeatherDataState(0);
        if (sub_100024D10(v151, 1, v152) == 1)
        {
          sub_1000180EC(v151, &qword_100CA37B0, &unk_100A2D740);
          v153 = v207;
          sub_100003934();
          sub_10001B350(v154, v155, v156, v206);
          v157 = v214;
          v158 = v213;
          v159 = v196;
        }

        else
        {
          v153 = v207;
          sub_1001A0D3C();
          sub_1000166C4();
          sub_100105E30(v151, v160);
          v161 = sub_100024D10(v153, 1, v206);
          v157 = v214;
          v158 = v213;
          v159 = v196;
          if (v161 != 1)
          {
            v162 = v200;
            sub_100106F30(v153, v200);
            v163 = v201;
            WeatherDataModel.currentWeather.getter();
            LODWORD(v237) = CurrentWeather.requiresAdditionalContrast.getter();
            (*(v202 + 8))(v163, v203);
            sub_100105E30(v162, type metadata accessor for WeatherData);
            goto LABEL_44;
          }
        }

        sub_1000180EC(v153, &qword_100CA3898, &qword_100A314D0);
        LODWORD(v237) = 0;
LABEL_44:
        v164 = v215;
        v165 = v197;
        LODWORD(v236) = *(v197 + OBJC_IVAR____TtCV7Weather23LocationViewerViewState8_Storage_listToLocationViewTransitionState);
        sub_100094F94(v159, v221);
        v166 = v211;
        v167 = v223;
        v168 = v227;
        (*(v211 + 16))(v222, v227, v223);
        LODWORD(v235) = *(OBJC_IVAR____TtCV7Weather23LocationViewerViewState8_Storage_notificationsOptInAlertState + v165);
        v169 = v230;
        sub_100094F94(v230 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_locations, v225);
        v170 = v169 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_environment;
        swift_beginAccess();
        LODWORD(v234) = *(v170 + 1);
        sub_100094F94(v169 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_modalView, v158);
        type metadata accessor for ModalViewState.MapViewModal(0);
        sub_100031400();
        sub_100003934();
        sub_10001B350(v171, v172, v173, v174);
        swift_storeEnumTagMultiPayload();
        sub_1000BC008();
        LODWORD(v233) = v175;

        sub_100105E30(v157, type metadata accessor for ModalViewState);
        sub_100105E30(v158, type metadata accessor for ModalViewState);
        (*(v166 + 8))(v168, v167);
        (*(v219 + 8))(v229, v226);
        LODWORD(v232) = *(v169 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_debugState);
        v176 = *(v169 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_debugState + 8);
        v177 = *(v169 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_debugState + 16);
        sub_100094F94(v169 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_time, v164);
        v178 = *(v217 + 32);
        v179 = v216;
        v180 = sub_100003940();
        v181 = v199;
        v178(v180);
        LODWORD(v231) = *(v170 + *(type metadata accessor for EnvironmentState(0) + 40));
        sub_100028088();
        v183 = *(v182 - 256);
        v184 = v205;
        sub_100094F94(v183, v205);
        v230 = *(v184 + *(v198 + 36));

        sub_10001E5C4();
        sub_100105E30(v184, v185);
        sub_10007460C();
        v187 = v208;
        sub_100094F94(v183 + v186, v208);
        v188 = v187;
        v189 = v209;
        sub_100106F30(v188, v209);
        LOBYTE(v184) = swift_getEnumCaseMultiPayload() != 1;
        sub_100105E30(v189, type metadata accessor for ViewState.SecondaryViewState);
        v190 = v228;
        sub_100106F30(v221, v228);
        v191 = type metadata accessor for LocationViewerInput(0);
        (*(v166 + 32))(v190 + v191[5], v222, v223);
        *(v190 + v191[6]) = v235;
        sub_100106F30(v225, v190 + v191[7]);
        *(v190 + v191[8]) = v234;
        *(v190 + v191[9]) = v233 & 1;
        v192 = v190 + v191[10];
        *v192 = v232;
        *(v192 + 8) = v176;
        *(v192 + 16) = v177;
        (v178)(v190 + v191[11], v179, v181);
        *(v190 + v191[12]) = v231;
        *(v190 + v191[13]) = v230;
        *(v190 + v191[14]) = v236 & 1;
        *(v190 + v191[15]) = v184;
        *(v190 + v191[16]) = v218;
        *(v190 + v191[17]) = v237 & 1;
        sub_100051B60(v224, v190 + v191[18], &qword_100CA37B0, &unk_100A2D740);
        v86 = v190;
        v88 = 0;
        v87 = v191;
        return sub_10001B350(v86, v88, 1, v87);
      }

      v120 = *v118;
      v121 = v118[1];
      sub_1000053C4();
      sub_100106F30(v118 + v122, v96);
      if (v121 >= 2)
      {
        break;
      }

      v123 = sub_10000E718();
      sub_1000B84FC(v123, v124);
      sub_100014084();
      v100 = v235;
      if (!v104)
      {
LABEL_21:
        while (1)
        {
          v107 = v105 + 1;
          if (__OFADD__(v105, 1))
          {
            break;
          }

          if (v107 >= v81)
          {
            sub_10022C350(&qword_100CA38A8, &qword_100A2D7B8);
            v115 = v237;
            sub_100003934();
            sub_10001B350(v125, v126, v127, v128);
            v104 = 0;
            goto LABEL_26;
          }

          v104 = *(v100 + 8 * v107);
          ++v105;
          if (v104)
          {
            v105 = v107;
            goto LABEL_25;
          }
        }

        __break(1u);
LABEL_47:
        __break(1u);
LABEL_48:
        swift_once();
LABEL_5:
        v82 = type metadata accessor for Logger();
        sub_10000703C(v82, qword_100D90C18);
        v83 = Logger.logObject.getter();
        v84 = static os_log_type_t.fault.getter();
        if (os_log_type_enabled(v83, v84))
        {
          v85 = swift_slowAlloc();
          *v85 = 0;
          _os_log_impl(&_mh_execute_header, v83, v84, "Error: Could not create an initial input in LocationViewerInputFactory! This is a bug and should be investigated.", v85, 2u);
        }

        simulateCrash(_:_:)("Error: Could not create an initial input in LocationViewerInputFactory! This is a bug and should be investigated.", 113, 2, _swiftEmptyArrayStorage);
        sub_100236608(v81);
        type metadata accessor for LocationViewerInput(0);
        v86 = sub_100031400();
        v88 = 0;
        return sub_10001B350(v86, v88, 1, v87);
      }
    }

    sub_100049574();
    sub_100094F94(v96, v220);
    v129 = v218;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v238 = v129;
    sub_10000E718();
    v130 = sub_100031B34();
    v132 = v129[2];
    v133 = (v131 & 1) == 0;
    v134 = v132 + v133;
    v100 = v235;
    if (__OFADD__(v132, v133))
    {
      goto LABEL_47;
    }

    v135 = v130;
    v136 = v131;
    sub_10022C350(&qword_100CA38B0, &unk_100A2D7C0);
    if (_NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v134))
    {
      sub_10000E718();
      v137 = sub_100031B34();
      v96 = v234;
      if ((v136 & 1) == (v138 & 1))
      {
        v135 = v137;
        if ((v136 & 1) == 0)
        {
          goto LABEL_35;
        }

LABEL_38:
        v144 = sub_10000E718();
        sub_1000B84FC(v144, v145);
        v106 = v238;
        sub_10001827C();
        sub_100236C3C(v220, v146);
        sub_100014084();
        continue;
      }
    }

    else
    {
      v96 = v234;
      if (v136)
      {
        goto LABEL_38;
      }

LABEL_35:
      v106 = v238;
      v238[(v135 >> 6) + 8] |= 1 << v135;
      v139 = (v106[6] + 16 * v135);
      *v139 = v120;
      v139[1] = v121;
      sub_10001827C();
      sub_1000053C4();
      sub_100106F30(v220, v140);
      sub_100014084();
      v141 = v106[2];
      v142 = __OFADD__(v141, 1);
      v143 = v141 + 1;
      if (!v142)
      {
        v106[2] = v143;
        continue;
      }

      __break(1u);
    }

    break;
  }

  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_100105E30(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_1000037E8();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_100105E88(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_1000037E8();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_100105EE0(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_1000037E8();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_100105F38(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_1000037E8();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_100105F90(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_100003D98();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_100105FE4(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_1000037E8();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_10010603C(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_100003D98();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_100106090(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_1000037E8();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1001060E8@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X8>)
{
  v59 = a3;
  v5 = sub_10022C350(&qword_100CA3588, &unk_100A4F350);
  __chkstk_darwin(v5 - 8);
  v57 = &v55 - v6;
  v7 = type metadata accessor for Location.Identifier();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v58 = &v55 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v55 - v11;
  v13 = type metadata accessor for LocationsState(0);
  __chkstk_darwin(v13);
  v15 = &v55 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_10022C350(&unk_100CE2F20, &unk_100A2D7D0);
  __chkstk_darwin(v16 - 8);
  v18 = &v55 - v17;
  v19 = type metadata accessor for LocationModel();
  v62 = *(v19 - 8);
  __chkstk_darwin(v19);
  v56 = &v55 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100094F94(a1 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_locations, v15);
  static CurrentLocation.placeholderIdentifier.getter();
  v21 = a2;
  LOBYTE(a1) = static Location.Identifier.== infix(_:_:)();
  v60 = v8;
  v61 = v7;
  v22 = *(v8 + 8);
  v55 = v12;
  v23 = v22(v12, v7);
  if (a1)
  {
    sub_10022C350(&qword_100CA38C0, &unk_100A2D7E0);
    type metadata accessor for CurrentLocation();
    swift_storeEnumTagMultiPayload();
    v24 = type metadata accessor for LocationOfInterest();
    sub_10001B350(v57, 1, 1, v24);
    LocationModelData.init(locationOfInterest:isPredictedLocation:)();
    (*(v62 + 104))(v18, enum case for LocationModel.current(_:), v19);
    sub_10001B350(v18, 0, 1, v19);
  }

  else
  {
    __chkstk_darwin(v23);
    *(&v55 - 2) = v21;
    sub_100030C98(sub_100079458, (&v55 - 4), v25);
  }

  v26 = v21;
  sub_100105E30(v15, type metadata accessor for LocationsState);
  v27 = sub_100024D10(v18, 1, v19);
  v28 = v58;
  if (v27 != 1)
  {
    v41 = *(v62 + 32);
    v42 = v56;
    v41(v56, v18, v19);
    return (v41)(v59, v42, v19);
  }

  sub_1000180EC(v18, &unk_100CE2F20, &unk_100A2D7D0);
  if (qword_100CA26B0 != -1)
  {
    swift_once();
  }

  v29 = type metadata accessor for Logger();
  sub_10000703C(v29, qword_100D90A78);
  v30 = v61;
  v31 = *(v60 + 16);
  v56 = v26;
  v60 += 16;
  v31(v28, v26, v61);
  v32 = Logger.logObject.getter();
  v33 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v63 = v35;
    *v34 = 141558275;
    *(v34 + 4) = 1752392040;
    *(v34 + 12) = 2081;
    sub_10005BDF0();
    v36 = dispatch thunk of CustomStringConvertible.description.getter();
    v37 = v28;
    v39 = v38;
    v22(v37, v61);
    v40 = sub_100078694(v36, v39, &v63);

    *(v34 + 14) = v40;
    _os_log_impl(&_mh_execute_header, v32, v33, "Location identifier: %{private,mask.hash}s, was not found in LocationsState", v34, 0x16u);
    sub_100006F14(v35);
    v30 = v61;
  }

  else
  {

    v22(v28, v30);
  }

  v44 = v56;
  Location.Identifier.kind.getter();
  v45 = Location.Identifier.Kind.rawValue.getter();
  v47 = v46;
  if (v45 == Location.Identifier.Kind.rawValue.getter() && v47 == v48)
  {

    goto LABEL_18;
  }

  v50 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v50)
  {
LABEL_18:
    sub_10022C350(&qword_100CA38C0, &unk_100A2D7E0);
    type metadata accessor for CurrentLocation();
    v51 = v59;
    swift_storeEnumTagMultiPayload();
    v54 = type metadata accessor for LocationOfInterest();
    sub_10001B350(v57, 1, 1, v54);
    LocationModelData.init(locationOfInterest:isPredictedLocation:)();
    v53 = &enum case for LocationModel.current(_:);
    return (*(v62 + 104))(v51, *v53, v19);
  }

  sub_10022C350(&qword_100CA38B8, &unk_100A66A90);
  v31(v55, v44, v30);
  v51 = v59;
  SavedLocation.Placeholder.init(identifier:searchTitle:searchSubtitle:)();
  type metadata accessor for SavedLocation();
  swift_storeEnumTagMultiPayload();
  v52 = type metadata accessor for LocationOfInterest();
  sub_10001B350(v57, 1, 1, v52);
  LocationModelData.init(locationOfInterest:isPredictedLocation:)();
  v53 = &enum case for LocationModel.saved(_:);
  return (*(v62 + 104))(v51, *v53, v19);
}

uint64_t sub_100106868(uint64_t a1, uint64_t a2)
{
  v2 = type metadata accessor for Location.Identifier();
  sub_1000037C4();
  v4 = v3;
  __chkstk_darwin(v5);
  sub_1000037D8();
  v8 = v7 - v6;
  LocationModel.identifier.getter();
  v9 = static Location.Identifier.== infix(_:_:)();
  (*(v4 + 8))(v8, v2);
  return v9 & 1;
}

uint64_t sub_100106940(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_10010699C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 16))
  {
    return (*a1 + 2147483646);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 1;
  if (v4 >= 3)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1001069F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  sub_100075174();
  if (v8 && (v9 = v7, v10 = v6, v11 = sub_100031B34(), (v12 & 1) != 0))
  {
    v13 = v11;
    v14 = *(v10 + 56);
    v15 = a4(0);
    sub_1000037E8();
    sub_1001AF774(v14 + *(v16 + 72) * v13, v4, v9);
    v17 = sub_10000FEF4();
    v20 = v15;
  }

  else
  {
    a4(0);
    v17 = sub_100007E1C();
  }

  return sub_10001B350(v17, v18, v19, v20);
}

uint64_t sub_100106A9C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10022C350(&qword_100CA37B0, &unk_100A2D740);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100106B20(uint64_t a1, uint64_t a2, int *a3)
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
    sub_10022C350(&qword_100CAA9F0, qword_100A44F50);
    sub_100003928();
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = a3[5];
    }

    else
    {
      type metadata accessor for WeatherDataModel();
      sub_100003928();
      if (*(v13 + 84) == a2)
      {
        v10 = v12;
        v11 = a3[6];
      }

      else
      {
        type metadata accessor for WeatherData.CachingState(0);
        sub_100003928();
        if (*(v15 + 84) == a2)
        {
          v10 = v14;
          v11 = a3[7];
        }

        else
        {
          type metadata accessor for WeatherData.WeatherStatisticsState(0);
          sub_100003928();
          if (*(v17 + 84) == a2)
          {
            v10 = v16;
            v11 = a3[8];
          }

          else
          {
            v10 = sub_10022C350(&qword_100CA75C8, &unk_100A325F0);
            v11 = a3[9];
          }
        }
      }
    }

    return sub_100024D10(a1 + v11, a2, v10);
  }
}

uint64_t sub_100106CC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for LocationPreviewViewState(0);

  return _swift_storeEnumTagSinglePayloadGeneric(a1, a2, a3, v6, sub_100106D28);
}

uint64_t sub_100106D28(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_1000038D8();
  type metadata accessor for PreviewLocation(v8);
  sub_100003928();
  if (*(v10 + 84) == a3)
  {
    v11 = v9;
    v12 = v4;
  }

  else
  {
    type metadata accessor for LocationPreviewModalViewState(0);
    sub_100003928();
    if (*(v14 + 84) == a3)
    {
      v11 = v13;
      v15 = *(a4 + 20);
    }

    else
    {
      v11 = type metadata accessor for SelectedSearchResult(0);
      v15 = *(a4 + 24);
    }

    v12 = v4 + v15;
  }

  return sub_10001B350(v12, a2, a2, v11);
}

uint64_t sub_100106E04(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LocationPreviewViewState(0);

  return _swift_getEnumTagSinglePayloadGeneric(a1, a2, v4, sub_100106E5C);
}

uint64_t sub_100106E5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000038D8();
  type metadata accessor for PreviewLocation(v6);
  sub_100003928();
  if (*(v8 + 84) == a2)
  {
    v9 = v7;
    v10 = v3;
  }

  else
  {
    type metadata accessor for LocationPreviewModalViewState(0);
    sub_100003928();
    if (*(v12 + 84) == a2)
    {
      v9 = v11;
      v13 = *(a3 + 20);
    }

    else
    {
      v9 = type metadata accessor for SelectedSearchResult(0);
      v13 = *(a3 + 24);
    }

    v10 = v3 + v13;
  }

  return sub_100024D10(v10, a2, v9);
}

uint64_t sub_100106F30(uint64_t a1, uint64_t a2)
{
  v3 = sub_1000038D8();
  v4(v3);
  sub_1000037E8();
  v5 = sub_100003940();
  v6(v5);
  return a2;
}

uint64_t sub_100106F88(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000038D8();
  v5(v4);
  sub_1000037E8();
  (*(v6 + 32))(a2, v2);
  return a2;
}

uint64_t sub_100106FE4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000038D8();
  v5(v4);
  sub_1000037E8();
  (*(v6 + 32))(a2, v2);
  return a2;
}

uint64_t sub_100107040()
{
  sub_100003A00();
  v2(0);
  sub_1000037E8();
  (*(v3 + 32))(v0, v1);
  return v0;
}

uint64_t sub_10010709C()
{
  sub_100003A00();
  v1(0);
  sub_1000037E8();
  v2 = sub_100003940();
  v3(v2);
  return v0;
}

uint64_t sub_1001070F4()
{
  sub_100003A00();
  v1(0);
  sub_1000037E8();
  v2 = sub_100003940();
  v3(v2);
  return v0;
}

uint64_t sub_10010714C(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_1000037E8();
  (*(v5 + 32))(a2, a1);
  return a2;
}

uint64_t sub_1001071AC(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_1000037E8();
  v4 = sub_100003940();
  v5(v4);
  return a2;
}

void sub_10010721C(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_1000038D8();
  type metadata accessor for LocationViewerActiveLocationState(v8);
  sub_100003928();
  if (*(v10 + 84) == a3)
  {
    v11 = v9;
    v12 = v4;
  }

  else
  {
    type metadata accessor for LocationModel();
    sub_100003928();
    if (*(v14 + 84) == a3)
    {
      v11 = v13;
      v15 = a4[5];
    }

    else
    {
      type metadata accessor for LocationsState(0);
      sub_100003928();
      if (*(v17 + 84) == a3)
      {
        v11 = v16;
        v15 = a4[7];
      }

      else
      {
        if (a3 == 0x7FFFFFFF)
        {
          *(v4 + a4[10] + 8) = (a2 - 1);
          return;
        }

        type metadata accessor for Date();
        sub_100003928();
        if (*(v19 + 84) == a3)
        {
          v11 = v18;
          v15 = a4[11];
        }

        else
        {
          v11 = sub_10022C350(&qword_100CA37B0, &unk_100A2D740);
          v15 = a4[18];
        }
      }
    }

    v12 = v4 + v15;
  }

  sub_10001B350(v12, a2, a2, v11);
}

uint64_t sub_1001073C4(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_1000038D8();
  type metadata accessor for LocationViewerActiveLocationState(v6);
  sub_100003928();
  if (*(v8 + 84) == a2)
  {
    v9 = v7;
    v10 = v3;
LABEL_8:

    return sub_100024D10(v10, a2, v9);
  }

  type metadata accessor for LocationModel();
  sub_100003928();
  if (*(v12 + 84) == a2)
  {
    v9 = v11;
    v13 = a3[5];
LABEL_7:
    v10 = v3 + v13;
    goto LABEL_8;
  }

  type metadata accessor for LocationsState(0);
  sub_100003928();
  if (*(v15 + 84) == a2)
  {
    v9 = v14;
    v13 = a3[7];
    goto LABEL_7;
  }

  if (a2 != 0x7FFFFFFF)
  {
    type metadata accessor for Date();
    sub_100003928();
    if (*(v19 + 84) == a2)
    {
      v9 = v18;
      v13 = a3[11];
    }

    else
    {
      v9 = sub_10022C350(&qword_100CA37B0, &unk_100A2D740);
      v13 = a3[18];
    }

    goto LABEL_7;
  }

  v17 = *(v3 + a3[10] + 8);
  if (v17 >= 0xFFFFFFFF)
  {
    LODWORD(v17) = -1;
  }

  return (v17 + 1);
}

uint64_t sub_10010755C(uint64_t a1, void (*a2)(uint64_t, uint64_t, double))
{
  v4 = sub_10022C350(&qword_100CA4BF8, &qword_100A2EE90);
  v5 = __chkstk_darwin(v4 - 8);
  v7 = v15 - v6;
  a2(a1, 1, v5);
  v8 = type metadata accessor for LocationViewerViewModel(0);
  if (sub_100024D10(v7, 1, v8) != 1)
  {
    return sub_1000A0AC0();
  }

  sub_1000180EC(v7, &qword_100CA4BF8, &qword_100A2EE90);
  v15[0] = 0;
  v15[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(87);
  v10._countAndFlagsBits = 0xD000000000000050;
  v10._object = 0x8000000100ABBD90;
  String.append(_:)(v10);
  v11._object = 0x8000000100ABC150;
  v11._countAndFlagsBits = 0xD000000000000013;
  String.append(_:)(v11);
  v12._countAndFlagsBits = 8236;
  v12._object = 0xE200000000000000;
  String.append(_:)(v12);
  v13._countAndFlagsBits = 0xD000000000000017;
  v13._object = 0x8000000100ABC170;
  String.append(_:)(v13);
  v14._countAndFlagsBits = 46;
  v14._object = 0xE100000000000000;
  String.append(_:)(v14);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t sub_100107728@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v78 = a2;
  v4 = type metadata accessor for LocationViewerInput(0);
  sub_1000037E8();
  __chkstk_darwin(v5);
  sub_1000037D8();
  v68 = v7 - v6;
  v73 = sub_10022C350(&qword_100CCD848, &unk_100A6E580) - 8;
  __chkstk_darwin(v73);
  v72 = &v62 - v8;
  v9 = sub_10022C350(&qword_100CA4BF8, &qword_100A2EE90);
  __chkstk_darwin(v9 - 8);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v10);
  sub_100003908();
  __chkstk_darwin(v11);
  v71 = &v62 - v12;
  v13 = type metadata accessor for LocationViewerViewModel(0);
  sub_1000037E8();
  __chkstk_darwin(v14);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v15);
  v17 = &v62 - v16;
  v18 = type metadata accessor for ConditionPickerMenuViewModel(0);
  __chkstk_darwin(v18 - 8);
  sub_1000037D8();
  v21 = (v20 - v19);
  v22 = type metadata accessor for Location.Identifier();
  v76 = *(v22 - 8);
  v77 = v22;
  __chkstk_darwin(v22);
  sub_1000037D8();
  v25 = v24 - v23;
  sub_100107F10(a1, v24 - v23);
  v74 = v25;
  sub_100108084(a1, v21);
  v70 = sub_100108AC8(a1);
  v26 = v4[5];
  type metadata accessor for LocationModel();
  sub_1000037E8();
  (*(v27 + 16))(v17, a1 + v26);
  v28 = &v17[v13[6]];
  v75 = v21;
  sub_100108024(v21, v28, type metadata accessor for ConditionPickerMenuViewModel);
  LOBYTE(v21) = *(a1 + v4[10]);
  LOBYTE(v25) = *(a1 + v4[6]);
  v29 = *(a1 + v4[14]);
  v30 = *(a1 + v4[9]);
  v69 = *(a1 + v4[15]);
  v64 = v4;
  v31 = *(a1 + v4[16]);
  LOBYTE(v4) = *(a1 + v4[17]);

  v67 = a1;
  v32 = a1;
  v33 = v72;
  sub_100108FAC(v32, v80);
  *&v17[v13[5]] = v70;
  v17[v13[7]] = v21;
  v17[v13[8]] = v25;
  v17[v13[9]] = v29;
  v34 = v71;
  v17[v13[10]] = (v30 & 1) == 0;
  v17[v13[11]] = v69;
  *&v17[v13[12]] = v31;
  v17[v13[13]] = v4;
  v35 = &v17[v13[14]];
  v36 = v80[1];
  *v35 = v80[0];
  *(v35 + 1) = v36;
  *(v35 + 2) = v80[2];
  v37 = OBJC_IVAR____TtC7Weather30LocationViewerViewModelFactory_lastViewModel;
  swift_beginAccess();
  v38 = sub_10001C8AC();
  sub_100108024(v38, v34, v39);
  sub_10000473C(v34);
  v40 = *(v73 + 56);
  sub_100035AD0(v2 + v37, v33, &qword_100CA4BF8, &qword_100A2EE90);
  sub_100035AD0(v34, v33 + v40, &qword_100CA4BF8, &qword_100A2EE90);
  sub_100005404(v33);
  if (v42)
  {
    sub_1000180EC(v34, &qword_100CA4BF8, &qword_100A2EE90);
    sub_100005404(v33 + v40);
    if (v42)
    {
      sub_1000180EC(v33, &qword_100CA4BF8, &qword_100A2EE90);
      goto LABEL_16;
    }
  }

  else
  {
    v41 = v65;
    sub_100035AD0(v33, v65, &qword_100CA4BF8, &qword_100A2EE90);
    sub_100005404(v33 + v40);
    if (!v42)
    {
      sub_100010628();
      v55 = v33 + v40;
      v56 = v63;
      sub_100109570(v55, v63, v57);
      v58 = sub_100132BC0(v41, v56);
      sub_100108F54(v56, type metadata accessor for LocationViewerViewModel);
      sub_1000180EC(v34, &qword_100CA4BF8, &qword_100A2EE90);
      sub_100108F54(v41, type metadata accessor for LocationViewerViewModel);
      sub_1000180EC(v33, &qword_100CA4BF8, &qword_100A2EE90);
      if (v58)
      {
        goto LABEL_16;
      }

      goto LABEL_10;
    }

    sub_1000180EC(v34, &qword_100CA4BF8, &qword_100A2EE90);
    sub_100108F54(v41, type metadata accessor for LocationViewerViewModel);
  }

  sub_1000180EC(v33, &qword_100CCD848, &unk_100A6E580);
LABEL_10:
  v43 = sub_10001C8AC();
  v44 = v66;
  sub_100108024(v43, v66, v45);
  sub_10000473C(v44);
  swift_beginAccess();
  sub_1001093A4(v44, v2 + v37);
  swift_endAccess();
  if (qword_100CA26B0 != -1)
  {
    swift_once();
  }

  v46 = type metadata accessor for Logger();
  sub_10000703C(v46, qword_100D90A78);
  sub_100108024(v67, v68, type metadata accessor for LocationViewerInput);
  v47 = Logger.logObject.getter();
  v48 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v47, v48))
  {
    v49 = swift_slowAlloc();
    v50 = swift_slowAlloc();
    v79[0] = v50;
    *v49 = 141558275;
    *(v49 + 4) = 1752392040;
    *(v49 + 12) = 2081;
    v51 = LocationModel.id.getter();
    v53 = v52;
    sub_1000063D8();
    v54 = sub_100078694(v51, v53, v79);

    *(v49 + 14) = v54;
    _os_log_impl(&_mh_execute_header, v47, v48, "Created new view model with activeLocation=%{private,mask.hash}s", v49, 0x16u);
    sub_100006F14(v50);
  }

  else
  {

    sub_1000063D8();
  }

LABEL_16:
  sub_100108F54(v75, type metadata accessor for ConditionPickerMenuViewModel);
  (*(v76 + 8))(v74, v77);
  sub_100010628();
  v59 = v78;
  sub_100109570(v17, v78, v60);
  return sub_10000473C(v59);
}

uint64_t sub_100107F10@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  active = type metadata accessor for LocationViewerActiveLocationState(0);
  __chkstk_darwin(active - 8);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100108024(a1, v6, type metadata accessor for LocationViewerActiveLocationState);
  v7 = type metadata accessor for Location.Identifier();
  if (sub_100024D10(v6, 1, v7) != 1)
  {
    return (*(*(v7 - 8) + 32))(a2, v6, v7);
  }

  sub_100108F54(v6, type metadata accessor for LocationViewerActiveLocationState);
  return static CurrentLocation.placeholderIdentifier.getter();
}

uint64_t sub_100108024(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_1000037E8();
  (*(v5 + 16))(a2, a1);
  return a2;
}

void sub_100108084(uint64_t a1@<X1>, void *a2@<X8>)
{
  v4 = sub_10022C350(&qword_100CA2CD8, &unk_100A2C420);
  __chkstk_darwin(v4 - 8);
  v6 = &v14 - v5;
  v7 = Location.Identifier.id.getter();
  v9 = v8;
  if (sub_10010819C())
  {
    v10 = *(a1 + *(type metadata accessor for LocationViewerInput(0) + 40) + 8);
    v11 = Location.Identifier.id.getter();
    sub_100113300(v11, v12, v10);
  }

  else
  {
    v13 = type metadata accessor for WeatherCondition();
    sub_10001B350(v6, 1, 1, v13);
  }

  sub_100108290(v7, v9, v6, a2);
}

uint64_t sub_10010819C()
{
  v1 = OBJC_IVAR____TtC7Weather30LocationViewerViewModelFactory____lazy_storage___conditionBackgroundOverridden;
  v2 = *(v0 + OBJC_IVAR____TtC7Weather30LocationViewerViewModelFactory____lazy_storage___conditionBackgroundOverridden);
  if (v2 == 2)
  {
    static Settings.VFX.overrideConditionBackground.getter();
    sub_100108238();
    Configurable.setting<A>(_:)();

    LOBYTE(v2) = v4;
    *(v0 + v1) = v4;
  }

  return v2 & 1;
}

unint64_t sub_100108238()
{
  result = qword_100CCD860;
  if (!qword_100CCD860)
  {
    v3 = type metadata accessor for LocationViewerViewModelFactory(255);
    result = swift_getWitnessTable(byte_100A6E530, v3, v0, v1);
    atomic_store(result, &qword_100CCD860);
  }

  return result;
}

void sub_100108290(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v62 = sub_10022C350(&qword_100CB7308, &qword_100A4AF98);
  sub_1000037E8();
  __chkstk_darwin(v8);
  v61 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v60 = (&v44 - v11);
  __chkstk_darwin(v12);
  v59 = &v44 - v13;
  v14 = type metadata accessor for ConditionPickerMenuViewModel.Row(0);
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  sub_1000037D8();
  v55 = (v17 - v16);
  *a4 = a1;
  a4[1] = a2;
  v47 = type metadata accessor for ConditionPickerMenuViewModel(0);
  sub_100108724(a3, a4 + *(v47 + 20));
  sub_10022C350(&qword_100CB7310, &unk_100A4AFA0);
  v18 = (*(v15 + 80) + 32) & ~*(v15 + 80);
  v57 = *(v15 + 72);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_100A2C3F0;
  v46 = v19;
  v56 = v18;
  v20 = (v19 + v18);
  v58 = v14;
  v21 = *(v14 + 20);
  v22 = type metadata accessor for WeatherCondition();
  sub_10001B350(v20 + v21, 1, 1, v22);
  *v20 = 0x302D776F72;
  v20[1] = 0xE500000000000000;
  v23 = static WeatherCondition.allCases.getter();
  v24 = *(v23 + 16);
  if (v24)
  {
    v44 = a3;
    v45 = a4;
    v66 = _swiftEmptyArrayStorage;
    sub_100108794();
    v25 = 0;
    v26 = v66;
    v27 = *(v23 + 16);
    v53 = v23;
    v54 = v27;
    v28 = *(v22 - 8);
    v50 = v23 + ((*(v28 + 80) + 32) & ~*(v28 + 80));
    v51 = v28;
    v48 = v28 + 32;
    v49 = v28 + 16;
    v52 = v24;
    while (v54 != v25)
    {
      if (v25 >= *(v23 + 16))
      {
        goto LABEL_12;
      }

      v29 = v62;
      v30 = *(v62 + 48);
      v31 = v51;
      v32 = v59;
      (*(v51 + 16))(&v59[v30], v50 + *(v51 + 72) * v25, v22);
      v33 = v60;
      *v60 = v25;
      v34 = *(v31 + 32);
      v34(v33 + *(v29 + 48), &v32[v30], v22);
      v64 = 762802034;
      v65 = 0xE400000000000000;
      v63 = ++v25;
      v35._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v35);

      v36 = v64;
      v37 = v65;
      v38 = *(v58 + 20);
      v39 = v33;
      v40 = v61;
      sub_1001087EC(v39, v61);
      v41 = *(v29 + 48);
      v42 = v55;
      v34(v55 + v38, (v40 + v41), v22);
      sub_10001B350(v42 + v38, 0, 1, v22);
      *v42 = v36;
      v42[1] = v37;
      v66 = v26;
      v43 = v26[2];
      if (v43 >= v26[3] >> 1)
      {
        sub_100108794();
        v26 = v66;
      }

      v26[2] = v43 + 1;
      sub_10010885C(v42, v26 + v56 + v43 * v57);
      v23 = v53;
      if (v52 == v25)
      {

        a4 = v45;
        a3 = v44;
        goto LABEL_10;
      }
    }

    __break(1u);
LABEL_12:
    __break(1u);
  }

  else
  {

    v26 = _swiftEmptyArrayStorage;
LABEL_10:
    v64 = v46;
    sub_1001089C4(v26);
    sub_1000180EC(a3, &qword_100CA2CD8, &unk_100A2C420);
    *(a4 + *(v47 + 24)) = v64;
  }
}

uint64_t sub_100108724(uint64_t a1, uint64_t a2)
{
  v4 = sub_10022C350(&qword_100CA2CD8, &unk_100A2C420);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001087EC(uint64_t a1, uint64_t a2)
{
  v4 = sub_10022C350(&qword_100CB7308, &qword_100A4AF98);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10010885C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ConditionPickerMenuViewModel.Row(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001088C0(uint64_t a1)
{
  result = sub_10001E90C(a1);
  if (v7)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v8 = v6;
  sub_100021C64(result, 1, v5);
  v9 = *v2;
  if (!*(v3 + 16))
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  v10 = (*(v9 + 24) >> 1) - *(v9 + 16);
  result = v8(0);
  if (v10 < v1)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  swift_arrayInitWithCopy();

  if (!v1)
  {
LABEL_8:
    *v2 = v9;
    return result;
  }

  v11 = *(v9 + 16);
  v7 = __OFADD__(v11, v1);
  v12 = v11 + v1;
  if (!v7)
  {
    *(v9 + 16) = v12;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
  return result;
}

void sub_1001089F0()
{
  sub_1000064F8();
  if (v4)
  {
    sub_100010804();
    if (v6 != v7)
    {
      sub_100031EDC();
      if (v6)
      {
        __break(1u);
        return;
      }

      sub_10001CA94();
    }
  }

  else
  {
    v5 = v3;
  }

  sub_1000422F4(v2, v5, &qword_100CB7310, &unk_100A4AFA0);
  v8 = sub_100011748();
  type metadata accessor for ConditionPickerMenuViewModel.Row(v8);
  sub_100003928();
  sub_100011468();
  if (v1)
  {
    sub_10005200C(type metadata accessor for ConditionPickerMenuViewModel.Row, v9);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_100049AD4();
  }
}

uint64_t sub_100108AC8(uint64_t a1)
{
  v2 = sub_10022C350(&unk_100CE49F0, &unk_100A3AFA0);
  __chkstk_darwin(v2 - 8);
  v4 = &v30 - v3;
  v5 = sub_10022C350(&qword_100CA3588, &unk_100A4F350);
  __chkstk_darwin(v5 - 8);
  v7 = &v30 - v6;
  active = type metadata accessor for LocationViewerActiveLocationState(0);
  __chkstk_darwin(active - 8);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100108024(a1, v10, type metadata accessor for LocationViewerActiveLocationState);
  v11 = type metadata accessor for Location.Identifier();
  if (sub_100024D10(v10, 1, v11) == 1)
  {
    sub_10022C350(&qword_100CCD858, &qword_100A6E598);
    v12 = type metadata accessor for LocationModel();
    v13 = *(v12 - 8);
    v14 = (*(v13 + 80) + 32) & ~*(v13 + 80);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_100A2C3F0;
    sub_10022C350(&qword_100CA38C0, &unk_100A2D7E0);
    type metadata accessor for CurrentLocation();
    swift_storeEnumTagMultiPayload();
    v16 = type metadata accessor for LocationOfInterest();
    sub_10001B350(v7, 1, 1, v16);
    LocationModelData.init(locationOfInterest:isPredictedLocation:)();
    (*(v13 + 104))(v15 + v14, enum case for LocationModel.current(_:), v12);
    type metadata accessor for LocationViewerInput(0);
    sub_1007BD314();
    v31 = v15;
    sub_10035DC44(v17);
    return v31;
  }

  else
  {
    v19 = type metadata accessor for LocationViewerInput(0);
    v20 = a1 + *(v19 + 28);
    sub_100035AD0(v20, v4, &unk_100CE49F0, &unk_100A3AFA0);
    v21 = type metadata accessor for CurrentLocation();
    v22 = sub_100024D10(v4, 1, v21);
    sub_1000180EC(v4, &unk_100CE49F0, &unk_100A3AFA0);
    if (v22 == 1 && *(a1 + *(v19 + 32)) - 1 <= 1)
    {
      sub_10022C350(&qword_100CCD858, &qword_100A6E598);
      v23 = type metadata accessor for LocationModel();
      v24 = *(v23 - 8);
      v25 = (*(v24 + 80) + 32) & ~*(v24 + 80);
      v26 = swift_allocObject();
      *(v26 + 16) = xmmword_100A2C3F0;
      sub_10022C350(&qword_100CA38C0, &unk_100A2D7E0);
      swift_storeEnumTagMultiPayload();
      v27 = type metadata accessor for LocationOfInterest();
      sub_10001B350(v7, 1, 1, v27);
      LocationModelData.init(locationOfInterest:isPredictedLocation:)();
      (*(v24 + 104))(v26 + v25, enum case for LocationModel.current(_:), v23);
      sub_1007BD314();
      v31 = v26;
      sub_10035DC44(v28);
      v18 = v31;
    }

    else
    {
      v18 = *(v20 + *(type metadata accessor for LocationsState(0) + 24));
    }

    sub_100108F54(v10, type metadata accessor for LocationViewerActiveLocationState);
  }

  return v18;
}

uint64_t sub_100108F54(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_1000037E8();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_100108FAC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_10022C350(&qword_100CCD850, &qword_100A6E590);
  __chkstk_darwin(v4 - 8);
  v6 = &v31 - v5;
  v7 = type metadata accessor for PreprocessedWeatherData(0);
  __chkstk_darwin(v7);
  v31 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10022C350(&qword_100CA37B0, &unk_100A2D740);
  __chkstk_darwin(v9 - 8);
  v11 = &v31 - v10;
  v12 = type metadata accessor for LocationWeatherDataState(0);
  __chkstk_darwin(v12);
  v14 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for LocationViewerInput(0);
  v16 = *(v15 + 72);
  v32 = a1;
  sub_100035AD0(a1 + v16, v11, &qword_100CA37B0, &unk_100A2D740);
  if (sub_100024D10(v11, 1, v12) == 1)
  {
    v17 = &qword_100CA37B0;
    v18 = &unk_100A2D740;
    v19 = v11;
  }

  else
  {
    sub_100109570(v11, v14, type metadata accessor for LocationWeatherDataState);
    sub_1001ACCC0();
    if (sub_100024D10(v6, 1, v7) != 1)
    {
      v27 = v31;
      sub_100109570(v6, v31, type metadata accessor for PreprocessedWeatherData);
      v21 = sub_100637610(v32 + *(v15 + 20));
      v25 = v28;
      v22 = sub_100637758();
      v23 = v29;
      sub_100108F54(v14, type metadata accessor for LocationWeatherDataState);
      v30 = (v27 + *(v7 + 60));
      v24 = *v30;
      v26 = v30[1];

      result = sub_100108F54(v27, type metadata accessor for PreprocessedWeatherData);
      goto LABEL_7;
    }

    sub_100108F54(v14, type metadata accessor for LocationWeatherDataState);
    v17 = &qword_100CCD850;
    v18 = &qword_100A6E590;
    v19 = v6;
  }

  result = sub_1000180EC(v19, v17, v18);
  v21 = 0;
  v22 = 0;
  v23 = 0;
  v24 = 0;
  v25 = 0xE000000000000000;
  v26 = 0xE000000000000000;
LABEL_7:
  *a2 = v21;
  a2[1] = v25;
  a2[2] = v22;
  a2[3] = v23;
  a2[4] = v24;
  a2[5] = v26;
  return result;
}

uint64_t sub_1001092D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for LocationModel();
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a1;
LABEL_8:

    return sub_100024D10(v8, a2, v7);
  }

  if (a2 != 0x7FFFFFFF)
  {
    v7 = type metadata accessor for ConditionPickerMenuViewModel(0);
    v8 = a1 + *(a3 + 24);
    goto LABEL_8;
  }

  v9 = *(a1 + *(a3 + 20));
  if (v9 >= 0xFFFFFFFF)
  {
    LODWORD(v9) = -1;
  }

  return (v9 + 1);
}

uint64_t sub_1001093A4(uint64_t a1, uint64_t a2)
{
  v4 = sub_10022C350(&qword_100CA4BF8, &qword_100A2EE90);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_100109414(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v11 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v11)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v11) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_10005AD0C(a5, a6);
    *a1 = v9;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    result = _StringObject.sharedUTF8.getter();
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

uint64_t sub_100109514(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_100109570(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_1000037E8();
  (*(v5 + 32))(a2, a1);
  return a2;
}

uint64_t sub_1001095D0()
{
  v1 = sub_100017580();
  v2(v1);
  sub_100003D98();
  (*(v3 + 8))(v0);
  return v0;
}

uint64_t sub_100109620(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_1000037E8();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1001096A4()
{
  v0 = sub_10022C350(&unk_100CB2CF0, &unk_100A2D7F0);
  __chkstk_darwin(v0 - 8);
  v2 = &v7 - v1;
  v3 = type metadata accessor for ContentStatusBanner(0);
  sub_100007074(v3, qword_100CC9760);
  v4 = sub_10000703C(v3, qword_100CC9760);
  static WeatherClock.date.getter();
  v5 = type metadata accessor for Date();
  sub_10001B350(v2, 0, 1, v5);
  *v4 = 1;
  *(v4 + 8) = xmmword_100A3A770;
  return sub_10011C0F0(v2, v4 + *(v3 + 24), &unk_100CB2CF0, &unk_100A2D7F0);
}

uint64_t sub_1001097A4(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

unint64_t sub_1001097BC()
{
  result = qword_100CCA038;
  if (!qword_100CCA038)
  {
    result = swift_getWitnessTable(byte_100A68328, &type metadata for ContentStatusBannerPresentationMetricsPreferenceKey, v0, v1);
    atomic_store(result, &qword_100CCA038);
  }

  return result;
}

void sub_100109810()
{
  sub_1000210F4();
  if (v4)
  {
    sub_100014CB4();
    if (v5 != v6)
    {
      sub_100030000();
      if (v5)
      {
        __break(1u);
        return;
      }

      sub_100008C84();
    }
  }

  sub_100074DD8();
  if (v3)
  {
    sub_10022C350(&qword_100CA7300, &qword_100A51110);
    v7 = sub_1000BCEFC();
    j__malloc_size(v7);
    sub_100016D38();
    v7[2] = v2;
    v7[3] = v8;
  }

  else
  {
    v7 = _swiftEmptyArrayStorage;
  }

  v9 = sub_1000B99E0();
  if (v1)
  {
    if (v7 != v0 || &v10[16 * v2] <= v9)
    {
      memmove(v9, v10, 16 * v2);
    }

    v0[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

uint64_t sub_1001098E0()
{
  v0 = type metadata accessor for LocationModel();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for LocationViewerViewModel(0);
  __chkstk_darwin(v4 - 8);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100104794();
  (*(v1 + 16))(v3, v6, v0);
  sub_1001095D0();
  LocationModel.identifier.getter();
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_100109A3C(uint64_t a1, uint64_t a2, char a3)
{
  if ((a3 & 1) == 0)
  {
  }

  return result;
}

uint64_t sub_100109A48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if ((a5 & 1) == 0)
  {
  }

  return result;
}

uint64_t sub_100109A54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  if ((a7 & 1) == 0)
  {
  }

  return result;
}

__n128 initializeBufferWithCopyOfBuffer for Map(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_100109A8C@<X0>(uint64_t a1@<X0>, uint64_t a5@<X8>)
{
  type metadata accessor for LocationViewCollisionOptions(0);
  sub_1000EA178(&qword_100CACC60);
  v7 = StateObject.wrappedValue.getter();
  v8 = static ObservableObject.environmentStore.getter();
  v9 = sub_10022C350(&qword_100CCA080, &qword_100A687F8);
  (*(*(v9 - 8) + 16))(a5, a1, v9);
  result = sub_10022C350(&qword_100CCA088, &qword_100A68800);
  v11 = (a5 + *(result + 36));
  *v11 = v8;
  v11[1] = v7;
  return result;
}

uint64_t sub_100109BE8@<X0>(uint64_t a1@<X0>, uint64_t a5@<X8>)
{
  type metadata accessor for WeatherVFXConditionBackground();
  sub_1000EA178(&qword_100CB0478);
  v7 = StateObject.wrappedValue.getter();
  v8 = static ObservableObject.environmentStore.getter();
  v9 = sub_10022C350(&qword_100CCA090, &qword_100A68808);
  (*(*(v9 - 8) + 16))(a5, a1, v9);
  result = sub_10022C350(&qword_100CCA098, &unk_100A68810);
  v11 = (a5 + *(result + 36));
  *v11 = v8;
  v11[1] = v7;
  return result;
}

uint64_t sub_100109D1C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v29 = a1;
  v3 = sub_10022C350(&qword_100CA5010, &unk_100A2F250);
  __chkstk_darwin(v3 - 8);
  v24 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v24 - v6;
  v25 = type metadata accessor for AccessibilityChildBehavior();
  v8 = *(v25 - 8);
  __chkstk_darwin(v25);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10022C350(&qword_100CCA288, &qword_100A68A18);
  __chkstk_darwin(v11);
  v13 = &v24 - v12;
  v14 = sub_10022C350(&qword_100CCA290, &qword_100A68A20);
  v26 = *(v14 - 8);
  v27 = v14;
  __chkstk_darwin(v14);
  v16 = &v24 - v15;
  *v13 = static HorizontalAlignment.center.getter();
  *(v13 + 1) = 0;
  v13[16] = 1;
  v17 = sub_10022C350(&qword_100CCA298, &qword_100A68A28);
  sub_1005EF680(v2, &v13[*(v17 + 44)]);
  v28 = v2;
  sub_1000302D8(v2, v7, &qword_100CA5010, &unk_100A2F250);
  v18 = type metadata accessor for ContentStatusBanner(0);
  v19 = sub_100024D10(v7, 1, v18);
  sub_100018198(v7, &qword_100CA5010);
  if (v19 == 1)
  {
    static AccessibilityChildBehavior.ignore.getter();
  }

  else
  {
    static AccessibilityChildBehavior.contain.getter();
  }

  v20 = sub_1005F6F6C(&unk_100CCA2A0);
  View.accessibilityElement(children:)();
  (*(v8 + 8))(v10, v25);
  sub_100018198(v13, &qword_100CCA288);
  v21 = v24;
  sub_1000302D8(v28, v24, &qword_100CA5010, &unk_100A2F250);
  sub_100024D10(v21, 1, v18);
  sub_100018198(v21, &qword_100CA5010);
  v30 = v11;
  v31 = v20;
  swift_getOpaqueTypeConformance2();
  v22 = v27;
  View.accessibilityHidden(_:)();
  return (*(v26 + 8))(v16, v22);
}

uint64_t sub_10010A0E8@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_10022C350(&qword_100CA5010, &unk_100A2F250);
  __chkstk_darwin(v3 - 8);
  v5 = &v8 - v4;
  sub_1000302D8(v1, &v8 - v4, &qword_100CA5010, &unk_100A2F250);
  v6 = type metadata accessor for ContentStatusBanner(0);
  if (sub_100024D10(v5, 1, v6) != 1)
  {
    return sub_100103E40(v5, a1);
  }

  type metadata accessor for LocationViewBannerContainer(0);
  sub_10022C350(&qword_100CC9F58, &qword_100A682A8);
  State.wrappedValue.getter();
  result = sub_100024D10(v5, 1, v6);
  if (result != 1)
  {
    return sub_100018198(v5, &qword_100CA5010);
  }

  return result;
}

double sub_10010A228@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v4 = type metadata accessor for ContentStatusBanner(0);
  __chkstk_darwin(v4 - 8);
  v6 = v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = v11 - v8;
  sub_10010A338(a1, v11 - v8);
  sub_10010A338(v9, v6);
  if (qword_100CA2028 != -1)
  {
    swift_once();
  }

  sub_10010A40C(v6, qword_100CB5FA0, v11);
  sub_10010ABE4(v9);
  return sub_10010AC40(v11, a2);
}

uint64_t sub_10010A338(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ContentStatusBanner(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_10010A39C()
{
  v0 = [objc_allocWithZone(NSDateFormatter) init];
  [v0 setDoesRelativeDateFormatting:1];
  [v0 setTimeStyle:1];

  qword_100CB5FA0 = v0;
}

uint64_t sub_10010A40C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = sub_10022C350(&unk_100CB2CF0, &unk_100A2D7F0);
  __chkstk_darwin(v6 - 8);
  v8 = &v48 - v7;
  v9 = type metadata accessor for Date();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = &type metadata for FoundationContentStatusBannerLastUpdatedFormatter;
  v53 = &off_100C54C38;
  v51[0] = a2;
  v14 = *(a1 + 8);
  v13 = *(a1 + 16);
  v15 = type metadata accessor for ContentStatusBanner(0);
  sub_1000D47CC(a1 + *(v15 + 24), v8);
  v16 = sub_100024D10(v8, 1, v9);
  v50 = v13;
  if (v16 == 1)
  {
    sub_10010ABD0(v14, v13);
    sub_1001AEDF4(v8);
    v17 = 0;
    v18 = 0;
  }

  else
  {
    (*(v10 + 32))(v12, v8, v9);
    v19 = *sub_1000161C0(v51, v52);
    v49 = v14;
    sub_10010ABD0(v14, v13);
    v20 = sub_10010AA90(v12, v19);
    v21 = v13;
    v23 = v22;
    if (v21)
    {
      v24 = [objc_opt_self() mainBundle];
      v46 = 0x8000000100AE89F0;
      v25 = 0x8000000100AE89D0;
      v26 = 0xD000000000000170;
      v27 = 0xD000000000000010;
    }

    else
    {
      v24 = [objc_opt_self() mainBundle];
      v46 = 0x8000000100AE8B70;
      v27 = 0x6C6E6F207473614CLL;
      v25 = 0xEF4025203A656E69;
      v26 = 0xD00000000000016DLL;
    }

    v28._countAndFlagsBits = 0;
    v28._object = 0xE000000000000000;
    NSLocalizedString(_:tableName:bundle:value:comment:)(*&v27, 0, v24, v28, *&v26);

    sub_10022C350(&qword_100CA40C8, &unk_100A2E170);
    v29 = swift_allocObject();
    *(v29 + 16) = xmmword_100A2C3F0;
    *(v29 + 56) = &type metadata for String;
    *(v29 + 64) = sub_100035744();
    *(v29 + 32) = v20;
    *(v29 + 40) = v23;
    v17 = static String.localizedStringWithFormat(_:_:)();
    v18 = v30;

    (*(v10 + 8))(v12, v9);
    v14 = v49;
  }

  switch(*a1)
  {
    case 1:
      v31 = [objc_opt_self() mainBundle];
      v54._object = 0x8000000100AE8900;
      v35._countAndFlagsBits = 0xD000000000000016;
      v35._object = 0x8000000100AE0630;
      v54._countAndFlagsBits = 0xD000000000000057;
      v36._countAndFlagsBits = 0;
      v36._object = 0xE000000000000000;
      v37 = NSLocalizedString(_:tableName:bundle:value:comment:)(v35, 0, v31, v36, v54);
      countAndFlagsBits = v37._countAndFlagsBits;
      object = v37._object;
      v40 = 0xEA00000000006873;
      v41 = 0x616C732E69666977;
      goto LABEL_16;
    case 2:
      v31 = [objc_opt_self() mainBundle];
      v47 = 0x8000000100AE88B0;
      v32 = 0xD000000000000014;
      v33 = 0x8000000100AE0750;
      v34 = 0xD000000000000046;
      goto LABEL_15;
    case 3:
      v31 = [objc_opt_self() mainBundle];
      v47 = 0x8000000100AE8850;
      v32 = 0xE2676E6964616F4CLL;
      v34 = 0xD000000000000058;
      v33 = 0xAA0000000000A680;
      goto LABEL_15;
    case 4:
      v31 = [objc_opt_self() mainBundle];
      v47 = 0x8000000100AE87C0;
      v32 = 0xD00000000000001CLL;
      v33 = 0x8000000100AE87A0;
      v34 = 0xD00000000000008FLL;
      goto LABEL_15;
    case 5:
      v31 = [objc_opt_self() mainBundle];
      v47 = 0x8000000100AE8710;
      v32 = 0xD000000000000013;
      v33 = 0x8000000100ADCC90;
      v34 = 0xD00000000000008CLL;
      goto LABEL_15;
    case 6:
      v31 = [objc_opt_self() mainBundle];
      v47 = 0x8000000100AE8690;
      v32 = 0xD000000000000028;
      v33 = 0x8000000100AE8660;
      v34 = 0xD00000000000007CLL;
      goto LABEL_15;
    default:
      v31 = [objc_opt_self() mainBundle];
      v47 = 0x8000000100AE8980;
      v32 = 0xD00000000000001BLL;
      v33 = 0x8000000100AE8960;
      v34 = 0xD00000000000004BLL;
LABEL_15:
      v42._countAndFlagsBits = 0;
      v42._object = 0xE000000000000000;
      v43 = NSLocalizedString(_:tableName:bundle:value:comment:)(*&v32, 0, v31, v42, *&v34);
      countAndFlagsBits = v43._countAndFlagsBits;
      object = v43._object;
      v41 = 0;
      v40 = 0;
LABEL_16:

      sub_10010ABE4(a1);
      result = sub_100006F14(v51);
      *a3 = countAndFlagsBits;
      a3[1] = object;
      a3[2] = v41;
      a3[3] = v40;
      a3[4] = v17;
      a3[5] = v18;
      v45 = v50;
      a3[6] = v14;
      a3[7] = v45;
      return result;
  }
}

uint64_t sub_10010AA90(uint64_t a1, void *a2)
{
  v3 = type metadata accessor for Calendar();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Calendar.current.getter();
  v7 = Calendar.isDateInToday(_:)();
  (*(v4 + 8))(v6, v3);
  [a2 setDateStyle:(v7 & 1) == 0];
  isa = Date._bridgeToObjectiveC()().super.isa;
  v9 = [a2 stringFromDate:isa];

  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  return v10;
}

uint64_t sub_10010ABD0(uint64_t a1, unint64_t a2)
{
  if (a2 >= 2)
  {
  }

  return result;
}

uint64_t sub_10010ABE4(uint64_t a1)
{
  v2 = type metadata accessor for ContentStatusBanner(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

double sub_10010AC40@<D0>(_OWORD *a1@<X0>, _OWORD *a2@<X8>)
{
  v4 = sub_100003940();
  sub_10022C350(v4, v5);
  sub_100003828();
  __chkstk_darwin(v6);
  v8 = v26 - v7;
  v9 = a1[1];
  *a2 = *a1;
  a2[1] = v9;
  v10 = a1[3];
  a2[2] = a1[2];
  a2[3] = v10;
  v11 = type metadata accessor for ContentStatusBannerView(0);
  v12 = *(v11 + 20);
  *(a2 + v12) = swift_getKeyPath();
  sub_10022C350(&qword_100CA62E0, &qword_100A3D5F0);
  swift_storeEnumTagMultiPayload();
  v13 = a2 + *(v11 + 24);
  v14 = type metadata accessor for UserInterfaceSizeClass();
  sub_10001B350(v8, 1, 1, v14);
  v15 = sub_10010AE04(0, 0);
  v16 = objc_opt_self();
  v17 = [v16 labelColor];
  v18 = Color.init(uiColor:)();
  v19 = static Font.footnote.getter();
  v20 = [v16 labelColor];
  v21 = Color.init(uiColor:)();
  sub_1000180EC(v8, &qword_100CA6028, &qword_100A40610);
  v26[1] = v15;
  v26[2] = v18;
  v26[3] = v19;
  v26[4] = v21;
  v27 = 0;
  State.init(wrappedValue:)();
  v22 = v30;
  v23 = v31;
  result = *&v28;
  v25 = v29;
  *v13 = v28;
  *(v13 + 1) = v25;
  v13[32] = v22;
  *(v13 + 5) = v23;
  return result;
}

uint64_t sub_10010AE04(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for UserInterfaceSizeClass();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10022C350(&qword_100CA64E8, &unk_100A46060);
  __chkstk_darwin(v7);
  v9 = &v23 - v8;
  v10 = sub_10022C350(&qword_100CA6028, &qword_100A40610);
  __chkstk_darwin(v10 - 8);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v13);
  v16 = &v23 - v14;
  if (!a2)
  {
    static Font.body.getter();
    static Font.Weight.semibold.getter();
    v18 = Font.weight(_:)();

    return v18;
  }

  (*(v4 + 104))(&v23 - v14, enum case for UserInterfaceSizeClass.compact(_:), v3, v15);
  sub_10001B350(v16, 0, 1, v3);
  v17 = *(v7 + 48);
  sub_100095588();
  sub_100095588();
  if (sub_100024D10(v9, 1, v3) == 1)
  {
    sub_1000180EC(v16, &qword_100CA6028, &qword_100A40610);
    if (sub_100024D10(&v9[v17], 1, v3) == 1)
    {
      sub_1000180EC(v9, &qword_100CA6028, &qword_100A40610);
LABEL_11:
      static Font.caption.getter();
      goto LABEL_12;
    }

    goto LABEL_8;
  }

  sub_100095588();
  if (sub_100024D10(&v9[v17], 1, v3) == 1)
  {
    sub_1000180EC(v16, &qword_100CA6028, &qword_100A40610);
    (*(v4 + 8))(v12, v3);
LABEL_8:
    sub_1000180EC(v9, &qword_100CA64E8, &unk_100A46060);
    goto LABEL_9;
  }

  (*(v4 + 32))(v6, &v9[v17], v3);
  sub_1000F1FA8(&qword_100CA6088, &type metadata accessor for UserInterfaceSizeClass, &protocol conformance descriptor for UserInterfaceSizeClass);
  v20 = dispatch thunk of static Equatable.== infix(_:_:)();
  v21 = *(v4 + 8);
  v21(v6, v3);
  sub_1000180EC(v16, &qword_100CA6028, &qword_100A40610);
  v21(v12, v3);
  sub_1000180EC(v9, &qword_100CA6028, &qword_100A40610);
  if (v20)
  {
    goto LABEL_11;
  }

LABEL_9:
  static Font.body.getter();
LABEL_12:
  static Font.Weight.medium.getter();
  v22 = Font.weight(_:)();

  return v22;
}

double sub_10010B204()
{
  v0 = type metadata accessor for DisplayMetrics(0);
  __chkstk_darwin(v0 - 8);
  __chkstk_darwin(v1);
  v2 = sub_1005EF038();
  type metadata accessor for LocationViewBannerContainer(0);
  sub_1000FC9C8();
  v3 = objc_opt_self();
  v4 = [v3 currentDevice];
  v5 = [v4 userInterfaceIdiom];

  sub_1001095D0();
  if (v5 == 1)
  {
    v6 = 0.0;
  }

  else
  {
    v6 = 2.0;
  }

  sub_1000FC9C8();
  v7 = [v3 currentDevice];
  [v7 userInterfaceIdiom];

  sub_1001095D0();
  return v2 + v6;
}

__n128 sub_10010B39C(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

unint64_t sub_10010B3B0()
{
  result = qword_100CCA2F8;
  if (!qword_100CCA2F8)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CCA2B8, &qword_100A68A40);
    v4[0] = sub_1005F31E0();
    v4[1] = sub_1005F6F6C(&unk_100CCA318);
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CCA2F8);
  }

  return result;
}

unint64_t sub_10010B468()
{
  result = qword_100CCA308;
  if (!qword_100CCA308)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CCA2A8, &qword_100A68A30);
    v4[0] = sub_10010B4F4();
    v4[1] = &protocol witness table for _PaddingLayout;
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CCA308);
  }

  return result;
}

unint64_t sub_10010B4F4()
{
  result = qword_100CCA310;
  if (!qword_100CCA310)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CCA2E0, &unk_100A9A480);
    v4[0] = sub_1000EA178(&qword_100CA5108);
    v4[1] = &protocol witness table for _PaddingLayout;
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CCA310);
  }

  return result;
}

unint64_t sub_10010B5B0()
{
  result = qword_100CCA338;
  if (!qword_100CCA338)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = sub_10022E824(&qword_100CA5010, &unk_100A2F250);
    v4[0] = sub_1000EA178(&qword_100CCA340);
    result = swift_getWitnessTable(&protocol conformance descriptor for <A> A?, v3, v4);
    atomic_store(result, &qword_100CCA338);
  }

  return result;
}

uint64_t sub_10010B664()
{
  IsDeviceSlowViewInputPredicate = type metadata accessor for IsDeviceSlowViewInputPredicate();
  __chkstk_darwin(IsDeviceSlowViewInputPredicate);
  static ViewInputPredicate<>.deviceIsSlow.getter();
  sub_10022C350(&qword_100CEB590, &qword_100AA0FA0);
  sub_1009BA20C();
  sub_10010B778();
  return StaticIf<>.init(_:then:else:)();
}

unint64_t sub_10010B778()
{
  result = qword_100CEB598;
  if (!qword_100CEB598)
  {
    v3 = sub_10022E824(&qword_100CEB590, &qword_100AA0FA0);
    result = swift_getWitnessTable(&protocol conformance descriptor for _ShapeView<A, B>, v3, v0, v1);
    atomic_store(result, &qword_100CEB598);
  }

  return result;
}

uint64_t sub_10010B8D4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 33) = 1;
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

    *(result + 33) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10010B918(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 33))
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

uint64_t sub_10010B958@<X0>(uint64_t a1@<X8>)
{
  v19[1] = a1;
  v2 = type metadata accessor for ContentStatusBannerView(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  sub_10022C350(&qword_100CA6028, &qword_100A40610);
  sub_1000037E8();
  sub_100003828();
  __chkstk_darwin(v5);
  v7 = v19 - v6;
  sub_10022C350(&qword_100CD5850, &qword_100A7E088);
  sub_100003828();
  __chkstk_darwin(v8);
  v10 = v19 - v9;
  v11 = sub_10022C350(&qword_100CD5858, &qword_100A7E090);
  sub_1000037E8();
  sub_100003828();
  __chkstk_darwin(v12);
  v14 = v19 - v13;
  *v10 = static HorizontalAlignment.center.getter();
  *(v10 + 1) = 0;
  v10[16] = 0;
  v15 = sub_10022C350(&qword_100CD5860, &qword_100A7E098);
  sub_10010BE4C(v1, &v10[*(v15 + 44)]);
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  sub_10010BC58();
  memcpy(&v14[*(v11 + 36)], __src, 0x70uLL);
  sub_10009D114();
  sub_10010CF10(v1, v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v17 = swift_allocObject();
  sub_10010CF74(v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v17 + v16);
  sub_1000F1DF4();
  sub_1000F1EAC();
  View.onChange<A>(of:initial:_:)();

  sub_1000180EC(v7, &qword_100CA6028, &qword_100A40610);
  return sub_1000180EC(v14, &qword_100CD5858, &qword_100A7E090);
}

uint64_t sub_10010BC58()
{
  sub_100003A00();
  sub_10022C350(&qword_100CD5850, &qword_100A7E088);
  sub_1000037E8();
  v1 = sub_100003940();
  v2(v1);
  return v0;
}

uint64_t sub_10010BCB8()
{
  v1 = type metadata accessor for ContentStatusBannerView(0);
  v2 = v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80));

  if (*(v2 + 56) >= 2uLL)
  {
  }

  v3 = *(v1 + 20);
  sub_10022C350(&qword_100CA62E0, &qword_100A3D5F0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = type metadata accessor for UserInterfaceSizeClass();
    if (!sub_100024D10(v2 + v3, 1, v4))
    {
      (*(*(v4 - 8) + 8))(v2 + v3, v4);
    }
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_10010BE4C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v103 = a2;
  v85 = type metadata accessor for BlendMode();
  v84 = *(v85 - 8);
  __chkstk_darwin(v85);
  v83 = v79 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = sub_10022C350(&qword_100CA4000, &qword_100A4AB20);
  __chkstk_darwin(v101);
  v82 = v79 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v81 = v79 - v6;
  v7 = sub_10022C350(&qword_100CD5880, &qword_100A7E0B0);
  __chkstk_darwin(v7 - 8);
  v102 = v79 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v100 = v79 - v10;
  v99 = type metadata accessor for AccessibilityTraits();
  v92 = *(v99 - 8);
  v93 = v99 - 8;
  v94 = v92;
  __chkstk_darwin(v99 - 8);
  v98 = v79 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v91 = type metadata accessor for AccessibilityChildBehavior();
  v89 = *(v91 - 8);
  __chkstk_darwin(v91);
  v88 = v79 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = sub_10022C350(&qword_100CD5888, &qword_100A7E0B8);
  __chkstk_darwin(v87);
  v14 = v79 - v13;
  v95 = sub_10022C350(&qword_100CD5890, &qword_100A7E0C0);
  v97 = *(v95 - 8);
  __chkstk_darwin(v95);
  v86 = v79 - v15;
  v96 = sub_10022C350(&qword_100CD5898, &qword_100A7E0C8);
  __chkstk_darwin(v96);
  v109 = v79 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v108 = v79 - v18;
  *v14 = static VerticalAlignment.center.getter();
  *(v14 + 1) = 0;
  v14[16] = 1;
  v19 = &v14[*(sub_10022C350(&qword_100CD58A0, &qword_100A7E0D0) + 44)];
  v90 = a1;
  sub_10010CACC(a1, v19);
  v20 = a1 + *(type metadata accessor for ContentStatusBannerView(0) + 24);
  v22 = *(v20 + 1);
  v23 = *(v20 + 2);
  v24 = *(v20 + 3);
  v25 = v20[32];
  v26 = *(v20 + 5);
  v113 = *v20;
  v21 = v113;
  v114 = v22;
  v115 = v23;
  v116 = v24;
  v117 = v25;
  v118 = v26;
  v27 = sub_10022C350(&qword_100CD5878, &unk_100A7E0A0);
  State.wrappedValue.getter();
  v28 = v110;

  KeyPath = swift_getKeyPath();
  v30 = &v14[*(sub_10022C350(&qword_100CD58A8, &qword_100A7E108) + 36)];
  *v30 = KeyPath;
  v30[1] = v28;
  v106 = v22;
  v107 = v21;
  v113 = v21;
  v114 = v22;
  v79[0] = v23;
  v115 = v23;
  v116 = v24;
  v105 = v24;
  v80 = v25;
  v117 = v25;
  v104 = v26;
  v118 = v26;
  v79[1] = v27;
  State.wrappedValue.getter();

  v31 = v111;

  v32 = swift_getKeyPath();
  v33 = v87;
  v34 = &v14[*(v87 + 36)];
  *v34 = v32;
  v34[1] = v31;
  v35 = v88;
  static AccessibilityChildBehavior.ignore.getter();
  v36 = sub_10010CD74();
  v37 = v86;
  View.accessibilityElement(children:)();
  (*(v89 + 8))(v35, v91);
  sub_1000180EC(v14, &qword_100CD5888, &qword_100A7E0B8);
  sub_10022C350(&unk_100CE17E0, &unk_100A45D60);
  v38 = v94;
  v39 = swift_allocObject();
  *(v39 + 16) = xmmword_100A2C3F0;
  static AccessibilityTraits.isHeader.getter();
  v113 = v39;
  sub_1000F1FA8(&qword_100CB3368, &type metadata accessor for AccessibilityTraits, &protocol conformance descriptor for AccessibilityTraits);
  sub_10022C350(&unk_100CE17F0, &unk_100A4A1E0);
  sub_100006F64(&qword_100CB3370, &unk_100CE17F0, &unk_100A4A1E0, &protocol conformance descriptor for [A]);
  v40 = v98;
  v41 = v99;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v113 = v33;
  v114 = v36;
  swift_getOpaqueTypeConformance2();
  v42 = v109;
  v43 = v95;
  View.accessibilityAddTraits(_:)();
  (*(v38 + 8))(v40, v41);
  (*(v97 + 8))(v37, v43);
  v44 = v90;
  v45 = v90[1];
  v113 = *v90;
  v114 = v45;
  sub_10002D5A4();
  ModifiedContent<>.accessibilityLabel<A>(_:)();
  sub_1000180EC(v42, &qword_100CD5898, &qword_100A7E0C8);
  v46 = v44[5];
  if (v46)
  {
    v113 = v44[4];
    v114 = v46;

    v47 = Text.init<A>(_:)();
    v49 = v48;
    v51 = v50;
    v113 = v107;
    v114 = v106;
    v115 = v79[0];
    v52 = v79[0];
    v116 = v105;
    v53 = v80;
    v117 = v80;
    v118 = v104;
    State.wrappedValue.getter();

    v95 = Text.font(_:)();
    v94 = v54;
    LODWORD(v92) = v55;
    v93 = v56;

    sub_10010CD64(v47, v49, v51 & 1);

    v113 = v107;
    v114 = v106;
    v57 = v52;
    v58 = v105;
    v115 = v52;
    v116 = v105;
    v117 = v53;
    v59 = v104;
    v118 = v104;
    State.wrappedValue.getter();

    LOBYTE(v49) = v92;
    v60 = v95;
    v61 = v94;
    v96 = Text.foregroundColor(_:)();
    v98 = v62;
    LODWORD(v97) = v63;
    v99 = v64;

    sub_10010CD64(v60, v61, v49 & 1);

    v113 = v107;
    v114 = v106;
    v115 = v57;
    v116 = v58;
    v117 = v53;
    v118 = v59;
    State.wrappedValue.getter();

    v65 = v84;
    v66 = &enum case for BlendMode.plusLighter(_:);
    if (!v112)
    {
      v66 = &enum case for BlendMode.normal(_:);
    }

    v67 = v83;
    v68 = v85;
    (*(v84 + 104))(v83, *v66, v85);
    v69 = v101;
    v70 = v82;
    (*(v65 + 32))(&v82[*(v101 + 36)], v67, v68);
    v71 = v98;
    *v70 = v96;
    *(v70 + 1) = v71;
    v70[16] = v97 & 1;
    *(v70 + 3) = v99;
    sub_100051BBC();
    v72 = v100;
    sub_100051BBC();
    v73 = 0;
    v74 = v69;
  }

  else
  {
    v74 = v101;
    v72 = v100;
    v73 = 1;
  }

  sub_10001B350(v72, v73, 1, v74);
  v76 = v108;
  v75 = v109;
  sub_10010CA6C();
  v77 = v102;
  sub_100095588();
  sub_10010CA6C();
  sub_10022C350(&qword_100CD58D0, &qword_100A7E148);
  sub_100095588();
  sub_1000180EC(v72, &qword_100CD5880, &qword_100A7E0B0);
  sub_1000180EC(v76, &qword_100CD5898, &qword_100A7E0C8);
  sub_1000180EC(v77, &qword_100CD5880, &qword_100A7E0B0);
  return sub_1000180EC(v75, &qword_100CD5898, &qword_100A7E0C8);
}

uint64_t sub_10010CA6C()
{
  sub_100003A00();
  sub_10022C350(&qword_100CD5898, &qword_100A7E0C8);
  sub_1000037E8();
  v1 = sub_100003940();
  v2(v1);
  return v0;
}

uint64_t sub_10010CACC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_10022C350(&qword_100CD2718, &qword_100A7E150);
  __chkstk_darwin(v4);
  v5 = sub_10022C350(&qword_100CD58D8, &qword_100A7E158);
  __chkstk_darwin(v5 - 8);
  v7 = v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = v22 - v9;
  if (a1[3])
  {

    v22[0] = Image.init(systemName:)();
    View.accessibilityHidden(_:)();

    sub_100051BBC();
    v11 = 0;
  }

  else
  {
    v11 = 1;
  }

  sub_10001B350(v10, v11, 1, v4);
  v12 = a1[1];
  v22[0] = *a1;
  v22[1] = v12;
  sub_10002D5A4();

  v13 = Text.init<A>(_:)();
  v15 = v14;
  v17 = v16;
  v19 = v18;
  sub_100095588();
  sub_100095588();
  v20 = a2 + *(sub_10022C350(&qword_100CD58E0, &unk_100A7E160) + 48);
  *v20 = v13;
  *(v20 + 8) = v15;
  *(v20 + 16) = v17 & 1;
  *(v20 + 24) = v19;
  sub_10010CD54(v13, v15, v17 & 1);

  sub_1000180EC(v10, &qword_100CD58D8, &qword_100A7E158);
  sub_10010CD64(v13, v15, v17 & 1);

  return sub_1000180EC(v7, &qword_100CD58D8, &qword_100A7E158);
}

uint64_t sub_10010CD54(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_10010CD64(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

unint64_t sub_10010CD74()
{
  result = qword_100CD58B0;
  if (!qword_100CD58B0)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CD5888, &qword_100A7E0B8);
    v4[0] = sub_10010CE2C();
    v4[1] = sub_100006F64(&qword_100CE0FF0, &qword_100CA5110, &qword_100A2F320, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CD58B0);
  }

  return result;
}

unint64_t sub_10010CE2C()
{
  result = qword_100CD58B8;
  if (!qword_100CD58B8)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CD58A8, &qword_100A7E108);
    v4[0] = sub_100006F64(&qword_100CD58C0, &qword_100CD58C8, &qword_100A7E140, &protocol conformance descriptor for HStack<A>);
    v4[1] = sub_100006F64(&qword_100CA53B8, &qword_100CA53C0, &unk_100A2F5E0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CD58B8);
  }

  return result;
}

uint64_t sub_10010CF10(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ContentStatusBannerView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10010CF74(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ContentStatusBannerView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_10010CFD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_10000C778();
  a19 = v20;
  a20 = v21;
  v23 = v22;
  v25 = v24;
  type metadata accessor for ContentStatusBanner(0);
  sub_1000037E8();
  __chkstk_darwin(v26);
  sub_1000037D8();
  v29 = v28 - v27;
  v30 = sub_10022C350(&qword_100CA5010, &unk_100A2F250);
  sub_100003810(v30);
  sub_100003828();
  __chkstk_darwin(v31);
  v33 = &a9 - v32;
  v34 = sub_10022C350(&qword_100CA50C0, &qword_100A2F2F0);
  sub_1000037E8();
  sub_100003828();
  __chkstk_darwin(v35);
  v37 = &a9 - v36;
  if (*v25 == *v23 && v25[1] == v23[1])
  {
    v39 = *(type metadata accessor for ContentStatusBannerPresentationMetrics(0) + 20);
    v40 = *(v34 + 48);
    sub_1000302D8(v25 + v39, v37, &qword_100CA5010, &unk_100A2F250);
    sub_1000302D8(v23 + v39, &v37[v40], &qword_100CA5010, &unk_100A2F250);
    if (sub_100030484(v37) == 1)
    {
      if (sub_100030484(&v37[v40]) == 1)
      {
        sub_100018198(v37, &qword_100CA5010);
        goto LABEL_12;
      }
    }

    else
    {
      sub_1000302D8(v37, v33, &qword_100CA5010, &unk_100A2F250);
      if (sub_100030484(&v37[v40]) != 1)
      {
        sub_100103E40(&v37[v40], v29);
        v41 = sub_1000053B8();
        sub_100133BA0(v41, v42);
        sub_1001095D0();
        sub_1001095D0();
        sub_100018198(v37, &qword_100CA5010);
        goto LABEL_12;
      }

      sub_1001095D0();
    }

    sub_100018198(v37, &qword_100CA50C0);
  }

LABEL_12:
  sub_10000536C();
}

uint64_t sub_10010D250(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(uint64_t, uint64_t))
{
  v5 = a2(0);
  sub_100003810(v5);
  sub_10001164C();

  return a3(a1, v3 + v6);
}

uint64_t sub_10010D2E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v44 = a1;
  v48 = a2;
  v3 = sub_10022C350(&qword_100CA5010, &unk_100A2F250);
  __chkstk_darwin(v3 - 8);
  v47 = &v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v45 = &v39 - v6;
  v7 = type metadata accessor for ContentStatusBannerPresentationMetrics(0) - 8;
  v40 = v7;
  __chkstk_darwin(v7);
  v46 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v39 - v10;
  v12 = type metadata accessor for ContentStatusBannerPresentationViewModifier(0);
  v41 = *(v12 - 8);
  v13 = *(v41 + 64);
  __chkstk_darwin(v12);
  v14 = &v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_10022C350(&qword_100CCABB0, &qword_100A69370);
  v16 = v15 - 8;
  __chkstk_darwin(v15);
  v18 = &v39 - v17;
  v42 = sub_10022C350(&qword_100CCABB8, &qword_100A69378);
  __chkstk_darwin(v42);
  v20 = &v39 - v19;
  v21 = sub_10022C350(&qword_100CCABC0, &qword_100A69380);
  __chkstk_darwin(v21 - 8);
  v43 = &v39 - v22;
  sub_1005F1770(v2, v14);
  v23 = (*(v41 + 80) + 16) & ~*(v41 + 80);
  v24 = swift_allocObject();
  sub_100103E40(v14, v24 + v23);
  v25 = sub_10022C350(&qword_100CCABC8, &qword_100A69388);
  (*(*(v25 - 8) + 16))(v18, v44, v25);
  v26 = &v18[*(v16 + 44)];
  *v26 = sub_100130B3C;
  v26[1] = v24;
  sub_10022C350(&qword_100CCA710, &qword_100A68C68);
  State.wrappedValue.getter();
  v27 = v45;
  sub_10011C0F0(&v11[*(v7 + 28)], v45, &qword_100CA5010, &unk_100A2F250);
  v28 = type metadata accessor for ContentStatusBanner(0);
  LODWORD(v7) = sub_100024D10(v27, 1, v28);
  sub_100018198(v27, &qword_100CA5010);
  if (v7 == 1)
  {
    v29 = 0.0;
  }

  else
  {
    v29 = 1.0;
  }

  sub_10011C0F0(v18, v20, &qword_100CCABB0, &qword_100A69370);
  *&v20[*(v42 + 36)] = v29;
  v30 = v46;
  State.wrappedValue.getter();
  v31 = &v30[*(v40 + 28)];
  v32 = v47;
  sub_10011C0F0(v31, v47, &qword_100CA5010, &unk_100A2F250);
  sub_100024D10(v32, 1, v28);
  sub_100018198(v32, &qword_100CA5010);
  sub_1005F60F8();
  v33 = v43;
  View.accessibilityHidden(_:)();
  sub_100018198(v20, &qword_100CCABB8);
  sub_10010D9B8();
  v35 = v34;
  v36 = v48;
  sub_10011C0F0(v33, v48, &qword_100CCABC0, &qword_100A69380);
  result = sub_10022C350(&qword_100CCABF8, &qword_100A69398);
  v38 = (v36 + *(result + 36));
  *v38 = 0;
  v38[1] = v35;
  return result;
}

uint64_t sub_10010D7FC()
{
  type metadata accessor for ContentStatusBannerPresentationViewModifier(0);
  sub_100003A0C();
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));
  sub_100109A48(*v3, *(v3 + 8), *(v3 + 16), *(v3 + 24), *(v3 + 32));
  v4 = *(v0 + 20);
  sub_10022C350(&unk_100CE1000, &qword_100A447D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    type metadata accessor for ScenePhase();
    sub_100003D98();
    (*(v5 + 8))(v3 + v4);
  }

  else
  {
  }

  v6 = v3 + *(v0 + 24);
  v7 = v6 + *(type metadata accessor for ContentStatusBannerPresentationMetrics(0) + 20);
  v8 = type metadata accessor for ContentStatusBanner(0);
  if (!sub_100017854(v7))
  {
    if (*(v7 + 16) >= 2uLL)
    {
    }

    v9 = *(v8 + 24);
    v10 = type metadata accessor for Date();
    if (!sub_100017854(v7 + v9))
    {
      sub_100003D20();
      (*(v11 + 8))(v7 + v9, v10);
    }
  }

  sub_10022C350(&qword_100CCA710, &qword_100A68C68);

  return swift_deallocObject();
}

uint64_t sub_10010D9B8()
{
  v1 = v0;
  v2 = type metadata accessor for EnvironmentValues();
  v22 = *(v2 - 8);
  v23 = v2;
  __chkstk_darwin(v2);
  v21 = &v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10022C350(&qword_100CA5010, &unk_100A2F250);
  __chkstk_darwin(v4 - 8);
  v6 = &v20 - v5;
  v7 = type metadata accessor for ContentStatusBannerPresentationMetrics(0);
  v8 = v7 - 8;
  __chkstk_darwin(v7);
  __chkstk_darwin(v9);
  v11 = &v20 - v10;
  type metadata accessor for ContentStatusBannerPresentationViewModifier(0);
  sub_10022C350(&qword_100CCA710, &qword_100A68C68);
  State.wrappedValue.getter();
  sub_10011C0F0(&v11[*(v8 + 28)], v6, &qword_100CA5010, &unk_100A2F250);
  v12 = type metadata accessor for ContentStatusBanner(0);
  LODWORD(v11) = sub_100024D10(v6, 1, v12);
  result = sub_100018198(v6, &qword_100CA5010);
  if (v11 == 1)
  {
    State.wrappedValue.getter();
    result = sub_1001095D0();
    v14 = *v0;
    if (*(v1 + 32) != 1)
    {
      v15 = v1[1];
      v16 = v1[2];
      v17 = v1[3];

      static os_log_type_t.fault.getter();
      v18 = static Log.runtimeIssuesLog.getter();
      os_log(_:dso:log:_:_:)();

      v19 = v21;
      EnvironmentValues.init()();
      swift_getAtKeyPath();
      sub_100109A48(v14, v15, v16, v17, 0);
      return (*(v22 + 8))(v19, v23);
    }
  }

  return result;
}

uint64_t sub_10010DCD8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v36 = a3;
  v5 = sub_10022C350(&qword_100CA5010, &unk_100A2F250);
  __chkstk_darwin(v5 - 8);
  v35 = &v33 - v6;
  v7 = type metadata accessor for ContentStatusBannerPresentationMetrics(0);
  v8 = v7 - 8;
  v34 = *(v7 - 8);
  v9 = *(v34 + 64);
  __chkstk_darwin(v7);
  v10 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for MeasuredLocationViewerView(0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11 - 8);
  v14 = &v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_10022C350(&qword_100CC9B20, &qword_100A67E50);
  v16 = v15 - 8;
  __chkstk_darwin(v15);
  v18 = &v33 - v17;
  sub_1005F1770(a2, v14);
  sub_1005F1770(a1, v10);
  v19 = (*(v12 + 80) + 16) & ~*(v12 + 80);
  v20 = (v13 + *(v34 + 80) + v19) & ~*(v34 + 80);
  v21 = swift_allocObject();
  sub_100103E40(v14, v21 + v19);
  sub_100103E40(v10, v21 + v20);
  KeyPath = swift_getKeyPath();
  v23 = swift_getKeyPath();
  v24 = swift_getKeyPath();
  v25 = &v18[*(v16 + 44)];
  v26 = sub_10022C350(&qword_100CC9B28, &qword_100A67ED0);
  sub_1005F1770(a1, v25 + *(v26 + 28));
  *v25 = v24;
  *v18 = KeyPath;
  v18[8] = 0;
  *(v18 + 2) = v23;
  v18[24] = 0;
  *(v18 + 4) = sub_1005F17C8;
  *(v18 + 5) = v21;
  v27 = sub_10010EC9C();
  v28 = v35;
  sub_1000302D8(a1 + *(v8 + 28), v35, &qword_100CA5010, &unk_100A2F250);
  v29 = type metadata accessor for ContentStatusBanner(0);
  LOBYTE(a1) = sub_100024D10(v28, 1, v29) != 1;
  sub_100018198(v28, &qword_100CA5010);
  v30 = v36;
  sub_10011C0F0(v18, v36, &qword_100CC9B20, &qword_100A67E50);
  result = sub_10022C350(&qword_100CC9B30, &qword_100A67ED8);
  v32 = v30 + *(result + 36);
  *v32 = v27;
  *(v32 + 8) = a1;
  return result;
}

uint64_t sub_10010E09C()
{
  sub_10000C778();
  type metadata accessor for MeasuredLocationViewerView(0);
  sub_100003A0C();
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v5 = *(v4 + 64);
  v6 = type metadata accessor for ContentStatusBannerPresentationMetrics(0);
  sub_100003DDC();
  v8 = (v3 + v5 + *(v7 + 80)) & ~*(v7 + 80);
  v9 = v1 + v3;

  v10 = v0[6];
  sub_10022C350(&qword_100CA62E0, &qword_100A3D5F0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = type metadata accessor for UserInterfaceSizeClass();
    if (!sub_100030484(v9 + v10))
    {
      sub_100003B20();
      (*(v12 + 8))(v9 + v10, v11);
    }
  }

  else
  {
  }

  sub_100006F14((v9 + v0[9]));
  swift_unknownObjectRelease();
  sub_100006F14((v9 + v0[12]));
  sub_100006F14((v9 + v0[13]));

  v13 = v1 + v8 + *(v6 + 20);
  type metadata accessor for ContentStatusBanner(0);
  if (!sub_100017854(v13))
  {
    if (*(v13 + 16) >= 2uLL)
    {
    }

    v14 = type metadata accessor for Date();
    if (!sub_10000CB9C(v14))
    {
      sub_100003D20();
      v15 = sub_100044E18();
      v16(v15);
    }
  }

  sub_10000536C();

  return swift_deallocObject();
}

uint64_t sub_10010E2E0()
{
  sub_10000FE4C();
  v0 = sub_1006E4ABC();
  return sub_100005F94(v0);
}

uint64_t sub_10010E308()
{
  sub_10000FE4C();
  result = sub_1004470F4();
  *v0 = result;
  return result;
}

unint64_t sub_10010E37C()
{
  result = qword_100CCA8E0;
  if (!qword_100CCA8E0)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CCA8D0, &qword_100A69010);
    v4[0] = sub_1005F6F6C(&unk_100CCA8E8);
    v4[1] = sub_1000EA178(&unk_100CCA8F8);
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CCA8E0);
  }

  return result;
}

unint64_t sub_10010E464()
{
  result = qword_100CCA9A0;
  if (!qword_100CCA9A0)
  {
    result = swift_getWitnessTable(byte_100A69610, &type metadata for BottomBarButtonStyle, v0, v1);
    atomic_store(result, &qword_100CCA9A0);
  }

  return result;
}

uint64_t sub_10010E4B8()
{
  type metadata accessor for SettingReader();
  static SettingReader.shared.getter();
  static Settings.VFX.overrideConditionBackground.getter();
  SettingReader.read<A>(_:)();
}

uint64_t sub_10010E52C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for ConditionPickerMenuViewModel(0);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = a1;
  }

  else
  {
    v9 = sub_10022C350(&qword_100CB41C0, &unk_100A47590);
    v10 = a1 + *(a4 + 20);
  }

  return sub_10001B350(v10, a2, a2, v9);
}

uint64_t sub_10010E640(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for ConditionPickerMenuViewModel(0);
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a1;
  }

  else
  {
    v7 = sub_10022C350(&qword_100CB41C0, &unk_100A47590);
    v8 = a1 + *(a3 + 20);
  }

  return sub_100024D10(v8, a2, v7);
}

uint64_t sub_10010E700(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 48))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 32);
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

uint64_t sub_10010E740(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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
      *(result + 32) = (a2 - 1);
      return result;
    }

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10010E7E0()
{
  v0 = type metadata accessor for Material();
  sub_100007074(v0, qword_100D90600);
  sub_10000703C(v0, qword_100D90600);
  return sub_10010E82C();
}

uint64_t sub_10010E82C()
{
  v0 = type metadata accessor for Material();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for SettingReader();
  static SettingReader.shared.getter();
  if (qword_100CA2260 != -1)
  {
    swift_once();
  }

  DeviceSupportsMaterialBackgrounds();
  v4 = SettingReader.isEnabled(_:with:)();

  v5 = [objc_opt_self() mainBundle];
  *(swift_allocObject() + 16) = v4 & 1;
  static Material.coreMaterial(bundle:provider:)();

  Material.applyingFiltersInPlace(_:)();
  return (*(v1 + 8))(v3, v0);
}

void sub_10010E9FC()
{
  sub_100020DF0();
  type metadata accessor for Access();
  sub_1000037C4();
  __chkstk_darwin(v0);
  sub_10001F198();
  type metadata accessor for FeatureState();
  sub_1000037C4();
  __chkstk_darwin(v1);
  sub_100005888();
  sub_10022C350(&qword_100CC74A0, &qword_100A63CA0);
  v2 = sub_10000621C();
  v3(v2);
  v4 = sub_1000089C8();
  v5(v4);
  qword_100D90480 = sub_100004594(44, 0x8000000100AD5D30);
  sub_1000212EC();
}

unint64_t sub_10010EB50()
{
  if (*(v0 + 16))
  {
    return 0xD000000000000010;
  }

  else
  {
    return 0xD00000000000001ALL;
  }
}

unint64_t sub_10010EB90()
{
  result = qword_100CCAA00;
  if (!qword_100CCAA00)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CCA9E8, &qword_100A69108);
    v4[0] = &protocol witness table for Color;
    v4[1] = sub_1005F6F6C(&unk_100CCAA08);
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CCAA00);
  }

  return result;
}

unint64_t sub_10010EC48()
{
  result = qword_100CCA0D0;
  if (!qword_100CCA0D0)
  {
    result = swift_getWitnessTable(aU7_2, &type metadata for LocationViewerViewWeatherConditionBackground, v0, v1);
    atomic_store(result, &qword_100CCA0D0);
  }

  return result;
}

uint64_t sub_10010EC9C()
{
  v1 = sub_10022C350(&qword_100CA5010, &unk_100A2F250);
  __chkstk_darwin(v1 - 8);
  v3 = &v8 - v2;
  v4 = type metadata accessor for ContentStatusBannerPresentationMetrics(0);
  sub_1000302D8(v0 + *(v4 + 20), v3, &qword_100CA5010, &unk_100A2F250);
  v5 = type metadata accessor for ContentStatusBanner(0);
  v6 = sub_100024D10(v3, 1, v5);
  sub_100018198(v3, &qword_100CA5010);
  if (v6 == 1)
  {
    if (qword_100CA2078 == -1)
    {
    }

    goto LABEL_6;
  }

  if (qword_100CA2070 != -1)
  {
LABEL_6:
    swift_once();
  }
}

uint64_t sub_10010EDE8()
{
  result = static Animation.interpolatingSpring(mass:stiffness:damping:initialVelocity:)();
  qword_100D8FD48 = result;
  return result;
}

unint64_t sub_10010EE50()
{
  result = qword_100CCA820;
  if (!qword_100CCA820)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CCA278, &unk_100A689F8);
    v4[0] = sub_1005F6F6C(&unk_100CCA828);
    v4[1] = sub_10010EF08();
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CCA820);
  }

  return result;
}

unint64_t sub_10010EF08()
{
  result = qword_100CCA830;
  if (!qword_100CCA830)
  {
    result = swift_getWitnessTable(byte_100A5CB2C, &type metadata for WeatherConditionBackgroundBindingModifierWithVFXBackground, v0, v1);
    atomic_store(result, &qword_100CCA830);
  }

  return result;
}

void sub_10010EF7C(uint64_t a1)
{
  sub_10010F29C(319);
  if (v1 <= 0x3F)
  {
    sub_1009B5F18(319, &qword_100CB64B8, &type metadata accessor for DynamicTypeSize, &type metadata accessor for Environment);
    if (v2 <= 0x3F)
    {
      sub_1009B7F0C(319);
      if (v3 <= 0x3F)
      {
        sub_10010F4E8(319, &qword_100CE0E20, &type metadata for Bool, &type metadata accessor for Environment);
        if (v4 <= 0x3F)
        {
          type metadata accessor for WeatherConditionBackgroundModel();
          if (v5 <= 0x3F)
          {
            sub_100081B54(319, &qword_100CACC68, &protocol descriptor for WeatherConditionBackgroundManagerType, 0);
            if (v6 <= 0x3F)
            {
              sub_100081B54(319, &unk_100CACC70, &protocol descriptor for MicaLoaderType, 1);
              if (v7 <= 0x3F)
              {
                sub_10010F4E8(319, &unk_100CEAE10, &type metadata for CollisionVFXOptions, &type metadata accessor for Optional);
                if (v8 <= 0x3F)
                {
                  sub_1009B5F18(319, &qword_100CACB80, &type metadata accessor for AnimatedGradient, &type metadata accessor for State);
                  if (v9 <= 0x3F)
                  {
                    sub_10010F4E8(319, &qword_100CEAEE8, &type metadata for Double, &type metadata accessor for State);
                    if (v10 <= 0x3F)
                    {
                      sub_10010F774(319);
                      if (v11 <= 0x3F)
                      {
                        sub_10010F8F4(319, &qword_100CEAF00, &type metadata accessor for ObservedObject);
                        if (v12 <= 0x3F)
                        {
                          sub_10010F9DC(319);
                          if (v13 <= 0x3F)
                          {
                            sub_1009B5F18(319, &unk_100CEAF18, type metadata accessor for WeatherConditionBackgroundModifierState, &type metadata accessor for State);
                            if (v14 <= 0x3F)
                            {
                              swift_cvw_initStructMetadataWithLayoutString();
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
    }
  }
}

void sub_10010F29C(uint64_t a1)
{
  if (!qword_100CCB7B0)
  {
    type metadata accessor for LocationViewCollisionOptions(255);
    sub_100061E3C(&qword_100CACC60, type metadata accessor for LocationViewCollisionOptions, byte_100A95518);
    v1 = type metadata accessor for EnvironmentObject();
    if (!v2)
    {
      atomic_store(v1, &qword_100CCB7B0);
    }
  }
}

void sub_10010F330(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_10010F394(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    sub_1000201F8();
    v4 = type metadata accessor for Environment();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_10010F3E4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for Environment();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_10010F438(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    sub_10022E824(a3, a4);
    sub_1000201F8();
    v5 = type metadata accessor for Environment();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_10010F488(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t))
{
  if (!*a2)
  {
    sub_10022E824(a3, a4);
    v7 = sub_100031D74();
    v8 = a5(v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_10010F4E8(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_10010F558(uint64_t a1)
{
  sub_1009B5F18(319, &qword_100CEAAF8, &type metadata accessor for WeatherConditionBackgroundModel, &type metadata accessor for Optional);
  if (v1 <= 0x3F)
  {
    sub_1009B5F18(319, &qword_100CEAB00, type metadata accessor for VFXLoadRequestModel, &type metadata accessor for Optional);
    if (v2 <= 0x3F)
    {
      sub_1009B5F18(319, &unk_100CEAB08, &type metadata accessor for TargetWindowSizeClass, &type metadata accessor for Optional);
      if (v3 <= 0x3F)
      {
        type metadata accessor for DynamicTypeSize();
        if (v4 <= 0x3F)
        {
          type metadata accessor for ObservationRegistrar();
          if (v5 <= 0x3F)
          {
            swift_updateClassMetadata2();
          }
        }
      }
    }
  }
}

void sub_10010F774(uint64_t a1)
{
  if (!qword_100CEAEF0)
  {
    type metadata accessor for AnimatedBackgroundsUserDefaultsMonitor(255);
    sub_1009B7E78(&qword_100CEAEF8, type metadata accessor for AnimatedBackgroundsUserDefaultsMonitor, byte_100AA0608);
    v1 = type metadata accessor for StateObject();
    if (!v2)
    {
      atomic_store(v1, &qword_100CEAEF0);
    }
  }
}

void sub_10010F828(uint64_t a1)
{
  sub_10010F4E8(319, &qword_100CB4E30, &type metadata for Bool, &type metadata accessor for Published);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_10010F8F4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = type metadata accessor for WeatherVFXConditionBackground();
    v7 = sub_1009B7E78(&qword_100CB0478, &type metadata accessor for WeatherVFXConditionBackground, &protocol conformance descriptor for WeatherVFXConditionBackground);
    v8 = a3(a1, v6, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t type metadata accessor for WeatherMicaConditionBackground(uint64_t a1)
{
  result = qword_100CB4E18;
  if (!qword_100CB4E18)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10010F9DC(uint64_t a1)
{
  if (!qword_100CEAF08)
  {
    type metadata accessor for WeatherMicaConditionBackground(255);
    sub_1009B7E78(&qword_100CEAF10, type metadata accessor for WeatherMicaConditionBackground, byte_100A48428);
    v1 = type metadata accessor for StateObject();
    if (!v2)
    {
      atomic_store(v1, &qword_100CEAF08);
    }
  }
}

void sub_10010FA70(uint64_t a1)
{
  if (!qword_100CB4E28)
  {
    type metadata accessor for MicaBackgroundAnimation();
    v1 = type metadata accessor for Published();
    if (!v2)
    {
      atomic_store(v1, &qword_100CB4E28);
    }
  }
}

void sub_10010FAC8(uint64_t a1)
{
  sub_10010FA70(319);
  if (v1 <= 0x3F)
  {
    sub_10010FBAC();
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_10010FBAC()
{
  if (!qword_100CB4E30)
  {
    v0 = type metadata accessor for Published();
    if (!v1)
    {
      atomic_store(v0, &qword_100CB4E30);
    }
  }
}

unint64_t sub_10010FC1C()
{
  result = qword_100CC3940;
  if (!qword_100CC3940)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CC3930, &qword_100A5CB80);
    v4[0] = sub_10010FCD8();
    v4[1] = sub_100061DF4(&qword_100CB08D0, type metadata accessor for WeatherConditionBackgroundModifier, aQ_7);
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CC3940);
  }

  return result;
}

unint64_t sub_10010FCD8()
{
  result = qword_100CC3948;
  if (!qword_100CC3948)
  {
    v3 = sub_10022E824(&qword_100CC3938, &unk_100A5CCD0);
    result = swift_getWitnessTable(&protocol conformance descriptor for _ViewModifier_Content<A>, v3, v0, v1);
    atomic_store(result, &qword_100CC3948);
  }

  return result;
}

unint64_t sub_10010FD7C()
{
  result = qword_100CEAFD8;
  if (!qword_100CEAFD8)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CEAFD0, &qword_100AA0A80);
    v4[0] = sub_100006F64(&qword_100CEAFE0, &qword_100CEAFE8, &unk_100AA0A88, &protocol conformance descriptor for _ViewModifier_Content<A>);
    v4[1] = sub_100006F64(&qword_100CC0538, &qword_100CC0540, &unk_100A9A4B0, &protocol conformance descriptor for _BackgroundStyleModifier<A>);
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CEAFD8);
  }

  return result;
}

unint64_t sub_10010FE60()
{
  result = qword_100CC9B38;
  if (!qword_100CC9B38)
  {
    result = swift_getWitnessTable(byte_100A685AC, &_s52ContentStatusBannerPresentationMetricsEnvironmentKeyVN, v0, v1);
    atomic_store(result, &qword_100CC9B38);
  }

  return result;
}

void *sub_10010FEB4()
{
  sub_10010FE60();

  return EnvironmentValues.subscript.getter();
}

uint64_t sub_10010FF2C(uint64_t a1)
{
  v2 = type metadata accessor for ContentStatusBannerPresentationMetrics(0);
  __chkstk_darwin(v2 - 8);
  sub_1005F1770(a1, &v5 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_10010FE60();
  EnvironmentValues.subscript.setter();
  return sub_1001095D0();
}

uint64_t sub_10010FFF4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_10022C350(&qword_100CCA278, &unk_100A689F8);
  __chkstk_darwin(v5);
  v8 = &v15 - v7;
  v9 = *(v2 + 72);
  if (v9)
  {
    v10 = *(v2 + 64);
    v11 = &v8[*(v6 + 36)];
    v15 = *(v2 + 8);
    sub_10042F370(v2 + 24, (v11 + 32));

    sub_10022C350(&qword_100CA4BD8, &qword_100A2EE80);
    sub_1005F6F6C(&qword_100CA4BE0);
    *v11 = ObservedObject.init(wrappedValue:)();
    *(v11 + 1) = v12;
    *(v11 + 1) = v15;
    *(v11 + 9) = v10;
    *(v11 + 10) = v9;
    v13 = sub_10022C350(&qword_100CCA280, &unk_100A68A08);
    (*(*(v13 - 8) + 16))(v8, a1, v13);
    sub_10011C0F0(v8, a2, &qword_100CCA278, &unk_100A689F8);
    return swift_unknownObjectRetain();
  }

  else
  {
    type metadata accessor for WeatherVFXConditionBackground();
    sub_1000EA178(&qword_100CB0478);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t sub_100110204@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v64 = a1;
  type metadata accessor for SkyBackgroundGradient();
  sub_1000037C4();
  v62 = v6;
  v63 = v5;
  __chkstk_darwin(v5);
  v59 = v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for WeatherConditionBackgroundModel();
  sub_1000037C4();
  v10 = v9;
  __chkstk_darwin(v11);
  v13 = v52 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = v52 - v15;
  __chkstk_darwin(v17);
  v19 = v52 - v18;
  sub_1001108E0();
  v65 = *(v2 + 16);
  sub_100035B30(v2 + 32, v70);
  v58 = *(v2 + 80);
  sub_1001108E0();
  v20 = sub_1001142FC();
  v22 = v21;
  v60 = *(v10 + 8);
  v61 = v10 + 8;
  v60(v16, v8);
  v57 = v22;
  if (v22)
  {
    v56 = *(v3 + 72);
    v55 = v20;
  }

  else
  {
    v56 = 0;
    v55 = 0;
  }

  v23 = static Color.black.getter();
  v24 = *(v10 + 16);
  v24(v13, v19, v8);
  sub_100035B30(v70, v69);
  v25 = (a2 + *(sub_10022C350(&qword_100CC3930, &qword_100A5CB80) + 36));
  type metadata accessor for LocationViewCollisionOptions(0);
  sub_100061DF4(&qword_100CACC60, type metadata accessor for LocationViewCollisionOptions, byte_100A95518);
  *v25 = EnvironmentObject.init()();
  v25[1] = v26;
  v27 = type metadata accessor for WeatherConditionBackgroundModifier(0);
  v28 = v27[5];
  *(v25 + v28) = swift_getKeyPath();
  sub_10022C350(&qword_100CA2E38, &qword_100A49D50);
  swift_storeEnumTagMultiPayload();
  v29 = v27[6];
  *(v25 + v29) = swift_getKeyPath();
  sub_10022C350(&qword_100CB0588, &qword_100AA07C0);
  swift_storeEnumTagMultiPayload();
  KeyPath = swift_getKeyPath();
  sub_10001EFAC(KeyPath);
  v31 = swift_getKeyPath();
  sub_10001EFAC(v31);
  v32 = swift_getKeyPath();
  sub_10001EFAC(v32);
  v33 = swift_getKeyPath();
  sub_10001EFAC(v33);
  v34 = swift_getKeyPath();
  sub_10001EFAC(v34);
  *(v25 + v27[17]) = 0;
  v54 = v19;
  v66 = 0;
  State.init(wrappedValue:)();
  sub_1000102C8();
  v66 = 0;
  State.init(wrappedValue:)();
  sub_1000102C8();
  v35 = v25 + v27[22];
  *v35 = sub_10011469C;
  *(v35 + 1) = 0;
  v35[16] = 0;
  v36 = v25 + v27[24];
  *v36 = sub_100116F64;
  *(v36 + 1) = 0;
  v36[16] = 0;
  v37 = v27[25];
  v53 = a2;
  v38 = (v25 + v37);
  type metadata accessor for WeatherConditionBackgroundModifierState(0);
  swift_allocObject();
  v66 = sub_1009B5F9C();
  State.init(wrappedValue:)();
  v39 = v68;
  *v38 = v67;
  v38[1] = v39;
  *(v25 + v27[26]) = 1092616192;
  v24(v25 + v27[12], v13, v8);
  *(v25 + v27[13]) = v65;
  sub_100035B30(v69, v25 + v27[14]);
  v40 = (v25 + v27[23]);
  type metadata accessor for WeatherVFXConditionBackground();
  sub_100061DF4(&qword_100CB0478, &type metadata accessor for WeatherVFXConditionBackground, &protocol conformance descriptor for WeatherVFXConditionBackground);
  swift_unknownObjectRetain();

  *v40 = ObservedObject.init(wrappedValue:)();
  v40[1] = v41;
  v42 = (v25 + v27[15]);
  v43 = v55;
  *v42 = v56;
  v42[1] = v43;
  v42[2] = v57;
  *(v25 + v27[18]) = 0;
  v44 = v27[16];
  v52[1] = v23;
  *(v25 + v44) = v23;

  v45 = v59;
  WeatherConditionBackgroundModel.gradient.getter();
  SkyBackgroundGradient.gradient()();
  v46 = v63;
  v47 = *(v62 + 8);
  v47(v45, v63);
  WeatherConditionBackgroundModel.gradient.getter();
  SkyBackgroundGradient.gradient()();
  v47(v45, v46);
  v48 = v25 + v27[19];
  AnimatedGradient.init(baseGradient:animatedGradient:showAnimatedGradient:)();

  sub_100006F14(v69);
  v49 = v60;
  v60(v13, v8);
  sub_100006F14(v70);
  v49(v54, v8);
  *&v48[*(sub_10022C350(&qword_100CACB08, &unk_100A3BEF0) + 28)] = 0;
  v50 = sub_10022C350(&qword_100CC3938, &unk_100A5CCD0);
  return (*(*(v50 - 8) + 16))(v53, v64, v50);
}

void sub_1001108E0()
{
  sub_10000C778();
  v1 = v0;
  v3 = v2;
  v24 = type metadata accessor for WeatherConditionBackgroundModelFactoryInput();
  sub_1000037C4();
  v5 = v4;
  __chkstk_darwin(v6);
  sub_1000037D8();
  v9 = v8 - v7;
  sub_10022C350(&qword_100CA4BA8, &qword_100A2EE58);
  sub_1000037E8();
  __chkstk_darwin(v10);
  sub_100003C38();
  v13 = v11 - v12;
  __chkstk_darwin(v14);
  sub_10001D3DC();
  v16 = *(v15 + 120);
  sub_100069CDC(v0 + v16);
  sub_1000302D8(v0 + v16, v0, &qword_100CA4BA8, &qword_100A2EE58);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v18 = *(sub_10022C350(&qword_100CA4BC8, &unk_100A9E010) + 48);
      type metadata accessor for WeatherConditionBackgroundModel();
      sub_1000037E8();
      (*(v19 + 32))(v3, v0 + v18);
      (*(v5 + 8))(v0, v24);
    }

    else
    {
      type metadata accessor for WeatherConditionBackgroundModel();
      sub_1000037E8();
      (*(v22 + 32))(v3, v0);
    }
  }

  else
  {
    v23 = *(v0 + 16);
    (*v0)();
    v23(v9);

    v20 = *(sub_10022C350(&qword_100CA4BC8, &unk_100A9E010) + 48);
    (*(v5 + 32))(v13, v9, v24);
    type metadata accessor for WeatherConditionBackgroundModel();
    sub_1000037E8();
    (*(v21 + 16))(v13 + v20, v3);
    swift_storeEnumTagMultiPayload();
    sub_100017BD8(v1 + v16, &v25);
    sub_10053347C(v13, v1 + v16, &qword_100CA4BA8, &qword_100A2EE58);
    swift_endAccess();
  }

  sub_10000536C();
}

uint64_t sub_100110BB4@<X0>(void (*a1)(uint64_t *, uint64_t)@<X0>, void (*a2)(uint64_t *__return_ptr, uint64_t)@<X2>, uint64_t a3@<X8>)
{
  v6 = sub_10022C350(&unk_100CA4BC0, &unk_100A2EE70);
  v7 = __chkstk_darwin(v6 - 8);
  v9 = v17 - v8;
  (a2)(v17, v7);
  a1(v17, 1);

  v10 = type metadata accessor for WeatherConditionBackgroundModelFactoryInput();
  if (sub_100024D10(v9, 1, v10) != 1)
  {
    return (*(*(v10 - 8) + 32))(a3, v9, v10);
  }

  sub_1000180EC(v9, &unk_100CA4BC0, &unk_100A2EE70);
  v17[0] = 0;
  v17[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(82);
  v12._countAndFlagsBits = 0xD00000000000004BLL;
  v12._object = 0x8000000100ABBDF0;
  String.append(_:)(v12);
  v13._countAndFlagsBits = 0xD00000000000002BLL;
  v13._object = 0x8000000100ABC100;
  String.append(_:)(v13);
  v14._countAndFlagsBits = 8236;
  v14._object = 0xE200000000000000;
  String.append(_:)(v14);
  v15._object = 0x8000000100ABC130;
  v15._countAndFlagsBits = 0xD00000000000001FLL;
  String.append(_:)(v15);
  v16._countAndFlagsBits = 46;
  v16._object = 0xE100000000000000;
  String.append(_:)(v16);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t sub_100110DD0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v4 = a2;
  sub_1000161C0(a3, a3[3]);
  return sub_100110E28(a1, v4, a4);
}

uint64_t sub_100110E28@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v41 = a3;
  type metadata accessor for ViewState.SecondaryViewState(0);
  sub_1000037E8();
  __chkstk_darwin(v7);
  sub_1000037D8();
  v10 = v9 - v8;
  v11 = type metadata accessor for ViewState(0);
  sub_1000037E8();
  __chkstk_darwin(v12);
  sub_1000037D8();
  v15 = v14 - v13;
  v16 = sub_10022C350(&unk_100CE2F20, &unk_100A2D7D0);
  v17 = sub_100003810(v16);
  __chkstk_darwin(v17);
  v19 = &v40 - v18;
  v20 = sub_10022C350(&qword_100CA65D8, &unk_100A3D9D0);
  v21 = sub_100003810(v20);
  __chkstk_darwin(v21);
  v23 = &v40 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v26 = &v40 - v25;
  if ((static Solarium.isEnabled.getter() & 1) != 0 && (*(v4 + OBJC_IVAR____TtC7Weather43WeatherConditionBackgroundModelInputFactory_backgroundViewType) & 1) == 0)
  {
    v35 = a1 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_locations;
    v36 = type metadata accessor for LocationsState(0);
    sub_100169AC0(*(v35 + *(v36 + 24)), v19);
    v37 = type metadata accessor for LocationModel();
    if (sub_100024D10(v19, 1, v37) == 1)
    {
      sub_1000180EC(v19, &unk_100CE2F20, &unk_100A2D7D0);
      v38 = type metadata accessor for Location();
      sub_10001B350(v26, 1, 1, v38);
    }

    else
    {
      LocationModel.location.getter();
      (*(*(v37 - 8) + 8))(v19, v37);
    }

    sub_100111AFC(a1, v26, v41);
    v39 = v26;
    return sub_1000180EC(v39, &qword_100CA65D8, &unk_100A3D9D0);
  }

  sub_1001114B8();
  sub_1001114B8();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_10001FB88();
    sub_1001115D0(v10, type metadata accessor for ViewState.SecondaryViewState);
    if (a2)
    {
LABEL_5:
      if (qword_100CA2740 != -1)
      {
        swift_once();
      }

      v27 = type metadata accessor for Logger();
      sub_10000703C(v27, qword_100D90C18);
      v28 = Logger.logObject.getter();
      v29 = static os_log_type_t.fault.getter();
      if (os_log_type_enabled(v28, v29))
      {
        v30 = swift_slowAlloc();
        *v30 = 0;
        _os_log_impl(&_mh_execute_header, v28, v29, "Error: Could not create an initial input in WeatherConditionBackgroundModelFactoryInput! This is a bug and should be investigated.", v30, 2u);
      }

      simulateCrash(_:_:)("Error: Could not create an initial input in WeatherConditionBackgroundModelFactoryInput! This is a bug and should be investigated.", 130, 2, _swiftEmptyArrayStorage);
      v31 = type metadata accessor for Location();
      sub_10001B350(v23, 1, 1, v31);
      sub_100023468();
      goto LABEL_18;
    }

LABEL_13:
    v33 = type metadata accessor for WeatherConditionBackgroundModelFactoryInput();
    return sub_10001B350(v41, 1, 1, v33);
  }

  if (*(v15 + *(v11 + 36) + 8) == 1)
  {
    v32 = [objc_opt_self() currentDevice];
    [v32 userInterfaceIdiom];

    LOBYTE(v32) = *(v15 + *(v11 + 28));
    sub_10001FB88();
    if ((v32 & 1) == 0)
    {

      if (a2)
      {
        goto LABEL_5;
      }

      goto LABEL_13;
    }
  }

  else
  {
    sub_10001FB88();
  }

  sub_100111628(a1, v23);
  sub_100023468();

LABEL_18:
  v39 = v23;
  return sub_1000180EC(v39, &qword_100CA65D8, &unk_100A3D9D0);
}

uint64_t sub_1001112E4(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_1000037E8();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_100111344(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_100003A9C();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_1001113A0(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_1000037E8();
  v4 = sub_100003940();
  v5(v4);
  return a2;
}

uint64_t sub_1001113FC(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_1000037E8();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_10011145C(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_1000037E8();
  v4 = sub_100003940();
  v5(v4);
  return a2;
}

uint64_t sub_1001114B8()
{
  sub_100003A00();
  v1(0);
  sub_1000037E8();
  v2 = sub_100003940();
  v3(v2);
  return v0;
}

uint64_t sub_100111510(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_1000037E8();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_100111570(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_1000037E8();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_1001115D0(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_1000037E8();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_100111628@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v34 = a1;
  v3 = sub_10022C350(&qword_100CA3588, &unk_100A4F350);
  __chkstk_darwin(v3 - 8);
  v33 = &v32 - v4;
  v5 = type metadata accessor for LocationsState(0);
  __chkstk_darwin(v5);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10022C350(&unk_100CE2F20, &unk_100A2D7D0);
  __chkstk_darwin(v8 - 8);
  v10 = &v32 - v9;
  v11 = type metadata accessor for Location.Identifier();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v32 - v16;
  active = type metadata accessor for LocationViewerActiveLocationState(0);
  __chkstk_darwin(active - 8);
  v20 = &v32 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1001114B8();
  if (sub_100024D10(v20, 1, v11) == 1)
  {
    goto LABEL_7;
  }

  v32 = a2;
  (*(v12 + 32))(v17, v20, v11);
  sub_1001114B8();
  static CurrentLocation.placeholderIdentifier.getter();
  v21 = static Location.Identifier.== infix(_:_:)();
  v22 = *(v12 + 8);
  v23 = v22(v14, v11);
  if (v21)
  {
    sub_10022C350(&qword_100CA38C0, &unk_100A2D7E0);
    type metadata accessor for CurrentLocation();
    swift_storeEnumTagMultiPayload();
    v24 = type metadata accessor for LocationOfInterest();
    sub_10001B350(v33, 1, 1, v24);
    LocationModelData.init(locationOfInterest:isPredictedLocation:)();
    v25 = enum case for LocationModel.current(_:);
    v26 = type metadata accessor for LocationModel();
    (*(*(v26 - 8) + 104))(v10, v25, v26);
    sub_10001B350(v10, 0, 1, v26);
  }

  else
  {
    __chkstk_darwin(v23);
    *(&v32 - 2) = v17;
    sub_100030C98(sub_100079458, (&v32 - 4), v27);
  }

  sub_1001115D0(v7, type metadata accessor for LocationsState);
  v28 = type metadata accessor for LocationModel();
  v29 = sub_100024D10(v10, 1, v28);
  a2 = v32;
  if (v29 == 1)
  {
    v22(v17, v11);
    sub_1000180EC(v10, &unk_100CE2F20, &unk_100A2D7D0);
LABEL_7:
    v30 = type metadata accessor for Location();
    return sub_10001B350(a2, 1, 1, v30);
  }

  LocationModel.location.getter();
  v22(v17, v11);
  return (*(*(v28 - 8) + 8))(v10, v28);
}

uint64_t sub_100111AFC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v174 = a3;
  v5 = sub_10022C350(&unk_100CB2CF0, &unk_100A2D7F0);
  __chkstk_darwin(v5 - 8);
  v173 = &v137 - v6;
  v7 = sub_10022C350(&qword_100CB1288, &unk_100A5D770);
  __chkstk_darwin(v7 - 8);
  v9 = &v137 - v8;
  v10 = sub_10022C350(&qword_100CACCC0, &unk_100A5D780);
  __chkstk_darwin(v10 - 8);
  v12 = &v137 - v11;
  v13 = sub_10022C350(&qword_100CA58B8, &qword_100A2FD30);
  __chkstk_darwin(v13 - 8);
  v15 = &v137 - v14;
  v189 = type metadata accessor for Date();
  v170 = *(v189 - 8);
  __chkstk_darwin(v189);
  v188 = &v137 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v168 = type metadata accessor for BackgroundAnimationKind();
  v167 = *(v168 - 8);
  __chkstk_darwin(v168);
  v186 = &v137 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v166 = &v137 - v19;
  v187 = type metadata accessor for WeatherConditionGradientModel.PresentationContext();
  v185 = *(v187 - 8);
  __chkstk_darwin(v187);
  v171 = &v137 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v184 = &v137 - v22;
  v23 = type metadata accessor for TimeState(0);
  __chkstk_darwin(v23 - 8);
  v146 = &v137 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_10022C350(&qword_100CA3898, &qword_100A314D0);
  __chkstk_darwin(v25 - 8);
  v143 = &v137 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v145 = &v137 - v28;
  v29 = type metadata accessor for WeatherConditionBackgroundPreprocessedDataModel(0);
  __chkstk_darwin(v29 - 8);
  v139 = &v137 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_10022C350(&qword_100CCD850, &qword_100A6E590);
  __chkstk_darwin(v31 - 8);
  v162 = &v137 - v32;
  v161 = type metadata accessor for PreprocessedWeatherData(0);
  __chkstk_darwin(v161);
  v138 = &v137 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v165 = type metadata accessor for WeatherConditionBackgroundTimeData(0);
  __chkstk_darwin(v165);
  v163 = &v137 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v35);
  v183 = &v137 - v36;
  v37 = sub_10022C350(&qword_100CA65D8, &unk_100A3D9D0);
  __chkstk_darwin(v37 - 8);
  v169 = &v137 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v39);
  v158 = &v137 - v40;
  v159 = type metadata accessor for Location();
  v142 = *(v159 - 8);
  __chkstk_darwin(v159);
  v141 = &v137 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = sub_10022C350(&qword_100CA2CD8, &unk_100A2C420);
  __chkstk_darwin(v42 - 8);
  v175 = &v137 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v44);
  v194 = &v137 - v45;
  v46 = sub_10022C350(&qword_100CA37B0, &unk_100A2D740);
  __chkstk_darwin(v46 - 8);
  v164 = &v137 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v48);
  v144 = &v137 - v49;
  __chkstk_darwin(v50);
  v160 = &v137 - v51;
  __chkstk_darwin(v52);
  v193 = &v137 - v53;
  v157 = type metadata accessor for ViewState(0);
  __chkstk_darwin(v157);
  v156 = &v137 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  v198 = type metadata accessor for Location.Identifier();
  v55 = *(v198 - 8);
  __chkstk_darwin(v198);
  v197 = &v137 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  v152 = type metadata accessor for WeatherConditionBackgroundOptions.DisplayLocation();
  v151 = *(v152 - 8);
  __chkstk_darwin(v152);
  v155 = &v137 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0);
  v150 = type metadata accessor for WeatherConditionBackgroundConfig.CameraPositionType();
  v149 = *(v150 - 8);
  __chkstk_darwin(v150);
  v154 = &v137 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0);
  v148 = type metadata accessor for VFXEffectViewID();
  v147 = *(v148 - 8);
  __chkstk_darwin(v148);
  v153 = &v137 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0);
  v182 = type metadata accessor for WeatherConditionBackgroundOptions();
  v181 = *(v182 - 8);
  __chkstk_darwin(v182);
  v180 = &v137 - ((v60 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v61);
  v192 = &v137 - v62;
  v63 = [objc_opt_self() sharedApplication];
  v179 = UIApplication.maybeWindow.getter();

  v64 = a1 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_locations;
  v65 = *(v64 + *(type metadata accessor for LocationsState(0) + 36));
  v66 = *(v65 + 16);
  v176 = a1;
  v172 = v9;
  v190 = v15;
  v191 = v12;
  v177 = a2;
  v140 = v55;
  if (v66)
  {
    v199[0] = _swiftEmptyArrayStorage;

    sub_10000369C(0, v66, 0);
    v67 = v199[0];
    v69 = *(v55 + 16);
    v68 = v55 + 16;
    v196 = v69;
    v70 = (*(v68 + 64) + 32) & ~*(v68 + 64);
    v137 = v65;
    v71 = v65 + v70;
    v195 = *(v68 + 56);
    do
    {
      v72 = v197;
      v73 = v198;
      v196(v197, v71, v198);
      v74 = Location.Identifier.uniqueID.getter();
      v76 = v75;
      (*(v68 - 8))(v72, v73);
      v199[0] = v67;
      v78 = *(v67 + 16);
      v77 = *(v67 + 24);
      if (v78 >= v77 >> 1)
      {
        sub_10000369C((v77 > 1), v78 + 1, 1);
        v67 = v199[0];
      }

      *(v67 + 16) = v78 + 1;
      v79 = v67 + 16 * v78;
      *(v79 + 32) = v74;
      *(v79 + 40) = v76;
      v71 += v195;
      --v66;
    }

    while (v66);

    a2 = v177;
    a1 = v176;
  }

  (*(v147 + 104))(v153, enum case for VFXEffectViewID.locationViewer(_:), v148);
  (*(v149 + 104))(v154, enum case for WeatherConditionBackgroundConfig.CameraPositionType.default(_:), v150);
  (*(v151 + 104))(v155, enum case for WeatherConditionBackgroundOptions.DisplayLocation.locationViewer(_:), v152);
  v80 = v179;
  v81 = v159;
  if (v179)
  {
    [v179 bounds];
    v83 = v82;
    v85 = v84;
    v87 = v86;
    v89 = v88;
    v90 = v80;
    UIWindow.displayScale.getter();
    v92 = v91;
  }

  else
  {
    v83 = 0.0;
    v92 = 1.0;
    v85 = 0.0;
    v87 = 0.0;
    v89 = 0.0;
  }

  v93 = v156;
  sub_1001114B8();
  sub_1001115D0(v93, type metadata accessor for ViewState);
  WeatherConditionBackgroundOptions.init(locationIDs:applyMask:applyLegibilityScrim:effectViewID:canShowCollisionLayer:cameraPositionType:displayLocation:windowBounds:displayScale:locationViewerOrientation:)(v83, v85, v87, v89, v92);
  v94 = v158;
  sub_100095588();
  if (sub_100024D10(v94, 1, v81) == 1)
  {
    sub_1000180EC(v94, &qword_100CA65D8, &unk_100A3D9D0);
    v95 = type metadata accessor for LocationWeatherDataState(0);
    sub_10001B350(v193, 1, 1, v95);
    v96 = type metadata accessor for WeatherCondition();
    sub_10001B350(v194, 1, 1, v96);
  }

  else
  {
    v97 = v142;
    v98 = v141;
    (*(v142 + 32))(v141, v94, v81);
    v99 = *(a1 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData + 16);

    v100 = Location.id.getter();
    sub_1000864C0(v100, v101, v99);

    v102 = *(a1 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_debugState + 8);

    v103 = v197;
    Location.identifier.getter();
    v104 = Location.Identifier.id.getter();
    sub_100113300(v104, v105, v102);

    (*(v140 + 8))(v103, v198);
    (*(v97 + 8))(v98, v81);
  }

  v106 = v189;
  v107 = v170;
  v108 = v162;
  v109 = v160;
  sub_100095588();
  v110 = type metadata accessor for LocationWeatherDataState(0);
  v111 = sub_100024D10(v109, 1, v110);
  v198 = v110;
  if (v111 == 1)
  {
    sub_1000180EC(v109, &qword_100CA37B0, &unk_100A2D740);
    sub_10001B350(v108, 1, 1, v161);
LABEL_16:
    sub_1000180EC(v108, &qword_100CCD850, &qword_100A6E590);
    sub_100035B30(v178 + OBJC_IVAR____TtC7Weather43WeatherConditionBackgroundModelInputFactory_weatherConditionBackgroundTimeDataFactory, v199);
    sub_1000161C0(v199, v199[3]);
    v112 = v144;
    sub_100095588();
    if (sub_100024D10(v112, 1, v110) == 1)
    {
      sub_1000180EC(v112, &qword_100CA37B0, &unk_100A2D740);
      v113 = type metadata accessor for WeatherData(0);
      v114 = v145;
      sub_10001B350(v145, 1, 1, v113);
    }

    else
    {
      v114 = v145;
      sub_1001A0D3C();
      sub_1001115D0(v112, type metadata accessor for LocationWeatherDataState);
    }

    v115 = v146;
    sub_1001114B8();
    sub_1000756B0(a2, v114, v115, v163);
    sub_1000180EC(v114, &qword_100CA3898, &qword_100A314D0);
    (*(v107 + 8))(v115, v106);
    sub_100006F14(v199);
    v116 = v107;
    goto LABEL_21;
  }

  sub_1001ACCC0();
  sub_1001115D0(v109, type metadata accessor for LocationWeatherDataState);
  if (sub_100024D10(v108, 1, v161) == 1)
  {
    goto LABEL_16;
  }

  v117 = v138;
  sub_100113818();
  sub_1001114B8();
  sub_1001115D0(v117, type metadata accessor for PreprocessedWeatherData);
  sub_100113818();
  v116 = v107;
LABEL_21:
  v118 = v183;
  sub_100113818();
  v119 = *(v178 + OBJC_IVAR____TtC7Weather43WeatherConditionBackgroundModelInputFactory_forceTileGradientPresentationContext);
  v120 = v166;
  sub_100113870(v166);
  v121 = v184;
  BackgroundAnimationKind.gradientContext.getter();
  (*(v167 + 8))(v120, v168);
  v122 = v185;
  v123 = &enum case for WeatherConditionGradientModel.PresentationContext.tile(_:);
  if (!v119)
  {
    v123 = &enum case for WeatherConditionGradientModel.PresentationContext.fullScreen(_:);
  }

  v124 = v187;
  (*(v185 + 104))(v121, *v123, v187);
  sub_100113870(v186);
  (*(v116 + 16))(v188, v118, v106);
  sub_100095588();
  sub_100095588();
  sub_100095588();
  swift_beginAccess();
  type metadata accessor for EnvironmentState(0);
  sub_100095588();
  (*(v181 + 16))(v180, v192, v182);
  (*(v122 + 16))(v171, v121, v124);
  v125 = v164;
  sub_100095588();
  if (sub_100024D10(v125, 1, v198) == 1)
  {
    sub_1000180EC(v125, &qword_100CA37B0, &unk_100A2D740);
    v126 = v174;
    v127 = v173;
    v128 = v172;
  }

  else
  {
    v129 = v143;
    sub_1001A0D3C();
    sub_1001115D0(v125, type metadata accessor for LocationWeatherDataState);
    v130 = type metadata accessor for WeatherData(0);
    v131 = sub_100024D10(v129, 1, v130);
    v126 = v174;
    v128 = v172;
    if (v131 != 1)
    {
      v133 = *(v130 + 24);
      v134 = type metadata accessor for WeatherDataModel();
      (*(*(v134 - 8) + 16))(v128, v129 + v133, v134);
      sub_1001115D0(v129, type metadata accessor for WeatherData);
      sub_10001B350(v128, 0, 1, v134);
      v127 = v173;
      goto LABEL_29;
    }

    sub_1000180EC(v129, &qword_100CA3898, &qword_100A314D0);
    v127 = v173;
  }

  v132 = type metadata accessor for WeatherDataModel();
  sub_10001B350(v128, 1, 1, v132);
LABEL_29:
  sub_10001B350(v127, 1, 1, v189);
  WeatherConditionBackgroundModelFactoryInput.init(animationKind:currentTime:elevation:moonData:debugConditionOverride:isReduceMotionEnabled:location:options:presentationContext:weatherData:conditionBackgroundDateOverride:)();

  (*(v185 + 8))(v184, v187);
  sub_1001115D0(v183, type metadata accessor for WeatherConditionBackgroundTimeData);
  sub_1000180EC(v194, &qword_100CA2CD8, &unk_100A2C420);
  sub_1000180EC(v193, &qword_100CA37B0, &unk_100A2D740);
  (*(v181 + 8))(v192, v182);
  v135 = type metadata accessor for WeatherConditionBackgroundModelFactoryInput();
  return sub_10001B350(v126, 0, 1, v135);
}

void sub_10011332C(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  type metadata accessor for UUID();
  sub_100003928();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = a1;
  }

  else
  {
    if (a3 == 0x7FFFFFFF)
    {
      *(a1 + a4[5]) = (a2 - 1);
      return;
    }

    type metadata accessor for FeelsLikeComponentPreprocessedDataModel(0);
    sub_100003928();
    if (*(v13 + 84) == a3)
    {
      v10 = v12;
      v14 = a4[6];
    }

    else
    {
      type metadata accessor for HourlyForecastComponentPreprocessedDataModel(0);
      sub_100003928();
      if (*(v16 + 84) == a3)
      {
        v10 = v15;
        v14 = a4[7];
      }

      else
      {
        type metadata accessor for ListPreprocessedDataModel(0);
        sub_100003928();
        if (*(v18 + 84) == a3)
        {
          v10 = v17;
          v14 = a4[8];
        }

        else
        {
          type metadata accessor for UVIndexComponentPreprocessedDataModel(0);
          sub_100003928();
          if (*(v20 + 84) == a3)
          {
            v10 = v19;
            v14 = a4[10];
          }

          else
          {
            type metadata accessor for PressureComponentPreprocessedDataModel(0);
            sub_100003928();
            if (*(v22 + 84) == a3)
            {
              v10 = v21;
              v14 = a4[12];
            }

            else
            {
              v10 = type metadata accessor for WeatherConditionBackgroundPreprocessedDataModel(0);
              v14 = a4[14];
            }
          }
        }
      }
    }

    v11 = a1 + v14;
  }

  sub_10001B350(v11, a2, a2, v10);
}

uint64_t sub_100113548(uint64_t a1, uint64_t a2, int *a3)
{
  type metadata accessor for UUID();
  sub_100003928();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a1;
LABEL_19:

    return sub_100024D10(v9, a2, v8);
  }

  if (a2 != 0x7FFFFFFF)
  {
    type metadata accessor for FeelsLikeComponentPreprocessedDataModel(0);
    sub_100003928();
    if (*(v13 + 84) == a2)
    {
      v8 = v12;
      v14 = a3[6];
    }

    else
    {
      type metadata accessor for HourlyForecastComponentPreprocessedDataModel(0);
      sub_100003928();
      if (*(v16 + 84) == a2)
      {
        v8 = v15;
        v14 = a3[7];
      }

      else
      {
        type metadata accessor for ListPreprocessedDataModel(0);
        sub_100003928();
        if (*(v18 + 84) == a2)
        {
          v8 = v17;
          v14 = a3[8];
        }

        else
        {
          type metadata accessor for UVIndexComponentPreprocessedDataModel(0);
          sub_100003928();
          if (*(v20 + 84) == a2)
          {
            v8 = v19;
            v14 = a3[10];
          }

          else
          {
            type metadata accessor for PressureComponentPreprocessedDataModel(0);
            sub_100003928();
            if (*(v22 + 84) == a2)
            {
              v8 = v21;
              v14 = a3[12];
            }

            else
            {
              v8 = type metadata accessor for WeatherConditionBackgroundPreprocessedDataModel(0);
              v14 = a3[14];
            }
          }
        }
      }
    }

    v9 = a1 + v14;
    goto LABEL_19;
  }

  v10 = *(a1 + a3[5]);
  if (v10 >= 0xFFFFFFFF)
  {
    LODWORD(v10) = -1;
  }

  return (v10 + 1);
}

uint64_t sub_100113754(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_1000037E8();
  v4 = sub_100003940();
  v5(v4);
  return a2;
}

uint64_t sub_1001137B0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_100113818()
{
  sub_100003A00();
  v1(0);
  sub_1000037E8();
  v2 = sub_100003940();
  v3(v2);
  return v0;
}

uint64_t sub_100113870@<X0>(_BYTE *a1@<X8>)
{
  v2 = sub_10022C350(&qword_100CE2C00, &unk_100A95B30);
  __chkstk_darwin(v2 - 8);
  v4 = &v10[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v5);
  v7 = &v10[-v6];
  swift_beginAccess();
  sub_100095588();
  v8 = type metadata accessor for BackgroundAnimationKind();
  if (sub_100024D10(v7, 1, v8) != 1)
  {
    return (*(*(v8 - 8) + 32))(a1, v7, v8);
  }

  sub_1000180EC(v7, &qword_100CE2C00, &unk_100A95B30);
  sub_100113A58(a1);
  (*(*(v8 - 8) + 16))(v4, a1, v8);
  sub_10001B350(v4, 0, 1, v8);
  swift_beginAccess();
  sub_100097AA4();
  return swift_endAccess();
}

uint64_t sub_100113A58@<X0>(_BYTE *a1@<X8>)
{
  v2 = type metadata accessor for Settings.VFX.AnimatedBackgrounds.AnimationKind();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100113C1C(v5);
  v6 = (*(v3 + 88))(v5, v2);
  if (v6 == enum case for Settings.VFX.AnimatedBackgrounds.AnimationKind.vfx(_:))
  {
    *a1 = 1;
    v7 = &enum case for BackgroundAnimationKind.vfx(_:);
LABEL_5:
    v8 = *v7;
    v9 = type metadata accessor for BackgroundAnimationKind();
    return (*(*(v9 - 8) + 104))(a1, v8, v9);
  }

  if (v6 == enum case for Settings.VFX.AnimatedBackgrounds.AnimationKind.mica(_:))
  {
    v7 = &enum case for BackgroundAnimationKind.mica(_:);
    goto LABEL_5;
  }

  *a1 = 1;
  v11 = enum case for BackgroundAnimationKind.vfx(_:);
  v12 = type metadata accessor for BackgroundAnimationKind();
  (*(*(v12 - 8) + 104))(a1, v11, v12);
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_100113C1C@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_10022C350(&qword_100CC3788, &qword_100A5C580);
  __chkstk_darwin(v2 - 8);
  v4 = &v10[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v5);
  v7 = &v10[-v6];
  swift_beginAccess();
  sub_100095588();
  v8 = type metadata accessor for Settings.VFX.AnimatedBackgrounds.AnimationKind();
  if (sub_100024D10(v7, 1, v8) != 1)
  {
    return (*(*(v8 - 8) + 32))(a1, v7, v8);
  }

  sub_1000180EC(v7, &qword_100CC3788, &qword_100A5C580);
  static Settings.VFX.animatedBackgrounds.getter();
  Settings.VFX.AnimatedBackgrounds.locationAnimationKind.getter();

  sub_100113E68();
  Configurable.setting<A>(_:)();

  (*(*(v8 - 8) + 16))(v4, a1, v8);
  sub_10001B350(v4, 0, 1, v8);
  swift_beginAccess();
  sub_100097AA4();
  return swift_endAccess();
}

unint64_t sub_100113E68()
{
  result = qword_100CE2C08[0];
  if (!qword_100CE2C08[0])
  {
    v3 = type metadata accessor for WeatherConditionBackgroundModelInputFactory(255);
    result = swift_getWitnessTable(byte_100A95AEC, v3, v0, v1);
    atomic_store(result, qword_100CE2C08);
  }

  return result;
}

uint64_t sub_100113ED8@<X0>(uint64_t a1@<X0>, void (*a2)(uint64_t, uint64_t, double)@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_10022C350(&qword_100CA4BB0, &qword_100A2EE60);
  v7 = __chkstk_darwin(v6 - 8);
  v9 = v17 - v8;
  a2(a1, 1, v7);
  v10 = type metadata accessor for WeatherConditionBackgroundModel();
  if (sub_100024D10(v9, 1, v10) != 1)
  {
    return (*(*(v10 - 8) + 32))(a3, v9, v10);
  }

  sub_1000180EC(v9, &qword_100CA4BB0, &qword_100A2EE60);
  v17[0] = 0;
  v17[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(87);
  v12._countAndFlagsBits = 0xD000000000000050;
  v12._object = 0x8000000100ABBD90;
  String.append(_:)(v12);
  v13._countAndFlagsBits = 0xD00000000000002BLL;
  v13._object = 0x8000000100ABC100;
  String.append(_:)(v13);
  v14._countAndFlagsBits = 8236;
  v14._object = 0xE200000000000000;
  String.append(_:)(v14);
  v15._object = 0x8000000100ABC130;
  v15._countAndFlagsBits = 0xD00000000000001FLL;
  String.append(_:)(v15);
  v16._countAndFlagsBits = 46;
  v16._object = 0xE100000000000000;
  String.append(_:)(v16);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t sub_1001140BC@<X0>(void (*a1)(void)@<X1>, uint64_t a2@<X8>)
{
  a1();
  v3 = type metadata accessor for WeatherConditionBackgroundModel();

  return sub_10001B350(a2, 0, 1, v3);
}

unint64_t sub_100114168()
{
  result = qword_100CA5410;
  if (!qword_100CA5410)
  {
    v3 = type metadata accessor for NSUnitTemperature.BaseWeatherFormatStyle();
    result = swift_getWitnessTable(&protocol conformance descriptor for NSUnitTemperature.BaseWeatherFormatStyle, v3, v0, v1);
    atomic_store(result, &qword_100CA5410);
  }

  return result;
}

unint64_t sub_1001141C8()
{
  result = qword_100CB2D00;
  if (!qword_100CB2D00)
  {
    v3 = sub_10022E824(&qword_100CCC930, &qword_100A41810);
    result = swift_getWitnessTable(&protocol conformance descriptor for [A], v3, v0, v1);
    atomic_store(result, &qword_100CB2D00);
  }

  return result;
}

uint64_t sub_10011422C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10022C350(&qword_100CB5F98, "rQ\v");
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10011429C(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_1000037E8();
  (*(v5 + 32))(a2, a1);
  return a2;
}

uint64_t sub_1001142FC()
{
  v0 = type metadata accessor for Location();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v15 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for BackgroundAnimationData.Model();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for BackgroundAnimationData();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  WeatherConditionBackgroundModel.animationData.getter();
  v12 = (*(v9 + 88))(v11, v8);
  if (v12 == enum case for BackgroundAnimationData.none(_:) || v12 != enum case for BackgroundAnimationData.loaded(_:))
  {
    (*(v9 + 8))(v11, v8);
    return 0;
  }

  else
  {
    (*(v9 + 96))(v11, v8);
    (*(v5 + 32))(v7, v11, v4);
    BackgroundAnimationData.Model.location.getter();
    v13 = Location.id.getter();
    (*(v1 + 8))(v3, v0);
    (*(v5 + 8))(v7, v4);
  }

  return v13;
}

uint64_t sub_1001145A0(uint64_t (*a1)(void), uint64_t (*a2)(void))
{
  a1(0);
  swift_allocObject();
  return a2();
}

uint64_t sub_1001145E8()
{
  sub_100003A00();
  v1(0);
  sub_1000037E8();
  v2 = sub_100003940();
  v3(v2);
  return v0;
}

uint64_t sub_100114640(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_1000037E8();
  v4 = sub_100003940();
  v5(v4);
  return a2;
}

uint64_t sub_1001146C8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v119 = a2;
  v129 = a1;
  sub_10022C350(&qword_100CACF38, &unk_100A47BB0);
  sub_100003828();
  __chkstk_darwin(v2);
  v130 = (&v99 - v3);
  v124 = type metadata accessor for WeatherFormatPlaceholder();
  sub_1000037C4();
  countAndFlagsBits = v4;
  __chkstk_darwin(v5);
  sub_1000037D8();
  v123 = v7 - v6;
  sub_10022C350(&qword_100CAA9F0, qword_100A44F50);
  sub_100003828();
  __chkstk_darwin(v8);
  v108 = &v99 - v9;
  v116 = type metadata accessor for NSUnitTemperature.BaseWeatherFormatStyle();
  sub_1000037C4();
  object = v10;
  __chkstk_darwin(v11);
  sub_1000037D8();
  v111 = v13 - v12;
  v131 = sub_10022C350(&qword_100CA53F8, &unk_100A3B3E0);
  sub_1000037C4();
  v121 = v14;
  sub_100003828();
  __chkstk_darwin(v15);
  v17 = &v99 - v16;
  v18 = type metadata accessor for CurrentWeather();
  sub_1000037C4();
  v20 = v19;
  __chkstk_darwin(v21);
  v117 = &v99 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v25 = &v99 - v24;
  v26 = type metadata accessor for Locale.Language();
  sub_1000037C4();
  v28 = v27;
  __chkstk_darwin(v29);
  sub_1000037D8();
  v32 = v31 - v30;
  v33 = type metadata accessor for Locale();
  sub_1000037C4();
  v35 = v34;
  __chkstk_darwin(v36);
  sub_1000037D8();
  v39 = v38 - v37;
  static Locale.current.getter();
  Locale.language.getter();
  v40 = *(v35 + 8);
  v110 = v33;
  v40(v39, v33);
  LOBYTE(v35) = Locale.Language.prefersFullTemperatureScale.getter();
  (*(v28 + 8))(v32, v26);
  v115 = type metadata accessor for WeatherData(0);
  v41 = v129 + *(v115 + 24);
  WeatherDataModel.currentWeather.getter();
  v128 = v17;
  CurrentWeather.apparentTemperature.getter();
  v42 = *(v20 + 8);
  v109 = v25;
  v125 = v18;
  v122 = v42;
  v120 = v20 + 8;
  v42(v25, v18);
  if (v35)
  {
    static Set<>.value.getter();
    v43 = v108;
    sub_100009214();
    v103 = v41;
    v44 = v111;
    static WeatherFormatStyle<>.weather(_:locale:)();

    sub_1000180EC(v43, &qword_100CAA9F0, qword_100A44F50);
    v107 = enum case for WeatherFormatPlaceholder.none(_:);
    v45 = countAndFlagsBits;
    v46 = *(countAndFlagsBits + 104);
    v105 = countAndFlagsBits + 104;
    v106 = v46;
    v47 = v123;
    v48 = v124;
    v46(v123);
    v104 = type metadata accessor for UnitManager();
    static UnitManager.standard.getter();
    sub_100006AD0();
    v102 = sub_1001151A4(v49, 255, v50, &protocol conformance descriptor for NSUnitTemperature.BaseWeatherFormatStyle);
    v51 = v131;
    v52 = v116;
    v53 = v128;
    v54 = Measurement.formatted<A>(_:placeholder:unitManager:)();
    v113 = v55;
    v114 = v54;

    v56 = *(v45 + 8);
    countAndFlagsBits = v45 + 8;
    v101 = v56;
    v56(v47, v48);
    v57 = object[1];
    ++object;
    v100 = v57;
    v57(v44, v52);
    v58 = v44;
    v59 = v121 + 8;
    v121 = *(v121 + 1);
    v112 = v59 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v121(v53, v51);
    v60 = v109;
    WeatherDataModel.currentWeather.getter();
    CurrentWeather.apparentTemperature.getter();
    v122(v60, v125);
    static Set<>.unit.getter();
    sub_100009214();
    static WeatherFormatStyle<>.weather(_:locale:)();

    sub_1000180EC(v43, &qword_100CAA9F0, qword_100A44F50);
    v61 = v123;
    v62 = v124;
    v106(v123, v107, v124);
    static UnitManager.standard.getter();
    v63 = v61;
    v64 = v131;
    v110 = Measurement.formatted<A>(_:placeholder:unitManager:)();
    v108 = v65;

    v101(v63, v62);
    v100(v58, v52);
    v121(v53, v64);
    v66 = v60;
  }

  else
  {
    v67 = v111;
    static WeatherFormatStyle<>.weather.getter();
    v68 = countAndFlagsBits;
    v70 = v123;
    v69 = v124;
    (*(countAndFlagsBits + 104))(v123, enum case for WeatherFormatPlaceholder.none(_:), v124);
    type metadata accessor for UnitManager();
    static UnitManager.standard.getter();
    sub_100006AD0();
    sub_1001151A4(v71, 255, v72, &protocol conformance descriptor for NSUnitTemperature.BaseWeatherFormatStyle);
    v73 = v131;
    v74 = v116;
    v75 = v128;
    v76 = Measurement.formatted<A>(_:placeholder:unitManager:)();
    v113 = v77;
    v114 = v76;

    (*(v68 + 8))(v70, v69);
    (object[1])(v67, v74);
    v78 = *(v121 + 1);
    v112 = (v121 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v121 = v78;
    v78(v75, v73);
    v110 = 0;
    v108 = 0;
    v66 = v109;
  }

  v79 = v130;
  sub_100115490(v118, v129, v130);
  v80 = [objc_opt_self() mainBundle];
  v132._object = 0x8000000100AE4560;
  v81._countAndFlagsBits = 0x694C20736C656546;
  v81._object = 0xEA0000000000656BLL;
  v82._countAndFlagsBits = 0;
  v82._object = 0xE000000000000000;
  v132._countAndFlagsBits = 0x10000000000002E6;
  v83 = NSLocalizedString(_:tableName:bundle:value:comment:)(v81, 0, v80, v82, v132);
  object = v83._object;
  countAndFlagsBits = v83._countAndFlagsBits;

  v84 = type metadata accessor for FeelsLikeComponentPreprocessedDataModel(0);
  v85 = v119;
  sub_1001163D0(v79, v119 + *(v84 + 28));
  WeatherDataModel.currentWeather.getter();
  v86 = v128;
  CurrentWeather.apparentTemperature.getter();
  v87 = v66;
  v88 = v125;
  v89 = v122;
  v122(v87, v125);
  v90 = v117;
  WeatherDataModel.currentWeather.getter();
  v91 = StringBuilder.makeString(for:data:formattedForAccessibility:)();
  v93 = v92;
  v89(v90, v88);
  v121(v86, v131);
  result = sub_1000180EC(v130, &qword_100CACF38, &unk_100A47BB0);
  v95 = object;
  *v85 = countAndFlagsBits;
  v85[1] = v95;
  v96 = v113;
  v85[2] = v114;
  v85[3] = v96;
  v97 = v108;
  v85[4] = v110;
  v85[5] = v97;
  v98 = (v85 + *(v84 + 32));
  *v98 = v91;
  v98[1] = v93;
  return result;
}

uint64_t sub_1001150CC(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
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

uint64_t sub_100115114(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
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

uint64_t sub_10011515C(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
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

uint64_t sub_1001151A4(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), const char *a4)
{
  result = *a1;
  if (!result)
  {
    v7 = a3(a2);
    result = swift_getWitnessTable(a4, v7);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1001151EC(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
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

uint64_t sub_100115234()
{
  v1 = v0;
  v2 = sub_10022C350(&qword_100CB4ED0, &unk_100A484B0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v13 - v4;
  v6 = OBJC_IVAR____TtC7WeatherP33_5624985E7B87C7961D79AEAA50BEAAE138AnimatedBackgroundsUserDefaultsMonitor__animatedBackgroundsEnabled;
  v14 = 1;
  Published.init(initialValue:)();
  (*(v3 + 32))(v1 + v6, v5, v2);
  *(v1 + OBJC_IVAR____TtC7WeatherP33_5624985E7B87C7961D79AEAA50BEAAE138AnimatedBackgroundsUserDefaultsMonitor_observer) = 0;
  v7 = OBJC_IVAR____TtC7WeatherP33_5624985E7B87C7961D79AEAA50BEAAE138AnimatedBackgroundsUserDefaultsMonitor_defaults;
  v8 = [objc_opt_self() standardUserDefaults];
  *(v1 + v7) = v8;
  v13 = v8;
  swift_getKeyPath();
  swift_allocObject();
  swift_weakInit();
  v9 = v8;
  v10 = _KeyValueCodingAndObserving.observe<A>(_:options:changeHandler:)();

  v11 = *(v1 + OBJC_IVAR____TtC7WeatherP33_5624985E7B87C7961D79AEAA50BEAAE138AnimatedBackgroundsUserDefaultsMonitor_observer);
  *(v1 + OBJC_IVAR____TtC7WeatherP33_5624985E7B87C7961D79AEAA50BEAAE138AnimatedBackgroundsUserDefaultsMonitor_observer) = v10;

  return v1;
}

id sub_100115404@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 weather_vfx_animatedBackgrounds_enabled];
  *a2 = result;
  return result;
}

uint64_t sub_10011544C()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_100115490@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v111 = type metadata accessor for AppConfiguration();
  v110 = *(v111 - 8);
  __chkstk_darwin(v111);
  v109 = &v93 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for WeatherFormatPlaceholder();
  v8 = *(v7 - 8);
  v120 = v7;
  v121 = v8;
  __chkstk_darwin(v7);
  v119 = &v93 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for NSUnitTemperature.BaseWeatherFormatStyle();
  v112 = *(v10 - 8);
  v113 = v10;
  __chkstk_darwin(v10);
  v108 = &v93 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10022C350(&qword_100CA53F8, &unk_100A3B3E0);
  v124 = *(v12 - 8);
  __chkstk_darwin(v12);
  v117 = &v93 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v118 = &v93 - v15;
  __chkstk_darwin(v16);
  v123 = &v93 - v17;
  __chkstk_darwin(v18);
  v126 = &v93 - v19;
  v122 = type metadata accessor for CurrentWeather();
  v125 = *(v122 - 8);
  __chkstk_darwin(v122);
  v21 = &v93 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v24 = &v93 - v23;
  v115 = type metadata accessor for TemperatureDifferenceThresholdDetector();
  v25 = *(v115 - 8);
  __chkstk_darwin(v115);
  v27 = &v93 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100CA2A18 != -1)
  {
    swift_once();
  }

  type metadata accessor for FeelsLikeComponentViewModelFactory();
  sub_1001151A4(&qword_100CE39D0, v28, type metadata accessor for FeelsLikeComponentViewModelFactory, a5_11);
  Configurable.setting<A>(_:)();
  if (v127 == 1)
  {
    if (qword_100CA2000 != -1)
    {
      swift_once();
    }

    v29 = type metadata accessor for FeelsLikeComponentViewModel.SignificantDifference(0);
    v30 = sub_10000703C(v29, qword_100D8FCC8);
    sub_1008C84AC(v30, a3, type metadata accessor for FeelsLikeComponentViewModel.SignificantDifference);
    v31 = a3;
    v32 = 0;
    v33 = v29;
  }

  else
  {
    v105 = a1;
    v114 = a3;
    TemperatureDifferenceThresholdDetector.init()();
    v34 = a2 + *(type metadata accessor for WeatherData(0) + 24);
    WeatherDataModel.currentWeather.getter();
    v35 = v126;
    CurrentWeather.temperature.getter();
    v36 = v12;
    v37 = v24;
    v39 = v125 + 8;
    v38 = *(v125 + 8);
    v106 = v37;
    v40 = v122;
    v38();
    v116 = v34;
    WeatherDataModel.currentWeather.getter();
    v41 = v123;
    CurrentWeather.apparentTemperature.getter();
    v107 = v38;
    v125 = v39;
    (v38)(v21, v40);
    v42 = v36;
    v43 = [objc_opt_self() fahrenheit];
    v44 = TemperatureDifferenceThresholdDetector.areTemperaturesSignificantlyDifferent(_:_:threshold:thresholdUnit:)();

    v46 = v124 + 8;
    v45 = *(v124 + 8);
    v45(v41, v36);
    v45(v35, v36);
    (*(v25 + 8))(v27, v115);
    if (v44)
    {
      v115 = type metadata accessor for UnitManager();
      static UnitManager.standard.getter();
      v47 = UnitManager.temperature.getter();

      NSUnitTemperature.feelsLikeVarianceThreshold.getter();
      v49 = v48;

      static UnitManager.standard.getter();
      v103 = UnitManager.temperature.getter();

      v50 = v45;
      v51 = v106;
      v52 = v122;
      WeatherDataModel.currentWeather.getter();
      v53 = v118;
      CurrentWeather.temperature.getter();
      v54 = v107;
      (v107)(v51, v52);
      Measurement<>.converted(to:)();
      v50(v53, v42);
      Measurement.rounded.getter();
      v50(v41, v42);
      v104 = v50;
      v55 = v106;
      WeatherDataModel.currentWeather.getter();
      v56 = v117;
      CurrentWeather.apparentTemperature.getter();
      (v54)(v55, v52);
      v57 = v103;
      Measurement<>.converted(to:)();
      v50(v56, v42);
      Measurement.rounded.getter();
      v50(v53, v42);
      Measurement.value.getter();
      Measurement.value.getter();
      sub_10000F868();
      v103 = v57;
      Measurement.init(value:unit:)();
      v58 = [objc_opt_self() mainBundle];
      v128._object = 0x8000000100AE4880;
      v59._countAndFlagsBits = 0x203A6C6175746341;
      v60._object = 0x8000000100AE4850;
      v128._countAndFlagsBits = 0xD00000000000004ALL;
      v60._countAndFlagsBits = 0xD000000000000027;
      v59._object = 0xEA00000000004025;
      v61 = NSLocalizedString(_:tableName:bundle:value:comment:)(v60, 0, v58, v59, v128);
      countAndFlagsBits = v61._countAndFlagsBits;
      object = v61._object;

      sub_10022C350(&qword_100CA40C8, &unk_100A2E170);
      v62 = swift_allocObject();
      *(v62 + 16) = xmmword_100A2C3F0;
      v63 = v55;
      WeatherDataModel.currentWeather.getter();
      v64 = v117;
      CurrentWeather.temperature.getter();
      (v107)(v63, v122);
      v65 = v108;
      static WeatherFormatStyle<>.weather.getter();
      v102 = enum case for WeatherFormatPlaceholder.none(_:);
      v66 = v121;
      v67 = *(v121 + 104);
      v100 = v121 + 104;
      v101 = v67;
      v69 = v119;
      v68 = v120;
      v67(v119);
      static UnitManager.standard.getter();
      v124 = v46;
      v97 = sub_1001151A4(&qword_100CA5410, 255, &type metadata accessor for NSUnitTemperature.BaseWeatherFormatStyle, &protocol conformance descriptor for NSUnitTemperature.BaseWeatherFormatStyle);
      v70 = v113;
      v71 = Measurement.formatted<A>(_:placeholder:unitManager:)();
      v94 = v72;

      v73 = *(v66 + 8);
      v121 = v66 + 8;
      v96 = v73;
      v73(v69, v68);
      v95 = *(v112 + 8);
      v95(v65, v70);
      v104(v64, v42);
      *(v62 + 56) = &type metadata for String;
      *(v62 + 64) = sub_100035744();
      v74 = v94;
      *(v62 + 32) = v71;
      *(v62 + 40) = v74;
      v117 = static String.localizedStringWithFormat(_:_:)();
      v112 = v75;

      sub_1000161C0((v105 + 24), *(v105 + 48));
      v76 = v109;
      dispatch thunk of AppConfigurationManagerType.appConfiguration.getter();
      v105 = type metadata accessor for FeelsLikeComponentViewModel.SignificantDifference(0);
      v77 = v114 + *(v105 + 20);
      AppConfiguration.temperatureScale.getter();
      (*(v110 + 8))(v76, v111);
      Measurement.value.getter();
      v79 = v78;
      Measurement.value.getter();
      v81 = v80;
      static WeatherFormatStyle<>.weather.getter();
      v82 = v119;
      v83 = v120;
      v101(v119, v102, v120);
      static UnitManager.standard.getter();
      v84 = v118;
      v115 = Measurement.formatted<A>(_:placeholder:unitManager:)();
      v111 = v85;

      v96(v82, v83);
      v95(v65, v70);
      v86 = v106;
      WeatherDataModel.currentWeather.getter();
      LOBYTE(v71) = CurrentWeather.isDaylight.getter();

      (v107)(v86, v122);
      v87 = v104;
      v104(v84, v42);
      v87(v123, v42);
      v87(v126, v42);
      v88 = type metadata accessor for FeelsLikeComponentViewModel.SignificantDifference.Variance(0);
      *&v77[v88[5]] = v79;
      *&v77[v88[6]] = v81;
      *&v77[v88[7]] = v49;
      v89 = &v77[v88[8]];
      v90 = v111;
      *v89 = v115;
      v89[1] = v90;
      v77[v88[9]] = v71 & 1;
      v31 = v114;
      v91 = v112;
      *v114 = v117;
      v31[1] = v91;
      v32 = 0;
      v33 = v105;
    }

    else
    {
      v33 = type metadata accessor for FeelsLikeComponentViewModel.SignificantDifference(0);
      v31 = v114;
      v32 = 1;
    }
  }

  return sub_10001B350(v31, v32, 1, v33);
}

uint64_t sub_1001161BC()
{
  type metadata accessor for Domain();
  sub_100005C98();
  __chkstk_darwin(v0);
  sub_100008BE4();
  sub_100010714();
  __chkstk_darwin(v1);
  sub_1000101A4();
  v2 = sub_100003FA4();
  v3(v2);
  v4 = sub_100003F94();
  v5(v4);
  v6 = sub_10022C350(&qword_100CAFFD8, &unk_100A63CC0);
  sub_100003B6C(v6);
  sub_100008300();
  result = sub_100019C40(51, v7, v8);
  qword_100D912D8 = result;
  return result;
}

uint64_t sub_10011630C@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for AnimatedBackgroundsUserDefaultsMonitor(0);
  result = ObservableObject<>.objectWillChange.getter();
  *a2 = result;
  return result;
}

void sub_100116360()
{
  sub_100011510();
  if (v3)
  {
    *(v1 + 8) = (v0 - 1);
  }

  else
  {
    v4 = v2;
    type metadata accessor for FeelsLikeComponentViewModel.SignificantDifference.Variance(0);
    v5 = sub_1000039EC(*(v4 + 20));

    sub_10001B350(v5, v6, v0, v7);
  }
}

uint64_t sub_1001163D0(uint64_t a1, uint64_t a2)
{
  v4 = sub_10022C350(&qword_100CACF38, &unk_100A47BB0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100116440()
{
  sub_10000FE4C();
  v0 = sub_1000A3D80();
  return sub_100005F94(v0);
}

uint64_t sub_100116468@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X8>)
{
  v114 = a3;
  v5 = sub_10022C350(&qword_100CABD00, &qword_100A3ABA0);
  sub_100003810(v5);
  sub_100003828();
  __chkstk_darwin(v6);
  sub_100003990(&v90 - v7);
  v8 = sub_10022C350(&qword_100CACDF8, &unk_100A3E410);
  sub_100003810(v8);
  sub_100003828();
  __chkstk_darwin(v9);
  sub_100003990(&v90 - v10);
  v110 = type metadata accessor for HourlyForecastComponentViewModel(0);
  sub_1000037E8();
  __chkstk_darwin(v11);
  sub_1000037D8();
  sub_100003990(v13 - v12);
  v14 = sub_10022C350(&qword_100CC2B20, &unk_100A6A1C0);
  v15 = sub_100003810(v14);
  __chkstk_darwin(v15);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v16);
  sub_100003908();
  __chkstk_darwin(v17);
  sub_100003990(&v90 - v18);
  v19 = type metadata accessor for HourlyForecastComponentViewModel.HourlyItem(0);
  v115 = *(v19 - 8);
  v116 = v19 - 8;
  v117 = v115;
  __chkstk_darwin(v19 - 8);
  sub_1000037D8();
  sub_100003990(v21 - v20);
  v22 = sub_10022C350(&qword_100CAB9B0, &qword_100A3A820);
  v23 = sub_100003810(v22);
  __chkstk_darwin(v23);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v24);
  sub_100003990(&v90 - v25);
  v26 = type metadata accessor for TimeZone();
  sub_1000037C4();
  v28 = v27;
  __chkstk_darwin(v29);
  sub_1000037D8();
  v32 = v31 - v30;
  v109 = type metadata accessor for Calendar();
  sub_1000037C4();
  v108 = v33;
  __chkstk_darwin(v34);
  sub_1000037D8();
  v37 = v36 - v35;
  v102 = sub_10022C350(&qword_100CA7000, &unk_100A3E7F0);
  sub_1000037C4();
  v101 = v38;
  sub_100003828();
  __chkstk_darwin(v39);
  v41 = &v90 - v40;
  v100 = sub_10022C350(&qword_100CA7030, &qword_100A32000);
  sub_1000037C4();
  v98 = v42;
  sub_100003828();
  __chkstk_darwin(v43);
  v45 = &v90 - v44;
  v99 = type metadata accessor for CurrentWeather();
  sub_1000037C4();
  v97 = v46;
  __chkstk_darwin(v47);
  sub_1000037D8();
  v50 = (v49 - v48);
  v51 = a1 + *(type metadata accessor for WeatherData(0) + 24);
  WeatherDataModel.currentWeather.getter();
  WeatherDataModel.hourlyForecast.getter();
  v93 = v51;
  WeatherDataModel.dailyForecast.getter();
  Location.timeZone.getter();
  static Calendar.currentCalendar(with:)();
  v52 = *(v28 + 8);
  v103 = v32;
  v105 = v26;
  v104 = v28 + 8;
  v94 = v52;
  v52(v32, v26);
  v130 = v37;
  v53 = v37;
  v54 = v119;
  sub_1001190BC();
  v129 = v53;
  v55 = v120;
  sub_1001190BC();
  v121 = a2;
  sub_100119580(a2, v122);
  v124 = a2;
  v125 = v53;
  v126 = v54;
  v127 = v55;
  v128 = v50;
  sub_10011A2A8();
  v57 = v56;
  v96 = v50;
  v91 = v45;
  v92 = v41;
  v107 = v53;
  v58 = sub_10011A800(v121, v50, v45, v41, v53, v54, v55);
  v131[0] = v57;

  sub_10011C194(v59);
  v60 = v122;
  v123 = v122;
  sub_10011C1D0();
  v62 = v61;
  sub_10022C350(&qword_100CC2B28, &qword_100A5B688);
  v63 = (*(v117 + 80) + 32) & ~*(v117 + 80);
  v64 = swift_allocObject();
  *(v64 + 16) = xmmword_100A2C3F0;
  sub_10011C770(v60, v64 + v63, type metadata accessor for HourlyForecastComponentViewModel.HourlyItem);
  v131[0] = v64;
  sub_10011C194(v62);
  v65 = v131[0];
  v66 = *(v58 + 2);

  v67 = v66 + 24;
  if (__OFADD__(v66, 24))
  {
    __break(1u);
  }

  else
  {
    type metadata accessor for SettingReader();
    static SettingReader.shared.getter();
    if (qword_100CA29C0 == -1)
    {
      goto LABEL_3;
    }
  }

  swift_once();
LABEL_3:
  SettingReader.read<A>(_:)();

  v68 = v118;
  v69 = v106;
  v70 = v95;
  if (LOBYTE(v131[0]) == 1)
  {
    UUID.init()();
    v71 = 0;
  }

  else
  {
    v71 = 1;
  }

  v72 = type metadata accessor for UUID();
  sub_10001B350(v70, v71, 1, v72);
  sub_100508840(v70, v68);
  sub_100035AD0(v68, v69, &qword_100CC2B20, &unk_100A6A1C0);
  v131[0] = v65;

  sub_10011CC6C(v131);

  v131[0] = sub_10011E62C(v67, v131[0]);
  v131[1] = v73;
  v131[2] = v74;
  v131[3] = v75;
  sub_10022C350(&qword_100CC2B30, &unk_100A5B690);
  sub_10011E808();
  v76 = Sequence.unique<A>(by:)();
  swift_unknownObjectRelease();
  v77 = v113;
  sub_100508840(v69, v113);
  *(v77 + *(v110 + 20)) = v76;
  v78 = v111;
  WeatherDataModel.weatherChanges.getter();
  v79 = v112;
  WeatherDataModel.historicalFacts.getter();
  v80 = v103;
  Location.timeZone.getter();
  type metadata accessor for HourlyForecastComponentPreprocessedDataModel(0);
  v81 = v114;
  v82 = v96;
  v83 = v91;
  v84 = v92;
  WeatherForecastDescriptionStringBuilder.buildWeatherDescription(from:hourlyForecast:dailyForecast:weatherChanges:historicalFacts:timeZone:)();
  v94(v80, v105);
  sub_1000180EC(v79, &qword_100CABD00, &qword_100A3ABA0);
  sub_1000180EC(v78, &qword_100CACDF8, &unk_100A3E410);
  sub_1000180EC(v118, &qword_100CC2B20, &unk_100A6A1C0);
  sub_10000E73C();
  v85(v84, v102);
  sub_10000E73C();
  v86(v83, v100);
  sub_1000180EC(v120, &qword_100CAB9B0, &qword_100A3A820);
  sub_1000180EC(v119, &qword_100CAB9B0, &qword_100A3A820);
  sub_10000E73C();
  v87(v82, v99);
  sub_100509B1C(v77, v81, type metadata accessor for HourlyForecastComponentViewModel);
  sub_10011E508(v122, type metadata accessor for HourlyForecastComponentViewModel.HourlyItem);
  sub_10000E73C();
  return v88(v107, v109);
}

uint64_t sub_100116FB0()
{
  v1 = v0;
  v2 = sub_10022C350(&qword_100CB4ED8, &qword_100AA0B40);
  v3 = sub_100003810(v2);
  __chkstk_darwin(v3);
  __chkstk_darwin(v4);
  v6 = &v24[-1] - v5;
  v7 = sub_10022C350(&qword_100CB4ED0, &unk_100A484B0);
  sub_1000037C4();
  v9 = v8;
  sub_100003828();
  __chkstk_darwin(v10);
  v12 = &v24[-1] - v11;
  v13 = OBJC_IVAR____TtC7Weather30WeatherMicaConditionBackground__isLoaded;
  LOBYTE(v24[0]) = 1;
  Published.init(initialValue:)();
  (*(v9 + 32))(v0 + v13, v12, v7);
  *(v0 + OBJC_IVAR____TtC7Weather30WeatherMicaConditionBackground_isWindowActive) = 1;
  v14 = OBJC_IVAR____TtC7Weather30WeatherMicaConditionBackground__lastModel;
  v15 = type metadata accessor for BackgroundAnimationData.Model();
  sub_10001B350(v6, 1, 1, v15);
  sub_10000FEC4();
  sub_100035AD0(v16, v17, v18, &qword_100AA0B40);
  sub_10022C350(&qword_100CB4EE0, &qword_100A484C0);
  swift_allocObject();
  v19 = Atomic.init(wrappedValue:)();
  sub_1000180EC(v6, &qword_100CB4ED8, &qword_100AA0B40);
  *(v1 + v14) = v19;
  type metadata accessor for MicaBackgroundAnimation();
  v20 = [objc_opt_self() sharedApplication];
  UIApplication.expectedWindow.getter();

  sub_1000161C0(v24, v24[3]);
  dispatch thunk of WindowType.bounds.getter();
  v21 = MicaBackgroundAnimation.__allocating_init(windowBounds:)();
  sub_100006F14(v24);
  swift_beginAccess();
  v23 = v21;
  Published.init(initialValue:)();
  swift_endAccess();
  return v1;
}

uint64_t sub_100117270@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v45 = a1;
  v43 = a2;
  v3 = sub_10022C350(&qword_100CEAFC0, &qword_100AA0A70);
  sub_1000037C4();
  v5 = v4;
  sub_100003828();
  __chkstk_darwin(v6);
  sub_1000039BC();
  v42 = v7;
  v44 = sub_10022C350(&qword_100CEAFC8, &qword_100AA0A78);
  sub_1000037E8();
  sub_100003828();
  __chkstk_darwin(v8);
  v10 = &v38 - v9;
  v11 = sub_10022C350(&qword_100CEAFD0, &qword_100AA0A80);
  sub_1000037E8();
  sub_100003828();
  __chkstk_darwin(v12);
  sub_1000039BC();
  v41 = v13;
  v14 = type metadata accessor for EnvironmentValues();
  sub_1000037C4();
  v16 = v15;
  __chkstk_darwin(v17);
  sub_1000037D8();
  v20 = v19 - v18;
  v21 = type metadata accessor for WeatherConditionBackgroundModifier(0);
  v22 = v2 + *(v21 + 32);
  v23 = *v22;
  if (*(v22 + 8) == 1)
  {
    if ((v23 & 1) == 0)
    {
LABEL_3:
      v24 = v42;
      sub_1001177F0(v45, v42);
      (*(v5 + 16))(v10, v24, v3);
      swift_storeEnumTagMultiPayload();
      sub_10010FD7C();
      v25 = sub_10022E824(&qword_100CEAFF0, &qword_100AA0A98);
      v26 = sub_1009B8058();
      v46 = v25;
      v47 = &type metadata for Bool;
      v48 = v26;
      v49 = &protocol witness table for Bool;
      sub_100008CC8();
      swift_getOpaqueTypeConformance2();
      sub_100071668();
      _ConditionalContent<>.init(storage:)();
      return (*(v5 + 8))(v24, v3);
    }
  }

  else
  {

    static os_log_type_t.fault.getter();
    v39 = v14;
    v28 = static Log.runtimeIssuesLog.getter();
    v40 = v11;
    v29 = v3;
    v30 = v28;
    os_log(_:dso:log:_:_:)();

    v3 = v29;
    v11 = v40;
    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1000E4DF8(v23, 0);
    (*(v16 + 8))(v20, v39);
    if (v46 != 1)
    {
      goto LABEL_3;
    }
  }

  v31 = *(v2 + *(v21 + 64));
  v32 = static Edge.Set.all.getter();
  sub_10022C350(&qword_100CEAFE8, &unk_100AA0A88);
  sub_1000037E8();
  v34 = v41;
  (*(v33 + 16))(v41, v45);
  v35 = v34 + *(v11 + 36);
  *v35 = v31;
  *(v35 + 8) = v32;
  sub_1000302D8(v34, v10, &qword_100CEAFD0, &qword_100AA0A80);
  swift_storeEnumTagMultiPayload();
  sub_10010FD7C();

  v36 = sub_10022E824(&qword_100CEAFF0, &qword_100AA0A98);
  v37 = sub_1009B8058();
  v46 = v36;
  v47 = &type metadata for Bool;
  v48 = v37;
  v49 = &protocol witness table for Bool;
  sub_100008CC8();
  swift_getOpaqueTypeConformance2();
  sub_100071668();
  _ConditionalContent<>.init(storage:)();
  return sub_100036F90(v34);
}

uint64_t sub_1001176B4(uint64_t a1)
{
  result = type metadata accessor for HourlyForecastComponentViewModel.HourlyItem.SunriseSetModel(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for HourlyForecastComponentViewModel.HourlyItem.HourModel(319);
    if (v3 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_100117728(uint64_t a1)
{
  type metadata accessor for Date();
  if (v1 <= 0x3F)
  {
    type metadata accessor for TimeZone();
    if (v2 <= 0x3F)
    {
      sub_10013C9EC(319, &qword_100CC2610, &type metadata accessor for Array);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1001177F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v173 = a2;
  v180 = sub_10022C350(&qword_100CE1230, &qword_100A8D0D0);
  sub_1000037E8();
  sub_100003828();
  __chkstk_darwin(v4);
  sub_1000039BC();
  sub_100003918(v5);
  v6 = type metadata accessor for DynamicTypeSize();
  v7 = sub_100003E5C(v6, &v195);
  v153 = v8;
  __chkstk_darwin(v7);
  sub_1000037D8();
  v11 = sub_100003918(v10 - v9);
  v12 = type metadata accessor for WeatherConditionBackgroundModifier(v11);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = v12 - 8;
  v183[0] = v12 - 8;
  __chkstk_darwin(v12 - 8);
  v182 = sub_10022C350(&qword_100CEB048, &qword_100AA0AE0);
  sub_1000037E8();
  sub_100003828();
  __chkstk_darwin(v16);
  v18 = (&v146 - v17);
  v19 = sub_10022C350(&qword_100CEB040, &qword_100AA0AD8);
  sub_100003E5C(v19, &v180);
  v152 = v20;
  sub_100003828();
  __chkstk_darwin(v21);
  sub_1000039BC();
  sub_100003990(v22);
  v23 = sub_10022C350(&qword_100CEB038, &qword_100AA0AD0);
  sub_100003E5C(v23, v183);
  v155 = v24;
  sub_100003828();
  __chkstk_darwin(v25);
  sub_1000039BC();
  sub_100003990(v26);
  v27 = sub_10022C350(&qword_100CEB030, &qword_100AA0AC8);
  sub_100003E5C(v27, &v184);
  v157 = v28;
  sub_100003828();
  __chkstk_darwin(v29);
  sub_1000039BC();
  sub_100003990(v30);
  v31 = sub_10022C350(&qword_100CEB028, &qword_100AA0AC0);
  sub_100003E5C(v31, &v186);
  v159 = v32;
  sub_100003828();
  __chkstk_darwin(v33);
  sub_1000039BC();
  v175 = v34;
  v35 = sub_10022C350(&qword_100CEB020, &qword_100AA0AB8);
  sub_100003E5C(v35, &v188);
  v161 = v36;
  sub_100003828();
  __chkstk_darwin(v37);
  sub_1000039BC();
  v176 = v38;
  v178 = sub_10022C350(&qword_100CEB018, &qword_100AA0AB0);
  sub_1000037C4();
  v162 = v39;
  sub_100003828();
  __chkstk_darwin(v40);
  sub_1000039BC();
  v177 = v41;
  v42 = sub_10022C350(&qword_100CEB010, &qword_100AA0AA8);
  sub_100003E5C(v42, &v193);
  v165 = v43;
  sub_100003828();
  __chkstk_darwin(v44);
  sub_1000039BC();
  v179 = v45;
  v46 = sub_10022C350(&qword_100CEB060, &qword_100AA0AE8);
  sub_100003E5C(v46, &v194);
  v166 = v47;
  sub_100003828();
  __chkstk_darwin(v48);
  sub_1000039BC();
  sub_100003990(v49);
  v163 = sub_10022C350(&qword_100CEB008, &qword_100AA0AA0);
  sub_1000037E8();
  sub_100003828();
  __chkstk_darwin(v50);
  sub_1000039BC();
  sub_100003990(v51);
  v171 = sub_10022C350(&qword_100CEAFF0, &qword_100AA0A98);
  sub_1000037E8();
  sub_100003828();
  __chkstk_darwin(v52);
  sub_1000039BC();
  sub_100003990(v53);
  sub_10011895C();
  *v18 = static Alignment.top.getter();
  v18[1] = v54;
  v55 = sub_10022C350(&qword_100CEB068, &qword_100AA0AF0);
  sub_100118C68(v2, a1, v18 + *(v55 + 44));
  v148 = *(v15 + 56);
  sub_100018874();
  v185 = v56;
  v181 = &v146 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1009B8AB4(v2, v181, v57);
  v186 = *(v13 + 80);
  v58 = (v186 + 16) & ~v186;
  v183[1] = v14;
  v59 = swift_allocObject();
  sub_1000423B0(v59);
  v147 = type metadata accessor for WeatherConditionBackgroundModel();
  v60 = sub_100006F64(&qword_100CEB050, &qword_100CEB048, &qword_100AA0AE0, &protocol conformance descriptor for ZStack<A>);
  sub_100052264();
  v63 = sub_1009B7E78(v61, v62, &protocol conformance descriptor for WeatherConditionBackgroundModel);
  v184 = v2;
  v64 = v182;
  View.onChange<A>(of:initial:_:)();

  sub_100018144(v18, &qword_100CEB048, &qword_100AA0AE0);
  v65 = v150;
  sub_1009ACFA0();
  v66 = v181;
  sub_1009B8AB4(v2, v181, v185);
  v149 = v58;
  v67 = swift_allocObject();
  sub_10011A168(v66, v67 + v58);
  v189 = v64;
  v190 = v147;
  v191 = v60;
  v192 = v63;
  sub_100008CC8();
  v182 = v68;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_100037F30();
  v72 = sub_1009B7E78(v70, v71, &protocol conformance descriptor for DynamicTypeSize);
  v73 = v151;
  v74 = v174;
  View.onChange<A>(of:initial:_:)();

  (*(v153 + 8))(v65, v74);
  v75 = sub_10007544C();
  v76(v75, v73);
  v77 = v184;
  type metadata accessor for AnimatedBackgroundsUserDefaultsMonitor(0);
  sub_1009B7E78(&qword_100CEAEF8, type metadata accessor for AnimatedBackgroundsUserDefaultsMonitor, byte_100AA0608);
  v78 = StateObject.wrappedValue.getter();
  LOBYTE(v65) = sub_10011A5B4(v78, v79);

  LOBYTE(v187) = v65 & 1;
  v80 = v181;
  v81 = v185;
  sub_1009B8AB4(v77, v181, v185);
  v82 = v149;
  v83 = swift_allocObject();
  sub_10011A168(v80, v83 + v82);
  v189 = v73;
  v190 = v174;
  v191 = OpaqueTypeConformance2;
  v192 = v72;
  v84 = swift_getOpaqueTypeConformance2();
  sub_1000D43C0();
  sub_1000718C0();
  v85 = v154;
  View.onChange<A>(of:initial:_:)();

  v86 = sub_10007544C();
  v87(v86, v85);
  LOBYTE(v187) = *(v184 + *(v183[0] + 80));
  sub_1009B8AB4(v184, v80, v81);
  v88 = swift_allocObject();
  sub_10011A168(v80, v88 + v82);
  v189 = v85;
  v190 = &type metadata for Bool;
  v191 = v84;
  v192 = &protocol witness table for Bool;
  v89 = v82;
  v90 = swift_getOpaqueTypeConformance2();
  sub_1000D43C0();
  sub_1000718C0();
  v91 = v156;
  View.onChange<A>(of:initial:_:)();

  v92 = sub_10007544C();
  v93(v92, v91);
  v94 = v184;
  LOBYTE(v187) = sub_1009AD368() & 1;
  v95 = v185;
  sub_1009B8AB4(v94, v80, v185);
  v96 = swift_allocObject();
  sub_10011A168(v80, v96 + v82);
  v189 = v91;
  v190 = &type metadata for Bool;
  v191 = v90;
  v192 = &protocol witness table for Bool;
  v97 = swift_getOpaqueTypeConformance2();
  sub_1000D43C0();
  sub_1000718C0();
  v98 = v158;
  View.onChange<A>(of:initial:_:)();

  v99 = sub_10007544C();
  v100(v99, v98);
  v101 = v184;
  LOBYTE(v187) = sub_1009AD170() & 1;
  v102 = v181;
  sub_1009B8AB4(v101, v181, v95);
  v103 = swift_allocObject();
  sub_10011A168(v102, v103 + v82);
  v189 = v98;
  v190 = &type metadata for Bool;
  v191 = v97;
  v192 = &protocol witness table for Bool;
  v104 = swift_getOpaqueTypeConformance2();
  sub_1000D43C0();
  sub_1000718C0();
  v105 = v160;
  View.onChange<A>(of:initial:_:)();

  v106 = sub_10007544C();
  v107(v106, v105);
  v108 = v170;
  sub_10011A6E0();
  sub_1009B8AB4(v101, v102, v185);
  v109 = swift_allocObject();
  sub_10011A168(v102, v109 + v89);
  v189 = v105;
  v190 = &type metadata for Bool;
  v191 = v104;
  v192 = &protocol witness table for Bool;
  v110 = swift_getOpaqueTypeConformance2();
  v111 = sub_10011A74C();
  v112 = v178;
  View.onChange<A>(of:initial:_:)();

  sub_100018144(v108, &qword_100CE1230, &qword_100A8D0D0);
  v113 = sub_10007544C();
  v114(v113, v112);
  if (*v101)
  {

    v117 = sub_10011BE3C(v115, v116);
    v119 = v118;
    v120 = v117;

    v187 = v119;
    v188 = v120;
    sub_100018874();
    v185 = v121;
    sub_1009B8AB4(v101, v102, v122);
    v123 = swift_allocObject();
    sub_1000423B0(v123);
    v189 = v178;
    v190 = v180;
    v191 = v110;
    v192 = v111;
    sub_100008CC8();
    swift_getOpaqueTypeConformance2();
    sub_10011BEE8();
    sub_1000D43C0();
    v124 = v164;
    sub_1000718C0();
    v125 = v167;
    View.onChange<A>(of:initial:_:)();

    v126 = sub_10007544C();
    v127(v126, v125);
    v128 = sub_100021048();
    v129 = v185;
    sub_1009B8AB4(v128, v130, v185);
    v131 = swift_allocObject();
    sub_1000423B0(v131);
    v132 = v168;
    (*(v166 + 32))(v168, v124, v169);
    v133 = (v132 + *(v163 + 36));
    *v133 = sub_1009B8874;
    v133[1] = v131;
    v133[2] = 0;
    v133[3] = 0;
    v134 = sub_100021048();
    sub_1009B8AB4(v134, v135, v129);
    v136 = swift_allocObject();
    sub_1000423B0(v136);
    v137 = v132;
    v138 = v172;
    sub_100118874(v137, v172);
    sub_100086690();
    v139 = (v138 + *(v129 + 9));
    *v139 = 0;
    v139[1] = 0;
    v139[2] = sub_1009B888C;
    v139[3] = v136;
    LOBYTE(v189) = sub_1009AD26C() & 1;
    v140 = sub_100021048();
    sub_1009B8AB4(v140, v141, v129);
    v142 = swift_allocObject();
    sub_1000423B0(v142);
    sub_1009B8058();
    View.onChange<A>(of:initial:_:)();

    return sub_1001188D8(v138);
  }

  else
  {
    type metadata accessor for LocationViewCollisionOptions(0);
    sub_100031970();
    sub_1009B7E78(v144, v145, byte_100A95518);
    sub_1000164CC();
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t sub_100118874(uint64_t a1, uint64_t a2)
{
  sub_10022C350(&qword_100CEB008, &qword_100AA0AA0);
  sub_1000037E8();
  v3 = sub_100003940();
  v4(v3);
  return a2;
}

uint64_t sub_1001188D8(uint64_t a1)
{
  sub_10022C350(&qword_100CEAFF0, &qword_100AA0A98);
  sub_100003D98();
  (*(v2 + 8))(a1);
  return a1;
}

uint64_t sub_10011895C()
{
  v0 = type metadata accessor for WeatherConditionBackgroundOptions();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v14 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for BackgroundAnimationData();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for BackgroundAnimationData.Model();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for WeatherConditionBackgroundModifier(0);
  WeatherConditionBackgroundModel.animationData.getter();
  if ((*(v5 + 88))(v7, v4) == enum case for BackgroundAnimationData.loaded(_:))
  {
    (*(v5 + 96))(v7, v4);
    (*(v9 + 32))(v11, v7, v8);
    BackgroundAnimationData.Model.options.getter();
    v12 = WeatherConditionBackgroundOptions.applyLegibilityScrim.getter();
    (*(v1 + 8))(v3, v0);
    (*(v9 + 8))(v11, v8);
  }

  else
  {
    (*(v5 + 8))(v7, v4);
    v12 = 0;
  }

  return v12 & 1;
}

void sub_100118BF4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void *))
{
  if (!*a2)
  {
    v4 = a3(0, &type metadata for String);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_100118C68@<X0>(uint64_t a1@<X0>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v26 = a3;
  v6 = sub_10022C350(&qword_100CEB0B8, &qword_100AA0B70);
  v7 = v6 - 8;
  __chkstk_darwin(v6);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v25 - v11;
  v13 = sub_10022C350(&qword_100CEB0C0, &qword_100AA0B78);
  v14 = v13 - 8;
  __chkstk_darwin(v13);
  v16 = &v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = &v25 - v18;
  sub_1009B41A8(a1, &v25 - v18);
  *&v19[*(v14 + 44)] = 0x409F400000000000;
  static Color.black.getter();
  v20 = Color.opacity(_:)();

  v21 = sub_10022C350(&qword_100CEAFE8, &unk_100AA0A88);
  (*(*(v21 - 8) + 16))(v12, v26, v21);
  *&v12[*(v7 + 44)] = 0x409F480000000000;
  sub_1000302D8(v19, v16, &qword_100CEB0C0, &qword_100AA0B78);
  sub_1000302D8(v12, v9, &qword_100CEB0B8, &qword_100AA0B70);
  sub_1000302D8(v16, a4, &qword_100CEB0C0, &qword_100AA0B78);
  v22 = sub_10022C350(&qword_100CEB0C8, &qword_100AA0B80);
  v23 = (a4 + *(v22 + 48));
  *v23 = v20;
  v23[1] = 0x409F440000000000;
  sub_1000302D8(v9, a4 + *(v22 + 64), &qword_100CEB0B8, &qword_100AA0B70);

  sub_100018144(v12, &qword_100CEB0B8, &qword_100AA0B70);
  sub_100018144(v19, &qword_100CEB0C0, &qword_100AA0B78);
  sub_100018144(v9, &qword_100CEB0B8, &qword_100AA0B70);

  return sub_100018144(v16, &qword_100CEB0C0, &qword_100AA0B78);
}

void sub_100118F2C(uint64_t a1)
{
  sub_10013C9EC(319, &qword_100CA45C0, &type metadata accessor for Optional);
  if (v1 <= 0x3F)
  {
    type metadata accessor for Precipitation();
    if (v2 <= 0x3F)
    {
      type metadata accessor for Date();
      if (v3 <= 0x3F)
      {
        type metadata accessor for TimeZone();
        if (v4 <= 0x3F)
        {
          sub_10013C9EC(319, &qword_100CC2610, &type metadata accessor for Array);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_100119068(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 64) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 65) = 1;
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

    *(result + 65) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_1001190BC()
{
  sub_10000E8AC();
  sub_1000170DC(v3, v4, v5);
  v6 = type metadata accessor for DayWeather();
  sub_1000037C4();
  __chkstk_darwin(v7);
  sub_100003848();
  sub_10000386C();
  __chkstk_darwin(v8);
  sub_100049EB8(v9, v10, v11, v12, v13, v14, v15, v16, v39);
  v17 = sub_100020E44();
  sub_10022C350(v17, v18);
  sub_1000037C4();
  sub_100003828();
  __chkstk_darwin(v19);
  sub_100031EE8();
  sub_10022C350(&qword_100CA7008, &qword_100A31FF0);
  sub_100031900();
  sub_100003828();
  __chkstk_darwin(v20);
  v21 = sub_100015148();
  v22(v21);
  v23 = sub_10003CA04(&qword_100CA7010);
  sub_10003733C(v23);
  sub_10000CFBC(&qword_100CA7018);
  sub_10001A168();
  while (1)
  {
    sub_10000EEE0();
    sub_10003A430();
    if (v24)
    {
      sub_1000180EC(v2, &qword_100CA7008, &qword_100A31FF0);
      sub_1000243F8();
      goto LABEL_9;
    }

    sub_10004ED04();
    v25 = sub_100028D90();
    v26(v25);
    v27 = sub_10003014C();
    v0(v27);
    sub_10002CBA0();
    v28 = sub_10000928C();
    v6(v28);
    v29 = sub_10002546C();
    v31 = v30(v29);
    v0 = v1;
    if (v1)
    {
      v36 = sub_1000521C0();
      v37(v36);
      sub_1000180EC(v2, &qword_100CA7008, &qword_100A31FF0);
      goto LABEL_10;
    }

    if (v31)
    {
      break;
    }

    v32 = sub_1000234E8();
    v33(v32);
  }

  sub_1000180EC(v2, &qword_100CA7008, &qword_100A31FF0);
  v38 = sub_100075248();
  v6(v38);
  sub_1000165A8();
LABEL_9:
  sub_100041C00(v34, v35);
LABEL_10:
  sub_100036EA0();
  sub_10000C8F4();
}

uint64_t sub_100119330(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 65))
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

uint64_t sub_100119370(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  v4 = type metadata accessor for Date();
  sub_1000037C4();
  v6 = v5;
  __chkstk_darwin(v7);
  sub_1000037D8();
  v10 = v9 - v8;
  DayWeather.date.getter();
  LOBYTE(a3) = a3(v10);
  (*(v6 + 8))(v10, v4);
  return a3 & 1;
}

unint64_t sub_1001194CC()
{
  result = qword_100CEB140;
  if (!qword_100CEB140)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = sub_10022E824(&qword_100CEB0D0, &qword_100AA0B88);
    v4[0] = sub_1009B7E78(&qword_100CEB148, &type metadata accessor for MicaView, &protocol conformance descriptor for MicaView);
    result = swift_getWitnessTable(&protocol conformance descriptor for <A> A?, v3, v4);
    atomic_store(result, &qword_100CEB140);
  }

  return result;
}

uint64_t sub_100119580@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v95 = a1;
  v94 = a2;
  v93 = type metadata accessor for WeatherFormatPlaceholder();
  v92 = *(v93 - 8);
  __chkstk_darwin(v93);
  v91 = &v75 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = type metadata accessor for NSUnitTemperature.BaseWeatherFormatStyle();
  v89 = *(v90 - 8);
  __chkstk_darwin(v90);
  v86 = &v75 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v85 = &v75 - v5;
  v97 = type metadata accessor for HourlyForecastComponentViewModel.HourlyItem.HourModel(0);
  __chkstk_darwin(v97);
  v7 = &v75 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = sub_10022C350(&qword_100CA53F8, &unk_100A3B3E0);
  v87 = *(v88 - 8);
  __chkstk_darwin(v88);
  v104 = &v75 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v75 - v10;
  v103 = type metadata accessor for Precipitation();
  v96 = *(v103 - 8);
  __chkstk_darwin(v103);
  v13 = &v75 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v102 = &v75 - v15;
  v84 = type metadata accessor for WeatherCondition();
  v16 = *(v84 - 8);
  __chkstk_darwin(v84);
  v18 = &v75 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for TimeZone();
  v100 = *(v19 - 8);
  v101 = v19;
  __chkstk_darwin(v19);
  v21 = &v75 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for Date();
  v98 = *(v22 - 8);
  v99 = v22;
  __chkstk_darwin(v22);
  v24 = &v75 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v27 = &v75 - v26;
  CurrentWeather.date.getter();
  Location.timeZone.getter();
  CurrentWeather.condition.getter();
  v28 = CurrentWeather.isDaylight.getter();
  v29 = WeatherCondition.conditionIconName(isDaytime:)(v28 & 1);
  countAndFlagsBits = v29.value._countAndFlagsBits;
  object = v29.value._object;
  (*(v16 + 8))(v18, v84);
  v77 = CurrentWeather.conditionDescription.getter();
  v76 = v30;
  v31 = v96;
  v32 = v103;
  (*(v96 + 13))(v13, enum case for Precipitation.rain(_:), v103);
  v33 = v102;
  static Precipitation.mock(kind:)();
  v34 = (v31 + 8);
  v35 = *(v31 + 1);
  v36 = v13;
  v37 = v97;
  v38 = v32;
  v84 = v34;
  v83 = v35;
  v35(v36, v32);
  v95 = v11;
  CurrentWeather.temperature.getter();
  CurrentWeather.temperature.getter();
  sub_100119F7C();
  v39 = static NSDateFormatter.prevailingPeriodSymbols.getter();
  *v7 = 0;
  (*(v98 + 16))(&v7[v37[13]], v27, v99);
  (*(v100 + 16))(&v7[v37[14]], v21, v101);
  v40 = object;
  *(v7 + 1) = countAndFlagsBits;
  *(v7 + 2) = v40;
  v41 = v76;
  *(v7 + 3) = v77;
  *(v7 + 4) = v41;
  *(v7 + 5) = 0;
  v7[48] = 0;
  (*(v96 + 2))(&v7[v37[9]], v33, v38);
  *&v7[v37[16]] = v39;
  static WeatherClock.date.getter();
  Date.timeIntervalSinceReferenceDate.getter();
  v43 = v42;
  v96 = v24;
  Date.timeIntervalSinceReferenceDate.getter();
  v82 = v27;
  v81 = v7;
  v80 = v21;
  if (v43 - v44 > 0.0 || (Date.timeIntervalSinceReferenceDate.getter(), v46 = v45, Date.timeIntervalSinceReferenceDate.getter(), v46 - v47 <= -3600.0))
  {
    v52 = Date.formattedHours(timeZone:forAccessibility:)();
    v53 = &v7[v37[11]];
    *v53 = v52;
    v53[1] = v54;
    v55 = Date.formattedHours(timeZone:forAccessibility:)();
    v56 = &v7[v37[12]];
    *v56 = v55;
    v56[1] = v57;
    v7[v37[15]] = 0;
  }

  else
  {
    v48 = [objc_opt_self() mainBundle];
    v106._object = 0x8000000100AD2A40;
    v49._countAndFlagsBits = 7827278;
    v49._object = 0xE300000000000000;
    v50._countAndFlagsBits = 0;
    v50._object = 0xE000000000000000;
    v106._countAndFlagsBits = 0xD000000000000035;
    v51 = NSLocalizedString(_:tableName:bundle:value:comment:)(v49, 0, v48, v50, v106);

    *&v7[v37[11]] = v51;
    *&v7[v37[12]] = v51;
    v7[v37[15]] = 1;
  }

  v58 = v85;
  static WeatherFormatStyle<>.weather.getter();
  v59 = v86;
  NSUnitTemperature.BaseWeatherFormatStyle.secondary.getter();
  v89 = *(v89 + 8);
  v60 = v90;
  (v89)(v58, v90);
  v61 = v92;
  v62 = v91;
  v63 = v93;
  (*(v92 + 104))(v91, enum case for WeatherFormatPlaceholder.none(_:), v93);
  type metadata accessor for UnitManager();
  static UnitManager.standard.getter();
  sub_100114168();
  v64 = v88;
  v65 = Measurement.formatted<A>(_:placeholder:unitManager:)();
  v67 = v66;

  (*(v61 + 8))(v62, v63);
  (v89)(v59, v60);
  v68 = v81;
  v69 = (v81 + *(v97 + 40));
  *v69 = v65;
  v69[1] = v67;
  Hasher.init(_seed:)();
  sub_100119FC0(v105);
  v70 = Hasher._finalize()();
  v71 = v99;
  v72 = *(v98 + 8);
  v72(v96, v99);
  v73 = *(v87 + 8);
  v73(v104, v64);
  v73(v95, v64);
  v83(v102, v103);
  (*(v100 + 8))(v80, v101);
  v72(v82, v71);
  *v68 = v70;
  sub_100509B1C(v68, v94, type metadata accessor for HourlyForecastComponentViewModel.HourlyItem.HourModel);
  type metadata accessor for HourlyForecastComponentViewModel.HourlyItem(0);
  return swift_storeEnumTagMultiPayload();
}

unint64_t sub_100119F7C()
{
  result = qword_100CA53F0;
  if (!qword_100CA53F0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100CA53F0);
  }

  return result;
}

void sub_100119FC0(uint64_t a1)
{
  Hasher._combine(_:)(*v1);
  if (*(v1 + 16))
  {
    Hasher._combine(_:)(1u);
    sub_1000370B0();
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  String.hash(into:)();
  v3 = *(v1 + 40);
  if (v3 == 0.0)
  {
    v3 = 0.0;
  }

  Hasher._combine(_:)(*&v3);
  Hasher._combine(_:)(*(v1 + 48));
  v4 = type metadata accessor for HourlyForecastComponentViewModel.HourlyItem.HourModel(0);
  type metadata accessor for Precipitation();
  sub_10003C668();
  v7 = sub_1005FE610(v5, v6, &protocol conformance descriptor for Precipitation);
  sub_100031E3C(v7);
  sub_10000EBEC();
  String.hash(into:)();
  sub_10000EBEC();
  String.hash(into:)();
  sub_10000EBEC();
  String.hash(into:)();
  type metadata accessor for Date();
  sub_100014AC0();
  v10 = sub_1005FE610(v8, v9, &protocol conformance descriptor for Date);
  sub_100031E3C(v10);
  type metadata accessor for TimeZone();
  sub_100008A60();
  v13 = sub_1005FE610(v11, v12, &protocol conformance descriptor for TimeZone);
  sub_100031E3C(v13);
  Hasher._combine(_:)(*(v1 + *(v4 + 60)));
  v14 = *(v1 + *(v4 + 64));

  sub_10016D390(a1, v14);
}

uint64_t sub_10011A168(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WeatherConditionBackgroundModifier(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10011A1F4(uint64_t a1, uint64_t a2)
{
  v3 = sub_1000038D8();
  v4(v3);
  sub_1000037E8();
  v5 = sub_100003940();
  v6(v5);
  return a2;
}

uint64_t sub_10011A24C(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_1000037E8();
  v4 = sub_100003940();
  v5(v4);
  return a2;
}

void sub_10011A2A8()
{
  sub_10000E8AC();
  v1 = v0;
  v28 = v2;
  v3 = type metadata accessor for HourWeather();
  sub_1000037C4();
  v5 = v4;
  __chkstk_darwin(v6);
  sub_1000037D8();
  v9 = v8 - v7;
  v10 = type metadata accessor for HourlyForecastComponentViewModel.HourlyItem(0);
  v11 = sub_100003AE8(v10);
  __chkstk_darwin(v11);
  sub_1000037D8();
  v30 = v13 - v12;
  sub_10022C350(&qword_100CA7030, &qword_100A32000);
  sub_10011A67C();
  v14 = dispatch thunk of Collection.count.getter();
  if (v14)
  {
    sub_100021788();
    sub_10011A704();
    v31 = _swiftEmptyArrayStorage;
    dispatch thunk of Collection.startIndex.getter();
    if ((v14 & 0x8000000000000000) == 0)
    {
      v15 = v5;
      v16 = 0;
      v26 = (v15 + 16);
      v27 = (v15 + 8);
      v25 = v9;
      while (!__OFADD__(v16, 1))
      {
        v29 = v16 + 1;
        v17 = dispatch thunk of Collection.subscript.read();
        (*v26)(v9);
        v17(v32, 0);
        v28(v9);
        if (v1)
        {
          goto LABEL_12;
        }

        v1 = 0;
        v18 = v9;
        v19 = v3;
        (*v27)(v18, v3);
        v20 = v31;
        v21 = v31[2];
        if (v21 >= v31[3] >> 1)
        {
          sub_10011A704();
          v20 = v31;
        }

        v20[2] = v21 + 1;
        sub_10000C7B8();
        v31 = v22;
        sub_1000306D0();
        sub_100114640(v30, v23, v24);
        dispatch thunk of Collection.formIndex(after:)();
        ++v16;
        v3 = v19;
        v9 = v25;
        if (v29 == v14)
        {
          goto LABEL_9;
        }
      }

      __break(1u);
    }

    __break(1u);
LABEL_12:
    (*v27)(v9, v3);

    __break(1u);
  }

  else
  {
LABEL_9:
    sub_10002FE90();
    sub_10000C8F4();
  }
}